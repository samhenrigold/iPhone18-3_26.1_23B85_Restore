uint64_t sub_1AF11A68C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0974(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  result = sub_1AF112E80(*(a1 + 16), a2);
  if (result)
  {
    v12 = sub_1AF119DEC(a1, v11);
    if (v12)
    {
      return sub_1AF11A68C(v12, v13);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_1AF11A6F4(uint64_t a1, float a2)
{
  v3 = *(a1 + 52);
  if (v3 != a2)
  {
    if (*(a1 + 145))
    {
      v5 = *(*(a1 + 16) + 80);
      v6 = v3 * v5;
      v7 = v5 * a2;
      v8 = sub_1AF116D4C(*(a1 + 208), a1);
      if (v6 == 0.0)
      {
        v9 = (*(a1 + 64) * *(a1 + 76));
      }

      else
      {
        v9 = (v8 - *(a1 + 80)) * v6;
      }

      if (v7 != 0.0)
      {
        *(a1 + 80) = -(v9 / v7 - v8);
      }
    }

    *(a1 + 52) = a2;
  }
}

CFTypeRef sub_1AF11A7A4(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 24);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 24) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 24) = result;
  }

  return result;
}

uint64_t sub_1AF11A808(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 147) >> 5) & 1;
}

void sub_1AF11A854(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 0x200000;
  }

  else
  {
    v12 = 0;
  }

  *(result + 145) = *(result + 145) & 0xFFDFFFFF | v12;
}

void sub_1AF11A8C0(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 0x400000;
  }

  else
  {
    v12 = 0;
  }

  *(result + 145) = *(result + 145) & 0xFFBFFFFF | v12;
}

double sub_1AF11A938(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 152);
}

void sub_1AF11A980(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 152) = a3;
}

uint64_t sub_1AF11A9D4(_BOOL8 a1, const void *a2, void *a3, const void *a4)
{
  v7 = a1;
  if (!a1 && (v8 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v15 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD1858(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  v23 = sub_1AF11AA7C(v7, a2, a3);
  sub_1AF119C5C(v23, a4);
  return v23;
}

uint64_t sub_1AF11AA7C(uint64_t a1, const void *a2, void *a3)
{
  v6 = sub_1AF11988C(a2);
  v8 = sub_1AF115980(a2, v7);
  if (v8 >= 1)
  {
    v9 = v8;
    for (i = 0; v9 != i; ++i)
    {
      v11 = sub_1AF1159CC(a2, i);
      if (sub_1AF1129A0(v11))
      {
        v12 = sub_1AF11AA7C(a1, v11, a3);
        if (v12)
        {
          v13 = v12;
          sub_1AF119E34(v6, v12);
LABEL_10:
          CFRelease(v13);
        }
      }

      else
      {
        v14 = sub_1AF1128BC(v11, a3);
        v13 = v14;
        if (v11)
        {
          v15 = sub_1AF11988C(v11);
          sub_1AF119E34(v6, v15);
          CFRelease(v15);
          if (v13)
          {
            sub_1AF115E90(a1, v15, v13);
            goto LABEL_10;
          }
        }

        else if (v14)
        {
          goto LABEL_10;
        }
      }
    }
  }

  return v6;
}

uint64_t sub_1AF11AB88(_BOOL8 a1, const void *a2, uint64_t a3, const void *a4)
{
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD18D0(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  v21 = sub_1AF11AC18(a2);
  sub_1AF119C5C(v21, a4);
  return v21;
}

uint64_t sub_1AF11AC18(const void *a1)
{
  if (qword_1ED731C80[0] != -1)
  {
    sub_1AFDD1948();
  }

  v2 = sub_1AF0D160C(qword_1ED731C78, 0xF0uLL);
  sub_1AF1198EC(v2, a1);
  return v2;
}

uint64_t sub_1AF11AC70(_BOOL8 a1, const void *a2, const void *a3, const void *a4)
{
  v7 = a1;
  if (!a1 && (v8 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v15 = sub_1AF0D5194(a1, a2);
  a1 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    sub_1AFDCFFDC(v15, a2, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD119C(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v30 = sub_1AF11988C(a2);
  sub_1AF119C5C(v30, a4);
  sub_1AF115E90(v7, v30, a3);
  return v30;
}

uint64_t sub_1AF11AD44(uint64_t a1, uint64_t a2)
{
  if (qword_1ED731C80[0] != -1)
  {
    sub_1AFDD1948();
  }

  return qword_1ED731C78;
}

double sub_1AF11AD7C()
{
  qword_1ED731C78 = _CFRuntimeRegisterClass();
  result = *&xmmword_1F24E6B20;
  xmmword_1ED721CC0 = xmmword_1F24E6B20;
  return result;
}

void sub_1AF11ADC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        *(CFArrayGetValueAtIndex(*(a1 + 32), i) + 5) = 0;
      }
    }

    CFRelease(*(a1 + 32));
  }

  if (*(a1 + 224))
  {
    v7 = *(a1 + 240);
    if (!v7 || (v3 = v7(a1, a2), *(a1 + 224)))
    {
      v8 = sub_1AF0D5194(v3, a2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD195C(v8, v9, v10, v11, v12, v13, v14, v15);
      }

      v16 = *(a1 + 224);
      if (v16)
      {
        CFRelease(v16);
        *(a1 + 224) = 0;
      }
    }
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 16) = 0;
  }

  v18 = *(a1 + 160);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 160) = 0;
  }

  v19 = *(a1 + 24);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 24) = 0;
  }

  v20 = *(a1 + 136);
  if (v20)
  {
    v21 = v20[1];
    if (v21)
    {
      CFRelease(v21);
      v20[1] = 0;
    }

    v22 = v20[3];
    if (v22)
    {
      CFRelease(v22);
      v20[3] = 0;
    }

    v23 = v20[2];
    if (v23)
    {
      CFRelease(v23);
    }

    free(v20);
  }

  v24 = *(a1 + 200);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 200) = 0;
  }
}

void sub_1AF11AF00(uint64_t a1, void *__dst, float *__src, size_t __n)
{
  if ((a1 + 52) == __dst)
  {
    sub_1AF11A6F4(a1, *__src);
  }

  else
  {
    memcpy(__dst, __src, __n);
  }
}

void sub_1AF11AF28(uint64_t a1, uint64_t a2)
{
  sub_1AF11ADC4(a1, a2);
  v3 = *(a1 + 248);

  free(v3);
}

void sub_1AF11AF68(uint64_t a1, void *__dst, float *__src, size_t __n)
{
  if ((a1 + 52) == __dst)
  {
    sub_1AF11A6F4(a1, *__src);
  }

  else
  {
    memcpy(__dst, __src, __n);
  }
}

uint64_t sub_1AF11AF8C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AE58 != -1)
  {
    sub_1AFDD19D4();
  }

  return qword_1ED73AE50;
}

double sub_1AF11AFC4()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AE50 = v0;
  v2 = sub_1AF16CB64(v0, v1);
  sub_1AF1DCFAC(v0, v2);
  sub_1AF1DD02C(@"speed", 84, 1, 0);
  sub_1AF1DD02C(@"blendFactor", 80, 1, 0);
  sub_1AF1DD018();
  result = *&xmmword_1F24E6B50;
  xmmword_1ED72F608 = xmmword_1F24E6B50;
  return result;
}

uint64_t sub_1AF11B050(const void *a1, uint64_t a2)
{
  if (qword_1ED73AE58 != -1)
  {
    sub_1AFDD19D4();
  }

  v3 = sub_1AF0D160C(qword_1ED73AE50, 0x50uLL);
  if (v3)
  {
    *(v3 + 72) = CFArrayCreateMutable(0, 1, MEMORY[0x1E695E9C0]);
    v4 = *(v3 + 64);
    if (v4 != a1)
    {
      if (v4)
      {
        CFRelease(v4);
        *(v3 + 64) = 0;
      }

      if (a1)
      {
        v5 = CFRetain(a1);
      }

      else
      {
        v5 = 0;
      }

      *(v3 + 64) = v5;
    }

    __asm { FMOV            V0.2S, #1.0 }

    *(v3 + 80) = _D0;
    *(v3 + 88) = 0;
    *(v3 + 90) = 0;
  }

  return v3;
}

CFTypeRef sub_1AF11B0FC(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD19E8(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 64);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 64) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 64) = result;
  }

  return result;
}

uint64_t sub_1AF11B17C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD19E8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

void sub_1AF11B1C4(_BOOL8 a1, const void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD19E8(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0974(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  v19 = *(v3 + 72);
  v22.length = CFArrayGetCount(v19);
  v22.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v19, v22, a2);
  if (FirstIndexOfValue != -1)
  {
    v21 = FirstIndexOfValue;
    sub_1AF119C2C(a2, 0);
    CFArrayRemoveValueAtIndex(*(v3 + 72), v21);
  }
}

double sub_1AF11B280(uint64_t a1, void *value)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, value);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD19E8(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  CFArrayAppendValue(*(a1 + 72), value);
  sub_1AF119C2C(value, a1);
  v13 = sub_1AF119C24(value);
  if (!v13)
  {
    v14 = sub_1AF0D5194(0, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0FCC(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if ((*(a1 + 88) & 1) == 0)
  {
    sub_1AF118094(v13, value);
  }

  result = *(a1 + 80);
  *(value + 6) = result;
  return result;
}

void sub_1AF11B334(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD19E8(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(a1 + 84) != a3)
  {
    *(a1 + 84) = a3;
    Count = CFArrayGetCount(*(a1 + 72));
    if (Count >= 1)
    {
      v14 = Count;
      for (i = 0; i != v14; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
        sub_1AF11A6F4(ValueAtIndex, a3);
      }
    }
  }
}

float sub_1AF11B3D4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD19E8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 84);
}

void sub_1AF11B41C(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD19E8(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 80) != a3)
  {
    *(result + 80) = a3;
    Count = CFArrayGetCount(*(result + 72));
    if (Count >= 1)
    {
      v14 = Count;
      for (i = 0; i != v14; ++i)
      {
        *(CFArrayGetValueAtIndex(*(result + 72), i) + 12) = a3;
      }
    }
  }
}

float sub_1AF11B4B8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD19E8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 80);
}

void sub_1AF11B500(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD19E8(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 88) != a2)
  {
    *(result + 88) = a2;
    Count = CFArrayGetCount(*(result + 72));
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(result + 72), i);
        v16 = sub_1AF119C24(ValueAtIndex);
        if (v16)
        {
          v17 = v16;
          sub_1AF277058();
          sub_1AF118CE4(v17, ValueAtIndex, a2, 0, v18);
        }
      }
    }
  }
}

uint64_t sub_1AF11B5C0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD19E8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 88);
}

CFIndex sub_1AF11B608(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD19E8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *(a1 + 88) = 0;
  result = CFArrayGetCount(*(a1 + 72));
  if (result >= 1)
  {
    v12 = result;
    for (i = 0; i != v12; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      result = sub_1AF119C24(ValueAtIndex);
      if (result)
      {
        result = sub_1AF118094(result, ValueAtIndex);
      }
    }
  }

  return result;
}

CFIndex sub_1AF11B69C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD19E8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *(a1 + 88) = 1;
  result = CFArrayGetCount(*(a1 + 72));
  if (result >= 1)
  {
    v12 = result;
    for (i = 0; i != v12; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      result = sub_1AF119C24(ValueAtIndex);
      if (result)
      {
        result = sub_1AF118BE4(result, ValueAtIndex, 0.0);
      }
    }
  }

  return result;
}

CFIndex sub_1AF11B738(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD19E8(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(a1 + 88) = 1;
  result = CFArrayGetCount(*(a1 + 72));
  if (result >= 1)
  {
    v14 = result;
    for (i = 0; i != v14; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      result = sub_1AF119C24(ValueAtIndex);
      if (result)
      {
        result = sub_1AF118BE4(result, ValueAtIndex, a3);
      }
    }
  }

  return result;
}

void sub_1AF11B7E0(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD19E8(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 89) != v2)
  {
    *(result + 89) = v2;
    Count = CFArrayGetCount(*(result + 72));
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(result + 72), i);
        sub_1AF119B20(ValueAtIndex, v16);
      }
    }
  }
}

uint64_t sub_1AF11B874(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD19E8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 89);
}

void sub_1AF11B8BC(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD19E8(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 90) != v2)
  {
    *(result + 90) = v2;
    Count = CFArrayGetCount(*(result + 72));
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(result + 72), i);
        sub_1AF119B20(ValueAtIndex, v16);
      }
    }
  }
}

uint64_t sub_1AF11B950(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD19E8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 90);
}

void sub_1AF11B99C(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 72));
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      sub_1AF119C2C(ValueAtIndex, 0);
    }
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 64) = 0;
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 72) = 0;
  }
}

void sub_1AF11BA24(uint64_t a1, uint64_t a2, float *a3)
{
  if (a1 + 84 == a2)
  {
    sub_1AF11B334(a1, a2, *a3);
  }

  else if (a1 + 80 == a2)
  {
    sub_1AF11B41C(a1, a2, *a3);
  }
}

void sub_1AF11BA50(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v3 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1A60(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *result = 1;
}

void sub_1AF11BAA0(uint64_t result, uint64_t a2, _BOOL8 a3, int a4)
{
  *&v19[5] = *MEMORY[0x1E69E9840];
  v4 = *(*(*(a2 + 16) + 152) + 20);
  if (v4)
  {
    v9 = 0;
    v10 = *(a2 + 248);
    v11 = 4 * v4;
    do
    {
      v12 = *(v10 + v9);
      if (v12 != -1)
      {
        v13 = sub_1AF159A64(*(result + 56), v12);
        v14 = v13;
        v15 = *v13;
        if (*v13)
        {
          goto LABEL_8;
        }

        v16 = sub_1AF0D5194(v13, 0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD114C(v18, v19, v16);
        }

        v15 = *v14;
        if (*v14)
        {
LABEL_8:
          v17 = *(v15 + 16);
          if (a4)
          {
            sub_1AF1DEA30(a3, v15);
          }

          else
          {
            sub_1AF1DEBA4(a3, v15);
          }

          if (v17 == 1)
          {
            *v14 = 0;
          }
        }

        v10 = *(a2 + 248);
        *(v10 + v9) = -1;
      }

      v9 += 4;
    }

    while (v11 != v9);
  }
}

void sub_1AF11BBD0(uint64_t a1, _BOOL8 a2)
{
  if (*a1)
  {
    *a1 = 0;
    for (i = *(a1 + 8); i; i = i[25])
    {
      if (*(a1 + 48) == 1)
      {
        v5 = i[2];
        if (v5)
        {
          v6 = (*(v5 + 84) & 0x10) == 0;
        }

        else
        {
          v6 = 1;
        }

        sub_1AF11BAA0(a1, i, a2, v6);
      }

      i[22] = -1;
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 56) = 0;
    }

    v8 = *(a1 + 8);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 8) = 0;
    }

    v9 = *(a1 + 24);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 24) = 0;
    }
  }
}

void sub_1AF11BC8C(uint64_t a1, const void *cf)
{
  v2 = cf;
  if (a1 || (v4 = sub_1AF0D5194(0, cf), !os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    if (!v2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  sub_1AFDD1AD8(v4, v5, v6, v7, v8, v9, v10, v11);
  if (v2)
  {
LABEL_4:
    v2 = sub_1AF1DE2E0(v2);
  }

LABEL_5:
  v12 = *(a1 + 24);
  if (v12 != v2)
  {
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 24) = 0;
    }

    if (v2)
    {
      v13 = CFRetain(v2);
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 24) = v13;
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t sub_1AF11BD2C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1AD8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

void sub_1AF11BD74(_BOOL8 a1, uint64_t cf, uint64_t a3)
{
  v4 = cf;
  v5 = a1;
  *&v85[5] = *MEMORY[0x1E69E9840];
  if (!a1 && (v6 = sub_1AF0D5194(0, cf), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD1AD8(v6, cf, v7, v8, v9, v10, v11, v12);
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    goto LABEL_6;
  }

  v13 = sub_1AF0D5194(a1, cf);
  a1 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    sub_1AFDD0974(v13, cf, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if ((*v5 & 1) == 0)
  {
    v20 = sub_1AF0D5194(a1, cf);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1B50(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  if (*(v5 + 8))
  {
    if (v4)
    {
      v28 = CFRetain(v4);
    }

    else
    {
      v28 = 0;
    }

    v30 = *(v5 + 16);
    *(v30 + 200) = v28;
    *(v4 + 192) = v30;
  }

  else
  {
    if (v4)
    {
      v29 = CFRetain(v4);
    }

    else
    {
      v29 = 0;
    }

    *(v5 + 8) = v29;
  }

  *(v5 + 16) = v4;
  sub_1AF11C17C(v5, 0, a3);
  if (*(v5 + 128) == 1)
  {
    v31 = *(*(v4 + 24) + 34) - 3;
    if (v31 <= 5)
    {
      *(v4 + 144) = 0x70401020202uLL >> (8 * (v31 & 0x1F));
    }
  }

  if (*(v5 + 48) == 1)
  {
    v32 = CFGetTypeID(v4);
    v34 = sub_1AF11AD44(v32, v33);
    if (v32 != v34)
    {
      v36 = sub_1AF0D5194(v34, v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD1BC8(v36, v35, v37, v38, v39, v40, v41, v42);
      }
    }

    v82 = sub_1AF116670(a3, v35);
    if (!v82)
    {
      v44 = sub_1AF0D5194(0, v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD1C40(v44, v45, v46, v47, v48, v49, v50, v51);
      }
    }

    v52 = *(v4 + 16);
    v53 = *(*(v52 + 152) + 20);
    if (!*(v5 + 56))
    {
      *(v5 + 56) = sub_1AF159954(24, *(*(v52 + 152) + 20));
    }

    *(v4 + 248) = malloc_type_malloc(4 * v53, 0x100004052888210uLL);
    v55 = sub_1AF1599D4(*(v5 + 56), v54);
    v83 = sub_1AF119A30(v4, v56);
    if (v53)
    {
      v57 = 0;
      v79 = v52;
      v80 = v4;
      v81 = v53;
      do
      {
        v58 = sub_1AF1DB564(v83, *(*(*(v52 + 152) + 72) + 8 * v57), 0);
        if (!sub_1AF1DE3A8(v58, v59))
        {
          *(*(v4 + 248) + 4 * v57) = -1;
          if (!v58)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }

        v60 = sub_1AF1DE784(v82, v58);
        if (v55 < 1)
        {
          goto LABEL_48;
        }

        v61 = 0;
        v62 = -1;
        v63 = -1;
        do
        {
          v64 = sub_1AF159A64(*(v5 + 56), v61);
          if (*v64)
          {
            if (v60 == *v64)
            {
              v66 = v64;
              v67 = *(v64 + 8);
              if (v67 == sub_1AF1DE4A8(v58, v65))
              {
                v68 = *(v66 + 9);
                if (v68 == sub_1AF1DE4F0(v58, v65))
                {
                  v63 = v61;
                  v61 = v55;
                }
              }
            }
          }

          else
          {
            v62 = v61;
          }

          ++v61;
        }

        while (v61 < v55);
        if (v63 != -1)
        {
          v4 = v80;
          *(*(v80 + 248) + 4 * v57) = v63;
          v52 = v79;
          goto LABEL_50;
        }

        v52 = v79;
        v4 = v80;
        if (v62 == -1)
        {
LABEL_48:
          sub_1AF159BD4(*(v5 + 56), 0);
          v62 = v55++;
        }

        *(*(v4 + 248) + 4 * v57) = v62;
        v69 = sub_1AF159A64(*(v5 + 56), v62);
        *v69 = v60;
        *(v69 + 8) = sub_1AF1DE4A8(v58, v70);
        *(v69 + 9) = sub_1AF1DE4F0(v58, v71);
        v73 = sub_1AF1DE538(v58, v72);
        *(v69 + 16) = sub_1AF11DE20(v73, *(v69 + 8), 0, 0);
LABEL_50:
        v74 = *(*(*(v52 + 152) + 40) + v57);
        v75 = sub_1AF288070(v58[16], v65);
        v77 = v75 == v74;
        v53 = v81;
        if (!v77)
        {
          v78 = sub_1AF0D5194(v75, v76);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDD1CB8(buf, v85, v78);
          }
        }

LABEL_53:
        CFRelease(v58);
LABEL_54:
        ++v57;
      }

      while (v57 != v53);
    }
  }
}

void sub_1AF11C17C(_BOOL8 result, uint64_t a2, _BOOL8 a3)
{
  v4 = a2;
  v5 = result;
  if (!result && (v6 = sub_1AF0D5194(0, a2), result = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD1D08(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v13 = sub_1AF0D5194(result, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD08FC(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  if (*(v5 + 241) != v4)
  {
    if (v4)
    {
      v21 = 1;
    }

    else
    {
      v21 = 0xFFFFFFFFLL;
    }

    sub_1AF116DF8(a3, v21);
    *(v5 + 241) = v4;
  }
}

void sub_1AF11C21C(_BOOL8 a1, void *cf)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, cf), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD1AD8(v4, cf, v5, v6, v7, v8, v9, v10);
    if (cf)
    {
      goto LABEL_6;
    }
  }

  else if (cf)
  {
    goto LABEL_6;
  }

  v11 = sub_1AF0D5194(a1, cf);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0974(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  v19 = cf + 24;
  v20 = cf[24];
  cf[22] = -1;
  v21 = cf[25];
  if (v20)
  {
    *(v20 + 200) = v21;
  }

  if (v21)
  {
    *(v21 + 192) = v20;
  }

  if (*(v3 + 8) == cf)
  {
    *(v3 + 8) = v21;
  }

  if (*(v3 + 16) == cf)
  {
    *(v3 + 16) = *v19;
  }

  *v19 = 0;
  cf[25] = 0;
  CFRelease(cf);
}

BOOL sub_1AF11C2E8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1D08(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 8) == 0;
}

uint64_t sub_1AF11C3E8()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB64FB88 = result;
  return result;
}

uint64_t sub_1AF11C410(float *a1, int a2, float *a3)
{
  v4 = a2 - 1;
  v5 = *a3;
  if (a2 - 1 < 1)
  {
LABEL_10:
    result = 0;
    if (*a1 > v5)
    {
      *a3 = *a1;
    }
  }

  else
  {
    result = 0;
    do
    {
      v7 = (result + v4) >> 1;
      if (a1[v7] >= v5)
      {
        v4 = v7 - 1;
      }

      else
      {
        if (result == v7)
        {
          if (a1[v4] <= v5)
          {
            return v4;
          }

          else
          {
            return result;
          }
        }

        result = (result + v4) >> 1;
      }
    }

    while (v4 > result);
    if (!result)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_1AF11C488(uint64_t a1)
{
  if (qword_1EB64FB90 != -1)
  {
    sub_1AFDD1D80();
  }

  v2 = qword_1EB64FB88;

  return sub_1AF0D160C(v2, 0x58uLL);
}

uint64_t sub_1AF11C4D0(uint64_t a1, uint64_t a2, char a3, int a4, int a5)
{
  v9 = a1;
  v10 = sub_1AF11C488(a1);
  v12 = v10;
  if (v10)
  {
    if (!v9)
    {
      v13 = sub_1AF0D5194(v10, v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD1D94(v13, v14, v15, v16, v17, v18, v19, v20);
      }
    }

    *(v12 + 40) = sub_1AF288058(4 * v9);
    *(v12 + 24) = v9;
    v22 = sub_1AF288070(a2, v21);
    *(v12 + 30) = v22;
    *(v12 + 28) = a2;
    *(v12 + 99) = a3;
    *(v12 + 48) = sub_1AF288058(v22 * v9);
    if (a4)
    {
      *(v12 + 56) = sub_1AF288058(4 * v9);
      *(v12 + 64) = sub_1AF288058(4 * v9);
      *(v12 + 72) = sub_1AF288058(4 * v9);
    }

    *(v12 + 98) = a4 & a5;
    if (a5)
    {
      v24 = sub_1AF2884B4(a2, v23);
      *(v12 + 97) = v24;
      *(v12 + 80) = sub_1AF288058(v24 * 8 * v9);
      *(v12 + 88) = sub_1AF288058(8 * v9 * *(v12 + 97));
    }

    *(v12 + 32) = sub_1AF11DE20(*(v12 + 28), *(v12 + 99), 0, *(v12 + 31));
  }

  return v12;
}

BOOL sub_1AF11C604(_BOOL8 a1, uint64_t a2, void *__src, const void *a4, const void *a5, double a6, float a7, float a8, float a9)
{
  v16 = a2;
  v17 = a1;
  if (!a1)
  {
    v18 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD1E0C(v18, a2, v19, v20, v21, v22, v23, v24);
    }
  }

  v25 = *(v17 + 24);
  if (v25 <= v16)
  {
    v34 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD1EC8(v34);
    }
  }

  else
  {
    v26 = a6;
    v27 = *(v17 + 48);
    *(*(v17 + 40) + 4 * v16) = v26;
    v28 = *(v17 + 16);
    if (v28 <= a6)
    {
      v28 = a6;
    }

    *(v17 + 16) = v28;
    memcpy((v27 + *(v17 + 30) * v16), __src, *(v17 + 30));
    v29 = *(v17 + 56);
    if (v29)
    {
      *(v29 + 4 * v16) = a7;
    }

    v30 = *(v17 + 64);
    if (v30)
    {
      *(v30 + 4 * v16) = a8;
    }

    v31 = *(v17 + 72);
    if (v31)
    {
      *(v31 + 4 * v16) = a9;
    }

    if (a4)
    {
      v32 = *(v17 + 80);
      if (v32)
      {
        *(v17 + 98) = 0;
        memcpy((v32 + 8 * *(v17 + 97) * v16), a4, 8 * *(v17 + 97));
      }
    }

    if (a5)
    {
      v33 = *(v17 + 88);
      if (v33)
      {
        *(v17 + 98) = 0;
        memcpy((v33 + 8 * *(v17 + 97) * v16), a5, 8 * *(v17 + 97));
      }
    }
  }

  return v25 > v16;
}

double sub_1AF11C79C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16);
}

uint64_t sub_1AF11C7E4(_BOOL8 a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = a2;
  v9 = a1;
  if (!a1)
  {
    v10 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD1E0C(v10, a2, v11, v12, v13, v14, v15, v16);
    }
  }

  if (!*(v9 + 48))
  {
    v17 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD1F0C(v17, a2, v18, v19, v20, v21, v22, v23);
    }
  }

  if (!*(v9 + 32))
  {
    v24 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD1F84(v24, a2, v25, v26, v27, v28, v29, v30);
    }
  }

  if (!*(v9 + 24))
  {
    v31 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1FFC(v31, v32, v33, v34, v35, v36, v37, v38);
    }
  }

  v39 = *(v9 + 31);
  v40 = a5;
  v54 = v40;
  v41 = *(v9 + 40);
  v42 = *(v9 + 24);
  v43 = sub_1AF11C410(v41, v42, &v54);
  v45 = v43;
  if (v43 + 1 < (v42 - 1))
  {
    v46 = v43 + 1;
  }

  else
  {
    v46 = v42 - 1;
  }

  v47 = *(v9 + 48);
  v48 = *(v9 + 30);
  v49 = v47 + (v43 * v48);
  v50 = v47 + (v46 * v48);
  if (v39 != 1 && *(v9 + 28) != 3)
  {
    v52 = v41[v45];
    v53 = v41[v46] - v52;
    if (v53 == 0.0)
    {
      v44.n128_u64[0] = 0;
      if (v39)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v44.n128_f64[0] = ((v54 - v52) / v53);
      if (v39)
      {
LABEL_24:
        (*(v9 + 32))(v49, v50, v39, *(v9 + 88) + 8 * v45 * *(v9 + 97), *(v9 + 80) + 8 * v46 * *(v9 + 97), a3, a4, v44);
        return 1;
      }
    }

    (*(v9 + 32))(v49, v50, 0, 0, 0, a3, a4, v44);
    return 1;
  }

  if (v7)
  {
    v49 = v47 + (v46 * v48);
  }

  v44.n128_f64[0] = v54;
  (*(v9 + 32))(v49, v49, v39, 0, 0, a3, a4, v44);
  return 1;
}

uint64_t sub_1AF11C9D0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

uint64_t sub_1AF11CA18(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 28);
}

double sub_1AF11CA60(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 40);
  result = 0.0;
  if (v12)
  {
    if (*(a1 + 24) > v2)
    {
      return *(v12 + 4 * v2);
    }
  }

  return result;
}

uint64_t sub_1AF11CAD0(uint64_t a1, uint64_t a2, void *__dst)
{
  v4 = a2;
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 48);
  if (!v14)
  {
    return 0;
  }

  memcpy(__dst, (v14 + *(a1 + 30) * v4), *(a1 + 30));
  return *(a1 + 30);
}

void sub_1AF11CB4C(_BOOL8 a1, uint64_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = a1;
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD1E0C(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  if (!*(v4 + 48))
  {
    v12 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1F0C(v12, a2, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = *(v4 + 24);
  if (v19 >= 2)
  {
    if (!*(v4 + 40))
    {
      *(v4 + 40) = sub_1AF288058(4 * v19);
    }

    v20 = *(v4 + 28);
    v21 = (v19 - 1);
    v22 = *(v4 + 48);
    v23 = 0.0;
    v24 = 1;
    while (2)
    {
      v25 = v22;
      v26 = v24 * *(v4 + 30);
      v22 = (*(v4 + 48) + v26);
      switch(v20)
      {
        case 1:
          a3.f32[0] = vabds_f32(v25->f32[0], v22->f32[0]);
          goto LABEL_18;
        case 2:
          v27 = v25->f32[0];
          v28 = v22->f32[0];
          goto LABEL_31;
        case 3:
        case 15:
          LODWORD(v27) = v25->u8[0];
          LODWORD(v28) = v22->u8[0];
          goto LABEL_31;
        case 4:
          LODWORD(v27) = v25->i8[0];
          LODWORD(v28) = v22->i8[0];
          goto LABEL_31;
        case 5:
        case 11:
        case 14:
          goto LABEL_21;
        case 6:
          v32 = vabdd_f64(*v25->i64, *v22->i64);
          goto LABEL_33;
        case 7:
        case 17:
          v29 = vsub_f32(*v25->f32, *v22->f32);
          *a3.f32 = vmul_f32(v29, v29);
          goto LABEL_15;
        case 8:
        case 18:
          a3.i64[0] = v25->i64[0];
          a3.i32[2] = v25->i32[2];
          a4.i64[0] = v22->i64[0];
          a4.i32[2] = v22->i32[2];
          v31 = vsubq_f32(a3, a4);
          a3 = vmulq_f32(v31, v31);
          a3.f32[0] = a3.f32[2] + vaddv_f32(*a3.f32);
          goto LABEL_17;
        case 9:
        case 19:
          v30 = vsubq_f32(*v25, *v22);
          a3 = vmulq_f32(v30, v30);
          a4 = vextq_s8(a3, a3, 8uLL);
          *a3.f32 = vadd_f32(*a3.f32, *a4.f32);
LABEL_15:
          a3.f32[0] = vaddv_f32(*a3.f32);
LABEL_17:
          a3.f32[0] = sqrtf(a3.f32[0]);
          goto LABEL_18;
        case 10:
          v35 = vsubq_f32(*v25, *v22);
          v36 = vsubq_f32(v25[1], v22[1]);
          v37 = vsubq_f32(v25[2], v22[2]);
          v38 = vsubq_f32(v25[3], v22[3]);
          a3 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v35, v35), v36, v36), v37, v37), v38, v38);
          a4 = vextq_s8(a3, a3, 8uLL);
          a3.f32[0] = vaddv_f32(vadd_f32(*a3.f32, *a4.f32));
          goto LABEL_18;
        case 12:
          a3.f32[0] = sub_1AF1640E4(v25->f32, (*(v4 + 48) + v26));
LABEL_18:
          v32 = a3.f32[0];
          goto LABEL_33;
        case 13:
          LODWORD(v27) = v25->i16[0];
          LODWORD(v28) = v22->i16[0];
          goto LABEL_31;
        case 16:
          LODWORD(v27) = v25->u16[0];
          LODWORD(v28) = v22->u16[0];
LABEL_31:
          v33 = (LODWORD(v27) - LODWORD(v28));
          goto LABEL_32;
        default:
          if (v20 == 45)
          {
            v33 = (v25->i64[0] - v22->i64[0]);
LABEL_32:
            v32 = fabs(v33);
          }

          else
          {
LABEL_21:
            v34 = sub_1AF0D5194(v25, a2);
            v32 = 0.0;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              v45 = v20;
              _os_log_impl(&dword_1AF0CE000, v34, OS_LOG_TYPE_DEFAULT, "Warning: _CFXKeyDistance - can't compute key distance for type %d", buf, 8u);
            }
          }

LABEL_33:
          v23 = v23 + v32;
          v39 = v23;
          v40 = *(v4 + 40);
          *&v40[v24++] = v39;
          v41 = v24 - v21;
          if (v24 - v21 != 1)
          {
            continue;
          }

          *v40 = 0;
          do
          {
            if (v23 == 0.0)
            {
              v42 = (v41 / v19) + -1.0;
            }

            else
            {
              v42 = *&v40[v41] / v23;
            }

            v43 = v42;
            *&v40[v41++] = v43;
          }

          while (v19 != v41);
          *(v4 + 16) = *&v40[v21];
          break;
      }

      break;
    }
  }
}

void sub_1AF11CE9C(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 96) = v2;
}

uint64_t sub_1AF11CEF0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 96);
}

uint64_t (*sub_1AF11CF38(uint64_t a1, uint64_t a2))()
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 31) = v2;
  result = sub_1AF11DE20(*(a1 + 28), *(a1 + 99), 0, v2);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1AF11CFA4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 31);
}

void sub_1AF11CFEC(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD1E0C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(v2 + 31);
  if (*(v2 + 80))
  {
    if (v10 == 2)
    {
LABEL_6:
      v11 = sub_1AF0D5194(a1, a2);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v12 = "Warning: can't simplify keyframes because of cubic interpolation";
LABEL_17:
      _os_log_impl(&dword_1AF0CE000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
      return;
    }
  }

  else
  {
    if (*(v2 + 88))
    {
      v13 = v10 == 2;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      goto LABEL_6;
    }
  }

  if (*(v2 + 56) || *(v2 + 72) || *(v2 + 64))
  {
    v11 = sub_1AF0D5194(a1, a2);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v12 = "Warning: can't simplify keyframes because of tcb values";
    goto LABEL_17;
  }

  v14 = *(v2 + 24);
  if (v14 >= 3)
  {
    v39 = 0u;
    v40 = 0u;
    *buf = 0u;
    v38 = 0u;
    memset(v36, 0, sizeof(v36));
    memset(__dst, 0, sizeof(__dst));
    memset(v34, 0, sizeof(v34));
    v15 = sub_1AF1D2E60(a1);
    v16 = 0;
    v17 = 0;
    v18 = *(v2 + 28);
    v20 = v10 == 1 || *(v2 + 28) == 3;
    v33 = v14;
    do
    {
      sub_1AF11CAD0(v2, v16 + 1, buf);
      sub_1AF11CAD0(v2, v17, __dst);
      if (v20)
      {
        v21.n128_u64[0] = 0;
        (*(v2 + 32))(__dst, __dst, v10, 0, 0, 0, v36, v21);
      }

      else
      {
        sub_1AF11CAD0(v2, v16 + 2, v34);
        v22 = sub_1AF11CA60(v2, v16 + 1);
        v23 = sub_1AF11CA60(v2, v17);
        v24.n128_f64[0] = (v22 - v23) / (sub_1AF11CA60(v2, v16 + 2) - v23);
        (*(v2 + 32))(__dst, v34, v10, 0, 0, 0, v36, v24);
      }

      if (sub_1AF11D330(buf, v36, v18))
      {
        v17 = v16 + 1;
      }

      else
      {
        sub_1AF1D3E90(v15, v16 + 1, v25);
      }

      ++v16;
    }

    while ((v14 - 1) - 1 != v16);
    v26 = sub_1AF1D2E88(v15);
    if (v26 >= 1)
    {
      v27 = v14 - v26;
      v29 = *(v2 + 40);
      v28 = *(v2 + 48);
      *(v2 + 24) = v14 - v26;
      *(v2 + 40) = sub_1AF288058(4 * (v14 - v26));
      v30 = sub_1AF288058(v27 * *(v2 + 30));
      v31 = 0;
      v32 = 0;
      *(v2 + 48) = v30;
      do
      {
        if (!sub_1AF1D32E4(v15, v31))
        {
          sub_1AF11C604(v2, v32, &v28[v31 * *(v2 + 30)], 0, 0, v29[v31], 0.0, 0.0, 0.0);
          v32 = (v32 + 1);
        }

        ++v31;
      }

      while (v33 != v31);
      if (v29)
      {
        free(v29);
      }

      if (v28)
      {
        free(v28);
      }
    }

    CFRelease(v15);
  }
}

BOOL sub_1AF11D330(double *a1, double *a2, uint64_t a3)
{
  result = 1;
  if (a3 <= 6)
  {
    if ((a3 - 2) >= 4)
    {
      if (a3 != 1)
      {
        if (a3 != 6)
        {
          return result;
        }

        v12 = sub_1AF288070(6, a2);
        if (v12 < 8)
        {
          return 0;
        }

        if (vabdd_f64(*a1, *a2) <= 0.000001)
        {
          v7 = v12 >> 3;
          v13 = 1;
          do
          {
            v9 = v13;
            if (v7 == v13)
            {
              break;
            }

            v14 = vabdd_f64(a1[v13], a2[v13]);
            ++v13;
          }

          while (v14 <= 0.000001);
          return v9 < v7;
        }

        return 1;
      }

LABEL_22:
      v15 = sub_1AF288070(a3, a2);
      if (v15 < 4)
      {
        return 0;
      }

      if (vabds_f32(*a1, *a2) <= 0.000001)
      {
        v7 = v15 >> 2;
        v16 = 1;
        do
        {
          v9 = v16;
          if (v7 == v16)
          {
            break;
          }

          v17 = vabds_f32(*(a1 + v16), *(a2 + v16));
          ++v16;
        }

        while (v17 <= 0.000001);
        return v9 < v7;
      }

      return 1;
    }

LABEL_12:
    v11 = sub_1AF288070(a3, a2);
    return memcmp(a1, a2, v11) != 0;
  }

  if (a3 > 0x2D)
  {
    return result;
  }

  if (((1 << a3) & 0x2000000FE000) != 0)
  {
    goto LABEL_12;
  }

  if (((1 << a3) & 0xF80) == 0)
  {
    if (a3 != 12)
    {
      return result;
    }

    goto LABEL_22;
  }

  v6 = sub_1AF288070(a3, a2);
  if (v6 < 4)
  {
    return 0;
  }

  if (vabds_f32(*a1, *a2) > 0.000001)
  {
    return 1;
  }

  v7 = v6 >> 2;
  v8 = 1;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    v10 = vabds_f32(*(a1 + v8), *(a2 + v8));
    ++v8;
  }

  while (v10 <= 0.000001);
  return v9 < v7;
}

void sub_1AF11D514(uint64_t a1, _BYTE *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  sub_1AF11CFEC(a1, a2);
  if (a1 || (v6 = sub_1AF0D5194(v4, v5), !os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  sub_1AFDD1E0C(v6, v5, v7, v8, v9, v10, v11, v12);
  if (a2)
  {
LABEL_4:
    *a2 = 0;
  }

LABEL_5:
  if ((!*(a1 + 80) && !*(a1 + 88) || *(a1 + 31) != 2) && !*(a1 + 56) && !*(a1 + 72) && !*(a1 + 64) && sub_1AF11C9D0(a1, v5) == 2)
  {
    memset(__dst, 0, sizeof(__dst));
    memset(v15, 0, sizeof(v15));
    v13 = *(a1 + 28);
    if (sub_1AF11CAD0(a1, 0, __dst))
    {
      if (sub_1AF11CAD0(a1, 1, v15))
      {
        v14 = sub_1AF11D330(__dst, v15, v13);
        if (a2)
        {
          if (!v14)
          {
            *a2 = 1;
          }
        }
      }
    }
  }
}

void sub_1AF11D6E4(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    free(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    free(v6);
  }

  v7 = a1[10];
  if (v7)
  {
    free(v7);
  }

  v8 = a1[11];
  if (v8)
  {

    free(v8);
  }
}

uint64_t sub_1AF11D778(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AC68 != -1)
  {
    sub_1AFDD2074();
  }

  return qword_1ED73AC60;
}

uint64_t sub_1AF11D7B0()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED73AC60 = result;
  return result;
}

uint64_t sub_1AF11D7D8(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AC68 != -1)
  {
    sub_1AFDD2074();
  }

  v2 = sub_1AF0D160C(qword_1ED73AC60, 0x90uLL);
  sub_1AF112898(v2);
  return v2;
}

float sub_1AF11D828(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, cf, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 152);
  if (v11 != cf)
  {
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 152) = 0;
    }

    if (cf)
    {
      v11 = CFRetain(cf);
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 152) = v11;
  }

  result = *(a1 + 72);
  if (result == 0.0 && v11 != 0)
  {
    v14 = sub_1AF11C79C(v11, cf);
    sub_1AF1129D0(a1, v15, v14);
  }

  return result;
}

uint64_t sub_1AF11D8C8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 152);
}

uint64_t sub_1AF11D910(_BOOL8 a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = a1;
  if (!a1 && (v8 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD2088(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v15 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD2100(v15, a2, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  result = *(v7 + 152);
  if (result)
  {
    v23 = sub_1AF11C79C(result, a2);
    v24 = v23 * a4;
    v25 = *(v7 + 152);
    v26 = v24;
    v28 = sub_1AF112E34(v7, v27);
    return sub_1AF11C7E4(v25, a2, v28, a3, v26);
  }

  return result;
}

uint64_t sub_1AF11D9DC(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF11D8C8(a1, a2);
  if (v10)
  {
    v12 = v10;
    if (sub_1AF11CEF0(v10, v11) == 1 || sub_1AF11C79C(v12, v13) == 0.0)
    {
      *v14.i64 = sub_1AF112A24(a1, v13);
      sub_1AF11CB4C(v12, v15, v14, v16);
    }

    v17 = sub_1AF11C9D0(v12, v13);
    if (*(v12 + 98) == 1)
    {
      v18 = v17;
      v49 = sub_1AF11D64C(v12);
      memset(__dst, 0, sizeof(__dst));
      if (v18)
      {
        v19 = 0;
        do
        {
          v20 = v19;
          v21 = sub_1AF11CA60(v12, v19);
          v19 = (v19 + 1);
          if (v19 >= v18)
          {
            v22 = v21 + v21 - sub_1AF11CA60(v12, (v20 - 1));
            if (!v20)
            {
LABEL_15:
              v23 = v21 - (sub_1AF11CA60(v12, v19) - v21);
              goto LABEL_16;
            }
          }

          else
          {
            v22 = sub_1AF11CA60(v12, v19);
            if (!v20)
            {
              goto LABEL_15;
            }
          }

          v23 = sub_1AF11CA60(v12, (v20 - 1));
LABEL_16:
          v24 = sub_1AF11D674(v12, v20);
          v25 = sub_1AF11D680(v12, v20);
          v26 = sub_1AF11D68C(v12, v20);
          v27 = sub_1AF11D6B8(v12, v20);
          v28 = sub_1AF11D6CC(v12, v20);
          if (v49)
          {
            v29 = v28;
            v30 = 0;
            v31 = v21 - v23;
            v32 = v22 - v21;
            v33 = v22 - v21 + v21 - v23;
            v34 = (v22 - v21) / v33;
            v35 = (v21 - v23) / v33;
            v36 = (1.0 - v24) * (v25 + 1.0);
            v37 = v34 * (v36 * (v26 + 1.0));
            v38 = (1.0 - v24) * (1.0 - v25);
            v39 = v34 * (v38 * (1.0 - v26));
            v40 = v35 * (v38 * (v26 + 1.0));
            v41 = v35 * (v36 * (1.0 - v26));
            *&v35 = v32 * v39 + v37 * v31;
            *&v31 = v32 * v41 + v40 * v31;
            v50 = LODWORD(v31);
            v51 = LODWORD(v35);
            do
            {
              sub_1AF11CAD0(v12, v20, __dst);
              v42 = *(__dst + v30);
              if (v19 >= v18)
              {
                sub_1AF11CAD0(v12, (v20 - 1), __dst);
                v43 = v42 + (v42 - *(__dst + v30));
              }

              else
              {
                sub_1AF11CAD0(v12, v19, __dst);
                v43 = *(__dst + v30);
              }

              if (v20)
              {
                sub_1AF11CAD0(v12, (v20 - 1), __dst);
                v44 = *(__dst + v30);
              }

              else
              {
                sub_1AF11CAD0(v12, v19, __dst);
                v44 = v42 - (*(__dst + v30) - v42);
              }

              v45 = (v42 - v44);
              v46 = (v43 - v42);
              *&v47 = v39 * v46 + v37 * v45;
              *(v27 + 8 * v30) = __PAIR64__(v47, v51);
              *&v45 = v41 * v46 + v40 * v45;
              *(v29 + 8 * v30++) = __PAIR64__(LODWORD(v45), v50);
            }

            while (v49 != v30);
          }
        }

        while (v19 != v18);
      }
    }
  }

  else
  {
    sub_1AF11C9D0(0, v11);
  }

  return 1;
}

float sub_1AF11DD44(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD0208(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0280(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  v18 = sub_1AF11D8C8(v3, a2);
  return sub_1AF11D828(a2, v18);
}

id sub_1AF11DDD4(void *a1, uint64_t a2)
{
  v3 = a1[19];
  if (v3)
  {
    CFRelease(v3);
    a1[19] = 0;
  }

  return sub_1AF112834(a1, a2);
}

uint64_t (*sub_1AF11DE20(int a1, int a2, int a3, unsigned int a4))()
{
  v4 = sub_1AF1200EC;
  switch(a1)
  {
    case 1:
      v5 = sub_1AF11E124;
      if (a4 >= 3)
      {
        return v5;
      }

      v6 = off_1F24E6BA0;
      return v6[a4];
    case 2:
      v5 = sub_1AF11E3B0;
      if (a4 >= 3)
      {
        return v5;
      }

      v6 = off_1F24E6BD0;
      return v6[a4];
    case 3:
      return v4;
    case 4:
    case 15:
      v5 = sub_1AF120204;
      if (a4 >= 3)
      {
        return v5;
      }

      v6 = off_1F24E6CC0;
      return v6[a4];
    case 5:
    case 11:
    case 13:
    case 14:
    case 16:
      return 0;
    case 6:
      v5 = sub_1AF11E26C;
      if (a4 >= 3)
      {
        return v5;
      }

      v6 = off_1F24E6BB8;
      return v6[a4];
    case 7:
    case 17:
      v5 = sub_1AF11EE20;
      if (a4 >= 3)
      {
        return v5;
      }

      v6 = off_1F24E6C78;
      return v6[a4];
    case 8:
    case 18:
      v5 = sub_1AF11EC7C;
      if (a4 >= 3)
      {
        return v5;
      }

      v6 = off_1F24E6C60;
      return v6[a4];
    case 9:
    case 19:
      if (a2 == 3)
      {
        v5 = sub_1AF11E948;
        if (a4 >= 3)
        {
          return v5;
        }

        v6 = off_1F24E6C18;
      }

      else if (a2 == 4)
      {
        v5 = sub_1AF11E5D4;
        if (a4 >= 3)
        {
          return v5;
        }

        v6 = off_1F24E6C00;
      }

      else
      {
        v5 = sub_1AF11E9E4;
        if (a4 >= 3)
        {
          return v5;
        }

        v6 = off_1F24E6C30;
      }

      return v6[a4];
    case 10:
      if (a3)
      {
        v5 = sub_1AF11F040;
        if (a4 >= 3)
        {
          return v5;
        }

        v6 = off_1F24E6C90;
      }

      else
      {
        v5 = sub_1AF1200CC;
        if (a4 >= 3)
        {
          return v5;
        }

        v6 = off_1F24E6CA8;
      }

      return v6[a4];
    case 12:
      v5 = sub_1AF11EAC8;
      if (a4 >= 3)
      {
        return v5;
      }

      v6 = off_1F24E6C48;
      return v6[a4];
    default:
      if (a1 != 45)
      {
        return 0;
      }

      v5 = sub_1AF11E4DC;
      if (a4 >= 3)
      {
        return v5;
      }

      v6 = off_1F24E6BE8;
      return v6[a4];
  }
}

float sub_1AF11E030(float *a1, float *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float *a8)
{
  v8 = *a1 + (*a2 - *a1) * a3;
  if (a7)
  {
    v8 = v8 + *a8;
  }

  result = v8;
  *a8 = result;
  return result;
}

float *sub_1AF11E064(float *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float *a7)
{
  v7 = *result;
  if (a6)
  {
    v7 = v7 + *a7;
  }

  *a7 = v7;
  return result;
}

void sub_1AF11E07C(float *a1, float *a2, double a3, uint64_t a4, void *a5, void *a6, int a7, float *a8)
{
  v10 = *a1;
  v11 = *a2;
  v12 = *a1 + COERCE_FLOAT(HIDWORD(*a5));
  v13 = *a2 + COERCE_FLOAT(HIDWORD(*a6));
  v14 = a3;
  v15 = sub_1AF1202A0(v14, COERCE_FLOAT(*a5), COERCE_FLOAT(*a6));
  v16 = (((v12 * (v15 * (((1.0 - v15) * (1.0 - v15)) * 3.0))) + (((1.0 - v15) * ((1.0 - v15) * (1.0 - v15))) * v10)) + ((v15 * (v15 * v15)) * v11)) + (((v15 * v15) * ((1.0 - v15) * 3.0)) * v13);
  if (a7)
  {
    v16 = v16 + *a8;
  }

  *a8 = v16;
}

void sub_1AF11E124(float *a1, float *a2, int a3, void *a4, void *a5, int a6, float *a7, double a8)
{
  if (!a3)
  {
    v9 = *a1 + (*a2 - *a1) * a8;
    if (a6)
    {
      v9 = v9 + *a7;
    }

    v8 = v9;
    goto LABEL_8;
  }

  if (a3 == 1)
  {
    v8 = *a1;
    if (a6)
    {
      v8 = v8 + *a7;
    }

LABEL_8:
    *a7 = v8;
    return;
  }

  sub_1AF11E07C(a1, a2, a8, 0, a4, a5, a6, a7);
}

double *sub_1AF11E180(double *result, double *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, double *a8)
{
  v8 = *result + (*a2 - *result) * a3;
  if (a7)
  {
    v8 = *a8 + v8;
  }

  *a8 = v8;
  return result;
}

double *sub_1AF11E1A4(double *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double *a7)
{
  v7 = *result;
  if (a6)
  {
    v7 = v7 + *a7;
  }

  *a7 = v7;
  return result;
}

void sub_1AF11E1BC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, int a7, double *a8)
{
  v10 = a1;
  v20 = HIDWORD(*a6);
  v11 = sub_1AF1202A0(v10, COERCE_FLOAT(*a5), COERCE_FLOAT(*a6));
  _S1 = (v11 * v11) * ((1.0 - v11) * 3.0);
  _V2.S[1] = v20;
  __asm { FMLA            S0, S1, V2.S[1] }

  v19 = _S0;
  if (a7)
  {
    v19 = *a8 + v19;
  }

  *a8 = v19;
}

void sub_1AF11E26C(double *a1, double *a2, int a3, void *a4, void *a5, int a6, double *a7, double a8)
{
  if (!a3)
  {
    v8 = *a1 + (*a2 - *a1) * a8;
    if (!a6)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (a3 == 1)
  {
    v8 = *a1;
    if (!a6)
    {
LABEL_5:
      *a7 = v8;
      return;
    }

LABEL_4:
    v8 = v8 + *a7;
    goto LABEL_5;
  }

  sub_1AF11E1BC(a8, a1, a2, 0, a4, a5, a6, a7);
}

int *sub_1AF11E2B0(int *result, _DWORD *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int *a8)
{
  v8 = *result + (*a2 - *result) * a3;
  if (a7)
  {
    v8 = v8 + *a8;
  }

  *a8 = v8;
  return result;
}

int *sub_1AF11E2E4(int *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = *result;
  if (a6)
  {
    v7 += *a7;
  }

  *a7 = v7;
  return result;
}

void sub_1AF11E2FC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, int a7, int *a8)
{
  v10 = a1;
  v19 = HIDWORD(*a6);
  v11 = sub_1AF1202A0(v10, COERCE_FLOAT(*a5), COERCE_FLOAT(*a6));
  _S1 = (v11 * v11) * ((1.0 - v11) * 3.0);
  _V2.S[1] = v19;
  __asm { FMLA            S0, S1, V2.S[1] }

  if (a7)
  {
    _S0 = _S0 + *a8;
  }

  *a8 = _S0;
}

void sub_1AF11E3B0(int *a1, uint64_t a2, unsigned int a3, void *a4, void *a5, int a6, int *a7, double a8)
{
  if (a3 > 1)
  {
    sub_1AF11E2FC(a8, a1, a2, 0, a4, a5, a6, a7);
  }

  else
  {
    v8 = *a1;
    if (a6)
    {
      v8 += *a7;
    }

    *a7 = v8;
  }
}

uint64_t *sub_1AF11E3DC(uint64_t *result, void *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t *a8)
{
  v8 = *result + (*a2 - *result) * a3;
  if (a7)
  {
    v8 = v8 + *a8;
  }

  *a8 = v8;
  return result;
}

uint64_t *sub_1AF11E410(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7)
{
  v7 = *result;
  if (a6)
  {
    v7 += *a7;
  }

  *a7 = v7;
  return result;
}

void sub_1AF11E428(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, int a7, uint64_t *a8)
{
  v10 = a1;
  v19 = HIDWORD(*a6);
  v11 = sub_1AF1202A0(v10, COERCE_FLOAT(*a5), COERCE_FLOAT(*a6));
  _S1 = (v11 * v11) * ((1.0 - v11) * 3.0);
  _V2.S[1] = v19;
  __asm { FMLA            S0, S1, V2.S[1] }

  if (a7)
  {
    _S0 = _S0 + *a8;
  }

  *a8 = _S0;
}

void sub_1AF11E4DC(uint64_t *a1, uint64_t a2, unsigned int a3, void *a4, void *a5, int a6, uint64_t *a7, double a8)
{
  if (a3 > 1)
  {
    sub_1AF11E428(a8, a1, a2, 0, a4, a5, a6, a7);
  }

  else
  {
    v8 = *a1;
    if (a6)
    {
      v8 += *a7;
    }

    *a7 = v8;
  }
}

float32x4_t *sub_1AF11E508(float32x4_t *result, float32x4_t *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float32x4_t *a8)
{
  v8 = *result;
  v9.i64[0] = 0x3400000034000000;
  v9.i64[1] = 0x3400000034000000;
  v10 = vcgeq_f32(v9, vabsq_f32(*result));
  v10.i32[3] = v10.i32[2];
  v11 = vminvq_u32(v10);
  v12 = *a2;
  if ((v11 & 0x80000000) != 0)
  {
    v8 = *a2;
    v8.i32[3] = 0;
    v16 = v8;
    result = &v16;
  }

  v13 = vcgeq_f32(v9, vabsq_f32(v12));
  v13.i32[3] = v13.i32[2];
  if ((vminvq_u32(v13) & 0x80000000) != 0)
  {
    v8.i32[3] = 0;
    v16 = v8;
    v12 = v8;
  }

  v14 = a3;
  v15 = vmlaq_n_f32(*result, vsubq_f32(v12, *result), v14);
  if (a7)
  {
    v15 = vaddq_f32(*a8, v15);
  }

  *a8 = v15;
  return result;
}

float32x4_t *sub_1AF11E58C(float32x4_t *result, float32x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float32x4_t *a7)
{
  v7 = *result;
  v8.i64[0] = 0x3400000034000000;
  v8.i64[1] = 0x3400000034000000;
  v9 = vcgeq_f32(v8, vabsq_f32(*result));
  v9.i32[3] = v9.i32[2];
  if ((vminvq_u32(v9) & 0x80000000) != 0)
  {
    v7 = *a2;
    v7.i32[3] = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = *result;
    goto LABEL_6;
  }

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = vaddq_f32(v7, *a7);
LABEL_6:
  *a7 = v10;
  return result;
}

float32x4_t *sub_1AF11E5D4(float32x4_t *result, float32x4_t *a2, int a3, double a4, int32x4_t a5, double a6, int32x4_t a7, uint64_t a8, uint64_t a9, int a10, float32x4_t *a11)
{
  if (a3 == 1)
  {
    v11 = *result;
    v12.i64[0] = 0x3400000034000000;
    v12.i64[1] = 0x3400000034000000;
    v13 = vcgeq_f32(v12, vabsq_f32(*result));
    v13.i32[3] = v13.i32[2];
    if ((vminvq_u32(v13) & 0x80000000) != 0)
    {
      v11 = *a2;
      v11.i32[3] = 0;
      if (a10)
      {
        goto LABEL_4;
      }
    }

    else if (a10)
    {
LABEL_4:
      v14 = vaddq_f32(v11, *a11);
LABEL_14:
      *a11 = v14;
      return result;
    }

    v14 = *result;
    goto LABEL_14;
  }

  a5.i32[0] = 0;
  v15.i64[0] = 0x3400000034000000;
  v15.i64[1] = 0x3400000034000000;
  v16 = vcgeq_f32(v15, vabsq_f32(*result));
  v16.i32[3] = v16.i32[2];
  a7.i32[0] = vminvq_u32(v16);
  v17 = *a2;
  v18 = *a2;
  v18.i32[3] = 0;
  v19 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(a5, a7), 0), v18, *result);
  v20 = vcgeq_f32(v15, vabsq_f32(*a2));
  v20.i32[3] = v20.i32[2];
  if ((vminvq_u32(v20) & 0x80000000) != 0)
  {
    v21 = &v24;
    if (a7.i32[0] >= 0)
    {
      v21 = result;
    }

    v17 = v19;
    v17.i32[3] = 0;
    v24 = v17;
    v19 = *v21;
  }

  v22 = a4;
  v23 = vmlaq_n_f32(v19, vsubq_f32(v17, v19), v22);
  if (a10)
  {
    v23 = vaddq_f32(v23, *a11);
  }

  *a11 = v23;
  return result;
}

void sub_1AF11E6B8(float32x4_t *a1, float32x4_t *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float32x4_t *a8)
{
  v10 = *a1;
  v11 = *a2;
  v12 = a3;
  v13 = vmulq_f32(*a1, *a2);
  v62 = *a2;
  v64 = *a1;
  v14 = 1.0;
  v15 = 1.0 - v12;
  if (vaddv_f32(vadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL))) >= 0.0)
  {
    v36 = vsubq_f32(v10, v11);
    v37 = vmulq_f32(v36, v36);
    v38 = vaddq_f32(v10, v11);
    v39 = vmulq_f32(v38, v38);
    v40 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL)))));
    v41 = v40 + v40;
    v22 = (v40 + v40) == 0.0;
    v42 = 1.0;
    if (!v22)
    {
      v42 = sinf(v41) / v41;
    }

    v43 = v42;
    v44 = vrecpe_f32(LODWORD(v42));
    v45 = vmul_f32(v44, vrecps_f32(LODWORD(v43), v44));
    LODWORD(v46) = vmul_f32(v45, vrecps_f32(LODWORD(v43), v45)).u32[0];
    if ((v15 * v41) != 0.0)
    {
      v60 = v46;
      v45.f32[0] = sinf(v15 * v41);
      v46 = v60;
      v14 = v45.f32[0] / (v15 * v41);
    }

    v45.f32[0] = v15 * (v46 * v14);
    v47 = vdupq_lane_s32(v45, 0);
    v48 = v41 * v12;
    v49 = 1.0;
    if (v48 != 0.0)
    {
      v57 = v47;
      v61 = v46;
      v50 = sinf(v48);
      v47 = v57;
      v46 = v61;
      v49 = v50 / v48;
    }

    v35 = vmlaq_f32(vmulq_n_f32(v62, (v46 * v49) * v12), v64, v47);
  }

  else
  {
    v16 = vaddq_f32(v10, v11);
    v17 = vmulq_f32(v16, v16);
    v18 = vsubq_f32(v10, v11);
    v19 = vmulq_f32(v18, v18);
    v20 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)))));
    v21 = v20 + v20;
    v22 = (v20 + v20) == 0.0;
    v23 = 1.0;
    if (!v22)
    {
      v23 = sinf(v21) / v21;
    }

    v24 = v23;
    v25 = vrecpe_f32(LODWORD(v23));
    v26 = vmul_f32(v25, vrecps_f32(LODWORD(v24), v25));
    LODWORD(v27) = vmul_f32(v26, vrecps_f32(LODWORD(v24), v26)).u32[0];
    if ((v15 * v21) != 0.0)
    {
      v58 = v27;
      v28 = sinf(v15 * v21);
      v27 = v58;
      v14 = v28 / (v15 * v21);
    }

    v29.i32[1] = v62.i32[1];
    v30 = vnegq_f32(v62);
    *v29.i32 = v15 * (v27 * v14);
    v31 = vdupq_lane_s32(v29, 0);
    v32 = v21 * v12;
    v33 = 1.0;
    if (v32 != 0.0)
    {
      v59 = v27;
      v63 = v30;
      v56 = v31;
      v34 = sinf(v32);
      v31 = v56;
      v27 = v59;
      v30 = v63;
      v33 = v34 / v32;
    }

    v35 = vmlaq_f32(vmulq_n_f32(v30, (v27 * v33) * v12), v64, v31);
  }

  v51 = vmulq_f32(v35, v35);
  *v51.i8 = vadd_f32(*v51.i8, *&vextq_s8(v51, v51, 8uLL));
  v52 = vdupq_lane_s32(vadd_f32(*v51.i8, vdup_lane_s32(*v51.i8, 1)), 0);
  v53 = vrsqrteq_f32(v52);
  v54 = vmulq_f32(v53, vrsqrtsq_f32(v52, vmulq_f32(v53, v53)));
  v55 = vbslq_s8(vceqzq_f32(v52), v35, vmulq_f32(vmulq_f32(v54, vrsqrtsq_f32(v52, vmulq_f32(v54, v54))), v35));
  if (a7)
  {
    v55 = vaddq_f32(v55, *a8);
  }

  *a8 = v55;
}

float32x4_t *sub_1AF11E930(float32x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float32x4_t *a7)
{
  v7 = *result;
  if (a6)
  {
    v7 = vaddq_f32(v7, *a7);
  }

  *a7 = v7;
  return result;
}

void sub_1AF11E948(float32x4_t *a1, float32x4_t *a2, int a3, uint64_t a4, uint64_t a5, int a6, float32x4_t *a7, double a8)
{
  if (a3 == 1)
  {
    v8 = *a1;
    if (a6)
    {
      v8 = vaddq_f32(v8, *a7);
    }

    *a7 = v8;
  }

  else
  {
    sub_1AF11E6B8(a1, a2, a8, 0, a4, a5, a6, a7);
  }
}

float32x4_t *sub_1AF11E970(float32x4_t *result, float32x4_t *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float32x4_t *a8)
{
  v8 = a3;
  v9 = vmlaq_n_f32(*result, vsubq_f32(*a2, *result), v8);
  if (a7)
  {
    v9 = vaddq_f32(*a8, v9);
  }

  *a8 = v9;
  return result;
}

float32x4_t sub_1AF11E998(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float32x4_t *a7)
{
  if (a6)
  {
    result = vaddq_f32(*a1, *a7);
    *a7 = result;
  }

  else
  {
    result = *a1;
    *a7 = *a1;
  }

  return result;
}

float32x4_t *sub_1AF11E9BC(float32x4_t *result, float32x4_t *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float32x4_t *a8)
{
  v8 = a3;
  v9 = vmlaq_n_f32(*result, vsubq_f32(*a2, *result), v8);
  if (a7)
  {
    v9 = vaddq_f32(*a8, v9);
  }

  *a8 = v9;
  return result;
}

float32x4_t *sub_1AF11E9E4(float32x4_t *result, float32x4_t *a2, int a3, double a4, uint64_t a5, uint64_t a6, int a7, float32x4_t *a8)
{
  if (a3 == 1)
  {
    if (a7)
    {
      v8 = vaddq_f32(*result, *a8);
    }

    else
    {
      v8 = *result;
    }

    *a8 = v8;
  }

  else
  {
    v9 = a4;
    v10 = vmlaq_n_f32(*result, vsubq_f32(*a2, *result), v9);
    if (a7)
    {
      v10 = vaddq_f32(v10, *a8);
    }

    *a8 = v10;
  }

  return result;
}

float sub_1AF11EA38(float *a1, float *a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float *a8)
{
  if (a7)
  {
    v12[0] = 0;
    v12[1] = 0;
    v9 = a3.n128_f64[0];
    sub_1AF164008(a1, a2, v12, v9);
    return sub_1AF16405C(v12, a8, a8);
  }

  else
  {
    v11 = a3.n128_f64[0];

    return sub_1AF164008(a1, a2, a8, v11);
  }
}

__n128 sub_1AF11EAAC(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, __n128 *a7)
{
  if (a6)
  {
    result.n128_f32[0] = sub_1AF16405C(a1, a7, a7);
  }

  else
  {
    result = *a1;
    *a7 = *a1;
  }

  return result;
}

__n128 sub_1AF11EAC8(__n128 *a1, float *a2, int a3, uint64_t a4, uint64_t a5, int a6, __n128 *a7, __n128 a8)
{
  if (a3 == 1)
  {
    if (a6)
    {
      result.n128_f32[0] = sub_1AF16405C(a1, a7, a7);
    }

    else
    {
      result = *a1;
      *a7 = *a1;
    }
  }

  else
  {
    result.n128_f32[0] = sub_1AF11EA38(a1, a2, a8, 0, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1AF11EAF4(uint64_t result, uint64_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10)
{
  a4.i64[0] = *result;
  a4.i32[2] = *(result + 8);
  a5.i64[0] = *a2;
  a5.i32[2] = *(a2 + 8);
  v10 = *a3.i64;
  v11 = vmlaq_n_f32(a4, vsubq_f32(a5, a4), v10);
  if (a9)
  {
    a3.i64[0] = *a10;
    a3.i32[2] = *(a10 + 8);
    v11 = vaddq_f32(v11, a3);
  }

  *a10 = v11.i64[0];
  *(a10 + 8) = v11.i32[2];
  return result;
}

float *sub_1AF11EB3C(float *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float *a7)
{
  if (a6)
  {
    v7 = a7[1];
    *a7 = *result + *a7;
    a7[1] = result[1] + v7;
    a7[2] = result[2] + a7[2];
  }

  else
  {
    v8 = *result;
    a7[2] = result[2];
    *a7 = v8;
  }

  return result;
}

void sub_1AF11EB84(uint64_t a1, uint64_t a2, double a3, float32x4_t a4, uint64_t a5, int32x2_t *a6, int32x2_t *a7, int a8, uint64_t a9)
{
  a4.i64[0] = *a1;
  a4.i32[2] = *(a1 + 8);
  v22 = a4;
  a4.i64[0] = *a2;
  a4.i32[2] = *(a2 + 8);
  v21 = a4;
  v13 = a3;
  v19 = *a6;
  v20 = *a7;
  v14 = sub_1AF1202A0(v13, COERCE_FLOAT(*a6), COERCE_FLOAT(*a7));
  *v16.f32 = vzip2_s32(v19, a6[1]);
  *&v16.u32[2] = vdup_lane_s32(a6[2], 1);
  *v17.f32 = vzip2_s32(v20, a7[1]);
  *&v17.u32[2] = vdup_lane_s32(a7[2], 1);
  v18 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v16, v14 * (((1.0 - v14) * (1.0 - v14)) * 3.0)), v22, (1.0 - v14) * ((1.0 - v14) * (1.0 - v14))), v21, v14 * (v14 * v14)), v17, (v14 * v14) * ((1.0 - v14) * 3.0));
  if (a8)
  {
    v15.i64[0] = *a9;
    v15.i32[2] = *(a9 + 8);
    v18 = vaddq_f32(v18, v15);
  }

  *a9 = v18.i64[0];
  *(a9 + 8) = v18.i32[2];
}

void sub_1AF11EC7C(float *a1, uint64_t a2, int a3, int32x2_t *a4, int32x2_t *a5, int a6, float *a7, float32x4_t a8, float32x4_t a9, float32x4_t a10)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6)
      {
        v10 = a7[1];
        *a7 = *a1 + *a7;
        a7[1] = a1[1] + v10;
        a7[2] = a1[2] + a7[2];
      }

      else
      {
        v13 = *a1;
        a7[2] = a1[2];
        *a7 = v13;
      }
    }

    else
    {
      sub_1AF11EB84(a1, a2, *a8.i64, a9, 0, a4, a5, a6, a7);
    }
  }

  else
  {
    a9.i64[0] = *a1;
    a9.f32[2] = a1[2];
    a10.i64[0] = *a2;
    a10.i32[2] = *(a2 + 8);
    v11 = *a8.i64;
    v12 = vmlaq_n_f32(a9, vsubq_f32(a10, a9), v11);
    if (a6)
    {
      a8.i64[0] = *a7;
      a8.f32[2] = a7[2];
      v12 = vaddq_f32(v12, a8);
    }

    *a7 = v12.i64[0];
    a7[2] = v12.f32[2];
  }
}

float32x2_t *sub_1AF11ED20(float32x2_t *result, float32x2_t *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float32x2_t *a8)
{
  v8 = a3;
  v9 = vmla_n_f32(*result, vsub_f32(*a2, *result), v8);
  if (a7)
  {
    v9 = vadd_f32(v9, *a8);
  }

  *a8 = v9;
  return result;
}

float32x2_t *sub_1AF11ED48(float32x2_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float32x2_t *a7)
{
  v7 = *result;
  if (a6)
  {
    v7 = vadd_f32(v7, *a7);
  }

  *a7 = v7;
  return result;
}

void sub_1AF11ED60(float32x2_t *a1, float32x2_t *a2, double a3, uint64_t a4, int32x2_t *a5, int32x2_t *a6, int a7, float32x2_t *a8)
{
  v12 = *a1;
  v13 = *a2;
  v14 = a3;
  v18 = *a5;
  v19 = *a6;
  v15 = sub_1AF1202A0(v14, COERCE_FLOAT(*a5), COERCE_FLOAT(*a6));
  v16 = 1.0 - v15;
  v17 = vmla_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(vzip2_s32(v18, a5[1]), v15 * ((v16 * v16) * 3.0)), v12, v16 * (v16 * v16)), v13, v15 * (v15 * v15)), vzip2_s32(v19, a6[1]), (v15 * v15) * ((1.0 - v15) * 3.0));
  if (a7)
  {
    v17 = vadd_f32(v17, *a8);
  }

  *a8 = v17;
}

void sub_1AF11EE20(float32x2_t *a1, float32x2_t *a2, int a3, int32x2_t *a4, int32x2_t *a5, int a6, float32x2_t *a7, double a8)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v8 = *a1;
      if (a6)
      {
        v8 = vadd_f32(v8, *a7);
      }

      *a7 = v8;
    }

    else
    {
      sub_1AF11ED60(a1, a2, a8, 0, a4, a5, a6, a7);
    }
  }

  else
  {
    v9 = a8;
    v10 = vmla_n_f32(*a1, vsub_f32(*a2, *a1), v9);
    if (a6)
    {
      v10 = vadd_f32(v10, *a7);
    }

    *a7 = v10;
  }
}

float32x4_t *sub_1AF11EE74(float32x4_t *result, float32x4_t *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float32x4_t *a8)
{
  v8 = a3;
  v9 = vmlaq_n_f32(vmulq_n_f32(*a2, v8), *result, 1.0 - v8);
  v10 = vmlaq_n_f32(vmulq_n_f32(a2[1], v8), result[1], 1.0 - v8);
  v11 = vmlaq_n_f32(vmulq_n_f32(a2[2], v8), result[2], 1.0 - v8);
  v12 = vmlaq_n_f32(vmulq_n_f32(a2[3], v8), result[3], 1.0 - v8);
  if (a7)
  {
    v13 = 0;
    v14 = *a8;
    v15 = a8[1];
    v16 = a8[2];
    v17 = a8[3];
    v18[2] = v11;
    v18[3] = v12;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    do
    {
      *(&v19 + v13 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v18[v13])), v15, *&v18[v13], 1), v16, v18[v13], 2), v17, v18[v13], 3);
      ++v13;
    }

    while (v13 != 4);
    v9 = v19;
    v10 = v20;
    v11 = v21;
    v12 = v22;
  }

  *a8 = v9;
  a8[1] = v10;
  a8[2] = v11;
  a8[3] = v12;
  return result;
}

float32x4_t sub_1AF11EF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float32x4_t *a7)
{
  if (a6)
  {
    v7 = 0;
    result = *a7;
    v9 = a7[1];
    v10 = a7[2];
    v11 = a7[3];
    v12 = *(a1 + 48);
    v18[2] = *(a1 + 32);
    v18[3] = v12;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    do
    {
      *(&v19 + v7 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(result, COERCE_FLOAT(v18[v7])), v9, *&v18[v7], 1), v10, v18[v7], 2), v11, v18[v7], 3);
      ++v7;
    }

    while (v7 != 4);
    result.i64[0] = v19.i64[0];
    v13 = v20;
    v14 = v21;
    v15 = v22;
    *a7 = v19;
    a7[1] = v13;
    a7[2] = v14;
    a7[3] = v15;
  }

  else
  {
    result = *a1;
    v16 = *(a1 + 16);
    v17 = *(a1 + 48);
    a7[2] = *(a1 + 32);
    a7[3] = v17;
    *a7 = result;
    a7[1] = v16;
  }

  return result;
}

float32x4_t *sub_1AF11EF9C(float32x4_t *result, float32x4_t *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float32x4_t *a8)
{
  v8 = a3;
  v9 = vmlaq_n_f32(vmulq_n_f32(*a2, v8), *result, 1.0 - v8);
  v10 = vmlaq_n_f32(vmulq_n_f32(a2[1], v8), result[1], 1.0 - v8);
  v11 = vmlaq_n_f32(vmulq_n_f32(a2[2], v8), result[2], 1.0 - v8);
  v12 = vmlaq_n_f32(vmulq_n_f32(a2[3], v8), result[3], 1.0 - v8);
  if (a7)
  {
    v13 = 0;
    v14 = *a8;
    v15 = a8[1];
    v16 = a8[2];
    v17 = a8[3];
    v18[2] = v11;
    v18[3] = v12;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    do
    {
      *(&v19 + v13 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v18[v13])), v15, *&v18[v13], 1), v16, v18[v13], 2), v17, v18[v13], 3);
      ++v13;
    }

    while (v13 != 4);
    v9 = v19;
    v10 = v20;
    v11 = v21;
    v12 = v22;
  }

  *a8 = v9;
  a8[1] = v10;
  a8[2] = v11;
  a8[3] = v12;
  return result;
}

void sub_1AF11F040(float32x4_t *a1, float32x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float32x4_t *a7, double a8)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1AF11EF18(a1, a2, 0, a4, a5, a6, a7);
    }

    else
    {
      sub_1AF11EF9C(a1, a2, a8, 0, a4, a5, a6, a7);
    }
  }

  else
  {
    sub_1AF11EE74(a1, a2, a8, a3, a4, a5, a6, a7);
  }
}

void sub_1AF11F060(float32x4_t *a1, double a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float32x4_t *a8)
{
  v9 = a2;
  v173 = v9;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v147 = *a3;
  v148 = *(a3 + 1);
  v149 = *(a3 + 2);
  v150 = *(a3 + 3);
  v165 = *a1;
  v170 = v13;
  v151 = v12;
  v156 = v11;
  if (a7)
  {
    v175 = 0uLL;
    v174[0] = 0uLL;
    v182.i32[2] = 0;
    v182.i64[0] = 0;
    v181.i32[2] = 0;
    v181.i64[0] = 0;
    v180.i32[2] = 0;
    v180.i64[0] = 0;
    v179.i32[2] = 0;
    v179.i64[0] = 0;
    v14 = sub_1AF120324(&v175, &v182, &v180, v10, v11, v12, v13);
    v15 = sub_1AF120324(v174, &v181, &v179, v147, v148, v149, v150);
    if (v14)
    {
      v16 = v165;
      v17 = v170;
      v18 = v151;
      v19 = v156;
      if (v15)
      {
        v20 = vmulq_f32(v175, v174[0]);
        v166 = v174[0];
        v171 = v175;
        v21 = 1.0;
        if (vaddv_f32(vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL))) >= 0.0)
        {
          v73 = 1.0 - v173;
          v74 = vsubq_f32(v175, v174[0]);
          v75 = vmulq_f32(v74, v74);
          v76 = vaddq_f32(v175, v174[0]);
          v77 = vmulq_f32(v76, v76);
          v78 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v75.i8, *&vextq_s8(v75, v75, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v77.i8, *&vextq_s8(v77, v77, 8uLL)))));
          v79 = v78 + v78;
          v29 = (v78 + v78) == 0.0;
          v80 = 1.0;
          if (!v29)
          {
            v80 = sinf(v79) / v79;
          }

          v81 = v80;
          v82 = vrecpe_f32(LODWORD(v80));
          v83 = vmul_f32(v82, vrecps_f32(LODWORD(v81), v82));
          LODWORD(v84) = vmul_f32(v83, vrecps_f32(LODWORD(v81), v83)).u32[0];
          if ((v73 * v79) != 0.0)
          {
            v161 = v84;
            v83.f32[0] = sinf(v73 * v79);
            v84 = v161;
            v21 = v83.f32[0] / (v73 * v79);
          }

          v83.f32[0] = v73 * (v84 * v21);
          v85 = vdupq_lane_s32(v83, 0);
          v39 = v173;
          v86 = v79 * v173;
          v87 = 1.0;
          if (v86 != 0.0)
          {
            v154 = v85;
            v162 = v84;
            v88 = sinf(v86);
            v85 = v154;
            v84 = v162;
            v39 = v173;
            v87 = v88 / v86;
          }

          v43 = vmlaq_f32(vmulq_n_f32(v166, (v84 * v87) * v39), v171, v85);
        }

        else
        {
          v22 = 1.0 - v173;
          v23 = vaddq_f32(v175, v174[0]);
          v24 = vmulq_f32(v23, v23);
          v25 = vsubq_f32(v175, v174[0]);
          v26 = vmulq_f32(v25, v25);
          v27 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)))));
          v28 = v27 + v27;
          v29 = (v27 + v27) == 0.0;
          v30 = 1.0;
          if (!v29)
          {
            v30 = sinf(v28) / v28;
          }

          v31 = v30;
          v32 = vrecpe_f32(LODWORD(v30));
          v33 = vmul_f32(v32, vrecps_f32(LODWORD(v31), v32));
          LODWORD(v34) = vmul_f32(v33, vrecps_f32(LODWORD(v31), v33)).u32[0];
          if ((v22 * v28) != 0.0)
          {
            v157 = v34;
            v35 = sinf(v22 * v28);
            v34 = v157;
            v21 = v35 / (v22 * v28);
          }

          v36.i32[1] = v166.i32[1];
          v37 = vnegq_f32(v166);
          *v36.i32 = v22 * (v34 * v21);
          v38 = vdupq_lane_s32(v36, 0);
          v39 = v173;
          v40 = v28 * v173;
          v41 = 1.0;
          if (v40 != 0.0)
          {
            v158 = v34;
            v167 = v37;
            v152 = v38;
            v42 = sinf(v40);
            v38 = v152;
            v34 = v158;
            v37 = v167;
            v39 = v173;
            v41 = v42 / v40;
          }

          v43 = vmlaq_f32(vmulq_n_f32(v37, (v34 * v41) * v39), v171, v38);
        }

        v89 = vmulq_f32(v43, v43);
        *v89.i8 = vadd_f32(*v89.i8, *&vextq_s8(v89, v89, 8uLL));
        v90 = vdupq_lane_s32(vadd_f32(*v89.i8, vdup_lane_s32(*v89.i8, 1)), 0);
        v91 = vrsqrteq_f32(v90);
        v92 = vmulq_f32(v91, vrsqrtsq_f32(v90, vmulq_f32(v91, v91)));
        v93 = vbslq_s8(vceqzq_f32(v90), v43, vmulq_f32(vmulq_f32(v92, vrsqrtsq_f32(v90, vmulq_f32(v92, v92))), v43));
        v94 = vmlaq_n_f32(v180, vsubq_f32(v179, v180), v39);
        v17 = vmlaq_n_f32(v182, vsubq_f32(v181, v182), v39);
        v17.i32[3] = 1.0;
        v95 = vabsq_f32(v94);
        v95.i32[3] = 0;
        v96.i64[0] = 0x8000000080000000;
        v96.i64[1] = 0x8000000080000000;
        v97 = vorrq_s8(vandq_s8(v94, v96), vabsq_f32(vmaxnmq_f32(v95, xmmword_1AFE20A30)));
        v98 = vmulq_f32(v93, v93);
        v99 = vmulq_laneq_f32(v93, v93, 3);
        v100 = vmuls_lane_f32(v93.f32[0], *v93.f32, 1);
        v101 = vmuls_lane_f32(v93.f32[1], v93, 2);
        v93.f32[0] = vmuls_lane_f32(v93.f32[0], v93, 2);
        v102 = vaddq_f32(v97, v97);
        v103.i32[3] = 0;
        v103.f32[0] = (0.5 - v98.f32[1]) - v98.f32[2];
        v103.f32[1] = v100 + v99.f32[2];
        v103.f32[2] = v93.f32[0] - v99.f32[1];
        v104.i32[3] = 0;
        v98.f32[0] = 0.5 - v98.f32[0];
        v105.i32[3] = 0;
        v105.f32[0] = v100 - v99.f32[2];
        v105.f32[1] = v98.f32[0] - v98.f32[2];
        v105.f32[2] = v101 + v99.f32[0];
        v16 = vmulq_n_f32(v103, v102.f32[0]);
        v19 = vmulq_lane_f32(v105, *v102.f32, 1);
        v104.f32[0] = v93.f32[0] + v99.f32[1];
        v104.f32[1] = v101 - v99.f32[0];
        v104.f32[2] = v98.f32[0] - v98.f32[1];
        v18 = vmulq_laneq_f32(v104, v102, 2);
      }
    }

    else
    {
      v16 = v165;
      v17 = v170;
      v18 = v151;
      v19 = v156;
    }

    v106 = 0;
    v107 = *a8;
    v108 = a8[1];
    v109 = a8[2];
    v110 = a8[3];
    v174[0] = v16;
    v174[1] = v19;
    v174[2] = v18;
    v174[3] = v17;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    do
    {
      *(&v175 + v106 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107, COERCE_FLOAT(*&v174[v106])), v108, *v174[v106].i8, 1), v109, v174[v106], 2), v110, v174[v106], 3);
      ++v106;
    }

    while (v106 != 4);
    v111 = v176;
    v112 = v177;
    v113 = v178;
    *a8 = v175;
    a8[1] = v111;
    a8[2] = v112;
    a8[3] = v113;
  }

  else
  {
    v175 = 0uLL;
    v174[0] = 0uLL;
    v182.i32[2] = 0;
    v182.i64[0] = 0;
    v181.i32[2] = 0;
    v181.i64[0] = 0;
    v180.i32[2] = 0;
    v180.i64[0] = 0;
    v179.i32[2] = 0;
    v179.i64[0] = 0;
    v44 = sub_1AF120324(&v175, &v182, &v180, v10, v11, v12, v13);
    v45 = sub_1AF120324(v174, &v181, &v179, v147, v148, v149, v150);
    if (v44)
    {
      v46 = v165;
      v47 = v170;
      v48 = v151;
      v49 = v156;
      if (v45)
      {
        v50 = vmulq_f32(v175, v174[0]);
        v168 = v174[0];
        v172 = v175;
        v51 = 1.0;
        if (vaddv_f32(vadd_f32(*v50.i8, *&vextq_s8(v50, v50, 8uLL))) >= 0.0)
        {
          v114 = 1.0 - v173;
          v115 = vsubq_f32(v175, v174[0]);
          v116 = vmulq_f32(v115, v115);
          v117 = vaddq_f32(v175, v174[0]);
          v118 = vmulq_f32(v117, v117);
          v119 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v116.i8, *&vextq_s8(v116, v116, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v118.i8, *&vextq_s8(v118, v118, 8uLL)))));
          v120 = v119 + v119;
          v29 = (v119 + v119) == 0.0;
          v121 = 1.0;
          if (!v29)
          {
            v121 = sinf(v120) / v120;
          }

          v122 = v121;
          v123 = vrecpe_f32(LODWORD(v121));
          v124 = vmul_f32(v123, vrecps_f32(LODWORD(v122), v123));
          LODWORD(v125) = vmul_f32(v124, vrecps_f32(LODWORD(v122), v124)).u32[0];
          if ((v114 * v120) != 0.0)
          {
            v163 = v125;
            v124.f32[0] = sinf(v114 * v120);
            v125 = v163;
            v51 = v124.f32[0] / (v114 * v120);
          }

          v124.f32[0] = v114 * (v125 * v51);
          v126 = vdupq_lane_s32(v124, 0);
          v68 = v173;
          v127 = v120 * v173;
          v128 = 1.0;
          if (v127 != 0.0)
          {
            v155 = v126;
            v164 = v125;
            v129 = sinf(v127);
            v126 = v155;
            v125 = v164;
            v68 = v173;
            v128 = v129 / v127;
          }

          v72 = vmlaq_f32(vmulq_n_f32(v168, (v125 * v128) * v68), v172, v126);
        }

        else
        {
          v52 = 1.0 - v173;
          v53 = vaddq_f32(v175, v174[0]);
          v54 = vmulq_f32(v53, v53);
          v55 = vsubq_f32(v175, v174[0]);
          v56 = vmulq_f32(v55, v55);
          v57 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v54.i8, *&vextq_s8(v54, v54, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v56.i8, *&vextq_s8(v56, v56, 8uLL)))));
          v58 = v57 + v57;
          v29 = (v57 + v57) == 0.0;
          v59 = 1.0;
          if (!v29)
          {
            v59 = sinf(v58) / v58;
          }

          v60 = v59;
          v61 = vrecpe_f32(LODWORD(v59));
          v62 = vmul_f32(v61, vrecps_f32(LODWORD(v60), v61));
          LODWORD(v63) = vmul_f32(v62, vrecps_f32(LODWORD(v60), v62)).u32[0];
          if ((v52 * v58) != 0.0)
          {
            v159 = v63;
            v64 = sinf(v52 * v58);
            v63 = v159;
            v51 = v64 / (v52 * v58);
          }

          v65.i32[1] = v168.i32[1];
          v66 = vnegq_f32(v168);
          *v65.i32 = v52 * (v63 * v51);
          v67 = vdupq_lane_s32(v65, 0);
          v68 = v173;
          v69 = v58 * v173;
          v70 = 1.0;
          if (v69 != 0.0)
          {
            v160 = v63;
            v169 = v66;
            v153 = v67;
            v71 = sinf(v69);
            v67 = v153;
            v63 = v160;
            v66 = v169;
            v68 = v173;
            v70 = v71 / v69;
          }

          v72 = vmlaq_f32(vmulq_n_f32(v66, (v63 * v70) * v68), v172, v67);
        }

        v130 = vmulq_f32(v72, v72);
        *v130.i8 = vadd_f32(*v130.i8, *&vextq_s8(v130, v130, 8uLL));
        v131 = vdupq_lane_s32(vadd_f32(*v130.i8, vdup_lane_s32(*v130.i8, 1)), 0);
        v132 = vrsqrteq_f32(v131);
        v133 = vmulq_f32(v132, vrsqrtsq_f32(v131, vmulq_f32(v132, v132)));
        v134 = vbslq_s8(vceqzq_f32(v131), v72, vmulq_f32(vmulq_f32(v133, vrsqrtsq_f32(v131, vmulq_f32(v133, v133))), v72));
        v135 = vmlaq_n_f32(v180, vsubq_f32(v179, v180), v68);
        v47 = vmlaq_n_f32(v182, vsubq_f32(v181, v182), v68);
        v47.i32[3] = 1.0;
        v136 = vabsq_f32(v135);
        v136.i32[3] = 0;
        v137.i64[0] = 0x8000000080000000;
        v137.i64[1] = 0x8000000080000000;
        v138 = vorrq_s8(vandq_s8(v135, v137), vabsq_f32(vmaxnmq_f32(v136, xmmword_1AFE20A30)));
        v139 = vmulq_f32(v134, v134);
        v140 = vmulq_laneq_f32(v134, v134, 3);
        v141 = vmuls_lane_f32(v134.f32[0], *v134.f32, 1);
        v142 = vmuls_lane_f32(v134.f32[1], v134, 2);
        v134.f32[0] = vmuls_lane_f32(v134.f32[0], v134, 2);
        v143 = vaddq_f32(v138, v138);
        v144.i32[3] = 0;
        v144.f32[0] = (0.5 - v139.f32[1]) - v139.f32[2];
        v144.f32[1] = v141 + v140.f32[2];
        v144.f32[2] = v134.f32[0] - v140.f32[1];
        v145.i32[3] = 0;
        v139.f32[0] = 0.5 - v139.f32[0];
        v146.i32[3] = 0;
        v146.f32[0] = v141 - v140.f32[2];
        v146.f32[1] = v139.f32[0] - v139.f32[2];
        v146.f32[2] = v142 + v140.f32[0];
        v46 = vmulq_n_f32(v144, v143.f32[0]);
        v49 = vmulq_lane_f32(v146, *v143.f32, 1);
        v145.f32[0] = v134.f32[0] + v140.f32[1];
        v145.f32[1] = v142 - v140.f32[0];
        v145.f32[2] = v139.f32[0] - v139.f32[1];
        v48 = vmulq_laneq_f32(v145, v143, 2);
      }
    }

    else
    {
      v46 = v165;
      v47 = v170;
      v48 = v151;
      v49 = v156;
    }

    *a8 = v46;
    a8[1] = v49;
    a8[2] = v48;
    a8[3] = v47;
  }
}

float32x4_t sub_1AF11F854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float32x4_t *a7)
{
  if (a6)
  {
    v7 = 0;
    result = *a7;
    v9 = a7[1];
    v10 = a7[2];
    v11 = a7[3];
    v12 = *(a1 + 48);
    v18[2] = *(a1 + 32);
    v18[3] = v12;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    do
    {
      *(&v19 + v7 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(result, COERCE_FLOAT(v18[v7])), v9, *&v18[v7], 1), v10, v18[v7], 2), v11, v18[v7], 3);
      ++v7;
    }

    while (v7 != 4);
    result.i64[0] = v19.i64[0];
    v13 = v20;
    v14 = v21;
    v15 = v22;
    *a7 = v19;
    a7[1] = v13;
    a7[2] = v14;
    a7[3] = v15;
  }

  else
  {
    result = *a1;
    v16 = *(a1 + 16);
    v17 = *(a1 + 48);
    a7[2] = *(a1 + 32);
    a7[3] = v17;
    *a7 = result;
    a7[1] = v16;
  }

  return result;
}

void sub_1AF11F8D8(float32x4_t *a1, double a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float32x4_t *a8)
{
  v9 = a2;
  v173 = v9;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v147 = *a3;
  v148 = *(a3 + 1);
  v149 = *(a3 + 2);
  v150 = *(a3 + 3);
  v165 = *a1;
  v170 = v13;
  v151 = v12;
  v156 = v11;
  if (a7)
  {
    v175 = 0uLL;
    v174[0] = 0uLL;
    v182.i32[2] = 0;
    v182.i64[0] = 0;
    v181.i32[2] = 0;
    v181.i64[0] = 0;
    v180.i32[2] = 0;
    v180.i64[0] = 0;
    v179.i32[2] = 0;
    v179.i64[0] = 0;
    v14 = sub_1AF120324(&v175, &v182, &v180, v10, v11, v12, v13);
    v15 = sub_1AF120324(v174, &v181, &v179, v147, v148, v149, v150);
    if (v14)
    {
      v16 = v165;
      v17 = v170;
      v18 = v151;
      v19 = v156;
      if (v15)
      {
        v20 = vmulq_f32(v175, v174[0]);
        v166 = v174[0];
        v171 = v175;
        v21 = 1.0;
        if (vaddv_f32(vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL))) >= 0.0)
        {
          v73 = 1.0 - v173;
          v74 = vsubq_f32(v175, v174[0]);
          v75 = vmulq_f32(v74, v74);
          v76 = vaddq_f32(v175, v174[0]);
          v77 = vmulq_f32(v76, v76);
          v78 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v75.i8, *&vextq_s8(v75, v75, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v77.i8, *&vextq_s8(v77, v77, 8uLL)))));
          v79 = v78 + v78;
          v29 = (v78 + v78) == 0.0;
          v80 = 1.0;
          if (!v29)
          {
            v80 = sinf(v79) / v79;
          }

          v81 = v80;
          v82 = vrecpe_f32(LODWORD(v80));
          v83 = vmul_f32(v82, vrecps_f32(LODWORD(v81), v82));
          LODWORD(v84) = vmul_f32(v83, vrecps_f32(LODWORD(v81), v83)).u32[0];
          if ((v73 * v79) != 0.0)
          {
            v161 = v84;
            v83.f32[0] = sinf(v73 * v79);
            v84 = v161;
            v21 = v83.f32[0] / (v73 * v79);
          }

          v83.f32[0] = v73 * (v84 * v21);
          v85 = vdupq_lane_s32(v83, 0);
          v39 = v173;
          v86 = v79 * v173;
          v87 = 1.0;
          if (v86 != 0.0)
          {
            v154 = v85;
            v162 = v84;
            v88 = sinf(v86);
            v85 = v154;
            v84 = v162;
            v39 = v173;
            v87 = v88 / v86;
          }

          v43 = vmlaq_f32(vmulq_n_f32(v166, (v84 * v87) * v39), v171, v85);
        }

        else
        {
          v22 = 1.0 - v173;
          v23 = vaddq_f32(v175, v174[0]);
          v24 = vmulq_f32(v23, v23);
          v25 = vsubq_f32(v175, v174[0]);
          v26 = vmulq_f32(v25, v25);
          v27 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)))));
          v28 = v27 + v27;
          v29 = (v27 + v27) == 0.0;
          v30 = 1.0;
          if (!v29)
          {
            v30 = sinf(v28) / v28;
          }

          v31 = v30;
          v32 = vrecpe_f32(LODWORD(v30));
          v33 = vmul_f32(v32, vrecps_f32(LODWORD(v31), v32));
          LODWORD(v34) = vmul_f32(v33, vrecps_f32(LODWORD(v31), v33)).u32[0];
          if ((v22 * v28) != 0.0)
          {
            v157 = v34;
            v35 = sinf(v22 * v28);
            v34 = v157;
            v21 = v35 / (v22 * v28);
          }

          v36.i32[1] = v166.i32[1];
          v37 = vnegq_f32(v166);
          *v36.i32 = v22 * (v34 * v21);
          v38 = vdupq_lane_s32(v36, 0);
          v39 = v173;
          v40 = v28 * v173;
          v41 = 1.0;
          if (v40 != 0.0)
          {
            v158 = v34;
            v167 = v37;
            v152 = v38;
            v42 = sinf(v40);
            v38 = v152;
            v34 = v158;
            v37 = v167;
            v39 = v173;
            v41 = v42 / v40;
          }

          v43 = vmlaq_f32(vmulq_n_f32(v37, (v34 * v41) * v39), v171, v38);
        }

        v89 = vmulq_f32(v43, v43);
        *v89.i8 = vadd_f32(*v89.i8, *&vextq_s8(v89, v89, 8uLL));
        v90 = vdupq_lane_s32(vadd_f32(*v89.i8, vdup_lane_s32(*v89.i8, 1)), 0);
        v91 = vrsqrteq_f32(v90);
        v92 = vmulq_f32(v91, vrsqrtsq_f32(v90, vmulq_f32(v91, v91)));
        v93 = vbslq_s8(vceqzq_f32(v90), v43, vmulq_f32(vmulq_f32(v92, vrsqrtsq_f32(v90, vmulq_f32(v92, v92))), v43));
        v94 = vmlaq_n_f32(v180, vsubq_f32(v179, v180), v39);
        v17 = vmlaq_n_f32(v182, vsubq_f32(v181, v182), v39);
        v17.i32[3] = 1.0;
        v95 = vabsq_f32(v94);
        v95.i32[3] = 0;
        v96.i64[0] = 0x8000000080000000;
        v96.i64[1] = 0x8000000080000000;
        v97 = vorrq_s8(vandq_s8(v94, v96), vabsq_f32(vmaxnmq_f32(v95, xmmword_1AFE20A30)));
        v98 = vmulq_f32(v93, v93);
        v99 = vmulq_laneq_f32(v93, v93, 3);
        v100 = vmuls_lane_f32(v93.f32[0], *v93.f32, 1);
        v101 = vmuls_lane_f32(v93.f32[1], v93, 2);
        v93.f32[0] = vmuls_lane_f32(v93.f32[0], v93, 2);
        v102 = vaddq_f32(v97, v97);
        v103.i32[3] = 0;
        v103.f32[0] = (0.5 - v98.f32[1]) - v98.f32[2];
        v103.f32[1] = v100 + v99.f32[2];
        v103.f32[2] = v93.f32[0] - v99.f32[1];
        v104.i32[3] = 0;
        v98.f32[0] = 0.5 - v98.f32[0];
        v105.i32[3] = 0;
        v105.f32[0] = v100 - v99.f32[2];
        v105.f32[1] = v98.f32[0] - v98.f32[2];
        v105.f32[2] = v101 + v99.f32[0];
        v16 = vmulq_n_f32(v103, v102.f32[0]);
        v19 = vmulq_lane_f32(v105, *v102.f32, 1);
        v104.f32[0] = v93.f32[0] + v99.f32[1];
        v104.f32[1] = v101 - v99.f32[0];
        v104.f32[2] = v98.f32[0] - v98.f32[1];
        v18 = vmulq_laneq_f32(v104, v102, 2);
      }
    }

    else
    {
      v16 = v165;
      v17 = v170;
      v18 = v151;
      v19 = v156;
    }

    v106 = 0;
    v107 = *a8;
    v108 = a8[1];
    v109 = a8[2];
    v110 = a8[3];
    v174[0] = v16;
    v174[1] = v19;
    v174[2] = v18;
    v174[3] = v17;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    do
    {
      *(&v175 + v106 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107, COERCE_FLOAT(*&v174[v106])), v108, *v174[v106].i8, 1), v109, v174[v106], 2), v110, v174[v106], 3);
      ++v106;
    }

    while (v106 != 4);
    v111 = v176;
    v112 = v177;
    v113 = v178;
    *a8 = v175;
    a8[1] = v111;
    a8[2] = v112;
    a8[3] = v113;
  }

  else
  {
    v175 = 0uLL;
    v174[0] = 0uLL;
    v182.i32[2] = 0;
    v182.i64[0] = 0;
    v181.i32[2] = 0;
    v181.i64[0] = 0;
    v180.i32[2] = 0;
    v180.i64[0] = 0;
    v179.i32[2] = 0;
    v179.i64[0] = 0;
    v44 = sub_1AF120324(&v175, &v182, &v180, v10, v11, v12, v13);
    v45 = sub_1AF120324(v174, &v181, &v179, v147, v148, v149, v150);
    if (v44)
    {
      v46 = v165;
      v47 = v170;
      v48 = v151;
      v49 = v156;
      if (v45)
      {
        v50 = vmulq_f32(v175, v174[0]);
        v168 = v174[0];
        v172 = v175;
        v51 = 1.0;
        if (vaddv_f32(vadd_f32(*v50.i8, *&vextq_s8(v50, v50, 8uLL))) >= 0.0)
        {
          v114 = 1.0 - v173;
          v115 = vsubq_f32(v175, v174[0]);
          v116 = vmulq_f32(v115, v115);
          v117 = vaddq_f32(v175, v174[0]);
          v118 = vmulq_f32(v117, v117);
          v119 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v116.i8, *&vextq_s8(v116, v116, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v118.i8, *&vextq_s8(v118, v118, 8uLL)))));
          v120 = v119 + v119;
          v29 = (v119 + v119) == 0.0;
          v121 = 1.0;
          if (!v29)
          {
            v121 = sinf(v120) / v120;
          }

          v122 = v121;
          v123 = vrecpe_f32(LODWORD(v121));
          v124 = vmul_f32(v123, vrecps_f32(LODWORD(v122), v123));
          LODWORD(v125) = vmul_f32(v124, vrecps_f32(LODWORD(v122), v124)).u32[0];
          if ((v114 * v120) != 0.0)
          {
            v163 = v125;
            v124.f32[0] = sinf(v114 * v120);
            v125 = v163;
            v51 = v124.f32[0] / (v114 * v120);
          }

          v124.f32[0] = v114 * (v125 * v51);
          v126 = vdupq_lane_s32(v124, 0);
          v68 = v173;
          v127 = v120 * v173;
          v128 = 1.0;
          if (v127 != 0.0)
          {
            v155 = v126;
            v164 = v125;
            v129 = sinf(v127);
            v126 = v155;
            v125 = v164;
            v68 = v173;
            v128 = v129 / v127;
          }

          v72 = vmlaq_f32(vmulq_n_f32(v168, (v125 * v128) * v68), v172, v126);
        }

        else
        {
          v52 = 1.0 - v173;
          v53 = vaddq_f32(v175, v174[0]);
          v54 = vmulq_f32(v53, v53);
          v55 = vsubq_f32(v175, v174[0]);
          v56 = vmulq_f32(v55, v55);
          v57 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v54.i8, *&vextq_s8(v54, v54, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v56.i8, *&vextq_s8(v56, v56, 8uLL)))));
          v58 = v57 + v57;
          v29 = (v57 + v57) == 0.0;
          v59 = 1.0;
          if (!v29)
          {
            v59 = sinf(v58) / v58;
          }

          v60 = v59;
          v61 = vrecpe_f32(LODWORD(v59));
          v62 = vmul_f32(v61, vrecps_f32(LODWORD(v60), v61));
          LODWORD(v63) = vmul_f32(v62, vrecps_f32(LODWORD(v60), v62)).u32[0];
          if ((v52 * v58) != 0.0)
          {
            v159 = v63;
            v64 = sinf(v52 * v58);
            v63 = v159;
            v51 = v64 / (v52 * v58);
          }

          v65.i32[1] = v168.i32[1];
          v66 = vnegq_f32(v168);
          *v65.i32 = v52 * (v63 * v51);
          v67 = vdupq_lane_s32(v65, 0);
          v68 = v173;
          v69 = v58 * v173;
          v70 = 1.0;
          if (v69 != 0.0)
          {
            v160 = v63;
            v169 = v66;
            v153 = v67;
            v71 = sinf(v69);
            v67 = v153;
            v63 = v160;
            v66 = v169;
            v68 = v173;
            v70 = v71 / v69;
          }

          v72 = vmlaq_f32(vmulq_n_f32(v66, (v63 * v70) * v68), v172, v67);
        }

        v130 = vmulq_f32(v72, v72);
        *v130.i8 = vadd_f32(*v130.i8, *&vextq_s8(v130, v130, 8uLL));
        v131 = vdupq_lane_s32(vadd_f32(*v130.i8, vdup_lane_s32(*v130.i8, 1)), 0);
        v132 = vrsqrteq_f32(v131);
        v133 = vmulq_f32(v132, vrsqrtsq_f32(v131, vmulq_f32(v132, v132)));
        v134 = vbslq_s8(vceqzq_f32(v131), v72, vmulq_f32(vmulq_f32(v133, vrsqrtsq_f32(v131, vmulq_f32(v133, v133))), v72));
        v135 = vmlaq_n_f32(v180, vsubq_f32(v179, v180), v68);
        v47 = vmlaq_n_f32(v182, vsubq_f32(v181, v182), v68);
        v47.i32[3] = 1.0;
        v136 = vabsq_f32(v135);
        v136.i32[3] = 0;
        v137.i64[0] = 0x8000000080000000;
        v137.i64[1] = 0x8000000080000000;
        v138 = vorrq_s8(vandq_s8(v135, v137), vabsq_f32(vmaxnmq_f32(v136, xmmword_1AFE20A30)));
        v139 = vmulq_f32(v134, v134);
        v140 = vmulq_laneq_f32(v134, v134, 3);
        v141 = vmuls_lane_f32(v134.f32[0], *v134.f32, 1);
        v142 = vmuls_lane_f32(v134.f32[1], v134, 2);
        v134.f32[0] = vmuls_lane_f32(v134.f32[0], v134, 2);
        v143 = vaddq_f32(v138, v138);
        v144.i32[3] = 0;
        v144.f32[0] = (0.5 - v139.f32[1]) - v139.f32[2];
        v144.f32[1] = v141 + v140.f32[2];
        v144.f32[2] = v134.f32[0] - v140.f32[1];
        v145.i32[3] = 0;
        v139.f32[0] = 0.5 - v139.f32[0];
        v146.i32[3] = 0;
        v146.f32[0] = v141 - v140.f32[2];
        v146.f32[1] = v139.f32[0] - v139.f32[2];
        v146.f32[2] = v142 + v140.f32[0];
        v46 = vmulq_n_f32(v144, v143.f32[0]);
        v49 = vmulq_lane_f32(v146, *v143.f32, 1);
        v145.f32[0] = v134.f32[0] + v140.f32[1];
        v145.f32[1] = v142 - v140.f32[0];
        v145.f32[2] = v139.f32[0] - v139.f32[1];
        v48 = vmulq_laneq_f32(v145, v143, 2);
      }
    }

    else
    {
      v46 = v165;
      v47 = v170;
      v48 = v151;
      v49 = v156;
    }

    *a8 = v46;
    a8[1] = v49;
    a8[2] = v48;
    a8[3] = v47;
  }
}

void sub_1AF1200CC(float32x4_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float32x4_t *a7, double a8)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1AF11F854(a1, a2, 0, a4, a5, a6, a7);
    }

    else
    {
      sub_1AF11F8D8(a1, a8, a2, 0, a4, a5, a6, a7);
    }
  }

  else
  {
    sub_1AF11F060(a1, a8, a2, a3, a4, a5, a6, a7);
  }
}

_BYTE *sub_1AF1200EC(_BYTE *result, _BYTE *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  if (a3 < 1.0)
  {
    a2 = result;
  }

  *a8 = *a2;
  return result;
}

unsigned __int8 *sub_1AF120104(unsigned __int8 *result, unsigned __int8 *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, _BYTE *a8)
{
  v8 = *result;
  v9 = v8;
  v10 = v8 + (*a2 - v8) * a3;
  if (a7)
  {
    LOBYTE(v9) = *a8;
    v10 = v10 + *&v9;
  }

  *a8 = v10;
  return result;
}

char *sub_1AF120138(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, _BYTE *a7)
{
  v7 = *result;
  if (a6)
  {
    v7 += *a7;
  }

  *a7 = v7;
  return result;
}

void sub_1AF120150(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, int a7, _BYTE *a8)
{
  v10 = a1;
  v19 = HIDWORD(*a6);
  v11 = sub_1AF1202A0(v10, COERCE_FLOAT(*a5), COERCE_FLOAT(*a6));
  _S1 = (v11 * v11) * ((1.0 - v11) * 3.0);
  _V2.S[1] = v19;
  __asm { FMLA            S0, S1, V2.S[1] }

  if (a7)
  {
    LOBYTE(_S1) = *a8;
    _S0 = _S0 + LODWORD(_S1);
  }

  *a8 = _S0;
}

void sub_1AF120204(_BYTE *a1, unsigned __int8 *a2, int a3, void *a4, void *a5, int a6, _BYTE *a7, double a8)
{
  if (!a3)
  {
    v9 = *a1;
    v10 = v9;
    v11 = v9 + (*a2 - v9) * a8;
    if (a6)
    {
      LOBYTE(v10) = *a7;
      v11 = v11 + *&v10;
    }

    v8 = v11;
    goto LABEL_8;
  }

  if (a3 == 1)
  {
    LOBYTE(v8) = *a1;
    if (a6)
    {
      LOBYTE(v8) = *a7 + v8;
    }

LABEL_8:
    *a7 = v8;
    return;
  }

  sub_1AF120150(a8, a1, a2, 0, a4, a5, a6, a7);
}

uint64_t sub_1AF120260(void (*a1)(float32x4_t *a1, float32x4_t *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float32x4_t *a8))
{
  if (a1 == sub_1AF11E6B8 || a1 == sub_1AF11E948 || a1 == sub_1AF11E930)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

float sub_1AF1202A0(float a1, float a2, float a3)
{
  v3 = a3 + 1.0;
  v4 = 0.0;
  v5 = 20;
  v6 = 1.0;
  v7 = 0.5;
  do
  {
    v8 = ((v7 * (v7 * v7)) + (a2 * (v7 * (((1.0 - v7) * (1.0 - v7)) * 3.0)))) + (v3 * ((v7 * v7) * ((1.0 - v7) * 3.0)));
    if (vabds_f32(v8, a1) < 0.00001)
    {
      break;
    }

    if (v8 < a1)
    {
      v4 = v7;
    }

    else
    {
      v6 = v7;
    }

    v7 = (v4 + v6) * 0.5;
    --v5;
  }

  while (v5);
  return v7;
}

BOOL sub_1AF120324(int8x16_t *a1, __n128 *a2, float32x4_t *a3, float32x4_t a4, float32x4_t a5, int32x4_t a6, __n128 a7)
{
  if (a3)
  {
    v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a6, a6), a6, 0xCuLL), vnegq_f32(a5)), a6, vextq_s8(vuzp1q_s32(a5, a5), a5, 0xCuLL));
    v8 = vmulq_f32(a4, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
    v63 = (v8.f32[2] + vaddv_f32(*v8.f32)) < 0.0;
    v9 = 1.0;
    if (v63)
    {
      v9 = -1.0;
    }

    v10 = vmulq_f32(a4, a4);
    v11 = vmulq_f32(a5, a5);
    v12 = vadd_f32(vzip1_s32(*v10.i8, *v11.i8), vzip2_s32(*v10.i8, *v11.i8));
    v13 = vextq_s8(v10, v10, 8uLL);
    *v13.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v13.f32, *&vextq_s8(v11, v11, 8uLL)), v12));
    v14 = vmulq_f32(a6, a6);
    v13.i32[2] = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
    v15 = vmulq_n_f32(v13, v9);
    v16 = vcltzq_f32(v15);
    v17 = vmvnq_s8(vorrq_s8(v16, vcgezq_f32(v15)));
    v17.i32[3] = v17.i32[2];
    v17.i32[0] = vmaxvq_u32(v17);
    v16.i32[0] = -1;
    v18 = v17.i32[0] >= 0;
    *a3 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v17, v16), 0), v15, 0);
    if (a2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v18 = 1;
    if (a2)
    {
LABEL_5:
      *a2 = a7;
    }
  }

  if (a1)
  {
    if (a3)
    {
      v19 = *a3;
    }

    else
    {
      v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a6, a6), a6, 0xCuLL), vnegq_f32(a5)), a6, vextq_s8(vuzp1q_s32(a5, a5), a5, 0xCuLL));
      v21 = vmulq_f32(a4, vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL));
      v63 = (v21.f32[2] + vaddv_f32(*v21.f32)) < 0.0;
      v22 = 1.0;
      if (v63)
      {
        v22 = -1.0;
      }

      v23 = vmulq_f32(a4, a4);
      v24 = vmulq_f32(a5, a5);
      v25 = vadd_f32(vzip1_s32(*v23.i8, *v24.i8), vzip2_s32(*v23.i8, *v24.i8));
      v26 = vextq_s8(v23, v23, 8uLL);
      *v26.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v26.f32, *&vextq_s8(v24, v24, 8uLL)), v25));
      v27 = vmulq_f32(a6, a6);
      v26.i32[2] = sqrtf(v27.f32[2] + vaddv_f32(*v27.f32));
      v28 = vmulq_n_f32(v26, v22);
      v29 = vcltzq_f32(v28);
      v30 = vmvnq_s8(vorrq_s8(v29, vcgezq_f32(v28)));
      v30.i32[3] = v30.i32[2];
      v30.i32[0] = vmaxvq_u32(v30);
      v29.i32[0] = -1;
      v19 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v30, v29), 0), v28, 0);
      LOBYTE(v18) = v30.i32[0] >= 0 && v18;
    }

    v31 = vceqzq_f32(v19);
    v31.i32[3] = v31.i32[2];
    if ((vmaxvq_u32(v31) & 0x80000000) == 0)
    {
      v32 = vdivq_f32(a4, vdupq_lane_s32(*v19.f32, 0));
      v33 = vdivq_f32(a5, vdupq_lane_s32(*v19.f32, 1));
      v34 = vdivq_f32(a6, vdupq_laneq_s32(v19, 2));
      v35 = vmulq_f32(v32, v32);
      v36 = vmulq_f32(v33, v33);
      v37 = vmulq_f32(v34, v34);
      v38 = vzip2q_s32(v35, v37);
      v39 = vzip1q_s32(vzip1q_s32(v35, v37), v36);
      v40 = vtrn2q_s32(v35, v36);
      v40.i32[2] = v37.i32[1];
      v41 = vaddq_f32(vzip1q_s32(v38, vdupq_laneq_s32(v36, 2)), vaddq_f32(v39, v40));
      v40.i64[0] = 0x80000000800000;
      v40.i64[1] = 0x80000000800000;
      v42 = vcgeq_f32(v40, v41);
      v41.i32[3] = 0;
      v43 = vrsqrteq_f32(v41);
      v44 = vmulq_f32(v43, vrsqrtsq_f32(v41, vmulq_f32(v43, v43)));
      v45 = v42;
      v45.i32[3] = 0;
      v46 = vbslq_s8(vcltzq_s32(v45), v41, vmulq_f32(v44, vrsqrtsq_f32(v41, vmulq_f32(v44, v44))));
      v47 = vmulq_n_f32(v32, v46.f32[0]);
      v48 = vmulq_lane_f32(v33, *v46.f32, 1);
      v49 = vmulq_laneq_f32(v34, v46, 2);
      v50 = vuzp1q_s32(v49, v49);
      v51 = vuzp1q_s32(v48, v48);
      v52 = v47;
      if (v42.i32[0])
      {
        v53 = vmlaq_f32(vmulq_f32(vextq_s8(v50, v49, 0xCuLL), vnegq_f32(v48)), v49, vextq_s8(v51, v48, 0xCuLL));
        v52 = vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL);
      }

      v54 = vuzp1q_s32(v47, v47);
      v55 = v48;
      if (v42.i32[1])
      {
        v56 = vmlaq_f32(vmulq_f32(vextq_s8(v54, v47, 0xCuLL), vnegq_f32(v49)), v47, vextq_s8(v50, v49, 0xCuLL));
        v55 = vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL);
      }

      if (v42.i32[2])
      {
        v57 = vmlaq_f32(vmulq_f32(vextq_s8(v51, v48, 0xCuLL), vnegq_f32(v47)), v48, vextq_s8(v54, v47, 0xCuLL));
        v49 = vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL);
      }

      v58 = (*v52.i32 + *&v55.i32[1]) + v49.f32[2];
      if (v58 > 0.0)
      {
        v59 = sqrtf(v58 + 1.0);
        *v60.f32 = vsub_f32(*&vzip2q_s32(v55, vuzp1q_s32(v55, v49)), *&vtrn2q_s32(v49, vzip2q_s32(v49, v52)));
        v60.f32[2] = *&v52.i32[1] - *v55.i32;
        v60.f32[3] = v59 * v59;
        v61 = 0.5 / v59;
LABEL_23:
        v62 = vmulq_n_f32(v60, v61);
LABEL_34:
        v69 = vmvnq_s8(vceqq_f32(v62, v62));
        v69.i32[0] = vmaxvq_u32(v69);
        v55.i32[0] = -1;
        *a1 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v69, v55), 0), v62, xmmword_1AFE201A0);
        return v69.i32[0] >= 0 && v18;
      }

      v63 = *v52.i32 < *&v55.i32[1] || *v52.i32 < v49.f32[2];
      if (v63)
      {
        if (*&v55.i32[1] <= v49.f32[2])
        {
          v71 = vzip2q_s32(v52, v55).u64[0];
          v72 = __PAIR64__(v52.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v49.f32[2] + 1.0) - *v52.i32) - *&v55.i32[1])));
          v73 = vdup_lane_s32(*v55.i8, 0);
          v74 = vsub_f32(*v52.i8, v73);
          v73.i32[0] = v72.i32[0];
          v55.i32[0] = vmul_f32(v72, v73).u32[0];
          v55.i32[1] = v74.i32[1];
          *v60.f32 = vadd_f32(v71, *v49.f32);
          v60.i64[1] = v55.i64[0];
          v61 = 0.5 / v72.f32[0];
          goto LABEL_23;
        }

        v65 = sqrtf(((*&v55.i32[1] + 1.0) - *v52.i32) - v49.f32[2]);
        v68.f32[0] = *&v52.i32[1] + *v55.i32;
        v64 = vzip2q_s32(v52, v55).u64[0];
        *v55.i8 = vadd_f32(*v49.f32, v64);
        v68.f32[1] = v65 * v65;
        *&v68.u32[2] = vext_s8(*v55.i8, vsub_f32(*v49.f32, v64), 4uLL);
      }

      else
      {
        v65 = sqrtf(((*v52.i32 + 1.0) - *&v55.i32[1]) - v49.f32[2]);
        v68.f32[0] = v65 * v65;
        v66 = *&v52.i32[1] + *v55.i32;
        v67 = vzip2q_s32(v52, v55).u64[0];
        v55.i32[0] = vadd_f32(v67, *v49.f32).u32[0];
        v55.i32[1] = vsub_f32(v67, *&v49).i32[1];
        v68.f32[1] = v66;
        v68.i64[1] = v55.i64[0];
      }

      v62 = vmulq_n_f32(v68, 0.5 / v65);
      goto LABEL_34;
    }

    *a1 = xmmword_1AFE201A0;
    v18 = 0;
    if (a3)
    {
      *a3 = 0u;
    }
  }

  return v18;
}

double sub_1AF120798(float *a1, double a2, float a3)
{
  v4 = a3 * a2;
  v5 = a1[6];
  if (v5 >= 1.0)
  {
    v6 = a1[9] * v4 + 1.0;
    v8 = exp(-(v4 * a1[7]));
  }

  else
  {
    v6 = exp(-(v4 * v5) * a1[7]);
    v7 = __sincos_stret(v4 * a1[8]);
    v8 = v7.__cosval + a1[9] * v7.__sinval;
  }

  return 1.0 - v6 * v8;
}

double sub_1AF120840(float *a1, double a2)
{
  v2 = a1[1];
  v3 = *a1 * 3.0;
  v4 = -(v3 - (a1[2] - *a1) * 3.0);
  v5 = 1.0 - v3 - v4;
  v6 = 8;
  v7 = a2;
  do
  {
    v8 = v7 * (v3 + (v5 * v7 - (v3 - (a1[2] - *a1) * 3.0)) * v7);
    if (vabdd_f64(v8, a2) < 0.001)
    {
      goto LABEL_13;
    }

    v9 = v3 + (v4 + v4 + v5 * 3.0 * v7) * v7;
    if (fabs(v9) < 0.000001)
    {
      break;
    }

    v7 = v7 - (v8 - a2) / v9;
    --v6;
  }

  while (v6);
  v10 = 0.0;
  if (a2 >= 0.0)
  {
    v10 = 1.0;
    v11 = 1.0;
    if (a2 <= 1.0)
    {
      v12 = 0.0;
      v7 = a2;
      do
      {
        v13 = v7 * (v3 + (v5 * v7 - (v3 - (a1[2] - *a1) * 3.0)) * v7);
        if (vabdd_f64(v13, a2) < 0.001)
        {
          break;
        }

        if (v13 >= a2)
        {
          v11 = v7;
        }

        else
        {
          v12 = v7;
        }

        v7 = v12 + (v11 - v12) * 0.5;
      }

      while (v12 < v11);
LABEL_13:
      v10 = v7;
    }
  }

  v14 = v2 * 3.0;
  v15 = -(v14 - (a1[3] - v2) * 3.0);
  return (v14 + (v15 + (1.0 - v14 - v15) * v10) * v10) * v10;
}

uint64_t sub_1AF12096C()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED737C50 = result;
  return result;
}

__n128 sub_1AF120994(__CFString *a1)
{
  if (qword_1ED737C58 != -1)
  {
    sub_1AFDD2178();
  }

  v2 = sub_1AF0D160C(qword_1ED737C50, 0x20uLL);
  *(v2 + 16) = sub_1AF120964;
  if (@"default" == a1)
  {
    v4 = &xmmword_1AFE20B10;
  }

  else if (@"easeIn" == a1)
  {
    v4 = &xmmword_1AFE20B30;
  }

  else if (@"easeOut" == a1)
  {
    v4 = &xmmword_1AFE20B40;
  }

  else
  {
    if (@"easeInEaseOut" != a1)
    {
      *(v2 + 16) = nullsub_44;
      return result;
    }

    v4 = &xmmword_1AFE20B50;
  }

  result = *v4;
  *(v2 + 24) = *v4;
  return result;
}

uint64_t sub_1AF120A84(float a1, float a2, float a3, float a4, float a5)
{
  if (qword_1ED737C58 != -1)
  {
    sub_1AFDD2178();
  }

  result = sub_1AF0D160C(qword_1ED737C50, 0x20uLL);
  *(result + 24) = a1;
  *(result + 28) = a2;
  *(result + 32) = a3;
  *(result + 36) = a4;
  *(result + 40) = a5;
  *(result + 16) = sub_1AF120798;
  return result;
}

uint64_t sub_1AF120B08(float a1, float a2, float a3, float a4)
{
  if (qword_1ED737C58 != -1)
  {
    sub_1AFDD2178();
  }

  result = sub_1AF0D160C(qword_1ED737C50, 0x20uLL);
  v9 = sqrtf(a2 / a1);
  v10 = sqrtf(a1 * a2);
  v11 = a3 / (v10 + v10);
  if (v11 >= 1.0)
  {
    v14 = v9 - a4;
    v13 = 0.0;
  }

  else
  {
    v12 = sqrtf(1.0 - (v11 * v11));
    v13 = v9 * v12;
    v14 = -(a4 - (v11 * v9)) / (v9 * v12);
  }

  *(result + 24) = v11;
  *(result + 28) = v9;
  *(result + 32) = v13;
  *(result + 36) = v14;
  *(result + 40) = a1;
  *(result + 16) = sub_1AF120798;
  return result;
}

float sub_1AF120BE0(float *a1, float *a2, float *a3, float *a4, float *a5)
{
  v5 = a1[10];
  v6 = a1[6];
  v7 = a1[7];
  if (v6 >= 1.0)
  {
    v8 = v7 - a1[9];
  }

  else
  {
    v8 = (v6 * v7) - (a1[9] * a1[8]);
  }

  v9 = v7 * (v5 * v7);
  v10 = v5 * v9;
  if ((v5 * v9) < 0.0)
  {
    v10 = 0.0;
  }

  *a2 = v5;
  *a3 = v9;
  result = (v6 + v6) * sqrtf(v10);
  *a4 = result;
  *a5 = v8;
  return result;
}

void sub_1AF120C44()
{
  if (!qword_1ED731B10)
  {
    sub_1AF120994(@"default");
    qword_1ED731B10 = v0;
  }
}

uint64_t sub_1AF120C80(float a1, float a2, float a3, float a4)
{
  if (qword_1ED737C58 != -1)
  {
    sub_1AFDD2178();
  }

  result = sub_1AF0D160C(qword_1ED737C50, 0x20uLL);
  *(result + 24) = a1;
  *(result + 28) = a2;
  *(result + 32) = a3;
  *(result + 36) = a4;
  *(result + 16) = sub_1AF120964;
  return result;
}

uint64_t sub_1AF120CF4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD218C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1 + 24;
}

BOOL sub_1AF120D3C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD218C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16) == nullsub_44;
}

uint64_t sub_1AF120D98(uint64_t a1, uint64_t a2, double a3, float a4)
{
  if (!a1)
  {
    v7 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD218C(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  return (*(a1 + 16))(a1, a2, a3, a4);
}

void sub_1AF120E18(uint64_t a1)
{
  sub_1AF1216F8((a1 + 88));
  v2 = *(a1 + 48);
}

uint64_t CFXBufferAllocatorPerFrameAlignedSize(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2204(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return (a2 + *(a1 + 32) - 1) & -*(a1 + 32);
}

int32x2_t CFXBufferAllocatorPerFrameAllocateWithLength(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2204(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 32);
  v13 = (a2 + v12 - 1) & -v12;
  v14 = (*(a1 + 96) + 32 * *(a1 + 56));
  *(a1 + 64) += v13;
  v15 = *(v14 + 3);
  if (v15)
  {
    v16 = (v12 + *(v15 + 16) - 1) & -v12;
  }

  else
  {
    v16 = 0;
  }

  v17 = (v13 - 1) | ((v13 - 1) >> 1) | (((v13 - 1) | ((v13 - 1) >> 1)) >> 2);
  v18 = v17 | (v17 >> 4) | ((v17 | (v17 >> 4)) >> 8);
  v19 = v18 | (v18 >> 16);
  if (v19 + 1 < ((v13 + 0xFFFF) & 0xFFFFFFFFFFFF0000))
  {
    v20 = v19 + 1;
  }

  else
  {
    v20 = (v13 + 0xFFFF) & 0xFFFFFFFFFFFF0000;
  }

  if (!v15)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v21 = v16 + v13;
    if (v16 + v13 <= *(v15 + 8))
    {
      break;
    }

    do
    {
LABEL_13:
      v22 = v14[4];
      if (v22 >= *v14)
      {
        v23 = (*(a1 + 72) + 0xFFFFLL) & 0xFFFFFFFFFFFF0000;
        if (v23 < v13)
        {
          v23 = v20;
        }

        if (v23 <= *(a1 + 40))
        {
          v24 = *(a1 + 40);
        }

        else
        {
          v24 = v23;
        }

        Buffer = CFXGPUDeviceCreateBuffer(*(a1 + 16), v24, *(a1 + 24));
        ++*(a1 + 80);
        v26 = Buffer;
        v31[0] = v26;
        v31[1] = objc_msgSend_length(v26, v27, v28);
        v31[2] = 0;
        v31[3] = 0;
        v32 = 0;
        sub_1AF1210C8(v14, v31);
        *(v14 + 3) = *(v14 + 1) + 40 * *v14 - 40;

        v22 = v14[4];
        v15 = *(v14 + 3);
      }

      else
      {
        v15 = *(v14 + 1) + 40 * v22;
        *(v14 + 3) = v15;
      }

      v16 = 0;
      v14[4] = v22 + 1;
    }

    while (!v15);
  }

  CFXBufferSliceMake();
  v29 = *(v14 + 3);
  v29[2] = v21;
  result = vadd_s32(v29[3], 0x100000001);
  v29[3] = result;
  return result;
}

__n128 sub_1AF1210C8(unsigned int *a1, uint64_t *a2)
{
  v4 = *a1;
  if (*a1 + 1 > a1[1])
  {
    sub_1AF1218AC(a1, 1, 0);
    v4 = *a1;
  }

  v5 = *(a1 + 1) + 40 * v4;
  v6 = *a2;
  *a2 = 0;
  *v5 = v6;
  result = *(a2 + 1);
  *(v5 + 20) = *(a2 + 20);
  *(v5 + 8) = result;
  ++*a1;
  return result;
}

void *CFXBufferAllocatorPerFrameAllocateWithBytes(uint64_t a1, const void *a2, size_t a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2204(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  CFXBufferAllocatorPerFrameAllocateWithLength(a1, a3);
  v15 = v14;
  CPUPointer = CFXBufferSliceGetCPUPointer(v14, v16, v17);
  memcpy(CPUPointer, a2, a3);
  return v15;
}

void CFXBufferAllocatorPerFrameFree(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2204(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = (*(a1 + 96) + 32 * *(a1 + 56));
  v13 = *v12;
  if (v13)
  {
    v14 = (*(v12 + 1) + 24);
    v15 = 40 * v13;
    while (*(v14 - 3) != a2)
    {
      v14 += 10;
      v15 -= 40;
      if (!v15)
      {
        return;
      }
    }

    --*v14;
  }
}

void CFXBufferAllocatorPerFrameClear(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2204(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 88);
  if (v11)
  {
    v12 = *(a1 + 96);
    v13 = v12 + 32 * v11;
    do
    {
      sub_1AF1212F4(v12);
      *(v12 + 16) = 1;
      *(v12 + 24) = 0;
      v12 += 32;
    }

    while (v12 != v13);
  }
}

void sub_1AF1212F4(unsigned int *a1)
{
  if (*a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {

      ++v3;
      v2 += 40;
    }

    while (v3 < *a1);
  }

  *a1 = 0;
}

id *CFXBufferAllocatorPerFrameNextFrame(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2204(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 96);
  v13 = (v12 + 32 * v11);
  v14 = *v13;
  if (v14)
  {
    v15 = (*(v13 + 1) + 32);
    v16 = 40 * v14;
    do
    {
      if (*(v15 - 1))
      {
        v17 = 0;
      }

      else
      {
        v17 = *v15 + 1;
      }

      *v15 = v17;
      v15 += 10;
      v16 -= 40;
    }

    while (v16);
  }

  v18 = *(a1 + 64);
  *(a1 + 64) = 0;
  *(a1 + 72) = v18;
  v19 = (v11 + 1) % *(a1 + 88);
  *(a1 + 56) = v19;
  return sub_1AF12140C((v12 + 32 * v19), a1);
}

id *sub_1AF12140C(id *result, uint64_t a2)
{
  v2 = result;
  v3 = *result;
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = 40 * v3;
  v5 = result[1] + 16;
  do
  {
    *v5 = 0;
    v5[1] = 0;
    v5 += 5;
    v4 -= 40;
  }

  while (v4);
  v6 = *(a2 + 72);
  v7 = 2 * v6 <= 0x10000 ? 0x10000 : 2 * v6;
  if (*result)
  {
    v8 = v6 >> 1;
    v9 = result[1];
    do
    {
      if (*(v9 + 8) < 0xAu && (v10 = v9[1], v10 >= v8) && v10 <= v7)
      {
        v9 += 5;
      }

      else
      {
        result = sub_1AF121680(v2, v9);
        v9 = result;
      }

      v11 = *(v2 + 1);
    }

    while (v9 != (v11 + 40 * *v2));
    if (!*v2)
    {
      v11 = 0;
    }
  }

  else
  {
LABEL_16:
    v11 = 0;
  }

  *(v2 + 3) = v11;
  v2[4] = 1;
  return result;
}

uint64_t CFXBufferAllocatorGetAlignment(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2204(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 32);
}

void CFXBufferAllocatorSetAlignment(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2204(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 32) = v2;
}

uint64_t CFXBufferAllocatorPerFrameGetCurrentFrameBufferCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2204(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(*(a1 + 96) + 32 * *(a1 + 56));
}

uint64_t CFXBufferAllocatorPerFrameGetCurrentFrameBufferSize(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2204(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = (*(a1 + 96) + 32 * *(a1 + 56));
  v12 = *v11;
  if (!v12)
  {
    return 0;
  }

  result = 0;
  v14 = (*(v11 + 1) + 8);
  v15 = 40 * v12;
  do
  {
    v16 = *v14;
    v14 += 5;
    result += v16;
    v15 -= 40;
  }

  while (v15);
  return result;
}

id *sub_1AF121680(uint64_t a1, id *__dst)
{
  if (*(a1 + 4))
  {
  }

  v4 = *a1 - 1;
  *a1 = v4;
  result = (*(a1 + 8) + 40 * v4);
  if (result != __dst)
  {

    return memmove(__dst, __dst + 5, result - __dst);
  }

  return result;
}

unsigned int *sub_1AF1216F8(unsigned int *a1)
{
  if (a1[1])
  {
    if (*a1)
    {
      v2 = 0;
      v3 = 0;
      do
      {
        sub_1AF121764((*(a1 + 1) + v2));
        ++v3;
        v2 += 32;
      }

      while (v3 < *a1);
    }

    free(*(a1 + 1));
  }

  return a1;
}

unsigned int *sub_1AF121764(unsigned int *a1)
{
  if (a1[1])
  {
    if (*a1)
    {
      v2 = 0;
      v3 = 0;
      do
      {

        ++v3;
        v2 += 40;
      }

      while (v3 < *a1);
    }

    free(*(a1 + 1));
  }

  return a1;
}

unsigned int *sub_1AF1217D0(unsigned int *a1, unsigned int *a2)
{
  if (a2 != a1)
  {
    if (a1[1])
    {
      if (*a1)
      {
        v4 = 0;
        v5 = 0;
        do
        {

          ++v5;
          v4 += 40;
        }

        while (v5 < *a1);
      }

      free(*(a1 + 1));
      *(a1 + 1) = a1 + 4;
    }

    v6 = *a2;
    *a1 = *a2;
    v7 = *(a2 + 1);
    if (v7 == a2 + 4)
    {
      v8 = v6;
      if (v6)
      {
        v9 = a1 + 6;
        v10 = a2 + 4;
        do
        {
          v11 = *v10;
          *v10 = 0;
          *(v9 - 1) = v11;
          v12 = *(v10 + 2);
          *(v9 + 3) = *(v10 + 5);
          *v9 = v12;
          v9 += 10;
          v10 += 10;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      *(a1 + 1) = v7;
    }

    *a2 = 0;
    *(a2 + 1) = a2 + 4;
  }

  return a1;
}

void sub_1AF1218AC(unsigned int *a1, int a2, int a3)
{
  v4 = *(a1 + 1);
  v5 = 1.5;
  if (a3)
  {
    v5 = 1.0;
  }

  v6 = a1 + 4;
  v7 = (v5 * (a1[1] + a2));
  v8 = malloc_type_malloc(40 * v7, 0xBBD05BDCuLL);
  memset(v8, 255, 40 * v7);
  if (*a1)
  {
    v9 = 0;
    v10 = 0;
    v11 = v8 + 8;
    do
    {
      v12 = (*(a1 + 1) + v9);
      v13 = *v12;
      *v12 = 0;
      *(v11 - 1) = v13;
      v14 = *(v12 + 1);
      *(v11 + 12) = *(v12 + 20);
      *v11 = v14;
      if (v4 != v6)
      {
      }

      ++v10;
      v11 = (v11 + 40);
      v9 += 40;
    }

    while (v10 < *a1);
  }

  *(a1 + 1) = v8;
  a1[1] = v7;
  if (v4 != v6)
  {

    free(v4);
  }
}

void sub_1AF121A3C(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    a1[18] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    a1[9] = v5;
    operator delete(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    a1[3] = v7;

    operator delete(v7);
  }
}

uint64_t sub_1AF121ADC()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED734640 = result;
  return result;
}

uint64_t sub_1AF121B04(uint64_t a1)
{
  if (qword_1ED734638 != -1)
  {
    sub_1AFDD227C();
  }

  v2 = qword_1ED734640;

  return sub_1AF0D160C(v2, 0x90uLL);
}

void sub_1AF121B7C(uint64_t a1, _OWORD *a2, int a3, int *a4, int a5)
{
  LODWORD(v5) = a5;
  LODWORD(v7) = a3;
  sub_1AF1086DC((a1 + 16), 0);
  if (v7 >= 1)
  {
    v7 = v7;
    do
    {
      sub_1AF1083F4(a1 + 16, a2++);
      --v7;
    }

    while (v7);
  }

  sub_1AF121C28((a1 + 40), 0);
  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      sub_1AF121C58((a1 + 40), a4);
      sub_1AF121C58((a1 + 40), a4 + 1);
      a4 += 2;
      --v5;
    }

    while (v5);
  }
}

void sub_1AF121C28(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    sub_1AF123114(result, a2 - v2);
  }
}

void sub_1AF121C58(const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_1AF10A1D0();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_1AF123244(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
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
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

__n128 sub_1AF121D38(uint64_t a1, float32x4_t a2, float32x4_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = vsubq_f32(a2, a3);
  v4 = vaddq_f32(a3, a3);
  v5 = vdupq_laneq_s32(v4, 3);
  v5.i32[0] = v4.i32[0];
  v9 = v3;
  v10 = vaddq_f32(v3, v5);
  v11 = vaddq_f32(v3, vextq_s8(v4, vuzp2q_s32(v4, v4), 0xCuLL));
  v12 = vaddq_f32(v5, v11);
  v6 = vzip2q_s32(v4, v4);
  v7 = vextq_s8(v6, v6, 8uLL);
  v13 = vaddq_f32(v3, v7);
  v14 = vaddq_f32(v7, v10);
  v15 = vaddq_f32(v7, v11);
  v16 = vaddq_f32(v7, v12);
  sub_1AF121B7C(a1, &v9, 8, "", 12);
  return result;
}

void sub_1AF121DE4(uint64_t a1, uint64_t a2)
{
  v123 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 80);
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL);
  v7 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
  v8 = vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL);
  v9 = vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL);
  v10 = vmlaq_f32(vmulq_f32(v9, vnegq_f32(v8)), v7, v6);
  v11 = vmulq_f32(v3, v10);
  v11.f32[0] = v11.f32[2] + vaddv_f32(*v11.f32);
  if (v11.f32[0] != 0.0)
  {
    v12 = *(a2 + 80);
    v12.f32[0] = -v3.f32[3];
    v13 = *(a2 + 32);
    *v13.i32 = -*&v5.i32[3];
    v14 = *(a2 + 16);
    *v14.i32 = -*&v4.i32[3];
    v15 = vmulq_f32(v12, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v14, v14, 0xCuLL), v14, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL))), vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vextq_s8(vextq_s8(v13, v13, 0xCuLL), v13, 8uLL)));
    v16 = *(a2 + 80);
    v16.f32[1] = -v3.f32[3];
    v17 = *(a2 + 32);
    *&v17.i32[1] = -*&v5.i32[3];
    v18 = *(a2 + 16);
    *&v18.i32[1] = -*&v4.i32[3];
    v15.f32[0] = v15.f32[2] + vaddv_f32(*v15.f32);
    v19 = vmulq_f32(v16, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL))), vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL)));
    v20 = *(a2 + 80);
    v20.f32[2] = -v3.f32[3];
    v21 = *(a2 + 32);
    *&v21.i32[2] = -*&v5.i32[3];
    v22 = *(a2 + 16);
    *&v22.i32[2] = -*&v4.i32[3];
    v23 = vmulq_f32(v20, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v22, v22, 0xCuLL), v22, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL))), vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), vextq_s8(vextq_s8(v21, v21, 0xCuLL), v21, 8uLL)));
    v15.f32[1] = v19.f32[2] + vaddv_f32(*v19.f32);
    v15.f32[2] = v23.f32[2] + vaddv_f32(*v23.f32);
    v122[0] = vdivq_f32(v15, vdupq_lane_s32(*v11.f32, 0));
  }

  v24 = *a2;
  v25 = vextq_s8(vextq_s8(v24, v24, 0xCuLL), *a2, 8uLL);
  v26 = vextq_s8(vuzp1q_s32(v24, v24), *a2, 0xCuLL);
  v27 = vmlaq_f32(vmulq_f32(v6, vnegq_f32(v26)), v8, v25);
  v28 = vmulq_f32(v3, v27);
  v8.f32[0] = v28.f32[2] + vaddv_f32(*v28.f32);
  LODWORD(v29) = HIDWORD(*a2);
  if (v8.f32[0] != 0.0)
  {
    v30 = v3;
    v30.f32[0] = -v3.f32[3];
    v31 = *a2;
    *v31.i32 = -v29;
    v32 = v5;
    *v32.i32 = -*&v5.i32[3];
    v33 = vmulq_f32(v30, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v32, v32, 0xCuLL), v32, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL))), vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), vextq_s8(vextq_s8(v31, v31, 0xCuLL), v31, 8uLL)));
    v34 = v3;
    v34.f32[1] = -v3.f32[3];
    v35 = *a2;
    *&v35.i32[1] = -v29;
    v36 = v5;
    *&v36.i32[1] = -*&v5.i32[3];
    v33.f32[0] = v33.f32[2] + vaddv_f32(*v33.f32);
    v37 = vmulq_f32(v34, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v36, v36, 0xCuLL), v36, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL))), vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), vextq_s8(vextq_s8(v35, v35, 0xCuLL), v35, 8uLL)));
    v38 = v3;
    v38.f32[2] = -v3.f32[3];
    v39 = *a2;
    *&v39.i32[2] = -v29;
    v40 = v5;
    *&v40.i32[2] = -*&v5.i32[3];
    v41 = vmulq_f32(v38, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v40, v40, 0xCuLL), v40, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL))), vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), vextq_s8(vextq_s8(v39, v39, 0xCuLL), v39, 8uLL)));
    v33.f32[1] = v37.f32[2] + vaddv_f32(*v37.f32);
    v33.f32[2] = v41.f32[2] + vaddv_f32(*v41.f32);
    v122[1] = vdivq_f32(v33, vdupq_lane_s32(*v8.f32, 0));
  }

  v42 = *(a2 + 48);
  v43 = vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL);
  v44 = vextq_s8(vextq_s8(v42, v42, 0xCuLL), v42, 8uLL);
  v45 = vmlaq_f32(vmulq_f32(v44, vnegq_f32(v7)), v43, v9);
  v46 = vmulq_f32(v3, v45);
  v9.f32[0] = v46.f32[2] + vaddv_f32(*v46.f32);
  if (v9.f32[0] != 0.0)
  {
    v47 = v3;
    v47.f32[0] = -v3.f32[3];
    v48 = v4;
    *v48.i32 = -*&v4.i32[3];
    v49 = *(a2 + 48);
    *v49.i32 = -*&v42.i32[3];
    v50 = vmulq_f32(v47, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v49, v49, 0xCuLL), v49, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL))), vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL), vextq_s8(vextq_s8(v48, v48, 0xCuLL), v48, 8uLL)));
    v51 = v3;
    v51.f32[1] = -v3.f32[3];
    v52 = v4;
    *&v52.i32[1] = -*&v4.i32[3];
    v53 = *(a2 + 48);
    *&v53.i32[1] = -*&v42.i32[3];
    v50.f32[0] = v50.f32[2] + vaddv_f32(*v50.f32);
    v54 = vmulq_f32(v51, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v53, v53, 0xCuLL), v53, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL))), vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL), vextq_s8(vextq_s8(v52, v52, 0xCuLL), v52, 8uLL)));
    v55 = v3;
    v55.f32[2] = -v3.f32[3];
    v56 = v4;
    *&v56.i32[2] = -*&v4.i32[3];
    v57 = *(a2 + 48);
    *&v57.i32[2] = -*&v42.i32[3];
    v58 = vmulq_f32(v55, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v57, v57, 0xCuLL), v57, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL))), vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL), vextq_s8(vextq_s8(v56, v56, 0xCuLL), v56, 8uLL)));
    v50.f32[1] = v54.f32[2] + vaddv_f32(*v54.f32);
    v50.f32[2] = v58.f32[2] + vaddv_f32(*v58.f32);
    v122[2] = vdivq_f32(v50, vdupq_lane_s32(*v9.f32, 0));
  }

  v59 = vmlaq_f32(vmulq_f32(v25, vnegq_f32(v43)), v26, v44);
  v60 = vmulq_f32(v3, v59);
  v60.f32[0] = v60.f32[2] + vaddv_f32(*v60.f32);
  if (v60.f32[0] != 0.0)
  {
    v61 = v3;
    v61.f32[0] = -v3.f32[3];
    v62 = v42;
    *v62.i32 = -*&v42.i32[3];
    v63 = v24;
    *v63.i32 = -v29;
    v64 = vmulq_f32(v61, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v63, v63, 0xCuLL), v63, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL))), vextq_s8(vuzp1q_s32(v63, v63), v63, 0xCuLL), vextq_s8(vextq_s8(v62, v62, 0xCuLL), v62, 8uLL)));
    v64.f32[0] = v64.f32[2] + vaddv_f32(*v64.f32);
    v65 = v3;
    v65.f32[1] = -v3.f32[3];
    v66 = v42;
    *&v66.i32[1] = -*&v42.i32[3];
    v67 = v24;
    *&v67.i32[1] = -v29;
    v68 = vmulq_f32(v65, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v67, v67, 0xCuLL), v67, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL))), vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL), vextq_s8(vextq_s8(v66, v66, 0xCuLL), v66, 8uLL)));
    v3.f32[2] = -v3.f32[3];
    v69 = v42;
    *&v69.i32[2] = -*&v42.i32[3];
    v70 = v24;
    *&v70.i32[2] = -v29;
    v2 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v70, v70, 0xCuLL), v70, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL))), vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL), vextq_s8(vextq_s8(v69, v69, 0xCuLL), v69, 8uLL));
    v71 = vmulq_f32(v3, v2);
    v64.f32[1] = v68.f32[2] + vaddv_f32(*v68.f32);
    v64.f32[2] = v71.f32[2] + vaddv_f32(*v71.f32);
    v122[3] = vdivq_f32(v64, vdupq_lane_s32(*v60.f32, 0));
  }

  v72 = *(a2 + 64);
  v73 = vmulq_f32(v10, v72);
  v2.f32[0] = v73.f32[2] + vaddv_f32(*v73.f32);
  if (v2.f32[0] != 0.0)
  {
    v74 = *(a2 + 64);
    v74.f32[0] = -v72.f32[3];
    v75 = v5;
    *v75.i32 = -*&v5.i32[3];
    v76 = v4;
    *v76.i32 = -*&v4.i32[3];
    v77 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v76, v76, 0xCuLL), v76, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL))), vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL), vextq_s8(vextq_s8(v75, v75, 0xCuLL), v75, 8uLL)), v74);
    v78 = *(a2 + 64);
    v78.f32[1] = -v72.f32[3];
    v79 = v5;
    *&v79.i32[1] = -*&v5.i32[3];
    v80 = v4;
    *&v80.i32[1] = -*&v4.i32[3];
    v77.f32[0] = v77.f32[2] + vaddv_f32(*v77.f32);
    v81 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v80, v80, 0xCuLL), v80, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL))), vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL), vextq_s8(vextq_s8(v79, v79, 0xCuLL), v79, 8uLL)), v78);
    v82 = *(a2 + 64);
    v82.f32[2] = -v72.f32[3];
    v83 = v5;
    *&v83.i32[2] = -*&v5.i32[3];
    v84 = v4;
    *&v84.i32[2] = -*&v4.i32[3];
    v85 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v84, v84, 0xCuLL), v84, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v83, v83), v83, 0xCuLL))), vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL), vextq_s8(vextq_s8(v83, v83, 0xCuLL), v83, 8uLL)), v82);
    v77.f32[1] = v81.f32[2] + vaddv_f32(*v81.f32);
    v77.f32[2] = v85.f32[2] + vaddv_f32(*v85.f32);
    v122[4] = vdivq_f32(v77, vdupq_lane_s32(*v2.f32, 0));
  }

  v86 = vmulq_f32(v27, v72);
  v86.f32[0] = v86.f32[2] + vaddv_f32(*v86.f32);
  if (v86.f32[0] != 0.0)
  {
    v87 = v72;
    v87.f32[0] = -v72.f32[3];
    v88 = v24;
    *v88.i32 = -v29;
    v89 = v5;
    *v89.i32 = -*&v5.i32[3];
    v90 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v89, v89, 0xCuLL), v89, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL))), vextq_s8(vuzp1q_s32(v89, v89), v89, 0xCuLL), vextq_s8(vextq_s8(v88, v88, 0xCuLL), v88, 8uLL)), v87);
    v90.f32[0] = v90.f32[2] + vaddv_f32(*v90.f32);
    v91 = v72;
    v91.f32[1] = -v72.f32[3];
    v92 = v24;
    *&v92.i32[1] = -v29;
    v93 = v5;
    *&v93.i32[1] = -*&v5.i32[3];
    v94 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v93, v93, 0xCuLL), v93, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v92, v92), v92, 0xCuLL))), vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL), vextq_s8(vextq_s8(v92, v92, 0xCuLL), v92, 8uLL)), v91);
    *v92.i32 = vaddv_f32(*v94.f32);
    v95 = v72;
    v95.f32[2] = -v72.f32[3];
    v96 = v94.f32[2];
    v97 = v24;
    *&v97.i32[2] = -v29;
    *&v5.i32[2] = -*&v5.i32[3];
    v98 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v97, v97), v97, 0xCuLL))), vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), vextq_s8(vextq_s8(v97, v97, 0xCuLL), v97, 8uLL)), v95);
    v90.f32[1] = v96 + *v92.i32;
    v90.f32[2] = v98.f32[2] + vaddv_f32(*v98.f32);
    v122[5] = vdivq_f32(v90, vdupq_lane_s32(*v86.f32, 0));
  }

  v99 = vmulq_f32(v45, v72);
  v99.f32[0] = v99.f32[2] + vaddv_f32(*v99.f32);
  if (v99.f32[0] != 0.0)
  {
    v100 = v72;
    v100.f32[0] = -v72.f32[3];
    v101 = v4;
    *v101.i32 = -*&v4.i32[3];
    v102 = v42;
    *v102.i32 = -*&v42.i32[3];
    v103 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v102, v102, 0xCuLL), v102, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v101, v101), v101, 0xCuLL))), vextq_s8(vuzp1q_s32(v102, v102), v102, 0xCuLL), vextq_s8(vextq_s8(v101, v101, 0xCuLL), v101, 8uLL)), v100);
    v103.f32[0] = v103.f32[2] + vaddv_f32(*v103.f32);
    v104 = v72;
    v104.f32[1] = -v72.f32[3];
    v105 = v4;
    *&v105.i32[1] = -*&v4.i32[3];
    v106 = v42;
    *&v106.i32[1] = -*&v42.i32[3];
    v107 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v106, v106, 0xCuLL), v106, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v105, v105), v105, 0xCuLL))), vextq_s8(vuzp1q_s32(v106, v106), v106, 0xCuLL), vextq_s8(vextq_s8(v105, v105, 0xCuLL), v105, 8uLL)), v104);
    v108 = v72;
    v108.f32[2] = -v72.f32[3];
    *&v4.i32[2] = -*&v4.i32[3];
    v109 = v42;
    *&v109.i32[2] = -*&v42.i32[3];
    v110 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v109, v109, 0xCuLL), v109, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL))), vextq_s8(vuzp1q_s32(v109, v109), v109, 0xCuLL), vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL)), v108);
    v103.f32[1] = v107.f32[2] + vaddv_f32(*v107.f32);
    v103.f32[2] = v110.f32[2] + vaddv_f32(*v110.f32);
    v122[6] = vdivq_f32(v103, vdupq_lane_s32(*v99.f32, 0));
  }

  v111 = vmulq_f32(v59, v72);
  v111.f32[0] = v111.f32[2] + vaddv_f32(*v111.f32);
  if (v111.f32[0] != 0.0)
  {
    v112 = v72;
    v112.f32[0] = -v72.f32[3];
    v113 = v42;
    *v113.i32 = -*&v42.i32[3];
    *&v114 = -v29;
    v115 = v24;
    v115.i32[0] = v114;
    v116 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v115, v115, 0xCuLL), v115, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL))), vextq_s8(vuzp1q_s32(v115, v115), v115, 0xCuLL), vextq_s8(vextq_s8(v113, v113, 0xCuLL), v113, 8uLL)), v112);
    v117 = v72;
    v117.f32[1] = -v72.f32[3];
    v118 = v42;
    *&v118.i32[1] = -*&v42.i32[3];
    v116.f32[0] = v116.f32[2] + vaddv_f32(*v116.f32);
    v119 = v24;
    v119.i32[1] = v114;
    v120 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v119, v119, 0xCuLL), v119, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v118, v118), v118, 0xCuLL))), vextq_s8(vuzp1q_s32(v119, v119), v119, 0xCuLL), vextq_s8(vextq_s8(v118, v118, 0xCuLL), v118, 8uLL)), v117);
    v72.f32[2] = -v72.f32[3];
    *&v42.i32[2] = -*&v42.i32[3];
    v24.i32[2] = v114;
    v121 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v24, v24, 0xCuLL), v24, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL))), vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), vextq_s8(vextq_s8(v42, v42, 0xCuLL), v42, 8uLL)), v72);
    v116.f32[1] = v120.f32[2] + vaddv_f32(*v120.f32);
    v116.f32[2] = v121.f32[2] + vaddv_f32(*v121.f32);
    v122[7] = vdivq_f32(v116, vdupq_lane_s32(*v111.f32, 0));
  }

  sub_1AF121B7C(a1, v122, 8, "", 12);
}

void sub_1AF122878(uint64_t a1, float32x4_t a2)
{
  v3 = vmulq_f32(a2, a2);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  *v3.f32 = vrsqrte_f32(v4);
  *v3.f32 = vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32)));
  LODWORD(v63) = vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32))).u32[0];
  sub_1AF121C28((a1 + 112), (*(a1 + 24) - *(a1 + 16)) >> 4);
  v5 = *(a1 + 24) - *(a1 + 16);
  if ((v5 >> 4) >= 1)
  {
    memset(*(a1 + 112), 255, (v5 >> 2) & 0x1FFFFFFFCLL);
  }

  v67 = vmulq_n_f32(a2, v63);
  sub_1AF122E00((a1 + 136), 0);
  v7 = *(a1 + 48) - *(a1 + 40);
  if ((v7 >> 2) > 1)
  {
    v8 = 0;
    for (i = (v7 >> 3) & 0x7FFFFFFF; i; --i)
    {
      v10 = (*(a1 + 40) + v8);
      v12 = *v10;
      v11 = v10[1];
      v13 = *(a1 + 16);
      v14 = (v13 + 16 * v12);
      v15 = *(v13 + 16 * v11);
      v6 = *v14;
      v16 = vmulq_f32(v67, *v14);
      v17 = v67.f32[3] + (v16.f32[2] + vaddv_f32(*v16.f32));
      v18 = vmulq_f32(v67, v15);
      v19 = v67.f32[3] + (v18.f32[2] + vaddv_f32(*v18.f32));
      if (v17 > 0.0 || v19 > 0.0)
      {
        if (v17 <= 0.0 || v19 > 0.0)
        {
          if (v17 <= 0.0 && v19 > 0.0)
          {
            v61 = *(v13 + 16 * v11);
            v64 = *v14;
            v23 = *(*(a1 + 112) + 4 * v12);
            if (v23 == -1)
            {
              sub_1AF1083F4(a1 + 64, v14);
              v23 = ((*(a1 + 72) - *(a1 + 64)) >> 4) - 1;
              *(*(a1 + 112) + 4 * v12) = v23;
            }

            v69.i32[0] = v23;
            sub_1AF121C58((a1 + 88), &v69);
            if ((v19 - v17) == 0.0)
            {
              v24 = v64;
            }

            else
            {
              v24 = vmlaq_n_f32(v64, vsubq_f32(v61, v64), -v17 / (v19 - v17));
            }

            v69 = v24;
            sub_1AF1083F4(a1 + 64, &v69);
            HIDWORD(v70) = ((*(a1 + 72) - *(a1 + 64)) >> 4) - 1;
            sub_1AF121C58((a1 + 88), &v70 + 1);
            sub_1AF122E30(a1 + 136, &v70);
          }

          goto LABEL_18;
        }

        if ((v19 - v17) != 0.0)
        {
          v6 = vmlaq_n_f32(v6, vsubq_f32(v15, v6), -v17 / (v19 - v17));
        }

        v69 = v6;
        sub_1AF1083F4(a1 + 64, &v69);
        HIDWORD(v70) = ((*(a1 + 72) - *(a1 + 64)) >> 4) - 1;
        sub_1AF121C58((a1 + 88), &v70 + 1);
        sub_1AF122E30(a1 + 136, &v70);
        v21 = *(a1 + 112);
      }

      else
      {
        v20 = *(*(a1 + 112) + 4 * v12);
        if (v20 == -1)
        {
          sub_1AF1083F4(a1 + 64, v14);
          v20 = ((*(a1 + 72) - *(a1 + 64)) >> 4) - 1;
          *(*(a1 + 112) + 4 * v12) = v20;
        }

        v69.i32[0] = v20;
        sub_1AF121C58((a1 + 88), &v69);
        v21 = *(a1 + 112);
      }

      v22 = *(v21 + 4 * v11);
      if (v22 == -1)
      {
        sub_1AF1083F4(a1 + 64, (*(a1 + 16) + 16 * v11));
        v22 = ((*(a1 + 72) - *(a1 + 64)) >> 4) - 1;
        *(*(a1 + 112) + 4 * v11) = v22;
      }

      v69.i32[0] = v22;
      sub_1AF121C58((a1 + 88), &v69);
LABEL_18:
      v8 += 8;
    }
  }

  v25 = *(a1 + 136);
  v26 = *(a1 + 144);
  v27 = v26 - v25;
  v28 = (v26 - v25) >> 3;
  if (v28 > 2)
  {
    if (v27 == 24)
    {
      goto LABEL_40;
    }

    v29 = v27 >> 3;
    v30 = *(a1 + 64);
    v31 = *(v30 + 16 * *(v25 + 4));
    v32 = (v27 >> 3) & 0x7FFFFFFF;
    if ((v27 >> 3) > 1)
    {
      v33 = (v25 + 12);
      v34 = v32 - 1;
      do
      {
        v35 = *v33;
        v33 += 2;
        v31 = vaddq_f32(v31, *(v30 + 16 * v35));
        --v34;
      }

      while (v34);
    }

    if (v29 >= 1)
    {
      v36 = vmulq_f32(v67, xmmword_1AFE20180);
      v36.f32[0] = fabsf(v36.f32[2] + vaddv_f32(*v36.f32));
      v6.i32[0] = *"33s?";
      v37 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v36, v6), 0), xmmword_1AFE20160, xmmword_1AFE20180);
      v38 = vnegq_f32(v67);
      v39 = vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL);
      v40 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), v38), v37, v39);
      v41 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
      v42 = vmulq_f32(v67, v41);
      v42.f32[0] = v42.f32[2] + vaddv_f32(*v42.f32);
      v43 = vmlsq_lane_f32(v41, v67, *v42.f32, 0);
      v44 = vmulq_f32(v43, v43);
      *&v45 = v44.f32[2] + vaddv_f32(*v44.f32);
      *v44.f32 = vrsqrte_f32(v45);
      *v44.f32 = vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32)));
      v68 = vmulq_n_f32(v43, vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32))).f32[0]);
      v46 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL), v38), v68, v39);
      v47 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
      *v46.i32 = v28;
      v62 = vdivq_f32(v31, vdupq_lane_s32(*v46.i8, 0));
      v65 = v47;
      v48 = (v25 + 4);
      do
      {
        v49 = vsubq_f32(*(v30 + 16 * *v48), v62);
        v50 = vmulq_f32(v68, v49);
        v51 = vmulq_f32(v65, v49);
        v31.n128_f32[0] = atan2f(v50.f32[2] + vaddv_f32(*v50.f32), v51.f32[2] + vaddv_f32(*v51.f32));
        *(v48 - 1) = v31.n128_u32[0];
        v48 += 2;
        --v32;
      }

      while (v32);
    }

    v52 = 126 - 2 * __clz(v28);
    v53 = v26 == v25 ? 0 : v52;
    sub_1AF1233E8(v25, v26, &v69, v53, 1, v31);
    v25 = *(a1 + 136);
    if (((*(a1 + 144) - v25) >> 3) >= 1)
    {
LABEL_40:
      v54 = 0;
      v55 = 4;
      do
      {
        sub_1AF121C58((a1 + 88), (v25 + v55));
        sub_1AF121C58((a1 + 88), (*(a1 + 136) + 8 * (++v54 % ((*(a1 + 144) - *(a1 + 136)) >> 3)) + 4));
        v25 = *(a1 + 136);
        v55 += 8;
      }

      while (v54 < ((*(a1 + 144) - v25) >> 3));
    }
  }

  v56 = *(a1 + 64);
  v58 = *(a1 + 32);
  v57 = *(a1 + 48);
  v59 = *(a1 + 80);
  v60 = *(a1 + 16);
  *(a1 + 48) = *(a1 + 96);
  *(a1 + 64) = v60;
  *(a1 + 16) = v56;
  *(a1 + 32) = v59;
  *(a1 + 80) = v58;
  *(a1 + 96) = v57;
  sub_1AF121C28((a1 + 88), 0);
  sub_1AF1086DC((a1 + 64), 0);
  sub_1AF121C28((a1 + 112), 0);
  sub_1AF122E00((a1 + 136), 0);
}

void sub_1AF122E00(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    sub_1AF12328C(result, a2 - v2);
  }
}

void sub_1AF122E30(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1AF10A1D0();
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
      sub_1AF1233A0(a1, v10);
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
}

BOOL sub_1AF122F04(uint64_t a1, float32x4_t a2, float32x4_t a3)
{
  v14 = vaddq_f32(a2, a3);
  v4.i64[0] = 0;
  v4.i32[2] = 1.0;
  v4.f32[3] = -v14.f32[2];
  sub_1AF122878(a1, v4);
  if (*(a1 + 40) == *(a1 + 48))
  {
    return 0;
  }

  v5.i64[0] = COERCE_UNSIGNED_INT(1.0);
  v5.i32[2] = 0;
  v5.f32[3] = -v14.f32[0];
  sub_1AF122878(a1, v5);
  if (*(a1 + 40) == *(a1 + 48))
  {
    return 0;
  }

  v6 = xmmword_1AFE20650;
  v13 = vsubq_f32(a2, a3);
  v6.i32[3] = v13.i32[0];
  sub_1AF122878(a1, v6);
  if (*(a1 + 40) == *(a1 + 48))
  {
    return 0;
  }

  v7.i32[0] = 0;
  v7.i32[1] = 1.0;
  v7.i32[2] = 0;
  v7.f32[3] = -v14.f32[1];
  sub_1AF122878(a1, v7);
  if (*(a1 + 40) == *(a1 + 48))
  {
    return 0;
  }

  v8 = xmmword_1AFE20B60;
  v8.i32[3] = v13.i32[1];
  sub_1AF122878(a1, v8);
  if (*(a1 + 40) == *(a1 + 48))
  {
    return 0;
  }

  v9 = xmmword_1AFE206C0;
  v9.i32[3] = v13.i32[2];
  sub_1AF122878(a1, v9);
  return *(a1 + 40) != *(a1 + 48);
}

__n128 sub_1AF123040(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 24) - *(a1 + 16);
  if ((v2 >> 4) >= 1)
  {
    v3 = 0;
    v4 = (v2 >> 4) & 0x7FFFFFFF;
    do
    {
      result = *a2;
      *(*(a1 + 16) + 16 * v3) = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a2[3], a2[2], *(*(a1 + 16) + 16 * v3), 2), a2[1], *(*(a1 + 16) + 16 * v3), 1), *a2, COERCE_FLOAT(*(*(a1 + 16) + 16 * v3)));
      ++v3;
    }

    while (v4 != v3);
  }

  return result;
}

double sub_1AF12308C(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24) - v5;
  if ((v6 >> 4) < 1)
  {
    v7.i64[0] = 0;
  }

  else
  {
    v7 = xmmword_1AFE201A0;
    v8 = xmmword_1AFE20B70;
    v9 = (v6 >> 4) & 0x7FFFFFFF;
    v10.i64[0] = 0x3F0000003F000000;
    v10.i64[1] = 0x3F0000003F000000;
    do
    {
      v11 = *v5++;
      v12 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a5, a4, v11, 2), a3, *v11.f32, 1), a2, v11.f32[0]);
      v12.i32[3] = 1.0;
      v13 = vminnmq_f32(vsubq_f32(v7, v8), v12);
      v14 = vmaxnmq_f32(vaddq_f32(v7, v8), v12);
      v7 = vmulq_f32(vaddq_f32(v13, v14), v10);
      v8 = vmulq_f32(vsubq_f32(v14, v13), v10);
      --v9;
    }

    while (v9);
  }

  return *v7.i64;
}

void sub_1AF123114(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_1AF10A1D0();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1AF123244(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_1AF123244(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF12328C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_1AF10A1D0();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1AF1233A0(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_1AF1233A0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

uint64_t sub_1AF1233E8(uint64_t result, float *a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
  v9 = result;
LABEL_2:
  v10 = v9;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v9 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        if (*(a2 - 2) >= *v10)
        {
          return result;
        }

        v51 = *v10;
LABEL_81:
        *v10 = *(a2 - 1);
        goto LABEL_82;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v52 = *(v10 + 8);
      v53 = *v10;
      v54 = *(v10 + 16);
      if (v52 >= *v10)
      {
        if (v54 < v52)
        {
          v59 = *(v10 + 8);
          v58 = *(v10 + 16);
          *(v10 + 8) = v58;
          *(v10 + 16) = v59;
          v54 = *&v59;
          if (v53 > *&v58)
          {
            v60 = *v10;
            *v10 = v58;
            *(v10 + 8) = v60;
          }
        }
      }

      else
      {
        v55 = *v10;
        LODWORD(v56) = *v10;
        if (v54 < v52)
        {
          *v10 = *(v10 + 16);
          goto LABEL_110;
        }

        *v10 = *(v10 + 8);
        *(v10 + 8) = v55;
        if (v54 < v56)
        {
          *(v10 + 8) = *(v10 + 16);
LABEL_110:
          *(v10 + 16) = v55;
          v54 = v56;
        }
      }

      if (*(a2 - 2) < v54)
      {
        v68 = *(v10 + 16);
        *(v10 + 16) = *(a2 - 1);
        *(a2 - 1) = v68;
        if (*(v10 + 16) < *(v10 + 8))
        {
          v70 = *(v10 + 8);
          v69 = *(v10 + 16);
          *(v10 + 8) = v69;
          *(v10 + 16) = v70;
          if (*v10 > *&v69)
          {
            v71 = *v10;
            *v10 = v69;
            *(v10 + 8) = v71;
          }
        }
      }

      return result;
    }

    if (v13 == 5)
    {

      return sub_1AF123ACC(v10, (v10 + 8), (v10 + 16), (v10 + 24), a2 - 1);
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return sub_1AF123C50(v10, a2);
      }

      else if (v10 != a2)
      {
        v61 = (v10 + 8);
        while (v61 != a2)
        {
          v62 = v61;
          v63 = *(v9 + 8);
          if (v63 < *v9)
          {
            v64 = *(v9 + 12);
            v65 = v62;
            do
            {
              v66 = v65;
              v67 = *(v65 - 8);
              v65 -= 8;
              *v66 = v67;
            }

            while (*(v66 - 4) > v63);
            *v65 = v63;
            *(v65 + 4) = v64;
          }

          v61 = (v62 + 8);
          v9 = v62;
        }
      }

      return result;
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        return sub_1AF124128(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = (v10 + 8 * (v13 >> 1));
    v15 = v14;
    v16 = *(a2 - 2);
    if (v13 >= 0x81)
    {
      v17 = *v14;
      if (*v14 >= *v10)
      {
        if (v16 < v17)
        {
          v21 = *v14;
          *v14 = *(a2 - 1);
          *(a2 - 1) = v21;
          if (*v14 < *v10)
          {
            v22 = *v10;
            *v10 = *v14;
            *v14 = v22;
          }
        }
      }

      else
      {
        v18 = *v10;
        if (v16 < v17)
        {
          *v10 = *(a2 - 1);
          goto LABEL_29;
        }

        *v10 = *v14;
        *v14 = v18;
        if (*(a2 - 2) < *&v18)
        {
          *v14 = *(a2 - 1);
LABEL_29:
          *(a2 - 1) = v18;
        }
      }

      v25 = v14 - 2;
      v26 = *(v14 - 2);
      v27 = *(a2 - 4);
      if (v26 >= *(v10 + 8))
      {
        if (v27 < v26)
        {
          v29 = *v25;
          *v25 = *(a2 - 2);
          *(a2 - 2) = v29;
          if (*v25 < *(v10 + 8))
          {
            v30 = *(v10 + 8);
            *(v10 + 8) = *v25;
            *v25 = v30;
          }
        }
      }

      else
      {
        v28 = *(v10 + 8);
        if (v27 < v26)
        {
          *(v10 + 8) = *(a2 - 2);
          goto LABEL_43;
        }

        *(v10 + 8) = *v25;
        *v25 = v28;
        if (*(a2 - 4) < *&v28)
        {
          *v25 = *(a2 - 2);
LABEL_43:
          *(a2 - 2) = v28;
        }
      }

      v32 = v14[2];
      v31 = (v14 + 2);
      v33 = v32;
      v34 = *(a2 - 6);
      if (v32 >= *(v10 + 16))
      {
        if (v34 < v33)
        {
          v36 = *v31;
          *v31 = *(a2 - 3);
          *(a2 - 3) = v36;
          if (*v31 < *(v10 + 16))
          {
            v37 = *(v10 + 16);
            *(v10 + 16) = *v31;
            *v31 = v37;
          }
        }
      }

      else
      {
        v35 = *(v10 + 16);
        if (v34 < v33)
        {
          *(v10 + 16) = *(a2 - 3);
          goto LABEL_52;
        }

        *(v10 + 16) = *v31;
        *v31 = v35;
        if (*(a2 - 6) < *&v35)
        {
          *v31 = *(a2 - 3);
LABEL_52:
          *(a2 - 3) = v35;
        }
      }

      v38 = *v15;
      v39 = *v25;
      v40 = *v31;
      if (*v15 >= *v25)
      {
        v41 = *v15;
        if (v40 < v38)
        {
          v42 = *v31;
          *v15 = *v31;
          *v31 = v41;
          if (v39 <= *&v42)
          {
            v41 = v42;
          }

          else
          {
            v41 = *v25;
            *v25 = v42;
            *v15 = v41;
          }
        }
      }

      else
      {
        v41 = *v25;
        if (v40 >= v38)
        {
          *v25 = *v15;
          *v15 = v41;
          if (v40 < *&v41)
          {
            v43 = *v31;
            *v15 = *v31;
            *v31 = v41;
            v41 = v43;
          }
        }

        else
        {
          *v25 = *v31;
          *v31 = v41;
          v41 = *v15;
        }
      }

      v44 = *v10;
      *v10 = v41;
      *v15 = v44;
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    v19 = *v10;
    if (*v10 < *v14)
    {
      v20 = *v14;
      if (v16 < v19)
      {
        *v15 = *(a2 - 1);
        goto LABEL_38;
      }

      *v15 = *v10;
      *v10 = v20;
      if (*(a2 - 2) < *&v20)
      {
        *v10 = *(a2 - 1);
LABEL_38:
        *(a2 - 1) = v20;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    if (v16 >= v19)
    {
      goto LABEL_39;
    }

    v23 = *v10;
    *v10 = *(a2 - 1);
    *(a2 - 1) = v23;
    if (*v10 >= *v15)
    {
      goto LABEL_39;
    }

    v24 = *v15;
    *v15 = *v10;
    *v10 = v24;
    if (a5)
    {
      goto LABEL_64;
    }

LABEL_63:
    if (*(v10 - 8) >= *v10)
    {
      result = sub_1AF123CD8(v10, a2);
      v10 = result;
      goto LABEL_69;
    }

LABEL_64:
    v45 = sub_1AF123D84(v10, a2);
    if ((v47 & 1) == 0)
    {
      goto LABEL_67;
    }

    v48 = sub_1AF123E3C(v10, v45);
    v10 = (v45 + 2);
    result = sub_1AF123E3C(v45 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v45;
      if (v48)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v48)
    {
LABEL_67:
      result = sub_1AF1233E8(v9, v45, a3, -v12, a5 & 1, v46);
      v10 = (v45 + 2);
LABEL_69:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  v49 = *(v10 + 8);
  v50 = *(a2 - 2);
  if (v49 < *v10)
  {
    v51 = *v10;
    if (v50 < v49)
    {
      goto LABEL_81;
    }

    *v10 = *(v10 + 8);
    *(v10 + 8) = v51;
    if (*(a2 - 2) >= *&v51)
    {
      return result;
    }

    *(v10 + 8) = *(a2 - 1);
LABEL_82:
    *(a2 - 1) = v51;
    return result;
  }

  if (v50 < v49)
  {
    v57 = *(v10 + 8);
    *(v10 + 8) = *(a2 - 1);
    *(a2 - 1) = v57;
    if (*(v10 + 8) < *v10)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }
  }

  return result;
}

float *sub_1AF123ACC(float *result, float *a2, float *a3, void *a4, void *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v7 = *a2;
      *a2 = *a3;
      *a3 = v7;
      if (*a2 >= *result)
      {
        goto LABEL_7;
      }

      v8 = *result;
      *result = *a2;
      *a2 = v8;
      v6 = *a3;
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v5)
    {
      *result = *a3;
      *a3 = v7;
LABEL_7:
      v6 = *&v7;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v7;
    v6 = *a3;
    if (*a3 < *&v7)
    {
      *a2 = *a3;
      *a3 = v7;
      v6 = *&v7;
    }
  }

LABEL_10:
  if (*a4 < v6)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (*a3 < *a2)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (*a2 < *result)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  if (*a5 < *a4)
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    if (*a4 < *a3)
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      if (*a3 < *a2)
      {
        v14 = *a2;
        *a2 = *a3;
        *a3 = v14;
        if (*a2 < *result)
        {
          v15 = *result;
          *result = *a2;
          *a2 = v15;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF123C50(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 8;
    if (result + 8 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 8);
        if (v6 < *v4)
        {
          v7 = *(v4 + 12);
          v8 = v3;
          while (1)
          {
            *(result + v8 + 8) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 8);
            v8 -= 8;
            if (v9 <= v6)
            {
              v10 = result + v8 + 8;
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          *(v10 + 4) = v7;
        }

        v2 = v5 + 8;
        v3 += 8;
        v4 = v5;
      }

      while (v5 + 8 != a2);
    }
  }

  return result;
}

float *sub_1AF123CD8(float *a1, float *a2)
{
  v2 = *a1;
  if (*(a2 - 2) <= COERCE_FLOAT(*a1))
  {
    v5 = a1 + 2;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 2;
    }

    while (*v3 <= *&v2);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[2];
      v3 += 2;
    }

    while (v4 <= *&v2);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 2);
      a2 -= 2;
    }

    while (v6 > *&v2);
  }

  while (v3 < a2)
  {
    v7 = *v3;
    *v3 = *a2;
    *a2 = v7;
    do
    {
      v8 = v3[2];
      v3 += 2;
    }

    while (v8 <= *&v2);
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (v9 > *&v2);
  }

  if (v3 - 2 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

float *sub_1AF123D84(float *a1, float *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[v2 + 2];
    v2 += 2;
  }

  while (v4 < *&v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 2];
  if (v2 == 2)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v8 >= *&v3);
  }

  else
  {
    do
    {
      v7 = *(a2 - 2);
      a2 -= 2;
    }

    while (v7 >= *&v3);
  }

  if (v5 < a2)
  {
    v9 = &a1[v2];
    v10 = a2;
    do
    {
      v11 = *v9;
      *v9 = *v10;
      *v10 = v11;
      do
      {
        v12 = v9[2];
        v9 += 2;
      }

      while (v12 < *&v3);
      do
      {
        v13 = *(v10 - 2);
        v10 -= 2;
      }

      while (v13 >= *&v3);
    }

    while (v9 < v10);
    v6 = v9 - 2;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL sub_1AF123E3C(float *a1, uint64_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = a1[2];
      v5 = *(a2 - 2);
      if (v4 >= *a1)
      {
        if (v5 < v4)
        {
          v16 = *(a1 + 1);
          *(a1 + 1) = *(a2 - 1);
          *(a2 - 1) = v16;
          if (a1[2] < *a1)
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = *a1;
      if (v5 >= v4)
      {
        *a1 = *(a1 + 1);
        *(a1 + 1) = v3;
        if (*(a2 - 2) >= *&v3)
        {
          return 1;
        }

        *(a1 + 1) = *(a2 - 1);
        goto LABEL_13;
      }

LABEL_12:
      *a1 = *(a2 - 1);
LABEL_13:
      *(a2 - 1) = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_1AF123ACC(a1, a1 + 2, a1 + 4, a1 + 3, a2 - 1);
        return 1;
      }

      goto LABEL_14;
    }

    v11 = a1[2];
    v12 = *a1;
    v13 = a1[4];
    if (v11 >= *a1)
    {
      if (v13 < v11)
      {
        v21 = *(a1 + 1);
        v20 = *(a1 + 2);
        *(a1 + 1) = v20;
        *(a1 + 2) = v21;
        v13 = *&v21;
        if (v12 > *&v20)
        {
          v22 = *a1;
          *a1 = v20;
          *(a1 + 1) = v22;
        }
      }

      goto LABEL_48;
    }

    v14 = *a1;
    LODWORD(v15) = *a1;
    if (v13 >= v11)
    {
      *a1 = *(a1 + 1);
      *(a1 + 1) = v14;
      if (v13 >= v15)
      {
LABEL_48:
        if (*(a2 - 2) < v13)
        {
          v31 = *(a1 + 2);
          *(a1 + 2) = *(a2 - 1);
          *(a2 - 1) = v31;
          if (a1[4] < a1[2])
          {
            v33 = *(a1 + 1);
            v32 = *(a1 + 2);
            *(a1 + 1) = v32;
            *(a1 + 2) = v33;
            if (*a1 > *&v32)
            {
              v34 = *a1;
              *a1 = v32;
              *(a1 + 1) = v34;
            }
          }
        }

        return 1;
      }

      *(a1 + 1) = *(a1 + 2);
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    *(a1 + 2) = v14;
    v13 = v15;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 2) < *a1)
    {
      v3 = *a1;
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = a1 + 4;
  v7 = a1[4];
  v8 = a1[2];
  v9 = *a1;
  if (v8 >= *a1)
  {
    if (v7 < v8)
    {
      v18 = *(a1 + 1);
      v17 = *(a1 + 2);
      *(a1 + 1) = v17;
      *(a1 + 2) = v18;
      if (v9 > *&v17)
      {
        v19 = *a1;
        *a1 = v17;
        *(a1 + 1) = v19;
      }
    }
  }

  else
  {
    v10 = *a1;
    if (v7 >= v8)
    {
      *a1 = *(a1 + 1);
      *(a1 + 1) = v10;
      if (v7 >= *&v10)
      {
        goto LABEL_34;
      }

      *(a1 + 1) = *(a1 + 2);
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    *(a1 + 2) = v10;
  }

LABEL_34:
  v23 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v24 = 0;
  v25 = 0;
  while (1)
  {
    v26 = *v23;
    if (*v23 < *v6)
    {
      v27 = *(v23 + 1);
      v28 = v24;
      while (1)
      {
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v29 = *(a1 + v28 + 8);
        v28 -= 8;
        if (v29 <= v26)
        {
          v30 = a1 + v28 + 24;
          goto LABEL_42;
        }
      }

      v30 = a1;
LABEL_42:
      *v30 = v26;
      *(v30 + 4) = v27;
      if (++v25 == 8)
      {
        return v23 + 1 == a2;
      }
    }

    v6 = v23;
    v24 += 8;
    if (++v23 == a2)
    {
      return 1;
    }
  }
}

float *sub_1AF124128(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        sub_1AF1242B8(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*v12 < *a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_1AF1242B8(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = v16;
          v18 = &v16[2 * v14];
          v16 = v18 + 2;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[4];
            v21 = v18 + 4;
            if (*(v21 - 2) < v22)
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v16 == v6)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v6;
          *v6 = v15;
          sub_1AF124384(a1, (v16 + 2), a4, ((v16 + 2) - a1) >> 3);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1AF1242B8(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *v8 < v8[2])
      {
        v8 += 2;
        v7 = v9;
      }

      v10 = *a4;
      if (*v8 >= *a4)
      {
        v11 = *(a4 + 1);
        do
        {
          v12 = a4;
          a4 = v8;
          *v12 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v14 = v13 + 2;
          if (v14 < a3 && *v8 < v8[2])
          {
            v8 += 2;
            v7 = v14;
          }
        }

        while (*v8 >= v10);
        *a4 = v10;
        *(a4 + 1) = v11;
      }
    }
  }

  return result;
}

uint64_t sub_1AF124384(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = (a2 - 8);
    v8 = *(a2 - 8);
    if (*v6 < v8)
    {
      v9 = *(a2 - 4);
      do
      {
        v10 = v7;
        v7 = v6;
        *v10 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 8 * v5);
      }

      while (*v6 < v8);
      *v7 = v8;
      *(v7 + 1) = v9;
    }
  }

  return result;
}

uint64_t sub_1AF1243E4(uint64_t a1, const char *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = (a1 + 12288);
  if (!a5)
  {
    v11 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2290(v11, a2, a3, v12, v13, v14, v15, v16);
    }
  }

  v10[2366] = 0;
  *(a1 + 14696) = a2;
  v18 = sub_1AF130DB0(a2, a2, a3);
  v19 = 1;
  if (!v18)
  {
    v19 = sub_1AF1304FC(a2);
  }

  v10[2364] = v19;
  *(a1 + 15128) = sub_1AF1245CC;
  *(a1 + 14688) = a5;
  v10[2304] = 1;
  v10[2369] = 2;
  v10[2832] = 0;
  *(a1 + 14600) = 0u;
  if (!a4)
  {
    a4 = sub_1AF1CF7E8(a5, v17);
  }

  *(a1 + 14616) = a4;
  v21 = sub_1AF12FCE8(a2, 0);
  if (v10[2307] == 2)
  {
    v22 = 14336;
  }

  else
  {
    *(a1 + 14336) = v21;
    v22 = 14352;
  }

  *(a1 + v22) = v21;
  if (v7)
  {
    *(a1 + 14632) = v7;
  }

  else
  {
    *(a1 + 14632) = sub_1AF12F10C(a2, v20);
    v7 = sub_1AF12F344(a2, v23);
  }

  *(a1 + 14640) = v7;
  *(a1 + 14680) = sub_1AF12EE9C(a2, 0);
  *(a1 + 14664) = -1;
  *(a1 + 14672) = 0;
  result = sub_1AF12464C(a1, v24);
  if (result)
  {
    v27 = 0;
    v28 = (a1 + 14872);
    do
    {
      *(v28 - 1) = 0;
      *v28 = 0;
      v28 += 4;
      ++v27;
      result = sub_1AF12464C(a1, v26);
    }

    while (v27 < result);
  }

  if (v10[2304])
  {
    v29 = 0;
    v30 = (a1 + 11264);
    v32 = *(MEMORY[0x1E69E9B18] + 32);
    v31 = *(MEMORY[0x1E69E9B18] + 48);
    v34 = *MEMORY[0x1E69E9B18];
    v33 = *(MEMORY[0x1E69E9B18] + 16);
    do
    {
      v30[2] = v32;
      v30[3] = v31;
      *v30 = v34;
      v30[1] = v33;
      v30[64] = v34;
      v30[65] = v33;
      v30[66] = v32;
      v30[67] = v31;
      v30[131] = v31;
      v30[128] = v34;
      v30[129] = v33;
      v30[130] = v32;
      ++v29;
      v30 += 4;
    }

    while (v29 < v10[2304]);
  }

  return result;
}

__n128 *sub_1AF124608(__n128 *result, unsigned int a2, __n128 a3)
{
  v3 = result[912].n128_u8[3];
  if (v3 == 1)
  {
    if (a2)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v3 != 2)
  {
LABEL_5:
    result[896] = a3;
    v4 = result + 897;
    goto LABEL_6;
  }

  v4 = &result[a2 + 896];
LABEL_6:
  *v4 = a3;
  return result;
}

uint64_t sub_1AF12464C(_BYTE *a1, uint64_t a2)
{
  if (a1[14655] == 1)
  {
    if (a1[14592] != 2)
    {
      v2 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD2380(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }

    return 1;
  }

  if (a1[14656] == 1)
  {
    if (a1[14595] != 1 || a1[14592] != 6)
    {
      v10 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD2308(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    return 1;
  }

  return a1[14592];
}

void sub_1AF1246F4(float32x4_t *a1, uint64_t a2, uint64_t a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = &a1[a2 + 929];
  v4 = *(a3 + 224);
  v5 = *(a3 + 226);
  v6 = *(a3 + 228);
  if ((*(a3 + 221) & 0x10) == 0)
  {
    goto LABEL_41;
  }

  v9 = sub_1AF1304FC(a1[918].i64[1]);
  if (v9)
  {
    if ((*(v3 + 8) + v6) > *(v3 + 12))
    {
      v11 = sub_1AF0D5194(v9, v10);
      v9 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);
      if (v9)
      {
        sub_1AFDD23F8(v11, v10, v12, v13, v14, v15, v16, v17);
      }
    }

    v18 = *(v3 + 8);
    if (v6)
    {
      v19 = 0;
      v20 = (*v3 + 4 * v18);
      do
      {
        *v20 = v4;
        v20[1] = v5 + v19++;
        v20 += 2;
      }

      while (v6 != v19);
    }

    v21 = v18 + v6;
    *(v3 + 8) = v21;
    v22 = *(a3 + 232);
    v23 = *v22;
    if (*v22)
    {
      v24 = 0;
      do
      {
        v25 = *(a3 + 232) + 12 * v24;
        v26 = *(v25 + 12);
        v27 = *(v25 + 14);
        v28 = *(v25 + 16);
        if ((v21 + v28) > *(v3 + 12))
        {
          v29 = sub_1AF0D5194(v9, v10);
          v9 = os_log_type_enabled(v29, OS_LOG_TYPE_FAULT);
          if (v9)
          {
            sub_1AFDD2470(&buf, (buf.i64 + 4), v29);
          }
        }

        v30 = *(v3 + 8);
        if (v28)
        {
          v31 = 0;
          v32 = (*v3 + 4 * v30);
          do
          {
            *v32 = v26;
            v32[1] = v27 + v31++;
            v32 += 2;
          }

          while (v28 != v31);
        }

        v21 = v30 + v28;
        *(v3 + 8) = v21;
        ++v24;
      }

      while (v24 != v23);
    }

    return;
  }

  v33 = *(a3 + 232);
  v34 = *v33;
  if (*(v33 + 2))
  {
    buf = 0uLL;
    sub_1AF1C39FC(a3, 0, &buf);
    v70 = 0uLL;
    v36 = sub_1AF1B9B04(a3, v35);
    sub_1AF1DA304(&buf, v36, &v70);
    v37 = vaddq_f32(vaddq_f32(v70, vmulq_laneq_f32(a1[921], v70, 3)), vmulq_laneq_f32(a1[922], v70, 3));
    v38 = a1[925];
    v39 = a1[926];
    v40 = a1[927];
    v41 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a1[928], v40, v70, 2), v39, *v70.f32, 1), v38, v70.f32[0]);
    v42 = vdupq_laneq_s32(v41, 3);
    v43.i64[0] = 0;
    v44 = vdupq_n_s32(0x322BCC77u);
    v45 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a1[928], v40, v37, 2), v39, *v37.f32, 1), v38, v37.f32[0]);
    v46 = vdupq_laneq_s32(v45, 3);
    v47 = vsubq_f32(vdivq_f32(v41, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v42, v43)), 0), v42, v44)), vdivq_f32(v45, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v46, v43)), 0), v46, v44)));
    v48 = vmulq_f32(v47, v47);
    v49 = sqrtf(v48.f32[2] + vaddv_f32(*v48.f32)) * 0.5;
    v51 = sub_1AF130548(a1[918].i64[1]);
    LODWORD(v50) = 0;
    v51.n128_u32[0] = v51.n128_u32[3];
    if (v51.n128_f32[2] > v51.n128_f32[3])
    {
      v51.n128_f32[0] = v51.n128_f32[2];
    }

    v52 = v51.n128_f32[0] * v49;
    if (v33[2] >= v52)
    {
      if (v34 < 2)
      {
        LODWORD(v50) = 1;
      }

      else
      {
        v53 = v33 + 5;
        v50 = 1;
        while (*v53 >= v52)
        {
          ++v50;
          v53 += 3;
          if (v34 == v50)
          {
            LODWORD(v50) = v34;
            goto LABEL_39;
          }
        }
      }
    }

    goto LABEL_39;
  }

  v54 = vmulq_f32(a1[920], sub_1AF1B9AB4(a3, v10));
  v55 = COERCE_FLOAT(HIDWORD(*&a1[920])) + (v54.f32[2] + vaddv_f32(*v54.f32));
  if (v55 < 0.0)
  {
    v55 = 0.0;
  }

  if (v33[2] > v55)
  {
    goto LABEL_41;
  }

  if (v34 >= 2)
  {
    LODWORD(v50) = v34;
    v56 = v33 + 5;
    v57 = 1;
    while (*v56 <= v55)
    {
      ++v57;
      v56 += 3;
      if (v34 == v57)
      {
        goto LABEL_39;
      }
    }

    LODWORD(v50) = v57;
LABEL_39:
    if (v50 < 1)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  LODWORD(v50) = 1;
LABEL_40:
  v58 = *(a3 + 232) + 12 * v50;
  v4 = *v58;
  v5 = *(v58 + 2);
  v6 = *(v58 + 4);
LABEL_41:
  if ((*(v3 + 8) + v6) > *(v3 + 12))
  {
    v59 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD23F8(v59, v60, v61, v62, v63, v64, v65, v66);
    }
  }

  v67 = *(v3 + 8);
  if (v6)
  {
    v68 = 0;
    v69 = (*v3 + 4 * v67);
    do
    {
      *v69 = v4;
      v69[1] = v5 + v68++;
      v69 += 2;
    }

    while (v6 != v68);
  }

  *(v3 + 8) = v67 + v6;
}

uint64_t sub_1AF124B08(float32x4_t *a1, uint64_t a2, uint64_t a3)
{
  if (a1[917].i64[0] & *(a3 + 208) | ((a1[916].i64[1] & *(a3 + 208)) == 0))
  {
    return 0;
  }

  if (*(a3 + 228))
  {
    if (sub_1AF1BA9A4(a3, a2))
    {
      return 1;
    }

    if ((*(a3 + 221) & 8) == 0 || (a1[945].i8[0] = 1, (a1[915].i8[9] & 1) == 0) && !a1[914].i64[0])
    {
      sub_1AF1246F4(a1, a2, a3);
    }
  }

  return 0;
}

uint64_t sub_1AF124BBC(float32x4_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AF124B08(a1, a2, a3);
  if (!result)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = sub_1AF124C50;
    v7[3] = &unk_1E7A79B00;
    v7[4] = a1;
    v7[5] = a2;
    return sub_1AF1B7E14(a3, v7);
  }

  return result;
}

uint64_t sub_1AF124C60(float32x4_t *a1, uint64_t a2, float32x4_t *a3)
{
  if (sub_1AF1B7B34(a3, a2))
  {
    v6 = 2;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    result = sub_1AF1B81E4(a3, 0, &v15);
    if ((result & 1) == 0)
    {
      return result;
    }

    v9 = &a1[6 * a2];
    v10 = v9[3];
    v14[2] = v9[2];
    v14[3] = v10;
    v11 = v9[5];
    v14[4] = v9[4];
    v14[5] = v11;
    v12 = v9[1];
    v14[0] = *v9;
    v14[1] = v12;
    result = vfx_frustum_classify_aabb(v14, v15, v16);
    v6 = result;
    if (result == 1)
    {
      return result;
    }
  }

  result = sub_1AF124B08(a1, a2, a3);
  if (!result)
  {
    if (v6 == 2)
    {
      result = sub_1AF167434(a3);
      if (result)
      {
        for (i = a3[4].i64[1]; i; i = *(i + 80))
        {
          result = sub_1AF124C60(a1, a2, i);
        }
      }
    }

    else if (!v6)
    {
      result = sub_1AF167434(a3);
      if (result)
      {
        for (j = a3[4].i64[1]; j; j = *(j + 80))
        {
          result = sub_1AF124BBC(a1, a2, j);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF124D80(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return -1;
  }

  v3 = sub_1AF1BB260(a1, a2);
  if (v3)
  {

    return sub_1AF15D50C(v3, v4);
  }

  v6 = sub_1AF1B75E8(a1, v4);
  if (!v6 || sub_1AF19CBB4(v6, v7) != 4)
  {
    return -1;
  }

  return sub_1AF1BAF14(a1, v8);
}

double sub_1AF124E04(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF12F344(*(a1 + 14696), a2);
  if (v3)
  {
    v6 = v3;
    v7 = sub_1AF1B9B04(v3, v4);
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = v7[3];
    v12 = vnegq_f32(v10);
    v13 = vmulq_f32(v11, v12);
    v12.f32[3] = -(v13.f32[2] + vaddv_f32(*v13.f32));
    *(a1 + 14720) = v12;
    *(a1 + 14736) = v8;
    *(a1 + 14752) = v9;
    *(a1 + 14768) = v10;
    *(a1 + 14784) = v11;
    v33 = sub_1AF130548(*(a1 + 14696));
    memset(v32, 0, sizeof(v32));
    v14 = sub_1AF27F12C(v6, v32);
    if ((v14 & 1) == 0)
    {
      v16 = sub_1AF0D5194(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD24C0(v16, v15, v17, v18, v19, v20, v21, v22);
      }
    }

    if ((v32[0] & 2) != 0 || sub_1AF12FE84(*(a1 + 14696), v15))
    {
      sub_1AF27F230(v32, v6, &v33, *(a1 + 14688));
    }

    if (*(a1 + 14654) == 1)
    {
      *(v32 + 4) = vcvt_f32_f64(*(a1 + 14704));
    }

    v23 = sub_1AF15E62C(v32, &v33);
    v30 = *(v23 + 1);
    v31 = *v23;
    v28 = *(v23 + 3);
    v29 = *(v23 + 2);
    v39 = __invert_f4(*(a1 + 14736));
    v24 = 0;
    v34 = v39;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    do
    {
      *(&v35 + v24 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(*&v34.columns[v24])), v30, *v34.columns[v24].f32, 1), v29, v34.columns[v24], 2), v28, v34.columns[v24], 3);
      ++v24;
    }

    while (v24 != 4);
    result = *&v35;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    *(a1 + 14800) = v35;
    *(a1 + 14816) = v25;
    *(a1 + 14832) = v26;
    *(a1 + 14848) = v27;
  }

  return result;
}

uint64_t sub_1AF124FB0(uint64_t result)
{
  for (i = 0; i != 1024; i += 64)
  {
    v2 = (result + i);
    v2[192] = xmmword_1AFE20150;
    v2[193] = xmmword_1AFE20160;
    v2[194] = xmmword_1AFE20180;
    v2[195] = xmmword_1AFE201A0;
    v2[256] = xmmword_1AFE20150;
    v2[257] = xmmword_1AFE20160;
    v2[258] = xmmword_1AFE20180;
    v2[259] = xmmword_1AFE201A0;
    v2[320] = xmmword_1AFE20150;
    v2[321] = xmmword_1AFE20160;
    v2[322] = xmmword_1AFE20180;
    v2[323] = xmmword_1AFE201A0;
    v2[384] = xmmword_1AFE20150;
    v2[385] = xmmword_1AFE20160;
    v2[386] = xmmword_1AFE20180;
    v2[387] = xmmword_1AFE201A0;
    v2[448] = xmmword_1AFE20150;
    v2[449] = xmmword_1AFE20160;
    v2[450] = xmmword_1AFE20180;
    v2[451] = xmmword_1AFE201A0;
    v2[512] = xmmword_1AFE20150;
    v2[513] = xmmword_1AFE20160;
    v2[514] = xmmword_1AFE20180;
    v2[515] = xmmword_1AFE201A0;
    v2[576] = xmmword_1AFE20150;
    v2[577] = xmmword_1AFE20160;
    v2[578] = xmmword_1AFE20180;
    v2[579] = xmmword_1AFE201A0;
    v2[640] = xmmword_1AFE20150;
    v2[641] = xmmword_1AFE20160;
    v2[642] = xmmword_1AFE20180;
    v2[643] = xmmword_1AFE201A0;
  }

  return result;
}

void sub_1AF125068(uint64_t a1, int a2)
{
  v3 = *(a1 + 14632);
  if (!v3)
  {

    sub_1AF124FB0(a1);
    return;
  }

  v4 = a1 + 12288;
  if (*(a1 + 14648) == 1)
  {
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v205 = 0u;
    memset(&v204, 0, sizeof(v204));
    v5 = sub_1AF27F12C(v3, &v204);
    if ((v5 & 1) == 0)
    {
      v7 = sub_1AF0D5194(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD257C(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    v15 = *(v204.columns[0].i64 + 4);
    v16 = v204.columns[0].f32[1];
    *(a1 + 14704) = v204.columns[0].f32[1];
    *(a1 + 14712) = *(&v15 + 1);
    v18 = __tanpi(0.25);
    v19 = 0;
    if (v18 == 0.0)
    {
      v20 = 1.0;
    }

    else
    {
      v20 = 1.0 / v18;
    }

    v21 = v20;
    v22 = v16 + 1.0;
    if (*(&v15 + 1) > *&v15)
    {
      v22 = *(&v15 + 1);
    }

    v23 = v22 / (v16 - v22);
    *&v24 = v23;
    v25 = v21;
    LODWORD(v26) = 0;
    *(&v26 + 1) = v21;
    *&v27 = v23 * v16;
    v28.i64[0] = 0;
    v28.i64[1] = __PAIR64__(-1.0, v24);
    v29.i64[0] = 0;
    v29.i64[1] = v27;
    v212.columns[0] = LODWORD(v25);
    v212.columns[1] = v26;
    v212.columns[2] = v28;
    v212.columns[3] = v29;
    memset(&v213, 0, sizeof(v213));
    do
    {
      v213.columns[v19] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*&v212.columns[v19])), xmmword_1AFE20160, *v212.columns[v19].f32, 1), xmmword_1AFE206C0, v212.columns[v19], 2), xmmword_1AFE20BF0, v212.columns[v19], 3);
      ++v19;
    }

    while (v19 != 4);
    v199 = v213.columns[1];
    v201 = v213.columns[0];
    v194 = v213.columns[3];
    v197 = v213.columns[2];
    v30 = sub_1AF1B9B04(v3, v17);
    v31 = 0;
    v32 = *v30;
    v33 = v30[1];
    v34 = v30[2];
    v35 = v30[3];
    v212.columns[0] = xmmword_1AFE20180;
    v212.columns[1] = xmmword_1AFE20160;
    v212.columns[2] = xmmword_1AFE20C00;
    v212.columns[3] = xmmword_1AFE201A0;
    memset(&v213, 0, sizeof(v213));
    do
    {
      v213.columns[v31] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*&v212.columns[v31])), v33, *v212.columns[v31].f32, 1), v34, v212.columns[v31], 2), v35, v212.columns[v31], 3);
      ++v31;
    }

    while (v31 != 4);
    v36 = 0;
    v37 = a1 + 7168;
    v38 = v213.columns[1];
    v39 = v213.columns[2];
    v40 = v213.columns[3];
    *(a1 + 7168) = v213.columns[0];
    *(a1 + 7184) = v38;
    *(a1 + 7200) = v39;
    *(a1 + 7216) = v40;
    v212.columns[0] = xmmword_1AFE20C10;
    v212.columns[1] = xmmword_1AFE20160;
    v212.columns[2] = xmmword_1AFE20150;
    v212.columns[3] = xmmword_1AFE201A0;
    memset(&v213, 0, sizeof(v213));
    do
    {
      v213.columns[v36] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*&v212.columns[v36])), v33, *v212.columns[v36].f32, 1), v34, v212.columns[v36], 2), v35, v212.columns[v36], 3);
      ++v36;
    }

    while (v36 != 4);
    v41 = 0;
    v42 = v213.columns[1];
    v43 = v213.columns[2];
    v44 = v213.columns[3];
    *(a1 + 7232) = v213.columns[0];
    *(a1 + 7248) = v42;
    *(a1 + 7264) = v43;
    *(a1 + 7280) = v44;
    v212.columns[0] = xmmword_1AFE20150;
    v212.columns[1] = xmmword_1AFE20180;
    v212.columns[2] = xmmword_1AFE20C20;
    v212.columns[3] = xmmword_1AFE201A0;
    memset(&v213, 0, sizeof(v213));
    do
    {
      v213.columns[v41] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*&v212.columns[v41])), v33, *v212.columns[v41].f32, 1), v34, v212.columns[v41], 2), v35, v212.columns[v41], 3);
      ++v41;
    }

    while (v41 != 4);
    v45 = 0;
    v46 = v213.columns[1];
    v47 = v213.columns[2];
    v48 = v213.columns[3];
    *(a1 + 7296) = v213.columns[0];
    *(a1 + 7312) = v46;
    *(a1 + 7328) = v47;
    *(a1 + 7344) = v48;
    v212.columns[0] = xmmword_1AFE20150;
    v212.columns[1] = xmmword_1AFE20C10;
    v212.columns[2] = xmmword_1AFE20160;
    v212.columns[3] = xmmword_1AFE201A0;
    memset(&v213, 0, sizeof(v213));
    do
    {
      v213.columns[v45] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*&v212.columns[v45])), v33, *v212.columns[v45].f32, 1), v34, v212.columns[v45], 2), v35, v212.columns[v45], 3);
      ++v45;
    }

    while (v45 != 4);
    v49 = 0;
    v50 = v213.columns[1];
    v51 = v213.columns[2];
    v52 = v213.columns[3];
    *(a1 + 7360) = v213.columns[0];
    *(a1 + 7376) = v50;
    *(a1 + 7392) = v51;
    *(a1 + 7408) = v52;
    v212.columns[0] = xmmword_1AFE20150;
    v212.columns[1] = xmmword_1AFE20160;
    v212.columns[2] = xmmword_1AFE20180;
    v212.columns[3] = xmmword_1AFE201A0;
    memset(&v213, 0, sizeof(v213));
    do
    {
      v213.columns[v49] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*&v212.columns[v49])), v33, *v212.columns[v49].f32, 1), v34, v212.columns[v49], 2), v35, v212.columns[v49], 3);
      ++v49;
    }

    while (v49 != 4);
    v53 = 0;
    v54 = v213.columns[1];
    v55 = v213.columns[2];
    v56 = v213.columns[3];
    *(a1 + 7424) = v213.columns[0];
    *(a1 + 7440) = v54;
    *(a1 + 7456) = v55;
    *(a1 + 7472) = v56;
    v212.columns[0] = xmmword_1AFE20C00;
    v212.columns[1] = xmmword_1AFE20160;
    v212.columns[2] = xmmword_1AFE20C10;
    v212.columns[3] = xmmword_1AFE201A0;
    memset(&v213, 0, sizeof(v213));
    do
    {
      v213.columns[v53] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*&v212.columns[v53])), v33, *v212.columns[v53].f32, 1), v34, v212.columns[v53], 2), v35, v212.columns[v53], 3);
      ++v53;
    }

    while (v53 != 4);
    v57 = 0;
    v58 = v213.columns[1];
    v59 = v213.columns[2];
    v60 = v213.columns[3];
    *(a1 + 7488) = v213.columns[0];
    *(a1 + 7504) = v58;
    *(a1 + 7520) = v59;
    *(a1 + 7536) = v60;
    v61 = a1 + 9216;
    v62 = a1 + 0x2000;
    v63 = a1 + 10240;
    v65 = v199;
    v64 = v201;
    v67 = v194;
    v66 = v197;
    do
    {
      v68 = (v61 + (v57 << 6));
      *v68 = v64;
      v68[1] = v65;
      v68[2] = v66;
      v68[3] = v67;
      v215 = __invert_f4(*(v37 + (v57 << 6)));
      v67 = v194;
      v66 = v197;
      v65 = v199;
      v64 = v201;
      v69 = 0;
      *(v62 + (v57 << 6)) = v215;
      v212 = v215;
      memset(&v213, 0, sizeof(v213));
      do
      {
        v213.columns[v69] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v201, COERCE_FLOAT(*&v212.columns[v69])), v199, *v212.columns[v69].f32, 1), v197, v212.columns[v69], 2), v194, v212.columns[v69], 3);
        ++v69;
      }

      while (v69 != 4);
      v70 = (v63 + (v57 << 6));
      v71 = v213.columns[1];
      v72 = v213.columns[2];
      v73 = v213.columns[3];
      *v70 = v213.columns[0];
      v70[1] = v71;
      v70[2] = v72;
      v70[3] = v73;
      ++v57;
    }

    while (v57 != 6);
    return;
  }

  v74 = *(a1 + 14657);
  v75 = *(a1 + 14696);
  if ((*(a1 + 14655) & 1) == 0 && v74 == 2)
  {
    v77 = *(a1 + 14640);
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v205 = 0u;
    memset(&v204, 0, sizeof(v204));
    v78 = sub_1AF27F12C(v3, &v204);
    if ((v78 & 1) == 0)
    {
      v80 = sub_1AF0D5194(v78, v79);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD24C0(v80, v79, v81, v82, v83, v84, v85, v86);
      }
    }

    v203 = *(a1 + 14336);
    if ((v204.columns[0].i8[0] & 2) != 0 || sub_1AF12FE84(v75, v79))
    {
      sub_1AF27F230(&v204, v3, &v203, *(a1 + 14688));
    }

    if (*(a1 + 14654) == 1)
    {
      *&v204.columns[0].i32[1] = vcvt_f32_f64(*(a1 + 14704));
    }

    else
    {
      *(a1 + 14704) = vcvtq_f64_f32(*&v204.columns[0].i32[1]);
    }

    v90 = (a1 + 14336);
    v91 = sub_1AF1B9B04(v3, v87);
    v218 = *v91;
    v200 = v218.columns[1];
    v202 = v91->columns[0];
    v196 = v218.columns[3];
    v198 = v218.columns[2];
    v219 = __invert_f4(*v91);
    v192 = v219.columns[1];
    v193 = v219.columns[0];
    v190 = v219.columns[3];
    v191 = v219.columns[2];
    v92 = sub_1AF15E62C(&v204, &v203);
    v93 = *v92;
    v94 = *(v92 + 1);
    v96 = *(v92 + 2);
    v95 = *(v92 + 3);
    if (a2)
    {
      v185 = *(v92 + 2);
      v186 = *(v92 + 3);
      v187 = *(v92 + 1);
      v189 = *v92;
      if (sub_1AF1309BC(v75))
      {
        v97 = sub_1AF1309D4(v75);
        *v98.i64 = sub_1AF1309F4(v75, v97);
        v102 = 0;
        v212.columns[0] = v189;
        v212.columns[1] = v187;
        v212.columns[2] = v185;
        v212.columns[3] = v186;
        memset(&v213, 0, sizeof(v213));
        do
        {
          v213.columns[v102] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v98, COERCE_FLOAT(*&v212.columns[v102])), v99, *v212.columns[v102].f32, 1), v100, v212.columns[v102], 2), v101, v212.columns[v102], 3);
          ++v102;
        }

        while (v102 != 4);
        v187 = v213.columns[1];
        v189 = v213.columns[0];
        v185 = v213.columns[2];
        v186 = v213.columns[3];
      }

      if (sub_1AF130BF0(v75))
      {
        v103 = sub_1AF130C00(v75, 0);
        v95 = v186;
        *v104.f32 = vadd_f32(*v185.i8, v103);
        v104.i64[1] = vextq_s8(v185, v185, 8uLL).u64[0];
        v96 = v104;
        v106 = v200;
        v105 = v202;
        v108 = v196;
        v107 = v198;
        v110 = v192;
        v109 = v193;
        v112 = v190;
        v111 = v191;
        v94 = v187;
        v93 = v189;
      }

      else
      {
        v106 = v200;
        v105 = v202;
        v108 = v196;
        v107 = v198;
        v110 = v192;
        v109 = v193;
        v112 = v190;
        v111 = v191;
        v94 = v187;
        v93 = v189;
        v96 = v185;
        v95 = v186;
      }
    }

    else
    {
      v106 = v200;
      v105 = v202;
      v108 = v196;
      v107 = v198;
      v110 = v192;
      v109 = v193;
      v112 = v190;
      v111 = v191;
    }

    v113 = 0;
    v212.columns[0] = v109;
    v212.columns[1] = v110;
    v212.columns[2] = v111;
    v212.columns[3] = v112;
    memset(&v213, 0, sizeof(v213));
    do
    {
      v213.columns[v113] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, COERCE_FLOAT(*&v212.columns[v113])), v94, *v212.columns[v113].f32, 1), v96, v212.columns[v113], 2), v95, v212.columns[v113], 3);
      ++v113;
    }

    while (v113 != 4);
    v114 = v213.columns[0];
    v115 = v213.columns[1];
    v116 = v213.columns[2];
    v117 = v213.columns[3];
    *(a1 + 0x2000) = v109;
    *(a1 + 8208) = v110;
    *(a1 + 8224) = v111;
    *(a1 + 8240) = v112;
    *(a1 + 9216) = v93;
    *(a1 + 9232) = v94;
    *(a1 + 9248) = v96;
    *(a1 + 9264) = v95;
    *(a1 + 7168) = v105;
    *(a1 + 7184) = v106;
    *(a1 + 7200) = v107;
    *(a1 + 7216) = v108;
    *(a1 + 10240) = v114;
    *(a1 + 10256) = v115;
    *(a1 + 10272) = v116;
    *(a1 + 10288) = v117;
    LODWORD(v118) = *(a1 + 14592);
    if (v118 >= 2)
    {
      v119 = (a1 + 7232);
      v120 = 1;
      do
      {
        v119[64] = v109;
        v119[65] = v110;
        v119[66] = v111;
        v119[67] = v112;
        v119[128] = v93;
        v119[129] = v94;
        v119[130] = v96;
        v119[131] = v95;
        *v119 = v105;
        v119[1] = v106;
        v119[2] = v107;
        v119[3] = v108;
        v119[192] = v114;
        v119[193] = v115;
        v119[194] = v116;
        v119[195] = v117;
        ++v120;
        v119 += 4;
        v118 = *(a1 + 14592);
      }

      while (v120 < v118);
    }

    if (v3 == v77)
    {
      *(a1 + 3072) = v105;
      *(a1 + 3088) = v106;
      *(a1 + 3104) = v107;
      *(a1 + 3120) = v108;
      *(a1 + 5120) = v93;
      *(a1 + 5136) = v94;
      *(a1 + 5152) = v96;
      *(a1 + 5168) = v95;
      if (!v118)
      {
        return;
      }
    }

    else
    {
      v121 = sub_1AF27F12C(v77, &v204);
      if ((v121 & 1) == 0)
      {
        v123 = sub_1AF0D5194(v121, v122);
        if (os_log_type_enabled(v123, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD24C0(v123, v122, v124, v125, v126, v127, v128, v129);
        }
      }

      if ((v204.columns[0].i8[0] & 2) != 0 || sub_1AF12FE84(v75, v122))
      {
        sub_1AF27F230(&v204, v3, &v203, *(a1 + 14688));
      }

      *(a1 + 14704) = vcvtq_f64_f32(*&v204.columns[0].i32[1]);
      v130 = sub_1AF15E62C(&v204, &v203);
      v131 = *(v130 + 2);
      v132 = *(v130 + 3);
      v133 = *(v130 + 1);
      *(a1 + 5120) = *v130;
      *(a1 + 5168) = v132;
      *(a1 + 5152) = v131;
      *(a1 + 5136) = v133;
      v135 = sub_1AF1B9B04(v77, v134);
      v136 = v135[1];
      v137 = v135[2];
      v138 = v135[3];
      *(a1 + 3072) = *v135;
      *(a1 + 3088) = v136;
      *(a1 + 3104) = v137;
      *(a1 + 3120) = v138;
      if (!*(a1 + 14592))
      {
        return;
      }
    }

    v139 = 0;
    v140 = (a1 + 14352);
    for (i = v90; ; ++i)
    {
      v142 = sub_1AF12FCE8(v75, v139);
      v143 = *(v4 + 2307);
      if (v143 != 1)
      {
        break;
      }

      if (!v139)
      {
        goto LABEL_78;
      }

LABEL_80:
      if (++v139 >= *(v4 + 2304))
      {
        return;
      }
    }

    v144 = i;
    if (v143 != 2)
    {
LABEL_78:
      *v90 = v142;
      v144 = v140;
    }

    *v144 = v142;
    goto LABEL_80;
  }

  v88 = sub_1AF12FAE0(*(a1 + 14696));
  *(a1 + 14592) = v88;
  if (!v74)
  {
LABEL_56:
    v195.columns[0] = *MEMORY[0x1E69E9B18];
    v195.columns[1] = *(MEMORY[0x1E69E9B18] + 16);
    v217.columns[0] = *(MEMORY[0x1E69E9B18] + 48);
    v195.columns[2] = *(MEMORY[0x1E69E9B18] + 32);
    v195.columns[3] = v217.columns[0];
    goto LABEL_85;
  }

  if (v74 != 1)
  {
    if (*(a1 + 14655) != 1)
    {
      v145 = sub_1AF0D5194(v88, v89);
      v146 = os_log_type_enabled(v145, OS_LOG_TYPE_ERROR);
      v217.columns[0] = 0uLL;
      v195.columns[3] = 0u;
      if (v146)
      {
        sub_1AFDD2538(v145);
        v217.columns[0] = 0uLL;
      }

      v195.columns[1] = v217.columns[0];
      v195.columns[2] = v217.columns[0];
      v195.columns[0] = v217.columns[0];
      goto LABEL_85;
    }

    goto LABEL_56;
  }

  v216 = *sub_1AF1B9B04(v3, v89);
  v217 = __invert_f4(v216);
  v195 = v217;
LABEL_85:
  if (*(a1 + 14592))
  {
    v147 = 0;
    v188 = (a1 + 14336);
    while (1)
    {
      v148 = (a1 + 9216 + (v147 << 6));
      v149 = sub_1AF12FAE8(v75, 0, v147);
      v150 = v149[3];
      v152 = *v149;
      v151 = v149[1];
      v148[2] = v149[2];
      v148[3] = v150;
      *v148 = v152;
      v148[1] = v151;
      v153 = sub_1AF12FAE8(v75, 1, v147);
      v154 = 0;
      v155 = *v153;
      v156 = v153[1];
      v157 = v153[2];
      v158 = v153[3];
      v213 = v195;
      memset(&v204, 0, sizeof(v204));
      do
      {
        v204.columns[v154] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v155, COERCE_FLOAT(*&v213.columns[v154])), v156, *v213.columns[v154].f32, 1), v157, v213.columns[v154], 2), v158, v213.columns[v154], 3);
        ++v154;
      }

      while (v154 != 4);
      v220 = v204;
      v159 = (a1 + 0x2000 + (v147 << 6));
      *v159 = v204.columns[0];
      v159[1] = v220.columns[1];
      v159[2] = v220.columns[2];
      v159[3] = v220.columns[3];
      v160 = a1 + 7168 + (v147 << 6);
      v221 = __invert_f4(v220);
      v161 = 0;
      v162 = *v159;
      v163 = v159[1];
      v164 = v159[2];
      v165 = v159[3];
      *v160 = v221;
      v166 = *v148;
      v167 = v148[1];
      v168 = v148[2];
      v169 = v148[3];
      v213.columns[0] = v162;
      v213.columns[1] = v163;
      v213.columns[2] = v164;
      v213.columns[3] = v165;
      memset(&v204, 0, sizeof(v204));
      do
      {
        v204.columns[v161] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v166, COERCE_FLOAT(*&v213.columns[v161])), v167, *v213.columns[v161].f32, 1), v168, v213.columns[v161], 2), v169, v213.columns[v161], 3);
        ++v161;
      }

      while (v161 != 4);
      v170 = v204.columns[1];
      v171 = a1 + 10240 + (v147 << 6);
      v172 = v204.columns[2];
      v173 = v204.columns[3];
      *v171 = v204.columns[0];
      *(v171 + 16) = v170;
      *(v171 + 32) = v172;
      *(v171 + 48) = v173;
      v174 = (a1 + 3072 + (v147 << 6));
      v175 = *(v160 + 16);
      *v174 = *v160;
      v174[1] = v175;
      v176 = *(v160 + 48);
      v174[2] = *(v160 + 32);
      v174[3] = v176;
      v177 = (a1 + 5120 + (v147 << 6));
      v178 = v148[1];
      *v177 = *v148;
      v177[1] = v178;
      v179 = v148[3];
      v177[2] = v148[2];
      v177[3] = v179;
      v217.columns[0] = sub_1AF12FCE8(v75, v147);
      v180 = *(a1 + 14595);
      if (v180 != 1)
      {
        break;
      }

      if (!v147)
      {
        goto LABEL_95;
      }

LABEL_97:
      if (++v147 >= *(a1 + 14592))
      {
        goto LABEL_98;
      }
    }

    if (v180 == 2)
    {
      v181 = &v188[v147];
    }

    else
    {
LABEL_95:
      *v188 = v217.columns[0];
      v181 = (a1 + 14352);
    }

    *v181 = v217.columns[0];
    goto LABEL_97;
  }

LABEL_98:
  v182 = *(a1 + 9256);
  v183 = v182;
  v184 = *(a1 + 9272);
  *v217.columns[3].i64 = v184;
  v217.columns[0].f32[0] = v184 / v182;
  *v217.columns[2].i64 = v184 / (v183 + 1.0);
  *v217.columns[1].i64 = (*v217.columns[3].i64 + -1.0) / v183;
  if (*(a1 + 9260) != 0.0)
  {
    v217.columns[1].i64[0] = v217.columns[2].i64[0];
  }

  v217.columns[1].f32[0] = *v217.columns[1].i64;
  *v217.columns[2].f32 = vcgt_f32(*v217.columns[0].f32, *v217.columns[1].f32);
  v217.columns[0].i32[1] = v217.columns[1].i32[0];
  *(a1 + 14704) = vcvtq_f64_f32(vbsl_s8(vdup_lane_s32(*v217.columns[2].f32, 0), vrev64_s32(*v217.columns[0].f32), *v217.columns[0].f32));
}

__n128 sub_1AF125C8C(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 14595) == 2)
  {
    v2 = a1 + 14336 + 16 * a2;
  }

  else
  {
    v2 = a1 + 14336;
  }

  return *v2;
}

void sub_1AF125CF4(uint64_t a1, double a2, double a3, double a4, double a5, float32x4_t a6, float32x4_t a7)
{
  v10 = (a1 + 12288);
  if (*(a1 + 14592))
  {
    v12 = 0;
    v216 = *(a1 + 14640);
    v217 = *(a1 + 14632);
    v214 = a1 + 10240;
    v213 = a1 + 1536;
    v13 = a1 + 10288;
    v14 = (a1 + 1616);
    do
    {
      v15 = *(v13 - 48);
      v16 = *(v13 - 32);
      v17 = *(v13 - 16);
      a6.f32[0] = *&v15.i32[3] - *v15.i32;
      LODWORD(v18) = HIDWORD(*v13);
      a7.f32[0] = *&v15.i32[3] + *v15.i32;
      a6.f32[1] = *&v16.i32[3] - *v16.i32;
      v19 = v18 + COERCE_FLOAT(*v13);
      LODWORD(v20) = HIDWORD(*(v13 - 48));
      a7.f32[1] = *&v16.i32[3] + *v16.i32;
      v9.f32[0] = *&v15.i32[3] + v20;
      LODWORD(v21) = HIDWORD(*(v13 - 32));
      LODWORD(v22) = HIDWORD(*(v13 - 16));
      a6.f32[2] = *(&v17 + 3) - *&v17;
      LODWORD(v23) = HIDWORD(*v13);
      v9.f32[1] = *&v16.i32[3] + v21;
      a7.f32[2] = *(&v17 + 3) + *&v17;
      v24 = v18 + v23;
      v8.f32[0] = *&v15.i32[3] - v20;
      v9.f32[2] = *(&v17 + 3) + v22;
      v8.f32[1] = *&v16.i32[3] - v21;
      v8.f32[2] = *(&v17 + 3) - v22;
      v25 = vmulq_f32(a6, a6);
      v26 = v18 - v23;
      v27 = vextq_s8(v16, v16, 8uLL);
      v28 = vextq_s8(v15, v15, 8uLL).u64[0];
      v29 = vmulq_f32(a7, a7);
      *v27.f32 = vsub_f32(vzip2_s32(v28, *v27.f32), vzip1_s32(v28, *v27.f32));
      v30 = vmulq_f32(v9, v9);
      v31 = v9;
      v32 = v18 - COERCE_FLOAT(*(v13 + 8));
      v27.f32[2] = *(&v17 + 3) - COERCE_FLOAT(*(v13 - 8));
      a6.f32[3] = v18 - COERCE_FLOAT(*v13);
      v33 = v27;
      v33.f32[3] = v32;
      v34 = vmulq_f32(v8, v8);
      a7.f32[3] = v19;
      v37 = v8;
      v35 = vzip2q_s32(v15, v16);
      v35.i32[2] = *(v13 - 8);
      v31.f32[3] = v24;
      v36 = vmulq_f32(v35, v35);
      v35.i32[3] = *(v13 + 8);
      v37.f32[3] = v26;
      *&v17 = v25.f32[2] + vaddv_f32(*v25.f32);
      v38 = vmulq_f32(v27, v27);
      v39 = vrsqrte_f32(v17);
      v40 = vmul_f32(v39, vrsqrts_f32(v17, vmul_f32(v39, v39)));
      *&v41 = v29.f32[2] + vaddv_f32(*v29.f32);
      *v29.f32 = vrsqrte_f32(v41);
      *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v41, vmul_f32(*v29.f32, *v29.f32)));
      v27.f32[0] = v30.f32[2] + vaddv_f32(*v30.f32);
      v42 = vrsqrte_f32(v27.u32[0]);
      v43 = vmul_f32(v42, vrsqrts_f32(v27.u32[0], vmul_f32(v42, v42)));
      *&v44 = v34.f32[2] + vaddv_f32(*v34.f32);
      *v34.f32 = vrsqrte_f32(v44);
      LODWORD(v45) = vmul_f32(*v29.f32, vrsqrts_f32(v41, vmul_f32(*v29.f32, *v29.f32))).u32[0];
      *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v44, vmul_f32(*v34.f32, *v34.f32)));
      v29.f32[0] = v36.f32[2] + vaddv_f32(*v36.f32);
      *v36.f32 = vrsqrte_f32(v29.u32[0]);
      *v36.f32 = vmul_f32(*v36.f32, vrsqrts_f32(v29.u32[0], vmul_f32(*v36.f32, *v36.f32)));
      v46 = vmulq_n_f32(a6, vmul_f32(v40, vrsqrts_f32(v17, vmul_f32(v40, v40))).f32[0]);
      v47 = COERCE_UNSIGNED_INT(v38.f32[2] + vaddv_f32(*v38.f32));
      *v38.f32 = vrsqrte_f32(v47);
      *v38.f32 = vmul_f32(*v38.f32, vrsqrts_f32(v47.u32[0], vmul_f32(*v38.f32, *v38.f32)));
      v38.i32[0] = vmul_f32(*v38.f32, vrsqrts_f32(v47.u32[0], vmul_f32(*v38.f32, *v38.f32))).u32[0];
      a6 = vmulq_n_f32(v37, vmul_f32(*v34.f32, vrsqrts_f32(v44, vmul_f32(*v34.f32, *v34.f32))).f32[0]);
      v14[-5] = v46;
      v14[-4] = vmulq_n_f32(a7, v45);
      v14[-2] = a6;
      v14[-1] = vmulq_n_f32(v35, vmul_f32(*v36.f32, vrsqrts_f32(v29.u32[0], vmul_f32(*v36.f32, *v36.f32))).f32[0]);
      v14[-3] = vmulq_n_f32(v31, vmul_f32(v43, vrsqrts_f32(v27.u32[0], vmul_f32(v43, v43))).f32[0]);
      *v14 = vmulq_n_f32(v33, v38.f32[0]);
      v14 += 6;
      ++v12;
      v13 += 64;
    }

    while (v12 < *(a1 + 14592));
    if (*(a1 + 14592))
    {
      v48 = 0;
      v49 = a1 + 4096;
      v215 = a1 + 3072;
      v50 = a1 + 6144;
      v51 = a1 + 5120;
      v211 = a1 + 9216;
      v212 = a1 + 0x2000;
      v210 = (a1 + 7488);
      v209 = (a1 + 8512);
      __asm { FMOV            V0.4S, #1.0 }

      v208 = HIDWORD(_Q0);
      do
      {
        v57 = (v50 + (v48 << 6));
        if (v217 == v216)
        {
          if (v10[2368] != 1)
          {
            v133 = (v212 + (v48 << 6));
            v134 = v133[1];
            v135 = (v49 + (v48 << 6));
            *v135 = *v133;
            v135[1] = v134;
            v136 = v133[3];
            v135[2] = v133[2];
            v135[3] = v136;
            v137 = (v51 + (v48 << 6));
            v138 = (v211 + (v48 << 6));
            v139 = v138[1];
            *v137 = *v138;
            v137[1] = v139;
            v140 = v138[3];
            v137[2] = v138[2];
            v137[3] = v140;
            v141 = (v214 + (v48 << 6));
            v142 = *v141;
            v143 = v141[1];
            v144 = v141[3];
            v57[2] = v141[2];
            v57[3] = v144;
            *v57 = v142;
            v57[1] = v143;
            goto LABEL_17;
          }

          v62 = 0;
          v63 = (v215 + (v48 << 6));
          v64 = *v210;
          v65 = v210[1];
          v66 = v210[3];
          v63[2] = v210[2];
          v63[3] = v66;
          *v63 = v64;
          v63[1] = v65;
          v67 = (v49 + (v48 << 6));
          v68 = *v209;
          v69 = v209[1];
          v70 = v209[2];
          v67[3] = v209[3];
          v71 = *(a1 + 14712);
          v72 = -v71;
          v73 = v71;
          if (v71 > 0.0)
          {
            v74 = v71;
          }

          else
          {
            v74 = v72 + 1.0;
          }

          *&v75 = 2.0 / (v73 - v72);
          v76 = v75;
          v77.i32[0] = 0;
          v77.i64[1] = 0;
          v77.i32[1] = v75;
          v78 = v72 - v74;
          *&v79 = 1.0 / (v72 - v74);
          v80.i64[0] = 0;
          v80.i64[1] = v79;
          v81 = -(v72 + v73) / (v73 - v72);
          v83.f32[0] = v81;
          v83.f32[1] = v81;
          *&v82 = v72 / v78;
          v83.i64[1] = __PAIR64__(v208, v82);
          v84 = (v51 + (v48 << 6));
          *v84 = v76.u32[0];
          v84[1] = v77.u64[0];
          v84[2] = v80;
          v84[3] = v83;
          v67[1] = v69;
          v67[2] = v70;
          *v67 = v68;
          v85 = *(v67 + 1);
          v33 = *(v67 + 2);
          v37 = *(v67 + 3);
          v218.columns[0] = *v67;
          v218.columns[1] = v85;
          v218.columns[2] = v33;
          v218.columns[3] = v37;
          v219 = 0u;
          v220 = 0u;
          v221 = 0u;
          v222 = 0u;
          do
          {
            *(&v219 + v62 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76, COERCE_FLOAT(*&v218.columns[v62])), v77, *v218.columns[v62].f32, 1), v80, v218.columns[v62], 2), v83, v218.columns[v62], 3);
            ++v62;
          }

          while (v62 != 4);
        }

        else
        {
          v223 = __invert_f4(*(v215 + (v48 << 6)));
          v58 = 0;
          *(v49 + (v48 << 6)) = v223;
          v59 = (v51 + (v48 << 6));
          v60 = *v59;
          v61 = v59[1];
          v33 = v59[2];
          v37 = v59[3];
          v218 = v223;
          v219 = 0u;
          v220 = 0u;
          v221 = 0u;
          v222 = 0u;
          do
          {
            *(&v219 + v58 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v60, COERCE_FLOAT(*&v218.columns[v58])), v61, *v218.columns[v58].f32, 1), v33, v218.columns[v58], 2), v37, v218.columns[v58], 3);
            ++v58;
          }

          while (v58 != 4);
        }

        v86 = v220;
        v87 = v221;
        v88 = v222;
        *v57 = v219;
        v57[1] = v86;
        v57[2] = v87;
        v57[3] = v88;
LABEL_17:
        if (v10[2367] == 1)
        {
          if (v48)
          {
            v89 = v48 - 1;
            v90 = (v214 + ((v48 - 1) << 6));
            v91 = (v214 + (v48 << 6));
            v92 = *v90;
            v93 = v90[1];
            v95 = v90[2];
            v94 = v90[3];
            v96 = *v91;
            v97 = v91[1];
            v99 = v91[2];
            v98 = v91[3];
            v100 = v98.f32[3];
            v101 = v98.f32[3] - v98.f32[0];
            v33.i32[0] = HIDWORD(*v90);
            LODWORD(v102) = HIDWORD(*v91);
            v103 = v97.f32[3];
            v104 = v99.f32[3];
            if ((*&v94.i32[3] - *v94.i32) >= (v98.f32[3] - v98.f32[0]))
            {
              v101 = *&v94.i32[3] - *v94.i32;
              v8.i32[0] = v99.i32[0];
              LODWORD(v105) = HIDWORD(*&v91[2]);
              v106 = v97.f32[0];
              LODWORD(v107) = HIDWORD(*&v91[1]);
              LODWORD(v108) = *v91->f32;
              LODWORD(v109) = HIDWORD(*v91);
              v99.i32[0] = v95.i32[0];
              LODWORD(v104) = HIDWORD(*&v90[2]);
              v97.i32[0] = v93.i32[0];
              LODWORD(v103) = HIDWORD(*&v90[1]);
              v96.i32[0] = *v90;
              LODWORD(v102) = HIDWORD(*v90);
            }

            else
            {
              v98.i32[0] = v94.i32[0];
              LODWORD(v100) = HIDWORD(*&v90[3]);
              v8.i32[0] = v95.i32[0];
              LODWORD(v105) = HIDWORD(*&v90[2]);
              v106 = *v93.i32;
              LODWORD(v107) = HIDWORD(*&v90[1]);
              LODWORD(v108) = *v90;
              LODWORD(v109) = HIDWORD(*v90);
            }

            v145 = v213 + 96 * v89;
            v96.f32[0] = v102 - v96.f32[0];
            v96.f32[1] = v103 - v97.f32[0];
            v96.f32[2] = v104 - v99.f32[0];
            v146 = vmulq_f32(v96, v96);
            v96.f32[3] = v101;
            v146.f32[0] = v146.f32[2] + vaddv_f32(*v146.f32);
            v147 = vrsqrte_f32(v146.u32[0]);
            v148 = vmul_f32(v147, vrsqrts_f32(v146.u32[0], vmul_f32(v147, v147)));
            v149 = vmulq_n_f32(v96, vmul_f32(v148, vrsqrts_f32(v146.u32[0], vmul_f32(v148, v148))).f32[0]);
            v96.f32[0] = v108 + v109;
            v96.f32[1] = v106 + v107;
            v150 = v98.f32[0] + v100;
            v96.f32[2] = v8.f32[0] + v105;
            v151 = vmulq_f32(v96, v96);
            v96.f32[3] = v150;
            v151.f32[0] = v151.f32[2] + vaddv_f32(*v151.f32);
            v152 = vrsqrte_f32(v151.u32[0]);
            v153 = vmul_f32(v152, vrsqrts_f32(v151.u32[0], vmul_f32(v152, v152)));
            v154 = vmulq_n_f32(v96, vmul_f32(v153, vrsqrts_f32(v151.u32[0], vmul_f32(v153, v153))).f32[0]);
            v8.f32[0] = v33.f32[0] + *&v92.i32[1];
            v8.f32[1] = *&v93.i32[3] + *&v93.i32[1];
            v8.f32[2] = *&v95.i32[3] + *&v95.i32[1];
            v155 = vmulq_f32(v8, v8);
            v8.f32[3] = *&v94.i32[3] + *&v94.i32[1];
            *&v156 = v155.f32[2] + vaddv_f32(*v155.f32);
            *v145 = v149;
            *(v145 + 16) = v154;
            *v154.f32 = vrsqrte_f32(v156);
            *v154.f32 = vmul_f32(*v154.f32, vrsqrts_f32(v156, vmul_f32(*v154.f32, *v154.f32)));
            v33.f32[0] = v33.f32[0] - *&v92.i32[1];
            v33.f32[1] = *&v93.i32[3] - *&v93.i32[1];
            v33.f32[2] = *&v95.i32[3] - *&v95.i32[1];
            v157 = vmulq_f32(v33, v33);
            v33.f32[3] = *&v94.i32[3] - *&v94.i32[1];
            v151.f32[0] = v157.f32[2] + vaddv_f32(*v157.f32);
            *v157.f32 = vrsqrte_f32(v151.u32[0]);
            *v157.f32 = vmul_f32(*v157.f32, vrsqrts_f32(v151.u32[0], vmul_f32(*v157.f32, *v157.f32)));
            *(v145 + 32) = vmulq_n_f32(v8, vmul_f32(*v154.f32, vrsqrts_f32(v156, vmul_f32(*v154.f32, *v154.f32))).f32[0]);
            *(v145 + 48) = vmulq_n_f32(v33, vmul_f32(*v157.f32, vrsqrts_f32(v151.u32[0], vmul_f32(*v157.f32, *v157.f32))).f32[0]);
            v158 = vextq_s8(v93, v93, 8uLL);
            v157.i64[0] = vextq_s8(v92, v92, 8uLL).u64[0];
            *v178.f32 = vsub_f32(vzip2_s32(*v157.f32, *v158.i8), vzip1_s32(*v157.f32, *v158.i8));
            v178.f32[2] = *&v95.i32[3] - *&v95.i32[2];
            v159 = vmulq_f32(v178, v178);
            v178.f32[3] = *&v94.i32[3] - *&v94.i32[2];
            v159.f32[0] = v159.f32[2] + vaddv_f32(*v159.f32);
            v160 = vrsqrte_f32(v159.u32[0]);
            v161 = vmul_f32(v160, vrsqrts_f32(v159.u32[0], vmul_f32(v160, v160)));
            *(v145 + 64) = vmulq_n_f32(v178, vmul_f32(v161, vrsqrts_f32(v159.u32[0], vmul_f32(v161, v161))).f32[0]);
            v162 = vzip2q_s32(v92, v93);
            v162.i32[2] = v95.i32[2];
            v163 = *(v145 + 64);
            v164 = vmulq_f32(v162, v162);
            v162.i32[3] = v94.i32[2];
            v164.f32[0] = v164.f32[2] + vaddv_f32(*v164.f32);
            v165 = vrsqrte_f32(v164.u32[0]);
            v166 = vmul_f32(v165, vrsqrts_f32(v164.u32[0], vmul_f32(v165, v165)));
            *(v145 + 64) = vmulq_n_f32(v162, vmul_f32(v166, vrsqrts_f32(v164.u32[0], vmul_f32(v166, v166))).f32[0]);
            *(v145 + 80) = v163;
            v167 = (v50 + (v89 << 6));
            v168 = *v167;
            v169 = v167[1];
            v171 = v167[2];
            v170 = v167[3];
            v172 = *v57;
            v173 = v57[1];
            v175 = v57[2];
            v174 = v57[3];
            v176 = *&v174.i32[3];
            v177 = *&v174.i32[3] - *v174.i32;
            v178.i32[0] = HIDWORD(*v167);
            LODWORD(v179) = HIDWORD(*v57);
            v180 = *&v173.i32[3];
            v181 = *&v175.i32[3];
            if ((*&v170.i32[3] - *v170.i32) >= (*&v174.i32[3] - *v174.i32))
            {
              v177 = *&v170.i32[3] - *v170.i32;
              v182 = *v175.i32;
              LODWORD(v183) = HIDWORD(*&v57[2]);
              v184 = *v173.i32;
              LODWORD(v185) = HIDWORD(*&v57[1]);
              LODWORD(v186) = *v57;
              LODWORD(v187) = HIDWORD(*v57);
              v175.i32[0] = v171.i32[0];
              LODWORD(v181) = HIDWORD(*&v167[2]);
              v173.i32[0] = v169.i32[0];
              LODWORD(v180) = HIDWORD(*&v167[1]);
              v172.i32[0] = *v167;
              LODWORD(v179) = HIDWORD(*v167);
            }

            else
            {
              v174.i32[0] = v170.i32[0];
              LODWORD(v176) = HIDWORD(*&v167[3]);
              v182 = *v171.i32;
              LODWORD(v183) = HIDWORD(*&v167[2]);
              v184 = *v169.i32;
              LODWORD(v185) = HIDWORD(*&v167[1]);
              LODWORD(v186) = *v167;
              LODWORD(v187) = HIDWORD(*v167);
            }

            v172.f32[0] = v179 - v172.f32[0];
            v172.f32[1] = v180 - *v173.i32;
            v172.f32[2] = v181 - *v175.i32;
            v188 = vmulq_f32(v172, v172);
            v172.f32[3] = v177;
            v188.f32[0] = v188.f32[2] + vaddv_f32(*v188.f32);
            v189 = a1 + 96 * v89;
            v190 = vrsqrte_f32(v188.u32[0]);
            v191 = vmul_f32(v190, vrsqrts_f32(v188.u32[0], vmul_f32(v190, v190)));
            v7 = vmulq_n_f32(v172, vmul_f32(v191, vrsqrts_f32(v188.u32[0], vmul_f32(v191, v191))).f32[0]);
            v188.f32[0] = v186 + v187;
            v192 = *v174.i32 + v176;
            v188.f32[1] = v184 + v185;
            v188.f32[2] = v182 + v183;
            v193 = vmulq_f32(v188, v188);
            v188.f32[3] = v192;
            v193.f32[0] = v193.f32[2] + vaddv_f32(*v193.f32);
            v194 = vrsqrte_f32(v193.u32[0]);
            v195 = vmul_f32(v194, vrsqrts_f32(v193.u32[0], vmul_f32(v194, v194)));
            *v189 = v7;
            *(v189 + 16) = vmulq_n_f32(v188, vmul_f32(v195, vrsqrts_f32(v193.u32[0], vmul_f32(v195, v195))).f32[0]);
            v193.f32[0] = v178.f32[0] + *&v168.i32[1];
            v193.f32[1] = *&v169.i32[3] + *&v169.i32[1];
            v193.f32[2] = *&v171.i32[3] + *&v171.i32[1];
            v8 = vmulq_f32(v193, v193);
            v193.f32[3] = *&v170.i32[3] + *&v170.i32[1];
            v188.f32[0] = v8.f32[2] + vaddv_f32(*v8.f32);
            *v8.f32 = vrsqrte_f32(v188.u32[0]);
            *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v188.u32[0], vmul_f32(*v8.f32, *v8.f32)));
            v178.f32[0] = v178.f32[0] - *&v168.i32[1];
            v178.f32[1] = *&v169.i32[3] - *&v169.i32[1];
            v178.f32[2] = *&v171.i32[3] - *&v171.i32[1];
            v196 = vmulq_f32(v178, v178);
            v178.f32[3] = *&v170.i32[3] - *&v170.i32[1];
            v196.f32[0] = v196.f32[2] + vaddv_f32(*v196.f32);
            v197 = vrsqrte_f32(v196.u32[0]);
            v198 = vmul_f32(v197, vrsqrts_f32(v196.u32[0], vmul_f32(v197, v197)));
            *(v189 + 32) = vmulq_n_f32(v193, vmul_f32(*v8.f32, vrsqrts_f32(v188.u32[0], vmul_f32(*v8.f32, *v8.f32))).f32[0]);
            *(v189 + 48) = vmulq_n_f32(v178, vmul_f32(v198, vrsqrts_f32(v196.u32[0], vmul_f32(v198, v198))).f32[0]);
            v199 = vextq_s8(v169, v169, 8uLL);
            v37 = vextq_s8(v168, v168, 8uLL);
            *v33.f32 = vsub_f32(vzip2_s32(*v37.f32, *v199.i8), vzip1_s32(*v37.f32, *v199.i8));
            v33.f32[2] = *&v171.i32[3] - *&v171.i32[2];
            v200 = vmulq_f32(v33, v33);
            v33.f32[3] = *&v170.i32[3] - *&v170.i32[2];
            v200.f32[0] = v200.f32[2] + vaddv_f32(*v200.f32);
            v201 = vrsqrte_f32(v200.u32[0]);
            v202 = vmul_f32(v201, vrsqrts_f32(v200.u32[0], vmul_f32(v201, v201)));
            *(v189 + 64) = vmulq_n_f32(v33, vmul_f32(v202, vrsqrts_f32(v200.u32[0], vmul_f32(v202, v202))).f32[0]);
            v203 = vzip2q_s32(v168, v169);
            v203.i32[2] = v171.i32[2];
            v204 = *(v189 + 64);
            v205 = vmulq_f32(v203, v203);
            v203.i32[3] = v170.i32[2];
            v205.f32[0] = v205.f32[2] + vaddv_f32(*v205.f32);
            v206 = vrsqrte_f32(v205.u32[0]);
            v207 = vmul_f32(v206, vrsqrts_f32(v205.u32[0], vmul_f32(v206, v206)));
            *(v189 + 64) = vmulq_n_f32(v203, vmul_f32(v207, vrsqrts_f32(v205.u32[0], vmul_f32(v207, v207))).f32[0]);
            *(v189 + 80) = v204;
          }
        }

        else
        {
          v110 = (a1 + 96 * v48);
          v111 = v57[1];
          v113 = v57[2];
          v112 = v57[3];
          v33.i32[0] = HIDWORD(*v57);
          v37.f32[0] = v33.f32[0] - COERCE_FLOAT(*v57);
          v37.f32[1] = *&v111.i32[3] - *v111.i32;
          v37.f32[2] = *&v113.i32[3] - *v113.i32;
          v114 = vmulq_f32(v37, v37);
          v37.f32[3] = *&v112.i32[3] - *v112.i32;
          v7.f32[0] = v33.f32[0] + COERCE_FLOAT(*v57);
          v7.f32[1] = *&v111.i32[3] + *v111.i32;
          v7.f32[2] = *&v113.i32[3] + *v113.i32;
          v8 = vmulq_f32(v7, v7);
          v7.f32[3] = *&v112.i32[3] + *v112.i32;
          LODWORD(v115) = HIDWORD(v57->i64[0]);
          v9.f32[0] = v33.f32[0] + v115;
          LODWORD(v116) = HIDWORD(v57[1].i64[0]);
          LODWORD(v117) = HIDWORD(v57[2].i64[0]);
          LODWORD(v118) = HIDWORD(v57[3].i64[0]);
          v9.f32[1] = *&v111.i32[3] + v116;
          v9.f32[2] = *&v113.i32[3] + v117;
          v119 = vmulq_f32(v9, v9);
          v9.f32[3] = *&v112.i32[3] + v118;
          v33.f32[0] = v33.f32[0] - v115;
          v33.f32[1] = *&v111.i32[3] - v116;
          v33.f32[2] = *&v113.i32[3] - v117;
          v120 = vmulq_f32(v33, v33);
          v33.f32[3] = *&v112.i32[3] - v118;
          v121 = vextq_s8(v111, v111, 8uLL);
          v122 = vextq_s8(*v57, *v57, 8uLL).u64[0];
          *v121.f32 = vsub_f32(vzip2_s32(v122, *v121.f32), vzip1_s32(v122, *v121.f32));
          v121.f32[2] = *&v113.i32[3] - COERCE_FLOAT(v57[2].i64[1]);
          v123 = vmulq_f32(v121, v121);
          v124 = v121;
          v124.f32[3] = *&v112.i32[3] - COERCE_FLOAT(v57[3].i64[1]);
          v125 = vzip2q_s32(*v57, v111);
          v125.i32[2] = v57[2].i64[1];
          v126 = vmulq_f32(v125, v125);
          v125.i32[3] = v57[3].i64[1];
          *v113.i32 = v114.f32[2] + vaddv_f32(*v114.f32);
          *v112.i8 = vrsqrte_f32(v113.u32[0]);
          *v112.i8 = vmul_f32(*v112.i8, vrsqrts_f32(v113.u32[0], vmul_f32(*v112.i8, *v112.i8)));
          v127 = vmulq_n_f32(v37, vmul_f32(*v112.i8, vrsqrts_f32(v113.u32[0], vmul_f32(*v112.i8, *v112.i8))).f32[0]);
          *&v128 = v8.f32[2] + vaddv_f32(*v8.f32);
          *v113.i8 = vrsqrte_f32(v128);
          *v113.i8 = vmul_f32(*v113.i8, vrsqrts_f32(v128, vmul_f32(*v113.i8, *v113.i8)));
          v129 = vmulq_n_f32(v7, vmul_f32(*v113.i8, vrsqrts_f32(v128, vmul_f32(*v113.i8, *v113.i8))).f32[0]);
          v114.f32[0] = v119.f32[2] + vaddv_f32(*v119.f32);
          v130 = vrsqrte_f32(v114.u32[0]);
          v131 = vmul_f32(v130, vrsqrts_f32(v114.u32[0], vmul_f32(v130, v130)));
          v37 = vmulq_n_f32(v9, vmul_f32(v131, vrsqrts_f32(v114.u32[0], vmul_f32(v131, v131))).f32[0]);
          v114.f32[0] = v120.f32[2] + vaddv_f32(*v120.f32);
          *v120.f32 = vrsqrte_f32(v114.u32[0]);
          *v120.f32 = vmul_f32(*v120.f32, vrsqrts_f32(v114.u32[0], vmul_f32(*v120.f32, *v120.f32)));
          v33 = vmulq_n_f32(v33, vmul_f32(*v120.f32, vrsqrts_f32(v114.u32[0], vmul_f32(*v120.f32, *v120.f32))).f32[0]);
          v120.f32[0] = v126.f32[2] + vaddv_f32(*v126.f32);
          *v126.f32 = vrsqrte_f32(v120.u32[0]);
          *v126.f32 = vmul_f32(*v126.f32, vrsqrts_f32(v120.u32[0], vmul_f32(*v126.f32, *v126.f32)));
          v132 = vmulq_n_f32(v125, vmul_f32(*v126.f32, vrsqrts_f32(v120.u32[0], vmul_f32(*v126.f32, *v126.f32))).f32[0]);
          v123.f32[0] = v123.f32[2] + vaddv_f32(*v123.f32);
          *v126.f32 = vrsqrte_f32(v123.u32[0]);
          *v126.f32 = vmul_f32(*v126.f32, vrsqrts_f32(v123.u32[0], vmul_f32(*v126.f32, *v126.f32)));
          *v110 = v127;
          v110[1] = v129;
          v110[2] = v37;
          v110[3] = v33;
          v110[4] = v132;
          v110[5] = vmulq_n_f32(v124, vmul_f32(*v126.f32, vrsqrts_f32(v123.u32[0], vmul_f32(*v126.f32, *v126.f32))).f32[0]);
        }

        ++v48;
      }

      while (v48 < v10[2304]);
    }
  }
}