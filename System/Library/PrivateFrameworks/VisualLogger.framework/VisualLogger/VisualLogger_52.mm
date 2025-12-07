uint64_t *sub_2715405A4(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = (a1[2] - v2) >> 3;
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v8 = &v6;
    (off_288133658[v4])(&v8, a1 + 3);
  }

  return a1;
}

int **sub_271540628(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v15;
  v5 = (off_288133678[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 2) >= 0x1555555555555556)
    {
      sub_271135560();
    }

    v14 = -1431655765 * (v8 >> 2);
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_2711308D4();
    }

    v15 = &v14;
    v9 = (off_288133688[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[3 * v10];
    memmove(v9, v7, v8);
    a1[1] = (v9 + v8);
  }

  return a1;
}

int **sub_271540754(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v15;
  v5 = (off_288133698[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 2) >= 0x1555555555555556)
    {
      sub_271135560();
    }

    v14 = -1431655765 * (v8 >> 2);
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_2711308D4();
    }

    v15 = &v14;
    v9 = (off_2881336A8[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[3 * v10];
    memmove(v9, v7, v8);
    a1[1] = (v9 + v8);
  }

  return a1;
}

uint64_t **sub_271540890(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = -1431655765 * ((v1[2] - v2) >> 2);
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_288133668[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

uint64_t **sub_27154093C(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = -1431655765 * ((v1[2] - v2) >> 2);
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_288133638[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

vm_address_t sub_271540A28(unsigned int **a1)
{
  v1 = (**a1 + 511) & 0x1FFFFFE00;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 8 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_271540AB0(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = (v1[2] - v2) >> 3;
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_288133658[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

vm_address_t sub_271540B90(unsigned int **a1)
{
  v1 = (**a1 + 511) & 0x1FFFFFE00;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 8 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_271540C18(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = (v1[2] - v2) >> 3;
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_288133648[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

void sub_271540CAC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271540CE4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*(v1 + 408) == 1 && *(v1 + 407) < 0)
    {
      operator delete(*(v1 + 384));
    }

    sub_271359728(v1);

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271540D58(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3viz7TriMesh7PrivateEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3viz7TriMesh7PrivateEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3viz7TriMesh7PrivateEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3viz7TriMesh7PrivateEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_271540DB8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 40);
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(v2 + 16);
    v9 = v3;
    v10 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v5 = *(v2 + 16);
    v9 = *a2;
    v10 = 0;
  }

  result = sub_2714C13B8(v5, &v9);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = result;
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    result = v7;
  }

  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      return v8;
    }
  }

  return result;
}

void sub_271540EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27112F828(va);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271540EE0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 40) + 16);
  std::mutex::lock((v3 + 32));
  v4 = sub_2714C0C90(v3, a2);
  std::mutex::unlock((v3 + 32));
  return v4;
}

uint64_t sub_271540F50@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 48);
  *a2 = *(result + 40);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_271540F6C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 48);
  *a2 = *(result + 40);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_271540F88@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *a2 = *(result + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_271540FA4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *a2 = *(result + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

std::__shared_weak_count *sub_271540FC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 16);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(a1 + 8);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

std::__shared_weak_count *sub_271541010@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 16);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(a1 + 8);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

uint64_t sub_271541068(uint64_t a1, uint64_t a2)
{
  v3 = atomic_load((a1 + 152));
  if (v3)
  {
    std::mutex::lock((a1 + 88));
    if ((*(a2 + 48) & 1) == 0)
    {
      v5 = *(a1 + 160);
      *(a2 + 48) = *(a1 + 176);
      *(a2 + 32) = v5;
    }

    std::mutex::unlock((a1 + 88));
  }

  return a2;
}

std::__shared_weak_count *sub_2715410C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 192);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(a1 + 184);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

void sub_271541114(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 40) + 16);
  std::mutex::lock((v3 + 32));
  v4 = *(v3 + 96);
  for (i = *(v3 + 104); v4 != i; v4 += 2)
  {
    (*(**v4 + 16))(*v4, a2);
  }

  std::mutex::unlock((v3 + 32));
}

void sub_2715411C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 192);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    v16 = v5;
    if (v5)
    {
      v6 = *(a1 + 184);
      v15 = v6;
      if (v6)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        v12 = (*(**a2 + 16))();
        v13 = (*(*v6 + 16))(v6);
        sub_27154139C(&v14, v12, v13);
        std::logic_error::logic_error(exception, &v14);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = v5;
        (v5->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 192);
  *(a1 + 184) = v9;
  *(a1 + 192) = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_27154135C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_27154139C(std::string *a1, uint64_t *a2, uint64_t *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v7[0] = "Can't reconfigure VisualLogger with config '";
  v7[1] = 44;
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v7[2] = v4;
  v7[3] = v3;
  v7[4] = "', it already has an active configuration '";
  v7[5] = 43;
  v5 = *(a3 + 23);
  if ((v5 & 0x80u) == 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = a3[1];
  }

  v7[6] = v6;
  v7[7] = v5;
  v7[8] = "'";
  v7[9] = 1;
  sub_271131230(v7, &v8, 0, 0, a1);
}

void sub_271541468(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 192);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = *(a1 + 184);
    v7 = *a2;
    if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (v7 == v6)
      {
        goto LABEL_5;
      }

LABEL_10:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 252, "config == active_config_.lock()", 0x1FuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1)
        {
          goto LABEL_17;
        }

        v9 = qword_28087C408;
        v10 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v9 = qword_28087C408;
        v10 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_21;
        }
      }

      do
      {
        v12 = *v9;
        v11 = *(v9 + 8);
        v9 += 16;
        v12(v11, "config == active_config_.lock()", 31, "", 0);
      }

      while (v9 != v10);
      if (byte_28087C430)
      {
LABEL_17:
        qword_28087C420(*algn_28087C428, "config == active_config_.lock()", 31, "", 0);
        v8 = *(a1 + 192);
        *(a1 + 184) = 0;
        *(a1 + 192) = 0;
        if (!v8)
        {
          return;
        }

        goto LABEL_6;
      }

LABEL_21:
      abort();
    }

    v13 = v5;
    (v5->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v13);
    if (v7 != v6)
    {
      goto LABEL_10;
    }
  }

  else if (*a2)
  {
    goto LABEL_10;
  }

LABEL_5:
  v8 = *(a1 + 192);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (!v8)
  {
    return;
  }

LABEL_6:

  std::__shared_weak_count::__release_weak(v8);
}

void sub_271541AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_2714C169C(&a9);
  if (!v16)
  {
    sub_27112F828(v15);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v16);
  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_271541B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v21);
  sub_27112F828(v18);
  _Unwind_Resume(a1);
}

void sub_271541B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v18);
  sub_27112F828(&v15[2]);
  shared_weak_owners = v15[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  sub_271347F18(&a9);
  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_271541BFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
      v1 = *(a1 + 8);
LABEL_10:
      v7 = *(v1 + 24);

      sub_2715021D0(v7, 2, 0);
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
    v6(v5, "p_", 2, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_13:
  abort();
}

uint64_t sub_271541D3C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
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
      v7(v6, "p_", 2, "", 0);
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
  v8 = *(*v2 + 32);

  return v8();
}

uint64_t sub_271541EA4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_11;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_23;
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
LABEL_11:
      qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
      v2 = *(a1 + 8);
      v3 = *a2;
      v4 = a2[1];
      v17 = v4;
      if (v4)
      {
        goto LABEL_3;
      }

LABEL_12:
      v18 = 0;
      v6 = *(*(v2 + 40) + 16);
      v19 = v3;
      v20 = 0;
      goto LABEL_13;
    }

LABEL_23:
    abort();
  }

  v3 = *a2;
  v4 = a2[1];
  v17 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_3:
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  v5 = *(v2 + 40);
  v18 = v4;
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  v6 = *(v5 + 16);
  v19 = v3;
  v20 = v4;
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_13:
  result = sub_2714C13B8(v6, &v19);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v14 = result;
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    result = v14;
  }

  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v15 = result;
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    result = v15;
  }

  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v16 = result;
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
      return v16;
    }
  }

  return result;
}

void sub_271542120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_27112F828(va);
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271542144(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v3 = *(a1 + 8);
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

LABEL_10:
  v9 = *(*(v3 + 40) + 16);
  std::mutex::lock((v9 + 32));
  v10 = sub_2714C0C90(v9, a2);
  std::mutex::unlock((v9 + 32));
  return v10;
}

uint64_t sub_2715422B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 40);
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
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

uint64_t sub_2715423F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 40);
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
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

void sub_271542534(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8);
  if (v2)
  {
    goto LABEL_10;
  }

  v4 = a2;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (byte_28087C438 == 1)
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_7:
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

LABEL_13:
      abort();
    }
  }

LABEL_9:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v2 = *(result + 8);
  a2 = v4;
LABEL_10:
  v10 = *(v2 + 40);
  v9 = *(v2 + 48);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_271542680(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8);
  if (v2)
  {
    goto LABEL_10;
  }

  v4 = a2;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (byte_28087C438 == 1)
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_7:
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

LABEL_13:
      abort();
    }
  }

LABEL_9:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v2 = *(result + 8);
  a2 = v4;
LABEL_10:
  v10 = *(v2 + 40);
  v9 = *(v2 + 48);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_2715427CC(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8);
  if (v2)
  {
    goto LABEL_10;
  }

  v4 = a2;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (byte_28087C438 == 1)
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_7:
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

LABEL_13:
      abort();
    }
  }

LABEL_9:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v2 = *(result + 8);
  a2 = v4;
LABEL_10:
  v10 = *(v2 + 24);
  v9 = *(v2 + 32);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_271542918(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8);
  if (v2)
  {
    goto LABEL_10;
  }

  v4 = a2;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (byte_28087C438 == 1)
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_7:
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

LABEL_13:
      abort();
    }
  }

LABEL_9:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v2 = *(result + 8);
  a2 = v4;
LABEL_10:
  v10 = *(v2 + 24);
  v9 = *(v2 + 32);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }
}

std::__shared_weak_count *sub_271542A64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    result = *(v3 + 16);
    if (!result)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_11;
    }

    v6 = qword_28087C408;
    v7 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = qword_28087C408;
    v7 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_16;
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
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_16:
    abort();
  }

LABEL_11:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v3 = *(a1 + 8);
  result = *(v3 + 16);
  if (!result)
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

LABEL_12:
  result = std::__shared_weak_count::lock(result);
  if (!result)
  {
    goto LABEL_14;
  }

  v10 = *(v3 + 8);
LABEL_15:
  *a2 = v10;
  a2[1] = result;
  return result;
}

std::__shared_weak_count *sub_271542BC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    result = *(v3 + 16);
    if (!result)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_11;
    }

    v6 = qword_28087C408;
    v7 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = qword_28087C408;
    v7 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_16;
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
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_16:
    abort();
  }

LABEL_11:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v3 = *(a1 + 8);
  result = *(v3 + 16);
  if (!result)
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

LABEL_12:
  result = std::__shared_weak_count::lock(result);
  if (!result)
  {
    goto LABEL_14;
  }

  v10 = *(v3 + 8);
LABEL_15:
  *a2 = v10;
  a2[1] = result;
  return result;
}

uint64_t sub_271542D1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return v1 + 152;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
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
  return *(a1 + 8) + 152;
}

uint64_t sub_271542E5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_11;
      }

      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_16;
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
LABEL_11:
      qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
      v3 = *(a1 + 8);
      v10 = atomic_load((v3 + 152));
      if ((v10 & 1) == 0)
      {
        return a2;
      }

      goto LABEL_12;
    }

LABEL_16:
    abort();
  }

  v4 = atomic_load((v3 + 152));
  if ((v4 & 1) == 0)
  {
    return a2;
  }

LABEL_12:
  std::mutex::lock((v3 + 88));
  if ((*(a2 + 48) & 1) == 0)
  {
    v11 = *(v3 + 160);
    *(a2 + 48) = *(v3 + 176);
    *(a2 + 32) = v11;
  }

  std::mutex::unlock((v3 + 88));
  return a2;
}

std::__shared_weak_count *sub_271542FD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    result = *(v3 + 192);
    if (!result)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_11;
    }

    v6 = qword_28087C408;
    v7 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = qword_28087C408;
    v7 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_16;
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
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_16:
    abort();
  }

LABEL_11:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v3 = *(a1 + 8);
  result = *(v3 + 192);
  if (!result)
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

LABEL_12:
  result = std::__shared_weak_count::lock(result);
  if (!result)
  {
    goto LABEL_14;
  }

  v10 = *(v3 + 184);
LABEL_15:
  *a2 = v10;
  a2[1] = result;
  return result;
}

void sub_271543130(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v3 = *(a1 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v5 = qword_28087C408;
      v6 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_15;
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

LABEL_15:
    abort();
  }

LABEL_10:
  v9 = *(*(v3 + 40) + 16);
  std::mutex::lock((v9 + 32));
  v10 = *(v9 + 96);
  for (i = *(v9 + 104); v10 != i; v10 += 2)
  {
    (*(**v10 + 16))(*v10, a2);
  }

  std::mutex::unlock((v9 + 32));
}

void sub_2715432DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v4 = a1;
    v5 = a2;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
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
        goto LABEL_16;
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

LABEL_16:
    abort();
  }

LABEL_10:
  v10 = a2[1];
  v12 = *a2;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v3 + 184))(v3, &v12);
  v11 = v13;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_2715434B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v4 = a1;
    v5 = a2;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
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
        goto LABEL_16;
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

LABEL_16:
    abort();
  }

LABEL_10:
  v10 = a2[1];
  v12 = *a2;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v3 + 192))(v3, &v12);
  v11 = v13;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

uint64_t sub_271543694(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
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
      v7(v6, "p_", 2, "", 0);
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

void sub_2715437EC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v4 = a2;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v2 = *(a1 + 8);
        a2 = v4;
        goto LABEL_10;
      }
    }

    else
    {
      v5 = qword_28087C408;
      v6 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
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

LABEL_13:
    abort();
  }

LABEL_10:
  v9 = *(*(v2 + 40) + 16);

  sub_2714C12C4(v9, a2);
}

void sub_271543938(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v3 = *(a1 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v5 = qword_28087C408;
      v6 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_59;
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

LABEL_59:
    abort();
  }

LABEL_10:
  sub_2714C12C4(*(*(v3 + 40) + 16), &v45);
  v9 = v45;
  v10 = v46;
  if (v45 == v46)
  {
LABEL_21:
    v13 = 1;
    v14 = v45;
    if (!v45)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  while (1)
  {
    if (*v9)
    {
      v11 = __dynamic_cast(*v9, &unk_28811DAE0, &unk_28811D098, -2);
      if (v11)
      {
        break;
      }
    }

LABEL_12:
    v9 += 16;
    if (v9 == v10)
    {
      goto LABEL_21;
    }
  }

  v12 = *(v9 + 1);
  v43 = v11;
  v44 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v11 + 40))(&v32);
  if (v42)
  {
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    goto LABEL_12;
  }

  v21 = v32;
  LOBYTE(__p) = 0;
  v31 = 0;
  if (v41 == 1)
  {
    sub_27112F6CC(&__p, &v33);
    v31 = 1;
    *a2 = v21;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    v18 = v24;
    if (v24 == 1)
    {
      *(a2 + 16) = __p;
      *(a2 + 32) = v23;
      v23 = 0;
      __p = 0uLL;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      v19 = a2 + 48;
      *(a2 + 104) = 0;
      if (v30)
      {
        goto LABEL_40;
      }

LABEL_36:
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      if (v18)
      {
LABEL_41:
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      *(a2 + 48) = 0;
      v19 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v30 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_40:
      v20 = v27;
      *(v19 + 16) = v26;
      *v19 = v25;
      v25 = 0uLL;
      *(a2 + 72) = v20;
      *(a2 + 80) = v28;
      *(a2 + 96) = v29;
      v26 = 0;
      v28 = 0uLL;
      v29 = 0;
      *(a2 + 104) = 1;
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      if (v18)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    *a2 = v32;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

  if ((v42 & 1) == 0 && v41 == 1)
  {
    if (v40 == 1)
    {
      if (v39 < 0)
      {
        operator delete(v38);
      }

      if (v37 < 0)
      {
        operator delete(v36);
      }
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }
  }

  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    v13 = 0;
    v14 = v45;
    if (v45)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v13 = 0;
    v14 = v45;
    if (!v45)
    {
      goto LABEL_30;
    }

LABEL_22:
    v15 = v46;
    v16 = v14;
    if (v46 != v14)
    {
      do
      {
        v17 = *(v15 - 1);
        if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
        }

        v15 -= 16;
      }

      while (v15 != v14);
      v16 = v45;
    }

    v46 = v14;
    operator delete(v16);
  }

LABEL_30:
  if (v13)
  {
    *(a2 + 120) = 1;
  }
}

void sub_271543DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_27112D66C(v23 + 16);
  sub_27112E024(va);
  sub_27112F828(v24 - 120);
  sub_271347F18((v24 - 104));
  _Unwind_Resume(a1);
}

void sub_271543E28(_Unwind_Exception *a1)
{
  sub_27112F828(v1 - 120);
  sub_271347F18((v1 - 104));
  _Unwind_Resume(a1);
}

uint64_t sub_271543E44(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
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
      v7(v6, "p_", 2, "", 0);
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
  v8 = *(*v2 + 16);

  return v8();
}

uint64_t sub_271543FAC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
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
      v7(v6, "p_", 2, "", 0);
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
  v8 = *(*v2 + 24);

  return v8();
}

uint64_t *sub_271544114(uint64_t a1, uint64_t *a2, int64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v5 = a2;
    v6 = a3;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
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
  v11 = *(v3 + 24);

  return sub_2715018D8(v11, a2, a3);
}

unint64_t sub_271544264(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v5 = a2;
    v6 = a3;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
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
  v11 = *(v3 + 24);

  return sub_271501A54(v11, a2, a3);
}

uint64_t sub_2715443B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v1 = *(a1 + 8);
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
      v6(v5, "p_", 2, "", 0);
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
  v7 = *(**(v1 + 24) + 64);

  return v7();
}

uint64_t sub_271544524(uint64_t result)
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

void sub_27154459C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27154462C(uint64_t a1)
{
  sub_2715447F4(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271544684(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106818;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271544720(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288133770;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271544774(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_2715447F4(uint64_t a1)
{
  *a1 = &unk_28810C238;
  v2 = *(a1 + 192);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::mutex::~mutex((a1 + 88));
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = *(a1 + 48);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 32);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_271544900(int a1@<W0>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v4 = a3[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    operator new();
  }

  if (a1 == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }
}

void sub_271544D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(&a9);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271544DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_271544DC0(int a1, uint64_t a2, __n128 a3)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (*(a2 + 24) != 1)
        {
LABEL_26:
          sub_2711308D4();
        }

        goto LABEL_24;
      }

      return a3.n128_u64[0];
    }

    if (*(a2 + 24))
    {
      goto LABEL_26;
    }

    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v11 = v5;
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = v11;
    }

    v10 = &unk_2881152B0;
    if (v5)
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7, a3);
          std::__shared_weak_count::__release_weak(v7);
        }
      }

      if (v8)
      {
        sub_271581FB4(v11);
      }
    }

    sub_271545004(v13, &v10);
    v9 = v14;
    sub_27157D2FC(&v10);
    return v9;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      return a3.n128_u64[0];
    }

    if (*(a2 + 24) != 3)
    {
      goto LABEL_26;
    }

    sub_2715452F8(a2, &v10);
    sub_271545004(v13, &v10);
    a3.n128_u64[0] = v14;
    v10 = &unk_288115A20;
    v3 = v12;
    if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return a3.n128_u64[0];
    }

    v9 = a3.n128_u64[0];
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    return v9;
  }

  if (*(a2 + 24) != 2)
  {
    goto LABEL_26;
  }

LABEL_24:
  sub_271545004(v13, a2);
  return v14;
}

void sub_271544FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_271544FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271544FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_271545004(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_27157CE68(a2, 0);
  v12 = sub_27157F398(a2);
  v13 = sub_27157F5D4(a2);
  result = sub_27157F810(a2);
  v15 = v12;
  v16 = v12 | (v13 << 32);
  if (v13)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  *a1 = v11;
  a1[1] = v18;
  a1[2] = (result << 32) | 1;
  if (HIDWORD(v18) * result == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        v24 = qword_28087C420;
        v23 = *algn_28087C428;

        return v24(v23, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v22 = *v19;
      v21 = *(v19 + 8);
      v19 += 16;
      v22(v21, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_32:
    abort();
  }

  return result;
}

void sub_2715452F8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0 && (v5 = *a1) != 0)
  {
    *a2 = &unk_288115A20;
    a2[1] = v5;
    a2[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288115A20;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a2[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 223, "", 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_271852CA8);
    abort();
  }
}

uint64_t sub_27154547C(uint64_t a1, int a2, int a3, _DWORD *a4, char a5)
{
  v12 = a5;
  *a1 = &unk_288115630;
  *(a1 + 8) = a2;
  sub_271544900(a2, a4, a1 + 16);
  if (*a4)
  {
    v9 = a4[1] == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    *(a1 + 48) = *a4;
  }

  else
  {
    *(a1 + 48) = sub_271544DC0(a2, a1 + 16, v8);
    *(a1 + 56) = v10;
  }

  if (!sub_27154608C(a1))
  {
    sub_2715462C4(a1, v14);
    sub_2715466D0(a1, v13);
    v15[0] = v13;
    v15[1] = &v12;
    sub_271574524(v15);
    sub_27157D548(v14);
  }

  return a1;
}

void sub_271545570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D548(va);
  sub_2715455A0(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_2715455A0(uint64_t a1)
{
  *a1 = &unk_288115630;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

uint64_t sub_271545618(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t sub_271545674(uint64_t a1, _DWORD *a2, __int128 *a3)
{
  *a1 = &unk_288115630;
  *(a1 + 8) = 0;
  sub_271544900(0, a2, a1 + 16);
  if (*a2)
  {
    v7 = a2[1] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    *(a1 + 48) = *a2;
  }

  else
  {
    *(a1 + 48) = sub_271544DC0(0, a1 + 16, v6);
    *(a1 + 56) = v8;
  }

  v10 = *a3;
  v11 = *(a3 + 2);
  if (!sub_27154608C(a1))
  {
    sub_2715462C4(a1, v13);
    sub_2715466D0(a1, v12);
    sub_271253768(&v10, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_27154576C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D548(va);
  sub_2715455A0(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_27154579C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288115630;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v4 = *(a2 + 8);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v4 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = *(v4 + 4);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

LABEL_10:
  *(a1 + 8) = v8;
  *(a1 + 16) = &unk_288115A20;
  *(a1 + 24) = v4;
  v9 = *(a2 + 16);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  v10 = *(a2 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *v10;
  v11 = v10[1];
  if (!v11 || (atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 718, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "IsValid()", 9, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = sub_27157F398(a2);
  v16 = sub_27157F5D4(a2);
  v17 = sub_27157F810(a2);
  *(a1 + 48) = v15 | (v16 << 32);
  *(a1 + 56) = (v17 << 32) | 1;
  v18 = *(a2 + 8);
  if (!v18)
  {
    v22 = 0;
    goto LABEL_33;
  }

  v19 = *(v18 + 8);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
      v20 = *(a2 + 8);
      if (v20)
      {
        goto LABEL_28;
      }

LABEL_39:
      v22 = 0;
      if (!*(a1 + 48))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((v22 == 0) == (*(a1 + 52) == 0))
      {
        return a1;
      }

      goto LABEL_41;
    }
  }

  v20 = *(a2 + 8);
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_28:
  v22 = *v20;
  v21 = v20[1];
  if (!v21 || (atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_33:
    if (!*(a1 + 48))
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  if (*(a1 + 48))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v22)
  {
LABEL_41:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 114, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v23 = qword_28087C408, v24 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_48:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v23 = qword_28087C408;
      v24 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v23)(*(v23 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v23 += 16;
    }

    while (v23 != v24);
    if (byte_28087C430)
    {
      goto LABEL_48;
    }

LABEL_50:
    abort();
  }

  return a1;
}

void sub_271545C64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_288115A20;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_288115A20;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_288115A20;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_27157F1D8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_288109288;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_288115A20;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_271545F0C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 40);
  if (v2 <= 1)
  {
    if (v2 >= 2)
    {
LABEL_21:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v8;
    a2[2] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    return;
  }

  if (v2 != 3)
  {
    goto LABEL_21;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_14;
  }

  v4 = a2;
  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5)
  {
    v4[1] = 0;
    v4[2] = 0;
    *v4 = &unk_288115A20;
    return;
  }

  v6 = *(a1 + 16);
  a2 = v4;
  if (!v6)
  {
LABEL_14:
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288115A20;
    if (!v5)
    {
      return;
    }

    goto LABEL_17;
  }

  *v4 = &unk_288115A20;
  v4[1] = v6;
  v4[2] = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_17:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = v5;
    (v5->__on_zero_shared)();

    std::__shared_weak_count::__release_weak(v9);
  }
}

BOOL sub_27154608C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 <= 1)
  {
    if (v1 >= 2)
    {
LABEL_25:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v1 == 2)
  {
LABEL_10:
    v4 = *(a1 + 32);
    v9 = *(a1 + 24);
    v10 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v1 != 3)
  {
    goto LABEL_25;
  }

  if (!*(a1 + 24))
  {
    v3 = 0;
    goto LABEL_22;
  }

  v3 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v3 || !*(a1 + 16))
  {
LABEL_22:
    v9 = 0;
    v10 = 0;
    if (!v3)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

  v9 = *(a1 + 16);
  v10 = v3;
  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_23:
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v3;
    (v3->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_12:
  if (v9)
  {
    v6 = *v9;
    v5 = v9[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6 == 0;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  return v6 == 0;
}

void sub_2715462C4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_2715820B8(a2[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_2715452F8((a1 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a2 = &unk_288115A20;
    a2[1] = v16;
    a2[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_2715820B8(a2[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v4;
    a2[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_2715820B8(a2[1]);
      }
    }
  }
}

void sub_271546678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_2715466D0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_27154608C(a1))
  {
    if (*(a1 + 52))
    {
      v4 = *(a1 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a1 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a2 = 0;
    a2[1] = v5;
    a2[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a1 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    v20 = &unk_288115A20;
    v21 = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        v20 = &unk_288115A20;
        v21 = v9;
        v22 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_271545004(a2, &v20);
  v20 = &unk_288115A20;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_271546A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271546A24(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_2715452F8((a2 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}

void sub_271546DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271546E30(int a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 24))
  {
    v4 = *(a3 + 28) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    operator new();
  }

  if (a1 == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }
}

void sub_2715472B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(&a9);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_2715472D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715472F0(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (*(a2 + 24) != 2)
      {
        goto LABEL_25;
      }

LABEL_23:
      sub_271547560(v15, a2);
      v11 = v17;
      *a3 = v16;
      *(a3 + 16) = v11;
      *(a3 + 32) = v18;
      return;
    }

    if (a1 == 3)
    {
      if (*(a2 + 24) != 3)
      {
        goto LABEL_25;
      }

      sub_2715478E8(&v12, a2);
      sub_271547560(v15, &v12);
      v4 = v17;
      *a3 = v16;
      *(a3 + 16) = v4;
      *(a3 + 32) = v18;
      v12 = &unk_288115A20;
      v5 = v14;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (*(a2 + 24) != 1)
      {
LABEL_25:
        sub_2711308D4();
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (*(a2 + 24))
    {
      goto LABEL_25;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v13 = v6;
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = v13;
    }

    v12 = &unk_2881152B0;
    if (v6)
    {
      v9 = *v6;
      v8 = v6[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }
      }

      if (v9)
      {
        sub_271581FB4(v13);
      }
    }

    sub_271547560(v15, &v12);
    v10 = v17;
    *a3 = v16;
    *(a3 + 16) = v10;
    *(a3 + 32) = v18;
    sub_27157D2FC(&v12);
  }
}

void sub_271547524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_271547538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27154754C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_271547560(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_27157CE68(a2, 0);
  v12 = sub_27157F398(a2);
  v13 = sub_27157F5D4(a2);
  result = sub_27157F810(a2);
  v15 = v12;
  v16 = v12 | (v13 << 32);
  if (v13)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  HIDWORD(v25) = v18;
  LODWORD(v25) = 2;
  *a1 = v11;
  *(a1 + 8) = v25;
  *(a1 + 16) = HIDWORD(v18);
  *(a1 + 20) = 0x200000001;
  *(a1 + 28) = result;
  *(a1 + 32) = v18;
  *(a1 + 40) = (result << 32) | 2;
  if (HIDWORD(v18) * result == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        v24 = qword_28087C420;
        v23 = *algn_28087C428;

        return v24(v23, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v22 = *v19;
      v21 = *(v19 + 8);
      v19 += 16;
      v22(v21, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_32:
    abort();
  }

  return result;
}

void sub_2715478E8(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3 && (v3 = std::__shared_weak_count::lock(v3)) != 0 && (v5 = *a2) != 0)
  {
    *a1 = &unk_288115A20;
    a1[1] = v5;
    a1[2] = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
    *a1 = &unk_288115A20;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v3;
    (v3->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a1[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 223, "", 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_271852CA8);
    abort();
  }
}

uint64_t sub_271547A6C(uint64_t a1, char *a2)
{
  result = sub_27154608C(a1);
  if ((result & 1) == 0)
  {
    sub_271548540(v22, a1);
    sub_27154894C(&v15, a1);
    v23[0] = &v15;
    v23[1] = a2;
    if (v19 == 1)
    {
      sub_2715746BC(v23);
      return sub_27157D548(v22);
    }

    if (!v16 || !v17 || !v18)
    {
      return sub_27157D548(v22);
    }

    v5 = v17 - 1;
    v6 = v20;
    v7 = v15;
    v8 = v18 - 1;
    if (v18 == 1)
    {
      v10 = *a2;
    }

    else
    {
      v9 = v21;
      v10 = *a2;
      if (v17 != 1)
      {
        v11 = 0;
        v12 = v15 + 1;
        do
        {
          v13 = v12;
          v14 = v5;
          do
          {
            *(v13 - 1) = v10;
            v10 = *a2;
            *v13 = *a2;
            v13 += v6;
            --v14;
          }

          while (v14);
          *(v13 - 1) = v10;
          v10 = *a2;
          *v13 = *a2;
          v7 += v9;
          ++v11;
          v12 += v9;
        }

        while (v11 != v8);
        goto LABEL_18;
      }

      do
      {
        *v7 = v10;
        v10 = *a2;
        v7[1] = *a2;
        v7 += v9;
        --v8;
      }

      while (v8);
    }

    if (!v5)
    {
LABEL_19:
      *v7 = v10;
      v7[1] = *a2;
      return sub_27157D548(v22);
    }

    do
    {
LABEL_18:
      *v7 = v10;
      v10 = *a2;
      v7[1] = *a2;
      v7 += v6;
      --v5;
    }

    while (v5);
    goto LABEL_19;
  }

  return result;
}

void sub_271547BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D548(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271547BC8(uint64_t a1)
{
  *a1 = &unk_2881155A0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

uint64_t sub_271547C40(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  *a1 = &unk_2881155A0;
  *(a1 + 8) = 0;
  sub_271546E30(0, a2, a1 + 16);
  if (*(a2 + 6))
  {
    v6 = *(a2 + 7) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 80) = *(a2 + 4);
    *(a1 + 48) = v7;
    *(a1 + 64) = v8;
  }

  else
  {
    sub_2715472F0(0, a1 + 16, a1 + 48);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_27154608C(a1))
  {
    sub_271548540(v13, a1);
    sub_27154894C(v12, a1);
    sub_27129F754(v11, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_271547D40(_Unwind_Exception *a1)
{
  sub_27157D548((v2 - 56));
  sub_271547BC8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_271547D70(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881155A0;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v4 = *(a2 + 8);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v4 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = *(v4 + 4);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

LABEL_10:
  *(a1 + 8) = v8;
  *(a1 + 16) = &unk_288115A20;
  *(a1 + 24) = v4;
  v9 = *(a2 + 16);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  v10 = *(a2 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *v10;
  v11 = v10[1];
  if (!v11 || (atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 718, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "IsValid()", 9, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = sub_27157F398(a2);
  v16 = sub_27157F5D4(a2);
  v17 = sub_27157F810(a2);
  v18 = v15 | (v16 << 32);
  LODWORD(v27) = 2;
  HIDWORD(v27) = v18;
  *(a1 + 48) = v27;
  *(a1 + 56) = v16;
  *(a1 + 60) = 0x200000001;
  *(a1 + 68) = v17;
  *(a1 + 72) = v18;
  *(a1 + 80) = (v17 << 32) | 2;
  v19 = *(a2 + 8);
  if (!v19)
  {
    v23 = 0;
    goto LABEL_33;
  }

  v20 = *(v19 + 8);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      v21 = *(a2 + 8);
      if (v21)
      {
        goto LABEL_28;
      }

LABEL_39:
      v23 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((v23 == 0) == (*(a1 + 76) == 0))
      {
        return a1;
      }

      goto LABEL_41;
    }
  }

  v21 = *(a2 + 8);
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_28:
  v23 = *v21;
  v22 = v21[1];
  if (!v22 || (atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_33:
    if (!*(a1 + 72))
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (*(a1 + 72))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v23)
  {
LABEL_41:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 114, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v24 = qword_28087C408, v25 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_48:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v24 = qword_28087C408;
      v25 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v24)(*(v24 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v24 += 16;
    }

    while (v24 != v25);
    if (byte_28087C430)
    {
      goto LABEL_48;
    }

LABEL_50:
    abort();
  }

  return a1;
}

void sub_271548298(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_288115A20;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_288115A20;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_288115A20;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_27157F1D8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_288109288;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_288115A20;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_271548540(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_288115290;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_2715820B8(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_288115290;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_2715478E8(v21, (a2 + 16));
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_288115290;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_2715820B8(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_288115290;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_2715820B8(a1[1]);
      }
    }
  }
}

void sub_2715488F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27154894C(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v19) = 2;
    *(&v19 + 4) = v6;
    v7 = 2 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
    v10 = __PAIR64__(DWORD1(v19), 2);
    LODWORD(v19) = 1;
    *(&v19 + 4) = v9;
    v11 = v19;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    return;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    *&v19 = &unk_288115A20;
    *(&v19 + 1) = v16;
    v20 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        *&v19 = &unk_288115A20;
        *(&v19 + 1) = v14;
        v20 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v19 + 1) = 0;
  v20 = 0;
  *&v19 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v18);
    }
  }

LABEL_22:
  sub_271547560(a1, &v19);
  *&v19 = &unk_288115A20;
  v17 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_271548BE4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_2715478E8(v21, (a2 + 16));
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}

void sub_271548F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271548FF0(int a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 24))
  {
    v4 = *(a3 + 28) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    operator new();
  }

  if (a1 == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }
}

void sub_271549474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(&a9);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271549494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715494B0(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (*(a2 + 24) != 2)
      {
        goto LABEL_25;
      }

LABEL_23:
      sub_271549728(a2, &v15);
      v11 = v17;
      *a3 = v16;
      *(a3 + 16) = v11;
      *(a3 + 32) = v18;
      return;
    }

    if (a1 == 3)
    {
      if (*(a2 + 24) != 3)
      {
        goto LABEL_25;
      }

      sub_271549AB0(a2, &v12);
      sub_271549728(&v12, &v15);
      v4 = v17;
      *a3 = v16;
      *(a3 + 16) = v4;
      *(a3 + 32) = v18;
      v12 = &unk_288115A20;
      v5 = v14;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (*(a2 + 24) != 1)
      {
LABEL_25:
        sub_2711308D4();
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (*(a2 + 24))
    {
      goto LABEL_25;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v13 = v6;
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = v13;
    }

    v12 = &unk_2881152B0;
    if (v6)
    {
      v9 = *v6;
      v8 = v6[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }
      }

      if (v9)
      {
        sub_271581FB4(v13);
      }
    }

    sub_271549728(&v12, &v15);
    v10 = v17;
    *a3 = v16;
    *(a3 + 16) = v10;
    *(a3 + 32) = v18;
    sub_27157D2FC(&v12);
  }
}

void sub_2715496EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_271549700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271549714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_271549728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_27157CE68(a1, 0);
  v12 = sub_27157F398(a1);
  v13 = sub_27157F5D4(a1);
  result = sub_27157F810(a1);
  v15 = v12;
  v16 = v12 | (v13 << 32);
  if (v13)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  HIDWORD(v25) = v18;
  LODWORD(v25) = 3;
  *a2 = v11;
  *(a2 + 8) = v25;
  *(a2 + 16) = HIDWORD(v18);
  *(a2 + 20) = 0x300000001;
  *(a2 + 28) = result;
  *(a2 + 32) = v18;
  *(a2 + 40) = (result << 32) | 3;
  if (HIDWORD(v18) * result == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        v24 = qword_28087C420;
        v23 = *algn_28087C428;

        return v24(v23, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v22 = *v19;
      v21 = *(v19 + 8);
      v19 += 16;
      v22(v21, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_32:
    abort();
  }

  return result;
}

void sub_271549AB0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0 && (v5 = *a1) != 0)
  {
    *a2 = &unk_288115A20;
    a2[1] = v5;
    a2[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288115A20;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a2[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 223, "", 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_271852CA8);
    abort();
  }
}

uint64_t sub_271549C34(uint64_t a1, int a2, int a3, __int128 *a4, char a5)
{
  v12 = a5;
  *a1 = &unk_288115510;
  *(a1 + 8) = a2;
  sub_271548FF0(a2, a4, a1 + 16);
  if (*(a4 + 6))
  {
    v8 = *(a4 + 7) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = *a4;
    v10 = a4[1];
    *(a1 + 80) = *(a4 + 4);
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
  }

  else
  {
    sub_2715494B0(a2, a1 + 16, a1 + 48);
  }

  if (!sub_27154608C(a1))
  {
    sub_27154A6D8(a1, v14);
    sub_27154AAE4(a1, v13);
    v15[0] = v13;
    v15[1] = &v12;
    sub_27157487C(v15);
    sub_27157D548(v14);
  }

  return a1;
}

void sub_271549D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D548(va);
  sub_271549D60(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_271549D60(uint64_t a1)
{
  *a1 = &unk_288115510;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

uint64_t sub_271549DD8(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  *a1 = &unk_288115510;
  *(a1 + 8) = 0;
  sub_271548FF0(0, a2, a1 + 16);
  if (*(a2 + 6))
  {
    v6 = *(a2 + 7) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 80) = *(a2 + 4);
    *(a1 + 48) = v7;
    *(a1 + 64) = v8;
  }

  else
  {
    sub_2715494B0(0, a1 + 16, a1 + 48);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_27154608C(a1))
  {
    sub_27154A6D8(a1, v13);
    sub_27154AAE4(a1, v12);
    sub_2712A2E80(v11, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_271549ED8(_Unwind_Exception *a1)
{
  sub_27157D548((v2 - 56));
  sub_271549D60(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_271549F08(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288115510;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v4 = *(a2 + 8);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v4 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = *(v4 + 4);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

LABEL_10:
  *(a1 + 8) = v8;
  *(a1 + 16) = &unk_288115A20;
  *(a1 + 24) = v4;
  v9 = *(a2 + 16);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  v10 = *(a2 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *v10;
  v11 = v10[1];
  if (!v11 || (atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 718, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "IsValid()", 9, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = sub_27157F398(a2);
  v16 = sub_27157F5D4(a2);
  v17 = sub_27157F810(a2);
  v18 = v15 | (v16 << 32);
  LODWORD(v27) = 3;
  HIDWORD(v27) = v18;
  *(a1 + 48) = v27;
  *(a1 + 56) = v16;
  *(a1 + 60) = 0x300000001;
  *(a1 + 68) = v17;
  *(a1 + 72) = v18;
  *(a1 + 80) = (v17 << 32) | 3;
  v19 = *(a2 + 8);
  if (!v19)
  {
    v23 = 0;
    goto LABEL_33;
  }

  v20 = *(v19 + 8);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      v21 = *(a2 + 8);
      if (v21)
      {
        goto LABEL_28;
      }

LABEL_39:
      v23 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((v23 == 0) == (*(a1 + 76) == 0))
      {
        return a1;
      }

      goto LABEL_41;
    }
  }

  v21 = *(a2 + 8);
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_28:
  v23 = *v21;
  v22 = v21[1];
  if (!v22 || (atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_33:
    if (!*(a1 + 72))
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (*(a1 + 72))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v23)
  {
LABEL_41:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 114, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v24 = qword_28087C408, v25 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_48:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v24 = qword_28087C408;
      v25 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v24)(*(v24 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v24 += 16;
    }

    while (v24 != v25);
    if (byte_28087C430)
    {
      goto LABEL_48;
    }

LABEL_50:
    abort();
  }

  return a1;
}

void sub_27154A430(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_288115A20;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_288115A20;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_288115A20;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_27157F1D8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_288109288;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_288115A20;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_27154A6D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_2715820B8(a2[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_271549AB0((a1 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a2 = &unk_288115A20;
    a2[1] = v16;
    a2[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_2715820B8(a2[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v4;
    a2[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_2715820B8(a2[1]);
      }
    }
  }
}

void sub_27154AA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27154AAE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_27154608C(a1))
  {

    sub_27157497C(a2, 0, (a1 + 72));
    return;
  }

  v4 = *(a1 + 40);
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
LABEL_23:
      sub_2711308D4();
    }

    goto LABEL_14;
  }

  if (v4 == 2)
  {
LABEL_14:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v11 = &unk_288115A20;
    v12 = v8;
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    if (v5)
    {
      v6 = *(a1 + 16);
      if (v6)
      {
        v11 = &unk_288115A20;
        v12 = v6;
        v13 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_21;
      }
    }
  }

  v12 = 0;
  v13 = 0;
  v11 = &unk_288115A20;
  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_16:
  sub_271549728(&v11, a2);
  v11 = &unk_288115A20;
  v9 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_27154ACE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27154ACFC(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_271549AB0((a2 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}

void sub_27154B0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27154B108(int a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 24))
  {
    v4 = *(a3 + 28) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    operator new();
  }

  if (a1 == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }
}

void sub_27154B58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(&a9);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27154B5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27154B5C8(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (*(a2 + 24) != 2)
      {
        goto LABEL_25;
      }

LABEL_23:
      sub_27154B838(v15, a2);
      v11 = v17;
      *a3 = v16;
      *(a3 + 16) = v11;
      *(a3 + 32) = v18;
      return;
    }

    if (a1 == 3)
    {
      if (*(a2 + 24) != 3)
      {
        goto LABEL_25;
      }

      sub_27154BBC0(&v12, a2);
      sub_27154B838(v15, &v12);
      v4 = v17;
      *a3 = v16;
      *(a3 + 16) = v4;
      *(a3 + 32) = v18;
      v12 = &unk_288115A20;
      v5 = v14;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (*(a2 + 24) != 1)
      {
LABEL_25:
        sub_2711308D4();
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (*(a2 + 24))
    {
      goto LABEL_25;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v13 = v6;
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = v13;
    }

    v12 = &unk_2881152B0;
    if (v6)
    {
      v9 = *v6;
      v8 = v6[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }
      }

      if (v9)
      {
        sub_271581FB4(v13);
      }
    }

    sub_27154B838(v15, &v12);
    v10 = v17;
    *a3 = v16;
    *(a3 + 16) = v10;
    *(a3 + 32) = v18;
    sub_27157D2FC(&v12);
  }
}

void sub_27154B7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_27154B810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27154B824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_27154B838(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_27157CE68(a2, 0);
  v12 = sub_27157F398(a2);
  v13 = sub_27157F5D4(a2);
  result = sub_27157F810(a2);
  v15 = v12;
  v16 = v12 | (v13 << 32);
  if (v13)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  HIDWORD(v25) = v18;
  LODWORD(v25) = 4;
  *a1 = v11;
  *(a1 + 8) = v25;
  *(a1 + 16) = HIDWORD(v18);
  *(a1 + 20) = 0x400000001;
  *(a1 + 28) = result;
  *(a1 + 32) = v18;
  *(a1 + 40) = (result << 32) | 4;
  if (HIDWORD(v18) * result == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        v24 = qword_28087C420;
        v23 = *algn_28087C428;

        return v24(v23, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v22 = *v19;
      v21 = *(v19 + 8);
      v19 += 16;
      v22(v21, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_32:
    abort();
  }

  return result;
}

void sub_27154BBC0(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3 && (v3 = std::__shared_weak_count::lock(v3)) != 0 && (v5 = *a2) != 0)
  {
    *a1 = &unk_288115A20;
    a1[1] = v5;
    a1[2] = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
    *a1 = &unk_288115A20;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v3;
    (v3->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a1[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 223, "", 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_271852CA8);
    abort();
  }
}

uint64_t sub_27154BD44(uint64_t a1, uint64_t a2)
{
  result = sub_27154608C(a1);
  if ((result & 1) == 0)
  {
    sub_27154C774(v10, a1);
    sub_27154CB80(v5, a1);
    v11[0] = v5;
    v11[1] = a2;
    if (v9 == 1)
    {
      sub_2715746BC(v11);
    }

    else
    {
      v12 = a2;
      if (v6 && v7)
      {
        if (v8)
        {
          v13 = &v12;
          sub_271574B58(&v13, v5);
        }
      }
    }

    return sub_27157D548(v10);
  }

  return result;
}

void sub_27154BDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D548(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27154BE04(uint64_t a1)
{
  *a1 = &unk_288115480;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

uint64_t sub_27154BE7C(uint64_t a1, int a2, __int128 *a3, _OWORD *a4)
{
  *a1 = &unk_288115480;
  *(a1 + 8) = 0;
  sub_27154B108(0, a3, a1 + 16);
  if (*(a3 + 6))
  {
    v7 = *(a3 + 7) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = *a3;
    v9 = a3[1];
    *(a1 + 80) = *(a3 + 4);
    *(a1 + 48) = v8;
    *(a1 + 64) = v9;
  }

  else
  {
    sub_27154B5C8(0, a1 + 16, a1 + 48);
  }

  v10 = a4[1];
  v12[0] = *a4;
  v12[1] = v10;
  v12[2] = a4[2];
  if (!sub_27154608C(a1))
  {
    sub_27154C774(v14, a1);
    sub_27154CB80(v13, a1);
    sub_2712A6008(v12, v13);
    sub_27157D548(v14);
  }

  return a1;
}

void sub_27154BF74(_Unwind_Exception *a1)
{
  sub_27157D548((v2 - 56));
  sub_27154BE04(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_27154BFA4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288115480;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v4 = *(a2 + 8);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v4 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = *(v4 + 4);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

LABEL_10:
  *(a1 + 8) = v8;
  *(a1 + 16) = &unk_288115A20;
  *(a1 + 24) = v4;
  v9 = *(a2 + 16);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  v10 = *(a2 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *v10;
  v11 = v10[1];
  if (!v11 || (atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 718, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "IsValid()", 9, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = sub_27157F398(a2);
  v16 = sub_27157F5D4(a2);
  v17 = sub_27157F810(a2);
  v18 = v15 | (v16 << 32);
  LODWORD(v27) = 4;
  HIDWORD(v27) = v18;
  *(a1 + 48) = v27;
  *(a1 + 56) = v16;
  *(a1 + 60) = 0x400000001;
  *(a1 + 68) = v17;
  *(a1 + 72) = v18;
  *(a1 + 80) = (v17 << 32) | 4;
  v19 = *(a2 + 8);
  if (!v19)
  {
    v23 = 0;
    goto LABEL_33;
  }

  v20 = *(v19 + 8);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      v21 = *(a2 + 8);
      if (v21)
      {
        goto LABEL_28;
      }

LABEL_39:
      v23 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((v23 == 0) == (*(a1 + 76) == 0))
      {
        return a1;
      }

      goto LABEL_41;
    }
  }

  v21 = *(a2 + 8);
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_28:
  v23 = *v21;
  v22 = v21[1];
  if (!v22 || (atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_33:
    if (!*(a1 + 72))
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (*(a1 + 72))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v23)
  {
LABEL_41:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 114, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v24 = qword_28087C408, v25 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_48:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v24 = qword_28087C408;
      v25 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v24)(*(v24 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v24 += 16;
    }

    while (v24 != v25);
    if (byte_28087C430)
    {
      goto LABEL_48;
    }

LABEL_50:
    abort();
  }

  return a1;
}

void sub_27154C4CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_288115A20;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_288115A20;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_288115A20;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_27157F1D8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_288109288;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_288115A20;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_27154C774(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_288115290;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_2715820B8(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_288115290;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_27154BBC0(v21, (a2 + 16));
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_288115290;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_2715820B8(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_288115290;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_2715820B8(a1[1]);
      }
    }
  }
}

void sub_27154CB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27154CB80(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v19) = 4;
    *(&v19 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v19), 4);
    LODWORD(v19) = 1;
    *(&v19 + 4) = v9;
    v11 = v19;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    return;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    *&v19 = &unk_288115A20;
    *(&v19 + 1) = v16;
    v20 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        *&v19 = &unk_288115A20;
        *(&v19 + 1) = v14;
        v20 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v19 + 1) = 0;
  v20 = 0;
  *&v19 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v18);
    }
  }

LABEL_22:
  sub_27154B838(a1, &v19);
  *&v19 = &unk_288115A20;
  v17 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_27154CE18(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_27154BBC0(v21, (a2 + 16));
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}

void sub_27154D1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27154D224(int a1@<W0>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v4 = a3[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    operator new();
  }

  if (a1 == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }
}

void sub_27154D6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(&a9);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27154D6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_27154D6E4(int a1, uint64_t a2, __n128 a3)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (*(a2 + 24) != 1)
        {
LABEL_26:
          sub_2711308D4();
        }

        goto LABEL_24;
      }

      return a3.n128_u64[0];
    }

    if (*(a2 + 24))
    {
      goto LABEL_26;
    }

    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v11 = v5;
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = v11;
    }

    v10 = &unk_2881152B0;
    if (v5)
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7, a3);
          std::__shared_weak_count::__release_weak(v7);
        }
      }

      if (v8)
      {
        sub_271581FB4(v11);
      }
    }

    sub_27154D928(v13, &v10);
    v9 = v14;
    sub_27157D2FC(&v10);
    return v9;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      return a3.n128_u64[0];
    }

    if (*(a2 + 24) != 3)
    {
      goto LABEL_26;
    }

    sub_27154DC20(a2, &v10);
    sub_27154D928(v13, &v10);
    a3.n128_u64[0] = v14;
    v10 = &unk_288115A20;
    v3 = v12;
    if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return a3.n128_u64[0];
    }

    v9 = a3.n128_u64[0];
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    return v9;
  }

  if (*(a2 + 24) != 2)
  {
    goto LABEL_26;
  }

LABEL_24:
  sub_27154D928(v13, a2);
  return v14;
}

void sub_27154D8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_27154D900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27154D914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_27154D928(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_27157CE68(a2, 0);
  v12 = sub_27157F398(a2);
  v13 = sub_27157F5D4(a2);
  result = sub_27157F810(a2);
  v15 = v12;
  v16 = v12 | (v13 << 32);
  if (v13)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  *a1 = v11;
  a1[1] = v18;
  a1[2] = ((result >> 1) << 32) | 1;
  if (HIDWORD(v18) * (result >> 1) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        v24 = qword_28087C420;
        v23 = *algn_28087C428;

        return v24(v23, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v22 = *v19;
      v21 = *(v19 + 8);
      v19 += 16;
      v22(v21, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_32:
    abort();
  }

  return result;
}

void sub_27154DC20(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0 && (v5 = *a1) != 0)
  {
    *a2 = &unk_288115A20;
    a2[1] = v5;
    a2[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288115A20;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a2[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 223, "", 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_271852CA8);
    abort();
  }
}

uint64_t sub_27154DDA4(uint64_t a1, int a2, int a3, _DWORD *a4, __int16 a5)
{
  v12 = a5;
  *a1 = &unk_2881153F0;
  *(a1 + 8) = a2;
  sub_27154D224(a2, a4, a1 + 16);
  if (*a4)
  {
    v9 = a4[1] == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    *(a1 + 48) = *a4;
  }

  else
  {
    *(a1 + 48) = sub_27154D6E4(a2, a1 + 16, v8);
    *(a1 + 56) = v10;
  }

  if (!sub_27154608C(a1))
  {
    sub_27154E7DC(a1, v14);
    sub_27154EBE8(a1, v13);
    v15[0] = v13;
    v15[1] = &v12;
    sub_271574D20(v15);
    sub_27157D548(v14);
  }

  return a1;
}

void sub_27154DE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D548(va);
  sub_27154DEC8(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_27154DEC8(uint64_t a1)
{
  *a1 = &unk_2881153F0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

uint64_t sub_27154DF40(uint64_t a1, _DWORD *a2, __int128 *a3)
{
  *a1 = &unk_2881153F0;
  *(a1 + 8) = 0;
  sub_27154D224(0, a2, a1 + 16);
  if (*a2)
  {
    v7 = a2[1] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    *(a1 + 48) = *a2;
  }

  else
  {
    *(a1 + 48) = sub_27154D6E4(0, a1 + 16, v6);
    *(a1 + 56) = v8;
  }

  v10 = *a3;
  v11 = *(a3 + 2);
  if (!sub_27154608C(a1))
  {
    sub_27154E7DC(a1, v13);
    sub_27154EBE8(a1, v12);
    sub_271254000(&v10, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_27154E038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D548(va);
  sub_27154DEC8(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_27154E068(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881153F0;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v4 = *(a2 + 8);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v4 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = *(v4 + 4);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

LABEL_10:
  *(a1 + 8) = v8;
  *(a1 + 16) = &unk_288115A20;
  *(a1 + 24) = v4;
  v9 = *(a2 + 16);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  v10 = *(a2 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *v10;
  v11 = v10[1];
  if (!v11 || (atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 718, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "IsValid()", 9, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = sub_27157F398(a2);
  v16 = sub_27157F5D4(a2);
  v17 = sub_27157F810(a2);
  *(a1 + 48) = v15 | (v16 << 32);
  *(a1 + 56) = ((v17 >> 1) << 32) | 1;
  v18 = *(a2 + 8);
  if (!v18)
  {
    v22 = 0;
    goto LABEL_33;
  }

  v19 = *(v18 + 8);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
      v20 = *(a2 + 8);
      if (v20)
      {
        goto LABEL_28;
      }

LABEL_39:
      v22 = 0;
      if (!*(a1 + 48))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((v22 == 0) == (*(a1 + 52) == 0))
      {
        return a1;
      }

      goto LABEL_41;
    }
  }

  v20 = *(a2 + 8);
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_28:
  v22 = *v20;
  v21 = v20[1];
  if (!v21 || (atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_33:
    if (!*(a1 + 48))
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  if (*(a1 + 48))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v22)
  {
LABEL_41:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 114, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v23 = qword_28087C408, v24 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_48:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v23 = qword_28087C408;
      v24 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v23)(*(v23 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v23 += 16;
    }

    while (v23 != v24);
    if (byte_28087C430)
    {
      goto LABEL_48;
    }

LABEL_50:
    abort();
  }

  return a1;
}

void sub_27154E534(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_288115A20;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_288115A20;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_288115A20;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_27157F1D8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_288109288;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_288115A20;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_27154E7DC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_2715820B8(a2[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_27154DC20((a1 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a2 = &unk_288115A20;
    a2[1] = v16;
    a2[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_2715820B8(a2[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v4;
    a2[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_2715820B8(a2[1]);
      }
    }
  }
}

void sub_27154EB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27154EBE8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_27154608C(a1))
  {
    if (*(a1 + 52))
    {
      v4 = *(a1 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a1 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a2 = 0;
    a2[1] = v5;
    a2[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a1 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    v20 = &unk_288115A20;
    v21 = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        v20 = &unk_288115A20;
        v21 = v9;
        v22 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_27154D928(a2, &v20);
  v20 = &unk_288115A20;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_27154EF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27154EF3C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_27154DC20((a2 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}

void sub_27154F2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27154F348(int a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 24))
  {
    v4 = *(a3 + 28) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    operator new();
  }

  if (a1 == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }
}

void sub_27154F7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(&a9);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27154F7EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27154F808(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (*(a2 + 24) != 2)
      {
        goto LABEL_25;
      }

LABEL_23:
      sub_27154FA80(a2, &v15);
      v11 = v17;
      *a3 = v16;
      *(a3 + 16) = v11;
      *(a3 + 32) = v18;
      return;
    }

    if (a1 == 3)
    {
      if (*(a2 + 24) != 3)
      {
        goto LABEL_25;
      }

      sub_27154FE10(a2, &v12);
      sub_27154FA80(&v12, &v15);
      v4 = v17;
      *a3 = v16;
      *(a3 + 16) = v4;
      *(a3 + 32) = v18;
      v12 = &unk_288115A20;
      v5 = v14;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (*(a2 + 24) != 1)
      {
LABEL_25:
        sub_2711308D4();
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (*(a2 + 24))
    {
      goto LABEL_25;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v13 = v6;
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = v13;
    }

    v12 = &unk_2881152B0;
    if (v6)
    {
      v9 = *v6;
      v8 = v6[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }
      }

      if (v9)
      {
        sub_271581FB4(v13);
      }
    }

    sub_27154FA80(&v12, &v15);
    v10 = v17;
    *a3 = v16;
    *(a3 + 16) = v10;
    *(a3 + 32) = v18;
    sub_27157D2FC(&v12);
  }
}

void sub_27154FA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_27154FA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27154FA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_27154FA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_27157CE68(a1, 0);
  v12 = sub_27157F398(a1);
  v13 = sub_27157F5D4(a1);
  result = sub_27157F810(a1);
  v15 = result >> 1;
  v16 = v12;
  v17 = v12 | (v13 << 32);
  if (v13)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  HIDWORD(v26) = v19;
  LODWORD(v26) = 3;
  *a2 = v11;
  *(a2 + 8) = v26;
  *(a2 + 16) = HIDWORD(v19);
  *(a2 + 20) = 0x300000001;
  *(a2 + 28) = v15;
  *(a2 + 32) = v19;
  *(a2 + 40) = ((result >> 1) << 32) | 3;
  if (HIDWORD(v19) * v15 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        v25 = qword_28087C420;
        v24 = *algn_28087C428;

        return v25(v24, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v23 = *v20;
      v22 = *(v20 + 8);
      v20 += 16;
      v23(v22, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_32:
    abort();
  }

  return result;
}