void sub_1000D6D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D6D94(int a1@<W0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1026583B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026583B8))
  {
    v12 = 0;
    sub_100126E84(&unk_1026583B0, "CalorimetryRunBothInputStacks", &v12, 0);
    __cxa_guard_release(&qword_1026583B8);
  }

  v11 = 1;
  if ((atomic_load_explicit(&qword_1026583C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026583C8))
  {
    sub_100126E84(&unk_1026583C0, "CalorimetryUseDataProviderIfApplicable", &v11, 0);
    __cxa_guard_release(&qword_1026583C8);
  }

  v4 = byte_1026583C1;
  v5 = byte_1026583B1;
  if ((atomic_load_explicit(&qword_1026583D8, memory_order_acquire) & 1) == 0)
  {
    v7 = __cxa_guard_acquire(&qword_1026583D8);
    if (v7)
    {
      dword_1026583D0 = sub_1000D7E48(v7, v8);
      __cxa_guard_release(&qword_1026583D8);
    }
  }

  if (dword_1026583D0 == 1)
  {
    if ((a1 - 14) > 2)
    {
      goto LABEL_16;
    }

LABEL_10:
    *a2 = 1;
    *(a2 + 4) = 0;
LABEL_17:
    v6 = xmmword_101C82150;
    goto LABEL_18;
  }

  if (a1 <= 5)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        goto LABEL_24;
      }

      if (a1 == 1)
      {
        *a2 = v4;
        *(a2 + 4) = v5;
        v6 = xmmword_101C82160;
        goto LABEL_18;
      }

      return;
    }

    if ((a1 - 2) >= 2)
    {
      if (a1 == 4 || a1 == 5)
      {
        *a2 = v4;
        *(a2 + 4) = v5;
        v6 = xmmword_101C82180;
LABEL_18:
        *(a2 + 8) = v6;
        return;
      }

      return;
    }

LABEL_16:
    *a2 = 0;
    *(a2 + 4) = 0;
    *(a2 + 5) = v9;
    *(a2 + 7) = v10;
    goto LABEL_17;
  }

  if ((a1 - 6) < 7)
  {
    goto LABEL_16;
  }

  if ((a1 - 14) < 3)
  {
    goto LABEL_10;
  }

  if (a1 == 13)
  {
LABEL_24:
    *a2 = v4;
    *(a2 + 4) = v5;
    v6 = xmmword_101C82170;
    goto LABEL_18;
  }
}

void sub_1000D6FEC(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2 == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*sub_10028C670((a1 + 64), v9) >= a4)
        {
          if (*sub_10028C670((a1 + 64), v9) > a5)
          {
            return;
          }

          if (*sub_10028C670((a1 + 64), v9) >= a4 && *sub_10028C670((a1 + 64), v9) < a5)
          {
            v10 = sub_10028C670((a1 + 64), v9);
            v24 = *(v10 + 1);
            v25 = *(v10 + 2);
            v26 = *(v10 + 6);
            v11 = a3[1];
            v12 = a3[2];
            if (v11 >= v12)
            {
              v17 = *a3;
              v18 = v11 - *a3;
              v19 = 0x6DB6DB6DB6DB6DB7 * (v18 >> 3) + 1;
              if (v19 > 0x492492492492492)
              {
                sub_10028C64C();
              }

              v20 = 0x6DB6DB6DB6DB6DB7 * ((v12 - v17) >> 3);
              if (2 * v20 > v19)
              {
                v19 = 2 * v20;
              }

              if (v20 >= 0x249249249249249)
              {
                v19 = 0x492492492492492;
              }

              if (v19)
              {
                sub_100579334(a3, v19);
              }

              v21 = 8 * (v18 >> 3);
              *v21 = *v10;
              *(v21 + 16) = v24;
              *(v21 + 32) = v25;
              *(v21 + 48) = v26;
              v16 = (v21 + 56);
              v22 = (v21 - v18);
              memcpy((v21 - v18), v17, v18);
              v23 = *a3;
              *a3 = v22;
              a3[1] = v16;
              a3[2] = 0;
              if (v23)
              {
                operator delete(v23);
              }
            }

            else
            {
              v13 = *v10;
              v14 = *(v10 + 1);
              v15 = *(v10 + 2);
              *(v11 + 6) = *(v10 + 6);
              *(v11 + 1) = v14;
              *(v11 + 2) = v15;
              *v11 = v13;
              v16 = v11 + 56;
            }

            a3[1] = v16;
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_1000D721C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_1000D7240(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x492492492492492)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x249249249249249)
      {
        v11 = 0x492492492492492;
      }

      else
      {
        v11 = v10;
      }

      sub_100D01E38(v6, v11);
    }

    sub_10028C64C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

uint64_t sub_1000D73B4(uint64_t a1, _OWORD *a2)
{
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a1 + 16))(a1, &v10, &v8);
  if (result)
  {
    v4 = *(&v11 + 1);
    if (*(&v11 + 1) == *(&v9 + 1))
    {
      return 0;
    }

    else
    {
      if (*v11 == *(&v11 + 1))
      {
        v4 = *(v11 - 8) + 4096;
      }

      v5 = *(v4 - 64);
      v6 = *(v4 - 48);
      v7 = *(v4 - 16);
      a2[2] = *(v4 - 32);
      a2[3] = v7;
      *a2 = v5;
      a2[1] = v6;
      return 1;
    }
  }

  return result;
}

BOOL sub_1000D7464(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *(a1 + 32);
  v5 = (v4 + 8 * (*(a1 + 56) >> 6));
  if (*(a1 + 40) == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5 + ((*(a1 + 56) & 0x3FLL) << 6);
  }

  *a3 = v5;
  a3[1] = v6;
  a3[2] = v5;
  a3[3] = v6;
  v7 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v7;
  v8 = *(a1 + 56) + *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = (v9 + 8 * (v8 >> 6));
  if (*(a1 + 40) == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v10 + ((v8 & 0x3F) << 6);
  }

  if (a3[3] != v11)
  {
    v12 = *v10;
    v13 = 1.79769313e308;
    v14 = v11;
    v15 = v10;
    while (1)
    {
      v16 = v14;
      if (v14 == v12)
      {
        v16 = *(v15 - 1) + 4096;
      }

      v17 = vabdd_f64(*(v16 - 56), a4);
      if (v17 < v13 && v17 < *(a1 + 16))
      {
        *a2 = v10;
        *(a2 + 8) = v11;
        *(a2 + 16) = v15;
        *(a2 + 24) = v14;
        v12 = *v15;
        v18 = v14;
        if (v14 == *v15)
        {
          v18 = *(v15 - 1) + 4096;
        }

        v13 = v17;
        if (*(v18 - 56) == a4)
        {
          break;
        }
      }

      if (v14 == v12)
      {
        v19 = *--v15;
        v12 = v19;
        v14 = v19 + 4096;
      }

      v14 -= 64;
      if (a3[3] == v14)
      {
        v11 = v14;
        return *(a2 + 24) != v11;
      }
    }

    v11 = a3[3];
  }

  return *(a2 + 24) != v11;
}

void sub_1000D758C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1000D75D4(uint64_t a1, double a2, __n128 a3)
{
  if (*a1 != -9999.0)
  {
    v5 = *(a1 + 4);
    if (v5 != -9999.0 && (vabdd_f64(a2, *(a1 + 16)) > 300.0 || *(a1 + 8) == -9999.0))
    {
      *(a1 + 8) = sub_1000DA438(a2, *a1, v5);
      *(a1 + 16) = a2;
    }
  }
}

uint64_t sub_1000D7654(void *a1, double *a2, double a3, __n128 a4)
{
  sub_1000D75D4(a1, *a2, a4);
  v8 = a1[4];
  v7 = a1[5];
  if (v8 >= v7)
  {
    v10 = a1[3];
    v11 = (v8 - v10) >> 4;
    v12 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      sub_10028C64C();
    }

    v13 = v7 - v10;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_1000D758C((a1 + 3), v14);
    }

    v15 = (16 * v11);
    *v15 = *a2;
    v9 = 16 * v11 + 16;
    v16 = a1[3];
    v17 = a1[4] - v16;
    v18 = v15 - v17;
    memcpy(v15 - v17, v16, v17);
    v19 = a1[3];
    a1[3] = v18;
    a1[4] = v9;
    a1[5] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v8 = *a2;
    v9 = (v8 + 1);
  }

  a1[4] = v9;
  sub_1000D7760(a1, a3);

  return sub_1000D7824(a1);
}

uint64_t sub_1000D7760(uint64_t result, double a2)
{
  v3 = *(result + 24);
  v2 = *(result + 32);
  if (v3 != v2)
  {
    while (a2 - *v3 <= 150.0)
    {
      v3 += 2;
      if (v3 == v2)
      {
        return result;
      }
    }

    if (v3 != v2)
    {
      v4 = v3 + 2;
      if (v3 + 2 != v2)
      {
        do
        {
          if (a2 - *v4 <= 150.0)
          {
            *v3 = *v4;
            v3 += 2;
          }

          v4 += 2;
        }

        while (v4 != v2);
        v2 = *(result + 32);
      }
    }
  }

  if (v3 != v2)
  {
    *(result + 32) = v3;
  }

  return result;
}

uint64_t sub_1000D7824(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = &dword_101D152E8;
  v3 = 4;
  while (*v2 >= v1 || v2[1] < v1)
  {
    v2 += 5;
    if (!--v3)
    {
      v2 = &unk_101D15324;
      break;
    }
  }

  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v7 = *(a1 + 32);
  v8 = *(v7 - 16);
  v9 = *(v7 - 8);
  if ((atomic_load_explicit(&qword_102662640, memory_order_acquire) & 1) == 0)
  {
    v26 = a1;
    v40 = v6;
    v41 = v4;
    v37 = v5;
    v27 = __cxa_guard_acquire(&qword_102662640);
    v5 = v37;
    v6 = v40;
    v4 = v41;
    v28 = v27;
    a1 = v26;
    if (v28)
    {
      *buf = -1082130432;
      sub_1004F8200(&byte_102662630, "DaylightLowConfLuxThresholdOverride", buf, 0);
      __cxa_guard_release(&qword_102662640);
      a1 = v26;
      v6 = v40;
      v4 = v41;
      v5 = v37;
    }
  }

  if ((atomic_load_explicit(&qword_102662658, memory_order_acquire) & 1) == 0)
  {
    v29 = a1;
    v40 = v6;
    v42 = v4;
    v38 = v5;
    v30 = __cxa_guard_acquire(&qword_102662658);
    v5 = v38;
    v6 = v40;
    v4 = v42;
    v31 = v30;
    a1 = v29;
    if (v31)
    {
      *buf = -1082130432;
      sub_1004F8200(&byte_102662648, "DaylightMedConfLuxThresholdOverride", buf, 0);
      __cxa_guard_release(&qword_102662658);
      a1 = v29;
      v6 = v40;
      v4 = v42;
      v5 = v38;
    }
  }

  if ((atomic_load_explicit(&qword_102662670, memory_order_acquire) & 1) == 0)
  {
    v32 = a1;
    v40 = v6;
    v43 = v4;
    v39 = v5;
    v33 = __cxa_guard_acquire(&qword_102662670);
    v5 = v39;
    v6 = v40;
    v4 = v43;
    v34 = v33;
    a1 = v32;
    if (v34)
    {
      *buf = -1082130432;
      sub_1004F8200(&byte_102662660, "DaylightHighConfLuxThresholdOverride", buf, 0);
      __cxa_guard_release(&qword_102662670);
      a1 = v32;
      v6 = v40;
      v4 = v43;
      v5 = v39;
    }
  }

  if (byte_102662630)
  {
    v5 = *&dword_102662634;
  }

  if (byte_102662648)
  {
    v4 = *&dword_10266264C;
  }

  if (byte_102662660)
  {
    v6 = *&dword_102662664;
  }

  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  if (v10 == v11)
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(v10 + 8);
      if (v15 > v5)
      {
        ++v14;
        v16 = v15 <= v6 ? v12 : v12 + 1;
        if (v15 > v4)
        {
          ++v13;
          v12 = v16;
        }
      }

      v10 += 16;
    }

    while (v10 != v11);
    if (v12 > 1)
    {
      v17 = 3;
      goto LABEL_30;
    }

    if (v13 > 9)
    {
      v17 = 2;
      goto LABEL_30;
    }
  }

  v17 = v14 > 29;
LABEL_30:
  if (*(a1 + 48) == 1)
  {
    v18 = *(a1 + 49);
  }

  else
  {
    v18 = *(a1 + 8) > 0.0;
  }

  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  if (v1 == -9999.0)
  {
    v20 = v17;
  }

  else
  {
    v20 = v19;
  }

  if (v9 <= v4)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  if (qword_1025D4760 != -1)
  {
    sub_101AF1BA8();
  }

  v22 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_INFO))
  {
    *buf = 134220032;
    v63 = v9;
    v64 = 2048;
    v65 = v1;
    v66 = 1024;
    v67 = v14;
    v68 = 1024;
    v69 = v13;
    v70 = 1024;
    v71 = v12;
    v72 = 2048;
    v73 = v20;
    v74 = 2048;
    v75 = v21;
    v76 = 2048;
    v77 = v8;
    v78 = 1024;
    v79 = v18 & 1;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "ALSDaylightDetectorEstimate,lux,%f,sunElevation,%f,lowCnt,%d,medCnt,%d,highCnt,%d,conf,%ld,confFilt,%ld,startTime,%f, isAstronomicalDaytime, %d", buf, 0x4Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4760 != -1)
    {
      sub_101AF1BA8();
    }

    v44 = 134220032;
    v45 = v9;
    v46 = 2048;
    v47 = v1;
    v48 = 1024;
    v49 = v14;
    v50 = 1024;
    v51 = v13;
    v52 = 1024;
    v53 = v12;
    v54 = 2048;
    v55 = v20;
    v56 = 2048;
    v57 = v21;
    v58 = 2048;
    v59 = v8;
    v60 = 1024;
    v61 = v18 & 1;
    LODWORD(v35) = 76;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4768, 1, "ALSDaylightDetectorEstimate,lux,%f,sunElevation,%f,lowCnt,%d,medCnt,%d,highCnt,%d,conf,%ld,confFilt,%ld,startTime,%f, isAstronomicalDaytime, %d", COERCE_DOUBLE(&v44), v35, v36, LODWORD(v40));
    v25 = v24;
    sub_100152C7C("Generic", 1, 0, 2, "CMIndoorOutdoorConfidence CLALSDaylightDetector::estimateIsDaylight() const", "%s\n", v24);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  return v21;
}

float sub_1000D7D98(uint64_t a1, double *a2)
{
  v3 = (*(*a2 + 8))(a2);
  v4 = 0.0;
  if (v3 && (sub_1012F7B64(v3, a2) & 1) == 0)
  {
    v5 = *(a2 + 1138);
    v6 = *(a2 + 1137);
    v8 = 1.0;
    if (v6 > v5)
    {
      v9 = a2[44];
      v8 = (v6 - v9) / (v6 - v5);
    }

    v7 = *(a2 + 1134);
    return v7 * sub_100161F00(v8, *(a2 + 1135));
  }

  return v4;
}

uint64_t sub_1000D7E48(uint64_t a1, uint64_t a2)
{
  sub_10001A3E8(a1, a2);
  v2 = sub_10001CF3C();
  if (v2)
  {
    return 1;
  }

  v5 = sub_10001A3E8(v2, v3);
  if (sub_10001CF04(v5, v6))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1000D7E84@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 224);
  *a2 = *(result + 216);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

float sub_1000D7EA0(float *a1, uint64_t a2)
{
  v2 = a2;
  v3 = (&unk_101D04778 + 20 * *a1);
  v4 = a1[5];
  if (v4 >= 18.0)
  {
    v5 = (((*v3 + ((v3[2] * a1[2]) * 100.0)) + (v3[1] * a1[3])) + (v3[3] * v4)) / (a1[3] * 24.0);
  }

  else
  {
    v5 = ((((*v3 + ((v3[2] * a1[2]) * 100.0)) + (v3[1] * a1[3])) + (v3[3] * v4)) / (a1[3] * 24.0)) + 0.001;
  }

  v6 = *(a1 + 10);
  sub_10001A3E8(a1, a2);
  if (sub_10001CF3C() && v6)
  {
    v7 = fminf(v5, 1.0);
    v8 = fmaxf(v7, 1.0);
    if (v2)
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = fminf(v5, 2.1);
    if ((v2 & 1) == 0)
    {
      v8 = fmaxf(v8, 1.3);
    }
  }

  return fmaxf(v8, 0.0);
}

void sub_1000D7F78(float a1, float a2)
{
  if (a1 >= a2)
  {
    v3 = a1;
    if (a1 <= 30.0)
    {
      if (a1 > 20.0)
      {
        if (qword_1025D4230 != -1)
        {
          sub_1018D0CE8();
        }

        v5 = qword_1025D4238;
        if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_ERROR))
        {
          v6 = 134218240;
          v7 = v3;
          v8 = 2048;
          v9 = 20.0;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "In-human MET spike,%f,setting to upper bound,%f", &v6, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018D14D4(v3);
        }
      }
    }

    else
    {
      if (qword_1025D4230 != -1)
      {
        sub_1018D0CE8();
      }

      v4 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218240;
        v7 = v3;
        v8 = 2048;
        v9 = a2;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "MET spike,%f,setting to basal,%f", &v6, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D15F0(a2, v3);
      }
    }
  }
}

uint64_t sub_1000D8128@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 240);
  *a2 = *(result + 232);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000D815C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0;
  *(a3 + 24) = 3;
  *(a3 + 32) = 3;
  if (*(a2 + 248) == 1 && CLMotionActivity::isTypeIndoorPedestrian())
  {
    v6 = *(a2 + 720);
    v7 = *(a2 + 784);
    v8 = v7 <= 0.447039278 || v7 > 7.14285711;
    v9 = v7 * 2.23693991;
    v10 = 0.0;
    if (v8)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v9;
    }

    v12 = *(a2 + 872) * 2.23693991;
    v13 = 0.0;
    v14 = 0.0;
    if (v6 > 0.0)
    {
      if (v11 >= 1.0)
      {
        if (((((v11 * -0.793) + ((v11 * 0.3564) * v11)) + 3.142) * *(a1 + 16)) <= 8.0)
        {
          v15 = (((v11 * -0.793) + ((v11 * 0.3564) * v11)) + 3.142) * *(a1 + 16);
        }

        else
        {
          v15 = 8.0;
        }

        v10 = v15;
      }

      else
      {
        v15 = 2.1;
      }

      *(a3 + 16) = 0;
      *a3 = 0u;
      *(a3 + 24) = 3;
      *(a3 + 32) = 3;
      if (v12 > 0.0)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      sub_1000D97E8(v16, v12, v11, 2.5);
      v18 = v15 * v17;
      if (v18 <= 20.0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 20.0;
      }

      *(a3 + 20) = v19;
      sub_1000D97E8(v16, v12, v11, 2.5);
      v21 = v10 * v20;
      if (v21 > 20.0)
      {
        v21 = 20.0;
      }

      *(a3 + 28) = v21;
      v14 = v19;
      v13 = v21;
    }

    if (qword_1025D4230 != -1)
    {
      sub_101883094();
    }

    v22 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a2 + 8);
      *buf = 134219264;
      v41 = v23;
      v42 = 2048;
      v43 = v6;
      v44 = 2048;
      v45 = v11;
      v46 = 2048;
      v47 = v12;
      v48 = 2048;
      v49 = v14;
      v50 = 2048;
      v51 = v13;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "Walk,fitness machine,computeTime,%.3f,startTime,%.3f,wr,%f,vertSpeed,%f,userMets,%f,truthMets,%f", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018830A8();
      }

      v24 = *(a2 + 8);
      v28 = 134219264;
      v29 = v24;
      v30 = 2048;
      v31 = v6;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = v12;
      v36 = 2048;
      v37 = v14;
      v38 = 2048;
      v39 = v13;
      LODWORD(v27) = 62;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "Walk,fitness machine,computeTime,%.3f,startTime,%.3f,wr,%f,vertSpeed,%f,userMets,%f,truthMets,%f", COERCE_DOUBLE(&v28), v27);
      v26 = v25;
      sub_100152C7C("Generic", 1, 0, 2, "virtual CLMetsInfo CLCalorieWalkModel::computeFitnessMachineMETS(const CLNatalieModelInput &)", "%s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }
}

uint64_t sub_1000D84F0(uint64_t a1)
{
  LODWORD(result) = sub_1005A7B84(a1 + 3296, &v2, *(a1 + 8));
  if (*(&v2 + 1) == 0.0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1000D8528(uint64_t a1)
{
  result = (**a1)(a1);
  if (result)
  {
    return *(a1 + 392) < *(a1 + 3272);
  }

  return result;
}

uint64_t sub_1000D8580(uint64_t a1)
{
  v1 = a1;
  if (CLMotionActivity::isTypePedestrian())
  {
    return 1;
  }

  LODWORD(result) = CLMotionActivity::isTypeIndoorPedestrian();
  if ((v1 - 61) < 2)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

float sub_1000D85C4(float *a1, uint64_t a2, double a3)
{
  if (a2)
  {
    isTypeStatic = CLMotionActivity::isTypeStatic();
  }

  else
  {
    isTypeStatic = 1;
  }

  return sub_1000D7EA0(a1, isTypeStatic);
}

float sub_1000D8610(uint64_t a1, uint64_t a2, char a3, double a4)
{
  HIDWORD(v30) = 0;
  v5 = *a2;
  if (*a2 <= a4)
  {
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (v5 > v7)
    {
      if ((a3 & 1) == 0)
      {
        v9 = v5 - v7;
        v10 = fmin(v9, 60.0);
        v11 = *(a2 + 8) - *(a1 + 16);
        if (v11 >= 0x12C)
        {
          v12 = 300;
        }

        else
        {
          v12 = *(a2 + 8) - *(a1 + 16);
        }

        if (v9 > 180.0)
        {
          v11 = v12;
        }

        if (v10 > 0.0)
        {
          v13 = v11 / 100.0;
          v14 = (v13 * 23.94) / v10;
          *(&v30 + 1) = v14;
          if (qword_1025D4230 != -1)
          {
            sub_101B33420();
          }

          v15 = qword_1025D4238;
          if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
          {
            v16 = *(a1 + 64);
            *buf = 134218752;
            v40 = v13;
            v41 = 2048;
            v42 = v10;
            v43 = 2048;
            v44 = v14;
            v45 = 2048;
            v46 = v16;
            _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "Climbing,deltaElevation,%f,ascentDuration,%f,climbingMets,%f,len,%lu", buf, 0x2Au);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4230 != -1)
            {
              sub_101B33434();
            }

            v27 = *(a1 + 64);
            v31 = 134218752;
            v32 = v13;
            v33 = 2048;
            v34 = v10;
            v35 = 2048;
            v36 = *(&v30 + 1);
            v37 = 2048;
            v38 = v27;
            LODWORD(v30) = 42;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "Climbing,deltaElevation,%f,ascentDuration,%f,climbingMets,%f,len,%lu", COERCE_DOUBLE(&v31), v30);
            v29 = v28;
            sub_100152C7C("Generic", 1, 0, 2, "float CLCalorieClimbingModel::estimateClimbingMETs(CFAbsoluteTime, const CLCoarseElevationChangeEntry &, BOOL)", "%s\n", v28);
            if (v29 != buf)
            {
              free(v29);
            }
          }

          if (*a2 - *v6 >= 180.0)
          {
            do
            {
              sub_100023E4C((a1 + 72), &v30 + 1);
              v10 = v10 + -2.55999994;
            }

            while (v10 > 0.0);
          }

          else
          {
            do
            {
              sub_100023E4C((a1 + 24), &v30 + 1);
              v10 = v10 + -2.55999994;
            }

            while (v10 > 0.0);
          }
        }
      }

      *v6 = *a2;
    }
  }

  v18 = (a1 + 64);
  v17 = *(a1 + 64);
  if (v17)
  {
    v19 = *(*(*(a1 + 32) + ((*(a1 + 56) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (*(a1 + 56) & 0x3FFLL));
    ++*(a1 + 56);
    *(a1 + 64) = v17 - 1;
    sub_1000A6D68(a1 + 24, 1);
    if (qword_1025D4230 != -1)
    {
      sub_101B33434();
    }

    v20 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v21 = *v18;
      *buf = 134218240;
      v40 = v19;
      v41 = 2048;
      v42 = *&v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "Climbing,epochMets,%f,bufferLength,%lu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B3345C(v18, v19);
    }
  }

  else
  {
    v23 = (a1 + 112);
    v22 = *(a1 + 112);
    if (v22)
    {
      v19 = *(*(*(a1 + 80) + ((*(a1 + 104) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (*(a1 + 104) & 0x3FFLL));
      ++*(a1 + 104);
      *(a1 + 112) = v22 - 1;
      sub_1000A6D68(a1 + 72, 1);
      if (qword_1025D4230 != -1)
      {
        sub_101B33434();
      }

      v24 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
      {
        v25 = *v23;
        *buf = 134218240;
        v40 = v19;
        v41 = 2048;
        v42 = *&v25;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "Climbing,epochMets,%f,historicalBufferLength,%lu", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B33570(v23, v19);
      }
    }

    else
    {
      return 0.0;
    }
  }

  return v19;
}

void sub_1000D8AB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  v6 = (a3 + 28);
  (*(*a1 + 40))(&v35);
  v7 = v37;
  *(a3 + 4) = v37;
  v8 = (*(*a1 + 48))(v30, a1, a2);
  v9 = v32;
  *(a3 + 8) = v32;
  v10 = sub_1000D7D98(v8, a2);
  *a3 = v10;
  *(a3 + 12) = v36;
  *(a3 + 36) = v39;
  if (v10 <= 0.0)
  {
    *(a3 + 16) = -1082130432;
    v12 = -1.0;
    v11 = v37;
    goto LABEL_14;
  }

  v11 = v37;
  v12 = (v10 - v37) / v37;
  *(a3 + 16) = v12;
  if (*(a1 + 8) != 1 || v11 <= 2.1 || v12 <= 0.1)
  {
LABEL_14:
    v17 = 0;
    v19 = *(&v33 + 1);
    v20 = v32 > v11;
    if (v32 >= v11)
    {
      v13 = v32;
    }

    else
    {
      v13 = v11;
    }

    *(a3 + 20) = v13;
    *(a3 + 24) = 4 * v20;
    v21 = v19 > v38;
    if (v19 >= v38)
    {
      v14 = v19;
    }

    else
    {
      v14 = v38;
    }

    *(a3 + 28) = v14;
    v18 = 4 * v21;
    goto LABEL_21;
  }

  v13 = v10;
  v14 = v10;
  if ((*(a1 + 9) & 1) == 0)
  {
    v15 = *(a1 + 12);
    v16 = v11 * v15;
    if (v16 >= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v16;
    }

    if ((v15 * v38) >= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v15 * v38;
    }
  }

  *(a3 + 20) = v13;
  *(a3 + 28) = v14;
  v17 = 1;
  *(a3 + 24) = 1;
  v18 = 1;
LABEL_21:
  *(a3 + 32) = v18;
  v22 = *(a2 + 220);
  if (sub_1000D8580(*(a2 + 184)) && (v22 & 1) != 0)
  {
    v23 = &unk_101D7D154;
    v24 = 2.1;
  }

  else
  {
    v23 = &unk_101D7D158;
    v24 = 1.6;
  }

  if (v14 > v24)
  {
    v23 = v6;
  }

  v25 = *v23;
  *v6 = *v23;
  if (qword_1025D4230 != -1)
  {
    sub_101BABD20();
  }

  v26 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219520;
    v55 = v7;
    v56 = 2048;
    v57 = v9;
    v58 = 2048;
    v59 = v10;
    v60 = 2048;
    v61 = v12;
    v62 = 1024;
    v63 = v17;
    v64 = 2048;
    v65 = v13;
    v66 = 2048;
    v67 = v25;
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "Pedestrian, wrMets, %f,  fmMets, %f, hrMets, %f, hrwrDiff, %f, useHrMets, %d, userMets, %f, truthMets, %f", buf, 0x44u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_101BABD20();
    }

    v40 = 134219520;
    v41 = v7;
    v42 = 2048;
    v43 = v9;
    v44 = 2048;
    v45 = v10;
    v46 = 2048;
    v47 = v12;
    v48 = 1024;
    v49 = v17;
    v50 = 2048;
    v51 = v13;
    v52 = 2048;
    v53 = v25;
    LODWORD(v29) = 68;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "Pedestrian, wrMets, %f,  fmMets, %f, hrMets, %f, hrwrDiff, %f, useHrMets, %d, userMets, %f, truthMets, %f", COERCE_DOUBLE(&v40), v29, v30[0], v30[1], v31, v33, v34);
    v28 = v27;
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLMetsInfo CLCaloriePedestrianModelInterface::computeMETS(const CLNatalieModelInput &)", "%s\n", v27);
    if (v28 != buf)
    {
      free(v28);
    }
  }
}

BOOL sub_1000D8EB4(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = (v5 + 8 * (v4 / 0x18));
  if (*(a1 + 40) == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 168 * (v4 % 0x18);
  }

  *a3 = v6;
  a3[1] = v7;
  a3[2] = v6;
  a3[3] = v7;
  v8 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v8;
  v9 = *(a1 + 56) + *(a1 + 64);
  v10 = *(a1 + 32);
  v11 = (v10 + 8 * (v9 / 0x18));
  if (*(a1 + 40) == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11 + 168 * (v9 % 0x18);
  }

  if (a3[3] != v12)
  {
    v13 = *v11;
    v14 = 1.79769313e308;
    v15 = v12;
    v16 = v11;
    while (1)
    {
      v17 = v15;
      if (v15 == v13)
      {
        v17 = *(v16 - 1) + 4032;
      }

      v18 = vabdd_f64(*(v17 - 168), a4);
      if (v18 < v14 && v18 < *(a1 + 16))
      {
        *a2 = v11;
        *(a2 + 8) = v12;
        *(a2 + 16) = v16;
        *(a2 + 24) = v15;
        v13 = *v16;
        v19 = v15;
        if (v15 == *v16)
        {
          v19 = *(v16 - 1) + 4032;
        }

        v14 = v18;
        if (*(v19 - 168) == a4)
        {
          break;
        }
      }

      if (v15 == v13)
      {
        v20 = *--v16;
        v13 = v20;
        v15 = v20 + 4032;
      }

      v15 -= 168;
      if (a3[3] == v15)
      {
        v12 = v15;
        return *(a2 + 24) != v12;
      }
    }

    v12 = a3[3];
  }

  return *(a2 + 24) != v12;
}

uint64_t sub_1000D8FFC(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  result = (*(*a1 + 16))(a1, &v8, &v6);
  if (result)
  {
    v4 = *(&v9 + 1);
    if (*(&v9 + 1) == *(&v7 + 1))
    {
      return 0;
    }

    else
    {
      if (*v9 == *(&v9 + 1))
      {
        v4 = *(v9 - 8) + 4080;
      }

      v5 = *(v4 - 24);
      a2[2] = *(v4 - 8);
      *a2 = v5;
      return 1;
    }
  }

  return result;
}

void sub_1000D90AC(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, float a4@<S0>)
{
  *&v55 = a4;
  *a3 = 0u;
  *(a3 + 16) = 0;
  *(a3 + 24) = 3;
  *(a3 + 32) = 3;
  v8 = *(a1 + 24) - *(a1 + 16);
  v9 = 0.0;
  if (v8 > 0.0)
  {
    v9 = *(a1 + 296) * 2.23693991 / v8;
  }

  v7 = *(a1 + 520);
  *(&v57 + 1) = v7 * 2.2369;
  v10 = *(a1 + 304);
  v56 = *(a1 + 296);
  *(&v55 + 1) = v10;
  if (*(a1 + 248) == 1)
  {
    if (v10 <= 0.14 || v10 > 2.2369)
    {
      v11 = a1 + 488;
      v9 = 0.0;
LABEL_12:
      v13 = 0.0;
      if (*(a1 + 248))
      {
        v12 = 2.1;
      }

      else
      {
        v12 = 0.0;
      }

      goto LABEL_15;
    }

    v9 = 2.2369 / v10;
  }

  v11 = a1 + 488;
  if (v9 < 1.0)
  {
    goto LABEL_12;
  }

  v12 = 8.0;
  if (((((v9 * -0.793) + ((v9 * 0.3564) * v9)) + 3.142) * a4) <= 8.0)
  {
    v12 = (((v9 * -0.793) + ((v9 * 0.3564) * v9)) + 3.142) * a4;
  }

  v13 = v12;
LABEL_15:
  if (*(a1 + 320) == 1)
  {
    v14 = 1.1;
  }

  else
  {
    v14 = 1.0;
  }

  v15 = v12;
  v16 = v12 * v14;
  if (v16 <= 20.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 20.0;
  }

  if (a2)
  {
    v18 = 2;
  }

  else
  {
    v18 = *(v11 + 24);
  }

  sub_1000D97E8(v18, *(&v57 + 1), v9, 2.5);
  v20 = v19 * v17;
  if (v20 <= 20.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 20.0;
  }

  *(a3 + 20) = v21;
  if (a2)
  {
    v22 = 2;
  }

  else
  {
    v22 = *(v11 + 24);
  }

  if (*(a1 + 320) == 1)
  {
    v23 = 1.1;
  }

  else
  {
    v23 = 1.0;
  }

  v24 = v13 * v23;
  if (v24 <= 20.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 20.0;
  }

  v26 = v21;
  *&v57 = v9;
  sub_1000D97E8(v22, *(&v57 + 1), v9, 2.5);
  v30 = v29 * v25;
  if (v30 <= 20.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = 20.0;
  }

  *(a3 + 28) = v31;
  v32 = 0.0;
  if (v13 <= 2.1)
  {
    v33 = 0;
  }

  else
  {
    v32 = v31;
    v33 = 12;
  }

  *(a3 + 12) = v32;
  *(a3 + 36) = v33;
  v34 = sub_1000DA93C(v27, v28);
  sub_1000D98F4(v34, (v26 - v17));
  if (qword_1025D4230 != -1)
  {
    sub_101883094();
  }

  v35 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v36 = *(a1 + 24);
    v37 = v36 - *(a1 + 16);
    v38 = *(a1 + 320) == 1;
    *buf = 134220544;
    *v66 = v9;
    *&v66[8] = 2048;
    *&v66[10] = v56;
    *&v66[18] = 2048;
    *&v66[20] = v37;
    *&v66[28] = 2048;
    *&v66[30] = v15;
    *&v66[38] = 2048;
    *&v66[40] = *&v55;
    *&v66[48] = 2048;
    *&v66[50] = v36;
    *&v66[58] = 2048;
    *&v66[60] = *(&v55 + 1);
    *&v66[68] = 1024;
    *&v66[70] = v38;
    v67 = 2048;
    v68 = v17;
    v69 = 2048;
    v70 = v13;
    v71 = 2048;
    v72 = v25;
    _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "Walk, WorkRate, %f, distance(m), %f, duration(s), %f, userMets, %f, fMetsScaling, %f, endTime, %f, currentPace, %f, isStroller, %d, userMetsStrollerCorrected, %f, truthMets, %f, truthMetsStrollerCorrected, %f", buf, 0x6Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018830A8();
    }

    v43 = *(a1 + 24);
    v44 = v43 - *(a1 + 16);
    v45 = *(a1 + 320) == 1;
    *v58 = 134220544;
    *&v58[4] = v9;
    *&v58[12] = 2048;
    *&v58[14] = v56;
    *&v58[22] = 2048;
    *&v58[24] = v44;
    *&v58[32] = 2048;
    *&v58[34] = v15;
    *&v58[42] = 2048;
    *&v58[44] = *&v55;
    *&v58[52] = 2048;
    *&v58[54] = v43;
    *&v58[62] = 2048;
    *&v58[64] = *(&v55 + 1);
    *&v58[72] = 1024;
    *&v58[74] = v45;
    v59 = 2048;
    v60 = v17;
    v61 = 2048;
    v62 = v13;
    v63 = 2048;
    v64 = v25;
    LODWORD(v53) = 108;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "Walk, WorkRate, %f, distance(m), %f, duration(s), %f, userMets, %f, fMetsScaling, %f, endTime, %f, currentPace, %f, isStroller, %d, userMetsStrollerCorrected, %f, truthMets, %f, truthMetsStrollerCorrected, %f", COERCE_DOUBLE(v58), v53, v54, v55, v56, v57);
    v47 = v46;
    sub_100152C7C("Generic", 1, 0, 2, "static CLMetsInfo CLCalorieWalkModel::calculateWorkRateMETS(const CLNatalieModelInput &, const float, const BOOL)", "%s\n", v46);
    if (v47 != buf)
    {
      free(v47);
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018830A8();
  }

  v39 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v40 = *(v11 + 24);
    v41 = *(a1 + 24) - *(a1 + 16);
    *buf = 67111168;
    *v66 = v40;
    *&v66[4] = 2048;
    *&v66[6] = *(&v57 + 1);
    *&v66[14] = 2048;
    *&v66[16] = v41;
    *&v66[24] = 2048;
    *&v66[26] = *&v57;
    v42 = 0.0;
    *&v66[34] = 2048;
    *&v66[36] = v15;
    *&v66[44] = 2048;
    *&v66[46] = v26;
    if (*&v57 >= 0.5)
    {
      v42 = (*(&v57 + 1) / *&v57) * 100.0;
    }

    *&v66[54] = 2048;
    *&v66[56] = v42;
    *&v66[64] = 2048;
    *&v66[66] = v13;
    v67 = 2048;
    v68 = v31;
    _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "Walk, WorkRate, Grade type, %d, vertical speed %f, interval %f, workrate %f, userMets %f, userMets + grade, %f, percent grade, %f, truthMets, %f, truthMets + grade, %f", buf, 0x58u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018830A8();
    }

    v48 = *(v11 + 24);
    v49 = *(a1 + 24) - *(a1 + 16);
    *v58 = 67111168;
    *&v58[4] = v48;
    *&v58[8] = 2048;
    *&v58[10] = *(&v57 + 1);
    *&v58[18] = 2048;
    *&v58[20] = v49;
    *&v58[28] = 2048;
    *&v58[30] = *&v57;
    v50 = 0.0;
    *&v58[38] = 2048;
    *&v58[40] = v15;
    *&v58[48] = 2048;
    *&v58[50] = v26;
    if (*&v57 >= 0.5)
    {
      v50 = (*(&v57 + 1) / *&v57) * 100.0;
    }

    *&v58[58] = 2048;
    *&v58[60] = v50;
    *&v58[68] = 2048;
    *&v58[70] = v13;
    v59 = 2048;
    v60 = v31;
    LODWORD(v53) = 88;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "Walk, WorkRate, Grade type, %d, vertical speed %f, interval %f, workrate %f, userMets %f, userMets + grade, %f, percent grade, %f, truthMets, %f, truthMets + grade, %f", v58, v53, v54, v55, v56, v57, *v58, *&v58[8], *&v58[16]);
    v52 = v51;
    sub_100152C7C("Generic", 1, 0, 2, "static CLMetsInfo CLCalorieWalkModel::calculateWorkRateMETS(const CLNatalieModelInput &, const float, const BOOL)", "%s\n", v51);
    if (v52 != buf)
    {
      free(v52);
    }
  }
}

void sub_1000D97E8(int a1, float a2, float a3, float a4)
{
  if (a1 == 1 && a4 > 0.0)
  {
    if (a3 >= 0.5)
    {
      v4 = a2 / a3;
    }

    else
    {
      v4 = 0.0;
    }

    pow(v4, 3.0);
    pow(v4, 4.0);
    pow(v4, 5.0);
  }
}

void sub_1000D98F4(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_not_V2(*(a1 + 480));
  v4 = *(a1 + 480);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D8144;
  v5[3] = &unk_10245D2A8;
  v5[4] = a1;
  v5[5] = a2;
  dispatch_sync(v4, v5);
}

BOOL sub_1000D997C(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = (v5 + 8 * (v4 / 0xAA));
  if (*(a1 + 40) == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 24 * (v4 % 0xAA);
  }

  *a3 = v6;
  a3[1] = v7;
  a3[2] = v6;
  a3[3] = v7;
  v8 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v8;
  v9 = *(a1 + 56) + *(a1 + 64);
  v10 = *(a1 + 32);
  v11 = (v10 + 8 * (v9 / 0xAA));
  if (*(a1 + 40) == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11 + 24 * (v9 % 0xAA);
  }

  if (a3[3] != v12)
  {
    v13 = *v11;
    v14 = 1.79769313e308;
    v15 = v12;
    v16 = v11;
    while (1)
    {
      v17 = v15;
      if (v15 == v13)
      {
        v17 = *(v16 - 1) + 4080;
      }

      v18 = vabdd_f64(*(v17 - 24), a4);
      if (v18 < v14 && v18 < *(a1 + 16))
      {
        *a2 = v11;
        *(a2 + 8) = v12;
        *(a2 + 16) = v16;
        *(a2 + 24) = v15;
        v13 = *v16;
        v19 = v15;
        if (v15 == *v16)
        {
          v19 = *(v16 - 1) + 4080;
        }

        v14 = v18;
        if (*(v19 - 24) == a4)
        {
          break;
        }
      }

      if (v15 == v13)
      {
        v20 = *--v16;
        v13 = v20;
        v15 = v20 + 4080;
      }

      v15 -= 24;
      if (a3[3] == v15)
      {
        v12 = v15;
        return *(a2 + 24) != v12;
      }
    }

    v12 = a3[3];
  }

  return *(a2 + 24) != v12;
}

uint64_t sub_1000D9AC4(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  result = (*(*a1 + 16))(a1, &v7, &v5);
  if (result)
  {
    v4 = *(&v8 + 1);
    if (*(&v8 + 1) == *(&v6 + 1))
    {
      return 0;
    }

    else
    {
      if (*v8 == *(&v8 + 1))
      {
        v4 = *(v8 - 8) + 4096;
      }

      *a2 = *(v4 - 16);
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000D9B68(uint64_t a1, _OWORD *a2)
{
  *a2 = 0u;
  a2[1] = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  result = (*(*a1 + 16))(a1, &v8, &v6);
  if (result)
  {
    v4 = *(&v9 + 1);
    if (*(&v9 + 1) == *(&v7 + 1))
    {
      return 0;
    }

    else
    {
      if (*v9 == *(&v9 + 1))
      {
        v4 = *(v9 - 8) + 4096;
      }

      v5 = *(v4 - 16);
      *a2 = *(v4 - 32);
      a2[1] = v5;
      return 1;
    }
  }

  return result;
}

BOOL sub_1000D9C0C(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *(a1 + 32);
  v5 = (v4 + 8 * (*(a1 + 56) >> 7));
  if (*(a1 + 40) == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5 + 32 * (*(a1 + 56) & 0x7FLL);
  }

  *a3 = v5;
  a3[1] = v6;
  a3[2] = v5;
  a3[3] = v6;
  v7 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v7;
  v8 = *(a1 + 56) + *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = (v9 + 8 * (v8 >> 7));
  if (*(a1 + 40) == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v10 + 32 * (v8 & 0x7F);
  }

  if (a3[3] != v11)
  {
    v12 = *v10;
    v13 = 1.79769313e308;
    v14 = v11;
    v15 = v10;
    while (1)
    {
      v16 = v14;
      if (v14 == v12)
      {
        v16 = *(v15 - 1) + 4096;
      }

      v17 = vabdd_f64(*(v16 - 32), a4);
      if (v17 < v13 && v17 < *(a1 + 16))
      {
        *a2 = v10;
        *(a2 + 8) = v11;
        *(a2 + 16) = v15;
        *(a2 + 24) = v14;
        v12 = *v15;
        v18 = v14;
        if (v14 == *v15)
        {
          v18 = *(v15 - 1) + 4096;
        }

        v13 = v17;
        if (*(v18 - 32) == a4)
        {
          break;
        }
      }

      if (v14 == v12)
      {
        v19 = *--v15;
        v12 = v19;
        v14 = v19 + 4096;
      }

      v14 -= 32;
      if (a3[3] == v14)
      {
        v11 = v14;
        return *(a2 + 24) != v11;
      }
    }

    v11 = a3[3];
  }

  return *(a2 + 24) != v11;
}

uint64_t sub_1000D9D34(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  result = (*(*a1 + 16))(a1, &v8, &v6);
  if (result)
  {
    v4 = *(&v9 + 1);
    if (*(&v9 + 1) == *(&v7 + 1))
    {
      return 0;
    }

    else
    {
      if (*v9 == *(&v9 + 1))
      {
        v4 = *(v9 - 8) + 4080;
      }

      v5 = *(v4 - 24);
      a2[2] = *(v4 - 8);
      *a2 = v5;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000D9DE4(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 40))(a1);
  if (qword_1025D4230 != -1)
  {
    sub_101A89EDC();
  }

  v5 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v6 = "Walk";
    if (v4)
    {
      v6 = "Run";
    }

    v9 = 136315138;
    v10 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Pedestrian, Using %s model", &v9, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A89EF0(v4);
  }

  v7 = 24;
  if (v4)
  {
    v7 = 8;
  }

  return (*(**(a1 + v7) + 16))(*(a1 + v7), a2);
}

void sub_1000D9F50(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0;
  *(a3 + 24) = 3;
  *(a3 + 32) = 3;
  if (a2[248])
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = (*(*a2 + 24))(a2);
    if (v7)
    {
      sub_1000D9DE4(a1, a2);
    }

    else if (v6)
    {
      sub_100FBE058(a1 + 40, a2, a3);
    }

    else
    {
      *(a3 + 20) = 0;
      *a3 = 0;
      *(a3 + 24) = 5;
      *(a3 + 32) = 5;
    }

    if (qword_1025D4230 != -1)
    {
      sub_101AB0040();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a3 + 20);
      *buf = 67109632;
      v19 = v7;
      v20 = 1024;
      v21 = v6;
      v22 = 2048;
      v23 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "PedestrianPhone,wrAvail,%d,hrAvai,%d,mets,%f", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101AB0054();
      }

      v10 = *(a3 + 20);
      LODWORD(v13) = 67109632;
      HIDWORD(v13) = v7;
      v14 = 1024;
      v15 = v6;
      v16 = 2048;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "PedestrianPhone,wrAvail,%d,hrAvai,%d,mets,%f", &v13, 24, v13);
      v12 = v11;
      sub_100152C7C("Generic", 1, 0, 2, "virtual CLMetsInfo CLCaloriePedestrianModelPhone::computeMETS(const CLNatalieModelInput &)", "%s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  else
  {

    sub_1000D9DE4(a1, a2);
  }
}

void sub_1000DA248(uint64_t a1, uint64_t a2, double a3, __n128 a4)
{
  sub_1000D75D4(a1 + 48, *a2, a4);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v8 >= v7)
  {
    v10 = *(a1 + 24);
    v11 = (v8 - v10) >> 4;
    v12 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      sub_10028C64C();
    }

    v13 = v7 - v10;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_1000D758C(a1 + 24, v14);
    }

    v15 = (16 * v11);
    *v15 = *a2;
    v9 = 16 * v11 + 16;
    v16 = *(a1 + 24);
    v17 = *(a1 + 32) - v16;
    v18 = 16 * v11 - v17;
    memcpy(v15 - v17, v16, v17);
    v19 = *(a1 + 24);
    *(a1 + 24) = v18;
    *(a1 + 32) = v9;
    *(a1 + 40) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v8 = *a2;
    v9 = (v8 + 1);
  }

  *(a1 + 32) = v9;
  sub_1000BDE7C(a1, a3);
  if (qword_1025D44D0 != -1)
  {
    sub_101921F3C();
  }

  v20 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
  {
    v21 = a1;
    if (*(a1 + 23) < 0)
    {
      v21 = *a1;
    }

    v22 = *(a2 + 8);
    v23 = *a2;
    v24 = 136315650;
    v25 = v21;
    v26 = 2050;
    v27 = v22;
    v28 = 2050;
    v29 = v23;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "IndoorOutdoor,ALSScan,context,%s,lux,%{public}.0f,t,%{public}f", &v24, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101921F50(a1, a2);
  }
}

float sub_1000DA438(double a1, float a2, float a3)
{
  v5 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
  [(NSCalendar *)v5 setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
  v6 = [(NSCalendar *)v5 components:252 fromDate:[NSDate dateWithTimeIntervalSinceReferenceDate:a1]];
  v7 = [(NSDateComponents *)v6 hour];
  *&a1 = [(NSDateComponents *)v6 minute];
  v8 = (((([(NSDateComponents *)v6 second]/ 60.0) + *&a1) / 60.0) + v7) / 24.0;
  v9 = sub_1000DA734([(NSDateComponents *)v6 year], [(NSDateComponents *)v6 month], [(NSDateComponents *)v6 day], v8);
  v10 = v9;
  v11 = v9 * (v9 * 0.0003032 + 36000.7698) + 280.46646;
  v12 = fmodf(v11, 360.0);
  if (v12 >= 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 360.0;
  }

  v14 = v10 * (v10 * -0.0001537 + 35999.0503) + 357.52911;
  v15 = ((21.448 - v10 * (v10 * (v10 * -0.001813 + 0.00059) + 46.815)) / 60.0 + 26.0) / 60.0 + 23.0;
  v16 = v15;
  v17 = v10 * -1934.136 + 125.04;
  *&v16 = v16 + cosf(v17 / 57.296) * 0.00256;
  v18 = sub_100115240(v9, *&v16, v13, v14);
  v19 = sub_10011536C(v9, *&v16, v13, v14);
  v20 = fmod(v19 + v8 * 1440.0 + (a3 * 4.0), 1440.0);
  if (v20 < 0.0)
  {
    v20 = v20 + 1440.0;
  }

  v21 = v20 * 0.25 + dbl_101C8BCD0[v20 * 0.25 < 0.0];
  v22 = v21 / 57.296;
  v23 = __sincosf_stret(a2 / 57.296);
  v24 = __sincosf_stret(v18 / 57.296);
  v25 = cosf(v22);
  return asinf(((v23.__cosval * v24.__cosval) * v25) + (v23.__sinval * v24.__sinval)) * 57.296;
}

float sub_1000DA734(int a1, int a2, int a3, float a4)
{
  v4 = a1 - (a2 < 3);
  v5 = a2 + 12;
  v6 = (v4 / 100.0);
  v7 = v4;
  v8 = vcvts_n_f32_s32(v6, 2uLL);
  if (a2 >= 3)
  {
    v5 = a2;
  }

  return ((((((a3 - v6 + v8 + 2) + a4) + ((v7 + 4716.0) * 365.25)) + ((v5 + 1.0) * 30.6001)) + -1524.5) + -2451500.0) / 36525.0;
}

size_t sub_1000DA7EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  snprintf(__str, 0x200uLL, "Act Dur(s), %.2f, Step Dur(s), %.2f, Step Counts, %d, Step Begin, %.2f, Step End, %.2f, distance, %.2f, Speed, %.2f, Grade type, %d, vertical speed, %.3f, HR, %f, HRConf, %f, coarse elevation, %d, rawHR, %f, rawHRConf, %f", *(a1 + 24) - *(a1 + 16), *(a1 + 32), *(a1 + 288), *(a1 + 3256), *(a1 + 3264), *(a1 + 432), *(a1 + 416), *(a1 + 512), *(a1 + 520), *(a1 + 352), *(a1 + 360), *(a1 + 712), *(a1 + 992), *(a1 + 1000));
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  *(a2 + v4) = 0;
  return result;
}

uint64_t sub_1000DA93C(uint64_t a1, uint64_t a2)
{
  if (qword_102664880 != -1)
  {
    sub_101B7CD8C();
  }

  return qword_102639CC0;
}

void sub_1000DA974(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1000DAA14(a1);

  operator delete();
}

void sub_1000DA9AC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B4A38;
  sub_1000DAF64(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1000DAA14(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024B4AB0;
  if (qword_102637EF8 != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_1000DAAA0(uint64_t a1, int a2, double a3)
{
  v28 = a3;
  if (!*(a1 + 1104))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v14 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#fusion,fwd to buffer,invalid latest selected hypothesis", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      return;
    }

    sub_101A7B5F4(buf);
    LOWORD(v20) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,fwd to buffer,invalid latest selected hypothesis", &v20, 2);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::forwardFusedLocationToBuffer(const CFTimeInterval, const BOOL)", "%s\n", v15);
LABEL_22:
    if (v16 != buf)
    {
      free(v16);
    }

    return;
  }

  v20 = off_1024DE5F8;
  __asm { FMOV            V0.2D, #-1.0 }

  v21 = _Q0;
  v23 = xmmword_101C75BF0;
  v24 = xmmword_101C75BF0;
  v25 = _Q0;
  v26 = _Q0;
  *v27 = 0xBFF0000000000000;
  *&v27[12] = 0;
  *&v27[20] = 0;
  if (sub_10002A8E4(a1 + 448, *&_Q0, &v20))
  {
    if ((a2 & 1) == 0)
    {
      v10 = *(a1 + 312);
      if (v10)
      {
        v11 = v10 + *(a1 + 304) - 1;
        v12 = *(*(a1 + 280) + 8 * (v11 / 0x1A));
        v13 = v11 % 0x1A;
        if (*(v12 + 152 * v13 + 148) == 1)
        {
          sub_1012E8F84(&v20, v12 + 152 * v13 + 16);
        }
      }
    }

    *&v27[20] = sub_1000291EC(a1 + 256, &v28);
    sub_10002AAB0(a1, &v20, a2, *(a1 + 808));
    if (*(&v21 + 1) > *(a1 + 1432))
    {
      *(a1 + 1488) = v25;
      *(a1 + 1504) = v26;
      *(a1 + 1520) = *v27;
      *(a1 + 1536) = *&v27[16];
      *(a1 + 1424) = v21;
      *(a1 + 1440) = v22;
      *(a1 + 1456) = v23;
      *(a1 + 1472) = v24;
    }

    return;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v17 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#fusion,fwd to buffer, failed to retrieve predicted estimate from the latest selected hypothesis", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v19[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,fwd to buffer, failed to retrieve predicted estimate from the latest selected hypothesis", v19, 2);
    v16 = v18;
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::forwardFusedLocationToBuffer(const CFTimeInterval, const BOOL)", "%s\n", v18);
    goto LABEL_22;
  }
}

void sub_1000DAE2C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1000DAE38(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1000DAE70(a1);

  operator delete();
}

void sub_1000DAE70(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102452C20;
  if (qword_102636CF8 != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_1000DAEFC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024528D8;
  sub_1000DB298(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_1000DAF64(void *result)
{
  if (qword_102637F00 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1000DB004(unint64_t *result, uint64_t a2, __n128 a3)
{
  if (a2 <= 0x29 && ((1 << a2) & 0x2000000039ELL) != 0)
  {
    v5 = a3.n128_f64[0];
    if (*result < 0.0)
    {
      *result = a3.n128_u64[0];
      if (qword_1025D4600 != -1)
      {
        sub_101B495F4();
      }

      v6 = qword_1025D4608;
      v7 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        v9 = sub_10000B1F8(v7, v8);
        v35 = 1;
        v10 = sub_10001A6B0(v9, &v35);
        v35 = 134349568;
        v36 = v5;
        v37 = 1026;
        LODWORD(v38[0]) = a2;
        WORD2(v38[0]) = 2050;
        *(v38 + 6) = v10;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLJR,PedestrianDetector,first update,motion_cfat,%{public}.3f,type,%{public}d,mct,%{public}.3f", &v35, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B49608(a2, a2, v11, v12, v13, v14, v15, v16, v5);
      }
    }

    if (*result > 0.0 && *result <= v5)
    {
      v18 = sub_10115EFE0(a2);
      ++*(result + v18 + 4);
      result[34] |= 1 << v18;
    }

    sub_1000DD3CC(result, a2);
  }

  else
  {
    v19 = result[34];
    if (v19)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        if (((1 << v20) & v19) != 0)
        {
          v21 += *(result + v20 + 4);
          v19 &= ~(1 << v20);
        }

        if (v20 > 0x3E)
        {
          break;
        }

        ++v20;
      }

      while (v19);
      if (v21 >= 1)
      {
        if (qword_1025D4600 != -1)
        {
          sub_101B495F4();
        }

        v22 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v23 = CLMotionActivity::activityTypeToString();
          v25 = sub_10000B1F8(v23, v24);
          v35 = 1;
          v26 = sub_10001A6B0(v25, &v35);
          v35 = 136380931;
          v36 = *&v23;
          v37 = 2050;
          *v38 = v26;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "CLJR,PedestrianDetector,reset on non-pedestrian type,%{private}s,mct,%{public}.3f", &v35, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B49728(a2, v27, v28, v29, v30, v31, v32, v33);
        }

        sub_10115EE58(result, v34);
      }
    }
  }
}

void *sub_1000DB298(void *result)
{
  if (qword_102636CC0 != result)
  {
    v1 = result;
    v2 = result[8];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[10];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1000DB338(uint64_t a1, int *a2, uint64_t a3)
{
  if (*a2 == 2)
  {
    if (qword_1025D4770 != -1)
    {
      sub_101957038();
    }

    v28 = qword_1025D4778;
    v29 = os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG);
    if (v29)
    {
      v31 = *(a3 + 96);
      v32 = *(a3 + 16);
      v33 = sub_10000B1F8(v29, v30);
      *buf = 1;
      v34 = sub_10001A6B0(v33, buf);
      v37 = sub_10000B1F8(v35, v36);
      v38 = sub_100125220(v37);
      *buf = 67240960;
      *&buf[4] = v31;
      LOWORD(v74) = 1026;
      *(&v74 + 2) = v32;
      HIWORD(v74) = 2050;
      *v75 = v34;
      *&v75[8] = 2050;
      *&v75[10] = v38;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "Received motion state mediator workout notification,workout_type,%{public}d,event_type,%{public}d,now_mct,%{public}.3f,propagation_us,%{public}.3f", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195704C(a3);
    }

    v40 = *(a1 + 3872);
    if (v40)
    {
      sub_100930DD0(v40, a3);
    }

    v41 = *(a1 + 3880);
    if (v41)
    {
      sub_100930DD0(v41, a3);
    }

    *buf = *a3;
    v42 = *(a3 + 16);
    if (v42 != 13)
    {
      if (v42 != 15)
      {
        return;
      }

      v74 = 0;
      v43 = sub_10000B1F8(v41, v39);
      v59.type = 1;
      v44 = sub_10001A6B0(v43, &v59);
      goto LABEL_50;
    }

    v49 = *(a3 + 96);
    if (v49 > 14)
    {
      if (v49 == 17)
      {
LABEL_46:
        v74 = 0x800000008;
        goto LABEL_47;
      }

      if (v49 != 15)
      {
LABEL_47:
        if ((v49 - 3) <= 1)
        {
          v74 = 0x600000006;
        }

        v50 = sub_10000B1F8(v41, v39);
        v59.type = 1;
        v44 = sub_10001A6B0(v50, &v59);
LABEL_50:
        *&v59.type = v44;
        sub_100D714B4(a1 + 456, &v59.type, buf);
        return;
      }
    }

    else if (v49 != 1)
    {
      goto LABEL_45;
    }

    v74 = 0x400000004;
LABEL_45:
    if (v49 == 2)
    {
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  if (!*a2)
  {
    if (qword_1025D4770 != -1)
    {
      sub_101957038();
    }

    v5 = qword_1025D4778;
    v6 = os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      v9 = *(a3 + 8);
      v8 = *(a3 + 12);
      v10 = *(a3 + 209);
      v11 = sub_10000B1F8(v6, v7);
      *buf = 1;
      v12 = sub_10001A6B0(v11, buf);
      v15 = sub_10000B1F8(v13, v14);
      v16 = sub_100125220(v15);
      *buf = 67241216;
      *&buf[4] = v9;
      LOWORD(v74) = 1026;
      *(&v74 + 2) = v8;
      HIWORD(v74) = 1024;
      *v75 = v10;
      *&v75[4] = 2050;
      *&v75[6] = v12;
      *&v75[14] = 2050;
      *&v75[16] = v16;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Received motion state mediator activity notification,activity_type,%{public}d,confidence,%{public}d,is_historical,%d,now_mct,%{public}.3f,propagation_us,%{public}.3f", buf, 0x28u);
    }

    v17 = sub_10000A100(121, 2);
    if (v17)
    {
      sub_10195718C(a3);
    }

    v19 = *(a3 + 88);
    v20 = *(a3 + 120);
    v61 = *(a3 + 104);
    v62 = v20;
    v63 = *(a3 + 136);
    v21 = *(a3 + 24);
    v22 = *(a3 + 56);
    *&v59.isStanding = *(a3 + 40);
    *&v59.isVehicleConnected = v22;
    *&v59.vehicleType = *(a3 + 72);
    v60 = v19;
    *&v59.type = *(a3 + 8);
    *&v59.mountedConfidence = v21;
    if (!off_1025D53B8)
    {
      operator new();
    }

    if ((*(off_1025D53B8 + 1) & 1) == 0)
    {
      goto LABEL_38;
    }

    if (*off_1025D53B8 != 1)
    {
      goto LABEL_38;
    }

    v23 = sub_10000B1F8(v17, v18);
    *buf = 0;
    v24 = sub_10001A6B0(v23, buf);
    v25 = vabdd_f64(v24, *(a1 + 4256));
    if (v25 >= 1.5)
    {
      goto LABEL_38;
    }

    if (*(a1 + 4248) != 0.0)
    {
      goto LABEL_17;
    }

    v26 = 0;
    if (v25 < 0.5 && vabdd_f64(v24, *(a1 + 4164)) < 1.5)
    {
      v27 = *(a1 + 4132);
      if (v27 < 0.0)
      {
LABEL_17:
        v26 = 0;
        goto LABEL_53;
      }

      v26 = v27 + *(a1 + 4140) * -2.0 < 0.0;
    }

LABEL_53:
    type = v59.type;
    if (v59.type <= 0x38u)
    {
      if (((1 << SLOBYTE(v59.type)) & 0x20000000398) != 0)
      {
        *&v59.type = 0x200000005;
        type = 5;
LABEL_60:
        if (qword_1025D4770 != -1)
        {
          sub_101956098();
        }

        v52 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v53 = *(a3 + 8);
          v54 = *(a3 + 12);
          *buf = 67241216;
          *&buf[4] = v53;
          LOWORD(v74) = 1026;
          *(&v74 + 2) = v54;
          HIWORD(v74) = 1026;
          *v75 = type;
          *&v75[4] = 1026;
          *&v75[6] = v59.confidence;
          *&v75[10] = 1026;
          *&v75[12] = v26;
          _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "In vehicle detected Adjusting motion state,type,%{public}d,confidence,%{public}d,to type,%{public}d,confidence,%{public}d,isSpeedZero,%{public}d", buf, 0x20u);
        }

        v17 = sub_10000A100(121, 2);
        if (v17)
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4770 != -1)
          {
            sub_101956098();
          }

          v55 = *(a3 + 8);
          v56 = *(a3 + 12);
          v64[0] = 67241216;
          v64[1] = v55;
          v65 = 1026;
          v66 = v56;
          v67 = 1026;
          v68 = type;
          v69 = 1026;
          confidence = v59.confidence;
          v71 = 1026;
          v72 = v26;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "In vehicle detected Adjusting motion state,type,%{public}d,confidence,%{public}d,to type,%{public}d,confidence,%{public}d,isSpeedZero,%{public}d", v64, 32, *&v59.type, *&v59.mountedConfidence, *&v59.isStanding, *&v59.isVehicleConnected, *&v59.vehicleType, v60, v61, v62, v63);
          v58 = v57;
          v17 = sub_100152C7C("Generic", 1, 0, 2, "virtual void CLLocationControllerFusion::feedMotionStateMediatorNotification(const CLMotionStateMediator_Type::Notification &, const CLMotionStateMediator_Type::NotificationData &)", "%s\n", v57);
          if (v58 != buf)
          {
            free(v58);
          }
        }

LABEL_38:
        v48 = sub_10000B1F8(v17, v18);
        *buf = 1;
        *buf = sub_10001A6B0(v48, buf);
        sub_1000DBA30(a1 + 456, buf, &v59);
        return;
      }

      if (((1 << SLOBYTE(v59.type)) & 0x110000000000020) != 0)
      {
LABEL_59:
        v59.confidence = 2;
        goto LABEL_60;
      }

      if (((1 << SLOBYTE(v59.type)) & 0xC00) != 0)
      {
        if (!v26)
        {
          v59.confidence = 0;
          goto LABEL_60;
        }

        goto LABEL_59;
      }
    }

    if (v59.type == 2)
    {
      type = 11;
      v59.type = 11;
      if (v26)
      {
        v59.confidence = 2;
        type = 11;
      }
    }

    else if (v59.type == 1)
    {
      type = 10;
      v59.type = 10;
      if (v26)
      {
        v59.confidence = 2;
        type = 10;
      }
    }

    goto LABEL_60;
  }

  if (qword_1025D4770 != -1)
  {
    sub_101957038();
  }

  v46 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_FAULT))
  {
    v47 = *a2;
    *buf = 67240192;
    *&buf[4] = v47;
    _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_FAULT, "#Warning, Fusion Controller, received unhandled motion state mediator notification %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019572E0(a2);
  }
}

void sub_1000DBA30(uint64_t a1, double *a2, CLMotionActivity *a3)
{
  if (*(a1 + 2880) != 4 || *(a1 + 2840) == 1)
  {
    sub_100272FF0(a1, a2);
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v5 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v6 = CLMotionActivity::activityTypeToString();
    v7 = *a2;
    v8 = *&a3[1].type;
    timestamp = a3->timestamp;
    type = a3->type;
    confidence = a3->confidence;
    *buf = 136447746;
    *&buf[4] = v6;
    v147 = 2050;
    *v148 = v7;
    *&v148[8] = 2050;
    v149 = v8;
    v150 = 2050;
    v151 = timestamp;
    v152 = 1026;
    *v153 = type;
    *&v153[4] = 1026;
    *&v153[6] = confidence;
    v154 = 2082;
    v155 = CLMotionActivity::activityConfidenceToString();
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#fusion,received motion state,%{public}s,mct_now,%{public}.3f,start_time_cfat,%{public}.3f,timestamp,%{public}.3f,type,%{public}d,confidence,%{public}d,%{public}s", buf, 0x40u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v84 = qword_1025D4778;
    v85 = CLMotionActivity::activityTypeToString();
    v86 = *a2;
    v87 = *&a3[1].type;
    v88 = a3->timestamp;
    v90 = a3->type;
    v89 = a3->confidence;
    *v125 = 136447746;
    *&v125[4] = v85;
    v126 = 2050;
    *v127 = v86;
    *&v127[8] = 2050;
    v128 = v87;
    v129 = 2050;
    v130 = v88;
    v131 = 1026;
    *v132 = v90;
    *&v132[4] = 1026;
    *&v132[6] = v89;
    v133 = 2082;
    v134 = CLMotionActivity::activityConfidenceToString();
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v84, 2, "#fusion,received motion state,%{public}s,mct_now,%{public}.3f,start_time_cfat,%{public}.3f,timestamp,%{public}.3f,type,%{public}d,confidence,%{public}d,%{public}s", v125, 64);
    v92 = v91;
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v91);
    if (v92 != buf)
    {
      free(v92);
    }
  }

  v13 = sub_100D6B41C(a1, v12);
  if (v13)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v15 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "#fusion,motion state update is ignored,detected likely in-flight Airplane Mode.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      *v125 = 0;
      LODWORD(v118) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,motion state update is ignored,detected likely in-flight Airplane Mode.", v125, v118);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v16);
      goto LABEL_16;
    }

    return;
  }

  if (*(a1 + 2904) != 1)
  {
    v26 = *&a3[1].isStanding;
    v143 = *&a3[1].mountedConfidence;
    v144 = v26;
    v145 = *&a3[1].isVehicleConnected;
    v27 = *&a3->isVehicleConnected;
    v139 = *&a3->isStanding;
    v140 = v27;
    v28 = *&a3[1].type;
    v141 = *&a3->vehicleType;
    v142 = v28;
    v29 = *&a3->mountedConfidence;
    *v138 = *&a3->type;
    *&v138[16] = v29;
    if (*(a1 + 2778))
    {
      goto LABEL_76;
    }

    if ((*(a1 + 2800) & 1) != 0 || a3->type != 2 || a3->confidence < 1)
    {
LABEL_75:
      if (*(a1 + 2800) != 1)
      {
LABEL_84:
        v47 = *(a1 + 2256);
        v48 = *a2;
        if (v47 <= 0.0)
        {
          v49 = -1.0;
        }

        else
        {
          v49 = *a2 - v47;
        }

        v50 = *(a1 + 2824);
        v51 = v48 - v50 >= 300.0 || v50 <= 0.0;
        if (*(a1 + 2288) >= 6uLL)
        {
          v52 = *(a1 + 2264);
          if ((v49 > 10.0 || !*&v138[4]) && (CLMotionActivity::isTypePedestrian() & 1) == 0 && ((CLMotionActivity::isTypeDriving() ^ 1) & v51) == 1 && v52 > 0.0 && v48 - v52 > 10.0)
          {
            v53 = *(a1 + 2272);
            if (v53 == (a1 + 2280))
            {
LABEL_107:
              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v60 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v61 = *a2;
                v62 = *(a1 + 2288);
                *&v63 = COERCE_DOUBLE(CLMotionActivity::activityTypeToString());
                v64 = CLMotionActivity::activityConfidenceToString();
                *buf = 134350082;
                *&buf[4] = v61;
                v147 = 2048;
                *v148 = v62;
                *&v148[8] = 2050;
                v149 = v49;
                v150 = 2082;
                v151 = *&v63;
                v152 = 2082;
                *v153 = v64;
                _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEBUG, "#fusion,mct_now,%{public}.3f,recent Cell locations diversity/transitions seen,#uniqueCell,%zu,but they are overlapping,skip motion state override,dt_sinceNonCell_s,%{public}.3f,input motion state,%{public}s,confidence,%{public}s", buf, 0x34u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101A7B5F4(buf);
                v65 = qword_1025D4778;
                v66 = *a2;
                v67 = *(a1 + 2288);
                *&v68 = COERCE_DOUBLE(CLMotionActivity::activityTypeToString());
                v69 = CLMotionActivity::activityConfidenceToString();
                *v125 = 134350082;
                *&v125[4] = v66;
                v126 = 2048;
                *v127 = v67;
                *&v127[8] = 2050;
                v128 = v49;
                v129 = 2082;
                v130 = *&v68;
                v131 = 2082;
                *v132 = v69;
                LODWORD(v118) = 52;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v65, 2, "#fusion,mct_now,%{public}.3f,recent Cell locations diversity/transitions seen,#uniqueCell,%zu,but they are overlapping,skip motion state override,dt_sinceNonCell_s,%{public}.3f,input motion state,%{public}s,confidence,%{public}s", v125, v118);
                v71 = v70;
                sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v70);
                if (v71 != buf)
                {
                  free(v71);
                }
              }
            }

            else
            {
              v54 = 1;
              while (1)
              {
                sub_100109D18((a1 + 2384), *(v53[5] + 24), *(v53[5] + 32), *(a1 + 1184), *(a1 + 1192), *(a1 + 1208));
                v56 = *(v53[5] + 40) + *(a1 + 1200);
                if (v55 >= v56)
                {
                  break;
                }

                v57 = v53[1];
                if (v57)
                {
                  do
                  {
                    v58 = v57;
                    v57 = *v57;
                  }

                  while (v57);
                }

                else
                {
                  do
                  {
                    v58 = v53[2];
                    v59 = *v58 == v53;
                    v53 = v58;
                  }

                  while (!v59);
                }

                v54 &= v55 < v56;
                v53 = v58;
                if (v58 == (a1 + 2280))
                {
                  if (v54)
                  {
                    goto LABEL_107;
                  }

                  break;
                }
              }

              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v72 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v73 = *a2;
                v74 = *(a1 + 2288);
                *&v75 = COERCE_DOUBLE(CLMotionActivity::activityTypeToString());
                v76 = CLMotionActivity::activityConfidenceToString();
                *buf = 134350082;
                *&buf[4] = v73;
                v147 = 2048;
                *v148 = v74;
                *&v148[8] = 2050;
                v149 = v49;
                v150 = 2082;
                v151 = *&v75;
                v152 = 2082;
                *v153 = v76;
                _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_DEBUG, "#fusion,mct_now,%{public}.3f,input motion state override to High Confidence Driving based on recent Cell locations diversity/transitions,#uniqueCell,%zu,dt_sinceNonCell_s,%{public}.3f,original motion state,%{public}s,confidence,%{public}s", buf, 0x34u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101A7B5F4(buf);
                v109 = qword_1025D4778;
                v110 = *a2;
                v111 = *(a1 + 2288);
                *&v112 = COERCE_DOUBLE(CLMotionActivity::activityTypeToString());
                v113 = CLMotionActivity::activityConfidenceToString();
                *v125 = 134350082;
                *&v125[4] = v110;
                v126 = 2048;
                *v127 = v111;
                *&v127[8] = 2050;
                v128 = v49;
                v129 = 2082;
                v130 = *&v112;
                v131 = 2082;
                *v132 = v113;
                LODWORD(v118) = 52;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v109, 2, "#fusion,mct_now,%{public}.3f,input motion state override to High Confidence Driving based on recent Cell locations diversity/transitions,#uniqueCell,%zu,dt_sinceNonCell_s,%{public}.3f,original motion state,%{public}s,confidence,%{public}s", v125, v118);
                v115 = v114;
                sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v114);
                if (v115 != buf)
                {
                  free(v115);
                }
              }

              *v138 = 0x200000005;
            }
          }
        }

        sub_1000DCDB0(a1 + 2424, v138, *a2);
        sub_1000D0BB8(a1, a2);
        v77 = *&a3[1].type;
        if (v77 > 0.0)
        {
          if (*(a1 + 1104))
          {
            v78 = vabdd_f64(v77, *(a1 + 824));
            if (v78 > 3.0)
            {
              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v79 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v80 = *a2;
                v81 = *&a3[1].type;
                v82 = *(a1 + 824);
                *buf = 134349824;
                *&buf[4] = v80;
                v147 = 2050;
                *v148 = v81;
                *&v148[8] = 2050;
                v149 = v82;
                v150 = 2050;
                v151 = v78;
                _os_log_impl(dword_100000000, v79, OS_LOG_TYPE_DEBUG, "#fusion,possible CFAbsoluteTime discontinuity detected,mct_now,%{public}.3f,motionStateCfat,%{public}.3f,fusionStateCfat,%{public}.3f,deltaCfat_s,%{public}.3f", buf, 0x2Au);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101A7B5F4(buf);
                v104 = *a2;
                v105 = *&a3[1].type;
                v106 = *(a1 + 824);
                *v125 = 134349824;
                *&v125[4] = v104;
                v126 = 2050;
                *v127 = v105;
                *&v127[8] = 2050;
                v128 = v106;
                v129 = 2050;
                v130 = v78;
                LODWORD(v118) = 42;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,possible CFAbsoluteTime discontinuity detected,mct_now,%{public}.3f,motionStateCfat,%{public}.3f,fusionStateCfat,%{public}.3f,deltaCfat_s,%{public}.3f", v125, v118);
                v108 = v107;
                sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v107);
                if (v108 != buf)
                {
                  free(v108);
                }
              }

              sub_100D6B904(a1, v83);
            }
          }
        }

        sub_1000DAAA0(a1, 1, *a2);
        return;
      }

LABEL_76:
      if ((*(a1 + 2779) & 1) == 0 && a3->type == 3)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v42 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v43 = *a2;
          v44 = *(a1 + 2778);
          v45 = *(a1 + 2779);
          v46 = *(a1 + 2800);
          *buf = 134349824;
          *&buf[4] = v43;
          v147 = 1026;
          *v148 = v44;
          *&v148[4] = 1026;
          *&v148[6] = v45;
          LOWORD(v149) = 1026;
          *(&v149 + 2) = v46;
          _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "#fusion,mct_now,%{public}.3f,moving motion state override to low confidence Walk,InVisit,%{public}d,IsLikelyOutOfAVisit,%{public}d,WiFiServiceStatesAssociated,%{public}d", buf, 0x1Eu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v93 = *a2;
          v94 = *(a1 + 2778);
          v95 = *(a1 + 2779);
          v96 = *(a1 + 2800);
          *v125 = 134349824;
          *&v125[4] = v93;
          v126 = 1026;
          *v127 = v94;
          *&v127[4] = 1026;
          *&v127[6] = v95;
          LOWORD(v128) = 1026;
          *(&v128 + 2) = v96;
          LODWORD(v118) = 30;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,mct_now,%{public}.3f,moving motion state override to low confidence Walk,InVisit,%{public}d,IsLikelyOutOfAVisit,%{public}d,WiFiServiceStatesAssociated,%{public}d", v125, v118);
          v98 = v97;
          sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v97);
          if (v98 != buf)
          {
            free(v98);
          }
        }

        *v138 = 4;
      }

      goto LABEL_84;
    }

    sub_10011BB24(*(a1 + 2168), v125);
    if (*v125 > 0.0 && (*a2 < *v125 || *a2 - *v125 <= 6.0))
    {
      if (v137 >= 3)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v30 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v31 = *a2;
          *buf = 134349312;
          *&buf[4] = v31;
          v147 = 1026;
          *v148 = v137;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "#fusion,mct_now,%{public}.3f,Static motion state override to Moving based on IO PDR/VDR data,IO derived Motion type,%{public}d", buf, 0x12u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_73;
        }

        sub_101A7B5F4(buf);
        v32 = *a2;
        *v122 = 134349312;
        *&v122[4] = v32;
        v123 = 1026;
        LODWORD(v124) = v137;
        LODWORD(v118) = 18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,mct_now,%{public}.3f,Static motion state override to Moving based on IO PDR/VDR data,IO derived Motion type,%{public}d", v122, v118);
        v34 = v33;
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v33);
        if (v34 == buf)
        {
          goto LABEL_73;
        }

        goto LABEL_142;
      }

      if (v135 < 0.001 && v136 > 0.3)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v40 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v41 = *a2;
          *buf = 134349312;
          *&buf[4] = v41;
          v147 = 2050;
          *v148 = v136;
          _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "#fusion,mct_now,%{public}.3f,Static motion state override to Moving based on IO PDR delta-altitude changes,delta altitude change,%{public}.2f", buf, 0x16u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_73;
        }

        sub_101A7B5F4(buf);
        v116 = *a2;
        *v122 = 134349312;
        *&v122[4] = v116;
        v123 = 2050;
        v124 = v136;
        LODWORD(v118) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,mct_now,%{public}.3f,Static motion state override to Moving based on IO PDR delta-altitude changes,delta altitude change,%{public}.2f", v122, v118);
        v34 = v117;
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v117);
        if (v34 == buf)
        {
          goto LABEL_73;
        }

LABEL_142:
        free(v34);
LABEL_73:
        *v138 = 3;
      }
    }

    if (*(a1 + 2778))
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  if (*&a3[1].type <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v35 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "#fusion,cannot use buffered Motion Activity sample with no valid time-tag", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      return;
    }

    sub_101A7B5F4(buf);
    *v125 = 0;
    LODWORD(v118) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,cannot use buffered Motion Activity sample with no valid time-tag", v125, v118);
    v17 = v36;
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v36);
LABEL_16:
    if (v17 != buf)
    {
      free(v17);
    }

    return;
  }

  *v122 = 0;
  v18 = sub_10000B1F8(v13, v14);
  sub_10000AED4(v18, v125);
  if (sub_100125300(v125, v122))
  {
    v121 = *&a3[1].type - *v122;
    *buf = &v121;
    v19 = sub_100D73858(a1 + 2920, &v121, &unk_101C66300, buf);
    memmove(v19 + 5, a3, 0x88uLL);
    *(v19 + 176) = 1;
    if (((CLMotionActivity::isDriving(a3) & 1) != 0 || a3->isVehicleConnected) && ((v20 = *(a1 + 2448), (v20 - 1) < 5) || v20 == 10) || (CLMotionActivity::isTypeStatic() & 1) == 0 && (v39 = *(a1 + 2448), (v39 - 3) >= 8) && v39)
    {
      v120 = 7;
      sub_1006EB88C(&v120, &a3->type, &a3->confidence);
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v21 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v22 = CLMotionActivity::activityTypeToString();
        v23 = CLMotionActivity::activityConfidenceToString();
        *buf = 136446722;
        *&buf[4] = v22;
        v147 = 2082;
        *v148 = v23;
        *&v148[8] = 1026;
        LODWORD(v149) = v120;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#fusion,buffered Motion Activity,type,%{public}s,confidence,%{public}s,used to set dynamics to,%{public}d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v99 = qword_1025D4778;
        v100 = CLMotionActivity::activityTypeToString();
        v101 = CLMotionActivity::activityConfidenceToString();
        *v138 = 136446722;
        *&v138[4] = v100;
        *&v138[12] = 2082;
        *&v138[14] = v101;
        *&v138[22] = 1026;
        *&v138[24] = v120;
        LODWORD(v118) = 28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v99, 2, "#fusion,buffered Motion Activity,type,%{public}s,confidence,%{public}s,used to set dynamics to,%{public}d", v138, v118);
        v103 = v102;
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v102);
        if (v103 != buf)
        {
          free(v103);
        }
      }

      sub_100125538(a1 + 2424, v120, v121);
      v24 = *(a1 + 248);
      if (v24)
      {
        v25 = v120;
        do
        {
          *(v24 + 140) = v25;
          v24 = *v24;
        }

        while (v24);
      }

      if (*(a1 + 1104))
      {
        *(a1 + 808) = v120;
      }
    }

    return;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v37 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "#fusion,cannot compute MachContinuousToCFAbsoluteOffset to convert buffered motion activity sample time, discarding sample", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    *v138 = 0;
    LODWORD(v118) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,cannot compute MachContinuousToCFAbsoluteOffset to convert buffered motion activity sample time, discarding sample", v138, v118);
    v17 = v38;
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v38);
    goto LABEL_16;
  }
}

void sub_1000DCDA0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000DCDB0(uint64_t a1, __int128 *a2, double a3)
{
  v6 = a2[6];
  v7 = a2[7];
  v8 = *(a2 + 16);
  v9 = a2[2];
  v10 = a2[3];
  v12 = a2[4];
  v11 = a2[5];
  v14 = *a2;
  v13 = a2[1];
  *(a1 + 32) = a3;
  *(a1 + 40) = v14;
  *(a1 + 104) = v12;
  *(a1 + 88) = v10;
  *(a1 + 72) = v9;
  *(a1 + 56) = v13;
  *(a1 + 168) = v8;
  *(a1 + 152) = v7;
  *(a1 + 136) = v6;
  *(a1 + 120) = v11;
  v15 = *(a1 + 24);
  sub_1000D0778(a1, a2, a3);
  if (qword_1025D4770 != -1)
  {
    sub_1018FE80C();
  }

  v16 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v17 = *a2;
    v18 = *(a2 + 1);
    v19 = *(a1 + 24);
    *buf = 134350080;
    v36 = a3;
    v37 = 1026;
    v38 = v17;
    v39 = 1026;
    v40 = v18;
    v41 = 1026;
    v42 = v15;
    v43 = 1026;
    v44 = v19;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#motion,dynamics mode on motion update,mct,%{public}.3f,type,%{public}d,confidence,%{public}d,old dynamics mode,%{public}d,new dynamics mode,%{public}d", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FE820(buf);
    v20 = *a2;
    v21 = *(a2 + 1);
    v22 = *(a1 + 24);
    v25 = 134350080;
    v26 = a3;
    v27 = 1026;
    v28 = v20;
    v29 = 1026;
    v30 = v21;
    v31 = 1026;
    v32 = v15;
    v33 = 1026;
    v34 = v22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#motion,dynamics mode on motion update,mct,%{public}.3f,type,%{public}d,confidence,%{public}d,old dynamics mode,%{public}d,new dynamics mode,%{public}d", &v25, 36);
    v24 = v23;
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionMotionActivity::motionActivityUpdate(const CFTimeInterval, const CLMotionActivity &)", "%s\n", v23);
    if (v24 != buf)
    {
      free(v24);
    }
  }
}

void sub_1000DCFE0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1000DCFEC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9, float a10, __int128 a11, int a12)
{
  dispatch_assert_queue_not_V2(*(a1 + 480));
  v22 = *(a1 + 480);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DD0E8;
  block[3] = &unk_102477DC0;
  block[4] = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a9;
  v31 = a10;
  v32 = a8;
  v33 = a11;
  v34 = a12;
  dispatch_sync(v22, block);
}

float sub_1000DD0E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 596) += *(a1 + 40);
  *(v1 + 568) += *(a1 + 44);
  *(v1 + 572) += *(a1 + 48);
  *(v1 + 584) += *(a1 + 52);
  *(v1 + 592) += *(a1 + 56);
  *(v1 + 588) += *(a1 + 60);
  *(v1 + 600) = *(a1 + 64) + *(v1 + 600);
  result = *(a1 + 68) + *(v1 + 604);
  *(v1 + 604) = result;
  *(v1 + 576) += *(a1 + 72);
  *(v1 + 580) += *(a1 + 76);
  *(v1 + 608) += *(a1 + 80);
  *(v1 + 612) += *(a1 + 84);
  *(v1 + 624) += *(a1 + 88);
  *(v1 + 628) += *(a1 + 92);
  return result;
}

void sub_1000DD1D0(dispatch_queue_t *a1, uint64_t a2)
{
  dispatch_assert_queue_not_V2(*a1);
  v4 = *a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000DD258;
  v5[3] = &unk_10245D2A8;
  v5[4] = a1;
  v5[5] = a2;
  dispatch_sync(v4, v5);
}

void sub_1000DD258(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (*(v2 + 8) == 1)
  {
    v4 = *(result + 40);
    *(v2 + 36) = vaddq_s32(*(v2 + 36), vuzp1q_s32(*v4, vrev64q_s32(*v4)));
    *(v2 + 52) = vadd_s32(*(v2 + 52), *(v4 + 16));
    sub_10001A3E8(result, a2);
    v5 = sub_10001CF3C();
    if ((v5 & 1) == 0)
    {
      v7 = *(result + 40);
      v12 = *v7;
      v13 = *(v7 + 2);
      v8 = sub_100011660(v5, v6);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100E0374C;
      v9[3] = &unk_1024605D8;
      v9[4] = v2;
      v10 = v12;
      v11 = v13;
      sub_10017A794(v8, v9);
    }
  }
}

void sub_1000DD340(uint64_t a1, unsigned int *a2)
{
  *(a1 + 48) = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *(a2 + 4);
  *(a1 + 96) = *(a2 + 3);
  *(a1 + 112) = v6;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  v7 = *(a2 + 5);
  v8 = *(a2 + 6);
  v9 = *(a2 + 7);
  *(a1 + 176) = *(a2 + 16);
  *(a1 + 144) = v8;
  *(a1 + 160) = v9;
  *(a1 + 128) = v7;
  *(a1 + 40) = *(a2 + 5);
  v10 = sub_10000B1F8(a1, a2);
  v12 = 1;
  *(a1 + 32) = sub_10001A6B0(v10, &v12);
  v11.n128_u64[0] = *(a2 + 10);
  sub_1000DB004((a1 + 208), *a2, v11);
}

void sub_1000DD3CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000B1F8(a1, a2);
  v28 = 0;
  v5 = sub_10001A6B0(v3, &v28);
  if (v5 - *(a1 + 8) > 10.0)
  {
    *(a1 + 8) = v5;
    if (sub_100143194(a1, v4) > 300.0)
    {
      v6 = *(a1 + 272);
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        v9 = *(a1 + 272);
        do
        {
          if (((1 << v7) & v9) != 0)
          {
            v8 += *(a1 + 4 * v7 + 16);
            v9 &= ~(1 << v7);
          }

          if (v7 > 0x3E)
          {
            break;
          }

          ++v7;
        }

        while (v9);
        if (v8 >= 1)
        {
          v10 = 0;
          v11 = 0;
          do
          {
            if (((1 << v10) & v6) != 0)
            {
              v11 += *(a1 + 4 * v10 + 16);
              v6 &= ~(1 << v10);
            }

            if (v10 > 0x3E)
            {
              break;
            }

            ++v10;
          }

          while (v6);
          v12 = (*(a1 + 24) + *(a1 + 20)) / v11;
          if (v12 > 0.4)
          {
            if (qword_1025D4600 != -1)
            {
              sub_101B49950();
            }

            v13 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              v15 = sub_100143194(a1, v14);
              v18 = sub_10000B1F8(v16, v17);
              v28 = 1;
              v19 = sub_10001A6B0(v18, &v28);
              v28 = 134349568;
              v29 = v15;
              v30 = 2050;
              v31 = v12;
              v32 = 2050;
              v33 = v19;
              _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "CLJR,PedestrianDetector,reset after frozen or static for the last %{public}.3f sec,ratio,%{public}.3f,mct,%{public}.3f", &v28, 0x20u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101B49978(a1, v20, v21, v22, v23, v24, v25, v26, v12);
            }

            sub_10115EE58(a1, v27);
          }
        }
      }
    }
  }
}

uint64_t sub_1000DD5D0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

double sub_1000DD5F4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018F5F74();
  }

  v4 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 288);
    v6 = *(a1 + 296);
    v7 = *(a1 + 48);
    v8 = *(a1 + 216);
    v9 = *(a1 + 192);
    v11[0] = 67110144;
    v11[1] = v5;
    v12 = 2048;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Dummy, Static, step count: %d, step distance: %f, activity: %d, type: %d, vm: %f", v11, 0x28u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F5F88(a1);
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  *&result = 3;
  *(a2 + 32) = 3;
  return result;
}

void sub_1000DD728(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *(a3 + 31) = 0;
  *(a3 + 64) = 0;
  *a3 = 0;
  a3[1] = 0;
  *(a3 + 16) = 0;
  a3[3] = 0;
  a3[4] = 0;
  *(a3 + 40) = 0;
  a3[6] = 0;
  a3[7] = 0;
  *(a3 + 64) = 0;
  *(a3 + 9) = 0u;
  *(a3 + 11) = 0u;
  *(a3 + 13) = 0u;
  *(a3 + 120) = 0;
  *(a3 + 33) = 1000;
  sub_10001A3E8(a1, a2);
  if (sub_10001CF3C())
  {
    v8 = 2;
    if (*(a2 + 248) == 1)
    {
      if (sub_100CDBE44(*(a2 + 240)))
      {
        v8 = 0;
      }

      else
      {
        v8 = 2;
      }
    }

    sub_100F23644(a1, a2, a3, v6, v7);
    if (qword_1025D4460 != -1)
    {
      sub_101ACAC20();
    }

    v9 = qword_1025D4468;
    if (os_log_type_enabled(qword_1025D4468, v8))
    {
      v11 = *a3;
      v10 = a3[1];
      v12 = a3[3];
      v13 = a3[4];
      v14 = *(a3 + 40);
      v15 = a3[6];
      v16 = *(a3 + 14);
      v17 = *(a3 + 15);
      v18 = *(a3 + 64);
      v19 = a3[9];
      v20 = a3[10];
      v21 = a3[11];
      v22 = a3[12];
      v23 = a3[13];
      v24 = a3[14];
      v25 = *(a3 + 16);
      v26 = *(a3 + 120);
      v27 = *(a3 + 31);
      v28 = *(a3 + 129);
      v29 = *(a3 + 128);
      v30 = *(a3 + 33);
      *buf = 134354176;
      v96 = v10;
      v97 = 2048;
      v98 = v11;
      v99 = 2048;
      v100 = v12;
      v101 = 2048;
      v102 = v13;
      v103 = 1026;
      v104 = v14;
      v105 = 2048;
      v106 = v15;
      v107 = 1026;
      v108 = v16;
      v109 = 1026;
      v110 = v17;
      v111 = 1026;
      v112 = v18;
      v113 = 2050;
      v114 = v19;
      v115 = 2050;
      v116 = v20;
      v117 = 2050;
      v118 = v21;
      v119 = 2050;
      v120 = v22;
      v121 = 2050;
      v122 = v23;
      v123 = 2050;
      v124 = v24;
      v125 = 1026;
      v126 = v25;
      v127 = 1026;
      v128 = v26;
      v129 = 1026;
      v130 = v27;
      v131 = 1026;
      v132 = v28;
      v133 = 1026;
      v134 = v29;
      v135 = 1026;
      v136 = v30;
      _os_log_impl(dword_100000000, v9, v8, "RunningPower,startTime,%{public}.2f,powerWattage,%.2f,userWeight,%.2f,userHeight,%.2f,isWeightSet,%{public}d,workrateMETs,%.2f,activityTypeWithoutOverride,%{public}d,activityType,%{public}d,isWorkoutSelected,%{public}d,currentPace,%{public}.2f,currentCadence,%{public}.2f,horizSpeed,%{public}.3f,verticalSpeed,%{public}.3f,grade,%{public}.2f,eta,%{public}.2f,isValid,%{public}d,isGradeOnsetEscalated,%{public}d,gradeOnsetCounter,%{public}d,isRunning,%{public}d,isArmConstrainedStateValid,%{public}d,elevationSource,%{public}d", buf, 0xACu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4460 != -1)
      {
        sub_101ACABB4();
      }

      v32 = *a3;
      v31 = a3[1];
      v33 = a3[3];
      v34 = a3[4];
      v35 = *(a3 + 40);
      v36 = a3[6];
      v37 = *(a3 + 14);
      v38 = *(a3 + 15);
      v39 = *(a3 + 64);
      v41 = a3[9];
      v40 = a3[10];
      v42 = a3[11];
      v43 = a3[12];
      v44 = a3[13];
      v45 = a3[14];
      v46 = *(a3 + 16);
      v47 = *(a3 + 120);
      v48 = *(a3 + 31);
      v49 = *(a3 + 129);
      v50 = *(a3 + 128);
      v51 = *(a3 + 33);
      v54[0] = 134354176;
      *&v54[1] = v31;
      v55 = 2048;
      v56 = v32;
      v57 = 2048;
      v58 = v33;
      v59 = 2048;
      v60 = v34;
      v61 = 1026;
      v62 = v35;
      v63 = 2048;
      v64 = v36;
      v65 = 1026;
      v66 = v37;
      v67 = 1026;
      v68 = v38;
      v69 = 1026;
      v70 = v39;
      v71 = 2050;
      v72 = v41;
      v73 = 2050;
      v74 = v40;
      v75 = 2050;
      v76 = v42;
      v77 = 2050;
      v78 = v43;
      v79 = 2050;
      v80 = v44;
      v81 = 2050;
      v82 = v45;
      v83 = 1026;
      v84 = v46;
      v85 = 1026;
      v86 = v47;
      v87 = 1026;
      v88 = v48;
      v89 = 1026;
      v90 = v49;
      v91 = 1026;
      v92 = v50;
      v93 = 1026;
      v94 = v51;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4468, v8, "RunningPower,startTime,%{public}.2f,powerWattage,%.2f,userWeight,%.2f,userHeight,%.2f,isWeightSet,%{public}d,workrateMETs,%.2f,activityTypeWithoutOverride,%{public}d,activityType,%{public}d,isWorkoutSelected,%{public}d,currentPace,%{public}.2f,currentCadence,%{public}.2f,horizSpeed,%{public}.3f,verticalSpeed,%{public}.3f,grade,%{public}.2f,eta,%{public}.2f,isValid,%{public}d,isGradeOnsetEscalated,%{public}d,gradeOnsetCounter,%{public}d,isRunning,%{public}d,isArmConstrainedStateValid,%{public}d,elevationSource,%{public}d", v54, 172);
      v53 = v52;
      sub_100152C7C("Generic", 1, 0, 2, "CLPower::ModelOutput CLPowerEstimator::computeAndLogPower(const CLNatalieModelInput &)", "%s\n", v52);
      if (v53 != buf)
      {
        free(v53);
      }
    }

    sub_10067FD68(a3, buf);
    if (*(a1 + 64) == 1)
    {
      if (qword_102637F48 != -1)
      {
        sub_101ACAC34();
      }

      if (qword_102637F50)
      {
        operator new();
      }
    }

    PB::Base::~Base(buf);
  }
}

void sub_1000DDBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  PB::Base::~Base(va);
  _Unwind_Resume(a1);
}

double sub_1000DDC14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 20) = sub_1000D8610(a1, a2 + 704, *(a2 + 248), *(a2 + 8));
  *(a3 + 24) = 0;
  *&result = 3;
  *(a3 + 32) = 3;
  return result;
}

void sub_1000DDC60(uint64_t a1, double a2, double a3)
{
  v9 = a3;
  if (a2 - *(a1 + 88) <= 11.0)
  {
LABEL_10:
    sub_1000DDD4C(a1, &v9);
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *(a1 + 56) = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v7 = *(a1 + 32);
      v4 = (*(a1 + 24) + 8);
      *(a1 + 24) = v4;
      v6 = (v7 - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 256;
  }

  else
  {
    if (v6 != 2)
    {
LABEL_9:
      sub_1003C93BC(a1 + 64, *(a1 + 72));
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 64) = a1 + 72;
      goto LABEL_10;
    }

    v8 = 512;
  }

  *(a1 + 48) = v8;
  goto LABEL_9;
}

void sub_1000DDDEC(unint64_t *result, void *a2)
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
    sub_10045E25C(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

uint64_t sub_1000DDE74(void *a1, int a2, void *a3)
{
  v3 = a1[10];
  if (!v3)
  {
    return 0;
  }

  if (a2 == 2)
  {
    v10 = vcvtd_n_f64_u64(v3, 1uLL);
    v11 = vcvtms_s32_f32(v10);
    v12 = a1[8];
    if (v11 < 1)
    {
      v7 = a1[8];
    }

    else
    {
      for (i = 0; i != v11; ++i)
      {
        v14 = v12[1];
        if (v14)
        {
          do
          {
            v7 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v7 = v12[2];
            v8 = *v7 == v12;
            v12 = v7;
          }

          while (!v8);
        }

        v12 = v7;
      }
    }

    goto LABEL_22;
  }

  if (a2 != 1)
  {
    if (!a2)
    {
      v6 = a1[9];
      v4 = a1 + 9;
      v5 = v6;
      if (v6)
      {
        do
        {
          v7 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (v8);
      }

      goto LABEL_22;
    }

    return 0;
  }

  v7 = a1[8];
LABEL_22:
  *a3 = v7[4];
  return 1;
}

uint64_t sub_1000DDF40(uint64_t a1, uint64_t a2, double a3)
{
  if (qword_1025D4490 != -1)
  {
    sub_1019EB444();
  }

  v6 = qword_1025D4498;
  if (os_log_type_enabled(qword_1025D4498, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134217984;
    v15 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLExerciseMinuteController::feedNatalie called, rawMets, %f", &v14, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019EB620(a3);
  }

  result = sub_1000DE0A8(a1, a2);
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 24);
    v10 = a1 + 40;
    do
    {
      v11 = *(v8 + 32);
      v12 = v11 >= v9;
      v13 = v11 < v9;
      if (v12)
      {
        v10 = v8;
      }

      v8 = *(v8 + 8 * v13);
    }

    while (v8);
    if (v10 != a1 + 40 && v9 >= *(v10 + 32))
    {
      return (*(**(v10 + 40) + 16))(*(v10 + 40), a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000DE0A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4560);
  sub_10001A3E8(a1, a2);
  result = sub_10001CF3C();
  v6 = 0;
  if (result && v4)
  {
    v6 = *(a2 + 48) == 90603 || (*(a2 + 248) & 1) == 0;
  }

  *(a1 + 24) = v6;
  return result;
}

double sub_1000DE10C(double a1, uint64_t a2, int a3, unint64_t *a4, float *a5)
{
  v6 = a1;
  if (!a3)
  {
    v13 = *a5;
    *&v37 = a1;
    DWORD2(v37) = v13;
    sub_1000DE310(a4, &v37);
    v14 = a4[1];
    v6 = 0.0;
    v15 = a4[2] - v14;
    if (!v15)
    {
      return v6;
    }

    v16 = a4[4];
    v17 = &v14[v16 >> 8];
    v18 = *v17;
    v19 = *v17 + 16 * v16;
    v20 = *(v14 + (((a4[5] + v16) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a4 + 40) + v16);
    if (v19 == v20)
    {
      return v6;
    }

    v21 = 0.0;
    v22 = *v17;
    v23 = v19;
    v24 = v17;
    do
    {
      v25 = *v23;
      v23 += 2;
      v26 = v25;
      if (v23 - v22 == 4096)
      {
        v27 = v24[1];
        ++v24;
        v22 = v27;
        v23 = v27;
      }

      v21 = v21 + v26;
    }

    while (v23 != v20);
    v6 = 0.0;
    if (v21 < 10.0)
    {
      return v6;
    }

    v28 = 0.0;
    do
    {
      v29 = v19 + 16;
      if (v19 + 16 - v18 == 4096)
      {
        v30 = v17[1];
        ++v17;
        v18 = v30;
        v29 = v30;
      }

      v31 = *v19 * *(v19 + 8);
      v28 = v28 + v31;
      v19 = v29;
    }

    while (v29 != v20);
    v32 = v28 / v21;
    *a5 = v32;
    a4[5] = 0;
    v33 = v15 >> 3;
    if (v33 >= 3)
    {
      do
      {
        operator delete(*v14);
        v34 = a4[2];
        v14 = (a4[1] + 8);
        a4[1] = v14;
        v33 = (v34 - v14) >> 3;
      }

      while (v33 > 2);
    }

    if (v33 == 1)
    {
      v35 = 128;
    }

    else
    {
      if (v33 != 2)
      {
        return v21;
      }

      v35 = 256;
    }

    a4[4] = v35;
    return v21;
  }

  v7 = a4[1];
  v8 = a4[2];
  a4[5] = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = a4[2];
      v7 = (a4[1] + 8);
      a4[1] = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 128;
    goto LABEL_24;
  }

  if (v9 == 2)
  {
    v11 = 256;
LABEL_24:
    a4[4] = v11;
  }

  return v6;
}

uint64_t sub_1000DE310(unint64_t *a1, _OWORD *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1005A8840(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  v8 = a1[4];
  v9 = a1[5] + 1;
  a1[5] = v9;
  v10 = v8 + v9;
  v11 = a1[1];
  v12 = (v11 + 8 * (v10 >> 8));
  v13 = *v12 + 16 * v10;
  if (a1[2] == v11)
  {
    v13 = 0;
  }

  if (v13 == *v12)
  {
    v13 = *(v12 - 1) + 4096;
  }

  return v13 - 16;
}

uint64_t sub_1000DE3D0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  if (*(v2 + 176) == 1)
  {
    sub_1010E62E4((v1 + 144), v2);
    Current = CFAbsoluteTimeGetCurrent();
    if (v4[353] == 1 && *(v3 + 28) == 1)
    {
      v6 = Current;
      sub_10152D354(&v35);
      sub_101555B54(&v35);
      v39 |= 1u;
      *&v37[84] = v6;
      v7 = v38;
      v8 = *(v3 + 2);
      *(v38 + 68) |= 0x10u;
      *(v7 + 40) = v8;
      v9 = v38;
      v10 = *(v3 + 6);
      *(v38 + 68) |= 0x20u;
      *(v9 + 48) = v10;
      v11 = v38;
      LOBYTE(v10) = *(v3 + 29);
      *(v38 + 68) |= 0x400u;
      *(v11 + 65) = v10;
      v12 = v38;
      v13 = *(v3 + 12);
      *(v38 + 68) |= 2u;
      *(v12 + 16) = v13;
      v14 = v38;
      v15 = *(v3 + 26);
      *(v38 + 68) |= 0x40u;
      *(v14 + 52) = v15;
      v16 = v38;
      v17 = *(v3 + 22);
      *(v38 + 68) |= 0x80u;
      *(v16 + 56) = v17;
      v18 = v38;
      v19 = *(v3 + 15);
      *(v38 + 68) |= 4u;
      *(v18 + 24) = v19;
      v20 = v38;
      v21 = *(v3 + 4);
      *(v38 + 68) |= 8u;
      *(v20 + 32) = v21;
      v22 = v38;
      v23 = *(v3 + 8);
      *(v38 + 68) |= 1u;
      *(v22 + 8) = v23;
      v24 = v38;
      LOBYTE(v17) = *(v3 + 128);
      *(v38 + 68) |= 0x200u;
      *(v24 + 64) = v17;
      if (qword_102637F48 != -1)
      {
        sub_101B2DC58();
      }

      if (qword_102637F50)
      {
        sub_1017F73BC(qword_102637F50, &v35);
      }

      sub_101532FA8(&v35);
    }

    CHVO2MaxEstimator::feedCalorieUpdate();
    if (LOBYTE(__dst[0]) == 1)
    {
      v33 = 7;
      bzero(v37, 0xD60uLL);
      v35 = *(__dst + 8);
      v36 = *(&__dst[1] + 1);
      (*(*v4 + 152))(v4, &v33, &v35, 1, 0xFFFFFFFFLL, 0);
    }
  }

  sub_1000DE7EC((v4 + 3552), v3 + 184);
  bzero(v37, 0xD60uLL);
  v25 = *(v3 + 20);
  v26 = *(v3 + 21);
  *&v35 = *(v3 + 2);
  *(&v35 + 1) = v25;
  v36 = v26;
  LODWORD(__dst[0]) = 5;
  (*(*v4 + 152))(v4, __dst, &v35, 1, 0xFFFFFFFFLL, 0);
  v33 = 11;
  memcpy(__dst, v3, 0xD78uLL);
  (*(*v4 + 152))(v4, &v33, __dst, 1, 0xFFFFFFFFLL, 0);
  v33 = 9;
  bzero(&__dst[11] + 8, 0xCC0uLL);
  v27 = v3[9];
  __dst[8] = v3[8];
  __dst[9] = v27;
  __dst[10] = v3[10];
  *&__dst[11] = *(v3 + 22);
  v28 = v3[5];
  __dst[4] = v3[4];
  __dst[5] = v28;
  v29 = v3[7];
  __dst[6] = v3[6];
  __dst[7] = v29;
  v30 = v3[1];
  __dst[0] = *v3;
  __dst[1] = v30;
  v31 = v3[3];
  __dst[2] = v3[2];
  __dst[3] = v31;
  return (*(*v4 + 152))(v4, &v33, __dst, 1, 0xFFFFFFFFLL, 0);
}

uint64_t sub_1000DE7FC(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4520 != -1)
  {
    sub_1019909B8();
  }

  v4 = qword_1025D4528;
  if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 176);
    v7 = v5 == 3 || (v5 & 0xFFFFFFFFFFFFFFFELL) == 4;
    v8 = *(a2 + 16);
    v9 = *(a1 + 160);
    v11 = (v5 - 6) >= 0xFFFFFFFFFFFFFFFDLL && v9 <= v8 && v8 - v9 < *(a1 + 216);
    if (v9 <= v8)
    {
      v13 = *(a1 + 216);
      v12 = v8 - v9 < v13;
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 216);
    }

    v14 = *(a1 + 160);
    v15 = *(a2 + 824);
    v16 = *(a1 + 44);
    v17 = *(a1 + 184);
    v18 = vabdd_f64(*(a2 + 832), *a2);
    *buf = 67111680;
    *v45 = v11;
    *&v45[4] = 1024;
    *&v45[6] = v7;
    *&v45[10] = 1024;
    *&v45[12] = v12;
    *&v45[16] = 2048;
    *&v45[18] = v8;
    v46 = 2048;
    v47 = v14;
    v48 = 1024;
    v49 = v13;
    v50 = 2048;
    v51 = v15;
    v52 = 1024;
    v53 = v16;
    v54 = 1024;
    v55 = v17;
    v56 = 2048;
    v57 = v18;
    v58 = 2048;
    v59 = 0x4014000000000000;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "shouldCommitInputData, %d, isCyclingWorkout, %d, inTimeRange, %d, now, %f, sessionStartTime, %f, maxPossibleDifference, %d, power, %f, fApproximatePowerFromMets, %d, inPauseMode, %d, powerSampleTimediff, %f, powerSampleTimediffTolerance, %f", buf, 0x58u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101990C08(a1, a2);
  }

  if ((*(a1 + 44) & 1) == 0 && (*(a2 + 824) < 0.0 || *(a2 + 712) <= 0.0))
  {
    if (qword_1025D4520 != -1)
    {
      sub_101990AE4();
    }

    v28 = qword_1025D4528;
    if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 44);
      v30 = *(a2 + 824);
      v31 = *(a2 + 712);
      *buf = 67109632;
      *v45 = v29;
      *&v45[4] = 2048;
      *&v45[6] = v30;
      *&v45[14] = 2048;
      *&v45[16] = v31;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "Cannot commit the data since there is no power or start time is 0. fApproximatePowerFromMets %d, power, %f, start time, %f ", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4520 != -1)
      {
        sub_101990AE4();
      }

      v33 = *(a1 + 44);
      v34 = *(a2 + 824);
      v35 = *(a2 + 712);
      LODWORD(v39) = 67109632;
      HIDWORD(v39) = v33;
      v40 = 2048;
      v41 = v34;
      v42 = 2048;
      v43 = v35;
      LODWORD(v38) = 28;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4528, 2, "Cannot commit the data since there is no power or start time is 0. fApproximatePowerFromMets %d, power, %f, start time, %f ", &v39, v38, v39);
      v37 = v36;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCyclingFTPDataStore::shouldCommitInputData(const CLNatalieModelInput::Data &)", "%s\n", v36);
      if (v37 != buf)
      {
        free(v37);
      }
    }

    goto LABEL_55;
  }

  if ((*(a1 + 176) - 3) >= 3)
  {
    if (qword_1025D4520 != -1)
    {
      sub_101990AE4();
    }

    v26 = qword_1025D4528;
    if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "Cannot commit the data since it is not a cycling workout.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101990DF8();
    }

    goto LABEL_55;
  }

  v19 = *(a2 + 16);
  v20 = *(a1 + 160);
  if (v20 > v19 || v19 - v20 >= *(a1 + 216))
  {
    if (qword_1025D4520 != -1)
    {
      sub_101990AE4();
    }

    v27 = qword_1025D4528;
    if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "Cannot commit the data since it is not in time range.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101991000();
    }

LABEL_55:
    v21 = 0;
    return v21 & 1;
  }

  v21 = *(a1 + 184) ^ 1;
  if ((*(a1 + 44) & 1) == 0 && (*(a1 + 184) & 1) == 0)
  {
    v22 = *(a2 + 832);
    if (vabdd_f64(v22, *a2) <= 5.0)
    {
      v21 = 1;
      return v21 & 1;
    }

    if (v22 > 0.0)
    {
      if (qword_1025D4520 != -1)
      {
        sub_101990AE4();
      }

      v23 = qword_1025D4528;
      if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a2 + 832);
        v25 = *a2;
        *buf = 134218240;
        *v45 = v24;
        *&v45[8] = 2048;
        *&v45[10] = v25;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "Power timestamp is too old, entryTime, %f, powerTime, %f", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101990EE4((a2 + 832), a2);
      }
    }

    goto LABEL_55;
  }

  return v21 & 1;
}

uint64_t sub_1000DED24(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  *(a1 + 92) = *(a3 + 44);
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 48) = v5;
  result = sub_1000DE7FC(a1, a2);
  if (result)
  {
    sub_10099509C(a1, *(a2 + 840));
    sub_100994C0C(a1, a2, v9);
    return (*(**(a1 + 24) + 16))(*(a1 + 24), v9);
  }

  return result;
}

void sub_1000DEDB8(uint64_t a1, int *a2, const void *a3, int a4, int a5)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = *a2;
    v9 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= v8)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v8));
    }

    while (v6);
    if (v9 == v7 || v8 < *(v9 + 32))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_100248B84(buf, a2, &v12);
      sub_10047D8C8(v7 - 8, buf);
    }

    if (a4)
    {
      operator new();
    }

    v10 = *(v9 + 72);
    *(v9 + 64) = 0;
    *(v9 + 72) = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    if (*(v9 + 56))
    {
      sub_1010F2710(a3);
    }
  }
}

void sub_1000DF290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DF624(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000344B0(a2, 0);
  v5 = sub_1000DF834(a1, v4, 5, 10.0);
  v6 = sub_1000344B0(a2, 0);
  v7 = sub_1000DF834(a1, v6, 3, -1.0);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v8 = v5 | v7;
  v9 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v19 = v5 | v7;
    v20 = 1024;
    v21 = v5;
    v22 = 1024;
    v23 = v7;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "mayTakeProcessAssertion,%d,background,%d,slc,%d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v14 = 1024;
    v15 = v5;
    v16 = 1024;
    v17 = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "mayTakeProcessAssertion,%d,background,%d,slc,%d", &v13, 20, 67109632);
    v12 = v11;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLClientManager::mayTakeProcessAssertion(CLDaemonClient *)", "%s\n", v11);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  return v8;
}

id sub_1000DF834(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  result = [v7 isValidCKP];
  if (result)
  {
    v13 = 0;
    v14 = 0;
    sub_10004F9C8(a3, &v14, &v13);
    [*(a1 + 136) doubleForKey:v14 atKeyPath:v7 defaultValue:-1.0];
    v10 = v9;
    [*(a1 + 136) doubleForKey:v13 atKeyPath:v7 defaultValue:-1.0];
    result = (v10 != -1.0 && (v11 != -1.0 ? (v12 = v11 < v10) : (v12 = 1), v12) || vabdd_f64(v11, CFAbsoluteTimeGetCurrent()) < a4);
  }

  return result;
}

void sub_1000DF90C(id *result, uint64_t a2)
{
  if (*(result + 90))
  {
    v2 = a2;
    if (qword_1025D4600 != -1)
    {
      sub_101951784();
    }

    v4 = (result + 45);
    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v6 = *v4;
      v9[0] = 67240448;
      v9[1] = v2;
      v10 = 1026;
      v11 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLC: Resume for exception, %{public}#x, oldExceptions %{public}#x", v9, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019521B8();
    }

    v7 = (*v4 & ~v2) == 0;
    *v4 &= ~v2;
    if (v7)
    {
      if (qword_1025D4600 != -1)
      {
        sub_101951718();
      }

      v8 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v9[0]) = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLC: Resume", v9, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019522C8();
      }

      [result[68] enable];
      [result[68] notifyFromLastInfo];
    }
  }
}

uint64_t sub_1000DFD74(double *a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_101951784();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "CLC: Received end route", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101951AE0();
  }

  sub_1000DFEFC(a1, 0, 1.79769313e308);
  return sub_1000E04E8(a1, 0);
}

void sub_1000DFEFC(double *a1, uint64_t a2, double a3)
{
  v4 = a2;
  v6 = *(a1 + 86);
  v7 = a1[44];
  a1[44] = a3;
  if (v7 != a3)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101951784();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v9 = -1.0;
      if (a3 != 1.79769313e308)
      {
        v9 = a3;
      }

      *buf = 134283521;
      *&buf[4] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLC: Debounce changed to %{private}lf [s]", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019518C0(a3);
    }

    if (v4 == 1)
    {
      [*(a1 + 42) setNextFireDelay:a1[44]];
    }
  }

  if (v6 == v4)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101951718();
    }

    v10 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      sub_10083D068(*(a1 + 86), buf);
      if (v49 >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      v12 = a1[44];
      if (v12 == 1.79769313e308)
      {
        v12 = -1.0;
      }

      *v43 = 136380931;
      *&v43[4] = v11;
      v44 = 2049;
      v45 = v12;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLC: Already in state %{private}s, %{private}lf", v43, 0x16u);
      if (SHIBYTE(v49) < 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101951718();
      }

      v13 = qword_1025D4608;
      sub_10083D068(*(a1 + 86), v43);
      if (v46 >= 0)
      {
        v14 = v43;
      }

      else
      {
        v14 = *v43;
      }

      v15 = a1[44];
      if (v15 == 1.79769313e308)
      {
        v15 = -1.0;
      }

      *v35 = 136380931;
      *&v35[4] = v14;
      v36 = 2049;
      v37 = v15;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v13, 2, "CLC: Already in state %{private}s, %{private}lf", v35, 22);
      v17 = v16;
      if (v46 < 0)
      {
        operator delete(*v43);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLCachedLocationController::setStateAndUpdateDebounceTimout(CLCachedLocationController_Type::CachedLocationState, CFTimeInterval)", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101951718();
    }

    v18 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      sub_10083D068(*(a1 + 86), buf);
      v19 = SHIBYTE(v49);
      v20 = *buf;
      sub_10083D068(v4, v43);
      v21 = buf;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if (v46 >= 0)
      {
        v22 = v43;
      }

      else
      {
        v22 = *v43;
      }

      *v35 = 136380931;
      *&v35[4] = v21;
      v36 = 2081;
      v37 = *&v22;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "CLC: Cached Location changed state from %{private}s to %{private}s", v35, 0x16u);
      if (v46 < 0)
      {
        operator delete(*v43);
      }

      if (SHIBYTE(v49) < 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101951740(buf);
      v28 = qword_1025D4608;
      sub_10083D068(*(a1 + 86), v43);
      v29 = v46;
      v30 = *v43;
      sub_10083D068(v4, v35);
      v31 = v43;
      if (v29 < 0)
      {
        v31 = v30;
      }

      if (v38 >= 0)
      {
        v32 = v35;
      }

      else
      {
        v32 = *v35;
      }

      v39 = 136380931;
      v40 = v31;
      v41 = 2081;
      v42 = v32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v28, 2, "CLC: Cached Location changed state from %{private}s to %{private}s", &v39, 22);
      v34 = v33;
      if (v38 < 0)
      {
        operator delete(*v35);
      }

      if (v46 < 0)
      {
        operator delete(*v43);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLCachedLocationController::setStateAndUpdateDebounceTimout(CLCachedLocationController_Type::CachedLocationState, CFTimeInterval)", "%s\n", v34);
      if (v34 != buf)
      {
        free(v34);
      }
    }

    *(a1 + 86) = v4;
    if (v4 == 1)
    {
      sub_100A2E178(a1 + 92, 1);
      __asm { FMOV            V0.2D, #-1.0 }

      *buf = _Q0;
      v49 = 0;
      v50 = 0;
      v48 = 0;
      sub_10002FA64(buf);
    }

    [*(a1 + 42) setNextFireDelay:1.79769313e308];
    [*(*(a1 + 39) + 16) unregister:*(*(a1 + 39) + 8) forNotification:22];
    sub_100A2E178(a1 + 92, 0);
    *buf = *(a1 + 86);
    *v43 = 1;
    (*(*(a1 + 1) + 152))(a1 + 1, v43, buf, 0, 0xFFFFFFFFLL, 0);
  }
}

void sub_1000E04B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E04E8(uint64_t result, int a2)
{
  if (*(result + 348) != a2)
  {
    v6 = v2;
    v7 = v3;
    *(result + 348) = a2;
    v5 = a2;
    v4 = 2;
    return (*(*(result + 8) + 152))();
  }

  return result;
}

void sub_1000E055C(uint64_t a1, float a2, double a3)
{
  v13 = a2;
  if (*(a1 + 8) == 1)
  {
    v4 = a3 - *a1;
    if (v4 < *(a1 + 200))
    {
      v4 = *(a1 + 200);
    }

    *(a1 + 200) = v4;
  }

  *a1 = a3;
  *(a1 + 8) = 1;
  v5 = *(a1 + 176);
  v6 = *(a1 + 180);
  if (v5 > a2)
  {
    v5 = a2;
  }

  if (v6 < a2)
  {
    v6 = a2;
  }

  *(a1 + 176) = v5;
  *(a1 + 180) = v6;
  ++*(a1 + 192);
  v7 = *(a1 + 136);
  v8 = *(a1 + 140);
  if (v7 > a2 || v8 < a2)
  {
    v10 = vabds_f32(v7, a2);
    v11 = vabds_f32(v8, a2);
    if (v11 >= v10)
    {
      v11 = v10;
    }

    v12 = v11;
    sub_1000423D4(a1 + 336, &v12);
    ++*(a1 + 188);
  }

  else
  {
    ++*(a1 + 184);
  }

  sub_1000423D4(a1 + 264, &v13);
  if (*(a1 + 232) == 1)
  {
    CFAbsoluteTimeGetCurrent();
    AnalyticsSendEventLazy();
    *(a1 + 232) = 0;
  }
}

void sub_1000E06BC(uint64_t a1, int *a2, uint64_t a3)
{
  sub_1000E07C8(a1, a2, a3);
  v7 = *a2;
  if (*a2 > 1)
  {
    if (v7 == 2)
    {
      v10 = *a3;

      sub_100C572FC(a1 + 13272, v10);
    }

    else if (v7 == 3)
    {
      v8 = *(a3 + 8);
      v9 = *a3;

      sub_1000E055C(a1 + 13272, v8, v9);
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {

      sub_100C57C28(a1 + 13272);
    }
  }

  else
  {

    sub_100C57544(a1 + 13272, a3, v6);
  }
}

void sub_1000E07C8(uint64_t a1, _DWORD *a2, void *a3)
{
  if (!*a2)
  {
    if (qword_1025D42F0 != -1)
    {
      sub_101ADA680();
    }

    v5 = off_1025D42F8;
    if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
    {
      v6 = a3[2];
      *buf = 134349056;
      v12 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Received new gyro bias fit of timestamp %{public}f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101ADF370();
    }

    v7 = memcpy((a1 + 920), a3, 0x140uLL);
    v9 = sub_100011660(v7, v8);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100F60558;
    v10[3] = &unk_102449A78;
    v10[4] = a1;
    sub_100042800(v9, v10);
  }
}

uint64_t sub_1000E0918(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_1000E0938(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D45A0 != -1)
  {
    sub_1002DDEC0();
  }

  v2 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v3 = v1 + 48;
    if (v1[71] < 0)
    {
      v3 = *v3;
    }

    v4 = 136315138;
    v5 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "[Composite-%s] running scheduled evaluation", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D76EC(v1);
  }

  v1[552] = 0;
  sub_1000E11A0(v1);
}

uint64_t *sub_1000E0A28@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v7 = a2;
  sub_1003DD9F8(a1 + 24, &v7);
  result = sub_1003DD9F8(a1 + 24, &v7);
  v6 = result[1];
  *a3 = *result;
  a3[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1000E0AE8(uint64_t a1, int a2)
{
  v5 = a2;
  v6[0] = off_102462920;
  v6[3] = v6;
  v3 = sub_1000A6A6C(a1, a2);
  sub_1000A69EC(v6);
  if (v3)
  {
    return *(sub_1003DD9F8(a1 + 24, &v5) + 32) ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E0BB8(uint64_t a1, double a2, double a3)
{
  v6 = sub_1000E0AE8(a1, *(a1 + 80));
  v8 = *(a1 + 24);
  if (v8 != (a1 + 32))
  {
    v9 = (a1 + 48);
    *&v7 = 136315650;
    v38 = v7;
    v10 = 1;
    do
    {
      v11 = v8[5];
      v12 = v8[6];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (sub_1000A6B04(a1, *(v8 + 8), v6))
      {
        if (v11)
        {
          (*(*v11 + 32))(v11, v6);
        }

        else
        {
          v13 = 0.0;
        }

        v10 &= v13 >= a2;
      }

      else
      {
        if (qword_1025D45A0 != -1)
        {
          sub_1018D6BF4();
        }

        v14 = qword_1025D45A8;
        if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = (a1 + 48);
          if (*(a1 + 71) < 0)
          {
            v15 = *v9;
          }

          v16 = *(v8 + 8);
          *buf = v38;
          v47 = v15;
          v48 = 1024;
          *v49 = v16;
          *&v49[4] = 1024;
          *&v49[6] = v6;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "[Composite-%s] Not considering stream %d for allDataReady as it's temporarily incompatible with the key's time base %d", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D45A0 != -1)
          {
            sub_1018D6BF4();
          }

          v17 = (a1 + 48);
          if (*(a1 + 71) < 0)
          {
            v17 = *v9;
          }

          v18 = *(v8 + 8);
          v39 = v38;
          v40 = v17;
          v41 = 1024;
          *v42 = v18;
          *&v42[4] = 1024;
          *&v42[6] = v6;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "[Composite-%s] Not considering stream %d for allDataReady as it's temporarily incompatible with the key's time base %d", &v39, 24, v38);
          v20 = v19;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CMDataProviderComposite::Composite::notifyIfReady(CFTimeInterval, CFTimeInterval) const", "%s\n", v19);
          if (v20 != buf)
          {
            free(v20);
          }
        }
      }

      if (v12)
      {
        sub_100008080(v12);
      }

      v21 = v8[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v8[2];
          v23 = *v22 == v8;
          v8 = v22;
        }

        while (!v23);
      }

      v8 = v22;
    }

    while (v22 != (a1 + 32));
    v24 = *(a1 + 560) + a2;
    if ((v24 >= a3) | v10 & 1)
    {
      if (!((v24 < a3) | v10 & 1))
      {
        return 0;
      }
    }

    else
    {
      if (qword_1025D45A0 != -1)
      {
        sub_1018D6BF4();
      }

      v26 = qword_1025D45A8;
      if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
      {
        v27 = (a1 + 48);
        if (*(a1 + 71) < 0)
        {
          v27 = *v9;
        }

        *buf = 136315138;
        v47 = v27;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "[Composite-%s] proceeding without all data ready because holdover exceeded", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D75D4((a1 + 71));
      }
    }
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018D6BF4();
  }

  v28 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v29 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v29 = *v29;
    }

    v30 = "wall";
    *buf = 136315906;
    v47 = v29;
    v48 = 2048;
    if (!v6)
    {
      v30 = "mach";
    }

    *v49 = a2;
    *&v49[8] = 2048;
    v50 = a3;
    v51 = 2080;
    v52 = v30;
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "[Composite-%s] evaluated all data ready for time %f, now %f, timebase %s", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D45A0 != -1)
    {
      sub_1018D6BF4();
    }

    v33 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v33 = *v33;
    }

    v34 = "wall";
    v39 = 136315906;
    v40 = v33;
    v41 = 2048;
    if (!v6)
    {
      v34 = "mach";
    }

    *v42 = a2;
    *&v42[8] = 2048;
    v43 = a3;
    v44 = 2080;
    v45 = v34;
    LODWORD(v37) = 42;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 2, "[Composite-%s] evaluated all data ready for time %f, now %f, timebase %s", &v39, v37, *&v38, *(&v38 + 1));
    v36 = v35;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CMDataProviderComposite::Composite::notifyIfReady(CFTimeInterval, CFTimeInterval) const", "%s\n", v35);
    if (v36 != buf)
    {
      free(v36);
    }
  }

  sub_1000E178C(*(a1 + 568));
  v31 = **(a1 + 568);
  v32 = ***(a1 + 72);
  if (v6)
  {
    v32(a2 - v31, a2);
  }

  else
  {
    v32(a2, v31 + a2);
  }

  return 1;
}

void sub_1000E1178(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E11A0(uint64_t a1)
{
  if (*(a1 + 72) && *(a1 + 120) == 1)
  {
    v2 = *(a1 + 80);
    *buf = off_102462A20;
    v39 = buf;
    sub_1000E0A28(a1, v2, &v34);
    sub_1000A69EC(buf);
    v3 = sub_1000E0AE8(a1, *(a1 + 80));
    v4 = (*(*v34 + 32))(v34, v3);
    if (v4 == -1.0)
    {
LABEL_4:
      if (v35)
      {
        sub_100008080(v35);
      }

      return;
    }

    v5 = (*(*a1 + 24))(a1, v3);
    v6 = v5;
    v7 = *(a1 + 136);
    v8 = *(a1 + 128);
    if (v7 == 1 && v5 < v8)
    {
      *(a1 + 136) = 0;
    }

    else if (v7)
    {
      goto LABEL_12;
    }

    *(a1 + 128) = v4;
    *(a1 + 136) = 1;
    v8 = v4;
LABEL_12:
    if (*(a1 + 96) == 1)
    {
      if (v8 < v5)
      {
        while (1)
        {
          if ((*(a1 + 96) & 1) == 0)
          {
            sub_100173BA0();
          }

          v8 = v8 + *(a1 + 88);
          if ((sub_1000E0BB8(a1, v8, v6) & 1) == 0)
          {
            break;
          }

          *(a1 + 128) = v8;
          *(a1 + 136) = 1;
          if (v8 >= v6)
          {
            goto LABEL_4;
          }
        }

        if ((*(a1 + 552) & 1) == 0 && (*(**(a1 + 72) + 8))(*(a1 + 72)))
        {
          if (qword_1025D45A0 != -1)
          {
            sub_1018D6BF4();
          }

          v26 = qword_1025D45A8;
          if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
          {
            v27 = (a1 + 48);
            if (*(a1 + 71) < 0)
            {
              v27 = *v27;
            }

            *buf = 136315138;
            *&buf[4] = v27;
            _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "[Composite-%s] scheduling evaluation", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D45A0 != -1)
            {
              sub_1018D6BF4();
            }

            v30 = (a1 + 48);
            if (*(a1 + 71) < 0)
            {
              v30 = *v30;
            }

            v36 = 136315138;
            v37 = v30;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 2, "[Composite-%s] scheduling evaluation", &v36);
            v32 = v31;
            sub_100152C7C("Generic", 1, 0, 2, "void CMDataProviderComposite::Composite::evaluate()", "%s\n", v31);
            if (v32 != buf)
            {
              free(v32);
            }
          }

          if ((*(a1 + 96) & 1) == 0)
          {
            sub_100173BA0();
          }

          v28 = dispatch_time(0, ((*(a1 + 88) + *(a1 + 560)) * 1000000000.0));
          v29 = (*(**(a1 + 72) + 8))(*(a1 + 72));
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000E0938;
          block[3] = &unk_102449A78;
          block[4] = a1;
          dispatch_after(v28, v29, block);
          *(a1 + 552) = 1;
        }
      }

      goto LABEL_4;
    }

    v9 = *(a1 + 146);
    if (*(a1 + 146))
    {
      v10 = *(a1 + 144);
      v11 = v9 + v10 - 1;
      v12 = *(a1 + 148);
      if (v11 >= v12)
      {
        v13 = *(a1 + 148);
      }

      else
      {
        v13 = 0;
      }

      if (*(a1 + 8 * (v11 - v13) + 152) == v4)
      {
LABEL_33:
        if (v9 >= 2u)
        {
          v19 = a1 + 152;
          do
          {
            if (!sub_1000E0BB8(a1, *(v19 + 8 * v10), v6))
            {
              break;
            }

            v20 = *(a1 + 144);
            *(a1 + 128) = *(v19 + 8 * v20);
            *(a1 + 136) = 1;
            v21 = *(a1 + 146);
            if (!v21)
            {
              break;
            }

            v22 = v20 + 1;
            v23 = *(a1 + 148);
            if (v22 < v23)
            {
              LOWORD(v23) = 0;
            }

            v24 = v22 - v23;
            v10 = v24;
            *(a1 + 144) = v24;
            v25 = v21 - 1;
            *(a1 + 146) = v25;
          }

          while (v25 > 1u);
        }

        goto LABEL_4;
      }

      v14 = *(a1 + 146);
    }

    else
    {
      v14 = 0;
      v12 = *(a1 + 148);
      v10 = *(a1 + 144);
    }

    v15 = v10 + v14;
    if (v15 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = 0;
    }

    *(a1 + 8 * (v15 - v16) + 152) = v4;
    if (v12 <= v9)
    {
      v17 = v10 + 1;
      if (v17 < v12)
      {
        LOWORD(v12) = 0;
      }

      v18 = v17 - v12;
      v10 = v18;
      *(a1 + 144) = v18;
    }

    else
    {
      LOWORD(v9) = v9 + 1;
      *(a1 + 146) = v9;
    }

    goto LABEL_33;
  }
}

void sub_1000E16BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a18)
  {
    sub_100008080(a18);
  }

  _Unwind_Resume(exception_object);
}

double sub_1000E170C(uint64_t a1, int a2)
{
  result = -1.0;
  if (a2 == 1 && *(a1 + 66))
  {
    v3 = *(a1 + 66) + *(a1 + 64) - 1;
    v4 = *(a1 + 68);
    if (v3 < v4)
    {
      v4 = 0;
    }

    return *(a1 + 56 * (v3 - v4) + 72);
  }

  return result;
}

double sub_1000E174C(uint64_t a1, int a2)
{
  result = -1.0;
  if (a2 == 1 && *(a1 + 66))
  {
    v3 = *(a1 + 66) + *(a1 + 64) - 1;
    v4 = *(a1 + 68);
    if (v3 < v4)
    {
      v4 = 0;
    }

    return *(a1 + 24 * (v3 - v4) + 72);
  }

  return result;
}

void sub_1000E178C(double *a1)
{
  times = mach_get_times();
  if (times)
  {
    v3 = times;
    if (qword_1025D45A0 != -1)
    {
      sub_1018D6BF4();
    }

    v4 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v22) = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "[Composite] Unable to update time offsets! %d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018D6E5C(v3);
    }
  }

  else
  {
    v5 = sub_1000080EC(0);
    v6 = sub_1000080EC(0);
    *a1 = 0 + 0 * 0.000000001 - kCFAbsoluteTimeIntervalSince1970 - v5;
    a1[1] = v6 - v5;
    if (qword_1025D45A0 != -1)
    {
      sub_1018D6BF4();
    }

    v7 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *a1;
      v8 = *(a1 + 1);
      *buf = 134218496;
      v22 = 0 + 0 * 0.000000001 - kCFAbsoluteTimeIntervalSince1970;
      v23 = 2048;
      v24 = v8;
      v25 = 2048;
      v26 = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "[Composite] Updating offsets, current wall, %f, absToCont, %f, absToWall, %f", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D45A0 != -1)
      {
        sub_1018D6BF4();
      }

      v11 = *a1;
      v10 = *(a1 + 1);
      v15 = 134218496;
      v16 = 0 + 0 * 0.000000001 - kCFAbsoluteTimeIntervalSince1970;
      v17 = 2048;
      v18 = v10;
      v19 = 2048;
      v20 = v11;
      LODWORD(v14) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 2, "[Composite] Updating offsets, current wall, %f, absToCont, %f, absToWall, %f", COERCE_DOUBLE(&v15), v14, 0.0);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "void CMDataProviderComposite::TimeHelper::updateOffsets()", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }
}

void sub_1000E1A38(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2 == 1)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*sub_1005790DC((a1 + 64), v9) >= a4)
        {
          if (*sub_1005790DC((a1 + 64), v9) > a5)
          {
            return;
          }

          if (*sub_1005790DC((a1 + 64), v9) >= a4 && *sub_1005790DC((a1 + 64), v9) < a5)
          {
            v10 = sub_1005790DC((a1 + 64), v9);
            v23 = *(v10 + 2);
            v12 = *(a3 + 8);
            v11 = *(a3 + 16);
            if (v12 >= v11)
            {
              v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a3) >> 3);
              v16 = v15 + 1;
              if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_10028C64C();
              }

              v17 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a3) >> 3);
              if (2 * v17 > v16)
              {
                v16 = 2 * v17;
              }

              if (v17 >= 0x555555555555555)
              {
                v18 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v18 = v16;
              }

              if (v18)
              {
                sub_1005792DC(a3, v18);
              }

              v19 = 24 * v15;
              *v19 = *v10;
              *(v19 + 16) = v23;
              v14 = 24 * v15 + 24;
              v20 = *(a3 + 8) - *a3;
              v21 = 24 * v15 - v20;
              memcpy((v19 - v20), *a3, v20);
              v22 = *a3;
              *a3 = v21;
              *(a3 + 8) = v14;
              *(a3 + 16) = 0;
              if (v22)
              {
                operator delete(v22);
              }
            }

            else
            {
              v13 = *v10;
              *(v12 + 16) = *(v10 + 2);
              *v12 = v13;
              v14 = v12 + 24;
            }

            *(a3 + 8) = v14;
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void sub_1000E1C30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E1C7C(uint64_t *__return_ptr a1@<X8>, std::string *__str@<X0>)
{
  *(a1 + 95) = 0;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  v3 = (a1 + 6);
  *a1 = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 163) = 0u;
  std::string::operator=(a1 + 2, __str);
  *(a1 + 97) = 0;
  if (*(a1 + 71) < 0)
  {
    if (!a1[7])
    {
      return;
    }

    v3 = *v3;
  }

  else if (!*(a1 + 71))
  {
    return;
  }

  v4 = sub_100053C00(v3);
  v5 = v4;
  if (v4)
  {
    if (sub_1000424B8(v4))
    {
      *(a1 + 97) = 1;
    }

    if (sub_1000E67F0(v5, v6))
    {
      *(a1 + 98) = 1;
    }

    CFRelease(v5);
  }
}

void sub_1000E2084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E20B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *a1 = off_1024AF7D8;
  *(a1 + 24) = objc_alloc_init(CLDaemonInUseAssertionAdapter);
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  v4 = [objc_msgSend(*(a1 + 16) "vendor")];
  *(a1 + 56) = v4;
  [v4 registerDelegate:*(a1 + 24) inSilo:{objc_msgSend(*(a1 + 16), "silo")}];
  return a1;
}

void sub_1000E21B8(void *a1, uint64_t a2)
{
  v4 = CLConnectionMessage::name(*a2);
  if (*(v4 + 23) < 0 && *(v4 + 8) == 35 && !memcmp(*v4, "InUseAssertion/kCLConnectionMessage", 0x23uLL))
  {
    v8 = _os_activity_create(dword_100000000, "CL: InUseAssertion/kCLConnectionMessage", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D4790 != -1)
    {
      sub_101A827BC();
    }

    v9 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a1;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:InUseAssertion/kCLConnectionMessage, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }

    v10 = *a2;
    v11 = *(a2 + 8);
    v12[0] = v10;
    v12[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_1000E2414(a1, v12);
    if (v11)
    {
      sub_100008080(v11);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_101A827A8();
    }

    v5 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v6 = CLConnectionMessage::name(*a2);
      if (*(v6 + 23) >= 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = *v6;
      }

      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning unrecognized message, MessageName:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }
}

void sub_1000E2414(void *a1, CLConnectionMessage **a2)
{
  v4 = _os_activity_create(dword_100000000, "CL: CLDaemonInUseAssertion::handleMessageInUseAssertion", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1025D4790 != -1)
  {
    sub_101A827BC();
  }

  v5 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    *&buf[28] = 2050;
    *&buf[30] = a1;
    *&buf[38] = 2050;
    *&buf[40] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLDaemonInUseAssertion::handleMessageInUseAssertion, event:%{public, location:escape_only}s, this:%{public}p, message:%{public}p}", buf, 0x30u);
  }

  if (a1[4])
  {
    if (qword_1025D4790 != -1)
    {
      sub_101A827BC();
    }

    v7 = qword_1025D4798;
    if (!os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_154;
    }

    (*(*a1 + 24))(__p, a1);
    if (__p[23] >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = *__p;
    }

    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = v8;
    v9 = "{msg%{public}.0s:#warning InUseAssertion already taken, takenBy:%{public, location:escape_only}s}";
LABEL_29:
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0x1Cu);
LABEL_30:
    if ((__p[23] & 0x80000000) != 0)
    {
      v19 = *__p;
LABEL_32:
      operator delete(v19);
      goto LABEL_154;
    }

    goto LABEL_154;
  }

  sub_10000EC00(buf, "com.apple.locationd.usage_oracle");
  v10 = sub_1000E325C(a1, buf);
  v11 = v10;
  if (buf[23] < 0)
  {
    operator delete(*buf);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_22:
    if (qword_1025D4790 != -1)
    {
      sub_101A827BC();
    }

    v7 = qword_1025D4798;
    if (!os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_154;
    }

    (*(*a1 + 24))(__p, a1);
    if (__p[23] >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = *__p;
    }

    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = v18;
    v9 = "{msg%{public}.0s:#warning #CLIUA Not entitled as usage oracle... ignoring InUseAssertion, takenBy:%{public, location:escape_only}s}";
    goto LABEL_29;
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  v13 = [Dictionary objectForKeyedSubscript:@"kCLConnectionMessageBundleIdentifierKey"];
  v14 = [Dictionary objectForKeyedSubscript:@"kCLConnectionMessageBundlePathKey"];
  v15 = [Dictionary objectForKeyedSubscript:@"kCLConnectionMessagePurposeKey"];
  v16 = [Dictionary objectForKeyedSubscript:@"kCLConnectionMessageAssertionLevelKey"];
  if (!v13 || !v14 || !v15 || (v17 = v16) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101A827BC();
    }

    v20 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      (*(*a1 + 24))(__p, a1);
      if (__p[23] >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = *__p;
      }

      *buf = 68289282;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLIUA InUseAssertion malformed: lacking required argument, takenBy:%{public, location:escape_only}s}", buf, 0x1Cu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (qword_1025D4790 != -1)
      {
        sub_101A827BC();
      }
    }

    v22 = qword_1025D4798;
    if (!os_signpost_enabled(qword_1025D4798))
    {
      goto LABEL_154;
    }

    (*(*a1 + 24))(__p, a1);
    if (__p[23] >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = *__p;
    }

    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = v23;
    _os_signpost_emit_with_name_impl(dword_100000000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#CLIUA InUseAssertion malformed: lacking required argument", "{msg%{public}.0s:#CLIUA InUseAssertion malformed: lacking required argument, takenBy:%{public, location:escape_only}s}", buf, 0x1Cu);
    goto LABEL_30;
  }

  memset(v79, 0, 35);
  v78 = 0u;
  memset(buf, 0, sizeof(buf));
  v80 = 0u;
  memset(v81, 0, 59);
  if ([v13 length])
  {
    sub_10000EC00(&__str, [v13 UTF8String]);
    sub_100034EE4(__p, &__str);
  }

  else
  {
    sub_10000EC00(&__str, [v14 UTF8String]);
    sub_1000E1C7C(__p, &__str);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  *buf = *__p;
  *&buf[16] = *&__p[16];
  __p[23] = 0;
  __p[0] = 0;
  if (buf[47] < 0)
  {
    operator delete(*&buf[24]);
  }

  *&buf[24] = *&__p[24];
  *&buf[40] = v62;
  HIBYTE(v62) = 0;
  __p[24] = 0;
  if (SHIBYTE(v79[0]) < 0)
  {
    operator delete(v78);
  }

  v78 = v63;
  v79[0] = v64;
  HIBYTE(v64) = 0;
  LOBYTE(v63) = 0;
  if (SHIBYTE(v79[3]) < 0)
  {
    operator delete(v79[1]);
  }

  *&v79[1] = v65;
  v79[3] = v66;
  HIBYTE(v66) = 0;
  LOBYTE(v65) = 0;
  LOWORD(v79[4]) = v67;
  BYTE2(v79[4]) = v68;
  if (SBYTE7(v81[0]) < 0)
  {
    operator delete(v80);
  }

  v80 = v69;
  *&v81[0] = v70;
  HIBYTE(v70) = 0;
  LOBYTE(v69) = 0;
  if (SHIBYTE(v81[1]) < 0)
  {
    operator delete(*(&v81[0] + 1));
  }

  *(v81 + 8) = v71;
  *(&v81[1] + 1) = v72;
  HIBYTE(v72) = 0;
  LOBYTE(v71) = 0;
  if (SBYTE7(v81[3]) < 0)
  {
    operator delete(*&v81[2]);
    v81[2] = v73;
    *&v81[3] = v74;
    HIBYTE(v74) = 0;
    LOBYTE(v73) = 0;
    WORD4(v81[3]) = v75;
    BYTE10(v81[3]) = v76;
    if (SHIBYTE(v72) < 0)
    {
      operator delete(v71);
    }
  }

  else
  {
    v81[2] = v73;
    *&v81[3] = v74;
    HIBYTE(v74) = 0;
    LOBYTE(v73) = 0;
    WORD4(v81[3]) = v75;
    BYTE10(v81[3]) = v76;
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(v69);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(*&__p[24]);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_10003B25C(buf);
  v24 = BYTE7(v81[0]);
  if (SBYTE7(v81[0]) < 0)
  {
    v24 = *(&v80 + 1);
  }

  if (!v24)
  {
    v25 = HIBYTE(v79[0]);
    if (v79[0] < 0)
    {
      v25 = *(&v78 + 1);
    }

    if (!v25)
    {
      if (qword_1025D4790 != -1)
      {
        sub_101A827BC();
      }

      v37 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
      {
        (*(*a1 + 24))(&__str, a1);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        *__p = 68289282;
        *&__p[8] = 2082;
        *&__p[10] = "";
        *&__p[18] = 2082;
        *&__p[20] = p_str;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLIUA Neither bundleIdentifier nor bundlePath specified... ignoring InUseAssertion, takenBy:%{public, location:escape_only}s}", __p, 0x1Cu);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (qword_1025D4790 != -1)
        {
          sub_101A827BC();
        }
      }

      v30 = qword_1025D4798;
      if (!os_signpost_enabled(qword_1025D4798))
      {
        goto LABEL_141;
      }

      (*(*a1 + 24))(&__str, a1);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &__str;
      }

      else
      {
        v39 = __str.__r_.__value_.__r.__words[0];
      }

      *__p = 68289282;
      *&__p[8] = 2082;
      *&__p[10] = "";
      *&__p[18] = 2082;
      *&__p[20] = v39;
      v32 = "#CLIUA Neither bundleIdentifier nor bundlePath specified... ignoring InUseAssertion";
      v33 = "{msg%{public}.0s:#CLIUA Neither bundleIdentifier nor bundlePath specified... ignoring InUseAssertion, takenBy:%{public, location:escape_only}s}";
LABEL_132:
      _os_signpost_emit_with_name_impl(dword_100000000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v32, v33, __p, 0x1Cu);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      goto LABEL_141;
    }
  }

  if (![v15 length])
  {
    if (qword_1025D4790 != -1)
    {
      sub_101A827BC();
    }

    v28 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      (*(*a1 + 24))(&__str, a1);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__str;
      }

      else
      {
        v29 = __str.__r_.__value_.__r.__words[0];
      }

      *__p = 68289282;
      *&__p[8] = 2082;
      *&__p[10] = "";
      *&__p[18] = 2082;
      *&__p[20] = v29;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLIUA Assertion requested with no reason... ignoring InUseAssertion, takenBy:%{public, location:escape_only}s}", __p, 0x1Cu);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (qword_1025D4790 != -1)
      {
        sub_101A827BC();
      }
    }

    v30 = qword_1025D4798;
    if (!os_signpost_enabled(qword_1025D4798))
    {
      goto LABEL_141;
    }

    (*(*a1 + 24))(&__str, a1);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &__str;
    }

    else
    {
      v31 = __str.__r_.__value_.__r.__words[0];
    }

    *__p = 68289282;
    *&__p[8] = 2082;
    *&__p[10] = "";
    *&__p[18] = 2082;
    *&__p[20] = v31;
    v32 = "#CLIUA Assertion requested with no reason... ignoring InUseAssertion";
    v33 = "{msg%{public}.0s:#CLIUA Assertion requested with no reason... ignoring InUseAssertion, takenBy:%{public, location:escape_only}s}";
    goto LABEL_132;
  }

  sub_1000350D0(__dst, buf);
  v26 = [CLClientKeyPath clientKeyPathFromName:__dst];
  if (v58 < 0)
  {
    operator delete(v57);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  if (v54 < 0)
  {
    operator delete(v53);
  }

  if (v52 < 0)
  {
    operator delete(v51);
  }

  if (v50 < 0)
  {
    operator delete(v49);
  }

  if (v48 < 0)
  {
    operator delete(v47);
  }

  if (v46 < 0)
  {
    operator delete(__dst[0]);
  }

  *(a1 + 10) = 0;
  v27 = [v17 intValue];
  if (v27 < 3)
  {
    *(a1 + 10) = dword_101CFD8E0[v27];
LABEL_116:
    v34 = a1[7];
    v35 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v15 UTF8String]);
    v36 = *(a1 + 10);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100145898;
    v44[3] = &unk_1024AF810;
    v44[4] = a1;
    [v34 takeInUseAssertionForCkp:v26 reason:v35 assertionLevel:v36 withReply:v44];
    goto LABEL_141;
  }

  if (*(a1 + 10))
  {
    goto LABEL_116;
  }

  if (qword_1025D4790 != -1)
  {
    sub_101A827BC();
  }

  v40 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
  {
    v41 = [v17 intValue];
    *__p = 68289282;
    *&__p[8] = 2082;
    *&__p[10] = "";
    *&__p[18] = 1026;
    *&__p[20] = v41;
    _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLIUA Received invalid assertion level, assertionLevel:%{public}d}", __p, 0x18u);
    if (qword_1025D4790 != -1)
    {
      sub_101A827BC();
    }
  }

  v42 = qword_1025D4798;
  if (os_signpost_enabled(qword_1025D4798))
  {
    v43 = [v17 intValue];
    *__p = 68289282;
    *&__p[8] = 2082;
    *&__p[10] = "";
    *&__p[18] = 1026;
    *&__p[20] = v43;
    _os_signpost_emit_with_name_impl(dword_100000000, v42, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#CLIUA Received invalid assertion level", "{msg%{public}.0s:#CLIUA Received invalid assertion level, assertionLevel:%{public}d}", __p, 0x18u);
  }

LABEL_141:
  if (SBYTE7(v81[3]) < 0)
  {
    operator delete(*&v81[2]);
  }

  if (SHIBYTE(v81[1]) < 0)
  {
    operator delete(*(&v81[0] + 1));
  }

  if (SBYTE7(v81[0]) < 0)
  {
    operator delete(v80);
  }

  if (SHIBYTE(v79[3]) < 0)
  {
    operator delete(v79[1]);
  }

  if (SHIBYTE(v79[0]) < 0)
  {
    operator delete(v78);
  }

  if (buf[47] < 0)
  {
    operator delete(*&buf[24]);
  }

  if (buf[23] < 0)
  {
    v19 = *buf;
    goto LABEL_32;
  }

LABEL_154:
  os_activity_scope_leave(&state);
}

uint64_t sub_1000E325C(void *a1, uint64_t *a2)
{
  isEntitled = CLConnection::isEntitled();
  if (qword_1025D4790 != -1)
  {
    sub_101A827A8();
  }

  v5 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    (*(*a1 + 24))(__p, a1);
    v6 = *__p;
    v7 = "not entitled";
    if (v22 >= 0)
    {
      v6 = __p;
    }

    if (isEntitled)
    {
      v7 = "entitled";
    }

    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 136315650;
    v25 = v6;
    v26 = 2080;
    v27 = v7;
    v28 = 2080;
    v29 = v8;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "%s is %s for %s", buf, 0x20u);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4790 != -1)
    {
      sub_101A827BC();
    }

    v10 = qword_1025D4798;
    (*(*a1 + 24))(v17, a1);
    v11 = v17[0];
    v12 = "not entitled";
    if (v18 >= 0)
    {
      v11 = v17;
    }

    if (isEntitled)
    {
      v12 = "entitled";
    }

    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    *__p = 136315650;
    *&__p[4] = v11;
    v20 = 2080;
    v21 = v12;
    v22 = 2080;
    v23 = v13;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v10, 2, "%s is %s for %s", __p, 32, v16);
    v15 = v14;
    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDaemonInUseAssertion::isEntitled(const std::string &)", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return isEntitled;
}

void sub_1000E3524(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v5 = sub_100011660(v3, v4);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E35AC;
  v6[3] = &unk_10244FAF0;
  v6[4] = v3;
  v6[5] = a1;
  sub_100042800(v5, v6);
}

void sub_1000E35AC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 1384) == 176)
  {
    if (qword_1025D4210 != -1)
    {
      sub_10027BA68();
    }

    v3 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v2 + 1385);
      v5 = *(v2 + 1393);
      v9 = 134218240;
      v10 = v4;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "MotionCoprocessor copying the latest TimeSync data machTimestamp,%llu,oscarTimestamp,%llu", &v9, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101ADBBAC(v2);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (qword_1025D4210 != -1)
    {
      sub_10027BA68();
    }

    v7 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_ERROR))
    {
      v8 = *(v2 + 1384);
      v9 = 67109120;
      LODWORD(v10) = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "MotionCoprocessor last received TimeSync has the wrong packet type,%hhu", &v9, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101ADBAB8((v2 + 1384));
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
  _Block_release(*(a1 + 32));
}

void sub_1000E3764(id *a1, void *a2)
{
  if ((sub_1000F42C0(a1, a2) & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Considering whether to mark client, %@, for always power use", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192EB04();
    }

    v5 = sub_1000E38F8(a1, a2);
    if (v5)
    {
      v6 = v5;
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v7 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v8 = sub_10023D7FC(v6);
        v9 = 138412546;
        v10 = a2;
        v11 = 2080;
        v12 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Not marking client %@ as having used Always-powers (not Always authorized (%s))", &v9, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192EBEC(a2, v6);
      }
    }
  }
}

id sub_1000E38F8(id *a1, uint64_t a2)
{
  v3 = [-[NSArray objectAtIndexedSubscript:](sub_100019AB0(a1 a2)];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289538;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2114;
    v10 = a2;
    v11 = 2050;
    v12 = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Client Effective registration result, Client:%{public, location:escape_only}@, registration:%{public, location:CLClientRegistrationResult}lld}", v6, 0x26u);
  }

  return v3;
}

void sub_1000E3A00(uint64_t a1, uint64_t *a2, CLConnectionMessage **a3)
{
  v3 = *a2;
  v5 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v6 = _os_activity_create(dword_100000000, "CL: kCLConnectionMessageCollectMetricsForFunction", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v7 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v3 + 72);
    *buf = 68290050;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2050;
    v18 = v3;
    v19 = 1026;
    v20 = 0;
    v21 = 1026;
    v22 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:kCLConnectionMessageCollectMetricsForFunction, event:%{public, location:escape_only}s, this:%{public}p, registrationRequired:%{public}hhd, registrationReceived:%{public}hhd}", buf, 0x32u);
  }

  v9[0] = v5;
  v9[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000E3BD8(v3, v9);
  if (v4)
  {
    sub_100008080(v4);
    os_activity_scope_leave(&state);
    sub_100008080(v4);
  }

  else
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000E3BD8(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  if (qword_1025D44B0 != -1)
  {
    sub_1019F01E8();
  }

  v5 = qword_1025D44B8;
  if (os_log_type_enabled(qword_1025D44B8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Collecting Metrics for function", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019F01FC(buf);
    v11[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44B8, 2, "Collecting Metrics for function", v11, 2);
    v10 = v9;
    sub_100152C7C("Generic", 1, 0, 2, "void CLDaemonClient::handleMessageCollectMetricsForFunction(std::shared_ptr<CLConnectionMessage>)", "%s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  sub_1000E3DA0(v6, v7, Dictionary);
}

void sub_1000E3DA0(uint64_t a1, void *a2, void *a3)
{
  v6 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if (v6)
  {
    v7 = v6;
    v37 = a3;
    if (qword_102659F20 != -1)
    {
      sub_10014563C();
    }

    [*(a1 + 40) currentLatchedAbsoluteTimestamp];
    v9 = v8 / 86400.0;
    v10 = v9;
    if (qword_102659F10 == v9)
    {
      goto LABEL_19;
    }

    qword_102659F10 = v9;
    [qword_102659F18 removeAllObjects];
    v11 = +[NSMutableArray array];
    v12 = *(a1 + 136);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10014567C;
    v38[3] = &unk_10246FD68;
    v38[4] = v11;
    v38[5] = a1;
    [v12 iterateAllAnchorKeyPathsWithBlock:v38];
    v13 = [v11 count];
    if (v13)
    {
      v14 = v13;
      v15 = 5;
      v16 = v10;
      do
      {
        v17 = [v11 objectAtIndex:v16 % v14];
        [qword_102659F18 addObject:v17];
        v16 += v10;
        --v15;
      }

      while (v15);
      v18 = qword_102659F18;
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(qword_102659F18);
      if (v19)
      {
        v20 = v19;
        v21 = MEMORY[0];
        do
        {
          v22 = 0;
          do
          {
            if (MEMORY[0] != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(8 * v22);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            v24 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289538;
              v40 = 0;
              v41 = 2082;
              v42 = "";
              v43 = 2114;
              v44 = v23;
              v45 = 1026;
              v46 = v14;
              _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MetricForFunctionCalls: adding client of the day, ckp:%{public, location:escape_only}@, totalClients:%{public}d}", buf, 0x22u);
            }

            v22 = v22 + 1;
          }

          while (v20 != v22);
          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18);
        }

        while (v20);
      }

LABEL_19:
      v25 = qword_102659F18;
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(qword_102659F18);
      if (v26)
      {
        v27 = v26;
        v28 = MEMORY[0];
        do
        {
          v29 = 0;
          do
          {
            if (MEMORY[0] != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(8 * v29);
            if ([objc_msgSend(v30 "clientAnchor")])
            {
              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }

              v31 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
              {
                *buf = 68289282;
                v40 = 0;
                v41 = 2082;
                v42 = "";
                v43 = 2114;
                v44 = v7;
                _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_INFO, "{msg%{public}.0s:MetricForFunctionCalls: sending metrics for client, ckp:%{public, location:escape_only}@}", buf, 0x1Cu);
              }

              v32 = [objc_msgSend(v37 objectForKeyedSubscript:{@"kCLConnectionMessageFunctionBitmapKey", "unsignedIntegerValue"}];
              v33 = +[NSMutableDictionary dictionary];
              [v33 setObject:objc_msgSend(v30 forKeyedSubscript:{"userlessClientKeyPath"), @"client"}];
              [v33 setObject:objc_msgSend(v37 forKeyedSubscript:{"objectForKeyedSubscript:", @"kCLConnectionMessageTotalFunctionCallsKey", @"invocationCount"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", v32 & 1), @"LSEnabled"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 1) & 1), @"APIAvailable_G"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 2) & 1), @"StartLocation"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 3) & 1), @"StopLocation"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 4) & 1), @"ReqLocation"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 5) & 1), @"Deferred_G"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 6) & 1), @"StartHeading"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 7) & 1), @"StopHeading"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 8) & 1), @"StartSLC"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 9) & 1), @"StopSLC"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 10) & 1), @"StartPushes"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 11) & 1), @"StopPushes"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 12) & 1), @"StartRegion"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 13) & 1), @"StopRegion"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 14) & 1), @"RegionState"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 15) & 1), @"MaxRegionDistance"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 16) & 1), @"Regions"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 17) & 1), @"Ranging_G"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 18) & 1), @"Historical"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 19) & 1), @"AuthStatus"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 20) & 1), @"AccuracyAuth"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 21) & 1), @"WidgetAuth"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 22) & 1), @"RequestWIU"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 23) & 1), @"RequestAlways"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 24) & 1), @"RequestAccuracy"}];
              AnalyticsSendEvent();
            }

            v29 = v29 + 1;
          }

          while (v27 != v29);
          v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25);
        }

        while (v27);
      }

      return;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v36 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      v40 = 0;
      v41 = 2082;
      v42 = "";
      v43 = 2114;
      v44 = a2;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:MetricForFunctionCalls: No clients considered for metrics today., ckp:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v34 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v40 = 0;
      v41 = 2082;
      v42 = "";
      v43 = 2114;
      v44 = a2;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Client is not registered. Skip metric for function calls, ckp:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v35 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289282;
      v40 = 0;
      v41 = 2082;
      v42 = "";
      v43 = 2114;
      v44 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Client is not registered. Skip metric for function calls", "{msg%{public}.0s:Client is not registered. Skip metric for function calls, ckp:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }
}

void sub_1000E46CC(uint64_t a1, void *a2)
{
  if (!sub_10041ECEC(a2))
  {
    return;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v57 = -1.79769313e308;
  v58 = -1.79769313e308;
  switch(a2)
  {
    case 0:
      v7 = @"kAccelBufferSubscription";
      v8 = 325;
      v9 = 300;
      v10 = 296;
      v11 = @"kAccelBufferSubscriptionOverride";
      goto LABEL_8;
    case 1:
      v7 = @"kGyroBufferSubscription";
      v8 = 326;
      v9 = 308;
      v10 = 304;
      v11 = @"kGyroBufferSubscriptionOverride";
LABEL_8:
      v12 = *(a1 + v10);
      v13 = *(a1 + v9);
      v14 = sub_1000206B4(v4, v5);
      v15 = sub_100023B78(v14, v11, &v57);
      v17 = Current < v57 && vabdd_f64(v57, Current) < *(a1 + 272);
      v18 = v17 | *(a1 + v8);
      if (v18)
      {
        if (a2)
        {
          goto LABEL_39;
        }

        goto LABEL_13;
      }

      if (a2 || *(a1 + 300) == 50)
      {
        if (a2 != 1 || *(a1 + 308) == 50)
        {
          if (a2 != 2 || *(a1 + 320) == *(a1 + 316))
          {
            goto LABEL_31;
          }

          v25 = sub_1000206B4(v15, v16);
          v21 = sub_1004FA94C(v25);
          v13 = *(a1 + 316);
          *(a1 + 320) = v13;
        }

        else
        {
          v24 = sub_1000206B4(v15, v16);
          v21 = sub_1004FA94C(v24);
          v13 = 50;
          *(a1 + 308) = 50;
        }
      }

      else
      {
        v20 = sub_1000206B4(v15, v16);
        v21 = sub_1004FA94C(v20);
        v13 = 50;
        *(a1 + 300) = 50;
      }

      v26 = sub_1000206B4(v21, v22);
      v15 = (*(*v26 + 944))(v26);
LABEL_31:
      v27 = sub_1000206B4(v15, v16);
      sub_100023B78(v27, v7, &v58);
      if (Current >= v58)
      {
        if (a2)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v18 = vabdd_f64(v58, Current) < *(a1 + 272);
      if (a2)
      {
        goto LABEL_39;
      }

LABEL_13:
      if (v18)
      {
        v19 = *(a1 + 272);
        *(a1 + 280) = *(a1 + 264);
LABEL_37:
        *(a1 + 288) = v19;
        LOBYTE(v18) = 1;
        goto LABEL_39;
      }

LABEL_35:
      if (*(a1 + 336) == 1)
      {
        *(a1 + 280) = 0x40AF400000000000;
        v13 = 100;
        v19 = 0x40AC200000000000;
        goto LABEL_37;
      }

LABEL_38:
      LOBYTE(v18) = 0;
LABEL_39:
      if ((v18 & *(a1 + 324)) != 0)
      {
        v28 = v13;
      }

      else
      {
        v28 = 0;
      }

      if (v28 == v12)
      {
        goto LABEL_58;
      }

      if (qword_1025D4350 != -1)
      {
        sub_101B47F9C();
      }

      v29 = qword_1025D4358;
      if (os_log_type_enabled(qword_1025D4358, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 324);
        *buf = 67240704;
        *&buf[4] = a2;
        v65 = 1026;
        v66 = v28;
        v67 = 1026;
        v68 = v30;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "Updating %{location:CLSensorRecorder_Types::DataType,public}d sampling rate %{public}d, fitness tracking enabled, %{public}d", buf, 0x14u);
      }

      v31 = sub_10000A100(121, 2);
      if (v31)
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4350 != -1)
        {
          sub_101B47F9C();
        }

        v51 = *(a1 + 324);
        v59[0] = 67240704;
        v59[1] = a2;
        v60 = 1026;
        v61 = v28;
        v62 = 1026;
        v63 = v51;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4358, 0, "Updating %{location:CLSensorRecorder_Types::DataType,public}d sampling rate %{public}d, fitness tracking enabled, %{public}d", v59, 20);
        v53 = v52;
        v31 = sub_100152C7C("Generic", 1, 0, 2, "void CLSensorRecorderNotifier::updateSubscriptionType(CLSensorRecorder_Types::DataType)", "%s\n", v52);
        if (v53 != buf)
        {
          free(v53);
        }
      }

      v33 = sub_100011660(v31, v32);
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_10115BEE0;
      v54[3] = &unk_102449A78;
      v55 = a2;
      v56 = v28;
      sub_100042800(v33, v54);
      if (a2)
      {
        v34 = 176;
        if (a2 == 1)
        {
          v34 = 168;
          v35 = 304;
        }

        else
        {
          v35 = 312;
        }

        if (v12 < 1)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v35 = 296;
        if (v12 <= 0)
        {
LABEL_57:
          *(a1 + v35) = v28;
LABEL_58:
          v36 = Current + 129600.0;
          if (v58 > v36)
          {
            if (qword_1025D4350 != -1)
            {
              sub_101B47F9C();
            }

            v37 = qword_1025D4358;
            if (os_log_type_enabled(qword_1025D4358, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67240192;
              *&buf[4] = a2;
              _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "Updated %{location:CLSensorRecorder_Types::DataType,public}d subscription due to invalid time.", buf, 8u);
            }

            v38 = sub_10000A100(121, 2);
            if (v38)
            {
              sub_101B484D0(a2);
            }

            v40 = sub_1000206B4(v38, v39);
            *buf = v36;
            v41 = sub_100116DD4(v40, v7, buf);
            v43 = *sub_1000206B4(v41, v42);
            (*(v43 + 944))();
          }

          if (v57 > v36)
          {
            if (qword_1025D4350 != -1)
            {
              sub_101B47F9C();
            }

            v44 = qword_1025D4358;
            if (os_log_type_enabled(qword_1025D4358, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67240192;
              *&buf[4] = a2;
              _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEFAULT, "Updated %{location:CLSensorRecorder_Types::DataType,public}d subscription override due to invalid time.", buf, 8u);
            }

            v45 = sub_10000A100(121, 2);
            if (v45)
            {
              sub_101B485C0(a2);
            }

            v47 = sub_1000206B4(v45, v46);
            *buf = v36;
            v48 = sub_100116DD4(v47, v11, buf);
            v50 = *sub_1000206B4(v48, v49);
            (*(v50 + 944))();
          }

          return;
        }

        v34 = 160;
      }

      sub_1009893B0(*(a1 + v34));
      goto LABEL_57;
    case 2:
      v7 = @"kPressureBufferSubscription";
      v8 = 327;
      v9 = 320;
      v10 = 312;
      v11 = @"kPressureBufferSubscriptionOverride";
      goto LABEL_8;
  }

  if (qword_1025D4200 != -1)
  {
    sub_101B47A34();
  }

  v23 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "Invalid data type.", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101B483EC();
  }
}

void sub_1000E4D9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ([*(v1 + 112) isMonitoring])
  {
    sub_101159490(v1, 0, 0x64);
  }

  if (sub_100099160(*(v1 + 160) + 72))
  {
    Current = CFAbsoluteTimeGetCurrent();
    sub_1000E46CC(v1, 0);
    if (vabdd_f64(Current, *(v1 + 240)) > *(v1 + 280))
    {
      if (qword_1025D4350 != -1)
      {
        sub_101B47B2C();
      }

      v3 = qword_1025D4358;
      if (os_log_type_enabled(qword_1025D4358, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p) = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Aggregating accel sensor recorder samples.", &__p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B47FC4();
      }

      *&v7 = *(v1 + 288);
      *(&v7 + 1) = 0x7FEFFFFFFFFFFFFFLL;
      v8 = 0;
      v5 = 0;
      v6 = 0;
      __p = 0;
      sub_100485D9C(&__p, &v7, &v9, 1uLL);
      (*(**(v1 + 160) + 32))(*(v1 + 160), &__p);
      *(v1 + 240) = Current;
      if (__p)
      {
        v5 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_1000E4F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E4F54(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X2>, uint64_t a4@<X3>, const std::string *a5@<X8>)
{
  v9 = sub_100033370(a1, a2);
  if ([v9 isAuthSharingSubIdentity])
  {
    v9 = [v9 anchorKeyPath];
  }

  if (a4 == 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v9;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#IncidentalPrompt CLCM:InUseAssertion IncidentalPresence, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    sub_10077834C(a1, v9);
  }

  v11 = *(a1 + 400);
  if (v9)
  {
    objc_msgSend_cppClientKey(v9);
  }

  else
  {
    v19[0] = 0;
    v19[1] = 0;
    v20 = 0;
  }

  __p = *a3;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  sub_10000E08C(&__p, v11, v19, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  v12 = [objc_msgSend(v9 "legacyClientKey")];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = "";
  }

  sub_10000EC00(buf, v13);
  if (sub_10014578C(a5))
  {
    sub_1003C9040((a1 + 640), buf, buf);
    v14 = [*(a1 + 136) registeredKeyPathForClientIdentifier:v9];
    if (v14)
    {
      if ([*(a1 + 416) objectForKeyedSubscript:v14])
      {
        if ((buf[23] & 0x80000000) != 0)
        {
          sub_100007244(v16, *buf, *&buf[8]);
        }

        else
        {
          *v16 = *buf;
          v17 = *&buf[16];
        }

        sub_100778A6C(a1, v16);
        if (SHIBYTE(v17) < 0)
        {
          operator delete(v16[0]);
        }

        sub_100778C94(a1, v15);
      }
    }
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }
}

void sub_1000E51A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  sub_10014588C(v33);
  _Unwind_Resume(a1);
}

void sub_1000E5218(uint64_t a1)
{
  v2 = sub_100043A18(a1);
  [*(*v2 + 16) unregister:*(*v2 + 8) forNotification:0];
  v3 = sub_100043AD8(a1);
  [*(*v3 + 16) unregister:*(*v3 + 8) forNotification:0];
  v4 = *(a1 + 64);
  if (v4)
  {
    objc_msgSend_clientName(v4);
  }

  else
  {
    v16 = 0;
    *__p = 0u;
    v15 = 0u;
    v12 = 0u;
    *v13 = 0u;
    v10 = 0u;
    *v11 = 0u;
    *v8 = 0u;
    *v9 = 0u;
    *v6 = 0u;
    v7 = 0u;
    *v5 = 0u;
  }

  sub_100043B98(v5);
}

void sub_1000E5344(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  HIDWORD(v13) = 0;
  v5 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageActivityTypeKey"];
  if (v5 && (sub_100005EEC(v5, &v13 + 1) & 1) != 0)
  {
    v6 = HIDWORD(v13);
    if (*(a1 + 232) != HIDWORD(v13))
    {
      if (qword_1025D4790 != -1)
      {
        sub_101B133E0();
      }

      v7 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 24);
        v9 = *(a1 + 232);
        *buf = 68289794;
        *v17 = 0;
        *&v17[4] = 2082;
        *&v17[6] = "";
        v18 = 2114;
        v19 = v8;
        v20 = 1026;
        v21 = v9;
        v22 = 1026;
        v23 = v6;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Client changed activity type, Client:%{public, location:escape_only}@, from:%{public}d, to:%{public}d}", buf, 0x28u);
      }

      sub_100142420(a1, v6);
      sub_100049FD0(a1);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B13408();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *v17 = "kCLConnectionMessageActivityTypeKey";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B13430(buf);
      v14 = 136446210;
      v15 = "kCLConnectionMessageActivityTypeKey";
      LODWORD(v13) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", &v14, v13);
      v12 = v11;
      sub_100152C7C("Generic", 1, 0, 0, "void CLLocationSubscription::handleMessageActivityType(std::shared_ptr<CLConnectionMessage>)", "%s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }
}

uint64_t sub_1000E5608(uint64_t a1)
{
  result = *(a1 + 168);
  if (!result)
  {
    v3 = [objc_msgSend(*(a1 + 8) "vendor")];
    *(a1 + 168) = v3;
    [v3 registerDelegate:*(a1 + 48) inSilo:{objc_msgSend(*(a1 + 8), "silo")}];
    return *(a1 + 168);
  }

  return result;
}

uint64_t sub_1000E5678(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000E5694(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v8 = *a2;
    if (*(*a2 + 95) < 0)
    {
      sub_100007244(__dst, *(v8 + 72), *(v8 + 80));
    }

    else
    {
      *__dst = *(v8 + 72);
      v21 = *(v8 + 88);
    }

    if (*(v8 + 119) < 0)
    {
      sub_100007244(&__p, *(v8 + 96), *(v8 + 104));
    }

    else
    {
      __p = *(v8 + 96);
      v23 = *(v8 + 112);
    }

    v24 = *(v8 + 120);
    if (v21 >= 0)
    {
      v10 = __dst;
    }

    else
    {
      v10 = __dst[0];
    }

    v11 = sub_1000184F4(*(a1 + 8), [CLClientKeyPath clientKeyPathWithClientKey:[NSString stringWithUTF8String:v10]]);
    if (v23 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v13 = [NSString stringWithUTF8String:p_p];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v14 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v15 = [a3 UTF8String];
      *buf = 68290051;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2114;
      v31 = v11;
      v32 = 2114;
      v33 = v13;
      v34 = 2081;
      v35 = v15;
      v36 = 2113;
      v37 = a4;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#PersistentSubscription PersistenceBackend setObjectForKeyForSubscription, client:%{public, location:escape_only}@, storageName:%{public, location:escape_only}@, storageKey:%{private, location:escape_only}s, storageValue:%{private, location:escape_only}@}", buf, 0x3Au);
    }

    v16 = a2[1];
    v18 = *a2;
    v19 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1000E5AB0(a1 + 16, &v18, &v18);
    if (v19)
    {
      sub_100008080(v19);
    }

    v17 = +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", [*(*(a1 + 8) + 136) dictionaryForKey:v13 atKeyPath:v11 defaultValue:{&__NSDictionary0__struct, v18}]);
    [(NSMutableDictionary *)v17 setObject:a4 forKeyedSubscript:a3];
    [*(*(a1 + 8) + 136) setDictionary:v17 forKey:v13 atKeyPath:v11];
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  else
  {
    v9 = a2[1];
    v25[0] = *a2;
    v25[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1000EA7D0(a1, v25, a3);
    if (v9)
    {

      sub_100008080(v9);
    }
  }
}

void sub_1000E59A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E5A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100033A68(a1, a2);
  v6 = *(a1 + 48);
  sub_10000E198(&v7, (a1 + 8));
  (*(*v6 + 24))(v6, &v7, a2, a3);
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_1000E5A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000E5AB0(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_1000E5B8C(uint64_t a1, uint64_t a2)
{
  sub_100033A68(a1, a2);
  v3 = *(a1 + 48);
  sub_10000E198(&v4, (a1 + 8));
  (*(*v3 + 40))(v3, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1000E5C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E5FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000E6040(uint64_t a1, const __CFString *a2)
{
  v4 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  v5 = sub_1000424F4(*a1, a2, @"CLSystemService");
  v6 = v5;
  if (v5)
  {
    v7 = CFBooleanGetValue(v5) != 0;
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  (*(*v4 + 24))(v4);
  return v7;
}

void sub_1000E6118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000E612C(uint64_t a1, const __CFString *a2)
{
  v3 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  v4 = sub_1000424F4(*(v3 - 8), a2, @"CLEmergencyService");
  v5 = v4;
  if (v4)
  {
    v6 = CFBooleanGetValue(v4) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  (*(*v3 + 24))(v3);
  return v6;
}

void sub_1000E6200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void *sub_1000E6240(__CFDictionary *a1, const __CFString *a2, const __CFString *a3)
{
  value = 0;
  if (!a2)
  {
    return 0;
  }

  if (CFDictionaryGetValueIfPresent(a1, a2, &value))
  {
    if (value)
    {
      CFRetain(value);
    }
  }

  else
  {
    v7 = sub_1004E8D20(a2, a3);
    value = v7;
    if (v7)
    {
      CFDictionarySetValue(a1, a2, v7);
    }
  }

  return value;
}

BOOL sub_1000E62F8(uint64_t a1, const __CFString *a2)
{
  v3 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  v4 = sub_1000424F4(*(v3 - 32), a2, @"CLIsFindMyiPhone");
  v5 = v4;
  if (v4)
  {
    v6 = CFBooleanGetValue(v4) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  (*(*v3 + 24))(v3);
  return v6;
}

void sub_1000E63CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000E63E0(uint64_t a1, const __CFString *a2)
{
  v3 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  v4 = sub_1000424F4(*(v3 - 24), a2, @"CLIsCoreRoutine");
  v5 = v4;
  if (v4)
  {
    v6 = CFBooleanGetValue(v4) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  (*(*v3 + 24))(v3);
  return v6;
}

void sub_1000E64B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E64F4(const __CFString *a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v3 = sub_100042568(a1, a2);
  v4 = sub_1000E65D0(v3, a1);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018D208;
  v7[3] = &unk_1024AF610;
  v7[4] = &v8;
  [(__CFArray *)v4 enumerateObjectsUsingBlock:v7];

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_1000E65B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFArrayRef sub_1000E65D0(uint64_t a1, const __CFString *a2)
{
  v4 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  if (!a2)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v5 = sub_1000E6240(*(a1 + 32), a2, @"CLRequiredCapabilities");
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFArrayGetTypeID())
    {
      goto LABEL_8;
    }

    CFRelease(v6);
  }

  v6 = CFArrayCreate(kCFAllocatorDefault, 0, 0, &kCFTypeArrayCallBacks);
  if (v6)
  {
    CFDictionarySetValue(*(a1 + 32), a2, v6);
  }

LABEL_8:
  (*(*v4 + 24))(v4);
  return v6;
}

void sub_1000E66F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000E6708(uint64_t a1, const __CFString *a2)
{
  v3 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  v4 = sub_1000424F4(*(v3 - 40), a2, @"CLHarvestableSystemService");
  v5 = v4;
  if (v4)
  {
    v6 = CFBooleanGetValue(v4) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  (*(*v3 + 24))(v3);
  return v6;
}

void sub_1000E67DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

id sub_1000E681C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [*v4 silo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E68A0;
  v7[3] = &unk_102449BC0;
  v7[4] = a3;
  v7[5] = v4;
  return [v5 async:v7];
}

id sub_1000E68A0(uint64_t a1)
{
  v1 = *(a1 + 40);
  [*(a1 + 32) floatValue];
  LODWORD(v6) = v2;
  result = [*v1 silo];
  v4 = *(v1 + 16);
  if (v4)
  {
    return v4(&v5, *(v1 + 8));
  }

  return result;
}

void sub_1000E690C(uint64_t a1, __n128 *a2)
{
  sub_1000E6960((a1 + 312), a2);
  v4 = *(a1 + 6376);
  if (v4)
  {

    sub_1000E6D00(v4, a2);
  }
}

void sub_1000E6960(__n128 *a1, __n128 *a2)
{
  v13 = *a2;
  v3 = a1[8].n128_u64[1];
  if (v3)
  {
    (*(*v3 + 48))(v3, &v13);
  }

  v4 = a1[3].n128_u64[1];
  if (v4)
  {
    v5 = v4 + a1[3].n128_u64[0] - 1;
    v6 = a1[1].n128_u64[1];
    v7 = (*(v6 + ((v5 >> 5) & 0x7FFFFFFFFFFFFF8)))[2 * v5];
    if (v7 > v13.n128_f64[0])
    {
      v8 = a1[2].n128_u64[0];
      a1[3].n128_u64[1] = 0;
      v9 = (v8 - v6) >> 3;
      if (v9 >= 3)
      {
        do
        {
          operator delete(*v6);
          v10 = a1[2].n128_u64[0];
          v6 = (a1[1].n128_u64[1] + 8);
          a1[1].n128_u64[1] = v6;
          v9 = (v10 - v6) >> 3;
        }

        while (v9 > 2);
      }

      if (v9 == 1)
      {
        v11 = 128;
      }

      else
      {
        if (v9 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101A89534();
          }

          v12 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v15 = v13.n128_u64[0];
            v16 = 2048;
            v17 = v7;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A89658();
          }

          goto LABEL_18;
        }

        v11 = 256;
      }

      a1[3].n128_u64[0] = v11;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_1000E6C74(a1[1].n128_u64, &v13);
  a1[6] = v13;
}

void sub_1000E6B38(uint64_t *a1, float *a2)
{
  if (qword_1025D4760 != -1)
  {
    sub_100325278();
  }

  v4 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1;
    if (*(a1 + 23) < 0)
    {
      v5 = *a1;
    }

    v6 = *a2;
    v7 = a2[2];
    v8 = 136315650;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "AmbientLight,context,%s,startTime,%f,lux,%f", &v8, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019CA8E8();
  }
}

uint64_t sub_1000E6C4C(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

__n128 sub_1000E6C74(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_100DB8CEC(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void sub_1000E6D00(void *a1, _OWORD *a2)
{
  v5 = a1[4];
  v4 = a1[5];
  if (v5 >= v4)
  {
    v7 = a1[3];
    v8 = (v5 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      goto LABEL_44;
    }

    v10 = v4 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_1000D758C((a1 + 3), v11);
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v6 = 16 * v8 + 16;
    v13 = a1[3];
    v14 = a1[4] - v13;
    v15 = 16 * v8 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[3];
    a1[3] = v15;
    a1[4] = v6;
    a1[5] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  a1[4] = v6;
  v17 = a1[3];
  if (v17 == v6 || *(v6 - 16) - *v17 < 60.0)
  {
    return;
  }

  v18 = 0;
  v19 = 0.0;
  v20 = -3.4028e38;
  do
  {
    if (v20 < *(v17 + 8))
    {
      v20 = *(v17 + 8);
    }

    v21 = *v17;
    v17 += 16;
    v19 = v19 + v21;
    ++v18;
  }

  while (v17 != v6);
  v22 = *a2;
  v23 = v19 / v18;
  v25 = a1[7];
  v24 = a1[8];
  if (v25 >= v24)
  {
    v27 = a1[6];
    v28 = v25 - v27;
    v29 = (v25 - v27) >> 4;
    v30 = v29 + 1;
    if (!((v29 + 1) >> 60))
    {
      v31 = v24 - v27;
      if (v31 >> 3 > v30)
      {
        v30 = v31 >> 3;
      }

      v32 = v31 >= 0x7FFFFFFFFFFFFFF0;
      v33 = 0xFFFFFFFFFFFFFFFLL;
      if (!v32)
      {
        v33 = v30;
      }

      if (v33)
      {
        sub_1000D758C((a1 + 6), v33);
      }

      v34 = 16 * v29;
      *v34 = v23;
      *(v34 + 8) = v20;
      v26 = 16 * v29 + 16;
      memcpy(0, v27, v28);
      v35 = a1[6];
      a1[6] = 0;
      a1[7] = v26;
      a1[8] = 0;
      if (v35)
      {
        operator delete(v35);
      }

      goto LABEL_30;
    }

LABEL_44:
    sub_10028C64C();
  }

  *v25 = v23;
  *(v25 + 8) = v20;
  v26 = v25 + 16;
LABEL_30:
  a1[7] = v26;
  v36 = a1[6];
  if (v36 != v26)
  {
    while (vabdd_f64(v22, *v36) <= 86400.0)
    {
      v36 += 2;
      if (v36 == v26)
      {
        goto LABEL_42;
      }
    }

    if (v36 != v26)
    {
      v37 = v36 + 2;
      if (v36 + 2 != v26)
      {
        do
        {
          if (vabdd_f64(v22, *v37) <= 86400.0)
          {
            *v36 = *v37;
            v36 += 2;
          }

          v37 += 2;
        }

        while (v37 != v26);
        v26 = a1[7];
      }
    }

    if (v36 != v26)
    {
      a1[7] = v36;
    }
  }

LABEL_42:
  a1[4] = a1[3];
}

NSDictionary *sub_1000E6FB0(uint64_t a1)
{
  v6[0] = @"airplaneMode";
  v7[0] = [NSNumber numberWithBool:*(*(a1 + 32) + 27)];
  v6[1] = @"bundleId";
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  v7[1] = [NSString stringWithUTF8String:v2];
  v6[2] = @"cellAvailable";
  v7[2] = [NSNumber numberWithBool:*(*(a1 + 32) + 24)];
  v6[3] = @"eventDistance";
  v7[3] = [NSNumber numberWithDouble:*(*(a1 + 32) + 64)];
  v6[4] = @"eventFenceType";
  v7[4] = [NSNumber numberWithInt:*(*(a1 + 32) + 84)];
  v6[5] = @"eventLatency";
  v7[5] = [NSNumber numberWithInt:*(*(a1 + 32) + 72)];
  v6[6] = @"eventMask";
  v7[6] = [NSNumber numberWithInt:*(*(a1 + 32) + 80)];
  v6[7] = @"eventRadius";
  v7[7] = [NSNumber numberWithInt:*(*(a1 + 32) + 56)];
  v6[8] = @"eventType";
  v7[8] = [NSNumber numberWithInt:*(*(a1 + 32) + 48)];
  v6[9] = @"isConservativeFence";
  v7[9] = [NSNumber numberWithBool:*(*(a1 + 32) + 91)];
  v6[10] = @"isDriving";
  v7[10] = [NSNumber numberWithBool:*(*(a1 + 32) + 93)];
  v6[11] = @"isEmergencyFence";
  v7[11] = [NSNumber numberWithBool:*(*(a1 + 32) + 88)];
  v6[12] = @"isInVehicle";
  v7[12] = [NSNumber numberWithBool:*(*(a1 + 32) + 92)];
  v6[13] = @"isPedestrian";
  v7[13] = [NSNumber numberWithBool:*(*(a1 + 32) + 95)];
  v6[14] = @"isPolygonalFence";
  v7[14] = [NSNumber numberWithBool:*(*(a1 + 32) + 89)];
  v6[15] = @"isStatic";
  v7[15] = [NSNumber numberWithBool:*(*(a1 + 32) + 94)];
  v6[16] = @"isThrottledFence";
  v7[16] = [NSNumber numberWithBool:*(*(a1 + 32) + 90)];
  v6[17] = @"numAPsFenceBounded";
  v3 = *(*(a1 + 32) + 104);
  if (v3 < 1)
  {
    v4 = 0;
  }

  else if (v3 > 0x14)
  {
    if (v3 <= 0xB4)
    {
      v4 = ((v3 - 21) >> 4) + 5;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = ((v3 - 1) >> 2) + 1;
  }

  v7[17] = [NSNumber numberWithInt:v4];
  v6[18] = @"numAPsFence";
  v7[18] = [NSNumber numberWithInt:*(*(a1 + 32) + 104)];
  v6[19] = @"numAPsTotal";
  v7[19] = [NSNumber numberWithInt:*(*(a1 + 32) + 108)];
  v6[20] = @"passcodeLocked";
  v7[20] = [NSNumber numberWithBool:*(*(a1 + 32) + 26)];
  v6[21] = @"reachability";
  v7[21] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 32)];
  v6[22] = @"sinceLastEvent";
  v7[22] = [NSNumber numberWithInt:*(*(a1 + 32) + 96)];
  v6[23] = @"wifiAvailable";
  v7[23] = [NSNumber numberWithBool:*(*(a1 + 32) + 25)];
  return [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:24];
}

void sub_1000E7418(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 64);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1000E746C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*a1 silo];
  v6 = [objc_msgSend(*a1 "vendor")];
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = [v6 syncgetAuthorizationContextIfClientIsNonZonal:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v7)}];
  if (!a3 || (v9 = v8, ([v8 isNonProvisionallyAuthorizedForServiceTypeMask:a3] & 1) != 0))
  {
    memset(&v60, 0, sizeof(v60));
    v10 = sub_10001A2EC(&xmmword_10265D3F8, a2);
    if (!v10)
    {
      sub_1000432E8("unordered_map::at: key not found");
    }

    std::string::operator=(&v60, (v10 + 5));
    sub_1000EBF44(&v60, v46);
    v11 = v51;
    if ((v51 & 0x80u) != 0)
    {
      v11 = v50[1];
    }

    if (v11)
    {
      v12 = [objc_msgSend(*a1 "vendor")];
      if ((v51 & 0x80u) == 0)
      {
        v13 = v50;
      }

      else
      {
        v13 = v50[0];
      }

      [v12 wakeUpLaunchdManagedClient:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v13)}];
    }

    v14 = v49;
    if ((v49 & 0x80u) != 0)
    {
      v14 = v48[1];
    }

    if (v14)
    {
      v15 = [objc_msgSend(*a1 "vendor")];
      if ((v49 & 0x80u) == 0)
      {
        v16 = v48;
      }

      else
      {
        v16 = v48[0];
      }

      [v15 wakeUpLaunchdManagedClient:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v16)}];
    }

    sub_1000E7DC4(v46, __p);
    if ((v71[3] & 0x80000000) != 0)
    {
      v31 = *&__p[8];
      operator delete(*__p);
      if (v31)
      {
        goto LABEL_23;
      }
    }

    else if (v71[3])
    {
LABEL_23:
      sub_1000E7DC4(v46, __p);
      v17 = [objc_msgSend(*a1 "vendor")];
      if (v71[3] >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = *__p;
      }

      [v17 wakeUpLaunchdManagedClient:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v18)}];
      if ((v71[3] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (*(a1 + 48))
      {
        sub_1000E7DC4(v46, v67);
        v19 = [NSString alloc];
        if (v68 >= 0)
        {
          v20 = v67;
        }

        else
        {
          v20 = v67[0];
        }

        v21 = [v19 initWithUTF8String:v20];
        if (qword_1025D4790 != -1)
        {
          sub_101A28438();
        }

        v22 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
        {
          v23 = v67;
          if (v68 < 0)
          {
            v23 = v67[0];
          }

          *__p = 136380675;
          *&__p[4] = v23;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "ALM: %{private}s launching...", __p, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A28460(__p);
          v39 = v67;
          if (v68 < 0)
          {
            v39 = v67[0];
          }

          v65 = 136380675;
          v66 = v39;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4798, 2, "ALM: %{private}s launching...", &v65, 12);
          v41 = v40;
          sub_100152C7C("Generic", 1, 0, 2, "void CLApplicationLifecycleManager::launchApplication(const std::string &, CLClientServiceTypeMask)", "%s\n", v40);
          if (v41 != __p)
          {
            free(v41);
          }
        }

        v24 = [NSString stringWithUTF8String:"CLLaunchOptionsLocation"];
        v63[0] = FBSOpenApplicationOptionKeyPayloadOptions;
        v61 = v24;
        v62 = &__kCFBooleanTrue;
        v25 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v63[1] = FBSOpenApplicationOptionKeyActivateSuspended;
        v64[0] = v25;
        v64[1] = &__kCFBooleanTrue;
        v26 = [FBSOpenApplicationOptions optionsWithDictionary:[NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:2]];
        v28 = *(a1 + 64);
        v27 = *(a1 + 72);
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100008080(v27);
        }

        v29 = *(a1 + 80);
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3321888768;
        v42[2] = sub_1000E8700;
        v42[3] = &unk_10249E4E8;
        v42[4] = a1;
        v42[5] = v28;
        v43 = v27;
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v68) < 0)
        {
          sub_100007244(&v44, v67[0], v67[1]);
        }

        else
        {
          v44 = *v67;
          v45 = v68;
        }

        [v29 openApplication:v21 withOptions:v26 completion:v42];

        if (SHIBYTE(v45) < 0)
        {
          operator delete(v44);
        }

        if (v43)
        {
          std::__shared_weak_count::__release_weak(v43);
        }

        if (v27)
        {
          std::__shared_weak_count::__release_weak(v27);
        }

        if (SHIBYTE(v68) < 0)
        {
          operator delete(v67[0]);
        }
      }

      else
      {
        if (qword_1025D4790 != -1)
        {
          sub_101A28438();
        }

        v37 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v38 = a2;
          }

          else
          {
            v38 = *a2;
          }

          *__p = 68289283;
          *&__p[8] = 2082;
          *&__p[10] = "";
          v70 = 2081;
          *v71 = v38;
          _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ALM: failed attempt to launch before device unlocked since boot, clientKey:%{private, location:escape_only}s}", __p, 0x1Cu);
        }
      }

LABEL_79:
      if (v59 < 0)
      {
        operator delete(v58);
      }

      if (v57 < 0)
      {
        operator delete(v56);
      }

      if (v55 < 0)
      {
        operator delete(v54);
      }

      if (v53 < 0)
      {
        operator delete(v52);
      }

      if (v51 < 0)
      {
        operator delete(v50[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      if (v47 < 0)
      {
        operator delete(v46[0]);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      return;
    }

    if (qword_1025D48A0 != -1)
    {
      sub_101A284A4();
    }

    v32 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 23) >= 0)
      {
        v33 = a2;
      }

      else
      {
        v33 = *a2;
      }

      *__p = 136315138;
      *&__p[4] = v33;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "%s doesn't have a bundle ID; not going to bug SpringBoard.", __p, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A284CC(__p);
      v34 = *(a2 + 23) >= 0 ? a2 : *a2;
      LODWORD(v67[0]) = 136315138;
      *(v67 + 4) = v34;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D48A8, 2, "%s doesn't have a bundle ID; not going to bug SpringBoard.", v67);
      v36 = v35;
      sub_100152C7C("Generic", 1, 0, 2, "void CLApplicationLifecycleManager::launchApplication(const std::string &, CLClientServiceTypeMask)", "%s\n", v35);
      if (v36 != __p)
      {
        free(v36);
      }
    }

    goto LABEL_79;
  }

  if (qword_1025D4790 != -1)
  {
    sub_101A2825C();
  }

  v30 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 68289538;
    *&__p[8] = 2082;
    *&__p[10] = "";
    v70 = 1026;
    *v71 = a3;
    *&v71[4] = 2114;
    *&v71[6] = v9;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning ALM: dropping launchApplication request for unauthorized purpose, RequiredServiceMask:%{public}d, AuthContext:%{public, location:escape_only}@}", __p, 0x22u);
  }
}