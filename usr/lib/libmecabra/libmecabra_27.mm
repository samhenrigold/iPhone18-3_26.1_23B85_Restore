void sub_299343A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_299212B90(&a9);
  _Unwind_Resume(a1);
}

char *sub_299343A98(uint64_t a1, _WORD *a2, const void **a3)
{
  if (*a2)
  {
    v5 = 0;
    do
    {
      v6 = v5 + 1;
    }

    while (a2[++v5]);
  }

  else
  {
    v6 = 0;
  }

  if (*(a3 + 23) >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  result = sub_2992137FC(a1, v8 + v6);
  if (result[23] >= 0)
  {
    v10 = result;
  }

  else
  {
    v10 = *result;
  }

  if (v6)
  {
    result = memmove(v10, a2, 2 * v6);
  }

  if (v8)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    result = memmove(&v10[2 * v6], v11, 2 * v8);
  }

  *&v10[2 * v6 + 2 * v8] = 0;
  return result;
}

BOOL sub_299343B68(void *a1, unsigned __int16 *a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_29923AF34(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = *(v13 + 1);
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  result = sub_29923AF78(a1, v13 + 8, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_299344058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2993440BC(va);
  _Unwind_Resume(a1);
}

char **sub_2993440BC(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_299344108(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_299344108(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_2993432E8(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_299344150(uint64_t a1)
{
  sub_29934418C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29934418C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_299344108((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

unint64_t sub_2993441D0@<X0>(unint64_t result@<X0>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (result >= 1)
  {
    if (result <= 0x555555555555555)
    {
      sub_29920D924(a4, result);
    }

    sub_29920D90C();
  }

  return result;
}

void sub_299344414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  sub_29920D97C(&a9);
  sub_29920D9E8(&a15);
  _Unwind_Resume(a1);
}

void sub_29934478C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    MEMORY[0x29C29BF70](a13, 0x1000C80BDFB0063, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993447E4(uint64_t a1, const __CFString *a2, unint64_t a3, int *a4, __int128 *a5, int a6)
{
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F72C68;
  *(a1 + 8) = 0;
  *(a1 + 24) = &unk_2A1F72D38;
  *(a1 + 32) = a6;
  *(a1 + 40) = 0;
  sub_2993441D0(a3, (a1 + 48));
  sub_299344450(a2);
}

void sub_2993448C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_29920D9E8(&a9);
  sub_299219AB4(v9, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993448EC(uint64_t a1)
{
  v1 = (*(*a1 + 120))(a1);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t sub_299344958(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 48);
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - v2) >> 4);
  v4 = v2 + 48 * a2;
  if (v3 >= a2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299344AC4(uint64_t a1)
{
  *a1 = &unk_2A1F72C68;
  *(a1 + 24) = &unk_2A1F72D38;
  v3 = (a1 + 48);
  sub_29920D9E8(&v3);
  sub_299219AB4((a1 + 40), 0);
  return a1;
}

uint64_t sub_299344B48(uint64_t a1)
{
  *a1 = &unk_2A1F72C68;
  *(a1 + 24) = &unk_2A1F72D38;
  v3 = (a1 + 48);
  sub_29920D9E8(&v3);
  sub_299219AB4((a1 + 40), 0);
  return MEMORY[0x29C29BFB0](a1, 0x10E1C408D75F3D8);
}

BOOL sub_299344C6C(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  for (result = 1; v3 < a2[1] + *a2; ++v3)
  {
    v6 = (1 << u_charType(*(a1 + 2 * v3))) & 0x80020E;
    result = v6 != 0;
    if (!v6)
    {
      break;
    }
  }

  return result;
}

void sub_299344CEC(uint64_t a1, char *__src, unsigned __int16 *a3, uint64_t a4, const void **a5)
{
  if (a4)
  {
    v6 = a4;
    do
    {
      v12 = 0;
      if (__src)
      {
        v10 = *a3;
      }

      else
      {
        v10 = 0;
      }

      v12 = sub_2993F5A44(*(a1 + 32), __src, v10, 0);
      sub_2992141C0(a5, &v12);
      v11 = *a3++;
      __src += 2 * v11;
      --v6;
    }

    while (v6);
  }
}

void sub_299344D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, const UniChar *a6, int a7, int a8, double a9, uint64_t a10)
{
  v14 = a4;
  v15 = a3;
  v19 = *sub_299237120();
  v20 = a8 & 0x2000000;
  if (a5 || v20)
  {
    v28 = v15;
    if (v20)
    {
      v21 = 1;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      v22 = -3.0;
    }

    else
    {
      v22 = -2.0;
    }

    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2000000000;
    v42[3] = 0;
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x2000000000;
    v41[3] = 0;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x4002000000;
    v37[3] = sub_299345010;
    v37[4] = sub_299345034;
    __p = 0;
    v39 = 0;
    v40 = 0;
    sub_29920DED0(&__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    v23 = v14;
    if (a7 < 1)
    {
      v24 = 0;
    }

    else
    {
      v24 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x29EDB8ED8], a6, a7, *MEMORY[0x29EDB8EE8]);
    }

    v25 = *(a1 + 32);
    v26 = *a2;
    v27 = (*(a2 + 8) - *a2) >> 2;
    v29[0] = MEMORY[0x29EDCA5F8];
    v29[1] = 0x40000000;
    v29[2] = sub_29934504C;
    v29[3] = &unk_29EF130E0;
    *&v29[8] = v22;
    v31 = a7;
    v35 = v20 >> 25;
    v36 = v19;
    v29[9] = v24;
    v29[10] = a10;
    *&v29[11] = a9;
    v29[12] = a6;
    v32 = v28;
    v33 = v23;
    v34 = a5;
    v30 = a8;
    v29[4] = v37;
    v29[5] = v42;
    v29[6] = v41;
    v29[7] = a1;
    sub_299384450(v25, v26, v27, 8, 1, v29);
    if (v24)
    {
      CFRelease(v24);
    }

    _Block_object_dispose(v37, 8);
    if (__p)
    {
      v39 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(v41, 8);
    _Block_object_dispose(v42, 8);
  }
}

void sub_299344FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  _Block_object_dispose(&a26, 8);
  if (__p)
  {
    a32 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v32 - 168), 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

__n128 sub_299345010(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_299345034(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_29934504C(uint64_t a1, int *a2, uint64_t a3, double a4, uint64_t a5, _BYTE *a6)
{
  buf[3] = *MEMORY[0x29EDCA608];
  if (a3 < 1)
  {
    goto LABEL_48;
  }

  v9 = *a2;
  if (v9 < 0x1F4 || *(a1 + 64) >= a4)
  {
    goto LABEL_48;
  }

  v11 = *(a1 + 56);
  v12 = sub_2993F52EC(*(v11 + 32), v9);
  v13 = sub_299327878(*(v11 + 16), v12);
  v14 = v13;
  if (v13)
  {
    Length = CFStringGetLength(v13);
  }

  else
  {
    Length = 0;
  }

  v16 = *(a1 + 108);
  if (Length >= (v16 & ~(v16 >> 31)))
  {
    v17 = v16 & ~(v16 >> 31);
  }

  else
  {
    v17 = Length;
  }

  if (v14)
  {
    v18 = v12 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    if ((v19 = *(a1 + 72)) == 0 || !v17 || ((v20.location = 0, v20.length = v17, Length <= v16) ? (v21 = CFStringCompareWithOptions(*(a1 + 72), v14, v20, 0)) : (v21 = CFStringCompareWithOptions(v14, v19, v20, 0)), v21 == kCFCompareEqualTo))
    {
      if ((*(a1 + 116) & 1) == 0)
      {
        sub_299233090(v11, v14, v12);
      }

      sub_2992141C0((*(*(a1 + 32) + 8) + 40), a2);
      v22 = *(*(*(a1 + 32) + 8) + 48) - *(*(*(a1 + 32) + 8) + 40) < 5uLL || sub_2993F60EC(*(v11 + 32), 2, (*(*(*(a1 + 32) + 8) + 48) - 8), 2) > -2.5;
      v23 = Length - *(a1 + 108);
      if (*(a1 + 117))
      {
        if (v23 < 0 || !v22)
        {
          goto LABEL_37;
        }
      }

      else if (((sub_299281E24(v12) ^ 1) & v22) != 1 || v23 < 0)
      {
        goto LABEL_37;
      }

      if ((*(a1 + 116) & 1) != 0 || sub_299345480(v12))
      {
        v25 = log(v23 + 1.0);
        v26 = *(a1 + 80);
        buf[0] = v25 * 0.0 + *(a1 + 88) + a4;
        sub_29934554C(v26, buf, *(*(a1 + 32) + 8) + 40);
      }

LABEL_37:
      if (!sub_299281B44(v12))
      {
        v27 = (*(a1 + 108) - v17);
        if (v27 >= 1)
        {
          v28 = (*(a1 + 96) + 2 * v17);
LABEL_42:
          sub_299344D7C(v11, *(*(a1 + 32) + 8) + 40, (*(a1 + 110) + Length), *(a1 + 112), (*(a1 + 114) - 1), v28, v27, *(a1 + 104));
          goto LABEL_43;
        }

        if ((*(a1 + 116) & 1) == 0)
        {
          v28 = 0;
          goto LABEL_42;
        }
      }

LABEL_43:
      *(*(*(a1 + 32) + 8) + 48) -= 4;
      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }

  v29 = sub_2993652F8(0xAu);
  os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_48:
  v30 = *(*(a1 + 48) + 8);
  v31 = *(v30 + 24) + 1;
  *(v30 + 24) = v31;
  if (v31 > 0x20 || *(*(*(a1 + 40) + 8) + 24) > *(a1 + 112))
  {
    *a6 = 1;
  }
}

void sub_29934542C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_299219AB4(va, 0);
  sub_299219AB4(va1, 0);
  _Unwind_Resume(a1);
}

CFIndex sub_299345480(const __CFString *a1)
{
  result = CFStringGetLength(a1);
  if (result)
  {
    if (CFStringGetCharacterAtIndex(a1, result - 1) == 12387)
    {
      return 0;
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A1461228, memory_order_acquire) & 1) == 0)
      {
        if (__cxa_guard_acquire(&qword_2A1461228))
        {
          qword_2A1461220 = CFSetCreate(0, off_2A145F610, 3, MEMORY[0x29EDB9030]);
          __cxa_guard_release(&qword_2A1461228);
        }
      }

      return CFSetContainsValue(qword_2A1461220, a1) == 0;
    }
  }

  return result;
}

void *sub_29934554C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 5;
    if ((v8 + 1) >> 59)
    {
      sub_299212A8C();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 4;
    if (v9 >> 4 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v21 = a1;
    if (v11)
    {
      if (!(v11 >> 59))
      {
        operator new();
      }

      sub_29919600C();
    }

    v12 = (32 * v8);
    v17 = 0;
    v18 = v12;
    v19 = 32 * v8;
    v20 = 0;
    *v12 = *a2;
    v12[2] = 0;
    v12[3] = 0;
    v12[1] = 0;
    sub_29920DED0((32 * v8 + 8), *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
    v7 = (v19 + 32);
    v13 = *(a1 + 8) - *a1;
    v14 = v18 - v13;
    memcpy(v18 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v7;
    v16 = *(a1 + 16);
    *(a1 + 16) = v20;
    v19 = v15;
    v20 = v16;
    v17 = v15;
    v18 = v15;
    result = sub_299347370(&v17);
  }

  else
  {
    *v5 = *a2;
    v5[2] = 0;
    v5[3] = 0;
    v5[1] = 0;
    result = sub_29920DED0(v5 + 1, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
    v7 = v5 + 4;
    *(a1 + 8) = v5 + 4;
  }

  *(a1 + 8) = v7;
  return result;
}

void sub_2993456B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299347370(va);
  _Unwind_Resume(a1);
}

void sub_2993456D0(uint64_t *a1, uint64_t *a2, const __CFString *a3, const __CFString *a4, int a5, const void **a6, uint64_t *a7, uint64_t *a8, double a9, unint64_t a10, uint64_t a11, int a12, const __CFString *a13, unsigned int a14, void *a15)
{
  v59 = *MEMORY[0x29EDCA608];
  sub_299237120();
  if (*(a8[1] - 4) != 2)
  {
    v42 = a4;
    v44 = 0;
    range = 0;
    __p = 0;
    v50 = 0;
    v51 = 0;
    v20 = *a2;
    v21 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
    str = a3;
    if (v21 - a11 > a10)
    {
      v22 = 0;
      v23 = 0;
      v24 = a11 + a10 - v21;
      v25 = 40 * a10;
      do
      {
        v26 = (v20 + v25);
        v28 = *v26;
        v27 = v26[1];
        v29 = *(v26 + 4);
        *&buf[32] = v29;
        *buf = v28;
        *&buf[16] = v27;
        buf[38] = 2;
        buf[37] = BYTE5(v29) | 1;
        *buf = 0;
        sub_2992DD840(&__p, buf);
        v20 = *a2;
        v30 = *a2 + v25;
        v22 += *(v30 + 28);
        v23 += *(v30 + 24);
        v25 += 40;
      }

      while (!__CFADD__(v24++, 1));
      v44 = v22;
      range = v23;
    }

    theString = CFStringCreateMutable(0, 0);
    Mutable = CFStringCreateMutable(0, 0);
    v32 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) - a11;
    v33 = *a8;
    if (v32 >= (a8[1] - *a8) >> 2)
    {
LABEL_19:
      if (sub_29921788C(a7, a14) >= 1)
      {
        v56 = 0;
        v57 = 0;
        sub_299276A84(a13);
      }

      v60.location = 0;
      v60.length = range;
      v38 = CFStringCreateWithSubstring(0, str, v60);
      v52 = v38;
      v61.location = 0;
      v61.length = v44;
      v39 = CFStringCreateWithSubstring(0, v42, v61);
      v57 = v39;
      MutableCopy = CFStringCreateMutableCopy(0, 0, v38);
      v56 = MutableCopy;
      v41 = CFStringCreateMutableCopy(0, 0, v39);
      v55 = v41;
      CFStringAppend(MutableCopy, theString);
      CFStringAppend(v41, Mutable);
      v54 = 0;
      sub_299276A84(MutableCopy);
    }

    while (1)
    {
      v53 = 0;
      v52 = 0;
      v34 = sub_2993F52EC(a1[4], *(v33 + 4 * v32));
      v53 = v34;
      v35 = sub_299327878(a1[2], v34);
      v52 = v35;
      if (sub_299281B44(v34))
      {
        break;
      }

      Length = CFStringGetLength(v34);
      if (v35)
      {
        v37 = CFStringGetLength(v35);
      }

      else
      {
        v37 = 0;
      }

      CFStringAppend(theString, v34);
      if (v35)
      {
        CFStringAppend(Mutable, v35);
      }

      *&buf[36] = 131328;
      memset(&buf[4], 0, 32);
      *&buf[24] = Length;
      *&buf[28] = v37;
      *buf = 0;
      sub_2992DD840(&__p, buf);
      if (v35)
      {
        CFRelease(v35);
      }

      if (v34)
      {
        CFRelease(v34);
      }

      ++v32;
      v33 = *a8;
      if (v32 >= (a8[1] - *a8) >> 2)
      {
        goto LABEL_19;
      }
    }

    if (v35)
    {
      CFRelease(v35);
    }

    if (v34)
    {
      CFRelease(v34);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (theString)
    {
      CFRelease(theString);
    }

    if (__p)
    {
      v50 = __p;
      operator delete(__p);
    }
  }
}

void sub_299345D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, uint64_t a33, char a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_299345F40(uint64_t a1@<X0>, uint64_t a2@<X2>, const void *a3@<X3>, const void *a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v7 = a7;
  v107 = *MEMORY[0x29EDCA608];
  v101[0] = a3;
  v101[1] = a4;
  v99 = a5;
  v100 = a6;
  *a7 = &unk_2A1F65118;
  *(a7 + 8) = 0u;
  *(a7 + 24) = 0u;
  *(a7 + 40) = 1065353216;
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  *(a7 + 64) = 0;
  if (!a2)
  {
    return;
  }

  if (!*(a1 + 32))
  {
    return;
  }

  if ((*(*a2 + 408))(a2) == 1)
  {
    return;
  }

  v88 = sub_299237120();
  if ((*v88 & 1) == 0 && (*(*(a1 + 8) + 3) & 2) == 0)
  {
    return;
  }

  (*(*a2 + 528))(a2, 10, "[MJNP::expandPhrasesWithLanguageModel] Handling n-gram expansion from", 1);
  v9 = v100;
  v82 = v99;
  if ((**(a1 + 8) & 0x20) != 0 && v100)
  {
    do
    {
      v10 = *(v99 - 2 + 2 * v9);
      v11 = v10 - 97;
      v12 = (v10 + 191);
      if (v11 >= 0x1A && v12 > 0x19)
      {
        break;
      }

      --v9;
    }

    while (v9);
  }

  if (!v99)
  {
    v9 = 0;
  }

  v83 = v9;
  v89 = (*(*a2 + 304))(a2);
  v79 = (v7 + 48);
  v14 = 0;
  v15 = 0;
  v81 = *MEMORY[0x29EDB8ED8];
  v80 = *MEMORY[0x29EDB8EE8];
  while (0xCCCCCCCCCCCCCCCDLL * ((v89[1] - *v89) >> 3) > v15)
  {
    if (!v15 && (**(a1 + 8) & 0x2000000) != 0)
    {
      goto LABEL_74;
    }

    v90 = v15;
    v87 = v14;
    __src = (*(*a2 + 544))(a2);
    v84 = v16;
    v104 = 0;
    v103 = 0uLL;
    v18 = *v89;
    v17 = v89[1];
    v19 = (*(*a2 + 304))(a2);
    v20 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v18) >> 3);
    if (v20 == v90)
    {
      LOWORD(v21) = 0;
      goto LABEL_26;
    }

    v22 = v19;
    v21 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v91 = v20 - v90;
    v26 = v20 + v87;
    v27 = 37;
    do
    {
      v28 = sub_2992C77D8(a2, v25);
      v30 = v29;
      v31 = sub_2992C71F4(a2, v25);
      v33 = (*(**(a1 + 24) + 32))(*(a1 + 24), v28, v30, v31, v32);
      v24 |= (*(*v22 + v27) & 2) >> 1;
      if ((v24 & 1) == 0 && (v33 & 4) == 0)
      {
        v63 = sub_2993652F8(0xAu);
        if (!os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_69;
        }

        v64 = sub_2992C77D8(a2, v25);
        v66 = v65;
        v67 = sub_2992C71F4(a2, v25);
        v69 = v68;
        v70 = CFStringCreateWithCharactersNoCopy(v81, v64, v66, v80);
        v96 = v70;
        v71 = CFStringCreateWithCharactersNoCopy(v81, v67, v69, v80);
        __p = v71;
        v72 = sub_2993652F8(0xAu);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *&buf[4] = v70;
          *&buf[12] = 2112;
          *&buf[14] = v71;
          _os_log_debug_impl(&dword_29918C000, v72, OS_LOG_TYPE_DEBUG, "[MJNP::getAndCheckContextSurfaceAndReadingFromCandidate] %@ %@ is an invalid context word.", buf, 0x16u);
          if (!v71)
          {
LABEL_67:
            if (v70)
            {
              CFRelease(v70);
            }

LABEL_69:
            if (!v23)
            {
              goto LABEL_70;
            }

LABEL_26:
            if (v83 >= v21)
            {
              v34 = (v82 + 2 * v21);
            }

            else
            {
              v34 = 0;
            }

            v35 = *v88;
            memset(buf, 0, sizeof(buf));
            sub_299344CEC(a1, __src, v103, -v90 - 0x3333333333333333 * ((v89[1] - *v89) >> 3), buf);
            v36 = v35 == 0;
            v37 = 2;
            if (v36)
            {
              v38 = v90 != 0;
            }

            else
            {
              v38 = 2;
            }

            v96 = 0;
            v97 = 0;
            v98 = 0;
            v7 = a7;
            if (*(*&buf[8] - 4) >= 0x1F4u)
            {
              v39 = **(a1 + 8);
              if (!sub_299281A24(*&__src[2 * v84 - 2]))
              {
                v40 = sub_2993F62C8(*(a1 + 32), *buf, (*&buf[8] - *buf) >> 2);
                v41 = (v83 - v21);
                sub_299344D7C(a1, buf, 0, 3, v38, v34, v41, v39, v40, &v96);
                v42 = v100 - v83;
                __p = 0;
                v94 = 0;
                v95 = 0;
                sub_299218E20(&__p, (v41 & ~(v41 >> 31)) + (v100 - v83));
                if (v41 >= 1 && v34)
                {
                  v43 = (v83 - v21);
                  do
                  {
                    sub_29922E664(&__p, v34++);
                    --v43;
                  }

                  while (v43);
                }

                v44 = v42;
                if (v44 >= 1)
                {
                  v45 = (v99 + 2 * v100 - 2 * v42);
                  do
                  {
                    sub_29922E664(&__p, v45++);
                    --v44;
                  }

                  while (v44);
                }

                v46 = CFStringCreateWithCharacters(0, __p, (v94 - __p) >> 1);
                v47 = v97;
                if (v96 != v97)
                {
                  p_info = &v96->info;
                  while (1)
                  {
                    if (*v88 != 1)
                    {
LABEL_54:
                      v56 = *(p_info - 1);
                      v57 = **(a1 + 8);
                      v58 = (*(*a2 + 304))(a2);
                      v59 = (*(*a2 + 24))(a2);
                      v60 = (*(*a2 + 232))(a2);
                      v61 = (*(*a2 + 112))(a2);
                      sub_2993456D0(a1, v58, v59, v60, v61, v101, &v99, p_info, v56, 0, v90, 88, v46, v57, a7);
                      goto LABEL_55;
                    }

                    v49 = p_info[1];
                    if (*p_info != v49)
                    {
                      break;
                    }

LABEL_55:
                    v62 = p_info + 3;
                    p_info += 4;
                    if (v62 == v47)
                    {
                      goto LABEL_56;
                    }
                  }

                  v51 = *v89;
                  v50 = v89[1];
                  v102 = 0;
                  v52 = sub_2993F52EC(*(a1 + 32), *(v49 - 4));
                  v53 = *p_info;
                  v54 = p_info[1];
                  v102 = v52;
                  if (0xCCCCCCCCCCCCCCCDLL * ((v50 - v51) >> 3) + 1 == (v54 - v53) >> 2 && *buf != *&buf[8] && !memcmp(v53, *buf, (*&buf[8] - *buf) >> 2) && (sub_299281E24(v52) & 1) != 0)
                  {
                    v55 = 0;
                    if (!v52)
                    {
LABEL_53:
                      if (v55)
                      {
                        goto LABEL_54;
                      }

                      goto LABEL_55;
                    }
                  }

                  else
                  {
                    v55 = 1;
                    if (!v52)
                    {
                      goto LABEL_53;
                    }
                  }

                  CFRelease(v52);
                  goto LABEL_53;
                }

LABEL_56:
                if (v46)
                {
                  CFRelease(v46);
                }

                if (__p)
                {
                  v94 = __p;
                  operator delete(__p);
                }

                v37 = 0;
              }
            }

            __p = &v96;
            sub_2993473D4(&__p);
            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }

            goto LABEL_71;
          }
        }

        else if (!v71)
        {
          goto LABEL_67;
        }

        CFRelease(v71);
        goto LABEL_67;
      }

      *buf = (*(*a2 + 568))(a2, v25);
      sub_29922E664(&v103, buf);
      v21 += (*(*a2 + 320))(a2, v25++);
      v23 = v25 >= v91;
      v27 += 40;
    }

    while (v26 != v25);
    if ((v24 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_70:
    v37 = 4;
    v7 = a7;
LABEL_71:
    if (v103)
    {
      *(&v103 + 1) = v103;
      operator delete(v103);
    }

    v14 = v87;
    v15 = v90;
    if ((v37 | 4) == 4)
    {
LABEL_74:
      ++v15;
      --v14;
      if (v15 == 3)
      {
        break;
      }

      continue;
    }

    break;
  }

  *&v103 = &unk_2A1F65CF8;
  *(&v103 + 1) = sub_2992ACF40;
  v105 = &v103;
  sub_2992AB9D4(v7, &v103);
  sub_29922D72C(&v103);
  v73 = sub_2993652F8(0xBu);
  v74 = os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG);
  v75 = *(v7 + 56) - *(v7 + 48);
  if (!v74)
  {
    goto LABEL_84;
  }

  if (v75 >= 0x19)
  {
    v76 = 3;
    do
    {
      v77 = sub_2993652F8(0xBu);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
      {
        v78 = (*(**(*v79 + 8 * v76) + 24))(*(*v79 + 8 * v76));
        LODWORD(v103) = 138412290;
        *(&v103 + 4) = v78;
        _os_log_debug_impl(&dword_29918C000, v77, OS_LOG_TYPE_DEBUG, "Pruning %@ (n-gram expansion)", &v103, 0xCu);
      }

      ++v76;
      v75 = *(v7 + 56) - *(v7 + 48);
    }

    while (v76 < v75 >> 3);
LABEL_84:
    if (v75 >= 0x21)
    {
      sub_2992AC44C(v7, 3uLL);
    }
  }
}

void sub_299346998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, void *__p, uint64_t a35, uint64_t a36, char a37)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_299346AAC(uint64_t a1@<X0>, void *a2@<X1>, const void *a3@<X2>, const void *a4@<X3>, const UniChar *a5@<X4>, CFIndex a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a7;
  v100 = *MEMORY[0x29EDCA608];
  v96[0] = a3;
  v96[1] = a4;
  v94 = a5;
  v95 = a6;
  *a7 = &unk_2A1F65118;
  *(a7 + 8) = 0u;
  *(a7 + 24) = 0u;
  *(a7 + 40) = 1065353216;
  *(a7 + 56) = 0;
  *(a7 + 64) = 0;
  *(a7 + 48) = 0;
  if (!*(a1 + 32) || a2[2] == a2[1] || sub_2993831B8(a2))
  {
    return;
  }

  v11 = sub_299237120();
  v12 = 4;
  if (!a4)
  {
    v12 = 8;
  }

  v75 = v12;
  v13 = v11[164];
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v14 = a2[1];
  v15 = a2[2];
  v16 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - v14) >> 3);
  v78 = a1;
  v17 = *(*(a1 + 32) + 32);
  v76 = v13;
  v18 = (v16 - (v17 + v13)) & ~((v16 - (v17 + v13)) >> 63);
  if (v16 <= v18)
  {
    v30 = 0;
    v31 = 0;
    v33 = 0;
    v32 = 0;
LABEL_23:
    v34 = *(a2[10] + 8 * v18);
    v35 = a2[4];
    v36 = a2[5] - v35;
    v37 = (v35 + 2 * v34);
    if (v34 >= v36 >> 1)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37;
    }

    v39 = v18;
    if (v38)
    {
      v40 = v32;
    }

    else
    {
      v40 = 0;
    }

    v41 = *(a2[13] + 8 * v39);
    v42 = a2[7];
    v43 = a2[8] - v42;
    v44 = (v42 + 2 * v41);
    if (v41 >= v43 >> 1)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    if (v45)
    {
      v46 = v33;
    }

    else
    {
      v46 = 0;
    }

    v85 = 0;
    v86 = 0;
    v87 = 0;
    v47 = (v14 + 40 * v39);
    v48 = v30;
    if (v47 != v15)
    {
      do
      {
        sub_2992DD840(&v85, v47);
        v47 = (v47 + 40);
      }

      while (v47 != v15);
      v48 = v91;
    }

    v49 = v31 - v30;
    __p = 0;
    v83 = 0;
    v84 = 0;
    v50 = v78;
    sub_299344CEC(v78, v38, v48, v49, &__p);
    v51 = sub_2993F62C8(*(v78 + 32), __p, (v83 - __p) >> 2);
    v79 = 0;
    v80 = 0;
    v81 = 0;
    sub_299344D7C(v50, &__p, 0, 3, v76, v94, v95, **(v50 + 8), v51, &v79);
    v52 = CFStringCreateWithCharacters(0, v45, v46);
    v53 = CFStringCreateWithCharacters(0, v38, v40);
    v54 = CFStringCreateWithCharacters(0, v94, v95);
    v55 = v79;
    if (v80 != v79)
    {
      v56 = 0;
      v57 = 0;
      do
      {
        v58 = v55 + v56;
        v60 = *(v58 + 8);
        v59 = *(v58 + 16);
        if (v60 != v59)
        {
          v61 = sub_2993F52EC(*(v50 + 32), *(v59 - 4));
          v62 = v61;
          if (v61)
          {
            Length = CFStringGetLength(v61);
            if (Length && CFStringGetCharacterAtIndex(v62, Length - 1) != 12387)
            {
              if ((atomic_load_explicit(&qword_2A1461228, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461228))
              {
                qword_2A1461220 = CFSetCreate(0, off_2A145F610, 3, MEMORY[0x29EDB9030]);
                __cxa_guard_release(&qword_2A1461228);
                v50 = v78;
              }

              v64 = CFSetContainsValue(qword_2A1461220, v62) == 0;
            }

            else
            {
              v64 = 0;
            }

            CFRelease(v62);
            if (v64)
            {
              sub_2993456D0(v50, &v85, v53, v52, 0, v96, &v94, (v79 + v56 + 8), *(v79 + v56), (v83 - __p) >> 2, 0, 66, v54, **(v50 + 8), v7);
            }
          }
        }

        ++v57;
        v55 = v79;
        v56 += 32;
      }

      while (v57 < (v80 - v79) >> 5);
    }

    *buf = &unk_2A1F65CF8;
    *&buf[8] = sub_2992ACF40;
    v99 = buf;
    sub_2992AB9D4(v7, buf);
    sub_29922D72C(buf);
    v65 = v7[6];
    v66 = 0;
    if (v7[7] != v65)
    {
      do
      {
        if ((*(*v65[v66] + 392))(v65[v66]) < -100.0)
        {
          break;
        }

        ++v66;
        v65 = v7[6];
        v67 = v7[7] - v65;
        v68 = v75 >= v67 >> 3 ? v67 >> 3 : v75;
      }

      while (v66 < v68);
    }

    sub_2992AC44C(v7, v66);
    if (v54)
    {
      CFRelease(v54);
    }

    if (v53)
    {
      CFRelease(v53);
    }

    if (v52)
    {
      CFRelease(v52);
    }

    *buf = &v79;
    sub_2993473D4(buf);
    if (__p)
    {
      v83 = __p;
      operator delete(__p);
    }

    if (v85)
    {
      v86 = v85;
      operator delete(v85);
    }

    goto LABEL_69;
  }

  v73 = (v16 - (v17 + v13)) & ~((v16 - (v17 + v13)) >> 63);
  v74 = v7;
  v19 = 0;
  v20 = 0;
  v21 = 40 * v18;
  while (1)
  {
    v22 = *(a2[10] + 8 * v18);
    v23 = a2[4];
    if (v22 >= (a2[5] - v23) >> 1)
    {
      chars = 0;
      v24 = 0;
    }

    else
    {
      chars = (v23 + 2 * v22);
      v24 = v23 ? *(v14 + v21 + 24) : 0;
    }

    v25 = *(a2[13] + 8 * v18);
    v26 = a2[7];
    if (v25 >= (a2[8] - v26) >> 1)
    {
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = (v26 + 2 * v25);
      v28 = v26 ? *(v14 + v21 + 28) : 0;
    }

    if (v18 + *(*(v78 + 32) + 32) > 0xCCCCCCCCCCCCCCCDLL * ((v15 - v14) >> 3))
    {
      v29 = (*(**(v78 + 24) + 32))(*(v78 + 24), v27, v28, chars, v24);
      if ((v29 & 4) == 0)
      {
        break;
      }
    }

    *buf = v24;
    sub_29922E664(&v91, buf);
    *buf = v28;
    sub_29922E664(&v88, buf);
    v20 += v24;
    v19 += v28;
    ++v18;
    v14 = a2[1];
    v15 = a2[2];
    v21 += 40;
    if (v18 >= 0xCCCCCCCCCCCCCCCDLL * ((v15 - v14) >> 3))
    {
      v30 = v91;
      v31 = v92;
      v32 = v20;
      v33 = v19;
      v18 = v73;
      v7 = v74;
      goto LABEL_23;
    }
  }

  v69 = sub_2993652F8(0xAu);
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    v70 = CFStringCreateWithCharacters(0, v27, v28);
    v85 = v70;
    v71 = CFStringCreateWithCharacters(0, chars, v24);
    __p = v71;
    v72 = sub_2993652F8(0xAu);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      *&buf[4] = v70;
      *&buf[12] = 2112;
      *&buf[14] = v71;
      v98 = 1024;
      LODWORD(v99) = v29;
      _os_log_debug_impl(&dword_29918C000, v72, OS_LOG_TYPE_DEBUG, "getAndCheckContextSurfaceAndReadingFromHistory: %@ %@ (attr: %d) is an invalid context word.", buf, 0x1Cu);
      if (!v71)
      {
LABEL_78:
        if (v70)
        {
          CFRelease(v70);
        }

        goto LABEL_69;
      }
    }

    else if (!v71)
    {
      goto LABEL_78;
    }

    CFRelease(v71);
    goto LABEL_78;
  }

LABEL_69:
  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }
}

void sub_2993471F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, const void *a22, const void *a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  __cxa_guard_abort(&qword_2A1461228);
  sub_299219AB4(&a21, 0);
  sub_299219AB4(&a22, 0);
  sub_299219AB4(&a23, 0);
  *(v36 - 144) = &a24;
  sub_2993473D4((v36 - 144));
  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  v38 = *(v36 - 200);
  if (v38)
  {
    *(v36 - 192) = v38;
    operator delete(v38);
  }

  sub_29921D794(a16);
  _Unwind_Resume(a1);
}

uint64_t sub_299347370(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 32;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2993473D4(void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_299347460(void *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_299347500(_Unwind_Exception *exception_object)
{
  v3 = v1[1];
  v1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29934756C(uint64_t *a1)
{
  sub_2993EEE54(a1[2]);
  std::mutex::~mutex((a1 + 3));
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    v3 = sub_2993EEDEC(v2);
    MEMORY[0x29C29BFB0](v3, 0x10E0C400F5837B5);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_299347628(uint64_t a1, CFArrayRef theArray)
{
  if (theArray && CFArrayGetCount(theArray))
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v5 = Count;
      if ((Count & 1) == 0)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], Count, MEMORY[0x29EDB9000]);
        if (v5 >= 1)
        {
          v7 = 0;
          v8 = *MEMORY[0x29EDB8F80];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
            if (ValueAtIndex != v8)
            {
              v10 = ValueAtIndex;
              if (CFStringGetLength(ValueAtIndex))
              {
                length = CFStringGetRangeOfComposedCharactersAtIndex(v10, 0).length;
                if (length < CFStringGetLength(v10))
                {
                  CFArrayAppendValue(Mutable, v10);
                  CFArrayAppendValue(Mutable, v10);
                }
              }
            }

            v7 += 2;
          }

          while (v7 < v5);
        }

        if (Mutable)
        {
          if (CFArrayGetCount(Mutable))
          {
            std::mutex::lock((a1 + 24));
            operator new();
          }

          CFRelease(Mutable);
        }
      }
    }
  }

  else
  {

    sub_299347884(a1);
  }
}

void sub_299347884(uint64_t *a1)
{
  std::mutex::lock((a1 + 3));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::mutex::unlock((a1 + 3));
}

void sub_299347920(uint64_t *a1)
{
  v7 = (a1 + 3);
  v8 = 0;
  sub_2993479E4(&v7);
  if (v2)
  {
    v3 = a1[1];
    if (v3)
    {
      v4 = atomic_load((v3 + 97));
      if ((v4 & 1) == 0)
      {
        v5 = atomic_load((v3 + 96));
        if (v5)
        {
          v6 = *a1;
          *a1 = a1[1];
          a1[1] = 0;
          if (v6)
          {
            (*(*v6 + 8))(v6);
          }
        }
      }
    }
  }

  if (v8 == 1)
  {
    std::mutex::unlock(v7);
  }
}

void sub_2993479C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993479E4(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      *(a1 + 8) = std::mutex::try_lock(v2);
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::try_lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::try_lock: already locked");
  sub_299347A40(v3, v4, v5, v6);
}

void sub_299347A40(uint64_t *a1, const __CFString *a2, uint64_t *a3, uint64_t a4)
{
  sub_299347920(a1);
  if (*a1)
  {
    v9 = *a3;
    v8 = a3[1];
    if (v8 != *a3)
    {
      v10 = 0;
      do
      {
        v11 = *(v9 + 8 * v10);
        if ((v11 - 10) < 0xFFFFFFFFFFFFFFF7)
        {
          break;
        }

        if (a4 == -1 || v11 == a4)
        {
          sub_299276BDC(a2, &__p);
          if (__p)
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          v13 = *a1;
          v14[0] = MEMORY[0x29EDCA5F8];
          v14[1] = 0x40000000;
          v14[2] = sub_299347B98;
          v14[3] = &unk_29EF13100;
          v14[4] = a1;
          v14[5] = v11;
          sub_2992A2B00(v13, __p + 2 * (((v16 - __p) >> 1) - v11), v12, v14);
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }

          v9 = *a3;
          v8 = a3[1];
        }

        ++v10;
      }

      while (v10 < (v8 - v9) >> 3);
    }
  }
}

void sub_299347B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299347B98(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) > *(a1 + 40))
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *(a1 + 40);
    }

    else
    {
      v5 = 0;
    }

    v6 = CFStringCreateWithCharacters(0, v4, v5);
    v7 = *(a2 + 24);
    v8 = *(a1 + 40);
    v9 = sub_299278EC8(v6);
    v10 = v7 - v8;
    if (v9)
    {
      if (v10 <= 3)
      {
        v11 = *(a1 + 40);
LABEL_10:
        v12 = *(a2 + 16);
        v13 = (v12 + 2 * v11);
        if (v12)
        {
          v14 = v7 - v8;
        }

        else
        {
          v14 = 0;
        }

        CFStringCreateWithCharacters(0, (v12 + 2 * v11), v14);
        v15 = (2 * v14);
        if (v15)
        {
          v16 = 0;
          do
          {
            v17 = *v13++;
            v16 = (1025 * (v16 + v17)) ^ ((1025 * (v16 + v17)) >> 6);
            --v15;
          }

          while (v15);
        }

        operator new();
      }
    }

    else
    {
      v11 = *(a1 + 40);
      if (v11 > 2 || v10 <= 2)
      {
        goto LABEL_10;
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }
}

void sub_299347D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, ...)
{
  va_start(va, a16);
  if (a16)
  {
    sub_2991A893C(a16);
  }

  MEMORY[0x29C29BFB0](v16, 0x10A1C4025EE9B24, a3, a4, a5, a6, a7, a8);
  sub_299219AB4(va, 0);
  sub_299219AB4((v17 - 56), 0);
  _Unwind_Resume(a1);
}

void sub_299347E94(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_299347ECC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F72E08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299347F2C(void *a1, int a2)
{
  v2 = sub_299347F68(a1, a2);
  v3 = sub_2993E158C(*(v2 + 56));
  return v3 | sub_2993E158C(*(v2 + 64));
}

uint64_t sub_299347F68(void *a1, int a2)
{
  if (a2 == 2)
  {
    result = a1[4];
    if (!result)
    {
      operator new();
    }
  }

  else if (a2 == 1)
  {
    result = a1[3];
    if (!result)
    {
      operator new();
    }
  }

  else if (a2)
  {
    return 0;
  }

  else
  {
    result = a1[2];
    if (!result)
    {
      operator new();
    }
  }

  return result;
}

void sub_2993480B0(unsigned __int8 *a1, const void *a2, int a3)
{
  v5 = sub_299347F68(a1, a3);
  sub_2992522C8(v5, a2);
  if (a3 == 2)
  {
    operator new();
  }
}

void sub_2993481C4(void *result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  switch(a2)
  {
    case 2:
      v3 = result[4];
      goto LABEL_5;
    case 1:
      v3 = result[3];
      goto LABEL_5;
    case 0:
      v3 = result[2];
LABEL_5:
      sub_299252F14(v3, a3);
      return;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

uint64_t sub_2993481FC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_299252124(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_299348248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, __CFArray *a11)
{
  v11 = MEMORY[0x2A1C7C4A8](a1);
  v161 = v17;
  v199 = *MEMORY[0x29EDCA608];
  if (v18 != 2037345641)
  {
    return 4294960183;
  }

  if (v12 > 0xC8)
  {
    return 4294960179;
  }

  v20 = v11;
  v21 = 0;
  while (*&aKoyhdnihsnihuk[v21 + 20] != v14)
  {
    v21 += 4;
    if (v21 == 12)
    {
      return 4294960183;
    }
  }

  v173 = 0;
  *s = 0;
  v153 = v11;
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      v23 = 0;
      while (*(v16 + 4 * i) != *&aKoyhdnihsnihuk[4 * v23])
      {
        if (++v23 == 5)
        {
          return 4294960183;
        }
      }

      if (*(s + v23))
      {
        return 4294960185;
      }

      *(s + v23) = 1;
    }

    if (v14 != 1025515552)
    {
      return 4294960178;
    }

    v24 = 0;
    v25 = 1;
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v165 = 0;
    v141 = -1;
    v142 = -1;
    v143 = -1;
    v159 = -1;
    v26 = 255;
    do
    {
      v27 = *(v16 + 4 * v24);
      result = 4294960184;
      if (v27 <= 1751740018)
      {
        if (v27 == 1718971253)
        {
          if (v143 != -1)
          {
            return 4294960185;
          }

          *(&v181 + v24) = &v185;
          v180[v24] = 0;
          v143 = v25 - 1;
        }

        else
        {
          if (v27 != 1751740004)
          {
            return result;
          }

          if (v142 != -1)
          {
            return 4294960185;
          }

          *(&v181 + v24) = &v167;
          v180[v24] = 2;
          v142 = v25 - 1;
        }
      }

      else
      {
        switch(v27)
        {
          case 1751740019:
            if (v26 != 255)
            {
              return 4294960185;
            }

            *(&v181 + v24) = &v168;
            v180[v24] = 2;
            v26 = (v25 - 1);
            break;
          case 1835360622:
            if (v141 != -1)
            {
              return 4294960185;
            }

            *(&v181 + v24) = &v166[1];
            v180[v24] = 4;
            v141 = v25 - 1;
            break;
          case 1752788843:
            if (v159 != -1)
            {
              return 4294960185;
            }

            *(&v181 + v24) = v187;
            v159 = v25 - 1;
            break;
          default:
            return result;
        }
      }

      v24 = v25++;
    }

    while (v24 < v15);
    v139 = v26 == 255;
    v20 = v153;
LABEL_39:
    v28 = 0;
    v167 = 0;
    memset(v166, 0, sizeof(v166));
    v163 = 0;
    v164 = 0;
    v29 = v12 >> 1;
    v30 = v12 >> 1;
    v160 = v12;
    while (v30)
    {
      v31 = *(v13 + v28 * 2);
      v188[v28++] = v31;
      --v30;
      if (!v31)
      {
        if (v30)
        {
          bzero(&v188[v28], (v12 & 0xFE) - v28 * 2);
          v12 = v160;
        }

        break;
      }
    }

    *(v188 + v12) = 0;
    v168 = 30;
    if (*(v20 + 82) <= 5u)
    {
      LODWORD(v34) = 0;
      LODWORD(v140) = 0;
      v166[0] = 0;
    }

    else
    {
      sub_2993F7500(*(v20 + 84) + 160, v188, v12, v179, v166);
      if (v166[0] && (v32 = sub_2993496F8(v179, v166[0], 9u, v171, 8u)) != 0)
      {
        v33 = v32;
        LODWORD(v140) = 0;
        LODWORD(v34) = 0;
        v35 = 0;
        bytes = v181;
        do
        {
          if (sub_29934978C(v35, v179, v166[0], &__dst, &v165, v171) == -11)
          {
            goto LABEL_73;
          }

          if (v159 != -1)
          {
            v36 = v34;
            v34 = v177;
            v37 = 7 * v177;
            v38 = v165;
            v39 = v165 - v37 - 9 + (((v165 - v37 - 9) & 0x8000u) >> 15);
            v40 = v39 >> 1;
            v41 = v39 >> 1;
            v42 = 2 * v40;
            v43 = &v178[v37];
            v44 = v187;
            while (v41)
            {
              v45 = *v43++;
              *v44++ = v45;
              v42 -= 2;
              --v41;
              if (!v45)
              {
                if (v41)
                {
                  bzero(v44, v42);
                }

                break;
              }
            }

            v180[v159] = v38 - 7 * v34 - 9;
            LODWORD(v34) = v36;
          }

          if (v143 != -1)
          {
            if (v177 && v177 <= 0x49u)
            {
              v46 = 7 * v177;
              v180[v143] = v46;
              memmove(*(&v181 + v143), v178, v46);
            }

            else
            {
              v180[v143] = 0;
            }
          }

          if (v142 != -1)
          {
            **(&v181 + v142) = bswap32(*&v176[1]) >> 16;
          }

          if (v141 != -1)
          {
            **(&v181 + v141) = bswap32(*&v176[3]);
          }

          if (!v139)
          {
            if (v177)
            {
              v47 = 7;
            }

            else
            {
              v47 = 30;
            }

            v168 = v47;
          }

          v34 = (v34 + 1);
          if (v34 <= v161)
          {
LABEL_73:
            v12 = v160;
          }

          else
          {
            sub_299349818(bytes, v180[0], a11);
            v140 = (v140 + 1);
            v12 = v160;
            if (a9 - 1 < v140)
            {
              return 0;
            }
          }

          ++v35;
        }

        while (v35 != v33);
      }

      else
      {
        LODWORD(v34) = 0;
        LODWORD(v140) = 0;
        v12 = v160;
      }
    }

    v138 = v34;
    v48 = 0;
    v168 = 14;
    *&v166[1] = 0;
    v170 = 0;
    v169 = 1;
    v49 = v153;
    while (v29)
    {
      v50 = v188[v48];
      v198[v48++] = v50;
      --v29;
      if (!v50)
      {
        if (v29)
        {
          bzero(&v198[v48], (v12 & 0xFE) - v48 * 2);
          v12 = v160;
        }

        break;
      }
    }

    *(v198 + v12) = 0;
    v189 = 0x100010001;
    v190 = 1;
    v191 = 0;
    v192 = 0x1000100010001;
    v193 = 0;
    v51 = u_strlen(v198);
    v144 = 0;
    v154 = 0;
    if (*(v153 + 82) < 7u)
    {
      goto LABEL_146;
    }

    v52 = 0;
    v154 = 0;
    v144 = 0;
    while (2)
    {
      sub_2993F774C(*(v49 + 84) + 192, v198, 2 * (v51 & 0x7FFF), &v196, &v170, &v169);
      v53 = v170;
      if (!v170)
      {
        break;
      }

      v147 = bswap32(v196) >> 16;
      v145 = v197;
      if (v170 < 5u)
      {
        v57 = 1;
      }

      else
      {
        v54 = 0;
        v55 = 4;
        do
        {
          v56 = &v196 + v55;
          if (*v56 == 255 && v56[1] == 255)
          {
            ++v54;
            v55 += 4;
          }

          v55 += 2;
        }

        while (v55 < v170);
        if (v54 < 0)
        {
          bytesa = WORD2(v169);
LABEL_144:
          v174[v144] = v147;
          v162[v144] = v145;
          *&v174[2 * v144++ + 5] = bytesa;
          goto LABEL_145;
        }

        v57 = v54 + 1;
      }

      v58 = 0;
      v59 = 0;
      v60 = 0;
      bytesa = WORD2(v169);
      v146 = -WORD2(v169);
      while (2)
      {
        v61 = v60 != 0;
        v62 = 4;
        if (v53 >= 5 && v60)
        {
          v63 = 0;
          v62 = 4;
          do
          {
            v64 = &v196 + v62;
            if (*v64 == 255 && v64[1] == 255)
            {
              ++v63;
              v62 += 2;
            }

            v62 += 2;
            v61 = v63 != v60;
          }

          while (v63 != v60 && v62 < v53);
        }

        if (!v61)
        {
          v65 = *&v195[v62 + 254];
          v194 = v65;
          if (v62 >= v53)
          {
            v72 = 0;
            v71 = v65;
          }

          else
          {
            v66 = v62;
            v67 = 2;
            do
            {
              v68 = *(&v196 + v66);
              v69 = *(&v196 + v66 + 1);
              if (v68 == 255 && v69 == 255)
              {
                break;
              }

              v70 = &v195[v67 - 2];
              *v70 = v68;
              v67 += 2;
              v70[1] = v69;
              v66 += 2;
            }

            while (v66 < v53);
            v71 = v194;
            v72 = v67 - 2;
          }

          if ((v71 & 0xFC) == 0xC8)
          {
            v59 = 1;
            goto LABEL_138;
          }

          v58 = 1;
          v73 = v71 > 0x17 || ((1 << v71) & 0x80400C) == 0;
          if (v73 && v71 - 220 >= 2)
          {
            v58 = 0;
          }

          if (v52 > 0x31u)
          {
LABEL_137:
            ++v52;
          }

          else
          {
            v157 = v59;
            v74 = &s[36 * v52];
            v74[33] = bytesa;
            if (v71 - 112 < 4 || v71 == 121)
            {
              v74[33] = v146;
            }

            v75 = HIBYTE(v194);
            if (v71 > 0x9F || HIBYTE(v194) != 3 || *(&v188[129] + (((429496730 * v71) >> 31) & 0x3E)))
            {
              v151 = v58;
              v76 = v72 + ((v72 & 0x8000) >> 15);
              v77 = v76 >> 1;
              v78 = v76 >> 1;
              v79 = 2 * v77;
              v80 = v195;
              v81 = &s[36 * v52];
              while (v78)
              {
                v82 = *v80++;
                *v81++ = v82;
                v79 -= 2;
                --v78;
                if (!v82)
                {
                  if (v78)
                  {
                    bzero(v81, v79);
                  }

                  break;
                }
              }

              *(v74 + v72) = 0;
              *(v74 + 68) = sub_299349620(v71);
              v83 = 0xA01000206uLL >> (8 * v75);
              if (v75 >= 5)
              {
                LOBYTE(v83) = 11;
              }

              *(v74 + 69) = v83;
              v74[35] = v147;
              ++v154;
              v59 = v157;
              v58 = v151;
              goto LABEL_137;
            }
          }
        }

LABEL_138:
        if (++v60 != v57)
        {
          continue;
        }

        break;
      }

      v49 = v153;
      if (!(v58 | v59))
      {
        goto LABEL_144;
      }

LABEL_145:
      v51 = u_strlen(v198);
      if (*(v49 + 82) > 6u)
      {
        continue;
      }

      break;
    }

LABEL_146:
    if (v154)
    {
      LODWORD(v84) = v138;
      v85 = a9 - 1;
      v86 = v181;
      v87 = s;
      LODWORD(v88) = v140;
      v89 = &v180[v159];
      v90 = v154;
      v91 = v160;
      v92 = a10;
      while (1)
      {
        if (v92)
        {
          v93 = *(v87 + 69);
          if (v93 == 1 || v93 == 10)
          {
            goto LABEL_174;
          }
        }

        if (v87[33] != v91)
        {
          goto LABEL_174;
        }

        sub_29936B460(v187, v87, 0x42uLL);
        if (!v187[0])
        {
          goto LABEL_173;
        }

        v95 = v87[35];
        v167 = v95 + sub_299349880(*(v87 + 68), *(v87 + 69)) + 1000;
        if (v159 != -1)
        {
          *v89 = 2 * u_strlen(v87);
        }

        v96 = (v84 + 1);
        if (v96 <= v161)
        {
          v91 = v160;
          v92 = a10;
        }

        else
        {
          sub_299349818(v86, v180[0], a11);
          v88 = (v88 + 1);
          v91 = v160;
          v92 = a10;
          if (v85 < v88)
          {
            return 0;
          }
        }

        if (v159 != -1)
        {
          break;
        }

        LODWORD(v84) = v84 + 1;
LABEL_174:
        v87 += 36;
        if (!--v90)
        {
          goto LABEL_177;
        }
      }

      if (!v92 || *(v87 + 69) != 6)
      {
        v97 = u_strlen(v87);
        if (sub_299349960(*(v153 + 44), v87, 2 * v97, *(v87 + 69), v186, v89) >= 1)
        {
          v96 = (v84 + 2);
          if (v96 > v161)
          {
            v98 = v87[35];
            v167 = v98 + sub_299349880(*(v87 + 68), (*(v87 + 69) + 1)) + 1000;
            *(v186 + *v89) = 0;
            sub_29936B460(v187, v186, 0x42uLL);
            sub_299349818(v86, v180[0], a11);
            v88 = (v88 + 1);
            if (v85 < v88)
            {
              return 0;
            }
          }
        }
      }

      v99 = u_strlen(v87);
      if (sub_299349B5C(*(v153 + 44), *(v153 + 60), v87, 2 * v99, *(v87 + 69), v186, v89) < 1)
      {
        LODWORD(v84) = v96;
      }

      else
      {
        v84 = (v96 + 1);
        if (v84 > v161)
        {
          v100 = v87[35];
          v167 = v100 + sub_299349880(*(v87 + 68), (*(v87 + 69) + 2)) + 1000;
          *(v186 + *v89) = 0;
          sub_29936B460(v187, v186, 0x42uLL);
          sub_299349818(v86, v180[0], a11);
          v88 = (v88 + 1);
          v91 = v160;
          v92 = a10;
          if (v85 < v88)
          {
            return 0;
          }

          goto LABEL_174;
        }
      }

LABEL_173:
      v91 = v160;
      v92 = a10;
      goto LABEL_174;
    }

    LODWORD(v84) = v138;
    LODWORD(v88) = v140;
    LOWORD(v91) = v160;
LABEL_177:
    v101 = v153;
    if (v144)
    {
      v102 = 0;
      v103 = v181;
      v104 = a9 - 1;
      v155 = v91;
      v105 = &v180[v159];
      do
      {
        v106 = 0;
        v163 = 0;
        v107 = *&v174[2 * v102 + 5];
        v108 = v174[v102];
        bytesb = v102;
        v158 = v162[v102];
        v152 = v108;
        do
        {
          v164 = 0;
          if (sub_2993F07F4(v101, v188, v155, v107, s, &v163, &v164, 0, v108, v158))
          {
            break;
          }

          v109 = a10;
          if (v106 == v163)
          {
            break;
          }

          if (v164)
          {
            v110 = v107;
            v111 = 0;
            v112 = s;
            v113 = v160;
            while (1)
            {
              if (v109)
              {
                v114 = *(v112 + 69);
                if (v114 == 1 || v114 == 10)
                {
                  goto LABEL_210;
                }
              }

              if (v112[33] != v113)
              {
                goto LABEL_210;
              }

              sub_29936B460(v187, v112, 0x42uLL);
              if (!v187[0])
              {
                goto LABEL_209;
              }

              if (v159 != -1)
              {
                *v105 = 2 * u_strlen(v112);
              }

              v116 = v112[35];
              v167 = v116 + sub_299349880(*(v112 + 68), *(v112 + 69)) + 1000;
              v117 = (v84 + 1);
              if (v117 <= v161)
              {
                v113 = v160;
                v109 = a10;
              }

              else
              {
                sub_299349818(v103, v180[0], a11);
                v88 = (v88 + 1);
                v113 = v160;
                v109 = a10;
                if (v104 < v88)
                {
                  return 0;
                }
              }

              if (v159 != -1)
              {
                break;
              }

              LODWORD(v84) = v84 + 1;
LABEL_210:
              ++v111;
              v112 += 36;
              if (v111 >= v164)
              {
                v106 = v163;
                v101 = v153;
                v107 = v110;
                v108 = v152;
                goto LABEL_213;
              }
            }

            if (!v109 || *(v112 + 69) != 6)
            {
              v118 = u_strlen(v112);
              if (sub_299349960(*(v153 + 44), v112, 2 * v118, *(v112 + 69), v186, v105) >= 1)
              {
                v117 = (v84 + 2);
                if (v117 > v161)
                {
                  v119 = v112[35];
                  v167 = v119 + sub_299349880(*(v112 + 68), (*(v112 + 69) + 1)) + 1000;
                  *(v186 + *v105) = 0;
                  sub_29936B460(v187, v186, 0x42uLL);
                  sub_299349818(v103, v180[0], a11);
                  v88 = (v88 + 1);
                  if (v104 < v88)
                  {
                    return 0;
                  }
                }
              }
            }

            v120 = u_strlen(v112);
            if (sub_299349B5C(*(v153 + 44), *(v153 + 60), v112, 2 * v120, *(v112 + 69), v186, v105) < 1)
            {
              LODWORD(v84) = v117;
            }

            else
            {
              v84 = (v117 + 1);
              if (v84 > v161)
              {
                v121 = v112[35];
                v167 = v121 + sub_299349880(*(v112 + 68), (*(v112 + 69) + 2)) + 1000;
                *(v186 + *v105) = 0;
                sub_29936B460(v187, v186, 0x42uLL);
                sub_299349818(v103, v180[0], a11);
                v88 = (v88 + 1);
                v113 = v160;
                v109 = a10;
                if (v104 < v88)
                {
                  return 0;
                }

                goto LABEL_210;
              }
            }

LABEL_209:
            v113 = v160;
            v109 = a10;
            goto LABEL_210;
          }

          v106 = v163;
LABEL_213:
          ;
        }

        while (v106 > 0);
        v102 = bytesb + 1;
      }

      while (bytesb + 1 != v144);
    }

    v168 = 29;
    if (*(v101 + 82) >= 5u)
    {
      sub_2993F7500(*(v153 + 84) + 128, v188, v160, v179, v166);
      if (v166[0])
      {
        v122 = sub_2993496F8(v179, v166[0], 8u, v171, 7u);
        if (v122)
        {
          v123 = v122;
          v124 = 0;
          v156 = v181;
          LODWORD(v125) = v84;
          do
          {
            if (sub_29934978C(v124, v179, v166[0], &__dst, &v165, v171) != -11)
            {
              if (v159 != -1)
              {
                v126 = v176[6];
                v127 = 7 * v176[6];
                v128 = v165;
                v129 = v165 - v127 - 8 + (((v165 - v127 - 8) & 0x8000u) >> 15);
                v130 = v129 >> 1;
                v131 = v129 >> 1;
                v132 = 2 * v130;
                v133 = &v178[v127 - 1];
                v134 = v187;
                while (v131)
                {
                  v135 = *v133++;
                  *v134++ = v135;
                  v132 -= 2;
                  --v131;
                  if (!v135)
                  {
                    if (v131)
                    {
                      bzero(v134, v132);
                    }

                    break;
                  }
                }

                v180[v159] = v128 - 7 * v126 - 8;
              }

              if (v143 != -1)
              {
                if (v176[6] && v176[6] <= 0x49u)
                {
                  v136 = 7 * v176[6];
                  v180[v143] = v136;
                  memmove(*(&v181 + v143), &v177, v136);
                }

                else
                {
                  v180[v143] = 0;
                }
              }

              if (v142 != -1)
              {
                **(&v181 + v142) = bswap32(*v176) >> 16;
              }

              if (v141 != -1)
              {
                **(&v181 + v141) = bswap32(*&v176[2]);
              }

              if (!v139)
              {
                if (v176[6])
                {
                  v137 = 7;
                }

                else
                {
                  v137 = 29;
                }

                v168 = v137;
              }

              v125 = (v125 + 1);
              if (v125 > v161)
              {
                sub_299349818(v156, v180[0], a11);
                v88 = (v88 + 1);
                if (a9 - 1 < v88)
                {
                  break;
                }
              }
            }

            ++v124;
          }

          while (v124 != v123);
        }
      }
    }

    return 0;
  }

  else
  {
    if (v14 == 1025515552)
    {
      v183 = 0u;
      v184 = 0u;
      v159 = -1;
      v181 = 0u;
      v182 = 0u;
      v165 = 0;
      v139 = 1;
      v143 = -1;
      v142 = -1;
      v141 = -1;
      goto LABEL_39;
    }

    return 4294960178;
  }
}

uint64_t sub_299349620(int a1)
{
  result = 1;
  if (a1 <= 69)
  {
    if (a1 <= 0x3D)
    {
      if (((1 << a1) & 0x1004010040100401) != 0)
      {
        return result;
      }

      if (((1 << a1) & 0x2008020080200802) == 0)
      {
        return 0;
      }

      return 4;
    }

    return 0;
  }

  if (a1 <= 199)
  {
    v3 = a1 - 70;
    if (v3 <= 0x15)
    {
      v4 = 1 << v3;
      if ((v4 & 0x100401) != 0)
      {
        return result;
      }

      if ((v4 & 0x200802) != 0)
      {
        return 4;
      }
    }

    return 0;
  }

  if (a1 > 201)
  {
    if (a1 != 202)
    {
      if (a1 != 203)
      {
        return 0;
      }

      return 4;
    }
  }

  else if (a1 != 200)
  {
    return 4;
  }

  return result;
}

uint64_t sub_2993496F8(uint64_t a1, int a2, unsigned __int16 a3, _BYTE *a4, unsigned __int16 a5)
{
  v5 = a3 - *(a1 + a5) + 8 * *(a1 + a5);
  *a4 = a3 - *(a1 + a5) + 8 * *(a1 + a5);
  if (v5 >= a2)
  {
    return 1;
  }

  LODWORD(v6) = 0;
  do
  {
    if (*(a1 + v5) == 255 && *(a1 + v5 + 1) == 255)
    {
      v6 = v6 + 1;
      v7 = *(a1 + a5 + 2 + v5);
      v8 = a3 - v7 + 8 * v7;
      a4[v6] = v8;
      v5 += v8 + 2;
    }

    a4[v6] += 2;
    v5 += 2;
  }

  while (v5 < a2);
  return (v6 + 1);
}

uint64_t sub_29934978C(unsigned int a1, uint64_t a2, int a3, char *__dst, _BYTE *a5, unsigned __int8 *a6)
{
  if (a1 < 1)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = a1;
    v10 = a6;
    v11 = a1;
    do
    {
      v12 = *v10++;
      v8 += v12 + 2;
      --v11;
    }

    while (v11);
  }

  if (v8 >= a3)
  {
    return 4294967285;
  }

  v13 = a6[v9];
  *a5 = v13;
  memmove(__dst, (a2 + v8), v13);
  result = 0;
  *&__dst[*a5] = 0;
  return result;
}

void sub_299349818(UInt8 *bytes, CFIndex numBytes, __CFArray *a3)
{
  v4 = CFStringCreateWithBytes(*MEMORY[0x29EDB8ED8], bytes, numBytes, 0x10000100u, 0);
  CFArrayAppendValue(a3, v4);

  CFRelease(v4);
}

uint64_t sub_299349880(int a1, unsigned int a2)
{
  v2 = 50;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (a2 < 0xB)
        {
          v3 = &unk_29941E0E6;
          return *&v3[2 * a2];
        }
      }

      else if (a1 == 2 && a2 < 0xB)
      {
        v3 = &unk_29941E0FC;
        return *&v3[2 * a2];
      }
    }

    else if (a2 < 0xB)
    {
      v3 = "";
      return *&v3[2 * a2];
    }
  }

  else if (a1 > 4)
  {
    if (a1 == 5)
    {
      if (a2 < 0xB)
      {
        v3 = &unk_29941E128;
        return *&v3[2 * a2];
      }
    }

    else if (a1 == 6 && a2 < 0xB)
    {
      v3 = &unk_29941E13E;
      return *&v3[2 * a2];
    }
  }

  else if (a1 == 3)
  {
    if (a2 <= 0xA)
    {
      v3 = &unk_29941E154;
      return *&v3[2 * a2];
    }
  }

  else if (a2 < 0xB)
  {
    v3 = &unk_29941E112;
    return *&v3[2 * a2];
  }

  return v2;
}

uint64_t sub_299349960(unsigned __int16 *a1, unsigned __int16 *a2, unint64_t a3, int a4, _WORD *a5, unint64_t *a6)
{
  if (a4 == 2)
  {
    v11 = 26;
    v12 = 12;
  }

  else
  {
    if (a4 != 6)
    {
      goto LABEL_9;
    }

    v11 = 14;
    v12 = 1;
  }

  v13 = *a2 != a1[v11] && a3 >= 7;
  if (v13)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = *(a2 + v16);
      if (v18 == a1[11] || v18 == *a1)
      {
        break;
      }

      v17 += 2;
      v16 = v17;
      if (v17 >= a3)
      {
        v19 = 0;
        *a5 = 0;
        if (a3 == 6 * (a3 / 6))
        {
          v20 = 6;
        }

        else
        {
          v20 = a3 % 6;
        }

        v21 = v20 >> 1;
        while (v20 >> 1 != v19)
        {
          v22 = a2[v19];
          a5[v19++] = v22;
          if (!v22)
          {
            if (v19 != v21)
            {
              bzero(&a5[v19], 2 * v21 - v19 * 2);
            }

            break;
          }
        }

        *(a5 + v20) = a1[v12];
        v23 = v20 + 2;
        *a6 = v20 + 2;
        v24 = a2 + v20;
        v14 = 1;
        while (1)
        {
          v20 += 6;
          if (v20 > a3)
          {
            break;
          }

          if (v23 - 58 <= 0xFFFFFFFFFFFFFFBFLL)
          {
            goto LABEL_36;
          }

          v25 = 0;
          while (v25 != 6)
          {
            v26 = *&v24[v25];
            *(a5 + v23 + v25) = v26;
            v25 += 2;
            if (!v26)
            {
              if (v25 != 6)
              {
                bzero(a5 + v23 + v25, 6 - v25);
              }

              break;
            }
          }

          *a6 = v23 + 6;
          if (v20 == a3)
          {
            v23 += 6;
            break;
          }

          if (v23 - 56 <= 0xFFFFFFFFFFFFFFBFLL)
          {
LABEL_36:
            LOWORD(v14) = 0;
            *a5 = 0;
            *a6 = 0;
            return v14;
          }

          *(a5 + v23 + 6) = a1[v12];
          v23 += 8;
          *a6 = v23;
          v24 += 6;
          v13 = v14++ >= 0x27;
          if (v13)
          {
            LOWORD(v14) = 40;
            break;
          }
        }

        *(a5 + v23) = 0;
        return v14;
      }
    }
  }

LABEL_9:
  LOWORD(v14) = 0;
  return v14;
}

uint64_t sub_299349B5C(unsigned __int16 *a1, _WORD *a2, unsigned __int16 *a3, unint64_t a4, int a5, uint64_t a6, void *a7)
{
  v70 = *MEMORY[0x29EDCA608];
  if (a4 < 9)
  {
    return 0;
  }

  if (a5 == 2)
  {
    v12 = 26;
LABEL_6:
    v13 = a1[v12];
    if (*a3 == v13)
    {
      return 0;
    }

    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(a3 + v16);
      if (v18 == a1[11] || v18 == *a1)
      {
        return -2;
      }

      v17 += 2;
      v16 = v17;
    }

    while (v17 < a4);
    v66 = v12 * 2;
    *v67 = a6;
    s[0] = 0;
    v68[0] = 0;
    v19 = a3 + a4 - 2;
    v20 = 2;
    v21 = v19;
    do
    {
      if (v13 != *(a3 + a4 - v20))
      {
        v22 = 0;
        while (v20 != v22)
        {
          v23 = *&v21[v22];
          v68[v22 / 2] = v23;
          v22 += 2;
          if (!v23)
          {
            if (v20 != v22)
            {
              bzero(&v68[v22 / 2], v20 - v22);
            }

            break;
          }
        }

        v68[v20 / 2] = 0;
      }

      v21 -= 2;
      v24 = v20 >= 7;
      v20 += 2;
    }

    while (!v24);
    if (v68[0])
    {
      v25 = u_strlen(s);
      v26 = u_strlen(v68) + v25;
      if ((v26 * 2 - 63) < 0xFFFFFFFFFFFFFFBFLL)
      {
        return -1;
      }

      sub_29936B4BC(v68, s, 0x42uLL);
      v68[v26] = 0;
      sub_29936B460(s, v68, 0x42uLL);
      s[v26] = 0;
      v68[0] = 0;
    }

    v65 = a7;
    if (a4 == 9)
    {
      v14 = 0;
LABEL_71:
      v62 = *v67;
      sub_29936B460(*v67, s, 0x42uLL);
      v63 = u_strlen(v62);
      *v65 = 2 * v63;
      return v14;
    }

    v27 = *(a1 + v66);
    v28 = a3 + a4 - 10;
    v29 = 10;
    v30 = 2;
    do
    {
      if (v27 != *(a3 + a4 - v29))
      {
        v31 = (v29 - 8) >> 1;
        v32 = v68;
        v33 = v28;
        v34 = v30;
        while (v31)
        {
          v35 = *v33++;
          *v32++ = v35;
          v34 -= 2;
          --v31;
          if (!v35)
          {
            if (v31)
            {
              bzero(v32, v34);
            }

            break;
          }
        }

        *(&v67[1] + v29) = a2[33];
        v68[v29 / 2 - 3] = 0;
      }

      if (v29 > 0xE)
      {
        break;
      }

      v29 += 2;
      v30 += 2;
      v28 -= 2;
    }

    while (v29 <= a4);
    if (v68[0])
    {
      v36 = u_strlen(s);
      v37 = u_strlen(v68) + v36;
      if ((v37 * 2 - 63) < 0xFFFFFFFFFFFFFFBFLL)
      {
        return -1;
      }

      sub_29936B4BC(v68, s, 0x42uLL);
      v68[v37] = 0;
      sub_29936B460(s, v68, 0x42uLL);
      s[v37] = 0;
      v68[0] = 0;
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    if (a4 < 0x12)
    {
      goto LABEL_71;
    }

    v38 = *(a1 + v66);
    v39 = a3 + a4 - 18;
    v40 = 18;
    v41 = 2;
    v64 = v38;
    do
    {
      if (v38 != *(a3 + a4 - v40))
      {
        v42 = (v40 - 16) >> 1;
        v43 = v68;
        v44 = v39;
        v45 = v41;
        while (v42)
        {
          v46 = *v44++;
          *v43++ = v46;
          v45 -= 2;
          --v42;
          if (!v46)
          {
            if (v42)
            {
              bzero(v43, v45);
              v38 = v64;
            }

            break;
          }
        }

        *(&v67[-1] + v40) = a2[34];
        v68[v40 / 2 - 7] = 0;
      }

      if (v40 > 0x16)
      {
        break;
      }

      v40 += 2;
      v41 += 2;
      v39 -= 2;
    }

    while (v40 <= a4);
    if (v68[0])
    {
      v47 = u_strlen(s);
      v48 = u_strlen(v68) + v47;
      if ((v48 * 2 - 63) < 0xFFFFFFFFFFFFFFBFLL)
      {
        return -1;
      }

      sub_29936B4BC(v68, s, 0x42uLL);
      v68[v48] = 0;
      sub_29936B460(s, v68, 0x42uLL);
      s[v48] = 0;
      v68[0] = 0;
      ++v14;
    }

    if (a4 < 0x1A)
    {
      goto LABEL_71;
    }

    v49 = *(a1 + v66);
    v50 = a3 + a4;
    v51 = 26;
    v52 = 26;
    do
    {
      if (v49 != *&v19[-v51 + 2])
      {
        v53 = &v50[-v52];
        v54 = v52 - 24;
        v55 = v54 >> 1;
        v56 = v54 >> 1;
        v57 = 2 * v55;
        v58 = v68;
        while (v56)
        {
          v59 = *v53;
          v53 += 2;
          *v58++ = v59;
          v57 -= 2;
          --v56;
          if (!v59)
          {
            if (v56)
            {
              bzero(v58, v57);
            }

            break;
          }
        }

        *(&v65 + v51 + 4) = a2[35];
        v68[v52 / 2u - 11] = 0;
      }

      v52 += 2;
      v51 = v52;
    }

    while (v52 <= a4);
    if (!v68[0])
    {
      goto LABEL_71;
    }

    v60 = u_strlen(s);
    v61 = u_strlen(v68) + v60;
    if ((v61 * 2 - 63) >= 0xFFFFFFFFFFFFFFBFLL)
    {
      sub_29936B4BC(v68, s, 0x42uLL);
      v68[v61] = 0;
      sub_29936B460(s, v68, 0x42uLL);
      s[v61] = 0;
      v68[0] = 0;
      ++v14;
      goto LABEL_71;
    }

    return -1;
  }

  if (a5 == 6)
  {
    v12 = 14;
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_29934A09C(uint64_t a1, const __CFString *a2, const __CFString *a3, uint64_t a4, void *a5, int a6, double a7, int a8)
{
  *a1 = &unk_2A1F66DC0;
  v16 = (*(*a4 + 16))(a4);
  v17 = ((*(*a4 + 40))(a4) >> 3) & 1;
  sub_29933BEB8(a1, &off_2A1F730E8);
  *(a1 + 20) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = a7;
  *a1 = &unk_2A1F72E68;
  *(a1 + 40) = &unk_2A1F730D0;
  *(a1 + 48) = a6;
  v18 = *MEMORY[0x29EDB8ED8];
  *(a1 + 56) = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], a2);
  if (a3)
  {
    Copy = CFStringCreateCopy(v18, a3);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 64) = Copy;
  sub_299215B50(a1 + 72, a4, a5, a8);
  *(a1 + 136) = (*(*a4 + 40))(a4);
  *(a1 + 140) = sub_299279FBC(a2);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  return a1;
}

uint64_t sub_29934A2AC(uint64_t a1, const __CFString *a2, const __CFString *a3, uint64_t *a4, unsigned __int16 **a5, unsigned int **a6, void *a7, int a8, unsigned int a9)
{
  *a1 = &unk_2A1F66DC0;
  v16 = *(*a6 + 3);
  v17 = (*(*a6 + 4) >> 3) & 1;
  v18 = sub_29933BEB8(a1, &off_2A1F730E8);
  *(v18 + 20) = v16;
  *(v18 + 24) = v17;
  *v18 = &unk_2A1F72E68;
  *(v18 + 32) = 0xFFEFFFFFFFFFFFFFLL;
  *(v18 + 40) = &unk_2A1F730D0;
  *(v18 + 48) = a8;
  v19 = *MEMORY[0x29EDB8ED8];
  *(a1 + 56) = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], a2);
  if (a3)
  {
    Copy = CFStringCreateCopy(v19, a3);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 64) = Copy;
  sub_299215C28(a1 + 72, **a6, a4, a5, a7, a9);
  *(a1 + 136) = *(*a6 + 2);
  v21 = sub_299279FBC(a2);
  *(a1 + 144) = 0;
  *(a1 + 140) = v21;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  if (a9 == 17)
  {
    sub_2993B2710(*(*(*a7 + 240) + 4));
    v22 = a6[1];
    if (v22)
    {
      v23 = a6[1];
      do
      {
        v24 = *v23;
        v23 = (v23 + 2);
      }

      while (v24);
      v25 = *v23;
      valuePtr = v25;
      if (v25)
      {
        v26 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
        sub_2992292D8((a1 + 144), v26);
        v22 = a6[1];
      }

      if (v22)
      {
        v27 = (v22 + 1);
        do
        {
          v28 = *(v27 - 2);
          ++v27;
        }

        while (v28);
        v29 = *(v27 - 1);
        v38 = 0;
        v39 = 0;
        __p = 0;
        sub_2993B2CF0(&__p, v27, &v27[4 * v29], v29);
        v30 = __p;
        if (__p != v38)
        {
          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
          v32 = __p;
          v33 = v38;
          while (v32 != v33)
          {
            v42 = *v32;
            v34 = CFNumberCreate(0, kCFNumberSInt64Type, &v42);
            v41 = v34;
            CFArrayAppendValue(Mutable, v34);
            if (v34)
            {
              CFRelease(v34);
            }

            ++v32;
          }

          sub_299229F00((a1 + 152), Mutable);
          v30 = __p;
        }

        if (v30)
        {
          v38 = v30;
          operator delete(v30);
        }
      }
    }
  }

  return a1;
}

void sub_29934A53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_299219AB4(v18, 0);
  sub_299229F00(v17, 0);
  sub_2992292D8(v16, 0);
  *(v15 + 72) = &unk_2A1F649F8;
  v20 = *(v15 + 128);
  if (v20)
  {
    sub_2991A893C(v20);
  }

  sub_299219AB4((v15 + 64), 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29934A5EC(uint64_t a1)
{
  *a1 = &unk_2A1F72E68;
  *(a1 + 40) = &unk_2A1F730D0;
  CFRelease(*(a1 + 56));
  sub_299219AB4((a1 + 160), 0);
  sub_299229F00((a1 + 152), 0);
  sub_2992292D8((a1 + 144), 0);
  *(a1 + 72) = &unk_2A1F649F8;
  v2 = *(a1 + 128);
  if (v2)
  {
    sub_2991A893C(v2);
  }

  sub_299219AB4((a1 + 64), 0);
  return a1;
}

void sub_29934A6B8(uint64_t a1)
{
  sub_29934A5EC(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29934A6F8(uint64_t a1)
{
  result = *(a1 + 64);
  if (!result)
  {
    return *(a1 + 56);
  }

  return result;
}

CFStringRef sub_29934A7E0(uint64_t a1)
{
  v13[3] = *MEMORY[0x29EDCA608];
  v1 = sub_299215D80(a1 + 72, v13);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = v3 - v4;
  v6 = v5 >> 1;
  if (v5)
  {
    v7 = v13[0];
    if (v6 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6;
    }

    v9 = (v13 - v2);
    do
    {
      v10 = *v7++;
      *v9++ = v10 + 48;
      --v8;
    }

    while (v8);
  }

  v11 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], (v13 - v2), v6);
  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  return v11;
}

void sub_29934A8C8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 48);
  if (v3)
  {
    *(v1 - 40) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29934A8F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return a1 + 72;
  }
}

void sub_29934AAA0(_Unwind_Exception *a1)
{
  sub_2992292D8((v1 + 144), 0);
  *(v1 + 72) = &unk_2A1F649F8;
  v4 = *(v1 + 128);
  if (v4)
  {
    sub_2991A893C(v4);
  }

  sub_299219AB4((v1 + 64), 0);
  MEMORY[0x29C29BFB0](v1, v2);
  _Unwind_Resume(a1);
}

void sub_29934AB10(uint64_t a1, const __CFString *a2)
{
  v2 = 0;
  memset(__p, 0, sizeof(__p));
  sub_2991EB9C8(__p, &v2, __p, 1uLL);
  operator new();
}

void sub_29934AD44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_2992292D8((v11 + 144), 0);
  *(v11 + 72) = v12;
  v14 = *(v11 + 128);
  if (v14)
  {
    sub_2991A893C(v14);
  }

  sub_299219AB4((v11 + 64), 0);
  MEMORY[0x29C29BFB0](v11, 0x10E1C403F77FCFDLL);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29934AF60(_Unwind_Exception *a1)
{
  sub_2992292D8((v1 + 144), 0);
  *(v1 + 72) = v3;
  v5 = *(v1 + 128);
  if (v5)
  {
    sub_2991A893C(v5);
  }

  sub_299219AB4((v1 + 64), 0);
  MEMORY[0x29C29BFB0](v1, v2);
  _Unwind_Resume(a1);
}

void sub_29934B024(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a2;
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 3);
  if (v8 <= 1)
  {
    __p[1] = 0;
    *&v27 = 0;
    sub_299358978(a1, a2, a3, a5);
    return;
  }

  if (a3)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    std::string::reserve(a5, v8 + 3 * a3);
    v10 = *a4;
    if (a4[1] != *a4)
    {
      for (i = 0; i < v25; ++i)
      {
        v12 = v10 + 40 * i;
        v13 = *(v12 + 24);
        if (v5)
        {
          v14 = *(v12 + 24);
        }

        else
        {
          v14 = 0;
        }

        v15 = *(v12 + 24);
        v16 = v5;
        if (v14)
        {
          while (1)
          {
            v17 = *v16++;
            v18 = (v17 + 240);
            if ((v17 - 48) < 0xA || v18 <= 9)
            {
              break;
            }

            if (!--v15)
            {
              goto LABEL_16;
            }
          }

          (*(*a1 + 48))(__p, a1, v5);
          if ((SBYTE7(v27) & 0x80u) == 0)
          {
            v23 = __p;
          }

          else
          {
            v23 = __p[0];
          }

          if ((SBYTE7(v27) & 0x80u) == 0)
          {
            v24 = BYTE7(v27);
          }

          else
          {
            v24 = __p[1];
          }

          std::string::append(a5, v23, v24);
          if ((SBYTE7(v27) & 0x80000000) == 0)
          {
            goto LABEL_33;
          }

          v22 = __p[0];
        }

        else
        {
LABEL_16:
          v28 = 0;
          *__p = 0u;
          v27 = 0u;
          (*(*a1 + 40))(v29, a1, v5);
          if ((v30 & 0x80u) == 0)
          {
            v20 = v29;
          }

          else
          {
            v20 = v29[0];
          }

          if ((v30 & 0x80u) == 0)
          {
            v21 = v30;
          }

          else
          {
            v21 = v29[1];
          }

          std::string::append(a5, v20, v21);
          if ((v30 & 0x80000000) == 0)
          {
            goto LABEL_33;
          }

          v22 = v29[0];
        }

        operator delete(v22);
LABEL_33:
        v10 = *a4;
        v25 = 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 3);
        if (i != v25 - 1)
        {
          std::string::append(a5, " ", 1uLL);
          v10 = *a4;
          v25 = 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 3);
        }

        v5 += v13;
      }
    }
  }

  else
  {
    *(a5 + 23) = 0;
    *a5 = 0;
  }
}

void sub_29934B27C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29934B2E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 55);
  if (v4 >= 0)
  {
    v5 = a2 + 32;
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if (v4 >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *(a2 + 40);
  }

  v7 = sub_29934B3D0(a1 + 16, v5, v6);
  v9 = v8;
  v10 = (*(*a2 + 304))(a2);
  v11 = *(*a1 + 32);

  return v11(a1, v7, v9, v10, 0);
}

uint64_t sub_29934B3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_2991A2240();
  }

  return (*(*v3 + 48))(v3, v5);
}

void sub_29934B428(void *a1)
{
  sub_29925E920(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_29934B460(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a8;
  v10 = a7;
  v16 = *MEMORY[0x29EDCA608];
  v15 = sub_299277300(a2);
  sub_2993B7C78(a1, v15, a3, a4, a6, a9, v10, v9, 0, 0);
}

void sub_29934BD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  MEMORY[0x29C29BFB0](v13, 0x10E1C408BBE15C0, a3, a4, a5, a6, a7, a8);
  v16 = *(v11 + 616);
  *(v11 + 616) = 0;
  if (v16)
  {
    MEMORY[0x29C29BFB0](v16, 0x30C406EBB3485);
  }

  sub_29923D810((v11 + 600));
  v17 = *(v11 + 544);
  if (v17)
  {
    *(v11 + 552) = v17;
    operator delete(v17);
  }

  v18 = *v14;
  *v14 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  sub_299229EC8((v11 + 504), 0);
  v19 = *(v11 + 496);
  *(v11 + 496) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(v11 + 488);
  *(v11 + 488) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(v11 + 480);
  *(v11 + 480) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(v11 + 472);
  *(v11 + 472) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  sub_299253FC0(v11 + 440);
  sub_299229F00((v11 + 424), 0);
  v23 = *(v11 + 408);
  *(v11 + 408) = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  v24 = *(v11 + 400);
  *(v11 + 400) = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  v25 = *(v11 + 392);
  *(v11 + 392) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  sub_2993D5A00((v11 + 360));
  sub_299229F00((v11 + 352), 0);
  sub_2992925AC(a11);
  sub_299352738((v11 + 296), 0);
  sub_29937176C(v12);
  sub_2993B8B28(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_29934C0EC(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if ((*(v6 + 217) & 0x40) != 0 || (v7 = *(v6 + 400), v9 = *(v7 + 16), v8 = *(v7 + 24), v9 != v8) && (*(**(v8 - 8) + 24))(*(v8 - 8)))
  {

    return sub_2992E94C8(a2, a3, 0, a4);
  }

  else
  {
    Surface = MecabraCandidateGetSurface(a2, a2, a3, a4);
    if (CFStringGetLength(Surface) == 2 && (v15 = sub_2992896C0(a2, v12, v13, v14), ((*(*v15 + 104))(v15) & 0x20) != 0) && (v19 = sub_2992896C0(a3, v16, v17, v18), (*(*v15 + 112))(v15) >= 1))
    {
      v20 = 100 * (*(*v19 + 112))(v19);
      if (v20 / (*(*v15 + 112))(v15) < 81)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return -1;
    }
  }
}

void sub_29934C274(int a1, uint64_t a2, int a3, int a4, CFDictionaryRef theDict)
{
  if (a2 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDC5760]);
    v7 = CFGetTypeID(Value);
    if (v7 == CFBooleanGetTypeID() && Value == *MEMORY[0x29EDB8F00])
    {
      v9 = *(*a2 + 136);

      v9(a2);
    }
  }
}

uint64_t sub_29934C324(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 528);
  if (v3 == cf)
  {
    return 0;
  }

  if (cf && v3)
  {
    if (CFEqual(v3, cf))
    {
      return 0;
    }

    v3 = *(a1 + 528);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (cf)
  {
    v6 = CFRetain(cf);
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 528) = v6;
  sub_29934DEE4(a1, 1, 1, 0);
  v7 = *(a1 + 400) + 80;

  return sub_2993A3748(v7, cf);
}

uint64_t sub_29934C3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 464);
  if (v5)
  {
    v24 = *(a1 + 464);
    sub_299229054(&v24);
    MEMORY[0x29C29BFB0](v5, 0x1020C40DBF2485DLL);
  }

  v6 = *(a1 + 512);
  if (v6)
  {
    v7 = sub_299213F54(v6);
    MEMORY[0x29C29BFB0](v7, 0x1060C401A2F9FBALL);
  }

  v8 = *(a1 + 432);
  if (v8)
  {
    v9 = *(a1 + 8);
    if (*(v9 + 5) != 1 || (v10 = *(v9 + 40)) == 0)
    {
      v10 = *(v9 + 32);
    }

    sub_29938460C(v10, v8);
    v11 = *(a1 + 432);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = *(a1 + 528);
  if (v12)
  {
    CFRelease(v12);
  }

  sub_29923D930(*(a1 + 600), v8, a3, a4);
  v13 = *(a1 + 616);
  *(a1 + 616) = 0;
  if (v13)
  {
    MEMORY[0x29C29BFB0](v13, 0x30C406EBB3485);
  }

  sub_29923D810((a1 + 600));
  v14 = *(a1 + 544);
  if (v14)
  {
    *(a1 + 552) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 520);
  *(a1 + 520) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  sub_299229EC8((a1 + 504), 0);
  v16 = *(a1 + 496);
  *(a1 + 496) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(a1 + 488);
  *(a1 + 488) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(a1 + 480);
  *(a1 + 480) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(a1 + 472);
  *(a1 + 472) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  sub_299253FC0(a1 + 440);
  sub_299229F00((a1 + 424), 0);
  v20 = *(a1 + 408);
  *(a1 + 408) = 0;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  v21 = *(a1 + 400);
  *(a1 + 400) = 0;
  if (v21)
  {
    (*(*v21 + 16))(v21);
  }

  v22 = *(a1 + 392);
  *(a1 + 392) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  sub_2993D5A00((a1 + 360));
  sub_299229F00((a1 + 352), 0);
  sub_2992925AC(a1 + 312);
  sub_299352738((a1 + 296), 0);
  sub_29937176C(a1 + 192);
  return sub_2993B8B28(a1);
}

void sub_29934C730(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x29C29BFB0](v2, 0x10E0C40B842738ALL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x29934C718);
  }

  _Unwind_Resume(a1);
}

BOOL sub_29934C930(uint64_t a1, const __CFString *a2, uint64_t a3, void *a4)
{
  v7 = sub_299325108(a2, a4);
  v8 = sub_29934C9C0(a1, v7, a3, a4);
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

void sub_29934C9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299229F00(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_29934C9C0(uint64_t a1, const __CFArray *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  ptr = 0;
  v8 = sub_2993652F8(0xDu);
  ptr = os_signpost_id_make_with_pointer(v8, &ptr);
  v9 = sub_2993652F8(0xDu);
  v10 = ptr;
  if (ptr - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v9;
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v10, "MecabraAnalyzeStringWithContext", &unk_29945DB9F, buf, 2u);
    }
  }

  if (*(a1 + 192) == 13)
  {
    v12 = v5 | 0x10;
  }

  else
  {
    v12 = v5;
  }

  v48 = v12;
  v13 = MEMORY[0x29EDB8F00];
  if (a4)
  {
    sub_299225D3C(a4, kMecabraContextOptionPrivateMode);
  }

  LMLanguageModelSetParameterValue();
  *(a1 + 576) = -1;
  if (a4 && *(*(a1 + 608) + 4) <= 7u)
  {
    sub_2993245EC(a4);
  }

  v47 = a4;
  if (!a2)
  {
    Count = 0;
    goto LABEL_30;
  }

  Count = CFArrayGetCount(a2);
  if (Count < 1)
  {
LABEL_30:
    v15 = 0;
    v16 = 0;
    v18 = 0;
    goto LABEL_31;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0.0;
  v18 = 1;
  do
  {
    v19 = *(CFArrayGetValueAtIndex(a2, v15) + 3);
    if (v15 || (*(a1 + 290) = 0, (**v19)(v19) == 2) || (**v19)(v19) == 3 || *(*(a1 + 296) + 258) != 1 || (*(*v19 + 8))(v19) != 64 && (*(*v19 + 8))(v19) != 35)
    {
      v20 = (**v19)(v19);
      v21 = 0.1;
      if (v20 != 2)
      {
        if ((**v19)(v19, 0.1) == 3)
        {
          v21 = 0.1;
        }

        else
        {
          v21 = 1.0;
        }
      }

      v17 = v17 + v21;
      if (v17 > 255.0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *(a1 + 290) = (*(*v19 + 8))(v19);
      v16 = 1;
    }

    v18 = ++v15 < Count;
  }

  while (Count != v15);
  v15 = Count;
LABEL_31:
  if ((v16 & 1) == 0 && v15 == Count)
  {
    v18 = 0;
    v22 = 0;
    v49 = 0;
LABEL_43:
    Mutable = a2;
    goto LABEL_44;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  v24 = v16 & 1;
  if (v15 > v24)
  {
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v24);
      CFArrayAppendValue(Mutable, ValueAtIndex);
      ++v24;
    }

    while (v15 != v24);
  }

  v49 = Mutable;
  if (!Mutable)
  {
    v22 = 0;
    goto LABEL_43;
  }

  v26 = 0;
  do
  {
    v27 = v26;
    v28 = CFArrayGetCount(a2);
    if (v27 >= v28)
    {
      break;
    }

    v29 = *(CFArrayGetValueAtIndex(a2, v27) + 3);
    if ((**v29)(v29) == 2)
    {
      break;
    }

    v30 = (**v29)(v29);
    v26 = v27 + 1;
  }

  while (v30 != 3);
  v22 = v27 < v28;
LABEL_44:
  v31 = CFStringCreateMutable(0, 0);
  if (Mutable)
  {
    v32 = CFArrayGetCount(Mutable);
    if (v32 >= 1)
    {
      v33 = 0;
      v34 = 1;
      do
      {
        v35 = *(CFArrayGetValueAtIndex(Mutable, v33) + 3);
        if ((**v35)(v35) == 2)
        {
          break;
        }

        if ((**v35)(v35) == 3)
        {
          break;
        }

        *buf = (*(*v35 + 8))(v35);
        CFStringAppendCharacters(v31, buf, 1);
        v34 = ++v33 < v32;
      }

      while (v32 != v33);
      goto LABEL_53;
    }
  }

  else
  {
    v32 = 0;
  }

  v34 = 0;
LABEL_53:
  *(a1 + 568) = v34;
  if (!v22 && !v34)
  {
    if (v18)
    {
      goto LABEL_72;
    }

    if (atomic_load_explicit(&qword_2A1461240, memory_order_acquire) != -1)
    {
      *buf = &v51;
      v52 = buf;
      std::__call_once(&qword_2A1461240, &v52, sub_29935251C);
    }

    Length = CFStringGetLength(v31);
    v58.location = 0;
    v58.length = Length;
    if (!CFStringFindCharacterFromSet(v31, qword_2A1461230, v58, 0, 0) || (v59.location = 0, v59.length = Length, CFStringFindCharacterFromSet(v31, qword_2A1461238, v59, 0, 0)) || (location = CFStringFind(v31, @".", 0).location, location != -1) && location != Length - 1)
    {
LABEL_72:
      sub_29934DEE4(a1, 1, 1, 0);
LABEL_73:
      v41 = 0;
      goto LABEL_78;
    }
  }

  v36 = *(a1 + 432);
  if (v36)
  {
    (*(*v36 + 32))(v36);
    v37 = *(a1 + 432);
    *(v37 + 96) = (v48 & 0x80) == 0;
    sub_29932CA50(v37, 1);
    if ((*(a1 + 384) & 1) == 0)
    {
      *(a1 + 248) = *(*(a1 + 296) + 336);
    }
  }

  if (v32 != 1 || v34 || (v38 = CFArrayGetValueAtIndex(Mutable, 0), v39 = (*(*v38[3] + 8))(v38[3]), v39 != CFStringGetCharacterAtIndex(kMecabraAnalysisStringForFacemark[0], 0)))
  {
    if (v47)
    {
      v42 = v47[6];
    }

    else
    {
      v42 = 0;
    }

    sub_29937928C(*(a1 + 400), v48, *(a1 + 384), v47);
    v45 = *(a1 + 400);
    if ((*(*(v45 + 8) + 25) & 0x40) == 0)
    {
      sub_29930852C((v45 + 56), v42, v31);
    }

    sub_2992B1C78(v47, a1);
  }

  sub_29934DEE4(a1, 1, 1, 0);
  if (v47 && sub_299225D3C(v47, kMecabraContextOptionPrivateMode) == *v13)
  {
    goto LABEL_73;
  }

  v40 = *(a1 + 432);
  v41 = v40 != 0;
  if (v40)
  {
    *buf = MEMORY[0x29EDCA5F8];
    v54 = 0x40000000;
    v55 = sub_299352450;
    v56 = &unk_29EF131D8;
    v57 = a1;
    sub_2993BD8CC(*(v40 + 152), buf);
    sub_299228F44(*(a1 + 464));
  }

LABEL_78:
  if (v31)
  {
    CFRelease(v31);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  return v41;
}

void sub_29934DE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, const void *);
  if (v11)
  {
    (*(*v11 + 8))(v11, a2, a3, a4, a5, a6);
  }

  sub_29924A4BC(va, 0);
  sub_2992530BC(va1, 0);
  _Unwind_Resume(a1);
}

void sub_29934DEE4(uint64_t a1, int a2, int a3, CFIndex a4)
{
  if (a4)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
    v20.location = 0;
    v20.length = a4;
    CFArrayAppendArray(Mutable, *(a1 + 424), v20);
    sub_299229F00((a1 + 424), Mutable);
    sub_299321FA0(*(a1 + 240));
    sub_29937E220(*(a1 + 400), 2);
    if (*(a1 + 416))
    {
      v9 = *(a1 + 408);
      if (v9)
      {
        sub_29937E220(v9, 2);
      }
    }

    if (!a3)
    {
      goto LABEL_13;
    }

LABEL_10:
    v11 = *(a1 + 520);
    if (v11)
    {
      *(a1 + 520) = 0;
      (*(*v11 + 8))(v11);
    }

    *(a1 + 256) = 0;
    goto LABEL_13;
  }

  sub_299229F00((a1 + 424), 0);
  *(a1 + 416) = 0;
  sub_299321FA0(*(a1 + 240));
  sub_299379160(*(a1 + 400));
  v10 = *(a1 + 408);
  if (v10)
  {
    sub_299379160(v10);
  }

  *(a1 + 592) = 0;
  if (a3)
  {
    goto LABEL_10;
  }

LABEL_13:
  *(a1 + 536) = 0;
  sub_2993B8C0C(a1, 0);
  v12 = *(a1 + 432);
  if (v12 && a2)
  {
    v13 = *(v12 + 136);
    v14 = v13[39];
    if (v14)
    {
      *(v14 + 24) = *(v14 + 16);
    }

    v15 = v13[40];
    if (v15)
    {
      *(v15 + 24) = *(v15 + 16);
    }

    v16 = v13[41];
    if (v16)
    {
      *(v16 + 24) = *(v16 + 16);
    }
  }

  v17 = *(a1 + 464);
  for (i = *v17; i != v17[1]; ++i)
  {
    v19 = *i;
    (*(*v19 + 32))(v19);
  }

  sub_299254000(a1 + 440);
  *(a1 + 576) = -1;
}

BOOL sub_29934E094(CFArrayRef theArray, CFIndex a2)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  result = 0;
  if (Count > a2 && Count - a2 != 1)
  {
    v6 = Count - 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, a2);
      v8 = (**ValueAtIndex[3])(ValueAtIndex[3]);
      v9 = v8 == 2;
      result = v8 != 2;
      v9 = !v9 || v6 == a2++;
    }

    while (!v9);
  }

  return result;
}

CFIndex sub_29934E138(uint64_t a1, CFArrayRef theArray, uint64_t a3, void *a4, unint64_t a5)
{
  v7 = a3;
  if (!*(a1 + 408))
  {
    operator new();
  }

  if ((*(a1 + 288) & 1) == 0)
  {
    result = *(a1 + 408);
    *(a1 + 408) = 0;
    if (result)
    {
      v17 = *(*result + 16);

      return v17();
    }

    return result;
  }

  if (!a5 || !*(a1 + 416))
  {
    v11 = 0;
LABEL_21:
    *(a1 + 592) = 0;
    *(a1 + 584) = 1;
    sub_29937928C(*(a1 + 408), v7, *(a1 + 384), a4);
    if (v11 < a5)
    {
      v18 = *(a1 + 408);
      if (v11)
      {
        sub_29937E220(v18, 1);
      }

      else
      {
        sub_299379160(v18);
      }
    }

    Count = CFArrayGetCount(theArray);
    sub_299321FA0(*(a1 + 240));
    if (v11 >= Count)
    {
LABEL_34:
      if (*(a1 + 224) != 1)
      {
        *(a1 + 536) = 1;
        (*(**(a1 + 480) + 56))(*(a1 + 480));
        CFSetRemoveAllValues(*(a1 + 504));
        v26 = *(a1 + 408);
        if (CFArrayGetCount(*(v26 + 1160)))
        {
          v27 = 0;
          do
          {
            v28 = *(a1 + 480);
            ValueAtIndex = CFArrayGetValueAtIndex(*(v26 + 1160), v27);
            (*(*v28 + 16))(v28, ValueAtIndex);
            ++v27;
          }

          while (v27 < CFArrayGetCount(*(v26 + 1160)));
        }

        sub_299351638(a1);
        v30 = *(a1 + 480);
        v31 = sub_2992E9334(*(a1 + 616));
        (*(*v30 + 32))(v30, v31, 1);
        if (CFArrayGetCount(*(*(a1 + 480) + 8)))
        {
          v32 = CFArrayGetValueAtIndex(*(*(a1 + 480) + 8), 0);
          v36 = v32;
          if (*(a1 + 4) != 1 || !MecabraCandidateIsEmojiCandidate(v32, v33, v34, v35))
          {
            sub_299329BC0(*(a1 + 472), v36, 1uLL);
          }

          if (CFArrayGetCount(*(*(a1 + 480) + 8)) >= 2)
          {
            v37 = CFArrayGetValueAtIndex(*(*(a1 + 480) + 8), 1);
            v41 = v37;
            if (*(a1 + 4) != 1 || !MecabraCandidateIsEmojiCandidate(v37, v38, v39, v40))
            {
              sub_299329BC0(*(a1 + 472), v41, 2uLL);
            }
          }
        }

        sub_29932980C(*(a1 + 472));
      }

      result = CFArrayGetCount(theArray);
      *(a1 + 416) = result;
    }

    else
    {
      while (1)
      {
        v20 = *(CFArrayGetValueAtIndex(theArray, v11) + 3);
        v21 = v11 >= Count - 1 ? 0 : *(CFArrayGetValueAtIndex(theArray, v11 + 1) + 3);
        v22 = *(a1 + 408);
        *(v22 + 41) = sub_29934E094(theArray, v11);
        v23 = *(a1 + 408);
        if (v21)
        {
          v24 = (**v20)(v20);
          v25 = v24 != (**v21)(v21);
        }

        else
        {
          v25 = 1;
        }

        result = sub_29937813C(v23, v20, v25);
        ++v11;
        if (!result)
        {
          break;
        }

        if (Count == v11)
        {
          goto LABEL_34;
        }
      }

      *(a1 + 592) = v11;
    }

    *(a1 + 584) = 0;
    return result;
  }

  result = CFArrayGetCount(theArray);
  v11 = a5;
  if (result != a5)
  {
    v12 = CFArrayGetValueAtIndex(theArray, a5);
    result = (**v12[3])(v12[3]);
    v11 = a5;
    if (result == 1)
    {
      v13 = CFArrayGetValueAtIndex(theArray, a5 - 1);
      result = (**v13[3])(v13[3]);
      v11 = a5;
      if (result == 1)
      {
        v14 = 1;
        v15 = a5 - 2;
        if ((a5 - 2) >= 0)
        {
          while (1)
          {
            v16 = CFArrayGetValueAtIndex(theArray, v15);
            result = (**v16[3])(v16[3]);
            if (result != 1)
            {
              break;
            }

            ++v14;
            if (--v15 == -1)
            {
              v14 = a5;
              break;
            }
          }
        }

        v11 = a5 - v14;
      }
    }
  }

  if (*(a1 + 592) - 1 >= v11)
  {
    goto LABEL_21;
  }

  return result;
}

__CFArray *sub_29934E668(uint64_t a1, const __CFArray *a2, __int16 a3, uint64_t a4)
{
  if ((a3 & 0xA020) != 0)
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a4 + 32));
  if (*(a1 + 568) != 1 || Count == 0)
  {
    return 0;
  }

  v9 = sub_299324314(a4, Count - 1);
  v13 = objc_msgSend_rawCandidate(v9, v10, v11, v12);
  if (!v13)
  {
    return 0;
  }

  v14 = __dynamic_cast(v13, &unk_2A1F64300, &unk_2A1F752F0, 0);
  if (!a2)
  {
    return 0;
  }

  v15 = v14;
  if (!v14)
  {
    return 0;
  }

  if (!*(a1 + 424))
  {
    return 0;
  }

  if (!CFArrayGetCount(a2))
  {
    return 0;
  }

  v16 = CFArrayGetCount(a2);
  if (v16 != CFArrayGetCount(*(a1 + 424)))
  {
    return 0;
  }

  v17 = sub_29934E79C(a2, *(a1 + 424));
  if (v17 != CFArrayGetCount(a2))
  {
    return 0;
  }

  v18 = *(a1 + 400);

  return sub_2993789FC(v18, a2, v15);
}

CFIndex sub_29934E79C(const __CFArray *a1, const __CFArray *a2)
{
  if (!a2)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  v5 = CFArrayGetCount(a2);
  if (v5 >= Count)
  {
    v6 = Count;
  }

  else
  {
    v6 = v5;
  }

  if (v6 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = *(CFArrayGetValueAtIndex(a1, v7) + 3);
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
      if (((*(*v8 + 16))(v8, ValueAtIndex[3]) & 1) == 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        v7 = v6;
        break;
      }
    }
  }

  if (v6 >= v7)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

void *sub_29934E86C(uint64_t a1)
{
  v2 = sub_299228FA8(*(a1 + 464), 0);
  v6 = v2;
  if (v2 && objc_msgSend_rawCandidate(v2, v3, v4, v5) && (*(objc_msgSend_rawCandidate(v6, v7, v8, v9) + 8) + 1) > *(a1 + 576))
  {
    return 0;
  }

  return v6;
}

uint64_t sub_29934E8D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 256);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      LOBYTE(v7) = sub_299225D3C(v8, kMecabraContextOptionPrivateMode) == *MEMORY[0x29EDB8F00];
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  v9 = 0;
  v10 = *(a1 + 432);
  if (v10 && (v7 & 1) == 0)
  {
    if (a2)
    {
      v11 = objc_msgSend_rawCandidate(a2, a2, a3, a4);
      if ((*(*v11 + 96))(v11) == 89)
      {
        v9 = 0;
        goto LABEL_12;
      }

      v10 = *(a1 + 432);
    }

    v9 = (*(*v10 + 56))(v10, a2, a3, 1);
  }

LABEL_12:
  if (!a2 || (a3 & 1) == 0)
  {
    sub_29934DEE4(a1, 0, 1, 0);
    sub_2992544D0(a1 + 440);
  }

  return v9;
}

uint64_t sub_29934E9EC(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 432) || sub_299225D3C(a2, kMecabraContextOptionPrivateMode) == *MEMORY[0x29EDB8F00] || sub_299325370(a2))
  {
    v4 = 0;
  }

  else
  {
    v4 = (*(**(a1 + 432) + 48))(*(a1 + 432), a2);
  }

  sub_29934DEE4(a1, 0, 1, 0);
  sub_2992544D0(a1 + 440);
  sub_29934EABC(a1, a2, 0);
  return v4;
}

uint64_t sub_29934EABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_299225D3C(a2, kMecabraContextOptionPrivateMode);
  if (result != *MEMORY[0x29EDB8F00])
  {
    result = sub_299325370(a2);
    if ((result & 1) == 0)
    {
      v6 = *(a1 + 432);
      if (v6)
      {
        if (*(v6 + 96) == 1)
        {
          sub_2992B1DB8(a2, a1, v6, 0);
        }
      }
    }
  }

  return result;
}

uint64_t sub_29934EC54(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 5) != 1 || (v2 = *(v1 + 40)) == 0)
  {
    v2 = *(v1 + 32);
  }

  (*(*v2 + 56))(v2);

  return LMLanguageModelResetDynamicData();
}

uint64_t sub_29934ECE8(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_299225D3C(a2, kMecabraContextOptionPrivateMode) != *MEMORY[0x29EDB8F00])
  {
    if (a3)
    {
      v9 = objc_msgSend_rawCandidate(a3, v6, v7, v8);
      if ((*(*v9 + 96))(v9) == 89)
      {
        return 0;
      }

      if (*(*(a1 + 608) + 4) <= 7u && MecabraCandidateGetSurface(a3, v10, v11, v12))
      {
        v16 = *(a1 + 608);
        Surface = MecabraCandidateGetSurface(a3, v13, v14, v15);
        sub_299278568(Surface, __p);
        v18 = v22 >= 0 ? __p : __p[0];
        sub_29930B600(v16, "Revert learning for candidate %s\n", v18);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v19 = *(a1 + 432);
    if (v19)
    {
      sub_29932D3E4(v19);
    }

    sub_2992B1F18(a2, a1, a3);
  }

  return 0;
}

void sub_29934EE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29934EEE4(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v6 = *(result + 8);
  if (*(v6 + 5) != 1 || (v7 = *(v6 + 40)) == 0)
  {
    v7 = *(v6 + 32);
  }

  if (a3 == 1)
  {
    v8 = **a2 == 1;
    if (!a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (!a4)
    {
LABEL_6:
      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = a3;
      }

      if ((v9 & 0x8000000000000000) == 0)
      {
        v10 = (*(a2 + 8) - *a2) >> 2;
        if (*(v7 + 32) >= 2 && v9 < v10)
        {
          v12 = 4 * v9;
          do
          {
            if (a5)
            {
              result = LMLanguageModelDecrementUsageCount();
            }

            else
            {
              result = LMLanguageModelIncrementUsageCount();
            }

            ++v9;
            v12 += 4;
          }

          while (v10 != v9);
        }
      }

      return result;
    }
  }

  if (((a5 | v8) & 1) == 0)
  {

    return LMLanguageModelIncrementUsageCount();
  }

  return result;
}

void sub_29934F018(uint64_t a1, double a2, uint64_t a3, const __CFString *a4)
{
  sub_29934DEE4(a1, 1, 1, 0);
  v8 = *(a1 + 256);
  if (!v8 || (v9 = *(v8 + 8)) == 0 || sub_299225D3C(v9, kMecabraContextOptionPrivateMode) != *MEMORY[0x29EDB8F00] && ((v10 = *(v8 + 8)) == 0 || !sub_299325370(v10)))
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2000000000;
    *&v12[3] = a2;
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 0x40000000;
    v11[2] = sub_29934F144;
    v11[3] = &unk_29EF13148;
    v11[5] = a1;
    v11[6] = a3;
    v11[4] = v12;
    sub_2993E04D0((a1 + 360), a4, v11);
    _Block_object_dispose(v12, 8);
  }
}

void sub_29934F12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29934F468(void *a1)
{
  v1 = a1[19];
  if (*(v1 + 104) == 1)
  {
    sub_29934DEE4(a1, 1, 1, 0);
    v3 = *(v1 + 112);
    if ((v3 & 8) != 0)
    {
      v4 = a1[54];
      if (v4)
      {
        v5 = a1[1];
        if (*(v5 + 5) != 1 || (v6 = *(v5 + 40)) == 0)
        {
          v6 = *(v5 + 32);
        }

        sub_29938460C(v6, v4);
      }

      sub_2993B8E44(a1);
      sub_2993B8CEC(a1);
      v7 = a1[54];
      if (v7)
      {
        v8 = a1[1];
        if (*(v8 + 5) != 1 || (v9 = *(v8 + 40)) == 0)
        {
          v9 = *(v8 + 32);
        }

        sub_2993845B0(v9, v7, sub_29934C274);
      }

      v3 = *(v1 + 112) & 0xFFFFFFFFFFFFFFF7;
      *(v1 + 112) = v3;
    }

    if ((v3 & 0x800) != 0)
    {
      if (*(v1 + 168))
      {
        sub_2993665E8(a1[37], *(v1 + 168));
      }

      *(v1 + 112) &= ~0x800uLL;
    }
  }
}

void sub_29934F5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFDictionary *sub_29934F5C8(uint64_t a1, int a2)
{
  if (a2 != 3)
  {
    return 0;
  }

  v2 = *(a1 + 432);
  if (!v2)
  {
    return 0;
  }

  v3 = (*(*v2 + 144))(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"surface", v4);
  }

  return v6;
}

uint64_t sub_29934F664(uint64_t a1, unsigned int a2)
{
  LMLanguageModelFlushDynamicData();
  v3 = *(a1 + 432);
  if (!v3)
  {
    return 1;
  }

  v4 = *(*v3 + 88);

  return v4();
}

uint64_t sub_29934F6F4(uint64_t a1)
{
  v1 = *(a1 + 432);
  if (v1)
  {
    (*(*v1 + 80))(v1);
  }

  return LMLanguageModelResetDynamicData();
}

CFArrayRef sub_29934F774(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_rawCandidate(a2, a2, a3, a4);
  if (v6)
  {
    v7 = __dynamic_cast(v6, &unk_2A1F64300, &unk_2A1F752F0, 0);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 512);

  return sub_2992142A0(v8, v7, a3);
}

void sub_29934F808(uint64_t a1, const UniChar *a2, CFIndex numChars, uint64_t a4)
{
  if (a2)
  {
    if (numChars)
    {
      v7 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], a2, numChars);
      if (v7)
      {
        v8 = v7;
        v40 = a2;
        v50 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        sub_29934C930(a1, v7, 0, 0);
        v9 = v8;
        v10 = 0;
        while (1)
        {
          v11 = (*(**(a1 + 472) + 48))(*(a1 + 472));
          v15 = v11;
          v16 = !v11 || v10 == 10;
          if (v16 || 0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 3) > 2 || (v50 & 1) != 0)
          {
            break;
          }

          v17 = MecabraCandidateCopySyllableLengthArrayInAnalysisString(v11, v12, v13, v14);
          v18 = v17;
          ++v10;
          if (v17)
          {
            Count = CFArrayGetCount(v17);
            v45 = 0;
            valuePtr = 0;
            __p = 0;
            v44 = 0;
            v42 = v10;
            if (Count)
            {
              if (!(Count >> 61))
              {
                sub_299236FB8(&__p, Count);
              }

              sub_299212A8C();
            }

            if (!numChars)
            {
              v21 = __p;
              v20 = v44;
              if ((sub_29934FC84(v47, v48, __p, v44) & 1) == 0)
              {
                (*(a4 + 16))(a4, v21, (v20 - v21) >> 3, &v50);
                if ((v50 & 1) == 0)
                {
                  v22 = v48;
                  if (v48 >= v49)
                  {
                    v26 = sub_29935256C(&v47, &__p);
                  }

                  else
                  {
                    *v48 = 0;
                    v22[1] = 0;
                    v22[2] = 0;
                    sub_2993526BC(v22, __p, v44, (v44 - __p) >> 3);
                    v26 = (v22 + 3);
                  }

                  v48 = v26;
                  if (MecabraCandidateGetMatchedLengthType(v15, v23, v24, v25) != 2)
                  {
                    v27 = sub_2993A9ED4(*(a1 + 400) + 80, v40, 0, *(v44 - 1));
                    if (v27 != -1)
                    {
                      v28 = __p;
                      *(__p - 1) = v27;
                      v29 = -v27;
                      v30 = v44;
                      if (v44 >= v45)
                      {
                        v32 = v44 - v28;
                        v33 = (v44 - v28) >> 3;
                        v34 = v33 + 1;
                        if ((v33 + 1) >> 61)
                        {
                          sub_299212A8C();
                        }

                        v35 = v45 - v28;
                        if ((v45 - v28) >> 2 > v34)
                        {
                          v34 = v35 >> 2;
                        }

                        v36 = v35 >= 0x7FFFFFFFFFFFFFF8;
                        v37 = 0x1FFFFFFFFFFFFFFFLL;
                        if (!v36)
                        {
                          v37 = v34;
                        }

                        if (v37)
                        {
                          sub_299236FB8(&__p, v37);
                        }

                        *(8 * v33) = v29;
                        v31 = (8 * v33 + 8);
                        memcpy(0, v28, v32);
                        v38 = __p;
                        __p = 0;
                        v44 = v31;
                        v45 = 0;
                        if (v38)
                        {
                          operator delete(v38);
                        }
                      }

                      else
                      {
                        *v44 = v29;
                        v31 = v30 + 8;
                      }

                      v44 = v31;
                      v39 = __p;
                      if ((sub_29934FC84(v47, v48, __p, v31) & 1) == 0)
                      {
                        (*(a4 + 16))(a4, v39, (v31 - v39) >> 3, &v50);
                        if ((v50 & 1) == 0)
                        {
                          sub_29934FD04(&v47, &__p);
                        }
                      }
                    }
                  }
                }
              }
            }

            CFRelease(v18);
            if (__p)
            {
              v44 = __p;
              operator delete(__p);
            }

            v10 = v42;
          }
        }

        CFRelease(v9);
        __p = &v47;
        sub_2992FD380(&__p);
      }
    }
  }
}

void sub_29934FC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  __p = &a19;
  sub_2992FD380(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_29934FC84(uint64_t a1, uint64_t a2, void *__s2, uint64_t a4)
{
  if (a1 == a2)
  {
    return 0;
  }

  v6 = a1;
  v7 = a4 - __s2;
  while (*(v6 + 8) - *v6 != v7 || memcmp(*v6, __s2, v7))
  {
    v6 += 24;
    if (v6 == a2)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_29934FD04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29935256C(a1, a2);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    sub_2993526BC(v3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    result = v3 + 3;
    *(a1 + 8) = v3 + 3;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29934FD70(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 472) + 56))(*(a1 + 472));
  v4 = sub_299379578(*(a1 + 400), a2);
  if (CFArrayGetCount(*(v4 + 8)))
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 8), v5);
      v10 = ValueAtIndex;
      if (*(a1 + 4) != 1 || !MecabraCandidateIsEmojiCandidate(ValueAtIndex, v7, v8, v9))
      {
        (*(**(a1 + 472) + 16))(*(a1 + 472), v10);
      }

      ++v5;
    }

    while (v5 < CFArrayGetCount(*(v4 + 8)));
  }

  v11 = *(a1 + 472);
  v12 = sub_2992E99B4();
  (*(*v11 + 32))(v11, v12, 1);
  return *(*(a1 + 472) + 8);
}

void sub_29934FE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29934DEE4(a1, 1, 1, 0);
  if (a3 >= 1)
  {
    v5 = *(a1 + 432);
    if (v5)
    {
      v6 = *(*v5 + 24);

      v6();
    }
  }
}

void sub_29934FF10(uint64_t a1)
{
  v154 = *MEMORY[0x29EDCA608];
  (*(**(a1 + 472) + 56))(*(a1 + 472));
  CFSetRemoveAllValues(*(a1 + 504));
  *(a1 + 536) = *(a1 + 568);
  *(a1 + 552) = *(a1 + 544);
  v2 = *(a1 + 400);
  if (*(v2 + 1152) != 1)
  {
    return;
  }

  if (CFArrayGetCount(*(v2 + 1160)))
  {
    v3 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 1160), v3);
      v8 = ValueAtIndex;
      if (*(a1 + 4) != 1 || !MecabraCandidateIsEmojiCandidate(ValueAtIndex, v5, v6, v7))
      {
        (*(**(a1 + 472) + 16))(*(a1 + 472), v8);
      }

      ++v3;
    }

    while (v3 < CFArrayGetCount(*(v2 + 1160)));
  }

  *(v2 + 1152) = 0;
  v137 = 0;
  v9 = *(a1 + 216);
  if ((v9 & 1) == 0)
  {
    if (*(a1 + 568) == 1)
    {
      sub_299351638(a1);
    }

    else
    {
      v10 = *(a1 + 400);
      if ((*(v10 + 1312) & 1) == 0)
      {
        v145 = 0.0;
        v11 = (*(**(v10 + 952) + 64))(*(v10 + 952), &v145, 1);
        __p = 0;
        v148 = 0;
        v149 = 0;
        LOBYTE(values) = 0;
        v12 = sub_2993518D0(a1, v11, &__p, &values);
        (*(**(*(a1 + 400) + 952) + 120))(*(*(a1 + 400) + 952), v11, "Best: ", v145);
        if (v12)
        {
          if (values == 1)
          {
            *&v138 = 0.0;
            v13 = (*(**(*(a1 + 400) + 952) + 72))(*(*(a1 + 400) + 952), &v138, &unk_2A1F74B80);
            if (*&v138 < v145 + 4.5)
            {
              v14 = v13;
              sub_299351BEC(a1, v13, *&v138);
              (*(**(*(a1 + 400) + 952) + 120))(*(*(a1 + 400) + 952), v14, "AutoCorrection: ", v145);
              *(a1 + 536) = 1;
            }

            v15 = values ^ 1;
          }

          else
          {
            v15 = 1;
          }

          sub_299351CA8(a1, &__p, &v137, v15 & 1, v145);
        }

        if (__p)
        {
          v148 = __p;
          operator delete(__p);
        }

        if ((*(*(a1 + 400) + 1312) & 1) == 0 && !CFArrayGetCount(*(*(a1 + 472) + 8)))
        {
          *&v138 = 0.0;
          v16 = *(a1 + 400);
          v136[0] = MEMORY[0x29EDCA5F8];
          v136[1] = 0x40000000;
          v136[2] = sub_2993523DC;
          v136[3] = &unk_29EF13190;
          v136[4] = a1;
          v136[5] = 0;
          (*(**(v16 + 952) + 72))(*(v16 + 952), &v138, v136);
        }
      }
    }
  }

  if ((*(a1 + 568) & 1) == 0)
  {
    v17 = *(a1 + 544);
    v18 = *(a1 + 552);
    if ((v18 - v17) >= 9 && v17 != v18)
    {
      v19 = 0;
      v20 = *(a1 + 544);
      while (1)
      {
        v21 = *(*v20 + 192);
        if (!v21)
        {
          break;
        }

        if (v21 < v19)
        {
          v19 = *(*v20 + 192);
        }

        if (++v20 == v18)
        {
          v22 = 0;
          v23 = v19;
          v24 = 0.0;
          do
          {
            v25 = *v17;
            v26 = (*(**v17 + 112))(*v17);
            (*(*v25 + 480))(v25, (v26 - v23 + v25[48]));
            v27 = *v25;
            if (v22)
            {
              (*(v27 + 400))(v25, v24);
            }

            else
            {
              v24 = (*(v27 + 392))(v25);
            }

            ++v17;
            --v22;
          }

          while (v17 != v18);
          break;
        }
      }
    }
  }

  v28 = *(a1 + 472);
  v29 = sub_2992E8D58(*(a1 + 616));
  (*(*v28 + 32))(v28, v29, 1);
  if (v137)
  {
    v33 = (v9 & 1) == 0;
  }

  else
  {
    v33 = 0;
  }

  v34 = 0.0;
  if (v33)
  {
    v35 = sub_2992896C0(v137, v30, v31, v32);
    v36 = (*(*v35 + 392))(v35);

    v34 = -v36;
  }

  if (*(a1 + 384))
  {
    return;
  }

  sub_29932980C(*(a1 + 472));
  if (CFArrayGetCount(*(*(a1 + 472) + 8)))
  {
    v37 = CFArrayGetValueAtIndex(*(*(a1 + 472) + 8), 0);
  }

  else
  {
    v37 = 0;
  }

  v38 = *(a1 + 400);
  Count = CFArrayGetCount(*(v38 + 1112));
  if (Count >= 1)
  {
    v43 = CFArrayGetValueAtIndex(*(v38 + 1112), Count - 1);
    values = v43;
    if (v43)
    {
      if (*(a1 + 4) != 1 || !MecabraCandidateIsEmojiCandidate(v43, v40, v41, v42))
      {
        v117 = *(a1 + 200);
        Surface = MecabraCandidateGetSurface(v43, v40, v41, v42);
        if ((sub_2992BF2E4(v117, Surface, 2050) & 1) == 0)
        {
          if (CFArrayGetCount(*(*(a1 + 472) + 8)) >= 2)
          {
            __dst = 0;
            p_dst = &__dst;
            v152 = 0x2000000000;
            v153 = 0;
            v122 = MecabraCandidateGetSurface(v43, v119, v120, v121);
            v123 = *(a1 + 472);
            *&v138 = MEMORY[0x29EDCA5F8];
            v139 = 0x40000000;
            v140 = sub_2993523EC;
            v141 = &unk_29EF131B8;
            v142 = &__dst;
            v143 = v122;
            sub_2993293E4(v123, &v138);
            _Block_object_dispose(&__dst, 8);
            v148 = 0;
            v149 = 0;
            __p = &v148;
            operator new();
          }

          (*(**(a1 + 472) + 16))(*(a1 + 472), v43);
        }
      }
    }

    goto LABEL_174;
  }

  v146 = 0.0;
  v44 = (*(**(*(a1 + 400) + 952) + 72))(*(*(a1 + 400) + 952), &v146, &unk_2A1F74B60);
  v134 = v37;
  *&v138 = 0.0;
  v139 = 0;
  v140 = 0;
  __dst = 0;
  p_dst = 0;
  v152 = 0;
  v47 = *(a1 + 8);
  if (*(v47 + 5) != 1 || (v48 = *(v47 + 40)) == 0)
  {
    v48 = *(v47 + 32);
  }

  v133 = v44;
  if (!v44)
  {
    v49 = 0;
    goto LABEL_132;
  }

  v135 = 0;
  v49 = 0;
  v50 = v44;
  do
  {
    v51 = *v50;
    v52 = *(*v50 + 16);
    if (!v52)
    {
      goto LABEL_128;
    }

    if ((v51[2] - 9) <= 1)
    {
      v53 = *v52;
      if (*v52)
      {
        v54 = *(v53 + 8);
        if (v54 - 1 < 0)
        {
          goto LABEL_64;
        }

        v55 = 0;
        v56 = (*(v53 + 32) + 4 * v54 - 4);
        while (1)
        {
          v57 = *v56;
          v56 -= 4;
          if (v57)
          {
            break;
          }

          if (v54 == ++v55)
          {
            goto LABEL_64;
          }
        }

        if (v55)
        {
          v49 = v54 - v55;
        }

        else
        {
LABEL_64:
          v49 = 0;
        }
      }
    }

    __p = 0;
    v58 = (*(*v51 + 32))(v51, &__p);
    v59 = v58;
    v60 = __p;
    if (!v58 || __p == 0)
    {
      break;
    }

    v62 = v138;
    if (v138 == v139)
    {
      if (v51[2] == 10)
      {
        if (LMLanguageModelTokenSequenceIsBlocklisted())
        {
          break;
        }

        v60 = __p;
        v135 = 1;
        v62 = v138;
      }

      v70 = 4 * v60;
      v71 = v140;
      if (v60 > (v140 - v62) >> 2)
      {
        if (v62)
        {
          v139 = v62;
          operator delete(v62);
          v71 = 0;
          *&v138 = 0.0;
          v139 = 0;
          v140 = 0;
        }

        if (!(v60 >> 62))
        {
          v72 = v71 >> 1;
          if (v71 >> 1 <= v60)
          {
            v72 = v60;
          }

          if (v71 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v73 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v73 = v72;
          }

          sub_2992F8674(&v138, v73);
        }

        sub_299212A8C();
      }

      v76 = v139;
      v77 = v139 - v62;
      if (v60 <= (v139 - v62) >> 2)
      {
        if (v60)
        {
          memmove(v62, v59, 4 * v60);
        }

        v85 = &v62[v70];
      }

      else
      {
        if (v139 != v62)
        {
          memmove(v62, v59, v139 - v62);
        }

        v97 = v139;
        if (v77 != v70)
        {
          v98 = (v59 + v77);
          v99 = &v62[v70 - v76];
          v97 = v139;
          v100 = v139;
          do
          {
            v101 = *v98++;
            *v100++ = v101;
            v97 += 4;
            v99 -= 4;
          }

          while (v99);
        }

        v85 = v97;
      }

      v139 = v85;
      goto LABEL_128;
    }

    if (__p >= 1)
    {
      v63 = 4 * __p;
      v64 = p_dst;
      v65 = __dst;
      v66 = (p_dst - __dst) >> 2;
      if (__p <= (v152 - p_dst) >> 2)
      {
        if (v66 >= __p)
        {
          v78 = &p_dst[-4 * __p];
          v79 = p_dst;
          while (v78 < v64)
          {
            v80 = *v78;
            v78 += 4;
            *v79 = v80;
            v79 += 4;
          }

          v81 = &v65[4 * v60];
          p_dst = v79;
          if (v64 != v81)
          {
            memmove(&v65[4 * v60], v65, v64 - v81);
          }

          v82 = v65;
          v83 = v59;
          v84 = 4 * v60;
        }

        else
        {
          if (p_dst - __dst == v63)
          {
            v74 = p_dst;
            v75 = p_dst;
          }

          else
          {
            v92 = &__dst[v63];
            v74 = p_dst;
            v75 = p_dst;
            do
            {
              *v75 = *&v74[v58 - v65];
              v75 += 4;
              v74 += 4;
            }

            while (v92 != v74);
          }

          p_dst = v74;
          if (v66 < 1)
          {
            goto LABEL_128;
          }

          v93 = &v74[-4 * v60];
          v94 = v74;
          while (v93 < v64)
          {
            v95 = *v93;
            v93 += 4;
            *v94 = v95;
            v94 += 4;
          }

          v96 = &v65[4 * v60];
          p_dst = v94;
          if (v75 != v96)
          {
            memmove(&v65[4 * v60], v65, v74 - v96);
          }

          if (v64 == v65)
          {
            goto LABEL_128;
          }

          v82 = v65;
          v83 = v59;
          v84 = v64 - v65;
        }

        memmove(v82, v83, v84);
      }

      else
      {
        v67 = __p + v66;
        if ((__p + v66) >> 62)
        {
          sub_299212A8C();
        }

        v68 = v152 - __dst;
        if ((v152 - __dst) >> 1 > v67)
        {
          v67 = v68 >> 1;
        }

        if (v68 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v69 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v69 = v67;
        }

        if (v69)
        {
          sub_2992F86B0(&__dst, v69);
        }

        v86 = (4 * __p);
        v87 = 0;
        do
        {
          v88 = *v59++;
          *v87++ = v88;
          v63 -= 4;
        }

        while (v63);
        memcpy(v86, v65, p_dst - v65);
        v89 = &v86[p_dst - v65];
        p_dst = v65;
        v90 = (__dst - v65);
        memcpy((__dst - v65), __dst, v65 - __dst);
        v91 = __dst;
        __dst = v90;
        p_dst = v89;
        v152 = 0;
        if (v91)
        {
          operator delete(v91);
        }
      }
    }

LABEL_128:
    v50 = v50[1];
  }

  while (v50);
  if (v135)
  {
    goto LABEL_150;
  }

LABEL_132:
  v102 = v138;
  if (v138 == v139 || __dst == p_dst || !v49)
  {
LABEL_150:
    v104 = v133;
    if (!v133)
    {
      goto LABEL_153;
    }

    v116 = v134;
    if (v146 < v34 + 1.5)
    {
      __p = 0;
      v148 = 0;
      v149 = 0;
      sub_2993518D0(a1, v133, &__p, 0);
      operator new();
    }
  }

  else
  {
    v103 = 0;
    while ((*(*v48 + 40))(v48, v102[v103]) >= (v49 - 1) * -0.7 + -2.8)
    {
      v105 = p_dst;
      if (p_dst >= v152)
      {
        v107 = __dst;
        v108 = p_dst - __dst;
        v109 = (p_dst - __dst) >> 2;
        v110 = v109 + 1;
        if ((v109 + 1) >> 62)
        {
          sub_299212A8C();
        }

        v111 = v152 - __dst;
        if ((v152 - __dst) >> 1 > v110)
        {
          v110 = v111 >> 1;
        }

        if (v111 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v112 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v112 = v110;
        }

        if (v112)
        {
          sub_2992F86B0(&__dst, v112);
        }

        v113 = (4 * v109);
        v114 = &v113[-((p_dst - __dst) >> 2)];
        *v113 = *(v138 + v103);
        v106 = (v113 + 1);
        memcpy(v114, v107, v108);
        v115 = __dst;
        __dst = v114;
        p_dst = v106;
        v152 = 0;
        if (v115)
        {
          operator delete(v115);
        }
      }

      else
      {
        *p_dst = *(v138 + v103);
        v106 = v105 + 4;
      }

      p_dst = v106;
      ++v103;
      v102 = v138;
      if (v103 >= (v139 - v138) >> 2)
      {
        goto LABEL_150;
      }
    }

LABEL_153:
    v116 = v134;
  }

  if (__dst)
  {
    p_dst = __dst;
    operator delete(__dst);
  }

  if (*&v138 != 0.0)
  {
    v139 = v138;
    operator delete(v138);
  }

  values = 0;
  if (MecabraCandidateGetMatchedLengthType(v116, v104, v45, v46) != 2 && sub_29937D0F8(*(a1 + 400)))
  {
    v127 = objc_msgSend_rawCandidate(v116, v124, v125, v126);
    if (v127)
    {
      v128 = __dynamic_cast(v127, &unk_2A1F64300, &unk_2A1F752F0, 0);
      if (v128)
      {
        v129 = v128;
        if ((*(*v128 + 24))(v128))
        {
          v130 = (*(*v129 + 24))(v129);
          if ((CFStringGetLength(v130) - 9) >= 0xFFFFFFFFFFFFFFF9)
          {
            v131 = (*(*v129 + 24))(v129);
            if ((sub_2992364F0(v131) & 1) == 0)
            {
              sub_2992B1D18(v116, a1);
            }
          }
        }
      }
    }
  }

LABEL_174:
  v132 = CFArrayGetCount(*(*(a1 + 472) + 8));
  if (v132 >= 0xC9)
  {
    sub_29932989C(*(a1 + 472), 200, v132 - 200);
  }
}

void sub_2993514A8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v31)
  {
    (*(*v31 + 8))(v31, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_299351638(uint64_t a1)
{
  v2 = 400;
  if (*(a1 + 584))
  {
    v2 = 408;
  }

  sub_29937DC5C(*(a1 + v2), 1, &__p);
  v3 = __p;
  v4 = v21;
  if (__p == v21)
  {
    v5 = 400;
    if (*(a1 + 584))
    {
      v5 = 408;
    }

    sub_29937DC5C(*(a1 + v5), 0, &v18);
    if (__p)
    {
      *&v21 = __p;
      operator delete(__p);
    }

    v3 = v18;
    __p = v18;
    v21 = v19;
    v4 = v19;
  }

  if (v3 != v4)
  {
    v6 = 0;
    v7 = 1;
    v8 = 3.0;
    do
    {
      v9 = v3[1];
      if (v7)
      {
        v8 = v8 + v9;
      }

      if (v9 >= v8 || CFSetGetCount(*(a1 + 504)) + v6 > 3)
      {
        break;
      }

      v10 = *v3;
      if ((v7 & 1) != 0 || !v10)
      {
LABEL_21:
        v12 = sub_299351BEC(a1, v10, v3[1]);
        v14 = *(a1 + 584) ? 408 : 400;
        v15 = *(a1 + v14);
        v16 = v12 ? "Neural:" : "Neural Dropped:";
        v13.n128_f64[0] = v3[1];
        (*(**(v15 + 952) + 120))(*(v15 + 952), *v3, v16, v13);
      }

      else
      {
        while (1)
        {
          v11 = *v10;
          if ((*(**v10 + 40))(*v10))
          {
            if (((*(*v11 + 40))(v11) & 0x1002) != 0)
            {
              break;
            }
          }

          v10 = v10[1];
          if (!v10)
          {
            v10 = *v3;
            goto LABEL_21;
          }
        }

        v17 = *(a1 + 584) ? 408 : 400;
        (*(**(*(a1 + v17) + 952) + 120))(*(*(a1 + v17) + 952), *v3, "Neural OVS:", v3[1]);
        ++v6;
      }

      v7 = 0;
      v3 += 2;
    }

    while (v3 != v4);
    v3 = __p;
  }

  if (v3)
  {
    *&v21 = v3;
    operator delete(v3);
  }
}

void sub_2993518A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2993518D0(uint64_t a1, void *a2, const void **a3, _BYTE *a4)
{
  v6 = a2;
  a3[1] = *a3;
  if (a4)
  {
    *a4 = 0;
  }

  __p = 0;
  v37 = 0;
  v38 = 0;
  v7 = 0;
  if (a2)
  {
    v8 = 0;
    do
    {
      v9 = *v6;
      v10 = *(*v6 + 16);
      if (v10)
      {
        if (a4)
        {
          if ((*a4 & 1) == 0)
          {
            v11 = *v10;
            if (v11)
            {
              if ((*(v11 + 40) & 0x10) != 0 && *(v11 + 56) < 1.0)
              {
                *a4 = 1;
              }
            }
          }
        }

        v13 = a3[1];
        v12 = a3[2];
        if (v13 >= v12)
        {
          v15 = (v13 - *a3) >> 3;
          if ((v15 + 1) >> 61)
          {
            sub_299212A8C();
          }

          v16 = v12 - *a3;
          v17 = v16 >> 2;
          if (v16 >> 2 <= (v15 + 1))
          {
            v17 = v15 + 1;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v18 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            sub_299229E2C(a3, v18);
          }

          v19 = (8 * v15);
          *v19 = v9;
          v14 = 8 * v15 + 8;
          v20 = a3[1] - *a3;
          v21 = v19 - v20;
          memcpy(v19 - v20, *a3, v20);
          v22 = *a3;
          *a3 = v21;
          a3[1] = v14;
          a3[2] = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v13 = v9;
          v14 = (v13 + 8);
        }

        a3[1] = v14;
        v23 = ((*v9)[7])(v9);
        sub_299218EBC(&__p, __p, *v23, (*v23 + 2 * *(v23 + 8)), *(v23 + 8));
        if (v7 || (v24 = *v9[2]) == 0)
        {
          v7 = 1;
        }

        else
        {
          v8 += *(v24 + 8);
          v7 = v8 > 1;
        }
      }

      v6 = v6[1];
    }

    while (v6);
  }

  if (*(a1 + 568) == 1)
  {
    v25 = *a3;
    v26 = a3[1];
    if (*a3 == v26)
    {
LABEL_37:
      v28 = 0;
      goto LABEL_46;
    }
  }

  else
  {
    v25 = *a3;
    v26 = a3[1];
    if (v26 == *a3 || v7)
    {
      if (v26 == v25)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v27 = *(a1 + 256);
      if (!v27 || ((*(*v27 + 24))(v27) & 1) != 0)
      {
        goto LABEL_37;
      }

      v25 = *a3;
      v26 = a3[1];
    }
  }

  if (v25 != v26)
  {
    v29 = v26 - 8;
    if (v29 > v25)
    {
      v30 = v25 + 8;
      do
      {
        v31 = *(v30 - 1);
        *(v30 - 1) = *v29;
        *v29 = v31;
        v29 -= 8;
        v32 = v30 >= v29;
        v30 += 8;
      }

      while (!v32);
    }
  }

  v33 = sub_29922EBB4(*(a1 + 232));
  v28 = CFSetContainsValue(*(a1 + 504), v33) == 0;
  if (v33)
  {
    CFRelease(v33);
  }

LABEL_46:
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  return v28;
}

void sub_299351BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299351BEC(uint64_t a1, void *a2, double a3)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  v7 = 0;
  if (sub_2993518D0(a1, a2, &__p, &v7))
  {
    if (*(a1 + 568))
    {
      v5 = 0;
    }

    else
    {
      v5 = *(a1 + 584) ^ 1;
    }

    sub_299351CA8(a1, &__p, 0, v5 & 1, a3);
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_299351C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299352298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993522D4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if (a2 && (*(*a2 + 8) - 9) < 2)
  {
    return 0;
  }

  if (*(*(*(a1 + 32) + 8) + 24) > *(a1 + 48) + 0.7)
  {
    return 1;
  }

  if (a2)
  {
    if (*(a1 + 56))
    {
      v6 = **(*a2 + 16);
      if (v6)
      {
        if (*(v6 + 40))
        {
          return 1;
        }
      }
    }
  }

  (*(**(*(v4 + 400) + 952) + 120))(*(*(v4 + 400) + 952), a2, "Alternative: ");
  v7 = *(*(*(a1 + 32) + 8) + 24);

  return sub_299351BEC(v4, a2, v7);
}

uint64_t sub_2993523EC(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  Surface = MecabraCandidateGetSurface(a2, a2, a3, a4);
  result = CFStringHasPrefix(v6, Surface);
  if (result)
  {
    *a3 = 1;
  }

  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

CFCharacterSetRef sub_29935251C()
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  qword_2A1461230 = CFCharacterSetCreateInvertedSet(0, Predefined);
  result = CFCharacterSetCreateWithCharactersInString(0, @":/-_+@#");
  qword_2A1461238 = result;
  return result;
}

void *sub_29935256C(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_299212A8C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_29919600C();
  }

  v6 = 24 * v2;
  v13 = 0;
  v14 = v6;
  v15 = 24 * v2;
  v16 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = 0;
  sub_2993526BC((24 * v2), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  v7 = v15 + 24;
  v8 = a1[1] - *a1;
  v9 = &v14[-v8];
  memcpy(&v14[-v8], *a1, v8);
  v10 = *a1;
  *a1 = v9;
  a1[1] = v7;
  v11 = a1[2];
  a1[2] = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_2992FD31C(&v13);
  return v7;
}

void sub_2993526A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992FD31C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2993526BC(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_29920E024(result, a4);
  }

  return result;
}

void sub_29935271C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_299352738(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 336);
    *(v2 + 336) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 328);
    *(v2 + 328) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v2 + 320);
    *(v2 + 320) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(v2 + 312);
    *(v2 + 312) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    sub_299352924((v2 + 264));
    v7 = *(v2 + 240);
    *(v2 + 240) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v16 = (v2 + 216);
    sub_299291260(&v16);
    v8 = *(v2 + 192);
    if (v8)
    {
      *(v2 + 200) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 168);
    if (v9)
    {
      *(v2 + 176) = v9;
      operator delete(v9);
    }

    v10 = *(v2 + 144);
    if (v10)
    {
      *(v2 + 152) = v10;
      operator delete(v10);
    }

    v11 = *(v2 + 120);
    if (v11)
    {
      *(v2 + 128) = v11;
      operator delete(v11);
    }

    v12 = *(v2 + 96);
    if (v12)
    {
      *(v2 + 104) = v12;
      operator delete(v12);
    }

    v13 = *(v2 + 72);
    if (v13)
    {
      *(v2 + 80) = v13;
      operator delete(v13);
    }

    v14 = *(v2 + 48);
    if (v14)
    {
      *(v2 + 56) = v14;
      operator delete(v14);
    }

    v15 = *(v2 + 24);
    if (v15)
    {
      *(v2 + 32) = v15;
      operator delete(v15);
    }

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t *sub_299352924(uint64_t *a1)
{
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_299352990(a1 + 4);
  sub_299352990(a1 + 3);
  sub_299352990(a1 + 2);
  return a1;
}

uint64_t *sub_299352990(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_299252124(v2);
    MEMORY[0x29C29BFB0](v3, 0x1060C40E5902F1BLL);
  }

  return a1;
}

void sub_299352B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = v11;
  MEMORY[0x29C29BFB0](v12, v14, a3, a4, a5, a6, a7, a8);
  a10 = v13 + 24;
  sub_299354B70(&a10);
  a10 = v13;
  sub_299354C1C(&a10);
  sub_299352CDC(v10 + 4);
  v16 = v10[3];
  v10[3] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = v10[2];
  v10[2] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = v10[1];
  v10[1] = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *v10;
  *v10 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_299352CDC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2993C35F0(v2);
    MEMORY[0x29C29BFB0](v3, 0x10B2C404C9173A4);
  }

  return a1;
}

uint64_t *sub_299352D24(uint64_t *a1)
{
  if (*(a1 + 263) < 0)
  {
    operator delete(a1[30]);
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(a1[27]);
  }

  v2 = a1[23];
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

  v4 = a1[21];
  a1[21] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[18];
  if (v5)
  {
    a1[19] = v5;
    operator delete(v5);
  }

  v6 = a1[15];
  if (v6)
  {
    a1[16] = v6;
    operator delete(v6);
  }

  v7 = a1[12];
  if (v7)
  {
    a1[13] = v7;
    operator delete(v7);
  }

  v8 = a1[11];
  a1[11] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v14 = (a1 + 8);
  sub_299354B70(&v14);
  v14 = (a1 + 5);
  sub_299354C1C(&v14);
  sub_299352CDC(a1 + 4);
  v9 = a1[3];
  a1[3] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = a1[2];
  a1[2] = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = a1[1];
  a1[1] = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *a1;
  *a1 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return a1;
}

uint64_t sub_299352EE0(uint64_t a1)
{
  v2 = *(a1 + 239);
  if (v2 < 0)
  {
    v3 = *(a1 + 224);
  }

  else
  {
    v3 = *(a1 + 239);
  }

  v4 = a1 + 216;
  if (!v3)
  {
    sub_299352F40(a1, (a1 + 216));
    if ((*(a1 + 239) & 0x80) == 0)
    {
      return v4;
    }

    return *v4;
  }

  if ((v2 & 0x80) != 0)
  {
    return *v4;
  }

  return v4;
}

std::string *sub_299352F40(uint64_t a1, std::string *this)
{
  std::string::append(this, "k", 4uLL);
  std::string::append(this, (a1 + 208), 4uLL);
  v4 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  v5 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  sub_299353188(v4, v5, this);
  v6 = (*(**a1 + 40))();
  v7 = (*(**a1 + 32))();
  sub_299353188(v6, v7, this);
  sub_299353188(0, 0, this);
  sub_299353188(0, 0, this);
  v8 = 0;
  v9 = 12 * ((*(a1 + 152) - *(a1 + 144)) >> 3);
  *__s = v9;
  if ((v9 & 4) != 0)
  {
    v8 = 0;
    v10 = v9 + 12;
    do
    {
      v11 = v10;
      ++v8;
      v10 += 12;
    }

    while ((v11 & 4) != 0);
  }

  std::string::append(this, __s, 4uLL);
  *v17 = 12 * v8;
  std::string::append(this, v17, 4uLL);
  v12 = *(a1 + 263);
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = *(a1 + 240);
    v12 = *(a1 + 248);
  }

  else
  {
    v13 = (a1 + 240);
  }

  std::string::append(this, v13, v12);
  for (; v8; --v8)
  {
    v16 = 0;
    *v15 = 0;
    std::string::append(this, v15, 0xCuLL);
  }

  *v17 = 0;
  std::string::append(this, v17, 4uLL);
  std::string::append(this, v17, 4uLL);
  std::string::append(this, v17, 4uLL);
  std::string::append(this, v17, 4uLL);
  std::string::append(this, v17, 4uLL);
  return std::string::append(this, v17, 4uLL);
}

void sub_299353188(int a1, const std::string::value_type *a2, std::string *this)
{
  *v7 = ((a1 + 7) & 0xFFFFFFF8) - a1;
  *__s = a1;
  std::string::append(this, __s, 4uLL);
  std::string::append(this, v7, 4uLL);
  if (*__s)
  {
    std::string::append(this, a2, *__s);
  }

  if (*v7)
  {
    v5 = 0;
    sub_299354CF8(v6, *v7, &v5);
    std::string::append(this, v6[0], *v7);
    if (v6[0])
    {
      v6[1] = v6[0];
      operator delete(v6[0]);
    }
  }
}

void sub_299353230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29935324C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_299353290(void *a1, char **a2, int a3, void *a4)
{
  v4 = a1;
  v6 = a1 + 18;
  v5 = a1[18];
  *(a1 + 52) = a3;
  v7 = a2[1] - *a2;
  if (a1[20] - v5 < v7)
  {
    if (!((v7 >> 3) >> 61))
    {
      sub_29920B86C((a1 + 18), v7 >> 3);
    }

    sub_299212A8C();
  }

  v9 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    v10 = MEMORY[0x29EDC93C0];
    do
    {
      v11 = *v9;
      *__dst = v11;
      if ((*(v11 + 47) & 0x8000000000000000) != 0)
      {
        if (!*(v11 + 32))
        {
LABEL_10:
          v12 = sub_2991C0E9C(v10, "/Library/Caches/com.apple.xbs/Sources/Mecabra/mecabra/Dictionary/MecabraJapaneseDictionaryCompiler.cpp", 102);
          v13 = sub_2991C0E9C(v12, "(", 1);
          v14 = MEMORY[0x29C29BD30](v13, 739);
          v15 = sub_2991C0E9C(v14, ") [", 3);
          v16 = sub_2991C0E9C(v15, "token->reading.size()", 21);
          v17 = sub_2991C0E9C(v16, "] ", 2);
          sub_2991C0E9C(v17, "token reading is empty\n", 23);
          sub_299233ED4();
        }
      }

      else if (!*(v11 + 47))
      {
        goto LABEL_10;
      }

      v18 = *(v11 + 71);
      if (v18 < 0)
      {
        v18 = *(v11 + 56);
      }

      v4 = a1;
      if (!v18)
      {
        v19 = sub_2991C0E9C(v10, "/Library/Caches/com.apple.xbs/Sources/Mecabra/mecabra/Dictionary/MecabraJapaneseDictionaryCompiler.cpp", 102);
        v20 = sub_2991C0E9C(v19, "(", 1);
        v21 = MEMORY[0x29C29BD30](v20, 740);
        v22 = sub_2991C0E9C(v21, ") [", 3);
        v23 = sub_2991C0E9C(v22, "token->surface.size()", 21);
        v24 = sub_2991C0E9C(v23, "] ", 2);
        sub_2991C0E9C(v24, "token surface is empty\n", 23);
        sub_299233ED4();
      }

      sub_29931C308(v6, __dst);
      v9 += 8;
    }

    while (v9 != v8);
  }

  v25 = v4[18];
  v26 = v4[19];
  if ((v26 - v25) >> 3 < 129)
  {
    v30 = 0;
LABEL_22:
    sub_299354EAC(v25, v26, (v26 - v25) >> 3, 0, v30);
  }

  else
  {
    v27 = MEMORY[0x29EDC9418];
    v28 = (v26 - v25) >> 3;
    while (1)
    {
      v29 = operator new(8 * v28, v27);
      if (v29)
      {
        break;
      }

      v30 = v28 >> 1;
      v31 = v28 > 1;
      v28 >>= 1;
      if (!v31)
      {
        goto LABEL_22;
      }
    }

    v32 = v29;
    sub_299354EAC(v25, v26, (v26 - v25) >> 3, v29, v28);
    operator delete(v32);
  }

  v33 = v4[18];
  if (v4[19] == v33)
  {
    goto LABEL_97;
  }

  v127 = 0u;
  memset(__dst, 0, sizeof(__dst));
  std::string::operator=(__dst, *v33 + 1);
  v34 = v4[18];
  v35 = v4[19];
  if (v34 == v35)
  {
    goto LABEL_79;
  }

  v36 = 0;
LABEL_27:
  v37 = *v34;
  *__p = v37;
  v38 = *(v37 + 12);
  v39 = v4[22];
  if (!*&v39)
  {
    goto LABEL_59;
  }

  v40 = vcnt_s8(v39);
  v40.i16[0] = vaddlv_u8(v40);
  v41 = v40.u32[0];
  if (v40.u32[0] > 1uLL)
  {
    v42 = *(v37 + 12);
    if (*&v39 <= v38)
    {
      v42 = v38 % v39.i32[0];
    }
  }

  else
  {
    v42 = (v39.i32[0] - 1) & v38;
  }

  v43 = *(v4[21] + 8 * v42);
  if (v43)
  {
    v44 = *v43;
    if (v44)
    {
      while (1)
      {
        v45 = v44[1];
        if (v45 == v38)
        {
          if (*(v44 + 4) == v38)
          {
            v51 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/mecabra/Dictionary/MecabraJapaneseDictionaryCompiler.cpp", 102);
            v52 = sub_2991C0E9C(v51, "(", 1);
            v53 = MEMORY[0x29C29BD30](v52, 753);
            v54 = sub_2991C0E9C(v53, ") [", 3);
            v55 = sub_2991C0E9C(v54, "iterator == m_tokenIDToUnigramTokenIndexMap.end()", 49);
            v56 = sub_2991C0E9C(v55, "] ", 2);
            sub_2991C0E9C(v56, "tokenID should be unique.\n", 26);
            sub_299233ED4();
          }
        }

        else
        {
          if (v40.u32[0] > 1uLL)
          {
            if (v45 >= *&v39)
            {
              v45 %= *&v39;
            }
          }

          else
          {
            v45 &= *&v39 - 1;
          }

          if (v45 != v42)
          {
LABEL_43:
            v46 = vcnt_s8(v39);
            v46.i16[0] = vaddlv_u8(v46);
            v41 = v46.u32[0];
            break;
          }
        }

        v44 = *v44;
        if (!v44)
        {
          goto LABEL_43;
        }
      }
    }
  }

  if (v41 > 1)
  {
    v47 = *(v37 + 12);
    if (*&v39 <= v38)
    {
      v47 = v38 % v39.i32[0];
    }
  }

  else
  {
    v47 = (v39.i32[0] - 1) & v38;
  }

  v48 = *(v4[21] + 8 * v47);
  if (!v48 || (v49 = *v48) == 0)
  {
LABEL_59:
    operator new();
  }

  while (1)
  {
    v50 = v49[1];
    if (v50 == v38)
    {
      if (*(v49 + 4) == v38)
      {
        if (__dst[23] >= 0)
        {
          v57 = __dst[23];
        }

        else
        {
          v57 = *&__dst[8];
        }

        v58 = *(v37 + 47);
        v59 = v58;
        if ((v58 & 0x80u) != 0)
        {
          v58 = *(v37 + 32);
        }

        if (v57 != v58 || (__dst[23] >= 0 ? (v60 = __dst) : (v60 = *__dst), v59 >= 0 ? (v61 = (v37 + 24)) : (v61 = *(v37 + 24)), memcmp(v60, v61, v57)))
        {
          sub_299354584(v4 + 5, __dst);
          if ((__dst[23] & 0x80000000) != 0)
          {
            operator delete(*__dst);
          }

          memset(__dst, 0, 24);
          if (*&__dst[24])
          {
            *&v127 = *&__dst[24];
            operator delete(*&__dst[24]);
          }

          *&__dst[24] = 0;
          v127 = 0uLL;
          std::string::operator=(__dst, (v37 + 24));
        }

        sub_29931C308(&__dst[24], __p);
        ++v36;
        if (++v34 == v35)
        {
LABEL_79:
          sub_299354584(v4 + 5, __dst);
          v62 = v4[5];
          v63 = v4[6];
          if (v62 == v63)
          {
            v64 = 0;
          }

          else
          {
            v64 = 0;
            do
            {
              if (*(v62 + 23) < 0)
              {
                sub_2991A110C(__p, *v62, *(v62 + 1));
              }

              else
              {
                v65 = *v62;
                *&__p[16] = *(v62 + 2);
                *__p = v65;
              }

              v123 = 0;
              v124 = 0;
              v125 = 0;
              sub_299354D78(&v123, *(v62 + 3), *(v62 + 4), (*(v62 + 4) - *(v62 + 3)) >> 3);
              v66 = v123;
              v67 = v124;
              if (v123)
              {
                v124 = v123;
                operator delete(v123);
              }

              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

              v64 += (v67 - v66) >> 3;
              v62 += 3;
            }

            while (v62 != v63);
          }

          if (v64 != (a1[19] - a1[18]) >> 3)
          {
            v68 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/mecabra/Dictionary/MecabraJapaneseDictionaryCompiler.cpp", 102);
            v69 = sub_2991C0E9C(v68, "(", 1);
            v70 = MEMORY[0x29C29BD30](v69, 771);
            v71 = sub_2991C0E9C(v70, ") [", 3);
            v72 = sub_2991C0E9C(v71, "tokenCount == m_sortedUnigramTokenArray.size()", 46);
            v73 = sub_2991C0E9C(v72, "] ", 2);
            sub_2991C0E9C(v73, "m_sortedUnigramTokenArray.size is not equal to the token count in m_unigramReadingAndTokensPairList.\n", 101);
            sub_299233ED4();
          }

          if (*&__dst[24])
          {
            *&v127 = *&__dst[24];
            operator delete(*&__dst[24]);
          }

          v4 = a1;
          if ((__dst[23] & 0x80000000) != 0)
          {
            operator delete(*__dst);
          }

LABEL_97:
          v74 = v4[5];
          v75 = v4[6];
          if (v74 == v75)
          {
            v76 = 0;
          }

          else
          {
            LODWORD(v76) = 0;
            v77 = MEMORY[0x29EDC93C0];
            do
            {
              v78 = (*(v74 + 32) - *(v74 + 24)) >> 3;
              if (v78 >= 0x100)
              {
                v79 = sub_2991C0E9C(v77, "/Library/Caches/com.apple.xbs/Sources/Mecabra/mecabra/Dictionary/MecabraJapaneseDictionaryCompiler.cpp", 102);
                v80 = sub_2991C0E9C(v79, "(", 1);
                v81 = MEMORY[0x29C29BD30](v80, 39);
                v82 = sub_2991C0E9C(v81, ") [", 3);
                v83 = sub_2991C0E9C(v82, "homographCount <= 0xff", 22);
                v84 = sub_2991C0E9C(v83, "] ", 2);
                sub_2991C0E9C(v84, "homographCount is greater than 0xff.\n", 37);
                sub_299233ED4();
              }

              if (BYTE3(v76))
              {
                v85 = sub_2991C0E9C(v77, "/Library/Caches/com.apple.xbs/Sources/Mecabra/mecabra/Dictionary/MecabraJapaneseDictionaryCompiler.cpp", 102);
                v86 = sub_2991C0E9C(v85, "(", 1);
                v87 = MEMORY[0x29C29BD30](v86, 40);
                v88 = sub_2991C0E9C(v87, ") [", 3);
                v89 = sub_2991C0E9C(v88, "tokenIndex <= 0x00ffffff", 24);
                v90 = sub_2991C0E9C(v89, "] ", 2);
                sub_2991C0E9C(v90, "tokenIndex is greater than 0x00ffffff.\n", 39);
                sub_299233ED4();
              }

              sub_2993547FC(v4[1], v74, v78 + (v76 << 8));
              sub_2993547FC(v4[11], v74, 0);
              v76 = v76 + ((*(v74 + 32) - *(v74 + 24)) >> 3);
              v74 += 48;
            }

            while (v74 != v75);
          }

          if (((*(*v4[11] + 16))(v4[11]) & 1) != 0 && (*(*v4[1] + 16))(v4[1]))
          {
            sub_29920D17C(v4 + 12, v76);
            v91 = v4[12];
            v92 = v4[13];
            if (v92 != v91)
            {
              bzero(v91, v92 - v91);
            }

            v93 = v4[5];
            v94 = v4[6];
            if (v93 != v94)
            {
              v95 = 0;
              do
              {
                v96 = (*(*a1[11] + 24))(a1[11], v93);
                v97 = *(v93 + 4) - *(v93 + 3);
                if (v97)
                {
                  v98 = a1[12];
                  v99 = 1;
                  do
                  {
                    *(v98 + 4 * (v95 + v99 - 1)) = v96;
                    v31 = v97 >> 3 > v99++;
                  }

                  while (v31);
                }

                v95 += v97 >> 3;
                v93 += 3;
              }

              while (v93 != v94);
              v93 = a1[5];
              v94 = a1[6];
            }

            for (; v93 != v94; v93 += 3)
            {
              if (*(v93 + 23) < 0)
              {
                sub_2991A110C(__dst, *v93, *(v93 + 1));
              }

              else
              {
                v100 = *v93;
                *&__dst[16] = *(v93 + 2);
                *__dst = v100;
              }

              *&__dst[24] = 0;
              v127 = 0uLL;
              sub_299354D78(&__dst[24], *(v93 + 3), *(v93 + 4), (*(v93 + 4) - *(v93 + 3)) >> 3);
              v101 = *&__dst[24];
              v102 = v127;
              if (*&__dst[24] != v127)
              {
                do
                {
                  if ((*(*v101 + 16) - 1) >= 2)
                  {
                    sub_2993547FC(*a1, (*v101 + 48), 0);
                  }

                  v101 += 8;
                }

                while (v101 != v102);
                v101 = *&__dst[24];
              }

              if (v101)
              {
                *&v127 = v101;
                operator delete(v101);
              }

              if ((__dst[23] & 0x80000000) != 0)
              {
                operator delete(*__dst);
              }
            }

            v4 = a1;
            if ((*(**a1 + 16))())
            {
              v103 = *(a1 + 52);
              if (v103 != 5)
              {
                if (v103)
                {
                  goto LABEL_139;
                }
              }

              v104 = a1[13] - a1[12];
              if (v104)
              {
                if (!((v104 >> 2) >> 61))
                {
                  sub_299354E64(v104 >> 2);
                }

                sub_299212A8C();
              }

              v111 = a1[5];
              v119 = a1[6];
              if (v111 != v119)
              {
                v112 = 0;
                do
                {
                  v113 = *(v111 + 32) - *(v111 + 24);
                  if (v113)
                  {
                    (*(**a1 + 24))(*a1, **(v111 + 24) + 48);
                    sub_299354E64(1uLL);
                  }

                  v112 += v113 >> 3;
                  v111 += 48;
                }

                while (v111 != v119);
              }

              sub_2993557E4(0, 0, 0, 0, 0);
              memset(__dst, 0, 24);
              sub_2992EA3B0(__dst, __p);
              v114 = a1[15];
              if (v114)
              {
                a1[16] = v114;
                operator delete(v114);
                a1[15] = 0;
                a1[16] = 0;
                a1[17] = 0;
              }

              v115 = *__p;
              a1[15] = *__p;
              v116 = *&__p[8];
              *(a1 + 8) = *&__p[8];
              v117 = v116;
              *__p = __dst;
              sub_29920E060(__p);
              v118 = v115 == v117;
              v4 = a1;
              if (!v118)
              {
LABEL_139:
                v107 = *a4;
                v108 = (*(*v4[1] + 32))(v4[1]);
                v109 = (*(*v4[1] + 40))(v4[1]);
                sub_29932265C(0, 0, v108, v109);
                sub_2993860CC(v107, v110);
              }
            }

            v105 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "Fails to build surface trie", 27);
          }

          else
          {
            v105 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "Fails to build unigram reading trie", 35);
          }

          std::ios_base::getloc((v105 + *(*v105 - 24)));
          v106 = std::locale::use_facet(__dst, MEMORY[0x29EDC93D0]);
          (v106->__vftable[2].~facet_0)(v106, 10);
          std::locale::~locale(__dst);
          std::ostream::put();
          std::ostream::flush();
          goto LABEL_139;
        }

        goto LABEL_27;
      }
    }

    else
    {
      if (v41 > 1)
      {
        if (v50 >= *&v39)
        {
          v50 %= *&v39;
        }
      }

      else
      {
        v50 &= *&v39 - 1;
      }

      if (v50 != v47)
      {
        goto LABEL_59;
      }
    }

    v49 = *v49;
    if (!v49)
    {
      goto LABEL_59;
    }
  }
}

void sub_299354498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, std::locale *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::locale a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  a15 = &a29;
  sub_29920E060(&a15);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299354584(unint64_t *a1, __int128 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (v7 + 1 > 0x555555555555555)
    {
      sub_299212A8C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v9;
    }

    v26 = a1;
    if (v10)
    {
      if (v10 <= 0x555555555555555)
      {
        operator new();
      }

      sub_29919600C();
    }

    v13 = 48 * v7;
    v22 = 0;
    v23 = v13;
    v24 = v13;
    v25 = 0;
    if (*(a2 + 23) < 0)
    {
      sub_2991A110C(v13, *a2, *(a2 + 1));
    }

    else
    {
      *v13 = *a2;
      *(v13 + 16) = *(a2 + 2);
    }

    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    sub_299354D78((v13 + 24), *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
    v14 = v24;
    v15 = *a1;
    v16 = a1[1];
    v17 = v23 + *a1 - v16;
    if (v16 != *a1)
    {
      v18 = *a1;
      v19 = v23 + *a1 - v16;
      do
      {
        v20 = *v18;
        *(v19 + 16) = *(v18 + 16);
        *v19 = v20;
        *(v18 + 8) = 0;
        *(v18 + 16) = 0;
        *v18 = 0;
        *(v19 + 24) = 0;
        *(v19 + 32) = 0;
        *(v19 + 40) = 0;
        *(v19 + 24) = *(v18 + 24);
        *(v19 + 40) = *(v18 + 40);
        *(v18 + 24) = 0;
        *(v18 + 32) = 0;
        *(v18 + 40) = 0;
        v18 += 48;
        v19 += 48;
      }

      while (v18 != v16);
      do
      {
        sub_299354CA0(v15);
        v15 += 48;
      }

      while (v15 != v16);
      v15 = *a1;
    }

    v12 = v14 + 48;
    *a1 = v17;
    a1[1] = v12;
    v21 = a1[2];
    a1[2] = v25;
    v24 = v15;
    v25 = v21;
    v22 = v15;
    v23 = v15;
    result = sub_299354E14(&v22);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_2991A110C(a1[1], *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v6;
    }

    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    result = sub_299354D78((v5 + 24), *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
    v12 = v5 + 48;
    a1[1] = v12;
  }

  a1[1] = v12;
  return result;
}

void sub_2993547AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299354E14(va);
  _Unwind_Resume(a1);
}

void sub_2993547FC(void *a1, __int128 *a2, int a3)
{
  sub_29924BA6C(a1 + 1, a2);
  v6 = a1[5];
  v5 = a1[6];
  if (v6 >= v5)
  {
    v8 = a1[4];
    v9 = v6 - v8;
    v10 = (v6 - v8) >> 2;
    v11 = v10 + 1;
    if ((v10 + 1) >> 62)
    {
      sub_299212A8C();
    }

    v12 = v5 - v8;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFFCLL;
    v14 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      sub_2992F86B0((a1 + 4), v14);
    }

    v15 = (v6 - v8) >> 2;
    v16 = (4 * v10);
    v17 = (4 * v10 - 4 * v15);
    *v16 = a3;
    v7 = v16 + 1;
    memcpy(v17, v8, v9);
    v18 = a1[4];
    a1[4] = v17;
    a1[5] = v7;
    a1[6] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v6 = a3;
    v7 = v6 + 4;
  }

  a1[5] = v7;
}

uint64_t sub_2993548E4(uint64_t a1)
{
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_2A1F67D68;
  sub_29918D970((a1 + 56));
  sub_29919C3A8((a1 + 104));
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_299354948(_Unwind_Exception *a1)
{
  sub_29918D980(v1 + 56);
  sub_299249384(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29935496C(void ****a1)
{
  *a1 = &unk_2A1F737C0;
  sub_299354B0C(a1 + 7, 0);

  return sub_299249384(a1);
}

void sub_2993549C4(void ****a1)
{
  *a1 = &unk_2A1F737C0;
  sub_299354B0C(a1 + 7, 0);
  sub_299249384(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299354ABC(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 && (v2 = *v1) != 0)
  {
    return *(v2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299354ADC(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 && (v2 = *v1) != 0)
  {
    return (v2[4] - v2[2] + v2[6]);
  }

  else
  {
    return 0;
  }
}

void ****sub_299354B0C(void ****result, void ***a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      sub_2993226F0(*v2);
    }

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void sub_299354B70(void ****a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v7 = v4 - 6;
        if (*(v4 - 25) < 0)
        {
          operator delete(*v7);
        }

        v4 -= 6;
      }

      while (v7 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_299354C1C(void ***a1)
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
        v4 -= 48;
        sub_299354CA0(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_299354CA0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t *sub_299354CF8(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29923F4C4(a1, a2);
  }

  return a1;
}

void sub_299354D5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_299354D78(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      sub_29920B86C(result, a4);
    }

    sub_299212A8C();
  }

  return result;
}

void sub_299354DF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299354E14(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_299354CA0(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_299354E64(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_299354EAC(uint64_t result, uint64_t *a2, unint64_t a3, uint64_t *a4, int64_t a5)
{
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      result = sub_29920B9DC((*(a2 - 1) + 24), (*result + 24));
      if ((result & 0x80) != 0)
      {
        v7 = *v6;
        *v6 = *(a2 - 1);
        *(a2 - 1) = v7;
      }
    }

    else if (a3 > 128)
    {
      v17 = a4;
      v18 = a3 >> 1;
      v19 = (result + 8 * (a3 >> 1));
      v20 = a3 >> 1;
      if (a3 <= a5)
      {
        sub_2993550E4(result, v19, v20, a4);
        v21 = &v17[v18];
        result = sub_2993550E4(&v6[a3 >> 1], a2, a3 - (a3 >> 1), v21);
        v22 = &v17[a3];
        v23 = v21;
        while (v23 != v22)
        {
          result = sub_29920B9DC((*v23 + 24), (*v17 + 24));
          if ((result & 0x80u) == 0)
          {
            v24 = v17;
          }

          else
          {
            v24 = v23;
          }

          v17 += (result & 0x80) == 0;
          v23 = (v23 + ((result >> 4) & 8));
          *v6++ = *v24;
          if (v17 == v21)
          {
            while (v23 != v22)
            {
              v26 = *v23++;
              *v6++ = v26;
            }

            return result;
          }
        }

        while (v17 != v21)
        {
          v25 = *v17++;
          *v6++ = v25;
        }
      }

      else
      {
        sub_299354EAC(result, v19, v20, a4, a5);
        sub_299354EAC(&v6[a3 >> 1], a2, a3 - (a3 >> 1), v17, a5);

        return sub_2993552D8(v6, &v6[a3 >> 1], a2, a3 >> 1, a3 - (a3 >> 1), v17, a5);
      }
    }

    else if (result != a2)
    {
      v9 = (result + 8);
      if ((result + 8) != a2)
      {
        v10 = 0;
        v11 = result;
        do
        {
          v12 = *v11;
          v11 = v9;
          result = sub_29920B9DC((*v9 + 24), (v12 + 24));
          if ((result & 0x80) != 0)
          {
            v13 = *v11;
            v14 = v10;
            while (1)
            {
              *(v6 + v14 + 8) = *(v6 + v14);
              if (!v14)
              {
                break;
              }

              result = sub_29920B9DC((v13 + 24), (*(v6 + v14 - 8) + 24));
              v14 -= 8;
              if ((result & 0x80) == 0)
              {
                v15 = (v6 + v14 + 8);
                goto LABEL_15;
              }
            }

            v15 = v6;
LABEL_15:
            *v15 = v13;
          }

          v9 = v11 + 1;
          v10 += 8;
        }

        while (v11 + 1 != a2);
      }
    }
  }

  return result;
}

uint64_t *sub_2993550E4(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
LABEL_9:
      *v4 = *v6;
      return result;
    }

    if (a3 == 2)
    {
      v8 = a2 - 1;
      result = sub_29920B9DC((*(a2 - 1) + 24), (*result + 24));
      if (result >= 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = v8;
      }

      *v4++ = *v9;
      if (result >= 0)
      {
        v6 = v8;
      }

      goto LABEL_9;
    }

    if (a3 > 8)
    {
      v18 = &result[a3 >> 1];
      sub_299354EAC(result, v18, a3 >> 1, a4, a3 >> 1);
      result = sub_299354EAC(&v6[a3 >> 1], a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
      v19 = &v6[a3 >> 1];
      while (v19 != a2)
      {
        result = sub_29920B9DC((*v19 + 24), (*v6 + 24));
        if (result >= 0)
        {
          v20 = v6;
        }

        else
        {
          v20 = v19;
        }

        v19 = (v19 + ((result >> 4) & 8));
        v6 += (result & 0x80) == 0;
        *v4++ = *v20;
        if (v6 == v18)
        {
          while (v19 != a2)
          {
            v22 = *v19++;
            *v4++ = v22;
          }

          return result;
        }
      }

      while (v6 != v18)
      {
        v21 = *v6++;
        *v4++ = v21;
      }
    }

    else if (result != a2)
    {
      v10 = result + 1;
      *a4 = *result;
      if (result + 1 != a2)
      {
        v11 = 0;
        v12 = a4;
        do
        {
          v13 = v12;
          v14 = *v12++;
          result = sub_29920B9DC((*v10 + 24), (v14 + 24));
          v15 = v12;
          if ((result & 0x80) != 0)
          {
            v13[1] = *v13;
            v15 = v4;
            if (v13 != v4)
            {
              v17 = v11;
              while (1)
              {
                v15 = (v4 + v17);
                result = sub_29920B9DC((*v10 + 24), (*(v4 + v17 - 8) + 24));
                if ((result & 0x80) == 0)
                {
                  break;
                }

                *v15 = *(v15 - 1);
                v17 -= 8;
                if (!v17)
                {
                  v15 = v4;
                  break;
                }
              }
            }
          }

          v16 = *v10++;
          *v15 = v16;
          v11 += 8;
        }

        while (v10 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_2993552D8(uint64_t result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v9 = a5;
    v13 = result;
    while (a4 > a7 && v9 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v14 = 0;
      v15 = -a4;
      while (1)
      {
        result = sub_29920B9DC((*a2 + 24), (*&v14[v13] + 24));
        if ((result & 0x80) != 0)
        {
          break;
        }

        v14 += 8;
        if (__CFADD__(v15++, 1))
        {
          return result;
        }
      }

      v17 = -v15;
      v79 = a6;
      v80 = a7;
      v81 = a3;
      v78 = &v14[v13];
      if (-v15 >= v9)
      {
        if (v15 == -1)
        {
          v74 = *&v14[v13];
          *&v14[v13] = *a2;
          *a2 = v74;
          return result;
        }

        v25 = v17 / 2;
        v26 = v13 + 8 * (v17 / 2);
        v27 = a3;
        v19 = a2;
        if (a2 != v27)
        {
          v77 = v25;
          v28 = (v81 - a2) >> 3;
          v19 = a2;
          do
          {
            v29 = &v19[8 * (v28 >> 1)];
            v31 = *v29;
            v30 = v29 + 8;
            v32 = sub_29920B9DC((v31 + 24), (*&v14[v26] + 24));
            if (v32 >= 0)
            {
              v28 >>= 1;
            }

            else
            {
              v28 += ~(v28 >> 1);
            }

            if (v32 < 0)
            {
              v19 = v30;
            }
          }

          while (v28);
          v25 = v77;
        }

        v18 = (v19 - a2) >> 3;
        v20 = &v14[v26];
      }

      else
      {
        v18 = v9 / 2;
        v19 = &a2[8 * (v9 / 2)];
        v20 = a2;
        if (&a2[-v13] != v14)
        {
          v21 = (&a2[-v13] - v14) >> 3;
          v20 = &v14[v13];
          do
          {
            v22 = &v20[8 * (v21 >> 1)];
            v24 = *v22;
            v23 = v22 + 8;
            if ((sub_29920B9DC((*v19 + 24), (v24 + 24)) & 0x80u) != 0)
            {
              v21 >>= 1;
            }

            else
            {
              v20 = v23;
              v21 += ~(v21 >> 1);
            }
          }

          while (v21);
          v18 = v9 / 2;
        }

        v25 = (&v20[-v13] - v14) >> 3;
      }

      v33 = v19;
      v34 = a2 - v20;
      if (a2 != v20)
      {
        v33 = v20;
        v35 = v19 - a2;
        if (v19 != a2)
        {
          if (v20 + 8 == a2)
          {
            v36 = *v20;
            v37 = a2;
            v38 = v19 - a2;
            v39 = v18;
            v40 = v25;
            memmove(v20, v37, v38);
            v25 = v40;
            v18 = v39;
            v33 = &v20[v35];
            *&v20[v35] = v36;
          }

          else if (a2 + 8 == v19)
          {
            v41 = *(v19 - 1);
            v33 = v20 + 8;
            if (v19 - 8 != v20)
            {
              v42 = v18;
              v43 = v25;
              memmove(v20 + 8, v20, v19 - 8 - v20);
              v25 = v43;
              v18 = v42;
            }

            *v20 = v41;
          }

          else
          {
            v44 = v34 >> 3;
            if (v34 >> 3 == v35 >> 3)
            {
              v45 = v20 + 8;
              v46 = a2 + 8;
              do
              {
                v47 = *(v45 - 1);
                *(v45 - 1) = *(v46 - 1);
                *(v46 - 1) = v47;
                if (v45 == a2)
                {
                  break;
                }

                v45 += 8;
                v48 = v46 == v19;
                v46 += 8;
              }

              while (!v48);
              v33 = a2;
            }

            else
            {
              v49 = v35 >> 3;
              v50 = v34 >> 3;
              do
              {
                v51 = v50;
                v50 = v49;
                v49 = v51 % v49;
              }

              while (v49);
              v52 = &v20[8 * v50];
              do
              {
                v54 = *(v52 - 1);
                v52 -= 8;
                v53 = v54;
                v55 = &v52[v34];
                v56 = v52;
                do
                {
                  v57 = v55;
                  *v56 = *v55;
                  v58 = &v55[8 * v44];
                  v59 = __OFSUB__(v44, (v19 - v55) >> 3);
                  v61 = v44 - ((v19 - v55) >> 3);
                  v60 = (v61 < 0) ^ v59;
                  v55 = &v20[8 * v61];
                  if (v60)
                  {
                    v55 = v58;
                  }

                  v56 = v57;
                }

                while (v55 != v52);
                *v57 = v53;
              }

              while (v52 != v20);
              v33 = &v20[v35];
            }
          }
        }
      }

      a4 = -v15 - v25;
      v62 = v9 - v18;
      if (v25 + v18 >= v9 - (v25 + v18) - v15)
      {
        v64 = v25;
        v65 = v18;
        result = sub_2993552D8(v33, v19, v81, -v15 - v25, v9 - v18, v79, v80);
        v19 = v20;
        a6 = v79;
        v62 = v65;
        a4 = v64;
        v81 = v33;
        v13 = v78;
      }

      else
      {
        v63 = v20;
        a6 = v79;
        result = sub_2993552D8(&v14[v13], v63, v33, v25, v18, v79, v80);
        v13 = v33;
      }

      v9 = v62;
      a2 = v19;
      a7 = v80;
      a3 = v81;
      if (!v62)
      {
        return result;
      }
    }

    if (a4 <= v9)
    {
      if (a2 != v13)
      {
        v69 = -a6;
        v70 = a6;
        v71 = v13;
        do
        {
          v72 = *v71;
          v71 += 8;
          *v70++ = v72;
          v69 -= 8;
        }

        while (v71 != a2);
        while (a2 != a3)
        {
          result = sub_29920B9DC((*a2 + 24), (*a6 + 24));
          if ((result & 0x80u) == 0)
          {
            v73 = a6;
          }

          else
          {
            v73 = a2;
          }

          a2 += (result >> 4) & 8;
          a6 += 8 * ((result & 0x80) == 0);
          *v13 = *v73;
          v13 += 8;
          if (v70 == a6)
          {
            return result;
          }
        }

        return memmove(v13, a6, -(a6 + v69));
      }
    }

    else if (a2 != a3)
    {
      v66 = 0;
      do
      {
        *(a6 + v66) = *&a2[v66];
        v66 += 8;
      }

      while (&a2[v66] != a3);
      v67 = (a6 + v66);
      while (a2 != v13)
      {
        result = sub_29920B9DC((*(v67 - 1) + 24), (*(a2 - 1) + 24));
        if ((result & 0x80u) == 0)
        {
          v68 = v67;
        }

        else
        {
          v68 = a2;
        }

        if ((result & 0x80u) == 0)
        {
          v67 -= 8;
        }

        else
        {
          a2 -= 8;
        }

        *(a3 - 1) = *(v68 - 1);
        a3 -= 8;
        if (v67 == a6)
        {
          return result;
        }
      }

      if (v67 != a6)
      {
        v75 = -8;
        do
        {
          v76 = *(v67 - 1);
          v67 -= 8;
          *&a3[v75] = v76;
          v75 -= 8;
        }

        while (v67 != a6);
      }
    }
  }

  return result;
}

unsigned int *sub_2993557E4(unsigned int *result, unsigned int *a2, unint64_t a3, unsigned int *a4, int64_t a5)
{
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      v7 = *(a2 - 2);
      v8 = *result;
      v9 = -1;
      if (v7 >= *result)
      {
        v9 = 1;
      }

      if (v7 == v8)
      {
        v10 = *(a2 - 1);
        v11 = result[1];
        v12 = v10 >= v11;
        v13 = v10 == v11;
        v9 = -1;
        if (v12)
        {
          v9 = 1;
        }

        if (v13)
        {
          v9 = 0;
        }
      }

      if (v9 < 0)
      {
        *result = v7;
        *(a2 - 2) = v8;
        v14 = result[1];
        result[1] = *(a2 - 1);
        *(a2 - 1) = v14;
      }
    }

    else if (a3 <= 0)
    {
      if (result != a2)
      {
        v21 = result + 2;
        if (result + 2 != a2)
        {
          v22 = 0;
          v23 = result;
          do
          {
            v24 = v21;
            v25 = *v21;
            v26 = *v23;
            v27 = v25 == *v23;
            if (v25 >= *v23)
            {
              v28 = 1;
            }

            else
            {
              v28 = -1;
            }

            if (v27)
            {
              v29 = v23[3];
              v30 = v23[1];
              v31 = v29 == v30;
              if (v29 >= v30)
              {
                v32 = 1;
              }

              else
              {
                v32 = -1;
              }

              if (v31)
              {
                v28 = 0;
              }

              else
              {
                v28 = v32;
              }
            }

            if (v28 < 0)
            {
              v33 = *v24;
              v34 = v24[1];
              v35 = v22;
              while (1)
              {
                v36 = result + v35;
                v37 = *(result + v35 + 4);
                *(v36 + 2) = v26;
                *(v36 + 3) = v37;
                if (!v35)
                {
                  break;
                }

                v26 = *(v36 - 2);
                if (v26 <= v33)
                {
                  v38 = 1;
                }

                else
                {
                  v38 = -1;
                }

                if (v26 == v33)
                {
                  v39 = *(result + v35 - 4);
                  v40 = v39 == v34;
                  v38 = v39 <= v34 ? 1 : -1;
                  if (v40)
                  {
                    v38 = 0;
                  }
                }

                v35 -= 8;
                if ((v38 & 0x80) == 0)
                {
                  v41 = (result + v35 + 8);
                  goto LABEL_48;
                }
              }

              v41 = result;
LABEL_48:
              *v41 = v33;
              v41[1] = v34;
            }

            v21 = v24 + 2;
            v22 += 8;
            v23 = v24;
          }

          while (v24 + 2 != a2);
        }
      }
    }

    else
    {
      v17 = a4;
      v18 = a3 >> 1;
      v19 = &result[2 * (a3 >> 1)];
      v20 = a3 >> 1;
      if (a3 <= a5)
      {
        sub_299355AD0(result, v19, v20, a4);
        v42 = &v17[2 * v18];
        result = sub_299355AD0(&v6[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), v42);
        v43 = &v17[2 * a3];
        v44 = v42;
        while (v44 != v43)
        {
          v45 = *v44;
          if (*v44 >= *v17)
          {
            v46 = 1;
          }

          else
          {
            v46 = -1;
          }

          if (v45 == *v17)
          {
            v47 = v44[1];
            v48 = v17[1];
            v49 = v47 == v48;
            v46 = v47 >= v48 ? 1 : -1;
            if (v49)
            {
              v46 = 0;
            }
          }

          if (v46 < 0)
          {
            v50 = v44;
          }

          else
          {
            v45 = *v17;
            v50 = v17;
          }

          if (v46 < 0)
          {
            v44 += 2;
          }

          else
          {
            v17 += 2;
          }

          *v6 = v45;
          v6[1] = v50[1];
          v6 += 2;
          if (v17 == v42)
          {
            if (v44 != v43)
            {
              v51 = 0;
              do
              {
                v52 = &v44[v51];
                v53 = &v6[v51];
                *v53 = v44[v51];
                v53[1] = v44[v51 + 1];
                v51 += 2;
              }

              while (v52 + 2 != v43);
            }

            return result;
          }
        }

        if (v17 != v42)
        {
          v54 = 0;
          do
          {
            v55 = &v17[v54];
            v56 = &v6[v54];
            *v56 = v17[v54];
            v56[1] = v17[v54 + 1];
            v54 += 2;
          }

          while (v55 + 2 != v42);
        }
      }

      else
      {
        sub_2993557E4(result, v19, v20, a4, a5);
        sub_2993557E4(&v6[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), v17, a5);

        return sub_299355D3C(v6, &v6[2 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v17, a5);
      }
    }
  }

  return result;
}