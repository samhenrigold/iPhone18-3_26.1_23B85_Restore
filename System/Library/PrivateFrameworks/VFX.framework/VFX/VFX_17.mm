uint64_t sub_1AF1DC078(void *a1, CFArrayRef theArray, int a3, int a4, uint64_t a5)
{
  if (a3 >= a4)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  v11 = sub_1AF1DB1EC(ValueAtIndex);
  if (v11 == 91)
  {
    if (a3 + 1 < a4)
    {
      v22 = CFArrayGetValueAtIndex(theArray, a3 + 1);
      result = sub_1AF1C3FAC(a1, v23);
      if (result)
      {
        v25 = sub_1AF1CF830(result, v24);
        result = sub_1AF118B34(v25, a1, v22);
        if (result)
        {
          *(a5 + 24) = result + 52;
          sub_1AF1DE260(a5, result);
          result = 1;
          *(a5 + 32) = 1;
          *(a5 + 34) = 0;
        }
      }

      return result;
    }

    return 0;
  }

  if (v11 != 90)
  {
    result = sub_1AF16D5A8(a1, v12);
    if (result)
    {
      sub_1AF16E098(a1, v26);

      return sub_1AF16E56C(a1, theArray, a3, a5);
    }

    return result;
  }

  if (a3 + 1 >= a4)
  {
    return 0;
  }

  v13 = CFArrayGetValueAtIndex(theArray, a3 + 1);
  v14 = sub_1AF16E3F4(a1, v13);
  if (v14)
  {
    v16 = v14;
    v17 = CFGetTypeID(v14);
    v14 = sub_1AF1CD8D8(v17, v18);
    if (v17 == v14)
    {
      sub_1AF1DE260(a5, v16);
      *(a5 + 24) = sub_1AF1CDA60(v16, v19);
      *(a5 + 32) = sub_1AF1CDAAC(v16, v20);
      *(a5 + 34) = 0;
      return 1;
    }
  }

  v27 = sub_1AF0D5194(v14, v15);
  result = os_log_type_enabled(v27, OS_LOG_TYPE_FAULT);
  if (result)
  {
    sub_1AFDE1084(v27, v28, v29, v30, v31, v32, v33, v34);
    return 0;
  }

  return result;
}

uint64_t sub_1AF1DC218(void *a1, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return 0;
  }

  if (sub_1AF1DC078(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  sub_1AF1DE260(a5, a1);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
  v13 = sub_1AF1DB1EC(ValueAtIndex);
  if (v13 > 36)
  {
    if (v13 <= 85)
    {
      if (v13 > 38)
      {
        if (v13 == 39)
        {
          v15 = sub_1AF1B75A0(a1, v14);
        }

        else
        {
          if (v13 != 75)
          {
            goto LABEL_41;
          }

          v15 = sub_1AF1B75E8(a1, v14);
        }
      }

      else if (v13 == 37)
      {
        v15 = sub_1AF1BB260(a1, v14);
      }

      else
      {
        v15 = sub_1AF1BBFEC(a1, v14);
      }

LABEL_33:
      sub_1AF1DB654(v15, a2, (a3 + 1), a4, a5, a6);
      return 1;
    }

    if (v13 > 87)
    {
      if (v13 == 88)
      {
        v16 = sub_1AF1BC05C(a1, v14);
      }

      else
      {
        if (v13 != 89)
        {
          goto LABEL_41;
        }

        v16 = sub_1AF1BC054(a1);
      }
    }

    else
    {
      if (v13 == 86)
      {
        v15 = sub_1AF1B9158(a1, v14);
        goto LABEL_33;
      }

      v16 = sub_1AF1B83E8(a1, v14);
    }

    sub_1AF1DCAE8(v16, a2, a3 + 1, a4, a5);
    return 1;
  }

  if (v13 > 4)
  {
    if ((v13 - 5) >= 4 && (v13 - 11) >= 2)
    {
      if (v13 == 9)
      {
        *(a5 + 34) = 8;
        v21 = a1[24];
        if (!v21)
        {
          sub_1AF1B87C4(a1, v14, xmmword_1AFE21FF0, unk_1AFE22000, xmmword_1AFE22010, unk_1AFE22020);
          v21 = a1[24];
        }

        sub_1AF1DBB34(v21, a2, a3 + 1, a4, a5);
        return 1;
      }

      goto LABEL_41;
    }

    v17 = a1;
    v18 = a2;
    v19 = a3;
LABEL_22:
    sub_1AF1DDC38(v17, v18, v19, a4, a5, a6);
    return 1;
  }

  switch(v13)
  {
    case 1:
      v19 = (a3 + 1);
      v17 = a1;
      v18 = a2;
      goto LABEL_22;
    case 2:
      *(a5 + 24) = a1 + 204;
      v20 = 1;
      *(a5 + 32) = 1;
      return v20;
    case 3:
      *(a5 + 24) = a1 + 25;
      *(a5 + 32) = 3;
      return 1;
  }

LABEL_41:
  cf = 0;
  v27 = 0;
  v22 = sub_1AF1DDCFC(a2, a3, a4, &v27, &cf);
  if (!v22)
  {
LABEL_47:
    if (a6)
    {
      v25 = sub_1AF0D5194(v22, v23);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE10FC();
      }
    }

    return 0;
  }

  if (sub_1AF1DB1EC(cf) != 10)
  {
    v22 = cf;
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_47;
  }

  v24 = sub_1AF1B963C(a1, v27);
  if (v24)
  {
    v20 = sub_1AF1DC218(v24, a2, (a3 + 1), a4, a5, a6);
  }

  else
  {
    v20 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

uint64_t sub_1AF1DC52C(uint64_t result, const __CFArray *a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (result)
  {
    v11 = result;
    if (sub_1AF1DC078(result, a2, a3, a4, a5))
    {
      return 1;
    }

    sub_1AF1DE260(a5, v11);
    if (a3 >= a4)
    {
      *(a5 + 24) = 0;
      *(a5 + 32) = 0;
      return 1;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
    v13 = sub_1AF1DB1EC(ValueAtIndex);
    v15 = sub_1AF1A1270(v11, v14);
    if (v13 == 42)
    {
      sub_1AF1DDF10(v15, a2, a3 + 1, a4, a5, a6);
      return 1;
    }

    return sub_1AF1DDF10(v15, a2, a3, a4, a5, a6);
  }

  return result;
}

BOOL sub_1AF1DC620(_BOOL8 result, const __CFArray *a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!result)
  {
    return result;
  }

  v11 = result;
  if (sub_1AF1DC078(result, a2, a3, a4, a5))
  {
    return 1;
  }

  sub_1AF1DE260(a5, v11);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
  v13 = sub_1AF1DB1EC(ValueAtIndex);
  v14 = CFStringFind(ValueAtIndex, @"weights", 0);
  if (v14.length <= 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  if (v14.length > 0 || v13 == 85)
  {
    v17 = sub_1AF1B4C94(v11);
    v18 = CFStringFind(ValueAtIndex, @"[", 0);
    if (v18.length >= 1)
    {
      v19 = CFStringFind(ValueAtIndex, @"]", 0);
      if (v19.length >= 1 && v19.location > v18.location + 2)
      {
        v26.location = v18.location + 2;
        v26.length = v19.location - (v18.location + 2);
        v20 = CFStringCreateWithSubstring(0, ValueAtIndex, v26);
        v21 = sub_1AF1B5A20(v11, v20);
        if (v21 != -1)
        {
          v22 = v21;
          sub_1AF1DE260(a5, v17);
          v24 = sub_1AF17032C(v17, v23);
          *(a5 + 24) = sub_1AF1CAFE0(v24, v22, v25);
          *(a5 + 32) = sub_1AF1CAED8(v24);
          if (v20)
          {
            CFRelease(v20);
          }

          return 1;
        }

        if (v20)
        {
          CFRelease(v20);
        }
      }
    }

    if (v17)
    {
      sub_1AF1DC95C(v17, a2, (a3 + v15 + 1), a4, a5);
    }

    return 1;
  }

  if (a6)
  {
    v16 = sub_1AF0D5194(v14.location, v14.length);
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1AFDE1164();
  }

  return 0;
}

uint64_t sub_1AF1DC800(CFTypeRef cf, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!cf)
  {
    return 0;
  }

  v9 = a3;
  sub_1AF1DE260(a5, cf);
  if (v9 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
  if (sub_1AF1DB1EC(ValueAtIndex) == 40)
  {
    if (sub_1AF1B1FE0(cf, v13) >= 1)
    {
      v14 = sub_1AF1B2030(cf, 0);
      sub_1AF1DC52C(v14, a2, v9 + 1, a4, a5, a6);
    }

    return 1;
  }

  cfa = 0;
  v20 = 0;
  v15 = 0;
  if (sub_1AF1DDCFC(a2, v9, a4, &v20, &cfa))
  {
    if (sub_1AF1DB1EC(cfa) == 41 && (v18 = sub_1AF1B1FE0(cf, v17), v18 > v20))
    {
      v19 = sub_1AF1B2030(cf, v20);
      v15 = sub_1AF1DB654(v19, a2, (v9 + 1), a4, a5, a6);
    }

    else
    {
      v15 = 0;
    }

    if (cfa)
    {
      CFRelease(cfa);
    }
  }

  return v15;
}

uint64_t sub_1AF1DC95C(CFTypeRef cf, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  sub_1AF1DE260(a5, cf);
  if (!cf)
  {
    return 0;
  }

  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  v15 = 0;
  v11 = sub_1AF1DDCFC(a2, v7, v6, &v15, 0);
  if (v11)
  {
    v12 = sub_1AF17032C(cf, v10);
    *(a5 + 24) = sub_1AF1CAFE0(v12, v15, v13);
    *(a5 + 32) = sub_1AF1CAED8(v12);
  }

  return v11;
}

uint64_t sub_1AF1DCA10(CFTypeRef cf, const __CFArray *a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  sub_1AF1DE260(a5, cf);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
    v13 = sub_1AF1DB1EC(ValueAtIndex);
    if (v13 == 92)
    {
      v14 = 1;
      v15 = sub_1AF1D0008(cf, 1);
    }

    else
    {
      if (v13 != 93)
      {
        return 0;
      }

      v14 = 1;
      v15 = sub_1AF1D005C(cf, 1);
    }

    sub_1AF1DB074(v15, a2, a3 + 1, a4, a5, a6);
  }

  return v14;
}

BOOL sub_1AF1DCAE8(_BOOL8 result, void *a2, int a3, int a4, uint64_t a5)
{
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = a4 - a3;
  v8 = sub_1AF28A4C4(a2, a3, a4 - a3);
  ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
  if (v7 != 2 || (v10 = CFArrayGetValueAtIndex(v8, 1)) == 0)
  {
    v13 = sub_1AF16AAA0(v6, ValueAtIndex, 0);
    v15 = sub_1AF16A844(v6, ValueAtIndex, v14);
    goto LABEL_14;
  }

  v11 = v10;
  if (CFEqual(v10, @"x"))
  {
    v12 = 0;
LABEL_13:
    v13 = sub_1AF16AAA0(v6, ValueAtIndex, v12);
    v15 = 1;
LABEL_14:
    result = 0;
    if (v13)
    {
      if (v15)
      {
        sub_1AF1DE260(a5, v6);
        *(a5 + 24) = v13;
        *(a5 + 32) = v15;
        result = 1;
        *(a5 + 34) = 0;
      }
    }

    return result;
  }

  if (CFEqual(v11, @"y"))
  {
    v12 = 1;
    goto LABEL_13;
  }

  if (CFEqual(v11, @"z"))
  {
    v12 = 2;
    goto LABEL_13;
  }

  v16 = CFEqual(v11, @"w");
  if (v16)
  {
    v12 = 3;
    goto LABEL_13;
  }

  v18 = sub_1AF0D5194(v16, v17);
  result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1AFDE11CC();
    return 0;
  }

  return result;
}

uint64_t sub_1AF1DCC5C(const void *a1, CFTypeID a2, const __CFString *a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = sub_1AF1B630C(a1, a2);
  if (v12 == a2)
  {
    v14 = sub_1AF15B294(a1);
LABEL_5:
    sub_1AF1DCD1C(v14, a3, a4, a5, a6);
    return 0;
  }

  if (sub_1AF1B42EC(v12, v13) == a2)
  {
    v14 = a1;
    goto LABEL_5;
  }

  v15 = CFCopyTypeIDDescription(a2);
  v17 = sub_1AF0D5194(v15, v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE1234();
  }

  CFRelease(v15);
  return 0;
}

void sub_1AF1DCD1C(const void *cf, const __CFString *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (cf)
  {
    sub_1AF1DE260(a4, cf);
    v10 = CFStringCompare(a2, @"weights", 0);
    if (v10)
    {
      if (a5)
      {
        v12 = sub_1AF0D5194(v10, v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDE129C();
        }
      }
    }

    else
    {
      v13 = sub_1AF1B4C94(cf);
      sub_1AF1DE260(a4, v13);
      v15 = sub_1AF17032C(v13, v14);
      *(a4 + 24) = sub_1AF1CAFE0(v15, a3, v16);
      *(a4 + 32) = sub_1AF1CAED8(v15);
    }
  }
}

uint64_t sub_1AF1DCDF4(const void *a1, CFTypeID a2, const __CFString *a3, void *a4, uint64_t a5, int a6)
{
  v12 = sub_1AF1B630C(a1, a2);
  if (v12 == a2)
  {
    v14 = sub_1AF15B294(a1);
LABEL_5:
    sub_1AF1DCEB4(v14, a3, a4, a5, a6);
    return 0;
  }

  if (sub_1AF1B42EC(v12, v13) == a2)
  {
    v14 = a1;
    goto LABEL_5;
  }

  v15 = CFCopyTypeIDDescription(a2);
  v17 = sub_1AF0D5194(v15, v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE1234();
  }

  CFRelease(v15);
  return 0;
}

void sub_1AF1DCEB4(const void *cf, const __CFString *a2, void *a3, uint64_t a4, int a5)
{
  if (cf)
  {
    sub_1AF1DE260(a4, cf);
    v10 = CFStringCompare(a2, @"weights", 0);
    if (v10)
    {
      if (!a5)
      {
        return;
      }

LABEL_4:
      v12 = sub_1AF0D5194(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE1310();
      }

      return;
    }

    v13 = sub_1AF1B4C94(cf);
    sub_1AF1DE260(a4, v13);
    v10 = sub_1AF1B5A20(cf, a3);
    if (v10 != -1)
    {
      v14 = v10;
      v15 = sub_1AF17032C(v13, v11);
      *(a4 + 24) = sub_1AF1CAFE0(v15, v14, v16);
      *(a4 + 32) = sub_1AF1CAED8(v15);
      return;
    }

    if (a5)
    {
      goto LABEL_4;
    }
  }
}

void sub_1AF1DCFAC(void *a1, const void *a2)
{
  os_unfair_lock_lock(&unk_1ED731628);
  v4 = sub_1AF1DB864(a1);
  qword_1ED734610 = v4;
  if (a2)
  {

    CFDictionaryAddValue(v4, @"superClass", a2);
  }
}

void sub_1AF1DD02C(const void *a1, uint64_t a2, __int16 a3, char a4)
{
  v6 = a2;
  if (!qword_1ED734610)
  {
    v8 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE1384(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = malloc_type_malloc(0x10uLL, 0x10000401E18E2A0uLL);
  v16[4] = a3;
  *v16 = v6;
  *(v16 + 10) = a4;
  CountOfKey = CFDictionaryGetCountOfKey(qword_1ED734610, a1);
  if (CountOfKey)
  {
    v19 = sub_1AF0D5194(CountOfKey, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE13FC(a1, v19);
    }
  }

  CFDictionarySetValue(qword_1ED734610, a1, v16);
}

void sub_1AF1DD104()
{
  qword_1ED737BE8 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 110, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(qword_1ED737BE8, @"transform", 1);
  CFDictionaryAddValue(qword_1ED737BE8, @"opacity", 2);
  CFDictionaryAddValue(qword_1ED737BE8, @"hidden", 3);
  CFDictionaryAddValue(qword_1ED737BE8, @"attributes", 4);
  CFDictionaryAddValue(qword_1ED737BE8, @"matrix", 5);
  CFDictionaryAddValue(qword_1ED737BE8, @"translation", 6);
  CFDictionaryAddValue(qword_1ED737BE8, @"position", 6);
  CFDictionaryAddValue(qword_1ED737BE8, @"rotation", 7);
  CFDictionaryAddValue(qword_1ED737BE8, @"orientation", 0xC);
  CFDictionaryAddValue(qword_1ED737BE8, @"scale", 8);
  CFDictionaryAddValue(qword_1ED737BE8, @"eulerAngles", 0xB);
  CFDictionaryAddValue(qword_1ED737BE8, @"quaternion", 0xC);
  CFDictionaryAddValue(qword_1ED737BE8, @"pivot", 9);
  CFDictionaryAddValue(qword_1ED737BE8, @"nodes", 0xA);
  CFDictionaryAddValue(qword_1ED737BE8, @"childNodes", 0xA);
  CFDictionaryAddValue(qword_1ED737BE8, @"x", 0xD);
  CFDictionaryAddValue(qword_1ED737BE8, @"y", 0xE);
  CFDictionaryAddValue(qword_1ED737BE8, @"z", 0xF);
  CFDictionaryAddValue(qword_1ED737BE8, @"w", 0x10);
  CFDictionaryAddValue(qword_1ED737BE8, @"(0)", 0xD);
  CFDictionaryAddValue(qword_1ED737BE8, @"(1)", 0xE);
  CFDictionaryAddValue(qword_1ED737BE8, @"(2)", 0xF);
  CFDictionaryAddValue(qword_1ED737BE8, @"(3)", 0x10);
  CFDictionaryAddValue(qword_1ED737BE8, @"r", 0x11);
  CFDictionaryAddValue(qword_1ED737BE8, @"g", 0x12);
  CFDictionaryAddValue(qword_1ED737BE8, @"b", 0x13);
  CFDictionaryAddValue(qword_1ED737BE8, @"a", 0x14);
  CFDictionaryAddValue(qword_1ED737BE8, @"m11", 0x15);
  CFDictionaryAddValue(qword_1ED737BE8, @"m12", 0x19);
  CFDictionaryAddValue(qword_1ED737BE8, @"m13", 0x1D);
  CFDictionaryAddValue(qword_1ED737BE8, @"m14", 0x21);
  CFDictionaryAddValue(qword_1ED737BE8, @"m21", 0x16);
  CFDictionaryAddValue(qword_1ED737BE8, @"m22", 0x1A);
  CFDictionaryAddValue(qword_1ED737BE8, @"m23", 0x1E);
  CFDictionaryAddValue(qword_1ED737BE8, @"m24", 0x22);
  CFDictionaryAddValue(qword_1ED737BE8, @"m31", 0x17);
  CFDictionaryAddValue(qword_1ED737BE8, @"m32", 0x1B);
  CFDictionaryAddValue(qword_1ED737BE8, @"m33", 0x1F);
  CFDictionaryAddValue(qword_1ED737BE8, @"m34", 0x23);
  CFDictionaryAddValue(qword_1ED737BE8, @"m41", 0x18);
  CFDictionaryAddValue(qword_1ED737BE8, @"m42", 0x1C);
  CFDictionaryAddValue(qword_1ED737BE8, @"m43", 0x20);
  CFDictionaryAddValue(qword_1ED737BE8, @"m44", 0x24);
  CFDictionaryAddValue(qword_1ED737BE8, @"camera", 0x25);
  CFDictionaryAddValue(qword_1ED737BE8, @"forceField", 0x26);
  CFDictionaryAddValue(qword_1ED737BE8, @"model", 0x27);
  CFDictionaryAddValue(qword_1ED737BE8, @"firstMaterial", 0x28);
  CFDictionaryAddValue(qword_1ED737BE8, @"materials", 0x29);
  CFDictionaryAddValue(qword_1ED737BE8, @"commonProfile", 0x2A);
  CFDictionaryAddValue(qword_1ED737BE8, @"diffuse", 0x2B);
  CFDictionaryAddValue(qword_1ED737BE8, @"specular", 0x2C);
  CFDictionaryAddValue(qword_1ED737BE8, @"emission", 0x2D);
  CFDictionaryAddValue(qword_1ED737BE8, @"reflective", 0x2E);
  CFDictionaryAddValue(qword_1ED737BE8, @"normal", 0x2F);
  CFDictionaryAddValue(qword_1ED737BE8, @"ambientOcclusion", 0x30);
  CFDictionaryAddValue(qword_1ED737BE8, @"selfIllumination", 0x31);
  CFDictionaryAddValue(qword_1ED737BE8, @"metalness", 0x32);
  CFDictionaryAddValue(qword_1ED737BE8, @"roughness", 0x33);
  CFDictionaryAddValue(qword_1ED737BE8, @"selfIlluminationOcclusion", 0x3C);
  CFDictionaryAddValue(qword_1ED737BE8, @"clearCoat", 0x34);
  CFDictionaryAddValue(qword_1ED737BE8, @"clearCoatRoughness", 0x35);
  CFDictionaryAddValue(qword_1ED737BE8, @"clearCoatNormal", 0x36);
  CFDictionaryAddValue(qword_1ED737BE8, @"subsurface", 0x37);
  CFDictionaryAddValue(qword_1ED737BE8, @"subsurfaceRadius", 0x38);
  CFDictionaryAddValue(qword_1ED737BE8, @"transmission", 0x39);
  CFDictionaryAddValue(qword_1ED737BE8, @"transmissionColor", 0x3A);
  CFDictionaryAddValue(qword_1ED737BE8, @"displacement", 0x3B);
  CFDictionaryAddValue(qword_1ED737BE8, @"transparent", 0x3D);
  CFDictionaryAddValue(qword_1ED737BE8, @"multiply", 0x3E);
  CFDictionaryAddValue(qword_1ED737BE8, @"shininess", 0x3F);
  CFDictionaryAddValue(qword_1ED737BE8, @"indexOfRefraction", 0x40);
  CFDictionaryAddValue(qword_1ED737BE8, @"fresnelExponent", 0x41);
  CFDictionaryAddValue(qword_1ED737BE8, @"shaderModifiers", 0x45);
  CFDictionaryAddValue(qword_1ED737BE8, @"doubleSided", 0x42);
  CFDictionaryAddValue(qword_1ED737BE8, @"litPerPixel", 0x43);
  CFDictionaryAddValue(qword_1ED737BE8, @"cullMode", 0x44);
  CFDictionaryAddValue(qword_1ED737BE8, @"contents", 0x46);
  CFDictionaryAddValue(qword_1ED737BE8, @"texture", 0x47);
  CFDictionaryAddValue(qword_1ED737BE8, @"image", 0x48);
  CFDictionaryAddValue(qword_1ED737BE8, @"contentsTransform", 0x49);
  CFDictionaryAddValue(qword_1ED737BE8, @"intensity", 0x4A);
  CFDictionaryAddValue(qword_1ED737BE8, @"light", 0x4B);
  CFDictionaryAddValue(qword_1ED737BE8, @"shadowIntensity", 0x4C);
  CFDictionaryAddValue(qword_1ED737BE8, @"shadowRadius", 0x4D);
  CFDictionaryAddValue(qword_1ED737BE8, @"attenuation", 0x51);
  CFDictionaryAddValue(qword_1ED737BE8, @"spotInnerAngle", 0x52);
  CFDictionaryAddValue(qword_1ED737BE8, @"spotOuterAngle", 0x53);
  CFDictionaryAddValue(qword_1ED737BE8, @"spotFalloffExponent", 0x54);
  CFDictionaryAddValue(qword_1ED737BE8, @"weights", 0x55);
  CFDictionaryAddValue(qword_1ED737BE8, @"morpher", 0x56);
  CFDictionaryAddValue(qword_1ED737BE8, @"particleEmitter", 0x57);
  CFDictionaryAddValue(qword_1ED737BE8, @"particleCollider", 0x58);
  CFDictionaryAddValue(qword_1ED737BE8, @"behaviorGraph", 0x59);
  CFDictionaryAddValue(qword_1ED737BE8, @"background", 0x5C);
  CFDictionaryAddValue(qword_1ED737BE8, @"environment", 0x5D);
  CFDictionaryAddValue(qword_1ED737BE8, @"gobo", 0x4E);
  CFDictionaryAddValue(qword_1ED737BE8, @"probeEnvironment", 0x4F);
  CFDictionaryAddValue(qword_1ED737BE8, @"ies", 0x50);
  CFDictionaryAddValue(qword_1ED737BE8, @"customProperty", 0x5A);
  CFDictionaryAddValue(qword_1ED737BE8, @"animations", 0x5B);
  CFDictionaryAddValue(qword_1ED737BE8, @"euler", 0xB);
  v0 = qword_1ED737BE8;

  CFDictionaryAddValue(v0, @"axisAngle", 7);
}

void sub_1AF1DDA5C(const __CFArray *result, int a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 34) = 4;
  if (a2 >= a3)
  {
    *(a4 + 24) = 0;
    *(a4 + 32) = 9;
    return;
  }

  v5 = a3;
  ValueAtIndex = CFArrayGetValueAtIndex(result, a2);
  v9 = sub_1AF1DB1EC(ValueAtIndex);
  if (v9 <= 12)
  {
    switch(v9)
    {
      case 7:
        *(a4 + 32) = 9;
        *(a4 + 35) = sub_1AF1DDBE0(result, a2 + 1, v5, a4);
LABEL_18:
        v12 = 4;
        goto LABEL_22;
      case 0xB:
        *(a4 + 32) = 8;
        *(a4 + 35) = sub_1AF1DDBE0(result, a2 + 1, v5, a4);
        v12 = 5;
        goto LABEL_22;
      case 0xC:
        *(a4 + 32) = 9;
        *(a4 + 35) = sub_1AF1DDBE0(result, a2 + 1, v5, a4);
        v12 = 3;
LABEL_22:
        *(a4 + 34) = v12;
        return;
    }
  }

  else
  {
    if (v9 <= 14)
    {
      if (v9 != 13)
      {
        v11 = 17039361;
LABEL_20:
        *(a4 + 32) = v11;
        return;
      }

      *(a4 + 32) = 1;
      goto LABEL_18;
    }

    if (v9 == 15)
    {
      v11 = 33816577;
      goto LABEL_20;
    }

    if (v9 == 16)
    {
      v11 = 50593793;
      goto LABEL_20;
    }
  }

  v13 = sub_1AF0D5194(v9, v10);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE1488();
  }
}

uint64_t sub_1AF1DDBE0(const __CFArray *a1, int a2, int a3, uint64_t a4)
{
  if (a2 >= a3)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v6 = sub_1AF1DB1EC(ValueAtIndex);
  *(a4 + 32) = 1;
  if (v6 - 14 >= 3)
  {
    return 0;
  }

  else
  {
    return v6 - 13;
  }
}

CFTypeRef sub_1AF1DDC38(char *cf, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  result = sub_1AF1DE260(a5, cf);
  *(a5 + 34) = 8;
  *(a5 + 37) = 1;
  if (a3 >= a4)
  {
    *(a5 + 24) = cf + 96;
    *(a5 + 32) = 10;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
    sub_1AF1DB1EC(ValueAtIndex);

    return sub_1AF1DB2F8((cf + 96), a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1AF1DDCFC(const __CFArray *a1, int a2, int a3, SInt32 *a4, CFStringRef *a5)
{
  if (a2 >= a3)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v8 = CFStringFind(ValueAtIndex, @"[", 0);
  if (v8.length < 1)
  {
    goto LABEL_14;
  }

  v9 = CFStringFind(ValueAtIndex, @"]", 0);
  if (v9.length < 1 || v9.location <= v8.location)
  {
    goto LABEL_14;
  }

  v33.location = 0;
  v33.length = v8.location;
  v10 = CFStringCreateWithSubstring(0, ValueAtIndex, v33);
  v34.location = v8.location + 1;
  v34.length = v9.location - (v8.location + 1);
  v11 = CFStringCreateWithSubstring(0, ValueAtIndex, v34);
  v13 = v11;
  if (v10 || (v14 = sub_1AF0D5194(v11, v12), v11 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT), !v11))
  {
    if (!v13)
    {
      goto LABEL_8;
    }

LABEL_18:
    if (CFStringGetLength(v13) && CFStringGetCharacterAtIndex(v13, 0) - 48 < 0xA)
    {
      *a4 = CFStringGetIntValue(v13);
      if (a5)
      {
        *a5 = v10;
      }

      else if (v10)
      {
        CFRelease(v10);
      }

      v29 = 1;
      v10 = v13;
      goto LABEL_29;
    }

    CFRelease(v13);
LABEL_24:
    v29 = 0;
    if (!v10)
    {
      return v29;
    }

    goto LABEL_29;
  }

  sub_1AFDE14F0(v14, v12, v15, v16, v17, v18, v19, v20);
  if (v13)
  {
    goto LABEL_18;
  }

LABEL_8:
  v21 = sub_1AF0D5194(v11, v12);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE1568(v21, v22, v23, v24, v25, v26, v27, v28);
    if (v10)
    {
      goto LABEL_10;
    }
  }

  else if (v10)
  {
LABEL_10:
    v29 = 0;
LABEL_29:
    CFRelease(v10);
    return v29;
  }

LABEL_14:
  v30 = CFStringFind(ValueAtIndex, @"("), 0;
  if (v30.length < 1)
  {
    return 0;
  }

  v31 = CFStringFind(ValueAtIndex, @""), 0);
  v29 = 0;
  if (v31.length >= 1 && v31.location > v30.location)
  {
    v35.location = 0;
    v35.length = v30.location;
    v10 = CFStringCreateWithSubstring(0, ValueAtIndex, v35);
    v36.location = v30.location + 1;
    v36.length = v31.location - (v30.location + 1);
    v13 = CFStringCreateWithSubstring(0, ValueAtIndex, v36);
    if (!v13)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  return v29;
}

uint64_t sub_1AF1DDF10(char *cf, const __CFArray *a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  sub_1AF1DE260(a5, cf);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
    v13 = 0;
    switch(sub_1AF1DB1EC(ValueAtIndex))
    {
      case '+':
        v13 = 1;
        v14 = cf;
        v15 = 1;
        goto LABEL_28;
      case ',':
        v13 = 1;
        v14 = cf;
        v15 = 2;
        goto LABEL_28;
      case '-':
        v13 = 1;
        v14 = cf;
        v15 = 0;
        goto LABEL_28;
      case '.':
        v13 = 1;
        v14 = cf;
        v15 = 3;
        goto LABEL_28;
      case '/':
        v13 = 1;
        v14 = cf;
        v15 = 6;
        goto LABEL_28;
      case '0':
        v13 = 1;
        v14 = cf;
        v15 = 7;
        goto LABEL_28;
      case '1':
        v13 = 1;
        v14 = cf;
        v15 = 8;
        goto LABEL_28;
      case '2':
        v13 = 1;
        v14 = cf;
        v15 = 9;
        goto LABEL_28;
      case '3':
        v13 = 1;
        v14 = cf;
        v15 = 10;
        goto LABEL_28;
      case '4':
        v13 = 1;
        v14 = cf;
        v15 = 11;
        goto LABEL_28;
      case '5':
        v13 = 1;
        v14 = cf;
        v15 = 12;
        goto LABEL_28;
      case '6':
        v13 = 1;
        v14 = cf;
        v15 = 13;
        goto LABEL_28;
      case '7':
        v13 = 1;
        v14 = cf;
        v15 = 14;
        goto LABEL_28;
      case '8':
        v13 = 1;
        v14 = cf;
        v15 = 15;
        goto LABEL_28;
      case '9':
        v13 = 1;
        v14 = cf;
        v15 = 16;
        goto LABEL_28;
      case ':':
        v13 = 1;
        v14 = cf;
        v15 = 17;
        goto LABEL_28;
      case ';':
        v13 = 1;
        v14 = cf;
        v15 = 18;
        goto LABEL_28;
      case '<':
        v13 = 1;
        *(a5 + 32) = 1;
        v16 = cf + 196;
        goto LABEL_31;
      case '=':
        v13 = 1;
        v14 = cf;
        v15 = 4;
        goto LABEL_28;
      case '>':
        v13 = 1;
        v14 = cf;
        v15 = 5;
LABEL_28:
        v17 = sub_1AF1656E4(v14, v15, 1);
        sub_1AF1DB074(v17, a2, a3 + 1, a4, a5, a6);
        return v13;
      case '?':
        v13 = 1;
        *(a5 + 32) = 1;
        v16 = cf + 184;
        goto LABEL_31;
      case '@':
        v13 = 1;
        *(a5 + 32) = 1;
        v16 = cf + 188;
        goto LABEL_31;
      case 'A':
        v13 = 1;
        *(a5 + 32) = 1;
        v16 = cf + 192;
LABEL_31:
        *(a5 + 24) = v16;
        break;
      case 'C':
        *(a5 + 32) = 3;
        *(a5 + 24) = cf + 208;
        return 1;
      default:
        return v13;
    }
  }

  return v13;
}

void sub_1AF1DE16C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t sub_1AF1DE1A4()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED7346B0 = result;
  return result;
}

uint64_t sub_1AF1DE1CC(const void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_1ED7346B8 != -1)
  {
    sub_1AFDE15E0();
  }

  v8 = sub_1AF0D160C(qword_1ED7346B0, 0x18uLL);
  v10 = v8;
  if (a1)
  {
    sub_1AF1DE260(v8, a1);
  }

  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 34) = a4;
  *(v10 + 36) = sub_1AF288070(a3, v9);
  return v10;
}

CFTypeRef sub_1AF1DE260(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 16) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1AF1DE2E0(uint64_t a1)
{
  if (qword_1ED7346B8 != -1)
  {
    sub_1AFDE15E0();
  }

  v2 = sub_1AF0D160C(qword_1ED7346B0, 0x18uLL);
  sub_1AF1DE260(v2, *(a1 + 16));
  *(v2 + 24) = *(a1 + 24);
  *(v2 + 37) = *(a1 + 37);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 34) = *(a1 + 34);
  *(v2 + 35) = *(a1 + 35);
  return v2;
}

uint64_t sub_1AF1DE360(uint64_t a1, uint64_t a2)
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

uint64_t sub_1AF1DE3A8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

void *sub_1AF1DE3F0(_BOOL8 a1, void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD119C(v4, a2, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDDFC00(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  v18 = *(v3 + 16);
  v19 = *(v3 + 24);
  v20 = *(v3 + 36);
  v21 = sub_1AF1DE4A8(v3, a2);
  v23 = sub_1AF1DE4F0(v3, v22);
  return sub_1AF1C34F8(v18, v19, a2, v20, v21, v23);
}

uint64_t sub_1AF1DE4A8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 34);
}

uint64_t sub_1AF1DE4F0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 35);
}

uint64_t sub_1AF1DE538(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 32);
}

void sub_1AF1DE584(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

uint64_t sub_1AF1DE5BC()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB654D18 = result;
  return result;
}

uint64_t sub_1AF1DE5E4(const void *a1)
{
  if (qword_1EB654D20 != -1)
  {
    sub_1AFDE15F4();
  }

  v2 = sub_1AF0D160C(qword_1EB654D18, 0x90uLL);
  if (v2)
  {
    *(v2 + 24) = CFRetain(a1);
    *(v2 + 16) = 1;
    v4 = sub_1AF1DE538(a1, v3);
    *(v2 + 128) = v4;
    *(v2 + 130) = sub_1AF288070(v4, v5);
  }

  return v2;
}

uint64_t sub_1AF1DE660(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE1608(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 16) - 1;
  *(a1 + 16) = v11;
  return v11;
}

void sub_1AF1DE6B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t sub_1AF1DE6F0()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED7346A0 = result;
  return result;
}

uint64_t sub_1AF1DE718()
{
  if (qword_1ED7346A8 != -1)
  {
    sub_1AFDE1680();
  }

  v0 = sub_1AF0D160C(qword_1ED7346A0, 0x20uLL);
  if (v0)
  {
    *(v0 + 16) = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  }

  return v0;
}

uint64_t sub_1AF1DE784(_BOOL8 a1, const void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE1694(v4, a2, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDD119C(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  v18 = sub_1AF1DE3A8(a2, a2);
  v19 = v18;
  if (*(v3 + 24) == v18)
  {
    Value = *(v3 + 32);
    if (Value)
    {
      goto LABEL_8;
    }

LABEL_10:
    Value = sub_1AF1DE5E4(a2);
    v22 = sub_1AF1DE360(a2, v21);
    CFDictionaryAddValue(*(v3 + 16), v19, Value);
    *(Value + 136) = sub_1AF1C3688(v22);
    v23 = sub_1AF1C36DC(v22);
    *(Value + 144) = v23;
    if (*(Value + 136))
    {
      if (v23)
      {
LABEL_18:
        sub_1AF1DE904(v3, Value);
        CFRelease(Value);
        *(v3 + 24) = v19;
        *(v3 + 32) = Value;
        return Value;
      }
    }

    else
    {
      v25 = sub_1AF0D5194(v23, v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE170C(v25, v24, v26, v27, v28, v29, v30, v31);
      }

      v23 = *(Value + 144);
      if (v23)
      {
        goto LABEL_18;
      }
    }

    v32 = sub_1AF0D5194(v23, v24);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE1784(v32, v33, v34, v35, v36, v37, v38, v39);
    }

    goto LABEL_18;
  }

  *(v3 + 24) = v18;
  Value = CFDictionaryGetValue(*(v3 + 16), v18);
  *(v3 + 32) = Value;
  if (!Value)
  {
    goto LABEL_10;
  }

LABEL_8:
  ++*(Value + 16);
  return Value;
}

void sub_1AF1DE904(_BOOL8 a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDE1694(v3, a2, v4, v5, v6, v7, v8, v9);
      if (a2)
      {
        goto LABEL_4;
      }

LABEL_14:
      v27 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE1608(v27, v28, v29, v30, v31, v32, v33, v34);
      }

      return;
    }
  }

  if (!a2)
  {
    goto LABEL_14;
  }

LABEL_4:
  v10 = *(a2 + 24);
  if (*(v10 + 37) != 1)
  {
    v16 = *(a2 + 136);
    v17 = sub_1AF1DE360(*(a2 + 24), a2);
    v19 = sub_1AF1DE3A8(v10, v18);
    v16(v17, v19, a2 + 32, *(a2 + 130), *(v10 + 34), *(v10 + 35));
    return;
  }

  v11 = CFGetTypeID(*(v10 + 16));
  v13 = sub_1AF1B846C(v11, v12);
  if (v11 == v13)
  {
    v15 = sub_1AF1BA1FC(*(v10 + 16));
LABEL_10:
    v22 = v15[1];
    *(a2 + 32) = *v15;
    *(a2 + 48) = v22;
    v23 = v15[5];
    v25 = v15[2];
    v24 = v15[3];
    *(a2 + 96) = v15[4];
    *(a2 + 112) = v23;
    *(a2 + 64) = v25;
    *(a2 + 80) = v24;
    return;
  }

  v20 = sub_1AF167C2C(v13, v14);
  if (v11 == v20)
  {
    v15 = sub_1AF167270(*(v10 + 16), v21);
    goto LABEL_10;
  }

  v26 = sub_1AF0D5194(v20, v21);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE17FC(v26);
  }
}

void sub_1AF1DEA30(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE1694(v4, a2, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDE1608(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  if (*(a2 + 16) == 1)
  {
    sub_1AF1DEACC(v3, a2);
  }

  sub_1AF1DEBA4(v3, a2);
}

uint64_t sub_1AF1DEACC(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE1694(v4, a2, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDE1608(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  v18 = sub_1AF1DE3A8(*(a2 + 24), a2);
  *(a2 + 152) = *(v3 + 40);
  v19 = *(a2 + 24);
  v20 = *(v19 + 37);
  v21 = *(a2 + 144);
  v23 = sub_1AF1DE360(v19, v22);
  if (v20 == 1)
  {
    v24 = a2 + 32;
    v25 = v18;
    v26 = 96;
    v27 = 8;
    v28 = 0;
  }

  else
  {
    v26 = *(a2 + 130);
    v29 = *(a2 + 24);
    v27 = *(v29 + 34);
    v28 = *(v29 + 35);
    v24 = a2 + 32;
    v25 = v18;
  }

  return v21(v23, v25, v24, v26, v27, v28);
}

void sub_1AF1DEBA4(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE1694(v4, a2, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDE1608(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  v18 = sub_1AF1DE3A8(*(a2 + 24), a2);
  if (!sub_1AF1DE660(a2, v19))
  {
    CFDictionaryRemoveValue(*(v3 + 16), v18);
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
  }
}

const void *sub_1AF1DEC44(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE1694(v4, a2, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDD119C(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  v18 = sub_1AF1DE3A8(a2, a2);
  if (*(v3 + 24) == v18)
  {
    return *(v3 + 32);
  }

  *(v3 + 24) = v18;
  result = CFDictionaryGetValue(*(v3 + 16), v18);
  *(v3 + 32) = result;
  return result;
}

void sub_1AF1DECEC(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE1608(v6, a2, v7, v8, v9, v10, v11, v12);
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
  a1 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    sub_1AFDD119C(v13, a2, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!a3)
  {
    v20 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE1840(v20, a2, v21, v22, v23, v24, v25, v26);
    }
  }

  v27 = *(v5[1].n128_u64[1] + 37);
  v29 = sub_1AF1CDA60(a3, a2);
  if (v27 == 1)
  {
    v30 = sub_1AF288070(*(a2 + 32), v28);
    sub_1AF1CD69C(v5 + 2, v29, v30, *(a2 + 34), *(a2 + 35), v31, v32, v33, v34, v35, v36, v37);
  }

  else
  {
    memcpy(&v5[2], v29, v5[8].n128_i16[1]);
  }
}

void *sub_1AF1DEDE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1BA1FC(a2);
  if (*(a1 + 24) == v3)
  {
    result = *(a1 + 32);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    *(a1 + 24) = v3;
    result = CFDictionaryGetValue(*(a1 + 16), v3);
    *(a1 + 32) = result;
    if (!result)
    {
      return result;
    }
  }

  result[19] = *(a1 + 40);
  return result;
}

void sub_1AF1DEE48(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1BA1FC(a2);
  if (*(a1 + 24) == v3)
  {
    Value = *(a1 + 32);
    if (!Value)
    {
      return;
    }
  }

  else
  {
    *(a1 + 24) = v3;
    Value = CFDictionaryGetValue(*(a1 + 16), v3);
    *(a1 + 32) = Value;
    if (!Value)
    {
      return;
    }
  }

  sub_1AF1DEEC0(a1, Value);
}

void sub_1AF1DEEC0(_BOOL8 result, uint64_t a2)
{
  v3 = result;
  if (!result && (v4 = sub_1AF0D5194(0, a2), result = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE1694(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = sub_1AF0D5194(result, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE1608(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  v18 = *(v3 + 40);
  if (*(a2 + 152) != v18)
  {
    *(a2 + 152) = v18;
    v20 = sub_1AF1DE3A8(*(a2 + 24), a2);
    v21 = *(a2 + 24);
    if (*(v21 + 37) == 1)
    {
      v30[0] = sub_1AF1CBF20((a2 + 32), v19);
      v30[1] = v22;
      v30[2] = v23;
      v30[3] = v24;
      v25 = *(a2 + 144);
      v27 = sub_1AF1DE360(*(a2 + 24), v26);
      v25(v27, v20, v30, 64, 8, 0);
    }

    else
    {
      v28 = *(a2 + 144);
      v29 = sub_1AF1DE360(v21, v19);
      v28(v29, v20, a2 + 32, *(a2 + 130), *(*(a2 + 24) + 34), *(*(a2 + 24) + 35));
    }
  }
}

uint64_t sub_1AF1DEFC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1AF1DE3A8(a2[3], a2);
  a2[19] = *(a1 + 40);
  v16 = a2[18];
  v14 = sub_1AF1DE360(a2[3], v13);

  return v16(v14, v12, a5, a6, a3, a4);
}

uint64_t sub_1AF1DF068(uint64_t a1, uint64_t *a2, __n128 *a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, float32x4_t a11)
{
  result = a2[3];
  v15 = *(result + 24);
  a2[19] = *(a1 + 40);
  if (a4 == 7)
  {
    v44 = a2[18];
    v16 = sub_1AF1DE360(result, v44);

    return v44(v16, v15, a3, 96, 8, 0);
  }

  v17 = a4;
  if (a4)
  {
    v45 = sub_1AF1CCB30(a3);
    v18 = a2[18];
    v20 = sub_1AF1DE360(a2[3], v19);
    result = v18(v20, v15, &v45, 16, 6, 0);
    if ((v17 & 4) == 0)
    {
LABEL_7:
      if ((v17 & 2) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else if ((a4 & 4) == 0)
  {
    goto LABEL_7;
  }

  v45 = sub_1AF1CCB48(a3, a2, a5, a6, a7, a8, a9, a10, a11);
  v21 = a2[18];
  v23 = sub_1AF1DE360(a2[3], v22);
  result = v21(v23, v15, &v45, 16, 7, 0);
  if ((v17 & 2) == 0)
  {
    return result;
  }

LABEL_11:
  result = sub_1AF1CBEF8(a3);
  switch(result)
  {
    case 2:
      sub_1AF1CC9D8(a3, v24, v25, v26, v27, v28, v29, v30, v31);
      v45 = v41;
      v42 = a2[18];
      v43 = sub_1AF1DE360(a2[3], v40);
      return v42(v43, v15, &v45, 16, 4, 0);
    case 1:
      v36.n128_f64[0] = sub_1AF1CC7E0(a3, v24, v25, v26, v27, v28, v29, v30, v31);
      v45 = v36;
      v37 = a2[18];
      v39 = sub_1AF1DE360(a2[3], v38);
      return v37(v39, v15, &v45, 16, 5, 0);
    case 0:
      v32.n128_f64[0] = sub_1AF1CC1F0(a3, v24, v25, v26, v27, v28, v29, v30, v31);
      v45 = v32;
      v33 = a2[18];
      v35 = sub_1AF1DE360(a2[3], v34);
      return v33(v35, v15, &v45, 16, 3, 0);
  }

  return result;
}

void sub_1AF1DF22C(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE1694(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  ++*(result + 40);
}

uint64_t sub_1AF1DF56C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_nodeRef(*(a1 + 40), a2, a3);
  objc_msgSend_nodeRef(*(a1 + 48), v6, v7);

  return MEMORY[0x1EEE66B58](v4, sel_initParametersIfNeededWithDrivingNodeRef_deformedNodeRef_, v5);
}

uint64_t sub_1AF1DF6C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_nodeRef(*(a1 + 40), a2, a3);
  objc_msgSend_nodeRef(*(a1 + 48), v6, v7);
  objc_msgSend_nodeRef(*(a1 + 56), v8, v9);

  return MEMORY[0x1EEE66B58](v4, sel_initParametersIfNeededWithInnerLayerNodeRef_outerLayerNodeRef_deformedNodeRef_, v5);
}

uint64_t sub_1AF1E0D94(uint64_t a1, const char *a2, void *a3)
{
  objc_msgSend_configureStageInputOutputDescriptor_withDeformerFunction_(*(a1 + 32), a2, a3, a2);
  v7 = objc_msgSend_attributes(a3, v5, v6);
  v9 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, 6);
  objc_msgSend_setFormat_(v9, v10, *(*(a1 + 40) + 40));
  objc_msgSend_setOffset_(v9, v11, 0);
  objc_msgSend_setBufferIndex_(v9, v12, 3);
  v15 = objc_msgSend_layouts(a3, v13, v14);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 3);
  objc_msgSend_setStepFunction_(v17, v18, 5);
  objc_msgSend_setStride_(v17, v19, *(a1 + 56));
  v22 = objc_msgSend_attributes(a3, v20, v21);
  v24 = objc_msgSend_objectAtIndexedSubscript_(v22, v23, 7);
  objc_msgSend_setFormat_(v24, v25, *(*(a1 + 40) + 64));
  objc_msgSend_setOffset_(v24, v26, 0);
  objc_msgSend_setBufferIndex_(v24, v27, 4);
  v30 = objc_msgSend_layouts(a3, v28, v29);
  v32 = objc_msgSend_objectAtIndexedSubscript_(v30, v31, 4);
  objc_msgSend_setStepFunction_(v32, v33, 5);
  objc_msgSend_setStride_(v32, v34, *(a1 + 64));
  v35 = *(*(a1 + 48) + 8);
  v38 = objc_msgSend_attributes(a3, v36, v37);
  if (v35)
  {
    v40 = objc_msgSend_objectAtIndexedSubscript_(v38, v39, 11);
    objc_msgSend_setFormat_(v40, v41, 31);
    objc_msgSend_setOffset_(v40, v42, 0);
    objc_msgSend_setBufferIndex_(v40, v43, 6);
    v46 = objc_msgSend_attributes(a3, v44, v45);
    v48 = objc_msgSend_objectAtIndexedSubscript_(v46, v47, 12);
    objc_msgSend_setFormat_(v48, v49, 31);
    objc_msgSend_setOffset_(v48, v50, 16);
    objc_msgSend_setBufferIndex_(v48, v51, 6);
    v54 = objc_msgSend_attributes(a3, v52, v53);
    v56 = objc_msgSend_objectAtIndexedSubscript_(v54, v55, 13);
    objc_msgSend_setFormat_(v56, v57, 31);
    objc_msgSend_setOffset_(v56, v58, 32);
    v60 = 80;
  }

  else
  {
    v56 = objc_msgSend_objectAtIndexedSubscript_(v38, v39, 9);
    objc_msgSend_setFormat_(v56, v61, 30);
    objc_msgSend_setOffset_(v56, v62, 0);
    v60 = 72;
  }

  objc_msgSend_setBufferIndex_(v56, v59, 6);
  v65 = objc_msgSend_layouts(a3, v63, v64);
  v67 = objc_msgSend_objectAtIndexedSubscript_(v65, v66, 6);
  objc_msgSend_setStepFunction_(v67, v68, 5);
  v70 = *(a1 + v60);

  return objc_msgSend_setStride_(v67, v69, v70);
}

void *sub_1AF1E0F94(uint64_t a1, const char *a2, void *a3)
{
  objc_msgSend_configureStageInputOutputDescriptor_withDeformerFunction_(*(a1 + 32), a2, a3, a2);
  v7 = objc_msgSend_attributes(a3, v5, v6);
  v9 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, 6);
  objc_msgSend_setFormat_(v9, v10, *(*(a1 + 40) + 40));
  objc_msgSend_setOffset_(v9, v11, 0);
  objc_msgSend_setBufferIndex_(v9, v12, 3);
  v15 = objc_msgSend_layouts(a3, v13, v14);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 3);
  objc_msgSend_setStepFunction_(v17, v18, 5);
  objc_msgSend_setStride_(v17, v19, *(a1 + 56));
  v22 = objc_msgSend_attributes(a3, v20, v21);
  v24 = objc_msgSend_objectAtIndexedSubscript_(v22, v23, 7);
  objc_msgSend_setFormat_(v24, v25, *(*(a1 + 40) + 64));
  objc_msgSend_setOffset_(v24, v26, 0);
  objc_msgSend_setBufferIndex_(v24, v27, 4);
  v30 = objc_msgSend_layouts(a3, v28, v29);
  v32 = objc_msgSend_objectAtIndexedSubscript_(v30, v31, 4);
  objc_msgSend_setStepFunction_(v32, v33, 5);
  objc_msgSend_setStride_(v32, v34, *(a1 + 64));
  v37 = objc_msgSend_attributes(a3, v35, v36);
  v39 = objc_msgSend_objectAtIndexedSubscript_(v37, v38, 8);
  objc_msgSend_setFormat_(v39, v40, 28);
  objc_msgSend_setOffset_(v39, v41, 0);
  objc_msgSend_setBufferIndex_(v39, v42, 5);
  v45 = objc_msgSend_layouts(a3, v43, v44);
  v47 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, 5);
  objc_msgSend_setStepFunction_(v47, v48, 5);
  result = objc_msgSend_setStride_(v47, v49, *(a1 + 72));
  if (*(*(a1 + 48) + 8) == 1)
  {
    v53 = objc_msgSend_attributes(a3, v51, v52);
    v55 = objc_msgSend_objectAtIndexedSubscript_(v53, v54, 9);
    objc_msgSend_setFormat_(v55, v56, 30);
    objc_msgSend_setOffset_(v55, v57, 0);
    objc_msgSend_setBufferIndex_(v55, v58, 6);
    v61 = objc_msgSend_layouts(a3, v59, v60);
    v63 = objc_msgSend_objectAtIndexedSubscript_(v61, v62, 6);
    objc_msgSend_setStepFunction_(v63, v64, 5);
    objc_msgSend_setStride_(v63, v65, *(a1 + 80));
    v68 = objc_msgSend_attributes(a3, v66, v67);
    v70 = objc_msgSend_objectAtIndexedSubscript_(v68, v69, 10);
    objc_msgSend_setFormat_(v70, v71, 30);
    objc_msgSend_setOffset_(v70, v72, 0);
    objc_msgSend_setBufferIndex_(v70, v73, 7);
    v76 = objc_msgSend_layouts(a3, v74, v75);
    v78 = objc_msgSend_objectAtIndexedSubscript_(v76, v77, 7);
    objc_msgSend_setStepFunction_(v78, v79, 5);
    objc_msgSend_setStride_(v78, v80, *(a1 + 80));
    v83 = objc_msgSend_attributes(a3, v81, v82);
    v85 = objc_msgSend_objectAtIndexedSubscript_(v83, v84, 11);
    objc_msgSend_setFormat_(v85, v86, 30);
    objc_msgSend_setOffset_(v85, v87, 0);
    objc_msgSend_setBufferIndex_(v85, v88, 8);
    v91 = objc_msgSend_attributes(a3, v89, v90);
    v93 = objc_msgSend_objectAtIndexedSubscript_(v91, v92, 12);
    objc_msgSend_setFormat_(v93, v94, 30);
    objc_msgSend_setOffset_(v93, v95, 12);
    objc_msgSend_setBufferIndex_(v93, v96, 8);
    v99 = objc_msgSend_attributes(a3, v97, v98);
    v101 = objc_msgSend_objectAtIndexedSubscript_(v99, v100, 13);
    objc_msgSend_setFormat_(v101, v102, 30);
    objc_msgSend_setOffset_(v101, v103, 24);
    objc_msgSend_setBufferIndex_(v101, v104, 8);
    v107 = objc_msgSend_layouts(a3, v105, v106);
    v109 = objc_msgSend_objectAtIndexedSubscript_(v107, v108, 8);
    objc_msgSend_setStepFunction_(v109, v110, 5);
    objc_msgSend_setStride_(v109, v111, *(a1 + 88));
    v114 = objc_msgSend_attributes(a3, v112, v113);
    v116 = objc_msgSend_objectAtIndexedSubscript_(v114, v115, 14);
    objc_msgSend_setFormat_(v116, v117, 30);
    objc_msgSend_setOffset_(v116, v118, 0);
    objc_msgSend_setBufferIndex_(v116, v119, 9);
    v122 = objc_msgSend_attributes(a3, v120, v121);
    v124 = objc_msgSend_objectAtIndexedSubscript_(v122, v123, 15);
    objc_msgSend_setFormat_(v124, v125, 30);
    objc_msgSend_setOffset_(v124, v126, 12);
    objc_msgSend_setBufferIndex_(v124, v127, 9);
    v130 = objc_msgSend_attributes(a3, v128, v129);
    v132 = objc_msgSend_objectAtIndexedSubscript_(v130, v131, 16);
    objc_msgSend_setFormat_(v132, v133, 30);
    objc_msgSend_setOffset_(v132, v134, 24);
    objc_msgSend_setBufferIndex_(v132, v135, 9);
    v138 = objc_msgSend_layouts(a3, v136, v137);
    v140 = objc_msgSend_objectAtIndexedSubscript_(v138, v139, 9);
    objc_msgSend_setStepFunction_(v140, v141, 5);
    v143 = *(a1 + 88);

    return objc_msgSend_setStride_(v140, v142, v143);
  }

  return result;
}

uint64_t sub_1AF1E1834(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(a1, a2, v5, v6, a5, 0, 0);
}

float32x4_t sub_1AF1E1854(uint64_t a1, uint64_t a2, uint64_t a3, simd_float4x4 a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v23 = __invert_f4(a4);
  v11 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v23.columns[3], v23.columns[2], a6, 2), v23.columns[1], *a6.f32, 1), v23.columns[0], a6.f32[0]);
  v12 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v23.columns[3], v23.columns[2], a8, 2), v23.columns[1], *a8.f32, 1), v23.columns[0], a8.f32[0]);
  v21 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v23.columns[3], v23.columns[2], a5, 2), v23.columns[1], *a5.f32, 1), v23.columns[0], a5.f32[0]);
  v23.columns[0] = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v23.columns[3], v23.columns[2], a7, 2), v23.columns[1], *a7.f32, 1), v23.columns[0], a7.f32[0]), v11);
  v23.columns[2] = vsubq_f32(v12, v11);
  v23.columns[3] = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23.columns[0], v23.columns[0]), v23.columns[0], 0xCuLL), vnegq_f32(v23.columns[2])), v23.columns[0], vextq_s8(vuzp1q_s32(v23.columns[2], v23.columns[2]), v23.columns[2], 0xCuLL));
  v23.columns[1] = vextq_s8(vuzp1q_s32(v23.columns[3], v23.columns[3]), v23.columns[3], 0xCuLL);
  v13 = vmulq_f32(v23.columns[0], v23.columns[0]);
  v12.f32[0] = vaddv_f32(*v13.f32);
  *v13.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v12.f32[0]));
  *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v12.f32[0]), vmul_f32(*v13.f32, *v13.f32)));
  v13.i32[0] = vmul_f32(*v13.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v12.f32[0]), vmul_f32(*v13.f32, *v13.f32))).u32[0];
  v23.columns[0] = vmulq_n_f32(v23.columns[0], v13.f32[0]);
  v23.columns[3] = vmulq_f32(v23.columns[3], v23.columns[3]);
  v13.i64[0] = v13.u32[0];
  v13.f32[0] = v23.columns[3].f32[1] + (v23.columns[3].f32[2] + v23.columns[3].f32[0]);
  *v23.columns[3].f32 = vrsqrte_f32(*v13.f32);
  *v23.columns[3].f32 = vmul_f32(*v23.columns[3].f32, vrsqrts_f32(*v13.f32, vmul_f32(*v23.columns[3].f32, *v23.columns[3].f32)));
  v23.columns[1] = vmulq_n_f32(v23.columns[1], vmul_f32(*v23.columns[3].f32, vrsqrts_f32(*v13.f32, vmul_f32(*v23.columns[3].f32, *v23.columns[3].f32))).f32[0]);
  v23.columns[3] = vmulq_f32(v23.columns[2], v23.columns[2]);
  v12.f32[0] = v23.columns[3].f32[2] + vaddv_f32(*v23.columns[3].f32);
  *v23.columns[3].f32 = vrsqrte_f32(v12.u32[0]);
  *v23.columns[3].f32 = vmul_f32(*v23.columns[3].f32, vrsqrts_f32(v12.u32[0], vmul_f32(*v23.columns[3].f32, *v23.columns[3].f32)));
  v23.columns[2] = vmulq_n_f32(v23.columns[2], vmul_f32(*v23.columns[3].f32, vrsqrts_f32(v12.u32[0], vmul_f32(*v23.columns[3].f32, *v23.columns[3].f32))).f32[0]);
  v14 = a2 + 36 * a1;
  v23.columns[3] = v23.columns[0];
  v23.columns[3].i32[3] = v23.columns[1].i32[0];
  *v14 = v23.columns[3];
  *(v14 + 16) = vextq_s8(vextq_s8(v23.columns[1], v23.columns[1], 0xCuLL), v23.columns[2], 8uLL);
  *(v14 + 32) = v23.columns[2].i32[2];
  v22 = __invert_f3(*v23.columns[0].f32);
  result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22.columns[0], v21.f32[0]), v22.columns[1], *v21.f32, 1), v22.columns[2], v21, 2);
  v16 = a3 + 12 * a1;
  *v16 = result.i64[0];
  *(v16 + 8) = result.i32[2];
  return result;
}

void sub_1AF1E1A04(uint64_t a1, size_t count, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t a9, float32x4_t a10, float32x4_t a11, float32x4_t a12, unint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, size_t *a24)
{
  v28 = count;
  v115[9] = *MEMORY[0x1E69E9840];
  v79 = count;
  if (a13 == a14)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1AF1E2088;
    block[3] = &unk_1E7A7C138;
    block[4] = a7;
    block[5] = a4;
    block[6] = a6;
    block[7] = a8;
    block[8] = a15;
    block[9] = a16;
    block[10] = a17;
    block[11] = a22;
    block[12] = a21;
    block[13] = a18;
    block[14] = a19;
    block[15] = a20;
    dispatch_apply(count, 0, block);
  }

  else
  {
    v110.i64[0] = 0;
    v110.i64[1] = &v110;
    v111.i64[0] = 0x2020000000;
    v111.i32[2] = 0;
    v81 = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
    v74 = a7;
    v30 = sub_1AF1A3CCC(a3, v29);
    v31 = v30 - 1;
    if (v30 >= 1)
    {
      v32 = 0;
      do
      {
        v33 = sub_1AF1A3D1C(a3, v32, 0);
        sub_1AF1A767C(v33, a13, v114);
        sub_1AF1A767C(v33, a14, v115);
        v91.n128_u64[0] = MEMORY[0x1E69E9820];
        v91.n128_u64[1] = 3221225472;
        v92 = sub_1AF1E24A8;
        v93 = &unk_1E7A7C160;
        v96 = v74;
        v97 = a4;
        v98 = a6;
        v99 = a8;
        v100 = a15;
        v101 = a16;
        v102 = a17;
        v103 = a22;
        v104 = a21;
        v105 = a18;
        v106 = a19;
        v107 = a20;
        v94 = &v110;
        v95 = v81;
        v108 = v28;
        sub_1AF1A8154(v114, 2, &v91, v34);
        if (*(v110.i64[1] + 24) == v28)
        {
          break;
        }
      }

      while (v31 != v32++);
    }

    free(v81);
    _Block_object_dispose(&v110, 8);
  }

  if (a1 == 1)
  {
    v36 = 16 * (3 * v28);
  }

  else if (a1)
  {
    v36 = 0;
  }

  else
  {
    v36 = 4 * (3 * v28);
  }

  v38 = malloc_type_malloc(v36, 0x100004052888210uLL);
  if (v28)
  {
    v39 = 0;
    while (1)
    {
      if (a18)
      {
        v40 = *(a18 + (3 * v39));
        v41 = *(a18 + (3 * v39 + 1));
        v42 = *(a18 + (3 * v39 + 2));
      }

      else if (a19)
      {
        v40 = *(a19 + 2 * (3 * v39));
        v41 = *(a19 + 2 * (3 * v39 + 1));
        v42 = *(a19 + 2 * (3 * v39 + 2));
      }

      else if (a20)
      {
        v40 = *(a20 + 4 * (3 * v39));
        v41 = *(a20 + 4 * (3 * v39 + 1));
        v42 = *(a20 + 4 * (3 * v39 + 2));
      }

      else
      {
        v42 = 0;
        v41 = 0;
        v40 = 0;
      }

      if (a22)
      {
        v43 = (a22 + 4 * (v39 & 0x7FFFFFFF));
        v44.i32[0] = *v43;
        v44.i32[1] = v43[1];
        v45 = vdiv_f32(vcvt_f32_u32(v44), vdup_n_s32(0x477FFF00u));
      }

      else
      {
        v45 = *(a21 + 8 * (v39 & 0x7FFFFFFF));
      }

      v88 = v45;
      *v46.i64 = sub_1AF1AF084(a6, v40, v37);
      v85 = v46;
      *v48.i64 = sub_1AF1AF084(a6, v41, v47);
      v83 = v48;
      *v50.i64 = sub_1AF1AF084(a6, v42, v49);
      v89 = vmlaq_n_f32(vmlaq_n_f32(vmulq_lane_f32(v83, v88, 1), v85, v88.f32[0]), v50, (1.0 - v88.f32[0]) - v88.f32[1]);
      v51 = vsubq_f32(v83, v85);
      v52 = vsubq_f32(v50, v85);
      v53 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL), vnegq_f32(v52)), v51, vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL));
      v54 = vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL);
      v55 = vmulq_f32(v51, v51);
      *&v56 = v55.f32[2] + vaddv_f32(*v55.f32);
      *v55.f32 = vrsqrte_f32(v56);
      *v55.f32 = vmul_f32(*v55.f32, vrsqrts_f32(v56, vmul_f32(*v55.f32, *v55.f32)));
      v57 = vmulq_n_f32(v51, vmul_f32(*v55.f32, vrsqrts_f32(v56, vmul_f32(*v55.f32, *v55.f32))).f32[0]);
      v58 = vmulq_f32(v53, v53);
      v53.f32[0] = v58.f32[1] + (v58.f32[2] + v58.f32[0]);
      *v58.f32 = vrsqrte_f32(v53.u32[0]);
      *v58.f32 = vmul_f32(*v58.f32, vrsqrts_f32(v53.u32[0], vmul_f32(*v58.f32, *v58.f32)));
      v84 = vmulq_n_f32(v54, vmul_f32(*v58.f32, vrsqrts_f32(v53.u32[0], vmul_f32(*v58.f32, *v58.f32))).f32[0]);
      v86 = v57;
      v59 = vmulq_f32(v52, v52);
      v54.f32[0] = v59.f32[2] + vaddv_f32(*v59.f32);
      *v59.f32 = vrsqrte_f32(v54.u32[0]);
      *v59.f32 = vmul_f32(*v59.f32, vrsqrts_f32(v54.u32[0], vmul_f32(*v59.f32, *v59.f32)));
      v82 = vmulq_n_f32(v52, vmul_f32(*v59.f32, vrsqrts_f32(v54.u32[0], vmul_f32(*v59.f32, *v59.f32))).f32[0]);
      if (a1 == 1)
      {
        break;
      }

      if (!a1)
      {
        *v60.i64 = sub_1AF1AF084(a5, v39, v37);
        v90 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a12, a11, v60, 2), a10, *v60.f32, 1), a9, v60.f32[0]), v89);
        v116.columns[1] = v84;
        v116.columns[0] = v86;
        v116.columns[2] = v82;
        v117 = __invert_f3(v116);
        v117.columns[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v117.columns[0], v90.f32[0]), v117.columns[1], *v90.f32, 1), v117.columns[2], v90, 2);
        v38[(3 * v39)] = v117.columns[0].i32[0];
        v38[(3 * v39 + 1)] = v117.columns[0].i32[1];
        v61 = v117.columns[0].i32[2];
        v62 = 3 * v39 + 2;
LABEL_32:
        v38[v62] = v61;
      }

      if (++v39 == v79)
      {
        goto LABEL_34;
      }
    }

    v118.columns[1] = v84;
    v118.columns[0] = v57;
    v118.columns[0].i32[3] = 0;
    v118.columns[1].i32[3] = 0;
    v118.columns[2] = v82;
    v118.columns[2].i32[3] = 0;
    __asm { FMOV            V3.4S, #1.0 }

    v118.columns[3].i64[0] = v89.i64[0];
    v118.columns[3].i32[2] = v89.i32[2];
    v119 = __invert_f4(v118);
    v66 = 0;
    v110 = a9;
    v111 = a10;
    v112 = a11;
    v113 = a12;
    do
    {
      v114[v66 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v119.columns[0], COERCE_FLOAT(*(&v110 + v66 * 4))), v119.columns[1], *&v110.f32[v66], 1), v119.columns[2], *(&v110 + v66 * 4), 2), v119.columns[3], *(&v110 + v66 * 4), 3);
      v66 += 4;
    }

    while (v66 != 16);
    v67 = v114[0];
    v68 = v114[1];
    v69 = v114[2];
    v70 = v114[3];
    v71 = 12 * v39;
    v38[v71] = v114[0].i32[0];
    v38[(12 * v39) | 1] = v68.i32[0];
    v38[(12 * v39) | 2] = v69.i32[0];
    v38[(12 * v39) | 3] = v70.i32[0];
    *&v72 = vtrn2q_s32(v67, v68).u64[0];
    *(&v72 + 1) = __PAIR64__(v70.u32[1], v69.u32[1]);
    *&v38[v71 + 4] = v72;
    *&v38[v71 + 8] = vzip1_s32(*&vextq_s8(v67, v67, 8uLL), *&vextq_s8(v68, v68, 8uLL));
    v38[v71 + 10] = v69.i32[2];
    v61 = v70.i32[2];
    v62 = 12 * v39 + 11;
    goto LABEL_32;
  }

LABEL_34:
  *a23 = v38;
  *a24 = v36;
}

void sub_1AF1E2088(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  DWORD2(v17) = 0;
  *&v17 = 0;
  DWORD2(v16) = 0;
  *&v16 = 0;
  DWORD2(v15) = 0;
  *&v15 = 0;
  v5 = sub_1AF1AF104(a1[4], a2, a3);
  sub_1AF1E21E0(a1[5], a1[7], a1[8], a1[9], &v16, &v15, &v17, v5);
  v6 = a1[11];
  if (a1[10])
  {
    v7 = &v16;
  }

  else
  {
    v7 = &v15;
  }

  v8 = *v7;
  if (v6)
  {
    v9 = (v6 + 4 * a2);
    *v9 = (65535.0 * *&v8);
    v9[1] = vmuls_lane_f32(65535.0, *&v8, 1);
  }

  else
  {
    *(a1[12] + 8 * a2) = v8;
  }

  v10 = a1[13];
  if (v10)
  {
    *(v10 + 3 * a2) = v17;
    *(a1[13] + 3 * a2 + 1) = BYTE4(v17);
    *(a1[13] + 3 * a2 + 2) = BYTE8(v17);
  }

  else
  {
    v11 = a1[14];
    if (v11)
    {
      v12 = (v11 + 6 * a2);
      *v12 = v17;
      v12[1] = WORD2(v17);
      v12[2] = WORD4(v17);
    }

    else
    {
      v13 = a1[15];
      if (v13)
      {
        v14 = v13 + 12 * a2;
        *v14 = v17;
        *(v14 + 8) = DWORD2(v17);
      }
    }
  }
}

void sub_1AF1E21E0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, _OWORD *a5, _OWORD *a6, _OWORD *a7, double a8)
{
  v57 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 2139095039;
  v52 = 0;
  v53 = &v52;
  v56 = 0;
  v54 = 0x3020000000;
  v55 = 0;
  v47 = 0;
  v48 = &v47;
  v51 = 0;
  v49 = 0x3020000000;
  v50 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3020000000;
  v46 = 0;
  v45 = 0;
  v15 = sub_1AF1A3CCC(a1, a2);
  if (v15 >= 1)
  {
    v16 = 0;
    do
    {
      if (*(v37 + 24) == 1)
      {
        break;
      }

      v17 = sub_1AF1A3D1C(a1, v16, 0);
      sub_1AF1A767C(v17, a3, v40);
      sub_1AF1A767C(v17, a4, &v41);
      v21.n128_u64[0] = MEMORY[0x1E69E9820];
      v21.n128_u64[1] = 3221225472;
      v22 = sub_1AF1E3350;
      v23 = &unk_1E7A7C1D0;
      v30 = a8;
      v31 = a5;
      v32 = a6;
      v33 = a7;
      v24 = &v36;
      v25 = v34;
      v26 = &v47;
      v27 = &v52;
      v28 = &v42;
      v29 = a2;
      sub_1AF1A8154(v40, 2, &v21, v18);
      ++v16;
    }

    while (v15 != v16);
  }

  v19 = v37;
  if (!*(v37 + 24))
  {
    *a5 = *(v48 + 2);
    *a6 = *(v53 + 2);
    *a7 = *(v43 + 2);
    *(v19 + 24) = 1;
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&v36, 8);
}

void sub_1AF1E2458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose((v28 - 256), 8);
  _Block_object_dispose((v28 - 208), 8);
  _Block_object_dispose((v28 - 160), 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AF1E24A8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5)
{
  if (a4)
  {
    v8 = 0;
    v9 = 2 * a4;
    while (1)
    {
      v10 = *(a3 + 4 * v8);
      v11 = *(a1 + 40);
      if (!*(v11 + 4 * v10))
      {
        v12 = *(a3 + 4 * (v8 + 1));
        *(v11 + 4 * v10) = 1;
        DWORD2(v23) = 0;
        *&v23 = 0;
        DWORD2(v22) = 0;
        *&v22 = 0;
        DWORD2(v21) = 0;
        *&v21 = 0;
        v13 = sub_1AF1AF104(*(a1 + 48), v12, a3);
        sub_1AF1E21E0(*(a1 + 56), *(a1 + 72), *(a1 + 80), *(a1 + 88), &v22, &v21, &v23, v13);
        v14 = *(a1 + 104);
        v15 = *(a1 + 96) ? &v22 : &v21;
        v16 = *v15;
        if (v14)
        {
          *(v14 + 2 * (2 * v10)) = (65535.0 * *&v16);
          *(v14 + 2 * ((2 * v10) | 1u)) = vmuls_lane_f32(65535.0, *&v16, 1);
        }

        else
        {
          *(*(a1 + 112) + 4 * (2 * v10)) = v16;
        }

        v17 = *(a1 + 120);
        if (v17)
        {
          v18 = (3 * v10);
          *(v17 + v18) = v23;
          *(*(a1 + 120) + (v18 + 1)) = BYTE4(v23);
          *(*(a1 + 120) + (v18 + 2)) = BYTE8(v23);
        }

        else
        {
          v19 = *(a1 + 128);
          if (v19)
          {
            *(v19 + 2 * (3 * v10)) = v23;
            *(v19 + 2 * (3 * v10 + 1)) = WORD2(v23);
            *(v19 + 2 * (3 * v10 + 2)) = WORD4(v23);
          }

          else
          {
            v20 = *(a1 + 136);
            if (v20)
            {
              *(v20 + 4 * (3 * v10)) = v23;
              *(v20 + 4 * (3 * v10 + 1)) = DWORD1(v23);
              *(v20 + 4 * (3 * v10 + 2)) = DWORD2(v23);
            }
          }
        }

        if (++*(*(*(a1 + 32) + 8) + 24) == *(a1 + 144))
        {
          break;
        }
      }

      v8 += 2;
      if (v9 == v8)
      {
        return;
      }
    }

    *a5 = 1;
  }
}

void sub_1AF1E26A8(uint64_t a1, size_t iterations, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, void **a23, size_t *a24, void **a25, void *a26, size_t *a27)
{
  v27 = iterations;
  v30 = a20;
  v29 = a21;
  v31 = a18;
  v32 = a19;
  v34 = a16;
  v33 = a17;
  if (a1 == 1)
  {
    v36 = 4 * (9 * iterations);
    *a24 = v36;
    v44 = a7;
    v45 = a8;
    v42 = a6;
    v43 = a4;
    v40 = a11;
    v41 = a12;
    v38 = a9;
    v39 = a10;
    *a22 = malloc_type_malloc(v36, 0x100004052888210uLL);
    *a23 = malloc_type_malloc(*a24, 0x100004052888210uLL);
    v37 = 12 * v27;
    *a27 = v37;
    *a25 = malloc_type_malloc(v37, 0x100004052888210uLL);
    v35 = malloc_type_malloc(*a27, 0x100004052888210uLL);
    v34 = a16;
    v33 = a17;
    v32 = a19;
    v30 = a20;
    v29 = a21;
    v31 = a18;
    a9 = v38;
    a10 = v39;
    a11 = v40;
    a12 = v41;
    a6 = v42;
    a4 = v43;
    a7 = v44;
    a8 = v45;
    goto LABEL_5;
  }

  if (!a1)
  {
    v35 = 0;
    *a24 = 0;
    *a22 = 0;
    *a23 = 0;
    *a27 = 0;
    *a25 = 0;
LABEL_5:
    *a26 = v35;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF1E2860;
  block[3] = &unk_1E7A7C1A8;
  v47 = a9;
  v48 = a10;
  v49 = a11;
  v50 = a12;
  v51 = a6;
  v52 = a4;
  v53 = a13;
  v54 = a7;
  v55 = a8;
  v56 = a15;
  v57 = v29;
  v58 = v30;
  v59 = v32;
  v60 = v34;
  v61 = v33;
  v62 = v31;
  v63 = a1;
  v64 = a22;
  v65 = a25;
  v66 = a23;
  v67 = a26;
  dispatch_apply(v27, 0, block);
}

void sub_1AF1E2860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v103 = *MEMORY[0x1E69E9840];
  *v4.i64 = sub_1AF1AF084(*(a1 + 96), a2, a3);
  v51 = v4;
  v47 = *(a1 + 48);
  v49 = *(a1 + 32);
  v45 = *(a1 + 64);
  v53 = *(a1 + 80);
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x3020000000;
  v102 = 0;
  v101 = 0;
  v95 = 0;
  v96[0] = &v95;
  v97 = 0;
  v96[1] = 0x3020000000;
  v96[3] = 0;
  v92 = 0;
  v93[0] = &v92;
  v94 = 0;
  v93[1] = 0x3020000000;
  v93[3] = 0;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x2020000000;
  v72 = 2139095039;
  v87 = 0;
  v88 = &v87;
  v91 = 0;
  v89 = 0x3020000000;
  v90 = 0;
  v82 = 0;
  v83 = &v82;
  v86 = 0;
  v84 = 0x3020000000;
  v85 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3020000000;
  v81 = 0;
  v80 = 0;
  v7 = sub_1AF1A3CCC(*(a1 + 104), v5);
  v54 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v53, v45, v51, 2), v47, *v51.f32, 1), v49, v51.f32[0]);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*(v74 + 24) == 1)
      {
        break;
      }

      v9 = sub_1AF1A3D1C(*(a1 + 104), i, 0);
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      sub_1AF1A767C(v9, *(a1 + 112), &v67);
      v66[0] = v67;
      v66[1] = v68;
      v66[2] = v69;
      v66[3] = v70;
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = sub_1AF1E2EEC;
      v55[3] = &unk_1E7A7C188;
      v65 = *(a1 + 120);
      v56 = v54;
      v57 = &v73;
      v58 = &v95;
      v59 = &v92;
      v60 = &v98;
      v61 = v71;
      v62 = &v87;
      v63 = &v82;
      v64 = &v77;
      sub_1AF1A80E4(v66, v55, v54);
    }
  }

  v10 = v74;
  if (!*(v74 + 24))
  {
    *(v96[0] + 32) = *(v83 + 2);
    *(v93[0] + 32) = *(v88 + 2);
    *(v99 + 2) = *(v78 + 2);
    *(v10 + 24) = 1;
  }

  if (*(a1 + 136))
  {
    v11 = v96;
  }

  else
  {
    v11 = v93;
  }

  v52 = *(*v11 + 32);
  v12.n128_f64[0] = sub_1AF1AF084(*(a1 + 120), *(v99 + 8), v6);
  v50 = v12;
  v14.n128_f64[0] = sub_1AF1AF084(*(a1 + 120), *(v99 + 9), v13);
  v48 = v14;
  v16.n128_f64[0] = sub_1AF1AF084(*(a1 + 120), *(v99 + 10), v15);
  v46 = v16;
  v18.n128_f64[0] = sub_1AF1AF084(*(a1 + 128), *(v99 + 8), v17);
  v44 = v18;
  v20.n128_f64[0] = sub_1AF1AF084(*(a1 + 128), *(v99 + 9), v19);
  v43 = v20;
  *v22.i64 = sub_1AF1AF084(*(a1 + 128), *(v99 + 10), v21);
  v23 = (1.0 - *&v52) - *(&v52 + 1);
  v41 = v22;
  v24 = v54;
  v25 = vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_lane_f32(v48, *&v52, 1), v50, *&v52), v46, v23), v54);
  v26 = vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_lane_f32(v43, *&v52, 1), v44, *&v52), v22, v23), v54);
  v27 = vmulq_f32(v25, v25);
  v28 = sqrtf(v27.f32[2] + vaddv_f32(*v27.f32));
  v29 = vmulq_f32(v26, v26);
  v30 = sqrtf(v29.f32[2] + vaddv_f32(*v29.f32));
  v31 = vmulq_f32(v25, v26);
  if ((v31.f32[2] + vaddv_f32(*v31.f32)) >= 0.0)
  {
    if (v28 >= v30)
    {
      v32 = v30 / (v30 + sub_1AF1E329C(v54, v50, v48, v46, v26));
    }

    else
    {
      v33 = sub_1AF1E329C(v54, v44, v43, v41, v25);
      v32 = v33 / (v28 + v33);
    }

    v24 = v54;
  }

  else
  {
    v32 = v30 / (v28 + v30);
  }

  v34 = *(a1 + 152);
  *(*(a1 + 144) + 4 * a2) = v32;
  if (v34)
  {
    v35 = (v34 + 4 * a2);
    *v35 = (*&v52 * 65535.0);
    v35[1] = (*(&v52 + 1) * 65535.0);
  }

  else
  {
    *(*(a1 + 160) + 8 * a2) = v52;
  }

  v36 = *(a1 + 168);
  if (v36)
  {
    *(v36 + 3 * a2) = *(v99 + 2);
    *(*(a1 + 168) + 3 * a2 + 1) = *(v99 + 36);
    *(*(a1 + 168) + 3 * a2 + 2) = *(v99 + 40);
  }

  else
  {
    v37 = *(a1 + 176);
    if (v37)
    {
      v38 = (v37 + 6 * a2);
      *v38 = *(v99 + 2);
      v38[1] = *(v99 + 18);
      v38[2] = *(v99 + 20);
    }

    else
    {
      v39 = *(a1 + 184);
      if (v39)
      {
        v40 = (v39 + 12 * a2);
        *v40 = *(v99 + 8);
        v40[1] = *(v99 + 9);
        v40[2] = *(v99 + 10);
      }
    }
  }

  if (*(a1 + 192) == 1)
  {
    sub_1AF1E1854(a2, **(a1 + 200), **(a1 + 208), *(a1 + 32), v24, v50, v48, v46);
    sub_1AF1E1854(a2, **(a1 + 216), **(a1 + 224), *(a1 + 32), v54, v44, v43, v41);
  }

  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(v71, 8);
  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(&v73, 8);
}

void sub_1AF1E2E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose((v66 - 224), 8);
  _Block_object_dispose((v66 - 176), 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1AF1E2EEC(float32x4_t *a1, uint64_t a2, unsigned int *a3, uint64_t a4, _BYTE *a5)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  *v10.i64 = sub_1AF1AF084(a1[7].i64[0], v6, a3);
  v65 = v10;
  *v12.i64 = sub_1AF1AF084(a1[7].i64[0], v7, v11);
  v64 = v12;
  *v14.i64 = sub_1AF1AF084(a1[7].i64[0], v8, v13);
  v63 = v14;
  *v16.i64 = sub_1AF1AF084(a1[7].i64[0], v9, v15);
  v56 = v16;
  *v18.i64 = sub_1AF1AF084(a1[7].i64[1], v6, v17);
  v73 = v18;
  *v20.i64 = sub_1AF1AF084(a1[7].i64[1], v7, v19);
  v71 = v20;
  *v22.i64 = sub_1AF1AF084(a1[7].i64[1], v8, v21);
  v69 = v22;
  *v24.i64 = sub_1AF1AF084(a1[7].i64[1], v9, v23);
  v25 = 0;
  v62 = vsubq_f32(v73, v65);
  v26 = vsubq_f32(v71, v64);
  v61 = v26;
  v58 = v7;
  v59 = v6;
  v26.i32[0] = v6;
  v27 = v26;
  v27.i32[1] = v7;
  v60 = vsubq_f32(v69, v63);
  v28 = v27;
  v28.i32[2] = v8;
  v27.i32[2] = v9;
  v52 = v27;
  v53 = v28;
  v55 = vsubq_f32(v24, v56);
  v57 = v8;
  v26.i32[1] = v8;
  v54 = v9;
  v26.i32[2] = v9;
  v51 = v26;
  while (1)
  {
    v29 = v25 * 0.025;
    v30 = a1[2];
    v67 = v29;
    v31 = (*(a1[3].i64[1] + 8) + 32);
    v32 = (*(a1[4].i64[0] + 8) + 32);
    v33 = (*(a1[4].i64[1] + 8) + 32);
    v34 = *(a1[5].i64[0] + 8);
    v35 = *(a1[5].i64[1] + 8);
    v36 = *(a1[6].i64[0] + 8);
    v37 = *(a1[6].i64[1] + 8);
    v77[0] = 0.0;
    v76.i32[2] = 0;
    v76.i64[0] = 0;
    v75.i32[2] = 0;
    v75.i64[0] = 0;
    v70 = vmlaq_n_f32(v64, v61, v29);
    v72 = vmlaq_n_f32(v65, v62, v29);
    v66 = vmlaq_n_f32(v63, v60, v29);
    v74 = v30;
    if (sub_1AF1E38C4(v77, &v75, &v76, v72, v70, v66, v30))
    {
      v38 = 1;
      result = v59;
      v41 = v57;
      v40 = v58;
      goto LABEL_18;
    }

    v42 = v35 + 2;
    v43 = v36 + 2;
    v44 = v37 + 2;
    if (v77[0] < *(v34 + 24))
    {
      *(v34 + 24) = v77[0];
      v45 = v76;
      *v43 = v75;
      *v42 = v45;
      *v44 = v53;
    }

    v68 = vmlaq_n_f32(v56, v55, v67);
    if (sub_1AF1E38C4(v77, &v75, &v76, v72, v70, v68, v74))
    {
      v38 = 1;
      result = v59;
      v40 = v58;
      goto LABEL_17;
    }

    if (v77[0] < *(v34 + 24))
    {
      *(v34 + 24) = v77[0];
      v46 = v76;
      *v43 = v75;
      *v42 = v46;
      *v44 = v52;
    }

    if (sub_1AF1E38C4(v77, &v75, &v76, v72, v66, v68, v74))
    {
      v38 = 1;
      v47 = v59;
LABEL_16:
      result = v47;
      v40 = v57;
LABEL_17:
      v41 = v54;
LABEL_18:
      v49 = v76;
      *v31 = v75;
      *v32 = v49;
      v49.i64[0] = __PAIR64__(v40, result);
      v49.i32[2] = v41;
      *v33 = v49;
      goto LABEL_19;
    }

    if (v77[0] < *(v34 + 24))
    {
      *(v34 + 24) = v77[0];
      v48 = v76;
      *v43 = v75;
      *v42 = v48;
      *v44 = v51;
    }

    result = sub_1AF1E38C4(v77, &v75, &v76, v70, v66, v68, v74);
    if (result)
    {
      v38 = 1;
      v47 = v58;
      goto LABEL_16;
    }

    v38 = 0;
    if (v77[0] < *(v34 + 24))
    {
      v31 = v43;
      *(v34 + 24) = v77[0];
      v32 = v42;
      result = v58;
      v40 = v57;
      v41 = v54;
      v33 = v37 + 2;
      goto LABEL_18;
    }

LABEL_19:
    *(*(a1[3].i64[0] + 8) + 24) = v38;
    if (*(*(a1[3].i64[0] + 8) + 24) == 1)
    {
      break;
    }

    if (++v25 == 41)
    {
      return result;
    }
  }

  *a5 = 1;
  return result;
}

float sub_1AF1E329C(float32x4_t a1, __n128 a2, __n128 a3, __n128 a4, float32x4_t a5)
{
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  sub_1AF1DA13C(v15, v16);
  v5 = vmulq_f32(a5, a5);
  *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  *v5.f32 = vrsqrte_f32(v6);
  *v5.f32 = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32)));
  v14[0] = a1;
  v14[1] = vmulq_n_f32(a5, vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32))).f32[0]);
  v13.i32[2] = 0;
  v13.i64[0] = 0;
  v7 = sub_1AF286F84(v14, v15, &v13);
  result = 0.0;
  if (v7)
  {
    v9 = vsubq_f32(v13, a1);
    v10 = vmulq_f32(v9, v9);
    return sqrtf(v10.f32[2] + vaddv_f32(*v10.f32));
  }

  return result;
}

uint64_t sub_1AF1E3350(double *a1, uint64_t a2, __int32 *a3, uint64_t a4, _BYTE *a5)
{
  v7 = *a3;
  v9 = a3[2];
  v8 = a3[3];
  v11 = a3[4];
  v10 = a3[5];
  v13 = a3[6];
  v12 = a3[7];
  v14 = sub_1AF1AF104(*(a1 + 9), a3[1], a3);
  v16 = sub_1AF1AF104(*(a1 + 9), v8, v15);
  v18 = sub_1AF1AF104(*(a1 + 9), v10, v17);
  v20 = sub_1AF1AF104(*(a1 + 9), v12, v19);
  v42.i32[2] = 0;
  v42.i64[0] = 0;
  v41.i32[2] = 0;
  v41.i64[0] = 0;
  v21 = a1[10];
  result = sub_1AF1E36E4(&v41, &v42, *&v14, *&v16, *&v18, v21);
  if (result)
  {
    v23 = v42;
    **(a1 + 11) = v41;
    **(a1 + 12) = v23;
    v23.i64[0] = __PAIR64__(v9, v7);
    v23.i32[2] = v11;
LABEL_17:
    **(a1 + 13) = v23;
    *a5 = 1;
    *(*(*(a1 + 4) + 8) + 24) = 1;
    return result;
  }

  v24 = v42;
  v25 = vsub_f32(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v16, *v42.f32, 1), *&v14, v42.f32[0]), *&v18, v42, 2), v21);
  v26 = vaddv_f32(vmul_f32(v25, v25));
  v27 = *(*(a1 + 5) + 8);
  if (v26 < *(v27 + 24))
  {
    *(v27 + 24) = v26;
    *(*(*(a1 + 6) + 8) + 32) = v41;
    *(*(*(a1 + 7) + 8) + 32) = v24;
    v24.i64[0] = __PAIR64__(v9, v7);
    v24.i32[2] = v11;
    *(*(*(a1 + 8) + 8) + 32) = v24;
    v21 = a1[10];
  }

  result = sub_1AF1E36E4(&v41, &v42, *&v14, *&v16, *&v20, v21);
  if (result)
  {
    v23 = v42;
    **(a1 + 11) = v41;
    **(a1 + 12) = v23;
    v23.i64[0] = __PAIR64__(v9, v7);
LABEL_16:
    v23.i32[2] = v13;
    goto LABEL_17;
  }

  v28 = v42;
  v29 = vsub_f32(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v16, *v42.f32, 1), *&v14, v42.f32[0]), *&v20, v42, 2), v21);
  v30 = vaddv_f32(vmul_f32(v29, v29));
  v31 = *(*(a1 + 5) + 8);
  if (v30 < *(v31 + 24))
  {
    *(v31 + 24) = v30;
    *(*(*(a1 + 6) + 8) + 32) = v41;
    *(*(*(a1 + 7) + 8) + 32) = v28;
    v28.i64[0] = __PAIR64__(v9, v7);
    v28.i32[2] = v13;
    *(*(*(a1 + 8) + 8) + 32) = v28;
    v21 = a1[10];
  }

  result = sub_1AF1E36E4(&v41, &v42, *&v14, *&v18, *&v20, v21);
  if (result)
  {
    v23 = v42;
    **(a1 + 11) = v41;
    **(a1 + 12) = v23;
    v23.i32[0] = v7;
LABEL_15:
    v23.i32[1] = v11;
    goto LABEL_16;
  }

  v32 = v42;
  v33 = vsub_f32(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v18, *v42.f32, 1), *&v14, v42.f32[0]), *&v20, v42, 2), v21);
  v34 = vaddv_f32(vmul_f32(v33, v33));
  v35 = *(*(a1 + 5) + 8);
  if (v34 < *(v35 + 24))
  {
    *(v35 + 24) = v34;
    *(*(*(a1 + 6) + 8) + 32) = v41;
    *(*(*(a1 + 7) + 8) + 32) = v32;
    v32.i64[0] = __PAIR64__(v11, v7);
    v32.i32[2] = v13;
    *(*(*(a1 + 8) + 8) + 32) = v32;
    v21 = a1[10];
  }

  result = sub_1AF1E36E4(&v41, &v42, *&v16, *&v18, *&v20, v21);
  if (result)
  {
    v23 = v42;
    **(a1 + 11) = v41;
    **(a1 + 12) = v23;
    v23.i32[0] = v9;
    goto LABEL_15;
  }

  v36 = v42;
  v37 = vsub_f32(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v18, *v42.f32, 1), *&v16, v42.f32[0]), *&v20, v42, 2), v21);
  v38 = vaddv_f32(vmul_f32(v37, v37));
  v39 = *(*(a1 + 5) + 8);
  if (v38 < *(v39 + 24))
  {
    *(v39 + 24) = v38;
    HIDWORD(v40) = v41.i32[3];
    *(*(*(a1 + 6) + 8) + 32) = v41;
    *&v40 = __PAIR64__(v11, v9);
    *(*(*(a1 + 7) + 8) + 32) = v36;
    DWORD2(v40) = v13;
    *(*(*(a1 + 8) + 8) + 32) = v40;
  }

  return result;
}

uint64_t sub_1AF1E36E4(float32x4_t *a1, float32x4_t *a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, float32x2_t a6)
{
  v8 = vsub_f32(a4, a3);
  v9 = vsub_f32(a5, a3);
  v10 = vsub_f32(a6, a3);
  v11 = vmul_f32(v8, v8);
  v12 = vadd_f32(v11, vdup_lane_s32(v11, 1));
  v13 = vmul_f32(v8, v9);
  *v6.i8 = vmul_f32(v9, v9);
  v14 = vmul_f32(v8, v10);
  v15 = vmul_f32(v9, v10);
  v16 = vadd_f32(vzip1_s32(v14, v13), vzip2_s32(v14, v13));
  v17 = vadd_f32(vzip1_s32(v15, *v6.i8), vzip2_s32(v15, *v6.i8));
  v18 = vmla_n_f32(vmul_n_f32(v16, -v16.f32[1]), v17, v12.f32[0]);
  v19 = vdup_lane_s32(v18, 0);
  v19.f32[0] = (-v16.f32[1] * v17.f32[0]) + (v17.f32[1] * v16.f32[0]);
  *v6.i8 = vdiv_f32(v19, vdup_lane_s32(v18, 1));
  *v7.i32 = (1.0 - *v6.i32) - *&v6.i32[1];
  v20 = vextq_s8(vextq_s8(v7, v7, 4uLL), v6, 0xCuLL);
  v21 = v20;
  v21.i32[3] = v20.i32[2];
  __asm { FMOV            V21.4S, #1.0 }

  v27 = vceqq_f32(vminq_f32(vmaxq_f32(v21, 0), _Q21), v20);
  v27.i32[3] = v27.i32[2];
  v28 = vminvq_u32(v27);
  if ((v28 & 0x80000000) != 0)
  {
    *a1 = v21;
    goto LABEL_29;
  }

  if (*v7.i32 < 0.0)
  {
    if (*v6.i32 < 0.0)
    {
      *a1 = v21;
      v21 = xmmword_1AFE20180;
LABEL_29:
      *a2 = v21;
      return v28 >> 31;
    }

    if (*&v6.i32[1] < 0.0)
    {
      *a1 = v21;
      v21 = xmmword_1AFE20160;
      goto LABEL_29;
    }

    v31 = vsub_f32(a5, a4);
    v32 = vmul_f32(v31, vsub_f32(a6, a4));
    v33 = vmul_f32(v31, v31);
    v34 = vadd_f32(vzip1_s32(v32, v33), vzip2_s32(v32, v33));
    v30 = vdiv_f32(v34, vdup_lane_s32(v34, 1)).f32[0];
    if (v30 >= 1.0)
    {
      v30 = 1.0;
    }

    if (v30 <= 0.0)
    {
      v30 = 0.0;
    }

    *a1 = v21;
    v21.i32[0] = 0;
    v21.i32[3] = 0;
    v21.f32[1] = 1.0 - v30;
LABEL_28:
    v21.f32[2] = v30;
    goto LABEL_29;
  }

  if (*v6.i32 < 0.0 && *&v6.i32[1] < 0.0)
  {
    *a1 = v21;
    v21 = xmmword_1AFE20150;
    goto LABEL_29;
  }

  if (*&v6.i32[1] < 0.0)
  {
    v29 = vdiv_f32(v16, v12).f32[0];
    if (v29 >= 1.0)
    {
      v29 = 1.0;
    }

    if (v29 <= 0.0)
    {
      v29 = 0.0;
    }

    *a1 = v21;
    v21.i64[1] = 0;
    v21.f32[0] = 1.0 - v29;
    v21.f32[1] = v29;
    goto LABEL_29;
  }

  if (*v6.i32 < 0.0)
  {
    v30 = v17.f32[0] / v17.f32[1];
    if ((v17.f32[0] / v17.f32[1]) >= 1.0)
    {
      v30 = 1.0;
    }

    if (v30 <= 0.0)
    {
      v30 = 0.0;
    }

    *a1 = v21;
    v21.i32[1] = 0;
    v21.i32[3] = 0;
    v21.f32[0] = 1.0 - v30;
    goto LABEL_28;
  }

  return v28 >> 31;
}

BOOL sub_1AF1E38C4(float *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v10 = vsubq_f32(a5, a4);
  v11 = vsubq_f32(a6, a4);
  v13 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
  v14 = vmlaq_f32(vmulq_f32(v13, vnegq_f32(v11)), v10, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
  v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
  v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), vnegq_f32(v10)), v15, v13);
  v17 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
  v18 = vmulq_f32(v10, v10);
  v19 = vaddv_f32(*v18.f32);
  v20 = vrsqrte_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v19));
  v21 = vmul_f32(v20, vrsqrts_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v19), vmul_f32(v20, v20)));
  v22 = vmulq_n_f32(v10, vmul_f32(v21, vrsqrts_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v19), vmul_f32(v21, v21))).f32[0]);
  v23 = vmulq_f32(v16, v16);
  *&v24 = v23.f32[1] + (v23.f32[2] + v23.f32[0]);
  *v23.f32 = vrsqrte_f32(v24);
  *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
  v25 = vmulq_n_f32(v17, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]);
  v26 = vmulq_f32(a7, v22);
  v27 = vmulq_f32(a7, v25);
  v28 = vmlaq_n_f32(vmulq_n_f32(v25, v27.f32[2] + vaddv_f32(*v27.f32)), v22, v26.f32[2] + vaddv_f32(*v26.f32));
  v29 = vmulq_f32(v10, v22);
  v30 = vmulq_f32(v10, v25);
  *v30.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)), vadd_f32(vzip1_s32(*v29.i8, *v30.i8), vzip2_s32(*v29.i8, *v30.i8)));
  v31 = vmulq_f32(v11, v22);
  v32 = vmulq_f32(v11, v25);
  *v31.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)), vadd_f32(vzip1_s32(*v31.i8, *v32.i8), vzip2_s32(*v31.i8, *v32.i8)));
  v33 = vsubq_f32(v28, a4);
  v34 = vmulq_f32(v22, v33);
  v35 = vmulq_f32(v25, v33);
  v46.i32[2] = 0;
  v46.i64[0] = 0;
  v45.i32[2] = 0;
  v45.i64[0] = 0;
  sub_1AF1E36E4(&v46, &v45, 0, *v30.i8, *v31.i8, vadd_f32(vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v35, v35, 8uLL)), vadd_f32(vzip1_s32(*v34.i8, *v35.i8), vzip2_s32(*v34.i8, *v35.i8))));
  v36 = v45;
  v37 = vsubq_f32(a7, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a5, *v45.f32, 1), a4, v45.f32[0]), a6, v45, 2));
  v38 = vmulq_f32(v37, v37);
  v39 = vaddv_f32(*v38.f32);
  *a1 = v38.f32[2] + v39;
  *a2 = v46;
  *a3 = v36;
  return (v38.f32[2] + v39) == 0.0;
}

void sub_1AF1E4F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AF1E5014(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 != 7 && (a3 == 3 || a4 <= 0) && (a3 != 3 || a4 <= 7))
  {
    v7 = sub_1AF1B72DC(a2);
    if (v7)
    {
      v9 = sub_1AF0D5194(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE2A60();
      }
    }

    else if (a3 != 4 && a3 != 1)
    {
      if (a3)
      {
        if ((*(result + 64) & 1) == 0)
        {
          v19 = sub_1AFDE7DF0(*(*(result + 32) + 8));
          if (v19)
          {
            v21 = v19;
            if (objc_msgSend_indexOfObject_(*(result + 40), v20, v19) == 0x7FFFFFFFFFFFFFFFLL)
            {
              objc_msgSend_count(*(result + 40), v22, v23);
              objc_msgSend_addObject_(*(result + 40), v24, v21);
            }

            v25 = *(result + 48);

            MEMORY[0x1EEE66B58](VFXMTLResourceManager, sel__fillVertexDescriptor_withMeshSource_semantic_inputSet_bufferIndex_, v25);
          }
        }
      }

      else
      {
        v10 = sub_1AF1F1A7C(30);
        v12 = sub_1AF1AE6EC(a2, v11);
        *(*(*(result + 56) + 8) + 24) = v12;
        sub_1AFDE851C(*(*(result + 32) + 8), v12 * v10, 32);
        *(*(result + 32) + 120) = v13;
        v14 = *(result + 32);
        v15 = *(v14 + 49);
        if (v15 == *(v14 + 48))
        {
          v16 = *(v14 + 120);
        }

        else
        {
          v26 = sub_1AF1A4604(*(v14 + 40), 0, 0, v15);
          v28 = sub_1AF1AE6EC(v26, v27);
          sub_1AFDE851C(*(*(result + 32) + 8), v28 * v10, 32);
        }

        *(*(result + 32) + 88) = v16;
        v29 = objc_msgSend_count(*(result + 40), v17, v18);
        objc_msgSend_addObject_(*(result + 40), v30, *(*(result + 32) + 120));
        v33 = objc_msgSend_attributes(*(result + 48), v31, v32);
        v35 = objc_msgSend_objectAtIndexedSubscript_(v33, v34, 0);
        objc_msgSend_setFormat_(v35, v36, 30);
        objc_msgSend_setOffset_(v35, v37, 0);
        objc_msgSend_setBufferIndex_(v35, v38, v29 + 18);
        v41 = objc_msgSend_layouts(*(result + 48), v39, v40);
        v44 = objc_msgSend_bufferIndex(v35, v42, v43);
        v46 = objc_msgSend_objectAtIndexedSubscript_(v41, v45, v44);
        objc_msgSend_setStride_(v46, v47, v10);
        objc_msgSend_setStepFunction_(v46, v48, 1);
        v51 = objc_msgSend_offset(v35, v49, v50);
        v54 = objc_msgSend_stride(v46, v52, v53);
        v55 = *(result + 32);
        *(v55 + 240) = 1;
        *(v55 + 248) = 30;
        *(v55 + 256) = v51;
        *(v55 + 264) = v54;
      }
    }
  }
}

CFTypeRef sub_1AF1E69BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    v3 = sub_1AF170784(*(a1 + 40));

    return CFAutorelease(v3);
  }

  else
  {
    v5 = *(*(a1 + 32) + 40);

    return sub_1AF1A4604(v5, 0, 0, a2);
  }
}

const void *sub_1AF1E6A18(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    v2 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE2CC0();
    }

    return 0;
  }

  else
  {
    v3 = sub_1AF1A4604(*(*(a1 + 32) + 40), 1, 0, *(*(a1 + 32) + 49));
    if (!v3)
    {
      v3 = sub_1AF27D340(*(*(a1 + 32) + 40), *(*(a1 + 32) + 49), 0);
      if (!v3)
      {
        v6 = sub_1AF0D5194(0, v5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE2928(v6, v7, v8, v9, v10, v11, v12, v13);
        }
      }

      CFAutorelease(v3);
    }
  }

  return v3;
}

const void *sub_1AF1E6AD4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    v2 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE2D28();
    }

    return 0;
  }

  result = sub_1AF1A4604(*(*(a1 + 32) + 40), 4, 0, *(*(a1 + 32) + 49));
  if (!result)
  {
    v5 = sub_1AF27DDF0(*(*(a1 + 32) + 40), *(*(a1 + 32) + 49));
    if ((v5 & 1) == 0 && (byte_1EB65865A & 1) == 0)
    {
      byte_1EB65865A = 1;
      v7 = sub_1AF0D5194(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE2CF4();
      }
    }

    result = sub_1AF1A4604(*(*(a1 + 32) + 40), 4, 0, *(*(a1 + 32) + 49));
    if (!result)
    {
      v9 = sub_1AF0D5194(0, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE29A0(v9, v10, v11, v12, v13, v14, v15, v16);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF1E6DD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AF16B74C(a2, a2);
  if (result)
  {
    v10 = objc_msgSend_renderResourceForDeformerStack_node_dataKind_(*(*(a1 + 32) + 8), v9, a2, a3, a4);
    v12 = v10;
    if (v10)
    {
      if (*(v10 + 51) == 1)
      {
        v13 = sub_1AF0D5194(v10, v11);
        v10 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
        if (v10)
        {
          sub_1AFDE2D5C(v13, v11, v14, v15, v16, v17, v18, v19);
        }
      }

      if (*(v12 + 52) == 1)
      {
        v20 = sub_1AF0D5194(v10, v11);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE2DD4(v20, v21, v22, v23, v24, v25, v26, v27);
        }
      }
    }

    return sub_1AFDE22F0(v12, *(a1 + 40), *(a1 + 48), &v28, v30, &v29);
  }

  return result;
}

void sub_1AF1E701C(uint64_t a1, const char *a2, void *a3, __int16 a4)
{
  v7 = objc_msgSend_nodeRef(a3, a2, a3);
  v9 = sub_1AF1B7558(v7, v8);
  if (!v9)
  {
    v39 = sub_1AF1B75A0(v7, v10);
    v41 = sub_1AF1B2C1C(v39, v40);
    v43 = sub_1AF20E1F8(*(*(a1 + 32) + 8), v41, *(*(a1 + 32) + 49));
    if (a2 != 1)
    {
      if (a2)
      {
        return;
      }

      if ((a4 & 8) != 0 && (v44 = objc_msgSend_dependencyBufferForInput_dependencyMesh_(*(a1 + 32), v42, 3, v43), (*(*(a1 + 40) + 48) = v44) == 0) && (v45 = sub_1AF0D5194(0, v42), os_log_type_enabled(v45, OS_LOG_TYPE_FAULT)))
      {
        sub_1AFDE301C(v45, v42, v46, v47, v48, v49, v50, v51);
        if ((a4 & 0x10) == 0)
        {
          goto LABEL_24;
        }
      }

      else if ((a4 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      v52 = objc_msgSend_dependencyBufferForInput_dependencyMesh_(*(a1 + 32), v42, 4, v43);
      *(*(a1 + 40) + 56) = v52;
      if (!v52)
      {
        v53 = sub_1AF0D5194(0, v42);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE3094(v53, v42, v54, v55, v56, v57, v58, v59);
        }
      }

LABEL_24:
      if ((a4 & 0x20) != 0)
      {
        v60 = objc_msgSend_dependencyBufferForInput_dependencyMesh_(*(a1 + 32), v42, 5, v43);
        *(*(a1 + 40) + 64) = v60;
        if (!v60)
        {
          v31 = sub_1AF0D5194(0, v61);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_14;
          }
        }
      }

      return;
    }

    if ((a4 & 0x40) != 0 && (v88 = objc_msgSend_dependencyBufferForInput_dependencyMesh_(*(a1 + 32), v42, 6, v43), (*(*(a1 + 40) + 72) = v88) == 0) && (v89 = sub_1AF0D5194(0, v42), os_log_type_enabled(v89, OS_LOG_TYPE_FAULT)))
    {
      sub_1AFDE2EB4(v89, v42, v90, v91, v92, v93, v94, v95);
      if ((a4 & 0x80) == 0)
      {
        goto LABEL_46;
      }
    }

    else if ((a4 & 0x80) == 0)
    {
      goto LABEL_46;
    }

    v96 = objc_msgSend_dependencyBufferForInput_dependencyMesh_(*(a1 + 32), v42, 7, v43);
    *(*(a1 + 40) + 80) = v96;
    if (!v96)
    {
      v97 = sub_1AF0D5194(0, v42);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE2F2C(v97, v42, v98, v99, v100, v101, v102, v103);
      }
    }

LABEL_46:
    if ((a4 & 0x100) == 0)
    {
      return;
    }

    v104 = objc_msgSend_dependencyBufferForInput_dependencyMesh_(*(a1 + 32), v42, 8, v43);
    *(*(a1 + 40) + 88) = v104;
    if (v104)
    {
      return;
    }

    v80 = sub_1AF0D5194(0, v105);
    if (!os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_49:
    sub_1AFDE2FA4(v80, v81, v82, v83, v84, v85, v86, v87);
    return;
  }

  v12 = objc_msgSend_renderResourceForDeformerStack_node_dataKind_(*(*(a1 + 32) + 8), v10, v9, v7, *(*(a1 + 32) + 49));
  if (a2 == 1)
  {
    if ((a4 & 0x40) != 0 && (v62 = objc_msgSend_dependencyBufferForInput_dependencyStack_(*(a1 + 32), v11, 6, v12), (*(*(a1 + 40) + 72) = v62) == 0) && (v63 = sub_1AF0D5194(0, v11), os_log_type_enabled(v63, OS_LOG_TYPE_FAULT)))
    {
      sub_1AFDE2EB4(v63, v11, v64, v65, v66, v67, v68, v69);
      if ((a4 & 0x80) == 0)
      {
        goto LABEL_35;
      }
    }

    else if ((a4 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    v70 = objc_msgSend_dependencyBufferForInput_dependencyStack_(*(a1 + 32), v11, 7, v12);
    *(*(a1 + 40) + 80) = v70;
    if (!v70)
    {
      v71 = sub_1AF0D5194(0, v11);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE2F2C(v71, v11, v72, v73, v74, v75, v76, v77);
      }
    }

LABEL_35:
    if ((a4 & 0x100) == 0)
    {
      return;
    }

    v78 = objc_msgSend_dependencyBufferForInput_dependencyStack_(*(a1 + 32), v11, 8, v12);
    *(*(a1 + 40) + 88) = v78;
    if (v78)
    {
      return;
    }

    v80 = sub_1AF0D5194(0, v79);
    if (!os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_49;
  }

  if (a2)
  {
    return;
  }

  if ((a4 & 8) != 0 && (v13 = objc_msgSend_dependencyBufferForInput_dependencyStack_(*(a1 + 32), v11, 3, v12), (*(*(a1 + 40) + 48) = v13) == 0) && (v14 = sub_1AF0D5194(0, v11), os_log_type_enabled(v14, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE301C(v14, v11, v15, v16, v17, v18, v19, v20);
    if ((a4 & 0x10) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a4 & 0x10) == 0)
  {
    goto LABEL_11;
  }

  v21 = objc_msgSend_dependencyBufferForInput_dependencyStack_(*(a1 + 32), v11, 4, v12);
  *(*(a1 + 40) + 56) = v21;
  if (!v21)
  {
    v22 = sub_1AF0D5194(0, v11);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE3094(v22, v11, v23, v24, v25, v26, v27, v28);
    }
  }

LABEL_11:
  if ((a4 & 0x20) != 0)
  {
    v29 = objc_msgSend_dependencyBufferForInput_dependencyStack_(*(a1 + 32), v11, 5, v12);
    *(*(a1 + 40) + 64) = v29;
    if (!v29)
    {
      v31 = sub_1AF0D5194(0, v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
LABEL_14:
        sub_1AFDE310C(v31, v32, v33, v34, v35, v36, v37, v38);
      }
    }
  }
}

uint64_t sub_1AF1E73C8(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(a1 + 232);
    v7 = *(*(a1 + 224) + 24);
    v8 = *(a1 + 176);
    v15[8] = *(a1 + 160);
    v15[9] = v8;
    v9 = *(a1 + 208);
    v15[10] = *(a1 + 192);
    v15[11] = v9;
    v10 = *(a1 + 112);
    v15[4] = *(a1 + 96);
    v15[5] = v10;
    v11 = *(a1 + 144);
    v15[6] = *(a1 + 128);
    v15[7] = v11;
    v12 = *(a1 + 48);
    v15[0] = *(a1 + 32);
    v15[1] = v12;
    v13 = *(a1 + 80);
    v14 = *(a1 + 240);
    v15[2] = *(a1 + 64);
    v15[3] = v13;
    return objc_msgSend_updateDataForAuthoringEnvironment_node_transforms_context_(a2, v5, v14, v7, v15, v6);
  }

  return result;
}

uint64_t sub_1AF1E7450(uint64_t a1, uint64_t a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 48);

    return MEMORY[0x1EEE66B58](a2, sel_drawAuthoringEnvironment_node_context_, v5);
  }

  return result;
}

uint64_t sub_1AF1E7700(void *a1, const char *a2, void *a3)
{
  v6 = objc_msgSend_attributes(a1, a2, a3);
  v8 = objc_msgSend_objectAtIndexedSubscript_(v6, v7, a2);
  objc_msgSend_setFormat_(v8, v9, a3[1]);
  objc_msgSend_setOffset_(v8, v10, a3[2]);
  objc_msgSend_setBufferIndex_(v8, v11, (a2 + 10));
  v14 = objc_msgSend_layouts(a1, v12, v13);
  v17 = objc_msgSend_bufferIndex(v8, v15, v16);
  v19 = objc_msgSend_objectAtIndexedSubscript_(v14, v18, v17);
  objc_msgSend_setStepFunction_(v19, v20, 5);
  v22 = a3[3];

  return objc_msgSend_setStride_(v19, v21, v22);
}

void sub_1AF1E7B7C()
{
  v0[92] = v0[93];
  v0[94] = v0[95];
  v0[96] = v0[97];
}

void sub_1AF1E7BB8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

uint64_t sub_1AF1E7BDC(uint64_t a1)
{

  return MEMORY[0x1EEE66B58](a1, sel_updateWithComputeContext_buffers_, v1);
}

uint64_t sub_1AF1E7C04(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = sub_1AF15B294(a2);
  if (!sub_1AF1B5264(v3))
  {
    return 1;
  }

  if (sub_1AF0D5C40(7))
  {
    return 1;
  }

  return 3;
}

void sub_1AF1E8B4C(uint64_t a1, int a2, uint64_t a3)
{
  v77 = *MEMORY[0x1E69E9840];
  if (sub_1AF170774(a3))
  {
    v6 = sub_1AF170784(a3);
    CFAutorelease(v6);
    v7 = 0;
    goto LABEL_20;
  }

  v8 = sub_1AF1A4604(a3, 0, 0, 0);
  v6 = v8;
  v10 = *(a1 + 92) == 1 && v8 == 0;
  if (!v10 || sub_1AF1A3CCC(a3, v9))
  {
    if (*(*(a1 + 32) + 32) == 1)
    {
      v7 = sub_1AF1A4604(a3, 1, 0, 0);
      if (!v7)
      {
        v7 = sub_1AF27D874(a3, *(a1 + 40), 0);
        if (!v7)
        {
          v12 = sub_1AF0D5194(0, v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE3590(v12, v13, v14, v15, v16, v17, v18, v19);
          }
        }

        CFAutorelease(v7);
      }
    }

    else
    {
      v7 = 0;
    }

    if (*(a1 + 92) == 1 && *(*(a1 + 32) + 40) != 1)
    {
      v20 = sub_1AF1A3D1C(a3, 0, 0);
      v22 = sub_1AF1AE6EC(*(a1 + 48), v21);
      v23 = sub_1AF1A4C6C(*(a1 + 40), 0, 0);
      v6 = sub_1AF1AEC88(v6, v20, v22, v23);
      CFAutorelease(v6);
      if (*(*(a1 + 32) + 32) == 1)
      {
        v25 = sub_1AF1AE6EC(*(a1 + 56), v24);
        v26 = sub_1AF1A4C6C(*(a1 + 40), 1, 0);
        v7 = sub_1AF1AEC88(v7, v20, v25, v26);
        CFAutorelease(v7);
      }
    }

LABEL_20:
    if (*(*(a1 + 32) + 17) == 1 && (v27 = *(a1 + 64)) != 0)
    {
      v29 = sub_1AF1E911C(v6, *(a1 + 88), v27);
      if (*(*(a1 + 32) + 32) == 1)
      {
        v30 = sub_1AF1E911C(v7, *(a1 + 88), *(a1 + 64));
LABEL_26:
        v31 = v30;
        goto LABEL_28;
      }
    }

    else
    {
      v29 = CFRetain(v6);
      if (*(*(a1 + 32) + 32) == 1)
      {
        v30 = CFRetain(v7);
        goto LABEL_26;
      }
    }

    v31 = 0;
LABEL_28:
    if (*(a1 + 93) == 1)
    {
      v32 = sub_1AF1ADEA8(*(a1 + 48), v29);
      if (!v32)
      {
        return;
      }

      v33 = v32;
      CFRelease(v29);
      if (*(*(a1 + 32) + 32) == 1)
      {
        v34 = sub_1AF1ADEA8(*(a1 + 56), v31);
        if (!v34)
        {
          return;
        }

        v35 = v34;
        CFRelease(v31);
        v31 = v35;
      }
    }

    else
    {
      v33 = v29;
    }

    if (*(*(a1 + 32) + 40) != 1)
    {
      v49 = sub_1AF1AE6EC(v33, v28);
      v51 = v49;
      if (*(*(a1 + 32) + 64) != v49)
      {
        v52 = sub_1AF0D5194(v49, v50);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE3608(v52, v53, v54, v55, v56, v57, v58, v59);
        }
      }

      v60 = v51;
      goto LABEL_56;
    }

    memset(buf, 0, 32);
    sub_1AF1AE1A8(v33, v28, buf);
    v39 = 0uLL;
    v74 = 0u;
    v75 = 0u;
    if (v31)
    {
      sub_1AF1AE1A8(v31, v36, &v74);
    }

    if (!*buf || v31 && !v74)
    {
      v40 = *(a1 + 40);
      if (!v40 || (v41 = sub_1AF16CBEC(v40, v36)) == 0)
      {
        v41 = sub_1AF16CBEC(*(a1 + 72), v36);
      }

      v42 = sub_1AF16CBEC(a3, v36);
      v44 = sub_1AF0D5194(v42, v43);
      v45 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
      if (v45)
      {
        *buf = 136315394;
        *&buf[4] = "[VFXMTLMorphDeformer setupMorphTargetsWithComputeContext:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v33;
        _os_log_impl(&dword_1AF0CE000, v44, OS_LOG_TYPE_INFO, "Info: [Deformers] %s | Position source: %@", buf, 0x16u);
      }

      if (v31)
      {
        v47 = sub_1AF0D5194(v45, v46);
        v45 = os_log_type_enabled(v47, OS_LOG_TYPE_INFO);
        if (v45)
        {
          *buf = 136315394;
          *&buf[4] = "[VFXMTLMorphDeformer setupMorphTargetsWithComputeContext:]_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v31;
          _os_log_impl(&dword_1AF0CE000, v47, OS_LOG_TYPE_INFO, "Info: [Deformers] %s | Normal source: %@", buf, 0x16u);
        }
      }

      v48 = sub_1AF0D5194(v45, v46);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        *&buf[4] = v42;
        *&buf[12] = 1024;
        *&buf[14] = a2;
        *&buf[18] = 2112;
        *&buf[20] = v41;
      }

      goto LABEL_50;
    }

    v65 = *&buf[16];
    if (v31)
    {
      if (!*&buf[16])
      {
        goto LABEL_50;
      }

      v66 = 0;
      v67 = 0;
      do
      {
        *v68.i64 = sub_1AF279750(buf[20], (*buf + v67 * buf[22]), v39, v37.f32[0], v38.f32[0]);
        v73 = v68;
        *v39.i64 = sub_1AF279750(BYTE4(v75), (v74 + v67 * BYTE6(v75)), v68, v69, v70);
        v38.i64[0] = 0x3400000034000000;
        v38.i64[1] = 0x3400000034000000;
        v37.i32[0] = vminvq_u32(vcgeq_f32(v38, vabsq_f32(v73)));
        if ((v37.i32[0] & 0x80000000) == 0 || (v37.i64[0] = 0x3400000034000000, v37.i64[1] = 0x3400000034000000, v39 = vcgeq_f32(v37, vabsq_f32(v39)), v39.i32[0] = vminvq_u32(v39), (v39.i32[0] & 0x80000000) == 0))
        {
          ++v66;
        }

        ++v67;
      }

      while (v65 != v67);
    }

    else
    {
      if (!*&buf[16])
      {
        goto LABEL_50;
      }

      v71 = 0;
      v66 = 0;
      do
      {
        *v72.i64 = sub_1AF279750(buf[20], (*buf + v71 * buf[22]), v39, v37.f32[0], v38.f32[0]);
        v37.i64[0] = 0x3400000034000000;
        v37.i64[1] = 0x3400000034000000;
        v39 = vcgeq_f32(v37, vabsq_f32(v72));
        v39.i32[0] = vminvq_u32(v39);
        v66 += v39.i32[0] >= 0;
        ++v71;
      }

      while (v65 != v71);
    }

    if (v66)
    {
      v60 = v66;
LABEL_56:
      v61 = *(a1 + 80);
      v62 = *(a1 + 32);
      v63 = *(v62 + 68);
      *(v62 + 68) = v63 + 1;
      v64 = v61 + 40 * v63;
      *v64 = a2;
      *(v64 + 4) = 0;
      *(v64 + 8) = a3;
      *(v64 + 16) = v33;
      *(v64 + 24) = v31;
      *(v64 + 32) = v60;
      return;
    }

LABEL_50:
    CFRelease(v33);
    if (v31)
    {
      CFRelease(v31);
    }
  }
}

uint64_t sub_1AF1E911C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = a2;
  v19 = 0u;
  v20 = 0u;
  sub_1AF1AE1A8(a1, a2, &v19);
  v6 = BYTE6(v20);
  v7 = v4;
  v8 = BYTE6(v20) * v4;
  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  v10 = v9;
  if (v4)
  {
    v11 = v4;
    v12 = v9;
    do
    {
      v13 = *a3++;
      memcpy(v12, (v19 + v13 * v6), v6);
      v12 += v6;
      --v11;
    }

    while (v11);
  }

  v14 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v10, v8, *MEMORY[0x1E695E488]);
  v16 = sub_1AF1AE3D8(a1, v15);
  v17 = sub_1AF1ADC58(v16, v14, BYTE7(v20), BYTE8(v20), v7, v6, 0);
  CFRelease(v14);
  return v17;
}

void sub_1AF1E9228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_1AF170774(a3))
  {

    sub_1AF1A49AC(a3, v4);
  }
}

uint64_t sub_1AF1EA6A4(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_currentBlitEncoder(*(a1 + 32), a2, a3);
  v4 = *(a1 + 40);
  v5 = *(v4 + 16);

  return MEMORY[0x1EEE66B58](v4, sel_makeReadOnlyBuffersWithBaseGeometry_baseMesh_blitEncoder_, v5);
}

BOOL sub_1AF1EB234(uint64_t a1, void *a2, void *a3)
{
  objc_opt_self();
  v5 = sub_1AF1C7940(a3);
  if (v5 != sub_1AF1C7940(a2))
  {
    return 0;
  }

  v6 = sub_1AF15B294(a3);
  if (v6 != sub_1AF15B294(a2))
  {
    return 0;
  }

  v8 = sub_1AF1C78EC(a3, v7);
  if (v8 != sub_1AF1C78EC(a2, v9))
  {
    return 0;
  }

  v11 = sub_1AF1C78EC(a3, v10);
  v12 = sub_1AF15B294(a3);
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  sub_1AF1C78C4(a3, &v19, &v17, &v15);
  sub_1AF1C78C4(a2, &v18, &v16, &v14);
  if (v19 && v18)
  {
    if (memcmp(v19, v18, 4 * v12 + 4))
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (!v19 || !v18)
    {
      return result;
    }
  }

  if (!v17 || !v16)
  {
    result = 0;
    if (!v17 || !v16)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (memcmp(v17, v16, 2 * v11))
  {
    return 0;
  }

LABEL_16:
  if (v15 && v14)
  {
    return !memcmp(v15, v14, 4 * v11);
  }

  result = 0;
  if (v15 && v14)
  {
    return 1;
  }

  return result;
}

void sub_1AF1EB3C8(_BOOL8 result, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v6 = result;
  *&v14[5] = *MEMORY[0x1E69E9840];
  if (a4 <= 2)
  {
    v7 = sub_1AF0D5194(result, a2);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    if (result)
    {
      sub_1AFDE43F8(v7);
      if (!a4)
      {
        return;
      }
    }

    else if (!a4)
    {
      return;
    }
  }

  v8 = a4;
  do
  {
    v9 = *(v6 + 32);
    v10 = a3;
    if (v9)
    {
      v10 = (v9 + 4 * *a3);
    }

    v11 = *v10;
    if (v11 >= *(v6 + 48))
    {
      v12 = sub_1AF0D5194(result, a2);
      result = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);
      if (result)
      {
        sub_1AFDE447C(v13, v14, v12);
      }
    }

    ++*(*(v6 + 40) + 4 * v11);
    ++a3;
    --v8;
  }

  while (v8);
}

void sub_1AF1EB4D4(uint64_t result, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  if (a4 <= 2)
  {
    v7 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE44CC(v7);
      if (!a4)
      {
        return;
      }
    }

    else if (!a4)
    {
      return;
    }
  }

  v8 = *(result + 32);
  v9 = *(result + 40);
  v10 = a4;
  v11 = a3;
  do
  {
    v12 = v11;
    if (v8)
    {
      v12 = (v8 + 4 * *v11);
    }

    v13 = *v12;
    v14 = *(v9 + 4 * v13);
    if (!v14)
    {
      break;
    }

    v15 = *(*(result + 48) + 4 * v13);
    v16 = v14 - 1;
    *(v9 + 4 * v13) = v16;
    v17 = v15 + v16;
    if ((v15 + v16) >= *(result + 72))
    {
      break;
    }

    v18 = *a3;
    v19 = 3 * v17;
    if (*(result + 76) == 1)
    {
      v20 = *(result + 56);
      *(v20 + 2 * v19) = v18;
      v21 = a3[2];
      *(v20 + 2 * (v19 + 1)) = a3[1];
      *(v20 + 2 * (v19 + 2)) = v21;
    }

    else
    {
      v22 = *(result + 64);
      *(v22 + 4 * v19) = v18;
      *(v22 + 4 * (v19 + 1)) = a3[1];
      *(v22 + 4 * (v19 + 2)) = a3[2];
    }

    ++v11;
    --v10;
  }

  while (v10);
}

uint64_t sub_1AF1EB71C(uint64_t a1)
{
  v2[8] = 0u;
  v2[9] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;

  return sub_1AF1A767C(a1, v1, v3 - 192);
}

__n128 sub_1AF1EB740()
{
  v1 = *(v0 + 112);
  *v0 = *(v0 + 96);
  *(v0 + 16) = v1;
  result = *(v0 + 128);
  v3 = *(v0 + 144);
  *(v0 + 32) = result;
  *(v0 + 48) = v3;
  return result;
}

void *sub_1AF1EB754(size_t a1)
{

  return malloc_type_malloc(a1, 0x100004052888210uLL);
}

uint64_t sub_1AF1EB930(int a1, void *a2, CFTypeRef cf1, uint64_t a4)
{
  v6 = CFEqual(cf1, @"kCFXNotificationProfileWillDie");
  if (!v6)
  {
    v8 = sub_1AF0D5194(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4550(v8, v7, v9, v10, v11, v12, v13, v14);
    }
  }

  return objc_msgSend_releaseProgramForResource_(a2, v7, a4);
}

id sub_1AF1EBAC0()
{
  v0 = [VFXCommonProfileProgramGeneratorMetal alloc];
  result = objc_msgSend_initAllowingHotReload_(v0, v1, 1);
  qword_1EB658660 = result;
  return result;
}

id sub_1AF1EBAF0()
{
  v0 = [VFXCommonProfileProgramGeneratorMetal alloc];
  result = objc_msgSend_initAllowingHotReload_(v0, v1, 0);
  qword_1EB658670 = result;
  return result;
}

void sub_1AF1EBF70(void *a1, uint64_t *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = a2;
    do
    {
      v6 = sub_1AF14896C(*v4, a2);
      if (v6)
      {
        CFDictionaryApplyFunction(v6, sub_1AF1EBFDC, a1);
      }

      ++v4;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1AF1EBFF0(uint64_t *a1, uint64_t a2)
{
  if (a2 < 1)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v2 = a2;
    v4 = 0;
    do
    {
      v5 = *a1++;
      v4 |= sub_1AF148C40(v5, a2);
      --v2;
    }

    while (v2);
  }

  return v4;
}

__CFString *sub_1AF1EC048(uint64_t a1, uint64_t a2)
{
  if (a1 < 0x13)
  {
    return off_1E7A7C3F0[a1];
  }

  v3 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE4720(v3);
  }

  return 0;
}

uint64_t sub_1AF1EC0A4(int a1, int a2)
{
  if (qword_1ED731AF0 != -1)
  {
    sub_1AFDE4764();
  }

  return *(&unk_1ED731630 + 8 * a1 + a2);
}

void sub_1AF1EC0F4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = &qword_1ED731650;
  v4 = *MEMORY[0x1E695E480];
  do
  {
    v5 = sub_1AF1EC048(v2, a2);
    *(v3 - 4) = v5;
    MutableCopy = CFStringCreateMutableCopy(v4, 0, v5);
    CFStringUppercase(MutableCopy, 0);
    *(v3 - 3) = CFStringCreateWithFormat(v4, 0, @"USE_%@", MutableCopy);
    *(v3 - 2) = CFStringCreateWithFormat(v4, 0, @"USE_%@_COLOR", MutableCopy);
    *(v3 - 1) = CFStringCreateWithFormat(v4, 0, @"USE_%@_INTENSITY", MutableCopy);
    *v3 = CFStringCreateWithFormat(v4, 0, @"USE_%@_TEXTURE_COMPONENT", MutableCopy);
    v3[1] = CFStringCreateWithFormat(v4, 0, @"USE_%@TEXCOORD", MutableCopy);
    v3[2] = CFStringCreateWithFormat(v4, 0, @"USE_%@_MAP", MutableCopy);
    v3[3] = CFStringCreateWithFormat(v4, 0, @"USE_%@_CUBEMAP", MutableCopy);
    CFRelease(MutableCopy);
    ++v2;
    v3 += 8;
  }

  while (v2 != 19);
}

uint64_t sub_1AF1ECB20(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  if (objc_msgSend_hasPrefix_(a4, a2, @"texture") & 1) != 0 || (objc_msgSend_hasPrefix_(a4, v8, @"depth"))
  {
    v9 = 168;
    if (v6)
    {
      v9 = 176;
    }

    v10 = *(a1 + v9);
    if (!objc_msgSend_hasSuffix_(a4, v8, @">"))
    {
      return objc_msgSend_appendFormat_(v10, v11, @", %@<float> %@\n", a4, a3);
    }

    return objc_msgSend_appendFormat_(v10, v11, @", %@ %@\n", a4, a3);
  }

  hasPrefix = objc_msgSend_hasPrefix_(a4, v8, @"sampler");
  v14 = 168;
  if (v6)
  {
    v14 = 176;
  }

  v10 = *(a1 + v14);
  if (hasPrefix)
  {
    return objc_msgSend_appendFormat_(v10, v11, @", %@ %@\n", a4, a3);
  }

  if (objc_msgSend_hasSuffix_(a4, v11, @"*"))
  {
    return objc_msgSend_appendFormat_(v10, v15, @", device %@ %@\n", a4, a3);
  }

  else
  {
    return objc_msgSend_appendFormat_(v10, v15, @", constant %@& %@\n", a4, a3);
  }
}

uint64_t sub_1AF1ECC2C(uint64_t a1, const char *a2, void *a3)
{
  if (objc_msgSend_hasPrefix_(a3, a2, @"texture") & 1) != 0 || (objc_msgSend_hasPrefix_(a3, v6, @"depth"))
  {
    objc_msgSend_appendFormat_(*(a1 + 160), v6, @"_lightingContribution.%@ = %@;\n", a2, a2);
    hasSuffix = objc_msgSend_hasSuffix_(a3, v7, @">");
    v10 = *(a1 + 152);
    if (!hasSuffix)
    {
      return objc_msgSend_appendFormat_(v10, v8, @"%@<float> %@;\n", a3, a2);
    }
  }

  else
  {
    objc_msgSend_hasPrefix_(a3, v6, @"sampler");
    objc_msgSend_appendFormat_(*(a1 + 160), v12, @"_lightingContribution.%@ = %@;\n", a2, a2);
    v10 = *(a1 + 152);
  }

  return objc_msgSend_appendFormat_(v10, v8, @"%@ %@;\n", a3, a2);
}

void *sub_1AF1ECD04(void *result, const char *a2, uint64_t a3)
{
  *&v9[5] = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *v4;
      if (!*v4)
      {
        v7 = sub_1AF0D5194(result, a2);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE48AC(v8, v9, v7);
        }
      }

      result = sub_1AF1488DC(v6, a2);
      if (result)
      {
        result = objc_msgSend_addEntriesFromDictionary_(v5, a2, result);
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *sub_1AF1ECDD4(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1AF148894(a2, a2);
  if (result)
  {
    v8 = result;
    v9 = sub_1AF148D18(a2, v7);
    if (v9 > 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_1E7A7C5E0[v9];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1AF1ECE98;
    v12[3] = &unk_1E7A7C490;
    v13 = a3;
    v12[4] = v11;
    v12[5] = a1;
    return objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v8, v10, v12);
  }

  return result;
}

unint64_t sub_1AF1ECE98(uint64_t a1, const char *a2, void *a3)
{
  result = sub_1AF1F1B4C(a3, a2);
  if (result > 0x3A || ((1 << result) & 0x400000000000003) == 0)
  {
    return objc_msgSend_appendFormat_(*(*(a1 + 40) + 8 * *(a1 + 48) + 40), v7, @"const %@ %@ = %@.%@;\n", a3, a2, *(a1 + 32), a2);
  }

  return result;
}

void sub_1AF1ECF18(void *a1, uint64_t *a2, uint64_t a3)
{
  *(&v30[1] + 4) = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = a2;
    v5 = a1;
    v20 = v28;
    while (1)
    {
      v6 = *v4;
      if (!*v4)
      {
        v7 = sub_1AF0D5194(a1, a2);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE48AC(v29, v30, v7);
        }
      }

      a1 = sub_1AF148894(v6, a2);
      v8 = a1;
      if (!a1)
      {
        goto LABEL_29;
      }

      v9 = sub_1AF148D18(v6, a2);
      v11 = v9;
      if (!v9)
      {
        goto LABEL_11;
      }

      if (v9 == 3)
      {
        break;
      }

      v12 = 1;
LABEL_13:
      v13 = 0;
      if (v9 <= 1u)
      {
        if (v9)
        {
          if (v9 == 1)
          {
            v13 = @"vfx_modifiers_params_surface_t";
            v14 = @"u_shaderModifierParametersSurface";
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v13 = @"vfx_modifiers_params_geometry_t";
          v14 = @"u_shaderModifierParametersGeometry";
        }

        goto LABEL_23;
      }

      if (v9 == 2)
      {
        v13 = @"vfx_modifiers_params_fragment_t";
        v14 = @"u_shaderModifierParametersFragment";
        goto LABEL_23;
      }

      v14 = 0;
      if (v9 == 3)
      {
        goto LABEL_19;
      }

LABEL_23:
      v24 = 0;
      v25 = &v24;
      v26 = 0x3052000000;
      v27 = sub_1AF1ED1F8;
      v28[0] = sub_1AF1ED208;
      v28[1] = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1AF1ED214;
      v21[3] = &unk_1E7A7C4B8;
      v21[5] = &v24;
      v21[6] = v5;
      v22 = v9;
      v21[4] = v14;
      v23 = v12;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v8, v10, v21);
      v16 = v25[5];
      if (v16)
      {
        objc_msgSend_appendFormat_(v16, v15, @"} %@;\n\n", v13);
        objc_msgSend_appendString_(*(v5 + 32), v17, v25[5]);

        v19 = 168;
        if (v12)
        {
          v19 = 176;
        }

        objc_msgSend_appendFormat_(*(v5 + v19), v18, @", constant %@& %@\n", v13, v14, v20);
        if (v11 == 3)
        {
          sub_1AF1ECC2C(v5, v14, v13);
        }
      }

      _Block_object_dispose(&v24, 8);
LABEL_29:
      ++v4;
      if (!--v3)
      {
        return;
      }
    }

    if (*(v5 + 195))
    {
      v12 = 1;
LABEL_19:
      v13 = @"vfx_modifiers_params_lighting_t";
      v14 = @"u_shaderModifierParametersLighting";
      goto LABEL_23;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_13;
  }
}

void sub_1AF1ED1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1AF1ED214(uint64_t a1, const char *a2, void *a3)
{
  v6 = sub_1AF1F1B4C(a3, a2);
  if (v6 > 0x3A || ((1 << v6) & 0x400000000000003) == 0)
  {
    v11 = *(*(*(a1 + 40) + 8) + 40);
    if (!v11)
    {
      v12 = objc_alloc(MEMORY[0x1E696AD60]);
      *(*(*(a1 + 40) + 8) + 40) = objc_msgSend_initWithString_(v12, v13, @"typedef struct {\n");
      v11 = *(*(*(a1 + 40) + 8) + 40);
    }

    objc_msgSend_appendFormat_(v11, v7, @"    %@ %@;\n", a3, a2);
    return objc_msgSend_appendFormat_(*(*(a1 + 48) + 8 * *(a1 + 56) + 40), v14, @"const %@ %@ = %@.%@;\n", a3, a2, *(a1 + 32), a2);
  }

  else
  {
    result = sub_1AF1ECB20(*(a1 + 48), *(a1 + 57), a2, a3);
    if (*(a1 + 56) == 3)
    {
      v10 = *(a1 + 48);

      return sub_1AF1ECC2C(v10, a2, a3);
    }
  }

  return result;
}

void *sub_1AF1ED338(void **a1, int a2, uint64_t a3)
{
  v6 = sub_1AF13E414(a3);
  result = sub_1AF13E588(a3);
  if ((v6 & 0x20) != 0 && a2)
  {
    v8 = result;
    v9 = 0x2000010000;
    if ((v6 & 0x80) == 0)
    {
      v9 = 0x2000000000;
    }

    a1[25] = sub_1AF1735B8(result & 0xFFFFFEFF | (((v6 >> 6) & 1) << 8) | v9, (v6 >> 8) & 0x7FFFF, a1[1]);
    v11 = sub_1AF173490(v8, v10);
    a1[26] = v11;
    v12 = MEMORY[0x1E696AEC0];
    v14 = sub_1AF1733C8(v11, v13);
    v15 = sub_1AF28A7E4(@"CFX-OpenSubdiv-Utils.h");
    v16 = sub_1AF28A7E4(@"CFX-OpenSubdiv-Utils.metal");
    a1[27] = objc_msgSend_stringWithFormat_(v12, v17, @"%@%@%@", v14, v15, v16);
    a1[25] = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(a1[25], v18, @"#line", @"// #line");
    a1[26] = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(a1[26], v19, @"#line", @"// #line");
    result = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(a1[27], v20, @"#line", @"// #line");
    a1[27] = result;
  }

  else
  {
    a1[25] = &stru_1F2575650;
    a1[26] = &stru_1F2575650;
    a1[27] = &stru_1F2575650;
  }

  return result;
}

uint64_t sub_1AF1ED48C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3);
  v6 = objc_msgSend_bundleIdentifier(v3, v4, v5);
  if (objc_msgSend_hasPrefix_(v6, v7, @"com.apple.mobileslideshow"))
  {
    result = 1;
  }

  else
  {
    v11 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v8, v9);
    v14 = objc_msgSend_bundleIdentifier(v11, v12, v13);
    result = objc_msgSend_hasPrefix_(v14, v15, @"com.apple.Photos");
  }

  byte_1EB654CC0 = result;
  return result;
}

uint64_t sub_1AF1F00B0(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v8 = sub_1AF1EC0A4(a3, 0);
  v9 = sub_1AF1EC0A4(a3, 1);
  result = sub_1AF1EC0A4(a3, 5);
  v12 = result;
  *(a1 + 24) = 0;
  if (a4)
  {
    result = sub_1AF13E474(*a1, a2);
    if (result)
    {
      v13 = *(a1 + 8);
      if (a3 == 6)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v13, v11, &unk_1F25D4390, v9);
      }

      else
      {
        objc_msgSend_setObject_forKeyedSubscript_(v13, v11, &stru_1F2575650, v9);
      }

      if (sub_1AF13E464(*a1, a2))
      {
        if (sub_1AF13E484(*a1, a2) == 4)
        {
          v14 = 7;
        }

        else
        {
          v14 = 6;
        }

        v15 = sub_1AF1EC0A4(a3, v14);
        objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 8), v16, &stru_1F2575650, v15);
        *(a1 + 24) = 1;
        objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 8), v17, &stru_1F2575650, v12);
        result = sub_1AF13E458(*a1, a2);
        v18 = result;
        if ((result & 0x1000) != 0)
        {
          v19 = sub_1AF1EC0A4(a3, 3);
          result = objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 8), v20, &stru_1F2575650, v19);
        }

        v21 = (v18 >> 13) & 0xF;
        if (v21 && v21 != 15)
        {
          v22 = sub_1AF1EC0A4(a3, 4);
          v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, @"%d", v21);
          result = objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 8), v25, v24, v22);
        }
      }

      else
      {
        v26 = sub_1AF1EC0A4(a3, 2);
        result = objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 8), v27, &stru_1F2575650, v26);
      }
    }
  }

  v28 = *(a1 + 16);
  if (v28)
  {
    v29 = sub_1AF1EC0A4(a3, 1);
    objc_msgSend_addObject_(v28, v30, v29);
    v31 = *(a1 + 16);
    v32 = sub_1AF1EC0A4(a3, 2);
    objc_msgSend_addObject_(v31, v33, v32);
    v34 = *(a1 + 16);
    v35 = sub_1AF1EC0A4(a3, 3);
    objc_msgSend_addObject_(v34, v36, v35);
    v37 = *(a1 + 16);
    v38 = sub_1AF1EC0A4(a3, 4);
    objc_msgSend_addObject_(v37, v39, v38);
    v40 = *(a1 + 16);
    v41 = sub_1AF1EC0A4(a3, 5);
    objc_msgSend_addObject_(v40, v42, v41);
    v43 = *(a1 + 16);
    v44 = sub_1AF1EC0A4(a3, 6);
    objc_msgSend_addObject_(v43, v45, v44);
    v46 = *(a1 + 16);
    v47 = sub_1AF1EC0A4(a3, 7);
    result = objc_msgSend_addObject_(v46, v48, v47);
  }

  if (a3 != 3)
  {
    result = objc_msgSend_objectForKeyedSubscript_(*(a1 + 8), v11, v12);
    if (result)
    {
      result = sub_1AF13E458(*a1, a2);
      v49 = (result >> 17) & 0xF;
      if (v49 != 15)
      {
        if (a3 == 18)
        {
          v50 = sub_1AF13E594(*a1, v49);
          v52 = v50;
          v53 = HIBYTE(v50);
          v54 = *(a1 + 104);
          if (v53 <= 0xFE)
          {
            return objc_msgSend_appendFormat_(v54, v51, @"float2 _%@Texcoord = (vfx_commonprofile.textureTransforms[%d] * float4(_geometry.texcoords[%d], 0., 1.)).xy;\n", v8, (*(a1 + 120) - 1), v52);
          }

          else
          {
            return objc_msgSend_appendFormat_(v54, v51, @"float2 _%@Texcoord = _geometry.texcoords[%d].xy;\n", v8, v52);
          }
        }

        else
        {
          return objc_msgSend_appendFormat_(*(a1 + 112), v49, @"    _surface.%@Texcoord = in.texcoord%d;\n", v8, v49);
        }
      }
    }
  }

  return result;
}

void sub_1AF1F084C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

char *sub_1AF1F0898(uint64_t a1, void *a2, uint64_t a3)
{
  result = objc_msgSend_rangeValue(a2, a2, a3);
  v7 = v6;
  if (result >= *(*(a1 + 32) + 56))
  {
    if (result >= *(a1 + 56))
    {
      return result;
    }

    v8 = 40;
  }

  else
  {
    v8 = 32;
  }

  v9 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v6, a3);
  result = objc_msgSend_length(v9, v10, v11);
  *(*(*(a1 + 48) + 8) + v8) += result - v7;
  return result;
}

void *sub_1AF1F0F74(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v5 = *a3;
  v6 = sub_1AF148D18(*a3, a2);
  if (v6 != v3)
  {
    v8 = sub_1AF0D5194(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4AA0(v8, v7, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = sub_1AF148804(v5, v7);
  if (v15)
  {
    objc_msgSend_appendString_(*(a1 + 32), v16, v15);
  }

  v17 = sub_1AF148924(v5, v16);
  if (v17)
  {
    objc_msgSend_appendString_(*(a1 + 8 * v3 + 40), v18, v17);
  }

  else
  {
    v20 = sub_1AF0D5194(0, v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE4B18();
    }
  }

  v21 = sub_1AF14896C(v5, v19);
  if (v21)
  {
    CFDictionaryApplyFunction(v21, sub_1AF1F1190, *(a1 + 8));
  }

  result = sub_1AF14884C(v5, v22);
  if (result)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1AF1F11A0;
    v25[3] = &unk_1E7A7C540;
    v25[4] = a1;
    return objc_msgSend_enumerateKeysAndObjectsUsingBlock_(result, v24, v25);
  }

  return result;
}

void *sub_1AF1F10C4(uint64_t a1, void *a2)
{
  result = sub_1AF1F1118(a2, a2);
  if (result)
  {
    v5 = result;
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_addObject_(v6, v4, v5);
  }

  return result;
}

uint64_t sub_1AF1F1118(void *a1, const char *a2)
{
  if (!objc_msgSend_hasPrefix_(a1, a2, @"vfx_node."))
  {
    return 0;
  }

  v5 = objc_msgSend_length(@"vfx_node.", v3, v4);
  v7 = objc_msgSend_substringFromIndex_(a1, v6, v5);
  v11 = objc_msgSend_uppercaseString(v7, v8, v9);

  return objc_msgSend_stringByAppendingString_(@"USE_", v10, v11);
}

void *sub_1AF1F11A0(uint64_t a1, void *a2)
{
  result = sub_1AF1F1118(a2, a2);
  if (result)
  {
    v5 = result;
    v6 = *(*(a1 + 32) + 8);

    return objc_msgSend_setObject_forKeyedSubscript_(v6, v4, &stru_1F2575650, v5);
  }

  return result;
}

uint64_t sub_1AF1F11FC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 8)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4C3C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return qword_1AFE22120[v2];
}

uint64_t sub_1AF1F1250(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 3)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4CB4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return qword_1AFE22160[v2];
}

uint64_t sub_1AF1F12A4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 2)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4D2C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return qword_1AFE22178[v2];
}

uint64_t sub_1AF1F12F8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 0xF)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4DA4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return qword_1AFE22188[v2];
}

uint64_t sub_1AF1F134C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 5)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4E1C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return qword_1AFE22200[v2];
}

uint64_t sub_1AF1F13A0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 8)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4E94(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return qword_1AFE22228[v2];
}

uint64_t sub_1AF1F13F4(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xF8) != 0)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4F0C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return byte_1AFE22268[a1];
}

uint64_t sub_1AF1F1448(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 8)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4E94(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return qword_1AFE22270[v2];
}

uint64_t sub_1AF1F149C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 8)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4F84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return qword_1AFE222B0[v2];
}

uint64_t sub_1AF1F14F0(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xF8) != 0)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4FFC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return byte_1AFE222F0[a1];
}

uint64_t sub_1AF1F1584(uint64_t a1, uint64_t a2)
{
  if (a1 <= 1)
  {
    v3 = 4;
    if (a1 != 1)
    {
      v3 = 0;
    }

    if (a1)
    {
      return v3;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    if (a1 == 5)
    {
      v4 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE50EC(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    else
    {
      if (a1 != 4)
      {
        return a1 == 2;
      }

      v12 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE5074(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    return 0;
  }
}

uint64_t sub_1AF1F1624(uint64_t a1, uint64_t a2, CGContextRef context, char a4)
{
  v39 = *MEMORY[0x1E69E9840];
  BitmapInfo = CGBitmapContextGetBitmapInfo(context);
  ColorSpace = CGBitmapContextGetColorSpace(context);
  v11 = ColorSpace;
  v12 = BitmapInfo & 0x7000;
  if ((BitmapInfo & 0x1B) == 2)
  {
    v13 = 0;
    v14 = v12 != 4096 && v12 != 0x2000;
LABEL_14:
    if ((BitmapInfo & 0x100) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  if ((BitmapInfo & 0x1B) != 1)
  {
    v13 = 0;
    goto LABEL_29;
  }

  v13 = 1;
  if ((BitmapInfo & 0x7000) == 0 || v12 == 12288)
  {
LABEL_29:
    v14 = 1;
    if ((BitmapInfo & 0x100) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  v14 = 1;
  if (v12 == 0x4000)
  {
    goto LABEL_14;
  }

  v13 = 0;
  if ((BitmapInfo & 0x100) != 0)
  {
LABEL_30:
    if (a2 == 32)
    {
      switch(a1)
      {
        case 1:
          return 55;
        case 4:
          return 125;
        case 2:
          return 105;
      }
    }

    else if (a2 == 16)
    {
      switch(a1)
      {
        case 1:
          return 25;
        case 4:
          return 115;
        case 2:
          return 65;
      }
    }

    goto LABEL_59;
  }

LABEL_15:
  ColorSpace = sub_1AF164490(ColorSpace, v10);
  if (v11 == ColorSpace || (ColorSpace = sub_1AF164458(ColorSpace, v10), v11 == ColorSpace) || (ColorSpace = sub_1AF164B3C(ColorSpace, v10), (a4 & 1) != 0) || v11 == ColorSpace)
  {
    if (a2 == 16)
    {
      if (a1 == 1)
      {
        return 20;
      }

      if (a1 == 4 && (v13 & 1) != 0)
      {
        return 110;
      }
    }

    else if (a2 == 8)
    {
      if (a1 == 1)
      {
        return 10;
      }

      if (a1 == 2)
      {
        return 30;
      }

      if (a1 == 4 && v13 == 1)
      {
        return 70;
      }

      if (a1 == 4 && !v14)
      {
        return 80;
      }
    }
  }

  else if (a2 == 8)
  {
    if (a1 == 1)
    {
      return 11;
    }

    if (a1 == 2)
    {
      return 31;
    }

    if (a1 == 4 && v13 == 1)
    {
      return 71;
    }

    if (a1 == 4 && !v14)
    {
      return 81;
    }
  }

LABEL_59:
  v17 = sub_1AF0D5194(ColorSpace, v10);
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    return 70;
  }

  v19 = (BitmapInfo >> 12) & 7;
  if (v19 > 4)
  {
    v20 = @"byteOrderUnknown";
  }

  else
  {
    v20 = off_1E7A7C938[v19];
  }

  if ((BitmapInfo & 0x1F) > 7)
  {
    v21 = @"alphaUnknown";
  }

  else
  {
    v21 = off_1E7A7C960[BitmapInfo & 0x1F];
  }

  v22 = @"yes";
  v23 = 138414082;
  v24 = context;
  v25 = 1024;
  if ((BitmapInfo & 0x100) == 0)
  {
    v22 = @"no";
  }

  v26 = a1;
  v27 = 1024;
  v28 = a2;
  v29 = 1024;
  v30 = BitmapInfo;
  v31 = 2112;
  v32 = v20;
  v33 = 2112;
  v34 = v21;
  v35 = 2112;
  v36 = v22;
  v37 = 2112;
  v38 = v11;
  v16 = 70;
  _os_log_error_impl(&dword_1AF0CE000, v17, OS_LOG_TYPE_ERROR, "Error: Failed to create Metal pixel format for %@ [%d components, %d bits per component, bitmap info: %u (%@|%@), float components: %@, color space: %@]", &v23, 0x46u);
  return v16;
}

uint64_t sub_1AF1F1980(unint64_t a1, uint64_t a2)
{
  if (a1 >= 0x36)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE5164(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return word_1AFE222F8[a1];
}

uint64_t sub_1AF1F19D4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 46)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE51DC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return qword_1AFE22368[v2];
}

uint64_t sub_1AF1F1A28(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 46)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE51DC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return qword_1AFE224D8[v2];
}

uint64_t sub_1AF1F1B4C(void *a1, const char *a2)
{
  if (objc_msgSend_hasPrefix_(a1, a2, @"texture"))
  {
    return 58;
  }

  v4 = 0;
  while ((objc_msgSend_isEqualToString_(a1, v3, off_1E7A7C600[v4]) & 1) == 0)
  {
    if (++v4 == 57)
    {
      return 0;
    }
  }

  return v4;
}

__CFString *sub_1AF1F1BCC(uint64_t a1)
{
  if (a1 <= 122)
  {
    switch(a1)
    {
      case '5':
        result = @"R32Uint";
        break;
      case '6':
        result = @"R32Sint";
        break;
      case '7':
        result = @"R32Float";
        break;
      case '8':
      case '9':
      case ':':
      case ';':
      case '=':
      case 'B':
      case 'C':
      case 'D':
      case 'E':
      case 'K':
      case 'L':
      case 'M':
      case 'N':
      case 'O':
      case 'R':
      case 'S':
      case 'T':
      case 'U':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case '\\':
      case ']':
      case '_':
      case 'a':
      case 'b':
      case 'c':
      case 'd':
      case 'e':
      case 'f':
      case 'j':
      case 'k':
      case 'l':
      case 'm':
      case 'o':
        goto LABEL_28;
      case '<':
        result = @"RG16Unorm";
        break;
      case '>':
        result = @"RG16Snorm";
        break;
      case '?':
        result = @"RG16Uint";
        break;
      case '@':
        result = @"RG16Sint";
        break;
      case 'A':
        result = @"RG16Float";
        break;
      case 'F':
        result = @"RGBA8Unorm";
        break;
      case 'G':
        result = @"RGBA8Unorm_sRGB";
        break;
      case 'H':
        result = @"RGBA8Snorm";
        break;
      case 'I':
        result = @"RGBA8Uint";
        break;
      case 'J':
        result = @"RGBA8Sint";
        break;
      case 'P':
        result = @"BGRA8Unorm";
        break;
      case 'Q':
        result = @"BGRA8Unorm_sRGB";
        break;
      case 'Z':
        result = @"RGB10A2Unorm";
        break;
      case '[':
        result = @"RGB10A2Uint";
        break;
      case '^':
        result = @"BGR10A2Unorm";
        break;
      case 'g':
        result = @"RG32Uint";
        break;
      case 'h':
        result = @"RG32Sint";
        break;
      case 'i':
        result = @"RG32Float";
        break;
      case 'n':
        result = @"RGBA16Unorm";
        break;
      case 'p':
        result = @"RGBA16Snorm";
        break;
      case 'q':
        result = @"RGBA16Uint";
        break;
      case 'r':
        result = @"RGBA16Sint";
        break;
      case 's':
        result = @"RGBA16Float";
        break;
      default:
        result = @"Invalid";
        switch(a1)
        {
          case 0:
            return result;
          case 1:
            result = @"A8Unorm";
            break;
          case 10:
            result = @"R8Unorm";
            break;
          case 11:
            result = @"R8Unorm_sRGB";
            break;
          case 12:
            result = @"R8Snorm";
            break;
          case 13:
            result = @"R8Uint";
            break;
          case 14:
            result = @"R8Sint";
            break;
          case 20:
            result = @"R16Unorm";
            break;
          case 22:
            result = @"R16Snorm";
            break;
          case 23:
            result = @"R16Uint";
            break;
          case 24:
            result = @"R16Sint";
            break;
          case 25:
            result = @"R16Float";
            break;
          case 30:
            result = @"RG8Unorm";
            break;
          case 31:
            result = @"RG8Unorm_sRGB";
            break;
          case 32:
            result = @"RG8Snorm";
            break;
          case 33:
            result = @"RG8Uint";
            break;
          case 34:
            result = @"RG8Sint";
            break;
          default:
            goto LABEL_28;
        }

        break;
    }
  }

  else
  {
    if (a1 > 252)
    {
      if (a1 <= 552)
      {
        if (a1 == 253)
        {
          return @"Stencil8";
        }

        if (a1 == 552)
        {
          return @"BGRA10_XR";
        }
      }

      else
      {
        switch(a1)
        {
          case 553:
            return @"BGRA10_XR_sRGB";
          case 554:
            return @"BGR10_XR";
          case 555:
            return @"BGR10_XR_sRGB";
        }
      }
    }

    else
    {
      if (a1 <= 124)
      {
        if (a1 == 123)
        {
          return @"RGBA32Uint";
        }

        else
        {
          return @"RGBA32Sint";
        }
      }

      switch(a1)
      {
        case 125:
          return @"RGBA32Float";
        case 250:
          return @"Depth16Unorm";
        case 252:
          return @"Depth32Float";
      }
    }

LABEL_28:
    v4 = MEMORY[0x1E696AEC0];
    Name = MTLPixelFormatGetName();
    v7 = objc_msgSend_stringWithCString_encoding_(v4, v6, Name, 1);

    return objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v7, v8, @"MTLPixelFormat", &stru_1F2575650);
  }

  return result;
}

uint64_t sub_1AF1F1F6C(uint64_t a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
      return 0;
    case 3:
      v3 = sub_1AF0D5194(3, a2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE5254();
      }

      break;
    case 2:
      return 1;
    default:
      v4 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE5288();
      }

      break;
  }

  return 2;
}

uint64_t sub_1AF1F1FF4(uint64_t a1)
{
  v1 = 2;
  if (a1 != 4)
  {
    v1 = a1;
  }

  if (a1 == 8)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

__CFString *sub_1AF1F2010(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"Unkown";
  }

  else
  {
    return off_1E7A7C9A0[a1];
  }
}

uint64_t sub_1AF1F2034(void *a1, const char *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_textureType(a1, a2, a3);
  if (v4 < 8 && ((0xA5u >> v4) & 1) != 0)
  {
    return (0x301040101020101uLL >> (8 * v4));
  }

  else
  {
    v7 = sub_1AF0D5194(v4, v5);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    LOBYTE(v6) = 0;
    if (v8)
    {
      v12[0] = 67109120;
      v12[1] = objc_msgSend_textureType(a1, v9, v10);
      _os_log_impl(&dword_1AF0CE000, v7, OS_LOG_TYPE_DEFAULT, "Warning: unsupported texture type %d", v12, 8u);
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

BOOL sub_1AF1F2118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = sub_1AF1CDAAC(a1, a2);
  v8 = sub_1AF1CDA60(a1, v7);
  v12 = v8;
  switch(a2)
  {
    case 3:
      result = 0;
      if (v6 <= 0xCu)
      {
        if (v6 <= 2u)
        {
          if (v6 == 1)
          {
            v22 = *v12->i32;
            goto LABEL_171;
          }

          if (v6 == 2)
          {
            v22 = v12->i32[0];
LABEL_171:
            *a3 = v22;
            return 1;
          }

          return result;
        }

        if (v6 != 3)
        {
          if (v6 == 6)
          {
            v22 = *v12->i32;
            goto LABEL_171;
          }

          return result;
        }

        LOBYTE(v10) = v12->i8[0];
LABEL_170:
        v22 = v10;
        goto LABEL_171;
      }

      if (v6 > 0xFu)
      {
        if (v6 != 16)
        {
          if (v6 == 45)
          {
            v22 = *v12;
            goto LABEL_171;
          }

          return result;
        }

        LOWORD(v10) = v12->i16[0];
        goto LABEL_170;
      }

      if (v6 == 13)
      {
        v22 = v12->i16[0];
        goto LABEL_171;
      }

      if (v6 == 14)
      {
        v22 = sub_1AF1F2AC4(v12->u16[0]);
        goto LABEL_171;
      }

      return result;
    case 4:
      result = 0;
      if (v6 <= 0x1Bu)
      {
        if (v6 == 7)
        {
          goto LABEL_111;
        }

        if (v6 == 17)
        {
          v38 = vcvt_f32_s32(*v12);
          goto LABEL_112;
        }

        return result;
      }

      switch(v6)
      {
        case 0x1Cu:
          LOWORD(v10) = v12->i16[0];
          *&v27 = v10;
          v11.i16[0] = v12->i16[1];
          *v11.i32 = v11.u32[0];
          break;
        case 0x1Fu:
          *&v27 = v12->i16[0];
          *v11.i32 = v12->i16[1];
          break;
        case 0x2Au:
          v53 = sub_1AF1F2AC4(v12->u16[0]);
          *a3 = __PAIR64__(COERCE_UNSIGNED_INT(sub_1AF1F2AC4(v12->u16[1])), LODWORD(v53));
          return 1;
        default:
          return result;
      }

      HIDWORD(v27) = v11.i32[0];
      goto LABEL_152;
    case 5:
      result = 0;
      if (v6 > 0x1Cu)
      {
        if (v6 == 29)
        {
          v11 = vmovl_u16(*v12);
          *v11.i8 = vcvt_f32_u32(*v11.i8);
          v30 = WORD2(*v12);
LABEL_156:
          *&v11.i32[2] = v30;
          goto LABEL_157;
        }

        if (v6 != 32)
        {
          if (v6 != 43)
          {
            return result;
          }

          v54 = *v12;
          *v29.i32 = sub_1AF1F2AC4(v12->u16[0]);
          v50 = v29;
          v48 = sub_1AF1F2AC4(v54.u16[1]);
          v30 = sub_1AF1F2AC4(v54.u16[2]);
          v11 = v50;
          *&v11.i32[1] = v48;
          goto LABEL_156;
        }

        v11 = vmovl_s16(*v12);
        *v11.i8 = vcvt_f32_s32(*v11.i8);
        v23 = WORD2(*v12);
      }

      else
      {
        if (v6 == 8 || v6 == 9)
        {
LABEL_100:
          v24 = *v12->i8;
LABEL_101:
          *a3 = v24;
          return 1;
        }

        if (v6 != 18)
        {
          return result;
        }

        *v11.i8 = vcvt_f32_s32(*v12);
        v23 = v12[1];
      }

      v30 = v23;
      goto LABEL_156;
    case 6:
      result = 0;
      if (v6 <= 0x1Du)
      {
        if (v6 == 9)
        {
          goto LABEL_100;
        }

        if (v6 != 19)
        {
          return result;
        }

        v31 = *v12->i8;
      }

      else
      {
        if (v6 == 30)
        {
          v24 = vcvtq_f32_u32(vmovl_u16(*v12));
          goto LABEL_101;
        }

        if (v6 != 33)
        {
          if (v6 != 44)
          {
            return result;
          }

          v52 = *v12;
          v49 = sub_1AF1F2AC4(v12->u16[0]);
          v47 = sub_1AF1F2AC4(v52.u16[1]);
          v46 = sub_1AF1F2AC4(v52.u16[2]);
          v21 = sub_1AF1F2AC4(v52.u16[3]);
          v11.i64[0] = __PAIR64__(LODWORD(v47), LODWORD(v49));
          v11.i64[1] = __PAIR64__(LODWORD(v21), LODWORD(v46));
LABEL_157:
          *a3 = v11;
          return 1;
        }

        v31 = vmovl_s16(*v12);
      }

      v24 = vcvtq_f32_s32(v31);
      goto LABEL_101;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
      goto LABEL_24;
    case 15:
      if (v6 != 10)
      {
        return 0;
      }

      v24 = *v8->i8;
      v25 = *v8[2].i8;
      v26 = *v8[6].i8;
      *(a3 + 32) = *v8[4].i8;
      *(a3 + 48) = v26;
      *(a3 + 16) = v25;
      goto LABEL_101;
    case 16:
      result = 0;
      if (v6 > 0xCu)
      {
        if (v6 <= 0xFu)
        {
          if (v6 != 13)
          {
            if (v6 != 14)
            {
              return result;
            }

            *a3 = v12->i16[0];
            return 1;
          }

          v17 = v12->i16[0];
LABEL_165:
          *a3 = sub_1AF1F2B14(v17);
          return 1;
        }

        if (v6 != 16)
        {
          if (v6 != 45)
          {
            return result;
          }

          v17 = *v12;
          goto LABEL_165;
        }

        LOWORD(v10) = v12->i16[0];
      }

      else
      {
        if (v6 <= 2u)
        {
          if (v6 == 1)
          {
            v17 = *v12->i32;
          }

          else
          {
            if (v6 != 2)
            {
              return result;
            }

            v17 = v12->i32[0];
          }

          goto LABEL_165;
        }

        if (v6 != 3)
        {
          if (v6 != 6)
          {
            return result;
          }

          v17 = *v12->i32;
          goto LABEL_165;
        }

        LOBYTE(v10) = v12->i8[0];
      }

      v17 = v10;
      goto LABEL_165;
    case 17:
      result = 0;
      if (v6 > 0x1Bu)
      {
        switch(v6)
        {
          case 0x1Cu:
            LOWORD(v10) = v12->i16[0];
            v40 = sub_1AF1F2B14(v10);
            LOWORD(v41) = v12->i16[1];
            v42 = v41;
            break;
          case 0x1Fu:
            v40 = sub_1AF1F2B14(v12->i16[0]);
            v42 = v12->i16[1];
            break;
          case 0x2Au:
LABEL_45:
            v14 = v12->i32[0];
LABEL_74:
            *a3 = v14;
            return 1;
          default:
            return result;
        }

        *(a3 + 2) = sub_1AF1F2B14(v42);
        *a3 = v40;
        return 1;
      }

      if (v6 == 7)
      {
        LODWORD(v63) = HIDWORD(*v12);
        v32 = sub_1AF1F2B14(COERCE_FLOAT(*v12));
        v33 = v63;
      }

      else
      {
        if (v6 != 17)
        {
          return result;
        }

        v62 = HIDWORD(*v12);
        v32 = sub_1AF1F2B14(v12->i32[0]);
        v33 = v62;
      }

      *(a3 + 2) = sub_1AF1F2B14(v33);
      *a3 = v32;
      return 1;
    case 18:
      result = 0;
      if (v6 > 0x1Cu)
      {
        if (v6 != 29)
        {
          if (v6 != 32)
          {
            if (v6 == 43)
            {
              goto LABEL_111;
            }

            return result;
          }

          v61 = *v12;
          v18 = sub_1AF1F2B14(v12->i16[0]);
          v19 = sub_1AF1F2B14(v61.i16[1]);
          v20 = v61.i16[2];
          goto LABEL_150;
        }

        v60 = *v12;
        v18 = sub_1AF1F2B14(v12->u16[0]);
        v19 = sub_1AF1F2B14(v60.u16[1]);
        v39 = v60.u16[2];
      }

      else
      {
        if (v6 != 8 && v6 != 9)
        {
          if (v6 != 18)
          {
            return result;
          }

          v51 = *v12->i8;
          v18 = sub_1AF1F2B14(*v12->i8);
          v19 = sub_1AF1F2B14(SDWORD1(v51));
          v20 = DWORD2(v51);
LABEL_150:
          v39 = v20;
          goto LABEL_151;
        }

        v56 = *v12->i8;
        v18 = sub_1AF1F2B14(COERCE_FLOAT(*v12->i8));
        v19 = sub_1AF1F2B14(*(&v56 + 1));
        v39 = *(&v56 + 2);
      }

LABEL_151:
      v45 = sub_1AF1F2B14(v39);
      LOWORD(v27) = v18;
      WORD1(v27) = v19;
      WORD2(v27) = v45;
      goto LABEL_152;
    case 19:
      result = 0;
      if (v6 <= 0x1Du)
      {
        if (v6 == 9)
        {
          v59 = *v12->i8;
          v34 = sub_1AF1F2B14(COERCE_FLOAT(*v12->i8));
          v35 = sub_1AF1F2B14(*(&v59 + 1));
          v36 = sub_1AF1F2B14(*(&v59 + 2));
          v43 = *(&v59 + 3);
          goto LABEL_147;
        }

        if (v6 != 19)
        {
          return result;
        }

        v55 = *v12->i8;
        v34 = sub_1AF1F2B14(*v12->i8);
        v35 = sub_1AF1F2B14(SDWORD1(v55));
        v36 = sub_1AF1F2B14(SDWORD2(v55));
        v37 = HIDWORD(v55);
      }

      else
      {
        if (v6 == 30)
        {
          v57 = *v12;
          v34 = sub_1AF1F2B14(v12->u16[0]);
          v35 = sub_1AF1F2B14(v57.u16[1]);
          v36 = sub_1AF1F2B14(v57.u16[2]);
          v43 = v57.u16[3];
LABEL_147:
          v44 = sub_1AF1F2B14(v43);
          LOWORD(v27) = v34;
          WORD1(v27) = v35;
          WORD2(v27) = v36;
          HIWORD(v27) = v44;
          goto LABEL_152;
        }

        if (v6 != 33)
        {
          if (v6 == 44)
          {
            goto LABEL_111;
          }

          return result;
        }

        v58 = *v12;
        v34 = sub_1AF1F2B14(v12->i16[0]);
        v35 = sub_1AF1F2B14(v58.i16[1]);
        v36 = sub_1AF1F2B14(v58.i16[2]);
        v37 = v58.i16[3];
      }

      v43 = v37;
      goto LABEL_147;
    case 29:
    case 33:
      result = 0;
      if (v6 > 0xCu)
      {
        if (v6 == 13 || v6 == 16)
        {
          v14 = v12->i16[0];
          goto LABEL_74;
        }
      }

      else
      {
        if (v6 == 2)
        {
          goto LABEL_45;
        }

        if (v6 == 3)
        {
          v14 = v12->u8[0];
          goto LABEL_74;
        }
      }

      return result;
    case 30:
    case 34:
      if (v6 == 31 || v6 == 28)
      {
        LODWORD(v27) = v8->i16[0];
        HIDWORD(v27) = v8->i16[1];
LABEL_152:
        *a3 = v27;
      }

      else
      {
        if (v6 != 17)
        {
          return 0;
        }

LABEL_111:
        v38 = *v12;
LABEL_112:
        *a3 = v38;
      }

      return 1;
    case 31:
    case 35:
      if (v6 == 32 || v6 == 29)
      {
        goto LABEL_69;
      }

      if (v6 == 18)
      {
        goto LABEL_100;
      }

      return 0;
    case 32:
    case 36:
      if (v6 == 33 || v6 == 30)
      {
LABEL_69:
        v24 = vmovl_s16(*v8);
        goto LABEL_101;
      }

      if (v6 == 19)
      {
        goto LABEL_100;
      }

      return 0;
    default:
      if (a2 == 81)
      {
        result = 0;
        if (v6 <= 0xCu)
        {
          if (v6 == 2)
          {
            v28 = v12->i32[0];
          }

          else
          {
            if (v6 != 3)
            {
              return result;
            }

            v28 = v12->u8[0];
          }
        }

        else if (v6 == 13 || v6 == 16)
        {
          v28 = v12->i16[0];
        }

        else
        {
          if (v6 != 45)
          {
            return result;
          }

          v28 = *v12;
        }

        *a3 = v28;
        return 1;
      }

      if (a2 == 53)
      {
        if (v6 == 16 || v6 == 13)
        {
          v15 = v8->i16[0] != 0;
          goto LABEL_114;
        }

        if (v6 == 3)
        {
          v15 = v8->i8[0];
LABEL_114:
          *a3 = v15;
          return 1;
        }
      }

      else
      {
LABEL_24:
        v16 = sub_1AF0D5194(v8, v9);
        result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        *buf = 138412290;
        v65 = MTLDataTypeString();
        _os_log_impl(&dword_1AF0CE000, v16, OS_LOG_TYPE_DEFAULT, "Warning: CFXValueWriteToMTLData - Unsupported data type %@", buf, 0xCu);
      }

      return 0;
  }
}

float sub_1AF1F2AC4(unsigned int a1)
{
  v1 = (a1 >> 10) & 0x1F;
  if (v1 && v1 != 31)
  {
    v1 = (v1 << 23) + 939524096;
  }

  else if (v1 == 31)
  {
    v1 = 2139095040;
  }

  LODWORD(result) = (a1 << 16) & 0x80000000 | (a1 >> 7) & 7 | (8 * (a1 & 0x3FF)) & 0x1FFF | ((a1 & 0x3FF) << 13) | v1;
  return result;
}

uint64_t sub_1AF1F2B14(float a1)
{
  v1 = HIWORD(LODWORD(a1)) & 0x8000;
  v2 = (LODWORD(a1) >> 23);
  v3 = v2 - 112;
  v4 = v2 - 113;
  v5 = v1 | 0x7BFF;
  if ((LODWORD(a1) & 0x7FFFFF) != 0)
  {
    LOWORD(v6) = v1 + 1;
  }

  else
  {
    v6 = HIWORD(LODWORD(a1)) & 0x8000;
  }

  v7 = v6 | 0x7C00;
  if (v2 == 255)
  {
    v5 = v7;
  }

  if (v2 >= 0x71)
  {
    v8 = v5;
  }

  else
  {
    v8 = HIWORD(a1) & 0x8000;
  }

  v9 = HIWORD(LODWORD(a1)) & 0x8000 | (LODWORD(a1) >> 13) & 0x3FF | (v3 << 10);
  if (v4 > 0x1D)
  {
    LOWORD(v9) = v8;
  }

  return v9;
}

void sub_1AF1F2B68(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_offset(a2, a2, a3);
  v9 = objc_msgSend_dataType(a2, v7, v8);
  v10 = sub_1AF1F2118(a1, v9, a3 + v6);
  if (!v10)
  {
    v12 = sub_1AF0D5194(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109378;
      v14[1] = sub_1AF1CDAAC(a1, v13);
      v15 = 2112;
      v16 = a2;
      _os_log_impl(&dword_1AF0CE000, v12, OS_LOG_TYPE_DEFAULT, "Warning: value unsupported %d of member %@", v14, 0x12u);
    }
  }
}

uint64_t sub_1AF1F2C50(char a1)
{
  v1 = 81;
  if ((a1 & 8) == 0)
  {
    v1 = 551;
  }

  if ((a1 & 0x10) == 0)
  {
    v1 = 555;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 81;
  }
}

CGImageRef sub_1AF1F2C7C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pixelFormat(a1, a2, a3);
  if (v4 > 79)
  {
    if ((v4 - 80) < 2)
    {
      v7 = 8194;
      goto LABEL_9;
    }

    if (v4 == 125)
    {
      v7 = 16641;
      v8 = 32;
      goto LABEL_10;
    }

    if (v4 == 115)
    {
      v7 = 12545;
      v8 = 16;
LABEL_10:
      v9 = (v8 * objc_msgSend_width(a1, v5, v6)) >> 1;
      v12 = objc_msgSend_height(a1, v10, v11);
      v13 = v9 & 0xFFFFFFFC;
      v14 = malloc_type_malloc(v13 * v12, 0x100004077774924uLL);
      v17 = objc_msgSend_width(a1, v15, v16);
      v20 = objc_msgSend_height(a1, v18, v19);
      v22 = sub_1AF164420(v20, v21);
      v23 = CGBitmapContextCreate(v14, v17, v20, v8, v13, v22, v7);
      if (objc_msgSend_storageMode(a1, v24, v25) == 2)
      {
        v28 = MEMORY[0x1E69741C0];
        v29 = objc_msgSend_pixelFormat(a1, v26, v27);
        v32 = objc_msgSend_width(a1, v30, v31);
        v35 = objc_msgSend_height(a1, v33, v34);
        v37 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v28, v36, v29, v32, v35, 0);
        v40 = objc_msgSend_device(a1, v38, v39);
        v42 = objc_msgSend_newTextureWithDescriptor_(v40, v41, v37);
        v45 = objc_msgSend_device(a1, v43, v44);
        v48 = objc_msgSend_newCommandQueue(v45, v46, v47);
        v51 = objc_msgSend_commandBuffer(v48, v49, v50);
        v54 = objc_msgSend_blitCommandEncoder(v51, v52, v53);
        objc_msgSend_copyFromTexture_toTexture_(v54, v55, a1, v42);
        objc_msgSend_endEncoding(v54, v56, v57);
        objc_msgSend_commit(v51, v58, v59);
        objc_msgSend_waitUntilCompleted(v51, v60, v61);

        v74 = 0;
        v75 = 0;
        v76 = 0;
        v77 = objc_msgSend_width(a1, v62, v63);
        v78 = objc_msgSend_height(a1, v64, v65);
        v79 = 1;
        objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v42, v66, v14, v13, &v74, 0);
      }

      else
      {
        v74 = 0;
        v75 = 0;
        v76 = 0;
        v77 = objc_msgSend_width(a1, v26, v27);
        v78 = objc_msgSend_height(a1, v67, v68);
        v79 = 1;
        objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(a1, v69, v14, v13, &v74, 0);
      }

      Image = CGBitmapContextCreateImage(v23);
      CGContextRelease(v23);
      free(v14);
      return Image;
    }
  }

  else if ((v4 - 70) < 5)
  {
    v7 = 16385;
LABEL_9:
    v8 = 8;
    goto LABEL_10;
  }

  v72 = sub_1AF0D5194(v4, v5);
  if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE52BC(a1, v72, v73);
  }

  return 0;
}

uint64_t sub_1AF1F2F0C(_BOOL8 a1, const void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  if (!a2 && (v12 = sub_1AF0D5194(a1, 0), a1 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE5348(v12, a2, v13, v14, v15, v16, v17, v18);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v19 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE53C0(v19, a2, v20, v21, v22, v23, v24, v25);
  }

LABEL_6:
  v26 = sub_1AF1F1980(a3, a2);
  v28 = sub_1AF28844C(v26, v27);
  v30 = sub_1AF2884B4(v26, v29);
  v31 = sub_1AF1CAE64(v28, v30, a4, a5, a6);
  v34 = sub_1AF1ADD44(v31, v11);
  if (!v34)
  {
    v35 = sub_1AF0D5194(0, v32);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v35, v36, v33, v37, v38, v39, v40, v41);
    }
  }

  sub_1AF1CB108(v31, v34, v33);
  if (v31)
  {
    CFRelease(v31);
  }

  *(v34 + 72) = CFRetain(a2);
  *(v34 + 80) = a3;
  return v34;
}

__IOSurface *sub_1AF1F3034(__IOSurface *result, id *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a2;
    v4 = result;
    v5 = a3;
    do
    {
      result = objc_msgSend_iosurface(*v3, a2, a3);
      if (result)
      {
        v6 = result;
        IOSurfaceIncrementUseCount(result);
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = sub_1AF1F3100;
        v8[3] = &unk_1E7A7C918;
        v8[4] = v6;
        result = objc_msgSend_addCompletedHandler_(v4, v7, v8);
      }

      ++v3;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1AF1F31D4(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 < 3)
  {
    return qword_1AFE228E0[a1];
  }

  v4 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE5438(v2, v4);
  }

  return 1;
}

uint64_t sub_1AF1F3234(void *a1, const char *a2)
{
  if (a2 < 2)
  {
    return 1;
  }

  v13 = v3;
  v14 = v2;
  v15 = v4;
  v16 = v5;
  v7 = (a2 - 1) | ((a2 - 1) >> 1);
  v8 = v7 | (v7 >> 2) | ((v7 | (v7 >> 2)) >> 4);
  v9 = (((v8 | (v8 >> 8)) >> 16) | v8 | (v8 >> 8)) + 1;
  if (v9 >= 2)
  {
    while ((objc_msgSend_supportsTextureSampleCount_(a1, a2, v9, v13, v14, v15, v16) & 1) == 0)
    {
      v11 = v9 >> 1;
      v12 = v9 > 3;
      v9 >>= 1;
      if (!v12)
      {
        return v11;
      }
    }
  }

  return v9;
}

uint64_t sub_1AF1F32F0(uint64_t a1, uint64_t a2)
{
  if (qword_1ED731B08 != -1)
  {
    sub_1AFDE54B0();
  }

  return 0x20000;
}

void sub_1AF1F39FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_1AF1F3A28(uint64_t result, __n128 *a2, void *a3, void *a4, __n128 *a5, uint64_t a6, double a7)
{
  v35[1] = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v7 = a6;
    *v14.i64 = MEMORY[0x1EEE9AC00](result);
    v16 = v35 - v15;
    if (v17 >= 1)
    {
      v18.i64[0] = 0x8000000080000000;
      v18.i64[1] = 0x8000000080000000;
      v19 = v13;
      v20 = a2;
      v21 = v16;
      do
      {
        v22 = *v20++;
        v23 = v22;
        v24 = vmulq_f32(v14, v22);
        *v24.i32 = v14.f32[3] + (*&v24.i32[2] + vaddv_f32(*v24.i8));
        *v23.i32 = fmaxf(fabsf(*v24.i32) - v22.f32[3], 0.0);
        *v21++ = vbslq_s8(v18, v23, v24).u32[0];
        --v19;
      }

      while (v19);
    }

    MEMORY[0x1EEE9AC00](v12);
    v27 = (v35 - v26);
    v28 = 0;
    v29 = (v35 + 2 * v7 - v26);
    v30 = vdupq_n_s64((v7 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL);
    v31 = (&v35[1] - v26);
    do
    {
      v32 = vdupq_n_s64(v28);
      v33 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_1AFE21110)));
      if (vuzp1_s8(vuzp1_s16(v33, *v30.i8), *v30.i8).u8[0])
      {
        *(v31 - 4) = v28;
      }

      if (vuzp1_s8(vuzp1_s16(v33, *&v30), *&v30).i8[1])
      {
        *(v31 - 3) = v28 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_1AFE21100)))), *&v30).i8[2])
      {
        *(v31 - 2) = v28 | 2;
        *(v31 - 1) = v28 | 3;
      }

      v34 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_1AFE22910)));
      if (vuzp1_s8(*&v30, vuzp1_s16(v34, *&v30)).i32[1])
      {
        *v31 = v28 | 4;
      }

      if (vuzp1_s8(*&v30, vuzp1_s16(v34, *&v30)).i8[5])
      {
        v31[1] = v28 | 5;
      }

      if (vuzp1_s8(*&v30, vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_1AFE22900))))).i8[6])
      {
        v31[2] = v28 | 6;
        v31[3] = v28 | 7;
      }

      v28 += 8;
      v31 += 8;
    }

    while (((v7 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL) - ((v7 - 1) & 7) + 8 != v28);
    v35[0] = v25;
    sub_1AF1F90BC(v27, v29, v35, 126 - 2 * __clz(v7), 1);
    sub_1AF1F3D14(a3, v27, v7);
    sub_1AF1F3D14(a4, v27, v7);
    sub_1AF1F3DF0(a2, v27, v7);
    *&a7 = sub_1AF1F3DF0(a5, v27, v7).n128_u64[0];
  }

  return a7;
}

void *sub_1AF1F3D14(void *a1, __int16 *a2, int a3)
{
  v5 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v9 = v13 - v8;
  if (v7 >= 0x200)
  {
    v10 = 512;
  }

  else
  {
    v10 = v7;
  }

  bzero(v13 - v8, v10);
  result = memcpy(v9, v5, 8 * a3);
  if (a3 >= 1)
  {
    do
    {
      v12 = *a2++;
      *v5++ = *&v9[8 * v12];
      --v6;
    }

    while (v6);
  }

  return result;
}

__n128 sub_1AF1F3DF0(__n128 *a1, __int16 *a2, int a3)
{
  v5 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10[-2 * v6];
  memcpy(v7, v5, 16 * a3);
  if (a3 >= 1)
  {
    do
    {
      v9 = *a2++;
      result = *&v7[2 * v9];
      *v5++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

double sub_1AF1F3EA8(uint64_t result, float32x4_t *a2, void *a3, void *a4, uint64_t a5, double a6)
{
  v51[1] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v6 = a5;
    *v12.i64 = MEMORY[0x1EEE9AC00](result);
    v15 = (v51 - v14);
    if (v16 >= 1)
    {
      v17 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
      v18 = vnegq_f32(v12);
      v19 = vdup_laneq_s32(v12, 3);
      v20 = a2 + 2;
      v21 = v11;
      v22 = v15;
      do
      {
        v23 = v20[-2];
        v24 = v20[-1];
        v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
        v26 = v20->f32[0];
        v13.i32[0] = v20->i32[1];
        v20 += 3;
        v27 = vmlaq_f32(vmulq_f32(v25, v18), v24, v17);
        v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
        v29 = vmlaq_f32(vmulq_f32(v25, vnegq_f32(v28)), v24, vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL));
        v30 = vmulq_f32(v29, v29);
        v31 = vmulq_f32(v12, v23);
        v30.f32[0] = v30.f32[1] + (v30.f32[2] + v30.f32[0]);
        v32 = vdupq_lane_s32(*v30.f32, 0);
        v33 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
        v32.i32[3] = 0;
        v34 = vrsqrteq_f32(v32);
        v35 = vmulq_f32(v34, vrsqrtsq_f32(v32, vmulq_f32(v34, v34)));
        v36 = v30.f32[0] != 0.0;
        v37 = vmulq_f32(v35, vrsqrtsq_f32(v32, vmulq_f32(v35, v35)));
        v38 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v36)), 0x1FuLL));
        v38.i32[3] = 0;
        v39 = vmulq_f32(v12, vmlsq_lane_f32(vmlaq_n_f32(v23, v24, v26), vbslq_s8(vcltzq_s32(v38), vmulq_f32(v33, v37), v33), v13, 0));
        *v39.i8 = vadd_f32(v19, vadd_f32(vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v39, v39, 8uLL)), vadd_f32(vzip1_s32(*v31.i8, *v39.i8), vzip2_s32(*v31.i8, *v39.i8))));
        v33.f32[0] = vmuls_lane_f32(*v39.i32, *v39.i8, 1);
        v40 = fminf(*v39.i32, *&v39.i32[1]);
        if (v33.f32[0] < 0.0)
        {
          v40 = 0.0;
        }

        *v22++ = v40;
        --v21;
      }

      while (v21);
    }

    MEMORY[0x1EEE9AC00](v10);
    v43 = (v51 - v42);
    v44 = 0;
    v45 = (v51 + 2 * v6 - v42);
    v46 = vdupq_n_s64((v6 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL);
    v47 = (&v51[1] - v42);
    do
    {
      v48 = vdupq_n_s64(v44);
      v49 = vmovn_s64(vcgeq_u64(v46, vorrq_s8(v48, xmmword_1AFE21110)));
      if (vuzp1_s8(vuzp1_s16(v49, *v46.i8), *v46.i8).u8[0])
      {
        *(v47 - 4) = v44;
      }

      if (vuzp1_s8(vuzp1_s16(v49, *&v46), *&v46).i8[1])
      {
        *(v47 - 3) = v44 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, vorrq_s8(v48, xmmword_1AFE21100)))), *&v46).i8[2])
      {
        *(v47 - 2) = v44 | 2;
        *(v47 - 1) = v44 | 3;
      }

      v50 = vmovn_s64(vcgeq_u64(v46, vorrq_s8(v48, xmmword_1AFE22910)));
      if (vuzp1_s8(*&v46, vuzp1_s16(v50, *&v46)).i32[1])
      {
        *v47 = v44 | 4;
      }

      if (vuzp1_s8(*&v46, vuzp1_s16(v50, *&v46)).i8[5])
      {
        v47[1] = v44 | 5;
      }

      if (vuzp1_s8(*&v46, vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, vorrq_s8(v48, xmmword_1AFE22900))))).i8[6])
      {
        v47[2] = v44 | 6;
        v47[3] = v44 | 7;
      }

      v44 += 8;
      v47 += 8;
    }

    while (((v6 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL) - ((v6 - 1) & 7) + 8 != v44);
    v51[0] = v41;
    sub_1AF1F90BC(v43, v45, v51, 126 - 2 * __clz(v6), 1);
    sub_1AF1F3D14(a3, v43, v6);
    sub_1AF1F3D14(a4, v43, v6);
    *&a6 = sub_1AF1F4234(a2, v43, v6).n128_u64[0];
  }

  return a6;
}

__n128 sub_1AF1F4234(_OWORD *a1, __int16 *a2, int a3)
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14[-2 * v7];
  memcpy(v8, v5, 48 * v9);
  if (a3 >= 1)
  {
    do
    {
      v11 = *a2++;
      v12 = &v8[6 * v11];
      v13 = *(v12 + 1);
      *v5 = *v12;
      v5[1] = v13;
      result = *(v12 + 2);
      v5[2] = result;
      v5 += 3;
      --v6;
    }

    while (v6);
  }

  return result;
}

double sub_1AF1F430C(float32x4_t *result, void *a2, void *a3, uint64_t a4, double a5)
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = a4;
    MEMORY[0x1EEE9AC00](result);
    v12 = (v28 - v11);
    if (v13 >= 1)
    {
      v14 = result + 4;
      v15 = v10;
      v16 = v12;
      do
      {
        v17 = *v14;
        v14 += 5;
        *v16++ = vmuls_lane_f32(vmuls_lane_f32(v17.f32[0], *v17.f32, 1), v17, 2) * 8.0;
        --v15;
      }

      while (v15);
    }

    MEMORY[0x1EEE9AC00](v9);
    v20 = (v28 - v19);
    v21 = 0;
    v22 = (v28 + 2 * v5 - v19);
    v23 = vdupq_n_s64((v5 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL);
    v24 = (&v28[1] - v19);
    do
    {
      v25 = vdupq_n_s64(v21);
      v26 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_1AFE21110)));
      if (vuzp1_s8(vuzp1_s16(v26, *v23.i8), *v23.i8).u8[0])
      {
        *(v24 - 4) = v21;
      }

      if (vuzp1_s8(vuzp1_s16(v26, *&v23), *&v23).i8[1])
      {
        *(v24 - 3) = v21 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_1AFE21100)))), *&v23).i8[2])
      {
        *(v24 - 2) = v21 | 2;
        *(v24 - 1) = v21 | 3;
      }

      v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_1AFE22910)));
      if (vuzp1_s8(*&v23, vuzp1_s16(v27, *&v23)).i32[1])
      {
        *v24 = v21 | 4;
      }

      if (vuzp1_s8(*&v23, vuzp1_s16(v27, *&v23)).i8[5])
      {
        v24[1] = v21 | 5;
      }

      if (vuzp1_s8(*&v23, vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_1AFE22900))))).i8[6])
      {
        v24[2] = v21 | 6;
        v24[3] = v21 | 7;
      }

      v21 += 8;
      v24 += 8;
    }

    while (((v5 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL) - ((v5 - 1) & 7) + 8 != v21);
    v28[0] = v18;
    sub_1AF1FA324(v20, v22, v28, 126 - 2 * __clz(v5), 1);
    sub_1AF1F3D14(a2, v20, v5);
    sub_1AF1F3D14(a3, v20, v5);
    *&a5 = sub_1AF1F45B4(result, v20, v5).n128_u64[0];
  }

  return a5;
}

__n128 sub_1AF1F45B4(_OWORD *a1, __int16 *a2, int a3)
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14[-2 * v7];
  memcpy(v8, v5, 80 * v9);
  if (a3 >= 1)
  {
    do
    {
      v11 = *a2++;
      v12 = &v8[10 * v11];
      v13 = *(v12 + 3);
      v5[2] = *(v12 + 2);
      v5[3] = v13;
      v5[4] = *(v12 + 4);
      result = *(v12 + 1);
      *v5 = *v12;
      v5[1] = result;
      v5 += 5;
      --v6;
    }

    while (v6);
  }

  return result;
}

void sub_1AF1F4690(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v297 = v1;
  v301 = v2;
  v4 = v3;
  v6 = v5;
  v364 = *MEMORY[0x1E69E9840];
  v9 = v7[1];
  v8 = v7[2];
  v298 = *v7;
  v10 = v7[4];
  v11 = v7[5];
  v256 = v7;
  v12 = v7[6];
  v268 = sub_1AF12DDCC(v9, v5);
  memset(v363, 0, 512);
  memset(v362, 0, 512);
  v343 = 0;
  v344 = &v343;
  v345 = 0x2020000000;
  v346 = 0;
  v342[0] = MEMORY[0x1E69E9820];
  v342[1] = 3221225472;
  v342[2] = sub_1AF1F5B38;
  v342[3] = &unk_1E7A7C9F8;
  v342[4] = &v343;
  v342[5] = v362;
  v342[6] = v363;
  v258 = v9;
  sub_1AF13656C(v8, v9, v342);
  v13 = *(v344 + 6);
  v330[0] = MEMORY[0x1E69E9820];
  v330[1] = 3221225472;
  v330[2] = sub_1AF1F5B98;
  v330[3] = &unk_1E7A7CA20;
  v14 = v6[3];
  v333 = v6[2];
  v334 = v14;
  v15 = v6[5];
  v335 = v6[4];
  v336 = v15;
  v16 = v6[1];
  v331 = *v6;
  v332 = v16;
  v337 = &v343;
  v267 = v10;
  v338 = v10;
  v341 = v13;
  v339 = v362;
  v340 = v363;
  v265 = v8;
  sub_1AF138EE0(v8, v330);
  LODWORD(v17) = v13;
  HIDWORD(v17) = *(v344 + 6) - v13;
  *(v297 + 72) = v17;
  sub_1AF12EE9C(v258, 0);
  v18 = v6[3];
  v357 = v6[2];
  v358 = v18;
  v19 = v6[5];
  v359 = v6[4];
  v360 = v19;
  v20 = v6[1];
  v355 = *v6;
  v356 = v20;
  sub_1AF1F3A28(&v355, v10, v363 + v13, v362 + v13, &v361[v13], *(v297 + 76), *&v355);
  v260 = v13;
  v21 = *(v344 + 6);
  v318[0] = MEMORY[0x1E69E9820];
  v318[1] = 3221225472;
  v318[2] = sub_1AF1F5C74;
  v318[3] = &unk_1E7A7CA48;
  v22 = v6[3];
  v321 = v6[2];
  v322 = v22;
  v23 = v6[5];
  v323 = v6[4];
  v324 = v23;
  v24 = v6[1];
  v319 = *v6;
  v320 = v24;
  v325 = &v343;
  v326 = v11;
  v329 = v21;
  v327 = v362;
  v328 = v363;
  sub_1AF139038(v8, v318);
  v25 = *(v344 + 6) - v21;
  *(v297 + 80) = __PAIR64__(v25, v21);
  v26 = v6[3];
  v357 = v6[2];
  v358 = v26;
  v27 = v6[5];
  v359 = v6[4];
  v360 = v27;
  v28 = v6[1];
  v355 = *v6;
  v356 = v28;
  sub_1AF1F3EA8(&v355, v11, v363 + v21, v362 + v21, v25, *&v355);
  v29 = *(v344 + 6);
  v306[0] = MEMORY[0x1E69E9820];
  v306[1] = 3221225472;
  v306[2] = sub_1AF1F5EAC;
  v306[3] = &unk_1E7A7CA70;
  v30 = v6[3];
  v309 = v6[2];
  v310 = v30;
  v31 = v6[5];
  v311 = v6[4];
  v312 = v31;
  v32 = v6[1];
  v307 = *v6;
  v308 = v32;
  v314 = v12;
  v313 = &v343;
  v317 = v29;
  v315 = v362;
  v316 = v363;
  sub_1AF13AE20(v8, v306);
  v33 = *(v344 + 6) - v29;
  *(v297 + 88) = __PAIR64__(v33, v29);
  sub_1AF1F430C(v12, v363 + v29, v362 + v29, v33, COERCE_DOUBLE(__PAIR64__(v33, v29)));
  v261 = sub_1AF12E2AC(v258, v34);
  v264 = objc_msgSend_resourceManager(v261, v35, v36);
  v300 = v4;
  if (v4)
  {
    v37 = (v298 + (v301 << 6) + 0x2000);
    v38 = v354;
    v39 = &v355;
    v40 = v353;
    v41 = v4;
    do
    {
      v42 = v37[1];
      *v39 = *v37;
      v39[1] = v42;
      v43 = v37[3];
      v39[2] = v37[2];
      v39[3] = v43;
      v365 = *v39->i8;
      v302 = *v39;
      v295 = v365.columns[1];
      v299 = v365.columns[2];
      v366 = __invert_f4(*v39->f32);
      v44 = v295;
      v45 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v299, v299), v299, 0xCuLL), vnegq_f32(v295)), v299, vextq_s8(vuzp1q_s32(v44, v44), v295, 0xCuLL));
      v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
      v47 = vmulq_f32(v302, v302);
      v48 = vmulq_f32(v44, v44);
      v49 = vmulq_f32(v302, v46);
      v50 = vadd_f32(vzip1_s32(*v47.i8, *v48.i8), vzip2_s32(*v47.i8, *v48.i8));
      v51 = vextq_s8(v47, v47, 8uLL);
      *v51.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v51.f32, *&vextq_s8(v48, v48, 8uLL)), v50));
      _NF = (v49.f32[2] + vaddv_f32(*v49.f32)) < 0.0;
      v53 = vmulq_f32(v299, v299);
      v54 = sqrtf(v53.f32[2] + vaddv_f32(*v53.f32));
      if (_NF)
      {
        v55 = -1.0;
      }

      else
      {
        v55 = 1.0;
      }

      v51.f32[2] = v54;
      v56 = vabsq_f32(vmulq_n_f32(v51, v55));
      *v40++ = fmaxf(fmaxf(v56.f32[0], v56.f32[2]), v56.f32[1]);
      *(v38 - 32) = v366;
      v38 += 64;
      v39 += 4;
      v37 += 4;
      --v41;
    }

    while (v41);
  }

  v57 = *(v344 + 6);
  if (v57 <= 1)
  {
    v57 = 1;
  }

  *(v297 + 112) = v57;
  CFXBufferAllocatorPerFrameAllocateWithLength(v256[3], 368 * v4 * v57);
  *(v297 + 96) = v58;
  *(v297 + 104) = v59;
  v60 = sub_1AF13AE54(v265);
  if (v60)
  {
    *(v297 + 120) = sub_1AF130664(v258, v60);
  }

  CPUPointer = CFXBufferSliceGetCPUPointer(*(v297 + 96), *(v297 + 104), v61);
  v63 = v344;
  if (!*(v344 + 6))
  {
    goto LABEL_112;
  }

  v64 = 0;
  v303 = 0;
  v262 = v297 + 192;
  v263 = v297 + 128;
  __asm { FMOV            V0.4S, #1.0 }

  v266 = DWORD2(_Q0);
  v257 = v4;
  do
  {
    if (!v4)
    {
      goto LABEL_111;
    }

    v68 = 0;
    v259 = v64;
    do
    {
      v69 = *(v362 + v303);
      v70 = *(v363 + v303);
      v71 = &CPUPointer[368 * (v303 * v300 + v68)];
      v72 = *(v297 + 88);
      if (v303 >= v72 && v303 < (v72 + HIDWORD(*(v297 + 88))))
      {
        v71[52] = 4;
        if (v69)
        {
          v99 = sub_1AF19CBB4(v69, v62);
          if (v99 != 4)
          {
            v101 = sub_1AF0D5194(v99, v100);
            if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDE57F0(v351, &v352, v101);
            }
          }

          v102 = sub_1AF19B558(v69, 0);
          if (v102)
          {
            v104 = sub_1AF166598(v102, v103);
          }

          else
          {
            v104 = 1.0;
          }

          *v71 = v104 * sub_1AF19C510(v69, v103);
          v108 = sub_1AF19DF68(v69, v107);
          *(v71 + 32) = v108;
          if ((v108 & 0x80000000) != 0)
          {
            v110 = sub_1AF0D5194(v108, v109);
            if (os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDE5834(v349, &v350, v110);
            }
          }

          *(v71 + 4) = sub_1AF19DEB0(v69, v109);
          v112 = sub_1AF19DDEC(v69, v111);
          v113.i64[0] = 0x3F0000003F000000;
          v113.i64[1] = 0x3F0000003F000000;
          v293 = vmulq_f32(v112, v113);
          v114 = v293;
          v114.f32[3] = fmaxf(fmaxf(v293.f32[0], v293.f32[2]), v293.f32[1]) * 0.1;
          *(v71 + 5) = v114;
          *(v71 + 33) = sub_1AF19DB90(v69, v115);
          v117 = vmulq_f32(v293, sub_1AF19DC58(v69, v116));
          *(v71 + 26) = v117.i32[2];
          *(v71 + 12) = v117.i64[0];
          v119 = vmulq_f32(v293, sub_1AF19DD18(v69, v118));
          *(v71 + 30) = v119.i32[2];
          *(v71 + 14) = v119.i64[0];
          v121 = sub_1AF1B9B04(v70, v120);
          v285 = v121[1];
          v287 = *v121;
          v281 = v121[3];
          v283 = v121[2];
          *(v71 + 1) = v281;
          v122 = (&v355 + 4 * v68);
          v292 = v122[1];
          v294 = *v122;
          v290 = v122[3];
          v291 = v122[2];
          *v124.i64 = sub_1AF1D0EBC(v268, v123);
          v269 = v126;
          v271 = v125;
          v274 = v127;
          v277 = v124;
          v128 = 0;
          v348.columns[0] = v287;
          v348.columns[1] = v285;
          v348.columns[2] = v283;
          v348.columns[3] = v281;
          do
          {
            v304[0].columns[v128] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v294, COERCE_FLOAT(*&v348.columns[v128])), v292, *v348.columns[v128].f32, 1), v291, v348.columns[v128], 2), v290, v348.columns[v128], 3);
            ++v128;
          }

          while (v128 != 4);
          v367 = __invert_f4(v304[0]);
          v129 = 0;
          v348 = v367;
          do
          {
            v304[0].columns[v129] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v277, COERCE_FLOAT(*&v348.columns[v129])), v274, *v348.columns[v129].f32, 1), v271, v348.columns[v129], 2), v269, v348.columns[v129], 3);
            ++v129;
          }

          while (v129 != 4);
          v289 = v304[0];
        }

        *(v71 + 12) = v289.columns[0];
        *(v71 + 13) = v289.columns[1];
        *(v71 + 14) = v289.columns[2];
        *(v71 + 15) = v289.columns[3];
        v71[352] = sub_1AF19C3BC(v69, v62);
        goto LABEL_108;
      }

      if (!v69)
      {
        *v71 = v361[v303];
        v105 = v267[(v303 - v260)];
        *(v71 + 1) = vaddq_f32(*(&v358 + 4 * v68), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(&v355 + 4 * v68), v105.f32[0]), *(&v355 + 4 * v68 + 1), *v105.f32, 1), *(&v357 + 4 * v68), v105, 2));
        v105.i32[0] = v105.i32[3];
        if (v105.f32[3] <= 0.01)
        {
          v105.f32[0] = INFINITY;
        }

        DWORD2(v106) = v266;
        *&v106 = -1.0 / v105.f32[3];
        *(&v106 + 1) = ((-1.0 / v105.f32[3]) * -0.0) + 1.0;
        *(&v106 + 3) = 1.0 / (v105.f32[0] * v105.f32[0]);
        *(v71 + 4) = v106;
        goto LABEL_108;
      }

      v74 = sub_1AF19CBB4(*(v362 + v303), v62);
      sub_1AF19D69C(v69, v75, v76);
      *&v78 = v77;
      DWORD2(v78) = v79;
      HIDWORD(v78) = *(v71 + 3);
      *v71 = v78;
      *(v71 + 3) = sub_1AF19BDC0(v69, v79);
      v81 = sub_1AF1B9B04(v70, v80);
      v82 = 0;
      v83 = *(v81 + 16);
      v84 = *(v81 + 32);
      v85 = *(v81 + 48);
      v86 = (&v355 + 4 * v68);
      v87 = *v86;
      v88 = v86[1];
      v89 = v86[2];
      v90 = v86[3];
      v91 = &CPUPointer[368 * v64 + 128];
      v348.columns[0] = *v81;
      v348.columns[1] = v83;
      v348.columns[2] = v84;
      v348.columns[3] = v85;
      do
      {
        v304[0].columns[v82] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v87, COERCE_FLOAT(*&v348.columns[v82])), v88, *v348.columns[v82].f32, 1), v89, v348.columns[v82], 2), v90, v348.columns[v82], 3);
        ++v82;
      }

      while (v82 != 4);
      v280 = v304[0];
      v92 = vmulq_f32(v304[0].columns[2], v304[0].columns[2]);
      *&v93 = v92.f32[2] + vaddv_f32(*v92.f32);
      *v92.f32 = vrsqrte_f32(v93);
      *v92.f32 = vmul_f32(*v92.f32, vrsqrts_f32(v93, vmul_f32(*v92.f32, *v92.f32)));
      v94 = vmulq_n_f32(v304[0].columns[2], vmul_f32(*v92.f32, vrsqrts_f32(v93, vmul_f32(*v92.f32, *v92.f32))).f32[0]);
      *(v71 + 1) = v304[0].columns[3];
      *(v71 + 2) = v94;
      *&v95 = sub_1AF19C038(v69, 1, *&v353[v68]);
      *(v71 + 4) = v95;
      v71[352] = sub_1AF19C3BC(v69, v96);
      if (v74 != 5)
      {
        if (v74 == 3)
        {
          sub_1AF19C0B8(v69);
          *(v71 + 10) = v98;
        }

        goto LABEL_56;
      }

      v130 = *(v69 + 320);
      if (v130 > 1)
      {
        if (v130 != 2)
        {
          if (v130 == 3)
          {
            *(v71 + 4) = *(v69 + 336);
          }

          else if (v130 == 4)
          {
            *(v71 + 17) = (*(v69 + 304) & 1);
            *(v71 + 16) = *(v69 + 352);
          }

          goto LABEL_55;
        }

LABEL_52:
        *(v71 + 18) = (*(v69 + 304) & 1);
        *(v71 + 8) = *(v69 + 336);
        goto LABEL_55;
      }

      if (!*(v69 + 320))
      {
        *(v71 + 16) = *(v69 + 336);
        goto LABEL_55;
      }

      if (v130 == 1)
      {
        goto LABEL_52;
      }

LABEL_55:
      *(v71 + 3) = v280;
LABEL_56:
      v71[52] = v74;
      v71[53] = sub_1AF19B9DC(v69, v97);
      if (v303 > 7)
      {
        goto LABEL_108;
      }

      if (sub_1AF19B994(v69, v62))
      {
        v132 = sub_1AF19B944(v69);
      }

      else
      {
        v132 = 0;
      }

      v275 = sub_1AF19B934(v69, v131);
      v278 = sub_1AF19D618(v69);
      if (v132)
      {
        v133 = sub_1AF13AE5C(v265, v70);
        if (v133)
        {
          v134 = sub_1AF13AEA0(v265, v133);
          v136 = sub_1AF19ECC8(v69, v135);
          v138 = sub_1AF19ED10(v69, v137);
          v139 = memcpy(v71 + 256, v136, 16 * v138);
          v147 = *(v134 + 64);
          v148 = *(v134 + 80);
          v149 = *(v134 + 96);
          v150 = *(v134 + 112);
          if (v74 == 1)
          {
            v151 = 0;
            v152 = &v353[16 * v68 + 16];
            v153 = v152[1];
            v154 = v152[2];
            v155 = v152[3];
            v348.columns[0] = *v152;
            v348.columns[1] = v153;
            v348.columns[2] = v154;
            v348.columns[3] = v155;
            do
            {
              v304[0].columns[v151] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v147, COERCE_FLOAT(*&v348.columns[v151])), v148, *v348.columns[v151].f32, 1), v149, v348.columns[v151], 2), v150, v348.columns[v151], 3);
              ++v151;
            }

            while (v151 != 4);
            v156 = v304[0].columns[1];
            v157 = v304[0].columns[2];
            v158 = v304[0].columns[3];
            *(v71 + 12) = v304[0].columns[0];
            *(v71 + 13) = v156;
            *(v71 + 14) = v157;
            *(v71 + 15) = v158;
            *v159.i64 = sub_1AF1391F8();
            v163 = 0;
            v164 = *(v134 + 144);
            v165 = *(v134 + 160);
            v166 = *(v134 + 176);
            v348.columns[0] = *(v134 + 128);
            v348.columns[1] = v164;
            v348.columns[2] = v165;
            v348.columns[3] = v166;
            do
            {
              v304[0].columns[v163] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v159, COERCE_FLOAT(*&v348.columns[v163])), v160, *v348.columns[v163].f32, 1), v161, v348.columns[v163], 2), v162, v348.columns[v163], 3);
              ++v163;
            }

            while (v163 != 4);
            v167 = v304[0].columns[1];
            v168 = v304[0].columns[2];
            v169 = v304[0].columns[3];
            *(v71 + 5) = v304[0].columns[0];
            *(v71 + 6) = v167;
            *(v71 + 7) = v168;
            *(v71 + 8) = v169;
            *(v71 + 36) = *(v134 + 200);
          }

          else
          {
            *&v170 = sub_1AF13920C(v147, v148, v149, v150, *(v134 + 128), *(v134 + 144), *(v134 + 160), *(v134 + 176), v139, v140, v141, v142, v143, v144, v145, v146, *&v353[16 * v68 + 16], *&v353[16 * v68 + 20], *&v353[16 * v68 + 24], *&v354[64 * v68 + 16]);
            *(v71 + 12) = v170;
            *(v71 + 13) = v171;
            *(v71 + 14) = v172;
            *(v71 + 15) = v173;
            if (v74 == 2)
            {
              v174 = sub_1AF19BAD0(v69, v133);
              if (v174)
              {
                v175 = v174;
                v176 = (v134 + 208);
                do
                {
                  v177 = *(v176 - 1);
                  HIDWORD(v177) = *(v91 - 52);
                  *(v91 - 64) = v177;
                  v178 = *v176;
                  HIDWORD(v178) = *(v91 + 12);
                  *v91 = v178;
                  v91 += 16;
                  v176 += 24;
                  --v175;
                }

                while (v175);
              }
            }
          }
        }

        if (v71[53] >= 2u)
        {
          v272 = sub_1AF19C6A4(v69, v133);
          v180 = sub_1AF19BA38(v69, v179);
          v181 = *(&v272 + 1);
          if (*&v272 >= *(&v272 + 1))
          {
            v181 = *&v272;
          }

          *(v71 + 12) = v180 / fmaxf(v181, 1.0);
        }

        v182 = sub_1AF19EC18(v69, v133);
        if (v182 != 0.0)
        {
          *(v71 + 3) = v182;
        }
      }

      if (v278)
      {
        *v183.i32 = (180.0 / sub_1AF19BF64(v69, v62)) * 0.5;
        *(v71 + 10) = vdup_lane_s32(v183, 0);
        v368 = __invert_f4(v280);
        v368.columns[3] = vmulq_f32(v368.columns[0], v368.columns[0]);
        v185 = vmulq_f32(v368.columns[1], v368.columns[1]);
        v186 = vmulq_f32(v368.columns[2], v368.columns[2]);
        v187 = vzip2q_s32(v368.columns[3], v186);
        v188 = vzip1q_s32(vzip1q_s32(v368.columns[3], v186), v185);
        v368.columns[3] = vtrn2q_s32(v368.columns[3], v185);
        v368.columns[3].i32[2] = v186.i32[1];
        v189 = vaddq_f32(vzip1q_s32(v187, vdupq_laneq_s32(v185, 2)), vaddq_f32(v188, v368.columns[3]));
        v368.columns[3].i64[0] = 0x80000000800000;
        v368.columns[3].i64[1] = 0x80000000800000;
        v190 = vcgeq_f32(v368.columns[3], v189);
        v189.i32[3] = 0;
        v191 = vrsqrteq_f32(v189);
        v192 = vmulq_f32(v191, vrsqrtsq_f32(v189, vmulq_f32(v191, v191)));
        v193 = v190;
        v193.i32[3] = 0;
        v194 = vbslq_s8(vcltzq_s32(v193), v189, vmulq_f32(v192, vrsqrtsq_f32(v189, vmulq_f32(v192, v192))));
        v195 = vmulq_n_f32(v368.columns[0], v194.f32[0]);
        v196 = vmulq_lane_f32(v368.columns[1], *v194.f32, 1);
        v197 = vmulq_laneq_f32(v368.columns[2], v194, 2);
        v198 = vuzp1q_s32(v197, v197);
        v199 = vuzp1q_s32(v196, v196);
        v200 = v195;
        if (v190.i32[0])
        {
          v201 = vmlaq_f32(vmulq_f32(vextq_s8(v198, v197, 0xCuLL), vnegq_f32(v196)), v197, vextq_s8(v199, v196, 0xCuLL));
          v200 = vextq_s8(vuzp1q_s32(v201, v201), v201, 0xCuLL);
        }

        v202 = vuzp1q_s32(v195, v195);
        v203 = v196;
        if (v190.i32[1])
        {
          v204 = vmlaq_f32(vmulq_f32(vextq_s8(v202, v195, 0xCuLL), vnegq_f32(v197)), v195, vextq_s8(v198, v197, 0xCuLL));
          v203 = vextq_s8(vuzp1q_s32(v204, v204), v204, 0xCuLL);
        }

        if (v190.i32[2])
        {
          v205 = vmlaq_f32(vmulq_f32(vextq_s8(v199, v196, 0xCuLL), vnegq_f32(v195)), v196, vextq_s8(v202, v195, 0xCuLL));
          v197 = vextq_s8(vuzp1q_s32(v205, v205), v205, 0xCuLL);
        }

        v206 = (*v200.i32 + *&v203.i32[1]) + v197.f32[2];
        if (v206 > 0.0)
        {
          v207 = sqrtf(v206 + 1.0);
          *v208.f32 = vsub_f32(*&vzip2q_s32(v203, vuzp1q_s32(v203, v197)), *&vtrn2q_s32(v197, vzip2q_s32(v197, v200)));
          v208.f32[2] = *&v200.i32[1] - *v203.i32;
          v208.f32[3] = v207 * v207;
          v209 = 0.5 / v207;
          goto LABEL_87;
        }

        if (*v200.i32 >= *&v203.i32[1] && *v200.i32 >= v197.f32[2])
        {
          v226 = sqrtf(((*v200.i32 + 1.0) - *&v203.i32[1]) - v197.f32[2]);
          v230.f32[0] = v226 * v226;
          v227 = *&v200.i32[1] + *v203.i32;
          v228 = vzip2q_s32(v200, v203).u64[0];
          LODWORD(v229) = vadd_f32(v228, *v197.f32).u32[0];
          HIDWORD(v229) = vsub_f32(v228, *&v197).i32[1];
          v230.f32[1] = v227;
          v230.i64[1] = v229;
          goto LABEL_102;
        }

        if (*&v203.i32[1] <= v197.f32[2])
        {
          v237 = vzip2q_s32(v200, v203).u64[0];
          v238 = __PAIR64__(v200.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v197.f32[2] + 1.0) - *v200.i32) - *&v203.i32[1])));
          v239 = vdup_lane_s32(*v203.i8, 0);
          *v208.f32 = vadd_f32(v237, *v197.f32);
          v240 = vsub_f32(*v200.i8, v239);
          v239.i32[0] = v238.i32[0];
          v239.i32[0] = vmul_f32(v238, v239).u32[0];
          v239.i32[1] = v240.i32[1];
          *&v208.u32[2] = v239;
          v209 = 0.5 / v238.f32[0];
LABEL_87:
          v210 = vmulq_n_f32(v208, v209);
        }

        else
        {
          v226 = sqrtf(((*&v203.i32[1] + 1.0) - *v200.i32) - v197.f32[2]);
          v230.f32[0] = *&v200.i32[1] + *v203.i32;
          v225 = vzip2q_s32(v200, v203).u64[0];
          v230.f32[1] = v226 * v226;
          *&v230.u32[2] = vext_s8(vadd_f32(*v197.f32, v225), vsub_f32(*v197.f32, v225), 4uLL);
LABEL_102:
          v210 = vmulq_n_f32(v230, 0.5 / v226);
        }

        *(v71 + 6) = v210;
        v231 = sub_1AF19BEF0(v69, v184);
        *(v263 + 8 * v303) = objc_msgSend_iesTextureForProfile_renderContext_(v264, v232, v231, v261);
        *(v262 + 8 * v303) = 0;
        goto LABEL_108;
      }

      if (v275)
      {
        v305 = 0;
        v305 = sub_1AF0D839C();
        *(v263 + 8 * v303) = sub_1AF1306C0(v258, *(v69 + 272), &v305);
        *(v262 + 8 * v303) = sub_1AFDE8554(v264);
        sub_1AF19BC90(v69, v304);
        v211 = sub_1AF15E62C(v304, 0);
        v276 = *v211;
        v279 = *(v211 + 1);
        v270 = *(v211 + 3);
        v273 = *(v211 + 2);
        v369 = __invert_f4(v280);
        v212 = 0;
        v347 = v369;
        do
        {
          v348.columns[v212] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v276, COERCE_FLOAT(*&v347.columns[v212])), v279, *v347.columns[v212].f32, 1), v273, v347.columns[v212], 2), v270, v347.columns[v212], 3);
          ++v212;
        }

        while (v212 != 4);
        v286 = v348.columns[1];
        v288 = v348.columns[0];
        v282 = v348.columns[3];
        v284 = v348.columns[2];
        if (sub_1AF167434(*(v69 + 272)))
        {
          v214 = sub_1AF167220(*(v69 + 272), v213);
          v215 = 0;
          v216 = *v214;
          v217 = v214[1];
          v218 = v214[2];
          v219 = v214[3];
          v347.columns[0] = v288;
          v347.columns[1] = v286;
          v347.columns[2] = v284;
          v347.columns[3] = v282;
          do
          {
            v348.columns[v215] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v216, COERCE_FLOAT(*&v347.columns[v215])), v217, *v347.columns[v215].f32, 1), v218, v347.columns[v215], 2), v219, v347.columns[v215], 3);
            ++v215;
          }

          while (v215 != 4);
          v220 = v348.columns[0];
          v221 = v348.columns[1];
          v222 = v348.columns[2];
          v223 = v348.columns[3];
        }

        else
        {
          v221 = v286;
          v220 = v288;
          v223 = v282;
          v222 = v284;
        }

        v233 = 0;
        v347.columns[0] = v220;
        v347.columns[1] = v221;
        v347.columns[2] = v222;
        v347.columns[3] = v223;
        do
        {
          v348.columns[v233] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE21120, COERCE_FLOAT(*&v347.columns[v233])), xmmword_1AFE21130, *v347.columns[v233].f32, 1), xmmword_1AFE20180, v347.columns[v233], 2), xmmword_1AFE21140, v347.columns[v233], 3);
          ++v233;
        }

        while (v233 != 4);
        v234 = v348.columns[1];
        v235 = v348.columns[2];
        v236 = v348.columns[3];
        *(v71 + 12) = v348.columns[0];
        *(v71 + 13) = v234;
        *(v71 + 14) = v235;
        *(v71 + 15) = v236;
        *(v71 + 3) = sub_1AF166598(*(v69 + 272), v213);
      }

LABEL_108:
      ++v68;
      ++v64;
    }

    while (v68 != v300);
    v63 = v344;
    v4 = v257;
    v64 = v259;
LABEL_111:
    v64 += v4;
    ++v303;
  }

  while (v303 < *(v63 + 6));
LABEL_112:
  CFXBufferSliceDidModify();
  if (!v260)
  {
    goto LABEL_125;
  }

  v242 = 0;
  v243 = v362;
  v244 = v260;
  do
  {
    v245 = *v243;
    if (sub_1AF19CBB4(*v243, v241) == 5 && *(v245 + 320) == 4)
    {
      v242 += 8 * *(v245 + 352);
    }

    ++v243;
    --v244;
  }

  while (v244);
  if (v242)
  {
    CFXBufferAllocatorPerFrameAllocateWithLength(v256[3], v242);
    v247 = v246;
    v251 = CFXBufferSliceGetCPUPointer(v248, v246, v249);
    v252 = (v297 + 272);
    v253 = v362;
    do
    {
      v254 = *v253;
      if (sub_1AF19CBB4(*v253, v250) == 5 && *(v254 + 320) == 4)
      {
        memcpy(&v251[*v252], *(v254 + 360), 8 * *(v254 + 352));
      }

      ++v253;
      ++v252;
      --v260;
    }

    while (v260);
    CFXBufferSliceDidModify();
    CFXBufferSliceGetMTLBuffer();
    *(v297 + 256) = v255;
    *(v297 + 264) = v247;
  }

  else
  {
LABEL_125:
    *(v297 + 256) = 0;
  }

  _Block_object_dispose(&v343, 8);
}

void *sub_1AF1F5B38(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(*(result[4] + 8) + 24);
      if (v6 > 0xFF)
      {
        break;
      }

      *(result[5] + 8 * v6) = *(a4 + 8 * v4);
      v7 = *(a3 + 8 * v4);
      v8 = result[6];
      v9 = *(result[4] + 8);
      v10 = *(v9 + 24);
      *(v9 + 24) = v10 + 1;
      *(v8 + 8 * v10) = v7;
      v4 = v5++;
    }

    while (v4 < a2);
  }

  return result;
}

uint64_t sub_1AF1F5B98(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v6 = 0;
      v7 = *(a5 + 16 * i);
      v8 = *(result + 80);
      v17[2] = *(result + 64);
      v17[3] = v8;
      v9 = *(result + 112);
      v17[4] = *(result + 96);
      v17[5] = v9;
      v10 = *(result + 48);
      v17[0] = *(result + 32);
      v17[1] = v10;
      while (1)
      {
        v11 = vmulq_f32(v7, v17[v6]);
        if ((COERCE_FLOAT(HIDWORD(v17[v6])) + (v11.f32[2] + vaddv_f32(*v11.f32))) < -v7.f32[3])
        {
          break;
        }

        if (++v6 == 6)
        {
          v12 = *(*(*(result + 128) + 8) + 24);
          if (v12 > 0xFF)
          {
            return result;
          }

          *(*(result + 136) + 16 * (v12 - *(result + 160))) = v7;
          *(*(result + 144) + 8 * *(*(*(result + 128) + 8) + 24)) = *(a4 + 8 * i);
          v13 = *(a3 + 8 * i);
          v14 = *(result + 152);
          v15 = *(*(result + 128) + 8);
          v16 = *(v15 + 24);
          *(v15 + 24) = v16 + 1;
          *(v14 + 8 * v16) = v13;
          break;
        }
      }
    }
  }

  return result;
}

void sub_1AF1F5C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = 0;
    v10 = a2;
    do
    {
      if ((sub_1AF19B994(*(a4 + 8 * v9), a2) & 1) == 0 && (sub_1AF19B934(*(a4 + 8 * v9), a2) & 1) == 0 && sub_1AF19C1FC(*(a4 + 8 * v9), a2) > 0.0)
      {
        v11 = 0;
        v12 = a5 + 48 * v9;
        v13 = *v12;
        v14 = *(v12 + 16);
        v15 = *(v12 + 32);
        v16 = *(v12 + 40);
        v17 = *(a1 + 80);
        v42[2] = *(a1 + 64);
        v42[3] = v17;
        v18 = *(a1 + 112);
        v42[4] = *(a1 + 96);
        v42[5] = v18;
        v19 = *(a1 + 48);
        v42[0] = *(a1 + 32);
        v42[1] = v19;
        v20 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
        v21 = vdupq_lane_s32(v15, 1);
        v22 = vmlaq_n_f32(v13, v14, *v15.i32);
        while (1)
        {
          v23 = v42[v11];
          v24 = vmulq_f32(v13, v23);
          v25 = vmlaq_f32(vmulq_f32(v20, vnegq_f32(v23)), v14, vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
          v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
          v27 = vmlaq_f32(vmulq_f32(v20, vnegq_f32(v26)), v14, vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL));
          v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
          v29 = vmulq_f32(v27, v27);
          v29.f32[0] = v29.f32[1] + (v29.f32[2] + v29.f32[0]);
          v30 = vdupq_lane_s32(*v29.f32, 0);
          v30.i32[3] = 0;
          v31 = vrsqrteq_f32(v30);
          v32 = vmulq_f32(v31, vrsqrtsq_f32(v30, vmulq_f32(v31, v31)));
          v33 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v29.f32[0] != 0.0)), 0x1FuLL));
          v33.i32[3] = 0;
          v34 = vmulq_f32(v23, vmlsq_f32(v22, v21, vbslq_s8(vcltzq_s32(v33), vmulq_f32(vmulq_f32(v32, vrsqrtsq_f32(v30, vmulq_f32(v32, v32))), v28), v28)));
          v35 = vadd_f32(vdup_laneq_s32(v23, 3), vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v34, v34, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v34.i8), vzip2_s32(*v24.i8, *v34.i8))));
          if (vmuls_lane_f32(v35.f32[0], v35, 1) >= 0.0 && fminf(v35.f32[0], v35.f32[1]) < 0.0)
          {
            break;
          }

          if (++v11 == 6)
          {
            v36 = *(*(*(a1 + 128) + 8) + 24);
            if (v36 > 0xFF)
            {
              return;
            }

            v37 = *(a1 + 136) + 48 * (v36 - *(a1 + 160));
            *v37 = v13;
            *(v37 + 16) = v14;
            *(v37 + 32) = v15;
            *(v37 + 40) = v16;
            *(*(a1 + 144) + 8 * *(*(*(a1 + 128) + 8) + 24)) = *(a4 + 8 * v9);
            v38 = *(a3 + 8 * v9);
            v39 = *(a1 + 152);
            v40 = *(*(a1 + 128) + 8);
            v41 = *(v40 + 24);
            *(v40 + 24) = v41 + 1;
            *(v39 + 8 * v41) = v38;
            break;
          }
        }
      }

      ++v9;
    }

    while (v9 != v10);
  }
}

void sub_1AF1F5EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v45[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v9 = 0;
    v10 = a2;
    do
    {
      v11 = sub_1AF19D968(*(a4 + 8 * v9), a2);
      if (v11 != 1)
      {
        v13 = sub_1AF0D5194(v11, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE5878(v44, v45, v13);
        }
      }

      if (sub_1AF19C46C(*(a4 + 8 * v9), v12) > 0.0)
      {
        v14 = sub_1AF19B558(*(a4 + 8 * v9), 0);
        if (!v14 || sub_1AF166598(v14, a2) > 0.0)
        {
          v16 = 0;
          v17 = (a5 + 80 * v9);
          v18 = *v17;
          v19 = v17[1];
          v20 = v17[2];
          v21 = v17[3];
          v22 = v17[4];
          *v15.i32 = fmaxf(fmaxf(v22.f32[0], COERCE_FLOAT(v17[4].i64[1])), COERCE_FLOAT(HIDWORD(v17[4].i64[0]))) * 0.1;
          v23 = vaddq_f32(v22, vdupq_lane_s32(v15, 0));
          v23.i32[3] = v22.i32[3];
          v24 = *(a1 + 80);
          v43[2] = *(a1 + 64);
          v43[3] = v24;
          v25 = *(a1 + 112);
          v43[4] = *(a1 + 96);
          v43[5] = v25;
          v26 = *(a1 + 48);
          v43[0] = *(a1 + 32);
          v43[1] = v26;
          while (1)
          {
            v27 = v43[v16];
            v28 = vmulq_f32(v19, v27);
            v29 = vmulq_f32(v20, v27);
            v30 = vmulq_f32(v21, v27);
            v31 = vmulq_f32(v18, v27);
            v32 = vzip1q_s32(v28, v30);
            v33 = vzip2q_s32(v28, v30);
            v34 = vzip1q_s32(v29, v31);
            v35 = vzip2q_s32(v29, v31);
            v36 = vaddq_f32(vzip2q_s32(v33, v35), vaddq_f32(vzip1q_s32(v33, v35), vaddq_f32(vzip1q_s32(v32, v34), vzip2q_s32(v32, v34))));
            v37 = vabsq_f32(vmulq_f32(v23, v36));
            if (v36.f32[3] <= -(v37.f32[2] + vaddv_f32(*v37.f32)))
            {
              break;
            }

            if (++v16 == 6)
            {
              v38 = (*(a1 + 136) + 80 * (*(*(*(a1 + 128) + 8) + 24) - *(a1 + 160)));
              *v38 = v18;
              v38[1] = v19;
              v38[2] = v20;
              v38[3] = v21;
              v38[4] = v23;
              *(*(a1 + 144) + 8 * *(*(*(a1 + 128) + 8) + 24)) = *(a4 + 8 * v9);
              v39 = *(a3 + 8 * v9);
              v40 = *(a1 + 152);
              v41 = *(*(a1 + 128) + 8);
              v42 = *(v41 + 24);
              *(v41 + 24) = v42 + 1;
              *(v40 + 8 * v42) = v39;
              if (*(*(*(a1 + 128) + 8) + 24) > 0xFFu)
              {
                return;
              }

              break;
            }
          }
        }
      }

      ++v9;
    }

    while (v9 != v10);
  }
}

float32x4_t sub_1AF1F60F4(float32x4_t *a1, unsigned int a2, unsigned int a3, __int32 a4, float32x4_t *a5, uint32x4_t a6)
{
  a6.i64[0] = __PAIR64__(a3, a2);
  a6.i32[2] = a4;
  v6 = a1[1];
  v7 = vmulq_f32(v6, vcvtq_f32_u32(a6));
  result = vaddq_f32(v6, v7);
  v9 = vmlaq_laneq_f32(a1[35], vsubq_f32(a1[39], a1[35]), v7, 2);
  v10 = vmlaq_laneq_f32(a1[36], vsubq_f32(a1[40], a1[36]), v7, 2);
  v11 = vsubq_f32(vmlaq_laneq_f32(a1[33], vsubq_f32(a1[37], a1[33]), v7, 2), v9);
  v12 = vmlaq_lane_f32(v9, v11, *v7.f32, 1);
  v13 = vsubq_f32(vmlaq_laneq_f32(a1[34], vsubq_f32(a1[38], a1[34]), v7, 2), v10);
  v14 = vmlaq_lane_f32(v9, v11, *result.f32, 1);
  v15 = vsubq_f32(vmlaq_lane_f32(v10, v13, *v7.f32, 1), v12);
  *a5 = vmlaq_n_f32(v12, v15, v7.f32[0]);
  a5[1] = vmlaq_n_f32(v12, v15, result.f32[0]);
  v16 = vsubq_f32(vmlaq_lane_f32(v10, v13, *result.f32, 1), v14);
  a5[2] = vmlaq_n_f32(v14, v16, v7.f32[0]);
  a5[3] = vmlaq_n_f32(v14, v16, result.f32[0]);
  v17 = vmlaq_laneq_f32(a1[35], vsubq_f32(a1[39], a1[35]), result, 2);
  v18 = vmlaq_laneq_f32(a1[36], vsubq_f32(a1[40], a1[36]), result, 2);
  v19 = vsubq_f32(vmlaq_laneq_f32(a1[33], vsubq_f32(a1[37], a1[33]), result, 2), v17);
  v20 = vmlaq_lane_f32(v17, v19, *v7.f32, 1);
  v21 = vsubq_f32(vmlaq_laneq_f32(a1[34], vsubq_f32(a1[38], a1[34]), result, 2), v18);
  v22 = vmlaq_lane_f32(v17, v19, *result.f32, 1);
  v23 = vsubq_f32(vmlaq_lane_f32(v18, v21, *v7.f32, 1), v20);
  a5[4] = vmlaq_n_f32(v20, v23, v7.f32[0]);
  a5[5] = vmlaq_n_f32(v20, v23, result.f32[0]);
  v24 = vsubq_f32(vmlaq_lane_f32(v18, v21, *result.f32, 1), v22);
  a5[6] = vmlaq_n_f32(v22, v24, v7.f32[0]);
  a5[7] = vmlaq_n_f32(v22, v24, result.f32[0]);
  return result;
}

uint64_t sub_1AF1F6204(uint64_t a1, void *__src, size_t __n)
{
  v3 = __n;
  *&v37[5] = *MEMORY[0x1E69E9840];
  v6 = __n;
  v7 = *(a1 + 512);
  v8 = v7 + __n;
  v9 = *(a1 + 516);
  v10 = v7;
  if (v8 >= v9)
  {
    if (v9)
    {
      v11 = *(a1 + 516);
    }

    else
    {
      v11 = 4096;
    }

    do
    {
      v12 = v11;
      v11 *= 2;
    }

    while (v12 < v8);
    *(a1 + 504) = CStackAllocatorReallocate(*(a1 + 2784), *(a1 + 504), v9, v12, 16);
    *(a1 + 656) = CStackAllocatorReallocate(*(a1 + 2784), *(a1 + 656), 4 * *(a1 + 516), 4 * v12, 16);
    *(a1 + 516) = v12;
    v10 = *(a1 + 512);
  }

  v13 = memcpy((*(a1 + 504) + v10), __src, v6);
  v15 = *(a1 + 512);
  if (v15 < v8)
  {
    v16 = a1 + 664;
    v17 = a1 + 1688;
    v18 = v7 + v3 - v15;
    do
    {
      v19 = *(a1 + 504);
      v20 = *(v19 + v15);
      v21 = *(v16 + 4 * *(v19 + v15));
      if (v21)
      {
        if (*(v19 + (v21 - 1)) != v20)
        {
          v22 = sub_1AF0D5194(v13, v14);
          v13 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);
          if (v13)
          {
            sub_1AFDE58BC(v36, v37, v22);
          }
        }

        v23 = *(v17 + 4 * v20);
        if (!v23)
        {
          v24 = sub_1AF0D5194(v13, v14);
          v13 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
          if (v13)
          {
            sub_1AFDE5900(v34, &v35, v24);
          }
        }

        v25 = v23 - 1;
        if (*(*(a1 + 504) + v25) != v20)
        {
          v26 = sub_1AF0D5194(v13, v14);
          v13 = os_log_type_enabled(v26, OS_LOG_TYPE_FAULT);
          if (v13)
          {
            sub_1AFDE5944(v32, &v33, v26);
          }
        }

        v27 = *(a1 + 656);
        *(v27 + 4 * v25) = v15 + 1;
        *(v27 + 4 * v15) = 0;
        *(v17 + 4 * v20) = v15 + 1;
        if (*(v27 + 4 * v15) > v8)
        {
          v28 = sub_1AF0D5194(v13, v14);
          v13 = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);
          if (v13)
          {
            sub_1AFDE5988(v30, &v31, v28);
          }
        }
      }

      else
      {
        *(v16 + 4 * *(v19 + v15)) = v15 + 1;
        *(v17 + 4 * v20) = v15 + 1;
        *(*(a1 + 656) + 4 * v15) = 0;
      }

      ++v15;
      --v18;
    }

    while (v18);
    LODWORD(v15) = *(a1 + 512);
  }

  *(a1 + 512) = v8;
  return v15;
}

uint64_t sub_1AF1F6464(uint64_t a1, unsigned __int8 *__src, size_t __n)
{
  v5 = a1;
  *&v16[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 4 * *__src + 664);
  if (v6)
  {
    v7 = *(a1 + 512);
    v8 = __n;
    while (1)
    {
      v9 = v6 - 1;
      if (__n < 2)
      {
        v11 = 1;
      }

      else
      {
        v10 = v6 <= v7 ? v7 : v6;
        v11 = v10 - v6 + 1;
        v12 = 1;
        while (v10 != v6)
        {
          if (*(*(v5 + 504) + v6) != __src[v12])
          {
            v11 = v12;
            break;
          }

          ++v12;
          ++v6;
          if (v8 == v12)
          {
            return v9;
          }
        }
      }

      if (v11 == __n)
      {
        break;
      }

      if (*(*(v5 + 656) + 4 * v9) > v7)
      {
        v13 = sub_1AF0D5194(a1, __src);
        a1 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
        if (a1)
        {
          sub_1AFDE59CC(v15, v16, v13);
        }
      }

      v6 = *(*(v5 + 656) + 4 * v9);
      if (!v6)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    LOWORD(v9) = sub_1AF1F6204(v5, __src, __n);
  }

  return v9;
}

uint64_t sub_1AF1F65B8(uint64_t *a1, char **a2, void *__src, size_t __n)
{
  v4 = __n;
  v8 = *(a2 + 2);
  v7 = *(a2 + 3);
  v9 = v8 + __n;
  if (v8 + __n >= v7)
  {
    if (v7)
    {
      v11 = *(a2 + 3);
    }

    else
    {
      v11 = 4096;
    }

    do
    {
      v12 = v11;
      v11 *= 2;
    }

    while (v12 < v9);
    v10 = CStackAllocatorReallocate(a1, *a2, v7, v12, 16);
    *a2 = v10;
    *(a2 + 3) = v12;
    v8 = *(a2 + 2);
  }

  else
  {
    v10 = *a2;
  }

  memcpy(&v10[v8], __src, v4);
  result = *(a2 + 4);
  *(a2 + 2) = v9;
  return result;
}

_DWORD *sub_1AF1F6658(uint64_t *a1, unsigned int *a2, unsigned int *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  bzero(v19, 0x400uLL);
  v7 = 0;
  if (v6)
  {
    v8 = v6;
    v9 = a2;
    do
    {
      v11 = *v9++;
      v10 = v11;
      if (v11)
      {
        ++v7;
      }

      ++v19[v10];
      --v8;
    }

    while (v8);
  }

  bzero(v18, 0x400uLL);
  v12 = 0;
  v13 = 0;
  do
  {
    v13 += v19[v12];
    v18[++v12] = v13;
  }

  while (v12 != 255);
  result = CStackAllocatorAllocate(a1, 4 * v7);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v16 = a2[i];
      if (v16)
      {
        v17 = v18[v16];
        v18[v16] = v17 + 1;
        result[(v6 + ~v17)] = i;
      }
    }
  }

  *a3 = v7;
  return result;
}

unsigned int *sub_1AF1F678C(uint64_t a1, uint64_t a2, int a3)
{
  *&v28[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  v7 = *a1 * HIDWORD(*a1);
  v8 = (v7 * v6);
  v26 = v7 * v6;
  v9 = CStackAllocatorAllocate(*(a1 + 2784), 4 * v8);
  v10 = v9;
  if (v8)
  {
    v11 = (a2 + 2);
    v12 = (a2 + 4);
    v13 = v9;
    do
    {
      if (a3 == 8)
      {
        v14 = HIBYTE(*(v12 - 1)) + *(v12 - 1) + *v12;
      }

      else
      {
        v14 = HIBYTE(*v11) + *v11;
      }

      *v13++ = v14;
      v11 += 2;
      v12 += 8;
      --v8;
    }

    while (v8);
  }

  result = sub_1AF1F6658(*(a1 + 2784), v9, &v26);
  v17 = v26;
  if (v26)
  {
    v18 = result;
    do
    {
      v20 = *v18++;
      v19 = v20;
      v21 = v10[v20];
      if (!v21)
      {
        v22 = sub_1AF0D5194(result, v16);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE5A10(v27, v28, v22);
        }
      }

      v23 = *(a1 + 488);
      if (a3 == 8)
      {
        v24 = 8 * v19;
        v25 = (v23 + *(a2 + 8 * v19));
      }

      else
      {
        v24 = 4 * v19;
        v25 = (v23 + *(a2 + 4 * v19));
      }

      result = sub_1AF1F6464(a1, v25, v21);
      *(a2 + v24) = result;
      --v17;
    }

    while (v17);
  }

  return result;
}

float32x4_t *sub_1AF1F6920(float32x4_t *result, unsigned int a2)
{
  v3 = &result->i32[a2 & 3];
  v4 = *v3;
  if (*v3)
  {
    v5 = result;
    v6 = 0;
    v7 = (v3 + 4);
    v8 = vld1q_dup_f32(v7);
    v53 = v8;
    v54 = result[((2 * a2) | 1) + 2];
    v9 = 0uLL;
    v52 = vsubq_f32(vnegq_f32(result[2 * a2 + 2]), v54);
    v10 = vmlaq_f32(v54, 0, v52);
    v11 = vmulq_f32(v10, v10);
    v8.f32[0] = v11.f32[2] + vaddv_f32(*v11.f32);
    *v11.f32 = vrsqrte_f32(v8.u32[0]);
    *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v8.u32[0], vmul_f32(*v11.f32, *v11.f32)));
    v12 = vmulq_n_f32(v10, vmul_f32(*v11.f32, vrsqrts_f32(v8.u32[0], vmul_f32(*v11.f32, *v11.f32))).f32[0]);
    v13 = result + 171;
    v14 = result[9].i64[0] + 32;
    do
    {
      v15 = v13->i64[a2];
      v16 = v5[173].i32[2];
      v57 = v12;
      v58 = vaddq_f32(v53, v9);
      v17 = vmlaq_f32(v54, v52, v58);
      v18 = vmulq_f32(v17, v17);
      *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
      *v18.f32 = vrsqrte_f32(v19);
      *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
      v20 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
      v55 = vnegq_f32(v20);
      v56 = v20;
      v60[0] = vdupq_lane_s32(*v12.i8, 0);
      v60[1] = vdupq_lane_s32(*v12.i8, 1);
      v60[2] = vdupq_laneq_s32(v12, 2);
      v60[3] = vdupq_laneq_s32(v12, 3);
      v21 = (v15 + 4 * (v16 * v6));
      v59[0] = vdupq_lane_s32(*v55.f32, 0);
      v59[1] = vdupq_lane_s32(*v55.f32, 1);
      v59[2] = vdupq_laneq_s32(v55, 2);
      v59[3] = vdupq_laneq_s32(v55, 3);
      bzero(v21, (4 * v16));
      sub_1AF1DAA58(v5[9].i64[1], v5[10].i32[0], v60, v59, v5[10].i64[1]);
      memcpy(&v21[4 * v5[169].i64[1]], v5[10].i64[1], v5[11].u32[0]);
      sub_1AF1DA710(v5[11].i64[1], v5[12].i32[0], v60, v59, v5[12].i64[1]);
      result = memcpy(&v21[4 * v5[170].i64[0]], v5[12].i64[1], v5[13].u32[0]);
      v22 = v5[170].u32[3];
      if (v22 >= 1)
      {
        v23 = 0;
        v24 = v14;
        do
        {
          v25 = v24[-2];
          v26 = v24[-1];
          v27 = v24[1];
          v28 = v24[2];
          v29 = vmulq_f32(v57, v26);
          v30 = vmulq_f32(v57, *v24);
          v31 = vmulq_f32(v57, v27);
          v32 = vmulq_f32(v57, v25);
          v33 = vzip1q_s32(v29, v31);
          v34 = vzip2q_s32(v29, v31);
          v35 = vzip1q_s32(v30, v32);
          v36 = vzip2q_s32(v30, v32);
          v37 = vaddq_f32(vzip2q_s32(v34, v36), vaddq_f32(vzip1q_s32(v34, v36), vaddq_f32(vzip1q_s32(v33, v35), vzip2q_s32(v33, v35))));
          v38 = vabsq_f32(vmulq_f32(v28, v37));
          v50 = v37.f32[3] > -(v38.f32[2] + vaddv_f32(*v38.f32));
          v39 = vmulq_f32(v26, v55);
          v40 = vmulq_f32(*v24, v55);
          v41 = vmulq_f32(v27, v55);
          v42 = vmulq_f32(v25, v55);
          v43 = vzip1q_s32(v39, v41);
          v44 = vzip2q_s32(v39, v41);
          v45 = vzip1q_s32(v40, v42);
          v46 = vzip2q_s32(v40, v42);
          v47 = vaddq_f32(vzip2q_s32(v44, v46), vaddq_f32(vzip1q_s32(v44, v46), vaddq_f32(vzip1q_s32(v43, v45), vzip2q_s32(v43, v45))));
          v48 = vabsq_f32(vmulq_f32(v28, v47));
          v49 = -(v48.f32[2] + vaddv_f32(*v48.f32));
          v50 = v50 && v47.f32[3] > v49;
          if (v50)
          {
            v51 = &v21[4 * v5[170].i64[1]];
            v51[v23 >> 3] |= 1 << (v23 & 7);
          }

          ++v23;
          v24 += 5;
        }

        while (v22 != v23);
      }

      ++v6;
      v12 = v56;
      v9 = v58;
    }

    while (v6 != v4);
  }

  return result;
}

double sub_1AF1F6C30(uint64_t a1)
{
  *a1 = xmmword_1AFE22920;
  *(a1 + 16) = 0x4000000040;
  *&result = 0x40000000400;
  *(a1 + 32) = xmmword_1AFE22930;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  return result;
}

id *sub_1AF1F6C5C(id *a1)
{
  for (i = 0; i != 7; ++i)
  {
    v3 = &a1[i];
    v4 = a1[i + 9];
    if (v4)
    {
      CFRelease(v4);
      v3[9] = 0;
    }

    v5 = v3[16];
    if (v5)
    {
      CFRelease(v5);
      v3[16] = 0;
    }
  }

  return a1;
}

void sub_1AF1F6CD8(uint64_t a1)
{
  *&v3 = MEMORY[0x1EEE9AC00](a1);
  v4 = v2;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v226 = v3;
  v11 = v1;
  v13 = v12;
  *(&v302[2] + 4) = *MEMORY[0x1E69E9840];
  v12[19] = 0u;
  v12[20] = 0u;
  v12[17] = 0u;
  v12[18] = 0u;
  v12[15] = 0u;
  v12[16] = 0u;
  v12[13] = 0u;
  v12[14] = 0u;
  v12[11] = 0u;
  v12[12] = 0u;
  v12[9] = 0u;
  v12[10] = 0u;
  v12[7] = 0u;
  v12[8] = 0u;
  v12[5] = 0u;
  v12[6] = 0u;
  v12[3] = 0u;
  v12[4] = 0u;
  v12[1] = 0u;
  v12[2] = 0u;
  *v12 = 0u;
  v14 = *(v7 + 14696);
  v16 = (v7 + 96 * v15);
  v17 = v16[99];
  v239 = v16[98];
  v240 = v17;
  v18 = v16[101];
  v241 = v16[100];
  v242 = v18;
  v19 = v16[97];
  v237 = v16[96];
  v238 = v19;
  v230 = v7;
  v231 = v14;
  v232 = v5;
  v233 = v2;
  if (v2)
  {
    v1 = CFRetain(v2);
  }

  cf = v4;
  v234 = v296;
  v235 = v295;
  v236 = v294;
  v260 = v239;
  v261 = v240;
  v262 = v241;
  v263 = v242;
  v258 = v237;
  v259 = v238;
  sub_1AF1F4690(v1);
  if (sub_1AF138684(v6))
  {
    v21 = sub_1AF12F518(v14, v20);
    CStackAllocatorPushFrame(v21);
    v184 = v21;
    v23 = vcvtq_f32_u32(*v11);
    v24 = v11[1].i64[0];
    if (v24)
    {
      v25 = v24 * v10;
      *(v13 + 16) = v25;
      v22 = v226;
      v26.f32[0] = v226 / v25;
      v26.i32[1] = v23.i32[1];
      v26.i64[1] = v23.i64[1];
      v22.i32[0] = (v25 * ceilf(v26.f32[0]));
      *&v226 = v22.i64[0];
      v23 = v26;
    }

    if (HIDWORD(v24))
    {
      v27 = HIDWORD(v24) * v10;
      v29.i32[0] = v226;
      v28.i32[0] = v23.i32[0];
      v28.f32[1] = DWORD1(v226) / v27;
      *(v13 + 17) = v27;
      v28.i64[1] = v23.i64[1];
      v29.i32[1] = (v27 * ceilf(v28.f32[1]));
      v23 = v28;
    }

    else
    {
      v29 = v226;
    }

    *v22.f32 = vcvt_u32_f32(vrndp_f32(*v23.f32));
    __asm { FMOV            V1.4S, #1.0 }

    v35 = vdivq_f32(_Q1, v23);
    _Q1.f32[0] = *(v8 + 14704);
    v36 = *(v8 + 14712);
    *v37.f32 = vcvt_f32_u32(*v22.f32);
    *v38.f32 = vcvt_f32_u32(v29);
    v37.i64[1] = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(_Q1.f32[0], v23, 2)), vextq_s8(v23, v23, 8uLL).u32[0]);
    v38.f32[2] = _Q1.f32[0] - v36;
    v38.f32[3] = _Q1.f32[0] - v36;
    v222 = v35;
    v224 = v22;
    v13[2] = v35;
    v13[3] = vdivq_f32(v37, v38);
    v186 = v23.f32[2];
    v190 = v22.i32[1];
    v39 = v22.i32[0];
    v194 = *(v13 + 23);
    if (v194)
    {
      v40 = 8;
    }

    else
    {
      v40 = 4;
    }

    v181 = v40;
    if (v194)
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v42 = (v22.i32[1] * v23.f32[2] * v22.i32[0]) << v41;
    CFXBufferAllocatorPerFrameAllocateWithLength(cf, v42);
    v44 = v43;
    v46 = v45;
    *v13 = v43;
    *(v13 + 1) = v45;
    CPUPointer = CFXBufferSliceGetCPUPointer(v43, v45, v47);
    v49 = v224;
    v49.i32[2] = v186;
    v227 = v49;
    bzero(CPUPointer, v42);
    bzero(&v268, 0xA60uLL);
    v258 = v227;
    v259 = v222;
    v262 = v239;
    v263 = v240;
    v264 = v241;
    v265 = v242;
    v260 = v237;
    v261 = v238;
    v266 = v296;
    v267 = v295;
    v268 = v294;
    *v293 = v184;
    v50 = *(v13 + 9);
    v223 = v50;
    v51 = HIDWORD(v50);
    v270 = (HIDWORD(v50) + 3) >> 2;
    if ((HIDWORD(v50) + 3) >= 4)
    {
      Aligned = CStackAllocatorAllocateAligned(v184, ((HIDWORD(v50) + 3) >> 2) << 6, 16, 2);
      sub_1AF1DA990(Aligned, v266, v51);
      v272 = (v270 + 1) >> 1;
      v271 = CStackAllocatorAllocateAligned(v184, v272, 16, 2);
    }

    v52 = *(v13 + 10);
    v53 = HIDWORD(v52);
    v274 = (HIDWORD(v52) + 3) >> 2;
    v221 = v52;
    if ((HIDWORD(v52) + 3) >= 4)
    {
      v273 = CStackAllocatorAllocateAligned(v184, ((HIDWORD(v52) + 3) >> 2) << 7, 16, 2);
      sub_1AF1DA5E0(v273, v295, v53);
      v276 = (v274 + 1) >> 1;
      v275 = CStackAllocatorAllocateAligned(v184, v276, 16, 2);
      HIDWORD(v52) = HIDWORD(v221);
    }

    v179 = v46;
    v180 = v44;
    v54 = 0;
    HIDWORD(v55) = HIDWORD(v223);
    LODWORD(v55) = 0;
    LODWORD(v52) = (v51 + 31) >> 5;
    v285 = v55;
    v286 = v52;
    v56 = *(v13 + 11);
    v220 = v56;
    LODWORD(v56) = ((v53 + 31) >> 5) + v52;
    v287 = v56;
    v292 = v56 + ((HIDWORD(v56) + 31) >> 5);
    v57 = 4 * v292;
    do
    {
      v229 = v227;
      v288[v54] = CStackAllocatorAllocateZero(v184, (*(&v229 & 0xFFFFFFFFFFFFFFF3 | (4 * (v54 & 3))) * v57));
      v290 = CStackAllocatorAllocate(v184, v57);
      v291 = CStackAllocatorAllocate(v184, v57);
      sub_1AF1F6920(&v258, v54++);
    }

    while (v54 != 3);
    v182 = v13;
    sub_1AF1F7BAC(&v237, v284);
    if (v186)
    {
      v191 = 0;
      v58.i64[1] = v224.i64[1];
      *v58.f32 = vceqz_s32(*v224.f32);
      v218 = *(v13 + 13);
      v219 = *(v13 + 12);
      v185 = v58.i8[4];
      v189 = v58.i8[0];
      v193 = v39;
      v192 = CPUPointer;
      do
      {
        if (v292)
        {
          if (*(v289 + 4 * v292 * v191))
          {
            goto LABEL_29;
          }

          v59 = 1;
          do
          {
            v60 = v59;
            if (v292 == v59)
            {
              break;
            }
          }

          while (!*(v289 + 4 * v292 * v191 + 4 * v59++));
          if (v60 < v292)
          {
LABEL_29:
            v58 = sub_1AF1F60F4(&v258, 0, 0, v191, &v250, v58);
            if ((v185 & 1) == 0)
            {
              v207 = 0;
              v203 = v250;
              v204 = v251;
              v201 = v255;
              v202 = vsubq_f32(v251, v250);
              v198 = v252;
              v199 = vsubq_f32(v255, v254);
              v195 = v257;
              v200 = v254;
              v196 = v256;
              v197 = v253;
              v58 = vsubq_f32(v256, v254);
              v187 = v58;
              v188 = vsubq_f32(v252, v250);
              do
              {
                v65 = v292;
                if (v292)
                {
                  v66 = 0;
                  v67 = v291;
                  v68 = (v289 + 4 * v191 * v292);
                  v69 = (v288[1] + 4 * v292 * v207);
                  do
                  {
                    v71 = *v69++;
                    v70 = v71;
                    v72 = *v68++;
                    v73 = v72 & v70;
                    *v67++ = v73;
                    v66 |= v73;
                    --v65;
                  }

                  while (v65);
                  if (v66 && (v189 & 1) == 0)
                  {
                    v74 = 0;
                    v58 = vmulq_n_f32(v187, v207);
                    v205 = v58;
                    v206 = vmulq_n_f32(v188, v207);
                    v75 = (v207 + v191 * v190) * v39;
                    do
                    {
                      v76 = v292;
                      if (v292)
                      {
                        v77 = 0;
                        v78 = v290;
                        v79 = v291;
                        v80 = (v288[0] + 4 * v292 * v74);
                        v81 = v290;
                        do
                        {
                          v83 = *v79++;
                          v82 = v83;
                          v84 = *v80++;
                          v85 = v84 & v82;
                          *v81++ = v85;
                          v77 |= v85;
                          --v76;
                        }

                        while (v76);
                        if (v77)
                        {
                          v208 = v75;
                          v209 = v74;
                          v86 = vmlaq_n_f32(v206, v202, v74);
                          v87 = vmlaq_n_f32(v205, v199, v74);
                          v88 = vaddq_f32(v203, v86);
                          *v243 = v88;
                          *&v243[16] = vaddq_f32(v204, v86);
                          v244 = vaddq_f32(v198, v86);
                          v245 = vaddq_f32(v86, v197);
                          v246 = vaddq_f32(v200, v87);
                          v247 = vaddq_f32(v201, v87);
                          v248 = vaddq_f32(v196, v87);
                          v249 = vaddq_f32(v87, v195);
                          v88.i32[3] = 0;
                          v89 = 16;
                          v90 = v88;
                          do
                          {
                            v91 = *&v243[v89];
                            v91.i32[3] = 0;
                            v88 = vminnmq_f32(v88, v91);
                            v90 = vmaxnmq_f32(v90, v91);
                            v89 += 16;
                          }

                          while (v89 != 128);
                          v92.i64[0] = 0x3F0000003F000000;
                          v92.i64[1] = 0x3F0000003F000000;
                          v96 = vmulq_f32(vaddq_f32(v90, v88), v92);
                          v93 = vmulq_f32(vsubq_f32(v90, v88), v92);
                          v94 = vmulq_f32(v93, v93);
                          v95 = sqrtf(v94.f32[2] + vaddv_f32(*v94.f32));
                          *&v96.i32[3] = v95;
                          v225 = v95;
                          v228 = v96;
                          v281 = 0;
                          v97 = HIDWORD(v287);
                          if ((HIDWORD(v287) + 31) >= 0x20)
                          {
                            v211 = &v78[v287];
                            v212 = 0;
                            v210 = (HIDWORD(v287) + 31) >> 5;
                            v102 = v95 * v95;
                            v215 = vdupq_laneq_s32(v96, 3);
                            while (1)
                            {
                              v103 = v211[v212];
                              if (v103)
                              {
                                break;
                              }

LABEL_56:
                              if (++v212 == v210)
                              {
                                goto LABEL_44;
                              }
                            }

                            v104 = 32 * v212;
                            while (1)
                            {
                              v105 = __clz(__rbit32(v103));
                              v106 = v105 | v104;
                              if ((v105 | v104) >= v97)
                              {
                                v107 = sub_1AF0D5194(v62, v63);
                                v62 = os_log_type_enabled(v107, OS_LOG_TYPE_FAULT);
                                if (v62)
                                {
                                  sub_1AFDE5A54(v297, &v298, v107);
                                }
                              }

                              v108 = &v294[5 * v106];
                              v109 = vsubq_f32(v228, *v108);
                              v110 = vmulq_f32(v108[1], v109);
                              v111 = vmulq_f32(v109, v108[2]);
                              v112 = vmulq_f32(v109, v108[3]);
                              v113 = vzip2q_s32(v110, v112);
                              v114 = vzip1q_s32(vzip1q_s32(v110, v112), v111);
                              v115 = vtrn2q_s32(v110, v111);
                              v115.i32[2] = v112.i32[1];
                              v116 = vsubq_f32(vabsq_f32(vaddq_f32(vzip1q_s32(v113, vdupq_laneq_s32(v111, 2)), vaddq_f32(v114, v115))), v108[4]);
                              v116.i32[3] = 0;
                              v117 = vmaxnmq_f32(v116, 0);
                              v118 = vmulq_f32(v117, v117);
                              if ((v118.f32[2] + vaddv_f32(*v118.f32)) <= v102)
                              {
                                v119 = v281++;
                                v277[v119] = v106 + v220;
                                v62 = CFXBufferSliceGetCPUPointer(v219, v218, v64);
                                if (*(v62 + 368 * (v106 + v220)) >= 1.0)
                                {
                                  v121 = v294[5 * v106 + 4];
                                  *v120.i32 = fmaxf(fmaxf(v121.f32[0], COERCE_FLOAT(*(&v294[5 * v106 + 4] + 1))), COERCE_FLOAT(HIDWORD(*&v294[5 * v106 + 4]))) * 0.090909;
                                  v122 = vsubq_f32(v121, vdupq_lane_s32(v120, 0));
                                  v123 = vsubq_f32(v228, *v108);
                                  v124 = vmulq_f32(v108[1], v123);
                                  v125 = vmulq_f32(v123, v108[2]);
                                  v126 = vmulq_f32(v123, v108[3]);
                                  v127 = vzip2q_s32(v124, v126);
                                  v128 = vzip1q_s32(vzip1q_s32(v124, v126), v125);
                                  v129 = vtrn2q_s32(v124, v125);
                                  v129.i32[2] = v126.i32[1];
                                  v130 = vcgeq_f32(vsubq_f32(v122, vabsq_f32(vaddq_f32(vzip1q_s32(v127, vdupq_laneq_s32(v125, 2)), vaddq_f32(v128, v129)))), v215);
                                  v130.i32[3] = v130.i32[2];
                                  if ((vminvq_u32(v130) & 0x80000000) != 0)
                                  {
                                    break;
                                  }
                                }
                              }

                              v103 &= ~(1 << v105);
                              if (!v103)
                              {
                                goto LABEL_56;
                              }
                            }
                          }

LABEL_44:
                          v98 = &v277[v281];
                          v279 = 0;
                          v99 = v290;
                          v100 = HIDWORD(v285);
                          if ((HIDWORD(v285) + 31) >= 0x20)
                          {
                            v131 = 0;
                            v213 = (HIDWORD(v285) + 31) >> 5;
                            v216 = &v290[v285];
                            do
                            {
                              v132 = *&v216[4 * v131];
                              if (v132)
                              {
                                v133 = 32 * v131;
                                do
                                {
                                  v134 = __clz(__rbit32(v132));
                                  v135 = v134 | v133;
                                  if ((v134 | v133) >= v100)
                                  {
                                    v136 = sub_1AF0D5194(v62, v63);
                                    v62 = os_log_type_enabled(v136, OS_LOG_TYPE_FAULT);
                                    if (v62)
                                    {
                                      sub_1AFDE5A54(v299, &v300, v136);
                                    }
                                  }

                                  v137 = v225 + COERCE_FLOAT(HIDWORD(v296[v135]));
                                  v138 = vsubq_f32(v296[v135], v228);
                                  v139 = vmulq_f32(v138, v138);
                                  if ((v139.f32[2] + vaddv_f32(*v139.f32)) <= (v137 * v137))
                                  {
                                    v140 = v279++;
                                    v98[v140] = v223 + v135;
                                  }

                                  v132 &= ~(1 << v134);
                                }

                                while (v132);
                              }

                              ++v131;
                            }

                            while (v131 != v213);
                            v101 = v279;
                            v99 = v290;
                          }

                          else
                          {
                            v101 = 0;
                          }

                          v280 = 0;
                          v141 = HIDWORD(v286);
                          if ((HIDWORD(v286) + 31) >= 0x20)
                          {
                            v143 = 0;
                            v144 = &v98[v101];
                            v214 = (HIDWORD(v286) + 31) >> 5;
                            v217 = &v99[v286];
                            do
                            {
                              v145 = v217[v143];
                              if (v145)
                              {
                                v146 = 32 * v143;
                                do
                                {
                                  v147 = __clz(__rbit32(v145));
                                  v148 = v147 | v146;
                                  if ((v147 | v146) >= v141)
                                  {
                                    v149 = sub_1AF0D5194(v62, v63);
                                    v62 = os_log_type_enabled(v149, OS_LOG_TYPE_FAULT);
                                    if (v62)
                                    {
                                      sub_1AFDE5A54(v301, v302, v149);
                                    }
                                  }

                                  v150 = &v295[3 * v148];
                                  v151 = v150[2].f32[0];
                                  v152 = vsubq_f32(v228, *v150);
                                  v153 = vmulq_f32(v152, v152);
                                  v154 = v153.f32[2] + vaddv_f32(*v153.f32);
                                  if (v154 <= ((v225 + v151) * (v225 + v151)))
                                  {
                                    v155 = v150[2].f32[2];
                                    v156 = vmulq_f32(v152, v150[1]);
                                    v157 = v156.f32[2] + vaddv_f32(*v156.f32);
                                    v158 = sqrtf(v154 - (v157 * v157));
                                    v159 = v150[2].f32[3] * v155;
                                    v160 = (v159 * v157) - (v155 * v158);
                                    if (v160 >= 0.0 || (v161 = ((v155 * v157) + (v159 * v158)) - fminf(fmaxf((v155 * v157) + (v159 * v158), 0.0), v151), ((v160 * v160) + (v161 * v161)) <= (v225 * v225)))
                                    {
                                      v162 = v280++;
                                      v144[v162] = v148 + v221;
                                    }
                                  }

                                  v145 &= ~(1 << v147);
                                }

                                while (v145);
                              }

                              ++v143;
                            }

                            while (v143 != v214);
                            v142 = v280;
                            v101 = v279;
                          }

                          else
                          {
                            v142 = 0;
                          }

                          v39 = v193;
                          CPUPointer = v192;
                          v74 = v209;
                          v75 = v208;
                          if (v281 + v142 + v101)
                          {
                            v62 = sub_1AF1F65B8(*v293, v282, v277, v281 + v142 + v101);
                            v58.i32[3] = 0;
                            v58.i16[0] = v62;
                            v58.i16[1] = v279 | (v280 << 8);
                            *(v58.i64 + 4) = v281;
                          }

                          else
                          {
                            v58 = 0uLL;
                          }

                          if (v194)
                          {
                            *&v192[8 * v208] = v58.i64[0];
                          }

                          else
                          {
                            v58 = vmovl_u16(*v58.f32);
                            v163 = &v192[4 * v208];
                            *(v163 + 1) = v58.i16[2];
                            *v163 = v58.i16[0];
                          }
                        }
                      }

                      ++v74;
                      ++v75;
                    }

                    while (v74 != v39);
                  }
                }

                ++v207;
              }

              while (v207 != v190);
            }
          }
        }

        ++v191;
      }

      while (v191 != v186);
    }

    sub_1AF1F678C(&v258, CPUPointer, v181);
    v164 = v283;
    if (v283 <= 1)
    {
      v165 = 1;
    }

    else
    {
      v165 = v283;
    }

    v166 = (v165 - 1) | ((v165 - 1) >> 1) | (((v165 - 1) | ((v165 - 1) >> 1)) >> 2);
    v167 = v166 | (v166 >> 4) | ((v166 | (v166 >> 4)) >> 8);
    memset(v243, 0, 24);
    CFXTextureDescriptorMake1D(((v167 >> 16) | v167) + 1, 0xDu, v243);
    *&v243[12] = *&v243[12] & 0xFFFF8F00FFFFFFFFLL | 0x100000000;
    v169 = sub_1AF12E2AC(v14, v168);
    v172 = objc_msgSend_frameTexturePool(v169, v170, v171);
    v250 = *v243;
    v251.i64[0] = *&v243[16];
    v173 = CFXTextureAllocatorPerFrameAllocate(v172, &v250);
    *(v182 + 3) = v173;
    if (v164)
    {
      v250 = 0uLL;
      v251.i64[0] = 0;
      v251.i64[1] = v164;
      v252 = vdupq_n_s64(1uLL);
      objc_msgSend_replaceRegion_mipmapLevel_withBytes_bytesPerRow_(v173, v174, &v250, 0, v282[2], v283);
    }

    if (v194)
    {
      v175 = 113;
    }

    else
    {
      v175 = 63;
    }

    v250 = 0uLL;
    v251.i64[0] = 0;
    CFXTextureDescriptorMake3D(v39, v190, v186, v175, &v250);
    v251.i8[0] = 1;
    v177 = sub_1AF12E2AC(v14, v176);
    *v243 = v250;
    *&v243[16] = v251.i64[0];
    *(v182 + 2) = objc_msgSend_allocateWithStagingBuffer_desc_forceCPUBlit_(v177, v178, v180, v179, v243, 1);
    CStackAllocatorPopFrame(v184);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}