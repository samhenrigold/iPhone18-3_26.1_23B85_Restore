void *sub_19B8F2E64(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      sub_19B8F1750(result, a4);
    }

    sub_19B8B8A40();
  }

  return result;
}

void sub_19B8F2EE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B8F2F00(uint64_t **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 4)
  {
    if (v8)
    {
      sub_19B8EBC04(a1);
      operator delete(*a1);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 60))
      {
        sub_19B8F23AC(v10);
      }
    }

    sub_19B8B8A40();
  }

  v11 = a1[1] - v8;
  if (a4 <= v11 >> 4)
  {
    sub_19B8F3078(a2, a3, v8);
    v16 = v15;
    v17 = a1[1];
    if (v17 != v15)
    {
      do
      {
        v18 = *(v17 - 8);
        if (v18)
        {
          sub_19B8750F8(v18);
        }

        v17 -= 16;
      }

      while (v17 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v12 = sub_19B8F3078(a2, (a2 + v11), v8);
    for (i = a1[1]; v12 != a3; i += 2)
    {
      v14 = v12[1];
      *i = *v12;
      i[1] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v12 += 2;
    }

    a1[1] = i;
  }
}

uint64_t *sub_19B8F3078(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        sub_19B8750F8(v8);
      }

      v4 += 2;
      a3 += 2;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void sub_19B8F31C8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6B9D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B8F321C(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 184);
  if (v3)
  {
    *(a1 + 192) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    *(a1 + 168) = v4;
    operator delete(v4);
  }

  if (*(a1 + 95) < 0)
  {
    v5 = *(a1 + 72);

    operator delete(v5);
  }
}

void sub_19B8F32B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6BA20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B8F330C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_19B8750F8(v1);
  }
}

uint64_t sub_19B8F3320(uint64_t a1, uint64_t *a2, char a3, char a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0xBFF0000000000000;
  __asm { FMOV            V6.2D, #-1.0 }

  *(a1 + 40) = _Q6;
  *(a1 + 56) = 0;
  *(a1 + 64) = 256;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 104) = xmmword_19BA89720;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = xmmword_19BA89720;
  *(a1 + 168) = 0;
  v31 = *a2;
  v32 = a2[1];
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 16) = a5;
    *(a1 + 24) = a6;
    *(a1 + 32) = a7;
    *(a1 + 40) = a8;
    *(a1 + 48) = a9;
    *(a1 + 56) = a10;
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    v33 = *(a1 + 8);
    *a1 = v31;
    *(a1 + 8) = v32;
    if (v33)
    {
      sub_19B8750F8(v33);
    }
  }

  else
  {
    *(a1 + 16) = a5;
    *(a1 + 24) = a6;
    *(a1 + 32) = a7;
    *(a1 + 40) = a8;
    *(a1 + 48) = a9;
    *(a1 + 56) = a10;
    *a1 = v31;
    *(a1 + 8) = 0;
  }

  *(a1 + 64) = a3;
  *(a1 + 65) = a4;
  *(a1 + 72) = a11;
  *(a1 + 80) = a12;
  *(a1 + 88) = a17;
  *(a1 + 128) = a18;
  *(a1 + 136) = a19;
  *(a1 + 144) = a20;
  *(a1 + 152) = a21;
  if (v32)
  {
    sub_19B8750F8(v32);
  }

  return a1;
}

uint64_t *sub_19B8F3444(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_19B8F128C(a1, a2);
  v4 = a2[7];
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  operator delete(a2);
  return v3;
}

void sub_19B8F3484(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_19B8F3484(a1, *a2);
    sub_19B8F3484(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *sub_19B8F34D8(uint64_t *result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = result[1];
  if (!v4)
  {
LABEL_11:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = *(v4 + 32);
      v7 = v5[5];
      v8 = v7 > a3;
      if (v6 != a2)
      {
        v8 = v6 > a2;
      }

      if (!v8)
      {
        break;
      }

      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_11;
      }
    }

    v9 = v7 < a3;
    v10 = v6 == a2;
    v11 = v6 < a2;
    if (v10)
    {
      v11 = v9;
    }

    if (!v11)
    {
      return result;
    }

    v4 = v5[1];
    if (!v4)
    {
      goto LABEL_11;
    }
  }
}

uint64_t *sub_19B8F35D8(uint64_t **a1, unint64_t a2, unint64_t a3, __int128 **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_11:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = v4[4];
      v7 = v5[5];
      v8 = v7 > a3;
      if (v6 != a2)
      {
        v8 = v6 > a2;
      }

      if (!v8)
      {
        break;
      }

      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_11;
      }
    }

    v9 = v7 < a3;
    v10 = v6 == a2;
    v11 = v6 < a2;
    if (v10)
    {
      v11 = v9;
    }

    if (!v11)
    {
      return v5;
    }

    v4 = v5[1];
    if (!v4)
    {
      goto LABEL_11;
    }
  }
}

void sub_19B8F36F0(void *a1)
{
  if (a1)
  {
    sub_19B8F36F0(*a1);
    sub_19B8F36F0(a1[1]);
    v2 = a1[11];
    if (v2)
    {
      sub_19B8750F8(v2);
    }

    v3 = a1[9];
    if (v3)
    {
      sub_19B8750F8(v3);
    }

    v4 = a1[7];
    if (v4)
    {
      sub_19B8750F8(v4);
    }

    operator delete(a1);
  }
}

uint64_t sub_19B8F3760(uint64_t **a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_19B8F08E8(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void sub_19B8F381C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6BA70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B8F3870(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 -= 72;
      }

      while (v3 != v1);
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v1;

    operator delete(v4);
  }
}

void sub_19B8F38F8(uint64_t result, _DWORD *a2, double *a3)
{
  if (*a2 == 4)
  {
    ++*(result + 44);
  }

  else if (*a2 == 1)
  {
    ++*(result + 40);
    sub_19B8F3930(result, a3);
  }
}

double sub_19B8F3930(uint64_t a1, double *a2)
{
  v4 = *(a1 + 32);
  if (v4 > 0.0)
  {
    v5 = *a2 - v4;
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v7 >= v6)
    {
      v9 = *a1;
      v10 = v7 - *a1;
      v11 = v10 >> 3;
      v12 = (v10 >> 3) + 1;
      if (v12 >> 61)
      {
        sub_19B8F3F74();
      }

      v13 = v6 - v9;
      if (v13 >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      v14 = v13 >= 0x7FFFFFFFFFFFFFF8;
      v15 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v12;
      }

      if (v15)
      {
        sub_19B8D9954(a1, v15);
      }

      *(8 * v11) = v5;
      v8 = 8 * v11 + 8;
      memcpy(0, v9, v10);
      v16 = *a1;
      *a1 = 0;
      *(a1 + 8) = v8;
      *(a1 + 16) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    *(a1 + 8) = v8;
  }

  result = *a2;
  *(a1 + 32) = *a2;
  return result;
}

uint64_t sub_19B8F3A34(double **a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (((v3 - *a1) >> 3) >= 1)
  {
    v5 = *v4;
    if (v4 != v3 && v4 + 1 != v3)
    {
      v7 = *v4;
      v8 = v4 + 1;
      do
      {
        v9 = *v8++;
        v10 = v9;
        if (v9 < v7)
        {
          v7 = v10;
        }
      }

      while (v8 != v3);
      v11 = v4 + 1;
      do
      {
        v12 = *v11++;
        v13 = v12;
        if (v5 < v12)
        {
          v5 = v13;
        }
      }

      while (v11 != v3);
    }

    v14 = 0.0;
    while (v4 != v3)
    {
      v15 = *v4++;
      v14 = v14 + v15;
    }
  }

  return AnalyticsSendEventLazy();
}

uint64_t sub_19B8F3C54(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v45[11] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v44[0] = @"tspiiPercentageOfValidInputData";
  v45[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, a4, *(a1 + 40));
  v44[1] = @"tspiiPercentageOfInputGpsData";
  v45[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v6, v7, v8, *(a1 + 48));
  v44[2] = @"tspiiPercentageOfInputWifiData";
  v45[2] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v9, v10, v11, *(a1 + 56));
  v44[3] = @"tspiiPercentageOfValidInertialData";
  v45[3] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v12, v13, v14, *(a1 + 64));
  v44[4] = @"tspiiMeanDurationOfGapsInInertialData";
  v45[4] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v15, v16, v17, *(a1 + 72));
  v44[5] = @"tspiiNumberOfGapsInInertialData";
  v45[5] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v18, *(v5 + 56), v19);
  v44[6] = @"tspiiNumberOfVdrAttempts";
  v45[6] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v20, *(v5 + 60), v21);
  v44[7] = @"tspiiPercentageOfFailedVdrAttempts";
  v45[7] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v22, v23, v24, *(a1 + 80));
  v44[8] = @"tspiiMinPeriodBetweenGpsFixes";
  v45[8] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v25, v26, v27, *(a1 + 88));
  v44[9] = @"tspiiMaxPeriodBetweenGpsFixes";
  v45[9] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v28, v29, v30, *(a1 + 96));
  v44[10] = @"tspiiMeanPeriodBetweenGpsFixes";
  v45[10] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v31, v32, v33, *(a1 + 104));
  v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v34, v45, v44, 11);
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAB0);
  }

  v36 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v43 = v35;
    _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEBUG, "CLTSP,II,sendTripSegmentInertialIntegratorAnalytics: \n%{private}@", buf, 0xCu);
  }

  v37 = sub_19B87DD40();
  if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAB0);
    }

    v40 = 138477827;
    v41 = v35;
    v38 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,II,sendTripSegmentInertialIntegratorAnalytics: \n%{private}@", &v40, 12);
    sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentInertialIntegratorCAStats::sendTripSegmentInertialIntegratorAnalytics(const int &, const int &)_block_invoke", "CoreLocation: %s\n", v38);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  return v35;
}

os_log_t sub_19B8F3F8C()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

void sub_19B8F3FBC(id *result, id *a2, uint64_t a3, uint64_t a4)
{
  if (result != a2)
  {
    v60 = v13;
    v61 = v12;
    v62 = v11;
    v63 = v10;
    v64 = v9;
    v65 = v8;
    v66 = v7;
    v67 = v6;
    v68 = v4;
    v69 = v5;
    v16 = result;
    v17 = 0;
    v57 = 0.0;
    v56 = 0.0;
    v18 = 0.0;
    do
    {
      objc_msgSend_latitude(*v16, a2, a3, a4);
      v20 = v19;
      objc_msgSend_longitude(*v16, v21, v22, v23);
      v25 = v24;
      objc_msgSend_altitude(*v16, v26, v27, v28);
      v30 = v29;
      v31 = __sincos_stret(v20 * 0.0174532925);
      v35 = __sincos_stret(v25 * 0.0174532925);
      v36 = 6378137.0 / sqrt(v31.__sinval * -0.00669437999 * v31.__sinval + 1.0);
      v37 = v31.__cosval * (v30 + v36);
      v38 = v30 + v36 * 0.99330562;
      v39 = v35.__sinval * v37;
      v40 = v31.__sinval * v38;
      if (!v17)
      {
        v18 = v31.__sinval * v38;
      }

      v54 = v35.__cosval * v37;
      v55 = v18;
      v42 = v56;
      v41 = v57;
      if (!v17)
      {
        v42 = v35.__sinval * v37;
        v41 = v35.__cosval * v37;
      }

      objc_msgSend_latitude(*v16, v32, v33, v34);
      v44 = v43;
      v45 = *v16++;
      objc_msgSend_longitude(v45, v46, v47, v48);
      v50 = v49;
      v51 = __sincos_stret(v44 * 0.0174532925);
      v52 = __sincos_stret(v50 * 0.0174532925);
      v56 = v42;
      v57 = v41;
      v53 = v39 - v42;
      v18 = v55;
      *&v58 = v52.__cosval * v53 - v52.__sinval * (v54 - v41);
      *(&v58 + 1) = -(v51.__sinval * v52.__sinval) * v53 + -(v51.__sinval * v52.__cosval) * (v54 - v41) + v51.__cosval * (v40 - v55);
      v59 = v51.__cosval * v52.__sinval * v53 + v51.__cosval * v52.__cosval * (v54 - v41) + v51.__sinval * (v40 - v55);
      sub_19B8F4190(a3, &v58);
      --v17;
    }

    while (v16 != a2);
  }
}

void sub_19B8F4190(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_19B8B8A40();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_19B8FCEEC(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void sub_19B8F4298(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v51 = 0;
    v52[0] = 0.0;
    v50 = 0;
    objc_msgSend_latitude(a2, a2, a3, a4);
    v8 = v7;
    objc_msgSend_longitude(a2, v9, v10, v11);
    v13 = v12;
    objc_msgSend_altitude(a2, v14, v15, v16);
    v18 = *a1;
    if (a1[1] != *a1)
    {
      v19 = v17;
      v20 = __sincos_stret(v8 * 0.0174532925);
      v21 = 6378137.0 / sqrt(v20.__sinval * -0.00669437999 * v20.__sinval + 1.0);
      v22 = v20.__sinval * (v19 + v21 * 0.99330562);
      v26 = __sincos_stret(v13 * 0.0174532925);
      v27 = 0;
      v28 = 0;
      v29 = v20.__cosval * (v19 + v21);
      v30 = v26.__sinval * v29;
      v31 = v26.__cosval * v29;
      v32 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
      do
      {
        if (!v27)
        {
          v34 = v31;
          v33 = v30;
          v32 = v22;
        }

        v35 = *(v18 + v27 + 8);
        v49 = *(v18 + v27);
        v36 = *(v18 + v27 + 16);
        objc_msgSend_latitude(a2, v23, v24, v25);
        v38 = v37;
        objc_msgSend_longitude(a2, v39, v40, v41);
        v43 = v42;
        v44 = __sincos_stret(v38 * 0.0174532925);
        v45 = __sincos_stret(v43 * 0.0174532925);
        v31 = v34 + v35 * -(v44.__sinval * v45.__cosval) - v45.__sinval * v49 + v44.__cosval * v45.__cosval * v36;
        v30 = v33 + v35 * -(v44.__sinval * v45.__sinval) + v45.__cosval * v49 + v44.__cosval * v45.__sinval * v36;
        v22 = v32 + v36 * v44.__sinval + v44.__cosval * v35;
        sub_19B9C7BD0(v52, &v51, &v50, v31, v30, v22);
        *&buf = v52[0];
        *(&buf + 1) = v51;
        v54 = v50;
        sub_19B8F4190(a3, &buf);
        ++v28;
        v18 = *a1;
        v27 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v28);
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v46 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_ERROR, "CLTSP,II,convertENUtoLLA,detected null input", &buf, 2u);
    }

    v47 = sub_19B87DD40();
    if ((*(v47 + 160) & 0x80000000) == 0 || (*(v47 + 164) & 0x80000000) == 0 || (*(v47 + 168) & 0x80000000) == 0 || *(v47 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      LOWORD(v52[0]) = 0;
      v48 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,II,convertENUtoLLA,detected null input", v52, 2);
      sub_19B885924("Generic", 1, 0, 0, "void convertENUtoLLA(const std::vector<std::array<double, 3>> &, const CLTripSegmentLocation *, std::vector<std::array<double, 3>> &)", "CoreLocation: %s\n", v48);
      if (v48 != &buf)
      {
        free(v48);
      }
    }
  }
}

void sub_19B8F4620(void *a1)
{
  v112 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v2 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_msgSend_timestamp(a1, v3, v4, v5);
      objc_msgSend_timeIntervalSinceReferenceDate(v6, v7, v8, v9);
      v11 = v10;
      objc_msgSend_dataPeriod_s(a1, v12, v13, v14);
      v16 = v15;
      objc_msgSend_deltaCourse_rad(a1, v17, v18, v19);
      v21 = v20;
      objc_msgSend_deltaSpeed_mps(a1, v22, v23, v24);
      v26 = v25;
      objc_msgSend_deltaCourseVar_rad2(a1, v27, v28, v29);
      v31 = v30;
      objc_msgSend_deltaSpeedVar_mps2(a1, v32, v33, v34);
      v36 = v35;
      objc_msgSend_deltaCourseSpeedCovar_radmps(a1, v37, v38, v39);
      *buf = 134350593;
      v99 = v11;
      v100 = 2050;
      v101 = v16;
      v102 = 2049;
      v103 = v21;
      v104 = 2049;
      v105 = v26;
      v106 = 2050;
      v107 = v31;
      v108 = 2050;
      v109 = v36;
      v110 = 2050;
      v111 = v40;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEBUG, "CLTSP,II,inertialData,time,%{public}.3lf,dataPeriod,%{public}.7lf,deltaCourse,%{private}.6lf,deltaSpeed,%{private}.6lf,deltaCourseVar,%{public}.8lf,deltaSpeedVar,%{public}.8lf,deltaCourseSpeedCovar,%{public}.8lf", buf, 0x48u);
    }

    v41 = sub_19B87DD40();
    if (*(v41 + 160) <= 1 && *(v41 + 164) <= 1 && *(v41 + 168) <= 1 && !*(v41 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v45 = qword_1EAFE46E8;
    v46 = objc_msgSend_timestamp(a1, v42, v43, v44);
    objc_msgSend_timeIntervalSinceReferenceDate(v46, v47, v48, v49);
    v51 = v50;
    objc_msgSend_dataPeriod_s(a1, v52, v53, v54);
    v56 = v55;
    objc_msgSend_deltaCourse_rad(a1, v57, v58, v59);
    v61 = v60;
    objc_msgSend_deltaSpeed_mps(a1, v62, v63, v64);
    v66 = v65;
    objc_msgSend_deltaCourseVar_rad2(a1, v67, v68, v69);
    v71 = v70;
    objc_msgSend_deltaSpeedVar_mps2(a1, v72, v73, v74);
    v76 = v75;
    objc_msgSend_deltaCourseSpeedCovar_radmps(a1, v77, v78, v79);
    v84 = 134350593;
    v85 = v51;
    v86 = 2050;
    v87 = v56;
    v88 = 2049;
    v89 = v61;
    v90 = 2049;
    v91 = v66;
    v92 = 2050;
    v93 = v71;
    v94 = 2050;
    v95 = v76;
    v96 = 2050;
    v97 = v80;
    v81 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v45, 2, "CLTSP,II,inertialData,time,%{public}.3lf,dataPeriod,%{public}.7lf,deltaCourse,%{private}.6lf,deltaSpeed,%{private}.6lf,deltaCourseVar,%{public}.8lf,deltaSpeedVar,%{public}.8lf,deltaCourseSpeedCovar,%{public}.8lf", &v84, 72);
    sub_19B885924("Generic", 1, 0, 2, "void printInertialDataDebugLog(CLTripSegmentInertialData *)", "CoreLocation: %s\n", v81);
    if (v81 == buf)
    {
      return;
    }

LABEL_24:
    free(v81);
    return;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
  }

  v82 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v82, OS_LOG_TYPE_ERROR, "CLTSP,II,printInertialDataDebugLog,detected null inertialData", buf, 2u);
  }

  v83 = sub_19B87DD40();
  if ((*(v83 + 160) & 0x80000000) == 0 || (*(v83 + 164) & 0x80000000) == 0 || (*(v83 + 168) & 0x80000000) == 0 || *(v83 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    LOWORD(v84) = 0;
    v81 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,II,printInertialDataDebugLog,detected null inertialData", &v84, 2);
    sub_19B885924("Generic", 1, 0, 0, "void printInertialDataDebugLog(CLTripSegmentInertialData *)", "CoreLocation: %s\n", v81);
    if (v81 != buf)
    {
      goto LABEL_24;
    }
  }
}

void sub_19B8F4A54(void *a1, const char *a2, void *a3, uint64_t *a4)
{
  v212 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a4;
    v6 = a2;
    objc_msgSend_speedAccuracy(a3, a2, a3, a4);
    v9 = v8;
    if (objc_msgSend_isLoiLocationType(a3, v10, v11, v12))
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      v13 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        objc_msgSend_speedAccuracy(a3, v14, v15, v16);
        *buf = 134349312;
        v185 = v17;
        v186 = 2050;
        *v187 = 0xBFF0000000000000;
        _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "CLTSP,II,printLocationDebugLog,location is LOI or reconstructed from LOI,sunc,%{public}.7lf,invalidated to,%{public}.1lf", buf, 0x16u);
      }

      v18 = sub_19B87DD40();
      if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || (v9 = -1.0, *(v18 + 152)))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
        }

        v22 = qword_1EAFE46E8;
        objc_msgSend_speedAccuracy(a3, v19, v20, v21);
        v156 = 134349312;
        v157 = v23;
        v158 = 2050;
        *v159 = 0xBFF0000000000000;
        v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v22, 2, "CLTSP,II,printLocationDebugLog,location is LOI or reconstructed from LOI,sunc,%{public}.7lf,invalidated to,%{public}.1lf", &v156, 22);
        sub_19B885924("Generic", 1, 0, 2, "void printLocationDebugLog(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, CLTripSegmentLocation *, const std::string)", "CoreLocation: %s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }

        v9 = -1.0;
      }
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v25 = qword_1EAFE46E8;
    v29 = &off_19BA89000;
    v155 = v9;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      v30 = v4;
      if (*(v4 + 23) < 0)
      {
        v30 = *v4;
      }

      v31 = objc_msgSend_timestamp(a3, v26, v27, v28);
      objc_msgSend_timeIntervalSinceReferenceDate(v31, v32, v33, v34);
      v153 = v35;
      objc_msgSend_latitude(a3, v36, v37, v38);
      v40 = v39;
      objc_msgSend_longitude(a3, v41, v42, v43);
      v45 = v44;
      objc_msgSend_altitude(a3, v46, v47, v48);
      v50 = v49;
      objc_msgSend_speed(a3, v51, v52, v53);
      v55 = v54;
      objc_msgSend_course(a3, v56, v57, v58);
      v60 = v59;
      objc_msgSend_horizontalAccuracy(a3, v61, v62, v63);
      v65 = v64;
      objc_msgSend_altitudeAccuracy(a3, v66, v67, v68);
      v70 = v69;
      objc_msgSend_courseAccuracy(a3, v71, v72, v73);
      v75 = v74;
      v79 = objc_msgSend_locType(a3, v76, v77, v78);
      v83 = objc_msgSend_UUIDString(a1, v80, v81, v82);
      v87 = objc_msgSend_UTF8String(v83, v84, v85, v86);
      *buf = 136449795;
      v185 = v30;
      v29 = &off_19BA89000;
      v186 = 1026;
      *v187 = 1;
      *&v187[4] = 1026;
      *&v187[6] = v6;
      v188 = 2050;
      v189 = v153;
      v190 = 2053;
      v191 = v40;
      v192 = 2053;
      v193 = v45;
      v194 = 2050;
      v195 = v50;
      v196 = 2050;
      v197 = v55;
      v198 = 2050;
      v199 = v60;
      v200 = 2050;
      v201 = v65;
      v202 = 2050;
      v203 = v70;
      v204 = 2050;
      v205 = v155;
      v206 = 2050;
      v207 = v75;
      v208 = 1026;
      v209 = v79;
      v210 = 2082;
      v211 = v87;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_DEBUG, "CLTSP,II,locType,%{public}s,mode,%{public}d,final,%{public}d,time,%{public}.3lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,altitude,%{public}.2lf,speed,%{public}.2lf,course,%{public}.2lf,hunc,%{public}.2lf,vunc,%{public}.2lf,sunc,%{public}.7lf,cunc,%{public}.7lf,type,%{public}d,id,%{public}s", buf, 0x8Cu);
    }

    v88 = sub_19B87DD40();
    if (*(v88 + 160) > 1 || *(v88 + 164) > 1 || *(v88 + 168) > 1 || *(v88 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      v92 = qword_1EAFE46E8;
      if (*(v4 + 23) < 0)
      {
        v4 = *v4;
      }

      v93 = objc_msgSend_timestamp(a3, v89, v90, v91);
      objc_msgSend_timeIntervalSinceReferenceDate(v93, v94, v95, v96);
      v154 = v97;
      objc_msgSend_latitude(a3, v98, v99, v100);
      v102 = v101;
      objc_msgSend_longitude(a3, v103, v104, v105);
      v107 = v106;
      objc_msgSend_altitude(a3, v108, v109, v110);
      v112 = v111;
      objc_msgSend_speed(a3, v113, v114, v115);
      v117 = v116;
      objc_msgSend_course(a3, v118, v119, v120);
      v122 = v121;
      objc_msgSend_horizontalAccuracy(a3, v123, v124, v125);
      v127 = v126;
      objc_msgSend_altitudeAccuracy(a3, v128, v129, v130);
      v132 = v131;
      objc_msgSend_courseAccuracy(a3, v133, v134, v135);
      v137 = v136;
      v141 = objc_msgSend_locType(a3, v138, v139, v140);
      v145 = objc_msgSend_UUIDString(a1, v142, v143, v144);
      v149 = objc_msgSend_UTF8String(v145, v146, v147, v148);
      v156 = *(v29 + 282);
      v157 = v4;
      v158 = 1026;
      *v159 = 1;
      *&v159[4] = 1026;
      *&v159[6] = v6;
      v160 = 2050;
      v161 = v154;
      v162 = 2053;
      v163 = v102;
      v164 = 2053;
      v165 = v107;
      v166 = 2050;
      v167 = v112;
      v168 = 2050;
      v169 = v117;
      v170 = 2050;
      v171 = v122;
      v172 = 2050;
      v173 = v127;
      v174 = 2050;
      v175 = v132;
      v176 = 2050;
      v177 = v155;
      v178 = 2050;
      v179 = v137;
      v180 = 1026;
      v181 = v141;
      v182 = 2082;
      v183 = v149;
      v150 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v92, 2, "CLTSP,II,locType,%{public}s,mode,%{public}d,final,%{public}d,time,%{public}.3lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,altitude,%{public}.2lf,speed,%{public}.2lf,course,%{public}.2lf,hunc,%{public}.2lf,vunc,%{public}.2lf,sunc,%{public}.7lf,cunc,%{public}.7lf,type,%{public}d,id,%{public}s", &v156, 140);
      sub_19B885924("Generic", 1, 0, 2, "void printLocationDebugLog(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, CLTripSegmentLocation *, const std::string)", "CoreLocation: %s\n");
LABEL_41:
      if (v150 != buf)
      {
        free(v150);
      }
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v151 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v151, OS_LOG_TYPE_ERROR, "CLTSP,II,printLocationDebugLog,detected null locationData", buf, 2u);
    }

    v152 = sub_19B87DD40();
    if ((*(v152 + 160) & 0x80000000) == 0 || (*(v152 + 164) & 0x80000000) == 0 || (*(v152 + 168) & 0x80000000) == 0 || *(v152 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      LOWORD(v156) = 0;
      v150 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,II,printLocationDebugLog,detected null locationData", &v156, 2);
      sub_19B885924("Generic", 1, 0, 0, "void printLocationDebugLog(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, CLTripSegmentLocation *, const std::string)", "CoreLocation: %s\n");
      goto LABEL_41;
    }
  }
}

void sub_19B8F518C(const void **a1, uint64_t *a2)
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
      sub_19B8F3F74();
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
      sub_19B8D9954(a1, v12);
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

void sub_19B8F526C(double a1, double a2)
{
  if (a2 == 0.0)
  {
    exp(a1);
    return;
  }

  if (fabs(a1) == INFINITY)
  {
    if (a1 >= 0.0)
    {
      if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        return;
      }
    }

    else if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      a2 = 1.0;
    }
  }

  v2 = a2;
  exp(a1);
  __sincos_stret(v2);
}

BOOL sub_19B8F5338(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v30 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_ERROR, "CLTSP,II,isLocationSpeedAndCourseValid,detected null location", buf, 2u);
    }

    v31 = sub_19B87DD40();
    if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      v33[0] = 0;
      v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,II,isLocationSpeedAndCourseValid,detected null location", v33, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL isLocationSpeedAndCourseValid(CLTripSegmentLocation *)", "CoreLocation: %s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    return 0;
  }

  objc_msgSend_speed(a1, a2, a3, a4);
  if ((v8 <= -1 || ((v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v8 - 1) >= 0xFFFFFFFFFFFFFLL && (v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  objc_msgSend_course(a1, v5, v6, v7);
  v16 = v15 <= -1 || ((v15 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
  v17 = v16 && (v15 - 1) >= 0xFFFFFFFFFFFFFLL;
  if (v17 && (v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  objc_msgSend_speedAccuracy(a1, v12, v13, v14);
  result = 0;
  v25 = (v22 < 0.0 || ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v22 - 1) > 0xFFFFFFFFFFFFELL;
  if (!v25 && v22 < 20.0)
  {
    objc_msgSend_courseAccuracy(a1, v19, v20, v21);
    v29 = ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v26 >= 0.0 || (*&v26 - 1) < 0xFFFFFFFFFFFFFLL;
    return v26 < 180.0 && v29;
  }

  return result;
}

void sub_19B8F55DC(void *a1, const char *a2, unsigned int *a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    objc_msgSend_setLocationReconstructionType_(a1, a2, a4, a4);
    objc_msgSend_setStartLocationType_(a1, v7, *a2, v8);
    v11 = *a3;

    objc_msgSend_setStopLocationType_(a1, v9, v11, v10);
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v12 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "CLTSP,II,handleLocationType,detected null location", buf, 2u);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      v15[0] = 0;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,II,handleLocationType,detected null location", v15, 2);
      sub_19B885924("Generic", 1, 0, 0, "void handleLocationType(CLTripSegmentLocation *, const CLLocationType &, const CLLocationType &, const ReconstructedLocationType &)", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }
}

void sub_19B8F57E0(void *a1, double *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    objc_msgSend_speed(a1, a2, a3, a4);
    if (v9 > -1 && ((v9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v9 - 1) < 0xFFFFFFFFFFFFFLL || (v9 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      objc_msgSend_speed(a1, v6, v7, v8);
      v17 = v13;
    }

    else
    {
      v17 = *a2;
    }

    objc_msgSend_course(a1, v6, v7, v8);
    if (v21 > -1 && ((v21 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v21 - 1) < 0xFFFFFFFFFFFFFLL || (v21 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      objc_msgSend_course(a1, v18, v19, v20);
      v26 = v25;
    }

    else
    {
      v26 = a2[2];
    }

    objc_msgSend_speedAccuracy(a1, v18, v19, v20);
    v32 = (v30 < 0.0 || ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v30 - 1) > 0xFFFFFFFFFFFFELL;
    if (v32 || v30 >= 20.0)
    {
      v34 = a2[1];
    }

    else
    {
      objc_msgSend_speedAccuracy(a1, v27, v28, v29);
      v34 = v33;
    }

    objc_msgSend_courseAccuracy(a1, v27, v28, v29);
    v40 = (v38 < 0.0 || ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v38 - 1) > 0xFFFFFFFFFFFFELL;
    if (v40 || v38 >= 180.0)
    {
      objc_msgSend_updateCourse_andCourseAccuracy_(a1, v35, v36, v37, v26, a2[3]);
    }

    else
    {
      objc_msgSend_courseAccuracy(a1, v35, v36, v37);
      objc_msgSend_updateCourse_andCourseAccuracy_(a1, v41, v42, v43, v26, v44);
    }

    objc_msgSend_updateSpeed_andSpeedAccuracy_(a1, v45, v46, v47, v17, v34);
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v14 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "CLTSP,II,updateSpeedAndCourse,detected null location", buf, 2u);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      v48[0] = 0;
      v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,II,updateSpeedAndCourse,detected null location", v48, 2);
      sub_19B885924("Generic", 1, 0, 0, "void updateSpeedAndCourse(CLTripSegmentLocation *, const CLInertialIntegratorLastEstimatedParameters &)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }
}

void sub_19B8F5B44(void *a1, const char *a2, void *a3, void *a4, double *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (sub_19B8F5338(a4, a2, a3, a4))
    {
      objc_msgSend_setLocationReconstructionType_(a4, v10, 1, v12);
    }

    else
    {
      sub_19B8F57E0(a4, a5, v11, v12);
      objc_msgSend_setLocationReconstructionType_(a4, v18, 2, v19);
    }

    objc_msgSend_setStartLocationType_(a4, v13, 0, v14);
    objc_msgSend_setStopLocationType_(a4, v20, 0, v21);
    objc_msgSend_addObject_(a3, v22, a4, v23);
    sub_19B8759E8(__p, "reconstructed");
    sub_19B8F4A54(a1, a2, a4, __p);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v15 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "CLTSP,II,addLocation,detected null reconstructedLocations", buf, 2u);
    }

    v16 = sub_19B87DD40();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      v26[0] = 0;
      v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,II,addLocation,detected null reconstructedLocations", v26, 2);
      sub_19B885924("Generic", 1, 0, 0, "void addLocation(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, CLTripSegmentLocation *, const CLInertialIntegratorLastEstimatedParameters &)", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }
}

void sub_19B8F5D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B8F5DAC(_BYTE *a1, void *a2, unsigned int a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v904 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v267 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v267, OS_LOG_TYPE_ERROR, "CLTSP,II,reconstructTripSegment,null tripSegmentID", buf, 2u);
    }

    v268 = sub_19B87DD40();
    if ((*(v268 + 160) & 0x80000000) != 0 && (*(v268 + 164) & 0x80000000) != 0 && (*(v268 + 168) & 0x80000000) != 0 && !*(v268 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    LOWORD(__p[0]) = 0;
    v269 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,II,reconstructTripSegment,null tripSegmentID", __p, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v269);
    goto LABEL_125;
  }

  if (!a5)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v270 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v270, OS_LOG_TYPE_ERROR, "CLTSP,II,reconstructTripSegment,null tripSegmentLocations", buf, 2u);
    }

    v271 = sub_19B87DD40();
    if ((*(v271 + 160) & 0x80000000) != 0 && (*(v271 + 164) & 0x80000000) != 0 && (*(v271 + 168) & 0x80000000) != 0 && !*(v271 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    LOWORD(__p[0]) = 0;
    v269 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,II,reconstructTripSegment,null tripSegmentLocations", __p, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v269);
    goto LABEL_125;
  }

  if (!a6)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v272 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v272, OS_LOG_TYPE_ERROR, "CLTSP,II,reconstructTripSegment,null inertialData", buf, 2u);
    }

    v273 = sub_19B87DD40();
    if ((*(v273 + 160) & 0x80000000) != 0 && (*(v273 + 164) & 0x80000000) != 0 && (*(v273 + 168) & 0x80000000) != 0 && !*(v273 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    LOWORD(__p[0]) = 0;
    v269 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,II,reconstructTripSegment,null inertialData", __p, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v269);
    goto LABEL_125;
  }

  v7 = a4;
  if (a4 != 1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v274 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v274, OS_LOG_TYPE_ERROR, "CLTSP,II,reconstructTripSegment,unsupported mode of transportation,%{public}d", buf, 8u);
    }

    v275 = sub_19B87DD40();
    if ((*(v275 + 160) & 0x80000000) != 0 && (*(v275 + 164) & 0x80000000) != 0 && (*(v275 + 168) & 0x80000000) != 0 && !*(v275 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    LODWORD(__p[0]) = 67240192;
    HIDWORD(__p[0]) = v7;
    v269 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,II,reconstructTripSegment,unsupported mode of transportation,%{public}d", __p, 8);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v269);
LABEL_125:
    if (v269 != buf)
    {
      free(v269);
    }

    return 0;
  }

  v878 = 0;
  v873 = 0u;
  v874 = 0u;
  v875 = 0.0;
  v876 = 200.0;
  v877 = 0;
  v866 = 0u;
  v867 = 0u;
  v868 = 0xBFF0000000000000;
  v869 = 0;
  v871 = 0;
  v870 = 0;
  v872 = 0;
  obj = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = &off_19BA89000;
  if (obj)
  {
    if (objc_msgSend_count(a5, v8, v9, v10))
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      v12 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        v15 = objc_msgSend_objectAtIndexedSubscript_(a5, v13, 0, v14);
        v19 = objc_msgSend_timestamp(v15, v16, v17, v18);
        objc_msgSend_timeIntervalSinceReferenceDate(v19, v20, v21, v22);
        v24 = v23;
        v28 = objc_msgSend_count(a5, v25, v26, v27);
        v31 = objc_msgSend_objectAtIndexedSubscript_(a5, v29, v28 - 1, v30);
        v35 = objc_msgSend_timestamp(v31, v32, v33, v34);
        objc_msgSend_timeIntervalSinceReferenceDate(v35, v36, v37, v38);
        *buf = 134349312;
        *&buf[4] = v24;
        v896 = 2050;
        v897 = v39;
        _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "CLTSP,II,checkForSpeedIntegrity,first location timestamp,%{public}.3lf,last location timestamp,%{public}.3lf", buf, 0x16u);
      }

      v40 = sub_19B87DD40();
      if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
        }

        v43 = qword_1EAFE46E8;
        v44 = objc_msgSend_objectAtIndexedSubscript_(a5, v41, 0, v42);
        v48 = objc_msgSend_timestamp(v44, v45, v46, v47);
        objc_msgSend_timeIntervalSinceReferenceDate(v48, v49, v50, v51);
        v53 = v52;
        v57 = objc_msgSend_count(a5, v54, v55, v56);
        v60 = objc_msgSend_objectAtIndexedSubscript_(a5, v58, v57 - 1, v59);
        v64 = objc_msgSend_timestamp(v60, v61, v62, v63);
        objc_msgSend_timeIntervalSinceReferenceDate(v64, v65, v66, v67);
        LODWORD(__p[0]) = 134349312;
        *(__p + 4) = v53;
        WORD2(__p[1]) = 2050;
        *(&__p[1] + 6) = v68;
        v69 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v43, 2, "CLTSP,II,checkForSpeedIntegrity,first location timestamp,%{public}.3lf,last location timestamp,%{public}.3lf", __p, 22);
        sub_19B885924("Generic", 1, 0, 2, "void checkForSpeedIntegrity(NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v69);
        if (v69 != buf)
        {
          free(v69);
        }
      }

      v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v71 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (objc_msgSend_count(a5, v72, v73, v74) != 1)
      {
        v78 = 0;
        do
        {
          v79 = v78 + 1;
          v80 = objc_msgSend_objectAtIndexedSubscript_(a5, v75, v78 + 1, v77);
          v84 = objc_msgSend_timestamp(v80, v81, v82, v83);
          v87 = objc_msgSend_objectAtIndexedSubscript_(a5, v85, v78, v86);
          v91 = objc_msgSend_timestamp(v87, v88, v89, v90);
          objc_msgSend_timeIntervalSinceDate_(v84, v92, v91, v93);
          if (fabs(v97) > 0.001)
          {
            v98 = objc_msgSend_objectAtIndexedSubscript_(a5, v94, v78, v96);
            objc_msgSend_addObject_(v70, v99, v98, v100);
          }

          ++v78;
        }

        while (objc_msgSend_count(a5, v94, v95, v96) - 1 > v79);
      }

      v101 = objc_msgSend_count(a5, v75, v76, v77);
      v104 = objc_msgSend_objectAtIndexedSubscript_(a5, v102, v101 - 1, v103);
      objc_msgSend_addObject_(v70, v105, v104, v106);
      v109 = objc_msgSend_objectAtIndexedSubscript_(v70, v107, 0, v108);
      objc_msgSend_addObject_(v71, v110, v109, v111);
      if ((objc_msgSend_count(v70, v112, v113, v114) - 3) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v118 = 1;
        do
        {
          v119 = objc_msgSend_objectAtIndexedSubscript_(v70, v115, v118, v117);
          v123 = objc_msgSend_timestamp(v119, v120, v121, v122);
          v126 = objc_msgSend_objectAtIndexedSubscript_(v70, v124, v118 - 1, v125);
          v130 = objc_msgSend_timestamp(v126, v127, v128, v129);
          objc_msgSend_timeIntervalSinceDate_(v123, v131, v130, v132);
          v134 = v133;
          v135 = v118 + 1;
          v138 = objc_msgSend_objectAtIndexedSubscript_(v70, v136, v118 + 1, v137);
          v142 = objc_msgSend_timestamp(v138, v139, v140, v141);
          v145 = objc_msgSend_objectAtIndexedSubscript_(v70, v143, v118, v144);
          v149 = objc_msgSend_timestamp(v145, v146, v147, v148);
          objc_msgSend_timeIntervalSinceDate_(v142, v150, v149, v151);
          v153 = v152;
          v156 = objc_msgSend_objectAtIndexedSubscript_(v70, v154, v118 - 1, v155);
          if (objc_msgSend_isGPSLocationType(v156, v157, v158, v159) && (v162 = objc_msgSend_objectAtIndexedSubscript_(v70, v160, v118, v161), objc_msgSend_isGPSLocationType(v162, v163, v164, v165)) && ((v166 = objc_msgSend_objectAtIndexedSubscript_(v70, v160, v118 + 1, v161), isGPSLocationType = objc_msgSend_isGPSLocationType(v166, v167, v168, v169), v134 <= 2.0) ? (v171 = isGPSLocationType) : (v171 = 0), v171 == 1 && v153 <= 2.0 && ((v172 = objc_msgSend_objectAtIndexedSubscript_(v70, v160, v118 - 1, v161), objc_msgSend_speedAccuracy(v172, v173, v174, v175), v176 > -1) ? (v177 = ((v176 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v177 = 1), v177 ? (v178 = (v176 - 1) >= 0xFFFFFFFFFFFFFLL) : (v178 = 0), v178 ? (v179 = (v176 & 0x7FFFFFFFFFFFFFFFLL) == 0) : (v179 = 1), v179 && ((v180 = objc_msgSend_objectAtIndexedSubscript_(v70, v160, v118, v161), objc_msgSend_speedAccuracy(v180, v181, v182, v183), v184 > -1) ? (v185 = ((v184 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v185 = 1), v185 ? (v186 = (v184 - 1) >= 0xFFFFFFFFFFFFFLL) : (v186 = 0), v186 ? (v187 = (v184 & 0x7FFFFFFFFFFFFFFFLL) == 0) : (v187 = 1), v187 && ((v188 = objc_msgSend_objectAtIndexedSubscript_(v70, v160, v118 + 1, v161), objc_msgSend_speedAccuracy(v188, v189, v190, v191), v192 > -1) ? (v193 = ((v192 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v193 = 1), v193 ? (v194 = (v192 - 1) >= 0xFFFFFFFFFFFFFLL) : (v194 = 0), v194 ? (v195 = (v192 & 0x7FFFFFFFFFFFFFFFLL) == 0) : (v195 = 1), v195 && (v196 = objc_msgSend_objectAtIndexedSubscript_(v70, v160, v118, v161), objc_msgSend_speed(v196, v197, v198, v199), v201 = v200, v204 = objc_msgSend_objectAtIndexedSubscript_(v70, v202, v118 - 1, v203), objc_msgSend_speed(v204, v205, v206, v207), vabdd_f64(v201, v208) >= 6.0) && (v209 = objc_msgSend_objectAtIndexedSubscript_(v70, v160, v118 + 1, v161), objc_msgSend_speed(v209, v210, v211, v212), v214 = v213, v217 = objc_msgSend_objectAtIndexedSubscript_(v70, v215, v118, v216), objc_msgSend_speed(v217, v218, v219, v220), vabdd_f64(v214, v221) >= 6.0) && (v222 = objc_msgSend_objectAtIndexedSubscript_(v70, v160, v118 + 1, v161), objc_msgSend_speed(v222, v223, v224, v225), v227 = v226, v230 = objc_msgSend_objectAtIndexedSubscript_(v70, v228, v118 - 1, v229), objc_msgSend_speed(v230, v231, v232, v233), vabdd_f64(v227, v234) * 0.5 < 6.0))))))
          {
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
            }

            v235 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
            {
              v238 = objc_msgSend_objectAtIndexedSubscript_(v70, v236, v118, v237);
              v242 = objc_msgSend_timestamp(v238, v239, v240, v241);
              objc_msgSend_timeIntervalSinceReferenceDate(v242, v243, v244, v245);
              *buf = 134349056;
              *&buf[4] = v246;
              _os_log_impl(&dword_19B873000, v235, OS_LOG_TYPE_ERROR, "CLTSP,II,checkForSpeedIntegrity,skipped GPS location point at timestamp,%{public}.3lf", buf, 0xCu);
            }

            v247 = sub_19B87DD40();
            if ((*(v247 + 160) & 0x80000000) == 0 || (*(v247 + 164) & 0x80000000) == 0 || (*(v247 + 168) & 0x80000000) == 0 || *(v247 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
              }

              v253 = qword_1EAFE46E8;
              v254 = objc_msgSend_objectAtIndexedSubscript_(v70, v251, v118, v252);
              v258 = objc_msgSend_timestamp(v254, v255, v256, v257);
              objc_msgSend_timeIntervalSinceReferenceDate(v258, v259, v260, v261);
              LODWORD(__p[0]) = 134349056;
              *(__p + 4) = v262;
              v263 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v253, 16, "CLTSP,II,checkForSpeedIntegrity,skipped GPS location point at timestamp,%{public}.3lf", __p, 12);
              sub_19B885924("Generic", 1, 0, 0, "void checkForSpeedIntegrity(NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v263);
              if (v263 != buf)
              {
                free(v263);
              }
            }
          }

          else
          {
            v264 = objc_msgSend_objectAtIndexedSubscript_(v70, v160, v118, v161);
            objc_msgSend_addObject_(v71, v265, v264, v266);
          }

          ++v118;
        }

        while (objc_msgSend_count(v70, v248, v249, v250) - 1 > v135);
      }

      v278 = objc_msgSend_count(v70, v115, v116, v117);
      v281 = objc_msgSend_objectAtIndexedSubscript_(v70, v279, v278 - 1, v280);
      objc_msgSend_addObject_(v71, v282, v281, v283);
      if (objc_msgSend_count(v71, v284, v285, v286))
      {
        if (v70 && v71)
        {
          objc_msgSend_removeAllObjects(v70, v287, v288, v289);
          objc_msgSend_addObjectsFromArray_(v70, v290, v71, v291);
        }

        objc_msgSend_removeAllObjects(v71, v287, v288, v289);
      }

      v292 = 0;
      if (v70)
      {
        v293 = v71 == 0;
      }

      else
      {
        v293 = 1;
      }

      v294 = !v293;
      v857 = v294;
      memset(__p, 0, sizeof(__p));
      __src = 0uLL;
      *&v880 = 0;
      do
      {
        while (1)
        {
          v295 = v292;
          if (objc_msgSend_count(v70, v287, v288, v289) - 1 <= v292)
          {
            break;
          }

          ++v292;
          v299 = objc_msgSend_objectAtIndexedSubscript_(v70, v296, v295 + 1, v298);
          v303 = objc_msgSend_timestamp(v299, v300, v301, v302);
          v306 = objc_msgSend_objectAtIndexedSubscript_(v70, v304, v295, v305);
          v310 = objc_msgSend_timestamp(v306, v307, v308, v309);
          objc_msgSend_timeIntervalSinceDate_(v303, v311, v310, v312);
          v314 = v313;
          v317 = objc_msgSend_objectAtIndexedSubscript_(v70, v315, v295 + 1, v316);
          v320 = objc_msgSend_objectAtIndexedSubscript_(v70, v318, v295, v319);
          objc_msgSend_distanceFromLocation_(v317, v321, v320, v322);
          *buf = v323 / v314;
          sub_19B8F518C(__p, buf);
          v326 = objc_msgSend_objectAtIndexedSubscript_(v70, v324, v295, v325);
          objc_msgSend_speed(v326, v327, v328, v329);
          if (v330 < 0.0 && v314 <= 2.0)
          {
            v331 = objc_msgSend_objectAtIndexedSubscript_(v70, v287, v295 + 1, v289);
            if (objc_msgSend_isGPSLocationType(v331, v332, v333, v334))
            {
              v335 = objc_msgSend_objectAtIndexedSubscript_(v70, v287, v295 + 1, v289);
              objc_msgSend_speed(v335, v336, v337, v338);
              v340 = v339 <= -1 || ((v339 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
              v341 = v340 && (v339 - 1) >= 0xFFFFFFFFFFFFFLL;
              if (!v341 || (v339 & 0x7FFFFFFFFFFFFFFFLL) == 0)
              {
                v343 = objc_msgSend_objectAtIndexedSubscript_(v70, v287, v295 + 1, v289);
                objc_msgSend_speedAccuracy(v343, v344, v345, v346);
                v349 = (v347 < 0.0 || ((*&v347 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v347 - 1) > 0xFFFFFFFFFFFFELL;
                if (!v349 && v347 < 20.0)
                {
                  v350 = objc_msgSend_objectAtIndexedSubscript_(v70, v287, v295, v289);
                  v353 = objc_msgSend_objectAtIndexedSubscript_(v70, v351, v292, v352);
                  objc_msgSend_speed(v353, v354, v355, v356);
                  v358 = v357;
                  v361 = objc_msgSend_objectAtIndexedSubscript_(v70, v359, v292, v360);
                  objc_msgSend_speedAccuracy(v361, v362, v363, v364);
                  objc_msgSend_updateSpeed_andSpeedAccuracy_(v350, v365, v366, v367, v358, v368);
                }
              }
            }
          }
        }

        v369 = __p[0];
        if ((__p[1] - __p[0]) >= 9)
        {
          v370 = 0;
          do
          {
            v371 = v370 + 1;
            if (vabdd_f64(v369[v370 + 1], v369[v370]) >= 6.0)
            {
              v372 = objc_msgSend_objectAtIndexedSubscript_(v70, v296, v370 + 1, v298);
              if ((objc_msgSend_isGPSLocationType(v372, v373, v374, v375) & 1) == 0)
              {
                v376 = *(&__src + 1);
                if (*(&__src + 1) >= v880)
                {
                  v378 = __src;
                  v379 = *(&__src + 1) - __src;
                  v380 = (*(&__src + 1) - __src) >> 2;
                  v381 = v380 + 1;
                  if ((v380 + 1) >> 62)
                  {
                    sub_19B8B8A40();
                  }

                  v382 = v880 - __src;
                  if ((v880 - __src) >> 1 > v381)
                  {
                    v381 = v382 >> 1;
                  }

                  v177 = v382 >= 0x7FFFFFFFFFFFFFFCLL;
                  v383 = 0x3FFFFFFFFFFFFFFFLL;
                  if (!v177)
                  {
                    v383 = v381;
                  }

                  if (v383)
                  {
                    sub_19B8F1D64(&__src, v383);
                  }

                  v384 = (4 * v380);
                  v385 = v370 + 1;
                  v386 = &v384[-((*(&__src + 1) - __src) >> 2)];
                  *v384 = v385;
                  v377 = v384 + 1;
                  memcpy(v386, v378, v379);
                  v387 = __src;
                  *&__src = v386;
                  *(&__src + 1) = v377;
                  *&v880 = 0;
                  if (v387)
                  {
                    operator delete(v387);
                  }
                }

                else
                {
                  **(&__src + 1) = v370 + 1;
                  v377 = (v376 + 4);
                }

                *(&__src + 1) = v377;
              }
            }

            v369 = __p[0];
            v370 = v371;
          }

          while (((__p[1] - __p[0]) >> 3) - 1 > v371);
          for (i = 0; objc_msgSend_count(v70, v296, v297, v298) > i; ++i)
          {
            v389 = __src;
            if (__src == *(&__src + 1))
            {
              goto LABEL_202;
            }

            v390 = 0;
            do
            {
              v391 = *v389++;
              if (i == v391)
              {
                ++v390;
              }
            }

            while (v389 != *(&__src + 1));
            if (!v390)
            {
LABEL_202:
              v405 = objc_msgSend_objectAtIndexedSubscript_(v70, v296, i, v298);
              objc_msgSend_addObject_(v71, v406, v405, v407);
            }

            else
            {
              v392 = objc_msgSend_objectAtIndexedSubscript_(v70, v296, i, v298);
              v396 = objc_msgSend_timestamp(v392, v393, v394, v395);
              objc_msgSend_timeIntervalSinceReferenceDate(v396, v397, v398, v399);
              v401 = v400;
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
              }

              v402 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134349056;
                *&buf[4] = v401;
                _os_log_impl(&dword_19B873000, v402, OS_LOG_TYPE_DEBUG, "CLTSP,II,checkForSpeedIntegrity,skipped location point at timestamp,%{public}.3lf", buf, 0xCu);
              }

              v403 = sub_19B87DD40();
              if (*(v403 + 160) > 1 || *(v403 + 164) > 1 || *(v403 + 168) > 1 || *(v403 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                }

                v884[0] = 134349056;
                *&v884[1] = v401;
                v404 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,II,checkForSpeedIntegrity,skipped location point at timestamp,%{public}.3lf", v884, 12);
                sub_19B885924("Generic", 1, 0, 2, "void checkForSpeedIntegrity(NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v404);
                if (v404 != buf)
                {
                  free(v404);
                }
              }
            }
          }
        }

        v408 = *(&__src + 1);
        if (objc_msgSend_count(v71, v296, v297, v298))
        {
          if (v857)
          {
            objc_msgSend_removeAllObjects(v70, v287, v288, v289);
            objc_msgSend_addObjectsFromArray_(v70, v409, v71, v410);
          }

          objc_msgSend_removeAllObjects(v71, v287, v288, v289);
        }

        v292 = 0;
        __p[1] = __p[0];
        *(&__src + 1) = __src;
      }

      while (__src != v408);
      if (objc_msgSend_count(v70, v287, v288, v289) && v70)
      {
        objc_msgSend_removeAllObjects(obj, v411, v412, v413);
        objc_msgSend_addObjectsFromArray_(obj, v414, v70, v415);
      }

      v416 = objc_msgSend_objectAtIndexedSubscript_(a5, v411, 0, v413);
      objc_msgSend_insertObject_atIndex_(obj, v417, v416, 0);
      v421 = objc_msgSend_count(a5, v418, v419, v420);
      v424 = objc_msgSend_objectAtIndexedSubscript_(a5, v422, v421 - 1, v423);
      objc_msgSend_addObject_(obj, v425, v424, v426);
      v11 = &off_19BA89000;
      if (__src)
      {
        *(&__src + 1) = __src;
        operator delete(__src);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      v435 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v435, OS_LOG_TYPE_ERROR, "CLTSP,II,checkForSpeedIntegrity,empty inputLocations", buf, 2u);
      }

      v436 = sub_19B87DD40();
      if ((*(v436 + 160) & 0x80000000) == 0 || (*(v436 + 164) & 0x80000000) == 0 || (*(v436 + 168) & 0x80000000) == 0 || *(v436 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
        }

        LOWORD(__p[0]) = 0;
        v437 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,II,checkForSpeedIntegrity,empty inputLocations", __p, 2);
        sub_19B885924("Generic", 1, 0, 0, "void checkForSpeedIntegrity(NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v437);
        if (v437 != buf)
        {
          free(v437);
        }
      }
    }

    v881 = 0u;
    v882 = 0u;
    __src = 0u;
    v880 = 0u;
    v440 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v427, &__src, __p, 16);
    if (!v440)
    {
      goto LABEL_271;
    }

    v441 = *v880;
LABEL_251:
    v442 = 0;
    while (1)
    {
      if (*v880 != v441)
      {
        objc_enumerationMutation(obj);
      }

      v443 = *(*(&__src + 1) + 8 * v442);
      objc_msgSend_altitudeAccuracy(v443, v433, v438, v439);
      if (v444 > 0.0)
      {
        objc_msgSend_altitudeAccuracy(v443, v433, v438, v439);
        if ((v445 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }
      }

      if (v440 == ++v442)
      {
        v440 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v433, &__src, __p, 16);
        if (v440)
        {
          goto LABEL_251;
        }

        goto LABEL_271;
      }
    }

    objc_msgSend_altitude(v443, v433, v438, v439);
    v875 = v446;
    objc_msgSend_altitudeAccuracy(v443, v447, v448, v449);
    v876 = v450;
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v451 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      objc_msgSend_altitude(v443, v452, v453, v454);
      v456 = v455;
      objc_msgSend_altitudeAccuracy(v443, v457, v458, v459);
      v461 = v460;
      v465 = objc_msgSend_timestamp(v443, v462, v463, v464);
      objc_msgSend_timeIntervalSinceReferenceDate(v465, v466, v467, v468);
      *buf = 134349568;
      *&buf[4] = v456;
      v896 = 2050;
      v897 = v461;
      v898 = 2050;
      v899 = v469;
      _os_log_impl(&dword_19B873000, v451, OS_LOG_TYPE_DEBUG, "CLTSP,II,checkForAltitudeIntegrity,quick search,first valid altitude,%{public}.2lf,and altitude accuracy,%{public}.2lf,at time,%{public}.3lf", buf, 0x20u);
    }

    v470 = sub_19B87DD40();
    if (*(v470 + 160) <= 1 && *(v470 + 164) <= 1 && *(v470 + 168) <= 1 && !*(v470 + 152))
    {
      goto LABEL_271;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v474 = qword_1EAFE46E8;
    objc_msgSend_altitude(v443, v471, v472, v473);
    v476 = v475;
    objc_msgSend_altitudeAccuracy(v443, v477, v478, v479);
    v481 = v480;
    v485 = objc_msgSend_timestamp(v443, v482, v483, v484);
    objc_msgSend_timeIntervalSinceReferenceDate(v485, v486, v487, v488);
    v884[0] = 134349568;
    *&v884[1] = v476;
    v885 = 2050;
    v886 = v481;
    v887 = 2050;
    v888 = v489;
    v434 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v474, 2, "CLTSP,II,checkForAltitudeIntegrity,quick search,first valid altitude,%{public}.2lf,and altitude accuracy,%{public}.2lf,at time,%{public}.3lf", v884, 32);
    sub_19B885924("Generic", 1, 0, 2, "void lookForValidAltitude(NSArray<CLTripSegmentLocation *> * _Nonnull, CLInertialIntegratorLastEstimatedParameters &)", "CoreLocation: %s\n", v434);
    if (v434 == buf)
    {
      goto LABEL_271;
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v428 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v428, OS_LOG_TYPE_ERROR, "CLTSP,II,checkForSpeedIntegrity,null outputLocations", buf, 2u);
    }

    v429 = sub_19B87DD40();
    if ((*(v429 + 160) & 0x80000000) == 0 || (*(v429 + 164) & 0x80000000) == 0 || (*(v429 + 168) & 0x80000000) == 0 || *(v429 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      LOWORD(__p[0]) = 0;
      v430 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,II,checkForSpeedIntegrity,null outputLocations", __p, 2);
      sub_19B885924("Generic", 1, 0, 0, "void checkForSpeedIntegrity(NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v430);
      if (v430 != buf)
      {
        free(v430);
      }
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v431 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v431, OS_LOG_TYPE_ERROR, "CLTSP,II,checkForAltitudeIntegrity,null tripLocations", buf, 2u);
    }

    v432 = sub_19B87DD40();
    if ((*(v432 + 160) & 0x80000000) != 0 && (*(v432 + 164) & 0x80000000) != 0 && (*(v432 + 168) & 0x80000000) != 0 && !*(v432 + 152))
    {
      goto LABEL_271;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    LOWORD(v884[0]) = 0;
    v434 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,II,checkForAltitudeIntegrity,null tripLocations", v884, 2);
    sub_19B885924("Generic", 1, 0, 0, "void lookForValidAltitude(NSArray<CLTripSegmentLocation *> * _Nonnull, CLInertialIntegratorLastEstimatedParameters &)", "CoreLocation: %s\n", v434);
    if (v434 == buf)
    {
      goto LABEL_271;
    }
  }

  free(v434);
LABEL_271:
  v862 = 0u;
  v863 = 0u;
  v864 = 0u;
  v865 = 0u;
  v493 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v433, &v862, v883, 16);
  if (!v493)
  {
    goto LABEL_437;
  }

  v858 = 0;
  v494 = 0;
  v495 = *v863;
  v848 = *(v11 + 87);
  do
  {
    v496 = 0;
    do
    {
      if (*v863 != v495)
      {
        objc_enumerationMutation(obj);
      }

      v497 = *(*(&v862 + 1) + 8 * v496);
      v498 = v878;
      v499 = ++v878;
      if (objc_msgSend_count(obj, v490, v491, v492) == v499)
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
        }

        v503 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240192;
          *&buf[4] = v499;
          _os_log_impl(&dword_19B873000, v503, OS_LOG_TYPE_DEBUG, "CLTSP,II,reconstructTripSegment,reading the last breadcrumb of the current batch with total count,%{public}d", buf, 8u);
        }

        v504 = sub_19B87DD40();
        if (*(v504 + 160) > 1 || *(v504 + 164) > 1 || *(v504 + 168) > 1 || *(v504 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
          }

          LODWORD(__p[0]) = 67240192;
          HIDWORD(__p[0]) = v499;
          v505 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,II,reconstructTripSegment,reading the last breadcrumb of the current batch with total count,%{public}d", __p, 8);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v505);
          if (v505 != buf)
          {
            free(v505);
          }
        }

        v858 = 1;
      }

      if (v497)
      {
        v506 = objc_msgSend_locType(v497, v500, v501, v502);
        if (v506 > 0xD || ((1 << v506) & 0x2E1A) == 0)
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
          }

          v698 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
          {
            v702 = objc_msgSend_locType(v497, v699, v700, v701);
            *buf = 67240192;
            *&buf[4] = v702;
            _os_log_impl(&dword_19B873000, v698, OS_LOG_TYPE_DEBUG, "CLTSP,II,reconstructTripSegment,#warning,unsupported location type skipped,%{public}d", buf, 8u);
          }

          v703 = sub_19B87DD40();
          if (*(v703 + 160) > 1 || *(v703 + 164) > 1 || *(v703 + 168) > 1 || *(v703 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
            }

            v707 = qword_1EAFE46E8;
            v708 = objc_msgSend_locType(v497, v704, v705, v706);
            LODWORD(__p[0]) = 67240192;
            HIDWORD(__p[0]) = v708;
            v527 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v707, 2, "CLTSP,II,reconstructTripSegment,#warning,unsupported location type skipped,%{public}d", __p, 8);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v527);
            goto LABEL_412;
          }
        }

        else
        {
          objc_msgSend_latitude(v497, v507, v508, v509);
          *buf = v511;
          objc_msgSend_longitude(v497, v512, v513, v514);
          __p[0] = v515;
          if (sub_19B8FCE64(buf, __p))
          {
            objc_msgSend_horizontalAccuracy(v497, v516, v517, v518);
            if (v522 <= 0.0)
            {
              v524 = v498 == 0;
            }

            else
            {
              objc_msgSend_horizontalAccuracy(v497, v519, v520, v521);
              v524 = v523 <= 100.0 || v498 == 0;
            }

            v549 = v524;
            if ((v549 | v858) & 1) != 0 || (objc_msgSend_isGPSLocationType(v497, v519, v520, v521))
            {
              objc_msgSend_altitudeAccuracy(v497, v519, v520, v521);
              if (v553 >= 0.0)
              {
                objc_msgSend_altitude(v497, v550, v551, v552);
                v875 = v605;
                objc_msgSend_altitudeAccuracy(v497, v606, v607, v608);
                v876 = v609;
              }

              else
              {
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                }

                v554 = qword_1EAFE46E8;
                if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
                {
                  objc_msgSend_altitude(v497, v555, v556, v557);
                  v559 = v558;
                  objc_msgSend_altitudeAccuracy(v497, v560, v561, v562);
                  v564 = v563;
                  v568 = objc_msgSend_timestamp(v497, v565, v566, v567);
                  objc_msgSend_timeIntervalSinceReferenceDate(v568, v569, v570, v571);
                  *buf = 134350080;
                  *&buf[4] = v559;
                  v896 = 2050;
                  v897 = v564;
                  v898 = 2050;
                  v899 = v572;
                  v900 = 2050;
                  v901 = v875;
                  v902 = 2050;
                  v903 = v876;
                  _os_log_impl(&dword_19B873000, v554, OS_LOG_TYPE_ERROR, "CLTSP,II,reconstructTripSegment,detected a location with altitude,%{public}.2lf,and unknown altitude accuracy,%{public}.2lf,time,%{public}.3lf,replaced with lastEstimatedAltitude,%{public}.2lf,and lastEstimatedAltitudeAccuracy,%{public}.2lf", buf, 0x34u);
                }

                v573 = sub_19B87DD40();
                if ((*(v573 + 160) & 0x80000000) != 0 && (*(v573 + 164) & 0x80000000) != 0 && (*(v573 + 168) & 0x80000000) != 0 && (*(v573 + 152) & 1) == 0)
                {
                  objc_msgSend_updateAltitude_andAltitudeAccuracy_(v497, v574, v575, v576, v875, v876);
                }

                else
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46B8 != -1)
                  {
                    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                  }

                  v580 = qword_1EAFE46E8;
                  objc_msgSend_altitude(v497, v577, v578, v579);
                  v582 = v581;
                  objc_msgSend_altitudeAccuracy(v497, v583, v584, v585);
                  v587 = v586;
                  v591 = objc_msgSend_timestamp(v497, v588, v589, v590);
                  objc_msgSend_timeIntervalSinceReferenceDate(v591, v592, v593, v594);
                  v595 = v875;
                  v596 = v876;
                  LODWORD(__p[0]) = 134350080;
                  *(__p + 4) = v582;
                  WORD2(__p[1]) = 2050;
                  *(&__p[1] + 6) = v587;
                  HIWORD(__p[2]) = 2050;
                  v890 = v597;
                  v891 = 2050;
                  v892 = v875;
                  v893 = 2050;
                  v894 = v876;
                  v598 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v580, 16, "CLTSP,II,reconstructTripSegment,detected a location with altitude,%{public}.2lf,and unknown altitude accuracy,%{public}.2lf,time,%{public}.3lf,replaced with lastEstimatedAltitude,%{public}.2lf,and lastEstimatedAltitudeAccuracy,%{public}.2lf", __p, 52);
                  sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v598);
                  if (v598 != buf)
                  {
                    free(v598);
                  }

                  objc_msgSend_updateAltitude_andAltitudeAccuracy_(v497, v599, v600, v601, v595, v596);
                }
              }

              objc_msgSend_altitude(v497, v602, v603, v604);
              if ((*&v613 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v613 <= -430.5 || v613 >= 8848.86)
              {
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                }

                v687 = qword_1EAFE46E8;
                if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
                {
                  objc_msgSend_altitude(v497, v688, v689, v690);
                  *buf = 134283521;
                  *&buf[4] = v691;
                  _os_log_impl(&dword_19B873000, v687, OS_LOG_TYPE_ERROR, "CLTSP,II,reconstructTripSegment,location with invalid altitude skipped,alt,%{private}.2lf", buf, 0xCu);
                }

                v692 = sub_19B87DD40();
                if ((*(v692 + 160) & 0x80000000) == 0 || (*(v692 + 164) & 0x80000000) == 0 || (*(v692 + 168) & 0x80000000) == 0 || *(v692 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46B8 != -1)
                  {
                    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                  }

                  v696 = qword_1EAFE46E8;
                  objc_msgSend_altitude(v497, v693, v694, v695);
                  LODWORD(__p[0]) = 134283521;
                  *(__p + 4) = v697;
                  v527 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v696, 16, "CLTSP,II,reconstructTripSegment,location with invalid altitude skipped,alt,%{private}.2lf", __p, 12);
                  sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v527);
                  goto LABEL_412;
                }
              }

              else
              {
                LODWORD(v870) = v870 + 1;
                LODWORD(__p[0]) = objc_msgSend_locType(v497, v610, v611, v612);
                v617 = objc_msgSend_timestamp(v497, v614, v615, v616);
                objc_msgSend_timeIntervalSinceReferenceDate(v617, v618, v619, v620);
                *buf = v621;
                sub_19B8F38F8(&v866, __p, buf);
                if (v494)
                {
                  v625 = objc_msgSend_timestamp(v494, v622, v623, v624);
                  objc_msgSend_timeIntervalSinceReferenceDate(v625, v626, v627, v628);
                  v630 = v629;
                  v634 = objc_msgSend_timestamp(v497, v631, v632, v633);
                  objc_msgSend_timeIntervalSinceReferenceDate(v634, v635, v636, v637);
                  v855 = v638;
                  v642 = objc_msgSend_timestamp(v497, v639, v640, v641);
                  v646 = objc_msgSend_timestamp(v494, v643, v644, v645);
                  objc_msgSend_timeIntervalSinceDate_(v642, v647, v646, v648);
                  v853 = v651;
                  if (fabs(v651) <= 0.001)
                  {
                    if (qword_1EAFE46B8 != -1)
                    {
                      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                    }

                    v758 = qword_1EAFE46E8;
                    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = v848;
                      *&buf[4] = v630;
                      _os_log_impl(&dword_19B873000, v758, OS_LOG_TYPE_DEBUG, "CLTSP,II,reconstructTripSegment,location with duplicated timestamp skipped,timestamp,%{public}.3lf", buf, 0xCu);
                    }

                    v759 = sub_19B87DD40();
                    if (*(v759 + 160) > 1 || *(v759 + 164) > 1 || *(v759 + 168) > 1 || *(v759 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE46B8 != -1)
                      {
                        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                      }

                      LODWORD(__p[0]) = v848;
                      *(__p + 4) = v630;
                      v527 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,II,reconstructTripSegment,location with duplicated timestamp skipped,timestamp,%{public}.3lf", __p, 12);
                      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v527);
                      goto LABEL_412;
                    }
                  }

                  else
                  {
                    objc_msgSend_distanceFromLocation_(v497, v649, v494, v650);
                    v852 = v652;
                    objc_msgSend_horizontalAccuracy(v494, v653, v654, v655);
                    v657 = v656;
                    objc_msgSend_horizontalAccuracy(v494, v658, v659, v660);
                    v662 = v661;
                    objc_msgSend_horizontalAccuracy(v497, v663, v664, v665);
                    v667 = v666;
                    objc_msgSend_horizontalAccuracy(v497, v668, v669, v670);
                    v675 = sqrt(v667 * v674 + v657 * v662);
                    *(&v873 + 1) = v675 / v853;
                    v676 = 180.0;
                    if (v852 >= v675 + v675)
                    {
                      v677 = atan(v675 / v852);
                      v678 = fmod(v677 * 57.2957795, 360.0);
                      v676 = v678 + 360.0;
                      if (v678 >= 0.0)
                      {
                        v676 = v678;
                      }
                    }

                    *(&v874 + 1) = v676;
                    if (objc_msgSend_isLoiLocationType(v494, v671, v672, v673) & 1) != 0 || ((objc_msgSend_isLoiLocationType(v497, v679, v680, v681) | v858) & 1) != 0 || ((v685 = objc_msgSend_isGPSLocationType(v497, v682, v683, v684), v852 / v853 <= 53.6) ? (v686 = 1) : (v686 = v685), (v686))
                    {
                      sub_19B8FCF74(buf);
                    }

                    if (qword_1EAFE46B8 != -1)
                    {
                      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                    }

                    v760 = qword_1EAFE46E8;
                    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
                    {
                      *buf = v848;
                      *&buf[4] = v855;
                      _os_log_impl(&dword_19B873000, v760, OS_LOG_TYPE_INFO, "CLTSP,II,reconstructTripSegment,possible erroneous location with large speed jump skipped,timestamp,%{public}.3lf", buf, 0xCu);
                    }

                    v761 = sub_19B87DD40();
                    if (*(v761 + 160) > 1 || *(v761 + 164) > 1 || *(v761 + 168) > 1 || *(v761 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE46B8 != -1)
                      {
                        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                      }

                      LODWORD(__p[0]) = v848;
                      *(__p + 4) = v855;
                      v527 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,II,reconstructTripSegment,possible erroneous location with large speed jump skipped,timestamp,%{public}.3lf", __p, 12);
                      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v527);
LABEL_412:
                      if (v527 != buf)
                      {
                        free(v527);
                      }
                    }
                  }
                }

                else
                {
                  sub_19B8759E8(v860, "input");
                  sub_19B8F4A54(a2, a3, v497, v860);
                  if (v861 < 0)
                  {
                    operator delete(v860[0]);
                  }

                  if (qword_1EAFE46B8 != -1)
                  {
                    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                  }

                  v738 = qword_1EAFE46E8;
                  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
                  {
                    v742 = objc_msgSend_timestamp(v497, v739, v740, v741);
                    objc_msgSend_timeIntervalSinceReferenceDate(v742, v743, v744, v745);
                    *buf = v848;
                    *&buf[4] = v746;
                    _os_log_impl(&dword_19B873000, v738, OS_LOG_TYPE_INFO, "CLTSP,II,reconstructTripSegment,previous location set,time,%{public}.3lf", buf, 0xCu);
                  }

                  v747 = sub_19B87DD40();
                  if (*(v747 + 160) > 1 || *(v747 + 164) > 1 || *(v747 + 168) > 1 || *(v747 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46B8 != -1)
                    {
                      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                    }

                    v751 = qword_1EAFE46E8;
                    v752 = objc_msgSend_timestamp(v497, v748, v749, v750);
                    objc_msgSend_timeIntervalSinceReferenceDate(v752, v753, v754, v755);
                    LODWORD(__p[0]) = v848;
                    *(__p + 4) = v756;
                    v757 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v751, 1, "CLTSP,II,reconstructTripSegment,previous location set,time,%{public}.3lf", __p, 12);
                    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v757);
                    if (v757 != buf)
                    {
                      free(v757);
                    }
                  }

                  v494 = v497;
                }
              }
            }

            else
            {
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
              }

              v709 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
              {
                v713 = objc_msgSend_timestamp(v497, v710, v711, v712);
                objc_msgSend_timeIntervalSinceReferenceDate(v713, v714, v715, v716);
                v718 = v717;
                objc_msgSend_horizontalAccuracy(v497, v719, v720, v721);
                *buf = 134349568;
                *&buf[4] = v718;
                v896 = 2050;
                v897 = v722;
                v898 = 2050;
                v899 = 0x4059000000000000;
                _os_log_impl(&dword_19B873000, v709, OS_LOG_TYPE_DEBUG, "CLTSP,II,reconstructTripSegment,location with invalid or large horizontal uncertainty skipped,time,%{public}.3lf,hunc,%{public}.2lf,threshold,%{public}.2lf", buf, 0x20u);
              }

              v723 = sub_19B87DD40();
              if (*(v723 + 160) > 1 || *(v723 + 164) > 1 || *(v723 + 168) > 1 || *(v723 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                }

                v727 = qword_1EAFE46E8;
                v728 = objc_msgSend_timestamp(v497, v724, v725, v726);
                objc_msgSend_timeIntervalSinceReferenceDate(v728, v729, v730, v731);
                v733 = v732;
                objc_msgSend_horizontalAccuracy(v497, v734, v735, v736);
                LODWORD(__p[0]) = 134349568;
                *(__p + 4) = v733;
                WORD2(__p[1]) = 2050;
                *(&__p[1] + 6) = v737;
                HIWORD(__p[2]) = 2050;
                v890 = 0x4059000000000000;
                v527 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v727, 2, "CLTSP,II,reconstructTripSegment,location with invalid or large horizontal uncertainty skipped,time,%{public}.3lf,hunc,%{public}.2lf,threshold,%{public}.2lf", __p, 32);
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v527);
                goto LABEL_412;
              }
            }
          }

          else
          {
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
            }

            v528 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
            {
              objc_msgSend_latitude(v497, v529, v530, v531);
              v533 = v532;
              objc_msgSend_longitude(v497, v534, v535, v536);
              *buf = 134545921;
              *&buf[4] = v533;
              v896 = 2053;
              v897 = v537;
              _os_log_impl(&dword_19B873000, v528, OS_LOG_TYPE_ERROR, "CLTSP,II,reconstructTripSegment,location with invalid coordinates skipped,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", buf, 0x16u);
            }

            v538 = sub_19B87DD40();
            if ((*(v538 + 160) & 0x80000000) == 0 || (*(v538 + 164) & 0x80000000) == 0 || (*(v538 + 168) & 0x80000000) == 0 || *(v538 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
              }

              v542 = qword_1EAFE46E8;
              objc_msgSend_latitude(v497, v539, v540, v541);
              v544 = v543;
              objc_msgSend_longitude(v497, v545, v546, v547);
              LODWORD(__p[0]) = 134545921;
              *(__p + 4) = v544;
              WORD2(__p[1]) = 2053;
              *(&__p[1] + 6) = v548;
              v527 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v542, 16, "CLTSP,II,reconstructTripSegment,location with invalid coordinates skipped,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", __p, 22);
              sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v527);
              goto LABEL_412;
            }
          }
        }
      }

      else
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
        }

        v525 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v525, OS_LOG_TYPE_ERROR, "CLTSP,II,reconstructTripSegment,null location object skipped", buf, 2u);
        }

        v526 = sub_19B87DD40();
        if ((*(v526 + 160) & 0x80000000) == 0 || (*(v526 + 164) & 0x80000000) == 0 || (*(v526 + 168) & 0x80000000) == 0 || *(v526 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
          }

          LOWORD(__p[0]) = 0;
          v527 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,II,reconstructTripSegment,null location object skipped", __p, 2);
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v527);
          goto LABEL_412;
        }
      }

      ++v496;
    }

    while (v496 != v493);
    v762 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v490, &v862, v883, 16);
    v493 = v762;
  }

  while (v762);
LABEL_437:
  if (a7)
  {
    if (objc_msgSend_count(a7, v490, v491, v492))
    {
      Object = objc_msgSend_firstObject(a7, v763, v764, v765);
      if (objc_msgSend_isLoiLocationType(Object, v767, v768, v769) && objc_msgSend_count(a7, v770, v771, v772))
      {
        v773 = 0;
        do
        {
          v774 = objc_msgSend_objectAtIndexedSubscript_(a7, v770, v773, v772);
          if (!objc_msgSend_isLoiLocationType(v774, v775, v776, v777))
          {
            break;
          }

          v778 = objc_msgSend_objectAtIndexedSubscript_(a7, v770, v773, v772);
          v781 = objc_msgSend_objectAtIndexedSubscript_(a7, v779, v773, v780);
          objc_msgSend_speed(v781, v782, v783, v784);
          objc_msgSend_updateSpeed_andSpeedAccuracy_(v778, v785, v786, v787);
          ++v773;
        }

        while (v773 < objc_msgSend_count(a7, v788, v789, v790));
      }

      v791 = objc_msgSend_lastObject(a7, v770, v771, v772);
      if (objc_msgSend_isLoiLocationType(v791, v792, v793, v794))
      {
        v798 = objc_msgSend_lastObject(a7, v795, v796, v797);
        v802 = objc_msgSend_lastObject(a7, v799, v800, v801);
        objc_msgSend_speed(v802, v803, v804, v805);
        objc_msgSend_updateSpeed_andSpeedAccuracy_(v798, v806, v807, v808);
        v812 = objc_msgSend_count(a7, v809, v810, v811);
        v815 = objc_msgSend_objectAtIndexedSubscript_(a7, v813, v812 - 2, v814);
        if ((objc_msgSend_isOriginalLocationType(v815, v816, v817, v818) & 1) == 0)
        {
          v819 = v812 - 3;
          do
          {
            v820 = objc_msgSend_objectAtIndexedSubscript_(a7, v795, v819 + 1, v797);
            v823 = objc_msgSend_objectAtIndexedSubscript_(a7, v821, v819 + 1, v822);
            objc_msgSend_speed(v823, v824, v825, v826);
            objc_msgSend_updateSpeed_andSpeedAccuracy_(v820, v827, v828, v829);
            v832 = objc_msgSend_objectAtIndexedSubscript_(a7, v830, v819--, v831);
          }

          while (!objc_msgSend_isOriginalLocationType(v832, v833, v834, v835));
        }
      }

      goto LABEL_472;
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v839 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v839, OS_LOG_TYPE_DEBUG, "CLTSP,II,invalidateLoiSpeedAccuracy,empty reconstructedLocations", buf, 2u);
    }

    v840 = sub_19B87DD40();
    if (*(v840 + 160) > 1 || *(v840 + 164) > 1 || *(v840 + 168) > 1 || *(v840 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      LOWORD(__p[0]) = 0;
      v838 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,II,invalidateLoiSpeedAccuracy,empty reconstructedLocations", __p, 2);
      sub_19B885924("Generic", 1, 0, 2, "void invalidateLoiSpeedAccuracy(NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v838);
      goto LABEL_470;
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v836 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v836, OS_LOG_TYPE_ERROR, "CLTSP,II,invalidateLoiSpeedAccuracy,null reconstructedLocations", buf, 2u);
    }

    v837 = sub_19B87DD40();
    if ((*(v837 + 160) & 0x80000000) == 0 || (*(v837 + 164) & 0x80000000) == 0 || (*(v837 + 168) & 0x80000000) == 0 || *(v837 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      LOWORD(__p[0]) = 0;
      v838 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,II,invalidateLoiSpeedAccuracy,null reconstructedLocations", __p, 2);
      sub_19B885924("Generic", 1, 0, 0, "void invalidateLoiSpeedAccuracy(NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v838);
LABEL_470:
      if (v838 != buf)
      {
        free(v838);
      }
    }
  }

LABEL_472:
  if (*a1 == 1 && v870 >= 2)
  {
    *buf = objc_msgSend_count(a6, v795, v796, v797);
    sub_19B8F3A34(&v866, &v878, buf);
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
  }

  v841 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v841, OS_LOG_TYPE_INFO, "CLTSP,II,reconstructTripSegment,inertial integrator completed", buf, 2u);
  }

  v842 = sub_19B87DD40();
  if (*(v842 + 160) > 1 || *(v842 + 164) > 1 || *(v842 + 168) > 1 || *(v842 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    LOWORD(__p[0]) = 0;
    v846 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,II,reconstructTripSegment,inertial integrator completed", __p, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v846);
    if (v846 != buf)
    {
      free(v846);
    }
  }

  v276 = objc_msgSend_count(a7, v843, v844, v845) != 0;
  if (v866)
  {
    *(&v866 + 1) = v866;
    operator delete(v866);
  }

  return v276;
}

void sub_19B8FCA18(_Unwind_Exception *a1)
{
  v2 = STACK[0x340];
  if (STACK[0x340])
  {
    STACK[0x348] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

BOOL sub_19B8FCE64(double *a1, double *a2)
{
  v2 = fabs(*a1);
  if (v2 == INFINITY)
  {
    return 0;
  }

  v3 = *a2;
  v4 = fabs(*a2);
  if (v4 == INFINITY || v2 < 0.00003 && v4 < 0.00003)
  {
    return 0;
  }

  v6 = v2 <= 90.0;
  if (v3 > 180.0)
  {
    v6 = 0;
  }

  return v3 >= -180.0 && v6;
}

void sub_19B8FCEEC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

os_log_t sub_19B8FCF44()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

void sub_19B8FCF74(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_19B8FCFC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_19B8FCFE4(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_19B8FD05C(a1, a2);
  }

  return a1;
}

void sub_19B8FD040(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B8FD05C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_19B8D9954(a1, a2);
  }

  sub_19B8F3F74();
}

void *sub_19B8FD098(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    sub_19B8B8A40();
  }

  return a1;
}

void sub_19B8FD120(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B8FD3E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_19B8FD440(uint64_t a1, uint64_t *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v6 = a2[1];
  v7 = *a2;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend_handleMessage_(Weak, v4, &v7, v5);
  if (v8)
  {
    sub_19B8750F8(v8);
  }
}

void sub_19B8FD49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B8FD4B4(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return objc_msgSend_handleInterruption(Weak, v2, v3, v4);
}

void sub_19B900090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9004E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (a16)
  {
    sub_19B8750F8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9006E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  sub_19B8750F8(v18);
  _Unwind_Resume(a1);
}

void sub_19B901DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (a13)
  {
    sub_19B8750F8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B901F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (a13)
  {
    sub_19B8750F8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9020A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (a13)
  {
    sub_19B8750F8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B902214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (a13)
  {
    sub_19B8750F8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B903FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B90429C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B904568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B904844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B904BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B904E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B905174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B905464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B905730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9059FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B905CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B905F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B906260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B90652C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9067F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B906AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B906D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B90705C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B907328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9075F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9078C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B907B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B907E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B907EEC()
{
  result = os_log_create("com.apple.locationd.Position", "Proximity");
  qword_1EAFE4700 = result;
  return result;
}

uint64_t sub_19B907F1C(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4738 != -1)
  {
    dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
  }

  v2 = qword_1EAFE4740;
  if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 40) + 24);
    *buf = 138477827;
    v11 = v3;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "#clreg,completionCallback,%{private}@,nil,nil", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v5 = *(*(a1 + 40) + 24);
    v8 = 138477827;
    v9 = v5;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 0, "#clreg,completionCallback,%{private}@,nil,nil", &v8, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLRegulatoryConfigInternal::fetchRAEConfig(CLLocation *, CLRegulatoryConfigCallback)_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

id sub_19B90810C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_coordinate(a1, a2, a3, a4);
  v6 = v5;
  objc_msgSend_coordinate(a1, v7, v8, v9);
  v11 = v10;
  v12 = objc_alloc(MEMORY[0x1E69A1E70]);
  v19 = objc_msgSend_initWithGEOCoordinate_(v12, v13, v14, v15, v6, v11);
  if (v19)
  {
    objc_msgSend_altitude(a1, v16, v17, v18);
    objc_msgSend_setAltitude_(v19, v21, v20, v22);
    objc_msgSend_horizontalAccuracy(a1, v23, v24, v25);
    objc_msgSend_setHorizontalAccuracy_(v19, v26, v27, v28);
    objc_msgSend_verticalAccuracy(a1, v29, v30, v31);
    objc_msgSend_setVerticalAccuracy_(v19, v32, v33, v34);
    v38 = objc_msgSend_referenceFrame(a1, v35, v36, v37);
    if (v38 == 1)
    {
      objc_msgSend_setReferenceFrame_(v19, v39, 1, v40);
    }

    else
    {
      objc_msgSend_setReferenceFrame_(v19, v39, 2 * (v38 == 2), v40);
    }
  }

  return v19;
}

void sub_19B9081C8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a2 && (v6 = a3, objc_msgSend_length(a2, a2, a3, a4)))
  {
    v11 = objc_msgSend_UTF8String(a2, v8, v9, v10);
    sub_19B8759E8(__p, v11);
    v12 = v46;
    if ((v46 & 0x80u) != 0)
    {
      v12 = __p[1];
    }

    if (v12)
    {
      v13 = sub_19B90ECFC(a1, __p);
      if (v13)
      {
        v14 = v13;
        if (qword_1EAFE4738 != -1)
        {
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
        }

        v15 = qword_1EAFE4740;
        if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v14[5];
          v20 = objc_msgSend_allObjects(v6, v16, v17, v18);
          v23 = objc_msgSend_componentsJoinedByString_(v20, v21, @",", v22);
          *buf = 138478083;
          v52 = v19;
          v53 = 2113;
          v54 = v23;
          _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "#clreg,completionCallback,%{private}@,%{private}@,nil", buf, 0x16u);
        }

        v24 = sub_19B87DD40();
        if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4738 != -1)
          {
            dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
          }

          v28 = qword_1EAFE4740;
          v29 = v14[5];
          v30 = objc_msgSend_allObjects(v6, v25, v26, v27);
          v33 = objc_msgSend_componentsJoinedByString_(v30, v31, @",", v32);
          v47 = 138478083;
          v48 = v29;
          v49 = 2113;
          v50 = v33;
          v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v28, 0, "#clreg,completionCallback,%{private}@,%{private}@,nil", &v47, 22);
          sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::sendIsoConfig(NSString *, CLRegulatoryIsoList, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v34);
          if (v34 != buf)
          {
            free(v34);
          }
        }

        v35 = v14 + 5;
      }

      else
      {
        if (qword_1EAFE4738 != -1)
        {
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
        }

        v42 = qword_1EAFE4740;
        if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_DEFAULT, "#clreg,completionCallback,default,nil,nil", buf, 2u);
        }

        v43 = sub_19B87DD40();
        if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4738 != -1)
          {
            dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
          }

          LOWORD(v47) = 0;
          v44 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 0, "#clreg,completionCallback,default,nil,nil", &v47, 2);
          sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::sendIsoConfig(NSString *, CLRegulatoryIsoList, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v44);
          if (v44 != buf)
          {
            free(v44);
          }
        }

        v6 = 0;
        v35 = a1 + 9;
      }

      (*(a4 + 16))(a4, *v35, v6, 0);
    }

    else
    {
      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
      }

      v39 = qword_1EAFE4740;
      if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_DEFAULT, "#clreg,completionCallback,default,nil,nil", buf, 2u);
      }

      v40 = sub_19B87DD40();
      if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4738 != -1)
        {
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
        }

        LOWORD(v47) = 0;
        v41 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 0, "#clreg,completionCallback,default,nil,nil", &v47, 2);
        sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::sendIsoConfig(NSString *, CLRegulatoryIsoList, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v41);
        if (v41 != buf)
        {
          free(v41);
        }
      }

      (*(a4 + 16))(a4, a1[9], 0, 0);
    }

    if (v46 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v36 = qword_1EAFE4740;
    if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEFAULT, "#clreg,completionCallback,default,nil,nil", buf, 2u);
    }

    v37 = sub_19B87DD40();
    if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
      }

      LOWORD(__p[0]) = 0;
      v38 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 0, "#clreg,completionCallback,default,nil,nil", __p, 2);
      sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::sendIsoConfig(NSString *, CLRegulatoryIsoList, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v38);
      if (v38 != buf)
      {
        free(v38);
      }
    }

    (*(a4 + 16))(a4, a1[9], 0, 0);
  }
}

void sub_19B908890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9088CC(uint64_t a1, void *a2, uint64_t a3)
{
  v54 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4738 != -1)
  {
    dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
  }

  v6 = qword_1EAFE4740;
  if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
  {
    objc_msgSend_coordinate(a2, v7, v8, v9);
    v11 = v10;
    objc_msgSend_coordinate(a2, v12, v13, v14);
    v16 = v15;
    objc_msgSend_horizontalAccuracy(a2, v17, v18, v19);
    *buf = 134546177;
    v49 = v11;
    v50 = 2053;
    v51 = v16;
    v52 = 2053;
    v53 = v20;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "#clreg,#map,query,lla,%{sensitive}.6f,lon,%{sensitive}.6f,accuracy,%{sensitive}.2f", buf, 0x20u);
  }

  v21 = sub_19B87DD40();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v26 = qword_1EAFE4740;
    objc_msgSend_coordinate(a2, v23, v24, v25);
    v28 = v27;
    objc_msgSend_coordinate(a2, v29, v30, v31);
    v33 = v32;
    objc_msgSend_horizontalAccuracy(a2, v34, v35, v36);
    v42 = 134546177;
    v43 = v28;
    v44 = 2053;
    v45 = v33;
    v46 = 2053;
    v47 = v37;
    v38 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v26, 0, "#clreg,#map,query,lla,%{sensitive}.6f,lon,%{sensitive}.6f,accuracy,%{sensitive}.2f", &v42, 32);
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::runMapsQuery(GEOLocation *, MapsResultCallback)", "CoreLocation: %s\n", v38);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  v39 = *(a1 + 64);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_19B908B74;
  v41[3] = &unk_1E753DA18;
  v41[4] = a3;
  return objc_msgSend_fetchPossibleTerritoriesForLocation_responseQueue_responseBlock_(MEMORY[0x1E69A1DD8], v22, a2, v39, v41);
}

uint64_t sub_19B908B74(uint64_t a1, void *a2, uint64_t a3)
{
  v158 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v5 = qword_1EAFE4740;
    if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v155 = a3;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#clreg,#map,response,#warning,error,%@", buf, 0xCu);
    }

    v6 = sub_19B87DD40();
    if (*(v6 + 160) <= 1 && *(v6 + 164) <= 1 && *(v6 + 168) <= 1 && !*(v6 + 152))
    {
      goto LABEL_15;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v149 = 138412290;
    v150 = a3;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 0, "#clreg,#map,response,#warning,error,%@", &v149, 12);
    goto LABEL_13;
  }

  v11 = a2;
  if (!a2)
  {
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v140 = qword_1EAFE4740;
    if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v140, OS_LOG_TYPE_DEFAULT, "#clreg,#map,response,#warning,results,Nil", buf, 2u);
    }

    v141 = sub_19B87DD40();
    if (*(v141 + 160) <= 1 && *(v141 + 164) <= 1 && *(v141 + 168) <= 1 && !*(v141 + 152))
    {
      goto LABEL_15;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    LOWORD(v149) = 0;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 0, "#clreg,#map,response,#warning,results,Nil", &v149, 2);
LABEL_13:
    v8 = v7;
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::runMapsQuery(GEOLocation *, MapsResultCallback)_block_invoke", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }

    goto LABEL_15;
  }

  v142 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v145, v153, 16);
  if (!v13)
  {
    goto LABEL_15;
  }

  v17 = v13;
  v18 = 0;
  v143 = 0;
  v19 = *v146;
  v144 = v11;
  do
  {
    v20 = 0;
    do
    {
      if (*v146 != v19)
      {
        objc_enumerationMutation(v11);
      }

      v21 = *(*(&v145 + 1) + 8 * v20);
      if (v21 && ((objc_msgSend_isDisputed(*(*(&v145 + 1) + 8 * v20), v14, v15, v16) & 1) != 0 || objc_msgSend_iso3166CountryCode(v21, v22, v23, v24) && (v28 = objc_msgSend_iso3166CountryCode(v21, v25, v26, v27), objc_msgSend_length(v28, v29, v30, v31))) && (!objc_msgSend_isDisputed(v21, v22, v23, v24) || objc_msgSend_disputedTerritoryName(v21, v32, v33, v34) && (v38 = objc_msgSend_disputedTerritoryName(v21, v35, v36, v37), objc_msgSend_length(v38, v39, v40, v41))))
      {
        if (objc_msgSend_isDisputed(v21, v32, v33, v34))
        {
          if (objc_msgSend_interestedPartyIso3166CountryCodes(v21, v42, v43, v44))
          {
            v48 = objc_msgSend_interestedPartyIso3166CountryCodes(v21, v45, v46, v47);
            if (objc_msgSend_count(v48, v49, v50, v51))
            {
              v52 = objc_msgSend_interestedPartyIso3166CountryCodes(v21, v45, v46, v47);
              objc_msgSend_setByAddingObjectsFromArray_(v142, v53, v52, v54);
            }
          }

          if (v18)
          {
            if (qword_1EAFE4738 != -1)
            {
              dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
            }

            v55 = qword_1EAFE4740;
            if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
            {
              v59 = v18;
              v60 = objc_msgSend_UTF8String(v18, v56, v57, v58);
              v64 = objc_msgSend_interestedPartyIso3166CountryCodes(v21, v61, v62, v63);
              v67 = objc_msgSend_componentsJoinedByString_(v64, v65, @",", v66);
              *buf = 136380931;
              v155 = v60;
              v18 = v59;
              v11 = v144;
              v156 = 2112;
              v157 = v67;
              _os_log_impl(&dword_19B873000, v55, OS_LOG_TYPE_DEBUG, "#clreg,#map,response,disputed,next,%{private}s,interested,%@", buf, 0x16u);
            }

            v68 = sub_19B87DD40();
            if (*(v68 + 160) > 1 || *(v68 + 164) > 1 || *(v68 + 168) > 1 || *(v68 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE4738 != -1)
              {
                dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
              }

              v72 = qword_1EAFE4740;
              v73 = v18;
              v74 = objc_msgSend_UTF8String(v18, v69, v70, v71);
              v78 = objc_msgSend_interestedPartyIso3166CountryCodes(v21, v75, v76, v77);
              v81 = objc_msgSend_componentsJoinedByString_(v78, v79, @",", v80);
              v149 = 136380931;
              v150 = v74;
              v151 = 2112;
              v152 = v81;
              v82 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v72, 2, "#clreg,#map,response,disputed,next,%{private}s,interested,%@", &v149, 22);
              goto LABEL_82;
            }
          }

          else
          {
            v18 = objc_msgSend_disputedTerritoryName(v21, v45, v46, v47);
            if (qword_1EAFE4738 != -1)
            {
              dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
            }

            v101 = qword_1EAFE4740;
            if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
            {
              v105 = v18;
              v106 = objc_msgSend_UTF8String(v18, v102, v103, v104);
              v110 = objc_msgSend_interestedPartyIso3166CountryCodes(v21, v107, v108, v109);
              v113 = objc_msgSend_componentsJoinedByString_(v110, v111, @",", v112);
              *buf = 136380931;
              v155 = v106;
              v18 = v105;
              v11 = v144;
              v156 = 2112;
              v157 = v113;
              _os_log_impl(&dword_19B873000, v101, OS_LOG_TYPE_DEBUG, "#clreg,#map,response,disputed,first,%{private}s,interested,%@", buf, 0x16u);
            }

            v114 = sub_19B87DD40();
            if (*(v114 + 160) > 1 || *(v114 + 164) > 1 || *(v114 + 168) > 1 || *(v114 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE4738 != -1)
              {
                dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
              }

              v118 = qword_1EAFE4740;
              v73 = v18;
              v119 = objc_msgSend_UTF8String(v18, v115, v116, v117);
              v123 = objc_msgSend_interestedPartyIso3166CountryCodes(v21, v120, v121, v122);
              v126 = objc_msgSend_componentsJoinedByString_(v123, v124, @",", v125);
              v149 = 136380931;
              v150 = v119;
              v151 = 2112;
              v152 = v126;
              v82 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v118, 2, "#clreg,#map,response,disputed,first,%{private}s,interested,%@", &v149, 22);
LABEL_82:
              v127 = v82;
              sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::runMapsQuery(GEOLocation *, MapsResultCallback)_block_invoke", "CoreLocation: %s\n", v82);
              if (v127 != buf)
              {
                free(v127);
              }

LABEL_97:
              v18 = v73;
              v11 = v144;
            }
          }
        }

        else
        {
          v89 = objc_msgSend_iso3166CountryCode(v21, v42, v43, v44);
          if (!v143)
          {
            v73 = v18;
            if (qword_1EAFE4738 != -1)
            {
              dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
            }

            v128 = qword_1EAFE4740;
            if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
            {
              v132 = objc_msgSend_iso3166CountryCode(v21, v129, v130, v131);
              *buf = 138477827;
              v155 = v132;
              _os_log_impl(&dword_19B873000, v128, OS_LOG_TYPE_DEBUG, "#clreg,#map,response,nonDisputed,first,%{private}@", buf, 0xCu);
            }

            v133 = sub_19B87DD40();
            if (*(v133 + 160) > 1 || *(v133 + 164) > 1 || *(v133 + 168) > 1 || *(v133 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE4738 != -1)
              {
                dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
              }

              v137 = qword_1EAFE4740;
              v138 = objc_msgSend_iso3166CountryCode(v21, v134, v135, v136);
              v149 = 138477827;
              v150 = v138;
              v139 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v137, 2, "#clreg,#map,response,nonDisputed,first,%{private}@", &v149, 12);
              sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::runMapsQuery(GEOLocation *, MapsResultCallback)_block_invoke", "CoreLocation: %s\n", v139);
              if (v139 != buf)
              {
                free(v139);
              }
            }

            v143 = v89;
            goto LABEL_97;
          }

          objc_msgSend_addObject_(v142, v87, v89, v88);
          if (qword_1EAFE4738 != -1)
          {
            dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
          }

          v90 = qword_1EAFE4740;
          if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
          {
            v94 = objc_msgSend_iso3166CountryCode(v21, v91, v92, v93);
            *buf = 138477827;
            v155 = v94;
            _os_log_impl(&dword_19B873000, v90, OS_LOG_TYPE_DEBUG, "#clreg,#map,response,nonDisputed,next,%{private}@", buf, 0xCu);
          }

          v95 = sub_19B87DD40();
          if (*(v95 + 160) > 1 || *(v95 + 164) > 1 || *(v95 + 168) > 1 || *(v95 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4738 != -1)
            {
              dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
            }

            v99 = qword_1EAFE4740;
            v100 = objc_msgSend_iso3166CountryCode(v21, v96, v97, v98);
            v149 = 138477827;
            v150 = v100;
            v85 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v99, 2, "#clreg,#map,response,nonDisputed,next,%{private}@", &v149, 12);
LABEL_57:
            v86 = v85;
            sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::runMapsQuery(GEOLocation *, MapsResultCallback)_block_invoke", "CoreLocation: %s\n", v85);
            if (v86 != buf)
            {
              free(v86);
            }
          }
        }
      }

      else
      {
        if (qword_1EAFE4738 != -1)
        {
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
        }

        v83 = qword_1EAFE4740;
        if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v83, OS_LOG_TYPE_DEBUG, "#clreg,#map,response,#warning,invalidResultEntry,ignoring", buf, 2u);
        }

        v84 = sub_19B87DD40();
        if (*(v84 + 160) > 1 || *(v84 + 164) > 1 || *(v84 + 168) > 1 || *(v84 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4738 != -1)
          {
            dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
          }

          LOWORD(v149) = 0;
          v85 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 2, "#clreg,#map,response,#warning,invalidResultEntry,ignoring", &v149, 2);
          goto LABEL_57;
        }
      }

      ++v20;
    }

    while (v17 != v20);
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v145, v153, 16);
  }

  while (v17);
  if (v18)
  {
    v9 = *(*(a1 + 32) + 16);
    return v9();
  }

  if (v143)
  {
    v9 = *(*(a1 + 32) + 16);
    return v9();
  }

LABEL_15:
  v9 = *(*(a1 + 32) + 16);
  return v9();
}

void sub_19B909750(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 40);
  if (qword_1EAFE4738 != -1)
  {
    dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
  }

  v7 = qword_1EAFE4740;
  if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_msgSend_allObjects(a3, v8, v9, v10);
    *buf = 138478083;
    v28 = a2;
    v29 = 2113;
    v30 = objc_msgSend_componentsJoinedByString_(v11, v12, @",", v13);
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "#clreg,cbLocation,iso,%{private}@,neighbors,%{private}@", buf, 0x16u);
  }

  v14 = sub_19B87DD40();
  if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v18 = qword_1EAFE4740;
    v19 = objc_msgSend_allObjects(a3, v15, v16, v17);
    v23 = 138478083;
    v24 = a2;
    v25 = 2113;
    v26 = objc_msgSend_componentsJoinedByString_(v19, v20, @",", v21);
    v22 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v18, 2, "#clreg,cbLocation,iso,%{private}@,neighbors,%{private}@", &v23, 22);
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::fetchIsoOrDefaultConfig(CLLocation *, CLRegulatoryConfigCallback)_block_invoke", "CoreLocation: %s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  sub_19B9081C8(v6, a2, a3, *(a1 + 32));
}

void sub_19B909988(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 48);
  if (qword_1EAFE4738 != -1)
  {
    dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
  }

  v7 = qword_1EAFE4740;
  if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_msgSend_allObjects(a3, v8, v9, v10);
    *buf = 138478083;
    v49 = a2;
    v50 = 2113;
    v51 = objc_msgSend_componentsJoinedByString_(v11, v12, @",", v13);
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "#clreg,cbExtendedLocation,iso,%{private}@,neighbors,%{private}@", buf, 0x16u);
  }

  v14 = sub_19B87DD40();
  if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v21 = qword_1EAFE4740;
    v22 = objc_msgSend_allObjects(a3, v18, v19, v20);
    v44 = 138478083;
    v45 = a2;
    v46 = 2113;
    v47 = objc_msgSend_componentsJoinedByString_(v22, v23, @",", v24);
    v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v21, 2, "#clreg,cbExtendedLocation,iso,%{private}@,neighbors,%{private}@", &v44, 22);
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::fetchIsoOrDefaultConfig(CLLocation *, CLRegulatoryConfigCallback)_block_invoke", "CoreLocation: %s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  if (a2 && objc_msgSend_length(a2, v15, v16, v17))
  {
    if (a3 && objc_msgSend_count(a3, v26, v27, v28))
    {
      objc_msgSend_addObject_(a3, v29, a2, v30);
      v34 = objc_msgSend_copy(a3, v31, v32, v33);
      objc_msgSend_setHorizontalAccuracy_(*(a1 + 32), v35, v36, v37, *(a1 + 56));
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = sub_19B909C7C;
      v43[3] = &unk_1E753DA68;
      v38 = *(a1 + 32);
      v39 = *(a1 + 40);
      v43[4] = v34;
      v43[5] = v39;
      v43[6] = v6;
      sub_19B9088CC(v6, v38, v43);
      return;
    }

    v40 = *(a1 + 40);
    v41 = v6;
    v42 = a2;
  }

  else
  {
    v40 = *(a1 + 40);
    v41 = v6;
    v42 = 0;
  }

  sub_19B9081C8(v41, v42, 0, v40);
}

void sub_19B909C7C(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 48);
  if (qword_1EAFE4738 != -1)
  {
    dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
  }

  v7 = qword_1EAFE4740;
  if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_msgSend_allObjects(a3, v8, v9, v10);
    v14 = objc_msgSend_componentsJoinedByString_(v11, v12, @",", v13);
    v18 = objc_msgSend_allObjects(*(a1 + 32), v15, v16, v17);
    *buf = 138478339;
    v52 = a2;
    v53 = 2113;
    v54 = v14;
    v55 = 2113;
    v56 = objc_msgSend_componentsJoinedByString_(v18, v19, @",", v20);
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "#clreg,cbWrapper,isoActual,%{private}@,neighborsWithinLocation,%{private}@,extendedNeighbors,%{private}@", buf, 0x20u);
  }

  v21 = sub_19B87DD40();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v25 = qword_1EAFE4740;
    v26 = objc_msgSend_allObjects(a3, v22, v23, v24);
    v29 = objc_msgSend_componentsJoinedByString_(v26, v27, @",", v28);
    v33 = objc_msgSend_allObjects(*(a1 + 32), v30, v31, v32);
    v45 = 138478339;
    v46 = a2;
    v47 = 2113;
    v48 = v29;
    v49 = 2113;
    v50 = objc_msgSend_componentsJoinedByString_(v33, v34, @",", v35);
    v36 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v25, 2, "#clreg,cbWrapper,isoActual,%{private}@,neighborsWithinLocation,%{private}@,extendedNeighbors,%{private}@", &v45, 32);
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::fetchIsoOrDefaultConfig(CLLocation *, CLRegulatoryConfigCallback)_block_invoke", "CoreLocation: %s\n", v36);
    if (v36 != buf)
    {
      free(v36);
    }
  }

  v40 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v41 = *(a1 + 32);
  if (v41 && objc_msgSend_count(v41, v37, v38, v39))
  {
    objc_msgSend_unionSet_(v40, v37, *(a1 + 32), v39);
  }

  if (a3 && objc_msgSend_count(a3, v37, v38, v39))
  {
    objc_msgSend_unionSet_(v40, v37, a3, v39);
  }

  if (v40)
  {
    v42 = objc_msgSend_count(v40, v37, v38, v39);
    if (a2)
    {
      if (v42)
      {
        objc_msgSend_removeObject_(v40, v43, a2, v44);
      }
    }
  }

  sub_19B9081C8(v6, a2, v40, *(a1 + 40));
}

uint64_t sub_19B909FB0(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4738 != -1)
  {
    dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
  }

  v2 = qword_1EAFE4740;
  if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138477827;
    v13 = v3;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "#clreg,completionCallback,%{private}@,nil,nil", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v5 = *(a1 + 32);
    v10 = 138477827;
    v11 = v5;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 0, "#clreg,completionCallback,%{private}@,nil,nil", &v10, 12);
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::sendRaeInfoAsync(NSDictionary *, CLRegulatoryInfoCallback)_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_msgSend_setObject_forKey_(v7, v8, @"kCLRegRegionTypeRae", @"kCLRegRegionTypeKey");
  return (*(*(a1 + 40) + 16))();
}

void sub_19B90A1BC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4738 != -1)
  {
    dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
  }

  v8 = qword_1EAFE4740;
  if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    *&buf[4] = a2;
    *&buf[12] = 2113;
    *&buf[14] = a3;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "sendIsoInfoSync,region,%{private}@,neighbors,%{private}@", buf, 0x16u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v30 = 138478083;
    v31 = a2;
    v32 = 2113;
    v33 = a3;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 2, "sendIsoInfoSync,region,%{private}@,neighbors,%{private}@", &v30, 22);
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::sendIsoInfoSync(CLRegulatoryRegion, CLRegulatoryRegionMutableList, CLRegulatoryInfoCallback)", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v25 = sub_19B90A51C;
  v26 = &unk_1E753DAB8;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  if (a2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend_objectForKey_(a2, v11, @"kCLRegNameKey", v12))
  {
    v15 = objc_msgSend_objectForKey_(a2, v13, @"kCLRegNameKey", v14);
    v19 = objc_msgSend_UTF8String(v15, v16, v17, v18);
    sub_19B8759E8(buf, v19);
    v20 = v35;
    if ((v35 & 0x80u) != 0)
    {
      v20 = *&buf[8];
    }

    if (v20)
    {
      v21 = sub_19B90ECFC(a1, buf);
      v22 = a1 + 9;
      if (v21)
      {
        v22 = v21 + 5;
        v23 = @"kCLRegRegionTypeGeo";
      }

      else
      {
        v23 = @"kCLRegRegionTypeDefault";
      }

      (v25)(v24, v23, *v22);
    }

    else
    {
      (v25)(v24, @"kCLRegRegionTypeDefault", a1[9]);
    }

    if (v35 < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    (v25)(v24, @"kCLRegRegionTypeDefault", a1[9]);
  }
}

void sub_19B90A4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B90A51C(uint64_t *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (a2 && (v8 = v4, objc_msgSend_length(a2, v5, v6, v7)))
  {
    objc_msgSend_setObject_forKey_(v8, v9, a2, @"kCLRegRegionTypeKey");
    if (a1[4])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (objc_msgSend_objectForKey_(a1[4], v10, @"kCLRegNameKey", v12))
        {
          objc_msgSend_setObject_forKey_(v8, v10, a1[4], @"kCLRegGeoRegionMatchedKey");
        }
      }
    }

    v13 = a1[5];
    if (v13 && objc_msgSend_count(v13, v10, v11, v12))
    {
      objc_msgSend_setObject_forKey_(v8, v14, a1[5], @"kCLRegNeighborsKey");
    }

    v15 = *(a1[6] + 16);

    v15();
  }

  else
  {
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v16 = qword_1EAFE4740;
    if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "#clreg,invalidRegionType", buf, 2u);
    }

    v17 = sub_19B87DD40();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
      }

      v19[0] = 0;
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 16, "#clreg,invalidRegionType", v19, 2);
      sub_19B885924("Generic", 1, 0, 0, "void CLRegulatoryConfigInternal::sendIsoInfoSync(CLRegulatoryRegion, CLRegulatoryRegionMutableList, CLRegulatoryInfoCallback)_block_invoke", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }
}

uint64_t sub_19B90A7CC(uint64_t a1, void *a2, uint64_t a3)
{
  v54 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4738 != -1)
  {
    dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
  }

  v6 = qword_1EAFE4740;
  if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
  {
    objc_msgSend_coordinate(a2, v7, v8, v9);
    v11 = v10;
    objc_msgSend_coordinate(a2, v12, v13, v14);
    v16 = v15;
    objc_msgSend_horizontalAccuracy(a2, v17, v18, v19);
    *buf = 134546177;
    v49 = v11;
    v50 = 2053;
    v51 = v16;
    v52 = 2053;
    v53 = v20;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "#clreg,#map,query,lla,%{sensitive}.6f,lon,%{sensitive}.6f,accuracy,%{sensitive}.2f", buf, 0x20u);
  }

  v21 = sub_19B87DD40();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v26 = qword_1EAFE4740;
    objc_msgSend_coordinate(a2, v23, v24, v25);
    v28 = v27;
    objc_msgSend_coordinate(a2, v29, v30, v31);
    v33 = v32;
    objc_msgSend_horizontalAccuracy(a2, v34, v35, v36);
    v42 = 134546177;
    v43 = v28;
    v44 = 2053;
    v45 = v33;
    v46 = 2053;
    v47 = v37;
    v38 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v26, 0, "#clreg,#map,query,lla,%{sensitive}.6f,lon,%{sensitive}.6f,accuracy,%{sensitive}.2f", &v42, 32);
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::runMapInfoQuery(GEOLocation *, MapsInfoReply)", "CoreLocation: %s\n", v38);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  v39 = *(a1 + 64);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_19B90AA74;
  v41[3] = &unk_1E753DAE0;
  v41[4] = a2;
  v41[5] = a3;
  return objc_msgSend_fetchPossibleTerritoriesForLocation_responseQueue_responseBlock_(MEMORY[0x1E69A1DD8], v22, a2, v39, v41);
}

uint64_t sub_19B90AA74(uint64_t a1, void *a2, uint64_t a3)
{
  v124 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v5 = qword_1EAFE4740;
    if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v117 = a3;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#clreg,#map,response,#warning,error,%@", buf, 0xCu);
    }

    v6 = sub_19B87DD40();
    if (*(v6 + 160) <= 1 && *(v6 + 164) <= 1 && *(v6 + 168) <= 1 && !*(v6 + 152))
    {
      goto LABEL_15;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v108 = 138412290;
    v109 = a3;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 0, "#clreg,#map,response,#warning,error,%@", &v108, 12);
    goto LABEL_13;
  }

  if (!a2)
  {
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v96 = qword_1EAFE4740;
    if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v96, OS_LOG_TYPE_DEFAULT, "#clreg,#map,response,#warning,results,Nil", buf, 2u);
    }

    v97 = sub_19B87DD40();
    if (*(v97 + 160) <= 1 && *(v97 + 164) <= 1 && *(v97 + 168) <= 1 && !*(v97 + 152))
    {
      goto LABEL_15;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    LOWORD(v108) = 0;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 0, "#clreg,#map,response,#warning,results,Nil", &v108, 2);
LABEL_13:
    v8 = v7;
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::runMapInfoQuery(GEOLocation *, MapsInfoReply)_block_invoke", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }

    goto LABEL_15;
  }

  if (qword_1EAFE4738 != -1)
  {
    dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
  }

  v11 = qword_1EAFE4740;
  if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
  {
    objc_msgSend_coordinate(*(a1 + 32), v12, v13, v14);
    v16 = v15;
    objc_msgSend_coordinate(*(a1 + 32), v17, v18, v19);
    v21 = v20;
    objc_msgSend_horizontalAccuracy(*(a1 + 32), v22, v23, v24);
    *buf = 134546435;
    v117 = v16;
    v118 = 2053;
    v119 = v21;
    v120 = 2053;
    v121 = v25;
    v122 = 2113;
    v123 = a2;
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEBUG, "#clreg,#map,response,lla,%{sensitive}.6f,lon,%{sensitive}.6f,accuracy,%{sensitive}.2f,results,%{private}@", buf, 0x2Au);
  }

  v26 = sub_19B87DD40();
  if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v30 = qword_1EAFE4740;
    objc_msgSend_coordinate(*(a1 + 32), v27, v28, v29);
    v32 = v31;
    objc_msgSend_coordinate(*(a1 + 32), v33, v34, v35);
    v37 = v36;
    objc_msgSend_horizontalAccuracy(*(a1 + 32), v38, v39, v40);
    v108 = 134546435;
    v109 = v32;
    v110 = 2053;
    v111 = v37;
    v112 = 2053;
    v113 = v41;
    v114 = 2113;
    v115 = a2;
    v42 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v30, 2, "#clreg,#map,response,lla,%{sensitive}.6f,lon,%{sensitive}.6f,accuracy,%{sensitive}.2f,results,%{private}@", &v108, 42);
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::runMapInfoQuery(GEOLocation *, MapsInfoReply)_block_invoke", "CoreLocation: %s\n", v42);
    if (v42 != buf)
    {
      free(v42);
    }
  }

  v99 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v43, &v103, v107, 16);
  if (!v44)
  {
    goto LABEL_15;
  }

  v48 = v44;
  v98 = a1;
  isDisputed = 0;
  v102 = 0;
  v49 = *v104;
  do
  {
    for (i = 0; i != v48; ++i)
    {
      if (*v104 != v49)
      {
        objc_enumerationMutation(a2);
      }

      v51 = *(*(&v103 + 1) + 8 * i);
      if (v51)
      {
        if ((objc_msgSend_isDisputed(*(*(&v103 + 1) + 8 * i), v45, v46, v47) & 1) != 0 || objc_msgSend_iso3166CountryCode(v51, v52, v53, v54) && (v58 = objc_msgSend_iso3166CountryCode(v51, v55, v56, v57), objc_msgSend_length(v58, v59, v60, v61)))
        {
          if (!objc_msgSend_isDisputed(v51, v52, v53, v54) || objc_msgSend_disputedTerritoryName(v51, v62, v63, v64) && (v68 = objc_msgSend_disputedTerritoryName(v51, v65, v66, v67), objc_msgSend_length(v68, v69, v70, v71)))
          {
            v72 = v48;
            v73 = v49;
            v74 = objc_alloc_init(MEMORY[0x1E695DF90]);
            objc_msgSend_setObject_forKey_(v74, v75, v51, @"kCLGEOTerritoryInfoKey");
            if (objc_msgSend_isDisputed(v51, v76, v77, v78))
            {
              v82 = MEMORY[0x1E696AEC0];
              v83 = objc_msgSend_uniqueIdentifier(v51, v79, v80, v81);
              v86 = objc_msgSend_stringWithFormat_(v82, v84, @"%llX", v85, v83);
              objc_msgSend_setObject_forKey_(v74, v87, v86, @"kCLRegNameKey");
              v90 = v102;
              if (!((v102 == 0) | isDisputed & 1))
              {
                objc_msgSend_addObject_(v99, v88, v102, v89);
                isDisputed = 1;
                v90 = v74;
              }

              if (v90)
              {
LABEL_46:
                v102 = v90;
                objc_msgSend_addObject_(v99, v88, v74, v89);
LABEL_61:
                v49 = v73;
                v48 = v72;
                continue;
              }
            }

            else
            {
              v94 = objc_msgSend_iso3166CountryCode(v51, v79, v80, v81);
              objc_msgSend_setObject_forKey_(v74, v95, v94, @"kCLRegNameKey");
              v90 = v102;
              if (v102)
              {
                goto LABEL_46;
              }
            }

            isDisputed = objc_msgSend_isDisputed(v51, v88, v90, v89);
            v102 = v74;
            goto LABEL_61;
          }
        }
      }

      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
      }

      v91 = qword_1EAFE4740;
      if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v91, OS_LOG_TYPE_DEBUG, "#clreg,#map,response,#warning,invalidResultEntry,ignoring", buf, 2u);
      }

      v92 = sub_19B87DD40();
      if (*(v92 + 160) > 1 || *(v92 + 164) > 1 || *(v92 + 168) > 1 || *(v92 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4738 != -1)
        {
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
        }

        LOWORD(v108) = 0;
        v93 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 2, "#clreg,#map,response,#warning,invalidResultEntry,ignoring", &v108, 2);
        sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::runMapInfoQuery(GEOLocation *, MapsInfoReply)_block_invoke", "CoreLocation: %s\n", v93);
        if (v93 != buf)
        {
          free(v93);
        }
      }
    }

    v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v45, &v103, v107, 16);
  }

  while (v48);
  a1 = v98;
  if (v102)
  {
    v9 = *(*(v98 + 40) + 16);
    return v9();
  }

LABEL_15:
  v9 = *(*(a1 + 40) + 16);
  return v9();
}

void sub_19B90B2C8(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v8 = objc_msgSend_objectForKey_(a2, v6, @"kCLRegNameKey", v7), a3) && v8 && objc_msgSend_length(a3, v9, v10, v11))
  {
    v14 = objc_msgSend_objectForKey_(a2, v12, @"kCLRegNameKey", v13);
    if ((objc_msgSend_isEqual_(a3, v15, v14, v16) & 1) == 0)
    {

      objc_msgSend_addObject_(a1, v17, a2, v18);
    }
  }

  else
  {
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v19 = qword_1EAFE4740;
    if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      v27 = a2;
      v28 = 2113;
      v29 = a3;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "Invalid neighbor or excludeRegionName,%{private}@,%{private}@", buf, 0x16u);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
      }

      v22 = 138478083;
      v23 = a2;
      v24 = 2113;
      v25 = a3;
      v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 16, "Invalid neighbor or excludeRegionName,%{private}@,%{private}@", &v22, 22);
      sub_19B885924("Generic", 1, 0, 0, "void CLRegulatoryConfigInternal::appendNeighbor(CLRegulatoryRegionMutableList, CLRegulatoryRegion, NSString *)", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }
}

void *sub_19B90B55C(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, a2, &v11, v15, 16);
  if (result)
  {
    v7 = result;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a2);
        }

        sub_19B90B2C8(a1, *(*(&v11 + 1) + 8 * v9), a3);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v10, &v11, v15, 16);
      v7 = result;
    }

    while (result);
  }

  return result;
}

void sub_19B90B658(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 48);
  if (a2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v9 = objc_msgSend_objectForKey_(a2, v7, @"kCLRegNameKey", v8), a3) && v9 && objc_msgSend_count(a3, v10, v11, v12))
  {
    objc_msgSend_setHorizontalAccuracy_(*(a1 + 32), v13, v14, v15, *(a1 + 56));
    v16 = a2;
    v17 = a3;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_19B90B780;
    v20[3] = &unk_1E753DB08;
    v20[4] = a2;
    v20[5] = a3;
    v18 = *(a1 + 32);
    v20[6] = *(a1 + 40);
    v20[7] = v6;
    sub_19B90A7CC(v6, v18, v20);
  }

  else
  {
    v19 = *(a1 + 40);

    sub_19B90A1BC(v6, a2, a3, v19);
  }
}

void sub_19B90B780(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 56);
  if (!a2 || (v6 = a2, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !objc_msgSend_objectForKey_(v6, v7, @"kCLRegNameKey", v8))
  {
    v6 = *(a1 + 32);
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = objc_msgSend_objectForKey_(v6, v10, @"kCLRegNameKey", v11);
  sub_19B90B2C8(v9, *(a1 + 32), v12);
  sub_19B90B55C(v9, *(a1 + 40), v12);
  sub_19B90B55C(v9, a3, v12);
  sub_19B90A1BC(v5, v6, v9, *(a1 + 48));

  v13 = *(a1 + 40);
}

void sub_19B90B964(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = sub_19B90E774(v1);
  MEMORY[0x19EAE98C0](v6, v2);
  _Unwind_Resume(a1);
}

void sub_19B90C408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_19B90ECA0(1, v29);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

os_log_t sub_19B90E67C()
{
  result = os_log_create("com.apple.locationd.Utility", "Utility");
  qword_1EAFE4740 = result;
  return result;
}

uint64_t *sub_19B90E6AC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    while (v3 != v4)
    {

      v3 += 32;
    }

    for (i = v2 + 16; ; *(i + 40))
    {
      i = *i;
      if (!i)
      {
        break;
      }
    }

    dispatch_release(*(v2 + 64));
    v6 = *(v2 + 40);
    if (v6)
    {
      *(v2 + 48) = v6;
      operator delete(v6);
    }

    sub_19B90E774(v2);

    JUMPOUT(0x19EAE98C0);
  }

  return result;
}

uint64_t sub_19B90E774(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

unint64_t sub_19B90E7DC(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *(a1 + 8);
  v3 = v1 < 0;
  if (v1 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (!v3)
  {
    v2 = *(a1 + 23);
  }

  if (v2 > 0x20)
  {
    if (v2 > 0x40)
    {
      v34 = 0x9DDFEA08EB382D69;
      v44 = *(v4 + v2 - 48);
      v43 = *(v4 + v2 - 40);
      v45 = *(v4 + v2 - 24);
      v46 = *(v4 + v2 - 56);
      v47 = *(v4 + v2 - 16);
      v48 = *(v4 + v2 - 8);
      v49 = v46 + v47;
      v50 = 0x9DDFEA08EB382D69 * (v45 ^ ((0x9DDFEA08EB382D69 * (v45 ^ (v44 + v2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v45 ^ (v44 + v2))));
      v51 = 0x9DDFEA08EB382D69 * (v50 ^ (v50 >> 47));
      v52 = *(v4 + v2 - 64) + v2;
      v53 = v44 + v46 + v52;
      v54 = __ROR8__(v53, 44) + v52;
      v55 = __ROR8__(v52 + v43 + v51, 21);
      v56 = v53 + v43;
      v57 = v54 + v55;
      v58 = v49 + *(v4 + v2 - 32) - 0x4B6D499041670D8DLL;
      v59 = v45 + v47 + v58;
      v60 = v59 + v48;
      v61 = __ROR8__(v59, 44) + v58 + __ROR8__(v58 + v43 + v48, 21);
      v63 = *v4;
      v62 = v4 + 4;
      v64 = v63 - 0x4B6D499041670D8DLL * v43;
      v65 = -((v2 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v66 = *(v62 - 3);
        v67 = v64 + v56 + v49 + v66;
        v68 = v62[2];
        v69 = v62[3];
        v70 = v62[1];
        v49 = v70 + v56 - 0x4B6D499041670D8DLL * __ROR8__(v49 + v57 + v68, 42);
        v71 = v51 + v60;
        v72 = *(v62 - 2);
        v73 = *(v62 - 1);
        v74 = *(v62 - 4) - 0x4B6D499041670D8DLL * v57;
        v75 = v74 + v60 + v73;
        v76 = v74 + v66 + v72;
        v56 = v76 + v73;
        v77 = __ROR8__(v76, 44) + v74;
        v78 = (0xB492B66FBE98F273 * __ROR8__(v67, 37)) ^ v61;
        v64 = 0xB492B66FBE98F273 * __ROR8__(v71, 33);
        v57 = v77 + __ROR8__(v75 + v78, 21);
        v79 = v64 + v61 + *v62;
        v60 = v70 + v68 + v79 + v69;
        v61 = __ROR8__(v70 + v68 + v79, 44) + v79 + __ROR8__(v49 + v72 + v79 + v69, 21);
        v62 += 8;
        v51 = v78;
        v65 += 64;
      }

      while (v65);
      v80 = 0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)));
      v81 = v64 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v57)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v57)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v57)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v57)))) >> 47));
      v82 = 0x9DDFEA08EB382D69 * (v81 ^ (v78 - 0x4B6D499041670D8DLL * (v49 ^ (v49 >> 47)) - 0x622015F714C7D297 * (v80 ^ (v80 >> 47))));
      v35 = 0x9DDFEA08EB382D69 * (v81 ^ (v82 >> 47) ^ v82);
    }

    else
    {
      v9 = v4 + v2;
      v10 = *(v4 + v2 - 16);
      v11 = *(v4 + v2 - 8);
      v12 = v4[1];
      v13 = *v4 - 0x3C5A37A36834CED9 * (v10 + v2);
      v16 = v4 + 2;
      v14 = v4[2];
      v15 = v16[1];
      v17 = __ROR8__(v13 + v15, 52);
      v18 = __ROR8__(v13, 37);
      v19 = v13 + v12;
      v20 = __ROR8__(v19, 7);
      v21 = v19 + v14;
      v22 = v20 + v18;
      v23 = *(v9 - 4) + v14;
      v24 = v11 + v15;
      v25 = __ROR8__(v24 + v23, 52);
      v26 = v22 + v17;
      v27 = __ROR8__(v23, 37);
      v28 = *(v9 - 3) + v23;
      v29 = __ROR8__(v28, 7);
      v30 = v26 + __ROR8__(v21, 31);
      v31 = v28 + v10;
      v32 = v31 + v24;
      v33 = v21 + v15 + v27 + v29 + v25 + __ROR8__(v31, 31);
      v34 = 0x9AE16A3B2F90404FLL;
      v35 = v30 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v32 + v30) - 0x651E95C4D06FBFB1 * v33) ^ ((0xC3A5C85C97CB3127 * (v32 + v30) - 0x651E95C4D06FBFB1 * v33) >> 47));
    }

    return (v35 ^ (v35 >> 47)) * v34;
  }

  else
  {
    if (v2 > 0x10)
    {
      v36 = v4[1];
      v37 = 0xB492B66FBE98F273 * *v4;
      v38 = 0x9AE16A3B2F90404FLL * *(v4 + v2 - 8);
      v39 = __ROR8__(v38, 30) + __ROR8__(v37 - v36, 43);
      v40 = v37 + v2 + __ROR8__(v36 ^ 0xC949D7C7509E6557, 20) - v38;
      v41 = 0x9DDFEA08EB382D69 * ((v39 - 0x3C5A37A36834CED9 * *(v4 + v2 - 16)) ^ v40);
      v42 = v40 ^ (v41 >> 47) ^ v41;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v42) ^ ((0x9DDFEA08EB382D69 * v42) >> 47));
    }

    if (v2 >= 9)
    {
      v5 = *v4;
      v6 = *(v4 + v2 - 8);
      v7 = __ROR8__(v6 + v2, v2);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v5)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v5)))) >> 47))) ^ v6;
    }

    if (v2 >= 4)
    {
      v83 = *v4;
      v84 = *(v4 + v2 - 4);
      v85 = 0x9DDFEA08EB382D69 * ((v2 + (8 * v83)) ^ v84);
      v42 = v84 ^ (v85 >> 47) ^ v85;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v42) ^ ((0x9DDFEA08EB382D69 * v42) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v2)
    {
      v86 = (0xC949D7C7509E6557 * (v2 | (4 * *(v4 + v2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v4 | (*(v4 + (v2 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v86 ^ (v86 >> 47));
    }
  }

  return result;
}

BOOL sub_19B90EC2C(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void sub_19B90ECA0(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_19B90ECFC(void *a1, void *a2)
{
  v4 = sub_19B90E7DC(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (sub_19B90EC2C(v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void sub_19B90EDF8(NSObject *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1[325].isa)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v1 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_INFO, "CLMM,Vehicle,Maps API already initialized", buf, 2u);
    }

    v2 = sub_19B87DD40();
    if (*(v2 + 160) <= 1 && *(v2 + 164) <= 1 && *(v2 + 168) <= 1 && !*(v2 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    LOWORD(v33[0]) = 0;
    v3 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLMM,Vehicle,Maps API already initialized", v33, 2);
    sub_19B885924("Generic", 1, 0, 2, "virtual void CLGeoMapFeatureAccessGeometry::initializeMapsAPI()", "CoreLocation: %s\n", v3);
    if (v3 == buf)
    {
      return;
    }

LABEL_25:
    free(v3);
    return;
  }

  v4 = a1;
  a1[326].isa = dispatch_queue_create("cl_geo_access_map_feature_geometry_queue", 0);
  v5 = objc_alloc(MEMORY[0x1E69A2198]);
  v8 = objc_msgSend_initWithQueue_(v5, v6, v4[326].isa, v7);
  v4[325].isa = v8;
  if (v8)
  {
    objc_msgSend_setAllowNetworkTileLoad_(v8, v9, 1, v10);
    objc_msgSend_setFlipNegativeTravelDirectionRoads_(v4[325].isa, v11, 1, v12);
    objc_msgSend_setVisitDoubleTravelDirectionRoadsTwice_(v4[325].isa, v13, 1, v14);
    objc_msgSend_setAllowStaleData_(v4[325].isa, v15, 1, v16);
    objc_msgSend_setAllowOfflineData_(v4[325].isa, v17, 1, v18);
    v19 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v31 = off_1EAFE4708;
    v19 = "assert";
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2082;
      v39 = "assert";
      v40 = 2081;
      v41 = "fGEOMapFeatureAccess != nullptr";
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed,fGEOMapFeatureAccess==nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }
    }

    v32 = off_1EAFE4708;
    if (os_signpost_enabled(off_1EAFE4708))
    {
      *buf = 68289539;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2082;
      v39 = "assert";
      v40 = 2081;
      v41 = "fGEOMapFeatureAccess != nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed,fGEOMapFeatureAccess==nil", "{msg%{public}.0s:Assertion failed,fGEOMapFeatureAccess==nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }
    }

    v4 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2082;
      v39 = "assert";
      v40 = 2081;
      v41 = "fGEOMapFeatureAccess != nullptr";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed,fGEOMapFeatureAccess==nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Positioning/MapMatching/CLGeoMapFeatureAccessGeometry.mm", 44, "initializeMapsAPI");
  }

  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
LABEL_16:
  v20 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
  {
    v24 = objc_msgSend_allowStaleData(v4[325].isa, v21, v22, v23);
    *buf = 67240192;
    v35 = v24;
    _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEFAULT, "CLMM,Vehicle,using maps API,stale data,%{public}d", buf, 8u);
  }

  v25 = sub_19B87DD40();
  if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (*(v19 + 218) != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v29 = off_1EAFE4708;
    v30 = objc_msgSend_allowStaleData(v4[325].isa, v26, v27, v28);
    v33[0] = 67240192;
    v33[1] = v30;
    v3 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v29, 0, "CLMM,Vehicle,using maps API,stale data,%{public}d", v33, 8);
    sub_19B885924("Generic", 1, 0, 2, "virtual void CLGeoMapFeatureAccessGeometry::initializeMapsAPI()", "CoreLocation: %s\n", v3);
    if (v3 != buf)
    {
      goto LABEL_25;
    }
  }
}

id sub_19B90F384(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if ((*(a1 + 33) & 1) == 0 && *(a1 + 2600) && *a2 != 0)
    {
      v5 = objc_autoreleasePoolPush();
      v20 = 0;
      v21 = 0;
      v9 = *(*a2 + 136);
      if (*(*a2 + 144) == v9)
      {
        v10 = 0;
        v11 = 0;
      }

      else
      {
        v10 = *v9;
        v11 = v9[1];
      }

      v20 = v10;
      v21 = v11;
      v18 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_19B90FD44;
      v19[3] = &unk_1E753DB80;
      v19[4] = v18;
      v19[5] = v19;
      v24 = 0;
      operator new();
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v12 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 8);
      *buf = 134349056;
      v26 = v13;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v15 = *(a1 + 8);
      v22 = 134349056;
      v23 = v15;
      v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", &v22, 12);
      sub_19B885924("Generic", 1, 0, 0, "GEOMapFeatureRoad *CLGeoMapFeatureAccessGeometry::getGeoMapFeatureRoadObject(const CLMapRoadPtr &) const", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  return 0;
}

void sub_19B90FCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  sub_19B917010(va);
  _Unwind_Resume(a1);
}

void *sub_19B90FD44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((objc_msgSend_isRail(a2, a2, a3, a4) & 1) != 0 || (result = objc_msgSend_travelDirection(a2, v6, v7, v8), result != 6) && (result = objc_msgSend_travelDirection(a2, v11, v12, v13), result != 255))
  {
    v9 = *(a1 + 32);

    return objc_msgSend_addObject_(v9, v6, a2, v8);
  }

  return result;
}

uint64_t sub_19B90FDB8(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = sub_19B91662C;
  v28 = sub_19B91663C;
  v29 = dispatch_group_create();
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_19B916648;
  v19[3] = &unk_1E753DC20;
  v19[4] = &v30;
  v19[5] = &v24;
  v19[6] = &v20;
  dispatch_group_enter(v25[5]);
  v2 = sub_19B916D20(a1, v19);
  v3 = v25[5];
  v4 = dispatch_time(0, 100000000);
  v5 = dispatch_group_wait(v3, v4);
  v21[3] = v5;
  if (v5)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v6 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v7 = v21[3];
      *buf = 134349056;
      v37 = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "#Warning CLMM, GeoMapFeatureAccess query timed out,%{public}lu", buf, 0xCu);
    }

    v8 = sub_19B87DD40();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v12 = v21[3];
      v34 = 134349056;
      v35 = v12;
      v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "#Warning CLMM, GeoMapFeatureAccess query timed out,%{public}lu", &v34, 12);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    objc_msgSend_cancel(v2, v9, v10, v11);
  }

  else if (v25[5])
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v14 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEBUG, "CLMM,clearing dispatchGroup", buf, 2u);
    }

    v15 = sub_19B87DD40();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      LOWORD(v34) = 0;
      v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,clearing dispatchGroup", &v34, 2);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v25[5] = 0;
  }

  if (v21[3])
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v31 + 24) ^ 1;
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  return v17 & 1;
}

void sub_19B910264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B91029C(uint64_t a1, uint64_t *a2, uint64_t a3, double a4)
{
  v139 = *MEMORY[0x1E69E9840];
  v105 = a4;
  if (*(a1 + 32))
  {
    v8 = objc_autoreleasePoolPush();
    v104 = *(a3 + 56);
    v9 = round(a4);
    v10 = (v9 + v9);
    if (v10 >= 0x1F4)
    {
      v11 = 500;
    }

    else
    {
      v11 = v10;
    }

    v101 = 0;
    v102 = 0;
    v103 = 0;
    sub_19B91167C(&v101, v11);
    if (*(a1 + 33) != 1)
    {
      v33 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13, v14);
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = sub_19B911710;
      v100[3] = &unk_1E753DB80;
      v100[4] = v33;
      *&v137 = v100;
      *&v107[24] = 0;
      operator new();
    }

    if (*(a1 + 16))
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v15 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a1 + 8);
        v17 = (*(*(a1 + 16) + 336) - *(*(a1 + 16) + 328)) >> 4;
        *buf = 134349312;
        *&buf[4] = v16;
        *&buf[12] = 2050;
        *&buf[14] = v17;
        _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,RoadBuffer,findRoadsNear fRoadBuffer.size,%{public}lu", buf, 0x16u);
      }

      v18 = sub_19B87DD40();
      if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v19 = *(a1 + 8);
        v20 = (*(*(a1 + 16) + 336) - *(*(a1 + 16) + 328)) >> 4;
        *v107 = 134349312;
        *&v107[4] = v19;
        *&v107[12] = 2050;
        *&v107[14] = v20;
        v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,RoadBuffer,findRoadsNear fRoadBuffer.size,%{public}lu", v107, 22);
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      if (sub_19B8E77AC(*(a1 + 16), &v101, 1, 0, *(a3 + 56), *(a3 + 64), v105))
      {
        v34 = v101;
        v32 = 1;
        v98 = v102;
        if (v101 == v102)
        {
          goto LABEL_142;
        }

        __asm { FMOV            V0.2D, #-1.0 }

        v97 = _Q0;
        while (*v34)
        {
          if (sub_19B9F6598(*v34))
          {
            v131 = 0;
            v130 = 0;
            v132 = 0.0;
            v133 = 1;
            v134 = 0.0;
            v136 = 0;
            v135 = 0uLL;
            *v107 = 0;
            *&v107[8] = 0;
            *&v107[16] = v97;
            v108 = 0;
            v109 = 0;
            v110 = 0xBFF0000000000000;
            v122 = 0;
            v123 = 0;
            memset(&v120[32], 0, 32);
            v121 = 0;
            v124 = 0u;
            v125 = 0u;
            v126 = 0u;
            memset(v127, 0, 27);
            memset(&v127[32], 0, 48);
            memset(v120, 0, 30);
            v119 = 0u;
            v118 = 0u;
            v117 = 0u;
            v116 = 0u;
            v115 = 0u;
            v114 = 0u;
            v113 = 0u;
            v112 = 0u;
            v111 = 0u;
            v129 = 0xBFF0000000000000;
            v128 = 0;
            v40 = *v34;
            v41 = *(*v34 + 17);
            v42 = *(*v34 + 18) - v41;
            v99 = 0xBFF0000000000000;
            if ((v42 >> 4) <= 1)
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
              }

              v68 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_19B873000, v68, OS_LOG_TYPE_DEBUG, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", buf, 2u);
              }

              v69 = sub_19B87DD40();
              if (*(v69 + 160) > 1 || *(v69 + 164) > 1 || *(v69 + 168) > 1 || *(v69 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
                }

                LOWORD(v137) = 0;
                v70 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", &v137, 2);
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::findClosestPointOnRoad(CLDistanceCalc &, const int, const std::vector<Coordinate> &, const Coordinate &, double &, double &) [Coordinate = GEOLocationCoordinate2D]", "CoreLocation: %s\n", v70);
                if (v70 != buf)
                {
                  free(v70);
                }
              }

              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
              }

              v71 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
              {
                v72 = *(a1 + 8);
                *buf = 134349056;
                *&buf[4] = v72;
                _os_log_impl(&dword_19B873000, v71, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,findClosestPointOnRoad returned false", buf, 0xCu);
              }

              v73 = sub_19B87DD40();
              if ((*(v73 + 160) & 0x80000000) == 0 || (*(v73 + 164) & 0x80000000) == 0 || (*(v73 + 168) & 0x80000000) == 0 || *(v73 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
                }

                v74 = *(a1 + 8);
                LODWORD(v137) = 134349056;
                *(&v137 + 4) = v74;
                v75 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,findClosestPointOnRoad returned false", &v137, 12);
                sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v75);
LABEL_104:
                if (v75 != buf)
                {
                  free(v75);
                }
              }

LABEL_106:
              if (SHIBYTE(v116) < 0)
              {
                operator delete(*(&v115 + 1));
              }

              if (v131)
              {
                sub_19B8750F8(v131);
              }

              v32 = 0;
              goto LABEL_142;
            }

            v43 = v104;
            v44 = *v41;
            v45 = v41[1];
            *&buf[8] = 0;
            *buf = 0;
            v46 = 0.0;
            sub_19BA0BE88((a1 + 56), buf, &buf[8], &v137, *&v104, *(&v104 + 1), 0.0, v44, v45, 0.0);
            v47 = 0;
            v48 = *buf;
            v49 = *&buf[8];
            v50 = ((v42 >> 4) & 0x7FFFFFFF) - 1;
            v51 = -1.0;
            v52 = 0.0;
            while (2)
            {
              v53 = v48;
              v54 = v49;
              v55 = *(v40 + 17) + v47;
              v56 = *(v55 + 16);
              v57 = *(v55 + 24);
              v137 = 0uLL;
              sub_19BA0BE88((a1 + 56), &v137, &v137 + 1, &v106, *&v43, *(&v43 + 1), 0.0, v56, v57, 0.0);
              v49 = *(&v137 + 1);
              v48 = *&v137;
              v58 = (v53 - *&v137) * (v53 - *&v137) + (v54 - *(&v137 + 1)) * (v54 - *(&v137 + 1));
              v59 = 0.0 - v53;
              if (v58 < 0.001)
              {
                v60 = v59 * v59;
                v61 = 0.0;
                v62 = 0.0 - v54;
                goto LABEL_52;
              }

              v61 = ((0.0 - v54) * (*(&v137 + 1) - v54) + v59 * (*&v137 - v53)) / v58;
              if (v61 >= 0.0)
              {
                if (v61 <= 1.0)
                {
                  v60 = (0.0 - (v53 + (*&v137 - v53) * v61)) * (0.0 - (v53 + (*&v137 - v53) * v61));
                  v62 = 0.0 - (v54 + (*(&v137 + 1) - v54) * v61);
LABEL_52:
                  v63 = v60 + v62 * v62;
                }

                else
                {
                  v63 = (0.0 - *&v137) * (0.0 - *&v137) + (0.0 - *(&v137 + 1)) * (0.0 - *(&v137 + 1));
                  v61 = 1.0;
                }
              }

              else
              {
                v63 = v59 * v59 + (0.0 - v54) * (0.0 - v54);
                v61 = 0.0;
              }

              v64 = sqrt(v58);
              v65 = sqrt(v63);
              v66 = v51 < 0.0;
              if (v65 < v51)
              {
                v66 = 1;
              }

              v67 = v46 + v64 * v61;
              if (v66)
              {
                v51 = v65;
                v52 = v67;
              }

              v46 = v46 + v64;
              v47 += 16;
              if (!--v50)
              {
                v76 = v52 / v46;
                if (v46 < 0.001)
                {
                  v76 = 0.0;
                }

                v99 = *&v76;
                v77 = *(*v34 + 18) != 2;
                if (sub_19B9DF3F8(a1, v107, v34, v77, &v99, 1))
                {
                  v79 = *v34;
                  v78 = v34[1];
                  if (v78)
                  {
                    atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v80 = v131;
                  v130 = v79;
                  v131 = v78;
                  if (v80)
                  {
                    sub_19B8750F8(v80);
                  }

                  v81 = v51;
                  v132 = v81;
                  v135 = v117;
                  v82 = *&v118;
                  v134 = v82;
                  v136 = v99;
                  v133 = v77;
                  sub_19B9117CC(a2, &v130);
                }

                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
                }

                v83 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
                {
                  v84 = *(a1 + 8);
                  *buf = 134349056;
                  *&buf[4] = v84;
                  _os_log_impl(&dword_19B873000, v83, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,interpolateOnRoad returned false", buf, 0xCu);
                }

                v85 = sub_19B87DD40();
                if ((*(v85 + 160) & 0x80000000) == 0 || (*(v85 + 164) & 0x80000000) == 0 || (*(v85 + 168) & 0x80000000) == 0 || *(v85 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
                  }

                  v86 = *(a1 + 8);
                  LODWORD(v137) = 134349056;
                  *(&v137 + 4) = v86;
                  v75 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,interpolateOnRoad returned false", &v137, 12);
                  sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v75);
                  goto LABEL_104;
                }

                goto LABEL_106;
              }

              continue;
            }
          }

          v34 += 2;
          if (v34 == v98)
          {
            v32 = 1;
            goto LABEL_142;
          }
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v91 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          v92 = *(a1 + 8);
          *buf = 134349056;
          *&buf[4] = v92;
          _os_log_impl(&dword_19B873000, v91, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,makeRoadFromGEOMapFeatureRoad returned nullptr", buf, 0xCu);
        }

        v93 = sub_19B87DD40();
        if ((*(v93 + 160) & 0x80000000) == 0 || (*(v93 + 164) & 0x80000000) == 0 || (*(v93 + 168) & 0x80000000) == 0 || *(v93 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
          }

          v94 = *(a1 + 8);
          *v107 = 134349056;
          *&v107[4] = v94;
          v95 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,makeRoadFromGEOMapFeatureRoad returned nullptr", v107, 12);
          sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v95);
          if (v95 != buf)
          {
            free(v95);
          }
        }

        sub_19B916DC0(a2);
LABEL_141:
        v32 = 0;
LABEL_142:
        *buf = &v101;
        sub_19B8F0E84(buf);
        objc_autoreleasePoolPop(v8);
        return v32;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v22 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v23 = *(a1 + 8);
        *buf = 134349056;
        *&buf[4] = v23;
        _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,Warning,RoadBuffer,findRoadsNear returned false", buf, 0xCu);
      }

      v24 = sub_19B87DD40();
      if (*(v24 + 160) <= 1 && *(v24 + 164) <= 1 && *(v24 + 168) <= 1 && !*(v24 + 152))
      {
        goto LABEL_141;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v25 = *(a1 + 8);
      *v107 = 134349056;
      *&v107[4] = v25;
      v26 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,Warning,RoadBuffer,findRoadsNear returned false", v107, 12);
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v26);
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v87 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        v88 = *(a1 + 8);
        *buf = 134349056;
        *&buf[4] = v88;
        _os_log_impl(&dword_19B873000, v87, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,roadsWithinDistance,fRoadGeometryBuffer is unexpectedly nullptr", buf, 0xCu);
      }

      v89 = sub_19B87DD40();
      if ((*(v89 + 160) & 0x80000000) != 0 && (*(v89 + 164) & 0x80000000) != 0 && (*(v89 + 168) & 0x80000000) != 0 && !*(v89 + 152))
      {
        goto LABEL_141;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v90 = *(a1 + 8);
      *v107 = 134349056;
      *&v107[4] = v90;
      v26 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,roadsWithinDistance,fRoadGeometryBuffer is unexpectedly nullptr", v107, 12);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v26);
    }

    if (v26 != buf)
    {
      free(v26);
    }

    goto LABEL_141;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
  }

  v27 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    v28 = *(a1 + 8);
    *buf = 134349056;
    *&buf[4] = v28;
    _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", buf, 0xCu);
  }

  v29 = sub_19B87DD40();
  if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v30 = *(a1 + 8);
    *v107 = 134349056;
    *&v107[4] = v30;
    v31 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", v107, 12);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v31);
    if (v31 != buf)
    {
      free(v31);
    }
  }

  return 0;
}

void sub_19B9115B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char *a39)
{
  a39 = &a32;
  sub_19B8F0E84(&a39);
  _Unwind_Resume(a1);
}

void **sub_19B91167C(void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    sub_19B8F0D38(result, a2);
  }

  return result;
}

void *sub_19B911710(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((objc_msgSend_isRail(a2, a2, a3, a4) & 1) != 0 || (result = objc_msgSend_travelDirection(a2, v6, v7, v8), result != 6) && (result = objc_msgSend_travelDirection(a2, v11, v12, v13), result != 255))
  {
    v9 = *(a1 + 32);

    return objc_msgSend_addObject_(v9, v6, a2, v8);
  }

  return result;
}

void *sub_19B911784(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_19B8750F8(v5);
  }

  return a1;
}

uint64_t sub_19B91184C(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 32) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v2 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 8);
      *buf = 134349056;
      v11 = v3;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v4 = sub_19B87DD40();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v5 = *(a1 + 8);
      v8 = 134349056;
      v9 = v5;
      v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", &v8, 12);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsConnected(CLMapGeometry::ConnectedQueryResultList &, const CLMapRoadPtr &, BOOL, double, double, BOOL) const", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  return 0;
}

uint64_t sub_19B911A1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, char a5, double **a6, int a7, double *a8, double a9, double a10)
{
  v99 = *MEMORY[0x1E69E9840];
  v83 = a7;
  if ((*(a1 + 32) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v22 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 8);
      buf.n128_u32[0] = 134349056;
      *(buf.n128_u64 + 4) = v23;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", &buf, 0xCu);
    }

    v24 = sub_19B87DD40();
    if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
    {
      goto LABEL_28;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v25 = *(a1 + 8);
    LODWORD(v89) = 134349056;
    *(&v89 + 4) = v25;
    v26 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", &v89, 12);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsAtIntersection(CLMapCrumb &, CLMapGeometry::IntersectionQueryResultList *, CLMapGeometry::IntersectionQueryResultList *, BOOL, const CLMapRoadPtr &, BOOL, double, double, double &) const", "CoreLocation: %s\n", v26);
    goto LABEL_26;
  }

  v12 = *a6;
  if (*a6)
  {
    v19 = *v12;
    if (a5)
    {
      if (!a7)
      {
LABEL_5:
        sub_19B9F5AA8(v12);
        v20 = 0;
        v21 = v12[5] * a9;
        goto LABEL_31;
      }
    }

    else
    {
      v83 = a7 ^ 1;
      if (a7)
      {
        goto LABEL_5;
      }
    }

    sub_19B9F5AA8(v12);
    v21 = (1.0 - a9) * v12[5];
    v20 = 1;
LABEL_31:
    *a8 = v21;
    if (v21 > a10)
    {
      *a8 = -1.0;
LABEL_41:
      v31 = 1;
      return v31 & 1;
    }

    v32 = 0.0;
    if (v20)
    {
      v32 = 1.0;
    }

    v82 = v32;
    sub_19B9DF3F8(a1, a2, a6, v20, &v82, 1);
    if (!(a3 | a4))
    {
      goto LABEL_41;
    }

    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 0;
    *&v89 = 0;
    *(&v89 + 1) = &v89;
    v90 = 0x4812000000;
    v91 = sub_19B912D34;
    v92 = sub_19B912D7C;
    v93 = 0;
    v94[0] = v94;
    v94[1] = v94;
    v94[2] = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x4812000000;
    v74 = sub_19B912D34;
    v75 = sub_19B912D7C;
    v76 = 0;
    v77[0] = v77;
    v77[1] = v77;
    v77[2] = 0;
    context = objc_autoreleasePoolPush();
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = sub_19B912D84;
    v70[3] = &unk_1E753DBA8;
    v70[7] = a1;
    *&v70[8] = v19;
    v70[4] = &v78;
    v70[5] = &v89;
    v70[6] = &v71;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = sub_19B91327C;
    v69[3] = &unk_1E753DBD0;
    v69[4] = v70;
    v69[5] = v69;
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = sub_19B913290;
    v68[3] = &unk_1E753DBD0;
    v68[4] = v70;
    v68[5] = v68;
    if (!a3)
    {
LABEL_85:
      if (!a4)
      {
LABEL_120:
        v31 = *(v79 + 24) ^ 1;
LABEL_132:
        objc_autoreleasePoolPop(context);
        _Block_object_dispose(&v71, 8);
        sub_19B916DC0(v77);
        _Block_object_dispose(&v89, 8);
        sub_19B916DC0(v94);
        _Block_object_dispose(&v78, 8);
        return v31 & 1;
      }

      if (*(a1 + 33) == 1)
      {
        v87 = 0uLL;
        v88 = 0;
        sub_19B91167C(&v87, 3uLL);
        v49 = *(a1 + 16);
        if (v49)
        {
          if (v83 == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
            }

            v50 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
            {
              v51 = *(a1 + 8);
              buf.n128_u32[0] = 134349056;
              *(buf.n128_u64 + 4) = v51;
              _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,Unexpected,RoadsAtIntersection incoming data requested from end of the road", &buf, 0xCu);
            }

            v52 = sub_19B87DD40();
            if ((*(v52 + 160) & 0x80000000) == 0 || (*(v52 + 164) & 0x80000000) == 0 || (*(v52 + 168) & 0x80000000) == 0 || *(v52 + 152))
            {
              bzero(&buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
              }

              v53 = *(a1 + 8);
              *v86 = 134349056;
              *&v86[4] = v53;
              v54 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,Unexpected,RoadsAtIntersection incoming data requested from end of the road", v86, 12);
              sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsAtIntersection(CLMapCrumb &, CLMapGeometry::IntersectionQueryResultList *, CLMapGeometry::IntersectionQueryResultList *, BOOL, const CLMapRoadPtr &, BOOL, double, double, double &) const", "CoreLocation: %s\n", v54);
              if (v54 != &buf)
              {
                free(v54);
              }
            }
          }

          else
          {
            sub_19B8EB310(v49, a6, &v87, 1);
          }

          if (v87 != *(&v87 + 1))
          {
            buf = 0uLL;
            v96 = 1;
            v97 = 0;
            v98 = 0;
            v58 = *v87;
            v59 = *(v87 + 8);
            if (v59)
            {
              atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
              v60 = buf.n128_u64[1];
              buf.n128_u64[0] = v58;
              buf.n128_u64[1] = v59;
              if (v60)
              {
                sub_19B8750F8(v60);
              }
            }

            else
            {
              buf = *v87;
            }

            v96 = 1;
            v97 = 0;
            v98 = 0;
            sub_19B9131FC((*(&v89 + 1) + 48), &buf);
          }
        }

        buf.n128_u64[0] = &v87;
        sub_19B8F0E84(&buf);
        if ((*(&v89 + 1) + 48) != a4)
        {
          sub_19B91737C(a4, *(*(&v89 + 1) + 56), *(&v89 + 1) + 48);
        }

        goto LABEL_120;
      }

      *v86 = sub_19B90F384(a1, a6);
      if (*v86)
      {
        ++*(a1 + 36);
        v84 = 0;
        operator new();
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v55 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        v56 = *(a1 + 8);
        buf.n128_u32[0] = 134349056;
        *(buf.n128_u64 + 4) = v56;
        _os_log_impl(&dword_19B873000, v55, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,getGeoMapFeatureRoadObject returned nil", &buf, 0xCu);
      }

      v57 = sub_19B87DD40();
      if ((*(v57 + 160) & 0x80000000) != 0 && (*(v57 + 164) & 0x80000000) != 0 && (*(v57 + 168) & 0x80000000) != 0 && !*(v57 + 152))
      {
LABEL_131:
        v31 = 0;
        goto LABEL_132;
      }

      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
LABEL_129:
        v64 = *(a1 + 8);
        LODWORD(v87) = 134349056;
        *(&v87 + 4) = v64;
        v65 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,getGeoMapFeatureRoadObject returned nil", &v87, 12);
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsAtIntersection(CLMapCrumb &, CLMapGeometry::IntersectionQueryResultList *, CLMapGeometry::IntersectionQueryResultList *, BOOL, const CLMapRoadPtr &, BOOL, double, double, double &) const", "CoreLocation: %s\n", v65);
        if (v65 != &buf)
        {
          free(v65);
        }

        goto LABEL_131;
      }

LABEL_142:
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      goto LABEL_129;
    }

    if (*(a1 + 33) == 1)
    {
      v87 = 0uLL;
      v88 = 0;
      sub_19B91167C(&v87, 3uLL);
      v33 = *(a1 + 16);
      if (v33)
      {
        if (v83 == 1)
        {
          sub_19B8EAC7C(v33, a6, &v87, 1);
        }

        else
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
          }

          v41 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
          {
            v42 = *(a1 + 8);
            buf.n128_u32[0] = 134349056;
            *(buf.n128_u64 + 4) = v42;
            _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,Unexpected,RoadsAtIntersection outgoing data requested from start of the road", &buf, 0xCu);
          }

          v43 = sub_19B87DD40();
          if ((*(v43 + 160) & 0x80000000) == 0 || (*(v43 + 164) & 0x80000000) == 0 || (*(v43 + 168) & 0x80000000) == 0 || *(v43 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
            }

            v44 = *(a1 + 8);
            *v86 = 134349056;
            *&v86[4] = v44;
            v45 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,Unexpected,RoadsAtIntersection outgoing data requested from start of the road", v86, 12);
            sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsAtIntersection(CLMapCrumb &, CLMapGeometry::IntersectionQueryResultList *, CLMapGeometry::IntersectionQueryResultList *, BOOL, const CLMapRoadPtr &, BOOL, double, double, double &) const", "CoreLocation: %s\n", v45);
            if (v45 != &buf)
            {
              free(v45);
            }
          }
        }

        if (v87 != *(&v87 + 1))
        {
          buf = 0uLL;
          v96 = 1;
          v97 = 0;
          v98 = 0;
          v46 = *v87;
          v47 = *(v87 + 8);
          if (v47)
          {
            atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
            v48 = buf.n128_u64[1];
            buf.n128_u64[0] = v46;
            buf.n128_u64[1] = v47;
            if (v48)
            {
              sub_19B8750F8(v48);
            }
          }

          else
          {
            buf = *v87;
          }

          v96 = 1;
          v97 = 0;
          v98 = 0;
          sub_19B9131FC(v72 + 6, &buf);
        }
      }

      buf.n128_u64[0] = &v87;
      sub_19B8F0E84(&buf);
      goto LABEL_83;
    }

    v34 = sub_19B8E5F08((a1 + 2616), *a6, 0);
    if (v83 == 1 && (v35 = v34) != 0)
    {
      v37 = *(v34 + 32);
      v36 = *(v34 + 40);
      if (v37 != v36)
      {
        while (*v37)
        {
          if (**v37 != *&v19)
          {
            buf = 0uLL;
            v96 = 1;
            v97 = 0;
            v98 = 0;
            v38 = *v37;
            v39 = v37[1];
            if (v39)
            {
              atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
              v40 = buf.n128_u64[1];
              buf.n128_u64[0] = v38;
              buf.n128_u64[1] = v39;
              if (v40)
              {
                sub_19B8750F8(v40);
              }
            }

            else
            {
              buf = *v37;
            }

            v96 = 1;
            v97 = 0;
            v98 = 0;
            sub_19B9131FC(v72 + 6, &buf);
          }

          v37 += 2;
          if (v37 == v36)
          {
            goto LABEL_79;
          }
        }

        sub_19B916DC0(v72 + 6);
      }

LABEL_79:
      if (v72[8])
      {
        *(v35 + 56) = *(a1 + 8);
LABEL_83:
        if (v72 + 6 != a3)
        {
          sub_19B91737C(a3, v72[7], (v72 + 6));
        }

        goto LABEL_85;
      }
    }

    else if (v72[8])
    {
      goto LABEL_83;
    }

    *v86 = sub_19B90F384(a1, a6);
    if (*v86)
    {
      ++*(a1 + 36);
      v85 = 0;
      operator new();
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v61 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v62 = *(a1 + 8);
      buf.n128_u32[0] = 134349056;
      *(buf.n128_u64 + 4) = v62;
      _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,getGeoMapFeatureRoadObject returned nil", &buf, 0xCu);
    }

    v63 = sub_19B87DD40();
    if ((*(v63 + 160) & 0x80000000) != 0 && (*(v63 + 164) & 0x80000000) != 0 && (*(v63 + 168) & 0x80000000) != 0 && !*(v63 + 152))
    {
      goto LABEL_131;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_129;
    }

    goto LABEL_142;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
  }

  v27 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    v28 = *(a1 + 8);
    buf.n128_u32[0] = 134349056;
    *(buf.n128_u64 + 4) = v28;
    _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,input road is nullptr", &buf, 0xCu);
  }

  v29 = sub_19B87DD40();
  if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v30 = *(a1 + 8);
    LODWORD(v89) = 134349056;
    *(&v89 + 4) = v30;
    v26 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,input road is nullptr", &v89, 12);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsAtIntersection(CLMapCrumb &, CLMapGeometry::IntersectionQueryResultList *, CLMapGeometry::IntersectionQueryResultList *, BOOL, const CLMapRoadPtr &, BOOL, double, double, double &) const", "CoreLocation: %s\n", v26);
LABEL_26:
    if (v26 != &buf)
    {
      free(v26);
    }
  }

LABEL_28:
  v31 = 0;
  return v31 & 1;
}

void sub_19B912C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a36, 8);
  sub_19B916DC0(a13);
  _Block_object_dispose(&a65, 8);
  sub_19B916DC0(a14);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void *sub_19B912D34(void *result, void *a2)
{
  result[6] = result + 6;
  result[7] = result + 6;
  result[8] = 0;
  v2 = a2[8];
  if (v2)
  {
    v4 = a2[6];
    v3 = a2[7];
    v5 = *(v4 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = result[6];
    *(v7 + 8) = v3;
    *v3 = v7;
    result[6] = v4;
    *(v4 + 8) = result + 6;
    result[8] = v2;
    a2[8] = 0;
  }

  return result;
}

void sub_19B912D84(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1[7];
  if (a2)
  {
    if (objc_msgSend_roadID(a2, a2, a3, a4) != a1[8] && ((objc_msgSend_isRail(a2, v7, v8, v9) & 1) != 0 || !objc_msgSend_travelDirection(a2, v10, v11, v12) || objc_msgSend_travelDirection(a2, v13, v14, v15) == 1))
    {
      v23 = 1;
      v24 = 0;
      v25 = 0;
      sub_19B8F30F0();
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v16 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v17 = *(v5 + 8);
      buf = 134349056;
      *buf_4 = v17;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,GEOMapFeatureRoad is null", &buf, 0xCu);
    }

    v18 = sub_19B87DD40();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v19 = *(v5 + 8);
      v21 = 134349056;
      v22 = v19;
      v20 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,GEOMapFeatureRoad is null", &v21, 12);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsAtIntersection(CLMapCrumb &, CLMapGeometry::IntersectionQueryResultList *, CLMapGeometry::IntersectionQueryResultList *, BOOL, const CLMapRoadPtr &, BOOL, double, double, double &) const_block_invoke", "CoreLocation: %s\n", v20);
      if (v20 != &buf)
      {
        free(v20);
      }
    }

    *(*(a1[4] + 8) + 24) = 1;
  }
}

void sub_19B9131C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v20)
  {
    sub_19B8750F8(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9132A4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      Current = CFAbsoluteTimeGetCurrent();
      sub_19B8E62BC(v2 + 288, Current, 0.5, 0.5);
    }

    v4 = *(a1 + 8);

    sub_19B8E62BC(a1 + 2616, v4, 60.0, 60.0);
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 8);
      *buf = 134349056;
      v13 = v6;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v8 = *(a1 + 8);
      v10 = 134349056;
      v11 = v8;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", &v10, 12);
      sub_19B885924("Generic", 1, 0, 0, "virtual void CLGeoMapFeatureAccessGeometry::clearStoredStaleConnections()", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }
}

__n128 sub_19B9134E0(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

const void **sub_19B913530(const void **result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_19B8B8A40();
    }

    v9 = v4 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v2;
    if (v10)
    {
      sub_19B8F23AC(v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = v2[1] - *v2;
    v14 = (v11 - v13);
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = sub_19B916E38(v17);
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    *(v3 + 1) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 16;
  }

  v2[1] = v6;
  return result;
}

void sub_19B913640(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((objc_msgSend_isRail(a2, a2, a3, a4) & 1) != 0 || !objc_msgSend_travelDirection(a2, v6, v7, v8) || objc_msgSend_travelDirection(a2, v6, v7, v8) == 1)
  {
    v9 = *(a1 + 48);
    if (v9 != objc_msgSend_roadID(a2, v6, v7, v8) || (v13 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(*objc_msgSend_coordinates(a2, v10, v11, v12), **(a1 + 56)))), (vand_s8(v13, vdup_lane_s32(v13, 1)).u32[0] & 1) == 0))
    {
      sub_19B8F30F0();
    }
  }
}

void sub_19B913778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_19B8750F8(a13);
  }

  if (v13)
  {
    sub_19B8750F8(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9137B4(float64x2_t *a1, double **a2, double *a3, double *a4, double a5)
{
  v66 = *MEMORY[0x1E69E9840];
  *a3 = 0.0;
  a3[1] = 0.0;
  *a4 = 0.0;
  v5 = *a2;
  if (!*a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v19 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "CLMM, NULL road", buf, 2u);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    LOWORD(__y[0]) = 0;
    v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM, NULL road", __y, 2);
LABEL_17:
    v22 = v21;
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n");
    goto LABEL_41;
  }

  v6 = (*(v5 + 18) - *(v5 + 17)) >> 4;
  if (v6 <= 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v23 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,CoordinateCount is 0", buf, 2u);
    }

    v24 = sub_19B87DD40();
    if (*(v24 + 160) <= 1 && *(v24 + 164) <= 1 && *(v24 + 168) <= 1 && !*(v24 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    LOWORD(__y[0]) = 0;
    v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,interpolateProjections,CoordinateCount is 0", __y, 2);
    goto LABEL_40;
  }

  if (v6 != 1)
  {
    sub_19B9F5AA8(*a2);
    v12 = (*(v5 + 21) - *(v5 + 20)) >> 3;
    if (v12 == v6 - 1)
    {
      v13 = *a2;
      sub_19B9F5AA8(v13);
      if (a5 < 0.000001)
      {
        *a3 = **(v13 + 17);
        v14 = *a3;
        v15 = a3[1];
        v16 = *(v13 + 17);
        v17 = *(v16 + 16);
        v18 = *(v16 + 24);
LABEL_62:
        *buf = 0;
        __y[0] = 0.0;
        sub_19BA0BE88(a1, buf, __y, &v63, v14, v15, 0.0, v17, v18, 0.0);
        v38 = atan2(__y[0], *buf);
        if (v38 < 0.0)
        {
          v38 = v38 + 6.28318531;
        }

        v39 = v38 * 57.2957795;
LABEL_65:
        *a4 = v39;
        return 1;
      }

      if (a5 >= 0.999999)
      {
        *a3 = *(*(v13 + 17) + 16 * v12);
        v37 = *(v13 + 17) + 16 * v12;
        v14 = *(v37 - 16);
        v15 = *(v37 - 8);
        v17 = *a3;
        v18 = a3[1];
        goto LABEL_62;
      }

      v29 = *(v5 + 20);
      v30 = *(v5 + 21);
      if (v29 != v30)
      {
        v31 = 0.0;
        v32 = 2;
        v33 = 24;
        while (1)
        {
          v34 = *v29 / v13[5];
          if (vabdd_f64(a5, v31 + v34) < 0.000001)
          {
            break;
          }

          if (v31 + v34 > a5)
          {
            v53 = (a5 - v31) / v34;
            v54 = (*(v13 + 17) + v33);
            v55 = *(v54 - 2);
            v56 = *v54;
            *a3 = *(v54 - 3) + (*(v54 - 1) - *(v54 - 3)) * v53;
            v57 = v55 + 360.0;
            if (v55 >= 0.0)
            {
              v57 = v55;
            }

            v58 = v56 + 360.0;
            if (v56 >= 0.0)
            {
              v58 = v56;
            }

            v59 = v58 - v57;
            if (v59 <= 180.0)
            {
              if (v59 < -180.0)
              {
                v59 = v59 + 360.0;
              }
            }

            else
            {
              v59 = v59 + -360.0;
            }

            v62 = fmod(v55 + v59 * v53, 360.0);
            if (v62 <= -180.0)
            {
              v62 = v62 + 360.0;
            }

            else if (v62 > 180.0)
            {
              v62 = v62 + -360.0;
            }

            a3[1] = v62;
            v14 = *(v54 - 3);
            v15 = *(v54 - 2);
            v17 = *(v54 - 1);
            v18 = *v54;
            goto LABEL_62;
          }

          ++v29;
          v33 += 16;
          ++v32;
          v31 = v31 + v34;
          if (v29 == v30)
          {
            goto LABEL_50;
          }
        }

        if (v32 < v6)
        {
          *a3 = *(*(v13 + 17) + v33 - 8);
          v40 = *(v13 + 17) + v33;
          v41 = *(v40 - 24);
          v42 = *(v40 - 16);
          v43 = *a3;
          v44 = a3[1];
          *buf = 0;
          __y[0] = 0.0;
          sub_19BA0BE88(a1, buf, __y, &v63, v41, v42, 0.0, v43, v44, 0.0);
          v45 = atan2(__y[0], *buf);
          if (v45 < 0.0)
          {
            v45 = v45 + 6.28318531;
          }

          v46 = v45 * 57.2957795;
          v47 = *a3;
          v48 = a3[1];
          v49 = *(v13 + 17) + v33;
          v50 = *(v49 + 8);
          v51 = *(v49 + 16);
          *buf = 0;
          __y[0] = 0.0;
          sub_19BA0BE88(a1, buf, __y, &v63, v47, v48, 0.0, v50, v51, 0.0);
          v52 = atan2(__y[0], *buf);
          if (v52 < 0.0)
          {
            v52 = v52 + 6.28318531;
          }

          sub_19B8B646C(v46, v52 * 57.2957795);
          goto LABEL_65;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v60 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v60, OS_LOG_TYPE_ERROR, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", buf, 2u);
        }

        v61 = sub_19B87DD40();
        if ((*(v61 + 160) & 0x80000000) != 0 && (*(v61 + 164) & 0x80000000) != 0 && (*(v61 + 168) & 0x80000000) != 0 && !*(v61 + 152))
        {
          return 0;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        LOWORD(__y[0]) = 0;
        v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", __y, 2);
        goto LABEL_17;
      }

LABEL_50:
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v35 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,Could not interpolate to intended projection", buf, 2u);
      }

      v36 = sub_19B87DD40();
      if (*(v36 + 160) <= 1 && *(v36 + 164) <= 1 && *(v36 + 168) <= 1 && !*(v36 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      LOWORD(__y[0]) = 0;
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,interpolateProjections,Could not interpolate to intended projection", __y, 2);
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v26 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,inconsistent array size", buf, 2u);
      }

      v27 = sub_19B87DD40();
      if (*(v27 + 160) <= 1 && *(v27 + 164) <= 1 && *(v27 + 168) <= 1 && !*(v27 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      LOWORD(__y[0]) = 0;
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,interpolateProjections,inconsistent array size", __y, 2);
    }

LABEL_40:
    v22 = v25;
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n");
LABEL_41:
    if (v22 != buf)
    {
      free(v22);
    }

    return 0;
  }

  return 1;
}

uint64_t sub_19B91408C(uint64_t a1)
{
  v1 = *(a1 + 2496);
  v2 = (v1 + 1) % 0x270uLL;
  v3 = *(a1 + 4 * v2);
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ *(a1 + 4 * ((v1 + 397) % 0x270uLL)) ^ ((v3 & 0x7FFFFFFE | *(a1 + 4 * v1) & 0x80000000) >> 1);
  *(a1 + 4 * v1) = v5;
  *(a1 + 2496) = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t sub_19B91412C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a1;
  v142 = *MEMORY[0x1E69E9840];
  v5 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
  if (*(a1 + 32))
  {
    v7 = 1050.0;
    if (a4 <= 1050.0)
    {
      v7 = a4;
      if (a4 < -1050.0)
      {
        v7 = -1050.0;
      }
    }

    v126 = 0;
    v8 = *(a2 + 48);
    v9 = a2;
    while (1)
    {
      v131 = 0;
      v10 = objc_autoreleasePoolPush();
      v11 = *v9;
      if (!*v9)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v85 = *(v5 + 225);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          v86 = *(v4 + 8);
          *buf = 134349056;
          *&buf[4] = v86;
          _os_log_impl(&dword_19B873000, v85, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,input road is nullptr", buf, 0xCu);
        }

        v87 = sub_19B87DD40();
        if ((*(v87 + 160) & 0x80000000) != 0 && (*(v87 + 164) & 0x80000000) != 0 && (*(v87 + 168) & 0x80000000) != 0 && !*(v87 + 152))
        {
          goto LABEL_217;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v88 = *(v5 + 225);
        v89 = *(v4 + 8);
        *v135 = 134349056;
        *&v135[4] = v89;
        v90 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v88, 16, "CLMM,%{public}.1lf,input road is nullptr", v135, 12);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometry::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v90);
LABEL_215:
        if (v90 != buf)
        {
          free(v90);
        }

        goto LABEL_217;
      }

      v12 = *v11;
      sub_19B9F5AA8(*v9);
      v13 = v11[5];
      if (v13 <= 0.0)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v91 = *(v5 + 225);
        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          v92 = *(v4 + 8);
          *buf = 134349056;
          *&buf[4] = v92;
          _os_log_impl(&dword_19B873000, v91, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,road length is 0.0", buf, 0xCu);
        }

        v93 = sub_19B87DD40();
        if ((*(v93 + 160) & 0x80000000) != 0 && (*(v93 + 164) & 0x80000000) != 0 && (*(v93 + 168) & 0x80000000) != 0 && !*(v93 + 152))
        {
          goto LABEL_217;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v94 = *(v5 + 225);
        v95 = *(v4 + 8);
        *v135 = 134349056;
        *&v135[4] = v95;
        v90 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v94, 16, "CLMM,%{public}.1lf,road length is 0.0", v135, 12);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometry::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v90);
        goto LABEL_215;
      }

      v14 = *v9;
      v15 = *(*v9 + 17);
      if (((*(*v9 + 18) - v15) >> 4) <= 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v96 = *(v5 + 225);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
        {
          v97 = *(v4 + 8);
          v98 = **v9;
          v99 = ((*(*v9 + 18) - *(*v9 + 17)) >> 4);
          *buf = 134349569;
          *&buf[4] = v97;
          *&buf[12] = 2049;
          *&buf[14] = v98;
          *&buf[22] = 2050;
          v141 = v99;
          _os_log_impl(&dword_19B873000, v96, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,GEOMapFeatureRoad id,%{private}lld,has less than two coordinate (moveOnRoadInternal),%{public}ld", buf, 0x20u);
        }

        v100 = sub_19B87DD40();
        if (*(v100 + 160) <= 1 && *(v100 + 164) <= 1 && *(v100 + 168) <= 1 && !*(v100 + 152))
        {
          goto LABEL_217;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v101 = *(v5 + 225);
        v102 = *(v4 + 8);
        v103 = **v9;
        v104 = ((*(*v9 + 18) - *(*v9 + 17)) >> 4);
        *v135 = 134349569;
        *&v135[4] = v102;
        *&v135[12] = 2049;
        *&v135[14] = v103;
        *&v135[22] = 2050;
        v136 = v104;
        v90 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v101, 2, "CLMM,%{public}.1lf,GEOMapFeatureRoad id,%{private}lld,has less than two coordinate (moveOnRoadInternal),%{public}ld", v135, 32);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometry::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v90);
        goto LABEL_215;
      }

      if (!v15)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v105 = *(v5 + 225);
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
        {
          v106 = *(v4 + 8);
          v107 = **v9;
          v108 = ((*(*v9 + 18) - *(*v9 + 17)) >> 4);
          *buf = 134349569;
          *&buf[4] = v106;
          *&buf[12] = 2049;
          *&buf[14] = v107;
          *&buf[22] = 2050;
          v141 = v108;
          _os_log_impl(&dword_19B873000, v105, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,GEOMapFeatureRoad id,%{private}lld,startCoordinate is null,%{public}ld", buf, 0x20u);
        }

        v109 = sub_19B87DD40();
        if (*(v109 + 160) > 1 || *(v109 + 164) > 1 || *(v109 + 168) > 1 || *(v109 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
          }

          v110 = *(v5 + 225);
          v111 = *(v4 + 8);
          v112 = **v9;
          v113 = ((*(*v9 + 18) - *(*v9 + 17)) >> 4);
          *v135 = 134349569;
          *&v135[4] = v111;
          *&v135[12] = 2049;
          *&v135[14] = v112;
          *&v135[22] = 2050;
          v136 = v113;
          v90 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v110, 2, "CLMM,%{public}.1lf,GEOMapFeatureRoad id,%{private}lld,startCoordinate is null,%{public}ld", v135, 32);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometry::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v90);
          goto LABEL_215;
        }

LABEL_217:
        objc_autoreleasePoolPop(v10);
        goto LABEL_218;
      }

      if (v7 < 0.0)
      {
        break;
      }

      if (v131)
      {
        goto LABEL_13;
      }

      v16 = 1.0;
      v17 = 1.0 - v8;
LABEL_15:
      v18 = fabs(v7);
      v19 = v13 * v17;
      if (v13 * v17 > v18)
      {
        v16 = v8 + v7 / v13;
      }

      v130 = *v14;
      *v135 = 0;
      *&v135[8] = v135;
      *&v135[16] = 0x4812000000;
      v136 = sub_19B9134E0;
      v137 = sub_19B913504;
      v138 = "";
      memset(v139, 0, 24);
      if (v19 <= v18)
      {
        if (*(v4 + 33) == 1)
        {
          memset(buf, 0, sizeof(buf));
          sub_19B91167C(buf, 3uLL);
          v20 = *(v4 + 16);
          if (v20)
          {
            if (v131)
            {
              sub_19B8EB310(v20, v9, buf, 1);
            }

            else
            {
              sub_19B8EAC7C(v20, v9, buf, 1);
            }

            if (*buf != *&buf[8])
            {
              LOBYTE(v133) = 1;
              sub_19B91779C(&v134, *buf, &v133);
            }
          }

          *&v134 = buf;
          sub_19B8F0E84(&v134);
        }

        else
        {
          v21 = sub_19B8E5F08((v4 + 2616), &v130, 0);
          if (v21)
          {
            v122 = v10;
            v123 = v4;
            v22 = 8;
            if (!v131)
            {
              v22 = 32;
            }

            v121 = v21;
            v23 = v21 + v22;
            v24 = *v23;
            if (*v23 != *(v23 + 8))
            {
              v26 = *v24;
              v25 = v24[1];
              *&v134 = *v24;
              *(&v134 + 1) = v25;
              if (v25)
              {
                atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v26)
              {
                LOBYTE(v129) = 1;
                sub_19B91779C(&v133, &v134, &v129);
              }

              sub_19B8EBC04((*&v135[8] + 48));
              if (v25)
              {
                sub_19B8750F8(v25);
              }
            }

            v10 = v122;
            v4 = v123;
            v5 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
            v9 = a2;
            if (*(*&v135[8] + 48) == *(*&v135[8] + 56))
            {
LABEL_35:
              *&v133 = sub_19B90F384(v4, v9);
              if (v133)
              {
                v128[0] = MEMORY[0x1E69E9820];
                v128[1] = 3221225472;
                v128[2] = sub_19B913640;
                v128[3] = &unk_1E753DBF8;
                v128[6] = v12;
                v128[7] = v15;
                v128[4] = v135;
                v128[5] = v4;
                v129 = COERCE_DOUBLE(v128);
                ++*(v4 + 36);
                v132 = 0;
                operator new();
              }

              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
              }

              v64 = *(v5 + 225);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                v65 = *(v4 + 8);
                *buf = 134349056;
                *&buf[4] = v65;
                _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,getGeoMapFeatureRoadObject returned nil", buf, 0xCu);
              }

              v66 = sub_19B87DD40();
              v5 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
              if ((*(v66 + 160) & 0x80000000) == 0 || (*(v66 + 164) & 0x80000000) == 0 || (*(v66 + 168) & 0x80000000) == 0 || *(v66 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
                }

                v67 = *(v4 + 8);
                LODWORD(v134) = 134349056;
                *(&v134 + 4) = v67;
                v68 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,getGeoMapFeatureRoadObject returned nil", &v134, 12);
                sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometry::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v68);
                if (v68 != buf)
                {
                  free(v68);
                }

                v5 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
              }

LABEL_141:
              v57 = 0;
              v124 = 0;
              goto LABEL_102;
            }

            *(v121 + 56) = *(v123 + 8);
          }

          else
          {
            if (*(*&v135[8] + 48) == *(*&v135[8] + 56))
            {
              goto LABEL_35;
            }

            v27 = sub_19B8E5F08((v4 + 2616), &v130, 1);
            v28 = v27;
            if (v27)
            {
              sub_19B8E6054(v27, v131);
              v28[7] = *(v4 + 8);
              v29 = *(*&v135[8] + 48);
              v30 = *(*&v135[8] + 56);
              if (v29 != v30)
              {
                do
                {
                  v31 = v10;
                  v32 = *v29;
                  v33 = *(v29 + 8);
                  if (v33)
                  {
                    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v34 = *v32;
                  if (*v32)
                  {
                    if (v131)
                    {
                      *(v28 + 1) = 1;
                      v35 = 1;
                    }

                    else
                    {
                      *v28 = 1;
                      v35 = 4;
                    }

                    sub_19B8EAB68(&v28[v35], v32);
                  }

                  else
                  {
                    sub_19B8E6054(v28, v131);
                    v28[7] = 0xBFF0000000000000;
                  }

                  if (v33)
                  {
                    sub_19B8750F8(v33);
                  }

                  v29 += 16;
                  if (v34)
                  {
                    v36 = v29 == v30;
                  }

                  else
                  {
                    v36 = 1;
                  }

                  v10 = v31;
                }

                while (!v36);
              }
            }

            else
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
              }

              v74 = *(v5 + 225);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                v75 = *(v4 + 8);
                *buf = 134349056;
                *&buf[4] = v75;
                _os_log_impl(&dword_19B873000, v74, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,Unexpected,RoadConnectionsEntry could not be created", buf, 0xCu);
              }

              v76 = sub_19B87DD40();
              if ((*(v76 + 160) & 0x80000000) == 0 || (*(v76 + 164) & 0x80000000) == 0 || (*(v76 + 168) & 0x80000000) == 0 || *(v76 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
                }

                v77 = *(v5 + 225);
                v78 = *(v4 + 8);
                LODWORD(v134) = 134349056;
                *(&v134 + 4) = v78;
                v79 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v77, 16, "CLMM,%{public}.1lf,Unexpected,RoadConnectionsEntry could not be created", &v134, 12);
                sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometry::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v79);
                if (v79 != buf)
                {
                  free(v79);
                }
              }
            }
          }
        }
      }

      if (v131 != 1 || (v37 = *(*&v135[8] + 48), v38 = *(*&v135[8] + 56), v37 == v38))
      {
        v40 = 0xFFFFFFFFLL;
      }

      else
      {
        v39 = 0;
        v40 = 0xFFFFFFFFLL;
        do
        {
          v42 = *v37;
          v41 = *(v37 + 8);
          if (v41)
          {
            atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v43 = a3;
          while (1)
          {
            v43 = *(v43 + 8);
            if (v43 == a3)
            {
              break;
            }

            if (*(v43 + 16) == **v42)
            {
              v40 = v39;
              break;
            }
          }

          if (v41)
          {
            sub_19B8750F8(v41);
          }

          if ((v40 & 0x80000000) == 0)
          {
            break;
          }

          ++v39;
          v37 += 16;
        }

        while (v37 != v38);
      }

      if (v19 > v18 || (v47 = *(*&v135[8] + 48), v48 = *(*&v135[8] + 56), v47 == v48) || v126 > 0x2B || (v49 = v131, v40 == 0xFFFFFFFF) && v131)
      {
        v134 = 0uLL;
        v129 = -1.0;
        v9 = a2;
        v44 = *(a2 + 8);
        v127[0] = *a2;
        v127[1] = v44;
        if (v44)
        {
          atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
        }

        v45 = sub_19B9137B4((v4 + 56), v127, &v134, &v129, v16);
        if (v44)
        {
          sub_19B8750F8(v44);
        }

        if (v45)
        {
          *(a2 + 48) = v16;
          *(a2 + 32) = v134;
          v46 = v129;
          *(a2 + 24) = v46;
        }

        else
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
          }

          v51 = *(v5 + 225);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v52 = *(v4 + 8);
            *buf = 134349056;
            *&buf[4] = v52;
            _os_log_impl(&dword_19B873000, v51, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,moveOnRoadInternal,interpolateProjections returned false", buf, 0xCu);
          }

          v53 = sub_19B87DD40();
          if ((*(v53 + 160) & 0x80000000) == 0 || (*(v53 + 164) & 0x80000000) == 0 || (*(v53 + 168) & 0x80000000) == 0 || *(v53 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
            }

            v54 = *(v5 + 225);
            v55 = *(v4 + 8);
            LODWORD(v133) = 134349056;
            *(&v133 + 4) = v55;
            v56 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v54, 16, "CLMM,%{public}.1lf,moveOnRoadInternal,interpolateProjections returned false", &v133, 12);
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometry::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v56);
            if (v56 != buf)
            {
              free(v56);
            }
          }
        }

        v124 = v45;
        v57 = 0;
      }

      else
      {
        v50 = -v19;
        if (v131)
        {
          v50 = v19;
        }

        v7 = v7 + v50;
        v9 = a2;
        if ((v40 & 0x80000000) != 0)
        {
          v58 = sub_19B91408C(v4 + 96);
          v47 = *(*&v135[8] + 48);
          v40 = v58 % ((*(*&v135[8] + 56) - v47) >> 4);
          v49 = v131;
        }

        else if (v40 >= (v48 - v47) >> 4)
        {
          goto LABEL_115;
        }

        if (v49)
        {
          v16 = 1.0;
        }

        else
        {
          v16 = 0.0;
        }

        v59 = 16 * v40;
        v60 = *(v47 + v59);
        v61 = *v60;
        v62 = v60[1];
        if (v62)
        {
          atomic_fetch_add_explicit(v62 + 1, 1uLL, memory_order_relaxed);
        }

        v63 = *(a2 + 8);
        *a2 = v61;
        *(a2 + 8) = v62;
        if (v63)
        {
          sub_19B8750F8(v63);
          v61 = *a2;
        }

        if (v61)
        {
          *(a2 + 20) = *(*(*(*&v135[8] + 48) + v59) + 16);
LABEL_115:
          v57 = 1;
          goto LABEL_102;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v69 = *(v5 + 225);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v70 = *(v4 + 8);
          *buf = 134349056;
          *&buf[4] = v70;
          _os_log_impl(&dword_19B873000, v69, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,makeRoadFromGEOMapFeatureRoad returned nullptr", buf, 0xCu);
        }

        v71 = sub_19B87DD40();
        v5 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
        if ((*(v71 + 160) & 0x80000000) != 0 && (*(v71 + 164) & 0x80000000) != 0 && (*(v71 + 168) & 0x80000000) != 0 && !*(v71 + 152))
        {
          goto LABEL_141;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v72 = *(v4 + 8);
        LODWORD(v134) = 134349056;
        *(&v134 + 4) = v72;
        v73 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,makeRoadFromGEOMapFeatureRoad returned nullptr", &v134, 12);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometry::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v73);
        if (v73 != buf)
        {
          free(v73);
        }

        v57 = 0;
        v124 = 0;
        v5 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
      }

LABEL_102:
      _Block_object_dispose(v135, 8);
      *buf = v139;
      sub_19B8F0E84(buf);
      objc_autoreleasePoolPop(v10);
      if ((v57 & 1) == 0)
      {
        v114 = v124;
        return v114 & 1;
      }

      v8 = v16;
      if (++v126 == 45)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v116 = *(v5 + 225);
        if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
        {
          v117 = *(v4 + 8);
          *buf = 134349312;
          *&buf[4] = v117;
          *&buf[12] = 2050;
          *&buf[14] = v7;
          _os_log_impl(&dword_19B873000, v116, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,moveOnRoad failed,distanceRemaining,%{public}.1lf", buf, 0x16u);
        }

        v118 = sub_19B87DD40();
        if ((*(v118 + 160) & 0x80000000) == 0 || (*(v118 + 164) & 0x80000000) == 0 || (*(v118 + 168) & 0x80000000) == 0 || *(v118 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
          }

          v119 = *(v5 + 225);
          v120 = *(v4 + 8);
          *v135 = 134349312;
          *&v135[4] = v120;
          *&v135[12] = 2050;
          *&v135[14] = v7;
          v84 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v119, 16, "CLMM,%{public}.1lf,moveOnRoad failed,distanceRemaining,%{public}.1lf", v135, 22);
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometry::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v84);
          goto LABEL_171;
        }

        goto LABEL_218;
      }
    }

    v131 = 1;
LABEL_13:
    v16 = 0.0;
    v17 = v8;
    goto LABEL_15;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
  }

  v80 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    v81 = *(v4 + 8);
    *buf = 134349056;
    *&buf[4] = v81;
    _os_log_impl(&dword_19B873000, v80, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", buf, 0xCu);
  }

  v82 = sub_19B87DD40();
  if ((*(v82 + 160) & 0x80000000) == 0 || (*(v82 + 164) & 0x80000000) == 0 || (*(v82 + 168) & 0x80000000) == 0 || *(v82 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v83 = *(v4 + 8);
    *v135 = 134349056;
    *&v135[4] = v83;
    v84 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", v135, 12);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::moveOnRoad(struct CLMapGeometry::DistanceQueryResult &, double, const CLMapGeometry::RoadInfoList &) const", "CoreLocation: %s\n", v84);
LABEL_171:
    if (v84 != buf)
    {
      free(v84);
    }
  }

LABEL_218:
  v114 = 0;
  return v114 & 1;
}

void sub_19B91591C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void **a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a49, 8);
  a47 = a24;
  sub_19B8F0E84(&a47);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9159F4(uint64_t a1, double **a2, uint64_t *a3, int *a4, double a5, double a6)
{
  v72 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 32) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v24 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v25;
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v26 = sub_19B87DD40();
    if ((*(v26 + 160) & 0x80000000) != 0 && (*(v26 + 164) & 0x80000000) != 0 && (*(v26 + 168) & 0x80000000) != 0 && !*(v26 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v27 = *(a1 + 8);
    *v68 = 134349056;
    *&v68[4] = v27;
    v23 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", v68, 12);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v23);
    goto LABEL_45;
  }

  v8 = *a2;
  if (!*a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v28 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v29 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v29;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,input road is nullptr", buf, 0xCu);
    }

    v30 = sub_19B87DD40();
    if ((*(v30 + 160) & 0x80000000) != 0 && (*(v30 + 164) & 0x80000000) != 0 && (*(v30 + 168) & 0x80000000) != 0 && !*(v30 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v31 = *(a1 + 8);
    *v68 = 134349056;
    *&v68[4] = v31;
    v23 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,input road is nullptr", v68, 12);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v23);
    goto LABEL_45;
  }

  sub_19B9F5AA8(*a2);
  v13 = v8[5];
  if (v13 <= 0.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v32 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v33;
      _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,road length is 0.0", buf, 0xCu);
    }

    v34 = sub_19B87DD40();
    if ((*(v34 + 160) & 0x80000000) != 0 && (*(v34 + 164) & 0x80000000) != 0 && (*(v34 + 168) & 0x80000000) != 0 && !*(v34 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v35 = *(a1 + 8);
    *v68 = 134349056;
    *&v68[4] = v35;
    v23 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,road length is 0.0", v68, 12);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v23);
    goto LABEL_45;
  }

  v14 = *a2;
  if (((*(*a2 + 18) - *(*a2 + 17)) >> 4) <= 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v15 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 8);
      v17 = **a2;
      v18 = ((*(*a2 + 18) - *(*a2 + 17)) >> 4);
      *buf = 134349569;
      *&buf[4] = v16;
      *&buf[12] = 2049;
      *&buf[14] = v17;
      *&buf[22] = 2050;
      *&buf[24] = v18;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,GEOMapFeatureRoad id,%{private}lld,has less than two coordinate (moveOnRoadInternal),%{public}ld", buf, 0x20u);
    }

    v19 = sub_19B87DD40();
    if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v20 = *(a1 + 8);
    v21 = **a2;
    v22 = ((*(*a2 + 18) - *(*a2 + 17)) >> 4);
    *v68 = 134349569;
    *&v68[4] = v20;
    v69 = 2049;
    *v70 = v21;
    *&v70[8] = 2050;
    *&v70[10] = v22;
    v23 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,GEOMapFeatureRoad id,%{private}lld,has less than two coordinate (moveOnRoadInternal),%{public}ld", v68, 32);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v23);
LABEL_45:
    if (v23 != buf)
    {
      free(v23);
    }

    return 0;
  }

  v37 = 1.0 - a5;
  if (!*(a2 + 20))
  {
    v37 = a5;
  }

  v38 = v13 * v37;
  if (v13 * v37 <= fabs(a6))
  {
    v45 = *a4;
    v46 = v45 + 1;
    *a4 = v45 + 1;
    if (v45 > 9 || a3[2] <= v46)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v55 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v56 = *(a1 + 8);
        v57 = *a4;
        v58 = a3[2];
        *buf = 134349568;
        *&buf[4] = v56;
        *&buf[12] = 1026;
        *&buf[14] = v57;
        *&buf[18] = 2050;
        *&buf[20] = v58;
        _os_log_impl(&dword_19B873000, v55, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,no more route roads available to cover the distance travelled,index,%{public}d,size,%{public}lu", buf, 0x1Cu);
      }

      v59 = sub_19B87DD40();
      if (*(v59 + 160) <= 1 && *(v59 + 164) <= 1 && *(v59 + 168) <= 1 && !*(v59 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v60 = *(a1 + 8);
      v61 = *a4;
      v62 = a3[2];
      *v68 = 134349568;
      *&v68[4] = v60;
      v69 = 1026;
      *v70 = v61;
      *&v70[4] = 2050;
      *&v70[6] = v62;
      v23 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,no more route roads available to cover the distance travelled,index,%{public}d,size,%{public}lu", v68, 28);
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometry::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v23);
      goto LABEL_45;
    }

    v47 = a3[1];
    if (v45 <= -2)
    {
      do
      {
        v47 = *v47;
      }

      while (!__CFADD__(v46++, 1));
    }

    else if (v45 != -1)
    {
      v48 = v45 + 2;
      do
      {
        v47 = *(v47 + 8);
        --v48;
      }

      while (v48 > 1);
    }

    if (v47 == a3)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v63 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        v64 = *(a1 + 8);
        *buf = 134349056;
        *&buf[4] = v64;
        _os_log_impl(&dword_19B873000, v63, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,unexpectedly reached to the end of routeRoadList", buf, 0xCu);
      }

      v65 = sub_19B87DD40();
      if ((*(v65 + 160) & 0x80000000) != 0 && (*(v65 + 164) & 0x80000000) != 0 && (*(v65 + 168) & 0x80000000) != 0 && !*(v65 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v66 = *(a1 + 8);
      *v68 = 134349056;
      *&v68[4] = v66;
      v23 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,unexpectedly reached to the end of routeRoadList", v68, 12);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v23);
      goto LABEL_45;
    }

    v50 = *(v47 + 36);
    sub_19B911784(a2, (v47 + 16));
    *(a2 + 20) = *(v47 + 36);
    v52.n128_u64[0] = 0;
    if ((v50 & 1) == 0)
    {
      v52.n128_f64[0] = fmod((*(a2 + 6) + 180.0), 360.0);
      if (v52.n128_f64[0] < 0.0)
      {
        v52.n128_f64[0] = v52.n128_f64[0] + 360.0;
      }

      v53 = v52.n128_f64[0];
      *(a2 + 6) = v53;
      v52.n128_u64[0] = 1.0;
    }

    v54 = *(*a1 + 56);

    v51.n128_f64[0] = a6 - v38;
    return v54(a1, a2, a3, a4, v52, v51);
  }

  else
  {
    v39 = a6 / v13;
    if (!*(a2 + 20))
    {
      v39 = -v39;
    }

    *buf = 0;
    *&buf[8] = 0;
    v40 = a2[1];
    v41 = v39 + a5;
    v67[0] = v14;
    v67[1] = v40;
    *v68 = 0xBFF0000000000000;
    if (v40)
    {
      atomic_fetch_add_explicit(v40 + 1, 1uLL, memory_order_relaxed);
    }

    sub_19B9137B4((a1 + 56), v67, buf, v68, v39 + a5);
    if (v40)
    {
      sub_19B8750F8(v40);
    }

    *(a2 + 6) = v41;
    *(a2 + 2) = *buf;
    v42 = *v68;
    *(a2 + 6) = v42;
    if ((*(a2 + 20) & 1) == 0)
    {
      v43 = fmod((v42 + 180.0), 360.0);
      if (v43 < 0.0)
      {
        v43 = v43 + 360.0;
      }

      v44 = v43;
      *(a2 + 6) = v44;
    }

    return 1;
  }
}

void sub_19B916588(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9165AC(uint64_t a1)
{
  sub_19B9DE4D8(a1);

  JUMPOUT(0x19EAE98C0);
}

os_log_t sub_19B9165FC()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void sub_19B916648(void *a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v4 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349571;
      v46 = objc_msgSend_code(a2, v5, v6, v7);
      v47 = 2114;
      v48 = objc_msgSend_domain(a2, v8, v9, v10);
      v49 = 2113;
      v50 = objc_msgSend_localizedDescription(a2, v11, v12, v13);
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "#Warning CLMM,GEOMapFeatureAccessRequest reported errorcode,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v18 = off_1EAFE4708;
      v39 = 134349571;
      v40 = objc_msgSend_code(a2, v15, v16, v17);
      v41 = 2114;
      v42 = objc_msgSend_domain(a2, v19, v20, v21);
      v43 = 2113;
      v44 = objc_msgSend_localizedDescription(a2, v22, v23, v24);
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v18, 0, "#Warning CLMM,GEOMapFeatureAccessRequest reported errorcode,%{public}lld,domain,%{public}@,description,%{private}@", &v39, 32);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    *(*(a1[4] + 8) + 24) = 1;
  }

  if (*(*(a1[5] + 8) + 40))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v26 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(*(a1[6] + 8) + 24);
      v28 = *(*(a1[4] + 8) + 24);
      *buf = 134349312;
      v46 = v27;
      v47 = 1026;
      LODWORD(v48) = v28;
      _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLMM,releasing dispatch_group,%{public}lu,errorReported,%{public}d", buf, 0x12u);
    }

    v29 = sub_19B87DD40();
    if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v30 = *(*(a1[6] + 8) + 24);
      v31 = *(*(a1[4] + 8) + 24);
      v39 = 134349312;
      v40 = v30;
      v41 = 1026;
      LODWORD(v42) = v31;
      v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,releasing dispatch_group,%{public}lu,errorReported,%{public}d", &v39, 18);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    dispatch_group_leave(*(*(a1[5] + 8) + 40));
  }

  if (*(*(a1[6] + 8) + 24))
  {
    if (*(*(a1[5] + 8) + 40))
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v33 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEBUG, "CLMM,clearing dispatchGroup when time-out has happened", buf, 2u);
      }

      v34 = sub_19B87DD40();
      if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        LOWORD(v39) = 0;
        v35 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,clearing dispatchGroup when time-out has happened", &v39, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v35);
        if (v35 != buf)
        {
          free(v35);
        }
      }

      *(*(a1[5] + 8) + 40) = 0;
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v36 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_ERROR, "CLMM,dispatchGroup is unexpectedly nil", buf, 2u);
      }

      v37 = sub_19B87DD40();
      if ((*(v37 + 160) & 0x80000000) == 0 || (*(v37 + 164) & 0x80000000) == 0 || (*(v37 + 168) & 0x80000000) == 0 || *(v37 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        LOWORD(v39) = 0;
        v38 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,dispatchGroup is unexpectedly nil", &v39, 2);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v38);
        if (v38 != buf)
        {
          free(v38);
        }
      }
    }
  }
}

uint64_t sub_19B916D20(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_19B916D74();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_19B916D74()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

void sub_19B916DC0(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          sub_19B8750F8(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_19B916E38(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      sub_19B8750F8(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_19B916F14(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0E6BC20;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_19B916F70(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6BC90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_19B916FBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_19B917010(uint64_t a1)
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

uint64_t sub_19B917090(uint64_t a1, uint64_t a2)
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

__n128 sub_19B9171A4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0E6BCB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_19B917200(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6BD10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_19B9172C8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0E6BD30;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_19B917300(uint64_t a1, const char *a2)
{
  v3 = **(a1 + 8);
  v4 = *(*(a1 + 16) + 2600);
  v5 = **(a1 + 24);
  v6 = **(a1 + 32);
  if (v3 == 1)
  {
    return objc_msgSend_findRoadsFromNextIntersectionOf_handler_completionHandler_(v4, a2, v5, v6, *a2);
  }

  else
  {
    return MEMORY[0x1EEE66B58](v4, sel_findRoadsFromPreviousIntersectionOf_handler_completionHandler_, v5, v6);
  }
}

uint64_t sub_19B917330(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6BD90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_19B91737C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  if (a2 != a3 && v6 != a1)
  {
    do
    {
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = *(v6 + 24);
      *(v6 + 16) = v8;
      *(v6 + 24) = v7;
      if (v9)
      {
        sub_19B8750F8(v9);
      }

      v10 = *(v4 + 32);
      *(v6 + 48) = *(v4 + 48);
      *(v6 + 32) = v10;
      v4 = *(v4 + 8);
      v6 = *(v6 + 8);
    }

    while (v4 != a3 && v6 != a1);
  }

  if (v6 == a1)
  {

    return sub_19B917468(a1, a1, v4, a3);
  }

  else
  {

    return sub_19B9175EC(a1, v6, a1);
  }
}

uint64_t *sub_19B917468(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

void sub_19B9175AC(void *a1)
{
  __cxa_begin_catch(a1);
  while (1)
  {
    v2 = *v1;
    v3 = v1[3];
    if (v3)
    {
      sub_19B8750F8(v3);
    }

    operator delete(v1);
    v1 = v2;
    if (!v2)
    {
      __cxa_rethrow();
    }
  }
}

void *sub_19B9175EC(uint64_t a1, void *__p, void *a3)
{
  if (__p != a3)
  {
    v4 = __p;
    v6 = *(*a3 + 8);
    v7 = *__p;
    *(v7 + 8) = v6;
    *v6 = v7;
    do
    {
      v8 = v4[1];
      --*(a1 + 16);
      v9 = v4[3];
      if (v9)
      {
        sub_19B8750F8(v9);
      }

      operator delete(v4);
      v4 = v8;
    }

    while (v8 != a3);
  }

  return a3;
}

__n128 sub_19B9176E8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0E6BDB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_19B917720(uint64_t a1)
{
  v2 = **(a1 + 8);
  v3 = *(*(a1 + 16) + 2600);
  v4 = **(a1 + 24);
  v5 = **(a1 + 32);
  if (v2 == 1)
  {
    return MEMORY[0x1EEE66B58](v3, sel_findRoadsToNextIntersectionOf_handler_completionHandler_, v4, v5);
  }

  else
  {
    return MEMORY[0x1EEE66B58](v3, sel_findRoadsToPreviousIntersectionOf_handler_completionHandler_, v4, v5);
  }
}

uint64_t sub_19B917750(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6BE10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_19B917868(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6BE30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B9178BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_19B8750F8(v1);
  }
}

__n128 sub_19B91794C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0E6BE80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_19B917984(uint64_t a1, const char *a2)
{
  v3 = **(a1 + 8);
  v4 = *(*(a1 + 16) + 2600);
  v5 = **(a1 + 24);
  v6 = **(a1 + 32);
  if (v3)
  {
    return MEMORY[0x1EEE66B58](v4, sel_findRoadsToPreviousIntersectionOf_handler_completionHandler_, v5, v6);
  }

  else
  {
    return objc_msgSend_findRoadsFromNextIntersectionOf_handler_completionHandler_(v4, a2, v5, v6, *a2);
  }
}

uint64_t sub_19B9179B0(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6BEE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_19B917A10(void *a1, uint64_t *a2, __int128 *a3)
{
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19B9D3798(a1, v6, a3);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  *a1 = &unk_1F0E6BF00;
  return a1;
}

void sub_19B917A88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B917AA4(uint64_t a1)
{
  sub_19B9D3858(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19B917ADC(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 100);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v5 + 48))(v5, a2, 450.0);
  v12 = &v12;
  v13 = &v12;
  v14 = 0;
  v6 = (*(*v5 + 64))(v5, &v12, a2, 0, 30.0);
  if (v6)
  {
    v7 = v13;
    v8 = *(a2 + 104);
    if (v13 == &v12)
    {
      goto LABEL_17;
    }

    v9 = &v12;
    do
    {
      if (v8 == -1.0)
      {
        goto LABEL_11;
      }

      v10 = vabdd_f64(v8, *(v7 + 10));
      if (v10 > 180.0)
      {
        v10 = 360.0 - v10;
      }

      if (v10 <= 15.0)
      {
LABEL_11:
        if (v9 == &v12 || *(v7 + 8) < *(v9 + 8))
        {
          v9 = v7;
        }
      }

      v7 = v7[1];
    }

    while (v7 != &v12);
    if (v9 == &v12)
    {
LABEL_17:
      *(a2 + 152) = *(a2 + 56);
      *(a2 + 168) = v8;
      ++*(a1 + 104);
    }

    else
    {
      sub_19B9DEB0C(a2, v9 + 2);
      *(a2 + 176) = *(v9 + 8);
    }
  }

  else
  {
    (*(*a1 + 40))(a1);
    ++*(a1 + 108);
  }

  sub_19B916DC0(&v12);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  return v6;
}

void sub_19B917CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B916DC0(va);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  _Unwind_Resume(a1);
}

__n128 sub_19B917D08(__n128 *a1, uint64_t a2)
{
  a1[3].n128_u64[0] = *a2;
  if (&a1[3] != a2)
  {
    sub_19B8B9C88(&a1[3].n128_u64[1], *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  }

  result = *(a2 + 32);
  a1[5] = result;
  return result;
}

BOOL sub_19B917D68(uint64_t a1, double a2)
{
  v2 = *(a1 + 88);
  v3 = vabdd_f64(a2, v2);
  return v2 >= 0.0 && v3 <= 6.0 && *(a1 + 48) == 1;
}

double sub_19B917D98(uint64_t a1, uint64_t a2)
{
  *(a2 + 48) = *(a1 + 108);
  result = *(a1 + 100);
  *(a2 + 40) = result;
  *(a1 + 104) = 0;
  *(a1 + 100) = 0;
  return result;
}

BOOL sub_19B917DF4(id *a1, id *a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a1;
  v7 = 0;
  v63 = 0.0174532925;
  v66 = 0.0;
  v67 = 0.0;
  v8 = 0.0;
  do
  {
    objc_msgSend_latitude_deg(*v6, a2, a3, a4, *&v63);
    v10 = v9;
    objc_msgSend_longitude_deg(*v6, v11, v12, v13);
    v18 = sub_19B9180C4(v10, v14);
    if (!v18)
    {
      break;
    }

    objc_msgSend_latitude_deg(*v6, v15, v16, v17);
    v20 = v19;
    objc_msgSend_longitude_deg(*v6, v21, v22, v23);
    v25 = v24;
    v26 = __sincos_stret(v20 * v63);
    v30 = __sincos_stret(v25 * v63);
    v31 = 6378137.0 / sqrt(v26.__sinval * -0.00669437999 * v26.__sinval + 1.0);
    v32 = v26.__cosval * (v31 + 0.0);
    v33 = v30.__cosval * v32;
    v34 = v31 * 0.99330562 + 0.0;
    v35 = v26.__sinval * v34;
    v36 = v66;
    if (!v7)
    {
      v36 = v30.__sinval * v32;
      v8 = v26.__sinval * v34;
    }

    v64 = v30.__sinval * v32;
    v65 = v8;
    v37 = v67;
    if (!v7)
    {
      v37 = v30.__cosval * v32;
    }

    objc_msgSend_latitude_deg(*v6, v27, v28, v29);
    v39 = v38;
    objc_msgSend_longitude_deg(*v6, v40, v41, v42);
    v44 = v43;
    v45 = __sincos_stret(v39 * v63);
    v46 = __sincos_stret(v44 * v63);
    v66 = v36;
    v67 = v37;
    v47 = v33 - v37;
    v8 = v65;
    v48 = v46.__cosval * (v64 - v36) - v46.__sinval * v47;
    v49 = -(v45.__sinval * v46.__sinval) * (v64 - v36) + -(v45.__sinval * v46.__cosval) * v47 + v45.__cosval * (v35 - v65);
    v50 = v45.__cosval * v46.__sinval * (v64 - v36) + v45.__cosval * v46.__cosval * v47 + v45.__sinval * (v35 - v65);
    v52 = *(a3 + 8);
    v51 = *(a3 + 16);
    if (v52 >= v51)
    {
      v54 = 0xAAAAAAAAAAAAAAABLL * ((v52 - *a3) >> 3);
      v55 = v54 + 1;
      if (v54 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_19B8B8A40();
      }

      v56 = 0xAAAAAAAAAAAAAAABLL * ((v51 - *a3) >> 3);
      if (2 * v56 > v55)
      {
        v55 = 2 * v56;
      }

      if (v56 >= 0x555555555555555)
      {
        v57 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v57 = v55;
      }

      if (v57)
      {
        sub_19B8FCEEC(a3, v57);
      }

      v58 = (24 * v54);
      *v58 = v48;
      v58[1] = v49;
      v58[2] = v50;
      v53 = 24 * v54 + 24;
      v59 = *(a3 + 8) - *a3;
      v60 = 24 * v54 - v59;
      memcpy(v58 - v59, *a3, v59);
      v61 = *a3;
      *a3 = v60;
      *(a3 + 8) = v53;
      *(a3 + 16) = 0;
      if (v61)
      {
        operator delete(v61);
      }
    }

    else
    {
      *v52 = v48;
      v52[1] = v49;
      v53 = (v52 + 3);
      v52[2] = v50;
    }

    *(a3 + 8) = v53;
    ++v6;
    --v7;
  }

  while (v6 != a2);
  return v18;
}