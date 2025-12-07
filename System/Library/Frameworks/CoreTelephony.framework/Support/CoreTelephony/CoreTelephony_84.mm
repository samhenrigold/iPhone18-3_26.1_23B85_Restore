void sub_1005665A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005665CC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100566A9C(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_1005667D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056680C(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E56F80;
  return result;
}

void *sub_1005668F0(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56FC0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056696C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56FC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100566A40(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56FC0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100566A9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E71CC(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100566BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100566BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100566BD8);
  }

  JUMPOUT(0x100566BD4);
}

void *sub_100566C84(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57010;
  sub_100567474(a1 + 3, a2, *a3, a4);
  a1[9] = @"provisioned-devices-limit";
  a1[10] = @"device-list";
  a1[11] = @"unique-id";
  a1[12] = @"display-name";
  a1[13] = @"ims-private-identity";
  a1[14] = @"ims-public-identity";
  a1[3] = &off_101E57060;
  return a1;
}

void sub_100566D48(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57010;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100566DC8(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100566E00(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_10054EA70();
  }

  v5 = **(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 24));
    v7 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v9 = 2080;
    v10 = v7;
    v11 = 2080;
    v12 = ", ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_1005674E4();
}

void sub_100566F90(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100567634();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100567210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100567234(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100567704(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100567438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100567474(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E570B8;
  return result;
}

void *sub_100567558(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E570F8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1005675D4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E570F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1005676A8(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E570F8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100567704(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E73A0(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100567820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100567848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100567840);
  }

  JUMPOUT(0x10056783CLL);
}

void sub_100567888(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100567908(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100567940(uint64_t a1, int a2)
{
  if (a2 != 6000 && a2 != 6012)
  {
    v5 = **(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(**(a1 + 24));
      v8 = (*(*a1 + 40))(a1);
      *buf = 136315906;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v10 = 2080;
      v11 = v8;
      v12 = 2080;
      v13 = ", ";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
    }

    sub_1005681A8();
  }

  sub_10056802C();
}

void sub_100567AD8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_1005682F8();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100567D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100567D7C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_1005683C8(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100567F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100567FBC(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E57220;
  return result;
}

void sub_100568100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000296E0(va);
  sub_100004A34(v5);
  _Unwind_Resume(a1);
}

void sub_100568148(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57260;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056821C(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E572B0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100568298(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E572B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056836C(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E572B0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1005683C8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E7574(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_1005684E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10056850C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100568504);
  }

  JUMPOUT(0x100568500);
}

void sub_10056854C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57300;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1005685CC(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100568604(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100568CEC();
  }

  v4 = **(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 24));
    v6 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v8 = 2080;
    v9 = v6;
    v10 = 2080;
    v11 = ", ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_1005681A8();
}

void sub_100568798(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_1005682F8();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100568A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100568A3C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100568DE8(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100568C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100568C7C(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E573D8;
  return result;
}

void sub_100568DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000296E0(va);
  sub_100004A34(v5);
  _Unwind_Resume(a1);
}

void sub_100568DE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E7748(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100568F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100568F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100568F24);
  }

  JUMPOUT(0x100568F20);
}

void *sub_100568FD0(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57418;
  sub_1005690E8((a1 + 3), a2, *a3, a4);
  a1[3] = &off_101E57468;
  return a1;
}

void sub_10056906C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005690E8(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = sub_10056988C(a1, a2, a3, a4);
  *v5 = off_101E554F8;
  v5[6] = @"account-info-response";
  v5[7] = @"usage-info";
  v5[8] = @"subscription-info";
  v6 = objc_opt_new();
  *(a1 + 72) = v6;
  if (v6)
  {
    v7 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    [*(a1 + 72) setLocale:v7];
    [*(a1 + 72) setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ssz"];
    [*(a1 + 72) setTimeZone:{+[NSTimeZone timeZoneForSecondsFromGMT:](NSTimeZone, "timeZoneForSecondsFromGMT:", 0)}];
  }

  return a1;
}

void sub_1005691E0(uint64_t a1)
{
  sub_1005453D0(a1);

  operator delete();
}

void sub_100569218(const void **a1@<X0>, int a2@<W1>, const __CFDictionary *a3@<X2>, void *a4@<X8>)
{
  if (a2 != 6000)
  {
    v7 = *a1[5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(*a1[3]);
      v9 = (*(*a1 + 5))(a1);
      *buf = 136315906;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v11 = 2080;
      v12 = v9;
      v13 = 2080;
      v14 = ", ";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
    }

LABEL_7:
    sub_1005698FC();
  }

  sub_100545434(a3, a1, buf);
  v6 = *&buf[8];
  if (*buf)
  {
    goto LABEL_7;
  }

  *a4 = 0;
  a4[1] = 0;
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1005693A8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100569A4C();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100569628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056964C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100569B1C(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100569850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056988C(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E574C0;
  return result;
}

void *sub_100569970(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57500;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1005699EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100569AC0(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57500;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100569B1C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E791C(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100569C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100569C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100569C58);
  }

  JUMPOUT(0x100569C54);
}

void sub_100569CA0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57550;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100569D20(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100569D58(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    operator new();
  }

  v4 = **(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 24));
    v6 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v8 = 2080;
    v9 = v6;
    v10 = 2080;
    v11 = ", ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056A45C();
}

void sub_100569EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100569F08(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056A5AC();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10056A188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056A1AC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_10056A67C(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10056A3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056A3EC(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E57628;
  return result;
}

void *sub_10056A4D0(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57668;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056A54C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57668;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056A620(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57668;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056A67C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E7AF0(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_10056A798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10056A7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x10056A7B8);
  }

  JUMPOUT(0x10056A7B4);
}

void sub_10056A800(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E576B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056A880(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056A8B8(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100547088();
  }

  v6 = **(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(**(a1 + 24));
    v8 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v10 = 2080;
    v11 = v8;
    v12 = 2080;
    v13 = ", ";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056AF9C();
}

void sub_10056AA48(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056B0EC();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10056ACC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056ACEC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_10056B1BC(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10056AEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056AF2C(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E57790;
  return result;
}

void *sub_10056B010(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E577D0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056B08C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E577D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056B160(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E577D0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056B1BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E7CC4(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_10056B2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10056B300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x10056B2F8);
  }

  JUMPOUT(0x10056B2F4);
}

void sub_10056B340(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57820;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056B3C0(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056B3F8(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100548FC8();
  }

  v5 = **(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 24));
    v7 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v9 = 2080;
    v10 = v7;
    v11 = 2080;
    v12 = ", ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056BADC();
}

void sub_10056B588(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056BC2C();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10056B808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056B82C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_10056BCFC(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10056BA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056BA6C(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E578C8;
  return result;
}

void *sub_10056BB50(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57908;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056BBCC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57908;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056BCA0(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57908;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056BCFC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E7E98(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_10056BE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10056BE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x10056BE38);
  }

  JUMPOUT(0x10056BE34);
}

void sub_10056BE80(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57958;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056BF00(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056BF38(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_10054A704();
  }

  v5 = **(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 24));
    v7 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v9 = 2080;
    v10 = v7;
    v11 = 2080;
    v12 = ", ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056C61C();
}

void sub_10056C0C8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056C76C();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10056C348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056C36C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_10056C83C(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10056C570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056C5AC(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E57A30;
  return result;
}

void *sub_10056C690(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57A70;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056C70C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57A70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056C7E0(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57A70;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056C83C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E806C(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_10056C958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10056C980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x10056C978);
  }

  JUMPOUT(0x10056C974);
}

void sub_10056C9C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57AC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056CA40(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056CA78(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_10054AA08();
  }

  v5 = **(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 24));
    v7 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v9 = 2080;
    v10 = v7;
    v11 = 2080;
    v12 = ", ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056D15C();
}

void sub_10056CC08(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056D2AC();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10056CE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056CEAC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_10056D37C(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10056D0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056D0EC(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E57B98;
  return result;
}

void *sub_10056D1D0(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57BD8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056D24C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57BD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056D320(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57BD8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056D37C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E8240(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_10056D498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10056D4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x10056D4B8);
  }

  JUMPOUT(0x10056D4B4);
}

void sub_10056D500(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57C28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056D580(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056D5B8(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_10054AB64();
  }

  v5 = **(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 24));
    v7 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v9 = 2080;
    v10 = v7;
    v11 = 2080;
    v12 = ", ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056DC9C();
}

void sub_10056D748(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056DDEC();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10056D9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056D9EC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_10056DEBC(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10056DBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056DC2C(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E57D00;
  return result;
}

void *sub_10056DD10(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57D40;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056DD8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57D40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056DE60(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57D40;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056DEBC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E8414(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_10056DFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10056E000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x10056DFF8);
  }

  JUMPOUT(0x10056DFF4);
}

void sub_10056E040(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57D90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056E0C0(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056E0F8(uint64_t a1, int a2)
{
  if (sub_10054ACC0(a1, a2))
  {
    sub_10054ADEC();
  }

  v4 = **(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 24));
    v6 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v8 = 2080;
    v9 = v6;
    v10 = 2080;
    v11 = ", ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056E7E8();
}

void sub_10056E294(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056E938();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10056E514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056E538(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_10056EA08(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10056E73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056E778(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E57E68;
  return result;
}

void *sub_10056E85C(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57EA8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056E8D8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056E9AC(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57EA8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056EA08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E85E8(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_10056EB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10056EB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x10056EB44);
  }

  JUMPOUT(0x10056EB40);
}

void sub_10056EB8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57EF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056EC0C(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056EC44(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_10054DE58();
  }

  v5 = **(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 24));
    v7 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v9 = 2080;
    v10 = v7;
    v11 = 2080;
    v12 = ", ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056F328();
}

void sub_10056EDD4(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056F478();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10056F054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056F078(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_10056F548(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10056F27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056F2B8(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E57FA0;
  return result;
}

void *sub_10056F39C(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57FE0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056F418(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57FE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056F4EC(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57FE0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056F548(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E87BC(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_10056F664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10056F68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x10056F684);
  }

  JUMPOUT(0x10056F680);
}

void sub_10056F6CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056F74C(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056F784(uint64_t a1, int a2)
{
  if (sub_10054BD4C(a1, a2))
  {
    sub_10054BE78();
  }

  v5 = **(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 24));
    v7 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v9 = 2080;
    v10 = v7;
    v11 = 2080;
    v12 = ", ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056FE74();
}

void sub_10056F920(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056FFC4();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10056FBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056FBC4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100570094(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10056FDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056FE04(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E58108;
  return result;
}

void *sub_10056FEE8(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58148;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056FF64(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100570038(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58148;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100570094(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E8990(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_1005701B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1005701D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x1005701D0);
  }

  JUMPOUT(0x1005701CCLL);
}

void *sub_10057027C(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58198;
  sub_100570A78(a1 + 3, a2, *a3, a4);
  a1[9] = @"token-scopes";
  a1[10] = @"status";
  a1[11] = @"scope";
  a1[12] = @"tokens";
  a1[13] = @"mp-tokens";
  a1[14] = @"token";
  a1[15] = @"devices";
  a1[3] = &off_101E581E8;
  return a1;
}

void sub_10057034C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58198;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1005703CC(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100570404(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_10054F1F8();
  }

  v5 = **(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 24));
    v7 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v9 = 2080;
    v10 = v7;
    v11 = 2080;
    v12 = ", ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_100570AE8();
}

void sub_100570594(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100570C38();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100570814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100570838(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100570D08(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100570A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100570A78(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E58240;
  return result;
}

void *sub_100570B5C(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58280;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100570BD8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58280;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100570CAC(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58280;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100570D08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E8B64(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100570E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100570E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100570E44);
  }

  JUMPOUT(0x100570E40);
}

void sub_100570E8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E582D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100570F0C(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100570F44(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_10057162C();
  }

  v4 = **(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 24));
    v6 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v8 = 2080;
    v9 = v6;
    v10 = 2080;
    v11 = ", ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_1005681A8();
}

void sub_1005710D8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_1005682F8();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100571358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057137C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100571728(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100571580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_1005715BC(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E583A8;
  return result;
}

void sub_100571700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000296E0(va);
  sub_100004A34(v5);
  _Unwind_Resume(a1);
}

void sub_100571728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = a4[1];
    v15[0] = *a4;
    v15[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v14, a5);
    sub_100060E84(&v13, a6);
    sub_100440DF0(a1, a2, a3, v15, &v14, &v13);
  }

  if (!v10)
  {
    v11 = a4[1];
    v17[1] = *a4;
    v18 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v17, a5);
    sub_100060E84(&v16, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v16);
    sub_10001021C(v17);
    if (v18)
    {
      sub_100004A34(v18);
    }
  }
}

void sub_100571844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10057186C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100571864);
  }

  JUMPOUT(0x100571860);
}

void sub_1005718AC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E583E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10057192C(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100571964(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_10057204C();
  }

  v4 = **(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 24));
    v6 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v8 = 2080;
    v9 = v6;
    v10 = 2080;
    v11 = ", ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_1005681A8();
}

void sub_100571AF8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_1005682F8();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100571D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100571D9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100572148(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100571FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100571FDC(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E584C0;
  return result;
}

void sub_100572120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000296E0(va);
  sub_100004A34(v5);
  _Unwind_Resume(a1);
}

void sub_100572148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = a4[1];
    v15[0] = *a4;
    v15[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v14, a5);
    sub_100060E84(&v13, a6);
    sub_100440F9C(a1, a2, a3, v15, &v14, &v13);
  }

  if (!v10)
  {
    v11 = a4[1];
    v17[1] = *a4;
    v18 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v17, a5);
    sub_100060E84(&v16, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v16);
    sub_10001021C(v17);
    if (v18)
    {
      sub_100004A34(v18);
    }
  }
}

void sub_100572264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10057228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100572284);
  }

  JUMPOUT(0x100572280);
}

void *sub_100572330(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58500;
  sub_100572B34(a1 + 3, a2, *a3, a4);
  a1[9] = @"configuration-profiles";
  a1[10] = @"profile-name";
  a1[11] = @"version";
  a1[12] = @"geofences";
  a1[13] = @"geofence-id";
  a1[14] = @"latitude";
  a1[15] = @"longitude";
  a1[16] = @"radius";
  a1[3] = &off_101E58550;
  return a1;
}

void sub_100572408(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100572488(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_1005724C0(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100550D18();
  }

  v5 = **(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 24));
    v7 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v9 = 2080;
    v10 = v7;
    v11 = 2080;
    v12 = ", ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_100572BA4();
}

void sub_100572650(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100572CF4();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1005728D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005728F4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100572DC4(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100572AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100572B34(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E585A8;
  return result;
}

void *sub_100572C18(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E585E8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100572C94(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E585E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100572D68(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E585E8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100572DC4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E8D38(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100572EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100572F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100572F00);
  }

  JUMPOUT(0x100572EFCLL);
}

void sub_100573010(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58638;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100573090(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_1005730C8(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100551690();
  }

  v5 = **(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 24));
    v7 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v9 = 2080;
    v10 = v7;
    v11 = 2080;
    v12 = ", ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_1005737AC();
}

void sub_100573258(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_1005738FC();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1005734D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005734FC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_1005739CC(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100573700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10057373C(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E586E0;
  return result;
}

void *sub_100573820(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58720;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10057389C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58720;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100573970(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58720;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1005739CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E8F0C(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100573AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100573B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100573B08);
  }

  JUMPOUT(0x100573B04);
}

void sub_100573C2C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58770;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100573CAC(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100573CE4(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100551B80();
  }

  v5 = **(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 24));
    v7 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v9 = 2080;
    v10 = v7;
    v11 = 2080;
    v12 = ", ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_1005743C8();
}

void sub_100573E74(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100574518();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1005740F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100574118(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_1005745E8(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10057431C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100574358(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E58818;
  return result;
}

void *sub_10057443C(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58858;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1005744B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58858;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10057458C(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58858;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1005745E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E90E0(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100574704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10057472C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100574724);
  }

  JUMPOUT(0x100574720);
}

void sub_100574820(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E588A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1005748A0(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_1005748D8(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_10055252C();
  }

  v5 = **(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 24));
    v7 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v9 = 2080;
    v10 = v7;
    v11 = 2080;
    v12 = ", ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_100574FBC();
}

void sub_100574A68(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10057510C();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100574CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100574D0C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_1005751DC(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100574F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100574F4C(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E58950;
  return result;
}

void *sub_100575030(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58990;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1005750AC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58990;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100575180(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58990;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1005751DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E92B4(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_1005752F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100575320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100575318);
  }

  JUMPOUT(0x100575314);
}

void sub_100575360(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x34u);
}

uint64_t sub_100575380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 40) = a2;
  v4 = **(a1 + 24);

  return PersonalityInfo::logPrefix(v4);
}

id sub_10057539C()
{

  return [v0 UTF8String];
}

void sub_10057578C(_Unwind_Exception *a1)
{
  shared_weak_owners = v1[8].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    sub_100004A34(shared_weak_owners);
  }

  sub_10001021C(v4 + 1);
  sub_10001021C(v4);
  v7 = v1[7].__vftable;
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = v1[6].__vftable;
  if (v8)
  {
    sub_100004A34(v8);
  }

  std::mutex::~mutex(v3);
  ctu::OsLogLogger::~OsLogLogger(&v1[2].__shared_weak_owners_);
  sub_1000C0544(&v1[1].__shared_owners_);
  if (v2)
  {
    sub_100004A34(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void *sub_100575868(void *a1)
{
  *a1 = off_101E58B70;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 3));

  return sub_1002A493C(a1);
}

void sub_1005758D0(void *a1)
{
  sub_100575868(a1);

  operator delete();
}

const char *sub_100575958(uint64_t a1)
{
  v1 = sub_1002A4990(a1);
  v2 = "ipcu-apn.?";
  if (v1 == 2)
  {
    v2 = "ipcu-apn.2";
  }

  if (v1 == 1)
  {
    return "ipcu-apn.1";
  }

  else
  {
    return v2;
  }
}

BOOL sub_100575998(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1002A4990(a1);
  std::mutex::lock((v1 + 48));
  v3 = *(v1 + 128) == v2 && (*(v1 + 168) & 1) == 0 && *(v1 + 152) != 0;
  std::mutex::unlock((v1 + 48));
  return v3;
}

void sub_1005759FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_1002A4990(a1);
  std::mutex::lock((v2 + 48));
  if (*(v2 + 128) == v3 && (*(v2 + 168) & 1) == 0)
  {
    v4 = *(v2 + 136);
    v5 = *(v2 + 144);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  std::mutex::unlock((v2 + 48));
  v8 = *(a1 + 24);
  v6 = (a1 + 24);
  v7 = v8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I DATA:: IPCU_APN_Storage:", v9, 2u);
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v4 != 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t%d APN(s) found", v9, 8u);
  }

  if (v4)
  {
    sub_1002A24E4(v4, v6);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_100575B50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100575B68(uint64_t a1@<X0>, const void **a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = sub_1002A4990(a1);

  sub_100575DDC(v3, v4, a2);
}

void sub_100575BAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a3;
  v7 = *(a1 + 32);
  v8 = sub_1002A4990(a1);

  sub_100575E50(v7, v8, a2, v4, a4);
}

void sub_100575C28(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58C40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100575CA4(uint64_t a1)
{
  *a1 = off_101E58C90;
  v2 = *(a1 + 184);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001021C((a1 + 160));
  sub_10001021C((a1 + 152));
  v3 = *(a1 + 144);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    sub_100004A34(v4);
  }

  std::mutex::~mutex((a1 + 48));
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_100575D30(uint64_t a1)
{
  *a1 = off_101E58C90;
  v2 = *(a1 + 184);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001021C((a1 + 160));
  sub_10001021C((a1 + 152));
  v3 = *(a1 + 144);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    sub_100004A34(v4);
  }

  std::mutex::~mutex((a1 + 48));
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  operator delete();
}

void sub_100575DDC(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>)
{
  std::mutex::lock((a1 + 48));
  if (*(a1 + 128) == a2 && (*(a1 + 168) & 1) == 0)
  {
    sub_100010024(a3, (a1 + 160));
  }

  else
  {
    *a3 = 0;
  }

  std::mutex::unlock((a1 + 48));
}

void sub_100575E50(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v31 = (a1 + 48);
  v32 = 1;
  std::mutex::lock((a1 + 48));
  if (*(a1 + 128) != a2)
  {
    goto LABEL_43;
  }

  if (*(a1 + 168))
  {
    goto LABEL_43;
  }

  v10 = *(a1 + 136);
  if (!v10)
  {
    goto LABEL_43;
  }

  if ((*(v10 + 228) & a4) != 0)
  {
    goto LABEL_39;
  }

  v11 = *(a1 + 112);
  *(v10 + 152) = *(a1 + 172);
  *(v10 + 228) = 236;
  *(v10 + 232) = 1;
  ServiceMap = Registry::getServiceMap(v11);
  v13 = ServiceMap;
  if ((v14 & 0x8000000000000000) != 0)
  {
    v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
    v16 = 5381;
    do
    {
      v14 = v16;
      v17 = *v15++;
      v16 = (33 * v16) ^ v17;
    }

    while (v17);
  }

  std::mutex::lock(ServiceMap);
  v29 = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, &v29);
  if (!v18)
  {
    std::mutex::unlock(v13);
    goto LABEL_13;
  }

  v20 = v18[3];
  v19 = v18[4];
  if (!v19)
  {
    std::mutex::unlock(v13);
    if (v20)
    {
      goto LABEL_15;
    }

LABEL_13:
    v21 = 0;
    v22 = 0;
    goto LABEL_22;
  }

  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v13);
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v19);
  if (!v20)
  {
    v21 = 0;
    v22 = 0;
LABEL_21:
    sub_100004A34(v19);
    goto LABEL_22;
  }

LABEL_15:
  v29 = 0;
  v30 = 0;
  sub_1004196C0(v20, &v29);
  if (v29)
  {
    sub_1005768D0(&v31);
    (*(*v29 + 72))(v28);
    v22 = v28[0];
    v21 = v28[1];
    sub_100576914(&v31);
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  if (v30)
  {
    sub_100004A34(v30);
  }

  if (v19)
  {
    goto LABEL_21;
  }

LABEL_22:
  v23 = CIPFamily::operator!();
  if (v23)
  {
    if (!v22)
    {
      DataUtils::defaultIPFamily(v23);
    }

    CIPFamily::operator=();
  }

  v24 = CIPFamily::operator!();
  if (v24)
  {
    if (!v22)
    {
      DataUtils::defaultIPFamily(v24);
    }

    CIPFamily::operator=();
  }

  v25 = *(a1 + 136);
  if ((*(v25 + 216) & 1) == 0)
  {
    if (!v22)
    {
      goto LABEL_37;
    }

    if (*(v22 + 216) == 1)
    {
      sub_1002ABB94((v25 + 200), (v22 + 200));
      v25 = *(a1 + 136);
    }

    goto LABEL_36;
  }

  if (v22)
  {
LABEL_36:
    *(v25 + 228) = *(v22 + 228);
  }

LABEL_37:
  sub_1002A6298(v25, (a1 + 112), *(a1 + 128));
  if (v21)
  {
    sub_100004A34(v21);
  }

LABEL_39:
  v26 = *(a1 + 136);
  if (!v26 || (*(v26 + 152) & a3) == 0)
  {
LABEL_43:
    *a5 = 0;
    a5[1] = 0;
    goto LABEL_44;
  }

  v27 = *(a1 + 144);
  *a5 = v26;
  a5[1] = v27;
  if (v27)
  {
    atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_44:
  if (v32 == 1)
  {
    std::mutex::unlock(v31);
  }
}

void sub_10057613C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::mutex *a13, char a14)
{
  if (a12)
  {
    sub_100004A34(a12);
    if (!v14)
    {
LABEL_6:
      if (a14 == 1)
      {
        std::mutex::unlock(a13);
      }

      _Unwind_Resume(exception_object);
    }
  }

  else if (!v14)
  {
    goto LABEL_6;
  }

  sub_100004A34(v14);
  goto LABEL_6;
}

void sub_1005761C0(uint64_t a1@<X0>, const void **a2@<X8>)
{
  std::mutex::lock((a1 + 48));
  if (*(a1 + 168) == 1)
  {
    sub_100010024(a2, (a1 + 152));
  }

  else
  {
    *a2 = 0;
  }

  std::mutex::unlock((a1 + 48));
}

void sub_100576220(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I refresh", buf, 2u);
  }

  std::mutex::lock((a1 + 48));
  v3 = *(a1 + 128);
  v5 = 0;
  sub_100010024(&v5, (a1 + 160));
  v4 = *(a1 + 144);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_100576974(a1, v3, v5);
  sub_10001021C(&v5);
  std::mutex::unlock((a1 + 48));
}

void sub_1005762D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  std::mutex::unlock((v3 + 48));
  _Unwind_Resume(a1);
}

void sub_1005762EC(uint64_t a1)
{
  std::mutex::lock((a1 + 48));
  v2 = (a1 + 40);
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I  | IPCU_CellProfile:", v11, 2u);
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = subscriber::asString();
    *v11 = 136315138;
    *&v11[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I  | IPCU profile assigned to: %s", v11, 0xCu);
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = asStringBool(*(a1 + 168));
    *v11 = 136315138;
    *&v11[4] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I  | NAI mode: %s", v11, 0xCu);
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 136315394;
    *&v11[4] = "";
    *&v11[12] = 2080;
    *&v11[14] = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s | APN dict:", v11, 0x16u);
  }

  *v11 = off_101E58DA0;
  *&v11[8] = a1;
  v12 = v11;
  logger::CFTypeRefLogger();
  sub_100007E44(v11);
  v6 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 136315394;
    *&v11[4] = "";
    *&v11[12] = 2080;
    *&v11[14] = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s | AttachAPN:", v11, 0x16u);
  }

  *v11 = off_101E58E20;
  *&v11[8] = a1;
  v12 = v11;
  logger::CFTypeRefLogger();
  sub_100007E44(v11);
  v7 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 172);
    *v11 = 67109120;
    *&v11[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I  | fIPCUApnTypemask: 0x%X", v11, 8u);
  }

  v9 = *(a1 + 136);
  if (v9)
  {
    sub_1002A24E4(v9, (a1 + 40));
  }

  else
  {
    v10 = *v2;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I  | APN: not present", v11, 2u);
    }
  }

  std::mutex::unlock((a1 + 48));
}

void sub_10057662C(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 48));
  sub_100578290(a1);
  (*(**(a1 + 176) + 16))(*(a1 + 176), @"profile", a2, @"com.apple.commcenter.cellular_profile", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  sub_100577D44(a1);
}

void sub_100576728(uint64_t a1)
{
  std::mutex::lock((a1 + 48));
  sub_100578290(a1);
  sub_100577D44(a1);
}

void sub_1005767CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::mutex::lock((a1 + 48));
  *a2 = 0;
  (*(**(a1 + 176) + 40))(&v4);
  sub_100010180(a2, &v4);
  sub_10000A1EC(&v4);
  std::mutex::unlock((a1 + 48));
}

void sub_100576874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  std::mutex::unlock((v3 + 48));
  _Unwind_Resume(a1);
}

uint64_t sub_100576898(uint64_t a1)
{
  std::mutex::lock((a1 + 48));
  v2 = *(a1 + 128);
  std::mutex::unlock((a1 + 48));
  return v2;
}

void sub_1005768D0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::mutex::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    sub_100576914(v2);
  }
}

void sub_100576914(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::mutex::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  sub_100576974(v3, v4, v5);
}

void sub_100576974(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = *(a1 + 40);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I reactOnRefresh", buf, 2u);
  }

  if (*(a1 + 152) || *(a1 + 160))
  {
    v8 = capabilities::ct::supportsGemini(v7);
    if (!v8 || !*(a1 + 128))
    {
LABEL_79:
      if (*(a1 + 128))
      {
        goto LABEL_158;
      }

      if ((capabilities::ct::supportsGemini(v8) & 1) == 0)
      {
        __TUAssertTrigger("capabilities::ct::supportsGemini()");
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 112));
      v40 = ServiceMap;
      if (v41 < 0)
      {
        v42 = (v41 & 0x7FFFFFFFFFFFFFFFLL);
        v43 = 5381;
        do
        {
          v41 = v43;
          v44 = *v42++;
          v43 = (33 * v43) ^ v44;
        }

        while (v44);
      }

      std::mutex::lock(ServiceMap);
      *buf = v41;
      v45 = sub_100009510(&v40[1].__m_.__sig, buf);
      if (v45)
      {
        v47 = v45[3];
        v46 = v45[4];
        if (v46)
        {
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v40);
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          v116 = v46;
          sub_100004A34(v46);
          v48 = 0;
LABEL_90:
          v124 = 0;
          p_p = 0;
          (*(*v47 + 8))(&v124, v47, 1);
          v122 = 0;
          v123 = 0;
          v117 = v48;
          (*(*v47 + 8))(&v122, v47, 2);
          if (v124 && isReal() && (v124[2].__r_.__value_.__s.__data_[14] & 1) == 0)
          {
            v49 = v124[2].__r_.__value_.__s.__data_[15] ^ 1;
          }

          else
          {
            v49 = 0;
          }

          if (v122 && isReal() && (*(v122 + 62) & 1) == 0)
          {
            v50 = *(v122 + 63) ^ 1;
          }

          else
          {
            v50 = 0;
          }

          v51 = Registry::getServiceMap(*(a1 + 112));
          v52 = v51;
          if (v53 < 0)
          {
            v54 = (v53 & 0x7FFFFFFFFFFFFFFFLL);
            v55 = 5381;
            do
            {
              v53 = v55;
              v56 = *v54++;
              v55 = (33 * v55) ^ v56;
            }

            while (v56);
          }

          std::mutex::lock(v51);
          *buf = v53;
          v57 = sub_100009510(&v52[1].__m_.__sig, buf);
          if (v57)
          {
            v59 = v57[3];
            v58 = v57[4];
            if (v58)
            {
              atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v52);
              atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v58);
              v60 = 0;
              if (!v59)
              {
                goto LABEL_104;
              }

              goto LABEL_108;
            }
          }

          else
          {
            v59 = 0;
          }

          std::mutex::unlock(v52);
          v58 = 0;
          v60 = 1;
          if (!v59)
          {
LABEL_104:
            v61 = *(a1 + 40);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I findSlotAssignment, DataService is missing", buf, 2u);
            }

LABEL_150:
            if ((v60 & 1) == 0)
            {
              sub_100004A34(v58);
            }

            if (v123)
            {
              sub_100004A34(v123);
            }

            if (p_p)
            {
              sub_100004A34(p_p);
            }

            if ((v117 & 1) == 0)
            {
              sub_100004A34(v116);
            }

            goto LABEL_158;
          }

LABEL_108:
          v62 = (*(*v59 + 792))(v59);
          memset(&__p, 0, sizeof(__p));
          v63 = *(a1 + 40);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            v114 = a2;
            v115 = v60;
            v113 = a3;
            v64 = asStringBool(v49 & 1);
            v65 = asStringBool(v50 & 1);
            if (v124)
            {
              data = &v124[1];
              size = HIBYTE(v124[1].__r_.__value_.__r.__words[2]);
              v68 = size;
              if ((size & 0x80u) != 0)
              {
                size = v124[1].__r_.__value_.__l.__size_;
              }

              if (v68 < 0)
              {
                data = v124[1].__r_.__value_.__l.__data_;
              }

              if (size)
              {
                v69 = data;
              }

              else
              {
                v69 = "<invalid>";
              }
            }

            else
            {
              v69 = "-";
            }

            if (v122)
            {
              v70 = (v122 + 24);
              v71 = *(v122 + 47);
              v72 = v71;
              if ((v71 & 0x80u) != 0)
              {
                v71 = *(v122 + 32);
              }

              if (v72 < 0)
              {
                v70 = *(v122 + 24);
              }

              if (v71)
              {
                v73 = v70;
              }

              else
              {
                v73 = "<invalid>";
              }
            }

            else
            {
              v73 = "-";
            }

            v74 = subscriber::asString();
            *buf = 136316162;
            *&buf[4] = v64;
            *&buf[12] = 2080;
            *&buf[14] = v65;
            *&buf[22] = 2080;
            v127 = v69;
            v128 = 2080;
            v129 = v73;
            v130 = 2080;
            v131 = v74;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I findSlotAssignment, sim1:%s, sim2:%s, persona1:%s, persona2:%s, data preferred:%s", buf, 0x34u);
            a2 = v114;
            v60 = v115;
            a3 = v113;
          }

          if (v49 & v50)
          {
            if ((v62 - 1) > 1)
            {
              v77 = *(a1 + 40);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "#I cannot find preferred slot for IPCU profile while in Dual Sim mode", buf, 2u);
              }

              goto LABEL_142;
            }

            *(a1 + 128) = v62;
            v75 = &v122;
            if (v62 == 1)
            {
              v75 = &v124;
            }

            v76 = *v75;
          }

          else if (v49)
          {
            *(a1 + 128) = 1;
            v76 = v124;
          }

          else
          {
            if ((v50 & 1) == 0)
            {
LABEL_142:
              v78 = *(a1 + 128);
              v79 = *(a1 + 40);
              v80 = os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT);
              if (v78)
              {
                if (v80)
                {
                  v81 = subscriber::asString();
                  *buf = 136315138;
                  *&buf[4] = v81;
                  _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "#I assigned IPCU profile on slot %s", buf, 0xCu);
                  v78 = *(a1 + 128);
                }

                sub_100577A88(a1, v78, &__p);
                sub_100577D44(a1);
              }

              if (v80)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "#I slot for IPCU profile not yet defined", buf, 2u);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              goto LABEL_150;
            }

            *(a1 + 128) = 2;
            v76 = v122;
          }

          std::string::operator=(&__p, v76 + 1);
          goto LABEL_142;
        }
      }

      else
      {
        v47 = 0;
      }

      std::mutex::unlock(v40);
      v116 = 0;
      v48 = 1;
      goto LABEL_90;
    }

    v120 = 0;
    (*(**(a1 + 176) + 40))(buf);
    sub_100060DE8(&v120, buf);
    sub_10000A1EC(buf);
    if (!v120)
    {
LABEL_78:
      v8 = sub_100005978(&v120);
      goto LABEL_79;
    }

    memset(&__p, 0, sizeof(__p));
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    v9 = *buf;
    LODWORD(v124) = *&buf[16];
    *(&v124 + 3) = *&buf[19];
    if (buf[23] < 0)
    {
      sub_100005F2C(&__p, *buf, *&buf[8]);
      operator delete(v9);
    }

    else
    {
      *&__p.__r_.__value_.__l.__data_ = *buf;
      LODWORD(__p.__r_.__value_.__r.__words[2]) = v124;
      *(&__p.__r_.__value_.__r.__words[2] + 3) = *(&v124 + 3);
      *(&__p.__r_.__value_.__s + 23) = buf[23];
    }

    v124 = a1;
    p_p = &__p;
    v10 = Registry::getServiceMap(*(a1 + 112));
    v11 = v10;
    if (v12 < 0)
    {
      v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
      v14 = 5381;
      do
      {
        v12 = v14;
        v15 = *v13++;
        v14 = (33 * v14) ^ v15;
      }

      while (v15);
    }

    std::mutex::lock(v10);
    *buf = v12;
    v16 = sub_100009510(&v11[1].__m_.__sig, buf);
    if (v16)
    {
      v18 = v16[3];
      v17 = v16[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v11);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v19 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
LABEL_19:
    v122 = 0;
    v123 = 0;
    (*(*v18 + 8))(&v122, v18, 1);
    v118 = 0;
    v119 = 0;
    (*(*v18 + 8))(&v118, v18, 2);
    if (*(a1 + 128) == 1)
    {
      if ((!v122 || !sub_100071DF8((v122 + 24), &__p)) && v118 && sub_100071DF8((v118 + 24), &__p))
      {
        v20 = *(a1 + 40);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = subscriber::asString();
          v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v22 = __p.__r_.__value_.__l.__size_;
          }

          v23 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v23 = __p.__r_.__value_.__r.__words[0];
          }

          if (v22)
          {
            v24 = v23;
          }

          else
          {
            v24 = "<invalid>";
          }

          *buf = 136315394;
          *&buf[4] = v21;
          *&buf[12] = 2080;
          *&buf[14] = v24;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I re-assigned IPCU profile on slot %s since initial SIM %s was moved there", buf, 0x16u);
        }

        v25 = 2;
        goto LABEL_48;
      }
    }

    else if ((!v118 || !sub_100071DF8((v118 + 24), &__p)) && v122 && sub_100071DF8((v122 + 24), &__p))
    {
      v26 = *(a1 + 40);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = subscriber::asString();
        v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = __p.__r_.__value_.__l.__size_;
        }

        v29 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v29 = __p.__r_.__value_.__r.__words[0];
        }

        if (v28)
        {
          v30 = v29;
        }

        else
        {
          v30 = "<invalid>";
        }

        *buf = 136315394;
        *&buf[4] = v27;
        *&buf[12] = 2080;
        *&buf[14] = v30;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I re-assigned IPCU profile on slot %s since initial SIM %s was moved there", buf, 0x16u);
      }

      v25 = 1;
LABEL_48:
      p_data = &v124->__r_.__value_.__l.__data_;
      v31 = p_p;
      LODWORD(v124[5].__r_.__value_.__r.__words[1]) = v25;
      sub_100577A88(p_data, v25, v31);
      sub_100577D44(p_data);
    }

    v33 = *(a1 + 128);
    if (v33 == 1)
    {
      if (!v122)
      {
LABEL_70:
        if (v119)
        {
          sub_100004A34(v119);
        }

        if (v123)
        {
          sub_100004A34(v123);
        }

        if ((v19 & 1) == 0)
        {
          sub_100004A34(v17);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_78;
      }

      if (sub_100071DF8((v122 + 24), &__p) && *(v122 + 62) == 1 && (*(v122 + 63) & 1) != 0)
      {
LABEL_60:
        v34 = *(a1 + 40);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = subscriber::asString();
          v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v36 = __p.__r_.__value_.__l.__size_;
          }

          v37 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v37 = __p.__r_.__value_.__r.__words[0];
          }

          if (v36)
          {
            v38 = v37;
          }

          else
          {
            v38 = "<invalid>";
          }

          *buf = 136315394;
          *&buf[4] = v35;
          *&buf[12] = 2080;
          *&buf[14] = v38;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I unassigned IPCU profile from slot %s since initial SIM %s happens to be irrelevant", buf, 0x16u);
        }

        sub_100577A48(&v124, 0);
      }

      v33 = *(a1 + 128);
    }

    if (v33 == 2 && v118 && sub_100071DF8((v118 + 24), &__p) && *(v118 + 62) == 1 && *(v118 + 63) == 1)
    {
      goto LABEL_60;
    }

    goto LABEL_70;
  }

LABEL_158:
  if (*(a1 + 152))
  {
    v82 = *(a1 + 128);
    if (v82)
    {
      __p.__r_.__value_.__r.__words[0] = 0;
      v83 = Registry::getServiceMap(*(a1 + 112));
      v84 = v83;
      if (v85 < 0)
      {
        v86 = (v85 & 0x7FFFFFFFFFFFFFFFLL);
        v87 = 5381;
        do
        {
          v85 = v87;
          v88 = *v86++;
          v87 = (33 * v87) ^ v88;
        }

        while (v88);
      }

      std::mutex::lock(v83);
      *buf = v85;
      v89 = sub_100009510(&v84[1].__m_.__sig, buf);
      if (v89)
      {
        v91 = v89[3];
        v90 = v89[4];
        if (v90)
        {
          atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v84);
          atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v90);
          v92 = 0;
          goto LABEL_168;
        }
      }

      else
      {
        v91 = 0;
      }

      std::mutex::unlock(v84);
      v90 = 0;
      v92 = 1;
LABEL_168:
      (*(*v91 + 96))(&v124, v91, v82, 1, @"IPCUApnTypemask", 0, 0);
      sub_10010B240(&__p, &v124);
      sub_10000A1EC(&v124);
      if ((v92 & 1) == 0)
      {
        sub_100004A34(v90);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        *buf = 0;
        ctu::cf::assign(buf, __p.__r_.__value_.__l.__data_, v93);
        v94 = *buf;
      }

      else
      {
        v94 = 1;
      }

      *(a1 + 172) = v94;
      sub_100029A48(&__p.__r_.__value_.__l.__data_);
      sub_1002A938C(buf);
    }
  }

  v95 = *(a1 + 160);
  if ((a3 != 0) == (v95 == 0) || v95 && (!CFEqual(v95, a3) || *(a1 + 160) && *(a1 + 128) != a2))
  {
    v96 = *(a1 + 128);
    if (v96)
    {
      v97 = *(a1 + 40);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        v98 = subscriber::asString();
        *buf = 136315138;
        *&buf[4] = v98;
        _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "#I trigger data::refreshAttachApn for slot %s", buf, 0xCu);
        v96 = *(a1 + 128);
      }

      sub_1002A945C(event::data::refreshAttachApn, v96, "ipcu-attachapn-added");
    }

    else if (a2)
    {
      v99 = *(a1 + 40);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        v100 = subscriber::asString();
        *buf = 136315138;
        *&buf[4] = v100;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "#I trigger data::refreshAttachApn for prev slot %s", buf, 0xCu);
      }

      sub_1002A945C(event::data::refreshAttachApn, a2, "ipcu-attachapn-revoked");
    }
  }

  if (!*(a1 + 152) || !*(a1 + 128))
  {
    goto LABEL_197;
  }

  v101 = Registry::getServiceMap(*(a1 + 112));
  v102 = v101;
  if (v103 < 0)
  {
    v104 = (v103 & 0x7FFFFFFFFFFFFFFFLL);
    v105 = 5381;
    do
    {
      v103 = v105;
      v106 = *v104++;
      v105 = (33 * v105) ^ v106;
    }

    while (v106);
  }

  std::mutex::lock(v101);
  *buf = v103;
  v107 = sub_100009510(&v102[1].__m_.__sig, buf);
  if (!v107)
  {
    std::mutex::unlock(v102);
LABEL_197:
    v110 = 0;
    LODWORD(v109) = 0;
    goto LABEL_198;
  }

  v109 = v107[3];
  v108 = v107[4];
  if (v108)
  {
    atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v102);
    atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v108);
    if (!v109)
    {
      v110 = 0;
LABEL_211:
      sub_100004A34(v108);
      goto LABEL_198;
    }
  }

  else
  {
    std::mutex::unlock(v102);
    if (!v109)
    {
      v110 = 0;
      goto LABEL_198;
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  (*(*v109 + 16))(buf, v109, *(a1 + 128));
  LODWORD(v109) = *buf != 0;
  if (*buf)
  {
    v110 = (*(**buf + 88))();
  }

  else
  {
    v110 = 0;
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v108)
  {
    goto LABEL_211;
  }

LABEL_198:
  v111 = *(a1 + 40);
  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
  {
    if (v109)
    {
      v112 = asStringBool(v110);
    }

    else
    {
      v112 = "no NAI selector, assuming false";
    }

    *buf = 136315138;
    *&buf[4] = v112;
    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "#I NAI mode: %s", buf, 0xCu);
  }

  *(a1 + 168) = v109 & v110;
}

void sub_1005778A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, int a13, int a14, uint64_t a15, std::__shared_weak_count *a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a25)
  {
    sub_100004A34(a25);
  }

  if ((v34 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a17);
  _Unwind_Resume(a1);
}

void sub_100577A48(uint64_t *a1, int a2)
{
  v3 = *a1;
  v2 = a1[1];
  *(v3 + 128) = a2;
  sub_100577A88(v3, a2, v2);

  sub_100577D44(v3);
}

const void **sub_100577A88(const void **result, int a2, uint64_t a3)
{
  v3 = result;
  if ((a2 - 1) < 2)
  {
    v6 = result[22];
    v15 = 0;
    LOBYTE(valuePtr) = a2;
    v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
    if (v7)
    {
      v15 = v7;
      valuePtr = 0;
      sub_100029A48(&valuePtr);
      v8 = v15;
    }

    else
    {
      v8 = 0;
    }

    v14 = v8;
    v15 = 0;
    sub_100029A48(&v15);
    (*(*v6 + 16))(v6, @"assignedSlot", v8, @"com.apple.commcenter.cellular_profile", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    sub_100029A48(&v14);
    v10 = v3[22];
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    v14 = 0;
    v15 = 0;
    if (ctu::cf::convert_copy(&v15, v11, 0x8000100, kCFAllocatorDefault, v9))
    {
      v14 = v15;
      valuePtr = 0;
      sub_100005978(&valuePtr);
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = 0;
    sub_100005978(&v14);
    (*(*v10 + 16))(v10, @"initiatedIccid", v12, @"com.apple.commcenter.cellular_profile", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    return sub_100005978(&v13);
  }

  else if (!a2 || a2 == 3)
  {
    (*(*result[22] + 16))(result[22], @"assignedSlot", 0, @"com.apple.commcenter.cellular_profile", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    v4 = *(*v3[22] + 16);

    return v4();
  }

  return result;
}

void sub_100577D44(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_100577E24(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  if (((*(**(v1 + 176) + 48))(*(v1 + 176), @"com.apple.commcenter.cellular_profile", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost) & 1) == 0)
  {
    v2 = *(v1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Failed to synchronize preferences", buf, 2u);
    }
  }

  operator delete();
}

uint64_t sub_100577F98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E58DA0;
  a2[1] = v2;
  return result;
}

void sub_100577FC4(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_100578090(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10057814C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E58E20;
  a2[1] = v2;
  return result;
}

void sub_100578178(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_100578244(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100578290(uint64_t a1)
{
  (*(**(a1 + 176) + 16))(*(a1 + 176), @"profile", 0, @"com.apple.commcenter.cellular_profile", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  (*(**(a1 + 176) + 16))(*(a1 + 176), @"assignedSlot", 0, @"com.apple.commcenter.cellular_profile", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  v2 = *(**(a1 + 176) + 16);

  return v2();
}

void sub_1005783A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I reload", buf, 2u);
  }

  std::mutex::lock((a1 + 48));
  v3 = *(a1 + 128);
  v39 = 0;
  v4 = (a1 + 160);
  sub_100010024(&v39, (a1 + 160));
  *(a1 + 128) = 0;
  v5 = *(a1 + 144);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 160);
  *(a1 + 160) = 0;
  *buf = v6;
  sub_10001021C(buf);
  v8 = (a1 + 152);
  v7 = *(a1 + 152);
  *(a1 + 152) = 0;
  *buf = v7;
  sub_10001021C(buf);
  theDict = 0;
  (*(**(a1 + 176) + 40))(buf);
  sub_100010180(&theDict, buf);
  v9 = sub_10000A1EC(buf);
  if (theDict)
  {
    if (capabilities::ct::supportsGemini(v9))
    {
      *buf = 0;
      (*(**(a1 + 176) + 40))(__p);
      sub_10010B240(buf, __p);
      sub_10000A1EC(__p);
      if (!*buf || (LOBYTE(__p[0]) = 0, ctu::cf::assign(__p, *buf, v10), v11 = LOBYTE(__p[0]), LOBYTE(__p[0]) - 1 >= 2))
      {
        sub_100029A48(buf);
        goto LABEL_18;
      }

      sub_100029A48(buf);
    }

    else
    {
      v11 = 1;
    }

    *(a1 + 128) = v11;
LABEL_18:
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I IPCU associated slot: %s", buf, 0xCu);
    }

    v37 = 0;
    Value = CFDictionaryGetValue(theDict, @"APNs");
    v17 = Value;
    if (!Value || (v18 = CFGetTypeID(Value), v18 != CFArrayGetTypeID()) || CFArrayGetCount(v17) < 1 || (__p[0] = CFArrayGetValueAtIndex(v17, 0), *buf = 0, sub_100010180(buf, __p), v19 = *buf, v37 = *buf, *buf = 0, sub_10001021C(buf), !v19))
    {
      v20 = *(a1 + 40);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I No APN in IPCU profile", buf, 2u);
        v20 = *(a1 + 40);
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Reading old APN from Managed preferences", buf, 2u);
        v20 = *(a1 + 40);
      }

      v40 = 0;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Pulling APN settings for %d from profile or carrier settings", buf, 8u);
      }

      if (access(off_101FB24C8, 0))
      {
        v21 = *(a1 + 40);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I IPCU file DOES NOT exist - old style profile reading skipped", buf, 2u);
        }
      }

      else
      {
        __p[0] = &off_101EA1020;
        *v44 = 0;
        sub_10000501C(buf, off_101FB24C8);
        sub_1009C8D34(__p, buf);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        if (*v44)
        {
          v42 = 0;
          theArray = 0;
          ValueAtIndex = CFDictionaryGetValue(*v44, @"apns");
          *buf = 0;
          sub_1001FA5E0(buf, &ValueAtIndex);
          v22 = theArray;
          theArray = *buf;
          *buf = v22;
          sub_100010250(buf);
          v23 = theArray;
          if (theArray)
          {
            v24 = *(a1 + 40);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Found a list of APN settings in the managed profile", buf, 2u);
              v23 = theArray;
            }

            if (CFArrayGetCount(v23) >= 1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
              *buf = 0;
              sub_100010180(buf, &ValueAtIndex);
              v40 = *buf;
              *buf = 0;
              sub_10001021C(buf);
            }
          }

          else
          {
            ValueAtIndex = CFDictionaryGetValue(*v44, @"apns");
            *buf = 0;
            sub_100010180(buf, &ValueAtIndex);
            v26 = v42;
            v42 = *buf;
            *buf = v26;
            sub_10001021C(buf);
            v27 = v42;
            v28 = *(a1 + 40);
            v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
            if (v27)
            {
              if (v29)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Found a dictionary of APN settings in the managed profile", buf, 2u);
              }

              sub_1000676D4(&v40, &v42);
            }

            else if (v29)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Found garbage for the APN settings in the managed profile", buf, 2u);
            }
          }

          sub_10001021C(&v42);
          sub_100010250(&theArray);
        }

        else
        {
          v25 = *(a1 + 40);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I IPCU old style file is of incompatible format - skipped", buf, 2u);
          }
        }

        sub_10001021C(v44);
        FileSystemInterface::~FileSystemInterface(__p);
      }

      v30 = *(a1 + 40);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        if (v40)
        {
          v31 = "";
        }

        else
        {
          v31 = "not ";
        }

        *buf = 136315138;
        *&buf[4] = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I IPCU APN %sfound (old style)", buf, 0xCu);
      }

      *buf = v37;
      v37 = v40;
      v40 = 0;
      sub_10001021C(buf);
      sub_10001021C(&v40);
    }

    if (v8 != &v37)
    {
      *buf = *v8;
      *v8 = v37;
      v37 = 0;
      sub_10001021C(buf);
    }

    sub_10001021C(&v37);
    v32 = *(a1 + 40);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%sIPCU APN:", buf, 0x16u);
    }

    *buf = off_101E58EA0;
    *&buf[8] = a1;
    v46 = buf;
    logger::CFTypeRefLogger();
    sub_100007E44(buf);
    __p[0] = 0;
    *buf = CFDictionaryGetValue(theDict, @"AttachAPN");
    sub_100010180(__p, buf);
    if (!__p[0])
    {
      v33 = *(a1 + 40);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I No AttachAPN in IPCU profile", buf, 2u);
      }
    }

    if (v4 != __p)
    {
      *buf = *v4;
      *v4 = __p[0];
      __p[0] = 0;
      sub_10001021C(buf);
    }

    sub_10001021C(__p);
    v34 = *(a1 + 40);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s%sIPCU AttachAPN:", buf, 0x16u);
    }

    *buf = off_101E58F20;
    *&buf[8] = a1;
    v46 = buf;
    logger::CFTypeRefLogger();
    sub_100007E44(buf);
    goto LABEL_69;
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v36 = *&buf[16];
    v13 = __p;
    if ((buf[23] & 0x80u) != 0)
    {
      v13 = *buf;
    }

    *v44 = 136315138;
    *&v44[4] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I No IPCU profile or missing key '%s'", v44, 0xCu);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_69:
  sub_100576974(a1, v3, v39);
  sub_10001021C(&theDict);
  sub_10001021C(&v39);
  std::mutex::unlock((a1 + 48));
}

void sub_100578D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, const void *a14, const void *a15, uint64_t a16, const void *a17, const void *a18, const void *a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_10001021C(&a17);
  sub_100010250(&a18);
  sub_10001021C(&a19);
  FileSystemInterface::~FileSystemInterface(&a9);
  sub_10001021C(&a15);
  sub_10001021C(&a12);
  sub_10001021C(&a13);
  sub_10001021C(&a14);
  std::mutex::unlock((v26 + 48));
  _Unwind_Resume(a1);
}

uint64_t sub_100578EA0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E58EA0;
  a2[1] = v2;
  return result;
}

void sub_100578ECC(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_100578F98(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100579054(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E58F20;
  a2[1] = v2;
  return result;
}

void sub_100579080(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_10057914C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10057921C(void *a1, Registry **a2, unsigned int *a3, NSObject **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58FA0;
  sub_100579318(a1 + 3, a2, *a3, a4);
  return a1;
}

void sub_10057929C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58FA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100579318(void *a1, Registry **a2, int a3, NSObject **a4)
{
  v6 = sub_1002A48E8(a1, a3, a4);
  *v6 = off_101E58B70;
  v7 = (v6 + 3);
  v8 = sub_1002A4990(v6);
  v9 = "ipcu-apn.?";
  if (v8 == 2)
  {
    v9 = "ipcu-apn.2";
  }

  if (v8 == 1)
  {
    v10 = "ipcu-apn.1";
  }

  else
  {
    v10 = v9;
  }

  ctu::OsLogContext::OsLogContext(&v21, kCtLoggingSystemName, v10);
  ctu::OsLogLogger::OsLogLogger(v22, &v21);
  ctu::OsLogLogger::OsLogLogger(v7, v22);
  ctu::OsLogLogger::~OsLogLogger(v22);
  ctu::OsLogContext::~OsLogContext(&v21);
  *a1 = off_101E58B70;
  ServiceMap = Registry::getServiceMap(*a2);
  v12 = ServiceMap;
  v13 = "16IPCU_CellProfile";
  if (("16IPCU_CellProfile" & 0x8000000000000000) != 0)
  {
    v14 = ("16IPCU_CellProfile" & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  v21.var0 = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &v21);
  if (!v17)
  {
    v19 = 0;
    goto LABEL_13;
  }

  v19 = v17[3];
  v18 = v17[4];
  if (!v18)
  {
LABEL_13:
    std::mutex::unlock(v12);
    v18 = 0;
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v12);
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v18);
LABEL_14:
  a1[4] = v19;
  a1[5] = v18;
  return a1;
}

void sub_100579488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  sub_1002A493C(v3);
  _Unwind_Resume(a1);
}

id **sub_100579804(id **a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_100579A3C(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_10057984C(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = [NSString alloc];
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [v5 initWithUTF8String:v6];
  v8 = *a1;
  *a1 = v7;

  v9 = objc_opt_new();
  v10 = a1[2];
  a1[2] = v9;

  v11 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
  v12 = a1[1];
  a1[1] = v11;

  if ([a1[1] registerNetworkAgent:a1[2]])
  {
    if ([a1[1] addNetworkAgentToInterfaceNamed:*a1])
    {
      if ([a1[1] updateNetworkAgent:a1[2]])
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *a1;
          v15 = 138412290;
          v16 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IPsec agent created successfully: %@", &v15, 0xCu);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_101774580();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_101774510();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1017744A0();
  }

  objc_autoreleasePoolPop(v4);
  return a1;
}

id *sub_100579A3C(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[1];
  if (v3)
  {
    if (a1[2] && ([v3 removeNetworkAgentFromInterfaceNamed:*a1] & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1017745F0();
    }

    if ([a1[1] isRegistered] && (objc_msgSend(a1[1], "unregisterNetworkAgent") & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_101774660();
    }

    v4 = a1[1];
    a1[1] = 0;
  }

  v5 = a1[2];
  a1[2] = 0;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a1;
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IPsec agent removed successfully: %@", &v9, 0xCu);
  }

  v7 = *a1;
  *a1 = 0;

  objc_autoreleasePoolPop(v2);
  return a1;
}

void sub_100579BA4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100579BB0(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  *a1 = off_101E9E1C8;
  v5 = (a1 + 8);
  v6 = a2[1];
  v8 = *a2;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10098D218(v5, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  *a1 = off_101E58FF0;
  *(a1 + 32) = *a3;
  return a1;
}

void sub_100579C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

BOOL sub_100579C70(uint64_t a1, os_log_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = sub_10098D2BC((a1 + 8), v2, __p);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *a2;
    v3 = 0;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "Unauthorized.xml";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Infinite validity of %s xml", buf, 0xCu);
      return 0;
    }
  }

  return v3;
}

void sub_100579D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100579D9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }

  TMKXPCServer.shutdown()();
}

void sub_100579DDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }

  TMKXPCServer.shutdown()();

  operator delete();
}

uint64_t sub_100579E30(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, int a6)
{
  v10 = a2[1];
  v19 = *a2;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a5;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = "DATA.Connection.OTAActivation.X";
  v13 = *(*a3 + 52);
  if (v13 == 2)
  {
    v12 = "DATA.Connection.OTAActivation.2";
  }

  v14 = "OTAActivation.X";
  if (v13 == 2)
  {
    v14 = "OTAActivation.2";
  }

  if (v13 == 1)
  {
    v15 = "DATA.Connection.OTAActivation.1";
  }

  else
  {
    v15 = v12;
  }

  if (v13 == 1)
  {
    v16 = "OTAActivation.1";
  }

  else
  {
    v16 = v14;
  }

  sub_1009679C4(a1, &off_101E59AD8, &v19, a3, a4, &object, v15, v16, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a1 = off_101E59078;
  *(a1 + 64) = off_101E595D8;
  *(a1 + 72) = off_101E59878;
  *(a1 + 80) = off_101E59A60;
  *(a1 + 456) = 0;
  return a1;
}

void sub_100579FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  PersonalitySpecific::~PersonalitySpecific(v12);
  _Unwind_Resume(a1);
}

void sub_100579FEC(uint64_t a1)
{
  sub_10096807C(a1, &off_101E59AD8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057A01C(uint64_t a1)
{
  sub_10096807C(a1 - 64, &off_101E59AD8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057A050(uint64_t a1)
{
  sub_10096807C(a1 - 72, &off_101E59AD8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057A084(uint64_t a1)
{
  sub_10096807C(a1 - 80, &off_101E59AD8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057A0B8(uint64_t a1)
{
  sub_10096807C(a1, &off_101E59AD8);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

uint64_t sub_10057A118(uint64_t result)
{
  if (*(result + 456) == 1)
  {
    *(result + 456) = 0;
    v2 = *(result + 216);
    v3 = PersonalitySpecificImpl::simSlot(result);
    v4 = *(*v2 + 16);

    return v4(v2, v3, 0);
  }

  return result;
}

uint64_t sub_10057A18C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v16 = 0;
  v17 = 0;
  sub_1002CAA5C(&v16);
  if (*(a1 + 456))
  {
LABEL_2:
    *(a1 + 456) = 0;
    v6 = *(a1 + 216);
    v7 = PersonalitySpecificImpl::simSlot(a1);
    (*(*v6 + 16))(v6, v7, 0);
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  if (!v16)
  {
    goto LABEL_10;
  }

  if (((*(*v16 + 136))(v16, *a4, 0) & 1) == 0)
  {
    if ((*(a1 + 456) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_2;
  }

  v8 = *(a1 + 56);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "activateFailedTrigger";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: Trying OTA APN for activation", buf, 0xCu);
  }

  v9 = *(a1 + 216);
  v10 = PersonalitySpecificImpl::simSlot(a1);
  v11 = (*(*v9 + 16))(v9, v10, 1);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v14 = *(a1 + 56);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    v12 = 0;
    if (v15)
    {
      *buf = 136315138;
      v19 = "activateFailedTrigger";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: Failed to switch to OTA APN settings, giving up", buf, 0xCu);
      v12 = 0;
    }
  }

  *(a1 + 456) = v12;
LABEL_11:
  if (v17)
  {
    sub_100004A34(v17);
  }

  return v11;
}