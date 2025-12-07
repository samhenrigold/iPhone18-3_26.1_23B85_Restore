void sub_1D0C389D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::GnssSvDatabase::PopulateEphemFromAnchorPoints(uint64_t a1, uint64_t a2, double *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((sub_1D0C39154(a2) & 1) == 0)
  {
    LOWORD(__p[0]) = 12;
    LOBYTE(v17[0]) = 4;
    cnprint::CNPrinter::Print(__p, v17, "#svdb,PopulateEphemFromAnchorPoints,Malformed sv_info");
  }

  if (*(a2 + 48))
  {
    v5 = *(a2 + 24);
    if (*(a2 + 32) - v5 == 128)
    {
      v7 = *v5;
      v6 = v5 + 4;
      v8 = v7;
      v9 = 1;
      while (1)
      {
        v10 = v8;
        v8 = *v6;
        v11 = *v6 - v10;
        if (fabs(v11 + -1.0e10) > 2000000000.0)
        {
          break;
        }

        ++v9;
        v6 += 4;
        if (v9 == 4)
        {
          operator new();
        }
      }

      LOWORD(v17[0]) = 12;
      LOBYTE(v16) = 4;
      sub_1D0D49EE8(a2, __p);
      if (v19 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      cnprint::CNPrinter::Print(v17, &v16, "#svdb,Anchor points are not spaced correctly,SV,%s,diff,%lf,anchors,%zu,%zu", v14, v11, v9 - 1, v9);
    }

    else
    {
      LOWORD(v17[0]) = 12;
      LOBYTE(v16) = 4;
      sub_1D0D49EE8(a2, __p);
      if (v19 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      cnprint::CNPrinter::Print(v17, &v16, "#svdb,Unexpected number of anchor points,SV,%s,N,%zu", v13, (*(a2 + 32) - *(a2 + 24)) >> 5);
    }
  }

  else
  {
    LOWORD(v17[0]) = 12;
    LOBYTE(v16) = 4;
    sub_1D0D49EE8(a2, __p);
    if (v19 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    cnprint::CNPrinter::Print(v17, &v16, "#svdb,missing anchor points,SV,%s", v12);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1D0C3908C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  operator delete(v30);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0C39154(uint64_t a1)
{
  if (!sub_1D0C39448(a1) || (*(a1 + 8) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !*(a1 + 16) || (*(a1 + 176) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 184) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 192) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 200) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 208) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return 0;
  }

  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    if (v4 != v5)
    {
      while ((*v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v4[1] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v4[2] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v4[3] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v4 += 4;
        if (v4 == v5)
        {
          goto LABEL_20;
        }
      }

      return 0;
    }

LABEL_20:
    v6 = *(a1 + 224);
    if (v6 == *(a1 + 232))
    {
      v2 = 1;
LABEL_47:
      sub_1D0B99218(0);
      return v2;
    }

    v7 = *v6;
    if (v7 > 6)
    {
      if (v7 - 7 < 2)
      {
        if (*a1 == 8)
        {
          goto LABEL_44;
        }
      }

      else if (v7 == 9)
      {
        if (*a1 == 32)
        {
          goto LABEL_44;
        }
      }

      else if (v7 != 10 || *a1 == 64)
      {
        goto LABEL_44;
      }
    }

    else if (*v6 > 3u)
    {
      if (*a1 == 4)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v7 - 1 < 2)
      {
        if (*a1 != 1 && *a1 != 16)
        {
          goto LABEL_46;
        }

LABEL_44:
        operator new();
      }

      if (v7 == 3)
      {
        if (*a1 == 2)
        {
          goto LABEL_44;
        }
      }

      else if (*v6)
      {
        goto LABEL_44;
      }
    }

LABEL_46:
    v2 = 0;
    goto LABEL_47;
  }

  if (*(a1 + 168) == 1)
  {
    goto LABEL_20;
  }

  return 0;
}

BOOL sub_1D0C39448(int *a1)
{
  v1 = 0;
  v2 = *a1;
  if (*a1 <= 7)
  {
    switch(v2)
    {
      case 1:
        v3 = 32;
        break;
      case 2:
        v3 = 14;
        v4 = 7;
        v5 = 5;
        return v3 > (*(a1 + v5) + v4);
      case 4:
        v3 = 63;
        break;
      default:
        return v1;
    }

    goto LABEL_15;
  }

  if (v2 > 31)
  {
    if (v2 == 32)
    {
      v3 = 22;
      v4 = -120;
      goto LABEL_16;
    }

    if (v2 != 64)
    {
      return v1;
    }

    v3 = 14;
LABEL_15:
    v4 = -1;
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 36;
    goto LABEL_15;
  }

  if (v2 == 16)
  {
    v3 = 10;
    v4 = 63;
LABEL_16:
    v5 = 4;
    return v3 > (*(a1 + v5) + v4);
  }

  return v1;
}

uint64_t raven::GnssSvDatabase::ConvertCNTimeInGnssTimeBaseToTAI(cnnavigation::GNSSUTCParameters *this, uint64_t a2, _OWORD *a3)
{
  v6 = *(this + 1);
  if (v6 > 3)
  {
    if (v6 == 4)
    {
      v19 = *a2;
      v20 = *a2 / 604800;
      LODWORD(v28) = v20;
      v21 = *(a2 + 8) + (v19 - 604800 * v20);
      v29 = v21;
      if (v21 < 0.0)
      {
        LODWORD(v28) = v20 - 1;
        v29 = v21 + 604800.0;
      }

      cnnavigation::TAITime::TAITime(&v30, &v28, this);
      goto LABEL_36;
    }

    if (v6 == 6)
    {
      v25 = *a2;
      v26 = *a2 / 604800;
      LODWORD(v28) = v26;
      v27 = *(a2 + 8) + (v25 - 604800 * v26);
      v29 = v27;
      if (v27 < 0.0)
      {
        LODWORD(v28) = v26 - 1;
        v29 = v27 + 604800.0;
      }

      cnnavigation::TAITime::TAITime(&v30, &v28, this);
      goto LABEL_36;
    }

    if (v6 != 5)
    {
      goto LABEL_29;
    }

LABEL_11:
    v10 = *(a2 + 8);
    v11 = *a2;
    v12 = fabs(v10 + v11);
    v13 = (*&v12 - 1) < 0xFFFFFFFFFFFFFLL;
    v14 = COERCE__INT64(v10 + v11) < 0 && (*&v12 - 0x10000000000000) >> 53 < 0x3FF;
    if (COERCE__INT64(v10 + v11) >= 0)
    {
      v13 = 0;
    }

    v15 = *&v12 <= 0x7FF0000000000000;
    v16 = v12 == INFINITY || v13;
    if (!v15)
    {
      v16 = 1;
    }

    if ((v16 | v14) == 1)
    {
      LOWORD(v30) = 5;
      LOBYTE(v28) = 4;
      cnprint::CNPrinter::Print(&v30, &v28, "Invalid GPS time %.3lf constructed from CNTime", v10 + v11);
      v10 = *(a2 + 8);
      v11 = *a2;
    }

    v17 = (v11 / 604800.0);
    LODWORD(v28) = v17;
    v18 = v10 + v11 + v17 * -604800.0;
    v29 = v18;
    if (v18 < 0.0)
    {
      LODWORD(v28) = v17 - 1;
      v29 = v18 + 604800.0;
    }

    cnnavigation::TAITime::TAITime(&v30, &v28, this);
    goto LABEL_36;
  }

  if (v6 == 1)
  {
    goto LABEL_11;
  }

  if (v6 == 2)
  {
    v23 = *a2 / 86400;
    v24 = *(a2 + 8) + (*a2 - 86400 * v23);
    v29 = v24;
    LODWORD(v28) = v23 + 1;
    if (v24 < 0.0)
    {
      LODWORD(v28) = v23;
      v29 = v24 + 86400.0;
    }

    cnnavigation::TAITime::TAITime(&v30, &v28, this);
    goto LABEL_36;
  }

  if (v6 != 3)
  {
LABEL_29:
    LOWORD(v30) = 12;
    LOBYTE(v28) = 4;
    cnprint::CNPrinter::Print(&v30, &v28, "#svdb,Unexpected constellation requested for Gnss to TAI conversion,%i", v6);
    return 0;
  }

  v7 = *a2;
  v8 = *a2 / 604800;
  LODWORD(v28) = v8;
  v9 = *(a2 + 8) + (v7 - 604800 * v8);
  v29 = v9;
  if (v9 < 0.0)
  {
    LODWORD(v28) = v8 - 1;
    v29 = v9 + 604800.0;
  }

  cnnavigation::TAITime::TAITime(&v30, &v28, this);
LABEL_36:
  *a3 = v30;
  return 1;
}

void sub_1D0C3994C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0C39994(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1D0C3994C(a1, a2);
  }

  sub_1D0C5663C();
}

void sub_1D0C39A24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::GnssSvDatabase::FitAnchorPointsToPoly(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = 0;
  v26 = 0x100000004;
  v25 = xmmword_1D0E7DCE0;
  v24 = &unk_1F4CDEBB8;
  v27 = v28;
  v21 = 0x400000004;
  v20 = xmmword_1D0E7DCD0;
  v6 = v23;
  v19 = &unk_1F4CDEB70;
  v22 = v23;
  v7 = *a3;
  v8 = *a2;
  do
  {
    v9 = 0;
    v28[v5] = *(v7 + 8 * v5);
    v10 = 1.0;
    do
    {
      *&v6[v9] = v10;
      v10 = v10 * *(v8 + 8 * v5);
      v9 += 32;
    }

    while (v9 != 128);
    ++v5;
    v6 += 8;
  }

  while (v5 != 4);
  v16 = 0x400000004;
  v14 = &unk_1F4CDEB70;
  v15 = xmmword_1D0E7DCD0;
  v17 = &v18;
  v36 = 0x100000004;
  v34 = &unk_1F4CDFDB8;
  v35 = xmmword_1D0E7DCE0;
  v37 = &v38;
  v31 = 0x100000010;
  v30 = xmmword_1D0E83CB0;
  v29 = &unk_1F4CDFE00;
  v32 = v33;
  sub_1D0B9F868(&v19, &v34, &v29, &v14);
  v31 = 0x100000004;
  v30 = xmmword_1D0E7DCE0;
  v29 = &unk_1F4CDEBB8;
  v32 = v33;
  result = sub_1D0B89390(&v14, &v24, &v29);
  v12 = 0;
  v13 = v32;
  do
  {
    *(a4 + v12) = *&v13[v12];
    v12 += 8;
  }

  while (v12 != 32);
  return result;
}

void **sub_1D0C39C54(void **result, char *__src, char *a3)
{
  v4 = result;
  v5 = result[2];
  v6 = *result;
  if ((v5 - *result) < 0x20)
  {
    if (v6)
    {
      result[1] = v6;
      operator delete(v6);
      v5 = 0;
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
    }

    v7 = v5 >> 2;
    if ((v5 >> 2) <= 4)
    {
      v7 = 4;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      v8 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    sub_1D0C39994(v4, v8);
  }

  v9 = result[1];
  v10 = v9 - v6;
  if ((v9 - v6) > 0x1F)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v6[v16];
  }

  else
  {
    v11 = &__src[v10];
    if (v9 != v6)
    {
      result = memmove(*result, __src, v10);
      v9 = v4[1];
    }

    v12 = v9;
    if (v11 != a3)
    {
      v12 = v9;
      v13 = v9;
      do
      {
        v14 = *v11;
        v11 += 8;
        *v13++ = v14;
        v12 += 8;
      }

      while (v11 != a3);
    }

    v15 = v12;
  }

  v4[1] = v15;
  return result;
}

void *cnnavigation::TAITime::TAITime(void *a1, int *a2, cnnavigation::GNSSUTCParameters *this)
{
  *a1 = 0;
  a1[1] = 0;
  if (cnnavigation::GNSSUTCParameters::IsValid(this) && *(this + 1) == 2)
  {
    v8 = *a2;
    v6.i64[0] = *(a2 + 1);
    v7.i64[0] = 0xC0EA55FA1CAC0831;
    v9 = *v6.i64 + -53935.816;
    v22[0] = 0.0;
    v22[1] = 0.0;
    CNTimeSpan::SetTimeSpan(v22, 86400 * v8 - 86400, v6, v7);
    v10 = sub_1D0B7CF88(v22, this + 6);
    v13 = 40;
    if (v10)
    {
      v13 = 64;
    }

    v14 = *(this + v13);
    v15 = *(this + 1);
    v16 = *(this + 2);
    *v17.i64 = CNTimeSpan::operator-(v22, this + 3, v11, v12);
    *v19.i64 = v9 - (v15 + v16 * (v18 + *v17.i64));
    v21 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v21, 86400 * v8 - 126316800 + v14 - 3, v19, v17);
    *a1 = v21;
  }

  else
  {
    a1[1] = 0x7FF8000000000000;
  }

  return a1;
}

void **sub_1D0C39E98(void **a1)
{
  sub_1D0C39ECC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D0C39ECC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_1D0B7CAB8(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t *sub_1D0C39F20(uint64_t **a1, uint64_t a2, uint64_t a3, __int128 **a4)
{
  v4 = *sub_1D0C3A014(a1, &v6, a2, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_1D0C3A014(uint64_t a1, uint64_t **a2, unsigned __int8 a3, int a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    do
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 56);
        v9 = *(v7 + 15);
        v10 = v9 < a4;
        if (v8 != a3)
        {
          v10 = v8 < a3;
        }

        if (!v10)
        {
          break;
        }

        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_13;
        }
      }

      v11 = v9 > a4;
      v12 = v8 == a3;
      v13 = v8 > a3;
      if (v12)
      {
        v13 = v11;
      }

      if (!v13)
      {
        break;
      }

      result = v7 + 1;
      v5 = v7[1];
    }

    while (v5);
  }

  else
  {
    v7 = result;
  }

LABEL_13:
  *a2 = v7;
  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::UpdateCurrentDayAndWeek(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  if (v2)
  {
    if (sub_1D0C35C1C(a2) && (v5 = *a2, sub_1D0C35C6C(*a2)) && *v5)
    {
      v6 = **a2;
    }

    else
    {
      if (!sub_1D0C35D78(a2))
      {
        LOBYTE(v6) = 0;
        goto LABEL_13;
      }

      v6 = *a2[3];
      if (!*a2[3])
      {
LABEL_13:
        a1[2208] = v6;
        if (sub_1D0C35D08(a2) && ((v7 = a2[1], *v7) && (v8 = v7[1], v8 < 0x5B5) || *(v7 + 1) && *v7 && (*(v7 + 2) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v8 = v7[1], v8 <= 0x5B4)))
        {
          *(a1 + 555) = v8 + 1461 * *v7 - 1461;
          a1[2216] = 1;
        }

        else
        {
          a1[2216] = 0;
        }

        return v2;
      }

      v6 += 1024;
    }

    *(a1 + 553) = v6;
    LOBYTE(v6) = 1;
    goto LABEL_13;
  }

  if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v11 = 12;
    v10 = 1;
    cnprint::CNPrinter::Print(&v11, &v10, "#gmp,UpdateCurrentDayAndWeek,not configured");
  }

  return v2;
}

uint64_t raven::GnssMeasurementPreprocessor::EstimateCoarseReceiverTaiTime(uint64_t a1, uint64_t a2, uint64_t a3, int8x16_t *a4, double a5, int8x16_t a6)
{
  v96 = 0;
  v97 = 0u;
  v98 = 0u;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v89 = 0;
  v90 = 0u;
  v91 = 0u;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v82 = 0;
  v83 = 0u;
  v84 = 0u;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v10 = raven::GnssSvDatabase::PopulateGnssUTCParametersWithGps((a1 + 984), &v96, 0.0, a6);
  v13 = raven::GnssSvDatabase::PopulateGnssUTCParametersWithGlonass((a1 + 984), &v89, v11, v12);
  v14 = raven::GnssSvDatabase::PopulateGnssUTCParametersWithGalileo((a1 + 984), &v82);
  v97 = 0uLL;
  v90 = 0uLL;
  __p = 0;
  v80 = 0;
  v81 = 0;
  v17 = *(a2 + 72);
  v16 = *(a2 + 80);
  if (v17 == v16)
  {
    v53 = 0;
    goto LABEL_114;
  }

  v66 = v14;
  v67 = 0;
  v68 = a3 + 8;
  do
  {
    v18 = *(v17 + 8);
    v19 = v18 > 9;
    v20 = (1 << v18) & 0x2BB;
    if (v19 || v20 == 0)
    {
      if ((*(*(a1 + 8) + 3808) & 1) != 0 || !*(v17 + 197))
      {
        if (!*(v17 + 197))
        {
          goto LABEL_103;
        }
      }

      else if (*(v17 + 196) == 1)
      {
        goto LABEL_103;
      }
    }

    else if ((*(v17 + 197) & 1) == 0)
    {
      goto LABEL_103;
    }

    LODWORD(v78) = 0;
    WORD2(v78) = 32512;
    v77 = 0uLL;
    v76 = 0.0;
    v75 = 0;
    sub_1D0C3ABD8(v17, *(a1 + 2304), &v76, &v75);
    if ((*v17 == 16 || *v17 == 1) && *(v17 + 8) == 1 && *(v17 + 9) == 1 && *(v17 + 12) == 1 && sub_1D0C3ACF0(v17) && *(v17 + 40) >= 0.0 && *(v17 + 48) > 0.0)
    {
      ++v67;
      if (*(a1 + 2208) != 1)
      {
        LOWORD(v72[0]) = 12;
        LOBYTE(v103[0]) = 3;
        cnprint::CNPrinter::Print(v72, v103, "#gmp,EstimateCoarseReceiverTaiTime,GPS week number is not available");
        goto LABEL_103;
      }

      LODWORD(v104) = v75 + *(a1 + 2212);
      if ((v10 & 1) == 0)
      {
        LOWORD(v72[0]) = 12;
        LOBYTE(v103[0]) = 3;
        cnprint::CNPrinter::Print(v72, v103, "#gmp,EstimateCoarseReceiverTaiTime,GPS UTC info not available");
        goto LABEL_103;
      }

      v105[0] = v76;
      cnnavigation::TAITime::TAITime(v72, &v104, &v96);
      goto LABEL_39;
    }

    if (*v17 == 8 && *(v17 + 8) == 7 && *(v17 + 9) == 1 && *(v17 + 12) == 1 && sub_1D0C3ACF0(v17) && *(v17 + 40) >= 0.0 && *(v17 + 48) > 0.0)
    {
      ++v67;
      if (*(a1 + 2208) != 1)
      {
        LOWORD(v72[0]) = 12;
        LOBYTE(v103[0]) = 3;
        cnprint::CNPrinter::Print(v72, v103, "#gmp,EstimateCoarseReceiverTaiTime,Galileo week number is not available");
        goto LABEL_103;
      }

      LODWORD(v104) = *(a1 + 2212) + v75 - 1024;
      if ((v66 & 1) == 0)
      {
        LOWORD(v72[0]) = 12;
        LOBYTE(v103[0]) = 3;
        cnprint::CNPrinter::Print(v72, v103, "#gmp,EstimateCoarseReceiverTaiTime,Galileo UTC info not available");
        goto LABEL_103;
      }

      v105[0] = v76;
      cnnavigation::TAITime::TAITime(v72, &v104, &v82);
LABEL_39:
      v77 = *v72;
      v22 = *v17;
      WORD2(v78) = *(v17 + 4);
      LODWORD(v78) = v22;
      goto LABEL_40;
    }

    if (*v17 == 2 && *(v17 + 8) == 3 && *(v17 + 9) == 1 && *(v17 + 13) == 1 && sub_1D0C3ACF0(v17) && *(v17 + 40) >= 0.0 && *(v17 + 48) > 0.0)
    {
      ++v67;
      v105[0] = 0.0;
      if (*(a1 + 2216) != 1)
      {
        LOWORD(v72[0]) = 12;
        LOBYTE(v103[0]) = 3;
        cnprint::CNPrinter::Print(v72, v103, "#gmp,EstimateCoarseReceiverTaiTime,Glonass day number is not available");
        goto LABEL_103;
      }

      LODWORD(v104) = *(a1 + 2220);
      if (!v13)
      {
        LOWORD(v72[0]) = 12;
        LOBYTE(v103[0]) = 3;
        cnprint::CNPrinter::Print(v72, v103, "#gmp,EstimateCoarseReceiverTaiTime,GLONASS UTC info not available");
        goto LABEL_103;
      }

      v103[0] = 0;
      sub_1D0C3AE34(v17, *(a1 + 2304), v105, v103);
      LODWORD(v104) = v104 + v103[0];
      cnnavigation::TAITime::TAITime(v72, &v104, &v89);
      goto LABEL_39;
    }

LABEL_40:
    if (!sub_1D0C39448(&v78))
    {
      goto LABEL_103;
    }

    v73 = 0;
    LOBYTE(v72[0]) = 0;
    v74 = -1;
    if ((raven::GnssMeasurementPreprocessor::GetCNSatIDFromGnssId(a1, &v78, v72) & 1) == 0)
    {
      LOWORD(v103[0]) = 12;
      LOBYTE(v71) = 3;
      sub_1D0D49EE8(&v78, &v104);
      if (v105[1] >= 0.0)
      {
        v27 = &v104;
      }

      else
      {
        v27 = v104;
      }

      cnprint::CNPrinter::Print(v103, &v71, "#gmp,EstimateCoarseReceiverTaiTime,could not evaluate CNSatId,SV,%s", v27);
      goto LABEL_58;
    }

    v23 = *(v17 + 8);
    v24 = 1575420000.0;
    if (v23 != 1)
    {
      v24 = 1575420000.0;
      if (v23 != 7)
      {
        if (v23 != 3)
        {
          LOWORD(v103[0]) = 12;
          LOBYTE(v71) = 4;
          sub_1D0D49EE8(&v78, &v104);
          if (v105[1] >= 0.0)
          {
            v30 = &v104;
          }

          else
          {
            v30 = v104;
          }

          cnprint::CNPrinter::Print(v103, &v71, "#gmp,EstimateCoarseReceiverTaiTime,unexpected band from SV with decoded time,SV,%s,band,%i", v30, *(v17 + 8));
          goto LABEL_67;
        }

        v25 = *(v17 + 5);
        if ((v25 - 7) < 0xFFFFFFF2)
        {
          LOWORD(v103[0]) = 12;
          LOBYTE(v71) = 4;
          sub_1D0D49EE8(&v78, &v104);
          if (v105[1] >= 0.0)
          {
            v26 = &v104;
          }

          else
          {
            v26 = v104;
          }

          cnprint::CNPrinter::Print(v103, &v71, "#gmp,EstimateCoarseReceiverTaiTime,could not determine GLONASS center frequency,SV,%s", v26);
LABEL_67:
          if (SHIBYTE(v105[1]) < 0)
          {
            operator delete(v104);
          }

          v28 = 0;
          v29 = 0;
          goto LABEL_98;
        }

        v24 = v25 * 562500.0 + 1602000000.0;
      }
    }

    v31 = sub_1D0C36A78(a3, v72);
    if (v68 == v31)
    {
      LOWORD(v103[0]) = 12;
      LOBYTE(v71) = 3;
      sub_1D0D49EE8(&v78, &v104);
      if (v105[1] >= 0.0)
      {
        v36 = &v104;
      }

      else
      {
        v36 = v104;
      }

      cnprint::CNPrinter::Print(v103, &v71, "#gmp,EstimateCoarseReceiverTaiTime,could not use SV due to lack of sat data,SV,%s", v36);
      if (SHIBYTE(v105[1]) < 0)
      {
        operator delete(v104);
      }

      v29 = 0;
      v28 = 1;
    }

    else
    {
      v32 = *(v31 + 64);
      v71 = 0.0;
      LOWORD(v104) = 0;
      memset(v105, 0, sizeof(v105));
      v106 = 0;
      v107 = 0;
      v108 = 0;
      v109 = 0;
      if ((*(*(v32 + 32) + 96))(v24))
      {
        LOWORD(v103[0]) = 12;
        v70 = 3;
        sub_1D0D49EE8(&v78, &v104);
        if (v105[1] >= 0.0)
        {
          v35 = &v104;
        }

        else
        {
          v35 = v104;
        }

        cnprint::CNPrinter::Print(v103, &v70, "#gmp,EstimateCoarseReceiverTaiTime,could not use SV because clock offset could not be evaluated,SV,%s", v35);
LABEL_58:
        if (SHIBYTE(v105[1]) < 0)
        {
          operator delete(v104);
        }

        v28 = 0;
        v29 = 1;
        goto LABEL_98;
      }

      v65 = a3;
      *v33.i64 = v71;
      v104 = 0;
      v105[0] = 0.0;
      *v37.i64 = CNTimeSpan::SetTimeSpan(&v104, 0, v33, v34);
      v39 = CNTimeSpan::operator-(&v77, &v104, v37, v38);
      v41 = v40;
      v42 = v80;
      if (v80 >= v81)
      {
        v44 = (v80 - __p) >> 4;
        v45 = v44 + 1;
        if ((v44 + 1) >> 60)
        {
          sub_1D0C5663C();
        }

        v46 = v81 - __p;
        if ((v81 - __p) >> 3 > v45)
        {
          v45 = v46 >> 3;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFF0)
        {
          v47 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v47 = v45;
        }

        if (v47)
        {
          sub_1D0BC40DC(&__p, v47);
        }

        v48 = (16 * v44);
        *v48 = v39;
        v48[1] = v41;
        v43 = 16 * v44 + 16;
        v49 = v48 - (v80 - __p);
        memcpy(v49, __p, v80 - __p);
        v50 = __p;
        __p = v49;
        v80 = v43;
        v81 = 0;
        if (v50)
        {
          operator delete(v50);
        }
      }

      else
      {
        *v80 = v39;
        *(v42 + 1) = v40;
        v43 = (v42 + 16);
      }

      v29 = 0;
      v80 = v43;
      v28 = 1;
      a3 = v65;
    }

LABEL_98:
    if (v73 < 0)
    {
      operator delete(v72[0]);
      if (v28)
      {
        goto LABEL_103;
      }
    }

    else if (v28)
    {
      goto LABEL_103;
    }

    if (!v29)
    {
      goto LABEL_115;
    }

LABEL_103:
    v17 += 200;
  }

  while (v17 != v16);
  v51 = __p;
  v52 = v80;
  v53 = v67;
  if (__p != v80)
  {
    v104 = 0;
    v105[0] = 0.0;
    v54 = __p;
    do
    {
      v55 = *v54++;
      *v72 = v55;
      v56 = CNTimeSpan::operator+(&v104, v72, v55, v15);
      v104 = v56;
      v105[0] = v57;
    }

    while (v54 != v52);
    v59 = (v52 - v51) >> 4;
    *v15.i64 = v59;
    *v58.i64 = (v57 + (v56 % v59)) / v59;
    v69 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v69, v56 / v59, v58, v15);
    v60 = v69;
    *a4 = v69;
    v72[0] = 0;
    v72[1] = 0x3FB2F1A9FBE76C8BLL;
    a4->i64[0] = CNTimeSpan::operator+(a4, v72, v60, v61);
    a4->i64[1] = v62;
    v63 = 1;
    goto LABEL_116;
  }

LABEL_114:
  LOWORD(v104) = 12;
  LOBYTE(v72[0]) = 3;
  cnprint::CNPrinter::Print(&v104, v72, "#gmp,EstimateCoarseReceiverTaiTime,could not compute time because no SVs with pertinent information were available,svs-with-time,%i", v53);
LABEL_115:
  v63 = 0;
LABEL_116:
  if (__p)
  {
    v80 = __p;
    operator delete(__p);
  }

  return v63;
}

void sub_1D0C3AB2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0C3ABD8(uint64_t result, unint64_t a2, double *a3, int *a4)
{
  v6 = result;
  if (!a2)
  {
    v12 = 0;
    v11 = *(result + 40) * 0.000000001;
    goto LABEL_15;
  }

  result = sub_1D0C3ACF0(result);
  if (result && (*(v6 + 80) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(v6 + 88) > 0.0)
  {
    v8 = *(v6 + 80) * 0.000000001;
  }

  else
  {
    result = sub_1D0C3ACF0(v6);
    v8 = 0.0;
    if (result)
    {
      v9 = *(v6 + 64) > 0.0 && (*(v6 + 56) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      v8 = 0.0;
      if (v9)
      {
        v8 = *(v6 + 56) * 0.000000001;
      }
    }
  }

  v10 = (*(v6 + 40) + a2 + a2 * v8) * 0.000000001;
  *a3 = v10;
  *a4 = 0;
  if (v10 >= 604800.0)
  {
    v11 = v10 + -604800.0;
    v12 = 1;
LABEL_15:
    *a3 = v11;
    *a4 = v12;
  }

  return result;
}

BOOL sub_1D0C3ACF0(uint64_t a1)
{
  result = sub_1D0C39448(a1);
  if (result)
  {
    v3 = *(a1 + 8);
    if ((v3 - 1) > 9)
    {
      return 0;
    }

    v4 = *(a1 + 16);
    if (v4 == -1)
    {
      return 0;
    }

    v5 = *(a1 + 24);
    if (v5 == -1)
    {
      return 0;
    }

    result = 0;
    if (v4 <= v5 && *(a1 + 32) != -1)
    {
      if (*(a1 + 192) < 0.0)
      {
        return 0;
      }

      result = 0;
      v6 = *a1;
      if (*a1 <= 7)
      {
        if (v6 != 1)
        {
          if (v6 == 2)
          {
            if (v3 != 3)
            {
              return 0;
            }
          }

          else
          {
            if (v6 != 4)
            {
              return result;
            }

            if ((v3 - 4) >= 3)
            {
              return 0;
            }
          }

          goto LABEL_31;
        }
      }

      else
      {
        if (v6 > 31)
        {
          if (v6 == 32)
          {
            if (v3 != 9)
            {
              return 0;
            }
          }

          else
          {
            if (v6 != 64)
            {
              return result;
            }

            if (v3 != 10)
            {
              return 0;
            }
          }

          goto LABEL_31;
        }

        if (v6 == 8)
        {
          v7 = (v3 - 7);
LABEL_26:
          if (v7 >= 2)
          {
            return 0;
          }

LABEL_31:
          v8 = *(a1 + 184);
          if (!v8)
          {
            return 1;
          }

          return sub_1D0C42E1C(v8);
        }

        if (v6 != 16)
        {
          return result;
        }
      }

      v7 = (v3 - 1);
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1D0C3AE34(uint64_t result, unint64_t a2, double *a3, int *a4)
{
  v6 = result;
  if (!a2)
  {
    v12 = 0;
    v11 = *(result + 40) * 0.000000001;
    goto LABEL_15;
  }

  result = sub_1D0C3ACF0(result);
  if (result && (*(v6 + 80) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(v6 + 88) > 0.0)
  {
    v8 = *(v6 + 80) * 0.000000001;
  }

  else
  {
    result = sub_1D0C3ACF0(v6);
    v8 = 0.0;
    if (result)
    {
      v9 = *(v6 + 64) > 0.0 && (*(v6 + 56) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      v8 = 0.0;
      if (v9)
      {
        v8 = *(v6 + 56) * 0.000000001;
      }
    }
  }

  v10 = (*(v6 + 40) + a2 + a2 * v8) * 0.000000001;
  *a3 = v10;
  *a4 = 0;
  if (v10 >= 86400.0)
  {
    v11 = v10 + -86400.0;
    v12 = 1;
LABEL_15:
    *a3 = v11;
    *a4 = v12;
  }

  return result;
}

BOOL raven::GnssMeasurementPreprocessor::DetermineNearestReceiverTaiTimeMillisecond(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, double a6, int8x16_t a7)
{
  v97 = *MEMORY[0x1E69E9840];
  *a5 = 0;
  if ((*a1 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      *__p = 12;
      v80[0] = 1;
      cnprint::CNPrinter::Print(__p, v80, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,not configured");
    }

    return 0;
  }

  v8 = *(a1 + 760) + *(a1 + 784);
  a7.i64[0] = 0x41E2A05F20000000;
  if (v8 > 2500000000.0)
  {
    *__p = 12;
    v80[0] = 3;
    cnprint::CNPrinter::Print(__p, v80, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,Position uncertainty is too high,var,%.3lf", v8);
    return 0;
  }

  *v80 = 0;
  v81 = 0u;
  v82 = 0u;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v73 = 0;
  v74 = 0u;
  v75 = 0u;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v66 = 0;
  v67 = 0u;
  v68 = 0u;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v51 = raven::GnssSvDatabase::PopulateGnssUTCParametersWithGps((a1 + 984), v80, 0.0, a7);
  v52 = raven::GnssSvDatabase::PopulateGnssUTCParametersWithGlonass((a1 + 984), &v73, v14, v15);
  v53 = raven::GnssSvDatabase::PopulateGnssUTCParametersWithGalileo((a1 + 984), &v66);
  v81 = 0uLL;
  v74 = 0uLL;
  memset(v65, 0, sizeof(v65));
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v17 = *(a2 + 72);
  v18 = *(a2 + 80);
  if (v17 != v18)
  {
    while (1)
    {
      v19 = *(v17 + 8);
      v20 = v19 > 9;
      v21 = (1 << v19) & 0x2BB;
      if (v20 || v21 == 0)
      {
        if ((*(*(a1 + 8) + 3808) & 1) != 0 || !*(v17 + 197))
        {
          if (!*(v17 + 197))
          {
            goto LABEL_77;
          }
        }

        else if (*(v17 + 196) == 1)
        {
          goto LABEL_77;
        }
      }

      else if ((*(v17 + 197) & 1) == 0)
      {
        goto LABEL_77;
      }

      LODWORD(v61) = 0;
      WORD2(v61) = 32512;
      v60 = 0uLL;
      v23 = *(v17 + 192);
      if ((v23 & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        goto LABEL_77;
      }

      v59 = 0;
      v58 = 0;
      sub_1D0C3ABD8(v17, *(a1 + 2304), &v59, &v58);
      if ((*v17 == 16 || *v17 == 1) && *(v17 + 8) == 1 && *(v17 + 9) == 1 && *(v17 + 12) == 1 && sub_1D0C3ACF0(v17) && *(v17 + 40) >= 0.0)
      {
        v42 = *(v17 + 48);
        if (v42 > 0.0 && v42 < 1955.03421)
        {
          break;
        }
      }

      if (*v17 == 8 && *(v17 + 8) == 7 && *(v17 + 9) == 1 && *(v17 + 12) == 1 && sub_1D0C3ACF0(v17) && *(v17 + 40) >= 0.0)
      {
        v32 = *(v17 + 48);
        if (v32 > 0.0 && v32 < 1955.03421)
        {
          if (*(v17 + 9) == 1)
          {
            if (*(v17 + 11) == 1)
            {
              v24 = *(v17 + 12);
            }

            else
            {
              v24 = 0;
            }

            if (*(v17 + 10) == 1)
            {
              v24 |= *(v17 + 12);
            }
          }

          else
          {
            v24 = 0;
          }

          if (*(a1 + 2208) != 1)
          {
            LOWORD(v94) = 12;
            LOBYTE(v87[0]) = 3;
            cnprint::CNPrinter::Print(&v94, v87, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,Galileo week number is not available");
            goto LABEL_77;
          }

          *__p = *(a1 + 2212) + v58 - 1024;
          if ((v53 & 1) == 0)
          {
            LOWORD(v94) = 12;
            LOBYTE(v87[0]) = 3;
            cnprint::CNPrinter::Print(&v94, v87, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,Galileo UTC info not available");
            goto LABEL_77;
          }

          *&__p[8] = v59;
          cnnavigation::TAITime::TAITime(&v94, __p, &v66);
LABEL_100:
          v60 = v94;
          v46 = *v17;
          WORD2(v61) = *(v17 + 4);
          LODWORD(v61) = v46;
          v25 = 1575420000.0;
          goto LABEL_35;
        }
      }

      v24 = 0;
      v25 = 0.0;
      if (*v17 == 2 && *(v17 + 8) == 3)
      {
        if (*(v17 + 9) == 1 && *(v17 + 13) == 1 && sub_1D0C3ACF0(v17) && *(v17 + 40) >= 0.0)
        {
          v24 = 0;
          v33 = *(v17 + 48);
          if (v33 > 0.0 && v33 < 3913.89432)
          {
            if (*(v17 + 9) == 1 && *(v17 + 10) == 1 && *(v17 + 11) == 1)
            {
              v24 = *(v17 + 13);
            }

            else
            {
              v24 = 0;
            }

            *(&v94 + 1) = 0;
            if (*(a1 + 2216) != 1)
            {
              *__p = 12;
              LOBYTE(v87[0]) = 3;
              cnprint::CNPrinter::Print(__p, v87, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,Glonass day number is not available");
              goto LABEL_77;
            }

            LODWORD(v94) = *(a1 + 2220);
            if (!v52)
            {
              *__p = 12;
              LOBYTE(v87[0]) = 3;
              cnprint::CNPrinter::Print(__p, v87, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,GLONASS UTC info not available");
              goto LABEL_77;
            }

            LODWORD(v87[0]) = 0;
            sub_1D0C3AE34(v17, *(a1 + 2304), &v94 + 1, v87);
            LODWORD(v94) = v94 + LODWORD(v87[0]);
            cnnavigation::TAITime::TAITime(__p, &v94, &v73);
            v60 = *__p;
            v44 = *(v17 + 5);
            if ((v44 - 7) < 0xFFFFFFF2)
            {
              LOWORD(v55[0]) = 12;
              LOBYTE(v57) = 4;
              sub_1D0D49EE8(v17, __p);
              v45 = __p;
              if (__p[23] < 0)
              {
                v45 = *__p;
              }

              cnprint::CNPrinter::Print(v55, &v57, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,could not determine GLONASS center frequency,SV,%s", v45);
              if ((__p[23] & 0x80000000) == 0)
              {
                goto LABEL_77;
              }

              v43 = *__p;
              goto LABEL_76;
            }

            v25 = v44 * 562500.0 + 1602000000.0;
            v47 = *v17;
            WORD2(v61) = *(v17 + 4);
            LODWORD(v61) = v47;
          }
        }

        else
        {
          v24 = 0;
        }
      }

LABEL_35:
      if (!sub_1D0C39448(&v61))
      {
        goto LABEL_77;
      }

      v95 = 0;
      LOBYTE(v94) = 0;
      v96 = -1;
      if ((raven::GnssMeasurementPreprocessor::GetCNSatIDFromGnssId(a1, &v61, &v94) & 1) == 0 || a3 + 8 == sub_1D0C36A78(a3, &v94))
      {
        goto LABEL_74;
      }

      v26 = *sub_1D0C3A014(a3, __p, HIBYTE(v95), v96);
      if (!v26)
      {
        sub_1D0C543A8("map::at:  key not found");
      }

      v57 = 0.0;
      if (raven::GnssMeasurementPreprocessor::CalculateApproximateTimeOfFlight(a1, &v60, *(v26 + 64), &v57))
      {
        v56 = 0.0;
        v27 = *(v26 + 64);
        *__p = 0;
        *&__p[8] = 0u;
        v89 = 0u;
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = 0;
        if (!(*(*(v27 + 32) + 96))(v25))
        {
          *v28.i64 = v56;
          v87[0] = 0;
          v87[1] = 0;
          *v34.i64 = CNTimeSpan::SetTimeSpan(v87, 0, v28, v29);
          *__p = CNTimeSpan::operator-(&v60, v87, v34, v35);
          *&__p[8] = v36;
          *v37.i64 = v57;
          v55[0] = 0;
          v55[1] = 0;
          *v39.i64 = CNTimeSpan::SetTimeSpan(v55, 0, v37, v38);
          *__p = CNTimeSpan::operator+(__p, v55, v39, v40);
          *&__p[8] = v41;
          *&__p[16] = v23;
          if (v24)
          {
            sub_1D0C3BF24(v65, __p);
          }

          else
          {
            sub_1D0C3BF24(&v62, __p);
          }

          goto LABEL_74;
        }

        LOWORD(v87[0]) = 12;
        LOBYTE(v55[0]) = 3;
        sub_1D0D49EE8(&v61, __p);
        v30 = __p;
        if (__p[23] < 0)
        {
          v30 = *__p;
        }

        cnprint::CNPrinter::Print(v87, v55, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,could not eval clock offset,SV,%s", v30);
      }

      else
      {
        LOWORD(v87[0]) = 12;
        LOBYTE(v55[0]) = 3;
        sub_1D0D49EE8(&v61, __p);
        v31 = __p;
        if (__p[23] < 0)
        {
          v31 = *__p;
        }

        cnprint::CNPrinter::Print(v87, v55, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,could not calculate time of flight,SV,%s", v31);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

LABEL_74:
      if (v95 < 0)
      {
        v43 = v94;
LABEL_76:
        operator delete(v43);
      }

LABEL_77:
      v17 += 200;
      if (v17 == v18)
      {
        goto LABEL_106;
      }
    }

    if (*(v17 + 9) == 1 && *(v17 + 10) == 1)
    {
      v24 = *(v17 + 12);
    }

    else
    {
      v24 = 0;
    }

    if (*(a1 + 2208) != 1)
    {
      LOWORD(v94) = 12;
      LOBYTE(v87[0]) = 3;
      cnprint::CNPrinter::Print(&v94, v87, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,GPS week number is not available");
      goto LABEL_77;
    }

    *__p = v58 + *(a1 + 2212);
    if ((v51 & 1) == 0)
    {
      LOWORD(v94) = 12;
      LOBYTE(v87[0]) = 3;
      cnprint::CNPrinter::Print(&v94, v87, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,GPS UTC info not available");
      goto LABEL_77;
    }

    *&__p[8] = v59;
    cnnavigation::TAITime::TAITime(&v94, __p, v80);
    goto LABEL_100;
  }

LABEL_106:
  raven::GnssMeasurementPreprocessor::GetTimeEstimateWithBitSync(v65, __p, v16);
  if (v89 == 1)
  {
    *a5 = __p[16];
    *a4 = *__p;
    v9 = 1;
    v48 = v62;
  }

  else
  {
    v48 = v62;
    v9 = v63 != v62;
    if (v63 == v62)
    {
      LOWORD(v87[0]) = 12;
      LOBYTE(v60) = 3;
      cnprint::CNPrinter::Print(v87, &v60, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,could not compute time");
    }

    else
    {
      v49 = *v62;
      *&v94 = *(v62 + 1);
      *(&v94 + 7) = *(v62 + 1);
      v50 = *(&v94 + 7);
      *a5 = 0;
      *a4 = v49;
      *(a4 + 1) = v94;
      *(a4 + 8) = v50;
      LOWORD(v87[0]) = 12;
      LOBYTE(v60) = 2;
      cnprint::CNPrinter::Print(v87, &v60, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,using receiver time without bit edge confirmation");
    }
  }

  if (v48)
  {
    operator delete(v48);
  }

  if (v65[0])
  {
    operator delete(v65[0]);
  }

  return v9;
}

void sub_1D0C3B958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a64 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

BOOL raven::GnssMeasurementPreprocessor::CalculateApproximateTimeOfFlight(cnprint::CNPrinter *a1, uint64_t a2, uint64_t a3, double *a4)
{
  if (*a1)
  {
    v11 = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v7 = (*(*(a3 + 32) + 56))(a3 + 32, a2, &v11, &v18, v22, v21);
    v8 = v7 == 0;
    if (v7)
    {
      *v22 = 12;
      v21[0] = 3;
      v9 = sub_1D0BCFAB8(a3);
      cnprint::CNPrinter::Print(v22, v21, "#gmp,Could not position the satellite for approximiate time of flight,SV,%s", v9);
    }

    else
    {
      *a4 = sqrt((v19 - *(a1 + 103)) * (v19 - *(a1 + 103)) + (v18 - *(a1 + 102)) * (v18 - *(a1 + 102)) + (v20 - *(a1 + 104)) * (v20 - *(a1 + 104))) / 299792458.0;
    }
  }

  else
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v11 = 12;
      v22[0] = 1;
      cnprint::CNPrinter::Print(&v11, v22, "#gmp,CalculateApproximateTimeOfFlight,not configured");
    }

    return 0;
  }

  return v8;
}

void sub_1D0C3BB74(uint64_t a1, uint64_t a2, double a3, __n128 a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v10 = a3;
  v24 = a3;
  v11 = 1.0;
  if (a3 <= 0.0)
  {
    if (floor(a3) == a3)
    {
      sub_1D0C50B00(qword_1EC5FB3F0, "Evaluation of tgamma at a negative integer %1%.", &v24);
    }

    if (a3 <= -20.0)
    {
      sub_1D0C3BB74(a1, a2, -a3, a4, a5, a6, a7, a8, a9, a10);
      v21 = fabs(v20 * sub_1D0D28EC0(v10));
      if (v21 < 1.0 && v21 * 1.79769313e308 < 3.14159265)
      {
        sub_1D0D28B48(qword_1EC5FB3F0, "Result of tgamma is too large to represent.");
      }

      return;
    }

    if (a3 < 0.0)
    {
      do
      {
        v11 = v11 / v10;
        v10 = v10 + 1.0;
      }

      while (v10 < 0.0);
    }

    v24 = v10;
  }

  v12 = floor(v10);
  if (v10 < 170.0 && v12 == v10)
  {
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v25 = v10;
      sub_1D0D2921C("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v25, v12);
    }

    v18 = ceil(v10);
    if (v10 < 0.0)
    {
      v12 = v18;
    }

    if (v12 > 2147483650.0 || v12 < -2147483650.0)
    {
      v25 = v10;
      sub_1D0D2921C("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v25);
    }
  }

  else
  {
    if (v10 >= 0.0000000149011612)
    {
      v23 = v11 * sub_1D0BEF9DC(dbl_1D0E7F168, dword_1D0E7F1D0, &v24, 0.0000000149011612, 170.0, a5, a6, a7, a8, a9, a10);
      v14 = v24;
      v15 = v24 + 6.02468004 + -0.5;
      v16 = v14 * log(v15);
      if (v16 <= 709.0)
      {
        pow(v15, v14 + -0.5);
        exp(v15);
        return;
      }

      if (v16 * 0.5 <= 709.0)
      {
        v22 = pow(v15, v14 * 0.5 + -0.25);
        if (1.79769313e308 / v22 >= v23 * (v22 / exp(v15)))
        {
          return;
        }

        v17 = qword_1EC5FB3F0;
      }

      else
      {
        v17 = qword_1EC5FB3F0;
      }

      sub_1D0D28B48(v17, "Result of tgamma is too large to represent.");
    }

    if (v10 < COERCE_DOUBLE(0x4000000000000))
    {
      sub_1D0D28B48(qword_1EC5FB3F0, "Overflow Error");
    }
  }
}

void sub_1D0C3BF24(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
    if (v9 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1D0C5663C();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
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
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    v12 = 8 * (v8 >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = v12 + 24;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

void *raven::GnssMeasurementPreprocessor::GetTimeEstimateWithBitSync@<X0>(void *result@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q1>)
{
  v3 = result[1];
  v4 = *result;
  if (*result == v3)
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    return result;
  }

  v30 = result;
  v5 = 0uLL;
  *__p = 0u;
  v35 = 0u;
  v36 = 1065353216;
  v6 = v4 + 3;
  v7 = v4;
  if (v4 + 3 != v3)
  {
    v7 = v4;
    do
    {
      v5.i32[0] = *(v7 + 4);
      a3.i32[0] = *(v6 + 4);
      if (*v5.i32 < *a3.i32)
      {
        v7 = v6;
      }

      v6 += 3;
    }

    while (v6 != v3);
  }

  do
  {
    v8 = CNTimeSpan::operator-(v4, v7, v5, a3);
    *v5.i64 = (v10 + v8) * 1000.0;
    *a3.i64 = fabs(*v5.i64);
    if (*a3.i64 > 10.0)
    {
      goto LABEL_26;
    }

    v11 = llround(*v5.i64);
    if (!__p[1])
    {
      goto LABEL_25;
    }

    *v5.i8 = vcnt_s8(__p[1]);
    v5.i16[0] = vaddlv_u8(*v5.i8);
    if (v5.u32[0] > 1uLL)
    {
      v12 = v11;
      if (__p[1] <= v11)
      {
        v12 = v11 % __p[1];
      }
    }

    else
    {
      v12 = (__p[1] - 1) & v11;
    }

    v13 = *(__p[0] + v12);
    if (!v13 || (v14 = *v13) == 0)
    {
LABEL_25:
      operator new();
    }

    v9 = __p[1] - 1;
    while (1)
    {
      v15 = v14[1];
      if (v15 == v11)
      {
        break;
      }

      if (v5.u32[0] > 1uLL)
      {
        if (v15 >= __p[1])
        {
          v15 %= __p[1];
        }
      }

      else
      {
        v15 &= v9;
      }

      if (v15 != v12)
      {
        goto LABEL_25;
      }

LABEL_24:
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_25;
      }
    }

    if (*(v14 + 4) != v11)
    {
      goto LABEL_24;
    }

    ++v14[3];
LABEL_26:
    v4 += 3;
  }

  while (v4 != v3);
  if (!*(&v35 + 1))
  {
    LOWORD(v32[0]) = 12;
    v33 = 4;
    cnprint::CNPrinter::Print(v32, &v33, "#gmp,Unexpected empty ms_offset_map");
LABEL_48:
    v29 = 0;
    v27 = a2;
    *a2 = 0;
    goto LABEL_49;
  }

  v16 = v35;
  if (!v35)
  {
    LOWORD(v32[0]) = 12;
    v33 = 4;
    cnprint::CNPrinter::Print(v32, &v33, "#gmp,Unexpected empty opt_consensus");
    goto LABEL_48;
  }

  v17 = 0;
  v18 = 0;
  do
  {
    if (v17)
    {
      if (v16[3] > v9)
      {
        v18 = *(v16 + 4);
        v9 = v16[3];
      }
    }

    else
    {
      v18 = *(v16 + 4);
      v9 = v16[3];
    }

    v16 = *v16;
    v17 = 1;
  }

  while (v16);
  a3.i64[0] = 0x3F50624DD2F1A9FCLL;
  *v5.i64 = v18 * 0.001;
  v19 = 0xAAAAAAAAAAAAAAABLL * ((v30[1] - *v30) >> 3);
  v20 = 5 * v9 >= 0xAAAAAAAAAAAAAAACLL * ((v30[1] - *v30) >> 3);
  v22 = v19 > 2 && v9 > 2;
  if (v19 <= 4)
  {
    v23 = v22;
  }

  else
  {
    v23 = v20;
  }

  v32[0] = 0;
  v32[1] = 0;
  *v24.i64 = CNTimeSpan::SetTimeSpan(v32, 0, v5, a3);
  v26 = CNTimeSpan::operator+(v7, v32, v24, v25);
  v27 = a2;
  *a2 = v26;
  *(a2 + 8) = v28;
  *(a2 + 16) = v23;
  v29 = 1;
LABEL_49:
  *(v27 + 24) = v29;
  return sub_1D0BCB594(__p);
}

void sub_1D0C3C63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1D0BCB594(va);
  _Unwind_Resume(a1);
}

uint64_t raven::GnssMeasurementPreprocessor::ComputeSvElevAzimLosSpeed(unsigned __int8 *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v16 = *a1;
  if (v16)
  {
    v4 = *a2;
    v5 = a2[1];
    if (*a2 != v5)
    {
      do
      {
        v8 = *v4;
        if (*v4)
        {
          v20 = 0;
          v21 = 0u;
          v22 = 0u;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          if (!(*(*(v8 + 32) + 56))(v8 + 32, a3, &v20, v19, v18, &v28))
          {
            v28 = *(a1 + 51);
            v29 = *(a1 + 104);
            if (!cnnavigation::SatElAz(&v28, v19, 1, &v27, 0, &v20))
            {
              *(v8 + 264) = v27;
              if (*(v8 + 288) == 1)
              {
                *(v8 + 288) = 0;
              }

              if (a4)
              {
                v9 = 0;
                v10 = 0.0;
                v11 = 0.0;
                do
                {
                  v12 = *&v19[v9] - *(&v28 + v9);
                  v11 = v11 + v12 * *&v18[v9];
                  v10 = v10 + v12 * v12;
                  v9 += 8;
                }

                while (v9 != 24);
                if (fabs(v10) >= 2.22044605e-16)
                {
                  *(v8 + 280) = v11 / sqrt(v10);
                  *(v8 + 288) = 1;
                }

                else
                {
                  v20 = 12;
                  v17 = 4;
                  v13 = sub_1D0BCFAB8(v8);
                  cnprint::CNPrinter::Print(&v20, &v17, "#gmp,Computation of range to satellite %s unexpectedly resulted in zero", v13);
                }
              }
            }
          }
        }

        v4 += 2;
      }

      while (v4 != v5);
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v20 = 12;
    LOBYTE(v28) = 1;
    cnprint::CNPrinter::Print(&v20, &v28, "#gmp,ComputeSvElevAzimLosSpeed,not configured");
  }

  return v16;
}

uint64_t cnnavigation::SatElAz(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = a5;
  v83[3] = *MEMORY[0x1E69E9840];
  result = cnnavigation::ECEFToLLA(a1, a3, v83, a5 != 0, &v78);
  if (!result)
  {
    v12 = v83[1];
    v13 = __sincos_stret(v83[0]);
    v14 = __sincos_stret(v12);
    v15 = *a2 - *a1;
    v16 = *(a2 + 8) - *(a1 + 8);
    v17 = *(a2 + 16) - *(a1 + 16);
    v18 = sqrt(v16 * v16 + v15 * v15 + v17 * v17);
    if (v18 <= 0.0)
    {
      return 0xFFFFFFFFLL;
    }

    v19.f64[0] = v14.__cosval;
    v19.f64[1] = v14.__sinval;
    v20 = vmulq_n_f64(v19, v13.__cosval);
    v21 = v15 / v18;
    v22 = v16 / v18;
    v23 = v17 / v18;
    v24 = vmuld_lane_f64(v22, v20, 1) + v20.f64[0] * (v15 / v18) + v13.__sinval * (v17 / v18);
    if (vabdd_f64(1.0, fabs(v24)) <= 0.00000001)
    {
      _NF = v24 < 0.0;
      if (v24 <= 0.0)
      {
        v74 = -1.57079633;
        if (!_NF)
        {
          v74 = 0.0;
        }
      }

      else
      {
        v74 = 1.57079633;
      }

      *a4 = v74;
      *(a4 + 8) = 0;
      if (v7)
      {
        result = 0;
        *(a6 + 64) = 0u;
        *(a6 + 80) = 0u;
        *(a6 + 32) = 0u;
        *(a6 + 48) = 0u;
        *a6 = 0u;
        *(a6 + 16) = 0u;
        return result;
      }
    }

    else
    {
      v76 = v20;
      *&v77 = v18;
      v25 = v13.__sinval * v14.__sinval;
      v26 = v13.__sinval * v14.__cosval;
      v75 = v24;
      v27 = v14.__cosval * v22 + -v14.__sinval * v21 + v23 * 0.0;
      v28 = -(v13.__sinval * v14.__sinval * v22) - v13.__sinval * v14.__cosval * v21 + v13.__cosval * v23;
      *a4 = 1.57079633 - acos(v24);
      v29 = atan2(v27, v28);
      if (v29 < 0.0)
      {
        v29 = v29 + 6.28318531;
      }

      *(a4 + 8) = v29;
      if (v7)
      {
        result = 0;
        v30 = *a2 - *a1;
        _D18 = -(v30 * v26);
        v32 = -(v30 * v76.f64[1]);
        v33 = vsubq_f64(*(a2 + 8), *(a1 + 8));
        _D21 = -(v33.f64[0] * v25);
        v35 = vmulq_f64(v76, v33).f64[0];
        v36 = v78 * _D18 - v13.__cosval * v14.__cosval + v32 * v80 + _D21 * v78 + v35 * v80;
        _V5.D[1] = v79.f64[1];
        v38.f64[0] = v32 * v81 + _D18 * v79.f64[0] - v13.__cosval * v14.__sinval + _D21 * v79.f64[0] + v35 * v81;
        __asm
        {
          FMLA            D20, D18, V5.D[1]
          FMLA            D20, D21, V5.D[1]
        }

        v44 = _D20 + v35 * v82;
        v45 = -(v30 * v14.__cosval);
        v46 = -(v33.f64[0] * v14.__sinval);
        v47 = v14.__sinval + v45 * v80 + v46 * v80;
        v48 = v46 * v81 - (v14.__cosval - v45 * v81);
        v49 = v46 * v82 + v45 * v82;
        _D22 = -(v30 * v76.f64[0]);
        _D7 = -(v33.f64[0] * v76.f64[1]);
        v52 = -(v33.f64[0] * v26);
        v53 = v26 + _D22 * v78 + v25 * v30 * v80 + _D7 * v78 + v52 * v80;
        v54 = v25 * v30 * v81 + _D22 * v79.f64[0] + v13.__sinval * v14.__sinval + _D7 * v79.f64[0] + v52 * v81;
        __asm
        {
          FMLA            D23, D22, V5.D[1]
          FMLA            D23, D7, V5.D[1]
        }

        v57 = v30 / *&v77;
        v38.f64[1] = v44 - v13.__sinval;
        v58 = vmuld_lane_f64(v13.__cosval, v33, 1);
        v59 = v36 + v58 * v78;
        v60 = vmlaq_n_f64(v38, v79, v58);
        _D7 = -(v33.f64[1] * v13.__sinval);
        v62 = v53 + _D7 * v78;
        v63 = v54 + _D7 * v79.f64[0];
        __asm { FMLA            D4, D7, V5.D[1] }

        v65 = vdupq_lane_s64(v77, 0);
        v66 = vdivq_f64(v33, v65);
        v67 = v13.__sinval / *&v77 - vmuld_lane_f64(v75, v66, 1) / *&v77;
        v68 = v75 * v57 / *&v77 + v59 / *&v77;
        v69 = 1.0 / sqrt(1.0 - v75 * v75);
        *a6 = v69 * v68;
        *(a6 + 8) = vmulq_n_f64(vaddq_f64(vdivq_f64(vmulq_n_f64(v66, v75), v65), vdivq_f64(v60, v65)), v69);
        v70 = vdupq_lane_s64(*&v66.f64[0], 0);
        v70.f64[0] = v57;
        *(a6 + 24) = vmulq_n_f64(vaddq_f64(vdivq_f64(v76, v65), vdivq_f64(vmulq_n_f64(v70, -v75), v65)), v69);
        v60.f64[0] = v28 * v48 - v27 * v63;
        v71.f64[0] = v25 * v27 + v28 * v14.__cosval;
        v72 = 1.0 / (v28 * v28 + v27 * v27);
        *(a6 + 40) = v69 * v67;
        *(a6 + 48) = v72 * (v28 * v47 - v27 * v62) / *&v77;
        *(a6 + 56) = v72 * v60.f64[0] / *&v77;
        *(a6 + 64) = v72 * (v28 * v49 - v27 * _D4) / *&v77;
        *(a6 + 72) = (v26 * v27 + v28 * -v14.__sinval) * v72 / *&v77;
        v71.f64[1] = -(v27 * v13.__cosval);
        *(a6 + 80) = vdivq_f64(vmulq_n_f64(v71, v72), v65);
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::PopulateGnssMeasurements(uint64_t a1, uint64_t *a2, cnnavigation::TAITime *a3, uint64_t a4, __int128 *a5, uint64_t a6, char a7, __int128 *a8, int8x16_t a9, int8x16_t a10)
{
  if ((*a1 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v79[0]) = 1;
      cnprint::CNPrinter::Print(__p, v79, "#gmp,PopulateGnssMeasurements,not configured");
    }

    return 0;
  }

  v17 = *a3;
  a10.i64[0] = 0x3F50624DD2F1A9FCLL;
  *a9.i64 = round(*(a3 + 1) / 0.001) * 0.001;
  __p[1] = 0;
  __p[0] = 0;
  CNTimeSpan::SetTimeSpan(__p, v17, a9, a10);
  v117 = *__p;
  v76 = a8;
  *a8 = *__p;
  LOWORD(__p[0]) = 0;
  memset(&__p[1], 0, 36);
  v82 = 0uLL;
  LODWORD(v83) = 0;
  v18 = cnnavigation::TAITime::ToGPSTime(a3, __p);
  LOWORD(__p[0]) = 0;
  memset(&__p[1], 0, 36);
  v82 = 0uLL;
  LODWORD(v83) = 0;
  v74 = cnnavigation::TAITime::ToGalileoTime(a3, __p);
  LOWORD(__p[0]) = 0;
  memset(&__p[1], 0, 36);
  v82 = 0uLL;
  LODWORD(v83) = 0;
  v75 = cnnavigation::TAITime::ToBeiDouTime(a3, __p);
  LOWORD(__p[0]) = 0;
  memset(&__p[1], 0, 36);
  v82 = 0uLL;
  LODWORD(v83) = 0;
  v73 = cnnavigation::TAITime::ToNavicTime(a3, __p);
  v110 = 0;
  v111 = 0u;
  v112 = 0u;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v20 = raven::GnssSvDatabase::PopulateGnssUTCParametersWithGlonass((a1 + 984), &v110, 0.0, v19);
  v108 = 1;
  v109 = 0;
  if (v20)
  {
    v111 = 0uLL;
    if (cnnavigation::TAITime::ToGLONASSTime(a3, &v110, &v108))
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v79[0]) = 4;
      cnprint::CNPrinter::Print(__p, v79, "#gmp,Cannot convert receiver time to glonass time");
      return 0;
    }
  }

  v22 = *(a1 + 888);
  v72 = a7;
  v70 = v18;
  v71 = a6;
  v69 = v20;
  if (v22 >= 2)
  {
    *(a1 + 976) = v22;
  }

  else
  {
    *(a1 + 888) = *(a1 + 976);
  }

  v24 = *a2;
  v23 = a2[1];
  v21 = 1;
  if (v24 != v23)
  {
    v68 = vdupq_n_s64(0x7FF8000000000000uLL);
    while (1)
    {
      v25 = *(v24 + 8);
      v26 = v25 > 9;
      v27 = (1 << v25) & 0x2BB;
      if (v26 || v27 == 0)
      {
        if ((*(*(a1 + 8) + 3808) & 1) != 0 || !*(v24 + 197))
        {
          if (*(v24 + 197))
          {
LABEL_18:
            v106 = 0;
            LOBYTE(v105[0]) = 0;
            v107 = -1;
            if (raven::GnssMeasurementPreprocessor::GetCNSatIDFromGnssId(a1, v24, v105))
            {
              if (HIBYTE(v106) == 4 && (v107 <= 0x3F && ((1 << v107) & 0xF80000000000003ELL) != 0 || v107 - 1 >= 0x3F))
              {
                LOWORD(v79[0]) = 12;
                v78.i8[0] = 3;
                sub_1D0D49EE8(v24, __p);
                v29 = __p;
                if (SHIBYTE(__p[2]) < 0)
                {
                  v29 = __p[0];
                }

                cnprint::CNPrinter::Print(v79, &v78, "#gmp,Not forming measurement based on svid,SV,%s", v29);
              }

              else
              {
                v32 = sub_1D0C36A78(a4, v105);
                if (a4 + 8 != v32)
                {
                  v33 = *(v32 + 64);
                  v104 = 0;
                  v103 = 0;
                  sub_1D0C3ABD8(v24, *(a1 + 2304), &v104, &v103);
                  v34 = sub_1D0C36A78(a1 + 984, v105);
                  if (a1 + 992 == v34)
                  {
                    LOWORD(v79[0]) = 12;
                    v78.i8[0] = 2;
                    sub_1D0D49EE8(v24, __p);
                    v42 = __p;
                    if (SHIBYTE(__p[2]) < 0)
                    {
                      v42 = __p[0];
                    }

                    cnprint::CNPrinter::Print(v79, &v78, "#gmp,Not forming measurement because svinfo is not in db,SV,%s", v42);
                    goto LABEL_87;
                  }

                  v35 = *(v24 + 8);
                  if (v35 <= 9 && ((1 << v35) & 0x2BB) != 0)
                  {
                    v36 = raven::GnssSvDatabase::AggregateHealthL1((v34 + 64));
                  }

                  else
                  {
                    v36 = raven::GnssSvDatabase::AggregateHealthL5((v34 + 64));
                  }

                  v39 = v36;
                  if (v36 != 1)
                  {
                    if (cnprint::CNPrinter::GetLogLevel(v36) > 1)
                    {
                      goto LABEL_89;
                    }

                    LOWORD(v79[0]) = 12;
                    v78.i8[0] = 1;
                    v43 = *(v24 + 8);
                    sub_1D0D49EE8(v24, __p);
                    v44 = __p;
                    if (SHIBYTE(__p[2]) < 0)
                    {
                      v44 = __p[0];
                    }

                    cnprint::CNPrinter::Print(v79, &v78, "#gmp,Not forming measurement based on health,%d,%d,SV,%s", v43, v39, v44);
                    goto LABEL_87;
                  }

                  if (v35 > 4)
                  {
                    if (v35 <= 6)
                    {
                      if (v35 != 5)
                      {
                        LODWORD(v79[0]) = v103 + v75;
                        v79[1] = v104;
                        *&v83 = 0;
                        v82 = 0u;
                        memset(__p, 0, sizeof(__p));
                        cnnavigation::TAITime::TAITime(&v78, v79, __p);
                        goto LABEL_80;
                      }

                      LODWORD(v79[0]) = v103 + v75;
                      v79[1] = v104;
                      *&v83 = 0;
                      v82 = 0u;
                      memset(__p, 0, sizeof(__p));
                      cnnavigation::TAITime::TAITime(&v78, v79, __p);
                    }

                    else
                    {
                      if (v35 != 7)
                      {
                        if (v35 != 8)
                        {
                          if (v35 == 10)
                          {
                            LODWORD(v79[0]) = v103 + v73;
                            v79[1] = v104;
                            *&v83 = 0;
                            v82 = 0u;
                            memset(__p, 0, sizeof(__p));
                            cnnavigation::TAITime::TAITime(&v78, v79, __p);
                            goto LABEL_80;
                          }

LABEL_89:
                          if (v106 < 0)
                          {
                            operator delete(v105[0]);
                          }

                          goto LABEL_91;
                        }

                        LODWORD(v79[0]) = v103 + v74;
                        v79[1] = v104;
                        *&v83 = 0;
                        v82 = 0u;
                        memset(__p, 0, sizeof(__p));
                        cnnavigation::TAITime::TAITime(&v78, v79, __p);
LABEL_80:
                        v45 = v78;
LABEL_81:
                        v102 = v45;
                        v46 = 1176450000.0;
LABEL_82:
                        v79[0] = 1;
                        v79[1] = 0x3FB99999999999A0;
                        __p[0] = CNTimeSpan::operator-(a3, v79, v45, v40);
                        __p[1] = v48;
                        if (!sub_1D0B7C8AC(__p, (v33 + 72)))
                        {
                          v101[0] = 0;
                          v101[1] = 0x3FC999999999999ALL;
                          v78.i64[0] = CNTimeSpan::operator+(a3, v101, v49, v50);
                          v78.i64[1] = v51;
                          if (!sub_1D0B7CF88(v78.i64, (v33 + 88)))
                          {
                            v54 = *(a1 + 8);
                            v55 = *(v24 + 8);
                            v56 = 0.0;
                            if (v55 <= 0xA && ((1 << v55) & 0x544) != 0)
                            {
                              v56 = *(v54 + 584);
                            }

                            if (*(v54 + 591))
                            {
                              v57 = *(v24 + 196);
                              v58 = *(v24 + 192);
                              if (v58 < v56 && (LODWORD(v58) & 0x7FFFFFFFu) < 0x7F800000)
                              {
                                v57 = 1;
                              }
                            }

                            else
                            {
                              v57 = 0;
                            }

                            v82 = 0u;
                            v83 = 0u;
                            memset(__p, 0, sizeof(__p));
                            v84 = 0;
                            v85 = 0x7FF8000000000000;
                            v86 = 0;
                            v87 = 0;
                            v88 = 0x7FF8000000000000;
                            v90 = v68;
                            v91 = v68;
                            v92 = v68;
                            v89 = 2143289344;
                            v93 = 2143289344;
                            v94 = 0;
                            v95 = 0;
                            v96 = 0;
                            v97 = 0;
                            v98 = 0;
                            v99 = 1;
                            v100 = v68;
                            if (raven::GnssMeasurementPreprocessor::FormPseudorange(a1, v24, v57, a3, &v117, &v102, v33, __p, v46, v72))
                            {
                              raven::GnssMeasurementPreprocessor::CheckObservableAndAddToVector(a1, __p, a5, v76, v33);
                            }

                            else
                            {
                              v78.i16[0] = 12;
                              LOBYTE(v101[0]) = 2;
                              sub_1D0D49EE8(v24, v79);
                              v59 = v79;
                              if (v80 < 0)
                              {
                                v59 = v79[0];
                              }

                              cnprint::CNPrinter::Print(&v78, v101, "#gmp,Could not form pseudorange,SV,%s", v59);
                              if (v80 < 0)
                              {
                                operator delete(v79[0]);
                              }
                            }

                            raven::GnssMeasurementPreprocessor::FormInstantaneousDoppler(a1, v24, v57, v33, __p, v46);
                            raven::GnssMeasurementPreprocessor::FormAveragedDoppler(a1, v24, v57, v71, v33, v79, v46);
                            raven::GnssMeasurementPreprocessor::FormAveragedDopplerFromPhaseTracking(a1, v24, v105, v57, v71, v33, &v78, v46);
                            raven::GnssMeasurementPreprocessor::SelectAndPopulateDoppler(a1, v24, __p, v79, &v78, a5, v76, v33);
                            v60 = *(v33 + 328);
                            for (i = *(v33 + 336); v60 != i; v60 += 208)
                            {
                              v62 = a5[1];
                              *v60 = *a5;
                              *(v60 + 16) = v62;
                              v63 = a5[2];
                              v64 = a5[3];
                              v65 = a5[5];
                              *(v60 + 64) = a5[4];
                              *(v60 + 80) = v65;
                              *(v60 + 32) = v63;
                              *(v60 + 48) = v64;
                              *(v60 + 48) = *v76;
                              *(v60 + 40) = 1;
                            }

                            goto LABEL_89;
                          }
                        }

                        LOWORD(v79[0]) = 12;
                        v78.i8[0] = 3;
                        sub_1D0D49EE8(v24, __p);
                        v52 = __p;
                        if (SHIBYTE(__p[2]) < 0)
                        {
                          v52 = __p[0];
                        }

                        v53 = *(a3 + 1) + *a3;
                        cnprint::CNPrinter::Print(v79, &v78, "#gmp,Satellite polynomial is outside of time range needed for this measurement,SV,%s,rx_time,%lf,poly_start_delta,%lf,poly_end_delta,%lf", v52, v53, *(v33 + 80) + *(v33 + 72) - v53, *(v33 + 96) + *(v33 + 88) - v53);
                        goto LABEL_87;
                      }

                      LODWORD(v79[0]) = v103 + v74;
                      v79[1] = v104;
                      *&v83 = 0;
                      v82 = 0u;
                      memset(__p, 0, sizeof(__p));
                      cnnavigation::TAITime::TAITime(&v78, v79, __p);
                    }

                    v45 = v78;
LABEL_78:
                    v102 = v45;
                    v46 = 1575420000.0;
                    goto LABEL_82;
                  }

                  if (v35 <= 2)
                  {
                    if (v35 != 1)
                    {
                      if (v35 != 2)
                      {
                        goto LABEL_89;
                      }

                      LODWORD(__p[0]) = v103 + v70;
                      v37.i64[0] = v104;
                      __p[1] = v104;
                      cnnavigation::TAITime::TAITime(v79, __p, v37, v38);
                      v45 = *v79;
                      goto LABEL_81;
                    }

                    LODWORD(__p[0]) = v103 + v70;
                    v37.i64[0] = v104;
                    __p[1] = v104;
                    cnnavigation::TAITime::TAITime(v79, __p, v37, v38);
                    v45 = *v79;
                    goto LABEL_78;
                  }

                  if (v35 != 3)
                  {
                    LODWORD(v79[0]) = v103 + v75;
                    v79[1] = v104;
                    *&v83 = 0;
                    v82 = 0u;
                    memset(__p, 0, sizeof(__p));
                    cnnavigation::TAITime::TAITime(&v78, v79, __p);
                    v45 = v78;
                    v102 = v78;
                    v46 = 1561098000.0;
                    goto LABEL_82;
                  }

                  if (v69)
                  {
                    v47 = *(v24 + 5);
                    if ((v47 - 7) <= 0xFFFFFFF1)
                    {
                      LOWORD(__p[0]) = 12;
                      LOBYTE(v79[0]) = 4;
                      cnprint::CNPrinter::Print(__p, v79, "#gmp,Could not form carrier frequency for GLONASS satellite,freq,%i", v47);
                      goto LABEL_89;
                    }

                    v78.i32[0] = 0;
                    __p[1] = 0;
                    sub_1D0C3AE34(v24, *(a1 + 2304), &__p[1], v78.i32);
                    LODWORD(__p[0]) = v78.i32[0] + v108;
                    cnnavigation::TAITime::TAITime(v79, __p, &v110);
                    v46 = v47 * 562500.0 + 1602000000.0;
                    v45 = *v79;
                    v102 = *v79;
                    goto LABEL_82;
                  }

                  LOWORD(v79[0]) = 12;
                  v78.i8[0] = 3;
                  sub_1D0D49EE8(v24, __p);
                  v66 = __p;
                  if (SHIBYTE(__p[2]) < 0)
                  {
                    v66 = __p[0];
                  }

                  cnprint::CNPrinter::Print(v79, &v78, "#gmp,GLONASS UTC information unavailable,cannot form measurement,SV,%s", v66);
LABEL_87:
                  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_89;
                  }

LABEL_88:
                  operator delete(__p[0]);
                  goto LABEL_89;
                }

                LOWORD(v79[0]) = 12;
                v78.i8[0] = 3;
                sub_1D0D49EE8(v24, __p);
                v41 = __p;
                if (SHIBYTE(__p[2]) < 0)
                {
                  v41 = __p[0];
                }

                cnprint::CNPrinter::Print(v79, &v78, "#gmp,Could not find the corresponding SV data for measurement,SV,%s", v41);
              }
            }

            else
            {
              LOWORD(v79[0]) = 12;
              if (*v24 == 2)
              {
                v30 = 3;
              }

              else
              {
                v30 = 4;
              }

              v78.i8[0] = v30;
              sub_1D0D49EE8(v24, __p);
              v31 = __p;
              if (SHIBYTE(__p[2]) < 0)
              {
                v31 = __p[0];
              }

              cnprint::CNPrinter::Print(v79, &v78, "#gmp,could not form sat id,SV,%s", v31);
            }

            if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
            {
              goto LABEL_89;
            }

            goto LABEL_88;
          }
        }

        else if (*(v24 + 196) != 1)
        {
          goto LABEL_18;
        }
      }

      else if (*(v24 + 197))
      {
        goto LABEL_18;
      }

LABEL_91:
      v24 += 200;
      if (v24 == v23)
      {
        return 1;
      }
    }
  }

  return v21;
}

void sub_1D0C3D8F0(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x36F]) < 0)
  {
    operator delete(STACK[0x358]);
  }

  _Unwind_Resume(a1);
}

uint64_t cnnavigation::TAITime::ToNavicTime(cnnavigation::TAITime *this, const cnnavigation::GNSSUTCParameters *a2)
{
  v3 = *this / 604800;
  v4 = *(this + 1) + (*this - 604800 * v3) + 561548.816;
  v5 = vcvtmd_s64_f64(v4 / 604800.0);
  v6 = v4 - v5 * 604800.0;
  v7 = v3 + v5 + 18;
  if (cnnavigation::GNSSUTCParameters::IsValid(a2) && *(a2 + 1) == 6)
  {
    v17[0] = 0;
    v17[1] = 0;
    *v8.i64 = v6;
    *v10.i64 = CNTimeSpan::SetTimeSpan(v17, 604800 * v7, v8, v9);
    v11 = *(a2 + 1);
    v12 = *(a2 + 2);
    v14 = CNTimeSpan::operator-(v17, a2 + 3, v10, v13);
    v7 += vcvtmd_s64_f64((v6 + v11 + v12 * (v15 + v14)) / 604800.0);
  }

  return v7;
}

uint64_t cnnavigation::TAITime::ToBeiDouTime(cnnavigation::TAITime *this, const cnnavigation::GNSSUTCParameters *a2)
{
  v3 = *this / 604800;
  v4 = *(this + 1) + (*this - 604800 * v3) + 561534.816;
  v5 = vcvtmd_s64_f64(v4 / 604800.0);
  v6 = v4 - v5 * 604800.0;
  v7 = v3 + v5 - 314;
  if (cnnavigation::GNSSUTCParameters::IsValid(a2) && *(a2 + 1) == 4)
  {
    v17[0] = 0;
    v17[1] = 0;
    *v8.i64 = v6;
    *v10.i64 = CNTimeSpan::SetTimeSpan(v17, 604800 * v7, v8, v9);
    v11 = *(a2 + 1);
    v12 = *(a2 + 2);
    v14 = CNTimeSpan::operator-(v17, a2 + 3, v10, v13);
    v7 += vcvtmd_s64_f64((v6 + v11 + v12 * (v15 + v14)) / 604800.0);
  }

  return v7;
}

uint64_t raven::GnssSvDatabase::AggregateHealthL1(_BYTE *a1)
{
  v1 = 0;
  v3[0] = a1[220];
  v3[1] = a1[212];
  v3[2] = a1[214];
  v3[3] = a1[216];
  v3[4] = a1[218];
  while (1)
  {
    result = v3[v1];
    if ((result - 1) < 2)
    {
      break;
    }

    if (++v1 == 5)
    {
      return 0;
    }
  }

  return result;
}

void *cnnavigation::TAITime::TAITime(void *a1, double *a2, int8x16_t a3, int8x16_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = 604800 * (*a2 - 1042);
  a4.i64[0] = 0xC1212319A1CAC083;
  *a3.i64 = a2[1] + -561548.816;
  v7 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v7, v5, a3, a4);
  *a1 = v7;
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  v5 = 604800 * (*a2 - 1042);
  a4.i64[0] = 0xC1212319A1CAC083;
  *a3.i64 = a2[1] + -561548.816;
  v7 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v7, v5, a3, a4);
  *a1 = v7;
  return a1;
}

uint64_t raven::GnssMeasurementPreprocessor::FormPseudorange(cnprint::CNPrinter *a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, double a9, char a10)
{
  v126[0] = a9;
  if ((*a1 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v120) = 1;
      cnprint::CNPrinter::Print(__p, &v120, "#gmp,FormPseudorange,not configured");
    }

    return 0;
  }

  v19 = *(a7 + 248);
  LogLevel = cnprint::CNPrinter::GetLogLevel(a1);
  if (v19 > 200.0)
  {
    if (LogLevel <= 1)
    {
      LOWORD(v116[0]) = 12;
      LOBYTE(v115) = 1;
      v21 = *(a7 + 248);
      sub_1D0D49EE8(a2, __p);
      if (v125 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      v23 = *(a2 + 8);
      v121 = 0.0;
      v122 = 0;
      v120 = 0;
      if (v23 <= 4)
      {
        if (v23 <= 1)
        {
          HIBYTE(v122) = 4;
          if (v23)
          {
            v24 = 1094922572;
          }

          else
          {
            v24 = 543911509;
          }
        }

        else if (v23 == 2)
        {
          HIBYTE(v122) = 4;
          v24 = 538981708;
        }

        else
        {
          HIBYTE(v122) = 4;
          if (v23 == 3)
          {
            v24 = 543568204;
          }

          else
          {
            v24 = 541667650;
          }
        }
      }

      else if (v23 > 7)
      {
        if (v23 == 8)
        {
          HIBYTE(v122) = 4;
          v24 = 543241541;
        }

        else
        {
          if (v23 != 9)
          {
            if (v23 == 10)
            {
              HIBYTE(v122) = 3;
              qmemcpy(&v120, "NL5", 3);
            }

            goto LABEL_136;
          }

          HIBYTE(v122) = 4;
          v24 = 1112748364;
        }
      }

      else if (v23 == 5)
      {
        HIBYTE(v122) = 4;
        v24 = 541274434;
      }

      else
      {
        HIBYTE(v122) = 4;
        if (v23 == 6)
        {
          v24 = 543240770;
        }

        else
        {
          v24 = 538980677;
        }
      }

      LODWORD(v120) = v24;
LABEL_136:
      cnprint::CNPrinter::Print(v116, &v115, "#gmp,SV approximate range uncertainty from ephemeris,%.1f,meters exceeds threshold,%.1f,dropping,SV,%s,band,%s", v21, 200.0, v22, &v120);
      if (SHIBYTE(v122) < 0)
      {
        operator delete(v120);
      }

LABEL_138:
      if (v125 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 0;
  }

  if (!LogLevel)
  {
    LOWORD(v120) = 12;
    LOBYTE(v116[0]) = 0;
    sub_1D0D49EE8(a2, __p);
    v26 = v125 >= 0 ? __p : __p[0];
    cnprint::CNPrinter::Print(&v120, v116, "#gmp,Processing meas,SV,%s,time,%lf", v26, *(a4 + 8) + *a4);
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v27 = *(a2 + 8);
  if (v27 <= 4)
  {
    if (*(a2 + 8) > 2u)
    {
      if (v27 == 3)
      {
        if (!sub_1D0C3ACF0(a2) || *(a2 + 40) < 0.0 || (v34 = *(a2 + 48), v34 <= 0.0) || (*(a2 + 9) & 1) == 0 || v34 >= 2001.38457)
        {
          LOWORD(__p[0]) = 12;
          LOBYTE(v120) = 2;
          sub_1D0C3ACF0(a2);
          cnprint::CNPrinter::Print(__p, &v120, "#gmp,Invalid L1f pseudorange,code-lock,%i,sv-time-present,%i,tot-unc,%lf");
          return 0;
        }

        *&v35 = COERCE_DOUBLE(sub_1D0C426B4((a2 + 9)));
        if ((v36 & 1) == 0)
        {
          LOWORD(__p[0]) = 12;
          LOBYTE(v120) = 5;
          cnprint::CNPrinter::Print(__p, &v120, "#gmp,L1f mod value for PR unavailable", v110, v111);
          return 0;
        }

        goto LABEL_118;
      }

      if (v27 != 4)
      {
        goto LABEL_119;
      }

      if (!sub_1D0C3ACF0(a2) || *(a2 + 40) < 0.0 || (v31 = *(a2 + 48), v31 <= 0.0) || (*(a2 + 9) & 1) == 0 || v31 >= 2001.38457)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v120) = 2;
        sub_1D0C3ACF0(a2);
        cnprint::CNPrinter::Print(__p, &v120, "#gmp,Invalid B1i pseudorange,b1i-code-lock,%i,sv-time-present,%i,tot-unc,%.3f");
        return 0;
      }
    }

    else
    {
      if (v27 != 1)
      {
        if (v27 != 2)
        {
          goto LABEL_119;
        }

        if (*(a2 + 9) != 1 || !sub_1D0C3ACF0(a2) || *(a2 + 40) < 0.0 || (v30 = *(a2 + 48), v30 <= 0.0) || v30 >= 2001.38457)
        {
          LOWORD(__p[0]) = 12;
          LOBYTE(v120) = 2;
          sub_1D0C3ACF0(a2);
          cnprint::CNPrinter::Print(__p, &v120, "#gmp,Inalid L5 pseudorange,code-lock,%i,sv-time-present,%i,tot-unc,%.3lf");
          return 0;
        }

        if ((*(a2 + 9) & 1) == 0)
        {
          LOWORD(__p[0]) = 12;
          LOBYTE(v120) = 5;
          cnprint::CNPrinter::Print(__p, &v120, "#gmp,L5 mod value for PR unavailable", v110, v111);
          return 0;
        }

        if (*(a2 + 10) != 1)
        {
          goto LABEL_140;
        }

        if (*(a2 + 12))
        {
          goto LABEL_74;
        }

        v29 = 6.0;
        if ((*(a2 + 11) & 1) == 0)
        {
          v29 = 0.01;
        }

        goto LABEL_155;
      }

      if (*(a2 + 9) != 1 || !sub_1D0C3ACF0(a2) || *(a2 + 40) < 0.0 || (v33 = *(a2 + 48), v33 <= 0.0) || v33 >= 2001.38457)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v120) = 2;
        sub_1D0C3ACF0(a2);
        cnprint::CNPrinter::Print(__p, &v120, "#gmp,Invalid L1 pseudorange,code-lock,%i,sv-time-present,%i,tot-unc,%.3lf,");
        return 0;
      }

      if ((*(a2 + 9) & 1) == 0)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v120) = 5;
        cnprint::CNPrinter::Print(__p, &v120, "#gmp,L1 mod value for PR unavailable", v110, v111);
        return 0;
      }
    }

    if (*(a2 + 10) == 1)
    {
      if ((*(a2 + 12) & 1) == 0)
      {
        v29 = 6.0;
        if (*(a2 + 11))
        {
          goto LABEL_155;
        }

        goto LABEL_64;
      }

LABEL_74:
      v29 = 604800.0;
      goto LABEL_155;
    }

LABEL_140:
    v29 = 0.001;
    goto LABEL_155;
  }

  if (*(a2 + 8) <= 6u)
  {
    if (v27 == 5)
    {
      if (!sub_1D0C3ACF0(a2) || *(a2 + 40) < 0.0 || (v39 = *(a2 + 48), v39 <= 0.0) || (*(a2 + 9) & 1) == 0 || v39 >= 2001.38457)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v120) = 2;
        sub_1D0C3ACF0(a2);
        cnprint::CNPrinter::Print(__p, &v120, "#gmp,Invalid B1c pseudorange,b1c-code-lock,%i,sv-time-present,%i,tot-unc,%.3f");
        return 0;
      }

      v40 = 0.01;
      if (*(a2 + 10))
      {
        v40 = 18.0;
      }

      if (*(a2 + 11))
      {
        v29 = 604800.0;
      }

      else
      {
        v29 = v40;
      }
    }

    else
    {
      if (v27 != 6)
      {
        goto LABEL_119;
      }

      if (!sub_1D0C3ACF0(a2) || *(a2 + 40) < 0.0 || (v32 = *(a2 + 48), v32 <= 0.0) || (*(a2 + 9) & 1) == 0 || v32 >= 2001.38457)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v120) = 2;
        sub_1D0C3ACF0(a2);
        cnprint::CNPrinter::Print(__p, &v120, "#gmp,Invalid B2a pseudorange,b2a-code-lock,%i,sv-time-present,%i,tot-unc,%.3lf");
        return 0;
      }

      if (*(a2 + 10) != 1)
      {
        goto LABEL_140;
      }

      if (*(a2 + 12))
      {
        goto LABEL_74;
      }

      v29 = 3.0;
      if ((*(a2 + 11) & 1) == 0)
      {
        v29 = 0.005;
      }
    }
  }

  else
  {
    if (v27 != 7)
    {
      if (v27 != 8)
      {
        if (v27 == 10)
        {
          if (*(a2 + 9) != 1 || !sub_1D0C3ACF0(a2) || *(a2 + 40) < 0.0 || (v28 = *(a2 + 48), v28 <= 0.0) || v28 >= 2001.38457)
          {
            LOWORD(__p[0]) = 12;
            LOBYTE(v120) = 2;
            sub_1D0C3ACF0(a2);
            cnprint::CNPrinter::Print(__p, &v120, "#gmp,Invalid L5 pseudorange,code-lock,%i,sv-time-present,%i,tot-unc,%.3lf,");
            return 0;
          }

          if ((*(a2 + 9) & 1) == 0)
          {
            LOWORD(__p[0]) = 12;
            LOBYTE(v120) = 5;
            cnprint::CNPrinter::Print(__p, &v120, "#gmp,NL5 mod value for PR unavailable", v110, v111);
            return 0;
          }

          if (*(a2 + 10) == 1)
          {
            if ((*(a2 + 12) & 1) == 0)
            {
              v29 = 12.0;
              if (*(a2 + 11))
              {
                goto LABEL_155;
              }

LABEL_64:
              v29 = 0.02;
              goto LABEL_155;
            }

            goto LABEL_74;
          }

          goto LABEL_140;
        }

LABEL_119:
        LOWORD(__p[0]) = 12;
        LOBYTE(v120) = 2;
        cnprint::CNPrinter::Print(__p, &v120, "#gmp,Measurement from band not to be used,band,%i");
        return 0;
      }

      if (!sub_1D0C3ACF0(a2) || *(a2 + 40) < 0.0 || (v41 = *(a2 + 48), v41 <= 0.0) || (*(a2 + 9) & 1) == 0 || v41 >= 2001.38457)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v120) = 2;
        sub_1D0C3ACF0(a2);
        cnprint::CNPrinter::Print(__p, &v120, "#gmp,Invalid E5a pseudorange,code-lock,%i,sv-time-present,%i,tot-unc,%.3lf");
        return 0;
      }

      *&v35 = COERCE_DOUBLE(sub_1D0C42F74((a2 + 9)));
      if ((v42 & 1) == 0)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v120) = 5;
        cnprint::CNPrinter::Print(__p, &v120, "#gmp,E5a mod value for PR unavailable", v110, v111);
        return 0;
      }

LABEL_118:
      v29 = *&v35;
      goto LABEL_155;
    }

    if (!sub_1D0C3ACF0(a2) || *(a2 + 40) < 0.0 || (v37 = *(a2 + 48), v37 <= 0.0) || (*(a2 + 9) & 1) == 0 || v37 >= 2001.38457)
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v120) = 2;
      sub_1D0C3ACF0(a2);
      cnprint::CNPrinter::Print(__p, &v120, "#gmp,Invalid E1 pseudorange,e1c-code-lock,%i,e1bc-code-lock,%i,sv-time-present,%i,tot-unc,%.3lf");
      return 0;
    }

    if (*(a2 + 11) == 1)
    {
      *&v38 = 2.0;
      if (*(a2 + 12))
      {
        *&v38 = 604800.0;
      }
    }

    else if (*(a2 + 10) == 1)
    {
      if (*(a2 + 12))
      {
        *&v38 = 604800.0;
      }

      else
      {
        *&v38 = 0.1;
      }
    }

    else
    {
      *&v38 = 0.004;
    }

    v29 = *&v38;
  }

LABEL_155:
  *(a8 + 112) = *(a2 + 192);
  *(a8 + 96) = 1;
  *(a8 + 100) = *(a2 + 8);
  *(a8 + 189) = a3;
  *(a8 + 104) = a9;
  v43 = vdupq_n_s64(0x3E112E0BE826D695uLL);
  v44 = vmulq_f64(vcvtq_f64_s64(vsubq_s64(*(a2 + 16), vdupq_n_s64(*(a1 + 288) + *(a2 + 32)))), v43);
  *(a8 + 192) = v44;
  v119 = 0.0;
  v120 = 0;
  v121 = 0.074;
  __p[0] = CNTimeSpan::operator-(a4, &v120, v44, v43);
  __p[1] = v45;
  if (!raven::GnssMeasurementPreprocessor::CalculateApproximateTimeOfFlight(a1, __p, a7, &v119))
  {
    LOWORD(__p[0]) = 12;
    LOBYTE(v120) = 3;
    cnprint::CNPrinter::Print(__p, &v120, "#gmp,Calculation of approximate time of flight failed", v110, v111);
    return 0;
  }

  *v46.i64 = v119;
  __p[0] = 0;
  __p[1] = 0;
  *v48.i64 = CNTimeSpan::SetTimeSpan(__p, 0, v46, v47);
  v120 = CNTimeSpan::operator-(a4, __p, v48, v49);
  v121 = v50;
  v118 = 0.0;
  if (cnnavigation::GNSSEphemerides::GNSSSatelliteClockOffset((a7 + 32), &v120, a9, &v118))
  {
    LOWORD(v116[0]) = 12;
    LOBYTE(v115) = 3;
    sub_1D0D49EE8(a2, __p);
    if (v125 >= 0)
    {
      v51 = __p;
    }

    else
    {
      v51 = __p[0];
    }

    cnprint::CNPrinter::Print(v116, &v115, "#gmp,Calculation of satellite clock offset failed,SV,%s,time,%.3lf", v51, v121 + v120);
    goto LABEL_138;
  }

  v117 = 0.0;
  v52 = raven::GnssMeasurementPreprocessor::PopulatePseudorangeMeasurementCorrections(a1, &v120, a2, (a2 + 8), v126, a7, (a8 + 128), &v117);
  result = 0;
  if (v52)
  {
    v55 = v118;
    v54.i64[0] = 0x3E2CA726EB25F9DBLL;
    *v53.i64 = v118 + (-*(a8 + 128) - *(a8 + 152) - *(a8 + 144) - *(a8 + 160)) * 0.00000000333564095;
    __p[0] = 0;
    __p[1] = 0;
    *v56.i64 = CNTimeSpan::SetTimeSpan(__p, 0, v53, v54);
    v116[0] = CNTimeSpan::operator-(a6, __p, v56, v57);
    v116[1] = v58;
    *v61.i64 = CNTimeSpan::operator-(&v120, v116, v59, v60);
    v63 = v62 + *v61.i64;
    *v64.i64 = v29 * round((v62 + *v61.i64) / v29);
    __p[0] = 0;
    __p[1] = 0;
    *v65.i64 = CNTimeSpan::SetTimeSpan(__p, 0, v64, v61);
    *&v115 = CNTimeSpan::operator+(v116, __p, v65, v66);
    *(&v115 + 1) = v67;
    if (*(*(a1 + 1) + 580) == 1 && v29 != 0.001)
    {
      *v69.i64 = round(v63 / 0.001);
      *v68.i64 = *v69.i64 * 0.001;
      v113 = 0;
      v114 = 0;
      *v70.i64 = CNTimeSpan::SetTimeSpan(&v113, 0, v68, v69);
      v72 = CNTimeSpan::operator+(v116, &v113, v70, v71);
      v74 = *&v73;
      __p[0] = v72;
      __p[1] = v73;
      v77 = CNTimeSpan::operator-(__p, &v115, v75, v76);
      v81 = sub_1D0C3FFD0(v77, v78, v79, v80);
      *v69.i64 = v81;
      v83 = (v82 + v81) * 1000.0;
      if (v83 > 0.1)
      {
        v115 = *__p;
        if (!cnprint::CNPrinter::GetLogLevel(v81))
        {
          LOWORD(v113) = 12;
          v112 = 0;
          v84 = sub_1D0BCFAB8(a7);
          cnprint::CNPrinter::Print(&v113, &v112, "#gmp,Detected sync error,SV %s,tx_time,%.6f,error_ms,%.3f,mod_value_ms,%.1f", v84, v74 + v72, v83, v29 * 1000.0);
        }
      }

      v55 = v118;
    }

    v113 = 0;
    v114 = 0;
    *v68.i64 = v55;
    *v85.i64 = CNTimeSpan::SetTimeSpan(&v113, 0, v68, v69);
    __p[0] = CNTimeSpan::operator+(&v115, &v113, v85, v86);
    __p[1] = v87;
    v90 = CNTimeSpan::operator-(a5, __p, v88, v89);
    *(a8 + 120) = (v91 + v90) * 299792458.0;
    if (!sub_1D0C3ACF0(a2) || (*(a2 + 80) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v92 = *(a2 + 88), v92 <= 0.0))
    {
      if (!sub_1D0C3ACF0(a2) || (*(a2 + 56) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v92 = *(a2 + 64), v92 <= 0.0))
      {
        LOWORD(v113) = 12;
        v112 = 3;
        sub_1D0D49EE8(a2, __p);
        if (v125 >= 0)
        {
          v97 = __p;
        }

        else
        {
          v97 = __p[0];
        }

        cnprint::CNPrinter::Print(&v113, &v112, "#gmp,Frequency offset unavailable, dropping pseudorange formation,SV,%s", v97);
        goto LABEL_138;
      }
    }

    v93 = *(a1 + 288);
    v94 = *(a1 + 1);
    v95 = *(a7 + 248);
    if (*(v94 + 589) == 1)
    {
      v96 = v95 * 3.33564095 * (v95 * 3.33564095);
    }

    else
    {
      if (v95 <= 5.0)
      {
        if (*(a7 + 256) != 4)
        {
          v96 = 0.0;
          if (*(a7 + 256))
          {
            goto LABEL_192;
          }

          v98 = *(a1 + 288);
          LOWORD(v113) = 12;
          v112 = 3;
          sub_1D0D49EE8(a2, __p);
          if (v125 >= 0)
          {
            v99 = __p;
          }

          else
          {
            v99 = __p[0];
          }

          cnprint::CNPrinter::Print(&v113, &v112, "#gmp,SV position source unknown,SV,%s", v99);
          if (v125 < 0)
          {
            operator delete(__p[0]);
          }

          v94 = *(a1 + 1);
          v93 = v98;
        }

        v96 = 11.1265006;
        goto LABEL_192;
      }

      v96 = (v95 * v95 + -25.0) * 11.1265006;
    }

LABEL_192:
    v100 = v92 * 0.000000001;
    v101 = v93;
    v102 = v101 * 0.000000001 * (v101 * 0.000000001 * 4.903325) / 299792458.0 * 1000000000.0;
    v103 = v100 * v101;
    v104 = 0.0;
    if (*(v94 + 590) == 1)
    {
      v104 = *(v94 + 560) * (v117 * v117);
    }

    *(a8 + 188) = *(a2 + 52);
    raven::GnssMeasurementPreprocessor::GetMeasurementUncertaintyScaleFactor(a1, a7, a8, __p);
    v105 = *(a2 + 48);
    v106 = v103 * v103 + v102 * v102 + v96 + v104;
    v107 = *(a1 + 1);
    v108 = *(v107 + 545);
    v109 = *(v107 + 3844);
    *(a8 + 168) = sub_1D0C411CC(a10, a7, v108, v109, v105, v106, *__p);
    if (LOBYTE(__p[1]) == 1)
    {
      *(a8 + 172) = sub_1D0C411CC(a10, a7, v108, v109, v105, v106, *(__p + 1));
      *(a8 + 176) = 1;
    }

    if (v124 == 1)
    {
      *(a8 + 180) = sub_1D0C411CC(a10, a7, *(*(a1 + 1) + 545), *(*(a1 + 1) + 3844), v105, v106, *(&__p[1] + 1));
      *(a8 + 184) = 1;
    }

    return 1;
  }

  return result;
}

void sub_1D0C3ED78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cnnavigation::GNSSEphemerides::GNSSSatelliteClockOffset(cnnavigation::GNSSEphemerides *this, const cnnavigation::TAITime *a2, double a3, double *a4)
{
  v6 = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  return (*(*this + 96))(this, a2, &v6, a4, 0, v5, a3);
}

uint64_t raven::GnssSvDatabase::FetchSvBandCorrection(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return 0;
  }

  v9 = *(a2 + 24);
  v10 = *(a2 + 28);
  v11 = v4;
  do
  {
    v12 = *(v5 + 56);
    v14 = v12 == v9;
    v13 = v12 > v9;
    if (v14)
    {
      v13 = *(v5 + 60) > v10;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v11 = v5;
    }

    v5 = *(v5 + v15);
  }

  while (v5);
  if (v11 == v4)
  {
    return 0;
  }

  v16 = *(v11 + 56);
  v17 = *(v11 + 15) < v10;
  v14 = v16 == v9;
  v18 = v16 < v9;
  if (v14)
  {
    v18 = v17;
  }

  if (v18)
  {
    return 0;
  }

  v19 = *(v11 + 36);
  v20 = *(v11 + 37);
  if (v19 != v20)
  {
    while (*v19 != *a3)
    {
      v19 += 40;
      if (v19 == v20)
      {
        goto LABEL_21;
      }
    }

    v21 = *v19;
    v22 = *(v19 + 1);
    a4[32] = v19[32];
    *a4 = v21;
    *(a4 + 1) = v22;
  }

LABEL_21:
  if (!*a4 || (*(a4 + 2) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a4 + 1) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a4 + 3) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v23 = fabs(*(a4 + 1));
  if (fabs(*(a4 + 2)) < 2.22044605e-16 || v23 < 2.22044605e-16)
  {
    LOWORD(v34[0]) = 12;
    LOBYTE(__p[0]) = 4;
    v25 = sub_1D0BCFAB8(a2);
    cnprint::CNPrinter::Print(v34, __p, "#svdb,SV band corr failed check,missing iono/tropo,%s", v25);
    return 0;
  }

  if (a4[32] && !cnprint::CNPrinter::GetLogLevel(v4))
  {
    v37 = 12;
    v36 = 0;
    v27 = sub_1D0BCFAB8(a2);
    sub_1D0D4B208(*a4, v34);
    v28 = v35;
    v29 = v34[0];
    sub_1D0B751F4(__p, off_1E83D7E30[a4[32]]);
    if (v28 >= 0)
    {
      v30 = v34;
    }

    else
    {
      v30 = v29;
    }

    if (v33 >= 0)
    {
      v31 = __p;
    }

    else
    {
      v31 = __p[0];
    }

    cnprint::CNPrinter::Print(&v37, &v36, "#svdb,SV band corr has ionospheric source,svid,%s,band,%s,source,%s,delay,%.2f,nsec", v27, v30, v31, *(a4 + 2));
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }
  }

  return 1;
}

void sub_1D0C3F064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(CoreNavigation::CLP::LogEntry::PrivateData *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0C3F11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t raven::GnssMeasurementPreprocessor::PopulatePseudorangeMeasurementCorrections(uint64_t a1, cnnavigation::TAITime *a2, uint64_t a3, unsigned __int8 *a4, double *a5, uint64_t a6, float64x2_t *a7, _DWORD *a8)
{
  v8 = *a4;
  v9 = *(a1 + 1296);
  if (!v9)
  {
    goto LABEL_9;
  }

  v17 = a1 + 1296;
  do
  {
    v18 = *(v9 + 32);
    v19 = v18 >= v8;
    v20 = v18 < v8;
    if (v19)
    {
      v17 = v9;
    }

    v9 = *(v9 + 8 * v20);
  }

  while (v9);
  if (v17 == a1 + 1296 || *(v17 + 32) > v8)
  {
LABEL_9:
    LOWORD(__p) = 12;
    v70[0] = 3;
    cnprint::CNPrinter::Print(&__p, v70, "#gmp,No receiver band corrections available,band,%i", v8);
    return 0;
  }

  if (v8 == 2)
  {
    v23 = 888;
  }

  else if (v8 == 6)
  {
    v23 = 904;
  }

  else
  {
    v22 = 0.0;
    if (v8 != 8)
    {
      goto LABEL_18;
    }

    v23 = 896;
  }

  v22 = *(a1 + 1280 + v23) * 0.299792458;
LABEL_18:
  v56 = *(v17 + 48);
  *a8 = *(v17 + 56);
  v70[0] = 0;
  v71 = vdupq_n_s64(0x7FF8000000000000uLL);
  v72 = NAN;
  v73 = 0;
  if ((raven::GnssSvDatabase::FetchSvBandCorrection(a1 + 984, a6, a4, v70) & 1) == 0)
  {
    LOWORD(v76[0]) = 12;
    LOBYTE(v74[0]) = 3;
    v28 = *a4;
    sub_1D0D49EE8(a3, &__p);
    if (v61 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    cnprint::CNPrinter::Print(v76, v74, "#gmp,No transmit band corrections available,band,%i,SV,%s", v28, p_p);
    if ((SHIBYTE(v61) & 0x80000000) == 0)
    {
      return 0;
    }

    v30 = __p;
LABEL_39:
    operator delete(v30);
    return 0;
  }

  IsValid = *(a1 + 2544);
  if (IsValid && *(a1 + 2296) == 1)
  {
    IsValid = cnnavigation::SphericalHarmonicsIonosphereModel::IsValid(IsValid, (a1 + 2240));
    v27 = IsValid;
  }

  else
  {
    v27 = 0;
  }

  if (*(a1 + 2296) == 1)
  {
    IsValid = cnnavigation::ThinShellIonosphereModel::IsValid((a1 + 2344), (a1 + 2240), v24, v25);
    v31 = IsValid;
    if (v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v31 = 0;
    if (v27)
    {
      goto LABEL_33;
    }
  }

  v32 = *(a1 + 2336);
  if ((v32 & v31 & 1) == 0)
  {
    v35 = *&v71.i64[1];
    goto LABEL_55;
  }

LABEL_33:
  v68 = *(a1 + 816);
  v69 = *(a1 + 832);
  LOWORD(__p) = 0;
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  IsValid = (*(*(a6 + 32) + 56))(a6 + 32, a2, &__p, &v67, v76, v74);
  if (IsValid)
  {
    LOWORD(v74[0]) = 12;
    LOBYTE(v59) = 3;
    sub_1D0D49EE8(a3, v76);
    if (v77 >= 0)
    {
      v34 = v76;
    }

    else
    {
      v34 = v76[0];
    }

    cnprint::CNPrinter::Print(v74, &v59, "#gmp,#iono,#rof,find sat failed,SV,%s", v34);
    if ((v77 & 0x80000000) == 0)
    {
      return 0;
    }

    v30 = v76[0];
    goto LABEL_39;
  }

  v35 = *&v71.i64[1];
  if (v27)
  {
    LOWORD(__p) = 0;
    v61 = 0u;
    v62 = 0u;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    raven::GnssSvDatabase::PopulateGnssUTCParametersWithGps((a1 + 984), &__p, 0.0, v33);
    v36 = cnnavigation::TAITime::ToGPSTime(a2, &__p);
    v59 = 0.0;
    v38 = (*(**(a1 + 2544) + 16))(*(a1 + 2544), v36, &v68, &v67, &v59, v37, *a5);
    v39 = "N5boost3any6holderIN5raven16MovingStateEventEEE" + 38;
    if (v38)
    {
      goto LABEL_75;
    }

    v35 = v59 * 1000000000.0;
    if (cnprint::CNPrinter::GetLogLevel(v38))
    {
      goto LABEL_75;
    }

    v58 = 12;
    v57 = 0;
    v40 = *&v71.i64[1];
    sub_1D0D49EE8(a3, v76);
    v41 = v77;
    v42 = v76[0];
    sub_1D0D4B208(*a4, v74);
    if (v41 >= 0)
    {
      v43 = v76;
    }

    else
    {
      v43 = v42;
    }

    if (v75 >= 0)
    {
      v44 = v74;
    }

    else
    {
      v44 = v74[0];
    }

    cnprint::CNPrinter::Print(&v58, &v57, "#gmp,#rof,sphericalharmonicsionospheremodel,vendor_delay_nsec,%.3f,iono_delay_nsec,%.3f,SV,%s,band,%s", v40, v35, v43, v44);
    if (v75 < 0)
    {
      operator delete(v74[0]);
    }

    if ((v77 & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

    v45 = v76[0];
    goto LABEL_68;
  }

  v32 = *(a1 + 2336);
LABEL_55:
  if ((v32 & v31 & 1) == 0)
  {
    if (v31 & 1 | ((v32 & 1) == 0))
    {
      v39 = "N5boost3any6holderIN5raven16MovingStateEventEEE" + 38;
    }

    else
    {
      v53 = *(a1 + 8);
      v39 = "eEventEEE";
      if (*(v53 + 641) == 1 && *(v53 + 2560) == 1 && cnprint::CNPrinter::GetLogLevel(IsValid) <= 1)
      {
        LOWORD(__p) = 12;
        LOBYTE(v76[0]) = 1;
        cnprint::CNPrinter::Print(&__p, v76, "#gmp,#iono,not using thin shell model, not valid or not converged. Using Klobuchar-model-derived ionospheric delay instead");
      }
    }

    goto LABEL_75;
  }

  v74[0] = 0;
  v46 = *a5;
  *&__p = *(*(a1 + 8) + 3128) * 0.0174532925;
  IonosphericDelay = cnnavigation::ThinShellIonosphereModel::GetIonosphericDelay(a1 + 2344, &v68, &v67, v74, &__p, v46);
  v39 = "N5boost3any6holderIN5raven16MovingStateEventEEE" + 38;
  if (!IonosphericDelay)
  {
    v35 = *v74 * 1000000000.0;
    if (!cnprint::CNPrinter::GetLogLevel(IonosphericDelay))
    {
      LOWORD(v59) = 12;
      LOBYTE(v58) = 0;
      v48 = *&v71.i64[1];
      sub_1D0D49EE8(a3, &__p);
      v49 = SHIBYTE(v61);
      v50 = __p;
      sub_1D0D4B208(*a4, v76);
      if (v49 >= 0)
      {
        v51 = &__p;
      }

      else
      {
        v51 = v50;
      }

      if (v77 >= 0)
      {
        v52 = v76;
      }

      else
      {
        v52 = v76[0];
      }

      cnprint::CNPrinter::Print(&v59, &v58, "#gmp,#iono,thinshellionospheremodel,vendor_delay_nsec,%.3f,iono_delay_nsec,%.3f,SV,%s,band,%s", v48, v35, v51, v52);
      if (v77 < 0)
      {
        operator delete(v76[0]);
      }

      if (SHIBYTE(v61) < 0)
      {
        v45 = __p;
LABEL_68:
        operator delete(v45);
      }
    }
  }

LABEL_75:
  v54 = *(v39 + 244);
  *&v55.f64[0] = v71.i64[0];
  a7->f64[0] = v35 * v54;
  a7->f64[1] = v22;
  v55.f64[1] = v56;
  a7[1] = vmulq_f64(v55, vdupq_n_s64(0x3FD32FCCB4ACA315uLL));
  a7[2].f64[0] = v72 * v54;
  return 1;
}

void sub_1D0C3F6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43)
{
  if (*(v43 - 153) < 0)
  {
    operator delete(a40);
  }

  if (*(v43 - 129) < 0)
  {
    operator delete(a43);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cnnavigation::SphericalHarmonicsIonosphereModel::IsValid(cnnavigation::SphericalHarmonicsIonosphereModel *this, const cnnavigation::TAITime *a2)
{
  result = (*(*this + 32))(this);
  if (result)
  {
    ApplicabilityTime = cnnavigation::SphericalHarmonicsIonosphereModel::GetApplicabilityTime(this);
    v13 = v5;
    v8 = CNTimeSpan::operator-(a2, &ApplicabilityTime, v6, v7);
    v14[0] = v8;
    *&v14[1] = v9;
    if (v8 < 0 || (*v10.i64 = v9, v9 < 0.0))
    {
      v8 = CNTimeSpan::operator-(v14, v10, v11);
    }

    ApplicabilityTime = v8;
    v13 = v9;
    return sub_1D0B9D420(&ApplicabilityTime, this + 6);
  }

  return result;
}

BOOL cnnavigation::SphericalHarmonicsIonosphereModel::IsValid(cnnavigation::SphericalHarmonicsIonosphereModel *this)
{
  if (!*(this + 4))
  {
    return 0;
  }

  v1 = (this + 24);
  do
  {
    v1 = *v1;
    result = v1 == 0;
    if (!v1)
    {
      break;
    }

    v3 = v1[3];
    if (!v3)
    {
      break;
    }
  }

  while ((*(v3 + 8248) & 1) != 0);
  return result;
}

uint64_t cnnavigation::SphericalHarmonicsIonosphereModel::GetApplicabilityTime(cnnavigation::SphericalHarmonicsIonosphereModel *this)
{
  if (!(*(*this + 32))(this))
  {
    return 0;
  }

  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v3 = v2[3];
    if (v3)
    {
      if (*(v3 + 8248))
      {
        break;
      }
    }

    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  return *(v3 + 16);
}

BOOL cnnavigation::ThinShellIonosphereModel::IsValid(cnnavigation::ThinShellIonosphereModel *this, const cnnavigation::TAITime *a2, int8x16_t a3, int8x16_t a4)
{
  if (*(this + 8) != 1)
  {
    return 0;
  }

  v13[4] = v4;
  v13[5] = v5;
  if (*(this + 9) != 1)
  {
    return 0;
  }

  v7 = CNTimeSpan::operator-(a2, this + 7, a3, a4);
  v13[0] = v7;
  *&v13[1] = v8;
  if (v7 < 0 || (*v9.i64 = v8, v8 < 0.0))
  {
    v7 = CNTimeSpan::operator-(v13, v9, v10);
  }

  *&v12[0] = v7;
  v12[1] = v8;
  return sub_1D0B9D420(v12, this + 23);
}

uint64_t cnnavigation::SphericalHarmonicsIonosphereModel::GetIonosphericDelay(cnnavigation::SphericalHarmonicsIonosphereModel *this, uint64_t a2, long double a3, const double *a4, const double *a5, double a6, double *a7)
{
  v11 = *a4;
  v12 = *(a4 + 2);
  v9 = *a5;
  v10 = *(a5 + 2);
  return cnnavigation::SphericalHarmonicsIonosphereModel::GetIonosphericDelay(this, a2, &v11, &v9, a7, 0, v8, a3, a6);
}

uint64_t cnnavigation::SphericalHarmonicsIonosphereModel::GetIonosphericDelay(void *a1, int a2, __int128 *a3, __int128 *a4, double *a5, int a6, _OWORD *a7, long double a8, double a9)
{
  v16 = (*(*a1 + 32))(a1);
  if (v16)
  {
    v17 = a1[3];
    if (v17)
    {
      v66 = a7;
      v67 = a1;
      v69 = 1344536590.0 / (a9 * a9);
      v68 = a8;
      v18 = 0;
      v70 = (fmod(a8, 86400.0) + -50400.0) * 3.14159265 / 43200.0;
      v20 = 0.0;
      v21 = 0uLL;
      while (1)
      {
        v22 = v17[3];
        if (!v22 || *(v22 + 8248) != 1)
        {
          break;
        }

        if ((v17[262] & 1) == 0)
        {
          if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
          {
            LOWORD(v75[0]) = 5;
            LOBYTE(v79) = 1;
            cnprint::CNPrinter::Print(v75, &v79, "#shiono,GetIonosphericDelay,layer_num,%u,Legendre normalization not initialized");
          }

          return 0xFFFFFFFFLL;
        }

        v23 = *(v22 + 40);
        v82 = 0;
        v83 = v23;
        v84 = v21;
        v85 = v21;
        v24 = *a3;
        v86 = v21;
        v87 = v24;
        v88 = *(a3 + 2);
        v89 = *a4;
        v90 = *(a4 + 2);
        v25 = cnnavigation::details::IonospherePiercePoint::ComputeIonospherePiercePointCoordinates(&v82);
        if (v25)
        {
          if (cnprint::CNPrinter::GetLogLevel(v25) <= 1)
          {
            LOWORD(v75[0]) = 5;
            LOBYTE(v79) = 1;
            cnprint::CNPrinter::Print(v75, &v79, "#shiono,GetIonosphericDelay,layer_num,%u,failed to calculate IPP coordinates");
          }

          return 0xFFFFFFFFLL;
        }

        v26 = fmod(v70 + *&v86, 6.28318531);
        v81 = 0;
        memset(v80, 0, sizeof(v80));
        v78 = 0;
        memset(v77, 0, sizeof(v77));
        v79 = 0x3FF0000000000000;
        v76 = 0;
        v27 = __sincos_stret(v26);
        v28 = v17[3];
        v29 = v28[1];
        if (v29)
        {
          if ((v29 + 1) > 2)
          {
            v30 = (v29 + 1);
          }

          else
          {
            v30 = 2;
          }

          v31 = v30 - 1;
          v32 = 1.0;
          v33 = 0.0;
          v34 = v80;
          v35 = v77;
          do
          {
            v36 = v33 * -v27.__sinval + v27.__cosval * v32;
            *v34++ = v36;
            v33 = v27.__sinval * v32 + v27.__cosval * v33;
            *v35++ = v33;
            v32 = v36;
            --v31;
          }

          while (v31);
        }

        bzero(&v75[1], 0x7F8uLL);
        v37 = sin(*(&v85 + 1));
        v38 = sqrt(1.0 - v37 * v37);
        v75[0] = 0x3FF0000000000000;
        *&v75[16] = v37;
        *&v75[17] = v38;
        LODWORD(v39) = *v28 + 1;
        if (*v28 >= 2u)
        {
          v40 = 0;
          if (v39 <= 3)
          {
            v41 = 3;
          }

          else
          {
            v41 = *v28 + 1;
          }

          v42 = (v41 - 2);
          v43 = 1;
          v44 = 1;
          v45 = &v75[16];
          v46 = 2;
          do
          {
            v47 = v46 * 2.0 + -1.0;
            v48 = *&v75[16 * v46 - 17 + v46] * v47;
            v49 = &v75[16 * v46];
            *&v49[v46] = v38 * v48;
            *&v49[v46 - 1] = v37 * v48;
            if (v46 - 2 >= 0)
            {
              v50 = v37 * v47;
              v51 = 2;
              v52 = v43;
              v53 = v44;
              v54 = v45;
              do
              {
                v54[16] = 1.0 / v51++ * (v50 * *v54 - *(v54 - 16) * v52);
                --v54;
                --v53;
                --v52;
              }

              while (v53 > 0);
            }

            ++v46;
            ++v40;
            v45 += 17;
            ++v44;
            v43 += 2;
          }

          while (v40 != v42);
        }

        v55 = 0;
        v56 = v17 + 6;
        if (v39 <= 1)
        {
          v39 = 1;
        }

        else
        {
          v39 = v39;
        }

        v57 = 0.0;
        v58 = v75;
        v59 = v28;
        do
        {
          v60 = 0;
          if (v55 >= v29)
          {
            v61 = v29;
          }

          else
          {
            v61 = v55;
          }

          v62 = 8 * v61 + 8;
          do
          {
            v57 = v57 + (*&v59[v60 / 4 + 524] * *&v77[v60 - 8] + *&v59[v60 / 4 + 12] * *&v80[v60 - 8]) * (*&v58[v60 / 8] * *&v56[v60 / 8]);
            v60 += 8;
          }

          while (v62 != v60);
          ++v55;
          v59 += 32;
          v56 += 16;
          v58 += 16;
        }

        while (v55 != v39);
        if (v57 <= 0.0)
        {
          v74 = 5;
          v73 = 2;
          cnprint::CNPrinter::Print(&v74, &v73, "#shiono,GetIonosphericDelay,layer_num,%u,WARNING:negative vtec,%.3lf,set to zero", v28[8], v57);
          v57 = 0.0;
        }

        if (*(&v84 + 1) >= 1.57079633 || *(&v84 + 1) < 0.0)
        {
          v74 = 5;
          v73 = 4;
          cnprint::CNPrinter::Print(&v74, &v73, "#shiono,GetIonosphericDelay,layer_num,%u,invalid sv_zenith_angle_at_ipp_rad,%.3lf,rad");
          return 0xFFFFFFFFLL;
        }

        v63 = 1.0 / cos(*(&v84 + 1));
        v20 = v20 + v57 * v63;
        LogLevel = cnprint::CNPrinter::GetLogLevel(v64);
        if (!LogLevel)
        {
          v74 = 5;
          v73 = 0;
          cnprint::CNPrinter::Print(&v74, &v73, "#shiono,GetIonosphericDelay,successfully computed per-layer delay,layer_num,%u,gps_week,%d,gps_sec,%.2f,fc,%.2f,sv_at_rx_az_deg,%.2f,sv_at_rx_el_deg,%.2f,vtec,%.3f,vtec_to_stec_fcn,%.3f,stec,%.3f,iono_delay_ns,%.3f", *(v17[3] + 32), a2, v68, a9, *&v85 * 57.2957795, (1.57079633 - *&v84) * 57.2957795, v57, v63, v20, v69 * v20 * 1000000000.0);
        }

        ++v18;
        v17 = *v17;
        v21 = 0uLL;
        if (!v17)
        {
          if (v18 && v67[4] <= v18)
          {
            *a5 = v69 * v20;
            result = 0;
            if (a6)
            {
              v66[2] = 0u;
              v66[3] = 0u;
              *v66 = 0u;
              v66[1] = 0u;
            }

            return result;
          }

          goto LABEL_45;
        }
      }
    }

    else
    {
LABEL_45:
      LOWORD(v75[0]) = 5;
      LOBYTE(v79) = 4;
      cnprint::CNPrinter::Print(v75, &v79, "#shiono,GetIonosphericDelay,unable to compute stec from all available layers,processed_layers,%u");
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v16) <= 1)
  {
    LOWORD(v75[0]) = 5;
    LOBYTE(v79) = 1;
    cnprint::CNPrinter::Print(v75, &v79, "#shiono,GetIonosphericDelay,parameters not initialized or invalid,num_layers,%zu");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0C3FFD0(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  *a4.i64 = a1;
  *a3.i64 = fabs(*&a2 + a1);
  v5[0] = 0;
  v5[1] = 0;
  CNTimeSpan::SetTimeSpan(v5, 0, a3, a4);
  return v5[0];
}

uint64_t raven::GnssMeasurementPreprocessor::GetMeasurementUncertaintyScaleFactor@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 1065353216;
  *(a4 + 4) = 0;
  *(a4 + 8) = 0;
  *(a4 + 12) = 0;
  *(a4 + 16) = 0;
  if ((*(*(result + 8) + 549) & 1) == 0 && (*(a3 + 188) & 1) == 0)
  {
    v6 = result;
    result = *(result + 2608);
    if (result)
    {
      UncertaintyScaleFactor = raven::GNSSUncertaintyScaling::GNSSUncertaintyWrapper::GetUncertaintyScaleFactor(result, (a3 + 96), a3 + 100, v6 + 977, v6 + 888, 0, *(a3 + 112), *(a2 + 264), *(a3 + 168));
      if ((UncertaintyScaleFactor & 0x100000000) != 0)
      {
        *a4 = UncertaintyScaleFactor;
      }

      v9 = raven::GNSSUncertaintyScaling::GNSSUncertaintyWrapper::GetUncertaintyScaleFactor(*(v6 + 2608), (a3 + 96), a3 + 100, v6 + 977, v6 + 888, 1, *(a3 + 112), *(a2 + 264), *(a3 + 168));
      *(a4 + 4) = v9;
      *(a4 + 8) = BYTE4(v9);
      result = raven::GNSSUncertaintyScaling::GNSSUncertaintyWrapper::GetUncertaintyScaleFactor(*(v6 + 2608), (a3 + 96), a3 + 100, v6 + 977, v6 + 888, 2, *(a3 + 112), *(a2 + 264), *(a3 + 168));
      *(a4 + 12) = result;
      *(a4 + 16) = BYTE4(result);
    }
  }

  return result;
}

uint64_t raven::GNSSUncertaintyScaling::GNSSUncertaintyWrapper::GetUncertaintyScaleFactor(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7, double a8, float a9)
{
  v25 = a9;
  if (*a2)
  {
    v9 = *a2 == 5;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v24[0] = 0;
    v24[1] = 0;
    if ((*(*a1 + 8))(a1, v24))
    {
      v21 = (**a1)(a1, a2, a3, a4, a5, v24, &v25, a6);
      v10 = v21 & 0xFF00000000;
      v11 = v21;
      return v10 | v11;
    }

    v23 = 12;
    v22 = 4;
    cnprint::CNPrinter::Print(&v23, &v22, "GNSS uncertainty table index not found,cn0,%.1f,elev_deg,%.1lf", a7, a8);
  }

  v10 = 0x100000000;
  v11 = 1065353216;
  return v10 | v11;
}

uint64_t raven::GNSSUncertaintyScaling::Fire7orNewerPhoneGNSSUncertaintyWrapper::GetScaleFactorTableIndices(float a1, double a2, uint64_t a3, unint64_t *a4)
{
  v6 = 0;
  v7 = 40;
  while (flt_1D0EB3D38[v6] < a1)
  {
    ++v6;
    v7 -= 4;
    if (!v7)
    {
      v6 = 10;
      break;
    }
  }

  v8 = 0;
  v9 = 120;
  while (dbl_1D0EB3D78[v8] < a2)
  {
    ++v8;
    v9 -= 8;
    if (!v9)
    {
      v8 = 15;
      break;
    }
  }

  v15 = v4;
  v16 = v5;
  v10 = v6 >= 0xB || v8 >= 0x10;
  v11 = !v10;
  if (v10)
  {
    v14 = 12;
    v13 = 5;
    cnprint::CNPrinter::Print(&v14, &v13, "invalid index found,cn0,%.3f,cn0_bin,%zu,elev,%.3lf,elev_bin,%zu,", a1, v6, a2, v8);
  }

  else
  {
    *a4 = v6;
    a4[1] = v8;
  }

  return v11;
}

uint64_t raven::GNSSUncertaintyScaling::Fire7orNewerPhoneGNSSUncertaintyWrapper::GetUncertaintyScaleFactorCore(uint64_t a1, int *a2, _BYTE *a3, unsigned __int8 *a4, unsigned __int8 *a5, uint64_t *a6, uint64_t a7, int a8)
{
  if (!a8)
  {
    v49 = v8;
    v50 = v9;
    v17 = *a4;
    if (v17 > 6)
    {
      v26 = 0;
      v23 = 0;
      v22 = 0;
      v21 = 0;
    }

    else
    {
      v18 = 1 << v17;
      if ((v18 & 0x27) != 0)
      {
        v19 = *a5;
        if (v19 <= 6 && ((1 << v19) & 0x4C) != 0)
        {
          goto LABEL_9;
        }

        goto LABEL_23;
      }

      if ((v18 & 0x18) == 0)
      {
        v27 = *a5;
        if (v27 <= 6 && ((1 << v27) & 0x4C) != 0)
        {
LABEL_9:
          v21 = sub_1D0E391A4();
          v22 = sub_1D0E392A4();
          v23 = sub_1D0E393A4();
          v24 = sub_1D0E394A4();
LABEL_24:
          v26 = v24;
          goto LABEL_25;
        }

LABEL_23:
        v21 = sub_1D0C40ECC();
        v22 = sub_1D0C40DCC();
        v23 = sub_1D0C410CC();
        v24 = sub_1D0C40FCC();
        goto LABEL_24;
      }

      v25 = *a5;
      if (v25 <= 6 && ((1 << v25) & 0x4C) != 0)
      {
        v21 = qword_1EE055000;
        if (!qword_1EE055000)
        {
          operator new();
        }

        v22 = qword_1EE055008;
        if (!qword_1EE055008)
        {
          operator new();
        }

        v23 = qword_1EE055010;
        if (!qword_1EE055010)
        {
          operator new();
        }

        v26 = qword_1EE055018;
        if (!qword_1EE055018)
        {
          operator new();
        }
      }

      else
      {
        v21 = qword_1EE055020;
        if (!qword_1EE055020)
        {
          operator new();
        }

        v22 = qword_1EE055028;
        if (!qword_1EE055028)
        {
          operator new();
        }

        v23 = qword_1EE055030;
        if (!qword_1EE055030)
        {
          operator new();
        }

        v26 = qword_1EE055038;
        if (!qword_1EE055038)
        {
          operator new();
        }
      }
    }

LABEL_25:
    v28 = *a3;
    if (v28 > 5)
    {
      if (*a3 <= 7u)
      {
        if (v28 == 7)
        {
          v30 = 2;
        }

        else
        {
          v30 = 0;
        }

        if (v28 == 6)
        {
          v29 = 1;
        }

        else
        {
          v29 = v30;
        }

        goto LABEL_49;
      }

      if (v28 == 8)
      {
        v29 = 3;
        goto LABEL_49;
      }

      if (v28 == 9)
      {
LABEL_38:
        v48 = 12;
        v47 = 4;
        cnprint::CNPrinter::Print(&v48, &v47, "Invalid GNSS Band type: GNSS uncertainty parameters not found for obs_type,%d,band,%d,se,%d,activity,%d");
        goto LABEL_81;
      }

      v29 = 0;
      if (v28 != 10)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (*a3 > 1u)
      {
        if (v28 == 2)
        {
          v29 = 6;
          goto LABEL_49;
        }

        if (v28 == 3)
        {
          v29 = 4;
          goto LABEL_49;
        }

        v29 = 0;
        if (v28 != 4)
        {
LABEL_49:
          v31 = v29;
          v32 = *a2;
          if (*a2 <= 2)
          {
            if (v32 != 1)
            {
              if (v32 == 2)
              {
                if (v22)
                {
                  v33 = &v22[89 * v31];
                  v34 = v33[88];
                  v35 = *a6;
                  v36 = a6[1];
                  goto LABEL_84;
                }

                v48 = 12;
                v47 = 5;
                cnprint::CNPrinter::Print(&v48, &v47, "Invalid doppler unc scale pointer - activity_state = %d, signal_environment = %hu, band_as_int = %d", *a5, *a4, v31);
                v11 = 4.0;
LABEL_87:
                v10 = 0x100000000;
                return v10 | LODWORD(v11);
              }

              goto LABEL_63;
            }

            if (!v21)
            {
              v48 = 12;
              v47 = 5;
              cnprint::CNPrinter::Print(&v48, &v47, "Invalid range unc scale pointer - activity_state = %d, signal_environment = %hu, band_as_int = %d");
              goto LABEL_81;
            }

            v42 = &v21[89 * v31];
            v43 = a6[1];
            if (*(&v42[8 * *a6] + v43))
            {
              v34 = v42[88];
              v41 = *(&v42[8 * *a6] + v43);
              goto LABEL_86;
            }

LABEL_81:
            v11 = 1.0;
            goto LABEL_87;
          }

          if (v32 == 3)
          {
            if (v23)
            {
              v44 = &v23[89 * v31];
              v34 = v44[88];
              v35 = *a6;
              v36 = a6[1];
              v38 = *(&v44[8 * *a6] + v36);
              if (!v38)
              {
                goto LABEL_82;
              }

              goto LABEL_69;
            }
          }

          else
          {
            if (v32 != 4)
            {
LABEL_63:
              v48 = 12;
              v47 = 5;
              cnprint::CNPrinter::Print(&v48, &v47, "Invalid obs type - activity_state = %d, signal_environment = %hu, band_as_int = %d");
              goto LABEL_81;
            }

            if (v26)
            {
              v37 = v26 + 356 * v31;
              v34 = *(v37 + 352);
              v35 = *a6;
              v36 = a6[1];
              v38 = *(v37 + 32 * *a6 + 2 * v36);
              if (v38)
              {
                v39 = 1;
              }

              else
              {
                v39 = v23 == 0;
              }

              if (!v39)
              {
                v40 = &v23[89 * v31];
                if (*(&v40[8 * v35] + v36))
                {
                  v34 = v40[88];
                  v41 = *(&v40[8 * v35] + v36);
LABEL_86:
                  v11 = v34 * v41;
                  goto LABEL_87;
                }

LABEL_82:
                if (!v22)
                {
                  goto LABEL_89;
                }

                v33 = &v22[89 * v31];
LABEL_84:
                v45 = *(&v33[8 * v35] + v36);
                if (v45)
                {
                  v41 = v45;
                  goto LABEL_86;
                }

LABEL_89:
                v10 = 0x100000000;
                v11 = v34 / 0.01;
                return v10 | LODWORD(v11);
              }

LABEL_69:
              v41 = v38;
              goto LABEL_86;
            }
          }

          v48 = 12;
          v47 = 5;
          cnprint::CNPrinter::Print(&v48, &v47, "Invalid doppler unc scale pointer - activity_state = %d, signal_environment = %hu, band_as_int = %d", *a5, *a4, v31);
          v11 = 2.0;
          goto LABEL_87;
        }

        goto LABEL_38;
      }

      if (!*a3)
      {
        goto LABEL_38;
      }
    }

    v29 = 5;
    goto LABEL_49;
  }

  v10 = 0;
  v11 = 0.0;
  return v10 | LODWORD(v11);
}

_DWORD *sub_1D0C40DCC()
{
  if (!qword_1EC5FB418)
  {
    operator new();
  }

  return qword_1EC5FB418;
}

_DWORD *sub_1D0C40ECC()
{
  if (!qword_1EC5FB428)
  {
    operator new();
  }

  return qword_1EC5FB428;
}

_DWORD *sub_1D0C40FCC()
{
  if (!qword_1EC5FB410)
  {
    operator new();
  }

  return qword_1EC5FB410;
}

_DWORD *sub_1D0C410CC()
{
  if (!qword_1EC5FB420)
  {
    operator new();
  }

  return qword_1EC5FB420;
}

float sub_1D0C411CC(char a1, uint64_t a2, int a3, int a4, double a5, double a6, float a7)
{
  v7 = a7;
  if (a3)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v7;
  }

  if (!a3)
  {
    v7 = 1.0;
  }

  v9 = v7 * a5 * (v7 * a5);
  v10 = v9 + a6;
  if (!a4)
  {
    v9 = v10;
  }

  v11 = v8 * (sqrt(v9) * 0.299792458);
  if ((a1 & 1) != 0 && (a4 & 1) == 0)
  {
    if (*(a2 + 288) == 1)
    {
      v12 = *(a2 + 280);
    }

    else
    {
      v12 = 800.0;
    }

    v13 = fabs(v12);
    return sqrt(v11 * v11 + v13 * 0.004 * (v13 * 0.004));
  }

  return v11;
}

void raven::GnssMeasurementPreprocessor::CheckObservableAndAddToVector(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v8 = a3[1];
  *a2 = *a3;
  a2[1] = v8;
  v9 = a3[2];
  v10 = a3[3];
  v11 = a3[5];
  a2[4] = a3[4];
  a2[5] = v11;
  a2[2] = v9;
  a2[3] = v10;
  a2[3] = *a4;
  *(a2 + 40) = 1;
  if (*(a5 + 23) < 0)
  {
    sub_1D0BC39B4(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v42 = *(a5 + 16);
  }

  v43 = *(a5 + 24);
  CanObservableBeIncluded = raven::GNSSPreprocessedMeasurementsChecker::CanObservableBeIncluded(a2, __p, (a5 + 32), *(a1 + 8));
  v13 = CanObservableBeIncluded;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
    if (!v13)
    {
      return;
    }
  }

  else if (!CanObservableBeIncluded)
  {
    return;
  }

  v14 = *(a5 + 336);
  v15 = *(a5 + 344);
  if (v14 >= v15)
  {
    v26 = *(a5 + 328);
    v27 = v14 - v26;
    v28 = 0x4EC4EC4EC4EC4EC5 * ((v14 - v26) >> 4);
    v29 = v28 + 1;
    if ((v28 + 1) > 0x13B13B13B13B13BLL)
    {
      sub_1D0C5663C();
    }

    v30 = 0x4EC4EC4EC4EC4EC5 * ((v15 - v26) >> 4);
    if (2 * v30 > v29)
    {
      v29 = 2 * v30;
    }

    if (v30 >= 0x9D89D89D89D89DLL)
    {
      v31 = 0x13B13B13B13B13BLL;
    }

    else
    {
      v31 = v29;
    }

    if (v31)
    {
      if (v31 <= 0x13B13B13B13B13BLL)
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    v32 = a2[11];
    v33 = 208 * v28;
    *(v33 + 160) = a2[10];
    *(v33 + 176) = v32;
    *(v33 + 192) = a2[12];
    v34 = a2[7];
    *(v33 + 96) = a2[6];
    *(v33 + 112) = v34;
    v35 = a2[9];
    *(v33 + 128) = a2[8];
    *(v33 + 144) = v35;
    v36 = a2[3];
    *(v33 + 32) = a2[2];
    *(v33 + 48) = v36;
    v37 = a2[5];
    *(v33 + 64) = a2[4];
    *(v33 + 80) = v37;
    v39 = *a2;
    v38 = a2[1];
    v25 = 208 * v28 + 208;
    v40 = v33 - v27;
    *v33 = v39;
    *(v33 + 16) = v38;
    memcpy((v33 - v27), v26, v27);
    *(a5 + 328) = v40;
    *(a5 + 336) = v25;
    *(a5 + 344) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v14 = *a2;
    v16 = a2[1];
    v17 = a2[2];
    v18 = a2[4];
    *(v14 + 3) = a2[3];
    *(v14 + 4) = v18;
    *(v14 + 1) = v16;
    *(v14 + 2) = v17;
    v19 = a2[5];
    v20 = a2[6];
    v21 = a2[8];
    *(v14 + 7) = a2[7];
    *(v14 + 8) = v21;
    *(v14 + 5) = v19;
    *(v14 + 6) = v20;
    v22 = a2[9];
    v23 = a2[10];
    v24 = a2[12];
    *(v14 + 11) = a2[11];
    *(v14 + 12) = v24;
    *(v14 + 9) = v22;
    *(v14 + 10) = v23;
    v25 = (v14 + 208);
  }

  *(a5 + 336) = v25;
}

void sub_1D0C41488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL raven::GNSSPreprocessedMeasurementsChecker::CanObservableBeIncluded(uint64_t a1, uint64_t a2, double *a3, uint64_t a4)
{
  v4 = *(a1 + 96);
  if (!v4)
  {
    return 0;
  }

  v6 = *(a1 + 104);
  if (v6 <= 0.0)
  {
    return 0;
  }

  v7 = *(a1 + 168);
  if (v7 <= 0.0 || *(a1 + 40) != 1 || *(a1 + 112) < *(a4 + 612))
  {
    return 0;
  }

  result = 0;
  v9 = *(a1 + 120);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (LODWORD(v7) & 0x7FFFFFFFu) >= 0x7F800000 || (*(a1 + 120) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return result;
  }

  v11 = *(a1 + 100);
  if (v11 > 5)
  {
    if (*(a1 + 100) > 7u)
    {
      if (v11 == 8)
      {
        if ((*(a4 + 601) & 1) == 0)
        {
          return 0;
        }
      }

      else if (v11 == 10 && *(a4 + 597) != 1)
      {
        return 0;
      }
    }

    else if (v11 == 6)
    {
      if ((*(a4 + 599) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11 == 7 && (*(a4 + 600) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11 - 4 < 2)
  {
    if ((*(a4 + 598) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v11 == 1)
    {
      if ((*(a4 + 602) & 1) == 0 && *(a2 + 24) == 1)
      {
        return 0;
      }

      if (*(a4 + 604))
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v11 != 2)
      {
        goto LABEL_39;
      }

      if ((*(a4 + 603) & 1) == 0 && *(a2 + 24) == 1)
      {
        return 0;
      }

      if (*(a4 + 605))
      {
        goto LABEL_39;
      }
    }

    if (*(a2 + 24) == 5)
    {
      return 0;
    }
  }

LABEL_39:
  if ((v4 - 2) < 3)
  {
    if (!*(a4 + 606))
    {
      return 0;
    }

    if (v4 == 3)
    {
      if (!*(a4 + 609))
      {
        return 0;
      }
    }

    else if (v4 == 4)
    {
      if (!*(a4 + 608))
      {
        return 0;
      }
    }

    else if (!*(a4 + 610))
    {
      return 0;
    }

    if (fabs(v9 / (299792458.0 / v6)) > 15000.0)
    {
      return 0;
    }

    goto LABEL_64;
  }

  if (v4 != 1)
  {
    if (v4 == 5)
    {
      return 0;
    }

    goto LABEL_64;
  }

  if (!*(a4 + 607))
  {
    return 0;
  }

  v12 = *(a2 + 24);
  if (v12 <= 3)
  {
    if (v12 - 1 >= 3)
    {
      if (!*(a2 + 24))
      {
        v20 = 12;
        v19 = 4;
        cnprint::CNPrinter::Print(&v20, &v19, "GNSSPreprocessedMeasurementsChecker invalid constellation,%d");
        return 0;
      }

      goto LABEL_64;
    }

    if (v9 < 15000000.0)
    {
      goto LABEL_78;
    }

    v13 = 30000000.0;
LABEL_63:
    if (v9 <= v13)
    {
      goto LABEL_64;
    }

LABEL_78:
    if (cnprint::CNPrinter::GetLogLevel(0) <= 1)
    {
      v20 = 12;
      v19 = 1;
      sub_1D0BCFAB8(a2);
      cnprint::CNPrinter::Print(&v20, &v19, "Satellite %s invalid range %f");
    }

    return 0;
  }

  if (v12 == 4)
  {
    v18 = *(a2 + 28);
    if (v18 <= 0x3F && ((1 << v18) & 0xF80000000000003ELL) != 0 || a3[11] * a3[11] + a3[15] * a3[15] + a3[19] * a3[19] > 9.0e14)
    {
      if (v9 < 30000000.0 || v9 > 45000000.0)
      {
        if (cnprint::CNPrinter::GetLogLevel(0) <= 1)
        {
          v20 = 12;
          v19 = 1;
          sub_1D0BCFAB8(a2);
          cnprint::CNPrinter::Print(&v20, &v19, "Satellite %s invalid GEO/IGSO range %f");
        }

        return 0;
      }
    }

    else if (v9 < 15000000.0 || v9 > 30000000.0)
    {
      if (cnprint::CNPrinter::GetLogLevel(0) <= 1)
      {
        v20 = 12;
        v19 = 1;
        sub_1D0BCFAB8(a2);
        cnprint::CNPrinter::Print(&v20, &v19, "Satellite %s invalid MEO range %f");
      }

      return 0;
    }

    goto LABEL_64;
  }

  if (v12 == 5 || v12 == 6)
  {
    if (v9 < 30000000.0)
    {
      goto LABEL_78;
    }

    v13 = 45000000.0;
    goto LABEL_63;
  }

LABEL_64:
  v14 = *(a4 + 1568);
  v15 = *(a4 + 648) * 350.0;
  if (v15 >= *(a4 + 656) * 350.0)
  {
    v15 = *(a4 + 656) * 350.0;
  }

  if ((v4 - 1) < 2)
  {
    return *(a1 + 200) - *(a1 + 192) <= v14;
  }

  if ((v4 - 3) >= 2)
  {
    return v4 != 5;
  }

  v16 = -(v15 * *(a4 + 1544));
  if (*(a4 + 544))
  {
    return *(a1 + 192) >= v16;
  }

  result = 0;
  v17 = *(a1 + 192);
  if (*(a1 + 200) - v17 <= v14 && v17 >= v16)
  {
    return 1;
  }

  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::FormInstantaneousDoppler@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  if (*(*(result + 8) + 610) != 1 || (v11 = result, result = sub_1D0C3ACF0(a2), !result) || (v12 = *(a2 + 56), (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || (v13 = *(a2 + 64), v13 <= 0.0) || v13 >= 100.069229)
  {
    *a5 = 0;
    *(a5 + 208) = 0;
    return result;
  }

  v14 = *(v11 + 2304) + *(a2 + 32);
  v15 = *(a2 + 8);
  v16 = *(a2 + 192);
  v17 = v13 * 0.299792458;
  v18 = *(a2 + 72);
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0x7FF8000000000000;
  *(a5 + 96) = 2;
  *(a5 + 100) = v15;
  *(a5 + 104) = a6;
  *(a5 + 112) = v16;
  v19 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a5 + 120) = v12 / -1000000000.0 * 299792458.0;
  *(a5 + 128) = v19;
  *(a5 + 144) = v19;
  *(a5 + 160) = 0x7FF8000000000000;
  *(a5 + 168) = v17;
  *(a5 + 172) = 0;
  *(a5 + 176) = 0;
  *(a5 + 180) = 0;
  *(a5 + 184) = 0;
  *(a5 + 188) = v18;
  *(a5 + 189) = a3;
  *(a5 + 190) = 1;
  *(a5 + 192) = vmulq_f64(vcvtq_f64_s64(vsubq_s64(*(a2 + 16), vdupq_n_s64(v14))), vdupq_n_s64(0x3E112E0BE826D695uLL));
  *(a5 + 208) = 1;
  result = raven::GnssMeasurementPreprocessor::GetMeasurementUncertaintyScaleFactor(v11, a4, a5, &v26);
  v20 = *(v11 + 2304) * 0.000000001 * (*(v11 + 2304) * 0.000000001 * 96.1703842);
  v21 = *(v11 + 8);
  v22 = v26 * v17;
  if (*(v21 + 3844) == 1)
  {
    *(a5 + 168) = v22;
    if ((v28 & 1) == 0)
    {
      goto LABEL_14;
    }

    v23 = v27 * v17;
  }

  else
  {
    v24 = sqrt(v20 + v22 * v22);
    *(a5 + 168) = v24;
    if ((v28 & 1) == 0)
    {
      goto LABEL_14;
    }

    v23 = sqrt(v20 + (v27 * v17) * (v27 * v17));
  }

  *(a5 + 172) = v23;
  *(a5 + 176) = 1;
LABEL_14:
  if (v30 == 1)
  {
    v25 = sqrt(v20 + (v29 * v17) * (v29 * v17));
    if (*(v21 + 3844))
    {
      v25 = v29 * v17;
    }

    *(a5 + 180) = v25;
    *(a5 + 184) = 1;
  }

  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::FormAveragedDoppler@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  if (*(*(result + 8) + 609) == 1 && (v13 = result, result = sub_1D0C3ACF0(a2), result) && (v14 = *(a2 + 80), (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v15 = *(a2 + 88), v15 > 0.0) && v15 < 100.069229 && (v16 = *(a2 + 8), v17 = *(a2 + 192), v32 = 0u, v33 = 0u, v34 = 0u, v35 = 0u, v36 = 0u, *&v37 = 0, *(&v37 + 1) = 0x7FF8000000000000, LODWORD(v38) = 3, BYTE4(v38) = v16, *(&v38 + 1) = a7, LODWORD(v39) = v17, *(&v39 + 1) = v14 * -0.299792458, v40 = vdupq_n_s64(0x7FF8000000000000uLL), v41 = v40, *&v42 = 0x7FF8000000000000, DWORD2(v42) = 2143289344, BYTE12(v42) = 0, LOBYTE(v43) = 0, BYTE4(v43) = 0, BYTE8(v43) = 0, BYTE13(v43) = a3, BYTE14(v43) = 1, v44 = v40, LOBYTE(v45) = 1, result = raven::GnssMeasurementPreprocessor::FillAveragedDopplerStartEndTimes(v13, a2, a4, &v32), (result & 1) != 0))
  {
    if (*(*(v13 + 8) + 579))
    {
      v18 = a2 + 56;
    }

    else
    {
      v18 = a2 + 80;
    }

    v19 = *(v18 + 8) * 0.299792458;
    *(&v42 + 2) = v19;
    BYTE12(v43) = *(v18 + 16);
    result = raven::GnssMeasurementPreprocessor::GetMeasurementUncertaintyScaleFactor(v13, a5, &v32, v28);
    *(&v42 + 2) = v28[0] * v19;
    if (v29 == 1)
    {
      *(&v42 + 3) = v28[1] * v19;
      LOBYTE(v43) = v29;
    }

    if (v31 == 1)
    {
      *(&v43 + 1) = v30 * v19;
      BYTE8(v43) = v31;
    }

    v20 = v43;
    v21 = v44;
    v22 = v41;
    *(a6 + 160) = v42;
    *(a6 + 176) = v20;
    *(a6 + 192) = v21;
    v23 = v39;
    v24 = v40;
    *(a6 + 96) = v38;
    *(a6 + 112) = v23;
    *(a6 + 208) = v45;
    *(a6 + 128) = v24;
    *(a6 + 144) = v22;
    v25 = v35;
    *(a6 + 32) = v34;
    *(a6 + 48) = v25;
    v26 = v37;
    *(a6 + 64) = v36;
    *(a6 + 80) = v26;
    v27 = v33;
    *a6 = v32;
    *(a6 + 16) = v27;
  }

  else
  {
    *a6 = 0;
    *(a6 + 208) = 0;
  }

  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::FillAveragedDopplerStartEndTimes(uint64_t a1, int64x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (*(*(a1 + 8) + 544) != 1)
  {
    *(a4 + 192) = vmulq_f64(vcvtq_f64_s64(vsubq_s64(a2[1], vdupq_n_s64(*(a1 + 2304) + a2[2].i64[0]))), vdupq_n_s64(0x3E112E0BE826D695uLL));
    return 1;
  }

  if ((*(a3 + 8) & 1) == 0)
  {
    v11 = 12;
    v10 = 3;
    cnprint::CNPrinter::Print(&v11, &v10, "#gmp,Average doppler cannot be formed because hw_clock diff is unavailable");
    return 0;
  }

  v4 = *a3;
  if ((*a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v4 >= 0.25 && v4 <= 1.5)
  {
    *(a4 + 192) = -v4;
    *(a4 + 200) = 0;
    return 1;
  }

  v9 = 12;
  v8 = 3;
  cnprint::CNPrinter::Print(&v9, &v8, "#gmp,Duration since last report is unexpected,not forming averaged Doppler,%.3f", a4);
  return 0;
}

void raven::GnssMeasurementPreprocessor::FormAveragedDopplerFromPhaseTracking(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  if ((*(result[1] + 608) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (sub_1D0C3ACF0(a2))
  {
    v16 = *(a2 + 104);
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v17 = *(a2 + 112);
      if (v17 > 0.0 && v17 < 100.069229)
      {
        v18 = *(a2 + 8);
        v19 = *(a2 + 192);
        v20 = *(a2 + 120);
        *a7 = 0u;
        *(a7 + 16) = 0u;
        *(a7 + 32) = 0u;
        *(a7 + 48) = 0u;
        *(a7 + 64) = 0u;
        *(a7 + 80) = 0;
        *(a7 + 88) = 0x7FF8000000000000;
        *(a7 + 96) = 4;
        *(a7 + 100) = v18;
        *(a7 + 104) = a8;
        *(a7 + 112) = v19;
        *(a7 + 120) = v16 * -0.299792458;
        v21 = vdupq_n_s64(0x7FF8000000000000uLL);
        *(a7 + 128) = v21;
        *(a7 + 144) = v21;
        *(a7 + 160) = 0x7FF8000000000000;
        *(a7 + 168) = 2143289344;
        *(a7 + 172) = 0;
        *(a7 + 176) = 0;
        *(a7 + 180) = 0;
        *(a7 + 184) = 0;
        *(a7 + 188) = 0;
        *(a7 + 189) = a4;
        *(a7 + 190) = v20;
        *(a7 + 192) = v21;
        *(a7 + 208) = 1;
        if (raven::GnssMeasurementPreprocessor::FillAveragedDopplerStartEndTimes(result, a2, a5, a7))
        {
          v22 = *(a2 + 112) * 0.299792458;
          *(a7 + 168) = v22;
          *(a7 + 188) = *(a2 + 121);
          raven::GnssMeasurementPreprocessor::GetMeasurementUncertaintyScaleFactor(result, a6, a7, &v42);
          *(a7 + 168) = *&v42 * v22;
          v23 = BYTE8(v42);
          if (BYTE8(v42) == 1)
          {
            *(a7 + 172) = *(&v42 + 1) * v22;
            *(a7 + 176) = v23;
          }

          v24 = v43;
          if (v43 == 1)
          {
            *(a7 + 180) = *(&v42 + 3) * v22;
            *(a7 + 184) = v24;
          }

          return;
        }
      }
    }
  }

  if (*(result + 2600) != 1 || !sub_1D0C3ACF0(a2) || !sub_1D0C42220(a2 + 128))
  {
    goto LABEL_18;
  }

  if ((result[325] & 1) == 0)
  {
    goto LABEL_33;
  }

  raven::GnssPhaseTrackingStore::FormAveragedDoppler((result + 319), a3, a2, result[288] + *(a2 + 32), &v42);
  if ((v55 & 1) == 0)
  {
LABEL_18:
    *a7 = 0;
    *(a7 + 208) = 0;
    return;
  }

  *(&v48 + 1) = a8;
  if (*(result[1] + 579))
  {
    v25 = *(a2 + 64) * 0.299792458;
    *(&v52 + 2) = v25;
  }

  else
  {
    v25 = *(&v52 + 2);
  }

  raven::GnssMeasurementPreprocessor::GetMeasurementUncertaintyScaleFactor(result, a6, &v42, &v37);
  if ((v55 & 1) == 0)
  {
LABEL_33:
    sub_1D0C42F28();
  }

  v26 = v25 * v37;
  v27 = 0.01;
  if ((v25 * v37) < 0.01)
  {
    v26 = 0.01;
  }

  *(&v52 + 2) = v26;
  if (v39 == 1)
  {
    v28 = v25 * v38;
    if ((v25 * v38) < 0.01)
    {
      v28 = 0.01;
    }

    *(&v52 + 3) = v28;
    LOBYTE(v53) = v39;
  }

  if (v41 == 1)
  {
    if ((v25 * v40) >= 0.01)
    {
      v27 = v25 * v40;
    }

    *(&v53 + 1) = v27;
    BYTE8(v53) = v41;
  }

  v29 = v53;
  v30 = v54;
  v31 = v51;
  *(a7 + 160) = v52;
  *(a7 + 176) = v29;
  *(a7 + 192) = v30;
  v32 = v49;
  v33 = v50;
  *(a7 + 96) = v48;
  *(a7 + 112) = v32;
  *(a7 + 208) = v55;
  *(a7 + 128) = v33;
  *(a7 + 144) = v31;
  v34 = v45;
  *(a7 + 32) = v44;
  *(a7 + 48) = v34;
  v35 = v47;
  *(a7 + 64) = v46;
  *(a7 + 80) = v35;
  v36 = v43;
  *a7 = v42;
  *(a7 + 16) = v36;
}

void raven::GnssMeasurementPreprocessor::SelectAndPopulateDoppler(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7, uint64_t a8)
{
  v27[0] = a3;
  v27[1] = a2;
  v15 = *(a1 + 8);
  if (v15[546] == 1 && v15[610] == 1)
  {
    if (*(a4 + 208) == 1)
    {
      v25 = *(a2 + 11);
      v26 = 1;
      v17 = sub_1D0C424F0(v27, a4, &v25);
      if ((v17 & 1) == 0)
      {
        if (cnprint::CNPrinter::GetLogLevel(v17) <= 1)
        {
          LOWORD(v25) = 12;
          LOBYTE(v24) = 1;
          v18 = sub_1D0BCFAB8(a8);
          cnprint::CNPrinter::Print(&v25, &v24, "#gmp,Invalidated averaged_doppler due to cross-check,SV,%s", v18);
        }

        if (*(a4 + 208) == 1)
        {
          *(a4 + 208) = 0;
        }
      }
    }

    if (sub_1D0C3ACF0(a2) && (a2[13] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && a2[14] > 0.0)
    {
      v25 = *(a2 + 14);
      v19 = 1;
    }

    else
    {
      v19 = 0;
      LOBYTE(v25) = 0;
    }

    v26 = v19;
    if (*(a5 + 208) == 1)
    {
      v20 = sub_1D0C424F0(v27, a5, &v25);
      if ((v20 & 1) == 0)
      {
        if (cnprint::CNPrinter::GetLogLevel(v20) <= 1)
        {
          v24 = 12;
          v23 = 1;
          v21 = sub_1D0BCFAB8(a8);
          cnprint::CNPrinter::Print(&v24, &v23, "#gmp,Invalidated averaged_doppler_from_phase_tracking due to cross-check,SV,%s", v21);
        }

        if (*(a5 + 208) == 1)
        {
          *(a5 + 208) = 0;
        }
      }
    }

    v15 = *(a1 + 8);
  }

  v22 = v15[581];
  if (*(a5 + 208) == 1)
  {
    raven::GnssMeasurementPreprocessor::CheckObservableAndAddToVector(a1, a5, a6, a7, a8);
    if ((v22 & 1) == 0)
    {
      return;
    }

    if (*(a4 + 208) == 1)
    {
      raven::GnssMeasurementPreprocessor::CheckObservableAndAddToVector(a1, a4, a6, a7, a8);
    }
  }

  else if (*(a4 + 208))
  {
    raven::GnssMeasurementPreprocessor::CheckObservableAndAddToVector(a1, a4, a6, a7, a8);
    if (!v22)
    {
      return;
    }
  }

  if (*(a3 + 208) == 1)
  {

    raven::GnssMeasurementPreprocessor::CheckObservableAndAddToVector(a1, a3, a6, a7, a8);
  }
}

uint64_t sub_1D0C424F0(cnprint::CNPrinter *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (*(*a1 + 208) == 1)
  {
    v6 = *(a1 + 1);
    a1 = sub_1D0C3ACF0(v6);
    if (a1)
    {
      if ((*(v6 + 56) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(v6 + 64) > 0.0)
      {
        v7 = *v5;
        if ((*(*v5 + 208) & 1) == 0)
        {
          sub_1D0C42F28();
        }

        if (*(v7 + 168) < 30.0 && (*(a3 + 8) != 1 || *a3 <= *(*(v5 + 1) + 64) * 3.0) && vabdd_f64(*(a2 + 120), *(v7 + 120)) < 5.0)
        {
          return 1;
        }
      }
    }
  }

  if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v12 = 12;
    v11 = 1;
    v9 = -1.0;
    v10 = -1.0;
    if (*(*v5 + 208) == 1)
    {
      v10 = *(*v5 + 120);
    }

    if (*(a3 + 8))
    {
      v9 = *a3;
    }

    cnprint::CNPrinter::Print(&v12, &v11, "#gmp,Doppler cross-check failure details,inst_val,%.2f,test_val,%.2f,inst_unc,%.2f,test_unc,%.2f,band,%d,cn0,%.1f", v10, *(a2 + 120), *(*(v5 + 1) + 64), v9, *(*(v5 + 1) + 8), *(*(v5 + 1) + 192));
  }

  return 0;
}

uint64_t raven::GnssSvDatabase::AggregateHealthL5(_BYTE *a1)
{
  v1 = 0;
  v3[0] = a1[221];
  v3[1] = a1[213];
  v3[2] = a1[215];
  v3[3] = a1[217];
  v3[4] = a1[219];
  while (1)
  {
    result = v3[v1];
    if ((result - 1) < 2)
    {
      break;
    }

    if (++v1 == 5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D0C426B4(_BYTE *a1)
{
  if (*a1 != 1)
  {
    return 0;
  }

  v1 = a1[1];
  v2 = a1[2];
  v3 = (v1 ^ 1) & v2;
  if ((v1 ^ 1) & 1) == 0 && (v2)
  {
    v3 = 1;
    if (a1[4])
    {
      return 0x40F5180000000000;
    }
  }

  v5 = 0x3F947AE147AE147BLL;
  if (a1[3])
  {
    v5 = 0x4000000000000000;
  }

  if (!v3)
  {
    v5 = 0x3F847AE147AE147BLL;
  }

  if (a1[1])
  {
    return v5;
  }

  else
  {
    return 0x3F50624DD2F1A9FCLL;
  }
}

__n128 raven::GnssPhaseTrackingStore::FormAveragedDoppler@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v13 = *(a3 + 8) | ((*(a2 + 28) + 1000 * *(a2 + 24)) << 8);
  v14 = &v13;
  v9 = sub_1D0C42810((a1 + 8), &v13, &std::piecewise_construct, &v14);
  raven::GnssPhaseTrackingStore::FormAveragedDopplerWorker(a1, (v9 + 3), a3, a4, a5);
  result = *(a3 + 128);
  v11 = *(a3 + 144);
  v12 = *(a3 + 160);
  *(v9 + 72) = *(a3 + 176);
  *(v9 + 7) = v12;
  *(v9 + 5) = v11;
  *(v9 + 3) = result;
  return result;
}

uint64_t *sub_1D0C42810(float *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void raven::GnssPhaseTrackingStore::FormAveragedDopplerWorker(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!sub_1D0C42220(a2) || !sub_1D0C42220(a3 + 128) || (*(a2 + 48) & 1) != 0 || *(a3 + 176) == 1)
  {
    goto LABEL_14;
  }

  if ((*(a3 + 152) & 1) == 0 || (*(a2 + 24) & 1) == 0)
  {
    sub_1D0C42F28();
  }

  v10 = *(a3 + 144);
  v11 = *(a2 + 16);
  if (v10 <= v11)
  {
    v24 = 12;
    v23 = 4;
    cnprint::CNPrinter::Print(&v24, &v23, "#phase_store,invalid time order,last,%llu,curr,%llu");
LABEL_14:
    v20 = 0;
    *a5 = 0;
    goto LABEL_15;
  }

  if (v10 != a4)
  {
    v22 = 12;
    v21 = 3;
    cnprint::CNPrinter::Print(&v22, &v21, "#phase_store,desired applicability does not match data,desired,%llu,curr,%llu");
    goto LABEL_14;
  }

  v12 = (a4 - v11) * 0.000000001;
  if (v12 < *(*a1 + 624) || v12 > *(*a1 + 632))
  {
    goto LABEL_14;
  }

  v13 = *(a3 + 168);
  v14 = *(a3 + 160) - *(a2 + 32);
  v15 = *(a3 + 8);
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  v16 = *(a3 + 192);
  v17 = *(a3 + 196);
  *(a5 + 80) = 0;
  *(a5 + 88) = 0x7FF8000000000000;
  *(a5 + 96) = 4;
  *(a5 + 100) = v15;
  *(a5 + 104) = 0x7FF8000000000000;
  v18 = 0.299792458 / v12 * v13;
  *(a5 + 112) = v16;
  *(a5 + 120) = 0.299792458 / v12 * v14;
  v19 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a5 + 128) = v19;
  *(a5 + 144) = v19;
  *(a5 + 160) = 0x7FF8000000000000;
  *(a5 + 168) = v18;
  *(a5 + 172) = 0;
  *(a5 + 176) = 0;
  *(a5 + 180) = 0;
  *(a5 + 184) = 0;
  *(a5 + 188) = 0;
  *(a5 + 189) = v17;
  *(a5 + 192) = -v12;
  *(a5 + 200) = 0;
  v20 = 1;
LABEL_15:
  *(a5 + 208) = v20;
}

BOOL sub_1D0C42E1C(_DWORD *a1)
{
  if ((a1[1] & 0x7FFFFFFFu) > 0x7F7FFFFF || (a1[8] & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return 0;
  }

  v2 = a1[10];
  if ((a1[9] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    if ((v2 & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      return 0;
    }
  }

  else if ((v2 & 0x7FFFFFFFu) < 0x7F800000)
  {
    return 0;
  }

  if ((a1[11] & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return 0;
  }

  v3 = a1[13];
  if ((a1[12] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    if ((v3 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if ((v3 & 0x7FFFFFFFu) < 0x7F800000)
  {
    return 0;
  }

LABEL_13:
  if ((a1[14] & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return 0;
  }

  v4 = a1[16];
  v5 = (v4 & 0x7FFFFFFFu) > 0x7F7FFFFF;
  v6 = (v4 & 0x7FFFFFFFu) < 0x7F800000;
  if ((a1[15] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

void sub_1D0C42F28()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

uint64_t sub_1D0C42F74(_BYTE *a1)
{
  if (*a1 != 1)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 == 1)
  {
    v2 = a1[4];
    if ((a1[2] & 1) == 0)
    {
      if ((a1[4] & 1) == 0)
      {
        if (a1[3])
        {
          return 0x4024000000000000;
        }

        else
        {
          return 0x3F947AE147AE147BLL;
        }
      }

      return 0x4122750000000000;
    }
  }

  else
  {
    if (a1[2] != 1)
    {
      return 0x3F50624DD2F1A9FCLL;
    }

    v2 = a1[4];
  }

  if (v2)
  {
    return 0x4122750000000000;
  }

  if ((a1[3] & v1) != 0)
  {
    return 0x4024000000000000;
  }

  else
  {
    return 0x3FB999999999999ALL;
  }
}

uint64_t raven::GnssMeasurementPreprocessor::OrderGnssMeasurements(cnprint::CNPrinter *a1, __int128 *a2)
{
  v2 = *a1;
  if (v2)
  {
    sub_1D0C4333C(&__p, (*(a2 + 1) - *a2) >> 4);
    v4 = __p;
    v5 = v24;
    if (__p != v24)
    {
      v6 = 0;
      v7 = (v24 - __p - 8) >> 3;
      v8 = vdupq_n_s64(v7);
      v9 = (v7 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v10 = xmmword_1D0E7DD30;
      v11 = vdupq_n_s64(2uLL);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v8, v10));
        if (v12.i8[0])
        {
          v4[v6] = v6;
        }

        if (v12.i8[4])
        {
          v4[v6 + 1] = v6 + 1;
        }

        v6 += 2;
        v10 = vaddq_s64(v10, v11);
      }

      while (v9 != v6);
    }

    v13 = 126 - 2 * __clz(v5 - v4);
    v25[0] = a2;
    if (v5 == v4)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    sub_1D0C433B4(v4, v5, v25, v14, 1);
    v21 = 0uLL;
    v22 = 0;
    v15 = v24 - __p;
    if (v24 != __p)
    {
      if (!((v15 >> 3) >> 60))
      {
        v25[4] = &v21;
        sub_1D0BCAB88(&v21, v15 >> 3);
      }

      sub_1D0D31B50();
    }

    v16 = *(&v21 + 1);
    v17 = *a2;
    v18 = v22;
    *a2 = v21;
    *(a2 + 1) = v16;
    v21 = v17;
    v19 = *(a2 + 2);
    *(a2 + 2) = v18;
    v22 = v19;
    v25[0] = &v21;
    sub_1D0BBBD80(v25);
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    LOWORD(v25[0]) = 12;
    LOBYTE(__p) = 1;
    cnprint::CNPrinter::Print(v25, &__p, "#gmp,OrderGnssMeasurements,not configured");
  }

  return v2;
}

void sub_1D0C43308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t *a15)
{
  a15 = &a9;
  sub_1D0BBBD80(&a15);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1D0C4333C(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_1D0C39994(a1, a2);
  }

  return a1;
}

void sub_1D0C43398(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0C433B4(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  k = v9;
  while (1)
  {
    v9 = k;
    v12 = a2 - k;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v116 = **a3;

          return sub_1D0C5112C(k, k + 1, a2 - 1, v116);
        case 4:

          return sub_1D0E0FE10(k, k + 1, k + 2, a2 - 1, a3);
        case 5:

          return sub_1D0E10034(k, k + 1, k + 2, k + 3, a2 - 1, a3);
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v109 = *(a2 - 1);
        v110 = **a3;
        v111 = *k;
        v112 = (v110 + 16 * *k);
        v113 = *(v110 + 16 * v109);
        if (v113)
        {
          v114 = *(v113 + 328);
          v115 = v114 == *(v113 + 336) || *(v114 + 189) != 1;
        }

        else
        {
          v115 = -1;
        }

        v239 = *v112;
        if (v239)
        {
          v240 = *(v239 + 328);
          v241 = v240 == *(v239 + 336) || *(v240 + 189) != 1;
        }

        else
        {
          v241 = -1;
        }

        v242 = v115 <= v241;
        if (v115 == v241)
        {
          if (v113)
          {
            v243 = v239 == 0;
          }

          else
          {
            v243 = 1;
          }

          if (v243)
          {
            return result;
          }

          v242 = *(v113 + 264) <= *(v239 + 264);
        }

        if (!v242)
        {
          *k = v109;
          *(a2 - 1) = v111;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (k == a2)
      {
        return result;
      }

      v138 = (v12 - 2) >> 1;
      v139 = *a3;
      v140 = v138;
      while (1)
      {
        v141 = v140;
        if (v138 < v140)
        {
          goto LABEL_382;
        }

        v142 = (2 * v140) | 1;
        v143 = &k[v142];
        v144 = 2 * v140 + 2;
        v145 = *v139;
        if (v144 < v12)
        {
          v146 = *(v145 + 16 * *v143);
          if (v146)
          {
            v147 = *(v146 + 328);
            v148 = v147 == *(v146 + 336) || *(v147 + 189) != 1;
          }

          else
          {
            v148 = -1;
          }

          v149 = *(v145 + 16 * v143[1]);
          if (v149)
          {
            v150 = *(v149 + 328);
            v151 = v150 == *(v149 + 336) || *(v150 + 189) != 1;
          }

          else
          {
            v151 = -1;
          }

          v152 = v148 <= v151;
          if (v148 == v151)
          {
            if (v146)
            {
              v153 = v149 == 0;
            }

            else
            {
              v153 = 1;
            }

            if (v153)
            {
              goto LABEL_325;
            }

            v152 = *(v146 + 264) <= *(v149 + 264);
          }

          if (!v152)
          {
            ++v143;
            v142 = 2 * v141 + 2;
          }
        }

LABEL_325:
        result = *(v145 + 16 * *v143);
        if (result)
        {
          v154 = *(result + 328);
          v155 = v154 == *(result + 336) || *(v154 + 189) != 1;
        }

        else
        {
          v155 = -1;
        }

        v156 = k[v141];
        v157 = *(v145 + 16 * v156);
        if (v157)
        {
          v158 = *(v157 + 328);
          v159 = v158 == *(v157 + 336) || *(v158 + 189) != 1;
        }

        else
        {
          v159 = -1;
        }

        v160 = v155 <= v159;
        if (v155 != v159)
        {
          goto LABEL_341;
        }

        if (result)
        {
          v161 = v157 == 0;
        }

        else
        {
          v161 = 1;
        }

        if (!v161)
        {
          v160 = *(result + 264) <= *(v157 + 264);
LABEL_341:
          if (!v160)
          {
            goto LABEL_382;
          }
        }

        k[v141] = *v143;
        while (1)
        {
          if (v138 < v142)
          {
            goto LABEL_381;
          }

          v162 = v143;
          v163 = 2 * v142;
          v142 = (2 * v142) | 1;
          v143 = &k[v142];
          v164 = v163 + 2;
          if (v164 < v12)
          {
            v165 = *(v145 + 16 * *v143);
            if (v165)
            {
              v166 = *(v165 + 328);
              v167 = v166 == *(v165 + 336) || *(v166 + 189) != 1;
            }

            else
            {
              v167 = -1;
            }

            v168 = *(v145 + 16 * v143[1]);
            if (v168)
            {
              v169 = *(v168 + 328);
              v170 = v169 == *(v168 + 336) || *(v169 + 189) != 1;
            }

            else
            {
              v170 = -1;
            }

            v171 = v167 <= v170;
            if (v167 == v170)
            {
              if (v165)
              {
                v172 = v168 == 0;
              }

              else
              {
                v172 = 1;
              }

              if (v172)
              {
                goto LABEL_364;
              }

              v171 = *(v165 + 264) <= *(v168 + 264);
            }

            if (!v171)
            {
              ++v143;
              v142 = v164;
            }
          }

LABEL_364:
          result = *v143;
          v173 = *(v145 + 16 * *v143);
          if (v173)
          {
            v174 = *(v173 + 328);
            if (v174 == *(v173 + 336))
            {
              v175 = 1;
              if (!v157)
              {
LABEL_370:
                v177 = -1;
                goto LABEL_374;
              }
            }

            else
            {
              v175 = *(v174 + 189) != 1;
              if (!v157)
              {
                goto LABEL_370;
              }
            }
          }

          else
          {
            v175 = -1;
            if (!v157)
            {
              goto LABEL_370;
            }
          }

          v176 = *(v157 + 328);
          v177 = v176 == *(v157 + 336) || *(v176 + 189) != 1;
LABEL_374:
          v178 = v175 <= v177;
          if (v175 != v177)
          {
            goto LABEL_378;
          }

          if (v157 && v173)
          {
            break;
          }

LABEL_380:
          *v162 = result;
        }

        v178 = *(v173 + 264) <= *(v157 + 264);
LABEL_378:
        if (v178)
        {
          goto LABEL_380;
        }

        v143 = v162;
LABEL_381:
        *v143 = v156;
LABEL_382:
        v140 = v141 - 1;
        if (!v141)
        {
LABEL_401:
          v188 = 0;
          v189 = *k;
          v190 = *a3;
          v191 = k;
          while (1)
          {
            v192 = v191;
            v193 = &v191[v188];
            v191 = v193 + 1;
            v194 = 2 * v188;
            v188 = (2 * v188) | 1;
            v195 = v194 + 2;
            if (v195 < v12)
            {
              v198 = v193[2];
              v197 = v193 + 2;
              v196 = v198;
              v199 = *(*v190 + 16 * *(v197 - 1));
              if (v199)
              {
                v200 = *(v199 + 328);
                result = v200 == *(v199 + 336) || *(v200 + 189) != 1;
              }

              else
              {
                result = 0xFFFFFFFFLL;
              }

              v201 = *(*v190 + 16 * v196);
              if (v201)
              {
                v202 = *(v201 + 328);
                v203 = v202 == *(v201 + 336) || *(v202 + 189) != 1;
              }

              else
              {
                v203 = -1;
              }

              v204 = result <= v203;
              if (result != v203)
              {
                goto LABEL_419;
              }

              if (v199 && v201 != 0)
              {
                break;
              }
            }

LABEL_421:
            *v192 = *v191;
            if (v188 > ((v12 - 2) >> 1))
            {
              if (v191 == --a2)
              {
                *v191 = v189;
                goto LABEL_445;
              }

              *v191 = *a2;
              *a2 = v189;
              v206 = (v191 - k + 8) >> 3;
              v207 = v206 - 2;
              if (v206 < 2)
              {
                goto LABEL_445;
              }

              v180 = v207 >> 1;
              v187 = &k[v207 >> 1];
              v208 = *v190;
              v209 = *(v208 + 16 * *v187);
              if (v209)
              {
                v210 = *(v209 + 328);
                result = v210 == *(v209 + 336) || *(v210 + 189) != 1;
              }

              else
              {
                result = 0xFFFFFFFFLL;
              }

              v211 = *v191;
              v212 = *(v208 + 16 * *v191);
              if (v212)
              {
                v213 = *(v212 + 328);
                v214 = v213 == *(v212 + 336) || *(v213 + 189) != 1;
              }

              else
              {
                v214 = -1;
              }

              v215 = result <= v214;
              if (result != v214)
              {
LABEL_441:
                if (v215)
                {
                  goto LABEL_445;
                }

                *v191 = *v187;
                if (v207 < 2)
                {
LABEL_443:
                  v181 = v187;
LABEL_444:
                  *v181 = v211;
                  goto LABEL_445;
                }

                while (2)
                {
                  v179 = v180 - 1;
                  v180 = (v180 - 1) >> 1;
                  v181 = &k[v180];
                  v182 = *(v208 + 16 * *v181);
                  if (v182)
                  {
                    v183 = *(v182 + 328);
                    if (v183 == *(v182 + 336))
                    {
                      result = 1;
                      if (v212)
                      {
                        goto LABEL_387;
                      }
                    }

                    else
                    {
                      result = *(v183 + 189) != 1;
                      if (v212)
                      {
LABEL_387:
                        v184 = *(v212 + 328);
                        v185 = v184 == *(v212 + 336) || *(v184 + 189) != 1;
LABEL_394:
                        v186 = result <= v185;
                        if (result == v185)
                        {
                          if (!v212 || !v182)
                          {
                            goto LABEL_443;
                          }

                          v186 = *(v182 + 264) <= *(v212 + 264);
                        }

                        if (v186)
                        {
                          goto LABEL_443;
                        }

                        *v187 = *v181;
                        v187 = &k[v180];
                        if (v179 <= 1)
                        {
                          goto LABEL_444;
                        }

                        continue;
                      }
                    }
                  }

                  else
                  {
                    result = 0xFFFFFFFFLL;
                    if (v212)
                    {
                      goto LABEL_387;
                    }
                  }

                  break;
                }

                v185 = -1;
                goto LABEL_394;
              }

              if (v209)
              {
                v216 = v212 == 0;
              }

              else
              {
                v216 = 1;
              }

              if (!v216)
              {
                v215 = *(v209 + 264) <= *(v212 + 264);
                goto LABEL_441;
              }

LABEL_445:
              v35 = v12-- <= 2;
              if (v35)
              {
                return result;
              }

              goto LABEL_401;
            }
          }

          v204 = *(v199 + 264) <= *(v201 + 264);
LABEL_419:
          if (!v204)
          {
            v191 = v197;
            v188 = v195;
          }

          goto LABEL_421;
        }
      }
    }

    v13 = v12 >> 1;
    v14 = &k[v12 >> 1];
    v15 = **a3;
    if (v12 < 0x81)
    {
      result = sub_1D0C5112C(&v9[v12 >> 1], v9, a2 - 1, v15);
    }

    else
    {
      sub_1D0C5112C(v9, &v9[v12 >> 1], a2 - 1, v15);
      sub_1D0C5112C(v9 + 1, v14 - 1, a2 - 2, **a3);
      sub_1D0C5112C(v9 + 2, &v9[v13 + 1], a2 - 3, **a3);
      result = sub_1D0C5112C(v14 - 1, v14, &v9[v13 + 1], **a3);
      v16 = *v9;
      *v9 = *v14;
      *v14 = v16;
    }

    --a4;
    v17 = *v9;
    v18 = **a3;
    if (a5)
    {
      v19 = *(v18 + 16 * v17);
LABEL_35:
      for (i = 0; ; ++i)
      {
        v29 = v9[i + 1];
        v30 = *(v18 + 16 * v29);
        if (v30)
        {
          v31 = *(v30 + 328);
          if (v31 == *(v30 + 336))
          {
            v32 = 1;
            if (!v19)
            {
LABEL_42:
              v34 = -1;
              goto LABEL_46;
            }
          }

          else
          {
            v32 = *(v31 + 189) != 1;
            if (!v19)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          v32 = -1;
          if (!v19)
          {
            goto LABEL_42;
          }
        }

        v33 = *(v19 + 328);
        v34 = v33 == *(v19 + 336) || *(v33 + 189) != 1;
LABEL_46:
        v35 = v32 <= v34;
        if (v32 != v34)
        {
          goto LABEL_50;
        }

        if (!v19 || !v30)
        {
          break;
        }

        v35 = *(v30 + 264) <= *(v19 + 264);
LABEL_50:
        if (v35)
        {
          break;
        }
      }

      v36 = &v9[i];
      v37 = &v9[i + 1];
      j = a2 - 1;
      if (i * 8)
      {
        while (1)
        {
          v39 = *(v18 + 16 * *j);
          if (v39)
          {
            v40 = *(v39 + 328);
            if (v40 == *(v39 + 336))
            {
              v41 = 1;
              if (!v19)
              {
LABEL_59:
                v43 = -1;
                goto LABEL_63;
              }
            }

            else
            {
              v41 = *(v40 + 189) != 1;
              if (!v19)
              {
                goto LABEL_59;
              }
            }
          }

          else
          {
            v41 = -1;
            if (!v19)
            {
              goto LABEL_59;
            }
          }

          v42 = *(v19 + 328);
          v43 = v42 == *(v19 + 336) || *(v42 + 189) != 1;
LABEL_63:
          v44 = v41 <= v43;
          if (v41 == v43)
          {
            if (!v19 || !v39)
            {
              goto LABEL_69;
            }

            v44 = *(v39 + 264) <= *(v19 + 264);
          }

          if (!v44)
          {
            goto LABEL_93;
          }

LABEL_69:
          --j;
        }
      }

      j = a2;
      if (v37 < a2)
      {
        for (j = a2 - 1; ; --j)
        {
          v45 = *(v18 + 16 * *j);
          if (v45)
          {
            v46 = *(v45 + 328);
            if (v46 == *(v45 + 336))
            {
              v47 = 1;
              if (!v19)
              {
LABEL_78:
                v49 = -1;
                goto LABEL_82;
              }
            }

            else
            {
              v47 = *(v46 + 189) != 1;
              if (!v19)
              {
                goto LABEL_78;
              }
            }
          }

          else
          {
            v47 = -1;
            if (!v19)
            {
              goto LABEL_78;
            }
          }

          v48 = *(v19 + 328);
          v49 = v48 == *(v19 + 336) || *(v48 + 189) != 1;
LABEL_82:
          if (v47 == v49)
          {
            if (v19 && v45)
            {
              if (v37 >= j || *(v45 + 264) > *(v19 + 264))
              {
                break;
              }
            }

            else if (v37 >= j)
            {
              break;
            }
          }

          else if (v37 >= j || v47 > v49)
          {
            break;
          }
        }
      }

LABEL_93:
      if (v37 >= j)
      {
        goto LABEL_129;
      }

      v50 = *j;
      v51 = v37;
      v52 = j;
      while (2)
      {
        *v51++ = v50;
        *v52 = v29;
        while (2)
        {
          v29 = *v51;
          v53 = *(v18 + 16 * *v51);
          if (!v53)
          {
            v55 = -1;
            if (v19)
            {
              goto LABEL_99;
            }

            goto LABEL_102;
          }

          v54 = *(v53 + 328);
          if (v54 == *(v53 + 336))
          {
            v55 = 1;
            if (v19)
            {
              goto LABEL_99;
            }

LABEL_102:
            v57 = -1;
            goto LABEL_106;
          }

          v55 = *(v54 + 189) != 1;
          if (!v19)
          {
            goto LABEL_102;
          }

LABEL_99:
          v56 = *(v19 + 328);
          v57 = v56 == *(v19 + 336) || *(v56 + 189) != 1;
LABEL_106:
          v58 = v55 <= v57;
          if (v55 != v57)
          {
LABEL_110:
            if (v58)
            {
              goto LABEL_112;
            }

            ++v51;
            continue;
          }

          break;
        }

        if (v19 && v53)
        {
          v58 = *(v53 + 264) <= *(v19 + 264);
          goto LABEL_110;
        }

LABEL_112:
        while (2)
        {
          while (2)
          {
            v59 = *--v52;
            v50 = v59;
            v60 = *(v18 + 16 * v59);
            if (!v60)
            {
              v62 = -1;
              if (v19)
              {
                goto LABEL_115;
              }

              goto LABEL_118;
            }

            v61 = *(v60 + 328);
            if (v61 == *(v60 + 336))
            {
              v62 = 1;
              if (v19)
              {
                goto LABEL_115;
              }

LABEL_118:
              v64 = -1;
              goto LABEL_122;
            }

            v62 = *(v61 + 189) != 1;
            if (!v19)
            {
              goto LABEL_118;
            }

LABEL_115:
            v63 = *(v19 + 328);
            v64 = v63 == *(v19 + 336) || *(v63 + 189) != 1;
LABEL_122:
            v65 = v62 <= v64;
            if (v62 != v64)
            {
              goto LABEL_126;
            }

            if (!v19 || !v60)
            {
              continue;
            }

            break;
          }

          v65 = *(v60 + 264) <= *(v19 + 264);
LABEL_126:
          if (v65)
          {
            continue;
          }

          break;
        }

        if (v51 < v52)
        {
          continue;
        }

        break;
      }

      v36 = v51 - 1;
LABEL_129:
      if (v36 != v9)
      {
        *v9 = *v36;
      }

      *v36 = v17;
      if (v37 < j)
      {
LABEL_134:
        result = sub_1D0C433B4(v9, v36, a3, a4, a5 & 1);
        a5 = 0;
        k = v36 + 1;
      }

      else
      {
        v66 = sub_1D0E102F0(v9, v36, a3);
        k = v36 + 1;
        result = sub_1D0E102F0(v36 + 1, a2, a3);
        if (result)
        {
          a2 = v36;
          if (v66)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v66)
        {
          goto LABEL_134;
        }
      }
    }

    else
    {
      v20 = *(v18 + 16 * *(v9 - 1));
      if (v20)
      {
        v21 = *(v20 + 328);
        v22 = v21 == *(v20 + 336) || *(v21 + 189) != 1;
      }

      else
      {
        v22 = -1;
      }

      v19 = *(v18 + 16 * v17);
      if (v19)
      {
        v23 = *(v19 + 328);
        v24 = v23 == *(v19 + 336) || *(v23 + 189) != 1;
      }

      else
      {
        v24 = -1;
      }

      if (v22 == v24)
      {
        if (v20)
        {
          v25 = v19 == 0;
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          if (*(v20 + 264) > *(v19 + 264))
          {
            goto LABEL_35;
          }

          v26 = *v10;
          v27 = (v18 + 16 * *v10);
LABEL_136:
          v67 = *(v19 + 328);
          v68 = v67 == *(v19 + 336) || *(v67 + 189) != 1;
          goto LABEL_140;
        }
      }

      else if (v22 > v24)
      {
        goto LABEL_35;
      }

      v26 = *v10;
      v27 = (v18 + 16 * *v10);
      if (v19)
      {
        goto LABEL_136;
      }

      v68 = -1;
LABEL_140:
      v69 = *v27;
      if (v69)
      {
        v70 = *(v69 + 328);
        v71 = v70 == *(v69 + 336) || *(v70 + 189) != 1;
      }

      else
      {
        v71 = -1;
      }

      v72 = v68 <= v71;
      if (v68 != v71)
      {
        goto LABEL_149;
      }

      if (v19 && v69)
      {
        v72 = *(v19 + 264) <= *(v69 + 264);
LABEL_149:
        if (!v72)
        {
          k = v9 + 1;
          if (!v19)
          {
LABEL_156:
            v74 = -1;
            goto LABEL_157;
          }

          while (2)
          {
            v73 = *(v19 + 328);
            v74 = v73 == *(v19 + 336) || *(v73 + 189) != 1;
LABEL_157:
            v75 = *(v18 + 16 * *k);
            if (v75)
            {
              v76 = *(v75 + 328);
              v77 = v76 == *(v75 + 336) || *(v76 + 189) != 1;
            }

            else
            {
              v77 = -1;
            }

            v78 = v74 <= v77;
            if (v74 == v77)
            {
              if (v19 && v75)
              {
                v78 = *(v19 + 264) <= *(v75 + 264);
                goto LABEL_166;
              }
            }

            else
            {
LABEL_166:
              if (!v78)
              {
                goto LABEL_167;
              }
            }

            ++k;
            if (!v19)
            {
              goto LABEL_156;
            }

            continue;
          }
        }
      }

      for (k = v9 + 1; k < a2; ++k)
      {
        if (v19)
        {
          v103 = *(v19 + 328);
          v104 = v103 == *(v19 + 336) || *(v103 + 189) != 1;
        }

        else
        {
          v104 = -1;
        }

        v105 = *(v18 + 16 * *k);
        if (v105)
        {
          v106 = *(v105 + 328);
          v107 = v106 == *(v105 + 336) || *(v106 + 189) != 1;
        }

        else
        {
          v107 = -1;
        }

        v108 = v104 <= v107;
        if (v104 == v107)
        {
          if (!v19 || !v105)
          {
            continue;
          }

          v108 = *(v19 + 264) <= *(v105 + 264);
        }

        if (!v108)
        {
          break;
        }
      }

LABEL_167:
      m = a2;
      if (k < a2)
      {
        for (m = a2 - 1; !v19; v26 = v86)
        {
          v81 = -1;
LABEL_173:
          v82 = *(v18 + 16 * v26);
          if (v82)
          {
            v83 = *(v82 + 328);
            v84 = v83 == *(v82 + 336) || *(v83 + 189) != 1;
          }

          else
          {
            v84 = -1;
          }

          v85 = v81 <= v84;
          if (v81 == v84)
          {
            if (!v19 || !v82)
            {
              goto LABEL_185;
            }

            v85 = *(v19 + 264) <= *(v82 + 264);
          }

          if (v85)
          {
            goto LABEL_185;
          }

          v86 = *--m;
        }

        v80 = *(v19 + 328);
        v81 = v80 == *(v19 + 336) || *(v80 + 189) != 1;
        goto LABEL_173;
      }

LABEL_185:
      if (k >= m)
      {
        goto LABEL_222;
      }

      v87 = *k;
      v88 = *m;
      while (2)
      {
        *k++ = v88;
        *m = v87;
        while (2)
        {
          v87 = *k;
          if (v19)
          {
            v89 = *(v19 + 328);
            v90 = v89 == *(v19 + 336) || *(v89 + 189) != 1;
          }

          else
          {
            v90 = -1;
          }

          v91 = *(v18 + 16 * v87);
          if (v91)
          {
            v92 = *(v91 + 328);
            v93 = v92 == *(v91 + 336) || *(v92 + 189) != 1;
          }

          else
          {
            v93 = -1;
          }

          v94 = v90 <= v93;
          if (v90 == v93)
          {
            if (v19 && v91)
            {
              v94 = *(v19 + 264) <= *(v91 + 264);
              break;
            }

LABEL_204:
            ++k;
            continue;
          }

          break;
        }

        if (v94)
        {
          goto LABEL_204;
        }

        do
        {
          v95 = *--m;
          v88 = v95;
          if (v19)
          {
            v96 = *(v19 + 328);
            v97 = v96 == *(v19 + 336) || *(v96 + 189) != 1;
          }

          else
          {
            v97 = -1;
          }

          v98 = *(v18 + 16 * v88);
          if (v98)
          {
            v99 = *(v98 + 328);
            v100 = v99 == *(v98 + 336) || *(v99 + 189) != 1;
          }

          else
          {
            v100 = -1;
          }

          v101 = v97 <= v100;
          if (v97 != v100)
          {
            continue;
          }

          if (!v19 || !v98)
          {
            break;
          }

          v101 = *(v19 + 264) <= *(v98 + 264);
        }

        while (!v101);
        if (k < m)
        {
          continue;
        }

        break;
      }

LABEL_222:
      v102 = k - 1;
      if (k - 1 != v9)
      {
        *v9 = *v102;
      }

      a5 = 0;
      *v102 = v17;
    }
  }

  if ((a5 & 1) == 0)
  {
    if (k == a2)
    {
      return result;
    }

    v217 = k + 1;
    if (k + 1 == a2)
    {
      return result;
    }

    v218 = **a3;
    while (1)
    {
      v219 = v9;
      v9 = v217;
      v220 = v219[1];
      v221 = *(v218 + 16 * v220);
      if (v221)
      {
        v222 = *(v221 + 328);
        v223 = v222 == *(v221 + 336) || *(v222 + 189) != 1;
      }

      else
      {
        v223 = -1;
      }

      v224 = *v219;
      v225 = *(v218 + 16 * *v219);
      if (v225)
      {
        v226 = *(v225 + 328);
        v227 = v226 == *(v225 + 336) || *(v226 + 189) != 1;
      }

      else
      {
        v227 = -1;
      }

      v228 = v223 <= v227;
      if (v223 == v227)
      {
        if (v221)
        {
          v229 = v225 == 0;
        }

        else
        {
          v229 = 1;
        }

        if (v229)
        {
          goto LABEL_485;
        }

        v228 = *(v221 + 264) <= *(v225 + 264);
      }

      if (!v228)
      {
        break;
      }

LABEL_485:
      v217 = v9 + 1;
      if (v9 + 1 == a2)
      {
        return result;
      }
    }

    while (1)
    {
      v230 = v219;
      v231 = v224;
      v232 = *--v219;
      v224 = v232;
      v219[2] = v231;
      if (v221)
      {
        v233 = *(v221 + 328);
        v234 = v233 == *(v221 + 336) || *(v233 + 189) != 1;
      }

      else
      {
        v234 = -1;
      }

      v235 = *(v218 + 16 * v224);
      if (v235)
      {
        v236 = *(v235 + 328);
        v237 = v236 == *(v235 + 336) || *(v236 + 189) != 1;
      }

      else
      {
        v237 = -1;
      }

      v238 = v234 <= v237;
      if (v234 == v237)
      {
        if (!v221 || !v235)
        {
LABEL_484:
          *v230 = v220;
          goto LABEL_485;
        }

        v238 = *(v221 + 264) <= *(v235 + 264);
      }

      if (v238)
      {
        goto LABEL_484;
      }
    }
  }

  if (k == a2)
  {
    return result;
  }

  v117 = k + 1;
  if (k + 1 == a2)
  {
    return result;
  }

  v118 = 0;
  v119 = **a3;
  v120 = k;
  while (2)
  {
    v121 = v120;
    v120 = v117;
    v122 = v121[1];
    v123 = *(v119 + 16 * v122);
    if (v123)
    {
      v124 = *(v123 + 328);
      v125 = v124 == *(v123 + 336) || *(v124 + 189) != 1;
    }

    else
    {
      v125 = -1;
    }

    v126 = *(v119 + 16 * *v121);
    if (v126)
    {
      v127 = *(v126 + 328);
      result = *(v126 + 336);
      v128 = v127 == result || *(v127 + 189) != 1;
    }

    else
    {
      v128 = -1;
    }

    v129 = v125 <= v128;
    if (v125 == v128)
    {
      if (v123)
      {
        v130 = v126 == 0;
      }

      else
      {
        v130 = 1;
      }

      if (v130)
      {
        goto LABEL_301;
      }

      v129 = *(v123 + 264) <= *(v126 + 264);
    }

    if (v129)
    {
      goto LABEL_301;
    }

    v121[1] = *v121;
    v131 = k;
    if (v121 == k)
    {
      goto LABEL_300;
    }

    v132 = v118;
    while (2)
    {
      if (v123)
      {
        v133 = *(v123 + 328);
        v134 = v133 == *(v123 + 336) || *(v133 + 189) != 1;
      }

      else
      {
        v134 = -1;
      }

      v135 = *(k + v132 - 8);
      result = *(v119 + 16 * v135);
      if (result)
      {
        v136 = *(result + 328);
        v137 = v136 == *(result + 336) || *(v136 + 189) != 1;
      }

      else
      {
        v137 = -1;
      }

      if (v134 != v137)
      {
        if (v134 <= v137)
        {
          break;
        }

        goto LABEL_297;
      }

      if (v123 && result)
      {
        if (*(v123 + 264) <= *(result + 264))
        {
          v131 = (k + v132);
          goto LABEL_300;
        }

LABEL_297:
        --v121;
        *(k + v132) = v135;
        v132 -= 8;
        if (!v132)
        {
          v131 = k;
          goto LABEL_300;
        }

        continue;
      }

      break;
    }

    v131 = v121;
LABEL_300:
    *v131 = v122;
LABEL_301:
    v117 = v120 + 1;
    v118 += 8;
    if (v120 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t raven::GNSSPreprocessedMeasurementsChecker::CanSvAndMeasurementDataBeIncluded(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v7 = *(a1 + 28) == -1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  v18 = v5;
  v19 = v4;
  v20 = v2;
  v21 = v3;
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      if (!*(a2 + 595))
      {
        return 0;
      }
    }

    else if (v6 == 2 && !*(a2 + 594))
    {
      return 0;
    }
  }

  else if (v6 == 3)
  {
    if (!*(a2 + 593))
    {
      return 0;
    }
  }

  else if (v6 == 5)
  {
    if (!*(a2 + 596))
    {
      return 0;
    }
  }

  else if (v6 == 4 && !*(a2 + 592))
  {
    return 0;
  }

  v10 = *(a1 + 328);
  if (*(a1 + 336) == v10)
  {
    return 0;
  }

  v11 = *(a1 + 264);
  result = 1;
  if (fabs(v11) <= 1.57079633)
  {
    v12 = *(a2 + 616) * 0.0174532925;
    if (v11 < v12)
    {
      v13 = *v10;
      v14 = *(v10 + 8);
      if (cnprint::CNPrinter::GetLogLevel(1) <= 1)
      {
        v17 = 12;
        v16 = 1;
        v15 = sub_1D0BCFAB8(a1);
        cnprint::CNPrinter::Print(&v17, &v16, "t,%.3lf,%s,GnssPreprocessedMeasurementChecker: Sat excluded,low elevation,%.2f rad, mask,%.2f rad", v14 + v13, v15, *(a1 + 264), v12);
      }

      return 0;
    }
  }

  return result;
}

void sub_1D0C448F0(uint64_t *a1)
{
  if (*a1)
  {
    sub_1D0BCA40C(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1D0C44A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C44A54(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_1F4CD55D8;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 8) = 0;
  v5 = MEMORY[0x1E69E54A8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v5;
  sub_1D0B751F4((a1 + 48), &unk_1D0ED80C5);
  *(a1 + 8) = 1;
  sub_1D0C44D2C(v4, a2);
}

void sub_1D0C44B90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C44BE8(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0C44A54((a1 + 3), a2);
}

void sub_1D0C44DB8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BCA910(v4, a3);
  *(v3 + 256) = *(v3 + 112);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = &unk_1F4CEF598;
  v7 = 0;
  if (!raven::RavenIntegrityEstimator::HandleEvent((v3 + 240), v4, v6))
  {
    sub_1D0C4499C(v3, v6);
  }

  v6[0] = &unk_1F4CEF598;
  v17 = &v15[4];
  sub_1D0BBBD80(&v17);
  v4[0] = &unk_1F4CEF598;
  v6[0] = &v5;
  sub_1D0BBBD80(v6);
}

void sub_1D0C44EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  *(v27 - 56) = v26 + 96;
  sub_1D0BBBD80((v27 - 56));
  a25 = (v25 + 96);
  sub_1D0BBBD80(&a25);
  _Unwind_Resume(a1);
}

uint64_t raven::GNSSPreprocessedMeasurementsChecker::HandleEvent(raven::GNSSPreprocessedMeasurementsChecker *this, const raven::GnssPreprocessedMeasurementsEvent *a2, raven::GnssPreprocessedMeasurementsEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    LOWORD(v22[0]) = 12;
    v23 = 4;
    v20 = (*(*a2 + 16))(a2, a2, a3);
    cnprint::CNPrinter::Print(v22, &v23, "t,%.3lf,GNSSPreprocessedMeasurementsChecker, not configured", v21 + v20);
    return 0xFFFFFFFFLL;
  }

  if (raven::GNSSMeasurementSelectionParameters::AllMeasurementsExcluded((*(this + 21) + 592)))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(this + 9);
  v7 = *(a2 + 8);
  *(a3 + 24) = *(a2 + 24);
  *(a3 + 8) = v7;
  v8 = *(a2 + 40);
  v9 = *(a2 + 56);
  v10 = *(a2 + 72);
  *(a3 + 11) = *(a2 + 11);
  *(a3 + 72) = v10;
  *(a3 + 56) = v9;
  *(a3 + 40) = v8;
  if (v6)
  {
    if (a3 != a2)
    {
      sub_1D0BBD668(a3 + 12, *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 4);
    }

    raven::GNSSPreprocessedMeasurementsChecker::UpdateAndPopulateProbabilityLOS(this, a3);
    v22[0] = (*(*a2 + 16))(a2);
    v22[1] = v11;
    raven::GNSSPreprocessedMeasurementsChecker::RemoveOldLOSEstimators(this, v22, v12, v13);
    v15 = *(a3 + 12);
    v14 = *(a3 + 13);
    if (v15 != v14)
    {
      v16 = v15 + 16;
      do
      {
        v17 = *(v16 - 16);
        if (v17)
        {
          v18 = 1;
        }

        else
        {
          v18 = v16 == v14;
        }

        v16 += 16;
      }

      while (!v18);
      if (v17)
      {
        return 0;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a3 != a2)
  {
    sub_1D0BBD668(a3 + 12, *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 4);
  }

  return 0;
}

uint64_t raven::GNSSMeasurementSelectionParameters::AllMeasurementsExcluded(raven::GNSSMeasurementSelectionParameters *this)
{
  if (*this & 1) != 0 || (*(this + 1) & 1) != 0 || (*(this + 2) & 1) != 0 || (*(this + 3) & 1) != 0 || (*(this + 4))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 5) ^ 1;
  }

  if (*(this + 14) == 1 && ((*(this + 16) & 1) != 0 || (*(this + 17) & 1) != 0 || (*(this + 18) & 1) != 0))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 15) ^ 1;
  }

  return (v1 | v2) & 1;
}

void raven::GNSSPreprocessedMeasurementsChecker::UpdateAndPopulateProbabilityLOS(raven::GNSSPreprocessedMeasurementsChecker *this, uint64_t **a2)
{
  if (!*(*(this + 21) + 3833))
  {
    return;
  }

  v3 = *(this + 2);
  v4 = v3[664] == 1 && v3[776] - 3 < 2;
  v6 = v3[56];
  v5 = v3 + 56;
  if (v6 >= 2)
  {
    v7 = *(v5 + 1);
    *(this + 5) = *v5;
    *(this + 6) = v7;
    v8 = *(v5 + 2);
    v9 = *(v5 + 3);
    v10 = *(v5 + 4);
    *(this + 20) = *(v5 + 10);
    *(this + 8) = v9;
    *(this + 9) = v10;
    *(this + 7) = v8;
  }

  v13 = this + 80;
  v12 = *(this + 80);
  v142 = ((*a2)[2])(a2);
  v143 = v14;
  v140 = &unk_1F4CEF748;
  memset(v141, 0, 17);
  memset(&v141[3], 0, 17);
  memset(&v141[6], 0, 17);
  v141[10] = 0;
  v141[9] = 0;
  v141[11] = 0x7FF8000000000000;
  memset(&v141[12], 0, 17);
  memset(&v141[15], 0, 17);
  memset(&v141[18], 0, 17);
  v141[21] = 0;
  v141[22] = 0;
  v141[23] = 0x7FF8000000000000;
  LOWORD(v141[24]) = 0;
  BYTE2(v141[24]) = 0;
  v16 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v141[25] = v16;
  *&v141[27] = v16;
  *&v141[29] = v16;
  *&v141[31] = v16;
  v141[33] = 0x7FF8000000000000;
  LOBYTE(v141[34]) = 0;
  *&v141[35] = v16;
  *&v141[37] = v16;
  *&v141[39] = v16;
  *&v141[41] = v16;
  v141[43] = 0x7FF8000000000000;
  v139 = NAN;
  v17 = *(*(v13 + 11) + 3834) & v4;
  v138 = NAN;
  v102 = this;
  v105 = (v17 & 1) != 0 && raven::GNSSPreprocessedMeasurementsChecker::GetWiFiPositionForCrossCheck(this, &v142, &v140, *v16.i64, v15) && raven::GNSSPreprocessedMeasurementsChecker::GetClockOffsetForCrossCheck(this, a2, &v139, &v138);
  if (*(this + 192) != 1)
  {
    goto LABEL_25;
  }

  v18 = CNTimeSpan::operator-(&v142, this + 22, v16, v15);
  v22 = v18;
  *&v107.f64[0] = v18;
  v107.f64[1] = v19;
  v23 = v19;
  if (v18 < 0 || v19 < 0.0)
  {
    v24 = CNTimeSpan::operator-(&v107, v20, v21);
    v25 = v26;
  }

  else
  {
    v24 = v18;
    v25 = v19;
  }

  v20.i64[0] = *(*(v102 + 21) + 2216);
  v137 = 0.0;
  v136 = 0;
  CNTimeSpan::SetTimeSpan(&v136, 0, v20, v21);
  if (!v24 && (*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_21;
  }

  if (!v136)
  {
    v28 = v137;
    if ((*&v137 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
LABEL_22:
      if (v25 > v28)
      {
        goto LABEL_23;
      }

      goto LABEL_27;
    }
  }

  if (v24 == v136)
  {
LABEL_21:
    v28 = v137;
    goto LABEL_22;
  }

  if (v24 >= v136)
  {
LABEL_23:
    if (!cnprint::CNPrinter::GetLogLevel(v27))
    {
      LOWORD(v136) = 12;
      v135 = 0;
      cnprint::CNPrinter::Print(&v136, &v135, "GNSSPreprocessedMeasurementsChecker, gating the usage of LOS Estimator other evidence as no wifi cross-check seen recently,t,%.3lf, time_since,%.3lf", v143 + v142, v23 + v22);
    }

LABEL_25:
    v29 = 0;
    goto LABEL_28;
  }

LABEL_27:
  v29 = 1;
LABEL_28:
  v30 = (v12 < 0xA) & (0xCu >> v12);
  v31 = v102;
  v32 = *(v102 + 21);
  if (*(v32 + 2192) == 1)
  {
    v101 = v30 & (v29 & *(v102 + 72)) & v4;
  }

  else
  {
    v101 = 0;
  }

  if (*(v32 + 2193) == 1)
  {
    v100 = v30 & (v29 & *(v102 + 72)) & v4;
  }

  else
  {
    v100 = 0;
  }

  v33 = a2[12];
  v103 = a2[13];
  if (v33 != v103)
  {
    v99 = vdupq_n_s64(0x7FF8000000000000uLL);
    __asm { FMOV            V0.2D, #1.0 }

    v97 = _Q0;
    do
    {
      v38 = *v33;
      if (!*v33)
      {
        goto LABEL_102;
      }

      v106 = v33;
      v39 = *(v38 + 28);
      v40 = v39 + 1000 * *(v38 + 24);
      v41 = *(v31 + 40);
      if (!*&v41)
      {
        goto LABEL_53;
      }

      v42 = vcnt_s8(v41);
      v42.i16[0] = vaddlv_u8(v42);
      if (v42.u32[0] > 1uLL)
      {
        v43 = v39 + 1000 * *(v38 + 24);
        if (*&v41 <= v40)
        {
          v43 = v40 % *&v41;
        }
      }

      else
      {
        v43 = (*&v41 - 1) & v40;
      }

      v44 = *(*(v102 + 4) + 8 * v43);
      if (!v44 || (v45 = *v44) == 0)
      {
LABEL_53:
        operator new();
      }

      while (1)
      {
        v46 = v45[1];
        if (v46 == v40)
        {
          break;
        }

        if (v42.u32[0] > 1uLL)
        {
          if (v46 >= *&v41)
          {
            v46 %= *&v41;
          }
        }

        else
        {
          v46 &= *&v41 - 1;
        }

        if (v46 != v43)
        {
          goto LABEL_53;
        }

LABEL_52:
        v45 = *v45;
        if (!v45)
        {
          goto LABEL_53;
        }
      }

      if (*(v45 + 4) != v40)
      {
        goto LABEL_52;
      }

      v33 = v106;
      if (v45[3])
      {
        v107.f64[0] = 0.0;
        v107.f64[1] = NAN;
        *&v107.f64[0] = sub_1D0C460E0(v38);
        v107.f64[1] = v47;
        if (raven::RavenLineOfSightEstimator::Predict((v45 + 3), &v107, v48, v49))
        {
          LOWORD(v136) = 12;
          v135 = 4;
          v50 = sub_1D0BCFAB8(v38);
          cnprint::CNPrinter::Print(&v136, &v135, "GNSSPreprocessedMeasurementsChecker could not predict LOS estimator,svid,%s", v50);
          *(v45 + 24) = 0;
          v45[26] = 0;
          v45[27] = 0x7FF8000000000000;
          goto LABEL_102;
        }

LABEL_62:
        v104 = (v45 + 3);
        v53 = *(v38 + 328);
        v54 = *(v38 + 336);
        if (v53 != v54)
        {
          v98 = (*(v38 + 264) * 57.2957795 + 0.5);
          do
          {
            v55 = *(v53 + 96);
            if (v55)
            {
              _ZF = v55 == 5;
            }

            else
            {
              _ZF = 1;
            }

            if (_ZF)
            {
              LOWORD(v107.f64[0]) = 12;
              LOBYTE(v136) = 4;
              v58 = *v53;
              v57 = *(v53 + 8);
              v59 = sub_1D0BCFAB8(v38);
              cnprint::CNPrinter::Print(&v107, &v136, "GNSSPreprocessedMeasurementsChecker,t,%.3lf,invalid measurement type,svid,%s,type,%d", v57 + v58, v59, *(v53 + 96));
            }

            else if (v55 == 1)
            {
              if (v105)
              {
                *&v112 = 0;
                v110 = 0u;
                v111 = 0u;
                memset(v109, 0, sizeof(v109));
                *__p = 0u;
                *(&v112 + 1) = 0x7FF8000000000000;
                LODWORD(v113) = 0;
                BYTE4(v113) = 0;
                *(&v113 + 1) = 0x7FF8000000000000;
                *&v114[8] = v99;
                *&v114[24] = v99;
                *&v114[40] = v99;
                *v114 = 2143289344;
                *&v114[56] = 2143289344;
                v114[60] = 0;
                LOBYTE(v115) = 0;
                BYTE4(v115) = 0;
                BYTE8(v115) = 0;
                WORD6(v115) = 0;
                BYTE14(v115) = 1;
                v116 = v99;
                v117 = &unk_1F4CDFE98;
                *(&v118.__r_.__value_.__s + 23) = 0;
                v118.__r_.__value_.__s.__data_[0] = 0;
                LOBYTE(v119) = 0;
                HIDWORD(v119) = -1;
                v120 = 0u;
                v121 = 0u;
                v122 = 0u;
                v123 = 0u;
                v124 = 0u;
                v125 = 0u;
                v126 = 0u;
                v127 = 0u;
                v128 = 0u;
                v129 = 0u;
                v130 = 0u;
                memset(v132, 0, 17);
                *(&v132[1] + 1) = 0;
                *&v132[2] = 0;
                BYTE8(v132[2]) = 0;
                memset(&v132[3], 0, 17);
                *(&v132[4] + 1) = 0;
                *&v132[5] = 0;
                v131 = &unk_1F4CEF748;
                *(&v132[5] + 1) = 0x7FF8000000000000;
                memset(&v132[6], 0, 17);
                BYTE8(v132[8]) = 0;
                *(&v132[7] + 1) = 0;
                *&v132[8] = 0;
                memset(&v132[9], 0, 17);
                *(&v132[10] + 1) = 0;
                *&v132[11] = 0;
                *(&v132[11] + 1) = 0x7FF8000000000000;
                LOWORD(v132[12]) = 0;
                BYTE2(v132[12]) = 0;
                *(&v132[12] + 1) = 0x7FF8000000000000;
                v132[13] = v99;
                v132[14] = v99;
                v132[15] = v99;
                v132[16] = v99;
                LOBYTE(v132[17]) = 0;
                *(&v132[17] + 1) = 0x7FF8000000000000;
                v132[18] = v99;
                v132[19] = v99;
                v132[20] = v99;
                v132[21] = v99;
                v133 = 0u;
                v134 = 0u;
                v107 = *(v45 + 13);
                *__p = *v53;
                v60 = *(v53 + 16);
                v61 = *(v53 + 32);
                v62 = *(v53 + 64);
                v110 = *(v53 + 48);
                v111 = v62;
                v109[0] = v60;
                v109[1] = v61;
                v63 = *(v53 + 80);
                v64 = *(v53 + 96);
                v65 = *(v53 + 128);
                *v114 = *(v53 + 112);
                *&v114[16] = v65;
                v112 = v63;
                v113 = v64;
                v66 = *(v53 + 144);
                v67 = *(v53 + 160);
                v68 = *(v53 + 192);
                v115 = *(v53 + 176);
                v116 = v68;
                *&v114[32] = v66;
                *&v114[48] = v67;
                std::string::operator=(&v118, (v38 + 40));
                v119 = *(v38 + 64);
                v69 = *(v38 + 72);
                v70 = *(v38 + 104);
                v121 = *(v38 + 88);
                v122 = v70;
                v120 = v69;
                v71 = *(v38 + 120);
                v72 = *(v38 + 136);
                v73 = *(v38 + 168);
                v125 = *(v38 + 152);
                v126 = v73;
                v123 = v71;
                v124 = v72;
                v74 = *(v38 + 184);
                v75 = *(v38 + 200);
                v76 = *(v38 + 232);
                v129 = *(v38 + 216);
                v130 = v76;
                v127 = v74;
                v128 = v75;
                memcpy(v132, v141, sizeof(v132));
                *&v133 = v139;
                *(&v133 + 1) = v138;
                *&v134 = *(*(v31 + 21) + 2232);
                *(&v134 + 1) = v45[21];
                v77 = raven::RavenLineOfSightEstimator::Update(v104, &v107);
                if (v77)
                {
                  LOWORD(v136) = 12;
                  v135 = 4;
                  v78 = *v53;
                  v79 = *(v53 + 8);
                  v80 = sub_1D0BCFAB8(v38);
                  cnprint::CNPrinter::Print(&v136, &v135, "GNSSPreprocessedMeasurementsChecker,t,%.3lf,could not update LOS estimator using WiFi cross-check,svid,%s", v79 + v78, v80);
                  v31 = v102;
                }

                else
                {
                  v81 = *(v31 + 192);
                  *(v31 + 11) = *(v45 + 13);
                  if ((v81 & 1) == 0)
                  {
                    *(v31 + 192) = 1;
                  }
                }

                v117 = &unk_1F4CDFE98;
                if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v118.__r_.__value_.__l.__data_);
                }

                if (((v77 == 0) & (v101 | v100)) == 0)
                {
                  goto LABEL_100;
                }
              }

              else if (((v101 | v100) & 1) == 0)
              {
                goto LABEL_100;
              }

              v107 = 0uLL;
              *__p = *(v45 + 13);
              v82 = *(v31 + 21);
              if (v101)
              {
                CN0Likelihoods = raven::RavenLosEstimatorLookupTables::LosEstimatorLookupTablesAccessor::GetCN0Likelihoods(v82 + 2304, *(v53 + 112), (v53 + 100), v98, v13, v107.f64, &v107.f64[1]);
                v84 = CN0Likelihoods;
                if (CN0Likelihoods || (CN0Likelihoods = raven::RavenLineOfSightEstimator::Update(v104, &v107), CN0Likelihoods))
                {
                  if (cnprint::CNPrinter::GetLogLevel(CN0Likelihoods) <= 1)
                  {
                    LOWORD(v136) = 12;
                    v135 = 1;
                    v85 = *v53;
                    v86 = *(v53 + 8);
                    v87 = sub_1D0BCFAB8(v38);
                    cnprint::CNPrinter::Print(&v136, &v135, "GNSSPreprocessedMeasurementsChecker,t,%.3lf,could not update LOS estimator using C/N0 likelihoods,svid,%s,lookuptableReturnCode,%d", v86 + v85, v87, v84);
                    v31 = v102;
                  }
                }
              }

              if (!v100)
              {
                goto LABEL_100;
              }

              v88 = *(v53 + 100);
              if (v88 <= 0xA)
              {
                if (((1 << v88) & 0x544) != 0)
                {
                  if (*(v53 + 112) <= *(*(v31 + 21) + 2208))
                  {
                    goto LABEL_100;
                  }
                }

                else if (!*(v53 + 100))
                {
                  goto LABEL_100;
                }
              }

              MPFSetLikelihoods = raven::RavenLosEstimatorLookupTables::LosEstimatorLookupTablesAccessor::GetMPFSetLikelihoods(v82 + 2304, (v53 + 100), v98, v13, v107.f64, &v107.f64[1]);
              v90 = MPFSetLikelihoods;
              if (!MPFSetLikelihoods)
              {
                if (*(v53 + 189) != 1)
                {
                  v107 = vsubq_f64(v97, v107);
                }

                if (!raven::RavenLineOfSightEstimator::Update(v104, &v107))
                {
                  goto LABEL_100;
                }

                LOWORD(v136) = 12;
                v135 = 4;
                v94 = *v53;
                v95 = *(v53 + 8);
                v96 = sub_1D0BCFAB8(v38);
                cnprint::CNPrinter::Print(&v136, &v135, "GNSSPreprocessedMeasurementsChecker,t,%.3lf,could not update LOS estimator using MPF Set likelihoods,svid,%s", v95 + v94, v96);
                goto LABEL_99;
              }

              if (cnprint::CNPrinter::GetLogLevel(MPFSetLikelihoods) <= 1)
              {
                LOWORD(v136) = 12;
                v135 = 1;
                v91 = *v53;
                v92 = *(v53 + 8);
                v93 = sub_1D0BCFAB8(v38);
                cnprint::CNPrinter::Print(&v136, &v135, "GNSSPreprocessedMeasurementsChecker,t,%.3lf,LOS estimator could not get MPF Set likelihoods from lookup tables,svid,%s,lookuptableReturnCode,%d", v92 + v91, v93, v90);
LABEL_99:
                v31 = v102;
              }
            }

LABEL_100:
            v53 += 208;
          }

          while (v53 != v54);
        }

        *(v38 + 296) = raven::RavenLineOfSightEstimator::GetProbabilityLOS(v104);
        *(v38 + 304) = 1;
        v33 = v106;
      }

      else
      {
        v107.f64[1] = 0.0;
        __p[0] = 0x7FF8000000000000;
        *(v109 + 15) = 0;
        LOBYTE(__p[1]) = 0;
        DWORD1(v109[1]) = -1;
        v107.f64[0] = *(v31 + 21);
        *&v107.f64[1] = sub_1D0C460E0(v38);
        __p[0] = v51;
        std::string::operator=(&__p[1], v38);
        *&v109[1] = *(v38 + 24);
        if (!raven::RavenLineOfSightEstimator::Initialize((v45 + 3), &v107))
        {
          if (SHIBYTE(v109[0]) < 0)
          {
            operator delete(__p[1]);
          }

          goto LABEL_62;
        }

        LOWORD(v136) = 12;
        v135 = 4;
        v52 = sub_1D0BCFAB8(v38);
        cnprint::CNPrinter::Print(&v136, &v135, "GNSSPreprocessedMeasurementsChecker could not initialize LOS estimator,svid,%s", v52);
        if (SHIBYTE(v109[0]) < 0)
        {
          operator delete(__p[1]);
        }
      }

LABEL_102:
      v33 += 2;
    }

    while (v33 != v103);
  }
}

uint64_t sub_1D0C460E0(uint64_t a1)
{
  v1 = *(a1 + 328);
  v2 = *(a1 + 336);
  if (v1 != v2)
  {
    v7[0] = 0;
    v8 = 0u;
    memset(v9, 0, sizeof(v9));
    while (1)
    {
      v6[0] = *(v1 + 8) + *v1;
      if (sub_1D0B8954C(v7, v6, 1.0))
      {
        break;
      }

      v1 += 208;
      if (v1 == v2)
      {
        v3.i64[0] = *&v9[1];
        v6[0] = 0.0;
        v6[1] = 0.0;
        CNTimeSpan::SetTimeSpan(v6, 0, v3, v4);
        return *&v6[0];
      }
    }
  }

  return 0;
}

uint64_t raven::RavenLineOfSightEstimator::Predict(uint64_t a1, uint64_t *a2, double a3, int8x16_t a4)
{
  if ((*a1 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      *v47 = 12;
      LOBYTE(v51) = 1;
      cnprint::CNPrinter::Print(v47, &v51, "WARNING:LOSEstimator,time,%.3lf,predicting uninitialized");
    }

    return 0xFFFFFFFFLL;
  }

  a4.i64[0] = a2[1];
  v6 = *a4.i64 + *a2;
  v7 = fabs(v6);
  v8 = (*&v7 - 1) < 0xFFFFFFFFFFFFFLL;
  v9 = v6 < 0.0;
  v10 = v6 < 0.0 && (*&v7 - 0x10000000000000) >> 53 < 0x3FF;
  if (!v9)
  {
    v8 = 0;
  }

  v11 = *&v7 <= 0x7FF0000000000000;
  v12 = v7 == INFINITY || v8;
  if (!v11)
  {
    v12 = 1;
  }

  if ((v12 | v10) == 1)
  {
    *v47 = 12;
    LOBYTE(v51) = 4;
    cnprint::CNPrinter::Print(v47, &v51, "LOSEstimator,time,%.3lf,invalid prediction time,%.3lf");
    return 0xFFFFFFFFLL;
  }

  v38 = *(a1 + 184);
  *v47 = *(a1 + 184);
  v13 = CNTimeSpan::operator-(a2, v47, *v47, a4);
  v39 = v14 + v13;
  v15 = *(a1 + 8);
  v40 = *(v15 + 2256);
  v41 = *(v15 + 2248);
  if (!*(a1 + 136))
  {
    sub_1D0B894B0(a1 + 80, a1 + 24);
  }

  v16 = *(a1 + 88);
  v17 = *(a1 + 92);
  if (v16)
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18;
  if (v16 <= v17)
  {
    v20 = *(a1 + 92);
  }

  else
  {
    v20 = *(a1 + 88);
  }

  if (v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  if (v19 == 1)
  {
    v53 = 0x100000002;
    v51 = &unk_1F4CE0220;
    v54 = v55;
    v52 = xmmword_1D0E7F490;
    v48 = 0x100000002;
    *v47 = &unk_1F4CE0220;
    *&v22.f64[1] = 0x200000002;
    *&v47[8] = xmmword_1D0E83F60;
    v49 = v50;
    v22.f64[0] = INFINITY;
    v23 = &v51;
LABEL_37:
    sub_1D0B8930C(v23, v47, v22);
    goto LABEL_40;
  }

  v24 = *(a1 + 144);
  v48 = 0x100000002;
  *v47 = &unk_1F4CE0220;
  *&v47[8] = xmmword_1D0E83F60;
  v49 = v50;
  v25 = sub_1D0B94BA0(a1 + 80, 1, v47);
  v26 = *v49;
  if (fabs(*v49 + -1.0) > v24)
  {
    if (cnprint::CNPrinter::GetLogLevel(v25) <= 1)
    {
      *v47 = 2;
      LOBYTE(v51) = 1;
      cnprint::CNPrinter::Print(v47, &v51, "WARNING: HMM prediction passed a non-normalized probability vector.");
    }

    if ((v20 & 0x80000000) == 0)
    {
      sub_1D0BBEF48(&v51, a1 + 80);
      *&v52 = v20 | 0x100000000;
      DWORD2(v52) = v20;
      HIDWORD(v52) = v20;
      v48 = 0x100000002;
      *v47 = &unk_1F4CE0220;
      *&v22.f64[1] = 0x200000002;
      *&v47[8] = xmmword_1D0E83F60;
      v49 = v50;
      v22.f64[0] = 1.0 / v26;
      goto LABEL_37;
    }

LABEL_60:
    __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
  }

  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_60;
  }

  sub_1D0BBEF48(v47, a1 + 80);
  *&v47[8] = v20;
  *&v47[12] = 1;
  *&v47[16] = v20;
  *&v47[20] = v20;
LABEL_40:
  sub_1D0B894B0(a1 + 80, v47);
  *(a1 + 136) = 1;
  v48 = 0x200000002;
  *v47 = &unk_1F4CE0268;
  *&v47[8] = xmmword_1D0E83F70;
  v49 = v50;
  v27 = sub_1D0C4676C(&v38, v47);
  if (v27)
  {
    LOWORD(v51) = 2;
    LOBYTE(v42) = 4;
    cnprint::CNPrinter::Print(&v51, &v42, "ERROR: HMM transition probability function failed.");
LABEL_42:
    *v47 = 12;
    LOBYTE(v51) = 4;
    sub_1D0BCFAB8(a1 + 152);
    cnprint::CNPrinter::Print(v47, &v51, "LOSEstimator,time,%.3lf,failed to predict,%s,code,%d");
    return 0xFFFFFFFFLL;
  }

  if (v21)
  {
    v29 = 0;
    v30 = 0;
    v31 = v49;
LABEL_46:
    v32 = 0.0;
    v33 = v31;
    v34 = v21;
    while (1)
    {
      v35 = *v33;
      if (*v33 < 0.0 || v35 > 1.0)
      {
        break;
      }

      v32 = v32 + v35;
      ++v33;
      if (!--v34)
      {
        if (fabs(v32 + -1.0) <= *(a1 + 144))
        {
          ++v29;
          v31 += *&v47[20];
          v30 = v29 >= v21;
          if (v29 != v21)
          {
            goto LABEL_46;
          }
        }

        break;
      }
    }

    if (!v30)
    {
      if (cnprint::CNPrinter::GetLogLevel(v27) <= 1)
      {
        LOWORD(v51) = 2;
        LOBYTE(v42) = 1;
        cnprint::CNPrinter::Print(&v51, &v42, "ERROR: HMM transition probability matrix is invalid.");
      }

      goto LABEL_42;
    }
  }

  v53 = 0x100000002;
  v52 = xmmword_1D0E83F60;
  v51 = &unk_1F4CE0220;
  v54 = v55;
  sub_1D0B89390(v47, a1 + 80, &v51);
  sub_1D0B894B0(a1 + 24, &v51);
  v44 = 0x100000002;
  v42 = &unk_1F4CE0220;
  v43 = xmmword_1D0E83F60;
  v45 = &v46;
  sub_1D0B94BA0(a1 + 24, 1, &v42);
  v37.f64[0] = 1.0 / *v45;
  v53 = 0x100000002;
  v52 = xmmword_1D0E83F60;
  v51 = &unk_1F4CE0220;
  v54 = v55;
  sub_1D0B8930C(a1 + 24, &v51, v37);
  sub_1D0B894B0(a1 + 24, &v51);
  result = 0;
  *(a1 + 136) = 0;
  *(a1 + 184) = *a2;
  return result;
}

uint64_t sub_1D0C4676C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = (*&v2 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v4 = v2 < 0.0 && ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v2 >= 0.0)
  {
    v3 = 0;
  }

  v5 = (*&v2 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v3;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v5 = 1;
  }

  if ((v5 | v4) == 1)
  {
    v56[0] = 12;
    v57 = 4;
    cnprint::CNPrinter::Print(v56, &v57, "time,%.3lf,t-function failure on line %d: %s() %s", *(a1 + 8) + *a1, 219, "t_LineOfSight", "invalid prediction interval");
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 24);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v6 >= 0.0 ? (v7 = v6 <= 1.0) : (v7 = 0), !v7))
  {
    v56[0] = 12;
    v57 = 4;
    cnprint::CNPrinter::Print(v56, &v57, "time,%.3lf,t-function failure on line %d: %s() %s", *(a1 + 8) + *a1, 224, "t_LineOfSight", "invalid probability");
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 32);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v9 < 0.0 || v9 > 1.0)
  {
    v56[0] = 12;
    v57 = 4;
    cnprint::CNPrinter::Print(v56, &v57, "time,%.3lf,t-function failure on line %d: %s() %s", *(a1 + 8) + *a1, 229, "t_LineOfSight", "invalid probability");
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 40);
  v11 = (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v12 = v10 < 0.0 && ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v10 >= 0.0)
  {
    v11 = 0;
  }

  v13 = (*&v10 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v11;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v13 = 1;
  }

  if ((v13 | v12) == 1)
  {
    v56[0] = 12;
    v57 = 4;
    cnprint::CNPrinter::Print(v56, &v57, "time,%.3lf,t-function failure on line %d: %s() %s", *(a1 + 8) + *a1, 234, "t_LineOfSight", "invalid transition time");
    return 0xFFFFFFFFLL;
  }

  if (fabs(v2) < 2.22044605e-16)
  {
    sub_1D0E32FE4(v56);
    sub_1D0B894B0(a2, v56);
    return 0;
  }

  v15 = 1.0;
  v16 = 1.0 - v9;
  v17 = 1.0 - v6;
  v18 = sqrt((v6 * v9 - (1.0 - v9) * (1.0 - v6)) * -4.0 + (v6 + v9) * (v6 + v9));
  v19 = (v6 + v9 + v18) * 0.5;
  v20 = (v6 + v9 - v18) * 0.5;
  v21 = v6 + 1.0 - v9;
  v22 = 1.0 - v6 + v9;
  v23 = (1.0 - v6) / (v19 - v9);
  v24 = (v19 - v9) / (1.0 - v6);
  if (1.0 - v6 > vabdd_f64(v19, v9))
  {
    v23 = 1.0;
  }

  else
  {
    v24 = 1.0;
  }

  v25 = v20 - v9;
  v26 = v17 <= vabdd_f64(v20, v9);
  v27 = v17 / (v20 - v9);
  v28 = v25 / v17;
  if (v26)
  {
    v29 = v27;
  }

  else
  {
    v29 = 1.0;
  }

  if (v26)
  {
    v28 = 1.0;
  }

  v30 = v16 / (v19 - v6);
  if (v16 <= vabdd_f64(v19, v6))
  {
    v31 = 1.0;
  }

  else
  {
    v30 = 1.0;
    v31 = (v19 - v6) / v16;
  }

  v32 = v20 - v6;
  v33 = v16 <= vabdd_f64(v20, v6);
  v34 = v16 / (v20 - v6);
  v35 = v32 / v16;
  if (v33)
  {
    v36 = 1.0;
  }

  else
  {
    v36 = v35;
  }

  if (v33)
  {
    v15 = v34;
  }

  if (v21 > v22)
  {
    v37 = v30;
  }

  else
  {
    v37 = v24;
  }

  if (v21 > v22)
  {
    v38 = v36;
  }

  else
  {
    v38 = v29;
  }

  if (v21 > v22)
  {
    v39 = v31;
  }

  else
  {
    v15 = v28;
    v39 = v23;
  }

  v40 = sqrt(v39 * v39 + v37 * v37);
  if (fabs(v40) < 2.22044605e-16)
  {
    v41 = "eigenvector 1 has zero norm";
    v42 = 332;
LABEL_69:
    sub_1D0E32F8C(a1, v41, "t_LineOfSight", v42);
    return 0xFFFFFFFFLL;
  }

  v43 = sqrt(v38 * v38 + v15 * v15);
  if (fabs(v43) < 2.22044605e-16)
  {
    v41 = "eigenvector 2 has zero norm";
    v42 = 341;
    goto LABEL_69;
  }

  v44 = v37 / v40;
  v45 = v39 / v40;
  v46 = v15 / v43;
  v47 = v38 / v43;
  v48 = v37 / v40 * (v38 / v43) - v39 / v40 * (v15 / v43);
  if (fabs(v48) < 2.22044605e-16)
  {
    v41 = "singular matrix";
    v42 = 351;
    goto LABEL_69;
  }

  v49 = v2 / v10;
  v50 = pow(v19, v2 / v10);
  v51 = pow(v20, v49);
  result = 0;
  *(a2 + 8) = xmmword_1D0E83F70;
  v52 = v51 * v46;
  v53 = (v50 * v44 * v47 - v52 * v45) / v48;
  v54 = *(a2 + 32);
  v55 = (v52 * v44 + -(v50 * v44) * v46) / v48;
  *v54 = v53;
  v54[1] = 1.0 - v53;
  v54[2] = v55;
  v54[3] = 1.0 - v55;
  return result;
}

double raven::RavenLineOfSightEstimator::GetProbabilityLOS(raven::RavenLineOfSightEstimator *this)
{
  if (*this != 1)
  {
    return NAN;
  }

  v9[2] = v1;
  v9[3] = v2;
  v3 = 64;
  if (!*(this + 34))
  {
    v3 = 8;
  }

  v7 = 0x100000002;
  v5 = &unk_1F4CE0220;
  v6 = xmmword_1D0E83F60;
  v8 = v9;
  sub_1D0B894B0(&v5, this + v3 + 16);
  return *v8;
}