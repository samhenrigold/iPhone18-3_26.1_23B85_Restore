void sub_1004AFB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004AFB80(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 288) & 1) == 0)
  {
    v2 = *(v1 + 5456);
    *(v1 + 5456) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    sub_100009970(v1 + 5128, *(v1 + 5136));
    *(v1 + 5128) = v1 + 5136;
    *(v1 + 5136) = 0u;
    sub_10000501C(__p, "App DB recovery");
    DataServiceController::updateSlicingDefinitionsWithAppDB(v1, __p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1004AFC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::sendNRSlicedRunningAppStateChanged_sync(DataServiceController *this)
{
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v1 = *(this + 623);
  v2 = this + 4992;
  if (v1 != this + 4992)
  {
    v34 = this + 4992;
    do
    {
      if (v1[128] == 1)
      {
        v3 = *(v1 + 31);
        if ((v3 - 5) >= 0xFFFFFFFE)
        {
          v68 = 0;
          v67 = 0u;
          memset(v66, 0, sizeof(v66));
          std::string::operator=(v66, (v1 + 32));
          v66[24] = v3 == 4;
          v4 = *(this + 14);
          *&v41 = *(this + 13);
          *(&v41 + 1) = v4;
          if (v4)
          {
            atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
          }

          subscriber::makeSimSlotRange();
          if (*(&v41 + 1))
          {
            sub_100004A34(*(&v41 + 1));
          }

          v5 = v63;
          v6 = v64;
          if (v63 != v64)
          {
            v7 = v65;
            do
            {
              if (v7(*v5))
              {
                break;
              }

              ++v5;
            }

            while (v5 != v6);
            v35 = v7;
            v36 = v64;
            while (v5 != v36)
            {
              v8 = sub_1000A8A0C(*(this + 18), *v5);
              v10 = *v8;
              v9 = *(v8 + 8);
              while (v10 != v9)
              {
                v12 = *v10;
                v11 = v10[1];
                if (v11)
                {
                  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (!v12)
                {
                  goto LABEL_55;
                }

                (*(*v12 + 488))(v12);
                if ((isSlice() & 1) == 0 || !(*(*v12 + 168))(v12))
                {
                  goto LABEL_55;
                }

                memset(&__str, 0, sizeof(__str));
                v13 = (*(*v12 + 416))(v12, &__str);
                v61 = 0u;
                memset(&v59, 0, sizeof(v59));
                v60 = &v61;
                std::string::operator=(&v59, &__str);
                v16 = *v13;
                v14 = v13 + 1;
                v15 = v16;
                if (v16 != v14)
                {
                  do
                  {
                    v57 = 0u;
                    v58 = 0u;
                    v55 = 0u;
                    v56 = 0u;
                    v53 = 0u;
                    v54 = 0u;
                    v51 = 0u;
                    v52 = 0u;
                    v49 = 0u;
                    v50 = 0u;
                    v47 = 0u;
                    v48 = 0u;
                    v45 = 0u;
                    v46 = 0u;
                    v43 = 0u;
                    v44 = 0u;
                    memset(v42, 0, sizeof(v42));
                    v41 = 0u;
                    TrafficDescriptor::TrafficDescriptor(&v41, (v15 + 4));
                    if (TrafficDescriptor::hasBundleInfo(&v41))
                    {
                      if ((BYTE8(v44) & 1) == 0)
                      {
                        sub_1000D1644();
                      }

                      if ((SBYTE7(v44) & 0x80u) == 0)
                      {
                        v17 = BYTE7(v44);
                      }

                      else
                      {
                        v17 = *(&v43 + 1);
                      }

                      v18 = v1[55];
                      v19 = v18;
                      if ((v18 & 0x80u) != 0)
                      {
                        v18 = *(v1 + 5);
                      }

                      if (v17 == v18)
                      {
                        v20 = (SBYTE7(v44) & 0x80u) == 0 ? &v43 : v43;
                        v21 = v19 >= 0 ? v1 + 32 : *(v1 + 4);
                        if (!memcmp(v20, v21, v17))
                        {
                          __p.n128_u8[0] = 0;
                          v40 = 0;
                          sub_10016A270(v42, &__p);
                          if (v40 == 1 && v39 < 0)
                          {
                            operator delete(__p.n128_u64[0]);
                          }

                          BYTE4(v41) = 0;
                          BYTE8(v41) = 0;
                          LODWORD(v41) = 0;
                          sub_100117AC4(&v60, &v41, &v41);
                        }
                      }
                    }

                    TrafficDescriptor::~TrafficDescriptor(&v41);
                    v22 = v15[1];
                    if (v22)
                    {
                      do
                      {
                        v23 = v22;
                        v22 = *v22;
                      }

                      while (v22);
                    }

                    else
                    {
                      do
                      {
                        v23 = v15[2];
                        v24 = *v23 == v15;
                        v15 = v23;
                      }

                      while (!v24);
                    }

                    v15 = v23;
                  }

                  while (v23 != v14);
                }

                if (*(&v61 + 1))
                {
                  v25 = *(&v67 + 1);
                  if (*(&v67 + 1) >= v68)
                  {
                    v26 = sub_1004BEF00(&v67, &v59);
                  }

                  else
                  {
                    sub_1004BF034(&v67, *(&v67 + 1), &v59);
                    v26 = v25 + 48;
                  }

                  *(&v67 + 1) = v26;
                }

                sub_10001BB0C(&v60, v61);
                if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v59.__r_.__value_.__l.__data_);
                }

                if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_55:
                  if (!v11)
                  {
                    goto LABEL_57;
                  }

LABEL_56:
                  sub_100004A34(v11);
                  goto LABEL_57;
                }

                operator delete(__str.__r_.__value_.__l.__data_);
                if (v11)
                {
                  goto LABEL_56;
                }

LABEL_57:
                v10 += 2;
              }

              for (++v5; v5 != v6; ++v5)
              {
                if (v35(*v5))
                {
                  break;
                }
              }
            }
          }

          v2 = v34;
          if (*(&v67 + 1) != v67)
          {
            v27 = v70;
            if (v70 >= v71)
            {
              v28 = sub_1004BF258(&v69, v66);
            }

            else
            {
              sub_1004BF3A4(&v69, v70, v66);
              v28 = v27 + 56;
            }

            v70 = v28;
          }

          *&v41 = &v67;
          sub_1004BF5A8(&v41);
          if ((v66[23] & 0x80000000) != 0)
          {
            operator delete(*v66);
          }
        }
      }

      v29 = *(v1 + 1);
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = *(v1 + 2);
          v24 = *v30 == v1;
          v1 = v30;
        }

        while (!v24);
      }

      v1 = v30;
    }

    while (v30 != v2);
  }

  if ((*(this + 5120) & 1) != 0 && (v31 = v69, v32 = v70, v33 = *(this + 637), v70 - v69 == *(this + 638) - v33))
  {
    while (v31 != v32)
    {
      if (!sub_1004BF7BC(v31, v33))
      {
        goto LABEL_82;
      }

      v31 += 56;
      v33 += 7;
    }
  }

  else
  {
LABEL_82:
    sub_1004B02B0(this + 5096, &v69);
    (*(**(this + 573) + 144))(*(this + 573), &v69);
  }

  *&v41 = &v69;
  sub_1004BFFC4(&v41);
}

void sub_1004B01C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v20 - 104) = v19;
  a19 = a13;
  sub_1004BF5A8(&a19);
  if (*(v20 - 153) < 0)
  {
    operator delete(*(v20 - 176));
  }

  a19 = v20 - 112;
  sub_1004BFFC4(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_1004B02B0(uint64_t a1, std::string **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_1004BF98C(a1, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_1004BFF3C(a1, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
    *(a1 + 24) = 1;
  }

  return a1;
}

void DataServiceController::updateActiveSliceStatus_sync(DataServiceController *this)
{
  v2 = *(this + 14);
  v14 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v14)
  {
    sub_100004A34(v14);
  }

  v3 = v15;
  if (v15 == v16)
  {
    goto LABEL_25;
  }

  do
  {
    if (v17(*v3))
    {
      break;
    }

    ++v3;
  }

  while (v3 != v16);
  if (v3 == v16)
  {
LABEL_25:
    v11 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v3;
      if (sub_100097DB0(*(this + 18), *v3))
      {
        v6 = sub_1000A8A0C(*(this + 18), v5);
        v8 = *v6;
        v7 = *(v6 + 8);
        while (v8 != v7)
        {
          v10 = *v8;
          v9 = v8[1];
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v10)
          {
            (*(*v10 + 488))(v10);
            if (isSlice())
            {
              v4 += (*(*v10 + 168))(v10);
            }
          }

          if (v9)
          {
            sub_100004A34(v9);
          }

          v8 += 2;
        }
      }

      do
      {
        ++v3;
      }

      while (v3 != v16 && (v17(*v3) & 1) == 0);
    }

    while (v3 != v16);
    v11 = v4 != 0;
  }

  if ((*(this + 5227) & 1) == 0 || *(this + 5226) != v11)
  {
    *(this + 2613) = v11 | 0x100;
    v12 = (*(*this + 1120))(this);
    if (sub_100097DB0(*(this + 18), v12))
    {
      if (*(sub_1000A8A0C(*(this + 18), v12) + 24))
      {
        v13 = **(sub_1000A8A0C(*(this + 18), v12) + 24);
        (*(v13 + 976))();
      }
    }
  }
}

void sub_1004B05D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::makeSlicesStruct(DataServiceController *this)
{
  v1 = *(this + 14);
  v3 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v3)
  {
    sub_100004A34(v3);
  }

  v2 = v4;
  if (v4 != v5)
  {
    do
    {
      if (v6(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v5);
    if (v2 != v5)
    {
      operator new();
    }
  }
}

void sub_1004B07F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

double DataServiceController::cleanSlicesStruct(DataServiceController *this)
{
  v2 = *(this + 620);
  v3 = this + 4968;
  if (v2 != this + 4968)
  {
    do
    {
      v4 = *(v2 + 5);
      if (v4)
      {
        sub_1004C0048(v4);
        operator delete();
      }

      v5 = *(v2 + 1);
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
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  sub_10006DCAC(this + 4960, *(this + 621));
  *(this + 620) = v3;
  result = 0.0;
  *(this + 4968) = 0u;
  return result;
}

uint64_t sub_1004B08C8(uint64_t a1, char a2, char a3, uint64_t a4)
{
  if (*(a4 + 24))
  {
    if (*a1)
    {
      goto LABEL_5;
    }

    sub_10000501C(__p, "not enabled");
    v8 = *(a4 + 24);
    if (!v8)
    {
      sub_100022DB4();
    }

    (*(*v8 + 48))(v8, __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
      if (a3)
      {
LABEL_6:
        sub_10000501C(__p, "inHome");
        v9 = *(a4 + 24);
        if (!v9)
        {
          sub_100022DB4();
        }

        goto LABEL_10;
      }
    }

    else
    {
LABEL_5:
      if (a3)
      {
        goto LABEL_6;
      }
    }

    sub_10000501C(__p, "not inHome");
    v9 = *(a4 + 24);
    if (!v9)
    {
      sub_100022DB4();
    }

LABEL_10:
    (*(*v9 + 48))(v9, __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a1 + 19))
    {
      goto LABEL_15;
    }

    sub_10000501C(__p, "not internationalRoaming");
    v10 = *(a4 + 24);
    if (!v10)
    {
      sub_100022DB4();
    }

    (*(*v10 + 48))(v10, __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
      if ((a2 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_15:
      if ((a2 & 1) == 0)
      {
LABEL_16:
        sub_10000501C(__p, "not hasInternalApps");
        v11 = *(a4 + 24);
        if (!v11)
        {
          sub_100022DB4();
        }

        (*(*v11 + 48))(v11, __p);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if ((*(a1 + 128) & 1) == 0)
    {
      sub_10000501C(__p, "not allowedAppsAll");
      v12 = *(a4 + 24);
      if (!v12)
      {
        sub_100022DB4();
      }

      (*(*v12 + 48))(v12, __p);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (!*(a1 + 120))
    {
      sub_10000501C(__p, "not allowedApps.size()");
      v13 = *(a4 + 24);
      if (!v13)
      {
        sub_100022DB4();
      }

      (*(*v13 + 48))(v13, __p);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (*(a1 + 12) != 1 || (*(a1 + 13) & 1) == 0 && (*(a1 + 14) & 1) == 0)
    {
      sub_10000501C(__p, "not allowLLPHS()");
      v14 = *(a4 + 24);
      if (!v14)
      {
        sub_100022DB4();
      }

      (*(*v14 + 48))(v14, __p);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (*a1 != 1)
  {
    goto LABEL_46;
  }

  if (a3)
  {
    if (a2)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v15 = *(a1 + 19);
    if (v15 != 1 || (a2 & 1) != 0)
    {
      goto LABEL_47;
    }
  }

  if ((*(a1 + 128) & 1) != 0 || *(a1 + 120))
  {
    goto LABEL_42;
  }

  if (*(a1 + 12) != 1)
  {
LABEL_46:
    LOBYTE(v15) = 0;
    goto LABEL_47;
  }

  if (*(a1 + 13))
  {
LABEL_42:
    LOBYTE(v15) = 1;
    goto LABEL_47;
  }

  LOBYTE(v15) = *(a1 + 14);
LABEL_47:
  if (*(a4 + 24))
  {
    if (v15)
    {
      sub_10000501C(__p, "result true");
      v16 = *(a4 + 24);
      if (!v16)
      {
        sub_100022DB4();
      }
    }

    else
    {
      sub_10000501C(__p, "result false");
      v16 = *(a4 + 24);
      if (!v16)
      {
        sub_100022DB4();
      }
    }

    (*(*v16 + 48))(v16, __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v15 & 1;
}

void sub_1004B0D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::adjustSlicesAppsDb(uint64_t **this, int a2)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (((*this)[287])(this))
  {
    if (a2)
    {
      LODWORD(__p[0]) = 6005;
      v5 = sub_1004C0254(&v22, __p, kFaceTimeBundleId);
    }

    else
    {
      v5 = sub_1004C03A8(&v22, &qword_101808710, kFaceTimeBundleId);
    }

    v6 = v5;
    v23 = v5;
    LODWORD(__p[0]) = 6014;
    if (v5 >= v24)
    {
      v4 = sub_1004C0254(&v22, __p, kGamedBundleId);
    }

    else
    {
      *v5 = 6014;
      sub_10000501C(v5 + 1, "com.apple.gamed");
      v4 = v6 + 4;
    }

    v23 = v4;
  }

  else
  {
    v4 = v23;
  }

  LODWORD(__p[0]) = 9001;
  if (v4 >= v24)
  {
    v7 = sub_1004C04B4(&v22, __p, "com.apple.tv");
  }

  else
  {
    *v4 = 9001;
    sub_10000501C(v4 + 1, "com.apple.tv");
    v7 = v4 + 4;
  }

  v23 = v7;
  LODWORD(__p[0]) = 6011;
  if (v7 >= v24)
  {
    v8 = sub_1004C05C0(&v22, __p, "com.apple.Music");
  }

  else
  {
    *v7 = 6011;
    sub_10000501C(v7 + 1, "com.apple.Music");
    v8 = v7 + 4;
  }

  v23 = v8;
  for (i = v22; i != v8; i = (v10 + 24))
  {
    v11 = *i;
    v10 = (i + 1);
    DataServiceController::hardcodeGenreApp(this, v11, v10, 1);
  }

  v25 = ((*this)[140])(this);
  if (*(*sub_100007DEC((this + 620), &v25) + 16) == 1)
  {
    v12 = 0;
    v13 = this + 624;
    do
    {
      v14 = off_101E50100[v12];
      sub_10000501C(__p, v14);
      v15 = sub_100007A6C((this + 623), __p);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      if (v13 != v15)
      {
        sub_10000501C(__p, v14);
        sub_10017695C(this + 644, __p, __p);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      ++v12;
    }

    while (v12 != 11);
    v16 = this[644];
    if (v16 != (this + 645))
    {
      do
      {
        if (v13 != sub_100007A6C((this + 623), v16 + 32))
        {
          DataServiceController::hardcodeGenreCallKitApp(this, v16 + 4);
        }

        v17 = v16[1];
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
            v18 = v16[2];
            v19 = *v18 == v16;
            v16 = v18;
          }

          while (!v19);
        }

        v16 = v18;
      }

      while (v18 != this + 645);
    }
  }

  __p[0] = &v22;
  sub_10001E200(__p);
}

void sub_1004B10F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17)
{
  __p = &a16;
  sub_10001E200(&__p);
  _Unwind_Resume(a1);
}

void DataServiceController::hardcodeGenreApp(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v23 = a2;
  if (a4)
  {
    v21 = 0;
    v22 = 0;
    v20 = &v21;
    v6 = *(a1 + 5056);
    v7 = (a1 + 5064);
    if (v6 != (a1 + 5064))
    {
      do
      {
        if (v6[4] != v23)
        {
          sub_1004C12FC(&v20, v6 + 4, v6 + 4);
        }

        v8 = v6[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v6[2];
            v10 = *v9 == v6;
            v6 = v9;
          }

          while (!v10);
        }

        v6 = v9;
      }

      while (v9 != v7);
      v11 = v20;
      if (v20 != &v21)
      {
        do
        {
          v18 = v11 + 4;
          v12 = sub_1004C5010(a1 + 5056, v11 + 4, &unk_101802C98, &v18);
          sub_1000727F0(v12 + 5, a3);
          v13 = v11[1];
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
              v14 = v11[2];
              v10 = *v14 == v11;
              v11 = v14;
            }

            while (!v10);
          }

          v11 = v14;
        }

        while (v14 != &v21);
      }
    }

    sub_10006DCAC(&v20, v21);
  }

  v20 = &v23;
  v15 = sub_1004C5010(a1 + 5056, &v23, &unk_101802C98, &v20);
  sub_100005BA0((v15 + 5), a3, a3);
  sub_1004C12FC(a1 + 5008, &v23, &v23);
  v21 = 0;
  v22 = 0;
  v20 = &v21;
  sub_1004C12FC(&v20, &v23, &v23);
  v18 = a3;
  v16 = sub_1004C2088((a1 + 4984), a3, &unk_101802C98, &v18, &v25);
  sub_1004B16B8((v16 + 7), &v20);
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  LODWORD(v25) = 100;
  do
  {
    sub_1004C50EC(&v18, &v25, &v25);
    LODWORD(v25) = v25 + 100;
  }

  while (v25 < 0x3E8);
  v25 = a3;
  v17 = sub_1004C2088((a1 + 4984), a3, &unk_101802C98, &v25, &v24);
  sub_1004B1718((v17 + 17), &v18);
  sub_10006DCAC(&v18, v19[0]);
  sub_10006DCAC(&v20, v21);
}

void sub_1004B13C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14)
{
  sub_10006DCAC(&a10, a11);
  sub_10006DCAC(&a13, a14);
  _Unwind_Resume(a1);
}

uint64_t *DataServiceController::hardcodeGenreCallKitApp(uint64_t a1, uint64_t ***a2)
{
  v19 = 9000;
  v16 = &v19;
  v4 = sub_1004C5010(a1 + 5056, &v19, &unk_101802C98, &v16);
  sub_100005BA0((v4 + 5), a2, a2);
  sub_1004C12FC(a1 + 5008, &v19, &v19);
  v16 = a2;
  if ((sub_1004C2088((a1 + 4984), a2, &unk_101802C98, &v16, &v21)[10] & 1) == 0)
  {
    v17 = 0;
    v18 = 0;
    v16 = &v17;
    v21 = a2;
    v5 = sub_1004C2088((a1 + 4984), a2, &unk_101802C98, &v21, &v20);
    sub_1004B1778((v5 + 7), &v16);
    sub_10006DCAC(&v16, v17);
  }

  v16 = a2;
  v6 = sub_1004C2088((a1 + 4984), a2, &unk_101802C98, &v16, &v21);
  if ((v6[10] & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1004C12FC((v6 + 7), &v19, &v19);
  v16 = a2;
  if ((sub_1004C2088((a1 + 4984), a2, &unk_101802C98, &v16, &v21)[20] & 1) == 0)
  {
    v17 = 0;
    v18 = 0;
    v16 = &v17;
    v21 = a2;
    v7 = sub_1004C2088((a1 + 4984), a2, &unk_101802C98, &v21, &v20);
    sub_1004B1778((v7 + 17), &v16);
    sub_10006DCAC(&v16, v17);
  }

  v8 = qword_101FBA3C0;
  if (qword_101FBA3C0 != &unk_101FBA3C8)
  {
    while (1)
    {
      v9 = *(v8 + 26);
      v16 = a2;
      v10 = sub_1004C2088((a1 + 4984), a2, &unk_101802C98, &v16, &v21);
      if ((v10[20] & 1) == 0)
      {
        break;
      }

      LODWORD(v16) = v9;
      sub_1004C50EC((v10 + 17), &v16, &v16);
      v11 = *(v8 + 8);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v8 + 16);
          v13 = *v12 == v8;
          v8 = v12;
        }

        while (!v13);
      }

      v8 = v12;
      if (v12 == &unk_101FBA3C8)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    sub_1000D1644();
  }

LABEL_14:
  v16 = a2;
  v14 = sub_1004C2088((a1 + 4984), a2, &unk_101802C98, &v16, &v21);
  if ((v14[20] & 1) == 0)
  {
    goto LABEL_16;
  }

  LODWORD(v16) = 0;
  return sub_1004C50EC((v14 + 17), &v16, &v16);
}

uint64_t sub_1004B16B8(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_1004C06CC(a1, *a2, a2 + 1);
    }
  }

  else
  {
    sub_1002B84C8(a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_1004B1718(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_1004C08D0(a1, *a2, a2 + 2);
    }
  }

  else
  {
    sub_1004C0AD4(a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_1004B1778(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_10004645C(a1, a2);
  }

  else
  {
    *a1 = *a2;
    v3 = a2 + 1;
    v4 = a2[1];
    *(a1 + 8) = v4;
    v5 = a1 + 8;
    v6 = a2[2];
    *(a1 + 16) = v6;
    if (v6)
    {
      *(v4 + 16) = v5;
      *a2 = v3;
      *v3 = 0;
      a2[2] = 0;
    }

    else
    {
      *a1 = v5;
    }

    *(a1 + 24) = 1;
  }

  return a1;
}

BOOL DataServiceController::checkSlicingDnnValidity_sync(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 8);
  }

  if (!v3)
  {
    return 1;
  }

  v20 = a2;
  v7 = *sub_100007DEC(a1 + 4960, &v20);
  v8 = (v7 + 256);
  v9 = strlen(kWildCardDnn);
  v10 = v9;
  v11 = *(v7 + 279);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = (v7 + 256);
    if (v10 != v11)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v9 == *(v7 + 264))
  {
    if (v9 == -1)
    {
      sub_10013C334();
    }

    v12 = *v8;
LABEL_10:
    if (memcmp(v12, kWildCardDnn, v10))
    {
      goto LABEL_11;
    }

    v21 = a2;
    v19 = sub_100007DEC(a1 + 4960, &v21);
    std::string::operator=((*v19 + 304), a3);
    return 1;
  }

LABEL_11:
  v13 = *(a3 + 23);
  if (v13 >= 0)
  {
    v14 = *(a3 + 23);
  }

  else
  {
    v14 = *(a3 + 8);
  }

  v15 = *(v7 + 264);
  if (v11 >= 0)
  {
    v15 = v11;
  }

  if (v14 != v15)
  {
    return 0;
  }

  if (v13 >= 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *a3;
  }

  if (v11 >= 0)
  {
    v17 = (v7 + 256);
  }

  else
  {
    v17 = *v8;
  }

  return memcmp(v16, v17, v14) == 0;
}

BOOL DataServiceController::validSlicingOsId_sync(uint64_t a1, int a2, void *a3)
{
  v10 = a2;
  v4 = sub_100007DEC(a1 + 4960, &v10);
  v5 = *v4;
  if (*(*v4 + 208) != 1)
  {
    return 1;
  }

  v6 = *(v5 + 209);
  v7 = *(v5 + 217);
  return *a3 == v6 && a3[1] == v7;
}

__n128 DataServiceController::slicingOsId_sync(uint64_t a1, int a2, __n128 *a3)
{
  v6 = a2;
  v4 = sub_100007DEC(a1 + 4960, &v6);
  if (*(*v4 + 208) == 1)
  {
    result = *(*v4 + 209);
    *a3 = result;
  }

  return result;
}

__n128 non-virtual thunk toDataServiceController::slicingOsId_sync(uint64_t a1, int a2, __n128 *a3)
{
  v6 = a2;
  v4 = sub_100007DEC(a1 + 4880, &v6);
  if (*(*v4 + 208) == 1)
  {
    result = *(*v4 + 209);
    *a3 = result;
  }

  return result;
}

BOOL DataServiceController::isAllowedAppOnAnySim(uint64_t a1, char *a2)
{
  v4 = *(a1 + 112);
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v9)
  {
    sub_100004A34(v9);
  }

  v5 = v10;
  if (v10 == v11)
  {
    return 0;
  }

  do
  {
    if (v12(*v5))
    {
      break;
    }

    ++v5;
  }

  while (v5 != v11);
  if (v5 == v11)
  {
    return 0;
  }

  while (1)
  {
    isAllowedApp = DataServiceController::isAllowedApp(a1, *v5, a2);
    if (isAllowedApp)
    {
      break;
    }

    v7 = isAllowedApp;
    do
    {
      ++v5;
    }

    while (v5 != v11 && (v12(*v5) & 1) == 0);
    if (v5 == v11)
    {
      return v7;
    }
  }

  return 1;
}

void sub_1004B1B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::isGoodAppCategory(uint64_t a1, int a2, unint64_t a3)
{
  v14 = a2;
  v5 = *sub_100007DEC(a1 + 4960, &v14);
  if (a3 == -1 && (*(a1 + 5346) & 1) != 0)
  {
    goto LABEL_13;
  }

  v6 = *(v5 + 336);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v5 + 336;
  v8 = v5 + 336;
  do
  {
    v9 = *(v6 + 32);
    v10 = v9 >= a3;
    v11 = v9 < a3;
    if (v10)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * v11);
  }

  while (v6);
  if (v8 == v7 || *(v8 + 32) > a3 || !*(v8 + 44))
  {
LABEL_13:
    v12 = 1;
  }

  else
  {
    v12 = *(v8 + 40);
  }

  return v12 & 1;
}

void DataServiceController::dumpSliceData_sync(DataServiceController *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ========== Slicing: ==========", buf, 2u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asStringBool(*(this + 5348));
    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: internalOrCarrierBuild: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (*(*this + 1120))(this);
    v5 = (*(*this + 1120))(this);
    v6 = (*(*this + 1120))(this);
    v7 = (*(*this + 1064))(this, v6);
    v269 = 0;
    v8 = DataServiceController::SlicesDataContainer::configured(this + 4960, v4, v5, v7, v268);
    v9 = asStringBool(v8);
    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: configured(1): %s", buf, 0xCu);
    sub_100007E44(v268);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = asStringBool(*(this + 5224));
    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: managedConfigObserverRegistered=%s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = asStringBool(*(this + 5225));
    *buf = 136315138;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: appObserverRegistered=%s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = asStringBool();
    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: activeSliceStatus: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = asStringBool(*(this + 657) != 0);
    *buf = 136446210;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: vpnManager: %{public}s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = asStringBool(*(this + 5272));
    *buf = 136315138;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: vpnActive: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = asStringBool(*(this + 5273));
    *buf = 136315138;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: vpnUsesPolicyBasedRouting: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = asStringBool(*(this + 663) != 0);
    *buf = 136446210;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: terminusAvailabilityManager: %{public}s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v17 = asStringBool(*(this + 5320));
    *buf = 136315138;
    *&buf[4] = v17;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: vrConnected: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v18 = asStringBool(*(this + 5344));
    *buf = 136315138;
    *&buf[4] = v18;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ftCallStarting: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v19 = asStringBool(*(this + 5345));
    *buf = 136315138;
    *&buf[4] = v19;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ftCallActive: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(this + 1307);
    *buf = 67109120;
    *&buf[4] = v20;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: screenLockRegToken: %d", buf, 8u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(this + 1308);
    *buf = 67109120;
    *&buf[4] = v21;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: slicingLLPHSStateNotifyToken: %d", buf, 8u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(this + 1309);
    *buf = 67109120;
    *&buf[4] = v22;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: slicingLLPHSStateNotifyTokenSecure: %d", buf, 8u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(this + 1310);
    *buf = 67109120;
    *&buf[4] = v23;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: slicingInterfacesActiveStateNotifyToken: %d", buf, 8u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(this + 1311);
    *buf = 67109120;
    *&buf[4] = v24;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: slicingInterfacesActiveStateNotifyTokenSecure: %d", buf, 8u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v25 = asStringBool(*(this + 5346));
    *buf = 136315138;
    *&buf[4] = v25;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: supervisedDevice: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v26 = asStringBool(*(this + 5347));
    *buf = 136315138;
    *&buf[4] = v26;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: managedDevice: %s", buf, 0xCu);
  }

  v27 = *(this + 635);
  if (v27 && v27[2])
  {
    v28 = *(this + 5);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I DATA:: genreNames:", buf, 2u);
      v27 = *(this + 635);
    }

    v31 = *v27;
    v29 = v27 + 1;
    v30 = v31;
    if (v31 != v29)
    {
      do
      {
        v32 = *(this + 5);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = v30 + 5;
          if (*(v30 + 63) < 0)
          {
            v33 = *v33;
          }

          v34 = v30[4];
          *buf = 134218242;
          *&buf[4] = v34;
          *&buf[12] = 2080;
          *&buf[14] = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t%lu\t%s", buf, 0x16u);
        }

        v35 = v30[1];
        if (v35)
        {
          do
          {
            v36 = v35;
            v35 = *v35;
          }

          while (v35);
        }

        else
        {
          do
          {
            v36 = v30[2];
            v37 = *v36 == v30;
            v30 = v36;
          }

          while (!v37);
        }

        v30 = v36;
      }

      while (v36 != v29);
    }
  }

  if (*(this + 673))
  {
    v38 = *(this + 5);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I DATA:: internalSliceAppCategory:", buf, 2u);
    }

    v39 = *(this + 671);
    if (v39 != (this + 5376))
    {
      do
      {
        v40 = *(this + 5);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = (v39 + 48);
          if (*(v39 + 71) < 0)
          {
            v41 = *v41;
          }

          v42 = (v39 + 72);
          if (*(v39 + 95) < 0)
          {
            v42 = *v42;
          }

          v43 = (v39 + 96);
          if (*(v39 + 119) < 0)
          {
            v43 = *v43;
          }

          v44 = *(v39 + 8);
          v45 = *(v39 + 5);
          *buf = 67110146;
          *&buf[4] = v44;
          *&buf[8] = 2082;
          *&buf[10] = v41;
          *&buf[18] = 2082;
          *&buf[20] = v42;
          *&buf[28] = 2082;
          *&buf[30] = v43;
          v266 = 2048;
          v267 = v45;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tpid=%d procName=%{public}s bundleId=%{public}s uuid=%{public}s category=%llu", buf, 0x30u);
        }

        v46 = *(v39 + 1);
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
            v47 = *(v39 + 2);
            v37 = *v47 == v39;
            v39 = v47;
          }

          while (!v37);
        }

        v39 = v47;
      }

      while (v47 != (this + 5376));
    }
  }

  v48 = *(this + 623);
  if (v48 != (this + 4992))
  {
    do
    {
      v49 = *(this + 5);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = v48 + 32;
        if (*(v48 + 55) < 0)
        {
          v50 = *(v48 + 4);
        }

        *buf = 136446210;
        *&buf[4] = v50;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I DATA:: \tapp: %{public}s", buf, 0xCu);
        v49 = *(this + 5);
      }

      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v51 = (*(*this + 2448))(this, v48 + 32);
        v52 = asStringBool(v51);
        *buf = 136446210;
        *&buf[4] = v52;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I DATA::     \treadCallKitApp: %{public}s", buf, 0xCu);
      }

      if (*(v48 + 128) == 1)
      {
        v53 = *(this + 5);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = rest::asString();
          if ((*(v48 + 128) & 1) == 0)
          {
            sub_1000D1644();
          }

          v55 = *(v48 + 31);
          *buf = 136315394;
          *&buf[4] = v54;
          *&buf[12] = 1024;
          *&buf[14] = v55;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tappRunningStatus: %s (%d)", buf, 0x12u);
        }
      }

      if (*(v48 + 121) == 1)
      {
        v56 = *(this + 5);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = asStringBool(*(v48 + 120));
          *buf = 136315138;
          *&buf[4] = v57;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tappsBackgroundNetworkMode: %s", buf, 0xCu);
        }
      }

      if (*(v48 + 112) == 1)
      {
        v58 = *(this + 5);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tappUUids:", buf, 2u);
          if ((*(v48 + 112) & 1) == 0)
          {
            sub_1000D1644();
          }
        }

        v59 = *(v48 + 11);
        if (v59 != (v48 + 96))
        {
          do
          {
            v60 = *(this + 5);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v61 = v59 + 4;
              if (*(v59 + 55) < 0)
              {
                v61 = *v61;
              }

              *buf = 136446210;
              *&buf[4] = v61;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I DATA::     \t\tuuid %{public}s", buf, 0xCu);
            }

            v62 = v59[1];
            if (v62)
            {
              do
              {
                v63 = v62;
                v62 = *v62;
              }

              while (v62);
            }

            else
            {
              do
              {
                v63 = v59[2];
                v37 = *v63 == v59;
                v59 = v63;
              }

              while (!v37);
            }

            v59 = v63;
          }

          while (v63 != (v48 + 96));
        }
      }

      if (*(v48 + 80) == 1)
      {
        v64 = *(v48 + 7);
        if (v64 != (v48 + 64))
        {
          do
          {
            v65 = *(this + 5);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              v66 = v64[4];
              *buf = 134217984;
              *&buf[4] = v66;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tgenre: %llu", buf, 0xCu);
            }

            v67 = v64[1];
            if (v67)
            {
              do
              {
                v68 = v67;
                v67 = *v67;
              }

              while (v67);
            }

            else
            {
              do
              {
                v68 = v64[2];
                v37 = *v68 == v64;
                v64 = v68;
              }

              while (!v37);
            }

            v64 = v68;
          }

          while (v68 != (v48 + 64));
        }
      }

      if (*(v48 + 160) == 1)
      {
        v69 = *(v48 + 17);
        if (v69 != (v48 + 144))
        {
          do
          {
            v70 = *(this + 5);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v71 = *(v69 + 7);
              *buf = 134217984;
              *&buf[4] = v71;
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#I DATA::     \ttrafficClass: %lu", buf, 0xCu);
            }

            v72 = v69[1];
            if (v72)
            {
              do
              {
                v73 = v72;
                v72 = *v72;
              }

              while (v72);
            }

            else
            {
              do
              {
                v73 = v69[2];
                v37 = *v73 == v69;
                v69 = v73;
              }

              while (!v37);
            }

            v69 = v73;
          }

          while (v73 != (v48 + 144));
        }
      }

      v74 = *(v48 + 1);
      if (v74)
      {
        do
        {
          v75 = v74;
          v74 = *v74;
        }

        while (v74);
      }

      else
      {
        do
        {
          v75 = *(v48 + 2);
          v37 = *v75 == v48;
          v48 = v75;
        }

        while (!v37);
      }

      v48 = v75;
    }

    while (v75 != (this + 4992));
  }

  if ((*(this + 5120) & 1) != 0 && *(this + 638) != *(this + 637))
  {
    v76 = *(this + 5);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "#I DATA::     appsInfo:", buf, 2u);
      if ((*(this + 5120) & 1) == 0)
      {
        sub_1000D1644();
      }
    }

    v77 = *(this + 637);
    for (i = *(this + 638); v77 != i; v77 += 7)
    {
      if (DataServiceController::isAllowedAppOnAnySim(this, v77))
      {
        v78 = *(this + 5);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          v79 = v77;
          if (*(v77 + 23) < 0)
          {
            v79 = *v77;
          }

          v80 = asStringBool(*(v77 + 24));
          *buf = 136446466;
          *&buf[4] = v79;
          *&buf[12] = 2080;
          *&buf[14] = v80;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tbundleId: %{public}s foreground: %s", buf, 0x16u);
        }

        v82 = v77[4];
        v81 = v77[5];
        while (v82 != v81)
        {
          v83 = *(this + 5);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v84 = v82;
            if (*(v82 + 23) < 0)
            {
              v84 = *v82;
            }

            *buf = 136446210;
            *&buf[4] = v84;
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tinterface: %{public}s", buf, 0xCu);
          }

          v85 = v82[3];
          if (v85 != v82 + 4)
          {
            do
            {
              v86 = *(this + 5);
              if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
              {
                TrafficDescriptor::toString(buf, (v85 + 4));
                v87 = buf[23] >= 0 ? buf : *buf;
                LODWORD(v263) = 136446210;
                *(&v263 + 4) = v87;
                _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#I DATA::     \t\ttd: %{public}s", &v263, 0xCu);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              v88 = v85[1];
              if (v88)
              {
                do
                {
                  v89 = v88;
                  v88 = *v88;
                }

                while (v88);
              }

              else
              {
                do
                {
                  v89 = v85[2];
                  v37 = *v89 == v85;
                  v85 = v89;
                }

                while (!v37);
              }

              v85 = v89;
            }

            while (v89 != v82 + 4);
          }

          v82 += 6;
        }
      }
    }
  }

  v90 = *(this + 5);
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "#I DATA:: genres vs apps:", buf, 2u);
  }

  v91 = *(this + 632);
  if (v91 != (this + 5064))
  {
    do
    {
      v92 = *(this + 5);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        v93 = *(v91 + 4);
        *buf = 134217984;
        *&buf[4] = v93;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "#I DATA::       \t\tgenre %llu", buf, 0xCu);
      }

      v94 = *(v91 + 5);
      if (v94 != (v91 + 48))
      {
        do
        {
          v95 = *(this + 5);
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            v96 = v94 + 4;
            if (*(v94 + 55) < 0)
            {
              v96 = *v96;
            }

            *buf = 136446210;
            *&buf[4] = v96;
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "#I DATA::       \t\t\tapp %{public}s", buf, 0xCu);
          }

          v97 = v94[1];
          if (v97)
          {
            do
            {
              v98 = v97;
              v97 = *v97;
            }

            while (v97);
          }

          else
          {
            do
            {
              v98 = v94[2];
              v37 = *v98 == v94;
              v94 = v98;
            }

            while (!v37);
          }

          v94 = v98;
        }

        while (v98 != (v91 + 48));
      }

      v99 = *(v91 + 1);
      if (v99)
      {
        do
        {
          v100 = v99;
          v99 = *v99;
        }

        while (v99);
      }

      else
      {
        do
        {
          v100 = *(v91 + 2);
          v37 = *v100 == v91;
          v91 = v100;
        }

        while (!v37);
      }

      v91 = v100;
    }

    while (v100 != (this + 5064));
  }

  v101 = *(this + 5);
  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "#I DATA:: all local apps genres:", buf, 2u);
  }

  v102 = *(this + 626);
  if (v102 != (this + 5016))
  {
    do
    {
      v103 = *(this + 5);
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        v104 = *(v102 + 4);
        *buf = 134217984;
        *&buf[4] = v104;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "#I DATA::       \t\tgenre %llu", buf, 0xCu);
      }

      v105 = *(v102 + 1);
      if (v105)
      {
        do
        {
          v106 = v105;
          v105 = *v105;
        }

        while (v105);
      }

      else
      {
        do
        {
          v106 = *(v102 + 2);
          v37 = *v106 == v102;
          v102 = v106;
        }

        while (!v37);
      }

      v102 = v106;
    }

    while (v106 != (this + 5016));
  }

  v107 = *(this + 5);
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "#I DATA:: slicing genres:", buf, 2u);
  }

  v108 = *(this + 629);
  if (v108 != (this + 5040))
  {
    do
    {
      v109 = *(this + 5);
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        v110 = *(v108 + 4);
        *buf = 134217984;
        *&buf[4] = v110;
        _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I DATA::       \t\tgenre %llu", buf, 0xCu);
      }

      v111 = *(v108 + 1);
      if (v111)
      {
        do
        {
          v112 = v111;
          v111 = *v111;
        }

        while (v111);
      }

      else
      {
        do
        {
          v112 = *(v108 + 2);
          v37 = *v112 == v108;
          v108 = v112;
        }

        while (!v37);
      }

      v108 = v112;
    }

    while (v112 != (this + 5040));
  }

  v113 = *(this + 5);
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "#I DATA:: frontApps:", buf, 2u);
  }

  v114 = *(this + 142);
  for (j = *(this + 143); v114 != j; v114 += 3)
  {
    v116 = *(this + 5);
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      v117 = v114;
      if (*(v114 + 23) < 0)
      {
        v117 = *v114;
      }

      *buf = 136446210;
      *&buf[4] = v117;
      _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tapp: %{public}s", buf, 0xCu);
    }
  }

  if (*(this + 643))
  {
    v118 = *(this + 5);
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I DATA:: Rogue Apps:", buf, 2u);
    }

    v119 = *(this + 641);
    if (v119 != (this + 5136))
    {
      do
      {
        v120 = *(this + 5);
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          v121 = (v119 + 32);
          if (*(v119 + 55) < 0)
          {
            v121 = *v121;
          }

          *buf = 136446210;
          *&buf[4] = v121;
          _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tapp: %{public}s", buf, 0xCu);
        }

        v122 = *(v119 + 1);
        if (v122)
        {
          do
          {
            v123 = v122;
            v122 = *v122;
          }

          while (v122);
        }

        else
        {
          do
          {
            v123 = *(v119 + 2);
            v37 = *v123 == v119;
            v119 = v123;
          }

          while (!v37);
        }

        v119 = v123;
      }

      while (v123 != (this + 5136));
    }
  }

  if (*(this + 646))
  {
    v124 = *(this + 5);
    if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "#I DATA:: CallKit Apps:", buf, 2u);
    }

    v125 = *(this + 644);
    if (v125 != (this + 5160))
    {
      do
      {
        v126 = *(this + 5);
        if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
        {
          v127 = (v125 + 32);
          if (*(v125 + 55) < 0)
          {
            v127 = *v127;
          }

          *buf = 136446210;
          *&buf[4] = v127;
          _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tapp: %{public}s", buf, 0xCu);
        }

        v128 = *(v125 + 1);
        if (v128)
        {
          do
          {
            v129 = v128;
            v128 = *v128;
          }

          while (v128);
        }

        else
        {
          do
          {
            v129 = *(v125 + 2);
            v37 = *v129 == v125;
            v125 = v129;
          }

          while (!v37);
        }

        v125 = v129;
      }

      while (v129 != (this + 5160));
    }
  }

  if (*(this + 652))
  {
    v130 = *(this + 5);
    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "#I DATA:: Forwarded Apps:", buf, 2u);
    }

    v131 = *(this + 650);
    if (v131 != (this + 5208))
    {
      do
      {
        v132 = *(this + 5);
        if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
        {
          v133 = (v131 + 32);
          if (*(v131 + 55) < 0)
          {
            v133 = *v133;
          }

          v134 = ((std::chrono::steady_clock::now().__d_.__rep_ - *(v131 + 7)) * 0x112E0BE826D694B3) >> 64;
          *buf = 136446466;
          *&buf[4] = v133;
          *&buf[12] = 2048;
          *&buf[14] = (v134 >> 26) + (v134 >> 63);
          _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tapp: %{public}s timestamp: %llu secs old", buf, 0x16u);
        }

        v135 = *(v131 + 1);
        if (v135)
        {
          do
          {
            v136 = v135;
            v135 = *v135;
          }

          while (v135);
        }

        else
        {
          do
          {
            v136 = *(v131 + 2);
            v37 = *v136 == v131;
            v131 = v136;
          }

          while (!v37);
        }

        v131 = v136;
      }

      while (v136 != (this + 5208));
    }
  }

  if (*(this + 662))
  {
    v137 = *(this + 5);
    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "#I DATA:: vpnAgnosticApps:", buf, 2u);
    }

    v138 = *(this + 660);
    if (v138 != (this + 5288))
    {
      do
      {
        v139 = *(this + 5);
        if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
        {
          v140 = (v138 + 32);
          if (*(v138 + 55) < 0)
          {
            v140 = *v140;
          }

          *buf = 136315138;
          *&buf[4] = v140;
          _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t%s", buf, 0xCu);
        }

        v141 = *(v138 + 1);
        if (v141)
        {
          do
          {
            v142 = v141;
            v141 = *v141;
          }

          while (v141);
        }

        else
        {
          do
          {
            v142 = *(v138 + 2);
            v37 = *v142 == v138;
            v138 = v142;
          }

          while (!v37);
        }

        v138 = v142;
      }

      while (v142 != (this + 5288));
    }
  }

  v143 = *(this + 14);
  *buf = *(this + 13);
  *&buf[8] = v143;
  if (v143)
  {
    atomic_fetch_add_explicit((v143 + 8), 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v255 = *(&v263 + 1);
  v144 = v263;
  if (v263 != *(&v263 + 1))
  {
    v254 = v264;
    do
    {
      if (v254(*v144))
      {
        break;
      }

      ++v144;
    }

    while (v144 != v255);
    v252 = *(&v263 + 1);
    while (v144 != v252)
    {
      v145 = *v144;
      v146 = *(this + 5);
      if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
      {
        v147 = subscriber::asString();
        *buf = 136315138;
        *&buf[4] = v147;
        _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "#I DATA::     ---------------- simSlot: %s ----------------", buf, 0xCu);
      }

      *buf = v145;
      v148 = *sub_100007DEC(this + 4960, buf);
      *buf = off_101E50788;
      *&buf[8] = this;
      *&buf[16] = v145;
      *&buf[20] = 0;
      *&buf[24] = buf;
      v149 = *(this + 5);
      if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
      {
        sub_1001058C4(v260, buf);
        SlicingSupportInfo = DataServiceController::getSlicingSupportInfo(this, v145, v260);
        v151 = asStringBool(SlicingSupportInfo & 1);
        *v261 = 136315138;
        v262 = v151;
        _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "#I DATA::     getSlicingSupportInfo: %s", v261, 0xCu);
        sub_100007E44(v260);
      }

      sub_100007E44(buf);
      v152 = *(this + 5);
      v256 = v148;
      v253 = v253 & 0xFFFFFFFF00000000 | v145;
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v153 = *(this + 673) != 0;
        v154 = (*(*this + 1064))(this, v145);
        v259 = 0;
        v155 = sub_1004B08C8(v256, v153, v154, v258);
        v156 = asStringBool(v155);
        *buf = 136315138;
        *&buf[4] = v156;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     configured(2): %s", buf, 0xCu);
        sub_100007E44(v258);
        v152 = *(this + 5);
        v148 = v256;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v157 = (*(*this + 2272))(this, v145, 0);
        v158 = asStringBool(v157);
        *buf = 136315138;
        *&buf[4] = v158;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     useInternetSlicing_sync: %s", buf, 0xCu);
        v152 = *(this + 5);
        v148 = v256;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v159 = asStringBool(*v148);
        *buf = 136315138;
        *&buf[4] = v159;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     enabled: %s", buf, 0xCu);
        v152 = *(this + 5);
        v148 = v256;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v160 = asStringBool(*(v148 + 1));
        *buf = 136315138;
        *&buf[4] = v160;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     managedApps: %s", buf, 0xCu);
        v152 = *(this + 5);
        v148 = v256;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v161 = asStringBool(*(v148 + 2));
        *buf = 136315138;
        *&buf[4] = v161;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     managedSliceApps: %s", buf, 0xCu);
        v152 = *(this + 5);
        v148 = v256;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v162 = asStringBool(*(v148 + 21));
        *buf = 136315138;
        *&buf[4] = v162;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     wifiSupported: %s", buf, 0xCu);
        v152 = *(this + 5);
        v148 = v256;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v163 = asStringBool(*(v148 + 23));
        *buf = 136315138;
        *&buf[4] = v163;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     entitlementsGenres: %s", buf, 0xCu);
        v152 = *(this + 5);
        v148 = v256;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v164 = asStringBool(*(v148 + 22));
        *buf = 136315138;
        *&buf[4] = v164;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     shutdownOnDataModeChange: %s", buf, 0xCu);
        v152 = *(this + 5);
        v148 = v256;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v165 = asStringBool(*(v148 + 24));
        *buf = 136315138;
        *&buf[4] = v165;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     allowSocketAPIWithTrafficClasses: %s", buf, 0xCu);
        v152 = *(this + 5);
        v148 = v256;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v166 = *(v148 + 4);
        *buf = 67109120;
        *&buf[4] = v166;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     technologyMask: %u", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v167 = *(v148 + 8);
        *buf = 67109120;
        *&buf[4] = v167;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     sliceInactivityTimeoutSecs: %u", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v168 = *(v148 + 12);
        *buf = 67109120;
        *&buf[4] = v168;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     supportsLLPHS: %{BOOL}d", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v169 = *(v148 + 13);
        *buf = 67109120;
        *&buf[4] = v169;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     entitledLLPHS: %{BOOL}d", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v170 = *(v148 + 14);
        *buf = 67109120;
        *&buf[4] = v170;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     ignoreEntitledLLPHS: %{BOOL}d", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v171 = *(v148 + 15);
        *buf = 67109120;
        *&buf[4] = v171;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     supportsConsumer: %{BOOL}d", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v172 = *(v148 + 16);
        *buf = 67109120;
        *&buf[4] = v172;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     supportsCallKit: %{BOOL}d", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v173 = *(v148 + 17);
        *buf = 67109120;
        *&buf[4] = v173;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     forceCallKitUdp: %{BOOL}d", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v174 = *(v148 + 18);
        *buf = 67109120;
        *&buf[4] = v174;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     forcePoliciesDown: %{BOOL}d", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v175 = *(v148 + 19);
        *buf = 67109120;
        *&buf[4] = v175;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     internationalRoaming: %{BOOL}d", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v176 = *(v148 + 20);
        *buf = 67109120;
        *&buf[4] = v176;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     useOnlyXRForLLPHS: %{BOOL}d", buf, 8u);
      }

      if (*(v148 + 200))
      {
        v177 = *(this + 5);
        if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v177, OS_LOG_TYPE_DEFAULT, "#I DATA:: \tcbConfiguredVpnAgnosticApps:", buf, 2u);
        }

        v178 = *(v148 + 184);
        if (v178 != (v148 + 192))
        {
          do
          {
            v179 = *(this + 5);
            if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
            {
              v180 = v178 + 4;
              if (*(v178 + 55) < 0)
              {
                v180 = *v180;
              }

              *buf = 136315138;
              *&buf[4] = v180;
              _os_log_impl(&_mh_execute_header, v179, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t%s", buf, 0xCu);
            }

            v181 = v178[1];
            if (v181)
            {
              do
              {
                v182 = v181;
                v181 = *v181;
              }

              while (v181);
            }

            else
            {
              do
              {
                v182 = v178[2];
                v37 = *v182 == v178;
                v178 = v182;
              }

              while (!v37);
            }

            v178 = v182;
          }

          while (v182 != (v148 + 192));
        }
      }

      v183 = *(v148 + 328);
      v184 = (v148 + 336);
      if (v183 != v184)
      {
        do
        {
          v185 = *(this + 5);
          if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
          {
            v186 = v183[4];
            v187 = asStringBool(*(v183 + 40));
            v188 = asString();
            *buf = 134218498;
            *&buf[4] = v186;
            *&buf[12] = 2082;
            *&buf[14] = v187;
            *&buf[22] = 2082;
            *&buf[24] = v188;
            _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "#I DATA::     featureState: genre=%llu %{public}s / %{public}s", buf, 0x20u);
          }

          v189 = v183[1];
          if (v189)
          {
            do
            {
              v190 = v189;
              v189 = *v189;
            }

            while (v189);
          }

          else
          {
            do
            {
              v190 = v183[2];
              v37 = *v190 == v183;
              v183 = v190;
            }

            while (!v37);
          }

          v183 = v190;
        }

        while (v190 != v184);
      }

      v191 = *(v256 + 32);
      v192 = *(v256 + 40);
      if (v191 != v192)
      {
        v193 = *(this + 5);
        if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_DEFAULT, "#I DATA::     cbTrafficDescriptors:", buf, 2u);
          v191 = *(v256 + 32);
          v192 = *(v256 + 40);
        }

        while (v191 != v192)
        {
          v194 = *(this + 5);
          if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
          {
            TrafficDescriptor::toString(buf, v191);
            v195 = buf;
            if (buf[23] < 0)
            {
              v195 = *buf;
            }

            *v261 = 136446210;
            v262 = v195;
            _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_DEFAULT, "#I DATA::     \ttd(cb) %{public}s", v261, 0xCu);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          v191 = (v191 + 304);
        }
      }

      v196 = *(v256 + 56);
      v197 = *(v256 + 64);
      if (v196 != v197)
      {
        v198 = *(this + 5);
        if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_DEFAULT, "#I DATA::     tdsCache:", buf, 2u);
          v196 = *(v256 + 56);
          v197 = *(v256 + 64);
        }

        while (v196 != v197)
        {
          v199 = *(this + 5);
          if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
          {
            TrafficDescriptor::toString(buf, v196);
            v200 = buf;
            if (buf[23] < 0)
            {
              v200 = *buf;
            }

            *v261 = 136446210;
            v262 = v200;
            _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "#I DATA::     \ttd(cache) %{public}s", v261, 0xCu);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          v196 = (v196 + 304);
        }
      }

      if (*(v256 + 96))
      {
        v201 = *(this + 5);
        if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, "#I DATA::     customAppCategories:", buf, 2u);
        }

        v202 = *(v256 + 80);
        if (v202 != (v256 + 88))
        {
          do
          {
            v203 = *(this + 5);
            if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
            {
              v204 = v202 + 5;
              if (*(v202 + 63) < 0)
              {
                v204 = *v204;
              }

              v205 = v202[4];
              *buf = 134218242;
              *&buf[4] = v205;
              *&buf[12] = 2082;
              *&buf[14] = v204;
              _os_log_impl(&_mh_execute_header, v203, OS_LOG_TYPE_DEFAULT, "#I DATA::     \t%llu %{public}s", buf, 0x16u);
            }

            v206 = v202[8];
            v207 = v202[9];
            while (v206 != v207)
            {
              v208 = *(this + 5);
              if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
              {
                v209 = v206;
                if (*(v206 + 23) < 0)
                {
                  v209 = *v206;
                }

                *buf = 136446210;
                *&buf[4] = v209;
                _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_DEFAULT, "#I DATA::     \t\tapp: %{public}s", buf, 0xCu);
              }

              v206 += 3;
            }

            v210 = v202[11];
            v211 = v202[12];
            while (v210 != v211)
            {
              v212 = *(this + 5);
              if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
              {
                v213 = *v210;
                *buf = 134217984;
                *&buf[4] = v213;
                _os_log_impl(&_mh_execute_header, v212, OS_LOG_TYPE_DEFAULT, "#I DATA::     \t\tac: %llu", buf, 0xCu);
              }

              ++v210;
            }

            v214 = v202[1];
            if (v214)
            {
              do
              {
                v215 = v214;
                v214 = *v214;
              }

              while (v214);
            }

            else
            {
              do
              {
                v215 = v202[2];
                v37 = *v215 == v202;
                v202 = v215;
              }

              while (!v37);
            }

            v202 = v215;
          }

          while (v215 != (v256 + 88));
        }
      }

      v216 = *(this + 5);
      if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
      {
        v217 = asStringBool(*(v256 + 128));
        *buf = 136315138;
        *&buf[4] = v217;
        _os_log_impl(&_mh_execute_header, v216, OS_LOG_TYPE_DEFAULT, "#I DATA::     allowedAppsAll: %s", buf, 0xCu);
      }

      if (*(v256 + 120))
      {
        v218 = *(this + 5);
        if (os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v218, OS_LOG_TYPE_DEFAULT, "#I DATA::     allowedApps:", buf, 2u);
        }

        v219 = *(v256 + 104);
        if (v219 != (v256 + 112))
        {
          do
          {
            v220 = *(this + 5);
            if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
            {
              v221 = v219 + 4;
              if (*(v219 + 55) < 0)
              {
                v221 = *v221;
              }

              *buf = 136446210;
              *&buf[4] = v221;
              _os_log_impl(&_mh_execute_header, v220, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tapp: %{public}s", buf, 0xCu);
            }

            v222 = v219[1];
            if (v222)
            {
              do
              {
                v223 = v222;
                v222 = *v222;
              }

              while (v222);
            }

            else
            {
              do
              {
                v223 = v219[2];
                v37 = *v223 == v219;
                v219 = v223;
              }

              while (!v37);
            }

            v219 = v223;
          }

          while (v223 != (v256 + 112));
        }
      }

      if (*(v256 + 152))
      {
        v224 = *(this + 5);
        if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v224, OS_LOG_TYPE_DEFAULT, "#I DATA::     managedAllowedApps:", buf, 2u);
        }

        v225 = *(v256 + 136);
        if (v225 != (v256 + 144))
        {
          do
          {
            v226 = *(this + 5);
            if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
            {
              v227 = v225 + 4;
              if (*(v225 + 55) < 0)
              {
                v227 = *v227;
              }

              v228 = v225 + 10;
              if (*(v225 + 103) < 0)
              {
                v228 = *v228;
              }

              v229 = v225 + 7;
              if (*(v225 + 79) < 0)
              {
                v229 = *v229;
              }

              *buf = 136446722;
              *&buf[4] = v227;
              *&buf[12] = 2082;
              *&buf[14] = v228;
              *&buf[22] = 2082;
              *&buf[24] = v229;
              _os_log_impl(&_mh_execute_header, v226, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tapp: %{public}s, dnn: %{public}s, fakeAppCategory: %{public}s", buf, 0x20u);
            }

            v230 = v225[1];
            if (v230)
            {
              do
              {
                v231 = v230;
                v230 = *v230;
              }

              while (v230);
            }

            else
            {
              do
              {
                v231 = v225[2];
                v37 = *v231 == v225;
                v225 = v231;
              }

              while (!v37);
            }

            v225 = v231;
          }

          while (v231 != (v256 + 144));
        }
      }

      if (*(v256 + 176))
      {
        v232 = *(this + 5);
        if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v232, OS_LOG_TYPE_DEFAULT, "#I DATA::     fakeAppCategorys:", buf, 2u);
        }

        v233 = *(v256 + 160);
        if (v233 != (v256 + 168))
        {
          do
          {
            v234 = *(this + 5);
            if (os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
            {
              v235 = v233 + 4;
              if (*(v233 + 55) < 0)
              {
                v235 = *v235;
              }

              *buf = 136446210;
              *&buf[4] = v235;
              _os_log_impl(&_mh_execute_header, v234, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tfake app category: %{public}s", buf, 0xCu);
            }

            v236 = v233[1];
            if (v236)
            {
              do
              {
                v237 = v236;
                v236 = *v236;
              }

              while (v236);
            }

            else
            {
              do
              {
                v237 = v233[2];
                v37 = *v237 == v233;
                v233 = v237;
              }

              while (!v37);
            }

            v233 = v237;
          }

          while (v237 != (v256 + 168));
        }
      }

      if (*(v256 + 208) == 1)
      {
        v238 = *(v256 + 255);
        if (v238 < 0)
        {
          v239 = *(v256 + 240);
        }

        else
        {
          v239 = *(v256 + 255);
        }

        v240 = *(this + 5);
        if (v239 && os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
        {
          v241 = (v256 + 232);
          if ((v238 & 0x80000000) != 0)
          {
            v241 = *v241;
          }

          *buf = 136446210;
          *&buf[4] = v241;
          _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_DEFAULT, "#I DATA::     osId(str): %{public}s", buf, 0xCu);
          v240 = *(this + 5);
        }

        if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_DEFAULT, "#I DATA::     osId:", buf, 2u);
        }

        for (k = 0; k != 16; ++k)
        {
          v243 = *(this + 5);
          if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
          {
            v244 = *(v256 + 209 + k);
            *buf = 67109120;
            *&buf[4] = v244;
            _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tosId 0x%x", buf, 8u);
          }
        }
      }

      v245 = *(v256 + 279);
      if (v245 < 0)
      {
        if (!*(v256 + 264))
        {
          goto LABEL_464;
        }
      }

      else if (!*(v256 + 279))
      {
        goto LABEL_464;
      }

      v246 = *(this + 5);
      if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
      {
        v247 = (v256 + 256);
        if ((v245 & 0x80000000) != 0)
        {
          v247 = *v247;
        }

        *buf = 136446210;
        *&buf[4] = v247;
        _os_log_impl(&_mh_execute_header, v246, OS_LOG_TYPE_DEFAULT, "#I DATA::     dnn: %{public}s", buf, 0xCu);
        v246 = *(this + 5);
      }

      if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
      {
        v248 = (v256 + 304);
        if (*(v256 + 327) < 0)
        {
          v248 = *v248;
        }

        *buf = 136446210;
        *&buf[4] = v248;
        _os_log_impl(&_mh_execute_header, v246, OS_LOG_TYPE_DEFAULT, "#I DATA::     anyLookupDnn: %{public}s", buf, 0xCu);
      }

LABEL_464:
      v249 = *(v256 + 303);
      if (v249 < 0)
      {
        if (*(v256 + 288))
        {
LABEL_468:
          v250 = *(this + 5);
          if (os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
          {
            v251 = (v256 + 280);
            if ((v249 & 0x80000000) != 0)
            {
              v251 = *v251;
            }

            *buf = 136446210;
            *&buf[4] = v251;
            _os_log_impl(&_mh_execute_header, v250, OS_LOG_TYPE_DEFAULT, "#I DATA::     apn: %{public}s", buf, 0xCu);
          }

          goto LABEL_472;
        }
      }

      else if (*(v256 + 303))
      {
        goto LABEL_468;
      }

      do
      {
LABEL_472:
        ++v144;
      }

      while (v144 != v255 && (v254(*v144) & 1) == 0);
    }
  }
}

void sub_1004B4730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v35 = *(v33 - 184);
  if (v35)
  {
    sub_100004A34(v35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::getSlicingSupportInfo(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  v6 = *sub_100007DEC((a1 + 4960), &v14);
  v7 = (*(*a1 + 1120))(a1);
  v8 = (*(*a1 + 1064))(a1, a2);
  sub_1001058C4(v15, a3);
  v9 = DataServiceController::SlicesDataContainer::configured((a1 + 4960), a2, v7, v8, v15);
  sub_100007E44(v15);
  if (!v9)
  {
    v11 = 0;
    v10 = 0;
LABEL_11:
    v12 = 0;
    return v11 | v10 | v12 | v9;
  }

  if ((v6[1] & 1) != 0 || v6[2] == 1)
  {
    v10 = a1[5347] << 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[15] << 16;
  if (v6[12] != 1 || (v6[13] & 1) == 0 && v6[14] != 1)
  {
    goto LABEL_11;
  }

  v12 = 0x1000000;
  return v11 | v10 | v12 | v9;
}

void sub_1004B4928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100007E44(va);
  _Unwind_Resume(a1);
}

void DataServiceController::updateSlicingDefinitions_sync(uint64_t a1, unsigned int a2, const std::string::value_type *a3, _BOOL4 a4)
{
  v4 = a1;
  if ((*(*a1 + 2288))(a1))
  {
    v283 = v4;
    DataServiceController::makeDataSimSlotRange(v4, 3, __p);
    v5 = *__p;
    v6 = *&__p[8];
    if (*__p == *&__p[8])
    {
      v8 = 0;
      v7 = 0;
      BYTE4(v279) = 0;
      v278 = 1;
      if (*__p)
      {
LABEL_10:
        *&__p[8] = v5;
        operator delete(v5);
      }
    }

    else
    {
      v279 = 0;
      v7 = 0;
      v8 = 0;
      do
      {
        *buf = *v5;
        v9 = *buf;
        v10 = **sub_100007DEC(v4 + 4960, buf);
        *buf = v9;
        v11 = *(*sub_100007DEC(v4 + 4960, buf) + 23);
        *buf = v9;
        v12 = sub_100007DEC(v4 + 4960, buf);
        v13 = *v12;
        if (*(*v12 + 12) == 1)
        {
          if (*(v13 + 13))
          {
            v7 = 1;
          }

          else
          {
            v7 |= *(v13 + 14);
          }
        }

        *buf = v9;
        v278 = *(*sub_100007DEC(v4 + 4960, buf) + 15);
        *buf = v9;
        BYTE4(v279) |= v10;
        LODWORD(v279) = v11 | v279;
        v8 |= *(*sub_100007DEC(v4 + 4960, buf) + 19);
        ++v5;
      }

      while (v5 != v6);
      v5 = *__p;
      if (*__p)
      {
        goto LABEL_10;
      }
    }

    v14 = *(v4 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = subscriber::asString();
      if (a3[23] >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      v17 = asStringBool(v279 & 0x100000000);
      v18 = asStringBool(v7 & 1);
      v19 = asStringBool(v278);
      v20 = asStringBool(v8 & 1);
      *__p = 136316418;
      *&__p[4] = v15;
      *&__p[12] = 2082;
      *&__p[14] = v16;
      *&__p[22] = 2080;
      *&__p[24] = v17;
      *v290 = 2080;
      *&v290[2] = v18;
      v291 = 2080;
      v292 = v19;
      v293 = 2080;
      v294 = v20;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I update slicing: [%s] %{public}s, oldSliceUsed=%s oldLlphs=%s oldConsumer=%s oldInternationalRoaming=%s", __p, 0x3Eu);
      v4 = v283;
    }

    v21 = *(v4 + 112);
    *buf = *(v4 + 104);
    *&buf[8] = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    subscriber::makeSimSlotRange();
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v23 = *__p;
    v22 = *&__p[8];
    if (*__p != *&__p[8])
    {
      v24 = *&__p[16];
      do
      {
        if (v24(*v23))
        {
          break;
        }

        ++v23;
      }

      while (v23 != v22);
      v276 = *&__p[8];
      v4 = v283;
      if (v23 != *&__p[8])
      {
        v274 = v22;
        v275 = v24;
        do
        {
          v25 = *v23;
          v280 = (*(**(v4 + 48) + 16))(*(v4 + 48), v25);
          *buf = v25;
          v26 = *sub_100007DEC(v283 + 4960, buf);
          *(v26 + 2) = 0;
          *v26 = 0;
          *(v26 + 4) = 0x1E00000000;
          *(v26 + 12) = 0;
          *(v26 + 13) = DataServiceController::calculateEntitledLLPHS(v283, v25);
          *(v26 + 14) = 256;
          *(v26 + 16) = 1;
          *(v26 + 22) = 0;
          *(v26 + 17) = 0;
          *(v26 + 23) = 1;
          if ((atomic_load_explicit(&qword_101FBA4C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA4C8))
          {
            *buf = @"NRSlicing";
            qword_101FBA4B8 = 0;
            unk_101FBA4C0 = 0;
            qword_101FBA4B0 = 0;
            sub_10005B328(&qword_101FBA4B0, buf, &buf[8], 1uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA4B0, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA4C8);
          }

          cf = 0;
          ServiceMap = Registry::getServiceMap(*(v283 + 13));
          v28 = ServiceMap;
          v30 = v29;
          if (v29 < 0)
          {
            v31 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v32 = 5381;
            do
            {
              v30 = v32;
              v33 = *v31++;
              v32 = (33 * v32) ^ v33;
            }

            while (v33);
          }

          std::mutex::lock(ServiceMap);
          *buf = v30;
          v34 = sub_100009510(&v28[1].__m_.__sig, buf);
          v35 = v283;
          if (v34)
          {
            v37 = v34[3];
            v36 = v34[4];
            if (v36)
            {
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v28);
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v36);
              v38 = 0;
              goto LABEL_35;
            }
          }

          else
          {
            v37 = 0;
          }

          std::mutex::unlock(v28);
          v36 = 0;
          v38 = 1;
LABEL_35:
          (*(*v37 + 88))(&cf, v37, v25, 1, &qword_101FBA4B0, 0, 0);
          if ((v38 & 1) == 0)
          {
            sub_100004A34(v36);
          }

          v39 = cf;
          v40 = *v280;
          v41 = os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT);
          if (!v39)
          {
            if (v41)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I no NRSlicing definitions", buf, 2u);
            }

            sub_10000A1EC(&cf);
            v53 = v274;
            v52 = v275;
            goto LABEL_287;
          }

          if (v41)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I NRSlicing used", buf, 2u);
          }

          *v26 = 1;
          sub_10000A1EC(&cf);
          if ((atomic_load_explicit(&qword_101FBA4E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA4E8))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"ShutdownOnDataModeChange";
            qword_101FBA4D8 = 0;
            unk_101FBA4E0 = 0;
            qword_101FBA4D0 = 0;
            sub_10005B328(&qword_101FBA4D0, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA4D0, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA4E8);
            v35 = v283;
          }

          cf = 0;
          v42 = Registry::getServiceMap(*(v35 + 13));
          v43 = v42;
          v44 = v29;
          if (v29 < 0)
          {
            v45 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v46 = 5381;
            do
            {
              v44 = v46;
              v47 = *v45++;
              v46 = (33 * v46) ^ v47;
            }

            while (v47);
          }

          std::mutex::lock(v42);
          *buf = v44;
          v48 = sub_100009510(&v43[1].__m_.__sig, buf);
          if (v48)
          {
            v50 = v48[3];
            v49 = v48[4];
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v43);
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v49);
              v51 = 0;
              goto LABEL_52;
            }
          }

          else
          {
            v50 = 0;
          }

          std::mutex::unlock(v43);
          v49 = 0;
          v51 = 1;
LABEL_52:
          (*(*v50 + 104))(&cf, v50, v25, 1, &qword_101FBA4D0, kCFBooleanFalse, 0);
          if ((v51 & 1) == 0)
          {
            sub_100004A34(v49);
          }

          v54 = cf;
          if (cf)
          {
            buf[0] = 0;
            v55 = CFGetTypeID(cf);
            if (v55 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(buf, v54, v56);
            }

            if (buf[0] == 1)
            {
              v57 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I ShutdownOnDataModeChange used", buf, 2u);
              }

              *(v26 + 22) = 1;
            }
          }

          sub_10000A1EC(&cf);
          v58 = Registry::getServiceMap(*(v283 + 13));
          v59 = v58;
          if (v60 < 0)
          {
            v61 = (v60 & 0x7FFFFFFFFFFFFFFFLL);
            v62 = 5381;
            do
            {
              v60 = v62;
              v63 = *v61++;
              v62 = (33 * v62) ^ v63;
            }

            while (v63);
          }

          std::mutex::lock(v58);
          *buf = v60;
          v64 = sub_100009510(&v59[1].__m_.__sig, buf);
          v65 = v283;
          if (v64)
          {
            v67 = v64[3];
            v66 = v64[4];
            if (v66)
            {
              atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v59);
              atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v66);
              v277 = 0;
              if (!v67)
              {
                goto LABEL_90;
              }

              goto LABEL_70;
            }
          }

          else
          {
            v67 = 0;
          }

          std::mutex::unlock(v59);
          v66 = 0;
          v277 = 1;
          if (!v67)
          {
            goto LABEL_90;
          }

LABEL_70:
          if (!(*(*v67 + 32))(v67))
          {
            goto LABEL_90;
          }

          if ((atomic_load_explicit(&qword_101FBA508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA508))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"EntitlementsGenres";
            qword_101FBA4F8 = 0;
            unk_101FBA500 = 0;
            qword_101FBA4F0 = 0;
            sub_10005B328(&qword_101FBA4F0, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA4F0, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA508);
            v65 = v283;
          }

          cf = 0;
          v68 = Registry::getServiceMap(*(v65 + 13));
          v69 = v68;
          v70 = v29;
          if (v29 < 0)
          {
            v71 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v72 = 5381;
            do
            {
              v70 = v72;
              v73 = *v71++;
              v72 = (33 * v72) ^ v73;
            }

            while (v73);
          }

          std::mutex::lock(v68);
          *buf = v70;
          v74 = sub_100009510(&v69[1].__m_.__sig, buf);
          if (!v74)
          {
            v76 = 0;
LABEL_79:
            std::mutex::unlock(v69);
            v75 = 0;
            v77 = 1;
            goto LABEL_80;
          }

          v76 = v74[3];
          v75 = v74[4];
          if (!v75)
          {
            goto LABEL_79;
          }

          atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v69);
          atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v75);
          v77 = 0;
LABEL_80:
          (*(*v76 + 104))(&cf, v76, v25, 1, &qword_101FBA4F0, kCFBooleanTrue, 0);
          v65 = v283;
          if ((v77 & 1) == 0)
          {
            sub_100004A34(v75);
          }

          v78 = cf;
          if (cf)
          {
            buf[0] = 1;
            v79 = CFGetTypeID(cf);
            if (v79 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(buf, v78, v80);
            }

            if ((buf[0] & 1) == 0)
            {
              v81 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "#I AppStore Genres used", buf, 2u);
              }

              *(v26 + 23) = 0;
            }
          }

          sub_10000A1EC(&cf);
LABEL_90:
          if ((atomic_load_explicit(&qword_101FBA528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA528))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"AllowSocketAPIWithTrafficClasses";
            qword_101FBA518 = 0;
            unk_101FBA520 = 0;
            qword_101FBA510 = 0;
            sub_10005B328(&qword_101FBA510, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA510, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA528);
            v65 = v283;
          }

          cf = 0;
          v82 = Registry::getServiceMap(*(v65 + 13));
          v83 = v82;
          v84 = v29;
          if (v29 < 0)
          {
            v85 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v86 = 5381;
            do
            {
              v84 = v86;
              v87 = *v85++;
              v86 = (33 * v86) ^ v87;
            }

            while (v87);
          }

          std::mutex::lock(v82);
          *buf = v84;
          v88 = sub_100009510(&v83[1].__m_.__sig, buf);
          if (v88)
          {
            v90 = v88[3];
            v89 = v88[4];
            if (v89)
            {
              atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v83);
              atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v89);
              v91 = 0;
              goto LABEL_99;
            }
          }

          else
          {
            v90 = 0;
          }

          std::mutex::unlock(v83);
          v89 = 0;
          v91 = 1;
LABEL_99:
          (*(*v90 + 104))(&cf, v90, v25, 1, &qword_101FBA510, kCFBooleanFalse, 0);
          v92 = v283;
          if ((v91 & 1) == 0)
          {
            sub_100004A34(v89);
          }

          v93 = cf;
          if (cf)
          {
            buf[0] = 0;
            v94 = CFGetTypeID(cf);
            if (v94 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(buf, v93, v95);
            }

            if (buf[0] == 1)
            {
              v96 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "#I AllowSocketAPIWithTrafficClasses used", buf, 2u);
              }

              *(v26 + 24) = 1;
            }
          }

          sub_10000A1EC(&cf);
          if ((atomic_load_explicit(&qword_101FBA548, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA548))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"TechnologyMask";
            qword_101FBA538 = 0;
            unk_101FBA540 = 0;
            qword_101FBA530 = 0;
            sub_10005B328(&qword_101FBA530, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA530, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA548);
            v92 = v283;
          }

          cf = 0;
          v97 = Registry::getServiceMap(*(v92 + 13));
          v98 = v97;
          v99 = v29;
          if (v29 < 0)
          {
            v100 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v101 = 5381;
            do
            {
              v99 = v101;
              v102 = *v100++;
              v101 = (33 * v101) ^ v102;
            }

            while (v102);
          }

          std::mutex::lock(v97);
          *buf = v99;
          v103 = sub_100009510(&v98[1].__m_.__sig, buf);
          if (v103)
          {
            v105 = v103[3];
            v104 = v103[4];
            if (v104)
            {
              atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v98);
              atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v104);
              v106 = 0;
              goto LABEL_117;
            }
          }

          else
          {
            v105 = 0;
          }

          std::mutex::unlock(v98);
          v104 = 0;
          v106 = 1;
LABEL_117:
          (*(*v105 + 104))(v295, v105, v25, 1, &qword_101FBA530, 0, 0);
          sub_10010B240(&cf, v295);
          v107 = v283;
          sub_10000A1EC(v295);
          if ((v106 & 1) == 0)
          {
            sub_100004A34(v104);
          }

          if (cf)
          {
            *buf = 0;
            if (CFNumberGetValue(cf, kCFNumberIntType, buf))
            {
              *(v26 + 4) = *buf;
            }

            else
            {
              v108 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *v295 = 0;
                _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "#E Cannot retreive TechnologyMask value", v295, 2u);
              }
            }
          }

          sub_100029A48(&cf);
          if ((atomic_load_explicit(&qword_101FBA568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA568))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"SliceInactivityTimeoutSecs";
            qword_101FBA558 = 0;
            unk_101FBA560 = 0;
            qword_101FBA550 = 0;
            sub_10005B328(&qword_101FBA550, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA550, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA568);
            v107 = v283;
          }

          cf = 0;
          v109 = Registry::getServiceMap(*(v107 + 13));
          v110 = v109;
          v111 = v29;
          if (v29 < 0)
          {
            v112 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v113 = 5381;
            do
            {
              v111 = v113;
              v114 = *v112++;
              v113 = (33 * v113) ^ v114;
            }

            while (v114);
          }

          std::mutex::lock(v109);
          *buf = v111;
          v115 = sub_100009510(&v110[1].__m_.__sig, buf);
          if (v115)
          {
            v117 = v115[3];
            v116 = v115[4];
            if (v116)
            {
              atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v110);
              atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v116);
              v118 = 0;
              goto LABEL_133;
            }
          }

          else
          {
            v117 = 0;
          }

          std::mutex::unlock(v110);
          v116 = 0;
          v118 = 1;
LABEL_133:
          (*(*v117 + 104))(v295, v117, v25, 1, &qword_101FBA550, 0, 0);
          sub_10010B240(&cf, v295);
          v119 = v283;
          sub_10000A1EC(v295);
          if ((v118 & 1) == 0)
          {
            sub_100004A34(v116);
          }

          if (cf)
          {
            *buf = 30;
            if (CFNumberGetValue(cf, kCFNumberIntType, buf))
            {
              *(v26 + 8) = *buf;
            }

            else
            {
              v120 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *v295 = 0;
                _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "#E Cannot retreive SliceInactivityTimeoutSecs value", v295, 2u);
              }
            }
          }

          sub_100029A48(&cf);
          if ((atomic_load_explicit(&qword_101FBA588, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA588))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"SupportsLLPHS";
            qword_101FBA578 = 0;
            unk_101FBA580 = 0;
            qword_101FBA570 = 0;
            sub_10005B328(&qword_101FBA570, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA570, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA588);
            v119 = v283;
          }

          cf = 0;
          v121 = Registry::getServiceMap(*(v119 + 13));
          v122 = v121;
          v123 = v29;
          if (v29 < 0)
          {
            v124 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v125 = 5381;
            do
            {
              v123 = v125;
              v126 = *v124++;
              v125 = (33 * v125) ^ v126;
            }

            while (v126);
          }

          std::mutex::lock(v121);
          *buf = v123;
          v127 = sub_100009510(&v122[1].__m_.__sig, buf);
          if (v127)
          {
            v129 = v127[3];
            v128 = v127[4];
            if (v128)
            {
              atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v122);
              atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v128);
              v130 = 0;
              goto LABEL_149;
            }
          }

          else
          {
            v129 = 0;
          }

          std::mutex::unlock(v122);
          v128 = 0;
          v130 = 1;
LABEL_149:
          (*(*v129 + 104))(&cf, v129, v25, 1, &qword_101FBA570, kCFBooleanFalse, 0);
          v131 = v283;
          if ((v130 & 1) == 0)
          {
            sub_100004A34(v128);
          }

          v132 = cf;
          if (cf)
          {
            buf[0] = 0;
            v133 = CFGetTypeID(cf);
            if (v133 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(buf, v132, v134);
            }

            if (buf[0] == 1)
            {
              v135 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "#I SupportsLLPHS used", buf, 2u);
              }

              *(v26 + 12) = 1;
            }
          }

          sub_10000A1EC(&cf);
          if ((atomic_load_explicit(&qword_101FBA5A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA5A8))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"IgnoreEntitledLLPHS";
            qword_101FBA598 = 0;
            unk_101FBA5A0 = 0;
            qword_101FBA590 = 0;
            sub_10005B328(&qword_101FBA590, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA590, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA5A8);
            v131 = v283;
          }

          cf = 0;
          v136 = Registry::getServiceMap(*(v131 + 13));
          v137 = v136;
          v138 = v29;
          if (v29 < 0)
          {
            v139 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v140 = 5381;
            do
            {
              v138 = v140;
              v141 = *v139++;
              v140 = (33 * v140) ^ v141;
            }

            while (v141);
          }

          std::mutex::lock(v136);
          *buf = v138;
          v142 = sub_100009510(&v137[1].__m_.__sig, buf);
          if (v142)
          {
            v144 = v142[3];
            v143 = v142[4];
            if (v143)
            {
              atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v137);
              atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v143);
              v145 = 0;
              goto LABEL_167;
            }
          }

          else
          {
            v144 = 0;
          }

          std::mutex::unlock(v137);
          v143 = 0;
          v145 = 1;
LABEL_167:
          (*(*v144 + 104))(&cf, v144, v25, 1, &qword_101FBA590, kCFBooleanFalse, 0);
          v146 = v283;
          if ((v145 & 1) == 0)
          {
            sub_100004A34(v143);
          }

          v147 = cf;
          if (cf)
          {
            buf[0] = 0;
            v148 = CFGetTypeID(cf);
            if (v148 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(buf, v147, v149);
            }

            if (buf[0] == 1)
            {
              v150 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "#I IgnoreEntitledLLPHS used", buf, 2u);
              }

              *(v26 + 14) = 1;
            }
          }

          sub_10000A1EC(&cf);
          if ((atomic_load_explicit(&qword_101FBA5C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA5C8))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"Consumer";
            qword_101FBA5B8 = 0;
            unk_101FBA5C0 = 0;
            qword_101FBA5B0 = 0;
            sub_10005B328(&qword_101FBA5B0, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA5B0, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA5C8);
            v146 = v283;
          }

          cf = 0;
          v151 = Registry::getServiceMap(*(v146 + 13));
          v152 = v151;
          v153 = v29;
          if (v29 < 0)
          {
            v154 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v155 = 5381;
            do
            {
              v153 = v155;
              v156 = *v154++;
              v155 = (33 * v155) ^ v156;
            }

            while (v156);
          }

          std::mutex::lock(v151);
          *buf = v153;
          v157 = sub_100009510(&v152[1].__m_.__sig, buf);
          if (v157)
          {
            v159 = v157[3];
            v158 = v157[4];
            if (v158)
            {
              atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v152);
              atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v158);
              v160 = 0;
              goto LABEL_185;
            }
          }

          else
          {
            v159 = 0;
          }

          std::mutex::unlock(v152);
          v158 = 0;
          v160 = 1;
LABEL_185:
          (*(*v159 + 104))(v295, v159, v25, 1, &qword_101FBA5B0, kCFBooleanTrue, 0);
          sub_10002FE1C(&cf, v295);
          v161 = v283;
          sub_10000A1EC(v295);
          if ((v160 & 1) == 0)
          {
            sub_100004A34(v158);
          }

          if (cf)
          {
            buf[0] = 0;
            ctu::cf::assign(buf, cf, v162);
            if ((buf[0] & 1) == 0)
            {
              v163 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "#I Consumer used as false", buf, 2u);
              }

              *(v26 + 15) = 0;
            }
          }

          sub_100045C8C(&cf);
          if ((atomic_load_explicit(&qword_101FBA5E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA5E8))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"CallKitSupported";
            qword_101FBA5D8 = 0;
            unk_101FBA5E0 = 0;
            qword_101FBA5D0 = 0;
            sub_10005B328(&qword_101FBA5D0, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA5D0, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA5E8);
            v161 = v283;
          }

          cf = 0;
          v164 = Registry::getServiceMap(*(v161 + 13));
          v165 = v164;
          v166 = v29;
          if (v29 < 0)
          {
            v167 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v168 = 5381;
            do
            {
              v166 = v168;
              v169 = *v167++;
              v168 = (33 * v168) ^ v169;
            }

            while (v169);
          }

          std::mutex::lock(v164);
          *buf = v166;
          v170 = sub_100009510(&v165[1].__m_.__sig, buf);
          if (v170)
          {
            v172 = v170[3];
            v171 = v170[4];
            if (v171)
            {
              atomic_fetch_add_explicit(&v171->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v165);
              atomic_fetch_add_explicit(&v171->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v171);
              v173 = 0;
              goto LABEL_201;
            }
          }

          else
          {
            v172 = 0;
          }

          std::mutex::unlock(v165);
          v171 = 0;
          v173 = 1;
LABEL_201:
          (*(*v172 + 104))(v295, v172, v25, 1, &qword_101FBA5D0, kCFBooleanTrue, 0);
          sub_10002FE1C(&cf, v295);
          v174 = v283;
          sub_10000A1EC(v295);
          if ((v173 & 1) == 0)
          {
            sub_100004A34(v171);
          }

          if (cf)
          {
            buf[0] = 0;
            ctu::cf::assign(buf, cf, v175);
            if ((buf[0] & 1) == 0)
            {
              v176 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "#I CallKit not supported", buf, 2u);
              }

              *(v26 + 16) = 0;
            }
          }

          sub_100045C8C(&cf);
          if ((atomic_load_explicit(&qword_101FBA608, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA608))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"ForceCallKitUdp";
            qword_101FBA5F8 = 0;
            unk_101FBA600 = 0;
            qword_101FBA5F0 = 0;
            sub_10005B328(&qword_101FBA5F0, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA5F0, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA608);
            v174 = v283;
          }

          cf = 0;
          v177 = Registry::getServiceMap(*(v174 + 13));
          v178 = v177;
          v179 = v29;
          if (v29 < 0)
          {
            v180 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v181 = 5381;
            do
            {
              v179 = v181;
              v182 = *v180++;
              v181 = (33 * v181) ^ v182;
            }

            while (v182);
          }

          std::mutex::lock(v177);
          *buf = v179;
          v183 = sub_100009510(&v178[1].__m_.__sig, buf);
          if (v183)
          {
            v185 = v183[3];
            v184 = v183[4];
            if (v184)
            {
              atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v178);
              atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v184);
              v186 = 0;
              goto LABEL_217;
            }
          }

          else
          {
            v185 = 0;
          }

          std::mutex::unlock(v178);
          v184 = 0;
          v186 = 1;
LABEL_217:
          (*(*v185 + 104))(v295, v185, v25, 1, &qword_101FBA5F0, kCFBooleanFalse, 0);
          sub_10002FE1C(&cf, v295);
          v187 = v283;
          sub_10000A1EC(v295);
          if ((v186 & 1) == 0)
          {
            sub_100004A34(v184);
          }

          if (cf)
          {
            buf[0] = 0;
            ctu::cf::assign(buf, cf, v188);
            if (buf[0] == 1)
            {
              v189 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_DEFAULT, "#I CallKit UDP forced", buf, 2u);
              }

              *(v26 + 17) = 1;
            }
          }

          sub_100045C8C(&cf);
          if ((atomic_load_explicit(&qword_101FBA628, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA628))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"ForcePoliciesDown";
            qword_101FBA618 = 0;
            unk_101FBA620 = 0;
            qword_101FBA610 = 0;
            sub_10005B328(&qword_101FBA610, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA610, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA628);
            v187 = v283;
          }

          cf = 0;
          v190 = Registry::getServiceMap(*(v187 + 13));
          v191 = v190;
          v192 = v29;
          if (v29 < 0)
          {
            v193 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v194 = 5381;
            do
            {
              v192 = v194;
              v195 = *v193++;
              v194 = (33 * v194) ^ v195;
            }

            while (v195);
          }

          std::mutex::lock(v190);
          *buf = v192;
          v196 = sub_100009510(&v191[1].__m_.__sig, buf);
          if (v196)
          {
            v198 = v196[3];
            v197 = v196[4];
            if (v197)
            {
              atomic_fetch_add_explicit(&v197->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v191);
              atomic_fetch_add_explicit(&v197->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v197);
              v199 = 0;
              goto LABEL_233;
            }
          }

          else
          {
            v198 = 0;
          }

          std::mutex::unlock(v191);
          v197 = 0;
          v199 = 1;
LABEL_233:
          (*(*v198 + 104))(v295, v198, v25, 1, &qword_101FBA610, kCFBooleanFalse, 0);
          sub_10002FE1C(&cf, v295);
          v200 = v283;
          sub_10000A1EC(v295);
          if ((v199 & 1) == 0)
          {
            sub_100004A34(v197);
          }

          if (cf)
          {
            buf[0] = 0;
            ctu::cf::assign(buf, cf, v201);
            if (buf[0] == 1)
            {
              v202 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v202, OS_LOG_TYPE_DEFAULT, "#I Policies Down forced", buf, 2u);
              }

              *(v26 + 18) = 1;
            }
          }

          sub_100045C8C(&cf);
          if ((atomic_load_explicit(&qword_101FBA648, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA648))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"InternationalRoaming";
            qword_101FBA638 = 0;
            unk_101FBA640 = 0;
            qword_101FBA630 = 0;
            sub_10005B328(&qword_101FBA630, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA630, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA648);
            v200 = v283;
          }

          cf = 0;
          v203 = Registry::getServiceMap(*(v200 + 13));
          v204 = v203;
          v205 = v29;
          if (v29 < 0)
          {
            v206 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v207 = 5381;
            do
            {
              v205 = v207;
              v208 = *v206++;
              v207 = (33 * v207) ^ v208;
            }

            while (v208);
          }

          std::mutex::lock(v203);
          *buf = v205;
          v209 = sub_100009510(&v204[1].__m_.__sig, buf);
          if (v209)
          {
            v211 = v209[3];
            v210 = v209[4];
            if (v210)
            {
              atomic_fetch_add_explicit(&v210->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v204);
              atomic_fetch_add_explicit(&v210->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v210);
              v212 = 0;
              goto LABEL_249;
            }
          }

          else
          {
            v211 = 0;
          }

          std::mutex::unlock(v204);
          v210 = 0;
          v212 = 1;
LABEL_249:
          (*(*v211 + 104))(&cf, v211, v25, 1, &qword_101FBA630, kCFBooleanFalse, 0);
          v213 = v283;
          if ((v212 & 1) == 0)
          {
            sub_100004A34(v210);
          }

          v214 = cf;
          if (cf)
          {
            buf[0] = 0;
            v215 = CFGetTypeID(cf);
            if (v215 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(buf, v214, v216);
            }

            if (buf[0] == 1)
            {
              v217 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v217, OS_LOG_TYPE_DEFAULT, "#I InternationalRoaming used", buf, 2u);
              }

              *(v26 + 19) = 1;
            }
          }

          sub_10000A1EC(&cf);
          if ((atomic_load_explicit(&qword_101FBA668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA668))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"UseOnlyXRForLLPHS";
            qword_101FBA658 = 0;
            unk_101FBA660 = 0;
            qword_101FBA650 = 0;
            sub_10005B328(&qword_101FBA650, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA650, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA668);
            v213 = v283;
          }

          cf = 0;
          v218 = Registry::getServiceMap(*(v213 + 13));
          v219 = v218;
          if (v29 < 0)
          {
            v220 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v221 = 5381;
            do
            {
              v29 = v221;
              v222 = *v220++;
              v221 = (33 * v221) ^ v222;
            }

            while (v222);
          }

          std::mutex::lock(v218);
          *buf = v29;
          v223 = sub_100009510(&v219[1].__m_.__sig, buf);
          if (!v223)
          {
            v225 = 0;
LABEL_266:
            std::mutex::unlock(v219);
            v224 = 0;
            v226 = 1;
            goto LABEL_267;
          }

          v225 = v223[3];
          v224 = v223[4];
          if (!v224)
          {
            goto LABEL_266;
          }

          atomic_fetch_add_explicit(&v224->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v219);
          atomic_fetch_add_explicit(&v224->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v224);
          v226 = 0;
LABEL_267:
          (*(*v225 + 104))(&cf, v225, v25, 1, &qword_101FBA650, kCFBooleanFalse, 0);
          if ((v226 & 1) == 0)
          {
            sub_100004A34(v224);
          }

          v227 = cf;
          if (cf)
          {
            buf[0] = 0;
            v228 = CFGetTypeID(cf);
            if (v228 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(buf, v227, v229);
            }

            if (buf[0] == 1)
            {
              v230 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v230, OS_LOG_TYPE_DEFAULT, "#I UseOnlyXRForLLPHS used", buf, 2u);
              }

              *(v26 + 20) = 1;
            }
          }

          sub_10000A1EC(&cf);
          DataServiceController::updateCarrierBundleTrafficDescriptors_sync(v283, v25);
          DataServiceController::updateCarrierBundleAppCategories_sync(v283, v25);
          DataServiceController::updateCarrierBundleSlicingEnterpriseDnn_sync(v283, v25);
          DataServiceController::updateCarrierBundleAllowedApps_sync(v283, v25);
          if ((*(v26 + 1) & 1) == 0 && (*(v26 + 2) & 1) == 0)
          {
            if (*(v26 + 303) < 0)
            {
              *(v26 + 288) = 0;
              v231 = *(v26 + 280);
            }

            else
            {
              v231 = (v26 + 280);
              *(v26 + 303) = 0;
            }

            *v231 = 0;
            if (*(v26 + 279) < 0)
            {
              *(v26 + 264) = 0;
              v232 = *(v26 + 256);
            }

            else
            {
              v232 = (v26 + 256);
              *(v26 + 279) = 0;
            }

            *v232 = 0;
          }

          DataServiceController::updateCarrierBundleSlicingOsId_sync(v283, v25);
          DataServiceController::sliceTrafficDescriptors_sync(v283, v25, "update");
          v53 = v274;
          v52 = v275;
          if ((v277 & 1) == 0)
          {
            sub_100004A34(v66);
          }

          do
          {
LABEL_287:
            ++v23;
          }

          while (v23 != v53 && (v52(*v23) & 1) == 0);
          v4 = v283;
        }

        while (v23 != v276);
      }
    }

    *__p = 1;
    *&__p[16] = 0u;
    *v290 = 0;
    *&__p[8] = v4 + 4272;
    sub_1004C5380(&__p[16], v4 + 4304);
    v233 = *(v283 + 14);
    cf = *(v283 + 13);
    v286 = v233;
    if (v233)
    {
      atomic_fetch_add_explicit(&v233->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    subscriber::makeSimSlotRange();
    if (v286)
    {
      sub_100004A34(v286);
    }

    v234 = *buf;
    v235 = *&buf[8];
    if (*buf != *&buf[8])
    {
      v236 = v301[0];
      do
      {
        if (v236(*v234))
        {
          break;
        }

        ++v234;
      }

      while (v234 != v235);
      v237 = *&buf[8];
      while (v234 != v237)
      {
        *v297 = *v234;
        v238 = (*(**(v283 + 6) + 16))(*(v283 + 6));
        SlicingConfiguredInfo = 0;
        SlicingConfiguredInfo = DataServiceController::getSlicingConfiguredInfo(v283, *v297);
        v239 = *v238;
        if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
        {
          rest::SlicingSupportInfo::toString(&cf, &SlicingConfiguredInfo);
          v240 = SHIBYTE(v287) >= 0 ? &cf : cf;
          *v295 = 136315138;
          *&v295[4] = v240;
          _os_log_impl(&_mh_execute_header, v239, OS_LOG_TYPE_DEFAULT, "#I update slicing: data_slicing_configured = %s (1)", v295, 0xCu);
          if (SHIBYTE(v287) < 0)
          {
            operator delete(cf);
          }
        }

        sub_1004BAE14(&__p[16], v297, &SlicingConfiguredInfo);
        do
        {
          ++v234;
        }

        while (v234 != v235 && (v236(*v234) & 1) == 0);
      }
    }

    sub_1004C53D8(__p);
    *__p = 1;
    *&__p[16] = 0u;
    *v290 = 0;
    *&__p[8] = v283 + 4328;
    sub_1004C5380(&__p[16], v283 + 4360);
    v241 = *(v283 + 14);
    *buf = *(v283 + 13);
    *&buf[8] = v241;
    if (v241)
    {
      atomic_fetch_add_explicit((v241 + 8), 1uLL, memory_order_relaxed);
    }

    subscriber::makeSimSlotRange();
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v242 = cf;
    v243 = v286;
    if (cf != v286)
    {
      v244 = v287;
      do
      {
        if (v244(*v242))
        {
          break;
        }

        ++v242;
      }

      while (v242 != v243);
      v245 = v286;
      while (v242 != v245)
      {
        SlicingConfiguredInfo = *v242;
        v246 = (*(**(v283 + 6) + 16))(*(v283 + 6));
        *&buf[8] = v246;
        v301[0] = 0;
        *buf = off_101E50808;
        v301[1] = buf;
        SlicingSupportInfo = 0;
        v247 = SlicingConfiguredInfo;
        sub_1001058C4(v299, buf);
        SlicingSupportInfo = DataServiceController::getSlicingSupportInfo(v283, v247, v299);
        sub_100007E44(v299);
        v248 = *v246;
        if (os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT))
        {
          rest::SlicingSupportInfo::toString(v295, &SlicingSupportInfo);
          v249 = v296 >= 0 ? v295 : *v295;
          *v297 = 136315138;
          v298 = v249;
          _os_log_impl(&_mh_execute_header, v248, OS_LOG_TYPE_DEFAULT, "#I update slicing: data_slicing_support = %s (1)", v297, 0xCu);
          if (v296 < 0)
          {
            operator delete(*v295);
          }
        }

        sub_1004BAE14(&__p[16], &SlicingConfiguredInfo, &SlicingSupportInfo);
        sub_100007E44(buf);
        do
        {
          ++v242;
        }

        while (v242 != v243 && (v244(*v242) & 1) == 0);
      }
    }

    sub_1004C5638(__p);
    v250 = v283;
    v251 = *(v283 + 14);
    *buf = *(v283 + 13);
    *&buf[8] = v251;
    if (v251)
    {
      atomic_fetch_add_explicit((v251 + 8), 1uLL, memory_order_relaxed);
    }

    subscriber::makeSimSlotRange();
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v252 = *__p;
    v253 = *&__p[8];
    if (*__p != *&__p[8])
    {
      v254 = *&__p[16];
      do
      {
        if (v254(*v252))
        {
          break;
        }

        ++v252;
      }

      while (v252 != v253);
      v255 = *&__p[8];
      while (1)
      {
        v250 = v283;
        if (v252 == v255)
        {
          break;
        }

        DataServiceController::resetSlicePolicies_sync(v283, *v252, 1, 0);
        do
        {
          ++v252;
        }

        while (v252 != v253 && (v254(*v252) & 1) == 0);
      }
    }

    DataServiceController::makeDataSimSlotRange(v250, 3, __p);
    v256 = *__p;
    v282 = *&__p[8];
    if (*__p == *&__p[8])
    {
      v259 = 0;
      v266 = 0;
      v257 = 0;
      v265 = 1;
      if (*__p)
      {
LABEL_379:
        *&__p[8] = v256;
        operator delete(v256);
      }
    }

    else
    {
      v257 = 0;
      v281 = 0;
      v258 = 0;
      v259 = 0;
      do
      {
        *buf = *v256;
        v260 = *buf;
        v261 = **sub_100007DEC(v283 + 4960, buf);
        *buf = v260;
        v262 = *(*sub_100007DEC(v283 + 4960, buf) + 23);
        *buf = v260;
        v263 = sub_100007DEC(v283 + 4960, buf);
        v264 = *v263;
        if (*(*v263 + 12) == 1)
        {
          if (*(v264 + 13))
          {
            v281 = 1;
          }

          else
          {
            v281 |= *(v264 + 14);
          }
        }

        *buf = v260;
        v265 = *(*sub_100007DEC(v283 + 4960, buf) + 15);
        *buf = v260;
        v259 |= v261;
        v258 |= v262;
        v257 |= *(*sub_100007DEC(v283 + 4960, buf) + 19);
        ++v256;
      }

      while (v256 != v282);
      v256 = *__p;
      v266 = v281;
      if (*__p)
      {
        goto LABEL_379;
      }
    }

    if ((v259 & v266 & 1) == 0)
    {
      DataServiceController::notifyLLPHS_sync(v283, 0, 0, 1);
    }

    v267 = *(v283 + 5);
    if (os_log_type_enabled(v267, OS_LOG_TYPE_DEFAULT))
    {
      if (a3[23] >= 0)
      {
        v268 = a3;
      }

      else
      {
        v268 = *a3;
      }

      v269 = asStringBool(v259 & 1);
      v270 = asStringBool(v266 & 1);
      v271 = asStringBool(v265);
      v272 = asStringBool(v257 & 1);
      *__p = 136447234;
      *&__p[4] = v268;
      *&__p[12] = 2080;
      *&__p[14] = v269;
      *&__p[22] = 2080;
      *&__p[24] = v270;
      *v290 = 2080;
      *&v290[2] = v271;
      v291 = 2080;
      v292 = v272;
      _os_log_impl(&_mh_execute_header, v267, OS_LOG_TYPE_DEFAULT, "#I update slicing: %{public}s, newSliceUsed=%s, llphs=%s, consumer=%s,internationalRoaming=%s", __p, 0x34u);
    }

    DataServiceController::setSliceEventsListeners_sync(v283, v259 & 1, v266 & 1, 1);
    DataServiceController::setManagedConfigListener_sync(v283, v259 & 1);
    LOBYTE(cf) = 0;
    v295[0] = 0;
    sub_1004C581C();
  }
}

void sub_1004B73F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  __cxa_guard_abort(&qword_101FBA668);
  if ((a17 & 1) == 0)
  {
    sub_100004A34(v44);
  }

  _Unwind_Resume(a1);
}

const void **DataServiceController::updateCarrierBundleTrafficDescriptors_sync(uint64_t a1, uint64_t a2)
{
  v58 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  LODWORD(v65) = a2;
  v4 = sub_100007DEC(a1 + 4960, &v65);
  v5 = *v4;
  v6 = *(*v4 + 32);
  v57 = *v4 + 32;
    ;
  }

  *(v5 + 40) = v6;
  theArray = 0;
  if ((atomic_load_explicit(&qword_101FBA788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA788))
  {
    *&v65 = @"NRSlicing";
    *(&v65 + 1) = @"TrafficDescriptors";
    qword_101FBA778 = 0;
    unk_101FBA780 = 0;
    qword_101FBA770 = 0;
    sub_10005B328(&qword_101FBA770, &v65, v66, 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA770, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA788);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 104));
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
  *&v65 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v65);
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
      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_13:
  (*(*v16 + 104))(&buf, v16, a2, 1, &qword_101FBA770, 0, 0);
  sub_10006DD00(&v63, &buf.__r_.__value_.__l.__data_);
  *&v65 = theArray;
  theArray = v63.__r_.__value_.__r.__words[0];
  v63.__r_.__value_.__r.__words[0] = 0;
  sub_100010250(&v65);
  sub_100010250(&v63.__r_.__value_.__l.__data_);
  sub_10000A1EC(&buf.__r_.__value_.__l.__data_);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v19 = 0;
      while (1)
      {
        theDict = 0;
        *&v65 = CFArrayGetValueAtIndex(theArray, v19);
        sub_100010180(&theDict, &v65);
        if (theDict)
        {
          break;
        }

LABEL_91:
        sub_10001021C(&theDict);
        if (Count == ++v19)
        {
          return sub_100010250(&theArray);
        }
      }

      memset(v73, 0, sizeof(v73));
      v71 = 0u;
      v72 = 0u;
      memset(v70, 0, sizeof(v70));
      *__p = 0u;
      v69 = 0u;
      memset(v67, 0, sizeof(v67));
      memset(v66, 0, sizeof(v66));
      v65 = 0u;
      TrafficDescriptor::TrafficDescriptor(&v65);
      if (CFDictionaryGetValue(theDict, @"Domain"))
      {
        memset(&v63, 0, sizeof(v63));
        ctu::cf::assign();
        buf.__r_.__value_.__r.__words[0] = v63.__r_.__value_.__l.__size_;
        v20 = v63.__r_.__value_.__r.__words[0];
        *(buf.__r_.__value_.__r.__words + 7) = *(&v63.__r_.__value_.__r.__words[1] + 7);
        v21 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        if (v70[0])
        {
          if (SHIBYTE(v69) < 0)
          {
            operator delete(__p[1]);
          }

          __p[1] = v20;
          *&v69 = buf.__r_.__value_.__r.__words[0];
          *(&v69 + 7) = *(buf.__r_.__value_.__r.__words + 7);
          HIBYTE(v69) = v21;
        }

        else
        {
          __p[1] = v63.__r_.__value_.__l.__data_;
          *&v69 = buf.__r_.__value_.__r.__words[0];
          *(&v69 + 7) = *(buf.__r_.__value_.__r.__words + 7);
          HIBYTE(v69) = *(&v63.__r_.__value_.__s + 23);
          LOBYTE(v70[0]) = 1;
        }
      }

      if (CFDictionaryGetValue(theDict, @"Dnn"))
      {
        memset(&v63, 0, sizeof(v63));
        ctu::cf::assign();
        buf.__r_.__value_.__r.__words[0] = v63.__r_.__value_.__l.__size_;
        v22 = v63.__r_.__value_.__r.__words[0];
        *(buf.__r_.__value_.__r.__words + 7) = *(&v63.__r_.__value_.__r.__words[1] + 7);
        v23 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        if (v73[3])
        {
          if (SHIBYTE(v73[2]) < 0)
          {
            operator delete(v73[0]);
          }

          v73[0] = v22;
          v73[1] = buf.__r_.__value_.__l.__data_;
          *(&v73[1] + 7) = *(buf.__r_.__value_.__r.__words + 7);
          HIBYTE(v73[2]) = v23;
        }

        else
        {
          v73[0] = v63.__r_.__value_.__l.__data_;
          v73[1] = buf.__r_.__value_.__l.__data_;
          *(&v73[1] + 7) = *(buf.__r_.__value_.__r.__words + 7);
          HIBYTE(v73[2]) = *(&v63.__r_.__value_.__s + 23);
          LOBYTE(v73[3]) = 1;
        }
      }

      if (CFDictionaryGetValue(theDict, @"RsDnn"))
      {
        memset(&v63, 0, sizeof(v63));
        ctu::cf::assign();
        buf.__r_.__value_.__r.__words[0] = v63.__r_.__value_.__l.__size_;
        v24 = v63.__r_.__value_.__r.__words[0];
        *(buf.__r_.__value_.__r.__words + 7) = *(&v63.__r_.__value_.__r.__words[1] + 7);
        v25 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        if (v73[7])
        {
          if (SHIBYTE(v73[6]) < 0)
          {
            operator delete(v73[4]);
          }

          v73[4] = v24;
          v73[5] = buf.__r_.__value_.__l.__data_;
          *(&v73[5] + 7) = *(buf.__r_.__value_.__r.__words + 7);
          HIBYTE(v73[6]) = v25;
        }

        else
        {
          v73[4] = v63.__r_.__value_.__l.__data_;
          v73[5] = buf.__r_.__value_.__l.__data_;
          *(&v73[5] + 7) = *(buf.__r_.__value_.__r.__words + 7);
          HIBYTE(v73[6]) = *(&v63.__r_.__value_.__s + 23);
          LOBYTE(v73[7]) = 1;
        }
      }

      Value = CFDictionaryGetValue(theDict, @"Port");
      v27 = Value;
      if (Value)
      {
        LOWORD(v63.__r_.__value_.__l.__data_) = 0;
        v28 = CFGetTypeID(Value);
        if (v28 == CFNumberGetTypeID())
        {
          ctu::cf::assign(&v63, v27, v29);
        }

        WORD2(v71) = v63.__r_.__value_.__l.__data_;
        BYTE6(v71) = 1;
      }

      v30 = CFDictionaryGetValue(theDict, @"PortRangeStart");
      if (v30)
      {
        v31 = CFDictionaryGetValue(theDict, @"PortRangeEnd");
        if (v31)
        {
          LOWORD(v63.__r_.__value_.__l.__data_) = 0;
          v32 = CFGetTypeID(v30);
          if (v32 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&v63, v30, v33);
          }

          data_low = LOWORD(v63.__r_.__value_.__l.__data_);
          LOWORD(v63.__r_.__value_.__l.__data_) = 0;
          v35 = CFGetTypeID(v31);
          if (v35 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&v63, v31, v36);
          }

          if (data_low <= LOWORD(v63.__r_.__value_.__l.__data_))
          {
            if (BYTE12(v71) == 1)
            {
              WORD4(v71) = data_low;
              WORD5(v71) = v63.__r_.__value_.__l.__data_;
            }

            else
            {
              DWORD2(v71) = data_low | (LOWORD(v63.__r_.__value_.__l.__data_) << 16);
              BYTE12(v71) = 1;
            }
          }
        }
      }

      if (CFDictionaryGetValue(theDict, @"Address"))
      {
        memset(&buf, 0, sizeof(buf));
        memset(&v63, 0, sizeof(v63));
        ctu::cf::assign();
        v59 = v63.__r_.__value_.__r.__words[0];
        v60 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        CSIPacketAddress::CSIPacketAddress();
        if (v60 < 0)
        {
          operator delete(v59);
        }

        v37 = CFDictionaryGetValue(theDict, @"AddressPrefix");
        v38 = v37;
        if (v37)
        {
          v63.__r_.__value_.__s.__data_[0] = 0;
          v39 = CFGetTypeID(v37);
          if (v39 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&v63, v38, v40);
          }

          CSIPacketAddress::setPrefixLen(&buf, v63.__r_.__value_.__s.__data_[0]);
        }

        sub_1001B88C0((v70 + 8), &buf);
      }

      v41 = CFDictionaryGetValue(theDict, @"IpProtocol");
      v42 = v41;
      if (v41)
      {
        LOWORD(v63.__r_.__value_.__l.__data_) = 0;
        v43 = CFGetTypeID(v41);
        if (v43 == CFNumberGetTypeID())
        {
          ctu::cf::assign(&v63, v42, v44);
        }

        HIWORD(v71) = v63.__r_.__value_.__l.__data_;
        LOBYTE(v72) = 1;
      }

      v45 = CFDictionaryGetValue(theDict, @"TrafficClass");
      if (v45)
      {
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(v45))
        {
          LODWORD(v63.__r_.__value_.__l.__data_) = 0;
          v47 = CFGetTypeID(v45);
          if (v47 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&v63, v45, v48);
          }

          DWORD1(v72) = v63.__r_.__value_.__l.__data_;
          BYTE8(v72) = 1;
        }
      }

      if (CFDictionaryGetValue(theDict, @"App"))
      {
        memset(&buf, 0, sizeof(buf));
        memset(&v63, 0, sizeof(v63));
        ctu::cf::assign();
        buf = v63;
        size = v63.__r_.__value_.__l.__size_;
        v50 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        }

        if (!size)
        {
          goto LABEL_79;
        }

        sub_1001696A4(v67, &buf);
      }

      else
      {
        if (!CFDictionaryGetValue(theDict, @"EApp"))
        {
LABEL_81:
          v52 = *v58;
          if (os_log_type_enabled(*v58, OS_LOG_TYPE_DEFAULT))
          {
            TrafficDescriptor::toString(&v63, &v65);
            v53 = (v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v63 : v63.__r_.__value_.__r.__words[0];
            LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
            *(buf.__r_.__value_.__r.__words + 4) = v53;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor from CB: %{public}s", &buf, 0xCu);
            if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v63.__r_.__value_.__l.__data_);
            }
          }

          v54 = *(v5 + 40);
          if (v54 >= *(v5 + 48))
          {
            v55 = sub_1001C1784(v57, &v65);
          }

          else
          {
            TrafficDescriptor::TrafficDescriptor(*(v5 + 40), &v65);
            v55 = v54 + 304;
            *(v5 + 40) = v54 + 304;
          }

          *(v5 + 40) = v55;
          TrafficDescriptor::~TrafficDescriptor(&v65);
          goto LABEL_91;
        }

        memset(&buf, 0, sizeof(buf));
        memset(&v63, 0, sizeof(v63));
        ctu::cf::assign();
        buf = v63;
        v51 = v63.__r_.__value_.__l.__size_;
        v50 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        }

        if (!v51)
        {
LABEL_79:
          if (v50 < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          goto LABEL_81;
        }

        sub_100215390(v67, &kDefaultAppBundleId);
        sub_1001696A4(v66, &buf);
      }

      v50 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      goto LABEL_79;
    }
  }

  return sub_100010250(&theArray);
}

void sub_1004B806C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __cxa_guard_abort(&qword_101FBA788);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

const void **DataServiceController::updateCarrierBundleAppCategories_sync(uint64_t a1, uint64_t a2)
{
  v76 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  LODWORD(buf.__r_.__value_.__l.__data_) = a2;
  v4 = sub_100007DEC(a1 + 4960, &buf);
  v5 = *v4 + 88;
  v6 = (*v4 + 80);
  sub_1004C01D4(v6, *v5);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 - 8) = v5;
  v75 = v5;
  if (!*(a1 + 5080))
  {
    operator new();
  }

  theArray = 0;
  if ((atomic_load_explicit(&qword_101FBA7A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA7A8))
  {
    buf.__r_.__value_.__r.__words[0] = @"NRSlicing";
    buf.__r_.__value_.__l.__size_ = @"AppCategories";
    qword_101FBA798 = 0;
    unk_101FBA7A0 = 0;
    qword_101FBA790 = 0;
    sub_10005B328(&qword_101FBA790, &buf, &buf.__r_.__value_.__r.__words[2], 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA790, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA7A8);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v8 = ServiceMap;
  if ((v9 & 0x8000000000000000) != 0)
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
  buf.__r_.__value_.__r.__words[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &buf);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
LABEL_12:
  (*(*v15 + 104))(&v78, v15, a2, 1, &qword_101FBA790, 0, 0);
  sub_10006DD00(&__p, &v78);
  buf.__r_.__value_.__r.__words[0] = theArray;
  theArray = __p.__r_.__value_.__r.__words[0];
  __p.__r_.__value_.__r.__words[0] = 0;
  sub_100010250(&buf.__r_.__value_.__l.__data_);
  sub_100010250(&__p.__r_.__value_.__l.__data_);
  sub_10000A1EC(&v78);
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if (theArray)
  {
    v74 = a2;
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        theDict = 0;
        buf.__r_.__value_.__r.__words[0] = CFArrayGetValueAtIndex(theArray, i);
        sub_100010180(&theDict, &buf.__r_.__value_.__l.__data_);
        if (theDict)
        {
          memset(&__p, 0, sizeof(__p));
          v80 = 0;
          __val = 0;
          v78 = 0;
          v79 = 0;
          memset(&v77, 0, sizeof(v77));
          if (CFDictionaryGetValue(theDict, @"Name"))
          {
            memset(&buf, 0, sizeof(buf));
            ctu::cf::assign();
            v90.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
            v19 = buf.__r_.__value_.__r.__words[0];
            *(v90.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
            v20 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            __p.__r_.__value_.__r.__words[0] = v19;
            __p.__r_.__value_.__l.__size_ = v90.__r_.__value_.__r.__words[0];
            *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v90.__r_.__value_.__r.__words + 7);
            *(&__p.__r_.__value_.__s + 23) = v20;
          }

          Value = CFDictionaryGetValue(theDict, @"ID");
          v22 = Value;
          if (Value)
          {
            buf.__r_.__value_.__r.__words[0] = 0;
            v23 = CFGetTypeID(Value);
            if (v23 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&buf, v22, v24);
            }

            __val = buf.__r_.__value_.__r.__words[0];
          }

          if (CFDictionaryGetValue(theDict, @"Apps"))
          {
            memset(&v90, 0, sizeof(v90));
            memset(&buf, 0, sizeof(buf));
            ctu::cf::assign();
            v90 = buf;
            ctu::split_any_copy();
            sub_100071A6C(&v77);
            v77 = buf;
            p_buf = &buf;
            memset(&buf, 0, sizeof(buf));
            sub_1000087B4(&p_buf);
            if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v90.__r_.__value_.__l.__data_);
            }
          }

          v25 = CFDictionaryGetValue(theDict, @"ACs");
          v26 = v25;
          if (v25)
          {
            v27 = CFGetTypeID(v25);
            if (v27 == CFStringGetTypeID())
            {
              memset(&v90, 0, sizeof(v90));
              memset(&buf, 0, sizeof(buf));
              ctu::cf::assign();
              v90 = buf;
              memset(&buf, 0, sizeof(buf));
              ctu::split_any_copy();
              size = buf.__r_.__value_.__l.__size_;
              for (j = buf.__r_.__value_.__r.__words[0]; j != size; ++j)
              {
                p_buf = std::stoull(j, 0, 10);
                if (p_buf)
                {
                  sub_1004BC3F0(&v78, &p_buf);
                }
              }

              p_buf = &buf;
              sub_1000087B4(&p_buf);
              if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v90.__r_.__value_.__l.__data_);
              }
            }

            else if (v27 == CFNumberGetTypeID())
            {
              buf.__r_.__value_.__r.__words[0] = 0;
              v30 = CFGetTypeID(v26);
              if (v30 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&buf, v26, v31);
              }

              v90.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__r.__words[0];
              if (buf.__r_.__value_.__r.__words[0])
              {
                sub_1004BC3F0(&v78, &v90);
              }
            }

            else
            {
              v32 = *(a1 + 40);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
                *(buf.__r_.__value_.__r.__words + 4) = v27;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Wrong ACs type: %lu", &buf, 0xCu);
              }
            }
          }

          if (__val)
          {
            v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            v35 = __p.__r_.__value_.__l.__size_;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v36 = __p.__r_.__value_.__l.__size_;
            }

            if (!v36)
            {
              v37 = *(a1 + 5080);
              v40 = *(v37 + 8);
              v38 = v37 + 8;
              v39 = v40;
              if (v40)
              {
                v41 = v38;
                do
                {
                  v42 = *(v39 + 32);
                  v43 = v42 >= __val;
                  v44 = v42 < __val;
                  if (v43)
                  {
                    v41 = v39;
                  }

                  v39 = *(v39 + 8 * v44);
                }

                while (v39);
                if (v41 != v38 && __val >= *(v41 + 32))
                {
                  std::string::operator=(&__p, (v41 + 40));
                  v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                  v35 = __p.__r_.__value_.__l.__size_;
                  v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }
              }

              if (v34 < 0)
              {
                v33 = v35;
              }

              if (!v33)
              {
                std::to_string(&buf, __val);
                v45 = std::string::insert(&buf, 0, "Genre ", 6uLL);
                v46 = v45->__r_.__value_.__r.__words[0];
                v90.__r_.__value_.__r.__words[0] = v45->__r_.__value_.__l.__size_;
                *(v90.__r_.__value_.__r.__words + 7) = *(&v45->__r_.__value_.__r.__words[1] + 7);
                v47 = HIBYTE(v45->__r_.__value_.__r.__words[2]);
                v45->__r_.__value_.__l.__size_ = 0;
                v45->__r_.__value_.__r.__words[2] = 0;
                v45->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                __p.__r_.__value_.__r.__words[0] = v46;
                __p.__r_.__value_.__l.__size_ = v90.__r_.__value_.__r.__words[0];
                *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v90.__r_.__value_.__r.__words + 7);
                *(&__p.__r_.__value_.__s + 23) = v47;
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }
              }
            }

            v48 = *v76;
            if (os_log_type_enabled(*v76, OS_LOG_TYPE_DEFAULT))
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
              *(buf.__r_.__value_.__r.__words + 4) = __val;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I AppCategory from CB: %llu - %{public}s", &buf, 0x16u);
            }

            sub_1004C0DF8(&buf, &__p, &v77, &v78);
            p_buf = &__val;
            v50 = sub_1004C5CAC(v6, &__val, &unk_101802C98, &p_buf);
            sub_1004C0ED8((v50 + 5), &buf);
            if (v88)
            {
              v89 = v88;
              operator delete(v88);
            }

            v90.__r_.__value_.__r.__words[0] = &v87;
            sub_1000087B4(&v90);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          buf.__r_.__value_.__r.__words[0] = &v77;
          sub_1000087B4(&buf);
          if (v78)
          {
            v79 = v78;
            operator delete(v78);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        sub_10001021C(&theDict);
      }
    }

    if ((*(*a1 + 1120))(a1) == v74)
    {
      if (*(a1 + 5080))
      {
        v51 = *v6;
        if (*v6 != v75)
        {
          v52 = a1 + 4992;
          v53 = (a1 + 5064);
          do
          {
            v54 = v51 + 4;
            v55 = *(a1 + 5080);
            buf.__r_.__value_.__r.__words[0] = (v51 + 4);
            v56 = sub_1004C5D94(v55, v51 + 4, &unk_101802C98, &buf);
            std::string::operator=((v56 + 5), (v51 + 5));
            v58 = v51[8];
            v57 = v51[9];
            while (v58 != v57)
            {
              if (v52 != sub_100007A6C(a1 + 4984, v58))
              {
                DataServiceController::hardcodeGenreApp(a1, *v54, v58, 0);
              }

              v58 += 24;
            }

            v59 = v51[11];
            v60 = v51[12];
            while (v59 != v60)
            {
              v61 = *v53;
              if (*v53)
              {
                v62 = *v59;
                v63 = a1 + 5064;
                do
                {
                  v64 = *(v61 + 32);
                  v43 = v64 >= v62;
                  v65 = v64 < v62;
                  if (v43)
                  {
                    v63 = v61;
                  }

                  v61 = *(v61 + 8 * v65);
                }

                while (v61);
                if (v63 != v53 && v62 >= *(v63 + 32))
                {
                  memset(&buf, 0, sizeof(buf));
                  sub_100074920(&buf, (v63 + 40));
                  v66 = buf.__r_.__value_.__r.__words[0];
                  if (buf.__r_.__value_.__l.__data_ != &buf.__r_.__value_.__r.__words[1])
                  {
                    do
                    {
                      if (v52 != sub_100007A6C(a1 + 4984, (v66 + 32)))
                      {
                        DataServiceController::hardcodeGenreApp(a1, *v54, (v66 + 32), 1);
                      }

                      v67 = *(v66 + 8);
                      if (v67)
                      {
                        do
                        {
                          v68 = v67;
                          v67 = v67->__r_.__value_.__r.__words[0];
                        }

                        while (v67);
                      }

                      else
                      {
                        do
                        {
                          v68 = *(v66 + 16);
                          v69 = v68->__r_.__value_.__r.__words[0] == v66;
                          v66 = v68;
                        }

                        while (!v69);
                      }

                      v66 = v68;
                    }

                    while (v68 != &buf.__r_.__value_.__r.__words[1]);
                  }

                  __p.__r_.__value_.__r.__words[0] = v59;
                  v70 = sub_1004C5010(a1 + 5056, v59, &unk_101802C98, &__p);
                  sub_100176728(v70 + 5, 0, 0);
                  sub_100009970(&buf, buf.__r_.__value_.__l.__size_);
                }
              }

              ++v59;
            }

            v71 = v51[1];
            if (v71)
            {
              do
              {
                v72 = v71;
                v71 = *v71;
              }

              while (v71);
            }

            else
            {
              do
              {
                v72 = v51[2];
                v69 = *v72 == v51;
                v51 = v72;
              }

              while (!v69);
            }

            v51 = v72;
          }

          while (v72 != v75);
        }
      }
    }
  }

  return sub_100010250(&theArray);
}

void sub_1004B8C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, int a31, const void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  __cxa_guard_abort(&qword_101FBA7A8);
  sub_100010250(&a32);
  _Unwind_Resume(a1);
}

const void **DataServiceController::updateCarrierBundleSlicingEnterpriseDnn_sync(uint64_t a1, uint64_t a2)
{
  LODWORD(v39) = a2;
  v4 = sub_100007DEC(a1 + 4960, &v39);
  v5 = *v4;
  v6 = (*v4 + 256);
  if (*(*v4 + 279) < 0)
  {
    *(v5 + 264) = 0;
    v7 = *(v5 + 256);
  }

  else
  {
    *(v5 + 279) = 0;
    v7 = v6;
  }

  *v7 = 0;
  v37 = 0;
  if ((atomic_load_explicit(&qword_101FBA748, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA748))
  {
    v39 = @"NRSlicing";
    *&v40 = @"Dnn";
    qword_101FBA738 = 0;
    unk_101FBA740 = 0;
    qword_101FBA730 = 0;
    sub_10005B328(&qword_101FBA730, &v39, &v40 + 1, 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA730, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA748);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v9 = ServiceMap;
  v11 = v10;
  if (v10 < 0)
  {
    v12 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  v39 = v11;
  v15 = sub_100009510(&v9[1].__m_.__sig, &v39);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v9);
  v16 = 0;
  v18 = 1;
LABEL_13:
  (*(*v17 + 104))(&v36, v17, a2, 1, &qword_101FBA730, 0, 0);
  sub_100060DE8(v38, &v36);
  v39 = v37;
  v37 = *v38;
  *v38 = 0;
  sub_100005978(&v39);
  sub_100005978(v38);
  sub_10000A1EC(&v36);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  if (v37)
  {
    v39 = 0;
    v40 = 0uLL;
    ctu::cf::assign();
    v19 = v39;
    *v38 = v40;
    *&v38[7] = *(&v40 + 7);
    v20 = HIBYTE(v40);
    if (*(v5 + 279) < 0)
    {
      operator delete(*v6);
    }

    v21 = *v38;
    *(v5 + 256) = v19;
    *(v5 + 264) = v21;
    *(v5 + 271) = *&v38[7];
    *(v5 + 279) = v20;
  }

  sub_100005978(&v37);
  if (*(v5 + 303) < 0)
  {
    *(v5 + 288) = 0;
    v22 = *(v5 + 280);
  }

  else
  {
    *(v5 + 303) = 0;
    v22 = (v5 + 280);
  }

  *v22 = 0;
  v37 = 0;
  if ((atomic_load_explicit(&qword_101FBA768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA768))
  {
    v39 = @"NRSlicing";
    *&v40 = @"Apn";
    qword_101FBA758 = 0;
    unk_101FBA760 = 0;
    qword_101FBA750 = 0;
    sub_10005B328(&qword_101FBA750, &v39, &v40 + 1, 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA750, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA768);
  }

  v23 = Registry::getServiceMap(*(a1 + 104));
  v24 = v23;
  if (v10 < 0)
  {
    v25 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v26 = 5381;
    do
    {
      v10 = v26;
      v27 = *v25++;
      v26 = (33 * v26) ^ v27;
    }

    while (v27);
  }

  std::mutex::lock(v23);
  v39 = v10;
  v28 = sub_100009510(&v24[1].__m_.__sig, &v39);
  if (v28)
  {
    v30 = v28[3];
    v29 = v28[4];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v24);
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v29);
      v31 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v30 = 0;
  }

  std::mutex::unlock(v24);
  v29 = 0;
  v31 = 1;
LABEL_31:
  (*(*v30 + 104))(&v36, v30, a2, 1, &qword_101FBA750, 0, 0);
  sub_100060DE8(v38, &v36);
  v39 = v37;
  v37 = *v38;
  *v38 = 0;
  sub_100005978(&v39);
  sub_100005978(v38);
  sub_10000A1EC(&v36);
  if ((v31 & 1) == 0)
  {
    sub_100004A34(v29);
  }

  if (v37)
  {
    v39 = 0;
    v40 = 0uLL;
    ctu::cf::assign();
    v32 = v39;
    *v38 = v40;
    *&v38[7] = *(&v40 + 7);
    v33 = HIBYTE(v40);
    if (*(v5 + 303) < 0)
    {
      operator delete(*(v5 + 280));
    }

    v34 = *v38;
    *(v5 + 280) = v32;
    *(v5 + 288) = v34;
    *(v5 + 295) = *&v38[7];
    *(v5 + 303) = v33;
  }

  return sub_100005978(&v37);
}

void sub_1004B928C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_guard_abort(&qword_101FBA768);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

void DataServiceController::updateCarrierBundleAllowedApps_sync(uint64_t a1, unsigned int a2)
{
  LODWORD(buf.__r_.__value_.__l.__data_) = a2;
  v3 = *sub_100007DEC(a1 + 4960, &buf);
  *(v3 + 128) = 0;
  sub_100009970(v3 + 104, *(v3 + 112));
  *(v3 + 104) = v3 + 112;
  *(v3 + 120) = 0;
  *(v3 + 112) = 0;
  sub_1004C0118(*(v3 + 144));
  *(v3 + 136) = v3 + 144;
  *(v3 + 152) = 0;
  *(v3 + 144) = 0;
  sub_100009970(v3 + 160, *(v3 + 168));
  *(v3 + 160) = v3 + 168;
  *(v3 + 176) = 0;
  *(v3 + 168) = 0;
  sub_100009970(v3 + 184, *(v3 + 192));
  *(v3 + 184) = v3 + 192;
  *(v3 + 200) = 0;
  *(v3 + 192) = 0;
  v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I we are clearing cached traffic descriptors because we are re-reading carrier bundle info", &buf, 2u);
  }

  v6 = *(v3 + 56);
    ;
  }

  *(v3 + 64) = v6;
  theArray.__r_.__value_.__r.__words[0] = 0;
  if ((atomic_load_explicit(&qword_101FBA688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA688))
  {
    buf.__r_.__value_.__r.__words[0] = @"NRSlicing";
    buf.__r_.__value_.__l.__size_ = @"VpnAgnosticApps";
    qword_101FBA678 = 0;
    unk_101FBA680 = 0;
    qword_101FBA670 = 0;
    sub_10005B328(&qword_101FBA670, &buf, &buf.__r_.__value_.__r.__words[2], 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA670, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA688);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v8 = ServiceMap;
  v10 = v9;
  if (v9 < 0)
  {
    v11 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
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
  buf.__r_.__value_.__r.__words[0] = v10;
  v14 = sub_100009510(&v8[1].__m_.__sig, &buf);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v8);
  v15 = 0;
  v17 = 1;
LABEL_15:
  (*(*v16 + 104))(type, v16, a2, 1, &qword_101FBA670, 0, 0);
  sub_10006DD00(&__p, type);
  buf.__r_.__value_.__r.__words[0] = theArray.__r_.__value_.__r.__words[0];
  theArray.__r_.__value_.__r.__words[0] = __p.__r_.__value_.__r.__words[0];
  __p.__r_.__value_.__r.__words[0] = 0;
  sub_100010250(&buf.__r_.__value_.__l.__data_);
  sub_100010250(&__p.__r_.__value_.__l.__data_);
  sub_10000A1EC(type);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  if (theArray.__r_.__value_.__r.__words[0])
  {
    Count = CFArrayGetCount(theArray.__r_.__value_.__l.__data_);
    if (Count >= 1)
    {
      for (j = 0; j != Count; ++j)
      {
        *type = 0;
        buf.__r_.__value_.__r.__words[0] = CFArrayGetValueAtIndex(theArray.__r_.__value_.__l.__data_, j);
        sub_100060DE8(type, &buf.__r_.__value_.__l.__data_);
        if (*type)
        {
          memset(&__p, 0, sizeof(__p));
          memset(&buf, 0, sizeof(buf));
          ctu::cf::assign();
          __p = buf;
          size = buf.__r_.__value_.__l.__size_;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          if (size)
          {
            sub_100005BA0(v3 + 184, &__p, &__p);
          }

          else
          {
            v22 = *(a1 + 40);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E VpnAgnosticApps contains empty app", &buf, 2u);
            }
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v21 = *(a1 + 40);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#E VpnAgnosticApps does not contain string", &buf, 2u);
          }
        }

        sub_100005978(type);
      }
    }
  }

  else
  {
    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I CB section missed: VpnAgnosticApps", &buf, 2u);
    }
  }

  sub_100010250(&theArray.__r_.__value_.__l.__data_);
  v102 = 0;
  if ((atomic_load_explicit(&qword_101FBA6A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA6A8))
  {
    buf.__r_.__value_.__r.__words[0] = @"NRSlicing";
    buf.__r_.__value_.__l.__size_ = @"ManagedAllowedApps";
    qword_101FBA698 = 0;
    unk_101FBA6A0 = 0;
    qword_101FBA690 = 0;
    sub_10005B328(&qword_101FBA690, &buf, &buf.__r_.__value_.__r.__words[2], 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA690, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA6A8);
  }

  v24 = Registry::getServiceMap(*(a1 + 104));
  v25 = v24;
  v26 = v9;
  if (v9 < 0)
  {
    v27 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v28 = 5381;
    do
    {
      v26 = v28;
      v29 = *v27++;
      v28 = (33 * v28) ^ v29;
    }

    while (v29);
  }

  std::mutex::lock(v24);
  buf.__r_.__value_.__r.__words[0] = v26;
  v30 = sub_100009510(&v25[1].__m_.__sig, &buf);
  if (v30)
  {
    v32 = v30[3];
    v31 = v30[4];
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v25);
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v31);
      v33 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    v32 = 0;
  }

  std::mutex::unlock(v25);
  v31 = 0;
  v33 = 1;
LABEL_44:
  (*(*v32 + 104))(&theArray, v32, a2, 1, &qword_101FBA690, 0, 0);
  sub_10006DD00(&__p, &theArray.__r_.__value_.__l.__data_);
  buf.__r_.__value_.__r.__words[0] = v102;
  v102 = __p.__r_.__value_.__r.__words[0];
  __p.__r_.__value_.__r.__words[0] = 0;
  sub_100010250(&buf.__r_.__value_.__l.__data_);
  sub_100010250(&__p.__r_.__value_.__l.__data_);
  sub_10000A1EC(&theArray.__r_.__value_.__l.__data_);
  if ((v33 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  if (v102)
  {
    v34 = CFArrayGetCount(v102);
    if (v34 >= 1)
    {
      for (k = 0; k != v34; ++k)
      {
        *v101 = 0;
        buf.__r_.__value_.__r.__words[0] = CFArrayGetValueAtIndex(v102, k);
        sub_100060DE8(v101, &buf.__r_.__value_.__l.__data_);
        if (*v101)
        {
          memset(&__p, 0, sizeof(__p));
          memset(&buf, 0, sizeof(buf));
          ctu::cf::assign();
          __p = buf;
          v36 = buf.__r_.__value_.__l.__size_;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          if (v36)
          {
            memset(&buf, 0, sizeof(buf));
            sub_10000501C(&buf, "");
            memset(&theArray, 0, sizeof(theArray));
            sub_10000501C(&theArray, "");
            *type = 0;
            v98 = 0;
            v99 = 0;
            ctu::tokenize();
            if (0xAAAAAAAAAAAAAAABLL * ((v98 - *type) >> 3) >= 2)
            {
              std::string::operator=(&__p, *type);
              std::string::operator=(&buf, (*type + 24));
              if (0xAAAAAAAAAAAAAAABLL * ((v98 - *type) >> 3) >= 3)
              {
                std::string::operator=(&theArray, (*type + 48));
              }
            }

            DataServiceController::addAllowedSliceApp(a1, a2, &__p, &buf, &theArray, 1);
            v103 = type;
            sub_1000087B4(&v103);
            if (SHIBYTE(theArray.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(theArray.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v38 = *(a1 + 40);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#E ManagedAllowedApps contains empty app", &buf, 2u);
            }
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v37 = *(a1 + 40);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#E ManagedAllowedApps does not contain string", &buf, 2u);
          }
        }

        sub_100005978(v101);
      }
    }
  }

  else
  {
    v39 = *(a1 + 40);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I CB section missed: ManagedAllowedApps", &buf, 2u);
    }
  }

  sub_100010250(&v102);
  if ((atomic_load_explicit(&qword_101FBA6C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA6C8))
  {
    buf.__r_.__value_.__r.__words[0] = @"NRSlicing";
    buf.__r_.__value_.__l.__size_ = @"ManagedSliceApps";
    qword_101FBA6B8 = 0;
    unk_101FBA6C0 = 0;
    qword_101FBA6B0 = 0;
    sub_10005B328(&qword_101FBA6B0, &buf, &buf.__r_.__value_.__r.__words[2], 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA6B0, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA6C8);
  }

  __p.__r_.__value_.__r.__words[0] = 0;
  v40 = Registry::getServiceMap(*(a1 + 104));
  v41 = v40;
  v42 = v9;
  if (v9 < 0)
  {
    v43 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v44 = 5381;
    do
    {
      v42 = v44;
      v45 = *v43++;
      v44 = (33 * v44) ^ v45;
    }

    while (v45);
  }

  std::mutex::lock(v40);
  buf.__r_.__value_.__r.__words[0] = v42;
  v46 = sub_100009510(&v41[1].__m_.__sig, &buf);
  if (v46)
  {
    v48 = v46[3];
    v47 = v46[4];
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v41);
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v47);
      v49 = 0;
      goto LABEL_79;
    }
  }

  else
  {
    v48 = 0;
  }

  std::mutex::unlock(v41);
  v47 = 0;
  v49 = 1;
LABEL_79:
  (*(*v48 + 104))(&__p, v48, a2, 1, &qword_101FBA6B0, kCFBooleanFalse, 0);
  if ((v49 & 1) == 0)
  {
    sub_100004A34(v47);
  }

  v50 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
    buf.__r_.__value_.__s.__data_[0] = 0;
    v51 = CFGetTypeID(__p.__r_.__value_.__l.__data_);
    if (v51 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v50, v52);
    }

    if (buf.__r_.__value_.__s.__data_[0] == 1)
    {
      v53 = *(a1 + 40);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I ManagedSliceApps used", &buf, 2u);
      }

      *(v3 + 1) = 257;
      if ((*(v3 + 279) & 0x8000000000000000) != 0)
      {
        if (!*(v3 + 264))
        {
LABEL_91:
          sub_100016890((v3 + 256), kWildCardDnn);
        }
      }

      else if (!*(v3 + 279))
      {
        goto LABEL_91;
      }
    }
  }

  sub_10000A1EC(&__p.__r_.__value_.__l.__data_);
  if ((atomic_load_explicit(&qword_101FBA6E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA6E8))
  {
    buf.__r_.__value_.__r.__words[0] = @"NRSlicing";
    buf.__r_.__value_.__l.__size_ = @"ManagedApps";
    qword_101FBA6D8 = 0;
    unk_101FBA6E0 = 0;
    qword_101FBA6D0 = 0;
    sub_10005B328(&qword_101FBA6D0, &buf, &buf.__r_.__value_.__r.__words[2], 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA6D0, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA6E8);
  }

  __p.__r_.__value_.__r.__words[0] = 0;
  v54 = Registry::getServiceMap(*(a1 + 104));
  v55 = v54;
  if (v9 < 0)
  {
    v56 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v57 = 5381;
    do
    {
      v9 = v57;
      v58 = *v56++;
      v57 = (33 * v57) ^ v58;
    }

    while (v58);
  }

  std::mutex::lock(v54);
  buf.__r_.__value_.__r.__words[0] = v9;
  v59 = sub_100009510(&v55[1].__m_.__sig, &buf);
  if (v59)
  {
    v61 = v59[3];
    v60 = v59[4];
    if (v60)
    {
      atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v55);
      atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v60);
      v62 = 0;
      goto LABEL_101;
    }
  }

  else
  {
    v61 = 0;
  }

  std::mutex::unlock(v55);
  v60 = 0;
  v62 = 1;
LABEL_101:
  (*(*v61 + 104))(&__p, v61, a2, 1, &qword_101FBA6D0, kCFBooleanFalse, 0);
  if ((v62 & 1) == 0)
  {
    sub_100004A34(v60);
  }

  v63 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
    buf.__r_.__value_.__s.__data_[0] = 0;
    v64 = CFGetTypeID(__p.__r_.__value_.__l.__data_);
    if (v64 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v63, v65);
    }

    if (buf.__r_.__value_.__s.__data_[0] == 1)
    {
      v66 = *(a1 + 40);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I managedApps used", &buf, 2u);
      }

      *(v3 + 1) = 1;
      if ((*(v3 + 279) & 0x8000000000000000) != 0)
      {
        if (*(v3 + 264))
        {
          goto LABEL_114;
        }
      }

      else if (*(v3 + 279))
      {
        goto LABEL_114;
      }

      sub_100016890((v3 + 256), kWildCardDnn);
    }
  }

LABEL_114:
  sub_10000A1EC(&__p.__r_.__value_.__l.__data_);
  v67 = Registry::getServiceMap(*(a1 + 104));
  v68 = v67;
  if ((v69 & 0x8000000000000000) != 0)
  {
    v70 = (v69 & 0x7FFFFFFFFFFFFFFFLL);
    v71 = 5381;
    do
    {
      v69 = v71;
      v72 = *v70++;
      v71 = (33 * v71) ^ v72;
    }

    while (v72);
  }

  std::mutex::lock(v67);
  buf.__r_.__value_.__r.__words[0] = v69;
  v73 = sub_100009510(&v68[1].__m_.__sig, &buf);
  if (!v73)
  {
    v74 = 0;
LABEL_122:
    std::mutex::unlock(v68);
    v75 = 0;
    v76 = 1;
    if (!v74)
    {
      goto LABEL_153;
    }

LABEL_123:
    if (*(v3 + 1) != 1)
    {
      goto LABEL_153;
    }

    v95 = v76;
    (*(*v74 + 48))(&buf, v74);
    v78 = buf.__r_.__value_.__l.__size_;
    v77 = buf.__r_.__value_.__r.__words[0];
    if (buf.__r_.__value_.__r.__words[0] == buf.__r_.__value_.__l.__size_)
    {
LABEL_152:
      __p.__r_.__value_.__r.__words[0] = &buf;
      sub_1000087B4(&__p);
      v76 = v95;
      goto LABEL_153;
    }

    while (1)
    {
      v79 = sub_100007A6C(a1 + 4984, v77);
      v80 = *(a1 + 40);
      v81 = os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);
      if (a1 + 4992 == v79)
      {
        if (v81)
        {
          v89 = v77;
          if (v77[23] < 0)
          {
            v89 = *v77;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
          *(__p.__r_.__value_.__r.__words + 4) = "updateCarrierBundleAllowedApps_sync";
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v89;
          v90 = v80;
          v91 = "#I %s: app not installed: %{public}s";
          goto LABEL_150;
        }
      }

      else
      {
        if (v81)
        {
          v82 = v77;
          if (v77[23] < 0)
          {
            v82 = *v77;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
          *(__p.__r_.__value_.__r.__words + 4) = "updateCarrierBundleAllowedApps_sync";
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v82;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "#I %s: app installed: %{public}s", &__p, 0x16u);
        }

        if ((*(v3 + 2) & 1) == 0)
        {
          v92 = *(a1 + 40);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
          {
            v93 = v77;
            if (v77[23] < 0)
            {
              v93 = *v77;
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
            *(__p.__r_.__value_.__r.__words + 4) = "updateCarrierBundleAllowedApps_sync";
            WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = v93;
            v87 = v92;
            v88 = "#I %s: app managed: %{public}s";
LABEL_144:
            _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, v88, &__p, 0x16u);
          }

LABEL_145:
          DataServiceController::addAllowedSliceApp(a1, a2, v77, 1);
          goto LABEL_151;
        }

        v83 = (*(*v74 + 64))(v74, v77);
        v84 = *(a1 + 40);
        v85 = os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT);
        if (v83)
        {
          if (v85)
          {
            v86 = v77;
            if (v77[23] < 0)
            {
              v86 = *v77;
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
            *(__p.__r_.__value_.__r.__words + 4) = "updateCarrierBundleAllowedApps_sync";
            WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = v86;
            v87 = v84;
            v88 = "#I %s: app managed and sliced: %{public}s";
            goto LABEL_144;
          }

          goto LABEL_145;
        }

        if (v85)
        {
          v94 = v77;
          if (v77[23] < 0)
          {
            v94 = *v77;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
          *(__p.__r_.__value_.__r.__words + 4) = "updateCarrierBundleAllowedApps_sync";
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v94;
          v90 = v84;
          v91 = "#I %s: app managed but not sliced: %{public}s";
LABEL_150:
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, v91, &__p, 0x16u);
        }
      }

LABEL_151:
      v77 += 24;
      if (v77 == v78)
      {
        goto LABEL_152;
      }
    }
  }

  v74 = v73[3];
  v75 = v73[4];
  if (!v75)
  {
    goto LABEL_122;
  }

  atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v68);
  atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v75);
  v76 = 0;
  if (v74)
  {
    goto LABEL_123;
  }

LABEL_153:
  if ((v76 & 1) == 0)
  {
    sub_100004A34(v75);
  }
}

const void **DataServiceController::updateCarrierBundleSlicingOsId_sync(uint64_t a1, uint64_t a2)
{
  LODWORD(uu.__r_.__value_.__l.__data_) = a2;
  v4 = *sub_100007DEC(a1 + 4960, &uu);
  *(v4 + 208) = 0;
  if (*(v4 + 255) < 0)
  {
    *(v4 + 240) = 0;
    v5 = *(v4 + 232);
  }

  else
  {
    *(v4 + 255) = 0;
    v5 = (v4 + 232);
  }

  *v5 = 0;
  *(v4 + 209) = 0;
  v6 = (v4 + 209);
  *(v4 + 217) = 0;
  *type = 0;
  theArray = 0;
  if ((atomic_load_explicit(&qword_101FBA708, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA708))
  {
    uu.__r_.__value_.__r.__words[0] = @"NRSlicing";
    uu.__r_.__value_.__l.__size_ = @"OsId";
    qword_101FBA6F8 = 0;
    unk_101FBA700 = 0;
    qword_101FBA6F0 = 0;
    sub_10005B328(&qword_101FBA6F0, &uu, &uu.__r_.__value_.__r.__words[2], 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA6F0, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA708);
  }

  __p.__r_.__value_.__r.__words[0] = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v8 = ServiceMap;
  v10 = v9;
  if ((v9 & 0x8000000000000000) != 0)
  {
    v11 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
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
  uu.__r_.__value_.__r.__words[0] = v10;
  v14 = sub_100009510(&v8[1].__m_.__sig, &uu);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v8);
  v15 = 0;
  v17 = 1;
LABEL_13:
  (*(*v16 + 104))(&__p, v16, a2, 1, &qword_101FBA6F0, 0, 0);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    sub_10006DD00(&v45, &__p.__r_.__value_.__l.__data_);
    v18 = theArray;
    theArray = v45;
    uu.__r_.__value_.__r.__words[0] = v18;
    v45 = 0;
    sub_100010250(&uu.__r_.__value_.__l.__data_);
    sub_100010250(&v45);
    goto LABEL_30;
  }

  if ((atomic_load_explicit(&qword_101FBA728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA728))
  {
    uu.__r_.__value_.__r.__words[0] = @"NRSlicing";
    uu.__r_.__value_.__l.__size_ = @"OsIdStr";
    qword_101FBA718 = 0;
    unk_101FBA720 = 0;
    qword_101FBA710 = 0;
    sub_10005B328(&qword_101FBA710, &uu, &uu.__r_.__value_.__r.__words[2], 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA710, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA728);
  }

  v19 = Registry::getServiceMap(*(a1 + 104));
  v20 = v19;
  if ((v9 & 0x8000000000000000) != 0)
  {
    v21 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v22 = 5381;
    do
    {
      v9 = v22;
      v23 = *v21++;
      v22 = (33 * v22) ^ v23;
    }

    while (v23);
  }

  std::mutex::lock(v19);
  uu.__r_.__value_.__r.__words[0] = v9;
  v24 = sub_100009510(&v20[1].__m_.__sig, &uu);
  if (!v24)
  {
    v26 = 0;
    goto LABEL_25;
  }

  v26 = v24[3];
  v25 = v24[4];
  if (!v25)
  {
LABEL_25:
    std::mutex::unlock(v20);
    v25 = 0;
    v27 = 1;
    goto LABEL_26;
  }

  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v20);
  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v25);
  v27 = 0;
LABEL_26:
  (*(*v26 + 104))(&v45, v26, a2, 1, &qword_101FBA710, 0, 0);
  uu.__r_.__value_.__r.__words[0] = __p.__r_.__value_.__r.__words[0];
  __p.__r_.__value_.__r.__words[0] = v45;
  v45 = 0;
  sub_10000A1EC(&uu.__r_.__value_.__l.__data_);
  sub_10000A1EC(&v45);
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  if (!__p.__r_.__value_.__r.__words[0])
  {
    v40 = *(a1 + 40);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(uu.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I OsId: empty (1)", &uu, 2u);
    }

    sub_10000A1EC(&__p.__r_.__value_.__l.__data_);
    goto LABEL_65;
  }

  sub_100060DE8(&v45, &__p.__r_.__value_.__l.__data_);
  v28 = v45;
  uu.__r_.__value_.__r.__words[0] = *type;
  v45 = 0;
  *type = v28;
  sub_100005978(&uu.__r_.__value_.__l.__data_);
  sub_100005978(&v45);
LABEL_30:
  sub_10000A1EC(&__p.__r_.__value_.__l.__data_);
  if (!theArray)
  {
    if (!*type)
    {
      v41 = *(a1 + 40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(uu.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#E OsId: empty (2)", &uu, 2u);
      }

      goto LABEL_65;
    }

    memset(&uu, 0, sizeof(uu));
    ctu::cf::assign();
    __p = uu;
    *&uu.__r_.__value_.__l.__data_ = 0uLL;
    if ((uu.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (uuid_parse(p_p, &uu))
    {
      size = __p.__r_.__value_.__l.__size_;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      v36 = 16;
      if (size < 0x10)
      {
        v36 = size;
      }

      if (size)
      {
        v37 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v37 = __p.__r_.__value_.__r.__words[0];
        }

        do
        {
          v38 = v37->__r_.__value_.__s.__data_[0];
          v37 = (v37 + 1);
          *v6++ = v38;
          --v36;
        }

        while (v36);
      }
    }

    else
    {
      for (i = 0; i != 16; ++i)
      {
        v6[i] = uu.__r_.__value_.__s.__data_[i];
      }
    }

    std::string::operator=((v4 + 232), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_64:
    *(v4 + 208) = 1;
    goto LABEL_65;
  }

  Count = CFArrayGetCount(theArray);
  v30 = Count - 1;
  if (Count < 1)
  {
    goto LABEL_64;
  }

  v31 = 0;
  if (v30 >= 0xF)
  {
    v30 = 15;
  }

  v32 = v30 + 1;
  while (1)
  {
    uu.__r_.__value_.__r.__words[0] = 0;
    __p.__r_.__value_.__r.__words[0] = CFArrayGetValueAtIndex(theArray, v31);
    sub_1002AF4F0(&uu, &__p.__r_.__value_.__l.__data_);
    if (!uu.__r_.__value_.__r.__words[0])
    {
      break;
    }

    __p.__r_.__value_.__s.__data_[0] = 0;
    ctu::cf::assign(&__p, uu.__r_.__value_.__l.__data_, v33);
    v6[v31] = __p.__r_.__value_.__s.__data_[0];
    sub_100029A48(&uu.__r_.__value_.__l.__data_);
    if (v32 == ++v31)
    {
      goto LABEL_64;
    }
  }

  v39 = *(a1 + 40);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#E OsId value incorrect", &__p, 2u);
  }

  sub_100029A48(&uu.__r_.__value_.__l.__data_);
LABEL_65:
  sub_100005978(type);
  return sub_100010250(&theArray);
}

void sub_1004BAC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14)
{
  __cxa_guard_abort(&qword_101FBA728);
  sub_10000A1EC(&a9);
  sub_100005978(&a13);
  sub_100010250(&a14);
  _Unwind_Resume(a1);
}

uint64_t DataServiceController::getSlicingConfiguredInfo(uint64_t a1, int a2)
{
  v10 = a2;
  v3 = sub_100007DEC(a1 + 4960, &v10);
  v4 = *v3;
  v5 = **v3;
  if (v5 != 1)
  {
    v7 = 0;
    v6 = 0;
LABEL_11:
    v8 = 0;
    return v7 | v6 | v8 | v5;
  }

  if ((v4[1] & 1) != 0 || v4[2] == 1)
  {
    v6 = *(a1 + 5347) << 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4[15] << 16;
  if (v4[12] != 1 || (v4[13] & 1) == 0 && v4[14] != 1)
  {
    goto LABEL_11;
  }

  v8 = 0x1000000;
  return v7 | v6 | v8 | v5;
}

uint64_t sub_1004BAE14(uint64_t a1, int *a2, int *a3)
{
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *a2;
    v8 = a1 + 8;
    do
    {
      if (*(v6 + 28) >= v7)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 28) < v7));
    }

    while (v6);
    if (v8 != v5 && v7 >= *(v8 + 28))
    {
      *(v8 + 32) = *a3;
      return v8;
    }

    v5 = v8;
  }

  return sub_1004C558C(a1, v5, a2, a2, a3);
}

void DataServiceController::setManagedConfigListener_sync(DataServiceController *this, int a2)
{
  if (*(this + 5224) != a2)
  {
    v2 = a2;
    if (a2)
    {
      sub_100004AA0(&__p, this + 1);
      v4 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v4);
      }

      ServiceMap = Registry::getServiceMap(*(this + 13));
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
      __p = v7;
      v11 = sub_100009510(&v6[1].__m_.__sig, &__p);
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
          if (!v13)
          {
            goto LABEL_30;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v13 = 0;
      }

      std::mutex::unlock(v6);
      v12 = 0;
      v14 = 1;
      if (!v13)
      {
LABEL_30:
        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        if (v4)
        {
          std::__shared_weak_count::__release_weak(v4);
        }

LABEL_34:
        *(this + 5224) = v2;
        return;
      }

LABEL_27:
      sub_10000501C(&__p, "slice");
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = 0;
      operator new();
    }

    v15 = Registry::getServiceMap(*(this + 13));
    v16 = v15;
    if (v17 < 0)
    {
      v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
      v19 = 5381;
      do
      {
        v17 = v19;
        v20 = *v18++;
        v19 = (33 * v19) ^ v20;
      }

      while (v20);
    }

    std::mutex::lock(v15);
    __p = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, &__p);
    if (v21)
    {
      v23 = v21[3];
      v22 = v21[4];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v16);
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v22);
        v24 = 0;
        if (!v23)
        {
LABEL_23:
          if ((v24 & 1) == 0)
          {
            sub_100004A34(v22);
          }

          goto LABEL_34;
        }

LABEL_21:
        sub_10000501C(&__p, "slice");
        (*(*v23 + 144))(v23, &__p);
        if (v27 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v23 = 0;
    }

    std::mutex::unlock(v16);
    v22 = 0;
    v24 = 1;
    if (!v23)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }
}

void sub_1004BB1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_10002B644(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
    if (v17)
    {
LABEL_3:
      if (!v15)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v15);
      goto LABEL_8;
    }
  }

  else if (v17)
  {
    goto LABEL_3;
  }

  sub_100004A34(v16);
  if (!v15)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void DataServiceController::managedDeviceSliceInfo(uint64_t a1, NSObject ***a2, BOOL *a3, BOOL *a4)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 104));
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
  *v37 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, v37);
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
        goto LABEL_7;
      }

      goto LABEL_11;
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
LABEL_7:
    v18 = **a2;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = asStringBool(*a3);
      v20 = asStringBool(*a4);
      sub_10177265C(v19, v20, v37, v18);
    }

    goto LABEL_33;
  }

LABEL_11:
  *a3 = (*(*v16 + 72))(v16);
  v21 = (*(*a1 + 1120))(a1);
  v22 = *(a1 + 112);
  *v37 = *(a1 + 104);
  *&v37[8] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  isValidSimSlot = subscriber::isValidSimSlot();
  if (*&v37[8])
  {
    sub_100004A34(*&v37[8]);
  }

  if (!isValidSimSlot)
  {
    v25 = 0;
    v26 = 0;
LABEL_22:
    v29 = 0;
    goto LABEL_31;
  }

  *v37 = v21;
  v24 = sub_100007DEC(a1 + 4960, v37);
  v25 = **v24;
  v26 = *(*v24 + 1);
  if (*(*v24 + 2) == 1)
  {
    (*(*v16 + 48))(v37, v16);
    v27 = *v37;
    v28 = *&v37[8];
    while (v27 != v28)
    {
      if ((*(*v16 + 64))(v16, v27))
      {
        v30 = **a2;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v27 + 23) < 0)
          {
            v27 = *v27;
          }

          *buf = 136446210;
          *&buf[4] = v27;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I app managed and sliced: %{public}s", buf, 0xCu);
        }

        *a4 = 1;
        break;
      }

      v27 += 3;
    }

    *buf = v37;
    sub_1000087B4(buf);
    v29 = 1;
    goto LABEL_31;
  }

  if (!*(*v24 + 1))
  {
    goto LABEL_22;
  }

  (*(*v16 + 48))(v37, v16);
  *a4 = *&v37[8] != *v37;
  *buf = v37;
  sub_1000087B4(buf);
  v29 = 0;
  v26 = 1;
LABEL_31:
  v31 = **a2;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = asStringBool(*a3);
    v33 = asStringBool(*a4);
    v34 = asStringBool(v25);
    v35 = asStringBool(v26);
    v36 = asStringBool(v29);
    *v37 = 136316162;
    *&v37[4] = v32;
    *&v37[12] = 2080;
    *&v37[14] = v33;
    v38 = 2080;
    v39 = v34;
    v40 = 2080;
    v41 = v35;
    v42 = 2080;
    v43 = v36;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I supervisedDevice: %s managedDevice: %s (enabled = %s managedApps = %s managedSliceApps = %s)", v37, 0x34u);
  }

LABEL_33:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_1004BB690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::getLLPHSState_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 1) & 1) == 0)
  {
    DataServiceController::makeDataSimSlotRange(a1, 3, &__p);
    v6 = __p;
    v7 = v19;
    if (__p != v19)
    {
      do
      {
        v20 = *v6;
        if (**sub_100007DEC(a1 + 4960, &v20) == 1)
        {
          *a2 = 257;
        }

        ++v6;
      }

      while (v6 != v7);
      v6 = __p;
    }

    if (v6)
    {
      v19 = v6;
      operator delete(v6);
    }
  }

  if ((*(a3 + 1) & 1) == 0)
  {
    DataServiceController::makeDataSimSlotRange(a1, 3, &__p);
    v8 = __p;
    v9 = v19;
    if (__p != v19)
    {
      do
      {
        v20 = *v8;
        v10 = sub_100007DEC(a1 + 4960, &v20);
        v11 = *v10;
        if (*(*v10 + 12) == 1 && ((*(v11 + 13) & 1) != 0 || *(v11 + 14) == 1))
        {
          *a3 = 257;
        }

        ++v8;
      }

      while (v8 != v9);
      v8 = __p;
    }

    if (v8)
    {
      v19 = v8;
      operator delete(v8);
    }
  }

  DataServiceController::makeDataSimSlotRange(a1, 3, &__p);
  v12 = __p;
  v13 = v19;
  if (__p == v19)
  {
    v14 = 0;
    if (__p)
    {
LABEL_28:
      v19 = v12;
      operator delete(v12);
    }
  }

  else
  {
    v14 = 0;
    do
    {
      v20 = *v12;
      v15 = sub_100007DEC(a1 + 4960, &v20);
      v16 = *(*v15 + 56);
      v17 = *(*v15 + 64);
      while (v16 != v17)
      {
        if (TrafficDescriptor::hasAccountInfo(v16))
        {
          v14 = 1;
          break;
        }

        v16 = (v16 + 304);
      }

      ++v12;
    }

    while (v12 != v13);
    v12 = __p;
    if (__p)
    {
      goto LABEL_28;
    }
  }

  if ((v14 & 1) == 0)
  {
    *a3 = 256;
  }
}

void sub_1004BB8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::addAllowedSliceApp(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  if (*(a1 + 5348) == 1)
  {
    for (i = 0; i != 3; ++i)
    {
      v12 = strlen(off_101E50158[i]);
      v13 = v12;
      v14 = *(a3 + 23);
      if (v14 < 0)
      {
        if (v12 == *(a3 + 8))
        {
          if (v12 == -1)
          {
            sub_10013C334();
          }

          v15 = *a3;
LABEL_9:
          if (!memcmp(v15, off_101E50158[i], v13))
          {
            sub_100005BA0(a1 + 5280, a3, a3);
          }
        }
      }

      else
      {
        v15 = a3;
        if (v13 == v14)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v60 = a5;
  DataServiceController::makeDataSimSlotRange(a1, a2, &v69);
  v16 = v69;
  v58 = v70;
  if (v69 != v70)
  {
    v57 = a1 + 4992;
    do
    {
      v68 = *v16;
      LODWORD(__p[0]) = v68;
      v17 = *sub_100007DEC(a1 + 4960, __p);
      v67 = 0;
      SlicingConfiguredInfo = DataServiceController::getSlicingConfiguredInfo(a1, v68);
      SlicingSupportInfo = 0;
      v67 = SlicingConfiguredInfo;
      v77 = 0;
      SlicingSupportInfo = DataServiceController::getSlicingSupportInfo(a1, v68, v76);
      sub_100007E44(v76);
      v19 = *(a3 + 23);
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(a3 + 8);
      }

      if (!v19)
      {
        break;
      }

      if (*(a1 + 5348) == 1)
      {
        v20 = *(v17 + 184);
        if (v20 != (v17 + 192))
        {
          do
          {
            v21 = *(a3 + 23);
            if (v21 >= 0)
            {
              v22 = *(a3 + 23);
            }

            else
            {
              v22 = *(a3 + 8);
            }

            v23 = *(v20 + 55);
            v24 = v23;
            if ((v23 & 0x80u) != 0)
            {
              v23 = v20[5];
            }

            if (v22 == v23)
            {
              v25 = v21 >= 0 ? a3 : *a3;
              v26 = v24 >= 0 ? v20 + 4 : v20[4];
              if (!memcmp(v25, v26, v22))
              {
                sub_100005BA0(a1 + 5280, a3, a3);
              }
            }

            v27 = v20[1];
            if (v27)
            {
              do
              {
                v28 = v27;
                v27 = *v27;
              }

              while (v27);
            }

            else
            {
              do
              {
                v28 = v20[2];
                v30 = *v28 == v20;
                v20 = v28;
              }

              while (!v30);
            }

            v20 = v28;
          }

          while (v28 != (v17 + 192));
        }
      }

      sub_100005BA0(v17 + 104, a3, a3);
      v29 = *(a3 + 23);
      if (v29 < 0)
      {
        if (*(a3 + 8) != 17)
        {
          goto LABEL_74;
        }

        v32 = *a3;
        if (**a3 != 0x637369632E6D6F63 || *(*a3 + 8) != 0x6572617571732E6FLL || *(*a3 + 16) != 100)
        {
LABEL_48:
          v33 = *v32;
          v34 = v32[1];
          v35 = *(v32 + 16);
          if (v33 != 0x656265772E6D6F63 || v34 != 0x6E697465656D2E78 || v35 != 103)
          {
            goto LABEL_74;
          }

          sub_10000501C(__p, "com.cisco.squared");
          v38 = sub_100007A6C(a1 + 4984, __p);
          if (SHIBYTE(v64[0]) < 0)
          {
            operator delete(__p[0]);
          }

          if (v57 == v38)
          {
            goto LABEL_74;
          }

          sub_10000501C(__p, "com.cisco.squared");
          sub_10017695C((v17 + 104), __p, __p);
          goto LABEL_73;
        }
      }

      else
      {
        if (v29 != 17)
        {
          goto LABEL_74;
        }

        v30 = *a3 == 0x637369632E6D6F63 && *(a3 + 8) == 0x6572617571732E6FLL;
        v31 = v30 && *(a3 + 16) == 100;
        v32 = a3;
        if (!v31)
        {
          goto LABEL_48;
        }
      }

      sub_10000501C(__p, "com.webex.meeting");
      v41 = sub_100007A6C(a1 + 4984, __p);
      if (SHIBYTE(v64[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (v57 == v41)
      {
LABEL_74:
        if (a6)
        {
          goto LABEL_76;
        }

        goto LABEL_75;
      }

      sub_10000501C(__p, "com.webex.meeting");
      sub_10017695C((v17 + 104), __p, __p);
LABEL_73:
      if ((SHIBYTE(v64[0]) & 0x80000000) == 0)
      {
        goto LABEL_74;
      }

      operator delete(__p[0]);
      if (a6)
      {
LABEL_76:
        if (*(v60 + 23) < 0)
        {
          sub_100005F2C(__p, *v60, *(v60 + 8));
        }

        else
        {
          *__p = *v60;
          v64[0] = *(v60 + 16);
        }

        if (*(a4 + 23) < 0)
        {
          sub_100005F2C(&v64[1], *a4, *(a4 + 8));
        }

        else
        {
          *&v64[1] = *a4;
          v65 = *(a4 + 16);
        }

        v42 = *(v17 + 144);
        if (!v42)
        {
          goto LABEL_89;
        }

        v43 = (v17 + 144);
        while (1)
        {
          while (1)
          {
            v44 = v42;
            if ((sub_1000068BC(a3, v42 + 32) & 0x80) == 0)
            {
              break;
            }

            v42 = *v44;
            v43 = v44;
            if (!*v44)
            {
              goto LABEL_89;
            }
          }

          if ((sub_1000068BC(v44 + 4, a3) & 0x80) == 0)
          {
            break;
          }

          v43 = (v44 + 8);
          v42 = *(v44 + 1);
          if (!v42)
          {
            goto LABEL_89;
          }
        }

        v56 = *v43;
        if (!*v43)
        {
LABEL_89:
          operator new();
        }

        if (*(v56 + 79) < 0)
        {
          operator delete(*(v56 + 56));
        }

        *(v56 + 56) = *__p;
        *(v56 + 72) = v64[0];
        HIBYTE(v64[0]) = 0;
        LOBYTE(__p[0]) = 0;
        if (*(v56 + 103) < 0)
        {
          operator delete(*(v56 + 80));
          v48 = SHIBYTE(v64[0]);
          *(v56 + 80) = *&v64[1];
          *(v56 + 96) = v65;
          HIBYTE(v65) = 0;
          LOBYTE(v64[1]) = 0;
          if (v48 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *(v56 + 80) = *&v64[1];
          *(v56 + 96) = v65;
        }

        v49 = *(v60 + 23);
        if ((v49 & 0x80u) != 0)
        {
          v49 = *(v60 + 8);
        }

        if (v49)
        {
          sub_100005BA0(v17 + 160, v60, v60);
        }

        sub_1004C12FC(a1 + 5008, &qword_101808708, &qword_101808708);
        sub_1004C12FC(a1 + 5032, &qword_101808708, &qword_101808708);
        a6 = 1;
        goto LABEL_109;
      }

LABEL_75:
      if (DataServiceController::isManagedApp(a1, v68, a3))
      {
        goto LABEL_76;
      }

      __p[0] = 0;
      __p[1] = 0;
      v64[0] = 0;
      (*(*a1 + 2360))(__p, a1, a3);
      v45 = __p[0];
      if (__p[0] != &__p[1])
      {
        do
        {
          sub_1004C12FC(a1 + 5008, v45 + 4, v45 + 4);
          sub_1004C12FC(a1 + 5032, v45 + 4, v45 + 4);
          v46 = v45[1];
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
              v47 = v45[2];
              v30 = *v47 == v45;
              v45 = v47;
            }

            while (!v30);
          }

          v45 = v47;
        }

        while (v47 != &__p[1]);
      }

      sub_10006DCAC(__p, __p[1]);
      a6 = 0;
LABEL_109:
      a5 = a5 & 0xFFFFFFFF00000000 | v68;
      v75[0] = off_101E509A8;
      v75[1] = a1;
      v75[2] = a5;
      v75[3] = v75;
      v62 = 0;
      v50 = DataServiceController::getSlicingConfiguredInfo(a1, v68);
      v61 = 0;
      v62 = v50;
      v51 = v68;
      if (*(v17 + 120) == 1)
      {
        sub_1001058C4(v73, v75);
      }

      else
      {
        v74 = 0;
      }

      v61 = DataServiceController::getSlicingSupportInfo(a1, v51, v73);
      sub_100007E44(v73);
      if ((rest::operator==() & 1) == 0)
      {
        v52 = *(a1 + 40);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          rest::SlicingSupportInfo::toString(__p, &v62);
          v53 = v64[0] >= 0 ? __p : __p[0];
          *buf = 136315138;
          v72 = v53;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I update slicing: data_slicing_configured = %s (2)", buf, 0xCu);
          if (SHIBYTE(v64[0]) < 0)
          {
            operator delete(__p[0]);
          }
        }

        __p[0] = 1;
        memset(v64, 0, sizeof(v64));
        __p[1] = (a1 + 4272);
        sub_1004C5380(v64, a1 + 4304);
        sub_1004BAE14(v64, &v68, &v62);
        sub_1004C53D8(__p);
      }

      if ((rest::operator==() & 1) == 0)
      {
        v54 = *(a1 + 40);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          rest::SlicingSupportInfo::toString(__p, &v61);
          v55 = v64[0] >= 0 ? __p : __p[0];
          *buf = 136315138;
          v72 = v55;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I update slicing: data_slicing_support = %s (2)", buf, 0xCu);
          if (SHIBYTE(v64[0]) < 0)
          {
            operator delete(__p[0]);
          }
        }

        __p[0] = 1;
        memset(v64, 0, sizeof(v64));
        __p[1] = (a1 + 4328);
        sub_1004C5380(v64, a1 + 4360);
        sub_1004BAE14(v64, &v68, &v61);
        sub_1004C5638(__p);
      }

      sub_100007E44(v75);
      ++v16;
    }

    while (v16 != v58);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }
}

void sub_1004BC2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BC3F0(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1000CE3D4();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_10006A8B4(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

uint64_t DataServiceController::isSlicingEnabledInCarrierBundle_sync(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 112);
  v8 = *(a1 + 104);
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  isValidSimSlot = subscriber::isValidSimSlot();
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (isValidSimSlot)
  {
    LODWORD(v8) = v2;
    v6 = **sub_100007DEC(a1 + 4960, &v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1004BC564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::processUrsp_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 144);
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  if (v7 != v6)
  {
    v11 = a2;
    do
    {
      v14 = v7[52];
      v13 = v7[53];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v15 = *(v14 + 52);
        sub_100004A34(v13);
      }

      else
      {
        v15 = *(v14 + 52);
      }

      if (v15 == v11)
      {
        v16 = v7[50];
        if (v16)
        {
          v17 = *(a1 + 40);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = subscriber::asString();
            *buf = 136315138;
            v20 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I processUrsp_sync on simSlot %s", buf, 0xCu);
            v16 = v7[50];
          }

          (*(*v16 + 40))(v16, a3, a4, a5);
        }
      }

      v7 += 54;
    }

    while (v7 != v6);
  }
}

void DataServiceController::updateHomePlmnUrspList_sync(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v3 != v4)
  {
    v5 = a2;
    do
    {
      v8 = v3[52];
      v7 = v3[53];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(v8 + 52);
        sub_100004A34(v7);
      }

      else
      {
        v9 = *(v8 + 52);
      }

      if (v9 == v5)
      {
        v10 = v3[50];
        if (v10)
        {
          v11 = *(a1 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = subscriber::asString();
            *buf = 136315138;
            v14 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I updateHomePlmnUrspList_sync on simSlot %s", buf, 0xCu);
            v10 = v3[50];
          }

          (*(*v10 + 48))(v10, 1);
        }
      }

      v3 += 54;
    }

    while (v3 != v4);
  }
}

void DataServiceController::updateAllowedNssaiList_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 144);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v4 != v5)
  {
    v7 = a2;
    do
    {
      v10 = v4[52];
      v9 = v4[53];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = *(v10 + 52);
        sub_100004A34(v9);
      }

      else
      {
        v11 = *(v10 + 52);
      }

      if (v11 == v7)
      {
        v12 = v4[50];
        if (v12)
        {
          v13 = *(a1 + 40);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = subscriber::asString();
            *buf = 136315138;
            v16 = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I updateAllowedNssaiList_sync on simSlot %s", buf, 0xCu);
            v12 = v4[50];
          }

          (*(*v12 + 56))(v12, a3);
        }
      }

      v4 += 54;
    }

    while (v4 != v5);
  }
}

void *DataServiceController::allTdCombinationsFromUrsp_sync(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v3 == v4)
  {
    return &unk_101808718;
  }

  v5 = a2;
  v7 = &unk_101808718;
  while (1)
  {
    v9 = v3[52];
    v8 = v3[53];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *(v9 + 52);
      sub_100004A34(v8);
    }

    else
    {
      v10 = *(v9 + 52);
    }

    if (v10 == v5)
    {
      v11 = v3[50];
      if (v11)
      {
        break;
      }
    }

    v3 += 54;
    if (v3 == v4)
    {
      return v7;
    }
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I allTdCombinationsFromUrsp_sync on simSlot %s", &v14, 0xCu);
    v11 = v3[50];
  }

  return (*(*v11 + 64))(v11);
}

void DataServiceController::resetAllUrspRules_sync(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3 == 8 || a3 == 1)
  {
    v5 = *(a1 + 144);
    v6 = *(v5 + 8);
    for (i = *(v5 + 16); v6 != i; v6 += 54)
    {
      v9 = v6[52];
      v8 = v6[53];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = *(v9 + 52);
        sub_100004A34(v8);
      }

      else
      {
        v10 = *(v9 + 52);
      }

      if (v10 == v3)
      {
        v11 = v6[50];
        if (v11)
        {
          v12 = *(a1 + 40);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = subscriber::asString();
            *buf = 136315138;
            v15 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I resetAllUrspRules_sync on simSlot %s", buf, 0xCu);
            v11 = v6[50];
          }

          (*(*v11 + 72))(v11);
        }
      }
    }
  }
}

uint64_t DataServiceController::evaluateUrspWithTd_sync(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[18];
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  if (v7 == v8)
  {
LABEL_9:
    *buf = a1;
    sub_1001058C4(&buf[8], a4);
    v18[0] = 0;
    v18[1] = 0;
    sub_100004AA0(v18, a1 + 1);
    operator new();
  }

  v10 = a2;
  while (1)
  {
    v12 = v7[52];
    v11 = v7[53];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *(v12 + 52);
      sub_100004A34(v11);
    }

    else
    {
      v13 = *(v12 + 52);
    }

    if (v13 == v10)
    {
      v14 = v7[50];
      if (v14)
      {
        break;
      }
    }

    v7 += 54;
    if (v7 == v8)
    {
      goto LABEL_9;
    }
  }

  v15 = a1[5];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I evaluateUrspWithTd_sync on simSlot %s", buf, 0xCu);
    v14 = v7[50];
  }

  sub_1001058C4(v20, a4);
  v16 = (*(*v14 + 80))(v14, a3, v20);
  sub_100007E44(v20);
  return v16;
}

void sub_1004BCEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_100007E44(va);
  _Unwind_Resume(a1);
}

uint64_t DataServiceController::checkSliceDataStall(DataServiceController *this, int a2)
{
  v3 = *(this + 14);
  *v105 = *(this + 13);
  *&v105[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (*&v105[8])
  {
    sub_100004A34(*&v105[8]);
  }

  v76 = v103;
  v78 = v102;
  if (v102 != v103)
  {
    v75 = v104;
    do
    {
      if (v104(*v78))
      {
        break;
      }

      ++v78;
    }

    while (v78 != v103);
    v66 = v103;
    if (v78 != v103)
    {
      v4 = this + 5376;
      do
      {
        v77 = *v78;
        v5 = 28;
        while (1)
        {
          v100 = 0;
          v101 = 0;
          DataServiceController::getConnection_sync(this, v77, v5, &v100);
          if (v100 && ((*(*v100 + 168))(v100) & 1) != 0 && (*(*v100 + 200))(v100) == a2)
          {
            __p[0] = 0;
            __p[1] = 0;
            v99 = 0;
            v6 = (*(*v100 + 416))(v100, __p);
            v8 = v6 + 1;
            v7 = *v6;
            if (*v6 != v6 + 1)
            {
              while (1)
              {
                v9 = *(this + 5);
                if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                {
                  TrafficDescriptor::toString(v105, (v7 + 4));
                  v10 = v105;
                  if (v105[23] < 0)
                  {
                    v10 = *v105;
                  }

                  *buf = 136446210;
                  *&buf[4] = v10;
                  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I checkSliceDataStall ???: %{public}s", buf, 0xCu);
                  if ((v105[23] & 0x80000000) != 0)
                  {
                    operator delete(*v105);
                  }
                }

                if (DataServiceController::isInternalSliceApp_sync(this, (v7 + 4)))
                {
                  v11 = *(this + 671);
                  if (v11 == v4)
                  {
LABEL_34:
                    v15 = *(this + 5);
                    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_142;
                    }

                    v16 = asString();
                    TrafficDescriptor::toString(buf, (v7 + 4));
                    v17 = buf;
                    if ((buf[23] & 0x80u) != 0)
                    {
                      v17 = *buf;
                    }

                    *v105 = 136315650;
                    *&v105[4] = v16;
                    *&v105[12] = 2048;
                    *&v105[14] = 9000;
                    *&v105[22] = 2082;
                    *&v105[24] = v17;
                    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I checkSliceDataStall: do not report slice connection %s because TD does not belong to %llu: internal traffic descriptor: %{public}s", v105, 0x20u);
                    if ((buf[23] & 0x80000000) == 0)
                    {
                      goto LABEL_142;
                    }

                    v18 = *buf;
                    goto LABEL_59;
                  }

                  while (1)
                  {
                    if (*(v7 + 40))
                    {
                      v12 = *(v7 + 9) == *(v11 + 8) && *(v11 + 5) == 9000;
                      if (v12)
                      {
                        break;
                      }
                    }

                    v13 = *(v11 + 1);
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
                        v14 = *(v11 + 2);
                        v12 = *v14 == v11;
                        v11 = v14;
                      }

                      while (!v12);
                    }

                    v11 = v14;
                    if (v14 == v4)
                    {
                      goto LABEL_34;
                    }
                  }
                }

                else
                {
                  if ((TrafficDescriptor::hasBundleInfo((v7 + 4)) & 1) == 0)
                  {
                    v23 = *(this + 5);
                    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_142;
                    }

                    v24 = asString();
                    TrafficDescriptor::toString(v105, (v7 + 4));
                    v25 = v105;
                    if (v105[23] < 0)
                    {
                      v25 = *v105;
                    }

                    *buf = 136315394;
                    *&buf[4] = v24;
                    *&buf[12] = 2082;
                    *&buf[14] = v25;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I checkSliceDataStall: do not report slice connection %s because TD has non-bundle-id based traffic descriptor: %{public}s", buf, 0x16u);
                    if ((v105[23] & 0x80000000) == 0)
                    {
                      goto LABEL_142;
                    }

                    v18 = *v105;
LABEL_59:
                    operator delete(v18);
                    goto LABEL_142;
                  }

                  memset(buf, 0, sizeof(buf));
                  if ((v7[13] & 1) == 0)
                  {
                    sub_1000D1644();
                  }

                  (*(*this + 2360))(buf, this, v7 + 10);
                  v19 = *&buf[8];
                  if (!*&buf[8])
                  {
                    goto LABEL_60;
                  }

                  v20 = &buf[8];
                  v21 = *&buf[8];
                  do
                  {
                    if (*(v21 + 32) >> 3 < 0x465uLL)
                    {
                      v22 = 1;
                    }

                    else
                    {
                      v20 = v21;
                      v22 = 0;
                    }

                    v21 = *(v21 + 8 * v22);
                  }

                  while (v21);
                  if (v20 == &buf[8] || *(v20 + 4) >= 0x2329uLL)
                  {
LABEL_60:
                    v26 = *(this + 5);
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                    {
                      v27 = asString();
                      TrafficDescriptor::toString(v112, (v7 + 4));
                      v28 = v112;
                      if (v115 < 0)
                      {
                        v28 = *v112;
                      }

                      *v105 = 136315650;
                      *&v105[4] = v27;
                      *&v105[12] = 2048;
                      *&v105[14] = 9000;
                      *&v105[22] = 2082;
                      *&v105[24] = v28;
                      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I checkSliceDataStall: do not report slice connection %s because TD does not belong to %llu: traffic descriptor: %{public}s", v105, 0x20u);
                      if (v115 < 0)
                      {
                        operator delete(*v112);
                      }

                      v19 = *&buf[8];
                    }

                    sub_10006DCAC(buf, v19);
                    goto LABEL_142;
                  }

                  sub_10006DCAC(buf, *&buf[8]);
                }

                v96 = 0;
                v97 = 0;
                (*(*v100 + 136))(&v96);
                if (v96)
                {
                  break;
                }

                v29 = *(this + 5);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = asString();
                  TrafficDescriptor::toString(v105, (v7 + 4));
                  v31 = v105;
                  if (v105[23] < 0)
                  {
                    v31 = *v105;
                  }

                  *buf = 136315394;
                  *&buf[4] = v30;
                  *&buf[12] = 2082;
                  *&buf[14] = v31;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I checkSliceDataStall: do not report slice connection %s because settings object is empty: traffic descriptor: %{public}s", buf, 0x16u);
                  if ((v105[23] & 0x80000000) != 0)
                  {
                    operator delete(*v105);
                  }
                }

                LODWORD(v32) = 8;
LABEL_139:
                if (v97)
                {
                  sub_100004A34(v97);
                }

                if ((v32 | 8) != 8)
                {
                  goto LABEL_149;
                }

LABEL_142:
                v61 = v7[1];
                if (v61)
                {
                  do
                  {
                    v62 = v61;
                    v61 = *v61;
                  }

                  while (v61);
                }

                else
                {
                  do
                  {
                    v62 = v7[2];
                    v12 = *v62 == v7;
                    v7 = v62;
                  }

                  while (!v12);
                }

                v7 = v62;
                if (v62 == v8)
                {
                  goto LABEL_148;
                }
              }

              v94 = 0;
              v95 = 0;
              (*(*v96 + 472))(&v94);
              if (v94)
              {
                memset(buf, 0, sizeof(buf));
                if (*(v94 + 71) < 0)
                {
                  sub_100005F2C(buf, *(v94 + 48), *(v94 + 56));
                }

                else
                {
                  *buf = *(v94 + 48);
                  *&buf[16] = *(v94 + 64);
                }

                v36 = buf[23];
                if ((buf[23] & 0x80u) != 0)
                {
                  v36 = *&buf[8];
                }

                if (!v36)
                {
                  v47 = *(this + 5);
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                  {
                    v48 = asString();
                    TrafficDescriptor::toString(v105, (v7 + 4));
                    v49 = v105;
                    if (v105[23] < 0)
                    {
                      v49 = *v105;
                    }

                    *v112 = 136315394;
                    *&v112[4] = v48;
                    v113 = 2082;
                    v114 = v49;
                    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I checkSliceDataStall: do not report slice connection %s because DNN is empty: traffic descriptor: %{public}s", v112, 0x16u);
                    if ((v105[23] & 0x80000000) != 0)
                    {
                      operator delete(*v105);
                    }
                  }

                  LODWORD(v32) = 8;
                  goto LABEL_135;
                }

                ServiceMap = Registry::getServiceMap(*(this + 13));
                v38 = ServiceMap;
                if (v39 < 0)
                {
                  v40 = (v39 & 0x7FFFFFFFFFFFFFFFLL);
                  v41 = 5381;
                  do
                  {
                    v39 = v41;
                    v42 = *v40++;
                    v41 = (33 * v41) ^ v42;
                  }

                  while (v42);
                }

                std::mutex::lock(ServiceMap);
                *v105 = v39;
                v43 = sub_100009510(&v38[1].__m_.__sig, v105);
                if (v43)
                {
                  v32 = v43[3];
                  v44 = v43[4];
                  if (v44)
                  {
                    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
                    std::mutex::unlock(v38);
                    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_100004A34(v44);
                    v45 = v44;
                    v46 = 0;
                    if (!v32)
                    {
                      goto LABEL_133;
                    }

LABEL_98:
                    v73 = v45;
                    *v112 = 0;
                    v50 = xpc_dictionary_create(0, 0, 0);
                    v51 = v50;
                    if (v50)
                    {
                      *v112 = v50;
                      goto LABEL_101;
                    }

                    v51 = xpc_null_create();
                    *v112 = v51;
                    if (v51)
                    {
LABEL_101:
                      if (xpc_get_type(v51) != &_xpc_type_dictionary)
                      {
                        v52 = xpc_null_create();
                        goto LABEL_105;
                      }

                      xpc_retain(v51);
                    }

                    else
                    {
                      v52 = xpc_null_create();
                      v51 = 0;
LABEL_105:
                      *v112 = v52;
                    }

                    xpc_release(v51);
                    if ((buf[23] & 0x80u) == 0)
                    {
                      v53 = buf;
                    }

                    else
                    {
                      v53 = *buf;
                    }

                    v92 = xpc_string_create(v53);
                    if (!v92)
                    {
                      v92 = xpc_null_create();
                    }

                    *v105 = v112;
                    *&v105[8] = "dnn";
                    sub_10000F688(v105, &v92, &object);
                    xpc_release(object);
                    object = 0;
                    xpc_release(v92);
                    v92 = 0;
                    v90 = xpc_int64_create(a2);
                    if (!v90)
                    {
                      v90 = xpc_null_create();
                    }

                    *v105 = v112;
                    *&v105[8] = "pdp";
                    sub_10000F688(v105, &v90, &v91);
                    xpc_release(v91);
                    v91 = 0;
                    xpc_release(v90);
                    v90 = 0;
                    memset(v89, 0, sizeof(v89));
                    v88 = 0;
                    v54 = (*(*this + 1288))(this);
                    if (DataServiceController::getCurrent5GSlicingCellInfo_sync(this, v77, &v89[2], &v89[1], v89, &v88))
                    {
                      v86 = xpc_int64_create(v89[2]);
                      if (!v86)
                      {
                        v86 = xpc_null_create();
                      }

                      *v105 = v112;
                      *&v105[8] = "mnc";
                      sub_10000F688(v105, &v86, &v87);
                      xpc_release(v87);
                      v87 = 0;
                      xpc_release(v86);
                      v86 = 0;
                      v84 = xpc_int64_create(v89[1]);
                      if (!v84)
                      {
                        v84 = xpc_null_create();
                      }

                      *v105 = v112;
                      *&v105[8] = "mcc";
                      sub_10000F688(v105, &v84, &v85);
                      xpc_release(v85);
                      v85 = 0;
                      xpc_release(v84);
                      v84 = 0;
                      if (v54)
                      {
                        v82 = xpc_int64_create(v89[0]);
                        if (!v82)
                        {
                          v82 = xpc_null_create();
                        }

                        *v105 = v112;
                        *&v105[8] = "areaId";
                        sub_10000F688(v105, &v82, &v83);
                        xpc_release(v83);
                        v83 = 0;
                        xpc_release(v82);
                        v82 = 0;
                        v80 = xpc_uint64_create(v88);
                        if (!v80)
                        {
                          v80 = xpc_null_create();
                        }

                        *v105 = v112;
                        *&v105[8] = "cellId";
                        sub_10000F688(v105, &v80, &v81);
                        xpc_release(v81);
                        v81 = 0;
                        xpc_release(v80);
                        v80 = 0;
                      }

                      else
                      {
                        v89[0] = 0;
                        v88 = 0;
                      }
                    }

                    log = *(this + 5);
                    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                    {
                      v70 = v32;
                      v71 = v46;
                      v55 = v54;
                      v56 = buf[23];
                      v57 = *buf;
                      v58 = v89[2];
                      v67 = v89[1];
                      v68 = v89[0];
                      v69 = v88;
                      v59 = asStringBool(v55);
                      *v105 = 136447746;
                      v60 = buf;
                      if (v56 < 0)
                      {
                        v60 = v57;
                      }

                      *&v105[4] = v60;
                      *&v105[12] = 1024;
                      *&v105[14] = a2;
                      *&v105[18] = 2048;
                      *&v105[20] = v58;
                      *&v105[28] = 2048;
                      *&v105[30] = v67;
                      v106 = 2048;
                      v107 = v68;
                      v108 = 2048;
                      v109 = v69;
                      v110 = 2080;
                      v111 = v59;
                      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#E checkSliceDataStall: submitCoreAnalytics metricCCSliceDataStall for 5G Slice: dnn=%{public}s contextId=%u mnc=%lu mcc=%lu areaId=%lu cellId=%llu locationAuthorized=%s", v105, 0x44u);
                      v46 = v71;
                      v32 = v70;
                    }

                    v79 = *v112;
                    if (*v112)
                    {
                      xpc_retain(*v112);
                    }

                    else
                    {
                      v79 = xpc_null_create();
                    }

                    (*(*v32 + 16))(v32, "metricCCSliceDataStall", &v79);
                    xpc_release(v79);
                    v79 = 0;
                    xpc_release(*v112);
                    LODWORD(v32) = 1;
                    v45 = v73;
LABEL_133:
                    if ((v46 & 1) == 0)
                    {
                      sub_100004A34(v45);
                    }

LABEL_135:
                    if (buf[23] < 0)
                    {
                      operator delete(*buf);
                    }

LABEL_137:
                    if (v95)
                    {
                      sub_100004A34(v95);
                    }

                    goto LABEL_139;
                  }
                }

                else
                {
                  v32 = 0;
                }

                std::mutex::unlock(v38);
                v45 = 0;
                v46 = 1;
                if (v32)
                {
                  goto LABEL_98;
                }

                goto LABEL_133;
              }

              v33 = *(this + 5);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v34 = asString();
                TrafficDescriptor::toString(v105, (v7 + 4));
                v35 = v105;
                if (v105[23] < 0)
                {
                  v35 = *v105;
                }

                *buf = 136315394;
                *&buf[4] = v34;
                *&buf[12] = 2082;
                *&buf[14] = v35;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I checkSliceDataStall: do not report slice connection %s because apnInfo object is empty: traffic descriptor: %{public}s", buf, 0x16u);
                if ((v105[23] & 0x80000000) != 0)
                {
                  operator delete(*v105);
                }
              }

              LODWORD(v32) = 8;
              goto LABEL_137;
            }

LABEL_148:
            LODWORD(v32) = 0;
LABEL_149:
            if (SHIBYTE(v99) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            LODWORD(v32) = 6;
          }

          if (v101)
          {
            sub_100004A34(v101);
          }

          if (v32 != 6 && v32)
          {
            break;
          }

          if (++v5 == 36)
          {
            goto LABEL_159;
          }
        }

        if ((v32 & 0xFFFFFFFB) != 0)
        {
          return 1;
        }

        do
        {
LABEL_159:
          ++v78;
        }

        while (v78 != v76 && (v75(*v78) & 1) == 0);
      }

      while (v78 != v66);
    }
  }

  v63 = *(this + 5);
  v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v64)
  {
    *v105 = 67109120;
    *&v105[4] = a2;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I checkSliceDataStall[%u]: false", v105, 8u);
    return 0;
  }

  return result;
}