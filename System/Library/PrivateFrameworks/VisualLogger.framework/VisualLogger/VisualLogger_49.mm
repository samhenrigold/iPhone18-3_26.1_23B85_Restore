void sub_2714FCB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  __cxa_guard_abort(qword_28087B8E8);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2714FCC00(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/IData.cpp", 216, "data_", 5uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "data_", 5, "", 0);
        v2 = *(v3 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_28087C408;
      v5 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "data_", 5, "", 0);
    }

    while (v4 != v5);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 40);

  return v8();
}

uint64_t sub_2714FCD68(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/IData.cpp", 216, "data_", 5uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "data_", 5, "", 0);
        v2 = *(v3 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_28087C408;
      v5 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "data_", 5, "", 0);
    }

    while (v4 != v5);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 48);

  return v8();
}

void sub_2714FCED0(uint64_t a1, void **a2, uint64_t *a3)
{
  if (*(a3 + 48) == 1)
  {
    operator new();
  }

  v3 = *a2;

  sub_271120E64(v3, "nullopt", 7);
}

void sub_2714FD0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714FD158(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2714FD190(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_2714FD1C0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d3kit3viz5IDataEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d3kit3viz5IDataEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d3kit3viz5IDataEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d3kit3viz5IDataEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_2714FD220(void *a1)
{
  *a1 = &unk_28812ECD0;
  sub_271134CBC((a1 + 12));
  result = a1;
  a1[1] = &unk_28812ED18;
  a1[2] = &unk_2881147D8;
  v3 = a1[4];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2714FD300(void *a1)
{
  *a1 = &unk_28812ECD0;
  sub_271134CBC((a1 + 12));
  a1[1] = &unk_28812ED18;
  a1[2] = &unk_2881147D8;
  v2 = a1[4];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714FD3F4(uint64_t *a1, uint64_t a2, void *__src, size_t __len, uint64_t a5, uint64_t a6)
{
  v14 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v10 = __len;
  if (__len)
  {
    memmove(&v9, __src, __len);
    *(&v9 + __len) = 0;
    v8 = *a1;
    if (*a1)
    {
LABEL_5:
      LOBYTE(__p[0]) = 0;
      LOBYTE(v13) = 0;
      if (*(v8 + 264) == 1)
      {
        if (*(v8 + 263) < 0)
        {
          sub_271127178(__p, *(v8 + 240), *(v8 + 248));
        }

        else
        {
          *__p = *(v8 + 240);
          v12 = *(v8 + 256);
        }

        LOBYTE(v13) = 1;
      }

LABEL_13:
      operator new();
    }
  }

  else
  {
    LOBYTE(v9) = 0;
    v8 = *a1;
    if (*a1)
    {
      goto LABEL_5;
    }
  }

  LOBYTE(__p[0]) = 0;
  LOBYTE(v13) = 0;
  goto LABEL_13;
}

void sub_2714FDB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_2714FDC3C(uint64_t **a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = (a1 + 1);
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = a1[1];
      v4 = a1 + 1;
      if (*a1 == (a1 + 1))
      {
        goto LABEL_10;
      }

      v5 = a1[1];
      v6 = a1 + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = v2[4];
      if (v4[4] < v8)
      {
LABEL_10:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = a1 + 1;
        }

        if (!*v9)
        {
LABEL_21:
          operator new();
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_21;
        }

        while (1)
        {
          while (1)
          {
            v10 = v3;
            v11 = v3[4];
            if (v11 <= v8)
            {
              break;
            }

            v3 = *v10;
            if (!*v10)
            {
              goto LABEL_21;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v3 = v10[1];
          if (!v3)
          {
            goto LABEL_21;
          }
        }
      }

      v12 = v2[1];
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
          v13 = v2[2];
          v7 = *v13 == v2;
          v2 = v13;
        }

        while (!v7);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return a1;
}

void sub_2714FDDEC(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 80);
  v3 = (v1 + 88);
  *__p = 0u;
  v52 = 0;
  v53 = 0;
  if (v2 == v3)
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_66;
  }

  v4 = 0;
  v5 = v2;
  do
  {
    v6 = v4;
    v7 = v5[1];
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
        v8 = v5[2];
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    ++v4;
    v5 = v8;
  }

  while (v8 != v3);
  v10 = v6 + 2;
  v11 = (v6 + 2) >> 9;
  if ((v10 & 0x1FF) != 0)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    operator new();
  }

  v14 = 0;
  v13 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v4 + (-MEMORY[0] >> 3);
  if (v18 < 1)
  {
    v19 = -8 * ((511 - v18) >> 9);
    v20 = *v19 + 8 * (~(511 - v18) & 0x1FF);
    if (!v20)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v19 = 8 * (v18 >> 9);
    v20 = *v19 + 8 * (v18 & 0x1FF);
    if (!v20)
    {
      goto LABEL_66;
    }
  }

  do
  {
    v21 = v20;
    if (v17 != v19)
    {
      v21 = *v17 + 4096;
    }

    if (v15 == v21)
    {
      v21 = v15;
    }

    else
    {
      v22 = v15;
      do
      {
        *v22++ = v2[4];
        v23 = v2[1];
        v24 = v2;
        if (v23)
        {
          do
          {
            v2 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v2 = v24[2];
            v9 = *v2 == v24;
            v24 = v2;
          }

          while (!v9);
        }
      }

      while (v22 != v21);
    }

    v16 += (v21 - v15) >> 3;
    if (v17 == v19)
    {
      break;
    }

    v25 = v17[1];
    ++v17;
    v15 = v25;
  }

  while (v25 != v20);
  v55 = v16;
  if (v16)
  {
    do
    {
      v26 = *(v14 + ((v12 >> 6) & 0x3FFFFFFFFFFFFF8));
      v27 = *(v26 + 8 * (v12 & 0x1FF));
      if (!**(v27 + 32))
      {
        v30 = *(v27 + 40);
        v31 = atomic_load(*(a1 + 40));
        atomic_exchange(v30, v31);
        v32 = *(*(v26 + 8 * (v12 & 0x1FF)) + 48);
        v33 = *(v32 + 80);
        v34 = (v32 + 88);
        v14 = __p[1];
        v16 = v55;
        v12 = v53;
        if (v33 != (v32 + 88))
        {
          v35 = v52;
          do
          {
            if (v35 == v14)
            {
              v36 = 0;
            }

            else
            {
              v36 = ((v35 - v14) << 6) - 1;
            }

            v37 = v12 + v16;
            if (v36 == v12 + v16)
            {
              if (v12 < 0x200)
              {
                operator new();
              }

              v54 = v12 - 512;
              v40 = *v14;
              v38 = (v14 + 1);
              v39 = v40;
              __p[1] = v38;
              if (!v35)
              {
                if (!v38)
                {
                  operator new();
                }

                v41 = ((v38 >> 3) + 1 + (((v38 >> 3) + 1) >> 63)) >> 1;
                v42 = (v38 - 8 * v41);
                if (v35 != v38)
                {
                  memmove((v38 - 8 * v41), v38, &v35[-v38]);
                }

                v35 = &v35[v42 - v38];
                __p[1] = v42;
              }

              *v35 = v39;
              v52 = v35 + 8;
              v14 = __p[1];
              v35 += 8;
              v16 = v55;
              v12 = v54;
              v37 = v54 + v55;
            }

            (*(v14 + ((v37 >> 6) & 0x3FFFFFFFFFFFFF8)))[v37 & 0x1FF] = v33[4];
            v55 = ++v16;
            v43 = v33[1];
            if (v43)
            {
              do
              {
                v44 = v43;
                v43 = *v43;
              }

              while (v43);
            }

            else
            {
              do
              {
                v44 = v33[2];
                v9 = *v44 == v33;
                v33 = v44;
              }

              while (!v9);
            }

            v33 = v44;
          }

          while (v44 != v34);
        }
      }

      --v16;
      v28 = v12 + 1;
      v53 = v12 + 1;
      v55 = v16;
      if (v12 + 1 >= 0x400)
      {
        v29 = *v14++;
        operator delete(v29);
        v28 = v12 - 511;
        __p[1] = v14;
        v53 = v12 - 511;
      }

      v12 = v28;
    }

    while (v16);
    v13 = v52;
    if (((v52 - v14) >> 3) >= 3)
    {
      v13 = v52;
      v45 = v52 - v14 - 8;
      do
      {
        v46 = *v14++;
        operator delete(v46);
        v47 = v45 >> 3;
        v45 -= 8;
      }

      while (v47 > 2);
    }
  }

LABEL_66:
  if (v14 != v13)
  {
    v48 = v14;
    do
    {
      v49 = *v48++;
      operator delete(v49);
    }

    while (v48 != v13);
  }
}

void sub_2714FE9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (a13 == a12)
  {
    v14 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void sub_2714FE9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
    operator delete(v13);
    if (a13 == a12)
    {
LABEL_3:
      v15 = a11;
      if (!a11)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (a13 == a12)
  {
    goto LABEL_3;
  }

  v15 = a11;
  if (!a11)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v15);
  _Unwind_Resume(a1);
}

void sub_2714FEA9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  operator delete(v10);
  sub_2715040D4(va);
  _Unwind_Resume(a1);
}

void sub_2714FEAD8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v6 = (*a1 + 72);
    std::__shared_mutex_base::lock(v6);
    v7 = *(a2 + 32);
    if (!*v7)
    {
      operator new();
    }

    if (*v7 != a3)
    {
      *v7 = a3;
      v8 = *a1;
      v9 = *(*a1 + 8);
      std::mutex::lock(v9);
      v10 = *(v8 + 16);
      v11 = (v8 + 24);
      if (v10 != v11)
      {
        do
        {
          v12 = *(a2 + 31);
          if (v12 >= 0)
          {
            v13 = a2 + 8;
          }

          else
          {
            v13 = *(a2 + 8);
          }

          if (v12 >= 0)
          {
            v14 = *(a2 + 31);
          }

          else
          {
            v14 = *(a2 + 16);
          }

          (*(*v10[4] + 16))(v10[4], v13, v14, a3);
          v15 = v10[1];
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
              v16 = v10[2];
              v17 = *v16 == v10;
              v10 = v16;
            }

            while (!v17);
          }

          v10 = v16;
        }

        while (v16 != v11);
      }

      std::mutex::unlock(v9);
    }

    goto LABEL_25;
  }

  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    if (*(a2 + 31))
    {
      goto LABEL_21;
    }

LABEL_27:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot set root context to inherit its enable-state");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (!*(a2 + 16))
  {
    goto LABEL_27;
  }

LABEL_21:
  v6 = (*a1 + 72);
  std::__shared_mutex_base::lock(v6);
  if (**(a2 + 32))
  {
    v18 = *(a2 + 40);
    v19 = atomic_load(*(a1[9] + 40));
    atomic_exchange(v18, v19);
    sub_2714FDDEC(a2);
    operator new();
  }

LABEL_25:
  std::__shared_mutex_base::unlock(v6);
}

void sub_2714FEEE8(uint64_t a1, const void *a2, size_t __len, uint64_t *a4, char a5)
{
  *a1 = &unk_28810C310;
  if (__len < 0x7FFFFFFFFFFFFFF8)
  {
    if (__len < 0x17)
    {
      *(a1 + 31) = __len;
      v6 = (a1 + 8);
      if (__len)
      {
        memmove(v6, a2, __len);
      }

      *(v6 + __len) = 0;
      operator new();
    }

    operator new();
  }

  sub_271120DA8();
}

void sub_2714FF018(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v4)
  {
    MEMORY[0x2743BF050](v4, 0x1000C4077774924);
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2714FF074(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    sub_2715032B0(v2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    MEMORY[0x2743BF050](v3, 0x80C40B8603338);
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {
    MEMORY[0x2743BF050](v4, 0x1000C4077774924);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_2714FF108(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    sub_2715032B0(v2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    MEMORY[0x2743BF050](v3, 0x80C40B8603338);
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {
    MEMORY[0x2743BF050](v4, 0x1000C4077774924);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2714FF1E0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = (**(a1 + 48) + 72);
  std::__shared_mutex_base::lock_shared(v6);
  v7 = &a2[a3];
  v8 = 0;
  if (a3)
  {
    while (a2[v8] != 46)
    {
      if (a3 == ++v8)
      {
        v8 = a3;
        break;
      }
    }
  }

  v9 = 0;
  v15[0] = a2;
  v15[1] = &a2[a3];
  v15[2] = a2;
  v15[3] = a2;
  v15[4] = v8;
  v16 = 46;
  v17 = &unk_271897860;
  v18 = &unk_271897860;
  v19 = &unk_271897860;
  v20 = &unk_271897860;
  v21 = 0;
  v22 = 0;
  if (a3 && a2 != &unk_271897860)
  {
    v9 = 0;
    do
    {
      ++v9;
      v10 = &a2[v8];
      if (v10 == v7)
      {
        break;
      }

      a2 = v10 + 1;
      if (v10 + 1 == v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        while (a2[v8] != 46)
        {
          if (v7 - a2 == ++v8)
          {
            v8 = v7 - a2;
            break;
          }
        }
      }
    }

    while (a2 != &unk_271897860);
  }

  v23 = v9;
  v13 = a1;
  v14 = 0;
  sub_2715033A4(a1, v15, 0, &v13);
  v11 = v13;
  std::__shared_mutex_base::unlock_shared(v6);
  return v11;
}

void sub_2714FF334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715041A0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2714FF348(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  std::__shared_mutex_base::lock((a1 + 72));
  v6 = sub_2714FF4F4(a1, a2, a3, 1);
  std::__shared_mutex_base::unlock((a1 + 72));
  return v6;
}

unint64_t sub_2714FF3C0(uint64_t a1, const void *a2, size_t a3)
{
  std::__shared_mutex_base::lock((a1 + 72));
  v6 = *(a1 + 56);
  if (!v6)
  {
    goto LABEL_32;
  }

  v7 = (a1 + 56);
  do
  {
    while (1)
    {
      v8 = *(v6 + 55);
      v9 = v8 >= 0 ? v6 + 4 : v6[4];
      v10 = v8 >= 0 ? *(v6 + 55) : v6[5];
      v11 = v10 >= a3 ? a3 : v10;
      v12 = memcmp(a2, v9, v11);
      if (v12)
      {
        break;
      }

      if (a3 <= v10)
      {
        goto LABEL_17;
      }

LABEL_3:
      v6 = v6[1];
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    v7 = v6;
    v6 = *v6;
  }

  while (v6);
LABEL_18:
  if (v7 == (a1 + 56))
  {
    goto LABEL_32;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(a2, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_32:
    v20 = 0;
    v19 = 0;
  }

  else
  {
    if (a3 < v15)
    {
      goto LABEL_32;
    }

LABEL_30:
    v18 = v7[7];
    v19 = v18 & 0xFFFFFFFFFFFFFF00;
    v20 = v18;
  }

  std::__shared_mutex_base::unlock((a1 + 72));
  return v19 | v20;
}

uint64_t *sub_2714FF4F4(uint64_t a1, uint64_t *a2, int64_t a3, char a4)
{
  v6 = a2 + a3;
  v7 = 0;
  if (a3)
  {
    while (*(a2 + v7) != 46)
    {
      if (a3 == ++v7)
      {
        v7 = a3;
        break;
      }
    }
  }

  v8 = 0;
  v9 = *(a1 + 40);
  v39[0] = a2;
  v39[1] = a2 + a3;
  v39[2] = a2;
  v39[3] = a2;
  v39[4] = v7;
  v40 = 46;
  v41 = &unk_271897860;
  v42 = &unk_271897860;
  v43 = &unk_271897860;
  v44 = &unk_271897860;
  v45 = 0;
  v46 = 0;
  if (a3 && a2 != &unk_271897860)
  {
    v8 = 0;
    v10 = a2;
    do
    {
      ++v8;
      v11 = v10 + v7;
      if (v11 == v6)
      {
        break;
      }

      v10 = (v11 + 1);
      if (v11 + 1 == v6)
      {
        v7 = 0;
      }

      else
      {
        v7 = 0;
        while (*(v10 + v7) != 46)
        {
          if (v6 - v10 == ++v7)
          {
            v7 = v6 - v10;
            break;
          }
        }
      }
    }

    while (v10 != &unk_271897860);
  }

  v47 = v8;
  v37 = v9;
  LOBYTE(v38[0]) = 0;
  sub_2715033A4(v9, v39, 0, &v37);
  if ((v38[0] & 1) == 0)
  {
    v12 = v37[6];
    v38[0] = 0;
    v38[1] = 0;
    v37 = v38;
    v13 = *(v12 + 80);
    v36 = v12;
    v14 = (v12 + 88);
    if (v13 == (v12 + 88))
    {
LABEL_62:
      operator new();
    }

LABEL_21:
    v16 = v13[4];
    v17 = *(v16 + 31);
    if ((v17 & 0x8000000000000000) != 0)
    {
      v18 = *(v16 + 8);
      v17 = *(v16 + 16);
      if (v17 <= a3)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v18 = (v16 + 8);
      if (v17 <= a3)
      {
        goto LABEL_27;
      }
    }

    if (a3)
    {
      if (v17 < a3)
      {
        goto LABEL_27;
      }

      v22 = &v18[v17];
      v23 = *a2;
      v24 = v17;
      v25 = v18;
      while (1)
      {
        v26 = v24 - a3;
        if (v26 == -1)
        {
          goto LABEL_27;
        }

        v27 = memchr(v25, v23, v26 + 1);
        if (!v27)
        {
          goto LABEL_27;
        }

        v28 = v27;
        if (!memcmp(v27, a2, a3))
        {
          break;
        }

        v25 = v28 + 1;
        v24 = v22 - (v28 + 1);
        if (v24 < a3)
        {
          goto LABEL_27;
        }
      }

      if (v28 == v22 || v18 != v28 || v17 <= a3 + 1 || v18[a3] != 46)
      {
        goto LABEL_27;
      }

      v29 = a3;
      while (v18[v29 + 1] == 46)
      {
        if (v17 - 1 == ++v29)
        {
          goto LABEL_27;
        }
      }

      if (v29 == -2)
      {
LABEL_27:
        v19 = v13[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v13[2];
            v21 = *v20 == v13;
            v13 = v20;
          }

          while (!v21);
        }

        goto LABEL_20;
      }
    }

    for (i = v38[0]; ; i = *v31)
    {
      if (!i)
      {
LABEL_54:
        operator new();
      }

      while (1)
      {
        v31 = i;
        v32 = i[4];
        if (v16 < v32)
        {
          break;
        }

        if (v32 >= v16)
        {
          v33 = v13[1];
          v34 = v13;
          if (v33)
          {
            do
            {
              v20 = v33;
              v33 = *v33;
            }

            while (v33);
          }

          else
          {
            do
            {
              v20 = v34[2];
              v21 = *v20 == v34;
              v34 = v20;
            }

            while (!v21);
          }

          if (v36[10] == v13)
          {
            v36[10] = v20;
          }

          v15 = v36[11];
          --v36[12];
          sub_271128F64(v15, v13);
          operator delete(v13);
LABEL_20:
          v13 = v20;
          if (v20 == v14)
          {
            goto LABEL_62;
          }

          goto LABEL_21;
        }

        i = v31[1];
        if (!i)
        {
          goto LABEL_54;
        }
      }
    }
  }

  return v37;
}

uint64_t sub_2714FFE88(uint64_t a1, unint64_t a2)
{
  std::__shared_mutex_base::lock((a1 + 72));
  v19 = *(a1 + 8);
  v20 = a1;
  std::mutex::lock(v19);
  v22[0] = 0;
  v22[1] = 0;
  v3 = *(a1 + 48);
  v21 = v22;
  if (v3 != (a1 + 56))
  {
    do
    {
      if (*(v3[7] + 32))
      {
        operator new();
      }

      v12 = v3[1];
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
          v13 = v3[2];
          v14 = *v13 == v3;
          v3 = v13;
        }

        while (!v14);
      }

      v3 = v13;
    }

    while (v13 != (a1 + 56));
  }

  v5 = a1 + 24;
  v4 = *(v20 + 24);
  if (!v4)
  {
LABEL_24:
    operator new();
  }

  v6 = v20 + 24;
  v7 = *(v20 + 24);
  do
  {
    v8 = *(v7 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v6 = v7;
    }

    v7 = *(v7 + 8 * v10);
  }

  while (v7);
  if (v6 == v5 || *(v6 + 32) > a2)
  {
    while (1)
    {
      while (1)
      {
        v15 = v4;
        v16 = v4[4];
        if (v16 <= a2)
        {
          break;
        }

        v4 = *v15;
        if (!*v15)
        {
          goto LABEL_24;
        }
      }

      if (v16 >= a2)
      {
        break;
      }

      v4 = v15[1];
      if (!v4)
      {
        goto LABEL_24;
      }
    }

    (*(*a2 + 32))(a2, &v21);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  sub_271167834(&v21, v22[0]);
  std::mutex::unlock(v19);
  std::__shared_mutex_base::unlock((v20 + 72));
  return v11;
}

uint64_t sub_271500210(void *a1, unint64_t a2)
{
  v4 = a1[1];
  std::mutex::lock(v4);
  v6 = a1 + 3;
  v5 = a1[3];
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = a1 + 3;
  v8 = a1[3];
  do
  {
    v9 = v8[4];
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v7 = v8;
    }

    v8 = v8[v11];
  }

  while (v8);
  if (v7 != v6 && v7[4] <= a2)
  {
    v14 = a1 + 3;
    v15 = a1[3];
    do
    {
      v16 = *(v15 + 32);
      v10 = v16 >= a2;
      v17 = v16 < a2;
      if (v10)
      {
        v14 = v15;
      }

      v15 = *(v15 + 8 * v17);
    }

    while (v15);
    if (v14 != v6 && v14[4] <= a2)
    {
      v18 = v14[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        v20 = v14;
        do
        {
          v19 = v20[2];
          v21 = *v19 == v20;
          v20 = v19;
        }

        while (!v21);
      }

      if (a1[2] == v14)
      {
        a1[2] = v19;
      }

      --a1[4];
      sub_271128F64(v5, v14);
      operator delete(v14);
    }

    v12 = 1;
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  std::mutex::unlock(v4);
  return v12;
}

void sub_271500330(uint64_t a1, void *a2)
{
  v26 = 0;
  LOBYTE(__p[0]) = 0;
  v4 = sub_27123ADBC(a2, __p);
  if (v26 < 0)
  {
    v6 = v4;
    operator delete(__p[0]);
    v5 = a2 + 1;
    if (a2 + 1 == v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = a2 + 1;
    if (a2 + 1 == v4)
    {
      goto LABEL_8;
    }
  }

  v26 = 0;
  LOBYTE(__p[0]) = 0;
  v7 = sub_27123ADBC(a2, __p);
  if (v26 < 0)
  {
    v8 = v7;
    operator delete(__p[0]);
    v7 = v8;
  }

  if (!*(v7 + 56))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot set root context to inherit its enable-state");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

LABEL_8:
  std::__shared_mutex_base::lock((a1 + 72));
  v9 = *a2;
  if (*a2 != v5)
  {
    do
    {
      v10 = *(v9 + 55);
      if (v10 < 0)
      {
        v11 = v9[4];
        v10 = v9[5];
      }

      else
      {
        v11 = v9 + 4;
      }

      v12 = sub_2714FF4F4(a1, v11, v10, 0);
      v13 = *(v9 + 56);
      v14 = v12[4];
      if (*(v9 + 56))
      {
        if (!*v14)
        {
          operator new();
        }

        if (*v14 != v13)
        {
          *v14 = v13;
        }
      }

      else if (*v14)
      {
        v15 = v12[5];
        v16 = atomic_load(*(*(v12[6] + 72) + 40));
        atomic_exchange(v15, v16);
        sub_2714FDDEC(v12);
        operator new();
      }

      v17 = v9[1];
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
          v18 = v9[2];
          v19 = *v18 == v9;
          v9 = v18;
        }

        while (!v19);
      }

      v9 = v18;
    }

    while (v18 != v5);
  }

  v20 = *(a1 + 8);
  std::mutex::lock(v20);
  v21 = *(a1 + 16);
  if (v21 != (a1 + 24))
  {
    do
    {
      (*(*v21[4] + 24))(v21[4], a2);
      v22 = v21[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v21[2];
          v19 = *v23 == v21;
          v21 = v23;
        }

        while (!v19);
      }

      v21 = v23;
    }

    while (v23 != (a1 + 24));
  }

  std::mutex::unlock(v20);
  std::__shared_mutex_base::unlock((a1 + 72));
}

void sub_27150063C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27150068C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810B138;
  operator new();
}

void sub_271500E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  sub_271503B14(&a19);
  v27 = *(a15 + 8);
  *(a15 + 8) = 0;
  if (!v27)
  {
    _Unwind_Resume(a1);
  }

  (*(*v27 + 8))(v27);
  _Unwind_Resume(a1);
}

void *sub_271501004(void *result)
{
  v1 = result[1];
  *result = &unk_28810B138;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_271501078(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_28810B138;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271501108(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v4 = a1;
    v5 = a2;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 747, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v3 = *(v4 + 8);
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "p_", 2, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:

  return sub_2714FFE88(v3, a2);
}

uint64_t sub_271501250(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v4 = a1;
    v5 = a2;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 747, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v3 = *(v4 + 8);
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "p_", 2, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:

  return sub_271500210(v3, a2);
}

uint64_t sub_271501398(uint64_t a1, const void *a2, size_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  if (v6)
  {
    std::__shared_mutex_base::lock((v6 + 72));
    v7 = *(a1 + 8);
    if (v7)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_12;
    }

    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_63;
    }
  }

  do
  {
    v13 = *v10;
    v12 = *(v10 + 8);
    v10 += 16;
    v13(v12, "p_", 2, "", 0);
  }

  while (v10 != v11);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_12:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v6 = *(a1 + 8);
  std::__shared_mutex_base::lock((v6 + 72));
  v7 = *(a1 + 8);
  if (v7)
  {
LABEL_3:
    v8 = (v7 + 56);
    v9 = *(v7 + 56);
    if (!v9)
    {
      goto LABEL_49;
    }

    goto LABEL_21;
  }

LABEL_13:
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v14 = qword_28087C408;
    v15 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_63;
    }

    do
    {
LABEL_18:
      (*v14)(*(v14 + 8), "p_", 2, "", 0);
      v14 += 16;
    }

    while (v14 != v15);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_20;
  }

  if (byte_28087C438 == 1)
  {
    v14 = qword_28087C408;
    v15 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v7 = *(a1 + 8);
  v8 = (v7 + 56);
  v9 = *(v7 + 56);
  if (!v9)
  {
    goto LABEL_49;
  }

LABEL_21:
  v16 = v8;
  do
  {
    while (1)
    {
      v17 = *(v9 + 55);
      v18 = v17 >= 0 ? v9 + 4 : v9[4];
      v19 = v17 >= 0 ? *(v9 + 55) : v9[5];
      v20 = v19 >= a3 ? a3 : v19;
      v21 = memcmp(a2, v18, v20);
      if (v21)
      {
        break;
      }

      if (a3 <= v19)
      {
        goto LABEL_36;
      }

LABEL_22:
      v9 = v9[1];
      if (!v9)
      {
        goto LABEL_37;
      }
    }

    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_36:
    v16 = v9;
    v9 = *v9;
  }

  while (v9);
LABEL_37:
  if (v16 == v8)
  {
    goto LABEL_49;
  }

  v22 = *(v16 + 55);
  if (v22 >= 0)
  {
    v23 = v16 + 4;
  }

  else
  {
    v23 = v16[4];
  }

  if (v22 >= 0)
  {
    v24 = *(v16 + 55);
  }

  else
  {
    v24 = v16[5];
  }

  if (v24 >= a3)
  {
    v25 = a3;
  }

  else
  {
    v25 = v24;
  }

  v26 = memcmp(a2, v23, v25);
  if (!v26)
  {
    if (a3 >= v24)
    {
      goto LABEL_50;
    }

LABEL_49:
    v16 = v8;
    goto LABEL_50;
  }

  if (v26 < 0)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (!v7)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_58;
      }

      v27 = qword_28087C408;
      v28 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_58;
      }

      do
      {
LABEL_56:
        (*v27)(*(v27 + 8), "p_", 2, "", 0);
        v27 += 16;
      }

      while (v27 != v28);
      if (byte_28087C430)
      {
LABEL_58:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v7 = *(a1 + 8);
        goto LABEL_59;
      }
    }

    else
    {
      v27 = qword_28087C408;
      v28 = qword_28087C410;
      if (qword_28087C408 != qword_28087C410)
      {
        goto LABEL_56;
      }
    }

LABEL_63:
    abort();
  }

LABEL_59:
  if (v16 == (v7 + 56))
  {
    v34[0] = "Context with name ";
    v34[1] = 18;
    v34[2] = a2;
    v34[3] = a3;
    v34[4] = " not found";
    v34[5] = 10;
    sub_271131230(v34, &v35, 0, 0, &v33);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v33;
    }

    else
    {
      v31 = v33.__r_.__value_.__r.__words[0];
    }

    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v33.__r_.__value_.__l.__size_;
    }

    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 645, "", 0, v31, size, sub_271852CA8);
    std::string::~string(&v33);
    abort();
  }

  v29 = v16[7];
  std::__shared_mutex_base::unlock((v6 + 72));
  return v29;
}

void sub_271501884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_mutex_base::unlock((v14 + 72));
  _Unwind_Resume(a1);
}

uint64_t *sub_2715018D8(uint64_t a1, uint64_t *a2, int64_t a3)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 747, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_11;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "p_", 2, "", 0);
    }

    while (v7 != v8);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

LABEL_10:
  std::__shared_mutex_base::lock((v5 + 72));
  v11 = sub_2714FF4F4(v5, a2, a3, 1);
  std::__shared_mutex_base::unlock((v5 + 72));
  return v11;
}

unint64_t sub_271501A54(uint64_t a1, const void *a2, size_t a3)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    v5 = a1;
    v6 = a2;
    v7 = a3;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v8 = qword_28087C408, v9 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v4 = *(v5 + 8);
        a3 = v7;
        a2 = v6;
        goto LABEL_10;
      }
    }

    else
    {
      v8 = qword_28087C408;
      v9 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "p_", 2, "", 0);
    }

    while (v8 != v9);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:

  return sub_2714FF3C0(v4, a2, a3);
}

BOOL sub_271501BA4(uint64_t a1, void *__s1, size_t a3)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    v8 = *(v5 + 56);
    v6 = (v5 + 56);
    v7 = v8;
    if (!v8)
    {
LABEL_40:
      v16 = v6;
      return v16 != v6;
    }

    goto LABEL_12;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_11;
    }

    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_44;
    }
  }

  do
  {
    v13 = *v10;
    v12 = *(v10 + 8);
    v10 += 16;
    v13(v12, "p_", 2, "", 0);
  }

  while (v10 != v11);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_44:
    abort();
  }

LABEL_11:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v14 = *(a1 + 8);
  v15 = *(v14 + 56);
  v6 = (v14 + 56);
  v7 = v15;
  if (!v15)
  {
    goto LABEL_40;
  }

LABEL_12:
  v16 = v6;
  do
  {
    while (1)
    {
      v17 = *(v7 + 55);
      v18 = v17 >= 0 ? v7 + 4 : v7[4];
      v19 = v17 >= 0 ? *(v7 + 55) : v7[5];
      v20 = v19 >= a3 ? a3 : v19;
      v21 = memcmp(__s1, v18, v20);
      if (v21)
      {
        break;
      }

      if (a3 <= v19)
      {
        goto LABEL_27;
      }

LABEL_13:
      v7 = v7[1];
      if (!v7)
      {
        goto LABEL_28;
      }
    }

    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_27:
    v16 = v7;
    v7 = *v7;
  }

  while (v7);
LABEL_28:
  if (v16 == v6)
  {
    goto LABEL_40;
  }

  v22 = *(v16 + 55);
  if (v22 >= 0)
  {
    v23 = v16 + 4;
  }

  else
  {
    v23 = v16[4];
  }

  if (v22 >= 0)
  {
    v24 = *(v16 + 55);
  }

  else
  {
    v24 = v16[5];
  }

  if (v24 >= a3)
  {
    v25 = a3;
  }

  else
  {
    v25 = v24;
  }

  v26 = memcmp(__s1, v23, v25);
  if (!v26)
  {
    if (a3 >= v24)
    {
      return v16 != v6;
    }

    goto LABEL_40;
  }

  if (v26 < 0)
  {
    goto LABEL_40;
  }

  return v16 != v6;
}

void sub_271501DA8(uint64_t a1, uint64_t *a2, int64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  if (!v7)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 747, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v7 = *(a1 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "p_", 2, "", 0);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  std::__shared_mutex_base::lock((v7 + 72));
  v13 = sub_2714FF4F4(v7, a2, a3, 0);
  std::__shared_mutex_base::unlock((v7 + 72));
  v14 = v13[6];

  sub_2714FEAD8(v14, v13, a4);
}

void sub_271501F48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v4 = a1;
    v5 = a2;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 747, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v3 = *(v4 + 8);
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "p_", 2, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:

  sub_271500330(v3, a2);
}

uint64_t sub_271502090(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return v1 + 240;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (byte_28087C438 == 1)
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_8:
        v7 = *v4;
        v6 = *(v4 + 8);
        v4 += 16;
        v7(v6, "p_", 2, "", 0);
      }

      while (v4 != v5);
      if (byte_28087C430)
      {
        goto LABEL_10;
      }

LABEL_11:
      abort();
    }
  }

LABEL_10:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  return *(a1 + 8) + 240;
}

void sub_2715021D0(uint64_t a1, int a2, char a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
LABEL_10:
    std::__shared_mutex_base::lock((v4 + 72));
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 747, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
      v4 = *(a1 + 8);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "p_", 2, "", 0);
  }

  while (v5 != v6);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271502874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  sub_271167834(&a9, a10);
  std::__shared_mutex_base::unlock((v10 + 72));
  _Unwind_Resume(a1);
}

void sub_2715028B8(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v4 = *(a1 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v5 = qword_28087C408;
      v6 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_46;
      }
    }

    do
    {
      v8 = *v5;
      v7 = *(v5 + 8);
      v5 += 16;
      v8(v7, "p_", 2, "", 0);
    }

    while (v5 != v6);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_46:
    abort();
  }

LABEL_10:
  v29 = v4;
  std::__shared_mutex_base::lock((v4 + 72));
  a2[1] = 0;
  v9 = a2 + 1;
  a2[2] = 0;
  *a2 = (a2 + 1);
  v10 = *(a1 + 8);
  v11 = *(v10 + 48);
  v30 = (v10 + 56);
  if (v11 != (v10 + 56))
  {
    do
    {
      v31 = **(v11[7] + 32);
      v12 = *v9;
      if (!*v9)
      {
LABEL_39:
        operator new();
      }

      v13 = *(v11 + 55);
      if (v13 >= 0)
      {
        v14 = v11 + 4;
      }

      else
      {
        v14 = v11[4];
      }

      if (v13 >= 0)
      {
        v15 = *(v11 + 55);
      }

      else
      {
        v15 = v11[5];
      }

      while (1)
      {
        while (1)
        {
          v16 = v12;
          v19 = v12[4];
          v17 = v12 + 4;
          v18 = v19;
          v20 = *(v17 + 23);
          v21 = v20 >= 0 ? v17 : v18;
          v22 = v20 >= 0 ? *(v17 + 23) : v17[1];
          v23 = v22 >= v15 ? v15 : v22;
          v24 = memcmp(v14, v21, v23);
          if (v24)
          {
            break;
          }

          if (v15 >= v22)
          {
            goto LABEL_34;
          }

LABEL_20:
          v12 = *v16;
          if (!*v16)
          {
            goto LABEL_39;
          }
        }

        if (v24 < 0)
        {
          goto LABEL_20;
        }

LABEL_34:
        v25 = memcmp(v21, v14, v23);
        if (v25)
        {
          if ((v25 & 0x80000000) == 0)
          {
            break;
          }

          goto LABEL_38;
        }

        if (v22 >= v15)
        {
          break;
        }

LABEL_38:
        v12 = v16[1];
        if (!v12)
        {
          goto LABEL_39;
        }
      }

      *(v16 + 56) = v31;
      v26 = v11[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v11[2];
          v28 = *v27 == v11;
          v11 = v27;
        }

        while (!v28);
      }

      v11 = v27;
    }

    while (v27 != v30);
  }

  std::__shared_mutex_base::unlock((v29 + 72));
}

void sub_271502BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2711B17FC(va);
  sub_271167834(v7, *(v7 + 8));
  std::__shared_mutex_base::unlock((a5 + 72));
  _Unwind_Resume(a1);
}

uint64_t sub_271502C1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 40);
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (byte_28087C438 == 1)
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_8:
        v7 = *v4;
        v6 = *(v4 + 8);
        v4 += 16;
        v7(v6, "p_", 2, "", 0);
      }

      while (v4 != v5);
      if (byte_28087C430)
      {
        goto LABEL_10;
      }

LABEL_11:
      abort();
    }
  }

LABEL_10:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  return *(*(a1 + 8) + 40);
}

void sub_271502D84(uint64_t a1)
{
  sub_271503F04(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271502DBC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v5 = a2;
    v6 = a3;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v3 = *(a1 + 8);
        a3 = v6;
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "p_", 2, "", 0);
    }

    while (v7 != v8);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v11 = *(v3 + 40);

  return sub_2714FF1E0(v11, a2, a3);
}

void *sub_271502F0C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((*(v1 + 23) & 0x80000000) == 0)
    {
LABEL_6:
      MEMORY[0x2743BF050](v1, 0x1012C4045E9F9B4);
      return v2;
    }

    operator delete(*v1);
    goto LABEL_6;
  }

  return result;
}

void sub_271502F8C(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      v11 = &v4[-*a1] >> 2;
      if (v4 == *a1)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  a1[2] = (v4 + 8);
}

void sub_271503118(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = (v5 - 8);
}

void sub_2715032B0(uint64_t a1)
{
  sub_2714D9770(*(a1 + 88));
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v2;
    operator delete(v4);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v6 = *(a1 + 16);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715033A4(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
LABEL_1:
  v36 = a1;
  v37 = a4;
  v35 = *(a1 + 48);
  v5 = v35[6];
  v4 = v35[7];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3);
  v7 = a2[12];
  v32 = v7;
  v33 = a3;
  if (v7 >= v6)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3);
  }

  v31 = v7;
  v8 = v7 - a3;
  v9 = v6 - a3;
  if (v6 < a3)
  {
    v9 = 0;
  }

  if (v6 < v9)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3);
  }

  v10 = (v5 + 24 * (v6 - v9));
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v10) >> 3);
  if (v11 >= v8)
  {
    v11 = v8;
  }

  v12 = &v10[3 * v11];
  v34 = a2;
  sub_271503668(v38, a2, a3, v8);
  v13 = v39;
  v14 = v40;
  v15 = v41;
  v16 = v42;
  v17 = v43;
  v18 = v44;
  v19 = v45;
  v20 = v46;
LABEL_10:
  while (1)
  {
    if (v10 == v12)
    {
      v21 = v20 == v18 && v15 == v13;
      if (v21 || v14 == v19)
      {
        break;
      }
    }

    v22 = *(v10 + 23);
    if (v22 < 0)
    {
      v23 = *v10;
      if (v16 != v10[1])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v23 = v10;
      if (v16 != v22)
      {
        goto LABEL_27;
      }
    }

    if (memcmp(v14, v23, v16))
    {
LABEL_27:
      a4 = v37;
      if (*v37 != v36)
      {
        return 0;
      }

      v25 = v35[9];
      if (!v25)
      {
        return 1;
      }

      *v37 = v25;
      a1 = v35[9];
      a3 = v33;
      a2 = v34;
LABEL_31:

      goto LABEL_1;
    }

    v10 += 3;
    v15 = &v14[v16];
    v14 = v15;
    v16 = 0;
    if (v15 != v13)
    {
      v16 = 0;
      v14 = v15 + 1;
      if (v15 + 1 != v13)
      {
        v16 = 0;
        while (v14[v16] != v17)
        {
          if (v13 - v14 == ++v16)
          {
            v16 = v13 - v14;
            goto LABEL_10;
          }
        }
      }
    }
  }

  if (v32 > v6)
  {
    *v37 = v36;
    v26 = v35[10];
    if (v26 != v35 + 11)
    {
      do
      {
        v27 = v26[4];
        if (0xAAAAAAAAAAAAAAABLL * ((*(*(v27 + 48) + 56) - *(*(v27 + 48) + 48)) >> 3) <= *(v34 + 96) && (sub_2715033A4(v27, v34, v31, v37) & 1) != 0)
        {
          break;
        }

        v28 = v26[1];
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = v26[2];
            v21 = *v29 == v26;
            v26 = v29;
          }

          while (!v21);
        }

        v26 = v29;
      }

      while (v29 != v35 + 11);
    }

    return 1;
  }

  a4 = v37;
  if (v6 > v32)
  {
    v30 = v35[9];
    if (v30)
    {
      *v37 = v30;
      a1 = v35[9];
      a2 = v34;
      a3 = v31;
      goto LABEL_31;
    }

    return 1;
  }

  *v37 = v36;
  result = 1;
  *(v37 + 8) = 1;
  return result;
}

uint64_t sub_271503668(uint64_t result, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = a2[1];
  v6 = a2[2];
  v8 = a2[3];
  v7 = a2[4];
  v9 = *(a2 + 40);
  v11 = a2[7];
  v10 = a2[8];
  v12 = a2[9];
  v13 = v12 == v11;
  if (v8 == v5 && v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    if (v6 != v10)
    {
      v4 = 0;
      v15 = a2[2];
      v16 = a2[4];
      do
      {
        v15 += v16;
        if (v15 == v5)
        {
          v16 = 0;
          ++v4;
          if (v12 == v11)
          {
            break;
          }
        }

        else if (++v15 == v5)
        {
          v16 = 0;
          ++v4;
        }

        else
        {
          v17 = 0;
          v16 = v5 - v15;
          while (*(v15 + v17) != v9)
          {
            if (v16 == ++v17)
            {
              ++v4;
              goto LABEL_14;
            }
          }

          v16 = v17;
          ++v4;
        }

LABEL_14:
        ;
      }

      while (v15 != v10);
      v14 = 0;
      v18 = a2[4];
      v19 = a2[2];
      do
      {
        v19 += v18;
        if (v19 == v5)
        {
          v18 = 0;
          ++v14;
          if (v12 == v11)
          {
            break;
          }
        }

        else if (++v19 == v5)
        {
          v18 = 0;
          ++v14;
        }

        else
        {
          v20 = 0;
          v18 = v5 - v19;
          while (*(v19 + v20) != v9)
          {
            if (v18 == ++v20)
            {
              ++v14;
              goto LABEL_26;
            }
          }

          v18 = v20;
          ++v14;
        }

LABEL_26:
        ;
      }

      while (v19 != v10);
    }
  }

  v21 = v4 >= a3;
  v22 = v4 - a3;
  if (!v21)
  {
    v22 = 0;
  }

  if (v14 < v22)
  {
    v22 = v14;
  }

  v23 = v14 - v22;
  if (v23 >= 1)
  {
    do
    {
      v8 = v6 + v7;
      if (v6 + v7 == v5)
      {
        v7 = 0;
        v6 = v8;
      }

      else
      {
        v6 = v8 + 1;
        if (v8 + 1 == v5)
        {
          v7 = 0;
        }

        else
        {
          v7 = 0;
          while (*(v6 + v7) != v9)
          {
            if (v5 - v6 == ++v7)
            {
              v7 = v5 - v6;
              break;
            }
          }
        }
      }

      v34 = v23-- > 1;
    }

    while (v34);
  }

  v24 = 0;
  v25 = v12 == v11 && v8 == v5;
  if (!v25 && v6 != v10)
  {
    v24 = 0;
    v26 = v7;
    v27 = v6;
    do
    {
      v27 += v26;
      if (v27 == v5)
      {
        v26 = 0;
        ++v24;
        if (v13)
        {
          break;
        }
      }

      else if (++v27 == v5)
      {
        v26 = 0;
        ++v24;
      }

      else
      {
        v28 = 0;
        v26 = v5 - v27;
        while (*(v27 + v28) != v9)
        {
          if (v26 == ++v28)
          {
            ++v24;
            goto LABEL_50;
          }
        }

        v26 = v28;
        ++v24;
      }

LABEL_50:
      ;
    }

    while (v27 != v10);
  }

  if (v24 >= a4)
  {
    v29 = a4;
  }

  else
  {
    v29 = v24;
  }

  v30 = *a2;
  v31 = v6;
  v32 = v8;
  v33 = v7;
  if (v29 >= 1)
  {
    v31 = v6;
    v33 = v7;
    do
    {
      v32 = v31 + v33;
      if (v31 + v33 == v5)
      {
        v33 = 0;
        v31 = v32;
      }

      else
      {
        v31 = v32 + 1;
        if (v32 + 1 == v5)
        {
          v33 = 0;
        }

        else
        {
          v33 = 0;
          while (*(v31 + v33) != v9)
          {
            if (v5 - v31 == ++v33)
            {
              v33 = v5 - v31;
              break;
            }
          }
        }
      }

      v34 = v29-- > 1;
    }

    while (v34);
  }

  v35 = 0;
  v36 = v8 == v5;
  *result = v30;
  *(result + 8) = v5;
  *(result + 16) = v6;
  *(result + 24) = v8;
  *(result + 32) = v7;
  *(result + 40) = v9;
  v37 = *(a2 + 41);
  *(result + 41) = v37;
  v38 = *(a2 + 11);
  *(result + 44) = v38;
  *(result + 48) = v30;
  *(result + 56) = v5;
  *(result + 64) = v31;
  *(result + 72) = v32;
  *(result + 80) = v33;
  *(result + 88) = v9;
  *(result + 92) = v38;
  v39 = v32 == v5 && v36;
  *(result + 89) = v37;
  if (!v39 && v6 != v31)
  {
    v35 = 0;
    do
    {
      v6 += v7;
      if (v6 == v5)
      {
        v7 = 0;
        ++v35;
        if (v32 == v5)
        {
          break;
        }
      }

      else if (++v6 == v5)
      {
        v7 = 0;
        ++v35;
      }

      else
      {
        v40 = 0;
        v7 = v5 - v6;
        while (*(v6 + v40) != v9)
        {
          if (v7 == ++v40)
          {
            ++v35;
            goto LABEL_92;
          }
        }

        v7 = v40;
        ++v35;
      }

LABEL_92:
      ;
    }

    while (v6 != v31);
  }

  *(result + 96) = v35;
  return result;
}

void sub_271503A70(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    sub_2715032B0(v2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    MEMORY[0x2743BF050](v3, 0x80C40B8603338);
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {
    MEMORY[0x2743BF050](v4, 0x1000C4077774924);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271503B14(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    v3 = *(v2 + 48);
    *(v2 + 48) = 0;
    if (v3)
    {
      sub_2715032B0(v3);
    }

    v4 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v4)
    {
      MEMORY[0x2743BF050](v4, 0x80C40B8603338);
    }

    v5 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v5)
    {
      MEMORY[0x2743BF050](v5, 0x1000C4077774924);
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    MEMORY[0x2743BF050](v2, 0x10B3C406DCED8F8);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

unsigned __int8 **sub_271503BDC(unsigned __int8 **result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  v4 = *(v3 + 80);
  v30 = (v3 + 88);
  if (v4 != (v3 + 88))
  {
    v5 = result;
    v29 = result;
    do
    {
      v6 = v4[4];
      v7 = **v5;
      v8 = v6[4];
      if (**v5)
      {
        if (!*v8)
        {
          operator new();
        }

        if (*v8 != v7)
        {
          *v8 = v7;
        }
      }

      else if (*v8)
      {
        v9 = v6[5];
        v10 = atomic_load(*(*(v6[6] + 72) + 40));
        atomic_exchange(v9, v10);
        sub_2714FDDEC(v6);
        operator new();
      }

      v11 = v4[4];
      v12 = *(v5[1] + 1);
      if (!v12)
      {
LABEL_37:
        operator new();
      }

      v13 = *(v11 + 31);
      if (v13 >= 0)
      {
        v14 = (v11 + 8);
      }

      else
      {
        v14 = *(v11 + 8);
      }

      if (v13 >= 0)
      {
        v15 = *(v11 + 31);
      }

      else
      {
        v15 = *(v11 + 16);
      }

      while (1)
      {
        while (1)
        {
          v16 = v12;
          v19 = v12[4];
          v17 = v12 + 4;
          v18 = v19;
          v20 = *(v17 + 23);
          v21 = v20 >= 0 ? v17 : v18;
          v22 = v20 >= 0 ? *(v17 + 23) : v17[1];
          v23 = v22 >= v15 ? v15 : v22;
          v24 = memcmp(v14, v21, v23);
          if (v24)
          {
            break;
          }

          if (v15 >= v22)
          {
            goto LABEL_32;
          }

LABEL_18:
          v12 = *v16;
          if (!*v16)
          {
            goto LABEL_37;
          }
        }

        if (v24 < 0)
        {
          goto LABEL_18;
        }

LABEL_32:
        v25 = memcmp(v21, v14, v23);
        if (v25)
        {
          if ((v25 & 0x80000000) == 0)
          {
            break;
          }

          goto LABEL_36;
        }

        if (v22 >= v15)
        {
          break;
        }

LABEL_36:
        v12 = v16[1];
        if (!v12)
        {
          goto LABEL_37;
        }
      }

      v5 = v29;
      result = sub_271503BDC(a3, v11, a3);
      v26 = v4[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v4[2];
          v28 = *v27 == v4;
          v4 = v27;
        }

        while (!v28);
      }

      v4 = v27;
    }

    while (v27 != v30);
  }

  return result;
}

void sub_271503EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2711B17FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271503F04(uint64_t a1)
{
  *a1 = &unk_28810B190;
  if (*(a1 + 264) == 1 && *(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  std::condition_variable::~condition_variable((a1 + 184));
  std::condition_variable::~condition_variable((a1 + 136));
  std::mutex::~mutex((a1 + 72));
  sub_2715042C0(*(a1 + 56));
  sub_2714D9770(*(a1 + 24));
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    std::mutex::~mutex(v2);
    MEMORY[0x2743BF050]();
  }

  return a1;
}

void sub_271503FB0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271503FE8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
LABEL_6:

        JUMPOUT(0x2743BF050);
      }
    }

    else if ((*(v1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*v1);
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_271504074(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d3kit3viz9ContextIDEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d3kit3viz9ContextIDEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d3kit3viz9ContextIDEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d3kit3viz9ContextIDEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2715040D4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2715041A0(uint64_t result)
{
  if (*(result + 8) == 1)
  {
    v1 = result;
    std::__shared_mutex_base::unlock_shared(*result);
    return v1;
  }

  return result;
}

uint64_t *sub_2715041E0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 56);
      *(v2 + 56) = 0;
      if (v3)
      {
        v4 = *(v3 + 48);
        *(v3 + 48) = 0;
        if (v4)
        {
          sub_2715032B0(v4);
        }

        v5 = *(v3 + 40);
        *(v3 + 40) = 0;
        if (v5)
        {
          MEMORY[0x2743BF050](v5, 0x80C40B8603338);
        }

        v6 = *(v3 + 32);
        *(v3 + 32) = 0;
        if (v6)
        {
          MEMORY[0x2743BF050](v6, 0x1000C4077774924);
        }

        if (*(v3 + 31) < 0)
        {
          operator delete(*(v3 + 8));
        }

        MEMORY[0x2743BF050](v3, 0x10B3C406DCED8F8);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2715042C0(char *a1)
{
  if (a1)
  {
    sub_2715042C0(*a1);
    sub_2715042C0(*(a1 + 1));
    v2 = *(a1 + 7);
    *(a1 + 7) = 0;
    if (v2)
    {
      v3 = *(v2 + 48);
      *(v2 + 48) = 0;
      if (v3)
      {
        sub_2715032B0(v3);
      }

      v4 = *(v2 + 40);
      *(v2 + 40) = 0;
      if (v4)
      {
        MEMORY[0x2743BF050](v4, 0x80C40B8603338);
      }

      v5 = *(v2 + 32);
      *(v2 + 32) = 0;
      if (v5)
      {
        MEMORY[0x2743BF050](v5, 0x1000C4077774924);
      }

      if (*(v2 + 31) < 0)
      {
        operator delete(*(v2 + 8));
      }

      MEMORY[0x2743BF050](v2, 0x10B3C406DCED8F8);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v6 = a1;
    }

    else
    {
      v6 = a1;
    }

    operator delete(v6);
  }
}

void sub_2715043C0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) == 1)
  {
    __lk.__m_ = (a1 + 184);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 184));
    if (*(a1 + 96) == 1)
    {
      v4 = atomic_load((a1 + 128));
      if ((*(a1 + 96) & 1) == 0)
      {
        sub_2711B0B74();
      }

      if (*(a1 + 88) <= v4)
      {
        v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        v6 = atomic_load((a1 + 128));
        if (*(a1 + 96) != 1)
        {
          goto LABEL_47;
        }

        if (*(a1 + 88) > v6)
        {
          goto LABEL_7;
        }

        rep = v5.__d_.__rep_;
        v12.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        std::chrono::steady_clock::now();
        v13.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        v14.__d_.__rep_ = 1000000000;
        if (v13.__d_.__rep_)
        {
          if (v13.__d_.__rep_ <= 0)
          {
            if (v13.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              v14.__d_.__rep_ = 1000 * v13.__d_.__rep_ + 1000000000;
            }

            else
            {
              v14.__d_.__rep_ = 0x800000003B9ACA00;
            }
          }

          else if (v13.__d_.__rep_ < 0x20C49BA5D411B8)
          {
            v14.__d_.__rep_ = 1000 * v13.__d_.__rep_ + 1000000000;
          }

          else
          {
            v14.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        std::condition_variable::__do_timed_wait((a1 + 136), &__lk, v14);
        std::chrono::steady_clock::now();
        v15 = atomic_load((a1 + 128));
        if (*(a1 + 96) != 1)
        {
LABEL_47:
          sub_2711B0B74();
        }

        v16 = v12.__d_.__rep_ - rep;
        while (*(a1 + 88) <= v15)
        {
          if (std::chrono::steady_clock::now().__d_.__rep_ - (v16 + rep) >= 500000000)
          {
            v16 = std::chrono::steady_clock::now().__d_.__rep_ - rep;
          }

          std::chrono::steady_clock::now();
          v18.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          v17.__d_.__rep_ = 1000000000;
          if (v18.__d_.__rep_)
          {
            if (v18.__d_.__rep_ < 1)
            {
              if (v18.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
              {
                v17.__d_.__rep_ = 1000 * v18.__d_.__rep_ + 1000000000;
              }

              else
              {
                v17.__d_.__rep_ = 0x800000003B9ACA00;
              }
            }

            else if (v18.__d_.__rep_ >= 0x20C49BA5D411B8)
            {
              v17.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17.__d_.__rep_ = 1000 * v18.__d_.__rep_ + 1000000000;
            }
          }

          std::condition_variable::__do_timed_wait((a1 + 136), &__lk, v17);
          std::chrono::steady_clock::now();
          v15 = atomic_load((a1 + 128));
          if ((*(a1 + 96) & 1) == 0)
          {
            goto LABEL_47;
          }
        }
      }
    }

LABEL_7:
    atomic_fetch_add((a1 + 128), 1u);
    (*(*(*(*(a1 + 120) + 72) + 88) + 16))();
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (*(a1 + 104) != 1)
    {
      goto LABEL_21;
    }

LABEL_12:
    sub_2714FCC00(a2 + 16);
    __lk.__m_ = 0x74656E2E64337663;
    v7 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v7 = __p[1];
    }

    if (v7 != 8)
    {
      goto LABEL_18;
    }

    v8 = __p[0];
    if ((v21 & 0x80u) == 0)
    {
      v8 = __p;
    }

    if (*v8 == __lk.__m_)
    {
      v9 = v22 == 2;
      if ((v21 & 0x80000000) == 0)
      {
LABEL_20:
        if (!v9)
        {
          return;
        }

        goto LABEL_21;
      }
    }

    else
    {
LABEL_18:
      v9 = 0;
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    operator delete(__p[0]);
    goto LABEL_20;
  }

  (*(*(*(*(a1 + 120) + 72) + 88) + 16))();
  if (*(a1 + 104) == 1)
  {
    goto LABEL_12;
  }

LABEL_21:
  v10 = *(*(*(a1 + 120) + 72) + 72);
  (*(*v10 + 64))(v10);
}

void sub_271504764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_271504904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271504934(uint64_t a1)
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

uint64_t sub_2715049C0(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    result = v2;
  }

LABEL_7:
  v3 = *(result + 8);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void *sub_271504AB8(void *result)
{
  v1 = result[1];
  *result = &unk_288116478;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

uint64_t ***sub_271504B2C(uint64_t ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      v4 = sub_27174B42C(v3);
      MEMORY[0x2743BF050](v4, 0x1020C4014B85259);
    }

    MEMORY[0x2743BF050](v1, 0x20C4093837F09);
    return v2;
  }

  return result;
}

uint64_t sub_271504B98(uint64_t result)
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

void sub_271504C10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t *sub_271504CC8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(v2 + 24) == 1)
  {
    v3 = *(**(v2 + 16) + 24);

    return v3();
  }

  else if ((atomic_load_explicit(&qword_28087B938, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_28087B938))
  {
    return &qword_28087B960;
  }

  else
  {
    qword_28087B960 = 0;
    unk_28087B968 = 0;
    __cxa_guard_release(&qword_28087B938);
    return &qword_28087B960;
  }
}

void sub_271504DFC()
{
  v3 = &unk_28810CA28;
  v4 = 1;
  v5 = &unk_28810CB78;
  operator new();
}

void sub_271505380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_27112D66C(v34 - 168);
  sub_271506144(&a24);
  sub_27173115C(va);
  _Unwind_Resume(a1);
}

void sub_2715053A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  operator delete(v34);
  sub_271506144(&a24);
  sub_27173115C(va);
  _Unwind_Resume(a1);
}

void sub_2715053C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_271506144(&a24);
  sub_27173115C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_271505424(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  memset(__p, 0, 24);
  __p[3] = __p;
  v4 = 0;
  if (a3)
  {
    if (a3 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_271135560();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return a1;
}

void sub_271505660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, char *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_2715106E4(va1);
  sub_271392A1C(va);
  _Unwind_Resume(a1);
}

void sub_27150567C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2715106E4(va);
  _Unwind_Resume(a1);
}

void sub_271505690(void *a1, uint64_t a2, const void **a3, uint64_t a4, char a5)
{
  v8 = *(a2 + 240);
  v9 = v8;
  if ((a5 & 1) == 0)
  {
    std::mutex::lock((v8 + 24));
    v9 = *(a2 + 240);
  }

  v13 = *(v9 + 8);
  v11 = (v9 + 8);
  v12 = v13;
  if (!v13)
  {
    goto LABEL_49;
  }

  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = a3[1];
  }

  v17 = *(a3 + 12);
  v18 = v11;
  do
  {
    v19 = *(v12 + 55);
    if (v19 >= 0)
    {
      v20 = v12 + 4;
    }

    else
    {
      v20 = v12[4];
    }

    if (v19 >= 0)
    {
      v21 = *(v12 + 55);
    }

    else
    {
      v21 = v12[5];
    }

    if (v16 >= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v16;
    }

    v23 = memcmp(v20, v15, v22);
    if (v23)
    {
      if (v23 < 0)
      {
        goto LABEL_11;
      }

LABEL_24:
      v18 = v12;
      goto LABEL_12;
    }

    if (v21 != v16)
    {
      if (v21 < v16)
      {
LABEL_11:
        ++v12;
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    v24 = *(v12 + 28);
    v32 = v24 >= v17;
    v25 = v24 < v17;
    if (v32)
    {
      v18 = v12;
    }

    v12 += v25;
LABEL_12:
    v12 = *v12;
  }

  while (v12);
  if (v18 == v11)
  {
    goto LABEL_49;
  }

  v26 = *(v18 + 55);
  if (v26 >= 0)
  {
    v27 = v18 + 4;
  }

  else
  {
    v27 = v18[4];
  }

  if (v26 >= 0)
  {
    v28 = *(v18 + 55);
  }

  else
  {
    v28 = v18[5];
  }

  if (v28 >= v16)
  {
    v29 = v16;
  }

  else
  {
    v29 = v28;
  }

  v30 = memcmp(v15, v27, v29);
  if (v30)
  {
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_49:
    if ((atomic_load_explicit(&qword_28087B940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B940))
    {
      v42[0] = 2;
      v33[0] = 0;
      v33[1] = 0;
      v34 = 0;
      v36 = 270;
      strcpy(v35, "unknown client");
      v37 = 0;
      v38 = 0;
      v40 = 0;
      v41 = 0;
      v39 = 0;
      sub_27151A284(v42, v33);
    }

    v31 = *algn_28087B978;
    *a1 = qword_28087B970;
    a1[1] = v31;
    if (v31)
    {
LABEL_51:
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v32 = v16 >= v28;
    if (v16 == v28)
    {
      v32 = v17 >= *(v18 + 28);
    }

    if (!v32)
    {
      goto LABEL_49;
    }

LABEL_44:
    v31 = v18[9];
    *a1 = v18[8];
    a1[1] = v31;
    if (v31)
    {
      goto LABEL_51;
    }
  }

  if ((a5 & 1) == 0)
  {
    std::mutex::unlock((v8 + 24));
  }
}

void sub_2715058B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2711B039C(va);
  __cxa_guard_abort(&qword_28087B940);
  if ((v3 & 1) == 0)
  {
    std::mutex::unlock((v4 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_2715058E4()
{
  v4 = &unk_28810CA28;
  v5 = 1;
  v6 = &unk_28810CB78;
  operator new();
}

void sub_271505FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  std::mutex::unlock((v32 + 24));
  sub_271506144(&a32);
  sub_27173115C((v33 - 152));
  _Unwind_Resume(a1);
}

void sub_271506014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_271506144(va);
  sub_27173115C((v28 - 152));
  _Unwind_Resume(a1);
}

void sub_271506030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_271506084(va);
  sub_27173115C((v11 - 152));
  _Unwind_Resume(a1);
}

void sub_27150604C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715106E4(&a9);
  sub_27173115C((v9 - 152));
  _Unwind_Resume(a1);
}

char **sub_271506084(char **a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = a1[1];
      v4 = *a1;
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 1);
          if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }

          v3 -= 24;
        }

        while (v3 != v2);
        v4 = *a1;
      }

      a1[1] = v2;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t sub_271506144(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      v3 = *(a1 + 64);
      v4 = *(a1 + 56);
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 8);
          if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }

          v3 -= 16;
        }

        while (v3 != v2);
        v4 = *(a1 + 56);
      }

      *(a1 + 64) = v2;
      operator delete(v4);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 32);
      if (v7 != v6)
      {
        do
        {
          v7 -= 88;
          sub_27151111C(v7);
        }

        while (v7 != v6);
        v8 = *(a1 + 32);
      }

      *(a1 + 40) = v6;
      operator delete(v8);
    }
  }

  return a1;
}

uint64_t sub_27150628C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return (*(*v2 + 56))(v2, v5);
}

void sub_2715062E4(uint64_t a1, const void **a2, uint64_t a3, unsigned int a4)
{
  if (*(a1 + 200) == 1)
  {
    sub_271505690(&v29, *a1, a2, 0, 0);
    v7 = v29;
    sub_271847E00(a3, &v10);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(&v11, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    }

    else
    {
      v11 = v10;
    }

    v12 = 1;
    LOBYTE(v13) = 0;
    v17 = 0;
    v18 = 1;
    sub_271390244(v19, a4, &v11);
    v8 = *(a1 + 192);
    if (!v8)
    {
      sub_27112AFFC();
    }

    (*(*v8 + 48))(v8, v7, v19);
    if (v28 == 1)
    {
      if (v27 == 1)
      {
        if (v26 < 0)
        {
          operator delete(__p);
        }

        if (v24 < 0)
        {
          operator delete(v23);
        }
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20);
      }
    }

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

      if (v12 == 1 && SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    v9 = v30;
    if (v30)
    {
      if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void sub_2715064F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v29 - 64);
  _Unwind_Resume(a1);
}

void sub_271507CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271507FBC(uint64_t result)
{
  v1 = *(result + 8);
  *(result + 8) = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_271508018(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t *sub_271508090(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(v2 + 16) == 1)
  {
    v3 = *(**(v2 + 8) + 16);

    return v3();
  }

  else if ((atomic_load_explicit(&qword_28087B958, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_28087B958))
  {
    return &qword_28087B9A0;
  }

  else
  {
    qword_28087B9A0 = 0;
    unk_28087B9A8 = 0;
    __cxa_guard_release(&qword_28087B958);
    return &qword_28087B9A0;
  }
}

uint64_t *sub_27150813C(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *(**(a1 + 8) + 16);

    return v2();
  }

  else if (atomic_load_explicit(&qword_28087B958, memory_order_acquire))
  {
    return &qword_28087B9A0;
  }

  else
  {
    if (__cxa_guard_acquire(&qword_28087B958))
    {
      qword_28087B9A0 = 0;
      unk_28087B9A8 = 0;
      __cxa_guard_release(&qword_28087B958);
    }

    return &qword_28087B9A0;
  }
}

uint64_t sub_271508248(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 8);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return (*(*v2 + 56))(v2, v5);
}

void sub_2715082A8(void *a1)
{
  sub_271515404(a1);

  JUMPOUT(0x2743BF050);
}

void ***sub_2715082E0(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 17);
        v3 -= 5;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_271508358(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271508390(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *v1;
    *v1 = 0;
    if (v2)
    {
      v3 = sub_27174B42C(v2);
      MEMORY[0x2743BF050](v3, 0x1020C4014B85259);
    }

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271508408(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit11concurrency17NodeTaskSchedulerEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit11concurrency17NodeTaskSchedulerEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit11concurrency17NodeTaskSchedulerEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit11concurrency17NodeTaskSchedulerEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_27150846C(uint64_t a1)
{
  sub_27151040C(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715084A8(uint64_t a1)
{
  sub_271510144(a1);

  JUMPOUT(0x2743BF050);
}

void *sub_2715084E0(void *result)
{
  v1 = result[1];
  *result = &unk_2881164A0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_271508554(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2881164A0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27150860C(uint64_t result)
{
  *result = &unk_288116450;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_271508660(uint64_t a1)
{
  *a1 = &unk_288116450;
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

void sub_2715086D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v13 = v5;
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      v12 = v7;
      if (v7)
      {
        v8 = *(a2 + 8);
        *(a2 + 8) = 0;
        v10 = &unk_288116478;
        v11 = v8;
        (*(*v7 + 16))(v7, &v10);
        v9 = v11;
        v10 = &unk_288116478;
        v11 = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void sub_271508800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    (*(*a5 + 8))(a5, a2, a3);
  }

  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271508844(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_288116478;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715088FC(uint64_t result)
{
  *result = &unk_2881164C8;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_271508950(uint64_t a1)
{
  *a1 = &unk_2881164C8;
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

void sub_2715089C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 16))(v5);
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

void sub_271508AA4(uint64_t a1)
{
  sub_27150B9A4(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271508ADC(void *a1, std::__shared_weak_count_vtbl **a2)
{
  if ((*(*a1 + 48))(a1))
  {
    if (a1[9])
    {
      if (a1[18])
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/include/Kit/Concurrency/Channel/detail/Processor.h", 234, "scheduler_", 0xAuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_12;
      }

      v4 = qword_28087C408;
      v5 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4 = qword_28087C408;
      v5 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_23;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "scheduler_", 10, "", 0);
    }

    while (v4 != v5);
    if (byte_28087C430)
    {
LABEL_12:
      qword_28087C420(*algn_28087C428, "scheduler_", 10, "", 0);
      if (a1[18])
      {
LABEL_4:
        operator new();
      }

LABEL_13:
      v8 = a1[5];
      if (v8)
      {
        v9 = std::__shared_weak_count::lock(v8);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v11 = v9;
            (v9->__on_zero_shared)(v9, v10);
            std::__shared_weak_count::__release_weak(v11);
          }
        }
      }

      v12 = a2[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->~__shared_weak_count_0, 1uLL, memory_order_relaxed);
      }

      v13 = a2[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->~__shared_weak_count_0, 1uLL, memory_order_relaxed);
      }

      operator new();
    }

LABEL_23:
    abort();
  }
}

void sub_271509228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_2714D6590(va);
  sub_27150D10C(&a9);
  _Unwind_Resume(a1);
}

void sub_271509258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_2714D6590(v16 - 104);
  sub_27150CABC(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271509284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_27150BB80(va1);
  std::__shared_weak_count::__release_weak(v16);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715092A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  MEMORY[0x2743BF050](v17, 0x20C4093837F09, a3, a4, a5, a6, a7, a8);
  std::__shared_weak_count::__release_weak(v16);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715092DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__shared_weak_count::__release_weak(v16);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271509328(void *a1, std::__shared_weak_count_vtbl **a2, std::__assoc_sub_state **a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 48))(a1))
  {
    if (a1[9])
    {
      if (a1[18])
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/include/Kit/Concurrency/Channel/detail/Processor.h", 294, "scheduler_", 0xAuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_21;
      }

      v16 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_33;
      }
    }

    do
    {
      v19 = *v16;
      v18 = *(v16 + 8);
      v16 += 16;
      v19(v18, "scheduler_", 10, "", 0);
    }

    while (v16 != v17);
    if (byte_28087C430)
    {
LABEL_21:
      qword_28087C420(*algn_28087C428, "scheduler_", 10, "", 0);
      if (a1[18])
      {
LABEL_4:
        operator new();
      }

LABEL_22:
      v20 = a1[5];
      if (v20)
      {
        v21 = std::__shared_weak_count::lock(v20);
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v23 = v21;
            (v21->__on_zero_shared)(v21, v22);
            std::__shared_weak_count::__release_weak(v23);
          }
        }
      }

      v24 = a2[1];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->~__shared_weak_count_0, 1uLL, memory_order_relaxed);
      }

      v25 = a2[4];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->~__shared_weak_count_0, 1uLL, memory_order_relaxed);
      }

      operator new();
    }

LABEL_33:
    abort();
  }

  v28[0].__ptr_ = "Invalid operation. Interface is disabled for ";
  v28[1].__ptr_ = 45;
  v8 = a1[6];
  v7 = a1 + 6;
  v6 = v8;
  v9 = *(v7 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = v7[1];
  }

  else
  {
    v6 = v7;
  }

  v29 = v6;
  v30 = v9;
  sub_271131230(v28, v31, 0, 0, &v32);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v32;
  }

  else
  {
    v10 = v32.__r_.__value_.__r.__words[0];
  }

  std::runtime_error::runtime_error(&v26, v10);
  v26.__vftable = &unk_288116428;
  exception = __cxa_allocate_exception(0x10uLL);
  __cxa_init_primary_exception();
  v12 = std::runtime_error::runtime_error(exception, &v26);
  exception->__vftable = &unk_288116428;
  std::exception_ptr::__from_native_exception_pointer(&v27, v12, v13);
  v14 = *a3;
  if (!*a3)
  {
    sub_27150C8D8(3u);
  }

  std::exception_ptr::exception_ptr(v28, &v27);
  v15.__ptr_ = v28;
  std::__assoc_sub_state::set_exception(v14, v15);
  std::exception_ptr::~exception_ptr(v28);
  std::exception_ptr::~exception_ptr(&v27);
  std::runtime_error::~runtime_error(&v26);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_271509E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2714D6590(va);
  sub_27150E420(&a9);
  _Unwind_Resume(a1);
}

void sub_271509E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, std::runtime_error a22, std::exception_ptr a23, char a24, uint64_t a25, std::exception_ptr a26)
{
  sub_271396310(v26 + 16);
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271509F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_271509F7C(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/include/Kit/Concurrency/Channel/detail/Processor.h", 167, "scheduler_ != nullptr", 0x15uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "scheduler_ != nullptr", 21, "", 0);
        v1 = *(a1 + 72);
        goto LABEL_10;
      }
    }

    else
    {
      v3 = qword_28087C408;
      v4 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v6 = *v3;
      v5 = *(v3 + 8);
      v3 += 16;
      v6(v5, "scheduler_ != nullptr", 21, "", 0);
    }

    while (v3 != v4);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v7 = *v1;

  sub_27174ABCC(v7);
}

void sub_27150A0B4(std::__shared_weak_count **a1, uint64_t a2)
{
  if (a1[9])
  {
    goto LABEL_10;
  }

  v2 = a1;
  v3 = a2;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/include/Kit/Concurrency/Channel/detail/Processor.h", 181, "scheduler_", 0xAuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "scheduler_", 10, "", 0);
      a1 = v2;
      a2 = v3;
LABEL_10:
      v8 = a1[5];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      *(a2 + 8) = 0;
      operator new();
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_13;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "scheduler_", 10, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_13:
  abort();
}

void sub_27150A390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2714D6590(va);
  sub_27150EAC8(&a9);
  _Unwind_Resume(a1);
}

void sub_27150A3C0(void *a1)
{
  if (a1[9])
  {
    goto LABEL_10;
  }

  v1 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/include/Kit/Concurrency/Channel/detail/Processor.h", 202, "scheduler_", 0xAuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v2 = qword_28087C408, v3 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "scheduler_", 10, "", 0);
      a1 = v1;
LABEL_10:
      v6 = a1[5];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
      }

      operator new();
    }
  }

  else
  {
    v2 = qword_28087C408;
    v3 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_13;
    }
  }

  do
  {
    v5 = *v2;
    v4 = *(v2 + 8);
    v2 += 16;
    v5(v4, "scheduler_", 10, "", 0);
  }

  while (v2 != v3);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_13:
  abort();
}

void sub_27150A5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2714D6590(va);
  _Unwind_Resume(a1);
}

void sub_27150A5F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_27150A8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
  {
    sub_27150F674(&a9);
    _Unwind_Resume(a1);
  }

  (*(*v9 + 16))(v9, a2, a3, a4, a5, a6, a7, a8);
  sub_27150F674(&a9);
  _Unwind_Resume(a1);
}

void sub_27150A948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock(v9);
  sub_27150F674(&a9);
  _Unwind_Resume(a1);
}

void sub_27150AC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
  {
    sub_27150F674(&a9);
    _Unwind_Resume(a1);
  }

  (*(*v9 + 16))(v9, a2, a3, a4, a5, a6, a7, a8);
  sub_27150F674(&a9);
  _Unwind_Resume(a1);
}

void sub_27150ACB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock(v9);
  sub_27150F674(&a9);
  _Unwind_Resume(a1);
}

void sub_27150ACE8(uint64_t a1)
{
  sub_27150B9A4(a1 - 16);

  JUMPOUT(0x2743BF050);
}

void sub_27150AD4C(uint64_t a1)
{
  sub_27150B9A4(a1 - 24);

  JUMPOUT(0x2743BF050);
}

void sub_27150ADB0(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 1;
  v2 = &unk_28810CA28;
  v4 = &unk_28810CB78;
  operator new();
}

void sub_27150B3E4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27150B400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, char a16)
{
  if (a14 == 1)
  {
    sub_271396310(&a9);
    sub_27173115C(&a16);
    _Unwind_Resume(a1);
  }

  sub_27173115C(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_27150B450(uint64_t a1, char *a2)
{
  __src = 1;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v7, 4);
  sub_2717312C0(a1);
  sub_27173318C((a1 + 24), *(a1 + 32), a2, a2 + 4, 4);
  sub_27173318C((a1 + 24), *(a1 + 32), a2 + 4, a2 + 8, 4);
  sub_27173318C((a1 + 24), *(a1 + 32), a2 + 8, a2 + 12, 4);
  sub_27173318C((a1 + 24), *(a1 + 32), a2 + 12, a2 + 16, 4);
  sub_27173318C((a1 + 24), *(a1 + 32), a2 + 16, a2 + 20, 4);
  sub_27173318C((a1 + 24), *(a1 + 32), a2 + 20, a2 + 24, 4);
  v4 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v4 + 10) = *(a1 + 32) - v4 - 18;
  *(a1 + 56) -= 8;
  return a1;
}

uint64_t sub_27150B564(uint64_t a1, uint64_t a2)
{
  LODWORD(__src) = 2;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 4, 4);
  sub_2717312C0(a1);
  v4 = *(a2 + 31);
  if (v4 < 0)
  {
    v4 = *(a2 + 16);
  }

  __src = v4;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, v16, 8);
  v5 = *(a2 + 31);
  if (v5 >= 0)
  {
    v6 = (a2 + 8);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 31);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  sub_27173318C((a1 + 24), *(a1 + 32), v6, &v6[v7], v7);
  sub_27173318C((a1 + 24), *(a1 + 32), (a2 + 32), (a2 + 36), 4);
  v8 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v8 + 10) = *(a1 + 32) - v8 - 18;
  *(a1 + 56) -= 8;
  if (*(a2 + 56) > 1u)
  {
    sub_2711308D4();
  }

  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  __src = &unk_28810A5F8;
  *v16 = v9;
  v17 = (*(*v9 + 16))(v9);
  sub_27173318C((a1 + 24), *(a1 + 32), &v17, &v18, 4);
  v12 = v17;
  sub_2717312C0(a1);
  result = (*(**v16 + 32))(*v16, a1, v12);
  v14 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v14 + 10) = *(a1 + 32) - v14 - 18;
  *(a1 + 56) -= 8;
  return result;
}

char ***sub_27150B798(char ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    std::mutex::~mutex((v1 + 7));
    if (*(v1 + 48) == 1)
    {
      v2 = *v1;
      if (*v1)
      {
        v3 = v1[1];
        v4 = *v1;
        if (v3 != v2)
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
          v4 = *v1;
        }

        v1[1] = v2;
        operator delete(v4);
      }
    }

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t *sub_27150B89C(uint64_t *a1)
{
  if (a1[6])
  {
    v2 = a1 + 4;
    v3 = a1[5];
    v4 = *(a1[4] + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    a1[6] = 0;
    if (v3 != a1 + 4)
    {
      do
      {
        v6 = v3[1];
        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  if (a1[3])
  {
    v7 = a1[2];
    v8 = *(a1[1] + 8);
    v9 = *v7;
    *(v9 + 8) = v8;
    *v8 = v9;
    a1[3] = 0;
    if (v7 != a1 + 1)
    {
      do
      {
        v10 = v7[1];
        (*v7[2])();
        operator delete(v7);
        v7 = v10;
      }

      while (v10 != a1 + 1);
    }
  }

  v11 = *a1;
  *a1 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return a1;
}

uint64_t sub_27150B9A4(uint64_t a1)
{
  *a1 = &unk_288116280;
  *(a1 + 16) = &unk_2881162F8;
  *(a1 + 24) = &unk_288116338;
  sub_27150B798((a1 + 144));
  if (*(a1 + 136))
  {
    v2 = *(a1 + 128);
    v3 = *(*(a1 + 120) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 136) = 0;
    if (v2 != (a1 + 120))
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != (a1 + 120));
    }
  }

  if (*(a1 + 112))
  {
    v6 = *(a1 + 104);
    v7 = *(*(a1 + 96) + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    *(a1 + 112) = 0;
    if (v6 != (a1 + 96))
    {
      do
      {
        v9 = v6[1];
        (*v6[2])();
        operator delete(v6);
        v6 = v9;
      }

      while (v9 != (a1 + 96));
    }
  }

  v10 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a1 + 80);
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (*(a1 + 71) < 0)
  {
LABEL_12:
    operator delete(*(a1 + 48));
  }

LABEL_13:
  v12 = *(a1 + 40);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  return a1;
}

std::mutex ***sub_27150BB80(std::mutex ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    std::mutex::unlock(*v1);
    MEMORY[0x2743BF050](v1, 0x20C4093837F09);
    return v2;
  }

  return result;
}

void sub_27150BBF4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27150BC48(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void *sub_27150BD20(void *a1)
{
  *a1 = &unk_2881085A0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_27150BD78(void *a1)
{
  *a1 = &unk_2881085A0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743BF050);
}

void *sub_27150BE7C(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881085A0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 44) = 0;
  *(a2 + 41) = 0;
  return result;
}

void sub_27150BED4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_27150BF24(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(__p);
}

void sub_27150BF70(void *a1)
{
  v12 = 0;
  v2 = a1[4];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v12 = v3;
    if (v3)
    {
      v4 = a1[2];
      v5 = a1[3];
      v11 = 0;
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = 0;
  v11 = 0;
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_7:
  v6 = std::__shared_weak_count::lock(v4);
  v11 = v6;
  if (v6)
  {
    v7 = a1[1];
    v10 = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
  v10 = 0;
  if (v3)
  {
LABEL_11:
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_12:
  if (v7 && v5)
  {
    LOBYTE(v13) = 0;
    v14 = 0;
    sub_27150C248((v7 + 88), v5, &v13);
  }

  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v8 = v11;
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = v11;
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v9 = v12;
    if (!v12)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = v12;
  if (!v12)
  {
    return;
  }

LABEL_23:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_27150C1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27112F828(&a9);
  sub_27112F828(&a11);
  sub_27112F828(&a13);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27150C1D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE25EnqueueMessageAndDispatchIZNKS6_4SendERKS5_EUlT_T0_E_EEvS9_SA_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE25EnqueueMessageAndDispatchIZNKS6_4SendERKS5_EUlT_T0_E_EEvS9_SA_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE25EnqueueMessageAndDispatchIZNKS6_4SendERKS5_EUlT_T0_E_EEvS9_SA_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE25EnqueueMessageAndDispatchIZNKS6_4SendERKS5_EUlT_T0_E_EEvS9_SA_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_27150C248(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a1;
  if (!v6)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/include/Kit/Concurrency/Channel/detail/ProcessorInputMessageHandlingStrategy.h", 228, "callable_", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "callable_", 9, "", 0);
        v6 = *a1;
        goto LABEL_10;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v7)(*(v7 + 8), "callable_", 9, "", 0);
      v7 += 16;
    }

    while (v7 != v8);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_20:
    abort();
  }

LABEL_10:
  v14 = (*(*v6 + 16))(v6, a2);
  v9 = a1 + 1;
  for (i = a1[2]; i != v9; i = *(i + 8))
  {
    (*(*(i + 16) + 16))(i + 16, &v14);
  }

  if (a3[1])
  {
    v11 = *a3;
    if (!*a3)
    {
      sub_27150C8D8(3u);
    }

    std::mutex::lock((v11 + 24));
    if ((*(v11 + 136) & 1) != 0 || (v13.__ptr_ = 0, v12 = *(v11 + 16), std::exception_ptr::~exception_ptr(&v13), v12))
    {
      sub_27150C8D8(2u);
    }

    *(v11 + 140) = v14;
    *(v11 + 136) |= 5u;
    std::condition_variable::notify_all((v11 + 88));
    std::mutex::unlock((v11 + 24));
  }
}

void sub_27150C55C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x27150C57CLL);
}

uint64_t sub_27150C588(uint64_t a1, const char *a2, const char *a3)
{
  v7 = 0;
  v8 = v6;
  v9 = "Caught unexpected exception of type: ";
  v10 = v6;
  v11 = "Caught unexpected exception of type: ";
  v12 = "Caught unexpected exception of type: ";
  v13 = &v8;
  sub_271359634(&v13);
  if (*a2)
  {
    v8 = v6;
    v9 = a2;
    v10 = v6;
    v11 = a2;
    v12 = a2;
    if (v7 != -1)
    {
      v13 = &v8;
      (off_288132B18[v7])(&v13, v6);
      goto LABEL_6;
    }

LABEL_18:
    sub_2711308D4();
  }

  v8 = v6;
  v9 = "nullptr";
  v10 = v6;
  v11 = "nullptr";
  v12 = "nullptr";
  if (v7 == -1)
  {
    goto LABEL_18;
  }

  v13 = &v8;
  (*(&off_288132B00 + v7))(&v13, v6);
LABEL_6:
  v8 = v6;
  v9 = "\n";
  v10 = v6;
  v11 = "\n";
  v12 = "\n";
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v13 = &v8;
  (*(&off_288132B30 + v7))(&v13, v6);
  v8 = v6;
  v9 = "message: ";
  v10 = v6;
  v11 = "message: ";
  v12 = "message: ";
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v13 = &v8;
  (*(&off_288132B48 + v7))(&v13, v6);
  if (*a3)
  {
    v8 = v6;
    v9 = a3;
    v10 = v6;
    v11 = a3;
    v12 = a3;
    if (v7 != -1)
    {
      v13 = &v8;
      (off_288132B18[v7])(&v13, v6);
      goto LABEL_13;
    }

LABEL_21:
    sub_2711308D4();
  }

  v8 = v6;
  v9 = "nullptr";
  v10 = v6;
  v11 = "nullptr";
  v12 = "nullptr";
  if (v7 == -1)
  {
    goto LABEL_21;
  }

  v13 = &v8;
  (*(&off_288132B00 + v7))(&v13, v6);
LABEL_13:
  v8 = v6;
  v9 = "\n";
  v10 = v6;
  v11 = "\n";
  v12 = "\n";
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v13 = &v8;
  (*(&off_288132B30 + v7))(&v13, v6);
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v8 = &v13;
  result = (off_288132AE8[v7])(&v8, v6);
  if (v7 != -1)
  {
    return (off_288132AD0[v7])(&v8, v6);
  }

  return result;
}

void sub_27150C8D8(unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x2743BE5F0](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x277D82710], MEMORY[0x277D82648]);
}

void *sub_27150C940(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v12.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v12);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x2743BE5F0](v10, 4, v4);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v6 = std::logic_error::logic_error(exception, v10);
        exception->__vftable = (MEMORY[0x277D82838] + 16);
        exception[1] = v10[1];
        std::exception_ptr::__from_native_exception_pointer(&v11, v6, v7);
        v8.__ptr_ = &v11;
        std::__assoc_sub_state::set_exception(v1, v8);
        std::exception_ptr::~exception_ptr(&v11);
        MEMORY[0x2743BE600](v10);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (*(*v1 + 16))(v1);
      return v9;
    }
  }

  return result;
}

uint64_t sub_27150CABC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void *sub_27150CAF8(void *a1)
{
  *a1 = &unk_2881084F0;
  v2 = a1[7];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_27150CBD4(void *a1)
{
  *a1 = &unk_2881084F0;
  v2 = a1[7];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x2743BF050);
}

void *sub_27150CD8C(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881084F0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = result[6];
  v5 = result[7];
  a2[5] = off_28810C940;
  a2[6] = v6;
  a2[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_27150CE14(void *a1)
{
  v2 = a1[7];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1[2];
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = a1[2];
    if (!v4)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v4);
}

void sub_27150CEF0(void *__p)
{
  v2 = __p[7];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[4];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void sub_27150CFC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v9 = v3;
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      v8 = v5;
      if (v5)
      {
        LOBYTE(v6) = 0;
        v7 = 0;
        sub_27150C248((v5 + 88), a1 + 24, &v6);
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

void sub_27150D080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27150D094(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE4SendERKS5_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE4SendERKS5_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE4SendERKS5_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE4SendERKS5_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_27150D10C(void *a1)
{
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_27150D210(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105778;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void *sub_27150D270(void *a1)
{
  *a1 = &unk_288108548;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_27150D310(void *a1)
{
  *a1 = &unk_288108548;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x2743BF050);
}

void *sub_27150D46C(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_288108548;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = result[6];
  a2[5] = result[5];
  a2[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_27150D4D4(void *a1)
{
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[2];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_27150D56C(void *__p)
{
  v2 = __p[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void sub_27150D600(void *a1)
{
  v24 = 0;
  v2 = a1[4];
  if (!v2)
  {
    v3 = 0;
LABEL_6:
    v5 = 0;
    v23 = 0;
    v4 = a1[2];
    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v3 = std::__shared_weak_count::lock(v2);
  v24 = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = a1[2];
  v5 = a1[3];
  v23 = 0;
  if (!v4)
  {
LABEL_10:
    v7 = 0;
    v22 = 0;
    if (!v3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_7:
  v6 = std::__shared_weak_count::lock(v4);
  v23 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = a1[1];
  v22 = v6;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  if (v3)
  {
LABEL_11:
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_12:
  if (v7)
  {
    if (v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = a1[5];
    std::runtime_error::runtime_error(&v27, "Processor is no longer available.");
    v27.__vftable = &unk_288116428;
    exception = __cxa_allocate_exception(0x10uLL);
    __cxa_init_primary_exception();
    v11 = std::runtime_error::runtime_error(exception, &v27);
    exception->__vftable = &unk_288116428;
    std::exception_ptr::__from_native_exception_pointer(&v28, v11, v12);
    v13 = *v9;
    if (!*v9)
    {
      sub_27150C8D8(3u);
    }

    std::exception_ptr::exception_ptr(&v25, &v28);
    v14.__ptr_ = &v25;
    std::__assoc_sub_state::set_exception(v13, v14);
    std::exception_ptr::~exception_ptr(&v25);
    std::exception_ptr::~exception_ptr(&v28);
    std::runtime_error::~runtime_error(&v27);
    if (v5)
    {
LABEL_14:
      v8 = a1[5];
      v25.__vftable = *v8;
      *v8 = 0;
      LOBYTE(v25.__imp_.__imp_) = 1;
      sub_27150C248((v7 + 88), v5, &v25);
      sub_27150C940(&v25);
      if (!v3)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  v15 = a1[5];
  std::runtime_error::runtime_error(&v25, "Message was dropped.");
  v25.__vftable = &unk_288116428;
  v16 = __cxa_allocate_exception(0x10uLL);
  __cxa_init_primary_exception();
  v17 = std::runtime_error::runtime_error(v16, &v25);
  v16->__vftable = &unk_288116428;
  std::exception_ptr::__from_native_exception_pointer(&v26, v17, v18);
  v19 = *v15;
  if (!*v15)
  {
    sub_27150C8D8(3u);
  }

  std::exception_ptr::exception_ptr(&v29, &v26);
  v20.__ptr_ = &v29;
  std::__assoc_sub_state::set_exception(v19, v20);
  std::exception_ptr::~exception_ptr(&v29);
  std::exception_ptr::~exception_ptr(&v26);
  std::runtime_error::~runtime_error(&v25);
  if (v3)
  {
LABEL_20:
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

LABEL_22:
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
    v21 = v24;
    if (!v24)
    {
      return;
    }
  }

  else
  {
    v21 = v24;
    if (!v24)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }
}

void sub_27150D9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::runtime_error a18, std::exception_ptr a19)
{
  std::exception_ptr::~exception_ptr((v19 - 56));
  std::exception_ptr::~exception_ptr(&a19);
  std::runtime_error::~runtime_error(&a18);
  sub_27112F828(&a10);
  sub_27112F828(&a12);
  sub_27112F828(&a14);
  sub_27112F828(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_27150DA78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE25EnqueueMessageAndDispatchIZNKS6_7ProcessERKS5_NSt3__17promiseIbEEEUlT_T0_E_EEvS9_SD_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE25EnqueueMessageAndDispatchIZNKS6_7ProcessERKS5_NSt3__17promiseIbEEEUlT_T0_E_EEvS9_SD_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE25EnqueueMessageAndDispatchIZNKS6_7ProcessERKS5_NSt3__17promiseIbEEEUlT_T0_E_EEvS9_SD_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE25EnqueueMessageAndDispatchIZNKS6_7ProcessERKS5_NSt3__17promiseIbEEEUlT_T0_E_EEvS9_SD_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_27150DAF0(void *a1)
{
  v2 = a1[5];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *sub_27150DB74(void *a1)
{
  *a1 = &unk_288108498;
  v2 = a1[9];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[7];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[4];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_27150DC98(void *a1)
{
  *a1 = &unk_288108498;
  v2 = a1[9];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[7];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[4];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  JUMPOUT(0x2743BF050);
}

void *sub_27150DEB0(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_288108498;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = result[6];
  v5 = result[7];
  a2[5] = off_28810C940;
  a2[6] = v6;
  a2[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = result[9];
  a2[8] = result[8];
  a2[9] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_27150DF50(void *a1)
{
  v2 = a1[9];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[7];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[4];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = a1[2];
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = a1[2];
    if (!v5)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_27150E074(void *__p)
{
  v2 = __p[9];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[7];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = __p[4];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = __p[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(__p);
}

void sub_27150E18C(void *a1)
{
  v14 = 0;
  v15 = 0;
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v15 = v3;
    if (v3)
    {
      v4 = a1[1];
      v14 = v4;
      if (v4)
      {
        v5 = a1[8];
        v13.__vftable = *v5;
        *v5 = 0;
        LOBYTE(v13.__imp_.__imp_) = 1;
        sub_27150C248((v4 + 88), (a1 + 3), &v13);
        sub_27150C940(&v13);
LABEL_8:
        if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v3->__on_zero_shared)(v3);
          std::__shared_weak_count::__release_weak(v3);
        }

        return;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = a1[8];
  std::runtime_error::runtime_error(&v13, "Invalid operation. Processor is released.");
  v13.__vftable = &unk_288116428;
  exception = __cxa_allocate_exception(0x10uLL);
  __cxa_init_primary_exception();
  v8 = std::runtime_error::runtime_error(exception, &v13);
  exception->__vftable = &unk_288116428;
  std::exception_ptr::__from_native_exception_pointer(&v12, v8, v9);
  v10 = *v6;
  if (!*v6)
  {
    sub_27150C8D8(3u);
  }

  std::exception_ptr::exception_ptr(&v16, &v12);
  v11.__ptr_ = &v16;
  std::__assoc_sub_state::set_exception(v10, v11);
  std::exception_ptr::~exception_ptr(&v16);
  std::exception_ptr::~exception_ptr(&v12);
  std::runtime_error::~runtime_error(&v13);
  if (v3)
  {
    goto LABEL_8;
  }
}

void sub_27150E344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27150C940(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27150E360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::runtime_error a10, uint64_t a11, uint64_t a12, std::exception_ptr a13)
{
  std::exception_ptr::~exception_ptr(&a13);
  std::exception_ptr::~exception_ptr(&a9);
  std::runtime_error::~runtime_error(&a10);
  sub_27112F828(&a11);
  _Unwind_Resume(a1);
}

void sub_27150E394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27150E3A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE7ProcessERKS5_NSt3__17promiseIbEEEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE7ProcessERKS5_NSt3__17promiseIbEEEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE7ProcessERKS5_NSt3__17promiseIbEEEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE7ProcessERKS5_NSt3__17promiseIbEEEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_27150E420(void *a1)
{
  v2 = a1[8];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[6];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[3];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void *sub_27150E528(void *a1)
{
  *a1 = &unk_288108700;
  v2 = a1[4];
  a1[3] = &unk_288116478;
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_27150E5C0(void *a1)
{
  *a1 = &unk_288108700;
  v2 = a1[4];
  a1[3] = &unk_288116478;
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27150E738(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_27150E758(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_288108700;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = &unk_288116478;
  return (*(**(a1 + 32) + 16))(*(a1 + 32));
}

void sub_27150E7F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_27150E810(void *a1)
{
  v2 = a1[4];
  a1[3] = &unk_288116478;
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_27150E8A0(void *__p)
{
  v2 = __p[4];
  __p[3] = &unk_288116478;
  __p[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = __p[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(__p);
}

void sub_27150E92C(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (a1[1])
      {
        operator new();
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

uint64_t sub_27150EA50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE9SubscribeENS1_12ChannelInputIbEEEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE9SubscribeENS1_12ChannelInputIbEEEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE9SubscribeENS1_12ChannelInputIbEEEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE9SubscribeENS1_12ChannelInputIbEEEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_27150EAC8(void *a1)
{
  v2 = a1[3];
  a1[2] = &unk_288116478;
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_27150EB44(uint64_t result)
{
  *result = &unk_288108758;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_27150EB98(uint64_t a1)
{
  *a1 = &unk_288108758;
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27150EC7C(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_288108758;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void sub_27150ECBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_27150ECCC(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void sub_27150ED10(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*(a1 + 8))
      {
        operator new();
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

uint64_t sub_27150EE00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE15AddErrorHandlerENS1_12ChannelInputIvEEEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE15AddErrorHandlerENS1_12ChannelInputIvEEEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE15AddErrorHandlerENS1_12ChannelInputIvEEEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE15AddErrorHandlerENS1_12ChannelInputIvEEEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_27150EE78(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_27150EEE4(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27150EF64(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v1 = *(a1 + 144);
    if (v1)
    {
      *(a1 + 152) = v1;
      v2 = a1;
      operator delete(v1);
      a1 = v2;
    }
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_27150EFD4(uint64_t result)
{
  *result = &unk_2881085F8;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_27150F028(uint64_t a1)
{
  *a1 = &unk_2881085F8;
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

void *sub_27150F10C(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881085F8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_27150F14C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_27150F15C(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void sub_27150F1A0(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    __p[4] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = a1[1];
      __p[3] = v5;
      if (v5)
      {
        v6 = a1[3];
        v7 = v5[14];
        if (v7)
        {
          if (!(v7 >> 61))
          {
            operator new();
          }

          sub_2711EB2F8();
        }

        v8 = v5[13];
        if (v8 != v5 + 12)
        {
          (*(**(v8 + 24) + 48))(*(v8 + 24));
          operator new();
        }

        memset(__p, 0, 24);
        if (!*v6)
        {
          sub_27150C8D8(3u);
        }

        sub_27150F4DC(*v6, __p);
        if (__p[0])
        {
          operator delete(__p[0]);
        }
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

void sub_27150F41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27150F430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27150F464(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE16OutputHandlerIDsEvEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE16OutputHandlerIDsEvEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE16OutputHandlerIDsEvEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE16OutputHandlerIDsEvEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_27150F4DC(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    sub_27150C8D8(2u);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *a2;
  *(a1 + 160) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void sub_27150F594(uint64_t a1, uint64_t a2)
{
  __lk.__m_ = (a2 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a2 + 24));
  std::__assoc_sub_state::__sub_wait(a2, &__lk);
  v4 = *(a2 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a2 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a1 = *(a2 + 144);
    *(a1 + 16) = *(a2 + 160);
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 144) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_27150F644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_27150F674(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v12.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v12);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x2743BE5F0](v10, 4, v4);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v6 = std::logic_error::logic_error(exception, v10);
        exception->__vftable = (MEMORY[0x277D82838] + 16);
        exception[1] = v10[1];
        std::exception_ptr::__from_native_exception_pointer(&v11, v6, v7);
        v8.__ptr_ = &v11;
        std::__assoc_sub_state::set_exception(v1, v8);
        std::exception_ptr::~exception_ptr(&v11);
        MEMORY[0x2743BE600](v10);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (*(*v1 + 16))(v1);
      return v9;
    }
  }

  return result;
}

uint64_t sub_27150F7CC(uint64_t result)
{
  *result = &unk_288108650;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_27150F820(uint64_t a1)
{
  *a1 = &unk_288108650;
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

void *sub_27150F904(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_288108650;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_27150F944(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_27150F954(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void sub_27150F998(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v8 = v3;
    if (v3)
    {
      v4 = v3;
      if (a1[1])
      {
        v5 = a1[3];
        memset(__p, 0, sizeof(__p));
        if (!*v5)
        {
          sub_27150C8D8(3u);
        }

        sub_27150F4DC(*v5, __p);
        if (__p[0])
        {
          operator delete(__p[0]);
        }
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

void sub_27150FA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27150FA94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE15ErrorHandlerIDsEvEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE15ErrorHandlerIDsEvEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE15ErrorHandlerIDsEvEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE15ErrorHandlerIDsEvEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_27150FB10(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27150FB48(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_27150FB78(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN4cv3d3kit11concurrency6detail9ProcessorINS2_3viz11ContextDataEbvbLb0EEEE27__shared_ptr_default_deleteIS8_S8_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN4cv3d3kit11concurrency6detail9ProcessorINS2_3viz11ContextDataEbvbLb0EEEE27__shared_ptr_default_deleteIS8_S8_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN4cv3d3kit11concurrency6detail9ProcessorINS2_3viz11ContextDataEbvbLb0EEEE27__shared_ptr_default_deleteIS8_S8_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN4cv3d3kit11concurrency6detail9ProcessorINS2_3viz11ContextDataEbvbLb0EEEE27__shared_ptr_default_deleteIS8_S8_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27150FBD8(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_27150FC10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

void sub_27150FCD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 32))(v5);
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

void sub_27150FDB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

std::__shared_weak_count *sub_27150FE98(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    if (result)
    {
      v3 = result;
      result = *(a1 + 8);
      if (result)
      {
        result = (result->__vftable[1].~__shared_weak_count_0)(result);
      }

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

std::__shared_weak_count *sub_27150FF74(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    if (result)
    {
      v3 = result;
      result = *(a1 + 8);
      if (result)
      {
        result = (result->__get_deleter)(result);
      }

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

void sub_271510050(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        (*(*v7 + 16))(v7, a2);
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

uint64_t sub_271510144(uint64_t a1)
{
  *a1 = &unk_288116260;
  v2 = (a1 + 72);
  if (*(a1 + 72))
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v4 = *(a1 + 80);
      *v2 = 0;
      *(a1 + 80) = 0;
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }

      while (v3->__shared_owners_ != -1)
      {
        sched_yield();
      }
    }

    else
    {
      *v2 = 0;
      *(a1 + 80) = 0;
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      sub_27174ABCC(*v5);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  *(a1 + 144) = &unk_2881164C8;
  v6 = *(a1 + 160);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  *(a1 + 120) = &unk_288116450;
  v7 = *(a1 + 136);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(a1 + 112);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(a1 + 96);
  *(a1 + 88) = &unk_2881164A0;
  *(a1 + 96) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 80);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(a1 + 64);
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_31;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (*(a1 + 55) < 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_31:
  operator delete(*(a1 + 8));
  return a1;
}

uint64_t *sub_2715103B8(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_271510144(v2);
    MEMORY[0x2743BF050](v4, 0x10B2C4085F70915);
    return v3;
  }

  return v1;
}

uint64_t sub_27151040C(uint64_t a1)
{
  *a1 = &unk_288116408;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    v3 = sub_271510144(v2);
    MEMORY[0x2743BF050](v3, 0x10B2C4085F70915);
  }

  v4 = *(a1 + 64);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v5)
  {
    v6 = sub_271510144(v5);
    MEMORY[0x2743BF050](v6, 0x10B2C4085F70915);
  }

  v7 = *(a1 + 64);
  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_15;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (*(a1 + 55) < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_15:
  operator delete(*(a1 + 8));
  return a1;
}

void *sub_27151056C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 40);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    sub_271510610(v1 + 8, *(v1 + 16));
    MEMORY[0x2743BF050](v1, 0x1020C401722722ELL);
    return v2;
  }

  return result;
}

void sub_271510610(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_271510610(a1, *a2);
    sub_271510610(a1, *(a2 + 8));
    v4 = *(a2 + 64);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
LABEL_5:
        v5 = a2;

LABEL_7:
        operator delete(v5);
        return;
      }
    }

    else if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(*(a2 + 32));
    v5 = a2;

    goto LABEL_7;
  }
}

void ***sub_2715106E4(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v4 -= 24;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

_BYTE *sub_2715107A8(_BYTE *result, uint64_t *a2)
{
  v2 = result;
  v17 = *MEMORY[0x277D85DE8];
  if (*(a2 + 24) == 1)
  {
    v3 = *a2;
    v4 = a2[1];
    v11 = 0;
    v10 = 0uLL;
    if (v4 != v3)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) <= 0x2E8BA2E8BA2E8BALL)
      {
        v15 = &v10;
        operator new();
      }

      sub_271135560();
    }

    v9 = v10;
    *__p = v10;
    v5 = v11;
    v13 = v11;
    v6 = sub_27139B104(0);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v7 = *v6;
    v8 = v6[1];
    *&v10 = &v14;
    BYTE8(v10) = 0;
    if (v8 != v7)
    {
      if (((v8 - v7) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_271135560();
    }

    result = 0;
    *v2 = v9;
    *(v2 + 2) = v5;
    *(v2 + 3) = 0;
    *(v2 + 4) = 0;
    *(v2 + 5) = 0;
    v2[48] = 1;
  }

  else
  {
    *result = 0;
    result[48] = 0;
  }

  return result;
}

void sub_271510E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, char *);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  sub_2715110C8(va1);
  sub_271510F0C(va);
  _Unwind_Resume(a1);
}

void sub_271510EF0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_271120E50(a1);
}

char **sub_271510F0C(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 88;
        sub_27151111C(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_271510F70(uint64_t *result, void *a2)
{
  v3 = *result;
  v4 = result[1];
  v5 = a2[1] + *result - v4;
  if (v4 != *result)
  {
    v13 = result;
    v6 = 0;
    do
    {
      v7 = v5 + v6;
      v8 = v3 + v6;
      v9 = *(v3 + v6 + 8);
      *(v7 + 24) = *(v3 + v6 + 24);
      *(v7 + 8) = v9;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 8) = 0;
      *(v7 + 32) = *(v3 + v6 + 32);
      *(v5 + v6 + 40) = 0;
      *(v7 + 56) = -1;
      v10 = *(v3 + v6 + 56);
      if (v10 != -1)
      {
        v14 = v5 + v6 + 40;
        (off_288132AC0[v10])(&v14, v8 + 40);
        *(v7 + 56) = v10;
      }

      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 64) = *(v8 + 64);
      *(v7 + 80) = *(v8 + 80);
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      v6 += 88;
    }

    while (v3 + v6 != v4);
    do
    {
      sub_27151111C(v3);
      v3 += 88;
    }

    while (v3 != v4);
    result = v13;
    v3 = *v13;
  }

  a2[1] = v5;
  *result = v5;
  result[1] = v3;
  a2[1] = v3;
  v11 = result[1];
  result[1] = a2[2];
  a2[2] = v11;
  v12 = result[2];
  result[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t sub_2715110C8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    sub_27151111C(i - 88);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_27151111C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 64);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 64);
    }

    *(a1 + 72) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 56);
  if (v6 != -1)
  {
    (off_288132AB0[v6])(&v7, a1 + 40);
  }

  *(a1 + 56) = -1;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void sub_271511244(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 56);
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    goto LABEL_27;
  }

  v7 = v1[1];
  v2[6] = v3 + 4;
  sub_27173170C(v2);
  sub_2714A815C(&v22, v2, (v7 + 4));
  v9 = v2[6];
  v8 = v2[7];
  if (v8 <= v9)
  {
LABEL_26:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
LABEL_27:
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v10 = *(v2[3] + v9);
  v11 = v9 + 1;
  v2[6] = v11;
  if (v10)
  {
    if ((*(v7 + 176) & 1) == 0)
    {
      v12 = sub_27139B104(0);
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 0;
      sub_27139A608(v7 + 56, v12);
      *(v7 + 144) = 0;
      *(v7 + 168) = 0;
      *(v7 + 176) = 1;
      v11 = v2[6];
      v8 = v2[7];
    }

    v5 = v8 >= v11;
    v13 = v8 - v11;
    if (!v5)
    {
      v13 = 0;
    }

    if (v13 > 3)
    {
      v14 = *(v2[3] + v11);
      v2[6] = v11 + 4;
      sub_27173170C(v2);
      sub_2717318E8(v2, v7 + 32);
      sub_271511504(v2, v7 + 56);
      if (v14 < 2)
      {
LABEL_23:
        v17 = v2[12];
        v18 = v2[9];
        v2[6] = *(v17 - 8) + *(v18 - 8) + 8;
        v2[9] = v18 - 8;
        v2[12] = v17 - 8;
        goto LABEL_24;
      }

      v15 = v2[6];
      if (v2[7] > v15)
      {
        v16 = *(v2[3] + v15);
        v2[6] = v15 + 1;
        if (v16)
        {
          if ((*(v7 + 168) & 1) == 0)
          {
            *(v7 + 144) = 0;
            *(v7 + 152) = 0;
            *(v7 + 160) = 0;
            *(v7 + 168) = 1;
          }

          sub_2717318E8(v2, v7 + 144);
        }

        else if (*(v7 + 168))
        {
          if (*(v7 + 167) < 0)
          {
            operator delete(*(v7 + 144));
          }

          *(v7 + 168) = 0;
        }

        goto LABEL_23;
      }
    }

    goto LABEL_26;
  }

  if (*(v7 + 176))
  {
    sub_2713A1844(v7 + 32);
    *(v7 + 176) = 0;
  }

LABEL_24:
  v19 = v2[12];
  v20 = v2[9];
  v2[6] = *(v19 - 8) + *(v20 - 8) + 8;
  v2[9] = v20 - 8;
  v2[12] = v19 - 8;
}

void sub_2715114C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void sub_271511504(void *a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v8 = *(a1[3] + v2);
  a1[6] = v2 + 4;
  if (v8 <= 1)
  {
    sub_27139A124(&v40, (a2 + 64));
    sub_271511A2C(a1, &v41);
    sub_27139A288(&v40);
    if (v44)
    {
      sub_2711308D4();
    }

    v16 = v43;
    v33 = &unk_28810A5B0;
    v34 = v43;
    v17 = a1[6];
    v18 = a1[7];
    v4 = v18 >= v17;
    v19 = v18 - v17;
    if (!v4)
    {
      v19 = 0;
    }

    if (v19 <= 3)
    {
      v31 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v31, "Not enough data to read");
      v31->__vftable = (MEMORY[0x277D828E8] + 16);
      __cxa_throw(v31, off_279E2F400, MEMORY[0x277D825F8]);
    }

    v20 = *(a1[3] + v17);
    a1[6] = v17 + 4;
    (*(*v16 + 40))(v16, a1, v20);
    sub_2713A0DC8(&v33, &v40);
    sub_2713A0F0C(a2, &v33);
    v21 = __p;
    if (__p)
    {
      v22 = v39;
      v23 = __p;
      if (v39 != __p)
      {
        do
        {
          v24 = *(v22 - 1);
          if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
          }

          v22 -= 16;
        }

        while (v22 != v21);
        v23 = __p;
      }

      v39 = v21;
      operator delete(v23);
    }

    if (v37 != -1)
    {
      (off_288132AB0[v37])(&v32, &v36);
    }

    v37 = -1;
    if (v35 < 0)
    {
      operator delete(v34);
    }

    v25 = v45;
    if (v45)
    {
      v26 = v46;
      v27 = v45;
      if (v46 != v45)
      {
        do
        {
          v28 = *(v26 - 1);
          if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v28->__on_zero_shared)(v28);
            std::__shared_weak_count::__release_weak(v28);
          }

          v26 -= 16;
        }

        while (v26 != v25);
        v27 = v45;
      }

      v46 = v25;
      operator delete(v27);
    }

    if (v44 != -1)
    {
      (off_288132AB0[v44])(&v33, &v43);
    }

    v44 = -1;
    if (v42 < 0)
    {
      operator delete(v41);
    }
  }

  else
  {
    sub_27173170C(a1);
    sub_271511A2C(a1, a2 + 8);
    sub_27139ABFC(a2);
    if (*(a2 + 56))
    {
      sub_2711308D4();
    }

    v9 = *(a2 + 40);
    v40 = &unk_28810A568;
    v41 = v9;
    v10 = a1[6];
    v11 = a1[7];
    v4 = v11 >= v10;
    v12 = v11 - v10;
    if (!v4)
    {
      v12 = 0;
    }

    if (v12 <= 3)
    {
      v30 = __cxa_allocate_exception(0x10uLL);
      sub_271128104(v30, "Not enough data to read");
      __cxa_throw(v30, off_279E2F400, MEMORY[0x277D825F8]);
    }

    v13 = *(a1[3] + v10);
    a1[6] = v10 + 4;
    sub_27173170C(a1);
    (*(*v41 + 40))(v41, a1, v13);
    v14 = a1[12];
    v15 = a1[9];
    a1[6] = *(v14 - 8) + *(v15 - 8) + 8;
    a1[6] = *(v14 - 16) + *(v15 - 16) + 8;
    a1[9] = v15 - 16;
    a1[12] = v14 - 16;
  }
}