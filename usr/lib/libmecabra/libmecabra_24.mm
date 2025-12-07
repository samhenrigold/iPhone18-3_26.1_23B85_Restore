unsigned __int16 *sub_29930D970(unsigned __int16 *result, uint64_t *a2, uint64_t *a3, uint64_t a4, int a5, float a6)
{
  v6 = *(result + 60);
  if (v6 == 1)
  {
    if (a5 <= 713)
    {
      if (a5 == 711)
      {
        v7 = 51;
        goto LABEL_5;
      }

      if (a5 == 713)
      {
        v7 = 49;
        goto LABEL_5;
      }
    }

    else
    {
      switch(a5)
      {
        case 729:
          v7 = 53;
          goto LABEL_5;
        case 715:
          v7 = 52;
          goto LABEL_5;
        case 714:
          v7 = 50;
          goto LABEL_5;
      }
    }

    v7 = a5 + 49;
    goto LABEL_5;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = a5;
  }

LABEL_5:
  v8 = *(*a3 + 72);
  if (v8)
  {
    result = sub_2993B2448(*(result + 24), v8, v7);
    if (result)
    {
      if (v6 || v7 != 118 || (v9 = &(&off_29EF13DA0)[2 * result[1]], (v10 = v9[1]) != 0) && v10[*v9 - 1] == 118)
      {
        operator new();
      }
    }
  }

  return result;
}

void sub_29930DB60(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_29930DB9C(uint64_t a1, uint64_t *a2, uint64_t a3, float a4, int a5)
{
  v5 = *(a1 + 240);
  if (v5 == 1)
  {
    if (a5 <= 713)
    {
      if (a5 == 711)
      {
        v6 = 51;
        goto LABEL_5;
      }

      if (a5 == 713)
      {
        v6 = 49;
        goto LABEL_5;
      }
    }

    else
    {
      switch(a5)
      {
        case 729:
          v6 = 53;
          goto LABEL_5;
        case 715:
          v6 = 52;
          goto LABEL_5;
        case 714:
          v6 = 50;
          goto LABEL_5;
      }
    }

    v6 = a5 + 49;
  }

  else if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = a5;
  }

LABEL_5:
  result = *(a1 + 192);
  v8 = **result;
  if (v8)
  {
    result = sub_2993B2448(result, v8, v6);
    if (result)
    {
      operator new();
    }
  }

  return result;
}

void sub_29930DD38(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_29930DE50(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_29930DF6C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

double sub_29930DFA8(uint64_t a1, uint64_t a2, double *a3)
{
  v5 = *(a2 + 72);
  if (v5)
  {
    v5 = *(v5 + 2);
  }

  v6 = *(a1 + 240);
  if (v6 == 2)
  {
    v9 = 0;
    v10 = &off_29EF15F80;
LABEL_8:
    v7 = &v10[2 * v5];
    v8 = v7[1];
    goto LABEL_9;
  }

  if (v6 != 1)
  {
    v9 = 0;
    v10 = &off_29EF13DA0;
    goto LABEL_8;
  }

  v7 = (&off_29EF19DC0 + 2 * v5);
  v8 = 2 * v7[1];
  v9 = 1;
LABEL_9:
  v11 = *v7;
  v29[0] = *v7;
  v29[1] = v8;
  v30 = v9;
  v12 = sub_29921C940(v29, *(a1 + 152));
  if (!a3 || ((*(**a3 + 24))() & 1) != 0)
  {
    return v12;
  }

  v13 = *(*a3 + 72);
  if (v13)
  {
    v14 = *(v13 + 2);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 240);
  if (v15 == 2)
  {
    v18 = 0;
    v19 = &off_29EF15F80;
LABEL_19:
    v16 = &v19[2 * v14];
    v17 = v16[1];
    goto LABEL_20;
  }

  if (v15 != 1)
  {
    v18 = 0;
    v19 = &off_29EF13DA0;
    goto LABEL_19;
  }

  v16 = (&off_29EF19DC0 + 2 * v14);
  v17 = 2 * v16[1];
  v18 = 1;
LABEL_20:
  v20 = v8 >> v9;
  if (v8 >> v9)
  {
    if (v9)
    {
      LOWORD(v20) = *v11;
    }

    else
    {
      LOWORD(v20) = *v11;
    }
  }

  v21 = v17 >> v18;
  if (v21)
  {
    v22 = *v16;
    v23 = (v21 - 1) << v18;
    if (v18)
    {
      v24 = *&v22[v23];
    }

    else
    {
      v24 = v22[v23];
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = v12 + a3[2];
  v26 = *(a1 + 152);
  if (v26 && *v26 == 1)
  {
    v27 = sub_29927BDA0(v26, v20, v24);
  }

  else
  {
    v27 = flt_299400E50[26 * v20 - 2619 + v24];
  }

  return v25 + v27;
}

double sub_29930E1A4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = *(a3 + 32);
  sub_29931D718(a2, *(a1 + 200), a3, (a1 + 216));
  return v5 + v6 + a4;
}

uint64_t sub_29930E1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a2 + 72);
    if (v3)
    {
      v3 = *(v3 + 2);
    }

    return v3 + 542 * *(a3 + 64);
  }

  else
  {
    v5 = *(a2 + 72);
    if (v5)
    {
      return *(v5 + 2);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_29930E220(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2 > 1)
  {
    return 1;
  }

  if (v2)
  {
    return (*(***(*a2 + 32) + 32))();
  }

  return 0;
}

uint64_t sub_29930E270(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v11[4] = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v11[0] = &unk_2A1F6FFD8;
  v11[1] = a3;
  v11[3] = v11;
  v5 = 24;
  if (a4)
  {
    v5 = 0;
  }

  v6 = (v4 + v5);
  v7 = *v6;
  v8 = v6[1];
  while (1)
  {
    if (v7 == v8)
    {
      v9 = 0;
      goto LABEL_9;
    }

    if (sub_2992C0144(v11, *v7))
    {
      break;
    }

    ++v7;
  }

  v9 = *v7;
LABEL_9:
  sub_2993103B4(v11);
  return v9;
}

void sub_29930E334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2993103B4(va);
  _Unwind_Resume(a1);
}

BOOL sub_29930E348(uint64_t a1, int a2)
{
  if (*(a1 + 240) != 1)
  {
    return 0;
  }

  v2 = 10;
  v3 = word_299413998;
  while (*v3 != a2)
  {
    ++v3;
    v2 -= 2;
    if (!v2)
    {
      v3 = &unk_2994139A2;
      break;
    }
  }

  v4 = v3 != &unk_2994139A2;
  if (v3 == &unk_2994139A2)
  {
    v3 = 0;
  }

  return v3 - word_299413998 != -2 && v4;
}

uint64_t sub_29930E3B0(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  sub_2992FF104(v13, a4);
  sub_29930B88C(a1, a3, v13);
  sub_2992E55A4(v13);
  *a1 = &unk_2A1F6FC20;
  v7 = CFLocaleCreate(0, a2);
  v8 = sub_29927733C(v7);
  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 200) = 0;
  *(a1 + 192) = v8;
  *(a1 + 208) = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57F0], a2);
  v10 = LXLexiconCreate();
  sub_299291748((a1 + 200), v10);
  RootCursor = LXLexiconCreateRootCursor();
  sub_299235628((a1 + 208), RootCursor);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return a1;
}

void sub_29930E51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29930E5A8(uint64_t result, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  if (a2)
  {
    if (!LXCursorHasEntries())
    {
      operator new();
    }

    return LXCursorEnumerateEntries();
  }

  return v6;
}

void sub_29930E6FC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20)
  {
    (*(*a20 + 8))(a20, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_29930E804(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_29930E854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, float a6)
{
  v11 = LXCursorCreateByAdvancingWithUTF16();
  sub_29930E5A8(a2, v11, *(*a3 + 8) + 1, a4, *(*a3 + 64) + *(*(a1 + 88) + 40 * a4 + 32), *(*a3 + 24) + a6);
  if (v11)
  {
    CFRelease(v11);
  }
}

void sub_29930E92C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, float a5)
{
  v9 = LXCursorCreateByAdvancingWithUTF16();
  sub_29930E5A8(a2, v9, 1, a3, *(*(a1 + 88) + 40 * a3 + 32), a5);
  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_29930EA9C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_29930EBAC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_29930EBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6, float a7)
{
  sub_29930E854(a1, a2, a3, a4, a5, a7);
  if ((a6 & 1) == 0 && *(a1 + 192) == 6)
  {
    v14 = sub_29929E60C(a5);
    if (v14)
    {

      sub_29930E854(a1, a2, a3, a4, v14, a7);
    }
  }
}

void sub_29930ECAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, float a6)
{
  sub_29930E92C(a1, a2, a3, a4, a6);
  if ((a5 & 1) == 0 && *(a1 + 192) == 6)
  {
    v12 = sub_29929E60C(a4);
    if (v12)
    {

      sub_29930E92C(a1, a2, a3, v12, a6);
    }
  }
}

double sub_29930ED54(uint64_t a1, uint64_t a2, double *a3)
{
  v5 = *(a2 + 112);
  if (!v5)
  {
    LODWORD(v15) = 0;
    v8 = 0.0;
    goto LABEL_14;
  }

  v7 = *(a1 + 152);
  v8 = 0.0;
  if (CFStringGetLength(*(a2 + 112)))
  {
    Length = CFStringGetLength(v5);
    v10 = Length - 2;
    if (Length >= 2)
    {
      v11 = 0;
      do
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(v5, v11++);
        v13 = CFStringGetCharacterAtIndex(v5, v11);
        v14 = 0.0;
        if (v7 && *v7 == 1)
        {
          v14 = sub_29927BDA0(v7, CharacterAtIndex, v13);
        }

        v8 = v8 + v14;
      }

      while (v11 - 1 != v10);
    }
  }

  v15 = *(a2 + 112);
  if (!v15)
  {
LABEL_14:
    if (!a3)
    {
      return v8;
    }

    goto LABEL_15;
  }

  if (CFStringGetLength(v15))
  {
    LODWORD(v15) = CFStringGetCharacterAtIndex(v15, 0);
    if (!a3)
    {
      return v8;
    }
  }

  else
  {
    LODWORD(v15) = 0;
    if (!a3)
    {
      return v8;
    }
  }

LABEL_15:
  if (((*(**a3 + 24))() & 1) == 0)
  {
    v16 = a3[2];
    v17 = *(*a3 + 112);
    if (v17 && CFStringGetLength(v17))
    {
      v18 = CFStringGetLength(v17);
      v19 = CFStringGetCharacterAtIndex(v17, v18 - 1);
    }

    else
    {
      v19 = 0;
    }

    v20 = v8 + v16;
    v21 = *(a1 + 152);
    v22 = 0.0;
    if (v21 && *v21 == 1)
    {
      v22 = sub_29927BDA0(v21, v15, v19);
    }

    return v20 + v22;
  }

  return v8;
}

uint64_t sub_29930EF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a3 + 64);
  }

  else
  {
    v3 = 0;
  }

  return *(a2 + 88) + v3;
}

uint64_t sub_29930EF28(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2 > 1)
  {
    return 1;
  }

  if (v2 == 1)
  {
    return (*(***(*a2 + 32) + 32))();
  }

  return 0;
}

uint64_t sub_29930EF78(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v11[4] = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v11[0] = &unk_2A1F70068;
  v11[1] = a3;
  v11[3] = v11;
  v5 = 24;
  if (a4)
  {
    v5 = 0;
  }

  v6 = (v4 + v5);
  v7 = *v6;
  v8 = v6[1];
  while (1)
  {
    if (v7 == v8)
    {
      v9 = 0;
      goto LABEL_9;
    }

    if (sub_2992C0144(v11, *v7))
    {
      break;
    }

    ++v7;
  }

  v9 = *v7;
LABEL_9:
  sub_2993103B4(v11);
  return v9;
}

void sub_29930F03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2993103B4(va);
  _Unwind_Resume(a1);
}

void sub_29930F07C(void *a1)
{
  sub_29930F1CC(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_29930F0B8(uint64_t a1)
{
  sub_29930F22C(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_29930F0F0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        sub_29930C588(--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29930F178(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_29930C588((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29930F1CC(void *a1)
{
  *a1 = &unk_2A1F6FBA8;
  v2 = a1[27];
  if (v2)
  {
    a1[28] = v2;
    operator delete(v2);
  }

  return sub_29930D770(a1);
}

void *sub_29930F22C(uint64_t a1)
{
  *a1 = &unk_2A1F6FC20;
  v2 = (a1 + 200);
  sub_299235628((a1 + 208), 0);
  sub_299291748(v2, 0);

  return sub_29930D770(a1);
}

void *sub_29930F298(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[5] = a2;
  sub_29930B9C8(a1);
  return a1;
}

void sub_29930F2CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29930F2E8(uint64_t a1)
{
  v2 = *a1;
  if (*a1 < *(a1 + 8))
  {
    do
    {
      v3 = *v2++;
      free(v3);
    }

    while (v2 < *(a1 + 8));
    v2 = *a1;
  }

  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29930F340(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29930F394(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_29930F394(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_29930F470(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F6FCD8;
  a2[1] = v2;
  return result;
}

uint64_t sub_29930F4C8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6FD38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29930F5B0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6FD58;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 81) = 0;
  *(a2 + 84) = 0;
  return result;
}

void *sub_29930F608(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v16 = *(*a2 + 16);
  result = sub_299230B70(*(a1 + 64), &v16);
  if (result)
  {
    if (*(result + 24) != 1)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v16 == *(a1 + 48))
  {
    v6 = 1;
  }

  else
  {
    v7 = v4[11];
    v8 = (v7 + 40 * v16);
    v9 = (v7 + 40 * *(a1 + 40));
    v10 = hypot(*v9 - *v8, v9[1] - v8[1]);
    v11 = v9[3] - v8[3];
    v6 = v11 - v10 <= 140.0 && (v11 - v10 <= 70.0 || v11 <= v10 * 2.2);
  }

  v12 = *(a1 + 64);
  v17 = &v16;
  result = sub_29930F7D0(v12, &v16, &unk_299400092, &v17);
  *(result + 24) = v6;
  if (v6)
  {
LABEL_12:
    v13 = *(a1 + 72);
    v14 = *v13;
    v15 = v13[1];
    while (v14 != v15)
    {
      result = (*(*v4 + 40))(v4, *(a1 + 24), a2, *(a1 + 40), *v14, *(a1 + 80), v14[1]);
      v14 += 2;
    }
  }

  return result;
}

uint64_t sub_29930F784(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6FDB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29930F7D0(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
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

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

__n128 sub_29930FA98(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6FDD8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 65) = 0;
  *(a2 + 68) = 0;
  return result;
}

void sub_29930FAE8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 56);
  v4 = *(*a2 + 16);
  v5 = v3[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *(*a2 + 16);
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*v3 + 8 * v7);
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

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  if ((v9[3] & 1) != 0 || (*(a1 + 64) & 1) == 0)
  {
    v11 = *(a1 + 32);
    v2 = *(a1 + 8);

    sub_29930D3DC(v2, a2, v11);
  }
}

uint64_t sub_29930FD5C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6FE38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29930FE1C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6FE58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29930FE58(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6FEB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29930FF20(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6FED8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_29930FF58(uint64_t a1, uint64_t *a2)
{
  if ((*(*a2 + 56) & 1) == 0)
  {
    v3 = *(a1 + 16) - *(*a2 + 8);
    if (v3 >= 0)
    {
      v4 = *(a1 + 8);
      v5 = *(v4[1] + 8 * v3);
      v6 = *(v5 + 48);
      v7 = (v5 + 56);
      if (v6 != (v5 + 56))
      {
        do
        {
          sub_29930CE88(v4, *(a1 + 16), *a2, v6[4], 0);
          v9 = v6[1];
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
            do
            {
              v10 = v6[2];
              v11 = *v10 == v6;
              v6 = v10;
            }

            while (!v11);
          }

          v6 = v10;
        }

        while (v10 != v7);
      }
    }
  }
}

uint64_t sub_299310014(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6FF38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2993100DC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6FF58;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_299310114(uint64_t a1, uint64_t *a2, const __CFString **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a1 + 8);
  v7 = sub_29930AF10();
  sub_299277A90(v5, &v11);
  v8 = v11;
  v9 = -8;
  if (*(a1 + 16))
  {
    v9 = -16;
  }

  result = sub_29930B514(v7, 0x4000u, "%s(%.2f, %.2f, %.2f, %.2f, %.2f, %ld/%ld, %.2f, %.2f)\n", v11, *(v4 + 56), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56) - *(v4 + 32) - *(v4 + 40) - *(v4 + 48), *(v4 + 72), *(*(v6 + 112) + 8 * *(a1 + 24) + v9), *(v4 + 16), *(v4 + 24));
  if (v8)
  {

    JUMPOUT(0x29C29BF70);
  }

  return result;
}

void sub_29931021C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299310244(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6FFB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299310300(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F6FFD8;
  a2[1] = v2;
  return result;
}

uint64_t sub_299310368(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F70048))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993103B4(uint64_t a1)
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

uint64_t sub_2993104A4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F70068;
  a2[1] = v2;
  return result;
}

uint64_t sub_29931050C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F700C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299310558(uint64_t a1, uint64_t *a2, const UniChar *a3, CFIndex a4, const UniChar *a5, CFIndex a6, char a7, int a8, float a9, int a10, int a11, int a12, char a13)
{
  v17 = a3;
  v73 = a3;
  v74 = a4;
  v71 = a5;
  v72 = a6;
  v20 = sub_29933BEB8(a1, a2 + 1);
  v20[3] = &unk_2A1F706C8;
  v21 = *a2;
  *v20 = *a2;
  *(a1 + *(v21 - 32)) = a2[5];
  *(a1 + 24) = &unk_2A1F70328;
  v22 = (a1 + 32);
  if (a4)
  {
    sub_29923A9CC(&v73, (a1 + 32));
    v17 = v73;
    v23 = v74;
  }

  else
  {
    sub_299217DF0((a1 + 32), byte_29945C656);
    v23 = 0;
  }

  *(a1 + 56) = CFStringCreateWithCharacters(0, v17, v23);
  if (v72)
  {
    sub_29923A9CC(&v71, (a1 + 64));
  }

  else
  {
    sub_299217DF0((a1 + 64), byte_29945C656);
  }

  v24 = CFStringCreateWithCharacters(0, v71, v72);
  *(a1 + 120) = 0;
  *(a1 + 88) = v24;
  *(a1 + 96) = a9;
  *(a1 + 104) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a8;
  *(a1 + 140) = a10;
  *(a1 + 144) = a11;
  *(a1 + 148) = a12;
  *(a1 + 152) = 1;
  *(a1 + 153) = a7;
  *(a1 + 154) = 0;
  sub_29927EC68((a1 + 160), 1uLL);
  v25 = *(a1 + 160);
  *(v25 + 32) = 0;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  if (*(a1 + 140) != 4 || !v74 || a13)
  {
    if (!a13)
    {
      goto LABEL_33;
    }

    v31 = *(a1 + 55);
    if (v31 < 0)
    {
      v22 = *(a1 + 32);
    }

    v32 = v31 >= 0 ? *(a1 + 55) : *(a1 + 40);
    if ((sub_29939F248(v22, v32) & 1) != 0 || (sub_29939F2C8(v22, v32) & 1) != 0 || !v32)
    {
LABEL_33:
      v37 = 0;
    }

    else
    {
      v33 = 2 * v32 - 2;
      do
      {
        v34 = *v22++;
        v35 = (v34 + 10332);
        v36 = v35 >= 0xD45C;
        v37 = v35 < 0xD45C;
        v38 = !v36 || v33 == 0;
        v33 -= 2;
      }

      while (!v38);
    }

    v39 = *(a1 + 160);
    *(v39 + 38) = v37;
    v40 = *(a1 + 55);
    if (v40 < 0)
    {
      v40 = *(a1 + 40);
    }

    *(v39 + 24) = v40;
    v41 = *(a1 + 87);
    if (v41 < 0)
    {
      v41 = *(a1 + 72);
    }

    *(v39 + 26) = v41;
    v42 = *(a1 + 87);
    if (v42 < 0)
    {
      v42 = *(a1 + 72);
    }

    *(v39 + 28) = v42;
    goto LABEL_41;
  }

  v26 = v73;
  v27 = 2 * v74;
  v28 = v73;
  while (((*v28 + 21504) >> 2) >= 0xAE9u && (*v28 - 12593) >= 0x33u)
  {
    v28 += 2;
    v27 -= 2;
    if (!v27)
    {
      v28 = &v73[v74];
      break;
    }
  }

  v29 = *(a1 + 55);
  if (v29 < 0)
  {
    v30 = *(a1 + 32);
    v29 = *(a1 + 40);
  }

  else
  {
    v30 = (a1 + 32);
  }

  sub_29939FAF4(v30, v29, &__p);
  v45 = v28 - v26;
  v46 = v70;
  if (v70 < 0)
  {
    v46 = v69;
    operator delete(__p);
  }

  v39 = *(a1 + 160);
  *(v39 + 38) = 0;
  if (!(v45 >> 1))
  {
    v52 = *(a1 + 55);
    if (v52 < 0)
    {
      v52 = *(a1 + 40);
    }

    *(v39 + 24) = v52;
    v53 = *(a1 + 87);
    if (v53 < 0)
    {
      v53 = *(a1 + 72);
    }

    *(v39 + 26) = v53;
    *(v39 + 28) = v46;
LABEL_41:
    v43 = (v39 + 37);
LABEL_42:
    *v43 |= 1u;
    *v39 = 0;
    return a1;
  }

  v47 = v45 >> 1;
  *(v39 + 24) = v45 >> 1;
  *(v39 + 26) = v45 >> 1;
  *(v39 + 28) = v45 >> 1;
  *(v39 + 37) |= 1u;
  v48 = *(a1 + 32);
  if (*(a1 + 55) >= 0)
  {
    v48 = (a1 + 32);
  }

  if (v48)
  {
    v49 = (v45 >> 1);
  }

  else
  {
    v49 = 0;
  }

  if (v49)
  {
    v50 = 2 * v49;
    while (*v48 - 48 < 0xA)
    {
      ++v48;
      v50 -= 2;
      if (!v50)
      {
        goto LABEL_57;
      }
    }

    v51 = 1;
  }

  else
  {
LABEL_57:
    v51 = 5;
  }

  *v39 = v51;
  if ((v45 >> 1) != v74)
  {
    v55 = *(a1 + 168);
    v54 = *(a1 + 176);
    if (v55 >= v54)
    {
      v57 = 0xCCCCCCCCCCCCCCCDLL * ((v55 - v39) >> 3);
      if (v57 + 1 > 0x666666666666666)
      {
        sub_29921E9A8();
      }

      v58 = 0xCCCCCCCCCCCCCCCDLL * ((v54 - v39) >> 3);
      v59 = 2 * v58;
      if (2 * v58 <= v57 + 1)
      {
        v59 = v57 + 1;
      }

      if (v58 >= 0x333333333333333)
      {
        v60 = 0x666666666666666;
      }

      else
      {
        v60 = v59;
      }

      if (v60)
      {
        sub_29921E9C0(a1 + 160, v60);
      }

      v61 = 40 * v57;
      *(v61 + 32) = 0;
      *v61 = 0u;
      *(v61 + 16) = 0u;
      v56 = 40 * v57 + 40;
      v62 = *(a1 + 160);
      v63 = *(a1 + 168) - v62;
      v64 = (40 * v57 - v63);
      memcpy(v64, v62, v63);
      v65 = *(a1 + 160);
      *(a1 + 160) = v64;
      *(a1 + 168) = v56;
      *(a1 + 176) = 0;
      if (v65)
      {
        operator delete(v65);
      }
    }

    else
    {
      *(v55 + 32) = 0;
      *v55 = 0u;
      *(v55 + 16) = 0u;
      v56 = v55 + 40;
    }

    *(a1 + 168) = v56;
    *(v56 - 8) = 0;
    *(v56 - 24) = 0u;
    *(v56 - 40) = 0u;
    v66 = *(a1 + 168);
    v39 = v66 - 40;
    *(v66 - 2) = 0;
    *(v66 - 16) = v74 - v47;
    v67 = *(a1 + 87);
    if (v67 < 0)
    {
      v67 = *(a1 + 72);
    }

    *(v66 - 14) = v67 - v47;
    *(v66 - 12) = v46 - (v45 >> 1);
    v43 = (v66 - 3);
    goto LABEL_42;
  }

  return a1;
}

void sub_299310A90(_Unwind_Exception *a1)
{
  v6 = *(v3 + 40);
  if (v6)
  {
    *(v1 + 168) = v6;
    operator delete(v6);
  }

  sub_299229F00(v4, 0);
  sub_2992292D8(v3, 0);
  sub_299219AB4((v1 + 88), 0);
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  sub_299219AB4((v1 + 56), 0);
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299310B20(uint64_t a1, const UniChar *a2, CFIndex a3, const UniChar *a4, CFIndex a5, char a6, int a7, int a8, float a9, int a10, int a11, char a12)
{
  v17 = a2;
  v71 = a2;
  v72 = a3;
  v69 = a4;
  v70 = a5;
  *a1 = &unk_2A1F66DC0;
  v19 = sub_29933BEB8(a1, &off_2A1F70338);
  *v19 = &unk_2A1F700F8;
  *(v19 + 24) = &unk_2A1F70328;
  v20 = (v19 + 32);
  if (a3)
  {
    sub_29923A9CC(&v71, v20);
    v17 = v71;
    v21 = v72;
  }

  else
  {
    sub_299217DF0((v19 + 32), byte_29945C656);
    v21 = 0;
  }

  *(a1 + 56) = CFStringCreateWithCharacters(0, v17, v21);
  if (v70)
  {
    sub_29923A9CC(&v69, (a1 + 64));
  }

  else
  {
    sub_299217DF0((a1 + 64), byte_29945C656);
  }

  v22 = CFStringCreateWithCharacters(0, v69, v70);
  *(a1 + 120) = 0;
  *(a1 + 88) = v22;
  *(a1 + 96) = a9;
  *(a1 + 104) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a7;
  *(a1 + 140) = a8;
  *(a1 + 144) = a10;
  *(a1 + 148) = a11;
  *(a1 + 152) = 1;
  *(a1 + 153) = a6;
  *(a1 + 154) = 0;
  sub_29927EC68((a1 + 160), 1uLL);
  v23 = *(a1 + 160);
  *(v23 + 32) = 0;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  if (*(a1 + 140) != 4 || !v72 || a12)
  {
    if (!a12)
    {
      goto LABEL_33;
    }

    v29 = *(a1 + 55);
    if (v29 < 0)
    {
      v20 = *(a1 + 32);
    }

    v30 = v29 >= 0 ? *(a1 + 55) : *(a1 + 40);
    if ((sub_29939F248(v20, v30) & 1) != 0 || (sub_29939F2C8(v20, v30) & 1) != 0 || !v30)
    {
LABEL_33:
      v35 = 0;
    }

    else
    {
      v31 = 2 * v30 - 2;
      do
      {
        v32 = *v20++;
        v33 = (v32 + 10332);
        v34 = v33 >= 0xD45C;
        v35 = v33 < 0xD45C;
        v36 = !v34 || v31 == 0;
        v31 -= 2;
      }

      while (!v36);
    }

    v37 = *(a1 + 160);
    *(v37 + 38) = v35;
    v38 = *(a1 + 55);
    if (v38 < 0)
    {
      v38 = *(a1 + 40);
    }

    *(v37 + 24) = v38;
    v39 = *(a1 + 87);
    if (v39 < 0)
    {
      v39 = *(a1 + 72);
    }

    *(v37 + 26) = v39;
    v40 = *(a1 + 87);
    if (v40 < 0)
    {
      v40 = *(a1 + 72);
    }

    *(v37 + 28) = v40;
    goto LABEL_41;
  }

  v24 = v71;
  v25 = 2 * v72;
  v26 = v71;
  while (((*v26 + 21504) >> 2) >= 0xAE9u && (*v26 - 12593) >= 0x33u)
  {
    v26 += 2;
    v25 -= 2;
    if (!v25)
    {
      v26 = &v71[v72];
      break;
    }
  }

  v27 = *(a1 + 55);
  if (v27 < 0)
  {
    v28 = *(a1 + 32);
    v27 = *(a1 + 40);
  }

  else
  {
    v28 = v20;
  }

  sub_29939FAF4(v28, v27, &__p);
  v43 = v26 - v24;
  v44 = v68;
  if (v68 < 0)
  {
    v44 = v67;
    operator delete(__p);
  }

  v37 = *(a1 + 160);
  *(v37 + 38) = 0;
  if (!(v43 >> 1))
  {
    v50 = *(a1 + 55);
    if (v50 < 0)
    {
      v50 = *(a1 + 40);
    }

    *(v37 + 24) = v50;
    v51 = *(a1 + 87);
    if (v51 < 0)
    {
      v51 = *(a1 + 72);
    }

    *(v37 + 26) = v51;
    *(v37 + 28) = v44;
LABEL_41:
    v41 = (v37 + 37);
LABEL_42:
    *v41 |= 1u;
    *v37 = 0;
    return a1;
  }

  v45 = v43 >> 1;
  *(v37 + 24) = v43 >> 1;
  *(v37 + 26) = v43 >> 1;
  *(v37 + 28) = v43 >> 1;
  *(v37 + 37) |= 1u;
  v46 = *(a1 + 32);
  if (*(a1 + 55) >= 0)
  {
    v46 = v20;
  }

  if (v46)
  {
    v47 = (v43 >> 1);
  }

  else
  {
    v47 = 0;
  }

  if (v47)
  {
    v48 = 2 * v47;
    while (*v46 - 48 < 0xA)
    {
      ++v46;
      v48 -= 2;
      if (!v48)
      {
        goto LABEL_57;
      }
    }

    v49 = 1;
  }

  else
  {
LABEL_57:
    v49 = 5;
  }

  *v37 = v49;
  if ((v43 >> 1) != v72)
  {
    v53 = *(a1 + 168);
    v52 = *(a1 + 176);
    if (v53 >= v52)
    {
      v55 = 0xCCCCCCCCCCCCCCCDLL * ((v53 - v37) >> 3);
      if (v55 + 1 > 0x666666666666666)
      {
        sub_29921E9A8();
      }

      v56 = 0xCCCCCCCCCCCCCCCDLL * ((v52 - v37) >> 3);
      v57 = 2 * v56;
      if (2 * v56 <= v55 + 1)
      {
        v57 = v55 + 1;
      }

      if (v56 >= 0x333333333333333)
      {
        v58 = 0x666666666666666;
      }

      else
      {
        v58 = v57;
      }

      if (v58)
      {
        sub_29921E9C0(a1 + 160, v58);
      }

      v59 = 40 * v55;
      *(v59 + 32) = 0;
      *v59 = 0u;
      *(v59 + 16) = 0u;
      v54 = 40 * v55 + 40;
      v60 = *(a1 + 160);
      v61 = *(a1 + 168) - v60;
      v62 = (40 * v55 - v61);
      memcpy(v62, v60, v61);
      v63 = *(a1 + 160);
      *(a1 + 160) = v62;
      *(a1 + 168) = v54;
      *(a1 + 176) = 0;
      if (v63)
      {
        operator delete(v63);
      }
    }

    else
    {
      *(v53 + 32) = 0;
      *v53 = 0u;
      *(v53 + 16) = 0u;
      v54 = v53 + 40;
    }

    *(a1 + 168) = v54;
    *(v54 - 8) = 0;
    *(v54 - 24) = 0u;
    *(v54 - 40) = 0u;
    v64 = *(a1 + 168);
    v37 = v64 - 40;
    *(v64 - 2) = 0;
    *(v64 - 16) = v72 - v45;
    v65 = *(a1 + 87);
    if (v65 < 0)
    {
      v65 = *(a1 + 72);
    }

    *(v64 - 14) = v65 - v45;
    *(v64 - 12) = v44 - (v43 >> 1);
    v41 = (v64 - 3);
    goto LABEL_42;
  }

  return a1;
}

void sub_299310FF0(_Unwind_Exception *a1)
{
  v6 = *(v3 + 40);
  if (v6)
  {
    *(v1 + 168) = v6;
    operator delete(v6);
  }

  sub_299229F00(v4, 0);
  sub_2992292D8(v3, 0);
  sub_299219AB4((v1 + 88), 0);
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  sub_299219AB4((v1 + 56), 0);
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299311080(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_29933BFC4(a1, a2 + 1, a3);
  v6[3] = &unk_2A1F706C8;
  v7 = *a2;
  *v6 = *a2;
  *(a1 + *(v7 - 32)) = a2[5];
  *(a1 + 24) = &unk_2A1F70328;
  if (*(a3 + 55) < 0)
  {
    sub_29922C89C((a1 + 32), *(a3 + 32), *(a3 + 40));
  }

  else
  {
    v8 = *(a3 + 32);
    *(a1 + 48) = *(a3 + 48);
    *(a1 + 32) = v8;
  }

  *(a1 + 56) = 0;
  if (*(a3 + 87) < 0)
  {
    sub_29922C89C((a1 + 64), *(a3 + 64), *(a3 + 72));
  }

  else
  {
    v9 = *(a3 + 64);
    *(a1 + 80) = *(a3 + 80);
    *(a1 + 64) = v9;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = *(a3 + 96);
  *(a1 + 104) = *(a3 + 104);
  *(a1 + 112) = *(a3 + 112);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = *(a3 + 136);
  v10 = *(a3 + 152);
  v11 = *(a3 + 154);
  *(a1 + 160) = 0;
  *(a1 + 152) = v10;
  *(a1 + 154) = v11;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  sub_29921E8E0((a1 + 160), *(a3 + 160), *(a3 + 168), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 168) - *(a3 + 160)) >> 3));
  v12 = *(a3 + 56);
  if (v12)
  {
    sub_299229BC0((a1 + 56), v12);
  }

  v13 = *(a3 + 88);
  if (v13)
  {
    sub_299229BC0((a1 + 88), v13);
  }

  return a1;
}

void sub_299311268(_Unwind_Exception *a1)
{
  sub_299219AB4(v2, 0);
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993112CC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F66DC0;
  v4 = sub_29933BFC4(a1, &off_2A1F70338, a2);
  *v4 = &unk_2A1F700F8;
  v4[3] = &unk_2A1F70328;
  if (*(a2 + 55) < 0)
  {
    sub_29922C89C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = 0;
  if (*(a2 + 87) < 0)
  {
    sub_29922C89C((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = *(a2 + 136);
  v7 = *(a2 + 152);
  v8 = *(a2 + 154);
  *(a1 + 160) = 0;
  *(a1 + 152) = v7;
  *(a1 + 154) = v8;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  sub_29921E8E0((a1 + 160), *(a2 + 160), *(a2 + 168), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 168) - *(a2 + 160)) >> 3));
  v9 = *(a2 + 56);
  if (v9)
  {
    sub_299229BC0((a1 + 56), v9);
  }

  v10 = *(a2 + 88);
  if (v10)
  {
    sub_299229BC0((a1 + 88), v10);
  }

  return a1;
}

void sub_299311450(_Unwind_Exception *a1)
{
  sub_299219AB4(v2, 0);
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(a1);
}

void sub_2993114B4(uint64_t a1, char *a2, CFIndex capacity)
{
  v3 = capacity;
  Mutable = CFArrayCreateMutable(0, capacity, MEMORY[0x29EDB9000]);
  if (v3 >= 1)
  {
    do
    {
      v7 = CFNumberCreate(0, kCFNumberCFIndexType, a2);
      CFArrayAppendValue(Mutable, v7);
      if (v7)
      {
        CFRelease(v7);
      }

      a2 += 8;
      --v3;
    }

    while (v3);
  }

  sub_299229F00((a1 + 128), Mutable);
}

void sub_29931156C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992292D8(va, 0);
  _Unwind_Resume(a1);
}

CFLocaleRef sub_299311584(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 160);
  v3 = *(a1 + 168) - v2;
  v4 = v3 && 0xCCCCCCCCCCCCCCCDLL * (v3 >> 3) > a2;
  if (!v4 || *(v2 + 38) == 1)
  {
    return 0;
  }

  v6 = *(v2 + 40 * a2);
  if (v6 == 1)
  {
    v8 = @"en_US";
  }

  else
  {
    if (v6 == 5 && v3 == 40)
    {
      return 0;
    }

    v7 = *(a1 + 140);
    if (v7 == 4)
    {
      v8 = @"ko_KR";
      return CFLocaleCreate(0, v8);
    }

    if (v7 != 6)
    {
      return 0;
    }

    v8 = @"th_TH";
  }

  return CFLocaleCreate(0, v8);
}

void sub_29931161C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 24))(a1);
  v5 = (*(*a1 + 304))(a1);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 != v7)
  {
    v8 = 0;
    v9 = *MEMORY[0x29EDB8ED8];
    do
    {
      v10 = *(v6 + 24);
      if ((*(v6 + 37) & 0x10) != 0)
      {
        v12.location = v8;
        v12.length = *(v6 + 24);
        v11 = CFStringCreateWithSubstring(v9, v4, v12);
        sub_299311740(a2, v11);
        if (v11)
        {
          CFRelease(v11);
        }
      }

      v8 += v10;
      v6 += 40;
    }

    while (v6 != v7);
  }
}

void sub_299311728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_299311740(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2991A2240();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_299311794(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a2;
  v49 = *MEMORY[0x29EDCA608];
  v8 = sub_2993652F8(a2);
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    return;
  }

  v9 = sub_2993652F8(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 8);
    v16 = (*(*a1 + 24))(a1);
    v25 = (*(*a1 + 56))(a1);
    v26 = v16;
    if ((*(*a1 + 96))(a1) < 32)
    {
      v17 = 63;
    }

    else
    {
      v17 = (*(*a1 + 96))(a1);
    }

    if ((*(*a1 + 408))(a1))
    {
      v18 = "prefix";
    }

    else
    {
      v18 = "exact";
    }

    v19 = (*(*a1 + 112))(a1);
    v20 = *(a1 + 96);
    v21 = (*(*a1 + 392))(a1);
    if (v21 >= -100.0)
    {
      v22 = *&v21;
    }

    else
    {
      v22 = 0xC059000000000000;
    }

    v23 = (*(*a1 + 200))(a1);
    v24 = *(a1 + 8);
    *buf = 136317698;
    v28 = a3;
    v29 = 2048;
    v30 = v15;
    v31 = 2112;
    v32 = v26;
    v33 = 2112;
    v34 = v25;
    v35 = 1024;
    v36 = v17;
    v37 = 2080;
    v38 = v18;
    v39 = 1024;
    v40 = v19;
    v41 = 2048;
    v42 = v20;
    v43 = 2048;
    v44 = v22;
    v45 = 1024;
    v46 = v23;
    v47 = 2048;
    v48 = v24;
    _os_log_debug_impl(&dword_29918C000, v9, OS_LOG_TYPE_DEBUG, "%s (%ld): [%@] (%@), type: %c, length: %s, cost: %d, geometry: %.3f, prob: %3.3lf, autocorrected: %d, rank: %ld", buf, 0x64u);
    if (!a4)
    {
      return;
    }
  }

  else if (!a4)
  {
    return;
  }

  if ((*(*a1 + 48))(a1))
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = (*(*a1 + 128))(a1, v11);
      v50.location = v10;
      v50.length = v12;
      v13 = CFStringCreateWithSubstring(0, *(a1 + 56), v50);
      v14 = sub_2993652F8(v6);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        break;
      }

      if (v13)
      {
        goto LABEL_8;
      }

LABEL_9:
      v10 += v12;
      if (++v11 >= (*(*a1 + 48))(a1))
      {
        return;
      }
    }

    *buf = 134218242;
    v28 = v11 + 1;
    v29 = 2112;
    v30 = v13;
    _os_log_debug_impl(&dword_29918C000, v14, OS_LOG_TYPE_DEBUG, "   #%lu: [%@]\n", buf, 0x16u);
    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_8:
    CFRelease(v13);
    goto LABEL_9;
  }
}

void sub_299311BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_299311C88(uint64_t a1)
{
  sub_299311FFC(a1, &off_2A1F70330);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299311D58(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 160);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 168) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 40 * a2 + 24);
  }
}

uint64_t sub_299311D9C(uint64_t a1)
{
  v1 = *(a1 + 55);
  if (v1 < 0)
  {
    v2 = *(a1 + 32);
    v1 = *(a1 + 40);
  }

  else
  {
    v2 = (a1 + 32);
  }

  v3 = (2 * v1);
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = *v2++;
      v4 = (1025 * (v4 + v5)) ^ ((1025 * (v4 + v5)) >> 6);
      --v3;
    }

    while (v3);
    v6 = 9 * v4;
  }

  else
  {
    v6 = 0;
  }

  return 32769 * (v6 ^ (v6 >> 11));
}

BOOL sub_299311DFC(uint64_t a1)
{
  if ((*(*a1 + 96))(a1) == 69)
  {
    return 1;
  }

  v3 = (*(*a1 + 24))(a1);

  return sub_299236410(v3);
}

uint64_t sub_299311EDC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 160);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 168) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 40 * a2 + 26);
  }
}

uint64_t sub_299311F18(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 160);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 168) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 40 * a2 + 28);
  }
}

uint64_t sub_299311F54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 256))();
  }
}

uint64_t sub_299311FFC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 32)) = a2[5];
  *(a1 + 24) = &unk_2A1F70328;
  v4 = *(a1 + 160);
  if (v4)
  {
    *(a1 + 168) = v4;
    operator delete(v4);
  }

  sub_299229F00((a1 + 128), 0);
  sub_2992292D8((a1 + 120), 0);
  sub_299219AB4((a1 + 88), 0);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  sub_299219AB4((a1 + 56), 0);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_299312128(void *a1)
{
  sub_2993DA580(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_299312160(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 104))(a1))
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2000000000;
    v17 = 0;
    v6 = (*(*a1 + 104))(a1, a2);
    v12 = 42;
    v14 = 0;
    v15 = 0;
    v13 = 0;
    sub_2992220D8(&v13, &v12, &v13, 1);
    v7 = a1[1];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1174405120;
    v8[2] = sub_299312324;
    v8[3] = &unk_2A1F70770;
    v8[6] = a1;
    __p = 0;
    v10 = 0;
    v11 = 0;
    sub_299215EC0(&__p, v13, v14, (v14 - v13) >> 1);
    v8[4] = a3;
    v8[5] = v16;
    sub_2992CEA88(v7, v6, v8);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }

    _Block_object_dispose(v16, 8);
  }
}

void sub_2993122D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Block_object_dispose((v21 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_299312324(void *a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v6 = a1[6];
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  memset(__p, 0, sizeof(__p));
  v17 = 0;
  if (sub_29927B7DC(v6[42], a2, v20, v19, __p, &v17))
  {
    v7 = v17 ? 4 : 0;
    v11 = v4;
    v12 = v7;
    v13 = 0;
    v14 = 0;
    v15 = &v11;
    v9 = v6[2];
    v10 = v6[3];
    v8 = v6 + 2;
    sub_2993DE9CC(v8, v20, __p, a1 + 7, *(v8 + 6));
    v16 = *v8 + v10 - v9;
    (*(a1[4] + 16))();
    if (*(*(a1[5] + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v19[0])
  {
    operator delete(v19[0]);
  }

  if (v20[0])
  {
    operator delete(v20[0]);
  }
}

void sub_29931244C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v19 = *(v17 - 72);
  if (v19)
  {
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_299312480(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = (a1 + 56);
  v2[2] = 0;
  return sub_299215EC0(v2, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 1);
}

void sub_29931249C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

uint64_t sub_2993124DC(int a1, CFMutableDictionaryRef theDict)
{
  if (!theDict)
  {
    __assert_rtn("handleCandidate", "PredictionCandidateDisplayedTracker.cpp", 17, "payload");
  }

  v3 = *MEMORY[0x29EDB8F00];
  CFDictionaryAddValue(theDict, @"completionCandidatesAppeared", *MEMORY[0x29EDB8F00]);
  CFDictionaryAddValue(theDict, @"predictionCandidateListDisplayed", v3);
  return 1;
}

void *sub_299312578(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_2991A110C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v3;
  }

  v4 = sub_29930AF10();
  *(__dst + 24) = *v4 & ((*(v4 + 2) & 0x20u) >> 5);
  *(__dst + 25) = 0;
  __dst[6] = 0;
  return __dst;
}

void sub_2993125E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299312604(uint64_t result, int a2)
{
  if (*(result + 24) == 1)
  {
    v11 = v2;
    v12 = v3;
    v4 = result;
    if (*(result + 25) == 1)
    {
      result = gettimeofday(&v10, 0);
      *(v4 + 25) = 0;
      tv_sec = v10.tv_sec;
      tv_usec = v10.tv_usec;
      *(v4 + 48) = *(v4 + 48) + (v10.tv_usec - *(v4 + 40)) / 1000000.0 + (v10.tv_sec - *(v4 + 32));
      if (a2)
      {
        v8 = sub_29930AF10();
        v9 = v4;
        if (*(v4 + 23) < 0)
        {
          v9 = *v4;
        }

        return sub_29930B514(v8, 0x20u, "[%s] paused at (%lu, %lu), total time elapsed %.8f seconds\n", v9, tv_sec, tv_usec, *(v4 + 48));
      }
    }
  }

  return result;
}

const char *sub_2993126D8(const char *result)
{
  if (result[24] == 1)
  {
    v1 = result;
    v2 = sub_29930AF10();
    v3 = v1;
    if (v1[23] < 0)
    {
      v3 = *v1;
    }

    sub_29930B514(v2, 0x20u, "[%s] Total time elapsed %.8f seconds\n", v3, *(v1 + 6));
    result = *(sub_29930AF10() + 4);
    if (result)
    {
      v4 = *(*result + 24);

      return v4();
    }
  }

  return result;
}

void *sub_299312788(void *__dst, char **a2)
{
  v2 = __dst;
  if (*(a2 + 23) < 0)
  {
    v6 = a2[1];
    if (v6 == 3)
    {
      v7 = *a2;
      if (*v7 == 29500 && v7[2] == 62)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v7 = *a2;
      if (v6 == 4 && *v7 == 1047736124)
      {
        goto LABEL_32;
      }
    }

    if (*v7 != 120 || v6 < 2 || v6[v7 - 1] != 120)
    {
      __dst = sub_2991A110C(__dst, v7, v6);
      v9 = 0;
      goto LABEL_33;
    }

    __dst = sub_2991A110C(__dst, v7, v6);
    goto LABEL_30;
  }

  v3 = *(a2 + 23);
  if (v3 != 3)
  {
    v5 = *a2;
    if (v3 != 4 || v5 != 1047736124)
    {
      goto LABEL_19;
    }

LABEL_32:
    __dst = sub_2991C6CA8(__dst, "");
    v9 = 2;
    goto LABEL_33;
  }

  if (*a2 == 29500 && *(a2 + 2) == 62)
  {
LABEL_14:
    __dst = sub_2991C6CA8(__dst, "");
    v9 = 1;
    goto LABEL_33;
  }

  LOBYTE(v5) = *a2;
LABEL_19:
  if (v5 == 120 && v3 >= 2 && *(a2 + *(a2 + 23) - 1) == 120)
  {
    *__dst = *a2;
    __dst[2] = a2[2];
LABEL_30:
    v9 = 3;
    goto LABEL_33;
  }

  v9 = 0;
  *__dst = *a2;
  __dst[2] = a2[2];
LABEL_33:
  *(v2 + 6) = v9;
  return __dst;
}

uint64_t sub_29931290C@<X0>(uint64_t *a1@<X0>, _BYTE *a4@<X3>, void *a5@<X8>)
{
  *a4 = 0;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = a5 + 1;
  result = sub_2993B9184(*a1);
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_299312EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32)
{
  a18 = &a25;
  sub_2993130A4(&a18);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&a21);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  (*(*v32 + 16))(v32);
  sub_29928113C(v33, *(v33 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_299313050(uint64_t *a1)
{
  result = sub_2993B9184(*a1);
  if (result)
  {
    v3 = *(sub_2993B9184(*a1) + 8);

    return MEMORY[0x2A1C67F58](v3);
  }

  return result;
}

void sub_2993130A4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        language_modeling::v1::Prediction::~Prediction((v4 - 8));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_299313128(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 96);
    if (v3)
    {
      *(a2 + 104) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 72);
    if (v4)
    {
      *(a2 + 80) = v4;
      operator delete(v4);
    }

    sub_299219AB4((a2 + 64), 0);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

double sub_2993131A0(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 8) = xmmword_299416200;
  *(a1 + 4) = 5000;
  *(a1 + 24) = vdupq_n_s64(0x3FC999999999999AuLL);
  *(a1 + 40) = xmmword_299416210;
  *(a1 + 56) = xmmword_299416220;
  *(a1 + 72) = xmmword_299416230;
  *(a1 + 88) = xmmword_299416240;
  *(a1 + 104) = xmmword_299416250;
  *(a1 + 120) = xmmword_299416260;
  *(a1 + 136) = xmmword_299416270;
  *(a1 + 152) = xmmword_299416280;
  *(a1 + 168) = xmmword_299416290;
  *(a1 + 184) = xmmword_2994162A0;
  *(a1 + 200) = xmmword_2994162B0;
  *(a1 + 224) = xmmword_2994162C0;
  *(a1 + 216) = 0x4008000000000000;
  *(a1 + 240) = vdup_n_s32(0x3A98u);
  *(a1 + 256) = 1;
  *(a1 + 264) = 1;
  *(a1 + 280) = 1;
  *(a1 + 288) = xmmword_2994162D0;
  *(a1 + 304) = 0x19006400180010;
  *(a1 + 312) = 32;
  *(a1 + 328) = 196610;
  *(a1 + 336) = 0x80002012C7FFFLL;
  *(a1 + 352) = 983050;
  *(a1 + 368) = 655365;
  *(a1 + 376) = 3;
  *(a1 + 392) = 0x3F0000003E99999ALL;
  *(a1 + 400) = 1060320051;
  *(a1 + 404) = xmmword_2994162E0;
  *(a1 + 420) = 2;
  *(a1 + 432) = 5;
  *(a1 + 440) = 0x1FFFF;
  *(a1 + 444) = 3000;
  *(a1 + 448) = 1070386381;
  *(a1 + 464) = 45878700;
  *(a1 + 472) = 0x640FA24057803E8;
  *(a1 + 480) = 500;
  *(a1 + 496) = 65540000;
  *(a1 + 512) = 65537500;
  *(a1 + 520) = 458815536;
  *(a1 + 524) = 5000;
  *(a1 + 528) = 0x300000002;
  *(a1 + 536) = 65538000;
  *(a1 + 552) = 327683000;
  *(a1 + 560) = 655362;
  *(a1 + 564) = 20000;
  *(a1 + 568) = 1080033280;
  *(a1 + 576) = 850045863;
  *(a1 + 632) = 0;
  result = 0.0;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 248) = a1;
  *(a1 + 272) = a1;
  *(a1 + 344) = a1;
  *(a1 + 360) = a1;
  *(a1 + 384) = a1;
  *(a1 + 424) = a1;
  *(a1 + 456) = a1;
  *(a1 + 488) = a1;
  *(a1 + 504) = a1;
  *(a1 + 544) = a1;
  *(a1 + 320) = a1;
  return result;
}

BOOL sub_299313404(uint64_t a1, const __CFURL *a2)
{
  v3 = *MEMORY[0x29EDB8ED8];
  v4 = CFReadStreamCreateWithFile(*MEMORY[0x29EDB8ED8], a2);
  v5 = CFReadStreamOpen(v4);
  if (v5)
  {
    v6 = CFPropertyListCreateWithStream(v3, v4, 0, 0, 0, 0);
    CFReadStreamClose(v4);
    sub_2993134EC(a1, v6);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v5 != 0;
}

void sub_2993134BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29927B09C(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993134EC(uint64_t a1, const __CFDictionary *a2)
{
  std::mutex::lock((a1 + 576));
  v4 = sub_299313940(a2, @"kEmbedded");
  if (v4 >> 32)
  {
    *a1 = v4 == 1;
  }

  v5 = sub_299313940(a2, @"kJointProbabilityCostFactor");
  if (v5 >> 32)
  {
    *(a1 + 4) = v5;
  }

  v6 = sub_299313984(a2, @"kDiscriminativeCostWeight");
  if (v7)
  {
    *(a1 + 8) = v6;
  }

  v8 = sub_299313984(a2, @"kCostFactor");
  if (v9)
  {
    *(a1 + 16) = v8;
  }

  v10 = sub_299313984(a2, @"kMatchPenaltyWeight");
  if (v11)
  {
    *(a1 + 24) = v10;
  }

  v12 = sub_299313984(a2, @"kMatchPenaltyWeightForSpecialToken");
  if (v13)
  {
    *(a1 + 32) = v12;
  }

  v14 = sub_299313984(a2, @"kSingleWordLMScore");
  if (v15)
  {
    *(a1 + 40) = v14;
  }

  v16 = sub_299313984(a2, @"kDynamicLMScoreWeight");
  if (v17)
  {
    *(a1 + 48) = v16;
  }

  v18 = sub_299313984(a2, @"kSymbolUnkPenalty");
  if (v19)
  {
    *(a1 + 56) = v18;
  }

  v20 = sub_299313984(a2, @"kMaxUnkPenalty");
  if (v21)
  {
    *(a1 + 64) = v20;
  }

  v22 = sub_299313984(a2, @"kRareUnkPenalty");
  if (v23)
  {
    *(a1 + 72) = v22;
  }

  v24 = sub_299313984(a2, @"kConsecutiveUnkPenalty");
  if (v25)
  {
    *(a1 + 80) = v24;
  }

  v26 = sub_299313984(a2, @"kSingleUnkCharWordPenalty");
  if (v27)
  {
    *(a1 + 88) = v26;
  }

  v28 = sub_299313984(a2, @"kSingleUnkCharWithOkuriganaWordPenalty");
  if (v29)
  {
    *(a1 + 96) = v28;
  }

  v30 = sub_299313984(a2, @"kDynamicKatakanaPenalty");
  if (v31)
  {
    *(a1 + 104) = v30;
  }

  v32 = sub_299313984(a2, @"kOtherSymbolOrLetterPenalty");
  if (v33)
  {
    *(a1 + 112) = v32;
  }

  v34 = sub_299313984(a2, @"kPenaltyForDynamicNumbers");
  if (v35)
  {
    *(a1 + 120) = v34;
  }

  v36 = sub_299313984(a2, @"kPenaltyForArabicNumberByReading");
  if (v37)
  {
    *(a1 + 128) = v36;
  }

  v38 = sub_299313984(a2, @"kPenaltyForArabicNumberAtEOSByReading");
  if (v39)
  {
    *(a1 + 136) = v38;
  }

  v40 = sub_299313984(a2, @"kPenaltyForArabicNumberSingleWordOnHWKeyboard");
  if (v41)
  {
    *(a1 + 144) = v40;
  }

  v42 = sub_299313984(a2, @"kPenaltyForWordWithArabicNumber");
  if (v43)
  {
    *(a1 + 152) = v42;
  }

  v44 = sub_299313984(a2, @"kPenaltyForUnlikelyNumberUnitCombination");
  if (v45)
  {
    *(a1 + 160) = v44;
  }

  v46 = sub_299313984(a2, @"kPenaltyForSymbolConversion");
  if (v47)
  {
    *(a1 + 168) = v46;
  }

  v48 = sub_299313984(a2, @"kPenaltyForKanjiNumberWithUnit");
  if (v49)
  {
    *(a1 + 176) = v48;
  }

  v50 = sub_299313984(a2, @"kRewardForSingleNumberConversion");
  if (v51)
  {
    *(a1 + 200) = v50;
  }

  v52 = sub_299313984(a2, @"kRewardForNumberWithUnit");
  if (v53)
  {
    *(a1 + 208) = v52;
  }

  v54 = sub_299313984(a2, @"kRewardForNumberWithParticle");
  if (v55)
  {
    *(a1 + 216) = v54;
  }

  v56 = sub_299313940(a2, @"kNumLexicalPreferenceTargetsForSWKeyboard");
  if (v56 >> 32)
  {
    *(a1 + 528) = v56;
  }

  v57 = sub_299313940(a2, @"kNumLexicalPreferenceTargetsForHWKeyboard");
  if (v57 >> 32)
  {
    *(a1 + 532) = v57;
  }

  v58 = sub_299313940(a2, @"kMaxNumExactCandidatesForSWKeyboard");
  if (v58 >> 32)
  {
    *(a1 + 224) = v58;
  }

  v59 = sub_299313940(a2, @"kMaxNumExactCandidatesForHWKeyboard");
  if (v59 >> 32)
  {
    *(a1 + 228) = v59;
  }

  v60 = COERCE_DOUBLE(sub_299313984(a2, @"kMaxNumPrefixCandidates"));
  if (v61)
  {
    *(a1 + 232) = v60;
  }

  v62 = sub_299313940(a2, @"kSinglePhraseExactMatchCandidatePruningThreshold");
  if (v62 >> 32)
  {
    *(a1 + 236) = v62;
  }

  v63 = sub_299313940(a2, @"kMultiPhraseExactMatchCandidatePruningThreshold");
  if (v63 >> 32)
  {
    *(a1 + 240) = v63;
  }

  v64 = COERCE_DOUBLE(sub_299313984(a2, @"kPrefixMatchCandidatePruningThreshold"));
  if (v65)
  {
    *(a1 + 244) = v64;
  }

  std::mutex::unlock((a1 + 576));
  return 1;
}

const __CFNumber *sub_299313940(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    valuePtr = 0;
    if (CFNumberGetValue(result, kCFNumberIntType, &valuePtr))
    {
      return (valuePtr | 0x100000000);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFNumber *sub_299313984(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    valuePtr = 0;
    if (CFNumberGetValue(result, kCFNumberDoubleType, &valuePtr))
    {
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFDictionaryRef sub_2993139D0(uint64_t a1)
{
  __dst[35] = *MEMORY[0x29EDCA608];
  memcpy(__dst, off_29EF12BC8, 0x118uLL);
  values[0] = CFNumberCreate(0, kCFNumberIntType, a1);
  values[1] = CFNumberCreate(0, kCFNumberIntType, (a1 + 4));
  values[2] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 8));
  values[3] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 16));
  values[4] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 24));
  values[5] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 32));
  values[6] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 40));
  values[7] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 48));
  values[8] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 56));
  values[9] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 64));
  values[10] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 72));
  values[11] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 80));
  values[12] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 88));
  values[13] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 96));
  values[14] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 104));
  values[15] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 112));
  values[16] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 120));
  values[17] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 128));
  values[18] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 136));
  values[19] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 144));
  values[20] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 152));
  values[21] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 160));
  values[22] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 168));
  values[23] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 176));
  values[24] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 200));
  values[25] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 208));
  values[26] = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 216));
  values[27] = CFNumberCreate(0, kCFNumberIntType, (a1 + 528));
  values[28] = CFNumberCreate(0, kCFNumberIntType, (a1 + 532));
  values[29] = CFNumberCreate(0, kCFNumberIntType, (a1 + 224));
  values[30] = CFNumberCreate(0, kCFNumberIntType, (a1 + 228));
  values[31] = CFNumberCreate(0, kCFNumberIntType, (a1 + 232));
  values[32] = CFNumberCreate(0, kCFNumberIntType, (a1 + 236));
  values[33] = CFNumberCreate(0, kCFNumberIntType, (a1 + 240));
  values[34] = CFNumberCreate(0, kCFNumberIntType, (a1 + 244));
  v2 = CFDictionaryCreate(0, __dst, values, 35, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  for (i = 0; i != 35; ++i)
  {
    CFRelease(values[i]);
  }

  return v2;
}

uint64_t sub_299313D44(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F70808;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_2A1F65118;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = &unk_2A1F65118;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 172) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v3 = *(a2 + 8);
  *(a1 + 232) = 0u;
  *(a1 + 229) = 1;
  *(a1 + 231) = v3;
  *(a1 + 248) = 0u;
  sub_2992F2784(a1 + 264);
  *(a1 + 712) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 720) = 850045863;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 816) = &unk_2A1F74930;
  *(a1 + 824) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0;
  *(a1 + 856) = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  *(a1 + 864) = 0;
  *(a1 + 872) = 0;
  *(a1 + 876) = 0;
  *(a1 + 880) = 850045863;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 932) = 0u;
  v6 = 10;
  strcpy(&v5, "Conversion");
  sub_299312578((a1 + 952), &v5);
  sub_299253EF4(a1 + 1008);
  return a1;
}

void sub_299313F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10)
{
  if (*(v10 + 975) < 0)
  {
    operator delete(*v18);
  }

  std::mutex::~mutex((v10 + 880));
  v20 = *(v10 + 864);
  *(v10 + 864) = 0;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  sub_29924A4BC((v10 + 856), 0);
  *(v10 + 816) = v17;
  a10 = v10 + 824;
  sub_299259FC8(&a10);
  v21 = *(v10 + 800);
  *(v10 + 800) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(v10 + 792);
  *(v10 + 792) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = (v10 + 712);
  v24 = *(v10 + 784);
  *(v10 + 784) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  std::mutex::~mutex((v10 + 720));
  v25 = *v23;
  *v23 = 0;
  if (v25)
  {
    sub_299275158(v10 + 712, v25);
  }

  v26 = *(v10 + 704);
  *(v10 + 704) = 0;
  if (v26)
  {
    MEMORY[0x29C29BFB0](v26, 0x70C40F770AEC6);
  }

  sub_299318258(v16, 0);
  sub_29925BCBC(v15 + 32);
  sub_2993181C8((v15 + 24), 0);
  v27 = *v15;
  if (*v15)
  {
    *(v10 + 240) = v27;
    operator delete(v27);
  }

  sub_299219AB4(v13, 0);
  sub_2992E5624(v14, 0);
  v28 = *v19;
  *v19 = 0;
  if (v28)
  {
    (*(*v28 + 344))(v28);
  }

  v29 = *(v10 + 176);
  *(v10 + 176) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(v10 + 168);
  *(v10 + 168) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  sub_29921D794(v12);
  sub_29921D794(v11);
  v31 = *(v10 + 16);
  *(v10 + 16) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993141B0(uint64_t a1)
{
  *a1 = &unk_2A1F70808;
  v2 = (a1 + 952);
  sub_2993126D8((a1 + 952));
  sub_299253FC0(a1 + 1008);
  if (*(a1 + 975) < 0)
  {
    operator delete(*v2);
  }

  std::mutex::~mutex((a1 + 880));
  v3 = *(a1 + 864);
  *(a1 + 864) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  sub_29924A4BC((a1 + 856), 0);
  *(a1 + 816) = &unk_2A1F74930;
  v15 = (a1 + 824);
  sub_299259FC8(&v15);
  v4 = *(a1 + 800);
  *(a1 + 800) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 792);
  *(a1 + 792) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 784);
  *(a1 + 784) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::mutex::~mutex((a1 + 720));
  v7 = *(a1 + 712);
  *(a1 + 712) = 0;
  if (v7)
  {
    sub_299275158(a1 + 712, v7);
  }

  v8 = *(a1 + 704);
  *(a1 + 704) = 0;
  if (v8)
  {
    MEMORY[0x29C29BFB0](v8, 0x70C40F770AEC6);
  }

  sub_299318258((a1 + 696), 0);
  sub_29925BCBC(a1 + 264);
  sub_2993181C8((a1 + 256), 0);
  v9 = *(a1 + 232);
  if (v9)
  {
    *(a1 + 240) = v9;
    operator delete(v9);
  }

  sub_299219AB4((a1 + 216), 0);
  sub_2992E5624((a1 + 200), 0);
  v10 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v10)
  {
    (*(*v10 + 344))(v10);
  }

  v11 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  *(a1 + 96) = &unk_2A1F65118;
  v15 = (a1 + 144);
  sub_29921EC68(&v15);
  sub_29921ED28(a1 + 104);
  *(a1 + 24) = &unk_2A1F65118;
  v15 = (a1 + 72);
  sub_29921EC68(&v15);
  sub_29921ED28(a1 + 32);
  v13 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return a1;
}

uint64_t sub_2993144E8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 856);
  v9.length = CFStringGetLength(v6);
  v9.location = 0;
  CFStringDelete(v6, v9);
  sub_2993145CC(a1, 0, a2, a3);
  std::mutex::lock((a1 + 880));
  *(a1 + 944) = 0;
  sub_2992E5624((a1 + 200), 0);
  (*(**(a1 + 192) + 224))(*(a1 + 192), 0);
  v7 = sub_2993149CC(a1, 0, a2, a3, 0, 1);
  std::mutex::unlock((a1 + 880));
  return v7;
}

void *sub_2993145CC(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  sub_29932CA50(*(a1 + 176), 1);
  sub_29932CB94(*(a1 + 176));
  if (a2)
  {
    sub_299254078((a1 + 1008), a2, 0, a3, a4, 0);
  }

  if (a4)
  {
    operator new();
  }

  v8 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  result = *(a1 + 864);
  *(a1 + 864) = 0;
  if (result)
  {
    return (*(*result + 16))(result);
  }

  return result;
}

void sub_299314994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993149CC(uint64_t a1, const __CFString *a2, unint64_t a3, uint64_t a4, const __CFArray *a5, char a6)
{
  if ((atomic_load_explicit(&qword_2A1460F98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460F98))
  {
    qword_2A1460F90 = sub_299237120();
    __cxa_guard_release(&qword_2A1460F98);
  }

  v12 = *(a1 + 176);
  if (v12)
  {
    (*(*v12 + 32))(v12);
    sub_29932CA50(*(a1 + 176), 1);
    *(*(a1 + 176) + 96) = (a3 & 0x80) == 0;
  }

  *(a1 + 872) = 1;
  *(a1 + 876) = 0;
  sub_299373E34((a1 + 824), 0);
  *(a1 + 848) = 0;
  if ((a6 & 1) == 0)
  {
    if (!a2 || !CFStringGetLength(a2))
    {
      result = 0;
      *(a1 + 208) = 0;
      return result;
    }

    if (!*(a1 + 208))
    {
      *(a1 + 208) = 1;
    }

    if (a3 >> 31 && (v13 = *(a1 + 864)) != 0 && (*(*v13 + 232))(*(a1 + 864)) && (*(*v13 + 56))(v13) && (v14 = (*(*v13 + 232))(v13), CFStringGetLength(v14)) && (v15 = (*(*v13 + 56))(v13), CFStringGetLength(v15)))
    {
      v16 = (*(*v13 + 24))(v13);
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        while (v18 < CFStringGetLength(v17))
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(v17, v18++);
          if ((CharacterAtIndex & 0xFFFFFFDF) - 65 < 0x1A)
          {
            goto LABEL_19;
          }
        }
      }

      Mutable = CFStringCreateMutable(0, 0);
      v49 = (*(*v13 + 56))(v13);
      CFStringAppend(Mutable, v49);
      CFStringAppend(Mutable, a2);
      sub_299219AB4((a1 + 216), Mutable);
    }

    else
    {
LABEL_19:
      sub_2993150A0(a1, a2);
    }
  }

  *(a1 + 184) = sub_299323508(a3, a4, qword_2A1460F90);
  if (sub_299278154(a2))
  {
    *(a1 + 184) |= 4u;
  }

  if (a2)
  {
    Length = CFStringGetLength(a2);
    if (*qword_2A1460F90 == 1 && Length >= 1)
    {
      v22 = Length;
      if (CFStringGetCharacterAtIndex(a2, 0) - 65 < 0x1A || v22 >= 2 && CFStringGetCharacterAtIndex(a2, 1) - 65 <= 0x19)
      {
        v23 = *(a1 + 184);
        if ((v23 & 0x4000000) != 0)
        {
          *(a1 + 184) = v23 & 0xFFFFFFDF;
          if ((v23 & 4) != 0)
          {
            *(a1 + 184) = v23 & 0xFFFFFFDD;
          }
        }
      }
    }
  }

  if (a3 & 0x40000) != 0 || (*(a1 + 231))
  {
    LOBYTE(v25) = 0;
  }

  else
  {
    v25 = (*(*a1 + 184))(a1);
    if (v25)
    {
      LOBYTE(v25) = (*(*a1 + 192))(a1);
    }
  }

  *(a1 + 228) = v25;
  *(a1 + 808) = 0;
  if (a4)
  {
    v26 = sub_299225D3C(a4, kMecabraContextOptionDisabledLearningBasedGenerationBigramPhrase);
    v27 = *MEMORY[0x29EDB8F00];
    if (v26 == *MEMORY[0x29EDB8F00])
    {
      *(a1 + 808) = 1;
    }

    if (sub_299225D3C(a4, kMecabraContextOptionDisabledLearningBasedGenerationUnigramPhrase) == v27)
    {
      *(a1 + 809) = 1;
    }

    if (sub_299225D3C(a4, kMecabraContextOptionDisabledLearningBasedGenerationLexicalPreference) == v27)
    {
      *(a1 + 810) = 1;
    }

    if (sub_299225D3C(a4, kMecabraContextOptionDisabledLearningBasedGenerationNonLexicalPreference) == v27)
    {
      *(a1 + 811) = 1;
    }

    if (sub_299225D3C(a4, kMecabraContextOptionPrivateMode) == v27)
    {
      *(a1 + 808) = 16843009;
      v28 = *(a1 + 176);
      if (v28)
      {
        *(v28 + 96) = 0;
      }
    }
  }

  v29 = (a1 + 232);
  *(a1 + 240) = *(a1 + 232);
  if (a5 && CFArrayGetCount(a5) >= 1)
  {
    v30 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a5, v30);
      v35 = sub_2992896C0(ValueAtIndex, v32, v33, v34);
      v37 = *(a1 + 240);
      v36 = *(a1 + 248);
      if (v37 >= v36)
      {
        v39 = (v37 - *v29) >> 3;
        if ((v39 + 1) >> 61)
        {
          sub_299212A8C();
        }

        v40 = v36 - *v29;
        v41 = v40 >> 2;
        if (v40 >> 2 <= (v39 + 1))
        {
          v41 = v39 + 1;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFF8)
        {
          v42 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v41;
        }

        if (v42)
        {
          sub_29920B86C(a1 + 232, v42);
        }

        v43 = (8 * v39);
        *v43 = v35;
        v38 = 8 * v39 + 8;
        v44 = *(a1 + 232);
        v45 = *(a1 + 240) - v44;
        v46 = v43 - v45;
        memcpy(v43 - v45, v44, v45);
        v47 = *(a1 + 232);
        *(a1 + 232) = v46;
        *(a1 + 240) = v38;
        *(a1 + 248) = 0;
        if (v47)
        {
          operator delete(v47);
        }
      }

      else
      {
        *v37 = v35;
        v38 = (v37 + 1);
      }

      *(a1 + 240) = v38;
      ++v30;
    }

    while (v30 < CFArrayGetCount(a5));
  }

  return 1;
}

unint64_t sub_299314F80(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 848) != 1)
  {
    return 0;
  }

  v3 = *(a2 + 24);
  if (!v3)
  {
    return 0;
  }

  v4 = __dynamic_cast(v3, &unk_2A1F6F680, &unk_2A1F6F7F8, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4[4];
  if (v5 == v4[5])
  {
    return 0;
  }

  v6 = *v5;
  if (*(v4[4] + 8) - v6 != 4)
  {
    return 0;
  }

  v7 = *v6;
  if (*v6)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 832) - *(a1 + 824)) >> 3);
    if (v8 > v7)
    {
      v9 = v6[1];
      v11.location = 0;
      v11.length = v8 - v7;
      CFStringDelete(*(a1 + 856), v11);
      sub_2993C75EC((a1 + 816), v7, v9);
      std::mutex::lock((a1 + 880));
      *(a1 + 944) = 0;
      v7 = 1;
      *(a1 + 872) = 1;
      *(a1 + 876) = 0;
      std::mutex::unlock((a1 + 880));
      return v7;
    }

    return 0;
  }

  return v7;
}

uint64_t sub_2993150A0(uint64_t a1, const __CFString *a2)
{
  Copy = CFStringCreateCopy(0, a2);
  sub_299219AB4((a1 + 216), Copy);
  result = *(a1 + 864);
  *(a1 + 864) = 0;
  if (result)
  {
    v5 = *(*result + 16);

    return v5();
  }

  return result;
}

uint64_t sub_29931511C(uint64_t a1, const __CFString *a2, unint64_t a3, uint64_t a4, const __CFArray *a5, const __CFArray *a6)
{
  v20 = *MEMORY[0x29EDCA608];
  v12 = sub_2993652F8(3u);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *v19 = 138412290;
    *&v19[4] = a2;
    _os_log_debug_impl(&dword_29918C000, v12, OS_LOG_TYPE_DEBUG, "[MecabraEngine::analyzeString] analysisStr: [%@]", v19, 0xCu);
  }

  std::mutex::lock((a1 + 880));
  v13 = *(a1 + 200);
  *(a1 + 944) = 0;
  if (v13)
  {
    if (a5)
    {
      v14 = *v13 ? CFArrayGetCount(*v13) : 0;
      if (v14 > CFArrayGetCount(a5))
      {
        if (a2)
        {
          v15 = *(a1 + 216);
          if (v15)
          {
            if (!CFStringHasPrefix(v15, a2))
            {
              *(a1 + 208) = 1;
            }
          }
        }
      }
    }

    sub_2992E5624((a1 + 200), 0);
    (*(**(a1 + 192) + 224))(*(a1 + 192), 0);
  }

  if (a2)
  {
    if (a5)
    {
      Length = CFStringGetLength(a2);
      if (Length <= CFArrayGetCount(a5))
      {
        operator new();
      }
    }
  }

  v17 = sub_2993149CC(a1, a2, a3, a4, a6, 0);
  if (v17)
  {
    operator new();
  }

  std::mutex::unlock((a1 + 880));
  return v17;
}

void sub_2993153B4(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v2, 0x60C40AA6EF139);
  std::mutex::unlock((v1 + 880));
  _Unwind_Resume(a1);
}

uint64_t sub_299315414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Count = *(a2 + 16);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  v7 = 0;
  v8 = Count - a3;
  v9 = Count - a3;
  do
  {
    if (v9-- < 1)
    {
      break;
    }

    v11 = sub_299324228(a2, v9);
    MecabraCandidateGetSurface(v11, v12, v13, v14);
    if (!CEMStringIsSingleEmoji())
    {
      break;
    }

    ++v7;
  }

  while (v7 != 3);
  v15 = &v8[-v7 - 4];
  if (v15 < 0)
  {
    v15 = -1;
  }

  v16 = v15 + 1;
  if (v15 + 1 >= v8)
  {
    return 1;
  }

  v17 = 0;
  v32 = *(MEMORY[0x29EDC9528] + 64);
  v33 = *MEMORY[0x29EDC9528];
  v31 = *(MEMORY[0x29EDC9528] + 72);
  LODWORD(v18) = 1;
  do
  {
    v19 = sub_299324228(a2, v16);
    v20 = sub_2993652F8(6u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG) && sub_2992896C0(v19, v21, v22, v23))
    {
      sub_2991D7954(v36);
      v24 = sub_2991C0E9C(&v37, "[ME::acceptLeftContext] #", 25);
      MEMORY[0x29C29BD50](v24, v17);
      v28 = sub_2992896C0(v19, v25, v26, v27);
      sub_29927989C(v36, __p);
      if (v35 >= 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = __p[0];
      }

      (*(*v28 + 528))(v28, 6, v29, 1);
      if (v35 < 0)
      {
        operator delete(__p[0]);
      }

      v36[0] = v33;
      *(v36 + *(v33 - 24)) = v32;
      v37 = v31;
      v38 = MEMORY[0x29EDC9570] + 16;
      if (v40 < 0)
      {
        operator delete(v39[7].__locale_);
      }

      v38 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v39);
      std::iostream::~basic_iostream();
      MEMORY[0x29C29BF00](&v41);
    }

    v18 = v18 & sub_299315744(a1, v19, 0, 0);
    ++v16;
    ++v17;
  }

  while (v16 < v8);
  return v18;
}

void sub_299315714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_2992510CC(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_299315744(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v29 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v8 = sub_2993652F8(6u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v23 = 138412802;
      Surface = MecabraCandidateGetSurface(a2, v9, v10, v11);
      v25 = 1024;
      v26 = a3;
      v27 = 1024;
      v28 = 1;
      _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "[ME::acceptCandidate] S:%@ isPartial:%d performLearning:%d", &v23, 0x18u);
    }
  }

  if (*(a1 + 872) != 2)
  {
    *(a1 + 872) = 2;
  }

  v12 = 0;
  *(a1 + 876) = 0;
  if (a4)
  {
    v12 = *(a1 + 231) ^ 1;
  }

  v13 = (*(**(a1 + 176) + 56))(*(a1 + 176), a2, a3, v12 & 1);
  v14 = *(*(a1 + 176) + 104);
  if (sub_2992896C0(v14, v15, v16, v17))
  {
    v21 = sub_2992896C0(v14, v18, v19, v20);
    (*(*v21 + 528))(v21, 6, "[ME::acceptCandidate] Accepted", 1);
  }

  return v13;
}

uint64_t sub_2993158E4(uint64_t a1, uint64_t a2, int a3)
{
  Count = CFArrayGetCount(*(a2 + 32));
  v7 = Count - 1;
  if (Count < 1)
  {
    return 1;
  }

  v8 = Count;
  v9 = 0;
  v27 = *(MEMORY[0x29EDC9528] + 64);
  v28 = *MEMORY[0x29EDC9528];
  LODWORD(v10) = 1;
  v25 = v31 | 0x5B37000000000000;
  v26 = *(MEMORY[0x29EDC9528] + 72);
  v24 = &v32 | 0xD08C000000000000;
  do
  {
    v11 = sub_299324314(a2, v9);
    v12 = sub_2993652F8(6u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG) && sub_2992896C0(v11, v13, v14, v15))
    {
      sub_2991D7954(v31);
      v16 = sub_2991C0E9C(&v32, "[ME::acceptInlineContext] #", 27, v24, v25);
      MEMORY[0x29C29BD50](v16, v9);
      v20 = sub_2992896C0(v11, v17, v18, v19);
      sub_29927989C(v31, __p);
      if (v30 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      (*(*v20 + 528))(v20, 6, v21, 1);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      v31[0] = v28;
      *(v31 + *(v28 - 24)) = v27;
      v32 = v26;
      v33 = MEMORY[0x29EDC9570] + 16;
      if (v35 < 0)
      {
        operator delete(v34[7].__locale_);
      }

      v33 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v34);
      std::iostream::~basic_iostream();
      MEMORY[0x29C29BF00](&v36);
    }

    if (v9 < v7)
    {
      v22 = 1;
    }

    else
    {
      v22 = a3 ^ 1u;
    }

    v10 = v10 & sub_299315744(a1, v11, v22, a3);
    ++v9;
  }

  while (v8 != v9);
  return v10;
}

void sub_299315BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_2992510CC(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_299315BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = sub_299237120();
  *(a1 + 184) = sub_299323508(v4, a3, v6) & 0xFDFFFFFF;
  if (v4 & 0x40000) != 0 || (*(a1 + 231))
  {
    result = 0;
  }

  else
  {
    result = (*(*a1 + 184))(a1);
    if (result)
    {
      result = (*(*a1 + 192))(a1);
    }
  }

  *(a1 + 228) = result;
  if (*(a1 + 230) == 1)
  {
    *(a1 + 872) = 2;
    *(a1 + 876) = 0;
  }

  return result;
}

uint64_t sub_299315CB8(uint64_t a1, const __CFString *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_299237120();
  if (!a2)
  {
    return 0;
  }

  v9 = v8;
  sub_2993145CC(a1, a2, a3, a4);
  if (CFStringGetLength(a2) < 1)
  {
    sub_299315BE8(a1, a3, a4);
    return 1;
  }

  if (!a4)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v10 = *(a4 + 48);
  if (*v9)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v11 = sub_299323C14(a4, a2);
LABEL_10:

  return sub_29931511C(a1, a2, a3, a4, v10, v11);
}

__CFArray *sub_299315DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x29EDCA608];
  Count = CFArrayGetCount(*(a4 + 32));
  if (Count)
  {
    v7 = sub_299324314(a4, Count - 1);
    v11 = objc_msgSend_rawCandidate(v7, v8, v9, v10);
    if (v11)
    {
      v12 = __dynamic_cast(v11, &unk_2A1F64300, &unk_2A1F6D008, 0);
      if (v12)
      {
        v13 = v12;
        v14 = (*(*v12 + 304))(v12);
        v15 = *v14;
        v16 = v14[1];
        if (*v14 == v16)
        {
          v17 = 0;
        }

        else
        {
          v17 = 0;
          do
          {
            v17 += *(v15 + 20);
            v15 += 40;
          }

          while (v15 != v16);
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 832) - *(a1 + 824)) >> 3);
        if (v19 <= v17)
        {
          v20 = 0;
        }

        else
        {
          v20 = v19 - v17;
        }

        v21 = (*(*v13 + 48))(v13);
        if (v21)
        {
          v22 = *(*v14 + 40 * v21 - 24);
        }

        else
        {
          LOWORD(v22) = 0;
        }

        LOWORD(v23[0]) = v20;
        WORD1(v23[0]) = v22;
        v25 = 0;
        v26 = 0;
        v24 = 0;
        sub_2992220D8(&v24, v23, v23 + 2, 2);
        __p = 0;
        v28 = 0;
        v29 = 0;
        sub_299215EC0(&__p, v24, v25, (v25 - v24) >> 1);
        memset(v23, 0, sizeof(v23));
        sub_299223290(v23, &__p, &v30, 1uLL);
        if (__p)
        {
          v28 = __p;
          operator delete(__p);
        }

        CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
        operator new();
      }
    }
  }

  return 0;
}

void sub_299316044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993160E0(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(*(a1 + 176) + 104);
  if (!v5)
  {
    return 0;
  }

  Surface = MecabraCandidateGetSurface(a3, a2, a3, a4);
  v10 = MecabraCandidateGetSurface(v5, v7, v8, v9);
  if (CFStringCompare(Surface, v10, 0))
  {
    return 0;
  }

  v12 = *(a1 + 176);

  return sub_29932D3E4(v12);
}

void sub_299316168(uint64_t a1)
{
  std::mutex::lock((a1 + 880));
  if (*(a1 + 944) == 1)
  {
    *(a1 + 944) = 2;
    (*(**(a1 + 192) + 152))(*(a1 + 192));
  }

  std::mutex::unlock((a1 + 880));
}

uint64_t sub_2993161F4(uint64_t a1)
{
  std::mutex::lock((a1 + 880));
  *(a1 + 944) = 1;
  std::mutex::unlock((a1 + 880));
  if ((*(a1 + 876) & 1) == 0)
  {
    ptr = 0;
    v2 = sub_2993652F8(0xDu);
    ptr = os_signpost_id_make_with_pointer(v2, &ptr);
    v3 = sub_2993652F8(0xDu);
    v4 = ptr;
    if (ptr - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v3;
      if (os_signpost_enabled(v3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MecabraAnalyzeStringWithContext", &unk_29945DB9F, buf, 2u);
      }
    }

    (*(**(a1 + 16) + 56))(*(a1 + 16));
    sub_299316474(a1, a1 + 24, a1 + 96);
    (*(**(a1 + 16) + 56))(*(a1 + 16));
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    while (v6 != v7)
    {
      v8 = *v6;
      *v6 = 0;
      v9 = sub_29928A270(v8);
      v13 = v9;
      if (*(a1 + 230) != 1 || !MecabraCandidateIsEmojiCandidate(v9, v10, v11, v12))
      {
        (*(**(a1 + 16) + 16))(*(a1 + 16), v13);
      }

      ++v6;
    }

    sub_299273BA0((a1 + 32));
    sub_29921ECBC((a1 + 72));
    (*(**(a1 + 16) + 64))(*(a1 + 16));
    v14 = sub_2993652F8(0xDu);
    v15 = ptr;
    if (ptr - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v14;
      if (os_signpost_enabled(v14))
      {
        *v19 = 0;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v16, OS_SIGNPOST_INTERVAL_END, v15, "MecabraAnalyzeStringWithContext", &unk_29945DB9F, v19, 2u);
      }
    }
  }

  std::mutex::lock((a1 + 880));
  v17 = (*(**(a1 + 16) + 48))(*(a1 + 16));
  *(a1 + 944) = 0;
  std::mutex::unlock((a1 + 880));
  return v17;
}

void sub_299316474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 872);
  if (v5 == 2)
  {
    (*(*a1 + 240))(a1, a2, a3);
  }

  else if (v5 == 1)
  {
    v7 = a1 + 816;
    if (*(a1 + 832) != *(a1 + 824) && *(a1 + 848) == 1)
    {
      sub_299273BA0((a2 + 8));
      sub_29921ECBC((a2 + 48));
      sub_299273BA0((a3 + 8));
      sub_29921ECBC((a3 + 48));
      sub_2993150A0(a1, *(a1 + 856));
      operator new();
    }

    v8 = sub_2993652F8(3u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 216);
      *buf = 138412290;
      *&buf[4] = v16;
      _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "[ME::convert] [%@]", buf, 0xCu);
    }

    sub_299273BA0((a2 + 8));
    sub_29921ECBC((a2 + 48));
    sub_299273BA0((a3 + 8));
    sub_29921ECBC((a3 + 48));
    if (*(a1 + 216))
    {
      v9 = *(a1 + 184);
      if ((v9 & 0x100000) != 0)
      {
        (*(*a1 + 248))(a1, a2);
      }

      else
      {
        sub_2993C727C(*(*(a1 + 256) + 96), *(*(a1 + 256) + 104), (v9 >> 6) & 8 | v9 & 0x20 | (v9 >> 4) & 0x10 | (v9 >> 7) & 6, *(a1 + 256), *(a1 + 200), buf);
        sub_2992726D0((a1 + 824));
        *(a1 + 824) = *&buf[8];
        *(a1 + 840) = v19;
        *&buf[16] = 0;
        v19 = 0;
        *(a1 + 848) = v20;
        *buf = &unk_2A1F74930;
        *&buf[8] = 0;
        *&v17 = &buf[8];
        sub_299259FC8(&v17);
        *(a1 + 848) = 0;
        v10 = *(a1 + 256);
        *(v10 + 184) = v7;
        if (*(a1 + 800))
        {
          v17 = *(v10 + 80);
          operator new();
        }

        if (*(a1 + 976) == 1)
        {
          gettimeofday((a1 + 984), 0);
          *(a1 + 977) = 1;
        }

        (*(*a1 + 200))(a1, a2, a3);
        sub_299312604(a1 + 952, 0);
        std::mutex::lock((a1 + 880));
        if (*(a1 + 944) == 2)
        {
          sub_299273BA0((a2 + 8));
          sub_29921ECBC((a2 + 48));
          std::mutex::unlock((a1 + 880));
        }

        else
        {
          std::mutex::unlock((a1 + 880));
          (*(*a1 + 272))(a1, a2);
          (*(*a1 + 208))(a1, a2, a3);
          if (*(a1 + 864))
          {
            (*(*a1 + 256))(a1, a2);
          }

          sub_2992AC684(a2, 12, "## Final ##", 0, 1);
          v11 = *(a2 + 48);
          v12 = *(a2 + 56) - v11;
          if (v12)
          {
            v13 = v12 >> 3;
            if (v13 <= 1)
            {
              v13 = 1;
            }

            v14 = 1;
            do
            {
              v15 = *v11++;
              *(v15 + 8) = v14++;
              --v13;
            }

            while (v13);
          }

          sub_2992161D8(a2);
        }
      }
    }
  }

  *(a1 + 876) = 1;
}

void sub_299316AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2992E6A00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299316B04(uint64_t a1, uint64_t a2)
{
  *(a1 + 876) = 0;
  sub_29932CB94(*(a1 + 176));
  result = sub_299315414(a1, a2, 0);
  if (result)
  {
    v5 = sub_299225D3C(a2, kMecabraContextOptionPrivateMode) != *MEMORY[0x29EDB8F00];

    return sub_2993158E4(a1, a2, v5);
  }

  return result;
}

uint64_t sub_299316B94(uint64_t a1)
{
  sub_29932CA50(*(a1 + 176), 1);
  result = *(a1 + 192);
  if (result)
  {
    v3 = *(*result + 120);

    return v3();
  }

  return result;
}

uint64_t sub_299316C04(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x7002000000;
  v18 = sub_299316E40;
  v19 = sub_299316EB0;
  v20 = &unk_2A1F65118;
  memset(v21, 0, sizeof(v21));
  v22 = 1065353216;
  memset(v23, 0, sizeof(v23));
  v3 = *(a1 + 800);
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 0x40000000;
  v14[2] = sub_299316F10;
  v14[3] = &unk_29EF12CE8;
  v14[4] = &v15;
  v14[5] = a1;
  sub_2993736D8(v3, a2, v14);
  (*(**(a1 + 16) + 56))(*(a1 + 16));
  v4 = v16[11];
  v5 = v16[12];
  while (v4 != v5)
  {
    v6 = *v4;
    *v4 = 0;
    v7 = sub_29928A270(v6);
    v11 = v7;
    if (*(a1 + 230) != 1 || !MecabraCandidateIsEmojiCandidate(v7, v8, v9, v10))
    {
      (*(**(a1 + 16) + 16))(*(a1 + 16), v11);
    }

    ++v4;
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), sub_2992E99C8, 1);
  v12 = *(*(a1 + 16) + 8);
  _Block_object_dispose(&v15, 8);
  v20 = &unk_2A1F65118;
  v24 = v23;
  sub_29921EC68(&v24);
  sub_29921ED28(v21);
  return v12;
}

void sub_299316E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  sub_29921D794(v15);
  _Unwind_Resume(a1);
}

__n128 sub_299316E40(void *a1, uint64_t a2)
{
  a1[5] = &unk_2A1F65118;
  sub_299318158((a1 + 6), (a2 + 48));
  a1[11] = 0;
  a1[12] = 0;
  a1[13] = 0;
  result = *(a2 + 88);
  *(a1 + 11) = result;
  a1[13] = *(a2 + 104);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  return result;
}

uint64_t sub_299316EB0(uint64_t a1)
{
  *(a1 + 40) = &unk_2A1F65118;
  v3 = (a1 + 88);
  sub_29921EC68(&v3);
  return sub_29921ED28(a1 + 48);
}

uint64_t sub_299316F10(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 40) + 176))(*(a1 + 40));
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = (*(*(a1 + 32) + 8) + 40);

  return sub_29931BF18(v4, v7, v5, v6, a2, 1000, 0, 0);
}

void sub_299316F8C(const void *a1, uint64_t a2, int *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = sub_2993652F8(0xDu);
  v7 = os_signpost_id_make_with_pointer(v6, a1);
  v8 = sub_2993652F8(0xDu);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v8))
    {
      v10 = *a3;
      v11[0] = 67109120;
      v11[1] = v10;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "MecabraEngineOpen", "Open MecabraEngine with input method: %d", v11, 8u);
    }
  }

  sub_2992601BC(a2);
}

void sub_2993172E0(uint64_t a4@<X8>)
{
  *a4 = &unk_2A1F65118;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 1065353216;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 48) = 0;
  v4 = &unk_2A1F65118;
  v5 = 0u;
  v6 = 0u;
  v7 = 1065353216;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  operator new();
}

void sub_29931747C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v10 + 8))(v10, a2, a3, a4, a5, a6, a7, a8);
  sub_29921D794(&a9);
  sub_29921D794(v9);
  _Unwind_Resume(a1);
}

void sub_299317504(void *a1, void *a2, const void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a1[98];
  if (v7)
  {
    sub_2992A3108(v7, a5, a6, &v15);
    v11 = v15;
    v12 = v16;
    if (v15 != v16)
    {
      v13 = 12000;
      do
      {
        v14 = (*(*a1 + 176))(a1);
        sub_29931A61C(v14, a2, a3, a4, *v11, v11[1], v11[2], v11[3], 0.0, 0, 0, v13, 0, 0, 1, 65, 0, 1);
        v11 += 7;
        ++v13;
      }

      while (v11 != v12);
      v11 = v15;
    }

    if (v11)
    {
      v16 = v11;
      operator delete(v11);
    }
  }
}

void sub_299317604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299317620(void *a1, void *a2, const void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a1[99];
  if (v7)
  {
    sub_2992A3108(v7, a5, a6, &v15);
    v11 = v15;
    v12 = v16;
    if (v15 != v16)
    {
      v13 = 7000;
      do
      {
        v14 = (*(*a1 + 176))(a1);
        sub_29931A61C(v14, a2, a3, a4, *v11, v11[1], v11[2], v11[3], 0.0, 0, 0, v13, 0, 0, 1, 85, 0, 1);
        v11 += 7;
        ++v13;
      }

      while (v11 != v12);
      v11 = v15;
    }

    if (v11)
    {
      v16 = v11;
      operator delete(v11);
    }
  }
}

void sub_299317720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29931773C(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a1 + 800))
  {
    v2 = *(a1 + 256);
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = *(v2 + 112);
    v6 = *(v2 + 120);
    v9 = 0;
    v7 = (a1 + 184);
    sub_2993C727C(v3, v4, (*(a1 + 184) >> 6) & 8 | *(a1 + 184) & 0x20 | (*(a1 + 184) >> 4) & 0x10 | (*(a1 + 184) >> 7) & 6, v2, *(a1 + 200), v8);
    v12 = v3;
    v13 = v4;
    v10 = v5;
    v11 = v6;
    if ((*v7 & 2) == 0)
    {
      operator new();
    }

    operator new();
  }
}

void sub_299317924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void ***);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  sub_2992E6A00(va2);
  va_copy(v10, va);
  sub_299259FC8(va1);
  _Unwind_Resume(a1);
}

void sub_29931797C(uint64_t a1, void *a2, const void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (std::mutex::try_lock((a1 + 720)))
  {
    sub_299317504(a1, a2, a3, a4, a5, a6);
    sub_299317620(a1, a2, a3, a4, a5, a6);
    sub_29931773C(a1, a2);

    std::mutex::unlock((a1 + 720));
  }
}

void sub_299317A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::mutex::lock((a1 + 880));
  v10 = *(a1 + 944);
  std::mutex::unlock((a1 + 880));
  if (v10 != 2)
  {
    std::mutex::lock((a1 + 720));
    (*(*a1 + 280))(a1, a2, a3, a4, a5);
    (*(**(a1 + 192) + 72))(*(a1 + 192));

    std::mutex::unlock((a1 + 720));
  }
}

void sub_299317B54(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 880));
  v4 = *(a1 + 944);
  std::mutex::unlock((a1 + 880));
  if (v4 != 2)
  {
    v5 = *(a1 + 256);
    if ((*(a1 + 809) & 1) == 0)
    {
      v6 = *(a1 + 704);
      if (*(v5[23] + 32) == 1)
      {
        sub_2993D9588(v6, a2, *(a1 + 256));
      }

      else
      {
        sub_2993D9098(v6, a2, (v5 + 10), v5[14], v5[15]);
      }

      if ((*(a1 + 184) & 0x20) != 0)
      {
        sub_2993D9098(*(a1 + 704), a2, (v5 + 10), v5[12], v5[13]);
      }
    }

    sub_2993BF09C(*(a1 + 712), a2, (v5 + 10));
    if ((*(a1 + 187) & 2) == 0)
    {
      v7 = v5[12];
      v8 = v5[13];
      v9 = v5[14];
      v10 = v5[15];

      sub_29931797C(a1, a2, v7, v8, v9, v10);
    }
  }
}

void sub_299317C40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  for (i = *(a2 + 56); v2 != i; ++v2)
  {
    if ((*(**v2 + 96))() != 83)
    {
      (*(**v2 + 392))(*v2);
      (*(**v2 + 112))();
      sub_299237120();
      (*(**v2 + 480))();
    }
  }
}

__CFDictionary *sub_299317D8C(void *a1, int a2, const __CFDictionary *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    if (a2 == 2)
    {
      v9 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      v16 = v9;
      v10 = a1[18];
      v11 = a1[19];
      while (v10 != v11)
      {
        v12 = (*v10 + *(**v10 - 32));
        v13 = (**v12)(v12);
        v14 = sub_29928A270(v13);
        CFArrayAppendValue(v9, v14);

        ++v10;
      }

      CFDictionarySetValue(Mutable, @"candidates", v9);
      if (v9)
      {
        CFRelease(v9);
      }
    }

    else if (a2 == 1)
    {
      Value = CFDictionaryGetValue(a3, @"wordListFile");
      if (Value)
      {
        sub_299277A90(Value, &v16);
        v8 = v16;
        (*(*a1 + 144))(a1, v16);
        if (v8)
        {
          MEMORY[0x29C29BF70](v8, 0x1000C8077774924);
        }
      }
    }
  }

  return Mutable;
}

void sub_299317F1C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (v10)
  {
    MEMORY[0x29C29BF70](v10, 0x1000C8077774924, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void *sub_299317F74(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[4] = 0;
  a1[3] = 0;
  *a1 = &unk_2A1F6F7C8;
  a1[5] = 0;
  a1[6] = 0;
  sub_29931801C(a1 + 4, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

void sub_299317FE4(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2A1F6F788;
  v3 = v1[1];
  if (v3)
  {
    v1[2] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29931801C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_29921EDFC(result, a4);
  }

  return result;
}

void sub_299318084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29920E060(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_2993180A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_299215EC0(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 1);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_2992233CC(v8);
  return v4;
}

uint64_t sub_299318158(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t *sub_2993181C8(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_29921ED28(v2 + 144);
    if (*(v2 + 79) < 0)
    {
      operator delete(*(v2 + 56));
    }

    if (*(v2 + 55) < 0)
    {
      operator delete(*(v2 + 32));
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t *sub_299318258(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_29925BCBC(v2 + 8);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void sub_2993182B8(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

__n128 sub_299318374(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F70938;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2993183B4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a2 + 8);
  if (v6 == *(v5 + 8))
  {
    v7 = 2 * (memcmp(*a2, *v5, 2 * v6) != 0);
  }

  else
  {
    v7 = 2;
  }

  v8 = sub_2992FE1C4(a2, v5);
  v9 = (*(*v4 + 176))(v4);
  result = sub_29931BF18(v9, *(a1 + 24), **(a1 + 32), *(*(a1 + 32) + 8), a2, **(a1 + 40) + 1000, v7, !v8);
  ++**(a1 + 40);
  return result;
}

uint64_t sub_29931848C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F70998))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29931855C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F709B8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29931859C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = v6 != *(v4 + 8) || memcmp(*a2, *v4, 2 * v6) != 0;
  v8 = (*(*v5 + 176))(v5);
  result = sub_29931BF18(v8, *(a1 + 24), **(a1 + 32), *(*(a1 + 32) + 8), a2, **(a1 + 40) + 1000, 0, v7);
  ++**(a1 + 40);
  return result;
}

uint64_t sub_299318658(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F70A18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_299318728(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F70A38;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_299318768(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 8);
  v6 = *(a1 + 8);
  v7 = *(v6 + 8);
  v8 = sub_2992FE1C4(a2, v6);
  v9 = v8;
  v10 = **(a1 + 16) + 1000;
  v11 = 2 * (v5 != v7);
  if (v5 != v7 && !v8)
  {
    if (v5 && (**a2 & 0xFFDFu) - 65 <= 0x19)
    {
      v7 = (*(**(a1 + 24) + 24))(*(a1 + 24));
    }

    if (v7 >= 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = 20000;
    }

    v10 += v12;
    v11 = 2;
  }

  v13 = (*(*v4 + 176))(v4);
  result = sub_29931BF18(v13, *(a1 + 40), **(a1 + 48), *(*(a1 + 48) + 8), a2, v10, v11, !v9);
  ++**(a1 + 16);
  return result;
}

uint64_t sub_299318890(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F70A98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_299318960(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F70AB8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2993189A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = v6 != *(v4 + 8) || memcmp(*a2, *v4, 2 * v6) != 0;
  v8 = (*(*v5 + 176))(v5);
  result = sub_29931BF18(v8, *(a1 + 24), **(a1 + 32), *(*(a1 + 32) + 8), a2, **(a1 + 40) + 1000, 0, v7);
  ++**(a1 + 40);
  return result;
}

uint64_t sub_299318A5C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F70B18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

id sub_299318AA8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v5 = objc_msgSend_length(a1, a2, a3, a4);
  if (v5 != 1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3052000000;
    v12 = sub_299318BB0;
    v13 = sub_299318BC0;
    v14 = 0;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = sub_299318BCC;
    v8[3] = &unk_29EF0FF10;
    v8[4] = &v9;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v4, v6, 0, v5, 2, v8);
    v4 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return v4;
}

void sub_299318B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_299318BCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = objc_msgSend_copy(a2, a2, a3, a4, a5, a6);
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a7 = 1;
  return result;
}

void *sub_299318C0C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v29 = *MEMORY[0x29EDCA608];
  v6 = objc_msgSend_array(MEMORY[0x29EDB8DE8], a2, a3, a4);
  v9 = objc_msgSend_componentsSeparatedByString_(a1, v7, @" ", v8);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v24, v28, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        if (!objc_msgSend_hasPrefix_(v17, v12, @"s:", v13))
        {
          if (objc_msgSend_hasPrefix_(v17, v12, @"t:", v13))
          {
            v19 = @"t:";
            if (v4 == 1)
            {
              continue;
            }

LABEL_12:
            v20 = objc_msgSend_length(v19, v12, v18, v13);
            v17 = objc_msgSend_substringFromIndex_(v17, v21, v20, v22);
          }

          objc_msgSend_addObject_(v6, v12, v17, v13);
          continue;
        }

        if (v4 != 2)
        {
          v19 = @"s:";
          if (v4 != 5)
          {
            goto LABEL_12;
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v24, v28, 16);
    }

    while (v14);
  }

  return v6;
}

uint64_t sub_299318D98(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  if ((a3 - 5) <= 0xFFFFFFFFFFFFFFFBLL)
  {
    v41 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], a2, a3, a4);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v41, v42, a2, v5, @"NSString+CharacterInformationAdditions.mm", 89, @"Invalid parameter not satisfying: %@", @"toneNumber >= 1 && toneNumber <= 4");
  }

  else
  {
    v10 = a1;
    if (objc_msgSend_rangeOfString_(a1, a2, @"v", a4) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v5, v7, @"v", @"ü");
    }

    if (qword_2A1460FA8 != -1)
    {
      dispatch_once(&qword_2A1460FA8, &unk_2A1F70B38);
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = sub_2993190DC;
    block[3] = &unk_29EF12DB8;
    block[4] = v5;
    block[5] = a2;
    if (qword_2A1460FB8 != -1)
    {
      dispatch_once(&qword_2A1460FB8, block);
    }

    if (qword_2A1460FA0 && qword_2A1460FB0)
    {
      v11 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x29EDB9F50], v7, v8, v9);
      v17 = objc_msgSend_rangeOfCharacterFromSet_(v10, v12, v11, v13);
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = objc_msgSend_length(v10, v14, v15, v16);
      }

      v18 = objc_msgSend_rangeOfCharacterFromSet_options_range_(v10, v14, qword_2A1460FA0, 1, 0, v17);
      v20 = objc_msgSend_rangeOfCharacterFromSet_options_range_(v10, v19, qword_2A1460FA0, 5, 0, v17);
      if (v18 != 0x7FFFFFFFFFFFFFFFLL && v20 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = v20 - v18;
        if (v20 >= v18)
        {
          v23 = objc_msgSend_substringWithRange_(v10, v21, v18, v22 + 1);
          v27 = objc_msgSend_mutableCopy(v23, v24, v25, v26);
          if (objc_msgSend_objectForKey_(qword_2A1460FB0, v28, v27, v29))
          {
            v32 = objc_msgSend_objectForKey_(qword_2A1460FB0, v30, v27, v31);
            v36 = objc_msgSend_unsignedIntegerValue(v32, v33, v34, v35) + 1;
          }

          else
          {
            v36 = 0x8000000000000000;
          }

          v43 = word_2994168E4[a3 - 1];
          v37 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x29EDBA0F8], v30, &v43, 1);
          objc_msgSend_insertString_atIndex_(v27, v38, v37, v36);
          CFStringNormalize(v27, kCFStringNormalizationFormC);
          return objc_msgSend_stringByReplacingCharactersInRange_withString_(v10, v39, v18, v22 + 1, v27);
        }
      }
    }
  }

  return v5;
}

void sub_299319044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    objc_msgSend_callStackSymbols(v9, v10, v11, v12);
    NSLog(&stru_2A1F815A8.isa);
    objc_end_catch();
    JUMPOUT(0x299318FBCLL);
  }

  _Unwind_Resume(exception_object);
}

id sub_2993190A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x29EDB9F50], a2, @"aeiouü", a4);
  qword_2A1460FA0 = result;
  return result;
}

void *sub_2993190DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v22[8] = xmmword_29EF12D88;
  v22[9] = *off_29EF12D98;
  v23 = @"üe";
  v22[4] = xmmword_29EF12D48;
  v22[5] = *&off_29EF12D58;
  v22[6] = xmmword_29EF12D68;
  v22[7] = *&off_29EF12D78;
  v22[0] = xmmword_29EF12D08;
  v22[1] = *&off_29EF12D18;
  v22[2] = xmmword_29EF12D28;
  v22[3] = *&off_29EF12D38;
  v9[0] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], a2, 0, a4);
  v9[1] = v9[0];
  v9[2] = v9[0];
  v9[3] = v9[0];
  v9[4] = v9[0];
  v9[5] = v9[0];
  v9[6] = v9[0];
  v9[7] = v9[0];
  v9[8] = v9[0];
  v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v4, 1, v5);
  v11 = v10;
  v12 = v10;
  v13 = v10;
  v14 = v10;
  v15 = v9[0];
  v16 = v10;
  v17 = v10;
  v18 = v10;
  v19 = v10;
  v20 = v10;
  v21 = v10;
  v6 = objc_alloc(MEMORY[0x29EDB8DC0]);
  result = objc_msgSend_initWithObjects_forKeys_count_(v6, v7, v9, v22, 21);
  qword_2A1460FB0 = result;
  return result;
}

uint64_t sub_2993191E0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_length(a1, a2, a3, a4);
  if (qword_2A1460FD8 != -1)
  {
    dispatch_once(&qword_2A1460FD8, &unk_2A1F70B78);
  }

  v8 = qword_2A1460FD0;

  return objc_msgSend_compare_options_range_locale_(a1, v6, a3, 512, 0, v7, v8);
}

uint64_t sub_299319268(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_length(a1, a2, a3, a4);
  if (qword_2A1460FE8 != -1)
  {
    dispatch_once(&qword_2A1460FE8, &unk_2A1F70B98);
  }

  v8 = qword_2A1460FE0;

  return objc_msgSend_compare_options_range_locale_(a1, v6, a3, 512, 0, v7, v8);
}

uint64_t sub_2993192F0(void *a1, const char *a2, void *a3, uint64_t a4)
{
  v7 = objc_msgSend_length(a1, a2, a3, a4);
  if (qword_2A1460FE8 != -1)
  {
    dispatch_once(&qword_2A1460FE8, &unk_2A1F70B98);
  }

  v8 = objc_msgSend_compare_options_range_locale_(a1, v6, a3, 512, 0, v7, qword_2A1460FE0);
  v12 = objc_msgSend_length(a1, v9, v10, v11);
  if (v12)
  {
    v16 = v12;
    if (v12 == objc_msgSend_length(a3, v13, v14, v15))
    {
      v19 = v16 - 1;
      v20 = objc_msgSend_substringToIndex_(a1, v17, v19, v18);
      v23 = objc_msgSend_substringToIndex_(a3, v21, v19, v22);
      if (objc_msgSend_isEqualToString_(v20, v24, v23, v25))
      {
        v28 = objc_msgSend_substringFromIndex_(a1, v26, v19, v27);
        v33 = objc_msgSend_substringFromIndex_(a3, v29, v19, v30);
        v34 = 0;
        while (1)
        {
          v35 = off_29EF12DD8[v34];
          isEqualToString = objc_msgSend_isEqualToString_(v35, v31, v28, v32);
          v39 = objc_msgSend_isEqualToString_(v35, v37, v33, v38);
          if (isEqualToString)
          {
            return v39 - 1;
          }

          if (v39)
          {
            break;
          }

          if (++v34 == 5)
          {
            return v8;
          }
        }

        return 1;
      }
    }
  }

  return v8;
}

__CFString *sub_299319448(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_mutableCopy(a1, a2, a3, a4);
  CFStringTransform(v4, 0, *MEMORY[0x29EDB8FF0], 0);
  return v4;
}

__CFString *sub_29931948C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_length(a1, a2, a3, a4);
  if (!v5)
  {
    return &stru_2A1F7E6E8;
  }

  v8 = v5 - 1;
  v9 = objc_msgSend_characterAtIndex_(a1, v6, v5 - 1, v7);
  result = objc_msgSend_substringToIndex_(a1, v10, v8, v11);
  v15 = result;
  if ((v9 - 49) > 3)
  {
    if (v9 != 53)
    {
      return a1;
    }
  }

  else
  {
    v16 = objc_msgSend_characterAtIndex_(a1, v13, v8, v14) - 48;
    v18 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v15, v17, @"v", @"ü");

    return MEMORY[0x2A1C70FE8](v18, sel_stringByApplyingPinyinToneMarkToFirstSyllableWithToneNumber_, v16, v19);
  }

  return result;
}

__CFString *sub_299319550(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v5 = objc_msgSend_length(a1, a2, a3, a4);
  if (!v5)
  {
    return &stru_2A1F7E6E8;
  }

  v8 = v5 - 1;
  v9 = objc_msgSend_characterAtIndex_(v4, v6, v5 - 1, v7);
  if ((v9 - 49) <= 4)
  {
    v13 = v9;
    v17 = objc_msgSend_substringToIndex_(v4, v10, v8, v12);
    if (qword_2A1460FF8 != -1)
    {
      dispatch_once(&qword_2A1460FF8, &unk_2A1F70BB8);
    }

    v18 = qword_2A1460FF0;
    v19 = objc_msgSend_lowercaseString(v17, v14, v15, v16);
    v22 = objc_msgSend_objectForKey_(v18, v20, v19, v21);
    if (objc_msgSend_length(v22, v23, v24, v25))
    {
      v28 = off_29EF12DD8[(v13 & 7) - 1];

      return objc_msgSend_stringByAppendingString_(v22, v26, v28, v27);
    }

    return v4;
  }

  if (qword_2A1460FF8 != -1)
  {
    dispatch_once(&qword_2A1460FF8, &unk_2A1F70BB8);
  }

  v30 = qword_2A1460FF0;
  v32 = objc_msgSend_lowercaseString(v4, v10, v11, v12);

  return objc_msgSend_objectForKey_(v30, v31, v32, v33);
}

__CFString *sub_2993196A4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_length(a1, a2, a3, a4);
  if (result)
  {
    return off_29EF12DD8[objc_msgSend_characterAtIndex_(a1, v6, &result[-1].length + 7, v7) - 49];
  }

  return result;
}

void *sub_2993196EC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (qword_2A1460FC8 != -1)
  {
    dispatch_once(&qword_2A1460FC8, &unk_2A1F70B58);
  }

  v5 = objc_msgSend_length(a1, a2, a3, a4);
  v11 = objc_msgSend_string(MEMORY[0x29EDBA050], v6, v7, v8);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v13 = objc_msgSend_characterAtIndex_(a1, v9, i, v10);
      if (v13 - 49 <= 4)
      {
        v14 = objc_msgSend_objectAtIndex_(qword_2A1460FC0, v9, v13 - 49, v10);
        objc_msgSend_appendFormat_(v11, v15, @"%@", v16, v14);
      }
    }
  }

  return v11;
}

void *sub_2993197C4()
{
  v0 = objc_alloc(MEMORY[0x29EDB8D80]);
  result = objc_msgSend_initWithObjects_(v0, v1, @"⼀", v2, @"⼁", @"⼃", @"⼂", @"乛", 0);
  qword_2A1460FC0 = result;
  return result;
}

void *sub_29931982C()
{
  v0 = objc_alloc(MEMORY[0x29EDB8DE0]);
  result = objc_msgSend_initWithLocaleIdentifier_(v0, v1, @"zh-Hans", v2);
  qword_2A1460FD0 = result;
  return result;
}

void *sub_299319860()
{
  v0 = objc_alloc(MEMORY[0x29EDB8DE0]);
  result = objc_msgSend_initWithLocaleIdentifier_(v0, v1, @"zh-Hant", v2);
  qword_2A1460FE0 = result;
  return result;
}

void sub_299319894(uint64_t a1)
{
  v1 = sub_29936C2B8();
  v2 = sub_29936C3FC(v1, 3, off_2A145F738[0], off_2A145F6F8[0], 0);
  v3 = v2[23];
  if (v3 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = v2[23];
  }

  else
  {
    v5 = *(v2 + 1);
  }

  v6 = CFURLCreateFromFileSystemRepresentation(0, v4, v5, 0);
  v7 = objc_alloc(MEMORY[0x29EDB8DC0]);
  qword_2A1460FF0 = objc_msgSend_initWithContentsOfURL_(v7, v8, v6, v9);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t sub_299319940(int a1, CFStringRef theString, char a3)
{
  if ((atomic_load_explicit(&qword_2A1461010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461010))
  {
    qword_2A1461008 = sub_299237120();
    __cxa_guard_release(&qword_2A1461010);
  }

  __p = 0;
  v27 = 0;
  v28 = 0;
  Length = CFStringGetLength(theString);
  if (Length)
  {
    if (!(Length >> 60))
    {
      sub_29927F5A0(&__p, Length);
    }

    sub_299212A8C();
  }

  if (!a1 && (*qword_2A1461008 & 1) == 0)
  {
    CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
    v19 = 0;
    goto LABEL_45;
  }

  v6 = sub_299319F04();
  if (a1 || (a3 & 1) != 0)
  {
    if (a1 == 4)
    {
      v6 = qword_2A1461020;
      if (!qword_2A1461020)
      {
        v8 = sub_299319F04();
        qword_2A1461020 = CFCharacterSetCreateMutableCopy(0, v8);
        CFCharacterSetRemoveCharactersInString(qword_2A1461020, @"'‘’");
        v6 = qword_2A1461020;
      }
    }
  }

  else
  {
    v6 = qword_2A1461018;
    if (!qword_2A1461018)
    {
      v7 = sub_299319F04();
      qword_2A1461018 = CFCharacterSetCreateMutableCopy(0, v7);
      CFCharacterSetRemoveCharactersInString(qword_2A1461018, @"(<[{（＜［｛「『【〈《");
      CFCharacterSetRemoveCharactersInString(qword_2A1461018, @"、");
      v6 = qword_2A1461018;
    }
  }

  sub_299276BDC(theString, v25);
  v23 = 0;
  theStringa = 0;
  cf = 0;
  if (__p == v27 || (v9 = *MEMORY[0x29EDB8EE8], v10 = CFStringCreateWithCharactersNoCopy(0, v25[0] + *__p, *(__p + 1), *MEMORY[0x29EDB8EE8]), v11 = __p, theStringa = v10, v27 == __p))
  {
    v19 = 0;
    goto LABEL_41;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v19 = 0;
  do
  {
    v15 = &v11[v12];
    v29.location = *v15;
    v16 = v15[1];
    v29.length = v16;
    if (CFStringFindCharacterFromSet(theString, v6, v29, 0, 0))
    {
      break;
    }

    if (v14 != ((v27 - __p) >> 4) - 1)
    {
      v23 = CFStringCreateWithCharactersNoCopy(0, v25[0] + *(__p + v12 + 16), *(__p + v12 + 24), v9);
    }

    if (CFStringGetLength(v10))
    {
      v13 = theStringa;
      CharacterAtIndex = CFStringGetCharacterAtIndex(theStringa, 0);
      v18 = cf;
      if (!cf)
      {
        v10 = v23;
        if (CharacterAtIndex == 32)
        {
          if (!v23)
          {
            goto LABEL_41;
          }

          v30.length = CFStringGetLength(v23);
          v30.location = 0;
          if (CFStringFindCharacterFromSet(v23, v6, v30, 0, 0))
          {
            goto LABEL_39;
          }
        }

        goto LABEL_34;
      }

      if (CharacterAtIndex == 32 && sub_299319F78(cf) && (sub_299319F78(v23) & 1) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v18 = cf;
      v13 = theStringa;
      if (!cf)
      {
        v10 = v23;
LABEL_34:
        cf = v13;
        goto LABEL_35;
      }
    }

    CFRelease(v18);
    cf = v13;
    v10 = v23;
LABEL_35:
    v23 = 0;
    theStringa = v10;
    v19 += v16;
    ++v14;
    v11 = __p;
    v12 += 16;
  }

  while (v14 < (v27 - __p) >> 4);
  if (!v13)
  {
    goto LABEL_41;
  }

  v18 = v13;
LABEL_38:
  CFRelease(v18);
  v10 = v23;
  if (!v23)
  {
    goto LABEL_41;
  }

LABEL_39:
  CFRelease(v10);
LABEL_41:
  if (theStringa)
  {
    CFRelease(theStringa);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

LABEL_45:
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  return v19;
}

uint64_t sub_299319F04()
{
  result = qword_2A1461000;
  if (!qword_2A1461000)
  {
    Mutable = CFCharacterSetCreateMutable(0);
    qword_2A1461000 = Mutable;
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
    CFCharacterSetUnion(Mutable, Predefined);
    v3 = qword_2A1461000;
    v4 = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
    CFCharacterSetUnion(v3, v4);
    CFCharacterSetRemoveCharactersInString(qword_2A1461000, @"'- ");
    return qword_2A1461000;
  }

  return result;
}

uint64_t sub_299319F78(const __CFString *a1)
{
  if (!a1)
  {
    return 1;
  }

  Length = CFStringGetLength(a1);
  v3 = Length - 1;
  if (Length < 1)
  {
    return 1;
  }

  v4 = Length;
  v5 = 0;
  while (1)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v5);
    if (CharacterAtIndex >> 10 == 54 && v5 < v3)
    {
      LOWORD(CharacterAtIndex) = CFStringGetCharacterAtIndex(a1, ++v5) + (CharacterAtIndex << 10) + 9216;
    }

    if (!u_hasBinaryProperty(CharacterAtIndex, UCHAR_IDEOGRAPHIC) && u_getIntPropertyValue(CharacterAtIndex, UCHAR_EAST_ASIAN_WIDTH) != 3 && !uscript_hasScript())
    {
      result = uscript_hasScript();
      if (!result)
      {
        break;
      }
    }

    if (++v5 >= v4)
    {
      return 1;
    }
  }

  return result;
}

void *sub_29931A05C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = sub_299237120();
  sub_299255778(0);
  a1[2] = &qword_2A1461DC0;
  a1[3] = sub_299277498(0);
  return a1;
}

uint64_t sub_29931A0AC(int a1, const void *a2, const void *a3, const void *a4, unint64_t a5, const void *a6, const void *a7, __int16 a8, double a9, __int16 a10, int a11, int a12, int a13, int a14, int a15, char a16)
{
  if (a6 || !a7)
  {
    if (a3)
    {
      v16 = a2 == 0;
    }

    else
    {
      v16 = 0;
    }

    if (!v16 && a5 <= 0xFF)
    {
      operator new();
    }
  }

  return 0;
}

void sub_29931A240(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C29BFB0](v14, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_29931A270(uint64_t a1, void *a2, const void *a3, unint64_t a4, unsigned __int16 *a5, const void *a6)
{
  v24[4] = *MEMORY[0x29EDCA608];
  v12 = *(*(a1 + 16) + 48);
  sub_299279CA4(a5, a6, &__p);
  v13 = sub_29931A0AC(0, __p, ((v22 - __p) >> 1), a3, a4, a5, a6, v12, 0.0, v12, 0, 0, 83, 0, **a1, 1);
  v14 = v13;
  v20 = v13;
  if (!v13)
  {
    goto LABEL_13;
  }

  v23 = v13;
  v15 = sub_29927363C(a2 + 1, &v23);
  if (!v15)
  {
    v18 = *(*(a1 + 8) + 432);
    goto LABEL_10;
  }

  v16 = v15[3];
  v17 = *(*(a1 + 8) + 432);
  v18 = *(*(a1 + 8) + 432);
  if (v16 == -1)
  {
LABEL_10:
    v17 = v18;
    goto LABEL_11;
  }

  if (*(*(a1 + 8) + 432))
  {
    v19 = v16 >= v17;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
LABEL_11:
    v14[1] = v17;
    (*(*v14 + 528))(v14, 3, "Adding a single dynamic word candidate", 1);
    v24[0] = &unk_2A1F65308;
    v24[3] = v24;
    sub_2992AB710(a2, &v20, 0, 0, v24);
    sub_29921F128(v24);
    v14 = v20;
    v20 = 0;
    if (!v14)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v20 = 0;
LABEL_12:
  (*(*v14 + 16))(v14);
LABEL_13:
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }
}

void sub_29931A47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_29921F128(va);
  if (a13)
  {
    (*(*a13 + 16))(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29931A4F0(uint64_t a1, void *a2, const void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  v12 = *(*(a1 + 16) + 48);
  v13 = __p;
  sub_299279CFC(a5, a6, __p);
  v14 = v17;
  if (v17 < 0)
  {
    v13 = __p[0];
  }

  if (v17 >= 0)
  {
    v15 = v17;
  }

  else
  {
    v15 = __p[1];
  }

  if (a6 != v15 || memcmp(a5, v13, 2 * a6))
  {
    sub_29931A61C(a1, a2, a3, a4, a5, a6, v13, v15, 0.0, v12, v12, 0, 0, 1023, 1, 83, 0, 2);
    v14 = v17;
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29931A600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29931A61C(int **a1, void *a2, const void *a3, unint64_t a4, const void *a5, const void *a6, const void *a7, const void *a8, double a9, __int16 a10, __int16 a11, int a12, int a13, int a14, char a15, int a16, int a17, int a18)
{
  v29[4] = *MEMORY[0x29EDCA608];
  HIDWORD(v20) = a16 - 65;
  LODWORD(v20) = a16 - 65;
  v19 = v20 >> 2;
  if (v19 > 6)
  {
    v21 = 0;
  }

  else
  {
    v21 = dword_2994168EC[v19];
  }

  v22 = sub_29931A0AC(v21, a7, a8, a3, a4, a5, a6, a10, a9, a11, a12, a13, a16, a17, **a1, a15);
  v28 = v22;
  if (!v22)
  {
    return 0;
  }

  v22[1] = a14;
  (*(*v22 + 528))(v22, 3, "Adding a single dynamic word candidate", 1);
  v29[0] = &unk_2A1F65308;
  v29[3] = v29;
  v23 = sub_2992AB710(a2, &v28, a18, 0, v29);
  sub_29921F128(v29);
  if ((v23 & 1) == 0)
  {
    v24 = sub_2993652F8(3u);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_29918C000, v24, OS_LOG_TYPE_DEBUG, " ∟ Rejected", buf, 2u);
    }
  }

  v25 = v28;
  v28 = 0;
  if (v25)
  {
    (*(*v25 + 16))(v25);
  }

  return v23;
}

void sub_29931A808(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a15)
  {
    (*(*a15 + 16))(a15, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29931A858(uint64_t a1, void *a2, const void *a3, unint64_t a4, const void *a5, const void *a6)
{
  v6 = *(*(a1 + 8) + 440);
  v8 = *(*(a1 + 16) + 48);
  return sub_29931A61C(a1, a2, a3, a4, a5, a6, a5, a6, 0.0, v8, v8, *(&v8 + 2), HIWORD(v8), v6 & ~(v6 >> 31), 1, 83, 0, 2);
}

void sub_29931A8BC(uint64_t a1, const UniChar *a2, unint64_t a3, int a4, uint64_t a5)
{
  v8 = a2;
  v10 = *MEMORY[0x29EDB8ED8];
  v11 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x29EDB8ED8], a2, a3, *MEMORY[0x29EDB8EE8]);
  Length = CFStringGetLength(v11);
  MutableCopy = CFStringCreateMutableCopy(v10, Length, v11);
  CFStringNormalize(MutableCopy, kCFStringNormalizationFormKC);
  v14 = sub_2992814C0(MutableCopy);
  if (CFStringCompare(MutableCopy, v14, 0) == kCFCompareEqualTo)
  {
    goto LABEL_78;
  }

  if (CFStringCompare(v11, MutableCopy, 0))
  {
    if (CFStringCompare(v11, v14, 0))
    {
      (*(a5 + 16))(a5, v11, 0, 0);
      goto LABEL_78;
    }

    v27 = CFStringGetLength(v11);
    v16 = CFStringCreateMutableCopy(v10, v27, v11);
    v28 = CFStringGetLength(v11);
    v29 = CFStringCreateMutableCopy(v10, v28, v11);
    CFStringLowercase(v16, *(a1 + 24));
    CFStringUppercase(v29, *(a1 + 24));
    v30 = CFStringCompare(v16, v11, 0);
    v49 = CFStringCompare(v29, v11, 0);
    if (**(a1 + 8))
    {
      v31 = 0;
    }

    else
    {
      v31 = 0;
      if (v8 && a3)
      {
        v33 = a3 - 1;
        do
        {
          v34 = *v8++;
          v35 = (v34 + 240);
          v36 = (v34 - 48) >= 0xA && v35 >= 0xA;
          v31 = !v36;
          v36 = v33-- != 0;
          v37 = v36;
        }

        while (v31 == 1 && (v37 & 1) != 0);
      }
    }

    (*(a5 + 16))(a5, v11, 0, v31);
    if (v30)
    {
      (*(a5 + 16))(a5, v16, 0, 0);
    }

    if (v49)
    {
      (*(a5 + 16))(a5, v29, 0, 0);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    if (v16)
    {
      goto LABEL_77;
    }

    goto LABEL_78;
  }

  v15 = CFStringGetLength(v11);
  v16 = CFStringCreateMutableCopy(v10, v15, v11);
  v17 = CFStringGetLength(v11);
  v18 = CFStringCreateMutableCopy(v10, v17, v11);
  CFStringLowercase(v16, *(a1 + 24));
  CFStringUppercase(v18, *(a1 + 24));
  v48 = CFStringCompare(v16, v11, 0);
  v47 = CFStringCompare(v18, v11, 0);
  v19 = *(a1 + 8);
  if (!a3)
  {
    v32 = 0;
    v25 = (a4 - 23) > 0xFFFFFFFB;
    if ((a4 - 23) > 0xFFFFFFFB)
    {
      v26 = v48;
      goto LABEL_70;
    }

    v26 = v48;
    if (v48 == kCFCompareEqualTo)
    {
      goto LABEL_70;
    }

    goto LABEL_29;
  }

  v46 = *(a1 + 8);
  v20 = *v8;
  if ((v20 - 12353) >= 0x56)
  {
    v21 = 1;
    v22 = *v8;
    v23 = 1;
    do
    {
      if (v22 == 12316 || v22 == 12540)
      {
        break;
      }

      v23 = v21 < a3;
      if (a3 == v21)
      {
        break;
      }

      v22 = v8[v21++];
    }

    while ((v22 - 12353) >= 0x56);
    if (!v23)
    {
      if ((a4 - 19) < 4)
      {
        v25 = 1;
        goto LABEL_16;
      }

      v38 = 2 * a3;
      v39 = v8;
      v26 = v48;
      do
      {
        v40 = *v39;
        if (v40 == 46 || v40 == 64)
        {
          v25 = 1;
          goto LABEL_55;
        }

        ++v39;
        v38 -= 2;
      }

      while (v38);
      if (u_isupper(v20) || a3 != 1 && u_isupper(v8[1]))
      {
        v25 = *(v46 + 418);
        goto LABEL_55;
      }

      v19 = v46;
      if (v48 == kCFCompareEqualTo)
      {
        v25 = 0;
        goto LABEL_55;
      }

LABEL_29:
      v25 = *(v19 + 420);
      goto LABEL_55;
    }
  }

  v25 = 0;
LABEL_16:
  v26 = v48;
LABEL_55:
  v32 = 0;
  if (a3 && v8 && (**(a1 + 8) & 1) == 0)
  {
    v41 = a3 - 1;
    do
    {
      v42 = *v8++;
      v43 = (v42 + 240);
      v32 = (v42 - 48) < 0xA || v43 < 0xA;
      v36 = v41-- != 0;
      v45 = v36;
    }

    while (v32 && (v45 & 1) != 0);
  }

LABEL_70:
  (*(a5 + 16))(a5, v11, v25, v32);
  if (v26)
  {
    (*(a5 + 16))(a5, v16, 0, 0);
  }

  if (v47)
  {
    (*(a5 + 16))(a5, v18, 0, 0);
  }

  (*(a5 + 16))(a5, v14, 0, 0);
  CFStringReplaceAll(v16, v14);
  CFStringReplaceAll(v18, v14);
  CFStringLowercase(v16, *(a1 + 24));
  CFStringUppercase(v18, *(a1 + 24));
  (*(a5 + 16))(a5, v16, 0, 0);
  (*(a5 + 16))(a5, v18, 0, 0);
  if (v18)
  {
    CFRelease(v18);
  }

  if (v16)
  {
LABEL_77:
    CFRelease(v16);
  }

LABEL_78:
  if (v14)
  {
    CFRelease(v14);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

void sub_29931ADFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va4, a7);
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v12 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v14 = va_arg(va4, const void *);
  sub_29924A4BC(va, 0);
  sub_29924A4BC(va1, 0);
  sub_299219AB4(va2, 0);
  sub_29924A4BC(va3, 0);
  sub_299219AB4(va4, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29931AEB0(uint64_t a1, uint64_t a2, const UniChar *a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = *(*(a1 + 16) + 48);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2000000000;
  v17 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 0x40000000;
  v10[2] = sub_29931AFB8;
  v10[3] = &unk_29EF12E08;
  v10[6] = a1;
  v10[7] = a3;
  v10[8] = a4;
  v10[9] = a2;
  v10[10] = a5;
  v10[11] = a6;
  v11 = v7;
  v10[4] = &v12;
  v10[5] = v16;
  sub_29931A8BC(a1, a3, a4, a7, v10);
  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v16, 8);
  return v8;
}

void sub_29931AF94(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 80), 8);
  _Block_object_dispose((v1 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_29931B140(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29931B168(uint64_t a1, uint64_t **a2)
{
  v2 = a2[6];
  if (a2[7] == v2)
  {
    return 0;
  }

  v3 = a2;
  v5 = 0;
  while (1)
  {
    v6 = v2[v5];
    v7 = (*(*v6 + 544))(v6);
    v9 = v8;
    if (!(*(*v6 + 408))(v6) && sub_2992DD948(v7, v9))
    {
      v11 = sub_2992DE574(v7, v9, 0, v10);
      v47 = v11;
      if (v11)
      {
        v12 = v11;
        if (**(a1 + 8) == 1)
        {
          v13 = sub_2992AB3A0(v3);
          v14 = (v3[7] - v3[6]) >> 3;
          if (v13 != -1)
          {
            LODWORD(v14) = v13;
          }

          v15 = v14 + 2;
          v16 = v15 <= 3 ? 3 : v15;
        }

        else
        {
          v16 = 3;
        }

        v17 = 0;
        __src = 0;
        v45 = 0;
        v46 = 0;
        while (v17 < CFArrayGetCount(v12))
        {
          if (v16 == *(*(a1 + 8) + 432))
          {
            v18 = v16 + 1;
          }

          else
          {
            v18 = v16;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(v12, v17);
          sub_299276BDC(ValueAtIndex, &__p);
          v20 = *(v6 + 87);
          v21 = *(v6 + 64);
          v22 = *(v6 + 72);
          v24 = (*(*v6 + 552))(v6);
          if ((v20 & 0x80u) == 0)
          {
            v25 = (v6 + 64);
          }

          else
          {
            v25 = v21;
          }

          if ((v20 & 0x80u) == 0)
          {
            v26 = v20;
          }

          else
          {
            v26 = v22;
          }

          v27 = sub_29931A0AC(0, __p, ((v43 - __p) >> 1), v25, v26, v24, v23, 0, 0.0, 0, 0, 0, 83, 0, **a1, 0);
          *(v27 + 8) = v18;
          v28 = v45;
          if (v45 >= v46)
          {
            v30 = __src;
            v31 = v45 - __src;
            v32 = (v45 - __src) >> 3;
            v33 = v32 + 1;
            if ((v32 + 1) >> 61)
            {
              sub_299212A8C();
            }

            v34 = v46 - __src;
            if ((v46 - __src) >> 2 > v33)
            {
              v33 = v34 >> 2;
            }

            v35 = v34 >= 0x7FFFFFFFFFFFFFF8;
            v36 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v35)
            {
              v36 = v33;
            }

            v48[4] = &__src;
            if (v36)
            {
              sub_29920B86C(&__src, v36);
            }

            *(8 * v32) = v27;
            v29 = 8 * v32 + 8;
            memcpy(0, v30, v31);
            v37 = __src;
            v38 = v46;
            __src = 0;
            v45 = v29;
            v46 = 0;
            v48[2] = v37;
            v48[3] = v38;
            v48[0] = v37;
            v48[1] = v37;
            sub_2992737D8(v48);
          }

          else
          {
            *v45 = v27;
            v29 = (v28 + 8);
          }

          v45 = v29;
          if (__p)
          {
            v43 = __p;
            operator delete(__p);
          }

          v16 = v18 + 1;
          ++v17;
        }

        v3 = a2;
        v39 = sub_2992ABF28(a2, &__src, v5 + 1);
        v48[0] = &__src;
        sub_29921EC68(v48);
        CFRelease(v12);
        if (v39)
        {
          break;
        }
      }
    }

    ++v5;
    v2 = v3[6];
    if (v5 >= v3[7] - v2)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_29931B52C(uint64_t a1, void *a2, unsigned __int16 *a3, unint64_t a4, int a5)
{
  v10 = sub_299281F40(a3, a4, 0, 0);
  v11 = v10 - 1;
  if ((v10 - 1) > 1)
  {
    return v11 < 2;
  }

  v12 = v10;
  v13 = v10 == 1;
  v14 = 0;
  if (a4)
  {
    while (1)
    {
      v15 = a3[v14];
      v16 = v15 == 48 || v15 == 65296;
      if (!v16 && v15 != 12295)
      {
        break;
      }

      if (a4 == ++v14)
      {
        v14 = a4;
        break;
      }
    }

    v49 = 0;
    v50 = &v49;
    v51 = 0x2000000000;
    v52 = a5;
    if (a4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_299212A30();
    }

    if (a4 >= 0xB)
    {
      if ((a4 | 3) == 0xB)
      {
        v18 = 13;
      }

      else
      {
        v18 = (a4 | 3) + 1;
      }

      sub_299212A48(&__dst, v18);
    }

    HIBYTE(v48) = a4;
    memmove(&__dst, a3, 2 * a4);
  }

  else
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x2000000000;
    v52 = a5;
    HIBYTE(v48) = 0;
  }

  *(&__dst + a4) = 0;
  v19 = HIBYTE(v48);
  if (v48 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (v48 < 0)
  {
    v19 = v47;
  }

  if (p_dst)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v50 + 6);
  *(v50 + 6) = v22 + 1;
  sub_29931A61C(a1, a2, a3, a4, a3, a4, p_dst, v21, 0.0, 0, 0, 0, 0, v22, 0, 83, 0, 2);
  if (v12 == 1)
  {
    if (!sub_299281394(&__dst))
    {
      goto LABEL_42;
    }

LABEL_33:
    v23 = HIBYTE(v48);
    if (v48 >= 0)
    {
      v24 = &__dst;
    }

    else
    {
      v24 = __dst;
    }

    if (v48 < 0)
    {
      v23 = v47;
    }

    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v50 + 6);
    *(v50 + 6) = v26 + 1;
    sub_29931A61C(a1, a2, a3, a4, a3, a4, v24, v25, 0.0, 0, 0, 0, 0, v26, 0, 83, 0, 2);
    goto LABEL_42;
  }

  if (sub_299281268(&__dst))
  {
    goto LABEL_33;
  }

LABEL_42:
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__dst);
  }

  v27 = 0;
  if (a4)
  {
    v28 = a3;
    v29 = a4;
    do
    {
      v31 = *v28++;
      v30 = v31;
      if (v31 >> 4 <= 0xFF0)
      {
        v32 = -48;
      }

      else
      {
        v32 = -65296;
      }

      v27 = v30 + 10 * v27 + v32;
      --v29;
    }

    while (v29);
    if (v27 >= 1000)
    {
      __dst = 0;
      v47 = 0;
      v48 = 0;
      v33 = *(v50 + 6);
      *(v50 + 6) = v33 + 2;
      v34 = v12 == 1;
      if (v12 == 1)
      {
        v35 = v33 + 1;
      }

      else
      {
        v35 = v33;
      }

      if (v34)
      {
        v36 = v33;
      }

      else
      {
        v36 = v33 + 1;
      }

      if (sub_299281680(v27, &__dst))
      {
        v37 = v48 >= 0 ? &__dst : __dst;
        v38 = v48 >= 0 ? SHIBYTE(v48) : v47;
        sub_29931A61C(a1, a2, a3, a4, a3, a4, v37, v38, 0.0, 0, 0, 0, 0, v36, 0, 83, 0, 1);
        if (sub_299281394(&__dst))
        {
          if (v48 >= 0)
          {
            v39 = &__dst;
          }

          else
          {
            v39 = __dst;
          }

          if (v48 >= 0)
          {
            v40 = SHIBYTE(v48);
          }

          else
          {
            v40 = v47;
          }

          sub_29931A61C(a1, a2, a3, a4, a3, a4, v39, v40, 0.0, 0, 0, 0, 0, v35, 0, 83, 0, 1);
        }
      }

      if (SHIBYTE(v48) < 0)
      {
        operator delete(__dst);
      }
    }
  }

  v44[0] = MEMORY[0x29EDCA5F8];
  v44[1] = 0x40000000;
  v44[2] = sub_29931BA1C;
  v44[3] = &unk_29EF12E58;
  v44[6] = a4;
  v44[7] = a3;
  v45 = v13;
  v44[8] = a4;
  v44[9] = v27;
  v44[10] = a2;
  v44[4] = &v49;
  v44[5] = a1;
  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 0x40000000;
  v43[2] = sub_29931BB30;
  v43[3] = &unk_29EF12EA8;
  v43[6] = v27;
  v43[7] = v14;
  v43[8] = a2;
  v43[9] = a3;
  v43[10] = a4;
  v43[4] = &v49;
  v43[5] = a1;
  if (**(a1 + 8) == 1)
  {
    sub_29931BA1C(v44);
    v41 = v43;
  }

  else
  {
    sub_29931BB30(v43);
    v41 = v44;
  }

  (v41[2])();
  _Block_object_dispose(&v49, 8);
  return v11 < 2;
}

void sub_29931B9E4(_Unwind_Exception *a1)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  _Block_object_dispose((v1 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_29931BA1C(uint64_t a1)
{
  if (*(a1 + 48) <= 4uLL)
  {
    v9 = v1;
    v10 = v2;
    v3 = *(a1 + 88);
    v4 = *(a1 + 72);
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 0x40000000;
    v5[2] = sub_29931BAB8;
    v5[3] = &unk_29EF12E30;
    v7 = *(a1 + 80);
    v8 = *(a1 + 56);
    v6 = *(a1 + 32);
    sub_2992DEC54(a1 + 56, v3, v4, v5);
  }
}

uint64_t sub_29931BAB8(void *a1, const void *a2, const void *a3)
{
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  if (a2)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[5];
  v9 = *(a1[4] + 8);
  v10 = *(v9 + 24);
  *(v9 + 24) = v10 + 1;
  return sub_29931A61C(v8, v4, v5, v6, v5, v6, a2, v7, 0.0, 0, 0, 0, 0, v10, 0, 83, 0, 1);
}

void sub_29931BB30(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1 = *(a1 + 56);
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = sub_29931BBB8;
  v3[3] = &unk_29EF12E80;
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v4 = *(a1 + 32);
  sub_299230810(v2, v1, v3);
}

uint64_t sub_29931BBB8(void *a1, const void *a2, const void *a3)
{
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  if (a2)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[5];
  v9 = *(a1[4] + 8);
  v10 = *(v9 + 24);
  *(v9 + 24) = v10 + 1;
  return sub_29931A61C(v8, v4, v5, v6, v5, v6, a2, v7, 0.0, 0, 0, 0, 0, v10, 0, 83, 0, 1);
}

uint64_t sub_29931BC30(int **a1, void *a2, const void *a3, const void *a4, const UniChar *a5, CFIndex a6, int a7)
{
  v26[4] = *MEMORY[0x29EDCA608];
  v14 = sub_2992FE0BC();
  v15 = *v14;
  v16 = v14[1];
  v17 = sub_2992FE0BC();
  v18 = sub_29931A0AC(7, a3, a4, v15, v16, *v17, v17[1], 0, 0.0, 0, 0, 0, 69, 0, **a1, 0);
  if (!v18)
  {
    return 0;
  }

  v19 = v18;
  cf = CFStringCreateWithCharacters(0, a5, a6);
  sub_299229BC0((v19 + 128), cf);
  *(v19 + 8) = a7;
  (*(*v19 + 528))(v19, 3, "Adding a single dynamic word candidate", 1);
  *buf = v19;
  v26[0] = &unk_2A1F65308;
  v26[3] = v26;
  v20 = sub_2992AB710(a2, buf, 1, 0, v26);
  sub_29921F128(v26);
  v21 = *buf;
  *buf = 0;
  if (v21)
  {
    (*(*v21 + 16))(v21);
  }

  if ((v20 & 1) == 0)
  {
    v22 = sub_2993652F8(3u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_29918C000, v22, OS_LOG_TYPE_DEBUG, " ∟ Rejected", buf, 2u);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

void sub_29931BE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29931BF18(uint64_t a1, void *a2, const void *a3, unint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  v17[4] = *MEMORY[0x29EDCA608];
  v11 = sub_29931A0AC(11, *(a5 + 16), *(a5 + 24), a3, a4, *a5, *(a5 + 8), *(*(a1 + 16) + 66), 0.0, *(*(a1 + 16) + 66), a6, 0, 89, a7, **a1, 0);
  sub_2992C7094(v11, *(a5 + 40), *(a5 + 48));
  LODWORD(valuePtr) = *(a5 + 32);
  v12 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  sub_2992292D8(v11 + 31, v12);
  (*(*v11 + 64))(v11, a8);
  valuePtr = v11;
  v17[0] = &unk_2A1F65308;
  v17[3] = v17;
  v13 = sub_2992AB710(a2, &valuePtr, 1, 0, v17);
  sub_29921F128(v17);
  v14 = valuePtr;
  valuePtr = 0;
  if (v14)
  {
    (*(*v14 + 16))(v14);
  }

  return v13;
}

void sub_29931C0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29921F128(va);
  if (a11)
  {
    (*(*a11 + 16))(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_29931C12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_299399A24(a1, a2, 0, a3);
  *result = &unk_2A1F70BE8;
  v6 = result[3];
  v7 = *(v6 + 8);
  if (*(v7 + 5) != 1 || (v8 = *(v7 + 40)) == 0)
  {
    v8 = *(v7 + 32);
  }

  result[14] = *(v8 + 32) - 1;
  result[15] = 0;
  result[16] = 0;
  result[17] = a4;
  result[5] = -1;
  v9 = *(v6 + 8);
  if (*(v9 + 5) != 1 || (v10 = *(v9 + 40)) == 0)
  {
    v10 = *(v9 + 32);
  }

  result[4] = *(v10 + 32);
  return result;
}

void sub_29931C1D0(uint64_t a1@<X0>, void *a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = *(a1 + 136);
  if (v6 && objc_msgSend_rawCandidate(v6, a3, a4, a5))
  {
    v8 = *(*(a1 + 8) + 16);
    if (v8)
    {
      Count = CFArrayGetCount(v8);
    }

    else
    {
      Count = 0;
    }

    while (Count-- >= 1)
    {
      v11 = *(a1 + 136);
      if (v11 == sub_299324228(*(a1 + 8), Count))
      {
        v23 = objc_msgSend_rawCandidate(*(a1 + 136), v12, v13, v14);
        sub_29931C308(a2, &v23);
        if (Count && a2[1] != *a2)
        {
          do
          {
            if (*(a1 + 32) <= ((a2[1] - *a2) >> 3))
            {
              break;
            }

            v15 = sub_299324228(*(a1 + 8), --Count);
            v19 = v15;
            if (v15)
            {
              if (objc_msgSend_rawCandidate(v15, v16, v17, v18))
              {
                v23 = objc_msgSend_rawCandidate(v19, v20, v21, v22);
                sub_29931C308(a2, &v23);
              }
            }
          }

          while (Count > 0);
        }

        return;
      }
    }
  }
}

void sub_29931C2D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29931C308(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_299212A8C();
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
      sub_29920B86C(a1, v10);
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

void *sub_29931C3E4(void *result, uint64_t a2)
{
  if (!a2)
  {
    result[16] = (result[7] - result[6]) >> 2;
  }

  return result;
}

void sub_29931C438(uint64_t a1)
{
  sub_299399B00(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_29931C470(uint64_t a1, int *a2, unint64_t a3, uint64_t a4)
{
  result = malloc_type_malloc(0x58uLL, 0x10B0040A3C4D6A3uLL);
  if (result)
  {
    result[4] = a1;
    result[5] = a4;
    *result = a2;
    *(result + 20) = 0;
    if (a2 && a3 >= 0x10)
    {
      *(result + 20) = a1 == 0;
      v9 = *a2;
      result[1] = a2 + 4;
      if (v9 == 1953655141)
      {
        v10 = a2[3];
      }

      else
      {
        v10 = 0;
      }

      *(result + 4) = v10;
      v11 = (a3 - 16) >> 3;
    }

    else
    {
      v11 = 0;
      result[1] = 0;
      *(result + 4) = 0;
    }

    result[3] = v11;
  }

  return result;
}

void sub_29931C528(_DWORD *a1)
{
  if (a1)
  {
    if (a1[20])
    {
      v2 = *a1;
      if (*a1)
      {
        free(v2);
      }
    }

    free(a1);
  }
}

uint64_t sub_29931C578(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(a1 + 24) < 2uLL)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 8);
  if (a3)
  {
    v5 = 1;
    while (1)
    {
      v6 = *(v4 + 8 * v5);
      if ((v6 & 0x80000000) != 0)
      {
        return 4294967294;
      }

      v7 = v6 + *a2 + 1;
      if (*(v4 + 8 * v7 + 4) != v5)
      {
        return 0xFFFFFFFFLL;
      }

      ++a2;
      v5 = v7;
      if (!--a3)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v7 = 1;
LABEL_11:
    v8 = (v4 + 8 * *(v4 + 8 * v7));
    result = 0xFFFFFFFFLL;
    if (v8[1] == v7)
    {
      v9 = *v8;
      if (v9 < 0)
      {
        return -v9;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t sub_29931C60C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  result = 0;
  if (a3 && *(a1 + 24) >= 2uLL)
  {
    result = 0;
    v7 = 0;
    v8 = *(a1 + 8);
    LODWORD(v9) = *(v8 + 8);
    v10 = 1;
    do
    {
      v11 = v10;
      v10 = v9 + *(a2 + v7) + 1;
      v12 = (v8 + 8 * v10);
      if (v12[1] != v11)
      {
        break;
      }

      v9 = *v12;
      v13 = (v8 + 8 * v9);
      if (v13[1] == v10)
      {
        v14 = *v13;
        if (v14 < 0)
        {
          if (a4)
          {
            v15 = a5 + 24 * result;
            *(v15 + 8) = -v14;
            *(v15 + 12) = v7 + 1;
            if (++result >= a4)
            {
              return result;
            }
          }

          else
          {
            ++result;
          }
        }
      }

      ++v7;
    }

    while (a3 != v7);
  }

  return result;
}

uint64_t sub_29931C6B4(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v55 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 24);
  if (v8 <= 1)
  {
    v9 = v8 | 0x2000;
    v10 = *(a1 + 32);
    v11 = *a1;
    v12 = 8 * v9;
    if (v10)
    {
      v13 = v10(v11, v12 | 0x10, *(a1 + 40));
      *a1 = v13;
    }

    else
    {
      v13 = malloc_type_realloc(v11, v12 | 0x10, 0x1000040451B5BE8uLL);
      *a1 = v13;
      if (!*(a1 + 80))
      {
        *(a1 + 80) = 1;
      }
    }

    if (!v13)
    {
      return 0xFFFFFFFFLL;
    }

    *(a1 + 8) = v13 + 16;
    if (!*(a1 + 32))
    {
      bzero(&v13[8 * *(a1 + 24) + 16], 8 * (v9 - *(a1 + 24)));
    }

    *(a1 + 24) = v9;
  }

  v14 = *(a1 + 16);
  if (!v14)
  {
    v15 = *a1;
    *v15 = 0x1074726965;
    v15[2] = 65793;
    *(*(a1 + 8) + 8) = 1;
    v14 = 1;
    *(a1 + 16) = 1;
  }

  v16 = 0;
  v17 = 1;
  while (1)
  {
    if (a3 == v16)
    {
      v18 = *(a1 + 8);
      if (v14 < v17)
      {
        v19 = 0;
        goto LABEL_26;
      }

      v19 = *(v18 + 8 * v17);
    }

    else
    {
      v20 = v14 >= v17 ? *(*(a1 + 8) + 8 * v17) + 1 : 1;
      v19 = v20 + *(a2 + v16);
    }

    if (v14 < v19)
    {
      if (v17)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    v18 = *(a1 + 8);
LABEL_26:
    if (*(v18 + 8 * v19 + 4) != v17)
    {
LABEL_30:
      v22 = -a4;
      while (1)
      {
        if (v16 == a3)
        {
          v23 = 0;
        }

        else
        {
          v23 = *(a2 + v16) + 1;
        }

        v52 = v17;
        v24 = *(a1 + 16);
        if (v24 < v17 || !*(*(a1 + 8) + 8 * v17))
        {
          v25 = 1;
          do
          {
            v26 = v25 + v23;
            v27 = v24 >= v25 + v23 && *(*(a1 + 8) + 8 * v26 + 4) != 0;
            v28 = v26 == 1 || v27;
            v25 += v28;
          }

          while ((v28 & 1) != 0);
          if (sub_29931CB9C(a1, v17, v25) == -1)
          {
LABEL_75:
            v45 = 0xFFFFFFFFLL;
            goto LABEL_79;
          }

          v24 = *(a1 + 16);
        }

        if (v24 >= v17)
        {
          v29 = *(*(a1 + 8) + 8 * v17);
        }

        else
        {
          v29 = 0;
        }

        v30 = v29 + v23;
        v31 = v24 >= v29 + v23 && *(*(a1 + 8) + 8 * v30 + 4) != 0;
        if (v30 != 1 && !v31)
        {
          v32 = v17;
          v17 = v30;
          goto LABEL_68;
        }

        v33 = sub_29931CFB0(a1, v17, v54);
        if (v30 != 1)
        {
          if (v24 >= v30)
          {
            v42 = *(*(a1 + 8) + 8 * v30 + 4);
            v43 = sub_29931CFB0(a1, v42, v53);
            if (v33 + 1 >= v43)
            {
              v38 = v43;
              goto LABEL_62;
            }
          }

          else
          {
            v41 = sub_29931CFB0(a1, 0, v53);
            if (v33 + 1 >= v41)
            {
              v38 = v41;
              v42 = 0;
LABEL_62:
              v34 = v53;
              v35 = a1;
              v36 = v17;
              v37 = v42;
              v39 = 0;
              v40 = 0;
              goto LABEL_63;
            }
          }
        }

        v34 = v54;
        v35 = a1;
        v36 = v17;
        v37 = v17;
        v38 = v33;
        v39 = v23;
        v40 = 1;
LABEL_63:
        if (sub_29931D01C(v35, v36, v37, v34, v38, v39, v40, &v52) == -1)
        {
          goto LABEL_75;
        }

        v32 = v52;
        v24 = *(a1 + 16);
        if (v24 >= v52)
        {
          v44 = *(*(a1 + 8) + 8 * v52);
        }

        else
        {
          v44 = 0;
        }

        v17 = v44 + v23;
LABEL_68:
        if ((v24 < v17 || !*(*(a1 + 8) + 8 * v17 + 4)) && (sub_29931CD8C(a1, v17, v32) == -1 || !v23 && sub_29931CB9C(a1, v17, v22) == -1))
        {
          goto LABEL_75;
        }

        if (++v16 > a3)
        {
          goto LABEL_78;
        }
      }
    }

    v21 = *(v18 + 8 * v19);
    if (v21 < 0)
    {
      break;
    }

LABEL_28:
    ++v16;
    v17 = v19;
    if (v16 > a3)
    {
      goto LABEL_78;
    }
  }

  if (v21 + a4 && sub_29931CB9C(a1, v19, -a4) == -1)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_78:
  v45 = 0;
LABEL_79:
  v46 = *(a1 + 16);
  v47 = *a1;
  *(*a1 + 12) = v46;
  if ((v46 - *(a1 + 24)) >= 0xFFFFFFFFFFFFFEFELL)
  {
    v48 = (v46 + 259);
    v49 = *(a1 + 32);
    if (v49)
    {
      v50 = v49();
      *a1 = v50;
    }

    else
    {
      v50 = malloc_type_realloc(v47, 8 * v48 + 16, 0x1000040451B5BE8uLL);
      *a1 = v50;
      if (!*(a1 + 80))
      {
        *(a1 + 80) = 1;
      }
    }

    if (v50)
    {
      *(a1 + 8) = v50 + 16;
      if (!*(a1 + 32))
      {
        bzero(&v50[8 * *(a1 + 24) + 16], 8 * (v48 - *(a1 + 24)));
      }

      *(a1 + 24) = v48;
      return v45;
    }

    return 0xFFFFFFFFLL;
  }

  return v45;
}

uint64_t sub_29931CB9C(uint64_t a1, unsigned int a2, int a3)
{
  v6 = *(a1 + 24);
  if (v6 <= a2)
  {
    v7 = v6 + 0x2000;
    v8 = *(a1 + 32);
    v9 = *a1;
    v10 = 8 * v7;
    if (v8)
    {
      v11 = v8(v9, v10 + 16, *(a1 + 40));
      *a1 = v11;
      if (!v11)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_7;
    }

    v11 = malloc_type_realloc(v9, v10 + 16, 0x1000040451B5BE8uLL);
    *a1 = v11;
    if (*(a1 + 80))
    {
      if (v11)
      {
LABEL_7:
        *(a1 + 8) = v11 + 16;
        if (!*(a1 + 32))
        {
          bzero(&v11[8 * *(a1 + 24) + 16], 8 * (v7 - *(a1 + 24)));
        }

        *(a1 + 24) = v7;
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 80) = 1;
      if (v11)
      {
        goto LABEL_7;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_10:
  if (*(a1 + 16) < a2)
  {
    *(a1 + 16) = a2;
  }

  result = 0;
  *(*(a1 + 8) + 8 * a2) = a3;
  return result;
}

uint64_t sub_29931CC8C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = 1;
  while (1)
  {
    if (a3 == v4)
    {
      v7 = *(a1 + 8);
      if (v5 < v6)
      {
        v8 = 0;
        goto LABEL_14;
      }

      v8 = *(v7 + 8 * v6);
    }

    else
    {
      v9 = v5 >= v6 ? *(*(a1 + 8) + 8 * v6) + 1 : 1;
      v8 = v9 + *(a2 + v4);
    }

    if (v5 >= v8)
    {
      break;
    }

    if (v6)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_16:
    ++v4;
    v6 = v8;
    if (v4 > a3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v7 = *(a1 + 8);
LABEL_14:
  if (*(v7 + 8 * v8 + 4) != v6)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(v7 + 8 * v8) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  result = sub_29931CB9C(a1, v8, 0);
  if (result != -1)
  {
    v11 = sub_29931CD8C(a1, v8, 0);
    result = 0;
    if (v11 == -1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_29931CD8C(uint64_t a1, unsigned int a2, int a3)
{
  v6 = *(a1 + 24);
  if (v6 <= a2)
  {
    v7 = v6 + 0x2000;
    v8 = *(a1 + 32);
    v9 = *a1;
    v10 = 8 * v7;
    if (v8)
    {
      v11 = v8(v9, v10 + 16, *(a1 + 40));
      *a1 = v11;
      if (!v11)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_7;
    }

    v11 = malloc_type_realloc(v9, v10 + 16, 0x1000040451B5BE8uLL);
    *a1 = v11;
    if (*(a1 + 80))
    {
      if (v11)
      {
LABEL_7:
        *(a1 + 8) = v11 + 16;
        if (!*(a1 + 32))
        {
          bzero(&v11[8 * *(a1 + 24) + 16], 8 * (v7 - *(a1 + 24)));
        }

        *(a1 + 24) = v7;
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 80) = 1;
      if (v11)
      {
        goto LABEL_7;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_10:
  if (*(a1 + 16) < a2)
  {
    *(a1 + 16) = a2;
  }

  result = 0;
  *(*(a1 + 8) + 8 * a2 + 4) = a3;
  return result;
}

uint64_t sub_29931CE7C(uint64_t a1, unint64_t a2, void *a3, uint64_t *a4, uint64_t a5, unsigned int a6, int a7, __int16 a8)
{
  v15 = *(a1 + 8);
  v16 = *(v15 + 8 * a6);
  if (a7)
  {
    v17 = (v15 + 8 * v16);
    if (v17[1] == a6)
    {
      v18 = *v17;
      if (v18 < 0)
      {
        if (*a3)
        {
          --*a3;
        }

        else if (a2)
        {
          v23 = *a4;
          v24 = a5 + 24 * *a4;
          *(v24 + 8) = -v18;
          *a4 = v23 + 1;
          *(v24 + 12) = a8;
          if (v23 + 1 >= a2)
          {
            return 1;
          }
        }

        else
        {
          ++*a4;
        }
      }
    }
  }

  v19 = v16 + 1;
  v20 = 257;
  v21 = 1;
  while (*(*(a1 + 8) + 8 * v19 + 4) != a6 || !sub_29931CE7C(a1, a2, a3, a4, a5, v19, 1, a8 + 1))
  {
    ++v19;
    if (--v20 <= 1)
    {
      return 0;
    }
  }

  return v21;
}

uint64_t sub_29931CFB0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 >= a2)
  {
    v4 = *(*(a1 + 8) + 8 * a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    if (v3 >= v4 + v5)
    {
      v7 = *(*(a1 + 8) + 8 * (v4 + v5) + 4);
    }

    else
    {
      v7 = 0;
    }

    if (v7 == a2)
    {
      *(a3 + 2 * v6++) = v5;
    }

    ++v5;
  }

  while (v5 != 257);
  return v6;
}

uint64_t sub_29931D01C(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unint64_t a5, __int16 a6, int a7, unsigned int *a8)
{
  v14 = *(a1 + 16);
  if (v14 >= a3)
  {
    v38 = *(*(a1 + 8) + 8 * a3);
    if (a7)
    {
LABEL_3:
      v15 = 0;
      *(a4 + 2 * a5) = a6;
      v16 = 1;
      do
      {
        v17 = v16 + *(a4 + 2 * v15);
        v18 = v14 >= v17 && *(*(a1 + 8) + 8 * v17 + 4) != 0;
        ++v15;
        v19 = v17 == 1 || v18;
        v16 += v19;
        if (v19)
        {
          v15 = 0;
        }
      }

      while (v15 < a5 + 1);
      goto LABEL_25;
    }
  }

  else
  {
    v38 = 0;
    if (a7)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
  v16 = 1;
  do
  {
    v21 = v16 + *(a4 + 2 * v20);
    v22 = v14 >= v21 && *(*(a1 + 8) + 8 * v21 + 4) != 0;
    ++v20;
    v23 = v21 == 1 || v22;
    v16 += v23;
    if (v23)
    {
      v20 = 0;
    }
  }

  while (v20 < a5);
LABEL_25:
  result = sub_29931CB9C(a1, a3, v16);
  if (result != -1)
  {
    v37 = a8;
    if (a5)
    {
      v25 = 0;
      while (1)
      {
        v26 = *(a1 + 16);
        v27 = v26 >= a3 ? *(*(a1 + 8) + 8 * a3) : 0;
        v28 = *(a4 + 2 * v25);
        v29 = (v38 + v28);
        v30 = v26 >= v29 ? *(*(a1 + 8) + 8 * (v38 + v28)) : 0;
        v31 = v27 + v28;
        result = sub_29931CB9C(a1, v27 + v28, v30);
        if (result == -1)
        {
          break;
        }

        result = sub_29931CD8C(a1, v31, a3);
        if (result == -1)
        {
          break;
        }

        if (*(a1 + 16) >= v29 && *(*(a1 + 8) + 8 * v29) >= 1)
        {
          v32 = 0;
          do
          {
            v33 = *(a1 + 16);
            v34 = v33 >= v29 ? *(*(a1 + 8) + 8 * v29) : 0;
            v35 = v34 + v32;
            if (v34 + v32 > v33)
            {
              break;
            }

            if (*(*(a1 + 8) + 8 * v35 + 4) == v29)
            {
              result = sub_29931CD8C(a1, v35, v31);
              if (result == -1)
              {
                return result;
              }
            }
          }

          while (++v32 != 257);
        }

        result = sub_29931CB9C(a1, v29, 0);
        if (result == -1)
        {
          break;
        }

        result = sub_29931CD8C(a1, v29, 0);
        if (result == -1)
        {
          break;
        }

        ++v25;
        if (v29 == a2 && a2 != a3)
        {
          a2 = v31;
        }

        if (v25 == a5)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
LABEL_54:
      result = 0;
      *v37 = a2;
    }
  }

  return result;
}

uint64_t sub_29931D2D0(int a1, __CFDictionary *a2, void *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  result = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F72C30, 0);
  if (result)
  {
    v5 = result;
    result = sub_299377154(result);
    if (result)
    {
      v6 = (*(*v5 + 48))(v5);
      v7 = MEMORY[0x29EDB8F00];
      if (v6 >= 2)
      {
        v8 = *MEMORY[0x29EDB8F00];
        CFDictionaryAddValue(a2, @"phraseCandidateAccepted", *MEMORY[0x29EDB8F00]);
        if ((*(*v5 + 288))(v5))
        {
          CFDictionaryAddValue(a2, @"dialectPhraseCandidateAccepted", v8);
        }
      }

      if ((*(*v5 + 96))(v5) == 76)
      {
        v9 = off_29EF10378;
      }

      else if ((*(*v5 + 96))(v5) == 85)
      {
        v9 = off_29EF10370;
      }

      else if ((*(*v5 + 96))(v5) == 65)
      {
        v9 = off_29EF10380;
      }

      else
      {
        if ((*(*v5 + 96))(v5) != 77)
        {
LABEL_17:
          if ((*(*v5 + 80))(v5))
          {
            CFDictionaryAddValue(a2, @"extensionCandidateAccepted", *v7);
          }

          if ((*(*v5 + 176))(v5))
          {
            CFDictionaryAddValue(a2, @"emojiCandidateAccepted", *v7);
          }

          if ((*(*v5 + 264))(v5))
          {
            CFDictionaryAddValue(a2, @"otaNonRegionalLexiconCandidateAccepted", *v7);
          }

          if ((*(*v5 + 272))(v5))
          {
            CFDictionaryAddValue(a2, @"otaRegionalLexiconCandidateAccepted", *v7);
          }

          if ((*(*v5 + 200))(v5))
          {
            CFDictionaryAddValue(a2, @"autocorrectionCandidateAccepted", *v7);
          }

          if (((*(*v5 + 416))(v5) & 0x400) != 0)
          {
            CFDictionaryAddValue(a2, @"fuzzyPinyinEnabled", *v7);
          }

          if ((*(*v5 + 192))(v5))
          {
            CFDictionaryAddValue(a2, @"fuzzyPinyinCandidateAccepted", *v7);
          }

          return 1;
        }

        v9 = off_29EF10330;
      }

      CFDictionaryAddValue(a2, *v9, *v7);
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t sub_29931D718(uint64_t a1, uint64_t a2, void *a3, int **a4)
{
  v5 = *(a1 + 84);
  if (a3)
  {
    v6 = 0;
    v7 = a4[1];
    v8 = *a4;
    v9 = 1;
    while (1)
    {
      v10 = *(*a3 + 80);
      if (v10 == 1)
      {
        if (v8 != v7)
        {
          v11 = v7 - 1;
          v12 = v7 - 1;
          do
          {
            v13 = v6;
            v14 = *v12--;
            *(&unk_2A1462168 + v9--) = v14;
            if (v6)
            {
              break;
            }

            v6 = 1;
            v15 = v11 == v8;
            v11 = v12;
          }

          while (!v15);
          goto LABEL_16;
        }

        v10 = 1;
      }

      else if (v5 == 1)
      {
        v16 = v10 - 1000;
        v17 = v16;
        v18 = (&unk_299421A3C + 2 * v16 - 28);
        v19 = &aXxxxxfffffyyyy[v16 - 428];
        if (v17 < 0x1AC)
        {
          v19 = v18;
        }

        v10 = *v19 + 1000;
      }

      *(&unk_2A1462168 + v9--) = v10;
      a3 = a3[1];
      v13 = v6;
LABEL_16:
      if (!v13)
      {
        v6 = 1;
        if (a3)
        {
          continue;
        }
      }

      v20 = v13 + 1;
      goto LABEL_20;
    }
  }

  v20 = 0;
  v9 = 1;
LABEL_20:
  v21 = *(a1 + 80);
  if (v5 == 1 && (v21 - 1) >= 2)
  {
    v23 = &aXxxxxfffffyyyy[(v21 - 1000) - 428];
    if ((v21 - 1000) < 0x1ACu)
    {
      v23 = (&unk_299421A3C + 2 * (v21 - 1000) - 28);
    }

    v21 = *v23 + 1000;
  }

  return (*(*a2 + 40))(a2, v21, &unk_2A1462168 + 4 * v9 + 4, v20);
}

BOOL sub_29931D86C(uint64_t a1)
{
  if ((*(*(a1 + 72) + 8) & 2) != 0)
  {
    return 1;
  }

  v2 = sub_2993A13A0();
  return *(a1 + 84) == 1 && sub_299223864(v2, (*(a1 + 72) + 2)) != 0;
}

void sub_29931D8CC(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v2 = *(a1 + 84);
  if (v2 == 2)
  {
    v7 = *(a1 + 72);
    if (v7)
    {
      v7 = *(v7 + 2);
    }

    v4 = 2 * v7;
    v5 = &off_29EF15F80;
    goto LABEL_13;
  }

  if (v2 != 1)
  {
    if (v2)
    {
      v8 = "";
      goto LABEL_15;
    }

    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = *(v3 + 2);
    }

    v4 = 2 * v3;
    v5 = &off_29EF13DA0;
LABEL_13:
    v8 = v5[v4];
LABEL_15:
    sub_2991C6CA8(a2, v8);
    return;
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    v6 = *(v6 + 2);
  }

  sub_299277B3C(a2, *(&off_29EF19DC0 + 2 * v6), *(&off_29EF19DC0 + 2 * v6 + 1));
}

uint64_t sub_29931D950(uint64_t a1, CFTypeRef cf, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;
  *(a1 + 24) = a8;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a7;
  *a1 = &unk_2A1F70D30;
  if (cf)
  {
    *(a1 + 72) = CFRetain(cf);
    *(a1 + 80) = a4;
    v11 = LXCursorHash();
  }

  else
  {
    v11 = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = a4;
  }

  *(a1 + 112) = 0;
  *(a1 + 88) = v11;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (a3)
  {
    LXEntryGetProbability();
    *(a1 + 96) = v12;
    v13 = LXEntryCopyString();
    sub_299219AB4((a1 + 112), v13);
    *(a1 + 104) = LXEntryGetMetaFlags();
    *(a1 + 88) = sub_299279FBC(*(a1 + 112));
  }

  return a1;
}

void sub_29931DA5C(_Unwind_Exception *a1)
{
  sub_299235628((v1 + 72), 0);
  *v1 = v2;
  v4 = *(v1 + 32);
  if (v4)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_29931DAA4(void *a1)
{
  *a1 = &unk_2A1F70CA0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29931DAF4(void *a1)
{
  *a1 = &unk_2A1F70CA0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_29931DC14(uint64_t a1)
{
  sub_29931DDD4(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_29931DD44(_Unwind_Exception *a1)
{
  sub_299235628((v1 + 72), 0);
  *v1 = v3;
  v5 = *(v1 + 32);
  if (v5)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  MEMORY[0x29C29BFB0](v1, v2);
  _Unwind_Resume(a1);
}

void *sub_29931DDB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    return sub_299278568(v2, a2);
  }

  else
  {
    return sub_2991C6CA8(a2, "");
  }
}

uint64_t sub_29931DDD4(uint64_t a1)
{
  *a1 = &unk_2A1F70D30;
  sub_299219AB4((a1 + 112), 0);
  sub_299235628((a1 + 72), 0);
  *a1 = &unk_2A1F70CA0;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  return a1;
}

__CFArray *sub_29931DE54(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  EmojiTokensForString = CEMEmojiLocaleDataCreateEmojiTokensForString();
  if (!EmojiTokensForString)
  {
    return 0;
  }

  v5 = EmojiTokensForString;
  Count = CFArrayGetCount(EmojiTokensForString);
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], Count, MEMORY[0x29EDB9000]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(v5, i);
      String = CEMEmojiTokenGetString();
      v10 = sub_2992FDA94();
      v13 = sub_2992FDE24(v10, String, v11, v12);
      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = String;
      }

      CFArrayAppendValue(Mutable, v14);
    }
  }

  CFRelease(v5);
  return Mutable;
}

void sub_29931DF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299229F00(va, 0);
  _Unwind_Resume(a1);
}

void sub_29931DF74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31[4] = *MEMORY[0x29EDCA608];
  *a3 = &unk_2A1F65118;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 1065353216;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = 0;
  v4 = *(a1 + 16);
  if (v4 && ((*(*v4 + 48))(v4) & 1) != 0)
  {
    (*(**(a1 + 16) + 40))(*(a1 + 16), a2);
    (*(**(a1 + 16) + 88))(*(a1 + 16));
    v6 = *(a1 + 24);
    v24 = xmmword_2994018E0;
    *&v25 = 10;
    DWORD2(v25) = 1077936128;
    v31[0] = &unk_2A1F70E00;
    v31[3] = v31;
    (*(*v6 + 16))(&v29);
    sub_29921F0A8(v31);
    *&v24 = 0;
    DWORD2(v24) = 0;
    v25 = 0u;
    v26 = 0u;
    *v27 = 0u;
    v28 = 0;
    v7 = v29;
    v8 = v30;
    if (v29 != v30)
    {
      do
      {
        v9 = *(v7 + 23);
        if (v9 < 0)
        {
          v10 = *v7;
          v9 = *(v7 + 8);
        }

        else
        {
          v10 = v7;
        }

        sub_299251274(v10, v9, &__p);
        v11 = v23;
        if ((v23 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v23 & 0x80u) == 0)
        {
          v13 = v23;
        }

        else
        {
          v13 = v22;
        }

        v14 = &p_p[2 * v13];
        if (*(v14 - 1) == 32)
        {
          v15 = -1;
        }

        else
        {
          v15 = 0;
        }

        if (&v14[2 * v15] != p_p)
        {
          v16 = 2 * v13 + 2 * v15;
          v17 = p_p;
          while (*v17 - 48 < 0xA)
          {
            v17 += 2;
            v16 -= 2;
            if (!v16)
            {
              goto LABEL_29;
            }
          }

          v18 = sub_2992BD2B0(a1, p_p, v13);
          v11 = v23;
          if (!v18)
          {
            if ((v23 & 0x80u) == 0)
            {
              v19 = &__p;
            }

            else
            {
              v19 = __p;
            }

            if ((v23 & 0x80u) == 0)
            {
              v20 = v23;
            }

            else
            {
              v20 = v22;
            }

            sub_2992BD354(a1, &v24, v19, v20);
          }
        }

LABEL_29:
        if ((v11 & 0x80) != 0)
        {
          operator delete(__p);
        }

        v7 += 32;
      }

      while (v7 != v8);
      if (v27[0])
      {
        v27[1] = v27[0];
        operator delete(v27[0]);
      }
    }

    *&v24 = &v29;
    sub_29921EB1C(&v24);
  }
}

void sub_29931E46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a11)
  {
    (*(*a11 + 16))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    a25 = a24;
    operator delete(a24);
  }

  a18 = &a27;
  sub_29921EB1C(&a18);
  sub_29921D794(v30);
  _Unwind_Resume(a1);
}

void sub_29931E554(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = *MEMORY[0x29EDCA608];
  *a4 = &unk_2A1F65118;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 1065353216;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 48) = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    v8 = (*(*v5 + 48))(v5);
    v9 = a3 ? v8 : 0;
    if (v9)
    {
      (*(**(a1 + 16) + 40))(*(a1 + 16), a2);
      LODWORD(v28) = 1;
      HIDWORD(v28) = *(a3 + 96);
      v10 = (*(*a3 + 112))(a3);
      v11 = *(a3 + 32);
      v29 = v10;
      v12 = *(a3 + 55);
      if (v12 >= 0)
      {
        v13 = a3 + 32;
      }

      else
      {
        v13 = v11;
      }

      if (v12 >= 0)
      {
        v14 = *(a3 + 55);
      }

      else
      {
        v14 = *(a3 + 40);
      }

      v30 = v13;
      v31 = v14;
      v15 = *(a3 + 87);
      v16 = a3 + 64;
      if (v15 < 0)
      {
        v16 = *(a3 + 64);
      }

      if (v15 < 0)
      {
        v15 = *(a3 + 72);
      }

      v32 = v16;
      v33 = v15;
      __p[1] = 0;
      v35 = 0;
      __p[0] = 0;
      sub_29921E67C(*(a1 + 16));
      *__p = *v24;
      v35 = v25;
      if (sub_2992BD134(&v28, *(a1 + 16), 0))
      {
        v17 = *(a1 + 16);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        sub_2991D82D0(&v38, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
        v24[0] = 0;
        v24[1] = 0;
        v25 = 0;
        sub_29921ED74(v24, &v38, &v41, 1uLL);
        (*(*v17 + 64))(v27, v17, v24, 1);
        if (v27[0])
        {
          v27[1] = v27[0];
          operator delete(v27[0]);
        }

        v36 = v24;
        sub_29920E060(&v36);
        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        (*(**(a1 + 16) + 96))(&v36);
        (*(*v36 + 3))(v36, *(__p[1] - 1));
        v18 = *(a1 + 24);
        *v24 = xmmword_2994018F0;
        v25 = 16;
        v26 = 1082130432;
        v37[0] = &unk_2A1F70E80;
        v37[3] = v37;
        (*(*v18 + 16))(&v38);
        sub_29921F0A8(v37);
        if (v38 != v39 && *(v38 + 6) >= -1.7)
        {
          v19 = *(v38 + 23);
          if (v19 < 0)
          {
            v20 = *v38;
            v19 = v38[1];
          }

          else
          {
            v20 = v38;
          }

          sub_299251274(v20, v19, v24);
          if (v25 >= 0)
          {
            v21 = v24;
          }

          else
          {
            v21 = v24[0];
          }

          if (v25 >= 0)
          {
            v22 = HIBYTE(v25);
          }

          else
          {
            v22 = v24[1];
          }

          sub_2992BD354(a1, &v28, v21, v22);
        }

        v24[0] = &v38;
        sub_29921EB1C(v24);
        v23 = v36;
        v36 = 0;
        if (v23)
        {
          (*(*v23 + 1))(v23);
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }
}

void sub_29931EC38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_29921F0A8(&a35);
  if (a30)
  {
    (*(*a30 + 8))(a30);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_29921D794(v35);
  _Unwind_Resume(a1);
}

void *sub_29931ED94(void *a1)
{
  *a1 = &unk_2A1F65148;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29931EE04(void *a1)
{
  *a1 = &unk_2A1F65148;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29931EF24(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F70E60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29931F000(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F70EE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29931F04C()
{
  if ((atomic_load_explicit(&qword_2A1462270, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1462270))
  {
    operator new();
  }

  return qword_2A1462268;
}

void sub_29931F0C4(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v1, 0x20C400FA29667);
  __cxa_guard_abort(&qword_2A1462270);
  _Unwind_Resume(a1);
}

void sub_29931F0FC(uint64_t *a1)
{
  sub_2993EA664(a1);
  sub_2993EA8D4(a1 + 2);
  sub_2993EB0F0(a1 + 4);
  operator new();
}

void sub_29931F168(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x29C29BFB0](v3, 0x1020C40F89CB87BLL);
  v5 = v1[5];
  if (v5)
  {
    sub_2991A893C(v5);
  }

  v6 = v1[3];
  if (v6)
  {
    sub_2991A893C(v6);
  }

  v7 = v1[1];
  if (v7)
  {
    sub_2991A893C(v7);
  }

  _Unwind_Resume(a1);
}

void sub_29931F1CC(uint64_t *a1, const __CFString *a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, double a7)
{
  if (!a2 || !a4)
  {
    return;
  }

  if (a6 == 2)
  {
    v9 = a1[4];
    v8 = a1[5];
    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_6:
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_7;
  }

  if (a6 != 1)
  {
    v9 = *a1;
    v8 = a1[1];
    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = a1[2];
  v8 = a1[3];
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_299299EA4(v9);
  v10 = atomic_load((v9 + 40));
  if (v10 == 2 && *v9)
  {
    sub_299299EA4(v9);
    atomic_load((v9 + 40));
    CFStringGetLength(a2);
    operator new();
  }

  if (v8)
  {
    sub_2991A893C(v8);
  }
}

void sub_29931F9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  operator delete(v26);
  operator delete(v25);
  sub_29931FCC8(&a16);
  sub_29931FE48(&a25);
  if (a10)
  {
    sub_2991A893C(a10);
  }

  _Unwind_Resume(a1);
}

void sub_29931FA60(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  if (v4 >= 25)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    sub_299320894(&v21, *(v2 + 16), *(v2 + 8), *v2);
    v6 = 0;
    v7 = v2;
    do
    {
      v8 = v7 + 24 * v6 + 24;
      v9 = (2 * v6) | 1;
      v10 = 2 * v6 + 2;
      if (v10 < v5)
      {
        v11 = sub_299320B1C(v7 + 24 * v6 + 24, v7 + 24 * v6 + 48);
        v12 = v11 ? 24 : 0;
        v8 += v12;
        if (v11)
        {
          v9 = v10;
        }
      }

      *v7 = *v8;
      v13 = *(v8 + 16);
      *(v8 + 16) = 0;
      sub_299320950((v7 + 16), v13);
      v14 = *(v8 + 8);
      *(v8 + 8) = 0;
      sub_299219AB4((v7 + 8), v14);
      v7 = v8;
      v6 = v9;
    }

    while (v9 <= ((v5 - 2) >> 1));
    if (v8 == v3 - 24)
    {
      *v8 = v21;
      v19 = cf;
      cf = 0;
      sub_299320950((v8 + 16), v19);
      v20 = v22;
      v22 = 0;
      sub_299219AB4((v8 + 8), v20);
    }

    else
    {
      *v8 = *(v3 - 24);
      v15 = *(v3 - 8);
      *(v3 - 8) = 0;
      sub_299320950((v8 + 16), v15);
      v16 = *(v3 - 16);
      *(v3 - 16) = 0;
      sub_299219AB4((v8 + 8), v16);
      *(v3 - 24) = v21;
      v17 = cf;
      cf = 0;
      sub_299320950((v3 - 8), v17);
      v18 = v22;
      v22 = 0;
      sub_299219AB4((v3 - 16), v18);
      sub_2993209EC(v2, v8 + 24, 0xAAAAAAAAAAAAAAABLL * ((v8 + 24 - v2) >> 3));
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    if (v22)
    {
      CFRelease(v22);
    }

    v3 = a1[1];
  }

  sub_299320988(a1, v3 - 24);
}

void sub_29931FC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299320914(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29931FC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = a2;
  v7 = a3;
  v6 = a5;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, &v8, &v7, &v6, a4);
}

uint64_t sub_29931FCC8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v4 = (a1 + 40);
    v3 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v2[v5 / 0xAA];
    v7 = *v6 + 24 * (v5 % 0xAA);
    v8 = v2[(*(a1 + 40) + v5) / 0xAA] + 24 * ((*(a1 + 40) + v5) % 0xAA);
    if (v7 != v8)
    {
      do
      {
        sub_299320950((v7 + 16), 0);
        sub_299219AB4((v7 + 8), 0);
        v7 += 24;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 85;
    goto LABEL_14;
  }

  if (v10 == 2)
  {
    v11 = 170;
LABEL_14:
    *(a1 + 32) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      *(a1 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_29931FE48(void **a1)
{
  if (*a1)
  {
    sub_299320988(a1, *a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_29931FE84(uint64_t *a1)
{
  v2 = *a1;
  sub_299299EA4(*a1);
  v3 = atomic_load((v2 + 40));
  if (v3 == 2 && *v2)
  {
    v4 = *a1;
    sub_299299EA4(*a1);
    v5 = atomic_load((v4 + 40));
    if (v5 == 2)
    {
      v6 = *v4;
    }

    else
    {
      v6 = 0;
    }

    sub_2993EB828(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      if (sub_2992C1E9C(0) && *v8)
      {
        v9 = a1[6];

        sub_2992CAB70(v9);
      }
    }
  }
}

void sub_29931FF38(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_299299EA4(v2);
  v3 = atomic_load((v2 + 40));
  if (v3 == 2 && *v2)
  {
    v4 = *(a1 + 32);
    sub_299299EA4(v4);
    v5 = atomic_load((v4 + 40));
    if (v5 == 2)
    {
      v6 = *v4;
    }

    else
    {
      v6 = 0;
    }

    sub_2993EB828(v6);
  }
}

uint64_t sub_29931FFC0(uint64_t *a1, CFStringRef theString, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (theString && CFStringGetLength(theString) && (v4 = *a1, sub_299299EA4(*a1), v5 = atomic_load((v4 + 40)), v5 == 2))
  {
    v6 = *v4;
    if (*v4)
    {
      v7 = *a1;
      sub_299299EA4(v7);
      atomic_load((v7 + 40));
      v9 = 0;
      operator new();
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

void sub_2993200F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2993211E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29932010C(uint64_t a1, uint64_t a2, const __CFString *a3, int a4)
{
  if (a2)
  {
    v7 = *(a1 + 16);
    sub_299299EA4(v7);
    v8 = atomic_load((v7 + 40));
    if (v8 == 2)
    {
      if (*v7)
      {
        v9 = *(a1 + 16);
        sub_299299EA4(v9);
        atomic_load((v9 + 40));
        if (a4)
        {
          v11 = *MEMORY[0x29EDB8ED8];
          v14.length = CFStringGetLength(a3) - 1;
          v14.location = 1;
          v12 = CFStringCreateWithSubstring(v11, a3, v14);
        }

        else
        {
          v12 = CFRetain(a3);
          v11 = *MEMORY[0x29EDB8ED8];
        }

        CFStringCreateWithFormat(v11, 0, @"%@%@", a2, v12);
        operator new();
      }
    }
  }

  return 0;
}