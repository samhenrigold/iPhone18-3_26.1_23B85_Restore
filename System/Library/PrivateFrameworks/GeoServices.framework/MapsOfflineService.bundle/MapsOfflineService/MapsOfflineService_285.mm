void sub_1153B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1153C70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1153B64(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_3ECFD8(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_3ED39C(a1 + 24, *(a2 + 24), *(a2 + 32), 0xE21A291C077975B9 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  if (*(a2 + 127) < 0)
  {
    sub_325C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v7;
  }

  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v8;
  return a1;
}

void sub_1153C40(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1153C70(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 152;
    sub_60B38C(i - 152);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t **sub_1153CC4(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_AAD8(&v25, a2, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_43;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v9)
    {
      v11 = v7 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_43:
    operator new();
  }

  v14 = *(v3 + 23);
  if (v14 >= 0)
  {
    v15 = *(v3 + 23);
  }

  else
  {
    v15 = v3[1];
  }

  if (v14 < 0)
  {
    v3 = *v3;
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v13[1];
      if (v20 == v8)
      {
        v21 = *(v13 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v13[3];
        }

        if (v21 == v15)
        {
          v23 = v22 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v23, v3, v15))
          {
            return v13;
          }
        }
      }

      else if ((v20 & (*&v9 - 1)) != v11)
      {
        goto LABEL_43;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_43;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_43;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v3, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_11540C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_11540DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_11540F4(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = *(v2 + 23);
    if (v13 >= 0)
    {
      v14 = *(v2 + 23);
    }

    else
    {
      v14 = v2[1];
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void sub_11542AC()
{
  byte_27C35E7 = 3;
  LODWORD(qword_27C35D0) = 5136193;
  byte_27C35FF = 3;
  LODWORD(qword_27C35E8) = 5136194;
  byte_27C3617 = 3;
  LODWORD(qword_27C3600) = 5136195;
  byte_27C362F = 15;
  strcpy(&qword_27C3618, "vehicle_mass_kg");
  byte_27C3647 = 21;
  strcpy(&xmmword_27C3630, "vehicle_cargo_mass_kg");
  byte_27C365F = 19;
  strcpy(&qword_27C3648, "vehicle_aux_power_w");
  byte_27C3677 = 15;
  strcpy(&qword_27C3660, "dcdc_efficiency");
  strcpy(&qword_27C3678, "drive_train_efficiency");
  HIBYTE(word_27C368E) = 22;
  operator new();
}

void sub_1154488(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C368E) < 0)
  {
    sub_21E8BA4();
  }

  sub_21E8BB0();
  _Unwind_Resume(a1);
}

void sub_11544A8(BOOL *a1, void *a2, uint64_t a3)
{
  v7 = 7;
  strcpy(&__p, "enabled");
  v4 = sub_5F9D0(a2, &__p);
  if (v7 < 0)
  {
    v5 = v4;
    operator delete(__p);
    v4 = v5;
  }

  *a1 = v4;
  operator new();
}

void sub_1154834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    v18 = *v16;
    if (!*v16)
    {
LABEL_3:
      v19 = v15[3];
      if (!v19)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      v15[4] = v19;
      operator delete(v19);
      goto LABEL_8;
    }
  }

  else
  {
    v18 = *v16;
    if (!*v16)
    {
      goto LABEL_3;
    }
  }

  v15[7] = v18;
  operator delete(v18);
  v19 = v15[3];
  if (!v19)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_1154B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v26 = *v24;
  if (*v24)
  {
    *(v24 + 8) = v26;
    operator delete(v26);
    sub_6BC10(&a9);
    _Unwind_Resume(a1);
  }

  sub_6BC10(&a9);
  _Unwind_Resume(a1);
}

unint64_t sub_1154BD4(uint64_t a1, uint64_t *a2)
{
  result = sub_1154D04(a1, a2);
  v5 = *a2;
  v6 = a2[1] - *a2;
  if (v6)
  {
    v7 = result;
    LODWORD(result) = 0;
    v8 = 0;
    v9 = 0x3AEF6CA970586723 * (v6 >> 3);
    v10 = v7;
    for (i = 856; ; i += 1112)
    {
      if (*(v5 + i) < v10 && (*(v5 + i + 152) &= ~1uLL, *(a1 + 72) == 1))
      {
        v13 = result;
        sub_195A048((v5 + i + 184), "Remove EV candidate that do not have the minimum required number of stops", 0x49uLL);
        LODWORD(result) = v13;
        v12 = *(a1 + 48);
        if (v12 != *(a1 + 56))
        {
LABEL_8:
          v5 = *a2;
          if (*(v12 + v8))
          {
            *(v5 + i + 152) &= ~1uLL;
          }

          goto LABEL_4;
        }
      }

      else
      {
        v12 = *(a1 + 48);
        if (v12 != *(a1 + 56))
        {
          goto LABEL_8;
        }
      }

      v5 = *a2;
LABEL_4:
      result = (*(v5 + i + 152) & 1) + result;
      if (v9 == ++v8)
      {
        return result;
      }
    }
  }

  return 0;
}

unint64_t sub_1154D04(uint64_t a1, uint64_t *a2)
{
  *(a1 + 56) = *(a1 + 48);
  if (*a1 != 1)
  {
    return 0;
  }

  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v4 = a2[1];
  v5 = *a2;
  if (*a2 == v4)
  {
    return 0;
  }

  while (1)
  {
    if (sub_4C49D0(*(v5 + 8)) || ((v6 = sub_58BBC(*(v5 + 8)), v7 = sub_4D2130(*v6), *v7 != 0x7FFFFFFF) ? (v8 = v7[9] == 0x7FFFFFFF) : (v8 = 1), v8))
    {
      LOBYTE(v9) = 0;
      if (*(v5 + 1008))
      {
        goto LABEL_21;
      }

      goto LABEL_5;
    }

    v10 = v7;
    if (sub_4566B4(v7 + 2))
    {
      break;
    }

    LOBYTE(v9) = 0;
LABEL_20:
    if (*(v5 + 1008))
    {
      goto LABEL_21;
    }

LABEL_5:
    v5 += 1112;
    if (v5 == v4)
    {
      v15 = 1;
      v16 = *a2;
      v17 = a2[1];
      v18 = *a2;
      if (*a2 == v17)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }
  }

  v9 = v10[28];
  switch(v9)
  {
    case 0:
      goto LABEL_20;
    case 2:
      v13 = *(v10 + 13);
      v12 = v13 >= 0xFFFFFFFF00000000 || v13 == 0;
      break;
    case 1:
      v12 = *(v10 + 13) == -1;
      break;
    default:
      sub_5AF20();
  }

  LOBYTE(v9) = !v12;
  if ((*(v5 + 1008) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_21:
  if ((v9 & 1) != 0 || *(v5 + 856) > 0.0 || sub_4C513C(*(v5 + 8), 9))
  {
    goto LABEL_5;
  }

  v15 = 0;
  v16 = *a2;
  v17 = a2[1];
  v18 = *a2;
  if (*a2 == v17)
  {
    goto LABEL_42;
  }

LABEL_37:
  v19 = v16 + 1112;
  v18 = v16;
  if (v16 + 1112 != v17)
  {
    v18 = v16;
    do
    {
      if (*(v19 + 856) < *(v18 + 856))
      {
        v18 = v19;
      }

      v19 += 1112;
    }

    while (v19 != v17);
  }

LABEL_42:
  v20 = *(v18 + 856);
  if (v15)
  {
    return v20;
  }

  if (v16 == v17)
  {
    v46 = 0.0;
    goto LABEL_84;
  }

  while (2)
  {
    if ((*(v16 + 1008) & 1) == 0 || *(v16 + 856) != v20)
    {
      goto LABEL_46;
    }

    if ((*(a1 + 1) != 1 || *(v16 + 904) <= 0.0) && (*(a1 + 2) != 1 || *(v16 + 912) <= 0.0))
    {
      v22 = *(a1 + 4);
      v23 = v22 / 1000;
      v24 = v22 % 1000;
      if (v22 < 0)
      {
        v25 = 65036;
      }

      else
      {
        v25 = 500;
      }

      v26 = v25 + v24 + ((-31981 * (v25 + v24)) >> 16);
      v21 = *(v16 + 888) >= (v23 + (v26 >> 9) + ((v26 & 0x8000) >> 15));
      if ((sub_4C513C(*(v16 + 8), 9) & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_45;
    }

    v21 = 0;
    if (sub_4C513C(*(v16 + 8), 9))
    {
LABEL_45:
      if (v21)
      {
        return v20;
      }

      goto LABEL_46;
    }

LABEL_59:
    if (v21 & (*(a1 + 3) ^ 1 | (*(v16 + 920) <= 0.0)))
    {
      return v20;
    }

LABEL_46:
    v16 += 1112;
    if (v16 != v17)
    {
      continue;
    }

    break;
  }

  v27 = *a2;
  v28 = a2[1];
  v47 = 0x7FFFFFFF;
  v46 = 0.0;
  v29 = v28 - v27;
  if (v29)
  {
    v30 = 0x3AEF6CA970586723 * (v29 >> 3);
    v31 = 0.0;
    v32 = 0x7FFFFFFF;
    while ((*(v27 + 1008) & 1) == 0 || v20 != round(*(v27 + 856)))
    {
LABEL_72:
      v27 += 1112;
      if (!--v30)
      {
        goto LABEL_85;
      }
    }

    v36 = *(v27 + 40);
    if (v36 >= 0.0)
    {
      if (v36 < 4.50359963e15)
      {
        v37 = (v36 + v36) + 1;
LABEL_80:
        v36 = (v37 >> 1);
      }
    }

    else if (v36 > -4.50359963e15)
    {
      v37 = (v36 + v36) - 1 + (((v36 + v36) - 1) >> 63);
      goto LABEL_80;
    }

    v38 = v36;
    v45 = v36;
    if (v32 == 0x7FFFFFFF)
    {
      v34 = &v45;
    }

    else
    {
      if (v32 <= v38)
      {
        v33 = &v47;
      }

      else
      {
        v33 = &v45;
      }

      if (v38 == 0x7FFFFFFF)
      {
        v34 = &v47;
      }

      else
      {
        v34 = v33;
      }
    }

    v35 = *(v27 + 896);
    v32 = *v34;
    v47 = *v34;
    if (v31 < v35)
    {
      v31 = v35;
    }

    v46 = v31;
    goto LABEL_72;
  }

LABEL_84:
  v31 = 0.0;
  v32 = 0x7FFFFFFF;
LABEL_85:
  if (v31 < *(*(a1 + 32) - 16))
  {
    v39 = sub_FB43D4(&v46, (a1 + 24));
    v40 = *a2;
    v41 = a2[1];
    if (*a2 != v41)
    {
      while (2)
      {
        if ((*(v40 + 1008) & 1) != 0 && v20 + 1.0 == round(*(v40 + 856)))
        {
          v42 = *(v40 + 40);
          if (v42 >= 0.0)
          {
            if (v42 < 4.50359963e15)
            {
              v44 = (v42 + v42) + 1;
LABEL_88:
              v42 = (v44 >> 1);
            }
          }

          else if (v42 > -4.50359963e15)
          {
            v44 = (v42 + v42) - 1 + (((v42 + v42) - 1) >> 63);
            goto LABEL_88;
          }

          if (v32 + v39 >= v42 && *(v40 + 896) >= v46 + *(a1 + 16))
          {
            return (v20 + 1.0);
          }
        }

        v40 += 1112;
        if (v40 == v41)
        {
          return v20;
        }

        continue;
      }
    }
  }

  return v20;
}

void sub_11551E4()
{
  byte_27C36EF = 3;
  LODWORD(qword_27C36D8) = 5136193;
  byte_27C3707 = 3;
  LODWORD(qword_27C36F0) = 5136194;
  byte_27C371F = 3;
  LODWORD(qword_27C3708) = 5136195;
  byte_27C3737 = 15;
  strcpy(&qword_27C3720, "vehicle_mass_kg");
  byte_27C374F = 21;
  strcpy(&xmmword_27C3738, "vehicle_cargo_mass_kg");
  byte_27C3767 = 19;
  strcpy(&qword_27C3750, "vehicle_aux_power_w");
  byte_27C377F = 15;
  strcpy(&qword_27C3768, "dcdc_efficiency");
  strcpy(&qword_27C3780, "drive_train_efficiency");
  HIBYTE(word_27C3796) = 22;
  operator new();
}

void sub_11553C0(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C3796) < 0)
  {
    sub_21E8C80();
  }

  sub_21E8C8C();
  _Unwind_Resume(a1);
}

uint64_t sub_11553E0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      if (*(result + 25))
      {
        break;
      }

      result += 336;
    }

    while (result != v3);
  }

  if (result == v3)
  {
    return a2[1];
  }

  v4 = result;
  v5 = result;
LABEL_6:
  v6 = v5;
  while (1)
  {
    v5 = v6 + 336;
    if (v6 + 336 == v3)
    {
      return result;
    }

    v7 = *(v6 + 361);
    v6 += 336;
    if (v7 == 1)
    {
      if (*(v5 + 16) < *(v4 + 16))
      {
        result = v5;
        v4 = v5;
      }

      goto LABEL_6;
    }
  }
}

uint64_t sub_1155450(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      if (*(result + 25))
      {
        break;
      }

      result += 1112;
    }

    while (result != v3);
  }

  if (result == v3)
  {
    return a2[1];
  }

  v4 = result;
  v5 = result;
LABEL_6:
  v6 = v5;
  while (1)
  {
    v5 = v6 + 1112;
    if (v6 + 1112 == v3)
    {
      return result;
    }

    v7 = *(v6 + 1137);
    v6 += 1112;
    if (v7 == 1)
    {
      if (*(v5 + 16) < *(v4 + 16))
      {
        result = v5;
        v4 = v5;
      }

      goto LABEL_6;
    }
  }
}

void sub_11554C0()
{
  strcpy(v0, "display_traversal_time");
  v0[23] = 22;
  v0[24] = 0;
  *&v1[23] = 272;
  strcpy(v1, "num_name_changes");
  operator new();
}

void sub_1156E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p)
{
  v57 = v55;
  while (1)
  {
    v58 = *(v57 - 9);
    v57 -= 4;
    if (v58 < 0)
    {
      operator delete(*v57);
    }

    if (v57 == &__p)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_1157398(uint64_t *a1, void *a2)
{
  if (*a1 == a1[1])
  {
    return 0;
  }

  v24 = 19;
  strcpy(__p, "is_metrics_relevant");
  v3 = sub_5F680(a2, __p);
  if ((v24 & 0x80000000) == 0)
  {
    v4 = *v3;
    v5 = v3[1];
    if (*v3 != v5)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v20 = v3;
  operator delete(*__p);
  v4 = *v20;
  v5 = v20[1];
  if (*v20 == v5)
  {
    return 0;
  }

  while (1)
  {
LABEL_6:
    if (*(v4 + 8) != 5)
    {
      sub_5AF20();
    }

    v6 = *v4;
    v24 = 8;
    strcpy(__p, "criteria");
    v7 = sub_5F8FC(v6, __p);
    v8 = sub_115766C(v7);
    if (v24 < 0)
    {
      operator delete(*__p);
    }

    v9 = v8 == 37;
    if (v8 == 37)
    {
      goto LABEL_41;
    }

    v24 = 9;
    strcpy(__p, "threshold");
    v10 = sub_63D34(v6, __p);
    if (v24 < 0)
    {
      operator delete(*__p);
    }

    v24 = 4;
    strcpy(__p, "type");
    v11 = sub_5F8FC(v6, __p);
    v12 = *(v11 + 23);
    if (v12 < 0)
    {
      if (v11[1] != 3)
      {
LABEL_25:
        v14 = 0;
        if ((v24 & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

LABEL_26:
        operator delete(*__p);
        goto LABEL_27;
      }

      v11 = *v11;
    }

    else if (v12 != 3)
    {
      goto LABEL_25;
    }

    v14 = *v11 == 16717 && *(v11 + 2) == 88;
    if (v24 < 0)
    {
      goto LABEL_26;
    }

LABEL_27:
    v15 = *a1;
    v16 = a1[1];
    if (*a1 != v16)
    {
      break;
    }

LABEL_5:
    v4 += 16;
    if (v4 == v5)
    {
      v9 = 0;
LABEL_41:
      v18 = 0;
      return v9 & v18;
    }
  }

  if (v8 > 0x24)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v22 = sub_2D390(exception, "Invalid key.", 0xCuLL);
  }

  v17 = 8 * v8 + 32;
  if (v14)
  {
    while (*(v15 + v17) > v10)
    {
      v15 += 336;
      if (v15 == v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    while (*(v15 + v17) < v10)
    {
      v15 += 336;
      if (v15 == v16)
      {
        goto LABEL_5;
      }
    }
  }

  v9 = 1;
  v18 = 1;
  return v9 & v18;
}

void sub_1157644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_115766C(uint64_t a1)
{
  v2 = sub_1124764(&xmmword_27C3800, a1);
  if (v2)
  {
    return *(v2 + 40);
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(&v13);
    v4 = *(a1 + 23);
    if (v4 >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v4 >= 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = *(a1 + 8);
    }

    v7 = sub_4A5C(&v13, v5, v6);
    sub_4A5C(v7, " is not defined in CyclingRouteCriteria", 39);
    if ((v23 & 0x10) != 0)
    {
      v9 = v22;
      if (v22 < v19)
      {
        v22 = v19;
        v9 = v19;
      }

      v10 = v18;
      v8 = v9 - v18;
      if (v9 - v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if ((v23 & 8) == 0)
      {
        v8 = 0;
        v12 = 0;
LABEL_21:
        *(&__p + v8) = 0;
        sub_7E854(&__p, 3u);
        if (v12 < 0)
        {
          operator delete(__p);
        }

        if (v21 < 0)
        {
          operator delete(v20);
        }

        std::locale::~locale(&v15);
        std::ostream::~ostream();
        std::ios::~ios();
        return 37;
      }

      v10 = v16;
      v8 = v17 - v16;
      if ((v17 - v16) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_28:
        sub_3244();
      }
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v12 = v8;
    if (v8)
    {
      memmove(&__p, v10, v8);
    }

    goto LABEL_21;
  }

  return 37;
}

void sub_1157908(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_115794C(uint64_t *a1, void *a2)
{
  if (*a1 != a1[1])
  {
    v25 = 19;
    strcpy(__p, "is_metrics_relevant");
    v3 = sub_5F680(a2, __p);
    if ((v25 & 0x80000000) == 0)
    {
      v4 = *v3;
      v5 = v3[1];
      if (*v3 != v5)
      {
        goto LABEL_8;
      }

      return 0;
    }

    v6 = v3;
    operator delete(*__p);
    v4 = *v6;
    v5 = v6[1];
    if (*v6 != v5)
    {
      do
      {
LABEL_8:
        if (*(v4 + 8) != 5)
        {
          sub_5AF20();
        }

        v7 = *v4;
        v25 = 8;
        strcpy(__p, "criteria");
        v8 = sub_5F8FC(v7, __p);
        v9 = sub_113BD60(v8);
        if (v25 < 0)
        {
          operator delete(*__p);
        }

        if (v9 == 122)
        {
          return 0;
        }

        v25 = 9;
        strcpy(__p, "threshold");
        v10 = sub_63D34(v7, __p);
        if (v25 < 0)
        {
          operator delete(*__p);
        }

        v25 = 4;
        strcpy(__p, "type");
        v11 = sub_5F8FC(v7, __p);
        v12 = *(v11 + 23);
        if (v12 < 0)
        {
          if (v11[1] != 3)
          {
LABEL_29:
            v17 = 0;
            if (v25 < 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          v11 = *v11;
        }

        else if (v12 != 3)
        {
          goto LABEL_29;
        }

        v13 = bswap32(*v11 | (*(v11 + 2) << 16));
        v14 = v13 >= 0x4D415800;
        v15 = v13 > 0x4D415800;
        v16 = !v14;
        v17 = v15 == v16;
        if (v25 < 0)
        {
LABEL_23:
          operator delete(*__p);
        }

LABEL_24:
        v18 = *a1;
        v19 = a1[1];
        if (*a1 != v19)
        {
          if (v9 < 0x7Au)
          {
            v20 = 8 * v9 + 32;
            if (v17)
            {
              while ((*(v18 + 1008) & 1) == 0 || *(v18 + v20) > v10)
              {
                v18 += 1112;
                if (v18 == v19)
                {
                  goto LABEL_7;
                }
              }
            }

            else
            {
              while ((*(v18 + 1008) & 1) == 0 || *(v18 + v20) < v10)
              {
                v18 += 1112;
                if (v18 == v19)
                {
                  goto LABEL_7;
                }
              }
            }

            return 1;
          }

          do
          {
            if (*(v18 + 1008))
            {
              exception = __cxa_allocate_exception(0x40uLL);
              v23 = sub_2D390(exception, "Invalid key.", 0xCuLL);
            }

            v18 += 1112;
          }

          while (v18 != v19);
        }

LABEL_7:
        v4 += 16;
      }

      while (v4 != v5);
    }
  }

  return 0;
}

void sub_1157C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1157C4C()
{
  strcpy(v0, "display_traversal_time");
  v0[23] = 22;
  v0[24] = 0;
  v2 = 272;
  strcpy(v1, "num_name_changes");
  operator new();
}

void sub_1158B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p)
{
  while (1)
  {
    v31 = *(a10 - 9);
    a10 -= 4;
    if (v31 < 0)
    {
      operator delete(*a10);
    }

    if (a10 == &__p)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_1158FD8(uint64_t a1, void *a2)
{
  *(a1 + 48) = 0u;
  v4 = a1 + 48;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 96) = 0x4059000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = xmmword_22AFC20;
  *(a1 + 128) = 1000000000;
  *(a1 + 136) = 0x7FFFFFFFFFFFFFFELL;
  *(a1 + 144) = 0;
  HIBYTE(__p[2]) = 14;
  strcpy(__p, "scoring_policy");
  v5 = sub_5F8FC(a2, __p);
  if (v4 != v5)
  {
    v6 = *(v5 + 23);
    if (*(a1 + 71) < 0)
    {
      if (v6 >= 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = *v5;
      }

      if (v6 >= 0)
      {
        v9 = *(v5 + 23);
      }

      else
      {
        v9 = v5[1];
      }

      sub_13B38(v4, v8, v9);
    }

    else if ((*(v5 + 23) & 0x80) != 0)
    {
      sub_13A68(v4, *v5, v5[1]);
    }

    else
    {
      v7 = *v5;
      *(v4 + 16) = v5[2];
      *v4 = v7;
    }
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(v36[2]) = 20;
  strcpy(v36, "scoring_coefficients");
  v35 = 8;
  strcpy(v34, "standard");
  sub_5FB24(v34, __p, a2, v36);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 72) = *__p;
  *(a1 + 88) = __p[2];
  HIBYTE(__p[2]) = 0;
  LOBYTE(__p[0]) = 0;
  if (v35 < 0)
  {
    operator delete(v34[0]);
    if ((SHIBYTE(v36[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((SHIBYTE(v36[2]) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(v36[0]);
LABEL_19:
  HIBYTE(__p[2]) = 11;
  strcpy(__p, "max_stretch");
  v10 = sub_62A70(a2, __p);
  if (v10)
  {
    v11 = *(v10 + 12);
    switch(v11)
    {
      case 4:
        *(a1 + 96) = v10[5];
        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
        {
LABEL_31:
          HIBYTE(__p[2]) = 14;
          strcpy(__p, "min_savings_ds");
          v12 = sub_62A70(a2, __p);
          v13 = 0.0;
          if (v12)
          {
            v14 = *(v12 + 12);
            switch(v14)
            {
              case 4:
                v13 = v12[5];
                goto LABEL_43;
              case 3:
                v13 = v12[5];
                if (v13 >= 0.0)
                {
                  goto LABEL_43;
                }

                goto LABEL_40;
              case 2:
                v13 = *(v12 + 5);
                if (v13 >= 0.0)
                {
LABEL_43:
                  if (v13 >= 4.50359963e15)
                  {
                    goto LABEL_46;
                  }

                  break;
                }

LABEL_40:
                if (v13 <= -4.50359963e15)
                {
                  goto LABEL_46;
                }

                v15 = (v13 + v13) - 1 + (((v13 + v13) - 1) >> 63);
                goto LABEL_45;
            }
          }

          v15 = (v13 + v13) + 1;
LABEL_45:
          v13 = (v15 >> 1);
LABEL_46:
          *(a1 + 104) = v13;
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          HIBYTE(__p[2]) = 15;
          strcpy(__p, "min_soc_savings");
          v16 = sub_62A70(a2, __p);
          v17 = 0.0;
          if (v16)
          {
            v18 = *(v16 + 12);
            switch(v18)
            {
              case 4:
                *(a1 + 112) = v16[5];
                if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                {
LABEL_57:
                  HIBYTE(__p[2]) = 17;
                  strcpy(__p, "max_local_stretch");
                  v19 = sub_62A70(a2, __p);
                  if (v19)
                  {
                    v20 = *(v19 + 12);
                    switch(v20)
                    {
                      case 4:
                        *(a1 + 120) = v19[5];
                        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                        {
LABEL_69:
                          HIBYTE(__p[2]) = 11;
                          strcpy(__p, "max_overlap");
                          v21 = sub_62A70(a2, __p);
                          v22 = 1.0;
                          if (v21)
                          {
                            v23 = *(v21 + 12);
                            switch(v23)
                            {
                              case 4:
                                v24 = v21[5] * 1000000000.0;
                                if (v24 < 0.0)
                                {
                                  goto LABEL_79;
                                }

                                goto LABEL_82;
                              case 3:
                                v22 = v21[5];
                                break;
                              case 2:
                                v24 = *(v21 + 5) * 1000000000.0;
                                if (v24 >= 0.0)
                                {
                                  goto LABEL_82;
                                }

LABEL_79:
                                if (v24 <= -4.50359963e15)
                                {
                                  goto LABEL_85;
                                }

                                v25 = (v24 + v24) - 1 + (((v24 + v24) - 1) >> 63);
                                goto LABEL_84;
                            }
                          }

                          v24 = v22 * 1000000000.0;
                          if (v24 < 0.0)
                          {
                            goto LABEL_79;
                          }

LABEL_82:
                          if (v24 >= 4.50359963e15)
                          {
                            goto LABEL_85;
                          }

                          v25 = (v24 + v24) + 1;
LABEL_84:
                          v24 = (v25 >> 1);
LABEL_85:
                          *(a1 + 128) = v24;
                          if (SHIBYTE(__p[2]) < 0)
                          {
                            operator delete(__p[0]);
                          }

                          HIBYTE(__p[2]) = 19;
                          strcpy(__p, "min_line_distance_m");
                          v26 = sub_62A70(a2, __p);
                          v27 = 9.22337204e16;
                          if (v26)
                          {
                            v28 = *(v26 + 12);
                            switch(v28)
                            {
                              case 4:
                                v27 = v26[5];
                                if (SHIBYTE(__p[2]) < 0)
                                {
                                  goto LABEL_99;
                                }

                                goto LABEL_95;
                              case 3:
                                v27 = v26[5];
                                break;
                              case 2:
                                v27 = *(v26 + 5);
                                if (SHIBYTE(__p[2]) < 0)
                                {
LABEL_99:
                                  operator delete(__p[0]);
                                  v29 = v27 * 100.0;
                                  if (v27 * 100.0 >= 0.0)
                                  {
                                    goto LABEL_100;
                                  }

                                  goto LABEL_96;
                                }

LABEL_95:
                                v29 = v27 * 100.0;
                                if (v27 * 100.0 >= 0.0)
                                {
LABEL_100:
                                  v30 = v29;
                                  if (v29 >= 4.50359963e15)
                                  {
                                    goto LABEL_103;
                                  }

                                  v31 = (v29 + v29) + 1;
LABEL_102:
                                  v30 = (v31 >> 1);
LABEL_103:
                                  if (v30 >= 9.22337204e18)
                                  {
                                    v33 = 0x7FFFFFFFFFFFFFFELL;
                                    goto LABEL_112;
                                  }

                                  if (v29 >= 0.0)
                                  {
                                    if (v29 < 4.50359963e15)
                                    {
                                      v32 = (v29 + v29) + 1;
                                      goto LABEL_110;
                                    }
                                  }

                                  else if (v29 > -4.50359963e15)
                                  {
                                    v32 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
LABEL_110:
                                    v29 = (v32 >> 1);
                                  }

                                  v33 = v29;
LABEL_112:
                                  *(a1 + 136) = v33;
                                  operator new();
                                }

LABEL_96:
                                v30 = v29;
                                if (v29 <= -4.50359963e15)
                                {
                                  goto LABEL_103;
                                }

                                v31 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
                                goto LABEL_102;
                            }
                          }

                          if (SHIBYTE(__p[2]) < 0)
                          {
                            goto LABEL_99;
                          }

                          goto LABEL_95;
                        }

LABEL_68:
                        operator delete(__p[0]);
                        goto LABEL_69;
                      case 3:
                        *(a1 + 120) = v19[5];
                        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_69;
                        }

                        goto LABEL_68;
                      case 2:
                        *(a1 + 120) = v19[5];
                        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_69;
                        }

                        goto LABEL_68;
                    }
                  }

                  *(a1 + 120) = 0x4059000000000000;
                  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_69;
                  }

                  goto LABEL_68;
                }

LABEL_56:
                operator delete(__p[0]);
                goto LABEL_57;
              case 3:
                v17 = v16[5];
                break;
              case 2:
                *(a1 + 112) = v16[5];
                if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                {
                  goto LABEL_57;
                }

                goto LABEL_56;
            }
          }

          *(a1 + 112) = v17;
          if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        }

LABEL_30:
        operator delete(__p[0]);
        goto LABEL_31;
      case 3:
        *(a1 + 96) = v10[5];
        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      case 2:
        *(a1 + 96) = v10[5];
        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
    }
  }

  *(a1 + 96) = 0x4059000000000000;
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  goto LABEL_30;
}

void sub_11597E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 + 95) < 0)
  {
    operator delete(*(v28 + 72));
    if ((*(v28 + 71) & 0x80000000) == 0)
    {
LABEL_5:
      v31 = *(v28 + 24);
      if (!v31)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v28 + 71) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*v29);
  v31 = *(v28 + 24);
  if (!v31)
  {
LABEL_6:
    v32 = *v28;
    if (!*v28)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(v28 + 32) = v31;
  operator delete(v31);
  v32 = *v28;
  if (!*v28)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  *(v28 + 8) = v32;
  operator delete(v32);
  _Unwind_Resume(exception_object);
}

void sub_11598AC(uint64_t a1, void *a2)
{
  v5 = 10;
  strcpy(__p, "conditions");
  sub_5FB24(&unk_22AFC50, v6, a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v7 & 0x80u) == 0)
  {
    v2 = v6;
  }

  else
  {
    v2 = v6[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v3 = v7;
  }

  else
  {
    v3 = v6[1];
  }

  sub_2419C(v2, v3, 0x2Cu, __p);
}

void sub_1159A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1159AC0(void *a1, void *a2)
{
  v5 = 12;
  strcpy(__p, "requirements");
  sub_5FB24(&unk_22AFC38, v6, a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v7 & 0x80u) == 0)
  {
    v2 = v6;
  }

  else
  {
    v2 = v6[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v3 = v7;
  }

  else
  {
    v3 = v6[1];
  }

  sub_2419C(v2, v3, 0x2Cu, __p);
}

void sub_1159CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1159CFC(void *__s1, uint64_t __n)
{
  result = 0;
  if (__n <= 20)
  {
    if (__n > 10)
    {
      if (__n == 11)
      {
        if (!memcmp(__s1, "no_highways", 0xBuLL))
        {
          return 3;
        }

        else
        {
          return 0;
        }
      }

      else if (__n == 17)
      {
        v4 = __s1;
        if (!memcmp(__s1, "no_area_incidents", 0x11uLL))
        {
          return 5;
        }

        else
        {
          return 8 * (memcmp(v4, "no_charging_stops", 0x11uLL) == 0);
        }
      }
    }

    else if (__n == 8)
    {
      return 2 * (memcmp(__s1, "no_tolls", 8uLL) == 0);
    }

    else if (__n == 10)
    {
      return memcmp(__s1, "no_ferries", 0xAuLL) == 0;
    }
  }

  else if (__n <= 27)
  {
    if (__n == 21)
    {
      if (!memcmp(__s1, "obey_user_preferences", 0x15uLL))
      {
        return 6;
      }

      else
      {
        return 0;
      }
    }

    else if (__n == 24)
    {
      if (!memcmp(__s1, "no_charging_with_adapter", 0x18uLL))
      {
        return 10;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    switch(__n)
    {
      case 28:
        if (!memcmp(__s1, "not_close_to_selected_routes", 0x1CuLL))
        {
          return 7;
        }

        else
        {
          return 0;
        }

      case 30:
        if (!memcmp(__s1, "has_unique_first_charging_stop", 0x1EuLL))
        {
          return 9;
        }

        else
        {
          return 0;
        }

      case 33:
        return 4 * (memcmp(__s1, "no_environmental_congestion_zones", 0x21uLL) == 0);
    }
  }

  return result;
}

uint64_t sub_1159F2C(void *__s1, size_t __n)
{
  result = 0;
  v4 = __n;
  switch(__n)
  {
    case 0xEuLL:
      return memcmp(__s1, "has_user_route", __n) == 0;
    case 0x10uLL:
      goto LABEL_9;
    case 0x1AuLL:
      goto LABEL_11;
    case 0x1CuLL:
      goto LABEL_48;
    case 0x1EuLL:
      v10 = __s1;
      if (!memcmp(__s1, "has_user_preference_violations", __n))
      {
        return 2;
      }

      if (!memcmp(v10, "all_selected_routes_have_tolls", __n))
      {
        return 6;
      }

      return 0;
    case 0x20uLL:
      return 16 * (memcmp(__s1, "must_not_be_first_selected_route", v4) == 0);
    case 0x21uLL:
      if (!memcmp(__s1, "all_selected_routes_have_highways", __n))
      {
        return 7;
      }

      else
      {
        return 0;
      }

    case 0x22uLL:
      v12 = __s1;
      if (!memcmp(__s1, "all_selected_routes_traverse_ferry", __n))
      {
        return 5;
      }

      if (!memcmp(v12, "all_selected_routes_are_unfamiliar", __n))
      {
        return 11;
      }

      return 0;
    case 0x24uLL:
      if (!memcmp(__s1, "any_selected_route_has_charging_stop", __n))
      {
        return 12;
      }

      else
      {
        return 0;
      }

    case 0x25uLL:
      if (!memcmp(__s1, "best_route_respects_minimum_threshold", __n))
      {
        return 13;
      }

      else
      {
        return 0;
      }

    case 0x27uLL:
      if (!memcmp(__s1, "all_selected_routes_have_area_incidents", __n))
      {
        return 9;
      }

      else
      {
        return 0;
      }

    case 0x28uLL:
      if (!memcmp(__s1, "has_preferred_charging_network_violation", __n))
      {
        return 3;
      }

      else
      {
        return 0;
      }

    case 0x2CuLL:
      return 4 * (memcmp(__s1, "all_selected_routes_violate_user_preferences", __n) == 0);
    case 0x2EuLL:
      v5 = __s1;
      if (!memcmp(__s1, "picked_route_is_not_much_worse_than_best_route", __n))
      {
        return 14;
      }

      result = 0;
      v4 = __n;
      v7 = __ROR8__(__n - 16, 1);
      if (v7 > 5)
      {
        __s1 = v5;
        if (v7 == 8)
        {
          return 16 * (memcmp(__s1, "must_not_be_first_selected_route", v4) == 0);
        }

        if (v7 != 6)
        {
          return result;
        }

LABEL_48:
        v14 = __s1;
        v15 = v4;
        if (!memcmp(__s1, "must_be_first_selected_route", v4))
        {
          return 15;
        }

        v4 = v15;
        __s1 = v14;
        if (v15 == 32)
        {
          return 16 * (memcmp(__s1, "must_not_be_first_selected_route", v4) == 0);
        }

        return 0;
      }

      __s1 = v5;
      if (!v7)
      {
LABEL_9:
        v8 = __s1;
        v9 = v4;
        if (!memcmp(__s1, "must_avoid_hills", v4))
        {
          return 17;
        }

        v4 = v9;
        __s1 = v8;
        if (v9 == 26)
        {
          goto LABEL_11;
        }

        return 0;
      }

      if (v7 != 5)
      {
        return result;
      }

LABEL_11:
      if (!memcmp(__s1, "must_be_most_bike_friendly", v4))
      {
        return 18;
      }

      else
      {
        return 0;
      }

    case 0x31uLL:
      if (!memcmp(__s1, "all_selected_routes_require_charging_with_adapter", __n))
      {
        return 10;
      }

      else
      {
        return 0;
      }

    case 0x37uLL:
      return 8 * (memcmp(__s1, "all_selected_routes_have_environmental_congestion_zones", __n) == 0);
    default:
      return result;
  }
}

uint64_t sub_115A374(uint64_t a1, uint64_t a2, __int16 *a3)
{
  *a1 = a2;
  v5 = *a3;
  *(a1 + 10) = *(a3 + 2);
  *(a1 + 8) = v5;
  sub_99A14((a1 + 16), a3 + 1);
  sub_99A14((a1 + 40), a3 + 4);
  return a1;
}

unint64_t sub_115A3EC(unint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      v5 = *v2;
      *(v2 + 32) = 0u;
      *(v2 + 48) = 0u;
      *(v2 + 64) = 0u;
      *(v2 + 80) = 0u;
      *(v2 + 96) = 0u;
      *(v2 + 112) = 0u;
      *(v2 + 128) = 0u;
      *(v2 + 144) = 0u;
      *(v2 + 160) = 0u;
      *(v2 + 176) = 0u;
      *(v2 + 192) = 0u;
      *(v2 + 208) = 0u;
      *(v2 + 224) = 0;
      result = sub_4D1DC0(v5);
      if (result)
      {
        v7 = result;
        for (i = 0; i != v7; ++i)
        {
          v9 = sub_4D23F8(v5, i, v6);
          v10 = sub_4D1F50(v5, i);
          result = sub_115A4C8(v4, v10);
          if ((result & 1) == 0)
          {
            v6 = *(v2 + 224) + v9;
            *(v2 + 224) = v6;
          }
        }
      }

      v2 += 240;
    }

    while (v2 != v3);
  }

  return result;
}

BOOL sub_115A4C8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 10) != 1)
  {
    return 1;
  }

  v39 = v2;
  v40 = v3;
  if (*(a1 + 8) != 1)
  {
    return 1;
  }

  v6 = sub_3AF6B4(*a1);
  v7 = sub_2B51D8(v6, *(a2 + 32) | ((*(a2 + 36) & 0x1FFFFFFF) << 32));
  v8 = (v7 - *v7);
  if (*v8 >= 0xDu && (v9 = v8[6]) != 0)
  {
    v10 = 4 * *(v7 + v9);
  }

  else
  {
    v10 = 0;
  }

  v12 = sub_2AF704(v6 + 3896, 1u, 0);
  v13 = &v12[-*v12];
  if (*v13 < 0xBu)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v13 + 5);
    if (v14)
    {
      v14 += &v12[*&v12[v14]];
    }
  }

  v15 = (v14 + v10 + 4 + *(v14 + v10 + 4));
  v16 = (v15 - *v15);
  if (*v16 >= 5u && (v17 = v16[2]) != 0)
  {
    v18 = (v15 + v17);
    v19 = *v18;
    v20 = *(v18 + v19);
    if (v20 >= 0x17)
    {
      operator new();
    }

    v38 = *(v18 + v19);
    if (v20)
    {
      memcpy(&__dst, v18 + v19 + 4, v20);
    }

    *(&__dst + v20) = 0;
    v21 = *(a1 + 16);
    v22 = *(a1 + 24);
    if (v21 == v22)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v38 = 0;
    LOBYTE(__dst) = 0;
    v21 = *(a1 + 16);
    v22 = *(a1 + 24);
    if (v21 == v22)
    {
      goto LABEL_37;
    }
  }

  if ((v38 & 0x80u) == 0)
  {
    v23 = v38;
  }

  else
  {
    v23 = v37;
  }

  if ((v38 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  while (1)
  {
    v25 = *(v21 + 23);
    v26 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v25 = *(v21 + 8);
    }

    if (v25 == v23)
    {
      v27 = v26 >= 0 ? v21 : *v21;
      if (!memcmp(v27, p_dst, v23))
      {
        break;
      }
    }

    v21 += 24;
    if (v21 == v22)
    {
      goto LABEL_41;
    }
  }

LABEL_37:
  if (v21 != v22)
  {
    result = 1;
    if ((v38 & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_39;
  }

LABEL_41:
  if (*(a1 + 9) == 1)
  {
    v29 = *(a1 + 40);
    v30 = *(a1 + 48);
    if (v29 != v30)
    {
      if ((v38 & 0x80u) == 0)
      {
        v31 = v38;
      }

      else
      {
        v31 = v37;
      }

      if ((v38 & 0x80u) == 0)
      {
        v32 = &__dst;
      }

      else
      {
        v32 = __dst;
      }

      while (1)
      {
        v33 = *(v29 + 23);
        v34 = v33;
        if ((v33 & 0x80u) != 0)
        {
          v33 = *(v29 + 8);
        }

        if (v33 == v31)
        {
          v35 = v34 >= 0 ? v29 : *v29;
          if (!memcmp(v35, v32, v31))
          {
            break;
          }
        }

        v29 += 24;
        if (v29 == v30)
        {
          v29 = v30;
          break;
        }
      }
    }

    result = v29 != v30;
    if (v38 < 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    result = 0;
    if (v38 < 0)
    {
LABEL_39:
      v28 = result;
      operator delete(__dst);
      return v28;
    }
  }

  return result;
}

void sub_115B31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p)
{
  v23 = v21;
  while (1)
  {
    v24 = *(v23 - 9);
    v23 -= 4;
    if (v24 < 0)
    {
      operator delete(*v23);
    }

    if (v23 == &__p)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_115B63C(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = sub_3AF144(a2);
  *(a1 + 16) = 1;
  operator new();
}

void sub_115B760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_115B788(void *a1, void *a2)
{
  v9 = 17;
  strcpy(__p, "stairs_min_length");
  v3 = sub_63D34(a2, __p) * 100.0;
  if (v3 >= 0.0)
  {
    v4 = v3;
    if (v3 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v5 = (v3 + v3) + 1;
  }

  else
  {
    v4 = v3;
    if (v3 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v5 = (v3 + v3) - 1 + (((v3 + v3) - 1) >> 63);
  }

  v4 = (v5 >> 1);
LABEL_7:
  if (v4 < 9.22337204e18)
  {
    if (v3 >= 0.0)
    {
      if (v3 >= 4.50359963e15)
      {
        goto LABEL_16;
      }

      v6 = (v3 + v3) + 1;
    }

    else
    {
      if (v3 <= -4.50359963e15)
      {
        goto LABEL_16;
      }

      v6 = (v3 + v3) - 1 + (((v3 + v3) - 1) >> 63);
    }

    v3 = (v6 >> 1);
LABEL_16:
    *a1 = v3;
    if ((v9 & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_18;
  }

  *a1 = 0x7FFFFFFFFFFFFFFELL;
  if ((v9 & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_18:
  operator delete(*__p);
  return a1;
}

void sub_115B8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_115B904(uint64_t *result, _BYTE *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    do
    {
      sub_115B958(result, a2, v3);
      v3 += 240;
    }

    while (v3 != v4);
  }
}

void sub_115B958(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_3AF6B4(*a1);
  v179 = sub_3B1994(*a1);
  v181 = v5;
  sub_4E55C4(*(a3 + 8), v5, v191);
  v180 = a1;
  sub_433FE8(v189, *a1, v191);
  v6 = *a3;
  v7 = *(sub_45AC50(*a3) + 8);
  v178 = v7 && (v8 = (v7 - *v7), *v8 >= 0x1Du) && (v9 = v8[14]) != 0 && *(v7 + v9 + *(v7 + v9)) && (v10 = *(sub_4D1F60(v6) + 8)) != 0 && (v11 = (v10 - *v10), *v11 >= 0x1Du) && (v12 = v11[14]) != 0 && *(v10 + v12 + *(v10 + v12)) != 0;
  *(a3 + 32) = 0u;
  *(a3 + 224) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 40) = sub_4D1DB8(v6);
  *(a3 + 88) = *(sub_3CF22C(v6) + 4);
  v13 = *(sub_3CF22C(v6) + 4);
  v14 = v13 / 10;
  v15 = v13 % 10;
  if (v13 < 0)
  {
    v16 = -5;
  }

  else
  {
    v16 = 5;
  }

  v17 = ceil((v14 + (((103 * (v16 + v15)) >> 15) & 1) + ((103 * (v16 + v15)) >> 10)) / 60.0) * 60.0 * 10.0;
  if (v17 >= 0.0)
  {
    if (v17 >= 4.50359963e15)
    {
      goto LABEL_19;
    }

    v18 = (v17 + v17) + 1;
  }

  else
  {
    if (v17 <= -4.50359963e15)
    {
      goto LABEL_19;
    }

    v18 = (v17 + v17) - 1 + (((v17 + v17) - 1) >> 63);
  }

  v17 = (v18 >> 1);
LABEL_19:
  *(a3 + 96) = v17;
  v19 = sub_3AF234(v6);
  v20 = 1.0;
  if (*(v19 + 20) == 1)
  {
    v20 = ((*(sub_73F1C(v6) + 20) & 1) == 0);
  }

  *(a3 + 168) = v20;
  v21 = sub_4D1DC0(v6);
  if (v21)
  {
    __src = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v26 = vnegq_f64(v25);
    v176 = v26;
    v27 = 0.0;
    v28 = 0.0;
    v175 = v6;
    v177 = v21;
    while (1)
    {
      v29 = v24;
      v30 = sub_4D23F8(v6, v23, v26.f64[0]);
      v31 = sub_4D2720(v6, v23, 0);
      v32 = sub_4D1F50(v6, v23);
      v35 = v32;
      v36 = *v32;
      v37 = (*v32 - **v32);
      v38 = *v37;
      if (v38 >= 0x9B && v37[77])
      {
        *v34.i64 = v30;
        v39 = 0.0;
        v186 = v34;
        if ((*&v36[v37[77]] & 8) != 0)
        {
          v39 = v30;
        }
      }

      else
      {
        *v33.i64 = v30;
        v186 = v33;
        v39 = 0.0;
      }

      *(a3 + 48) = v39 + *(a3 + 48);
      v40 = v32[1];
      v41 = (v40 - *v40);
      v42 = 0.0;
      if (*v41 >= 0x13u)
      {
        v43 = v41[9];
        if (v43)
        {
          LOWORD(v42) = *(v40 + v43);
          v42 = *&v42;
        }
      }

      *(a3 + 32) = v42 + *(a3 + 32);
      if (v38 >= 0x9B && (a2[9] & 1) != 0)
      {
        v44 = v37[77];
        if (v44)
        {
          if ((v36[v44] & 3) != 0)
          {
            v46 = *(v32 + 8);
            v45 = *(v32 + 9);
            v47 = ((v45 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v45 << 32) | v46;
            v48 = sub_2B51D8(v181, ((v45 & 0x20000000u) << 19) | (v45 << 32) & 0xFFFFFFFFFFFFLL | v46 & 0xFFFFFFFFFFFFLL);
            v49 = v181;
            if (*(v181 + 7772) == 1)
            {
              v50 = sub_30C50C(v181 + 3896, v46, 0);
              v51 = &v50[-*v50];
              if (*v51 < 5u)
              {
                v52 = 0;
                v49 = v181;
              }

              else
              {
                v52 = *(v51 + 2);
                if (v52)
                {
                  v52 += &v50[*&v50[v52]];
                }

                v49 = v181;
              }

              v53 = (v52 + 4 * v45 + 4 + *(v52 + 4 * v45 + 4));
            }

            else
            {
              v53 = 0;
            }

            v54 = sub_31D7E8(v49, v47 & 0xFFFFFFFFFFFFLL, 1);
            v188[0] = v48;
            v188[1] = v53;
            v188[2] = v54;
            v188[3] = v55;
            v188[4] = (v47 ^ 0x1000000000000);
            v6 = v175;
            if (sub_434208(v189, v188))
            {
              *(a3 + 104) = *(a3 + 104) + v31;
            }
          }
        }
      }

      if (a2[11] == 1)
      {
        v56 = v35[1];
        if (!v56 || (v57 = (v56 - *v56), *v57 < 0x11u) || (v58 = v57[8]) == 0 || (*(v56 + v58) & 4) == 0)
        {
          v59 = *v35;
          v60 = (*v35 - **v35);
          if (*v60 >= 0x2Fu && v60[23] && v59[v60[23]] == 9)
          {
            v61 = v60[4];
            if (v61)
            {
              if (*&v59[v61] < v180[3])
              {
                goto LABEL_58;
              }

LABEL_57:
              *(a3 + 112) = *(a3 + 112) + v31;
              goto LABEL_58;
            }

            if (v180[3] <= 0)
            {
              goto LABEL_57;
            }
          }
        }
      }

LABEL_58:
      v62 = *v35;
      v63 = (*v35 - **v35);
      v64 = *v63;
      if (v64 < 0x9B)
      {
        v65 = v31;
        *(a3 + 128) = *(a3 + 128) + 0.0;
        if (v64 <= 0x2E)
        {
          *(a3 + 136) = *(a3 + 136) + 0.0;
          if (v178)
          {
            goto LABEL_91;
          }

          goto LABEL_93;
        }
      }

      else
      {
        if (v63[77])
        {
          v65 = v31;
          v66 = 0.0;
          if ((*&v62[v63[77]] & 0x1000000) != 0)
          {
            v66 = v31;
          }
        }

        else
        {
          v65 = v31;
          v66 = 0.0;
        }

        *(a3 + 128) = *(a3 + 128) + v66;
      }

      v67 = 0.0;
      if (v63[23])
      {
        v68 = v62[v63[23]];
        v69 = v68 > 0x2F;
        v70 = (1 << v68) & 0xE2E040048000;
        v71 = v69 || v70 == 0;
        if (!v71 && (v64 < 0x39 || !v63[28] || (*&v62[v63[28]] & 0x10100) != 0x10000))
        {
          v67 = v65;
        }
      }

      *(a3 + 136) = v67 + *(a3 + 136);
      if (v178)
      {
        v72 = v63[23];
        if (v72)
        {
          v73 = v62[v72];
          v69 = v73 > 0x2B;
          v74 = (1 << v73) & 0x80000001040;
          v75 = v69 || v74 == 0;
          v76 = 0.0;
          if (!v75)
          {
            v76 = v65;
          }

          *(a3 + 144) = v76 + *(a3 + 144);
          v77 = 0.0;
          if (v62[v72] == 48)
          {
            v78 = sub_31DDCC(v181, (((*(v35 + 9) & 0x20000000) << 19) | (*(v35 + 9) << 32) | *(v35 + 8)) ^ 0x1000000000000);
            v79 = !v78 || v78 >= 0xFFFFFFFF00000000;
            v77 = 0.0;
            if (!v79)
            {
              v77 = v65;
            }
          }
        }

        else
        {
LABEL_91:
          v77 = 0.0;
          *(a3 + 144) = *(a3 + 144) + 0.0;
        }

        *(a3 + 152) = v77 + *(a3 + 152);
      }

LABEL_93:
      v80 = v35[1];
      v81 = 0.0;
      if (v80)
      {
        v82 = (v80 - *v80);
        if (*v82 >= 0x1Du)
        {
          v83 = v82[14];
          if (v83)
          {
            v81 = 0.0;
            if (*(v80 + v83 + *(v80 + v83)))
            {
              v81 = v65;
            }
          }
        }
      }

      *(a3 + 208) = v81 + *(a3 + 208);
      *v84.i64 = v65 * (sub_2B3458(v179, (((*(v35 + 9) & 0x20000000) << 19) | (*(v35 + 9) << 32) | *(v35 + 8)) ^ 0x1000000000000) / 1000000000.0) + *(a3 + 216);
      *(a3 + 216) = v84.i64[0];
      v86 = *(v35 + 9);
      v87 = *v35;
      v88 = (*v35 - **v35);
      v89 = *v88;
      if ((v86 & 0x20000000) == 0)
      {
        if (v89 < 0x57)
        {
          goto LABEL_109;
        }

        v90 = v88[43];
        if (v88[43])
        {
          v91 = (v87 + v90 + *(v87 + v90));
          v92 = (v91 - *v91);
          if (*v92 < 7u || (v93 = v92[3]) == 0)
          {
LABEL_116:
            v84.i64[0] = 0;
            v84.i64[0] = vbslq_s8(v176, v84, v186).i64[0];
            v27 = v27 + *v84.i64;
            if (!v88[43])
            {
LABEL_113:
              v84.i64[0] = 0;
              v184 = 0.0;
              if (v89 < 0x7B)
              {
                goto LABEL_132;
              }

              v98 = v88[61];
              if (!v98)
              {
                goto LABEL_132;
              }

              goto LABEL_129;
            }

            goto LABEL_117;
          }
        }

        else
        {
          if (v89 < 0x7D)
          {
            goto LABEL_116;
          }

          v93 = v88[62];
          v91 = *v35;
          if (!v88[62])
          {
            goto LABEL_116;
          }
        }

        v84.i16[0] = *(v91 + v93);
        *v84.i64 = *v186.i64 * ((v84.u64[0] + v84.u64[0]) / 65535.0);
        v27 = v27 + *v84.i64;
        if (!v88[43])
        {
          goto LABEL_113;
        }

LABEL_117:
        v87 = (v87 + v90 + *(v87 + v90));
        v99 = (v87 - *v87);
        if (*v99 < 5u)
        {
          goto LABEL_130;
        }

        v98 = v99[2];
        if (!v98)
        {
          goto LABEL_130;
        }

        goto LABEL_129;
      }

      if (v89 < 0x57)
      {
LABEL_109:
        v85.i64[0] = 0;
        v184 = 0.0;
        v27 = v27 + *vbslq_s8(v176, v85, v186).i64;
        goto LABEL_132;
      }

      v94 = v88[43];
      if (v88[43])
      {
        v95 = (v87 + v94 + *(v87 + v94));
        v96 = (v95 - *v95);
        if (*v96 < 5u)
        {
          goto LABEL_126;
        }

        v97 = v96[2];
        if (!v97)
        {
          goto LABEL_126;
        }
      }

      else if (v89 < 0x7B || (v97 = v88[61], v95 = *v35, !v88[61]))
      {
LABEL_126:
        v84.i64[0] = 0;
        v84.i64[0] = vbslq_s8(v176, v84, v186).i64[0];
        v27 = v27 + *v84.i64;
        if (!v88[43])
        {
LABEL_123:
          v84.i64[0] = 0;
          v184 = 0.0;
          if (v89 < 0x7D)
          {
            goto LABEL_132;
          }

          v98 = v88[62];
          if (!v98)
          {
            goto LABEL_132;
          }

          goto LABEL_129;
        }

        goto LABEL_127;
      }

      v84.i16[0] = *(v95 + v97);
      *v84.i64 = *v186.i64 * ((v84.u64[0] + v84.u64[0]) / 65535.0);
      v27 = v27 + *v84.i64;
      if (!v88[43])
      {
        goto LABEL_123;
      }

LABEL_127:
      v87 = (v87 + v94 + *(v87 + v94));
      v100 = (v87 - *v87);
      if (*v100 < 7u || (v98 = v100[3]) == 0)
      {
LABEL_130:
        v84.i64[0] = 0;
        goto LABEL_131;
      }

LABEL_129:
      v84.i16[0] = *(v87 + v98);
      *v84.i64 = v84.u64[0] + v84.u64[0];
LABEL_131:
      v184 = *v84.i64;
LABEL_132:
      v101 = v35[1];
      if (v101 && (v102 = (v101 - *v101), *v102 >= 0x11u) && (v103 = v102[8]) != 0 && (*(v101 + v103) & 4) != 0)
      {
        v24 = v29;
        v105 = *(v35 + 8) | ((v86 & 0x1FFFFFFF) << 32);
      }

      else
      {
        v24 = v23;
        if (v29 != -1)
        {
          v104 = sub_4D1F50(v6, v29);
          *(a3 + 64) = *(a3 + 64) + (sub_31EE90(v181, (((*(v35 + 9) & 0x20000000) << 19) | (*(v35 + 9) << 32) | *(v35 + 8)) ^ 0x1000000000000, (((*(v104 + 36) & 0x20000000) << 19) | (*(v104 + 36) << 32) | *(v104 + 32)) ^ 0x1000000000000) ^ 1);
          v86 = *(v35 + 9);
          v24 = v23;
        }

        v105 = *(v35 + 8) | ((v86 & 0x1FFFFFFF) << 32);
      }

      v106 = v22 - __src;
      v107 = 0xAAAAAAAAAAAAAAABLL * ((v22 - __src) >> 2);
      v108 = v107 + 1;
      if (v107 + 1 > 0x1555555555555555)
      {
        sub_1794();
      }

      if (0x5555555555555556 * (-__src >> 2) > v108)
      {
        v108 = 0x5555555555555556 * (-__src >> 2);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-__src >> 2) >= 0xAAAAAAAAAAAAAAALL)
      {
        v109 = 0x1555555555555555;
      }

      else
      {
        v109 = v108;
      }

      if (v109)
      {
        if (v109 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v110 = 4 * ((v22 - __src) >> 2);
      *v110 = v105;
      *(v110 + 8) = v31;
      v22 = (v110 + 12);
      memcpy((12 * v107 + 12 * (v106 / -12)), __src, v106);
      if (__src)
      {
        operator delete(__src);
      }

      __src = 12 * v107 + 12 * (v106 / -12);
      v6 = v175;
      v26.f64[0] = *v186.i64 * (v184 / 65535.0);
      v28 = v28 + v26.f64[0];
      if (v177 == ++v23)
      {
        goto LABEL_155;
      }
    }
  }

  v22 = 0;
  __src = 0;
  v28 = 0.0;
  v27 = 0.0;
LABEL_155:
  v111 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v22 - __src) >> 2));
  if (v22 == __src)
  {
    v112 = 0;
  }

  else
  {
    v112 = v111;
  }

  sub_115CC18(__src, v22, v188, v112, 1);
  if (v22 != __src)
  {
    v113 = (__src + 12);
    if ((__src + 12) != v22)
    {
      v114 = 0;
      v115 = *(a3 + 160);
      v116 = -1;
      do
      {
        if (*(v113 - 3) == *v113)
        {
          v118 = *(v113 - 2);
          if (v118 == v113[1])
          {
            if (v114 == *v113 && v116 == v118)
            {
              v117 = 0;
            }

            else
            {
              v117 = *(v113 - 1);
            }

            v115 = v115 + (v117 + v113[2]);
            *(a3 + 160) = v115;
            v114 = *v113;
            v116 = v113[1];
          }
        }

        v113 += 3;
      }

      while (v113 != v22);
    }
  }

  if (v28 >= v27)
  {
    v120 = v27;
  }

  else
  {
    v120 = v28;
  }

  *(a3 + 184) = v120;
  if (a2[10] == 1)
  {
    *(a3 + 192) = v120;
  }

  if (v27 >= 0.0)
  {
    v121 = v27;
    if (v27 >= 4.50359963e15)
    {
      goto LABEL_182;
    }

    v122 = (v27 + v27) + 1;
  }

  else
  {
    v121 = v27;
    if (v27 <= -4.50359963e15)
    {
      goto LABEL_182;
    }

    v122 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
  }

  v121 = (v122 >> 1);
LABEL_182:
  v123 = 9.22337204e18;
  if (v121 >= 9.22337204e18)
  {
    goto LABEL_190;
  }

  if (v27 >= 0.0)
  {
    if (v27 < 4.50359963e15)
    {
      v124 = (v27 + v27) + 1;
      goto LABEL_188;
    }
  }

  else if (v27 > -4.50359963e15)
  {
    v124 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
LABEL_188:
    v27 = (v124 >> 1);
  }

  v123 = v27;
LABEL_190:
  *(a3 + 200) = sqrt((v123 / 30.48 + v123 / 30.48) * (sub_4D1DB8(v6) / 160934.4));
  sub_4D0560();
  v126 = v125;
  v128 = v127;
  sub_4D0568();
  v187 = v130;
  v131 = v129;
  v185 = v129;
  if (v126)
  {
    v132 = sub_4D1DC0(v126);
    v133 = v132;
    if (!v131)
    {
      if (v128 >= v132)
      {
        goto LABEL_282;
      }

      v136 = 1;
      goto LABEL_203;
    }

    v134 = sub_4D1DC0(v131);
    if (v128 >= v133 || v187 >= v134)
    {
      if (v128 < v133 == v187 < v134)
      {
        goto LABEL_282;
      }
    }

    else
    {
      v135 = sub_4D1F50(v126, v128);
      if (v135 == sub_4D1F50(v131, v187))
      {
        goto LABEL_282;
      }
    }

LABEL_202:
    v136 = 0;
LABEL_203:
    v137 = 0;
    v138 = 0;
    while (1)
    {
      v139 = v128++;
      if (v126)
      {
        v140 = sub_4D1DC0(v126);
        v141 = v140;
        if (v136)
        {
          if (v128 >= v140)
          {
            goto LABEL_282;
          }
        }

        else
        {
          v142 = sub_4D1DC0(v185);
          if (v128 >= v141 || v187 >= v142)
          {
            if (v128 < v141 == v187 < v142)
            {
              goto LABEL_282;
            }
          }

          else
          {
            v143 = sub_4D1F50(v126, v128);
            if (v143 == sub_4D1F50(v185, v187))
            {
              goto LABEL_282;
            }
          }
        }
      }

      else if ((v136 & 1) != 0 || v187 >= sub_4D1DC0(v185))
      {
        goto LABEL_282;
      }

      v144 = sub_4D1F50(v126, v139);
      v145 = sub_4D1F50(v126, v128);
      v146 = v145;
      v147 = *v144;
      v148 = (*v144 - **v144);
      v149 = *v148;
      if ((*(v144 + 39) & 0x20) != 0)
      {
        if (v149 >= 0x4B)
        {
          v150 = v148[37];
          if (v148[37])
          {
LABEL_223:
            v151 = *(v147 + v150);
            goto LABEL_225;
          }
        }
      }

      else if (v149 >= 0x49)
      {
        v150 = v148[36];
        if (v148[36])
        {
          goto LABEL_223;
        }
      }

      v151 = -1;
LABEL_225:
      v152 = v151 + 18000;
      v153 = v151 - 18000;
      if ((v152 >> 5) >= 0x465u)
      {
        v154 = v153;
      }

      else
      {
        v154 = v152;
      }

      v155 = *v145;
      v156 = (*v145 - **v145);
      v157 = *v156;
      if ((*(v145 + 39) & 0x20) != 0)
      {
        if (v157 >= 0x49)
        {
          v158 = v156[36];
          if (v156[36])
          {
LABEL_234:
            v159 = *(v155 + v158);
            goto LABEL_236;
          }
        }
      }

      else if (v157 >= 0x4B)
      {
        v158 = v156[37];
        if (v156[37])
        {
          goto LABEL_234;
        }
      }

      v159 = 0xFFFF;
LABEL_236:
      v160 = v159 - v154;
      if (v160 > 18000)
      {
        v160 -= 36000;
      }

      if (v160 < -17999)
      {
        v160 += 36000;
      }

      *(a3 + 176) = *(a3 + 176) + fabs(v160 / 100.0);
      if ((*(v144 + 39) & 0x20) != 0)
      {
        if (v149 >= 0x51)
        {
          v162 = v148[40];
          if (v162)
          {
            if ((*(v147 + v162) & 0x80) != 0)
            {
              goto LABEL_256;
            }
          }
        }
      }

      else if (v149 >= 0x51)
      {
        v161 = v148[40];
        if (v161)
        {
          if ((*(v147 + v161) & 8) != 0)
          {
            goto LABEL_256;
          }
        }
      }

      if ((*(v145 + 39) & 0x20) != 0)
      {
        if (v157 < 0x51 || !v156[40] || (*(v155 + v156[40]) & 2) == 0)
        {
          goto LABEL_257;
        }
      }

      else if (v157 < 0x51 || !v156[40] || (*(v155 + v156[40]) & 0x20) == 0)
      {
        goto LABEL_257;
      }

LABEL_256:
      *(a3 + 56) = *(a3 + 56) + 1.0;
LABEL_257:
      v163 = sub_30F7C8((v180 + 1), v144);
      v164 = sub_30F7C8((v180 + 1), v146);
      if (v163 & 1 | ((v164 & 1) == 0))
      {
        if (!(v164 & 1 | ((v137 & v163 & 1) == 0)))
        {
          v137 = 0;
          *(a3 + 80) = *(a3 + 80) + 1.0;
        }

        v165 = *v144;
        v166 = (*v144 - **v144);
        v167 = *v166;
        if (v167 < 0x9B)
        {
          goto LABEL_265;
        }

LABEL_263:
        if (!v166[77] || (*(v165 + v166[77] + 3) & 1) == 0)
        {
          goto LABEL_265;
        }

        if (v138)
        {
          v168 = *v146;
          v173 = (*v146 - **v146);
          if (*v173 < 0x9Bu)
          {
            goto LABEL_204;
          }

LABEL_275:
          v174 = v173[77];
          if (!v174 || (*(v168 + v174 + 3) & 1) == 0)
          {
LABEL_204:
            v138 = 0;
            *(a3 + 72) = *(a3 + 72) + 1.0;
            v128 = v139 + 1;
          }
        }

        else
        {
          v138 = 0;
          v128 = v139 + 1;
        }
      }

      else
      {
        v137 = 1;
        v165 = *v144;
        v166 = (*v144 - **v144);
        v167 = *v166;
        if (v167 >= 0x9B)
        {
          goto LABEL_263;
        }

LABEL_265:
        v168 = *v146;
        v169 = **v146;
        v170 = (*v146 - v169);
        if (*v170 >= 0x9Bu && (v171 = v170[77]) != 0 && (*(v168 + v171 + 3) & 1) != 0)
        {
          v138 = 1;
          v128 = v139 + 1;
        }

        else if ((v138 & (v167 > 0x9A)) != 0)
        {
          v172 = v166[77];
          if (v172)
          {
            if (*(v165 + v172 + 3))
            {
              v173 = (v168 - v169);
              if (*(v168 - v169) < 0x9Bu)
              {
                goto LABEL_204;
              }

              goto LABEL_275;
            }

            v138 = 1;
            v128 = v139 + 1;
          }

          else
          {
            v138 = 1;
            v128 = v139 + 1;
          }
        }
      }
    }
  }

  if (v129 && v130 < sub_4D1DC0(v129))
  {
    goto LABEL_202;
  }

LABEL_282:
  if (__src)
  {
    operator delete(__src);
  }

  sub_5135D0(v190);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }
}

void sub_115CB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_5135D0(&STACK[0x5E0]);
  if (*(v33 - 121) < 0)
  {
    operator delete(*(v33 - 144));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_115CC18(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:

          return sub_115D18C(v8, v8 + 3, a2 - 3);
        case 4uLL:

          return sub_115D31C(v8, v8 + 3, v8 + 6, a2 - 3);
        case 5uLL:

          return sub_115D460(v8, v8 + 3, v8 + 6, v8 + 9, a2 - 3);
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v25 = *(a2 - 2) | (*(a2 - 3) << 32);
        v26 = v8[1] | (*v8 << 32);
        if (v26 == v25)
        {
          v27 = *(a2 - 1) < v8[2];
        }

        else
        {
          v27 = v25 < v26;
        }

        if (v27)
        {
          v28 = *v8;
          *v8 = *(a2 - 3);
          *(a2 - 3) = v28;
          LODWORD(v28) = v8[2];
          v8[2] = *(a2 - 1);
          *(a2 - 1) = v28;
        }

        return result;
      }
    }

    if (v12 <= 287)
    {
      break;
    }

    if (v10 == 1)
    {
      if (v8 != a2)
      {
        v49 = (v13 - 2) >> 1;
        v50 = v49 + 1;
        v51 = &v8[3 * v49];
        do
        {
          sub_115DB58(v8, a3, 0xAAAAAAAAAAAAAAABLL * (v12 >> 2), v51);
          v51 -= 3;
          --v50;
        }

        while (v50);
        v52 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
        do
        {
          result = sub_115DCF4(v8, a2, a3, v52);
          a2 -= 3;
        }

        while (v52-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = &v8[3 * (v13 >> 1)];
    if (v12 < 0x601)
    {
      sub_115D18C(v15, v8, a2 - 3);
      if (a5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_115D18C(v8, v15, a2 - 3);
      v16 = 3 * v14;
      v17 = &v8[3 * v14 - 3];
      sub_115D18C(v8 + 3, v17, a2 - 6);
      sub_115D18C(v8 + 6, &v8[v16 + 3], a2 - 9);
      sub_115D18C(v17, v15, &v8[v16 + 3]);
      v18 = *v8;
      *v8 = *v15;
      *v15 = v18;
      LODWORD(v18) = v8[2];
      v8[2] = v15[2];
      v15[2] = v18;
      if (a5)
      {
        goto LABEL_21;
      }
    }

    v19 = *(v8 - 2) | (*(v8 - 3) << 32);
    v20 = v8[1] | (*v8 << 32);
    if (v20 == v19)
    {
      v21 = *(v8 - 1) < v8[2];
    }

    else
    {
      v21 = v19 < v20;
    }

    if (!v21)
    {
      result = sub_115D608(v8, a2);
      v9 = result;
      goto LABEL_26;
    }

LABEL_21:
    v22 = sub_115D788(v8, a2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_24;
    }

    v24 = sub_115D8F4(v8, v22);
    v9 = (v22 + 3);
    result = sub_115D8F4(v22 + 3, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v22;
      if (v24)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v24)
    {
LABEL_24:
      result = sub_115CC18(v8, v22, a3, -v11, a5 & 1);
      v9 = (v22 + 3);
LABEL_26:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v29 = v8 + 3;
  v31 = v8 == a2 || v29 == a2;
  if (a5)
  {
    if (!v31)
    {
      v32 = 0;
      v33 = v8;
      do
      {
        v35 = v33[5];
        v36 = v33[2];
        v37 = v33[4] | (v33[3] << 32);
        v38 = *v33;
        v39 = v33[1];
        v33 = v29;
        v40 = v39 | (v38 << 32);
        v41 = v35 < v36;
        if (v40 == v37)
        {
          v42 = v41;
        }

        else
        {
          v42 = v37 < v40;
        }

        if (v42)
        {
          v43 = *v33;
          v44 = __ROR8__(*v33, 32);
          v45 = v32;
          do
          {
            v46 = v8 + v45;
            *(v46 + 12) = *(v8 + v45);
            *(v46 + 5) = *(v8 + v45 + 8);
            if (!v45)
            {
              v34 = v8;
              goto LABEL_53;
            }

            v47 = *(v46 - 2) | (*(v46 - 3) << 32);
            v48 = v35 < *(v46 - 1);
            if (v47 != v44)
            {
              v48 = v44 < v47;
            }

            v45 -= 12;
          }

          while (v48);
          v34 = v8 + v45 + 12;
LABEL_53:
          *v34 = v43;
          *(v34 + 8) = v35;
        }

        v29 = v33 + 3;
        v32 += 12;
      }

      while (v33 + 3 != a2);
    }
  }

  else if (!v31)
  {
    v54 = v8 + 5;
    do
    {
      v55 = v8[5];
      v56 = v8[2];
      v57 = v8[4] | (v8[3] << 32);
      v58 = *v8;
      v59 = v8[1];
      v8 = v29;
      v60 = v59 | (v58 << 32);
      v61 = v55 < v56;
      if (v60 == v57)
      {
        v62 = v61;
      }

      else
      {
        v62 = v57 < v60;
      }

      if (v62)
      {
        v63 = *v8;
        v64 = __ROR8__(*v8, 32);
        v65 = v54;
        do
        {
          v66 = v65;
          v67 = *(v65 - 5);
          v68 = *(v65 - 3);
          v65 -= 3;
          *(v66 - 1) = v67;
          *v66 = v68;
          v69 = *(v66 - 7) | (*(v66 - 8) << 32);
          v70 = v55 < *(v66 - 6);
          if (v69 != v64)
          {
            v70 = v64 < v69;
          }
        }

        while (v70);
        *(v65 - 1) = v63;
        *v65 = v55;
      }

      v29 = v8 + 3;
      v54 += 3;
    }

    while (v8 + 3 != a2);
  }

  return result;
}

uint64_t sub_115D18C(unsigned int *a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a2[1] | (*a2 << 32);
  v4 = a1[1] | (*a1 << 32);
  v5 = a2 + 2;
  v6 = a2[2];
  v7 = a1 + 2;
  v8 = v6 < a1[2];
  if (v4 != v3)
  {
    v8 = v3 < v4;
  }

  v9 = a3[1] | (*a3 << 32);
  v10 = a3[2] < v6;
  if (v3 == v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9 < v3;
  }

  if (v8)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
LABEL_19:
      v24 = *v7;
      *v7 = a3[2];
      a3[2] = v24;
      return 1;
    }

    *a1 = *a2;
    *a2 = v12;
    v19 = a1[2];
    a1[2] = a2[2];
    a2[2] = v19;
    v20 = a3[1] | (*a3 << 32);
    v21 = a2[1] | (*a2 << 32);
    v22 = a3[2] < v19;
    if (v21 != v20)
    {
      v22 = v20 < v21;
    }

    if (v22)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v7 = a2 + 2;
      goto LABEL_19;
    }
  }

  else
  {
    if (!v11)
    {
      return 0;
    }

    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    LODWORD(v13) = a2[2];
    a2[2] = a3[2];
    a3[2] = v13;
    v14 = a2[1] | (*a2 << 32);
    v15 = a1[1] | (*a1 << 32);
    if (v15 == v14)
    {
      v16 = a2[2] < a1[2];
    }

    else
    {
      v16 = v14 < v15;
    }

    if (v16)
    {
      v17 = *a1;
      *a1 = *a2;
      *a2 = v17;
      LODWORD(v17) = *v7;
      *v7 = *v5;
      *v5 = v17;
      return 1;
    }
  }

  return 1;
}

uint64_t sub_115D31C(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  result = sub_115D18C(a1, a2, a3);
  v9 = a4[1] | (*a4 << 32);
  v10 = a3[1] | (*a3 << 32);
  if (v10 == v9)
  {
    v11 = a4[2] < a3[2];
  }

  else
  {
    v11 = v9 < v10;
  }

  if (v11)
  {
    v12 = *a3;
    *a3 = *a4;
    *a4 = v12;
    LODWORD(v12) = a3[2];
    a3[2] = a4[2];
    a4[2] = v12;
    v13 = a3[1] | (*a3 << 32);
    v14 = a2[1] | (*a2 << 32);
    if (v14 == v13 ? a3[2] < a2[2] : v13 < v14)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      LODWORD(v16) = a2[2];
      a2[2] = a3[2];
      a3[2] = v16;
      v17 = a2[1] | (*a2 << 32);
      v18 = a1[1] | (*a1 << 32);
      if (v18 == v17)
      {
        v19 = a2[2] < a1[2];
      }

      else
      {
        v19 = v17 < v18;
      }

      if (v19)
      {
        v20 = *a1;
        *a1 = *a2;
        *a2 = v20;
        LODWORD(v20) = a1[2];
        a1[2] = a2[2];
        a2[2] = v20;
      }
    }
  }

  return result;
}

uint64_t sub_115D460(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  result = sub_115D31C(a1, a2, a3, a4);
  v11 = a5[1] | (*a5 << 32);
  v12 = a4[1] | (*a4 << 32);
  if (v12 == v11)
  {
    v13 = a5[2] < a4[2];
  }

  else
  {
    v13 = v11 < v12;
  }

  if (v13)
  {
    v14 = *a4;
    *a4 = *a5;
    *a5 = v14;
    LODWORD(v14) = a4[2];
    a4[2] = a5[2];
    a5[2] = v14;
    v15 = a4[1] | (*a4 << 32);
    v16 = a3[1] | (*a3 << 32);
    if (v16 == v15 ? a4[2] < a3[2] : v15 < v16)
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      LODWORD(v18) = a3[2];
      a3[2] = a4[2];
      a4[2] = v18;
      v19 = a3[1] | (*a3 << 32);
      v20 = a2[1] | (*a2 << 32);
      if (v20 == v19 ? a3[2] < a2[2] : v19 < v20)
      {
        v22 = *a2;
        *a2 = *a3;
        *a3 = v22;
        LODWORD(v22) = a2[2];
        a2[2] = a3[2];
        a3[2] = v22;
        v23 = a2[1] | (*a2 << 32);
        v24 = a1[1] | (*a1 << 32);
        if (v24 == v23)
        {
          v25 = a2[2] < a1[2];
        }

        else
        {
          v25 = v23 < v24;
        }

        if (v25)
        {
          v26 = *a1;
          *a1 = *a2;
          *a2 = v26;
          LODWORD(v26) = a1[2];
          a1[2] = a2[2];
          a2[2] = v26;
        }
      }
    }
  }

  return result;
}

unsigned int *sub_115D608(unsigned int *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = __ROR8__(*a1, 32);
  v5 = *(a2 - 8) | (*(a2 - 12) << 32);
  if (v5 == v4)
  {
    v6 = v3 < *(a2 - 4);
  }

  else
  {
    v6 = v4 < v5;
  }

  if (v6)
  {
    v7 = a1;
    do
    {
      v8 = v7[3];
      v9 = v7[4];
      v7 += 3;
      v10 = v9 | (v8 << 32);
      if (v10 == v4)
      {
        v11 = v3 < v7[2];
      }

      else
      {
        v11 = v4 < v10;
      }
    }

    while (!v11);
  }

  else
  {
    v12 = a1 + 3;
    do
    {
      v7 = v12;
      if (v12 >= a2)
      {
        break;
      }

      v13 = v12[1] | (*v12 << 32);
      v14 = v4 < v13;
      if (v13 == v4)
      {
        v14 = v3 < v7[2];
      }

      v12 = v7 + 3;
    }

    while (!v14);
  }

  if (v7 < a2)
  {
    do
    {
      v15 = *(a2 - 12);
      v16 = *(a2 - 8);
      a2 -= 12;
      v17 = v16 | (v15 << 32);
      if (v17 == v4)
      {
        v18 = v3 < *(a2 + 8);
      }

      else
      {
        v18 = v4 < v17;
      }
    }

    while (v18);
  }

  while (v7 < a2)
  {
    v19 = *v7;
    *v7 = *a2;
    *a2 = v19;
    LODWORD(v19) = v7[2];
    v7[2] = *(a2 + 8);
    *(a2 + 8) = v19;
    do
    {
      v20 = v7[3];
      v21 = v7[4];
      v7 += 3;
      v22 = v21 | (v20 << 32);
      if (v22 == v4)
      {
        v23 = v3 < v7[2];
      }

      else
      {
        v23 = v4 < v22;
      }
    }

    while (!v23);
    do
    {
      v24 = *(a2 - 12);
      v25 = *(a2 - 8);
      a2 -= 12;
      v26 = v25 | (v24 << 32);
      if (v26 == v4)
      {
        v27 = v3 < *(a2 + 8);
      }

      else
      {
        v27 = v4 < v26;
      }
    }

    while (v27);
  }

  if (v7 - 3 != a1)
  {
    *a1 = *(v7 - 3);
    a1[2] = *(v7 - 1);
  }

  *(v7 - 3) = v2;
  *(v7 - 1) = v3;
  return v7;
}

char *sub_115D788(char *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = __ROR8__(*a1, 32);
  do
  {
    v6 = *&a1[v2 + 16] | (*&a1[v2 + 12] << 32);
    v7 = *&a1[v2 + 20] < v4;
    if (v5 != v6)
    {
      v7 = v6 < v5;
    }

    v2 += 12;
  }

  while (v7);
  v8 = &a1[v2];
  if (v2 == 12)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v13 = *(a2 - 12);
      v14 = *(a2 - 8);
      a2 -= 12;
      v15 = v14 | (v13 << 32);
    }

    while (!(v5 == v15 ? *(a2 + 8) < v4 : v15 < v5));
  }

  else
  {
    do
    {
      v9 = *(a2 - 12);
      v10 = *(a2 - 8);
      a2 -= 12;
      v11 = v10 | (v9 << 32);
      if (v5 == v11)
      {
        v12 = *(a2 + 8) < v4;
      }

      else
      {
        v12 = v11 < v5;
      }
    }

    while (!v12);
  }

  v17 = v8;
  if (v8 < a2)
  {
    v18 = a2;
    do
    {
      v19 = *v17;
      *v17 = *v18;
      *v18 = v19;
      LODWORD(v19) = *(v17 + 2);
      *(v17 + 2) = *(v18 + 8);
      *(v18 + 8) = v19;
      do
      {
        v20 = *(v17 + 3);
        v21 = *(v17 + 4);
        v17 += 12;
        v22 = v21 | (v20 << 32);
        if (v5 == v22)
        {
          v23 = *(v17 + 2) < v4;
        }

        else
        {
          v23 = v22 < v5;
        }
      }

      while (v23);
      do
      {
        v24 = *(v18 - 12);
        v25 = *(v18 - 8);
        v18 -= 12;
        v26 = v25 | (v24 << 32);
        if (v5 == v26)
        {
          v27 = *(v18 + 8) < v4;
        }

        else
        {
          v27 = v26 < v5;
        }
      }

      while (!v27);
    }

    while (v17 < v18);
  }

  if (v17 - 12 != a1)
  {
    *a1 = *(v17 - 12);
    *(a1 + 2) = *(v17 - 1);
  }

  *(v17 - 12) = v3;
  *(v17 - 1) = v4;
  return v17 - 12;
}

BOOL sub_115D8F4(unsigned int *a1, unsigned int *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_115D18C(a1, a1 + 3, a2 - 3);
        return 1;
      case 4:
        sub_115D31C(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        sub_115D460(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 2) | (*(a2 - 3) << 32);
      v4 = a1[1] | (*a1 << 32);
      if (v4 == v3)
      {
        v5 = *(a2 - 1) < a1[2];
      }

      else
      {
        v5 = v3 < v4;
      }

      if (v5)
      {
        v6 = *a1;
        *a1 = *(a2 - 3);
        *(a2 - 3) = v6;
        LODWORD(v6) = a1[2];
        a1[2] = *(a2 - 1);
        *(a2 - 1) = v6;
        return 1;
      }

      return 1;
    }
  }

  v8 = a1 + 6;
  sub_115D18C(a1, a1 + 3, a1 + 6);
  v11 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = v11[1] | (*v11 << 32);
    v15 = v8[1] | (*v8 << 32);
    v16 = v11[2];
    if (v15 == v14 ? v16 < v8[2] : v14 < v15)
    {
      break;
    }

LABEL_28:
    v8 = v11;
    v12 += 12;
    v11 += 3;
    if (v11 == a2)
    {
      return 1;
    }
  }

  v18 = *v11;
  v19 = __ROR8__(*v11, 32);
  v20 = v12;
  do
  {
    v21 = a1 + v20;
    *(v21 + 36) = *(a1 + v20 + 24);
    *(v21 + 11) = *(a1 + v20 + 32);
    if (v20 == -24)
    {
      *a1 = v18;
      a1[2] = v16;
      if (++v13 != 8)
      {
        goto LABEL_28;
      }

      return v11 + 3 == a2;
    }

    v22 = *(v21 + 4) | (*(v21 + 3) << 32);
    v23 = v16 < *(v21 + 5);
    if (v22 != v19)
    {
      v23 = v19 < v22;
    }

    v20 -= 12;
  }

  while (v23);
  v24 = a1 + v20;
  *(v24 + 36) = v18;
  *(v24 + 11) = v16;
  if (++v13 != 8)
  {
    goto LABEL_28;
  }

  return v11 + 3 == a2;
}

uint64_t sub_115DB58(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 2)))
    {
      v5 = (0x5555555555555556 * ((a4 - result) >> 2)) | 1;
      v6 = (result + 12 * v5);
      if (0x5555555555555556 * ((a4 - result) >> 2) + 2 >= a3)
      {
        v7 = *v6;
      }

      else
      {
        v7 = *v6;
        v8 = v6[1] | (v7 << 32);
        v9 = v6[3];
        v10 = v6[4] | (v9 << 32);
        if (v10 == v8)
        {
          v11 = v6[2] < v6[5];
        }

        else
        {
          v11 = v8 < v10;
        }

        if (v11)
        {
          v7 = v9;
        }

        else
        {
          v7 = v7;
        }

        if (v11)
        {
          v6 += 3;
          v5 = 0x5555555555555556 * ((a4 - result) >> 2) + 2;
        }
      }

      v12 = v6[1] | (v7 << 32);
      v13 = a4[1] | (*a4 << 32);
      v14 = a4[2];
      if (v13 == v12)
      {
        v15 = v6[2] < v14;
      }

      else
      {
        v15 = v12 < v13;
      }

      if (!v15)
      {
        v16 = *a4;
        v17 = __ROR8__(*a4, 32);
        do
        {
          v25 = a4;
          a4 = v6;
          *v25 = *v6;
          v25[2] = v6[2];
          if (v4 < v5)
          {
            break;
          }

          v26 = (2 * v5) | 1;
          v6 = (result + 12 * v26);
          v5 = 2 * v5 + 2;
          if (v5 < a3)
          {
            v18 = *v6;
            v19 = v6[1] | (v18 << 32);
            v20 = v6[3];
            v21 = v6[4] | (v20 << 32);
            v22 = v21 == v19 ? v6[2] < v6[5] : v19 < v21;
            v18 = v22 ? v20 : v18;
            if (v22)
            {
              v6 += 3;
            }

            else
            {
              v5 = v26;
            }
          }

          else
          {
            v18 = *v6;
            v5 = v26;
          }

          v23 = v6[1] | (v18 << 32);
        }

        while (!(v17 == v23 ? v6[2] < v14 : v23 < v17));
        *a4 = v16;
        a4[2] = v14;
      }
    }
  }

  return result;
}

unsigned int *sub_115DCF4(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = result[2];
    v7 = result;
    do
    {
      v14 = &v7[3 * v4];
      v13 = v14 + 3;
      v15 = (2 * v4) | 1;
      v4 = 2 * v4 + 2;
      if (v4 < a4)
      {
        v9 = v14[6];
        v8 = v14 + 6;
        v10 = *(v8 - 2) | (*(v8 - 3) << 32);
        v11 = v8[1] | (v9 << 32);
        if (v11 == v10)
        {
          v12 = *(v8 - 1) < v8[2];
        }

        else
        {
          v12 = v10 < v11;
        }

        if (v12)
        {
          v13 = v8;
        }

        else
        {
          v4 = v15;
        }
      }

      else
      {
        v4 = v15;
      }

      *v7 = *v13;
      v7[2] = v13[2];
      v7 = v13;
    }

    while (v4 <= ((a4 - 2) >> 1));
    if (v13 == (a2 - 12))
    {
      *v13 = v5;
      v13[2] = v6;
    }

    else
    {
      *v13 = *(a2 - 12);
      v13[2] = *(a2 - 4);
      *(a2 - 12) = v5;
      *(a2 - 4) = v6;
      v16 = v13 - result + 12;
      if (v16 >= 13)
      {
        v17 = (0xAAAAAAAAAAAAAAABLL * (v16 >> 2) - 2) >> 1;
        v18 = &result[3 * v17];
        v19 = v18[1] | (*v18 << 32);
        v20 = v13[1] | (*v13 << 32);
        v21 = v13[2];
        if (v20 == v19 ? v18[2] < v21 : v19 < v20)
        {
          v23 = *v13;
          v24 = __ROR8__(*v13, 32);
          do
          {
            v25 = v13;
            v13 = v18;
            *v25 = *v18;
            v25[2] = v18[2];
            if (!v17)
            {
              break;
            }

            v17 = (v17 - 1) >> 1;
            v18 = &result[3 * v17];
            v26 = v18[1] | (*v18 << 32);
          }

          while (v24 == v26 ? v18[2] < v21 : v26 < v24);
          *v13 = v23;
          v13[2] = v21;
        }
      }
    }
  }

  return result;
}

void sub_115DE98()
{
  v1 = 17;
  strcpy(v0, "segment_curviness");
  v3 = 262;
  strcpy(v2, "length");
  v5 = 529;
  strcpy(v4, "length_on_ferries");
  v7 = 789;
  strcpy(v6, "num_impeding_barriers");
  v8[23] = 16;
  strcpy(v8, "num_name_changes");
  v8[24] = 4;
  operator new();
}

void sub_115E97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  v21 = v19;
  while (1)
  {
    v22 = *(v21 - 9);
    v21 -= 4;
    if (v22 < 0)
    {
      operator delete(*v21);
    }

    if (v21 == &__p)
    {
      _Unwind_Resume(a1);
    }
  }
}

_OWORD *sub_115EC9C(_OWORD *a1, void *a2, uint64_t *a3)
{
  a1[23] = 0u;
  a1[24] = 0u;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  HIBYTE(__p[2]) = 6;
  strcpy(__p, "linear");
  v5 = sub_5F5AC(a2, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    v6 = v5;
    operator delete(__p[0]);
    v5 = v6;
  }

  v7 = sub_5F5AC(v5, a3);
  HIBYTE(__p[2]) = 19;
  strcpy(__p, "criteria_properties");
  v8 = sub_5F5AC(v7, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = sub_588E0(v8);
  v10 = sub_5FC5C();
  if (v9 != v10)
  {
    v12 = v10;
    do
    {
      if (!sub_115F0C0(&xmmword_27C38A8, (v9 + 16)))
      {
        exception = __cxa_allocate_exception(0x40uLL);
        std::operator+<char>();
        v19 = std::string::append(&v26, "' supplied in WalkingRouteScoring config.", 0x29uLL);
        v20 = *&v19->__r_.__value_.__l.__data_;
        __p[2] = v19->__r_.__value_.__r.__words[2];
        *__p = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p[2]) >= 0)
        {
          v21 = __p;
        }

        else
        {
          v21 = __p[0];
        }

        if (SHIBYTE(__p[2]) >= 0)
        {
          v22 = HIBYTE(__p[2]);
        }

        else
        {
          v22 = __p[1];
        }

        v23 = sub_2D390(exception, v21, v22);
      }

      v13 = sub_115F0C0(&xmmword_27C38A8, (v9 + 16));
      if (!v13)
      {
        sub_49EC("unordered_map::at: key not found");
      }

      if (*(v9 + 48) != 5)
      {
        sub_5AF20();
      }

      v14 = *(v13 + 40);
      v15 = *(v9 + 40);
      HIBYTE(__p[2]) = 6;
      strcpy(__p, "weight");
      v16 = sub_63D34(v15, __p);
      if (v14 >= 0x19)
      {
        v24 = __cxa_allocate_exception(0x40uLL);
        v25 = sub_2D390(v24, "Invalid key.", 0xCuLL);
      }

      v17 = &a1[v14];
      *v17 = v16;
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      HIBYTE(__p[2]) = 16;
      strcpy(__p, "non_zero_penalty");
      v17[1] = sub_63D34(v15, __p);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      v9 = *v9;
    }

    while (v9 != v12);
  }

  return a1;
}

void sub_115EF8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_115F020(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v4 = *(v2 + 232);
      v5 = 0.0;
      v6 = (result + 8);
      for (i = 4; i != 29; ++i)
      {
        v8 = *(v2 + 8 * i);
        v9 = v8 * *(v6 - 1);
        if (v8 > 0.0)
        {
          v9 = v9 + *v6;
        }

        v10 = (i - 4);
        if (v10 <= 0x14 && ((1 << v10) & 0x100600) != 0)
        {
          v4 = v4 + v9;
          *(v2 + 232) = v4;
        }

        v5 = v5 + v9;
        v6 += 2;
      }

      *(v2 + 16) = v5;
      v2 += 240;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t **sub_115F0C0(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = *(v2 + 23);
    if (v13 >= 0)
    {
      v14 = *(v2 + 23);
    }

    else
    {
      v14 = v2[1];
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void sub_115F278()
{
  v1 = 17;
  strcpy(v0, "segment_curviness");
  v3 = 262;
  strcpy(v2, "length");
  v5 = 529;
  strcpy(v4, "length_on_ferries");
  v7 = 789;
  strcpy(v6, "num_impeding_barriers");
  v8[23] = 16;
  strcpy(v8, "num_name_changes");
  v8[24] = 4;
  operator new();
}

void sub_115FD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  v21 = v19;
  while (1)
  {
    v22 = *(v21 - 9);
    v21 -= 4;
    if (v22 < 0)
    {
      operator delete(*v21);
    }

    if (v21 == &__p)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_116007C(int8x16_t *a1)
{
  if ((atomic_load_explicit(&qword_27C38D0, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    v4 = __cxa_guard_acquire(&qword_27C38D0);
    a1 = v3;
    if (v4)
    {
      LOBYTE(v6) = 0;
      sub_BEE920(&v7, "ford", &v6);
      LOBYTE(__dst) = 1;
      sub_BEE920(&v9, "ferry", &__dst);
      sub_11605B4(&unk_27C38D8, &v7, 2);
      if (v10 < 0)
      {
        operator delete(v9);
      }

      if (v8 < 0)
      {
        operator delete(v7);
      }

      __cxa_guard_release(&qword_27C38D0);
      a1 = v3;
    }
  }

  v1 = a1->i64[1];
  if (a1[1].i8[7] >= 0)
  {
    v2 = a1[1].u8[7];
  }

  else
  {
    a1 = a1->i64[0];
    v2 = v1;
  }

  sub_22174(a1, v2, 0x2Cu, &v6);
}

void sub_11604BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
    if (a25 < 0)
    {
LABEL_5:
      operator delete(a20);
      __cxa_guard_abort(&qword_27C38D0);
      _Unwind_Resume(a1);
    }
  }

  else if (a25 < 0)
  {
    goto LABEL_5;
  }

  __cxa_guard_abort(&qword_27C38D0);
  _Unwind_Resume(a1);
}

void sub_116053C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *__p, uint64_t a8, int a9, __int16 a10, char a11, char a12, void **a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  std::ios::~ios();
  sub_1A104(&a20);
  _Unwind_Resume(a1);
}

void sub_11605A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

uint64_t sub_11605B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      sub_116062C(a1, a2, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

uint64_t **sub_116062C(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_AAD8(&v25, a2, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_43;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v9)
    {
      v11 = v7 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_43:
    operator new();
  }

  v14 = *(v3 + 23);
  if (v14 >= 0)
  {
    v15 = *(v3 + 23);
  }

  else
  {
    v15 = v3[1];
  }

  if (v14 < 0)
  {
    v3 = *v3;
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v13[1];
      if (v20 == v8)
      {
        v21 = *(v13 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v13[3];
        }

        if (v21 == v15)
        {
          v23 = v22 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v23, v3, v15))
          {
            return v13;
          }
        }
      }

      else if ((v20 & (*&v9 - 1)) != v11)
      {
        goto LABEL_43;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_43;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_43;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v3, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_1160A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_1160A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1160A5C(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = *(v2 + 23);
    if (v13 >= 0)
    {
      v14 = *(v2 + 23);
    }

    else
    {
      v14 = v2[1];
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void sub_1160C14(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_3B2978(a1);
  __p[0] = 0;
  __p[1] = 0;
  v67 = 0;
  v7 = sub_4A084C(v6 + 16, a2, 1);
  if (v7)
  {
    v8 = &v7[-*v7];
    if (*v8 >= 7u)
    {
      v9 = *(v8 + 3);
      if (v9)
      {
        if (*&v7[v9 + *&v7[v9]] > HIDWORD(a2))
        {
          v10 = sub_6213F8(v6, a2, 0);
          v11 = (v10 + *(v10 - *v10 + 8));
          sub_1161834((v11 + *v11), &v62);
          v65 = 0;
          v64 = 0uLL;
          v12 = sub_3AF6B4(a1);
          v13 = v62;
          v14 = v63;
          if (v62 != v63)
          {
            v15 = v12;
            if (*(v12 + 7774) == 1)
            {
              while (1)
              {
                if (*(v15 + 7774) == 1)
                {
                  v20 = *v13;
                  v21 = sub_2AF704(v15 + 3896, *v13, 1);
                  if (!v21)
                  {
                    break;
                  }

                  v22 = &v21[-*v21];
                  if (*v22 < 5u)
                  {
                    break;
                  }

                  v23 = *(v22 + 2);
                  if (!v23 || *&v21[v23 + *&v21[v23]] <= (HIDWORD(v20) & 0x1FFFFFFFu) || !sub_2B817C(v15, v20 & 0x1FFFFFFFFFFFFFFFLL))
                  {
                    break;
                  }
                }

                if (++v13 == v14)
                {
                  goto LABEL_7;
                }
              }
            }

            else
            {
LABEL_7:
              sub_F92178(v80, a1, 3);
              v89 = sub_3AF6B4(a1);
              v17 = v62;
              v16 = v63;
              v18 = *(&v64 + 1);
              if (*(&v64 + 1) >= v65)
              {
                v19 = sub_49EF84(&v64);
              }

              else
              {
                sub_F6EB3C(*(&v64 + 1));
                v19 = v18 + 552;
              }

              v24 = ((v16 - v17) >> 3) - 1;
              *(&v64 + 1) = v19;
              sub_F6F544((v19 - 552), v24);
              v25 = v63;
              if (v62 != v63)
              {
                v26 = (v62 + 8);
                if (v62 + 8 != v63)
                {
                  do
                  {
                    v29 = *(v26 - 1);
                    v28 = *v26;
                    v30 = v29 == *v26 && ((*v26 ^ v29) & 0x1FFFFFFF00000000) == 0;
                    if (v30 || ((v29 & 0x4000000000000000) == 0 ? (v31 = v29 < 0) : (v31 = 0), !v31 ? (v32 = 0) : (v32 = 0x40000000), (v28 & 0x4000000000000000) == 0 ? (v33 = v28 < 0) : (v33 = 0), !v33 ? (v34 = 0) : (v34 = 0x40000000), (sub_116170C(v80, v29 | (((v29 >> 33) & 0x10000000 | HIDWORD(v29) & 0xFFFFFFF | ((HIDWORD(v29) & 0x40000000u) >> 1) | v32) << 32), v28 | (((v28 >> 33) & 0x10000000 | HIDWORD(v28) & 0xFFFFFFF | ((HIDWORD(v28) & 0x40000000u) >> 1) | v34) << 32), &v90), !v93) || ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(v90), vceqzq_s64(v94)), xmmword_22671F0)) & 0xF) == 0 ? (v35 = v97 == 0) : (v35 = 1), v35)))
                    {
                      if (sub_F6FDC8(*(&v64 + 1) - 552))
                      {
                        if ((v29 & 0x4000000000000000) == 0 && v29 < 0)
                        {
                          v37 = 0x40000000;
                        }

                        else
                        {
                          v37 = 0;
                        }

                        v38 = (v29 >> 33) & 0x10000000 | HIDWORD(v29) & 0xFFFFFFF | ((HIDWORD(v29) & 0x40000000u) >> 1);
                        v39 = v38 | v37;
                        v40 = *(&v64 + 1);
                        sub_F92868(v80, v29 | (((2 * v38) & 0x60000000 | v39 & 0xFFFFFFF | (((v39 & 0x60000000) == 0x40000000) << 31)) << 32), v90.i64);
                        sub_F69060(v40 - 552, v29 | (v39 << 32), &v90, 0);
                      }

                      sub_F71344(*(&v64 + 1) - 552);
                      v41 = sub_F69D08(*(&v64 + 1) - 552);
                      v42 = *(&v64 + 1);
                      if (*(&v64 + 1) >= v65)
                      {
                        v27 = sub_49EF84(&v64);
                      }

                      else
                      {
                        sub_F6EB3C(*(&v64 + 1));
                        v27 = v42 + 552;
                      }

                      v24 += ~v41;
                      *(&v64 + 1) = v27;
                      sub_F6F544((v27 - 552), v24);
                    }

                    else
                    {
                      sub_F6F284((*(&v64 + 1) - 552), &v90, 0);
                    }

                    ++v26;
                  }

                  while (v26 != v25);
                }
              }

              if (sub_F6FDC8(*(&v64 + 1) - 552))
              {
                v43 = *(v63 - 1);
                v44 = HIDWORD(v43) & 0x40000000;
                if (v43 < 0 && v44 == 0)
                {
                  v46 = 0x40000000;
                }

                else
                {
                  v46 = 0;
                }

                v47 = (v43 >> 33) & 0x10000000 | HIDWORD(v43) & 0xFFFFFFF | (v44 >> 1);
                v48 = v47 | v46;
                v49 = *(&v64 + 1);
                v50 = v43;
                sub_F92868(v80, v43 | (((2 * v47) & 0x60000000 | v48 & 0xFFFFFFF | (((v48 & 0x60000000) == 0x40000000) << 31)) << 32), v90.i64);
                sub_F69060(v49 - 552, v50 | (v48 << 32), &v90, 0);
              }

              v52 = *(&v64 + 1);
              for (i = v64; i != v52; i += 552)
              {
                v90.i64[1] = 0;
                v91 = 0;
                LOBYTE(v93) = 0;
                v92 = 0;
                v94.i64[0] = 0x3FF0000000000000;
                v94.i8[8] = 1;
                v95 = 0;
                v96 = 0;
                v97 = -1935671296;
                v98[0] = 0;
                *(v98 + 3) = 0;
                v90.i32[0] = 0;
                sub_F68F20(i, &v90);
                v69 = 0;
                v70 = 0;
                v72 = 0;
                v71 = 0;
                v73 = 0x3FF0000000000000;
                v74 = 1;
                v75 = 0;
                v76 = 0;
                v77 = 0;
                v78 = -29536;
                v79[0] = 0;
                *(v79 + 3) = 0;
                v68 = 1000000000;
                sub_F6901C(i, &v68);
              }

              if (v87)
              {
                v88 = v87;
                operator delete(v87);
              }

              v53 = v86;
              if (v86)
              {
                do
                {
                  v54 = *v53;
                  operator delete(v53);
                  v53 = v54;
                }

                while (v54);
              }

              v55 = v85;
              v85 = 0;
              if (v55)
              {
                operator delete(v55);
              }

              if (v83)
              {
                v84 = v83;
                operator delete(v83);
              }

              if (v81)
              {
                v82 = v81;
                operator delete(v81);
              }
            }
          }

          v56 = __p[0];
          if (__p[0])
          {
            v57 = __p[1];
            v58 = __p[0];
            if (__p[1] != __p[0])
            {
              do
              {
                v57 = sub_4547F0(v57 - 552);
              }

              while (v57 != v56);
              v58 = __p[0];
            }

            __p[1] = v56;
            operator delete(v58);
          }

          *__p = v64;
          v67 = v65;
          v65 = 0;
          v64 = 0uLL;
          if (v62)
          {
            v63 = v62;
            operator delete(v62);
          }
        }
      }
    }
  }

  sub_F640F8(a3, __p);
  v59 = __p[0];
  if (__p[0])
  {
    v60 = __p[1];
    v61 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v60 = sub_4547F0(v60 - 552);
      }

      while (v60 != v59);
      v61 = __p[0];
    }

    __p[1] = v59;
    operator delete(v61);
  }
}

void sub_1161230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_3BFA2C(&a33);
  sub_487EC4(&a15);
  if (__p)
  {
    operator delete(__p);
  }

  sub_487EC4(&a19);
  _Unwind_Resume(a1);
}

unint64_t sub_11612CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_F63FF4(a1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (result != -1)
  {
    if (result + 1 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_1161384(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_11613A0(uint64_t *a1, unint64_t a2)
{
  sub_1160C14(a1, a2, &v17);
  v14 = 10;
  strcpy(__p, "WalkingETA");
  __t = 0uLL;
  v16 = 0;
  v4 = sub_3AEC94(a1, __p, &__t);
  v5 = __t;
  if (__t)
  {
    v6 = *(&__t + 1);
    v7 = __t;
    if (*(&__t + 1) != __t)
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
      v7 = __t;
    }

    *(&__t + 1) = v5;
    operator delete(v7);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(v16) = 13;
  strcpy(&__t, "eta_evaluator");
  v9 = sub_5F8FC(v4, &__t);
  v12 = 13;
  strcpy(v11, "cost_function");
  v10 = sub_5F8FC(v4, v11);
  sub_FBB328(__p, a1, v9, v10);
}

void sub_1161660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_419F14((v14 - 120));
  sub_C64C18(&a14);
  sub_454784(v14 - 96);
  _Unwind_Resume(a1);
}

void sub_11616A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 - 97) < 0)
  {
    operator delete(*(v22 - 120));
  }

  sub_454784(v22 - 96);
  _Unwind_Resume(a1);
}

void sub_116170C(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_F92948(a1, a2, 0, &v16);
  v6 = v16;
  v7 = v16;
  if (v16 != v17)
  {
    v7 = v16;
    while (1)
    {
      v8 = *(v7 + 9);
      if (a3 == v8)
      {
        v9 = HIDWORD(v8) & 0xFFFFFFF;
        v10 = (v8 >> 33) & 0x10000000;
        v11 = (v8 & 0x4000000000000000) == 0 && v8 < 0;
        LODWORD(v8) = v11 ? 0x40000000 : 0;
        if ((v10 | v9 | ((HIDWORD(v8) & 0x40000000u) >> 1) | v8 | (*(v7 + 10) >> 26) & 0x80000000) == HIDWORD(a3))
        {
          break;
        }
      }

      v7 = (v7 + 88);
      if (v7 == v17)
      {
        goto LABEL_15;
      }
    }
  }

  if (v7 == v17)
  {
LABEL_15:
    *(a4 + 80) = 0;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    if (!v6)
    {
      return;
    }

    goto LABEL_16;
  }

  v12 = v7[1];
  *a4 = *v7;
  *(a4 + 16) = v12;
  v13 = v7[2];
  v14 = v7[3];
  v15 = v7[4];
  *(a4 + 80) = *(v7 + 10);
  *(a4 + 48) = v14;
  *(a4 + 64) = v15;
  *(a4 + 32) = v13;
  if (v6)
  {
LABEL_16:
    v17 = v6;
    operator delete(v6);
  }
}

void sub_1161818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1161834(unsigned int *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1161908(&v8, a2, a1);
  v4 = *a1;
  v8 = a2;
  if (v4)
  {
    v5 = 8 * v4;
    v6 = a1 + 1;
    do
    {
      v7 = (*v6 | (((*v6 >> 5) & 0x20000000 | (*v6 >> 35) | (((HIDWORD(*v6) & 3) == 2) << 30) | (((HIDWORD(*v6) & 3) == 1) << 31)) << 32)) ^ 0x2000000000000000;
      sub_A2324(&v8, &v7);
      v6 += 2;
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_11618E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1161908(uint64_t a1, void *a2, unsigned int *a3)
{
  v3 = *a3 + ((a2[1] - *a2) >> 3);
  if (v3 > (a2[2] - *a2) >> 3)
  {
    if (!(v3 >> 61))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_1161ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1161B00(void *result, uint64_t a2, void *a3)
{
  *result = *a3;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void sub_1161C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1161C4C(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v34 = a3[1];
  if (*a3 == v34)
  {
    return 0;
  }

  while (2)
  {
    v35 = v3;
    sub_1165F34(v3, &v54);
    v6 = v54;
    v40 = v55;
    if (v54 == v55)
    {
      if (v54)
      {
        goto LABEL_60;
      }

      goto LABEL_5;
    }

    do
    {
      v7 = v6[1];
      v8 = v7 - *v6;
      if (*a1 < (v8 >> 3))
      {
        if (!sub_7E7E4(1u))
        {
          goto LABEL_13;
        }

        v53 = 0;
        v43 = *&v39;
        *(&v43 + *(*&v39 - 24)) = v38;
        v9 = (&v43 + *(v43 - 3));
        std::ios_base::init(v9, &v44);
        v9[1].__vftable = 0;
        v9[1].__fmtflags_ = -1;
        std::locale::locale(&v45);
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        memset(&v49, 0, sizeof(v49));
        v51 = 16;
        v50 = &v49;
        std::string::append(&v49, 0x16uLL, 0);
        size = v49.__r_.__value_.__l.__size_;
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
        }

        *(&v47 + 1) = &v49;
        *&v48 = &v49;
        *(&v48 + 1) = &v49 + size;
        sub_4A5C(&v43, "Excessive loop length (", 23);
        v13 = std::ostream::operator<<();
        sub_4A5C(v13, " segments); ignoring the loop.", 30);
        if ((v51 & 0x10) != 0)
        {
          v23 = v50;
          v24 = &v47 + 1;
          if (v50 < v48)
          {
            v50 = v48;
            v23 = v48;
            v24 = &v47 + 1;
          }
        }

        else
        {
          if ((v51 & 8) == 0)
          {
            v14 = 0;
            HIBYTE(v42) = 0;
            goto LABEL_46;
          }

          v23 = v47;
          v24 = &v46;
        }

        v25 = *v24;
        v14 = v23 - *v24;
        if (v14 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v14 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v42) = v23 - *v24;
        if (v14)
        {
          memmove(__p, v25, v14);
        }

LABEL_46:
        *(__p + v14) = 0;
        sub_7E854(__p, 1u);
        if (SHIBYTE(v42) < 0)
        {
          goto LABEL_9;
        }

        goto LABEL_10;
      }

      v15 = a1[2];
      v16 = a1[3];
      if (v15 != v16)
      {
        v17 = *(v7 - 8);
        while (__PAIR64__(*(v15 + 4), *v15) != __PAIR64__(WORD2(v17), v17) || *(v15 + 6) != BYTE6(v17))
        {
          v15 += 8;
          if (v15 == v16)
          {
            goto LABEL_33;
          }
        }
      }

      if (v15 == v16)
      {
LABEL_33:
        if (v7 != *v6)
        {
          if ((v8 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        __p[0] = 0;
        __p[1] = 0;
        v42 = 0;
        v56 = __p;
        v57 = 0;
        operator new();
      }

      if (sub_7E7E4(1u))
      {
        v53 = 0;
        v43 = *&v39;
        *(&v43 + *(*&v39 - 24)) = v38;
        v18 = (&v43 + *(v43 - 3));
        std::ios_base::init(v18, &v44);
        v18[1].__vftable = 0;
        v18[1].__fmtflags_ = -1;
        std::locale::locale(&v45);
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        memset(&v49, 0, sizeof(v49));
        v51 = 16;
        v50 = &v49;
        std::string::append(&v49, 0x16uLL, 0);
        v19 = v49.__r_.__value_.__l.__size_;
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
        }

        *(&v47 + 1) = &v49;
        *&v48 = &v49;
        *(&v48 + 1) = &v49 + v19;
        v20 = sub_4A5C(&v43, "Found loop that shares end (", 28);
        v21 = sub_30E900(v20, *(v6[1] - 8));
        sub_4A5C(v21, " of a loop from a previous iteration. Ignoring the loop", 55);
        if ((v51 & 0x10) != 0)
        {
          v26 = v50;
          v27 = &v47 + 1;
          if (v50 < v48)
          {
            v50 = v48;
            v26 = v48;
            v27 = &v47 + 1;
          }
        }

        else
        {
          if ((v51 & 8) == 0)
          {
            v22 = 0;
            HIBYTE(v42) = 0;
            goto LABEL_57;
          }

          v26 = v47;
          v27 = &v46;
        }

        v28 = *v27;
        v22 = v26 - *v27;
        if (v22 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v22 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v42) = v26 - *v27;
        if (v22)
        {
          memmove(__p, v28, v22);
        }

LABEL_57:
        *(__p + v22) = 0;
        sub_7E854(__p, 1u);
        if (SHIBYTE(v42) < 0)
        {
LABEL_9:
          operator delete(__p[0]);
        }

LABEL_10:
        v43 = *&v37;
        *(&v43 + *(*&v37 - 24)) = v36;
        v44 = v11;
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }

        v44 = v10;
        std::locale::~locale(&v45);
        std::ostream::~ostream();
        std::ios::~ios();
      }

LABEL_13:
      v6 += 3;
    }

    while (v6 != v40);
    v6 = v54;
    if (v54)
    {
LABEL_60:
      v29 = v55;
      v5 = v6;
      if (v55 != v6)
      {
        v30 = v55;
        do
        {
          v32 = *(v30 - 3);
          v30 -= 3;
          v31 = v32;
          if (v32)
          {
            *(v29 - 2) = v31;
            operator delete(v31);
          }

          v29 = v30;
        }

        while (v30 != v6);
        v5 = v54;
      }

      v55 = v6;
      operator delete(v5);
    }

LABEL_5:
    v3 = v35 + 69;
    if (v35 + 69 != v34)
    {
      continue;
    }

    return 0;
  }
}

void sub_11626A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  sub_1959728(&a29);
  sub_34BE0((v43 - 144));
  _Unwind_Resume(a1);
}

void sub_116298C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_11629B0()
{
  byte_27C3947 = 3;
  LODWORD(qword_27C3930) = 5136193;
  byte_27C395F = 3;
  LODWORD(qword_27C3948) = 5136194;
  byte_27C3977 = 3;
  LODWORD(qword_27C3960) = 5136195;
  byte_27C398F = 15;
  strcpy(&qword_27C3978, "vehicle_mass_kg");
  byte_27C39A7 = 21;
  strcpy(&xmmword_27C3990, "vehicle_cargo_mass_kg");
  byte_27C39BF = 19;
  strcpy(&qword_27C39A8, "vehicle_aux_power_w");
  byte_27C39D7 = 15;
  strcpy(&qword_27C39C0, "dcdc_efficiency");
  strcpy(&qword_27C39D8, "drive_train_efficiency");
  HIBYTE(word_27C39EE) = 22;
  operator new();
}

void sub_1162B8C(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C39EE) < 0)
  {
    sub_21E8D5C();
  }

  sub_21E8D68();
  _Unwind_Resume(a1);
}

void sub_1162BAC(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = a2;
  *(a1 + 8) = a4;
  sub_437D88((a1 + 2), a2, a4);
  sub_42456C((a1 + 7), *a1);
  a1[76] = sub_3AF6B4(*a1);
  sub_F8E7AC(a1 + 616, a2, 0);
}

void sub_1162C3C(_Unwind_Exception *a1)
{
  sub_404134((v1 + 616));
  sub_772CE0(v1 + 56);
  _Unwind_Resume(a1);
}

void sub_1162C58(_Unwind_Exception *a1)
{
  sub_404134((v1 + 616));
  sub_772CE0(v1 + 56);
  _Unwind_Resume(a1);
}

void sub_1162C8C(uint64_t a1@<X0>, void *a2@<X1>, void **a3@<X8>)
{
  v6 = sub_F69D6C(a2);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (!v6)
  {
    __p[0] = 0;
    __p[1] = 0;
    v31 = 0;
    sub_4C35D4(a2, &v25);
    v8 = *(&v25 + 1);
    v7 = v25;
    *&v27 = __p;
    *(&v27 + 1) = a1;
    for (*&v28 = a3; v7 != v8; v7 += 88)
    {
      sub_116BB8C(&v27, v7);
    }

    v9 = sub_F6966C(a2);
    v10 = *v9;
    v11 = *(v9 + 16);
    v29 = *(v9 + 32);
    v27 = v10;
    v28 = v11;
    sub_437ECC((a1 + 16), &v27, &v25);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v25;
    v31 = v26;
    v12 = *(&v25 + 1);
    v13 = v25;
    if (v25 != *(&v25 + 1))
    {
      v14 = a3[1];
      do
      {
        while (1)
        {
          v15 = v29 & 0xFFFFFFFFFFFFFFLL;
          v25 = *v13;
          v16 = a3[2];
          if (v14 >= v16)
          {
            break;
          }

          *v14 = v15;
          *(v14 + 8) = v25;
          v14 += 24;
          a3[1] = v14;
          if (++v13 == v12)
          {
            goto LABEL_22;
          }
        }

        v17 = *a3;
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a3) >> 3);
        v19 = v18 + 1;
        if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v20 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 3);
        if (2 * v20 > v19)
        {
          v19 = 2 * v20;
        }

        if (v20 >= 0x555555555555555)
        {
          v21 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          if (v21 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v22 = v14;
        v23 = 8 * ((v14 - *a3) >> 3);
        *v23 = v15;
        *(v23 + 8) = v25;
        v14 = (24 * v18 + 24);
        v24 = (24 * v18 - (v22 - v17));
        memcpy(v24, v17, v22 - v17);
        *a3 = v24;
        a3[1] = v14;
        a3[2] = 0;
        if (v17)
        {
          operator delete(v17);
        }

        a3[1] = v14;
        ++v13;
      }

      while (v13 != v12);
LABEL_22:
      v13 = __p[0];
    }

    if (v13)
    {
      __p[1] = v13;
      operator delete(v13);
    }
  }
}

void sub_1162EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
    v22 = *v20;
    if (!*v20)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v22 = *v20;
    if (!*v20)
    {
      goto LABEL_3;
    }
  }

  *(v20 + 8) = v22;
  operator delete(v22);
  _Unwind_Resume(exception_object);
}

void sub_1162F2C(void *a1@<X1>, void **a2@<X8>)
{
  v2 = a1;
  v4 = sub_F69D6C(a1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (!v4)
  {
    v21 = sub_F69D2C(v2);
    if (v21)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v20 = v2;
      do
      {
        v8 = sub_F69DE0(v2, v7);
        sub_43EDEC(&v24);
        v22 = v7;
        if (v6)
        {
          operator delete(v6);
        }

        v9 = *(&v24 + 1);
        v10 = v24;
        for (i = v24; v10 != v9; ++v10)
        {
          while (1)
          {
            v11 = v8[4] & 0xFFFFFFFFFFFFFFLL;
            v24 = *v10;
            v12 = a2[2];
            if (v5 >= v12)
            {
              break;
            }

            *v5 = v11;
            *(v5 + 8) = v24;
            v5 += 24;
            a2[1] = v5;
            if (++v10 == v9)
            {
              goto LABEL_4;
            }
          }

          v13 = *a2;
          v14 = v5 - *a2;
          v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3) + 1;
          if (v15 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          v16 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3);
          if (2 * v16 > v15)
          {
            v15 = 2 * v16;
          }

          if (v16 >= 0x555555555555555)
          {
            v17 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            if (v17 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v18 = 8 * (v14 >> 3);
          *v18 = v11;
          *(v18 + 8) = v24;
          v5 = (v18 + 24);
          v19 = (v18 - v14);
          memcpy((v18 - v14), v13, v14);
          *a2 = v19;
          a2[1] = v5;
          a2[2] = 0;
          if (v13)
          {
            operator delete(v13);
          }

          a2[1] = v5;
        }

LABEL_4:
        v6 = i;
        v7 = v22 + 1;
        v2 = v20;
      }

      while (v22 + 1 != v21);
      if (i)
      {
        operator delete(i);
      }
    }
  }
}

void sub_1163158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v15)
  {
    operator delete(v15);
    v17 = *v14;
    if (!*v14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v17 = *v14;
    if (!*v14)
    {
      goto LABEL_3;
    }
  }

  *(v14 + 8) = v17;
  operator delete(v17);
  _Unwind_Resume(exception_object);
}

void sub_11631A4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (!sub_3B8508() || sub_F69D6C(a1) || sub_F695B8(a1))
  {
    return;
  }

  v66 = sub_3AF6B4(a3);
  v8 = sub_F69654(a1);
  sub_2B7A20(v66, *(v8 + 32) & 0xFFFFFFFFFFFFFFLL, v72);
  v9 = __p;
  v63 = a3;
  if (__p == v74)
  {
    v13 = 0x7FFFFFFF;
    v14 = 0xFFFFFFFF00000000;
    v15 = 0xFFFFFFFFLL;
    if (!__p)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = sub_31AA0C(v72);
  v11 = v10;
  v13 = v12;
  v14 = v10 & 0xFFFFFFFF00000000;
  v9 = __p;
  v15 = v11;
  if (__p)
  {
LABEL_6:
    v74 = v9;
    operator delete(v9);
  }

LABEL_7:
  v70 = v14 | v15;
  v71 = v13;
  if (v15 == 0xFFFFFFFFLL && v14 == 0xFFFFFFFF00000000 || (sub_3B8540(v63, &v70) & 1) == 0)
  {
    sub_F69654(a1);
    operator new();
  }

  v64 = 0;
  __src = 0;
  sub_4D0560();
  v17 = v16;
  v19 = v18;
  sub_F68FDC();
  v21 = v20;
  v23 = v22;
  v24 = 0;
  while (1)
  {
    ++v19;
    if (v17)
    {
      v25 = sub_F69D2C(v17);
      v26 = v19 < v25;
      if (!v21)
      {
        if (v19 >= v25)
        {
          break;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (!v21)
      {
        break;
      }

      v26 = 0;
    }

    v27 = sub_F69D2C(v21);
    if (v23 < v27 && v26)
    {
      v29 = sub_F69DE0(v17, v19);
      if (v29 == sub_F69DE0(v21, v23))
      {
        break;
      }

      goto LABEL_25;
    }

    if (((v26 ^ (v23 < v27)) & 1) == 0)
    {
      break;
    }

LABEL_25:
    v24 += sub_F69E5C(v17, v19);
    if (v24 > a2)
    {
      v30 = sub_F69DE0(v17, v19);
      sub_2B7A20(v66, v30[4] & 0xFFFFFFFFFFFFFFLL, v72);
      v31 = __p;
      v62 = a1;
      if (__p == v74)
      {
        v35 = 0x7FFFFFFF;
        v36 = 0xFFFFFFFF00000000;
        v37 = 0xFFFFFFFFLL;
        if (!__p)
        {
          goto LABEL_29;
        }

LABEL_28:
        v74 = v31;
        operator delete(v31);
        goto LABEL_29;
      }

      v32 = sub_31A76C(v72);
      v33 = v32;
      v35 = v34;
      v36 = v32 & 0xFFFFFFFF00000000;
      v31 = __p;
      v37 = v33;
      if (__p)
      {
        goto LABEL_28;
      }

LABEL_29:
      v68 = v36 | v37;
      v69 = v35;
      if (v37 == 0xFFFFFFFFLL && v36 == 0xFFFFFFFF00000000 || (sub_3B8540(v63, &v68) & 1) == 0)
      {
        v38 = sub_F69DE0(v17, v19)[4];
        v39 = a4[2];
        if (v64 >= v39)
        {
          v42 = v64 - __src;
          v43 = v42 + 1;
          if ((v42 + 1) >> 61)
          {
            *a4 = __src;
            sub_1794();
          }

          v44 = v39 - __src;
          if (v44 >> 2 > v43)
          {
            v43 = v44 >> 2;
          }

          if (v44 >= 0x7FFFFFFFFFFFFFF8)
          {
            v45 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v45 = v43;
          }

          if (v45)
          {
            if (!(v45 >> 61))
            {
              operator new();
            }

            *a4 = __src;
            sub_1808();
          }

          v41 = 0;
          v46 = (8 * v42);
          *v46 = v38 & 0xFFFFFFFFFFFFFFLL;
          memcpy(0, __src, v64 - __src);
          v65 = v46 + 1;
          a4[1] = v46 + 1;
          a4[2] = 0;
          a1 = v62;
          v40 = v65;
        }

        else
        {
          *v64 = v38 & 0xFFFFFFFFFFFFFFLL;
          v40 = v64 + 1;
          v41 = __src;
          a1 = v62;
        }

        v64 = v40;
        a4[1] = v40;
        __src = v41;
      }

      else
      {
        a1 = v62;
      }
    }
  }

  *a4 = __src;
  v47 = sub_F6966C(a1);
  sub_2B7A20(v66, *(v47 + 32) & 0xFFFFFFFFFFFFFFLL, v72);
  v48 = __p;
  if (__p == v74)
  {
    v52 = 0x7FFFFFFF;
    v53 = 0xFFFFFFFF00000000;
    v54 = 0xFFFFFFFFLL;
    if (__p)
    {
LABEL_50:
      v74 = v48;
      operator delete(v48);
    }
  }

  else
  {
    v49 = sub_31A76C(v72);
    v50 = v49;
    v52 = v51;
    v53 = v49 & 0xFFFFFFFF00000000;
    v48 = __p;
    v54 = v50;
    if (__p)
    {
      goto LABEL_50;
    }
  }

  v68 = v53 | v54;
  v69 = v52;
  if (v54 == 0xFFFFFFFFLL && v53 == 0xFFFFFFFF00000000 || (sub_3B8540(v63, &v68) & 1) == 0)
  {
    v55 = *(sub_F6966C(a1) + 32);
    v56 = a4[2];
    if (v64 >= v56)
    {
      v58 = v64 - __src;
      v59 = v58 + 1;
      if ((v58 + 1) >> 61)
      {
        sub_1794();
      }

      v60 = v56 - __src;
      if (v60 >> 2 > v59)
      {
        v59 = v60 >> 2;
      }

      if (v60 >= 0x7FFFFFFFFFFFFFF8)
      {
        v61 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v61 = v59;
      }

      if (v61)
      {
        if (!(v61 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      *(8 * v58) = v55 & 0xFFFFFFFFFFFFFFLL;
      memcpy(0, __src, v64 - __src);
      *a4 = 0;
      a4[1] = (8 * v58 + 8);
      v57 = (8 * v58 + 8);
      a4[2] = 0;
    }

    else
    {
      *v64 = v55 & 0xFFFFFFFFFFFFFFLL;
      v57 = v64 + 1;
    }

    a4[1] = v57;
  }
}

void sub_1163720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, _Unwind_Exception *exception_objecta, uint64_t a22)
{
  if (__p)
  {
    *(v22 + 8) = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_11637AC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, void *a5@<X8>)
{
  if (sub_F69D6C(a2))
  {
    v30 = 0;
    v28 = 0u;
    *__p = 0u;
    *v26 = 0u;
    *v27 = 0u;
  }

  else
  {
    sub_4252B8(a1 + 56, a2, v26);
    if (v26[0] != v26[1])
    {
      goto LABEL_6;
    }
  }

  if (v27[1] == v28 && __p[0] == __p[1])
  {
    goto LABEL_12;
  }

LABEL_6:
  if (*a4 == 0x7FFFFFFF || (v10 = sub_100E984(a3, a2, *(a1 + 4936), a4, *(a1 + 8), a4[2]), v11 = v10, v10[5] == 0x7FFFFFFF) || (v13 = *(v10 + 4), v12 = *(v10 + 5), sub_F69D2C(a2) + 2 != (v12 - v13) >> 4))
  {
LABEL_12:
    sub_116AF38(a5, v26);
    goto LABEL_13;
  }

  v14 = sub_F69D2C(a2);
  if (v14)
  {
    if (!(v14 >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_F69D2C(a2))
  {
    operator new();
  }

  if (a4[2])
  {
    v21 = v11[5];
    v22 = v21 / -10;
    v23 = v21 % 10;
    if (v21 < 0)
    {
      v24 = -5;
    }

    else
    {
      v24 = 5;
    }

    v25 = v22 + *a4 + (((-103 * (v24 + v23)) >> 15) & 1) + ((-103 * (v24 + v23)) >> 10);
  }

  else
  {
    v25 = *a4;
  }

  sub_426750(a1 + 56, a2, v25, a5);
LABEL_13:
  v15 = __p[0];
  if (__p[0])
  {
    v16 = __p[1];
    v17 = __p[0];
    if (__p[1] != __p[0])
    {
      v18 = __p[1];
      do
      {
        v20 = *(v18 - 3);
        v18 -= 24;
        v19 = v20;
        if (v20)
        {
          *(v16 - 2) = v19;
          operator delete(v19);
        }

        v16 = v18;
      }

      while (v18 != v15);
      v17 = __p[0];
    }

    __p[1] = v15;
    operator delete(v17);
  }

  if (v27[1])
  {
    *&v28 = v27[1];
    operator delete(v27[1]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }
}

void sub_1163B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_4266B8(va);
  _Unwind_Resume(a1);
}

double sub_1163BD4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_1163BE8(void *a2@<X1>, void *a3@<X8>)
{
  v151 = 0uLL;
  v152 = 0;
  if (sub_F69D6C(a2) || sub_F695B8(a2))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v5 = v151;
    if (v151)
    {
      goto LABEL_118;
    }

    return;
  }

  v82 = a3;
  v6 = 0;
  v88[0] = &unk_2290750;
  v88[1] = 0;
  v89 = 0u;
  v90 = 0;
  v91 = &unk_2290750;
  v92 = 0;
  v93 = 0u;
  v94 = 0;
  v95 = &unk_2290750;
  v96 = 0;
  v97 = 0u;
  v98 = 0;
  v99 = &unk_2290750;
  v100 = 0u;
  v102 = 0;
  v103 = &unk_2290750;
  v101 = 0;
  v105 = 0;
  v104 = 0u;
  v106 = 0;
  v107 = &unk_2290750;
  v110 = 0;
  v111 = &unk_2290750;
  v109 = 0;
  v108 = 0u;
  v112 = 0u;
  v113 = 0;
  v114 = 0;
  v115 = &unk_2290750;
  v116 = 0u;
  v118 = 0;
  v119 = &unk_2290750;
  v117 = 0;
  v120 = 0u;
  v121 = 0;
  v122 = 0;
  v123 = &unk_2290750;
  v124 = 0u;
  v126 = 0;
  v125 = 0;
  v130 = 0;
  v128 = 0u;
  v127 = &unk_2290750;
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
  v147 = &unk_2290750;
  v150 = 0;
  v148 = 0u;
  v149 = 0;
  while (sub_F69D2C(a2) > v6)
  {
    v7 = sub_F69DE0(a2, v6);
    v8 = (*v7 - **v7);
    if (*v8 < 0x2Fu || (v9 = v8[23]) == 0 || ((v10 = *(*v7 + v9), v11 = v10 > 0x36, v12 = (1 << v10) & 0x44000000000008, !v11) ? (v13 = v12 == 0) : (v13 = 1), v13))
    {
      v87 = sub_311544(v7);
      sub_116BA18(v88, &v87, &v153);
      if (v153)
      {
        sub_585C38(v88, &v87, &v153);
        v19 = v153;
        if (v154 == 1)
        {
          v20 = *(v153 + 8) + 12 * *(&v153 + 1);
          *v20 = v87;
          *(v20 + 8) = 0;
        }

        v21 = *(*(v19 + 8) + 12 * *(&v153 + 1) + 8);
        if (v21 <= v6)
        {
          v22 = v6;
        }

        else
        {
          v22 = *(*(v19 + 8) + 12 * *(&v153 + 1) + 8);
        }

        if (v21 >= v6)
        {
          v153 = 0uLL;
          v154 = 0;
          v38 = *(&v151 + 1);
          if (*(&v151 + 1) < v152)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v23 = *(*(v19 + 8) + 12 * *(&v153 + 1) + 8);
          do
          {
            v24 = sub_F69DE0(a2, v23)[1];
            if (!v24 || (v25 = (v24 - *v24), *v25 < 0x11u) || (v26 = v25[8]) == 0 || (*(v24 + v26) & 4) == 0)
            {
              v46 = sub_F69DE0(a2, v21)[4];
              v47 = sub_F69DE0(a2, v6)[4];
              v13 = v46 == v47;
              v48 = HIDWORD(v47) & 0xFFFFFF;
              v49 = v13 && (HIDWORD(v46) & 0xFFFFFF) == v48;
              v50 = v6;
              if (v49)
              {
                while (sub_F69D2C(a2) > v50)
                {
                  v51 = sub_F69DE0(a2, v50);
                  v84 = sub_311544(v51);
                  sub_116BA18(v88, &v84, &v153);
                  if (!v153)
                  {
                    break;
                  }

                  ++v50;
                }

                if (v21)
                {
                  v52 = (v21 - 1);
                }

                else
                {
                  v52 = 0;
                }

                sub_F69DE0(a2, v52);
                operator new();
              }

              goto LABEL_74;
            }

            ++v23;
          }

          while (v22 != v23);
          v153 = 0uLL;
          v154 = 0;
          if (v21 < v6)
          {
            do
            {
              while (1)
              {
                v27 = sub_F69DE0(a2, v21)[4];
                v28 = *(&v153 + 1);
                if (*(&v153 + 1) >= v154)
                {
                  break;
                }

                **(&v153 + 1) = v27 & 0xFFFFFFFFFFFFFFLL;
                *(&v153 + 1) = v28 + 8;
                if (v6 == ++v21)
                {
                  goto LABEL_53;
                }
              }

              v29 = v153;
              v30 = *(&v153 + 1) - v153;
              v31 = (*(&v153 + 1) - v153) >> 3;
              v32 = v31 + 1;
              if ((v31 + 1) >> 61)
              {
                sub_1794();
              }

              v33 = v154 - v153;
              if ((v154 - v153) >> 2 > v32)
              {
                v32 = v33 >> 2;
              }

              if (v33 >= 0x7FFFFFFFFFFFFFF8)
              {
                v34 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v34 = v32;
              }

              if (v34)
              {
                if (!(v34 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v35 = (8 * v31);
              v36 = &v35[-((*(&v153 + 1) - v153) >> 3)];
              *v35 = v27 & 0xFFFFFFFFFFFFFFLL;
              v37 = v35 + 1;
              memcpy(v36, v29, v30);
              *&v153 = v36;
              *(&v153 + 1) = v37;
              v154 = 0;
              if (v29)
              {
                operator delete(v29);
              }

              *(&v153 + 1) = v37;
              ++v21;
            }

            while (v6 != v21);
          }

LABEL_53:
          v38 = *(&v151 + 1);
          if (*(&v151 + 1) < v152)
          {
LABEL_54:
            *v38 = 0;
            v38[1] = 0;
            v38[2] = 0;
            *v38 = v153;
            v38[2] = v154;
            *(&v151 + 1) = v38 + 3;
            goto LABEL_60;
          }
        }

        *(&v151 + 1) = sub_52C28(&v151, &v153);
        if (v153)
        {
          *(&v153 + 1) = v153;
          operator delete(v153);
        }

LABEL_60:
        v41 = v88;
        v42 = 768;
        do
        {
          if (v41[2])
          {
            v43 = v41[3];
            if (v43 >= 0x80)
            {
              operator delete(*v41);
              v41[5] = 0;
              *v41 = &unk_2290750;
              v41[1] = 0;
              v41[2] = 0;
              v41[3] = 0;
            }

            else if (v43)
            {
              v41[2] = 0;
              memset(*v41, 128, v43 + 8);
              *(*v41 + v43) = -1;
              v44 = v41[3];
              if (v44 == 7)
              {
                v45 = 6;
              }

              else
              {
                v45 = v44 - (v44 >> 3);
              }

              v41[5] = (v45 - v41[2]);
            }
          }

          v41 += 6;
          v42 -= 48;
        }

        while (v42);
        ++v6;
      }

      else
      {
        sub_585C38(v88, &v87, &v153);
        v39 = v153;
        if (v154 == 1)
        {
          v40 = *(v153 + 8) + 12 * *(&v153 + 1);
          *v40 = v87;
          *(v40 + 8) = 0;
        }

        *(*(v39 + 8) + 12 * *(&v153 + 1) + 8) = v6++;
      }
    }

    else
    {
      v14 = v88;
      v15 = 768;
      do
      {
        if (v14[2])
        {
          v16 = v14[3];
          if (v16 >= 0x80)
          {
            operator delete(*v14);
            v14[5] = 0;
            *v14 = &unk_2290750;
            v14[1] = 0;
            v14[2] = 0;
            v14[3] = 0;
          }

          else if (v16)
          {
            v14[2] = 0;
            memset(*v14, 128, v16 + 8);
            *(*v14 + v16) = -1;
            v17 = v14[3];
            if (v17 == 7)
            {
              v18 = 6;
            }

            else
            {
              v18 = v17 - (v17 >> 3);
            }

            v14[5] = (v18 - v14[2]);
          }
        }

        v14 += 6;
        v15 -= 48;
      }

      while (v15);
LABEL_74:
      ++v6;
    }
  }

  v53 = sub_F69D2C(a2);
  v54 = sub_F69DE0(a2, v53 - 1);
  __p[0] = sub_3116D0(v54);
  sub_116BA18(v88, __p, &v153);
  if (v153)
  {
    sub_585C38(v88, __p, &v153);
    v55 = v153;
    if (v154 == 1)
    {
      v56 = *(v153 + 8) + 12 * *(&v153 + 1);
      *v56 = __p[0];
      *(v56 + 8) = 0;
    }

    v57 = *(*(v55 + 8) + 12 * *(&v153 + 1) + 8);
    v58 = sub_F69D2C(a2);
    if (v57 <= v58)
    {
      v59 = v58;
    }

    else
    {
      v59 = v57;
    }

    if (v58 <= v57)
    {
LABEL_95:
      sub_585C38(v88, __p, &v153);
      v63 = v153;
      if (v154 == 1)
      {
        v64 = *(v153 + 8) + 12 * *(&v153 + 1);
        *v64 = __p[0];
        *(v64 + 8) = 0;
      }

      v65 = *(*(v63 + 8) + 12 * *(&v153 + 1) + 8);
      v66 = sub_F69D2C(a2);
      v67 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      if (v66 > v65)
      {
        v67 = 0;
        do
        {
          v68 = sub_F69DE0(a2, v65)[4];
          if (v67 < v86)
          {
            *v67++ = v68 & 0xFFFFFFFFFFFFFFLL;
          }

          else
          {
            v69 = v84;
            v70 = v67 - v84;
            v71 = (v67 - v84) >> 3;
            v72 = v71 + 1;
            if ((v71 + 1) >> 61)
            {
              sub_1794();
            }

            v73 = v86 - v84;
            if ((v86 - v84) >> 2 > v72)
            {
              v72 = v73 >> 2;
            }

            if (v73 >= 0x7FFFFFFFFFFFFFF8)
            {
              v74 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v74 = v72;
            }

            if (v74)
            {
              if (!(v74 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v75 = (8 * v71);
            *v75 = v68 & 0xFFFFFFFFFFFFFFLL;
            v67 = v75 + 1;
            memcpy(0, v69, v70);
            v84 = 0;
            v86 = 0;
            if (v69)
            {
              operator delete(v69);
            }
          }

          v85 = v67;
          ++v65;
        }

        while (v66 != v65);
      }

      v76 = *(&v151 + 1);
      if (*(&v151 + 1) >= v152)
      {
        *(&v151 + 1) = sub_52C28(&v151, &v84);
        if (v84)
        {
          v85 = v84;
          operator delete(v84);
        }
      }

      else
      {
        **(&v151 + 1) = v84;
        *(v76 + 8) = v67;
        *(v76 + 16) = v86;
        *(&v151 + 1) = v76 + 24;
      }
    }

    else
    {
      while (1)
      {
        v60 = sub_F69DE0(a2, v57)[1];
        if (!v60)
        {
          break;
        }

        v61 = (v60 - *v60);
        if (*v61 < 0x11u)
        {
          break;
        }

        v62 = v61[8];
        if (!v62 || (*(v60 + v62) & 4) == 0)
        {
          break;
        }

        if (v59 == ++v57)
        {
          goto LABEL_95;
        }
      }
    }
  }

  *v82 = v151;
  v82[2] = v152;
  v152 = 0;
  v151 = 0uLL;
  sub_360988(v88);
  v5 = v151;
  if (v151)
  {
LABEL_118:
    v77 = *(&v151 + 1);
    v78 = v5;
    if (*(&v151 + 1) != v5)
    {
      v79 = *(&v151 + 1);
      do
      {
        v81 = *(v79 - 3);
        v79 -= 24;
        v80 = v81;
        if (v81)
        {
          *(v77 - 2) = v80;
          operator delete(v80);
        }

        v77 = v79;
      }

      while (v79 != v5);
      v78 = v151;
    }

    *(&v151 + 1) = v5;
    operator delete(v78);
  }
}

void sub_1164A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (__p)
  {
    operator delete(__p);
    v25 = a19;
    if (!a19)
    {
LABEL_3:
      v26 = *(v23 - 144);
      if (!v26)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v25 = a19;
    if (!a19)
    {
      goto LABEL_3;
    }
  }

  operator delete(v25);
  v26 = *(v23 - 144);
  if (!v26)
  {
LABEL_4:
    if (v22)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v23 - 136) = v26;
  operator delete(v26);
  if (v22)
  {
LABEL_5:
    operator delete(v22);
    sub_360988(va);
    sub_34BE0((v23 - 176));
    _Unwind_Resume(a1);
  }

LABEL_9:
  sub_360988(va);
  sub_34BE0((v23 - 176));
  _Unwind_Resume(a1);
}

BOOL sub_1164BE0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_68C448(a1, &v11);
  v5 = v11;
  v6 = v12;
  if (v11 == v12)
  {
    return 1;
  }

  do
  {
    sub_11631A4(v5, a2, a3, &v13);
    v9 = v13;
    v10 = v14;
    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }

    result = v9 == v10;
    v5 += 69;
  }

  while (v9 == v10 && v5 != v6);
  return result;
}

void sub_1164ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1164F04(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = a2;
  *(a1 + 8) = a4;
  sub_438678((a1 + 2), a2, a4);
  sub_428440((a1 + 7), *a1);
  a1[76] = sub_3AF6B4(*a1);
  sub_F8FE74(a1 + 616, a2, 0);
}

void sub_1164F94(_Unwind_Exception *a1)
{
  sub_404134((v1 + 616));
  sub_772CE0(v1 + 56);
  _Unwind_Resume(a1);
}

void sub_1164FB0(_Unwind_Exception *a1)
{
  sub_404134((v1 + 616));
  sub_772CE0(v1 + 56);
  _Unwind_Resume(a1);
}

void sub_1164FEC(uint64_t a1@<X0>, void *a2@<X1>, void **a3@<X8>)
{
  v6 = sub_F69D6C(a2);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (!v6)
  {
    __p[0] = 0;
    __p[1] = 0;
    v31 = 0;
    sub_4C35D4(a2, &v25);
    v8 = *(&v25 + 1);
    v7 = v25;
    *&v27 = __p;
    *(&v27 + 1) = a1;
    for (*&v28 = a3; v7 != v8; v7 += 96)
    {
      sub_116BD64(&v27, v7);
    }

    v9 = sub_F6C814(a2);
    v10 = *v9;
    v11 = *(v9 + 16);
    v29 = *(v9 + 32);
    v27 = v10;
    v28 = v11;
    sub_4389F4((a1 + 16), &v27, &v25);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v25;
    v31 = v26;
    v12 = *(&v25 + 1);
    v13 = v25;
    if (v25 != *(&v25 + 1))
    {
      v14 = a3[1];
      do
      {
        while (1)
        {
          v15 = v29 & 0xFFFFFFFFFFFFFFLL;
          v25 = *v13;
          v16 = a3[2];
          if (v14 >= v16)
          {
            break;
          }

          *v14 = v15;
          *(v14 + 8) = v25;
          v14 += 24;
          a3[1] = v14;
          if (++v13 == v12)
          {
            goto LABEL_22;
          }
        }

        v17 = *a3;
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a3) >> 3);
        v19 = v18 + 1;
        if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v20 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 3);
        if (2 * v20 > v19)
        {
          v19 = 2 * v20;
        }

        if (v20 >= 0x555555555555555)
        {
          v21 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          if (v21 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v22 = v14;
        v23 = 8 * ((v14 - *a3) >> 3);
        *v23 = v15;
        *(v23 + 8) = v25;
        v14 = (24 * v18 + 24);
        v24 = (24 * v18 - (v22 - v17));
        memcpy(v24, v17, v22 - v17);
        *a3 = v24;
        a3[1] = v14;
        a3[2] = 0;
        if (v17)
        {
          operator delete(v17);
        }

        a3[1] = v14;
        ++v13;
      }

      while (v13 != v12);
LABEL_22:
      v13 = __p[0];
    }

    if (v13)
    {
      __p[1] = v13;
      operator delete(v13);
    }
  }
}

void sub_116523C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
    v22 = *v20;
    if (!*v20)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v22 = *v20;
    if (!*v20)
    {
      goto LABEL_3;
    }
  }

  *(v20 + 8) = v22;
  operator delete(v22);
  _Unwind_Resume(exception_object);
}

void sub_116528C(uint64_t a1@<X0>, void *a2@<X1>, void **a3@<X8>)
{
  v3 = a2;
  v5 = sub_F69D6C(a2);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (!v5)
  {
    v22 = sub_F6D024(v3);
    if (v22)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v21 = v3;
      do
      {
        v9 = sub_F6D17C(v3, v8);
        sub_43ECB4((a1 + 16), v9, &v26);
        v24 = v8;
        if (v7)
        {
          operator delete(v7);
        }

        v10 = *(&v26 + 1);
        v11 = v26;
        for (i = v26; v11 != v10; ++v11)
        {
          while (1)
          {
            v12 = v9[4] & 0xFFFFFFFFFFFFFFLL;
            v26 = *v11;
            v13 = a3[2];
            if (v6 >= v13)
            {
              break;
            }

            *v6 = v12;
            *(v6 + 8) = v26;
            v6 += 24;
            a3[1] = v6;
            if (++v11 == v10)
            {
              goto LABEL_4;
            }
          }

          v14 = *a3;
          v15 = v6 - *a3;
          v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3) + 1;
          if (v16 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3);
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
            if (v18 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v19 = 8 * (v15 >> 3);
          *v19 = v12;
          *(v19 + 8) = v26;
          v6 = (v19 + 24);
          v20 = (v19 - v15);
          memcpy((v19 - v15), v14, v15);
          *a3 = v20;
          a3[1] = v6;
          a3[2] = 0;
          if (v14)
          {
            operator delete(v14);
          }

          a3[1] = v6;
        }

LABEL_4:
        v7 = i;
        v8 = v24 + 1;
        v3 = v21;
      }

      while (v24 + 1 != v22);
      if (i)
      {
        operator delete(i);
      }
    }
  }
}

void sub_11654B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v15)
  {
    operator delete(v15);
    v17 = *v14;
    if (!*v14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v17 = *v14;
    if (!*v14)
    {
      goto LABEL_3;
    }
  }

  *(v14 + 8) = v17;
  operator delete(v17);
  _Unwind_Resume(exception_object);
}

void sub_1165504(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (!sub_3B8508() || sub_F69D6C(a1) || sub_F695B8(a1))
  {
    return;
  }

  v66 = sub_3AF6B4(a3);
  v8 = sub_F69654(a1);
  sub_2B7A20(v66, *(v8 + 32) & 0xFFFFFFFFFFFFFFLL, v72);
  v9 = __p;
  v63 = a3;
  if (__p == v74)
  {
    v13 = 0x7FFFFFFF;
    v14 = 0xFFFFFFFF00000000;
    v15 = 0xFFFFFFFFLL;
    if (!__p)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = sub_31AA0C(v72);
  v11 = v10;
  v13 = v12;
  v14 = v10 & 0xFFFFFFFF00000000;
  v9 = __p;
  v15 = v11;
  if (__p)
  {
LABEL_6:
    v74 = v9;
    operator delete(v9);
  }

LABEL_7:
  v70 = v14 | v15;
  v71 = v13;
  if (v15 == 0xFFFFFFFFLL && v14 == 0xFFFFFFFF00000000 || (sub_3B8540(v63, &v70) & 1) == 0)
  {
    sub_F69654(a1);
    operator new();
  }

  v64 = 0;
  __src = 0;
  sub_4D0560();
  v17 = v16;
  v19 = v18;
  sub_F6C0C8();
  v21 = v20;
  v23 = v22;
  v24 = 0;
  while (1)
  {
    ++v19;
    if (v17)
    {
      v25 = sub_F6D024(v17);
      v26 = v19 < v25;
      if (!v21)
      {
        if (v19 >= v25)
        {
          break;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (!v21)
      {
        break;
      }

      v26 = 0;
    }

    v27 = sub_F6D024(v21);
    if (v23 < v27 && v26)
    {
      v29 = sub_F6D17C(v17, v19);
      if (v29 == sub_F6D17C(v21, v23))
      {
        break;
      }

      goto LABEL_25;
    }

    if (((v26 ^ (v23 < v27)) & 1) == 0)
    {
      break;
    }

LABEL_25:
    v24 += sub_F6D254(v17, v19);
    if (v24 > a2)
    {
      v30 = sub_F6D17C(v17, v19);
      sub_2B7A20(v66, v30[4] & 0xFFFFFFFFFFFFFFLL, v72);
      v31 = __p;
      v62 = a1;
      if (__p == v74)
      {
        v35 = 0x7FFFFFFF;
        v36 = 0xFFFFFFFF00000000;
        v37 = 0xFFFFFFFFLL;
        if (!__p)
        {
          goto LABEL_29;
        }

LABEL_28:
        v74 = v31;
        operator delete(v31);
        goto LABEL_29;
      }

      v32 = sub_31A76C(v72);
      v33 = v32;
      v35 = v34;
      v36 = v32 & 0xFFFFFFFF00000000;
      v31 = __p;
      v37 = v33;
      if (__p)
      {
        goto LABEL_28;
      }

LABEL_29:
      v68 = v36 | v37;
      v69 = v35;
      if (v37 == 0xFFFFFFFFLL && v36 == 0xFFFFFFFF00000000 || (sub_3B8540(v63, &v68) & 1) == 0)
      {
        v38 = sub_F6D17C(v17, v19)[4];
        v39 = a4[2];
        if (v64 >= v39)
        {
          v42 = v64 - __src;
          v43 = v42 + 1;
          if ((v42 + 1) >> 61)
          {
            *a4 = __src;
            sub_1794();
          }

          v44 = v39 - __src;
          if (v44 >> 2 > v43)
          {
            v43 = v44 >> 2;
          }

          if (v44 >= 0x7FFFFFFFFFFFFFF8)
          {
            v45 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v45 = v43;
          }

          if (v45)
          {
            if (!(v45 >> 61))
            {
              operator new();
            }

            *a4 = __src;
            sub_1808();
          }

          v41 = 0;
          v46 = (8 * v42);
          *v46 = v38 & 0xFFFFFFFFFFFFFFLL;
          memcpy(0, __src, v64 - __src);
          v65 = v46 + 1;
          a4[1] = v46 + 1;
          a4[2] = 0;
          a1 = v62;
          v40 = v65;
        }

        else
        {
          *v64 = v38 & 0xFFFFFFFFFFFFFFLL;
          v40 = v64 + 1;
          v41 = __src;
          a1 = v62;
        }

        v64 = v40;
        a4[1] = v40;
        __src = v41;
      }

      else
      {
        a1 = v62;
      }
    }
  }

  *a4 = __src;
  v47 = sub_F6C814(a1);
  sub_2B7A20(v66, *(v47 + 32) & 0xFFFFFFFFFFFFFFLL, v72);
  v48 = __p;
  if (__p == v74)
  {
    v52 = 0x7FFFFFFF;
    v53 = 0xFFFFFFFF00000000;
    v54 = 0xFFFFFFFFLL;
    if (__p)
    {
LABEL_50:
      v74 = v48;
      operator delete(v48);
    }
  }

  else
  {
    v49 = sub_31A76C(v72);
    v50 = v49;
    v52 = v51;
    v53 = v49 & 0xFFFFFFFF00000000;
    v48 = __p;
    v54 = v50;
    if (__p)
    {
      goto LABEL_50;
    }
  }

  v68 = v53 | v54;
  v69 = v52;
  if (v54 == 0xFFFFFFFFLL && v53 == 0xFFFFFFFF00000000 || (sub_3B8540(v63, &v68) & 1) == 0)
  {
    v55 = *(sub_F6C814(a1) + 32);
    v56 = a4[2];
    if (v64 >= v56)
    {
      v58 = v64 - __src;
      v59 = v58 + 1;
      if ((v58 + 1) >> 61)
      {
        sub_1794();
      }

      v60 = v56 - __src;
      if (v60 >> 2 > v59)
      {
        v59 = v60 >> 2;
      }

      if (v60 >= 0x7FFFFFFFFFFFFFF8)
      {
        v61 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v61 = v59;
      }

      if (v61)
      {
        if (!(v61 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      *(8 * v58) = v55 & 0xFFFFFFFFFFFFFFLL;
      memcpy(0, __src, v64 - __src);
      *a4 = 0;
      a4[1] = (8 * v58 + 8);
      v57 = (8 * v58 + 8);
      a4[2] = 0;
    }

    else
    {
      *v64 = v55 & 0xFFFFFFFFFFFFFFLL;
      v57 = v64 + 1;
    }

    a4[1] = v57;
  }
}

void sub_1165A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, _Unwind_Exception *exception_objecta, uint64_t a22)
{
  if (__p)
  {
    *(v22 + 8) = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1165B0C(uint64_t a1@<X0>, void *a2@<X1>, int32x2_t *a3@<X2>, int *a4@<X3>, void *a5@<X8>)
{
  if (sub_F69D6C(a2))
  {
    v30 = 0;
    v28 = 0u;
    *__p = 0u;
    *v26 = 0u;
    *v27 = 0u;
  }

  else
  {
    sub_4298E0(a1 + 56, a2, v26);
    if (v26[0] != v26[1])
    {
      goto LABEL_6;
    }
  }

  if (v27[1] == v28 && __p[0] == __p[1])
  {
    goto LABEL_12;
  }

LABEL_6:
  if (*a4 == 0x7FFFFFFF || (v10 = sub_10104F4(a3, a2, *(a1 + 4936), a4, *(a1 + 8), a4[2]), v11 = v10, v10[5] == 0x7FFFFFFF) || (v13 = *(v10 + 4), v12 = *(v10 + 5), sub_F6D024(a2) + 2 != (v12 - v13) >> 4))
  {
LABEL_12:
    sub_116B240(a5, v26);
    goto LABEL_13;
  }

  v14 = sub_F6D024(a2);
  if (v14)
  {
    if (!(v14 >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_F6D024(a2))
  {
    operator new();
  }

  if (a4[2])
  {
    v21 = v11[5];
    v22 = v21 / -10;
    v23 = v21 % 10;
    if (v21 < 0)
    {
      v24 = -5;
    }

    else
    {
      v24 = 5;
    }

    v25 = v22 + *a4 + (((-103 * (v24 + v23)) >> 15) & 1) + ((-103 * (v24 + v23)) >> 10);
  }

  else
  {
    v25 = *a4;
  }

  sub_42AD94(a1 + 56, a2, v25, a5);
LABEL_13:
  v15 = __p[0];
  if (__p[0])
  {
    v16 = __p[1];
    v17 = __p[0];
    if (__p[1] != __p[0])
    {
      v18 = __p[1];
      do
      {
        v20 = *(v18 - 3);
        v18 -= 24;
        v19 = v20;
        if (v20)
        {
          *(v16 - 2) = v19;
          operator delete(v19);
        }

        v16 = v18;
      }

      while (v18 != v15);
      v17 = __p[0];
    }

    __p[1] = v15;
    operator delete(v17);
  }

  if (v27[1])
  {
    *&v28 = v27[1];
    operator delete(v27[1]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }
}

void sub_1165EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_4266B8(va);
  _Unwind_Resume(a1);
}

void sub_1165F34(void *a2@<X1>, void *a3@<X8>)
{
  v154 = 0uLL;
  v155 = 0;
  if (sub_F69D6C(a2) || sub_F695B8(a2))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v5 = v154;
    if (v154)
    {
      goto LABEL_117;
    }

    return;
  }

  v85 = a3;
  v6 = 0;
  v91[0] = &unk_2290750;
  v91[1] = 0;
  v92 = 0u;
  v93 = 0;
  v94 = &unk_2290750;
  v95 = 0;
  v96 = 0u;
  v97 = 0;
  v98 = &unk_2290750;
  v99 = 0;
  v100 = 0u;
  v101 = 0;
  v102 = &unk_2290750;
  v103 = 0u;
  v105 = 0;
  v106 = &unk_2290750;
  v104 = 0;
  v108 = 0;
  v107 = 0u;
  v109 = 0;
  v110 = &unk_2290750;
  v113 = 0;
  v114 = &unk_2290750;
  v112 = 0;
  v111 = 0u;
  v115 = 0u;
  v116 = 0;
  v117 = 0;
  v118 = &unk_2290750;
  v119 = 0u;
  v121 = 0;
  v122 = &unk_2290750;
  v120 = 0;
  v123 = 0u;
  v124 = 0;
  v125 = 0;
  v126 = &unk_2290750;
  v127 = 0u;
  v129 = 0;
  v128 = 0;
  v133 = 0;
  v131 = 0u;
  v130 = &unk_2290750;
  v132 = 0;
  v134 = &unk_2290750;
  v137 = 0;
  v135 = 0u;
  v136 = 0;
  v138 = &unk_2290750;
  v141 = 0;
  v139 = 0u;
  v140 = 0;
  v142 = &unk_2290750;
  v145 = 0;
  v143 = 0u;
  v144 = 0;
  v146 = &unk_2290750;
  v149 = 0;
  v147 = 0u;
  v148 = 0;
  v150 = &unk_2290750;
  v153 = 0;
  v151 = 0u;
  v152 = 0;
  while (sub_F6D024(a2) > v6)
  {
    v7 = sub_F6D17C(a2, v6);
    v8 = (*v7 - **v7);
    if (*v8 >= 0x2Fu)
    {
      v9 = v8[23];
      if (v9)
      {
        v10 = *(*v7 + v9);
        v11 = v10 > 0x36;
        v12 = (1 << v10) & 0x44000000000008;
        v13 = v11 || v12 == 0;
        if (!v13)
        {
          v14 = v91;
          v15 = 768;
          do
          {
            if (v14[2])
            {
              v16 = v14[3];
              if (v16 >= 0x80)
              {
                operator delete(*v14);
                v14[5] = 0;
                *v14 = &unk_2290750;
                v14[1] = 0;
                v14[2] = 0;
                v14[3] = 0;
              }

              else if (v16)
              {
                v14[2] = 0;
                memset(*v14, 128, v16 + 8);
                *(*v14 + v16) = -1;
                v17 = v14[3];
                v18 = v17 - (v17 >> 3);
                v13 = v17 == 7;
                v19 = 6;
                if (!v13)
                {
                  v19 = v18;
                }

                v14[5] = (v19 - v14[2]);
              }
            }

            v14 += 6;
            v15 -= 48;
          }

          while (v15);
          goto LABEL_6;
        }
      }
    }

    v90 = sub_311544(v7);
    sub_116BA18(v91, &v90, &v156);
    if (v156)
    {
      sub_585C38(v91, &v90, &v156);
      v20 = v156;
      if (v157 == 1)
      {
        v21 = *(v156 + 8) + 12 * *(&v156 + 1);
        *v21 = v90;
        *(v21 + 8) = 0;
      }

      v22 = *(v20 + 8) + 12 * *(&v156 + 1);
      v23 = *(v22 + 8);
      if (v23 <= v6)
      {
        v24 = v6;
      }

      else
      {
        v24 = *(v22 + 8);
      }

      if (v23 >= v6)
      {
        v156 = 0uLL;
        v157 = 0;
        v40 = *(&v154 + 1);
        if (*(&v154 + 1) >= v155)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v25 = *(v22 + 8);
        do
        {
          v26 = sub_F6D17C(a2, v25)[1];
          if (!v26 || (v27 = (v26 - *v26), *v27 < 0x11u) || (v28 = v27[8]) == 0 || (*(v26 + v28) & 4) == 0)
          {
            v49 = sub_F6D17C(a2, v23)[4];
            v50 = sub_F6D17C(a2, v6)[4];
            v13 = v49 == v50;
            v51 = HIDWORD(v50) & 0xFFFFFF;
            v52 = v13 && (HIDWORD(v49) & 0xFFFFFF) == v51;
            v53 = v6;
            if (v52)
            {
              while (sub_F6D024(a2) > v53)
              {
                v54 = sub_F6D17C(a2, v53);
                v87 = sub_311544(v54);
                sub_116BA18(v91, &v87, &v156);
                if (!v156)
                {
                  break;
                }

                ++v53;
              }

              if (v23)
              {
                v55 = (v23 - 1);
              }

              else
              {
                v55 = 0;
              }

              sub_F6D17C(a2, v55);
              operator new();
            }

            goto LABEL_6;
          }

          ++v25;
        }

        while (v24 != v25);
        v156 = 0uLL;
        v157 = 0;
        if (v23 < v6)
        {
          do
          {
            while (1)
            {
              v29 = sub_F6D17C(a2, v23)[4];
              v30 = *(&v156 + 1);
              if (*(&v156 + 1) >= v157)
              {
                break;
              }

              **(&v156 + 1) = v29 & 0xFFFFFFFFFFFFFFLL;
              *(&v156 + 1) = v30 + 8;
              if (v6 == ++v23)
              {
                goto LABEL_52;
              }
            }

            v31 = v156;
            v32 = *(&v156 + 1) - v156;
            v33 = (*(&v156 + 1) - v156) >> 3;
            v34 = v33 + 1;
            if ((v33 + 1) >> 61)
            {
              sub_1794();
            }

            v35 = v157 - v156;
            if ((v157 - v156) >> 2 > v34)
            {
              v34 = v35 >> 2;
            }

            if (v35 >= 0x7FFFFFFFFFFFFFF8)
            {
              v36 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v34;
            }

            if (v36)
            {
              if (!(v36 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v37 = (8 * v33);
            v38 = &v37[-((*(&v156 + 1) - v156) >> 3)];
            *v37 = v29 & 0xFFFFFFFFFFFFFFLL;
            v39 = v37 + 1;
            memcpy(v38, v31, v32);
            *&v156 = v38;
            *(&v156 + 1) = v39;
            v157 = 0;
            if (v31)
            {
              operator delete(v31);
            }

            *(&v156 + 1) = v39;
            ++v23;
          }

          while (v6 != v23);
        }

LABEL_52:
        v40 = *(&v154 + 1);
        if (*(&v154 + 1) >= v155)
        {
LABEL_58:
          *(&v154 + 1) = sub_52C28(&v154, &v156);
          if (v156)
          {
            *(&v156 + 1) = v156;
            operator delete(v156);
          }

          goto LABEL_60;
        }
      }

      *v40 = 0;
      v40[1] = 0;
      v40[2] = 0;
      *v40 = v156;
      v40[2] = v157;
      *(&v154 + 1) = v40 + 3;
LABEL_60:
      v43 = v91;
      v44 = 768;
      do
      {
        if (v43[2])
        {
          v45 = v43[3];
          if (v45 >= 0x80)
          {
            operator delete(*v43);
            v43[5] = 0;
            *v43 = &unk_2290750;
            v43[1] = 0;
            v43[2] = 0;
            v43[3] = 0;
          }

          else if (v45)
          {
            v43[2] = 0;
            memset(*v43, 128, v45 + 8);
            *(*v43 + v45) = -1;
            v46 = v43[3];
            v47 = v46 - (v46 >> 3);
            v13 = v46 == 7;
            v48 = 6;
            if (!v13)
            {
              v48 = v47;
            }

            v43[5] = (v48 - v43[2]);
          }
        }

        v43 += 6;
        v44 -= 48;
      }

      while (v44);
LABEL_6:
      ++v6;
    }

    else
    {
      sub_585C38(v91, &v90, &v156);
      v41 = v156;
      if (v157 == 1)
      {
        v42 = *(v156 + 8) + 12 * *(&v156 + 1);
        *v42 = v90;
        *(v42 + 8) = 0;
      }

      *(*(v41 + 8) + 12 * *(&v156 + 1) + 8) = v6++;
    }
  }

  v56 = sub_F6D024(a2);
  v57 = sub_F6D17C(a2, v56 - 1);
  __p[0] = sub_3116D0(v57);
  sub_116BA18(v91, __p, &v156);
  if (v156)
  {
    sub_585C38(v91, __p, &v156);
    v58 = v156;
    if (v157 == 1)
    {
      v59 = *(v156 + 8) + 12 * *(&v156 + 1);
      *v59 = __p[0];
      *(v59 + 8) = 0;
    }

    v60 = *(*(v58 + 8) + 12 * *(&v156 + 1) + 8);
    v61 = sub_F6D024(a2);
    if (v60 <= v61)
    {
      v62 = v61;
    }

    else
    {
      v62 = v60;
    }

    if (v61 <= v60)
    {
LABEL_94:
      sub_585C38(v91, __p, &v156);
      v66 = v156;
      if (v157 == 1)
      {
        v67 = *(v156 + 8) + 12 * *(&v156 + 1);
        *v67 = __p[0];
        *(v67 + 8) = 0;
      }

      v68 = *(*(v66 + 8) + 12 * *(&v156 + 1) + 8);
      v69 = sub_F6D024(a2);
      v70 = 0;
      v87 = 0;
      v88 = 0;
      v89 = 0;
      if (v69 > v68)
      {
        v70 = 0;
        do
        {
          v71 = sub_F6D17C(a2, v68)[4];
          if (v70 < v89)
          {
            *v70++ = v71 & 0xFFFFFFFFFFFFFFLL;
          }

          else
          {
            v72 = v87;
            v73 = v70 - v87;
            v74 = (v70 - v87) >> 3;
            v75 = v74 + 1;
            if ((v74 + 1) >> 61)
            {
              sub_1794();
            }

            v76 = v89 - v87;
            if ((v89 - v87) >> 2 > v75)
            {
              v75 = v76 >> 2;
            }

            if (v76 >= 0x7FFFFFFFFFFFFFF8)
            {
              v77 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v77 = v75;
            }

            if (v77)
            {
              if (!(v77 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v78 = (8 * v74);
            *v78 = v71 & 0xFFFFFFFFFFFFFFLL;
            v70 = v78 + 1;
            memcpy(0, v72, v73);
            v87 = 0;
            v89 = 0;
            if (v72)
            {
              operator delete(v72);
            }
          }

          v88 = v70;
          ++v68;
        }

        while (v69 != v68);
      }

      v79 = *(&v154 + 1);
      if (*(&v154 + 1) >= v155)
      {
        *(&v154 + 1) = sub_52C28(&v154, &v87);
        if (v87)
        {
          v88 = v87;
          operator delete(v87);
        }
      }

      else
      {
        **(&v154 + 1) = v87;
        *(v79 + 8) = v70;
        *(v79 + 16) = v89;
        *(&v154 + 1) = v79 + 24;
      }
    }

    else
    {
      while (1)
      {
        v63 = sub_F6D17C(a2, v60)[1];
        if (!v63)
        {
          break;
        }

        v64 = (v63 - *v63);
        if (*v64 < 0x11u)
        {
          break;
        }

        v65 = v64[8];
        if (!v65 || (*(v63 + v65) & 4) == 0)
        {
          break;
        }

        if (v62 == ++v60)
        {
          goto LABEL_94;
        }
      }
    }
  }

  *v85 = v154;
  v85[2] = v155;
  v155 = 0;
  v154 = 0uLL;
  sub_360988(v91);
  v5 = v154;
  if (v154)
  {
LABEL_117:
    v80 = *(&v154 + 1);
    v81 = v5;
    if (*(&v154 + 1) != v5)
    {
      v82 = *(&v154 + 1);
      do
      {
        v84 = *(v82 - 3);
        v82 -= 24;
        v83 = v84;
        if (v84)
        {
          *(v80 - 2) = v83;
          operator delete(v83);
        }

        v80 = v82;
      }

      while (v82 != v5);
      v81 = v154;
    }

    *(&v154 + 1) = v5;
    operator delete(v81);
  }
}

void sub_1166DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (__p)
  {
    operator delete(__p);
    v26 = a21;
    if (!a21)
    {
LABEL_3:
      v27 = *(v24 - 144);
      if (!v27)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v26 = a21;
    if (!a21)
    {
      goto LABEL_3;
    }
  }

  operator delete(v26);
  v27 = *(v24 - 144);
  if (!v27)
  {
LABEL_4:
    if (!a15)
    {
LABEL_10:
      sub_360988(va);
      sub_34BE0((v24 - 176));
      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a15);
    sub_360988(va);
    sub_34BE0((v24 - 176));
    _Unwind_Resume(a1);
  }

LABEL_8:
  *(v24 - 136) = v27;
  operator delete(v27);
  if (!a15)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

BOOL sub_1166F54(uint64_t a1, uint64_t a2)
{
  sub_F90A90(a1 + 616, (((*(a2 + 32) >> 16) & 0xFFFF0000 | (*(a2 + 32) << 32) | (2 * ((*(a2 + 32) & 0xFF000000000000) == 0))) + 4 * *(a2 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(a2 + 88) & 1, (((*(a2 + 80) >> 14) & 0x3FFFC | (*(a2 + 72) << 32)) + ((*(a2 + 72) >> 16) & 0xFFFF0000)) & 0xFFFFFFFFFFFFFFFELL | (*(a2 + 88) >> 1) & 1 | (2 * ((*(a2 + 72) & 0xFF000000000000) == 0)), v3);
  result = 1;
  if (v4 && v3[0] && v3[1] && v7)
  {
    if (v5)
    {
      return v6 == 0;
    }
  }

  return result;
}

BOOL sub_1167014(void *a1, uint64_t a2, uint64_t a3)
{
  sub_68C448(a1, &v11);
  v5 = v11;
  v6 = v12;
  if (v11 == v12)
  {
    return 1;
  }

  do
  {
    sub_1165504(v5, a2, a3, &v13);
    v9 = v13;
    v10 = v14;
    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }

    result = v9 == v10;
    v5 += 69;
  }

  while (v9 == v10 && v5 != v6);
  return result;
}

void sub_1167308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1167338(uint64_t *a1, uint64_t a2, void *a3, int a4)
{
  *a1 = a2;
  *(a1 + 8) = a4;
  sub_4392B0((a1 + 2), a2, a4);
  sub_42D9EC((a1 + 7), *a1);
  a1[76] = sub_3AF6B4(*a1);
  sub_F92178((a1 + 77), a2, 0);
  a1[94] = sub_3AF6B4(a2);
  sub_1167F24((a1 + 95), a3, *a1);
}

void sub_11673C4(_Unwind_Exception *a1)
{
  sub_3BFA2C((v1 + 616));
  sub_772CE0(v1 + 56);
  _Unwind_Resume(a1);
}

void sub_11673E0(_Unwind_Exception *a1)
{
  sub_3BFA2C((v1 + 616));
  sub_772CE0(v1 + 56);
  _Unwind_Resume(a1);
}

void sub_116741C(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  v6 = sub_F6FDC8(a2);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (!v6)
  {
    __p[0] = 0;
    __p[1] = 0;
    v30 = 0;
    sub_4C35D4(a2, &v24);
    v8 = *(&v24 + 1);
    v7 = v24;
    *&v26 = __p;
    *(&v26 + 1) = a1;
    for (*&v27 = a3; v7 != v8; v7 += 88)
    {
      sub_116BF3C(&v26, v7);
    }

    v9 = sub_F6F70C(a2);
    v10 = *v9;
    v11 = *(v9 + 16);
    v28 = *(v9 + 32);
    v26 = v10;
    v27 = v11;
    sub_4393F4(a1 + 16, &v26, &v24);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v24;
    v30 = v25;
    v12 = *(&v24 + 1);
    v13 = v24;
    if (v24 != *(&v24 + 1))
    {
      v14 = a3[1];
      do
      {
        while (1)
        {
          v24 = *v13;
          v15 = a3[2];
          if (v14 >= v15)
          {
            break;
          }

          *v14 = v28;
          *(v14 + 8) = v24;
          v14 += 24;
          a3[1] = v14;
          if (++v13 == v12)
          {
            goto LABEL_22;
          }
        }

        v16 = *a3;
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a3) >> 3);
        v18 = v17 + 1;
        if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0x555555555555555)
        {
          v20 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          if (v20 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v21 = v14;
        v22 = 8 * ((v14 - *a3) >> 3);
        *v22 = v28;
        *(v22 + 8) = v24;
        v14 = (24 * v17 + 24);
        v23 = (24 * v17 - (v21 - v16));
        memcpy(v23, v16, v21 - v16);
        *a3 = v23;
        a3[1] = v14;
        a3[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }

        a3[1] = v14;
        ++v13;
      }

      while (v13 != v12);
LABEL_22:
      v13 = __p[0];
    }

    if (v13)
    {
      __p[1] = v13;
      operator delete(v13);
    }
  }
}