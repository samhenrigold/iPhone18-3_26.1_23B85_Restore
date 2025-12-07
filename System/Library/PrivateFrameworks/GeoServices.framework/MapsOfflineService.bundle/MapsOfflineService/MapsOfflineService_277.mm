__n128 sub_10CE3A0(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, __n128 result)
{
  if (a3)
  {
    v5 = a4;
    v7 = a1;
    if (a3 == 2)
    {
      v10 = a2 - 80;
      if (sub_10BFE90(a2 - 4, (a1 + 64)))
      {
        *v5 = *v10;
        v11 = *(a2 - 4);
        v12 = *(a2 - 3);
        v13 = *(a2 - 1);
        *(v5 + 48) = *(a2 - 2);
        *(v5 + 64) = v13;
        *(v5 + 16) = v11;
        *(v5 + 32) = v12;
        v14 = *(v7 + 64);
        v16 = *(v7 + 16);
        v15 = *(v7 + 32);
        *(v5 + 128) = *(v7 + 48);
        *(v5 + 144) = v14;
        *(v5 + 96) = v16;
        *(v5 + 112) = v15;
        result = *v7;
      }

      else
      {
        *v5 = *v7;
        v34 = *(v7 + 16);
        v35 = *(v7 + 32);
        v36 = *(v7 + 64);
        *(v5 + 48) = *(v7 + 48);
        *(v5 + 64) = v36;
        *(v5 + 16) = v34;
        *(v5 + 32) = v35;
        v37 = *(a2 - 1);
        v39 = *(a2 - 4);
        v38 = *(a2 - 3);
        *(v5 + 128) = *(a2 - 2);
        *(v5 + 144) = v37;
        *(v5 + 96) = v39;
        *(v5 + 112) = v38;
        result = *v10;
      }

      *(v5 + 80) = result;
    }

    else if (a3 == 1)
    {
      *a4 = *a1;
      result = *(a1 + 16);
      v8 = *(a1 + 32);
      v9 = *(a1 + 64);
      *(a4 + 48) = *(a1 + 48);
      *(a4 + 64) = v9;
      *(a4 + 16) = result;
      *(a4 + 32) = v8;
    }

    else if (a3 > 8)
    {
      v40 = a3 >> 1;
      v41 = 80 * (a3 >> 1);
      v42 = v41 + a1;
      sub_10CE048(a1, (v41 + a1), v40, a4, v40);
      sub_10CE048(v41 + v7, a2, a3 - v40, v5 + v41, a3 - v40);
      v44 = v41 + v7;
      while (v44 != a2)
      {
        if (sub_10BFE90((v44 + 64), (v7 + 64)))
        {
          *v5 = *v44;
          result = *(v44 + 16);
          v47 = *(v44 + 32);
          v48 = *(v44 + 64);
          *(v5 + 48) = *(v44 + 48);
          *(v5 + 64) = v48;
          *(v5 + 16) = result;
          *(v5 + 32) = v47;
          v44 += 80;
          v5 += 80;
          if (v7 == v42)
          {
LABEL_32:
            while (v44 != a2)
            {
              *v5 = *v44;
              result = *(v44 + 16);
              v51 = *(v44 + 32);
              v52 = *(v44 + 64);
              *(v5 + 48) = *(v44 + 48);
              *(v5 + 64) = v52;
              *(v5 + 16) = result;
              *(v5 + 32) = v51;
              v44 += 80;
              v5 += 80;
            }

            return result;
          }
        }

        else
        {
          *v5 = *v7;
          result = *(v7 + 16);
          v45 = *(v7 + 32);
          v46 = *(v7 + 64);
          *(v5 + 48) = *(v7 + 48);
          *(v5 + 64) = v46;
          *(v5 + 16) = result;
          *(v5 + 32) = v45;
          v7 += 80;
          v5 += 80;
          if (v7 == v42)
          {
            goto LABEL_32;
          }
        }
      }

      while (v7 != v42)
      {
        *v5 = *v7;
        result = *(v7 + 16);
        v49 = *(v7 + 32);
        v50 = *(v7 + 64);
        *(v5 + 48) = *(v7 + 48);
        *(v5 + 64) = v50;
        *(v5 + 16) = result;
        *(v5 + 32) = v49;
        v7 += 80;
        v5 += 80;
      }
    }

    else if (a1 != a2)
    {
      *a4 = *a1;
      result = *(a1 + 16);
      v17 = *(a1 + 32);
      v18 = *(a1 + 64);
      *(a4 + 48) = *(a1 + 48);
      *(a4 + 64) = v18;
      *(a4 + 16) = result;
      *(a4 + 32) = v17;
      v19 = a1 + 80;
      if ((a1 + 80) != a2)
      {
        v20 = 0;
        v21 = a4;
        do
        {
          while (1)
          {
            v24 = v19;
            v25 = (v21 + 80);
            if (sub_10BFE90((v7 + 144), (v21 + 64)))
            {
              break;
            }

            *v25 = *v24;
            result = *(v24 + 16);
            v22 = *(v24 + 32);
            v23 = *(v24 + 64);
            *(v21 + 128) = *(v24 + 48);
            *(v21 + 144) = v23;
            *(v21 + 96) = result;
            *(v21 + 112) = v22;
            v19 = v24 + 80;
            v20 += 80;
            v21 += 80;
            v7 = v24;
            if ((v24 + 80) == a2)
            {
              return result;
            }
          }

          v26 = *(v21 + 48);
          *(v21 + 112) = *(v21 + 32);
          *(v21 + 128) = v26;
          *(v21 + 144) = *(v21 + 64);
          v27 = *(v21 + 16);
          *v25 = *v21;
          *(v21 + 96) = v27;
          v28 = v5;
          if (v21 != v5)
          {
            v29 = v20;
            while (1)
            {
              v28 = (v5 + v29);
              if (!sub_10BFE90((v7 + 144), (v5 + v29 - 16)))
              {
                break;
              }

              v30 = *(v28 - 2);
              v28[2] = *(v28 - 3);
              v28[3] = v30;
              *(v28 + 60) = *(v28 - 20);
              v31 = *(v28 - 4);
              *v28 = *(v28 - 5);
              v28[1] = v31;
              v29 -= 80;
              if (!v29)
              {
                v28 = v5;
                break;
              }
            }
          }

          *v28 = *v24;
          result = *(v24 + 16);
          v32 = *(v24 + 32);
          v33 = *(v24 + 48);
          *(v28 + 60) = *(v24 + 60);
          v28[2] = v32;
          v28[3] = v33;
          v28[1] = result;
          v19 = v24 + 80;
          v20 += 80;
          v21 = v25;
          v7 = v24;
        }

        while ((v24 + 80) != a2);
      }
    }
  }

  return result;
}

void sub_10CE6E0()
{
  byte_27C1F3F = 3;
  LODWORD(qword_27C1F28) = 5136193;
  byte_27C1F57 = 3;
  LODWORD(qword_27C1F40) = 5136194;
  byte_27C1F6F = 3;
  LODWORD(qword_27C1F58) = 5136195;
  byte_27C1F87 = 15;
  strcpy(&qword_27C1F70, "vehicle_mass_kg");
  byte_27C1F9F = 21;
  strcpy(&xmmword_27C1F88, "vehicle_cargo_mass_kg");
  byte_27C1FB7 = 19;
  strcpy(&qword_27C1FA0, "vehicle_aux_power_w");
  byte_27C1FCF = 15;
  strcpy(&qword_27C1FB8, "dcdc_efficiency");
  strcpy(&qword_27C1FD0, "drive_train_efficiency");
  HIBYTE(word_27C1FE6) = 22;
  operator new();
}

void sub_10CE8BC(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C1FE6) < 0)
  {
    sub_21E77F8();
  }

  sub_21E7804();
  _Unwind_Resume(a1);
}

void *sub_10CE8DC(void *result, uint64_t a2, uint64_t a3)
{
  *result = -1;
  result[1] = -1;
  result[2] = a2;
  result[3] = a3;
  return result;
}

void sub_10CE8EC(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_7E9A4(v10);
  sub_3AF6B4(*(a1 + 24));
  v9 = a5[1];
  if (v9 != *a5)
  {
    if ((0x4FCACE213F2B3885 * ((v9 - *a5) >> 5)) <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  operator new();
}

void sub_10CF9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p)
{
  operator delete(__p);
  if (v38)
  {
    operator delete(v38);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

char ***sub_10CFB8C(char ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v2; sub_2AE1D0(a1, i))
    {
      i -= 12;
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

void *sub_10CFBF0(void *a1)
{
  v2 = a1[40];
  if (v2)
  {
    a1[41] = v2;
    operator delete(v2);
  }

  v3 = a1[37];
  if (v3)
  {
    a1[38] = v3;
    operator delete(v3);
  }

  v4 = a1[34];
  if (v4)
  {
    a1[35] = v4;
    operator delete(v4);
  }

  v5 = a1[31];
  if (v5)
  {
    a1[32] = v5;
    operator delete(v5);
  }

  v6 = a1[28];
  if (v6)
  {
    a1[29] = v6;
    operator delete(v6);
  }

  v7 = a1[24];
  if (v7)
  {
    a1[25] = v7;
    operator delete(v7);
  }

  v8 = a1[21];
  if (v8)
  {
    a1[22] = v8;
    operator delete(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    a1[8] = v9;
    operator delete(v9);
  }

  return a1;
}

void sub_10CFC94()
{
  byte_27C2047 = 3;
  LODWORD(qword_27C2030) = 5136193;
  byte_27C205F = 3;
  LODWORD(qword_27C2048) = 5136194;
  byte_27C2077 = 3;
  LODWORD(qword_27C2060) = 5136195;
  byte_27C208F = 15;
  strcpy(&qword_27C2078, "vehicle_mass_kg");
  byte_27C20A7 = 21;
  strcpy(&xmmword_27C2090, "vehicle_cargo_mass_kg");
  byte_27C20BF = 19;
  strcpy(&qword_27C20A8, "vehicle_aux_power_w");
  byte_27C20D7 = 15;
  strcpy(&qword_27C20C0, "dcdc_efficiency");
  strcpy(&qword_27C20D8, "drive_train_efficiency");
  HIBYTE(word_27C20EE) = 22;
  operator new();
}

void sub_10CFE70(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C20EE) < 0)
  {
    sub_21E78D4();
  }

  sub_21E78E0();
  _Unwind_Resume(a1);
}

void *sub_10CFE90(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = -1;
  result[2] = -1;
  return result;
}

void sub_10D0F38(_Unwind_Exception *a1)
{
  if (STACK[0x5B8])
  {
    free(STACK[0x5B8]);
  }

  sub_CDE540(&STACK[0x608]);
  sub_100E0D0(&STACK[0x1960]);
  sub_100CD54(&STACK[0x28C8]);
  sub_CEC20C(&STACK[0x3830]);
  sub_39393C(&STACK[0xB3F0]);
  sub_39393C(&STACK[0xB408]);
  sub_404134(&STACK[0xB420]);
  _Unwind_Resume(a1);
}

uint64_t sub_10D1208(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2675458;
  a2[1] = v2;
  return result;
}

BOOL sub_10D1234(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = v2[8];
  v5 = v2[7] - 1;
  v6 = 0x2127599BF4325C37 * (*a2 ^ (*a2 >> 23));
  v7 = v2[9];
  v8 = (v6 ^ (v6 >> 47)) & v5;
  v9 = *(v7 + 8 * v8);
  if (v4 == v9)
  {
LABEL_2:
    v8 = -1;
  }

  else if (v2[5])
  {
    v11 = v2[4];
    v12 = 1;
    while (v11 == v9 || v9 != v3)
    {
      v8 = (v8 + v12) & v5;
      v9 = *(v7 + 8 * v8);
      ++v12;
      if (v4 == v9)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    v13 = 1;
    while (v9 != v3)
    {
      v8 = (v8 + v13) & v5;
      v9 = *(v7 + 8 * v8);
      ++v13;
      if (v4 == v9)
      {
        goto LABEL_2;
      }
    }
  }

  return v8 != -1;
}

uint64_t sub_10D12EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing36PathGraphChargingStationAugmentation3runERNS0_9PathGraphINS0_11DrivingModeEEERKNS0_13QueryTerminalINS0_20DrivingRoutingNodeIdEEERKNS0_16GeoQueryTerminalIS7_EERKNS0_19DrivingCostFunctionENS0_18RequestTrafficTypeERKNS0_20RequestEVInformationENS0_41UserLegChargingStationPreferencesIteratorERKNS0_26SuggestedChargingFunctionsENS_6common6detail12IntegerRangeINSQ_16TypeSafeIntegralINS0_27ChargingFunctionMapIdStructEtLt65535EEELb0ELm1EEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing36PathGraphChargingStationAugmentation3runERNS0_9PathGraphINS0_11DrivingModeEEERKNS0_13QueryTerminalINS0_20DrivingRoutingNodeIdEEERKNS0_16GeoQueryTerminalIS7_EERKNS0_19DrivingCostFunctionENS0_18RequestTrafficTypeERKNS0_20RequestEVInformationENS0_41UserLegChargingStationPreferencesIteratorERKNS0_26SuggestedChargingFunctionsENS_6common6detail12IntegerRangeINSQ_16TypeSafeIntegralINS0_27ChargingFunctionMapIdStructEtLt65535EEELb0ELm1EEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing36PathGraphChargingStationAugmentation3runERNS0_9PathGraphINS0_11DrivingModeEEERKNS0_13QueryTerminalINS0_20DrivingRoutingNodeIdEEERKNS0_16GeoQueryTerminalIS7_EERKNS0_19DrivingCostFunctionENS0_18RequestTrafficTypeERKNS0_20RequestEVInformationENS0_41UserLegChargingStationPreferencesIteratorERKNS0_26SuggestedChargingFunctionsENS_6common6detail12IntegerRangeINSQ_16TypeSafeIntegralINS0_27ChargingFunctionMapIdStructEtLt65535EEELb0ELm1EEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing36PathGraphChargingStationAugmentation3runERNS0_9PathGraphINS0_11DrivingModeEEERKNS0_13QueryTerminalINS0_20DrivingRoutingNodeIdEEERKNS0_16GeoQueryTerminalIS7_EERKNS0_19DrivingCostFunctionENS0_18RequestTrafficTypeERKNS0_20RequestEVInformationENS0_41UserLegChargingStationPreferencesIteratorERKNS0_26SuggestedChargingFunctionsENS_6common6detail12IntegerRangeINSQ_16TypeSafeIntegralINS0_27ChargingFunctionMapIdStructEtLt65535EEELb0ELm1EEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_10D153C(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C21F6) < 0)
  {
    sub_21E79B0();
  }

  sub_21E79BC();
  _Unwind_Resume(a1);
}

__n128 sub_10D155C(uint64_t a1, uint64_t *a2, __n128 *a3)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  result = *a3;
  *(a1 + 16) = *a3;
  *(a1 + 32) = a3[1].n128_u64[0];
  *a3 = 0uLL;
  a3[1].n128_u64[0] = 0;
  return result;
}

void sub_10D18D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a16);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  sub_360988(v24);
  _Unwind_Resume(a1);
}

void sub_10D192C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_1A104(&a13);
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10D1924);
}

uint64_t sub_10D1950(void *a1, uint64_t *a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return *(v2 + 10);
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_10D1A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10D1AC8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_2B8044(*(a1 + 32), a2, &v6);
  v3 = v6;
  v4 = v7;
  if (v6 != v7)
  {
    do
    {
      v5 = *(a1 + 808);
      v9 = *v3 >> ((sub_57A90(*v3) - 2 * v5) & 0xFE);
      sub_10D2F54(a1 + 40, &v9, &v9, v10);
      ++v3;
    }

    while (v3 != v4);
    v3 = v6;
  }

  if (v3)
  {
    v7 = v3;
    operator delete(v3);
  }
}

void sub_10D1B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10D1D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10D1D30@<X0>(void *result@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  *a2 = &unk_2290750;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 48) = &unk_2290750;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_2290750;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0u;
  *(a2 + 136) = 0;
  *(a2 + 144) = &unk_2290750;
  *(a2 + 168) = 0;
  *(a2 + 152) = 0u;
  *(a2 + 184) = 0;
  *(a2 + 192) = &unk_2290750;
  *(a2 + 216) = 0;
  *(a2 + 200) = 0u;
  *(a2 + 232) = 0;
  *(a2 + 240) = &unk_2290750;
  *(a2 + 264) = 0;
  *(a2 + 248) = 0u;
  *(a2 + 280) = 0;
  *(a2 + 288) = &unk_2290750;
  *(a2 + 312) = 0;
  *(a2 + 296) = 0u;
  *(a2 + 328) = 0;
  *(a2 + 336) = &unk_2290750;
  *(a2 + 360) = 0;
  *(a2 + 344) = 0u;
  *(a2 + 376) = 0;
  *(a2 + 384) = &unk_2290750;
  *(a2 + 408) = 0;
  *(a2 + 392) = 0u;
  *(a2 + 424) = 0;
  *(a2 + 432) = &unk_2290750;
  *(a2 + 456) = 0;
  *(a2 + 440) = 0u;
  *(a2 + 472) = 0;
  *(a2 + 480) = &unk_2290750;
  *(a2 + 520) = 0;
  *(a2 + 504) = 0;
  *(a2 + 488) = 0u;
  *(a2 + 528) = &unk_2290750;
  *(a2 + 568) = 0;
  *(a2 + 552) = 0;
  *(a2 + 536) = 0u;
  *(a2 + 576) = &unk_2290750;
  *(a2 + 616) = 0;
  *(a2 + 600) = 0;
  *(a2 + 584) = 0u;
  *(a2 + 624) = &unk_2290750;
  *(a2 + 664) = 0;
  *(a2 + 648) = 0;
  *(a2 + 632) = 0u;
  *(a2 + 672) = &unk_2290750;
  *(a2 + 712) = 0;
  *(a2 + 696) = 0;
  *(a2 + 680) = 0u;
  *(a2 + 720) = &unk_2290750;
  *(a2 + 760) = 0;
  *(a2 + 744) = 0;
  *(a2 + 728) = 0u;
  if (!(result[97] + result[91] + result[85] + result[79] + result[73] + result[67] + result[61] + result[55] + result[49] + result[43] + result[37] + result[31] + result[25] + result[19] + result[7] + result[13]))
  {
    return result;
  }

  v8 = result[5];
  v7 = result[6];
  if (*v8 > -2)
  {
    if (result[5] == &v8[result[8]])
    {
LABEL_8:
      v11 = result + 5;
      v12 = (result + 11);
      v13 = 6;
      v14 = result + 5;
      do
      {
        v15 = *v12;
        v7 = v14[7];
        if (*v15 > -2)
        {
          if (v15 != &v15[v14[9]])
          {
            break;
          }
        }

        else
        {
          v16 = v15;
          do
          {
            v17 = (__clz(__rbit64(((*v16 >> 7) & ~*v16 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
            v16 += v17;
            v7 += v17;
          }

          while (*v16 < -1);
          if (v16 != &v15[v14[9]])
          {
            break;
          }
        }

        v14 = &v11[v13];
        v13 += 6;
        v12 = &v11[v13];
      }

      while (v13 != 96);
    }
  }

  else
  {
    v9 = result[5];
    do
    {
      v10 = (__clz(__rbit64(((*v9 >> 7) & ~*v9 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v9 += v10;
      v7 += v10;
    }

    while (*v9 < -1);
    if (v9 == &v8[result[8]])
    {
      goto LABEL_8;
    }
  }

  v18 = result;
  v29 = *v7;
  v28[0] = sub_374F8(&v29);
  v28[1] = v19;
  v20 = sub_34164(v28) * 100.0;
  if (v20 >= 0.0)
  {
    v21 = v20;
    v22 = v18;
    if (v20 >= 4.50359963e15)
    {
      goto LABEL_22;
    }

    v23 = (v20 + v20) + 1;
  }

  else
  {
    v21 = v20;
    v22 = v18;
    if (v20 <= -4.50359963e15)
    {
      goto LABEL_22;
    }

    v23 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
  }

  v21 = (v23 >> 1);
LABEL_22:
  v24 = 9.22337204e18;
  if (v21 < 9.22337204e18)
  {
    if (v20 >= 0.0)
    {
      if (v20 < 4.50359963e15)
      {
        v25 = (v20 + v20) + 1;
        goto LABEL_28;
      }
    }

    else if (v20 > -4.50359963e15)
    {
      v25 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
LABEL_28:
      v20 = (v25 >> 1);
    }

    v24 = v20;
  }

  if (*(v22 + 202))
  {
    v26 = (a3 / v24 + 1.0);
    v27 = (a4 / v24 + 1.0);
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  return sub_10D2194(v22, v26, v27, vcvtpd_u64_f64(*v22 / v24), vcvtpd_u64_f64(v22[1] / v24), vcvtpd_u64_f64(v22[2] / v24), a2);
}

uint64_t sub_10D2194(void *a1, unsigned int a2, unsigned int a3, __int16 a4, __int16 a5, __int16 a6, uint64_t a7)
{
  v84[0] = &unk_2290750;
  v84[1] = 0;
  v85 = 0u;
  v86 = 0;
  v87 = &unk_2290750;
  v88 = 0;
  v89 = 0u;
  v90 = 0;
  v91 = &unk_2290750;
  v92 = 0;
  v93 = 0u;
  v94 = 0;
  v95 = &unk_2290750;
  v96 = 0u;
  v98 = 0;
  v97 = 0;
  v99 = &unk_2290750;
  v101 = 0;
  v100 = 0u;
  v102 = 0;
  v103 = &unk_2290750;
  v106 = 0;
  v105 = 0;
  v104 = 0u;
  v108 = 0u;
  v107 = &unk_2290750;
  v109 = 0;
  v110 = 0;
  v111 = &unk_2290750;
  v112 = 0u;
  v114 = 0;
  v113 = 0;
  v116 = 0u;
  v115 = &unk_2290750;
  v117 = 0;
  v118 = 0;
  v119 = &unk_2290750;
  v120 = 0u;
  v122 = 0;
  v121 = 0;
  v126 = 0;
  v124 = 0u;
  v123 = &unk_2290750;
  v125 = 0;
  v127 = &unk_2290750;
  v130 = 0;
  v128 = 0u;
  v129 = 0;
  v131 = &unk_2290750;
  v134 = 0;
  v132 = 0u;
  v133 = 0;
  v135 = &unk_2290750;
  v138 = 0;
  v136 = 0u;
  v137 = 0;
  v139 = &unk_2290750;
  v142 = 0;
  v140 = 0u;
  v141 = 0;
  v143 = &unk_2290750;
  v146 = 0;
  v144 = 0u;
  v145 = 0;
  v21[0] = &unk_2290750;
  v21[1] = 0;
  v22 = 0u;
  v23 = 0;
  v24 = &unk_2290750;
  v25 = 0;
  v26 = 0u;
  v27 = 0;
  v28 = &unk_2290750;
  v29 = 0;
  v30 = 0u;
  v31 = 0;
  v32 = &unk_2290750;
  v33 = 0u;
  v35 = 0;
  v36 = &unk_2290750;
  v34 = 0;
  v38 = 0;
  v37 = 0u;
  v39 = 0;
  v40 = &unk_2290750;
  v43 = 0;
  v44 = &unk_2290750;
  v42 = 0;
  v41 = 0u;
  v45 = 0u;
  v46 = 0;
  v47 = 0;
  v48 = &unk_2290750;
  v49 = 0u;
  v51 = 0;
  v50 = 0;
  v53 = 0u;
  v52 = &unk_2290750;
  v54 = 0;
  v55 = 0;
  v56 = &unk_2290750;
  v57 = 0u;
  v59 = 0;
  v58 = 0;
  v63 = 0;
  v61 = 0u;
  v60 = &unk_2290750;
  v62 = 0;
  v64 = &unk_2290750;
  v67 = 0;
  v65 = 0u;
  v66 = 0;
  v68 = &unk_2290750;
  v71 = 0;
  v69 = 0u;
  v70 = 0;
  v72 = &unk_2290750;
  v75 = 0;
  v73 = 0u;
  v74 = 0;
  v76 = &unk_2290750;
  v79 = 0;
  v77 = 0u;
  v78 = 0;
  v80 = &unk_2290750;
  v83 = 0;
  v81 = 0u;
  v82 = 0;
  v8 = a1[5];
  v9 = a1[6];
  v7 = a1 + 5;
  v10 = v8;
  if (*v8 <= -2)
  {
    do
    {
      v11 = (__clz(__rbit64(((*v10 >> 7) & ~*v10 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v10 = (v10 + v11);
      v9 += 4 * v11;
    }

    while (*v10 < -1);
  }

  v12 = &v8[a1[8]];
  if (v10 != v12)
  {
LABEL_4:
    operator new();
  }

  v13 = a1 + 11;
  v14 = 6;
  v15 = a1 + 5;
  do
  {
    v16 = v15[7];
    v17 = *v13;
    if (**v13 <= -2)
    {
      do
      {
        v18 = (__clz(__rbit64(((*v17 >> 7) & ~*v17 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v17 = (v17 + v18);
        v16 += 4 * v18;
      }

      while (*v17 < -1);
    }

    v19 = (*v13 + v15[9]);
    if (v17 != v19)
    {
      goto LABEL_4;
    }

    v15 = &v7[v14];
    v14 += 6;
    v13 = &v7[v14];
  }

  while (v14 != 96);
  sub_360988(v21);
  return sub_360988(v84);
}

void sub_10D2EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_360988(&a27);
  sub_360988(&STACK[0x390]);
  _Unwind_Resume(a1);
}

uint64_t sub_10D2F54@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = 0;
  v5 = *a2;
  v6 = 265 * ((~v5 + (v5 << 21)) ^ ((~v5 + (v5 << 21)) >> 24));
  v7 = 2147483649u * ((21 * (v6 ^ (v6 >> 14))) ^ ((21 * (v6 ^ (v6 >> 14))) >> 28));
  v8 = (result + 48 * (((BYTE1(v7) ^ BYTE2(v7)) ^ BYTE3(v7)) & 0xF));
  v9 = v7 >> 7;
  v10 = v8[3];
  v11 = *v8;
  while (1)
  {
    v12 = v9 & v10;
    v13 = *(v11 + (v9 & v10));
    v14 = ((v13 ^ (0x101010101010101 * (v7 & 0x7F))) - 0x101010101010101) & ~(v13 ^ (0x101010101010101 * (v7 & 0x7F))) & 0x8080808080808080;
    if (v14)
    {
      break;
    }

LABEL_6:
    if ((v13 & (~v13 << 6) & 0x8080808080808080) != 0)
    {
      v18 = result;
      v19 = a4;
      v21 = sub_10D30A0((result + 48 * (((BYTE1(v7) ^ BYTE2(v7)) ^ BYTE3(v7)) & 0xF)), v7);
      a4 = v19;
      v16 = v21;
      result = v18;
      v11 = *v8;
      v15 = v8[1];
      *(v15 + 4 * v16) = *a3;
      v10 = v8[3];
      v17 = 1;
      goto LABEL_10;
    }

    v4 += 8;
    v9 = v4 + v12;
  }

  v15 = v8[1];
  while (1)
  {
    v16 = (v12 + (__clz(__rbit64(v14)) >> 3)) & v10;
    if (*(v15 + 4 * v16) == v5)
    {
      break;
    }

    v14 &= v14 - 1;
    if (!v14)
    {
      goto LABEL_6;
    }
  }

  v17 = 0;
LABEL_10:
  *a4 = v8;
  *(a4 + 8) = result + 768;
  *(a4 + 16) = v11 + v16;
  *(a4 + 24) = v15 + 4 * v16;
  *(a4 + 32) = v11 + v10;
  *(a4 + 48) = v17;
  return result;
}

unint64_t sub_10D30A0(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_10D3198(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_10D3198(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    v2 = (&dword_0 + 1);
LABEL_4:
    sub_10D31C8(a1, v2);
  }

  if (*(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    v2 = ((2 * v1) | 1);
    goto LABEL_4;
  }

  return sub_10D336C(a1);
}

uint64_t sub_10D336C(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_27;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_27:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = *(*(result + 8) + 4 * i);
        v19 = 265 * ((~v18 + (v18 << 21)) ^ ((~v18 + (v18 << 21)) >> 24));
        v20 = 2147483649u * ((21 * (v19 ^ (v19 >> 14))) ^ ((21 * (v19 ^ (v19 >> 14))) >> 28));
        v21 = v13 & (v20 >> 7);
        v22 = *(v17->i64 + v21) & (~*(v17->i64 + v21) << 7) & 0x8080808080808080;
        if (v22)
        {
          v15 = v13 & (v20 >> 7);
        }

        else
        {
          v23 = 8;
          v15 = v13 & (v20 >> 7);
          do
          {
            v15 = (v15 + v23) & v13;
            v23 += 8;
            v22 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v22);
        }

        v16 = (v15 + (__clz(__rbit64(v22)) >> 3)) & v13;
        if ((((v16 - v21) ^ (i - v21)) & v13) > 7)
        {
          v24 = v17->u8[v16];
          v17->i8[v16] = v20 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v20 & 0x7F;
          v25 = *(result + 8);
          if (v24 == 128)
          {
            *(v25 + 4 * v16) = *(v25 + 4 * i);
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v26 = *(v25 + 4 * i);
            *(v25 + 4 * i) = *(v25 + 4 * v16);
            *(v25 + 4 * v16) = v26;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v20 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v20 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v27 = i - (i >> 3);
    v28 = i == 7;
    v29 = 6;
    if (!v28)
    {
      v29 = v27;
    }

    *(result + 40) = v29 - *(result + 16);
  }

  else
  {
    *(result + 40) = -*(result + 16);
  }

  return result;
}

void sub_10D35D4()
{
  byte_27C2257 = 3;
  LODWORD(qword_27C2240) = 5136193;
  byte_27C226F = 3;
  LODWORD(qword_27C2258) = 5136194;
  byte_27C2287 = 3;
  LODWORD(qword_27C2270) = 5136195;
  byte_27C229F = 15;
  strcpy(&qword_27C2288, "vehicle_mass_kg");
  byte_27C22B7 = 21;
  strcpy(&xmmword_27C22A0, "vehicle_cargo_mass_kg");
  byte_27C22CF = 19;
  strcpy(&qword_27C22B8, "vehicle_aux_power_w");
  byte_27C22E7 = 15;
  strcpy(&qword_27C22D0, "dcdc_efficiency");
  strcpy(&qword_27C22E8, "drive_train_efficiency");
  HIBYTE(word_27C22FE) = 22;
  operator new();
}

void sub_10D37B0(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C22FE) < 0)
  {
    sub_21E7A8C();
  }

  sub_21E7A98();
  _Unwind_Resume(a1);
}

void sub_10D3E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  v33 = *a11;
  if (*a11)
  {
    *(v31 + 48) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10D3FC4(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = a4;
  *(result + 20) = a5;
  *(result + 24) = a6;
  *(result + 32) = a7;
  *(result + 40) = a8;
  return result;
}

void sub_10D3FE0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v5 = *a4;
  v6 = a4[1];
  v7 = *(a4 + 8);
  *(a1 + 56) = 0;
  *(a1 + 48) = v7;
  *(a1 + 32) = v6;
  *(a1 + 16) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v9 = *(a4 + 5);
  v8 = *(a4 + 6);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v10 = a4[5];
  *(a1 + 80) = a4[4];
  *(a1 + 96) = v10;
  *(a1 + 112) = xmmword_2266560;
  *(a1 + 128) = -NAN;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  *(a1 + 136) = vnegq_f64(v11);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0x7FFFFFFFFFFFFFFFLL;
  sub_10D7DE0((a1 + 168), 0x400u);
  *(a1 + 224) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 240) = 0u;
  operator new();
}

void sub_10D42EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a16);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  sub_54774(v29);
  sub_21DB4B4(v28 + 168);
  v32 = *v30;
  if (*v30)
  {
    *(v28 + 64) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10D43C0(void *a1, uint64_t *a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return *(v2 + 10);
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_10D44FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10D4538(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = a1 + 56;
  v11 = *(a1 + 56);
  v13 = *a3;
  v14 = a3[1];
  *(a1 + 140) = *(a3 + 28);
  *(a1 + 128) = v14;
  *(a1 + 112) = v13;
  v15 = *(a1 + 136);
  v16 = 1.0;
  LODWORD(v16) = *(a1 + 32);
  v17 = (fmax(v15 / 10000000.0, 1.0) * v16);
  if (*(a1 + 152) >= *(a1 + 36))
  {
    v18 = *(a1 + 36);
  }

  else
  {
    v18 = *(a1 + 152);
  }

  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  if (v11 == *(a1 + 64))
  {
    v20 = 0;
  }

  else
  {
    *&v23 = v15 / 100.0;
    v20 = sub_108E97C(&v23, v12);
  }

  *(a1 + 160) = v20;
  sub_10BE84C(a1 + 344, (v12 + 56), (a1 + 124));
  sub_10D4750(a1, a2, &v23);
  sub_10D49A8(a1, a4, a5, &v23, &__p);
  sub_10D51A0(a1, &__p, a4, a5, v19, v18, a6, v21);
}

void sub_10D471C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, char *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10D5C18(va);
  sub_10D5CC0(va1);
  _Unwind_Resume(a1);
}

void sub_10D4738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10D5CC0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10D4750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void ****a3@<X8>)
{
  sub_10D1AC4(v33, *(a1 + 8), *a1);
  v5 = sub_10E2C7C(a2);
  v6 = (*(v5 + 104) - *(v5 + 96)) >> 2;
  if (v6)
  {
    v7 = 0;
    do
    {
      LODWORD(v28[0]) = v7;
      sub_10E2918(a2, v28, &v29);
      v8 = v31;
      v9 = v32;
      if (v31 != v32)
      {
        v11 = v29;
        v10 = v30;
        do
        {
          v12 = *v11 + 176 * v8;
          if (sub_10DF6A4(v12))
          {
            v13 = sub_10DF6C4(v12);
            v14 = *(v13 + 32);
            v15 = (v14 >> 16) & 0xFFFF0000 | (v14 << 32);
            v16 = (v14 & 0xFF000000000000) == 0;
            v17 = (v15 | (2 * v16)) + 4 * *(v13 + 80);
            v18 = ((v17 << 16) & 0xFFFF00000000 | HIDWORD(v17) | (v16 << 48)) ^ 0x1000000000000;
          }

          else
          {
            v18 = *(sub_10DF708(v12) + 32) & 0xFFFFFFFFFFFFFFLL;
          }

          sub_10D1AC8(v33, v18);
          v8 = *(*v10 + 4 * v8);
        }

        while (v8 != v9);
      }

      ++v7;
    }

    while (v7 != v6);
  }

  sub_E6F038(*a1, v28);
  v19 = *(a1 + 96);
  v20 = *(*a1 + 440);
  v21 = sub_99078(v28);
  if (v19)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  v29 = v21;
  LOBYTE(v30) = 0;
  BYTE1(v30) = v22;
  v23 = 1 << v20;
  if (v20 == 255)
  {
    v23 = 0;
  }

  v31 = v23;
  v24 = *(a1 + 16);
  if (v24 <= *(a1 + 24))
  {
    v25 = *(a1 + 24);
  }

  else
  {
    v25 = *(a1 + 16);
  }

  sub_10D5E64(v33, *(a1 + 40), &v29, a3, v24, v25);
  return sub_360988(&v34);
}

void sub_10D4900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_10D4918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_10D4930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_10D4948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_10D4960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_10D4978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_10D4990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_10D49A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X3>, uint64_t *a5@<X8>)
{
  *&v75 = a2;
  *(&v75 + 1) = a3;
  v6 = a1;
  v73 = sub_3B1D8C(*(a1 + 8));
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v8 = *a4;
  v69 = a4[1];
  if (*a4 != v69)
  {
    v72 = a5;
    v71 = v6;
    do
    {
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      v70 = v8;
      v13 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v12) >> 4);
      if (v13 < *(v6 + 44))
      {
        while (v12 != v11)
        {
          v16 = sub_2ACC94(v73, *(v12 + 52));
          v18 = v17;
          v19 = sub_10D5D28(v6, v12, v75, *(&v75 + 1));
          *v76 = xmmword_2297C00;
          sub_456F78(&v87, v12, v76);
          *__p = v87;
          *v80 = v88;
          v81 = v89;
          v82[0] = v90[0];
          *(v82 + 14) = *(v90 + 14);
          v83 = v91;
          LODWORD(v84) = 0;
          *&v85 = v16;
          DWORD2(v85) = v18;
          v86 = v19;
          v20 = a5[1];
          if (v20 >= a5[2])
          {
            v23 = sub_10D80B4(a5, __p);
          }

          else
          {
            *v20 = 0;
            *(v20 + 96) = -1;
            v21 = v84;
            if (v84 != -1)
            {
              *&v87 = v20;
              off_26754E8[v84]();
              *(v20 + 96) = v21;
            }

            v22 = v85;
            *(v20 + 120) = v86;
            *(v20 + 104) = v22;
            v23 = v20 + 128;
          }

          a5[1] = v23;
          if (v84 != -1)
          {
            (off_26754D8[v84])(&v87, __p);
          }

          v12 += 80;
        }
      }

      else
      {
        v77 = 0;
        v78 = -1;
        v76[0] = 0;
        v76[1] = 0;
        sub_10D8254(v76, v13);
        v15 = *(v70 + 16);
        v14 = *(v70 + 24);
        v74 = v14;
        while (v15 != v14)
        {
          v87 = v75;
          v24 = v15[3];
          v25 = v15[4];
          if (v24 == v25)
          {
            v27 = 0;
            v30 = 1;
            v31 = 1;
          }

          else
          {
            v26 = 0;
            v27 = 0;
            v28 = *v71;
            do
            {
              if (v26 == 2)
              {
                goto LABEL_33;
              }

              if (sub_E6F808(v28, *v24))
              {
                v26 = v24[16];
              }

              else if (v27 != 2)
              {
                sub_E6F058(v28, &v92);
                v29 = v92.n128_u64[0];
                if (v92.n128_u64[0] != v92.n128_u64[1])
                {
                  while (*v29 != *v24)
                  {
                    v29 += 16;
                    if (v29 == v92.n128_u64[1])
                    {
                      goto LABEL_22;
                    }
                  }

                  v27 = v24[16];
                }
              }

LABEL_22:
              v24 += 48;
            }

            while (v24 != v25);
            if (v26)
            {
LABEL_33:
              v31 = 0;
              v30 = v26 != 2;
              goto LABEL_34;
            }

            v31 = 1;
            v30 = 1;
          }

LABEL_34:
          v32 = sub_45AC68(&v87, v15[8]);
          v33 = sub_45AC70(&v87, v15[8]);
          if (v30 && v27 == 2)
          {
            v34 = v31 | 2;
          }

          else
          {
            v34 = v31;
          }

          if (!v32)
          {
            v34 |= 4uLL;
          }

          v35 = 8;
          if (!v33)
          {
            v35 = 0;
          }

          v36 = v35 | v34;
          v78 &= v35 | v34;
          v92 = xmmword_2297C00;
          sub_456F78(&v87, v15, &v92);
          v37 = *(&v87 + 1);
          *__p = v87;
          v38 = v88;
          *v80 = v88;
          v39 = v89;
          v81 = v89;
          v82[0] = v90[0];
          *(v82 + 14) = *(v90 + 14);
          v83 = v91;
          v84 = v36;
          LODWORD(v85) = 0x7FFFFFFF;
          v40 = v76[1];
          if (v76[1] >= v77)
          {
            v43 = v76[0];
            v44 = v76[1] - v76[0];
            v45 = 0x6DB6DB6DB6DB6DB7 * ((v76[1] - v76[0]) >> 4) + 1;
            if (v45 > 0x249249249249249)
            {
              sub_1794();
            }

            if (0xDB6DB6DB6DB6DB6ELL * ((v77 - v76[0]) >> 4) > v45)
            {
              v45 = 0xDB6DB6DB6DB6DB6ELL * ((v77 - v76[0]) >> 4);
            }

            if ((0x6DB6DB6DB6DB6DB7 * ((v77 - v76[0]) >> 4)) >= 0x124924924924924)
            {
              v46 = 0x249249249249249;
            }

            else
            {
              v46 = v45;
            }

            if (v46)
            {
              if (v46 <= 0x249249249249249)
              {
                operator new();
              }

              sub_1808();
            }

            v47 = 16 * ((v76[1] - v76[0]) >> 4);
            *v47 = v87;
            *(v47 + 8) = v37;
            __p[1] = 0;
            v80[0] = 0;
            __p[0] = 0;
            *(v47 + 16) = v38;
            *(v47 + 32) = v39;
            v81 = 0uLL;
            v80[1] = 0;
            *(v47 + 48) = v82[0];
            *(v47 + 62) = *(v82 + 14);
            *(v47 + 80) = v83;
            *(v47 + 104) = v85;
            v48 = (v47 - v44);
            *(v47 + 96) = v84;
            a5 = v72;
            if (v43 != v40)
            {
              v49 = v43;
              v50 = v48;
              do
              {
                *v50 = 0;
                *(v50 + 1) = 0;
                *(v50 + 2) = 0;
                *v50 = *v49;
                *(v50 + 2) = *(v49 + 2);
                *v49 = 0;
                *(v49 + 1) = 0;
                *(v49 + 2) = 0;
                *(v50 + 3) = 0;
                *(v50 + 4) = 0;
                *(v50 + 5) = 0;
                *(v50 + 24) = *(v49 + 24);
                *(v50 + 5) = *(v49 + 5);
                *(v49 + 3) = 0;
                *(v49 + 4) = 0;
                *(v49 + 5) = 0;
                v51 = *(v49 + 3);
                *(v50 + 62) = *(v49 + 62);
                *(v50 + 3) = v51;
                *(v50 + 5) = *(v49 + 5);
                v52 = *(v49 + 12);
                *(v50 + 26) = *(v49 + 26);
                *(v50 + 12) = v52;
                v49 += 112;
                v50 += 112;
              }

              while (v49 != v40);
              do
              {
                v54 = *(v43 + 3);
                if (v54)
                {
                  v55 = *(v43 + 4);
                  v56 = *(v43 + 3);
                  if (v55 != v54)
                  {
                    do
                    {
                      if (*(v55 - 1) < 0)
                      {
                        operator delete(*(v55 - 24));
                      }

                      v55 -= 48;
                    }

                    while (v55 != v54);
                    v56 = *(v43 + 3);
                  }

                  *(v43 + 4) = v54;
                  operator delete(v56);
                }

                v57 = *v43;
                if (*v43)
                {
                  v58 = *(v43 + 1);
                  v53 = *v43;
                  if (v58 != v57)
                  {
                    do
                    {
                      v59 = *(v58 - 3);
                      if (v59)
                      {
                        *(v58 - 2) = v59;
                        operator delete(v59);
                      }

                      v58 -= 48;
                    }

                    while (v58 != v57);
                    v53 = *v43;
                  }

                  *(v43 + 1) = v57;
                  operator delete(v53);
                }

                v43 += 112;
              }

              while (v43 != v40);
            }

            v60 = v76[0];
            v76[0] = v48;
            v76[1] = (v47 + 112);
            v77 = 0;
            if (v60)
            {
              operator delete(v60);
            }

            v61 = v80[1];
            v76[1] = (v47 + 112);
            if (v80[1])
            {
              for (i = v81; i != v61; i -= 6)
              {
                if (*(i - 1) < 0)
                {
                  operator delete(*(i - 3));
                }
              }

              operator delete(v61);
            }
          }

          else
          {
            *v76[1] = v87;
            *(v40 + 1) = v37;
            *(v40 + 1) = v38;
            __p[1] = 0;
            v80[0] = 0;
            __p[0] = 0;
            *(v40 + 2) = v39;
            v81 = 0uLL;
            v80[1] = 0;
            v41 = *(v82 + 14);
            *(v40 + 3) = v82[0];
            *(v40 + 62) = v41;
            *(v40 + 5) = v83;
            v42 = v85;
            *(v40 + 12) = v84;
            *(v40 + 26) = v42;
            v76[1] = v40 + 112;
            a5 = v72;
          }

          v63 = __p[0];
          if (__p[0])
          {
            for (j = __p[1]; j != v63; j -= 48)
            {
              v65 = *(j - 3);
              if (v65)
              {
                *(j - 2) = v65;
                operator delete(v65);
              }
            }

            operator delete(v63);
          }

          v15 += 10;
          v14 = v74;
        }

        v66 = a5[1];
        if (v66 < a5[2])
        {
          v9 = v78;
          *(v66 + 8) = 0;
          *(v66 + 16) = 0;
          *v66 = 0;
          *v66 = *v76;
          *(v66 + 16) = v77;
          *(v66 + 96) = 1;
          v6 = v71;
          v10 = *v70;
          *(v66 + 112) = *(v70 + 8);
          *(v66 + 104) = v10;
          *(v66 + 120) = v9;
          a5[1] = v66 + 128;
        }

        else
        {
          v67 = sub_10D77C8(a5, v76, v70, &v78);
          v68 = v76[0];
          a5[1] = v67;
          v6 = v71;
          if (v68)
          {
            sub_10D7BD8(v76, v68);
            operator delete(v76[0]);
          }
        }
      }

      v8 = v70 + 40;
    }

    while ((v70 + 40) != v69);
  }
}

void sub_10D5110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_10D6864(va);
  sub_10D5C18(v20);
  _Unwind_Resume(a1);
}

void sub_10D51A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t *a7, double a8)
{
  memset(v10, 0, 24);
  v8 = a2[1];
  if (v8 != *a2)
  {
    if (((v8 - *a2) >> 7) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v10[3] = v10;
  sub_54318(v10, *(a1 + 160), 0, &v9, *&a8);
}

void sub_10D5BB4(_Unwind_Exception *a1)
{
  v2 = *(v1 - 120);
  if (v2)
  {
    *(v1 - 112) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

char **sub_10D5C18(char **a1)
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
        v5 = v3 - 128;
        v6 = *(v3 - 8);
        if (v6 != -1)
        {
          (off_26754D8[v6])(&v8, v3 - 128);
        }

        *(v3 - 8) = -1;
        v3 -= 128;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void ****sub_10D5CC0(void ****a1)
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
        v5 = v3 - 5;
        sub_10D76CC(v3 - 3);
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_10D5D28(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a3;
  v19[1] = a4;
  v5 = a2[3];
  v6 = a2[4];
  if (v5 == v6)
  {
    v8 = 0;
    v11 = 1;
    v12 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = *a1;
    do
    {
      if (v7 == 2)
      {
        goto LABEL_15;
      }

      if (sub_E6F808(v9, *v5))
      {
        v7 = v5[16];
      }

      else if (v8 != 2)
      {
        sub_E6F058(v9, &v17);
        v10 = v17;
        if (v17 != v18)
        {
          while (*v10 != *v5)
          {
            v10 += 16;
            if (v10 == v18)
            {
              goto LABEL_4;
            }
          }

          v8 = v5[16];
        }
      }

LABEL_4:
      v5 += 48;
    }

    while (v5 != v6);
    if (v7)
    {
LABEL_15:
      v12 = 0;
      v11 = v7 != 2;
      goto LABEL_16;
    }

    v12 = 1;
    v11 = 1;
  }

LABEL_16:
  if (v11 && v8 == 2)
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  if (!sub_45AC68(v19, a2[8]))
  {
    v13 |= 4uLL;
  }

  v14 = sub_45AC70(v19, a2[8]);
  v15 = 8;
  if (!v14)
  {
    v15 = 0;
  }

  return v13 | v15;
}

uint64_t sub_10D5E64@<X0>(uint64_t a1@<X0>, unsigned int a2@<W3>, uint64_t a3@<X4>, void ****a4@<X8>, uint64_t a5@<X1>, uint64_t a6@<X2>)
{
  sub_10D1D30(a1, v165, a5, a6);
  if (v181 + v180 + v179 + v178 + v177 + v176 + v175 + v174 + v173 + v172 + v171 + v170 + v169 + v168 + v165[2] + v167)
  {
    v93 = a4;
    v101 = &unk_2290750;
    v102 = 0;
    v103 = 0u;
    v104 = 0;
    v105 = &unk_2290750;
    v106 = 0;
    v107 = 0u;
    v108 = 0;
    v109 = &unk_2290750;
    v110 = 0;
    v111 = 0u;
    v112 = 0;
    v113 = &unk_2290750;
    v114 = 0u;
    v116 = 0;
    v117 = &unk_2290750;
    v115 = 0;
    v119 = 0;
    v118 = 0u;
    v120 = 0;
    v121 = &unk_2290750;
    v124 = 0;
    v125 = &unk_2290750;
    v123 = 0;
    v122 = 0u;
    v126 = 0u;
    v127 = 0;
    v128 = 0;
    v129 = &unk_2290750;
    v130 = 0u;
    v132 = 0;
    v133 = &unk_2290750;
    v131 = 0;
    v134 = 0u;
    v135 = 0;
    v136 = 0;
    v137 = &unk_2290750;
    v138 = 0u;
    v140 = 0;
    v139 = 0;
    v144 = 0;
    v142 = 0u;
    v141 = &unk_2290750;
    v143 = 0;
    v145 = &unk_2290750;
    v148 = 0;
    v146 = 0u;
    v147 = 0;
    v149 = &unk_2290750;
    v152 = 0;
    v150 = 0u;
    v151 = 0;
    v153 = &unk_2290750;
    v156 = 0;
    v154 = 0u;
    v155 = 0;
    v157 = &unk_2290750;
    v160 = 0;
    v158 = 0u;
    v159 = 0;
    v161 = &unk_2290750;
    v164 = 0;
    v162 = 0u;
    v163 = 0;
    v94 = a1;
    v11 = *(a1 + 808);
    if (v11 >= a2)
    {
      LOBYTE(v11) = a2;
    }

    v12 = v165[1];
    v13 = v165[0];
    if (*v165[0] <= -2)
    {
      do
      {
        v14 = (__clz(__rbit64(((*v13 >> 7) & ~*v13 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v13 = (v13 + v14);
        v12 += v14;
      }

      while (*v13 < -1);
    }

    v15 = (v165[0] + v166);
    if (v13 == (v165[0] + v166))
    {
      v83 = 48;
      v84 = v165;
      while (1)
      {
        v97 = v83;
        v85 = v165 + v83;
        v86 = *(v165 + v83);
        v12 = v84[7];
        v13 = v86;
        if (*v86 <= -2)
        {
          do
          {
            v87 = (__clz(__rbit64(((*v13 >> 7) & ~*v13 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
            v13 = (v13 + v87);
            v12 += v87;
          }

          while (*v13 < -1);
        }

        v15 = &v86[v84[9]];
        if (v13 != v15)
        {
          break;
        }

        v83 = v97 + 48;
        v84 = v85;
        if (v97 == 720)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v97 = 0;
    }

    v95 = 2 * v11;
    while (1)
    {
      do
      {
        LODWORD(v99) = *v12 >> ((sub_57A90(*v12) - v95) & 0xFE);
        sub_F9AFE4(&v101, &v99, &v182);
        v16 = v182.n128_u64[0];
        if (v183 == 1)
        {
          v17 = *(v182.n128_u64[0] + 8) + 32 * v182.n128_u64[1];
          *v17 = v99;
          *(v17 + 16) = 0;
          *(v17 + 24) = 0;
          *(v17 + 8) = 0;
        }

        v18 = (*(v16 + 8) + 32 * v182.n128_u64[1]);
        v20 = v18[2];
        v19 = v18[3];
        if (v20 >= v19)
        {
          v22 = v18[1];
          v23 = v20 - v22;
          v24 = (v20 - v22) >> 2;
          v25 = v24 + 1;
          if ((v24 + 1) >> 62)
          {
            sub_1794();
          }

          v26 = v19 - v22;
          if (v26 >> 1 > v25)
          {
            v25 = v26 >> 1;
          }

          if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v27 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v27 = v25;
          }

          if (v27)
          {
            if (!(v27 >> 62))
            {
              operator new();
            }

            sub_1808();
          }

          v28 = (v20 - v22) >> 2;
          v29 = (4 * v24);
          v30 = (4 * v24 - 4 * v28);
          *v29 = *v12;
          v21 = v29 + 1;
          memcpy(v30, v22, v23);
          v18[1] = v30;
          v18[2] = v21;
          v18[3] = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v20 = *v12;
          v21 = v20 + 1;
        }

        v18[2] = v21;
        v31 = *(v13 + 1);
        v13 = (v13 + 1);
        ++v12;
        if (v31 <= -2)
        {
          do
          {
            v32 = (__clz(__rbit64(((*v13 >> 7) & ~*v13 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
            v13 = (v13 + v32);
            v12 += v32;
          }

          while (*v13 < -1);
        }
      }

      while (v13 != v15);
      if (v97 == 720)
      {
        break;
      }

      v33 = v165 + v97;
      v34 = v97 + 48;
      while (1)
      {
        v97 = v34;
        v35 = (v165 + v34);
        v36 = *(v165 + v34);
        v12 = *(v33 + 7);
        v13 = *v35;
        if (**v35 <= -2)
        {
          do
          {
            v37 = (__clz(__rbit64(((*v13 >> 7) & ~*v13 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
            v13 = (v13 + v37);
            v12 += v37;
          }

          while (*v13 < -1);
        }

        v15 = (v36 + *(v33 + 9));
        if (v13 != v15)
        {
          break;
        }

        v34 = v97 + 48;
        v33 = v35;
        if (v97 == 720)
        {
          goto LABEL_36;
        }
      }
    }

LABEL_36:
    *v93 = 0;
    v93[1] = 0;
    v93[2] = 0;
    v38 = v102;
    v39 = v101;
    if (*v101 <= -2)
    {
      do
      {
        v40 = (__clz(__rbit64(((*v39 >> 7) & ~*v39 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v39 += v40;
        v38 += 32 * v40;
      }

      while (*v39 < -1);
    }

    v41 = v165;
    v42 = &v101[*(&v103 + 1)];
    if (v39 == &v101[*(&v103 + 1)])
    {
      v88 = 48;
      v89 = &v101;
      while (1)
      {
        v98 = v88;
        v90 = (&v101 + v88);
        v91 = *(&v101 + v88);
        v38 = v89[7];
        v39 = *v90;
        if (**v90 <= -2)
        {
          do
          {
            v92 = (__clz(__rbit64(((*v39 >> 7) & ~*v39 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
            v39 += v92;
            v38 += 32 * v92;
          }

          while (*v39 < -1);
        }

        v42 = &v89[9][v91];
        if (v39 != v42)
        {
          break;
        }

        v88 = v98 + 48;
        v89 = v90;
        if (v98 == 720)
        {
          goto LABEL_90;
        }
      }
    }

    else
    {
      v98 = 0;
    }

    while (1)
    {
      v96 = v42;
      do
      {
        v44 = *(v38 + 1);
        v45 = *(v38 + 2);
        v46 = *(v94 + 24);
        v183 = 0;
        v182 = 0uLL;
        if (v44 != v45)
        {
          do
          {
            sub_2AC43C(v46, *v44++, a3, &v182);
          }

          while (v44 != v45);
          v47 = v182.n128_u64[0];
          if (v182.n128_u64[0] != v182.n128_u64[1])
          {
            v48 = sub_57A90(*v38);
            v49 = sub_57A90(*v38);
            v50 = *v38 & ~(-1 << (v49 & 0xFE));
            v51 = sub_581D8(v50);
            v52 = sub_581D8(v50 >> 1);
            v53 = 0x7FFFFFFFu >> (v48 >> 1);
            v54 = 1 << -(v49 >> 1);
            if (v49 < 2)
            {
              v54 = -2;
            }

            v55 = v53 + v51 * v54;
            LODWORD(v56) = v53 + v52 * v54;
            if (v56 >= 0xFFFFFFFE)
            {
              v56 = 4294967294;
            }

            else
            {
              v56 = v56;
            }

            v99 = v55 | (v56 << 32);
            v100 = 0x7FFFFFFF;
            v57 = v93[1];
            if (v57 >= v93[2])
            {
              v58 = sub_10D7EB8(v93, &v99, &v182);
            }

            else
            {
              sub_10D155C(v93[1], &v99, &v182);
              v58 = v57 + 5;
            }

            v93[1] = v58;
            v47 = v182.n128_u64[0];
          }

          if (v47)
          {
            v59 = v182.n128_u64[1];
            v60 = v47;
            if (v182.n128_u64[1] != v47)
            {
              do
              {
                v62 = *(v59 - 56);
                if (v62)
                {
                  v63 = *(v59 - 48);
                  v64 = *(v59 - 56);
                  if (v63 != v62)
                  {
                    do
                    {
                      if (*(v63 - 1) < 0)
                      {
                        operator delete(*(v63 - 24));
                      }

                      v63 -= 48;
                    }

                    while (v63 != v62);
                    v64 = *(v59 - 56);
                  }

                  *(v59 - 48) = v62;
                  operator delete(v64);
                }

                v65 = (v59 - 80);
                v66 = *(v59 - 80);
                if (v66)
                {
                  v67 = *(v59 - 72);
                  v61 = *(v59 - 80);
                  if (v67 != v66)
                  {
                    do
                    {
                      v68 = *(v67 - 24);
                      if (v68)
                      {
                        *(v67 - 16) = v68;
                        operator delete(v68);
                      }

                      v67 -= 48;
                    }

                    while (v67 != v66);
                    v61 = *v65;
                  }

                  *(v59 - 72) = v66;
                  operator delete(v61);
                }

                v59 -= 80;
              }

              while (v65 != v47);
              v60 = v182.n128_u64[0];
            }

            v182.n128_u64[1] = v47;
            operator delete(v60);
          }
        }

        v69 = *++v39;
        v38 += 32;
        if (v69 > -2)
        {
          v43 = v96;
        }

        else
        {
          v43 = v96;
          do
          {
            v70 = (__clz(__rbit64(((*v39 >> 7) & ~*v39 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
            v39 += v70;
            v38 += 32 * v70;
          }

          while (*v39 < -1);
        }
      }

      while (v39 != v43);
      if (v98 == 720)
      {
        break;
      }

      v71 = (&v101 + v98);
      v72 = v98 + 48;
      while (1)
      {
        v98 = v72;
        v73 = (&v101 + v72);
        v74 = *(&v101 + v72);
        v38 = v71[7];
        v39 = *v73;
        if (**v73 <= -2)
        {
          do
          {
            v75 = (__clz(__rbit64(((*v39 >> 7) & ~*v39 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
            v39 += v75;
            v38 += 32 * v75;
          }

          while (*v39 < -1);
        }

        v42 = &v71[9][v74];
        if (v39 != v42)
        {
          break;
        }

        v72 = v98 + 48;
        v71 = v73;
        if (v98 == 720)
        {
          goto LABEL_90;
        }
      }
    }

    do
    {
LABEL_90:
      v76 = (v41 - 6);
      v77 = *(v41 - 3);
      if (v77)
      {
        v78 = 0;
        v79 = 0;
        v80 = v41 - 5;
        do
        {
          if (((*v76)[v79] & 0x80000000) == 0)
          {
            v81 = *v80 + v78;
            v82 = *(v81 + 8);
            if (v82)
            {
              *(v81 + 16) = v82;
              operator delete(v82);
              v77 = *(v41 - 3);
            }
          }

          ++v79;
          v78 += 32;
        }

        while (v79 != v77);
        operator delete(*(v41 - 6));
        *(v41 - 6) = &unk_2290750;
        *(v41 - 1) = 0;
        *(v41 - 4) = 0;
        *(v41 - 3) = 0;
        *v80 = 0;
      }

      v41 -= 6;
    }

    while (v76 != &v101);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return sub_360988(v165);
}

void sub_10D6804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  *(a10 + 8) = v15;
  sub_10D76CC((v16 - 120));
  sub_10D5CC0(a10);
  sub_4821F8(va);
  sub_360988(&STACK[0x338]);
  _Unwind_Resume(a1);
}

void **sub_10D6864(void **a1)
{
  if (*a1)
  {
    sub_10D7BD8(a1, *a1);
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10D68A0(uint64_t a1, void *a2, unsigned int a3)
{
  v3 = a3 + 1;
  v4 = *(a1 + 272);
  if (v3 >= (*(a1 + 280) - v4) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v21 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v6 = a3;
  v7 = *(a1 + 296);
  v8 = *(v4 + 4 * a3);
  v9 = *(v4 + 4 * v3);
  v10 = *(a1 + 160);
  v11 = *a2 + (v6 << 7);
  v12 = *(v11 + 96);
  if (v12)
  {
    if (v12 != 1)
    {
LABEL_16:
      sub_5AF20();
    }

    v13 = -1227133513 * ((*(v11 + 8) - *v11) >> 4);
    v12 = v13 - 1;
    v14 = *(a1 + 40);
    if (v14)
    {
      sub_21E7B68(v14, v13, v10, &v22);
      v10 = v22;
    }
  }

  if (16 * v8 != 16 * v9)
  {
    v16 = (16 * v8 + v7);
    do
    {
      v18 = *a2 + (*v16 << 7);
      v19 = *(v18 + 96);
      if (v19)
      {
        if (v19 != 1)
        {
          goto LABEL_16;
        }

        v17 = -1227133513 * ((*(v18 + 8) - *v18) >> 4);
      }

      else
      {
        v17 = 1;
      }

      v12 += v17;
      if (*(v16 + 1) < v10)
      {
        v10 = *(v16 + 1);
      }

      v16 += 4;
    }

    while (v16 != (16 * v9 + v7));
  }

  return v12;
}

uint64_t sub_10D69FC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v23[0] = a3;
  v23[1] = a4;
  v5 = *(a2 + 52);
  if (a3[1] == v5)
  {
    return 0x7FFFFFFFLL;
  }

  if (*a3 == v5)
  {
    return 0x80000000;
  }

  v8 = sub_45AC58(v23);
  if (v5 == v8 && HIDWORD(v5) == HIDWORD(v8))
  {
    return 0x80000000;
  }

  result = sub_10BE960(a1 + 344, a2, (a2 + 10), v23);
  if (*(a1 + 88) > 0.0)
  {
    v10 = result;
    v11 = sub_3B1D8C(*(a1 + 8));
    v12 = sub_2ACC94(v11, v5);
    v13 = *(a1 + 116);
    v14 = exp(((v12 >> 33) + (v13 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
    v15 = atan((v14 + -1.0 / v14) * 0.5);
    v16 = cos(v15 * 57.2957795 / 180.0 * 3.14159265);
    v17 = *(a1 + 112) - v12;
    v18 = sqrt(((v13 - HIDWORD(v12)) * (v13 - HIDWORD(v12)) + v17 * v17)) / 100.0 * 100.0 * (v16 * 0.00932288077) * 100.0;
    if (v18 >= 0.0)
    {
      v19 = v18;
      if (v18 >= 4.50359963e15)
      {
        goto LABEL_17;
      }

      v20 = (v18 + v18) + 1;
    }

    else
    {
      v19 = v18;
      if (v18 <= -4.50359963e15)
      {
        goto LABEL_17;
      }

      v20 = (v18 + v18) - 1 + (((v18 + v18) - 1) >> 63);
    }

    v19 = (v20 >> 1);
LABEL_17:
    if (v19 >= 9.22337204e18)
    {
      v22 = 0x7FFFFFFFFFFFFFFELL;
      return (v10 + (((*(a1 + 160) - (*(a1 + 144) + v22)) & ~((*(a1 + 160) - (*(a1 + 144) + v22)) >> 63)) / -100.0 * *(a1 + 88)));
    }

    if (v18 >= 0.0)
    {
      if (v18 < 4.50359963e15)
      {
        v21 = (v18 + v18) + 1;
        goto LABEL_24;
      }
    }

    else if (v18 > -4.50359963e15)
    {
      v21 = (v18 + v18) - 1 + (((v18 + v18) - 1) >> 63);
LABEL_24:
      v18 = (v21 >> 1);
    }

    v22 = v18;
    return (v10 + (((*(a1 + 160) - (*(a1 + 144) + v22)) & ~((*(a1 + 160) - (*(a1 + 144) + v22)) >> 63)) / -100.0 * *(a1 + 88)));
  }

  return result;
}

uint64_t sub_10D6CB4(uint64_t *a1, uint64_t a2, void *a3, unsigned int a4)
{
  v8 = sub_3B1D8C(a1[1]);
  v9 = sub_2ACC94(v8, *(a2 + 52));
  v10 = a1[20];
  v39 = a4;
  v41 = a3;
  v11 = *a3 + (a4 << 7);
  v12 = *(v11 + 96);
  v37 = v9;
  v38 = a4;
  if (v12)
  {
    if (v12 != 1)
    {
      goto LABEL_45;
    }

    v13 = *v11;
    v14 = *(v11 + 8);
    if (*v11 != v14)
    {
      v12 = 0;
      v15 = HIDWORD(v9);
      v16 = v9;
      while (*(v13 + 52) == *(a2 + 52) && *(v13 + 56) == *(a2 + 56))
      {
LABEL_10:
        v13 += 112;
        if (v13 == v14)
        {
          goto LABEL_19;
        }
      }

      v18 = sub_2ACC94(v8, *(v13 + 52));
      v19 = sqrt(((v16 - v18) * (v16 - v18) + (v15 - HIDWORD(v18)) * (v15 - HIDWORD(v18)))) / 100.0 * 100.0;
      if (v19 >= 4.50359963e15)
      {
        if (v19 >= 9.22337204e18)
        {
LABEL_17:
          v17 = 0x7FFFFFFFFFFFFFFELL;
          goto LABEL_6;
        }
      }

      else
      {
        v19 = (((v19 + v19) + 1) >> 1);
        if (v19 >= 9.22337204e18)
        {
          goto LABEL_17;
        }
      }

      v17 = v19;
LABEL_6:
      if (v17 < v10)
      {
        v10 = v17;
      }

      if (v17 < a1[13])
      {
        ++v12;
      }

      goto LABEL_10;
    }

    v12 = 0;
  }

LABEL_19:
  v20 = v39 + 1;
  v21 = a1[34];
  if (v20 >= (a1[35] - v21) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v36 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v22 = 16 * *(v21 + 4 * v38);
  v23 = 16 * *(v21 + 4 * v20);
  if (v22 != v23)
  {
    v25 = a1[37];
    v40 = (v23 + v25);
    v26 = (v22 + v25);
    while (1)
    {
      v28 = *v41 + (*v26 << 7);
      v29 = *(v28 + 96);
      if (v29)
      {
        break;
      }

      v27 = *(v26 + 1);
      if (v27 < v10)
      {
        v10 = *(v26 + 1);
      }

      if (v27 < a1[13])
      {
        ++v12;
      }

LABEL_27:
      v26 += 4;
      if (v26 == v40)
      {
        return v12;
      }
    }

    if (v29 == 1)
    {
      v31 = *v28;
      v30 = *(v28 + 8);
      while (1)
      {
        if (v31 == v30)
        {
          goto LABEL_27;
        }

        if (*(v31 + 52) != *(a2 + 52) || *(v31 + 56) != *(a2 + 56))
        {
          break;
        }

LABEL_36:
        v31 += 112;
      }

      v33 = sub_2ACC94(v8, *(v31 + 52));
      v34 = sqrt(((v37 - v33) * (v37 - v33) + (HIDWORD(v37) - HIDWORD(v33)) * (HIDWORD(v37) - HIDWORD(v33)))) / 100.0 * 100.0;
      if (v34 >= 4.50359963e15)
      {
        if (v34 >= 9.22337204e18)
        {
LABEL_44:
          v32 = 0x7FFFFFFFFFFFFFFELL;
          goto LABEL_32;
        }
      }

      else
      {
        v34 = (((v34 + v34) + 1) >> 1);
        if (v34 >= 9.22337204e18)
        {
          goto LABEL_44;
        }
      }

      v32 = v34;
LABEL_32:
      if (v32 < v10)
      {
        v10 = v32;
      }

      if (v32 < a1[13])
      {
        ++v12;
      }

      goto LABEL_36;
    }

LABEL_45:
    sub_5AF20();
  }

  return v12;
}

void sub_10D6FD4(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  if (*(a1 + 80) > 0.0)
  {
    v4 = a3 + 1;
    v5 = *(a1 + 272);
    if (v4 < (*(a1 + 280) - v5) >> 2)
    {
      v6 = *(a1 + 296);
      v7 = v6 + 16 * *(v5 + 4 * v4);
      v10 = v6 + 16 * *(v5 + 4 * a3);
      v11 = v7;
      sub_10DA950();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    v9 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }
}

void sub_10D74C4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (v26)
  {
    operator delete(v26);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

void sub_10D750C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_334D18(&a15);
  sub_334D18(&a23);
  sub_3355FC(&a31);
  _Unwind_Resume(a1);
}

uint64_t sub_10D7530(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 != -1)
  {
    (off_26754D8[v2])(&v4, a1);
  }

  *(a1 + 96) = -1;
  return a1;
}

void sub_10D758C(uint64_t a1, char **a2)
{
  v3 = a2[3];
  if (v3)
  {
    v4 = a2[4];
    v5 = a2[3];
    if (v4 != v3)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 6;
      }

      while (v4 != v3);
      v5 = a2[3];
    }

    a2[4] = v3;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = a2[1];
    v8 = *a2;
    if (v7 == v6)
    {
      a2[1] = v6;
    }

    else
    {
      do
      {
        v9 = *(v7 - 3);
        if (v9)
        {
          *(v7 - 2) = v9;
          operator delete(v9);
        }

        v7 -= 48;
      }

      while (v7 != v6);
      v8 = *a2;
      a2[1] = v6;
    }

    operator delete(v8);
  }
}

void sub_10D7680(uint64_t a1, void ***a2)
{
  if (*a2)
  {
    sub_10D7BD8(a2, *a2);
    v3 = *a2;

    operator delete(v3);
  }
}

void ***sub_10D76CC(void ***a1)
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
        v6 = *(v3 - 7);
        if (v6)
        {
          v7 = *(v3 - 6);
          v8 = *(v3 - 7);
          if (v7 != v6)
          {
            do
            {
              if (*(v7 - 1) < 0)
              {
                operator delete(*(v7 - 3));
              }

              v7 -= 6;
            }

            while (v7 != v6);
            v8 = *(v3 - 7);
          }

          *(v3 - 6) = v6;
          operator delete(v8);
        }

        v9 = v3 - 10;
        v10 = *(v3 - 10);
        if (v10)
        {
          v11 = *(v3 - 9);
          v5 = *(v3 - 10);
          if (v11 != v10)
          {
            do
            {
              v12 = *(v11 - 3);
              if (v12)
              {
                *(v11 - 2) = v12;
                operator delete(v12);
              }

              v11 -= 48;
            }

            while (v11 != v10);
            v5 = *v9;
          }

          *(v3 - 9) = v10;
          operator delete(v5);
        }

        v3 -= 10;
      }

      while (v9 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_10D77C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = (a1[1] - *a1) >> 7;
  v5 = v4 + 1;
  if ((v4 + 1) >> 57)
  {
    sub_1794();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 6 > v5)
  {
    v5 = v7 >> 6;
  }

  if (v7 >= 0x7FFFFFFFFFFFFF80)
  {
    v8 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  v21 = a1;
  if (v8)
  {
    if (!(v8 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v9 = v4 << 7;
  __p = 0;
  v18 = v9;
  v10 = *a4;
  *v9 = *a2;
  *(v9 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v9 + 96) = 1;
  *(v9 + 104) = *a3;
  *(v9 + 112) = *(a3 + 8);
  *(v9 + 120) = v10;
  v19 = (v4 << 7) + 128;
  v20 = 0;
  sub_10D7958(a1, &__p);
  v11 = a1[1];
  v12 = v18;
  v13 = v19;
  if (v19 != v18)
  {
    do
    {
      v14 = v13 - 128;
      v19 = v13 - 128;
      v15 = *(v13 - 32);
      if (v15 != -1)
      {
        (off_26754D8[v15])(&v22);
        v14 = v19;
      }

      *(v13 - 32) = -1;
      v13 = v14;
    }

    while (v14 != v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

uint64_t *sub_10D7958(uint64_t *result, void *a2)
{
  v2 = a2;
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = a2[1] + *result - v5;
  if (v5 != *result)
  {
    v7 = 0;
    do
    {
      v9 = v6 + v7;
      v10 = v4 + v7;
      *v9 = 0;
      *(v9 + 96) = -1;
      v11 = *(v4 + v7 + 96);
      if (v11 != -1)
      {
        v17 = v6 + v7;
        result = (off_26754E8[v11])(&v17, v4 + v7);
        *(v9 + 96) = v11;
      }

      v8 = *(v10 + 104);
      *(v9 + 120) = *(v10 + 120);
      *(v9 + 104) = v8;
      v7 += 128;
    }

    while (v4 + v7 != v5);
    v2 = a2;
    do
    {
      v12 = *(v4 + 96);
      if (v12 != -1)
      {
        result = (off_26754D8[v12])(&v18, v4);
      }

      *(v4 + 96) = -1;
      v4 += 128;
    }

    while (v4 != v5);
  }

  v2[1] = v6;
  v13 = *v3;
  *v3 = v6;
  v3[1] = v13;
  v2[1] = v13;
  v14 = v3[1];
  v3[1] = v2[2];
  v2[2] = v14;
  v15 = v3[2];
  v3[2] = v2[3];
  v2[3] = v15;
  *v2 = v2[1];
  return result;
}

uint64_t sub_10D7AB0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 128;
      *(a1 + 16) = v3 - 128;
      v5 = *(v3 - 32);
      if (v5 != -1)
      {
        (off_26754D8[v5])(&v7);
        v4 = *(a1 + 16);
      }

      *(v3 - 32) = -1;
      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_10D7B50(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = *a2;
  *(v2 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v3 = *(a2 + 48);
  *(v2 + 62) = *(a2 + 62);
  *(v2 + 48) = v3;
  result = *(a2 + 80);
  *(v2 + 80) = result;
  return result;
}

__n128 sub_10D7BB0(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *a2 = 0uLL;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_10D7BD8(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      v6 = *(v4 - 11);
      if (v6)
      {
        v7 = *(v4 - 10);
        v8 = *(v4 - 11);
        if (v7 != v6)
        {
          do
          {
            if (*(v7 - 1) < 0)
            {
              operator delete(*(v7 - 3));
            }

            v7 -= 6;
          }

          while (v7 != v6);
          v8 = *(v4 - 11);
        }

        *(v4 - 10) = v6;
        operator delete(v8);
      }

      v9 = v4 - 14;
      v10 = *(v4 - 14);
      if (v10)
      {
        v11 = *(v4 - 13);
        v5 = *(v4 - 14);
        if (v11 != v10)
        {
          do
          {
            v12 = *(v11 - 3);
            if (v12)
            {
              *(v11 - 2) = v12;
              operator delete(v12);
            }

            v11 -= 48;
          }

          while (v11 != v10);
          v5 = *v9;
        }

        *(v4 - 13) = v10;
        operator delete(v5);
      }

      v4 -= 14;
    }

    while (v9 != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t sub_10D7CBC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = 0;
  *a1 = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v6 = *(a2 + 5);
  v5 = *(a2 + 6);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_10D7DAC(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

size_t *sub_10D7DE0(size_t *a1, unsigned int a2)
{
  *(a1 + 12) = 0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  sub_428E0(a1 + 3, a2);
  if (a1[2] - *a1 <= 0x3F7)
  {
    operator new();
  }

  return a1;
}

void sub_10D7E94(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_21E0CA4(v1);
  _Unwind_Resume(a1);
}

void ***sub_10D7EB8(void ****a1, uint64_t *a2, __n128 *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * (a1[1] - *a1);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * (a1[2] - *a1) > v4)
  {
    v4 = 0x999999999999999ALL * (a1[2] - *a1);
  }

  if (0xCCCCCCCCCCCCCCCDLL * (a1[2] - *a1) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * (a1[1] - *a1);
  sub_10D155C(v15, a2, a3);
  v7 = (40 * v3 + 40);
  v8 = *a1;
  v9 = a1[1];
  v10 = (v15 + *a1 - v9);
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = (v15 + *a1 - v9);
    do
    {
      v13 = *v11;
      *(v12 + 2) = *(v11 + 2);
      *v12 = v13;
      *(v12 + 3) = 0;
      *(v12 + 4) = 0;
      *(v12 + 2) = 0;
      *(v12 + 1) = *(v11 + 1);
      *(v12 + 4) = v11[4];
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = 0;
      v11 += 5;
      v12 += 40;
    }

    while (v11 != v9);
    do
    {
      sub_10D76CC(v8 + 2);
      v8 += 5;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_10D8048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10D805C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10D805C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_10D76CC((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10D80B4(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    if (!(v7 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = v2 << 7;
  __p = 0;
  v17 = v8;
  v18 = v8;
  v19 = 0;
  *v8 = 0;
  *(v8 + 96) = -1;
  v9 = *(a2 + 96);
  if (v9 != -1)
  {
    v21 = v8;
    (off_26754E8[v9])(&v21, a2);
    *(v8 + 96) = v9;
  }

  *(v8 + 104) = *(a2 + 104);
  *(v8 + 120) = *(a2 + 120);
  v18 = v8 + 128;
  sub_10D7958(a1, &__p);
  v10 = a1[1];
  v11 = v17;
  v12 = v18;
  if (v18 != v17)
  {
    do
    {
      v13 = v12 - 128;
      v18 = v12 - 128;
      v14 = *(v12 - 32);
      if (v14 != -1)
      {
        (off_26754D8[v14])(&v21);
        v13 = v18;
      }

      *(v12 - 32) = -1;
      v12 = v13;
    }

    while (v13 != v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_10D8254(void *a1, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_10D832C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10D8488(va);
  _Unwind_Resume(a1);
}

void sub_10D8340(void ***a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = *a1;
    v9 = v4 + *a1 - v6;
    do
    {
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = *v8;
      *(v9 + 16) = v8[2];
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = *(v8 + 3);
      *(v9 + 40) = v8[5];
      v8[3] = 0;
      v8[4] = 0;
      v8[5] = 0;
      v10 = *(v8 + 3);
      *(v9 + 62) = *(v8 + 62);
      *(v9 + 48) = v10;
      *(v9 + 80) = *(v8 + 5);
      v11 = v8[12];
      *(v9 + 104) = *(v8 + 26);
      *(v9 + 96) = v11;
      v8 += 14;
      v9 += 112;
    }

    while (v8 != v6);
  }

  sub_10D84C0(a1, v5, v6);
  a2[1] = v7;
  v12 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v12;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t sub_10D8488(uint64_t a1)
{
  sub_10D8600(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10D84C0(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = v4[3];
      if (v6)
      {
        v7 = v4[4];
        v8 = v4[3];
        if (v7 != v6)
        {
          do
          {
            if (*(v7 - 1) < 0)
            {
              operator delete(*(v7 - 3));
            }

            v7 -= 6;
          }

          while (v7 != v6);
          v8 = v4[3];
        }

        v4[4] = v6;
        operator delete(v8);
      }

      v9 = *v4;
      if (*v4)
      {
        v10 = v4[1];
        v5 = *v4;
        if (v10 != v9)
        {
          do
          {
            v11 = *(v10 - 3);
            if (v11)
            {
              *(v10 - 2) = v11;
              operator delete(v11);
            }

            v10 -= 48;
          }

          while (v10 != v9);
          v5 = *v4;
        }

        v4[1] = v9;
        operator delete(v5);
      }

      v4 += 14;
    }

    while (v4 != a3);
  }
}

uint64_t sub_10D8598(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 14;
        sub_2AE1D0(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_10D8600(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    v6 = (i - 112);
    *(a1 + 16) = i - 112;
    v7 = *(i - 88);
    if (v7)
    {
      v8 = *(i - 80);
      v9 = *(i - 88);
      if (v8 != v7)
      {
        do
        {
          if (*(v8 - 1) < 0)
          {
            operator delete(*(v8 - 24));
          }

          v8 -= 48;
        }

        while (v8 != v7);
        v9 = *(i - 88);
      }

      *(i - 80) = v7;
      operator delete(v9);
    }

    v10 = *v6;
    if (*v6)
    {
      v11 = *(i - 104);
      v5 = *v6;
      if (v11 != v10)
      {
        do
        {
          v12 = *(v11 - 3);
          if (v12)
          {
            *(v11 - 2) = v12;
            operator delete(v12);
          }

          v11 -= 48;
        }

        while (v11 != v10);
        v5 = *v6;
      }

      *(i - 104) = v10;
      operator delete(v5);
    }
  }
}

void sub_10D86E8(uint64_t *a1, unsigned int a2, unsigned int *a3)
{
  v5 = a2;
  v7 = a1[3];
  v8 = a1[4];
  v6 = (a1 + 3);
  v9 = v8 - v7;
  v10 = (v8 - v7) >> 2;
  if (v10 <= a2)
  {
    do
    {
      v22 = (v9 >> 1) | 1;
      if (v10 <= v9 >> 1)
      {
        sub_42CC4(v6, v22 - v10);
        v7 = a1[3];
        v8 = a1[4];
        v9 = v8 - v7;
        v23 = (v8 - v7) >> 2;
        if (v10 < v23)
        {
          goto LABEL_15;
        }
      }

      else if (v22 < v10)
      {
        v8 = v7 + 4 * v22;
        a1[4] = v8;
        v9 = 4 * v22;
        v23 = (4 * v22) >> 2;
        if (v10 < v23)
        {
LABEL_15:
          memset((v7 + 4 * v10), 255, v9 - 4 * v10);
        }
      }

      else
      {
        v9 = v8 - v7;
        v23 = (v8 - v7) >> 2;
        if (v10 < v23)
        {
          goto LABEL_15;
        }
      }

      v10 = v23;
    }

    while (v23 <= v5);
  }

  v24 = v5 | (*a3 << 32);
  sub_2512DC(a1, &v24);
  v11 = *(a1 + 12);
  v12 = a1[3];
  *(v12 + 4 * v5) = v11;
  *(a1 + 12) = v11 + 1;
  if (v11)
  {
    v13 = *a1;
    do
    {
      v14 = v11 - 1;
      v15 = (v13 + 8 * ((v11 - 1) >> 2));
      v16 = (v13 + 8 * v11);
      v17 = v16[1];
      v18 = v15[1];
      if (v18 < v17)
      {
        break;
      }

      v19 = *v16;
      *v16 = *v15;
      v16[1] = v18;
      *v15 = v19;
      v15[1] = v17;
      v20 = *v16;
      v21 = *(v12 + 4 * v20);
      *(v12 + 4 * v20) = *(v12 + 4 * v19);
      *(v12 + 4 * v19) = v21;
      v11 = v14 >> 2;
    }

    while (v14 > 3);
  }
}

double sub_10D8860(uint64_t *a1, unsigned int a2, int *a3)
{
  v3 = a1[3];
  v4 = *(v3 + 4 * a2);
  v5 = *a1;
  v6 = *a1 + 8 * v4;
  v7 = *(v6 + 4);
  v8 = *a3;
  *(v6 + 4) = *a3;
  if (v8 >= v7)
  {
    v16 = (4 * v4) | 1;
    v17 = *(a1 + 12);
    if (v16 < v17)
    {
      v18 = 4 * v4;
      do
      {
        v19 = v18 + 5;
        if (v19 >= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        if (v19 <= v16)
        {
          break;
        }

        v21 = v4;
        v22 = *(v5 + 8 * v4 + 4);
        v23 = (v5 + 4 + 8 * v16);
        LODWORD(v4) = -1;
        v24 = v22;
        do
        {
          v26 = *v23;
          v23 += 2;
          v25 = v26;
          if (v26 < v24)
          {
            v24 = v25;
            LODWORD(v4) = v16;
          }

          ++v16;
        }

        while (v16 < v20);
        if (v4 >= v17)
        {
          break;
        }

        v27 = (v5 + 8 * v4);
        result = *v27;
        *v27 = *(v5 + 8 * v21);
        *(v27 + 1) = v22;
        *(v5 + 8 * v21) = result;
        v29 = *v27;
        v30 = *(v3 + 4 * v29);
        *(v3 + 4 * v29) = *(v3 + 4 * LODWORD(result));
        *(v3 + 4 * LODWORD(result)) = v30;
        v18 = 4 * v4;
        v16 = (4 * v4) | 1;
        v17 = *(a1 + 12);
      }

      while (v16 < v17);
    }
  }

  else if (v4)
  {
    do
    {
      v9 = v4 - 1;
      v10 = (v5 + 8 * ((v4 - 1) >> 2));
      v11 = (v5 + 8 * v4);
      v12 = v11[1];
      v13 = v10[1];
      if (v13 < v12)
      {
        break;
      }

      v14 = *v11;
      *v11 = *v10;
      v11[1] = v13;
      *v10 = v14;
      v10[1] = v12;
      v4 = *v11;
      v15 = *(v3 + 4 * v4);
      *(v3 + 4 * v4) = *(v3 + 4 * v14);
      *(v3 + 4 * v14) = v15;
      LODWORD(v4) = v9 >> 2;
    }

    while (v9 >= 4);
  }

  return result;
}

char **sub_10D8994(char **a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 3);
        if (v7)
        {
          *(v5 - 2) = v7;
          operator delete(v7);
        }

        v5 -= 48;
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = a1 + 3;
  v9 = a1[3];
  if (v9)
  {
    v10 = a1[4];
    v11 = a1[3];
    if (v10 != v9)
    {
      do
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*(v10 - 3));
        }

        v10 -= 48;
      }

      while (v10 != v9);
      v11 = *v8;
    }

    a1[4] = v9;
    operator delete(v11);
    *v8 = 0;
    a1[4] = 0;
    a1[5] = 0;
  }

  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v12 = *(a2 + 48);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 3) = v12;
  return a1;
}

void sub_10D8AB0(void **a1, void **a2, uint64_t a3, char a4)
{
LABEL_1:
  v225 = (a2 - 28);
  v226 = (a2 - 14);
  v224 = (a2 - 42);
  v7 = a1;
  v230 = a2;
  while (1)
  {
    a1 = v7;
    v8 = a2 - v7;
    v9 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v7) >> 4);
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v82 = *(a1 + 54);
          v83 = *(a2 - 2);
          if (v82 > *(a1 + 26))
          {
            if (v83 <= v82)
            {
              sub_10DA7AC(a1, a1 + 14);
              if (*(a2 - 2) <= *(a1 + 54))
              {
                return;
              }

              v84 = a1 + 14;
              goto LABEL_144;
            }

LABEL_143:
            v84 = a1;
LABEL_144:
            v85 = v226;
LABEL_145:

            sub_10DA7AC(v84, v85);
            return;
          }

          if (v83 <= v82)
          {
            return;
          }

          v80 = (a1 + 14);
          v81 = v226;
          break;
        case 4:

          sub_10DA234(a1, (a1 + 14), (a1 + 28), v226);
          return;
        case 5:
          sub_10DA234(a1, (a1 + 14), (a1 + 28), (a1 + 42));
          if (*(a2 - 2) <= *(a1 + 110))
          {
            return;
          }

          sub_10DA7AC(a1 + 21, v226);
          if (*(a1 + 110) <= *(a1 + 82))
          {
            return;
          }

          sub_10DA7AC(a1 + 14, a1 + 42);
          if (*(a1 + 82) <= *(a1 + 54))
          {
            return;
          }

          v80 = (a1 + 14);
          v81 = (a1 + 28);
          break;
        default:
          goto LABEL_9;
      }

      sub_10DA7AC(v80, v81);
      if (*(a1 + 54) <= *(a1 + 26))
      {
        return;
      }

      v85 = (a1 + 14);
      v84 = a1;
      goto LABEL_145;
    }

    if (v9 < 2)
    {
      return;
    }

    if (v9 == 2)
    {
      if (*(a2 - 2) <= *(a1 + 26))
      {
        return;
      }

      goto LABEL_143;
    }

LABEL_9:
    if (v8 <= 2687)
    {
      if ((a4 & 1) == 0)
      {
        if (a1 != a2)
        {
          v199 = a1 + 14;
          if (a1 + 14 != a2)
          {
            do
            {
              v201 = v199;
              if (*(a1 + 54) > *(a1 + 26))
              {
                v202 = *v199;
                v203 = a1[16];
                v199[1] = 0;
                v199[2] = 0;
                *v199 = 0;
                v249 = v202;
                v256 = *(a1 + 17);
                v204 = a1[19];
                a1[18] = 0;
                a1[19] = 0;
                a1[17] = 0;
                *&v264[14] = *(a1 + 174);
                *v264 = *(a1 + 10);
                v271 = *(a1 + 12);
                v205 = a1[26];
                v206 = v199;
                v207 = *(a1 + 54);
                do
                {
                  v209 = a1;
                  v210 = *v206;
                  if (*v206)
                  {
                    v211 = v206 + 1;
                    v212 = v206[1];
                    v213 = *v206;
                    if (v212 != v210)
                    {
                      do
                      {
                        v214 = *(v212 - 3);
                        if (v214)
                        {
                          *(v212 - 2) = v214;
                          operator delete(v214);
                        }

                        v212 -= 48;
                      }

                      while (v212 != v210);
                      v213 = *v206;
                    }

                    *v211 = v210;
                    operator delete(v213);
                    *v211 = 0;
                    v206[2] = 0;
                  }

                  *v206 = *v209;
                  v206[2] = v209[2];
                  *v209 = 0;
                  v209[1] = 0;
                  v209[2] = 0;
                  v215 = v206[3];
                  if (v215)
                  {
                    v216 = (v206 + 4);
                    v217 = v206[4];
                    v208 = v206[3];
                    if (v217 != v215)
                    {
                      do
                      {
                        if (*(v217 - 1) < 0)
                        {
                          operator delete(*(v217 - 3));
                        }

                        v217 -= 6;
                      }

                      while (v217 != v215);
                      v208 = v206[3];
                    }

                    *v216 = v215;
                    operator delete(v208);
                    *v216 = 0;
                    v206[5] = 0;
                  }

                  *(v206 + 3) = *(v209 + 3);
                  v206[5] = v209[5];
                  v209[4] = 0;
                  v209[5] = 0;
                  v209[3] = 0;
                  *(v206 + 62) = *(v209 + 62);
                  *(v206 + 3) = *(v209 + 3);
                  *(v206 + 5) = *(v209 + 5);
                  v206[12] = v209[12];
                  *(v206 + 26) = *(v209 + 26);
                  a1 = v209 - 14;
                  v206 = v209;
                }

                while (v207 > *(v209 - 2));
                v218 = *v209;
                if (*v209)
                {
                  v219 = v209[1];
                  v220 = *v209;
                  if (v219 != v218)
                  {
                    do
                    {
                      v221 = *(v219 - 3);
                      if (v221)
                      {
                        *(v219 - 2) = v221;
                        operator delete(v221);
                      }

                      v219 -= 48;
                    }

                    while (v219 != v218);
                    v220 = *v209;
                  }

                  v209[1] = v218;
                  operator delete(v220);
                }

                *v209 = v249;
                v209[2] = v203;
                v222 = v209[3];
                if (v222)
                {
                  v223 = v209[4];
                  v200 = v209[3];
                  if (v223 != v222)
                  {
                    do
                    {
                      if (*(v223 - 1) < 0)
                      {
                        operator delete(*(v223 - 3));
                      }

                      v223 -= 6;
                    }

                    while (v223 != v222);
                    v200 = v209[3];
                  }

                  v209[4] = v222;
                  operator delete(v200);
                }

                *(v209 + 3) = v256;
                v209[5] = v204;
                *(v209 + 3) = *v264;
                *(v209 + 62) = *&v264[14];
                *(v209 + 5) = v271;
                v209[12] = v205;
                *(v209 + 26) = v207;
                a2 = v230;
              }

              v199 = v201 + 14;
              a1 = v201;
            }

            while (v201 + 14 != a2);
          }
        }

        return;
      }

      if (a1 == a2)
      {
        return;
      }

      v86 = a1 + 14;
      if (a1 + 14 == a2)
      {
        return;
      }

      v87 = a1;
      while (1)
      {
        v89 = v86;
        if (*(v87 + 54) > *(v87 + 26))
        {
          v90 = *v86;
          v91 = v87[16];
          v86[1] = 0;
          v86[2] = 0;
          *v86 = 0;
          v252 = v87[17];
          *&v261[14] = *(v87 + 174);
          v92 = *(v87 + 10);
          v239 = v90;
          v245 = *(v87 + 9);
          v87[18] = 0;
          v87[19] = 0;
          v87[17] = 0;
          *v261 = v92;
          v269 = *(v87 + 12);
          v93 = v87[26];
          v94 = v86;
          v95 = *(v87 + 54);
          while (1)
          {
            v96 = v87;
            v97 = *v94;
            if (*v94)
            {
              v99 = v94 + 1;
              v98 = v94[1];
              v100 = *v94;
              if (v98 != v97)
              {
                do
                {
                  v101 = *(v98 - 3);
                  if (v101)
                  {
                    *(v98 - 2) = v101;
                    operator delete(v101);
                  }

                  v98 -= 48;
                }

                while (v98 != v97);
                v100 = *v94;
              }

              *v99 = v97;
              operator delete(v100);
              *v99 = 0;
              v94[2] = 0;
            }

            *v94 = *v96;
            v94[2] = v96[2];
            *v96 = 0;
            v96[1] = 0;
            v96[2] = 0;
            v102 = v94[3];
            if (v102)
            {
              v104 = (v94 + 4);
              v103 = v94[4];
              v105 = v94[3];
              if (v103 != v102)
              {
                do
                {
                  if (*(v103 - 1) < 0)
                  {
                    operator delete(*(v103 - 3));
                  }

                  v103 -= 6;
                }

                while (v103 != v102);
                v105 = v94[3];
              }

              *v104 = v102;
              operator delete(v105);
              *v104 = 0;
              v94[5] = 0;
            }

            v106 = v96 + 3;
            *(v94 + 3) = *(v96 + 3);
            v94[5] = v96[5];
            v96[3] = 0;
            v96[4] = 0;
            v96[5] = 0;
            *(v94 + 62) = *(v96 + 62);
            *(v94 + 3) = *(v96 + 3);
            *(v94 + 5) = *(v96 + 5);
            *(v94 + 26) = *(v96 + 26);
            v94[12] = v96[12];
            if (v96 == a1)
            {
              break;
            }

            v87 = v96 - 14;
            v94 = v96;
            if (v95 <= *(v96 - 2))
            {
              v107 = v96;
              v108 = *v96;
              if (!*v96)
              {
                goto LABEL_189;
              }

              goto LABEL_182;
            }
          }

          v107 = a1;
          v108 = *a1;
          if (!*a1)
          {
            goto LABEL_189;
          }

LABEL_182:
          v109 = v107[1];
          v110 = v108;
          if (v109 != v108)
          {
            do
            {
              v111 = *(v109 - 3);
              if (v111)
              {
                *(v109 - 2) = v111;
                operator delete(v111);
              }

              v109 -= 48;
            }

            while (v109 != v108);
            v110 = *v107;
          }

          v107[1] = v108;
          operator delete(v110);
LABEL_189:
          *v107 = v239;
          v107[2] = v91;
          v112 = *v106;
          if (*v106)
          {
            v113 = v107[4];
            v88 = *v106;
            if (v113 != v112)
            {
              do
              {
                if (*(v113 - 1) < 0)
                {
                  operator delete(*(v113 - 3));
                }

                v113 -= 6;
              }

              while (v113 != v112);
              v88 = *v106;
            }

            v107[4] = v112;
            operator delete(v88);
            v96[4] = 0;
            v96[5] = 0;
          }

          v96[3] = v252;
          *(v107 + 2) = v245;
          *(v96 + 3) = *v261;
          *(v96 + 62) = *&v261[14];
          *(v96 + 5) = v269;
          v96[12] = v93;
          *(v96 + 26) = v95;
          a2 = v230;
        }

        v86 = v89 + 14;
        v87 = v89;
        if (v89 + 14 == a2)
        {
          return;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v11 = v9 >> 1;
    v12 = &a1[14 * (v9 >> 1)];
    v13 = *(a2 - 2);
    if (v8 >= 0x3801)
    {
      v14 = *(v12 + 26);
      if (v14 <= *(a1 + 26))
      {
        if (v13 <= v14 || (sub_10DA7AC(v12, v226), *(v12 + 26) <= *(a1 + 26)))
        {
LABEL_26:
          v20 = &a1[14 * v11];
          v21 = v20 - 14;
          v22 = *(v20 - 2);
          v23 = *(a2 - 30);
          if (v22 <= *(a1 + 54))
          {
            if (v23 <= v22 || (sub_10DA7AC(v21, v225), *(v21 + 26) <= *(a1 + 54)))
            {
LABEL_38:
              v26 = &a1[14 * v11];
              v27 = *(v26 + 54);
              v28 = *(a2 - 58);
              if (v27 <= *(a1 + 82))
              {
                if (v28 <= v27 || (sub_10DA7AC(v26 + 7, v224), *(v26 + 54) <= *(a1 + 82)))
                {
LABEL_47:
                  v31 = *(v12 + 26);
                  v32 = *(v26 + 54);
                  if (v31 <= *(v21 + 26))
                  {
                    if (v32 <= v31)
                    {
                      goto LABEL_56;
                    }

                    sub_10DA7AC(v12, v26 + 14);
                    if (*(v12 + 26) <= *(v21 + 26))
                    {
                      goto LABEL_56;
                    }

                    v34 = v21;
                    v33 = v12;
                  }

                  else if (v32 <= v31)
                  {
                    sub_10DA7AC(v21, v12);
                    if (*(v26 + 54) <= *(v12 + 26))
                    {
LABEL_56:
                      v18 = a1;
                      v19 = v12;
                      goto LABEL_57;
                    }

                    v33 = (v26 + 14);
                    v34 = v12;
                  }

                  else
                  {
                    v33 = (v26 + 14);
                    v34 = v21;
                  }

                  sub_10DA7AC(v34, v33);
                  goto LABEL_56;
                }

                v29 = (a1 + 28);
                v30 = (v26 + 14);
              }

              else
              {
                v29 = (a1 + 28);
                if (v28 <= v27)
                {
                  sub_10DA7AC(v29, v26 + 14);
                  if (*(a2 - 58) <= *(v26 + 54))
                  {
                    goto LABEL_47;
                  }

                  v29 = (v26 + 14);
                }

                v30 = v224;
              }

              sub_10DA7AC(v29, v30);
              goto LABEL_47;
            }

            v24 = (a1 + 14);
            v25 = v21;
          }

          else
          {
            v24 = (a1 + 14);
            if (v23 <= v22)
            {
              sub_10DA7AC(v24, v21);
              if (*(a2 - 30) <= *(v21 + 26))
              {
                goto LABEL_38;
              }

              v24 = v21;
            }

            v25 = v225;
          }

          sub_10DA7AC(v24, v25);
          goto LABEL_38;
        }

        v15 = a1;
        v16 = v12;
      }

      else
      {
        v15 = a1;
        if (v13 <= v14)
        {
          sub_10DA7AC(a1, v12);
          if (*(a2 - 2) <= *(v12 + 26))
          {
            goto LABEL_26;
          }

          v15 = v12;
        }

        v16 = v226;
      }

      sub_10DA7AC(v15, v16);
      goto LABEL_26;
    }

    v17 = *(a1 + 26);
    if (v17 > *(v12 + 26))
    {
      v18 = v12;
      if (v13 <= v17)
      {
        sub_10DA7AC(v12, a1);
        if (*(a2 - 2) <= *(a1 + 26))
        {
          goto LABEL_58;
        }

        v18 = a1;
      }

      v19 = v226;
      goto LABEL_57;
    }

    if (v13 > v17)
    {
      sub_10DA7AC(a1, v226);
      if (*(a1 + 26) > *(v12 + 26))
      {
        v18 = v12;
        v19 = a1;
LABEL_57:
        sub_10DA7AC(v18, v19);
      }
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v35 = *(a1 + 26);
LABEL_61:
      v250 = a3;
      v36 = 0;
      v233 = *a1;
      v37 = a1[2];
      v243 = *(a1 + 3);
      a1[2] = 0;
      a1[3] = 0;
      *a1 = 0;
      a1[1] = 0;
      v237 = a1[5];
      a1[4] = 0;
      a1[5] = 0;
      *v259 = *(a1 + 3);
      *&v259[14] = *(a1 + 62);
      v267 = *(a1 + 5);
      v38 = a1[12];
      do
      {
        v39 = a1[v36 + 27];
        v36 += 14;
      }

      while (v39 > v35);
      v40 = &a1[v36];
      v41 = a2;
      if (v36 == 14)
      {
        v44 = v230;
        while (v40 < v44)
        {
          v42 = (v44 - 14);
          v45 = *(v44 - 2);
          v44 -= 14;
          if (v45 > v35)
          {
            goto LABEL_69;
          }
        }

        v42 = v44;
        v7 = v40;
      }

      else
      {
        do
        {
          v42 = (v41 - 14);
          v43 = *(v41 - 2);
          v41 -= 14;
        }

        while (v43 <= v35);
LABEL_69:
        v7 = v40;
        if (v40 < v42)
        {
          v46 = v42;
          do
          {
            sub_10DA7AC(v7, v46);
            do
            {
              v47 = *(v7 + 54);
              v7 += 14;
            }

            while (v47 > v35);
            do
            {
              v48 = *(v46 - 2);
              v46 -= 14;
            }

            while (v48 <= v35);
          }

          while (v7 < v46);
        }
      }

      v49 = v7 - 14;
      if (v7 - 14 != a1)
      {
        sub_10D8994(a1, (v7 - 14));
        *(a1 + 5) = *(v7 - 2);
        v50 = *(v7 - 2);
        *(a1 + 26) = *(v7 - 2);
        a1[12] = v50;
      }

      v51 = *v49;
      if (*v49)
      {
        v52 = *(v7 - 13);
        v53 = *v49;
        if (v52 != v51)
        {
          do
          {
            v54 = *(v52 - 3);
            if (v54)
            {
              *(v52 - 2) = v54;
              operator delete(v54);
            }

            v52 -= 48;
          }

          while (v52 != v51);
          v53 = *v49;
        }

        *(v7 - 13) = v51;
        operator delete(v53);
      }

      *(v7 - 7) = v233;
      *(v7 - 12) = v37;
      v55 = *(v7 - 11);
      if (v55)
      {
        v56 = *(v7 - 10);
        v57 = *(v7 - 11);
        if (v56 != v55)
        {
          do
          {
            if (*(v56 - 1) < 0)
            {
              operator delete(*(v56 - 3));
            }

            v56 -= 6;
          }

          while (v56 != v55);
          v57 = *(v7 - 11);
        }

        *(v7 - 10) = v55;
        operator delete(v57);
      }

      *(v7 - 11) = v243;
      *(v7 - 9) = v237;
      *(v7 - 4) = *v259;
      *(v7 - 50) = *&v259[14];
      *(v7 - 2) = v267;
      *(v7 - 2) = v38;
      *(v7 - 2) = v35;
      v58 = v40 >= v42;
      a2 = v230;
      a3 = v250;
      if (v58)
      {
        v59 = sub_10DA34C(a1, v7 - 112);
        if (sub_10DA34C(v7, v230))
        {
          a2 = v7 - 14;
          if (v59)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v59)
        {
          goto LABEL_97;
        }
      }

      else
      {
LABEL_97:
        sub_10D8AB0(a1, v7 - 14, v250, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v35 = *(a1 + 26);
      if (*(a1 - 2) > v35)
      {
        goto LABEL_61;
      }

      v238 = *a1;
      v60 = a1[2];
      v251 = *(a1 + 3);
      a1[2] = 0;
      a1[3] = 0;
      *a1 = 0;
      a1[1] = 0;
      v244 = a1[5];
      a1[4] = 0;
      a1[5] = 0;
      *v260 = *(a1 + 3);
      *&v260[14] = *(a1 + 62);
      v268 = *(a1 + 5);
      v61 = a1[12];
      v62 = *(a1 + 26);
      if (v62 <= *(a2 - 2))
      {
        v65 = a1 + 14;
        do
        {
          v7 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v66 = *(v65 + 26);
          v65 += 14;
        }

        while (v62 <= v66);
      }

      else
      {
        v63 = a1;
        do
        {
          v7 = v63 + 14;
          v64 = *(v63 + 54);
          v63 += 14;
        }

        while (v62 <= v64);
      }

      if (v7 < a2)
      {
        v67 = v230;
        do
        {
          a2 = v67 - 14;
          v68 = *(v67 - 2);
          v67 -= 14;
        }

        while (v62 > v68);
      }

      while (v7 < a2)
      {
        sub_10DA7AC(v7, a2);
        do
        {
          v69 = *(v7 + 54);
          v7 += 14;
        }

        while (v62 <= v69);
        do
        {
          v70 = *(a2 - 2);
          a2 -= 14;
        }

        while (v62 > v70);
      }

      v71 = v7 - 14;
      if (v7 - 14 != a1)
      {
        sub_10D8994(a1, (v7 - 14));
        *(a1 + 5) = *(v7 - 2);
        v72 = *(v7 - 2);
        *(a1 + 26) = *(v7 - 2);
        a1[12] = v72;
      }

      v73 = *v71;
      if (*v71)
      {
        v74 = *(v7 - 13);
        v75 = *v71;
        if (v74 != v73)
        {
          do
          {
            v76 = *(v74 - 3);
            if (v76)
            {
              *(v74 - 2) = v76;
              operator delete(v76);
            }

            v74 -= 48;
          }

          while (v74 != v73);
          v75 = *v71;
        }

        *(v7 - 13) = v73;
        operator delete(v75);
      }

      *(v7 - 7) = v238;
      *(v7 - 12) = v60;
      v77 = *(v7 - 11);
      a2 = v230;
      if (v77)
      {
        v78 = *(v7 - 10);
        v79 = *(v7 - 11);
        if (v78 != v77)
        {
          do
          {
            if (*(v78 - 1) < 0)
            {
              operator delete(*(v78 - 3));
            }

            v78 -= 6;
          }

          while (v78 != v77);
          v79 = *(v7 - 11);
        }

        *(v7 - 10) = v77;
        operator delete(v79);
      }

      a4 = 0;
      *(v7 - 11) = v251;
      *(v7 - 9) = v244;
      *(v7 - 4) = *v260;
      *(v7 - 50) = *&v260[14];
      *(v7 - 2) = v268;
      *(v7 - 2) = v61;
      *(v7 - 2) = v62;
    }
  }

  if (a1 == a2)
  {
    return;
  }

  v114 = v10 >> 1;
  v115 = v10 >> 1;
  do
  {
    v117 = v115;
    if (v114 >= v115)
    {
      v118 = (2 * v115) | 1;
      v119 = &a1[14 * v118];
      if (2 * v117 + 2 < v9)
      {
        v120 = *(v119 + 26);
        v121 = *(v119 + 54);
        v122 = v120 <= v121;
        v123 = v120 <= v121 ? 0 : 112;
        v119 = (v119 + v123);
        if (!v122)
        {
          v118 = 2 * v117 + 2;
        }
      }

      v124 = &a1[14 * v117];
      v125 = *(v124 + 26);
      if (*(v119 + 26) <= v125)
      {
        v234 = *v124;
        v228 = v124[2];
        *v124 = 0;
        v124[1] = 0;
        v253 = *(v124 + 3);
        v124[2] = 0;
        v124[3] = 0;
        v246 = v124[5];
        v124[4] = 0;
        v124[5] = 0;
        *&v262[14] = *(v124 + 62);
        *v262 = *(v124 + 3);
        v270 = *(v124 + 5);
        v240 = v124[12];
        do
        {
          v126 = v119;
          sub_10D8994(v124, v119);
          *(v124 + 5) = *(v126 + 5);
          v127 = v126[12];
          *(v124 + 26) = *(v126 + 26);
          v124[12] = v127;
          if (v114 < v118)
          {
            break;
          }

          v128 = (2 * v118) | 1;
          v119 = &a1[14 * v128];
          if (2 * v118 + 2 < v9)
          {
            v129 = *(v119 + 26);
            v130 = *(v119 + 54);
            v131 = v129 <= v130;
            v132 = v129 <= v130 ? 0 : 112;
            v119 = (v119 + v132);
            if (!v131)
            {
              v128 = 2 * v118 + 2;
            }
          }

          v124 = v126;
          v118 = v128;
        }

        while (*(v119 + 26) <= v125);
        v133 = *v126;
        if (*v126)
        {
          v134 = v126[1];
          v135 = *v126;
          if (v134 != v133)
          {
            do
            {
              v136 = *(v134 - 3);
              if (v136)
              {
                *(v134 - 2) = v136;
                operator delete(v136);
              }

              v134 -= 48;
            }

            while (v134 != v133);
            v135 = *v126;
          }

          v126[1] = v133;
          operator delete(v135);
        }

        *v126 = v234;
        v126[2] = v228;
        v137 = v126[3];
        if (v137)
        {
          v138 = v126[4];
          v116 = v126[3];
          if (v138 != v137)
          {
            do
            {
              if (*(v138 - 1) < 0)
              {
                operator delete(*(v138 - 3));
              }

              v138 -= 6;
            }

            while (v138 != v137);
            v116 = v126[3];
          }

          v126[4] = v137;
          operator delete(v116);
        }

        *(v126 + 3) = v253;
        v126[5] = v246;
        *(v126 + 3) = *v262;
        *(v126 + 62) = *&v262[14];
        *(v126 + 5) = v270;
        v126[12] = v240;
        *(v126 + 26) = v125;
      }
    }

    v115 = v117 - 1;
  }

  while (v117);
  v139 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 4);
  v140 = v230;
  while (2)
  {
    v142 = 0;
    v143 = v140;
    v231 = a1[1];
    v235 = *a1;
    *a1 = 0;
    a1[1] = 0;
    v229 = a1[2];
    v254 = a1[3];
    v247 = a1[4];
    v241 = a1[5];
    a1[2] = 0;
    a1[3] = 0;
    a1[4] = 0;
    a1[5] = 0;
    *&v266[14] = *(a1 + 62);
    *v266 = *(a1 + 3);
    v258 = *(a1 + 26);
    v257 = a1[12];
    v144 = a1;
    v265 = *(a1 + 5);
    while (2)
    {
      v150 = &v144[14 * v142];
      v151 = v150 + 14;
      if (2 * v142 + 2 >= v139)
      {
        v142 = (2 * v142) | 1;
        v155 = *v144;
        if (!*v144)
        {
          goto LABEL_256;
        }
      }

      else
      {
        v152 = *(v150 + 54);
        v153 = *(v150 + 82);
        v154 = v150 + 28;
        if (v152 <= v153)
        {
          v142 = (2 * v142) | 1;
        }

        else
        {
          v151 = v154;
          v142 = 2 * v142 + 2;
        }

        v155 = *v144;
        if (!*v144)
        {
          goto LABEL_256;
        }
      }

      v156 = v144[1];
      v157 = v155;
      if (v156 != v155)
      {
        do
        {
          v158 = *(v156 - 3);
          if (v158)
          {
            *(v156 - 2) = v158;
            operator delete(v158);
          }

          v156 -= 48;
        }

        while (v156 != v155);
        v157 = *v144;
      }

      v144[1] = v155;
      operator delete(v157);
      *v144 = 0;
      v144[1] = 0;
      v144[2] = 0;
LABEL_256:
      *v144 = *v151;
      v144[2] = v151[2];
      *v151 = 0;
      v151[1] = 0;
      v151[2] = 0;
      v159 = v144 + 3;
      v160 = v144[3];
      if (v160)
      {
        v161 = v144[4];
        v145 = v144[3];
        if (v161 != v160)
        {
          do
          {
            if (*(v161 - 1) < 0)
            {
              operator delete(*(v161 - 3));
            }

            v161 -= 6;
          }

          while (v161 != v160);
          v145 = *v159;
        }

        v144[4] = v160;
        operator delete(v145);
        *v159 = 0;
        v144[4] = 0;
        v144[5] = 0;
      }

      v146 = v151 + 3;
      *(v144 + 3) = *(v151 + 3);
      v144[5] = v151[5];
      v151[3] = 0;
      v151[4] = 0;
      v151[5] = 0;
      v147 = *(v151 + 3);
      *(v144 + 62) = *(v151 + 62);
      *(v144 + 3) = v147;
      *(v144 + 5) = *(v151 + 5);
      v149 = v151 + 12;
      v148 = v151[12];
      *(v144 + 26) = *(v151 + 26);
      v144[12] = v148;
      v144 = v151;
      if (v142 <= ((v139 - 2) >> 1))
      {
        continue;
      }

      break;
    }

    v140 = v143 - 14;
    if (v151 == v143 - 14)
    {
      v167 = *v151;
      if (*v151)
      {
        v168 = v151[1];
        v169 = *v151;
        if (v168 != v167)
        {
          do
          {
            v170 = *(v168 - 3);
            if (v170)
            {
              *(v168 - 2) = v170;
              operator delete(v170);
            }

            v168 -= 48;
          }

          while (v168 != v167);
          v169 = *v151;
        }

        v151[1] = v167;
        operator delete(v169);
      }

      *v151 = v235;
      v151[1] = v231;
      v151[2] = v229;
      v194 = v151[3];
      if (v194)
      {
        v195 = v151[4];
        v141 = v151[3];
        if (v195 != v194)
        {
          do
          {
            if (*(v195 - 1) < 0)
            {
              operator delete(*(v195 - 3));
            }

            v195 -= 6;
          }

          while (v195 != v194);
          v141 = *v146;
        }

        v151[4] = v194;
        operator delete(v141);
      }

      v151[3] = v254;
      v151[4] = v247;
      v151[5] = v241;
      *(v151 + 3) = *v266;
      *(v151 + 62) = *&v266[14];
      *(v151 + 5) = v265;
      *v149 = v257;
      *(v151 + 26) = v258;
    }

    else
    {
      sub_10D8994(v151, (v143 - 14));
      *(v151 + 5) = *(v143 - 2);
      v162 = *(v143 - 2);
      *(v151 + 26) = *(v143 - 2);
      *v149 = v162;
      v163 = *(v143 - 14);
      if (v163)
      {
        v164 = *(v143 - 13);
        v165 = *(v143 - 14);
        if (v164 != v163)
        {
          do
          {
            v166 = *(v164 - 3);
            if (v166)
            {
              *(v164 - 2) = v166;
              operator delete(v166);
            }

            v164 -= 48;
          }

          while (v164 != v163);
          v165 = *v140;
        }

        *(v143 - 13) = v163;
        operator delete(v165);
      }

      *(v143 - 14) = v235;
      *(v143 - 13) = v231;
      *(v143 - 12) = v229;
      v171 = *(v143 - 11);
      v172 = v143 - 14;
      if (v171)
      {
        v173 = *(v143 - 10);
        v174 = *(v143 - 11);
        if (v173 != v171)
        {
          do
          {
            if (*(v173 - 1) < 0)
            {
              operator delete(*(v173 - 3));
            }

            v173 -= 6;
          }

          while (v173 != v171);
          v174 = *(v143 - 11);
        }

        *(v143 - 10) = v171;
        operator delete(v174);
        v140 = v143 - 14;
      }

      *(v143 - 11) = v254;
      *(v143 - 10) = v247;
      *(v143 - 9) = v241;
      *(v143 - 4) = *v266;
      *(v143 - 50) = *&v266[14];
      *(v143 - 2) = v265;
      *(v143 - 2) = v257;
      *(v143 - 2) = v258;
      v175 = (v151 + 14) - a1;
      if (v175 >= 113)
      {
        v176 = (0x6DB6DB6DB6DB6DB7 * (v175 >> 4) - 2) >> 1;
        v177 = &a1[14 * v176];
        v178 = *(v151 + 26);
        if (*(v177 + 26) > v178)
        {
          v236 = *v151;
          v232 = v151[2];
          v151[1] = 0;
          v151[2] = 0;
          *v151 = 0;
          v255 = *(v151 + 3);
          v248 = v151[5];
          v151[4] = 0;
          v151[5] = 0;
          *v146 = 0;
          *&v263[14] = *(v151 + 62);
          *v263 = *(v151 + 3);
          v272 = *(v151 + 5);
          v242 = v151[12];
          do
          {
            v179 = v177;
            v180 = *v151;
            if (*v151)
            {
              v181 = v151[1];
              v182 = *v151;
              if (v181 != v180)
              {
                do
                {
                  v183 = *(v181 - 3);
                  if (v183)
                  {
                    *(v181 - 2) = v183;
                    operator delete(v183);
                  }

                  v181 -= 48;
                }

                while (v181 != v180);
                v182 = *v151;
              }

              v151[1] = v180;
              operator delete(v182);
              *v151 = 0;
              v151[1] = 0;
              v151[2] = 0;
            }

            *v151 = *v179;
            v151[2] = v179[2];
            *v179 = 0;
            v179[1] = 0;
            v179[2] = 0;
            v184 = v151 + 3;
            v185 = v151[3];
            if (v185)
            {
              v186 = v151[4];
              v187 = v151[3];
              if (v186 != v185)
              {
                do
                {
                  if (*(v186 - 1) < 0)
                  {
                    operator delete(*(v186 - 3));
                  }

                  v186 -= 6;
                }

                while (v186 != v185);
                v187 = *v184;
              }

              v151[4] = v185;
              operator delete(v187);
              *v184 = 0;
              v151[4] = 0;
              v151[5] = 0;
              v140 = v172;
            }

            *(v151 + 3) = *(v179 + 3);
            v151[5] = v179[5];
            v179[3] = 0;
            v179[4] = 0;
            v179[5] = 0;
            v188 = *(v179 + 3);
            *(v151 + 62) = *(v179 + 62);
            *(v151 + 3) = v188;
            *(v151 + 5) = *(v179 + 5);
            v189 = v179[12];
            *(v151 + 26) = *(v179 + 26);
            v151[12] = v189;
            if (!v176)
            {
              break;
            }

            v176 = (v176 - 1) >> 1;
            v177 = &a1[14 * v176];
            v151 = v179;
          }

          while (*(v177 + 26) > v178);
          v190 = *v179;
          if (*v179)
          {
            v191 = v179[1];
            v192 = *v179;
            if (v191 != v190)
            {
              do
              {
                v193 = *(v191 - 3);
                if (v193)
                {
                  *(v191 - 2) = v193;
                  operator delete(v193);
                }

                v191 -= 48;
              }

              while (v191 != v190);
              v192 = *v179;
            }

            v179[1] = v190;
            operator delete(v192);
          }

          *v179 = v236;
          v179[2] = v232;
          v196 = v179[3];
          if (v196)
          {
            v197 = v179[4];
            v198 = v179[3];
            if (v197 != v196)
            {
              do
              {
                if (*(v197 - 1) < 0)
                {
                  operator delete(*(v197 - 3));
                }

                v197 -= 6;
              }

              while (v197 != v196);
              v198 = v179[3];
            }

            v179[4] = v196;
            operator delete(v198);
          }

          *(v179 + 3) = v255;
          v179[5] = v248;
          *(v179 + 3) = *v263;
          *(v179 + 62) = *&v263[14];
          *(v179 + 5) = v272;
          v179[12] = v242;
          *(v179 + 26) = v178;
        }
      }
    }

    v122 = v139-- <= 2;
    if (!v122)
    {
      continue;
    }

    break;
  }
}

double sub_10DA234(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(a2 + 104);
  v9 = *(a3 + 104);
  if (v8 <= *(result + 104))
  {
    if (v9 > v8)
    {
      *&v10 = sub_10DA7AC(a2, a3).n128_u64[0];
      if (*(a2 + 104) > *(v7 + 104))
      {
        result = v7;
        v11 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 > v8)
    {
LABEL_5:
      v11 = a3;
LABEL_9:
      *&v10 = sub_10DA7AC(result, v11).n128_u64[0];
      goto LABEL_10;
    }

    *&v10 = sub_10DA7AC(result, a2).n128_u64[0];
    if (*(a3 + 104) > *(a2 + 104))
    {
      result = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 104) > *(a3 + 104))
  {
    *&v10 = sub_10DA7AC(a3, a4).n128_u64[0];
    if (*(a3 + 104) > *(a2 + 104))
    {
      *&v10 = sub_10DA7AC(a2, a3).n128_u64[0];
      if (*(a2 + 104) > *(v7 + 104))
      {

        *&v10 = sub_10DA7AC(v7, a2).n128_u64[0];
      }
    }
  }

  return v10;
}

BOOL sub_10DA34C(__int128 *a1, char *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = (a2 - 112);
        v6 = *(a1 + 54);
        v7 = *(v2 - 2);
        if (v6 > *(a1 + 26))
        {
          if (v7 > v6)
          {
            goto LABEL_25;
          }

          sub_10DA7AC(a1, a1 + 14);
          if (*(v2 - 2) > *(v3 + 54))
          {
            v8 = v3 + 7;
            v5 = (v2 - 112);
LABEL_26:
            sub_10DA7AC(v8, v5);
            return 1;
          }

          return 1;
        }

        if (v7 <= v6)
        {
          return 1;
        }

        sub_10DA7AC(a1 + 7, v5);
        if (*(v3 + 54) <= *(v3 + 26))
        {
          return 1;
        }

        break;
      case 4:
        sub_10DA234(a1, (a1 + 7), (a1 + 14), (a2 - 112));
        return 1;
      case 5:
        sub_10DA234(a1, (a1 + 7), (a1 + 14), (a1 + 21));
        if (*(v2 - 2) <= *(v3 + 110))
        {
          return 1;
        }

        sub_10DA7AC(v3 + 21, v2 - 14);
        if (*(v3 + 110) <= *(v3 + 82))
        {
          return 1;
        }

        sub_10DA7AC(v3 + 14, v3 + 42);
        if (*(v3 + 82) <= *(v3 + 54))
        {
          return 1;
        }

        sub_10DA7AC(v3 + 7, v3 + 28);
        if (*(v3 + 54) <= *(v3 + 26))
        {
          return 1;
        }

        break;
      default:
        goto LABEL_18;
    }

    v5 = (v3 + 7);
    goto LABEL_25;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 2) > *(a1 + 26))
    {
      v5 = (a2 - 112);
LABEL_25:
      v8 = v3;
      goto LABEL_26;
    }

    return 1;
  }

LABEL_18:
  v9 = a1 + 14;
  v10 = *(a1 + 54);
  v11 = *(a1 + 82);
  if (v10 > *(a1 + 26))
  {
    if (v11 <= v10)
    {
      sub_10DA7AC(a1, a1 + 14);
      if (*(v3 + 82) <= *(v3 + 54))
      {
        goto LABEL_34;
      }

      a1 = v3 + 7;
    }

    v12 = (v3 + 14);
    goto LABEL_33;
  }

  if (v11 > v10)
  {
    sub_10DA7AC(a1 + 7, a1 + 28);
    if (*(v3 + 54) > *(v3 + 26))
    {
      v12 = (v3 + 7);
      a1 = v3;
LABEL_33:
      sub_10DA7AC(a1, v12);
    }
  }

LABEL_34:
  v13 = v3 + 21;
  if (v3 + 21 == v2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  v32 = v2;
  while (1)
  {
    v17 = v13[26];
    if (v17 > v9[26])
    {
      v34 = *v13;
      v18 = *(v13 + 2);
      *v13 = 0;
      *(v13 + 1) = 0;
      v19 = *(v13 + 6);
      *(v13 + 2) = 0;
      *(v13 + 3) = 0;
      v20 = *(v13 + 5);
      *(v13 + 4) = 0;
      *(v13 + 5) = 0;
      v37 = v19;
      *v38 = *(v13 + 3);
      *&v38[14] = *(v13 + 62);
      v39 = *(v13 + 5);
      v21 = v14;
      v35 = *(v13 + 12);
      v36 = v20;
      while (1)
      {
        v22 = v21;
        v23 = v3 + v21;
        sub_10D8994((v3 + v21 + 336), v3 + v21 + 224);
        *(v23 + 26) = *(v23 + 19);
        *(v23 + 54) = *(v23 + 40);
        *(v23 + 110) = *(v23 + 82);
        if (v22 == -224)
        {
          break;
        }

        v21 = v22 - 112;
        if (v17 <= *(v23 + 54))
        {
          v24 = v3 + v21 + 336;
          v25 = *v24;
          if (!*v24)
          {
            goto LABEL_54;
          }

          goto LABEL_47;
        }
      }

      v24 = v3;
      v25 = *v3;
      if (!*v3)
      {
        goto LABEL_54;
      }

LABEL_47:
      v33 = v18;
      v26 = *(v24 + 8);
      v27 = v25;
      if (v26 != v25)
      {
        do
        {
          v28 = *(v26 - 3);
          if (v28)
          {
            *(v26 - 2) = v28;
            operator delete(v28);
          }

          v26 -= 48;
        }

        while (v26 != v25);
        v27 = *v24;
      }

      *(v24 + 8) = v25;
      operator delete(v27);
      v18 = v33;
LABEL_54:
      *v24 = v34;
      *(v24 + 16) = v18;
      v29 = *(v24 + 24);
      if (v29)
      {
        v30 = *(v24 + 32);
        v16 = *(v24 + 24);
        if (v30 != v29)
        {
          do
          {
            if (*(v30 - 1) < 0)
            {
              operator delete(*(v30 - 24));
            }

            v30 -= 48;
          }

          while (v30 != v29);
          v16 = *(v24 + 24);
        }

        *(v24 + 32) = v29;
        operator delete(v16);
      }

      *(v24 + 24) = v37;
      *(v24 + 40) = v36;
      *(v24 + 48) = *v38;
      *(v24 + 62) = *&v38[14];
      *(v23 + 19) = v39;
      *(v23 + 40) = v35;
      *(v3 + v22 + 328) = v17;
      ++v15;
      v2 = v32;
      if (v15 == 8)
      {
        return v13 + 28 == v32;
      }
    }

    v9 = v13;
    v14 += 112;
    v13 += 28;
    if (v13 == v2)
    {
      return 1;
    }
  }
}

__n128 sub_10DA7AC(__int128 *a1, char **a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  *a1 = 0uLL;
  v16 = v4;
  v17 = *(a1 + 24);
  a1[1] = 0uLL;
  v6 = *(a1 + 5);
  a1[2] = 0uLL;
  *v20 = a1[3];
  *&v20[14] = *(a1 + 62);
  v21 = a1[5];
  v19 = *(a1 + 26);
  v18 = *(a1 + 12);
  sub_10D8994(a1, a2);
  a1[5] = *(a2 + 5);
  v7 = a2[12];
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 12) = v7;
  v8 = *a2;
  if (*a2)
  {
    v9 = a2[1];
    v10 = *a2;
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 3);
        if (v11)
        {
          *(v9 - 2) = v11;
          operator delete(v11);
        }

        v9 -= 48;
      }

      while (v9 != v8);
      v10 = *a2;
    }

    a2[1] = v8;
    operator delete(v10);
  }

  *a2 = v16;
  a2[2] = v5;
  v12 = a2[3];
  if (v12)
  {
    v13 = a2[4];
    v14 = a2[3];
    if (v13 != v12)
    {
      do
      {
        if (*(v13 - 1) < 0)
        {
          operator delete(*(v13 - 3));
        }

        v13 -= 48;
      }

      while (v13 != v12);
      v14 = a2[3];
    }

    a2[4] = v12;
    operator delete(v14);
  }

  *(a2 + 3) = v17;
  a2[5] = v6;
  *(a2 + 3) = *v20;
  *(a2 + 62) = *&v20[14];
  result = v21;
  *(a2 + 5) = v21;
  a2[12] = v18;
  *(a2 + 26) = v19;
  return result;
}

void sub_10DAA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_334D18(va);
  v18 = *(v16 - 80);
  if (v18)
  {
    *(v16 - 72) = v18;
    operator delete(v18);
    v19 = *(v16 - 56);
    if (!v19)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v19 = *(v16 - 56);
    if (!v19)
    {
      goto LABEL_3;
    }
  }

  *(v16 - 48) = v19;
  operator delete(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_10DAACC(uint64_t a1, void *a2, void *a3, char a4)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v5 = a3[1];
  if (v5 != *a3)
  {
    if (((v5 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_10DAC6C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  v5 = v1[2];
  if (v5)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_10DAE78(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C2406) < 0)
  {
    sub_21E7C14();
  }

  sub_21E7C20();
  _Unwind_Resume(a1);
}

void sub_10DAE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  HIBYTE(v10[2]) = 11;
  strcpy(v10, "PathFinding");
  memset(v9, 0, sizeof(v9));
  v5 = sub_3AEC94(a3, v10, v9);
  HIBYTE(v8[2]) = 18;
  strcpy(v8, "DrivingPathFinding");
  memset(__p, 0, sizeof(__p));
  v6 = sub_3AEC94(a3, v8, __p);
  sub_10DDD94(a1, v5, v6);
}

void sub_10DB348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_CDE540(v27 + v28);
  if (*(v27 + 42536) == 1)
  {
    sub_3E3DF0((v27 + 37224));
    if (*(v27 + 37120) != 1)
    {
LABEL_7:
      sub_CEC20C(v27 + 56);
      _Unwind_Resume(a1);
    }
  }

  else if (*(v27 + 37120) != 1)
  {
    goto LABEL_7;
  }

  sub_3E3DF0((v27 + 31808));
  goto LABEL_7;
}

void sub_10DB490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void **a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a19);
  if (a27 < 0)
  {
    operator delete(a22);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10DB438);
}

void sub_10DB4D0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, uint64_t a9@<X8>, char a10, unsigned __int8 a11, uint64_t *a12)
{
  sub_10DFDAC(a9, a10);
  sub_10DFDB0(a9, a3);
  sub_10DFDD8(a9, a4);
  v21 = *a12;
  v20 = a12[1];
  if (*a12 != v20)
  {
    do
    {
      sub_10DFE00(a9, v21, v21[69], 1);
      v21 += 70;
    }

    while (v21 != v20);
  }

  v31 = 5;
  strcpy(__p, "modes");
  v22 = sub_5F5AC(a2, __p);
  sub_FEECA4((a1 + 32), v28);
  v23 = sub_5F5AC(v22, v28);
  if (v29 < 0)
  {
    v25 = v23;
    operator delete(v28[0]);
    v23 = v25;
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v26 = v23;
  operator delete(__p[0]);
  v23 = v26;
LABEL_5:
  v31 = 10;
  strcpy(__p, "algorithms");
  v24 = sub_5F680(v23, __p);
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  sub_FF683C(a1 + 60424);
  sub_10DB748(a1, v24, a3, a4, a5, a6, a7, a8, a11, a9);
}

void sub_10DB690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if ((a24 & 0x80000000) == 0)
  {
    sub_FE90B8(v24);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_FE90B8(v24);
  _Unwind_Resume(a1);
}

void sub_10DB748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v10 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v12 = v11;
  v96 = v13;
  v97 = v14;
  v93 = v15;
  v94 = v16;
  v95 = v17;
  v102 = v18;
  v19 = v10;
  v20 = v10 + 57344;
  v101 = sub_3AF3C0(*(v10 + 48));
  v98 = v12;
  v92 = v12 == 2;
  if (*(v19 + 1) == 1)
  {
    v21 = *(v19 + 4);
  }

  else
  {
    v21 = -1;
  }

  v100 = v21;
  sub_7E9A4(v133);
  v22 = v102[1] - *v102;
  if (v22)
  {
    v23 = 0;
    v99 = v22 >> 4;
    do
    {
      if (sub_7EA60(v133) / 100.0 > *(v19 + 24))
      {
        *(v20 + 3382) = 1;
        break;
      }

      if (*(v19 + 3) == 1 && *(v20 + 3328) >= *(v19 + 16))
      {
        break;
      }

      v24 = sub_35225C(v102, v23);
      if (*(v24 + 8) != 5)
      {
        sub_5AF20();
      }

      v25 = *v24;
      HIBYTE(__p[2]) = 9;
      strcpy(__p, "algorithm");
      v26 = sub_5F8FC(v25, __p);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      HIBYTE(__p[2]) = 13;
      strcpy(__p, "cost_function");
      v27 = sub_5F8FC(v25, __p);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
        if (*(v19 + 28) != 1)
        {
          goto LABEL_23;
        }
      }

      else if (*(v19 + 28) != 1)
      {
        goto LABEL_23;
      }

      v28 = *(v27 + 23);
      if (v28 < 0)
      {
        if (v27[1] != 8)
        {
          goto LABEL_23;
        }

        v29 = *v27;
      }

      else
      {
        v29 = v27;
        if (v28 != 8)
        {
          goto LABEL_23;
        }
      }

      if (*v29 != 0x647261646E617473)
      {
LABEL_23:
        v30 = sub_3AF2A4(*(v19 + 48), v27);
        v31 = 0;
        v118 = *v30;
        if ((*(v30 + 31) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_26;
      }

      v33 = *(v19 + 48);
      v117 = 12;
      strcpy(v116, "standard_hov");
      v30 = sub_3AF2A4(v33, v116);
      v31 = 1;
      v118 = *v30;
      if ((*(v30 + 31) & 0x80000000) == 0)
      {
LABEL_24:
        v32 = *(v30 + 8);
        v120 = *(v30 + 24);
        v119 = v32;
        goto LABEL_27;
      }

LABEL_26:
      sub_325C(&v119, *(v30 + 8), *(v30 + 16));
LABEL_27:
      sub_FDE7E8(v121, (v30 + 32));
      v127 = 0;
      v128 = 0;
      v129 = 0;
      v34 = *(v30 + 1312);
      v35 = *(v30 + 1320);
      if (v35 != v34)
      {
        if (((v35 - v34) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v130 = 0;
      v131 = 0;
      v132 = 0;
      v36 = *(v30 + 1336);
      v37 = *(v30 + 1344);
      if (v37 != v36)
      {
        if (0xCCCCCCCCCCCCCCCDLL * ((v37 - v36) >> 3) < 0x666666666666667)
        {
          operator new();
        }

        sub_1794();
      }

      if (v31 && v117 < 0)
      {
        operator delete(v116[0]);
      }

      v38 = sub_FEEDA8(v101, &v118, v100);
      if (v38)
      {
        *(v20 + 3380) |= v38;
        v39 = 3;
        goto LABEL_115;
      }

      v40 = sub_681D7C(a10);
      if (!sub_1013C50(v25, v40, v19 + 32))
      {
        goto LABEL_114;
      }

      if (v122)
      {
        v41 = 1;
      }

      else
      {
        v41 = 1;
        if ((v123 & 1) == 0 && !v124 && !v125)
        {
          v41 = v126 != 0;
        }
      }

      v42 = v98 == 2 && v41;
      sub_F8DE84(v19 + 64, v42);
      HIBYTE(__p[2]) = 6;
      strcpy(__p, "config");
      v43 = sub_5F8FC(v25, __p);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
        v44 = *(v26 + 23);
        if (*v19 != 1)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v44 = *(v26 + 23);
        if (*v19 != 1)
        {
          goto LABEL_70;
        }
      }

      if ((v44 & 0x80) != 0 && v26[1] == 33)
      {
        if (**v26 == 0x6172675F68746170 && *(*v26 + 8) == 0x656D6775615F6870 && *(*v26 + 16) == 0x5F6E6F697461746ELL && *(*v26 + 24) == 0x687469726F676C61 && *(*v26 + 32) == 109)
        {
          if (v122)
          {
            v49 = 1;
          }

          else
          {
            v49 = 1;
            if ((v123 & 1) == 0 && !v124 && !v125)
            {
              v49 = v126 != 0;
            }
          }

          if (v98 == 2 || !v49)
          {
            operator new();
          }

LABEL_114:
          v39 = 3;
          goto LABEL_115;
        }

        goto LABEL_74;
      }

LABEL_70:
      if ((v44 & 0x80) == 0)
      {
        if (v44 == 18)
        {
          v51 = 0;
          v52 = v26;
          goto LABEL_79;
        }

        if (v44 == 20)
        {
          goto LABEL_90;
        }

        goto LABEL_97;
      }

LABEL_74:
      v50 = v26[1];
      if (v50 == 18)
      {
        v52 = *v26;
        v51 = 1;
LABEL_79:
        v53 = *v52;
        v54 = *(v52 + 8);
        v55 = *(v52 + 16);
        if (v53 == 0x74736F635F6E696DLL && v54 == 0x7469726F676C615FLL && v55 == 28008)
        {
          v60 = *(v19 + 48);
          strcpy(__p, "MinCostPathComputation");
          HIBYTE(__p[2]) = 22;
          v112 = 0;
          v111 = 0;
          v113 = 0;
          v61 = sub_3AEC94(v60, __p, &v111);
          v62 = sub_5F5AC(v61, v43);
          v63 = v111;
          if (v111)
          {
            v64 = v112;
            v65 = v111;
            if (v112 != v111)
            {
              do
              {
                v66 = *(v64 - 1);
                v64 -= 3;
                if (v66 < 0)
                {
                  operator delete(*v64);
                }
              }

              while (v64 != v63);
              v65 = v111;
            }

            v112 = v63;
            operator delete(v65);
          }

          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          sub_100BEFC(__p, v62, *(v19 + 48), v19 + 56, *(v19 + 20), *(v19 + 8));
          v111 = v95;
          v112 = v96;
          v113 = &v118;
          v114 = v97;
          v115 = v98;
          v104 = *(v19 + 12);
          v105 = v92;
          v106 = v92;
          v107 = 0;
          v108 = v93;
          v109 = v94;
          v110 = v96[4];
          sub_FFBBEC();
        }

        if (v26[1] != 20)
        {
          v51 = 0;
        }

        if (v51 != 1)
        {
          goto LABEL_97;
        }

LABEL_89:
        v26 = *v26;
LABEL_90:
        if (*v26 == 0x6172675F68746170 && v26[1] == 0x656E6E6F635F6870 && *(v26 + 4) == 1919906915)
        {
          operator new();
        }

        goto LABEL_97;
      }

      if (v50 == 20)
      {
        goto LABEL_89;
      }

LABEL_97:
      if (*(v19 + 2) == 1 && !sub_10E2904(a10))
      {
        *(v20 + 3381) = 1;
        v39 = 2;
      }

      else
      {
        v39 = 0;
      }

LABEL_115:
      if (v130)
      {
        v131 = v130;
        operator delete(v130);
      }

      if (v127)
      {
        v128 = v127;
        operator delete(v127);
      }

      sub_3BECA4(v121);
      if (SHIBYTE(v120) < 0)
      {
        operator delete(v119);
        if (v39 == 3)
        {
          goto LABEL_6;
        }
      }

      else if (v39 == 3)
      {
        goto LABEL_6;
      }

      if (v39)
      {
        break;
      }

LABEL_6:
      ++v23;
    }

    while (v23 != v99);
  }

  v67 = sub_3EB950(v19 + 60424);
  v69 = *(v67 + 8);
  v68 = *(v67 + 16);
  if (v69 != v68)
  {
    v70 = *(v20 + 3332);
    v71 = v68 - v69 - 8;
    if (v71 > 0x3F)
    {
      v73 = (v71 >> 3) + 1;
      v74 = v73 & 7;
      if ((v73 & 7) == 0)
      {
        v74 = 8;
      }

      v75 = v73 - v74;
      v72 = (v69 + 8 * v75);
      v76 = 0uLL;
      v77 = *(v20 + 3332);
      v78 = (v69 + 32);
      do
      {
        v79 = v78 - 8;
        v80 = vld2q_f32(v79);
        v81 = vld2q_f32(v78);
        v77 = vaddq_s32(v77, v80);
        v76 = vaddq_s32(v76, v81);
        v78 += 16;
        v75 -= 8;
      }

      while (v75);
      v70 = vaddvq_s32(vaddq_s32(v76, v77));
    }

    else
    {
      v72 = *(v67 + 8);
    }

    do
    {
      v82 = *v72;
      v72 += 2;
      v70 += v82;
    }

    while (v72 != v68);
    *(v20 + 3332) = v70;
  }

  v83 = sub_68D820(v19 + 60424);
  sub_E09D08(__p, v83);
  v84 = __p[2];
  if (__p[2])
  {
    do
    {
      v85 = sub_D3B7AC((v19 + 60608), v84 + 4);
      if (v85)
      {
        sub_4C2D98(v85 + 2, (v84 + 4));
      }

      else
      {
        sub_D3B9CC((v19 + 60608), v84 + 4, (v84 + 4));
      }

      v84 = *v84;
    }

    while (v84);
  }

  if ((*(v20 + 3380) & 1) != 0 || *(v20 + 3382) == 1)
  {
    sub_74700();
    nullsub_1();
  }

  v86 = __p[2];
  if (__p[2])
  {
    do
    {
      v88 = *v86;
      v89 = v86[8];
      if (v89)
      {
        do
        {
          v90 = *v89;
          operator delete(v89);
          v89 = v90;
        }

        while (v90);
      }

      v91 = v86[6];
      v86[6] = 0;
      if (v91)
      {
        operator delete(v91);
      }

      operator delete(v86);
      v86 = v88;
    }

    while (v88);
  }

  v87 = __p[0];
  __p[0] = 0;
  if (v87)
  {
    operator delete(v87);
  }
}

void sub_10DC8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  if (*(v29 + 47) < 0)
  {
    operator delete(STACK[0x5490]);
  }

  sub_10DEEBC(&a29);
  sub_FE9C4C(&STACK[0x54E8]);
  _Unwind_Resume(a1);
}

void sub_10DCA18(_Unwind_Exception *a1)
{
  if ((v1 & 1) != 0 && SLOBYTE(STACK[0x54E7]) < 0)
  {
    operator delete(STACK[0x54D0]);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10DCB18);
}

void sub_10DCA2C(_Unwind_Exception *a1)
{
  v4 = STACK[0x5A20];
  if (STACK[0x5A20])
  {
    STACK[0x5A28] = v4;
    operator delete(v4);
  }

  v5 = STACK[0x5A08];
  if (STACK[0x5A08])
  {
    STACK[0x5A10] = v5;
    operator delete(v5);
  }

  sub_3BECA4(&STACK[0x5508]);
  if (*(v1 + 143) < 0)
  {
    operator delete(STACK[0x54F0]);
    if ((v2 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (!v2)
  {
    goto LABEL_11;
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(STACK[0x54D0]);
    _Unwind_Resume(a1);
  }

LABEL_11:
  JUMPOUT(0x10DCB18);
}

void sub_10DCAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10DCB18);
}

void sub_10DCB20(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned __int8 a6, void *a7, uint64_t a8)
{
  v8[31] = a6;
  sub_7E9A4(v8);
  operator new();
}

void sub_10DD904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_11BD8(v46 - 224);
  _Unwind_Resume(a1);
}

unint64_t sub_10DDAC4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 16))
  {
    v4 = sub_10DE4B4(a1);
    *(a1 + 8) = v4;
    return v4 - 104;
  }

  else
  {
    sub_1321834(*(a1 + 8), 0, 0);
    *(a1 + 8) = v2 + 104;
    *(a1 + 8) = v2 + 104;
    return v2;
  }
}

void sub_10DDB34(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 8);
  if (*(v5 - 16) < a2)
  {
    *(v5 - 8) = a2;
    v7 = sub_F6D024(a1[1]);
    v9 = *(v4 + 8);
    v8 = *(v4 + 16);
    if (v9 >= v8)
    {
      v11 = *v4;
      v12 = v9 - *v4;
      v13 = v12 >> 4;
      v14 = (v12 >> 4) + 1;
      if (v14 >> 60)
      {
        sub_1794();
      }

      v15 = v8 - v11;
      if (v15 >> 3 > v14)
      {
        v14 = v15 >> 3;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF0)
      {
        v16 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (!(v16 >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v17 = (16 * v13);
      *v17 = a3;
      v17[1] = v7;
      v10 = 16 * v13 + 16;
      memcpy(0, v11, v12);
      *v4 = 0;
      *(v4 + 8) = v10;
      *(v4 + 16) = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v9 = a3;
      v9[1] = v7;
      v10 = (v9 + 2);
    }

    *(v4 + 8) = v10;
    v5 = *(*a1 + 8);
  }

  *(v5 - 16) = a3;
}

void sub_10DDC74(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned __int8 a6, uint64_t *a7, uint64_t a8)
{
  v8 = *a7;
  v18 = a7[1];
  if (*a7 != v18)
  {
    do
    {
      v16 = sub_45AC50(v8);
      v19 = v8;
      for (i = sub_588D8(v8); v16 != i; v16 += 48)
      {
        nullsub_1();
        if (*v17 != *(v17 + 8))
        {
          sub_10DCB20(a1, a2, a3, a4, a5, a6, *v17, a8);
        }
      }

      v8 += 24;
    }

    while (v19 + 24 != v18);
  }
}

void sub_10DE230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10DE278(uint64_t **a1, uint64_t *a2, void *a3)
{
  v7 = 18;
  strcpy(__p, "max_terminal_nodes");
  v4 = sub_63FDC(a3, __p);
  if (v7 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  operator new();
}

void sub_10DE470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10DE4B4(void **a1)
{
  v1 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v4 = 0x276276276276276;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v10 = (8 * ((a1[1] - *a1) >> 3));
  sub_1321834(v10, 0, 0);
  v5 = (104 * v1 + 104);
  v6 = a1[1];
  v7 = (v10 + *a1 - v6);
  sub_10DE608(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  a1[1] = v5;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v5;
}

void sub_10DE5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10DE6E8(va);
  _Unwind_Resume(a1);
}

void sub_10DE608(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      sub_1321834(a4, 0, 0);
      if (a4 != v7)
      {
        v8 = a4[1];
        if ((v8 & 2) != 0)
        {
          v8 = 0;
        }

        else if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v9 = *(v7 + 8);
        if ((v9 & 2) != 0)
        {
          v9 = 0;
        }

        else if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v8 == v9)
        {
          sub_1322668(a4, v7);
        }

        else
        {
          sub_13225E0(a4, v7);
        }
      }

      v7 += 104;
      a4 += 13;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_1321980(v6);
      v6 += 104;
    }
  }
}

uint64_t sub_10DE6E8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    sub_1321980(i - 104);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_10DE73C@<D0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D1>)
{
  v5 = *a2;
  v34 = a2[1];
  if (v34 == *a2)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    result = NAN;
    *(a4 + 24) = xmmword_2291230;
    return result;
  }

  v8 = 0;
  v9 = 0;
  memset(v42 + 4, 0, 25);
  if (a3)
  {
    v10 = 1000000000;
  }

  else
  {
    v10 = 0;
  }

  if (a3)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v32 = v11;
  v33 = v10;
  v12 = 16 * v5;
  v13 = **a1 + 16 * v5;
  v36 = *(v13 + 4);
  v37 = *v13;
  v35 = *(v13 + 8);
  do
  {
    v14 = v9 - v8;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 5);
    v16 = *(a1 + 8);
    if (v15 > *v16)
    {
      break;
    }

    v17 = **a1 + v12;
    v19 = *v17;
    v18 = *(v17 + 4);
    v20 = *(v17 + 8);
    v21 = *v17 - v37;
    if (v19 == v37)
    {
      if (v18 == v36)
      {
        if (v20 >= v35)
        {
          goto LABEL_19;
        }
      }

      else if (v18 >= v36)
      {
LABEL_19:
        v23 = (v18 - v36);
        v38 = v21 | (v23 << 32);
        v39 = v20 - v35;
        if (v23 > *(v16 + 8))
        {
          break;
        }

        goto LABEL_20;
      }
    }

    else if (v19 >= v37)
    {
      goto LABEL_19;
    }

    v22 = (v36 - v18);
    v38 = (v37 - v19) | (v22 << 32);
    v39 = v35 - v20;
    if (v22 > *(v16 + 8))
    {
      break;
    }

LABEL_20:
    v24 = sub_108CF40(&v38, *(v16 + 16), a5);
    v26 = v25;
    v27 = sub_F6C2B0(*(a1 + 16), v5);
    v28 = v15 + 1;
    if (v15 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    if (0x5555555555555556 * (-v8 >> 5) > v28)
    {
      v28 = 0x5555555555555556 * (-v8 >> 5);
    }

    if (0xAAAAAAAAAAAAAAABLL * (-v8 >> 5) >= 0x155555555555555)
    {
      v29 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v29 = v28;
    }

    if (v29)
    {
      if (v29 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v30 = 32 * ((v9 - v8) >> 5);
    *v30 = v27;
    *(v30 + 8) = v33;
    *(v30 + 12) = v42[0];
    *(v30 + 25) = *(v42 + 13);
    *(v30 + 41) = *v41;
    *(v30 + 44) = *&v41[3];
    *(v30 + 48) = 0x3FF0000000000000;
    *(v30 + 56) = 1;
    *(v30 + 57) = *v40;
    *(v30 + 60) = *&v40[3];
    *(v30 + 64) = v24;
    *(v30 + 72) = v26;
    *(v30 + 80) = -1935671296;
    *(v30 + 84) = v32;
    *(v30 + 88) = 0;
    memcpy((96 * v15 + 96 * (v14 / -96)), v8, v14);
    if (v8)
    {
      operator delete(v8);
    }

    v8 = v30 + 96 * (v14 / -96);
    v9 = v30 + 96;
    ++v5;
    v12 += 16;
  }

  while (v34 != v5);
  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = 0;
  result = NAN;
  *(a4 + 24) = xmmword_2291230;
  return result;
}

void sub_10DEADC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_10DEAFC@<D0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D1>)
{
  v5 = *a2;
  v34 = a2[1];
  if (*a2 == v34)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    result = NAN;
    *(a4 + 24) = xmmword_2291230;
    return result;
  }

  v8 = 0;
  v9 = 0;
  memset(v42 + 4, 0, 25);
  if (a3)
  {
    v10 = 1000000000;
  }

  else
  {
    v10 = 0;
  }

  if (a3)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v32 = v11;
  v33 = v10;
  v12 = 16 * v5;
  v13 = **a1 + 16 * v5;
  v36 = *(v13 + 4);
  v37 = *v13;
  v35 = *(v13 + 8);
  do
  {
    v14 = v9 - v8;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 5);
    v16 = *(a1 + 8);
    if (v15 > *v16)
    {
      break;
    }

    v17 = **a1 + v12;
    v19 = *v17;
    v18 = *(v17 + 4);
    v20 = *(v17 + 8);
    v21 = *v17 - v37;
    if (v19 == v37)
    {
      if (v18 == v36)
      {
        if (v20 >= v35)
        {
          goto LABEL_19;
        }
      }

      else if (v18 >= v36)
      {
LABEL_19:
        v23 = (v18 - v36);
        v38 = v21 | (v23 << 32);
        v39 = v20 - v35;
        if (v23 > *(v16 + 8))
        {
          break;
        }

        goto LABEL_20;
      }
    }

    else if (v19 >= v37)
    {
      goto LABEL_19;
    }

    v22 = (v36 - v18);
    v38 = (v37 - v19) | (v22 << 32);
    v39 = v35 - v20;
    if (v22 > *(v16 + 8))
    {
      break;
    }

LABEL_20:
    v24 = sub_108CF40(&v38, *(v16 + 16), a5);
    v26 = v25;
    v27 = sub_F6C2B0(*(a1 + 16), v5);
    v28 = v15 + 1;
    if (v15 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    if (0x5555555555555556 * (-v8 >> 5) > v28)
    {
      v28 = 0x5555555555555556 * (-v8 >> 5);
    }

    if (0xAAAAAAAAAAAAAAABLL * (-v8 >> 5) >= 0x155555555555555)
    {
      v29 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v29 = v28;
    }

    if (v29)
    {
      if (v29 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v30 = 32 * ((v9 - v8) >> 5);
    *v30 = v27;
    *(v30 + 8) = v33;
    *(v30 + 12) = v42[0];
    *(v30 + 25) = *(v42 + 13);
    *(v30 + 41) = *v41;
    *(v30 + 44) = *&v41[3];
    *(v30 + 48) = 0x3FF0000000000000;
    *(v30 + 56) = 1;
    *(v30 + 57) = *v40;
    *(v30 + 60) = *&v40[3];
    *(v30 + 64) = v24;
    *(v30 + 72) = v26;
    *(v30 + 80) = -1935671296;
    *(v30 + 84) = v32;
    *(v30 + 88) = 0;
    memcpy((96 * v15 + 96 * (v14 / -96)), v8, v14);
    if (v8)
    {
      operator delete(v8);
    }

    v8 = v30 + 96 * (v14 / -96);
    v9 = v30 + 96;
    --v5;
    v12 -= 16;
  }

  while (v34 != v5);
  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = 0;
  result = NAN;
  *(a4 + 24) = xmmword_2291230;
  return result;
}

void sub_10DEE9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10DEEBC(void *a1)
{
  v2 = a1[43];
  if (v2)
  {
    v3 = a1[44];
    v4 = a1[43];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
          {
            do
            {
              v8 = *(v6 - 1);
              v6 -= 3;
              if (v8 < 0)
              {
                operator delete(*v6);
              }
            }

            while (v6 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v9 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v9);
        }

        v3 -= 6;
      }

      while (v9 != v2);
      v4 = a1[43];
    }

    a1[44] = v2;
    operator delete(v4);
  }

  sub_1321980((a1 + 21));
  v10 = a1[16];
  if (v10)
  {
    do
    {
      v13 = *v10;
      v14 = v10[8];
      if (v14)
      {
        do
        {
          v15 = *v14;
          operator delete(v14);
          v14 = v15;
        }

        while (v15);
      }

      v16 = v10[6];
      v10[6] = 0;
      if (v16)
      {
        operator delete(v16);
      }

      operator delete(v10);
      v10 = v13;
    }

    while (v13);
  }

  v11 = a1[14];
  a1[14] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return a1;
}

uint64_t sub_10DEFE4(uint64_t a1)
{
  v2 = *(a1 + 21424);
  if (v2)
  {
    *(a1 + 21432) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 21400);
  if (v3)
  {
    *(a1 + 21408) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 21368);
  if (v4)
  {
    *(a1 + 21376) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 21344);
  if (v5)
  {
    *(a1 + 21352) = v5;
    operator delete(v5);
  }

  sub_360988(a1 + 20576);
  sub_1321980(a1 + 20472);
  if (*(a1 + 20440) == 1)
  {
    sub_3E3DF0((a1 + 15128));
    sub_CDE540(a1 + 10096);
    if (*(a1 + 9984) != 1)
    {
LABEL_11:
      v6 = *(a1 + 4568);
      if (!v6)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_CDE540(a1 + 10096);
    if (*(a1 + 9984) != 1)
    {
      goto LABEL_11;
    }
  }

  sub_3E3DF0((a1 + 4672));
  v6 = *(a1 + 4568);
  if (v6)
  {
LABEL_12:
    *(a1 + 4576) = v6;
    operator delete(v6);
  }

LABEL_13:
  v7 = *(a1 + 4544);
  if (v7)
  {
    *(a1 + 4552) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 4520);
  if (v8)
  {
    *(a1 + 4528) = v8;
    operator delete(v8);
  }

  sub_3E3EF8((a1 + 304));
  v9 = *(a1 + 56);
  if (v9)
  {
    *(a1 + 64) = v9;
    operator delete(v9);
  }

  return a1;
}

void *sub_10DF118(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    a1[23] = v2;
    operator delete(v2);
  }

  v3 = a1[19];
  if (v3)
  {
    a1[20] = v3;
    operator delete(v3);
  }

  v4 = a1[16];
  if (v4)
  {
    a1[17] = v4;
    operator delete(v4);
  }

  sub_10DF174((a1 + 1));
  return a1;
}

uint64_t sub_10DF174(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  sub_10DF1D8((a1 + 72));
  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  sub_10DF1D8((a1 + 24));
  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

char **sub_10DF1D8(char **a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 14);
        if (v6)
        {
          *(v3 - 13) = v6;
          operator delete(v6);
        }

        v7 = *(v3 - 24);
        if (v7)
        {
          *(v3 - 23) = v7;
          operator delete(v7);
        }

        v3 -= 208;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_10DF26C(std::string **a1, char *__s, uint64_t *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v9 = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
  }

  *(&__dst + v7) = 0;
  sub_194EA1C(a1, &__dst, a3);
  if (v9 < 0)
  {
    operator delete(__dst);
  }
}

void sub_10DF364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10DF380(uint64_t *a1, unint64_t *a2, unint64_t *a3, double a4, double a5)
{
  v7 = *a1;
  v8 = *a1[1];
  v9 = *a2;
  v10 = a2[1];
  if (*a2 > v10)
  {
    v10 = *a2;
  }

  __p = (v10 - 1);
  v15 = (v9 - 1);
  sub_10DEAFC(v8, &__p, 1, v16, a5);
  v12 = *a1[2];
  v13 = a3[1];
  if (*a3 > v13)
  {
    v13 = *a3;
  }

  v17[0] = *a3;
  v17[1] = v13;
  sub_10DE73C(v12, v17, 0, &__p, v11);
  sub_10DB748(*v7, *(*(v7 + 8) + 32), v16, &__p, 1, 1, *(v7 + 16), **(v7 + 24), 0, *(v7 + 32));
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }
}

void sub_10DF45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
    v18 = a16;
    if (!a16)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v18 = a16;
    if (!a16)
    {
      goto LABEL_3;
    }
  }

  operator delete(v18);
  _Unwind_Resume(exception_object);
}

void sub_10DF4A8()
{
  byte_27C2467 = 3;
  LODWORD(qword_27C2450) = 5136193;
  byte_27C247F = 3;
  LODWORD(qword_27C2468) = 5136194;
  byte_27C2497 = 3;
  LODWORD(qword_27C2480) = 5136195;
  byte_27C24AF = 15;
  strcpy(&qword_27C2498, "vehicle_mass_kg");
  byte_27C24C7 = 21;
  strcpy(&xmmword_27C24B0, "vehicle_cargo_mass_kg");
  byte_27C24DF = 19;
  strcpy(&qword_27C24C8, "vehicle_aux_power_w");
  byte_27C24F7 = 15;
  strcpy(&qword_27C24E0, "dcdc_efficiency");
  strcpy(&qword_27C24F8, "drive_train_efficiency");
  HIBYTE(word_27C250E) = 22;
  operator new();
}

void sub_10DF684(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C250E) < 0)
  {
    sub_21E7CF0();
  }

  sub_21E7CFC();
  _Unwind_Resume(a1);
}

uint64_t sub_10DF6C4(uint64_t a1)
{
  if (*(a1 + 104))
  {
    sub_5AF20();
  }

  return a1 + 8;
}

uint64_t sub_10DF6E4(uint64_t a1)
{
  if (*(a1 + 104) != 1)
  {
    sub_5AF20();
  }

  return a1 + 8;
}

uint64_t sub_10DF708(uint64_t a1)
{
  if (*(a1 + 104) != 1)
  {
    sub_5AF20();
  }

  return a1 + 16;
}

uint64_t sub_10DF72C(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    if (v1 != 1)
    {
      sub_5AF20();
    }

    v2 = *(a1 + 16);
    v3 = (v2 - *v2);
    if (*v3 < 9u)
    {
      return 0;
    }

    v4 = v3[4];
    if (!v4)
    {
      return 0;
    }

    return *(v2 + v4);
  }

  v2 = *(a1 + 8);
  v5 = (v2 - *v2);
  if (*v5 >= 9u)
  {
    v4 = v5[4];
    if (v4)
    {
      return *(v2 + v4);
    }
  }

  return 0;
}

uint64_t sub_10DF7A0(uint64_t result, __int16 a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

uint64_t sub_10DF7AC(uint64_t a1, char a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = &unk_2290750;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = &unk_2290750;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = &unk_2290750;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = &unk_2290750;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = &unk_2290750;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = &unk_2290750;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 320) = &unk_2290750;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 368) = &unk_2290750;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = &unk_2290750;
  *(a1 + 440) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 456) = 0;
  *(a1 + 464) = &unk_2290750;
  *(a1 + 488) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 512) = &unk_2290750;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 560) = &unk_2290750;
  *(a1 + 600) = 0;
  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 608) = &unk_2290750;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 656) = &unk_2290750;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 704) = &unk_2290750;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 752) = &unk_2290750;
  *(a1 + 776) = 0;
  *(a1 + 760) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = &unk_2290750;
  *(a1 + 864) = 0;
  *(a1 + 848) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 872) = &unk_2290750;
  *(a1 + 912) = 0;
  *(a1 + 896) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 920) = &unk_2290750;
  *(a1 + 960) = 0;
  *(a1 + 944) = 0;
  *(a1 + 928) = 0u;
  *(a1 + 968) = &unk_2290750;
  *(a1 + 1008) = 0;
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  *(a1 + 1016) = &unk_2290750;
  *(a1 + 1056) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1024) = 0u;
  *(a1 + 1064) = &unk_2290750;
  *(a1 + 1104) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0u;
  *(a1 + 1112) = &unk_2290750;
  *(a1 + 1152) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1160) = &unk_2290750;
  *(a1 + 1200) = 0;
  *(a1 + 1184) = 0;
  *(a1 + 1168) = 0u;
  *(a1 + 1208) = &unk_2290750;
  *(a1 + 1248) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1216) = 0u;
  *(a1 + 1256) = &unk_2290750;
  *(a1 + 1296) = 0;
  *(a1 + 1280) = 0;
  *(a1 + 1264) = 0u;
  *(a1 + 1304) = &unk_2290750;
  *(a1 + 1344) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 1312) = 0u;
  *(a1 + 1352) = &unk_2290750;
  *(a1 + 1392) = 0;
  *(a1 + 1376) = 0;
  *(a1 + 1360) = 0u;
  *(a1 + 1400) = &unk_2290750;
  *(a1 + 1440) = 0;
  *(a1 + 1424) = 0;
  *(a1 + 1408) = 0u;
  *(a1 + 1448) = &unk_2290750;
  *(a1 + 1488) = 0;
  *(a1 + 1472) = 0;
  *(a1 + 1456) = 0u;
  *(a1 + 1496) = &unk_2290750;
  *(a1 + 1536) = 0;
  *(a1 + 1520) = 0;
  *(a1 + 1504) = 0u;
  *(a1 + 1544) = &unk_2290750;
  *(a1 + 1568) = 0;
  *(a1 + 1552) = 0u;
  *(a1 + 1617) = 0;
  *(a1 + 1620) = 0;
  *(a1 + 1584) = 0;
  *(a1 + 1608) = 0x3E4CCCCD3F000000;
  *(a1 + 1624) = 0;
  *(a1 + 1628) = 0;
  *(a1 + 1630) = 1;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 32;
  *(a1 + 1656) = 0;
  *(a1 + 1660) = 0;
  *(a1 + 1662) = 1;
  v3 = a1 + 1664;
  *(a1 + 1664) = 0;
  *(a1 + 1592) = 16;
  *(a1 + 1600) = 6;
  *(a1 + 1616) = 0;
  *(a1 + 1688) = 0;
  *(a1 + 1672) = 0u;
  *(a1 + 1696) = -1;
  *(a1 + 1720) = 0;
  *(a1 + 1704) = 0u;
  *(a1 + 1728) = -1;
  *(a1 + 1808) = 0;
  *(a1 + 1810) = 0;
  *(a1 + 1812) = 0;
  *(a1 + 1768) = 0u;
  *(a1 + 1784) = 0u;
  *(a1 + 1736) = 0u;
  *(a1 + 1752) = 0u;
  *(a1 + 1800) = 0x3E4CCCCD3F000000;
  sub_11061C0(a1 + 1816);
  *(a1 + 2016) = 0u;
  *(a1 + 2032) = 32;
  v4 = (a1 + 2040);
  sub_11061C0(a1 + 2040);
  *(a1 + 2240) = 0;
  *(a1 + 1784) = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 1800), *(a1 + 2032))));
  *(a1 + 1808) = 0;
  *(a1 + 2456) = 0;
  *(a1 + 2248) = 0u;
  *(a1 + 2264) = 0u;
  *(a1 + 2280) = 0u;
  *(a1 + 2296) = 0u;
  *(a1 + 2312) = 0u;
  *(a1 + 2328) = 0u;
  *(a1 + 2344) = 0u;
  *(a1 + 2360) = 0u;
  *(a1 + 2376) = 0u;
  *(a1 + 2392) = 0u;
  *(a1 + 2408) = 0u;
  *(a1 + 2424) = 0u;
  *(a1 + 2440) = 0u;
  *(a1 + 1617) = 1;
  *(a1 + 1656) = 0x1000000000000;
  v5 = malloc_type_malloc(8 * *(a1 + 1648), 0x100004087442A64uLL);
  *(a1 + 1664) = v5;
  v6 = *(a1 + 1648);
  if (v6)
  {
    v7 = (a1 + 1656);
    v8 = (v5 + 8 * v6);
    v9 = (v6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v9 < 0xF || v5 < v3 && v7 < v8)
    {
      goto LABEL_15;
    }

    v10 = v9 + 1;
    v11 = vld1q_dup_f64(v7);
    v12 = v5 + 1;
    v13 = v10 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v12[-1] = v11;
      *v12 = v11;
      v12 += 2;
      v13 -= 4;
    }

    while (v13);
    v5 = (v5 + 8 * (v10 & 0x3FFFFFFFFFFFFFFCLL));
    if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_15:
      do
      {
        v5->f64[0] = *v7;
        v5 = (v5 + 8);
      }

      while (v5 != v8);
    }
  }

  sub_11061C0(v34);
  *(a1 + 1809) = 1;
  v14 = v34[11];
  *(a1 + 2200) = v34[10];
  *(a1 + 2216) = v14;
  *(a1 + 2232) = v35;
  v15 = v34[7];
  *(a1 + 2136) = v34[6];
  *(a1 + 2152) = v15;
  v16 = v34[9];
  *(a1 + 2168) = v34[8];
  *(a1 + 2184) = v16;
  v17 = v34[3];
  *(a1 + 2072) = v34[2];
  *(a1 + 2088) = v17;
  v18 = v34[5];
  *(a1 + 2104) = v34[4];
  *(a1 + 2120) = v18;
  v19 = v34[1];
  v20 = 200 * *(a1 + 2032);
  *v4 = v34[0];
  *(a1 + 2056) = v19;
  v21 = malloc_type_malloc(v20, 0x1000040ABD2C8F2uLL);
  *(a1 + 2240) = v21;
  v22 = *(a1 + 2032);
  if (v22)
  {
    v23 = 200 * v22;
    do
    {
      *v21 = *v4;
      v24 = *(a1 + 2056);
      v25 = *(a1 + 2072);
      v26 = *(a1 + 2104);
      v21[3] = *(a1 + 2088);
      v21[4] = v26;
      v21[1] = v24;
      v21[2] = v25;
      v27 = *(a1 + 2120);
      v28 = *(a1 + 2136);
      v29 = *(a1 + 2168);
      v21[7] = *(a1 + 2152);
      v21[8] = v29;
      v21[5] = v27;
      v21[6] = v28;
      v30 = *(a1 + 2184);
      v31 = *(a1 + 2200);
      v32 = *(a1 + 2216);
      *(v21 + 24) = *(a1 + 2232);
      v21[10] = v31;
      v21[11] = v32;
      v21[9] = v30;
      v21 = (v21 + 200);
      v23 -= 200;
    }

    while (v23);
  }

  return a1;
}

void sub_10DFCB4(_Unwind_Exception *a1)
{
  sub_10E37B8(v4);
  v10 = v1[280];
  if (v10)
  {
    free(v10);
    v11 = v1[220];
    if (!v11)
    {
LABEL_3:
      v12 = *v8;
      if (!*v8)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v11 = v1[220];
    if (!v11)
    {
      goto LABEL_3;
    }
  }

  v1[221] = v11;
  operator delete(v11);
  v12 = *v8;
  if (!*v8)
  {
LABEL_4:
    v13 = *v7;
    if (!*v7)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v1[218] = v12;
  operator delete(v12);
  v13 = *v7;
  if (!*v7)
  {
LABEL_5:
    v14 = *v6;
    if (!*v6)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v1[214] = v13;
  operator delete(v13);
  v14 = *v6;
  if (!*v6)
  {
LABEL_6:
    v15 = *v5;
    if (!*v5)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v1[210] = v14;
  operator delete(v14);
  v15 = *v5;
  if (!*v5)
  {
LABEL_7:
    sub_360988((v1 + 103));
    v16 = v1[100];
    if (!v16)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  free(v15);
  sub_360988((v1 + 103));
  v16 = v1[100];
  if (!v16)
  {
LABEL_8:
    sub_360988(v3);
    sub_CDCD6C(v2);
    _Unwind_Resume(a1);
  }

LABEL_15:
  v1[101] = v16;
  operator delete(v16);
  sub_360988(v3);
  sub_CDCD6C(v2);
  _Unwind_Resume(a1);
}

BOOL sub_10DFE00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v8 != v9)
  {
    while (1)
    {
      nullsub_1();
      if (sub_F6E668(*v10, a2))
      {
        break;
      }

      v8 += 48;
      if (v8 == v9)
      {
        v8 = v9;
        break;
      }
    }

    v9 = *(a1 + 16);
  }

  if (v8 == v9)
  {
    v12[0] = 0;
    v12[1] = sub_F6D008(a2);
    sub_10DFEB4(a1, a2, a3, v12, a4, 1);
  }

  return v8 == v9;
}

void sub_10DFEB4(uint64_t a1, void *a2, uint64_t a3, unint64_t *a4, uint64_t a5, int a6)
{
  v7 = a5;
  if (sub_F695B8(a2) && (*a1 & 1) == 0)
  {
    if (v7 && a6)
    {
      v18 = *(a1 + 16);
      if (v18 >= *(a1 + 24))
      {
        *(a1 + 16) = sub_1006728((a1 + 8), a2);
      }

      else
      {
        sub_F63718(*(a1 + 16), a2);
        *(a1 + 16) = v18 + 48;
        *(a1 + 16) = v18 + 48;
      }
    }
  }

  else
  {
    v12 = sub_F695B8(a2);
    v13 = *a4;
    if (v12 || v13 != a4[1])
    {
      v30 = 0;
      v20 = 0;
      v22 = 0;
      v23 = 0;
      v21 = 0;
      v24 = 0;
      v25 = 0x3FF0000000000000;
      v26 = 1;
      v27 = 0;
      v28 = 0;
      v29[0] = 2359296000;
      *(v29 + 7) = 0;
      v19 = sub_F6C2B0(a2, v13);
      v14 = sub_73F1C(a2);
      v15 = sub_10E0698(a1, &v30, &v20, &v19, v14, (a1 + 1672), (a1 + 1736), 0xFFFFFFFFuLL);
      v30 = sub_F6C2B0(a2, a4[1]);
      v16 = sub_F69058(a2);
      v19 = 0;
      v20 = 0;
      v22 = 0;
      v23 = 0;
      v21 = 0;
      v24 = 0;
      v25 = 0x3FF0000000000000;
      v26 = 1;
      v27 = 0;
      v28 = 0;
      v29[0] = 2359296000;
      *(v29 + 7) = 0;
      v17 = sub_10E0698(a1, &v30, v16, &v19, &v20, (a1 + 1704), (a1 + 1760), 0xFFFFFFFFuLL);
      sub_10E09C8(a1, a2, a3, a4, v7, v15, v17);
    }
  }
}

void sub_10E0080(void *a1@<X0>, uint64_t a2@<X2>, char **a3@<X8>)
{
  nullsub_1();
  v8 = *v6;
  v7 = v6[1];
  if (*v6 == v7)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v9 = v6;
    if (v7 - v8 == 552)
    {
      v10 = a1[217];
      v11 = a1[218];
      if (v10 != v11)
      {
        v12 = v10 + 112;
        while (1)
        {
          if (*(v12 - 8) == sub_F6C788(v8))
          {
            v14 = sub_73F1C(v8);
            if (sub_F71798(v12, v14))
            {
              break;
            }
          }

          v13 = v12 + 88;
          v12 += 200;
          if (v13 == v11)
          {
            goto LABEL_9;
          }
        }

        v11 = v12 - 112;
LABEL_9:
        v10 = v11;
        v11 = a1[218];
      }

      if (v10 == v11)
      {
        v15 = a1[220];
        v16 = a1[221];
        if (v15 == v16)
        {
LABEL_12:
          if (v15 != v16)
          {
LABEL_13:
            v17 = *v9;
            v18 = a1[1];
            v19 = a1[2];
            if (v18 != v19)
            {
              goto LABEL_27;
            }

            goto LABEL_14;
          }

LABEL_26:
          v17 = *v9;
          v18 = a1[1];
          v19 = a1[2];
          if (v18 != v19)
          {
            do
            {
LABEL_27:
              nullsub_1();
              if (sub_F6E668(*v26, v17))
              {
                goto LABEL_30;
              }

              v18 += 48;
            }

            while (v18 != v19);
            v18 = v19;
LABEL_30:
            if (v18 != a1[2])
            {
LABEL_15:
              *a3 = 0;
              a3[1] = 0;
              a3[2] = 0;
              operator new();
            }

LABEL_31:
            v61 = 0;
            v62 = sub_F6D008(v17);
            sub_10DFEB4(a1, v17, a2, &v61, 1, 1);
            goto LABEL_15;
          }

LABEL_14:
          if (v18 != v19)
          {
            goto LABEL_15;
          }

          goto LABEL_31;
        }
      }

      else
      {
        v15 = a1[220];
        v16 = a1[221];
        if (v15 == v16)
        {
          goto LABEL_12;
        }
      }

      v22 = *v9;
      v23 = v15 + 16;
      while (1)
      {
        if (*(v23 - 8) == sub_F6C7D0(v22))
        {
          v25 = sub_F69058(v22);
          if (sub_F71798(v23, v25))
          {
            break;
          }
        }

        v24 = v23 + 184;
        v23 += 200;
        if (v24 == v16)
        {
          goto LABEL_25;
        }
      }

      v16 = v23 - 16;
LABEL_25:
      if (v16 != a1[221])
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v71 = sub_F6C788(v8);
    v60[0] = 0;
    LODWORD(v61) = 0;
    v63 = 0;
    v64 = 0;
    v62 = 0;
    v65 = 0;
    v66 = 0x3FF0000000000000;
    v67 = 1;
    v68 = 0;
    v69 = 0;
    v70[0] = 2359296000;
    *(v70 + 7) = 0;
    v20 = sub_73F1C(*v9);
    sub_F98EF8((a1 + 4), &v71, v72);
    if (v72[0])
    {
      v21 = *(v73 + 8);
    }

    else
    {
      v21 = 0xFFFFFFFFLL;
    }

    v27 = sub_10E0698(a1, v60, &v61, &v71, v20, a1 + 209, a1 + 217, v21);
    v29 = a3[1];
    v28 = a3[2];
    if (v29 >= v28)
    {
      v31 = *a3;
      v32 = v29 - *a3;
      v33 = v32 >> 2;
      v34 = (v32 >> 2) + 1;
      if (v34 >> 62)
      {
        sub_1794();
      }

      v35 = v28 - v31;
      if (v35 >> 1 > v34)
      {
        v34 = v35 >> 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v36 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = v34;
      }

      if (v36)
      {
        if (!(v36 >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      *(4 * v33) = v27;
      v30 = (4 * v33 + 4);
      memcpy(0, v31, v32);
      *a3 = 0;
      a3[1] = v30;
      a3[2] = 0;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      *v29 = v27;
      v30 = v29 + 4;
    }

    a3[1] = v30;
    v60[0] = a1;
    v60[1] = a3;
    v37 = *v9;
    v38 = v9[1];
    if (*v9 != v38 && v37 + 552 != v38)
    {
      do
      {
        sub_10E3998(v60, v37, v37 + 552);
        v39 = v37 + 1104;
        v37 += 552;
      }

      while (v39 != v38);
      v38 = v9[1];
    }

    v59 = sub_F6C7D0(v38 - 552);
    v40 = sub_F69058(v9[1] - 552);
    v58 = 0;
    LODWORD(v61) = 0;
    v63 = 0;
    v64 = 0;
    v62 = 0;
    v65 = 0;
    v66 = 0x3FF0000000000000;
    v67 = 1;
    v68 = 0;
    v69 = 0;
    v70[0] = 2359296000;
    *(v70 + 7) = 0;
    sub_F98EF8((a1 + 4), &v59, v72);
    if (v72[0])
    {
      v41 = *(v73 + 8);
    }

    else
    {
      v41 = 0xFFFFFFFFLL;
    }

    v42 = sub_10E0698(a1, &v59, v40, &v58, &v61, a1 + 213, a1 + 220, v41);
    v44 = a3[1];
    v43 = a3[2];
    if (v44 >= v43)
    {
      v46 = *a3;
      v47 = v44 - *a3;
      v48 = v47 >> 2;
      v49 = (v47 >> 2) + 1;
      if (v49 >> 62)
      {
        sub_1794();
      }

      v50 = v43 - v46;
      if (v50 >> 1 > v49)
      {
        v49 = v50 >> 1;
      }

      if (v50 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v51 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v51 = v49;
      }

      if (v51)
      {
        if (!(v51 >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      *(4 * v48) = v42;
      v45 = (4 * v48 + 4);
      memcpy(0, v46, v47);
      *a3 = 0;
      a3[1] = v45;
      a3[2] = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else
    {
      *v44 = v42;
      v45 = v44 + 4;
    }

    a3[1] = v45;
    v52 = v9[1] - *v9;
    if (v52)
    {
      v53 = 0;
      v54 = 0;
      v55 = 0xF128CFC4A33F128DLL * (v52 >> 3);
      do
      {
        v56 = sub_F6D008(*v9 + v53);
        v57 = *v9;
        v61 = 0;
        v62 = v56;
        sub_10E0B4C(a1, v57 + v53, a2, &v61, *&(*a3)[4 * v54], *&(*a3)[4 * v54 + 4], 0);
        ++v54;
        v53 += 552;
      }

      while (v55 != v54);
    }
  }
}

void sub_10E0658(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10E0698(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t **a6, unsigned int **a7, unint64_t a8)
{
  v16 = *a7;
  v17 = a7[1];
  if (*a7 != v17)
  {
    v18 = (v16 + 28);
    while (*(v18 - 104) != *a2 || !sub_F71798(v18 - 96, a3) || *(v18 - 8) != *a4 || !sub_F71798(v18, a5))
    {
      v19 = (v18 + 88);
      v18 += 200;
      if (v19 == v17)
      {
        goto LABEL_9;
      }
    }

    v17 = (v18 - 112);
LABEL_9:
    v16 = v17;
    v17 = a7[1];
  }

  if (v16 != v17)
  {
    return *v16;
  }

  v20 = *a6;
  v21 = a6[1];
  if (*a6 != v21)
  {
    while (1)
    {
      v27 = *v20;
      if (*v20 == *a2)
      {
        if (sub_F71798((v20 + 1), a3))
        {
          break;
        }

        v27 = *v20;
      }

      if (v27 == *a4 && sub_F71798((v20 + 1), a5))
      {
        break;
      }

      v20 += 12;
      if (v20 == v21)
      {
        v20 = v21;
        break;
      }
    }

    if (v20 != a6[1])
    {
      v22 = a1[294] - a1[293];
      a8 = v22 >> 2;
      v39 = v22 >> 2;
      if (*a2)
      {
        v23 = a2;
      }

      else
      {
        v23 = a4;
      }

      v24 = a1[101];
      v25 = a1[102];
      if (v24 >= v25)
      {
        v28 = a1[100];
        v29 = v24 - v28;
        v30 = (v24 - v28) >> 3;
        v31 = v30 + 1;
        if ((v30 + 1) >> 61)
        {
          sub_1794();
        }

        v32 = v25 - v28;
        if (v32 >> 2 > v31)
        {
          v31 = v32 >> 2;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFF8)
        {
          v33 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        v38 = v22;
        if (v33)
        {
          if (!(v33 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v30) = *v23;
        v26 = 8 * v30 + 8;
        memcpy(0, v28, v29);
        a1[100] = 0;
        a1[101] = v26;
        a1[102] = 0;
        if (v28)
        {
          operator delete(v28);
        }

        v22 = v38;
      }

      else
      {
        *v24 = *v23;
        v26 = (v24 + 8);
      }

      a1[101] = v26;
      v34 = v22 >> 2;
      sub_F98CE4(a1 + 281, v34);
      v35 = a7[1];
      if (v35 >= a7[2])
      {
        v36 = sub_10E3824(a7, &v39, a2, a3, a4, a5);
        a8 = v39;
      }

      else
      {
        sub_1106228(a7[1], v34, a2, a3, a4, a5);
        v36 = v35 + 50;
        a7[1] = v35 + 50;
      }

      a7[1] = v36;
    }
  }

  return a8;
}

uint64_t sub_10E0980(uint64_t a1, unint64_t *a2)
{
  sub_F98EF8(a1 + 32, a2, v3);
  if (v3[0])
  {
    return *(v3[3] + 8);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_10E09C8(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4, int a5, unsigned int a6, unsigned int a7)
{
  if (a5 && !*a4 && (v10 = a4[1], v11 = a2, v12 = a4, v13 = a3, v14 = sub_F6D008(a2), a3 = v13, a4 = v12, a2 = v11, v10 == v14))
  {
    sub_10E0B4C(a1, v11, v13, v12, a6, a7, 1);
    v15 = a1[2];
    if (v15 >= a1[3])
    {
      v16 = sub_1006728(a1 + 1, v11);
    }

    else
    {
      sub_F63718(a1[2], v11);
      v16 = v15 + 48;
      a1[2] = v15 + 48;
    }

    a1[2] = v16;
  }

  else
  {

    sub_10E0B4C(a1, a2, a3, a4, a6, a7, 0);
  }
}

void sub_10E0AC8(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  if (!sub_F695B8(a2) || *a1 == 1)
  {

    sub_10E0B4C(a1, a2, 0, a3, 0xFFFFFFFF, 0xFFFFFFFF, 0);
  }
}

void sub_10E0B4C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5, unsigned int a6, int a7)
{
  v83 = sub_10E3064(0xAAAAAAAAAAAAAAABLL * ((a1[2] - a1[1]) >> 4));
  v96 = a1;
  v90 = a2;
  v88 = a5;
  if (sub_F695B8(a2))
  {
    if (a5 == -1)
    {
      *v97 = sub_F6C788(a2);
      v88 = sub_10E31A4(&v96, v97);
    }

    if (a6 == -1)
    {
      *v97 = sub_F6C7D0(a2);
      a6 = sub_10E31A4(&v96, v97);
    }

    v11 = sub_F6C788(a2);
    v12 = sub_F69654(a2);
    v91 = *v12;
    v92 = *(v12 + 16);
    v93 = *(v12 + 32);
    *v97 = v11;
    *&v97[8] = v91;
    *&v97[24] = v92;
    *&v97[40] = v93;
    v101 = 1;
    sub_10E21B4(a1, v88, a6, v97, 1, &v94);
    v13 = sub_F68F18(a2);
    v14 = *v94 + 176 * v95;
    *(v14 + 136) = v13;
    *(v14 + 144) = a3;
    v15 = sub_F6AF4C(a2);
    if (HIWORD(v15) == 2 && v15 != 0xFFFFFFFFLL && (v15 & 0xFFFF00000000) != 0xFFFF00000000)
    {
      v16 = v95;
      v17 = *v94;
      v18 = sub_F6AF4C(v90);
      v19 = (v17 + 176 * v16);
      v21 = v19[20];
      v20 = v19[21];
      if (v21 >= v20)
      {
        v73 = v19[19];
        v74 = v21 - v73;
        v75 = (v21 - v73) >> 4;
        v76 = v75 + 1;
        if ((v75 + 1) >> 60)
        {
          sub_1794();
        }

        v77 = v20 - v73;
        if (v77 >> 3 > v76)
        {
          v76 = v77 >> 3;
        }

        if (v77 >= 0x7FFFFFFFFFFFFFF0)
        {
          v78 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v78 = v76;
        }

        if (v78)
        {
          if (!(v78 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v79 = (16 * v75);
        *v79 = v18;
        v79[1] = 0;
        v22 = 16 * v75 + 16;
        memcpy(0, v73, v74);
        v19[19] = 0;
        v19[20] = v22;
        v19[21] = 0;
        if (v73)
        {
          operator delete(v73);
        }
      }

      else
      {
        *v21 = v18;
        v21[1] = 0;
        v22 = (v21 + 2);
      }

      v19[20] = v22;
    }

    return;
  }

  sub_10E33A4(a1 + 281, a4[1] - *a4 + ((a1[294] - a1[293]) >> 2), -1171354717 * ((a1[297] - a1[296]) >> 4) + a4[1] - *a4, 1, 0);
  v24 = *a4;
  v23 = a4[1];
  v25 = *a4 >= v23;
  if (*a4 > v23)
  {
    v23 = *a4;
  }

  v85 = v23;
  if (!v25)
  {
    v84 = a1 + 296;
    v82 = a1 + 305;
    while (1)
    {
      v26 = sub_F6C648(v90, v24);
      v27 = v26;
      v28 = v88;
      if (v24 != 0 || a5 == -1)
      {
        *v97 = (((*(v26 + 32) >> 16) & 0xFFFF0000 | (*(v26 + 32) << 32) | (2 * ((*(v26 + 32) & 0xFF000000000000) == 0))) + 4 * *(v26 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v26 + 88) & 1;
        v28 = sub_10E31A4(&v96, v97);
      }

      v29 = a6;
      if (v24 != sub_F6D008(v90) - 1 || a6 == -1)
      {
        *v97 = (((*(v27 + 72) >> 16) & 0xFFFF0000 | (*(v27 + 72) << 32) | (2 * ((*(v27 + 72) & 0xFF000000000000) == 0))) + 4 * *(v27 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v27 + 88) >> 1) & 1;
        v29 = sub_10E31A4(&v96, v97);
      }

      v30 = a1[293];
      if (v28 >= ((a1[294] - v30) >> 2))
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v81 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v31 = *(v30 + 4 * v28);
      if (v31 != -1)
      {
        break;
      }

LABEL_25:
      v32 = *(v27 + 16);
      *v97 = *v27;
      *&v97[16] = v32;
      v33 = *(v27 + 32);
      v34 = *(v27 + 48);
      v35 = *(v27 + 80);
      v99 = *(v27 + 64);
      v100 = v35;
      *&v97[32] = v33;
      v98 = v34;
      v101 = 0;
      sub_10E21B4(a1, v28, v29, v97, 0, &v91);
      v36 = v91;
      v31 = v92;
      v37 = sub_F68F18(v90);
      v38 = *v36 + 176 * v31;
      *(v38 + 136) = v37;
      *(v38 + 144) = a3;
      if (a7)
      {
        goto LABEL_28;
      }

LABEL_43:
      v55 = sub_F6AF4C(v90);
      if (HIWORD(v55) == 2 && v55 != 0xFFFFFFFFLL && (v55 & 0xFFFF00000000) != 0xFFFF00000000)
      {
        v56 = *v36;
        v57 = sub_F6AF4C(v90);
        v58 = (v56 + 176 * v31);
        v60 = v58[20];
        v59 = v58[21];
        if (v60 >= v59)
        {
          v62 = v58[19];
          v63 = v60 - v62;
          v64 = (v60 - v62) >> 4;
          v65 = v64 + 1;
          if ((v64 + 1) >> 60)
          {
            sub_1794();
          }

          v66 = v59 - v62;
          if (v66 >> 3 > v65)
          {
            v65 = v66 >> 3;
          }

          if (v66 >= 0x7FFFFFFFFFFFFFF0)
          {
            v67 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v67 = v65;
          }

          if (v67)
          {
            if (!(v67 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v68 = (16 * v64);
          *v68 = v57;
          v68[1] = v24;
          v61 = 16 * v64 + 16;
          memcpy(0, v62, v63);
          v58[19] = 0;
          v58[20] = v61;
          v58[21] = 0;
          if (v62)
          {
            operator delete(v62);
          }
        }

        else
        {
          *v60 = v57;
          v60[1] = v24;
          v61 = (v60 + 2);
        }

        v58[20] = v61;
        v69 = a1[305];
        v70 = a1[294] - a1[293];
        if ((a1[306] - v69) >> 2 < (v70 >> 2) || v70 >> 2 <= v29)
        {
          sub_F98CE4(a1 + 281, v29);
          v71 = a1[294] - a1[293];
          *v97 = 0;
          v97[2] = 0;
          v69 = a1[305];
          v72 = (a1[306] - v69) >> 2;
          if (v71 >> 2 <= v72)
          {
            if (v71 >> 2 < v72)
            {
              a1[306] = v69 + v71;
            }
          }

          else
          {
            sub_10E4FEC(v82, (v71 >> 2) - v72, v97);
            v69 = *v82;
          }
        }

        *(v69 + 4 * v29 + 2) = 1;
      }

      ++v24;
      a5 = v88;
      if (v24 == v85)
      {
        return;
      }
    }

    while (*(*v84 + 176 * v31) != v29)
    {
      v31 = *(a1[299] + 4 * v31);
      if (v31 == -1)
      {
        goto LABEL_25;
      }
    }

    v39 = sub_F68F18(v90);
    v36 = a1 + 296;
    v40 = *v84 + 176 * v31;
    v41 = *(v40 + 144) & a3;
    *(v40 + 136) &= v39;
    *(v40 + 144) = v41;
    if (!a7)
    {
      goto LABEL_43;
    }

LABEL_28:
    v42 = (*v36 + 176 * v31);
    v44 = v42[15];
    v43 = v42[16];
    if (v44 >= v43)
    {
      v46 = v42[14];
      v47 = v44 - v46;
      v48 = (v44 - v46) >> 1;
      if (v48 <= -2)
      {
        sub_1794();
      }

      v49 = v43 - v46;
      if (v49 <= v48 + 1)
      {
        v50 = v48 + 1;
      }

      else
      {
        v50 = v49;
      }

      if (v49 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v51 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v51 = v50;
      }

      if (v51)
      {
        if ((v51 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1808();
      }

      v52 = (v44 - v46) >> 1;
      v53 = (2 * v48);
      v54 = (2 * v48 - 2 * v52);
      *v53 = v83;
      v45 = v53 + 1;
      memcpy(v54, v46, v47);
      v42[14] = v54;
      v42[15] = v45;
      v42[16] = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else
    {
      *v44 = v83;
      v45 = v44 + 2;
    }

    v42[15] = v45;
    goto LABEL_43;
  }
}