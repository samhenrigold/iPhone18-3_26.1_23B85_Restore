void sub_100406584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

void sub_10040659C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v7 = sub_100406628((a1 + 8));
  v8 = a4[1];
  v9 = *a4;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10040666C(v7, a2, v5, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_100406610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100406628(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_10040666C(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v28 = a3;
  v27 = 0uLL;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v31, v7);
  v8 = a1[1];
  if (v8)
  {
    if (atomic_load_explicit((v8 + 8), memory_order_acquire) == 1)
    {
      sub_1004068F0(a1, &v31, 0, 1);
    }

    v9 = *a1;
    v10 = a1[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = *a1;
  }

  v11 = v27;
  *&v27 = v9;
  *(&v27 + 1) = v10;
  v30[0] = v11;
  sub_10004A724(v30 + 1);
  sub_10004A704(*(&v42 + 1));
  sub_10004A6B0(&v31);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
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
  v31 = 0u;
  v46 = 0;
  v47 = 10;
  v48 = &v31 + 8;
  v49 = 0;
  v50 = a2;
  v51 = &v28;
  v53 = 0;
  v54 = 0;
  v52 = a4;
  v12 = sub_100406988(&v27);
  v26[0] = &v31;
  v26[1] = a1;
  v26[2] = sub_100406BD8(v12);
  v13 = sub_100406988(&v27);
  v14 = sub_10004AA88((v13 + 16));
  v15 = sub_100406988(&v27);
  v16 = *(sub_100406BD8(v15) + 8);
  v17 = sub_100406988(&v27);
  *&v24 = v16;
  *(&v24 + 1) = sub_100406BD8(v17);
  *&v25 = &v31;
  *(&v25 + 1) = *(&v24 + 1);
  sub_100406ECC(&v24);
  v18 = sub_100406988(&v27);
  v19 = sub_100406BD8(v18);
  v20 = sub_100406988(&v27);
  *&v22 = v19;
  *(&v22 + 1) = sub_100406BD8(v20);
  *&v23 = &v31;
  *(&v23 + 1) = *(&v22 + 1);
  sub_100406ECC(&v22);
  v30[0] = v24;
  v30[1] = v25;
  v29[0] = v22;
  v29[1] = v23;
  sub_100406C1C(v14, v30, v29);
  sub_100407294(v26);
  sub_100407B4C(&v31);
  return sub_10004A724(&v27 + 1);
}

void sub_10040689C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_1000FFEDC(va);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004068F0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v5 = a4;
  v6 = a3;
  v9 = sub_100406988(a1);
  v10 = sub_100406BD8(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_100406988(a1);
    v11 = *(sub_100406BD8(v12) + 8);
  }

  v14 = v11;
  return sub_1004069CC(a1, a2, v6, &v14, v5);
}

uint64_t sub_100406988(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_1004069CC(uint64_t *a1, void *a2, int a3, uint64_t **a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_100406988(a1);
  result = sub_100406BD8(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_100406AE4(v10 + 2);
        sub_100406B28(v15, a2);
        v10 = v22;
      }

      if (*(sub_100406AE4(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_100406988(a1);
        v18 = sub_100406BD8(v17);
        v19 = sub_100406AE4(v22 + 2);
        v16 = sub_100100CE8(v18, (v19 + 64), &v22);
      }

      v22 = v16;
      v20 = sub_100406988(a1);
      result = sub_100406BD8(v20);
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

uint64_t sub_100406AE4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_100406B28(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_100406B94(result);
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

uint64_t sub_100406B94(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_100406BD8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100406C1C(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_100406CA4(a2);
    *a2 = *(*a2 + 8);
    sub_100406ECC(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_100406CA4(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_100406D44((v2 + 272), (*a1 + 16));
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

void sub_100406D44(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100406AE4(a2);
  v4 = sub_100406B94((v3 + 32));
  sub_100406D94(&v5, (v4 + 24), a1);
}

void sub_100406D94(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *a3[1];
  v7 = a3[2];
  v9 = *v7;
  v8 = v7[1];
  *&v10 = v9;
  *(&v10 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100406E10(a2, v5, v6, &v10);
  if (*(&v10 + 1))
  {
    sub_100004A34(*(&v10 + 1));
  }
}

void sub_100406DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100406E10(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v6, "call to empty boost::function");
    v6.__vftable = &off_101E25EA8;
    sub_1001028A8(&v6);
  }

  v4 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v5 = *a4;
  *a4 = 0uLL;
  v4(a1 + 1, a2, a3, &v5);
  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_100406EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::runtime_error a11)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100406ECC(uint64_t *result)
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
      v3 = sub_10040712C((*result + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_100406AE4((*result + 16));
      sub_100407170(v4, &v14, (result[2] + 8));
      v5 = sub_100406AE4((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 296);
      }

      else
      {
        ++*(v6 + 300);
      }

      v7 = sub_100406AE4((*result + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_10014A760(result, &v14, *result);
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
        v13 = sub_10040712C((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_10014A760(result, &v14, result[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_1004070F0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10040712C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_100407170(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_100406B94(result + 4); ; i += 6)
    {
      result = sub_100406B94(v3);
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

void sub_100407270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void *sub_100407294(void *a1)
{
  if (*(*a1 + 300) > *(*a1 + 296))
  {
    sub_1004072D8(a1[1], a1[2]);
  }

  return a1;
}

void sub_1004072D8(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100406988(a1);
  if (sub_100406BD8(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100406988(a1);
    v8 = *(sub_100406BD8(v7) + 8);
    sub_1004069CC(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

void sub_100407478(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_10040751C(&v2, a2);
}

uint64_t sub_1004074D8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_10040751C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100407588(&v2, a2);
}

void sub_1004075F8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_100407638(uint64_t result)
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

uint64_t sub_100407754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004078DC(a1, a2);
  sub_100407948((v4 + 3), a2 + 24);
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

uint64_t *sub_1004078DC(uint64_t *a1, uint64_t a2)
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

uint64_t sub_100407948(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1004079B0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100407A1C(&v2, a2);
}

void sub_100407A8C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_100407ACC(uint64_t result)
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

uint64_t sub_100407B4C(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 304), v4);
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

void sub_100407C24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100407C44(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v22 = 0u;
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  sub_10000D518(&v20);
  v7 = *(a2 + 23);
  v8 = (v7 & 0x80u) != 0;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v8)
  {
    v9 = *a2;
  }

  else
  {
    v9 = a2;
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = "<invalid>";
  }

  v11 = strlen(v10);
  v12 = sub_10000C030(&v20, v10, v11);
  v13 = sub_10000C030(v12, ", ", 2);
  v14 = sub_100A38E30(v4);
  v15 = strlen(v14);
  v16 = sub_10000C030(v13, v14, v15);
  sub_10000C030(v16, ", ", 2);
  std::ostream::operator<<();
  sub_10006EE70(&v20 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  std::locale::~locale(v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100407E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

void sub_100407E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v7 = sub_100407F14((a1 + 8));
  v8 = a4[1];
  v9 = *a4;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100407F58(v7, a2, v5, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_100407EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100407F14(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_100407F58(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v28 = a3;
  v27 = 0uLL;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v31, v7);
  v8 = a1[1];
  if (v8)
  {
    if (atomic_load_explicit((v8 + 8), memory_order_acquire) == 1)
    {
      sub_1004081DC(a1, &v31, 0, 1);
    }

    v9 = *a1;
    v10 = a1[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = *a1;
  }

  v11 = v27;
  *&v27 = v9;
  *(&v27 + 1) = v10;
  v30[0] = v11;
  sub_10004A724(v30 + 1);
  sub_10004A704(*(&v42 + 1));
  sub_10004A6B0(&v31);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
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
  v31 = 0u;
  v46 = 0;
  v47 = 10;
  v48 = &v31 + 8;
  v49 = 0;
  v50 = a2;
  v51 = &v28;
  v53 = 0;
  v54 = 0;
  v52 = a4;
  v12 = sub_100408274(&v27);
  v26[0] = &v31;
  v26[1] = a1;
  v26[2] = sub_1004084C4(v12);
  v13 = sub_100408274(&v27);
  v14 = sub_10004AA88((v13 + 16));
  v15 = sub_100408274(&v27);
  v16 = *(sub_1004084C4(v15) + 8);
  v17 = sub_100408274(&v27);
  *&v24 = v16;
  *(&v24 + 1) = sub_1004084C4(v17);
  *&v25 = &v31;
  *(&v25 + 1) = *(&v24 + 1);
  sub_1004087B8(&v24);
  v18 = sub_100408274(&v27);
  v19 = sub_1004084C4(v18);
  v20 = sub_100408274(&v27);
  *&v22 = v19;
  *(&v22 + 1) = sub_1004084C4(v20);
  *&v23 = &v31;
  *(&v23 + 1) = *(&v22 + 1);
  sub_1004087B8(&v22);
  v30[0] = v24;
  v30[1] = v25;
  v29[0] = v22;
  v29[1] = v23;
  sub_100408508(v14, v30, v29);
  sub_100408B80(v26);
  sub_100409438(&v31);
  return sub_10004A724(&v27 + 1);
}

void sub_100408188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_1000FFEDC(va);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004081DC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v5 = a4;
  v6 = a3;
  v9 = sub_100408274(a1);
  v10 = sub_1004084C4(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_100408274(a1);
    v11 = *(sub_1004084C4(v12) + 8);
  }

  v14 = v11;
  return sub_1004082B8(a1, a2, v6, &v14, v5);
}

uint64_t sub_100408274(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_1004082B8(uint64_t *a1, void *a2, int a3, uint64_t **a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_100408274(a1);
  result = sub_1004084C4(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_1004083D0(v10 + 2);
        sub_100408414(v15, a2);
        v10 = v22;
      }

      if (*(sub_1004083D0(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_100408274(a1);
        v18 = sub_1004084C4(v17);
        v19 = sub_1004083D0(v22 + 2);
        v16 = sub_100100CE8(v18, (v19 + 64), &v22);
      }

      v22 = v16;
      v20 = sub_100408274(a1);
      result = sub_1004084C4(v20);
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

uint64_t sub_1004083D0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_100408414(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_100408480(result);
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

uint64_t sub_100408480(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_1004084C4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100408508(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_100408590(a2);
    *a2 = *(*a2 + 8);
    sub_1004087B8(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_100408590(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_100408630((v2 + 272), (*a1 + 16));
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

void sub_100408630(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1004083D0(a2);
  v4 = sub_100408480((v3 + 32));
  sub_100408680(&v5, (v4 + 24), a1);
}

void sub_100408680(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *a3[1];
  v7 = a3[2];
  v9 = *v7;
  v8 = v7[1];
  *&v10 = v9;
  *(&v10 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1004086FC(a2, v5, v6, &v10);
  if (*(&v10 + 1))
  {
    sub_100004A34(*(&v10 + 1));
  }
}

void sub_1004086E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004086FC(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v6, "call to empty boost::function");
    v6.__vftable = &off_101E25EA8;
    sub_1001028A8(&v6);
  }

  v4 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v5 = *a4;
  *a4 = 0uLL;
  v4(a1 + 1, a2, a3, &v5);
  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_100408790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::runtime_error a11)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004087B8(uint64_t *result)
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
      v3 = sub_100408A18((*result + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_1004083D0((*result + 16));
      sub_100408A5C(v4, &v14, (result[2] + 8));
      v5 = sub_1004083D0((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 296);
      }

      else
      {
        ++*(v6 + 300);
      }

      v7 = sub_1004083D0((*result + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_10014A760(result, &v14, *result);
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
        v13 = sub_100408A18((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_10014A760(result, &v14, result[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_1004089DC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100408A18(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_100408A5C(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_100408480(result + 4); ; i += 6)
    {
      result = sub_100408480(v3);
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

void sub_100408B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void *sub_100408B80(void *a1)
{
  if (*(*a1 + 300) > *(*a1 + 296))
  {
    sub_100408BC4(a1[1], a1[2]);
  }

  return a1;
}

void sub_100408BC4(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100408274(a1);
  if (sub_1004084C4(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100408274(a1);
    v8 = *(sub_1004084C4(v7) + 8);
    sub_1004082B8(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

void sub_100408D64(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_100408E08(&v2, a2);
}

uint64_t sub_100408DC4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100408E08(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100408E74(&v2, a2);
}

void sub_100408EE4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_100408F24(uint64_t result)
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

uint64_t sub_100409040(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004091C8(a1, a2);
  sub_100409234((v4 + 3), a2 + 24);
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

uint64_t *sub_1004091C8(uint64_t *a1, uint64_t a2)
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

uint64_t sub_100409234(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_10040929C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100409308(&v2, a2);
}

void sub_100409378(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_1004093B8(uint64_t result)
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

uint64_t sub_100409438(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 304), v4);
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

void sub_100409510(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1004095A4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4B578;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1004095D4(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (sub_100070C90(*(a1 + 8), *a2))
  {
    v4 = *(a1 + 16);
    v5 = *v4;
    v6 = sub_100A392AC(*v4 + 208, v3);
    v7 = v6;
    if ((v6 - 3) >= 2)
    {
      if (v6 != 5)
      {
        return;
      }

      ++*v4[1];
    }

    ++*v4[2];
    v8 = *(v5 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(***(v5 + 88));
      v10 = 136315906;
      v11 = v9;
      v12 = 2080;
      v13 = " ";
      v14 = 2080;
      v15 = sub_10006EE44(v3);
      v16 = 2080;
      v17 = sub_100A38E08(v7);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sSchedule retry for %s entitlement since it is %s", &v10, 0x2Au);
    }
  }
}

uint64_t sub_100409724(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1004097E4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4B5F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t sub_100409814(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  result = sub_100070C90(*(a1 + 8), *a2);
  if (result)
  {
    v5 = *(a1 + 16);
    v6 = *v5;
    result = sub_100A392AC(*v5 + 208, v3);
    if (result == 5)
    {
      result = sub_100A3933C(v6 + 312, v3, 1);
      *v5[1] = 1;
    }
  }

  return result;
}

uint64_t sub_100409888(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004098D4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v22 = 0u;
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  sub_10000D518(&v20);
  v7 = *(a2 + 23);
  v8 = (v7 & 0x80u) != 0;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v8)
  {
    v9 = *a2;
  }

  else
  {
    v9 = a2;
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = "<invalid>";
  }

  v11 = strlen(v10);
  v12 = sub_10000C030(&v20, v10, v11);
  v13 = sub_10000C030(v12, ", ", 2);
  v14 = sub_100A38E30(v4);
  v15 = strlen(v14);
  v16 = sub_10000C030(v13, v14, v15);
  sub_10000C030(v16, ", ", 2);
  std::ostream::operator<<();
  sub_10006EE70(&v20 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  std::locale::~locale(v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100409B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100409B18(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  *v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  sub_10000D518(&v16);
  v6 = *(a2 + 23);
  v7 = (v6 & 0x80u) != 0;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v7)
  {
    v8 = *a2;
  }

  else
  {
    v8 = a2;
  }

  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = "<invalid>";
  }

  v10 = strlen(v9);
  v11 = sub_10000C030(&v16, v9, v10);
  v12 = sub_10000C030(v11, ", ", 2);
  sub_100A41FCC(v12, a3);
  sub_10006EE70(&v16 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[1]);
  }

  std::locale::~locale(v17);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100409D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_100409D1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v26 = 0uLL;
  v39 = 0u;
  v40 = 0u;
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
  v6 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v29, v6);
  v7 = a1[1];
  if (v7)
  {
    if (atomic_load_explicit((v7 + 8), memory_order_acquire) == 1)
    {
      sub_10022324C(a1, &v29, 0, 1);
    }

    v8 = *a1;
    v9 = a1[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
    v8 = *a1;
  }

  v10 = v26;
  *&v26 = v8;
  *(&v26 + 1) = v9;
  v28[0] = v10;
  sub_10004A724(v28 + 1);
  sub_10004A704(*(&v40 + 1));
  sub_10004A6B0(&v29);
  v42 = 0u;
  v43 = 0u;
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
  v29 = 0u;
  v44 = 0;
  v45 = 10;
  v46 = &v29 + 8;
  v47 = 0;
  v48 = a2;
  v49 = a3;
  v50 = 0;
  v51 = 0;
  v11 = sub_100222EE4(&v26);
  v25[0] = &v29;
  v25[1] = a1;
  v25[2] = sub_1002241D0(v11);
  v12 = sub_100222EE4(&v26);
  v13 = sub_10004AA88((v12 + 16));
  v14 = sub_100222EE4(&v26);
  v15 = *(sub_1002241D0(v14) + 8);
  v16 = sub_100222EE4(&v26);
  *&v23 = v15;
  *(&v23 + 1) = sub_1002241D0(v16);
  *&v24 = &v29;
  *(&v24 + 1) = *(&v23 + 1);
  sub_10040A100(&v23);
  v17 = sub_100222EE4(&v26);
  v18 = sub_1002241D0(v17);
  v19 = sub_100222EE4(&v26);
  *&v21 = v18;
  *(&v21 + 1) = sub_1002241D0(v19);
  *&v22 = &v29;
  *(&v22 + 1) = *(&v21 + 1);
  sub_10040A100(&v21);
  v28[0] = v23;
  v28[1] = v24;
  v27[0] = v21;
  v27[1] = v22;
  sub_100409F90(v13, v28, v27);
  sub_10040A4C8(v25);
  sub_10040A6AC(&v29);
  return sub_10004A724(&v26 + 1);
}

void sub_100409F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_1000FFEDC(va);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

void sub_100409F90(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_10040A018(a2);
    *a2 = *(*a2 + 8);
    sub_10040A100(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_10040A018(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_10040A0B8((v2 + 272), (*a1 + 16));
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

uint64_t sub_10040A0B8(uint64_t a1, uint64_t *a2)
{
  v2 = sub_100222F28(a2);
  v3 = (sub_100223980((v2 + 32)) + 24);

  return sub_1002247B4(v3);
}

void sub_10040A100(uint64_t *result)
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
      v3 = sub_10040A360((*result + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_100222F28((*result + 16));
      sub_10040A3A4(v4, &v14, (result[2] + 8));
      v5 = sub_100222F28((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 288);
      }

      else
      {
        ++*(v6 + 292);
      }

      v7 = sub_100222F28((*result + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_1002AA390(result, &v14, *result);
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
        v13 = sub_10040A360((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_1002AA390(result, &v14, result[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_10040A324(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10040A360(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_10040A3A4(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_100223980(result + 4); ; i += 6)
    {
      result = sub_100223980(v3);
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

void sub_10040A4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void *sub_10040A4C8(void *a1)
{
  if (*(*a1 + 292) > *(*a1 + 288))
  {
    sub_10040A50C(a1[1], a1[2]);
  }

  return a1;
}

void sub_10040A50C(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100222EE4(a1);
  if (sub_1002241D0(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100222EE4(a1);
    v8 = *(sub_1002241D0(v7) + 8);
    sub_100223134(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

uint64_t sub_10040A6AC(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 296), v4);
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

void sub_10040A784(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10040A7A4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v22 = 0u;
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  sub_10000D518(&v20);
  v7 = *(a2 + 23);
  v8 = (v7 & 0x80u) != 0;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v8)
  {
    v9 = *a2;
  }

  else
  {
    v9 = a2;
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = "<invalid>";
  }

  v11 = strlen(v10);
  v12 = sub_10000C030(&v20, v10, v11);
  v13 = sub_10000C030(v12, ", ", 2);
  v14 = sub_100A38E30(v4);
  v15 = strlen(v14);
  v16 = sub_10000C030(v13, v14, v15);
  sub_10000C030(v16, ", ", 2);
  std::ostream::operator<<();
  sub_10006EE70(&v20 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  std::locale::~locale(v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10040A9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

void sub_10040A9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v7 = sub_100228E00((a1 + 8));
  v8 = a4[1];
  v9 = *a4;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10040AA74(v7, a2, v5, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_10040AA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **sub_10040AA74(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v28 = a3;
  v27[0] = 0;
  v27[1] = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v31, v7);
  v8 = a1[1];
  if (v8)
  {
    if (atomic_load_explicit((v8 + 8), memory_order_acquire) == 1)
    {
      sub_100229438(a1, &v31, 0, 1);
    }

    v9 = *a1;
    v10 = a1[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = *a1;
  }

  v11 = *v27;
  v27[0] = v9;
  v27[1] = v10;
  v30[0] = v11;
  sub_10004A724(v30 + 1);
  sub_10004A704(*(&v42 + 1));
  sub_10004A6B0(&v31);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
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
  v31 = 0u;
  v46 = 0;
  v47 = 10;
  v48 = &v31 + 8;
  v49 = 0;
  v50 = a2;
  v51 = &v28;
  v53 = 0;
  v54 = 0;
  v52 = a4;
  v12 = sub_1002290D0(v27);
  v26[0] = &v31;
  v26[1] = a1;
  v26[2] = sub_10022A3BC(v12);
  v13 = sub_1002290D0(v27);
  v14 = sub_10004AA88((v13 + 16));
  v15 = sub_1002290D0(v27);
  v16 = *(sub_10022A3BC(v15) + 8);
  v17 = sub_1002290D0(v27);
  *&v24 = v16;
  *(&v24 + 1) = sub_10022A3BC(v17);
  *&v25 = &v31;
  *(&v25 + 1) = *(&v24 + 1);
  sub_10040AEEC(&v24);
  v18 = sub_1002290D0(v27);
  v19 = sub_10022A3BC(v18);
  v20 = sub_1002290D0(v27);
  *&v22 = v19;
  *(&v22 + 1) = sub_10022A3BC(v20);
  *&v23 = &v31;
  *(&v23 + 1) = *(&v22 + 1);
  sub_10040AEEC(&v22);
  v30[0] = v24;
  v30[1] = v25;
  v29[0] = v22;
  v29[1] = v23;
  sub_10040ACF8(v14, v30, v29);
  sub_10040B2B4(v26);
  sub_10040B498(&v31);
  return sub_10004A724(&v27[1]);
}

void sub_10040ACA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_1000FFEDC(va);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

void sub_10040ACF8(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_10040AD80(a2);
    *a2 = *(*a2 + 8);
    sub_10040AEEC(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_10040AD80(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_10040AE20((v2 + 272), (*a1 + 16));
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

void sub_10040AE20(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100229114(a2);
  v4 = sub_100229B6C((v3 + 32));
  sub_10040AE70(&v5, (v4 + 24), a1);
}

void sub_10040AE70(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a3;
  v6 = **(a3 + 8);
  v7 = *(a3 + 16);
  v9 = *v7;
  v8 = v7[1];
  *&v10 = v9;
  *(&v10 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10022A9F0(a2, v5, v6, &v10);
  if (*(&v10 + 1))
  {
    sub_100004A34(*(&v10 + 1));
  }
}

void sub_10040AED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10040AEEC(uint64_t *result)
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
      v3 = sub_10040B14C((*result + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_100229114((*result + 16));
      sub_10040B190(v4, &v14, (result[2] + 8));
      v5 = sub_100229114((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 296);
      }

      else
      {
        ++*(v6 + 300);
      }

      v7 = sub_100229114((*result + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_10014A760(result, &v14, *result);
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
        v13 = sub_10040B14C((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_10014A760(result, &v14, result[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_10040B110(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10040B14C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_10040B190(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_100229B6C(result + 4); ; i += 6)
    {
      result = sub_100229B6C(v3);
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

void sub_10040B290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void *sub_10040B2B4(void *a1)
{
  if (*(*a1 + 300) > *(*a1 + 296))
  {
    sub_10040B2F8(a1[1], a1[2]);
  }

  return a1;
}

void sub_10040B2F8(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_1002290D0(a1);
  if (sub_10022A3BC(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_1002290D0(a1);
    v8 = *(sub_10022A3BC(v7) + 8);
    sub_100229320(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

uint64_t sub_10040B498(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 304), v4);
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

void sub_10040B570(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10040B590(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v22 = 0u;
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  sub_10000D518(&v20);
  v7 = *(a2 + 23);
  v8 = (v7 & 0x80u) != 0;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v8)
  {
    v9 = *a2;
  }

  else
  {
    v9 = a2;
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = "<invalid>";
  }

  v11 = strlen(v10);
  v12 = sub_10000C030(&v20, v10, v11);
  v13 = sub_10000C030(v12, ", ", 2);
  v14 = sub_100A38E30(v4);
  v15 = strlen(v14);
  v16 = sub_10000C030(v13, v14, v15);
  sub_10000C030(v16, ", ", 2);
  std::ostream::operator<<();
  sub_10006EE70(&v20 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  std::locale::~locale(v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10040B7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

void sub_10040B7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v7 = sub_10040B860((a1 + 8));
  v8 = a4[1];
  v9 = *a4;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10040B8A4(v7, a2, v5, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_10040B848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10040B860(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_10040B8A4(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v28 = a3;
  v27 = 0uLL;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v31, v7);
  v8 = a1[1];
  if (v8)
  {
    if (atomic_load_explicit((v8 + 8), memory_order_acquire) == 1)
    {
      sub_10040BB28(a1, &v31, 0, 1);
    }

    v9 = *a1;
    v10 = a1[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = *a1;
  }

  v11 = v27;
  *&v27 = v9;
  *(&v27 + 1) = v10;
  v30[0] = v11;
  sub_10004A724(v30 + 1);
  sub_10004A704(*(&v42 + 1));
  sub_10004A6B0(&v31);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
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
  v31 = 0u;
  v46 = 0;
  v47 = 10;
  v48 = &v31 + 8;
  v49 = 0;
  v50 = a2;
  v51 = &v28;
  v53 = 0;
  v54 = 0;
  v52 = a4;
  v12 = sub_10040BBC0(&v27);
  v26[0] = &v31;
  v26[1] = a1;
  v26[2] = sub_10040BE10(v12);
  v13 = sub_10040BBC0(&v27);
  v14 = sub_10004AA88((v13 + 16));
  v15 = sub_10040BBC0(&v27);
  v16 = *(sub_10040BE10(v15) + 8);
  v17 = sub_10040BBC0(&v27);
  *&v24 = v16;
  *(&v24 + 1) = sub_10040BE10(v17);
  *&v25 = &v31;
  *(&v25 + 1) = *(&v24 + 1);
  sub_10040C104(&v24);
  v18 = sub_10040BBC0(&v27);
  v19 = sub_10040BE10(v18);
  v20 = sub_10040BBC0(&v27);
  *&v22 = v19;
  *(&v22 + 1) = sub_10040BE10(v20);
  *&v23 = &v31;
  *(&v23 + 1) = *(&v22 + 1);
  sub_10040C104(&v22);
  v30[0] = v24;
  v30[1] = v25;
  v29[0] = v22;
  v29[1] = v23;
  sub_10040BE54(v14, v30, v29);
  sub_10040C4CC(v26);
  sub_10040CD84(&v31);
  return sub_10004A724(&v27 + 1);
}

void sub_10040BAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_1000FFEDC(va);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

uint64_t *sub_10040BB28(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v5 = a4;
  v6 = a3;
  v9 = sub_10040BBC0(a1);
  v10 = sub_10040BE10(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_10040BBC0(a1);
    v11 = *(sub_10040BE10(v12) + 8);
  }

  v14 = v11;
  return sub_10040BC04(a1, a2, v6, &v14, v5);
}

uint64_t sub_10040BBC0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_10040BC04(uint64_t *a1, void *a2, int a3, uint64_t **a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_10040BBC0(a1);
  result = sub_10040BE10(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_10040BD1C(v10 + 2);
        sub_10040BD60(v15, a2);
        v10 = v22;
      }

      if (*(sub_10040BD1C(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_10040BBC0(a1);
        v18 = sub_10040BE10(v17);
        v19 = sub_10040BD1C(v22 + 2);
        v16 = sub_100100CE8(v18, (v19 + 64), &v22);
      }

      v22 = v16;
      v20 = sub_10040BBC0(a1);
      result = sub_10040BE10(v20);
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

uint64_t sub_10040BD1C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_10040BD60(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_10040BDCC(result);
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

uint64_t sub_10040BDCC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_10040BE10(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_10040BE54(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_10040BEDC(a2);
    *a2 = *(*a2 + 8);
    sub_10040C104(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_10040BEDC(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_10040BF7C((v2 + 272), (*a1 + 16));
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

void sub_10040BF7C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10040BD1C(a2);
  v4 = sub_10040BDCC((v3 + 32));
  sub_10040BFCC(&v5, (v4 + 24), a1);
}

void sub_10040BFCC(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *a3[1];
  v7 = a3[2];
  v9 = *v7;
  v8 = v7[1];
  *&v10 = v9;
  *(&v10 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10040C048(a2, v5, v6, &v10);
  if (*(&v10 + 1))
  {
    sub_100004A34(*(&v10 + 1));
  }
}

void sub_10040C030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10040C048(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v6, "call to empty boost::function");
    v6.__vftable = &off_101E25EA8;
    sub_1001028A8(&v6);
  }

  v4 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v5 = *a4;
  *a4 = 0uLL;
  v4(a1 + 1, a2, a3, &v5);
  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_10040C0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::runtime_error a11)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10040C104(uint64_t *result)
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
      v3 = sub_10040C364((*result + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_10040BD1C((*result + 16));
      sub_10040C3A8(v4, &v14, (result[2] + 8));
      v5 = sub_10040BD1C((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 296);
      }

      else
      {
        ++*(v6 + 300);
      }

      v7 = sub_10040BD1C((*result + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_10014A760(result, &v14, *result);
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
        v13 = sub_10040C364((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_10014A760(result, &v14, result[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_10040C328(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10040C364(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_10040C3A8(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_10040BDCC(result + 4); ; i += 6)
    {
      result = sub_10040BDCC(v3);
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

void sub_10040C4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void *sub_10040C4CC(void *a1)
{
  if (*(*a1 + 300) > *(*a1 + 296))
  {
    sub_10040C510(a1[1], a1[2]);
  }

  return a1;
}

void sub_10040C510(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_10040BBC0(a1);
  if (sub_10040BE10(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_10040BBC0(a1);
    v8 = *(sub_10040BE10(v7) + 8);
    sub_10040BC04(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

void sub_10040C6B0(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_10040C754(&v2, a2);
}

uint64_t sub_10040C710(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_10040C754(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10040C7C0(&v2, a2);
}

void sub_10040C830(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_10040C870(uint64_t result)
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

uint64_t sub_10040C98C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10040CB14(a1, a2);
  sub_10040CB80((v4 + 3), a2 + 24);
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

uint64_t *sub_10040CB14(uint64_t *a1, uint64_t a2)
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

uint64_t sub_10040CB80(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_10040CBE8(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10040CC54(&v2, a2);
}

void sub_10040CCC4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_10040CD04(uint64_t result)
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

uint64_t sub_10040CD84(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 304), v4);
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

void sub_10040CE5C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10040CE7C(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  sub_100DA3324(&v6);
  sub_100DA3324(&key);
  return a3;
}

void sub_10040CEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100DA3324(&a9);
  sub_100DA3324(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10040CF90(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4B738;
  a2[1] = v2;
  return result;
}

void sub_10040CFBC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(v3 + 88));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_10040D0A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10040D0EC(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionarySetValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  sub_100DA3324(&v6);
  sub_100DA3324(&key);
  return a3;
}

void sub_10040D16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100DA3324(&a9);
  sub_100DA3324(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10040D190(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  sub_100DA3324(&v6);
  sub_100DA3324(&key);
  return a3;
}

void sub_10040D210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100DA3324(&a9);
  sub_100DA3324(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10040D234(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10040D2CC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_10040D34C(void **a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v17 = 0;
  ServiceMap = Registry::getServiceMap(*(v2 + 64));
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v18 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v18);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  (*(*v11 + 24))(&v16, v11, ***(v2 + 88) + 24, @"app-auth-token", kCarrierEntitlementsWalletDomain, 0, 4);
  sub_1001B1A54(&v17, &v16);
  sub_10000A1EC(&v16);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  sub_10040D570((v1 + 1), v17);
  sub_10002D760(&v17);
  sub_10040D520(&v15);
  return sub_1000049E0(&v14);
}

void sub_10040D4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_10002D760(va2);
  sub_10040D520(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10040D520(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1003EDCF8(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t sub_10040D570(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

__n128 sub_10040D5D8(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = v4;
  *(v2 + 16) = v5;
  *v2 = result;
  return result;
}

void sub_10040D63C(uint64_t **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  v2 = *v1;
  entitlements::ControllerImpl::invalidateResults_sync(*v1, 8, 3);
  entitlements::ControllerImpl::resetFailuresAndBackoffTimer_sync(v2, 8);
  operator new();
}

void sub_10040D758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_10040D788(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10040D788(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 24);
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

void sub_10040D7E4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (*(*a1 + 8) != 1)
  {
    v14 = *(v2 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315394;
      *&buf[4] = v15;
      v46 = 2080;
      v47 = " ";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sLeaving monitor mode", buf, 0x16u);
    }

    v16 = *(v2 + 88);
    if (*(v16 + 516) == 1)
    {
      *(v16 + 516) = 0;
    }

    if (*(v1 + 9) == 1)
    {
      v17 = *(v2 + 104);
      for (i = *(v2 + 112); v17 != i; v17 += 2)
      {
        sub_1009C4188(*v17, "Monitor mode completed successfully");
      }

      entitlements::ControllerImpl::resetFailuresAndBackoffTimer_sync(v2, 1);
    }

    goto LABEL_44;
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 64));
  v4 = ServiceMap;
  v6 = v5;
  if (v5 < 0)
  {
    v7 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
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
  v10 = sub_100009510(&v4[1].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v4);
  v11 = 0;
  v13 = 1;
LABEL_18:
  v19 = kCarrierEntitlementsWalletDomain;
  (*(*v12 + 24))(&cf, v12, ***(v2 + 88) + 24, @"monitor-mode-retry-cnt", kCarrierEntitlementsWalletDomain, 0, 2);
  v20 = cf;
  *buf = 0;
  if (cf)
  {
    v21 = CFGetTypeID(cf);
    if (v21 == CFNumberGetTypeID())
    {
      ctu::cf::assign(buf, v20, v22);
    }
  }

  v23 = *buf;
  sub_10000A1EC(&cf);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v24 = *(v2 + 88);
  v25 = *(v2 + 40);
  if ((*(v24 + 516) & 1) == 0 && v23 <= 9)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_DEFAULT))
    {
      v26 = PersonalityInfo::logPrefix(**v24);
      *buf = 136315394;
      *&buf[4] = v26;
      v46 = 2080;
      v47 = " ";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%sEntering monitor mode", buf, 0x16u);
      v24 = *(v2 + 88);
    }

    *(v24 + 512) = v23 + 1;
    *(v24 + 516) = 1;
    v27 = Registry::getServiceMap(*(v2 + 64));
    v28 = v27;
    if (v5 < 0)
    {
      v29 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
      v30 = 5381;
      do
      {
        v5 = v30;
        v31 = *v29++;
        v30 = (33 * v30) ^ v31;
      }

      while (v31);
    }

    std::mutex::lock(v27);
    *buf = v5;
    v32 = sub_100009510(&v28[1].__m_.__sig, buf);
    if (v32)
    {
      v34 = v32[3];
      v33 = v32[4];
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v28);
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v33);
        v35 = 0;
LABEL_37:
        v37 = *(v2 + 88);
        v38 = **v37;
        LODWORD(v37) = *(v37 + 128);
        cf = 0;
        *buf = v37;
        v39 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
        if (v39)
        {
          cf = v39;
          *buf = 0;
          sub_100029A48(buf);
          v40 = cf;
        }

        else
        {
          v40 = 0;
        }

        v43 = v40;
        cf = 0;
        sub_100029A48(&cf);
        (*(*v34 + 16))(v34, v38 + 24, @"monitor-mode-retry-cnt", v40, v19, 0, 2, 0);
        sub_100029A48(&v43);
        if ((v35 & 1) == 0)
        {
          sub_100004A34(v33);
        }

        v41 = *(v2 + 104);
        for (j = *(v2 + 112); v41 != j; v41 += 2)
        {
          sub_1009C4188(*v41, "Entering monitor mode");
        }

        goto LABEL_44;
      }
    }

    else
    {
      v34 = 0;
    }

    std::mutex::unlock(v28);
    v33 = 0;
    v35 = 1;
    goto LABEL_37;
  }

  if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
  {
    v36 = PersonalityInfo::logPrefix(**v24);
    sub_10176FA30(v36, buf);
  }

LABEL_44:
  entitlements::ControllerImpl::resetFailuresAndBackoffTimer_sync(v2, 1);
  operator delete();
}

void sub_10040DD58(uint64_t **a1)
{
  v25 = a1;
  v1 = **a1;
  v2 = *(v1 + 88);
  if (*(v2 + 516) == 1)
  {
    v3 = *(v2 + 512);
    if (v3 <= 9)
    {
      *(v2 + 512) = v3 + 1;
      ServiceMap = Registry::getServiceMap(*(v1 + 64));
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
      *valuePtr = v6;
      v10 = sub_100009510(&v5[1].__m_.__sig, valuePtr);
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
LABEL_15:
          v16 = *(v1 + 88);
          v17 = **v16;
          LODWORD(v16) = *(v16 + 128);
          v27 = 0;
          *valuePtr = v16;
          v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, valuePtr);
          if (v18)
          {
            v27 = v18;
            *valuePtr = 0;
            sub_100029A48(valuePtr);
            v19 = v27;
          }

          else
          {
            v19 = 0;
          }

          v26 = v19;
          v27 = 0;
          sub_100029A48(&v27);
          (*(*v12 + 16))(v12, v17 + 24, @"monitor-mode-retry-cnt", v19, kCarrierEntitlementsWalletDomain, 0, 2, 0);
          sub_100029A48(&v26);
          if ((v13 & 1) == 0)
          {
            sub_100004A34(v11);
          }

          v20 = *(v1 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = PersonalityInfo::logPrefix(***(v1 + 88));
            v22 = *(*(v1 + 88) + 512);
            *valuePtr = 136315650;
            *&valuePtr[4] = v21;
            v29 = 2080;
            v30 = " ";
            v31 = 1024;
            v32 = v22;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sMonitor mode controlled retry triggered: %d attempt", valuePtr, 0x1Cu);
          }

          v23 = *(v1 + 104);
          for (i = *(v1 + 112); v23 != i; v23 += 2)
          {
            sub_1009C4188(*v23, "Monitor mode controlled retry triggered");
          }

          entitlements::ControllerImpl::resetFailuresAndBackoffTimer_sync(v1, 1);
          goto LABEL_25;
        }
      }

      else
      {
        v12 = 0;
      }

      std::mutex::unlock(v5);
      v11 = 0;
      v13 = 1;
      goto LABEL_15;
    }

    if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
    {
      v15 = PersonalityInfo::logPrefix(**v2);
      sub_10176FAB8(v15, valuePtr);
    }
  }

  else if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
  {
    v14 = PersonalityInfo::logPrefix(**v2);
    sub_10176FA74(v14, valuePtr);
  }

LABEL_25:
  operator delete();
}

void sub_10040E07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100029A48(va);
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  operator delete();
}

__n128 sub_10040E168(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4B818;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *sub_10040E1A0(void *result, int *a2)
{
  v2 = *a2;
  if (*a2 >= 0x17)
  {
    sub_1000A58E4("bitset test argument out of range");
  }

  v3 = result;
  if ((*(result[1] + 192) >> v2))
  {
    if (*result[3])
    {
      v4 = "";
    }

    else
    {
      v4 = ", ";
    }

    if (*result[3])
    {
      v5 = 0;
    }

    else
    {
      v5 = 2;
    }

    v6 = sub_10000C030((result[2] + 16), v4, v5);
    v7 = sub_10006EE44(v2);
    v8 = strlen(v7);
    result = sub_10000C030(v6, v7, v8);
    *v3[3] = 0;
  }

  return result;
}

uint64_t sub_10040E24C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10040E30C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4B898;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10040E33C(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (sub_100070C90(*(a1 + 8), *a2))
  {
    v4 = **(a1 + 16);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    sub_1000C1608(v4 + 208, v3, &v16);
    v5 = *(v4 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(***(v4 + 88));
      v7 = sub_10006EE44(v3);
      v8 = sub_100A392AC(v4 + 208, v3);
      v9 = sub_100A38E08(v8);
      v10 = *(v4 + 400);
      if (!v10)
      {
        goto LABEL_10;
      }

      v11 = v4 + 400;
      do
      {
        if (*(v10 + 28) >= v3)
        {
          v11 = v10;
        }

        v10 = *(v10 + 8 * (*(v10 + 28) < v3));
      }

      while (v10);
      if (v11 != v4 + 400 && *(v11 + 28) <= v3)
      {
        v12 = *(v11 + 32);
      }

      else
      {
LABEL_10:
        v12 = 0;
      }

      if (v18 == 1 && v16)
      {
        sub_100A3B404(v16, __p);
        if (v15 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        *buf = 136316418;
        v20 = v6;
        v21 = 2080;
        v22 = " ";
        v23 = 2080;
        v24 = v7;
        v25 = 2080;
        v26 = v9;
        v27 = 1024;
        v28 = v12;
        v29 = 2080;
        v30 = v13;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s | - %s = %s 2skip:%d %s", buf, 0x3Au);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136316418;
        v20 = v6;
        v21 = 2080;
        v22 = " ";
        v23 = 2080;
        v24 = v7;
        v25 = 2080;
        v26 = v9;
        v27 = 1024;
        v28 = v12;
        v29 = 2080;
        v30 = "";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s | - %s = %s 2skip:%d %s", buf, 0x3Au);
      }
    }

    if (v18 == 1)
    {
      if (v17)
      {
        sub_100004A34(v17);
      }
    }
  }
}

void sub_10040E5A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, char a14)
{
  if (a14)
  {
    if (a13)
    {
      sub_100004A34(a13);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10040E5CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10040E688(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4B918;
  a2[1] = v2;
  return result;
}

void sub_10040E6B4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(v3 + 88));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_10040E798(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10040E7E4(void **a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1[1])
      {
        v6 = *(v3 + 104);
        v7 = *(v3 + 112);
        while (v6 != v7)
        {
          (*(**v6 + 312))(*v6);
          v6 += 2;
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v10);
  return sub_1000049E0(&v9);
}

void sub_10040E894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10040E8B8(void **a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1[1])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = PersonalityInfo::logPrefix(***(v3 + 88));
          *buf = 136315394;
          v14 = v7;
          v15 = 2080;
          v16 = " ";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sCellular data enabled, treating like a data attachment", buf, 0x16u);
        }

        entitlements::ControllerImpl::handleDataAttached_sync(v3);
        v9 = *(v3 + 104);
        v8 = *(v3 + 112);
        while (v9 != v8)
        {
          (*(**v9 + 320))(*v9);
          v9 += 2;
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v12);
  return sub_1000049E0(&v11);
}

void sub_10040EA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10040EA34(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_10040EB34(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10040EBAC(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10040EB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10040EC9C(va);
  v10 = a9;
  a9 = 0;
  if (v10)
  {
    sub_1002B78C4(&a9, v10);
  }

  _Unwind_Resume(a1);
}

void sub_10040EBAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DCF40(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10040EC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10040EC9C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10000A1EC((v1 + 72));
    sub_10001021C((v1 + 64));
    v2 = *(v1 + 56);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v1 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete();
  }

  return a1;
}

void sub_10040ED18(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_10040EE18(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10040EE90(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10040EE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10040EE90(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DD22C(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10040EF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10040EF80(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_10040F080(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10040F0F8(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10040F0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10040F0F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DA18C(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10040F1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10040F1E8(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_10040F2E8(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10040F360(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10040F338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10040F360(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DA378(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10040F420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10040F450(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_10040F550(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10040F5C8(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10040F5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10040F5C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DA564(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10040F688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10040F6B8(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_10040F7B8(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10040F830(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10040F808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10040F830(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DA750(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10040F8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10040F920(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_10040FA20(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10040FA98(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10040FA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10040FA98(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DA93C(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10040FB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10040FB88(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_10040FC88(uint64_t *a1)
{
  v2 = *a1;
  sub_10040FD1C(*a1);
  if (v2)
  {
    sub_10000A1EC((v2 + 72));
    sub_10001021C((v2 + 64));
    v3 = *(v2 + 56);
    if (v3)
    {
      sub_100004A34(v3);
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(v2 + 16);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete();
  }

  v6 = 0;
  sub_1002B78C4(&v6, a1);
}

void sub_10040FD1C(uint64_t a1)
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
        v5 = *(a1 + 56);
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100010024(&v7, (a1 + 64));
          sub_100060E84(&v6, (a1 + 72));
          sub_10000A1EC(&v6);
          sub_10001021C(&v7);
          sub_100004A34(v5);
        }

        else
        {
          sub_100010024(&v7, (a1 + 64));
          sub_100060E84(&v6, (a1 + 72));
          sub_10000A1EC(&v6);
          sub_10001021C(&v7);
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10040FDE0(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_10040FEE0(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10040FF58(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10040FF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10040FF58(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003E120C(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100410018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100410048(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100410148(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_1004101C0(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100410198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_1004101C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003E14C0(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100410280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_1004102B0(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_1004103B0(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100410428(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100410400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100410428(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003E1774(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1004104E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100410518(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100410618(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100410690(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100410668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100410690(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DE754(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100410750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100410780(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100410880(uint64_t *a1)
{
  v2 = *a1;
  sub_10040FD1C(*a1);
  if (v2)
  {
    sub_10000A1EC((v2 + 72));
    sub_10001021C((v2 + 64));
    v3 = *(v2 + 56);
    if (v3)
    {
      sub_100004A34(v3);
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(v2 + 16);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete();
  }

  v6 = 0;
  sub_1002B78C4(&v6, a1);
}

void sub_100410914(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100410A14(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100410A8C(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100410A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100410A8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DD4C4(v3, v8, v6, v11, &v10);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100410B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100410B80(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100410C80(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100410CF8(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100410CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100410CF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DEC28(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100410DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100410DE8(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100410EE8(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100410F60(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100410F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100410F60(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DF050(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100411020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100411050(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100411150(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_1004111C8(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_1004111A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_1004111C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DF478(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100411288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_1004112B8(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_1004113B8(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100411430(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100411408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100411430(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DF898(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1004114F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100411520(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100411620(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100411698(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100411670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100411698(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DFCB8(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100411758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100411788(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100411888(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100411900(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_1004118D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100411900(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003E04DC(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1004119C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_1004119F0(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100411AF0(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100411B68(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100411B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100411B68(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003E00EC(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100411C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100411C58(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100411D58(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100411DD0(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100411DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100411DD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003E278C(v3, v8, v6, v11, &v10);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100411E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100411EC4(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100411FC4(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10041203C(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100412014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10041203C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DAB28(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1004120FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10041212C(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_10041222C(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_1004122A4(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10041227C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_1004122A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DAF50(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100412364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100412394(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100412494(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10041250C(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_1004124E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10041250C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DB3BC(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1004125CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_1004125FC(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_1004126FC(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100412774(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10041274C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100412774(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DB828(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100412834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100412864(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100412964(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_1004129DC(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_1004129B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_1004129DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v10[0] = *(a1 + 48);
        v10[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v9, (a1 + 64));
        sub_100060E84(&v8, (a1 + 72));
        sub_1003DBC94(v3, a1 + 24, v6, v10);
        sub_10000A1EC(&v8);
        sub_10001021C(&v9);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100412AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100412AD0(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100412BD0(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100412C48(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100412C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100412C48(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 56);
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v8, (a1 + 64));
        sub_100060E84(&v7, (a1 + 72));
        sub_1003DCEFC(v3);
        sub_10000A1EC(&v7);
        sub_10001021C(&v8);
        if (v6)
        {
          sub_100004A34(v6);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100412CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100412D20(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = 0;
  v1 = a1;
  sub_100A5C2CC(v2, &v1, "kCarrierEntitlementsQueryEntitlements", sub_10006E6B0, 3);
}

void sub_100412FFC(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v19 = 0;
  v20 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v21 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v21);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  (*(*v14 + 8))(&v19, v14, 1);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  v16 = v19;
  if (v19)
  {
    v18 = *a5;
    v17 = a5[1];
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v22[0] = off_101E4B998;
    v22[1] = v18;
    v22[2] = v17;
    v22[3] = v22;
    (*(*v16 + 256))(v16, v22);
    sub_10000FF50(v22);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }
}

void sub_1004131BC(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000FF50(va);
  if (a6)
  {
    sub_100004A34(a6);
  }

  _Unwind_Resume(a1);
}

void sub_100413200(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v19 = 0;
  v20 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v21 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v21);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  (*(*v14 + 8))(&v19, v14, 1);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  v16 = v19;
  if (v19)
  {
    v18 = *a5;
    v17 = a5[1];
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v22[0] = off_101E4BA18;
    v22[1] = v18;
    v22[2] = v17;
    v22[3] = v22;
    (*(*v16 + 248))(v16, v22);
    sub_1003EDCF8(v22);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }
}

void sub_1004133B8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1003EDCF8(va);
  if (a6)
  {
    sub_100004A34(a6);
  }

  _Unwind_Resume(a1);
}

void sub_1004133FC(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v20 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, __p);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 8))(&v19, v13, 1);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  v15[0] = a4;
  v15[1] = "kCarrierEntitlementsPushToken";
  sub_100006354(v15, &object);
  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object);
  __p[0] = 0;
  (*(*v19 + 344))(v19, v17, __p);
  sub_100005978(__p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }
}

void sub_1004135BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_100005978(&a21);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(a1);
}

void sub_100413620()
{
  if (v0)
  {
    JUMPOUT(0x100413618);
  }

  JUMPOUT(0x100413610);
}

void sub_100413630(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v21 = 0;
  v22 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v17[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v17);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  (*(*v14 + 8))(&v21, v14, 1);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (v21)
  {
    v20 = 0;
    (*(*v21 + 352))(&v20);
    if (v20)
    {
      ctu::cf_to_xpc(v20, v16);
      v17[0] = *a5;
      v17[1] = "kCarrierPhoneNumberSignatureInfo";
      sub_10000F688(v17, &v18, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v18);
      v18 = 0;
    }

    sub_10001021C(&v20);
  }

  if (v22)
  {
    sub_100004A34(v22);
  }
}

void sub_1004137E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_10001021C(&a14);
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(a1);
}

void sub_10041380C()
{
  if (v0)
  {
    JUMPOUT(0x100413804);
  }

  JUMPOUT(0x1004137FCLL);
}

void *sub_100413844(void *a1)
{
  *a1 = off_101E4B998;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100413890(void *a1)
{
  *a1 = off_101E4B998;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_100413968(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101E4B998;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004139A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1004139B0(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1004139F0(uint64_t a1, BOOL *a2)
{
  v4 = xpc_BOOL_create(*a2);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = *(a1 + 8);
  v3[1] = "kCarrierEntitlementsRefreshUserAuthToken";
  sub_10000F688(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

uint64_t sub_100413A74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100413AC0(void *a1)
{
  *a1 = off_101E4BA18;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100413B0C(void *a1)
{
  *a1 = off_101E4BA18;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_100413BE4(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101E4BA18;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100413C1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_100413C2C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

const void **sub_100413C6C(uint64_t a1, void **a2)
{
  v7 = *a2;
  if (v7)
  {
    CFRetain(v7);
  }

  ctu::cf_to_xpc(v7, a2);
  v4[0] = *(a1 + 8);
  v4[1] = "kCarrierEntitlementsGetUserAuthToken";
  sub_10000F688(v4, &v5, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v5);
  v5 = 0;
  return sub_10002D760(&v7);
}

uint64_t sub_100413D14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100413D60(id a1)
{
  ctu::OsLogContext::OsLogContext(v1, kCtLoggingSystemName, "ent.ctl");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v1);
}

uint64_t sub_100413DB0(uint64_t result, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a6 = a2;
  *(a6 + 4) = result;
  *(a6 + 12) = 2080;
  return result;
}

void sub_100413DEC(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    __TUAssertTrigger("(!!eventId) && (!!bundleId)");
  }

  v4 = objc_autoreleasePoolPush();
  [(objc_class *)off_101FB23F8() donateWithEventIdentifier:a1 bundleIdentifier:a2 completionHandler:&stru_101E4BAD8];

  objc_autoreleasePoolPop(v4);
}

void sub_100413E7C(CTBMDiscoverabilitySignalStreamInterface *a1)
{
  CTBMDiscoverabilitySignalStreamInterface::~CTBMDiscoverabilitySignalStreamInterface(a1);

  operator delete();
}

Class sub_100413EB4()
{
  if (qword_101FBA370 != -1)
  {
    sub_10176FB98();
  }

  result = objc_getClass("TipEventProxy");
  qword_101FBA368 = result;
  off_101FB23F8 = sub_100413F08;
  return result;
}

void sub_100413F6C(LazuliProvisioningWebHelper *a1)
{
  LazuliProvisioningWebHelper::~LazuliProvisioningWebHelper(a1);

  operator delete();
}

void sub_100413FA8(uint64_t a1, uint64_t a2)
{
  v45 = 0;
  v46 = 0;
  v47 = 0;
  (*(**a2 + 56))(&v45);
  v4 = (*(**a2 + 24))();
  v42 = 0;
  v43 = 0;
  v44 = 0;
  (*(**a2 + 48))(&v42);
  memset(&__str, 0, sizeof(__str));
  sub_100416A54(v40, &v45);
  LazuliProvisioningWebHelper::getCookie(v40, &__str);
  sub_1000DD0AC(v40, v40[1]);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::operator=((a1 + 256), &__str);
  }

  v39 = 2;
  v6 = *(a1 + 344);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(a1 + 336);
      if (v8)
      {
        if (v4 != 511)
        {
          if (v4 == 403)
          {
            v13 = LazuliProvisioningWebHelper::requiresPSAccess(a1, &v45);
            v14 = *(**(a1 + 48) + 16);
            if (!v13)
            {
              v21 = *v14();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "C";
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 403 forbidden response", buf, 0xCu);
              }

              *buf = 10;
              LazuliProvisioningServerWrapper::submitMetricForPhase(v8, &v39, 0x100000193, buf, 0, 0);
              LazuliProvisioningServerWrapper::handleForbiddenResponse(v8);
            }

            v15 = *v14();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "C";
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 403 - Needs PS access response", buf, 0xCu);
            }

            *buf = 14;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v8, &v39, 0x100000193, buf, 0, 0);
            LazuliProvisioningServerWrapper::setNeedsPSAccess(v8, 1);
            goto LABEL_22;
          }

          if (v4 == 200)
          {
            v9 = HIBYTE(v44);
            if (v44 < 0)
            {
              v9 = v43;
            }

            if (v9)
            {
              v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                v11 = sub_100701D5C(&v39);
                *buf = 136315394;
                *&buf[4] = "C";
                *&buf[12] = 2080;
                *&buf[14] = v11;
                _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 200 OK with XML: %s", buf, 0x16u);
              }

              if (*(a1 + 279) < 0)
              {
                sub_100005F2C(__dst, *(a1 + 256), *(a1 + 264));
              }

              else
              {
                *__dst = *(a1 + 256);
                v38 = *(a1 + 272);
              }

              sub_10006F264(v34, (a1 + 392));
              v32.__r_.__value_.__s.__data_[0] = 0;
              v33 = 0;
              LazuliProvisioningServerWrapper::handleXml(v8, &v42, __dst, &v45, &v39, v34, &v32);
              if (v33 == 1 && SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v32.__r_.__value_.__l.__data_);
              }

              if (v36 == 1 && v35 < 0)
              {
                operator delete(v34[0]);
              }

              if ((SHIBYTE(v38) & 0x80000000) == 0)
              {
                goto LABEL_22;
              }

              v27 = __dst[0];
LABEL_78:
              operator delete(v27);
LABEL_22:
              sub_100004A34(v7);
              goto LABEL_23;
            }

            v22 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v22 = __str.__r_.__value_.__l.__size_;
            }

            if (v22)
            {
              v23 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v24 = __str.__r_.__value_.__l.__size_;
                }

                if (v24)
                {
                  v25 = "YES";
                }

                else
                {
                  v25 = "NO";
                }

                *buf = 136315394;
                *&buf[4] = "C";
                *&buf[12] = 2080;
                *&buf[14] = v25;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 200 OK [cookie: %s] Now awaiting OTP", buf, 0x16u);
              }

              *buf = 10;
              LazuliProvisioningServerWrapper::submitMetricForPhase(v8, &v39, 0x1000000C8, buf, 0, 0);
              LazuliProvisioningWebHelper::startOtpReceptionTimer(a1);
              goto LABEL_22;
            }
          }

          v26 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
          {
            sub_10176FBAC();
          }

          *buf = 10;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v8, &v39, v4 | &_mh_execute_header, buf, 0, 0);
          goto LABEL_22;
        }

        v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v17 = __str.__r_.__value_.__l.__size_;
          }

          if (v17)
          {
            v18 = "YES";
          }

          else
          {
            v18 = "NO";
          }

          *buf = 136315394;
          *&buf[4] = "C";
          *&buf[12] = 2080;
          *&buf[14] = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 511 redirect [cookie: %s]", buf, 0x16u);
        }

        v19 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = __str.__r_.__value_.__l.__size_;
        }

        v20 = v19 != 0;
        *buf = 10;
        LazuliProvisioningServerWrapper::submitMetricForPhase(v8, &v39, 0x1000001FFLL, buf, 0, 0);
        memset(buf, 0, 32);
        sub_100416A54(v31, &v45);
        LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v31, buf);
        sub_1000DD0AC(v31, v31[1]);
        sub_100416748(__p, buf);
        LazuliProvisioningWebHelper::showAlertIfNeeded(a1, __p);
        if (v30 == 1 && __p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&v28, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        }

        else
        {
          v28 = __str;
        }

        LazuliProvisioningServerWrapper::response511(v8, &v28, 1, v20);
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        if (buf[24] != 1)
        {
          goto LABEL_22;
        }

        v27 = *buf;
        if (!*buf)
        {
          goto LABEL_22;
        }

        *&buf[8] = *buf;
        goto LABEL_78;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "C";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I [%s] Failed to get controller", buf, 0xCu);
  }

  if (v7)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v42);
  }

  sub_1000DD0AC(&v45, v46);
}

void sub_1004147D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46, uint64_t a47)
{
  sub_100004A34(v47);
  if (*(v48 - 145) < 0)
  {
    operator delete(*(v48 - 168));
  }

  if (*(v48 - 121) < 0)
  {
    operator delete(*(v48 - 144));
  }

  sub_1000DD0AC(v48 - 120, *(v48 - 112));
  _Unwind_Resume(a1);
}

void sub_100414958(uint64_t a1, uint64_t a2)
{
  v4 = (*(**a2 + 24))();
  v27 = 0;
  v28 = 0;
  v29 = 0;
  (*(**a2 + 56))(&v27);
  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "C";
    *&buf[12] = 1024;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [%s] Response [%d] for OTP", buf, 0x12u);
  }

  v26 = 4;
  v6 = *(a1 + 344);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(a1 + 336);
      if (v8)
      {
        if (v4 == 511)
        {
          *buf = 10;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v8, &v26, 0x1000001FFLL, buf, 0, 0);
          memset(buf, 0, 32);
          sub_100416A54(v18, &v27);
          LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v18, buf);
          sub_1000DD0AC(v18, v18[1]);
          sub_100416748(v16, buf);
          LazuliProvisioningWebHelper::showAlertIfNeeded(a1, v16);
          if (v17 == 1 && v16[0])
          {
            v16[1] = v16[0];
            operator delete(v16[0]);
          }

          v14 = 0uLL;
          v15 = 0;
          LazuliProvisioningServerWrapper::response511(v8, &v14, 1, 0);
          if (SHIBYTE(v15) < 0)
          {
            operator delete(v14);
          }

          if (buf[24] != 1)
          {
            goto LABEL_22;
          }

          v9 = *buf;
          if (!*buf)
          {
            goto LABEL_22;
          }

          *&buf[8] = *buf;
        }

        else
        {
          if (v4 != 200)
          {
            if (LazuliProvisioningWebHelper::is4XXor5XXError(a1, v4))
            {
              *buf = 10;
              LazuliProvisioningServerWrapper::submitMetricForPhase(v8, &v26, v4 | &_mh_execute_header, buf, 0, 0);
              *buf = 1;
              LazuliProvisioningServerWrapper::failedFatally(v8, buf);
            }

            *buf = 10;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v8, &v26, v4 | &_mh_execute_header, buf, 0, 0);
            v13[0] = _NSConcreteStackBlock;
            v13[1] = 0x40000000;
            v13[2] = sub_100414F1C;
            v13[3] = &unk_101E4BBC0;
            v13[4] = a1;
            v31 = 0;
            v30[0] = off_101E4BC98;
            v30[1] = _Block_copy(v13);
            v31 = v30;
            LazuliProvisioningWebHelper::responseUnknown(a1, a2, v30);
            sub_100416C34(v30);
            goto LABEL_22;
          }

          (*(**a2 + 48))(buf);
          v24[0] = 0;
          v24[1] = 0;
          v25 = 0;
          sub_10006F264(v21, (a1 + 392));
          __p.__r_.__value_.__s.__data_[0] = 0;
          v20 = 0;
          LazuliProvisioningServerWrapper::handleXml(v8, buf, v24, &v27, &v26, v21, &__p);
          if (v20 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v23 == 1 && v22 < 0)
          {
            operator delete(v21[0]);
          }

          if (SHIBYTE(v25) < 0)
          {
            operator delete(v24[0]);
          }

          if ((buf[23] & 0x80000000) == 0)
          {
LABEL_22:
            sub_100004A34(v7);
            goto LABEL_23;
          }

          v9 = *buf;
        }

        operator delete(v9);
        goto LABEL_22;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10176FC28(v10, v11, v12);
  }

  if (v7)
  {
    goto LABEL_22;
  }

LABEL_23:
  sub_1000DD0AC(&v27, v28);
}

void sub_100414DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_100416C34(v50 - 128);
  sub_100004A34(v49);
  sub_1000DD0AC(v50 - 152, *(v50 - 144));
  _Unwind_Resume(a1);
}

void sub_100414F44(uint64_t a1, uint64_t a2)
{
  v47 = 0;
  v48 = 0;
  v49 = 0;
  (*(**a2 + 56))(&v47);
  v4 = (*(**a2 + 24))();
  v44 = 0;
  v45 = 0;
  v46 = 0;
  (*(**a2 + 48))(&v44);
  memset(&__str, 0, sizeof(__str));
  sub_100416A54(v42, &v47);
  LazuliProvisioningWebHelper::getCookie(v42, &__str);
  sub_1000DD0AC(v42, v42[1]);
  v41 = 1;
  v5 = *(a1 + 344);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *(a1 + 336);
      if (v7)
      {
        switch(v4)
        {
          case 511:
            v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = __str.__r_.__value_.__l.__size_;
              }

              if (size)
              {
                v19 = "YES";
              }

              else
              {
                v19 = "NO";
              }

              *buf = 136315394;
              *&buf[4] = "C";
              *&buf[12] = 2080;
              *&buf[14] = v19;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 511 redirect [cookie: %s]", buf, 0x16u);
            }

            *buf = 10;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v7, &v41, 0x1000001FFLL, buf, 0, 0);
            v20 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v20 = __str.__r_.__value_.__l.__size_;
            }

            v21 = v20 != 0;
            memset(buf, 0, 32);
            sub_100416A54(v32, &v47);
            LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v32, buf);
            sub_1000DD0AC(v32, v32[1]);
            sub_100416748(__p, buf);
            LazuliProvisioningWebHelper::showAlertIfNeeded(a1, __p);
            if (v31 == 1 && __p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
            }

            else
            {
              __dst = __str;
            }

            LazuliProvisioningServerWrapper::response511(v7, &__dst, 0, v21);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (buf[24] != 1)
            {
              goto LABEL_18;
            }

            v27 = *buf;
            if (!*buf)
            {
              goto LABEL_18;
            }

            *&buf[8] = *buf;
            break;
          case 403:
            v14 = LazuliProvisioningWebHelper::requiresPSAccess(a1, &v47);
            v15 = *(**(a1 + 48) + 16);
            if (!v14)
            {
              v22 = *v15();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "C";
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 403 forbidden response", buf, 0xCu);
              }

              *buf = 10;
              LazuliProvisioningServerWrapper::submitMetricForPhase(v7, &v41, 0x100000193, buf, 0, 0);
              LazuliProvisioningServerWrapper::handleForbiddenResponse(v7);
            }

            v16 = *v15();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "C";
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 403 - Needs PS access response", buf, 0xCu);
            }

            *buf = 14;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v7, &v41, 0x100000193, buf, 0, 0);
            LazuliProvisioningServerWrapper::setNeedsPSAccess(v7, 1);
            goto LABEL_18;
          case 200:
            v8 = HIBYTE(v46);
            if (v46 < 0)
            {
              v8 = v45;
            }

            if (v8)
            {
              v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                v10 = sub_100701D5C(&v41);
                *buf = 136315394;
                *&buf[4] = "C";
                *&buf[12] = 2080;
                *&buf[14] = v10;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 200 OK with XML: %s", buf, 0x16u);
              }

              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100005F2C(&v40, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
              }

              else
              {
                v40 = __str;
              }

              sub_10006F264(v37, (a1 + 392));
              v35.__r_.__value_.__s.__data_[0] = 0;
              v36 = 0;
              LazuliProvisioningServerWrapper::handleXml(v7, &v44, &v40, &v47, &v41, v37, &v35);
              if (v36 == 1 && SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v35.__r_.__value_.__l.__data_);
              }

              if (v39 == 1 && v38 < 0)
              {
                operator delete(v37[0]);
              }

              if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_18;
              }

              v27 = v40.__r_.__value_.__r.__words[0];
              break;
            }

            v23 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v23 = __str.__r_.__value_.__l.__size_;
            }

            if (!v23)
            {
LABEL_57:
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 0x40000000;
              aBlock[2] = sub_100415C18;
              aBlock[3] = &unk_101E4BBE0;
              aBlock[4] = a1;
              v51 = 0;
              v50[0] = off_101E4BC98;
              v50[1] = _Block_copy(aBlock);
              v51 = v50;
              LazuliProvisioningWebHelper::responseUnknown(a1, a2, v50);
              sub_100416C34(v50);
LABEL_18:
              sub_100004A34(v6);
              goto LABEL_19;
            }

            std::string::operator=((a1 + 256), &__str);
            *buf = 10;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v7, &v41, 0x1000000C8, buf, 0, 0);
            v24 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v25 = __str.__r_.__value_.__l.__size_;
              }

              if (v25)
              {
                v26 = "YES";
              }

              else
              {
                v26 = "NO";
              }

              *buf = 136315394;
              *&buf[4] = "C";
              *&buf[12] = 2080;
              *&buf[14] = v26;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 200 OK [cookie: %s]", buf, 0x16u);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(&v33, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
            }

            else
            {
              v33 = __str;
            }

            v34 = 1;
            sub_100415934(a1, &v33);
            if (v34 != 1 || (SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_18;
            }

            v27 = v33.__r_.__value_.__r.__words[0];
            break;
          default:
            goto LABEL_57;
        }

        operator delete(v27);
        goto LABEL_18;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10176FC28(v11, v12, v13);
  }

  if (v6)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  sub_1000DD0AC(&v47, v48);
}

void sub_100415798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51, uint64_t a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v57);
  if (*(v58 - 193) < 0)
  {
    operator delete(*(v58 - 216));
  }

  if (*(v58 - 169) < 0)
  {
    operator delete(*(v58 - 192));
  }

  sub_1000DD0AC(v58 - 168, *(v58 - 160));
  _Unwind_Resume(a1);
}

void sub_100415934(uint64_t a1, const std::string *a2)
{
  v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 136);
    if (*(a1 + 159) < 0)
    {
      v5 = *v5;
    }

    v6 = "NO";
    v7 = a2[1].__r_.__value_.__s.__data_[0];
    *&buf[4] = "C";
    *buf = 136315650;
    *&buf[12] = 2080;
    if (v7)
    {
      v6 = "YES";
    }

    *&buf[14] = v5;
    *&buf[22] = 2080;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [%s] Starting access with parameters on URL: %s [cookie: %s]", buf, 0x20u);
  }

  *&buf[8] = 0uLL;
  *buf = &buf[8];
  if (a2[1].__r_.__value_.__s.__data_[0] == 1)
  {
    sub_10000501C(&__p, "Cookie");
    __str.__r_.__value_.__r.__words[0] = &__p;
    v8 = sub_100416DA4(buf, &__p, &unk_101802C98, &__str);
    std::string::operator=((v8 + 56), a2);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  LazuliProvisioningWebHelper::getHeaders(&__p, a1, &qword_101802A60);
  LazuliProvisioningWebHelper::set503Retry(a1, 1);
  v13 = 2;
  sub_100A9C1EC(a1 + 136, &__p, &__str);
  v17[0] = off_101E4BDA8;
  v17[1] = a1;
  v17[3] = v17;
  LOBYTE(v9) = 0;
  v11 = 0;
  LazuliProvisioningWebHelper::runWithTimeout(a1, &v13, &__str, buf, v17, &v9);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(v9);
  }

  sub_100416C34(v17);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_1000DD0AC(&__p, v15);
  sub_1000DD0AC(buf, *&buf[8]);
}

uint64_t sub_100415C20(uint64_t a1)
{
  v18 = 0;
  memset(__dst, 0, sizeof(__dst));
  CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
  sub_10038E288(__dst, CurrentConfig);
  v3 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 136);
    if (*(a1 + 159) < 0)
    {
      v4 = *v4;
    }

    v5 = sub_1004CDF60(&__dst[12] + 3);
    *buf = 136315650;
    *&buf[4] = "C";
    *&buf[12] = 2082;
    *&buf[14] = v4;
    *&buf[22] = 2082;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [%s] Starting first access on: [%{public}s] with interface [%{public}s] ", buf, 0x20u);
  }

  if (HIDWORD(__dst[12]) == 3)
  {
    v15.__r_.__value_.__s.__data_[0] = 0;
    v16 = 0;
    sub_100415934(a1, &v15);
    if (v16 == 1 && SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = v15.__r_.__value_.__r.__words[0];
LABEL_18:
      operator delete(v6);
    }
  }

  else
  {
    memset(&__str, 0, sizeof(__str));
    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    sub_100A9BE74(a1 + 136, buf, &__str);
    sub_1000DD0AC(buf, *&buf[8]);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    sub_100416868(buf, "User-Agent", "iPhoneOS");
    sub_1000DF684(&v11, buf, 1);
    if (v22 < 0)
    {
      operator delete(v21);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    *buf = 1;
    v19[0] = off_101E4BD28;
    v19[1] = a1;
    v19[3] = v19;
    LOBYTE(__p) = 0;
    v10 = 0;
    LazuliProvisioningWebHelper::runWithTimeout(a1, buf, &__str, &v11, v19, &__p);
    if (v10 == 1 && v9 < 0)
    {
      operator delete(__p);
    }

    sub_100416C34(v19);
    sub_1000DD0AC(&v11, v12);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = __str.__r_.__value_.__r.__words[0];
      goto LABEL_18;
    }
  }

  return sub_10038E4E4(__dst);
}

void sub_100415EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, int a34, __int16 a35, char a36, char a37)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(v37 - 128);
  sub_1000DD0AC(&a18, a19);
  if (a26 < 0)
  {
    operator delete(a21);
  }

  sub_10038E4E4(&a35);
  _Unwind_Resume(a1);
}

void sub_100415F78(uint64_t a1, uint64_t a2)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  (*(**a2 + 56))(&v33);
  v4 = (*(**a2 + 24))();
  v30 = 0;
  v31 = 0;
  v32 = 0;
  (*(**a2 + 48))(&v30);
  v5 = *(a1 + 344);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *(a1 + 336);
      if (v7)
      {
        v8 = HIBYTE(v32);
        if (v32 < 0)
        {
          v8 = v31;
        }

        if (v8 && v4 == 200)
        {
          v28[0] = 0;
          v28[1] = 0;
          v29 = 0;
          LODWORD(v21[0]) = 5;
          sub_10006F264(v25, (a1 + 392));
          __p.__r_.__value_.__s.__data_[0] = 0;
          v24 = 0;
          LazuliProvisioningServerWrapper::handleXml(v7, &v30, v28, &v33, v21, v25, &__p);
          if (v24 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v27 == 1 && v26 < 0)
          {
            operator delete(v25[0]);
          }

          if ((SHIBYTE(v29) & 0x80000000) == 0)
          {
            goto LABEL_20;
          }

          v9 = v28[0];
        }

        else
        {
          if (v4 != 511 && v4 != 400)
          {
            v14 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
            if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
            {
              sub_10176FCA8();
            }

            LODWORD(v21[0]) = 5;
            v17 = 10;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v7, v21, v4 | &_mh_execute_header, &v17, 0, 0);
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 0x40000000;
            aBlock[2] = sub_1004164D0;
            aBlock[3] = &unk_101E4BC00;
            aBlock[4] = a1;
            v37 = 0;
            v36[0] = off_101E4BC98;
            v36[1] = _Block_copy(aBlock);
            v37 = v36;
            LazuliProvisioningWebHelper::responseUnknown(a1, a2, v36);
            sub_100416C34(v36);
            goto LABEL_20;
          }

          LazuliProvisioningServerWrapper::eraseFullAndRefreshXmlForServer(*(a1 + 336));
          *v21 = 0u;
          v22 = 0u;
          sub_100416A54(v20, &v33);
          LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v20, v21);
          sub_1000DD0AC(v20, v20[1]);
          sub_100416748(v18, v21);
          LazuliProvisioningWebHelper::showAlertIfNeeded(a1, v18);
          if (v19 == 1 && v18[0])
          {
            v18[1] = v18[0];
            operator delete(v18[0]);
          }

          isFirstRetryAttempt = LazuliProvisioningServerWrapper::isFirstRetryAttempt(v7);
          LazuliProvisioningWebHelper::restartProvisioning(a1, isFirstRetryAttempt);
          LazuliProvisioningServerWrapper::resetPendingRefresh(v7);
          v16 = 10;
          v17 = 5;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v7, &v17, v4 | &_mh_execute_header, &v16, 0, 0);
          if (BYTE8(v22) != 1 || (v9 = v21[0]) == 0)
          {
LABEL_20:
            sub_100004A34(v6);
            goto LABEL_21;
          }

          v21[1] = v21[0];
        }

        operator delete(v9);
        goto LABEL_20;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10176FC28(v10, v11, v12);
  }

  if (v6)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v30);
  }

  sub_1000DD0AC(&v33, v34);
}

void sub_1004163B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43)
{
  sub_100416C34(v44 - 104);
  sub_100004A34(v43);
  if (*(v44 - 129) < 0)
  {
    operator delete(*(v44 - 152));
  }

  sub_1000DD0AC(v44 - 128, *(v44 - 120));
  _Unwind_Resume(a1);
}

void sub_1004164F8(uint64_t a1)
{
  v2 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 136);
    if (*(a1 + 159) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315394;
    *&buf[4] = "C";
    *&buf[12] = 2082;
    *&buf[14] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%s] Starting refresh on: [%{public}s]", buf, 0x16u);
  }

  memset(buf, 0, sizeof(buf));
  LazuliProvisioningWebHelper::getHeaders(buf, a1, &qword_101802A60);
  memset(&__str, 0, sizeof(__str));
  sub_100A9BE74(a1 + 136, buf, &__str);
  LazuliProvisioningWebHelper::set503Retry(a1, 1);
  v9 = 2;
  v8[0] = 0;
  v8[1] = 0;
  v7 = v8;
  v11[0] = off_101E4BE28;
  v11[1] = a1;
  v11[3] = v11;
  LOBYTE(__p) = 0;
  v6 = 0;
  LazuliProvisioningWebHelper::runWithTimeout(a1, &v9, &__str, &v7, v11, &__p);
  if (v6 == 1 && v5 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(v11);
  sub_1000DD0AC(&v7, v8[0]);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_1000DD0AC(buf, *&buf[8]);
}

void sub_1004166D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(v29 - 80);
  sub_1000DD0AC(&a18, a21);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  sub_1000DD0AC(v29 - 48, *(v29 - 40));
  _Unwind_Resume(a1);
}

uint64_t *sub_100416748(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_100416798(a1, a2);
  return a1;
}

void sub_100416778(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_101760EC4(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100416798(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_1004167EC(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t *sub_1004167EC(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100034AE8(result, a4);
  }

  return result;
}

void sub_10041684C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100416868(void *a1, char *a2, char *a3)
{
  v5 = sub_10000501C(a1, a2);
  sub_10000501C(v5 + 3, a3);
  return a1;
}

void sub_1004168A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100416940(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E4BC48;
  LazuliProvisioningWebHelper::LazuliProvisioningWebHelper((a1 + 3), a2);
  a1[3] = &off_101E4BB68;
  return a1;
}

void sub_1004169D8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E4BC48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t **sub_100416A54(uint64_t **a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_100416AAC(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t **sub_100416AAC(uint64_t **result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1000DF708(v5, v5 + 1, (v4 + 4), (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_100416B54(uint64_t a1, void *a2)
{
  *a2 = off_101E4BC98;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void sub_100416BA0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_100416BE8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E4BD08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100416C34(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100416D24(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4BD28;
  a2[1] = v2;
  return result;
}

uint64_t sub_100416D58(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100416DA4(uint64_t **a1, uint64_t a2, uint64_t a3, _OWORD **a4)
{
  v6 = 0;
  v4 = *sub_1000DFA58(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_100416EE4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4BDA8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100416F18(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100416FD4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4BE28;
  a2[1] = v2;
  return result;
}

uint64_t sub_100417028(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100417074(void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  operator new();
}

void sub_10041726C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, dispatch_object_t object, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_free_exception(v15);
  if (a10)
  {
    sub_100004A34(a10);
  }

  v17 = *(v14 + 8);
  if (v17)
  {
    sub_100004A34(v17);
  }

  _Unwind_Resume(a1);
}

void sub_100417314(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_retain(v1);
  }

  sub_10031BE4C();
}

void sub_1004173AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (a9)
  {
    sub_10176FD24(a9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004173D4(uint64_t a1, uint64_t a2, NSObject **a3)
{
  v6 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "DATA.dw-apn");
  sub_100417860(v6, a3, &v13);
  ctu::OsLogContext::~OsLogContext(&v13);
  v7 = *(a2 + 8);
  v13.var0 = *a2;
  v13.var1.fRef = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  v21[0] = off_101E2B528;
  v21[1] = sub_1000A7B68;
  v21[3] = v21;
  sub_1004178EC((a1 + 48), &v13, v21);
  sub_1000A8744(v21);
  if (v13.var1.fRef)
  {
    sub_100004A34(v13.var1.fRef);
  }

  *a1 = off_101E4BEB0;
  *(a1 + 56) = *a2;
  v8 = *(a2 + 8);
  *(a1 + 64) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "DarwinPDPConfig");
  v9 = *(a1 + 24);
  v18 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  object = 0;
  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v18)
  {
    dispatch_release(v18);
  }

  if (v20 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 88) = 0;
  v10 = *(a1 + 64);
  v15 = *(a1 + 56);
  v16 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&v13, "DarwinPDPConfig");
  PersonalitiesTracker::PersonalitiesTracker();
  if (v14 < 0)
  {
    operator delete(v13.var0);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *(a1 + 264) = a1 + 272;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = a1 + 320;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = -1;
  *(a1 + 392) = a1 + 400;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = a1 + 424;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  LODWORD(v13.var0) = 1;
  v15 = &v13;
  sub_100423C00(a1 + 264, &v13, &unk_101802C98, &v15);
  v15 = &v13;
  v11 = sub_100423CEC(a1 + 312, &v13, &unk_101802C98, &v15);
  if (capabilities::ct::supportsGemini(v11))
  {
    LODWORD(v13.var0) = 2;
    v15 = &v13;
    sub_100423C00(a1 + 264, &v13, &unk_101802C98, &v15);
    v15 = &v13;
    sub_100423CEC(a1 + 312, &v13, &unk_101802C98, &v15);
  }

  return a1;
}

void sub_1004176EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, dispatch_object_t object, dispatch_object_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  v29 = v26[10];
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = v26[8];
  if (v30)
  {
    sub_100004A34(v30);
  }

  v31 = v26[6];
  v26[6] = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31, a2, a3, a4, a5, a6, a7, a8);
  }

  ctu::OsLogLogger::~OsLogLogger((v26 + 5));
  sub_1000C0544(v27);
  PDPConfigInterface::~PDPConfigInterface(v26);
  _Unwind_Resume(a1);
}

void *sub_100417860(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_1004178C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

capabilities::ct *sub_1004178EC(capabilities::ct *a1, uint64_t a2, uint64_t a3)
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

void sub_100417A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A8744(va);
  operator delete();
}

void sub_100417AB0(NSObject *a1, uint64_t a2, ServiceStage *a3)
{
  isa = a1[5].isa;
  if (os_log_type_enabled(isa, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, isa, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPConfig: shutting down ...", buf, 2u);
  }

  ServiceStage::holdOffStage(&group[1], a3);
  *buf = 0;
  v8 = 0;
  sub_100004AA0(buf, &a1[1].isa);
  operator new();
}

void sub_100417C00(uint64_t a1)
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100417D10;
  handler[3] = &unk_101E4BF88;
  handler[4] = a1;
  v2 = (a1 + 384);
  v3 = notify_register_dispatch("com.apple.system.config.network_change.dns", (a1 + 384), *(a1 + 24), handler);
  v4 = *(a1 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I dnsNotificationHandler: failed to register", v6, 2u);
    }

    *v2 = -1;
  }

  else if (v5)
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I dnsNotificationHandler: registered successfully", v6, 2u);
  }
}

void sub_100417D10(uint64_t a1, int val)
{
  v3 = *(a1 + 32);
  is_valid_token = notify_is_valid_token(val);
  v5 = *(v3 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (is_valid_token)
  {
    if (v6)
    {
      LODWORD(v21) = 67109120;
      HIDWORD(v21) = val;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I dnsNotificationHandler: token=%d", &v21, 8u);
    }

    v7 = *(v3 + 288);
    for (i = *(v3 + 296); v7 != i; v7 += 2)
    {
      v9 = *v7;
      v10 = v7[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v9 + 208))(v9);
      if (v10)
      {
        sub_100004A34(v10);
      }
    }

    ServiceMap = Registry::getServiceMap(*(v3 + 56));
    v12 = ServiceMap;
    if ((v13 & 0x8000000000000000) != 0)
    {
      v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
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
    v21 = v13;
    v17 = sub_100009510(&v12[1].__m_.__sig, &v21);
    if (v17)
    {
      v19 = v17[3];
      v18 = v17[4];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v12);
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
        v20 = 0;
        if (!v19)
        {
LABEL_22:
          if ((v20 & 1) == 0)
          {
            sub_100004A34(v18);
          }

          return;
        }

LABEL_21:
        (*(*v19 + 1200))(v19);
        goto LABEL_22;
      }
    }

    else
    {
      v19 = 0;
    }

    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
    if (!v19)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v6)
  {
    LODWORD(v21) = 67109120;
    HIDWORD(v21) = val;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I dnsNotificationHandler: token=%d is not valid", &v21, 8u);
  }
}

void sub_100417F44(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}