void sub_1006CA054(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006CA070(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1006CA0B4(uint64_t *a1, int a2)
{
  v24 = a2;
  v23 = 0uLL;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v27, v3);
  v4 = a1[1];
  if (v4)
  {
    if (atomic_load_explicit((v4 + 8), memory_order_acquire) == 1)
    {
      sub_1006CA32C(a1, &v27, 0, 1);
    }

    v5 = *a1;
    v6 = a1[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
    v5 = *a1;
  }

  v7 = v23;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  v26[0] = v7;
  sub_10004A724(v26 + 1);
  sub_10004A704(*(&v38 + 1));
  sub_10004A6B0(&v27);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v42 = 0;
  v43 = 10;
  v44 = &v27 + 8;
  v45 = 0;
  v47 = 0;
  v48 = 0;
  v46 = &v24;
  v8 = sub_1006CA3C4(&v23);
  v22[0] = &v27;
  v22[1] = a1;
  v22[2] = sub_1006CA614(v8);
  v9 = sub_1006CA3C4(&v23);
  v10 = sub_10004AA88((v9 + 16));
  v11 = sub_1006CA3C4(&v23);
  v12 = *(sub_1006CA614(v11) + 8);
  v13 = sub_1006CA3C4(&v23);
  *&v20 = v12;
  *(&v20 + 1) = sub_1006CA614(v13);
  *&v21 = &v27;
  *(&v21 + 1) = *(&v20 + 1);
  sub_1006CA864(&v20);
  v14 = sub_1006CA3C4(&v23);
  v15 = sub_1006CA614(v14);
  v16 = sub_1006CA3C4(&v23);
  *&v18 = v15;
  *(&v18 + 1) = sub_1006CA614(v16);
  *&v19 = &v27;
  *(&v19 + 1) = *(&v18 + 1);
  sub_1006CA864(&v18);
  v26[0] = v20;
  v26[1] = v21;
  v25[0] = v18;
  v25[1] = v19;
  sub_1006CA658(v10, v26, v25);
  sub_1006CAC2C(v22);
  sub_1006CB4E4(&v27);
  return sub_10004A724(&v23 + 1);
}

void sub_1006CA2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_1000FFEDC(va);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

uint64_t *sub_1006CA32C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v5 = a4;
  v6 = a3;
  v9 = sub_1006CA3C4(a1);
  v10 = sub_1006CA614(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_1006CA3C4(a1);
    v11 = *(sub_1006CA614(v12) + 8);
  }

  v14 = v11;
  return sub_1006CA408(a1, a2, v6, &v14, v5);
}

uint64_t sub_1006CA3C4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_1006CA408(uint64_t *a1, void *a2, int a3, uint64_t **a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_1006CA3C4(a1);
  result = sub_1006CA614(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_1006CA520(v10 + 2);
        sub_1006CA564(v15, a2);
        v10 = v22;
      }

      if (*(sub_1006CA520(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_1006CA3C4(a1);
        v18 = sub_1006CA614(v17);
        v19 = sub_1006CA520(v22 + 2);
        v16 = sub_100100CE8(v18, (v19 + 64), &v22);
      }

      v22 = v16;
      v20 = sub_1006CA3C4(a1);
      result = sub_1006CA614(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

uint64_t sub_1006CA520(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_1006CA564(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_1006CA5D0(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1006CA5D0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_1006CA614(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1006CA658(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_1006CA6E0(a2);
    *a2 = *(*a2 + 8);
    sub_1006CA864(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_1006CA6E0(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_1006CA780((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

uint64_t sub_1006CA780(unsigned int **a1, uint64_t *a2)
{
  v2 = sub_1006CA520(a2);
  v3 = (sub_1006CA5D0((v2 + 32)) + 24);

  return sub_1006CA7CC(v3);
}

uint64_t sub_1006CA7CC(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &off_101E25EA8;
    sub_1001028A8(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

void sub_1006CA864(uint64_t *result)
{
  v1 = *result;
  if (*result != result[3])
  {
    if (v1 == result[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((result[2] + 8), *(result[2] + 264));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = sub_1006CAAC4((*result + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_1006CA520((*result + 16));
      sub_1006CAB08(v4, &v14, (result[2] + 8));
      v5 = sub_1006CA520((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 280);
      }

      else
      {
        ++*(v6 + 284);
      }

      v7 = sub_1006CA520((*result + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_1000821A0(result, &v14, *result);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *result;
      v1 = result[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *result = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = result[3];
      if (v12 != v1)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = sub_1006CAAC4((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_1000821A0(result, &v14, result[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_1006CAA88(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006CAAC4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1006CAB08(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_1006CA5D0(result + 4); ; i += 6)
    {
      result = sub_1006CA5D0(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_1006CAC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void *sub_1006CAC2C(void *a1)
{
  if (*(*a1 + 284) > *(*a1 + 280))
  {
    sub_1006CAC70(a1[1], a1[2]);
  }

  return a1;
}

void sub_1006CAC70(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_1006CA3C4(a1);
  if (sub_1006CA614(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_1006CA3C4(a1);
    v8 = *(sub_1006CA614(v7) + 8);
    sub_1006CA408(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

void sub_1006CAE10(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_1006CAEB4(&v2, a2);
}

uint64_t sub_1006CAE70(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1006CAEB4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1006CAF20(&v2, a2);
}

void sub_1006CAF90(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_1006CAFD0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_1006CB0EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006CB274(a1, a2);
  sub_1006CB2E0((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
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
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

uint64_t *sub_1006CB274(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    sub_1000FB140(a1, (v2 + 16));
  }

  return a1;
}

uint64_t sub_1006CB2E0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1006CB348(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1006CB3B4(&v2, a2);
}

void sub_1006CB424(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_1006CB464(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t sub_1006CB4E4(uint64_t a1)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 288), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1006CB5BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_1006CB660(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E72028;
  sub_1006C713C((a1 + 3), a2);
  return a1;
}

void sub_1006CB6DC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E72028;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1006CB75C(ATCSDPCQueue::Callback *a1)
{
  ATCSDPCQueue::Callback::~Callback(a1);

  operator delete();
}

uint64_t sub_1006CB794(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *(result + 24);
    v3 = *(result + 32);
    v4 = (v1 + (v3 >> 1));
    if (v3)
    {
      v2 = *(*v4 + v2);
    }

    return v2(v4, *(result + 8));
  }

  return result;
}

void sub_1006CB7F4(uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  operator new();
}

void sub_1006CB98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  v15 = *(v11 + 8);
  if (v15)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006CB9C8(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v3 = ServiceMap;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  v14 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v14);
  if (!v8)
  {
    v9 = 0;
LABEL_9:
    std::mutex::unlock(v3);
    v10 = 0;
    v11 = 1;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v8[3];
  v10 = v8[4];
  if (!v10)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v11 = 0;
  if (v9)
  {
LABEL_10:
    (*(*v9 + 1312))(v9, *(a1 + 32), *(a1 + 16));
  }

LABEL_11:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    sub_100004A34(v12);
  }

  return a1;
}

void sub_1006CBB14(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1006CBB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1006CBBA8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1006CBBA8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1006CB9C8(v2);
    operator delete();
  }

  return a1;
}

void sub_1006CBBF4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1006CBC2C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1006CB9C8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1006CBC70(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1006CBCB0(void *a1, uint64_t a2, NSObject **a3)
{
  v4 = *a3;
  *a1 = a2;
  a1[1] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  a1[4] = 0;
  a1[3] = 0;
  a1[2] = a1 + 3;
  return a1;
}

uint64_t sub_1006CBCF4(uint64_t a1)
{
  sub_1002472DC(a1 + 16, *(a1 + 24));
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void sub_1006CBD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100007A6C(a1 + 16, a2);
  if ((a1 + 24) != v5)
  {
    v6 = v5;
    sub_1000194D8((a1 + 16), v5);
    sub_1000D57F4((v6 + 4));
    operator delete(v6);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    v9 = *(a2 + 16);
  }

  if (SHIBYTE(v9) < 0)
  {
    sub_100005F2C(__dst, v8[0], v8[1]);
  }

  else
  {
    *__dst = *v8;
    v13 = v9;
  }

  v11 = 0;
  if (SHIBYTE(v13) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v15 = v13;
  }

  v16 = 0;
  if (ctu::cf::convert_copy())
  {
    v7 = v11;
    v11 = v16;
    v17 = v7;
    sub_100005978(&v17);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v10 = v11;
  v11 = 0;
  sub_100005978(&v11);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_1006CC0D4();
}

void sub_1006CBEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_1006CBF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0uLL;
  v8 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v6 = 0;
  sub_10066984C(v9, a3);
  sub_1006CBD34(a1, __p, v9);
}

void sub_1006CC008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_1006646F0(&a22);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006CC040(uint64_t a1)
{
  v4 = 0uLL;
  v5 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v3 = 0;
  sub_1000D5848((a1 + 16), __p);
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006CC0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef *sub_1006CC178(CFStringRef *a1, const __CFString **a2, const void **a3, NSObject **a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E72170;
  sub_1006CC254(a1 + 3, a2, a3, a4, a5);
  return a1;
}

void sub_1006CC1F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E72170;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

CFStringRef *sub_1006CC254(CFStringRef *a1, const __CFString **a2, const void **a3, NSObject **a4, uint64_t a5)
{
  v8 = *a2;
  sub_10005C7A4(&v12, a3);
  v9 = *a4;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  sub_10066984C(v13, a5);
  sub_1006CC344(a1, v8, &v12, &object, v13);
  sub_1006646F0(v13);
  if (object)
  {
    dispatch_release(object);
  }

  sub_100005978(&v12);
  return a1;
}

void sub_1006CC31C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, const void *a11, __int16 a12, char a13, char a14)
{
  sub_1006646F0(&a12);
  if (object)
  {
    dispatch_release(object);
  }

  sub_100005978(&a11);
  _Unwind_Resume(a1);
}

CFStringRef *sub_1006CC344(CFStringRef *a1, const __CFString *a2, const void **a3, CFStringRef *a4, uint64_t a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = a2;
  sub_10005C7A4(a1 + 3, a3);
  a1[4] = *a4;
  *a4 = 0;
  sub_10066984C((a1 + 5), a5);
  CFNotificationCenterAddObserver(a1[2], a1, sub_1006CC3FC, a1[3], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  return a1;
}

void sub_1006CC3C8(_Unwind_Exception *a1)
{
  sub_1006646F0(v1 + 40);
  v3 = *(v1 + 32);
  if (v3)
  {
    dispatch_release(v3);
  }

  sub_100005978((v1 + 24));
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1006CC3FC(int a1, uint64_t *a2, int a3, int a4, ctu *this)
{
  if (a2 && a2[8])
  {
    ctu::cf_to_xpc(this, a2);
    v6 = object;
    if (object && xpc_get_type(object) == &_xpc_type_dictionary)
    {
      xpc_retain(object);
    }

    else
    {
      v6 = xpc_null_create();
    }

    xpc_release(object);
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      xpc_null_create();
    }

    v7 = a2[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
    }

    operator new();
  }
}

uint64_t *sub_1006CC544(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    xpc_release(*v1);
    *v1 = 0;
    operator delete();
  }

  return a1;
}

uint64_t *sub_1006CC5A8(uint64_t a1)
{
  v2 = a1;
  sub_1006CC5F0(a1);
  return sub_1006CC544(&v2);
}

void sub_1006CC5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1006CC544(va);
  _Unwind_Resume(a1);
}

void sub_1006CC5F0(uint64_t a1)
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
        v6 = *a1;
        object = v6;
        if (v6)
        {
          xpc_retain(v6);
        }

        else
        {
          object = xpc_null_create();
        }

        v7 = *(v5 + 64);
        if (!v7)
        {
          sub_100022DB4();
        }

        (*(*v7 + 48))(v7, &object);
        xpc_release(object);
        object = 0;
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1006CC6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void *sub_1006CC6D0(void *observer)
{
  CFNotificationCenterRemoveObserver(*(observer + 2), observer, *(observer + 3), 0);
  sub_1006646F0(observer + 40);
  v2 = *(observer + 4);
  if (v2)
  {
    dispatch_release(v2);
  }

  sub_100005978(observer + 3);
  v3 = *(observer + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return observer;
}

char *sub_1006CC738(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v4 = *sub_100005C2C(a1, &v9, a2);
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    sub_1006CC7E4();
  }

  return v4;
}

char *sub_1006CC864(char *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 24) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  return __dst;
}

uint64_t sub_1006CC8C4(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_101E721C0;
  return result;
}

void sub_1006CC8EC(uint64_t a1)
{
  *a1 = off_101E721C0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_100140928((a1 + 8), 0);

  PB::Base::~Base(a1);
}

void sub_1006CC97C(uint64_t a1)
{
  sub_1006CC8EC(a1);

  operator delete();
}

uint64_t sub_1006CC9B4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  if (*(a1 + 32))
  {
    PB::TextFormatter::format(this, "error", *(a1 + 24));
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "info");
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    PB::TextFormatter::format(this, "result", *(a1 + 28));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1006CCA80(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_58;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 32) |= 1u;
          v28 = *(this + 1);
          v27 = *(this + 2);
          v29 = *this;
          if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
          {
            v36 = 0;
            v37 = 0;
            v32 = 0;
            v17 = v27 >= v28;
            v38 = v27 - v28;
            if (!v17)
            {
              v38 = 0;
            }

            v39 = (v29 + v28);
            v40 = v28 + 1;
            while (1)
            {
              if (!v38)
              {
                LODWORD(v32) = 0;
                *(this + 24) = 1;
                goto LABEL_53;
              }

              v41 = *v39;
              *(this + 1) = v40;
              v32 |= (v41 & 0x7F) << v36;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              --v38;
              ++v39;
              ++v40;
              v14 = v37++ > 8;
              if (v14)
              {
LABEL_47:
                LODWORD(v32) = 0;
                goto LABEL_53;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v32) = 0;
            }
          }

          else
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = (v29 + v28);
            v34 = v28 + 1;
            while (1)
            {
              *(this + 1) = v34;
              v35 = *v33++;
              v32 |= (v35 & 0x7F) << v30;
              if ((v35 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              ++v34;
              v14 = v31++ > 8;
              if (v14)
              {
                goto LABEL_47;
              }
            }
          }

LABEL_53:
          *(a1 + 24) = v32;
          goto LABEL_54;
        }

        if (v22 == 4)
        {
          operator new();
        }
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 2u;
          v23 = *(this + 1);
          if (v23 >= *(this + 2))
          {
            v26 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v24 = v23 + 1;
            v25 = *(*this + v23);
            *(this + 1) = v24;
            v26 = v25 != 0;
          }

          *(a1 + 28) = v26;
          goto LABEL_54;
        }
      }

      if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
      {
        v43 = 0;
        return v43 & 1;
      }

LABEL_54:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_58:
  v43 = v4 ^ 1;
  return v43 & 1;
}

uint64_t sub_1006CCE4C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 32);
  if ((v5 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 28), 2u);
    v5 = *(v3 + 32);
  }

  if (v5)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 24), 3u);
  }

  v6 = *(v3 + 16);
  if (v6)
  {

    return PB::Writer::writeSubmessage(this, v6, 4u);
  }

  return result;
}

void *sub_1006CCEE0(void *result)
{
  if (!result[2])
  {
    operator new();
  }

  return result;
}

uint64_t MMSDataContextController::MMSDataContextController(uint64_t a1, NSObject **a2, void *a3, int a4, void *a5)
{
  v9 = *a2;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "msg.mms.dcc");
  sub_1006CD158((a1 + 8), "msg.mms.dcc", QOS_CLASS_USER_INITIATED, &object, &v13);
  ctu::OsLogContext::~OsLogContext(&v13);
  if (object)
  {
    dispatch_release(object);
  }

  v15[0] = off_101E2B528;
  v15[1] = sub_1000A7C18;
  v15[3] = v15;
  sub_1006CD298((a1 + 48), a3, v15);
  sub_1000A8744(v15);
  *a1 = off_101E72228;
  *(a1 + 56) = a4;
  v10 = a3[1];
  *(a1 + 64) = *a3;
  *(a1 + 72) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a5[1];
  *(a1 + 80) = *a5;
  *(a1 + 88) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return a1;
}

void sub_1006CD104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, ...)
{
  va_start(va, object);
  sub_1000A8744(va);
  MMSDataContextControllerInterface::~MMSDataContextControllerInterface(v11);
  ctu::OsLogLogger::~OsLogLogger((v11 + 5));
  sub_1000C0544(v11 + 1);
  _Unwind_Resume(a1);
}

void *sub_1006CD158(void *a1, const char *a2, dispatch_qos_class_t qos_class, dispatch_object_t *a4, const OsLogContext *a5)
{
  v9 = *a4;
  if (*a4)
  {
    dispatch_retain(*a4);
    v10 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
    dispatch_retain(v9);
    dispatch_retain(v9);
    v11 = dispatch_queue_create_with_target_V2(a2, v10, v9);
  }

  else
  {
    v12 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
    v11 = dispatch_queue_create(a2, v12);
  }

  v13 = v11;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  a1[3] = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  if (v9)
  {
    dispatch_release(v9);
    dispatch_release(v9);
    dispatch_release(v9);
  }

  ctu::OsLogLogger::OsLogLogger(v15, a5);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v15);
  ctu::OsLogLogger::~OsLogLogger(v15);
  return a1;
}

void sub_1006CD274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

capabilities::ct *sub_1006CD298(capabilities::ct *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0)
  {
    operator new();
  }

  if (!*a1)
  {
    operator new();
  }

  return a1;
}

void sub_1006CD3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A8744(va);
  operator delete();
}

void sub_1006CD568(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100004A34(v2);
    if (!v1)
    {
LABEL_3:
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  dispatch_release(v1);
  if (v3)
  {
LABEL_4:
    operator delete();
  }

LABEL_5:
  _Unwind_Resume(exception_object);
}

void MMSDataContextController::activateDataContext(MMSDataContextController *this)
{
  v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v3[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Attempting to activate data context", v3, 2u);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, this + 1);
  operator new();
}

void MMSDataContextController::initializeDataContextActivationCycle_sync(MMSDataContextController *this)
{
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  Registry::getTimerService(&v3, *(this + 8));
  *(this + 13) = (**v3)(v3);
  if (v4)
  {
    sub_100004A34(v4);
  }

  *(this + 14) = 0;
}

void sub_1006CD78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void MMSDataContextController::dataContextActivationCycle_sync(MMSDataContextController *this)
{
  v2 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  v3 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 14);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Data context activation cycle running with total time: %lld", &buf, 0xCu);
  }

  v5 = *(this + 14);
  if (v5 >= 120)
  {
    v6 = *v2;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Gave up on data context to become active after %lld seconds", &buf, 0xCu);
    }

    (*(**(this + 10) + 16))(*(this + 10), *(this + 14));
    MMSDataContextController::activateDataContext(this);
    return;
  }

  ServiceMap = Registry::getServiceMap(*(this + 8));
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  *&buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &buf);
  if (!v13)
  {
    v15 = 0;
LABEL_17:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_18:
    v18 = *(this + 14);
    sub_10000501C(__p, "( CommCenter) Activating PDP context");
    (*(*v15 + 88))(v15, v18, 4, 1, __p, 0, 0);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_20;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_17;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (v15)
  {
    goto LABEL_18;
  }

LABEL_13:
  v17 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_10177A490(v17);
  }

  (*(**(this + 10) + 24))(*(this + 10), *(this + 14));
LABEL_20:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if (v15)
  {
    Registry::getTimerService(&buf, *(this + 8));
    v19 = buf;
    sub_10000501C(v27, "Data context wait timer");
    v20 = *(this + 3);
    object = v20;
    if (v20)
    {
      dispatch_retain(v20);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_1006CDC4C;
    aBlock[3] = &unk_101E72258;
    aBlock[4] = this;
    aBlock[5] = v2;
    v25 = _Block_copy(aBlock);
    sub_100D23364(v19, v27, 0, 60000000, &object, &v25);
    v21 = v29;
    v29 = 0;
    v22 = *(this + 12);
    *(this + 12) = v21;
    if (v22)
    {
      (*(*v22 + 8))(v22);
      v23 = v29;
      v29 = 0;
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }
    }

    if (v25)
    {
      _Block_release(v25);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }
  }
}

void sub_1006CDBB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *aBlock, dispatch_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006CDC4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  if (!v3)
  {
    return;
  }

  *(v2 + 96) = 0;
  (*(*v3 + 8))(v3);
  ServiceMap = Registry::getServiceMap(*(v2 + 64));
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  v20 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v20);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_10:
  v14 = (*(*v12 + 40))(v12, *(v2 + 56));
  v15 = v14;
  if (v14)
  {
    v16 = **(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Data context wait finished, and data context is active. Ending cycle.", buf, 2u);
    }
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if ((v15 & 1) == 0)
  {
    v17 = **(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Data context activation wait finished, trying again", v18, 2u);
    }

    MMSDataContextController::updateTotalWaitTime_sync(v2);
    (*(**(v2 + 80) + 32))(*(v2 + 80), *(v2 + 56), *(v2 + 112));
    MMSDataContextController::dataContextActivationCycle_sync(v2);
  }
}

void sub_1006CDE5C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void MMSDataContextController::updateTotalWaitTime_sync(Registry **this)
{
  Registry::getTimerService(&v2, this[8]);
  this[14] = (((**v2)(v2) - this[13]) / 1000000000);
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_1006CDF08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void MMSDataContextController::endActivationCycle(MMSDataContextController *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void MMSDataContextController::restartActivationCycle(MMSDataContextController *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

MMSDataContextControllerInterface *sub_1006CE0E8(MMSDataContextControllerInterface *this)
{
  *this = off_101E72228;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  MMSDataContextControllerInterface::~MMSDataContextControllerInterface(this);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
  return this;
}

void sub_1006CE1B8(MMSDataContextControllerInterface *this)
{
  *this = off_101E72228;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  MMSDataContextControllerInterface::~MMSDataContextControllerInterface(this);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);

  operator delete();
}

void sub_1006CE328(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1006CE3FC);
  __cxa_rethrow();
}

void sub_1006CE368(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1006CE3BC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006CE3FC(uint64_t result)
{
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void sub_1006CE428(MMSDataContextController ***a1)
{
  v2 = a1;
  v1 = **a1;
  MMSDataContextController::initializeDataContextActivationCycle_sync(v1);
  MMSDataContextController::updateTotalWaitTime_sync(v1);
  MMSDataContextController::dataContextActivationCycle_sync(v1);
  operator delete();
}

void sub_1006CE4BC(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(*(**(v1 + 48) + 16))(*(v1 + 48), *(v1 + 56));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Ending data context activation cycle", buf, 2u);
  }

  v3 = *(v1 + 96);
  *(v1 + 96) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}

void sub_1006CE5D0(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(*(**(v1 + 48) + 16))(*(v1 + 48), *(v1 + 56));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Restarting data context activation cycle", buf, 2u);
  }

  MMSDataContextController::activateDataContext(v1);
}

void DataConnectionAgent::startDataAgentWithOptions(DataConnectionAgent *this, NSDictionary *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006D309C;
  v4[3] = &unk_101E728F8;
  v5 = a2;
  v6 = this;
  v3 = v5;
  sub_1006DC254(this + 32, v4);
}

void DataConnectionAgent::assertDataAgentWithOptions(DataConnectionAgent *this, NSDictionary *a2, char a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006D34AC;
  v5[3] = &unk_101E72920;
  v8 = a3;
  v6 = a2;
  v7 = this;
  v4 = v6;
  sub_1006DC254(this + 32, v5);
}

void DataConnectionAgent::unassertDataAgentWithOptions(DataConnectionAgent *this, NSDictionary *a2, char a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006D51D8;
  v5[3] = &unk_101E72920;
  v8 = a3;
  v6 = a2;
  v7 = this;
  v4 = v6;
  sub_1006DC254(this + 32, v5);
}

uint64_t sub_1006CEFE4(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:NWNetworkAgentStartOptionClientUUID];
  v3 = v2;
  if (v2)
  {
    v23[0] = 0;
    v23[1] = 0;
    [v2 getUUIDBytes:v23];
    v4 = nw_path_copy_path_for_client();
    if (v4)
    {
      v5 = nw_path_copy_parameters();
      pid = nw_parameters_get_pid();
      *v19 = 0u;
      v20 = 0u;
      xpc_generate_audit_token();
      v7 = xpc_copy_entitlement_for_token();
      v18 = v7;
      v8 = v7;
      if (!v7)
      {
        v8 = xpc_null_create();
        v18 = v8;
      }

      if (xpc_get_type(v8) == &_xpc_type_null || xpc::is_logically_false(&v18, v9))
      {
        v10 = sub_10002026C();
        v11 = sub_100032AC8(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v22 = pid;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N NWAgent Bootstrap start forbidden as originating process is not entitled!! (pid %d)", buf, 8u);
        }

        v12 = 0;
      }

      else
      {
        v12 = 1;
      }

      v16 = v18;
      v18 = 0;
    }

    else
    {
      v15 = sub_10002026C();
      v5 = sub_100032AC8(v15);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N NWAgent Bootstrap start forbidden as originating process cannot be found", v19, 2u);
      }

      v12 = 0;
    }
  }

  else
  {
    v13 = sub_10002026C();
    v14 = sub_100032AC8(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#N NWAgent Bootstrap start forbidden as originating process UUID cannot be found", v19, 2u);
    }

    v12 = 0;
  }

  return v12;
}

void sub_1006CF248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataConnectionAgent::DataConnectionAgent(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, id *a7, void *a8)
{
  v10 = a4;
  (*(*(a8 + *(*a8 - 56)) + 16))(&v25);
  PersonalitySpecificImpl::PersonalitySpecificImpl();
  if (v26)
  {
    sub_100004A34(v26);
  }

  v14 = a3[1];
  v23 = *a3;
  v24 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = *a7;
  DataConnectionAgentInterface::DataConnectionAgentInterface();
  v15 = v22;
  v22 = 0;

  if (v24)
  {
    sub_100004A34(v24);
  }

  *(a1 + 104) = off_101E72BC0;
  v16 = *a2;
  *a1 = *a2;
  *(a1 + *(v16 - 56)) = a2[5];
  v17 = a2[6];
  *(a1 + 176) = 0;
  *(a1 + 24) = v17;
  *(a1 + 104) = off_101E72B60;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 155) = 0u;
  v18 = a3[1];
  v20 = *a3;
  v21 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*(a8 + *(*a8 - 56)) + 16))(&v25);
  DataConnectionAgentPolicyInterface::create(&v20, &v25, (a1 + 200));
  if (v26)
  {
    sub_100004A34(v26);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  *(a1 + 216) = 0;
  *(a1 + 220) = v10;
  *(a1 + 224) = 0;
  *(a1 + 232) = *a7;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 255) = 0;
  *(a1 + 246) = v10;
  *(a1 + 257) = v10;
  *(a1 + 304) = 0;
  *(a1 + 264) = a8;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  DataConnectionAgent::initAgent(a1, 0, 0, 0);
  DataConnectionAgent::updateAgent(a1, 1);
  return a1;
}

void sub_1006CF678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (*(v16 + 199) < 0)
  {
    operator delete(*v18);
  }

  if (*(v16 + 167) < 0)
  {
    operator delete(*(v16 + 144));
  }

  DataConnectionAgentInterface::~DataConnectionAgentInterface(v17);
  PersonalitySpecificImpl::~PersonalitySpecificImpl(v16);
  _Unwind_Resume(a1);
}

void sub_1006CF6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  JUMPOUT(0x1006CF6E8);
}

void sub_1006CF724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  JUMPOUT(0x1006CF6F4);
}

void sub_1006CF738()
{
  sub_1006D71D4((v0 + 304), 0);
  sub_1006D5174((v0 + 272), 0);
  sub_10031F3F4(v1);

  if (!*(v0 + 208))
  {
    JUMPOUT(0x1006CF69CLL);
  }

  JUMPOUT(0x1006CF698);
}

void DataConnectionAgent::~DataConnectionAgent(DataConnectionAgent *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 56)) = a2[5];
  *(this + 3) = a2[6];
  *(this + 13) = off_101E72B60;
  v4 = *(this + 25);
  if (v4)
  {
    (*(*v4 + 80))(v4);
  }

  DataConnectionAgent::deinitAgent(this);
  v5 = *(this + 28);
  *(this + 28) = 0;

  sub_1006D71D4(this + 38, 0);
  sub_1006D5174(this + 34, 0);
  v6 = *(this + 29);
  *(this + 29) = 0;

  v7 = *(this + 26);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  DataConnectionAgentInterface::~DataConnectionAgentInterface((this + 24));

  PersonalitySpecificImpl::~PersonalitySpecificImpl(this);
}

uint64_t DataConnectionAgentCellularDataPlanProvisioning::DataConnectionAgentCellularDataPlanProvisioning(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, id *a5, void *a6, int a7)
{
  v10 = a2[1];
  v13[0] = *a2;
  v13[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a7)
  {
    v11 = "DATA.agent.provisioning2";
  }

  else
  {
    v11 = "DATA.agent.provisioning";
  }

  DataConnectionAgent::DataConnectionAgent(a1, off_101E72620, v13, a3, v11, a4, a5, a6);
  if (v10)
  {
    sub_100004A34(v10);
  }

  *a1 = off_101E72418;
  *(a1 + 24) = off_101E72530;
  *(a1 + 104) = off_101E72600;
  *(a1 + 360) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 361) = a7;
  return a1;
}

void sub_1006CFA88(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  PersonalitySpecific::~PersonalitySpecific(v1);
  _Unwind_Resume(a1);
}

void DataConnectionAgentCellularDataPlanProvisioning::~DataConnectionAgentCellularDataPlanProvisioning(DataConnectionAgentCellularDataPlanProvisioning *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 56)) = a2[8];
  *(this + 3) = a2[9];
  *(this + 13) = off_101E72600;
  v5 = *(this + 40);
  if (v5)
  {
    *(this + 40) = 0;
  }

  v6 = *(this + 41);
  if (v6)
  {
    *(this + 41) = 0;
  }

  v7 = *(this + 43);
  if (v7)
  {
    *(this + 43) = 0;
  }

  v8 = *(this + 44);
  if (v8)
  {
    *(this + 44) = 0;
  }

  v9 = *(this + 42);
  if (v9)
  {
    *(this + 42) = 0;
  }

  sub_10001021C(this + 39);

  DataConnectionAgent::~DataConnectionAgent(this, a2 + 1);
}

void DataConnectionAgentCellularDataPlanProvisioning::~DataConnectionAgentCellularDataPlanProvisioning(DataConnectionAgentCellularDataPlanProvisioning *this)
{

  PersonalitySpecific::~PersonalitySpecific(v1);
}

{
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

void non-virtual thunk toDataConnectionAgentCellularDataPlanProvisioning::~DataConnectionAgentCellularDataPlanProvisioning(DataConnectionAgentCellularDataPlanProvisioning *this)
{

  PersonalitySpecific::~PersonalitySpecific(v1);
}

{

  PersonalitySpecific::~PersonalitySpecific(v1);
}

{
  DataConnectionAgentCellularDataPlanProvisioning::~DataConnectionAgentCellularDataPlanProvisioning((this - 24));
}

{
  DataConnectionAgentCellularDataPlanProvisioning::~DataConnectionAgentCellularDataPlanProvisioning((this - 104));
}

void DataConnectionAgentCellularDataPlanProvisioning::setPolicyOverride(DataConnectionAgentCellularDataPlanProvisioning *this)
{
  if (*(this + 361) == *(this + 360))
  {
    DataConnectionAgentCellularDataPlanProvisioning::setupFallbackAgent(this);

    DataConnectionAgentCellularDataPlanProvisioning::setupFallbackPolicy(this);
  }
}

void DataConnectionAgentCellularDataPlanProvisioning::setupFallbackAgent(DataConnectionAgentCellularDataPlanProvisioning *this)
{
  if (!*(this + 43))
  {
    v2 = [NEPathControllerNetworkAgent alloc];
    if (*(this + 361))
    {
      v3 = @"CellularDataPlanProvisioning2";
    }

    else
    {
      v3 = @"CellularDataPlanProvisioning";
    }

    v4 = [v2 initWithAdvisoryAgentDomain:@"Cellular" agentType:v3 advisoryMode:3];
    v5 = *(this + 43);
    *(this + 43) = v4;

    [*(this + 43) setActive:1];
    [*(this + 43) setVoluntary:0];
    [*(this + 43) setUserActivated:0];
    [*(this + 43) setKernelActivated:0];
    v6 = +[NSUUID UUID];
    [*(this + 43) setAgentUUID:v6];

    v7 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(this + 43) agentUUID];
      v9 = [v8 UUIDString];
      v16 = 136446210;
      v17 = [v9 UTF8String];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I NWAgent: created fallback agent: %{public}s", &v16, 0xCu);
    }
  }

  if (!*(this + 44))
  {
    v10 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
    v11 = *(this + 44);
    *(this + 44) = v10;

    v12 = [*(this + 44) registerNetworkAgent:*(this + 43)];
    v13 = sub_100032AC8(this + 8);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        LOWORD(v16) = 0;
        v15 = "#I NWAgent: registered fallback agent";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, &v16, 2u);
      }
    }

    else if (v14)
    {
      LOWORD(v16) = 0;
      v15 = "#N NWAgent: fallback agent registration failed";
      goto LABEL_14;
    }
  }
}

void DataConnectionAgentCellularDataPlanProvisioning::setupFallbackPolicy(DataConnectionAgentCellularDataPlanProvisioning *this)
{
  if (!*(this + 42))
  {
    v2 = objc_alloc_init(NEPolicySession);
    v3 = *(this + 42);
    *(this + 42) = v2;

    [*(this + 42) setPriority:301];
    v4 = [NEPolicyCondition accountIdentifier:@"com.apple.CommCenter.DataPlanProvisioning"];
    v5 = [*(this + 43) agentUUID];
    v6 = [NEPolicyResult netAgentUUID:v5];

    v7 = [NEPolicy alloc];
    v28 = v4;
    v8 = [NSArray arrayWithObjects:&v28 count:1];
    v9 = [v7 initWithOrder:10 result:v6 conditions:v8];

    [*(this + 42) addPolicy:v9];
    if (*(this + 40))
    {
      v10 = [NEPolicyCondition accountIdentifier:@"com.apple.CommCenter.DataPlanProvisioning"];
      v11 = [*(this + 40) agentUUID];
      v12 = [NEPolicyResult netAgentUUID:v11];

      v13 = [NEPolicy alloc];
      v14 = +[NEPolicyCondition allInterfaces];
      v27[0] = v14;
      v27[1] = v10;
      v15 = [NSArray arrayWithObjects:v27 count:2];
      v16 = [v13 initWithOrder:15 result:v12 conditions:v15];

      [*(this + 42) addPolicy:v16];
    }

    if (([*(this + 42) apply] & 1) == 0)
    {
      v17 = sub_100032AC8(this + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#N NWAgent: policy apply failed", &v23, 2u);
      }
    }

    v18 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = (this + 144);
      if (*(this + 167) < 0)
      {
        v19 = *v19;
      }

      v20 = [*(this + 42) description];
      v21 = v20;
      v22 = [v20 UTF8String];
      v23 = 136446466;
      v24 = v19;
      v25 = 2080;
      v26 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I NWAgent: registered fallback policy uuid %{public}s, session %s", &v23, 0x16u);
    }
  }
}

void DataConnectionAgentCellularDataPlanProvisioning::unsetFallbackPolicy(DataConnectionAgentCellularDataPlanProvisioning *this)
{
  v1 = *(this + 42);
  if (v1)
  {
    *(this + 42) = 0;

    v3 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I NWAgent: unregistered fallback policy", v4, 2u);
    }
  }
}

void DataConnectionAgentCellularDataPlanProvisioning::setProxy(id *a1, id *a2)
{
  v6 = a1[39];
  v4 = *a2;
  if (a1[39] == 0) == (*a2 == 0) && (v6 ? (v5 = v4 == 0) : (v5 = 1), v5 || ([v6 isEqualToDictionary:v4]))
  {
    sub_1000676D4(a1 + 39, a2);
  }

  else
  {
    sub_1000676D4(a1 + 39, a2);
    DataConnectionAgentCellularDataPlanProvisioning::setupProxyAgent(a1);
    DataConnectionAgentCellularDataPlanProvisioning::unsetFallbackPolicy(a1);
    DataConnectionAgentCellularDataPlanProvisioning::setupFallbackPolicy(a1);
  }
}

void DataConnectionAgentCellularDataPlanProvisioning::setupProxyAgent(DataConnectionAgentCellularDataPlanProvisioning *this)
{
  if (*(this + 39))
  {
    if (!*(this + 40))
    {
      v2 = [[NEProxyConfigurationNetworkAgent alloc] initWithProxyConfiguration:*(this + 39)];
      v3 = *(this + 40);
      *(this + 40) = v2;

      [*(this + 40) setActive:1];
      [*(this + 40) setVoluntary:0];
      [*(this + 40) setUserActivated:0];
      [*(this + 40) setKernelActivated:0];
      v4 = +[NSUUID UUID];
      [*(this + 40) setAgentUUID:v4];

      v5 = sub_100032AC8(this + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(this + 40) agentUUID];
        v7 = [v6 UUIDString];
        v18 = 136446210;
        v19 = [v7 UTF8String];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I NWAgent: provisioning: proxy agent created %{public}s", &v18, 0xCu);
      }
    }

    v8 = *(this + 41);
    if (!v8)
    {
      v9 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v10 = *(this + 41);
      *(this + 41) = v9;

      v8 = *(this + 41);
    }

    if (([v8 isRegistered] & 1) == 0)
    {
      v11 = [*(this + 41) registerNetworkAgent:*(this + 40)];
      v12 = sub_100032AC8(this + 8);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          LOWORD(v18) = 0;
          v14 = "#I NWAgent: provisioning: registered proxy agent";
LABEL_20:
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, &v18, 2u);
        }
      }

      else if (v13)
      {
        LOWORD(v18) = 0;
        v14 = "#I NWAgent: provisioning: proxy agent add to pdp 0 fail";
        goto LABEL_20;
      }

LABEL_21:
    }
  }

  else
  {
    v15 = *(this + 41);
    if (v15)
    {
      [v15 unregisterNetworkAgent];
      v16 = sub_100032AC8(this + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I NWAgent: provisioning: proxy agent unregistered", &v18, 2u);
      }

      v17 = *(this + 41);
      *(this + 41) = 0;
    }

    v12 = *(this + 40);
    if (v12)
    {
      *(this + 40) = 0;
      goto LABEL_21;
    }
  }
}

void DataConnectionAgentCellularDataPlanProvisioning::switchFallbackPolicy(uint64_t this, int a2)
{
  if (*(this + 360) != a2)
  {
    v2 = a2;
    v4 = sub_100032AC8((this + 64));
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = asStringBool(*(this + 360));
      v6 = 136315394;
      v7 = v5;
      v8 = 2080;
      v9 = asStringBool(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I NWAgent: switchFallbackPolicy: fIsSecondaryEnabled: %s->%s", &v6, 0x16u);
    }

    *(this + 360) = v2;
    DataConnectionAgent::initPolicy(this, 0);
  }
}

void DataConnectionAgent::initPolicy(id *this, _BOOL4 a2)
{
  v4 = sub_100032AC8(this + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = this + 18;
    if (*(this + 167) < 0)
    {
      v5 = *v5;
    }

    v9 = 136315650;
    v10 = "initPolicy";
    v11 = 2082;
    v12 = v5;
    v13 = 2080;
    v14 = asStringBool(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s, Initializing network policy (reset %s)", &v9, 0x20u);
  }

  DataConnectionAgent::unsetPolicy(this);
  DataConnectionAgent::setPolicy(this, 0, "init policy", *(this + 72));
  v6 = this[38];
  if (v6 && v6[2])
  {
    v7 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "initPolicy";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: cleaning pending traffic descriptors", &v9, 0xCu);
    }

    v8 = this[38];
    sub_10001BB0C(v8, *(v8 + 1));
    *v8 = v8 + 8;
    *(v8 + 2) = 0;
    *(v8 + 1) = 0;
  }

  *(this + 216) = 1;
  if (a2)
  {
    DataConnectionAgent::resetAgent(this);
  }
}

uint64_t DataConnectionAgentBootstrap::DataConnectionAgentBootstrap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, id *a5, void *a6, const void **a7)
{
  v9 = a2[1];
  v11[0] = *a2;
  v11[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  DataConnectionAgent::DataConnectionAgent(a1, off_101E728A8, v11, a3, "DATA.agent.bootstrap", a4, a5, a6);
  if (v9)
  {
    sub_100004A34(v9);
  }

  *a1 = off_101E726A0;
  *(a1 + 24) = off_101E727B8;
  *(a1 + 104) = off_101E72888;
  sub_100010024((a1 + 312), a7);
  *(a1 + 352) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  return a1;
}

void sub_1006D0B94(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  PersonalitySpecific::~PersonalitySpecific(v1);
  _Unwind_Resume(a1);
}

void DataConnectionAgentBootstrap::unsetPolicyOverride(DataConnectionAgentBootstrap *this)
{
  v2 = *(this + 40);
  if (v2)
  {
    *(this + 40) = 0;
  }

  v3 = *(this + 41);
  if (v3)
  {
    *(this + 41) = 0;
  }

  v4 = *(this + 42);
  if (v4)
  {
    *(this + 42) = 0;
  }

  v5 = *(this + 43);
  if (v5)
  {
    *(this + 43) = 0;
  }

  v6 = *(this + 44);
  if (v6)
  {
    *(this + 44) = 0;

    v7 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (this + 144);
      if (*(this + 167) < 0)
      {
        v8 = *v8;
      }

      v9 = 136446210;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I NWAgent %{public}s: unregistered fallback policy", &v9, 0xCu);
    }
  }
}

void DataConnectionAgentBootstrap::setPolicyOverride(DataConnectionAgentBootstrap *this)
{
  if (!*(this + 42))
  {
    v2 = [[NEPathControllerNetworkAgent alloc] initWithAdvisoryAgentDomain:@"Cellular" agentType:@"BootstrapProvisioning" advisoryMode:2];
    v3 = *(this + 42);
    *(this + 42) = v2;

    [*(this + 42) setActive:1];
    [*(this + 42) setVoluntary:0];
    [*(this + 42) setUserActivated:0];
    [*(this + 42) setKernelActivated:0];
    v4 = objc_opt_new();
    [*(this + 42) setAgentUUID:v4];

    v5 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (this + 144);
      if (*(this + 167) < 0)
      {
        v6 = *v6;
      }

      v7 = [*(this + 42) agentUUID];
      v8 = [v7 UUIDString];
      *buf = 136446466;
      v32 = v6;
      v33 = 2082;
      v34 = [v8 UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I NWAgent %{public}s: created fallback agent %{public}s", buf, 0x16u);
    }
  }

  if (!*(this + 43))
  {
    v9 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
    v10 = *(this + 43);
    *(this + 43) = v9;

    v11 = [*(this + 43) registerNetworkAgent:*(this + 42)];
    v12 = sub_100032AC8(this + 8);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v14 = (this + 144);
        if (*(this + 167) < 0)
        {
          v14 = *v14;
        }

        *buf = 136446210;
        v32 = v14;
        v15 = "#I NWAgent %{public}s: registered fallback agent";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
      }
    }

    else if (v13)
    {
      v16 = (this + 144);
      if (*(this + 167) < 0)
      {
        v16 = *v16;
      }

      *buf = 136446210;
      v32 = v16;
      v15 = "#N NWAgent %{public}s: fallback agent registration failed";
      goto LABEL_17;
    }
  }

  if (!*(this + 44))
  {
    v17 = [NEPolicyCondition accountIdentifier:@"com.apple.CommCenter.CellularPlanProvisioning"];
    v18 = [*(this + 42) agentUUID];
    v19 = [NEPolicyResult netAgentUUID:v18];

    v20 = [NEPolicy alloc];
    v30 = v17;
    v21 = [NSArray arrayWithObjects:&v30 count:1];
    v22 = [v20 initWithOrder:10 result:v19 conditions:v21];

    v23 = objc_alloc_init(NEPolicySession);
    v24 = *(this + 44);
    *(this + 44) = v23;

    [*(this + 44) setPriority:301];
    [*(this + 44) addPolicy:v22];
    if (([*(this + 44) apply] & 1) == 0)
    {
      v25 = sub_100032AC8(this + 8);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = (this + 144);
        if (*(this + 167) < 0)
        {
          v26 = *v26;
        }

        *buf = 136446210;
        v32 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#N NWAgent %{public}s: policy apply failed", buf, 0xCu);
      }
    }

    v27 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = (this + 144);
      if (*(this + 167) < 0)
      {
        v28 = *v28;
      }

      v29 = *(this + 44);
      *buf = 136446466;
      v32 = v28;
      v33 = 2112;
      v34 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I NWAgent : registered fallback policy uuid %{public}s, session %@", buf, 0x16u);
    }
  }
}

void DataConnectionAgentBootstrap::setProxyOverrideHook(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (*(a1 + 312))
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = *(a1 + 328);
    if (!v5)
    {
      return;
    }

    [v5 unregisterNetworkAgent];
    v6 = sub_100032AC8((a1 + 64));
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    v7 = (a1 + 144);
    if (*(a1 + 167) < 0)
    {
      v7 = *v7;
    }

    v27 = 136446210;
    v28 = v7;
    v8 = "#I NWAgent %{public}s: proxy agent unregistered";
    goto LABEL_35;
  }

  if (!*(a1 + 320))
  {
    v10 = [[NEProxyConfigurationNetworkAgent alloc] initWithProxyConfiguration:*(a1 + 312)];
    v11 = *(a1 + 320);
    *(a1 + 320) = v10;

    [*(a1 + 320) setActive:1];
    [*(a1 + 320) setVoluntary:0];
    [*(a1 + 320) setUserActivated:0];
    [*(a1 + 320) setKernelActivated:0];
    v12 = +[NSUUID UUID];
    [*(a1 + 320) setAgentUUID:v12];

    v13 = sub_100032AC8((a1 + 64));
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 320) agentUUID];
      v15 = [v14 UUIDString];
      v27 = 136446210;
      v28 = [v15 UTF8String];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I NWAgent: proxy agent created %{public}s", &v27, 0xCu);
    }
  }

  v16 = *(a1 + 328);
  if (!v16)
  {
    v17 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
    v18 = *(a1 + 328);
    *(a1 + 328) = v17;

    v16 = *(a1 + 328);
  }

  if (([v16 isRegistered] & 1) == 0)
  {
    v19 = [*(a1 + 328) registerNetworkAgent:*(a1 + 320)];
    v6 = sub_100032AC8((a1 + 64));
    v20 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v20)
      {
        v21 = (a1 + 144);
        if (*(a1 + 167) < 0)
        {
          v21 = *v21;
        }

        v27 = 136446210;
        v28 = v21;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I NWAgent %{public}s: registered proxy agent", &v27, 0xCu);
      }

      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      v6 = [NSString stringWithUTF8String:a2];
      if ([*(a1 + 328) addNetworkAgentToInterfaceNamed:v6])
      {
        v22 = sub_100032AC8((a1 + 64));
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = (a1 + 144);
          if (*(a1 + 167) < 0)
          {
            v23 = *v23;
          }

          v27 = 136446210;
          v28 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I NWAgent %{public}s: added proxy to pdp 0", &v27, 0xCu);
        }
      }

      else
      {
        v25 = sub_100032AC8((a1 + 64));
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = (a1 + 144);
          if (*(a1 + 167) < 0)
          {
            v26 = *v26;
          }

          v27 = 136446210;
          v28 = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#N NWAgent %{public}s: failed to register proxy to pdp", &v27, 0xCu);
        }

        [*(a1 + 328) unregisterNetworkAgent];
      }

      goto LABEL_41;
    }

    if (!v20)
    {
LABEL_41:

      return;
    }

    v24 = (a1 + 144);
    if (*(a1 + 167) < 0)
    {
      v24 = *v24;
    }

    v27 = 136446210;
    v28 = v24;
    v8 = "#I NWAgent %{public}s: proxy agent add to pdp 0 fail";
LABEL_35:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, &v27, 0xCu);
    goto LABEL_41;
  }
}

void DataConnectionAgentBootstrap::setProxy(uint64_t a1, const void **a2)
{
  sub_1000676D4((a1 + 312), a2);
  v3 = sub_100032AC8((a1 + 64));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 144);
    if (*(a1 + 167) < 0)
    {
      v4 = *v4;
    }

    v5 = 136446210;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I NWAgent %{public}s: bootstrap: will reset agent due to proxy setup", &v5, 0xCu);
  }

  DataConnectionAgent::resetAgent(a1);
}

void DataConnectionAgent::resetAgent(DataConnectionAgent *this)
{
  if (*(this + 262))
  {
    v2 = *(this + 251);
    *(this + 262) = 0;
    *(this + 247) = *(this + 258);
    *(this + 30) = v2;
  }

  v3 = *(this + 38);
  if (v3 && *(v3 + 16))
  {
    v4 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "resetAgent";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: cleaning traffic descriptors", &v17, 0xCu);
    }

    v5 = *(this + 38);
    sub_10001BB0C(v5, *(v5 + 8));
    *v5 = v5 + 8;
    *(v5 + 16) = 0;
    *(v5 + 8) = 0;
  }

  *(this + 35) = 0;
  v6 = sub_100032AC8(this + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 35);
    v17 = 134217984;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I NWAgent: fSliceAssertCount: %lu (reset)", &v17, 0xCu);
  }

  if (DataConnectionAgent::isPersistentAgent(this))
  {
    v8 = *(this + 15);
    if (v8)
    {
      v9 = [*(this + 15) isNetworkProvider];
      v10 = [*(this + 15) isUserActivated];
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    DataConnectionAgent::unsetPolicy(this);
    DataConnectionAgent::deinitAgent(this);
    v11 = this;
    v12 = v8 != 0;
    v13 = v9;
    v14 = v10;
  }

  else
  {
    DataConnectionAgent::unsetPolicy(this);
    DataConnectionAgent::deinitAgent(this);
    v11 = this;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  DataConnectionAgent::initAgent(v11, v12, v13, v14);
  if (*(this + 216) == 1)
  {
    DataConnectionAgent::setPolicy(this, 0, "reset agent", *(this + 72));
  }

  v15 = *(this + 15);
  if (v15)
  {
    v16 = [v15 isActive];
  }

  else
  {
    v16 = 0;
  }

  DataConnectionAgent::updateAgentState(this, v16, *(this + 168), this + 176, 1, 0);
}

void DataConnectionAgentBootstrap::~DataConnectionAgentBootstrap(DataConnectionAgentBootstrap *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 56)) = a2[8];
  *(this + 3) = a2[9];
  *(this + 13) = off_101E72888;
  v5 = *(this + 40);
  if (v5)
  {
    *(this + 40) = 0;
  }

  v6 = *(this + 41);
  if (v6)
  {
    *(this + 41) = 0;
  }

  v7 = *(this + 42);
  if (v7)
  {
    *(this + 42) = 0;
  }

  v8 = *(this + 43);
  if (v8)
  {
    *(this + 43) = 0;
  }

  v9 = *(this + 44);
  if (v9)
  {
    *(this + 44) = 0;

    v9 = *(this + 44);
  }

  sub_10001021C(this + 39);

  DataConnectionAgent::~DataConnectionAgent(this, a2 + 1);
}

void DataConnectionAgentBootstrap::~DataConnectionAgentBootstrap(DataConnectionAgentBootstrap *this)
{

  PersonalitySpecific::~PersonalitySpecific(v1);
}

{
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

void non-virtual thunk toDataConnectionAgentBootstrap::~DataConnectionAgentBootstrap(DataConnectionAgentBootstrap *this)
{

  PersonalitySpecific::~PersonalitySpecific(v1);
}

{

  PersonalitySpecific::~PersonalitySpecific(v1);
}

{
  DataConnectionAgentBootstrap::~DataConnectionAgentBootstrap((this - 24));
}

{
  DataConnectionAgentBootstrap::~DataConnectionAgentBootstrap((this - 104));
}

void DataConnectionAgentInterface::createDataConnectionAgent(const void **a1@<X0>, uint64_t a2@<X1>, void *a7@<X8>)
{
  if (a2 > 22)
  {
    if (a2 == 23)
    {
      operator new();
    }

    if (a2 == 24)
    {
      operator new();
    }

LABEL_13:
    operator new();
  }

  if (a2 == 6)
  {
    operator new();
  }

  if (a2 != 19)
  {
    goto LABEL_13;
  }

  v7 = a1[1];
  v8[1] = *a1;
  v8[2] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8[0] = 0;
  DataConnectionAgentInterface::createDataConnectionAgent(19, a7);
  sub_10001021C(v8);
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void DataConnectionAgentInterface::createDataConnectionAgent(int a2@<W1>, void *a7@<X8>)
{
  if (a2 == 19)
  {
    operator new();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10177A4D4();
  }

  __TUAssertTrigger("DataConnectionType::kDataConnectionBootstrap == connectionType");
  *a7 = 0;
  a7[1] = 0;
}

void sub_1006D2040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (v4)
  {
    operator delete();
  }

  _Unwind_Resume(a1);
}

uint64_t DataConnectionAgent::DataConnectionAgent(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, id *a6, void *a7)
{
  v9 = a3;
  (*(*(a7 + *(*a7 - 56)) + 16))(&v21);
  PersonalitySpecificImpl::PersonalitySpecificImpl();
  if (v22)
  {
    sub_100004A34(v22);
  }

  v12 = a2[1];
  v19 = *a2;
  v20 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *a6;
  DataConnectionAgentInterface::DataConnectionAgentInterface();
  v13 = v18;
  v18 = 0;

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a1 = off_101E72978;
  *(a1 + 24) = off_101E72A90;
  *(a1 + 176) = 0;
  *(a1 + 104) = off_101E72B60;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 155) = 0u;
  v14 = a2[1];
  v16 = *a2;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*(a7 + *(*a7 - 56)) + 16))(&v21);
  DataConnectionAgentPolicyInterface::create(&v16, &v21, (a1 + 200));
  if (v22)
  {
    sub_100004A34(v22);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *(a1 + 216) = 0;
  *(a1 + 220) = v9;
  *(a1 + 224) = 0;
  *(a1 + 232) = *a6;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 255) = 0;
  *(a1 + 246) = v9;
  *(a1 + 257) = v9;
  *(a1 + 304) = 0;
  *(a1 + 264) = a7;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  DataConnectionAgent::initAgent(a1, 0, 0, 0);
  DataConnectionAgent::updateAgent(a1, 1);
  return a1;
}

void sub_1006D2310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (*(v16 + 199) < 0)
  {
    operator delete(*v18);
  }

  if (*(v16 + 167) < 0)
  {
    operator delete(*(v16 + 144));
  }

  DataConnectionAgentInterface::~DataConnectionAgentInterface(v17);
  PersonalitySpecificImpl::~PersonalitySpecificImpl(v16);
  PersonalitySpecific::~PersonalitySpecific(v16);
  _Unwind_Resume(a1);
}

void sub_1006D23A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  JUMPOUT(0x1006D2384);
}

void sub_1006D23CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  JUMPOUT(0x1006D2394);
}

void sub_1006D23E8()
{
  sub_1006D71D4((v0 + 304), 0);
  sub_1006D5174((v0 + 272), 0);
  sub_10031F3F4(v1);

  if (!*(v0 + 208))
  {
    JUMPOUT(0x1006D2334);
  }

  JUMPOUT(0x1006D2330);
}

void DataConnectionAgent::handleRegistrationStatusChanged(uint64_t a1, char a2)
{
  v4 = sub_100032AC8((a1 + 64));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "handleRegistrationStatusChanged";
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: registrationState=%d fAgentData.change", &v11, 0x12u);
  }

  *(a1 + 251) = a2;
  if ((*(a1 + 262) & 1) == 0)
  {
    *(a1 + 240) = *(a1 + 251);
    *(a1 + 247) = *(a1 + 258);
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    v6 = [v5 getAgentData];
    if (v6 != a2)
    {
      v8 = v7;
      v9 = v6 & 0xFFFFFFFFFFFFFF00;
      [*(a1 + 120) storeAgentData:{v6 & 0xFFFFFFFFFFFFFF00 | a2, *&v7 & 0xFFFFFFLL}];
      v10 = *(a1 + 136);
      if (v10)
      {
        [v10 storeAgentData:{v9 | a2, *&v8 & 0xFFFFFFLL}];
      }

      DataConnectionAgent::updateAgentIfReady(a1);
    }
  }
}

void DataConnectionAgent::updateAgentIfReady(DataConnectionAgent *this)
{
  if (DataConnectionAgent::connectionReady(this))
  {
    v2 = *(this + 15);
    if (v2)
    {
      if ([v2 isActive])
      {
        v3 = *(this + 33);
        if (v3)
        {
          if ((*(*v3 + 56))(v3))
          {

            DataConnectionAgent::updateAgent(this, 0);
          }
        }
      }
    }
  }
}

void DataConnectionAgent::handleInHomeCountry_sync(DataConnectionAgent *this, int a2)
{
  v4 = sub_100032AC8(this + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "handleInHomeCountry_sync";
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: restEvent: inHomeCountry=%d fAgentData.change", &v11, 0x12u);
  }

  *(this + 252) = a2;
  *(this + 261) = 1;
  if ((*(this + 262) & 1) == 0)
  {
    v5 = *(this + 251);
    *(this + 247) = *(this + 258);
    *(this + 30) = v5;
  }

  v6 = *(this + 15);
  if (v6)
  {
    v7 = [v6 getAgentData];
    if (a2 != v7 >> 8 || (*&v8 & 0xFF0000) == 0)
    {
      v10 = 256;
      if (!a2)
      {
        v10 = 0;
      }

      [*(this + 15) storeAgentData:{v7 & 0xFFFFFFFFFFFF00FFLL | v10, v8 | 0x10000}];
      DataConnectionAgent::updateAgentIfReady(this);
    }
  }
}

void DataConnectionAgent::handleSatelliteDataPlanTier_sync(uint64_t a1, int a2)
{
  v4 = sub_100032AC8((a1 + 64));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "handleSatelliteDataPlanTier_sync";
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: tier=%d fAgentData.change", &v9, 0x12u);
  }

  *(a1 + 255) = a2;
  if ((*(a1 + 262) & 1) == 0)
  {
    v5 = *(a1 + 251);
    *(a1 + 247) = *(a1 + 258);
    *(a1 + 240) = v5;
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    v7 = [v6 getAgentData];
    if (a2 != (v7 >> 8) >> 24)
    {
      [*(a1 + 120) storeAgentData:{v7 & 0xFFFFFF00FFFFFFFFLL | (a2 << 32), *&v8 & 0xFFFFFFLL}];
      DataConnectionAgent::updateAgentIfReady(a1);
    }
  }
}

void DataConnectionAgent::dumpState(DataConnectionAgent *this)
{
  v2 = sub_100032AC8(this + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 12);
    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ------------ NWAgent: %s ------------------>>", buf, 0xCu);
  }

  v4 = objc_autoreleasePoolPush();
  v5 = DataConnectionAgent::isPersistentAgent(this);
  v6 = *(this + 15);
  if (v6)
  {
    v7 = [v6 isNetworkProvider];
    v8 = *(this + 15);
    if (v8)
    {
      v9 = [v8 isUserActivated];
      v10 = *(this + 15);
      if (v10)
      {
        v11 = [v10 isKernelActivated];
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v7 = 0;
  }

  v11 = 0;
LABEL_10:
  v12 = sub_100032AC8(this + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v65 = v4;
    v13 = *(this + 15);
    if (v13)
    {
      LOBYTE(v13) = [v13 isActive];
    }

    v64 = asStringBool(v13);
    v63 = asStringBool(*(this + 168));
    v62 = asStringBool(v5);
    v61 = asStringBool(*(this + 15) != 0);
    v60 = asStringBool(v7);
    v59 = asStringBool(v9);
    v14 = asStringBool(v11);
    v15 = asStringBool(*(this + 169));
    v16 = (this + 176);
    if (*(this + 199) < 0)
    {
      v16 = *v16;
    }

    v17 = (this + 144);
    if (*(this + 167) < 0)
    {
      v17 = *v17;
    }

    v18 = asStringBool(*(this + 170));
    v19 = *(this + 35);
    v20 = asString();
    v21 = asString();
    v22 = asString();
    *buf = 136318722;
    *&buf[4] = v64;
    v69 = 2080;
    *v70 = v63;
    *&v70[8] = 2080;
    v71 = v62;
    *v72 = 2080;
    *&v72[2] = v61;
    v73 = 2080;
    v74 = v60;
    v75 = 2080;
    v76 = v59;
    v77 = 2080;
    v78 = v14;
    v79 = 2080;
    v80 = v15;
    v81 = 2080;
    v82 = v16;
    v83 = 2082;
    v84 = v17;
    v85 = 2080;
    v86 = v18;
    v87 = 2048;
    v88 = v19;
    v89 = 2080;
    v90 = v20;
    v91 = 2080;
    v92 = v21;
    v93 = 2080;
    v94 = v22;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t NWAgent: isAgentActive() = %s, fAvailable = %s, persistentAgent = %s, fAgent = %s, networkProvider = %s, userActivated = %s, kernelActivated = %s, fFailure = %s, fInterface = %s, UUID = %{public}s, fPathSatisfied = %s fSliceAssertCount = %lu fConnectionState = %s fConfiguredFamily=%s fActiveFamily=%s", buf, 0x98u);
    v4 = v65;
  }

  v23 = *(this + 15);
  if (v23)
  {
    v24 = [v23 getAgentData];
    v26 = v25;
    v27 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [*(this + 15) agentDescription];
      v29 = v28;
      v30 = [v28 UTF8String];
      *buf = 136316162;
      *&buf[4] = v30;
      v69 = 1024;
      *v70 = v24;
      *&v70[4] = 1024;
      *&v70[6] = v24 >> 8;
      LOWORD(v71) = 1024;
      *(&v71 + 2) = v26 << 8 >> 24;
      HIWORD(v71) = 1024;
      *v72 = (v24 >> 8) >> 24;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t NWAgent: description = %s, registrationStatus = %d, inHomeCountry = %d, inHomeCountryKnown = %d, satelliteDataPlanTier = %d", buf, 0x24u);
    }
  }

  v31 = *(this + 17);
  if (v31)
  {
    v32 = [v31 getAgentData];
    v34 = v33;
    v35 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [*(this + 15) agentDescription];
      v37 = v36;
      v38 = [v36 UTF8String];
      *buf = 136316162;
      *&buf[4] = v38;
      v69 = 1024;
      *v70 = v32;
      *&v70[4] = 1024;
      *&v70[6] = v32 >> 8;
      LOWORD(v71) = 1024;
      *(&v71 + 2) = v34 << 8 >> 24;
      HIWORD(v71) = 1024;
      *v72 = (v32 >> 8) >> 24;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t NWAgentSliceRouter: description = %s, registrationStatus = %d, inHomeCountry = %d, inHomeCountryKnown = %d, satelliteDataPlanTier = %d", buf, 0x24u);
    }
  }

  v39 = *(this + 34);
  if (v39)
  {
    v42 = *v39;
    v40 = v39 + 1;
    v41 = v42;
    if (v42 != v40)
    {
      do
      {
        v43 = sub_100032AC8(this + 8);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = v41 + 4;
          if (*(v41 + 55) < 0)
          {
            v44 = *v44;
          }

          v45 = v41 + 7;
          if (*(v41 + 79) < 0)
          {
            v45 = *v45;
          }

          *buf = 136315394;
          *&buf[4] = v44;
          v69 = 2080;
          *v70 = v45;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t NWAgent: uuid = %s, bundleId = %s", buf, 0x16u);
        }

        v46 = v41[1];
        if (v46)
        {
          do
          {
            v47 = v46;
            v46 = *v46;
          }

          while (v46);
        }

        else
        {
          do
          {
            v47 = v41[2];
            v48 = *v47 == v41;
            v41 = v47;
          }

          while (!v48);
        }

        v41 = v47;
      }

      while (v47 != v40);
    }
  }

  v49 = *(this + 38);
  if (v49)
  {
    v52 = *v49;
    v50 = v49 + 1;
    v51 = v52;
    if (v52 != v50)
    {
      do
      {
        v53 = sub_100032AC8(this + 8);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          TrafficDescriptor::toString(buf, (v51 + 4));
          v54 = v70[9] >= 0 ? buf : *buf;
          *v66 = 136315138;
          v67 = v54;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t NWAgent: pending td = %s", v66, 0xCu);
          if ((v70[9] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        v55 = v51[1];
        if (v55)
        {
          do
          {
            v56 = v55;
            v55 = *v55;
          }

          while (v55);
        }

        else
        {
          do
          {
            v56 = v51[2];
            v48 = *v56 == v51;
            v51 = v56;
          }

          while (!v48);
        }

        v51 = v56;
      }

      while (v56 != v50);
    }
  }

  v57 = *(this + 25);
  if (v57)
  {
    (*(*v57 + 104))(v57);
  }

  v58 = *(this + 28);
  if (v58)
  {
    [v58 dumpState];
  }

  objc_autoreleasePoolPop(v4);
}

id DataConnectionAgent::isPersistentAgent(DataConnectionAgent *this)
{
  if (!*(this + 15))
  {
    return 0;
  }

  ServiceMap = Registry::getServiceMap(*(this + 9));
  v3 = ServiceMap;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  v15 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v15);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      if (!v10)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (v10)
  {
LABEL_11:
    v12 = *(this + 33) + *(**(this + 33) - 56);
    v13 = (*(*v12 + 24))(v12);
    if (v13 == (*(*v10 + 808))(v10))
    {
      goto LABEL_12;
    }

    if ((v11 & 1) == 0)
    {
      sub_100004A34(v9);
    }

    return 0;
  }

LABEL_12:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  return [*(this + 15) isPersistent];
}

void sub_1006D307C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006D309C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 120);
  if (v3)
  {
    if ([v3 isActive])
    {
      return;
    }

    v4 = objc_autoreleasePoolPush();
    v5 = sub_100032AC8((v2 + 64));
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (v2 + 144);
      if (*(v2 + 167) < 0)
      {
        v6 = *v6;
      }

      v7 = *(a1 + 32);
      *buf = 136446466;
      *&buf[4] = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I NWAgent %{public}s, client is being asked to come up: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    if ((*(v2 + 262) & 1) == 0)
    {
      *(v2 + 262) = 1;
    }

    ServiceMap = Registry::getServiceMap(*(v2 + 72));
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    *buf = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, buf);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        if (!v16)
        {
LABEL_23:
          if ((v17 & 1) == 0)
          {
            sub_100004A34(v15);
          }

          return;
        }

LABEL_21:
        v19 = *(v2 + 264) + *(**(v2 + 264) - 56);
        v20 = (*(*v19 + 24))(v19);
        v21 = [*(v2 + 120) connectionType];
        sub_10000501C(__p, "NWNetworkAgent");
        (*(*v16 + 88))(v16, v20, 1 << v21, 1, __p, 1, 0);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v18 = sub_100032AC8((v2 + 64));
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_10177A570();
  }
}

void sub_1006D3334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

void DataConnectionAgent::updateAssertion(DataConnectionAgent *this, char a2)
{
  if (!isSlice())
  {
    return;
  }

  v4 = *(this + 35);
  if (a2)
  {
    v5 = 1;
LABEL_6:
    *(this + 35) = v4 + v5;
    goto LABEL_7;
  }

  if (v4)
  {
    v5 = -1;
    goto LABEL_6;
  }

LABEL_7:
  v6 = sub_100032AC8(this + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 35);
    v9 = 134217984;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I NWAgent: fSliceAssertCount: %lu", &v9, 0xCu);
  }

  if ((v4 != 0) == (*(this + 35) == 0))
  {
    v8 = *(this + 33);
    if (v8)
    {
      (*(*v8 + 64))(v8, 0);
    }
  }
}

void sub_1006D34AC(uint64_t a1)
{
  v2 = *(a1 + 40);
  DataConnectionAgent::updateAssertion(v2, 1);
  if (!*(v2 + 120))
  {
    v35 = sub_100032AC8((v2 + 64));
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_10177A570();
    }

    return;
  }

  if (*(a1 + 48) == 1)
  {
    v3 = sub_100032AC8((v2 + 64));
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = asStringBool(*(a1 + 48));
      v5 = *(a1 + 32);
      *buf = 136315650;
      *&buf[4] = "assertDataAgentWithOptions_block_invoke";
      *&buf[12] = 2080;
      *&buf[14] = v4;
      *&buf[22] = 2112;
      *&buf[24] = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent slice router %s: options %@", buf, 0x20u);
    }

    context = objc_autoreleasePoolPush();
    v191 = [*(a1 + 32) objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
    v190 = [*(a1 + 32) objectForKeyedSubscript:NWNetworkAgentStartOptionProcessUUID];
    memset(&v197, 0, sizeof(v197));
    sub_10000501C(&v197, "");
    memset(&__str, 0, sizeof(__str));
    sub_10000501C(&__str, kDefaultAppBundleId);
    memset(&__p, 0, sizeof(__p));
    if (!v191)
    {
      log = sub_100032AC8((v2 + 64));
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v36 = (v2 + 144);
        if (*(v2 + 167) < 0)
        {
          v36 = *v36;
        }

        v37 = asStringBool(*(a1 + 48));
        *buf = 136315650;
        *&buf[4] = "assertDataAgentWithOptions_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v36;
        *&buf[22] = 2080;
        *&buf[24] = v37;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s slice %s: clientUUID is null", buf, 0x20u);
      }

      v185 = 0;
      v186 = 0;
      v188 = 0;
LABEL_117:

      if (*(a1 + 48) != 1)
      {
        v121 = 0;
        goto LABEL_183;
      }

      v206 = 0u;
      v207 = 0u;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      memset(v201, 0, sizeof(v201));
      v200 = 0u;
      memset(buf, 0, sizeof(buf));
      TrafficDescriptor::TrafficDescriptor(buf);
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      v116 = v188;
      if (size)
      {
        sub_1001696A4(&buf[48], &__str);
      }

      if (v190)
      {
        v117 = [v190 UUIDString];
        v118 = v117;
        v208.__r_.__value_.__r.__words[0] = [v117 UTF8String];
        sub_100184AD0(&buf[16], &v208.__r_.__value_.__l.__data_);

        v116 = v188;
      }

      if (v185)
      {
        *&buf[4] = v185;
        buf[8] = 1;
      }

      v119 = HIBYTE(v197.__r_.__value_.__r.__words[2]);
      if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v119 = v197.__r_.__value_.__l.__size_;
      }

      if (v119)
      {
        memset(&v208, 0, sizeof(v208));
        v120 = CSIPacketAddress::CSIPacketAddress();
        if (CSIPacketAddress::isZeroIP(v120))
        {
          sub_1001696A4(&v201[72], &v197);
        }

        else
        {
          sub_1001B88C0(&v201[104], &v208);
        }
      }

      if (v116)
      {
        WORD2(v202) = v116;
        BYTE6(v202) = 1;
      }

      if (HIDWORD(v185))
      {
        HIWORD(v202) = WORD2(v185);
        LOBYTE(v203) = 1;
      }

      if (v186)
      {
        if ((BYTE8(v203) & 1) == 0)
        {
          BYTE8(v203) = 1;
        }

        DWORD1(v203) = v186;
      }

      v122 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v122 = __p.__r_.__value_.__l.__size_;
      }

      if (v122)
      {
        if ((atomic_load_explicit(&qword_101FBA948, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA948))
        {
          sub_10000501C(&qword_101FBA930, "com.apple.networkrelay.tethering.");
          __cxa_atexit(&std::string::~string, &qword_101FBA930, &_mh_execute_header);
          __cxa_guard_release(&qword_101FBA948);
        }

        v123 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v123 = __p.__r_.__value_.__l.__size_;
        }

        v124 = byte_101FBA947;
        if ((byte_101FBA947 & 0x8000000000000000) != 0)
        {
          v124 = qword_101FBA938;
        }

        if (v123 > v124)
        {
          std::string::basic_string(&v208, &__p, 0, v124, &v198);
          v125 = SHIBYTE(v208.__r_.__value_.__r.__words[2]);
          if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v126 = HIBYTE(v208.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v126 = v208.__r_.__value_.__l.__size_;
          }

          v127 = qword_101FBA938;
          if (byte_101FBA947 >= 0)
          {
            v127 = byte_101FBA947;
          }

          if (v126 == v127)
          {
            if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v128 = &v208;
            }

            else
            {
              v128 = v208.__r_.__value_.__r.__words[0];
            }

            if (byte_101FBA947 >= 0)
            {
              v129 = &qword_101FBA930;
            }

            else
            {
              v129 = qword_101FBA930;
            }

            v130 = memcmp(v128, v129, v126) == 0;
          }

          else
          {
            v130 = 0;
          }

          if (v125 < 0)
          {
            operator delete(v208.__r_.__value_.__l.__data_);
          }

          if (v130)
          {
            *&v201[64] = 257;
            sub_1001696A4(&v201[32], &__p);
          }
        }
      }

      ServiceMap = Registry::getServiceMap(*(v2 + 72));
      v132 = ServiceMap;
      if ((v133 & 0x8000000000000000) != 0)
      {
        v134 = (v133 & 0x7FFFFFFFFFFFFFFFLL);
        v135 = 5381;
        do
        {
          v133 = v135;
          v136 = *v134++;
          v135 = (33 * v135) ^ v136;
        }

        while (v136);
      }

      std::mutex::lock(ServiceMap);
      v208.__r_.__value_.__r.__words[0] = v133;
      v137 = sub_100009510(&v132[1].__m_.__sig, &v208);
      if (v137)
      {
        v139 = v137[3];
        v138 = v137[4];
        if (v138)
        {
          atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v132);
          atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v138);
          v140 = 0;
          if (!v139)
          {
            goto LABEL_180;
          }

          goto LABEL_177;
        }
      }

      else
      {
        v139 = 0;
      }

      std::mutex::unlock(v132);
      v138 = 0;
      v140 = 1;
      if (!v139)
      {
        goto LABEL_180;
      }

LABEL_177:
      v141 = (*(*v139 + 904))(v139);
      if (v141)
      {
        (*(*v141 + 16))(v141, buf);
        v121 = 0;
        if ((v140 & 1) == 0)
        {
          goto LABEL_181;
        }

        goto LABEL_182;
      }

LABEL_180:
      v121 = 1;
      if ((v140 & 1) == 0)
      {
LABEL_181:
        sub_100004A34(v138);
      }

LABEL_182:
      TrafficDescriptor::~TrafficDescriptor(buf);
LABEL_183:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v197.__r_.__value_.__l.__data_);
      }

      objc_autoreleasePoolPop(context);
      if (!(v121 & 1 | ((*(a1 + 48) & 1) == 0)))
      {
        return;
      }

      goto LABEL_190;
    }

    log = [NWPath pathForClientID:v191];
    if (!log)
    {
      v38 = sub_100032AC8((v2 + 64));
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = (v2 + 144);
        if (*(v2 + 167) < 0)
        {
          v39 = *v39;
        }

        v40 = asStringBool(*(a1 + 48));
        *buf = 136315906;
        *&buf[4] = "assertDataAgentWithOptions_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v39;
        *&buf[22] = 2080;
        *&buf[24] = v40;
        *&buf[32] = 2112;
        *&buf[34] = v191;
        v41 = v38;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s slice %s: client UUID %@, path is null", buf, 0x2Au);
        v185 = 0;
        v186 = 0;
        v188 = 0;
      }

      else
      {
        v185 = 0;
        v186 = 0;
        v188 = 0;
        v41 = v38;
      }

      goto LABEL_116;
    }

    v6 = sub_100032AC8((v2 + 64));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = asStringBool(*(a1 + 48));
      *buf = 136315650;
      *&buf[4] = "assertDataAgentWithOptions_block_invoke";
      *&buf[12] = 2080;
      *&buf[14] = v7;
      *&buf[22] = 2112;
      *&buf[24] = log;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent slice %s: path %@", buf, 0x20u);
    }

    v8 = [log parameters];
    v9 = v8 == 0;

    if (v9)
    {
      v13 = sub_100032AC8((v2 + 64));
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v51 = (v2 + 144);
        if (*(v2 + 167) < 0)
        {
          v51 = *v51;
        }

        v52 = asStringBool(*(a1 + 48));
        *buf = 136315906;
        *&buf[4] = "assertDataAgentWithOptions_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v51;
        *&buf[22] = 2080;
        *&buf[24] = v52;
        *&buf[32] = 2112;
        *&buf[34] = v191;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s slice %s: client UUID %@, path parameters are null", buf, 0x2Au);
      }

      v186 = 0;
      HIDWORD(v185) = 0;
      v188 = 0;
      goto LABEL_63;
    }

    v10 = [log parameters];
    HIDWORD(v185) = [v10 ipProtocol];

    v11 = [log parameters];
    v186 = [v11 trafficClass];

    v12 = [log parameters];
    v13 = [v12 account];

    if (v13)
    {
      memset(buf, 0, 24);
      ctu::cf::assign();
      v14 = *buf;
      v208.__r_.__value_.__r.__words[0] = *&buf[8];
      *(v208.__r_.__value_.__r.__words + 7) = *&buf[15];
      v15 = buf[23];
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v14;
      __p.__r_.__value_.__l.__size_ = v208.__r_.__value_.__r.__words[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v208.__r_.__value_.__r.__words + 7);
      *(&__p.__r_.__value_.__s + 23) = v15;
    }

    v16 = [log parameters];
    v17 = [v16 sanitizedURL];
    v18 = v17 == 0;

    if (v18)
    {
      goto LABEL_33;
    }

    v19 = [log parameters];
    v20 = [v19 sanitizedURL];
    v21 = [v20 host];
    v22 = v21 == 0;

    if (!v22)
    {
      v23 = [log parameters];
      v24 = [v23 sanitizedURL];
      v25 = [v24 host];
      memset(buf, 0, 24);
      ctu::cf::assign();
      v26 = *buf;
      v208.__r_.__value_.__r.__words[0] = *&buf[8];
      *(v208.__r_.__value_.__r.__words + 7) = *&buf[15];
      v27 = buf[23];
      if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v197.__r_.__value_.__l.__data_);
      }

      v197.__r_.__value_.__r.__words[0] = v26;
      v197.__r_.__value_.__l.__size_ = v208.__r_.__value_.__r.__words[0];
      *(&v197.__r_.__value_.__r.__words[1] + 7) = *(v208.__r_.__value_.__r.__words + 7);
      *(&v197.__r_.__value_.__s + 23) = v27;
    }

    v28 = [log parameters];
    v29 = [v28 sanitizedURL];
    v30 = [v29 port];
    v31 = v30 == 0;

    if (v31)
    {
LABEL_33:
      v188 = 0;
    }

    else
    {
      v32 = [log parameters];
      v33 = [v32 sanitizedURL];
      v34 = [v33 port];
      v188 = [v34 unsignedShortValue];
    }

    v42 = [log parameters];
    v43 = [v42 effectiveProcessUUID];
    v44 = v43 == 0;

    if (v44)
    {
LABEL_61:
      v65 = [log parameters];
      v66 = [v65 pid] == 0;

      if (!v66)
      {
        v67 = [log parameters];
        LODWORD(v185) = [v67 pid];

        goto LABEL_64;
      }

LABEL_63:
      LODWORD(v185) = 0;
LABEL_64:

      v68 = [log effectiveLocalEndpoint];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v41 = [log effectiveLocalEndpoint];
      }

      else
      {
        v41 = 0;
      }

      v70 = [log effectiveRemoteEndpoint];
      objc_opt_class();
      v71 = objc_opt_isKindOfClass();

      if (v71)
      {
        v189 = [log effectiveRemoteEndpoint];
        v72 = [v189 port];
        v73 = v72 == 0;

        if (!v73)
        {
          v74 = [v189 port];
          v188 = [v74 intValue];
        }

        v75 = [v189 hostname];
        v76 = v75 == 0;

        if (!v76)
        {
          memset(&v208, 0, sizeof(v208));
          v77 = [v189 hostname];
          memset(buf, 0, 24);
          ctu::cf::assign();
          v208 = *buf;

          v78 = HIBYTE(v208.__r_.__value_.__r.__words[2]);
          v79 = HIBYTE(v208.__r_.__value_.__r.__words[2]);
          if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v78 = v208.__r_.__value_.__l.__size_;
          }

          if (v78)
          {
            std::string::operator=(&v197, &v208);
            v79 = HIBYTE(v208.__r_.__value_.__r.__words[2]);
          }

          if (v79 < 0)
          {
            operator delete(v208.__r_.__value_.__l.__data_);
          }
        }
      }

      else
      {
        v189 = 0;
      }

      v80 = [log parameters];
      if (v80)
      {
        if (v41)
        {
          if (v189)
          {
            v81 = [v41 hostname];
            if (v81)
            {
              v82 = [v41 port];
              if (v82)
              {
                v83 = [v189 hostname];
                if (v83)
                {
                  v84 = [v189 port];
                  v85 = v84 == 0;

                  if (!v85)
                  {
                    v183 = sub_100032AC8((v2 + 64));
                    if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
                    {
                      v86 = (v2 + 144);
                      if (*(v2 + 167) < 0)
                      {
                        v86 = *v86;
                      }

                      v170 = v86;
                      v167 = asStringBool(*(a1 + 48));
                      v161 = [log parameters];
                      v181 = [v161 processUUID];
                      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        p_str = &__str;
                      }

                      else
                      {
                        p_str = __str.__r_.__value_.__r.__words[0];
                      }

                      v163 = [log parameters];
                      v165 = [v163 pid];
                      v157 = [log interface];
                      v179 = [v157 interfaceName];
                      v159 = [log interface];
                      v88 = [v159 type];
                      v178 = [v41 hostname];
                      v176 = [v41 port];
                      v174 = [v189 hostname];
                      v172 = [v189 port];
                      v89 = [log parameters];
                      v90 = [v89 sanitizedURL];
                      v91 = [log parameters];
                      v92 = [v91 ipProtocol];
                      v93 = [log parameters];
                      v94 = [v93 trafficClass];
                      v95 = &v197;
                      if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v95 = v197.__r_.__value_.__r.__words[0];
                      }

                      p_p = &__p;
                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        p_p = __p.__r_.__value_.__r.__words[0];
                      }

                      *buf = 136320002;
                      *&buf[4] = "assertDataAgentWithOptions_block_invoke";
                      *&buf[12] = 2082;
                      *&buf[14] = v170;
                      *&buf[22] = 2080;
                      *&buf[24] = v167;
                      *&buf[32] = 2112;
                      *&buf[34] = v191;
                      *&buf[42] = 2112;
                      *&buf[44] = v190;
                      *&buf[52] = 2112;
                      *&buf[54] = v181;
                      *&buf[62] = 2080;
                      *&v200 = p_str;
                      WORD4(v200) = 1024;
                      *(&v200 + 10) = v165;
                      HIWORD(v200) = 2112;
                      *v201 = v179;
                      *&v201[8] = 2048;
                      *&v201[10] = v88;
                      *&v201[18] = 2112;
                      *&v201[20] = v178;
                      *&v201[28] = 2112;
                      *&v201[30] = v176;
                      *&v201[38] = 2112;
                      *&v201[40] = v174;
                      *&v201[48] = 2112;
                      *&v201[50] = v172;
                      *&v201[58] = 2112;
                      *&v201[60] = v90;
                      *&v201[68] = 1024;
                      *&v201[70] = v92;
                      *&v201[74] = 2048;
                      *&v201[76] = v94;
                      *&v201[84] = 2080;
                      *&v201[86] = v95;
                      *&v201[94] = 1024;
                      *&v201[96] = v188;
                      *&v201[100] = 2080;
                      *&v201[102] = p_p;
                      _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s slice %s, client UUID %@, effective process UUID %@, process UUID %@, bundleID %s, pid %d, interface %@ %ld, local host %@, local port %@, remote host %@, remote port %@, URL %@, IP protocol %d, traffic class %lu, host(1) %s, port(1) %d, accountId %s", buf, 0xBEu);
                    }

                    v97 = sub_100032AC8((v2 + 64));
                    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                    {
                      v98 = (v2 + 144);
                      if (*(v2 + 167) < 0)
                      {
                        v98 = *v98;
                      }

                      v99 = asStringBool(*(a1 + 48));
                      v100 = [log privateDescription];
                      *buf = 136315906;
                      *&buf[4] = "assertDataAgentWithOptions_block_invoke";
                      *&buf[12] = 2082;
                      *&buf[14] = v98;
                      *&buf[22] = 2080;
                      *&buf[24] = v99;
                      *&buf[32] = 2112;
                      *&buf[34] = v100;
                      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s slice %s, description %@", buf, 0x2Au);
                    }

                    goto LABEL_114;
                  }

LABEL_103:
                  v101 = [log parameters];
                  v102 = v101 == 0;

                  if (v102)
                  {
LABEL_115:

LABEL_116:
                    goto LABEL_117;
                  }

                  v97 = sub_100032AC8((v2 + 64));
                  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                  {
                    v103 = (v2 + 144);
                    if (*(v2 + 167) < 0)
                    {
                      v103 = *v103;
                    }

                    v182 = v97;
                    v104 = asStringBool(*(a1 + 48));
                    v166 = [log parameters];
                    v105 = [v166 processUUID];
                    v106 = &__str;
                    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v106 = __str.__r_.__value_.__r.__words[0];
                    }

                    v177 = v106;
                    v180 = v105;
                    v168 = [log parameters];
                    v175 = [v168 pid];
                    v162 = [log interface];
                    v173 = [v162 interfaceName];
                    v164 = [log interface];
                    v171 = [v164 type];
                    v158 = [log parameters];
                    v184 = [v158 sanitizedURL];
                    v169 = v41;
                    v160 = [log parameters];
                    v156 = [v160 ipProtocol];
                    v107 = [log parameters];
                    v108 = [v107 trafficClass];
                    v109 = SHIBYTE(v197.__r_.__value_.__r.__words[2]);
                    v110 = v197.__r_.__value_.__r.__words[0];
                    v111 = [log parameters];
                    v112 = v111;
                    *&buf[4] = "assertDataAgentWithOptions_block_invoke";
                    v113 = &__p;
                    *buf = 136319234;
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v113 = __p.__r_.__value_.__r.__words[0];
                    }

                    *&buf[12] = 2082;
                    v114 = &v197;
                    *&buf[14] = v103;
                    if (v109 < 0)
                    {
                      v114 = v110;
                    }

                    *&buf[22] = 2080;
                    *&buf[24] = v104;
                    *&buf[32] = 2112;
                    *&buf[34] = v191;
                    *&buf[42] = 2112;
                    *&buf[44] = v190;
                    *&buf[52] = 2112;
                    *&buf[54] = v180;
                    *&buf[62] = 2080;
                    *&v200 = v177;
                    WORD4(v200) = 1024;
                    *(&v200 + 10) = v175;
                    HIWORD(v200) = 2112;
                    *v201 = v173;
                    *&v201[8] = 2048;
                    *&v201[10] = v171;
                    *&v201[18] = 2112;
                    v97 = v182;
                    *&v201[20] = v184;
                    *&v201[28] = 1024;
                    *&v201[30] = v156;
                    *&v201[34] = 2048;
                    *&v201[36] = v108;
                    *&v201[44] = 2080;
                    *&v201[46] = v114;
                    *&v201[54] = 1024;
                    *&v201[56] = v188;
                    *&v201[60] = 2080;
                    *&v201[62] = v113;
                    *&v201[70] = 2112;
                    *&v201[72] = v111;
                    _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s slice %s, client UUID %@, process effective UUID %@, process UUID %@, bundleID %s, pid %d, interface %@ %ld, URL %@, IP protocol %d, traffic class %lu, remote host %s, remote port %d, accountId %s, path parameters %@", buf, 0xA0u);

                    v41 = v169;
                  }

LABEL_114:

                  goto LABEL_115;
                }
              }
            }
          }
        }
      }

      goto LABEL_103;
    }

    v45 = [log parameters];
    v46 = [v45 effectiveProcessUUID];

    memset(buf, 0, 24);
    v190 = v46;
    v47 = [v46 UUIDString];
    v48 = v47;
    sub_10000501C(buf, [v47 UTF8String]);

    v49 = *(v2 + 272);
    if (!v49)
    {
      operator new();
    }

    v50 = sub_100007A6C(v49, buf);
    if (*(v2 + 272) + 8 != v50)
    {
      std::string::operator=(&__str, (v50 + 56));
LABEL_59:
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      goto LABEL_61;
    }

    v53 = Registry::getServiceMap(*(v2 + 72));
    v54 = v53;
    if ((v55 & 0x8000000000000000) != 0)
    {
      v56 = (v55 & 0x7FFFFFFFFFFFFFFFLL);
      v57 = 5381;
      do
      {
        v55 = v57;
        v58 = *v56++;
        v57 = (33 * v57) ^ v58;
      }

      while (v58);
    }

    std::mutex::lock(v53);
    v208.__r_.__value_.__r.__words[0] = v55;
    v59 = sub_100009510(&v54[1].__m_.__sig, &v208);
    if (v59)
    {
      v61 = v59[3];
      v60 = v59[4];
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v54);
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v60);
        v62 = 0;
LABEL_53:
        if (v61)
        {
          (*(*v61 + 64))(&v208, v61, buf);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str = v208;
          v63 = *(v2 + 272);
          v208.__r_.__value_.__r.__words[0] = buf;
          v64 = sub_100173F08(v63, buf, &unk_101802C98, &v208, &v198);
          std::string::operator=((v64 + 7), &__str);
        }

        if ((v62 & 1) == 0)
        {
          sub_100004A34(v60);
        }

        goto LABEL_59;
      }
    }

    else
    {
      v61 = 0;
    }

    std::mutex::unlock(v54);
    v60 = 0;
    v62 = 1;
    goto LABEL_53;
  }

LABEL_190:
  v142 = *(v2 + 120);
  if (!v142 || ([v142 isActive] & 1) == 0)
  {
    if ((*(v2 + 262) & 1) == 0)
    {
      *(v2 + 262) = 1;
    }

    v143 = Registry::getServiceMap(*(v2 + 72));
    v144 = v143;
    if (v145 < 0)
    {
      v146 = (v145 & 0x7FFFFFFFFFFFFFFFLL);
      v147 = 5381;
      do
      {
        v145 = v147;
        v148 = *v146++;
        v147 = (33 * v147) ^ v148;
      }

      while (v148);
    }

    std::mutex::lock(v143);
    *buf = v145;
    v149 = sub_100009510(&v144[1].__m_.__sig, buf);
    if (v149)
    {
      v151 = v149[3];
      v150 = v149[4];
      if (v150)
      {
        atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v144);
        atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v150);
        v152 = 0;
        if (!v151)
        {
LABEL_205:
          if ((v152 & 1) == 0)
          {
            sub_100004A34(v150);
          }

          return;
        }

LABEL_203:
        v153 = *(v2 + 264) + *(**(v2 + 264) - 56);
        v154 = (*(*v153 + 24))(v153);
        v155 = [*(v2 + 120) connectionType];
        sub_10000501C(v193, "NWNetworkAgent assert");
        (*(*v151 + 88))(v151, v154, 1 << v155, 1, v193, 1, 0);
        if (v194 < 0)
        {
          operator delete(v193[0]);
        }

        goto LABEL_205;
      }
    }

    else
    {
      v151 = 0;
    }

    std::mutex::unlock(v144);
    v150 = 0;
    v152 = 1;
    if (!v151)
    {
      goto LABEL_205;
    }

    goto LABEL_203;
  }
}

void sub_1006D4C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56)
{
  __cxa_guard_abort(&qword_101FBA948);
  TrafficDescriptor::~TrafficDescriptor(&a56);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1006D5174(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_1000DD0AC(v2, *(v2 + 8));

    operator delete();
  }

  return result;
}

void sub_1006D51D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  DataConnectionAgent::updateAssertion(v2, 0);
  if (*(v2 + 120))
  {
    if (*(a1 + 48) == 1)
    {
      v3 = objc_autoreleasePoolPush();
      v4 = [*(a1 + 32) objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
      v5 = sub_100032AC8((v2 + 64));
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v16 = 136315394;
        v17 = "unassertDataAgentWithOptions_block_invoke";
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: unassert options %@", &v16, 0x16u);
      }

      if (v4)
      {
        v7 = [NWPath pathForClientID:v4];
        v8 = sub_100032AC8((v2 + 64));
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = (v2 + 144);
          if (*(v2 + 167) < 0)
          {
            v9 = *v9;
          }

          v10 = asStringBool(*(a1 + 48));
          v16 = 136316162;
          v17 = "unassertDataAgentWithOptions_block_invoke";
          v18 = 2082;
          v19 = v9;
          v20 = 2080;
          v21 = v10;
          v22 = 2112;
          v23 = v4;
          v24 = 2112;
          v25 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: unassert NWAgent %{public}s slice %s, client UUID %@, path %@", &v16, 0x34u);
        }

        v11 = sub_100032AC8((v2 + 64));
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = (v2 + 144);
          if (*(v2 + 167) < 0)
          {
            v12 = *v12;
          }

          v13 = asStringBool(*(a1 + 48));
          v14 = [v7 privateDescription];
          v16 = 136315906;
          v17 = "unassertDataAgentWithOptions_block_invoke";
          v18 = 2082;
          v19 = v12;
          v20 = 2080;
          v21 = v13;
          v22 = 2112;
          v23 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: unassert NWAgent %{public}s slice %s, description %@", &v16, 0x2Au);
        }
      }

      objc_autoreleasePoolPop(v3);
    }
  }

  else
  {
    v15 = sub_100032AC8((v2 + 64));
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10177A5AC();
    }
  }
}

void DataConnectionAgent::handleStartFailure(DataConnectionAgent *this)
{
  if (!*(this + 14))
  {
    v4 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (this + 144);
      if (*(this + 167) < 0)
      {
        v8 = *v8;
      }

      v13 = 136315394;
      v14 = "handleStartFailure";
      v15 = 2082;
      v16 = v8;
      v7 = "#I %s: NWAgent %{public}s !fRegistration";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v2 = *(this + 15);
  if (!v2)
  {
    v4 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (this + 144);
      if (*(this + 167) < 0)
      {
        v9 = *v9;
      }

      v13 = 136315394;
      v14 = "handleStartFailure";
      v15 = 2082;
      v16 = v9;
      v7 = "#I %s: NWAgent %{public}s  !fAgent";
      goto LABEL_16;
    }

LABEL_17:

    return;
  }

  v3 = [v2 isActive];
  v4 = sub_100032AC8(this + 8);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = (this + 144);
      if (*(this + 167) < 0)
      {
        v6 = *v6;
      }

      v13 = 136315394;
      v14 = "handleStartFailure";
      v15 = 2082;
      v16 = v6;
      v7 = "#I %s: NWAgent %{public}s, we don't post failures in active state";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v7, &v13, 0x16u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (v5)
  {
    v10 = (this + 144);
    if (*(this + 167) < 0)
    {
      v10 = *v10;
    }

    v13 = 136315394;
    v14 = "handleStartFailure";
    v15 = 2082;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: Updating NWAgent %{public}s to notify failure to start", &v13, 0x16u);
  }

  DataConnectionAgent::updateAgent(this, 0);
  if (*(this + 262))
  {
    v12 = *(this + 251);
    v11 = this + 251;
    v11[11] = 0;
    *(v11 - 1) = *(v11 + 7);
    *(v11 - 11) = v12;
  }
}

void DataConnectionAgent::updateAgent(DataConnectionAgent *this, int a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(this + 14);
  if (v5 && [v5 isRegistered])
  {
    v6 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = (this + 144);
      if (*(this + 167) < 0)
      {
        v7 = *v7;
      }

      *buf = 136315394;
      *v33 = "updateAgent";
      *&v33[8] = 2082;
      v34 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: Updating NWAgent %{public}s", buf, 0x16u);
    }

    v8 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(this + 15) isNetworkProvider];
      v10 = [*(this + 15) isUserActivated];
      v30 = [*(this + 15) isKernelActivated];
      v11 = [*(this + 15) agentUUID];
      v12 = [v11 description];
      v13 = v12;
      v31 = v11;
      v29 = [v12 UTF8String];
      v14 = [*(this + 15) agentDescription];
      v15 = v14;
      v28 = a2;
      v16 = [v14 UTF8String];
      LODWORD(v11) = [*(this + 15) isActive];
      v17 = [*(this + 15) isVoluntary];
      v18 = [*(this + 15) isSpecificUseOnly];
      v19 = *(this + 246);
      v20 = *(this + 241);
      v21 = *(this + 240);
      v22 = *(this + 245);
      *buf = 67111938;
      *v33 = v9;
      *&v33[4] = 1024;
      *&v33[6] = v10;
      LOWORD(v34) = 1024;
      *(&v34 + 2) = v30;
      HIWORD(v34) = 2082;
      v35 = v29;
      v36 = 2080;
      v37 = v16;
      v38 = 1024;
      v39 = v11;
      v40 = 1024;
      v41 = v17;
      v42 = 1024;
      v43 = v18;
      v44 = 1024;
      v45 = v19;
      v46 = 1024;
      v47 = v20;
      v48 = 1024;
      v49 = v21;
      v50 = 1024;
      v51 = v22;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I NWAgent: agent flags networkprovider:%d useractivated:%d kernelactivated:%d uuid:%{public}s desc:%s active:%d, voluntary:%d, specificuse:%d\n Agent data type:%d, inhome:%d, reg:%d, ho:%d", buf, 0x52u);

      a2 = v28;
    }

    v23 = [*(this + 14) updateNetworkAgent:*(this + 15)];
    objc_autoreleasePoolPop(v4);
    if ((v23 & 1) == 0)
    {
      v24 = sub_100032AC8(this + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = (this + 144);
        if (*(this + 167) < 0)
        {
          v25 = *v25;
        }

        *buf = 136315394;
        *v33 = "updateAgent";
        *&v33[8] = 2082;
        v34 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s: fAgent.change Failed to update NWAgent %{public}s", buf, 0x16u);
      }

      DataConnectionAgent::handleFailure(this, a2);
    }
  }

  else
  {
    v26 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = (this + 144);
      if (*(this + 167) < 0)
      {
        v27 = *v27;
      }

      *buf = 136315394;
      *v33 = "updateAgent";
      *&v33[8] = 2082;
      v34 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s is not ready to be updated", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

void DataConnectionAgent::handleFailure(DataConnectionAgent *this, int a2)
{
  *(this + 169) = 1;
  v4 = sub_100032AC8(this + 8);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = (this + 144);
      if (*(this + 167) < 0)
      {
        v6 = *v6;
      }

      v8 = 136315394;
      v9 = "handleFailure";
      v10 = 2082;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s, Failed to recover, just giving up", &v8, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      v7 = (this + 144);
      if (*(this + 167) < 0)
      {
        v7 = *v7;
      }

      v8 = 136315394;
      v9 = "handleFailure";
      v10 = 2082;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s, Failure detected, trying to recover", &v8, 0x16u);
    }

    DataConnectionAgent::resetAgent(this);
  }
}

void DataConnectionAgent::updateAgentState(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v6 = a6;
  memset(&__dst, 0, sizeof(__dst));
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a4, *(a4 + 8));
  }

  else
  {
    __dst = *a4;
  }

  if (a3)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      v13 = *(a1 + 120);
      if (v13)
      {
        [v13 connectionType];
      }

      ActiveFakePositiveInterfaceName = getActiveFakePositiveInterfaceName();
      sub_100016890(&__dst, ActiveFakePositiveInterfaceName);
    }
  }

  if (!*(a1 + 112))
  {
    v18 = sub_100032AC8((a1 + 64));
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = (a1 + 144);
      if (*(a1 + 167) < 0)
      {
        v19 = *v19;
      }

      *buf = 136315394;
      *&buf[4] = "updateAgentState";
      v101 = 2082;
      v102 = v19;
      v20 = "#I %s: NWAgent %{public}s !fRegistration";
      goto LABEL_28;
    }

LABEL_29:

    goto LABEL_195;
  }

  v15 = *(a1 + 120);
  if (!v15)
  {
    v18 = sub_100032AC8((a1 + 64));
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = (a1 + 144);
      if (*(a1 + 167) < 0)
      {
        v21 = *v21;
      }

      *buf = 136315394;
      *&buf[4] = "updateAgentState";
      v101 = 2082;
      v102 = v21;
      v20 = "#I %s: NWAgent %{public}s  !fAgent";
LABEL_28:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 0x16u);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if ([v15 isActive] == a2)
  {
    updated = 0;
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      *(a1 + 280) = 0;
      v16 = sub_100032AC8((a1 + 64));
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 280);
        *buf = 134217984;
        *&buf[4] = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I NWAgent: fSliceAssertCount: %lu (inactive)", buf, 0xCu);
      }
    }

    if (*(a4 + 23) < 0)
    {
      sub_100005F2C(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v98 = *(a4 + 16);
    }

    (*(*a1 + 208))(a1, __p, a2);
    if (SHIBYTE(v98) < 0)
    {
      operator delete(__p[0]);
    }

    v23 = *(a1 + 120);
    if (v23)
    {
      v24 = [v23 isActive];
    }

    else
    {
      v24 = 0;
    }

    v25 = sub_100032AC8((a1 + 64));
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 96);
      *buf = 136315650;
      *&buf[4] = "updateAgentState";
      v101 = 2080;
      v102 = v26;
      v103 = 1024;
      LODWORD(v104) = a2;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: setting agent %s active:%d ", buf, 0x1Cu);
    }

    DataConnectionAgent::setAgentActive(a1, a2);
    v27 = *(a1 + 120);
    updated = !v27 || ![v27 isActive] || *(a1 + 170) == 1;
    v28 = sub_100032AC8((a1 + 64));
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = (a1 + 144);
      if (*(a1 + 167) < 0)
      {
        v29 = *v29;
      }

      v30 = asStringBool(v24);
      v31 = asStringBool(a2);
      v32 = asStringBool(*(a1 + 170));
      v33 = asStringBool(updated);
      *buf = 136447234;
      *&buf[4] = v29;
      v101 = 2080;
      v102 = v30;
      v103 = 2080;
      v104 = v31;
      v105 = 2080;
      v106 = v32;
      v107 = 2080;
      v108 = v33;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I NWAgent %{public}s AgentActive %s->%s fPathSatisfied: %s willUpdate: %s", buf, 0x34u);
    }
  }

  if (*(a1 + 168) != a3)
  {
    v34 = sub_100032AC8((a1 + 64));
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = (a1 + 144);
      if (*(a1 + 167) < 0)
      {
        v35 = *v35;
      }

      v36 = asStringBool(*(a1 + 168));
      v37 = asStringBool(a3);
      *buf = 136315906;
      *&buf[4] = "updateAgentState";
      v101 = 2082;
      v102 = v35;
      v103 = 2080;
      v104 = v36;
      v105 = 2080;
      v106 = v37;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s fAvailable %s->%s", buf, 0x2Au);
    }

    *(a1 + 168) = a3;
  }

  if ((a3 & 1) == 0)
  {
    v38 = *(a1 + 120);
    if (!v38 || (v38 = [(capabilities::ct *)v38 isActive], !v38))
    {
      if ((capabilities::ct::supportsIPCInterfaceConfig(v38) & v6) != 1)
      {
        goto LABEL_97;
      }

      v48 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v48 = __dst.__r_.__value_.__l.__size_;
      }

      if (v48)
      {
        v49 = sub_100032AC8((a1 + 64));
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = (a1 + 144);
          if (*(a1 + 167) < 0)
          {
            v50 = *v50;
          }

          v51 = (a1 + 176);
          if (*(a1 + 199) < 0)
          {
            v51 = *v51;
          }

          p_dst = &__dst;
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          *buf = 136315906;
          *&buf[4] = "updateAgentState";
          v101 = 2082;
          v102 = v50;
          v103 = 2080;
          v104 = v51;
          v105 = 2080;
          v106 = p_dst;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s: Already registered but interface changed [%s]->[%s]", buf, 0x2Au);
        }

        v53 = 1;
      }

      else
      {
LABEL_97:
        v53 = 0;
      }

      if ([*(a1 + 112) isRegistered])
      {
        if (DataConnectionAgent::isPersistentAgent(a1))
        {
          updated = DataConnectionAgent::updatePersistentAgentAvailability(a1, 0);
          if (!v53)
          {
            goto LABEL_176;
          }

          goto LABEL_115;
        }

        v55 = sub_100032AC8((a1 + 64));
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = (a1 + 144);
          if (*(a1 + 167) < 0)
          {
            v56 = *v56;
          }

          *buf = 136315394;
          *&buf[4] = "updateAgentState";
          v101 = 2082;
          v102 = v56;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s: Unregistering NWAgent %{public}s", buf, 0x16u);
        }

        if (([*(a1 + 112) unregisterNetworkAgent] & 1) == 0)
        {
          v57 = sub_100032AC8((a1 + 64));
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = (a1 + 144);
            if (*(a1 + 167) < 0)
            {
              v58 = *v58;
            }

            *buf = 136315394;
            *&buf[4] = "updateAgentState";
            v101 = 2082;
            v102 = v58;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#E %s: Failed to unregister NWAgent %{public}s", buf, 0x16u);
          }

          v59 = *(a1 + 120);
          if (!v59 || ([v59 isActive] & 1) == 0)
          {
            DataConnectionAgent::handleFailure(a1, a5);
          }
        }
      }

      updated = 0;
      if (!v53)
      {
        goto LABEL_176;
      }

      goto LABEL_115;
    }
  }

  if (DataConnectionAgent::isPersistentAgent(a1))
  {
    updated |= DataConnectionAgent::updatePersistentAgentAvailability(a1, 1);
  }

  if (![*(a1 + 112) isRegistered])
  {
    updated = 0;
    v54 = 1;
    goto LABEL_139;
  }

  if ((v6 & 1) == 0)
  {
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v39 = __dst.__r_.__value_.__l.__size_;
    }

    v40 = *(a1 + 199);
    v41 = v40;
    if ((v40 & 0x80u) != 0)
    {
      v40 = *(a1 + 184);
    }

    if (v39 == v40)
    {
      v42 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
      v43 = v41 >= 0 ? (a1 + 176) : *(a1 + 176);
      if (!memcmp(v42, v43, v39))
      {
        goto LABEL_176;
      }
    }
  }

  v44 = sub_100032AC8((a1 + 64));
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = (a1 + 144);
    if (*(a1 + 167) < 0)
    {
      v45 = *v45;
    }

    v46 = (a1 + 176);
    if (*(a1 + 199) < 0)
    {
      v46 = *v46;
    }

    v47 = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v47 = __dst.__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    *&buf[4] = "updateAgentState";
    v101 = 2082;
    v102 = v45;
    v103 = 2080;
    v104 = v46;
    v105 = 2080;
    v106 = v47;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s has to be registered; Already registered but interface changed [%s]->[%s]", buf, 0x2Au);
  }

LABEL_115:
  if ((*(a1 + 199) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 199))
    {
      goto LABEL_138;
    }

LABEL_119:
    v60 = sub_100032AC8((a1 + 64));
    v61 = (a1 + 176);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v62 = (a1 + 144);
      if (*(a1 + 167) < 0)
      {
        v62 = *v62;
      }

      v63 = (a1 + 176);
      if (*(a1 + 199) < 0)
      {
        v63 = *v61;
      }

      *buf = 136315650;
      *&buf[4] = "updateAgentState";
      v101 = 2082;
      v102 = v62;
      v103 = 2080;
      v104 = v63;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s: Removing NWAgent %{public}s from old interface [%s]", buf, 0x20u);
    }

    v64 = [NSString alloc];
    v65 = (a1 + 176);
    if (*(a1 + 199) < 0)
    {
      v65 = *v61;
    }

    v66 = [v64 initWithUTF8String:v65];
    if (([*(a1 + 112) removeNetworkAgentFromInterfaceNamed:v66] & 1) == 0)
    {
      v67 = sub_100032AC8((a1 + 64));
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = (a1 + 144);
        if (*(a1 + 167) < 0)
        {
          v68 = *v68;
        }

        if (*(a1 + 199) < 0)
        {
          v61 = *v61;
        }

        *buf = 136315650;
        *&buf[4] = "updateAgentState";
        v101 = 2082;
        v102 = v68;
        v103 = 2080;
        v104 = v61;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#E %s: Failed to remove NWAgent %{public}s from network Interface [%s]", buf, 0x20u);
      }

      v69 = *(a1 + 120);
      if (!v69 || ([v69 isActive] & 1) == 0)
      {
        DataConnectionAgent::handleFailure(a1, a5);
      }
    }

    goto LABEL_138;
  }

  if (*(a1 + 184))
  {
    goto LABEL_119;
  }

LABEL_138:
  v54 = 0;
LABEL_139:
  DataConnectionAgent::setInterfaceName(a1, &__dst, v6);
  if (v54)
  {
    v70 = sub_100032AC8((a1 + 64));
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = (a1 + 144);
      if (*(a1 + 167) < 0)
      {
        v71 = *v71;
      }

      v72 = (a1 + 176);
      if (*(a1 + 199) < 0)
      {
        v72 = *v72;
      }

      *buf = 136315650;
      *&buf[4] = "updateAgentState";
      v101 = 2082;
      v102 = v71;
      v103 = 2080;
      v104 = v72;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#I %s: Registering NWAgent %{public}s, interface [%s]", buf, 0x20u);
    }

    if (([*(a1 + 112) registerNetworkAgent:*(a1 + 120)] & 1) == 0)
    {
      v73 = sub_100032AC8((a1 + 64));
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v74 = (a1 + 144);
        if (*(a1 + 167) < 0)
        {
          v74 = *v74;
        }

        *buf = 136315394;
        *&buf[4] = "updateAgentState";
        v101 = 2082;
        v102 = v74;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "#I %s: fAgent.change Failed to register NWAgent %{public}s", buf, 0x16u);
      }

      v75 = *(a1 + 120);
      if (!v75 || ![v75 isActive])
      {
        DataConnectionAgent::handleFailure(a1, a5);
        goto LABEL_195;
      }
    }
  }

  if ((*(a1 + 199) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 184))
    {
      goto LABEL_176;
    }
  }

  else if (!*(a1 + 199))
  {
    goto LABEL_176;
  }

  v76 = (a1 + 176);
  if (DataConnectionAgent::useInternetSlicing_sync(a1))
  {
    v77 = sub_100032AC8((a1 + 64));
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v78 = (a1 + 144);
      if (*(a1 + 167) < 0)
      {
        v78 = *v78;
      }

      if (*(a1 + 199) < 0)
      {
        v76 = *v76;
      }

      *buf = 136315650;
      *&buf[4] = "updateAgentState";
      v101 = 2082;
      v102 = v78;
      v103 = 2080;
      v104 = v76;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "#I %s: Not adding Slice-capable NWAgent %{public}s to interface [%s]", buf, 0x20u);
    }
  }

  else
  {
    v79 = sub_100032AC8((a1 + 64));
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v80 = (a1 + 144);
      if (*(a1 + 167) < 0)
      {
        v80 = *v80;
      }

      v81 = (a1 + 176);
      if (*(a1 + 199) < 0)
      {
        v81 = *v76;
      }

      *buf = 136315650;
      *&buf[4] = "updateAgentState";
      v101 = 2082;
      v102 = v80;
      v103 = 2080;
      v104 = v81;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "#I %s: Adding NWAgent %{public}s to interface [%s]", buf, 0x20u);
    }

    v82 = [NSString alloc];
    v83 = (a1 + 176);
    if (*(a1 + 199) < 0)
    {
      v83 = *v76;
    }

    v77 = [v82 initWithUTF8String:v83];
    if (([*(a1 + 112) addNetworkAgentToInterfaceNamed:v77] & 1) == 0)
    {
      v84 = sub_100032AC8((a1 + 64));
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        v96 = (a1 + 144);
        if (*(a1 + 167) < 0)
        {
          v96 = *v96;
        }

        if (*(a1 + 199) < 0)
        {
          v76 = *v76;
        }

        *buf = 136315650;
        *&buf[4] = "updateAgentState";
        v101 = 2082;
        v102 = v96;
        v103 = 2080;
        v104 = v76;
        _os_log_error_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "%s: Failed to add NWAgent %{public}s to network Interface [%s]", buf, 0x20u);
      }
    }
  }

LABEL_176:
  [*(a1 + 120) connectionType];
  if (isSlice())
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 72));
    v86 = ServiceMap;
    if (v87 < 0)
    {
      v88 = (v87 & 0x7FFFFFFFFFFFFFFFLL);
      v89 = 5381;
      do
      {
        v87 = v89;
        v90 = *v88++;
        v89 = (33 * v89) ^ v90;
      }

      while (v90);
    }

    std::mutex::lock(ServiceMap);
    *buf = v87;
    v91 = sub_100009510(&v86[1].__m_.__sig, buf);
    if (v91)
    {
      v93 = v91[3];
      v92 = v91[4];
      if (v92)
      {
        atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v86);
        atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v92);
        v94 = 0;
        if (!v93)
        {
LABEL_188:
          if ((v94 & 1) == 0)
          {
            sub_100004A34(v92);
          }

          goto LABEL_190;
        }

LABEL_186:
        v95 = (*(*v93 + 904))(v93);
        if (v95)
        {
          (*(*v95 + 160))(v95);
        }

        goto LABEL_188;
      }
    }

    else
    {
      v93 = 0;
    }

    std::mutex::unlock(v86);
    v92 = 0;
    v94 = 1;
    if (!v93)
    {
      goto LABEL_188;
    }

    goto LABEL_186;
  }

LABEL_190:
  if (updated)
  {
    DataConnectionAgent::updateAgent(a1, a5);
  }

  if (*(a1 + 216) == 1)
  {
    DataConnectionAgent::setPolicy(a1, 0, "update agent state", *(a1 + 288));
  }

LABEL_195:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1006D6B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataConnectionAgent::forcedInterfaceNameUpdate(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 120);
  if (v4)
  {
    v5 = [v4 isActive];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 168);

  DataConnectionAgent::updateAgentState(a1, v5, v6, a2, 0, 1);
}

void *DataConnectionAgent::setTrafficForwardingPoliciesForTd(void *result, TrafficDescriptor *a2, int a3)
{
  if (!result[25])
  {
    return result;
  }

  v4 = result;
  *(result + 72) = a3;
  if (!result[38])
  {
    operator new();
  }

  v5 = result[15];
  if (!v5 || ([v5 isActive] & 1) == 0)
  {
    result = sub_1006DC380(v4[38], a2);
    if ((v4[38] + 8) != result)
    {
      return result;
    }

    if ((*(v4 + 262) & 1) == 0)
    {
      *(v4 + 262) = 1;
    }

    ServiceMap = Registry::getServiceMap(v4[9]);
    v14 = ServiceMap;
    if (v15 < 0)
    {
      v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
      v17 = 5381;
      do
      {
        v15 = v17;
        v18 = *v16++;
        v17 = (33 * v17) ^ v18;
      }

      while (v18);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v15;
    v19 = sub_100009510(&v14[1].__m_.__sig, __p);
    if (v19)
    {
      v21 = v19[3];
      v20 = v19[4];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v14);
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v20);
        v22 = 0;
        if (!v21)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v21 = 0;
    }

    std::mutex::unlock(v14);
    v20 = 0;
    v22 = 1;
    if (!v21)
    {
LABEL_42:
      if ((v22 & 1) == 0)
      {
        sub_100004A34(v20);
      }

      v23 = sub_100032AC8(v4 + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        TrafficDescriptor::toString(__p, a2);
        v28 = v30 >= 0 ? __p : __p[0];
        *buf = 136315394;
        v34 = "setTrafficForwardingPoliciesForTd";
        v35 = 2080;
        v36 = v28;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: Pending traffic descriptor (1): %s", buf, 0x16u);
        if (v30 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_50:

      return sub_100117AC4(v4[38], a2, a2);
    }

LABEL_40:
    v25 = v4[33] + *(*v4[33] - 56);
    v26 = (*(*v25 + 24))(v25);
    v27 = [v4[15] connectionType];
    sub_10000501C(v31, "NWNetworkAgent slice");
    (*(*v21 + 88))(v21, v26, 1 << v27, 1, v31, 1, 0);
    if (v32 < 0)
    {
      operator delete(v31[0]);
    }

    goto LABEL_42;
  }

  if ((*(v4 + 170) & 1) == 0)
  {
    result = sub_1006DC380(v4[38], a2);
    if ((v4[38] + 8) != result)
    {
      return result;
    }

    v23 = sub_100032AC8(v4 + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(__p, a2);
      v24 = v30 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v34 = "setTrafficForwardingPoliciesForTd";
      v35 = 2080;
      v36 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: Pending traffic descriptor (2): %s", buf, 0x16u);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_50;
  }

  v6 = sub_100032AC8(v4 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    TrafficDescriptor::toString(__p, a2);
    v7 = v30 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v34 = "setTrafficForwardingPoliciesForTd";
    v35 = 2080;
    v36 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: Directly forwarding traffic descriptor: %s", buf, 0x16u);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *(v4 + 73);
  v9 = *(v4 + 72);
  if (v9)
  {
    v10 = *(v4 + 72);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v8;
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  return (*(*v4[25] + 88))(v4[25], a2, v12, v4 + 22);
}

uint64_t *sub_1006D71D4(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_10001BB0C(v2, *(v2 + 8));

    operator delete();
  }

  return result;
}

uint64_t DataConnectionAgent::unsetPolicy(DataConnectionAgent *this)
{
  v2 = *(this + 25);
  if (v2)
  {
    (*(*v2 + 80))(v2);
  }

  v3 = *(*this + 192);

  return v3(this);
}

void DataConnectionAgent::setPolicy(uint64_t a1, _BOOL8 a2, uint64_t a3, int a4)
{
  (*(*a1 + 200))(a1);
  if (*(a1 + 120) && *(a1 + 200))
  {
    *(a1 + 288) = a4;
    ServiceMap = Registry::getServiceMap(*(a1 + 72));
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    *buf = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, buf);
    if (!v14)
    {
      std::mutex::unlock(v9);
      return;
    }

    v15 = v14[3];
    v16 = v14[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      if (!v15)
      {
LABEL_39:
        sub_100004A34(v16);
        return;
      }
    }

    else
    {
      std::mutex::unlock(v9);
      if (!v15)
      {
        return;
      }
    }

    v41 = v16;
    v17 = sub_100032AC8((a1 + 64));
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = asStringBool(a2);
      *buf = 136315650;
      *&buf[4] = "setPolicy";
      *&buf[12] = 2080;
      *&buf[14] = v18;
      *&buf[22] = 2080;
      v46 = a3;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: reset=%s, reason=%s", buf, 0x20u);
    }

    v19 = (*(**(a1 + 200) + 40))(*(a1 + 200));
    v20 = v19 == 0;

    if (v20)
    {
      *buf = 0;
      *&buf[8] = 0;
      (*(*v15 + 832))(buf, v15);
      v42 = 0uLL;
      (*(**buf + 16))(&v42);
      v21 = (*(*v42 + 16))(v42);
      if (!v21)
      {
        v22 = sub_100032AC8((a1 + 64));
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10177A5E8();
        }
      }

      (*(**(a1 + 200) + 48))(*(a1 + 200), v21);
      if (*(&v42 + 1))
      {
        sub_100004A34(*(&v42 + 1));
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    v23 = DataConnectionAgent::useInternetSlicing_sync(a1);
    memset(buf, 0, sizeof(buf));
    if (v23)
    {
      v24 = (*(*v15 + 904))(v15);
      if (v24)
      {
        (*(*v24 + 72))(&v42);
        sub_1001C1A74(buf);
        *buf = v42;
        *&buf[16] = v43;
        v43 = 0;
        v42 = 0uLL;
        v44 = &v42;
        sub_1001B8A7C(&v44);
      }
    }

    v25 = *(a1 + 200);
    v26 = *(a1 + 120);
    if (v26)
    {
      v27 = [v26 isActive];
    }

    else
    {
      v27 = 0;
    }

    v28 = *(a1 + 168);
    v29 = *(a1 + 264) + *(**(a1 + 264) - 56);
    v30 = (*(*v29 + 24))(v29);
    v31 = (*(*v15 + 808))(v15);
    v32 = *(a1 + 264) + *(**(a1 + 264) - 56);
    v33 = (*(*v32 + 24))(v32);
    v34 = (*(*v15 + 872))(v15, v33);
    v35 = (*(*v15 + 232))(v15);
    v36 = *(a1 + 292);
    if (*(a1 + 288))
    {
      v37 = *(a1 + 288);
    }

    else
    {
      v37 = -1;
    }

    v38 = v37 & v36;
    if (v36)
    {
      v39 = v38;
    }

    else
    {
      v39 = *(a1 + 288);
    }

    (*(*v25 + 72))(v25, v27, v28, v30 == v31, v34, buf, a2, v35, v39);
    v40 = *(a1 + 224);
    if (v40)
    {
      [v40 slicingSupport:v23];
    }

    *&v42 = buf;
    sub_1001B8A7C(&v42);
    v16 = v41;
    if (v41)
    {
      goto LABEL_39;
    }
  }
}

void sub_1006D7864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t DataConnectionAgent::updatePersistentAgentAvailability(id *this, uint64_t a2)
{
  v4 = [this[15] isNetworkProvider];
  v5 = [this[15] isUserActivated];
  if ([this[15] isNetworkProvider] != a2)
  {
    [this[15] setNetworkProvider:a2];
    v6 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [this[15] isNetworkProvider];
      v20 = 67109120;
      LODWORD(v21) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I NWAgent: fAgent.change updated as network provider: %d", &v20, 8u);
    }
  }

  v8 = [this[15] isUserActivated];
  if (v8 != [this[15] isNetworkProvider])
  {
    [this[15] setUserActivated:{objc_msgSend(this[15], "isNetworkProvider")}];
    v9 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [this[15] isUserActivated];
      v20 = 67109120;
      LODWORD(v21) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I NWAgent: fAgent.change updated user activated: %d", &v20, 8u);
    }
  }

  if (v4 == [this[15] isNetworkProvider] && v5 == objc_msgSend(this[15], "isUserActivated"))
  {
    return 0;
  }

  v11 = sub_100032AC8(this + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = this + 18;
    if (*(this + 167) < 0)
    {
      v12 = *v12;
    }

    if (v4)
    {
      v13 = "true";
    }

    else
    {
      v13 = "false";
    }

    v14 = [this[15] isNetworkProvider];
    v15 = [this[15] isUserActivated];
    v21 = "updatePersistentAgentAvailability";
    if (v5)
    {
      v16 = "true";
    }

    else
    {
      v16 = "false";
    }

    v20 = 136316418;
    v22 = 2082;
    if (v14)
    {
      v17 = "true";
    }

    else
    {
      v17 = "false";
    }

    v23 = v12;
    if (v15)
    {
      v18 = "true";
    }

    else
    {
      v18 = "false";
    }

    v24 = 2080;
    v25 = v13;
    v26 = 2080;
    v27 = v17;
    v28 = 2080;
    v29 = v16;
    v30 = 2080;
    v31 = v18;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: fAgent.change NWAgent %{public}s networkProvider %s->%s userActivated %s->%s", &v20, 0x3Eu);
  }

  return 1;
}

void DataConnectionAgent::setAgentActive(DataConnectionAgent *this, uint64_t a2)
{
  if (*(this + 262))
  {
    v3 = *(this + 251);
    *(this + 262) = 0;
    *(this + 247) = *(this + 258);
    *(this + 30) = v3;
  }

  v4 = *(this + 15);
  if (v4)
  {
    [v4 setActive:a2];
    DataConnectionAgent::setThirdPartyProtection(this);
    v5 = *(this + 38);
    if (v5)
    {
      if (*(v5 + 16))
      {
        v6 = *(this + 15);
        if (!v6)
        {
          goto LABEL_40;
        }

        if ([v6 isActive] && *(this + 25))
        {
          v7 = *(this + 170);
          v8 = sub_100032AC8(this + 8);
          v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          if (v7)
          {
            if (v9)
            {
              *buf = 136315138;
              *&buf[4] = "setAgentActive";
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: processing traffic descriptors", buf, 0xCu);
            }

            v10 = *(this + 38);
            v13 = *v10;
            v11 = v10 + 1;
            v12 = v13;
            if (v13 != v11)
            {
              do
              {
                v14 = sub_100032AC8(this + 8);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  TrafficDescriptor::toString(buf, (v12 + 4));
                  v15 = v32 >= 0 ? buf : *buf;
                  *v33 = 136315394;
                  v34 = "setAgentActive";
                  v35 = 2080;
                  v36 = v15;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: forwarding traffic descriptor: %s", v33, 0x16u);
                  if (v32 < 0)
                  {
                    operator delete(*buf);
                  }
                }

                v16 = *(this + 73);
                v17 = *(this + 72);
                if (v17)
                {
                  v18 = *(this + 72);
                }

                else
                {
                  v18 = -1;
                }

                v19 = v18 & v16;
                if (v16)
                {
                  v20 = v19;
                }

                else
                {
                  v20 = v17;
                }

                (*(**(this + 25) + 88))(*(this + 25), v12 + 4, v20, this + 176);
                v21 = v12[1];
                if (v21)
                {
                  do
                  {
                    v22 = v21;
                    v21 = *v21;
                  }

                  while (v21);
                }

                else
                {
                  do
                  {
                    v22 = v12[2];
                    v23 = *v22 == v12;
                    v12 = v22;
                  }

                  while (!v23);
                }

                v12 = v22;
              }

              while (v22 != v11);
            }

            v24 = sub_100032AC8(this + 8);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "setAgentActive";
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: Cleaning traffic descriptors", buf, 0xCu);
            }

            v25 = *(this + 38);
            sub_10001BB0C(v25, *(v25 + 8));
            *v25 = v25 + 8;
            *(v25 + 16) = 0;
            *(v25 + 8) = 0;
          }

          else
          {
            if (v9)
            {
              *buf = 136315138;
              *&buf[4] = "setAgentActive";
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: not processing traffic descriptors, path is not satisfied yet", buf, 0xCu);
            }
          }

          return;
        }

        v26 = *(this + 15);
        if (v26 && ([v26 isActive] & 1) != 0)
        {
          if (!*(this + 25))
          {
            v27 = sub_100032AC8(this + 8);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              sub_10177A624(v27, v28, v29);
            }
          }
        }

        else
        {
LABEL_40:
          v30 = sub_100032AC8(this + 8);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "setAgentActive";
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: not processing traffic descriptors: agent is not active", buf, 0xCu);
          }
        }
      }
    }
  }
}

void DataConnectionAgent::setThirdPartyProtection(DataConnectionAgent *this)
{
  v2 = *(this + 25);
  if (v2)
  {
    if (*(this + 33) && *(this + 15))
    {
      if ([*(this + 15) isActive])
      {
        v3 = (*(**(this + 33) + 96))(*(this + 33));
        v4 = ConnectionTypeToMask() | v3;
        v11 = 0;
        v12 = 0;
        v10 = &v11;
        DataConnectionAgent::findThirdPartyProtectionInterfaces(this, v4, &v10);
        v5 = sub_100032AC8(this + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(this + 15);
          if (v6)
          {
            LOBYTE(v6) = [v6 isActive];
          }

          v7 = asStringBool(v6);
          *buf = 136315650;
          *&buf[4] = v7;
          *&buf[12] = 2048;
          *&buf[14] = v4;
          *&buf[22] = 1024;
          v14 = v12;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I setAgentActiveHO: active = %s, mask = 0x%llx, isize = %u", buf, 0x1Cu);
        }

        (*(**(this + 25) + 96))(*(this + 25), 1, &v10);
        v8 = v11;
        v9 = &v10;
        goto LABEL_12;
      }

      v2 = *(this + 25);
    }

    *&buf[8] = 0uLL;
    *buf = &buf[8];
    (*(*v2 + 96))(v2, 0, buf);
    v8 = *&buf[8];
    v9 = buf;
LABEL_12:
    sub_100009970(v9, v8);
  }
}

void DataConnectionAgent::setInterfaceName(uint64_t a1, const std::string *a2, _BOOL4 a3)
{
  v4 = a2;
  v6 = (a1 + 176);
  v7 = *(a1 + 199);
  if (v7 >= 0)
  {
    v8 = *(a1 + 199);
  }

  else
  {
    v8 = *(a1 + 184);
  }

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v10 = size;
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (v8 != size)
  {
    goto LABEL_16;
  }

  if (v7 >= 0)
  {
    v11 = (a1 + 176);
  }

  else
  {
    v11 = v6->__r_.__value_.__r.__words[0];
  }

  if (v10 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (memcmp(v11, a2, v8) || a3)
  {
LABEL_16:
    v13 = sub_100032AC8((a1 + 64));
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = (a1 + 144);
      if (*(a1 + 167) < 0)
      {
        v14 = *v14;
      }

      v15 = v6;
      if (*(a1 + 199) < 0)
      {
        v15 = v6->__r_.__value_.__r.__words[0];
      }

      v16 = SHIBYTE(v4->__r_.__value_.__r.__words[2]);
      v17 = v4->__r_.__value_.__r.__words[0];
      v18 = asStringBool(a3);
      *buf = 136316162;
      if (v16 >= 0)
      {
        v19 = v4;
      }

      else
      {
        v19 = v17;
      }

      *&buf[4] = "setInterfaceName";
      v36 = 2082;
      v37 = v14;
      v38 = 2080;
      v39 = v15;
      v40 = 2080;
      v41 = v19;
      v42 = 2080;
      v43 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s: interface changed from %s to %s (forced %s)", buf, 0x34u);
    }

    std::string::operator=(v6, v4);
    DataConnectionAgent::setPathSatisfied(a1, 0);
    if (*(a1 + 224))
    {
      ServiceMap = Registry::getServiceMap(*(a1 + 72));
      v21 = ServiceMap;
      if (v22 < 0)
      {
        v23 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
        v24 = 5381;
        do
        {
          v22 = v24;
          v25 = *v23++;
          v24 = (33 * v24) ^ v25;
        }

        while (v25);
      }

      std::mutex::lock(ServiceMap);
      *buf = v22;
      v26 = sub_100009510(&v21[1].__m_.__sig, buf);
      if (v26)
      {
        v28 = v26[3];
        v27 = v26[4];
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v21);
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v27);
          v29 = 0;
          if (!v28)
          {
LABEL_45:
            if ((v29 & 1) == 0)
            {
              sub_100004A34(v27);
            }

            return;
          }

LABEL_38:
          v31 = sub_100032AC8((a1 + 64));
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "setInterfaceName";
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: fInterfaceObserver updating interface", buf, 0xCu);
          }

          v32 = *(a1 + 224);
          if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(__p, v4->__r_.__value_.__l.__data_, v4->__r_.__value_.__l.__size_);
          }

          else
          {
            *__p = *&v4->__r_.__value_.__l.__data_;
            v34 = v4->__r_.__value_.__r.__words[2];
          }

          [v32 doUpdateInterface:__p];
          if (SHIBYTE(v34) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_45;
        }
      }

      else
      {
        v28 = 0;
      }

      std::mutex::unlock(v21);
      v27 = 0;
      v29 = 1;
      if (!v28)
      {
        goto LABEL_45;
      }

      goto LABEL_38;
    }

    v30 = sub_100032AC8((a1 + 64));
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "setInterfaceName";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#E %s: NWAgent: fInterfaceObserver is empty!", buf, 0xCu);
    }
  }
}

void sub_1006D8564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

BOOL DataConnectionAgent::useInternetSlicing_sync(Registry **this)
{
  ServiceMap = Registry::getServiceMap(this[9]);
  v3 = ServiceMap;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  v19 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v19);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      if (!v10)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_10:
  v12 = (*(*v10 + 904))(v10);
  if (v12)
  {
    v13 = PersonalitySpecificImpl::simSlot(this);
    if ((*(*v12 + 32))(v12, v13, 0))
    {
      if (!*(this + 55))
      {
        v16 = this[15];
        if (v16)
        {
          if ([(Registry *)v16 isActive])
          {
            v17 = this[33] + *(*this[33] - 56);
            v18 = (*(*v17 + 24))(v17);
            v14 = v18 == (*(*v10 + 808))(v10);
            if (v11)
            {
              return v14;
            }

            goto LABEL_14;
          }
        }
      }
    }
  }

LABEL_13:
  v14 = 0;
  if ((v11 & 1) == 0)
  {
LABEL_14:
    sub_100004A34(v9);
  }

  return v14;
}

void sub_1006D87BC(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void DataConnectionAgent::updateAgentOnHandover(DataConnectionAgent *this)
{
  v2 = objc_autoreleasePoolPush();
  ++*(this + 256);
  if ((*(this + 262) & 1) == 0)
  {
    *(this + 30) = *(this + 251);
    *(this + 247) = *(this + 258);
  }

  if (*(this + 15))
  {
    v3 = *(this + 30);
    v4 = *(this + 124) | (*(this + 250) << 16);
    v5 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "updateAgentOnHandover";
      v8 = 1024;
      v9 = ((v3 >> 16) >> 24) - 1;
      v10 = 1024;
      v11 = (v3 >> 16) >> 24;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: HO version %d->%d fAgentData.change", &v6, 0x18u);
    }

    [*(this + 15) storeAgentData:{v3, *&v4 & 0xFFFFFFLL}];
  }

  objc_autoreleasePoolPop(v2);
  if (*(this + 15))
  {
    DataConnectionAgent::setThirdPartyProtection(this);
    DataConnectionAgent::updateAgentIfReady(this);
  }
}

void DataConnectionAgent::findThirdPartyProtectionInterfaces(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v16 = 256;
  do
  {
    __p = 0;
    v14 = 0;
    v15 = 0;
    (*(**(a1 + 264) + 104))(&__p);
    v6 = HIBYTE(v15);
    if (v15 < 0)
    {
      v6 = v14;
    }

    if (v6)
    {
      v7 = DataUtils::needsThirdPartyProtection();
      v8 = sub_100032AC8((a1 + 64));
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = SHIBYTE(v15);
        v10 = __p;
        v11 = asStringBool(v7);
        *buf = 136315394;
        p_p = &__p;
        if (v9 < 0)
        {
          p_p = v10;
        }

        v18 = p_p;
        v19 = 2080;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I thirdParty: %s [needs protection %s]", buf, 0x16u);
      }

      if (v7)
      {
        sub_100005BA0(a3, &__p, &__p);
      }
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p);
    }

    ++v5;
  }

  while (v5 != 2);
}

void sub_1006D8ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void DataConnectionAgent::setPathSatisfied(DataConnectionAgent *this, int a2)
{
  if (*(this + 170) != a2)
  {
    v2 = a2;
    v4 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (this + 144);
      if (*(this + 167) < 0)
      {
        v5 = *v5;
      }

      v6 = asStringBool(*(this + 170));
      v7 = 136446722;
      v8 = v5;
      v9 = 2080;
      v10 = v6;
      v11 = 2080;
      v12 = asStringBool(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I NWAgent %{public}s: fPathSatisfied from %s to %s", &v7, 0x20u);
    }

    *(this + 170) = v2;
  }
}

void DataConnectionAgent::deinitAgent(id *this)
{
  if (this[15])
  {
    v2 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I NWAgent: fAgent.change deinit", buf, 2u);
    }

    v3 = this[15];
    this[15] = 0;

    if (*(this + 167) < 0)
    {
      *this[18] = 0;
      this[19] = 0;
    }

    else
    {
      *(this + 144) = 0;
      *(this + 167) = 0;
    }

    v4 = this[25];
    if (v4)
    {
      (*(*v4 + 56))(v4, 0, 0, 0);
    }
  }

  if (this[14])
  {
    v5 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I NWAgent: fRegistration.change deinit", v7, 2u);
    }

    v6 = this[14];
    this[14] = 0;
  }
}

void DataConnectionAgent::initAgent(DataConnectionAgent *this, int a2, uint64_t a3, _BOOL8 a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = sub_100032AC8(this + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v212 = "initAgent";
    v213 = 1024;
    *v214 = a2;
    *&v214[4] = 1024;
    *&v214[6] = a3;
    LOWORD(v215) = 1024;
    *(&v215 + 2) = a4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: useSavedParams=%d, networkProvider=%d, userActivated=%d", buf, 0x1Eu);
  }

  v10 = *(this + 55);
  switch(v10)
  {
    case 0:
      v67 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v68 = *(this + 14);
      *(this + 14) = v67;

      v69 = [[DataConnectionNetworkAgentInternet alloc] initWithType:0];
      v70 = *(this + 15);
      *(this + 15) = v69;

      if (!*(this + 17))
      {
        v71 = *(this + 33);
        if (v71)
        {
          if ((*(*v71 + 80))(v71))
          {
            v72 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
            v73 = *(this + 16);
            *(this + 16) = v72;

            v74 = [[DataConnectionNetworkAgentInternetSliceRouter alloc] initWithType:0];
            v75 = *(this + 17);
            *(this + 17) = v74;

            [*(this + 17) setDataAgent:this];
            [*(this + 17) setActive:0];
            [*(this + 17) setNetworkProvider:1];
            [*(this + 17) setUserActivated:1];
            [*(this + 17) setKernelActivated:1];
            [*(this + 17) setVoluntary:0];
            [*(this + 17) setSpecificUseOnly:0];
            v76 = +[NSUUID UUID];
            [*(this + 17) setAgentUUID:v76];

            v77 = [*(this + 16) registerNetworkAgent:*(this + 17)];
            v78 = sub_100032AC8(this + 8);
            v79 = v78;
            if (v77)
            {
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v212 = "initAgent";
                _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: registered slice agent", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              sub_10177A7C0(v79, v200, v201);
            }

            v202 = *(this + 25);
            if (v202)
            {
              v203 = [*(this + 17) agentUUID];
              (*(*v202 + 64))(v202, v203);
            }

            [*(this + 16) updateNetworkAgent:*(this + 17)];
          }
        }
      }

      goto LABEL_47;
    case 1:
      v80 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v81 = *(this + 14);
      *(this + 14) = v80;

      v82 = [[DataConnectionNetworkAgentVVM alloc] initWithType:1];
      v83 = *(this + 15);
      *(this + 15) = v82;

      goto LABEL_47;
    case 2:
      v55 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v56 = *(this + 14);
      *(this + 14) = v55;

      v57 = [[DataConnectionNetworkAgentMMS alloc] initWithType:2];
      v58 = *(this + 15);
      *(this + 15) = v57;

      goto LABEL_47;
    case 3:
      v59 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v60 = *(this + 14);
      *(this + 14) = v59;

      v61 = [[DataConnectionNetworkAgentPushEmail alloc] initWithType:3];
      v62 = *(this + 15);
      *(this + 15) = v61;

      goto LABEL_47;
    case 4:
      v47 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v48 = *(this + 14);
      *(this + 14) = v47;

      v49 = [[DataConnectionNetworkAgentWirelessModemTraffic alloc] initWithType:4];
      v50 = *(this + 15);
      *(this + 15) = v49;

      goto LABEL_47;
    case 5:
      v92 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v93 = *(this + 14);
      *(this + 14) = v92;

      v94 = [[DataConnectionNetworkAgentWirelessModemAuthentication alloc] initWithType:5];
      v95 = *(this + 15);
      *(this + 15) = v94;

      goto LABEL_47;
    case 6:
      v96 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v97 = *(this + 14);
      *(this + 14) = v96;

      v98 = [[DataConnectionNetworkAgentCellularDataPlanProvisioning alloc] initWithType:6];
      v99 = *(this + 15);
      *(this + 15) = v98;

      goto LABEL_47;
    case 7:
      v63 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v64 = *(this + 14);
      *(this + 14) = v63;

      v65 = [[DataConnectionNetworkAgentAppleWirelessDiagnostics alloc] initWithType:7];
      v66 = *(this + 15);
      *(this + 15) = v65;

      goto LABEL_47;
    case 8:
      v108 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v109 = *(this + 14);
      *(this + 14) = v108;

      v110 = [[DataConnectionNetworkAgentDataTest alloc] initWithType:8];
      v111 = *(this + 15);
      *(this + 15) = v110;

      goto LABEL_47;
    case 9:
      v51 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v52 = *(this + 14);
      *(this + 14) = v51;

      v53 = [[DataConnectionNetworkAgentOTAActivation alloc] initWithType:9];
      v54 = *(this + 15);
      *(this + 15) = v53;

      goto LABEL_47;
    case 10:
      v104 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v105 = *(this + 14);
      *(this + 14) = v104;

      v106 = [[DataConnectionNetworkAgent3GFaceTimeTraffic alloc] initWithType:10];
      v107 = *(this + 15);
      *(this + 15) = v106;

      goto LABEL_47;
    case 11:
      v43 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v44 = *(this + 14);
      *(this + 14) = v43;

      v45 = [[DataConnectionNetworkAgent3GFaceTimeAuthentication alloc] initWithType:11];
      v46 = *(this + 15);
      *(this + 15) = v45;

      goto LABEL_47;
    case 12:
    case 13:
      v11 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v12 = *(this + 14);
      *(this + 14) = v11;

      v13 = [[DataConnectionNetworkAgentOTAInternet alloc] initWithType:v10];
      v14 = *(this + 15);
      *(this + 15) = v13;

      goto LABEL_47;
    case 14:
      v35 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v36 = *(this + 14);
      *(this + 14) = v35;

      v37 = [[DataConnectionNetworkAgentZeroRated alloc] initWithType:14];
      v38 = *(this + 15);
      *(this + 15) = v37;

      goto LABEL_47;
    case 15:
      v100 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v101 = *(this + 14);
      *(this + 14) = v100;

      v102 = [[DataConnectionNetworkAgentEntitlementTraffic alloc] initWithType:15];
      v103 = *(this + 15);
      *(this + 15) = v102;

      goto LABEL_47;
    case 16:
      v31 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v32 = *(this + 14);
      *(this + 14) = v31;

      v33 = [[DataConnectionNetworkAgentInternalDataProbe alloc] initWithType:16];
      v34 = *(this + 15);
      *(this + 15) = v33;

      goto LABEL_47;
    case 17:
      v116 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v117 = *(this + 14);
      *(this + 14) = v116;

      v118 = [[DataConnectionNetworkAgentIM alloc] initWithType:17];
      v119 = *(this + 15);
      *(this + 15) = v118;

      goto LABEL_47;
    case 18:
      v128 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v129 = *(this + 14);
      *(this + 14) = v128;

      v130 = [[DataConnectionNetworkAgentEm alloc] initWithType:18];
      v131 = *(this + 15);
      *(this + 15) = v130;

      goto LABEL_47;
    case 19:
      v144 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v145 = *(this + 14);
      *(this + 14) = v144;

      v146 = [[DataConnectionNetworkAgentBootstrap alloc] initWithType:19];
      v147 = *(this + 15);
      *(this + 15) = v146;

      goto LABEL_47;
    case 20:
      v120 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v121 = *(this + 14);
      *(this + 14) = v120;

      v122 = [[DataConnectionNetworkAgentUT alloc] initWithType:20];
      v123 = *(this + 15);
      *(this + 15) = v122;

      goto LABEL_47;
    case 21:
      v124 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v125 = *(this + 14);
      *(this + 14) = v124;

      v126 = [[DataConnectionNetworkAgentBootstrapRoamingInternetBypass alloc] initWithType:21];
      v127 = *(this + 15);
      *(this + 15) = v126;

      goto LABEL_47;
    case 22:
      v140 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v141 = *(this + 14);
      *(this + 14) = v140;

      v142 = [[DataConnectionNetworkAgentEmLoc alloc] initWithType:22];
      v143 = *(this + 15);
      *(this + 15) = v142;

      goto LABEL_47;
    case 23:
      v148 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v149 = *(this + 14);
      *(this + 14) = v148;

      v150 = [[DataConnectionNetworkAgentCellularDataPlanProvisioning2 alloc] initWithType:23];
      v151 = *(this + 15);
      *(this + 15) = v150;

      goto LABEL_47;
    case 24:
      v88 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v89 = *(this + 14);
      *(this + 14) = v88;

      v90 = [[DataConnectionNetworkAgentCarrierSpace alloc] initWithType:24];
      v91 = *(this + 15);
      *(this + 15) = v90;

      goto LABEL_47;
    case 25:
      v84 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v85 = *(this + 14);
      *(this + 14) = v84;

      v86 = [[DataConnectionNetworkAgentInternetProbe alloc] initWithType:25];
      v87 = *(this + 15);
      *(this + 15) = v86;

      goto LABEL_47;
    case 26:
      v160 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v161 = *(this + 14);
      *(this + 14) = v160;

      v162 = [[DataConnectionNetworkAgentIM alloc] initWithType:26];
      v163 = *(this + 15);
      *(this + 15) = v162;

      goto LABEL_47;
    case 27:
      v23 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v24 = *(this + 14);
      *(this + 14) = v23;

      v25 = [[DataConnectionNetworkAgentLLWirelessModemTraffic alloc] initWithType:27];
      v26 = *(this + 15);
      *(this + 15) = v25;

      goto LABEL_47;
    case 28:
      v152 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v153 = *(this + 14);
      *(this + 14) = v152;

      v154 = [[DataConnectionNetworkAgentInternetSlice1 alloc] initWithType:28];
      v155 = *(this + 15);
      *(this + 15) = v154;

      goto LABEL_47;
    case 29:
      v156 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v157 = *(this + 14);
      *(this + 14) = v156;

      v158 = [[DataConnectionNetworkAgentInternetSlice2 alloc] initWithType:29];
      v159 = *(this + 15);
      *(this + 15) = v158;

      goto LABEL_47;
    case 30:
      v132 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v133 = *(this + 14);
      *(this + 14) = v132;

      v134 = [[DataConnectionNetworkAgentInternetSlice3 alloc] initWithType:30];
      v135 = *(this + 15);
      *(this + 15) = v134;

      goto LABEL_47;
    case 31:
      v112 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v113 = *(this + 14);
      *(this + 14) = v112;

      v114 = [[DataConnectionNetworkAgentInternetSlice4 alloc] initWithType:31];
      v115 = *(this + 15);
      *(this + 15) = v114;

      goto LABEL_47;
    case 32:
      v136 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v137 = *(this + 14);
      *(this + 14) = v136;

      v138 = [[DataConnectionNetworkAgentInternetSlice5 alloc] initWithType:32];
      v139 = *(this + 15);
      *(this + 15) = v138;

      goto LABEL_47;
    case 33:
      v39 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v40 = *(this + 14);
      *(this + 14) = v39;

      v41 = [[DataConnectionNetworkAgentInternetSlice6 alloc] initWithType:33];
      v42 = *(this + 15);
      *(this + 15) = v41;

      goto LABEL_47;
    case 34:
      v27 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v28 = *(this + 14);
      *(this + 14) = v27;

      v29 = [[DataConnectionNetworkAgentInternetSlice7 alloc] initWithType:34];
      v30 = *(this + 15);
      *(this + 15) = v29;

      goto LABEL_47;
    case 35:
      v15 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v16 = *(this + 14);
      *(this + 14) = v15;

      v17 = [[DataConnectionNetworkAgentInternetSlice8 alloc] initWithType:35];
      v18 = *(this + 15);
      *(this + 15) = v17;

      goto LABEL_47;
    case 36:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10177A724();
      }

      __TUAssertTrigger("false");
      v19 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v20 = *(this + 14);
      *(this + 14) = v19;

      v21 = [[DataConnectionNetworkAgent alloc] initWithType:36];
      v22 = *(this + 15);
      *(this + 15) = v21;
      goto LABEL_113;
    default:
LABEL_47:
      if (!*(this + 15))
      {
        goto LABEL_114;
      }

      v164 = +[NSUUID UUID];
      [*(this + 15) setAgentUUID:v164];

      v165 = *(this + 25);
      if (v165)
      {
        v166 = [objc_opt_class() agentDomain];
        v167 = [objc_opt_class() agentType];
        v168 = [*(this + 15) agentUUID];
        (*(*v165 + 56))(v165, v166, v167, v168);
      }

      v169 = [*(this + 15) agentUUID];
      v170 = [v169 UUIDString];
      v171 = v170;
      v172 = (this + 144);
      sub_100016890(this + 6, [v170 UTF8String]);

      [*(this + 15) setDataAgent:this];
      v173 = *(this + 15);
      if (a2)
      {
        [v173 setNetworkProvider:a3];
      }

      else
      {
        [*(this + 15) setNetworkProvider:{objc_msgSend(v173, "connectionType") != 0}];
        a4 = [*(this + 15) connectionType] != 0;
      }

      [*(this + 15) setUserActivated:a4];
      [*(this + 15) setVoluntary:1];
      [*(this + 15) connectionType];
      if (isSlice())
      {
        [*(this + 15) setVoluntary:0];
        [*(this + 15) setKernelActivated:1];
      }

      [*(this + 15) setSpecificUseOnly:{objc_msgSend(*(this + 15), "connectionType") != 0}];
      if ([*(this + 15) connectionType] == 4)
      {
        [*(this + 15) setVoluntary:0];
      }

      [*(this + 15) storeAgentData:{*(this + 30), *(this + 124) | (*(this + 250) << 16)}];
      v174 = *(this + 17);
      if (v174)
      {
        [v174 storeAgentData:{*(this + 30), *(this + 124) | (*(this + 250) << 16)}];
      }

      if (*(this + 28))
      {
        v175 = sub_100032AC8(this + 8);
        if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v212 = "initAgent";
          _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEFAULT, "#I %s: fInterfaceObserver updated UUID", buf, 0xCu);
        }

        v176 = *(this + 28);
        if (*(this + 167) < 0)
        {
          sub_100005F2C(__p, *(this + 18), *(this + 19));
        }

        else
        {
          *__p = *v172;
          v206 = *(this + 20);
        }

        [v176 doUpdateUUID:__p];
        if (SHIBYTE(v206) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v177 = [DataConnectionAgentInterfaceObserver alloc];
        v178 = [objc_opt_class() agentDomain];
        v179 = [objc_opt_class() agentType];
        v180 = objc_opt_class();
        v181 = *(this + 11);
        if (*(this + 167) < 0)
        {
          sub_100005F2C(__dst, *(this + 18), *(this + 19));
        }

        else
        {
          *__dst = *v172;
          v210 = *(this + 20);
        }

        v182 = *(this + 10);
        v207 = *(this + 9);
        v208 = v182;
        if (v182)
        {
          atomic_fetch_add_explicit(&v182->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        LODWORD(v204) = v10;
        v183 = [(DataConnectionAgentInterfaceObserver *)v177 initWithPathSatisfactionObserver:this + 104 domain:v178 agentType:v179 agentClass:v180 logName:v181 uuid:__dst queue:this + 232 registry:&v207 connectionType:v204];
        v184 = *(this + 28);
        *(this + 28) = v183;

        if (v208)
        {
          sub_100004A34(v208);
        }

        if (SHIBYTE(v210) < 0)
        {
          operator delete(__dst[0]);
        }

        v185 = *(this + 28) == 0;
        v186 = sub_100032AC8(this + 8);
        v187 = v186;
        if (v185)
        {
          if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
          {
            sub_10177A840(v187, v188, v189);
          }
        }

        else if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v212 = "initAgent";
          _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_DEFAULT, "#I %s: fInterfaceObserver created", buf, 0xCu);
        }
      }

      if (!*(this + 14) || !DataConnectionAgent::isPersistentAgent(this))
      {
        goto LABEL_114;
      }

      v190 = [*(this + 14) registerNetworkAgent:*(this + 15)];
      v22 = sub_100032AC8(this + 8);
      v191 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if ((v190 & 1) == 0)
      {
        if (v191)
        {
          if (*(this + 167) < 0)
          {
            v172 = *v172;
          }

          *buf = 136315394;
          v212 = "initAgent";
          v213 = 2082;
          *v214 = v172;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: Failed to register NWAgent %{public}s", buf, 0x16u);
        }

        goto LABEL_113;
      }

      if (v191)
      {
        v192 = this + 144;
        if (*(this + 167) < 0)
        {
          v192 = *v172;
        }

        *buf = 136315394;
        v212 = "initAgent";
        v213 = 2082;
        *v214 = v192;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: Registered NWAgent %{public}s", buf, 0x16u);
      }

      v193 = *(this + 199);
      if (v193 < 0)
      {
        v193 = *(this + 23);
      }

      if (v193)
      {
        v194 = sub_100032AC8(this + 8);
        v195 = this + 176;
        if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
        {
          v196 = this + 144;
          if (*(this + 167) < 0)
          {
            v196 = *v172;
          }

          v197 = this + 176;
          if (*(this + 199) < 0)
          {
            v197 = *v195;
          }

          *buf = 136315650;
          v212 = "initAgent";
          v213 = 2082;
          *v214 = v196;
          *&v214[8] = 2080;
          v215 = v197;
          _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_DEFAULT, "#I %s: Adding NWAgent %{public}s to interface [%s]", buf, 0x20u);
        }

        v198 = this + 176;
        if (*(this + 199) < 0)
        {
          v198 = *v195;
        }

        v22 = [NSString stringWithUTF8String:v198];
        if (([*(this + 14) addNetworkAgentToInterfaceNamed:v22] & 1) == 0)
        {
          v199 = sub_100032AC8(this + 8);
          if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
          {
            if (*(this + 167) < 0)
            {
              v172 = *v172;
            }

            if (*(this + 199) < 0)
            {
              v195 = *v195;
            }

            *buf = 136315650;
            v212 = "initAgent";
            v213 = 2082;
            *v214 = v172;
            *&v214[8] = 2080;
            v215 = v195;
            _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "#I %s: Failed to add NWAgent %{public}s to network Interface [%s] on initAgent", buf, 0x20u);
          }
        }

LABEL_113:
      }

LABEL_114:
      objc_autoreleasePoolPop(v8);
      return;
  }
}

void DataConnectionAgent::~DataConnectionAgent(DataConnectionAgent *this)
{

  PersonalitySpecific::~PersonalitySpecific(v1);
}

{
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

void non-virtual thunk toDataConnectionAgent::~DataConnectionAgent(DataConnectionAgent *this)
{

  PersonalitySpecific::~PersonalitySpecific(v1);
}

{

  PersonalitySpecific::~PersonalitySpecific(v1);
}

{
  DataConnectionAgent::~DataConnectionAgent((this - 24));
}

{
  DataConnectionAgent::~DataConnectionAgent((this - 104));
}

void sub_1006DB1F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = DataConnectionAgentInterfaceObserver;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1006DB9A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_begin_catch(a1);
  sub_1006DBA68(&a13, v13);
  __cxa_rethrow();
}

void sub_1006DB9D4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = a3 + 24;
      if (!a3)
      {
        v5 = 0;
      }

      v6 = *(a1 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = v5;
      a2[1] = v6;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v6)
      {

        sub_100004A34(v6);
      }
    }
  }
}

void sub_1006DBA68(uint64_t a1, id *a2)
{
  v3 = sub_100032AC8(a2 + 6);
  dispatch_barrier_async_f(v3, a2, sub_1006DBBB0);
}

void sub_1006DBAD0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1006DBB08(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_100032AC8(v1 + 6);
  dispatch_barrier_async_f(v2, v1, sub_1006DBBB0);
}

uint64_t sub_1006DBB70(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006DBBB0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1006DBC64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_begin_catch(a1);
  sub_1006DBC90(&a13, v13);
  __cxa_rethrow();
}

void sub_1006DBC90(uint64_t a1, id *a2)
{
  v3 = sub_100032AC8(a2 + 6);
  dispatch_barrier_async_f(v3, a2, sub_1006DBDD8);
}

void sub_1006DBCF8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1006DBD30(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_100032AC8(v1 + 6);
  dispatch_barrier_async_f(v2, v1, sub_1006DBDD8);
}

uint64_t sub_1006DBD98(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006DBDD8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1006DBE8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_begin_catch(a1);
  sub_1006DBEB8(&a13, v13);
  __cxa_rethrow();
}

void sub_1006DBEB8(uint64_t a1, id *a2)
{
  v3 = sub_100032AC8(a2 + 6);
  dispatch_barrier_async_f(v3, a2, sub_1006DC000);
}

void sub_1006DBF20(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1006DBF58(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_100032AC8(v1 + 6);
  dispatch_barrier_async_f(v2, v1, sub_1006DC000);
}

uint64_t sub_1006DBFC0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006DC000(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1006DC0B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_begin_catch(a1);
  sub_1006DC0E0(&a13, v13);
  __cxa_rethrow();
}

void sub_1006DC0E0(uint64_t a1, id *a2)
{
  v3 = sub_100032AC8(a2 + 6);
  dispatch_barrier_async_f(v3, a2, sub_1006DC228);
}

void sub_1006DC148(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1006DC180(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_100032AC8(v1 + 6);
  dispatch_barrier_async_f(v2, v1, sub_1006DC228);
}

uint64_t sub_1006DC1E8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006DC228(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1006DC254(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, a1);
  v4 = sub_100032AC8((a1 + 16));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1006DC344;
  block[3] = &unk_101E73718;
  v8 = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = v3;
  v7 = v5;
  dispatch_async(v4, block);

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

uint64_t sub_1006DC354(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1006DC370(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_1006DC380(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = a1 + 8;
  do
  {
    v5 = TrafficDescriptor::operator<();
    if (v5)
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    if (!v5)
    {
      v4 = v3;
    }

    v3 = *(v3 + v6);
  }

  while (v3);
  if (v4 == v2 || TrafficDescriptor::operator<())
  {
    return v2;
  }

  return v4;
}

id **sub_1006DC404(id **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {

    operator delete();
  }

  return a1;
}

id **sub_1006DC454(id *a1)
{
  v58 = a1;
  v2 = *a1;
  if (*(*a1 + 88) == 1)
  {
    v3 = *(v2 + 89);
  }

  else
  {
    v3 = 0;
  }

  ServiceMap = Registry::getServiceMap(v2[21]);
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (!v10)
  {
    v12 = 0;
LABEL_12:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
  if (v12)
  {
LABEL_13:
    LODWORD(v12) = (*(*v12 + 32))(v12);
  }

LABEL_14:
  v14 = *a1;
  if (!a1[1])
  {
    v32 = v14[2];
    if (!v32)
    {
      goto LABEL_56;
    }

    v16 = [v32 path];
    v33 = [v16 usesNetworkAgentType:*(*a1 + 10)];
    v34 = *a1;
    *(*a1 + 89) = v33;
    if (v33)
    {
      v35 = 1;
    }

    else
    {
      if (*(v34 + 34))
      {
        *(v34 + 89) = 0;
LABEL_39:
        v37 = sub_100032AC8(*(v34 + 16));
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = *a1;
          v39 = *a1 + 96;
          if (*(*a1 + 119) < 0)
          {
            v39 = *v39;
          }

          v40 = v38 + 32;
          if (v38[55] < 0)
          {
            v40 = *v40;
          }

          v41 = v38 + 56;
          if (v38[79] < 0)
          {
            v41 = *v41;
          }

          v42 = asStringBool(v38[140]);
          v43 = *(*a1 + 89);
          v44 = *(*a1 + 88);
          v45 = *a1 + 144;
          if (*(*a1 + 167) < 0)
          {
            v45 = *v45;
          }

          *buf = 136447746;
          *&buf[4] = v39;
          v60 = 2082;
          v61 = v40;
          v62 = 2082;
          v63 = v41;
          v64 = 2080;
          v65 = v42;
          v66 = 1024;
          v67 = v43;
          v68 = 1024;
          v69 = v44;
          v70 = 2082;
          v71[0] = v45;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I NWAgent %{public}s Observe: d = %{public}s, t = %{public}s, sl = %s: aa = %d, pa = %d, i=%{public}s", buf, 0x40u);
        }

        if (!v12)
        {
          goto LABEL_55;
        }

        v29 = sub_100032AC8(*(*a1 + 16));
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v46 = *a1 + 96;
          if (*(*a1 + 119) < 0)
          {
            v46 = *v46;
          }

          v47 = [v16 description];
          *buf = 136315394;
          *&buf[4] = v46;
          v60 = 2114;
          v61 = v47;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I NWAgent %s Observe: aed=%{public}@", buf, 0x16u);
        }

LABEL_54:

        goto LABEL_55;
      }

      v35 = *(v34 + 140);
    }

    v36 = v35 & 1;
    *(v34 + 89) = v36;
    if (v36 & v3)
    {
LABEL_55:

      v14 = *a1;
      goto LABEL_56;
    }

    goto LABEL_39;
  }

  v15 = v14[1];
  if (v15)
  {
    v16 = [v15 path];
    v17 = [v16 status];
    v18 = v17;
    v19 = *a1;
    *(*a1 + 88) = v17 == 1;
    if (((v17 == 1) & v3) != 0)
    {
      goto LABEL_55;
    }

    v20 = sub_100032AC8(v19[16]);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *a1;
      v22 = *a1 + 96;
      v57 = v13;
      if (*(*a1 + 119) < 0)
      {
        v22 = *v22;
      }

      v23 = v21 + 32;
      if (v21[55] < 0)
      {
        v23 = *v23;
      }

      v24 = v21 + 56;
      if (v21[79] < 0)
      {
        v24 = *v24;
      }

      v25 = asStringBool(v21[140]);
      v26 = *(*a1 + 89);
      v27 = *(*a1 + 88);
      v28 = *a1 + 144;
      if (*(*a1 + 167) < 0)
      {
        v28 = *v28;
      }

      *buf = 136448002;
      *&buf[4] = v22;
      v60 = 2082;
      v61 = v23;
      v62 = 2082;
      v63 = v24;
      v64 = 2080;
      v65 = v25;
      v66 = 1024;
      v67 = v26;
      v68 = 1024;
      v69 = v27;
      v70 = 1024;
      LODWORD(v71[0]) = v18;
      WORD2(v71[0]) = 2082;
      *(v71 + 6) = v28;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I NWAgent %{public}s Observe: d = %{public}s, t = %{public}s, sl = %s: aa = %d, ps = %d, status = %d, i=%{public}s", buf, 0x46u);
      v13 = v57;
    }

    if (!v12)
    {
      goto LABEL_55;
    }

    v29 = sub_100032AC8(*(*a1 + 16));
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *a1 + 96;
      if (*(*a1 + 119) < 0)
      {
        v30 = *v30;
      }

      v31 = [v16 description];
      *buf = 136315394;
      *&buf[4] = v30;
      v60 = 2114;
      v61 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I NWAgent %s Observe: ped=%{public}@", buf, 0x16u);
    }

    goto LABEL_54;
  }

LABEL_56:
  if (!(v3 & 1 | ((v12 & 1) == 0)) && !*(v14 + 34))
  {
    v48 = [[CTDataConnectionAgentData alloc] initAgentDataFromCellularInternetPath];
    v49 = *(*a1 + 16);
    if (v48)
    {
      v50 = sub_100032AC8(v49);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = *a1 + 96;
        if (*(*a1 + 119) < 0)
        {
          v51 = *v51;
        }

        v52 = [v48 description];
        *buf = 136315394;
        *&buf[4] = v51;
        v60 = 2112;
        v61 = v52;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I NWAgent %s Observe: add = %@", buf, 0x16u);
      }
    }

    else
    {
      v50 = sub_100032AC8(v49);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v53 = *a1 + 96;
        if (*(*a1 + 119) < 0)
        {
          v53 = *v53;
        }

        *buf = 136315138;
        *&buf[4] = v53;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I NWAgent %s Observe: agentData empty", buf, 0xCu);
      }
    }

    v14 = *a1;
  }

  v54 = v14[3];
  if (*(v14 + 88) == 1)
  {
    v55 = *(v14 + 89);
  }

  else
  {
    v55 = 0;
  }

  (*(*v54 + 16))(v54, v55 & 1, 1);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return sub_1006DC404(&v58);
}

void sub_1006DCACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  if ((v6 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  sub_1006DC404(va);
  _Unwind_Resume(a1);
}

void sub_1006DD110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006DD2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006DD4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006DD6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}