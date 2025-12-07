uint64_t sub_100102F30(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011A39C(a1);
  std::ios::~ios();
  return a1;
}

void sub_100102F74(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(*a1 + 72))
  {
    sub_1001035B4(a1, a2, &v23);
    v6 = v23;
    v7 = v24;
    if (v23 != v24)
    {
      do
      {
        sub_100043098(&keys, v6);
        v8 = a1[1];
        sub_10002E310(v31, &values);
        sub_10002DF68(v31, &v20);
        v9 = sub_1000FE034(v8, a2, &values, &v20, 1);
        if (v22)
        {
          sub_10000E984(v22);
        }

        if (v21)
        {
          sub_10000E984(v21);
        }

        if (v28)
        {
          sub_10000E984(v28);
        }

        if (v26)
        {
          sub_10000E984(v26);
        }

        if (v9 < 0 && v9)
        {
          exception = __cxa_allocate_exception(0x40uLL);
          *exception = &off_1002260F0;
          v19 = std::generic_category();
          exception[1] = v9;
          exception[2] = v19;
          *(exception + 24) = 0;
          *(exception + 48) = 0;
          exception[7] = "ASIF: failed to deserialize metadata";
        }

        sub_1000157A4(&keys);
        v6 += 14;
      }

      while (v6 != v7);
      v6 = v23;
      v7 = v24;
    }

    if (v6 == v7)
    {
      goto LABEL_21;
    }

    v10 = 0;
    do
    {
      v10 += *(v6 + 4);
      v6 += 14;
    }

    while (v6 != v7);
    if (!v10)
    {
LABEL_21:
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v11 = v10;
      v12 = malloc_type_valloc(v10, 0x8B7C732DuLL);
      if (!v12)
      {
        v13 = __cxa_allocate_exception(8uLL);
        v14 = std::bad_alloc::bad_alloc(v13);
      }
    }

    values = off_1002128C8;
    p_values = &values;
    keys = v12;
    sub_100015FBC(v30, &values);
    sub_10001590C(&values);
    v15 = v23;
    v16 = v24;
    if (v23 != v24)
    {
      v17 = 0;
      do
      {
        memcpy(keys + v17, v15->__vftable, v15->__shared_weak_owners_);
        v17 += LODWORD(v15->__shared_weak_owners_);
        v15 = (v15 + 112);
      }

      while (v15 != v16);
    }

    sub_100144FE0(a3, keys, v11);
    sub_100015888(&keys, 0);
    sub_10001590C(v30);
    keys = &v23;
    sub_10011A89C(&keys);
  }

  else
  {
    keys = @"internal metadata";
    v30[0] = @"user metadata";
    sub_100144E18(&v20);
    sub_100144E18(&v23);
    values = v20;
    v26 = v23;
    sub_100144D78(a3, &keys, &values, 2);
    sub_100028D2C(&v23);
    sub_100028D2C(&v20);
  }
}

void sub_100103280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, const void *a37)
{
  sub_100028D2C(&a37);
  sub_100028D2C(&a9);
  _Unwind_Resume(a1);
}

const void **sub_1001034E4@<X0>(CFMutableDictionaryRef *a1@<X8>)
{
  keys[0] = @"internal metadata";
  keys[1] = @"user metadata";
  sub_100144E18(&v4);
  sub_100144E18(&v3);
  values[0] = v4;
  values[1] = v3;
  sub_100144D78(a1, keys, values, 2);
  sub_100028D2C(&v3);
  return sub_100028D2C(&v4);
}

void sub_100103588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_100028D2C(va);
  sub_100028D2C(va1);
  _Unwind_Resume(a1);
}

void sub_1001035B4(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_100102B28(a1, a2, &v9);
  if (v10 != v9)
  {
    v4 = *(v9 + 12);
    if (!(v4 % *(a1[1] + 26)))
    {
      if (v4)
      {
        if (!malloc_type_valloc(v4, 0x4DC0432DuLL))
        {
          exception = __cxa_allocate_exception(8uLL);
          v8 = std::bad_alloc::bad_alloc(exception);
        }
      }

      operator new();
    }

    v5 = __cxa_allocate_exception(0x40uLL);
    *v5 = &off_1002260F0;
    v6 = std::generic_category();
    v5[1] = 152;
    v5[2] = v6;
    *(v5 + 24) = 0;
    *(v5 + 48) = 0;
    v5[7] = "Unaligned metadata entry size";
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void sub_10010380C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10011A89C(va);
  _Unwind_Resume(a1);
}

void sub_100103814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (a12)
  {
    sub_10000E984(a12);
  }

  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  sub_10011A89C(&__p);
  _Unwind_Resume(a1);
}

void sub_100103830(void *a1)
{
  __cxa_begin_catch(a1);
  free(v1);
  __cxa_rethrow();
}

void sub_100103844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_end_catch();
  if (a14)
  {
    operator delete(a14);
  }

  JUMPOUT(0x100103868);
}

void *sub_10010387C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10012A94C(a1, a2);
  *a1 = off_100216760;
  a1[45] = &off_100216860;
  a1[46] = &off_100216888;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100216760;
  a1[45] = off_1002167E8;
  a1[46] = off_100216810;
  return a1;
}

void sub_100103980(_Unwind_Exception *a1)
{
  sub_10011ABD4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001039A4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011ABD4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1001039E8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10012A884(a1, a2);
  *a1 = off_100216980;
  a1[45] = &off_100216A80;
  a1[46] = &off_100216AA8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100216980;
  a1[45] = off_100216A08;
  a1[46] = off_100216A30;
  return a1;
}

void sub_100103AEC(_Unwind_Exception *a1)
{
  sub_10011B36C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100103B10(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011B36C(a1);
  std::ios::~ios();
  return a1;
}

const void **sub_100103B54(const void **result, uint64_t a2, CFPropertyListRef propertyList)
{
  if (propertyList)
  {
    v4 = result;
    v5 = *result;
    v6 = result[1];
    v7 = v6[7];
    v8 = *(*result + 9) * v7;
    v9 = *(v6 + 13);
    if (!v8)
    {
      v8 = (v5[7] * v9 - v7) / v7 * v7;
    }

    if (v8 < v5[6] * v9)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v42 = sub_100001940(exception, "Not enough space for metadata", 0x1Cu);
    }

    sub_100144E60(v63, propertyList);
    v10 = v63[1];
    cf = v63[0];
    v63[0] = 0;
    sub_1000929D8(v63);
    v11 = *v4;
    v12 = v4[1];
    v13 = *(v12 + 28);
    v14 = *(v12 + 26);
    v15 = v13 - (v14 + 511) + (v14 + 511) % v14;
    v16 = v10 + v15 - 1;
    v48 = v16 / v15;
    v49 = v10;
    if (v16 / v15 * v13 > v8 + v13 - *(*v4 + 48) * v14)
    {
      v43 = __cxa_allocate_exception(0x40uLL);
      *v43 = &off_1002260F0;
      v44 = std::generic_category();
      v43[1] = 28;
      v43[2] = v44;
      *(v43 + 24) = 0;
      *(v43 + 48) = 0;
      v43[7] = "Not enough space for metadata";
    }

    if (v15 <= v16)
    {
      v17 = 0;
      v18 = v48 - 1;
      v45 = v10 % v15;
      v46 = v8;
      v47 = a2;
      do
      {
        if (v18 == v17)
        {
          v19 = 0;
          v20 = v4[1];
          v21 = v8 - v18 * *(v20 + 28);
          v22 = v45;
        }

        else
        {
          v20 = v4[1];
          v23 = *(v20 + 28);
          v21 = v8 - v17 * v23;
          v19 = (v21 - v23) / v23;
          v22 = v15;
        }

        v24 = v22 - 1;
        sub_100101CAC(v61, (v22 - 1 + *(v20 + 26)) / *(v20 + 26) * *(v20 + 26), v19);
        sub_100101D98(v61, a2, v4[1], v21);
        if (v49 - v22 >= v17 * v15)
        {
          v25 = v17 * v15;
        }

        else
        {
          v25 = v49 - v22;
        }

        v26 = *(v4[1] + 26);
        v27 = v24 + v26;
        v28 = (v24 + v26) % v26;
        v29 = (v27 - v28);
        if (v27 != v28)
        {
          v29 = malloc_type_valloc(v29, 0x8B7C732DuLL);
          if (!v29)
          {
            v39 = __cxa_allocate_exception(8uLL);
            v40 = std::bad_alloc::bad_alloc(v39);
          }
        }

        v63[0] = off_1002128C8;
        v63[3] = v63;
        v65 = v29;
        sub_100015FBC(v66, v63);
        sub_10001590C(v63);
        v30 = v65;
        BytePtr = CFDataGetBytePtr(cf);
        memcpy(v30, &BytePtr[v25], v22);
        v32 = *(v4[1] + 26);
        if (v22 % v32)
        {
          bzero(&v65[v22], v32 - v22 % v32);
          v32 = *(v4[1] + 26);
        }

        v33 = v65;
        v34 = *(sub_100195B38() + 1);
        *&v53 = v33;
        *(&v53 + 1) = v34;
        if (v34)
        {
          atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
        }

        v54 = (v24 + v32) / v32 * v32;
        v55 = v32 + 511 + v21 - (v32 + 511) % v32;
        v56 = v54;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        sub_100073EC4(v63, &v53);
        if (*(&v53 + 1))
        {
          sub_10000E984(*(&v53 + 1));
        }

        v35 = v4[1];
        sub_10002E310(v64, &v53);
        a2 = v47;
        sub_10002DF68(v64, v50);
        v36 = sub_1000FE034(v35, v47, &v53, v50, 0);
        if (v52)
        {
          sub_10000E984(v52);
        }

        if (v51)
        {
          sub_10000E984(v51);
        }

        if (v60)
        {
          sub_10000E984(v60);
        }

        if (*(&v53 + 1))
        {
          sub_10000E984(*(&v53 + 1));
        }

        if (v36 < 0 && v36)
        {
          v37 = __cxa_allocate_exception(0x40uLL);
          *v37 = &off_1002260F0;
          v38 = std::generic_category();
          v37[1] = v36;
          v37[2] = v38;
          *(v37 + 24) = 0;
          *(v37 + 48) = 0;
          v37[7] = "Failed to write metadata";
        }

        sub_1000157A4(v63);
        sub_100015888(&v65, 0);
        sub_10001590C(v66);
        ++v17;
        v18 = v48 - 1;
        v8 = v46;
      }

      while (v17 < v48);
      v11 = *v4;
    }

    if (!*(v11 + 72))
    {
      *(v11 + 72) = v8 / *(v4[1] + 28);
      sub_100101968(v11, *(a2 + 16));
    }

    return sub_1000929D8(&cf);
  }

  return result;
}

void sub_1001040D8(_Unwind_Exception *a1)
{
  sub_1000929D8(&STACK[0x218]);
  sub_1000929D8(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void sub_100104184(uint64_t a1@<X0>, void *a2@<X8>)
{
  v18 = 0;
  v19 = 0;
  v17 = &v18;
  if (*sub_1000EFC34(a1 + 32, *(a1 + 208)))
  {
    v4 = (*(*a1 + 144))(a1);
    v5 = *(a1 + 664);
    v6 = *(a1 + 672);
    if (v5 == v6)
    {
      v9 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(v5 + 8 * v8) * *(a1 + 96);
        v16 = v10;
        if (v10)
        {
          sub_10010448C((a1 + 504), v4, v8, v10, &v17, v17);
          sub_100107FD8(&v17, &v16, &v16);
          ++v9;
        }

        else if (*(a1 + 392) == 1)
        {
          v14 = 0;
          v15 = *(a1 + 584);
          sub_1001043AC((a1 + 232), &v14);
        }

        v8 = (v8 + 1);
        v7 += 8;
      }

      while (v5 + v7 != v6);
    }

    if (*(a1 + 392))
    {
      sub_1000F1B00(a1 + 232, v9);
    }

    v11 = v18;
    *a2 = v17;
    a2[1] = v11;
    v12 = a2 + 1;
    v13 = v19;
    a2[2] = v19;
    if (!v13)
    {
      *a2 = v12;
      if (!v4)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v11[2] = v12;
    v17 = &v18;
    v18 = 0;
    v19 = 0;
    if (v4)
    {
LABEL_16:
      (*(*v4 + 40))(v4);
    }
  }

  else
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
  }

LABEL_17:
  sub_1000285E0(&v17, v18);
}

void sub_100104354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (v13)
  {
    (*(*v13 + 40))(v13, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_1000285E0(&a12, a13);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_1001043AC(atomic_ullong *result, uint64_t a2)
{
  v2 = result[10];
  v3 = v2;
  atomic_compare_exchange_strong_explicit(result + 10, &v3, &_mh_execute_header + (v2 & 0xFFFFFFFF00000000 | (v2 + 1)), memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v4, &_mh_execute_header + (v3 & 0xFFFFFFFF00000000 | (v3 + 1)), memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  v6 = *a2;
  v7 = result + 11;
  v8 = result + 13;
  if (*a2 != 2)
  {
    v8 = result + 14;
  }

  if (v6)
  {
    v7 = result + 12;
  }

  if (v6 <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  atomic_fetch_add_explicit(v9, *(a2 + 8), memory_order_relaxed);
  v10 = result[10];
  v11 = v10;
  atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v11 != v10)
  {
    v12 = v11;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v12, (v11 & 0xFFFFFFFF00000000 | (v11 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v12 == v11;
      v11 = v12;
    }

    while (!v5);
  }

  return result;
}

atomic_ullong *sub_10010448C(atomic_ullong *a1, uint64_t a2, std::unique_lock<std::mutex>::mutex_type *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000FC5FC(a1, a2, a3, a4, 0, 1, &v11);
  if (v11 && (*(v11 + 520) & 1) == 0)
  {
    if (*(v11 + 400))
    {
      v9 = v11 + 40;
    }

    else
    {
      v9 = 0;
    }

    sub_10012AA14(v9, a2, a5, a6);
  }

  return sub_1000EFD00(&v11);
}

void sub_10010451C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000EFD00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100104538(uint64_t result, void *a2, unint64_t a3, unsigned int a4)
{
  v7 = result;
  if (a2[2])
  {
    v8 = a2 + 1;
    v9 = a2[1];
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = v9[1];
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

      while (v11);
    }

    v12 = v10[4] + a4;
    result = (*(*(result + 504) + 16))();
    if (*(result + 96) <= v12)
    {
      *(result + 96) = v12;
    }
  }

  v15 = *a2;
  v13 = a2 + 1;
  v14 = v15;
  if (v15 != v13)
  {
    do
    {
      v16 = v14[4];
      atomic_fetch_add((v7 + 512), 1uLL);
      v22 = a3;
      v23 = a4;
      if ((v16 - a3) % a4)
      {
        v17 = (v16 - a3) / a4 + 1;
      }

      else
      {
        v17 = (v16 - a3) / a4;
      }

      *&v20 = a3;
      *(&v20 + 1) = v17;
      v21 = a4;
      result = sub_10010468C(v7 + 504, &v22, &v20);
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
        do
        {
          v19 = v14[2];
          v11 = *v19 == v14;
          v14 = v19;
        }

        while (!v11);
      }

      a3 = v16 + a4;
      v14 = v19;
    }

    while (v19 != v13);
  }

  return result;
}

uint64_t sub_10010468C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = (*(*a1 + 16))(a1);
  v9 = *a2;
  v10 = *(a2 + 2);
  v7 = *a3;
  v8 = *(a3 + 2);
  v12 = 0;
  sub_10012AD04(v5, &v9, &v7, v11);
  return sub_100121384(v11);
}

void sub_100104744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_100121384(va);
  _Unwind_Resume(a1);
}

void sub_100104758(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t *a6)
{
  *(a1 + 8) = 0;
  *a1 = off_100211B70;
  LODWORD(v22[0]) = *(a3 + 96);
  if (sub_100104B9C("header read-only flags", v22, sub_100100880))
  {
    v12 = *a2;
    *(a1 + 16) = *a2;
    v13 = a2[1];
    *(a1 + 24) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = *(a1 + 16);
    }

    *(a1 + 32) = 2003069043;
    *(a1 + 36) = *(a3 + 4);
    *(a1 + 44) = *(a3 + 12);
    v14 = *(a3 + 16);
    v15 = *(a3 + 32);
    v16 = *(a3 + 48);
    *(a1 + 94) = *(a3 + 62);
    *(a1 + 64) = v15;
    *(a1 + 80) = v16;
    *(a1 + 48) = v14;
    *(a1 + 102) = 0;
    v17 = *(a3 + 72);
    *(a1 + 120) = *(a3 + 88);
    *(a1 + 104) = v17;
    *(a1 + 128) = *(a3 + 96);
    *(a1 + 132) = *(a3 + 100);
    *(a1 + 136) = *(a3 + 104);
    *(a1 + 144) = 850045863;
    *(a1 + 152) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 200) = 0;
    *(a1 + 208) = a4;
    v18 = *a6;
    *(a1 + 224) = *(a6 + 2);
    *(a1 + 216) = v18;
    *(a1 + 232) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 496) = 0;
    v19 = *(a3 + 56);
    v20 = *(a3 + 68);
    v21 = *(a3 + 64);
    v22[0] = off_100216BF8;
    v22[1] = a1;
    v22[3] = v22;
    sub_1000FFC68((a1 + 504), a1, v19 * v20, v21, v20, a5, 2, v12, v22, a1 + 232);
  }

  sub_1000E0E88();
}

void sub_100104AF0(_Unwind_Exception *a1)
{
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  sub_1000F55F8(v4);
  if (*(v1 + 496) == 1)
  {
    sub_100105520(v1 + 400);
  }

  sub_100104C34(v3);
  std::mutex::~mutex(v2);
  v7 = *(v1 + 24);
  if (v7)
  {
    sub_10000E984(v7);
  }

  _Unwind_Resume(a1);
}

void sub_100104BC8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x100104BC0);
}

void sub_100104BD8(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = a1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, sub_10012AEA8);
  }
}

uint64_t sub_100104C34(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    *a1 = off_100204A60;
    sub_1000914B8((a1 + 24), 0);
    sub_100091644(a1 + 32);
  }

  return a1;
}

void sub_100104C9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t *a6, uint64_t *a7, _OWORD *a8, __int128 *a9)
{
  *(a1 + 8) = 0;
  *a1 = off_100211B70;
  *(a1 + 16) = *a6;
  v16 = a6[1];
  *(a1 + 24) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a7 + 1);
  LODWORD(v19) = v17;
  LODWORD(v20[0]) = 1;
  sub_100100880("header_flags", v17, v20, 1);
  sub_1001017A0(a1 + 32, &v19, a8, a4, a5, a3, a2);
  *(a1 + 144) = 850045863;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  v18 = *a7;
  *(a1 + 224) = *(a7 + 2);
  *(a1 + 216) = v18;
  *(a1 + 232) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 496) = 0;
  v20[0] = off_100216BF8;
  v20[1] = a1;
  v20[3] = v20;
  sub_1000FFC68((a1 + 504), a1, a2 * a5, a3, a2, a2 + 511 - (a2 + 511) % a2, 2, 0, v20, a1 + 232);
}

void sub_100105010(_Unwind_Exception *a1)
{
  sub_1000F55F8(v4);
  if (*(v1 + 496) == 1)
  {
    sub_100105520(v1 + 400);
  }

  sub_100104C34(v3);
  std::mutex::~mutex(v2);
  v6 = *(v1 + 24);
  if (v6)
  {
    sub_10000E984(v6);
  }

  _Unwind_Resume(a1);
}

void sub_100105464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, uint64_t a18)
{
  __cxa_free_exception(v18);
  sub_10000E950(&a17);
  v20 = a18;
  a18 = 0;
  if (v20)
  {
    (*(*v20 + 40))(v20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100105520(uint64_t a1)
{
  sub_10014FEF8((a1 + 40), (a1 + 48));
  sub_1001505F0(a1 + 56);
  sub_100150544((a1 + 48));
  sub_10014FD8C((a1 + 40));
  return a1;
}

uint64_t sub_100105574(uint64_t *a1, uint64_t a2)
{
  v7[20] = _NSConcreteStackBlock;
  v7[21] = 0x40000000;
  v7[22] = sub_10011C214;
  v7[23] = &unk_100216C78;
  v7[24] = a2;
  analytics_send_event_lazy();
  *&v4 = "void DIAnalytics::sendEvent(const std::string_view &, const std::map<std::string, data_t> &)";
  *(&v4 + 1) = 27;
  v5 = 0;
  sub_10011C2F4(v6, &v4);
  sub_100001FE8(v7, "sendEvent of type ", 18);
  sub_100001FE8(v7, *a1, a1[1]);
  sub_100001FE8(v7, " with ", 6);
  std::ostream::operator<<();
  sub_100001FE8(v7, " elements returned ", 19);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_10011C528(v6);
  return std::ios::~ios();
}

void sub_1001056B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10011C41C(va);
  _Unwind_Resume(a1);
}

void sub_100105794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_10012B208(&a9, a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001057D0(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v2[0] = a1;
  v2[1] = a2;
  v4 = v2;
  sub_10012B264(&unk_1001C53E5, &v3, &v4);
}

uint64_t sub_10010583C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = *sub_1000EFC34(a2, v4);
    if (v10)
    {
      v11 = sub_100100590(a1, v10);
      if ((v5 & (v6 >= v11)) != 0)
      {
        v5 = 1;
      }

      else
      {
        v5 = 1;
        v7 = v4;
        v6 = v11;
      }
    }

    v8 = 0;
    v4 = 1;
  }

  while ((v9 & 1) != 0);
  return v7;
}

uint64_t sub_100105910(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = (a1 + 4384);
  v5[0] = a1;
  v5[1] = &v6;
  v5[2] = a2;
  if (atomic_load_explicit(v3, memory_order_acquire) != -1)
  {
    v8 = v5;
    v7 = &v8;
    std::__call_once(v3, &v7, sub_10012B48C);
  }

  if (v6 < 0)
  {
    return v6;
  }

  else
  {
    return -v6;
  }
}

uint64_t sub_100105988(uint64_t a1, uint64_t a2, int a3)
{
  std::mutex::lock((a1 + 144));
  v6 = *sub_1000EFC34(a1 + 32, *(a1 + 208));
  v7 = v6;
  if (!v6)
  {
    v8 = *(a1 + 100);
    v9 = *(a1 + 208);
    v10 = *(a1 + 632);
    v11 = *(a1 + 592);
    v12 = sub_1000EFC34(a1 + 32, v9);
    v7 = (v8 + 511 - (v8 + 511) % v8 + (8 * ((v10 + v11 - 1) / v11) + v8 + 7) / v8 * v8 * v9);
    *v12 = v7;
  }

  v13 = sub_1000FF44C(a1 + 504, a2, v7, v6 == 0);
  v14 = v13;
  if ((v13 & 0x80000000) != 0)
  {
    *&v20 = "int DiskImageASIF::flush(DiskImage::Context &, di_flush_mode)";
    *(&v20 + 1) = 24;
    v21 = 16;
    sub_100105E24(v22, &v20);
    sub_100001FE8(v23, "Root dir flush failed, error ", 29);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10011CF58(v22);
LABEL_22:
    std::ios::~ios();
    goto LABEL_23;
  }

  if (v13 == 1)
  {
    v15 = *(a1 + 208);
    if (v15 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 + 1;
    }

    *(a1 + 208) = v16;
  }

  if (!v6)
  {
    v14 = (*(**(a2 + 16) + 16))(*(a2 + 16), 0);
    if (!v14)
    {
      sub_100101968(a1 + 32, *(a2 + 16));
    }

    *&v20 = "int DiskImageASIF::flush(DiskImage::Context &, di_flush_mode)";
    *(&v20 + 1) = 24;
    v21 = 16;
    sub_100105F90(v22, &v20);
    sub_100001FE8(v23, "Backend barrier failed after dir offset changed, error ", 55);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10011D6F0(v22);
    goto LABEL_22;
  }

  v14 = (*(**(a2 + 16) + 16))(*(a2 + 16), 2 * (a3 == 2));
  if ((v14 & 0x80000000) != 0)
  {
    *&v20 = "int DiskImageASIF::flush(DiskImage::Context &, di_flush_mode)";
    *(&v20 + 1) = 24;
    v21 = 16;
    sub_100106268(v22, &v20);
    sub_100001FE8(v23, "Final asif ", 11);
    if (a3 == 2)
    {
      v17 = "flush";
    }

    else
    {
      v17 = "barrier";
    }

    if (a3 == 2)
    {
      v18 = 5;
    }

    else
    {
      v18 = 7;
    }

    sub_100001FE8(v23, v17, v18);
    sub_100001FE8(v23, " failed, error ", 15);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10011E620(v22);
    goto LABEL_22;
  }

LABEL_23:
  std::mutex::unlock((a1 + 144));
  return v14;
}

void sub_100105D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (a2 == 1)
  {
    v59 = __cxa_begin_catch(a1);
    *&a9 = "int DiskImageASIF::flush(DiskImage::Context &, di_flush_mode)";
    *(&a9 + 1) = 24;
    a11 = 16;
    sub_1001063D4(&a13, &a9);
    sub_100001FE8(&a58, "Error during ASIF flush: ", 25);
    sub_100195A20(&a58, v59);
    sub_1001064FC(&a13);
    __cxa_end_catch();
    JUMPOUT(0x100105CD8);
  }

  std::mutex::unlock((v57 + 144));
  _Unwind_Resume(a1);
}

void *sub_100105E24(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10012B508(a1, a2);
  *a1 = off_100216ED0;
  a1[45] = &off_100216FD0;
  a1[46] = &off_100216FF8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100216ED0;
  a1[45] = off_100216F58;
  a1[46] = off_100216F80;
  return a1;
}

void sub_100105F28(_Unwind_Exception *a1)
{
  sub_10011CF58(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100105F4C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011CF58(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100105F90(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10012B5D0(a1, a2);
  *a1 = off_1002170F0;
  a1[45] = &off_1002171F0;
  a1[46] = &off_100217218;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002170F0;
  a1[45] = off_100217178;
  a1[46] = off_1002171A0;
  return a1;
}

void sub_100106094(_Unwind_Exception *a1)
{
  sub_10011D6F0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001060B8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011D6F0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1001060FC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10012B698(a1, a2);
  *a1 = off_100217310;
  a1[45] = &off_100217410;
  a1[46] = &off_100217438;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100217310;
  a1[45] = off_100217398;
  a1[46] = off_1002173C0;
  return a1;
}

void sub_100106200(_Unwind_Exception *a1)
{
  sub_10011DE88(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100106224(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011DE88(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100106268(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10012B760(a1, a2);
  *a1 = off_100217530;
  a1[45] = &off_100217630;
  a1[46] = &off_100217658;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100217530;
  a1[45] = off_1002175B8;
  a1[46] = off_1002175E0;
  return a1;
}

void sub_10010636C(_Unwind_Exception *a1)
{
  sub_10011E620(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100106390(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011E620(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1001063D4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10012B828(a1, a2);
  *a1 = off_100217750;
  a1[45] = &off_100217850;
  a1[46] = &off_100217878;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100217750;
  a1[45] = off_1002177D8;
  a1[46] = off_100217800;
  return a1;
}

void sub_1001064D8(_Unwind_Exception *a1)
{
  sub_10011EDB8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001064FC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011EDB8(a1);
  std::ios::~ios();
  return a1;
}

void sub_100106764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12)
{
  __cxa_free_exception(v12);
  sub_10000E950(&a11);
  v14 = a12;
  a12 = 0;
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  _Unwind_Resume(a1);
}

void sub_100106B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12)
{
  sub_10000E950(&a11);
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    (*(*v13 + 40))(v13);
  }

  _Unwind_Resume(a1);
}

void sub_100106DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, uint64_t a17)
{
  __cxa_free_exception(v17);
  sub_10000E950(&a16);
  v19 = a17;
  a17 = 0;
  if (v19)
  {
    (*(*v19 + 40))(v19);
  }

  _Unwind_Resume(a1);
}

const void *sub_100106EC8(uint64_t a1)
{
  if (*(a1 + 112) == 0)
  {
    sub_100106B94(a1, @"source uuid");
  }

  return *(a1 + 112);
}

uint64_t sub_100106F4C(uint64_t a1)
{
  *a1 = off_100211B70;
  sub_1000F55F8(a1 + 504);
  if (*(a1 + 496) == 1)
  {
    sub_100105520(a1 + 400);
  }

  if (*(a1 + 392) == 1)
  {
    *(a1 + 232) = off_100204A60;
    sub_1000914B8((a1 + 256), 0);
    sub_100091644(a1 + 264);
  }

  std::mutex::~mutex((a1 + 144));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_10000E984(v2);
  }

  return a1;
}

void sub_100106FFC(uint64_t a1)
{
  *a1 = off_100211B70;
  sub_1000F55F8(a1 + 504);
  if (*(a1 + 496) == 1)
  {
    sub_100105520(a1 + 400);
  }

  if (*(a1 + 392) == 1)
  {
    *(a1 + 232) = off_100204A60;
    sub_1000914B8((a1 + 256), 0);
    sub_100091644(a1 + 264);
  }

  std::mutex::~mutex((a1 + 144));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_10000E984(v2);
  }

  operator delete();
}

uint64_t sub_10010719C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1000CA73C(a1, a2);
  if (!v4)
  {
    v5 = (*(*a1 + 24))(a1);
    v6 = (a2 + v5 - 1) / v5;
    if (v6 <= a1[11])
    {
      v7 = (*(*a1 + 144))(a1);
      sub_1001006D8(v10, a1, v7);
      v8 = a1[11];
      if (v8 - v6 >= sub_100102904(a1 + 546, v10))
      {
        a1[10] = v6;
        sub_100101968((a1 + 4), a1[2]);
      }

      v4 = 4294967269;
      v10[0] = off_1002117E8;
      if (v11)
      {
        sub_10000E984(v11);
      }

      (*(*v7 + 40))(v7);
    }

    else
    {
      return 4294967269;
    }
  }

  return v4;
}

void sub_100107330(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    (*(*v12 + 40))(v12, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100107454(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = ((*(a4 + 208) - *(a3 + 208)) & ~((*(a4 + 208) - *(a3 + 208)) >> 63)) + *(a3 + 24);
  v9 = a1[10];
  if (v8 > (*(*a1 + 24))(a1) * v9)
  {
    return -34;
  }

  else
  {
    return sub_1000FE034((a1 + 63), a2, a3, a4, 1);
  }
}

uint64_t sub_10010752C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = ((*(a4 + 208) - *(a3 + 208)) & ~((*(a4 + 208) - *(a3 + 208)) >> 63)) + *(a3 + 24);
  v9 = a1[10];
  if (v8 > (*(*a1 + 24))(a1) * v9)
  {
    return -34;
  }

  v10 = sub_100105910(a1, a2 + 16);
  if (v10)
  {
    return v10;
  }

  else
  {
    return sub_1000FE034((a1 + 63), a2, a3, a4, 0);
  }
}

uint64_t sub_10010761C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = (a3 + 8);
    v9 = a4;
    while (1)
    {
      v10 = *v8 + *(v8 - 1);
      v11 = (*(*a1 + 24))(a1) * v10;
      v12 = a1[10];
      if (v11 > (*(*a1 + 24))(a1) * v12)
      {
        return 4294967262;
      }

      v8 += 2;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = sub_100105910(a1, a2 + 16);
    if (!result)
    {
      return sub_1000FF158((a1 + 63), a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_100107738(uint64_t result)
{
  *(result + 1704) |= 2u;
  *(result + 3328) |= 2u;
  return result;
}

void *sub_1001077F8(void *a1)
{
  *a1 = off_1002117E8;
  v2 = a1[3];
  if (v2)
  {
    sub_10000E984(v2);
  }

  return a1;
}

void sub_100107844(void *a1)
{
  *a1 = off_1002117E8;
  v1 = a1[3];
  if (v1)
  {
    sub_10000E984(v1);
  }

  operator delete();
}

uint64_t *sub_1001078B0(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_100107928(a1, a2);
  }

  return a1;
}

void sub_10010790C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100107928(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100017300(a1, a2);
  }

  sub_100015B70();
}

uint64_t sub_100107964(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  if (*(a1 + 88))
  {
    v4 = *(a1 + 72);
    v5 = v4[4];
    sub_10004EE4C((a1 + 72), v4);
    operator delete(v4);
    std::mutex::unlock((a1 + 8));
  }

  else
  {
    v5 = *(a1 + 96);
    *(a1 + 96) = *a1 + v5;
    std::mutex::unlock((a1 + 8));
    if (*(a2 + 24) && sub_100107A8C(a2, *a1 + v5))
    {
      *&v7 = "space_allocators::FixedSize::allocate(const size_changed_fn_t &)";
      *(&v7 + 1) = 37;
      v8 = 16;
      sub_100045218(v9, &v7);
      sub_100001FE8(v10, "allocated: size change callback failed with ", 44);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_100047FE0(v9);
      std::ios::~ios();
    }
  }

  return v5;
}

void sub_100107A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100045340(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100107A8C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10001583C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

__n128 sub_100107B54(uint64_t a1, uint64_t a2)
{
  *a2 = off_100211D18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100107B90(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_100211D88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100107BDC(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(v5 + 16);
  if (v4)
  {
    v4 = malloc_type_valloc(v4, 0x8B7C732DuLL);
    if (!v4)
    {
      exception = __cxa_allocate_exception(8uLL);
      v12 = std::bad_alloc::bad_alloc(exception);
    }
  }

  v13 = off_1002128C8;
  v16 = &v13;
  v21 = v4;
  sub_100015FBC(v22, &v13);
  sub_10001590C(&v13);
  bzero(v21, *(a1 + 8));
  v7 = v21;
  v8 = *(a1 + 8);
  v9 = *(sub_100195B38() + 1);
  v13 = v7;
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v8;
  v16 = (a2 - v8);
  v17 = v8;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  LODWORD(v6) = (*(*v6 + 120))(v6, &v13);
  if (v14)
  {
    sub_10000E984(v14);
  }

  if (*(a1 + 8) == v6)
  {
    v6 = 0;
  }

  else
  {
    if (v6 >= 0)
    {
      v6 = 4294967291;
    }

    else
    {
      v6 = v6;
    }

    sub_1000F4990(*a1);
  }

  sub_100015888(&v21, 0);
  sub_10001590C(v22);
  return v6;
}

void sub_100107D8C(_Unwind_Exception *a1)
{
  sub_100015888((v2 - 96), 0);
  sub_10001590C(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100107E34(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100211DA8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100107E60(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(a1 + 8) + 16);
  if ((*(*v4 + 40))(v4) > v3 && (*(*v4 + 56))(v4, v3))
  {
    sub_1000F4990(*(a1 + 8));
  }

  return 0;
}

uint64_t sub_100107F00(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_100211E08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100107F4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a2;
  std::mutex::lock((a1 + 8));
  sub_100107FD8(a1 + 72, &v6, &v6);
  v5 = *a1 + v6;
  if (*(a1 + 96) <= v5)
  {
    *(a1 + 96) = v5;
  }

  sub_100100A70(a1, a3);
  std::mutex::unlock((a1 + 8));
}

void *sub_100107FD8(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1001080A4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010833C(v1);

  return std::ios::~ios();
}

uint64_t sub_1001080F0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010833C(v1);

  return std::ios::~ios();
}

void sub_100108150(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010833C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001081B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001081F4(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100108260(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010833C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001082C4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010833C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010833C(uint64_t a1)
{
  *a1 = &off_100211FC8;
  sub_1001084A8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1001084A8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100108658((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001085F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100108620(uint64_t a1)
{
  sub_10010833C(a1);

  operator delete();
}

int *sub_100108658(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 497;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 497;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10010883C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100108AD4(v1);

  return std::ios::~ios();
}

uint64_t sub_100108888(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100108AD4(v1);

  return std::ios::~ios();
}

void sub_1001088E8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100108AD4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100108950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10010898C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1001089F8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100108AD4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100108A5C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100108AD4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100108AD4(uint64_t a1)
{
  *a1 = &off_1002121E8;
  sub_100108C40(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100108C40(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100108DF0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100108D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100108DB8(uint64_t a1)
{
  sub_100108AD4(a1);

  operator delete();
}

int *sub_100108DF0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 528;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 528;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100108FD4(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  atomic_load((*(a2 + 56) + 16 * a3 + 8));
  v3 = atomic_load((*(a2 + 56) + 16 * a3 + 8));
  if ((v3 & 0x3F80000000000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_100001940(exception, "ASIF: data entry - invalid reserved bits", 0x16u);
  }

  return result;
}

void *sub_10010904C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  v3 = atomic_load((*(a2 + 56) + 16 * a3 + 8));
  if ((v3 & 0x3F80000000000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_100001940(exception, "ASIF: data entry - invalid reserved bits", 0x16u);
  }

  return result;
}

uint64_t sub_1001090AC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100109344(v1);

  return std::ios::~ios();
}

uint64_t sub_1001090F8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100109344(v1);

  return std::ios::~ios();
}

void sub_100109158(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100109344(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001091C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001091FC(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100109268(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100109344(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001092CC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100109344(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100109344(uint64_t a1)
{
  *a1 = &off_100212408;
  sub_1001094B0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1001094B0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100109660((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001095FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100109628(uint64_t a1)
{
  sub_100109344(a1);

  operator delete();
}

int *sub_100109660(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 637;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 637;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100109844(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100109ADC(v1);

  return std::ios::~ios();
}

uint64_t sub_100109890(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100109ADC(v1);

  return std::ios::~ios();
}

void sub_1001098F0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100109ADC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100109958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100109994(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100109A00(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100109ADC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100109A64(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100109ADC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100109ADC(uint64_t a1)
{
  *a1 = &off_100212628;
  sub_100109C48(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100109C48(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100109DF8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100109D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100109DC0(uint64_t a1)
{
  sub_100109ADC(a1);

  operator delete();
}

int *sub_100109DF8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 644;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 644;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100109FDC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010A274(v1);

  return std::ios::~ios();
}

uint64_t sub_10010A028(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010A274(v1);

  return std::ios::~ios();
}

void sub_10010A088(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010A274(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010A0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10010A12C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10010A198(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010A274(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10010A1FC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010A274(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010A274(uint64_t a1)
{
  *a1 = &off_100212848;
  sub_10010A3E0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10010A3E0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10010A590((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10010A52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010A558(uint64_t a1)
{
  sub_10010A274(a1);

  operator delete();
}

int *sub_10010A590(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 656;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 656;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10010A804(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_100212928))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10010A850(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_100015B70();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_10010A984(a1, v7);
  }

  v15 = 0;
  v16 = 32 * v2;
  v17 = (32 * v2);
  v8 = sub_1001924B4(32 * v2, a2);
  *v8 = off_100225888;
  v8[3] = *(a2 + 24);
  *&v17 = v17 + 32;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_10010A9CC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_10010AABC(&v15);
  return v14;
}

void sub_10010A970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10010AABC(va);
  _Unwind_Resume(a1);
}

void sub_10010A984(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_10000ED20();
}

uint64_t sub_10010A9CC(uint64_t a1, uint64_t (***a2)(void), uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = (a4 + v7);
      result = sub_1001924B4(a4 + v7, v8);
      *v9 = off_100225888;
      v9[3] = v8[3];
      v8 += 4;
      v7 += 32;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v11 = v6;
      v12 = v6;
      do
      {
        v13 = *v12;
        v12 += 4;
        result = (*v13)(v6);
        v11 += 4;
        v6 = v12;
      }

      while (v12 != a3);
    }
  }

  return result;
}

void sub_10010AAA0(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    sub_10019880C(v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10010AABC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10010AB28(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 4;
      v7 = v4 - 4;
      v8 = v4 - 4;
      do
      {
        v9 = *v8;
        v8 -= 4;
        (*v9)(v7);
        v6 -= 4;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10010ABE8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010AE80(v1);

  return std::ios::~ios();
}

uint64_t sub_10010AC34(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010AE80(v1);

  return std::ios::~ios();
}

void sub_10010AC94(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010AE80(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010ACFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10010AD38(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10010ADA4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010AE80(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10010AE08(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010AE80(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010AE80(uint64_t a1)
{
  *a1 = &off_100212AE8;
  sub_10010AFEC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10010AFEC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10010B19C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10010B138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010B164(uint64_t a1)
{
  sub_10010AE80(a1);

  operator delete();
}

int *sub_10010B19C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 973;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 973;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10010B380(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010B618(v1);

  return std::ios::~ios();
}

uint64_t sub_10010B3CC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010B618(v1);

  return std::ios::~ios();
}

void sub_10010B42C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010B618(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010B494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10010B4D0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10010B53C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010B618(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10010B5A0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010B618(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010B618(uint64_t a1)
{
  *a1 = &off_100212D08;
  sub_10010B784(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10010B784(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10010B934((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10010B8D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010B8FC(uint64_t a1)
{
  sub_10010B618(a1);

  operator delete();
}

int *sub_10010B934(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 998;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 998;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10010BB18(uint64_t a1)
{
  result = (*(**(a1 + 16) + 16))(*(a1 + 16), 0);
  if (result)
  {
    v3 = result;
    sub_1000F4990(a1);
    exception = __cxa_allocate_exception(0x40uLL);
    if (v3 < 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = -v3;
    }

    v6 = sub_100001940(exception, "Can't flush asif table, backend barrier failed", v5);
  }

  return result;
}

void *sub_10010BBAC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10010BD18(a1, a2);
  *a1 = off_100212D90;
  a1[45] = &off_100212E90;
  a1[46] = &off_100212EB8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100212D90;
  a1[45] = off_100212E18;
  a1[46] = off_100212E40;
  return a1;
}

void sub_10010BCB0(_Unwind_Exception *a1)
{
  sub_10010BDE0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10010BCD4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010BDE0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10010BD18(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100212F28;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10010BDC8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10010BDE0(uint64_t a1)
{
  *a1 = &off_100212F28;
  sub_10010C220(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10010BF4C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010BDE0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010BFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10010BFF0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10010C05C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010BDE0(v1);

  return std::ios::~ios();
}

void sub_10010C0A8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010BDE0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010C10C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010BDE0(v1);

  return std::ios::~ios();
}

void sub_10010C16C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010BDE0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10010C1E8(uint64_t a1)
{
  sub_10010BDE0(a1);

  operator delete();
}

uint64_t sub_10010C220(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10010C394((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10010C36C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10010C394(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 265;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 265;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10010C578(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10001583C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10010C5CC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010C864(v1);

  return std::ios::~ios();
}

uint64_t sub_10010C618(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010C864(v1);

  return std::ios::~ios();
}

void sub_10010C678(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010C864(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010C6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10010C71C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10010C788(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010C864(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10010C7EC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010C864(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010C864(uint64_t a1)
{
  *a1 = &off_100213148;
  sub_10010C9D0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10010C9D0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10010CB80((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10010CB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010CB48(uint64_t a1)
{
  sub_10010C864(a1);

  operator delete();
}

int *sub_10010CB80(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 1260;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 1260;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10010CD64(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010CFFC(v1);

  return std::ios::~ios();
}

uint64_t sub_10010CDB0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010CFFC(v1);

  return std::ios::~ios();
}

void sub_10010CE10(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010CFFC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010CE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10010CEB4(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10010CF20(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010CFFC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10010CF84(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010CFFC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010CFFC(uint64_t a1)
{
  *a1 = &off_100213368;
  sub_10010D168(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10010D168(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10010D318((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10010D2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010D2E0(uint64_t a1)
{
  sub_10010CFFC(a1);

  operator delete();
}

int *sub_10010D318(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 1282;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 1282;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10010D4FC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010D794(v1);

  return std::ios::~ios();
}

uint64_t sub_10010D548(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010D794(v1);

  return std::ios::~ios();
}

void sub_10010D5A8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010D794(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010D610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10010D64C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10010D6B8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010D794(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10010D71C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010D794(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010D794(uint64_t a1)
{
  *a1 = &off_100213588;
  sub_10010D900(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10010D900(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10010DAB0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10010DA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010DA78(uint64_t a1)
{
  sub_10010D794(a1);

  operator delete();
}

int *sub_10010DAB0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 1291;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 1291;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10010DC94(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010DF2C(v1);

  return std::ios::~ios();
}

uint64_t sub_10010DCE0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010DF2C(v1);

  return std::ios::~ios();
}

void sub_10010DD40(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010DF2C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010DDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10010DDE4(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10010DE50(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010DF2C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10010DEB4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010DF2C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010DF2C(uint64_t a1)
{
  *a1 = &off_1002137A8;
  sub_10010E098(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10010E098(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10010E248((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10010E1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010E210(uint64_t a1)
{
  sub_10010DF2C(a1);

  operator delete();
}

int *sub_10010E248(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 1313;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 1313;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10010E42C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010E6C4(v1);

  return std::ios::~ios();
}

uint64_t sub_10010E478(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010E6C4(v1);

  return std::ios::~ios();
}

void sub_10010E4D8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010E6C4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010E540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10010E57C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10010E5E8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010E6C4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10010E64C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010E6C4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010E6C4(uint64_t a1)
{
  *a1 = &off_1002139C8;
  sub_10010E830(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10010E830(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10010E9E0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10010E97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010E9A8(uint64_t a1)
{
  sub_10010E6C4(a1);

  operator delete();
}

int *sub_10010E9E0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 1337;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 1337;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10010EBC4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010EE5C(v1);

  return std::ios::~ios();
}

uint64_t sub_10010EC10(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010EE5C(v1);

  return std::ios::~ios();
}

void sub_10010EC70(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010EE5C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010ECD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10010ED14(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10010ED80(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010EE5C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10010EDE4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010EE5C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010EE5C(uint64_t a1)
{
  *a1 = &off_100213BE8;
  sub_10010EFC8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10010EFC8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10010F178((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10010F114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010F140(uint64_t a1)
{
  sub_10010EE5C(a1);

  operator delete();
}

int *sub_10010F178(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 1375;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 1375;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

atomic_ullong *sub_10010F35C(atomic_ullong *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[2];
    v4 = &v3[56 * v2];
    do
    {
      v5 = *a1;
      if (*a1)
      {
        if (*(v5 + 224))
        {
          v6 = (v5 + 40);
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      v7 = v3 + 28;
      sub_1000FBAA0(v6, a1[1], v3, (v3 + 28));
      v3 = v7 + 28;
    }

    while (v7 + 28 != v4);
  }

  sub_10010F3F0((a1 + 2));
  sub_1000F0B1C(a1);
  return a1;
}

uint64_t sub_10010F3F0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1 + 232;
    do
    {
      v4 = *(v3 + 176);
      if (v4)
      {
        sub_10000E984(v4);
      }

      if (*v3)
      {
        sub_10000E984(*v3);
      }

      v5 = *(v3 - 48);
      if (v5)
      {
        sub_10000E984(v5);
      }

      v6 = *(v3 - 224);
      if (v6)
      {
        sub_10000E984(v6);
      }

      v3 += 448;
      --v2;
    }

    while (v2);
  }

  if (*(a1 + 16) && a1 + 24 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10010F484(uint64_t a1, void *a2)
{
  v3 = a2[51];
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = a2[29];
  if (v4)
  {
    sub_10000E984(v4);
  }

  v5 = a2[23];
  if (v5)
  {
    sub_10000E984(v5);
  }

  v6 = a2[1];
  if (v6)
  {

    sub_10000E984(v6);
  }
}

uint64_t sub_10010F4EC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010F784(v1);

  return std::ios::~ios();
}

uint64_t sub_10010F538(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010F784(v1);

  return std::ios::~ios();
}

void sub_10010F598(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010F784(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010F600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10010F63C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10010F6A8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10010F784(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10010F70C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10010F784(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010F784(uint64_t a1)
{
  *a1 = &off_100213E08;
  sub_10010F8F0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10010F8F0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10010FAA0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10010FA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010FA68(uint64_t a1)
{
  sub_10010F784(a1);

  operator delete();
}

int *sub_10010FAA0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 1626;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 1626;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10010FC84(uint64_t a1)
{
  (*(**(*(a1 + 7672) + 16) + 152))(*(*(a1 + 7672) + 16));
  v2 = sub_1000FB6BC(a1 + 7680);
  v3 = *(a1 + 8520);
  if (v3 == v2)
  {
    sub_10010FF08(a1 + 7216, a1 + 7440);
    *(a1 + 7688) = 0;
    v4 = *(a1 + 8120);
    if (v4)
    {
      v5 = *(a1 + 8112);
      v6 = v5;
      v7 = v5;
      do
      {
        --v4;
        v8 = *v7;
        v7 += 3;
        (*v8)(v6);
        v5 += 3;
        v6 = v7;
      }

      while (v4);
    }

    *(a1 + 8120) = 0;
    if (*(a1 + 8104) == 1)
    {
      *(a1 + 8104) = 0;
    }

    *(a1 + 8520) = 0;
  }

  else
  {
    *(a1 + 8520) = 0;
    if (v2 < 0)
    {
      v9 = v2;
    }

    else
    {
      v9 = -5;
    }

    return --v9;
  }

  return v3;
}

void *sub_10010FD9C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10010FFA0(a1, a2);
  *a1 = off_100213E90;
  a1[45] = &off_100213F90;
  a1[46] = &off_100213FB8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100213E90;
  a1[45] = off_100213F18;
  a1[46] = off_100213F40;
  return a1;
}

void sub_10010FEA0(_Unwind_Exception *a1)
{
  sub_100110068(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10010FEC4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100110068(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10010FF08(uint64_t a1, uint64_t a2)
{
  sub_10002F0BC(a1, a2);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v4 = *(a2 + 136);
  v5 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v5;
  *(a1 + 136) = v4;
  v7 = *(a2 + 176);
  v6 = *(a2 + 184);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 184);
  *(a1 + 176) = v7;
  *(a1 + 184) = v6;
  if (v8)
  {
    sub_10000E984(v8);
  }

  *(a1 + 192) = *(a2 + 192);
  v9 = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 208) = v9;
  return a1;
}

uint64_t sub_10010FFA0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100214028;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100110050(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100110068(uint64_t a1)
{
  *a1 = &off_100214028;
  sub_1001104A8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1001101D4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100110068(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10011023C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100110278(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_1001102E4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100110068(v1);

  return std::ios::~ios();
}

void sub_100110330(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100110068(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100110394(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100110068(v1);

  return std::ios::~ios();
}

void sub_1001103F4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100110068(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100110470(uint64_t a1)
{
  sub_100110068(a1);

  operator delete();
}

uint64_t sub_1001104A8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10011061C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001105F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10011061C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 1594;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 1594;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100110800(uint64_t a1)
{
  v2 = sub_10010FC84(a1);
  if (*(a1 + 7208) == 1)
  {
    sub_10010F35C(a1);
    *(a1 + 7208) = 0;
  }

  return v2;
}

unint64_t *sub_100110858(unint64_t *a1, unint64_t *a2)
{
  *a1 = 0;
  v3 = atomic_load(a2);
  if (v3)
  {
    v4 = atomic_load(v3);
    if (!v4)
    {
LABEL_12:
      v3 = 0;
      goto LABEL_13;
    }

    v5 = v4;
    while (1)
    {
      atomic_compare_exchange_strong(v3, &v5, v4 + 1);
      if (v5 == v4)
      {
        break;
      }

      v4 = v5;
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    v6 = v3[41];
    if (v6)
    {
      v3[42] = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
    }

    if (!sub_1001108FC(v3))
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        v7 = v3[4];
        v3[4] = -1;
        sub_1000F0B48(v3, v7, 1u);
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  atomic_store(v3, a1);
  return a1;
}

BOOL sub_1001108FC(uint64_t a1)
{
  v2 = (a1 + 24);
  v3 = atomic_load((a1 + 24));
  if (v3 == 2)
  {
    v4 = atomic_load(a1);
    return v4 > 1;
  }

  else
  {
    atomic_fetch_add((a1 + 8), 1uLL);
    v6 = atomic_load(v2);
    if (v6 != 2 && (*(a1 + 344) & 1) == 0)
    {
      v10 = 1;
      v9 = &v10;
      v14 = 5;
      v12[0] = (a1 + 24);
      v12[1] = &v10;
      v13 = 5;
      v11[0] = a1 + 24;
      v11[1] = &v14;
      v11[2] = &v9;
      sub_1001109D8(v11, v12, 0);
    }

    atomic_fetch_add((a1 + 8), 0xFFFFFFFFFFFFFFFFLL);
    v7 = atomic_load(a1);
    if (v7 < 2)
    {
      return 0;
    }

    else
    {
      v8 = atomic_load(v2);
      return v8 == 2;
    }
  }
}

BOOL sub_1001109D8(uint64_t a1, void **a2, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep a3)
{
  v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v7 = 0;
  while (1)
  {
    v8 = *a1;
    v9 = **(a1 + 8);
    if ((v9 - 1) >= 2)
    {
      explicit = v9 == 5 ? atomic_load(v8) : *v8;
    }

    else
    {
      explicit = atomic_load_explicit(v8, memory_order_acquire);
    }

    v11 = ***(a1 + 16);
    if (explicit != v11)
    {
      break;
    }

    if (v7 <= 0x3F)
    {
      ++v7;
    }

    else
    {
      v12.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ - v6.__d_.__rep_;
      if (a3 && v12.__d_.__rep_ > a3 || sub_100110AA4(a2, v12.__d_.__rep_))
      {
        return explicit != v11;
      }
    }
  }

  return explicit != v11;
}

uint64_t sub_100110AA4(void **a1, uint64_t a2)
{
  if (a2 < 4001)
  {
    return 0;
  }

  v6[3] = v2;
  v6[4] = v3;
  v4 = *a1;
  if (sub_100110B08(a1, *a1, v6))
  {
    return 1;
  }

  std::__libcpp_atomic_wait(v4, v6[0]);
  return 0;
}

BOOL sub_100110B08(uint64_t a1, void *a2, std::__cxx_contention_t *a3)
{
  *a3 = std::__libcpp_atomic_monitor(a2);
  v4 = *a1;
  v5 = *(a1 + 16);
  if ((v5 - 1) >= 2)
  {
    if (v5 == 5)
    {
      explicit = atomic_load(v4);
    }

    else
    {
      explicit = *v4;
    }
  }

  else
  {
    explicit = atomic_load_explicit(v4, memory_order_acquire);
  }

  return explicit != **(a1 + 8);
}

uint64_t sub_100110B78(uint64_t result)
{
  if (*(result + 184) == 1)
  {
    v1 = result;
    std::mutex::~mutex((result + 120));
    *(v1 + 32) = off_100204A60;
    sub_1000914B8((v1 + 56), 0);
    result = sub_100091644(v1 + 64);
    *(v1 + 184) = 0;
  }

  return result;
}

void sub_100110BE8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a3 - *a2;
  v5 = 0x6DB6DB6DB6DB6DB7 * (v4 >> 6);
  if (v5 <= a1[2])
  {
    v12 = *a2;
    sub_100110D84(a1, &v12, v5, *a1, a1[1]);
    a1[1] = v5;
  }

  else
  {
    if (v5 >= 0x4924924924924ALL)
    {
      sub_100012CFC("get_next_capacity, allocator's max size reached");
    }

    v8 = operator new(v4);
    v9 = *a1;
    if (*a1)
    {
      sub_100110D0C(a1);
      if (a1 + 3 != v9)
      {
        operator delete(v9);
      }
    }

    a1[1] = 0;
    a1[2] = v5;
    *a1 = v8;
    v10 = *a2;
    v11 = *a3;
    v12 = v10;
    a1[1] += 0x6DB6DB6DB6DB6DB7 * ((sub_100110EA0(a1, &v12, &v11, v8) - v8) >> 6);
  }
}

void sub_100110D0C(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1 + 232;
    do
    {
      v4 = *(v3 + 176);
      if (v4)
      {
        sub_10000E984(v4);
      }

      if (*v3)
      {
        sub_10000E984(*v3);
      }

      v5 = *(v3 - 48);
      if (v5)
      {
        sub_10000E984(v5);
      }

      v6 = *(v3 - 224);
      if (v6)
      {
        sub_10000E984(v6);
      }

      v3 += 448;
      --v2;
    }

    while (v2);
  }

  a1[1] = 0;
}

void sub_100110D84(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a5;
  v8 = a3 - a5;
  if (a3 <= a5)
  {
    if (a3)
    {
      v12 = *a2;
      v13 = a3;
      do
      {
        --v13;
        sub_10010FF08(a4, v12);
        sub_10010FF08(a4 + 224, v12 + 224);
        a4 += 448;
        v12 += 448;
      }

      while (v13);
    }

    if (v5 != a3)
    {
      v14 = (a4 + 232);
      do
      {
        v15 = v14[22];
        if (v15)
        {
          sub_10000E984(v15);
        }

        if (*v14)
        {
          sub_10000E984(*v14);
        }

        v16 = *(v14 - 6);
        if (v16)
        {
          sub_10000E984(v16);
        }

        v17 = *(v14 - 28);
        if (v17)
        {
          sub_10000E984(v17);
        }

        v14 += 56;
      }

      while (!__CFADD__(v8++, 1));
    }
  }

  else
  {
    v10 = *a2;
    if (a5)
    {
      do
      {
        --v5;
        sub_10010FF08(a4, v10);
        sub_10010FF08(a4 + 224, v10 + 224);
        v10 += 448;
        a4 += 448;
      }

      while (v5);
    }

    *a2 = v10;
    v19 = v10;
    sub_100110F8C(a1, &v19, v8, a4);
  }
}

uint64_t sub_100110EA0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v6 = *a2;
  if (v6 != *a3)
  {
    v8 = 0;
    do
    {
      sub_100110F40(a4 + v8, v6);
      v6 = *a2 + 448;
      *a2 = v6;
      v8 += 448;
    }

    while (v6 != *a3);
    a4 += v8;
  }

  return a4;
}

void sub_100110F10(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_100198878();
  }

  __cxa_rethrow();
}

uint64_t sub_100110F40(uint64_t a1, uint64_t a2)
{
  sub_1000302E0(a1, a2);
  sub_1000302E0(v4 + 224, a2 + 224);
  return a1;
}

uint64_t sub_100110F8C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    v7 = 0;
    v8 = *a2;
    do
    {
      sub_100110F40(a4 + v7, v8);
      v8 = *a2 + 448;
      *a2 = v8;
      v7 += 448;
      --v5;
    }

    while (v5);
    a4 += v7;
  }

  return a4;
}

void sub_100110FF0(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_100198878();
  }

  __cxa_rethrow();
}

void sub_100111020(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = sub_1001111C8(a1, a3);
  if (v11 >= 0x4924924924924ALL)
  {
    sub_100012CFC("get_next_capacity, allocator's max size reached");
  }

  v12 = v11;
  v13 = operator new(448 * v11);
  sub_100111248(a1, v13, v12, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

uint64_t sub_1001110D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030464(a1, a2);
  *(v4 + 112) = *(a2 + 112);
  *(v4 + 120) = *(a2 + 120);
  *(v4 + 128) = *(a2 + 128);
  v5 = *(a2 + 136);
  v6 = *(a2 + 152);
  *(v4 + 168) = *(a2 + 168);
  *(v4 + 152) = v6;
  *(v4 + 136) = v5;
  *(v4 + 176) = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(v4 + 192) = *(a2 + 192);
  v7 = *(a2 + 208);
  *(v4 + 216) = *(a2 + 216);
  *(v4 + 208) = v7;
  sub_100030464(v4 + 224, a2 + 224);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  v8 = *(a2 + 360);
  v9 = *(a2 + 376);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 360) = v8;
  *(a1 + 376) = v9;
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  *(a1 + 416) = *(a2 + 416);
  v10 = *(a2 + 432);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 432) = v10;
  return a1;
}

unint64_t sub_1001111C8(uint64_t a1, uint64_t a2)
{
  v2 = 0x49249249249249;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x49249249249249 - v4 < a2 - v4 + v3)
  {
    sub_100012CFC("get_next_capacity, allocator's max size reached");
  }

  v5 = v4 >> 61;
  v6 = 8 * v4;
  if (v5 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6 / 5;
  if (v5)
  {
    v8 = v7;
  }

  v9 = v3 + a2;
  if (v8 < 0x49249249249249)
  {
    v2 = v8;
  }

  if (v9 <= v2)
  {
    return v2;
  }

  else
  {
    return v9;
  }
}

void sub_100111248(void **a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  sub_100111340(a1, *a1, a4, *a1 + 448 * a1[1], a2, a5, a6);
  if (v10)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = (v10 + 232);
      do
      {
        v13 = v12[22];
        if (v13)
        {
          sub_10000E984(v13);
        }

        if (*v12)
        {
          sub_10000E984(*v12);
        }

        v14 = *(v12 - 6);
        if (v14)
        {
          sub_10000E984(v14);
        }

        v15 = *(v12 - 28);
        if (v15)
        {
          sub_10000E984(v15);
        }

        v12 += 56;
        --v11;
      }

      while (v11);
    }

    if (a1 + 3 != *a1)
    {
      operator delete(*a1);
    }
  }

  v16 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v16;
  a1[2] = a3;
}

void sub_10011131C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if ((v2 + 24) != v1)
    {
      operator delete(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100111340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1001113E8(a1, a2, a3, a5);
  sub_1001110D4(v12, a7);
  return sub_1001113E8(a1, a3, a4, v12 + 448 * a6);
}

uint64_t sub_1001113E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_1001110D4(a4 + v7, v6);
      v6 += 448;
      v7 += 448;
    }

    while (v6 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_100111448(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_100198878();
  }

  __cxa_rethrow();
}

void sub_100111478(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = sub_1000625A4(a1, a3);
  if (v11 >= 0x555555555555556)
  {
    sub_100012CFC("get_next_capacity, allocator's max size reached");
  }

  v12 = v11;
  v13 = operator new(24 * v11);
  sub_100111528(a1, v13, v12, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

void sub_100111528(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  sub_100111628(a1, *a1, a4, *a1 + 24 * a1[1], a2, a5, a6);
  if (v10)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = v10;
      v13 = v10;
      do
      {
        --v11;
        v14 = *v13;
        v13 += 3;
        (*v14)(v10);
        v12 += 24;
        v10 = v13;
      }

      while (v11);
    }

    if (a1 + 3 != *a1)
    {
      operator delete(*a1);
    }
  }

  v15 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v15;
  a1[2] = a3;
}

void sub_100111604(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if ((v2 + 24) != v1)
    {
      operator delete(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100111628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = a5;
  if (a2 != a3)
  {
    v13 = a2;
    v14 = 0;
    do
    {
      sub_1001924B4(a5 + v14, v13);
      v13 += 24;
      v14 += 24;
    }

    while (v13 != v11);
    v12 = a5 + v14;
  }

  result = sub_1001924B4(v12, a7);
  if (v11 != a4)
  {
    v16 = 0;
    v17 = v12 + 24 * a6;
    do
    {
      result = sub_1001924B4(v17, v11);
      v11 += 24;
      v17 += 24;
      v16 -= 24;
    }

    while (v11 != a4);
  }

  return result;
}

void sub_1001116E8(_Unwind_Exception *exception_object)
{
  if (v2 != v1)
  {
    v4 = v1;
    v5 = v1;
    do
    {
      v6 = *v5;
      v5 += 3;
      (*v6)(v1);
      v4 += 3;
      v1 = v5;
    }

    while (v5 != v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100111794(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1;
    v4 = *a1;
    v5 = *a1;
    do
    {
      --v2;
      v6 = *v5;
      v5 += 3;
      (*v6)(v4);
      v3 += 3;
      v4 = v5;
    }

    while (v2);
  }

  if (*(a1 + 16) && a1 + 24 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100111824(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100111ABC(v1);

  return std::ios::~ios();
}

uint64_t sub_100111870(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100111ABC(v1);

  return std::ios::~ios();
}

void sub_1001118D0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100111ABC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100111938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100111974(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1001119E0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100111ABC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100111A44(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100111ABC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100111ABC(uint64_t a1)
{
  *a1 = &off_100214248;
  sub_100111C28(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100111C28(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100111DD8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100111D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100111DA0(uint64_t a1)
{
  sub_100111ABC(a1);

  operator delete();
}

int *sub_100111DD8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 1698;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 1698;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

BOOL sub_100111FBC(atomic_ullong *a1)
{
  while (1)
  {
    v2 = *a1;
    if ((*a1 & 0x8000000000000000) == 0)
    {
      break;
    }

    v3 = *a1;
LABEL_7:
    v4 = v3 != -1;
    if (v3 != -1 || (sub_100112030(a1, 0) & 1) == 0)
    {
      return v4;
    }
  }

  v3 = *a1;
  while (1)
  {
    atomic_compare_exchange_strong(a1, &v3, v2 + 1);
    if (v3 == v2)
    {
      return 1;
    }

    v2 = v3;
    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_100112030(unint64_t *a1, int a2)
{
  v2 = atomic_load(a1);
  v3 = v2 == 0;
  v4 = v2 != -1;
  if (a2)
  {
    v4 = v3;
  }

  if (!v4)
  {
    v16.__m_ = sub_100192398(a1);
    v16.__owns_ = 1;
    std::mutex::lock(v16.__m_);
    v7 = sub_100192424(a1);
    v8 = atomic_load(a1);
    v9 = v8 == 0;
    v10 = v8 != -1;
    if (a2)
    {
      v10 = v9;
    }

    if (!v10)
    {
      v11 = v7;
      do
      {
        std::condition_variable::wait(v11, &v16);
        v12 = atomic_load(a1);
        v13 = v12 == 0;
        v14 = v12 != -1;
        if (a2)
        {
          v14 = v13;
        }
      }

      while (!v14);
    }

    if (v16.__owns_)
    {
      std::mutex::unlock(v16.__m_);
    }
  }

  return 1;
}

uint64_t sub_100112124(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001123BC(v1);

  return std::ios::~ios();
}

uint64_t sub_100112170(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001123BC(v1);

  return std::ios::~ios();
}

void sub_1001121D0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001123BC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100112238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100112274(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1001122E0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001123BC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100112344(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001123BC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001123BC(uint64_t a1)
{
  *a1 = &off_100214468;
  sub_100112528(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100112528(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_1001126D8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100112674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001126A0(uint64_t a1)
{
  sub_1001123BC(a1);

  operator delete();
}

int *sub_1001126D8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 2098;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 2098;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1001128BC(void *a1)
{
  *a1 = off_100204A60;
  v2 = a1 + 4;
  sub_1000914B8(a1 + 3, 0);
  sub_100091644(v2);
  return a1;
}

uint64_t sub_100112914(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100112BAC(v1);

  return std::ios::~ios();
}

uint64_t sub_100112960(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100112BAC(v1);

  return std::ios::~ios();
}

void sub_1001129C0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100112BAC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100112A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100112A64(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100112AD0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100112BAC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100112B34(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100112BAC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100112BAC(uint64_t a1)
{
  *a1 = &off_100214688;
  sub_100112D18(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100112D18(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100112EC8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100112E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100112E90(uint64_t a1)
{
  sub_100112BAC(a1);

  operator delete();
}

int *sub_100112EC8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 2353;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 2353;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001130AC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100113344(v1);

  return std::ios::~ios();
}

uint64_t sub_1001130F8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100113344(v1);

  return std::ios::~ios();
}

void sub_100113158(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100113344(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001131C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001131FC(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100113268(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100113344(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001132CC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100113344(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100113344(uint64_t a1)
{
  *a1 = &off_1002148A8;
  sub_1001134B0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1001134B0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100113660((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001135FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100113628(uint64_t a1)
{
  sub_100113344(a1);

  operator delete();
}

int *sub_100113660(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 2363;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 2363;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100113844(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100113ADC(v1);

  return std::ios::~ios();
}

uint64_t sub_100113890(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100113ADC(v1);

  return std::ios::~ios();
}

void sub_1001138F0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100113ADC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100113958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100113994(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100113A00(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100113ADC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100113A64(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100113ADC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100113ADC(uint64_t a1)
{
  *a1 = &off_100214AC8;
  sub_100113C48(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100113C48(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100113DF8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100113D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100113DC0(uint64_t a1)
{
  sub_100113ADC(a1);

  operator delete();
}

int *sub_100113DF8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 2429;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 2429;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100113FDC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100114274(v1);

  return std::ios::~ios();
}

uint64_t sub_100114028(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100114274(v1);

  return std::ios::~ios();
}

void sub_100114088(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100114274(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001140F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10011412C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100114198(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100114274(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001141FC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100114274(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100114274(uint64_t a1)
{
  *a1 = &off_100214CE8;
  sub_1001143E0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1001143E0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100114590((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10011452C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100114558(uint64_t a1)
{
  sub_100114274(a1);

  operator delete();
}

int *sub_100114590(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 2440;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 2440;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100114774(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100114A0C(v1);

  return std::ios::~ios();
}

uint64_t sub_1001147C0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100114A0C(v1);

  return std::ios::~ios();
}

void sub_100114820(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100114A0C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100114888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001148C4(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100114930(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100114A0C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100114994(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100114A0C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100114A0C(uint64_t a1)
{
  *a1 = &off_100214F08;
  sub_100114B78(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100114B78(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100114D28((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100114CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100114CF0(uint64_t a1)
{
  sub_100114A0C(a1);

  operator delete();
}

int *sub_100114D28(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 2488;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 2488;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100114F0C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001151A4(v1);

  return std::ios::~ios();
}

uint64_t sub_100114F58(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001151A4(v1);

  return std::ios::~ios();
}

void sub_100114FB8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001151A4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100115020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10011505C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1001150C8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001151A4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10011512C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001151A4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001151A4(uint64_t a1)
{
  *a1 = &off_100215128;
  sub_100115310(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100115310(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_1001154C0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10011545C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100115488(uint64_t a1)
{
  sub_1001151A4(a1);

  operator delete();
}

int *sub_1001154C0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 2501;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 2501;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001156A4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10011593C(v1);

  return std::ios::~ios();
}

uint64_t sub_1001156F0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10011593C(v1);

  return std::ios::~ios();
}

void sub_100115750(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011593C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001157B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001157F4(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100115860(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10011593C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001158C4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10011593C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10011593C(uint64_t a1)
{
  *a1 = &off_100215348;
  sub_100115AA8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100115AA8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100115C58((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100115BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100115C20(uint64_t a1)
{
  sub_10011593C(a1);

  operator delete();
}

int *sub_100115C58(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 2547;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 2547;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100115E3C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001160D4(v1);

  return std::ios::~ios();
}

uint64_t sub_100115E88(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001160D4(v1);

  return std::ios::~ios();
}

void sub_100115EE8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001160D4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100115F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100115F8C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100115FF8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001160D4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10011605C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001160D4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001160D4(uint64_t a1)
{
  *a1 = &off_100215568;
  sub_100116240(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100116240(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_1001163F0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10011638C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001163B8(uint64_t a1)
{
  sub_1001160D4(a1);

  operator delete();
}

int *sub_1001163F0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 2631;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 2631;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001165D4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10011686C(v1);

  return std::ios::~ios();
}

uint64_t sub_100116620(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10011686C(v1);

  return std::ios::~ios();
}

void sub_100116680(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011686C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001166E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100116724(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100116790(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10011686C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001167F4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10011686C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10011686C(uint64_t a1)
{
  *a1 = &off_100215788;
  sub_1001169D8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1001169D8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100116B88((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100116B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100116B50(uint64_t a1)
{
  sub_10011686C(a1);

  operator delete();
}

int *sub_100116B88(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 2641;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 2641;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100116D6C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100117004(v1);

  return std::ios::~ios();
}

uint64_t sub_100116DB8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100117004(v1);

  return std::ios::~ios();
}

void sub_100116E18(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100117004(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100116E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100116EBC(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100116F28(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100117004(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100116F8C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100117004(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100117004(uint64_t a1)
{
  *a1 = &off_1002159A8;
  sub_100117170(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100117170(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100117320((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001172BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001172E8(uint64_t a1)
{
  sub_100117004(a1);

  operator delete();
}

int *sub_100117320(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 2734;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 2734;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100117504(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10011779C(v1);

  return std::ios::~ios();
}

uint64_t sub_100117550(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10011779C(v1);

  return std::ios::~ios();
}

void sub_1001175B0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011779C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100117618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100117654(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1001176C0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10011779C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100117724(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10011779C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10011779C(uint64_t a1)
{
  *a1 = &off_100215BC8;
  sub_100117908(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100117908(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100117AB8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}