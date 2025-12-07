uint64_t sub_10013CFFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DC688(a1 + 8, a2);
  sub_10012FC18(a1 + 8, a2);
  return v4;
}

uint64_t sub_10013D058(uint64_t a1, uint64_t **a2, uint64_t a3, unsigned __int8 *a4)
{
  sub_10013A038(v16, a3);
  if (sub_10005DF18(a4, v16))
  {
    *&v14 = "udif::details::UDIF_base::print_checksum_verification_status(const std::string &, const csum_any &, const details::checksum &) const";
    *(&v14 + 1) = 60;
    v15 = 0;
    sub_10013D240(v16, &v14);
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    sub_100001FE8(v17, v8, v9);
    sub_100001FE8(v17, " - same ", 8);
    sub_10014431C(v17, a3);
    std::ostream::~ostream();
    sub_1001418F8(v16);
  }

  else
  {
    *&v14 = "udif::details::UDIF_base::print_checksum_verification_status(const std::string &, const csum_any &, const details::checksum &) const";
    *(&v14 + 1) = 60;
    v15 = 0;
    sub_10005B450(v16, &v14);
    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (v10 >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = a2[1];
    }

    sub_100001FE8(v17, v11, v12);
    sub_100001FE8(v17, " - different calculated: <", 26);
    sub_10014431C(v17, a3);
    sub_100001FE8(v17, "> real: <", 9);
    sub_10013B364(v17, a4);
    sub_100001FE8(v17, ">", 1);
    std::ostream::~ostream();
    sub_10005B684(v16);
  }

  return std::ios::~ios();
}

void sub_10013D214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10013D368(va);
  _Unwind_Resume(a1);
}

void *sub_10013D240(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100144254(a1, a2);
  *a1 = off_10021AB60;
  a1[45] = &off_10021AC60;
  a1[46] = &off_10021AC88;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021AB60;
  a1[45] = off_10021ABE8;
  a1[46] = off_10021AC10;
  return a1;
}

void sub_10013D344(_Unwind_Exception *a1)
{
  sub_1001418F8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10013D368(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001418F8(a1);
  std::ios::~ios();
  return a1;
}

void sub_10013D3AC(uint64_t a1, uint64_t *a2)
{
  *a1 = &off_10021A218;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v3 = a2[2];
  *(a1 + 56) = a2[1];
  *(a1 + 64) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *a2;
  *a2 = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 72) = v4;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  sub_10013B53C();
  sub_10013CC4C();
  *(a1 + 89) = *(*(a1 + 72) + 216) >= *(*(a1 + 72) + 32) + *(*(a1 + 72) + 24);
  sub_10013D710();
}

void sub_10013D684(_Unwind_Exception *a1)
{
  sub_10000EAD0(v7 - 168);
  sub_10005F63C(v4, *(v1 + 112));
  v9 = *(v1 + 72);
  *(v1 + 72) = 0;
  if (v9)
  {
    operator delete();
  }

  v10 = *(v1 + 64);
  if (v10)
  {
    sub_10000E984(v10);
  }

  sub_1000285E0(v3, *v6);
  sub_1000285E0(v2, *v5);
  _Unwind_Resume(a1);
}

void sub_10013D890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_10000E90C(va);
  sub_10000E90C(va1);
  v5 = *(v3 - 32);
  if (v5)
  {
    sub_10000E984(v5);
  }

  sub_10000E950((v3 - 24));
  _Unwind_Resume(a1);
}

void sub_10013DAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_10000E950(&a10);
  _Unwind_Resume(a1);
}

void sub_10013DDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10000E950(va);
  if (v9)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10013DE24(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0xFFFFFFFE00000000;
  *(a1 + 40) = 0u;
  v4 = a1 + 40;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  sub_10012F2D4((a1 + 64));
  *(a1 + 68) = 0;
  *(a1 + 200) = 0;
  v5 = *a2;
  LODWORD(v28) = 1752394093;
  sub_1000A56E0("blocks_signature", v5, &v28, 1);
  *a1 = 1752394093;
  v6 = bswap32(*(a2 + 4));
  LODWORD(v28) = 1;
  sub_1000A56E0("version", v6, &v28, 1);
  *(a1 + 4) = 1;
  *(a1 + 8) = bswap64(*(a2 + 8));
  *(a1 + 16) = bswap64(*(a2 + 16));
  *(a1 + 24) = bswap64(*(a2 + 24));
  *(a1 + 32) = bswap32(*(a2 + 32));
  LODWORD(v28) = *(a2 + 36);
  sub_10013A110(&v28, v26);
  *(a1 + 36) = v26[0];
  v7 = *(a2 + 40);
  *(v4 + 16) = *(a2 + 56);
  *v4 = v7;
  sub_10012F2D4(v26);
  v8 = *(a2 + 144);
  v9 = *(a2 + 176);
  v26[6] = *(a2 + 160);
  v26[7] = v9;
  v27 = *(a2 + 192);
  v10 = *(a2 + 80);
  v11 = *(a2 + 112);
  v26[2] = *(a2 + 96);
  v26[3] = v11;
  v26[4] = *(a2 + 128);
  v26[5] = v8;
  v26[0] = *(a2 + 64);
  v26[1] = v10;
  v33 = *(a2 + 136);
  v34 = *(a2 + 152);
  v35 = *(a2 + 168);
  v36 = *(a2 + 184);
  v29 = *(a2 + 72);
  v30 = *(a2 + 88);
  v31 = *(a2 + 104);
  v32 = *(a2 + 120);
  v28 = *&v26[0];
  sub_100139F14(&v28, &v17);
  *(a1 + 64) = v17;
  v12 = v23;
  *(a1 + 136) = v22;
  *(a1 + 152) = v12;
  v13 = v25;
  *(a1 + 168) = v24;
  *(a1 + 184) = v13;
  v14 = v19;
  *(a1 + 72) = v18;
  *(a1 + 88) = v14;
  v15 = v21;
  *(a1 + 104) = v20;
  *(a1 + 120) = v15;
  *(a1 + 200) = bswap32(*(a2 + 200));
  return a1;
}

void sub_10013E064(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100001A14(exception_object);
}

uint64_t sub_10013E244(uint64_t a1, uint64_t a2)
{
  v4 = sub_10012F370(a1);
  v4[9] = 0;
  *(v4 + 5) = 0u;
  *(v4 + 1) = 0u;
  sub_10012F418(&v6, bswap32(*a2));
  *a1 = v6;
  *(a1 + 4) = bswap32(*(a2 + 4));
  *(a1 + 8) = bswap64(*(a2 + 8));
  *(a1 + 16) = bswap64(*(a2 + 16));
  *(a1 + 24) = bswap64(*(a2 + 24));
  *(a1 + 32) = bswap64(*(a2 + 32));
  return a1;
}

const void **sub_10013E38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a5@<X4>, CFDictionaryRef *a6@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  cf = 0;
  v22 = CFStringCreateWithCString(kCFAllocatorDefault, v10, 0x8000100u);
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    cf = CFStringCreateWithCString(kCFAllocatorDefault, v11, 0x8000100u);
  }

  else
  {
    cf = &stru_100226D78;
  }

  keys[0] = 0;
  sub_1000283C8(keys);
  std::to_string(&v20, a3);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v20;
  }

  else
  {
    v12 = v20.__r_.__value_.__r.__words[0];
  }

  v19 = CFStringCreateWithCString(kCFAllocatorDefault, v12, 0x600u);
  sub_100028820(keys);
  sub_100001FE8(&v25, "0x", 2);
  *(&v26[-1].__locale_ + *(v25 - 24)) = *(&v26[-1].__locale_ + *(v25 - 24)) & 0xFFFFFFB5 | 8;
  LOBYTE(values[0]) = 48;
  sub_1000283FC(&v25, values);
  *(&v26[1].__locale_ + *(v25 - 24)) = 4;
  std::ostream::operator<<();
  sub_100132330(&v25 + 8, &v18);
  *&v25 = v13;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v18;
  }

  else
  {
    v14 = v18.__r_.__value_.__r.__words[0];
  }

  v17 = CFStringCreateWithCString(kCFAllocatorDefault, v14, 0x600u);
  *keys = *off_10021A230;
  v25 = *off_10021A240;
  v26[0].__locale_ = @"CFName";
  values[0] = a5;
  values[1] = v22;
  values[2] = v19;
  values[3] = v17;
  if (*(a2 + 24))
  {
    v15 = 5;
  }

  else
  {
    v15 = 4;
  }

  values[4] = cf;
  *a6 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, v15, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_1000283C8(&v17);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  sub_1000283C8(&v19);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  sub_1000283C8(&cf);
  return sub_1000283C8(&v22);
}

void sub_10013E764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, const void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, const void *a31)
{
  sub_1000283C8(&a31);
  sub_1000283C8(&a24);
  sub_1000283C8(&a25);
  _Unwind_Resume(a1);
}

void *sub_10013E810(void *a1, int *a2)
{
  v4 = *(a1 + *(*a1 - 24) + 8);
  v5 = sub_100001FE8(a1, "type: ", 6);
  v26 = *a2;
  v6 = sub_100028AC4(v5, &v26);
  v7 = sub_100001FE8(v6, " data: ", 7);
  v8 = *v7;
  *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v7 + *(v8 - 24) + 8) |= 0x200u;
  v9 = std::ostream::operator<<();
  v10 = sub_100001FE8(v9, "/", 1);
  v11 = *v10;
  *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(v10 + *(v11 - 24) + 8) &= ~0x200u;
  v12 = std::ostream::operator<<();
  v13 = sub_100001FE8(v12, " logical: ", 10);
  v14 = *v13;
  *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v13 + *(v14 - 24) + 8) |= 0x200u;
  v15 = std::ostream::operator<<();
  v16 = sub_100001FE8(v15, "/", 1);
  v17 = *v16;
  *(v16 + *(*v16 - 24) + 8) = *(v16 + *(*v16 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(v16 + *(v17 - 24) + 8) &= ~0x200u;
  v18 = std::ostream::operator<<();
  v19 = sub_100001FE8(v18, " io: ", 5);
  v20 = *v19;
  *(v19 + *(*v19 - 24) + 8) = *(v19 + *(*v19 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v19 + *(v20 - 24) + 8) |= 0x200u;
  v21 = std::ostream::operator<<();
  v22 = sub_100001FE8(v21, ",", 1);
  v23 = *v22;
  *(v22 + *(*v22 - 24) + 8) = *(v22 + *(*v22 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(v22 + *(v23 - 24) + 8) &= ~0x200u;
  v24 = std::ostream::operator<<();
  sub_100001FE8(v24, "/", 1);
  std::ostream::operator<<();
  *(a1 + *(*a1 - 24) + 8) = v4;
  return a1;
}

uint64_t sub_10013EBC0(void *a1)
{
  result = sub_100144B8C(*(*a1 + 8 * a1[4]));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v3);
    sub_100001FE8(v3, "UDIF: Failed converting type array string (", 43);
    std::ostream::operator<<();
    sub_100001FE8(v3, ") to type", 9);
    sub_10000EBDC(exception, v3, 0x16u);
  }

  return result;
}

void sub_10013EC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

const void *sub_10013ECC0(uint64_t a1)
{
  result = CFDictionaryGetValue(*(a1 + 16), *(*a1 + 8 * *(a1 + 32)));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v3 = sub_100001940(exception, "UDIF: Can't get resource array", 0x16u);
  }

  return result;
}

BOOL sub_10013ED24(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  if (v3 != v4 || v3 == 0)
  {
    if (v3 == v4)
    {
      return *(a1 + 32) == *(a2 + 32);
    }

    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  return *(a1 + 32) == *(a2 + 32);
}

void sub_10013ED80(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = *a2;
  v2 = a2[1];
  a1[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  operator new[]();
}

void sub_10013F074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10013F248(va);
  operator delete[]();
}

void *sub_10013F120(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10014491C(a1, a2);
  *a1 = off_10021AD80;
  a1[45] = &off_10021AE80;
  a1[46] = &off_10021AEA8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021AD80;
  a1[45] = off_10021AE08;
  a1[46] = off_10021AE30;
  return a1;
}

void sub_10013F224(_Unwind_Exception *a1)
{
  sub_10014218C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10013F248(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10014218C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10013F290(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = 0;
  v5 = *a3;
  v4 = a3[1];
  *result = v3;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10013F2BC(uint64_t a1)
{
  sub_100063044(a1);

  operator delete();
}

uint64_t sub_10013F2F4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10013F58C(v1);

  return std::ios::~ios();
}

uint64_t sub_10013F340(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10013F58C(v1);

  return std::ios::~ios();
}

void sub_10013F3A0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10013F58C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10013F408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10013F444(_BYTE *a1, int a2)
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

void sub_10013F4B0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10013F58C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10013F514(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10013F58C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10013F58C(uint64_t a1)
{
  *a1 = &off_10021A418;
  sub_10013F6F8(a1);
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

uint64_t sub_10013F6F8(uint64_t a1)
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
        sub_10013F8A8((a1 + 72), __p);
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

void sub_10013F844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10013F870(uint64_t a1)
{
  sub_10013F58C(a1);

  operator delete();
}

int *sub_10013F8A8(uint64_t *a1, uint64_t *a2)
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
    v26 = 85;
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
      v26 = 85;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10013FAA4(uint64_t a1)
{
  sub_100131C34(&v3, 0);
  *a1 = v3;
  v4 = 0;
  sub_100131CCC(v5, &v4);
  *(a1 + 4) = v5[0];
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

uint64_t sub_10013FB4C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_100131C34(&v6, 2);
  *a1 = v6;
  *(a1 + 4) = 0;
  LODWORD(a3) = *a3;
  v7 = 32;
  sub_100131CCC(&v8, &v7);
  *v9 = a3;
  memset(&v9[4], 0, 124);
  *(a1 + 4) = v8;
  *(a1 + 72) = *&v9[64];
  *(a1 + 88) = *&v9[80];
  *(a1 + 104) = *&v9[96];
  *(a1 + 120) = *&v9[112];
  *(a1 + 8) = *v9;
  *(a1 + 24) = *&v9[16];
  *(a1 + 40) = *&v9[32];
  *(a1 + 56) = *&v9[48];
  return a1;
}

unsigned int *sub_10013FC44(unsigned int *result, unsigned int a2)
{
  *result = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = "descriptor_special";
    exception[2] = "invalid value";
    exception[3] = "value validator";
    *exception = &off_10021A4C0;
    *(exception + 8) = a2;
  }

  return result;
}

void sub_10013FCD0(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void sub_10013FD08(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_10017204C(a1);
  sub_100010B0C(v15, v3);
  sub_100028820(v10);
  if ((v16 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = v15[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = v15[1];
  }

  v6 = sub_100001FE8(&v11, v4, v5);
  v7 = sub_100001FE8(v6, " [", 2);
  *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFFB5 | 8;
  v8 = std::ostream::operator<<();
  sub_100001FE8(v8, "]", 1);
  sub_100028B04(&v12, a2);
  v11 = v9;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }
}

uint64_t sub_10013FF98(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100140230(v1);

  return std::ios::~ios();
}

uint64_t sub_10013FFE4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100140230(v1);

  return std::ios::~ios();
}

void sub_100140044(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100140230(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001400AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001400E8(_BYTE *a1, int a2)
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

void sub_100140154(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100140230(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001401B8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100140230(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100140230(uint64_t a1)
{
  *a1 = &off_10021A698;
  sub_10014039C(a1);
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

uint64_t sub_10014039C(uint64_t a1)
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
        sub_10014054C((a1 + 72), __p);
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

void sub_1001404E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100140514(uint64_t a1)
{
  sub_100140230(a1);

  operator delete();
}

int *sub_10014054C(uint64_t *a1, uint64_t *a2)
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
    v26 = 417;
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
      v26 = 417;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100140730(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001409C8(v1);

  return std::ios::~ios();
}

uint64_t sub_10014077C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001409C8(v1);

  return std::ios::~ios();
}

void sub_1001407DC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001409C8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100140844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100140880(_BYTE *a1, int a2)
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

void sub_1001408EC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001409C8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100140950(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001409C8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001409C8(uint64_t a1)
{
  *a1 = &off_10021A8B8;
  sub_100140B34(a1);
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

uint64_t sub_100140B34(uint64_t a1)
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
        sub_100140CE4((a1 + 72), __p);
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

void sub_100140C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100140CAC(uint64_t a1)
{
  sub_1001409C8(a1);

  operator delete();
}

int *sub_100140CE4(uint64_t *a1, uint64_t *a2)
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
    v26 = 458;
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
      v26 = 458;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100140EC8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100141160(v1);

  return std::ios::~ios();
}

uint64_t sub_100140F14(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100141160(v1);

  return std::ios::~ios();
}

void sub_100140F74(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100141160(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100140FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100141018(_BYTE *a1, int a2)
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

void sub_100141084(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100141160(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001410E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100141160(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100141160(uint64_t a1)
{
  *a1 = &off_10021AAD8;
  sub_1001412CC(a1);
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

uint64_t sub_1001412CC(uint64_t a1)
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
        sub_10014147C((a1 + 72), __p);
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

void sub_100141418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100141444(uint64_t a1)
{
  sub_100141160(a1);

  operator delete();
}

int *sub_10014147C(uint64_t *a1, uint64_t *a2)
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
    v26 = 500;
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
      v26 = 500;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100141660(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001418F8(v1);

  return std::ios::~ios();
}

uint64_t sub_1001416AC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001418F8(v1);

  return std::ios::~ios();
}

void sub_10014170C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001418F8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100141774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001417B0(_BYTE *a1, int a2)
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

void sub_10014181C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001418F8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100141880(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001418F8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001418F8(uint64_t a1)
{
  *a1 = &off_10021ACF8;
  sub_100141A64(a1);
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

uint64_t sub_100141A64(uint64_t a1)
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
        sub_100141C14((a1 + 72), __p);
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

void sub_100141BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100141BDC(uint64_t a1)
{
  sub_1001418F8(a1);

  operator delete();
}

int *sub_100141C14(uint64_t *a1, uint64_t *a2)
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
    v26 = 601;
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
      v26 = 601;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100141DF8(uint64_t a1, void *a2, const void **a3, uint64_t a4)
{
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0;
  v7 = *a3;
  *(a1 + 16) = *a3;
  if (v7)
  {
    CFRetain(v7);
  }

  *(a1 + 24) = 1;
  *(a1 + 32) = a4;
  return a1;
}

void sub_100141E58(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_10000E984(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100141E70(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *(result + 16) = 0;
    *(result + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
    *(result + 24) = 1;
  }

  *(result + 32) = *(a2 + 32);
  *(result + 40) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  if (*(a3 + 24) == 1)
  {
    *(result + 56) = 0;
    *(result + 56) = *(a3 + 16);
    *(a3 + 16) = 0;
    *(result + 64) = 1;
  }

  *(result + 72) = *(a3 + 32);
  return result;
}

uint64_t sub_100141EF4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10014218C(v1);

  return std::ios::~ios();
}

uint64_t sub_100141F40(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10014218C(v1);

  return std::ios::~ios();
}

void sub_100141FA0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10014218C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100142008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100142044(_BYTE *a1, int a2)
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

void sub_1001420B0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10014218C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100142114(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10014218C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10014218C(uint64_t a1)
{
  *a1 = &off_10021AF18;
  sub_1001422F8(a1);
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

uint64_t sub_1001422F8(uint64_t a1)
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
        sub_1001424A8((a1 + 72), __p);
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

void sub_100142444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100142470(uint64_t a1)
{
  sub_10014218C(a1);

  operator delete();
}

int *sub_1001424A8(uint64_t *a1, uint64_t *a2)
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
    v26 = 898;
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
      v26 = 898;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

_DWORD *sub_10014268C(_DWORD *result, int a2)
{
  v2 = 0;
  *result = a2;
  v5 = 0x200000001;
  v6 = 4;
  do
  {
    a2 &= ~*(&v5 + v2);
    v2 += 4;
  }

  while (v2 != 12);
  if (a2)
  {
    v3 = a2;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = "header_flags";
    exception[2] = "invalid flags";
    exception[3] = "flags validator";
    *exception = &off_1001FE7B8;
    *(exception + 8) = v3;
  }

  return result;
}

void *sub_10014277C(void *a1, uint64_t a2)
{
  sub_1000A5780((a1 + 2), a2);
  *a1 = off_10021B038;
  a1[2] = off_10021B0A0;
  a1[1] = off_10021B060;
  return a1;
}

std::exception *sub_100142800(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_1002084E0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void sub_10014287C(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_1002084E0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_100142918(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_1002084E0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10014299C(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_1002084E0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_100142A3C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = off_1002084E0;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_100142AD4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = off_1002084E0;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  operator delete();
}

uint64_t sub_100142B84(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021A418;
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

void sub_100142C34(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_100142C4C(void *a1, int *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = &unk_10021B0D8;
    v5 = 72;
    do
    {
      v6 = *(v4 - 4);
      if ((v6 & v3) != 0)
      {
        v3 &= ~v6;
        sub_100001FE8(a1, *(v4 - 1), *v4);
        if (v3)
        {
          v8 = 44;
          sub_100001FE8(a1, &v8, 1);
        }
      }

      v4 += 3;
      v5 -= 24;
    }

    while (v5);
    return a1;
  }

  else
  {

    return sub_100001FE8(a1, "none", 4);
  }
}

void *sub_100142D18(void *a1, _DWORD *a2)
{
  v2 = &off_10021B118;
  v3 = 48;
  while (*(v2 - 2) != *a2)
  {
    v2 += 3;
    v3 -= 24;
    if (!v3)
    {
      v4 = "no_match";
      v5 = 8;
      return sub_100001FE8(a1, v4, v5);
    }
  }

  v4 = *v2;
  v5 = v2[1];
  return sub_100001FE8(a1, v4, v5);
}

void *sub_100142D58(void *a1, _DWORD *a2)
{
  v2 = &off_10021B148;
  v3 = 48;
  while (*(v2 - 2) != *a2)
  {
    v2 += 3;
    v3 -= 24;
    if (!v3)
    {
      v4 = "no_match";
      v5 = 8;
      return sub_100001FE8(a1, v4, v5);
    }
  }

  v4 = *v2;
  v5 = v2[1];
  return sub_100001FE8(a1, v4, v5);
}

uint64_t *sub_100142D98(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + *(*a1 - 24) + 8);
  if (a3 != 1)
  {
    v7 = a3 - 1;
    do
    {
      *(a1 + *(*a1 - 24) + 8) = *(a1 + *(*a1 - 24) + 8) & 0xFFFFFFB5 | 8;
      v13 = 48;
      v8 = sub_1000283FC(a1, &v13);
      *(v8 + *(*v8 - 24) + 24) = 2;
      ++a2;
      v9 = std::ostream::operator<<();
      sub_100001FE8(v9, " ", 1);
      --v7;
    }

    while (v7);
    v4 = *a1;
  }

  *(a1 + *(v4 - 24) + 8) = *(a1 + *(v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  v12 = 48;
  v10 = sub_1000283FC(a1, &v12);
  *(v10 + *(*v10 - 24) + 24) = 2;
  std::ostream::operator<<();
  *(a1 + *(*a1 - 24) + 8) = v5;
  return a1;
}

void *sub_100142F2C(void *a1, _DWORD *a2)
{
  v2 = &off_10021B178;
  v3 = 72;
  while (*(v2 - 2) != *a2)
  {
    v2 += 3;
    v3 -= 24;
    if (!v3)
    {
      v4 = "no_match";
      v5 = 8;
      return sub_100001FE8(a1, v4, v5);
    }
  }

  v4 = *v2;
  v5 = v2[1];
  return sub_100001FE8(a1, v4, v5);
}

uint64_t **sub_100142F6C(uint64_t **a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_100142FEC(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void *sub_100142FEC(uint64_t **a1, uint64_t *a2, unsigned int *a3, void *a4)
{
  v4 = *sub_100143084(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_100143084(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *sub_10014322C(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100143300(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021A698;
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

void sub_1001433B0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001433C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = (*(a2 + 16) & 2) != 0 ? *a2 : *a2 + 1;
  v6 = v2;
  do
  {
    v7 = (*(v3 + 48) & 1) + *(v3 + 40) - 1;
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2)
  {
    return v2;
  }

  v10 = *(v6 + 32);
  if ((*(v6 + 48) & 2) == 0)
  {
    ++v10;
  }

  if ((*(a2 + 16) & 1) + *(a2 + 8) - 1 < v10)
  {
    return v2;
  }

  return v6;
}

uint64_t *sub_100143448(uint64_t **a1, __int128 *a2)
{
  v13 = *a2;
  v14 = *(a2 + 2);
  if (v14)
  {
    if (v14 == 3)
    {
      if (*(&v13 + 1) < v13)
      {
        return (a1 + 1);
      }
    }

    else if (v13 >= *(&v13 + 1))
    {
      return (a1 + 1);
    }
  }

  else if (v13 >= *(&v13 + 1) || (v13 + 1) >= *(&v13 + 1))
  {
    return (a1 + 1);
  }

  if (sub_10014355C(a2 + 24))
  {
    return (a1 + 1);
  }

  result = sub_1001439F4(a1, a2, a2);
  if ((v6 & 1) == 0)
  {
    v7 = sub_1000DC688(a1, &v13);
    v8 = sub_10012FC18(a1, &v13);
    v9 = *v8;
    if (*v8)
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

    v12 = v10;
    v15 = v7;
    sub_100143664(a1, &v13, a2 + 3, &v15, &v12);
    return v15;
  }

  return result;
}

BOOL sub_10014355C(uint64_t a1)
{
  v1 = 0;
  LOBYTE(v6) = 0;
  v16 = 0;
  if (byte_100234C24 == 1)
  {
    v6 = qword_100234B98;
    v7 = dword_100234BA0;
    v12 = unk_100234BE4;
    v13 = unk_100234BF4;
    v14 = unk_100234C04;
    v15 = unk_100234C14;
    v8 = *algn_100234BA4;
    v9 = unk_100234BB4;
    v10 = unk_100234BC4;
    v11 = unk_100234BD4;
    v1 = 1;
    v16 = 1;
  }

  v2 = *(a1 + 140);
  v4 = v2 == v1;
  v3 = v2 == v1;
  v4 = !v4 || v2 == 0;
  if (!v4)
  {
    return *a1 == v6 && sub_10005DF18((a1 + 4), &v6 + 1);
  }

  return v3;
}

uint64_t *sub_100143664(uint64_t **a1, __int128 *a2, uint64_t *a3, uint64_t **a4, uint64_t **a5)
{
  v8 = *a5;
  v9 = (*a5)[1];
  if (v9)
  {
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    v11 = *a5;
    do
    {
      v10 = v11[2];
      v12 = *v10 == v11;
      v11 = v10;
    }

    while (!v12);
  }

  v13 = *a4;
  if (*a1 == *a4)
  {
    v15 = (a1 + 1);
  }

  else
  {
    v14 = *v13;
    if (*v13)
    {
      do
      {
        v15 = v14;
        v14 = v14[1];
      }

      while (v14);
    }

    else
    {
      v16 = *a4;
      do
      {
        v15 = v16[2];
        v12 = *v15 == v16;
        v16 = v15;
      }

      while (v12);
    }
  }

  v27 = *a2;
  v28 = *(a2 + 2);
  *&v25 = qword_1002349D8;
  *(&v25 + 1) = qword_1002349D8;
  v26 = 2;
  v23 = *(v8 + 2);
  for (i = v8[6]; v13 != v10; *a4 = v13)
  {
    v25 = *(v13 + 2);
    v26 = *(v13 + 48);
    v21 = v27;
    v22 = v28;
    sub_1000DC500(&v21, &v25, &v29);
    if (v30)
    {
      if (v30 == 3)
      {
        if (*(&v29 + 1) >= v29)
        {
          goto LABEL_23;
        }
      }

      else if (v29 < *(&v29 + 1))
      {
        goto LABEL_23;
      }
    }

    else if (v29 < *(&v29 + 1) && (v29 + 1) < *(&v29 + 1))
    {
LABEL_23:
      LOBYTE(v31) = 0;
      v41 = 0;
      if (*(a3 + 140) == 1)
      {
        v31 = *a3;
        v32 = *(a3 + 2);
        v37 = *(a3 + 76);
        v38 = *(a3 + 92);
        v39 = *(a3 + 108);
        v40 = *(a3 + 124);
        v33 = *(a3 + 12);
        v34 = *(a3 + 28);
        v35 = *(a3 + 44);
        v36 = *(a3 + 60);
        v41 = 1;
      }

      *a4 = sub_100143B48(a1, v15, &v29, &v29);
    }

    v21 = v27;
    v22 = v28;
    sub_1000DC5C4(&v21, &v25, &v29);
    v27 = v29;
    LOBYTE(v28) = v30;
    v15 = *a4;
    v17 = (*a4)[1];
    v18 = *a4;
    if (v17)
    {
      do
      {
        v13 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      do
      {
        v13 = v18[2];
        v12 = *v13 == v18;
        v18 = v13;
      }

      while (!v12);
    }
  }

  v29 = v27;
  v30 = v28;
  result = sub_1000DC5C4(&v29, &v23, &v21);
  v20 = v21;
  if (!v22)
  {
    if (v21 >= *(&v21 + 1))
    {
      goto LABEL_42;
    }

    v20 = v21 + 1;
    goto LABEL_38;
  }

  if (v22 != 3)
  {
LABEL_38:
    if (v20 >= *(&v21 + 1))
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (*(&v21 + 1) < v21)
  {
    goto LABEL_42;
  }

LABEL_39:
  v29 = v21;
  v30 = v22;
  LOBYTE(v31) = 0;
  v41 = 0;
  if (*(a3 + 140) == 1)
  {
    v31 = *a3;
    v32 = *(a3 + 2);
    v37 = *(a3 + 76);
    v38 = *(a3 + 92);
    v39 = *(a3 + 108);
    v40 = *(a3 + 124);
    v33 = *(a3 + 12);
    v34 = *(a3 + 28);
    v35 = *(a3 + 44);
    v36 = *(a3 + 60);
    v41 = 1;
  }

  result = sub_100143B48(a1, v15, &v29, &v29);
  v15 = result;
LABEL_42:
  *a4 = v15;
  return result;
}

void *sub_1001439F4(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  result = *sub_100029640(a1, &v4, a2);
  if (!result)
  {
    sub_100143A74();
  }

  return result;
}

void *sub_100143B48(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *sub_100029470(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_100143A74();
  }

  return result;
}

uint64_t sub_100143BCC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021A8B8;
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

void sub_100143C7C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100143C94(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021AAD8;
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

void sub_100143D44(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t **sub_100143D5C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      sub_100143DE0(a1, v4, a2, a2);
      a2 += 48;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_100143DE0(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *sub_100143E90(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_100143E90(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_1000C48EC(a5, (a2 + 4)))
  {
    if (!sub_1000C48EC((a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_1000C48EC(a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_1000C48EC((v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1000C4864(a1, a3, a5);
}

void sub_100144024(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = sub_1001440C4(a1, a3);
  if (v11 >> 57)
  {
    sub_100012CFC("get_next_capacity, allocator's max size reached");
  }

  v12 = v11;
  v13 = operator new(v11 << 6);
  sub_100144138(a1, v13, v12, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

unint64_t sub_1001440C4(uint64_t a1, uint64_t a2)
{
  v2 = 0x1FFFFFFFFFFFFFFLL;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x1FFFFFFFFFFFFFFLL - v4 < a2 - v4 + v3)
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
  if (v8 < 0x1FFFFFFFFFFFFFFLL)
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

void sub_100144138(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = *a1 + (a1[1] << 6);
  v12 = a2;
  if (*a1 != a4)
  {
    v13 = *a1;
    v12 = a2;
    do
    {
      *v12 = *v13;
      v14 = *(v13 + 1);
      v15 = *(v13 + 3);
      v16 = *(v13 + 5);
      *(v12 + 56) = v13[7];
      *(v12 + 40) = v16;
      *(v12 + 24) = v15;
      *(v12 + 8) = v14;
      v13 += 8;
      v12 += 64;
    }

    while (v13 != a4);
  }

  *v12 = *a6;
  v17 = *(a6 + 8);
  v18 = *(a6 + 24);
  v19 = *(a6 + 40);
  *(v12 + 56) = *(a6 + 56);
  *(v12 + 40) = v19;
  *(v12 + 24) = v18;
  *(v12 + 8) = v17;
  if (v11 != a4)
  {
    v20 = v12 + (a5 << 6);
    do
    {
      *v20 = *a4;
      v21 = *(a4 + 8);
      v22 = *(a4 + 24);
      v23 = *(a4 + 40);
      *(v20 + 56) = *(a4 + 56);
      *(v20 + 40) = v23;
      *(v20 + 24) = v22;
      *(v20 + 8) = v21;
      a4 += 64;
      v20 += 64;
    }

    while (a4 != v11);
  }

  if (v10)
  {
    v24 = *a1;
    if (a1 + 3 != *a1)
    {
      operator delete(v24);
    }
  }

  v25 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v25;
  a1[2] = a3;
}

uint64_t sub_100144254(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021ACF8;
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

void sub_100144304(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014431C(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v2 = *(a2 + 12);
  if (v2 == -1)
  {
    sub_100015D74();
  }

  v5 = &v4;
  return (off_10021B1B8[v2])(&v5, a2 + 4);
}

void *sub_100144384(void *a1)
{
  v1 = sub_100001FE8(a1, "none {", 6);
  v2 = sub_100001FE8(v1, "[empty]", 7);

  return sub_100001FE8(v2, "}", 1);
}

void sub_10014443C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete[]();
  }

  __cxa_rethrow();
}

void sub_10014447C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001444B4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_1001444D4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100144514(void *a1, uint64_t a2)
{
  sub_1000A5780((a1 + 2), a2);
  *a1 = off_10021B2D8;
  a1[2] = off_10021B340;
  a1[1] = off_10021B300;
  return a1;
}

std::exception *sub_100144598(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_1002084E0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void sub_100144614(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_1002084E0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_1001446B0(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_1002084E0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_100144734(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_1002084E0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_1001447D4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = off_1002084E0;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10014486C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = off_1002084E0;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  operator delete();
}

uint64_t sub_10014491C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021AF18;
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

void sub_1001449CC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_1001449E4(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  operator new[]();
}

uint64_t sub_100144B8C(const __CFString *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = "Invalid resource key";
    goto LABEL_8;
  }

  Length = CFStringGetLength(a1);
  if (Length >= 5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = "Resource name is too long to fit uint32_t";
    goto LABEL_8;
  }

  v8.length = Length;
  *buffer = 0;
  v8.location = 0;
  if (CFStringGetBytes(a1, v8, 0, 0, 0, buffer, 4, 0) != 4)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = "Can't get key in cstring format";
LABEL_8:
    v6 = sub_100001940(exception, v5, 0x16u);
  }

  return bswap32(*buffer);
}

BOOL sub_100144C60(__CFArray *a1, uint64_t a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v5 = v3;
  if (v3)
  {
    CFArrayAppendValue(a1, v3);
  }

  sub_100053E5C(&v5);
  return v3 != 0;
}

BOOL sub_100144CE4(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v7 = v5;
  if (v5)
  {
    CFDictionarySetValue(a1, a2, v5);
  }

  sub_100053E5C(&v7);
  return v5 != 0;
}

__CFDictionary *sub_100144D78@<X0>(CFMutableDictionaryRef *__return_ptr a1@<X8>, const void **keys@<X0>, const void **values@<X1>, CFIndex numValues@<X2>)
{
  if (keys && values && numValues)
  {
    result = CFDictionaryCreate(kCFAllocatorDefault, keys, values, numValues, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    Mutable = result;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = 0;
    result = sub_100028D2C(&v7);
  }

  *a1 = Mutable;
  return result;
}

CFMutableDictionaryRef sub_100144E18@<X0>(CFMutableDictionaryRef *a1@<X8>)
{
  result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *a1 = result;
  return result;
}

const void **sub_100144E60@<X0>(const __CFData **__return_ptr a1@<X8>, CFPropertyListRef propertyList@<X0>)
{
  error = 0;
  v3 = CFPropertyListCreateData(kCFAllocatorDefault, propertyList, kCFPropertyListXMLFormat_v1_0, 0, &error);
  v4 = v3;
  if (v3)
  {
    v5 = error == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_1002260F0;
    v10 = std::generic_category();
    exception[1] = 22;
    exception[2] = v10;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Can't serialize property list";
  }

  Length = CFDataGetLength(v3);
  TypeID = CFDataGetTypeID();
  if (CFGetTypeID(v4) != TypeID)
  {
    v11 = __cxa_allocate_exception(0x40uLL);
    v12 = CFGetTypeID(v4);
    v13 = sub_100028638(v11, v12, TypeID);
  }

  v14 = 0;
  *a1 = v4;
  a1[1] = Length;
  sub_1000929D8(&v14);
  return sub_100092E70(&error);
}

void sub_100144FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_100092E70(&a10);
  _Unwind_Resume(a1);
}

const void **sub_100144FE0@<X0>(uint64_t *__return_ptr a1@<X8>, UInt8 *bytes@<X0>, CFIndex length@<X1>)
{
  error = 0;
  v4 = CFDataCreate(kCFAllocatorDefault, bytes, length);
  v18 = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_1002260F0;
    v10 = std::generic_category();
    exception[1] = 12;
    exception[2] = v10;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Can't create data for plist deserialization";
  }

  format = kCFPropertyListXMLFormat_v1_0;
  v5 = CFPropertyListCreateWithData(kCFAllocatorDefault, v4, 0, &format, &error);
  if (v5)
  {
    v6 = error == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v11 = __cxa_allocate_exception(0x40uLL);
    Code = CFErrorGetCode(error);
    *v11 = &off_1002260F0;
    v13 = std::generic_category();
    v11[1] = Code;
    v11[2] = v13;
    *(v11 + 24) = 0;
    *(v11 + 48) = 0;
    v11[7] = "Can't convert data to property list";
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(v5) != TypeID)
  {
    v14 = __cxa_allocate_exception(0x40uLL);
    v15 = CFGetTypeID(v5);
    v16 = sub_100028638(v14, v15, TypeID);
  }

  *a1 = v5;
  sub_1000929D8(&v18);
  return sub_100092E70(&error);
}

void sub_1001451C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12)
{
  __cxa_free_exception(v12);
  sub_1000929D8(&a11);
  sub_100092E70(&a12);
  _Unwind_Resume(a1);
}

char *sub_100145208@<X0>(const __CFData *a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, char **a4@<X8>)
{
  Length = CFDataGetLength(a1);
  v9 = a3 + a2;
  v10 = __CFADD__(a3, a2);
  if (__CFADD__(a3, a2))
  {
    v11 = -1;
  }

  else
  {
    v11 = a3 + a2;
  }

  if (__CFADD__(a3, a2))
  {
    v9 = v11;
  }

  v18 = v9;
  v19 = v10;
  v12 = sub_100101914(&v18);
  if (!a3)
  {
    a3 = Length;
  }

  if (Length < v12)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v17 = sub_100001940(exception, "Unable to convert data to vector.", 0x16u);
  }

  v13 = v12;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  BytePtr = CFDataGetBytePtr(a1);
  sub_10006F178(a4, a3);
  return sub_1000E6D24(a4, *a4, &BytePtr[a2], &BytePtr[v13], v13 - a2);
}

void sub_1001452F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100145318(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  v6 = CFStringCreateWithCString(kCFAllocatorDefault, v5, 0x8000100u);
  v8 = v6;
  if (v6)
  {
    CFDictionarySetValue(a1, a2, v6);
  }

  sub_1000283C8(&v8);
  return v6 != 0;
}

void sub_1001453A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000283C8(va);
  _Unwind_Resume(a1);
}

void sub_1001453B8(CFMutableDictionaryRef *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v4 = *a2;
    v5 = *a2 + 16 * v2;
    do
    {
      v6 = *v4;
      v7 = *(v4 + 8);
      v4 += 16;
      CFDictionaryAddValue(*a1, v6, v7);
    }

    while (v4 != v5);
  }
}

uint64_t sub_100145474()
{
  if (atomic_load_explicit(&qword_1002354C0, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&qword_1002354C0, &v4, sub_10014BBAC);
  }

  return qword_1002354B8;
}

void sub_1001454E0()
{
  qword_100234C28 = ccaes_cbc_encrypt_mode();
  qword_100234C30 = ccaes_cbc_decrypt_mode();
  operator new[]();
}

void sub_100145628(uint64_t a1, int a2, char **a3, const void **a4, uint64_t a5)
{
  *a1 = off_1001F8FA0;
  *(a1 + 12) = a2;
  v8 = *a3;
  v9 = a3[1];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_1001499A0((a1 + 16), v8, &v8[v9], v9);
  *(a1 + 40) = a5;
  *a1 = off_10021B378;
  sub_100146504((a1 + 48), a4);
}

void sub_10014571C(_Unwind_Exception *a1)
{
  sub_100030CF8(v3);
  v5 = v1[6];
  v1[6] = 0;
  if (v5)
  {
    operator delete[]();
  }

  *v1 = v2;
  v6 = v1[2];
  if (v6)
  {
    v1[3] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_100145778(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  v5 = *(a2 + 40);
  *a1 = off_1001F8FA0;
  *(a1 + 12) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_10006F240((a1 + 16), *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  *(a1 + 40) = v5;
  *a1 = off_10021B378;
  sub_100146504((a1 + 48), (a2 + 48));
}

void sub_100145870(_Unwind_Exception *a1)
{
  v4 = v3;
  sub_100030CF8(v4);
  v6 = v1[6];
  v1[6] = 0;
  if (v6)
  {
    operator delete[]();
  }

  *v1 = v2;
  v7 = v1[2];
  if (v7)
  {
    v1[3] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001458CC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  qword_100234C28 = ccaes_cbc_encrypt_mode();
  qword_100234C30 = ccaes_cbc_decrypt_mode();
  __chkstk_darwin(qword_100234C30);
  for (; a5; --a5)
  {
    sub_100145474();
    cchmac_update();
    sub_100145474();
    cchmac_final();
    qword_100234C28 = ccaes_cbc_encrypt_mode();
    qword_100234C30 = ccaes_cbc_decrypt_mode();
    cccbc_set_iv();
    qword_100234C28 = ccaes_cbc_encrypt_mode();
    qword_100234C30 = ccaes_cbc_decrypt_mode();
    cccbc_update();
    v10 = *(a1 + 40);
    a3 += v10;
    a4 += v10;
    ++a2;
  }

  return 0;
}

void sub_100145A90()
{
  qword_100234C38 = ccaes_xts_encrypt_mode();
  qword_100234C40 = ccaes_xts_decrypt_mode();
  operator new[]();
}

void sub_100145BE8(uint64_t a1, int a2, char **a3, void *a4, uint64_t a5)
{
  *a1 = off_1001F8FA0;
  *(a1 + 12) = a2;
  v8 = *a3;
  v9 = a3[1];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_1001499A0((a1 + 16), v8, &v8[v9], v9);
  *(a1 + 40) = a5;
  *a1 = off_10021B3A0;
  *(a1 + 48) = 0;
  *(a1 + 64) = *a4;
  sub_100145A90();
}

void sub_100145CD4(_Unwind_Exception *a1)
{
  sub_100030D98(v3);
  *v1 = v2;
  v5 = v1[2];
  if (v5)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_100145D04(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  v5 = *(a2 + 40);
  *a1 = off_1001F8FA0;
  *(a1 + 12) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_10006F240((a1 + 16), *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  *(a1 + 40) = v5;
  *a1 = off_10021B3A0;
  *(a1 + 48) = 0;
  *(a1 + 64) = *(a2 + 64);
  sub_100145A90();
}

void sub_100145E10(_Unwind_Exception *a1)
{
  sub_100030D98(v3);
  *v1 = v2;
  v5 = v1[2];
  if (v5)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100145E40(uint64_t a1, uint64_t *a2)
{
  ccaes_cbc_encrypt_mode();
  sub_100145EA4(*a2, a2[1], &unk_1001C7414, 15, a1 + 32, 0x20uLL);
  sub_100145EA4(*a2, a2[1], &unk_1001C7423, 15, a1, 0x20uLL);
  return a1;
}

uint64_t sub_100145EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = ccaes_cbc_encrypt_mode();
  v9 = (v8[1] + *v8 + 159) / 0x50uLL;
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - 2 * v11;
  __chkstk_darwin(v10);
  v14 = &v16 - 2 * v13;
  cccmac_init();
  v16 = 1;
  if (a6 >= 0x10)
  {
    do
    {
      memcpy(v14, v12, 80 * v9);
      cccmac_update();
      cccmac_update();
      cccmac_final_generate();
      ++v16;
      a5 += 16;
    }

    while (v16 <= a6 >> 4);
  }

  cc_clear();
  return cc_clear();
}

void sub_100146044(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v7 = sub_100145E40((a1 + 10), a3);
  *a1 = off_10021B3C8;
  v9[0] = v7;
  v9[1] = 32;
  v8[0] = a1 + 14;
  v8[1] = 32;
  sub_100145BE8(a1, a2, v9, v8, a4);
}

void sub_1001460D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v2 = *(a2 + 128);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 112) = v3;
  *(a1 + 128) = v2;
  *a1 = off_10021B3C8;
  v5 = *(a2 + 12);
  v7[0] = (a1 + 80);
  v7[1] = 32;
  v6[0] = a1 + 112;
  v6[1] = 32;
  sub_100145BE8(a1, v5, v7, v6, *(a2 + 40));
}

uint64_t *sub_10014618C(uint64_t *a1)
{
  *a1 = off_10021B3C8;
  memset_s(a1 + 10, 0x20uLL, 0, 0x20uLL);
  memset_s(a1 + 14, 0x20uLL, 0, 0x20uLL);
  *a1 = off_10021B3A0;
  sub_100030D98(a1 + 6);
  *a1 = off_1001F8FA0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10014624C(uint64_t *a1)
{
  sub_10014618C(a1);

  operator delete();
}

uint64_t sub_100146284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  qword_100234C38 = ccaes_xts_encrypt_mode();
  qword_100234C40 = ccaes_xts_decrypt_mode();
  qword_100234C38 = ccaes_xts_encrypt_mode();
  qword_100234C40 = ccaes_xts_decrypt_mode();
  __chkstk_darwin(qword_100234C40);
  for (; a5; --a5)
  {
    qword_100234C38 = ccaes_xts_encrypt_mode();
    qword_100234C40 = ccaes_xts_decrypt_mode();
    ccxts_set_tweak();
    qword_100234C38 = ccaes_xts_encrypt_mode();
    qword_100234C40 = ccaes_xts_decrypt_mode();
    ccxts_update();
    v10 = *(a1 + 40);
    a3 += v10;
    a4 += v10;
    ++a2;
  }

  return 0;
}

void sub_10014640C(void *a1, void *a2)
{
  *a1 = 0;
  sub_100145474();
  sub_100145474();
  sub_100145474();
  operator new[]();
}

void sub_1001464D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

void sub_100146504(void **a1, const void **a2)
{
  *a1 = 0;
  sub_100145474();
  sub_100145474();
  sub_100145474();
  operator new[]();
}

void sub_100146604(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100146634(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 == -1)
  {
    sub_100015D74();
  }

  v4 = &v3;
  return (off_10021B5E0[v1])(&v4, a1);
}

uint64_t sub_100146680(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t **a4)
{
  v8 = a3[2];
  if (v8)
  {
    v9 = 0;
    v10 = *a3 + 1;
    do
    {
      v11 = *v10;
      v10 += 2;
      v9 += v11;
      v8 = (v8 - 1);
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v12 = atomic_fetch_add_explicit(&qword_100235450, 1uLL, memory_order_relaxed) + 1;
  if (atomic_load_explicit(&qword_100235458, memory_order_acquire) != -1)
  {
    v19[0] = &v17;
    v19[1] = &qword_100235460;
    v18 = v19;
    std::__call_once(&qword_100235458, &v18, sub_100149BB4);
  }

  if (v9 >> 17 >= qword_100235460 / v12)
  {
    v13 = qword_100235460 / v12;
  }

  else
  {
    v13 = v9 >> 17;
  }

  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  if (v9 <= 0x20000 || qos_class_self() < QOS_CLASS_DEFAULT || v13 <= 1)
  {
    v15 = sub_100146634(a1);
    result = sub_1001467D8(v15, a2, a3, a4, *(a1 + 152));
  }

  else
  {
    result = sub_100146918(a1, v14, a2, a3, a4, v9);
  }

  atomic_fetch_add_explicit(&qword_100235450, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  return result;
}

uint64_t sub_1001467D8(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t **a4, uint64_t a5)
{
  if (!a3[2])
  {
    return 0;
  }

  v10 = *a3;
  v11 = *a4;
  v12 = **a4;
  v13 = **a3;
  do
  {
    if (v11 == &(*a4)[2 * a4[2]])
    {
      break;
    }

    result = (*(*a1 + 16))(a1, a2, v13, v12, 1);
    if (result)
    {
      return result;
    }

    v13 += a5;
    if (v13 == *v10 + v10[1])
    {
      v10 += 2;
      if (v10 != &(*a3)[2 * a3[2]])
      {
        v13 = *v10;
      }
    }

    v12 += a5;
    if (v12 == *v11 + v11[1])
    {
      v11 += 2;
      if (v11 != &(*a4)[2 * a4[2]])
      {
        v12 = *v11;
      }
    }

    ++a2;
  }

  while (v10 != &(*a3)[2 * a3[2]]);
  return 0;
}

uint64_t sub_100146918(uint64_t a1, size_t iterations, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9 = 0;
  v6 = *(a1 + 152);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1001469BC;
  v8[3] = &unk_10021B3E0;
  v8[4] = a1;
  v8[5] = a4;
  v8[6] = (a6 / iterations + v6 - 1) / v6 * v6;
  v8[7] = a6;
  v8[8] = a5;
  v8[9] = a3;
  v8[10] = &v9;
  dispatch_apply(iterations, 0, v8);
  return v9;
}

void sub_100146AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    operator delete[]();
  }

  if (a12)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100146C4C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a3 >= 0x21 && qos_class_self() > 0x14)
  {
    v12 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_100146EB8;
    v11[3] = &unk_10021B400;
    v11[4] = a1;
    v11[5] = a3;
    v11[6] = a2;
    v11[7] = a4;
    v11[8] = &v12;
    dispatch_apply((a3 + 31) >> 5, 0, v11);
    return atomic_load(&v12);
  }

  else
  {
    v8 = sub_100146634(a1);
    v9 = *(a1 + 152);

    return sub_100146D4C(v8, a2, a3, a4, v9, 0);
  }
}

uint64_t sub_100146D4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return 0;
  }

  v9 = a3;
  while (1)
  {
    v12 = a6 ? a6 : a2;
    v13 = (*(*a1 + 16))(a1, a4 / a5, a2, v12, 1);
    if (v13)
    {
      break;
    }

    a4 += a5;
    a2 += a5;
    if (!--v9)
    {
      return 0;
    }
  }

  v15 = v13;
  *&v16 = "int crypto::crypt_op::crypt_chunk(crypto::context::aes &, char *, size_t, uint64_t, size_t, char *)";
  *(&v16 + 1) = 33;
  v17 = 16;
  sub_100146FA4(v18, &v16);
  sub_100001FE8(v19, "Crypto operation on data of ", 28);
  std::ostream::operator<<();
  sub_100001FE8(v19, " failed with ", 13);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_100149E84(v18);
  std::ios::~ios();
  if (v15 < 0)
  {
    return v15;
  }

  else
  {
    return -v15;
  }
}

void sub_100146EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1001470CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100146EB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_100030DC4(v13, v4);
  v6 = *(v4 + 152);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = sub_100146634(v13);
  if ((v5 - 32 * a2) >= 0x20)
  {
    v10 = 32;
  }

  else
  {
    v10 = v5 - 32 * a2;
  }

  v11 = sub_100146D4C(v9, v8 + v6 * 32 * a2, v10, v7 + v6 * 32 * a2, *(v4 + 152), 0);
  if (v11)
  {
    atomic_store(v11, *(a1 + 64));
  }

  return sub_100030E70(v13);
}

void *sub_100146FA4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10014BBCC(a1, a2);
  *a1 = off_10021B610;
  a1[45] = &off_10021B710;
  a1[46] = &off_10021B738;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021B610;
  a1[45] = off_10021B698;
  a1[46] = off_10021B6C0;
  return a1;
}

void sub_1001470A8(_Unwind_Exception *a1)
{
  sub_100149E84(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001470CC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100149E84(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100147110(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, void *, uint64_t), uint64_t a4, unsigned int **a5)
{
  v7 = a1[2];
  if (v7)
  {
    v8 = a4;
    v10 = *a1;
    v11 = (a2 + (a4 >> 1));
    v12 = a3;
    v13 = 112 * v7;
    while (1)
    {
      if (v8)
      {
        (*(*v11 + v12))(v36, v11, v10);
      }

      else
      {
        a3(v36, v11, v10);
      }

      v14 = &(*a5)[6 * a5[2]];
      *v14 = 0;
      *(v14 + 4) = 0;
      *(v14 + 1) = 0;
      if (BYTE4(v36[0]) == 1)
      {
        *v14 = v36[0];
        *(v14 + 4) = 1;
      }

      *(v14 + 2) = v37;
      v37 = 0;
      v15 = *(v14 + 2);
      if (v15)
      {
        *v15 = v14;
      }

      v16 = (a5[2] + 1);
      a5[2] = v16;
      v17 = &(*a5)[6 * v16];
      if ((*(v17 - 5) & 1) == 0 && !*(v17 - 1))
      {
        break;
      }

      v10 += 112;
      v13 -= 112;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    *&v34 = "ssize_t crypto::crypt_op::backend_futures_prepare_and_run(const fixed_size_vector_t<sg_entry> &, Backend &, Backend::future_t (Backend::*)(const sg_entry &), fixed_size_vector_t<Backend::future_t> &)";
    *(&v34 + 1) = 138;
    v35 = 16;
    sub_1001473B8(v36, &v34);
    sub_100001FE8(v38, "diskimagesuio: future read invalid in read", 42);
    std::ostream::~ostream();
    sub_10014A61C(v36);
    std::ios::~ios();
    a5[2] = (a5[2] - 1);
    return -5;
  }

  else
  {
LABEL_13:
    (*(*a2 + 152))(a2, a2, a3, a4);
    v18 = a1[2];
    v19 = a5[2];
    v20 = v18 == 0;
    v21 = v19 == 0;
    v22 = 0;
    if (v18)
    {
      v23 = v19 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
LABEL_18:
      if (v20 && v21)
      {
        return v22;
      }

      else
      {
        return -5;
      }
    }

    else
    {
      v25 = *a5;
      v26 = 24 * v19 - 24;
      v27 = 112 * v18 - 112;
      v28 = (*a1 + 16);
      while (1)
      {
        v29 = sub_100044D64(v25);
        v30 = v29;
        v31 = *v28;
        v28 += 14;
        if (v31 != v29)
        {
          break;
        }

        v22 += v29;
        v20 = v27 == 0;
        v21 = v26 == 0;
        if (v27)
        {
          v25 += 6;
          v32 = v26;
          v26 -= 24;
          v27 -= 112;
          if (v32)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      if (v29 >= 0)
      {
        return -5;
      }

      return v30;
    }
  }
}

void sub_1001473A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1001474E0(va);
  _Unwind_Resume(a1);
}

void *sub_1001473B8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10014BC94(a1, a2);
  *a1 = off_10021B830;
  a1[45] = &off_10021B930;
  a1[46] = &off_10021B958;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021B830;
  a1[45] = off_10021B8B8;
  a1[46] = off_10021B8E0;
  return a1;
}

void sub_1001474BC(_Unwind_Exception *a1)
{
  sub_10014A61C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001474E0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10014A61C(a1);
  std::ios::~ios();
  return a1;
}

void sub_1001476D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a9)
  {
    operator delete[]();
  }

  if (a12)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

void sub_100147730(atomic_ullong **a1)
{
  sub_100032420(a1 + 25);
  sub_100033050(a1 + 22);
  if (a1[21])
  {
    a1[21] = 0;
  }

  sub_100033104(a1 + 16);
}

uint64_t sub_100147780(uint64_t a1)
{
  if (*(a1 + 80))
  {
    sub_100147524(*(a1 + 64), (a1 + 176));
  }

  v2 = sub_100147110((a1 + 128), *(a1 + 72), sub_1001479AC, 0, (a1 + 104));
  if ((v2 & 0x8000000000000000) == 0)
  {
    sub_100147524(*(a1 + 64), (a1 + 176));
  }

  v3 = v2;
  *&v5 = "crypto::crypt_op::crypt_consecutive_vector::operator()()";
  *(&v5 + 1) = 54;
  v6 = 16;
  sub_1001479D0(v7, &v5);
  sub_100001FE8(v8, "crypt_consecutive_vector: check errors_in read futures ", 55);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_10014ADB4(v7);
  std::ios::~ios();
  return v3;
}

void sub_100147988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100147C88(va);
  _Unwind_Resume(a1);
}

void *sub_1001479D0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10014BD5C(a1, a2);
  *a1 = off_10021BA50;
  a1[45] = &off_10021BB50;
  a1[46] = &off_10021BB78;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021BA50;
  a1[45] = off_10021BAD8;
  a1[46] = off_10021BB00;
  return a1;
}

void sub_100147AD4(_Unwind_Exception *a1)
{
  sub_10014ADB4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100147AF8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10014ADB4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100147B60(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10014BE24(a1, a2);
  *a1 = off_10021BC70;
  a1[45] = &off_10021BD70;
  a1[46] = &off_10021BD98;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021BC70;
  a1[45] = off_10021BCF8;
  a1[46] = off_10021BD20;
  return a1;
}

void sub_100147C64(_Unwind_Exception *a1)
{
  sub_10014B54C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100147C88(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10014B54C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100147CCC(void *a1, size_t size, uint64_t a3)
{
  if (size)
  {
    v6 = malloc_type_valloc(size, 0x8B7C732DuLL);
    if (!v6)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = std::bad_alloc::bad_alloc(exception);
    }
  }

  else
  {
    v6 = 0;
  }

  v10[0] = off_10021BE88;
  v10[3] = v10;
  *a1 = v6;
  sub_100015FBC((a1 + 1), v10);
  sub_10001590C(v10);
  a1[5] = size;
  a1[6] = a3;
  a1[7] = *a1;
  return a1;
}

uint64_t sub_100147DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 56);
  *(a1 + 56) = v3 + (a2 + *(a1 + 48) - 1) / *(a1 + 48) * *(a1 + 48);
  v5[0] = off_10021BF68;
  v5[3] = v5;
  *a3 = v3;
  sub_100015FBC((a3 + 1), v5);
  return sub_10001590C(v5);
}

void *sub_100147E60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = sub_10014BFC4(a1, a6);
  sub_10014C05C(v16 + 32, a7);
  a1[8] = a2;
  a1[9] = a3;
  a1[10] = a4;
  a1[11] = a5;
  a1[12] = a8;
  a1[13] = a9;
  return a1;
}

unint64_t sub_100147EF8(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1[9];
  v4 = v3[2];
  if (!v4)
  {
    return 0;
  }

  v6 = a1[3];
  if (!v6)
  {
    sub_10001583C();
  }

  if ((*(*v6 + 48))(v6, *v3 + 112 * v4 - 112))
  {
    return 0;
  }

  v9 = *a1[9] + 112 * *(a1[9] + 16);
  v10 = *(v9 - 96);
  v11 = *(v9 - 80);
  v12 = v11 - v10;
  if (v11 <= v10)
  {
    return 0;
  }

  v13 = a2[2];
  v14 = a1[12];
  if ((v10 + v13 + v14 - 1) / v14 * v14 > v11)
  {
    if (v12 >= v13)
    {
      v12 = a2[2];
    }

    v13 = (v12 + v10) / v14 * v14 - v10;
  }

  sub_100061AE0(v32, v9 - 112, v10 + v13, 0, *(v9 - 88), v11);
  sub_10002E794(*a1[9] + 112 * *(a1[9] + 16) - 112, v32);
  if (*(&v32[0] + 1))
  {
    sub_10000E984(*(&v32[0] + 1));
  }

  v15 = a1[10];
  v16 = v15[2];
  v17 = *v15;
  v18 = *v15 + 56 * v16;
  if (*(v18 - 8))
  {
    v19 = *(v18 - 24);
    v20 = *(v18 - 40) + v19;
    v21 = *(v18 - 16) + v19;
    v22 = (a2[3] + v13 + a1[12] + ~v21) / a1[12] * a1[12];
    if (a3)
    {
      atomic_fetch_add_explicit((a3 + 16), 1uLL, memory_order_relaxed);
      v16 = v15[2];
      v17 = *v15;
    }

    v23 = v17 + 56 * v16;
    *v23 = a3;
    *&v32[0] = 0;
    *(v23 + 8) = 1;
    *(v23 + 16) = v20;
    *(v23 + 24) = v20;
    *(v23 + 32) = v22;
    *(v23 + 40) = v21;
    *(v23 + 48) = 0;
    v15[2] = v16 + 1;
    sub_100032478(v32);
    v24 = a2[3];
  }

  else
  {
    v24 = a2[3];
    *(v18 - 24) = (v24 + v13 + a1[12] + ~*(v18 - 16)) / a1[12] * a1[12];
  }

  v26 = *a1[9] + 112 * *(a1[9] + 16);
  v27 = sub_1001481A4((a1 + 4), *(v26 - 112) + a1[13] + v24 - *(v26 - 88), *a2, v13);
  if (v27 && v28)
  {
    v29 = a1[11];
    if (a3)
    {
      atomic_fetch_add_explicit((a3 + 16), 1uLL, memory_order_relaxed);
    }

    v30 = v29[2];
    v31 = *v29 + 40 * v30;
    *v31 = a3;
    *&v32[0] = 0;
    *(v31 + 8) = 1;
    *(v31 + 16) = v27;
    *(v31 + 24) = v28;
    *(v31 + 32) = v13;
    v29[2] = v30 + 1;
    sub_100032478(v32);
  }

  return v13;
}

void sub_10014818C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001481A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_10001583C();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t sub_100148204@<X0>(uint64_t result@<X0>, uint64_t (***a2)()@<X8>)
{
  if (result)
  {
    v2 = off_10021C078;
  }

  else
  {
    v2 = off_10021BFE8;
  }

  *a2 = v2;
  a2[3] = a2;
  return result;
}

uint64_t sub_100148248(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[2];
  v6 = a2[3] + a3;
  v7 = a1[12];
  v8 = v6 % v7;
  v9 = v7 - v6 % v7;
  if (!v8)
  {
    v9 = 0;
  }

  if (v5 - a3 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5 - a3;
  }

  v11 = a1[3];
  if (!v11)
  {
    goto LABEL_79;
  }

  v12 = a3;
  v14 = *a2;
  v15 = v8 - a3;
  v16 = v8 - a3 + v5;
  result = (*(*v11 + 48))(v11);
  if ((result & 1) == 0 && !v16)
  {
    return result;
  }

  v18 = a1[3];
  if (!v18)
  {
LABEL_79:
    sub_10001583C();
  }

  v19 = vm_page_size;
  v75 = v12 - v8 + a1[13] + a2[3];
  result = (*(*v18 + 48))(v18, a2);
  if (result)
  {
    v20 = (v16 + v19 - 1) / v19 * v19;
    sub_100147DC4(a1[8], v20, &v87);
    v21 = a1[9];
    sub_10014C2B4(&v77, &v87);
    v22 = v15 + a2[2];
    v79 = v77;
    v80 = v78;
    if (v78)
    {
      atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v81 = v22;
    v82 = v75;
    v83 = v20;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    sub_100030464(*v21 + 112 * v21[2]++, &v79);
    if (v80)
    {
      sub_10000E984(v80);
    }

    if (v78)
    {
      sub_10000E984(v78);
    }

    sub_100015888(&v87, 0);
    result = sub_10001590C(v88);
  }

  v23 = v14 + v12;
  if (v8)
  {
    v24 = a1[3];
    v25 = a4;
    if (!v24)
    {
      sub_10001583C();
    }

    if (((*(*v24 + 48))(v24, a2) & 1) == 0)
    {
      sub_100147DC4(a1[8], a1[12], &v87);
      v26 = a1[9];
      sub_10014C2B4(&v77, &v87);
      v27 = a1[12];
      v79 = v77;
      v80 = v78;
      if (v78)
      {
        atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v81 = v10 + v8;
      v82 = v75;
      v83 = v27;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      sub_100030464(*v26 + 112 * v26[2]++, &v79);
      if (v80)
      {
        sub_10000E984(v80);
      }

      if (v78)
      {
        sub_10000E984(v78);
      }

      sub_100015888(&v87, 0);
      sub_10001590C(v88);
    }

    v28 = a1[10];
    if (a4)
    {
      atomic_fetch_add_explicit((a4 + 16), 1uLL, memory_order_relaxed);
    }

    v29 = *a1[9] + 112 * *(a1[9] + 16);
    v30 = *(v29 - 112);
    v31 = a1[12];
    v32 = *(v29 - 88) - a1[13];
    v33 = v28[2];
    v34 = *v28 + 56 * v33;
    *v34 = a4;
    v79 = 0;
    *(v34 + 8) = 1;
    *(v34 + 16) = v30;
    *(v34 + 24) = v30;
    *(v34 + 32) = v31;
    *(v34 + 40) = v32;
    *(v34 + 48) = 0;
    v28[2] = v33 + 1;
    sub_100032478(&v79);
    result = sub_1001481A4((a1 + 4), *(*a1[9] + 112 * *(a1[9] + 16) - 112) + v8, v23, v10);
    if (result)
    {
      v36 = v35 == 0;
    }

    else
    {
      v36 = 1;
    }

    if (!v36)
    {
      v37 = a1[11];
      if (a4)
      {
        atomic_fetch_add_explicit((a4 + 16), 1uLL, memory_order_relaxed);
      }

      v38 = v37[2];
      v39 = *v37 + 40 * v38;
      *v39 = a4;
      v79 = 0;
      *(v39 + 8) = 1;
      *(v39 + 16) = result;
      *(v39 + 24) = v35;
      *(v39 + 32) = v10;
      v37[2] = v38 + 1;
      result = sub_100032478(&v79);
    }

    v40 = v10 + v8;
    v16 -= v10 + v8;
    v12 += v10;
    v23 += v10;
  }

  else
  {
    v40 = 0;
    v25 = a4;
  }

  v41 = a1[12];
  v42 = v16 / v41 * v41;
  v43 = v16 % v41;
  if (v16 != v16 % v41)
  {
    v44 = a1[3];
    if (!v44)
    {
      sub_10001583C();
    }

    if (((*(*v44 + 48))(v44, a2) & 1) == 0)
    {
      v45 = a1[9];
      sub_100093AE4(&v79, a2, v42, v12, a1[13] + v12 + a2[3], a2[4] - v12);
      sub_100030464(*v45 + 112 * v45[2]++, &v79);
      if (v80)
      {
        sub_10000E984(v80);
      }

      v40 = 0;
    }

    v46 = a1[10];
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 16), 1uLL, memory_order_relaxed);
    }

    v47 = *a1[9] + 112 * *(a1[9] + 16);
    v48 = *(v47 - 112) + v40;
    v49 = a2[5] & 1;
    if (a2[5])
    {
      v50 = *(v47 - 112) + v40;
    }

    else
    {
      v50 = v23;
    }

    v51 = *(v47 - 88) + v40 - a1[13];
    v52 = v46[2];
    v53 = *v46 + 56 * v52;
    *v53 = v25;
    v79 = 0;
    *(v53 + 8) = 1;
    *(v53 + 16) = v48;
    *(v53 + 24) = v50;
    *(v53 + 32) = v42;
    *(v53 + 40) = v51;
    *(v53 + 48) = v49 ^ 1;
    v46[2] = v52 + 1;
    result = sub_100032478(&v79);
    if (a2[5])
    {
      result = sub_1001481A4((a1 + 4), *(*a1[9] + 112 * *(a1[9] + 16) - 112) + v40, v23, v42);
      if (result && v54 != 0)
      {
        v56 = a1[11];
        if (v25)
        {
          atomic_fetch_add_explicit((v25 + 16), 1uLL, memory_order_relaxed);
        }

        v57 = v56[2];
        v58 = *v56 + 40 * v57;
        *v58 = v25;
        v79 = 0;
        *(v58 + 8) = 1;
        *(v58 + 16) = result;
        *(v58 + 24) = v54;
        *(v58 + 32) = v42;
        v56[2] = v57 + 1;
        result = sub_100032478(&v79);
      }
    }

    v40 += v42;
    v23 += v42;
  }

  if (v43)
  {
    v59 = a1[3];
    if (!v59)
    {
      sub_10001583C();
    }

    if (((*(*v59 + 48))(v59, a2) & 1) == 0)
    {
      v60 = (v43 + a1[12] - 1) / a1[12] * a1[12];
      sub_100147DC4(a1[8], v60, &v87);
      v61 = a1[9];
      sub_10014C2B4(&v77, &v87);
      v62 = v42 + v12 + a1[13] + a2[3];
      v79 = v77;
      v80 = v78;
      if (v78)
      {
        atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v81 = v43;
      v82 = v62;
      v83 = v60;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      sub_100030464(*v61 + 112 * v61[2]++, &v79);
      if (v80)
      {
        sub_10000E984(v80);
      }

      if (v78)
      {
        sub_10000E984(v78);
      }

      sub_100015888(&v87, 0);
      sub_10001590C(v88);
      v40 = 0;
    }

    v63 = a1[10];
    if (a4)
    {
      atomic_fetch_add_explicit((a4 + 16), 1uLL, memory_order_relaxed);
    }

    v64 = *a1[9] + 112 * *(a1[9] + 16);
    v65 = *(v64 - 112) + v40;
    v66 = a1[12];
    v67 = *(v64 - 88) + v40 - a1[13];
    v68 = v63[2];
    v69 = *v63 + 56 * v68;
    *v69 = a4;
    v79 = 0;
    *(v69 + 8) = 1;
    *(v69 + 16) = v65;
    *(v69 + 24) = v65;
    *(v69 + 32) = v66;
    *(v69 + 40) = v67;
    *(v69 + 48) = 0;
    v63[2] = v68 + 1;
    sub_100032478(&v79);
    result = sub_1001481A4((a1 + 4), *(*a1[9] + 112 * *(a1[9] + 16) - 112) + v40, v23, v43);
    if (result)
    {
      v71 = v70 == 0;
    }

    else
    {
      v71 = 1;
    }

    if (!v71)
    {
      v72 = a1[11];
      if (a4)
      {
        atomic_fetch_add_explicit((a4 + 16), 1uLL, memory_order_relaxed);
      }

      v73 = v72[2];
      v74 = *v72 + 40 * v73;
      *v74 = a4;
      v79 = 0;
      *(v74 + 8) = 1;
      *(v74 + 16) = result;
      *(v74 + 24) = v70;
      *(v74 + 32) = v43;
      v72[2] = v73 + 1;
      return sub_100032478(&v79);
    }
  }

  return result;
}

void sub_100148A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_10000E984(a15);
  }

  _Unwind_Resume(exception_object);
}

const std::error_category *sub_100148AA8@<X0>(const std::error_category *result@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = result[6].__vftable;
  if (LOBYTE(result[13].__vftable) != 1 || v5 == 0)
  {
    *(a4 + 16) = 1;
  }

  else
  {
    v7 = LODWORD(result[11].__vftable);
    if (!(result[12].__vftable % v7) && !(result[2].__vftable % v7))
    {
      v8 = a3 == 0;
      if (v5 != 3)
      {
        if (v5 == 2)
        {
          sub_100145BE8(v10, v8, &result[7], &result[9].__vftable, v7);
        }

        sub_10014640C(&v9, &result[9].__vftable);
      }

      sub_100146044(v10, v8, &result[7], v7);
    }

    result = std::generic_category();
    *a4 = 22;
    *(a4 + 8) = result;
    *(a4 + 16) = 0;
  }

  return result;
}

void sub_100148D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_100030C64(&a30);
  if (a10)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100148DF0(uint64_t a1, uint64_t a2)
{
  v13[0] = 0;
  v16 = 0;
  v4 = *(a1 + 104);
  v5 = *(a1 + 48);
  if (v4 == 1 && v5 != 0)
  {
    if (*(a1 + 40))
    {
      sub_100148FE4(*(a1 + 32), &v10);
    }

    v5 = 1;
    LOBYTE(v4) = 1;
  }

  v7 = a1;
  if ((v4 & 1) == 0 || !v5)
  {
    goto LABEL_17;
  }

  sub_100148AA8(a1, 1, &v11);
  if (v12)
  {
    if (v7 == a1)
    {
      sub_1001490F4(v13, a1);
      if (v15 == 1)
      {
        v15 = 0;
      }

      if ((v16 & 1) == 0)
      {
        sub_1000B7AC4();
      }

      v7 = v13;
    }

LABEL_17:
    v8 = (*(*a2 + 88))(a2, v7);
    goto LABEL_21;
  }

  if (v11 < 0)
  {
    v8 = v11;
  }

  else
  {
    v8 = -v11;
  }

LABEL_21:
  if (v16 == 1 && v14)
  {
    sub_10000E984(v14);
  }

  return v8;
}

void sub_100148F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a13)
  {
    sub_10000E984(a13);
  }

  if (v40)
  {
    sub_10000E984(v40);
  }

  if (a40 == 1)
  {
    if (a27)
    {
      sub_10000E984(a27);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_100148FE4(size_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = malloc_type_valloc(a1, 0x4DC0432DuLL);
    if (!v3)
    {
      exception = __cxa_allocate_exception(8uLL);
      v5 = std::bad_alloc::bad_alloc(exception);
    }
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  operator new();
}

void sub_100149088(void *a1)
{
  __cxa_begin_catch(a1);
  free(v1);
  __cxa_rethrow();
}

uint64_t sub_1001490B0(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 112) == 1)
  {
    sub_10002E794(a1, a2);
  }

  else
  {
    sub_100030464(a1, a2);
    *(a1 + 112) = 1;
  }

  return a1;
}

uint64_t sub_1001490F4(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 112) == 1)
  {
    sub_10002F0BC(a1, a2);
  }

  else
  {
    sub_100030254(a1, a2);
    *(a1 + 112) = 1;
  }

  return a1;
}

uint64_t *sub_100149138(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 104) != 1 || *(a2 + 48) == 0;
  if (!v6 && (*(a2 + 40) & 2) != 0)
  {
    sub_100148FE4(*(a2 + 32), &v8);
  }

  sub_100030254(v9, a2);
  *a1 = a2;
  sub_100030464((a1 + 1), v9);
  if (v10)
  {
    sub_10000E984(v10);
  }

  a1[15] = a3;
  return a1;
}

void sub_100149250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a12)
  {
    sub_10000E984(a12);
  }

  if (v26)
  {
    sub_10000E984(v26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100149298(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 56))
    {
      sub_100148AA8((a1 + 8), 0, v5);
      if ((v6 & 1) == 0)
      {
        v2 = v5[0];
        if (v5[0] >= 0)
        {
          v2 = -v5[0];
        }

        **(a1 + 120) = v2;
      }
    }
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000E984(v3);
  }

  return a1;
}

uint64_t sub_1001493A4(void *a1, uint64_t a2)
{
  sub_1001493D8(a1);
  bzero(*a2, *(a2 + 16));
  return *(a2 + 16);
}

void sub_1001493D8(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  if (v3 == v2)
  {
    v4 = a1 + 8;
  }

  else
  {
    v4 = a1 + 8;
    v5 = a1[7];
    v6 = &v2[v5 / 0x22];
    v7 = *v6 + 120 * (v5 % 0x22);
    v8 = v2[(a1[8] + v5) / 0x22] + 120 * ((a1[8] + v5) % 0x22);
    if (v7 != v8)
    {
      do
      {
        bzero(*v7, *(v7 + 16));
        v9 = *(v7 + 16);
        v11 = *(v7 + 112);
        v10 = (v7 + 112);
        *v11 = v9;
        *(v11 + 4) = 1;
        sub_100032F74(v10);
        v7 = (v10 + 1);
        if (v7 - *v6 == 4080)
        {
          v12 = v6[1];
          ++v6;
          v7 = v12;
        }
      }

      while (v7 != v8);
      v2 = a1[4];
      v3 = a1[5];
    }
  }

  if (v3 != v2)
  {
    v13 = a1[7];
    v14 = &v2[v13 / 0x22];
    v15 = *v14 + 120 * (v13 % 0x22);
    v16 = v2[(a1[8] + v13) / 0x22] + 120 * ((a1[8] + v13) % 0x22);
    if (v15 != v16)
    {
      do
      {
        v17 = *(v15 + 112);
        if (v17)
        {
          *(v17 + 16) = 0;
        }

        v18 = *(v15 + 8);
        if (v18)
        {
          sub_10000E984(v18);
        }

        v15 += 120;
        if (v15 - *v14 == 4080)
        {
          v19 = v14[1];
          ++v14;
          v15 = v19;
        }
      }

      while (v15 != v16);
      v2 = a1[4];
      v3 = a1[5];
    }
  }

  *v4 = 0;
  v20 = v3 - v2;
  if (v20 >= 3)
  {
    do
    {
      operator delete(*v2);
      v21 = a1[5];
      v2 = (a1[4] + 8);
      a1[4] = v2;
      v20 = (v21 - v2) >> 3;
    }

    while (v20 > 2);
  }

  if (v20 == 1)
  {
    v22 = 17;
  }

  else
  {
    if (v20 != 2)
    {
      return;
    }

    v22 = 34;
  }

  a1[7] = v22;
}

void sub_1001495A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v10) = 0;
  v11 = 0;
  v13 = &v14;
  v14 = &v10;
  v12 = 0;
  sub_100030254(v7, a2);
  v9 = v14;
  v5 = v14;
  v14 = 0;
  *(v5 + 2) = &v9;
  sub_1001496B0((a1 + 24), v7);
  if (v9)
  {
    *(v9 + 2) = 0;
  }

  if (v8)
  {
    sub_10000E984(v8);
  }

  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v11 == 1)
  {
    *a3 = v10;
    *(a3 + 4) = 1;
  }

  v6 = v13;
  *(a3 + 16) = v13;
  if (v6)
  {
    *v6 = a3;
  }

  if (v14)
  {
    *(v14 + 2) = 0;
  }
}

void sub_100149678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a24)
  {
    *(a24 + 16) = 0;
  }

  if (a11)
  {
    sub_10000E984(a11);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    *(v26 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001496B0(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 34 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_10014C6B4(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x22)) + 120 * (v7 % 0x22);
  }

  v9 = sub_100030464(v8, a2);
  *(v9 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  *(*(v9 + 112) + 16) = v9 + 112;
  v10 = a1[4];
  v11 = a1[5] + 1;
  a1[5] = v11;
  v12 = v10 + v11;
  v13 = a1[1];
  v14 = (v13 + 8 * (v12 / 0x22));
  v15 = *v14 + 120 * (v12 % 0x22);
  if (a1[2] == v13)
  {
    v15 = 0;
  }

  if (v15 == *v14)
  {
    v15 = *(v14 - 1) + 4080;
  }

  return v15 - 120;
}

void sub_1001497C4(void *a1)
{
  *a1 = off_10021B378;
  sub_100030CF8(a1 + 7);
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    operator delete[]();
  }

  *a1 = off_1001F8FA0;
  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  operator delete();
}

void sub_10014987C(void *a1)
{
  *a1 = off_10021B3A0;
  sub_100030D98(a1 + 6);
  *a1 = off_1001F8FA0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_100149910(uint64_t a1)
{
  sub_1000334DC((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100149948(uint64_t a1)
{
  sub_1000334DC((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

uint64_t *sub_1001499A0(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    sub_100040450(result, a4);
  }

  return result;
}

void sub_1001499F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100149A14(int *result, uint64_t a2)
{
  if (a2)
  {
    qword_100234C28 = ccaes_cbc_encrypt_mode();
    qword_100234C30 = ccaes_cbc_decrypt_mode();
    cc_clear();

    operator delete[]();
  }
}

void sub_100149AA8(int *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    sub_100149A14(result + 2, v3);
  }
}

void sub_100149AD8(int *result, uint64_t a2)
{
  if (a2)
  {
    qword_100234C38 = ccaes_xts_encrypt_mode();
    qword_100234C40 = ccaes_xts_decrypt_mode();
    cc_clear();

    operator delete[]();
  }
}

void sub_100149B6C(int *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    sub_100149AD8(result + 2, v3);
  }
}

uint64_t sub_100149BB4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  result = sub_100043D30();
  LODWORD(v3) = result >> 2;
  if (result < 4)
  {
    v3 = 1;
  }

  else
  {
    v3 = v3;
  }

  *v1 = v3;
  return result;
}

uint64_t sub_100149BEC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100149E84(v1);

  return std::ios::~ios();
}

uint64_t sub_100149C38(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100149E84(v1);

  return std::ios::~ios();
}

void sub_100149C98(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100149E84(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100149D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100149D3C(_BYTE *a1, int a2)
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

void sub_100149DA8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100149E84(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100149E0C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100149E84(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100149E84(uint64_t a1)
{
  *a1 = &off_10021B7A8;
  sub_100149FF0(a1);
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

uint64_t sub_100149FF0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10014A1A0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_10014A13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10014A168(uint64_t a1)
{
  sub_100149E84(a1);

  operator delete();
}

int *sub_10014A1A0(uint64_t *a1, uint64_t *a2)
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
    v26 = 419;
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
      v26 = 419;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10014A384(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10014A61C(v1);

  return std::ios::~ios();
}

uint64_t sub_10014A3D0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10014A61C(v1);

  return std::ios::~ios();
}

void sub_10014A430(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10014A61C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10014A498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10014A4D4(_BYTE *a1, int a2)
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

void sub_10014A540(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10014A61C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10014A5A4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10014A61C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10014A61C(uint64_t a1)
{
  *a1 = &off_10021B9C8;
  sub_10014A788(a1);
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

uint64_t sub_10014A788(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10014A938((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_10014A8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10014A900(uint64_t a1)
{
  sub_10014A61C(a1);

  operator delete();
}

int *sub_10014A938(uint64_t *a1, uint64_t *a2)
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
    v26 = 445;
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
      v26 = 445;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10014AB1C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10014ADB4(v1);

  return std::ios::~ios();
}

uint64_t sub_10014AB68(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10014ADB4(v1);

  return std::ios::~ios();
}

void sub_10014ABC8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10014ADB4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10014AC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10014AC6C(_BYTE *a1, int a2)
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

void sub_10014ACD8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10014ADB4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10014AD3C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10014ADB4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10014ADB4(uint64_t a1)
{
  *a1 = &off_10021BBE8;
  sub_10014AF20(a1);
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

uint64_t sub_10014AF20(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10014B0D0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_10014B06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10014B098(uint64_t a1)
{
  sub_10014ADB4(a1);

  operator delete();
}

int *sub_10014B0D0(uint64_t *a1, uint64_t *a2)
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
    v26 = 496;
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
      v26 = 496;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10014B2B4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10014B54C(v1);

  return std::ios::~ios();
}

uint64_t sub_10014B300(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10014B54C(v1);

  return std::ios::~ios();
}

void sub_10014B360(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10014B54C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10014B3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10014B404(_BYTE *a1, int a2)
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

void sub_10014B470(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10014B54C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10014B4D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10014B54C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10014B54C(uint64_t a1)
{
  *a1 = &off_10021BE08;
  sub_10014B6B8(a1);
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

uint64_t sub_10014B6B8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10014B868((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_10014B804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10014B830(uint64_t a1)
{
  sub_10014B54C(a1);

  operator delete();
}

int *sub_10014B868(uint64_t *a1, uint64_t *a2)
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
    v26 = 516;
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
      v26 = 516;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10014BADC(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_10021BEE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10014BB2C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10014BB6C(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_10021BF48))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014BBAC()
{
  result = ccsha1_di();
  qword_1002354B8 = result;
  return result;
}

uint64_t sub_10014BBCC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021B7A8;
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

void sub_10014BC7C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014BC94(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021B9C8;
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

void sub_10014BD44(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014BD5C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021BBE8;
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

void sub_10014BE0C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014BE24(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021BE08;
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

void sub_10014BED4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014BF78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014BFC4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10014C05C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10014C188(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014C268(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10014C2B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

void sub_10014C394(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021C0F8;
  sub_10001590C(&a1[1].__shared_owners_);

  std::__shared_weak_count::~__shared_weak_count(a1);
}

void sub_10014C3E8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021C0F8;
  sub_10001590C(&a1[1].__shared_owners_);
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10014C450(uint64_t a1)
{
  sub_1000158B8(a1 + 32, *(a1 + 24));

  return sub_10001590C(a1 + 32);
}

uint64_t sub_10014C494(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014C54C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_10021C1B8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  sub_100192AE0((a1 + 24));
  *(a1 + 24) = off_10021B508;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return a1;
}

void sub_10014C608(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021C1B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10014C668(uint64_t a1)
{
  sub_1000334DC((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_10014C6B4(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x22;
  v3 = v1 - 34;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_100017300(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_100074E98(a1, &v9);
}

void sub_10014C83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10014D4D4(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_1000429F0(a1, a2);
    }

    sub_100015B70();
  }
}

uint64_t sub_10014D664(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        operator delete[]();
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(a1 + 24);
  }

  *(a1 + 32) = v2;
  std::mutex::~mutex((a1 + 96));
  std::condition_variable::~condition_variable((a1 + 48));
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_10014D6F0(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  v6 = (a1 + 24);
  *(a1 + 48) = 1018212795;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  if (a3 <= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  *(a1 + 16) = v7;
  sub_10014D4D4(v6, a3);
  if (a3)
  {
    sub_10014D574(a1);
  }

  return a1;
}

void sub_10014D7A0(uint64_t a1@<X0>, void *a2@<X8>)
{
  __lk.__m_ = (a1 + 96);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 96));
  v4 = *(a1 + 32);
  if (*(a1 + 24) == v4)
  {
    if (*(a1 + 16) > *(a1 + 8))
    {
      sub_10014D574(a1);
    }

    do
    {
      std::condition_variable::wait((a1 + 48), &__lk);
      v4 = *(a1 + 32);
    }

    while (*(a1 + 24) == v4);
  }

  v5 = *(v4 - 8);
  *(a1 + 32) = v4 - 8;
  v7 = a1;
  *a2 = v5;
  operator new();
}

void sub_10014D8D4(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v2 = *a1;
  std::mutex::lock((*a1 + 96));
  sub_10014DA2C(v2 + 24, &v3);
  std::mutex::unlock((v2 + 96));
  std::condition_variable::notify_one((v2 + 48));
}

void sub_10014D924(_Unwind_Exception *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 96));
  _Unwind_Resume(a1);
}

void sub_10014D940(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10014D978(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 24);
  std::mutex::lock((v1 + 96));
  sub_10014DA2C(v1 + 24, &v2);
  std::mutex::unlock((v1 + 96));
  std::condition_variable::notify_one((v1 + 48));
}

void sub_10014D9C8(void *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 96));
  sub_100001A14(a1);
}

uint64_t sub_10014D9E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void *sub_10014DA2C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100015B70();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1000429F0(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
  return (v6 - 8);
}

io_service_t *sub_10014DB04(io_service_t *a1, char *bsdName)
{
  *a1 = 0;
  v4 = IOBSDNameMatching(kIOMainPortDefault, 0, bsdName);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  *a1 = MatchingService;
  if (!MatchingService)
  {
    v7 = bsdName;
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v13);
    sub_100001FE8(v13, "device with dev name ", 21);
    v9 = strlen(v7);
    sub_100001FE8(v13, v7, v9);
    sub_100001FE8(v13, " not found in registry", 22);
    v10 = *__error();
    v11 = std::generic_category();
    v12 = sub_10014E398(exception, v13, v10, v11);
  }

  return a1;
}

void sub_10014DC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000C8C8(va);
  sub_10014DC4C(v3);
  _Unwind_Resume(a1);
}

io_service_t *sub_10014DC80(io_service_t *a1, uint64_t entryID)
{
  *a1 = 0;
  v3 = IORegistryEntryIDMatching(entryID);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  *a1 = MatchingService;
  if (!MatchingService)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v10);
    sub_100001FE8(v10, "device with registry entry ID 0x", 32);
    *(&v10[1] + *(v10[0] - 3)) = *(&v10[1] + *(v10[0] - 3)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    sub_100001FE8(v10, " not found in registry", 22);
    v7 = *__error();
    v8 = std::generic_category();
    v9 = sub_10014E398(exception, v10, v7, v8);
  }

  return a1;
}

void sub_10014DDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000C8C8(va);
  sub_10014DC4C(v3);
  _Unwind_Resume(a1);
}

io_object_t *sub_10014DDE8(io_object_t *a1, IOOptionBits a2, io_object_t *a3)
{
  v5 = sub_1000536FC(a1, a3);
  v5[1] = 0;
  v6 = v5 + 1;
  v7 = *v5;
  if (v7)
  {
    iterator = 0;
    v8 = IORegistryEntryCreateIterator(v7, "IOService", a2, &iterator);
    if (v8)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v11 = sub_10014DEF4(v8);
      *exception = &off_1002260F0;
      exception[1] = v11;
      exception[2] = v12;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Unable to create ioreg iterator";
    }

    *v6 = iterator;
    IOObjectRelease(0);
  }

  return a1;
}

void sub_10014DED8(_Unwind_Exception *a1)
{
  sub_10014DF40(v2);
  sub_10014DF70(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014DEF4(uint64_t result)
{
  if ((atomic_load_explicit(byte_100235468, memory_order_acquire) & 1) == 0)
  {
    v1 = result;
    sub_100198970();
    LODWORD(result) = v1;
  }

  return result;
}

BOOL sub_10014DFA0(io_object_t *a1, io_object_t *a2)
{
  if (IOIteratorIsValid(a1[1]) && *a1)
  {
    v4 = !IOIteratorIsValid(a2[1]) || *a2 == 0;
    if (!v4 && sub_10014E03C(a1, a2))
    {
      return 1;
    }
  }

  if (IOIteratorIsValid(a1[1]) && *a1)
  {
    return 0;
  }

  return !IOIteratorIsValid(a2[1]) || *a2 == 0;
}

io_object_t *sub_10014E088(io_object_t *a1)
{
  *a1 = IOIteratorNext(a1[1]);
  IOObjectRelease(0);
  return a1;
}

uint64_t sub_10014E0C4(uint64_t result, int a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

uint64_t sub_10014E0D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10014E134(a1, *(a1 + 8), v4);
  sub_10014E1BC(v4, "could not create iterator (begin)", a2);
  return sub_10014E240(v4);
}

void sub_10014E120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10014E240(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014E134@<X0>(IOOptionBits *a1@<X0>, io_object_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10014DDE8(object, *a1, a2);
  *a3 = *object;
  *object = 0;
  *(a3 + 16) = 1;
  IOObjectRelease(0);
  return IOObjectRelease(object[0]);
}

double sub_10014E1BC@<D0>(double *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a1[2] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = *a1;
    *exception = &off_1002260F0;
    *(exception + 8) = v7;
    exception[24] = 0;
    exception[48] = 0;
    *(exception + 7) = a2;
  }

  result = *a1;
  *a3 = *a1;
  *a1 = 0.0;
  return result;
}

uint64_t sub_10014E240(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    IOObjectRelease(*(a1 + 4));
    IOObjectRelease(*a1);
  }

  return a1;
}

uint64_t sub_10014E288@<X0>(IOOptionBits *a1@<X0>, void *a2@<X8>)
{
  object = 0;
  sub_10014E310(a1, &object, &v5);
  IOObjectRelease(object);
  sub_10014E1BC(&v5, "could not create iterator (end)", a2);
  return sub_10014E240(&v5);
}

uint64_t sub_10014E310@<X0>(IOOptionBits *a1@<X0>, io_object_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10014DDE8(object, *a1, a2);
  *a3 = *object;
  *object = 0;
  *(a3 + 16) = 1;
  IOObjectRelease(0);
  return IOObjectRelease(object[0]);
}

uint64_t sub_10014E398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &off_1002260F0;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v5 = sub_100001B64(a2 + 8);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001BB0();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v6;
  if (v6)
  {
    memmove(&__dst, v5, v6);
  }

  *(&__dst + v7) = 0;
  *(a1 + 24) = __dst;
  *(a1 + 40) = v10;
  *(a1 + 48) = 1;
  return a1;
}

void sub_10014E49C(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  operator delete();
}

void sub_10014E4E0(int __val@<W1>, std::string *a2@<X8>)
{
  std::to_string(&v4, __val);
  v3 = std::string::insert(&v4, 0, "kern_return_t was ", 0x12uLL);
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_10014E554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10014E570(void *a1, uint64_t *a2, uint64_t *a3)
{
  *sub_1000440E0(a1, a2) = off_10021C310;
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v5 + 192))(v5);
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10014EB6C();
}

void sub_10014E6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_10000E984(a13);
  }

  if (v14)
  {
    sub_10000E984(v14);
  }

  sub_10004413C(v13);
  _Unwind_Resume(a1);
}

void sub_10014E720(uint64_t a1, int a2)
{
  std::mutex::lock(*(a1 + 72));
  lseek(a2, 0, 0);
  *&v7 = AAFileStreamOpenWithFD(a2, 0);
  sub_100132BB4(&v10, &v7);
  sub_100132C94(&v9, &v10);
  v4 = *(a1 + 40);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100132CC8(&v9, v5, 0x20uLL);
  sub_100132BE8(&v10, &v9, 0xFFFFFFFFFFFFFFFFLL, 0x4000000000000000uLL, 1, &v8);
  sub_10014EE1C();
}

void sub_10014E840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, AAByteStream);
  va_copy(va2, va1);
  v10 = va_arg(va2, AEAContext);
  sub_100132BB8(va);
  if (v6)
  {
    sub_10000E984(v6);
  }

  sub_100132C98(va1);
  sub_100132BB8(va2);
  std::mutex::unlock(v5);
  _Unwind_Resume(a1);
}

void sub_10014E89C(void *a1, void *a2, void *a3)
{
  v5 = sub_1000440E0(a1, a3);
  *v5 = off_10021C310;
  v6 = a2[6];
  v5[5] = a2[5];
  v5[6] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[7] = 0;
  a1[8] = 0;
  v7 = a2[10];
  a1[9] = a2[9];
  a1[10] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10014E720(a1, *(a1[5] + 8));
}

void sub_10014E93C(_Unwind_Exception *a1)
{
  v4 = v1[10];
  if (v4)
  {
    sub_10000E984(v4);
  }

  sub_1001989D8(v1, v2);
  sub_10004413C(v1);
  _Unwind_Resume(a1);
}

ssize_t sub_10014E9AC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    return sub_100132FD4(*(a1 + 56), *a2, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    return 4294967194;
  }
}

void *sub_10014EA08(void *a1)
{
  *a1 = off_10021C310;
  v2 = a1[10];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    sub_10000E984(v4);
  }

  *a1 = off_1001FACC0;
  v5 = a1[4];
  if (v5)
  {
    sub_10000E984(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_10014EAA0(void *a1)
{
  *a1 = off_10021C310;
  v2 = a1[10];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    sub_10000E984(v4);
  }

  *a1 = off_1001FACC0;
  v5 = a1[4];
  if (v5)
  {
    sub_10000E984(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete();
}

void sub_10014EC18(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021C400;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10014EC6C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_10000E984(v1);
  }
}

void sub_10014EC80(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_10014ED00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10014ED14(va);
  _Unwind_Resume(a1);
}

std::mutex **sub_10014ED14(std::mutex **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::mutex::~mutex(v2);
    operator delete();
  }

  return a1;
}

void sub_10014ED60(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

std::mutex *sub_10014ED98(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    std::mutex::~mutex(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10014EDDC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_10014EEA0(void *a1, void *a2, uint64_t *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10021C4C8;
  sub_100132F94(a1 + 3, a2, a3, a4);
  return a1;
}

void sub_10014EF1C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021C4C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

AAByteStream *sub_10014EF70(AAByteStream *a1)
{
  sub_100132BB8(a1 + 5);
  sub_100132C98(a1 + 4);

  return sub_100132BB8(a1 + 3);
}

void sub_10014F044(void *a1, void *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020F800;
  sub_10014E89C(a1 + 3, a2, a3);
}

NSObject **sub_10014FD8C(NSObject **a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

dispatch_queue_t *sub_10014FDC4(dispatch_queue_t *a1, char *label, int a3)
{
  switch(a3)
  {
    case 2:
      v6 = &_dispatch_queue_attr_concurrent;
      v5 = label;
      goto LABEL_7;
    case 1:
      global_queue = dispatch_get_global_queue(21, 0);
      v8 = dispatch_queue_create_with_target_V2(label, 0, global_queue);
LABEL_8:
      *a1 = v8;
      return a1;
    case 0:
      v5 = label;
      v6 = 0;
LABEL_7:
      v8 = dispatch_queue_create(v5, v6);
      goto LABEL_8;
  }

  return a1;
}

void *sub_10014FE44(void *result, void *a2)
{
  *result = *a2;
  *a2 = 0;
  return result;
}

void sub_10014FE6C(NSObject **a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  if (v4)
  {
    if (a3)
    {
      v6 = dispatch_time(0, 1000 * a3);
      v7 = *a1;
      v8 = *a2;

      dispatch_after(v6, v7, v8);
    }

    else
    {
      v9 = *a1;

      dispatch_async(v9, v4);
    }
  }
}

uint64_t sub_10014FF24(dispatch_object_t *a1, int a2)
{
  if ((a2 - 1) > 2)
  {
    v3 = 5;
  }

  else
  {
    v3 = *&asc_1001C7E38[8 * (a2 - 1)];
  }

  global_queue = dispatch_get_global_queue(v3, 0);
  if (!global_queue)
  {
    return 22;
  }

  dispatch_set_target_queue(*a1, global_queue);
  return 0;
}

void sub_10014FF88(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    dispatch_release(v2);
    a1[1] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    sub_10014FFEC(v3);
    v4 = a1[6];
    a1[5] = 0;
    a1[6] = 0;
    if (v4)
    {

      sub_10000E984(v4);
    }
  }
}

void sub_10014FFEC(uint64_t a1)
{
  if (atomic_fetch_add((a1 + 128), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    std::mutex::lock((a1 + 64));
    std::condition_variable::notify_all((a1 + 16));

    std::mutex::unlock((a1 + 64));
  }
}

uint64_t sub_100150048(uint64_t a1, __int128 *a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_10021C518;
  if (*(a2 + 23) < 0)
  {
    sub_100050108((a1 + 16), *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 16) = v10;
  }

  v11 = a4[1];
  *(a1 + 40) = *a4;
  *(a1 + 48) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1001505F4(v13, a5);
  sub_10000EFD8(v14, a6);
  *(a1 + 8) = dispatch_mach_create();
  sub_10001641C(v14);
  sub_100018550(v13);
  return a1;
}

void sub_1001501C8(_Unwind_Exception *a1)
{
  sub_100018550(v3 + 40);
  v5 = *(v1 + 48);
  if (v5)
  {
    sub_10000E984(v5);
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void sub_100150200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a2)
  {
    case 8:
      v6 = *(a1 + 96);
      if (v6)
      {
        v7 = *(*v6 + 48);

        v7();
      }

      break;
    case 7:
      v5 = *(a1 + 32);

      sub_10014FF88(v5);
      break;
    case 2:
      msg = dispatch_mach_msg_get_msg();
      sub_1001502D0(a1 + 40, msg, 0);
      break;
  }
}

uint64_t sub_1001502D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_10001583C();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_100150378(uint64_t a1)
{
  sub_10001641C(a1 + 72);

  return sub_100018550(a1 + 40);
}

uint64_t sub_1001503B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    a2 = *(a2 + 8);
  }

  if (a3)
  {
    a3 = *(a3 + 8);
  }

  return _dispatch_mach_connect(v3, a2, a3, 0);
}

uint64_t sub_1001503DC(uint64_t a1)
{
  *a1 = off_10021C518;
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_10000E984(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10015044C(uint64_t a1)
{
  sub_1001503DC(a1);

  operator delete();
}

void sub_1001504F4(void **a1)
{
  v1 = *a1;
  if (v1)
  {
    dispatch_block_cancel(v1);
  }
}

const void **sub_100150504(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_block_cancel(v2);
    if (*a1)
    {
      _Block_release(*a1);
    }
  }

  return a1;
}

void sub_100150564(uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    dispatch_resume(*a1);
    *(a1 + 32) = 1;
  }
}

uint64_t sub_1001505A0(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_source_cancel(v2);
    if ((*(a1 + 32) & 1) == 0)
    {
      dispatch_resume(*a1);
      *(a1 + 32) = 1;
    }

    dispatch_release(*a1);
  }

  return a1;
}

uint64_t sub_1001505F4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10015068C@<X0>(int a1@<W0>, const char *a2@<X1>, int a4@<W3>, void *a5@<X8>)
{
  sub_100028820(v36);
  v9 = sub_100001FE8(&v37, "Couldn't open ", 14);
  v10 = a2[23];
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 1);
  }

  v13 = sub_100001FE8(v9, v11, v12);
  v14 = sub_100001FE8(v13, "' with flags ", 13);
  v15 = *v14;
  *(v14 + *(*v14 - 24) + 8) = *(v14 + *(*v14 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v14 + *(v15 - 24) + 8) |= 0x200u;
  v16 = std::ostream::operator<<();
  *(v16 + *(*v16 - 24) + 8) = *(v16 + *(*v16 - 24) + 8) & 0xFFFFFFB5 | 2;
  if (a4 == 13)
  {
    if (a2[23] >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    if (fstatat(a1, v17, &v35, 0))
    {
      v34.__r_.__value_.__r.__words[0] = "std::string FileDescriptorWrapper::handle_open_from_error_message(int, const std::string &, int, int)";
      v34.__r_.__value_.__l.__size_ = 65;
      LODWORD(v34.__r_.__value_.__r.__words[2]) = 16;
      sub_100150BD4(&v32, &v34);
      sub_100001FE8(v33, "fstatfs failed with err code", 28);
      __error();
      std::ostream::operator<<();
      sub_100001FE8(v33, " trying to check permission after EACCES", 40);
      std::ostream::~ostream();
      sub_100158A74(&v32);
      std::ios::~ios();
    }

    else
    {
      std::to_string(&v32, v35.st_gid);
      v18 = getgrgid(v35.st_gid);
      if (v18)
      {
        sub_10004EB18(&v32, v18->gr_name);
      }

      v19 = sub_100001FE8(&v37, ", UID:GID(Name)=", 16);
      std::to_string(&v34, v35.st_uid);
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v34;
      }

      else
      {
        v20 = v34.__r_.__value_.__r.__words[0];
      }

      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v34.__r_.__value_.__l.__size_;
      }

      v22 = sub_100001FE8(v19, v20, size);
      v23 = sub_100001FE8(v22, ":", 1);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v32;
      }

      else
      {
        v24 = v32.__r_.__value_.__r.__words[0];
      }

      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v32.__r_.__value_.__l.__size_;
      }

      sub_100001FE8(v23, v24, v25);
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      v26 = sub_100001FE8(&v37, " mode=", 6);
      v27 = *v26;
      *(v26 + *(*v26 - 24) + 8) = *(v26 + *(*v26 - 24) + 8) & 0xFFFFFFB5 | 8;
      *(v26 + *(v27 - 24) + 8) |= 0x200u;
      v28 = std::ostream::operator<<();
      *(v28 + *(*v28 - 24) + 8) = *(v28 + *(*v28 - 24) + 8) & 0xFFFFFFB5 | 2;
      sub_100001FE8(v28, " (our euid is ", 14);
      geteuid();
      v29 = std::ostream::operator<<();
      sub_100001FE8(v29, ")", 1);
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }
  }

  sub_100028B04(&v38, a5);
  v37 = v30;
  if (v40 < 0)
  {
    operator delete(v39[7].__locale_);
  }

  std::locale::~locale(v39);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100150B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_100150BD4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100164A70(a1, a2);
  *a1 = off_10021C9B8;
  a1[45] = &off_10021CAB8;
  a1[46] = &off_10021CAE0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021C9B8;
  a1[45] = off_10021CA40;
  a1[46] = off_10021CA68;
  return a1;
}

void sub_100150CD8(_Unwind_Exception *a1)
{
  sub_100158A74(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100150CFC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100158A74(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100150D40(const char *a1, uint64_t a2)
{
  v2 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v3 = open(a1, a2, 438);
  if (v3 == -1)
  {
    v11 = *__error();
    v12 = sub_1000E95F0();
    if (v12)
    {
      *&v24 = 0;
      v14 = sub_1000E957C(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      if (v2[23] < 0)
      {
        v2 = *v2;
      }

      v16 = *__error();
      *buf = 68158467;
      *&buf[4] = 69;
      v27 = 2080;
      v28 = "static int FileDescriptorWrapper::open_file(const std::string &, int)";
      v29 = 2081;
      v30 = v2;
      v31 = 1024;
      v32 = v16;
      v17 = _os_log_send_and_compose_impl(v15, &v24, 0, 0, &_mh_execute_header, v14, 16, "%.*s: Failed opening %{private}s, errno %d", buf, 34);
      if (v17)
      {
        v18 = v17;
        fprintf(__stderrp, "%s\n", v17);
        free(v18);
      }
    }

    else
    {
      v19 = sub_1000E957C(v12, v13);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        if (v2[23] < 0)
        {
          v2 = *v2;
        }

        v20 = *__error();
        *buf = 68158467;
        *&buf[4] = 69;
        v27 = 2080;
        v28 = "static int FileDescriptorWrapper::open_file(const std::string &, int)";
        v29 = 2081;
        v30 = v2;
        v31 = 1024;
        v32 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%.*s: Failed opening %{private}s, errno %d", buf, 0x22u);
      }
    }

    *__error() = v11;
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(buf);
    sub_100001FE8(buf, "Couldn't open file with flags ", 30);
    v22 = *buf;
    *&buf[*(*buf - 24) + 8] = *&buf[*(*buf - 24) + 8] & 0xFFFFFFB5 | 8;
    *&buf[*(v22 - 24) + 8] |= 0x200u;
    std::ostream::operator<<();
    v23 = __error();
    sub_10000EBDC(exception, buf, *v23);
  }

  v4 = v3;
  if (sub_1000E9608())
  {
    *&v24 = "int FileDescriptorWrapper::open_file(const std::string &, int)";
    *(&v24 + 1) = 36;
    v25 = 2;
    sub_10004C72C(buf, &v24);
    sub_100001FE8(v33, "'", 1);
    v5 = v2[23];
    if (v5 >= 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = *v2;
    }

    if (v5 >= 0)
    {
      v7 = *(v2 + 23);
    }

    else
    {
      v7 = *(v2 + 1);
    }

    sub_100001FE8(v33, v6, v7);
    sub_100001FE8(v33, "' opened successfully with flags ", 33);
    v8 = v33[0];
    *(&v33[1] + *(v33[0] - 24)) = *(&v33[1] + *(v33[0] - 24)) & 0xFFFFFFB5 | 8;
    *(&v33[1] + *(v8 - 24)) |= 0x200u;
    std::ostream::operator<<();
    v9 = v33[0];
    *(&v33[1] + *(v33[0] - 24)) &= ~0x200u;
    *(&v33[1] + *(v9 - 24)) = *(&v33[1] + *(v9 - 24)) & 0xFFFFFFB5 | 2;
    sub_100001FE8(v33, ", fd=", 5);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10004DD38(buf);
    std::ios::~ios();
  }

  return v4;
}

void sub_1001511DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100151228(int a1, const char *a2, int a3)
{
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v24[1] = 438;
  v25 = v5;
  v24[0] = a3 | 0x100;
  v6 = fcntl(a1, 56, v24);
  if (v6 == -1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v19);
    v15 = __error();
    sub_10015068C(a1, a2, *v15, &v21);
    if ((v23 & 0x80u) == 0)
    {
      v16 = &v21;
    }

    else
    {
      v16 = v21;
    }

    if ((v23 & 0x80u) == 0)
    {
      v17 = v23;
    }

    else
    {
      v17 = *(&v21 + 1);
    }

    sub_100001FE8(v19, v16, v17);
    v18 = __error();
    sub_10000EBDC(exception, v19, *v18);
  }

  v7 = v6;
  if (sub_1000E9608())
  {
    *&v21 = "int FileDescriptorWrapper::open_from(int, const std::string &, int)";
    *(&v21 + 1) = 36;
    v22 = 2;
    sub_100151540(v19, &v21);
    sub_100001FE8(v20, "'", 1);
    v8 = a2[23];
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 1);
    }

    sub_100001FE8(v20, v9, v10);
    sub_100001FE8(v20, "' opened successfully with flags ", 33);
    v11 = v20[0];
    *(&v20[1] + *(v20[0] - 24)) = *(&v20[1] + *(v20[0] - 24)) & 0xFFFFFFB5 | 8;
    *(&v20[1] + *(v11 - 24)) |= 0x200u;
    std::ostream::operator<<();
    v12 = v20[0];
    *(&v20[1] + *(v20[0] - 24)) &= ~0x200u;
    *(&v20[1] + *(v12 - 24)) = *(&v20[1] + *(v12 - 24)) & 0xFFFFFFB5 | 2;
    sub_100001FE8(v20, ", fd=", 5);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10015920C(v19);
    std::ios::~ios();
  }

  return v7;
}

void sub_1001514D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v7 - 65) < 0)
  {
    operator delete(*(v7 - 88));
    sub_10000C8C8(va);
    if ((v6 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_10000C8C8(va);
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  __cxa_free_exception(v5);
  goto LABEL_6;
}

void *sub_100151540(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100164B38(a1, a2);
  *a1 = off_10021CBD8;
  a1[45] = &off_10021CCD8;
  a1[46] = &off_10021CD00;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021CBD8;
  a1[45] = off_10021CC60;
  a1[46] = off_10021CC88;
  return a1;
}

void sub_100151644(_Unwind_Exception *a1)
{
  sub_10015920C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100151668(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015920C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001516AC(uint64_t a1)
{
  *a1 = &off_10021C578;
  v2 = *(a1 + 8);
  if (v2 != -1)
  {
    close(v2);
    if (sub_1000E9608())
    {
      *&v4 = "FileDescriptorWrapper::~FileDescriptorWrapper()";
      *(&v4 + 1) = 45;
      v5 = 2;
      sub_100151798(v6, &v4);
      sub_100001FE8(v7, "File descriptor ", 16);
      std::ostream::operator<<();
      sub_100001FE8(v7, " closed", 7);
      std::ostream::~ostream();
      sub_1001599A4(v6);
      std::ios::~ios();
    }
  }

  return a1;
}

void *sub_100151798(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100164C00(a1, a2);
  *a1 = off_10021CDF8;
  a1[45] = &off_10021CEF8;
  a1[46] = &off_10021CF20;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021CDF8;
  a1[45] = off_10021CE80;
  a1[46] = off_10021CEA8;
  return a1;
}

void sub_10015189C(_Unwind_Exception *a1)
{
  sub_1001599A4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001518C0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001599A4(a1);
  std::ios::~ios();
  return a1;
}

void sub_100151908(uint64_t a1)
{
  sub_1001516AC(a1);

  operator delete();
}

uint64_t sub_100151940(uint64_t a1, int a2, char a3)
{
  *(a1 + 8) = a2;
  *a1 = &off_1001FCBF0;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  sub_1001519A8(a1);
  return a1;
}

uint64_t sub_1001519A8(uint64_t a1)
{
  memset(&v22, 0, sizeof(v22));
  sub_100151D40(a1, &v22);
  v2 = v22.st_mode & 0xF000;
  if (v2 == 0x2000)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 == 24576;
  }

  *(a1 + 28) = v3;
  if (!v3)
  {
    *(a1 + 16) = v22.st_size;
    goto LABEL_17;
  }

  bzero(v27, 0x400uLL);
  bzero(&__big, 0x400uLL);
  if (fcntl(*(a1 + 8), 50, v27) < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v10 = __error();
    v11 = sub_100001940(exception, "get path failed", *v10);
  }

  if (!basename_r(v27, &__big))
  {
    v12 = __cxa_allocate_exception(0x40uLL);
    v13 = __error();
    v14 = sub_100001940(v12, "basename_r failed", *v13);
  }

  if (strnstr(&__big, "rdisk", 5uLL) == &__big)
  {
    memmove(&__big, v26, 0x3FFuLL);
  }

  sub_100152864(v20, &__big);
  sub_10005320C(v20, "device not found in registry", &object);
  valuePtr[0] = &object;
  valuePtr[1] = &cf;
  cf = @"Size";
  sub_100053D2C(v17, valuePtr);
  sub_1001528DC(v17, "device size not found in registry", &cf);
  if (!cf || (v4 = CFGetTypeID(cf), v4 != CFNumberGetTypeID()))
  {
    v7 = "device size not found in registry";
    v8 = 19;
    goto LABEL_22;
  }

  valuePtr[0] = 0;
  if (!CFNumberGetValue(cf, kCFNumberLongLongType, valuePtr))
  {
    v7 = "Failed converting CFNumber to longlong";
    v8 = 22;
LABEL_22:
    v15 = __cxa_allocate_exception(0x40uLL);
    *v15 = &off_1002260F0;
    v16 = std::generic_category();
    v15[1] = v8;
    v15[2] = v16;
    *(v15 + 24) = 0;
    *(v15 + 48) = 0;
    v15[7] = v7;
  }

  *(a1 + 16) = valuePtr[0];
  sub_100053E5C(&cf);
  if (v18 == 1)
  {
    sub_100053E5C(v17);
  }

  IOObjectRelease(object);
  if (v21 == 1)
  {
    IOObjectRelease(v20[0]);
  }

LABEL_17:
  result = sub_100151FFC(a1);
  *(a1 + 24) = result;
  st_ino = v22.st_ino;
  *(a1 + 32) = v22.st_dev;
  *(a1 + 40) = st_ino;
  return result;
}

void sub_100151CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, int a14, io_object_t object, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    sub_100001A14(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100151D40@<X0>(uint64_t a1@<X0>, stat *a2@<X8>)
{
  result = fstat(*(a1 + 8), a2);
  if (result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = __error();
    v5 = sub_100001940(exception, "fstat failed", *v4);
  }

  return result;
}

uint64_t sub_100151DC0@<X0>(uint64_t a1@<X0>, statfs *a2@<X8>)
{
  result = fstatfs(*(a1 + 8), a2);
  if ((result & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = __error();
    v5 = sub_100001940(exception, "fstatfs failed", *v4);
  }

  return result;
}

uint64_t sub_100151E40(uint64_t a1)
{
  v1 = *(a1 + 4) & 0xF000;
  if (v1 == 0x2000)
  {
    return 2;
  }

  else
  {
    return v1 == 24576;
  }
}

uint64_t sub_100151E60(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  sub_100151DC0(v1, &__src);
  memcpy(__dst, &__src, sizeof(__dst));
  sub_100010B0C(v3, &__dst[72]);
  *&v8 = "FileDescriptor::get_mounted_on_fs() const";
  *(&v8 + 1) = 33;
  v9 = 2;
  sub_100095940(&__src, &v8);
  sub_100001FE8(&__src.f_mntonname[272], "File system is ", 15);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  sub_100001FE8(&__src.f_mntonname[272], v5, v6);
  std::ostream::~ostream();
  sub_10009C300(&__src);
  return std::ios::~ios();
}

void sub_100151F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100151FFC(uint64_t a1)
{
  sub_100151DC0(a1, &v41);
  if (*(a1 + 28))
  {
    v2 = (v41.f_flags & 0x1000) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    f_bsize = v41.f_bsize;
    goto LABEL_24;
  }

  bzero(&v41, 0x400uLL);
  bzero(&__big, 0x400uLL);
  if (fcntl(*(a1 + 8), 50, &v41) < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = __error();
    v15 = "get path failed";
    goto LABEL_29;
  }

  if (!basename_r(&v41, &__big))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = __error();
    v15 = "basename_r failed";
LABEL_29:
    v16 = *v14;
    *exception = &off_1002260F0;
    v17 = std::generic_category();
    exception[1] = v16;
    exception[2] = v17;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = v15;
  }

  if (strnstr(&__big, "rdisk", 5uLL) == &__big)
  {
    memmove(&__big, &__big + 1, 0x3FFuLL);
  }

  sub_100152864(v35, &__big);
  sub_10005320C(v35, "device not found in registry", &v34);
  sub_10014E0C4(v33, 3, &v34);
  sub_10014E0D0(v33, v31);
  sub_10014E288(v33, &v30);
  while (sub_10014E068(v31, &v30))
  {
    nullsub_193();
    sub_1000536FC(object, v4);
    v5 = IOObjectConformsTo(object[0], "IOBlockStorageDriver");
    IOObjectRelease(object[0]);
    if (v5)
    {
      break;
    }

    sub_10014E088(v31);
  }

  *v32 = *v31;
  *v31 = 0;
  IOObjectRelease(HIDWORD(v30));
  IOObjectRelease(v30);
  IOObjectRelease(v31[1]);
  IOObjectRelease(v31[0]);
  sub_10014E288(v33, object);
  v6 = sub_10014DFA0(v32, object);
  IOObjectRelease(object[1]);
  IOObjectRelease(object[0]);
  if (v6)
  {
    v18 = __cxa_allocate_exception(0x40uLL);
    v19 = std::generic_category();
    *v18 = &off_1002260F0;
    v18[1] = 19;
    v18[2] = v19;
    *(v18 + 24) = 0;
    *(v18 + 48) = 0;
    v18[7] = "IOBlockStorageDriver device not found in registry iteration";
  }

  nullsub_193();
  sub_10014E0C4(v29, 1, v7);
  sub_10014E0D0(v29, v27);
  sub_10014E288(v29, &v26);
  while (sub_10014E068(v27, &v26))
  {
    nullsub_193();
    sub_1000536FC(object, v8);
    v9 = IOObjectConformsTo(object[0], "IOMedia");
    IOObjectRelease(object[0]);
    if (v9)
    {
      break;
    }

    sub_10014E088(v27);
  }

  *v28 = *v27;
  *v27 = 0;
  IOObjectRelease(HIDWORD(v26));
  IOObjectRelease(v26);
  IOObjectRelease(v27[1]);
  IOObjectRelease(v27[0]);
  sub_10014E288(v29, object);
  v10 = sub_10014DFA0(v28, object);
  IOObjectRelease(object[1]);
  IOObjectRelease(object[0]);
  if (v10)
  {
    v20 = __cxa_allocate_exception(0x40uLL);
    v21 = std::generic_category();
    *v20 = &off_1002260F0;
    v20[1] = 19;
    v20[2] = v21;
    *(v20 + 24) = 0;
    *(v20 + 48) = 0;
    v20[7] = "IOMedia device not found in registry iteration";
  }

  nullsub_193();
  valuePtr[0] = v11;
  valuePtr[1] = &number;
  number = @"Preferred Block Size";
  sub_100053D2C(object, valuePtr);
  sub_1001528DC(object, "Unable to get IOMedia preferred block size", &number);
  valuePtr[0] = 0;
  if (!CFNumberGetValue(number, kCFNumberLongLongType, valuePtr))
  {
    v22 = __cxa_allocate_exception(0x40uLL);
    *v22 = &off_1002260F0;
    v23 = std::generic_category();
    v22[1] = 22;
    v22[2] = v23;
    *(v22 + 24) = 0;
    *(v22 + 48) = 0;
    v22[7] = "Failed converting CFNumber to longlong";
  }

  f_bsize = LODWORD(valuePtr[0]);
  sub_100053E5C(&number);
  if (v25 == 1)
  {
    sub_100053E5C(object);
  }

  IOObjectRelease(v28[1]);
  IOObjectRelease(v28[0]);
  IOObjectRelease(v32[1]);
  IOObjectRelease(v32[0]);
  IOObjectRelease(v34);
  if (v36 == 1)
  {
    IOObjectRelease(v35[0]);
  }

LABEL_24:
  if (sub_1000E9608())
  {
    *&__big = "FileDescriptor::fetch_physical_block_size() const";
    *(&__big + 1) = 41;
    v40 = 2;
    sub_100095F44(&v41, &__big);
    sub_100001FE8(&v41.f_mntonname[272], "Physical block_size is ", 23);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10009D230(&v41);
    std::ios::~ios();
  }

  return f_bsize;
}

void sub_1001525DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100001A14(a1);
}

void sub_100152838()
{
  sub_100152A88(&STACK[0x4B0]);
  __cxa_end_catch();
  JUMPOUT(0x100152748);
}

uint64_t *sub_100152864@<X0>(uint64_t *__return_ptr a1@<X8>, char *bsdName@<X0>)
{
  sub_10014DC7C(&v4, bsdName);
  *a1 = v4;
  v4 = 0;
  *(a1 + 16) = 1;
  return IOObjectRelease(0);
}

uint64_t sub_1001528DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((*(result + 16) & 1) == 0)
  {
    v3 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = *v3;
    *exception = &off_1002260F0;
    *(exception + 8) = v6;
    exception[24] = 0;
    exception[48] = 0;
    *(exception + 7) = a2;
  }

  *a3 = *result;
  *result = 0;
  return result;
}

void *sub_100152960(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100164CC8(a1, a2);
  *a1 = off_10021D018;
  a1[45] = &off_10021D118;
  a1[46] = &off_10021D140;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021D018;
  a1[45] = off_10021D0A0;
  a1[46] = off_10021D0C8;
  return a1;
}

void sub_100152A64(_Unwind_Exception *a1)
{
  sub_10015A13C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100152A88(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015A13C(a1);
  std::ios::~ios();
  return a1;
}

BOOL sub_100152ACC(uint64_t a1, uint64_t a2)
{
  sub_100151DC0(a1, &v7);
  v3 = v7.f_fsid.val[0];
  v4 = v7.f_fsid.val[1];
  sub_100151DC0(a2, &v7);
  return v3 == v7.f_fsid.val[0] && v4 == v7.f_fsid.val[1];
}

uint64_t sub_100152B98(int a1, int a2, int a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v3 = fcntl(a2, 51, 0);
    }

    else
    {
      v3 = fsync(a2);
    }
  }

  else
  {
    v3 = fcntl(a2, 85, 0);
  }

  if (v3 == -1)
  {
    return -*__error();
  }

  else
  {
    return 0;
  }
}

ssize_t sub_100152C00(void *a1, uint64_t __fd, void *__buf, size_t __nbyte, unint64_t a5)
{
  v6 = a1[1];
  if (__nbyte % v6 || a5 % v6)
  {
    v8[0] = __buf;
    v8[1] = __nbyte;
    return (*(*a1 + 8))(a1, __fd, v8, 1, a5);
  }

  else
  {

    return pread(__fd, __buf, __nbyte, a5);
  }
}

ssize_t sub_100152C88(uint64_t a1, int a2, iovec *a3, int a4, unint64_t a5)
{
  if (a4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = a4;
    p_iov_len = &a3->iov_len;
    do
    {
      v8 = *p_iov_len;
      p_iov_len += 2;
      v5 += v8;
      --v6;
    }

    while (v6);
  }

  v9 = *(a1 + 8);
  v10 = a5 % v9 + v5;
  if (a5 % v9)
  {
    v11 = (v10 % v9 != 0) + 1;
  }

  else
  {
    v11 = v10 % v9 != 0;
  }

  if (v11)
  {
    v14 = &v16;
    *v15 = xmmword_1001BC760;
    v13 = (v11 + a4);
    if (v13 >= 0x11)
    {
      sub_100164D90(&v14, v13);
    }

    operator new[]();
  }

  return preadv(a2, a3, a4, a5);
}

void sub_100152F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    if (a10 != __p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_100152F6C(char **result, _OWORD *a2)
{
  v5 = result[1];
  v6 = &(*result)[16 * v5];
  if (v5 == result[2])
  {
    v7[1] = v2;
    v7[2] = v3;
    sub_1000DA740(result, v6, v7, 1, a2);
  }

  else
  {
    *v6 = *a2;
    ++result[1];
  }
}

uint64_t sub_100152FC8(int a1, int a2, int a3)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  if (a3)
  {
    if (a3 != 2)
    {
      v3 = fsync(a2);
      goto LABEL_6;
    }
  }

  else
  {
    LODWORD(v6) = 2;
  }

  v3 = ioctl(a2, 0x80186416uLL, v5);
LABEL_6:
  if (v3 == -1)
  {
    return -*__error();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10015303C(uint64_t a1)
{
  if (sub_1000B9004(*(a1 + 40)))
  {
    v3 = 0x200000001;
    if (ffsctl(**(a1 + 56), 0xC0084A80uLL, &v3, 0))
    {
      *&v4 = "int FileLocal::disable_file_zero_padding() const";
      *(&v4 + 1) = 40;
      v5 = 0;
      sub_10015322C(v6, &v4);
      sub_100001FE8(v7, "Zero padding cannot be disabled from this process (res=", 55);
      __error();
      std::ostream::operator<<();
      sub_100001FE8(v7, ")", 1);
      std::ostream::~ostream();
      sub_10015A940(v6);
      std::ios::~ios();
      return -*__error();
    }

    else
    {
      *&v4 = "int FileLocal::disable_file_zero_padding() const";
      *(&v4 + 1) = 40;
      v5 = 0;
      sub_100153398(v6, &v4);
      sub_100001FE8(v7, "Zero padding disabled successfully on fd ", 41);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10015B0D8(v6);
      std::ios::~ios();
      return 0;
    }
  }

  else
  {
    *&v4 = "int FileLocal::disable_file_zero_padding() const";
    *(&v4 + 1) = 40;
    v5 = 0;
    sub_100089620(v6, &v4);
    sub_100001FE8(v7, "Backend is not mounted on APFS", 30);
    std::ostream::~ostream();
    sub_100090B38(v6);
    std::ios::~ios();
    return 4294967251;
  }
}

void sub_1001531F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1001534C0(va);
  _Unwind_Resume(a1);
}

void *sub_10015322C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100164DFC(a1, a2);
  *a1 = off_10021D238;
  a1[45] = &off_10021D338;
  a1[46] = &off_10021D360;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021D238;
  a1[45] = off_10021D2C0;
  a1[46] = off_10021D2E8;
  return a1;
}