uint64_t *sub_1000F0A18(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_1000F0A48((result + 1), v3);
  }

  return result;
}

uint64_t sub_1000F0A48(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10001583C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1000F0A9C(uint64_t a1)
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

atomic_ullong *sub_1000F0B1C(atomic_ullong *a1)
{
  result = atomic_exchange(a1, 0);
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      v2 = result[4];
      result[4] = -1;
      return sub_1000F0B48(result, v2, 1u);
    }
  }

  return result;
}

uint64_t sub_1000F0B48(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  if ((*(a1 + 344) & 1) == 0 && (v6 = atomic_load((a1 + 24)), v6 == 2) && *(a1 + 224) == 1 && (v7 = *(a1 + 320)) != 0)
  {
    v8 = (a3 >> 1) & 2;
    if ((*(*v7 + 48))(v7, a1 + 40))
    {
      if ((v3 & 2) == 0)
      {
        if (v3)
        {
          sub_1000F0D5C(a1 + 232, a1, a2, v8 | 1);
        }

        return 0;
      }

      *&v10 = "ref::details::ctrl_blk<di_asif::details::map_element, unsigned long long>::reset_val(tag_t, details::reset_val_option_set) [T = di_asif::details::map_element, tag_t = unsigned long long]";
      *(&v10 + 1) = 84;
      v11 = 16;
      sub_1000EFF68(v12, &v10);
      sub_100001FE8(v13, "Got error when trying to close ", 31);
      std::ostream::operator<<();
      sub_100001FE8(v13, " with ret ", 10);
      std::ostream::operator<<();
      sub_100001FE8(v13, ", Force closing.", 16);
      std::ostream::~ostream();
      sub_1000F01FC(v12);
      std::ios::~ios();
    }
  }

  else
  {
    v8 = (a3 >> 1) & 2;
  }

  atomic_store(0, (a1 + 24));
  if (*(a1 + 224) == 1)
  {
    std::mutex::~mutex((a1 + 160));
    *(a1 + 72) = off_100204A60;
    sub_1000914B8((a1 + 96), 0);
    sub_100091644(a1 + 104);
    *(a1 + 224) = 0;
  }

  sub_1000F0D5C(a1 + 232, a1, a2, v8);
  std::__cxx_atomic_notify_all((a1 + 24));
  return 1;
}

void sub_1000F0D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000F0090(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F0D5C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  v6 = a3;
  v7 = a2;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_10001583C();
  }

  return (*(*v4 + 48))(v4, &v7, &v6, &v8);
}

BOOL sub_1000F0DBC()
{
  v0 = open("/dev/tty", 2);
  v1 = v0;
  if (v0 != -1)
  {
    close(v0);
  }

  return v1 != -1;
}

const std::error_category *sub_1000F0E58@<X0>(void *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[4];
  v5 = a1[1];
  v6 = a1[2];
  v7 = (v5 + 8 * (v4 >> 8));
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7 + 16 * v4;
  }

  v9 = a1[5] + v4;
  v10 = v9 >> 8;
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
LABEL_5:
  result = v8;
  while (1)
  {
    v16 = v6 == v5 ? 0 : (*(v5 + 8 * v10) + 16 * v9);
    if (result == v16 || LODWORD(result->__vftable) == v11 && HIDWORD(result->__vftable) == v12 && LODWORD(result[1].__vftable) == v13 && HIDWORD(result[1].__vftable) == v14)
    {
      break;
    }

    result += 2;
    v8 += 16;
    if (*v7 + 4096 == v8)
    {
      v17 = v7[1];
      ++v7;
      v8 = v17;
      goto LABEL_5;
    }
  }

  if (v6 == v5)
  {
    v18 = 0;
  }

  else
  {
    v18 = (*(v5 + 8 * v10) + 16 * v9);
  }

  if (result == v18)
  {
    result = std::generic_category();
    v19 = 0;
    *(a3 + 8) = result;
    v8 = 22;
  }

  else
  {
    v19 = 1;
  }

  *a3 = v8;
  *(a3 + 16) = v19;
  return result;
}

const std::error_category *sub_1000F0F6C@<X0>(const std::error_category *result@<X0>, uint64_t a2@<X8>)
{
  if (HIDWORD(result->__vftable))
  {
    goto LABEL_2;
  }

  v4 = result[1].__vftable;
  if (!v4)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(result[1].__vftable);
  v6 = result->__vftable;
  if (v4 != v5 && v6 != 3)
  {
    goto LABEL_2;
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if ((v4 | 2) != 3)
      {
        goto LABEL_2;
      }

      v8 = 2;
    }

    else
    {
      if (v6 != 3 || v4 != 3 || v5)
      {
        goto LABEL_2;
      }

      v8 = 3;
    }

    *a2 = v8;
LABEL_24:
    v3 = 1;
    goto LABEL_3;
  }

  if (!v6)
  {
    *a2 = 0;
    goto LABEL_24;
  }

  if (v6 == 1 && (v4 | 2) == 3)
  {
    v3 = 1;
    *a2 = 1;
    goto LABEL_3;
  }

LABEL_2:
  result = std::generic_category();
  v3 = 0;
  *a2 = 45;
  *(a2 + 8) = result;
LABEL_3:
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_1000F1038@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, __n128 *a4@<X8>)
{
  sub_1000F0E58(a1, *a2, v18);
  if ((v19 & 1) == 0)
  {
    v12 = sub_100059674(v18);
LABEL_12:
    result = *v12;
    *a4 = *v12;
    a4[3].n128_u8[8] = 0;
    return result;
  }

  v7 = v18[0];
  sub_1000F0F6C(v18[0], v16);
  if ((v17 & 1) == 0)
  {
    v12 = sub_100059674(v16);
    goto LABEL_12;
  }

  v8 = HIDWORD(v7[1].__vftable);
  if ((LODWORD(v7[1].__vftable) - 1) >= 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = 8 * (LODWORD(v7[1].__vftable) - 1) + 16;
  }

  *&v14 = a2 + 8;
  *(&v14 + 1) = v9;
  if ((v8 - 1) >= 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = 8 * (v8 - 1) + 16;
  }

  v13.n128_u64[0] = a2 + 8 + v9;
  v13.n128_u64[1] = v10;
  sub_1000938A4(v15, v16[0], &v14, &v13, a3, *(a2 + 72) * a3);
  result.n128_u64[0] = sub_10009386C(a4, v15).n128_u64[0];
  a4[3].n128_u8[8] = 1;
  return result;
}

uint64_t sub_1000F1134(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1 % (*(a1 + 56) + 1);
  result = v1 - v2;
  if (v1 == v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_100001940(exception, "Invalid chunk size", 0xFFFFFFEA);
  }

  return result;
}

unint64_t sub_1000F1194(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1[7];
  v3 = v2 * *v1;
  v4 = a1[5];
  v5 = v3 + v4;
  v6 = v1[1] * v2;
  if (v4 < v6)
  {
    return v5 / v2;
  }

  a1[5] = 0;
  v7 = *a1;
  v8 = a1[1];
  if (v8 <= (v1 - *a1) >> 4)
  {
    return v5 / v2;
  }

  a1[2] = (v1 + 2);
  if (v8 != (v1 - v7 + 16) >> 4)
  {
    v9 = v1[2] * v2;
    if (v9 < a1[9])
    {
      v5 = v1[2] * v2;
      return v5 / v2;
    }
  }

  return 0;
}

uint64_t *sub_1000F1250(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  *a1 = a2;
  a1[1] = a3;
  a1[5] = 0;
  a1[6] = a4;
  a1[7] = a5;
  a1[8] = a6;
  v9 = (a2 + 16 * a8);
  a1[9] = a7;
  if (a8 == a3)
  {
LABEL_6:
    a1[2] = v9;
  }

  else
  {
    v10 = 16 * a3 - 16 * a8;
    while (1)
    {
      v11 = *v9;
      if ((v9[1] + *v9) * a5 >= a6)
      {
        break;
      }

      v9 += 2;
      v10 -= 16;
      if (!v10)
      {
        v9 = (a2 + 16 * a3);
        goto LABEL_6;
      }
    }

    a1[2] = v9;
    v13 = v11 * a5;
    if (v11 * a5 < a7)
    {
      v14 = a6 >= v13;
      v15 = a6 - v13;
      if (v15 != 0 && v14)
      {
        a1[5] = v15;
      }

      a1[3] = sub_1000F1194(a1);
      a1[4] = v16;
    }
  }

  return a1;
}

uint64_t sub_1000F12F0(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  sub_10010904C(&v4, a1, *(v2 + 56) + (*(v2 + 56) + 1) * ((a2 / *(v2 + 26) - *(a1 + 352) / *(v2 + 26)) / (*(v2 + 56) * (*(v2 + 28) / *(v2 + 26)))));
  return v4;
}

uint64_t sub_1000F1360(uint64_t a1)
{
  v2 = *a1;
  v3 = *(v2 + 8);
  v4 = *(a1 + 8) + *(v3 + 26) * (*(v3 + 28) / *(v3 + 26)) * *(v3 + 56);
  *(a1 + 8) = v4;
  if (v4 >= *(v2 + 352) + *(v3 + 88))
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
  }

  else
  {
    v5 = sub_1000F12F0(v2, v4);
    v6 = v5 & 0xFFFFFFFFFFFFFF00;
    v7 = v5;
    v8 = 1;
  }

  if (*(a1 + 32) == v8)
  {
    if (*(a1 + 32))
    {
      *(a1 + 24) = v4;
    }
  }

  else if (*(a1 + 32))
  {
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 16) = v6 | v7;
    *(a1 + 24) = v4;
    *(a1 + 32) = 1;
  }

  return a1;
}

uint64_t sub_1000F1414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  return sub_1000F1360(a1);
}

uint64_t sub_1000F1428(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 26);
  sub_100108FD4(&v5, a1, ((a2 / v3 - *(a1 + 352) / v3) / (*(v2 + 28) / v3) + (a2 / v3 - *(a1 + 352) / v3) / (*(v2 + 28) / v3) * *(v2 + 56)) / *(v2 + 56));
  return v5;
}

uint64_t sub_1000F1488(uint64_t a1)
{
  v2 = *a1;
  v3 = *(v2 + 8);
  v4 = *(a1 + 8) + *(v3 + 28);
  *(a1 + 8) = v4;
  if (v4 >= *(v2 + 352) + *(v3 + 88))
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
  }

  else
  {
    v5 = sub_1000F1428(v2, v4);
    v6 = v5 & 0xFFFFFFFFFFFFFF00;
    v7 = v5;
    v8 = 1;
  }

  if (*(a1 + 32) == v8)
  {
    if (*(a1 + 32))
    {
      *(a1 + 24) = v4;
    }
  }

  else if (*(a1 + 32))
  {
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 16) = v6 | v7;
    *(a1 + 24) = v4;
    *(a1 + 32) = 1;
  }

  return a1;
}

uint64_t sub_1000F152C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  return sub_1000F1488(a1);
}

void sub_1000F1540(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  sub_10012147C((a1 + 16), *(a2 + 64), a6);
  sub_1001078B0((a1 + 72), *(a2 + 72));
  *(a1 + 104) = 850045863;
  *(a1 + 96) = 0;
  *(a1 + 101) = 1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 168) = 850045863;
  *(a1 + 160) = 0;
  *(a1 + 280) = 850045863;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 344) = a4;
  *(a1 + 352) = a5;
  if (a4)
  {
    if (a4 % *(a2 + 28))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_1002260F0;
      v11 = std::generic_category();
      exception[1] = 4294967274;
      exception[2] = v11;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "ASIF: table is not aligned to chunk size";
    }
  }

  operator new[]();
}

void sub_1000F1AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_10000E984(a20);
  }

  operator delete[]();
}

uint64_t sub_1000F1B00(uint64_t result, unint64_t a2)
{
  v2 = *(result + 80);
  v3 = v2;
  atomic_compare_exchange_strong_explicit((result + 80), &v3, &_mh_execute_header + (v2 & 0xFFFFFFFF00000000 | (v2 + 1)), memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit((result + 80), &v4, &_mh_execute_header + (v3 & 0xFFFFFFFF00000000 | (v3 + 1)), memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  atomic_fetch_add_explicit((result + 152), a2, memory_order_relaxed);
  v6 = *(result + 80);
  v7 = v6;
  atomic_compare_exchange_strong_explicit((result + 80), &v7, (v6 & 0xFFFFFFFF00000000 | (v6 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v7 != v6)
  {
    v8 = v7;
    do
    {
      atomic_compare_exchange_strong_explicit((result + 80), &v8, (v7 & 0xFFFFFFFF00000000 | (v7 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v8 == v7;
      v7 = v8;
    }

    while (!v5);
  }

  return result;
}

void sub_1000F1BB0(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2)
  {
    std::mutex::lock((a1 + 280));
    sub_1000F1C1C((a1 + 232), &v3);
    atomic_store(1u, (a1 + 96));
    std::mutex::unlock((a1 + 280));
  }
}

uint64_t sub_1000F1C1C(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = a1[4];
  v8 = a1[5];
  v9 = v8 + v7;
  if (v6 == v8 + v7)
  {
    sub_10012189C(a1);
    v7 = a1[4];
    v8 = a1[5];
    v5 = a1[1];
    v9 = v7 + v8;
  }

  *(*(v5 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v10 = v8 + 1;
  a1[5] = v10;
  v11 = v7 + v10;
  v12 = (v5 + 8 * (v11 >> 9));
  v13 = v11 & 0x1FF;
  if (v13)
  {
    v14 = *v12 + 8 * v13;
  }

  else
  {
    v14 = *(v12 - 1) + 4096;
  }

  return v14 - 8;
}

uint64_t sub_1000F1CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 352);
  v6 = *(*(a1 + 8) + 88) + v5;
  if (v5 >= v6)
  {
    v8 = 0;
    result = 0;
  }

  else
  {
    result = sub_1000F12F0(a1, *(a1 + 352));
    v6 = *(*(a1 + 8) + 88) + *(a1 + 352);
    v8 = 1;
  }

  *a3 = a1;
  *(a3 + 8) = v5;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  *(a3 + 32) = v8;
  *(a3 + 40) = a1;
  *(a3 + 48) = v6;
  *(a3 + 56) = 0;
  *(a3 + 72) = 0;
  return result;
}

uint64_t sub_1000F1D58(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = atomic_load((*(*a3 + 56) + 16 * a3[1] + 8));
  if (v3 >> 62 != 3)
  {
    return 0;
  }

  sub_1000FB5C8(*(*a3 + 56) + 16 * a3[1], 0, v50);
  if ((v50[16] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_1002260F0;
    v48 = std::generic_category();
    exception[1] = 4294967291;
    exception[2] = v48;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Can't take exclusive lock on entry";
  }

  v7 = atomic_load((*(*a3 + 56) + 16 * a3[1] + 8));
  if (v7 >> 62 != 3)
  {
    v9 = 0;
    v10 = 0;
    v12 = 1;
    v11 = 1;
    goto LABEL_54;
  }

  v8 = *(*a3 + 8);
  sub_1000F226C(a1, a2, (*(*a3 + 352) + (*(v8 + 56) + *(v8 + 56) * a3[1]) / (*(v8 + 56) + 1) * *(v8 + 28)) / *(v8 + 26), 0, &v49);
  if (!v49 || (*(v49 + 344) & 1) != 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    v12 = 1;
    goto LABEL_53;
  }

  if (*(v49 + 224))
  {
    v14 = v49 + 40;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_1000F25F4(a3);
  v16 = sub_1000F2564(v14, v15);
  v10 = v16;
  v17 = *(*a3 + 8);
  v18 = *(v17 + 56);
  v19 = *(v17 + 28);
  v20 = *(*a3 + 352) + (v18 + v18 * a3[1]) / (v18 + 1) * v19;
  v21 = v20 + v19;
  v22 = *(*(*(a1 + 8) + 32) + 216);
  if (v22 != 1 || v16 == 1)
  {
    if (v49)
    {
      if (*(v49 + 224))
      {
        v24 = (v49 + 40);
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = sub_1000F2748(v24, a1, v10, v20, v21);
  }

  else
  {
    if (v49)
    {
      if (*(v49 + 224))
      {
        v23 = (v49 + 40);
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v25 = sub_1000F26A0(v23, a1, 1u, v20, v21);
  }

  v26 = v25 == v21;
  if (v25 == v21)
  {
    v27 = a3[1];
    v28 = *(*a3 + 56);
    v29 = *(v28 + 16 * v27 + 8);
    v30 = *(*(*a3 + 8) + 28);
    v12 = (v10 & 0xFFFFFFFD) != 0;
    v31 = *(a1 + 8);
    v32 = *(v31 + 16);
    if (*(v32 + 160) == 1)
    {
      sub_1000F27F8(v32, v10, *(v31 + 48));
      v27 = a3[1];
      v28 = *(*a3 + 56);
    }

    v9 = (v29 & 0x7FFFFFFFFFFFFFLL) * v30;
    v33 = (v28 + 16 * v27 + 8);
    v34 = *v33;
    v35 = *v33;
    atomic_compare_exchange_strong(v33, &v35, (v10 << 62) | *v33 & 0x3FFFFFFFFFFFFFFFLL);
    if (v35 != v34)
    {
      v36 = v35;
      do
      {
        atomic_compare_exchange_strong(v33, &v36, v35 & 0x3FFFFFFFFFFFFFFFLL | (v10 << 62));
        v37 = v36 == v35;
        v35 = v36;
      }

      while (!v37);
    }

    if (v10 == 1)
    {
      goto LABEL_52;
    }

    v38 = (*(*a3 + 56) + 16 * a3[1] + 8);
    if (!*(*(*a3 + 8) + 28))
    {
      v39 = *v38;
      v40 = *v38;
      atomic_compare_exchange_strong_explicit(v38, &v40, *v38 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
      if (v40 != v39)
      {
        v41 = v40;
        do
        {
          atomic_compare_exchange_strong_explicit(v38, &v41, v40 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
          v37 = v41 == v40;
          v40 = v41;
        }

        while (!v37);
      }

      v10 = 1;
      goto LABEL_52;
    }

LABEL_51:
    atomic_fetch_and_explicit(v38, 0xFF80000000000000, memory_order_relaxed);
    v10 = v26;
LABEL_52:
    v11 = 0;
    atomic_store(1u, (a1 + 96));
    goto LABEL_53;
  }

  v9 = 0;
  v11 = 0;
  v12 = 1;
  if (v10 == 1)
  {
    v10 = 0;
    goto LABEL_53;
  }

  v10 = 0;
  if ((v22 & 1) == 0)
  {
    if (v49)
    {
      if (*(v49 + 224))
      {
        v42 = (v49 + 40);
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v42 = 0;
    }

    if (sub_1000F26A0(v42, a1, 1u, *(*a3 + 352) + (*(*(*a3 + 8) + 56) + *(*(*a3 + 8) + 56) * a3[1]) / (*(*(*a3 + 8) + 56) + 1) * *(*(*a3 + 8) + 28), v21) != v21)
    {
      v11 = 0;
      v9 = 0;
      v10 = 0;
      goto LABEL_53;
    }

    v38 = (*(*a3 + 56) + 16 * a3[1] + 8);
    v43 = *(*(*a3 + 8) + 28);
    v9 = (*v38 & 0x7FFFFFFFFFFFFFLL) * v43;
    if (!v43)
    {
      v44 = *v38;
      v45 = *v38;
      atomic_compare_exchange_strong_explicit(v38, &v45, *v38 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
      if (v45 != v44)
      {
        v46 = v45;
        do
        {
          atomic_compare_exchange_strong_explicit(v38, &v46, v45 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
          v37 = v46 == v45;
          v45 = v46;
        }

        while (!v37);
      }

      v12 = 0;
      v10 = 0;
      goto LABEL_52;
    }

    v12 = 0;
    goto LABEL_51;
  }

LABEL_53:
  sub_1000F0B1C(&v49);
LABEL_54:
  sub_1001926F4(v50);
  result = v10 & (v11 ^ 1);
  if ((v11 & 1) == 0 && !v12)
  {
    sub_1000F1BB0(a1, v9);
    return v10;
  }

  return result;
}

void sub_1000F2214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_1000F0B1C(va);
  sub_1001926F4(va1);
  _Unwind_Resume(a1);
}

void sub_1000F226C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, unint64_t *a5@<X8>)
{
  v10 = (a3 - a1[44] / *(a1[1] + 26)) / (*(a1[1] + 56) * (*(a1[1] + 28) / *(a1[1] + 26)));
  v11 = sub_1000F28D0(a1, v10);
  sub_1000F2940((a1[9] + 8 * v10), v11, a5);
  if (!*a5 || (*(*a5 + 344) & 1) != 0)
  {
    v12 = a1[1];
    v26 = *(v12 + 56) + (*(v12 + 56) + 1) * ((a3 - a1[44] / *(v12 + 26)) / (*(v12 + 56) * (*(v12 + 28) / *(v12 + 26))));
    sub_10010904C(&v23, a1, v26);
    v13 = v23;
    v14 = v24;
    if (a4)
    {
      LOBYTE(v23) = 0;
      v25 = 0;
    }

    else
    {
      v15 = (*(v23 + 56) + 16 * v24);
      v16 = sub_100111FBC(v15);
      v21[0] = off_100225868;
      v21[1] = v15;
      v22 = v16;
      sub_1001924B4(&v23, v21);
      v25 = 1;
      sub_10019254C(v21);
    }

    (*(*a1[1] + 32))(v21);
    sub_1000F29DC(a5, v21);
    sub_1000F0B1C(v21);
    if (*a5)
    {
      if ((*(*a5 + 344) & 1) == 0)
      {
        if (!*a5 || (v17 = atomic_load((*a5 + 24)), v17 != 2))
        {
          v18 = atomic_load(a5);
          v21[0] = v18;
          atomic_store(atomic_exchange(v21, 0), (a1[9] + 8 * v10));
          v21[0] = (*(*(v13 + 56) + 16 * v14 + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v13 + 8) + 28);
          if (v21[0])
          {
            sub_1000F2A1C(a5, a2, a1, &v26, v21);
          }

          else
          {
            v20 = sub_1000F2A80(a1[1], a2, 1);
            v19 = 1;
            sub_1000F2B80(a5, a2, a1, &v26, &v20, &v19);
          }
        }
      }
    }

    if (v25 == 1)
    {
      sub_10019254C(&v23);
    }
  }
}

void sub_1000F24E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    sub_10019254C(&a14);
  }

  sub_1000F0B1C(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F2564(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000BAAA8(a1 + 32, a2);
  if (sub_1000BAAA8(a1 + 32, a2 + 1))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  result = v5 | v4;
  if (result == 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v8 = sub_100001940(exception, "bitmap flag value invalid", 0xFFFFFFEA);
  }

  return result;
}

unint64_t sub_1000F25F4(void *a1)
{
  v1 = *(*a1 + 352);
  v2 = *(*a1 + 8);
  v3 = *(v2 + 56);
  v4 = *(v2 + 28);
  v5 = (v3 + v3 * a1[1]) / (v3 + 1) * v4;
  v6 = *(v2 + 26);
  return ((2 * (((v5 - ((v5 + v1) / v6 - v1 / v6) / (v3 * (v4 / v6)) * v3 * v4) / v6) & 0x7FFFFFFF)) | (((v4 - v6 + v5 - ((v4 - v6 + v5 + v1) / v6 - v1 / v6) / (v3 * (v4 / v6)) * v3 * v4) / v6) << 33)) + 0x200000000;
}

unint64_t sub_1000F26A0(void *a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5)
{
  v8 = sub_1000F6C54(a2, a4, a5 - a4);
  v9 = HIDWORD(v8);
  if (v8 != HIDWORD(v8))
  {
    v11 = a3 & 1 | (((a3 >> 1) & 1) << 8);
    v9 = sub_1000BA77C((a1 + 4), v8, v9, &v11);
  }

  return *(a2 + 352) + *a1 / (*(*(a2 + 8) + 56) + 1) * *(*(a2 + 8) + 56) * *(*(a2 + 8) + 28) + ((v9 * *(*(a2 + 8) + 26)) >> 1);
}

unint64_t sub_1000F2748(void *a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5)
{
  if (a5 != a4)
  {
    v8 = sub_1000F6C54(a2, a4, a5 - a4);
    v9 = HIDWORD(v8);
    if (v8 != HIDWORD(v8))
    {
      v11 = a3 & 1 | (((a3 >> 1) & 1) << 8);
      v9 = sub_1000BA540((a1 + 4), v8, v9, &v11);
    }

    return *(a2 + 352) + *a1 / (*(*(a2 + 8) + 56) + 1) * *(*(a2 + 8) + 56) * *(*(a2 + 8) + 28) + ((v9 * *(*(a2 + 8) + 26)) >> 1);
  }

  return a4;
}

atomic_ullong *sub_1000F27F8(atomic_ullong *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  result = sub_1000F6B40(a1, 3, a2);
  v7 = a1 + 15;
  v8 = a1 + 17;
  if (v4 != 2)
  {
    v8 = a1 + 18;
  }

  if (v4)
  {
    v7 = a1 + 16;
  }

  if (v4 > 1)
  {
    v7 = v8;
  }

  atomic_fetch_add_explicit(v7, -a3, memory_order_relaxed);
  return result;
}

void *sub_1000F2864(void *result, unint64_t a2)
{
  v2 = *(*(*result + 8) + 28);
  v3 = (*(*result + 56) + 16 * result[1] + 8);
  if (v2 <= a2)
  {
    v4 = a2 / v2;
    v5 = *v3;
    v6 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v6, *v3 & 0xFF80000000000000 | v4, memory_order_relaxed, memory_order_relaxed);
    if (v6 != v5)
    {
      v7 = v6;
      do
      {
        atomic_compare_exchange_strong_explicit(v3, &v7, v6 & 0xFF80000000000000 | v4, memory_order_relaxed, memory_order_relaxed);
        v8 = v7 == v6;
        v6 = v7;
      }

      while (!v8);
    }
  }

  else
  {
    atomic_fetch_and_explicit(v3, 0xFF80000000000000, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1000F28D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 72);
  if ((v3 & (v3 - 1)) != 0)
  {
    v4 = 0;
    v5 = 2 * v3;
    do
    {
      v5 >>= 1;
      ++v4;
    }

    while (v5 != 1);
    v3 = 1 << v4;
  }

  v6 = *(v2 + 88);
  if (v3 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v3 >>= 1;
      ++v7;
    }

    while (v3 != 1);
  }

  return ((*(a1 + 352) / v6) << v7) | a2;
}

unint64_t *sub_1000F2940@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = atomic_load(result);
  if (v4 && *(v4 + 32) == a2)
  {
    v6 = atomic_load(result);
    sub_1001200DC(&v8, v6, 1);
    if (v8 && (*(v8 + 344) & 1) == 0)
    {
      v7 = *(v8 + 32);
      *a3 = 0;
      if (v7 == a2)
      {
        atomic_store(atomic_exchange(&v8, 0), a3);
      }
    }

    else
    {
      *a3 = 0;
    }

    return sub_1000F0B1C(&v8);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

atomic_ullong *sub_1000F29DC(atomic_ullong *a1, atomic_ullong *a2)
{
  if (a2 != a1)
  {
    v3 = atomic_exchange(a2, 0);
    sub_1000F0B1C(a1);
    atomic_store(v3, a1);
  }

  return a1;
}

void sub_1000F2A44(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 288))
    {
      sub_10012246C(v2 + 264, v2);
    }
  }

  __cxa_rethrow();
}

uint64_t sub_1000F2A80(uint64_t a1, uint64_t a2, int a3)
{
  atomic_fetch_add((a1 + 8), 1uLL);
  v6 = (*(*a1 + 16))(a1);
  if (a3)
  {
    v7 = *(a1 + 28);
    v10[0] = off_100211D18;
    v10[1] = a2;
    v10[2] = v7;
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v8 = sub_100107964(v6, v10);
  sub_100121384(v10);
  return v8;
}

void sub_1000F2B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100121384(va);
  _Unwind_Resume(a1);
}

void sub_1000F2BA8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 288))
    {
      sub_10012246C(v2 + 264, v2);
    }
  }

  __cxa_rethrow();
}

uint64_t sub_1000F2BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(a3 + 56) + 16 * a4 + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(a3 + 8) + 28))
  {
    return 0;
  }

  v8 = sub_1000F2A80(*(a1 + 8), a2, 0);
  if (v8)
  {
    v9 = *(a3 + 56) + 16 * a4;
    v10 = *(v9 + 8);
    if ((v10 & 0x7FFFFFFFFFFFFFLL) != 0)
    {
LABEL_7:
      sub_1000F2CAC(*(a1 + 8), v8, a2);
    }

    else
    {
      v11 = (v9 + 8);
      v12 = v10;
      v13 = v8 / *(*(a3 + 8) + 28);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v11, &v12, v10 & 0xFF80000000000000 | v13, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v10)
        {
          break;
        }

        v10 = v12;
        if ((v12 & 0x7FFFFFFFFFFFFFLL) != 0)
        {
          goto LABEL_7;
        }
      }
    }

    return 0;
  }

  return 4294967268;
}

uint64_t sub_1000F2CAC(atomic_ullong *a1, unint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 16))(a1);
  v8[0] = off_100211DA8;
  v8[1] = a3;
  v8[3] = v8;
  sub_100107F4C(v6, a2, v8);
  result = sub_100121384(v8);
  atomic_fetch_add(a1 + 1, 0xFFFFFFFFFFFFFFFFLL);
  return result;
}

void sub_1000F2D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100121384(va);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_1000F2D8C(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v11 = *(*a3 + 8);
  sub_1000F226C(a1, a2, (*(*a3 + 352) + (*(v11 + 56) + *(v11 + 56) * a3[1]) / (*(v11 + 56) + 1) * *(v11 + 28)) / *(v11 + 26), 0, &v36);
  if (!v36 || (*(v36 + 344) & 1) != 0)
  {
    *&v39 = "di_asif::details::table::set_entry_bitmap_range(ContextASIF &, data_entry_t &, const bits_range_t &, data_entry_t::flags, std::optional<data_entry_t::flags>)";
    *(&v39 + 1) = 47;
    v40 = 16;
    sub_1000F3280(v41, &v39);
    sub_100001FE8(v42, "Can't load bitmap while setting range", 37);
    sub_1000F33A8(v41);
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_1002260F0;
    v33 = std::generic_category();
    exception[1] = 5;
    exception[2] = v33;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Can't load bitmap while setting range";
  }

  v12 = (a4[1] - *a4) >> 1;
  if ((a6 & 0x100000000) != 0)
  {
    if (a6 == 3)
    {
      v13 = *(a1 + 8);
      v14 = *(v13 + 16);
      if ((*(v14 + 160) & 1) == 0)
      {
        goto LABEL_21;
      }

      if (*(v36 + 224))
      {
        v15 = (v36 + 40);
      }

      else
      {
        v15 = 0;
      }

      v19 = *(v13 + 56);
      sub_1000F34D0(v15, *(a1 + 352) + v19 * *(v13 + 28) * (*(v36 + 40) / (v19 + 1)) + ((*(v13 + 26) * *a4) >> 1), (*(a1 + 352) + v19 * *(v13 + 28) * (*(v36 + 40) / (v19 + 1)) + ((a4[1] * *(v13 + 26)) >> 1)), a1, v41);
      sub_1000F35F8(v14, v41);
      goto LABEL_20;
    }

    v16 = sub_1000F25F4(a3);
    *&v41[0] = v16;
    v17 = *(*(a1 + 8) + 16);
    if (*(v17 + 160) == 1)
    {
      sub_1000F33EC(v17, a6, ((HIDWORD(v16) - v16) >> 1) - v12);
    }

    if (v36)
    {
      if (*(v36 + 224))
      {
        v18 = v36 + 40;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    sub_1000F3450(v18, a1, v41, a6);
  }

  v14 = *(*(a1 + 8) + 16);
  if (*(v14 + 160))
  {
LABEL_20:
    LODWORD(v41[0]) = v7;
    *(&v41[0] + 1) = v12;
    sub_1000F36D8(v14, v41);
  }

LABEL_21:
  if (v36)
  {
    if (*(v36 + 224))
    {
      v20 = v36 + 40;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  sub_1000F3450(v20, a1, a4, v7);
  result = sub_1000F0B1C(&v36);
  if ((a6 & 0x100000000) != 0 && a6 != 3)
  {
    v22 = *(*a3 + 8);
    v23 = *(a1 + 8);
    v24 = *(v23 + 56);
    sub_10010904C(v41, a1, v24 + (v24 + 1) * (((*(*a3 + 352) + (*(v22 + 56) + *(v22 + 56) * a3[1]) / (*(v22 + 56) + 1) * *(v22 + 28)) / *(v22 + 26) - *(a1 + 352) / *(v23 + 26)) / (v24 * (*(v23 + 28) / *(v23 + 26)))));
    v38 = v41[0];
    v25 = (*(*&v41[0] + 56) + 16 * *(&v41[0] + 1));
    v26 = sub_100111FBC(v25);
    *&v39 = off_100225868;
    *(&v39 + 1) = v25;
    LOBYTE(v40) = v26;
    if (!v26)
    {
      *&v36 = "di_asif::details::table::set_entry_bitmap_range(ContextASIF &, data_entry_t &, const bits_range_t &, data_entry_t::flags, std::optional<data_entry_t::flags>)";
      *(&v36 + 1) = 47;
      v37 = 16;
      sub_1000F37B8(v41, &v36);
      sub_100001FE8(v42, "Couldn't lock entry ", 20);
      sub_1000F5D38(v42, &v38);
      sub_1000F38E0(v41);
      v34 = __cxa_allocate_exception(0x40uLL);
      *v34 = &off_1002260F0;
      v35 = std::generic_category();
      v34[1] = 4294967282;
      v34[2] = v35;
      *(v34 + 24) = 0;
      *(v34 + 48) = 0;
      v34[7] = "Couldn't lock entry";
    }

    v27 = (*(*a3 + 56) + 16 * a3[1] + 8);
    v28 = *v27;
    v29 = *v27;
    atomic_compare_exchange_strong(v27, &v29, *v27 | 0xC000000000000000);
    if (v29 != v28)
    {
      v30 = v29;
      do
      {
        atomic_compare_exchange_strong(v27, &v30, v29 | 0xC000000000000000);
        v31 = v30 == v29;
        v29 = v30;
      }

      while (!v31);
    }

    atomic_store(1u, (a1 + 96));
    return sub_10019254C(&v39);
  }

  return result;
}

void sub_1000F3218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10019254C(va);
  _Unwind_Resume(a1);
}

void *sub_1000F3280(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100122084(a1, a2);
  *a1 = off_100211E30;
  a1[45] = &off_100211F30;
  a1[46] = &off_100211F58;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100211E30;
  a1[45] = off_100211EB8;
  a1[46] = off_100211EE0;
  return a1;
}

void sub_1000F3384(_Unwind_Exception *a1)
{
  sub_10010833C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F33A8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010833C(a1);
  std::ios::~ios();
  return a1;
}

atomic_ullong *sub_1000F33EC(atomic_ullong *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  result = sub_1000F6B40(a1, a2, 3);
  v7 = a1 + 15;
  v8 = a1 + 17;
  if (v4 != 2)
  {
    v8 = a1 + 18;
  }

  if (v4)
  {
    v7 = a1 + 16;
  }

  if (v4 > 1)
  {
    v7 = v8;
  }

  atomic_fetch_add_explicit(v7, a3, memory_order_relaxed);
  return result;
}

uint64_t sub_1000F3450(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v6 = *a3;
  v7 = a3[1];
  LOWORD(v9[0]) = a4 & 1 | (((a4 >> 1) & 1) << 8);
  result = sub_1000BA31C(a1 + 32, v6, v7, v9);
  if (result)
  {
    *(a1 + 113) = 1;
    result = sub_10010904C(v9, a2, *a1);
    atomic_fetch_or((*(v9[0] + 56) + 16 * v9[1] + 8), 0x8000000000000000);
  }

  return result;
}

void *sub_1000F34D0@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  *a5 = 0u;
  a5[1] = 0u;
  if (a2 < a3)
  {
    v7 = a2;
    v8 = result;
    v10 = a5 + 24;
    v11 = a5 + 1;
    v12 = a5 + 8;
    v13 = *(a4 + 8);
    v14 = *(v13 + 26);
    do
    {
      v15 = sub_1000F2564(v8, 2 * ((v7 - (*(a4 + 352) + *(v13 + 56) * *(v13 + 28) * ((v7 / v14 - *(a4 + 352) / v14) / (*(v13 + 56) * (*(v13 + 28) / v14))))) / v14));
      result = sub_1000F2748(v8, a4, v15, v7, a3);
      if (v15 > 1)
      {
        v16 = v11;
        if (v15 != 2)
        {
          v16 = v10;
        }
      }

      else
      {
        v16 = a5;
        if (v15)
        {
          v16 = v12;
        }
      }

      v13 = *(a4 + 8);
      v14 = *(v13 + 26);
      *v16 += (result - v7) / v14;
      v7 = result;
    }

    while (result < a3);
  }

  return result;
}

atomic_ullong *sub_1000F35F8(atomic_ullong *result, void *a2)
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

  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  atomic_fetch_add_explicit(result + 15, -*a2, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 16, -v6, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 17, -v7, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 18, -v8, memory_order_relaxed);
  v9 = result[10];
  v10 = v9;
  atomic_compare_exchange_strong_explicit(result + 10, &v10, (v9 & 0xFFFFFFFF00000000 | (v9 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v10 != v9)
  {
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v11 == v10;
      v10 = v11;
    }

    while (!v5);
  }

  return result;
}

atomic_ullong *sub_1000F36D8(atomic_ullong *result, uint64_t a2)
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
  v7 = result + 15;
  v8 = result + 17;
  if (*a2 != 2)
  {
    v8 = result + 18;
  }

  if (v6)
  {
    v7 = result + 16;
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

void *sub_1000F37B8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10012214C(a1, a2);
  *a1 = off_100212050;
  a1[45] = &off_100212150;
  a1[46] = &off_100212178;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100212050;
  a1[45] = off_1002120D8;
  a1[46] = off_100212100;
  return a1;
}

void sub_1000F38BC(_Unwind_Exception *a1)
{
  sub_100108AD4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F38E0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100108AD4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000F3924(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_10010904C(v13, a1, a2);
  v6 = *(*(v13[0] + 8) + 28);
  v7 = (*(v13[0] + 56) + 16 * v13[1] + 8);
  if (v6 <= a3)
  {
    v8 = a3 / v6;
    v9 = *v7;
    v10 = *v7;
    atomic_compare_exchange_strong_explicit(v7, &v10, *v7 & 0xFF80000000000000 | v8, memory_order_relaxed, memory_order_relaxed);
    if (v10 != v9)
    {
      v11 = v10;
      do
      {
        atomic_compare_exchange_strong_explicit(v7, &v11, v10 & 0xFF80000000000000 | v8, memory_order_relaxed, memory_order_relaxed);
        v12 = v11 == v10;
        v10 = v11;
      }

      while (!v12);
    }
  }

  else
  {
    atomic_fetch_and_explicit(v7, 0xFF80000000000000, memory_order_relaxed);
  }

  atomic_store(1u, (a1 + 96));
  return result;
}

__n128 sub_1000F39D4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1000F1250(v15, a1, a2, a3, a4, a5, a6, 0);
  sub_1000F1250((a7 + 80), a1, a2, a3, a4, a6, a6, 0);
  v13 = v15[3];
  *(a7 + 32) = v15[2];
  *(a7 + 48) = v13;
  *(a7 + 64) = v15[4];
  result = v15[1];
  *a7 = v15[0];
  *(a7 + 16) = result;
  return result;
}

void sub_1000F3A80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v19[0] = off_1002117E8;
  v19[1] = v3;
  (*(**(v3 + 16) + 80))(&v20);
  if (*(a1 + 24))
  {
    goto LABEL_46;
  }

  do
  {
    __lk.__m_ = (a1 + 3688);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 3688));
    if ((*(a1 + 24) & 1) == 0)
    {
      do
      {
        if (*(a1 + 3680))
        {
          break;
        }

        std::condition_variable::wait((a1 + 3632), &__lk);
      }

      while (*(a1 + 24) != 1);
    }

    v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 2000000000;
    while ((*(a1 + 24) & 1) == 0 && v4.__d_.__rep_ > std::chrono::steady_clock::now().__d_.__rep_)
    {
      v5.__d_.__rep_ = v4.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v5.__d_.__rep_ >= 1)
      {
        std::chrono::steady_clock::now();
        v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v6.__d_.__rep_)
        {
          if (v6.__d_.__rep_ < 1)
          {
            if (v6.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              goto LABEL_16;
            }

            v7 = 0x8000000000000000;
          }

          else
          {
            if (v6.__d_.__rep_ > 0x20C49BA5E353F7)
            {
              v7 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_17;
            }

LABEL_16:
            v7 = 1000 * v6.__d_.__rep_;
LABEL_17:
            if (v7 > (v5.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              v8.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_20:
              std::condition_variable::__do_timed_wait((a1 + 3632), &__lk, v8);
              std::chrono::steady_clock::now();
              goto LABEL_21;
            }
          }
        }

        else
        {
          v7 = 0;
        }

        v8.__d_.__rep_ = v7 + v5.__d_.__rep_;
        goto LABEL_20;
      }

LABEL_21:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v4.__d_.__rep_)
      {
        break;
      }
    }

    *(a1 + 3680) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (*(a1 + 168) != *(a1 + 160))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        if (*(a1 + 24) == 1)
        {
          break;
        }

        if (!sub_1000F3FE8(a1, v19, v9))
        {
          ++v10;
        }

        sub_1000F4388(a1, v19, v9, 0, 1, &__lk);
        if (__lk.__m_ && (__lk.__m_[8].__m_.__opaque[0] & 1) == 0)
        {
          if (__lk.__m_[6].__m_.__opaque[8])
          {
            v11 = &__lk.__m_->__m_.__opaque[32];
          }

          else
          {
            v11 = 0;
          }

          v10 += sub_1000F4480(v11, v19);
        }

        sub_1000EFD00(&__lk);
        ++v9;
      }

      while (v9 < (*(a1 + 168) - *(a1 + 160)) >> 3);
      if (v10)
      {
        if ((*(*v20 + 16))(v20, 0))
        {
          *&v15 = "di_asif::details::dir::defrag(std::function<int (ContextASIF &)>)";
          *(&v15 + 1) = 48;
          v16 = 16;
          sub_1000F4824(&__lk, &v15);
          sub_100001FE8(v18, "Barrier failed after defrag, error ", 35);
          std::ostream::operator<<();
          std::ostream::~ostream();
          sub_100109ADC(&__lk);
          std::ios::~ios();
          sub_1000F4990(v19);
        }

        if (*(*(a1 + 16) + 160) == 1)
        {
          v12 = *(a1 + 32);
          if (*(v12 + 496) == 1)
          {
            sub_1001056C8(v12 + 400, v10);
          }
        }

        v13 = *(a2 + 24);
        if (!v13)
        {
          sub_10001583C();
        }

        if ((*(*v13 + 48))(v13, v19))
        {
          *&v15 = "di_asif::details::dir::defrag(std::function<int (ContextASIF &)>)";
          *(&v15 + 1) = 48;
          v16 = 16;
          sub_1000F4A68(&__lk, &v15);
          sub_100001FE8(v18, "Flush failed after defrag, ignoring. Error ", 43);
          std::ostream::operator<<();
          std::ostream::~ostream();
          sub_10010A274(&__lk);
          std::ios::~ios();
        }
      }
    }
  }

  while (*(a1 + 24) != 1);
LABEL_46:
  v19[0] = off_1002117E8;
  if (v21)
  {
    sub_10000E984(v21);
  }
}

void sub_1000F3F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1000F47E0(va);
  __cxa_end_catch();
  JUMPOUT(0x1000F3F6CLL);
}

void sub_1000F3F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1000F494C(va);
  JUMPOUT(0x1000F3F6CLL);
}

void sub_1000F3F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1000F4B90(va);
  JUMPOUT(0x1000F3F6CLL);
}

void sub_1000F3F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 - 120) = a12;
  v14 = *(v12 - 96);
  if (v14)
  {
    sub_10000E984(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000F3F8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  *a2 = off_1002117E8;
  a2[1] = v2;
  return (*(**(v2 + 16) + 80))(*(v2 + 16));
}

uint64_t sub_1000F3FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = atomic_load((a1 + 8));
  v4 = *(a1 + 28);
  v5 = *(*(a1 + 160) + 8 * a3) * v4;
  v23 = v5;
  if (!v5 || 3 * v5 <= 4 * v3 * v4)
  {
    return 4294967274;
  }

  v9 = (*(a1 + 136) + 8 * a3);
  sub_1000FCB08(v9, a3, &v22);
  if (v22 && (*(v22 + 520) & 1) == 0)
  {
    if (*(v22 + 464))
    {
      sub_1001269E8(v22 + 440, v22);
    }

    sub_1000FCB08(v9, a3, &v24);
    sub_1000FCA00(&v22, &v24);
    sub_1000EFD00(&v24);
    if (v22)
    {
      if ((*(v22 + 520) & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  sub_1000FC784(a1 + 288, a3, &v24, 1);
  sub_1000FCA00(&v22, &v24);
  sub_1000EFD00(&v24);
  if (v22)
  {
    if ((*(v22 + 520) & 1) == 0)
    {
      v10 = atomic_load((v22 + 24));
      if (v10 != 2)
      {
        v13 = *(a1 + 28);
        if (v13)
        {
          v14 = malloc_type_valloc(v13, 0x8B7C732DuLL);
          if (!v14)
          {
            exception = __cxa_allocate_exception(8uLL);
            v16 = std::bad_alloc::bad_alloc(exception);
          }
        }

        else
        {
          v14 = 0;
        }

        v26[0] = off_1002128C8;
        v26[3] = v26;
        v24 = v14;
        sub_100015FBC(v25, v26);
        sub_10001590C(v26);
        v17 = *(a1 + 28);
        v18 = (*(**(a2 + 16) + 40))(*(a2 + 16));
        if (v18 - v23 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18 - v23;
        }

        v11 = sub_1000F4E44(a1, a2, v24, v19, v23);
        v21 = v20;
        if (v22 && *(v22 + 464))
        {
          sub_1001269E8(v22 + 440, v22);
        }

        if ((v11 & 0x8000000000000000) == 0)
        {
          (*(*a1 + 40))(a1, *(a1 + 88) * a3, v21);
          std::mutex::lock((a1 + 3800));
          sub_1000F1C1C((a1 + 3752), &v23);
          atomic_store(1u, (a1 + 3600));
          std::mutex::unlock((a1 + 3800));
          v11 = 0;
        }

        sub_100015888(&v24, 0);
        sub_10001590C(v25);
        goto LABEL_16;
      }
    }
  }

  if (v22 && (*(v22 + 520) & 1) == 0)
  {
LABEL_14:
    (*(*a1 + 24))(a1);
  }

  v11 = 4294967248;
LABEL_16:
  sub_1000EFD00(&v22);
  return v11;
}

void sub_1000F430C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, uint64_t a10, uint64_t a11)
{
  std::mutex::unlock((v11 + 3800));
  sub_100015888(&a11, 0);
  sub_10001590C(v12 + 8);
  sub_1000EFD00(&a9);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_1000F4388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v7 = a4;
  result = sub_1000FCB08((*(a1 + 136) + 8 * a3), a3, a6);
  if (!*a6 || (*(*a6 + 520) & 1) != 0)
  {
    sub_1000FC5FC(a1, a2, a3, *(*(a1 + 160) + 8 * a3) * *(a1 + 28), v7, a5, &v14);
    sub_1000FCA00(a6, &v14);
    result = sub_1000EFD00(&v14);
    if (*a6)
    {
      if ((*(*a6 + 520) & 1) == 0)
      {
        v13 = atomic_load(a6);
        v14 = v13;
        atomic_store(atomic_exchange(&v14, 0), (*(a1 + 136) + 8 * a3));
      }
    }
  }

  return result;
}

uint64_t sub_1000F4480(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load((*(a1 + 8) + 8));
  v5 = *(a1 + 8);
  v6 = *(v5 + 28);
  if (v6)
  {
    v7 = malloc_type_valloc(*(v5 + 28), 0x8B7C732DuLL);
    if (!v7)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = std::bad_alloc::bad_alloc(exception);
    }
  }

  else
  {
    v7 = 0;
  }

  v17[0] = off_1002128C8;
  v18[1] = v17;
  v19 = v7;
  sub_100015FBC(v20, v17);
  sub_10001590C(v17);
  sub_1000F1CD0(a1, v10, v17);
  v11 = 0;
  v12 = v4 * v6;
  while ((v17[0] != v18[3] || v17[1] != v18[4]) && (*(*(a1 + 8) + 24) & 1) == 0)
  {
    v13 = sub_1000F5104(a1, a2, v18, v12, v19);
    sub_1000F54C0(a1, v18, v15);
    while (1)
    {
      if (!v13)
      {
        ++v11;
      }

      if (v15[0] == v16[3] && v15[1] == v16[4] || (*(*(a1 + 8) + 24) & 1) != 0)
      {
        break;
      }

      v13 = sub_1000F4C2C(a1, a2, v16, v12, v19);
      sub_1000F1488(v15);
    }

    sub_1000F1360(v17);
  }

  sub_100015888(&v19, 0);
  sub_10001590C(v20);
  return v11;
}

void sub_1000F4684(_Unwind_Exception *a1)
{
  sub_100015888((v2 - 128), 0);
  sub_10001590C(v1 + 8);
  _Unwind_Resume(a1);
}

void *sub_1000F46B8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100122214(a1, a2);
  *a1 = off_100212270;
  a1[45] = &off_100212370;
  a1[46] = &off_100212398;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100212270;
  a1[45] = off_1002122F8;
  a1[46] = off_100212320;
  return a1;
}

void sub_1000F47BC(_Unwind_Exception *a1)
{
  sub_100109344(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F47E0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100109344(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000F4824(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001222DC(a1, a2);
  *a1 = off_100212490;
  a1[45] = &off_100212590;
  a1[46] = &off_1002125B8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100212490;
  a1[45] = off_100212518;
  a1[46] = off_100212540;
  return a1;
}

void sub_1000F4928(_Unwind_Exception *a1)
{
  sub_100109ADC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F494C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100109ADC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000F4990(uint64_t a1)
{
  v1 = *(a1 + 8);
  *&v3 = "DiskImage::terminate()";
  *(&v3 + 1) = 20;
  v4 = 16;
  sub_1000D2D20(v5, &v3);
  sub_100001FE8(v6, "Encountered an inrecoverable I/O error, all future I/Os will be invalidated", 75);
  std::ostream::~ostream();
  sub_1000D2F54(v5);
  std::ios::~ios();
  atomic_store(1u, v1 + 8);
  (*(*v1 + 200))(v1);
  return sub_100195BE8();
}

void sub_1000F4A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000D2E48(va);
  _Unwind_Resume(a1);
}

void *sub_1000F4A68(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001223A4(a1, a2);
  *a1 = off_1002126B0;
  a1[45] = &off_1002127B0;
  a1[46] = &off_1002127D8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002126B0;
  a1[45] = off_100212738;
  a1[46] = off_100212760;
  return a1;
}

void sub_1000F4B6C(_Unwind_Exception *a1)
{
  sub_10010A274(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F4B90(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010A274(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000F4BD4(uint64_t a1)
{
  if (*(a1 + 3624))
  {
    std::mutex::lock((a1 + 3688));
    *(a1 + 3680) = 1;
    std::condition_variable::notify_one((a1 + 3632));

    std::mutex::unlock((a1 + 3688));
  }
}

uint64_t sub_1000F4C2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(*a3 + 56) + 16 * a3[1]);
  v6 = (v5[1] & 0x7FFFFFFFFFFFFFLL) * *(*(*a3 + 8) + 28);
  if (!v6 || 3 * v6 <= (4 * a4))
  {
    return 4294967274;
  }

  if (*v5)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v11 = 0;
    atomic_compare_exchange_strong(v5, &v11, 0xFFFFFFFFFFFFFFFFLL);
    v8 = v11 == 0;
  }

  v13[1] = v5;
  v14 = v8;
  v13[0] = off_100225888;
  v15 = 0;
  if (v8)
  {
    v12 = (*(*(*a3 + 56) + 16 * a3[1] + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a3 + 8) + 28);
    v9 = sub_1000F4D94(a1, a2, a3, v12, a5);
    sub_1001926F4(v13);
    if ((v9 & 0x80000000) == 0)
    {
      atomic_store(1u, (a1 + 96));
      sub_1000F1BB0(a1, v12);
    }
  }

  else
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8), a2);
    sub_1001926F4(v13);
    return 4294967282;
  }

  return v9;
}

uint64_t sub_1000F4D94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return 0;
  }

  v10 = *(*(a1 + 8) + 28);
  v11 = (*(**(a2 + 16) + 40))(*(a2 + 16));
  if (v11 - a4 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11 - a4;
  }

  result = sub_1000F4E44(*(a1 + 8), a2, a5, v12, a4);
  if ((result & 0x8000000000000000) == 0)
  {
    sub_1000F2864(a3, v14);
    return 0;
  }

  return result;
}

uint64_t sub_1000F4E44(atomic_ullong *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(sub_100195B38() + 1);
  v27 = a3;
  v28 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = a4;
  v30 = a5;
  v31 = a4;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v11 = (*(**(a2 + 16) + 128))(*(a2 + 16), &v27);
  if (v11 != a4)
  {
    *&v17 = "di_asif::details::dir_base::move_realloc_chunk(ContextASIF &, char *, size_t, uint64_t)";
    *(&v17 + 1) = 46;
    v18 = 16;
    sub_1000FCBA4(&v19, &v17);
    sub_100001FE8(v26, "Can't read for defrag", 21);
    std::ostream::~ostream();
    sub_100112BAC(&v19);
    std::ios::~ios();
    if (v11 < 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = -5;
    }

    goto LABEL_16;
  }

  v12 = sub_1000F2A80(a1, a2, 0);
  if (v12)
  {
    v13 = *(sub_100195B38() + 1);
    *&v19 = a3;
    *(&v19 + 1) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = a4;
    v21 = v12;
    v22 = a4;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    sub_10002E794(&v27, &v19);
    if (*(&v19 + 1))
    {
      sub_10000E984(*(&v19 + 1));
    }

    v14 = (*(**(a2 + 16) + 120))(*(a2 + 16), &v27);
    if (v14 != a4)
    {
      *&v17 = "di_asif::details::dir_base::move_realloc_chunk(ContextASIF &, char *, size_t, uint64_t)";
      *(&v17 + 1) = 46;
      v18 = 16;
      sub_1000FCD10(&v19, &v17);
      sub_100001FE8(v26, "Can't write table for defrag", 28);
      std::ostream::~ostream();
      sub_100113344(&v19);
      std::ios::~ios();
      sub_1000F2CAC(a1, v12, a2);
      if (v14 < 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = -5;
      }

LABEL_16:
      a4 = --v15;
    }
  }

  else
  {
    a4 = -28;
  }

  if (v28)
  {
    sub_10000E984(v28);
  }

  return a4;
}

void sub_1000F50A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000FCE38(va);
  v9 = *(v7 - 152);
  if (v9)
  {
    sub_10000E984(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000F5104(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(*a3 + 56) + 16 * a3[1]);
  v6 = (v5[1] & 0x7FFFFFFFFFFFFFLL) * *(*(*a3 + 8) + 28);
  if (!v6 || 3 * v6 <= (4 * a4))
  {
    return 4294967274;
  }

  if (*v5)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v12 = 0;
    atomic_compare_exchange_strong(v5, &v12, 0xFFFFFFFFFFFFFFFFLL);
    v11 = v12 == 0;
  }

  v23[1] = v5;
  v24 = v11;
  v23[0] = off_100225888;
  v25 = 0;
  if (!v11)
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8));
    sub_1001926F4(v23);
    return 4294967274;
  }

  v13 = *(a1 + 8);
  v14 = *(v13 + 26);
  v15 = ((*(*a3 + 352) + a3[1] / (*(*(*a3 + 8) + 56) + 1) * *(*(*a3 + 8) + 56) * *(*(*a3 + 8) + 28)) / v14 - *(a1 + 352) / v14) / (*(v13 + 56) * (*(v13 + 28) / v14));
  v16 = sub_1000F28D0(a1, v15);
  sub_1000F2940((*(a1 + 72) + 8 * v15), v16, &v22);
  if (!v22 || (*(v22 + 344) & 1) != 0)
  {
    goto LABEL_13;
  }

  if (*(v22 + 288))
  {
    sub_10012246C(v22 + 264, v22);
  }

  sub_1000F2940((*(a1 + 72) + 8 * v15), v16, &v21);
  sub_1000F29DC(&v22, &v21);
  sub_1000F0B1C(&v21);
  if (v22 && (*(v22 + 344) & 1) == 0)
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8));
    v20 = 0;
    v18 = 4294967274;
  }

  else
  {
LABEL_13:
    (*(**(a1 + 8) + 32))(&v21);
    sub_1000F29DC(&v22, &v21);
    sub_1000F0B1C(&v21);
    if (!v22 || (*(v22 + 344) & 1) != 0 || (v17 = atomic_load((v22 + 24)), v17 == 2))
    {
      if (v22 && (*(v22 + 344) & 1) == 0)
      {
        (*(**(a1 + 8) + 24))(*(a1 + 8));
        v18 = 4294967248;
      }

      else
      {
        v18 = 4294967274;
      }
    }

    else
    {
      v6 = (*(*(*a3 + 56) + 16 * a3[1] + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a3 + 8) + 28);
      v18 = sub_1000F4D94(a1, a2, a3, v6, a5);
    }

    if (v22 && (*(v22 + 344) & 1) == 0 && *(v22 + 288))
    {
      sub_10012246C(v22 + 264, v22);
    }

    v20 = 1;
  }

  sub_1000F0B1C(&v22);
  sub_1001926F4(v23);
  if (!v20)
  {
    return 4294967248;
  }

  if (!v18)
  {
    atomic_store(1u, (a1 + 96));
    sub_1000F1BB0(a1, v6);
  }

  return v18;
}

void sub_1000F5484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_1000F0B1C(va);
  sub_1001926F4(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F54C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a2 + 352) + a2[1] / (*(*(*a2 + 8) + 56) + 1) * *(*(*a2 + 8) + 56) * *(*(*a2 + 8) + 28);
  v7 = *(a1 + 8);
  v8 = *(a1 + 352) + *(v7 + 88);
  if (v6 >= v8)
  {
    v12 = 0;
    v11 = 0;
    v17 = 0;
    v16 = *(*a2 + 352) + a2[1] / (*(*(*a2 + 8) + 56) + 1) * *(*(*a2 + 8) + 56) * *(*(*a2 + 8) + 28);
  }

  else
  {
    v10 = sub_1000F1428(a1, v6);
    v3 = a2;
    v11 = v10 & 0xFFFFFFFFFFFFFF00;
    v12 = v10;
    v13 = *(*a2 + 8);
    v14 = *(v13 + 56);
    v15 = *(v13 + 28);
    v7 = *(a1 + 8);
    v16 = *(*a2 + 352) + a2[1] / (v14 + 1) * v14 * v15;
    v8 = *(a1 + 352) + *(v7 + 88);
    v17 = 1;
  }

  v18 = *(v7 + 26);
  v19 = *(v7 + 28) / v18;
  v20 = *(v7 + 56);
  v21 = v16 + v18 * v19 * v20;
  if (v21 >= v8)
  {
    v23 = 0;
    result = 0;
  }

  else
  {
    result = sub_1000F1428(a1, v16 + v18 * v19 * v20);
    v23 = 1;
  }

  *a3 = a1;
  *(a3 + 8) = v6;
  *(a3 + 16) = v11 | v12;
  *(a3 + 24) = v3;
  *(a3 + 32) = v17;
  *(a3 + 40) = a1;
  *(a3 + 48) = v21;
  *(a3 + 56) = result;
  *(a3 + 64) = a2;
  *(a3 + 72) = v23;
  return result;
}

uint64_t sub_1000F55F8(uint64_t a1)
{
  *a1 = off_100211AF0;
  v2 = *(a1 + 32);
  if (*(v2 + 496) == 1)
  {
    sub_100105520(v2 + 400);
    *(v2 + 496) = 0;
  }

  if (*(a1 + 3624))
  {
    std::mutex::lock((a1 + 3688));
    *(a1 + 24) = 1;
    std::condition_variable::notify_one((a1 + 3632));
    std::mutex::unlock((a1 + 3688));
    std::thread::join((a1 + 3624));
  }

  std::mutex::~mutex((a1 + 3800));
  sub_100072AB4((a1 + 3752));
  std::mutex::~mutex((a1 + 3688));
  std::condition_variable::~condition_variable((a1 + 3632));
  std::thread::~thread((a1 + 3624));
  std::mutex::~mutex((a1 + 3536));
  sub_100123380(a1 + 2088);
  sub_100122540(a1 + 288);
  sub_1000285E0(a1 + 256, *(a1 + 264));
  std::mutex::~mutex((a1 + 192));
  v3 = *(a1 + 160);
  if (v3)
  {
    *(a1 + 168) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 136);
  if (v4)
  {
    *(a1 + 144) = v4;
    operator delete(v4);
  }

  sub_1001224C0(a1 + 96);
  return a1;
}

uint64_t sub_1000F5704(uint64_t a1)
{
  sub_1000285E0(a1 + 72, *(a1 + 80));
  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_1000F5740(uint64_t a1)
{
  sub_1000F55F8(a1);

  operator delete();
}

__n128 sub_1000F5778@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1000F1250(v10, a2, a3, *(a1 + 88), *(a1 + 26), 0, *(a1 + 128), 0);
  sub_1000F1250((a4 + 80), a2, a3, *(a1 + 88), *(a1 + 26), *(a1 + 128), *(a1 + 128), 0);
  v8 = v10[3];
  *(a4 + 32) = v10[2];
  *(a4 + 48) = v8;
  *(a4 + 64) = v10[4];
  result = v10[1];
  *a4 = v10[0];
  *(a4 + 16) = result;
  return result;
}

void sub_1000F580C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10010904C(&v29, a1, a3);
  v33 = v29;
  if ((*(*(v29 + 56) + 16 * *(&v29 + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v29 + 8) + 28))
  {
    sub_1000F54C0(a1, &v33, &v29);
    v26 = v29;
    v27 = v30;
    v28 = v31;
    while (v26 != v32)
    {
      v5 = atomic_load((*(v27 + 56) + 16 * *(&v27 + 1) + 8));
      if (v5 >> 62 == 3)
      {
        return;
      }

      sub_1000F1488(&v26);
    }

    if ((*(*(v33 + 56) + 16 * *(&v33 + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v33 + 8) + 28))
    {
      v26 = v29;
      if (v28 == v31)
      {
        if (v28)
        {
          *(&v27 + 1) = *(&v30 + 1);
        }
      }

      else if (v28)
      {
        LOBYTE(v28) = 0;
      }

      else
      {
        v27 = v30;
        LOBYTE(v28) = 1;
      }

      v23 = 0;
      v24 = 0;
      v25 = 0;
      while (v26 != v32)
      {
        sub_1000FB5C8(*(v27 + 56) + 16 * *(&v27 + 1), 0, v22);
        v6 = v24;
        if (v24 >= v25)
        {
          v7 = sub_10010A850(&v23, v22);
        }

        else
        {
          sub_1001924B4(v24, v22);
          *v6 = off_100225888;
          *(v6 + 24) = v22[3];
          v7 = v6 + 32;
        }

        v24 = v7;
        sub_1001926F4(v22);
        v8 = atomic_load((*(v27 + 56) + 16 * *(&v27 + 1) + 8));
        if (v8 >> 62 == 3)
        {
          goto LABEL_34;
        }

        sub_1000F1488(&v26);
      }

      v9 = v33;
      v10 = *(v33 + 56) + 16 * *(&v33 + 1);
      if ((*(v10 + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v33 + 8) + 28))
      {
        sub_1000FB5C8(v10, 0, v22);
        v11 = *(v9 + 8);
        v12 = *(v11 + 28);
        if ((*(*(v9 + 56) + 16 * *(&v9 + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * v12)
        {
          sub_1000F226C(a1, a2, (*(v9 + 352) + *(v11 + 56) * v12 * (*(&v9 + 1) / (*(v11 + 56) + 1))) / *(a1[1] + 26), 1, &v21);
          if (v21 && (*(v21 + 344) & 1) == 0)
          {
            atomic_fetch_and((*(v9 + 56) + 16 * *(&v9 + 1) + 8), 0xBFFFFFFFFFFFFFFFLL);
            if (*(v21 + 224))
            {
              v13 = v21 + 40;
            }

            else
            {
              v13 = 0;
            }

            v14 = *(v13 + 16);
            *(v13 + 16) = 0;
            *(v13 + 24) = v14;
            *(v13 + 112) = 0;
            if (v21 && *(v21 + 288))
            {
              sub_10012246C(v21 + 264, v21);
            }

            v15 = a1[1];
            v16 = ((*(v33 + 352) + *(&v33 + 1) / (*(*(v33 + 8) + 56) + 1) * *(*(v33 + 8) + 56) * *(*(v33 + 8) + 28)) / *(v15 + 26) - a1[44] / *(v15 + 26)) / (*(v15 + 56) * (*(v15 + 28) / *(v15 + 26)));
            v20 = 0;
            atomic_store(atomic_exchange(&v20, 0), (a1[9] + 8 * v16));
            v17 = a1[1];
            v18 = *(v17 + 16);
            if (*(v18 + 160) == 1)
            {
              v19 = *(v30 + 8);
              sub_1000BABD4(v18, ((*(v30 + 352) + (*(v19 + 56) + *(v19 + 56) * *(&v30 + 1)) / (*(v19 + 56) + 1) * *(v19 + 28)) / *(v19 + 26) - a1[44] / *(v17 + 26)) / (*(v17 + 56) * (*(v17 + 28) / *(v17 + 26))) + *(v17 + 72) * (a1[44] / *(v17 + 88)), 0);
            }
          }

          sub_1000F0B1C(&v21);
        }

        sub_1001926F4(v22);
      }

LABEL_34:
      v22[0] = &v23;
      sub_10010AB28(v22);
    }
  }
}

void sub_1000F5C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_ullong a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_1000F0B1C(&a11);
  sub_1001926F4(&a12);
  a12 = &a16;
  sub_10010AB28(&a12);
  _Unwind_Resume(a1);
}

void *sub_1000F5C70(void *a1, void *a2)
{
  sub_100001FE8(a1, "table entry data@", 17);
  v3 = std::ostream::operator<<();
  sub_100001FE8(v3, " = offset = ", 12);
  v4 = std::ostream::operator<<();
  v5 = sub_100001FE8(v4, ", flags = ", 10);
  v6 = atomic_load((*(*a2 + 56) + 16 * a2[1] + 8));
  v8 = v6 >> 62;
  return sub_10010091C(v5, &v8);
}

uint64_t sub_1000F5D38(void *a1, void *a2)
{
  sub_100001FE8(a1, "table entry map@", 16);
  v2 = std::ostream::operator<<();
  sub_100001FE8(v2, " = offset = ", 12);

  return std::ostream::operator<<();
}

__n128 sub_1000F5DD0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  std::mutex::lock((a1 + 104));
  sub_1000F39D4(a3, a4, *(*(a1 + 8) + 28), *(*(a1 + 8) + 26), *(a1 + 352), *(*(a1 + 8) + 88) + *(a1 + 352), v79);
  v9 = 0;
  LOBYTE(v77) = 0;
  v78 = 0;
  v69 = *(*(*(a1 + 8) + 32) + 216);
  while (*v79 != v82 || *&v79[8] != v83 || *&v79[16] != *v79 + 16 * *&v79[8] && (*&v80[8] != v84 || *&v80[24] != v85))
  {
    v10 = *&v79[24];
    v11 = *v80;
    *&v80[8] += *&v80[24] * *v80;
    *&v79[24] = sub_1000F1194(v79);
    *v80 = v12;
    v13 = v10 * *(*(a1 + 8) + 26);
    v14 = sub_1000F1428(a1, v13);
    v16 = v14;
    v17 = v15;
    *&v76 = v14;
    *(&v76 + 1) = v15;
    if (v78 == 1)
    {
      v18 = v77;
      v19 = *(v14 + 352) == *(v77 + 352) && v15 == *(&v77 + 1);
      if (!v19)
      {
        v9 |= sub_1000F1D58(a1, a2, &v77);
        v20 = *(v18 + 8);
        v21 = (*(v18 + 352) + (*(v20 + 56) + *(v20 + 56) * *(&v18 + 1)) / (*(v20 + 56) + 1) * *(v20 + 28)) / *(v20 + 26);
        v22 = *(a1 + 8);
        v23 = *(v22 + 56);
        v24 = *(v22 + 28);
        v25 = *(v22 + 26);
        v26 = v23 * (v24 / v25);
        v27 = *(a1 + 352) / v25;
        ++v23;
        v28 = v23 + v23 * ((v21 - v27) / v26);
        v29 = v16[1];
        if (v28 != v23 + v23 * (((v16[44] + (*(v29 + 56) + *(v29 + 56) * v17) / (*(v29 + 56) + 1) * *(v29 + 28)) / *(v29 + 26) - v27) / v26) && (v9 & 1) != 0)
        {
          sub_1000F580C(a1, a2, v28 - 1);
          v9 = 0;
        }
      }

      *(&v77 + 1) = v17;
    }

    else
    {
      v77 = v76;
      v78 = 1;
    }

    v30 = atomic_load((v16[7] + 16 * v17 + 8));
    v31 = v30 >> 62;
    if (v30 >> 62 != 2)
    {
      v32 = v76;
      v33 = *(v76 + 8);
      v34 = *(v33 + 56);
      v35 = *(v33 + 28);
      if (*(v76 + 352) + (v34 + v34 * *(&v76 + 1)) / (v34 + 1) * v35 == v13 && v11 * *(*(a1 + 8) + 26) == v35)
      {
        sub_1000FB5C8(*(v76 + 56) + 16 * *(&v76 + 1), 0, v74);
        if (!v75)
        {
          *&v70 = "di_asif::details::table::unmap(ContextASIF &, const unmap_extent_t *, size_t)";
          *(&v70 + 1) = 30;
          v71 = 16;
          sub_1000F6868(v72, &v70);
          sub_100001FE8(v73, "Couldn't lock entry ", 20);
          sub_1000F5C70(v73, &v76);
          sub_1000F6990(v72);
          exception = __cxa_allocate_exception(0x40uLL);
          *exception = &off_1002260F0;
          v65 = std::generic_category();
          exception[1] = 4294967282;
          exception[2] = v65;
          *(exception + 24) = 0;
          *(exception + 48) = 0;
          exception[7] = "Couldn't lock entry";
        }

        v36 = atomic_load((*(v32 + 56) + 16 * *(&v32 + 1) + 8));
        v37 = v36 & 0xC000000000000000;
        if (v31 != 1 && v37 == 0x4000000000000000)
        {
          goto LABEL_32;
        }

        v39 = (*(v76 + 56) + 16 * *(&v76 + 1) + 8);
        v40 = *v39;
        v41 = *v39 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
        for (i = *v39; ; v41 = i & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000)
        {
          atomic_compare_exchange_strong(v39, &i, v41);
          if (i == v40)
          {
            break;
          }

          v40 = i;
        }

        v48 = v40 >> 62;
        sub_1000F6664(a1, a2, v40 >> 62, 2, &v76);
        v9 |= v48 == 3;
        v49 = (*(v76 + 56) + 16 * *(&v76 + 1) + 8);
        v50 = *v49;
        v51 = *(*(v76 + 8) + 28);
        if (v51)
        {
          atomic_fetch_and_explicit(v49, 0xFF80000000000000, memory_order_relaxed);
          goto LABEL_41;
        }

        v52 = *v49;
        v53 = *v49;
        atomic_compare_exchange_strong_explicit(v49, &v53, *v49 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
        if (v53 == v52)
        {
          atomic_store(1u, (a1 + 96));
          goto LABEL_32;
        }

        do
        {
          v54 = v53;
          atomic_compare_exchange_strong_explicit(v49, &v54, v53 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
          v19 = v54 == v53;
          v53 = v54;
        }

        while (!v19);
LABEL_41:
        v55 = (v50 & 0x7FFFFFFFFFFFFFLL) * v51;
        atomic_store(1u, (a1 + 96));
        sub_1001926F4(v74);
        if (v55)
        {
          sub_1000F1BB0(a1, v55);
        }
      }

      else if ((v30 & 0x4000000000000000) != 0)
      {
        v45 = (*(v76 + 56) + 16 * *(&v76 + 1));
        v46 = sub_100111FBC(v45);
        v74[0] = off_100225868;
        v74[1] = v45;
        v75 = v46;
        if (!v46)
        {
          *&v70 = "di_asif::details::table::unmap(ContextASIF &, const unmap_extent_t *, size_t)";
          *(&v70 + 1) = 30;
          v71 = 16;
          sub_1000F69D4(v72, &v70);
          sub_100001FE8(v73, "Couldn't lock entry ", 20);
          sub_1000F5C70(v73, &v76);
          sub_1000F6AFC(v72);
          v62 = __cxa_allocate_exception(0x40uLL);
          *v62 = &off_1002260F0;
          v63 = std::generic_category();
          v62[1] = 4294967282;
          v62[2] = v63;
          *(v62 + 24) = 0;
          *(v62 + 48) = 0;
          v62[7] = "Couldn't lock entry";
        }

        v47 = *(*(a1 + 8) + 26);
        *v72 = sub_1000F6C54(a1, v10 * v47, v11 * v47);
        sub_1000F2D8C(a1, a2, &v76, v72, 2, v31 | &_mh_execute_header);
        sub_10019254C(v74);
      }

      else if ((v69 & 1) == 0)
      {
        sub_1000FB5C8(*(v76 + 56) + 16 * *(&v76 + 1), 0, v74);
        if (!v75)
        {
          *&v70 = "di_asif::details::table::unmap(ContextASIF &, const unmap_extent_t *, size_t)";
          *(&v70 + 1) = 30;
          v71 = 16;
          sub_10006546C(v72, &v70);
          sub_100001FE8(v73, "Couldn't exclusively lock entry ", 32);
          sub_1000F5C70(v73, &v76);
          sub_100065594(v72);
          v66 = __cxa_allocate_exception(0x40uLL);
          *v66 = &off_1002260F0;
          v67 = std::generic_category();
          v66[1] = 4294967282;
          v66[2] = v67;
          *(v66 + 24) = 0;
          *(v66 + 48) = 0;
          v66[7] = "Couldn't lock entry";
        }

        v43 = atomic_load((*(v32 + 56) + 16 * *(&v32 + 1) + 8));
        v44 = *(*(a1 + 8) + 26);
        *v72 = sub_1000F6C54(a1, v10 * v44, v11 * v44);
        sub_1000F2D8C(a1, a2, &v76, v72, 2, &_mh_execute_header & 0xFFFFFFFFFFFFFFFCLL | (v43 >> 62));
LABEL_32:
        sub_1001926F4(v74);
      }
    }
  }

  if (v78 == 1 && ((sub_1000F1D58(a1, a2, &v77) | v9) & 1) != 0)
  {
    v56 = *(v77 + 8);
    v57 = *(a1 + 8);
    v58 = *(v57 + 56);
    sub_1000F580C(a1, a2, v58 + (v58 + 1) * (((*(v77 + 352) + (*(v56 + 56) + *(v56 + 56) * *(&v77 + 1)) / (*(v56 + 56) + 1) * *(v56 + 28)) / *(v56 + 26) - *(a1 + 352) / *(v57 + 26)) / (v58 * (*(v57 + 28) / *(v57 + 26)))));
  }

  v59 = *&v80[16];
  a5[2] = *v80;
  a5[3] = v59;
  a5[4] = v81;
  v60 = *&v79[16];
  *a5 = *v79;
  a5[1] = v60;
  std::mutex::unlock((a1 + 104));
  return result;
}

atomic_ullong *sub_1000F6664(atomic_ullong *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(result[1] + 16);
  if (*(v5 + 160) == 1)
  {
    v7 = a3;
    v9 = result;
    sub_1000F6B40(*(result[1] + 16), a3, a4);
    v10 = *(*a5 + 8);
    v11 = v9[1];
    result = sub_1000BAAA8(v5, ((*(*a5 + 352) + (*(v10 + 56) + *(v10 + 56) * a5[1]) / (*(v10 + 56) + 1) * *(v10 + 28)) / *(v10 + 26) - v9[44] / *(v11 + 26)) / (*(v11 + 56) * (*(v11 + 28) / *(v11 + 26))) + *(v11 + 72) * (v9[44] / *(v11 + 88)));
    if (v7 == 3)
    {
      if (result)
      {
        v12 = *(*a5 + 8);
        sub_1000F226C(v9, a2, (*(*a5 + 352) + (*(v12 + 56) + *(v12 + 56) * a5[1]) / (*(v12 + 56) + 1) * *(v12 + 28)) / *(v12 + 26), 0, &v19);
        v13 = *(*a5 + 8);
        v14 = sub_1000F6C54(v9, *(*a5 + 352) + (*(v13 + 56) + *(v13 + 56) * a5[1]) / (*(v13 + 56) + 1) * *(v13 + 28), *(v13 + 28));
        if (v19)
        {
          v15 = (v19 + 40);
          if (!*(v19 + 224))
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }

        v16 = v9[1];
        v17 = *(v16 + 56);
        sub_1000F34D0(v15, v9[44] + v17 * *(v16 + 28) * (*(v19 + 40) / (v17 + 1)) + ((v14 * *(v16 + 26)) >> 1), (v9[44] + ((HIDWORD(v14) * *(v16 + 26)) >> 1) + v17 * *(v16 + 28) * (*(v19 + 40) / (v17 + 1))), v9, v18);
        sub_1000F35F8(v5, v18);
        return sub_1000F0B1C(&v19);
      }
    }
  }

  return result;
}

void sub_1000F6850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000F0B1C(va);
  _Unwind_Resume(a1);
}

void *sub_1000F6868(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10012393C(a1, a2);
  *a1 = off_100212950;
  a1[45] = &off_100212A50;
  a1[46] = &off_100212A78;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100212950;
  a1[45] = off_1002129D8;
  a1[46] = off_100212A00;
  return a1;
}

void sub_1000F696C(_Unwind_Exception *a1)
{
  sub_10010AE80(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F6990(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010AE80(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000F69D4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100123A04(a1, a2);
  *a1 = off_100212B70;
  a1[45] = &off_100212C70;
  a1[46] = &off_100212C98;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100212B70;
  a1[45] = off_100212BF8;
  a1[46] = off_100212C20;
  return a1;
}

void sub_1000F6AD8(_Unwind_Exception *a1)
{
  sub_10010B618(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F6AFC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010B618(a1);
  std::ios::~ios();
  return a1;
}

atomic_ullong *sub_1000F6B40(atomic_ullong *result, int a2, int a3)
{
  v3 = result[10];
  v4 = v3;
  atomic_compare_exchange_strong_explicit(result + 10, &v4, &_mh_execute_header + (v3 & 0xFFFFFFFF00000000 | (v3 + 1)), memory_order_relaxed, memory_order_relaxed);
  if (v4 != v3)
  {
    v5 = v4;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v5, &_mh_execute_header + (v4 & 0xFFFFFFFF00000000 | (v4 + 1)), memory_order_relaxed, memory_order_relaxed);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }

  v7 = result + 11;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v8 = result + 13;
    }

    else
    {
      v8 = result + 14;
    }
  }

  else
  {
    v8 = result + 11;
    if (a2)
    {
      v8 = result + 12;
    }
  }

  atomic_fetch_add_explicit(v8, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7 = result + 13;
    }

    else
    {
      v7 = result + 14;
    }
  }

  else if (a3)
  {
    v7 = result + 12;
  }

  atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  v9 = result[10];
  v10 = v9;
  atomic_compare_exchange_strong_explicit(result + 10, &v10, (v9 & 0xFFFFFFFF00000000 | (v9 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v10 != v9)
  {
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v6 = v11 == v10;
      v10 = v11;
    }

    while (!v6);
  }

  return result;
}

unint64_t sub_1000F6C54(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 26);
  if (v4 <= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *(v3 + 26);
  }

  if (!a3)
  {
    v5 = 0;
  }

  v6 = *(v3 + 28);
  v7 = *(v3 + 56);
  return ((2 * (((a2 - (*(a1 + 352) + v7 * v6 * ((a2 / v4 - *(a1 + 352) / v4) / (v7 * (v6 / v4))))) / v4) & 0x7FFFFFFF)) | (((v5 + a2 - v4 - (*(a1 + 352) + ((v5 + a2 - v4) / v4 - *(a1 + 352) / v4) / (v7 * (v6 / v4)) * v7 * v6)) / v4) << 33)) + 0x200000000;
}

uint64_t sub_1000F6CD4(void *a1, uint64_t a2, void *a3, char a4)
{
  if ((atomic_fetch_and((*(*a3 + 56) + 16 * a3[1] + 8), 0x7FFFFFFFFFFFFFFFuLL) & 0x8000000000000000) == 0)
  {
    return 0;
  }

  if ((a4 & 2) != 0)
  {
    v9 = (*(**(a2 + 16) + 16))(*(a2 + 16), 0);
    if (v9)
    {
      v13 = v9;
      sub_1000F4990(a2);
      exception = __cxa_allocate_exception(0x40uLL);
      if (v13 < 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = -v13;
      }

      v16 = sub_100001940(exception, "Can't flush asif on table flush, backend barrier failed", v15);
    }
  }

  sub_1000F226C(a1, a2, (*(*a3 + 352) + a3[1] / (*(*(*a3 + 8) + 56) + 1) * *(*(*a3 + 8) + 56) * *(*(*a3 + 8) + 28)) / *(a1[1] + 26), a4 & 1, &v22);
  if (v22 && (*(v22 + 344) & 1) == 0)
  {
    if (*(v22 + 224))
    {
      v10 = v22 + 40;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_1000F6FF0(v10, a2, a1);
    if (v11)
    {
      sub_1000F4990(a2);
      v17 = __cxa_allocate_exception(0x40uLL);
      sub_100001DC0(v21);
      sub_100001FE8(v21, "Can't flush asif table, bitmap flush failed ", 44);
      if (a4)
      {
        v18 = "(locked)";
      }

      else
      {
        v18 = "(unlocked)";
      }

      if (a4)
      {
        v19 = 8;
      }

      else
      {
        v19 = 10;
      }

      sub_100001FE8(v21, v18, v19);
      if (v11 < 0)
      {
        v20 = v11;
      }

      else
      {
        v20 = -v11;
      }

      sub_10000EBDC(v17, v21, v20);
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  sub_1000F0B1C(&v22);
  return v4;
}

void sub_1000F6F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10000C8C8(&a9);
  sub_1000F0B1C((v9 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_1000F6FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 120));
  v6 = sub_1000FB728(a1, a2, a3, *(*(a3 + 8) + 28));
  std::mutex::unlock((a1 + 120));
  return v6;
}

uint64_t sub_1000F7064(uint64_t a1, uint64_t a2)
{
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  v29 = atomic_exchange((a1 + 96), 0);
  std::mutex::lock((a1 + 280));
  v4 = *(a1 + 248);
  v5 = *(a1 + 264);
  v46 = *(a1 + 232);
  v47 = v4;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  v6 = v48;
  v48 = v5;
  *(a1 + 264) = v6;
  std::mutex::unlock((a1 + 280));
  v7 = *(a1 + 8);
  v8 = *(v7 + 26);
  v9 = *(v7 + 56);
  v10 = v8 + 8 * *(v7 + 64) - 1;
  v11 = v10 / v8 * v8;
  if (v10 == v10 % v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = malloc_type_valloc(v11, 0x8B7C732DuLL);
    if (!v12)
    {
      exception = __cxa_allocate_exception(8uLL);
      v28 = std::bad_alloc::bad_alloc(exception);
    }
  }

  v51 = off_1002128C8;
  v52 = &v51;
  v49 = v12;
  sub_100015FBC(v50, &v51);
  sub_10001590C(&v51);
  v13 = v49;
  std::mutex::lock((a1 + 168));
  sub_1000F1CD0(a1, v14, v41);
  v15 = 0;
  *&v36 = a2;
  *(&v36 + 1) = &v40;
  *&v37 = v13;
  *(&v37 + 1) = v38;
  v33 = v36;
  v40 = *(a1 + 344);
  v38[0] = a2;
  v38[1] = &v39;
  v32[4] = a2;
  v32[5] = &v40;
  v34 = v37;
  v32[6] = v13;
  v35 = v38;
  v16 = v13;
  v39 = 0;
  while (v41[0] != v44 || v41[1] != v45)
  {
    v39 = sub_1000F6CD4(a1, a2, &v42, 0);
    sub_1000FB5C8(*(v42 + 56) + 16 * v43, 0, v32);
    v17 = sub_1000F6CD4(a1, a2, &v42, 1);
    v39 |= v17;
    ++v15;
    if (v29)
    {
      if ((atomic_fetch_and((*(v42 + 56) + 16 * v43 + 8), 0xBFFFFFFFFFFFFFFFLL) & 0x4000000000000000) != 0 && v11 < 8 * v9 + 8)
      {
        sub_1000F79C4(&v36, v13);
        v16 = v13;
      }

      sub_1000F54C0(a1, &v42, v30);
      if (v30[0] == v31[3] && v30[1] == v31[4])
      {
        v19 = atomic_load((*(v42 + 56) + 16 * v43 + 8));
        *v16 = bswap64(v19 & 0x3FFFFFFFFFFFFFFFLL);
        v52 = 0;
        operator new();
      }

      sub_1000F7B7C(v31);
      v18 = atomic_load((*(v31[0] + 56) + 16 * v31[1] + 8));
      *v16 = bswap64(v18);
      v52 = 0;
      operator new();
    }

    v40 = *(a1 + 344) + 8 * (v15 + v15 * *(*(a1 + 8) + 56));
    sub_1001926F4(v32);
    sub_1000F1360(v41);
  }

  std::mutex::unlock((a1 + 168));
  sub_100015888(&v49, 0);
  sub_10001590C(v50);
  v20 = *(&v48 + 1);
  v21 = (*(&v46 + 1) + 8 * (v48 >> 9));
  if (v47 == *(&v46 + 1))
  {
    v22 = 0;
    v24 = 0;
    v23 = (*(&v46 + 1) + 8 * ((v48 + *(&v48 + 1)) >> 9));
  }

  else
  {
    v22 = &(*v21)[8 * (v48 & 0x1FF)];
    v23 = (*(&v46 + 1) + 8 * ((v48 + *(&v48 + 1)) >> 9));
    v24 = (*v23 + 8 * ((v48 + *(&v48 + 1)) & 0x1FF));
  }

  sub_1000F7CC4(*(a1 + 8), v21, v22, v23, v24, a2);
  if (v20)
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8));
  }

  v25 = *(a1 + 100);
  if (v25 == 1)
  {
    (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 352), *(a1 + 344));
    *(a1 + 100) = 0;
  }

  sub_100072AB4(&v46);
  return v25;
}

void sub_1000F77D0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int64x2_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, unint64_t a62, uint64_t a63)
{
  std::mutex::unlock((v63 + 168));
  sub_100015888((v64 - 256), 0);
  sub_10001590C(v64 - 248);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    std::mutex::lock((v63 + 280));
    v67 = *(v63 + 264) + *(v63 + 272);
    v68 = *(v63 + 240);
    v69 = (v68 + 8 * (v67 >> 9));
    if (*(v63 + 248) == v68)
    {
      v70 = 0;
    }

    else
    {
      v70 = *v69 + 8 * (v67 & 0x1FF);
    }

    v71 = (a59 + 8 * (a62 >> 9));
    if (a60 == a59)
    {
      v72 = 0;
      v73 = 0;
      v74 = (a59 + 8 * ((a63 + a62) >> 9));
    }

    else
    {
      v72 = *v71 + 8 * (a62 & 0x1FF);
      v74 = (a59 + 8 * ((a63 + a62) >> 9));
      v73 = *v74 + 8 * ((a63 + a62) & 0x1FF);
    }

    sub_1000F7C90(a10, v69, v70, v71, v72, v74, v73);
    std::mutex::unlock((v63 + 280));
    atomic_fetch_or((v63 + 96), a16 != 0);
    __cxa_rethrow();
  }

  sub_100072AB4(&a58);
  _Unwind_Resume(a1);
}

void sub_1000F79B4(void *a1, int a2)
{
  if (a2)
  {
    sub_100001A14(a1);
  }

  JUMPOUT(0x1000F79ACLL);
}

void sub_1000F79C4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[3];
  if (*v4[1] == 1)
  {
    sub_10010BB18(*v4);
    *v4[1] = 0;
  }

  v5 = a1[2];
  v6 = a2 - v5;
  v7 = *a1[1];
  v8 = *(sub_100195B38() + 1);
  v16 = v5;
  v17 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v6;
  v19 = v7;
  v20 = v6;
  v22 = 0;
  v23 = 0;
  v21 = 1;
  sub_100030254(v24, &v16);
  if (v17)
  {
    sub_10000E984(v17);
  }

  v9 = (*(**(*a1 + 16) + 120))(*(*a1 + 16), v24);
  *a1[1] += v6;
  if (v6 != v9)
  {
    v10 = *a1;
    v11 = v9;
    sub_1000F4990(v10);
    LODWORD(v12) = v11;
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = exception;
    if (v12 < 0)
    {
      v12 = v12;
    }

    else
    {
      v12 = -v12;
    }

    *exception = &off_1002260F0;
    v15 = std::generic_category();
    v14[1] = v12;
    v14[2] = v15;
    *(v14 + 24) = 0;
    *(v14 + 48) = 0;
    v14[7] = "Can't flush asif table, backend write failed";
  }

  if (v25)
  {
    sub_10000E984(v25);
  }
}

void sub_1000F7B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000F7B7C(void *a1)
{
  atomic_load((*(*a1 + 56) + 16 * a1[1] + 8));
  v1 = atomic_load((*(*a1 + 56) + 16 * a1[1] + 8));
  if ((v1 & 0x3F80000000000000) != 0)
  {
    *&v3 = "di_asif::details::table_entry_data::validate() const";
    *(&v3 + 1) = 44;
    v4 = 16;
    sub_10010BBAC(v5, &v3);
    sub_100001FE8(v6, "Diskimages2 - ASIF - bad reserved bits ", 39);
    *(&v6[1] + *(v6[0] - 24)) = *(&v6[1] + *(v6[0] - 24)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10010BDE0(v5);
    std::ios::~ios();
  }

  return (v1 & 0x3F80000000000000) == 0;
}

void sub_1000F7C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10010BCD4(va);
  _Unwind_Resume(a1);
}

void *sub_1000F7C90(int64x2_t *a1, char *a2, uint64_t a3, void **a4, char *a5, void **a6, char *a7)
{
  if (a7 == a5)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((a7 - *a6) >> 3) + ((a6 - a4) << 6) - ((a5 - *a4) >> 3);
  }

  return sub_100123C58(a1, a2, a3, a4, a5, a6, a7, v7);
}

uint64_t sub_1000F7CC4(atomic_ullong *a1, char **a2, char *a3, char *a4, char *a5, uint64_t a6)
{
  v12 = (*(*a1 + 16))(a1);
  v15[0] = off_100211DA8;
  v15[1] = a6;
  v15[3] = v15;
  sub_100124BFC(v12, a2, a3, a4, a5, v15);
  result = sub_100121384(v15);
  if (a5 == a3)
  {
    v14 = 0;
  }

  else
  {
    v14 = ((a2 - a4) << 6) - (&a5[-*a4] >> 3) + ((a3 - *a2) >> 3);
  }

  atomic_fetch_add(a1 + 1, v14);
  return result;
}

void sub_1000F7DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100121384(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1000F7DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v83 = 0;
  v85 = 0;
  sub_1000302E0(&v79, a3);
  v54 = 0;
  while (!sub_10002DE0C(&v79, a4))
  {
    v77 = sub_1000F1428(a1, v81);
    v78 = v7;
    v8 = v77[1];
    v9 = *(v8 + 56);
    v10 = *(v8 + 28);
    v68[0] = v77[44] + (v9 + v9 * v7) / (v9 + 1) * v10;
    v68[1] = v68[0] + v10;
    v69 = 2;
    sub_10002EA5C(&v79, v68, a4, v71);
    if (!sub_10002DE0C(v71, &v74))
    {
      *&v64 = &v83[1];
      *(&v64 + 1) = &v77;
      v65 = v83;
      v66 = a1;
      v67 = a2;
      v13 = (v77[7] + 16 * v78);
      v14 = sub_100111FBC(v13);
      v62[0] = off_100225868;
      v62[1] = v13;
      v63 = v14;
      if (!v14)
      {
        *&v59 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
        *(&v59 + 1) = 30;
        LODWORD(v60) = 16;
        sub_1000F8A00(v68, &v59);
        sub_100001FE8(v70, "Couldn't lock entry ", 20);
        sub_1000F5C70(v70, &v77);
        sub_1000F8B28(v68);
        exception = __cxa_allocate_exception(0x40uLL);
        *exception = &off_1002260F0;
        v49 = std::generic_category();
        exception[1] = 4294967282;
        exception[2] = v49;
        *(exception + 24) = 0;
        *(exception + 48) = 0;
        exception[7] = "Couldn't lock entry";
      }

      v15 = v78;
      v16 = v77[7];
      v17 = (*(v16 + 16 * v78 + 8) & 0x7FFFFFFFFFFFFFLL) * *(v77[1] + 28);
      if (!v17)
      {
        LODWORD(v12) = sub_1000F2BE4(a1, a2, v77, v78);
        if (!v12)
        {
          v15 = v78;
          v16 = v77[7];
          goto LABEL_7;
        }

        *&v59 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
        *(&v59 + 1) = 30;
        LODWORD(v60) = 16;
        sub_1000F8B6C(v68, &v59);
        sub_100001FE8(v70, "couldn't allocate space for entry ", 34);
        sub_1000F5C70(v70, &v77);
        sub_100001FE8(v70, " ret: ", 6);
        std::ostream::operator<<();
        std::ostream::~ostream();
        sub_10010D794(v68);
        std::ios::~ios();
        v12 = v12;
        goto LABEL_43;
      }

LABEL_7:
      v18 = atomic_load((v16 + 16 * v15 + 8));
      v19 = sub_1000F8CD8(&v77, a2, v71, &v74);
      v12 = v19;
      v21 = v20;
      if ((v19 & 0x8000000000000000) != 0 && v19)
      {
        if (v17)
        {
          goto LABEL_42;
        }

        sub_100192588(v62, 0, v68);
        if (v69 == 1)
        {
          v22 = atomic_load((v77[7] + 16 * v78 + 8));
          if ((v22 & 0x4000000000000000) == 0)
          {
            v23 = (v77[7] + 16 * v78 + 8);
            v24 = *v23;
            v25 = *(v77[1] + 28);
            if (v25)
            {
              atomic_fetch_and_explicit(v23, 0xFF80000000000000, memory_order_relaxed);
LABEL_58:
              v41 = (v24 & 0x7FFFFFFFFFFFFFLL) * v25;
              sub_1001926F4(v68);
              if (v41)
              {
                sub_1000F2CAC(*(a1 + 8), v41, a2);
              }

LABEL_42:
              *&v59 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
              *(&v59 + 1) = 30;
              LODWORD(v60) = 16;
              sub_1000F95C0(v68, &v59);
              sub_100001FE8(v70, "Failed during data entry write in table write, error ", 53);
              std::ostream::operator<<();
              std::ostream::~ostream();
              sub_10010DF2C(v68);
              std::ios::~ios();
LABEL_43:
              v11 = 1;
LABEL_44:
              sub_10019254C(v62);
              sub_1000F9A44(&v64);
              goto LABEL_45;
            }

            v37 = *v23;
            v38 = *v23;
            atomic_compare_exchange_strong_explicit(v23, &v38, *v23 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
            if (v38 != v37)
            {
              v39 = v38;
              do
              {
                atomic_compare_exchange_strong_explicit(v23, &v39, v38 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
                v40 = v39 == v38;
                v38 = v39;
              }

              while (!v40);
              goto LABEL_58;
            }
          }
        }

        sub_1001926F4(v68);
        goto LABEL_42;
      }

      v26 = v18 >> 62;
      *&v59 = &v79;
      *(&v59 + 1) = a4;
      v60 = v19;
      v61 = v20;
      if (v26 == 1)
      {
LABEL_15:
        v11 = 2;
      }

      else
      {
        v27 = v77[1];
        v28 = *(v27 + 28);
        if (v19 == v28 && v77[44] + (*(v27 + 56) + *(v27 + 56) * v78) / (*(v27 + 56) + 1) * v28 == v20)
        {
          sub_100192588(v62, 0, v57);
          if ((v58 & 1) == 0)
          {
            *&v55 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
            *(&v55 + 1) = 30;
            v56 = 16;
            sub_1000F972C(v68, &v55);
            sub_100001FE8(v70, "Couldn't upgrade lock entry ", 28);
            sub_1000F5C70(v70, &v77);
            sub_1000F9854(v68);
            v50 = __cxa_allocate_exception(0x40uLL);
            *v50 = &off_1002260F0;
            v51 = std::generic_category();
            v50[1] = 4294967282;
            v50[2] = v51;
            *(v50 + 24) = 0;
            *(v50 + 48) = 0;
            v50[7] = "Couldn't upgrade lock entry";
          }

          v29 = atomic_load((v77[7] + 16 * v78 + 8));
          if (v26 == 2 || (v29 & 0xC000000000000000) != 0x8000000000000000)
          {
            v30 = (v77[7] + 16 * v78 + 8);
            v31 = *v30;
            v32 = *v30 & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000;
            for (i = *v30; ; v32 = i & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000)
            {
              atomic_compare_exchange_strong(v30, &i, v32);
              if (i == v31)
              {
                break;
              }

              v31 = i;
            }

            v36 = v31 >> 62;
            sub_1000F6664(a1, a2, v31 >> 62, 1, &v77);
            v83[0] |= v36 == 3;
            atomic_store(1u, (a1 + 96));
          }

          sub_1001926F4(v57);
          v11 = 2;
        }

        else
        {
          if (v26 == 3)
          {
            v68[0] = sub_1000F6C54(a1, v20, v19);
            sub_1000F2D8C(a1, a2, &v77, v68, 1, 0x100000003);
          }

          else
          {
            sub_100192588(v62, 0, v57);
            if ((v58 & 1) == 0)
            {
              *&v55 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
              *(&v55 + 1) = 30;
              v56 = 16;
              sub_1000F9898(v68, &v55);
              sub_100001FE8(v70, "Couldn't upgrade lock entry ", 28);
              sub_1000F5C70(v70, &v77);
              sub_1000F99C0(v68);
              v52 = __cxa_allocate_exception(0x40uLL);
              *v52 = &off_1002260F0;
              v53 = std::generic_category();
              v52[1] = 4294967282;
              v52[2] = v53;
              *(v52 + 24) = 0;
              *(v52 + 48) = 0;
              v52[7] = "Couldn't upgrade lock entry";
            }

            v34 = atomic_load((v77[7] + 16 * v78 + 8));
            if (!((*(v77[7] + 16 * v78 + 8) & 0x7FFFFFFFFFFFFFLL) * *(v77[1] + 28)) || (v35 = v34 >> 62, v34 >> 62 == 1))
            {
              sub_1001926F4(v57);
              goto LABEL_15;
            }

            v68[0] = sub_1000F6C54(a1, v21, v12);
            sub_1000F2D8C(a1, a2, &v77, v68, 1, v35 | &_mh_execute_header);
            sub_1001926F4(v57);
          }

          if (v17)
          {
            v11 = 0;
          }

          else
          {
            v11 = 0;
            atomic_store(1u, (a1 + 96));
          }
        }
      }

      v54 += v12;
      sub_1000F9A04(&v59);
      goto LABEL_44;
    }

    *&v64 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
    *(&v64 + 1) = 30;
    LODWORD(v65) = 16;
    sub_1000F8894(v68, &v64);
    sub_100001FE8(v70, "Couldn't trim entry in write ", 29);
    sub_100192838(v70, &v79);
    std::ostream::~ostream();
    sub_10010C864(v68);
    std::ios::~ios();
    v11 = 1;
    v12 = -34;
LABEL_45:
    if (v76)
    {
      sub_10000E984(v76);
    }

    if (v75)
    {
      sub_10000E984(v75);
    }

    if (v73)
    {
      sub_10000E984(v73);
    }

    if (v72)
    {
      sub_10000E984(v72);
    }

    if ((v11 | 2) != 2)
    {
      goto LABEL_64;
    }
  }

  if (v85 == 1)
  {
    v42 = sub_1000F1D58(a1, a2, &v83[1]);
    v12 = v54;
    v43 = v42 | v83[0];
    v83[0] = (v42 | v83[0]) & 1;
    if (v43)
    {
      v44 = *(*&v83[1] + 8);
      v45 = *(a1 + 8);
      v46 = *(v45 + 56);
      sub_1000F580C(a1, a2, v46 + (v46 + 1) * (((*(*&v83[1] + 352) + (*(v44 + 56) + *(v44 + 56) * v84) / (*(v44 + 56) + 1) * *(v44 + 28)) / *(v44 + 26) - *(a1 + 352) / *(v45 + 26)) / (v46 * (*(v45 + 28) / *(v45 + 26)))));
    }
  }

  else
  {
    v12 = v54;
  }

LABEL_64:
  if (v82)
  {
    sub_10000E984(v82);
  }

  if (v80)
  {
    sub_10000E984(v80);
  }

  return v12;
}

void sub_1000F8784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_1001926F4(&a15);
  sub_1000F9A04(&a19);
  sub_10019254C(&a23);
  sub_1000F9A44(&a26);
  sub_100076574(&STACK[0x2B8]);
  sub_10000FF88(&STACK[0x488]);
  _Unwind_Resume(a1);
}

void *sub_1000F8894(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100124E28(a1, a2);
  *a1 = off_100212FB0;
  a1[45] = &off_1002130B0;
  a1[46] = &off_1002130D8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100212FB0;
  a1[45] = off_100213038;
  a1[46] = off_100213060;
  return a1;
}

void sub_1000F8998(_Unwind_Exception *a1)
{
  sub_10010C864(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F89BC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010C864(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000F8A00(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100124EF0(a1, a2);
  *a1 = off_1002131D0;
  a1[45] = &off_1002132D0;
  a1[46] = &off_1002132F8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002131D0;
  a1[45] = off_100213258;
  a1[46] = off_100213280;
  return a1;
}

void sub_1000F8B04(_Unwind_Exception *a1)
{
  sub_10010CFFC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F8B28(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010CFFC(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000F8B6C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100124FB8(a1, a2);
  *a1 = off_1002133F0;
  a1[45] = &off_1002134F0;
  a1[46] = &off_100213518;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002133F0;
  a1[45] = off_100213478;
  a1[46] = off_1002134A0;
  return a1;
}

void sub_1000F8C70(_Unwind_Exception *a1)
{
  sub_10010D794(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F8C94(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010D794(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000F8CD8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a1[1];
  v5 = *(*a1 + 8);
  v6 = *(v5 + 28);
  if (!((*(*(*a1 + 56) + 16 * v4 + 8) & 0x7FFFFFFFFFFFFFLL) * v6))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v43 = sub_100001940(exception, "ASIF: No data offset found (write)", 0xFFFFFFEA);
  }

  *&v105 = *(*a1 + 352) + (*(v5 + 56) + *(v5 + 56) * v4) / (*(v5 + 56) + 1) * v6;
  *(&v105 + 1) = v105 + v6;
  LOBYTE(v106) = 2;
  sub_10002EA5C(a3, &v105, a4, v68);
  if (sub_10002DE0C(v68, &v71))
  {
    v10 = -34;
  }

  else
  {
    __p = v123;
    v122 = xmmword_1001BC760;
    v11 = *(a3 + 136);
    v105 = *(a3 + 120);
    v106 = v11;
    v107 = *(a3 + 152);
    v108 = *(a3 + 168);
    v12 = *(a3 + 184);
    v109 = *(a3 + 176);
    v110 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v111 = *(a3 + 192);
    v13 = a4[15];
    v14 = a4[16];
    v15 = a4[17];
    v16 = a4[23];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = 0;
    for (i = 0; ; ++i)
    {
      v19 = v105 == v13 && *(&v105 + 1) == v14;
      if (v19 && v106 == v15)
      {
        break;
      }

      v17 += 24;
      sub_10002D8EC(&v105);
    }

    if (v16)
    {
      sub_10000E984(v16);
    }

    if (v110)
    {
      sub_10000E984(v110);
    }

    if (*(&v122 + 1) < i)
    {
      if (i >= 0x555555555555556)
      {
        sub_100012CFC("get_next_capacity, allocator's max size reached");
      }

      v21 = operator new(v17);
      sub_10005FFD8(&__p, v21, i, __p + 24 * v122, 0, 0);
    }

    sub_1000302E0(v57, a3);
    sub_1000302E0(v46, a4);
    sub_100030464(&v85, v57);
    v87 = v59;
    v88 = v60;
    v89 = v61;
    v90 = v62;
    v91 = v63;
    v22 = v64;
    v64 = 0uLL;
    v92 = v22;
    v93 = v65;
    v95 = v67;
    v94 = v66;
    sub_100030464(v74, v46);
    v23 = 0;
    v24 = 0;
    v76 = v48;
    v77 = v49;
    v78 = v50;
    v79 = v51;
    v80 = v52;
    v25 = v53;
    v53 = 0uLL;
    v81 = v25;
    v82 = v54;
    v26 = v55;
    v84 = v56;
    v83 = v55;
    LOBYTE(v105) = 0;
    v117 = 0;
    while (!sub_10002DE0C(&v85, v74))
    {
      if (v94 >= v26 || v24 == -1)
      {
        break;
      }

      if (sub_1000E9608())
      {
        *&v101 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/disk_images/formats/asif.cpp:1990:32)]";
        *(&v101 + 1) = 104;
        LODWORD(v102) = 2;
        sub_1000339C8(&v97, &v101);
        sub_100001FE8(v100, "sg: ", 4);
        sub_100192838(v100, &v85);
        std::ostream::~ostream();
        sub_100033C40(&v97);
        std::ios::~ios();
      }

      v97 = 0;
      v98 = v26;
      v99 = 2;
      sub_100093990(&v85, &v97, &v101);
      v28 = *(*(*a1 + 8) + 28);
      sub_100093AE4(&v97, &v101, v102, 0, v103 % v28 + (*(*(*a1 + 56) + 16 * a1[1] + 8) & 0x7FFFFFFFFFFFFFLL) * v28, v104);
      (*(**(a2 + 16) + 144))(v118);
      v29 = __p + 24 * v122;
      if (v122 == *(&v122 + 1))
      {
        sub_1000624F4(&__p, v29, 1, v118, &v120);
      }

      else
      {
        *v29 = 0;
        v29[4] = 0;
        *(v29 + 1) = 0;
        if (BYTE4(v118[0]) == 1)
        {
          *v29 = v118[0];
          v29[4] = 1;
        }

        *(v29 + 2) = v119;
        v119 = 0;
        v30 = *(v29 + 2);
        if (v30)
        {
          *v30 = v29;
        }

        *&v122 = v122 + 1;
      }

      v31 = v103;
      v32 = v102;
      if (v98)
      {
        sub_10000E984(v98);
      }

      v33 = v32 >= 0 || v32 == 0;
      v34 = v33;
      if (v33)
      {
        if ((v23 & 1) == 0)
        {
          v23 = 1;
        }

        if (sub_10002F220(&v85, v74, v31, v32))
        {
          sub_1000302E0(v96, &v85);
          sub_10002F174(v96, v74, v31, v32, 0xFFFFFFFFFFFFFFFFLL, &v97);
          sub_100033B34(&v105, &v97);
          sub_10002F23C(&v97);
          sub_10000FF88(v96);
          sub_10002E310(&v105, &v97);
          sub_100030B94(&v85, &v97);
          sub_10000FF88(&v97);
          sub_10002DF68(&v105, &v97);
          sub_100030B94(v74, &v97);
          sub_10000FF88(&v97);
        }

        sub_10002E6D0(&v85, v32);
        v24 += v32;
      }

      else
      {
        if (v32 >= 0)
        {
          v35 = v32;
        }

        else
        {
          v35 = -v32;
        }

        v44 = -v35;
      }

      if (*(&v101 + 1))
      {
        sub_10000E984(*(&v101 + 1));
      }

      if ((v34 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    v44 = v24;
LABEL_63:
    v10 = v44;
    if (v117 == 1)
    {
      if (v116)
      {
        sub_10000E984(v116);
      }

      if (v115)
      {
        sub_10000E984(v115);
      }

      if (v114)
      {
        sub_10000E984(v114);
      }

      if (v113)
      {
        sub_10000E984(v113);
      }

      if (v112)
      {
        sub_10000E984(v112);
      }

      if (v111)
      {
        sub_10000E984(v111);
      }
    }

    if (*(&v81 + 1))
    {
      sub_10000E984(*(&v81 + 1));
    }

    if (v75)
    {
      sub_10000E984(v75);
    }

    if (*(&v92 + 1))
    {
      sub_10000E984(*(&v92 + 1));
    }

    if (v86)
    {
      sub_10000E984(v86);
    }

    if (*(&v53 + 1))
    {
      sub_10000E984(*(&v53 + 1));
    }

    if (v47)
    {
      sub_10000E984(v47);
    }

    if (*(&v64 + 1))
    {
      sub_10000E984(*(&v64 + 1));
    }

    if (v58)
    {
      sub_10000E984(v58);
    }

    if ((v44 & 0x8000000000000000) == 0 || !v44)
    {
      (*(**(a2 + 16) + 152))(*(a2 + 16));
      if (v122)
      {
        v36 = 0;
        v37 = __p;
        v38 = 24 * v122;
        do
        {
          v39 = sub_100044D64(v37);
          if (v39 < 0)
          {
            break;
          }

          v36 += v39;
          v37 += 6;
          v39 = v36;
          v38 -= 24;
        }

        while (v38);
      }

      else
      {
        v39 = 0;
      }

      if (v44 != v39)
      {
        if (v39 < 0)
        {
          v40 = v39;
        }

        else
        {
          v40 = -5;
        }

        v10 = --v40;
      }
    }

    if (*(&v122 + 1) && v123 != __p)
    {
      operator delete(__p);
    }
  }

  if (v73)
  {
    sub_10000E984(v73);
  }

  if (v72)
  {
    sub_10000E984(v72);
  }

  if (v70)
  {
    sub_10000E984(v70);
  }

  if (v69)
  {
    sub_10000E984(v69);
  }

  return v10;
}

void sub_1000F9488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000FF88(&STACK[0x640]);
  if (STACK[0x918])
  {
    sub_10000E984(STACK[0x918]);
  }

  sub_10002F2A8(&STACK[0x980]);
  sub_10000FF88(&STACK[0x3A0]);
  sub_10000FF88(&STACK[0x480]);
  sub_10000FF88(&a13);
  sub_10000FF88(&a41);
  if (STACK[0xC90])
  {
    if (a10 != STACK[0xC80])
    {
      operator delete(STACK[0xC80]);
    }
  }

  sub_100076574(&a65);
  _Unwind_Resume(a1);
}

void sub_1000F95A0()
{
  if (v0)
  {
    sub_10000E984(v0);
  }

  if (STACK[0x9C0])
  {
    sub_10000E984(STACK[0x9C0]);
  }

  JUMPOUT(0x1000F9574);
}

void *sub_1000F95C0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100125080(a1, a2);
  *a1 = off_100213610;
  a1[45] = &off_100213710;
  a1[46] = &off_100213738;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100213610;
  a1[45] = off_100213698;
  a1[46] = off_1002136C0;
  return a1;
}

void sub_1000F96C4(_Unwind_Exception *a1)
{
  sub_10010DF2C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F96E8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010DF2C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000F972C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100125148(a1, a2);
  *a1 = off_100213830;
  a1[45] = &off_100213930;
  a1[46] = &off_100213958;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100213830;
  a1[45] = off_1002138B8;
  a1[46] = off_1002138E0;
  return a1;
}

void sub_1000F9830(_Unwind_Exception *a1)
{
  sub_10010E6C4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F9854(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010E6C4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000F9898(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100125210(a1, a2);
  *a1 = off_100213A50;
  a1[45] = &off_100213B50;
  a1[46] = &off_100213B78;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100213A50;
  a1[45] = off_100213AD8;
  a1[46] = off_100213B00;
  return a1;
}

void sub_1000F999C(_Unwind_Exception *a1)
{
  sub_10010EE5C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F99C0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010EE5C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000F9A04(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x8000000000000000) == 0 || !v2)
  {
    sub_10002E60C(*a1, v2);
  }

  return a1;
}

uint64_t **sub_1000F9A44(uint64_t **a1)
{
  v2 = *a1;
  if (*(*a1 + 16) == 1)
  {
    v3 = a1[3];
    v4 = a1[1];
    if (*(*v4 + 352) != *(*v2 + 352) || v4[1] != v2[1])
    {
      v5 = sub_1000F1D58(a1[3], a1[4], v2);
      v6 = a1[2];
      v7 = (v5 & 1) != 0 ? 1 : *v6;
      *v6 = v7 & 1;
      v2 = *a1;
      v8 = a1[1];
      v9 = **a1;
      v10 = *(v9 + 352);
      v11 = *(v9 + 8);
      v12 = (v10 + (*(v11 + 56) + *(v11 + 56) * (*a1)[1]) / (*(v11 + 56) + 1) * *(v11 + 28)) / *(v11 + 26);
      v13 = v3[1];
      v14 = *(v13 + 56);
      v15 = *(v13 + 28);
      v16 = *(v13 + 26);
      v17 = v14 * (v15 / v16);
      v18 = v3[44] / v16;
      ++v14;
      v19 = v14 + v14 * ((v12 - v18) / v17);
      v20 = *(*v8 + 8);
      if (v19 != v14 + v14 * (((*(*v8 + 352) + (*(v20 + 56) + *(v20 + 56) * v8[1]) / (*(v20 + 56) + 1) * *(v20 + 28)) / *(v20 + 26) - v18) / v17) && (v7 & 1) != 0)
      {
        sub_1000F580C(v3, a1[4], v19 - 1);
        *a1[2] = 0;
        v2 = *a1;
      }
    }
  }

  v21 = a1[1];
  if (*(v2 + 16) == 1)
  {
    v2[1] = v21[1];
  }

  else
  {
    *v2 = *v21;
    *(v2 + 16) = 1;
  }

  return a1;
}

uint64_t sub_1000F9BC0(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v32 = v4;
  v5 = v1;
  v7 = *(v6 + 24);
  sub_1000302E0(&v47, v6);
  *&v51 = -78;
  LOBYTE(v55[0]) = 0;
  v59 = 0;
  sub_1000302E0(&v60, &v47);
  sub_1000302E0(v61, &v47);
  v33 = 0;
  v62 = v32;
  v63[0] = &v64;
  v63[1] = 0;
  v63[2] = 16;
  LOBYTE(v65) = 0;
  v66 = 0;
  v67 = &v70;
  v68 = 0;
  v69 = 16;
  v71 = 0;
  v46[0] = v55;
  v46[1] = &v51;
  v46[2] = v32;
  while (!sub_10002DE0C(&v47, v3))
  {
    *&v45 = sub_1000F1428(v5, v49);
    *(&v45 + 1) = v8;
    v9 = *(v45 + 8);
    v10 = *(v9 + 56);
    v11 = *(v9 + 28);
    *&v72 = *(v45 + 352) + (v10 + v10 * v8) / (v10 + 1) * v11;
    *(&v72 + 1) = v72 + v11;
    LOBYTE(v73) = 2;
    sub_10002EA5C(&v47, &v72, v3, &v39);
    if (!sub_10002DE0C(&v39, &v42))
    {
      if (v66 == 1 && !sub_1000FB658(&v45, &v65) && (v19 = sub_10010FC84(v55), v19 < 0) && v19)
      {
        *&v34 = v19;
        *(&v34 + 1) = v20;
        v35 = v55;
        v36 = 0;
        v37[0] = 0;
        v38 = 0;
      }

      else
      {
        v65 = v45;
        v66 = 1;
        v13 = (*(v45 + 56) + 16 * *(&v45 + 1));
        v14 = sub_100111FBC(v13);
        *&v81 = off_100225868;
        *(&v81 + 1) = v13;
        LOBYTE(v82) = v14;
        if (v14)
        {
          v15 = 0;
        }

        else
        {
          *&v52 = "di_asif::details::table::read(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)::data_entries_vectorizer_t::add_data_entry(const data_entry_t &)";
          *(&v52 + 1) = 139;
          v53 = 16;
          sub_10010FD9C(&v72, &v52);
          sub_100001FE8(v78, "Couldn't lock entry ", 20);
          sub_1000F5C70(v78, &v45);
          std::ostream::~ostream();
          sub_100110068(&v72);
          std::ios::~ios();
          v15 = -5;
        }

        v16 = atomic_load((*(v65 + 56) + 16 * *(&v65 + 1) + 8));
        *&v34 = v15;
        v35 = v55;
        v36 = v16 >> 62;
        sub_1001924B4(v37, &v81);
        v38 = 1;
        sub_10019254C(&v81);
      }

      v51 = v34;
      v17 = v34;
      v18 = v34;
      if ((v34 & 0x8000000000000000) != 0 && v34)
      {
        v12 = 0;
LABEL_64:
        sub_1000FAF94(&v34);
        goto LABEL_65;
      }

      if (v36 <= 1)
      {
        if (v36)
        {
          if (v36 == 1)
          {
LABEL_57:
            sub_1000FA788(&v45, v32, &v39, &v42, v63, &v72);
            v51 = v72;
            v17 = v72;
            v18 = v72;
            if ((v72 & 0x8000000000000000) == 0 || !v51)
            {
              v71 += v73;
            }
          }

LABEL_60:
          if ((v17 & 0x8000000000000000) != 0 && v18)
          {
            v12 = 0;
            v71 = 0;
          }

          else
          {
            sub_10002E60C(&v47, v17);
            sub_10010FF08(v61, &v47);
            v33 += v17;
            v12 = 1;
          }

          goto LABEL_64;
        }

LABEL_26:
        v17 = sub_1000FAE98(&v45, &v39, &v42);
        *&v51 = v17;
        *(&v51 + 1) = v23;
        v18 = v17;
        goto LABEL_60;
      }

      if (v36 == 2)
      {
        goto LABEL_26;
      }

      if (v36 != 3)
      {
        goto LABEL_60;
      }

      v21 = *(v45 + 8);
      v22 = (*(v45 + 352) + (*(v21 + 56) + *(v21 + 56) * *(&v45 + 1)) / (*(v21 + 56) + 1) * *(v21 + 28)) / *(v21 + 26);
      if (v59 == 1)
      {
        if (*(v55[0] + 40) == (v22 - v5[44] / *(v5[1] + 26)) / (*(v5[1] + 56) * (*(v5[1] + 28) / *(v5[1] + 26))))
        {
          v17 = 0;
          goto LABEL_45;
        }

        v26 = sub_100110800(v55);
        v31 = v27;
        v17 = v26;
        if (v26 < 0 && v26)
        {
          v28 = v27;
          goto LABEL_55;
        }

        if (v59)
        {
LABEL_45:
          sub_10003052C(&v72, &v39, &v42);
          if (v57 == *(&v57 + 1))
          {
            sub_100111020(&v56, &v56[56 * v57], 1, &v72, &v81);
            v28 = v31;
          }

          else
          {
            sub_1001110D4(&v56[56 * v57], &v72);
            v28 = v31;
            *&v57 = v57 + 1;
          }

          if (v79)
          {
            sub_10000E984(v79);
          }

          if (v77)
          {
            sub_10000E984(v77);
          }

          if (v76)
          {
            sub_10000E984(v76);
          }

          if (*(&v72 + 1))
          {
            sub_10000E984(*(&v72 + 1));
          }

          goto LABEL_55;
        }
      }

      else
      {
        v17 = 0;
      }

      *&v81 = 0;
      *(&v81 + 1) = v5;
      v82 = &v84;
      v83 = xmmword_1001BC760;
      sub_1000F226C(v5, v62, v22, 0, &v52);
      sub_1000F29DC(&v81, &v52);
      sub_1000F0B1C(&v52);
      if (v81 && (*(v81 + 344) & 1) == 0)
      {
        sub_100110858(&v72, &v81);
        *(&v72 + 1) = *(&v81 + 1);
        v73 = &v75;
        v74 = xmmword_1001BC760;
        *&v52 = v82;
        v54 = &v82[56 * v83];
        sub_100110BE8(&v73, &v52, &v54);
        v25 = 1;
      }

      else
      {
        v24 = std::generic_category();
        v25 = 0;
        *&v72 = 5;
        *(&v72 + 1) = v24;
      }

      v28 = 7208;
      v80 = v25;
      sub_10010F35C(&v81);
      if (v80)
      {
        if (v59 == 1)
        {
          sub_10010F35C(v55);
          v59 = 0;
        }

        sub_100110858(v55, &v72);
        v55[1] = *(&v72 + 1);
        v56 = &v58;
        v57 = xmmword_1001BC760;
        *&v81 = v73;
        *&v52 = &v73[56 * v74];
        sub_100110BE8(&v56, &v81, &v52);
        v59 = 1;
        if (v80)
        {
          sub_10010F35C(&v72);
        }

        goto LABEL_45;
      }

      if (v72 >= 0)
      {
        v29 = v72;
      }

      else
      {
        v29 = -v72;
      }

      v17 = -v29;
LABEL_55:
      *&v51 = v17;
      *(&v51 + 1) = v28;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_57;
      }

      v18 = v17;
      if (!v17)
      {
        goto LABEL_57;
      }

      goto LABEL_60;
    }

    *&v81 = "di_asif::details::table::read(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
    *(&v81 + 1) = 29;
    LODWORD(v82) = 16;
    sub_1000FA61C(&v72, &v81);
    sub_100001FE8(v78, "Couldn't trim entry in read ", 28);
    sub_100192838(v78, &v47);
    std::ostream::~ostream();
    sub_10010F784(&v72);
    std::ios::~ios();
    v12 = 0;
    *&v51 = -34;
LABEL_65:
    if (v44)
    {
      sub_10000E984(v44);
    }

    if (v43)
    {
      sub_10000E984(v43);
    }

    if (v41)
    {
      sub_10000E984(v41);
    }

    if (v40)
    {
      sub_10000E984(v40);
    }

    if ((v12 & 1) == 0)
    {
      break;
    }
  }

  if ((v51 & 0x8000000000000000) == 0 || !v51)
  {
    *&v51 = v33;
    *(&v51 + 1) = v7;
  }

  sub_1000FB05C(v46);
  sub_1000FB0B0(v55);
  if (v50)
  {
    sub_10000E984(v50);
  }

  if (v48)
  {
    sub_10000E984(v48);
  }

  return v51;
}

void sub_1000FA488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_10010F3F0(v28 + 16);
  sub_1000F0B1C(&STACK[0x24E0]);
  sub_10010F35C(&STACK[0x4110]);
  sub_1000FAF94(&a20);
  sub_100076574(&a28);
  sub_1000FB05C(&STACK[0x268]);
  sub_1000FB0B0(&STACK[0x390]);
  sub_10000FF88(&STACK[0x280]);
  _Unwind_Resume(a1);
}

void *sub_1000FA61C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001252D8(a1, a2);
  *a1 = off_100213C70;
  a1[45] = &off_100213D70;
  a1[46] = &off_100213D98;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100213C70;
  a1[45] = off_100213CF8;
  a1[46] = off_100213D20;
  return a1;
}

void sub_1000FA720(_Unwind_Exception *a1)
{
  sub_10010F784(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FA744(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010F784(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000FA788(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = *(*a1 + 8);
  v11 = *(v10 + 56);
  v12 = *(v10 + 28);
  v96[0] = *(*a1 + 352) + (v11 + v11 * a1[1]) / (v11 + 1) * v12;
  v96[1] = v96[0] + v12;
  v97 = 2;
  sub_10002EA5C(a3, v96, a4, v57);
  if (sub_10002DE0C(v57, &v61))
  {
    *a6 = -34;
LABEL_83:
    a6[2] = 0;
    goto LABEL_84;
  }

  if (!((*(*(*a1 + 56) + 16 * a1[1] + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a1 + 8) + 28)))
  {
    v30 = sub_10002FBF0(v57, &v61);
    v31 = v59;
    *a6 = v30;
    a6[1] = v31;
    goto LABEL_83;
  }

  sub_1000302E0(v46, v57);
  sub_1000302E0(v35, &v61);
  sub_100030464(&v75, v46);
  v33 = a6;
  v77 = v48;
  v78 = v49;
  v79 = v50;
  v80 = v51;
  v81 = v52;
  v13 = v53;
  v53 = 0uLL;
  v82 = v13;
  v83 = v54;
  v85 = v56;
  v84 = v55;
  sub_100030464(v64, v35);
  v34 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v66 = v37;
  v67 = v38;
  v68 = v39;
  v69 = v40;
  v70 = v41;
  v17 = v42;
  v42 = 0uLL;
  v71 = v17;
  v72 = v43;
  v18 = v44;
  v74 = v45;
  v73 = v44;
  LOBYTE(v96[0]) = 0;
  v104 = 0;
  while (!sub_10002DE0C(&v75, v64))
  {
    if (v84 >= v18 || v16 == -1)
    {
      break;
    }

    if (sub_1000E9608())
    {
      *&v107 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/disk_images/formats/asif.cpp:1954:32)]";
      *(&v107 + 1) = 104;
      LODWORD(v108) = 2;
      sub_1000339C8(&v87, &v107);
      sub_100001FE8(v90, "sg: ", 4);
      sub_100192838(v90, &v75);
      std::ostream::~ostream();
      sub_100033C40(&v87);
      std::ios::~ios();
    }

    v87 = 0;
    v88 = v18;
    v89 = 2;
    sub_100093990(&v75, &v87, v91);
    v20 = *(*(*a1 + 8) + 28);
    sub_100093AE4(&v87, v91, v93, 0, v94 % v20 + (*(*(*a1 + 56) + 16 * a1[1] + 8) & 0x7FFFFFFFFFFFFFLL) * v20, v95);
    v21 = (*(**(a2 + 16) + 40))(*(a2 + 16));
    v105[0] = 0;
    v105[1] = v21;
    LOBYTE(v106) = 2;
    sub_100093990(&v87, v105, &v107);
    if (v108)
    {
      (*(**(a2 + 16) + 136))(v105);
      v22 = a5[1];
      v23 = *a5 + 24 * v22;
      if (v22 == a5[2])
      {
        sub_1000624F4(a5, v23, 1, v105, &v109);
      }

      else
      {
        *v23 = 0;
        *(v23 + 4) = 0;
        *(v23 + 8) = 0;
        if (BYTE4(v105[0]) == 1)
        {
          *v23 = v105[0];
          *(v23 + 4) = 1;
        }

        *(v23 + 16) = v106;
        v106 = 0;
        v24 = *(v23 + 16);
        if (v24)
        {
          *v24 = v23;
        }

        ++a5[1];
      }

      v34 += v108;
    }

    v25 = v94;
    v26 = v93;
    if (*(&v107 + 1))
    {
      sub_10000E984(*(&v107 + 1));
    }

    if (v88)
    {
      sub_10000E984(v88);
    }

    v27 = v26 >= 0 || v26 == 0;
    v28 = v27;
    if (v27)
    {
      if ((v15 & 1) == 0)
      {
        v14 = v25;
        v15 = 1;
      }

      if (sub_10002F220(&v75, v64, v25, v26))
      {
        sub_1000302E0(v86, &v75);
        sub_10002F174(v86, v64, v25, v26, 0xFFFFFFFFFFFFFFFFLL, &v87);
        sub_100033B34(v96, &v87);
        sub_10002F23C(&v87);
        sub_10000FF88(v86);
        sub_10002E310(v96, &v87);
        sub_100030B94(&v75, &v87);
        sub_10000FF88(&v87);
        sub_10002DF68(v96, &v87);
        sub_100030B94(v64, &v87);
        sub_10000FF88(&v87);
      }

      sub_10002E6D0(&v75, v26);
      v16 += v26;
    }

    else
    {
      if (v26 >= 0)
      {
        v29 = v26;
      }

      else
      {
        v29 = -v26;
      }

      v32 = -v29;
    }

    if (v92)
    {
      sub_10000E984(v92);
    }

    if ((v28 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  if (v15)
  {
    v26 = v14;
  }

  else
  {
    v26 = 0;
  }

  v32 = v16;
LABEL_50:
  if (v104 == 1)
  {
    if (v103)
    {
      sub_10000E984(v103);
    }

    if (v102)
    {
      sub_10000E984(v102);
    }

    if (v101)
    {
      sub_10000E984(v101);
    }

    if (v100)
    {
      sub_10000E984(v100);
    }

    if (v99)
    {
      sub_10000E984(v99);
    }

    if (v98)
    {
      sub_10000E984(v98);
    }
  }

  if (*(&v71 + 1))
  {
    sub_10000E984(*(&v71 + 1));
  }

  if (v65)
  {
    sub_10000E984(v65);
  }

  if (*(&v82 + 1))
  {
    sub_10000E984(*(&v82 + 1));
  }

  if (v76)
  {
    sub_10000E984(v76);
  }

  if (*(&v42 + 1))
  {
    sub_10000E984(*(&v42 + 1));
  }

  if (v36)
  {
    sub_10000E984(v36);
  }

  if (*(&v53 + 1))
  {
    sub_10000E984(*(&v53 + 1));
  }

  if (v47)
  {
    sub_10000E984(v47);
  }

  *v33 = v32;
  v33[1] = v26;
  if (v32 < 0 && v32)
  {
    v33[2] = 0;
  }

  else
  {
    v33[2] = v34;
  }

LABEL_84:
  if (v63)
  {
    sub_10000E984(v63);
  }

  if (v62)
  {
    sub_10000E984(v62);
  }

  if (v60)
  {
    sub_10000E984(v60);
  }

  if (v58)
  {
    sub_10000E984(v58);
  }
}

void sub_1000FAD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000FF88(&STACK[0x640]);
  if (STACK[0x918])
  {
    sub_10000E984(STACK[0x918]);
  }

  sub_10002F2A8(&STACK[0x980]);
  sub_10000FF88(&STACK[0x3A0]);
  sub_10000FF88(&STACK[0x480]);
  sub_10000FF88(&a13);
  sub_10000FF88(&a41);
  sub_100076574(&a65);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FAE98(void *a1, void *a2, uint64_t a3)
{
  v3 = *(*a1 + 8);
  v4 = *(v3 + 56);
  v5 = *(v3 + 28);
  v8[0] = *(*a1 + 352) + (v4 + v4 * a1[1]) / (v4 + 1) * v5;
  v8[1] = v8[0] + v5;
  v9 = 2;
  sub_10002EA5C(a2, v8, a3, v10);
  if (sub_10002DE0C(v10, &v14))
  {
    v6 = -34;
  }

  else
  {
    sub_10002FBF0(v10, &v14);
    v6 = (v17 - v13) & ~((v17 - v13) >> 63);
  }

  if (v16)
  {
    sub_10000E984(v16);
  }

  if (v15)
  {
    sub_10000E984(v15);
  }

  if (v12)
  {
    sub_10000E984(v12);
  }

  if (v11)
  {
    sub_10000E984(v11);
  }

  return v6;
}

void sub_1000FAF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100076574(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FAF94(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 16);
    if (*(v2 + 8104) == 1 && (*(a1 + 24) | 2) != 2)
    {
      v3 = *(v2 + 8120);
      if (v3 == *(v2 + 8128))
      {
        sub_100111478((v2 + 8112), *(v2 + 8112) + 24 * v3, 1, a1 + 32, &v5);
      }

      else
      {
        sub_1001924B4(*(v2 + 8112) + 24 * v3, a1 + 32);
        ++*(v2 + 8120);
      }
    }
  }

  if (*(a1 + 56) == 1)
  {
    sub_10019254C(a1 + 32);
  }

  return a1;
}

uint64_t *sub_1000FB05C(uint64_t *a1)
{
  v2 = sub_100110800(*a1);
  if (v2 < 0)
  {
    if (v2)
    {
      v4 = a1[1];
      if ((*v4 & 0x8000000000000000) == 0 || !*v4)
      {
        *v4 = v2;
        v4[1] = v3;
      }
    }
  }

  return a1;
}

uint64_t sub_1000FB0B0(uint64_t a1)
{
  sub_100111794(a1 + 8112);
  if (*(a1 + 7696))
  {
    v2 = *(a1 + 7680);
    if ((a1 + 7704) != v2)
    {
      operator delete(v2);
    }
  }

  v3 = *(a1 + 7624);
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = *(a1 + 7448);
  if (v4)
  {
    sub_10000E984(v4);
  }

  v5 = *(a1 + 7400);
  if (v5)
  {
    sub_10000E984(v5);
  }

  v6 = *(a1 + 7224);
  if (v6)
  {
    sub_10000E984(v6);
  }

  if (*(a1 + 7208) == 1)
  {
    sub_10010F35C(a1);
  }

  return a1;
}

uint64_t sub_1000FB148(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 32);
  v20 = off_1002117E8;
  v21 = v2;
  (*(**(v2 + 16) + 80))(&v22);
  if (*(v21 + 8))
  {
    v4 = 4294967290;
  }

  else
  {
    if (atomic_load((a1 + 96)))
    {
      LODWORD(v6) = (*(*v22 + 16))(v22, 0);
      if (v6)
      {
        sub_1000F4990(&v20);
        exception = __cxa_allocate_exception(0x40uLL);
        v15 = exception;
        if (v6 < 0)
        {
          v6 = v6;
        }

        else
        {
          v6 = -v6;
        }

        *exception = &off_1002260F0;
        v16 = std::generic_category();
        v15[1] = v6;
        v15[2] = v16;
        *(v15 + 24) = 0;
        *(v15 + 48) = 0;
        v15[7] = "Can't flush asif on table close, backend barrier failed";
      }

      sub_1000F7064(a1, &v20);
    }

    else
    {
      sub_1000F1CD0(a1, v3, v18);
      v8 = 1;
      while (v18[0] != v19[3] || v18[1] != v19[4])
      {
        if (v8)
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }

        v10 = sub_1000F6CD4(a1, &v20, v19, v9);
        sub_1000FB5C8(*(v19[0] + 56) + 16 * v19[1], 0, v17);
        v11 = v10 | v8 ^ 1;
        if (v11)
        {
          v12 = 1;
        }

        else
        {
          v12 = 3;
        }

        v13 = sub_1000F6CD4(a1, &v20, v19, v12);
        sub_1001926F4(v17);
        sub_1000F1360(v18);
        v8 = (v13 | v11) ^ 1;
      }
    }

    v4 = 0;
  }

  v20 = off_1002117E8;
  if (v23)
  {
    sub_10000E984(v23);
  }

  return v4;
}

void sub_1000FB380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, char a14)
{
  *(v15 - 96) = v14;
  v17 = *(v15 - 72);
  if (v17)
  {
    sub_10000E984(v17);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000FB45C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001253A0(a1, a2);
  *a1 = off_1002140B0;
  a1[45] = &off_1002141B0;
  a1[46] = &off_1002141D8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002140B0;
  a1[45] = off_100214138;
  a1[46] = off_100214160;
  return a1;
}

void sub_1000FB560(_Unwind_Exception *a1)
{
  sub_100111ABC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FB584(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100111ABC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000FB5C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  while (1)
  {
    if (!*v4)
    {
      v6 = 0;
      atomic_compare_exchange_strong(v4, &v6, 0xFFFFFFFFFFFFFFFFLL);
      if (!v6)
      {
        break;
      }
    }

    result = sub_100112030(v4, 1);
    if ((result & 1) == 0)
    {
      v7 = 0;
      goto LABEL_7;
    }
  }

  v7 = 1;
LABEL_7:
  *(a3 + 16) = v7;
  *a3 = off_100225888;
  *(a3 + 8) = v4;
  *(a3 + 24) = a2;
  return result;
}

BOOL sub_1000FB658(void *a1, void *a2)
{
  v2 = *(*(*a1 + 8) + 28);
  v3 = (*(*(*a1 + 56) + 16 * a1[1] + 8) & 0x7FFFFFFFFFFFFFLL) * v2;
  v4 = (*(*(*a2 + 56) + 16 * a2[1] + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a2 + 8) + 28);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5 || v3 == v4 + v2;
}

uint64_t sub_1000FB6BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  LODWORD(v2) = 0;
  v3 = *a1;
  v4 = 24 * v1;
  while (1)
  {
    v5 = sub_100044D64(v3);
    if ((v5 & 0x80000000) != 0)
    {
      break;
    }

    v2 = (v5 + v2);
    v3 += 6;
    v4 -= 24;
    if (!v4)
    {
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1000FB728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 113) != 1)
  {
    goto LABEL_14;
  }

  *(a1 + 113) = 0;
  v6 = *(a1 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

  v9 = *(a1 + 40);
  v10 = *(sub_100195B38() + 1);
  v17 = v9;
  v18 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = a4;
  v20 = v6;
  v21 = a4;
  v23 = 0;
  v24 = 0;
  v22 = 1;
  sub_100030254(v26, &v17);
  if (v18)
  {
    sub_10000E984(v18);
  }

  v11 = (*(**(a2 + 16) + 120))(*(a2 + 16), v26);
  v12 = v28;
  if (v28 != v11)
  {
    *&v15 = "di_asif::details::map_element::flush_locked(ContextASIF &, table *, size_t)";
    *(&v15 + 1) = 43;
    v16 = 16;
    sub_1000FB934(&v17, &v15);
    sub_100001FE8(v25, "backend write failed during locked flush of map element, error ", 63);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1001123BC(&v17);
    std::ios::~ios();
    *(a1 + 113) = 1;
    sub_1000F4990(a2);
    if (v11 < 0)
    {
      v6 = v11;
    }

    else
    {
      v6 = -v11;
    }
  }

  if (v27)
  {
    sub_10000E984(v27);
  }

  if (v12 == v11)
  {
LABEL_14:
    v6 = 0;
    if (a3 && (*(a1 + 112) & 1) != 0)
    {
      *(a1 + 112) = 0;
      sub_1000F3924(a3, *a1, *(a1 + 16));
      if (!*(a1 + 16))
      {
        v13 = *(a1 + 24);
        if (v13)
        {
          sub_1000F1BB0(a3, v13);
        }
      }

      return 0;
    }
  }

  return v6;
}

void sub_1000FB8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v15 = *(v13 - 168);
  if (v15)
  {
    sub_10000E984(v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000FB934(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100125468(a1, a2);
  *a1 = off_1002142D0;
  a1[45] = &off_1002143D0;
  a1[46] = &off_1002143F8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002142D0;
  a1[45] = off_100214358;
  a1[46] = off_100214380;
  return a1;
}

void sub_1000FBA38(_Unwind_Exception *a1)
{
  sub_1001123BC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FBA5C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001123BC(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000FBAA0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1[1] + *(*(a2 + 8) + 56) * *(*(a2 + 8) + 28);
  v30[0] = a1[1];
  v30[1] = v7;
  v31 = 2;
  sub_10002EA5C(a3, v30, a4, &v45);
  if (!sub_10002DE0C(&v45, &v50))
  {
    v8 = *(*(a2 + 8) + 26);
    v9 = v47 / v8 * v8;
    v19 = (v53 - v49) & ~((v53 - v49) >> 63);
    v10 = v19 + v47;
    v11 = (v8 + v19 + v47 - 1) / v8 * v8;
    if (v9 < v11)
    {
      v12 = v47 % v8;
      do
      {
        v13 = sub_1000F26A0(a1, a2, 1u, v9, v11);
        v14 = v13;
        if (v10 >= v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v10;
        }

        v16 = v9 + v12;
        if (v15 > v9 + v12)
        {
          if (v19 - ((v49 - a3[26]) & ~((v49 - a3[26]) >> 63)) >= v15 - (v9 + v12))
          {
            v17 = v15 - (v9 + v12);
          }

          else
          {
            v17 = v19 - ((v49 - a3[26]) & ~((v49 - a3[26]) >> 63));
          }

          sub_10002ED8C(&v45, v17 + v47, a4, 0, v38);
          sub_1000302E0(v27, v38);
          sub_10002F174(v27, &v42, v40, v17, 0xFFFFFFFFFFFFFFFFLL, v30);
          if (v29)
          {
            sub_10000E984(v29);
          }

          if (v28)
          {
            sub_10000E984(v28);
          }

          sub_10002E310(v30, v24);
          sub_10002DF68(v30, v21);
          sub_10002F478(v24, v21);
          if (v23)
          {
            sub_10000E984(v23);
          }

          if (v22)
          {
            sub_10000E984(v22);
          }

          if (v26)
          {
            sub_10000E984(v26);
          }

          if (v25)
          {
            sub_10000E984(v25);
          }

          if (v37)
          {
            sub_10000E984(v37);
          }

          if (v36)
          {
            sub_10000E984(v36);
          }

          if (v35)
          {
            sub_10000E984(v35);
          }

          if (v34)
          {
            sub_10000E984(v34);
          }

          if (v33)
          {
            sub_10000E984(v33);
          }

          if (v32)
          {
            sub_10000E984(v32);
          }

          if (v44)
          {
            sub_10000E984(v44);
          }

          if (v43)
          {
            sub_10000E984(v43);
          }

          if (v41)
          {
            sub_10000E984(v41);
          }

          if (v39)
          {
            sub_10000E984(v39);
          }
        }

        v18 = sub_1000F2748(a1, a2, 1u, v14, v11);
        v9 = v18;
        if (v18 >= v15 + v12)
        {
          sub_10002E60C(&v45, v18 - v16);
          v12 = 0;
        }
      }

      while (v9 < v10);
    }
  }

  if (v52)
  {
    sub_10000E984(v52);
  }

  if (v51)
  {
    sub_10000E984(v51);
  }

  if (v48)
  {
    sub_10000E984(v48);
  }

  if (v46)
  {
    sub_10000E984(v46);
  }
}

void sub_1000FBDE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[5];
  v7 = *(*(a3 + 8) + 28);
  v8 = a1[2];
  v9 = *(sub_100195B38() + 1);
  v15 = v6;
  v16 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v7;
  v18 = v8;
  v19 = v7;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v10 = (*(**(a2 + 16) + 128))(*(a2 + 16), &v15);
  if (v17 != v10)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v12 = exception;
    if (v10 < 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = -v10;
    }

    *exception = &off_1002260F0;
    v14 = std::generic_category();
    v12[1] = v13;
    v12[2] = v14;
    *(v12 + 24) = 0;
    *(v12 + 48) = 0;
    v12[7] = "Can't load bitmap from backend";
  }

  sub_1000FBF3C(a1, a3);
  if (v16)
  {
    sub_10000E984(v16);
  }
}

void sub_1000FBF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1000FBF3C(uint64_t *a1, uint64_t a2)
{
  sub_10010904C(v23, a2, *a1);
  v20 = v23[0];
  result = sub_1000F54C0(a2, &v20, v23);
  v5 = *(a2 + 8);
  v6 = *(v5 + 16);
  if (*(v6 + 160) != 1 || (v7 = (a1[1] / *(v5 + 26) - *(a2 + 352) / *(v5 + 26)) / (*(v5 + 56) * (*(v5 + 28) / *(v5 + 26))) + *(v5 + 72) * (*(a2 + 352) / *(v5 + 88)), result = sub_1000BAAA8(v6, v7), (result & 1) != 0) || v7 >= *(v6 + 16))
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
    result = sub_1000BABD4(v6, v7, 1);
  }

  v22 = v24;
  v20 = v23[0];
  v21 = v23[1];
  v9 = *(a2 + 8);
  v10 = *(v9 + 26);
  v11 = *(v9 + 28);
  v18 = 0u;
  v19 = 0u;
  if (2 * v11 / v10 * *(v9 + 56))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      if (!((v13 >> 1) * v10 % v11))
      {
        if (v13)
        {
          sub_1000F1488(&v20);
          v12 = 0;
        }

        v15 = atomic_load((*(v21 + 56) + 16 * *(&v21 + 1) + 8));
        v12 |= v15 >> 62 == 3;
        v14 += 2 * (v11 / v10);
      }

      v16 = sub_1000F2564(a1, v13);
      result = v13;
      if (v13 != v14)
      {
        *v25 = v16 & 1 | (((v16 >> 1) & 1) << 8);
        result = sub_1000BA540((a1 + 4), v13, v14, v25);
      }

      if ((v8 & v12) == 1)
      {
        if (v16 > 1)
        {
          v17 = &v19;
          if (v16 != 2)
          {
            v17 = &v19 + 8;
          }
        }

        else if (v16)
        {
          v17 = &v18 + 8;
        }

        else
        {
          v17 = &v18;
        }

        *v17 += (result - v13) >> 1;
      }

      v13 = result;
    }

    while (result < 2 * (*(*(a2 + 8) + 28) / *(*(a2 + 8) + 26)) * *(*(a2 + 8) + 56));
  }

  if (v8)
  {
    return sub_1000FC1AC(v6, &v18);
  }

  return result;
}

atomic_ullong *sub_1000FC1AC(atomic_ullong *result, unint64_t *a2)
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

  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  atomic_fetch_add_explicit(result + 15, *a2, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 16, v6, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 17, v7, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 18, v8, memory_order_relaxed);
  v9 = result[10];
  v10 = v9;
  atomic_compare_exchange_strong_explicit(result + 10, &v10, (v9 & 0xFFFFFFFF00000000 | (v9 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v10 != v9)
  {
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v11 == v10;
      v10 = v11;
    }

    while (!v5);
  }

  return result;
}

void *sub_1000FC27C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  *a1 = a4;
  v9 = *(a3 + 8);
  v10 = *(v9 + 56);
  v11 = *(v9 + 28);
  a1[1] = *(a3 + 352) + a4 / (v10 + 1) * v10 * v11;
  a1[2] = a5;
  a1[3] = 0;
  v12 = a6 ^ 1;
  sub_1000910A0(a1 + 4, 2 * v10 * (v11 / *(v9 + 26)), a6 ^ 1);
  a1[15] = 850045863;
  *(a1 + 56) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  a1[22] = 0;
  if (v12)
  {
    sub_1000FBDE0(a1, a2, a3);
  }

  else
  {
    *(a1 + 56) = 257;
    sub_10010904C(&v16, a3, *a1);
    atomic_fetch_or((*(v16 + 56) + 16 * v17 + 8), 0x8000000000000000);
    sub_10010904C(&v16, a3, *a1);
    atomic_fetch_or((*(v16 + 56) + 16 * v17 + 8), 0x4000000000000000uLL);
    v13 = *(a3 + 8);
    v14 = *(v13 + 16);
    if (*(v14 + 160) == 1)
    {
      sub_1000BABD4(v14, (a1[1] / *(v13 + 26) - *(a3 + 352) / *(v13 + 26)) / (*(v13 + 56) * (*(v13 + 28) / *(v13 + 26))) + *(v13 + 72) * (*(a3 + 352) / *(v13 + 88)), 1);
    }
  }

  return a1;
}

void sub_1000FC3FC(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  sub_1001128BC((v1 + 32));
  _Unwind_Resume(a1);
}

uint64_t sub_1000FC424(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(a2 + 8) + 8) & 1) == 0)
  {
    std::mutex::lock((a1 + 15));
    if (a3 && (sub_10010904C(&v17, a3, *a1), (atomic_fetch_and((*(v17 + 56) + 16 * v18 + 8), 0x7FFFFFFFFFFFFFFFuLL) & 0x8000000000000000) != 0))
    {
      v9 = 1;
    }

    else
    {
      if ((*(a1 + 113) & 1) == 0)
      {
        v4 = 0;
        if (*(a1 + 112) != 1)
        {
LABEL_16:
          std::mutex::unlock((a1 + 15));
          return v4;
        }
      }

      v9 = 0;
    }

    v10 = (*(**(a2 + 16) + 16))(*(a2 + 16), 0);
    if (v10)
    {
      sub_1000F4990(a2);
      exception = __cxa_allocate_exception(0x40uLL);
      v14 = exception;
      if (v10 < 0)
      {
        v15 = v10;
      }

      else
      {
        v15 = -v10;
      }

      *exception = &off_1002260F0;
      v16 = std::generic_category();
      v14[1] = v15;
      v14[2] = v16;
      *(v14 + 24) = 0;
      *(v14 + 48) = 0;
      v14[7] = "Can't flush asif on map element close, backend barrier failed";
    }

    v4 = sub_1000FB728(a1, a2, a3, a4);
    if (v4)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (a3 && v11)
    {
      sub_10010904C(&v17, a3, *a1);
      atomic_fetch_or((*(v17 + 56) + 16 * v18 + 8), 0x8000000000000000);
    }

    goto LABEL_16;
  }

  return 4294967290;
}

atomic_ullong *sub_1000FC5FC@<X0>(atomic_ullong *result@<X0>, uint64_t a2@<X1>, std::unique_lock<std::mutex>::mutex_type *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v7 = a6;
  v10 = result;
  v19 = a4;
  *a7 = 0;
  if (a4 || a5)
  {
    sub_1000FC784((result + 36), a3, &v18, a6);
    sub_1000FCA00(a7, &v18);
    result = sub_1000EFD00(&v18);
    v12 = *a7;
    if (*a7)
    {
      LOBYTE(v12) = *(v12 + 520) ^ 1;
    }

    if (v12 & 1) != 0 || (v7)
    {
      if (!*a7 || (v13 = atomic_load((*a7 + 24)), v13 != 2))
      {
        if (!*a7 || (*(*a7 + 520) & 1) == 0)
        {
          if (v19 | (*(v10[20] + 8 * a3) * *(v10 + 7)))
          {
            if (v19)
            {
              v14 = v19;
            }

            else
            {
              v14 = *(v10[20] + 8 * a3) * *(v10 + 7);
            }

            v18 = v10[11] * a3;
            v19 = v14;
            sub_1000FCAA4(a7, v10, (a2 + 16), &v19, &v18);
          }

          v15 = sub_1000F2A80(v10, a2, 1);
          v17 = v10[11] * a3;
          v18 = v15;
          v16 = 1;
          sub_1000FCA40(a7, v10, (a2 + 16), &v18, &v17, &v16);
        }
      }
    }
  }

  return result;
}

atomic_ullong *sub_1000FC784@<X0>(uint64_t a1@<X0>, std::unique_lock<std::mutex>::mutex_type *a2@<X1>, unint64_t *a3@<X8>, char a4@<W2>)
{
  v20 = 0;
  v21 = a2;
  sub_100125530(a1, a2, a4, &v18);
  if (v18 && (*(v18 + 520) & 1) == 0 || v18 && (*(v18 + 520) & 1) != 0)
  {
LABEL_5:
    *a3 = 0;
    v7 = atomic_exchange(&v18, 0);
  }

  else
  {
    v8 = *(a1 + 912);
    if ((v8 & 1) == 0 || v19 == (a1 + 936))
    {
      *a3 = 0;
      return sub_1000EFD00(&v18);
    }

    while ((v8 & 2) == 0)
    {
      sub_100125A04(a1, &v16, a2);
      v20 = v16;
      sub_1000FCA00(&v18, &v17);
      sub_1000EFD00(&v17);
      if (v18 && (*(v18 + 520) & 1) == 0)
      {
        goto LABEL_23;
      }

      v9 = sub_100125C10(a1);
      if (v9)
      {
        v20 = v9;
        sub_100125CB8(a1, v9, a2, &v16);
        sub_1000FCA00(&v18, &v16);
        sub_1000EFD00(&v16);
LABEL_23:
        std::mutex::lock((a1 + 952));
        v13 = sub_10012105C((a1 + 928), v19, &v21, &v21, &v20);
        if ((v14 & 1) == 0)
        {
          v13[5] = v20;
        }

        std::condition_variable::notify_all((a1 + 1016));
        std::mutex::unlock((a1 + 952));
        v22[0] = 0;
        v23 = 0;
        sub_100122AB4(a1, 0, v22);
        if (v23 == 1)
        {
          sub_100122DF0(v22);
        }

        goto LABEL_5;
      }

      v8 = *(a1 + 912);
      if ((v8 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v7 = (a1 + 104);
    *a3 = 0;
    v11 = atomic_load((a1 + 104));
    if (v11)
    {
      v12 = v11;
      while (1)
      {
        atomic_compare_exchange_strong(v7, &v12, v11 + 1);
        if (v12 == v11)
        {
          break;
        }

        v11 = v12;
        if (!v12)
        {
          goto LABEL_21;
        }
      }

      v15 = *(a1 + 608);
      if (v15)
      {
        *(a1 + 616) = atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_21:
      v7 = 0;
    }
  }

  atomic_store(v7, a3);
  return sub_1000EFD00(&v18);
}

void sub_1000FC98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100001A14(exception_object);
}

atomic_ullong *sub_1000FCA00(atomic_ullong *a1, atomic_ullong *a2)
{
  if (a2 != a1)
  {
    v3 = atomic_exchange(a2, 0);
    sub_1000EFD00(a1);
    atomic_store(v3, a1);
  }

  return a1;
}

void sub_1000FCA68(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 464))
    {
      sub_1001269E8(v2 + 440, v2);
    }
  }

  __cxa_rethrow();
}

void sub_1000FCACC(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 464))
    {
      sub_1001269E8(v2 + 440, v2);
    }
  }

  __cxa_rethrow();
}

unint64_t *sub_1000FCB08@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = atomic_load(result);
  if (v4 && *(v4 + 32) == a2)
  {
    v6 = atomic_load(result);
    sub_100126020(&v8, v6, 1);
    if (v8 && (*(v8 + 520) & 1) == 0)
    {
      v7 = *(v8 + 32);
      *a3 = 0;
      if (v7 == a2)
      {
        atomic_store(atomic_exchange(&v8, 0), a3);
      }
    }

    else
    {
      *a3 = 0;
    }

    return sub_1000EFD00(&v8);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void *sub_1000FCBA4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100126858(a1, a2);
  *a1 = off_1002144F0;
  a1[45] = &off_1002145F0;
  a1[46] = &off_100214618;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002144F0;
  a1[45] = off_100214578;
  a1[46] = off_1002145A0;
  return a1;
}

void sub_1000FCCA8(_Unwind_Exception *a1)
{
  sub_100112BAC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FCCCC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100112BAC(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000FCD10(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100126920(a1, a2);
  *a1 = off_100214710;
  a1[45] = &off_100214810;
  a1[46] = &off_100214838;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100214710;
  a1[45] = off_100214798;
  a1[46] = off_1002147C0;
  return a1;
}

void sub_1000FCE14(_Unwind_Exception *a1)
{
  sub_100113344(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FCE38(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100113344(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000FCE7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FD05C(a1 + 2088);
  if (v4 == -1)
  {
    return 4294967282;
  }

  if (v4 != 1 || ((v5 = (*(**(a2 + 16) + 16))(*(a2 + 16), 0), v5 < 0) ? (v6 = v5) : (v6 = -v5), !v5))
  {
    v7 = sub_1000FD268(a1 + 288);
    if (v7 != -1)
    {
      if (v7 != 1)
      {
        return 0;
      }

      v8 = (*(**(a2 + 16) + 16))(*(a2 + 16), 0);
      v6 = v8 < 0 ? v8 : -v8;
      if (!v8)
      {
        return 0;
      }

      *&v10 = "di_asif::details::dir::handle_all_failures(ContextASIF &)";
      *(&v10 + 1) = 42;
      v11 = 16;
      sub_1000FD308(v12, &v10);
      sub_100001FE8(v13, "Backend barrier failed during allocator failures handling, error ", 65);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_100114274(v12);
      goto LABEL_15;
    }

    return 4294967282;
  }

  *&v10 = "di_asif::details::dir::handle_all_failures(ContextASIF &)";
  *(&v10 + 1) = 42;
  v11 = 16;
  sub_1000FD0FC(v12, &v10);
  sub_100001FE8(v13, "Backend barrier failed during bitmap allocator failures handling, error ", 72);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_100113ADC(v12);
LABEL_15:
  std::ios::~ios();
  return v6;
}

void sub_1000FD038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000FD430(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FD05C(uint64_t a1)
{
  v3[0] = 0;
  v4 = 0;
  v1 = sub_10011FDA4(a1, 0, v3);
  if (v4 == 1)
  {
    sub_100121304(v3);
  }

  return v1;
}

void sub_1000FD0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    sub_100121304(&a9);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000FD0FC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100126A3C(a1, a2);
  *a1 = off_100214930;
  a1[45] = &off_100214A30;
  a1[46] = &off_100214A58;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100214930;
  a1[45] = off_1002149B8;
  a1[46] = off_1002149E0;
  return a1;
}

void sub_1000FD200(_Unwind_Exception *a1)
{
  sub_100113ADC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FD224(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100113ADC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000FD268(uint64_t a1)
{
  v3[0] = 0;
  v4 = 0;
  v1 = sub_100122AB4(a1, 0, v3);
  if (v4 == 1)
  {
    sub_100122DF0(v3);
  }

  return v1;
}

void sub_1000FD2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    sub_100122DF0(&a9);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000FD308(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100126B04(a1, a2);
  *a1 = off_100214B50;
  a1[45] = &off_100214C50;
  a1[46] = &off_100214C78;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100214B50;
  a1[45] = off_100214BD8;
  a1[46] = off_100214C00;
  return a1;
}

void sub_1000FD40C(_Unwind_Exception *a1)
{
  sub_100114274(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FD430(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100114274(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000FD474(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  std::mutex::lock((a1 + 3800));
  v6 = *(a1 + 3768);
  v54 = *(a1 + 3752);
  v55 = v6;
  *(a1 + 3752) = 0u;
  *(a1 + 3768) = 0u;
  v7 = v56;
  v56 = *(a1 + 3784);
  *(a1 + 3784) = v7;
  std::mutex::unlock((a1 + 3800));
  sub_1000FDC34(a1 + 2088);
  sub_1000FDCC8(a1 + 288);
  v8 = sub_1000FCE7C(a1, a2);
  if (v8)
  {
    goto LABEL_25;
  }

  v9 = *(a1 + 26);
  v10 = *(a1 + 168) - *(a1 + 160) + v9 + 7;
  v11 = v10 / v9 * v9;
  if (v10 == v10 % v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = malloc_type_valloc(v10 / v9 * v9, 0x8B7C732DuLL);
    if (!v12)
    {
      exception = __cxa_allocate_exception(8uLL);
      v43 = std::bad_alloc::bad_alloc(exception);
    }
  }

  *&v57 = off_1002128C8;
  v59 = &v57;
  v67 = v12;
  sub_100015FBC(v68, &v57);
  sub_10001590C(&v57);
  v13 = v67;
  *v67 = bswap64(*(a1 + 3616) - 2);
  v14 = v13 + 1;
  v15 = *(a1 + 160);
  v16 = *(a1 + 168);
  while (v15 != v16)
  {
    v17 = *v15++;
    *v14++ = bswap64(v17);
  }

  bzero(v14, v67 + v11 - v14);
  v18 = *(a1 + 26);
  if (*(a1 + 26))
  {
    v18 = malloc_type_valloc(v18, 0x8B7C732DuLL);
    if (!v18)
    {
      v40 = __cxa_allocate_exception(8uLL);
      v41 = std::bad_alloc::bad_alloc(v40);
    }
  }

  *&v57 = off_1002128C8;
  v59 = &v57;
  v65 = v18;
  sub_100015FBC(v66, &v57);
  sub_10001590C(&v57);
  memcpy(v65, v67, *(a1 + 26));
  v19 = v67;
  v20 = *(sub_100195B38() + 1);
  v46 = v19;
  v47 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = v11;
  v49 = a3;
  v50 = v11;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v21 = (*(**(a2 + 16) + 120))(*(a2 + 16), &v46);
  if (v11 != v21)
  {
    v33 = v21;
    *&v44 = "di_asif::details::dir::flush_dir(ContextASIF &, uint64_t)";
    *(&v44 + 1) = 32;
    v45 = 16;
    sub_1000FDD5C(&v57, &v44);
    sub_100001FE8(v64, "Full dir write failed with ", 27);
    std::ostream::operator<<();
    sub_1000FDE84(&v57);
    v34 = __cxa_allocate_exception(0x40uLL);
    if (v33 >= 0)
    {
      v22 = -5;
    }

    else
    {
      v22 = v33;
    }

    v35 = "Failed writing full dir";
LABEL_31:
    *v34 = &off_1002260F0;
    v36 = std::generic_category();
    v34[1] = v22;
    v34[2] = v36;
    *(v34 + 24) = 0;
    *(v34 + 48) = 0;
    v34[7] = v35;
  }

  v22 = (*(**(a2 + 16) + 16))(*(a2 + 16), 0);
  if (v22)
  {
    v34 = __cxa_allocate_exception(0x40uLL);
    v35 = "Failed barrier after writing full dir";
    goto LABEL_31;
  }

  v23 = *(a1 + 3616);
  *(a1 + 3616) = v23 + 1;
  *v65 = bswap64(v23);
  v24 = v65;
  v25 = *(a1 + 26);
  v26 = *(sub_100195B38() + 1);
  *&v57 = v24;
  *(&v57 + 1) = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  v58 = v25;
  v59 = a3;
  v60 = v25;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  sub_10002E794(&v46, &v57);
  if (*(&v57 + 1))
  {
    sub_10000E984(*(&v57 + 1));
  }

  LODWORD(v27) = (*(**(a2 + 16) + 120))(*(a2 + 16), &v46);
  if (v27 != *(a1 + 26))
  {
    *&v44 = "di_asif::details::dir::flush_dir(ContextASIF &, uint64_t)";
    *(&v44 + 1) = 32;
    v45 = 16;
    sub_1000FDEC8(&v57, &v44);
    sub_100001FE8(v64, "First block of dir write failed with ", 37);
    std::ostream::operator<<();
    sub_1000FDFF0(&v57);
    v37 = __cxa_allocate_exception(0x40uLL);
    v38 = v37;
    if (v27 >= 0)
    {
      v27 = 4294967291;
    }

    else
    {
      v27 = v27;
    }

    *v37 = &off_1002260F0;
    v39 = std::generic_category();
    v38[1] = v27;
    v38[2] = v39;
    *(v38 + 24) = 0;
    *(v38 + 48) = 0;
    v38[7] = "Failed writing first block of dir";
  }

  if (v47)
  {
    sub_10000E984(v47);
  }

  v28 = (*(&v54 + 1) + 8 * (v56 >> 9));
  if (v55 == *(&v54 + 1))
  {
    v29 = 0;
    v31 = 0;
    v30 = (*(&v54 + 1) + 8 * ((*(&v56 + 1) + v56) >> 9));
  }

  else
  {
    v29 = &(*v28)[8 * (v56 & 0x1FF)];
    v30 = (*(&v54 + 1) + 8 * ((*(&v56 + 1) + v56) >> 9));
    v31 = (*v30 + 8 * ((*(&v56 + 1) + v56) & 0x1FF));
  }

  sub_1000F7CC4(a1, v28, v29, v30, v31, a2);
  v8 = 1;
  sub_100015888(&v65, 0);
  sub_10001590C(v66);
  sub_100015888(&v67, 0);
  sub_10001590C(v68);
LABEL_25:
  sub_100072AB4(&v54);
  return v8;
}

void sub_1000FDA70(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_1000FDFF0(va);
  if (a14)
  {
    sub_10000E984(a14);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    *(v32 + 3616) = v36;
    std::mutex::lock((v32 + 3800));
    v40 = *(v32 + 3784) + *(v32 + 3792);
    v41 = *(v32 + 3760);
    v42 = (v41 + 8 * (v40 >> 9));
    if (*(v32 + 3768) == v41)
    {
      v43 = 0;
    }

    else
    {
      v43 = *v42 + 8 * (v40 & 0x1FF);
    }

    v44 = (a28 + 8 * (a31 >> 9));
    if (a29 == a28)
    {
      v45 = 0;
      v47 = 0;
      v46 = (a28 + 8 * ((a32 + a31) >> 9));
    }

    else
    {
      v45 = *v44 + 8 * (a31 & 0x1FF);
      v46 = (a28 + 8 * ((a32 + a31) >> 9));
      v47 = *v46 + 8 * ((a32 + a31) & 0x1FF);
    }

    sub_1000F7C90(v33, v42, v43, v44, v45, v46, v47);
    std::mutex::unlock((v32 + 3800));
    __cxa_end_catch();
    JUMPOUT(0x1000FD800);
  }

  sub_100015888((v37 - 168), 0);
  sub_10001590C(v35 + 8);
  sub_100015888((v37 - 128), 0);
  sub_10001590C(v34 + 8);
  sub_100072AB4(&a27);
  _Unwind_Resume(a1);
}

void sub_1000FDC34(uint64_t a1)
{
  v1 = (a1 + 608);
  if (atomic_load((a1 + 608)))
  {
    v4 = (a1 + 616);
    atomic_fetch_add((a1 + 616), 1uLL);
    v7.__m_ = (a1 + 624);
    v7.__owns_ = 1;
    std::mutex::lock((a1 + 624));
    if (atomic_load(v1))
    {
      do
      {
        std::condition_variable::wait((a1 + 688), &v7);
      }

      while (atomic_load((a1 + 608)));
    }

    atomic_fetch_add(v4, 0xFFFFFFFFFFFFFFFFLL);
    if (v7.__owns_)
    {
      std::mutex::unlock(v7.__m_);
    }
  }
}

void sub_1000FDCC8(uint64_t a1)
{
  v1 = (a1 + 784);
  if (atomic_load((a1 + 784)))
  {
    v4 = (a1 + 792);
    atomic_fetch_add((a1 + 792), 1uLL);
    v7.__m_ = (a1 + 800);
    v7.__owns_ = 1;
    std::mutex::lock((a1 + 800));
    if (atomic_load(v1))
    {
      do
      {
        std::condition_variable::wait((a1 + 864), &v7);
      }

      while (atomic_load((a1 + 784)));
    }

    atomic_fetch_add(v4, 0xFFFFFFFFFFFFFFFFLL);
    if (v7.__owns_)
    {
      std::mutex::unlock(v7.__m_);
    }
  }
}

void *sub_1000FDD5C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100126BCC(a1, a2);
  *a1 = off_100214D70;
  a1[45] = &off_100214E70;
  a1[46] = &off_100214E98;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100214D70;
  a1[45] = off_100214DF8;
  a1[46] = off_100214E20;
  return a1;
}

void sub_1000FDE60(_Unwind_Exception *a1)
{
  sub_100114A0C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FDE84(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100114A0C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000FDEC8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100126C94(a1, a2);
  *a1 = off_100214F90;
  a1[45] = &off_100215090;
  a1[46] = &off_1002150B8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100214F90;
  a1[45] = off_100215018;
  a1[46] = off_100215040;
  return a1;
}

void sub_1000FDFCC(_Unwind_Exception *a1)
{
  sub_1001151A4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FDFF0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001151A4(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000FE034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *(a4 + 208) - *(a3 + 208);
  v11 = v10 & ~(v10 >> 63);
  v12 = *(a3 + 24);
  sub_1000302E0(&v38, a3);
  v13 = 0;
  if (a5)
  {
    v14 = "read";
  }

  else
  {
    v14 = "write";
  }

  v15 = 4;
  if (!a5)
  {
    v15 = 5;
  }

  v23 = v15;
  v24 = v14;
  while (1)
  {
    v16 = v12 / *(a1 + 88);
    sub_1000F4388(a1, a2, v16, a5 ^ 1u, 1, &v37);
    if (v37 && (*(v37 + 520) & 1) != 0)
    {
      if ((a5 & 1) == 0)
      {
        sub_1000F4990(a2);
      }

      v17 = 0;
      v5 = -5;
      goto LABEL_24;
    }

    sub_10002ED8C(&v38, *(a1 + 88) + *(a1 + 88) * v16, a4, 0, &v29);
    if (v37 && (*(v37 + 520) & 1) == 0)
    {
      if (a5)
      {
        if (*(v37 + 400))
        {
          v19 = v37 + 40;
        }

        else
        {
          v19 = 0;
        }

        v21 = sub_1000F9BC0(v19);
      }

      else
      {
        if (*(v37 + 400))
        {
          v20 = v37 + 40;
        }

        else
        {
          v20 = 0;
        }

        v21 = sub_1000F7DF0(v20, a2, &v29, &v33);
      }

      v5 = v21;
      if ((v21 & 0x8000000000000000) != 0 && v21)
      {
        *&v25 = "di_asif::details::dir::do_io(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &, BOOL)";
        *(&v25 + 1) = 28;
        v26 = 16;
        sub_1000FE384(v27, &v25);
        sub_100001FE8(v28, "Failed during table ", 20);
        sub_100001FE8(v28, v24, v23);
        sub_100001FE8(v28, " in dir I/O, error ", 19);
        std::ostream::operator<<();
        std::ostream::~ostream();
        sub_10011593C(v27);
        std::ios::~ios();
        if ((a5 & 1) == 0)
        {
          sub_1000F4990(a2);
        }

        v17 = 0;
        goto LABEL_16;
      }

      v18 = v21;
    }

    else
    {
      sub_10002FBF0(&v29, &v33);
      v18 = (v36 - v32) & ~((v36 - v32) >> 63);
      sub_10002E60C(&v29, v18);
    }

    sub_10002E60C(&v38, v18);
    v12 += v18;
    v13 += v18;
    v17 = 1;
LABEL_16:
    if (v35)
    {
      sub_10000E984(v35);
    }

    if (v34)
    {
      sub_10000E984(v34);
    }

    if (v31)
    {
      sub_10000E984(v31);
    }

    if (v30)
    {
      sub_10000E984(v30);
    }

LABEL_24:
    sub_1000EFD00(&v37);
    if (!v17)
    {
      break;
    }

    if (v13 == v11)
    {
      goto LABEL_43;
    }
  }

  v11 = v5;
LABEL_43:
  if (v40)
  {
    sub_10000E984(v40);
  }

  if (v39)
  {
    sub_10000E984(v39);
  }

  return v11;
}

void sub_1000FE328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000FE4AC(va);
  sub_100076574(&STACK[0x240]);
  sub_1000EFD00(&STACK[0x400]);
  sub_10000FF88(&STACK[0x408]);
  _Unwind_Resume(a1);
}

void *sub_1000FE384(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100126D5C(a1, a2);
  *a1 = off_1002151B0;
  a1[45] = &off_1002152B0;
  a1[46] = &off_1002152D8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002151B0;
  a1[45] = off_100215238;
  a1[46] = off_100215260;
  return a1;
}

void sub_1000FE488(_Unwind_Exception *a1)
{
  sub_10011593C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FE4AC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011593C(a1);
  std::ios::~ios();
  return a1;
}

double sub_1000FE4F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 32) & 1) + *(a1 + 24);
  v10[0] = *(a1 + 40);
  v10[1] = v3;
  v11 = 2;
  *&v8 = qword_1002349D8;
  *(&v8 + 1) = qword_1002349D8;
  LOBYTE(v9) = 2;
  v4 = sub_1000FE5AC(*(a1 + 64), *(a1 + 56), v10, &v8);
  if (v4 >= 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = sub_100001940(exception, "Can't convert ASIF flag.", 5u);
  }

  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v4;
  return result;
}

unint64_t sub_1000FE5AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = 0;
  *&v29 = *a3;
  *(&v29 + 1) = v29;
  v26 = qword_1002349D8;
  v27 = qword_1002349D8;
  v30 = 2;
  v28 = 2;
  v24 = *a3;
  v25 = a3[2];
  do
  {
    v8 = *(&v24 + 1);
    if (v25)
    {
      if (v25 == 3)
      {
        if (*(&v24 + 1) < v24)
        {
          goto LABEL_5;
        }
      }

      else if (v24 >= *(&v24 + 1))
      {
        goto LABEL_5;
      }
    }

    else if (v24 >= *(&v24 + 1) || (v24 + 1) >= *(&v24 + 1))
    {
LABEL_5:
      if (!qword_1002349D8)
      {
        break;
      }

      goto LABEL_12;
    }

    if (!(*(&v24 + 1) + (v25 & 1) - v24 + ((v25 >> 1) & 1) - 1))
    {
      break;
    }

LABEL_12:
    if ((v25 & 2) != 0)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }

    v11 = v10 * *(a1 + 26);
    sub_1000F4388(a1, a2, v11 / *(a1 + 88), 0, 1, &v23);
    if (v23 && (*(v23 + 520) & 1) != 0)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_1002260F0;
      v18 = std::generic_category();
      exception[1] = 4294967291;
      exception[2] = v18;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Can't load table to get extents";
    }

    if (v23 && (*(v23 + 520) & 1) == 0)
    {
      if (*(v23 + 400))
      {
        v14 = (v23 + 40);
      }

      else
      {
        v14 = 0;
      }

      v12 = sub_1000FE89C(v14, a2, &v24, &v26);
    }

    else
    {
      v12 = 0;
      v13 = (*(a1 + 88) + *(a1 + 88) * (v11 / *(a1 + 88)) + 1) / *(a1 + 26);
      if (v13 >= v8)
      {
        v13 = v8;
      }

      v26 = v10;
      v27 = v13;
      v28 = 2;
    }

    if (v12 == v7)
    {
LABEL_36:
      *(&v29 + 1) = v27;
      v30 = 2;
      v19 = v24;
      v20 = v25;
      sub_1000DC5C4(&v19, &v29, &v21);
      v24 = v21;
      LOBYTE(v25) = v22;
      v15 = 1;
      v7 = v12;
      goto LABEL_40;
    }

    if (v30)
    {
      if (v30 == 3)
      {
        if (*(&v29 + 1) >= v29)
        {
          goto LABEL_35;
        }
      }

      else if (v29 < *(&v29 + 1))
      {
        goto LABEL_35;
      }
    }

    else if (v29 < *(&v29 + 1) && (v29 + 1) < *(&v29 + 1))
    {
LABEL_35:
      if (!(*(&v29 + 1) + (v30 & 1) - v29 + ((v30 >> 1) & 1) - 1))
      {
        goto LABEL_36;
      }

      goto LABEL_39;
    }

    if (!qword_1002349D8)
    {
      goto LABEL_36;
    }

LABEL_39:
    v15 = 0;
LABEL_40:
    sub_1000EFD00(&v23);
  }

  while ((v15 & 1) != 0);
  *a4 = v29;
  *(a4 + 16) = v30;
  return v7;
}

void sub_1000FE878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000EFD00(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1000FE89C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  v61[0] = *(a3 + 17);
  *(v61 + 3) = *(a3 + 20);
  if ((v7 & 2) != 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v5 + 1;
  }

  v9 = sub_1000F1428(a1, v8 * *(a1[1] + 26));
  v11 = atomic_load((v9[7] + 16 * v10 + 8));
  v48 = v11 >> 62;
  if (v11 >> 62 == 3)
  {
    v12 = v9[1];
    sub_1000F226C(a1, a2, (v9[44] + (*(v12 + 56) + *(v12 + 56) * v10) / (*(v12 + 56) + 1) * *(v12 + 28)) / *(v12 + 26), 0, v54);
    v13 = a1[1];
    if (v54[0])
    {
      if (*(v54[0] + 224))
      {
        v15 = v54[0] + 40;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v14 = *(v13 + 26);
    v48 = sub_1000F2564(v15, 2 * ((v8 * v14 - (a1[44] + *(v13 + 56) * *(v13 + 28) * ((v8 * v14 / v14 - a1[44] / v14) / (*(v13 + 56) * (*(v13 + 28) / v14))))) / v14));
    sub_1000F0B1C(v54);
  }

  v16 = 0;
  while (1)
  {
    if (v7)
    {
      if (v7 == 3)
      {
        if (v6 >= v5)
        {
          goto LABEL_18;
        }
      }

      else if (v6 > v5)
      {
        goto LABEL_18;
      }
    }

    else if (v6 > v5 && v5 + 1 < v6)
    {
LABEL_18:
      if (!(v6 - v5 + (v7 & 1) + (((v7 >> 1) & 1) - 1)))
      {
        goto LABEL_42;
      }

      goto LABEL_22;
    }

    if (!qword_1002349D8)
    {
      goto LABEL_42;
    }

LABEL_22:
    if ((v7 & 2) != 0)
    {
      v17 = v5;
    }

    else
    {
      v17 = v5 + 1;
    }

    v18 = a1[1];
    v19 = v17 * *(v18 + 26);
    if (v19 >= *(v18 + 88) + a1[44])
    {
      goto LABEL_42;
    }

    v20 = sub_1000F1428(a1, v19);
    v22 = v20;
    v23 = v21;
    v59 = v20;
    v60 = v21;
    v24 = v7;
    v49 = v6;
    v25 = *(a1[1] + 26);
    v26 = v20[1];
    v27 = (*(v26 + 56) + *(v26 + 56) * v21) / (*(v26 + 56) + 1);
    v28 = *(v26 + 28);
    if (v20[44] + v28 + v27 * v28 >= v25 + v25 * (v6 + ((v7 & 1) - 1)))
    {
      v29 = v25 + v25 * (v6 + ((v7 & 1) - 1));
    }

    else
    {
      v29 = v20[44] + v28 + v27 * v28;
    }

    v30 = (v20[7] + 16 * v21);
    v31 = sub_100111FBC(v30);
    v57[0] = off_100225868;
    v57[1] = v30;
    v58 = v31;
    if (!v31)
    {
      *&v52 = "di_asif::details::table::get_next_extent(ContextASIF &, const interval_sectors &, interval_sectors &)";
      *(&v52 + 1) = 40;
      LODWORD(v53) = 16;
      sub_1000FEE80(v54, &v52);
      sub_100001FE8(v56, "Couldn't lock entry ", 20);
      sub_1000F5C70(v56, &v59);
      sub_1000FEFA8(v54);
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_1002260F0;
      v42 = std::generic_category();
      exception[1] = 5;
      exception[2] = v42;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Can't lock entry";
    }

    v32 = atomic_load((v22[7] + 16 * v23 + 8));
    v33 = v32 >> 62;
    if (v48 == v33)
    {
      v34 = v29 / *(a1[1] + 26);
      v16 = v34;
      goto LABEL_40;
    }

    if (v33 != 3)
    {
      break;
    }

    v35 = v59[1];
    sub_1000F226C(a1, a2, (v59[44] + (*(v35 + 56) + *(v35 + 56) * v60) / (*(v35 + 56) + 1) * *(v35 + 28)) / *(v35 + 26), 0, v50);
    if (!v50[0] || (*(v50[0] + 344) & 1) != 0)
    {
      *&v52 = "di_asif::details::table::get_next_extent(ContextASIF &, const interval_sectors &, interval_sectors &)";
      *(&v52 + 1) = 40;
      LODWORD(v53) = 16;
      sub_1000FEFEC(v54, &v52);
      sub_100001FE8(v56, "Can't read bitmap", 17);
      sub_1000FF114(v54);
      v43 = __cxa_allocate_exception(0x40uLL);
      *v43 = &off_1002260F0;
      v44 = std::generic_category();
      v43[1] = 5;
      v43[2] = v44;
      *(v43 + 24) = 0;
      *(v43 + 48) = 0;
      v43[7] = "Can't read bitmap";
    }

    v36 = *(v50[0] + 224) ? (v50[0] + 40) : 0;
    v37 = sub_1000F2748(v36, a1, v48, v19, v29);
    v38 = *(a1[1] + 26);
    sub_1000F0B1C(v50);
    v16 = v37 / v38;
    if (v37 < v29)
    {
      break;
    }

    v34 = v29 / *(a1[1] + 26);
LABEL_40:
    *&v52 = v5;
    *(&v52 + 1) = v49;
    LOBYTE(v53) = v24;
    *(&v53 + 1) = v61[0];
    HIDWORD(v53) = *(v61 + 3);
    v50[0] = v17;
    v50[1] = v34;
    v51 = 2;
    sub_1000DC5C4(&v52, v50, v54);
    v5 = v54[0];
    v6 = v54[1];
    v7 = v55;
    sub_10019254C(v57);
  }

  sub_10019254C(v57);
LABEL_42:
  v39 = *a3;
  if ((*(a3 + 16) & 2) == 0)
  {
    ++v39;
  }

  *a4 = v39;
  *(a4 + 8) = v16;
  *(a4 + 16) = 2;
  return v48;
}

void sub_1000FEE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1000F0B1C(va);
  _Unwind_Resume(a1);
}

void *sub_1000FEE80(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100126E24(a1, a2);
  *a1 = off_1002153D0;
  a1[45] = &off_1002154D0;
  a1[46] = &off_1002154F8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002153D0;
  a1[45] = off_100215458;
  a1[46] = off_100215480;
  return a1;
}

void sub_1000FEF84(_Unwind_Exception *a1)
{
  sub_1001160D4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FEFA8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001160D4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000FEFEC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100126EEC(a1, a2);
  *a1 = off_1002155F0;
  a1[45] = &off_1002156F0;
  a1[46] = &off_100215718;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002155F0;
  a1[45] = off_100215678;
  a1[46] = off_1002156A0;
  return a1;
}

void sub_1000FF0F0(_Unwind_Exception *a1)
{
  sub_10011686C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FF114(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011686C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000FF158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000F5778(a1, a3, a4, &v33);
  v9 = *(*(a1 + 32) + 216);
  while (1)
  {
    v10 = v33;
    if (v33 == v41 && v34 == v42 && v35 == v43 && (v35 == v33 + 16 * v34 || v38 == v44 && v39 == v45 && v40 == v46))
    {
      return 0;
    }

    v11 = v36 * *(a1 + 26);
    sub_1000F4388(a1, a2, v11 / *(a1 + 88), v9 ^ 1u, 1, &v32);
    if (v32 && (*(v32 + 520) & 1) == 0)
    {
      if (*(v32 + 400))
      {
        v14 = v32 + 40;
      }

      else
      {
        v14 = 0;
      }

      sub_1000F5DD0(v14, a2, a3, a4, &v19);
      v35 = v20;
      v38 = v23;
      if (v34 != (v20 - v10) >> 4)
      {
        v36 = sub_1000F1194(&v33);
        v37 = v17;
      }

      v13 = 0;
      goto LABEL_38;
    }

    if (v32)
    {
      if (*(v32 + 520))
      {
        v12 = 4294967291;
      }

      else
      {
        v12 = 0;
      }

      v13 = 1;
      if (*(v32 + 520) & 1) != 0 || (v9)
      {
        goto LABEL_39;
      }

LABEL_23:
      sub_1000F39D4(a3, a4, *(a1 + 28), *(a1 + 26), v11 / *(a1 + 88) * *(a1 + 88), *(a1 + 88) + v11 / *(a1 + 88) * *(a1 + 88), &v19);
      while (v19 != v26 || *(&v19 + 1) != v27 || v20 != v28 || v20 != v19 + 16 * *(&v19 + 1) && (v23 != v29 || v24 != v30 || v25 != v31))
      {
        v23 += v25 * v22;
        v21 = sub_1000F1194(&v19);
        v22 = v15;
      }

      v35 = v20;
      v38 = v23;
      if (v34 != (v20 - v10) >> 4)
      {
        v36 = sub_1000F1194(&v33);
        v37 = v16;
      }

      v13 = 2;
LABEL_38:
      v12 = v4;
      goto LABEL_39;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_23;
    }

    v12 = 0;
    v13 = 1;
LABEL_39:
    sub_1000EFD00(&v32);
    v4 = v12;
    if ((v13 | 2) != 2)
    {
      return v12;
    }
  }
}

uint64_t sub_1000FF44C(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  std::mutex::lock((a1 + 3536));
  sub_1000FDC34(a1 + 2088);
  sub_1000FDCC8(a1 + 288);
  v8 = atomic_exchange((a1 + 3600), 0);
  LODWORD(v9) = (*(**(a2 + 16) + 16))(*(a2 + 16), 0);
  if (!v9)
  {
    v9 = sub_1000FCE7C(a1, a2);
    if (v9)
    {
      v11 = v8;
      goto LABEL_9;
    }

    v12 = *(a1 + 136);
    v13 = *(a1 + 144);
    if (v12 == v13)
    {
      v9 = 0;
      if (v8)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = 0;
      v9 = 0;
      do
      {
        sub_1000FCB08(v12, v14 / *(a1 + 88), &v18);
        if (v18 && (*(v18 + 520) & 1) == 0)
        {
          if (*(v18 + 400))
          {
            v15 = v18 + 40;
          }

          else
          {
            v15 = 0;
          }

          v16 = sub_1000F7064(v15, a2);
          if (v8)
          {
            v8 = 1;
          }

          else
          {
            v8 = v16;
          }
        }

        v14 += *(a1 + 88);
        sub_1000EFD00(&v18);
        ++v12;
      }

      while (v12 != v13);
      if (v8)
      {
LABEL_23:
        v17 = (*(**(a2 + 16) + 16))(*(a2 + 16), 0);
        if (v17)
        {
          *&v19 = "di_asif::details::dir::flush(ContextASIF &, uint64_t, BOOL)";
          *(&v19 + 1) = 28;
          v20 = 16;
          sub_1000FFAFC(v21, &v19);
          sub_100001FE8(v22, "Backend barrier failed during dir flush, error ", 47);
          std::ostream::operator<<();
          std::ostream::~ostream();
          sub_100117F34(v21);
          std::ios::~ios();
          if (v17 < 0)
          {
            v9 = v17;
          }

          else
          {
            v9 = -v17;
          }

          goto LABEL_5;
        }

        goto LABEL_29;
      }
    }

    if (!a4)
    {
      v11 = 0;
LABEL_32:
      if ((v9 & 0x80000000) == 0)
      {
        v9 = 0;
        goto LABEL_6;
      }

LABEL_9:
      v8 = v11;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

LABEL_29:
    v9 = sub_1000FD474(a1, a2, a3);
    v11 = v8;
    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

  *&v19 = "di_asif::details::dir::flush(ContextASIF &, uint64_t, BOOL)";
  *(&v19 + 1) = 28;
  v20 = 16;
  sub_1000FF824(v21, &v19);
  sub_100001FE8(v22, "Failed barrier at start of dir flush, error", 43);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_100117004(v21);
  std::ios::~ios();
  if (v9 < 0)
  {
    v9 = v9;
  }

  else
  {
    v9 = -v9;
  }

LABEL_5:
  atomic_fetch_or((a1 + 3600), v8);
LABEL_6:
  std::mutex::unlock((a1 + 3536));
  return v9;
}

void sub_1000FF7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000FFAB8(va);
  __cxa_end_catch();
  JUMPOUT(0x1000FF7C8);
}

void *sub_1000FF824(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100126FB4(a1, a2);
  *a1 = off_100215810;
  a1[45] = &off_100215910;
  a1[46] = &off_100215938;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100215810;
  a1[45] = off_100215898;
  a1[46] = off_1002158C0;
  return a1;
}

void sub_1000FF928(_Unwind_Exception *a1)
{
  sub_100117004(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FF94C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100117004(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000FF990(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10012707C(a1, a2);
  *a1 = off_100215A30;
  a1[45] = &off_100215B30;
  a1[46] = &off_100215B58;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100215A30;
  a1[45] = off_100215AB8;
  a1[46] = off_100215AE0;
  return a1;
}

void sub_1000FFA94(_Unwind_Exception *a1)
{
  sub_10011779C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FFAB8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011779C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000FFAFC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100127144(a1, a2);
  *a1 = off_100215C50;
  a1[45] = &off_100215D50;
  a1[46] = &off_100215D78;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100215C50;
  a1[45] = off_100215CD8;
  a1[46] = off_100215D00;
  return a1;
}

void sub_1000FFC00(_Unwind_Exception *a1)
{
  sub_100117F34(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FFC24(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100117F34(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000FFC68(std::__thread_struct *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v15 = sub_100100288(a1, a2, a4, a5, a10);
  *v15 = off_100211AF0;
  v15[12] = off_100218508;
  v15[13] = v15;
  v15[15] = v15 + 12;
  v15[16] = a3;
  sub_100118434(v15 + 17, (v15[11] + a3 - 1) / v15[11]);
  sub_1001184AC(&a1[20], (a1[11].__p_ + a3 - 1) / a1[11].__p_);
  a1[23].__p_ = v12;
  v16 = (v12 - 1 + (v11 - 1 + v10) / v11 * v11 + (v11 + 7 + 8 * ((a1[16].__p_ + a1[11].__p_ - 1) / a1[11].__p_)) / v11 * v11 * a7) / v12;
  a1[24].__p_ = 850045863;
  *&a1[25].__p_ = 0u;
  *&a1[27].__p_ = 0u;
  *&a1[29].__p_ = 0u;
  a1[33].__p_ = 0;
  a1[31].__p_ = 0;
  a1[32].__p_ = &a1[33];
  a1[34].__p_ = 0;
  a1[35].__p_ = (v16 * v12);
  v18[3] = 0;
  sub_10012728C(&a1[36], 4uLL, 0, v18);
}

uint64_t sub_100100288(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  *a1 = off_100215E68;
  *(a1 + 8) = 0;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  *(a1 + 26) = a4;
  *(a1 + 28) = a3;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3 >> 3;
  v6 = a3 / a4;
  v7 = 4 * a3;
  if (v7 < v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 / v6;
  }

  *(a1 + 48) = v6;
  *(a1 + 56) = v8;
  v9 = sub_1000F1134(a1);
  v10 = (*(a1 + 56) + v9) / (*(a1 + 56) + 1);
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  v11 = v9 - v10;
  v12 = v11 * *(a1 + 28);
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  return a1;
}

unint64_t sub_100100320(uint64_t a1, uint64_t (***a2)(), unint64_t a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v9 = a3 + 8 * a4 + 7;
  v10 = v9 / a3 * a3;
  if (v9 == v9 % a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = malloc_type_valloc(v9 / a3 * a3, 0x8B7C732DuLL);
    if (!v11)
    {
      exception = __cxa_allocate_exception(8uLL);
      v24 = std::bad_alloc::bad_alloc(exception);
    }
  }

  v25 = off_1002128C8;
  v28 = &v25;
  v33 = v11;
  sub_100015FBC(v34, &v25);
  sub_10001590C(&v25);
  v12 = v33;
  v13 = *(sub_100195B38() + 1);
  v25 = v12;
  v26 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = v10;
  v28 = a2;
  v29 = v10;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v14 = (*(*a1 + 128))(a1, &v25);
  if (v10 != v14)
  {
    v19 = __cxa_allocate_exception(0x40uLL);
    v20 = v19;
    if (v14 >= 0)
    {
      v21 = 4294967291;
    }

    else
    {
      v21 = v14;
    }

    *v19 = &off_1002260F0;
    v22 = std::generic_category();
    v20[1] = v21;
    v20[2] = v22;
    *(v20 + 24) = 0;
    *(v20 + 48) = 0;
    v20[7] = "Can't load asif dir table";
  }

  v15 = *v12;
  if (v6)
  {
    v16 = v12 + 1;
    do
    {
      v17 = *v16++;
      *a5++ = bswap64(v17);
      --v6;
    }

    while (v6);
  }

  if (v26)
  {
    sub_10000E984(v26);
  }

  sub_100015888(&v33, 0);
  sub_10001590C(v34);
  return bswap64(v15);
}

void sub_10010055C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_100015888(va, 0);
  sub_10001590C(v22 + 8);
  _Unwind_Resume(a1);
}

unint64_t sub_100100590(uint64_t a1, uint64_t a2)
{
  v4 = *(sub_100195B38() + 1);
  v10 = &v18;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = 0;
  v12 = 8;
  v13 = a2;
  v14 = 8;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  LODWORD(a1) = (*(*a1 + 128))(a1, &v10);
  if (a1 != 8)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v8 = exception;
    if (a1 >= 0)
    {
      a1 = 4294967291;
    }

    else
    {
      a1 = a1;
    }

    *exception = &off_1002260F0;
    v9 = std::generic_category();
    v8[1] = a1;
    v8[2] = v9;
    *(v8 + 24) = 0;
    *(v8 + 48) = 0;
    v8[7] = "Can't load asif dir version";
  }

  v5 = bswap64(v18);
  v18 = v5;
  if (v11)
  {
    sub_10000E984(v11);
  }

  return v5;
}

void sub_1001006C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_10000E984(a11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001006D8(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1002117E8;
  a1[1] = a2;
  (*(**(a2 + 16) + 80))(*(a2 + 16));
  *a1 = off_100211B30;
  LODWORD(v13) = *(a2 + 136);
  v6 = sub_100100844("metadata_read_only_flags", &v13, sub_100100880);
  v7 = v6;
  if (!v6)
  {
    sub_1000E0E88();
  }

  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = 0;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v10 = 1;
  }

  v11 = a1[3];
  a1[2] = v8;
  a1[3] = v9;
  if (v11)
  {
    sub_10000E984(v11);
  }

  if ((v10 & 1) == 0)
  {
    sub_10000E984(v9);
  }

  if ((v7 & 1) == 0 && v14)
  {
    sub_10000E984(v14);
  }

  return a1;
}

void sub_100100824(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_10000E984(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_100100870(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x100100868);
}

uint64_t sub_100100880(uint64_t result, int a2, int *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = 4 * a4;
    do
    {
      v5 = *a3++;
      a2 &= ~v5;
      v4 -= 4;
    }

    while (v4);
  }

  if (a2)
  {
    v6 = result;
    v7 = a2;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = v6;
    exception[2] = "invalid flags";
    exception[3] = "flags validator";
    *exception = &off_1001FE7B8;
    *(exception + 8) = v7;
  }

  return result;
}

void *sub_10010091C(void *result, int *a2)
{
  v2 = *a2;
  if (*a2 > 1)
  {
    if (v2 == 2)
    {
      v3 = "unmapped";
      v4 = 8;
      return sub_100001FE8(result, v3, v4);
    }

    if (v2 == 3)
    {
      v3 = "has_bitmap";
      v4 = 10;
      return sub_100001FE8(result, v3, v4);
    }
  }

  else
  {
    if (!v2)
    {
      v3 = "uninit";
      v4 = 6;
      return sub_100001FE8(result, v3, v4);
    }

    if (v2 == 1)
    {
      v3 = "fully";
      v4 = 5;
      return sub_100001FE8(result, v3, v4);
    }
  }

  return result;
}

uint64_t sub_1001009B0(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 16))(a1);
  v5[0] = off_100211DA8;
  v5[1] = a2;
  v5[3] = v5;
  sub_100100A70(v3, v5);
  return sub_100121384(v5);
}

void sub_100100A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100121384(va);
  _Unwind_Resume(a1);
}

void sub_100100A70(void *a1, uint64_t a2)
{
  if (a1[11])
  {
    v4 = 0;
    v5 = (a1 + 10);
    do
    {
      v6 = *v5;
      v7 = *v5;
      v8 = v5;
      if (*v5)
      {
        do
        {
          v9 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v9 = v8[2];
          v10 = *v9 == v8;
          v8 = v9;
        }

        while (v10);
      }

      if ((v9[4] + *a1) != a1[12])
      {
        break;
      }

      v11 = v5;
      if (v6)
      {
        do
        {
          v12 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v12 = v11[2];
          v10 = *v12 == v11;
          v11 = v12;
        }

        while (v10);
      }

      sub_10004EE4C(a1 + 9, v12);
      operator delete(v12);
      v13 = a1[11];
      a1[12] -= *a1;
      v4 = 1;
    }

    while (v13);
    if ((v4 & 1) != 0 && *(a2 + 24))
    {
      if (sub_100107A8C(a2, a1[12]))
      {
        *&v14 = "space_allocators::FixedSize::trim_largest(const size_changed_fn_t &)";
        *(&v14 + 1) = 41;
        v15 = 16;
        sub_1001185A8(v16, &v14);
        sub_100001FE8(v17, "trim largest: size change callback failed with ", 47);
        std::ostream::operator<<();
        std::ostream::~ostream();
        sub_1001187DC(v16);
        std::ios::~ios();
      }
    }
  }
}

void sub_100100BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1001186D0(va);
  _Unwind_Resume(a1);
}

void sub_100100C00(_OWORD *a1, uint64_t a2)
{
  *(a1 + 92) = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  if ((*(*a2 + 40))(a2) > 0x1FF)
  {
    operator new[]();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = (*(*a2 + 40))(a2);
  *exception = &off_1002160C8;
  exception[1] = "asif_header";
  exception[2] = 512;
  exception[3] = v4;
}

uint64_t sub_1001010D0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  LODWORD(v17[0]) = 2003069043;
  sub_1000A56E0("header_signature", v4, v17, 1);
  *a1 = 2003069043;
  *(a1 + 4) = bswap32(*(a2 + 4));
  *(a1 + 8) = bswap32(*(a2 + 8));
  v5 = bswap32(*(a2 + 12));
  LODWORD(v17[0]) = 1;
  sub_100100880("header_flags", v5, v17, 1);
  *(a1 + 12) = v5;
  *(a1 + 16) = bswap64(*(a2 + 16));
  *(a1 + 24) = bswap64(*(a2 + 24));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = bswap64(*(a2 + 48));
  *(a1 + 56) = bswap64(*(a2 + 56));
  *(a1 + 64) = bswap32(*(a2 + 64));
  *(a1 + 68) = bswap32(*(a2 + 68)) >> 16;
  sub_100129FBC(v17, *(a2 + 70));
  *(a1 + 70) = v17[0];
  *(a1 + 72) = bswap64(*(a2 + 72));
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = bswap32(*(a2 + 96));
  v6 = bswap32(*(a2 + 100));
  result = sub_100100880("metadata_flags_t", v6, 0, 0);
  *(a1 + 100) = v6;
  *(a1 + 104) = bswap32(*(a2 + 104));
  v8 = *(a1 + 4);
  if (v8 >= 2)
  {
    if (v8 <= 4)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v13 = "Legacy shadow file format is not supported by DiskImages2 framework";
      v14 = 161;
      goto LABEL_24;
    }

LABEL_15:
    v15 = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v17);
    sub_100001FE8(v17, "Unsupported ASIF version ", 25);
    std::ostream::operator<<();
    sub_10000EBDC(v15, v17, 0xA1u);
  }

  if (!v8)
  {
    goto LABEL_15;
  }

  if ((*(a1 + 8) - 1048577) <= 0xFFF0004E)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "Invalid ASIF header size";
LABEL_20:
    v14 = 152;
    goto LABEL_24;
  }

  v9 = *(a1 + 68);
  if (!*(a1 + 68))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "Shadow block size is invalid (0)";
    goto LABEL_20;
  }

  v10 = *(a1 + 64);
  if (v10 < v9 || v10 % v9)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "ASIF max_write size in header exceed the limit";
LABEL_23:
    v14 = 22;
LABEL_24:
    v16 = sub_100001940(exception, v13, v14);
  }

  if (v10 >= 0x4000001)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "ASIF max chunk size in header exceeds the limit";
    goto LABEL_23;
  }

  if ((v9 & 0x1FF) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "ASIF block size isn't multiple of 512";
    goto LABEL_20;
  }

  v11 = *(a1 + 56);
  if (v11 >= 0xFFFFFFFFFFFFFFFFLL / v9)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "Max sector count is too large";
    goto LABEL_23;
  }

  if (v11 < *(a1 + 48))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "Sector count is too large";
    goto LABEL_23;
  }

  return result;
}

void sub_1001013EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

void sub_1001013FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000C8C8(va);
  __cxa_free_exception(v3);
  _Unwind_Resume(a1);
}

__n128 sub_100101698(_OWORD *a1, __int128 *a2)
{
  *(a1 + 92) = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  v2 = *a2;
  v3 = a2[2];
  a1[1] = a2[1];
  a1[2] = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 92) = *(a2 + 92);
  a1[4] = v5;
  a1[5] = v6;
  a1[3] = result;
  return result;
}

uint64_t sub_1001016D8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = bswap32(*(a1 + 4));
  *(a2 + 8) = bswap32(*(a1 + 8));
  *(a2 + 12) = bswap32(*(a1 + 12));
  *(a2 + 16) = bswap64(*(a1 + 16));
  *(a2 + 24) = bswap64(*(a1 + 24));
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = bswap64(*(a1 + 48));
  *(a2 + 56) = bswap64(*(a1 + 56));
  *(a2 + 64) = bswap32(*(a1 + 64));
  *(a2 + 68) = bswap32(*(a1 + 68)) >> 16;
  *(a2 + 70) = *(a1 + 70);
  *(a2 + 72) = bswap64(*(a1 + 72));
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 96) = bswap32(*(a1 + 96));
  *(a2 + 100) = bswap32(*(a1 + 100));
  *(a2 + 104) = bswap32(*(a1 + 104));
  return a2 + 108;
}

uint64_t sub_1001017A0(uint64_t a1, _DWORD *a2, _OWORD *a3, unint64_t a4, unint64_t a5, unsigned int a6, unsigned int a7)
{
  *a1 = 2003069043;
  LODWORD(v28) = 2003069043;
  sub_1000A56E0("header_signature", 2003069043, &v28, 1);
  *(a1 + 4) = 1;
  *(a1 + 8) = (a7 + 511) / a7 * a7;
  *(a1 + 12) = *a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = a4;
  *(a1 + 56) = a5;
  v14 = a7;
  *(a1 + 64) = a6;
  *(a1 + 68) = a7;
  sub_100129FBC((a1 + 70), 0);
  *(a1 + 100) = 0;
  *(a1 + 86) = 0u;
  *(a1 + 70) = 0u;
  v15 = !is_mul_ok(a5, a7);
  v16 = a5 * a7;
  if (!is_mul_ok(a5, a7))
  {
    v16 = -1;
  }

  v28 = v16;
  v29 = v15;
  v17 = sub_100101914(&v28);
  v18 = !is_mul_ok(a4, v14);
  v19 = a4 * v14;
  if (!is_mul_ok(a4, v14))
  {
    v19 = -1;
  }

  v28 = v19;
  v29 = v18;
  v20 = sub_100101914(&v28);
  v28 = 2 * a6;
  v29 = 0;
  v21 = sub_100101914(&v28);
  v22 = v20 + v21;
  v23 = __CFADD__(v20, v21);
  if (__CFADD__(v20, v21))
  {
    v24 = -1;
  }

  else
  {
    v24 = v20 + v21;
  }

  if (__CFADD__(v20, v21))
  {
    v22 = v24;
  }

  v28 = v22;
  v29 = v23;
  v25 = sub_100101914(&v28);
  if (v25 <= v17)
  {
    v26 = v17;
  }

  else
  {
    v26 = v25;
  }

  *(a1 + 56) = v26 / v14;
  *(a1 + 32) = *a3;
  return a1;
}

uint64_t sub_100101914(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v3 = sub_100001940(exception, "Overflow detected", 0x54u);
  }

  return *a1;
}

void *sub_100101B40(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10012A224(a1, a2);
  *a1 = off_100216100;
  a1[45] = &off_100216200;
  a1[46] = &off_100216228;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100216100;
  a1[45] = off_100216188;
  a1[46] = off_1002161B0;
  return a1;
}

void sub_100101C44(_Unwind_Exception *a1)
{
  sub_10011946C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100101C68(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011946C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100101CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 1635018093;
  LODWORD(v7) = 1635018093;
  sub_1000A56E0("header_signature", 1635018093, &v7, 1);
  *(a1 + 4) = 1;
  LODWORD(v7) = 1;
  sub_1000A56E0("version_t", 1, &v7, 1);
  *(a1 + 8) = 512;
  v7 = 0x100000000200;
  sub_1000A56E0("header_size_t", 512, &v7, 2);
  *(a1 + 12) = a2;
  *(a1 + 20) = a3;
  return a1;
}

uint64_t sub_100101D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35[0] = 0x100000000200;
  sub_1000A56E0("header_size_t", 512, v35, 2);
  v8 = *(a3 + 26);
  v9 = v8 + 511;
  v10 = (v8 + 511) / v8 * v8;
  v35[0] = 0x100000000200;
  sub_1000A56E0("header_size_t", (v8 + 511) / v8 * v8, v35, 2);
  *(a1 + 8) = v10;
  if (v9 == v9 - v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = malloc_type_valloc(v10, 0x8B7C732DuLL);
    if (!v11)
    {
      exception = __cxa_allocate_exception(8uLL);
      v23 = std::bad_alloc::bad_alloc(exception);
    }
  }

  v35[0] = off_1002128C8;
  v35[3] = v35;
  v37 = v11;
  sub_100015FBC(v38, v35);
  sub_10001590C(v35);
  v12 = v37;
  *v37 = *a1;
  v12[1] = bswap32(*(a1 + 4));
  v12[2] = bswap32(*(a1 + 8));
  *(v12 + 3) = bswap64(*(a1 + 12));
  *(v12 + 5) = bswap64(*(a1 + 20));
  v13 = v37;
  v14 = *(a1 + 8);
  v15 = v37 + v14 - (v12 + 7);
  if (v15 >= 1)
  {
    bzero(v12 + 7, v15);
    v14 = *(a1 + 8);
  }

  v16 = *(sub_100195B38() + 1);
  *&v27 = v13;
  *(&v27 + 1) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = v14;
  v29 = a4;
  v30 = v14;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  sub_100073EC4(v35, &v27);
  if (*(&v27 + 1))
  {
    sub_10000E984(*(&v27 + 1));
  }

  sub_10002E310(v36, &v27);
  sub_10002DF68(v36, &v24);
  v17 = sub_1000FE034(a3, a2, &v27, &v24, 0);
  if (v26)
  {
    sub_10000E984(v26);
  }

  if (v25)
  {
    sub_10000E984(v25);
  }

  if (v34)
  {
    sub_10000E984(v34);
  }

  if (*(&v27 + 1))
  {
    sub_10000E984(*(&v27 + 1));
  }

  if (v17 < 0)
  {
    v18 = v17;
    if (v17)
    {
      v20 = __cxa_allocate_exception(0x40uLL);
      *v20 = &off_1002260F0;
      v21 = std::generic_category();
      v20[1] = v18;
      v20[2] = v21;
      *(v20 + 24) = 0;
      *(v20 + 48) = 0;
      v20[7] = "Failed to write metadata header";
    }
  }

  sub_1000157A4(v35);
  sub_100015888(&v37, 0);
  return sub_10001590C(v38);
}

void sub_1001020A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1000157A4(&a65);
  sub_100015888((v66 - 128), 0);
  sub_10001590C(v65 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100102110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  v9 = *(a3 + 26);
  v10 = v9 + 511;
  v11 = (v9 + 511) % v9;
  v12 = v10 - v11;
  if (v10 != v11)
  {
    v8 = malloc_type_valloc(v10 - v11, 0x8B7C732DuLL);
    if (!v8)
    {
      exception = __cxa_allocate_exception(8uLL);
      v27 = std::bad_alloc::bad_alloc(exception);
    }
  }

  v40[0] = off_1002128C8;
  v40[3] = v40;
  v42 = v8;
  sub_100015FBC(v43, v40);
  sub_10001590C(v40);
  v13 = v42;
  v14 = *(sub_100195B38() + 1);
  *&v31 = v13;
  *(&v31 + 1) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v32 = v12;
  v33 = a4;
  v34 = v12;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  sub_100073EC4(v40, &v31);
  if (*(&v31 + 1))
  {
    sub_10000E984(*(&v31 + 1));
  }

  sub_10002DF68(v41, &v31);
  v15 = *(a3 + 128);
  v16 = v39;
  if (v38)
  {
    sub_10000E984(v38);
  }

  if (*(&v31 + 1))
  {
    sub_10000E984(*(&v31 + 1));
  }

  if (v16 > v15)
  {
    v22 = __cxa_allocate_exception(0x40uLL);
    *v22 = &off_1002260F0;
    v23 = std::generic_category();
    v22[1] = 152;
    v22[2] = v23;
    *(v22 + 24) = 0;
    *(v22 + 48) = 0;
    v22[7] = "Metadata offset is invalid";
  }

  sub_10002E310(v41, &v31);
  sub_10002DF68(v41, &v28);
  v17 = sub_1000FE034(a3, a2, &v31, &v28, 1);
  if (v30)
  {
    sub_10000E984(v30);
  }

  if (v29)
  {
    sub_10000E984(v29);
  }

  if (v38)
  {
    sub_10000E984(v38);
  }

  if (*(&v31 + 1))
  {
    sub_10000E984(*(&v31 + 1));
  }

  if (v17 < 0 && v17)
  {
    v24 = __cxa_allocate_exception(0x40uLL);
    *v24 = &off_1002260F0;
    v25 = std::generic_category();
    v24[1] = v17;
    v24[2] = v25;
    *(v24 + 24) = 0;
    *(v24 + 48) = 0;
    v24[7] = "ASIF meta header failed to read";
  }

  sub_100102534(a1, v42, a3);
  if (v12 != 28)
  {
    v18 = v42 + 28;
    do
    {
      if (*v18)
      {
        v20 = __cxa_allocate_exception(0x40uLL);
        *v20 = &off_1002260F0;
        v21 = std::generic_category();
        v20[1] = 152;
        v20[2] = v21;
        *(v20 + 24) = 0;
        *(v20 + 48) = 0;
        v20[7] = "ASIF meta header trailer isn't equal to zero";
      }

      ++v18;
    }

    while (v18 != &v42[v12]);
  }

  sub_1000157A4(v40);
  sub_100015888(&v42, 0);
  sub_10001590C(v43);
  return a1;
}

void sub_1001024C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000FF88(&a9);
  sub_10000FF88(&a37);
  sub_1000157A4(&a65);
  sub_100015888((v66 - 128), 0);
  sub_10001590C(v65 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100102534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  LODWORD(v18) = 1635018093;
  sub_1000A56E0("header_signature", v6, &v18, 1);
  *a1 = 1635018093;
  v7 = bswap32(*(a2 + 4));
  LODWORD(v18) = 1;
  sub_1000A56E0("version_t", v7, &v18, 1);
  *(a1 + 4) = 1;
  v8 = bswap32(*(a2 + 8));
  v18 = 0x100000000200;
  result = sub_1000A56E0("header_size_t", v8, &v18, 2);
  *(a1 + 8) = v8;
  v10 = bswap64(*(a2 + 12));
  *(a1 + 12) = v10;
  *(a1 + 20) = bswap64(*(a2 + 20));
  v11 = *(a3 + 26);
  if (v10 > *(a3 + 28) - v11 + (v11 + 511) % v11 - 511)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = sub_100001940(exception, "ASIF meta header size exceeds its maximum", 0x98u);
  }

  if (v8 % v11)
  {
    v14 = __cxa_allocate_exception(0x40uLL);
    v15 = sub_100001940(v14, "ASIF meta header is unaligned", 0x98u);
  }

  if (v10 % v11)
  {
    v16 = __cxa_allocate_exception(0x40uLL);
    v17 = sub_100001940(v16, "ASIF meta header data is unaligned", 0x98u);
  }

  return result;
}

uint64_t sub_100102904(void *a1, uint64_t a2)
{
  if (!*(*a1 + 72))
  {
    return 0;
  }

  sub_100102B28(a1, a2, &v4);
  v2 = 0x6DB6DB6DB6DB6DB7 * ((v5 - v4) >> 2);
  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return v2;
}

void sub_100102AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100102DC4(va);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_100102B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100102F30(va);
  __cxa_end_catch();
  JUMPOUT(0x100102B1CLL);
}

unint64_t sub_100102B28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = a1[1];
  v16 = *(*a1 + 72) * *(v6 + 28);
  result = sub_10011BC98(a3, a2, v6, &v16);
LABEL_2:
  for (i = result; ; i += 28)
  {
    a3[1] = i;
    v9 = *(i - 8);
    if (!v9)
    {
      break;
    }

    v11 = *a1;
    v10 = a1[1];
    v12 = v9 * *(v10 + 28);
    v16 = v12;
    v13 = *(v10 + 26);
    if (v12 < *(v11 + 48) * v13 || *(v11 + 56) * v13 <= v12)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_1002260F0;
      v15 = std::generic_category();
      exception[1] = 152;
      exception[2] = v15;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "ASIF: metadata header out of range";
    }

    if (i >= a3[2])
    {
      result = sub_10011BF3C(a3, a2, v10, &v16);
      goto LABEL_2;
    }

    result = sub_100102110(i, a2, v10, v12);
  }

  return result;
}

void sub_100102C6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100102C9C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10012A7BC(a1, a2);
  *a1 = off_100216320;
  a1[45] = &off_100216420;
  a1[46] = &off_100216448;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100216320;
  a1[45] = off_1002163A8;
  a1[46] = off_1002163D0;
  return a1;
}

void sub_100102DA0(_Unwind_Exception *a1)
{
  sub_100119C04(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100102DC4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100119C04(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100102E08(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10012A6F4(a1, a2);
  *a1 = off_100216540;
  a1[45] = &off_100216640;
  a1[46] = &off_100216668;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100216540;
  a1[45] = off_1002165C8;
  a1[46] = off_1002165F0;
  return a1;
}

void sub_100102F0C(_Unwind_Exception *a1)
{
  sub_10011A39C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}