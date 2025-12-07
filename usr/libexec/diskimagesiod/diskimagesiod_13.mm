void sub_100128288(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 952));
  sub_10004EDC8((a1 + 928), &v3);
  std::condition_variable::notify_all((a1 + 1016));
  std::mutex::unlock((a1 + 952));
}

uint64_t sub_10012835C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002180A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100128394(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001283E0(uint64_t a1, unint64_t a2, atomic_ullong *a3)
{
  v3 = *(a1 + 632);
  if (v3 >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 760);
    v8 = &v7[v3];
    while (!v7 || *v7 != a2)
    {
      ++v7;
      v6 -= 8;
      if (v7 >= v8)
      {
        return;
      }
    }

    if (v6 <= 0)
    {
      v9 = a2;
      atomic_compare_exchange_strong(v7, &v9, 0);
      if (v9 == a2)
      {
        sub_100122760(a1, a2, 1uLL, a3);

        sub_100126180(a1, a2);
      }
    }
  }
}

void sub_10012848C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100128838(a1);
  *(v8 + 456) = a2;
  *(v8 + 464) = a3;
  *(v8 + 472) = 0u;
  *(v8 + 488) = 0u;
  *(v8 + 504) = 0u;
  *(v8 + 520) = 850045863;
  *(v8 + 528) = 0u;
  *(v8 + 544) = 0u;
  *(v8 + 560) = 0u;
  *(v8 + 576) = 0;
  *(v8 + 592) = 0u;
  *(v8 + 608) = 0u;
  *(v8 + 624) = 850045863;
  *(v8 + 632) = 0u;
  *(v8 + 648) = 0u;
  *(v8 + 664) = 0u;
  *(v8 + 680) = 0;
  *(v8 + 688) = 1018212795;
  *(v8 + 728) = 0;
  *(v8 + 696) = 0u;
  *(v8 + 712) = 0u;
  *(v8 + 736) = 1;
  sub_10014FE40((v8 + 744), "dealloc_queue", 2);
  *(a1 + 760) = 0u;
  *(a1 + 752) = a1 + 760;
  *(a1 + 776) = 850045863;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0;
  *(a1 + 840) = 1018212795;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0;
  *(a1 + 888) = 850045863;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0;
  *(a1 + 952) = a1 + 952;
  *(a1 + 960) = a1 + 952;
  *(a1 + 968) = 0;
  sub_100128D98(a1 + 976, a4);
  sub_100128E30(a1 + 1008, a1);
  *(a1 + 1384) = off_1002183E8;
  *(a1 + 1392) = a1;
  *(a1 + 1408) = a1 + 1384;
  *(a1 + 1416) = off_100218478;
  *(a1 + 1424) = a1;
  *(a1 + 1440) = a1 + 1416;
  operator new[]();
}

void sub_1001286B4(_Unwind_Exception *a1)
{
  sub_1001224C0(v1 + 976);
  sub_1001232A4(v3);
  std::mutex::~mutex((v1 + 888));
  std::condition_variable::~condition_variable((v1 + 840));
  std::mutex::~mutex((v1 + 776));
  sub_1000285E0(v1 + 752, *v4);
  sub_10014FD8C((v1 + 744));
  std::condition_variable::~condition_variable((v1 + 688));
  std::mutex::~mutex((v1 + 624));
  std::mutex::~mutex((v1 + 520));
  sub_100072AB4(v2);
  sub_1001238C4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100128778(unint64_t *a1, void *a2)
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
    sub_100120320(a1);
    v7 = a1[4];
    v8 = a1[5];
    v5 = a1[1];
    v9 = v7 + v8;
  }

  *(*(v5 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  a1[5] = v8 + 1;
  v10 = v7 + v8 + 1;
  v11 = a1[1];
  v12 = (v11 + 8 * (v10 >> 9));
  v13 = *v12 + 8 * (v10 & 0x1FF);
  if (a1[2] == v11)
  {
    v13 = 0;
  }

  if (v13 == *v12)
  {
    v13 = *(v12 - 1) + 4096;
  }

  return v13 - 8;
}

uint64_t sub_100128838(uint64_t a1)
{
  *a1 = off_100218138;
  *(a1 + 24) = a1;
  *(a1 + 32) = off_1002181C8;
  *(a1 + 56) = a1 + 32;
  *(a1 + 64) = off_100218258;
  *(a1 + 88) = a1 + 64;
  *(a1 + 96) = 0;
  sub_100128BAC(a1 + 104, a1, a1 + 32, a1 + 64, a1 + 96);
  sub_100120FF4(a1 + 104, -1);
  atomic_store(0, (a1 + 128));
  *(a1 + 448) = 1;
  return a1;
}

void sub_1001288FC(_Unwind_Exception *a1)
{
  sub_1001224C0(v3);
  sub_100123658(v2);
  sub_1001236D8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001289AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100128A84(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100128B60(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100128BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 224) = 0;
  sub_100128C68(a1 + 232, a2);
  sub_100128D00(a1 + 264, a3);
  sub_100128D98(a1 + 296, a4);
  *(a1 + 328) = a5;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  return a1;
}

void sub_100128C34(_Unwind_Exception *a1)
{
  sub_100123658(v1 + 264);
  sub_1001236D8(v1 + 232);
  sub_100123758(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100128C68(uint64_t a1, uint64_t a2)
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

uint64_t sub_100128D00(uint64_t a1, uint64_t a2)
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

uint64_t sub_100128D98(uint64_t a1, uint64_t a2)
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

uint64_t sub_100128E30(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  v5[0] = off_1002182E8;
  v5[1] = a1;
  v5[3] = v5;
  v4[0] = off_100218368;
  v4[1] = a1;
  v4[3] = v4;
  sub_100128BAC(a1 + 8, v5, v4, a2 + 976, a2 + 600);
  sub_100123658(v4);
  sub_1001236D8(v5);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  return a1;
}

void sub_100128F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_100123658(va);
  sub_1001236D8(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100128F94(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002182E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100128FD8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100129024(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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

uint64_t sub_1001290F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100218368;
  a2[1] = v2;
  return result;
}

uint64_t sub_100129130(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012917C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10001583C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100129240(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002183E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100129280(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001292CC(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  if ((*(a2 + 368) & 1) == 0)
  {
    if ((a4 & 3) == 1)
    {
      std::mutex::lock((a1 + 888));
      operator new();
    }

    sub_10012947C(a1, a3);
    sub_1000F0B1C((a2 + 360));
    if ((atomic_fetch_or((a2 + 368), 1u) & 2) == 0)
    {
      sub_10012023C(a1, a2);
    }

    if (atomic_fetch_add((a1 + 608), 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      if (atomic_load((a1 + 616)))
      {
        std::mutex::lock((a1 + 624));
        if (atomic_load((a1 + 616)))
        {
          std::condition_variable::notify_all((a1 + 688));
        }

        std::mutex::unlock((a1 + 624));
      }
    }

    v8 = (a1 + 592);
    if (atomic_load(v8))
    {
      v10 = sub_100192398(a2);
      std::mutex::lock(v10);
      if (atomic_load(v8))
      {
        v12 = sub_100192424(a2);
        std::condition_variable::notify_all(v12);
      }

      std::mutex::unlock(v10);
    }
  }
}

void sub_10012947C(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 776));
  sub_10004EDC8((a1 + 752), &v3);
  std::condition_variable::notify_all((a1 + 840));
  std::mutex::unlock((a1 + 776));
}

uint64_t sub_100129550(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100218478;
  a2[1] = v2;
  return result;
}

uint64_t sub_100129588(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001295D4(uint64_t a1, unint64_t a2, atomic_ullong *a3)
{
  v3 = *(a1 + 456);
  if (v3 >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 584);
    v8 = &v7[v3];
    while (!v7 || *v7 != a2)
    {
      ++v7;
      v6 -= 8;
      if (v7 >= v8)
      {
        return;
      }
    }

    if (v6 <= 0)
    {
      v9 = a2;
      atomic_compare_exchange_strong(v7, &v9, 0);
      if (v9 == a2)
      {
        sub_100120964(a1, a2, 1uLL, a3);

        sub_10012023C(a1, a2);
      }
    }
  }
}

uint64_t sub_1001296F0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100218508;
  a2[1] = v2;
  return result;
}

uint64_t sub_100129724(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_100218568))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100129770(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v9[0] = off_1002117E8;
  v9[1] = v4;
  (*(**(v4 + 16) + 80))(&v10);
  if (*(a2 + 113) == 1)
  {
    sub_1000F4388(v3, v9, *(a2 + 8) / *(v3 + 88), 0, 0, &v8);
  }

  else
  {
    v8 = 0;
  }

  if (v8 && (*(v8 + 520) & 1) == 0)
  {
    if (*(v8 + 400))
    {
      v5 = v8 + 40;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000FC424(a2, v9, v5, *(v3 + 28));
  sub_1000EFD00(&v8);
  v9[0] = off_1002117E8;
  if (v11)
  {
    sub_10000E984(v11);
  }

  return v6;
}

void sub_10012988C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000E984(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001298C0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100129958(uint64_t a1)
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

uint64_t sub_1001299D8(std::__thread_struct **a1)
{
  v6 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v6[1];
  sub_1001298C0(v7, (v6 + 2));
  sub_1000F3A80(v4, v7);
  sub_100129958(v7);
  sub_100129A9C(&v6);
  return 0;
}

void sub_100129A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100129958(va);
  sub_100129A9C(&a9);
  _Unwind_Resume(a1);
}

std::__thread_struct ***sub_100129A9C(std::__thread_struct ***a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100129958((v1 + 2));
    sub_100129AF0(v1);
    operator delete();
  }

  return a1;
}

std::__thread_struct **sub_100129AF0(std::__thread_struct **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__thread_struct::~__thread_struct(v2);
    operator delete();
  }

  return a1;
}

void *sub_100129B38(void *a1, uint64_t a2)
{
  sub_1000A5780((a1 + 2), a2);
  *a1 = off_100218628;
  a1[2] = off_100218690;
  a1[1] = off_100218650;
  return a1;
}

std::exception *sub_100129BBC(std::exception *a1)
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

void sub_100129C38(std::exception *a1)
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

void sub_100129CD4(std::exception *a1)
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

void sub_100129D58(std::exception *a1)
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

void sub_100129DF8(void *a1)
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

void sub_100129E90(void *a1)
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

std::exception *sub_100129F40(std::exception *a1)
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
  return a1;
}

_WORD *sub_100129FBC(_WORD *result, int a2)
{
  *result = 0;
  if (a2)
  {
    v2 = a2;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = "total_segments_t";
    exception[2] = "invalid value";
    exception[3] = "value validator";
    *exception = &off_10020AFD0;
    *(exception + 16) = v2;
  }

  return result;
}

void sub_10012A040(std::exception *a1)
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

void sub_10012A0DC(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 1;
  v1[1].__vftable = off_1002084E0;
  v3 = v1[5].__vftable;
  v1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10012A174(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[1].__vftable = off_1002084E0;
  v2 = v1[5].__vftable;
  v1[5].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 1);

  operator delete();
}

uint64_t sub_10012A224(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100216298;
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

void sub_10012A2D4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_10012A2EC(void *a1, uint64_t a2)
{
  sub_1000A5780((a1 + 2), a2);
  *a1 = off_100218848;
  a1[2] = off_1002188B0;
  a1[1] = off_100218870;
  return a1;
}

std::exception *sub_10012A370(std::exception *a1)
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

void sub_10012A3EC(std::exception *a1)
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

void sub_10012A488(std::exception *a1)
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

void sub_10012A50C(std::exception *a1)
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

void sub_10012A5AC(void *a1)
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

void sub_10012A644(void *a1)
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

uint64_t sub_10012A6F4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002166D8;
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

void sub_10012A7A4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012A7BC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002164B8;
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

void sub_10012A86C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012A884(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100216B18;
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

void sub_10012A934(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012A94C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002168F8;
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

void sub_10012A9FC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_10012AA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a3;
  v20[1] = a4;
  v5 = *(*(a1 + 8) + 16);
  result = sub_1000F1CD0(a1, a2, v18);
  v16 = 0u;
  v17 = 0u;
  while (v18[0] != v19[3] || v18[1] != v19[4])
  {
    v11[0] = (*(*(v19[0] + 56) + 16 * v19[1] + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v19[0] + 8) + 28);
    if (v11[0])
    {
      sub_10012ABC8(v20, v11);
    }

    sub_1000F54C0(a1, v19, v11);
    while (v11[0] != v14 || v11[1] != v15)
    {
      v10 = (*(*(v12 + 56) + 16 * v13 + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v12 + 8) + 28);
      if (v10)
      {
        sub_10012ABC8(v20, &v10);
      }

      if (*(v5 + 160) == 1)
      {
        v7 = atomic_load((*(v12 + 56) + 16 * v13 + 8));
        v8 = v7 >> 62;
        if ((v7 >> 62) > 1)
        {
          v9 = &v17;
          if (v8 != 2)
          {
            v9 = &v17 + 8;
          }
        }

        else if (v8)
        {
          v9 = &v16 + 8;
        }

        else
        {
          v9 = &v16;
        }

        ++*v9;
      }

      sub_1000F1488(v11);
    }

    result = sub_1000F1360(v18);
  }

  if (*(v5 + 160) == 1)
  {
    return sub_10012AC34(v5, &v16);
  }

  return result;
}

uint64_t sub_10012ABC8(uint64_t a1, unint64_t *a2)
{
  v3 = sub_100124D90(*a1, *(a1 + 8), a2, a2);
  *(a1 + 8) = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *(a1 + 8) = v5;
  return a1;
}

atomic_ullong *sub_10012AC34(atomic_ullong *result, unint64_t *a2)
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
  atomic_fetch_add_explicit(result + 11, *a2, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 12, v6, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 13, v7, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 14, v8, memory_order_relaxed);
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

void sub_10012AD04(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  v4 = a2[1];
  v5 = *(a3 + 1);
  if (v4 != v5)
  {
    v10 = *a2;
    v11 = a2[2];
    v12 = v4 + 1;
    if (v4 + 1 != v5)
    {
      v13 = v10 + v11 * v12;
      v14 = a2[1];
      do
      {
        if (v10 + v14 * v11 < v13)
        {
          v4 = v12;
          v14 = v12;
        }

        ++v12;
        v13 += v11;
      }

      while (v5 != v12);
    }

    std::mutex::lock((a1 + 8));
    v18 = *a2;
    v19 = a2[2];
    v16 = *a3;
    v17 = *(a3 + 2);
    sub_10012AE18((a1 + 72), &v18, &v16);
    v15 = v10 + v4 * v11;
    if (v15 >= *(a1 + 96))
    {
      *(a1 + 96) = *a1 + v15;
    }

    sub_100100A70(a1, a4);
    std::mutex::unlock((a1 + 8));
  }
}

uint64_t **sub_10012AE18(uint64_t **result, void *a2, uint64_t a3)
{
  v5 = a2[1];
  if (v5 != *(a3 + 8))
  {
    v9[5] = v3;
    v9[6] = v4;
    v8 = result;
    do
    {
      v9[0] = *a2 + a2[2] * v5;
      result = sub_100124D90(v8, v8 + 1, v9, v9);
      v5 = a2[1] + 1;
      a2[1] = v5;
    }

    while (v5 != *(a3 + 8));
  }

  return result;
}

void sub_10012AEA8(uint64_t ***a1)
{
  v1 = ***a1;
  sub_100150558((v1 + 56), (v1 + 48));
  sub_100150548(v1 + 56);

  sub_100150564(v1 + 56);
}

void *sub_10012AEF8(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *sub_100081364(a1, &v7, a2);
  if (!v5)
  {
    sub_10012AFA0();
  }

  return v5;
}

char **sub_10012B048(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10012B094(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_10012B094(uint64_t a1)
{
  sub_10012B0E4(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_10012B0E4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_1002188D8[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void sub_10012B13C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_10012B154(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 24))
  {
    v4[0] = a1;
    v4[1] = __str;
    sub_10012B19C(v4);
  }

  else
  {

    std::string::operator=(this, __str);
  }
}

__n128 sub_10012B19C(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*(v1 + 23) < 0)
  {
    sub_100050108(&v5, *v1, *(v1 + 8));
  }

  else
  {
    v3 = *v1;
    v6 = *(v1 + 16);
    v5 = v3;
  }

  sub_10012B0E4(v2);
  result = v5;
  v2[1].n128_u64[0] = v6;
  *v2 = result;
  v2[1].n128_u32[2] = 0;
  return result;
}

void sub_10012B208(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10012B208(a1, *a2);
    sub_10012B208(a1, a2[1]);
    sub_10012B094((a2 + 4));

    operator delete(a2);
  }
}

void sub_10012B264(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10012B39C(*a3);
  v4 = *a3;
  sub_100010B0C(__p, "telemetryIndex");
  v5 = v4[1];
  v6 = *(*v4 + 24);
  v17 = __p;
  v7 = sub_10012AEF8(v5, __p, &unk_1001C053C, &v17, &v16);
  v8 = v7;
  if (*(v7 + 20) != 1)
  {
    sub_10012B0E4((v7 + 7));
    *(v8 + 20) = 1;
  }

  v8[7] = v6;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *a3;
  sub_100010B0C(__p, "numChuncksDefraged");
  v10 = v9[1];
  v11 = *(*v9 + 32);
  v17 = __p;
  v12 = sub_10012AEF8(v10, __p, &unk_1001C053C, &v17, &v16);
  v13 = v12;
  if (*(v12 + 20) != 1)
  {
    sub_10012B0E4((v12 + 7));
    *(v13 + 20) = 1;
  }

  v13[7] = v11;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10012B37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012B39C(void *a1)
{
  sub_100010B0C(v7, "telemetryID");
  v2 = *a1;
  if (*(*a1 + 23) < 0)
  {
    sub_100050108(&__p, *v2, *(v2 + 1));
  }

  else
  {
    v3 = *v2;
    __p.__r_.__value_.__r.__words[2] = *(v2 + 2);
    *&__p.__r_.__value_.__l.__data_ = v3;
  }

  v4 = a1[1];
  v10 = v7;
  v5 = sub_10012AEF8(v4, v7, &unk_1001C053C, &v10, &v9);
  sub_10012B154((v5 + 7), (v5 + 7), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_10012B458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012B48C(uint64_t ***a1)
{
  v1 = **a1;
  v2 = *v1;
  result = (*(**v1[2] + 184))(*v1[2]);
  if (*(v2 + 44) != 1)
  {
    *(v2 + 64) = sub_100195AE4();
    *(v2 + 72) = v4;
    sub_100101968(v2 + 32, *(v2 + 16));
  }

  return result;
}

uint64_t sub_10012B508(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100217068;
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

void sub_10012B5B8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012B5D0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100217288;
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

void sub_10012B680(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012B698(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002174A8;
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

void sub_10012B748(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012B760(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002176C8;
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

void sub_10012B810(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012B828(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002178E8;
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

void sub_10012B8D8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10012C048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10)
{
  sub_10000E950(&a9);
  v13 = a10;
  a10 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  sub_10000E950((v11 - 40));
  _Unwind_Resume(a1);
}

const void **sub_10012C120@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_100026B3C(a1 + *(*a1 - 112), &v6);
  v7 = @"Encryption Info";
  v8 = v6;
  v6 = 0;
  sub_10000E950(&v6);
  v4[0] = &v7;
  v4[1] = 1;
  sub_100145408(v4, &v5);
  *a2 = v5;
  v5 = 0;
  sub_100028D2C(&v5);
  return sub_100028CF8(&v8);
}

uint64_t sub_10012C200(uint64_t a1)
{
  *(a1 + 56) = off_100219030;
  *(a1 + 24) = off_100219088;
  sub_1000283C8((a1 + 88));
  return a1;
}

void sub_10012C344(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10012C3F0(uint64_t a1)
{
  *(a1 + 56) = off_100219030;
  *(a1 + 24) = off_100219088;
  sub_1000283C8((a1 + 88));

  operator delete();
}

const void **sub_10012C488(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  return sub_1000283C8(v1 + 11);
}

void sub_10012C4E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  sub_1000283C8(v1 + 11);

  operator delete();
}

const void **sub_10012C588(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  return sub_1000283C8(v1 + 11);
}

void sub_10012C5E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  sub_1000283C8(v1 + 11);

  operator delete();
}

const void **sub_10012C688(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  return sub_1000283C8(v1 + 11);
}

void sub_10012C6E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  sub_1000283C8(v1 + 11);

  operator delete();
}

const void **sub_10012C788(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  return sub_1000283C8(v1 + 11);
}

void sub_10012C7E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  sub_1000283C8(v1 + 11);

  operator delete();
}

const void **sub_10012C888(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  return sub_1000283C8(v1 + 11);
}

void sub_10012C8E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  sub_1000283C8(v1 + 11);

  operator delete();
}

const void **sub_10012C988(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  return sub_1000283C8(v1 + 11);
}

void sub_10012C9E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  sub_1000283C8(v1 + 11);

  operator delete();
}

const void **sub_10012CA88(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  return sub_1000283C8(v1 + 11);
}

void sub_10012CAE8(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  sub_1000283C8(v1 + 11);

  operator delete();
}

AAByteStream *sub_10012CBB0@<X0>(void *a1@<X0>, AEAAuthData *a2@<X8>)
{
  v3 = (*(**a1 + 192))(*a1);
  if (v3 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = sub_100001940(exception, "AEAHelper: Invalid file descriptor.", 0x16u);
  }

  v7 = AAFileStreamOpenWithFD(v3, 0);
  sub_100132BB4(&v8, &v7);
  sub_100132C94(&v7, &v8);
  sub_100132F50(a2, &v7);
  sub_100132C98(&v7);
  return sub_100132BB8(&v8);
}

void sub_10012CC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100132C98(&a9);
  sub_100132BB8(va);
  _Unwind_Resume(a1);
}

void sub_10012D090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10012DA8C(v40);
  if (a33 == 1 && a32 < 0)
  {
    operator delete(a27);
  }

  if (a34)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10012D158(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v5);
    sub_100001FE8(v5, "Not allowed more than one instance of ", 38);
    v4 = strlen((0x80000001001C57AFLL & 0x7FFFFFFFFFFFFFFFLL));
    sub_100001FE8(v5, 0x80000001001C57AFLL & 0x7FFFFFFFFFFFFFFFLL, v4);
    sub_100001FE8(v5, " auth entry", 11);
    sub_10000EBDC(exception, v5, 0x16u);
  }

  return sub_10012DB30(a1, a2);
}

void sub_10012D238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012D270@<X0>(AEAAuthData *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = malloc_type_valloc(0x800uLL, 0x8B7C732DuLL);
  if (!v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = std::bad_alloc::bad_alloc(exception);
  }

  __s = off_1002190F0;
  v24[2] = &__s;
  __s2 = v6;
  sub_100015FBC(v26, &__s);
  sub_10001590C(&__s);
  v7 = sub_100132F84(a1);
  if (v7)
  {
    v8 = 0;
    v9 = __s2;
    while (1)
    {
      v22 = 0;
      bzero(v9, 0x800uLL);
      if (sub_100132F8C(a1, v8, 0x800uLL, v9, 0, 0, 0, &v22))
      {
        v12 = std::generic_category();
        *a3 = 1;
        goto LABEL_13;
      }

      v10 = *(a2 + 23);
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = *a2;
        v10 = *(a2 + 8);
      }

      else
      {
        v11 = a2;
      }

      v9 = __s2;
      if (!strncmp(v11, __s2, v10))
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_10;
      }
    }

    if (v22 < 0x100000)
    {
      v15 = malloc_type_valloc(v22 + 1, 0x8B7C732DuLL);
      if (!v15)
      {
        v20 = __cxa_allocate_exception(8uLL);
        v21 = std::bad_alloc::bad_alloc(v20);
      }

      v27[0] = off_1002190F0;
      v27[3] = v27;
      __s = v15;
      sub_100015FBC(v24, v27);
      sub_10001590C(v27);
      bzero(__s, v22 + 1);
      if (sub_100132F8C(a1, v8, 0x800uLL, __s2, 0, v22, __s, 0))
      {
        v16 = std::generic_category();
        v17 = 0;
        *a3 = 1;
        *(a3 + 8) = v16;
      }

      else
      {
        sub_100010B0C(a3, __s);
        v17 = 1;
      }

      *(a3 + 24) = v17;
      sub_100015888(&__s, 0);
      sub_10001590C(v24);
      goto LABEL_14;
    }

    v12 = std::generic_category();
    v13 = 84;
  }

  else
  {
LABEL_10:
    v12 = std::generic_category();
    v13 = 22;
  }

  *a3 = v13;
LABEL_13:
  *(a3 + 8) = v12;
  *(a3 + 24) = 0;
LABEL_14:
  sub_100015888(&__s2, 0);
  return sub_10001590C(v26);
}

void sub_10012D524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_100015888(va, 0);
  sub_10001590C(v3 + 8);
  sub_100015888(va1, 0);
  sub_10001590C(v4 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10012D56C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = *(a1 + 23);
    if (*(a2 + 24))
    {
      if (v4 < 0)
      {
        operator delete(*a1);
      }

      v5 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v5;
      *(a2 + 23) = 0;
      *a2 = 0;
    }

    else
    {
      if (v4 < 0)
      {
        operator delete(*a1);
      }

      *a1 = *a2;
      *(a1 + 24) = 0;
    }
  }

  else if (*(a2 + 24))
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = *a2;
  }

  return a1;
}

void **sub_10012D620(uint64_t a1, __int128 *a2, void *a3)
{
  if (*(a1 + 112) == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v7);
    sub_100001FE8(v7, "Not allowed more than one instance of ", 38);
    v6 = strlen(("N9AEAHelper6wkms_tE" & 0x7FFFFFFFFFFFFFFFLL));
    sub_100001FE8(v7, "N9AEAHelper6wkms_tE" & 0x7FFFFFFFFFFFFFFFLL, v6);
    sub_100001FE8(v7, " auth entry", 11);
    sub_10000EBDC(exception, v7, 0x16u);
  }

  v3 = (a1 + 80);

  return sub_10012DB98(v3, a2, a3);
}

void sub_10012D6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

void **sub_10012D734(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 72) == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v6);
    sub_100001FE8(v6, "Not allowed more than one instance of ", 38);
    v5 = strlen(("N9AEAHelper15saks_metadata_tE" & 0x7FFFFFFFFFFFFFFFLL));
    sub_100001FE8(v6, "N9AEAHelper15saks_metadata_tE" & 0x7FFFFFFFFFFFFFFFLL, v5);
    sub_100001FE8(v6, " auth entry", 11);
    sub_10000EBDC(exception, v6, 0x16u);
  }

  v2 = (a1 + 48);

  return sub_10012DC20(v2, a2);
}

void sub_10012D810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

void **sub_10012D848(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v6);
    sub_100001FE8(v6, "Not allowed more than one instance of ", 38);
    v5 = strlen(("N9AEAHelper5kms_tE" & 0x7FFFFFFFFFFFFFFFLL));
    sub_100001FE8(v6, "N9AEAHelper5kms_tE" & 0x7FFFFFFFFFFFFFFFLL, v5);
    sub_100001FE8(v6, " auth entry", 11);
    sub_10000EBDC(exception, v6, 0x16u);
  }

  v2 = (a1 + 16);

  return sub_10012DC20(v2, a2);
}

void sub_10012D924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012DA40(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_100219150))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10012DA8C(uint64_t *a1)
{
  if (*(a1 + 112) == 1 && *(a1 + 103) < 0)
  {
    operator delete(a1[10]);
  }

  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(a1[6]);
  }

  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    operator delete(a1[2]);
  }

  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      operator delete[]();
    }
  }

  return a1;
}

uint64_t *sub_10012DB30(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      operator delete[]();
    }
  }

  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  *(a1 + 8) = 1;
  return a1;
}

void **sub_10012DB98(void **__dst, __int128 *a2, void *a3)
{
  if (*(__dst + 32) == 1)
  {
    if (*(__dst + 23) < 0)
    {
      operator delete(*__dst);
    }

    *(__dst + 32) = 0;
  }

  if (*(a2 + 23) < 0)
  {
    sub_100050108(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v6;
  }

  __dst[3] = a3;
  *(__dst + 32) = 1;
  return __dst;
}

void **sub_10012DC20(void **__dst, __int128 *a2)
{
  if (*(__dst + 24) == 1)
  {
    if (*(__dst + 23) < 0)
    {
      operator delete(*__dst);
    }

    *(__dst + 24) = 0;
  }

  if (*(a2 + 23) < 0)
  {
    sub_100050108(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = 1;
  return __dst;
}

uint64_t sub_10012DC98(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  (*(*a1 + 80))(&v4);
  v1 = sub_100043DBC()[2];
  if (v1 <= v4)
  {
    v1 = v4;
  }

  if (*(&v5 + 1) >= v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = DWORD2(v5);
  }

  if (*(&v5 + 1))
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_10012DD0C(uint64_t a1)
{
  (*(*a1 + 80))(v5);
  v2 = v5[0];
  v3 = sub_10012DC98(a1);
  if (v2 > v3)
  {
    v3 = v2;
  }

  if (v3 <= 0x1000)
  {
    return 4096;
  }

  else
  {
    return v3;
  }
}

void sub_10012DD80()
{
  exception = __cxa_allocate_exception(0x40uLL);
  v1 = sub_100001940(exception, "User data is not supported in this image format", 0x2Du);
}

void sub_10012DDC0()
{
  exception = __cxa_allocate_exception(0x40uLL);
  v1 = sub_100001940(exception, "User data is not supported in this image format", 0x2Du);
}

void *sub_10012DE00(void *a1, unint64_t *a2)
{
  v4 = *(a2 + 16);
  v6 = *a2;
  v5 = a2[1];
  if (*(a2 + 16))
  {
    if (v4 == 3)
    {
      if (v5 < v6)
      {
LABEL_4:
        if ((v4 & 2) != 0)
        {
          v7 = "[";
        }

        else
        {
          v7 = "(";
        }

        sub_100010B0C(&v25, v7);
        if ((v27 & 0x80u) == 0)
        {
          v8 = &v25;
        }

        else
        {
          v8 = v25;
        }

        if ((v27 & 0x80u) == 0)
        {
          v9 = v27;
        }

        else
        {
          v9 = v26;
        }

        v10 = sub_100001FE8(a1, v8, v9);
        if (a2[2])
        {
          v11 = "]";
        }

        else
        {
          v11 = ")";
        }

        sub_100010B0C(&__p, v11);
        if ((v24 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v24 & 0x80u) == 0)
        {
          v13 = v24;
        }

        else
        {
          v13 = v23;
        }

        goto LABEL_44;
      }
    }

    else if (v6 >= v5)
    {
      goto LABEL_4;
    }
  }

  else if (v6 >= v5 || v6 + 1 >= v5)
  {
    goto LABEL_4;
  }

  if ((v4 & 2) != 0)
  {
    v15 = "[";
  }

  else
  {
    v15 = "(";
  }

  sub_100010B0C(&v25, v15);
  if ((v27 & 0x80u) == 0)
  {
    v16 = &v25;
  }

  else
  {
    v16 = v25;
  }

  if ((v27 & 0x80u) == 0)
  {
    v17 = v27;
  }

  else
  {
    v17 = v26;
  }

  sub_100001FE8(a1, v16, v17);
  v18 = std::ostream::operator<<();
  sub_100001FE8(v18, ",", 1);
  v10 = std::ostream::operator<<();
  if (a2[2])
  {
    v19 = "]";
  }

  else
  {
    v19 = ")";
  }

  sub_100010B0C(&__p, v19);
  if ((v24 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v24 & 0x80u) == 0)
  {
    v13 = v24;
  }

  else
  {
    v13 = v23;
  }

LABEL_44:
  v20 = sub_100001FE8(v10, p_p, v13);
  if (v24 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v25);
  }

  return v20;
}

void sub_10012DFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012E01C(uint64_t a1, uint64_t a2)
{
  (*(**a2 + 8))();
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

BOOL sub_10012E088(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 8);
  v5 = *(*a2 + 8);
  if (*v4 != *v5)
  {
    return 0;
  }

  result = sub_10007A3D4(v4 + 8, v5 + 8);
  if (result)
  {
    if (*(v4 + 48) == *(v5 + 48) && *(v2 + 40) == *(v3 + 40))
    {
      return a1[10] == a2[10];
    }

    return 0;
  }

  return result;
}

double sub_10012E140@<D0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = 2;
  *(a2 + 24) = 3;
  if (*(**(v3 + 8) + 8))
  {
    if (sub_1000E9608())
    {
      *v10 = "DiskImage::const_extents_iterator_t::make_val() const";
      *&v10[8] = 45;
      *&v10[16] = 2;
      sub_1000A8C98(&v11, v10);
      sub_100001FE8(v14, "Disk image is terminated, skipping ...", 38);
      std::ostream::~ostream();
      sub_1000A8ECC(&v11);
      std::ios::~ios();
    }
  }

  else if (v4 < v5 && a1[8] != 3)
  {
    (**v3)(&v11, v3);
    *v9 = v11;
    *&v9[16] = v12;
    sub_100076ABC(v9, v3 + 16, v10);
    *&v10[24] = v13;
    if (v13 != 3 && (a1[10] & (1 << v13)) == 0)
    {
      do
      {
        v8 = *a1;
        if (*(*a1 + 40) >= (*(*a1 + 32) & 1) + *(*a1 + 24))
        {
          break;
        }

        *(v8 + 40) = (v10[16] & 1) + *&v10[8];
        (**v8)(&v11, v8);
        v15 = v11;
        v16 = v12;
        sub_100076ABC(&v15, v8 + 16, v9);
        *&v9[24] = v13;
        *v10 = *v9;
        *&v10[12] = *&v9[12];
        if (v13 == 3)
        {
          break;
        }
      }

      while ((a1[10] & (1 << v13)) == 0);
    }

    *a2 = *v10;
    result = *&v10[12];
    *(a2 + 12) = *&v10[12];
  }

  return result;
}

void sub_10012E360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v20 = *(*v19 + 24);
    *v18 = *(*v19 + 40);
    *(v18 + 8) = v20;
    *(v18 + 16) = 2;
    *(v18 + 24) = 3;
    __cxa_end_catch();
    JUMPOUT(0x10012E348);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10012E3B4(uint64_t *a1)
{
  v2 = *a1;
  v3 = (a1[3] & 1) + a1[2];
  *(v2 + 40) = v3;
  if (v3 < (*(v2 + 32) & 1) + *(v2 + 24))
  {
    sub_10012E140(a1, v5);
    *(a1 + 1) = v5[0];
    *(a1 + 20) = *(v5 + 12);
  }

  return a1;
}

uint64_t *sub_10012E42C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 8))(*a1);
  *(a2 + 8) = *(a1 + 1);
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 40) = *(a1 + 10);
  return sub_10012E3B4(a1);
}

void sub_10012E498(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_10019867C(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012E4B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  if (v6)
  {
    (*(*v6 + 40))(v6);
    v5 = *(a1 + 32);
  }

  *(a1 + 40) = v5;
  sub_10012E6D8(a1 + 56, a2 + 56);
  return a1;
}

uint64_t sub_10012E544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = qword_1002349D8;
  *a2 = qword_1002349D8;
  *(a2 + 8) = v4;
  *(a2 + 16) = 2;
  *(a2 + 24) = 0;
  sub_10006661C(a1, v11);
  sub_10006679C(a1, v10);
  while (!sub_10012E088(v11, v10))
  {
    sub_10012E42C(v11, &v8);
    *a2 = v9[0];
    *(a2 + 12) = *(v9 + 12);
    v5 = v8;
    v8 = 0;
    if (v5)
    {
      (*(*v5 + 24))(v5);
    }
  }

  v6 = v10[0];
  v10[0] = 0;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  result = v11[0];
  v11[0] = 0;
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

void sub_10012E660(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *(v15 - 64);
  *(v15 - 64) = 0;
  if (v17)
  {
    (*(*v17 + 24))(v17, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012E6D8(uint64_t a1, uint64_t a2)
{
  sub_10012E75C(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10012E75C(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_10012E7E0(mach_port_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 0)
  {
    v5 = a4;
  }

  else
  {
    v5 = -a4;
  }

  input[0] = a3;
  input[1] = v5;
  if (sub_1000E9608())
  {
    *&v7 = "complete_function_uc(io_connect_t, const DIDeviceCommand &, unsigned int, int)";
    *(&v7 + 1) = 20;
    v8 = 2;
    sub_10005F900(v9, &v7);
    sub_100001FE8(v10, "index=", 6);
    std::ostream::operator<<();
    sub_100001FE8(v10, " status=", 8);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100060AE8(v9);
    std::ios::~ios();
  }

  result = IOConnectCallMethod(a1, 1u, input, 2u, 0, 0, 0, 0, 0, 0);
  if (result)
  {
    *&v7 = "complete_function_uc(io_connect_t, const DIDeviceCommand &, unsigned int, int)";
    *(&v7 + 1) = 20;
    v8 = 16;
    sub_10012E9D0(v9, &v7);
    sub_100001FE8(v10, "Kernel returned error for complete command, command = ", 54);
    std::ostream::operator<<();
    sub_100001FE8(v10, " error = ", 9);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10012EDD4(v9);
    return std::ios::~ios();
  }

  return result;
}

void sub_10012E9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10005FA28(va);
  _Unwind_Resume(a1);
}

void *sub_10012E9D0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001319C0(a1, a2);
  *a1 = off_1002191A0;
  a1[45] = &off_1002192A0;
  a1[46] = &off_1002192C8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002191A0;
  a1[45] = off_100219228;
  a1[46] = off_100219250;
  return a1;
}

void sub_10012EAD4(_Unwind_Exception *a1)
{
  sub_10012EDD4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10012EAF8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10012EDD4(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10012EB3C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10012EDD4(v1);

  return std::ios::~ios();
}

uint64_t sub_10012EB88(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10012EDD4(v1);

  return std::ios::~ios();
}

void sub_10012EBE8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10012EDD4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10012EC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10012EC8C(_BYTE *a1, int a2)
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

void sub_10012ECF8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10012EDD4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10012ED5C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10012EDD4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10012EDD4(uint64_t a1)
{
  *a1 = &off_100219338;
  sub_10012EF40(a1);
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

uint64_t sub_10012EF40(uint64_t a1)
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
        sub_10012F0F0((a1 + 72), __p);
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

void sub_10012F08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012F0B8(uint64_t a1)
{
  sub_10012EDD4(a1);

  operator delete();
}

int *sub_10012F0F0(uint64_t *a1, uint64_t *a2)
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
    v26 = 192;
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
      v26 = 192;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

_DWORD *sub_10012F2D4(_DWORD *a1)
{
  *a1 = 0;
  v3[0] = xmmword_1001C5950;
  v3[1] = xmmword_1001C5960;
  v4 = 0x900000008;
  v5 = 10;
  sub_1000A56E0("checksum_type", 0, v3, 11);
  return a1;
}

_DWORD *sub_10012F370(_DWORD *a1)
{
  *a1 = 0;
  v3[0] = xmmword_1001C5970;
  v3[1] = xmmword_1001C5980;
  v3[2] = xmmword_1001C5990;
  v4 = 0x8000000880000007;
  v5 = -1;
  sub_1000A56E0("run_type", 0, v3, 15);
  return a1;
}

int *sub_10012F418(int *a1, int a2)
{
  *a1 = a2;
  v4[0] = xmmword_1001C5970;
  v4[1] = xmmword_1001C5980;
  v4[2] = xmmword_1001C5990;
  v5 = 0x8000000880000007;
  v6 = -1;
  sub_1000A56E0("run_type", a2, v4, 15);
  return a1;
}

uint64_t *sub_10012F4BC(uint64_t **a1, __int128 *a2)
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

  if ((atomic_load_explicit(&qword_100234B90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100234B90))
  {
    sub_10013A214(&dword_100234B78);
    __cxa_guard_release(&qword_100234B90);
  }

  LODWORD(v16) = dword_100234B78;
  v17 = unk_100234B80;
  if (sub_10013A234(a2 + 24, &v16))
  {
    return (a1 + 1);
  }

  v6 = sub_10012F934(a1, a2, a2);
  if (v7)
  {
    v16 = v6;
    sub_10012F9E0(a1, &v16);
    return sub_10012FAF8(a1, &v16);
  }

  else
  {
    v8 = sub_1000DC688(a1, &v13);
    v9 = sub_10012FC18(a1, &v13);
    v10 = *v9;
    if (*v9)
    {
      do
      {
        v11 = v10;
        v10 = v10[1];
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = v9[2];
        v12 = *v11 == v9;
        v9 = v11;
      }

      while (v12);
    }

    v15 = v8;
    v16 = v11;
    sub_10012F65C(a1, &v13, a2 + 6, &v15, &v16);
    return v15;
  }
}

uint64_t *sub_10012F65C(uint64_t **a1, __int128 *a2, int *a3, uint64_t **a4, uint64_t **a5)
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

  v31 = *a2;
  v32 = *(a2 + 2);
  *&v29 = qword_1002349D8;
  *(&v29 + 1) = qword_1002349D8;
  v30 = 2;
  v27 = *(v8 + 2);
  v28 = v8[6];
  if (v13 != v10)
  {
    while (1)
    {
      v29 = *(v13 + 2);
      v30 = *(v13 + 48);
      v25 = v31;
      v26 = v32;
      sub_1000DC500(&v25, &v29, &v21);
      if (v22)
      {
        break;
      }

      if (v21 < *(&v21 + 1) && (v21 + 1) < *(&v21 + 1))
      {
        goto LABEL_21;
      }

LABEL_22:
      v25 = v31;
      v26 = v32;
      sub_1000DC5C4(&v25, &v29, &v21);
      v31 = v21;
      LOBYTE(v32) = v22;
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

      *a4 = v13;
      if (v13 == v10)
      {
        goto LABEL_31;
      }
    }

    if (v22 == 3)
    {
      if (*(&v21 + 1) < v21)
      {
        goto LABEL_22;
      }
    }

    else if (v21 >= *(&v21 + 1))
    {
      goto LABEL_22;
    }

LABEL_21:
    v23 = *a3;
    v24 = *(a3 + 2);
    *&v21 = sub_1000293C0(a1, v15, &v21, &v21);
    sub_10012F9E0(a1, &v21);
    *a4 = sub_10012FAF8(a1, &v21);
    goto LABEL_22;
  }

LABEL_31:
  v21 = v31;
  v22 = v32;
  result = sub_1000DC5C4(&v21, &v27, &v25);
  v20 = v25;
  if (v26)
  {
    if (v26 == 3)
    {
      if (*(&v25 + 1) < v25)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }

  else
  {
    if (v25 >= *(&v25 + 1))
    {
      goto LABEL_39;
    }

    v20 = v25 + 1;
  }

  if (v20 < *(&v25 + 1))
  {
LABEL_38:
    v21 = v25;
    v22 = v26;
    v23 = *a3;
    v24 = *(a3 + 2);
    *&v21 = sub_1000293C0(a1, v15, &v21, &v21);
    sub_10012F9E0(a1, &v21);
    result = sub_10012FAF8(a1, &v21);
    v15 = result;
  }

LABEL_39:
  *a4 = v15;
  return result;
}

uint64_t sub_10012F934(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *sub_100029640(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_10012F9E0(uint64_t **a1, uint64_t **a2)
{
  v2 = *a2;
  if (*a2 == *a1)
  {
    return *a1;
  }

  v5 = *v2;
  if (*v2)
  {
    do
    {
      v6 = v5;
      v5 = *(v5 + 8);
    }

    while (v5);
  }

  else
  {
    v7 = *a2;
    do
    {
      v6 = *(v7 + 16);
      v8 = *v6 == v7;
      v7 = v6;
    }

    while (v8);
  }

  v9 = *(v2 + 32);
  if ((*(v2 + 48) & 2) == 0)
  {
    ++v9;
  }

  if (v9 == (*(v6 + 48) & 1) + *(v6 + 40))
  {
    v10 = sub_10013A234(v6 + 56, v2 + 56);
    v2 = *a2;
    if (v10)
    {
      v16 = *(v2 + 32);
      v17 = *(v2 + 48);
      sub_10004EE4C(a1, v2);
      operator delete(v2);
      v12 = *(v6 + 32);
      v13 = *(v6 + 48);
      sub_1000DC2E0(&v12, &v16, &v14);
      *(v6 + 32) = v14;
      *(v6 + 48) = v15;
      *a2 = v6;
      return v6;
    }
  }

  return v2;
}

void *sub_10012FAF8(uint64_t **a1, uint64_t *a2)
{
  v3 = a1 + 1;
  result = *a2;
  if (*a2 == v3)
  {
    return v3;
  }

  v6 = result[1];
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
    v8 = *a2;
    do
    {
      v7 = v8[2];
      v9 = *v7 == v8;
      v8 = v7;
    }

    while (!v9);
  }

  if (v7 != v3)
  {
    v10 = v7[4];
    if ((v7[6] & 2) == 0)
    {
      ++v10;
    }

    if (v10 == (result[6] & 1) + result[5])
    {
      if (sub_10013A234((result + 7), (v7 + 7)))
      {
        v17 = *(v7 + 2);
        v18 = v7[6];
        sub_10004EE4C(a1, v7);
        operator delete(v7);
        v11 = *a2;
        v13 = *(*a2 + 32);
        v14 = v11[6];
        sub_1000DC2E0(&v13, &v17, &v15);
        v12 = *a2;
        *(v12 + 32) = v15;
        *(v12 + 48) = v16;
      }

      return *a2;
    }
  }

  return result;
}

uint64_t sub_10012FC18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  result = a1 + 8;
  v3 = v4;
  if (v4)
  {
    v5 = (*(a2 + 16) & 1) + *(a2 + 8) - 1;
    do
    {
      v6 = *(v3 + 32);
      if ((*(v3 + 48) & 2) == 0)
      {
        ++v6;
      }

      v7 = v5 >= v6;
      v8 = v5 >= v6;
      if (!v7)
      {
        result = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
  }

  return result;
}

void *sub_10012FC5C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001300A0(a1, a2);
  *a1 = off_1002193C0;
  a1[45] = &off_1002194C0;
  a1[46] = &off_1002194E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002193C0;
  a1[45] = off_100219448;
  a1[46] = off_100219470;
  return a1;
}

void sub_10012FD60(_Unwind_Exception *a1)
{
  sub_100130168(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10012FD84(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100130168(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10012FDC8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100130900(a1, a2);
  *a1 = off_1002195E0;
  a1[45] = &off_1002196E0;
  a1[46] = &off_100219708;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002195E0;
  a1[45] = off_100219668;
  a1[46] = off_100219690;
  return a1;
}

void sub_10012FECC(_Unwind_Exception *a1)
{
  sub_1001309C8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10012FEF0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001309C8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10012FF34(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100131160(a1, a2);
  *a1 = off_100219800;
  a1[45] = &off_100219900;
  a1[46] = &off_100219928;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100219800;
  a1[45] = off_100219888;
  a1[46] = off_1002198B0;
  return a1;
}

void sub_100130038(_Unwind_Exception *a1)
{
  sub_100131228(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10013005C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100131228(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001300A0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100219558;
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

void sub_100130150(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100130168(uint64_t a1)
{
  *a1 = &off_100219558;
  sub_1001305A8(a1);
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

void sub_1001302D4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100130168(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10013033C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100130378(_BYTE *a1, int a2)
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

uint64_t sub_1001303E4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100130168(v1);

  return std::ios::~ios();
}

void sub_100130430(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100130168(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100130494(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100130168(v1);

  return std::ios::~ios();
}

void sub_1001304F4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100130168(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100130570(uint64_t a1)
{
  sub_100130168(a1);

  operator delete();
}

uint64_t sub_1001305A8(uint64_t a1)
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
        sub_10013071C((a1 + 72), __p);
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

void sub_1001306F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10013071C(uint64_t *a1, uint64_t *a2)
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
    v26 = 638;
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
      v26 = 638;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100130900(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100219778;
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

void sub_1001309B0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001309C8(uint64_t a1)
{
  *a1 = &off_100219778;
  sub_100130E08(a1);
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

void sub_100130B34(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001309C8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100130B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100130BD8(_BYTE *a1, int a2)
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

uint64_t sub_100130C44(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001309C8(v1);

  return std::ios::~ios();
}

void sub_100130C90(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001309C8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100130CF4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001309C8(v1);

  return std::ios::~ios();
}

void sub_100130D54(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001309C8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100130DD0(uint64_t a1)
{
  sub_1001309C8(a1);

  operator delete();
}

uint64_t sub_100130E08(uint64_t a1)
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
        sub_100130F7C((a1 + 72), __p);
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

void sub_100130F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100130F7C(uint64_t *a1, uint64_t *a2)
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
    v26 = 667;
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
      v26 = 667;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100131160(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100219998;
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

void sub_100131210(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100131228(uint64_t a1)
{
  *a1 = &off_100219998;
  sub_100131668(a1);
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

void sub_100131394(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100131228(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001313FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100131438(_BYTE *a1, int a2)
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

uint64_t sub_1001314A4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100131228(v1);

  return std::ios::~ios();
}

void sub_1001314F0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100131228(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100131554(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100131228(v1);

  return std::ios::~ios();
}

void sub_1001315B4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100131228(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100131630(uint64_t a1)
{
  sub_100131228(a1);

  operator delete();
}

uint64_t sub_100131668(uint64_t a1)
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
        sub_1001317DC((a1 + 72), __p);
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

void sub_1001317B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1001317DC(uint64_t *a1, uint64_t *a2)
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
    v26 = 674;
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
      v26 = 674;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001319C0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100219338;
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

void sub_100131A70(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_100131A88(void *a1, unsigned int *a2)
{
  v2 = sub_100001FE8(a1, "crc32 {", 7);
  v3 = 0;
  v4 = *(v2 + *(*v2 - 24) + 8);
  do
  {
    *(v2 + *(*v2 - 24) + 8) = *(v2 + *(*v2 - 24) + 8) & 0xFFFFFFB5 | 8;
    v10 = 48;
    v5 = sub_1000283FC(v2, &v10);
    *(v5 + *(*v5 - 24) + 24) = 2;
    v6 = std::ostream::operator<<();
    sub_100001FE8(v6, " ", 1);
    ++v3;
  }

  while (v3 != 3);
  *(v2 + *(*v2 - 24) + 8) = *(v2 + *(*v2 - 24) + 8) & 0xFFFFFFB5 | 8;
  v9 = 48;
  v7 = sub_1000283FC(v2, &v9);
  *(v7 + *(*v7 - 24) + 24) = 2;
  std::ostream::operator<<();
  *(v2 + *(*v2 - 24) + 8) = v4;
  return sub_100001FE8(v2, "}", 1);
}

int *sub_100131C34(int *a1, int a2)
{
  *a1 = a2;
  v4[0] = xmmword_1001C5950;
  v4[1] = xmmword_1001C5960;
  v5 = 0x900000008;
  v6 = 10;
  sub_1000A56E0("checksum_type", a2, v4, 11);
  return a1;
}

_DWORD *sub_100131CCC(_DWORD *result, _DWORD *a2)
{
  if (*a2 >= 0x408u)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &off_100219A30;
    exception[1] = "bla";
    exception[2] = "field size too large";
  }

  *result = *a2;
  return result;
}

void sub_100131D44(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

uint64_t sub_100131D84@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_100028820(v12);
  v4 = strlen(*(a1 + 8));
  sub_100001FE8(&v13, *(a1 + 8), v4);
  sub_100001FE8(&v13, " - ", 3);
  v5 = *(a1 + 16);
  v6 = strlen(v5);
  sub_100001FE8(&v13, v5, v6);
  sub_10013203C(v17, v12);
  v10 = v8;
  v13 = v8;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  sub_100132330(&v18, a2);
  v17[0] = v7;
  *(v17 + *(v7 - 3)) = v9;
  v17[2] = v10;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void (__cdecl ***sub_10013203C(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this), void *a2))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = a2[1];
  a2[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  v6 = (a2 + *(*a2 - 24));
  std::ios_base::move(v5, v6);
  v5[1].__vftable = v6[1].__vftable;
  v6[1].__vftable = 0;
  v5[1].__fmtflags_ = v6[1].__fmtflags_;
  a1[2] = v8;
  *(*(v8 - 3) + (a1 + 2)) = v7;
  *a1 = v9;
  *(*(*a1 - 3) + a1 + 40) = std::stringbuf::basic_stringbuf();
  return a1;
}

void sub_100132308(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100132330(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = sub_100001B64(a1);
  if (v5)
  {
    v6 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v6 = *v6;
    }

    v7 = v4 - v6;
  }

  else
  {
    v7 = 0;
  }

  *&a2->__r_.__value_.__l.__data_ = *(a1 + 64);
  a2->__r_.__value_.__r.__words[2] = *(a1 + 80);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  std::string::resize(a2, v7 + v5, 0);
  std::string::erase(a2, 0, v7);
  sub_100001CB8(a1);
}

void sub_1001323C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001326A0(id a1)
{
  v1 = *__error();
  v2 = sub_1000E95F0();
  if (v2)
  {
    v9 = 0;
    v4 = sub_1000E957C(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    *buf = 68157954;
    v11 = 60;
    v12 = 2080;
    v13 = "[DIClient2IODaemonXPCHandler createConnection]_block_invoke";
    LODWORD(v8) = 18;
    v6 = _os_log_send_and_compose_impl(v5, &v9, 0, 0, &_mh_execute_header, v4, 0, "%.*s: Reached an invalidation handler for the IO daemon connection", buf, v8);

    if (v6)
    {
      fprintf(__stderrp, "%s\n", v6);
      free(v6);
    }
  }

  else
  {
    v7 = sub_1000E957C(v2, v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v11 = 60;
      v12 = 2080;
      v13 = "[DIClient2IODaemonXPCHandler createConnection]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%.*s: Reached an invalidation handler for the IO daemon connection", buf, 0x12u);
    }
  }

  *__error() = v1;
}

void sub_100132830(id a1)
{
  v1 = *__error();
  v2 = sub_1000E95F0();
  if (v2)
  {
    v9 = 0;
    v4 = sub_1000E957C(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    *buf = 68157954;
    v11 = 60;
    v12 = 2080;
    v13 = "[DIClient2IODaemonXPCHandler createConnection]_block_invoke";
    LODWORD(v8) = 18;
    v6 = _os_log_send_and_compose_impl(v5, &v9, 0, 0, &_mh_execute_header, v4, 0, "%.*s: Reached an interruption handler for the IO daemon connection", buf, v8);

    if (v6)
    {
      fprintf(__stderrp, "%s\n", v6);
      free(v6);
    }
  }

  else
  {
    v7 = sub_1000E957C(v2, v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v11 = 60;
      v12 = 2080;
      v13 = "[DIClient2IODaemonXPCHandler createConnection]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%.*s: Reached an interruption handler for the IO daemon connection", buf, 0x12u);
    }
  }

  *__error() = v1;
}

void sub_100132AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100132AD0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained signalCommandCompletedWithXpcError:v3];
}

uint64_t *sub_100132B64(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = sub_100001940(exception, "Error opening ByteStream", 0x16u);
  }

  return result;
}

AEAContext *sub_100132C2C(AEAContext *a1, AAByteStream *a2)
{
  v3 = AEAContextCreateWithEncryptedStream(*a2);
  *a1 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = sub_100001940(exception, "Context creation failed.", 0x16u);
  }

  return a1;
}

uint64_t sub_100132CC8(AEAContext *a1, uint8_t *buf, size_t buf_size)
{
  result = AEAContextSetFieldBlob(*a1, 9u, 0, buf, buf_size);
  if ((result & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_100001940(exception, "Context setup failed.", 0x16u);
  }

  return result;
}

uint64_t sub_100132D2C(AEAContext_impl **a1)
{
  v1 = *a1;
  buf_size = 0;
  if (AEAContextGetFieldBlob(v1, 0x12u, 0, 0, 0, &buf_size) < 0)
  {
    return 0;
  }

  v2 = buf_size;
  if (buf_size >= 0x100000)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = buf_size;
  }

  if (buf_size)
  {
    v4 = malloc_type_valloc(v3, 0x8B7C732DuLL);
    if (!v4)
    {
      exception = __cxa_allocate_exception(8uLL);
      v6 = std::bad_alloc::bad_alloc(exception);
    }
  }

  else
  {
    v4 = 0;
  }

  __dst[0] = off_100219AA0;
  __dst[3] = __dst;
  buf = v4;
  sub_100015FBC(v13, __dst);
  sub_10001590C(__dst);
  v8 = buf;
  if (AEAContextGetFieldBlob(v1, 0x12u, 0, v3, buf, 0) < 0)
  {
    v7 = 0;
  }

  else
  {
    if (v2 >= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v2;
    }

    memcpy(__dst, v8, v9);
    v7 = __dst[0];
  }

  sub_100015888(&buf, 0);
  sub_10001590C(v13);
  return v7;
}

void sub_100132EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100015888(va, 0);
  sub_10001590C(v5 + 8);
  _Unwind_Resume(a1);
}

AEAAuthData *sub_100132EE8(AEAAuthData *a1, AEAContext *a2)
{
  v3 = AEAAuthDataCreateWithContext(*a2);
  *a1 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = sub_100001940(exception, "Authentication Data creation failed.", 0x16u);
  }

  return a1;
}

void *sub_100132F94(void *result, void *a2, uint64_t *a3, void *a4)
{
  v4 = *a3;
  *result = *a2;
  *a2 = 0;
  result[1] = v4;
  *a3 = 0;
  result[2] = *a4;
  *a4 = 0;
  return result;
}

uint64_t sub_10013306C(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_100219B00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001330B8(void *a1, void *a2)
{
  v2 = sub_1000440E0(a1, a2);
  *v2 = off_100219B20;
  *(v2 + 5) = 0u;
  v2[9] = 0;
  *(v2 + 7) = 0u;
  v3 = sub_100043DBC();
  v4 = *(v3 + 2);
  if (v4 == 1)
  {
    v5 = (*v3)();
  }

  else
  {
    if (v4)
    {
      sub_100015D74();
    }

    v5 = *v3;
  }

  LODWORD(v6) = v5 + 1;
  v7 = 0;
  sub_1001344C8();
}

void sub_100133290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10000E984(a12);
  }

  sub_10013449C(v13);
  sub_100198938(v12);
  sub_10004413C(v12);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_1001332FC@<X0>(uint64_t a1@<X0>, std::unique_lock<std::mutex>::mutex_type *a2@<X1>, unint64_t *a3@<X8>, char a4@<W2>)
{
  v20 = 0;
  v21 = a2;
  sub_100136AE8(a1, a2, a4, &v18);
  if (v18 && (*(v18 + 312) & 1) == 0 || v18 && (*(v18 + 312) & 1) != 0)
  {
LABEL_5:
    *a3 = 0;
    v7 = atomic_exchange(&v18, 0);
  }

  else
  {
    v8 = *(a1 + 704);
    if ((v8 & 1) == 0 || v19 == (a1 + 728))
    {
      *a3 = 0;
      return sub_10013449C(&v18);
    }

    while ((v8 & 2) == 0)
    {
      sub_100136FBC(a1, &v16, a2);
      v20 = v16;
      sub_100133578(&v18, &v17);
      sub_10013449C(&v17);
      if (v18 && (*(v18 + 312) & 1) == 0)
      {
        goto LABEL_23;
      }

      v9 = sub_1001371C4(a1);
      if (v9)
      {
        v20 = v9;
        sub_10013726C(a1, v9, a2, &v16);
        sub_100133578(&v18, &v16);
        sub_10013449C(&v16);
LABEL_23:
        std::mutex::lock((a1 + 744));
        v13 = sub_10012105C((a1 + 720), v19, &v21, &v21, &v20);
        if ((v14 & 1) == 0)
        {
          v13[5] = v20;
        }

        std::condition_variable::notify_all((a1 + 808));
        std::mutex::unlock((a1 + 744));
        v22[0] = 0;
        v23 = 0;
        sub_100136074(a1, 0, v22);
        if (v23 == 1)
        {
          sub_1001363B0(v22);
        }

        goto LABEL_5;
      }

      v8 = *(a1 + 704);
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

      v15 = *(a1 + 400);
      if (v15)
      {
        *(a1 + 408) = atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_21:
      v7 = 0;
    }
  }

  atomic_store(v7, a3);
  return sub_10013449C(&v18);
}

void sub_100133504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100001A14(exception_object);
}

atomic_ullong *sub_100133578(atomic_ullong *a1, atomic_ullong *a2)
{
  if (a2 != a1)
  {
    v3 = atomic_exchange(a2, 0);
    sub_10013449C(a1);
    atomic_store(v3, a1);
  }

  return a1;
}

void sub_1001335E0(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 256))
    {
      sub_1001379A8(v2 + 232, v2);
    }
  }

  __cxa_rethrow();
}

atomic_ullong *sub_100133620@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v7 = *(a1 + 40);
  v8 = *v7;
  v9 = v7[1];
  while (v8 != v9)
  {
    sub_10013385C(v8, v6, &v20);
    if (v20 && (*(v20 + 312) & 1) == 0)
    {
      sub_100134008(&v18, &v20);
      v19 = -2;
      *a3 = 0;
      atomic_store(atomic_exchange(&v18, 0), a3);
      *(a3 + 8) = v19;
      sub_10013449C(&v18);
      return sub_10013449C(&v20);
    }

    sub_10013449C(&v20);
    ++v8;
  }

  sub_1001332FC(*(a1 + 56), v6, &v20, 1);
  if (v20 && (v10 = atomic_load((v20 + 24)), v10 == 2))
  {
    sub_100134008(&v18, &v20);
    v19 = -2;
    *a3 = 0;
    atomic_store(atomic_exchange(&v18, 0), a3);
    *(a3 + 8) = v19;
    sub_10013449C(&v18);
  }

  else
  {
    v18 = a2[3];
    sub_1001338F8(&v20, a2, &v18);
    v11 = *(a1 + 40);
    v12 = *v11;
    v13 = v11[1];
    if (*v11 == v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        sub_10013395C(v12, -2, &v20, &v18);
        if (v18)
        {
          v15 = *(v18 + 312) ^ 1;
        }

        else
        {
          v15 = 0;
        }

        if (v20)
        {
          v16 = *(v20 + 312) ^ 1;
        }

        else
        {
          v16 = 0;
        }

        sub_10013449C(&v18);
        if (((v15 ^ v16) & 1) == 0)
        {
          break;
        }

        ++v14;
        ++v12;
      }

      while (v12 != v13);
    }

    sub_100134008(a3, &v20);
    *(a3 + 8) = v14;
  }

  return sub_10013449C(&v20);
}

void sub_100133808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10013449C(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_10013385C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = atomic_load(result);
  if (v4 && *(v4 + 32) == a2)
  {
    v6 = atomic_load(result);
    sub_100137454(&v8, v6, 1);
    if (v8 && (*(v8 + 312) & 1) == 0)
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

    return sub_10013449C(&v8);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_100133920(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 256))
    {
      sub_1001379A8(v2 + 232, v2);
    }
  }

  __cxa_rethrow();
}

unint64_t *sub_10013395C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, unint64_t *a4@<X8>)
{
  v6 = result;
  LOBYTE(v8) = 0;
  v9 = atomic_load(result);
  do
  {
    if (v8)
    {
      return sub_100134008(a4, a3);
    }

    if (v9)
    {
      if (v9[4] != a2)
      {
        goto LABEL_22;
      }

      v16 = 0;
      v10 = atomic_load(v9);
      if (v10)
      {
        v11 = v10;
        while (1)
        {
          atomic_compare_exchange_strong(v9, &v11, v10 + 1);
          if (v11 == v10)
          {
            break;
          }

          v10 = v11;
          if (!v11)
          {
            goto LABEL_14;
          }
        }

        v12 = v9[37];
        v11 = v9;
        if (v12)
        {
          v9[38] = atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
          v11 = v9;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
      v16 = 0;
    }

LABEL_14:
    atomic_store(v11, &v16);
    v13 = v9[4];
    if (v13 == a2)
    {
      v14 = atomic_load(a3);
      v15 = v9;
      atomic_compare_exchange_strong(v6, &v15, v14);
      if (v15 == v9)
      {
        v8 = 1;
      }

      else
      {
        v9 = v15;
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    result = sub_10013449C(&v16);
  }

  while (v13 == a2);
  if (v8)
  {
    return sub_100134008(a4, a3);
  }

LABEL_22:
  *a4 = 0;
  atomic_store(0, a4);
  return result;
}

uint64_t sub_100133A94(uint64_t a1, uint64_t *a2, int *a3, void **a4)
{
  if (*(*a2 + 192))
  {
    v4 = *a2 + 40;
  }

  else
  {
    v4 = 0;
  }

  v5 = atomic_load((v4 + 140));
  if (v5)
  {
    v7 = *(*a2 + 192) ? *a2 + 40 : 0;
    v8 = atomic_load((v7 + 144));
    *a3 = v8;
    if ((v8 & 0x80000000) == 0)
    {
      v9 = *a4;
      if (*(*a2 + 192))
      {
        v10 = *a2 + 40;
      }

      else
      {
        v10 = 0;
      }

      v11 = *v10;
      v12 = *(v10 + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        memcpy(v9, v11, *a3);
        sub_10000E984(v12);
      }

      else
      {
        memcpy(v9, v11, v8);
      }

      v13 = *a2;
      if (*a2)
      {
        if (*(v13 + 192))
        {
          v13 += 40;
        }

        else
        {
          v13 = 0;
        }
      }

      atomic_fetch_add((v13 + 136), 0xFFFFFFFF);
    }
  }

  return v5 & 1;
}

void sub_100133B70(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    if (*(v3 + 192))
    {
      v4 = v3 + 40;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  std::mutex::lock((v4 + 72));
  if (*(*a2 + 192))
  {
    v5 = *a2 + 40;
  }

  else
  {
    v5 = 0;
  }

  if (atomic_load((v5 + 136)))
  {
    if (*(*a2 + 192))
    {
      v7 = *a2 + 40;
    }

    else
    {
      v7 = 0;
    }

    std::condition_variable::notify_all((v7 + 24));
  }

  std::mutex::unlock((v4 + 72));
}

uint64_t sub_100133C08(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  if (*a2)
  {
    if (*(v6 + 192))
    {
      v7 = v6 + 40;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  std::mutex::lock((v7 + 72));
  v8 = (*(**(a1 + 24) + 128))(*(a1 + 24), a3);
  v9 = v8;
  if (*(*a2 + 192))
  {
    v10 = *a2 + 40;
  }

  else
  {
    v10 = 0;
  }

  atomic_store(v8, (v10 + 144));
  if (*(*a2 + 192))
  {
    v11 = *a2 + 40;
  }

  else
  {
    v11 = 0;
  }

  atomic_store(1u, (v11 + 140));
  std::mutex::unlock((v7 + 72));
  return v9;
}

std::__shared_weak_count *sub_100133CEC(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v23 = 0;
  v4 = sub_100133620(a1, a2, &v21);
  v5 = v22;
  if (v22 != -2)
  {
    v11 = sub_100133C08(a1, &v21, v2);
    v23 = v11;
    sub_100133B70(v11, &v21);
    if (v5 < (*(*(a1 + 40) + 8) - **(a1 + 40)) >> 3)
    {
      __lk.__m_ = 0;
      v12 = atomic_load((a1 + 72));
      atomic_store(v12, &__lk);
      atomic_store(atomic_exchange(&__lk, 0), (**(a1 + 40) + 8 * v5));
    }

    if (v21 && *(v21 + 256))
    {
      sub_1001379A8(v21 + 232, v21);
    }

    goto LABEL_33;
  }

  v6 = v21;
  if (v21)
  {
    if (*(v21 + 192))
    {
      v6 = v21 + 40;
    }

    else
    {
      v6 = 0;
    }
  }

  atomic_fetch_add((v6 + 136), 1u);
  if (sub_100133A94(v4, &v21, &v23, &v2->__vftable))
  {
    goto LABEL_33;
  }

  v7 = *(v21 + 192) ? v21 + 40 : 0;
  __lk.__m_ = (v7 + 72);
  __lk.__owns_ = 1;
  std::mutex::lock((v7 + 72));
  v9 = sub_100133A94(v8, &v21, &v23, &v2->__vftable);
  v10 = v9;
  if (v9)
  {
    v2 = v23;
  }

  else
  {
    if (*(v21 + 192))
    {
      v13 = v21 + 40;
    }

    else
    {
      v13 = 0;
    }

    std::condition_variable::wait((v13 + 24), &__lk);
    if (*(v21 + 192))
    {
      v14 = v21 + 40;
    }

    else
    {
      v14 = 0;
    }

    v15 = atomic_load((v14 + 144));
    v23 = v15;
    if (v15 >= 1)
    {
      v16 = v2->__vftable;
      if (*(v21 + 192))
      {
        v17 = v21 + 40;
      }

      else
      {
        v17 = 0;
      }

      v18 = *v17;
      v2 = *(v17 + 8);
      if (v2)
      {
        atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
        memcpy(v16, v18, v15);
        sub_10000E984(v2);
      }

      else
      {
        memcpy(v16, v18, v15);
      }
    }
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  if ((v10 & 1) == 0)
  {
LABEL_33:
    v2 = v23;
  }

  sub_10013449C(&v21);
  return v2;
}

void sub_100133EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10013449C(va);
  _Unwind_Resume(a1);
}

void sub_100133F44(void *a1)
{
  sub_100134408(a1);

  operator delete();
}

uint64_t *sub_100133F90(uint64_t *a1, unint64_t a2)
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

void sub_100133FEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_100134008(unint64_t *a1, unint64_t *a2)
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

    v6 = v3[37];
    if (v6)
    {
      v3[38] = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
    }

    if (!sub_1001340AC(v3))
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        v7 = v3[4];
        v3[4] = -1;
        sub_100134188(v3, v7, 1u);
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  atomic_store(v3, a1);
  return a1;
}

BOOL sub_1001340AC(uint64_t a1)
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
    if (v6 != 2 && (*(a1 + 312) & 1) == 0)
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

uint64_t sub_100134188(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  if ((*(a1 + 312) & 1) == 0 && (v6 = atomic_load((a1 + 24)), v6 == 2) && *(a1 + 192) == 1 && (v7 = *(a1 + 288)) != 0)
  {
    v8 = (a3 >> 1) & 2;
    if ((*(*v7 + 48))(v7, a1 + 40))
    {
      if ((v3 & 2) == 0)
      {
        if (v3)
        {
          sub_100134368(a1 + 200, a1, a2, v8 | 1);
        }

        return 0;
      }

      *&v10 = "ref::details::ctrl_blk<CurrentReader, unsigned long long>::reset_val(tag_t, details::reset_val_option_set) [T = CurrentReader, tag_t = unsigned long long]";
      *(&v10 + 1) = 68;
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
  if (*(a1 + 192) == 1)
  {
    sub_1001343C8(a1 + 40);
    *(a1 + 192) = 0;
  }

  sub_100134368(a1 + 200, a1, a2, v8);
  std::__cxx_atomic_notify_all((a1 + 24));
  return 1;
}

void sub_100134354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000F0090(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100134368(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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

uint64_t sub_1001343C8(uint64_t a1)
{
  std::mutex::~mutex((a1 + 72));
  std::condition_variable::~condition_variable((a1 + 24));
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000E984(v2);
  }

  return a1;
}

void *sub_100134408(void *a1)
{
  *a1 = off_100219B20;
  sub_10013449C(a1 + 9);
  v2 = a1[8];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    sub_10000E984(v3);
  }

  *a1 = off_1001FACC0;
  v4 = a1[4];
  if (v4)
  {
    sub_10000E984(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

atomic_ullong *sub_10013449C(atomic_ullong *a1)
{
  result = atomic_exchange(a1, 0);
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      v2 = result[4];
      result[4] = -1;
      return sub_100134188(result, v2, 1u);
    }
  }

  return result;
}

void sub_10013453C(void *a1, unsigned int *a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100219C10;
  sub_100134618((a1 + 3), a2, a3);
}

void sub_1001345B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100219C10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100134618(uint64_t a1, unsigned int *a2, int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = 0;
  sub_1001346A0(a1, v3, v4, v5);
}

void sub_10013468C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001366DC(va);
  _Unwind_Resume(a1);
}

void sub_1001346A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100134A4C(a1);
  *(v8 + 424) = a2;
  *(v8 + 432) = a3;
  *(v8 + 440) = 0u;
  *(v8 + 456) = 0u;
  *(v8 + 472) = 0u;
  *(v8 + 488) = 850045863;
  *(v8 + 496) = 0u;
  *(v8 + 512) = 0u;
  *(v8 + 528) = 0u;
  *(v8 + 544) = 0;
  *(v8 + 560) = 0u;
  *(v8 + 576) = 0u;
  *(v8 + 592) = 850045863;
  *(v8 + 600) = 0u;
  *(v8 + 616) = 0u;
  *(v8 + 632) = 0u;
  *(v8 + 648) = 0;
  *(v8 + 656) = 1018212795;
  *(v8 + 696) = 0;
  *(v8 + 664) = 0u;
  *(v8 + 680) = 0u;
  *(v8 + 704) = 1;
  sub_10014FE40((v8 + 712), "dealloc_queue", 2);
  *(a1 + 728) = 0u;
  *(a1 + 720) = a1 + 728;
  *(a1 + 744) = 850045863;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0;
  *(a1 + 808) = 1018212795;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0;
  *(a1 + 856) = 850045863;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0;
  *(a1 + 920) = a1 + 920;
  *(a1 + 928) = a1 + 920;
  *(a1 + 936) = 0;
  sub_100135184(a1 + 944, a4);
  sub_10013521C(a1 + 976, a1);
  *(a1 + 1320) = off_100219F10;
  *(a1 + 1328) = a1;
  *(a1 + 1344) = a1 + 1320;
  *(a1 + 1352) = off_100219FA0;
  *(a1 + 1360) = a1;
  *(a1 + 1376) = a1 + 1352;
  operator new[]();
}

void sub_1001348C8(_Unwind_Exception *a1)
{
  sub_1001366DC(v1 + 944);
  sub_1001232A4(v3);
  std::mutex::~mutex((v1 + 856));
  std::condition_variable::~condition_variable((v1 + 808));
  std::mutex::~mutex((v1 + 744));
  sub_1000285E0(v1 + 720, *v4);
  sub_10014FD8C((v1 + 712));
  std::condition_variable::~condition_variable((v1 + 656));
  std::mutex::~mutex((v1 + 592));
  std::mutex::~mutex((v1 + 488));
  sub_100072AB4(v2);
  sub_100136664(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10013498C(unint64_t *a1, void *a2)
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
    sub_1001359B0(a1);
    v7 = a1[4];
    v8 = a1[5];
    v5 = a1[1];
    v9 = v7 + v8;
  }

  *(*(v5 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  a1[5] = v8 + 1;
  v10 = v7 + v8 + 1;
  v11 = a1[1];
  v12 = (v11 + 8 * (v10 >> 9));
  v13 = *v12 + 8 * (v10 & 0x1FF);
  if (a1[2] == v11)
  {
    v13 = 0;
  }

  if (v13 == *v12)
  {
    v13 = *(v12 - 1) + 4096;
  }

  return v13 - 8;
}

uint64_t sub_100134A4C(uint64_t a1)
{
  *a1 = off_100219C60;
  *(a1 + 24) = a1;
  *(a1 + 32) = off_100219CF0;
  *(a1 + 56) = a1 + 32;
  *(a1 + 64) = off_100219D80;
  *(a1 + 88) = a1 + 64;
  *(a1 + 96) = 0;
  sub_100134E3C(a1 + 104, a1, a1 + 32, a1 + 64, a1 + 96);
  sub_100134B34(a1 + 104, -1);
  atomic_store(0, (a1 + 128));
  *(a1 + 416) = 1;
  return a1;
}

void sub_100134B10(_Unwind_Exception *a1)
{
  sub_1001366DC(v3);
  sub_100135084(v2);
  sub_100135104(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100134B34(uint64_t result, uint64_t a2)
{
  v2 = result;
  *(result + 32) = a2;
  *(result + 312) = 0;
  atomic_store(1uLL, result);
  atomic_store(0, (result + 8));
  atomic_store(0, (result + 16));
  if (*(result + 192) == 1)
  {
    result = sub_1001343C8(result + 40);
    *(v2 + 192) = 0;
  }

  v3 = *(v2 + 296);
  if (v3)
  {
    *(v2 + 304) = atomic_fetch_add_explicit(v3, 1uLL, memory_order_relaxed);
  }

  atomic_store(1u, (v2 + 24));
  __dmb(0xBu);
  return result;
}

uint64_t sub_100134C3C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100134D14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100134DF0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100134E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 192) = 0;
  sub_100134F04(a1 + 200, a2);
  sub_100134F9C(a1 + 232, a3);
  sub_100135184(a1 + 264, a4);
  *(a1 + 296) = a5;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  return a1;
}

void sub_100134EC4(_Unwind_Exception *a1)
{
  sub_100135084(v1 + 232);
  sub_100135104(v1 + 200);
  if (*(v1 + 192) == 1)
  {
    sub_1001343C8(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100134F04(uint64_t a1, uint64_t a2)
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

uint64_t sub_100134F9C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100135034(uint64_t a1)
{
  sub_1001366DC(a1 + 264);
  sub_100135084(a1 + 232);
  sub_100135104(a1 + 200);
  if (*(a1 + 192) == 1)
  {
    sub_1001343C8(a1 + 40);
  }

  return a1;
}

uint64_t sub_100135084(uint64_t a1)
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

uint64_t sub_100135104(uint64_t a1)
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

uint64_t sub_100135184(uint64_t a1, uint64_t a2)
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

uint64_t sub_10013521C(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  v5[0] = off_100219E10;
  v5[1] = a1;
  v5[3] = v5;
  v4[0] = off_100219E90;
  v4[1] = a1;
  v4[3] = v4;
  sub_100134E3C(a1 + 8, v5, v4, a2 + 944, a2 + 568);
  sub_100135084(v4);
  sub_100135104(v5);
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  return a1;
}

void sub_1001352F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_100135084(va);
  sub_100135104(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100135380(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100219E10;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001353C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100135410(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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

uint64_t sub_1001354E0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100219E90;
  a2[1] = v2;
  return result;
}

uint64_t sub_10013551C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100135568(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10001583C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10013562C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100219F10;
  a2[1] = v2;
  return result;
}

uint64_t sub_10013566C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001356B8(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  if ((*(a2 + 336) & 1) == 0)
  {
    if ((a4 & 3) == 1)
    {
      std::mutex::lock((a1 + 856));
      operator new();
    }

    sub_100135868(a1, a3);
    sub_10013449C((a2 + 328));
    if ((atomic_fetch_or((a2 + 336), 1u) & 2) == 0)
    {
      sub_1001358CC(a1, a2);
    }

    if (atomic_fetch_add((a1 + 576), 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      if (atomic_load((a1 + 584)))
      {
        std::mutex::lock((a1 + 592));
        if (atomic_load((a1 + 584)))
        {
          std::condition_variable::notify_all((a1 + 656));
        }

        std::mutex::unlock((a1 + 592));
      }
    }

    v8 = (a1 + 560);
    if (atomic_load(v8))
    {
      v10 = sub_100192398(a2);
      std::mutex::lock(v10);
      if (atomic_load(v8))
      {
        v12 = sub_100192424(a2);
        std::condition_variable::notify_all(v12);
      }

      std::mutex::unlock(v10);
    }
  }
}

void sub_100135868(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 744));
  sub_10004EDC8((a1 + 720), &v3);
  std::condition_variable::notify_all((a1 + 808));
  std::mutex::unlock((a1 + 744));
}

void sub_1001358CC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 488));
  sub_100135928((a1 + 440), &v3);
  std::mutex::unlock((a1 + 488));
}

void sub_100135928(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    sub_1001359B0(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void sub_1001359B0(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    sub_10012091C(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1001204F4(a1, &v9);
}

void sub_100135B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100135BF4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100219FA0;
  a2[1] = v2;
  return result;
}

uint64_t sub_100135C2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100135C78(uint64_t a1, unint64_t a2, atomic_ullong *a3)
{
  v3 = *(a1 + 424);
  if (v3 >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 552);
    v8 = &v7[v3];
    while (!v7 || *v7 != a2)
    {
      ++v7;
      v6 -= 8;
      if (v7 >= v8)
      {
        return;
      }
    }

    if (v6 <= 0)
    {
      v9 = a2;
      atomic_compare_exchange_strong(v7, &v9, 0);
      if (v9 == a2)
      {
        sub_100135D24(a1, a2, 1uLL, a3);

        sub_1001358CC(a1, a2);
      }
    }
  }
}

uint64_t sub_100135D24(uint64_t a1, unint64_t a2, unint64_t a3, atomic_ullong *a4)
{
  atomic_fetch_add((a1 + 576), 1uLL);
  if (a3)
  {
    atomic_fetch_add((a1 + 560), 1uLL);
  }

  atomic_fetch_or((a2 + 336), 2u);
  sub_10013449C((a2 + 328));
  if (a4)
  {
    sub_10013449C(a4);
  }

  if (a3)
  {
    v8 = atomic_load((a2 + 336));
    if ((v8 & 4) == 0)
    {
      v9 = (a3 & 0x100) >> 8;
      do
      {
        if (*(a2 + 336))
        {
          break;
        }

        if (v9)
        {
          std::mutex::lock((a1 + 488));
          v10 = *(a1 + 480);
          std::mutex::unlock((a1 + 488));
          if (v10)
          {
            break;
          }
        }

        v31[0] = 0;
        v32 = 0;
        v11 = sub_100136074(a1, (a3 >> 16) & 1, v31);
        if (v32 == 1)
        {
          sub_1001363B0(v31);
        }

        if (v11 == -1)
        {
          v27.__m_ = sub_100192398(a2);
          v27.__owns_ = 1;
          std::mutex::lock(v27.__m_);
          v18 = sub_100192424(a2);
          v19.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          v25 = a1;
          v26 = v19.__d_.__rep_ + 200000;
          v24.__m_ = a2;
          v24.__owns_ = (a3 & 0x100) >> 8;
          *(&v24.__owns_ + 1) = *v28;
          *(&v24.__owns_ + 1) = *&v28[3];
          sub_1001361E4(v18, &v27, &v26, &v24);
          if (!v27.__owns_)
          {
            goto LABEL_25;
          }

          m = v27.__m_;
        }

        else
        {
          v24.__m_ = sub_100192398(a2);
          v24.__owns_ = 1;
          std::mutex::lock(v24.__m_);
          v12 = sub_100192424(a2);
          v13 = atomic_load((a2 + 336));
          if ((v13 & 4) == 0)
          {
            v14 = v12;
            do
            {
              if (*(a2 + 336))
              {
                break;
              }

              if (v9)
              {
                std::mutex::lock((a1 + 488));
                v15 = *(a1 + 480);
                std::mutex::unlock((a1 + 488));
                if (v15)
                {
                  break;
                }
              }

              std::condition_variable::wait(v14, &v24);
              v16 = atomic_load((a2 + 336));
            }

            while ((v16 & 4) == 0);
          }

          if (!v24.__owns_)
          {
            goto LABEL_25;
          }

          m = v24.__m_;
        }

        std::mutex::unlock(m);
LABEL_25:
        v20 = *(a2 + 336);
        if (a3 & 0x100) == 0 || (v20)
        {
          if (v20)
          {
            goto LABEL_35;
          }
        }

        else if (*(a1 + 480))
        {
          goto LABEL_35;
        }

        v21 = atomic_load((a2 + 336));
      }

      while ((v21 & 4) == 0);
    }
  }

  v22 = atomic_load((a2 + 336));
  if ((v22 & 4) != 0 && (a3 & 0x10000) != 0)
  {
    v29[0] = off_10021A020;
    v29[1] = a2;
    v29[3] = v29;
    v30 = 1;
    sub_100136074(a1, 1, v29);
    if (v30 == 1)
    {
      sub_1001363B0(v29);
    }
  }

LABEL_35:
  if (a3)
  {
    atomic_fetch_add((a1 + 560), 0xFFFFFFFFFFFFFFFFLL);
  }

  return atomic_fetch_and((a2 + 336), 0xFFFFFFFD) & 1;
}

void sub_100135FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, std::mutex *a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a20 == 1)
  {
    sub_1001363B0(&a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100136074(uint64_t a1, int a2, uint64_t a3)
{
  if (!*(a1 + 936))
  {
    return 0;
  }

  std::mutex::lock((a1 + 856));
  if (*(a1 + 936))
  {
    v6 = *(a1 + 928);
    if (v6 == (a1 + 920))
    {
      v8 = 1;
    }

    else
    {
      if (a2)
      {
        v7 = 6;
      }

      else
      {
        v7 = 4;
      }

      v8 = 1;
      do
      {
        v9 = v6[2];
        if ((sub_100134188(v9 + 8, v6[3], v7) & 1) != 0 || a2 && (*(a3 + 32) != 1 || sub_100136358(a3, v9, v6[3])))
        {
          v10 = sub_100192398(v9);
          std::mutex::lock(v10);
          atomic_fetch_and((v9 + 336), 0xFFFFFFFB);
          std::mutex::unlock(v10);
          v11 = *v6;
          v12 = v6[1];
          *(v11 + 8) = v12;
          *v12 = v11;
          --*(a1 + 936);
          operator delete(v6);
          v6 = v12;
        }

        else
        {
          if (*(a3 + 32) != 1 || sub_100136358(a3, v9, v6[3]))
          {
            v8 = 0xFFFFFFFFLL;
          }

          v6 = v6[1];
        }
      }

      while (v6 != (a1 + 920));
    }
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock((a1 + 856));
  return v8;
}

BOOL sub_1001361E4(std::condition_variable *a1, std::unique_lock<std::mutex> *a2, uint64_t *a3, uint64_t a4)
{
  do
  {
    v8 = *(a4 + 16);
    v9 = atomic_load((*a4 + 336));
    if ((v9 & 4) != 0)
    {
      return 1;
    }

    if (*(*a4 + 336))
    {
      return 1;
    }

    if (*(a4 + 8) == 1)
    {
      std::mutex::lock((v8 + 488));
      v10 = *(v8 + 480);
      std::mutex::unlock((v8 + 488));
      if (v10)
      {
        return 1;
      }
    }

    v11.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v12 = *a3;
    if (*a3 <= v11.__d_.__rep_)
    {
      break;
    }

    if (!v12)
    {
      v13.__d_.__rep_ = 0;
      goto LABEL_14;
    }

    if (v12 < 1)
    {
      if (v12 < 0xFFDF3B645A1CAC09)
      {
        v13.__d_.__rep_ = 0x8000000000000000;
        goto LABEL_14;
      }
    }

    else if (v12 > 0x20C49BA5E353F7)
    {
      v13.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

    v13.__d_.__rep_ = 1000 * v12;
LABEL_14:
    std::condition_variable::__do_timed_wait(a1, a2, v13);
  }

  while (std::chrono::system_clock::now().__d_.__rep_ < *a3);
  v14 = *(a4 + 16);
  v15 = atomic_load((*a4 + 336));
  if (v15 & 4) != 0 || (*(*a4 + 336))
  {
    return 1;
  }

  if (*(a4 + 8) != 1)
  {
    return 0;
  }

  std::mutex::lock((v14 + 488));
  v16 = *(v14 + 480) != 0;
  std::mutex::unlock((v14 + 488));
  return v16;
}

uint64_t sub_100136358(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1001363B0(uint64_t a1)
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

uint64_t sub_1001364A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10021A020;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001364E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10013652C(uint64_t a1)
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

uint64_t sub_1001365AC(uint64_t a1)
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

uint64_t sub_10013662C(uint64_t a1)
{
  sub_10013449C((a1 + 328));
  sub_100135034(a1 + 8);
  return a1;
}

uint64_t sub_100136664(uint64_t a1)
{
  v2 = a1 + 104;
  if (atomic_fetch_add((a1 + 104), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v3 = *(a1 + 136);
    *(a1 + 136) = -1;
    sub_100134188(a1 + 104, v3, 1u);
  }

  sub_100135034(v2);
  sub_1001366DC(a1 + 64);
  sub_100135084(a1 + 32);

  return sub_100135104(a1);
}

uint64_t sub_1001366DC(uint64_t a1)
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

uint64_t sub_10013675C(uint64_t a1)
{
  *(a1 + 704) &= ~1u;
  if (*(a1 + 424))
  {
    v3 = 0;
    do
    {
      v4 = atomic_exchange((*(a1 + 552) + 8 * v3), 0);
      if (v4)
      {
        sub_100135D24(a1, v4, v1 & 0xFFFFFFFFFF000000 | 0x10001, 0);
        sub_10013449C((v4 + 328));
        sub_100135034(v4 + 8);
        operator delete();
      }

      ++v3;
    }

    while (*(a1 + 424) > v3);
  }

  sub_10014FF0C((a1 + 712), &stru_10021A0D0);
  if (*(a1 + 552))
  {
    operator delete[]();
  }

  std::mutex::lock((a1 + 488));
  v5 = *(a1 + 448);
  if (*(a1 + 456) != v5)
  {
    v6 = *(a1 + 472);
    v7 = (v5 + 8 * (v6 >> 9));
    v8 = (*v7 + 8 * (v6 & 0x1FF));
    while (v8 != (*(v5 + (((*(a1 + 480) + v6) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 480) + v6) & 0x1FF)))
    {
      v9 = *v8;
      if (*v8)
      {
        sub_10013449C((v9 + 328));
        sub_100135034(v9 + 8);
        operator delete();
      }

      if ((++v8 - *v7) == 4096)
      {
        v10 = v7[1];
        ++v7;
        v8 = v10;
      }
    }
  }

  std::mutex::unlock((a1 + 488));
  sub_10013652C(a1 + 1352);
  sub_1001365AC(a1 + 1320);
  sub_10013449C((a1 + 1304));
  sub_100135034(a1 + 984);
  sub_1001366DC(a1 + 944);
  sub_1001232A4((a1 + 920));
  std::mutex::~mutex((a1 + 856));
  std::condition_variable::~condition_variable((a1 + 808));
  std::mutex::~mutex((a1 + 744));
  sub_1000285E0(a1 + 720, *(a1 + 728));
  sub_10014FD8C((a1 + 712));
  std::condition_variable::~condition_variable((a1 + 656));
  std::mutex::~mutex((a1 + 592));
  std::mutex::~mutex((a1 + 488));
  sub_100072AB4((a1 + 440));

  return sub_100136664(a1);
}

void sub_1001369E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_100136A8C(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100136A0C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100136A4C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100136A8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }
}

void sub_100136AE8(uint64_t a1@<X0>, std::unique_lock<std::mutex>::mutex_type *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  v8 = (a1 + 744);
  v9 = (a1 + 728);
  v10 = a1 + 976;
  v32 = (a1 + 104);
  do
  {
    v35.__m_ = v8;
    v35.__owns_ = 1;
    std::mutex::lock(v8);
    if ((a3 & 1) == 0)
    {
      v15 = *v9;
      if (!*v9)
      {
        goto LABEL_14;
      }

      v16 = v9;
      do
      {
        v17 = v15[4];
        v18 = v17 >= a2;
        v19 = v17 < a2;
        if (v18)
        {
          v16 = v15;
        }

        v15 = v15[v19];
      }

      while (v15);
      if (v16 == v9 || v16[4] > a2 || v16[5] == v10)
      {
LABEL_14:
        __lk.__m_ = 0;
        *a4 = 0;
        a4[1] = v9;
        atomic_store(atomic_exchange(&__lk, 0), a4);
        sub_10013449C(&__lk);
LABEL_15:
        v14 = 1;
        goto LABEL_16;
      }
    }

    __lk.__m_ = a2;
    *&__lk.__owns_ = v10;
    v11 = sub_10011FF14(a1 + 720, &__lk, &__lk);
    v12 = v11;
    if (v13)
    {
      __lk.__m_ = 0;
      *a4 = 0;
      a4[1] = v11;
      atomic_store(atomic_exchange(&__lk, 0), a4);
      sub_10013449C(&__lk);
      v14 = 1;
      goto LABEL_16;
    }

    v20 = v11[5];
    if (v20 != v10)
    {
      if (!v35.__owns_)
      {
        std::__throw_system_error(1, "unique_lock::unlock: not locked");
        __break(1u);
      }

      std::mutex::unlock(v35.__m_);
      v35.__owns_ = 0;
      sub_100134008(&__lk, (v20 + 328));
      if (!__lk.__m_ || (__lk.__m_[4].__m_.__opaque[48] & 1) != 0)
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_26;
      }

      if (*&__lk.__m_->__m_.__opaque[24] == a2)
      {
        *a4 = 0;
        a4[1] = v12;
        atomic_store(atomic_exchange(&__lk, 0), a4);
      }

      else
      {
        if (*&__lk.__m_->__m_.__opaque[24] != -1 || (a3 & 1) != 0)
        {
LABEL_26:
          sub_10013449C(&__lk);
          v36[0] = off_10021A178;
          v36[1] = a2;
          v36[3] = v36;
          v37 = 1;
          v21 = sub_100136074(a1, 0, v36);
          if (v37 == 1)
          {
            sub_1001363B0(v36);
          }

          if (v21 == -1)
          {
            __lk.__m_ = 0;
            v29 = atomic_load(v32);
            if (v29)
            {
              v30 = v29;
              while (1)
              {
                atomic_compare_exchange_strong(v32, &v30, v29 + 1);
                if (v30 == v29)
                {
                  break;
                }

                v29 = v30;
                if (!v30)
                {
                  goto LABEL_64;
                }
              }

              v31 = *(a1 + 400);
              v30 = v32;
              if (v31)
              {
                *(a1 + 408) = atomic_fetch_add_explicit(v31, 1uLL, memory_order_relaxed);
                v30 = v32;
              }
            }

            else
            {
              v30 = 0;
            }

LABEL_64:
            atomic_store(v30, &__lk);
            *a4 = 0;
            a4[1] = v9;
            atomic_store(atomic_exchange(&__lk, 0), a4);
            sub_10013449C(&__lk);
            goto LABEL_15;
          }

          atomic_fetch_add((a1 + 560), 1uLL);
          __lk.__m_ = sub_100192398(v20);
          __lk.__owns_ = 1;
          std::mutex::lock(__lk.__m_);
          if ((*(v20 + 336) & 1) == 0 && *(v20 + 40) == -1)
          {
            v22 = sub_100192424(v20);
            std::condition_variable::wait(v22, &__lk);
          }

          atomic_fetch_add((a1 + 560), 0xFFFFFFFFFFFFFFFFLL);
          if (__lk.__owns_)
          {
            std::mutex::unlock(__lk.__m_);
          }

          goto LABEL_47;
        }

LABEL_59:
        v33 = 0;
        *a4 = 0;
        a4[1] = v9;
        atomic_store(atomic_exchange(&v33, 0), a4);
        sub_10013449C(&v33);
      }

      sub_10013449C(&__lk);
      goto LABEL_15;
    }

    v23 = *v9;
    if (*v9)
    {
      v24 = v9;
      while (1)
      {
        v25 = v23[4];
        v18 = v25 >= a2;
        v26 = v25 < a2;
        if (v18)
        {
          v24 = v23;
        }

        v23 = v23[v26];
        if (!v23)
        {
          if (v24 == v9)
          {
            break;
          }

          if (v24[4] > a2)
          {
            break;
          }

          v27 = v24[5];
          if (v27 != v10)
          {
            v28 = *(v27 + 328);
            if (v28)
            {
              if ((*(v28 + 312) & 1) == 0)
              {
                break;
              }
            }
          }

          if ((*(a1 + 704) & 1) == 0)
          {
            break;
          }

          std::condition_variable::wait((a1 + 808), &v35);
          v23 = *v9;
          v24 = v9;
          if (!*v9)
          {
            break;
          }
        }
      }

LABEL_47:
      v14 = 0;
      goto LABEL_16;
    }

    v14 = 0;
LABEL_16:
    if (v35.__owns_)
    {
      std::mutex::unlock(v35.__m_);
    }

    if (v14)
    {
      return;
    }
  }

  while ((*(a1 + 704) & 1) != 0);
  v35.__m_ = 0;
  *a4 = 0;
  a4[1] = v9;
  atomic_store(atomic_exchange(&v35, 0), a4);
  sub_10013449C(&v35);
}

void sub_100136F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12, std::mutex *a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  if (a14 == 1)
  {
    std::mutex::unlock(a13);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *sub_100136FBC@<X0>(uint64_t a1@<X0>, unint64_t **a2@<X8>, uint64_t a3@<X1>)
{
  v10 = 0;
  std::mutex::lock((a1 + 488));
  v6 = *(a1 + 480);
  if (v6)
  {
    v7 = *(*(*(a1 + 448) + ((*(a1 + 472) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 472) & 0x1FFLL));
    ++*(a1 + 472);
    *(a1 + 480) = v6 - 1;
    sub_100073AB4(a1 + 440, 1);
    sub_10013726C(a1, v7, a3, v11);
    sub_100133578(&v10, v11);
    sub_10013449C(v11);
  }

  else
  {
    v7 = 0;
  }

  std::mutex::unlock((a1 + 488));
  v8 = atomic_load((a1 + 576));
  if (v8 + v6 >= *(a1 + 432))
  {
    v12[0] = 0;
    v13 = 0;
    sub_100136074(a1, 0, v12);
    if (v13 == 1)
    {
      sub_1001363B0(v12);
    }
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_1001374FC;
    v11[3] = &unk_10021A1E8;
    v11[4] = a1;
    sub_10014FE54((a1 + 712), v11);
  }

  *a2 = v7;
  a2[1] = 0;
  atomic_store(atomic_exchange(&v10, 0), a2 + 1);
  return sub_10013449C(&v10);
}

void sub_100137160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    sub_1001363B0(&a15);
  }

  sub_10013449C(&a9);
  _Unwind_Resume(a1);
}

unint64_t sub_1001371C4(void *a1)
{
  v1 = atomic_load(a1 + 71);
  v2 = a1[53];
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v7 = -1;
  do
  {
    v6 = a1[69];
    v8 = *(v6 + 8 * v3);
    if (v8 && v1 - *(v8 + 312) < v7)
    {
      v5 = *(v6 + 8 * v3);
      v7 = v1 - *(v8 + 312);
      v4 = v3;
    }

    ++v3;
  }

  while (v2 != v3);
  if (!v5)
  {
    return 0;
  }

  v9 = v5;
  atomic_compare_exchange_strong((a1[69] + 8 * v4), &v9, 0);
  if (v9 != v5 || (sub_100135D24(a1, v5, 0x101uLL, 0) & 1) == 0)
  {
    return 0;
  }

  return v5;
}

atomic_ullong *sub_10013726C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  sub_1001375B4(a2, a3);
  v7 = (a2 + 1);
  v14 = 0;
  v8 = atomic_load(a2 + 1);
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      atomic_compare_exchange_strong(v7, &v9, v8 + 1);
      if (v9 == v8)
      {
        break;
      }

      v8 = v9;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v10 = a2[38];
    if (v10)
    {
      a2[39] = atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  atomic_store(v7, &v14);
  if (*(a1 + 424))
  {
    v11 = 0;
    while (1)
    {
      v12 = 0;
      atomic_compare_exchange_strong((*(a1 + 552) + 8 * v11), &v12, a2);
      if (!v12)
      {
        break;
      }

      if (*(a1 + 424) <= ++v11)
      {
        goto LABEL_12;
      }
    }

    *a4 = 0;
    atomic_store(atomic_exchange(&v14, 0), a4);
  }

  else
  {
LABEL_12:
    *a4 = 0;
  }

  return sub_10013449C(&v14);
}

uint64_t sub_1001373C8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10021A178;
  a2[1] = v2;
  return result;
}

uint64_t sub_100137408(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t *sub_100137454(unint64_t *a1, atomic_ullong *a2, int a3)
{
  v3 = a2;
  *a1 = 0;
  if (a2)
  {
    v5 = atomic_load(a2);
    if (!v5)
    {
LABEL_6:
      v3 = 0;
      goto LABEL_7;
    }

    v6 = v5;
    while (1)
    {
      atomic_compare_exchange_strong(a2, &v6, v5 + 1);
      if (v6 == v5)
      {
        break;
      }

      v5 = v6;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v8 = a2[37];
    if (v8)
    {
      a2[38] = atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    if (a3 && !sub_1001340AC(a2))
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        v9 = v3[4];
        v3[4] = -1;
        sub_100134188(v3, v9, 1u);
      }

      goto LABEL_6;
    }
  }

LABEL_7:
  atomic_store(v3, a1);
  return a1;
}

uint64_t sub_1001374FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1001371C4(v1);
  if (v2)
  {
    sub_1001358CC(v1, v2);
  }

  v4[0] = 0;
  v5 = 0;
  result = sub_100136074(v1, 0, v4);
  if (v5 == 1)
  {
    return sub_1001363B0(v4);
  }

  return result;
}

void sub_100137594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    sub_1001363B0(&a9);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *sub_1001375B4(uint64_t a1, uint64_t a2)
{
  atomic_store(0, (a1 + 336));
  v3 = (a1 + 8);
  sub_100134B34(a1 + 8, a2);
  v9 = 0;
  v4 = atomic_load(v3);
  if (v4)
  {
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
        goto LABEL_9;
      }
    }

    v6 = *(a1 + 304);
    v5 = v3;
    if (v6)
    {
      *(a1 + 312) = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
      v5 = v3;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_9:
  atomic_store(v5, &v9);
  sub_100133578((a1 + 328), &v9);
  result = sub_10013449C(&v9);
  if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v8 = *(a1 + 40);
    *(a1 + 40) = -1;
    return sub_100134188(v3, v8, 1u);
  }

  return result;
}

void sub_100137684(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 304) = **(a1 + 296);
  sub_10013772C(a1 + 40, a2, a3);
  atomic_store(2u, (a1 + 24));
  if (atomic_load((a1 + 8)))
  {

    std::__cxx_atomic_notify_all((a1 + 24));
  }
}

void sub_1001376EC(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(0, (v1 + 24));
  *(v1 + 312) = 1;
  if (atomic_load((v1 + 8)))
  {
    std::__cxx_atomic_notify_all((v1 + 24));
  }

  __cxa_rethrow();
}

uint64_t sub_10013772C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 152) == 1)
  {
    sub_1001343C8(a1);
    *(a1 + 152) = 0;
  }

  sub_100137790(a1, a2, a3);
  *(a1 + 152) = 1;
  return a1;
}

uint64_t sub_100137790(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = *a3;
  *a1 = v5;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = v6;
  *(a1 + 24) = 1018212795;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 850045863;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 125) = 0u;
  *(a1 + 144) = -1;
  if (v4)
  {
    sub_10000E984(v4);
  }

  return a1;
}

void sub_100137810(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 304) = **(a1 + 296);
  sub_1001378B8(a1 + 40, a2, a3);
  atomic_store(2u, (a1 + 24));
  if (atomic_load((a1 + 8)))
  {

    std::__cxx_atomic_notify_all((a1 + 24));
  }
}

void sub_100137878(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(0, (v1 + 24));
  *(v1 + 312) = 1;
  if (atomic_load((v1 + 8)))
  {
    std::__cxx_atomic_notify_all((v1 + 24));
  }

  __cxa_rethrow();
}

uint64_t sub_1001378B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 152) == 1)
  {
    sub_1001343C8(a1);
    *(a1 + 152) = 0;
  }

  sub_10013791C(a1, a2, a3);
  *(a1 + 152) = 1;
  return a1;
}

uint64_t sub_10013791C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a3;
    *a1 = v5;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v6 = *a3;
    *a1 = v5;
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = v6;
  *(a1 + 24) = 1018212795;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 850045863;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 125) = 0u;
  *(a1 + 144) = -1;
  if (v4)
  {
    sub_10000E984(v4);
  }

  return a1;
}

uint64_t sub_1001379A8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10001583C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *sub_100137A88(void *a1, void *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020F7B0;
  sub_100137AE4(a1 + 3, a2, a3);
  return a1;
}

void *sub_100137AE4(void *a1, void *a2, void *a3)
{
  v5 = sub_1000440E0(a1, a3);
  *v5 = off_100219B20;
  v6 = a2[6];
  v5[5] = a2[5];
  v5[6] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a2[8];
  a1[7] = a2[7];
  a1[8] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100134008(a1 + 9, a2 + 9);
  return a1;
}

void sub_100137B6C(_Unwind_Exception *a1)
{
  v3 = v1[8];
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = v1[6];
  if (v4)
  {
    sub_10000E984(v4);
  }

  sub_10004413C(v1);
  _Unwind_Resume(a1);
}

uLong sub_100137B98(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    if (result != 2)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v3 = sub_100001940(exception, "Unknown checksum found", 0x16u);
    }

    return crc32(0, 0, 0) << 32;
  }

  return result;
}

uint64_t sub_100137C0C(uint64_t a1, uint64_t a2)
{
  *(a1 + 44) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v54 = &_mh_execute_header;
  sub_1000A56E0("segment_num_t", 0, &v54, 2);
  *(a1 + 60) = 0;
  v54 = &_mh_execute_header;
  sub_1000A56E0("segment_count_t", 0, &v54, 2);
  *(a1 + 80) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  sub_10012F2D4((a1 + 80));
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 84) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  sub_10012F2D4((a1 + 352));
  *(a1 + 356) = 0;
  *(a1 + 488) = 0;
  v54 = &_mh_execute_header;
  LODWORD(v55) = 2;
  sub_1000A56E0("image_variant_type", 0, &v54, 3);
  *(a1 + 492) = 0;
  v4 = *a2;
  LODWORD(v54) = 2037149547;
  sub_1000A56E0("header_signature", v4, &v54, 1);
  *a1 = 2037149547;
  v5 = bswap32(*(a2 + 4));
  LODWORD(v54) = 4;
  sub_1000A56E0("version_t", v5, &v54, 1);
  *(a1 + 4) = 4;
  v6 = bswap32(*(a2 + 8));
  LODWORD(v54) = 512;
  sub_1000A56E0("header_size_t", v6, &v54, 1);
  *(a1 + 8) = 512;
  sub_10014268C(&v54, bswap32(*(a2 + 12)));
  *(a1 + 12) = v54;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = bswap64(*(a2 + 24));
  *(a1 + 32) = bswap64(*(a2 + 32));
  *(a1 + 40) = bswap64(*(a2 + 40));
  *(a1 + 48) = bswap64(*(a2 + 48));
  v7 = bswap32(*(a2 + 56));
  v54 = &_mh_execute_header;
  sub_1000A56E0("segment_num_t", v7, &v54, 2);
  *(a1 + 56) = v7;
  v8 = bswap32(*(a2 + 60));
  v54 = &_mh_execute_header;
  sub_1000A56E0("segment_count_t", v8, &v54, 2);
  *(a1 + 60) = v8;
  *(a1 + 64) = *(a2 + 64);
  sub_10012F2D4(&v45);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  v51 = *(a2 + 176);
  v52 = v10;
  v53 = *(a2 + 208);
  v11 = *(a2 + 96);
  v12 = *(a2 + 128);
  v47 = *(a2 + 112);
  v48 = v12;
  v49 = *(a2 + 144);
  v50 = v9;
  v45 = *(a2 + 80);
  v46 = v11;
  v59 = *(a2 + 152);
  v60 = *(a2 + 168);
  v61 = *(a2 + 184);
  v62 = *(a2 + 200);
  v55 = *(a2 + 88);
  v56 = *(a2 + 104);
  v57 = *(a2 + 120);
  v58 = *(a2 + 136);
  v54 = v45;
  sub_100139F14(&v54, &v36);
  *(a1 + 80) = v36;
  v13 = v42;
  *(a1 + 152) = v41;
  *(a1 + 168) = v13;
  v14 = v44;
  *(a1 + 184) = v43;
  *(a1 + 200) = v14;
  v15 = v38;
  *(a1 + 88) = v37;
  *(a1 + 104) = v15;
  v16 = v40;
  *(a1 + 120) = v39;
  *(a1 + 136) = v16;
  *(a1 + 216) = bswap64(*(a2 + 216));
  *(a1 + 224) = bswap64(*(a2 + 224));
  v17 = *(a2 + 232);
  v18 = *(a2 + 248);
  v19 = *(a2 + 280);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 280) = v19;
  *(a1 + 232) = v17;
  *(a1 + 248) = v18;
  *(a1 + 296) = bswap64(*(a2 + 296));
  *(a1 + 304) = bswap64(*(a2 + 304));
  v20 = *(a2 + 312);
  v21 = *(a2 + 328);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 312) = v20;
  *(a1 + 328) = v21;
  sub_10012F2D4(&v45);
  v22 = *(a2 + 464);
  v51 = *(a2 + 448);
  v52 = v22;
  v23 = *(a2 + 400);
  v47 = *(a2 + 384);
  v48 = v23;
  v24 = *(a2 + 432);
  v49 = *(a2 + 416);
  v50 = v24;
  v25 = *(a2 + 368);
  v45 = *(a2 + 352);
  v46 = v25;
  v26 = *(a2 + 440);
  v59 = *(a2 + 424);
  v60 = v26;
  v27 = *(a2 + 472);
  v61 = *(a2 + 456);
  v62 = v27;
  v28 = *(a2 + 376);
  v55 = *(a2 + 360);
  v56 = v28;
  v29 = *(a2 + 408);
  v57 = *(a2 + 392);
  v53 = *(a2 + 480);
  v58 = v29;
  v54 = v45;
  sub_100139F14(&v54, &v36);
  *(a1 + 352) = v36;
  v30 = v42;
  *(a1 + 424) = v41;
  *(a1 + 440) = v30;
  v31 = v44;
  *(a1 + 456) = v43;
  *(a1 + 472) = v31;
  v32 = v38;
  *(a1 + 360) = v37;
  *(a1 + 376) = v32;
  v33 = v40;
  *(a1 + 392) = v39;
  *(a1 + 408) = v33;
  v34 = bswap32(*(a2 + 488));
  v54 = &_mh_execute_header;
  LODWORD(v55) = 2;
  sub_1000A56E0("image_variant_type", v34, &v54, 3);
  *(a1 + 488) = v34;
  *(a1 + 492) = bswap64(*(a2 + 492));
  return a1;
}

uint64_t sub_100138690(uint64_t a1, uint64_t a2)
{
  if (sub_1000E9608())
  {
    *&v12 = "*udif::header::write(char *)";
    *(&v12 + 1) = 20;
    v13 = 2;
    sub_100138850(v14, &v12);
    sub_1001389BC(v15, a1);
    std::ostream::~ostream();
    sub_10013F58C(v14);
    std::ios::~ios();
  }

  *a2 = *a1;
  *(a2 + 4) = bswap32(*(a1 + 4));
  *(a2 + 8) = bswap32(*(a1 + 8));
  *(a2 + 12) = bswap32(*(a1 + 12));
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = bswap64(*(a1 + 24));
  *(a2 + 32) = bswap64(*(a1 + 32));
  *(a2 + 40) = bswap64(*(a1 + 40));
  *(a2 + 48) = bswap64(*(a1 + 48));
  *(a2 + 56) = bswap32(*(a1 + 56));
  *(a2 + 60) = bswap32(*(a1 + 60));
  *(a2 + 64) = *(a1 + 64);
  v4 = sub_10013A158(a1 + 80, a2 + 80);
  *v4 = bswap64(*(a1 + 216));
  *(v4 + 8) = bswap64(*(a1 + 224));
  v5 = *(a1 + 232);
  v6 = *(a1 + 248);
  v7 = *(a1 + 280);
  *(v4 + 48) = *(a1 + 264);
  *(v4 + 64) = v7;
  *(v4 + 16) = v5;
  *(v4 + 32) = v6;
  *(v4 + 80) = bswap64(*(a1 + 296));
  *(v4 + 88) = bswap64(*(a1 + 304));
  v9 = *(a1 + 312);
  v8 = *(a1 + 328);
  *(v4 + 128) = *(a1 + 344);
  *(v4 + 96) = v9;
  *(v4 + 112) = v8;
  v10 = sub_10013A158(a1 + 352, v4 + 136);
  *v10 = bswap32(*(a1 + 488));
  *(v10 + 4) = bswap64(*(a1 + 492));
  return v10 + 12;
}

void sub_10013883C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100138978(va);
  _Unwind_Resume(a1);
}

void *sub_100138850(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100142B84(a1, a2);
  *a1 = off_10021A280;
  a1[45] = &off_10021A380;
  a1[46] = &off_10021A3A8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021A280;
  a1[45] = off_10021A308;
  a1[46] = off_10021A330;
  return a1;
}

void sub_100138954(_Unwind_Exception *a1)
{
  sub_10013F58C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100138978(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10013F58C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1001389BC(void *a1, uint64_t a2)
{
  sub_100001FE8(a1, "header (", 8);
  v4 = std::ostream::operator<<();
  v5 = sub_100001FE8(v4, "):", 2);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(v138, &std::ctype<char>::id);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  v7 = *(a2 + 12);
  v112 = *(a2 + 60);
  v113 = *(a2 + 56);
  v110 = *(a2 + 72);
  v111 = *(a2 + 64);
  v8 = *(a2 + 80);
  v9 = *(a2 + 168);
  v134 = *(a2 + 152);
  v135 = v9;
  v10 = *(a2 + 200);
  v136 = *(a2 + 184);
  v137 = v10;
  v11 = *(a2 + 104);
  v130 = *(a2 + 88);
  v131 = v11;
  v12 = *(a2 + 136);
  v132 = *(a2 + 120);
  v133 = v12;
  v13 = *(a2 + 248);
  v126 = *(a2 + 232);
  v127 = v13;
  v14 = *(a2 + 280);
  v128 = *(a2 + 264);
  v129 = v14;
  v15 = *(a2 + 328);
  v123 = *(a2 + 312);
  v124 = v15;
  v125 = *(a2 + 344);
  v16 = *(a2 + 352);
  v17 = *(a2 + 440);
  v119 = *(a2 + 424);
  v120 = v17;
  v18 = *(a2 + 472);
  v121 = *(a2 + 456);
  v122 = v18;
  v19 = *(a2 + 376);
  v115 = *(a2 + 360);
  v116 = v19;
  v20 = *(a2 + 408);
  v117 = *(a2 + 392);
  v118 = v20;
  v109 = *(a2 + 488);
  v21 = sub_100001FE8(a1, "signature", 9);
  v22 = sub_100001FE8(v21, ": ", 2);
  v138[23] = 4;
  strcpy(v138, "koly");
  v23 = sub_100001FE8(v22, v138, 4);
  if ((v138[23] & 0x80000000) != 0)
  {
    operator delete(*v138);
  }

  std::ios_base::getloc((v23 + *(*v23 - 24)));
  v24 = std::locale::use_facet(v138, &std::ctype<char>::id);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  v25 = sub_100001FE8(a1, "version", 7);
  sub_100001FE8(v25, ": ", 2);
  v26 = std::ostream::operator<<();
  std::ios_base::getloc((v26 + *(*v26 - 24)));
  v27 = std::locale::use_facet(v138, &std::ctype<char>::id);
  (v27->__vftable[2].~facet_0)(v27, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  v28 = sub_100001FE8(a1, "header_size", 11);
  sub_100001FE8(v28, ": ", 2);
  v29 = std::ostream::operator<<();
  std::ios_base::getloc((v29 + *(*v29 - 24)));
  v30 = std::locale::use_facet(v138, &std::ctype<char>::id);
  (v30->__vftable[2].~facet_0)(v30, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  v31 = sub_100001FE8(a1, "flags", 5);
  v32 = sub_100001FE8(v31, ": ", 2);
  *v138 = v7;
  v33 = sub_100142C4C(v32, v138);
  std::ios_base::getloc((v33 + *(*v33 - 24)));
  v34 = std::locale::use_facet(v138, &std::ctype<char>::id);
  (v34->__vftable[2].~facet_0)(v34, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  v35 = sub_100001FE8(a1, "run_data_fork_offset", 20);
  v36 = sub_100001FE8(v35, ": ", 2);
  v37 = *v36;
  v38 = v36 + *(*v36 - 24);
  v39 = *(v38 + 2);
  *(v38 + 2) = v39 & 0xFFFFFFB5 | 8;
  *(v36 + *(v37 - 24) + 8) |= 0x200u;
  v138[0] = 48;
  sub_1000283FC(v36, v138);
  std::ostream::operator<<();
  v40 = *v36;
  *(v36 + *(*v36 - 24) + 8) = v39;
  std::ios_base::getloc((v36 + *(v40 - 24)));
  v41 = std::locale::use_facet(v138, &std::ctype<char>::id);
  (v41->__vftable[2].~facet_0)(v41, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  v42 = sub_100001FE8(a1, "data_fork_offset", 16);
  v43 = sub_100001FE8(v42, ": ", 2);
  v44 = *v43;
  v45 = v43 + *(*v43 - 24);
  LODWORD(v36) = *(v45 + 2);
  *(v45 + 2) = v36 & 0xFFFFFFB5 | 8;
  *(v43 + *(v44 - 24) + 8) |= 0x200u;
  v138[0] = 48;
  sub_1000283FC(v43, v138);
  std::ostream::operator<<();
  v46 = *v43;
  *(v43 + *(*v43 - 24) + 8) = v36;
  std::ios_base::getloc((v43 + *(v46 - 24)));
  v47 = std::locale::use_facet(v138, &std::ctype<char>::id);
  (v47->__vftable[2].~facet_0)(v47, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  v48 = sub_100001FE8(a1, "data_fork_len", 13);
  sub_100001FE8(v48, ": ", 2);
  v49 = std::ostream::operator<<();
  std::ios_base::getloc((v49 + *(*v49 - 24)));
  v50 = std::locale::use_facet(v138, &std::ctype<char>::id);
  (v50->__vftable[2].~facet_0)(v50, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  v51 = sub_100001FE8(a1, "rsrc_fork_offset", 16);
  v52 = sub_100001FE8(v51, ": ", 2);
  v53 = *v52;
  v54 = v52 + *(*v52 - 24);
  LODWORD(v36) = *(v54 + 2);
  *(v54 + 2) = v36 & 0xFFFFFFB5 | 8;
  *(v52 + *(v53 - 24) + 8) |= 0x200u;
  v138[0] = 48;
  sub_1000283FC(v52, v138);
  std::ostream::operator<<();
  v55 = *v52;
  *(v52 + *(*v52 - 24) + 8) = v36;
  std::ios_base::getloc((v52 + *(v55 - 24)));
  v56 = std::locale::use_facet(v138, &std::ctype<char>::id);
  (v56->__vftable[2].~facet_0)(v56, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  v57 = sub_100001FE8(a1, "rsrc_fork_len", 13);
  sub_100001FE8(v57, ": ", 2);
  v58 = std::ostream::operator<<();
  std::ios_base::getloc((v58 + *(*v58 - 24)));
  v59 = std::locale::use_facet(v138, &std::ctype<char>::id);
  (v59->__vftable[2].~facet_0)(v59, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  v60 = sub_100001FE8(a1, "segment_num", 11);
  v61 = sub_100001FE8(v60, ": ", 2);
  *v138 = v113;
  v62 = sub_100142D18(v61, v138);
  std::ios_base::getloc((v62 + *(*v62 - 24)));
  v63 = std::locale::use_facet(v138, &std::ctype<char>::id);
  (v63->__vftable[2].~facet_0)(v63, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  v64 = sub_100001FE8(a1, "segment_count", 13);
  v65 = sub_100001FE8(v64, ": ", 2);
  *v138 = v112;
  v66 = sub_100142D58(v65, v138);
  std::ios_base::getloc((v66 + *(*v66 - 24)));
  v67 = std::locale::use_facet(v138, &std::ctype<char>::id);
  (v67->__vftable[2].~facet_0)(v67, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  *v138 = v111;
  *&v138[8] = v110;
  v68 = sub_100001FE8(a1, "segment_id", 10);
  v69 = sub_100001FE8(v68, ": ", 2);
  sub_100142D98(v69, v138, 16);
  std::ios_base::getloc((v69 + *(*v69 - 24)));
  v70 = std::locale::use_facet(&v114, &std::ctype<char>::id);
  (v70->__vftable[2].~facet_0)(v70, 10);
  std::locale::~locale(&v114);
  std::ostream::put();
  std::ostream::flush();
  *v138 = v8;
  v139 = v134;
  v140 = v135;
  v141 = v136;
  v142 = v137;
  *&v138[8] = v130;
  *&v138[24] = v131;
  *&v138[40] = v132;
  *&v138[56] = v133;
  v71 = sub_100001FE8(a1, "data_fork_checksum", 18);
  v72 = sub_100001FE8(v71, ": ", 2);
  sub_10013B364(v72, v138);
  std::ios_base::getloc((v72 + *(*v72 - 24)));
  v73 = std::locale::use_facet(&v114, &std::ctype<char>::id);
  (v73->__vftable[2].~facet_0)(v73, 10);
  std::locale::~locale(&v114);
  std::ostream::put();
  std::ostream::flush();
  v74 = sub_100001FE8(a1, "xml_offset", 10);
  v75 = sub_100001FE8(v74, ": ", 2);
  v76 = *v75;
  v77 = v75 + *(*v75 - 24);
  LODWORD(v36) = *(v77 + 2);
  *(v77 + 2) = v36 & 0xFFFFFFB5 | 8;
  *(v75 + *(v76 - 24) + 8) |= 0x200u;
  v138[0] = 48;
  sub_1000283FC(v75, v138);
  std::ostream::operator<<();
  v78 = *v75;
  *(v75 + *(*v75 - 24) + 8) = v36;
  std::ios_base::getloc((v75 + *(v78 - 24)));
  v79 = std::locale::use_facet(v138, &std::ctype<char>::id);
  (v79->__vftable[2].~facet_0)(v79, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  v80 = sub_100001FE8(a1, "xml_length", 10);
  sub_100001FE8(v80, ": ", 2);
  v81 = std::ostream::operator<<();
  std::ios_base::getloc((v81 + *(*v81 - 24)));
  v82 = std::locale::use_facet(v138, &std::ctype<char>::id);
  (v82->__vftable[2].~facet_0)(v82, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  *v138 = v126;
  *&v138[16] = v127;
  *&v138[32] = v128;
  *&v138[48] = v129;
  v83 = sub_100001FE8(a1, "external", 8);
  v84 = sub_100001FE8(v83, ": ", 2);
  sub_100142D98(v84, v138, 64);
  std::ios_base::getloc((v84 + *(*v84 - 24)));
  v85 = std::locale::use_facet(&v114, &std::ctype<char>::id);
  (v85->__vftable[2].~facet_0)(v85, 10);
  std::locale::~locale(&v114);
  std::ostream::put();
  std::ostream::flush();
  v86 = sub_100001FE8(a1, "code_sign_offset", 16);
  v87 = sub_100001FE8(v86, ": ", 2);
  v88 = *v87;
  v89 = v87 + *(*v87 - 24);
  LODWORD(v36) = *(v89 + 2);
  *(v89 + 2) = v36 & 0xFFFFFFB5 | 8;
  *(v87 + *(v88 - 24) + 8) |= 0x200u;
  v138[0] = 48;
  sub_1000283FC(v87, v138);
  std::ostream::operator<<();
  v90 = *v87;
  *(v87 + *(*v87 - 24) + 8) = v36;
  std::ios_base::getloc((v87 + *(v90 - 24)));
  v91 = std::locale::use_facet(v138, &std::ctype<char>::id);
  (v91->__vftable[2].~facet_0)(v91, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  v92 = sub_100001FE8(a1, "code_sign_length", 16);
  sub_100001FE8(v92, ": ", 2);
  v93 = std::ostream::operator<<();
  std::ios_base::getloc((v93 + *(*v93 - 24)));
  v94 = std::locale::use_facet(v138, &std::ctype<char>::id);
  (v94->__vftable[2].~facet_0)(v94, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  *v138 = v123;
  *&v138[16] = v124;
  *&v138[32] = v125;
  v95 = sub_100001FE8(a1, "reserved", 8);
  v96 = sub_100001FE8(v95, ": ", 2);
  sub_100142D98(v96, v138, 40);
  std::ios_base::getloc((v96 + *(*v96 - 24)));
  v97 = std::locale::use_facet(&v114, &std::ctype<char>::id);
  (v97->__vftable[2].~facet_0)(v97, 10);
  std::locale::~locale(&v114);
  std::ostream::put();
  std::ostream::flush();
  *v138 = v16;
  v139 = v119;
  v140 = v120;
  v141 = v121;
  v142 = v122;
  *&v138[8] = v115;
  *&v138[24] = v116;
  *&v138[40] = v117;
  *&v138[56] = v118;
  v98 = sub_100001FE8(a1, "master_checksum", 15);
  v99 = sub_100001FE8(v98, ": ", 2);
  sub_10013B364(v99, v138);
  std::ios_base::getloc((v99 + *(*v99 - 24)));
  v100 = std::locale::use_facet(&v114, &std::ctype<char>::id);
  (v100->__vftable[2].~facet_0)(v100, 10);
  std::locale::~locale(&v114);
  std::ostream::put();
  std::ostream::flush();
  v101 = sub_100001FE8(a1, "image_variant", 13);
  v102 = sub_100001FE8(v101, ": ", 2);
  *v138 = v109;
  v103 = sub_100142F2C(v102, v138);
  std::ios_base::getloc((v103 + *(*v103 - 24)));
  v104 = std::locale::use_facet(v138, &std::ctype<char>::id);
  (v104->__vftable[2].~facet_0)(v104, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  v105 = sub_100001FE8(a1, "sector_count", 12);
  sub_100001FE8(v105, ": ", 2);
  v106 = std::ostream::operator<<();
  std::ios_base::getloc((v106 + *(*v106 - 24)));
  v107 = std::locale::use_facet(v138, &std::ctype<char>::id);
  (v107->__vftable[2].~facet_0)(v107, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_100139E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (*(v18 - 233) < 0)
  {
    operator delete(*(v18 - 256));
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100139F14@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100131C34(a2, bswap32(*a1));
  v4[1] = 0;
  v8 = bswap32(*(a1 + 4));
  sub_100131CCC(v4 + 1, &v8);
  v6 = *a2;
  if (*a2)
  {
    v7 = v6 == 10;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (v6 == 2)
    {
      *(a2 + 8) = bswap32(*(a1 + 8));
    }

    else
    {
      *(a2 + 72) = *(a1 + 72);
      *(a2 + 88) = *(a1 + 88);
      *(a2 + 104) = *(a1 + 104);
      *(a2 + 120) = *(a1 + 120);
      *(a2 + 8) = *(a1 + 8);
      *(a2 + 24) = *(a1 + 24);
      *(a2 + 40) = *(a1 + 40);
      result = *(a1 + 56);
      *(a2 + 56) = result;
    }
  }

  return result;
}

uint64_t sub_10013A038(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2 == -1)
  {
    sub_100015D74();
  }

  v6 = &v5;
  (off_10021A488[v2])(&v7, &v6, a2 + 4);
  *a1 = v7;
  *(a1 + 72) = v12;
  *(a1 + 88) = v13;
  *(a1 + 104) = v14;
  *(a1 + 120) = v15;
  *(a1 + 8) = v8;
  *(a1 + 24) = v9;
  *(a1 + 40) = v10;
  *(a1 + 56) = v11;
  return a1;
}

unsigned int *sub_10013A110@<X0>(unsigned int *result@<X0>, unsigned int *a2@<X8>)
{
  v3 = bswap32(*result);
  if ((v3 & 0x80000000) != 0)
  {
    result = sub_10013FC44(&v4, v3);
    v3 = v4;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_10013A158(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  *(a2 + 4) = bswap32(*(a1 + 4));
  v2 = (a2 + 8);
  v3 = *a1;
  if (*a1)
  {
    v4 = v3 == 10;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0;
  }

  else if (v3 == 2)
  {
    *(a2 + 8) = bswap32(*(a1 + 8));
    v2 = (a2 + 12);
    v5 = 4;
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v8 = *(a1 + 56);
    *(a2 + 40) = *(a1 + 40);
    *(a2 + 56) = v8;
    *v2 = v6;
    *(a2 + 24) = v7;
    v9 = *(a1 + 72);
    v10 = *(a1 + 88);
    v11 = *(a1 + 120);
    *(a2 + 104) = *(a1 + 104);
    *(a2 + 120) = v11;
    *(a2 + 72) = v9;
    *(a2 + 88) = v10;
    v5 = 128;
  }

  bzero(v2, 128 - v5);
  return v2 - v5 + 128;
}

int *sub_10013A214(int *a1)
{
  result = sub_10012F418(a1, 2);
  *(result + 1) = 0;
  *(result + 2) = 0;
  return result;
}

uint64_t sub_10013A270@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 8);
  v4 = *(result + 8) + v3;
  v5 = v4 + *(result + 16);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = 2;
  if (v4 < v5 && (v4 < v3 || v3 + *(a2 + 16) - 1 < v5 - 1))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = sub_100001940(exception, "Invalid UDIF, run is not within block boundary", 0x16u);
  }

  return result;
}

void sub_10013A484(uint64_t a1, void *a2)
{
  values = a2;
  keys = @"resource-fork";
  sub_100144D78(&propertyList, &keys, &values, 1);
  if (sub_1000E9608())
  {
    v3 = *__error();
    v4 = sub_1000E95F0();
    if (v4)
    {
      v19[0] = 0;
      v6 = sub_1000E957C(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }

      *buf = 68158210;
      *&buf[4] = 41;
      *v22 = 2080;
      *&v22[2] = "udif::details::UDIF_base::write_resources(CFDictionaryRef)";
      *&v22[10] = 2114;
      *&v22[12] = propertyList;
      v8 = _os_log_send_and_compose_impl(v7, v19, 0, 0, &_mh_execute_header, v6, 2, "%.*s: res_dict: %{public}@", buf, 28);
      if (v8)
      {
        v9 = v8;
        fprintf(__stderrp, "%s\n", v8);
        free(v9);
      }
    }

    else
    {
      v10 = sub_1000E957C(v4, v5);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68158210;
        *&buf[4] = 41;
        *v22 = 2080;
        *&v22[2] = "udif::details::UDIF_base::write_resources(CFDictionaryRef)";
        *&v22[10] = 2114;
        *&v22[12] = propertyList;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%.*s: res_dict: %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v3;
  }

  sub_100144E60(v19, propertyList);
  v11 = *(*(a1 + 72) + 216);
  v12 = *(a1 + 56);
  v13 = v19[1];
  BytePtr = CFDataGetBytePtr(v19[0]);
  v15 = *(sub_100195B38() + 1);
  *buf = BytePtr;
  *v22 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *&v22[8] = v13;
  *&v22[16] = v11;
  v23 = v13;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v16 = (*(*v12 + 120))(v12, buf);
  if (*v22)
  {
    sub_10000E984(*v22);
  }

  if ((v16 & 0x80000000) == 0)
  {
    *(*(a1 + 72) + 224) = v13;
    operator new[]();
  }

  exception = __cxa_allocate_exception(0x40uLL);
  *exception = &off_1002260F0;
  v18 = std::generic_category();
  exception[1] = v16;
  exception[2] = v18;
  *(exception + 24) = 0;
  *(exception + 48) = 0;
  exception[7] = "Can't write UDIF resource part";
}

void sub_10013A8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10000E950(va);
  _Unwind_Resume(a1);
}

void *sub_10013A940(void *a1, _DWORD *a2)
{
  if ((*a2 & 0x80000000) != 0)
  {
    v4 = sub_100001FE8(a1, "special: ", 9);
    if (*a2 == -1)
    {
      v5 = "ddm";
    }

    else
    {
      v5 = "entire_device";
    }

    if (*a2 == -1)
    {
      v6 = 3;
    }

    else
    {
      v6 = 13;
    }

    return sub_100001FE8(v4, v5, v6);
  }

  else
  {
    sub_100001FE8(a1, "partition_num: ", 15);

    return std::ostream::operator<<();
  }
}

void *sub_10013A9E0(void *a1, uint64_t a2)
{
  v4 = sub_100001FE8(a1, "Blocks header", 13);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(v60, &std::ctype<char>::id);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(v60);
  std::ostream::put();
  std::ostream::flush();
  v6 = *(a2 + 36);
  v58 = *(a2 + 40);
  v59 = *(a2 + 56);
  v7 = *(a2 + 64);
  v8 = *(a2 + 152);
  v54 = *(a2 + 136);
  v55 = v8;
  v9 = *(a2 + 184);
  v56 = *(a2 + 168);
  v57 = v9;
  v10 = *(a2 + 88);
  v50 = *(a2 + 72);
  v51 = v10;
  v11 = *(a2 + 120);
  v52 = *(a2 + 104);
  v53 = v11;
  v12 = sub_100001FE8(a1, "signature", 9);
  v13 = sub_100001FE8(v12, ": ", 2);
  v60[23] = 4;
  strcpy(v60, "mish");
  v14 = sub_100001FE8(v13, v60, 4);
  if ((v60[23] & 0x80000000) != 0)
  {
    operator delete(*v60);
  }

  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(v60, &std::ctype<char>::id);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(v60);
  std::ostream::put();
  std::ostream::flush();
  v16 = sub_100001FE8(a1, "version", 7);
  sub_100001FE8(v16, ": ", 2);
  v17 = std::ostream::operator<<();
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(v60, &std::ctype<char>::id);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(v60);
  std::ostream::put();
  std::ostream::flush();
  v19 = sub_100001FE8(a1, "first_sector_number", 19);
  sub_100001FE8(v19, ": ", 2);
  v20 = std::ostream::operator<<();
  std::ios_base::getloc((v20 + *(*v20 - 24)));
  v21 = std::locale::use_facet(v60, &std::ctype<char>::id);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(v60);
  std::ostream::put();
  std::ostream::flush();
  v22 = sub_100001FE8(a1, "sector_count", 12);
  sub_100001FE8(v22, ": ", 2);
  v23 = std::ostream::operator<<();
  std::ios_base::getloc((v23 + *(*v23 - 24)));
  v24 = std::locale::use_facet(v60, &std::ctype<char>::id);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(v60);
  std::ostream::put();
  std::ostream::flush();
  v25 = sub_100001FE8(a1, "data_start", 10);
  v26 = sub_100001FE8(v25, ": ", 2);
  v27 = *v26;
  v28 = v26 + *(*v26 - 24);
  v29 = *(v28 + 2);
  *(v28 + 2) = v29 & 0xFFFFFFB5 | 8;
  *(v26 + *(v27 - 24) + 8) |= 0x200u;
  v60[0] = 48;
  sub_1000283FC(v26, v60);
  std::ostream::operator<<();
  v30 = *v26;
  *(v26 + *(*v26 - 24) + 8) = v29;
  std::ios_base::getloc((v26 + *(v30 - 24)));
  v31 = std::locale::use_facet(v60, &std::ctype<char>::id);
  (v31->__vftable[2].~facet_0)(v31, 10);
  std::locale::~locale(v60);
  std::ostream::put();
  std::ostream::flush();
  v32 = sub_100001FE8(a1, "decompression_buffer_req", 24);
  sub_100001FE8(v32, ": ", 2);
  v33 = std::ostream::operator<<();
  std::ios_base::getloc((v33 + *(*v33 - 24)));
  v34 = std::locale::use_facet(v60, &std::ctype<char>::id);
  (v34->__vftable[2].~facet_0)(v34, 10);
  std::locale::~locale(v60);
  std::ostream::put();
  std::ostream::flush();
  LODWORD(v49.__locale_) = v6;
  v35 = sub_100001FE8(a1, "descriptor", 10);
  v36 = sub_100001FE8(v35, ": ", 2);
  v37 = sub_10013A940(v36, &v49);
  std::ios_base::getloc((v37 + *(*v37 - 24)));
  v38 = std::locale::use_facet(v60, &std::ctype<char>::id);
  (v38->__vftable[2].~facet_0)(v38, 10);
  std::locale::~locale(v60);
  std::ostream::put();
  std::ostream::flush();
  *v60 = v58;
  *&v60[16] = v59;
  v39 = sub_100001FE8(a1, "reserved", 8);
  v40 = sub_100001FE8(v39, ": ", 2);
  sub_100142D98(v40, v60, 24);
  std::ios_base::getloc((v40 + *(*v40 - 24)));
  v41 = std::locale::use_facet(&v49, &std::ctype<char>::id);
  (v41->__vftable[2].~facet_0)(v41, 10);
  std::locale::~locale(&v49);
  std::ostream::put();
  std::ostream::flush();
  *v60 = v7;
  v64 = v54;
  v65 = v55;
  v66 = v56;
  v67 = v57;
  *&v60[8] = v50;
  v61 = v51;
  v62 = v52;
  v63 = v53;
  v42 = sub_100001FE8(a1, "checksum", 8);
  v43 = sub_100001FE8(v42, ": ", 2);
  sub_10013B364(v43, v60);
  std::ios_base::getloc((v43 + *(*v43 - 24)));
  v44 = std::locale::use_facet(&v49, &std::ctype<char>::id);
  (v44->__vftable[2].~facet_0)(v44, 10);
  std::locale::~locale(&v49);
  std::ostream::put();
  std::ostream::flush();
  v45 = sub_100001FE8(a1, "run_count", 9);
  sub_100001FE8(v45, ": ", 2);
  v46 = std::ostream::operator<<();
  std::ios_base::getloc((v46 + *(*v46 - 24)));
  v47 = std::locale::use_facet(v60, &std::ctype<char>::id);
  (v47->__vftable[2].~facet_0)(v47, 10);
  std::locale::~locale(v60);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_10013B300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10013B364(void *a1, unsigned __int8 *a2)
{
  v4 = *(a1 + *(*a1 - 24) + 8);
  v5 = sub_100001FE8(a1, "type: ", 6);
  v16 = *a2;
  v6 = sub_100026198(v5, &v16);
  v7 = sub_100001FE8(v6, " ", 1);
  *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFFB5 | 8;
  v15 = 48;
  v8 = sub_1000283FC(v7, &v15);
  v9 = *v8;
  *(v8 + *(*v8 - 24) + 24) = 2;
  v10 = *(v8 + *(v9 - 24) + 8);
  sub_100001FE8(v8, "len: ", 5);
  v11 = std::ostream::operator<<();
  v12 = sub_100001FE8(v11, " data: ", 7);
  *(v12 + *(*v12 - 24) + 8) = *(v12 + *(*v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  v13 = *(a2 + 1);
  if (v13)
  {
    sub_100142D98(v8, a2 + 8, v13);
  }

  else
  {
    sub_100001FE8(v8, "(empty)", 7);
  }

  *(v8 + *(*v8 - 24) + 8) = v10;
  *(a1 + *(*a1 - 24) + 8) = v4;
  return a1;
}

uint64_t **sub_10013B53C()
{
  if ((atomic_load_explicit(&qword_100235428, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100235428))
  {
    sub_10012F418(v1, -2147483643);
    v1[1] = 0;
    sub_10012F418(v2, -2147483641);
    v2[1] = 1;
    sub_10012F418(v3, -2147483640);
    v3[1] = 2;
    sub_10012F418(v4, -2147483642);
    v4[1] = 4;
    sub_100142F6C(&qword_100235410, v1, 4);
    __cxa_atexit(sub_10013B688, &qword_100235410, &_mh_execute_header);
    __cxa_guard_release(&qword_100235428);
  }

  return &qword_100235410;
}

uint64_t **sub_10013B6B4@<X0>(unsigned int *a1@<X1>, uint64_t a2@<X8>)
{
  sub_10013B53C();
  v4 = qword_100235418;
  if (!qword_100235418)
  {
    goto LABEL_9;
  }

  v5 = *a1;
  v6 = &qword_100235418;
  do
  {
    v7 = *(v4 + 28);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 != &qword_100235418 && v5 >= *(v6 + 7))
  {
    result = sub_10013B53C();
    *a2 = *(v6 + 8);
    v11 = 1;
  }

  else
  {
LABEL_9:
    result = sub_10013B53C();
    v11 = 0;
    *a2 = 0;
  }

  *(a2 + 4) = v11;
  return result;
}

uint64_t *sub_10013B748(uint64_t *result, uint64_t a2, void (__cdecl **a3)(std::ostringstream *__hidden this), unint64_t a4, unint64_t a5)
{
  if (HIBYTE(*a3) == 128)
  {
    v9 = result;
    v14 = *a3;
    (*(*result + 16))(v13);
    if ((BYTE4(v13[0]) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      sub_100001DC0(v13);
      sub_100001FE8(v13, "Unsupported compressed run (", 28);
      v14 = *a3;
      sub_100028AC4(v13, &v14);
      sub_100001FE8(v13, ")", 1);
      sub_10000EBDC(exception, v13, 0x2Du);
    }

    v13[0] = a3;
    v10 = sub_10014322C(a2, a3, &unk_1001C053C, v13)[5];
    if (v10)
    {
      v13[0] = a3;
      v10 = sub_10014322C(a2, a3, &unk_1001C053C, v13)[5];
    }

    if (v10 > a4)
    {
      a4 = v10;
    }

    v13[0] = a3;
    result = sub_10014322C(a2, a3, &unk_1001C053C, v13);
    result[5] = a4;
    *(v9 + 88) = 1;
    v11 = v9[12];
    if (v11 <= a5)
    {
      v11 = a5;
    }

    v9[12] = v11;
  }

  return result;
}

void sub_10013B920(void *a1, void *a2)
{
  sub_10012F418(&v11, 1);
  sub_10013B9CC(a1, &v11, 0);
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      v10 = *(v5 + 8);
      sub_10013B9CC(a1, &v10, v5[5]);
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

      v5 = v8;
    }

    while (v8 != v4);
  }
}

void sub_10013B9CC(void *a1, _DWORD *a2, uint64_t a3)
{
  if (*a2 != 1)
  {
    LODWORD(v10) = *a2;
    (*(*a1 + 16))(&v11, a1, &v10);
    if ((v11 & 0x100000000) != 0)
    {
      LODWORD(v12) = v11;
      sub_100043FC0((a1 + 7), &v12);
    }

    exception = __cxa_allocate_exception(0x40uLL);
    v9 = sub_100001940(exception, "UDIF: compression algo is invalid", 0x16u);
  }

  sub_10012F418(&v12, 1);
  *&v10 = &v12;
  v4 = sub_100061BC0((a1 + 13), &v12, &unk_1001C053C, &v10);
  v6 = a1[7];
  v5 = a1[8];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    sub_10000E984(v7);
  }
}

void sub_10013BB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10013BB54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = 0;
  v24 = 0;
  v22 = &v23;
  (*(**(a1 + 56) + 80))(&v21);
  v4 = *(a1 + 104);
  if (v4 != (a1 + 112))
  {
    while (1)
    {
      v5 = *(v4 + 5);
      if (v5 == *(a1 + 56))
      {
        break;
      }

      if (v5)
      {
        if (v6)
        {
          v7 = *(v4 + 6);
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v19 = *(&v21 + 1);
          if (*(&v21 + 1))
          {
            atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          (*(*v6 + 192))(&v20);
          v25 = v4 + 8;
          v8 = sub_100061BC0(&v22, v4 + 8, &unk_1001C053C, &v25);
          v9 = v20;
          v20 = 0uLL;
          v10 = v8[6];
          *(v8 + 5) = v9;
          if (v10)
          {
            sub_10000E984(v10);
            if (*(&v20 + 1))
            {
              sub_10000E984(*(&v20 + 1));
            }
          }

          if (v19)
          {
            sub_10000E984(v19);
          }

LABEL_17:
          if (v7)
          {
            sub_10000E984(v7);
          }
        }
      }

      v13 = *(v4 + 1);
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
          v14 = *(v4 + 2);
          v15 = *v14 == v4;
          v4 = v14;
        }

        while (!v15);
      }

      v4 = v14;
      if (v14 == (a1 + 112))
      {
        goto LABEL_25;
      }
    }

    *&v20 = v4 + 8;
    v11 = sub_100061BC0(&v22, v4 + 8, &unk_1001C053C, &v20);
    v12 = v21;
    if (*(&v21 + 1))
    {
      atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v11[6];
    *(v11 + 5) = v12;
    goto LABEL_17;
  }

LABEL_25:
  v16 = v23;
  *a2 = v22;
  *(a2 + 8) = v16;
  v17 = a2 + 8;
  v18 = v24;
  *(a2 + 16) = v24;
  if (v18)
  {
    v16[2] = v17;
    v22 = &v23;
    v23 = 0;
    v24 = 0;
    v16 = 0;
  }

  else
  {
    *a2 = v17;
  }

  *(a2 + 24) = v21;
  sub_10005F63C(&v22, v16);
}

uint64_t sub_10013BE24(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 != (result + 16))
  {
    do
    {
      if (*(v1 + 59) == 128 && (v1[5] - v1[4] + (v1[6] & 1) + ((*(v1 + 48) >> 1) & 1) - 1) << 9 > 0x400000)
      {
        *&v8 = "udif::details::UDIF_base::validate_runs()";
        *(&v8 + 1) = 39;
        v9 = 16;
        sub_10013C034(v10, &v8);
        sub_100001FE8(v11, "Run interval: ", 14);
        sub_10012DE00(v11, v1 + 4);
        sub_100001FE8(v11, " of type ", 9);
        LODWORD(v7) = *(v1 + 14);
        sub_100028AC4(v11, &v7);
        sub_100001FE8(v11, " has size ", 10);
        std::ostream::operator<<();
        sub_100001FE8(v11, "which is larger than allowed ", 29);
        std::ostream::operator<<();
        sub_100001FE8(v11, " or exceeds size_t size ", 24);
        v7 = -1;
        sub_10013C004(v10, &v7);
        sub_10013C15C(v10);
        exception = __cxa_allocate_exception(0x40uLL);
        v6 = sub_100001940(exception, "UDIF: compressed runs should be <= 1MB", 0x16u);
      }

      v2 = v1[1];
      if (v2)
      {
        do
        {
          v3 = v2;
          v2 = *v2;
        }

        while (v2);
      }

      else
      {
        do
        {
          v3 = v1[2];
          v4 = *v3 == v1;
          v1 = v3;
        }

        while (!v4);
      }

      v1 = v3;
    }

    while (v3 != (result + 16));
  }

  return result;
}

void sub_10013BFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10013C15C(va);
  _Unwind_Resume(a1);
}

void *sub_10013C034(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100143300(a1, a2);
  *a1 = off_10021A500;
  a1[45] = &off_10021A600;
  a1[46] = &off_10021A628;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021A500;
  a1[45] = off_10021A588;
  a1[46] = off_10021A5B0;
  return a1;
}

void sub_10013C138(_Unwind_Exception *a1)
{
  sub_100140230(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10013C15C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100140230(a1);
  std::ios::~ios();
  return a1;
}

uint64_t *sub_10013C1A0(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  if (a1 + 40 != sub_1001433C8(a1 + 32, a2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v10 = sub_100001940(exception, "Invalid UDIF format, contains intersected blocks", 0x16u);
  }

  v6 = *(a3 + 2);
  v19 = *(a3 + 76);
  v20 = *(a3 + 92);
  v21 = *(a3 + 108);
  v22 = *(a3 + 124);
  v15 = *(a3 + 12);
  v16 = *(a3 + 28);
  v17 = *(a3 + 44);
  v18 = *(a3 + 60);
  v7 = *a3;
  v11 = *a2;
  v12 = *(a2 + 2);
  v13 = v7;
  v14 = v6;
  v23 = 1;
  return sub_100143448((a1 + 32), &v11);
}

void sub_10013C8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_10013CC08(va);
  sub_1000285E0(&a20, a21);
  operator delete[]();
}

void *sub_10013C970(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100143BCC(a1, a2);
  *a1 = off_10021A720;
  a1[45] = &off_10021A820;
  a1[46] = &off_10021A848;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021A720;
  a1[45] = off_10021A7A8;
  a1[46] = off_10021A7D0;
  return a1;
}

void sub_10013CA74(_Unwind_Exception *a1)
{
  sub_1001409C8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10013CA98(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001409C8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10013CAE0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100143C94(a1, a2);
  *a1 = off_10021A940;
  a1[45] = &off_10021AA40;
  a1[46] = &off_10021AA68;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021A940;
  a1[45] = off_10021A9C8;
  a1[46] = off_10021A9F0;
  return a1;
}

void sub_10013CBE4(_Unwind_Exception *a1)
{
  sub_100141160(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10013CC08(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100141160(a1);
  std::ios::~ios();
  return a1;
}

uint64_t *sub_10013CC4C()
{
  if ((atomic_load_explicit(&qword_100235448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100235448))
  {
    sub_10012F418(&v1, 0);
    v2 = xmmword_1001C6D50;
    v3 = 2;
    v4 = v1;
    v5 = 0;
    v6 = 0;
    sub_100143D5C(&qword_100235430, &v2, 1);
    __cxa_atexit(sub_10013CD58, &qword_100235430, &_mh_execute_header);
    __cxa_guard_release(&qword_100235448);
  }

  return &qword_100235430;
}

uint64_t sub_10013CD84(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6[0] = a2 / a4;
  v6[1] = (a3 + a2) / a4;
  v7 = 2;
  result = sub_1000DC688(a1 + 8, v6);
  if (a1 + 16 == result)
  {
    sub_10013CC4C();
    return qword_100235430;
  }

  return result;
}

void sub_10013CDE8(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v8 = sub_10013CD84(a1, a2, a3, 0x200uLL);
  if (v5)
  {
    v9 = v8;
    v10 = (a1 + 16);
    v11 = a2;
    while (v9 != v10)
    {
      v12 = v9[4];
      v13 = v12 << 9;
      if (v11 < v12 << 9)
      {
        goto LABEL_11;
      }

      v14 = (v9[5] - v12) << 9;
      if (v14 - (v11 - v13) >= v5)
      {
        v15 = v5;
      }

      else
      {
        v15 = v14 - (v11 - v13);
      }

      v16 = *(v9 + 14);
      v29 = v16;
      if (HIBYTE(v16) == 128)
      {
        v30 = *(v9 + 4);
        *&v31 = v13;
        *(&v31 + 1) = v14;
        *&v32 = v11 - a2;
        *(&v32 + 1) = v11 - v13;
      }

      else
      {
        *&v30 = v9[8] + v11 - v13;
        *(&v30 + 1) = v15;
        *&v31 = v11;
        *(&v31 + 1) = v15;
        v32 = v11 - a2;
      }

      v33 = v15;
      v22 = a4[1];
      v23 = *a4 + (v22 << 6);
      if (v22 == a4[2])
      {
        sub_100144024(a4, v23, 1, &v29, &v34);
      }

      else
      {
        *v23 = v16;
        v24 = v30;
        v25 = v31;
        v26 = v32;
        *(v23 + 56) = v33;
        *(v23 + 40) = v26;
        *(v23 + 24) = v25;
        *(v23 + 8) = v24;
        ++a4[1];
      }

      v27 = v9[1];
      if (v27)
      {
        do
        {
          v9 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v9;
          v9 = v9[2];
        }

        while (*v9 != v28);
      }

LABEL_23:
      v11 += v15;
      v5 -= v15;
      if (!v5)
      {
        return;
      }
    }

    v13 = v11 + v5;
LABEL_11:
    if (v13 - v11 >= v5)
    {
      v15 = v5;
    }

    else
    {
      v15 = v13 - v11;
    }

    sub_10012F418(&v29, 0);
    v30 = 0uLL;
    *&v31 = v11;
    *(&v31 + 1) = v15;
    v32 = v11 - a2;
    v33 = v15;
    v17 = a4[1];
    v18 = *a4 + (v17 << 6);
    if (v17 == a4[2])
    {
      sub_100144024(a4, v18, 1, &v29, &v34);
    }

    else
    {
      *v18 = v29;
      v19 = v30;
      v20 = v31;
      v21 = v32;
      *(v18 + 56) = v33;
      *(v18 + 40) = v21;
      *(v18 + 24) = v20;
      *(v18 + 8) = v19;
      ++a4[1];
    }

    goto LABEL_23;
  }
}