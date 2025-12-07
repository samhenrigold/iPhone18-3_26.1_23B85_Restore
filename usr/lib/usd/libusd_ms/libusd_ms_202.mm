void sub_29B1E002C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1E0044(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDD40);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E00E8;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E00CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E00E8@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E012C(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E012C(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E01A8(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E01A8(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6B50;
  sub_29B1E02A8(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E023C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C6B50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E02A8(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E0318(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E0300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E0318(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDD40);
  sub_29AD96D70(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C6BA0;
  return a1;
}

void sub_29B1E03BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E03F0(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E0418(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDD48);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E04BC;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E04A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E04BC@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E0500(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E0500(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E057C(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E057C(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6BF0;
  sub_29B1E067C(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E0610(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C6BF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E067C(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E06EC(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E06D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E06EC(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDD48);
  sub_29AD96D70(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C6C40;
  return a1;
}

void sub_29B1E0790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E07C4(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E07EC(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDD50);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E0890;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E0874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E0890@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E08D4(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E08D4(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E0950(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E0950(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6CA8;
  sub_29B1E0A50(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E09E4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C6CA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E0A50(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E0AC0(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E0AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E0AC0(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDD50);
  sub_29B1D4C1C(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C6CF8;
  return a1;
}

void sub_29B1E0B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E0B98(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E0BC0(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDD58);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E0C64;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E0C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E0C64@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E0CA8(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E0CA8(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E0D24(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E0D24(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6D60;
  sub_29B1E0E24(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E0DB8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C6D60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E0E24(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E0E94(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E0E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E0E94(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDD58);
  sub_29AD96CE0(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C6DB0;
  return a1;
}

void sub_29B1E0F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E0F6C(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E0F94(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, off_2A14FDD60[0]);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E1038;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E101C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E1038@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E107C(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E107C(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E10F8(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E10F8(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6E20;
  sub_29B1E11F8(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E118C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C6E20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E11F8(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E1268(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E1250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E1268(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, off_2A14FDD60[0]);
  sub_29AD96D70(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C6E70;
  return a1;
}

void sub_29B1E130C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E1340(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E1368(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, off_2A14FDD68[0]);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1D9908;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E13F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1E140C(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, off_2A14FDD70[0]);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E14B0;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E1494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E14B0@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E14F4(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E14F4(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x128uLL);
  sub_29B1E1570(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E1570(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6580;
  sub_29B1E15E4(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E15E4(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1D6384(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E163C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1E1654(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, off_2A14FDD78[0]);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E16F8;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E16DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E16F8@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E173C(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E173C(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x128uLL);
  sub_29B1E17B8(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E17B8(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6288;
  sub_29B1E182C(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E182C(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AD98454(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E1884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1E189C(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, off_2A14FDD80[0]);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E1940;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E1924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E1940@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E1984(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E1984(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E1A00(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E1A00(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C62C0;
  sub_29B1E1A74(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E1A74(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AD9A3A0(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E1ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1E1AE4(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDD88);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E1B88;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E1B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E1B88@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E1BCC(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E1BCC(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E1C48(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E1C48(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6ED8;
  sub_29B1E1D48(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E1CDC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C6ED8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E1D48(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E1DB8(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E1DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E1DB8(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDD88);
  sub_29AD99D78(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C6F28;
  return a1;
}

void sub_29B1E1E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E1E90(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E1EB8(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDD90);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E1F5C;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E1F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E1F5C@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E1FA0(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E1FA0(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E201C(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E201C(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6F98;
  sub_29B1E211C(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E20B0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C6F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E211C(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E218C(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E2174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E218C(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDD90);
  sub_29AD99D78(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C6FE8;
  return a1;
}

void sub_29B1E2230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E2264(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E228C(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDD98);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E2330;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E2314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E2330@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E2374(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E2374(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E23F0(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E23F0(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C7058;
  sub_29B1E24F0(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E2484(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C7058;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E24F0(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E2560(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E2548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E2560(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDD98);
  sub_29AD96D70(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C70A8;
  return a1;
}

void sub_29B1E2604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E2638(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E2660(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDDA0);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E2704;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E26E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E2704@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E2748(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E2748(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E27C4(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E27C4(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C7110;
  sub_29B1E28C4(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E2858(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C7110;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E28C4(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E2934(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E291C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E2934(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDDA0);
  sub_29B1D4C1C(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C7160;
  return a1;
}

void sub_29B1E29D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E2A0C(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E2A34(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDDA8);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E2AD8;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E2ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E2AD8@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E2B1C(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E2B1C(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E2B98(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E2B98(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C71C8;
  sub_29B1E2C98(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E2C2C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C71C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E2C98(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E2D08(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E2CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E2D08(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDDA8);
  sub_29AD96CE0(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C7218;
  return a1;
}

void sub_29B1E2DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E2DE0(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E2E08(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, off_2A14FDDB0[0]);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E2EAC;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E2E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E2EAC@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E2EF0(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E2EF0(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E2F6C(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E2F6C(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6470;
  sub_29B1E2FE0(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E2FE0(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1D5D54(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E3038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1E3050(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDDB8);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E30F4;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E30D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E30F4@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E3138(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E3138(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E31B4(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E31B4(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C7288;
  sub_29B1E32B4(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E3248(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C7288;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E32B4(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E3324(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E330C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E3324(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDDB8);
  sub_29AD96D70(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C72D8;
  return a1;
}

void sub_29B1E33C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E33FC(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E3424(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDDC0);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E34C8;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E34AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E34C8@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E350C(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E350C(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E3588(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E3588(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C7340;
  sub_29B1E3688(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E361C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C7340;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E3688(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E36F8(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E36E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E36F8(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDDC0);
  sub_29AD96D70(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C7390;
  return a1;
}

void sub_29B1E379C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E37D0(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E37F8(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDDC8);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E389C;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E3880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E389C@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E38E0(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E38E0(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E395C(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E395C(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C73F8;
  sub_29B1E3A5C(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E39F0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C73F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E3A5C(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E3ACC(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E3AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E3ACC(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDDC8);
  sub_29AD96D70(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C7448;
  return a1;
}

void sub_29B1E3B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E3BA4(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E3BCC(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDDD0);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E3C70;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E3C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E3C70@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E3CB4(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E3CB4(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E3D30(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E3D30(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C74B0;
  sub_29B1E3E30(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E3DC4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C74B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E3E30(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E3EA0(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E3E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E3EA0(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDDD0);
  sub_29AD96D70(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C7500;
  return a1;
}

void sub_29B1E3F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E3F78(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E3FA0(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDDD8);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E4044;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E4028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E4044@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E4088(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E4088(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x128uLL);
  sub_29B1E4104(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E4104(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C7568;
  sub_29B1E4204(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E4198(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C7568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E4204(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E4274(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E425C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E4274(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDDD8);
  sub_29AD96C4C(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C75B8;
  return a1;
}

void sub_29B1E4318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E434C(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E4374(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDDE0);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E4418;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E43FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E4418@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E445C(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E445C(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E44D8(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E44D8(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C7638;
  sub_29B1E45D8(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E456C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C7638;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E45D8(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E4648(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E4630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E4648(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDDE0);
  sub_29AD96D70(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C7688;
  return a1;
}

void sub_29B1E46EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E4720(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E4748(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDDE8);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E47EC;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E47D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E47EC@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E4830(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E4830(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E48AC(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E48AC(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C76F0;
  sub_29B1E49AC(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E4940(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C76F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E49AC(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E4A1C(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E4A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E4A1C(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDDE8);
  sub_29AD96D70(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C7740;
  return a1;
}

void sub_29B1E4AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E4AF4(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E4B1C(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDDF0);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1E4BC0;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1E4BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1E4BC0@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E4C04(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1E4C04(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E4C80(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E4C80(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C77A8;
  sub_29B1E4D80(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E4D14(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C77A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E4D80(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E4DF0(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E4DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E4DF0(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDDF0);
  sub_29B1D4C1C(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C77F8;
  return a1;
}

void sub_29B1E4E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E4EC8(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E4EF0(uint64_t a1)
{
  *a1 = &unk_2A20C67A0;
  sub_29A89AD9C(a1 + 96);
  sub_29A89AD9C(a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

const void **sub_29B1E4F5C(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 **a4, uint64_t a5)
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

  sub_29B1E51C8(a1, v10, a4, v28);
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

void sub_29B1E51B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A12AF10(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B1E51C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x40uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
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

  v9[5] = 0;
  v9[6] = 0;
  v9[7] = 0;
  *(a4 + 16) = 1;
  return result;
}

const void **sub_29B1E5270(void *a1, uint64_t *a2)
{
  result = sub_29A5DAB7C(a1, a2);
  if (result)
  {
    sub_29B1E52A8(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29B1E52A8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29A099388(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

const void **sub_29B1E5304(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 **a4, uint64_t a5)
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

  sub_29B1E5570(a1, v10, a4, v28);
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

void sub_29B1E5558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1E7944(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B1E5570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x38uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
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

  v9[5] = 0;
  v9[6] = 0;
  *(a4 + 16) = 1;
  return result;
}

void *sub_29B1E5614(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *result) >> 3;
      }

      v9 = result[4];
      v23 = v3[4];
      v10 = sub_29A017BD4(v9, v8);
      v12 = &v10[16 * (v8 >> 2)];
      v13 = *(v3 + 1);
      v14 = v13;
      v15 = v12;
      v16 = *(&v13 + 1) - v13;
      if (*(&v13 + 1) != v13)
      {
        v15 = &v12[v16];
        v17 = &v10[16 * (v8 >> 2)];
        do
        {
          *v17 = *v14;
          v17 += 16;
          *v14 = 0;
          *(v14 + 8) = 0;
          v14 += 16;
          v16 -= 16;
        }

        while (v16);
        v13 = *(v3 + 1);
      }

      v20 = *v3;
      *v3 = v10;
      v3[1] = v12;
      v21 = v13;
      v18 = v3[3];
      v3[2] = v15;
      v3[3] = &v10[16 * v11];
      v22 = v18;
      result = sub_29A017C0C(&v20);
      v4 = v3[2];
    }

    else
    {
      v6 = (((v5 - *result) >> 4) + 1 + ((((v5 - *result) >> 4) + 1) >> 63)) >> 1;
      result = sub_29A03D458(&v20, v5, v4, &v5[-v6]);
      v4 = v7;
      v3[1] -= 16 * v6;
      v3[2] = v7;
    }
  }

  *v4 = *a2;
  v19 = a2[1];
  *(v4 + 8) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    v4 = v3[2];
  }

  v3[2] = v4 + 16;
  return result;
}

uint64_t sub_29B1E5744(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29A00B454(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_29B1E57A0(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x128uLL);
  sub_29B1E581C(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E581C(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6400;
  sub_29B1E5890(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E5890(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AD96B74(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E58E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E5900(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1E597C(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1E597C(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C7860;
  sub_29B1E5A7C(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1E5A10(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C7860;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1E5A7C(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1E5AEC(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E5AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1E5AEC(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDD10);
  sub_29AD96D70(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C78B0;
  return a1;
}

void sub_29B1E5B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E5BC4(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

void sub_29B1E5BEC(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 2), (v4 + 2));
        std::string::operator=((v8 + 5), (v4 + 5));
        v10 = *v8;
        sub_29AA38B7C(a1, v8);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    sub_29A4E0838(a1, v10);
  }

  while (v4 != a3)
  {
    sub_29B1E5CF4(a1, v4 + 1);
    v4 = *v4;
  }
}

void sub_29B1E5CC4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29A4E0838(v1, v2);
  __cxa_rethrow();
}

void sub_29B1E5D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A12AF10(va, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_29B1E5D48@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_29A0196C4(v6 + 16, a2);
  *(a3 + 16) = 1;
  result = sub_29A12A708(a1, v6 + 2);
  *(v6 + 1) = result;
  return result;
}

void sub_29B1E5DC8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A1E6748(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_29B1E5E24(uint64_t a1, const void **a2, const void **a3)
{
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A09ADD4(a1, v4, v6, v6);
      v6 += 3;
    }

    while (v6 != a3);
  }

  return a1;
}

double sub_29B1E5EA8@<D0>(const void **a1@<X0>, const void **a2@<X1>, const void **a3@<X2>, const void **a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = a3;
  v21 = a1;
  *&v19 = a5;
  *(&v19 + 1) = a6;
  for (i = 0; v20 != a4; a3 = v20)
  {
    v12 = sub_29B1E5F94(v21, a2, a3 + 4, a7, &v18);
    v13 = v21;
    v21 = v12;
    sub_29B1E6084(v12 == v13, &v21, &v20, &v19, &i);
    if (v21 == a2)
    {
      break;
    }

    v14 = sub_29B1E5F94(v20, a4, v21 + 4, a7, &v18);
    v15 = v20;
    v20 = v14;
    sub_29B1E6084(v14 == v15, &v21, &v20, &v19, &i);
  }

  *a8 = a2;
  *(a8 + 8) = a4;
  result = *&v19;
  *(a8 + 16) = v19;
  return result;
}

const void ***sub_29B1E5F94(const void **a1, const void **a2, const void **a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v13 = a2;
  if (a1 != a2)
  {
    if (sub_29A00AFCC(a4, a1 + 4, a3))
    {
      v9 = 1;
      v5 = a1;
      while (1)
      {
        v12 = v5;
        v10 = sub_29B1E620C(&v12, v9, &v13);
        if (v12 == v13 || !sub_29A00AFCC(a4, v12 + 4, a3))
        {
          break;
        }

        v5 = v12;
        v9 *= 2;
        if (v13 == v12)
        {
          return v5;
        }
      }

      if (v9 - v10 == 1)
      {
        return v12;
      }

      else
      {
        return sub_29B1E6154(v5, a3, v9 - v10, a4);
      }
    }

    else
    {
      return a1;
    }
  }

  return v5;
}

uint64_t sub_29B1E6084(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = sub_29AA9E9CC(a4, (*a2 + 32));
      v8 = *a2;
      v9 = *(*a2 + 8);
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
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      *a2 = v10;
      v12 = *a3;
      v13 = *(*a3 + 8);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      v15 = 0;
      *a3 = v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *a5 = v15;
  return result;
}

const void ***sub_29B1E6154(const void ***a1, const void **a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = v6 >> 1;
      v13 = a1;
      sub_29A095B38(&v13, v6 >> 1);
      if (sub_29A00AFCC(a4, v13 + 4, a2))
      {
        v9 = v13;
        v10 = v13[1];
        if (v10)
        {
          do
          {
            a1 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            a1 = v9[2];
            v11 = *a1 == v9;
            v9 = a1;
          }

          while (!v11);
        }

        v8 = v6 + ~v8;
      }

      v6 = v8;
    }

    while (v8);
  }

  return a1;
}

uint64_t sub_29B1E620C(void **a1, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    v3 = 0;
    v8 = -a2;
    v9 = 1;
    if (-a2 > 1)
    {
      v9 = -a2;
    }

    v10 = *a1;
    while (v10 != *a3)
    {
      v11 = *v10;
      if (*v10)
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
        do
        {
          v12 = v10[2];
          v7 = *v12 == v10;
          v10 = v12;
        }

        while (v7);
      }

      *a1 = v12;
      ++v3;
      v10 = v12;
      if (v3 == v9)
      {
        v3 = v9;
        return v8 - v3;
      }
    }
  }

  else if (a2)
  {
    v3 = 0;
    v4 = *a1;
    while (v4 != *a3)
    {
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      *a1 = v6;
      ++v3;
      v4 = v6;
      if (v3 == a2)
      {
        v8 = a2;
        v3 = a2;
        return v8 - v3;
      }
    }

    v8 = a2;
  }

  else
  {
    v8 = 0;
    v3 = 0;
  }

  return v8 - v3;
}

uint64_t sub_29B1E62F8(std::string *a1, std::string *a2, uint64_t a3)
{
  v3 = a3;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_29A008E78(&__p, off_2A14FDF48[0]);
  sub_29B1F3590(&p_p, a1, &__p);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  v6 = p_p;
  v7 = v16;
  if (p_p != v16)
  {
    v8 = v22;
    do
    {
      if (v8 >= v23)
      {
        v8 = sub_29B1E7594(&v21, v6);
      }

      else
      {
        sub_29B1E72F0(v8, v6);
        v8 += 32;
      }

      v22 = v8;
      v6 += 24;
    }

    while (v6 != v7);
  }

  __p = &p_p;
  sub_29A012C90(&__p);
  sub_29A008E78(&p_p, off_2A14FDF48[0]);
  sub_29B1F3590(&__p, a2, &p_p);
  if (v17 < 0)
  {
    operator delete(p_p);
  }

  v9 = __p;
  v10 = v19;
  if (__p != v19)
  {
    while (2)
    {
      sub_29B1E72F0(&p_p, v9);
      v11 = v21;
      v12 = v22;
      while (v11 != v12)
      {
        if (sub_29B1E6548(v11, &p_p, v3))
        {
          p_p_p = &p_p;
          sub_29A012C90(&p_p_p);
          p_p = &__p;
          sub_29A012C90(&p_p);
          v13 = 1;
          goto LABEL_19;
        }

        v11 += 4;
      }

      p_p_p = &p_p;
      sub_29A012C90(&p_p_p);
      v9 += 24;
      if (v9 != v10)
      {
        continue;
      }

      break;
    }
  }

  p_p = &__p;
  sub_29A012C90(&p_p);
  v13 = 0;
LABEL_19:
  p_p = &v21;
  sub_29AAC9380(&p_p);
  return v13;
}

void sub_29B1E64AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v24 - 56) = &a23;
  sub_29AAC9380((v24 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_29B1E6548(uint64_t *a1, uint64_t *a2, char a3)
{
  if (a1[3] & 1) != 0 || (a2[3])
  {
    return 0;
  }

  v5 = *a1;
  v4 = a1[1];
  if (a3)
  {
    v6 = v4 - v5;
    v7 = *a2;
    v8 = a2[1] - *a2;
    if (v6 > v8)
    {
      return 0;
    }
  }

  else
  {
    v7 = *a2;
    v6 = v4 - v5;
    v8 = a2[1] - *a2;
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    while (1)
    {
      v12 = *(v5 + 23);
      if (v12 >= 0)
      {
        v13 = *(v5 + 23);
      }

      else
      {
        v13 = *(v5 + 8);
      }

      v14 = *(v7 + 23);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v7 + 8);
      }

      if (v13 != v14)
      {
        break;
      }

      v16 = v12 >= 0 ? v5 : *v5;
      v17 = v15 >= 0 ? v7 : *v7;
      if (memcmp(v16, v17, v13))
      {
        break;
      }

      v5 += 24;
      v7 += 24;
      if (!--v11)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_29B1E6640(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_29B1E67D8(a1);
  v5 = 0;
  v6 = 0;
  sub_29B1E66AC(a1, v4, &v5, a2);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E6694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E66AC(uint64_t a1@<X0>, std::string *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a3;
  if (*a3)
  {
    v8 = a3[1];
    v14 = *a3;
    v15 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_29B1DA1A4(a1, &v14);
    v7 = v14;
  }

  sub_29AAE1890(a1, a2, __p);
  sub_29AAE0A54(v7, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12)
  {
    v9 = v13;
    *a4 = v12;
    a4[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_29AAE0A54(v14, a2, a4);
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }
}

void sub_29B1E6794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B1E67D8(uint64_t a1)
{
  sub_29A008E78(__p, qword_2A14FDE28);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v4 = (v2 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC(0, v3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_29B1E6844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1E6860(uint64_t a1, std::string *a2)
{
  v11 = 1;
  if (sub_29B1E6940(a1))
  {
    sub_29B1E6640(a1, &v9);
    v4 = v9;
    sub_29A008E78(__p, "Invalid collection string");
    sub_29B1DA93C(a1, v4 != 0, &v11, a2, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  v5 = sub_29B1DA6C4(a1, a2);
  return (v5 & v11);
}

void sub_29B1E6910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B1E6940(uint64_t a1)
{
  sub_29A008E78(__p, qword_2A14FDE28);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29B1E69A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E69BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29A008E78(__p, qword_2A14FDE58);
  sub_29B1E6AF4(a1, __p, v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v10[0];
  v5 = v10[1];
  while (v4 != v5)
  {
    v6 = 0;
    v7 = 0;
    sub_29B1E66AC(a1, v4, &v6, __p);
    if (v7)
    {
      sub_29A014BEC(v7);
    }

    if (__p[0])
    {
      sub_29A017F80(a2, __p);
    }

    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }

    ++v4;
  }

  __p[0] = v10;
  sub_29A012C90(__p);
}

void sub_29B1E6A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_29A0176E4(&__p);
  _Unwind_Resume(a1);
}

void sub_29B1E6AF4(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (sub_29A8877BC((a1 + 160), a2))
  {
    v6 = sub_29A8877BC((a1 + 160), a2);
    if (v6)
    {
      v8 = (v6 + 5);
    }

    else
    {
      v8 = sub_29B1F31FC(0, v7);
    }

    sub_29B1FA17C(v8, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

uint64_t sub_29B1E6B68(uint64_t a1)
{
  sub_29A008E78(&__p, off_2A14FDE00[0]);
  sub_29B1E6C04(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29B1E6BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x29B1E6BB0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1E6C04(uint64_t a1, std::string *a2)
{
  sub_29B1E6F64(a1, &__p);
  v4 = sub_29B1E62F8(&__p, a2, 1);
  v5 = v4;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v5)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  sub_29B1E70A8(a1, &__p);
  v7 = sub_29B1E62F8(&__p, a2, 0);
  v8 = v7;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v8)
    {
      return 1;
    }
  }

  else if (v7)
  {
    return 1;
  }

  *&__p.__r_.__value_.__r.__words[1] = 0uLL;
  __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
  sub_29B1E69BC(a1, &v24);
  v9 = v24;
  if (v25 != v24)
  {
    v10 = 0;
    do
    {
      v11 = *&v9[2 * v10];
      v23 = v11;
      if (*(&v11 + 1))
      {
        atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      size = __p.__r_.__value_.__l.__size_;
      if (__p.__r_.__value_.__l.__size_)
      {
        do
        {
          v13 = size[4];
          if (v11 >= v13)
          {
            if (v13 >= v11)
            {
              exception = __cxa_allocate_exception(0x20uLL);
              std::operator+<char>();
              sub_29AAD6B14(exception, &v22);
              *exception = &unk_2A20C79E8;
              __cxa_throw(exception, &unk_2A2070D20, sub_29AAD6B10);
            }

            ++size;
          }

          size = *size;
        }

        while (size);
      }

      sub_29A42F734(&__p, &v23, &v23);
      sub_29B1E69BC(v23, &v22);
      sub_29B1E77D0(&v24, v25, v22, *(&v22 + 1), (*(&v22 + 1) - v22) >> 4);
      v27 = &v22;
      sub_29A0176E4(&v27);
      if (*(&v23 + 1))
      {
        sub_29A014BEC(*(&v23 + 1));
      }

      ++v10;
      v9 = v24;
    }

    while (v10 < (v25 - v24) >> 4);
  }

  v14 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__l.__data_ == &__p.__r_.__value_.__r.__words[1])
  {
    v6 = 0;
  }

  else
  {
    while (1)
    {
      v15 = v14[1].__words[1];
      v16 = v14[1].__words[2];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = sub_29B1E6C04(v15, a2);
      if (v16)
      {
        sub_29A014BEC(v16);
      }

      if (v6)
      {
        break;
      }

      v17 = v14->__words[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = v17->__r_.__value_.__r.__words[0];
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v14->__words[2];
          v19 = v18->__r_.__value_.__r.__words[0] == v14;
          v14 = v18;
        }

        while (!v19);
      }

      v14 = v18;
      if (v18 == &__p.__r_.__value_.__r.__words[1])
      {
        goto LABEL_36;
      }
    }

    v6 = 1;
  }

LABEL_36:
  *&v22 = &v24;
  sub_29A0176E4(&v22);
  sub_29A42FCE0(&__p, __p.__r_.__value_.__l.__size_);
  return v6;
}

void sub_29B1E6F64(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29B1E738C(a1);
  if (v4)
  {
    v6 = sub_29B1F31FC(v4, v5);
    sub_29B1DAB28(a1, v6, &v15);
    v7 = v15;
    v8 = sub_29B1E7408(a1);
    sub_29A008E78(__p, off_2A14FDEC8[0]);
    (*(*v7 + 16))(v7, v8, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }

  else
  {
    v9 = sub_29B1F31FC(v4, v5);
    if (v9[23] < 0)
    {
      v11 = *v9;
      v12 = *(v9 + 1);

      sub_29A008D14(a2, v11, v12);
    }

    else
    {
      v10 = *v9;
      *(a2 + 16) = *(v9 + 2);
      *a2 = v10;
    }
  }
}

void sub_29B1E7074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E70A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29B1E7490(a1);
  if (v4)
  {
    v6 = sub_29B1F31FC(v4, v5);
    sub_29B1DAB28(a1, v6, &v15);
    v7 = v15;
    v8 = sub_29B1E750C(a1);
    sub_29A008E78(__p, off_2A14FDEC8[0]);
    (*(*v7 + 16))(v7, v8, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }

  else
  {
    v9 = sub_29B1F31FC(v4, v5);
    if (v9[23] < 0)
    {
      v11 = *v9;
      v12 = *(v9 + 1);

      sub_29A008D14(a2, v11, v12);
    }

    else
    {
      v10 = *v9;
      *(a2 + 16) = *(v9 + 2);
      *a2 = v10;
    }
  }
}

void sub_29B1E71B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1E71EC(uint64_t a1, std::string *a2)
{
  v9 = 1;
  v4 = sub_29B1E6B68(a1);
  sub_29A008E78(__p, "Cycle in collection include chain");
  sub_29B1DA93C(a1, v4 ^ 1, &v9, a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = sub_29B1DA6C4(a1, a2);
  return (v5 & v9);
}

void sub_29B1E727C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E729C(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

void sub_29B1E72C8(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1E72F0(uint64_t a1, uint64_t a2)
{
  sub_29A008E78(__p, qword_2A14FDDF8);
  sub_29B1F3590(a1, a2, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  *(a1 + 24) = v4 == 0;
  return a1;
}

void sub_29B1E7370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B1E738C(uint64_t a1)
{
  sub_29A008E78(__p, qword_2A14FDE50);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29B1E73EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B1E7408(uint64_t a1)
{
  sub_29A008E78(__p, qword_2A14FDE50);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v4 = (v2 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC(0, v3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_29B1E7474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B1E7490(uint64_t a1)
{
  sub_29A008E78(__p, qword_2A14FDE48);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29B1E74F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B1E750C(uint64_t a1)
{
  sub_29A008E78(__p, qword_2A14FDE48);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v4 = (v2 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC(0, v3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_29B1E7578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1E7594(char **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_29A00C9A4();
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
    v8 = sub_29A10CB10(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[4 * v2];
  *(&v17 + 1) = &v8[4 * v7];
  sub_29B1E72F0(v16, a2);
  *&v17 = v16 + 4;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_29B1E76A4(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29AD9669C(&v15);
  return v14;
}

void sub_29B1E7690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29AD9669C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B1E76A4(uint64_t a1, void **a2, void **a3, void *a4)
{
  v7 = a4;
  v8 = a4;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = &v8;
  v6 = 0;
  if (a2 != a3)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  v6 = 1;
  return sub_29B1E7798(v5);
}

void sub_29B1E7784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B1E7798(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B1E7798(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AD96650(a1);
  }

  return a1;
}

uint64_t *sub_29B1E77D0(void *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v18 = v10 - a2;
      v19 = (v10 - a2) >> 4;
      if (v19 >= a5)
      {
        sub_29A1D5390(a1, a2, a1[1], &a2[2 * a5]);
        v20 = &v7[2 * a5];
      }

      else
      {
        a1[1] = sub_29B1E79B4(a1, (a3 + v18), a4, a1[1]);
        if (v19 < 1)
        {
          return v5;
        }

        sub_29A1D5390(a1, v5, v10, &v5[2 * a5]);
        v20 = (v7 + v18);
      }

      sub_29A4274B8(v32, v7, v20, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    v34 = a1;
    if (v15)
    {
      v17 = sub_29A017BD4(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[16 * v16];
    v33 = &v17[16 * v15];
    v22 = &v21[2 * a5];
    v23 = v21;
    do
    {
      *v23 = *v7;
      v24 = v7[1];
      v23[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v23 += 2;
      v7 += 2;
    }

    while (v23 != v22);
    memcpy(v22, v5, a1[1] - v5);
    v25 = *a1;
    v26 = v22 + a1[1] - v5;
    a1[1] = v5;
    v27 = v5 - v25;
    v28 = v21 - (v5 - v25);
    memcpy(v28, v25, v27);
    v29 = *a1;
    *a1 = v28;
    a1[1] = v26;
    v30 = a1[2];
    a1[2] = v33;
    v32[2] = v29;
    v33 = v30;
    v32[0] = v29;
    v32[1] = v29;
    sub_29A017C0C(v32);
    return v21;
  }

  return v5;
}

void *sub_29B1E79B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29B1E7A3C(v7);
  return v4;
}

uint64_t sub_29B1E7A3C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

void *sub_29B1E7A74()
{
  v38 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1786AA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786AA8))
  {
    sub_29A008E78(&v30, "float");
    v27 = 2020749616;
    sub_29B1EC04C(v28, &v27, 4);
    sub_29B1EBB94(__dst, &v30, v28);
    sub_29A008E78(&v25, "color3");
    qmemcpy(v22, "01rgb", 5);
    sub_29B1EC04C(v23, v22, 5);
    sub_29B1EBB94(v33, &v25, v23);
    sub_29A008E78(&v20, "color4");
    qmemcpy(v17, "01rgba", 6);
    sub_29B1EC04C(v18, v17, 6);
    sub_29B1EBB94(v34, &v20, v18);
    sub_29A008E78(&v15, "vector2");
    v12 = 2037920048;
    sub_29B1EC04C(v13, &v12, 4);
    sub_29B1EBB94(v35, &v15, v13);
    sub_29A008E78(v10, "vector3");
    qmemcpy(v7, "01xyz", 5);
    sub_29B1EC04C(v8, v7, 5);
    sub_29B1EBB94(v36, v10, v8);
    sub_29A008E78(__p, "vector4");
    qmemcpy(v2, "01xyzw", 6);
    sub_29B1EC04C(v3, v2, 6);
    sub_29B1EBB94(v37, __p, v3);
    sub_29B1EC0CC(qword_2A1786A80, __dst, 6);
    for (i = 30; i != -6; i -= 6)
    {
      sub_29B1E7F68(&__dst[i]);
    }

    sub_29A082B84(v3, v4);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A082B84(v8, v9);
    if (v11 < 0)
    {
      operator delete(v10[0]);
    }

    sub_29A082B84(v13, v14);
    if (v16 < 0)
    {
      operator delete(v15);
    }

    sub_29A082B84(v18, v19);
    if (v21 < 0)
    {
      operator delete(v20);
    }

    sub_29A082B84(v23, v24);
    if (v26 < 0)
    {
      operator delete(v25);
    }

    sub_29A082B84(v28, v29);
    if (v31 < 0)
    {
      operator delete(v30);
    }

    __cxa_guard_release(&qword_2A1786AA8);
  }

  return qword_2A1786A80;
}

void sub_29B1E7DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, __int16 a63)
{
  v70 = -288;
  v71 = v67;
  do
  {
    v71 = sub_29B1E7F68(v71) - 48;
    v70 += 48;
  }

  while (v70);
  sub_29A082B84(&a14, a15);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_29A082B84(&a25, a26);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  sub_29A082B84(&a35, *(v68 + 8));
  if (a43 < 0)
  {
    operator delete(*(v68 + 24));
  }

  sub_29A082B84(&a46, *(v68 + 72));
  if (a54 < 0)
  {
    operator delete(*(v68 + 88));
  }

  sub_29A082B84(&a57, *(v68 + 136));
  if (a65 < 0)
  {
    operator delete(*(v68 + 152));
  }

  sub_29A082B84(&a66, *(v68 + 192));
  if (a67 < 0)
  {
    operator delete(*(v68 + 208));
  }

  __cxa_guard_abort(&qword_2A1786AA8);
  _Unwind_Resume(a1);
}

uint64_t sub_29B1E7F68(uint64_t a1)
{
  sub_29A082B84(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29B1E7FA8()
{
  v7[4] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1786AD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786AD8))
  {
    sub_29A008E78(v2, "float");
    v2[3] = 1;
    sub_29A008E78(v3, "color3");
    v3[3] = 3;
    sub_29A008E78(v4, "color4");
    v4[3] = 4;
    sub_29A008E78(v5, "vector2");
    v5[3] = 2;
    sub_29A008E78(v6, "vector3");
    v6[3] = 3;
    sub_29A008E78(v7, "vector4");
    v7[3] = 4;
    sub_29B1EC560(qword_2A1786AB0, v2, 6);
    for (i = 0; i != -24; i -= 4)
    {
      if (SHIBYTE(v7[i + 2]) < 0)
      {
        operator delete(v7[i]);
      }
    }

    __cxa_guard_release(&qword_2A1786AD8);
  }

  return qword_2A1786AB0;
}

void sub_29B1E8124(_Unwind_Exception *a1)
{
  v3 = (v1 + 183);
  v4 = -192;
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
      __cxa_guard_abort(&qword_2A1786AD8);
      _Unwind_Resume(a1);
    }
  }
}

void sub_29B1E81A4(void *a1, const std::string **a2)
{
  v3 = *a2;
  if (*a2)
  {

    sub_29B1D1828(a1, v3 + 2);
  }

  else
  {
    sub_29A008E78(__p, off_2A14FDE60[0]);
    sub_29B1D93E8(a1, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29B1E8228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E8244(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29B1E82CC(a1, &v6);
  v4 = v6;
  if (v6)
  {
    v5 = sub_29B1D2C34(a1);
    sub_29AD98C84(v4, v5, a2);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29B1E82B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E82CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&v9, (a1 + 8));
  shared_weak_owners = v9;
  if (v9)
  {
    do
    {
      sub_29B1D7400(shared_weak_owners, a2);
      v4 = *a2 == 0;
      if (*a2)
      {
        break;
      }

      v5 = a2[1];
      if (v5)
      {
        sub_29A014BEC(v5);
      }

      v6 = v9;
      shared_weak_owners = v9[9].__shared_weak_owners_;
      if (shared_weak_owners)
      {
        shared_weak_owners = std::__shared_weak_count::lock(shared_weak_owners);
        v7 = shared_weak_owners;
        if (shared_weak_owners)
        {
          shared_weak_owners = v6[9].__shared_owners_;
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = v10;
      v9 = shared_weak_owners;
      v10 = v7;
      if (v8)
      {
        sub_29A014BEC(v8);
        shared_weak_owners = v9;
      }
    }

    while (shared_weak_owners);
  }

  else
  {
    v4 = 1;
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (v4)
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_29B1E8394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E83AC(void *a1, const std::string **a2)
{
  if (*a2)
  {
    sub_29AD9A0A8(a1, *a2 + 2);
    v5 = *a2;
    v6 = (*a2)[9].__r_.__value_.__r.__words[2];
    if (v6)
    {
      v6 = std::__shared_weak_count::lock(v6);
      v7 = v6;
      if (v6)
      {
        size = v5[9].__r_.__value_.__l.__size_;
      }

      else
      {
        size = 0;
      }
    }

    else
    {
      size = 0;
      v7 = 0;
    }

    v9 = sub_29B1F31FC(v6, v4);
    v10 = sub_29AAC05D4(size, v9);
    if (v10)
    {
      sub_29B1E85A0(a1, size + 2);
      sub_29A008E78(__p, off_2A14FDE60[0]);
      sub_29B1D93E8(a1, __p);
    }

    else
    {
      v12 = sub_29B1F31FC(v10, v11);
      if (!sub_29AAD7980(size, v12))
      {
LABEL_19:
        if (v7)
        {
          sub_29A014BEC(v7);
        }

        return;
      }

      sub_29B1D1828(a1, size + 2);
      sub_29A008E78(__p, off_2A14FDE68[0]);
      sub_29B1D93E8(a1, __p);
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_19;
  }

  sub_29A008E78(__p, off_2A14FDE70[0]);
  sub_29B1D93E8(a1, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FDE68[0]);
  sub_29B1D93E8(a1, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FDE60[0]);
  sub_29B1D93E8(a1, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B1E8544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E85A0(uint64_t a1, const std::string *a2)
{
  sub_29A008E78(__p, off_2A14FDE68[0]);
  sub_29B1D9334(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B1E85FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E8618(uint64_t a1@<X0>, void ***a2@<X8>)
{
  v4 = sub_29B1D2448(a1);
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 232);
  if (!v5)
  {
    v6 = 0;
LABEL_8:
    v10 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = *(a1 + 224);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = *(v7 + 232);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = std::__shared_weak_count::lock(v8);
  if (v9)
  {
    v10 = *(v7 + 224);
  }

  else
  {
    v10 = 0;
  }

LABEL_9:
  if (sub_29B1E8A48(a1))
  {
    v11 = sub_29B1E8BF0(a1);
    v38 = v10;
    v39 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1E8AC4(a1, v11, &v38, &v40);
    v13 = v39;
    if (v39)
    {
      sub_29A014BEC(v39);
    }

    v14 = v40;
    if (v40)
    {
      goto LABEL_21;
    }

    v15 = sub_29B1E8BF0(a1);
    v36 = 0;
    v37 = 0;
    sub_29B1E8AC4(a1, v15, &v36, v35);
    v16 = v35[0];
    v35[0] = 0uLL;
    v17 = *(&v40 + 1);
    v40 = v16;
    if (v17)
    {
      sub_29A014BEC(v17);
      if (*(&v35[0] + 1))
      {
        sub_29A014BEC(*(&v35[0] + 1));
      }
    }

    v13 = v37;
    if (v37)
    {
      sub_29A014BEC(v37);
    }

    v14 = v40;
    if (v40)
    {
LABEL_21:
      v18 = sub_29B1F31FC(v13, v12);
      sub_29AAD856C(v14, v18, v35);
      v19 = *&v35[0];
      if (*&v35[0] != *(&v35[0] + 1))
      {
        v20 = v4[23];
        if ((v20 & 0x80u) != 0)
        {
          v20 = *(v4 + 1);
        }

        if (v20)
        {
          sub_29AD9A124(v40, v4, v34);
LABEL_43:
          v24 = v34[0];
          v14 = v34[1];
LABEL_48:
          *a2 = v24;
          a2[1] = &v14->__vftable;
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      goto LABEL_45;
    }

    v24 = 0;
  }

  else
  {
    if (!sub_29B1E8C78(a1))
    {
      v14 = 0;
LABEL_53:
      sub_29B1D8ACC(a1, &v40);
      sub_29AD9A124(v40, v4, v35);
      v29 = v35[0];
      v35[0] = 0uLL;
      *a2 = v29;
      if (v14)
      {
        sub_29A014BEC(v14);
        if (*(&v35[0] + 1))
        {
          sub_29A014BEC(*(&v35[0] + 1));
        }
      }

      if (*(&v40 + 1))
      {
        sub_29A014BEC(*(&v40 + 1));
      }

      goto LABEL_58;
    }

    v21 = sub_29B1D2C34(a1);
    v32 = v10;
    v33 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1E8CF4(a1, v21, &v32, &v40);
    v23 = v33;
    if (v33)
    {
      sub_29A014BEC(v33);
    }

    v24 = v40;
    if (v40)
    {
      goto LABEL_38;
    }

    v30 = 0;
    v31 = 0;
    sub_29B1E8CF4(a1, v21, &v30, v35);
    v25 = v35[0];
    v35[0] = 0uLL;
    v26 = *(&v40 + 1);
    v40 = v25;
    if (v26)
    {
      sub_29A014BEC(v26);
      if (*(&v35[0] + 1))
      {
        sub_29A014BEC(*(&v35[0] + 1));
      }
    }

    v23 = v31;
    if (v31)
    {
      sub_29A014BEC(v31);
    }

    v24 = v40;
    if (v40)
    {
LABEL_38:
      v27 = sub_29B1F31FC(v23, v22);
      sub_29AAD856C(v24, v27, v35);
      v19 = *&v35[0];
      if (*&v35[0] != *(&v35[0] + 1))
      {
        v28 = v4[23];
        if ((v28 & 0x80u) != 0)
        {
          v28 = *(v4 + 1);
        }

        if (v28)
        {
          sub_29AD9A124(v40, v4, v34);
          goto LABEL_43;
        }

LABEL_46:
        v24 = *v19;
        v14 = *(v19 + 8);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_48;
      }

LABEL_45:
      v14 = 0;
      v24 = 0;
LABEL_49:
      v34[0] = v35;
      sub_29A0176E4(v34);
      goto LABEL_50;
    }

    v14 = 0;
  }

LABEL_50:
  if (*(&v40 + 1))
  {
    sub_29A014BEC(*(&v40 + 1));
  }

  if (!v24)
  {
    goto LABEL_53;
  }

LABEL_58:
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1E895C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, char a15)
{
  a13 = &a15;
  sub_29A0176E4(&a13);
  v19 = *(v17 - 72);
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  else if (!v15)
  {
    goto LABEL_3;
  }

  sub_29A014BEC(v15);
LABEL_3:
  _Unwind_Resume(a1);
}

BOOL sub_29B1E8A48(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE68[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29B1E8AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E8AC4(uint64_t a1@<X0>, std::string *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a3;
  if (*a3)
  {
    v8 = a3[1];
    v14 = *a3;
    v15 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_29B1DA1A4(a1, &v14);
    v7 = v14;
  }

  sub_29AAE1890(a1, a2, __p);
  sub_29AADEFE4(v7, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12)
  {
    v9 = v13;
    *a4 = v12;
    a4[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_29AADEFE4(v14, a2, a4);
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }
}

void sub_29B1E8BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B1E8BF0(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE68[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v4 = (v2 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC(0, v3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_29B1E8C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B1E8C78(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE60[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29B1E8CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E8CF4(uint64_t a1@<X0>, std::string *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a3;
  if (*a3)
  {
    v8 = a3[1];
    v14 = *a3;
    v15 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_29B1DA1A4(a1, &v14);
    v7 = v14;
  }

  sub_29AAE1890(a1, a2, __p);
  sub_29AD98C84(v7, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12)
  {
    v9 = v13;
    *a4 = v12;
    a4[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_29AD98C84(v14, a2, a4);
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }
}

void sub_29B1E8DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1E8E20(uint64_t a1, std::string *a2)
{
  v72 = 1;
  (*(*a1 + 80))(&v70);
  if (sub_29B1E8C78(a1) || sub_29B1D23C8(a1))
  {
    v4 = sub_29B1D2C34(a1);
    v67 = 0;
    v68 = 0;
    sub_29B1E8AC4(a1, v4, &v67, &v69);
    if (v68)
    {
      sub_29A014BEC(v68);
    }

    if (!v69)
    {
      v5 = v70;
      sub_29A008E78(&__p, "Invalid port connection");
      sub_29B1DA93C(a1, v5 != 0, &v72, a2, &__p);
      if (v66 < 0)
      {
        operator delete(__p);
      }
    }

    if (*(&v69 + 1))
    {
      sub_29A014BEC(*(&v69 + 1));
    }
  }

  if (v70)
  {
    v6 = sub_29B1D2448(a1);
    v7 = v6;
    v8 = v6[23];
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v6 + 1);
    }

    if (v8)
    {
      v9 = sub_29B1E8C78(a1);
      if (v9)
      {
        v11 = v70;
        v12 = sub_29B1F31FC(v9, v10);
        sub_29B1ED628(v11, v12, 0, &v69);
        if (v69)
        {
          sub_29AD9A124(v69, v7, &__p);
          v14 = __p;
          v13 = v65;
          if (!__p)
          {
            goto LABEL_76;
          }

          v15 = (*(v70->__r_.__value_.__r.__words[0] + 64))(v70);
          v16 = sub_29B1F2C14();
          v17 = *(v15 + 23);
          if (v17 >= 0)
          {
            v18 = *(v15 + 23);
          }

          else
          {
            v18 = *(v15 + 8);
          }

          v19 = *(v16 + 23);
          v20 = v19;
          if (v19 < 0)
          {
            v19 = v16[1];
          }

          if (v18 == v19)
          {
            if (v17 >= 0)
            {
              v21 = v15;
            }

            else
            {
              v21 = *v15;
            }

            if (v20 >= 0)
            {
              v22 = v16;
            }

            else
            {
              v22 = *v16;
            }

            v23 = memcmp(v21, v22, v18) == 0;
          }

          else
          {
            v23 = 0;
          }

          sub_29A008E78(&__p, "Multi-output type expected in port connection");
          sub_29B1DA93C(a1, v23, &v72, a2, &__p);
          goto LABEL_74;
        }
      }

      else
      {
        if (!sub_29B1E8A48(a1))
        {
          sub_29B1D8ACC(a1, &v69);
          sub_29AD9A124(v69, v7, &__p);
          v14 = __p;
          v13 = v65;
          __p = 0;
          v65 = 0;
          goto LABEL_76;
        }

        v27 = sub_29B1E8BF0(a1);
        v62 = 0;
        v63 = 0;
        sub_29B1E8AC4(a1, v27, &v62, &v69);
        if (v63)
        {
          sub_29A014BEC(v63);
        }

        if (v69)
        {
          sub_29AD9A124(v69, v7, &__p);
          v14 = __p;
          v13 = v65;
          sub_29B1EE8F4(v69, &__p);
          v28 = __p;
          if (v65)
          {
            sub_29A014BEC(v65);
          }

          if (!v28)
          {
LABEL_76:
            if (*(&v69 + 1))
            {
              sub_29A014BEC(*(&v69 + 1));
            }

            sub_29A008E78(&__p, "No output found for port connection");
            sub_29B1DA93C(a1, v14 != 0, &v72, a2, &__p);
            if (v66 < 0)
            {
              operator delete(__p);
              if (!v14)
              {
                goto LABEL_101;
              }
            }

            else if (!v14)
            {
LABEL_101:
              if (v13)
              {
                sub_29A014BEC(v13);
              }

              goto LABEL_103;
            }

            if (sub_29B1D2240(a1))
            {
              v47 = sub_29B1D22C0(a1);
              v48 = (*(*v14 + 64))(v14);
              v49 = (*(*a1 + 64))(a1);
              LOBYTE(v48) = sub_29B1E96B4(v47, v48, v49);
              sub_29A008E78(&__p, "Invalid channels string in port connection");
              sub_29B1DA93C(a1, v48, &v72, a2, &__p);
            }

            else
            {
              v50 = (*(*a1 + 64))(a1);
              v51 = (*(*v14 + 64))(v14);
              v52 = *(v50 + 23);
              if (v52 >= 0)
              {
                v53 = *(v50 + 23);
              }

              else
              {
                v53 = *(v50 + 8);
              }

              v54 = *(v51 + 23);
              v55 = v54;
              if ((v54 & 0x80u) != 0)
              {
                v54 = *(v51 + 8);
              }

              if (v53 == v54)
              {
                if (v52 >= 0)
                {
                  v56 = v50;
                }

                else
                {
                  v56 = *v50;
                }

                if (v55 >= 0)
                {
                  v57 = v51;
                }

                else
                {
                  v57 = *v51;
                }

                v58 = memcmp(v56, v57, v53) == 0;
              }

              else
              {
                v58 = 0;
              }

              sub_29A008E78(&__p, "Mismatched types in port connection");
              sub_29B1DA93C(a1, v58, &v72, a2, &__p);
            }

            if (v66 < 0)
            {
              operator delete(__p);
            }

            goto LABEL_101;
          }

          v29 = *(v69 + 264);
          sub_29A008E78(&__p, "Multi-output type expected in port connection");
          sub_29B1DA93C(a1, v29 > 1, &v72, a2, &__p);
LABEL_74:
          if (v66 < 0)
          {
            operator delete(__p);
          }

          goto LABEL_76;
        }
      }

      v14 = 0;
      v13 = 0;
      goto LABEL_76;
    }

    if (sub_29B1D2240(a1))
    {
      v24 = sub_29B1D22C0(a1);
      v25 = (*(v70->__r_.__value_.__r.__words[0] + 64))(v70);
      v26 = (*(*a1 + 64))(a1);
      LOBYTE(v24) = sub_29B1E96B4(v24, v25, v26);
      sub_29A008E78(&__p, "Invalid channels string in port connection");
      sub_29B1DA93C(a1, v24, &v72, a2, &__p);
LABEL_70:
      if (v66 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_103;
    }

    v30 = (*(v70->__r_.__value_.__r.__words[0] + 64))(v70);
    v31 = sub_29B1F2C14();
    v32 = *(v30 + 23);
    if (v32 >= 0)
    {
      v33 = *(v30 + 23);
    }

    else
    {
      v33 = *(v30 + 8);
    }

    v34 = *(v31 + 23);
    v35 = v34;
    if (v34 < 0)
    {
      v34 = v31[1];
    }

    if (v33 != v34 || (v32 >= 0 ? (v36 = v30) : (v36 = *v30), v35 >= 0 ? (v37 = v31) : (v37 = *v31), memcmp(v36, v37, v33)))
    {
      v38 = (*(*a1 + 64))(a1);
      v39 = (*(v70->__r_.__value_.__r.__words[0] + 64))(v70);
      v40 = *(v38 + 23);
      if (v40 >= 0)
      {
        v41 = *(v38 + 23);
      }

      else
      {
        v41 = *(v38 + 8);
      }

      v42 = *(v39 + 23);
      v43 = v42;
      if ((v42 & 0x80u) != 0)
      {
        v42 = *(v39 + 8);
      }

      if (v41 == v42)
      {
        if (v40 >= 0)
        {
          v44 = v38;
        }

        else
        {
          v44 = *v38;
        }

        if (v43 >= 0)
        {
          v45 = v39;
        }

        else
        {
          v45 = *v39;
        }

        v46 = memcmp(v44, v45, v41) == 0;
      }

      else
      {
        v46 = 0;
      }

      sub_29A008E78(&__p, "Mismatched types in port connection");
      sub_29B1DA93C(a1, v46, &v72, a2, &__p);
      goto LABEL_70;
    }
  }

LABEL_103:
  v59 = sub_29B1DB7B0(a1, a2);
  v60 = v72;
  if (v71)
  {
    sub_29A014BEC(v71);
  }

  return v59 & v60;
}

void sub_29B1E9578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  if (v22)
  {
    sub_29A014BEC(v22);
  }

  if (a22)
  {
    sub_29A014BEC(a22);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B1E96B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = sub_29B1E973C(a1, a2);
  if (result)
  {
    sub_29B1E7FA8();
    result = sub_29A8877BC(qword_2A1786AB0, a3);
    if (result)
    {
      sub_29B1E7FA8();
      v6 = sub_29A8877BC(qword_2A1786AB0, a3);
      if (!v6)
      {
        sub_29A0F26E4("unordered_map::at: key not found");
      }

      v7 = *(a1 + 23);
      if (v7 < 0)
      {
        v7 = *(a1 + 8);
      }

      return (v6[5] == v7);
    }
  }

  return result;
}

const void **sub_29B1E973C(char *a1, uint64_t *a2)
{
  sub_29B1E7A74();
  result = sub_29A8877BC(qword_2A1786A80, a2);
  if (result)
  {
    sub_29B1E7A74();
    v5 = sub_29A8877BC(qword_2A1786A80, a2);
    if (!v5)
    {
      sub_29A0F26E4("unordered_map::at: key not found");
    }

    v6 = a1[23];
    if ((v6 & 0x80u) == 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a1 + 1);
    }

    if (v6)
    {
      v8 = &v7[v6];
      v9 = v5[6];
      result = (v9 != 0);
      while (1)
      {
        if (!v9)
        {
          return result;
        }

        v10 = *v7;
        v11 = v9;
        while (1)
        {
          v12 = *(v11 + 25);
          if (v10 >= v12)
          {
            break;
          }

LABEL_15:
          v11 = *v11;
          if (!v11)
          {
            return 0;
          }
        }

        if (v12 < v10)
        {
          break;
        }

        if (++v7 == v8)
        {
          return result;
        }
      }

      ++v11;
      goto LABEL_15;
    }

    return 1;
  }

  return result;
}

void sub_29B1E9814(void *a1@<X0>, void *a2@<X8>)
{
  sub_29B1E9A10(a1, &v16);
  if (v16 && (sub_29B1E8C78(v16) || sub_29B1E8A48(v16)))
  {
    (*(*v16 + 80))(v16);
    goto LABEL_25;
  }

  v5 = a1[29];
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    v6 = v5;
    if (v5)
    {
      v7 = a1[28];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = sub_29B1F31FC(v5, v4);
  v9 = sub_29AAC05D4(v7, v8);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  if (!v9)
  {
LABEL_18:
    (*(*a1 + 72))(&v14, a1);
    if (v14)
    {
      (*(*v14 + 80))(v14);
      if (*a2)
      {
        goto LABEL_23;
      }

      v13 = a2[1];
      if (v13)
      {
        sub_29A014BEC(v13);
      }
    }

    sub_29B1E8244(a1, a2);
LABEL_23:
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    goto LABEL_25;
  }

  sub_29B1D8ACC(a1, &v14);
  v10 = v14;
  v11 = sub_29B1D2C34(a1);
  sub_29AD98C84(v10, v11, a2);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (!*a2)
  {
    v12 = a2[1];
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    goto LABEL_18;
  }

LABEL_25:
  if (v17)
  {
    sub_29A014BEC(v17);
  }
}

void sub_29B1E99C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E9A10(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!sub_29AE150E4(a1))
  {
    goto LABEL_7;
  }

  sub_29B1E82CC(a1, &v6);
  v4 = v6;
  if (v6)
  {
    v5 = sub_29AE15164(a1);
    sub_29AAC1E24(v4, v5, a2);
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (!v4)
  {
LABEL_7:
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_29B1E9A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E9AA4(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A008E78(&__p, qword_2A14FDEA0);
  v4 = sub_29A8877BC((a1 + 160), &__p);
  if (v4)
  {
    v6 = (v4 + 5);
  }

  else
  {
    v6 = sub_29B1F31FC(0, v5);
  }

  if (v9 < 0)
  {
    operator delete(__p);
  }

  if ((v6[23] & 0x8000000000000000) == 0)
  {
    if (v6[23])
    {
      goto LABEL_8;
    }

LABEL_11:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  if (!*(v6 + 1))
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_29B1D8ACC(a1, &__p);
  sub_29B1E9B8C(__p, v6, a2);
  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29B1E9B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E9B8C(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A8877BC((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  sub_29B1D7AE0(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  sub_29A014BEC(v7);
}

void sub_29B1E9C10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1E9C28(uint64_t a1, std::string *a2)
{
  v28 = 1;
  v4 = *(a1 + 232);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 224);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = sub_29B1E9F3C(a1);
  if (v7)
  {
    v9 = sub_29B1F31FC(v7, v8);
    v10 = sub_29AAD7D7C(v6, v9);
    sub_29A008E78(__p, "Invalid defaultgeomprop on non-definition input");
    sub_29B1DA93C(a1, v10, &v28, a2, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29B1E9AA4(a1, &v24);
    v11 = v24;
    sub_29A008E78(__p, "Invalid defaultgeomprop string");
    sub_29B1DA93C(a1, v11 != 0, &v28, a2, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = v25;
    if (v25)
    {
      sub_29A014BEC(v25);
    }
  }

  v12 = sub_29B1F31FC(v7, v8);
  v13 = sub_29AAD7980(v6, v12);
  if (v13)
  {
    v15 = sub_29B1D41D0(a1);
    v16 = sub_29B1E8C78(a1) || sub_29B1E8A48(a1) || sub_29B1D23C8(a1) || sub_29AE150E4(a1);
    sub_29A008E78(__p, "Node input binds no value or connection");
    sub_29B1DA93C(a1, v15 || v16, &v28, a2, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v17 = sub_29B1F31FC(v13, v14);
    if (sub_29AAC05D4(v6, v17))
    {
      sub_29B1D7FB0(v6, &v22);
      sub_29B1EE8F4(v22, &v24);
      v18 = v24;
      sub_29A008E78(__p, "Input element in a functional nodegraph has no effect");
      sub_29B1DA93C(a1, v18 == 0, &v28, a2, __p);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25)
      {
        sub_29A014BEC(v25);
      }

      if (v23)
      {
        sub_29A014BEC(v23);
      }
    }
  }

  v19 = sub_29B1E8E20(a1, a2);
  v20 = v28;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return v19 & v20;
}

void sub_29B1E9E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B1E9F3C(uint64_t a1)
{
  sub_29A008E78(__p, qword_2A14FDEA0);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29B1E9F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1E9FB8(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (*(*a1 + 24))(a1);
  if (v6 <= a2)
  {
    v11 = sub_29B1F1808(v6, v7);
    v12 = *(v11 + 1);
    *a3 = *v11;
    a3[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(v11 + 3);
    a3[2] = *(v11 + 2);
    a3[3] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(v11 + 5);
    a3[4] = *(v11 + 4);
    a3[5] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_29B1D8C98(a1, &v17);
    (*(*a1 + 80))(&v15, a1);
    v9 = v15;
    v8 = v16;
    v15 = 0;
    v16 = 0;
    v10 = v18;
    *a3 = v17;
    a3[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    a3[2] = 0;
    a3[3] = 0;
    a3[4] = v9;
    a3[5] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v8);
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }

    if (v18)
    {
      sub_29A014BEC(v18);
    }
  }
}

void sub_29B1EA0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1EA110(uint64_t a1)
{
  sub_29B1DA55C(a1, &v15);
  if (v20 == v21)
  {
    sub_29B1F1C6C(&v15);
  }

  *(&v22 + 1) = 0;
  v11[0] = v15;
  v11[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
  }

  v11[2] = v17;
  v11[3] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(v18 + 1, 1uLL, memory_order_relaxed);
  }

  sub_29B1EBF20(v12, &v19);
  memset(v13, 0, sizeof(v13));
  sub_29B1D3464(v13, v20, v21, 0xAAAAAAAAAAAAAAABLL * (v21 - v20));
  v14 = v22;
  v1 = sub_29B1F1C4C();
  v2 = v1;
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B1EBF20(v8, (v1 + 4));
  memset(v9, 0, sizeof(v9));
  sub_29B1D3464(v9, v2[7], v2[8], 0xAAAAAAAAAAAAAAABLL * ((v2[8] - v2[7]) >> 3));
  v10 = *(v2 + 5);
  while (!sub_29B1EBF78(v11, v7))
  {
    sub_29B1EA37C(v11, v6);
    sub_29ABF2F5C(v6);
    sub_29B1F1C6C(v11);
  }

  sub_29B1EBFEC(v7);
  sub_29B1EBFEC(v11);
  sub_29B1EBFEC(&v15);
  return 0;
}

void sub_29B1EA294(_Unwind_Exception *a1, int a2)
{
  sub_29B1EBFEC(v2 - 128);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x29B1EA280);
  }

  _Unwind_Resume(a1);
}

void sub_29B1EA37C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[8];
  if (a1[7] == v2)
  {
    v4 = 0;
    v3 = 0;
  }

  else
  {
    v3 = *(v2 - 24);
    v4 = *(v2 - 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  v5 = a1[2];
  v6 = a1[3];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a1;
  v7 = a1[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v3;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a2[2] = v5;
  a2[3] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a2[4] = v8;
  a2[5] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v7);
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }

  if (v4)
  {

    sub_29A014BEC(v4);
  }
}

uint64_t sub_29B1EA45C(uint64_t a1, std::string *a2)
{
  v9 = 1;
  v4 = sub_29B1EA110(a1);
  sub_29A008E78(__p, "Cycle in upstream path");
  sub_29B1DA93C(a1, v4 ^ 1, &v9, a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = sub_29B1E8E20(a1, a2);
  return (v5 & v9);
}

void sub_29B1EA4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1EA508@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_29B1DA308(a1, &v18);
  v21 = 0;
  v15 = v18;
  v16 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1DD878(v17, &v20);
  v17[3] = v21;
  v5 = sub_29B1F233C();
  v6 = v5[1];
  v13[0] = *v5;
  v13[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B1DD878(v14, (v5 + 2));
  v14[3] = v5[5];
  while (1)
  {
    v7 = v15;
    if (v15 == v13[0])
    {
      sub_29B1DD9F0(v13);
      sub_29B1DD9F0(&v15);
      result = sub_29B1DD9F0(&v18);
      *a3 = 0;
      a3[1] = 0;
      return result;
    }

    v8 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D74B0(v7, &v11);
    sub_29AAC1E24(v11, a2, a3);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    if (*a3)
    {
      break;
    }

    v9 = a3[1];
    if (v9)
    {
      sub_29A014BEC(v9);
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }

    sub_29B1F235C(&v15);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  sub_29B1DD9F0(v13);
  sub_29B1DD9F0(&v15);
  return sub_29B1DD9F0(&v18);
}

void sub_29B1EA66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29B1DD9F0(va);
  sub_29B1DD9F0(v16 - 80);
  _Unwind_Resume(a1);
}

void sub_29B1EA6E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  sub_29B1DA308(a1, &v22);
  v25 = 0;
  v19 = v22;
  v20 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1DD878(v21, &v24);
  v21[3] = v25;
  v3 = sub_29B1F233C();
  v4 = v3[1];
  v17[0] = *v3;
  v17[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B1DD878(v18, (v3 + 2));
  v18[3] = v3[5];
  while (1)
  {
    v5 = v19;
    if (v19 == v17[0])
    {
      break;
    }

    v6 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D74B0(v5, &v14);
    v7 = v14;
    v10 = sub_29B1F31FC(v8, v9);
    sub_29AAD5940(v7, v10, v16);
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    v11 = v16[0];
    v12 = v16[1];
    while (v11 != v12)
    {
      if (*v11)
      {
        sub_29A095658(&v26, (*v11 + 48), *v11 + 48);
        if (v13)
        {
          sub_29A017F80(a2, v11);
        }
      }

      ++v11;
    }

    v14 = v16;
    sub_29A0176E4(&v14);
    if (v6)
    {
      sub_29A014BEC(v6);
    }

    sub_29B1F235C(&v19);
  }

  sub_29B1DD9F0(v17);
  sub_29B1DD9F0(&v19);
  sub_29B1DD9F0(&v22);
  sub_29A019EE8(&v26, v27[0]);
}

void sub_29B1EA890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  sub_29B1DD9F0(&a20);
  sub_29B1DD9F0(va);
  sub_29A019EE8(v25 - 88, *(v25 - 80));
  sub_29A0176E4(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_29B1EA948@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_29B1DA308(a1, &v18);
  v21 = 0;
  v15 = v18;
  v16 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1DD878(v17, &v20);
  v17[3] = v21;
  v5 = sub_29B1F233C();
  v6 = v5[1];
  v13[0] = *v5;
  v13[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B1DD878(v14, (v5 + 2));
  v14[3] = v5[5];
  while (1)
  {
    v7 = v15;
    if (v15 == v13[0])
    {
      sub_29B1DD9F0(v13);
      sub_29B1DD9F0(&v15);
      result = sub_29B1DD9F0(&v18);
      *a3 = 0;
      a3[1] = 0;
      return result;
    }

    v8 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D74B0(v7, &v11);
    sub_29AD9A124(v11, a2, a3);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    if (*a3)
    {
      break;
    }

    v9 = a3[1];
    if (v9)
    {
      sub_29A014BEC(v9);
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }

    sub_29B1F235C(&v15);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  sub_29B1DD9F0(v13);
  sub_29B1DD9F0(&v15);
  return sub_29B1DD9F0(&v18);
}

void sub_29B1EAAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29B1DD9F0(va);
  sub_29B1DD9F0(v16 - 80);
  _Unwind_Resume(a1);
}

void sub_29B1EAB28(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  sub_29B1DA308(a1, &v22);
  v25 = 0;
  v19 = v22;
  v20 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1DD878(v21, &v24);
  v21[3] = v25;
  v3 = sub_29B1F233C();
  v4 = v3[1];
  v17[0] = *v3;
  v17[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B1DD878(v18, (v3 + 2));
  v18[3] = v3[5];
  while (1)
  {
    v5 = v19;
    if (v19 == v17[0])
    {
      break;
    }

    v6 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D74B0(v5, &v14);
    v7 = v14;
    v10 = sub_29B1F31FC(v8, v9);
    sub_29AAD856C(v7, v10, v16);
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    v11 = v16[0];
    v12 = v16[1];
    while (v11 != v12)
    {
      if (*v11)
      {
        sub_29A095658(&v26, (*v11 + 48), *v11 + 48);
        if (v13)
        {
          sub_29A017F80(a2, v11);
        }
      }

      ++v11;
    }

    v14 = v16;
    sub_29A0176E4(&v14);
    if (v6)
    {
      sub_29A014BEC(v6);
    }

    sub_29B1F235C(&v19);
  }

  sub_29B1DD9F0(v17);
  sub_29B1DD9F0(&v19);
  sub_29B1DD9F0(&v22);
  sub_29A019EE8(&v26, v27[0]);
}

void sub_29B1EACD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  sub_29B1DD9F0(&a20);
  sub_29B1DD9F0(va);
  sub_29A019EE8(v25 - 88, *(v25 - 80));
  sub_29A0176E4(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_29B1EAD88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29B1DA308(a1, &v21);
  v24 = 0;
  v18 = v21;
  v19 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1DD878(v20, &v23);
  v20[3] = v24;
  v3 = sub_29B1F233C();
  v4 = v3[1];
  v16[0] = *v3;
  v16[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B1DD878(v17, (v3 + 2));
  v17[3] = v3[5];
  while (1)
  {
    v5 = v18;
    if (v18 == v16[0])
    {
      break;
    }

    v6 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D74B0(v5, &v12);
    v7 = v12;
    v10 = sub_29B1F31FC(v8, v9);
    sub_29B1DDC88(v7, v10, &v14);
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    sub_29B1EC8E8(a2, a2[1], v14, v15, (v15 - v14) >> 4);
    v12 = &v14;
    sub_29A0176E4(&v12);
    if (v6)
    {
      sub_29A014BEC(v6);
    }

    sub_29B1F235C(&v18);
  }

  sub_29B1DD9F0(v16);
  sub_29B1DD9F0(&v18);
  return sub_29B1DD9F0(&v21);
}

void sub_29B1EAEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  sub_29B1DD9F0(va);
  sub_29B1DD9F0(v20 - 96);
  sub_29A0176E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B1EAF90@<X0>(uint64_t a1@<X0>, void *a2@<X8>, uint64_t *a3@<X1>)
{
  sub_29B1DA308(a1, &v16);
  v19 = 0;
  v13 = v16;
  v14 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1DD878(v15, &v18);
  v15[3] = v19;
  v5 = sub_29B1F233C();
  v6 = v5[1];
  v11[0] = *v5;
  v11[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B1DD878(v12, (v5 + 2));
  v12[3] = v5[5];
  while (1)
  {
    v7 = v13;
    if (v13 == v11[0])
    {
      sub_29B1DD9F0(v11);
      sub_29B1DD9F0(&v13);
      result = sub_29B1DD9F0(&v16);
      *a2 = 0;
      a2[1] = 0;
      return result;
    }

    v8 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1EB144(v7, a3, a2);
    if (*a2)
    {
      break;
    }

    v9 = a2[1];
    if (v9)
    {
      sub_29A014BEC(v9);
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }

    sub_29B1F235C(&v13);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  sub_29B1DD9F0(v11);
  sub_29B1DD9F0(&v13);
  return sub_29B1DD9F0(&v16);
}

void sub_29B1EB0DC(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (a9)
  {
    sub_29A014BEC(a9);
  }

  sub_29B1DD9F0(va);
  sub_29B1DD9F0(v13 - 80);
  _Unwind_Resume(a1);
}

void sub_29B1EB144(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A8877BC((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  sub_29B1D76C0(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  sub_29A014BEC(v7);
}

void sub_29B1EB1C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1EB1E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  sub_29B1DA308(a1, &v19);
  v22 = 0;
  v16 = v19;
  v17 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1DD878(v18, &v21);
  v18[3] = v22;
  v3 = sub_29B1F233C();
  v4 = v3[1];
  v14[0] = *v3;
  v14[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = sub_29B1DD878(v15, (v3 + 2));
  v15[3] = v3[5];
  while (1)
  {
    v7 = v16;
    if (v16 == v14[0])
    {
      break;
    }

    v8 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_29B1F31FC(v5, v6);
    sub_29B1D2AF8(v7, v9, v13);
    v10 = v13[0];
    v11 = v13[1];
    while (v10 != v11)
    {
      if (*v10)
      {
        sub_29A095658(&v23, (*v10 + 48), *v10 + 48);
        if (v12)
        {
          sub_29A017F80(a2, v10);
        }
      }

      ++v10;
    }

    v25 = v13;
    sub_29A0176E4(&v25);
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    v5 = sub_29B1F235C(&v16);
  }

  sub_29B1DD9F0(v14);
  sub_29B1DD9F0(&v16);
  sub_29B1DD9F0(&v19);
  sub_29A019EE8(&v23, v24[0]);
}

void sub_29B1EB370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void **);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  sub_29B1DD9F0(va);
  sub_29B1DD9F0(va1);
  sub_29A019EE8(v18 - 96, *(v18 - 88));
  sub_29A0176E4(va);
  _Unwind_Resume(a1);
}

void sub_29B1EB414(uint64_t a1, int __val, int a3)
{
  std::to_string(&v12, __val);
  v5 = std::string::append(&v12, ".");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a3);
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

  v9 = std::string::append(&v13, p_p, size);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  sub_29AD96100(a1, &v14);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_29B1EB510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29B1EB570(uint64_t a1)
{
  v1 = sub_29AAC5BF8(a1);
  sub_29A008E78(__p, ".");
  sub_29B1F3590(v8, v1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = 0xAAAAAAAAAAAAAAABLL * ((v8[1] - v8[0]) >> 3);
  if (v2 == 1)
  {
    v3 = std::stoi(v8[0], 0, 10);
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  if (v2 != 2)
  {
    v3 = 0;
    goto LABEL_8;
  }

  v3 = std::stoi(v8[0], 0, 10);
  v4 = std::stoi(v8[0] + 1, 0, 10);
LABEL_9:
  __p[0] = v8;
  sub_29A012C90(__p);
  return v3 | (v4 << 32);
}

void sub_29B1EB6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29B1EB6C4(uint64_t a1, atomic_ullong **a2)
{
  v4 = a2[1];
  v14 = *a2;
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1D8CF4(a1, &v14);
  v6 = v15;
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  v7 = *a2;
  v8 = sub_29B1F31FC(v6, v5);
  result = sub_29AAC1EC0(v7, v8);
  if (result)
  {
    v11 = 256;
  }

  else
  {
    v12 = *a2;
    v13 = sub_29B1F31FC(result, v10);
    result = sub_29B1D18A4(v12, v13);
    if (!result)
    {
      return result;
    }

    v11 = 264;
  }

  ++*(a1 + v11);
  return result;
}

void sub_29B1EB770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1EB788(void *a1, uint64_t *a2)
{
  v4 = a2[1];
  v14 = *a2;
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1D8DAC(a1, &v14);
  v6 = v15;
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  v7 = *a2;
  v8 = sub_29B1F31FC(v6, v5);
  result = sub_29AAC1EC0(v7, v8);
  if (result)
  {
    v11 = 32;
  }

  else
  {
    v12 = *a2;
    v13 = sub_29B1F31FC(result, v10);
    result = sub_29B1D18A4(v12, v13);
    if (!result)
    {
      return result;
    }

    v11 = 33;
  }

  --a1[v11];
  return result;
}

void sub_29B1EB834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1EB854(uint64_t a1)
{
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  sub_29B1DA628(a1);
}

uint64_t sub_29B1EB85C(uint64_t a1, uint64_t *a2, std::string *a3)
{
  sub_29B1EA6E8(a1, &v27);
  v5 = v27;
  v6 = v28;
  if (v27 == v28)
  {
LABEL_23:
    v7 = 1;
  }

  else
  {
    while (1)
    {
      v8 = *v5;
      v7 = *(v5 + 8);
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      sub_29B1EA508(*a2, v8 + 6, &v25);
      if (!v25)
      {
        break;
      }

      v9 = (*(*v25 + 64))(v25);
      v10 = (*(*v8 + 64))(v8);
      v11 = *(v9 + 23);
      if (v11 >= 0)
      {
        v12 = *(v9 + 23);
      }

      else
      {
        v12 = *(v9 + 8);
      }

      v13 = *(v10 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v10 + 8);
      }

      if (v12 != v13)
      {
        break;
      }

      v15 = v11 >= 0 ? v9 : *v9;
      v16 = v14 >= 0 ? v10 : *v10;
      if (memcmp(v15, v16, v12))
      {
        break;
      }

      if (v26)
      {
        sub_29A014BEC(v26);
      }

      if (v7)
      {
        sub_29A014BEC(v7);
      }

      v5 += 16;
      if (v5 == v6)
      {
        goto LABEL_23;
      }
    }

    if (a3)
    {
      std::operator+<char>();
      v17 = std::string::append(&v22, "' doesn't match declaration");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v24 = v17->__r_.__value_.__r.__words[2];
      *__p = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      if (v24 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      if (v24 >= 0)
      {
        v20 = HIBYTE(v24);
      }

      else
      {
        v20 = __p[1];
      }

      std::string::append(a3, v19, v20);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }
    }

    if (v26)
    {
      sub_29A014BEC(v26);
    }

    if (v7)
    {
      sub_29A014BEC(v7);
      v7 = 0;
    }
  }

  __p[0] = &v27;
  sub_29A0176E4(__p);
  return v7;
}

void sub_29B1EBA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23, char a24)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a23)
  {
    sub_29A014BEC(a23);
  }

  if (v24)
  {
    sub_29A014BEC(v24);
  }

  __p = &a24;
  sub_29A0176E4(&__p);
  _Unwind_Resume(a1);
}

void sub_29B1EBAE0(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

void sub_29B1EBB0C(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

void sub_29B1EBB38(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

void sub_29B1EBB6C(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

char *sub_29B1EBB94(char *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  sub_29B1EBC10(__dst + 3, a3);
  return __dst;
}

void sub_29B1EBBF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29B1EBC10(uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29B1EBC68(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *sub_29B1EBC68(uint64_t *result, char *a2, char *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29B1EBCF0(v5, (v5 + 8), v4 + 25, v4 + 25);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t *sub_29B1EBCF0(uint64_t **a1, uint64_t *a2, char *a3, _BYTE *a4)
{
  v6 = sub_29B1EBD78(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x20uLL);
    *(v7 + 25) = *a4;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t *sub_29B1EBD78(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, char *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 25), v6 < v7))
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
    if (*(v10 + 25) < v15)
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
          v18 = *(v16 + 25);
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

  if (a4 != v5 && v6 >= *(a4 + 25))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 25);
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

uint64_t *sub_29B1EBF20(uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29B1DD8D0(a1, *a2, (a2 + 8));
  return a1;
}

BOOL sub_29B1EBF78(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v4 = *(a2 + 56);
  if (v2 - v3 != *(a2 + 64) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4 || *(v3 + 2) != v4[2])
    {
      return 0;
    }

    v3 += 24;
    v4 += 3;
  }

  return *(a1 + 80) == *(a2 + 80);
}

uint64_t sub_29B1EBFEC(uint64_t a1)
{
  v5 = (a1 + 56);
  sub_29A03CE34(&v5);
  sub_29A42FCE0(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  return a1;
}

uint64_t sub_29B1EC04C(uint64_t a1, char *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v5 = a3;
    do
    {
      sub_29B1EBCF0(a1, v4, a2, a2);
      ++a2;
      --v5;
    }

    while (v5);
  }

  return a1;
}

uint64_t sub_29B1EC0CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      sub_29B1EC148(a1, a2, a2);
      a2 += 6;
      v5 -= 48;
    }

    while (v5);
  }

  return a1;
}

const void **sub_29B1EC148(uint64_t a1, uint64_t *a2, __int128 *a3)
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

  sub_29B1EC39C(a1, v8, v26, a3);
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

void sub_29B1EC384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B1EC484(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B1EC39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, __int128 *a4@<X2>)
{
  v8 = operator new(0x40uLL);
  *a3 = v8;
  a3[1] = a1;
  a3[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29B1EC40C(v8 + 2, a4);
  *(a3 + 16) = 1;
  return result;
}

void *sub_29B1EC40C(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_29B1EBC10(__dst + 3, a2 + 24);
  return __dst;
}

void sub_29B1EC468(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1EC484(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A0F2190(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t sub_29B1EC4E0(uint64_t a1)
{
  sub_29B1EC51C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29B1EC51C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A0F2190((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29B1EC560(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      sub_29B1EC5D8(a1, a2, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

const void **sub_29B1EC5D8(uint64_t a1, uint64_t *a2, uint64_t a3)
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

  sub_29B1EC838(a1, v8, a3, v26);
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

void sub_29B1EC814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1EC838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  if (*(a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *a3, *(a3 + 8));
  }

  else
  {
    *(result + 1) = *a3;
    result[4] = *(a3 + 16);
  }

  v9[5] = *(a3 + 24);
  *(a4 + 16) = 1;
  return result;
}

void sub_29B1EC8CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A0EC874(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_29B1EC8E8(void *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v18 = v10 - a2;
      v19 = (v10 - a2) >> 4;
      if (v19 >= a5)
      {
        sub_29A1D5390(a1, a2, a1[1], &a2[2 * a5]);
        v20 = &v7[2 * a5];
      }

      else
      {
        a1[1] = sub_29B1ECACC(a1, (a3 + v18), a4, a1[1]);
        if (v19 < 1)
        {
          return v5;
        }

        sub_29A1D5390(a1, v5, v10, &v5[2 * a5]);
        v20 = (v7 + v18);
      }

      sub_29A4274B8(v32, v7, v20, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    v34 = a1;
    if (v15)
    {
      v17 = sub_29A017BD4(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[16 * v16];
    v33 = &v17[16 * v15];
    v22 = &v21[2 * a5];
    v23 = v21;
    do
    {
      *v23 = *v7;
      v24 = v7[1];
      v23[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v23 += 2;
      v7 += 2;
    }

    while (v23 != v22);
    memcpy(v22, v5, a1[1] - v5);
    v25 = *a1;
    v26 = v22 + a1[1] - v5;
    a1[1] = v5;
    v27 = v5 - v25;
    v28 = v21 - (v5 - v25);
    memcpy(v28, v25, v27);
    v29 = *a1;
    *a1 = v28;
    a1[1] = v26;
    v30 = a1[2];
    a1[2] = v33;
    v32[2] = v29;
    v33 = v30;
    v32[0] = v29;
    v32[1] = v29;
    sub_29A017C0C(v32);
    return v21;
  }

  return v5;
}

void *sub_29B1ECACC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29B1ECB54(v7);
  return v4;
}

uint64_t sub_29B1ECB54(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

void sub_29B1ECB8C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v101[0] = 0;
  v101[1] = 0;
  v100 = v101;
  sub_29B1EA6E8(*a1, &v98);
  v5 = v98;
  v6 = v99;
  if (v98 == v99)
  {
    goto LABEL_76;
  }

  do
  {
    v8 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v8 + 80))(&v93, v8);
    if (!v93)
    {
LABEL_32:
      if (!sub_29B1E8A48(v8))
      {
        goto LABEL_70;
      }

      v20 = *a1;
      v21 = *(*a1 + 232);
      if (v21)
      {
        v22 = std::__shared_weak_count::lock(v21);
        if (v22)
        {
          v23 = *(v20 + 224);
LABEL_38:
          v24 = sub_29B1E8BF0(v8);
          sub_29AADEFE4(v23, v24, &v97);
          if (v97)
          {
            v85 = 0uLL;
            v86 = 0;
            v25 = sub_29B1D23C8(v8);
            if (v25)
            {
              v27 = v97;
              v28 = sub_29B1D2448(v8);
              sub_29AD9A124(v27, v28, &v78);
              sub_29A01729C(&v85, &v78);
              if (*(&v78 + 1))
              {
                sub_29A014BEC(*(&v78 + 1));
              }
            }

            else
            {
              v29 = v97;
              v30 = sub_29B1F31FC(v25, v26);
              sub_29AAD856C(v29, v30, &v78);
              sub_29A03AF64(&v85);
              v85 = v78;
              v86 = v79;
              v79 = 0;
              v78 = 0uLL;
              *&v96 = &v78;
              sub_29A0176E4(&v96);
            }

            v31 = *(&v85 + 1);
            for (i = v85; i != v31; i += 2)
            {
              v33 = *i;
              v34 = i[1];
              if (v34)
              {
                atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              (*(*v33 + 80))(&v78);
              if (v78)
              {
                for (j = v101[0]; j; j = *j)
                {
                  v36 = j[4];
                  if (v78 >= v36)
                  {
                    if (v36 >= v78)
                    {
                      goto LABEL_60;
                    }

                    ++j;
                  }
                }

                v37 = *(a3 + 23);
                if ((v37 & 0x80u) != 0)
                {
                  v37 = *(a3 + 8);
                }

                if (!v37)
                {
                  goto LABEL_59;
                }

                sub_29B1ED628(v78, a3, 0, &v96);
                v38 = v96;
                if (*(&v96 + 1))
                {
                  sub_29A014BEC(*(&v96 + 1));
                }

                if (v38)
                {
LABEL_59:
                  sub_29A017F80(a4, &v78);
                  sub_29A42F734(&v100, &v78, &v78);
                }
              }

LABEL_60:
              if (*(&v78 + 1))
              {
                sub_29A014BEC(*(&v78 + 1));
              }

              if (v34)
              {
                sub_29A014BEC(v34);
              }
            }

            *&v78 = &v85;
            sub_29A0176E4(&v78);
          }

          if (*(&v97 + 1))
          {
            sub_29A014BEC(*(&v97 + 1));
          }

          if (v22)
          {
            sub_29A014BEC(v22);
          }

          goto LABEL_70;
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = 0;
      goto LABEL_38;
    }

    for (k = v101[0]; k; k = *k)
    {
      v10 = k[4];
      if (v93 >= v10)
      {
        if (v10 >= v93)
        {
          goto LABEL_32;
        }

        ++k;
      }
    }

    v11 = *(a2 + 23);
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a2 + 8);
    }

    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = (*(*v93 + 64))(v93);
    v13 = *(v12 + 23);
    if (v13 >= 0)
    {
      v14 = *(v12 + 23);
    }

    else
    {
      v14 = v12[1];
    }

    v15 = *(a2 + 23);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a2 + 8);
    }

    if (v14 == v15)
    {
      if (v13 < 0)
      {
        v12 = *v12;
      }

      v17 = v16 >= 0 ? a2 : *a2;
      if (!memcmp(v12, v17, v14))
      {
LABEL_25:
        v18 = *(a3 + 23);
        if ((v18 & 0x80u) != 0)
        {
          v18 = *(a3 + 8);
        }

        if (!v18)
        {
          goto LABEL_31;
        }

        sub_29B1ED628(v93, a3, 0, &v85);
        v19 = v85;
        if (*(&v85 + 1))
        {
          sub_29A014BEC(*(&v85 + 1));
        }

        if (v19)
        {
LABEL_31:
          sub_29A017F80(a4, &v93);
          sub_29A42F734(&v100, &v93, &v93);
        }
      }
    }

LABEL_70:
    if (*(&v93 + 1))
    {
      sub_29A014BEC(*(&v93 + 1));
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }

    v5 += 2;
  }

  while (v5 != v6);
  if (v98 != v99)
  {
    goto LABEL_143;
  }

LABEL_76:
  sub_29B1ED628(*a1, a3, 0, &v97);
  v41 = v97;
  if (!v97)
  {
    goto LABEL_141;
  }

  v42 = sub_29B1F31FC(v39, v40);
  sub_29B1C5CA8(v41, v42, &v96);
  v45 = v96;
  if (!v96)
  {
    goto LABEL_139;
  }

  v46 = sub_29B1F31FC(v43, v44);
  if (!sub_29AAC05D4(v45, v46))
  {
    goto LABEL_139;
  }

  sub_29B1D7FB0(v96, &v94);
  v47 = v97;
  v50 = sub_29B1F31FC(v48, v49);
  sub_29AAD856C(v47, v50, &v93);
  v51 = *(&v93 + 1);
  v52 = v93;
  if (v93 == *(&v93 + 1))
  {
    goto LABEL_137;
  }

  while (2)
  {
    v54 = *v52;
    v53 = *(v52 + 8);
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v55 = (*(*v54 + 64))(v54);
    v56 = strlen(off_2A14FDF10[0]);
    v57 = *(v55 + 23);
    if (v57 < 0)
    {
      if (v56 != v55[1])
      {
        goto LABEL_134;
      }

      if (v56 == -1)
      {
        sub_29A0F26CC();
      }

      v55 = *v55;
    }

    else if (v56 != v57)
    {
      goto LABEL_134;
    }

    if (memcmp(v55, off_2A14FDF10[0], v56))
    {
      goto LABEL_134;
    }

    sub_29AD9A124(v94, v54 + 6, &v91);
    sub_29B1DA55C(v91, &v78);
    if (v82 == v83)
    {
      sub_29B1F1C6C(&v78);
    }

    *(&v84 + 1) = 0;
    v85 = v78;
    if (*(&v78 + 1))
    {
      atomic_fetch_add_explicit((*(&v78 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v86 = v79;
    v87 = v80;
    if (v80)
    {
      atomic_fetch_add_explicit((v80 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29B1EBF20(v88, &v81);
    memset(v89, 0, sizeof(v89));
    sub_29B1D3464(v89, v82, v83, 0xAAAAAAAAAAAAAAABLL * (v83 - v82));
    v90 = v84;
    sub_29B1EBFEC(&v78);
    while (2)
    {
      v58 = sub_29B1F1C4C();
      if (!sub_29B1EBF78(&v85, v58))
      {
        v59 = v85;
        if (*(&v85 + 1))
        {
          atomic_fetch_add_explicit((*(&v85 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        if (v59)
        {
          sub_29B1D7E50(v59, &v76);
          if (v76)
          {
            v60 = (*(*v76 + 64))(v76);
            v61 = strlen(off_2A14FDF10[0]);
            v62 = *(v60 + 23);
            if (v62 < 0)
            {
              if (v61 == v60[1])
              {
                if (v61 == -1)
                {
                  sub_29A0F26CC();
                }

                v60 = *v60;
                goto LABEL_108;
              }
            }

            else
            {
              if (v61 != v62)
              {
                goto LABEL_127;
              }

LABEL_108:
              if (!memcmp(v60, off_2A14FDF10[0], v61))
              {
                v63 = v77;
                v75[0] = v76;
                v75[1] = v77;
                if (v77)
                {
                  atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                sub_29B1ECB8C(v75, a2, a3, &v78);
                v64 = v51;
                if (v63)
                {
                  sub_29A014BEC(v63);
                }

                v66 = *(&v78 + 1);
                for (m = v78; m != v66; m += 2)
                {
                  v67 = *m;
                  v68 = m[1];
                  *&v74 = *m;
                  *(&v74 + 1) = v68;
                  if (v68)
                  {
                    atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
                  }

                  for (n = v101[0]; n; n = *n)
                  {
                    v70 = n[4];
                    if (v67 >= v70)
                    {
                      if (v70 >= v67)
                      {
                        goto LABEL_123;
                      }

                      ++n;
                    }
                  }

                  sub_29A017F80(a4, &v74);
                  sub_29A42F734(&v100, &v74, &v74);
LABEL_123:
                  if (*(&v74 + 1))
                  {
                    sub_29A014BEC(*(&v74 + 1));
                  }
                }

                *&v74 = &v78;
                sub_29A0176E4(&v74);
                v51 = v64;
              }
            }
          }

LABEL_127:
          if (v77)
          {
            sub_29A014BEC(v77);
          }
        }

        else
        {
          LOBYTE(v90) = 1;
        }

        if (*(&v59 + 1))
        {
          sub_29A014BEC(*(&v59 + 1));
        }

        sub_29B1F1C6C(&v85);
        continue;
      }

      break;
    }

    sub_29B1EBFEC(&v85);
    if (v92)
    {
      sub_29A014BEC(v92);
    }

LABEL_134:
    if (v53)
    {
      sub_29A014BEC(v53);
    }

    v52 += 16;
    if (v52 != v51)
    {
      continue;
    }

    break;
  }

LABEL_137:
  *&v85 = &v93;
  sub_29A0176E4(&v85);
  if (v95)
  {
    sub_29A014BEC(v95);
  }

LABEL_139:
  if (*(&v96 + 1))
  {
    sub_29A014BEC(*(&v96 + 1));
  }

LABEL_141:
  if (*(&v97 + 1))
  {
    sub_29A014BEC(*(&v97 + 1));
  }

LABEL_143:
  *&v85 = &v98;
  sub_29A0176E4(&v85);
  sub_29A42FCE0(&v100, v101[0]);
}

void sub_29B1ED384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31)
{
  v33 = *(v31 - 160);
  if (v33)
  {
    sub_29A014BEC(v33);
  }

  v34 = *(v31 - 144);
  if (v34)
  {
    sub_29A014BEC(v34);
  }

  a31 = (v31 - 136);
  sub_29A0176E4(&a31);
  sub_29A42FCE0(v31 - 112, *(v31 - 104));
  a31 = a12;
  sub_29A0176E4(&a31);
  _Unwind_Resume(a1);
}