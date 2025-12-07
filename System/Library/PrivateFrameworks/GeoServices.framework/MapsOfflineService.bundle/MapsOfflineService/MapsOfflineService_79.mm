void sub_505A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_3B889C(va);
  sub_3B889C((v19 - 128));
  std::mutex::unlock((v18 + 200));
  _Unwind_Resume(a1);
}

void sub_505A98(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::mutex::lock((a1 + 136));
  v4 = *(a1 + 64);
  *a2 = *(a1 + 56);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 80);
  a2[2] = *(a1 + 72);
  a2[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 96);
  a2[4] = *(a1 + 88);
  a2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 112);
  a2[6] = *(a1 + 104);
  a2[7] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 128);
  a2[8] = *(a1 + 120);
  a2[9] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((a1 + 136));
}

void sub_505B50()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = *(v0 + 48);
  v15 = *(v0 + 40);
  v16 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = v1[1];
  v13 = *v1;
  v14 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_C9F86C(v17, &v15, &v13);
  sub_C9F870(v17, &v22);
  v5 = v22;
  v22 = 0uLL;
  v6 = v2[3];
  *(v2 + 1) = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(&v22 + 1);
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  sub_3BB4D4(v21);
  sub_506524(v20);
  v8 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v16;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = v2[7];
  v2[6] = 0;
  v2[7] = 0;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_505E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_50644C(va);
  sub_1F1A8(&a9);
  sub_1F1A8(&a11);
  _Unwind_Resume(a1);
}

void sub_505E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1F1A8(&a9);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_505E60(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    std::mutex::lock((a1 + 200));
    std::mutex::lock((a1 + 136));
    v4 = *(a1 + 64);
    v12 = *(a1 + 56);
    v13 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(a1 + 80);
    v14 = *(a1 + 72);
    v15 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a1 + 96);
    v16 = *(a1 + 88);
    v17 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 112);
    v18 = *(a1 + 104);
    v19 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(a1 + 128);
    v20 = *(a1 + 120);
    v21 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    std::mutex::unlock((a1 + 136));
    v10 = *a2;
    v9 = a2[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = v17;
    v16 = v10;
    v17 = v9;
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }

    sub_CB3064();
  }
}

void sub_50610C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_3B889C(va);
  sub_3B889C((v19 - 112));
  std::mutex::unlock((v18 + 200));
  _Unwind_Resume(a1);
}

void sub_50616C(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    std::mutex::lock((a1 + 200));
    std::mutex::lock((a1 + 136));
    v4 = *(a1 + 64);
    *&v30 = *(a1 + 56);
    *(&v30 + 1) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(a1 + 80);
    v31 = *(a1 + 72);
    v32 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a1 + 96);
    v33 = *(a1 + 88);
    v34 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 112);
    v35 = *(a1 + 104);
    v36 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(a1 + 128);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::mutex::unlock((a1 + 136));
    v10 = *a2;
    v9 = a2[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v37 = v10;
    v38 = v9;
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v21 = v30;
    if (*(&v30 + 1))
    {
      atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v22 = v31;
    v23 = v32;
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    v24 = v33;
    v25 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = v35;
    v27 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = v37;
    v29 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    std::mutex::lock((a1 + 136));
    sub_3ADC80(a1 + 56, &v21);
    std::mutex::unlock((a1 + 136));
    sub_3B889C(&v21);
    if (*(a1 + 24))
    {
      v12 = v30;
      if (*(&v30 + 1))
      {
        atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v13 = v31;
      v14 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = v33;
      v16 = v34;
      if (v34)
      {
        atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = v35;
      v18 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = v37;
      v20 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = *(a1 + 24);
      if (!v11)
      {
        sub_2B7420();
      }

      (*(*v11 + 48))(v11, &v12);
      sub_3B889C(&v12);
    }

    sub_3B889C(&v30);
    std::mutex::unlock((a1 + 200));
  }
}

void sub_506408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_3B889C(va);
  sub_3B889C((v19 - 128));
  std::mutex::unlock((v18 + 200));
  _Unwind_Resume(a1);
}

void *sub_50644C(void *a1)
{
  sub_3BB4D4(a1 + 529);
  sub_506524(a1 + 4);
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[1];
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void *sub_506524(void *a1)
{
  sub_3B889C(a1 + 491);
  v2 = a1[490];
  a1[490] = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v4 = *v3;
        v5 = v3[13];
        v3[13] = 0;
        if (v5)
        {
          v6 = *v5;
          if (*v5)
          {
            *(v5 + 8) = v6;
            operator delete(v6);
          }

          operator delete();
        }

        v7 = v3[10];
        if (v7)
        {
          v3[11] = v7;
          operator delete(v7);
        }

        v8 = v3[7];
        if (v8)
        {
          v3[8] = v8;
          operator delete(v8);
        }

        v9 = v3[4];
        if (v9)
        {
          v3[5] = v9;
          operator delete(v9);
        }

        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v10 = *v2;
    *v2 = 0;
    if (v10)
    {
      operator delete(v10);
    }

    operator delete();
  }

  v11 = a1[4];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = a1[1];
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  return a1;
}

void *sub_5066C8(void *a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v2 = 4;
      v7 = 4;
      LODWORD(__p[0]) = 1347376211;
      goto LABEL_13;
    }

    if (a2 == 1)
    {
      v2 = 4;
      v7 = 4;
      LODWORD(__p[0]) = 1280065864;
      goto LABEL_13;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v2 = 7;
        v7 = 7;
        qmemcpy(__p, "STATION", 7);
        goto LABEL_13;
      case 3:
        v2 = 12;
        v7 = 12;
        LODWORD(__p[1]) = 1414416719;
        __p[0] = *"ACCESS_POINT";
        goto LABEL_13;
      case 4:
        v2 = 17;
        v7 = 17;
        v6 = 84;
        *__p = *"ROAD_ACCESS_POINT";
        goto LABEL_13;
    }
  }

  v2 = 0;
  v7 = 0;
LABEL_13:
  *(__p + v2) = 0;
  result = sub_4A5C(a1, __p, v2);
  if (v7 < 0)
  {
    v4 = result;
    operator delete(__p[0]);
    return v4;
  }

  return result;
}

void sub_5067FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_506818(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 28);
  sub_5068C0(*(a1 + 24), __p);
  *a2 = v3;
  v4 = (a2 + 8);
  if (SHIBYTE(v7) < 0)
  {
    sub_325C(v4, __p[0], __p[1]);
    v5 = SHIBYTE(v7);
    *(a2 + 32) = 100;
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v4 = *__p;
    *(a2 + 24) = v7;
    *(a2 + 32) = 100;
  }
}

void sub_5068A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_5068C0@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v2 = "";
  switch(a1)
  {
    case 8:
      v2 = "ALL";
      break;
    case 12:
      v2 = "DZD";
      break;
    case 32:
      v2 = "ARS";
      break;
    case 36:
      v2 = "AUD";
      break;
    case 44:
      v2 = "BSD";
      break;
    case 48:
      v2 = "BHD";
      break;
    case 50:
      v2 = "BDT";
      break;
    case 51:
      v2 = "AMD";
      break;
    case 52:
      v2 = "BBD";
      break;
    case 60:
      v2 = "BMD";
      break;
    case 64:
      v2 = "BTN";
      break;
    case 68:
      v2 = "BOB";
      break;
    case 72:
      v2 = "BWP";
      break;
    case 84:
      v2 = "BZD";
      break;
    case 90:
      v2 = "SBD";
      break;
    case 96:
      v2 = "BND";
      break;
    case 104:
      v2 = "MMK";
      break;
    case 108:
      v2 = "BIF";
      break;
    case 116:
      v2 = "KHR";
      break;
    case 124:
      v2 = "CAD";
      break;
    case 132:
      v2 = "CVE";
      break;
    case 136:
      v2 = "KYD";
      break;
    case 144:
      v2 = "LKR";
      break;
    case 152:
      v2 = "CLP";
      break;
    case 156:
      v2 = "CNY";
      break;
    case 170:
      v2 = "COP";
      break;
    case 174:
      v2 = "KMF";
      break;
    case 188:
      v2 = "CRC";
      break;
    case 191:
      v2 = "HRK";
      break;
    case 192:
      v2 = "CUP";
      break;
    case 203:
      v2 = "CZK";
      break;
    case 208:
      v2 = "DKK";
      break;
    case 214:
      v2 = "DOP";
      break;
    case 222:
      v2 = "SVC";
      break;
    case 230:
      v2 = "ETB";
      break;
    case 232:
      v2 = "ERN";
      break;
    case 238:
      v2 = "FKP";
      break;
    case 242:
      v2 = "FJD";
      break;
    case 262:
      v2 = "DJF";
      break;
    case 270:
      v2 = "GMD";
      break;
    case 292:
      v2 = "GIP";
      break;
    case 320:
      v2 = "GTQ";
      break;
    case 324:
      v2 = "GNF";
      break;
    case 328:
      v2 = "GYD";
      break;
    case 332:
      v2 = "HTG";
      break;
    case 340:
      v2 = "HNL";
      break;
    case 344:
      v2 = "HKD";
      break;
    case 348:
      v2 = "HUF";
      break;
    case 352:
      v2 = "ISK";
      break;
    case 356:
      v2 = "INR";
      break;
    case 360:
      v2 = "IDR";
      break;
    case 364:
      v2 = "IRR";
      break;
    case 368:
      v2 = "IQD";
      break;
    case 376:
      v2 = "ILS";
      break;
    case 388:
      v2 = "JMD";
      break;
    case 392:
      v2 = "JPY";
      break;
    case 398:
      v2 = "KZT";
      break;
    case 400:
      v2 = "JOD";
      break;
    case 404:
      v2 = "KES";
      break;
    case 408:
      v2 = "KPW";
      break;
    case 410:
      v2 = "KRW";
      break;
    case 414:
      v2 = "KWD";
      break;
    case 417:
      v2 = "KGS";
      break;
    case 418:
      v2 = "LAK";
      break;
    case 422:
      v2 = "LBP";
      break;
    case 426:
      v2 = "LSL";
      break;
    case 430:
      v2 = "LRD";
      break;
    case 434:
      v2 = "LYD";
      break;
    case 446:
      v2 = "MOP";
      break;
    case 454:
      v2 = "MWK";
      break;
    case 458:
      v2 = "MYR";
      break;
    case 462:
      v2 = "MVR";
      break;
    case 478:
      v2 = "MRO";
      break;
    case 480:
      v2 = "MUR";
      break;
    case 484:
      v2 = "MXN";
      break;
    case 496:
      v2 = "MNT";
      break;
    case 498:
      v2 = "MDL";
      break;
    case 504:
      v2 = "MAD";
      break;
    case 512:
      v2 = "OMR";
      break;
    case 516:
      v2 = "NAD";
      break;
    case 524:
      v2 = "NPR";
      break;
    case 532:
      v2 = "ANG";
      break;
    case 533:
      v2 = "AWG";
      break;
    case 548:
      v2 = "VUV";
      break;
    case 554:
      v2 = "NZD";
      break;
    case 558:
      v2 = "NIO";
      break;
    case 566:
      v2 = "NGN";
      break;
    case 578:
      v2 = "NOK";
      break;
    case 586:
      v2 = "PKR";
      break;
    case 590:
      v2 = "PAB";
      break;
    case 598:
      v2 = "PGK";
      break;
    case 600:
      v2 = "PYG";
      break;
    case 604:
      v2 = "PEN";
      break;
    case 608:
      v2 = "PHP";
      break;
    case 634:
      v2 = "QAR";
      break;
    case 643:
      v2 = "RUB";
      break;
    case 646:
      v2 = "RWF";
      break;
    case 654:
      v2 = "SHP";
      break;
    case 678:
      v2 = "STD";
      break;
    case 682:
      v2 = "SAR";
      break;
    case 690:
      v2 = "SCR";
      break;
    case 694:
      v2 = "SLL";
      break;
    case 702:
      v2 = "SGD";
      break;
    case 704:
      v2 = "VND";
      break;
    case 706:
      v2 = "SOS";
      break;
    case 710:
      v2 = "ZAR";
      break;
    case 728:
      v2 = "SSP";
      break;
    case 748:
      v2 = "SZL";
      break;
    case 752:
      v2 = "SEK";
      break;
    case 756:
      v2 = "CHF";
      break;
    case 760:
      v2 = "SYP";
      break;
    case 764:
      v2 = "THB";
      break;
    case 776:
      v2 = "TOP";
      break;
    case 780:
      v2 = "TTD";
      break;
    case 784:
      v2 = "AED";
      break;
    case 788:
      v2 = "TND";
      break;
    case 800:
      v2 = "UGX";
      break;
    case 807:
      v2 = "MKD";
      break;
    case 818:
      v2 = "EGP";
      break;
    case 826:
      v2 = "GBP";
      break;
    case 834:
      v2 = "TZS";
      break;
    case 840:
      v2 = "USD";
      break;
    case 858:
      v2 = "UYU";
      break;
    case 860:
      v2 = "UZS";
      break;
    case 882:
      v2 = "WST";
      break;
    case 886:
      v2 = "YER";
      break;
    case 901:
      v2 = "TWD";
      break;
    case 931:
      v2 = "CUC";
      break;
    case 932:
      v2 = "ZWL";
      break;
    case 934:
      v2 = "TMT";
      break;
    case 936:
      v2 = "GHS";
      break;
    case 937:
      v2 = "VEF";
      break;
    case 938:
      v2 = "SDG";
      break;
    case 940:
      v2 = "UYI";
      break;
    case 941:
      v2 = "RSD";
      break;
    case 943:
      v2 = "MZN";
      break;
    case 944:
      v2 = "AZN";
      break;
    case 946:
      v2 = "RON";
      break;
    case 947:
      v2 = "CHE";
      break;
    case 948:
      v2 = "CHW";
      break;
    case 949:
      v2 = "TRY";
      break;
    case 950:
      v2 = "XAF";
      break;
    case 951:
      v2 = "XCD";
      break;
    case 952:
      v2 = "XOF";
      break;
    case 953:
      v2 = "XPF";
      break;
    case 955:
      v2 = "XBA";
      break;
    case 956:
      v2 = "XBB";
      break;
    case 957:
      v2 = "XBC";
      break;
    case 958:
      v2 = "XBD";
      break;
    case 959:
      v2 = "XAU";
      break;
    case 960:
      v2 = "XDR";
      break;
    case 961:
      v2 = "XAG";
      break;
    case 962:
      v2 = "XPT";
      break;
    case 963:
      v2 = "XTS";
      break;
    case 964:
      v2 = "XPD";
      break;
    case 965:
      v2 = "XUA";
      break;
    case 967:
      v2 = "ZMW";
      break;
    case 968:
      v2 = "SRD";
      break;
    case 969:
      v2 = "MGA";
      break;
    case 970:
      v2 = "COU";
      break;
    case 971:
      v2 = "AFN";
      break;
    case 972:
      v2 = "TJS";
      break;
    case 973:
      v2 = "AOA";
      break;
    case 974:
      v2 = "BYR";
      break;
    case 975:
      v2 = "BGN";
      break;
    case 976:
      v2 = "CDF";
      break;
    case 977:
      v2 = "BAM";
      break;
    case 978:
      v2 = "EUR";
      break;
    case 979:
      v2 = "MXV";
      break;
    case 980:
      v2 = "UAH";
      break;
    case 981:
      v2 = "GEL";
      break;
    case 984:
      v2 = "BOV";
      break;
    case 985:
      v2 = "PLN";
      break;
    case 986:
      v2 = "BRL";
      break;
    case 990:
      v2 = "CLF";
      break;
    case 994:
      v2 = "XSU";
      break;
    case 997:
      v2 = "USN";
      break;
    case 999:
      v2 = "XXX";
      break;
    default:
      return sub_3608D0(a2, v2);
  }

  return sub_3608D0(a2, v2);
}

uint64_t sub_5080D4(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

int *sub_5080E4@<X0>(int *result@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0x7FFFFFFF;
  *(a4 + 8) = 0;
  v5 = a4 + 8;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 100;
  *(a4 + 40) = 0;
  *(a4 + 44) = 1;
  *(a4 + 48) = 0;
  v42 = (a4 + 48);
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  if ((result[4] & 1) == 0)
  {
    return result;
  }

  v7 = result;
  v8 = *(result + 7);
  v9 = *(v8 + 28);
  sub_5068C0(*(v8 + 24), &__dst);
  LODWORD(v43) = v9;
  if (SHIBYTE(v55) < 0)
  {
    sub_325C(&v44, __dst, *(&__dst + 1));
    v46 = 100;
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    v44 = __dst;
    v45 = v55;
    v46 = 100;
  }

  v10 = v46;
  *a4 = LODWORD(v43);
  v11 = *(v7 + 6);
  v12 = v7[10];
  v13 = *(v7 + 8);
  v15 = v7[19];
  v14 = v7[20];
  *v5 = v44;
  *(v5 + 16) = v45;
  *(a4 + 32) = v10;
  *(a4 + 44) = v15;
  v16 = &off_2779900;
  if (v13)
  {
    v16 = v13;
  }

  *(a4 + 40) = *(v16 + 6) == 1;
  if (v14 == 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  *(a4 + 73) = v17;
  if (!v12)
  {
    return a3;
  }

  v18 = 8 * v12;
  do
  {
    v20 = *v11;
    v43 = NAN;
    LODWORD(v44) = 0x7FFFFFFF;
    v21 = sub_2C7CD8(a2, v20, &v43);
    if (v21 <= 0xFFFFFFFEFFFFFFFFLL && v21 != 0)
    {
      v26 = *(a4 + 56);
      v25 = *(a4 + 64);
      if (v26 < v25)
      {
        *v26 = v21;
        v19 = v26 + 1;
      }

      else
      {
        v27 = *v42;
        v28 = v26 - *v42;
        v29 = (v28 >> 3) + 1;
        if (v29 >> 61)
        {
          sub_1794();
        }

        v30 = v25 - v27;
        if (v30 >> 2 > v29)
        {
          v29 = v30 >> 2;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          if (!(v31 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v34 = (8 * (v28 >> 3));
        *v34 = v21;
        v19 = v34 + 1;
        memcpy(0, v27, v28);
        *(a4 + 48) = 0;
        *(a4 + 64) = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      *(a4 + 56) = v19;
      goto LABEL_15;
    }

    if (!sub_7E7E4(1u))
    {
      goto LABEL_15;
    }

    sub_19594F8(&v43);
    sub_4A5C(&v43, "Payment method muid (", 21);
    v23 = std::ostream::operator<<();
    sub_4A5C(v23, ") not found.", 12);
    if ((v53 & 0x10) != 0)
    {
      v32 = v52;
      v33 = &v48;
      if (v52 < v49)
      {
        v52 = v49;
        v32 = v49;
        v33 = &v48;
      }

      goto LABEL_40;
    }

    if ((v53 & 8) != 0)
    {
      v32 = v47;
      v33 = &v45;
LABEL_40:
      v35 = *v33;
      v24 = v32 - *v33;
      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v24 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v55) = v32 - *v33;
      if (v24)
      {
        memmove(&__dst, v35, v24);
      }

      goto LABEL_46;
    }

    v24 = 0;
    HIBYTE(v55) = 0;
LABEL_46:
    *(&__dst + v24) = 0;
    sub_7E854(&__dst, 1u);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__dst);
    }

    v43 = v41;
    *(&v43 + *(*&v41 - 24)) = v40;
    if (v51 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v44 + 1);
    std::ostream::~ostream();
    std::ios::~ios();
LABEL_15:
    ++v11;
    v18 -= 8;
  }

  while (v18);
  v36 = *(a4 + 48);
  result = a3;
  if (*(a4 + 56) - v36 == 8)
  {
    result = sub_2C9210(a3, *v36, 0, "payment_method");
    v37 = (result - *result);
    if (*v37 >= 9u)
    {
      v38 = v37[4];
      if (v38)
      {
        if (*(result + v38) == 3)
        {
          *(a4 + 72) = 1;
        }
      }
    }
  }

  return result;
}

void sub_50862C(_Unwind_Exception *a1)
{
  if (*(v2 - 89) < 0)
  {
    operator delete(*(v2 - 112));
    sub_508924(v1);
    _Unwind_Resume(a1);
  }

  sub_508924(v1);
  _Unwind_Resume(a1);
}

void sub_5086CC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 28) = *(a1 + 60);
    v4 = &off_2779900;
    v5 = *(a1 + 40);
    if (*(a1 + 48))
    {
      v4 = *(a1 + 48);
    }

    *(a2 + 24) = *(v4 + 6) == 1;
    if (v5)
    {
      v6 = (v5 + 8);
    }

    else
    {
      v6 = 0;
    }

    v7 = 8 * v3;
    while (1)
    {
      v8 = *v6;
      v9 = *(*v6 + 48);
      if (!v9)
      {
        v9 = &off_2779808;
      }

      v10 = *(v9 + 7);
      sub_5068C0(*(v9 + 6), __p);
      v16 = v10;
      if (SHIBYTE(v21) < 0)
      {
        sub_325C(&v17, __p[0], __p[1]);
        v19 = 100;
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
          v11 = *(v8 + 56) - 1;
          if (v11 <= 0xE)
          {
LABEL_16:
            v12 = dword_2298394[v11];
            LODWORD(__p[0]) = v12;
            v13 = *(a2 + 8);
            if (v13 < *(a2 + 16))
            {
              goto LABEL_21;
            }

            goto LABEL_17;
          }
        }

        else
        {
          v11 = *(v8 + 56) - 1;
          if (v11 <= 0xE)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        v17 = *__p;
        v18 = v21;
        v19 = 100;
        v11 = *(v8 + 56) - 1;
        if (v11 <= 0xE)
        {
          goto LABEL_16;
        }
      }

      v12 = 0;
      LODWORD(__p[0]) = 0;
      v13 = *(a2 + 8);
      if (v13 < *(a2 + 16))
      {
LABEL_21:
        *v13 = v16;
        v14 = (v13 + 8);
        if (SHIBYTE(v18) < 0)
        {
          sub_325C(v14, v17, *(&v17 + 1));
        }

        else
        {
          v15 = v17;
          *(v13 + 24) = v18;
          *v14 = v15;
        }

        *(v13 + 32) = v19;
        *(v13 + 40) = v12;
        *(a2 + 8) = v13 + 48;
        if ((SHIBYTE(v18) & 0x80000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_25:
        operator delete(v17);
        goto LABEL_8;
      }

LABEL_17:
      *(a2 + 8) = sub_508978(a2, &v16, __p);
      if (SHIBYTE(v18) < 0)
      {
        goto LABEL_25;
      }

LABEL_8:
      ++v6;
      v7 -= 8;
      if (!v7)
      {
        return;
      }
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  *(a2 + 28) = 1;
}

void sub_5088CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  *(v22 + 8) = v23;
  if (a15 < 0)
  {
    operator delete(__p);
    sub_508BC8(v22);
    _Unwind_Resume(a1);
  }

  sub_508BC8(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_508924(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

unint64_t sub_508978(unint64_t *a1, uint64_t a2, int *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  v8 = *a3;
  *v7 = *a2;
  v9 = (v7 + 8);
  if (*(a2 + 31) < 0)
  {
    sub_325C(v9, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *v9 = *(a2 + 8);
    *(v7 + 24) = *(a2 + 24);
  }

  *(v7 + 32) = *(a2 + 32);
  *(v7 + 40) = v8;
  v10 = v7 + 48;
  v11 = *a1;
  v12 = a1[1];
  v13 = v7 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v13;
    do
    {
      *v15 = *v14;
      v16 = *(v14 + 8);
      *(v15 + 24) = *(v14 + 24);
      *(v15 + 8) = v16;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 8) = 0;
      *(v15 + 32) = *(v14 + 32);
      *(v15 + 40) = *(v14 + 40);
      v14 += 48;
      v15 += 48;
    }

    while (v14 != v12);
    do
    {
      if (*(v11 + 31) < 0)
      {
        operator delete(*(v11 + 8));
      }

      v11 += 48;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_508B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_508B60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_508B60(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 17) < 0)
      {
        operator delete(*(v2 - 40));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ***sub_508BC8(void ***a1)
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
        if (*(v3 - 17) < 0)
        {
          operator delete(*(v3 - 5));
        }

        v3 -= 6;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_508C3C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_508FC0(a1, a2, v38);
  v6 = sub_2C9210(a2, a1, 0, "payment_method");
  v7 = (v6 - *v6);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = *(v6 + v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_2C939C(a2, 1u, 0);
  if (!v10 || (v11 = &v10[-*v10], *v11 < 0xDu) || (v12 = *(v11 + 6)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v35 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v13 = &v10[v12 + *&v10[v12]];
  v14 = &v13[-*v13];
  if (*v14 >= 0xBu)
  {
    v15 = *(v14 + 5);
    if (v15)
    {
      if (v13[v15])
      {
        nullsub_1();
        v9 = v16;
      }
    }
  }

  v17 = sub_2C9210(a2, a1, 0, "payment_method");
  v18 = (v17 - *v17);
  if (*v18 >= 5u && (v19 = v18[2]) != 0)
  {
    v20 = (v17 + v19);
    v21 = *v20;
    v22 = *(v20 + v21);
    if (v22 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v37) = *(v20 + v21);
    if (v22)
    {
      memcpy(__p, v20 + v21 + 4, v22);
    }

    v23 = (__p + v22);
  }

  else
  {
    HIBYTE(v37) = 0;
    v23 = __p;
  }

  *v23 = 0;
  v24 = sub_2C9210(a2, a1, 0, "payment_method");
  v25 = (v24 - *v24);
  if (*v25 >= 9u && (v26 = v25[4]) != 0)
  {
    v27 = *(v24 + v26);
  }

  else
  {
    v27 = 0;
  }

  v28 = sub_2C9210(a2, a1, 0, "payment_method");
  v29 = (v28 - *v28);
  if (*v29 >= 0xFu)
  {
    v30 = v29[7];
    if (v30)
    {
      v31 = *(v28 + v30);
      *a3 = v9;
      v32 = a3 + 8;
      v33 = SHIBYTE(v37);
      if (SHIBYTE(v37) < 0)
      {
        goto LABEL_28;
      }

LABEL_31:
      *v32 = *__p;
      *(v32 + 16) = v37;
      *(a3 + 32) = v27;
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }
  }

  v31 = 0;
  *a3 = v9;
  v32 = a3 + 8;
  v33 = SHIBYTE(v37);
  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  sub_325C(v32, __p[0], __p[1]);
  *(a3 + 32) = v27;
  if ((SHIBYTE(v39) & 0x80000000) == 0)
  {
LABEL_29:
    *(a3 + 40) = *v38;
    *(a3 + 56) = v39;
    goto LABEL_33;
  }

LABEL_32:
  sub_325C((a3 + 40), v38[0], v38[1]);
LABEL_33:
  *(a3 + 64) = v31;
  if ((v33 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_37:
    operator delete(v38[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v39) < 0)
  {
    goto LABEL_37;
  }
}

void sub_508F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v20 + 31) < 0)
  {
    operator delete(*v21);
    if (v22 < 0)
    {
LABEL_5:
      operator delete(__p);
      if (a20 < 0)
      {
LABEL_8:
        operator delete(a15);
        _Unwind_Resume(a1);
      }

LABEL_9:
      _Unwind_Resume(a1);
    }
  }

  else if (v22 < 0)
  {
    goto LABEL_5;
  }

  if (a20 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_9;
}

void sub_508FC0(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = sub_2C9210(a2, a1, 0, "payment_method");
  v6 = (v5 - *v5);
  if (*v6 >= 0xBu && (v7 = v6[5]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
  }

  else
  {
    v8 = 0;
  }

  sub_509164(v8, v15);
  nullsub_1();
  sub_9D69F4(v15, v11);
  if (SHIBYTE(v12) < 0)
  {
    sub_325C(a4, v11[0], v11[1]);
  }

  else
  {
    *a4 = *v11;
    *(a4 + 16) = v12;
  }

  if (v14 < 0)
  {
    operator delete(v13);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
LABEL_10:
      v9 = __p;
      if (__p)
      {
        goto LABEL_11;
      }

LABEL_21:
      if (v16 < 0)
      {
        goto LABEL_13;
      }

      return;
    }
  }

  else if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(v11[0]);
  v9 = __p;
  if (!__p)
  {
    goto LABEL_21;
  }

LABEL_11:
  v10 = v18;
  if (v18 == v9)
  {
    v18 = v9;
    operator delete(v9);
    if ((v16 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

  do
  {
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 3));
    }

    v10 -= 4;
  }

  while (v10 != v9);
  v18 = v9;
  operator delete(__p);
  if (v16 < 0)
  {
LABEL_13:
    operator delete(v15[0]);
  }
}

void sub_509134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_509680(va);
  sub_395478(va1);
  _Unwind_Resume(a1);
}

void sub_509150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_395478(va);
  _Unwind_Resume(a1);
}

void sub_509164(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 2;
  v4 = sub_12331FC();
  *(v3 + 40) = 0;
  *(v3 + 32) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  v48 = (v3 + 40);
  if (!a1)
  {
    return;
  }

  v5 = (a1 - *a1);
  v6 = *v5;
  if (v6 < 9)
  {
    *(v3 + 24) = 0;
    if (v6 < 7)
    {
      v8 = 0;
      v9 = (&loc_1120530 + 1);
      v49 = v3;
      if (*(&loc_1120530 + 1) >= 7u)
      {
        goto LABEL_10;
      }

LABEL_16:
      HIBYTE(v51) = 0;
      LOBYTE(__dst) = 0;
      if ((*(v3 + 23) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v7 = v5[4];
    if (v5[4])
    {
      LOBYTE(v7) = *(a1 + v7);
    }

    *(v3 + 24) = v7;
  }

  v8 = v5[3];
  if (v8)
  {
    v8 = (v8 + a1 + *(v8 + a1));
  }

  v9 = (v8 - *v8);
  v49 = v3;
  if (*v9 < 7u)
  {
    goto LABEL_16;
  }

LABEL_10:
  v10 = v9[3];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = (v8 + v10);
  v12 = *v11;
  v13 = *(v11 + v12);
  if (v13 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v51) = *(v11 + v12);
  if (!v13)
  {
    *(&__dst + v13) = 0;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  memcpy(&__dst, v11 + v12 + 4, v13);
  *(&__dst + v13) = 0;
  if (*(v3 + 23) < 0)
  {
LABEL_17:
    operator delete(*v3);
  }

LABEL_18:
  *v3 = __dst;
  *(v3 + 16) = v51;
  v14 = (a1 - *a1);
  if (*v14 < 7u)
  {
    v15 = 0;
    v16 = (&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) < 5u)
    {
LABEL_26:
      v18 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v15 = v14[3];
    if (v15)
    {
      v15 = (v15 + a1 + *(v15 + a1));
    }

    v16 = (v15 - *v15);
    if (*v16 < 5u)
    {
      goto LABEL_26;
    }
  }

  v17 = v16[2];
  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = v15 + v17 + *(v15 + v17);
LABEL_27:
  *(v3 + 32) = sub_2C9AE4(v18);
  v19 = (a1 - *a1);
  if (*v19 >= 5u)
  {
    v20 = v19[2];
    if (v20)
    {
      v21 = *(a1 + v20);
      v22 = (a1 + v20 + v21);
      v23 = *v22;
      if (v23)
      {
        v24 = 0;
        v25 = 4 * v23;
        v26 = a1 + v20 + v21;
        while (1)
        {
          v27 = v22[v24 / 4 + 1];
          v28 = &v22[v24 / 4] + v27;
          v29 = &v22[v24 / 4] + v27 - *(v28 + 1);
          if (*(v29 + 2) >= 5u && (v30 = *(v29 + 4)) != 0)
          {
            v31 = &v22[v24 / 4 + 1] + v27 + v30 + *(&v22[v24 / 4 + 1] + v27 + v30);
          }

          else
          {
            v31 = 0;
          }

          v32 = sub_2C9AE4(v31);
          v33 = &v26[v24 + v27 - *(v28 + 1)];
          if (*(v33 + 2) < 7u)
          {
            break;
          }

          v34 = *(v33 + 5);
          if (!v34)
          {
            break;
          }

          v35 = &v26[v27 + v34 + v24 + *&v26[v24 + 4 + v27 + v34]];
          v36 = *(v35 + 1);
          if (v36 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v51) = *(v35 + 1);
          if (v36)
          {
            memcpy(&__dst, v35 + 8, v36);
            *(&__dst + v36) = 0;
            v37 = *(v3 + 48);
            v38 = *(v3 + 56);
            if (v37 < v38)
            {
              goto LABEL_31;
            }

LABEL_46:
            v39 = *v48;
            v40 = v37 - *v48;
            v41 = (v40 >> 5) + 1;
            if (v41 >> 59)
            {
              sub_1794();
            }

            v42 = v26;
            v43 = v25;
            v44 = v38 - v39;
            if (v44 >> 4 > v41)
            {
              v41 = v44 >> 4;
            }

            if (v44 >= 0x7FFFFFFFFFFFFFE0)
            {
              v45 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v45 = v41;
            }

            if (v45)
            {
              if (!(v45 >> 59))
              {
                operator new();
              }

              sub_1808();
            }

            v46 = 32 * (v40 >> 5);
            *v46 = v32;
            *(v46 + 8) = __dst;
            *(v46 + 24) = v51;
            v47 = v46 + 32;
            memcpy(0, v39, v40);
            v49[5] = 0;
            v3 = v49;
            v49[7] = 0;
            if (v39)
            {
              operator delete(v39);
            }

            v25 = v43;
            v26 = v42;
            v49[6] = v47;
            v24 += 4;
            if (v25 == v24)
            {
              return;
            }
          }

          else
          {
            *(&__dst + v36) = 0;
            v37 = *(v3 + 48);
            v38 = *(v3 + 56);
            if (v37 >= v38)
            {
              goto LABEL_46;
            }

LABEL_31:
            *v37 = v32;
            *(v37 + 8) = __dst;
            *(v37 + 24) = v51;
            *(v3 + 48) = v37 + 32;
            v24 += 4;
            if (v25 == v24)
            {
              return;
            }
          }
        }

        HIBYTE(v51) = 0;
        LOBYTE(__dst) = 0;
        v37 = *(v3 + 48);
        v38 = *(v3 + 56);
        if (v37 < v38)
        {
          goto LABEL_31;
        }

        goto LABEL_46;
      }
    }
  }
}

uint64_t sub_509680(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

uint64_t sub_5096DC(void *a1)
{
  if (*(a1 + 23) < 0)
  {
    if (a1[1] == 19)
    {
      v4 = **a1 == 0x5F4E4F4954415453 && *(*a1 + 8) == 0x4948535F454E494CLL;
      if (v4 && *(*a1 + 11) == 0x444C454948535F45)
      {
        return 0;
      }
    }

    if (a1[1] == 11 && **a1 == 0x4948535F454E494CLL && *(*a1 + 3) == 0x444C454948535F45)
    {
      return 1;
    }

    if (a1[1] == 11 && **a1 == 0x4948535F45444F4DLL && *(*a1 + 3) == 0x444C454948535F45)
    {
      return 2;
    }

    v8 = a1[1];
    if (v8 == 22)
    {
      v12 = *a1;
      goto LABEL_67;
    }

    if (v8 == 20)
    {
      v9 = **a1 == 0x485F534543414C50 && *(*a1 + 8) == 0x48535F5245444145;
      if (v9 && *(*a1 + 16) == 1145849161)
      {
        return 3;
      }
    }

LABEL_76:
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    v23 = std::string::append(&v28, "", 1uLL);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v30 = v23->__r_.__value_.__r.__words[2];
    v29 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (v30 >= 0)
    {
      v25 = &v29;
    }

    else
    {
      v25 = v29;
    }

    if (v30 >= 0)
    {
      v26 = HIBYTE(v30);
    }

    else
    {
      v26 = *(&v29 + 1);
    }

    v27 = sub_2D390(exception, v25, v26);
  }

  v1 = *(a1 + 23);
  if (v1 <= 0x13)
  {
    if (v1 != 11)
    {
      if (v1 != 19)
      {
        goto LABEL_76;
      }

      v2 = *a1 == 0x5F4E4F4954415453 && a1[1] == 0x4948535F454E494CLL;
      if (!v2 || *(a1 + 11) != 0x444C454948535F45)
      {
        goto LABEL_76;
      }

      return 0;
    }

    if (*a1 != 0x4948535F454E494CLL || *(a1 + 3) != 0x444C454948535F45)
    {
      if (*a1 != 0x4948535F45444F4DLL || *(a1 + 3) != 0x444C454948535F45)
      {
        goto LABEL_76;
      }

      return 2;
    }

    return 1;
  }

  if (v1 == 20)
  {
    if (*a1 == 0x485F534543414C50 && a1[1] == 0x48535F5245444145 && *(a1 + 4) == 1145849161)
    {
      return 3;
    }

    goto LABEL_76;
  }

  v12 = a1;
  if (v1 != 22)
  {
    goto LABEL_76;
  }

LABEL_67:
  v17 = *v12;
  v18 = v12[1];
  v19 = *(v12 + 14);
  if (v17 != 0x535F534543414C50 || v18 != 0x5F454C5544454843 || v19 != 0x444C454948535F45)
  {
    goto LABEL_76;
  }

  return 4;
}

void sub_509A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_509AD8(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v23[0] = a1;
  v23[1] = a2;
  v23[2] = &v24;
  v24 = a1;
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    sub_35CC(__p, *a1);
    sub_4564(__p, a2, &v25);
    sub_3874(__p);
    size = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    std::to_string(&v25, *a1);
    size = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v8 = &v25;
      if (size == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  size = v25.__r_.__value_.__l.__size_;
  v9 = (v25.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v9 == v25.__r_.__value_.__l.__size_)
  {
    if ((v25.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

LABEL_10:
    operator new();
  }

  v8 = v25.__r_.__value_.__r.__words[0];
LABEL_12:
  v8->__r_.__value_.__s.__data_[size] = 115;
  v10 = size + 1;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    v25.__r_.__value_.__l.__size_ = v10;
  }

  else
  {
    *(&v25.__r_.__value_.__s + 23) = v10 & 0x7F;
  }

  v8->__r_.__value_.__s.__data_[v10] = 0;
  v22 = v25;
  if (*(a1 + 8))
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1 == *(a1 + 4);
  }

  v12 = !v11;
  if (v11)
  {
    v17 = 0;
    HIBYTE(v27) = 0;
    LOBYTE(__p[0]) = 0;
  }

  else
  {
    sub_509E84(v23, &v21);
    v13 = std::string::insert(&v21, 0, " [exp: ", 7uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v25, "]", 1uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v27 = v15->__r_.__value_.__r.__words[2];
    *__p = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = HIBYTE(v27);
  }

  if ((v17 & 0x80u) == 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v19 = v17;
  }

  else
  {
    v19 = __p[1];
  }

  v20 = std::string::append(&v22, v18, v19);
  *a3 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
    if (!v12)
    {
      goto LABEL_36;
    }
  }

  else if (!v12)
  {
LABEL_36:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_37;
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }
  }

  else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(v21.__r_.__value_.__l.__data_);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_37:
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_509DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_509E84(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 9);
  if (v4 == 2)
  {
    *(a2 + 23) = 3;
    *a2 = 7233891;
    return;
  }

  if (v4 == 1)
  {
    v11 = *(v3 + 4);
    v12 = a1[1];
    v13 = *(v12 + 23);
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(v12 + 8);
    }

    if (v13)
    {
      sub_35CC(__s, v11);
      sub_4564(__s, v12, &v16);
      sub_3874(__s);
    }

    else
    {
      std::to_string(&v16, v11);
    }

    v14 = std::string::append(&v16, "skp", 3uLL);
    *a2 = *v14;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_25;
    }

    return;
  }

  if (*(*a1 + 9))
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return;
  }

  v5 = *(v3 + 4);
  v7 = a1[1];
  v8 = *(v7 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v7 + 8);
  }

  if (v8)
  {
    sub_35CC(__s, v5);
    sub_4564(__s, v7, &v16);
    sub_3874(__s);
    v9 = *(*a1[2] + 8);
    if (*(*a1[2] + 8))
    {
      goto LABEL_8;
    }

LABEL_21:
    v10 = 1;
    HIBYTE(v19) = 1;
    strcpy(__s, "s");
    goto LABEL_23;
  }

  std::to_string(&v16, v5);
  v9 = *(*a1[2] + 8);
  if (!*(*a1[2] + 8))
  {
    goto LABEL_21;
  }

LABEL_8:
  if (v9 == 1)
  {
    v10 = 1;
    HIBYTE(v19) = 1;
    strcpy(__s, "r");
  }

  else
  {
    v10 = 0;
    *__s = 0;
    v18 = 0;
    v19 = 0;
  }

LABEL_23:
  v15 = std::string::append(&v16, __s, v10);
  *a2 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(*__s);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_25;
    }
  }

  else if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_25:
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_50A098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_50A0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_50A0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

void sub_50A10C(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v25[0] = a1;
  v25[1] = a2;
  v25[2] = &v26;
  v26 = a1;
  v5 = *a1;
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    if (v5 < 0)
    {
      v8 = -5;
    }

    else
    {
      v8 = 5;
    }

    sub_35CC(__p, v5 / 10 + (((103 * (v8 + v5 % 10)) >> 15) & 1) + ((103 * (v8 + v5 % 10)) >> 10));
    sub_4564(__p, a2, &v27);
    sub_3874(__p);
    size = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
LABEL_8:
      v10 = &v27;
      if (size == 22)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }
  }

  else
  {
    std::to_string(&v27, v5);
    size = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  size = v27.__r_.__value_.__l.__size_;
  v11 = (v27.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v11 == v27.__r_.__value_.__l.__size_)
  {
    if ((v27.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

LABEL_13:
    operator new();
  }

  v10 = v27.__r_.__value_.__r.__words[0];
LABEL_15:
  v10->__r_.__value_.__s.__data_[size] = 115;
  v12 = size + 1;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    v27.__r_.__value_.__l.__size_ = v12;
  }

  else
  {
    *(&v27.__r_.__value_.__s + 23) = v12 & 0x7F;
  }

  v10->__r_.__value_.__s.__data_[v12] = 0;
  v24 = v27;
  if (*(a1 + 8))
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1 == *(a1 + 4);
  }

  v14 = !v13;
  if (v13)
  {
    v19 = 0;
    HIBYTE(v29) = 0;
    LOBYTE(__p[0]) = 0;
  }

  else
  {
    sub_50A500(v25, &v23);
    v15 = std::string::insert(&v23, 0, " [exp: ", 7uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v27, "]", 1uLL);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v29 = v17->__r_.__value_.__r.__words[2];
    *__p = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = HIBYTE(v29);
  }

  if ((v19 & 0x80u) == 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = __p[1];
  }

  v22 = std::string::append(&v24, v20, v21);
  *a3 = *v22;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
    if (!v14)
    {
      goto LABEL_39;
    }
  }

  else if (!v14)
  {
LABEL_39:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_40;
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }
  }

  else if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

  operator delete(v23.__r_.__value_.__l.__data_);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_40:
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_50A460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_50A500(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 9);
  if (v4 == 2)
  {
    *(a2 + 23) = 3;
    *a2 = 7233891;
    return;
  }

  if (v4 == 1)
  {
    v13 = *(v3 + 4);
    v14 = a1[1];
    v15 = *(v14 + 23);
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(v14 + 8);
    }

    if (v15)
    {
      if (v13 < 0)
      {
        v16 = -5;
      }

      else
      {
        v16 = 5;
      }

      sub_35CC(__s, v13 / 10 + (((103 * (v16 + v13 % 10)) >> 15) & 1) + ((103 * (v16 + v13 % 10)) >> 10));
      sub_4564(__s, v14, &v19);
      sub_3874(__s);
    }

    else
    {
      std::to_string(&v19, v13);
    }

    v17 = std::string::append(&v19, "skp", 3uLL);
    *a2 = *v17;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_31;
    }

    return;
  }

  if (*(*a1 + 9))
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return;
  }

  v6 = *(v3 + 4);
  v7 = a1;
  v8 = a1[1];
  v9 = *(v8 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v8 + 8);
  }

  if (v9)
  {
    if (v6 < 0)
    {
      v10 = -5;
    }

    else
    {
      v10 = 5;
    }

    sub_35CC(__s, v6 / 10 + (((103 * (v10 + v6 % 10)) >> 15) & 1) + ((103 * (v10 + v6 % 10)) >> 10));
    sub_4564(__s, v8, &v19);
    sub_3874(__s);
    v11 = *(*v7[2] + 8);
    if (*(*v7[2] + 8))
    {
      goto LABEL_11;
    }

LABEL_27:
    v12 = 1;
    HIBYTE(v22) = 1;
    strcpy(__s, "s");
    goto LABEL_29;
  }

  std::to_string(&v19, v6);
  v11 = *(*v7[2] + 8);
  if (!*(*v7[2] + 8))
  {
    goto LABEL_27;
  }

LABEL_11:
  if (v11 == 1)
  {
    v12 = 1;
    HIBYTE(v22) = 1;
    strcpy(__s, "r");
  }

  else
  {
    v12 = 0;
    *__s = 0;
    v21 = 0;
    v22 = 0;
  }

LABEL_29:
  v18 = std::string::append(&v19, __s, v12);
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(*__s);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_31;
    }
  }

  else if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_31:
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void sub_50A7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_50A7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_50A7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

void sub_50A81C(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  if (!v6)
  {
    sub_925C4(&v37);
  }

  v7 = sub_3CEB30(v6);
  v8 = v7[1];
  v36[0] = *v7;
  v36[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *a2;
  if (*a2)
  {
    v10 = v9[17];
    v34 = v9[16];
    v35 = v10;
    if (!v10 || (atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed), (v9 = *a2) != 0))
    {
      v37 = 0uLL;
      v38 = 0;
      v11 = *v9;
      v12 = v9[1];
      __p = &v37;
      v32 = 0;
      if (v12 != v11)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 4) < 0x555555555555556)
        {
          operator new();
        }

        sub_1794();
      }

      v13 = *a1;
      if (!*a1)
      {
        goto LABEL_52;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v37 = 0uLL;
  v38 = 0;
  v13 = *a1;
  if (!*a1)
  {
    goto LABEL_52;
  }

LABEL_15:
  if ((sub_3CEB28(v13) & 1) == 0)
  {
    v15 = *(&v37 + 1);
    v14 = v37;
    if (v37 == *(&v37 + 1))
    {
      goto LABEL_51;
    }

    while (1)
    {
      v16 = *(v14 + 23);
      v17 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v14 + 8);
      }

      if (v16 < 0xD)
      {
        break;
      }

      v18 = v17 >= 0 ? v14 : *v14;
      v19 = *v18;
      v20 = *(v18 + 5);
      if (v19 != 0x6C616E7265746E69 || v20 != 0x7365646F6D6C616ELL)
      {
        break;
      }

      v14 += 48;
      if (v14 == *(&v37 + 1))
      {
        v14 = *(&v37 + 1);
        goto LABEL_51;
      }
    }

    if (v14 != *(&v37 + 1))
    {
      v22 = (v14 + 48);
      if (v14 + 48 != *(&v37 + 1))
      {
        do
        {
          v24 = *(v22 + 23);
          v25 = v24;
          if ((v24 & 0x80u) != 0)
          {
            v24 = v22[1];
          }

          if (v24 >= 0xD)
          {
            v26 = v25 >= 0 ? v22 : *v22;
            v27 = *v26;
            v28 = *(v26 + 5);
            if (v27 == 0x6C616E7265746E69 && v28 == 0x7365646F6D6C616ELL)
            {
              if (*(v14 + 23) < 0)
              {
                operator delete(*v14);
              }

              v30 = *v22;
              *(v14 + 16) = v22[2];
              *v14 = v30;
              *(v22 + 23) = 0;
              *v22 = 0;
              if (*(v14 + 47) < 0)
              {
                operator delete(*(v14 + 24));
              }

              v23 = *(v22 + 3);
              *(v14 + 40) = v22[5];
              *(v14 + 24) = v23;
              *(v22 + 47) = 0;
              *(v22 + 24) = 0;
              v14 += 48;
            }
          }

          v22 += 6;
        }

        while (v22 != v15);
        v15 = *(&v37 + 1);
      }
    }

LABEL_51:
    sub_50D2A4(&v37, v14, v15);
  }

LABEL_52:
  sub_50D108(a3, v36, &v34, &v37);
  if (*a1 && sub_3CEB38(*a1))
  {
    sub_3CEB38(*a1);
    v33 = 7;
    strcpy(&__p, "offline");
  }

  else
  {
    v33 = 0;
    LOBYTE(__p) = 0;
  }

  sub_50AD78(a3, &__p);
  sub_50B120(a3);
}

void sub_50ACBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14)
{
  sub_2C1A58(&a9);
  sub_1F1A8(&a12);
  sub_1F1A8(&a14);
  _Unwind_Resume(a1);
}

void sub_50AD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  sub_3B857C(v19);
  sub_1AA90(&a19);
  sub_1F1A8(&a15);
  sub_1F1A8(&a17);
  _Unwind_Resume(a1);
}

void sub_50AD78(uint64_t *a1, uint64_t a2)
{
  if (!sub_93618(*a1))
  {
    operator new();
  }
}

void sub_50B120(uint64_t *a1)
{
  v1 = sub_93420(*a1);
  sub_5F328(v45);
  v2 = *(v1 + 16);
  if (v2)
  {
    while (1)
    {
      v3 = sub_588E0((v2 + 5));
      v4 = sub_5FC5C();
      while (v3 != v4)
      {
        if (*(v3 + 48) == 5)
        {
          v5 = *(v3 + 40);
          BYTE7(v33) = 12;
          strcpy(__p, "environments");
          v6 = sub_5FC3C(v5, __p);
          if (SBYTE7(v33) < 0)
          {
            v7 = v6;
            operator delete(__p[0]);
            if (v7)
            {
LABEL_10:
              if (*(v3 + 39) < 0)
              {
                sub_325C(&v43, *(v3 + 16), *(v3 + 24));
              }

              else
              {
                v43 = *(v3 + 16);
                v44 = *(v3 + 32);
              }

              if (*(v3 + 48) == 5)
              {
                v9 = *(v3 + 40);
                BYTE7(v33) = 6;
                strcpy(__p, "values");
                sub_5F5AC(v9, __p);
                operator new();
              }

              sub_5AF20();
            }
          }

          else if (v6)
          {
            goto LABEL_10;
          }
        }

        if (*(v3 + 39) < 0)
        {
          sub_325C(&v41, *(v3 + 16), *(v3 + 24));
        }

        else
        {
          v41 = *(v3 + 16);
          v42 = *(v3 + 32);
        }

        v39[0] = 0;
        v40 = -1;
        v8 = *(v3 + 48);
        if (v8 != -1)
        {
          __p[0] = v39;
          (off_266B050[v8])(__p, v3 + 40);
          v40 = v8;
        }

        sub_607AC(v45, &v41, v39);
        if (v40 != -1)
        {
          (off_266B008[v40])(__p, v39);
        }

        v40 = -1;
        if (SHIBYTE(v42) < 0)
        {
          operator delete(v41);
        }

        v3 = *v3;
      }

      if (sub_5FC3C(a1 + 2, v2 + 2))
      {
        break;
      }

LABEL_32:
      *__p = 0u;
      v33 = 0u;
      v34 = 1065353216;
      sub_8C0B4((v2 + 2), a1 + 10, __p);
      HIBYTE(v47) = 14;
      strcpy(v46, "default_region");
      v14 = sub_8DCBC(__p, v46);
      v15 = v14;
      if (SHIBYTE(v47) < 0)
      {
        operator delete(v46[0]);
        if (!v15)
        {
          goto LABEL_48;
        }
      }

      else if (!v14)
      {
        goto LABEL_48;
      }

      HIBYTE(v47) = 14;
      strcpy(v46, "default_region");
      v37[0] = v46;
      v21 = sub_8D76C(__p, v46, &unk_229EB70, v37);
      sub_5FC7C(v45, (v21 + 5));
      if ((SHIBYTE(v47) & 0x80000000) == 0)
      {
LABEL_48:
        v22 = v33;
        if (v33)
        {
          goto LABEL_54;
        }

        goto LABEL_49;
      }

      operator delete(v46[0]);
      v22 = v33;
      if (v33)
      {
        do
        {
LABEL_54:
          v24 = *v22;
          v25 = *(v22 + 7);
          if (v25)
          {
            do
            {
              v27 = *v25;
              v28 = *(v25 + 12);
              if (v28 != -1)
              {
                (off_266B008[v28])(v46, v25 + 5);
              }

              *(v25 + 12) = -1;
              if (*(v25 + 39) < 0)
              {
                operator delete(v25[2]);
              }

              operator delete(v25);
              v25 = v27;
            }

            while (v27);
          }

          v26 = *(v22 + 5);
          *(v22 + 5) = 0;
          if (v26)
          {
            operator delete(v26);
          }

          if (v22[39] < 0)
          {
            operator delete(*(v22 + 2));
          }

          operator delete(v22);
          v22 = v24;
        }

        while (v24);
      }

LABEL_49:
      v23 = __p[0];
      __p[0] = 0;
      if (v23)
      {
        operator delete(v23);
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_64;
      }
    }

    *__p = 0u;
    v33 = 0u;
    v34 = 1065353216;
    v10 = sub_5F5AC(a1 + 2, v2 + 2);
    sub_8B9BC(v10, __p);
    HIBYTE(v47) = 14;
    strcpy(v46, "default_region");
    v37[0] = v46;
    v11 = sub_8D76C(__p, v46, &unk_229EB70, v37);
    sub_5FC7C(v45, (v11 + 5));
    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46[0]);
      v12 = v33;
      if (!v33)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v12 = v33;
      if (!v33)
      {
LABEL_30:
        v13 = __p[0];
        __p[0] = 0;
        if (v13)
        {
          operator delete(v13);
        }

        goto LABEL_32;
      }
    }

    do
    {
      v16 = *v12;
      v17 = *(v12 + 7);
      if (v17)
      {
        do
        {
          v19 = *v17;
          v20 = *(v17 + 12);
          if (v20 != -1)
          {
            (off_266B008[v20])(v46, v17 + 5);
          }

          *(v17 + 12) = -1;
          if (*(v17 + 39) < 0)
          {
            operator delete(v17[2]);
          }

          operator delete(v17);
          v17 = v19;
        }

        while (v19);
      }

      v18 = *(v12 + 5);
      *(v12 + 5) = 0;
      if (v18)
      {
        operator delete(v18);
      }

      if (v12[39] < 0)
      {
        operator delete(*(v12 + 2));
      }

      operator delete(v12);
      v12 = v16;
    }

    while (v16);
    goto LABEL_30;
  }

LABEL_64:
  sub_74700();
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  BYTE7(v33) = 6;
  strcpy(__p, "enable");
  v36 = 0;
  LOBYTE(v35) = 0;
  sub_5FB24(&v35, v37, v45, __p);
  if (v36 < 0)
  {
    operator delete(v35);
    if ((SBYTE7(v33) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }
  }

  else if ((SBYTE7(v33) & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

  operator delete(__p[0]);
LABEL_66:
  if ((v38 & 0x80u) == 0)
  {
    v29 = v37;
  }

  else
  {
    v29 = v37[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v30 = v38;
  }

  else
  {
    v30 = v37[1];
  }

  sub_22174(v29, v30, 0x2Cu, &v35);
}

void sub_50C208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, int a63)
{
  sub_1A104(&a57);
  if (a65 < 0)
  {
    operator delete(__p);
  }

  sub_1A104((v65 - 120));
  sub_5C010(v65 - 160);
  _Unwind_Resume(a1);
}

void sub_50C408(_Unwind_Exception *a1)
{
  sub_5BB74(v1 - 256);
  if (*(v1 - 217) < 0)
  {
    operator delete(*(v1 - 240));
  }

  sub_5C010(v1 - 160);
  _Unwind_Resume(a1);
}

void sub_50C418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    sub_5C010(v28 - 160);
    _Unwind_Resume(a1);
  }

  sub_5C010(v28 - 160);
  _Unwind_Resume(a1);
}

void sub_50C4A4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  sub_5F328(a3 + 16);
  *(a3 + 56) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 72) = 0u;
  sub_5F328(a3 + 120);
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 1065353216;
  v7 = *a1;
  v6 = a1[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a3 + 8);
  *a3 = v7;
  *(a3 + 8) = v6;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (a3 == a1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (a3 != a1)
  {
LABEL_6:
    *(a3 + 48) = *(a1 + 12);
    sub_618D4(a3 + 16, a1[4], 0);
    sub_94F34((a3 + 56), a1[7], a1[8], 0xCCCCCCCCCCCCCCCDLL * ((a1[8] - a1[7]) >> 3));
  }

LABEL_7:
  v10 = a1[10];
  v9 = a1[11];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a3 + 88);
  *(a3 + 80) = v10;
  *(a3 + 88) = v9;
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (a3 == a1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (a3 != a1)
  {
LABEL_12:
    sub_50D3E8((a3 + 96), a1[12], a1[13], 0xAAAAAAAAAAAAAAABLL * ((a1[13] - a1[12]) >> 4));
  }

LABEL_13:
  if (a3 + 120 != a2)
  {
    *(a3 + 152) = *(a2 + 32);
    sub_618D4(a3 + 120, *(a2 + 16), 0);
  }
}

void sub_50C678(_Unwind_Exception *a1)
{
  sub_1AA90((v1 + 96));
  sub_1F1A8(v1 + 80);
  sub_91868(v2);
  sub_5C010(v1 + 16);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t **sub_50C6D4(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = a1;
  v5 = sub_93428(*a1, a2);
  v6 = sub_50CD64(v4, v5, a3);
  if (!sub_5FC6C(v6))
  {
    return v6;
  }

  if (sub_5FC3C(v4 + 2, v5))
  {
    sub_8B908(v5, v4 + 10);
    v7 = 1;
LABEL_4:
    LOBYTE(v8) = 1;
    goto LABEL_5;
  }

  v16 = v4[7];
  v17 = v4[8];
  if (v16 == v17)
  {
    v7 = sub_8B908(v5, v4 + 10);
    goto LABEL_4;
  }

  v28 = v4;
  v29 = a3;
  v18 = 0;
  v19 = 1;
  v20 = 1;
  do
  {
    v21 = sub_5FC3C(v16, v5);
    v31 = 18;
    v22 = v21;
    strcpy(__p, "allow_ab_overrides");
    v32[0] = 0;
    v23 = sub_5FBE4(v16, __p, v32);
    if (v31 < 0)
    {
      operator delete(*__p);
    }

    v31 = 19;
    strcpy(__p, "allow_url_overrides");
    v32[0] = 0;
    v24 = sub_5FBE4(v16, __p, v32);
    if (v31 < 0)
    {
      v25 = v24;
      operator delete(*__p);
      v24 = v25;
    }

    v18 |= v22;
    v19 &= v23;
    v20 &= v24;
    v16 += 5;
  }

  while (v16 != v17);
  if (v19)
  {
    v4 = v28;
    v7 = (v18 | sub_8B908(v5, v28 + 10)) & 1;
    v9 = 1;
    if ((v20 & 1) == 0)
    {
      v8 = 0;
      v10 = 0;
      a3 = v29;
      goto LABEL_6;
    }

    LOBYTE(v8) = 1;
    a3 = v29;
  }

  else
  {
    v8 = 0;
    v7 = v18 & 1;
    if (!v20)
    {
      v10 = 0;
      v9 = 0;
      v4 = v28;
      a3 = v29;
      goto LABEL_6;
    }

    v4 = v28;
    a3 = v29;
  }

LABEL_5:
  v9 = v8;
  v10 = sub_8B6D0(v5, v4 + 12);
  v8 = 1;
LABEL_6:
  if (v10 | v7 | sub_5FC3C(v4 + 15, v5))
  {
    v33[0] = v4;
    v33[1] = v5;
    sub_50CF58(v33);
    *__p = v5;
    v11 = sub_957C4(v4 + 20, v5, &unk_229EB70, __p);
    v13 = v4[7];
    v12 = v4[8];
    while (v13 != v12)
    {
      if (sub_5FC3C(v13, v5))
      {
        v14 = sub_5F5AC(v13, v5);
        sub_8B9BC(v14, v11 + 5);
      }

      v13 += 5;
    }

    if (v9)
    {
      sub_8C0B4(v5, v4 + 10, v11 + 5);
    }

    if (v8 && v4[12] != v4[13])
    {
      sub_8C2C8(v5, v4 + 12, (v11 + 5));
    }

    if (sub_5FC3C(v4 + 15, v5))
    {
      v15 = sub_5F5AC(v4 + 15, v5);
      sub_8B9BC(v15, v11 + 5);
    }
  }

  else
  {
    *__p = v5;
    v26 = sub_957C4(v4 + 20, v5, &unk_229EB70, __p);
    sub_50D760((v26 + 5), 0, 0);
  }

  return sub_50CD64(v4, v5, a3);
}

void sub_50CA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, int a19, int a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a2 == 1)
  {
    v28 = __cxa_begin_catch(exception_object);
    sub_3608D0((v27 - 128), "ServerWarning.Exception");
    sub_2C0888(&a21);
    nullsub_1();
    sub_2C1D4C(&a21);
    if (*(v27 - 105) < 0)
    {
      operator delete(*(v27 - 128));
    }

    if (sub_7E7E4(3u))
    {
      sub_19594F8(&a21);
      v29 = sub_4A5C(&a21, "Exception caught when trying to override json value in ", 55);
      v30 = *(v26 + 23);
      if (v30 >= 0)
      {
        v31 = v26;
      }

      else
      {
        v31 = *v26;
      }

      if (v30 >= 0)
      {
        v32 = *(v26 + 23);
      }

      else
      {
        v32 = *(v26 + 8);
      }

      v33 = sub_4A5C(v29, v31, v32);
      v34 = sub_4A5C(v33, ". Exception: ", 13);
      v35 = (*(*v28 + 16))(v28);
      v36 = strlen(v35);
      sub_4A5C(v34, v35, v36);
      sub_1959680(&a21, (v27 - 128));
      sub_7E854((v27 - 128), 3u);
      if (*(v27 - 105) < 0)
      {
        operator delete(*(v27 - 128));
      }

      sub_1959728(&a21);
    }

    v37 = sub_74700();
    if (sub_7E7E4(3u))
    {
      sub_19594F8(&a21);
      v38 = sub_4A5C(&a21, "Exception caused by ", 20);
      a20 = sub_7421C(v37);
      sub_7230C(&a20, v27 - 128);
      v39 = *(v27 - 105);
      if (v39 >= 0)
      {
        v40 = v27 - 128;
      }

      else
      {
        v40 = *(v27 - 128);
      }

      if (v39 >= 0)
      {
        v41 = *(v27 - 105);
      }

      else
      {
        v41 = *(v27 - 120);
      }

      v42 = sub_4A5C(v38, v40, v41);
      v43 = sub_4A5C(v42, " request (entity=", 17);
      sub_734A0(v37, &__p);
      if (a18 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (a18 >= 0)
      {
        v45 = a18;
      }

      else
      {
        v45 = a14;
      }

      v46 = sub_4A5C(v43, p_p, v45);
      v47 = sub_4A5C(v46, "): ", 3);
      v48 = sub_73F1C(v37);
      v49 = *(v48 + 23);
      if (v49 >= 0)
      {
        v50 = v48;
      }

      else
      {
        v50 = *v48;
      }

      if (v49 >= 0)
      {
        v51 = *(v48 + 23);
      }

      else
      {
        v51 = *(v48 + 8);
      }

      sub_4A5C(v47, v50, v51);
      if (a18 < 0)
      {
        operator delete(__p);
      }

      if (*(v27 - 105) < 0)
      {
        operator delete(*(v27 - 128));
      }

      sub_1959680(&a21, (v27 - 128));
      sub_7E854((v27 - 128), 3u);
      if (*(v27 - 105) < 0)
      {
        operator delete(*(v27 - 128));
      }

      sub_1959728(&a21);
    }

    sub_50CF58(v27 - 104);
    __cxa_end_catch();
    JUMPOUT(0x50C974);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_50CD64(uint64_t **a1, uint64_t *a2, uint64_t **a3)
{
  if ((atomic_load_explicit(&qword_2790428, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2790428))
  {
    sub_5F328(&unk_2790430);
    __cxa_guard_release(&qword_2790428);
  }

  if (!sub_95454(a1 + 20, a2))
  {
    return &unk_2790430;
  }

  v6 = sub_95454(a1 + 20, a2);
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v6;
  if (v6[8])
  {
    v9 = *a3;
    v8 = a3[1];
    if (v9 != v8)
    {
      while (!sub_8DCBC(v7 + 5, v9))
      {
        v9 += 3;
        if (v9 == v8)
        {
          goto LABEL_8;
        }
      }

      v13 = sub_8DCBC(v7 + 5, v9);
      if (v13)
      {
        return v13 + 5;
      }

LABEL_20:
      sub_49EC("unordered_map::at: key not found");
    }

LABEL_8:
    v16 = 14;
    strcpy(__p, "default_region");
    v10 = sub_8DCBC(v7 + 5, __p);
    if (!v10)
    {
      sub_49EC("unordered_map::at: key not found");
    }

    result = v10 + 5;
    if (v16 < 0)
    {
      v14 = result;
      operator delete(__p[0]);
      return v14;
    }
  }

  else
  {
    v12 = *a1;

    return sub_90534(v12, a2, a3);
  }

  return result;
}

void sub_50CF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_50CF58(uint64_t a1)
{
  v2 = *a1;
  v3 = (*a1 + 160);
  v4 = sub_92F4C(**a1, *(a1 + 8));
  v8 = *(a1 + 8);
  v5 = sub_957C4(v3, v8, &unk_229EB70, &v8);
  if (v5 + 5 != v4)
  {
    *(v5 + 18) = *(v4 + 8);
    sub_94B48((v5 + 5), v4[2], 0);
  }

  if (sub_5FC3C(v2 + 2, *(a1 + 8)))
  {
    v6 = sub_5F5AC(v2 + 2, *(a1 + 8));
    v8 = *(a1 + 8);
    v7 = sub_957C4(v3, v8, &unk_229EB70, &v8);
    sub_8B9BC(v6, v7 + 5);
  }
}

BOOL sub_50D02C(uint64_t *a1, uint64_t *a2)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_50C6D4(a1, a2, &__p);
  v4 = __p;
  if (__p)
  {
    v5 = v12;
    v6 = __p;
    if (v12 != __p)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p;
    }

    v12 = v4;
    operator delete(v6);
  }

  v8 = sub_93428(*a1, a2);
  v9 = sub_9560C(a1 + 20, v8);
  if (!v9)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  return v9[8] != 0;
}

void sub_50D0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

uint64_t sub_50D108(uint64_t a1, void *a2, void *a3, __int128 **a4)
{
  v7 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_5F328(a1 + 16);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v8 = a3[1];
  *(a1 + 80) = *a3;
  *(a1 + 88) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v10 = *a4;
  v9 = a4[1];
  if (v9 != v10)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v9 - v10) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  sub_5F328(a1 + 120);
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  return a1;
}

void sub_50D240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9)
{
  *(v9 + 104) = v12;
  sub_2C1A58(&a9);
  sub_1F1A8(v11);
  sub_91868(v10);
  sub_5C010(v9 + 16);
  sub_1F1A8(v9);
  _Unwind_Resume(a1);
}

void **sub_50D2A4(uint64_t *a1, void **a2, void **a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v15 = a2;
      if (v5 != a2)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v6 = *a1;
    v7 = -*a1;
    v8 = a2 + *a1;
    v9 = a3 + *a1;
    do
    {
      v12 = &v8[v7];
      if (v8[v7 + 23] < 0)
      {
        operator delete(*v12);
      }

      v13 = &v9[v7];
      v14 = *&v9[v7];
      *(v12 + 2) = *&v9[v7 + 16];
      *v12 = v14;
      v13[23] = 0;
      *v13 = 0;
      if (v12[47] < 0)
      {
        operator delete(*(v12 + 3));
      }

      v10 = &v9[v7];
      v11 = *&v9[v7 + 24];
      *(v12 + 5) = *&v9[v7 + 40];
      *(v12 + 24) = v11;
      v10[47] = 0;
      v10[24] = 0;
      v8 += 48;
      v9 += 48;
    }

    while (&v9[v7] != v5);
    v5 = a1[1];
    v15 = &v8[-v6];
    if (v5 == v15)
    {
LABEL_12:
      a1[1] = v15;
      return a2;
    }

    while (1)
    {
LABEL_15:
      if (*(v5 - 1) < 0)
      {
        operator delete(*(v5 - 3));
        v17 = v5 - 6;
        if (*(v5 - 25) < 0)
        {
LABEL_19:
          operator delete(*v17);
        }
      }

      else
      {
        v17 = v5 - 6;
        if (*(v5 - 25) < 0)
        {
          goto LABEL_19;
        }
      }

      v5 = v17;
      if (v17 == v15)
      {
        goto LABEL_12;
      }
    }
  }

  return a2;
}

void sub_50D3E8(void ***a1, size_t **a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4) < a4)
  {
    if (!v8)
    {
      goto LABEL_30;
    }

    v9 = a4;
    v10 = a1[1];
    v11 = *a1;
    if (v10 == v8)
    {
LABEL_29:
      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
LABEL_30:
      if (a4 <= 0x555555555555555)
      {
        v18 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
        v19 = 2 * v18;
        if (2 * v18 <= a4)
        {
          v19 = a4;
        }

        if (v18 >= 0x2AAAAAAAAAAAAAALL)
        {
          v20 = 0x555555555555555;
        }

        else
        {
          v20 = v19;
        }

        if (v20 <= 0x555555555555555)
        {
          operator new();
        }
      }

      sub_1794();
    }

    while (1)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 24));
        v12 = (v10 - 48);
        if (*(v10 - 25) < 0)
        {
LABEL_10:
          operator delete(*v12);
        }
      }

      else
      {
        v12 = (v10 - 48);
        if (*(v10 - 25) < 0)
        {
          goto LABEL_10;
        }
      }

      v10 = v12;
      if (v12 == v8)
      {
        v11 = *a1;
        goto LABEL_29;
      }
    }
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_50D658(v8, v5);
        v5 += 6;
        v8 += 6;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    if (v13 == v8)
    {
LABEL_21:
      a1[1] = v8;
      return;
    }

    while (1)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 24));
        v17 = (v13 - 48);
        if (*(v13 - 25) < 0)
        {
LABEL_27:
          operator delete(*v17);
        }
      }

      else
      {
        v17 = (v13 - 48);
        if (*(v13 - 25) < 0)
        {
          goto LABEL_27;
        }
      }

      v13 = v17;
      if (v17 == v8)
      {
        goto LABEL_21;
      }
    }
  }

  if (v13 != v8)
  {
    v15 = v13 - v8;
    v16 = a2;
    do
    {
      sub_50D658(v8, v16);
      v16 += 6;
      v8 += 6;
      v15 -= 48;
    }

    while (v15);
    v13 = a1[1];
  }

  a1[1] = sub_2C18CC(a1, (v5 + v14), a3, v13);
}

void **sub_50D658(void **a1, size_t **a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = a2;
  if (*(a1 + 23) < 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v7 = v3[1];
    }

    sub_13B38(a1, a2, v7);
    v5 = (v3 + 3);
    v6 = *(v3 + 47);
    if (*(a1 + 47) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if ((*(a2 + 23) & 0x80) == 0)
  {
    v4 = *a2;
    a1[2] = a2[2];
    *a1 = v4;
    v5 = (a2 + 3);
    v6 = *(a2 + 47);
    if (*(a1 + 47) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  sub_13A68(a1, *a2, a2[1]);
  v5 = (v3 + 3);
  v6 = *(v3 + 47);
  if ((*(a1 + 47) & 0x80000000) == 0)
  {
LABEL_10:
    if ((v6 & 0x80) != 0)
    {
      sub_13A68(a1 + 3, v3[3], v3[4]);
      return a1;
    }

    v8 = *v5;
    a1[5] = v5[2];
    *(a1 + 3) = v8;
    return a1;
  }

LABEL_14:
  if ((v6 & 0x80u) == 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = v3[3];
  }

  if ((v6 & 0x80u) == 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = v3[4];
  }

  sub_13B38(a1 + 3, v10, v11);
  return a1;
}

void sub_50D760(uint64_t a1, const void **a2, const void **a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      v8 = a2 == a3;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = v7;
    }

    else
    {
      do
      {
        v10 = (v7 + 16);
        if (a2 != (v7 + 16))
        {
          v11 = *(a2 + 23);
          if (*(v7 + 39) < 0)
          {
            if (v11 >= 0)
            {
              v13 = a2;
            }

            else
            {
              v13 = *a2;
            }

            if (v11 >= 0)
            {
              v14 = *(a2 + 23);
            }

            else
            {
              v14 = a2[1];
            }

            sub_13B38(v10, v13, v14);
          }

          else if ((*(a2 + 23) & 0x80) != 0)
          {
            sub_13A68(v10, *a2, a2[1]);
          }

          else
          {
            v12 = *a2;
            *(v7 + 32) = a2[2];
            *v10 = v12;
          }

          *(v7 + 72) = *(a2 + 14);
          sub_618D4(v7 + 40, a2[5], 0);
        }

        v9 = *v7;
        sub_50D8C8(a1, v7);
        a2 += 8;
        if (v9)
        {
          v15 = a2 == a3;
        }

        else
        {
          v15 = 1;
        }

        v7 = v9;
      }

      while (!v15);
    }

    if (v9)
    {
      do
      {
        v16 = *v9;
        sub_8DBE8((v9 + 2));
        operator delete(v9);
        v9 = v16;
      }

      while (v16);
    }
  }

  while (a2 != a3)
  {
    sub_946F4(a1, a2, a2);
    a2 += 8;
  }
}

void sub_50D898(void *a1)
{
  __cxa_begin_catch(a1);
  sub_93EE0(v1, v2);
  __cxa_rethrow();
}

uint64_t **sub_50D8C8(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_AAD8(&v17, v7, v8);
  *(a2 + 8) = v9;
  result = sub_352A30(a1, v9, v4);
  if (!result)
  {
    v11 = a1[1];
    v12 = *(a2 + 8);
    v13 = vcnt_s8(v11);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      if (v12 >= *&v11)
      {
        v12 %= *&v11;
      }
    }

    else
    {
      v12 &= *&v11 - 1;
    }

    v14 = *a1;
    v15 = *(*a1 + 8 * v12);
    if (v15)
    {
      *a2 = *v15;
    }

    else
    {
      *a2 = a1[2];
      a1[2] = a2;
      *(v14 + 8 * v12) = a1 + 2;
      if (!*a2)
      {
        goto LABEL_15;
      }

      v16 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }

        v15 = (v14 + 8 * v16);
      }

      else
      {
        v15 = (v14 + 8 * (v16 & (*&v11 - 1)));
      }
    }

    *v15 = a2;
LABEL_15:
    ++a1[3];
    return a2;
  }

  return result;
}

void sub_50DA10(BOOL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  HIBYTE(v7[2]) = 21;
  strcpy(v7, "ARContinueInfoBuilder");
  memset(v8, 0, sizeof(v8));
  v6 = sub_3AEC94(a2, v7, v8);
  sub_41D598(v6, v9);
  sub_50E610(a1, v9, a3);
}

void sub_50DD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_3E5388(va);
  sub_3E5388(&a9);
  sub_5135D0((v32 + 1304));
  _Unwind_Resume(a1);
}

void sub_50DDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void **a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  sub_5C010(&a36);
  sub_1A104(&a32);
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_50DE10(_BYTE *a1, void *a2)
{
  if (*a1 == 1)
  {
    v2 = a2[138];
    v3 = a2[139] - v2;
    v4 = 0x3795876FF3795877 * (v3 >> 3);
    if (v3)
    {
      v5 = 0;
      do
      {
        if (v5)
        {
          sub_50E054(a1, a2, v5);
        }

        v5 = 1;
      }

      while (v4 != 1);
      v2 = a2[138];
      v4 = 0x3795876FF3795877 * ((a2[139] - v2) >> 3);
    }

    if (v4 > 1)
    {
      v6 = *(v2 + 4648);
      v7 = (v2 + 1008);
      v8 = *(v2 + 2040);
      if (v8 >= *(v2 + 2048))
      {
        v14 = sub_51374C((v2 + 2032), *(v2 + 4648), (v6 + 152), v7, (v2 + 160));
      }

      else
      {
        v9 = *v7;
        v10 = *(v2 + 160);
        sub_5139E8(*(v2 + 2040), *(v2 + 4648));
        *(v8 + 152) = *(v6 + 152);
        v11 = *(v6 + 168);
        v12 = *(v6 + 184);
        v13 = *(v6 + 200);
        *(v8 + 216) = *(v6 + 216);
        *(v8 + 200) = v13;
        *(v8 + 184) = v12;
        *(v8 + 168) = v11;
        *(v8 + 232) = v9;
        *(v8 + 240) = v10;
        *(v8 + 256) = 0;
        *(v8 + 264) = 0;
        *(v8 + 248) = 0;
        v14 = (v8 + 272);
        *(v2 + 2040) = v8 + 272;
      }

      *(v2 + 2040) = v14;
    }
  }
}

void sub_50E054(uint64_t a1, void *a2, unint64_t a3)
{
  sub_50EA30(a2 + 138, a3);
  sub_50EA30(a2 + 138, a3 - 1);
  sub_50EC4C(a1, a2, a3, &v8);
  sub_50E85C(a2, a3, &v7);
}

void sub_50E4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  __p = (v27 - 112);
  sub_51415C(&__p);
  _Unwind_Resume(a1);
}

char **sub_50E554(char **a1)
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
        v3 -= 272;
        sub_513694(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_50E5B8(_BYTE *a1)
{
  nullsub_1();
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*v2 != v4)
  {
    do
    {
      sub_50DE10(a1, v3);
      v3 += 1582;
    }

    while (v3 != v4);
  }
}

void sub_50E610(BOOL *a1, void *a2, uint64_t a3)
{
  if (*(a3 + 1489) == 1)
  {
    v10 = 7;
    strcpy(__p, "enabled");
    v5 = sub_5F9D0(a2, __p);
    if (v10 < 0)
    {
      v6 = v5;
      operator delete(*__p);
      v5 = v6;
    }
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  v10 = 20;
  strcpy(__p, "enable_continue_gaps");
  v7 = sub_5F9D0(a2, __p);
  if (v10 < 0)
  {
    v8 = v7;
    operator delete(*__p);
    v7 = v8;
  }

  a1[1] = v7;
  operator new();
}

void sub_50E830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_50E85C(void *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_50EA30(a2 + 138, a3);
  sub_50EA30(a2 + 138, a3 - 1);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  operator new();
}

void sub_50EA00(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_50EA18(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

unint64_t sub_50EA30(void *a1, unint64_t a2)
{
  if (0x3795876FF3795877 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0x3795876FF3795877 * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 2616 * a2;
}

void sub_50EB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_50EC4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, __int128 **a4@<X8>)
{
  result = sub_50EA30(a2 + 138, a3);
  if (a2[156] == a2[157])
  {
    v8 = (a1 + 3568);
  }

  else
  {
    v8 = a2 + 156;
  }

  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v9 = *(result + 40);
  if (v9 < *(result + 24))
  {
    v10 = result;
    v11 = 0;
    do
    {
      v12 = v11;
      v40 = v9;
      v13 = sub_4D1F50(a2, v9);
      v14 = (*v13 - **v13);
      if (*v14 >= 0x2Fu)
      {
        v15 = v14[23];
        if (v15)
        {
          v16 = *(*v13 + v15);
          v17 = v16 > 0x2A;
          v18 = (1 << v16) & 0x50426810004;
          if (!v17 && v18 != 0)
          {
            if (sub_4D1DC0(a2) > v9)
            {
              v20 = 0;
              while (v20 <= *(a1 + 24))
              {
                v21 = sub_4D1F50(a2, v9);
                v23 = (*v21 - **v21);
                if (*v23 < 0x2Fu)
                {
                  goto LABEL_26;
                }

                v24 = v23[23];
                if (!v24)
                {
                  goto LABEL_26;
                }

                v25 = *(*v21 + v24);
                v17 = v25 > 0x2A;
                v26 = (1 << v25) & 0x50426810004;
                if (v17 || v26 == 0)
                {
                  goto LABEL_26;
                }

                v28 = sub_4D23F8(a2, v9++, v22);
                v20 += v28;
                if (v9 >= sub_4D1DC0(a2))
                {
                  break;
                }
              }
            }

            --v9;
          }
        }
      }

      do
      {
LABEL_26:
        v11 = v12++;
      }

      while (v12 < 0xCCCCCCCCCCCCCCCDLL * ((v8[1] - *v8) >> 5) && *(sub_50EFDC(v8, v12) + 152) <= v9);
      v29 = sub_50EFDC(v8, v11);
      v30 = sub_4D1F50(a2, v9);
      if (*a4 == a4[1] || (v31 = v30, sub_734C10(v29)) && !sub_734C10((a4[1] - 10)) || ((result = sub_6A9E6C(a1 + 32, v31), v40 == v9) ? (v32 = result) : (v32 = 0), (v32 & 1) == 0))
      {
        v33 = a4[1];
        if (*a4 == v33)
        {
          goto LABEL_49;
        }

        v34 = *(v33 - 137);
        if (v34 >= 0)
        {
          v35 = *(v33 - 137);
        }

        else
        {
          v35 = *(v33 - 152);
        }

        v36 = *(v29 + 23);
        v37 = v36;
        if ((v36 & 0x80u) != 0)
        {
          v36 = *(v29 + 8);
        }

        if (v35 != v36 || (v34 >= 0 ? (v38 = (v33 - 160)) : (v38 = *(v33 - 160)), v37 >= 0 ? (v39 = v29) : (v39 = *v29), result = memcmp(v38, v39, v35), result))
        {
LABEL_49:
          if (v33 >= a4[2])
          {
            result = sub_513C00(a4, v29, &v40);
          }

          else
          {
            sub_5139E8(v33, v29);
            *(v33 + 152) = v40;
            result = v33 + 160;
          }

          a4[1] = result;
        }
      }

      ++v9;
    }

    while (v9 < *(v10 + 24));
  }

  return result;
}

void sub_50EF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51415C(va);
  _Unwind_Resume(a1);
}

void sub_50EF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 8) = v11;
  a10 = v10;
  sub_51415C(&a10);
  _Unwind_Resume(a1);
}

void sub_50EF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51415C(va);
  _Unwind_Resume(a1);
}

void sub_50EF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51415C(va);
  _Unwind_Resume(a1);
}

void sub_50EF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51415C(va);
  _Unwind_Resume(a1);
}

void sub_50EFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51415C(va);
  _Unwind_Resume(a1);
}

void sub_50EFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51415C(va);
  _Unwind_Resume(a1);
}

unint64_t sub_50EFDC(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 160 * a2;
}

void sub_50F118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_50F1F8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>, unint64_t a4@<X2>)
{
  v4 = a3;
  if (*(a1 + 1))
  {
    v5 = a2;
    sub_50F8B0(a1, a2, a4, &v84);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v7 = v84;
    v76 = v85;
    if (v84 != v85)
    {
      v8 = 0;
      v78 = v4;
      v79 = a1;
      v75 = v5;
      while (1)
      {
        v9 = *v7;
        v10 = v7[1];
        if (v10 >= sub_4D1DC0(v5))
        {
          v12 = v79;
          if (!v9)
          {
            goto LABEL_6;
          }

          v11 = -1;
        }

        else
        {
          v11 = v7[1];
          v12 = v79;
          if (!v9)
          {
            if (v11 == -1)
            {
              goto LABEL_6;
            }

            v13 = v7;
            v14 = 0;
            v15 = 0;
            v16 = 0x1000000000000;
            goto LABEL_14;
          }
        }

        v13 = v7;
        v17 = sub_4D1F50(v5, v9 - 1);
        v15 = *v17;
        v14 = v17[1];
        v16 = v17[4];
        if (v11 == -1)
        {
          v83 = 0;
          v19 = 0;
          v20 = 0x1000000000000;
          v22 = *v13;
          v24 = v13[1];
          v77 = v13;
          if (*v13 <= v24)
          {
            v23 = v13[1];
          }

          else
          {
            v23 = *v13;
          }

          if (v22 >= v24)
          {
LABEL_4:
            *v4 = 0;
LABEL_5:
            v7 = v77;
            goto LABEL_6;
          }

          goto LABEL_23;
        }

LABEL_14:
        v18 = sub_4D1F50(v5, v11);
        v19 = v18[1];
        v20 = v18[4];
        v83 = *v18 != 0;
        v4 = v78;
        v12 = v79;
        v22 = *v13;
        v21 = v13[1];
        v77 = v13;
        if (*v13 <= v21)
        {
          v23 = v13[1];
        }

        else
        {
          v23 = *v13;
        }

        if (v22 >= v21)
        {
          goto LABEL_4;
        }

LABEL_23:
        if (v16)
        {
          v25 = v15 == 0;
        }

        else
        {
          v25 = 1;
        }

        v27 = !v25 && v14 != 0;
        v81 = v20;
        v82 = v16 & 0xFF000000000000;
        v80 = v20 & 0xFF000000000000;
        v28 = -1;
        do
        {
          v29 = sub_4D1F50(v5, v22);
          v30 = *(v29 + 32);
          if (v30)
          {
            v31 = v27;
          }

          else
          {
            v31 = 0;
          }

          v33 = *v29;
          v32 = *(v29 + 8);
          v34 = 0.0;
          if (v31 != 1 || v33 == 0 || v32 == 0)
          {
            goto LABEL_67;
          }

          v37 = (v14 - *v14);
          v38 = *v37;
          if (v82)
          {
            if (v38 >= 5)
            {
              v39 = v37[2];
              if (!v39)
              {
                goto LABEL_49;
              }

LABEL_55:
              LOWORD(v39) = *(v14 + v39);
              v40 = (v32 - *v32);
              v41 = *v40;
              if (*(v29 + 38))
              {
                goto LABEL_50;
              }

              goto LABEL_56;
            }

            LOWORD(v39) = 0;
            v40 = (v32 - *v32);
            v41 = *v40;
            if (*(v29 + 38))
            {
              goto LABEL_50;
            }
          }

          else
          {
            if (v38 >= 9)
            {
              v39 = v37[4];
              if (!v39)
              {
LABEL_49:
                v40 = (v32 - *v32);
                v41 = *v40;
                if (*(v29 + 38))
                {
                  goto LABEL_50;
                }

                goto LABEL_56;
              }

              goto LABEL_55;
            }

            LOWORD(v39) = 0;
            v40 = (v32 - *v32);
            v41 = *v40;
            if (*(v29 + 38))
            {
LABEL_50:
              if (v41 < 9)
              {
                goto LABEL_59;
              }

              v42 = v40[4];
              if (!v42)
              {
                goto LABEL_60;
              }

LABEL_58:
              v42 = *(v32 + v42);
              goto LABEL_60;
            }
          }

LABEL_56:
          if (v41 < 5)
          {
LABEL_59:
            v42 = 0;
            goto LABEL_60;
          }

          v42 = v40[2];
          if (v42)
          {
            goto LABEL_58;
          }

LABEL_60:
          v43 = v39 + 18000;
          v44 = v39 - 18000;
          if ((v43 >> 5) < 0x465u)
          {
            v44 = v43;
          }

          v45 = v42 - v44;
          if (v45 > 18000)
          {
            v45 -= 36000;
          }

          if (v45 < -17999)
          {
            v45 += 36000;
          }

          v34 = fabs(v45 / 100.0);
LABEL_67:
          v46 = *(v12 + 8);
          if (v34 > v46)
          {
            goto LABEL_33;
          }

          if (v30)
          {
            v47 = v33 == 0;
          }

          else
          {
            v47 = 1;
          }

          v50 = !v47 && v32 != 0 && v81 != 0;
          v51 = 0.0;
          if ((v50 & v83) == 1 && v19 != 0)
          {
            v53 = (v32 - *v32);
            v54 = *v53;
            if (*(v29 + 38))
            {
              if (v54 < 5)
              {
                goto LABEL_98;
              }

              v55 = v53[2];
              if (!v55)
              {
                goto LABEL_98;
              }

LABEL_94:
              v56 = *(v32 + v55);
              v57 = (v19 - *v19);
              v58 = *v57;
              if (!v80)
              {
                goto LABEL_95;
              }

LABEL_99:
              if (v58 >= 9)
              {
                v59 = v57[4];
                if (v59)
                {
LABEL_101:
                  v59 = *(v19 + v59);
                }

LABEL_103:
                v60 = v56 + 18000;
                v61 = v56 - 18000;
                if ((v60 >> 5) < 0x465u)
                {
                  v61 = v60;
                }

                v62 = v59 - v61;
                if (v62 > 18000)
                {
                  v62 -= 36000;
                }

                if (v62 < -17999)
                {
                  v62 += 36000;
                }

                v51 = fabs(v62 / 100.0);
                goto LABEL_110;
              }
            }

            else
            {
              if (v54 >= 9)
              {
                v55 = v53[4];
                if (v55)
                {
                  goto LABEL_94;
                }
              }

LABEL_98:
              v56 = 0;
              v57 = (v19 - *v19);
              v58 = *v57;
              if (v80)
              {
                goto LABEL_99;
              }

LABEL_95:
              if (v58 >= 5)
              {
                v59 = v57[2];
                if (v59)
                {
                  goto LABEL_101;
                }

                goto LABEL_103;
              }
            }

            v59 = 0;
            goto LABEL_103;
          }

LABEL_110:
          if (v51 <= v46)
          {
            if (v28 != -1)
            {
              v63 = v4[2];
              if (v8 >= v63)
              {
                v64 = v8;
                v65 = v8 >> 4;
                v66 = v65 + 1;
                if ((v65 + 1) >> 60)
                {
                  *v78 = 0;
                  sub_1794();
                }

                if (v63 >> 3 > v66)
                {
                  v66 = v63 >> 3;
                }

                if (v63 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v67 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v67 = v66;
                }

                if (v67)
                {
                  if (!(v67 >> 60))
                  {
                    operator new();
                  }

                  *v78 = 0;
                  sub_1808();
                }

                v68 = (16 * v65);
                *v68 = v28;
                v68[1] = v22;
                v8 = 16 * v65 + 16;
                memcpy(0, 0, v64);
                v4 = v78;
                v78[1] = v8;
                v78[2] = 0;
                v5 = v75;
                v12 = v79;
              }

              else
              {
                *v8 = v28;
                *(v8 + 8) = v22;
                v8 += 16;
              }

              v4[1] = v8;
              v28 = -1;
            }

            goto LABEL_35;
          }

LABEL_33:
          if (v28 == -1)
          {
            v28 = v22;
          }

LABEL_35:
          ++v22;
        }

        while (v23 != v22);
        *v4 = 0;
        if (v28 == -1)
        {
          goto LABEL_5;
        }

        v69 = v4[2];
        if (v8 >= v69)
        {
          v70 = v8;
          v71 = v8 >> 4;
          v72 = (v8 >> 4) + 1;
          if (v72 >> 60)
          {
            sub_1794();
          }

          if (v69 >> 3 > v72)
          {
            v72 = v69 >> 3;
          }

          if (v69 >= 0x7FFFFFFFFFFFFFF0)
          {
            v73 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v73 = v72;
          }

          if (v73)
          {
            if (!(v73 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v74 = (16 * v71);
          *v74 = v28;
          v7 = v77;
          v74[1] = v77[1];
          v8 = 16 * v71 + 16;
          memcpy(0, 0, v70);
          *v78 = 0;
          v78[1] = v8;
          v78[2] = 0;
          v4 = v78;
        }

        else
        {
          *v8 = v28;
          v7 = v77;
          *(v8 + 8) = v77[1];
          v8 += 16;
        }

        v4[1] = v8;
LABEL_6:
        v7 += 2;
        if (v7 == v76)
        {
          v7 = v84;
          break;
        }
      }
    }

    if (v7)
    {
      v85 = v7;
      operator delete(v7);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_50F844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  v22 = *a13;
  if (*a13)
  {
    *(a13 + 8) = v22;
    operator delete(v22);
    v23 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v23 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v23);
  _Unwind_Resume(exception_object);
}

void sub_50F8B0(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = sub_50EA30(a2 + 138, a3);
  v8 = *(v7 + 40);
  v27 = v7;
  v9 = *(v7 + 24);
  if (v8 <= v9)
  {
    v10 = *(v7 + 24);
  }

  else
  {
    v10 = *(v7 + 40);
  }

  if (v8 >= v9)
  {
    *a4 = 0;
  }

  else
  {
    v11 = 0;
    v12 = -1;
    do
    {
      v13 = sub_4D1F50(a2, v8);
      if (sub_6A9E6C(a1 + 32, v13))
      {
        if (v12 == -1)
        {
          v12 = v8;
        }
      }

      else if (v12 != -1)
      {
        v14 = a4[2];
        if (v11 >= v14)
        {
          v15 = v11;
          v16 = v11 >> 4;
          v17 = v16 + 1;
          if ((v16 + 1) >> 60)
          {
            *a4 = 0;
            sub_1794();
          }

          if (v14 >> 3 > v17)
          {
            v17 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v18 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            if (!(v18 >> 60))
            {
              operator new();
            }

            *a4 = 0;
            sub_1808();
          }

          v19 = (16 * v16);
          *v19 = v12;
          v19[1] = v8;
          v11 = 16 * v16 + 16;
          memcpy(0, 0, v15);
          a4[1] = v11;
          a4[2] = 0;
        }

        else
        {
          *v11 = v12;
          *(v11 + 8) = v8;
          v11 += 16;
        }

        a4[1] = v11;
        v12 = -1;
      }

      ++v8;
    }

    while (v10 != v8);
    *a4 = 0;
    if (v12 != -1)
    {
      v20 = a4[2];
      if (v11 >= v20)
      {
        v22 = v11;
        v23 = v11 >> 4;
        v24 = v23 + 1;
        if ((v23 + 1) >> 60)
        {
          sub_1794();
        }

        if (v20 >> 3 > v24)
        {
          v24 = v20 >> 3;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF0)
        {
          v25 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          if (!(v25 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v26 = (16 * v23);
        *v26 = v12;
        v26[1] = *(v27 + 24);
        v21 = 16 * v23 + 16;
        memcpy(0, 0, v22);
        *a4 = 0;
        a4[1] = v21;
        a4[2] = 0;
      }

      else
      {
        *v11 = v12;
        *(v11 + 8) = *(v27 + 24);
        v21 = v11 + 16;
      }

      a4[1] = v21;
    }
  }
}

void sub_50FB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v11)
  {
    *(v10 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_50FB8C(BOOL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  HIBYTE(v7[2]) = 21;
  strcpy(v7, "ARContinueInfoBuilder");
  memset(v8, 0, sizeof(v8));
  v6 = sub_3AEC94(a2, v7, v8);
  sub_41D7AC(v6, v9);
  sub_510728(a1, v9, a3);
}

void sub_50FEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_3E5388(va);
  sub_3E5388(&a9);
  sub_5135D0((v32 + 1304));
  _Unwind_Resume(a1);
}

void sub_50FF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void **a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  sub_5C010(&a36);
  sub_1A104(&a32);
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_50FF8C(_BYTE *a1, void *a2)
{
  if (*a1 == 1)
  {
    v2 = a2[138];
    v3 = a2[139] - v2;
    v4 = 0x3795876FF3795877 * (v3 >> 3);
    if (v3)
    {
      v5 = 0;
      do
      {
        if (v5)
        {
          sub_5101D0(a1, a2, v5);
        }

        v5 = 1;
      }

      while (v4 != 1);
      v2 = a2[138];
      v4 = 0x3795876FF3795877 * ((a2[139] - v2) >> 3);
    }

    if (v4 > 1)
    {
      v6 = *(v2 + 4648);
      v7 = (v2 + 1008);
      v8 = *(v2 + 2040);
      if (v8 >= *(v2 + 2048))
      {
        v14 = sub_51374C((v2 + 2032), *(v2 + 4648), (v6 + 152), v7, (v2 + 160));
      }

      else
      {
        v9 = *v7;
        v10 = *(v2 + 160);
        sub_5139E8(*(v2 + 2040), *(v2 + 4648));
        *(v8 + 152) = *(v6 + 152);
        v11 = *(v6 + 168);
        v12 = *(v6 + 184);
        v13 = *(v6 + 200);
        *(v8 + 216) = *(v6 + 216);
        *(v8 + 200) = v13;
        *(v8 + 184) = v12;
        *(v8 + 168) = v11;
        *(v8 + 232) = v9;
        *(v8 + 240) = v10;
        *(v8 + 256) = 0;
        *(v8 + 264) = 0;
        *(v8 + 248) = 0;
        v14 = (v8 + 272);
        *(v2 + 2040) = v8 + 272;
      }

      *(v2 + 2040) = v14;
    }
  }
}

void sub_5101D0(uint64_t a1, void *a2, unint64_t a3)
{
  sub_50EA30(a2 + 138, a3);
  sub_50EA30(a2 + 138, a3 - 1);
  sub_510B48(a1, a2, a3, &v8);
  sub_510974(a2, a3, &v7);
}

void sub_51064C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  __p = (v27 - 112);
  sub_51415C(&__p);
  _Unwind_Resume(a1);
}

void sub_5106D0(_BYTE *a1)
{
  nullsub_1();
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*v2 != v4)
  {
    do
    {
      sub_50FF8C(a1, v3);
      v3 += 1582;
    }

    while (v3 != v4);
  }
}

void sub_510728(BOOL *a1, void *a2, uint64_t a3)
{
  if (*(a3 + 1489) == 1)
  {
    v10 = 7;
    strcpy(__p, "enabled");
    v5 = sub_5F9D0(a2, __p);
    if (v10 < 0)
    {
      v6 = v5;
      operator delete(*__p);
      v5 = v6;
    }
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  v10 = 20;
  strcpy(__p, "enable_continue_gaps");
  v7 = sub_5F9D0(a2, __p);
  if (v10 < 0)
  {
    v8 = v7;
    operator delete(*__p);
    v7 = v8;
  }

  a1[1] = v7;
  operator new();
}

void sub_510948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_510974(void *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_50EA30(a2 + 138, a3);
  sub_50EA30(a2 + 138, a3 - 1);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  operator new();
}

void sub_510B18(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_510B30(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_510B48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, __int128 **a4@<X8>)
{
  result = sub_50EA30(a2 + 138, a3);
  if (a2[156] == a2[157])
  {
    v8 = (a1 + 3568);
  }

  else
  {
    v8 = a2 + 156;
  }

  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v9 = *(result + 40);
  if (v9 < *(result + 24))
  {
    v10 = result;
    v11 = 0;
    do
    {
      v12 = v11;
      v40 = v9;
      v13 = sub_4D1F50(a2, v9);
      v14 = (*v13 - **v13);
      if (*v14 >= 0x2Fu)
      {
        v15 = v14[23];
        if (v15)
        {
          v16 = *(*v13 + v15);
          v17 = v16 > 0x2A;
          v18 = (1 << v16) & 0x50426810004;
          if (!v17 && v18 != 0)
          {
            if (sub_4D1DC0(a2) > v9)
            {
              v20 = 0;
              while (v20 <= *(a1 + 24))
              {
                v21 = sub_4D1F50(a2, v9);
                v23 = (*v21 - **v21);
                if (*v23 < 0x2Fu)
                {
                  goto LABEL_26;
                }

                v24 = v23[23];
                if (!v24)
                {
                  goto LABEL_26;
                }

                v25 = *(*v21 + v24);
                v17 = v25 > 0x2A;
                v26 = (1 << v25) & 0x50426810004;
                if (v17 || v26 == 0)
                {
                  goto LABEL_26;
                }

                v28 = sub_4D23F8(a2, v9++, v22);
                v20 += v28;
                if (v9 >= sub_4D1DC0(a2))
                {
                  break;
                }
              }
            }

            --v9;
          }
        }
      }

      do
      {
LABEL_26:
        v11 = v12++;
      }

      while (v12 < 0xCCCCCCCCCCCCCCCDLL * ((v8[1] - *v8) >> 5) && *(sub_50EFDC(v8, v12) + 152) <= v9);
      v29 = sub_50EFDC(v8, v11);
      v30 = sub_4D1F50(a2, v9);
      if (*a4 == a4[1] || (v31 = v30, sub_734C10(v29)) && !sub_734C10((a4[1] - 10)) || ((result = sub_6ABAB4(a1 + 32, v31), v40 == v9) ? (v32 = result) : (v32 = 0), (v32 & 1) == 0))
      {
        v33 = a4[1];
        if (*a4 == v33)
        {
          goto LABEL_49;
        }

        v34 = *(v33 - 137);
        if (v34 >= 0)
        {
          v35 = *(v33 - 137);
        }

        else
        {
          v35 = *(v33 - 152);
        }

        v36 = *(v29 + 23);
        v37 = v36;
        if ((v36 & 0x80u) != 0)
        {
          v36 = *(v29 + 8);
        }

        if (v35 != v36 || (v34 >= 0 ? (v38 = (v33 - 160)) : (v38 = *(v33 - 160)), v37 >= 0 ? (v39 = v29) : (v39 = *v29), result = memcmp(v38, v39, v35), result))
        {
LABEL_49:
          if (v33 >= a4[2])
          {
            result = sub_513C00(a4, v29, &v40);
          }

          else
          {
            sub_5139E8(v33, v29);
            *(v33 + 152) = v40;
            result = v33 + 160;
          }

          a4[1] = result;
        }
      }

      ++v9;
    }

    while (v9 < *(v10 + 24));
  }

  return result;
}

void sub_510E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51415C(va);
  _Unwind_Resume(a1);
}

void sub_510E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 8) = v11;
  a10 = v10;
  sub_51415C(&a10);
  _Unwind_Resume(a1);
}

void sub_510E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51415C(va);
  _Unwind_Resume(a1);
}

void sub_510E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51415C(va);
  _Unwind_Resume(a1);
}

void sub_510E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51415C(va);
  _Unwind_Resume(a1);
}

void sub_510EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51415C(va);
  _Unwind_Resume(a1);
}

void sub_510EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51415C(va);
  _Unwind_Resume(a1);
}

void sub_510ED8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>, unint64_t a4@<X2>)
{
  v4 = a3;
  if (*(a1 + 1))
  {
    v5 = a2;
    sub_511590(a1, a2, a4, &v84);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v7 = v84;
    v76 = v85;
    if (v84 != v85)
    {
      v8 = 0;
      v78 = v4;
      v79 = a1;
      v75 = v5;
      while (1)
      {
        v9 = *v7;
        v10 = v7[1];
        if (v10 >= sub_4D1DC0(v5))
        {
          v12 = v79;
          if (!v9)
          {
            goto LABEL_6;
          }

          v11 = -1;
        }

        else
        {
          v11 = v7[1];
          v12 = v79;
          if (!v9)
          {
            if (v11 == -1)
            {
              goto LABEL_6;
            }

            v13 = v7;
            v14 = 0;
            v15 = 0;
            v16 = 0x1000000000000;
            goto LABEL_14;
          }
        }

        v13 = v7;
        v17 = sub_4D1F50(v5, v9 - 1);
        v15 = *v17;
        v14 = v17[1];
        v16 = v17[4];
        if (v11 == -1)
        {
          v83 = 0;
          v19 = 0;
          v20 = 0x1000000000000;
          v22 = *v13;
          v24 = v13[1];
          v77 = v13;
          if (*v13 <= v24)
          {
            v23 = v13[1];
          }

          else
          {
            v23 = *v13;
          }

          if (v22 >= v24)
          {
LABEL_4:
            *v4 = 0;
LABEL_5:
            v7 = v77;
            goto LABEL_6;
          }

          goto LABEL_23;
        }

LABEL_14:
        v18 = sub_4D1F50(v5, v11);
        v19 = v18[1];
        v20 = v18[4];
        v83 = *v18 != 0;
        v4 = v78;
        v12 = v79;
        v22 = *v13;
        v21 = v13[1];
        v77 = v13;
        if (*v13 <= v21)
        {
          v23 = v13[1];
        }

        else
        {
          v23 = *v13;
        }

        if (v22 >= v21)
        {
          goto LABEL_4;
        }

LABEL_23:
        if (v16)
        {
          v25 = v15 == 0;
        }

        else
        {
          v25 = 1;
        }

        v27 = !v25 && v14 != 0;
        v81 = v20;
        v82 = v16 & 0xFF000000000000;
        v80 = v20 & 0xFF000000000000;
        v28 = -1;
        do
        {
          v29 = sub_4D1F50(v5, v22);
          v30 = *(v29 + 32);
          if (v30)
          {
            v31 = v27;
          }

          else
          {
            v31 = 0;
          }

          v33 = *v29;
          v32 = *(v29 + 8);
          v34 = 0.0;
          if (v31 != 1 || v33 == 0 || v32 == 0)
          {
            goto LABEL_67;
          }

          v37 = (v14 - *v14);
          v38 = *v37;
          if (v82)
          {
            if (v38 >= 5)
            {
              v39 = v37[2];
              if (!v39)
              {
                goto LABEL_49;
              }

LABEL_55:
              LOWORD(v39) = *(v14 + v39);
              v40 = (v32 - *v32);
              v41 = *v40;
              if (*(v29 + 38))
              {
                goto LABEL_50;
              }

              goto LABEL_56;
            }

            LOWORD(v39) = 0;
            v40 = (v32 - *v32);
            v41 = *v40;
            if (*(v29 + 38))
            {
              goto LABEL_50;
            }
          }

          else
          {
            if (v38 >= 9)
            {
              v39 = v37[4];
              if (!v39)
              {
LABEL_49:
                v40 = (v32 - *v32);
                v41 = *v40;
                if (*(v29 + 38))
                {
                  goto LABEL_50;
                }

                goto LABEL_56;
              }

              goto LABEL_55;
            }

            LOWORD(v39) = 0;
            v40 = (v32 - *v32);
            v41 = *v40;
            if (*(v29 + 38))
            {
LABEL_50:
              if (v41 < 9)
              {
                goto LABEL_59;
              }

              v42 = v40[4];
              if (!v42)
              {
                goto LABEL_60;
              }

LABEL_58:
              v42 = *(v32 + v42);
              goto LABEL_60;
            }
          }

LABEL_56:
          if (v41 < 5)
          {
LABEL_59:
            v42 = 0;
            goto LABEL_60;
          }

          v42 = v40[2];
          if (v42)
          {
            goto LABEL_58;
          }

LABEL_60:
          v43 = v39 + 18000;
          v44 = v39 - 18000;
          if ((v43 >> 5) < 0x465u)
          {
            v44 = v43;
          }

          v45 = v42 - v44;
          if (v45 > 18000)
          {
            v45 -= 36000;
          }

          if (v45 < -17999)
          {
            v45 += 36000;
          }

          v34 = fabs(v45 / 100.0);
LABEL_67:
          v46 = *(v12 + 8);
          if (v34 > v46)
          {
            goto LABEL_33;
          }

          if (v30)
          {
            v47 = v33 == 0;
          }

          else
          {
            v47 = 1;
          }

          v50 = !v47 && v32 != 0 && v81 != 0;
          v51 = 0.0;
          if ((v50 & v83) == 1 && v19 != 0)
          {
            v53 = (v32 - *v32);
            v54 = *v53;
            if (*(v29 + 38))
            {
              if (v54 < 5)
              {
                goto LABEL_98;
              }

              v55 = v53[2];
              if (!v55)
              {
                goto LABEL_98;
              }

LABEL_94:
              v56 = *(v32 + v55);
              v57 = (v19 - *v19);
              v58 = *v57;
              if (!v80)
              {
                goto LABEL_95;
              }

LABEL_99:
              if (v58 >= 9)
              {
                v59 = v57[4];
                if (v59)
                {
LABEL_101:
                  v59 = *(v19 + v59);
                }

LABEL_103:
                v60 = v56 + 18000;
                v61 = v56 - 18000;
                if ((v60 >> 5) < 0x465u)
                {
                  v61 = v60;
                }

                v62 = v59 - v61;
                if (v62 > 18000)
                {
                  v62 -= 36000;
                }

                if (v62 < -17999)
                {
                  v62 += 36000;
                }

                v51 = fabs(v62 / 100.0);
                goto LABEL_110;
              }
            }

            else
            {
              if (v54 >= 9)
              {
                v55 = v53[4];
                if (v55)
                {
                  goto LABEL_94;
                }
              }

LABEL_98:
              v56 = 0;
              v57 = (v19 - *v19);
              v58 = *v57;
              if (v80)
              {
                goto LABEL_99;
              }

LABEL_95:
              if (v58 >= 5)
              {
                v59 = v57[2];
                if (v59)
                {
                  goto LABEL_101;
                }

                goto LABEL_103;
              }
            }

            v59 = 0;
            goto LABEL_103;
          }

LABEL_110:
          if (v51 <= v46)
          {
            if (v28 != -1)
            {
              v63 = v4[2];
              if (v8 >= v63)
              {
                v64 = v8;
                v65 = v8 >> 4;
                v66 = v65 + 1;
                if ((v65 + 1) >> 60)
                {
                  *v78 = 0;
                  sub_1794();
                }

                if (v63 >> 3 > v66)
                {
                  v66 = v63 >> 3;
                }

                if (v63 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v67 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v67 = v66;
                }

                if (v67)
                {
                  if (!(v67 >> 60))
                  {
                    operator new();
                  }

                  *v78 = 0;
                  sub_1808();
                }

                v68 = (16 * v65);
                *v68 = v28;
                v68[1] = v22;
                v8 = 16 * v65 + 16;
                memcpy(0, 0, v64);
                v4 = v78;
                v78[1] = v8;
                v78[2] = 0;
                v5 = v75;
                v12 = v79;
              }

              else
              {
                *v8 = v28;
                *(v8 + 8) = v22;
                v8 += 16;
              }

              v4[1] = v8;
              v28 = -1;
            }

            goto LABEL_35;
          }

LABEL_33:
          if (v28 == -1)
          {
            v28 = v22;
          }

LABEL_35:
          ++v22;
        }

        while (v23 != v22);
        *v4 = 0;
        if (v28 == -1)
        {
          goto LABEL_5;
        }

        v69 = v4[2];
        if (v8 >= v69)
        {
          v70 = v8;
          v71 = v8 >> 4;
          v72 = (v8 >> 4) + 1;
          if (v72 >> 60)
          {
            sub_1794();
          }

          if (v69 >> 3 > v72)
          {
            v72 = v69 >> 3;
          }

          if (v69 >= 0x7FFFFFFFFFFFFFF0)
          {
            v73 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v73 = v72;
          }

          if (v73)
          {
            if (!(v73 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v74 = (16 * v71);
          *v74 = v28;
          v7 = v77;
          v74[1] = v77[1];
          v8 = 16 * v71 + 16;
          memcpy(0, 0, v70);
          *v78 = 0;
          v78[1] = v8;
          v78[2] = 0;
          v4 = v78;
        }

        else
        {
          *v8 = v28;
          v7 = v77;
          *(v8 + 8) = v77[1];
          v8 += 16;
        }

        v4[1] = v8;
LABEL_6:
        v7 += 2;
        if (v7 == v76)
        {
          v7 = v84;
          break;
        }
      }
    }

    if (v7)
    {
      v85 = v7;
      operator delete(v7);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_511524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  v22 = *a13;
  if (*a13)
  {
    *(a13 + 8) = v22;
    operator delete(v22);
    v23 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v23 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v23);
  _Unwind_Resume(exception_object);
}

void sub_511590(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = sub_50EA30(a2 + 138, a3);
  v8 = *(v7 + 40);
  v27 = v7;
  v9 = *(v7 + 24);
  if (v8 <= v9)
  {
    v10 = *(v7 + 24);
  }

  else
  {
    v10 = *(v7 + 40);
  }

  if (v8 >= v9)
  {
    *a4 = 0;
  }

  else
  {
    v11 = 0;
    v12 = -1;
    do
    {
      v13 = sub_4D1F50(a2, v8);
      if (sub_6ABAB4(a1 + 32, v13))
      {
        if (v12 == -1)
        {
          v12 = v8;
        }
      }

      else if (v12 != -1)
      {
        v14 = a4[2];
        if (v11 >= v14)
        {
          v15 = v11;
          v16 = v11 >> 4;
          v17 = v16 + 1;
          if ((v16 + 1) >> 60)
          {
            *a4 = 0;
            sub_1794();
          }

          if (v14 >> 3 > v17)
          {
            v17 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v18 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            if (!(v18 >> 60))
            {
              operator new();
            }

            *a4 = 0;
            sub_1808();
          }

          v19 = (16 * v16);
          *v19 = v12;
          v19[1] = v8;
          v11 = 16 * v16 + 16;
          memcpy(0, 0, v15);
          a4[1] = v11;
          a4[2] = 0;
        }

        else
        {
          *v11 = v12;
          *(v11 + 8) = v8;
          v11 += 16;
        }

        a4[1] = v11;
        v12 = -1;
      }

      ++v8;
    }

    while (v10 != v8);
    *a4 = 0;
    if (v12 != -1)
    {
      v20 = a4[2];
      if (v11 >= v20)
      {
        v22 = v11;
        v23 = v11 >> 4;
        v24 = v23 + 1;
        if ((v23 + 1) >> 60)
        {
          sub_1794();
        }

        if (v20 >> 3 > v24)
        {
          v24 = v20 >> 3;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF0)
        {
          v25 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          if (!(v25 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v26 = (16 * v23);
        *v26 = v12;
        v26[1] = *(v27 + 24);
        v21 = 16 * v23 + 16;
        memcpy(0, 0, v22);
        *a4 = 0;
        a4[1] = v21;
        a4[2] = 0;
      }

      else
      {
        *v11 = v12;
        *(v11 + 8) = *(v27 + 24);
        v21 = v11 + 16;
      }

      a4[1] = v21;
    }
  }
}

void sub_511830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v11)
  {
    *(v10 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_51186C(BOOL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  HIBYTE(v7[2]) = 21;
  strcpy(v7, "ARContinueInfoBuilder");
  memset(v8, 0, sizeof(v8));
  v6 = sub_3AEC94(a2, v7, v8);
  sub_41D820(v6, v9);
  sub_512408(a1, v9, a3);
}

void sub_511BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_3E5388(va);
  sub_3E5388(&a9);
  sub_5135D0((v32 + 1304));
  _Unwind_Resume(a1);
}

void sub_511C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void **a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  sub_5C010(&a36);
  sub_1A104(&a32);
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_511C6C(_BYTE *a1, void *a2)
{
  if (*a1 == 1)
  {
    v2 = a2[138];
    v3 = a2[139] - v2;
    v4 = 0x3795876FF3795877 * (v3 >> 3);
    if (v3)
    {
      v5 = 0;
      do
      {
        if (v5)
        {
          sub_511EB0(a1, a2, v5);
        }

        v5 = 1;
      }

      while (v4 != 1);
      v2 = a2[138];
      v4 = 0x3795876FF3795877 * ((a2[139] - v2) >> 3);
    }

    if (v4 > 1)
    {
      v6 = *(v2 + 4648);
      v7 = (v2 + 1008);
      v8 = *(v2 + 2040);
      if (v8 >= *(v2 + 2048))
      {
        v14 = sub_51374C((v2 + 2032), *(v2 + 4648), (v6 + 152), v7, (v2 + 160));
      }

      else
      {
        v9 = *v7;
        v10 = *(v2 + 160);
        sub_5139E8(*(v2 + 2040), *(v2 + 4648));
        *(v8 + 152) = *(v6 + 152);
        v11 = *(v6 + 168);
        v12 = *(v6 + 184);
        v13 = *(v6 + 200);
        *(v8 + 216) = *(v6 + 216);
        *(v8 + 200) = v13;
        *(v8 + 184) = v12;
        *(v8 + 168) = v11;
        *(v8 + 232) = v9;
        *(v8 + 240) = v10;
        *(v8 + 256) = 0;
        *(v8 + 264) = 0;
        *(v8 + 248) = 0;
        v14 = (v8 + 272);
        *(v2 + 2040) = v8 + 272;
      }

      *(v2 + 2040) = v14;
    }
  }
}

void sub_511EB0(uint64_t a1, void *a2, unint64_t a3)
{
  sub_50EA30(a2 + 138, a3);
  sub_50EA30(a2 + 138, a3 - 1);
  sub_512828(a1, a2, a3, &v8);
  sub_512654(a2, a3, &v7);
}

void sub_51232C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  __p = (v27 - 112);
  sub_51415C(&__p);
  _Unwind_Resume(a1);
}

void sub_5123B0(_BYTE *a1)
{
  nullsub_1();
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*v2 != v4)
  {
    do
    {
      sub_511C6C(a1, v3);
      v3 += 1582;
    }

    while (v3 != v4);
  }
}

void sub_512408(BOOL *a1, void *a2, uint64_t a3)
{
  if (*(a3 + 1489) == 1)
  {
    v10 = 7;
    strcpy(__p, "enabled");
    v5 = sub_5F9D0(a2, __p);
    if (v10 < 0)
    {
      v6 = v5;
      operator delete(*__p);
      v5 = v6;
    }
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  v10 = 20;
  strcpy(__p, "enable_continue_gaps");
  v7 = sub_5F9D0(a2, __p);
  if (v10 < 0)
  {
    v8 = v7;
    operator delete(*__p);
    v7 = v8;
  }

  a1[1] = v7;
  operator new();
}

void sub_512628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_512654(void *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_50EA30(a2 + 138, a3);
  sub_50EA30(a2 + 138, a3 - 1);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  operator new();
}

void sub_5127F8(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_512810(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_512828@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, __int128 **a4@<X8>)
{
  result = sub_50EA30(a2 + 138, a3);
  if (a2[156] == a2[157])
  {
    v8 = (a1 + 3568);
  }

  else
  {
    v8 = a2 + 156;
  }

  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v9 = *(result + 40);
  if (v9 < *(result + 24))
  {
    v10 = result;
    v11 = 0;
    do
    {
      v12 = v11;
      v40 = v9;
      v13 = sub_4D1F50(a2, v9);
      v14 = (*v13 - **v13);
      if (*v14 >= 0x2Fu)
      {
        v15 = v14[23];
        if (v15)
        {
          v16 = *(*v13 + v15);
          v17 = v16 > 0x2A;
          v18 = (1 << v16) & 0x50426810004;
          if (!v17 && v18 != 0)
          {
            if (sub_4D1DC0(a2) > v9)
            {
              v20 = 0;
              while (v20 <= *(a1 + 24))
              {
                v21 = sub_4D1F50(a2, v9);
                v23 = (*v21 - **v21);
                if (*v23 < 0x2Fu)
                {
                  goto LABEL_26;
                }

                v24 = v23[23];
                if (!v24)
                {
                  goto LABEL_26;
                }

                v25 = *(*v21 + v24);
                v17 = v25 > 0x2A;
                v26 = (1 << v25) & 0x50426810004;
                if (v17 || v26 == 0)
                {
                  goto LABEL_26;
                }

                v28 = sub_4D23F8(a2, v9++, v22);
                v20 += v28;
                if (v9 >= sub_4D1DC0(a2))
                {
                  break;
                }
              }
            }

            --v9;
          }
        }
      }

      do
      {
LABEL_26:
        v11 = v12++;
      }

      while (v12 < 0xCCCCCCCCCCCCCCCDLL * ((v8[1] - *v8) >> 5) && *(sub_50EFDC(v8, v12) + 152) <= v9);
      v29 = sub_50EFDC(v8, v11);
      v30 = sub_4D1F50(a2, v9);
      if (*a4 == a4[1] || (v31 = v30, sub_734C10(v29)) && !sub_734C10((a4[1] - 10)) || ((result = sub_6AD28C(a1 + 32, v31), v40 == v9) ? (v32 = result) : (v32 = 0), (v32 & 1) == 0))
      {
        v33 = a4[1];
        if (*a4 == v33)
        {
          goto LABEL_49;
        }

        v34 = *(v33 - 137);
        if (v34 >= 0)
        {
          v35 = *(v33 - 137);
        }

        else
        {
          v35 = *(v33 - 152);
        }

        v36 = *(v29 + 23);
        v37 = v36;
        if ((v36 & 0x80u) != 0)
        {
          v36 = *(v29 + 8);
        }

        if (v35 != v36 || (v34 >= 0 ? (v38 = (v33 - 160)) : (v38 = *(v33 - 160)), v37 >= 0 ? (v39 = v29) : (v39 = *v29), result = memcmp(v38, v39, v35), result))
        {
LABEL_49:
          if (v33 >= a4[2])
          {
            result = sub_513C00(a4, v29, &v40);
          }

          else
          {
            sub_5139E8(v33, v29);
            *(v33 + 152) = v40;
            result = v33 + 160;
          }

          a4[1] = result;
        }
      }

      ++v9;
    }

    while (v9 < *(v10 + 24));
  }

  return result;
}

void sub_512B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51415C(va);
  _Unwind_Resume(a1);
}

void sub_512B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 8) = v11;
  a10 = v10;
  sub_51415C(&a10);
  _Unwind_Resume(a1);
}

void sub_512B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51415C(va);
  _Unwind_Resume(a1);
}

void sub_512B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51415C(va);
  _Unwind_Resume(a1);
}

void sub_512B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51415C(va);
  _Unwind_Resume(a1);
}

void sub_512B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51415C(va);
  _Unwind_Resume(a1);
}

void sub_512BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51415C(va);
  _Unwind_Resume(a1);
}

void sub_512BB8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>, unint64_t a4@<X2>)
{
  v4 = a3;
  if (*(a1 + 1))
  {
    v5 = a2;
    sub_513298(a1, a2, a4, &__p);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v7 = __p;
    v75 = v83;
    if (__p != v83)
    {
      v8 = 0;
      v76 = v4;
      v77 = a1;
      v74 = v5;
      while (1)
      {
        v9 = *v7;
        v10 = v7[1];
        v78 = v7;
        if (v10 >= sub_4D1DC0(v5))
        {
          v11 = v77;
          if (!v9)
          {
            goto LABEL_5;
          }

          v12 = -1;
        }

        else
        {
          v11 = v77;
          v12 = v78[1];
          if (!v9)
          {
            if (v12 == -1)
            {
              goto LABEL_5;
            }

            v81 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_13;
          }
        }

        v16 = sub_4D1F50(v5, v9 - 1);
        v15 = *v16;
        v14 = *(v16 + 8);
        v13 = *(v16 + 32);
        v81 = *(v16 + 36);
        if (v12 == -1)
        {
          v20 = 0;
          v18 = 0;
          v19 = 0;
          v79 = 1;
          v22 = *v78;
          v24 = v78[1];
          if (*v78 <= v24)
          {
            v23 = v78[1];
          }

          else
          {
            v23 = *v78;
          }

          if (*v78 < v24)
          {
            goto LABEL_22;
          }

          goto LABEL_4;
        }

LABEL_13:
        v17 = sub_4D1F50(v5, v12);
        v18 = *(v17 + 8);
        v19 = *(v17 + 32) != 0;
        v20 = *v17 != 0;
        v79 = (*(v17 + 39) & 0x20) == 0;
        v4 = v76;
        v11 = v77;
        v22 = *v78;
        v21 = v78[1];
        if (*v78 <= v21)
        {
          v23 = v78[1];
        }

        else
        {
          v23 = *v78;
        }

        if (*v78 >= v21)
        {
LABEL_4:
          *v4 = 0;
LABEL_5:
          v7 = v78 + 2;
          if (v78 + 2 == v75)
          {
            goto LABEL_135;
          }
        }

        else
        {
LABEL_22:
          if (v13)
          {
            v25 = v15 == 0;
          }

          else
          {
            v25 = 1;
          }

          v27 = !v25 && v14 != 0;
          v28 = -1;
          v80 = v19 && v20;
          do
          {
            v29 = sub_4D1F50(v5, v22);
            v30 = *(v29 + 32);
            if (v30)
            {
              v31 = v27;
            }

            else
            {
              v31 = 0;
            }

            v33 = *v29;
            v32 = *(v29 + 8);
            v34 = 0.0;
            if (v31 != 1 || v33 == 0 || v32 == 0)
            {
              goto LABEL_66;
            }

            v37 = (v14 - *v14);
            v38 = *v37;
            if ((v81 & 0x20000000) != 0)
            {
              if (v38 >= 9)
              {
                v39 = v37[4];
                if (!v39)
                {
LABEL_48:
                  v40 = (v32 - *v32);
                  v41 = *v40;
                  if ((*(v29 + 39) & 0x20) == 0)
                  {
                    goto LABEL_49;
                  }

                  goto LABEL_55;
                }

                goto LABEL_54;
              }

              LOWORD(v39) = 0;
              v40 = (v32 - *v32);
              v41 = *v40;
              if ((*(v29 + 39) & 0x20) == 0)
              {
LABEL_49:
                if (v41 < 9)
                {
                  goto LABEL_58;
                }

                v42 = v40[4];
                if (!v42)
                {
                  goto LABEL_59;
                }

LABEL_57:
                v42 = *(v32 + v42);
                goto LABEL_59;
              }
            }

            else
            {
              if (v38 >= 5)
              {
                v39 = v37[2];
                if (!v39)
                {
                  goto LABEL_48;
                }

LABEL_54:
                LOWORD(v39) = *(v14 + v39);
                v40 = (v32 - *v32);
                v41 = *v40;
                if ((*(v29 + 39) & 0x20) == 0)
                {
                  goto LABEL_49;
                }

                goto LABEL_55;
              }

              LOWORD(v39) = 0;
              v40 = (v32 - *v32);
              v41 = *v40;
              if ((*(v29 + 39) & 0x20) == 0)
              {
                goto LABEL_49;
              }
            }

LABEL_55:
            if (v41 < 5)
            {
LABEL_58:
              v42 = 0;
              goto LABEL_59;
            }

            v42 = v40[2];
            if (v42)
            {
              goto LABEL_57;
            }

LABEL_59:
            v43 = v39 + 18000;
            v44 = v39 - 18000;
            if ((v43 >> 5) < 0x465u)
            {
              v44 = v43;
            }

            v45 = v42 - v44;
            if (v45 > 18000)
            {
              v45 -= 36000;
            }

            if (v45 < -17999)
            {
              v45 += 36000;
            }

            v34 = fabs(v45 / 100.0);
LABEL_66:
            v46 = *(v11 + 8);
            if (v34 > v46)
            {
              goto LABEL_32;
            }

            if (v30)
            {
              v47 = v33 == 0;
            }

            else
            {
              v47 = 1;
            }

            v49 = !v47 && v32 != 0;
            v50 = 0.0;
            if ((v49 & v80) == 1 && v18 != 0)
            {
              v52 = (v32 - *v32);
              v53 = *v52;
              if ((*(v29 + 39) & 0x20) != 0)
              {
                if (v53 >= 9)
                {
                  v54 = v52[4];
                  if (v54)
                  {
                    goto LABEL_90;
                  }
                }

LABEL_94:
                v55 = 0;
                v56 = (v18 - *v18);
                v57 = *v56;
                if (v79)
                {
                  goto LABEL_95;
                }

LABEL_91:
                if (v57 >= 5)
                {
                  v58 = v56[2];
                  if (v58)
                  {
                    goto LABEL_97;
                  }

                  goto LABEL_99;
                }
              }

              else
              {
                if (v53 < 5)
                {
                  goto LABEL_94;
                }

                v54 = v52[2];
                if (!v54)
                {
                  goto LABEL_94;
                }

LABEL_90:
                v55 = *(v32 + v54);
                v56 = (v18 - *v18);
                v57 = *v56;
                if (!v79)
                {
                  goto LABEL_91;
                }

LABEL_95:
                if (v57 >= 9)
                {
                  v58 = v56[4];
                  if (v58)
                  {
LABEL_97:
                    v58 = *(v18 + v58);
                  }

LABEL_99:
                  v59 = v55 + 18000;
                  v60 = v55 - 18000;
                  if ((v59 >> 5) < 0x465u)
                  {
                    v60 = v59;
                  }

                  v61 = v58 - v60;
                  if (v61 > 18000)
                  {
                    v61 -= 36000;
                  }

                  if (v61 < -17999)
                  {
                    v61 += 36000;
                  }

                  v50 = fabs(v61 / 100.0);
                  goto LABEL_106;
                }
              }

              v58 = 0;
              goto LABEL_99;
            }

LABEL_106:
            if (v50 <= v46)
            {
              if (v28 != -1)
              {
                v62 = v4[2];
                if (v8 >= v62)
                {
                  v63 = v8;
                  v64 = v8 >> 4;
                  v65 = v64 + 1;
                  if ((v64 + 1) >> 60)
                  {
                    *v76 = 0;
                    sub_1794();
                  }

                  if (v62 >> 3 > v65)
                  {
                    v65 = v62 >> 3;
                  }

                  if (v62 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v66 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v66 = v65;
                  }

                  if (v66)
                  {
                    if (!(v66 >> 60))
                    {
                      operator new();
                    }

                    *v76 = 0;
                    sub_1808();
                  }

                  v67 = (16 * v64);
                  *v67 = v28;
                  v67[1] = v22;
                  v8 = 16 * v64 + 16;
                  memcpy(0, 0, v63);
                  v4 = v76;
                  v76[1] = v8;
                  v76[2] = 0;
                  v5 = v74;
                  v11 = v77;
                }

                else
                {
                  *v8 = v28;
                  *(v8 + 8) = v22;
                  v8 += 16;
                }

                v4[1] = v8;
                v28 = -1;
              }

              goto LABEL_34;
            }

LABEL_32:
            if (v28 == -1)
            {
              v28 = v22;
            }

LABEL_34:
            ++v22;
          }

          while (v23 != v22);
          *v4 = 0;
          if (v28 == -1)
          {
            goto LABEL_5;
          }

          v68 = v4[2];
          if (v8 < v68)
          {
            *v8 = v28;
            *(v8 + 8) = v78[1];
            v8 += 16;
            v4[1] = v8;
            v7 = v78 + 2;
            if (v78 + 2 == v75)
            {
              goto LABEL_135;
            }

            continue;
          }

          v69 = v8;
          v70 = v8 >> 4;
          v71 = (v8 >> 4) + 1;
          if (v71 >> 60)
          {
            sub_1794();
          }

          if (v68 >> 3 > v71)
          {
            v71 = v68 >> 3;
          }

          if (v68 >= 0x7FFFFFFFFFFFFFF0)
          {
            v72 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v72 = v71;
          }

          if (v72)
          {
            if (!(v72 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v73 = (16 * v70);
          *v73 = v28;
          v73[1] = v78[1];
          v8 = 16 * v70 + 16;
          memcpy(0, 0, v69);
          *v76 = 0;
          v76[1] = v8;
          v76[2] = 0;
          v4 = v76;
          v76[1] = v8;
          v7 = v78 + 2;
          if (v78 + 2 == v75)
          {
LABEL_135:
            v7 = __p;
            break;
          }
        }
      }
    }

    if (v7)
    {
      v83 = v7;
      operator delete(v7);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_51322C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  v20 = *a12;
  if (*a12)
  {
    *(a12 + 8) = v20;
    operator delete(v20);
    v21 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v21 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v21);
  _Unwind_Resume(exception_object);
}

void sub_513298(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = sub_50EA30(a2 + 138, a3);
  v8 = *(v7 + 40);
  v27 = v7;
  v9 = *(v7 + 24);
  if (v8 <= v9)
  {
    v10 = *(v7 + 24);
  }

  else
  {
    v10 = *(v7 + 40);
  }

  if (v8 >= v9)
  {
    *a4 = 0;
  }

  else
  {
    v11 = 0;
    v12 = -1;
    do
    {
      v13 = sub_4D1F50(a2, v8);
      if (sub_6AD28C(a1 + 32, v13))
      {
        if (v12 == -1)
        {
          v12 = v8;
        }
      }

      else if (v12 != -1)
      {
        v14 = a4[2];
        if (v11 >= v14)
        {
          v15 = v11;
          v16 = v11 >> 4;
          v17 = v16 + 1;
          if ((v16 + 1) >> 60)
          {
            *a4 = 0;
            sub_1794();
          }

          if (v14 >> 3 > v17)
          {
            v17 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v18 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            if (!(v18 >> 60))
            {
              operator new();
            }

            *a4 = 0;
            sub_1808();
          }

          v19 = (16 * v16);
          *v19 = v12;
          v19[1] = v8;
          v11 = 16 * v16 + 16;
          memcpy(0, 0, v15);
          a4[1] = v11;
          a4[2] = 0;
        }

        else
        {
          *v11 = v12;
          *(v11 + 8) = v8;
          v11 += 16;
        }

        a4[1] = v11;
        v12 = -1;
      }

      ++v8;
    }

    while (v10 != v8);
    *a4 = 0;
    if (v12 != -1)
    {
      v20 = a4[2];
      if (v11 >= v20)
      {
        v22 = v11;
        v23 = v11 >> 4;
        v24 = v23 + 1;
        if ((v23 + 1) >> 60)
        {
          sub_1794();
        }

        if (v20 >> 3 > v24)
        {
          v24 = v20 >> 3;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF0)
        {
          v25 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          if (!(v25 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v26 = (16 * v23);
        *v26 = v12;
        v26[1] = *(v27 + 24);
        v21 = 16 * v23 + 16;
        memcpy(0, 0, v22);
        *a4 = 0;
        a4[1] = v21;
        a4[2] = 0;
      }

      else
      {
        *v11 = v12;
        *(v11 + 8) = *(v27 + 24);
        v21 = v11 + 16;
      }

      a4[1] = v21;
    }
  }
}

void sub_513538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v11)
  {
    *(v10 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_513574(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

uint64_t sub_5135D0(void *a1)
{
  v2 = a1[122];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[120];
  a1[120] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[117];
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = a1[115];
  a1[115] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = a1[106];
  if (v8)
  {
    a1[107] = v8;
    operator delete(v8);
  }

  v9 = a1[103];
  if (v9)
  {
    a1[104] = v9;
    operator delete(v9);
  }

  v10 = a1[99];
  if (v10)
  {
    a1[100] = v10;
    operator delete(v10);
  }

  v11 = a1[96];
  if (v11)
  {
    a1[97] = v11;
    operator delete(v11);
  }

  return sub_360988(a1);
}

void sub_513694(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    *(a1 + 256) = v2;
    operator delete(v2);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 95) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  operator delete(*(a1 + 72));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return;
  }

LABEL_13:
  v3 = *a1;

  operator delete(v3);
}

void *sub_51374C(void **a1, __int128 *a2, __int128 *a3, uint64_t *a4, int *a5)
{
  v5 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0xF0F0F0F0F0F0F0)
  {
    sub_1794();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 4) >= 0x78787878787878)
  {
    v9 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    if (v9 <= 0xF0F0F0F0F0F0F0)
    {
      operator new();
    }

    sub_1808();
  }

  v31 = 16 * ((a1[1] - *a1) >> 4);
  v10 = *a4;
  v11 = *a5;
  v12 = sub_5139E8(v31, a2);
  v13 = *a3;
  *(v12 + 168) = a3[1];
  v14 = a3[3];
  *(v12 + 184) = a3[2];
  *(v12 + 200) = v14;
  *(v12 + 216) = a3[4];
  *(v12 + 152) = v13;
  *(v12 + 232) = v10;
  *(v12 + 240) = v11;
  *(v12 + 256) = 0;
  *(v12 + 264) = 0;
  *(v12 + 248) = 0;
  v15 = (272 * v5 + 272);
  v16 = *a1;
  v17 = a1[1];
  v18 = (v31 + *a1 - v17);
  if (*a1 != v17)
  {
    v19 = *a1;
    v20 = (v31 + *a1 - v17);
    do
    {
      v21 = *v19;
      *(v20 + 2) = *(v19 + 2);
      *v20 = v21;
      *(v19 + 1) = 0;
      *(v19 + 2) = 0;
      *v19 = 0;
      *(v20 + 3) = *(v19 + 3);
      v22 = *(v19 + 2);
      *(v20 + 6) = *(v19 + 6);
      *(v20 + 2) = v22;
      *(v19 + 5) = 0;
      *(v19 + 6) = 0;
      *(v19 + 4) = 0;
      *(v20 + 7) = *(v19 + 7);
      *(v20 + 16) = *(v19 + 16);
      v23 = *(v19 + 72);
      *(v20 + 11) = *(v19 + 11);
      *(v20 + 72) = v23;
      *(v19 + 10) = 0;
      *(v19 + 11) = 0;
      *(v19 + 9) = 0;
      v24 = *(v19 + 6);
      *(v20 + 14) = *(v19 + 14);
      *(v20 + 6) = v24;
      *(v19 + 13) = 0;
      *(v19 + 14) = 0;
      *(v19 + 12) = 0;
      *(v20 + 30) = *(v19 + 30);
      v25 = *(v19 + 8);
      *(v20 + 18) = *(v19 + 18);
      *(v20 + 8) = v25;
      *(v19 + 17) = 0;
      *(v19 + 18) = 0;
      *(v19 + 16) = 0;
      v26 = *(v19 + 152);
      *(v20 + 168) = *(v19 + 168);
      *(v20 + 152) = v26;
      v27 = *(v19 + 184);
      v28 = *(v19 + 200);
      v29 = *(v19 + 216);
      *(v20 + 228) = *(v19 + 228);
      *(v20 + 216) = v29;
      *(v20 + 200) = v28;
      *(v20 + 184) = v27;
      *(v20 + 32) = 0;
      *(v20 + 33) = 0;
      *(v20 + 31) = 0;
      *(v20 + 248) = *(v19 + 248);
      *(v20 + 33) = *(v19 + 33);
      *(v19 + 31) = 0;
      *(v19 + 32) = 0;
      *(v19 + 33) = 0;
      v19 += 272;
      v20 += 272;
    }

    while (v19 != v17);
    do
    {
      sub_513694(v16);
      v16 += 272;
    }

    while (v16 != v17);
    v16 = *a1;
  }

  *a1 = v18;
  a1[1] = v15;
  a1[2] = 0;
  if (v16)
  {
    operator delete(v16);
  }

  return v15;
}

void sub_5139D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_513BAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5139E8(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    *(a1 + 24) = *(a2 + 3);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a1 + 24) = *(a2 + 3);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 32), *(a2 + 4), *(a2 + 5));
LABEL_6:
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 64) = *(a2 + 16);
  if (*(a2 + 95) < 0)
  {
    sub_325C((a1 + 72), *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v6 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v6;
  }

  if (*(a2 + 119) < 0)
  {
    sub_325C((a1 + 96), *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v7 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 96) = v7;
  }

  *(a1 + 120) = *(a2 + 30);
  if (*(a2 + 151) < 0)
  {
    sub_325C((a1 + 128), *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v8 = a2[8];
    *(a1 + 144) = *(a2 + 18);
    *(a1 + 128) = v8;
  }

  return a1;
}

void sub_513B20(_Unwind_Exception *a1)
{
  sub_513574(v2);
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v1);
  _Unwind_Resume(a1);
}

uint64_t sub_513BAC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 272;
    sub_513694(i - 272);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__int128 *sub_513C00(__int128 **a1, __int128 *a2, void *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v4 = v3 + 1;
  if (v3 + 1 > 0x199999999999999)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v6 = 0x199999999999999;
  }

  else
  {
    v6 = v4;
  }

  v13 = a1;
  if (v6)
  {
    if (v6 <= 0x199999999999999)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v10 = 160 * v3;
  v11 = 160 * v3;
  v12 = 0;
  *(sub_5139E8(160 * v3, a2) + 152) = *a3;
  v11 += 160;
  sub_513D48(a1, &__p);
  v7 = a1[1];
  sub_514094(&__p, v10);
  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_513D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51405C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_513D48(__int128 **a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = (v4 + *a1 - v6);
  v21 = v7;
  v22 = v7;
  v19[0] = a1;
  v19[1] = &v21;
  v19[2] = &v22;
  if (v6 != v5)
  {
    v8 = v5;
    v9 = v7;
    do
    {
      v10 = *v8;
      *(v9 + 2) = *(v8 + 2);
      *v9 = v10;
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *v8 = 0;
      *(v9 + 3) = *(v8 + 3);
      v11 = v8[2];
      *(v9 + 6) = *(v8 + 6);
      *(v9 + 2) = v11;
      *(v8 + 5) = 0;
      *(v8 + 6) = 0;
      *(v8 + 4) = 0;
      *(v9 + 7) = *(v8 + 7);
      *(v9 + 16) = *(v8 + 16);
      v12 = *(v8 + 72);
      *(v9 + 11) = *(v8 + 11);
      *(v9 + 72) = v12;
      *(v8 + 10) = 0;
      *(v8 + 11) = 0;
      *(v8 + 9) = 0;
      v13 = v8[6];
      *(v9 + 14) = *(v8 + 14);
      *(v9 + 6) = v13;
      *(v8 + 13) = 0;
      *(v8 + 14) = 0;
      *(v8 + 12) = 0;
      *(v9 + 30) = *(v8 + 30);
      v14 = v8[8];
      *(v9 + 18) = *(v8 + 18);
      *(v9 + 8) = v14;
      *(v8 + 17) = 0;
      *(v8 + 18) = 0;
      *(v8 + 16) = 0;
      *(v9 + 19) = *(v8 + 19);
      v8 += 10;
      v9 += 160;
    }

    while (v8 != v6);
    v22 = v9;
  }

  v20 = 1;
  sub_513ED0(a1, v5, v6);
  result = sub_513F88(v19);
  a2[1] = v7;
  v16 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v16;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return result;
}

void sub_513ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    for (i = a2; i != a3; i += 160)
    {
      if (*(i + 151) < 0)
      {
        operator delete(*(i + 128));
        if ((*(i + 119) & 0x80000000) == 0)
        {
LABEL_6:
          if ((*(i + 95) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      else if ((*(i + 119) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      operator delete(*(i + 96));
      if ((*(i + 95) & 0x80000000) == 0)
      {
LABEL_7:
        if ((*(i + 55) & 0x80000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

LABEL_12:
      operator delete(*(i + 72));
      if ((*(i + 55) & 0x80000000) == 0)
      {
LABEL_8:
        if (*(i + 23) < 0)
        {
          goto LABEL_14;
        }

        continue;
      }

LABEL_13:
      operator delete(*(i + 32));
      if (*(i + 23) < 0)
      {
LABEL_14:
        operator delete(*i);
      }
    }
  }
}

uint64_t sub_513F88(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        if (*(v4 - 9) < 0)
        {
          operator delete(*(v4 - 4));
          if ((*(v4 - 41) & 0x80000000) == 0)
          {
LABEL_7:
            if ((*(v4 - 65) & 0x80000000) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_13;
          }
        }

        else if ((*(v4 - 41) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        operator delete(*(v4 - 8));
        if ((*(v4 - 65) & 0x80000000) == 0)
        {
LABEL_8:
          if ((*(v4 - 105) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_14;
        }

LABEL_13:
        operator delete(*(v4 - 11));
        if ((*(v4 - 105) & 0x80000000) == 0)
        {
LABEL_9:
          v7 = v4 - 20;
          if (*(v4 - 137) < 0)
          {
            goto LABEL_15;
          }

          goto LABEL_4;
        }

LABEL_14:
        operator delete(*(v4 - 16));
        v7 = v4 - 20;
        if (*(v4 - 137) < 0)
        {
LABEL_15:
          operator delete(*v7);
        }

LABEL_4:
        v4 = v7;
      }

      while (v7 != v5);
    }
  }

  return a1;
}

uint64_t sub_51405C(uint64_t a1)
{
  sub_514094(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_514094(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 160;
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
      if ((*(i - 41) & 0x80000000) == 0)
      {
LABEL_6:
        if ((*(i - 65) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(i - 41) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(i - 64));
    if ((*(i - 65) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(i - 105) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_12:
    operator delete(*(i - 88));
    if ((*(i - 105) & 0x80000000) == 0)
    {
LABEL_8:
      if (*(i - 137) < 0)
      {
        goto LABEL_14;
      }

      continue;
    }

LABEL_13:
    operator delete(*(i - 128));
    if (*(i - 137) < 0)
    {
LABEL_14:
      operator delete(*(i - 160));
    }
  }
}

void sub_51415C(void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (!v2)
  {
    return;
  }

  v4 = v1[1];
  v5 = **a1;
  if (v4 != v2)
  {
    while (1)
    {
      if (*(v4 - 9) < 0)
      {
        operator delete(*(v4 - 4));
        if ((*(v4 - 41) & 0x80000000) == 0)
        {
LABEL_7:
          if ((*(v4 - 65) & 0x80000000) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v4 - 41) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*(v4 - 8));
      if ((*(v4 - 65) & 0x80000000) == 0)
      {
LABEL_8:
        if ((*(v4 - 105) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }

LABEL_13:
      operator delete(*(v4 - 11));
      if ((*(v4 - 105) & 0x80000000) == 0)
      {
LABEL_9:
        v6 = v4 - 20;
        if (*(v4 - 137) < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_4;
      }

LABEL_14:
      operator delete(*(v4 - 16));
      v6 = v4 - 20;
      if (*(v4 - 137) < 0)
      {
LABEL_15:
        operator delete(*v6);
      }

LABEL_4:
      v4 = v6;
      if (v6 == v2)
      {
        v5 = **a1;
        break;
      }
    }
  }

  v1[1] = v2;

  operator delete(v5);
}

uint64_t sub_514268(void **a1, __int128 *a2, __int128 *a3, uint64_t *a4, int *a5)
{
  v5 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0xF0F0F0F0F0F0F0)
  {
    sub_1794();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 4) >= 0x78787878787878)
  {
    v9 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    if (v9 <= 0xF0F0F0F0F0F0F0)
    {
      operator new();
    }

    sub_1808();
  }

  v31 = 16 * ((a1[1] - *a1) >> 4);
  v10 = *a4;
  v11 = *a5;
  v12 = sub_5139E8(v31, a2);
  v13 = *a3;
  *(v12 + 168) = a3[1];
  v14 = a3[3];
  *(v12 + 184) = a3[2];
  *(v12 + 200) = v14;
  *(v12 + 216) = a3[4];
  *(v12 + 152) = v13;
  *(v12 + 232) = v10;
  *(v12 + 240) = v11;
  *(v12 + 256) = 0;
  *(v12 + 264) = 0;
  *(v12 + 248) = 0;
  v15 = 272 * v5 + 272;
  v16 = *a1;
  v17 = a1[1];
  v18 = *a1 + v31 - v17;
  if (*a1 != v17)
  {
    v19 = *a1;
    v20 = *a1 + v31 - v17;
    do
    {
      v21 = *v19;
      *(v20 + 2) = *(v19 + 2);
      *v20 = v21;
      *(v19 + 1) = 0;
      *(v19 + 2) = 0;
      *v19 = 0;
      *(v20 + 3) = *(v19 + 3);
      v22 = *(v19 + 2);
      *(v20 + 6) = *(v19 + 6);
      *(v20 + 2) = v22;
      *(v19 + 5) = 0;
      *(v19 + 6) = 0;
      *(v19 + 4) = 0;
      *(v20 + 7) = *(v19 + 7);
      *(v20 + 16) = *(v19 + 16);
      v23 = *(v19 + 72);
      *(v20 + 11) = *(v19 + 11);
      *(v20 + 72) = v23;
      *(v19 + 10) = 0;
      *(v19 + 11) = 0;
      *(v19 + 9) = 0;
      v24 = *(v19 + 6);
      *(v20 + 14) = *(v19 + 14);
      *(v20 + 6) = v24;
      *(v19 + 13) = 0;
      *(v19 + 14) = 0;
      *(v19 + 12) = 0;
      *(v20 + 30) = *(v19 + 30);
      v25 = *(v19 + 8);
      *(v20 + 18) = *(v19 + 18);
      *(v20 + 8) = v25;
      *(v19 + 17) = 0;
      *(v19 + 18) = 0;
      *(v19 + 16) = 0;
      v26 = *(v19 + 152);
      *(v20 + 168) = *(v19 + 168);
      *(v20 + 152) = v26;
      v27 = *(v19 + 184);
      v28 = *(v19 + 200);
      v29 = *(v19 + 216);
      *(v20 + 228) = *(v19 + 228);
      *(v20 + 216) = v29;
      *(v20 + 200) = v28;
      *(v20 + 184) = v27;
      *(v20 + 32) = 0;
      *(v20 + 33) = 0;
      *(v20 + 31) = 0;
      *(v20 + 248) = *(v19 + 248);
      *(v20 + 33) = *(v19 + 33);
      *(v19 + 31) = 0;
      *(v19 + 32) = 0;
      *(v19 + 33) = 0;
      v19 += 272;
      v20 += 272;
    }

    while (v19 != v17);
    do
    {
      sub_513694(v16);
      v16 += 272;
    }

    while (v16 != v17);
    v16 = *a1;
  }

  *a1 = v18;
  a1[1] = v15;
  a1[2] = 0;
  if (v16)
  {
    operator delete(v16);
  }

  return v15;
}

void sub_5144F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_513BAC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_514504(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 < 0x19999999999999ALL)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_514620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_513F88(va);
  *(v10 + 8) = v11;
  sub_51415C(&a9);
  _Unwind_Resume(a1);
}

void sub_514640()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_2790488 = 0u;
  unk_2790498 = 0u;
  dword_27904A8 = 1065353216;
  sub_3A9A34(&xmmword_2790488, v0, v0);
  sub_3A9A34(&xmmword_2790488, v3, v3);
  sub_3A9A34(&xmmword_2790488, __p, __p);
  sub_3A9A34(&xmmword_2790488, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_2790460 = 0;
    qword_2790468 = 0;
    qword_2790458 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_514888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_2790470)
  {
    qword_2790478 = qword_2790470;
    operator delete(qword_2790470);
  }

  _Unwind_Resume(exception_object);
}

void sub_514934(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_3AF6B4(a2);
  v7 = 13;
  strcpy(v6, "ARInfoBuilder");
  memset(v5, 0, sizeof(v5));
  v4 = sub_3AEC94(a2, v6, v5);
  sub_41D598(v4, v8);
  sub_5156B0((a1 + 1), v8);
}

void sub_514A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_514AD4(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 8) == 1 && !sub_4D1F6C(a3))
  {
    v29[3] = sub_514E74(a1, a3);
    v30 = v6;
    memset(v29, 0, 24);
    v8 = *(a2 + 360);
    v7 = *(a2 + 368);
    if (v7 != v8)
    {
      if (0x8E38E38E38E38E39 * ((v7 - v8) >> 3) <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_1794();
    }

    sub_515300(v29, &v27);
    if (*(a1 + 9) == 1)
    {
      v10 = v27;
      v11 = v28;
      v12 = (v28 - v27) >> 4;
      if (v12 < 129)
      {
        v17 = 0;
        v13 = 0;
      }

      else
      {
        v13 = (v28 - v27) >> 4;
        while (1)
        {
          v14 = operator new(16 * v13, &std::nothrow);
          if (v14)
          {
            break;
          }

          v15 = v13 >> 1;
          v16 = v13 > 1;
          v13 >>= 1;
          if (!v16)
          {
            v17 = 0;
            v13 = v15;
            goto LABEL_14;
          }
        }

        v17 = v14;
      }

LABEL_14:
      sub_517334(v10, v11, &__p, v12, v17, v13, v9);
      if (v17)
      {
        operator delete(v17);
      }
    }

    if (*(a1 + 10))
    {
      v18 = v27;
      v19 = v28;
      if (v27 != v28)
      {
        v20 = v27 + 16;
        while (*(v20 - 1) <= *(a1 + 16))
        {
          v21 = v20 == v28;
          v20 += 16;
          if (v21)
          {
            goto LABEL_33;
          }
        }

        v18 = v20 - 16;
        if (v20 - 16 != v28 && v20 != v28)
        {
          do
          {
            if (*(v20 + 1) <= *(a1 + 16))
            {
              *v18 = *v20;
              v18 += 16;
            }

            v20 += 16;
          }

          while (v20 != v19);
          v19 = v28;
        }
      }

      if (v18 != v19)
      {
        v19 = v18;
        v28 = v18;
      }
    }

    else
    {
      v19 = v28;
    }

LABEL_33:
    __p = 0;
    v25 = 0;
    v26 = 0;
    if (v19 != v27)
    {
      if (((v19 - v27) >> 4) <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_1794();
    }

    p_p = &__p;
    nullsub_1();
    v23 = (*(v22 + 8) - 1128);
    if (v23 != &__p)
    {
      sub_516FFC(v23, __p, v25, 0x8E38E38E38E38E39 * ((v25 - __p) >> 3));
    }

    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }

    if (v29[0])
    {
      operator delete(v29[0]);
    }
  }
}