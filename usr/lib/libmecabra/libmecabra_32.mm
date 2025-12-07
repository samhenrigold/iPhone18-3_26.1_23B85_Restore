void sub_29939921C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 55);
  if (v4 >= 0)
  {
    v5 = (a2 + 32);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 55);
  }

  else
  {
    v6 = *(a2 + 40);
  }

  if (v6)
  {
    v7 = 0;
    v8 = 2 * v6;
    do
    {
      if (v5[v7 / 2] - 12593 >= 0x33)
      {
        v9 = 2 * v6;
        v10 = v5;
        while (*v10 - 48 < 0xA)
        {
          ++v10;
          v9 -= 2;
          if (!v9)
          {
            goto LABEL_21;
          }
        }

        v11 = 2 * v6;
        v12 = v5;
        while ((*v12 + 10332) <= 0xD45Bu && (*v12 - 12644) < 0xFFCDu)
        {
          ++v12;
          v11 -= 2;
          if (!v11)
          {
            goto LABEL_21;
          }
        }

        v21 = -v6;
        while (1)
        {
          v22 = v5[v8 / 2 - 1];
          v23 = (v22 + 21504) >> 2;
          v24 = (v22 - 48);
          v25 = v23 >= 0xAE9 && v24 >= 0xA;
          if (!v25)
          {
            break;
          }

          v8 -= 2;
          v25 = __CFADD__(v21++, 1);
          if (v25)
          {
            return;
          }
        }

        v6 = -v21;
        v26 = v5;
        while (*v26 - 12593 > 0x32)
        {
          ++v26;
          v8 -= 2;
          if (!v8)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_21;
      }

      v7 += 2;
    }

    while (v8 != v7);
    if ((v6 - 2) >= 4)
    {
      goto LABEL_21;
    }

LABEL_23:
    sub_29939FAF4(v5, v6, __p);
    v14 = *MEMORY[0x29EDB8ED8];
    if ((v29 & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if ((v29 & 0x80u) == 0)
    {
      v16 = v29;
    }

    else
    {
      v16 = __p[1];
    }

    v17 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], v15, v16);
    v27[5] = v17;
    v18 = CFStringCreateWithCharacters(v14, v5, v6);
    v19 = v18;
    v27[4] = v18;
    if (v17)
    {
      if (!v18)
      {
LABEL_34:
        CFRelease(v17);
LABEL_35:
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        return;
      }

      v20 = (*(*a2 + 48))(a2);
      sub_29933219C(v27, v17, v19, v20);
      v27[0] = &unk_2A1F767B8;
      (*(*a1 + 216))(a1, v27);
      sub_2993321FC(v27);
    }

    else if (!v18)
    {
      goto LABEL_35;
    }

    CFRelease(v19);
    if (!v17)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_21:
  v13 = sub_2992FE060();
  v5 = *v13;
  v6 = v13[1];
LABEL_22:
  if (v6)
  {
    goto LABEL_23;
  }
}

void sub_2993994B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_2993321FC(&a10);
  sub_299219AB4(&a14, 0);
  sub_299219AB4(&a15, 0);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const __CFString *sub_299399514(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (!a1[1])
  {
    return 0;
  }

  result = *(a2 + 8);
  if (!result)
  {
    return result;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  Length = CFStringGetLength(result);
  v6 = CFStringGetLength(*(a2 + 16)) - 1;
  if ((Length - 1) > 0x1F || v6 > 0x1F)
  {
    return 0;
  }

  v8 = sub_2993652F8(6u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a2 + 8);
    v10 = *(a2 + 16);
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "[MJL::registerToLearningDictionary] Learning phrase %@ (%@)", &v12, 0x16u);
  }

  (*(*a1 + 208))(a1, a1[1], a2);
  return 1;
}

void sub_299399648(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_2A1461400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461400))
  {
    sub_2991C6CA8(&qword_2A1461408, off_2A145F3B0[0]);
    dword_2A1461420 = 0;
    word_2A1461424 = 1;
    byte_2A1461426 = 0;
    sub_2991C6CA8(qword_2A1461428, off_2A145F3B8);
    *(&dword_2A1461440 + 3) = 0;
    dword_2A1461440 = 0;
    __cxa_atexit(sub_2993999DC, 0, &dword_29918C000);
    __cxa_guard_release(&qword_2A1461400);
  }

  v3 = 0uLL;
  v4 = 0;
  sub_299332338(&v3, &qword_2A1461408, &qword_2A1461448, 2uLL);
  sub_29921EF84(a2);
  *a2 = v3;
  *(a2 + 16) = v4;
  v4 = 0;
  v3 = 0uLL;
  v5 = &v3;
  sub_29921EB1C(&v5);
}

void sub_29939975C(_Unwind_Exception *a1)
{
  if (byte_2A146141F < 0)
  {
    operator delete(qword_2A1461408);
  }

  __cxa_guard_abort(&qword_2A1461400);
  _Unwind_Resume(a1);
}

void sub_2993997B0(void *a1)
{
  sub_29932C230(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_29939982C(void *a1)
{
  sub_2993321FC(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993998D4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F767F0;
  a2[1] = v2;
  return result;
}

uint64_t sub_299399910(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F76860))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29939995C(uint64_t a1)
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

void sub_2993999DC()
{
  v0 = &byte_2A146143F;
  v1 = -64;
  v2 = &byte_2A146143F;
  do
  {
    v3 = *v2;
    v2 -= 32;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 32;
  }

  while (v1);
}

uint64_t sub_299399A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2A1F76880;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 10;
  v5 = *(a4 + 8);
  if (*(v5 + 5) != 1 || (v6 = *(v5 + 40)) == 0)
  {
    v6 = *(v5 + 32);
  }

  v7 = *(v6 + 32) - 1;
  *(a1 + 48) = 0u;
  *(a1 + 40) = v7;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  *(a1 + 104) = 0;
  return a1;
}

void sub_299399AD4(_Unwind_Exception *exception_object)
{
  v4 = v1[9];
  if (v4)
  {
    v1[10] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[7] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299399B00(uint64_t a1)
{
  *a1 = &unk_2A1F76880;
  CFRelease(*(a1 + 96));
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_299399B70(uint64_t a1)
{
  sub_299399B00(a1);

  JUMPOUT(0x29C29BFB0);
}

BOOL sub_299399BA8(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 48;
  v2 = *(a1 + 48);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 48;
  v5 = *(a2 + 48);
  return v4 == *(v6 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

void sub_299399BFC(uint64_t *a1@<X0>, void *a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v7 = a1[2];
  if (v7)
  {
    v35 = objc_msgSend_rawCandidate(v7, a3, a4, a5);
    sub_29931C308(a2, &v35);
  }

  v8 = a1[1];
  if (v8)
  {
    Count = CFArrayGetCount(*(v8 + 32));
    if (Count >= 1)
    {
      v10 = Count + 1;
      while (a1[4] > ((a2[1] - *a2) >> 3))
      {
        v11 = sub_299324314(a1[1], v10 - 2);
        v15 = objc_msgSend_rawCandidate(v11, v12, v13, v14);
        if ((*(*v15 + 72))(v15) == 6 || (*(*v15 + 72))(v15) == 7)
        {
          v22 = 1;
          goto LABEL_15;
        }

        if (v11 && objc_msgSend_rawCandidate(v11, v16, v17, v18))
        {
          v35 = objc_msgSend_rawCandidate(v11, v19, v20, v21);
          sub_29931C308(a2, &v35);
        }

        if (--v10 <= 1)
        {
          break;
        }
      }
    }

    v22 = 0;
LABEL_15:
    v23 = *(a1[1] + 16);
    if (v23)
    {
      v24 = CFArrayGetCount(v23);
      v25 = v24 < 1 ? 1 : v22;
      if ((v25 & 1) == 0)
      {
        v26 = v24 + 1;
        do
        {
          if (a1[4] <= ((a2[1] - *a2) >> 3))
          {
            break;
          }

          v27 = sub_299324228(a1[1], v26 - 2);
          v31 = v27;
          if (v27)
          {
            if (objc_msgSend_rawCandidate(v27, v28, v29, v30))
            {
              v35 = objc_msgSend_rawCandidate(v31, v32, v33, v34);
              sub_29931C308(a2, &v35);
            }
          }

          --v26;
        }

        while (v26 > 1);
      }
    }
  }
}

void sub_299399DB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_299399E74(uint64_t a1)
{
  (*(*a1 + 32))(&v40);
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = v40;
  *(a1 + 72) = v40;
  v4 = v41;
  *(a1 + 80) = v41;
  if (v4 != v3)
  {
    v5 = sub_29939A550(a1);
    if (v5)
    {
      v6 = (*(*v5 + 24))(v5);
      if (v6)
      {
        v7 = v6;
        if (CFStringGetLength(v6))
        {
          Length = CFStringGetLength(v7);
          *(a1 + 105) = CFStringGetCharacterAtIndex(v7, Length - 1) == 32;
        }
      }
    }

    v39 = 0;
    v37 = (*(a1 + 80) - *(a1 + 72)) >> 3;
    if (v37 >= 1)
    {
      v9 = 0;
      v38 = 0;
      v10 = 1;
      while (1)
      {
        (*(*a1 + 40))(a1, v9);
        v11 = *(*(a1 + 72) + 8 * v9);
        if ((*(*v11 + 72))(v11) == 6 || (*(*v11 + 72))(v11) == 7)
        {
          break;
        }

        if (v39 || (*(*v11 + 72))(v11) != 3)
        {
          v16 = (*(*v11 + 32))(v11);
          v17 = sub_29939A5C8(a1, v11);
          if (v17 && CFStringCompare(v16, v17, 0) == kCFCompareEqualTo)
          {
            CFRelease(v17);
            v17 = 0;
          }

          v18 = (*(*v11 + 48))(v11);
          if (v18 - 1 >= 0)
          {
            v19 = v18;
            do
            {
              if (!(*(*a1 + 56))(a1) || (v10 & 1) == 0)
              {
                break;
              }

              v20 = (*(*v11 + 120))(v11, --v19);
              v50 = 0;
              v51 = &v50;
              v52 = 0x2000000000;
              v53 = 1;
              if (v20)
              {
                v21 = v20;
                v22 = *(*(*(a1 + 24) + 88) + 8);
                v23 = (*(*v20 + 24))(v20);
                v25 = v24;
                v26 = CFStringGetLength(v16);
                if ((v23 & 0x8000000000000000) == 0 && v23 + v25 <= v26)
                {
                  v27 = (*(*v21 + 24))(v21);
                  v28 = **(a1 + 24);
                  v40 = MEMORY[0x29EDCA5F8];
                  *&v41 = 0x40000000;
                  *(&v41 + 1) = sub_29939AB64;
                  v42 = &unk_29EF13AE8;
                  v45 = v16;
                  v46 = v27;
                  v47 = &v39;
                  v48 = v38;
                  v49 = v21;
                  v43 = &v50;
                  v44 = a1;
                  sub_299367848(v21, v22, v28, v16, v17, 1, &v40);
                }
              }

              v10 = *(v51 + 24);
              _Block_object_dispose(&v50, 8);
            }

            while (v19 > 0);
          }

          if (v17)
          {
            CFRelease(v17);
          }
        }

        else
        {
          v12 = (*(*v11 + 200))(v11);
          if ((*(*v11 + 48))(v11) == 1)
          {
            v13 = (*(*v11 + 120))(v11, 0);
            v14 = (*(*v11 + 32))(v11);
            if (v12)
            {
              v15 = CFStringCreateWithFormat(0, 0, @"%@%@", v12, v14);
            }

            else
            {
              v15 = CFRetain(v14);
            }

            v29 = v15;
            v30 = *(a1 + 24);
            v31 = *(*(v30 + 11) + 8);
            v32 = *v30;
            v40 = MEMORY[0x29EDCA5F8];
            *&v41 = 0x40000000;
            *(&v41 + 1) = sub_29939AE18;
            v42 = &unk_29EF13B08;
            v43 = a1;
            v44 = v15;
            v45 = v13;
            sub_299367848(v13, v31, v32, v15, 0, 1, &v40);
            CFRelease(v29);
          }

          v33 = (*(*v11 + 200))(v11);
          v38 = v33;
          if (v33)
          {
            v33 = CFStringGetLength(v33);
          }

          v39 = v33;
        }

        (*(*a1 + 48))(a1, v9++);
        if (v9 == v37)
        {
          goto LABEL_39;
        }
      }

      sub_29920D3D8((a1 + 48), *(a1 + 48), byte_29942143C);
      CFArrayInsertValueAtIndex(*(a1 + 96), 0, &stru_2A1F7E6E8);
    }

LABEL_39:
    if (*(a1 + 56) != *(a1 + 48) && (*(*a1 + 56))(a1))
    {
      sub_29920D3D8((a1 + 48), *(a1 + 48), byte_299421440);
      CFArrayInsertValueAtIndex(*(a1 + 96), 0, &stru_2A1F7E6E8);
    }

    v34 = *(a1 + 96);
    Count = CFArrayGetCount(v34);
    if (Count)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v34, Count - 1);
      LOBYTE(Count) = sub_2992364F0(ValueAtIndex);
    }

    *(a1 + 104) = Count;
  }
}

void sub_29939A530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29939A550(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  if (!v3)
  {
    return 0;
  }

  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    return 0;
  }

  v5 = sub_299324228(*(a1 + 8), Count - 1);
  if (!v5)
  {
    return 0;
  }

  v9 = v5;
  if (!objc_msgSend_rawCandidate(v5, v6, v7, v8))
  {
    return 0;
  }

  return objc_msgSend_rawCandidate(v9, v10, v11, v12);
}

CFStringRef sub_29939A5C8(uint64_t a1, const void *a2)
{
  if ((*(*a2 + 72))(a2) != 2)
  {
    v9 = *(*(*(a1 + 24) + 104) + 8);
    v10 = __dynamic_cast(a2, &unk_2A1F64300, &unk_2A1F752F0, 0);
    if (v10)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = v10;
      if ((*(*v10 + 104))(v10) != 64)
      {
        v13 = (*(*v12 + 232))(v12);
        if (v13)
        {
          v14 = v13;
          Length = CFStringGetLength(v13);
          v16 = *MEMORY[0x29EDB8ED8];
          v17 = (*(*a2 + 32))(a2);
          v18 = CFStringGetLength(v17);
          Mutable = CFStringCreateMutable(v16, v18);
          alloc = v16;
          v20 = CFArrayCreateMutable(v16, 0, MEMORY[0x29EDB9000]);
          if (!(*(*v12 + 48))(v12))
          {
            CFRelease(v20);
            return Mutable;
          }

          str = v14;
          theArray = v20;
          CFArrayRemoveAllValues(v20);
          v21 = (*(*v12 + 120))(v12, 0);
          (*(*v21 + 56))(&__p);
          if (v37 != __p)
          {
            v31 = 0;
            v22 = 0;
            v23 = (v37 - __p) >> 1;
            if (v23 <= 1)
            {
              v23 = 1;
            }

            v33 = v23;
            v24 = v23 - 1;
            v25.location = 0;
            do
            {
              v26 = __p;
              v25.length = *(__p + v22);
              v27 = v25.location + v25.length;
              if (v25.location + v25.length > Length)
              {
                while (v24 != v22)
                {
                  v25.length = *(__p + v22 + 1);
                  v27 = v25.location + v25.length;
                  ++v22;
                  if (v25.location + v25.length <= Length)
                  {
                    v31 = 1;
                    goto LABEL_22;
                  }
                }

                v20 = theArray;
                goto LABEL_29;
              }

LABEL_22:
              v28 = CFStringCreateWithSubstring(alloc, str, v25);
              CFArrayAppendValue(theArray, v28);
              CFRelease(v28);
              ++v22;
              v25.location = v27;
            }

            while (v22 != v33);
            v20 = theArray;
            if (v31)
            {
              goto LABEL_33;
            }
          }

          if ((*(*v12 + 552))(v12) != 1 || sub_2992DBF8C(v20))
          {
            v29 = (*(*a2 + 32))(a2);
            v39.location = (*(*v21 + 24))(v21);
            v39.length = v30;
            CFStringCreateWithSubstring(alloc, v29, v39);
            operator new();
          }

LABEL_33:
          v26 = __p;
          if (__p)
          {
LABEL_29:
            v37 = v26;
            operator delete(v26);
          }

          CFRelease(v20);
          CFRelease(Mutable);
        }
      }
    }

    return 0;
  }

  v4 = __dynamic_cast(a2, &unk_2A1F64300, &unk_2A1F67C70, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!(*(*v4 + 208))(v4))
  {
    return 0;
  }

  v6 = *MEMORY[0x29EDB8ED8];
  v7 = (*(*v5 + 208))(v5);

  return CFStringCreateCopy(v6, v7);
}

void sub_29939AB0C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *__p, uint64_t a19)
{
  MEMORY[0x29C29BFB0](v19, 0x1060C40285832E9, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29939AB64(uint64_t a1, uint64_t a2, CFIndex range, uint64_t a4, _BYTE *a5)
{
  v10 = *(a1 + 40);
  v18.location = *(a1 + 56) + a2;
  v18.length = range;
  v11 = CFStringCreateWithSubstring(0, *(a1 + 48), v18);
  v12.length = **(a1 + 64);
  if (v12.length < 1 || v12.length < range)
  {
    v14 = *(v10 + 48);
    v17 = sub_29939ACCC(v10, a4, *(a1 + 80), v11, a2, range);
    sub_29920D218((v10 + 48), v14, &v17);
    CFArrayInsertValueAtIndex(*(v10 + 96), 0, v11);
    if (((*(*v10 + 56))(v10) & 1) == 0)
    {
      *a5 = 1;
    }
  }

  else
  {
    v12.location = 0;
    v15 = CFStringCreateWithSubstring(*MEMORY[0x29EDB8ED8], *(a1 + 72), v12);
    if (CFStringHasSuffix(v15, v11))
    {
      **(a1 + 64) -= range;
    }

    else
    {
      *a5 = 1;
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    CFRelease(v15);
  }

  CFRelease(v11);
}

uint64_t sub_29939ACCC(void *a1, uint64_t a2, uint64_t a3, const __CFString *a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  if (!a2)
  {
    sub_299322050(*(*(a1[3] + 88) + 8), a4, &v7);
  }

  return a2;
}

uint64_t sub_29939AE18(uint64_t a1, CFRange range, uint64_t a3, _BYTE *a4)
{
  length = range.length;
  location = range.location;
  v9 = *(a1 + 32);
  v13.location = range.location;
  v13.length = length;
  v10 = CFStringCreateWithSubstring(*MEMORY[0x29EDB8ED8], *(a1 + 40), v13);
  v12 = sub_29939ACCC(v9, a3, *(a1 + 48), v10, location, length);
  sub_29920D3D8((v9 + 48), *(v9 + 48), &v12);
  CFArrayInsertValueAtIndex(*(v9 + 96), 0, v10);
  CFRelease(v10);
  result = (*(*v9 + 56))(v9);
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

__CFString *sub_29939AF08(uint64_t a1, char a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  if ((*(*a1 + 24))(a1))
  {
    v6 = @"Empty Input Context.";
LABEL_8:
    CFStringAppend(Mutable, v6);
    return Mutable;
  }

  v7 = (*(a1 + 56) - *(a1 + 48)) >> 2;
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 96), i);
      v10 = CFStringCreateWithFormat(v4, 0, @"%@(%d) ", ValueAtIndex, *(*(a1 + 48) + 4 * i));
      CFStringAppend(Mutable, v10);
      CFRelease(v10);
    }

    if (a2)
    {
      v6 = @" EOS";
      goto LABEL_8;
    }
  }

  return Mutable;
}

uint64_t sub_29939B024(uint64_t a1)
{
  *a1 = &unk_2A1F768F0;
  sub_29939B0C0(a1);
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 80);
  sub_29920E060(&v5);
  v5 = (a1 + 56);
  sub_29920E060(&v5);
  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29939B0C0(uint64_t a1)
{
  sub_29920E0B4((a1 + 56));
  sub_29920E0B4((a1 + 80));
  if (*(a1 + 31) < 0)
  {
    **(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 31) = 0;
  }

  *(a1 + 40) = *(a1 + 32);
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2;
      if (*v2)
      {
        if (*(v4 + 79) < 0)
        {
          operator delete(*(v4 + 56));
        }

        MEMORY[0x29C29BFB0](v4, 0x1072C4096C72C6FLL);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(a1 + 104);
  }

  *(a1 + 112) = v2;
}

void sub_29939B180(uint64_t a1)
{
  sub_29939B024(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29939B1B8(uint64_t a1)
{
  result = *(a1 + 31);
  if (result < 0)
  {
    return *(a1 + 16);
  }

  return result;
}

uint64_t sub_29939B228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(*(a1 + 56) + 24 * a2) + 8 * a3);
  result = v3 + 56;
  if (*(v3 + 79) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_29939B25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v5 = (*(*a1 + 48))(a1, a2, a3);
  return sub_29922CC38(a4, v5, v6, &v8);
}

void sub_29939B33C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_29939C908();
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

void sub_29939B410(uint64_t a1, void *a2, unint64_t a3)
{
  sub_29939B0C0(a1);
  sub_29925851C(&__dst, a2, a3);
  v6 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    operator delete(*v6);
  }

  *v6 = __dst;
  *(a1 + 24) = v16;
  v7 = *(a1 + 31);
  if (v7 < 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
  }

  v8 = v6 + 2 * v7;
  v14 = v8;
  *&__dst = v6;
  if (v7 >= 1)
  {
    do
    {
      sub_29939B5A4(a1 + 32, &__dst);
      v6 = (v6 + 2);
      *&__dst = v6;
    }

    while (v6 < v8);
  }

  sub_29939B5A4(a1 + 32, &v14);
  v9 = (*(*a1 + 24))(a1);
  v10 = v9;
  v11 = ((v9 << 32) + 0x100000000) >> 32;
  sub_29939B6A4((a1 + 56), v11);
  sub_29939B6A4((a1 + 80), v11);
  if ((v10 & 0x80000000) == 0)
  {
    v12 = 0;
    v13 = (v10 + 1);
    do
    {
      sub_29939B844((*(a1 + 56) + v12));
      sub_29939B844((*(a1 + 80) + v12));
      v12 += 24;
      --v13;
    }

    while (v13);
  }

  sub_29939B2C8(a1);
}

void sub_29939B5A4(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_29939C908();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_29919600C();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_29939B6A4(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = &v3[24 * a2];
      if (v4 != v11)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v4 - 2) = v13;
            operator delete(v13);
          }

          v4 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        sub_2992FD2C4(v10);
      }

      sub_29939C908();
    }

    v15 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(a1[1], v15);
    a1[1] = &v4[v15];
  }
}

void sub_29939B844(void *a1)
{
  if (a1[2] - *a1 <= 0x7FuLL)
  {
    operator new();
  }
}

void sub_29939B9EC(unint64_t *a1, void *a2)
{
  v4 = (*(*a2 + 24))(a2);
  v5 = a2[7];
  if (v4 < 0)
  {
LABEL_16:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v21 = *(v5 + 24 * v4);
    while (1)
    {
      v29 = *(*v21 + 40);
      if (!*(v29 + 40))
      {
        break;
      }

      v21 = &v29;
      sub_29939B33C(a1, &v29);
    }

    v22 = *a1;
    v23 = a1[1];
    v24 = (v23 - 8);
    if (*a1 != v23 && v24 > v22)
    {
      v26 = v22 + 8;
      do
      {
        v27 = *(v26 - 8);
        *(v26 - 8) = *v24;
        *v24-- = v27;
        v28 = v26 >= v24;
        v26 += 8;
      }

      while (!v28);
    }
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = (v5 + 24 * v6);
      v8 = *v7;
      v9 = v7[1];
      if (v8 != v9)
      {
        break;
      }

LABEL_15:
      if (++v6 == v4 + 1)
      {
        goto LABEL_16;
      }
    }

    v10 = (a2[10] + 24 * v6);
    v11 = *v10;
    v12 = v10[1];
    while (1)
    {
      v13 = *v8;
      *(*v8 + 40) = 0;
      if (v11 == v12)
      {
        break;
      }

      v14 = 0;
      v15 = 0.0;
      v16 = v11;
      do
      {
        v18 = *v16++;
        v17 = v18;
        v19 = *(v13 + 24) + *(v18 + 32);
        if (v19 > v15 || v14 == 0)
        {
          v14 = v17;
          v15 = v19;
        }
      }

      while (v16 != v12);
      if (!v14)
      {
        break;
      }

      *(v13 + 40) = v14;
      *(v13 + 32) = v15;
      if (++v8 == v9)
      {
        goto LABEL_15;
      }
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_29939BB58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29939BB74(unint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a2)
  {
    if (a2 < 0x333333333333334)
    {
      v7 = a4;
      sub_29939CB40(a2);
    }

    sub_29939C908();
  }

  v4 = sub_2993652F8(5u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "nbest_size >= 1. Returns empty result.", v6, 2u);
  }

  memset(v5, 0, sizeof(v5));
  *v6 = v5;
  sub_29920E060(v6);
}

void sub_29939C7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_29939C9D8(&a27);
  sub_29920E060(&__p);
  v34 = *(v32 - 160);
  if (v34)
  {
    *(v32 - 152) = v34;
    operator delete(v34);
  }

  *(v32 - 160) = a10;
  sub_29922C548((v32 - 160));
  _Unwind_Resume(a1);
}

uint64_t *sub_29939C920(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_29939C99C(result, a4);
  }

  return result;
}

void sub_29939C980(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29939C99C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_29920B86C(a1, a2);
  }

  sub_29939C908();
}

uint64_t sub_29939C9D8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 8);
    v3 = **(a1 + 16);
    if (v3 != v2)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 = v4;
      }

      while (v4 != v2);
    }
  }

  return a1;
}

void sub_29939CA40(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_29939C908();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_29919600C();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_29939CB40(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  sub_29919600C();
}

void sub_29939CB98(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 16);
      *a3 = v6;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *v5 = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 24) = *(v5 + 24);
      *(a3 + 40) = *(v5 + 40);
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      *(v5 + 40) = 0;
      *(a3 + 48) = 0;
      *(a3 + 56) = 0;
      *(a3 + 64) = 0;
      *(a3 + 48) = *(v5 + 48);
      *(a3 + 64) = *(v5 + 64);
      *(v5 + 48) = 0;
      *(v5 + 56) = 0;
      *(v5 + 64) = 0;
      v7 = *(v5 + 72);
      *(a3 + 76) = *(v5 + 76);
      *(a3 + 72) = v7;
      v5 += 80;
      a3 += 80;
    }

    while (v5 != a2);
    do
    {
      sub_29939CC58(v4);
      v4 += 80;
    }

    while (v4 != a2);
  }
}

void sub_29939CC58(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  if (*(a1 + 23) < 0)
  {
    v4 = *a1;

    operator delete(v4);
  }
}

uint64_t sub_29939CCC0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_29939CC58(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t sub_29939CD10(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, int *a5, __int16 *a6)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v7 = v6 + 1;
  if (v6 + 1 > 0x333333333333333)
  {
    sub_29939C908();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v7)
  {
    v7 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v9 = 0x333333333333333;
  }

  else
  {
    v9 = v7;
  }

  v19[4] = a1;
  if (v9)
  {
    sub_29939CB40(v9);
  }

  v10 = 80 * v6;
  v11 = *a5;
  v12 = *a6;
  v13 = *a2;
  *(v10 + 16) = *(a2 + 2);
  *v10 = v13;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 24) = *a3;
  *(v10 + 40) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 48) = *a4;
  *(v10 + 64) = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(v10 + 72) = v11;
  *(v10 + 76) = v12;
  v14 = a1[1];
  v15 = 80 * v6 + *a1 - v14;
  sub_29939CB98(*a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  a1[1] = 80 * v6 + 80;
  v17 = a1[2];
  a1[2] = 0;
  v19[2] = v16;
  v19[3] = v17;
  v19[0] = v16;
  v19[1] = v16;
  sub_29939CCC0(v19);
  return 80 * v6 + 80;
}

uint64_t sub_29939CE84(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = (result + 8 * v3);
    v5 = *v4;
    v8 = *(a2 - 8);
    v6 = (a2 - 8);
    v7 = v8;
    v9 = *(v8 + 16);
    if (*(*v4 + 16) < v9)
    {
      do
      {
        v10 = v4;
        *v6 = v5;
        if (!v3)
        {
          break;
        }

        v3 = (v3 - 1) >> 1;
        v4 = (result + 8 * v3);
        v5 = *v4;
        v6 = v10;
      }

      while (*(*v4 + 16) < v9);
      *v10 = v7;
    }
  }

  return result;
}

uint64_t sub_29939CEE0(uint64_t a1)
{
  sub_299397DD0(a1);
  v2 = *(a1 + 344);
  *(a1 + 344) = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  return sub_299213950(a1);
}

void sub_29939D358(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  MEMORY[0x29C29BFB0](v25, 0x10A1C40079592F6, a3, a4, a5, a6, a7, a8);
  sub_299242174(&a23);
  v27 = *(v23 + 344);
  *(v23 + 344) = 0;
  if (v27)
  {
    (*(*v27 + 72))(v27);
  }

  sub_299213950(v23);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C29BFB0](v23, v24);
  _Unwind_Resume(a1);
}

void sub_29939D41C(const __CFURL *a1@<X0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x29EDCA608];
  cf = 0;
  if (a1)
  {
    if (CFURLResourceIsReachable(a1, &cf))
    {
      if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
      {
        strlen(buffer);
        sub_29939CF4C();
      }
    }

    else if (cf)
    {
      CFRelease(cf);
    }
  }

  *a2 = 0;
}

uint64_t sub_29939D4E0(uint64_t a1, uint64_t *a2)
{
  v3 = a1 + 24;
  result = *(a1 + 24);
  *a2 = (*(v3 + 8) - result) >> 2;
  return result;
}

__CFString *sub_29939D4F4(_DWORD *a1, uint64_t a2, int a3)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v7 = Mutable;
  v8 = a1[2];
  if (v8 == 2)
  {
    v9 = @"<EOS>";
  }

  else
  {
    if (v8 != 1)
    {
      v10 = (*(*a1 + 56))(a1);
      v11 = CFStringCreateWithCharacters(0, *v10, *(v10 + 8));
      sub_29922E740(a2, v11);
    }

    v9 = @"<BOS>";
  }

  CFStringAppend(Mutable, v9);
  CFStringAppendFormat(v7, 0, @"(%p)", a1);
  if (a3)
  {
    v16 = 0;
    v12 = (*(*a1 + 32))(a1, &v16);
    if (v16)
    {
      v13 = v12;
      for (i = 0; i < v16; ++i)
      {
        CFStringAppendFormat(v7, 0, @"(%d)", *(v13 + 4 * i));
      }
    }
  }

  return v7;
}

double sub_29939D674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == *(a1 + 24))
  {
    return -1.79769313e308;
  }

  __p = 0;
  __dst = 0;
  v10 = 0;
  sub_29920DED0(&__p, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  v5 = __dst;
  if (__dst == __p)
  {
    sub_2992141C0(&__p, &dword_29942148C);
    v5 = __dst;
  }

  sub_2992EDEE0(&__p, v5, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  sub_2992141C0(&__p, dword_299421490);
  v6 = (*(*a2 + 48))(a2);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_29939D76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29939D78C(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v9 = (*(*a1 + 56))(a1, a2, a3, a4);
  v10 = a1[2];
  v11 = *v10;
  v53 = a1;
  if (*v10)
  {
    sub_299397638(v11, &v93);
    v12 = v11[1];
    if (v12)
    {
      v13 = 0;
      v14 = (v11[4] + 3);
      do
      {
        sub_29922E664(&v90, (v93 + v13));
        LOWORD(v79[0]) = *(v14 - 1) + *(v14 - 3);
        sub_29922E664(&v87, v79);
        sub_29922E664(&v84, v79);
        v15 = *v14;
        if (v15)
        {
          v16 = 2;
        }

        else
        {
          v16 = (v15 >> 1) & 1;
        }

        LODWORD(v80[0]) = v16;
        sub_2992141C0(&v81, v80);
        v14 += 4;
        v13 += 2;
        --v12;
      }

      while (v12);
    }

    if (v93)
    {
      v94 = v93;
      operator delete(v93);
    }

    v17 = a5;
  }

  else
  {
    if (*a2 == 5 && *(a1 + 2) == 8)
    {
      sub_299276E1C(*(v10 + 8));
    }

    v18 = (*(*a1 + 64))(a1);
    v17 = a5;
    v19 = *(v18 + 8);
    if (v19)
    {
      v20 = *v18;
      do
      {
        v22 = *v20++;
        v21 = v22;
        if (v22 <= 0x30)
        {
          v21 = 48;
        }

        v23 = v21 - 48;
        LOWORD(v93) = v21 - 48;
        sub_29922E664(&v87, &v93);
        LOWORD(v93) = v23;
        sub_29922E664(&v84, &v93);
        LOWORD(v93) = v23;
        sub_29922E664(&v90, &v93);
        LODWORD(v93) = 0;
        sub_2992141C0(&v81, &v93);
        --v19;
      }

      while (v19);
    }

    else
    {
      LOWORD(v93) = *(v53[2] + 16);
      v24 = v93;
      sub_29922E664(&v87, &v93);
      LOWORD(v93) = v24;
      sub_29922E664(&v84, &v93);
      LOWORD(v93) = v24;
      sub_29922E664(&v90, &v93);
      LODWORD(v93) = 0;
      sub_2992141C0(&v81, &v93);
    }
  }

  if (((*(*v53 + 88))(v53) & 1) == 0)
  {
LABEL_82:
    (*(a6 + 16))(a6, *v17, *(v9 + 8), &v87, &v84, &v90, &v81);
    goto LABEL_83;
  }

  v51 = v9;
  v25 = (*(*v53 + 72))(v53);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = v25[1];
  v54 = *v25;
  memset(v80, 0, sizeof(v80));
  memset(v79, 0, sizeof(v79));
  memset(v78, 0, sizeof(v78));
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v55 = *(v53[2] + 8);
  do
  {
    v30 = v28;
    if (v28 == v29)
    {
      break;
    }

    v31 = *(v54 + 2 * v28);
    v32 = v31 - 48;
    v33 = (v31 - 48) & ~((v31 - 48) >> 63);
    *&v67 = v26;
    *(&v67 + 1) = v33;
    sub_29939406C(&v72, &v67);
    if (v31 < 0x32 || v55 == 0)
    {
      v32 = (v31 - 48) & ~((v31 - 48) >> 63);
    }

    else if (v27 < (v91 - v90) >> 1 && v33 == v90[v27])
    {
      sub_299276A84(v55);
    }

    *&v66 = v27;
    *(&v66 + 1) = v32;
    sub_29939406C(&v69, &v66);
    sub_29939E30C(&__s1, v90, v91, v66, *(&v66 + 1));
    sub_29939E30C(&v62, v87, v88, v66, *(&v66 + 1));
    v60 = 0;
    v61 = 0;
    v59 = 0;
    if ((v66 & 0x8000000000000000) == 0 && ((v82 - v81) >> 2) >= *(&v66 + 1) + v66 && *(&v66 + 1))
    {
      if (!(*(&v66 + 1) >> 62))
      {
        sub_2992F8674(&v59, *(&v66 + 1));
      }

      sub_299212A8C();
    }

    __p = 0;
    v57 = 0;
    v58 = 0;
    sub_299223494(&__p, v62, v63, (v63 - v62) >> 1);
    v35 = 0;
    v36 = __p;
    if (v62 != v63 && __p != v57)
    {
      if (__s1 != v65 && v59 != v60)
      {
        sub_299335284(v78, &__p);
        sub_299335284(v79, &v62);
        sub_299335284(v80, &__s1);
        v37 = v76;
        if (v76 >= v77)
        {
          v39 = 0xAAAAAAAAAAAAAAABLL * ((v76 - v75) >> 3);
          v40 = v39 + 1;
          if (v39 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_299212A8C();
          }

          if (0x5555555555555556 * ((v77 - v75) >> 3) > v40)
          {
            v40 = 0x5555555555555556 * ((v77 - v75) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v77 - v75) >> 3) >= 0x555555555555555)
          {
            v41 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v41 = v40;
          }

          v97 = &v75;
          if (v41)
          {
            if (v41 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_29919600C();
          }

          v42 = (8 * ((v76 - v75) >> 3));
          v93 = 0;
          v94 = v42;
          v95 = v42;
          v96 = 0;
          v42[1] = 0;
          v42[2] = 0;
          *v42 = 0;
          sub_2992F85F8((24 * v39), v59, v60, (v60 - v59) >> 2);
          v38 = (v95 + 3);
          v43 = v94 - (v76 - v75);
          memcpy(v43, v75, v76 - v75);
          v44 = v75;
          v45 = v77;
          v75 = v43;
          v76 = v38;
          v77 = v96;
          v95 = v44;
          v96 = v45;
          v93 = v44;
          v94 = v44;
          sub_2992FD31C(&v93);
        }

        else
        {
          *v76 = 0;
          v37[1] = 0;
          v37[2] = 0;
          sub_2992F85F8(v37, v59, v60, (v60 - v59) >> 2);
          v38 = v37 + 3;
        }

        v76 = v38;
        v26 += v33;
        v27 += v32;
        v35 = 1;
        v36 = __p;
        if (!__p)
        {
          goto LABEL_47;
        }

LABEL_46:
        v57 = v36;
        operator delete(v36);
        goto LABEL_47;
      }

      v35 = 0;
    }

    if (__p)
    {
      goto LABEL_46;
    }

LABEL_47:
    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    if (v62)
    {
      v63 = v62;
      operator delete(v62);
    }

    if (__s1)
    {
      v65 = __s1;
      operator delete(__s1);
    }

    v28 = v30 + 1;
  }

  while ((v35 & 1) != 0);
  v17 = a5;
  v46 = *((*(*v53 + 56))(v53) + 8);
  v48 = v30 == v29 && v26 == v46;
  if (v29 && v48)
  {
    v49 = 0;
    v50 = 0;
    do
    {
      (*(a6 + 16))(a6, *(v72 + v49) + *a5, *(v72 + v49 + 8), v79[0] + v50, v78[0] + v50, v80[0] + v50, &v75[v50]);
      v50 += 24;
      v49 += 16;
      --v29;
    }

    while (v29);
  }

  v9 = v51;
  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  v93 = &v75;
  sub_2992FD380(&v93);
  v93 = v78;
  sub_29920E060(&v93);
  v93 = v79;
  sub_29920E060(&v93);
  v93 = v80;
  sub_29920E060(&v93);
  if (!v48)
  {
    goto LABEL_82;
  }

LABEL_83:
  *v17 += *(v9 + 8);
  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }
}

void sub_29939E104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  if (*(v45 - 225) < 0)
  {
    operator delete(*(v45 - 248));
  }

  v47 = *(v45 - 224);
  if (v47)
  {
    *(v45 - 216) = v47;
    operator delete(v47);
  }

  v48 = *(v45 - 200);
  if (v48)
  {
    *(v45 - 192) = v48;
    operator delete(v48);
  }

  v49 = *(v45 - 176);
  if (v49)
  {
    *(v45 - 168) = v49;
    operator delete(v49);
  }

  v50 = *(v45 - 152);
  if (v50)
  {
    *(v45 - 144) = v50;
    operator delete(v50);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29939E30C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if ((a4 & 0x8000000000000000) == 0 && (a3 - a2) >> 1 >= (a4 + a5) && a5)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      sub_2991A6584(result, a5);
    }

    sub_299212A8C();
  }

  return result;
}

void sub_29939E3A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29939E3C4(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, char a7, int a8)
{
  *(a1 + 8) = a8;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  v15 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *a1 = &unk_2A1F769E8;
  *(a1 + 56) = sub_2993B2928(a4, a3);
  *(a1 + 64) = v16;
  *(a1 + 72) = (*(*a4 + 24))(a4, a3, 1);
  *(a1 + 80) = v17;
  *(a1 + 88) = a7;
  v18 = (*(*a1 + 88))(a1) ^ 1;
  if (a8 == 6)
  {
    LOBYTE(v18) = 1;
  }

  if ((v18 & 1) == 0 && !**(a1 + 48))
  {
    sub_299371890(a6, (a1 + 56), (a1 + 72), v15, a5, 0);
  }

  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  v21 = v20 - v19;
  if (v20 == v19)
  {
    v22 = *(a1 + 40);
    if (v20 >= v22)
    {
      v23 = v22 - v19;
      v24 = v23 >> 1;
      if (v23 >> 1 <= ((v21 >> 2) + 1))
      {
        v24 = (v21 >> 2) + 1;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v25 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      sub_2992F86B0(v15, v25);
    }

    *v20 = **(a1 + 48);
    *(a1 + 32) = v20 + 4;
  }

  return a1;
}

void sub_29939E584(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2A1F76968;
  v3 = v1[3];
  if (v3)
  {
    v1[4] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29939E5D0(uint64_t a1)
{
  if ((*(*a1 + 88))(a1))
  {
    return (a1 + 72);
  }

  return sub_2992FE060();
}

uint64_t sub_29939E638(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  *sub_29939E3C4(a1, a2, a3, a4, a5, a6, 1, 6) = &unk_2A1F76AE8;
  *(a1 + 96) = (*(*a4 + 16))(a4, a3, a7);
  *(a1 + 104) = v11;
  return a1;
}

void sub_29939E6CC(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2A1F76968;
  v3 = v1[3];
  if (v3)
  {
    v1[4] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29939E704(uint64_t a1, int a2)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = &unk_2A1F76B68;
  v3 = (a1 + 24);
  if (a2 == 1)
  {
    v4 = &dword_29942148C;
  }

  else
  {
    v4 = dword_299421490;
  }

  sub_2992141C0(v3, v4);
  return a1;
}

void sub_29939E76C(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2A1F76968;
  v3 = v1[3];
  if (v3)
  {
    v1[4] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_29939E7A4(uint64_t a1, char **a2)
{
  result = (a1 + 24);
  if (result != a2)
  {
    return sub_2992EE0E0(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return result;
}

uint64_t sub_29939E7C8(uint64_t a1, int a2, _OWORD *a3, int a4, uint64_t a5)
{
  v9 = a4;
  *(a1 + 8) = a2;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  v6 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_2A1F76BE8;
  if (a5)
  {
    v7 = *(a5 + 16) + 48;
  }

  else
  {
    v7 = 48;
  }

  *(a1 + 48) = v7;
  *(a1 + 56) = *a3;
  *(a1 + 72) = a1 + 48;
  *(a1 + 80) = 1;
  sub_2992141C0(v6, &v9);
  return a1;
}

void sub_29939E87C(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29939E89C(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, uint64_t a4, uint64_t *a5, int a6, uint64_t *a7, int a8)
{
  *(a1 + 8) = a8;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  v13 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *a1 = &unk_2A1F76C68;
  *(a1 + 56) = 0u;
  v14 = (a1 + 56);
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = a6;
  v15 = *a2;
  *(a1 + 140) = *(a2 + 2);
  *(a1 + 132) = v15;
  while (*a3)
  {
    v16 = (a3 + 1);
    sub_29922E664(v14, a3);
    a3 = v16;
  }

  v29 = 0;
  sub_29922E664(v14, &v29);
  v17 = *v14;
  if (*v14)
  {
    v18 = *v17;
    v19 = *v14;
    v20 = *v14;
    if (*v17)
    {
      v21 = v17 + 1;
      v20 = *v14;
      do
      {
        if (v18 == 44)
        {
          v20 = v21;
        }

        v22 = *v21++;
        v18 = v22;
      }

      while (v22);
      v19 = v21 - 1;
    }

    v23 = (v19 - v20) >> 1;
    if (!v20)
    {
      v23 = 0;
    }
  }

  else
  {
    v24 = sub_2992FE060();
    v20 = *v24;
    v23 = v24[1];
    v17 = *v14;
  }

  *(a1 + 80) = v20;
  *(a1 + 88) = v23;
  *(a1 + 112) = (*(*a4 + 16))(a4, v17, *(a1 + 128));
  *(a1 + 120) = v25;
  *(a1 + 96) = (*(*a4 + 24))(a4, *(a1 + 56), 0);
  *(a1 + 104) = v26;
  v28 = *a2;
  if (!v28)
  {
    sub_299371890(a7, (a1 + 80), (a1 + 96), v13, a5, 1);
  }

  if (*(a1 + 32) == *(a1 + 24))
  {
    sub_2992141C0(v13, &v28);
  }

  return a1;
}

void sub_29939EA80(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    v1[8] = v4;
    operator delete(v4);
  }

  *v1 = &unk_2A1F76968;
  v5 = v1[3];
  if (v5)
  {
    v1[4] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29939EAFC(uint64_t a1)
{
  if (*(a1 + 104) && (v1 = **(a1 + 96), v1 != 42))
  {
    return *(a1 + 88) != v1 - 48;
  }

  else
  {
    return 0;
  }
}

void *sub_29939EB60(void *a1)
{
  *a1 = &unk_2A1F76968;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29939EBB0(void *a1)
{
  *a1 = &unk_2A1F76968;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

BOOL sub_29939EC44(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 48);
  if (a2)
  {
    v3 = *(v2 + 4);
    if ((v3 & 0x80) != 0)
    {
      return 0;
    }

    if ((a2 & 2) != 0)
    {
      return (v3 & 0x400) == 0;
    }

    else
    {
      if ((a2 & 8) != 0)
      {
        return (~v3 & 0x300) != 0;
      }

      if ((a2 & 4) == 0)
      {
        return 1;
      }

      return (v3 & 0x200) == 0;
    }
  }

  else
  {
    if ((a2 & 2) == 0)
    {
      if ((a2 & 8) != 0)
      {
        LODWORD(v2) = *(v2 + 4);
        if ((~v2 & 0x210) == 0)
        {
          return ((v2 & 0x8000u) != 0) & (a2 >> 5);
        }
      }

      else if ((a2 & 4) != 0)
      {
        LOWORD(v2) = *(v2 + 4);
        if ((v2 & 0x20) != 0)
        {
          return ((v2 & 0x8000u) != 0) & (a2 >> 5);
        }
      }

      return 1;
    }

    v5 = *(v2 + 4);
    if ((a2 & 0x10) != 0)
    {
      return (v5 & 0x2000) == 0;
    }

    else
    {
      return (v5 & 0x40) == 0;
    }
  }
}

void *sub_29939ED00(void *a1)
{
  *a1 = &unk_2A1F76968;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29939ED50(void *a1)
{
  *a1 = &unk_2A1F76968;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

void *sub_29939EDD4(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  *a1 = &unk_2A1F76968;
  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_29939EE34(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  *a1 = &unk_2A1F76968;
  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x29C29BFB0);
}

void *sub_29939EEC4(void *a1)
{
  *a1 = &unk_2A1F76968;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29939EF14(void *a1)
{
  *a1 = &unk_2A1F76968;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

void *sub_29939EF8C(void *a1)
{
  *a1 = &unk_2A1F76968;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29939EFDC(void *a1)
{
  *a1 = &unk_2A1F76968;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

void *sub_29939F068(void *a1)
{
  *a1 = &unk_2A1F76968;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29939F0B8(void *a1)
{
  *a1 = &unk_2A1F76968;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

BOOL sub_29939F148(int a1)
{
  v1 = 26;
  v2 = &word_29945D9AE;
  while (*v2 != a1)
  {
    ++v2;
    v1 -= 2;
    if (!v1)
    {
      v2 = &unk_29945D9C8;
      break;
    }
  }

  v3 = v2 != &unk_29945D9C8;
  if (v2 == &unk_29945D9C8)
  {
    v2 = 0;
  }

  return v2 - &word_29945D9AE != -2 && v3;
}

uint64_t sub_29939F19C(int a1)
{
  v1 = 0;
  v2 = "2181C1F1I1";
  while (*v2 != a1)
  {
    v1 -= 2;
    v2 += 2;
    if (v1 == -10)
    {
      goto LABEL_7;
    }
  }

  if (-v1 != -2)
  {
    return 1;
  }

LABEL_7:
  if (a1 == 12626)
  {
    v4 = "R1V1";
    goto LABEL_11;
  }

  if (a1 == 12630)
  {
    v4 = "V1";
LABEL_11:
    v5 = 1;
    goto LABEL_13;
  }

  v5 = 0;
  v4 = 0;
LABEL_13:
  if (v4 - "R1V1" == -2)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_29939F248(unsigned __int16 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = &a1[a2];
  do
  {
    v3 = 0;
    for (i = "112141718191A1B1C1E1F1G1H1I1J1K1L1M1N1"; *i != *a1; i += 2)
    {
      v3 -= 2;
      if (v3 == -38)
      {
        return 0;
      }
    }

    v5 = &a112141718191a1[-v3];
    v6 = v3 == -38;
    LODWORD(v3) = v3 != -38;
    if (v6)
    {
      v5 = 0;
    }

    if (v5 - "112141718191A1B1C1E1F1G1H1I1J1K1L1M1N1" == -2)
    {
      v3 = 0;
    }

    else
    {
      v3 = v3;
    }

    ++a1;
    v6 = v3 != 1 || a1 == v2;
  }

  while (!v6);
  return v3;
}

uint64_t sub_29939F2C8(unsigned __int16 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = &a1[a2];
  do
  {
    v3 = 0;
    {
      v3 -= 2;
      if (v3 == -18)
      {
        return 0;
      }
    }

    v5 = &aO1q1s1u1w1111a[-v3];
    v6 = v3 == -18;
    LODWORD(v3) = v3 != -18;
    if (v6)
    {
      v5 = 0;
    }

    {
      v3 = 0;
    }

    else
    {
      v3 = v3;
    }

    ++a1;
    v6 = v3 != 1 || a1 == v2;
  }

  while (!v6);
  return v3;
}

uint64_t sub_29939F348(unsigned __int16 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = 2 * a2;
  while (1)
  {
    v3 = *a1;
    if (((v3 + 21504) >> 2) < 0xAE9u || ((v3 & 0xFFDF) - 65) < 0x1Au)
    {
      goto LABEL_12;
    }

    if (v3 != 39)
    {
      break;
    }

    v4 = L"'-";
LABEL_9:
    if (v4 - L"'-" == -2)
    {
      return 0;
    }

LABEL_12:
    ++a1;
    v2 -= 2;
    if (!v2)
    {
      return 1;
    }
  }

  if (v3 == 45)
  {
    v4 = L"-";
    goto LABEL_9;
  }

  if ((v3 - 48) <= 9)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_29939F3E0(_DWORD *a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = off_29EF13B28[v2];
    if (v3)
    {
      if (*v3 == *a1)
      {
        break;
      }
    }

    if (++v2 == 11)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_29939F428(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_29939F510(a1, a2);
  if (v4 != a2)
  {
    return 0;
  }

  v5 = *(a1 + 2 * a2 - 2);
  if (v5 == 12619)
  {
    v6 = "K1N1";
  }

  else
  {
    if (v5 != 12622)
    {
LABEL_9:
      v8 = 18;
      while (*v9 != v5)
      {
        v9 += 2;
        v8 -= 2;
        if (!v8)
        {
          v9 = "";
          break;
        }
      }

      if (v9 == "")
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }

      {
        return a2 < 6;
      }

      return 0;
    }

    v6 = "N1";
  }

  if (v6 - "K1N1" == -2)
  {
    goto LABEL_9;
  }

  return a2 < 6;
}

uint64_t sub_29939F510(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return *sub_2992FE060();
  }

  v2 = 0;
  v3 = a1 + 2 * a2;
  v4 = *(v3 - 2);
  {
    v2 -= 2;
    if (v2 == -18)
    {
      return *sub_2992FE060();
    }
  }

  if (-v2 == -2)
  {
    return *sub_2992FE060();
  }

  if (a2 - 2 < 0)
  {
    v7 = 1;
  }

  else
  {
    v6 = (v3 - 4);
    v7 = 1;
    while (1)
    {
      v8 = *v6--;
      if (v8 != v4)
      {
        break;
      }

      if (a2 == ++v7)
      {
        v7 = a2;
        return a1 + 2 * (a2 - v7);
      }
    }
  }

  return a1 + 2 * (a2 - v7);
}

BOOL sub_29939F5D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = a3 + 2;
    v8 = (a3 + 2 * a4);
    v9 = 2 * a4 - 2;
    while (1)
    {
      v10 = *(a1 + 2 * v5);
      if (v10 == 39)
      {
        v11 = L"'-";
      }

      else
      {
        if (v10 != 45)
        {
          goto LABEL_15;
        }

        v11 = L"-";
      }

      if (v11 - L"'-" != -2)
      {
        v12 = (v7 + 2 * v6);
        if (v12 == v8)
        {
          return v4;
        }

        v13 = v9 - 2 * v6;
        v14 = 2 * v6 + 2;
        while (*v12 != v10)
        {
          ++v12;
          v14 += 2;
          v13 -= 2;
          if (!v13)
          {
            return v4;
          }
        }

        if (!v13)
        {
          return v4;
        }

        v6 = v14 >> 1;
        if (v6 > v5)
        {
          return v4;
        }
      }

LABEL_15:
      v4 = ++v5 >= a2;
      if (v5 == a2)
      {
        return v4;
      }
    }
  }

  return 1;
}

void sub_29939F698(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 - 12623) > 0x14)
  {
    if ((a1 + 10332) > 0xD45Bu)
    {
      v3 = a1 + 21504;
      v4 = (a1 + 21504) / 0x24Cu;
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      sub_2992174C4(a2, *&a112141718191a1[2 * v4]);
      v5 = v3 - 588 * v4;
      sub_29939F8DC(&__p, *&aO1p1q1r1s1t1u1[2 * (v5 / 0x1Cu)]);
      if (v17 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v17 >= 0)
      {
        v7 = v17;
      }

      else
      {
        v7 = v16;
      }

      sub_29922C614(a2, p_p, v7);
      v8 = v5 % 0x1Cu;
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v8)
      {
        v9 = 0;
        v10 = *&a11213141516171[2 * v8 - 2];
        v11 = "315161:1;1<1=1>1?1@1D1";
        while (*v11 != v10)
        {
          v9 -= 2;
          v11 += 2;
          if (v9 == -22)
          {
            goto LABEL_22;
          }
        }

        if (-v9 != -2)
        {
          sub_299217DF0(&__p, off_29EF13B28[v9 / 0xFFFFFFFFFFFFFFFELL]);
          v12 = v17;
          v10 = v16;
          goto LABEL_23;
        }

LABEL_22:
        v12 = 1;
        v17 = 1;
        LODWORD(__p) = v10;
LABEL_23:
        if ((v12 & 0x80u) == 0)
        {
          v13 = &__p;
        }

        else
        {
          v13 = __p;
        }

        if ((v12 & 0x80u) == 0)
        {
          v14 = v12;
        }

        else
        {
          v14 = v10;
        }

        sub_29922C614(a2, v13, v14);
        if (v17 < 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      *(a2 + 23) = 1;
      *a2 = a1;
    }
  }

  else
  {

    sub_29939F8DC(a2, a1);
  }
}

void sub_29939F89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29939F8DC(_BYTE *result, int a2)
{
  v2 = 0;
  v3 = "X1Y1Z1]1^1_1b1";
  while (*v3 != a2)
  {
    v2 -= 2;
    v3 += 2;
    if (v2 == -14)
    {
      goto LABEL_7;
    }
  }

  if (-v2 != -2)
  {
    return sub_299217DF0(result, off_29EF13B80[v2 / 0xFFFFFFFFFFFFFFFELL]);
  }

LABEL_7:
  result[23] = 1;
  *result = a2;
  *(result + 1) = 0;
  return result;
}

void *sub_29939F954(void *a1, unint64_t a2, __int16 a3)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_299212A30();
  }

  if (a2 >= 0xB)
  {
    if ((a2 | 3) == 0xB)
    {
      v3 = 13;
    }

    else
    {
      v3 = (a2 | 3) + 1;
    }

    sub_299212A48(a1, v3);
  }

  *(a1 + 23) = a2;
  if (a2)
  {
    v4 = 0;
    v5 = vdupq_n_s64(a2 - 1);
    v6 = a1 + 1;
    do
    {
      v7 = vdupq_n_s64(v4);
      v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_2993FCC00)));
      if (vuzp1_s8(vuzp1_s16(v8, *v5.i8), *v5.i8).u8[0])
      {
        *(v6 - 4) = a3;
      }

      if (vuzp1_s8(vuzp1_s16(v8, *&v5), *&v5).i8[1])
      {
        *(v6 - 3) = a3;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_2993FCC10)))), *&v5).i8[2])
      {
        *(v6 - 2) = a3;
        *(v6 - 1) = a3;
      }

      v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_2993FDE70)));
      if (vuzp1_s8(*&v5, vuzp1_s16(v9, *&v5)).i32[1])
      {
        *v6 = a3;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v9, *&v5)).i8[5])
      {
        v6[1] = a3;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_2993FDE60))))).i8[6])
      {
        v6[2] = a3;
        v6[3] = a3;
      }

      v4 += 8;
      v6 += 8;
    }

    while (((a2 + 7) & 0xFFFFFFFFFFFFFFF8) != v4);
  }

  *(a1 + a2) = 0;
  return a1;
}

void sub_29939FAF4(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2)
  {
    v5 = 2 * a2;
    do
    {
      sub_29939F698(*a1, __p);
      if ((v9 & 0x80u) == 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      if ((v9 & 0x80u) == 0)
      {
        v7 = v9;
      }

      else
      {
        v7 = __p[1];
      }

      sub_29922C614(a3, v6, v7);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      ++a1;
      v5 -= 2;
    }

    while (v5);
  }
}

void sub_29939FB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_29939FBB8(uint64_t result@<X0>, const void **a2@<X8>)
{
  v2 = result;
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = "1171B1E1H1";
  while (*v5 != result)
  {
    v4 -= 2;
    v5 += 2;
    if (v4 == -10)
    {
      goto LABEL_8;
    }
  }

  if (-v4 == -2)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v11 = *&a2181c1f1i1[-v4];
  if (v11)
  {
    sub_29939FD5C(a2, &v11);
  }

LABEL_9:
  v6 = 0;
  v7 = "1171B1H1";
  while (*v7 != v2)
  {
    v6 -= 2;
    v7 += 2;
    if (v6 == -8)
    {
      goto LABEL_16;
    }
  }

  if (-v6 == -2)
  {
LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  v10 = *&aK1l1m1j1[-v6];
  if (v10)
  {
    sub_29939FD5C(a2, &v10);
  }

LABEL_17:
  if (v2 == 12624)
  {
    v8 = "P1T1";
  }

  else
  {
    if (v2 != 12628)
    {
      return;
    }

    v8 = "T1";
  }

  if (v8 - "P1T1" != -2)
  {
    v9 = *&aR1v1[v8 - "P1T1"];
    if (v9)
    {
      sub_29939FD5C(a2, &v9);
    }
  }
}

void sub_29939FD38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29939FD5C(const void **a1, unsigned __int16 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      sub_2992A3B48();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_299212A48(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 2;
  }

  a1[1] = v6;
}

void sub_29939FE38(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29939FBB8(a1, &v15);
  v4 = v15;
  v5 = v16;
  if (v15 != v16)
  {
    v6 = 0;
    do
    {
      v7 = *v4;
      v14 = *v4;
      v17 = 1;
      if (v6 >= a2[2])
      {
        v6 = sub_2993A0B10(a2, &v17, &v14);
      }

      else
      {
        v6[23] = 1;
        *v6 = v7;
        *(v6 + 1) = 0;
        v6 += 24;
      }

      a2[1] = v6;
      ++v4;
    }

    while (v4 != v5);
    v4 = v15;
  }

  if (v4)
  {
    v16 = v4;
    operator delete(v4);
  }

  v8 = 0;
  for (i = "B1H17111E1A141G191N1K1L1J1M1"; *i != v2; i += 2)
  {
    v8 -= 2;
    if (v8 == -28)
    {
      return;
    }
  }

  v10 = -v8;
  if (v10 != -2)
  {
    LODWORD(v15) = 2;
    v11 = a2[1];
    if (v11 >= a2[2])
    {
      v13 = sub_2993A0B10(a2, &v15, &aB1h17111e1a141[v10]);
    }

    else
    {
      v12 = *&aB1h17111e1a141[v10];
      *(v11 + 23) = 2;
      *v11 = v12;
      *(v11 + 2) = v12;
      v13 = (v11 + 24);
    }

    a2[1] = v13;
  }
}

uint64_t sub_29939FFC0(int a1)
{
  v1 = 0;
  v2 = "1171B1E1H1";
  while (*v2 != a1)
  {
    v1 -= 2;
    v2 += 2;
    if (v1 == -10)
    {
      goto LABEL_10;
    }
  }

  if (-v1 == -2)
  {
LABEL_10:
    if (a1 == 12624)
    {
      v5 = "P1T1";
    }

    else
    {
      if (a1 != 12628)
      {
        return 0;
      }

      v5 = "T1";
    }

    v6 = v5 - "P1T1";
    if (v5 - "P1T1" != -2)
    {
      v8 = "R1V1";
      return *&v8[v6];
    }

    return 0;
  }

  v3 = 0;
  for (i = "1171B1E1H1"; *i != a1; i += 2)
  {
    v3 -= 2;
    if (v3 == -10)
    {
      return 0;
    }
  }

  result = 0;
  v6 = -v3;
  if (-v3 != -2)
  {
    v8 = "2181C1F1I1";
    return *&v8[v6];
  }

  return result;
}

BOOL sub_2993A00C8(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1461448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461448))
  {
    sub_299217DF0(v11, asc_29945D928);
    sub_299217DF0(v12, byte_29945D92C);
    sub_299217DF0(v13, aT_10);
    sub_299217DF0(v14, byte_29945D936);
    sub_299217DF0(v15, aT_11);
    sub_299217DF0(v16, aD_16);
    sub_299217DF0(v17, asc_29945D942);
    sub_299217DF0(v18, asc_29945D946);
    sub_299217DF0(v19, byte_29945D94A);
    sub_299217DF0(v20, aT_12);
    sub_299217DF0(v21, byte_29945D952);
    sub_299217DF0(v22, byte_29945D956);
    sub_299217DF0(v23, asc_29945D95A);
    qword_2A1461458 = 0;
    unk_2A1461460 = 0;
    qword_2A1461468 = 0;
    sub_299273D44(&qword_2A1461458, v11, &v24, 0xDuLL);
    v10 = 39;
    do
    {
      if (SHIBYTE(v11[v10 - 1]) < 0)
      {
        operator delete(v11[v10 - 3]);
      }

      v10 -= 3;
    }

    while (v10 * 8);
    __cxa_atexit(sub_29926ECD4, &qword_2A1461458, &dword_29918C000);
    __cxa_guard_release(&qword_2A1461448);
  }

  v5 = qword_2A1461458;
  v4 = unk_2A1461460;
  v11[0] = a1;
  v11[1] = a2;
  if (qword_2A1461458 == unk_2A1461460)
  {
    return 0;
  }

  do
  {
    v6 = *(v5 + 23);
    if (v6 >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = *v5;
    }

    if (v6 >= 0)
    {
      v8 = *(v5 + 23);
    }

    else
    {
      v8 = *(v5 + 8);
    }

    result = sub_2992FE218(v11, v7, v8);
    if (result)
    {
      break;
    }

    v5 += 24;
  }

  while (v5 != v4);
  return result;
}

void sub_2993A0334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  v51 = &a50;
  v52 = -312;
  v53 = &a50;
  while (1)
  {
    v54 = *v53;
    v53 -= 24;
    if (v54 < 0)
    {
      operator delete(*(v51 - 23));
    }

    v51 = v53;
    v52 += 24;
    if (!v52)
    {
      __cxa_guard_abort(&qword_2A1461448);
      _Unwind_Resume(a1);
    }
  }
}

void sub_2993A03A8(const __CFString *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1461450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461450))
  {
    sub_299217DF0(&__p, "41W1O1");
    sub_299217DF0(v4, "41W1c1");
    sub_299217DF0(v5, "91W1c1");
    sub_299217DF0(v6, "G1W1O1");
    sub_299217DF0(v7, "G1W1c1");
    sub_299217DF0(v8, "N1W1O1");
    sub_299217DF0(v9, "N1W1c1");
    sub_299217DF0(v10, "O191A1");
    sub_299217DF0(v11, "S191A1");
    sub_299217DF0(v12, "W191A1");
    qword_2A1461470 = 0;
    *algn_2A1461478 = 0;
    qword_2A1461480 = 0;
    sub_299273D44(&qword_2A1461470, &__p, &v13, 0xAuLL);
    for (i = 0; i != -240; i -= 24)
    {
      if (v12[i + 23] < 0)
      {
        operator delete(*&v12[i]);
      }
    }

    __cxa_atexit(sub_29926ECD4, &qword_2A1461470, &dword_29918C000);
    __cxa_guard_release(&qword_2A1461450);
  }

  sub_299276E1C(a1);
}

void sub_2993A06B4(_Unwind_Exception *a1)
{
  v3 = (v1 + 239);
  v4 = -240;
  v5 = (v1 + 239);
  while (1)
  {
    v6 = *v5;
    v5 -= 24;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 24;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2A1461450);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_2993A072C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (CFArrayGetCount(result) == 28)
    {
      v2 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v2);
        result = sub_29939F19C(*ValueAtIndex[3]);
        if (result)
        {
          break;
        }
      }

      while (v2++ != 27);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2993A0798(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  result = sub_2993A0860(a1, a2);
  if (result != 1)
  {
    v7 = result;
    sub_29939F510(a3, a4);
    v9 = v8;
    v10 = a4 - v8;
    if (!v10)
    {
      return v7 == 3;
    }

    v11 = 2 * a4 - 2 * v9;
    for (i = a3; (*i + 10332) <= 0xD45Bu && (*i - 12644) < 0xFFCDu; ++i)
    {
      v11 -= 2;
      if (!v11)
      {
        return v7 == 3;
      }
    }

    return (sub_29939F348(a3, v10) & 1) == 0 && v7 == 3;
  }

  return result;
}

uint64_t sub_2993A0860(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = MEMORY[0x29EDCA600];
    do
    {
      v8 = *(a1 + 2 * v4);
      if (v8 <= 0x7F)
      {
        v9 = *(v7 + 4 * v8 + 60) & 0x8000;
      }

      else
      {
        v9 = __maskrune(v8, 0x8000uLL);
      }

      if (v4)
      {
        v10 = v9 != 0;
      }

      else
      {
        v10 = 0;
      }

      v6 += v10;
      if (v9)
      {
        v11 = v4 == 0;
      }

      else
      {
        v11 = 0;
      }

      v5 |= v11;
      ++v4;
    }

    while (a2 != v4);
    if (v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (!v6)
  {
    return 0;
  }

LABEL_18:
  if (v6 != 0 || (v5 & 1) == 0)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  if ((v5 & (v6 == a2 - 1)) != 0)
  {
    return 1;
  }

  else
  {
    return v13;
  }
}

const void **sub_2993A0954@<X0>(unsigned __int16 *a1@<X0>, char *a2@<X1>, unsigned __int16 *a3@<X2>, char *a4@<X3>, unsigned __int16 *a5@<X8>)
{
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v24[0] = a1;
  v24[1] = a2;
  v23[0] = a3;
  v23[1] = a4;
  v10 = sub_2993A0860(a1, a2);
  if (v10 == 2)
  {
    if (a4)
    {
      v13 = 2 * a4;
      v14 = 2 * a4;
      v15 = v6;
      while ((*v15 + 10332) <= 0xD45Bu && (*v15 - 12644) < 0xFFCDu)
      {
        ++v15;
        v14 -= 2;
        if (!v14)
        {
          v16 = MEMORY[0x29EDCA600];
          do
          {
            v17 = *v6;
            if (v17 <= 0x7F)
            {
              if ((*(v16 + 4 * v17 + 60) & 0x8000) != 0)
              {
                goto LABEL_4;
              }
            }

            else if (__maskrune(v17, 0x8000uLL))
            {
              goto LABEL_4;
            }

            ++v6;
            v13 -= 2;
          }

          while (v13);
          break;
        }
      }
    }

    sub_29923A9CC(v23, a5);
    if (*(a5 + 23) >= 0)
    {
      v18 = a5;
    }

    else
    {
      v18 = *a5;
    }

    result = __toupper(*v18);
    if (*(a5 + 23) >= 0)
    {
      v19 = a5;
    }

    else
    {
      v19 = *a5;
    }

    *v19 = result;
  }

  else
  {
    if (!v10 || (v10 & 1) == 0)
    {
LABEL_4:
      v11 = v23;
      return sub_29923A9CC(v11, a5);
    }

    if (v7 == a4)
    {
      if (!v7)
      {
LABEL_28:
        v11 = v24;
        return sub_29923A9CC(v11, a5);
      }

      while (1)
      {
        v20 = *v8++;
        v21 = __tolower(v20);
        v22 = *v6++;
        if (v21 != __tolower(v22))
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_28;
        }
      }
    }

    return sub_299217DF0(a5, byte_29945C656);
  }

  return result;
}

void sub_2993A0AF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2993A0B10(uint64_t a1, int *a2, __int16 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_299212A8C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    sub_299212AA4(a1, v7);
  }

  v13 = 0;
  v14 = 24 * v3;
  v15 = 24 * v3;
  v16 = 0;
  sub_29939F954((24 * v3), *a2, *a3);
  v8 = *(a1 + 8) - *a1;
  v9 = (24 * v3 - v8);
  memcpy(v9, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = 24 * v3 + 24;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_299212AFC(&v13);
  return (24 * v3 + 24);
}

void sub_2993A0C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299212AFC(va);
  _Unwind_Resume(a1);
}

BOOL sub_2993A0C38(uint64_t a1, int a2)
{
  v3 = *(a1 + 24);
  if ((v3 - 2) >= 2)
  {
    return v3 == 1 && a2 == 111;
  }

  else if (a2 <= 122 && (v4 = *a1, (v5 = **v4) != 0))
  {
    return sub_2993B2448(v4, v5, a2) != 0;
  }

  else
  {
    return 0;
  }
}

void sub_2993A0CA4(unsigned __int16 ****a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (*(a1 + 48) == 1 && !a1[5] && sub_2993A0C38(a1, a2))
  {
    if (*(a1 + 6) == 1)
    {
      v6 = 0;
      for (i = 0; i != 3; ++i)
      {
        v8 = ***a1;
        if (v8)
        {
          v9 = sub_2993B2448(*a1, v8, aAeo[i]);
          if (v9)
          {
            v10 = *(a3 + 16);
            if (v6 >= v10)
            {
              v11 = (v6 - *a3) >> 3;
              if ((v11 + 1) >> 61)
              {
                sub_299212A8C();
              }

              v12 = v10 - *a3;
              v13 = v12 >> 2;
              if (v12 >> 2 <= (v11 + 1))
              {
                v13 = v11 + 1;
              }

              if (v12 >= 0x7FFFFFFFFFFFFFF8)
              {
                v14 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v14 = v13;
              }

              if (v14)
              {
                sub_29920B86C(a3, v14);
              }

              v15 = (8 * v11);
              *v15 = v9;
              v6 = (8 * v11 + 8);
              v16 = *(a3 + 8) - *a3;
              v17 = v15 - v16;
              memcpy(v15 - v16, *a3, v16);
              v18 = *a3;
              *a3 = v17;
              *(a3 + 8) = v6;
              *(a3 + 16) = 0;
              if (v18)
              {
                operator delete(v18);
              }
            }

            else
            {
              *v6++ = v9;
            }

            *(a3 + 8) = v6;
          }
        }
      }
    }

    else
    {
      v19 = ***a1;
      if (v19 && sub_2993B2448(*a1, v19, a2))
      {
        sub_29920B86C(a3, 1uLL);
      }
    }
  }
}

void sub_2993A0E68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993A0E8C(unsigned __int16 ****a1@<X0>, int a2@<W1>, unsigned __int16 *****a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(a1 + 2);
  if (a2 == 39 || (a2 - 97) < 0x1Bu || (v5 <= 7 ? (v6 = ((1 << v5) & 0x8C) == 0) : (v6 = 1), !v6 && a2 == 59))
  {
    if (a2 == 59)
    {
      v7 = 123;
    }

    else
    {
      v7 = a2;
    }

    v8 = v5 > 7;
    v9 = (1 << v5) & 0x8C;
    if (v8 || v9 == 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = v7;
    }

    if (a1[6])
    {
      v12 = a1[5];
      if (v12)
      {
        sub_2993A11F4(a1, v11, v12, 0, a3);
      }

      else
      {
        v13 = *(a1 + 6);
        if (v13 == 1)
        {
          v19 = 0;
        }

        else
        {
          if (v13 == 3)
          {
            *(a1 + 56) = *(a1 + 32);
            *(a1 + 57) = v11;
            v14 = *a1;
            v15 = ***a1;
            if (v15)
            {
              v16 = 0;
              v17 = 1;
              do
              {
                v18 = sub_2993B2448(v14, v15, *(a1 + v16 + 56));
                v15 = v18;
                if ((v17 & 1) == 0)
                {
                  break;
                }

                v17 = 0;
                v16 = 1;
              }

              while (v18);
              if (v18)
              {
                sub_29920B86C(a3, 1uLL);
              }
            }
          }

          v19 = 1;
        }

        sub_2993A11F4(a1, v11, ***a1, v19, a3);
      }

      *(a1 + 32) = 0;
      a1[5] = 0;
      *(a1 + 48) = 0;
      v21 = *a3;
      v20 = a3[1];
      if (*a3 == v20)
      {
        sub_2993A1124(a1, v11);
        v22 = a1[5];
        if (v22)
        {
          v23 = a3[2];
          if (v21 >= v23)
          {
            v24 = v23 - v21;
            v25 = (v23 - v21) >> 2;
            if (v25 <= 1)
            {
              v25 = 1;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFF8)
            {
              v26 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v26 = v25;
            }

            sub_29920B86C(a3, v26);
          }

          *v20 = v22;
          a3[1] = v20 + 1;
        }
      }
    }

    else
    {
      sub_2993A1124(a1, v11);
      if (a1[5])
      {
        sub_29920B86C(a3, 1uLL);
      }
    }
  }

  else
  {
    *(a1 + 32) = 0;
    a1[5] = 0;
    *(a1 + 48) = 0;
  }
}

void sub_2993A1108(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2993A1124(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  if (*(v4 + ((4 * a2 + 124) & 0xFC)))
  {
    v5 = *(&off_29EF13BB8 + *(v4 + ((4 * a2 + 124) & 0xFC)));
    v6 = *a1;
    v7 = ***a1;
    v8 = strlen(v5);
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = v8;
      v11 = 0;
      do
      {
        v7 = sub_2993B2448(v6, v7, v5[v11++]);
        if (v7)
        {
          v12 = v11 >= v10;
        }

        else
        {
          v12 = 1;
        }
      }

      while (!v12);
    }

    result = 1;
  }

  else
  {
    result = sub_2993A0C38(a1, a2);
    v7 = 0;
  }

  *(a1 + 32) = a2;
  *(a1 + 40) = v7;
  *(a1 + 48) = result;
  return result;
}

void sub_2993A11F4(uint64_t *a1, char a2, unsigned __int16 *a3, int a4, uint64_t a5)
{
  if ((4 * a2 + 125) < (((4 * a2) ^ 0x80) & 0xFCu))
  {
    v8 = (4 * a2 + 125);
    v9 = (4 * a2) ^ 0x80;
    do
    {
      if (!*(a1[2] + v8))
      {
        break;
      }

      v10 = *(&off_29EF13BB8 + *(a1[2] + v8));
      if (!a4 || *(a1 + 32) == *v10)
      {
        v11 = *a1;
        v12 = strlen(*(&off_29EF13BB8 + *(a1[2] + v8)));
        v13 = a3;
        if (a3)
        {
          v14 = v12;
          v13 = a3;
          if (v12)
          {
            v15 = 0;
            v13 = a3;
            do
            {
              v13 = sub_2993B2448(v11, v13, v10[v15++]);
              if (v13)
              {
                v16 = v15 >= v14;
              }

              else
              {
                v16 = 1;
              }
            }

            while (!v16);
          }
        }

        if (v13 && (v13[4] & 2) != 0)
        {
          v18 = *(a5 + 8);
          v17 = *(a5 + 16);
          if (v18 >= v17)
          {
            v20 = (v18 - *a5) >> 3;
            if ((v20 + 1) >> 61)
            {
              sub_299212A8C();
            }

            v21 = v17 - *a5;
            v22 = v21 >> 2;
            if (v21 >> 2 <= (v20 + 1))
            {
              v22 = v20 + 1;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFF8)
            {
              v23 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v23 = v22;
            }

            if (v23)
            {
              sub_29920B86C(a5, v23);
            }

            v24 = (8 * v20);
            *v24 = v13;
            v19 = 8 * v20 + 8;
            v25 = *(a5 + 8) - *a5;
            v26 = v24 - v25;
            memcpy(v24 - v25, *a5, v25);
            v27 = *a5;
            *a5 = v26;
            *(a5 + 8) = v19;
            *(a5 + 16) = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            *v18 = v13;
            v19 = (v18 + 1);
          }

          *(a5 + 8) = v19;
        }
      }

      ++v8;
    }

    while (v9 != v8);
  }
}

void *sub_2993A13A0()
{
  v2 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1461490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461490))
  {
    memcpy(__dst, &unk_299421700, sizeof(__dst));
    sub_2992235B8(&unk_2A1461508, __dst, 414);
    __cxa_atexit(sub_299220CC8, &unk_2A1461508, &dword_29918C000);
    __cxa_guard_release(&qword_2A1461490);
  }

  return &unk_2A1461508;
}

uint64_t sub_2993A1488(unsigned int a1, int a2)
{
  if (a1 == 5000)
  {
    return 0;
  }

  if (a2)
  {
    if (a2 == 2)
    {
      v3 = &xmmword_2A14614F0;
      if ((atomic_load_explicit(&qword_2A14614A8, memory_order_acquire) & 1) == 0)
      {
        v4 = a1;
        if (__cxa_guard_acquire(&qword_2A14614A8))
        {
          sub_2993A185C();
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (a2 != 1)
      {
        return 0;
      }

      v3 = qword_2A14614B0;
      if ((atomic_load_explicit(&qword_2A1461498, memory_order_acquire) & 1) == 0)
      {
        v4 = a1;
        if (__cxa_guard_acquire(&qword_2A1461498))
        {
          sub_2993A15F4();
        }

LABEL_16:
        a1 = v4;
      }
    }
  }

  else
  {
    v3 = &xmmword_2A14614D0;
    if ((atomic_load_explicit(&qword_2A14614A0, memory_order_acquire) & 1) == 0)
    {
      v4 = a1;
      if (__cxa_guard_acquire(&qword_2A14614A0))
      {
        sub_2993A1770();
      }

      goto LABEL_16;
    }
  }

  return *(*v3 + 8 * a1);
}

void sub_2993A16A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299290440(va);
  _Unwind_Resume(a1);
}

const void ***sub_2993A16B8(const void ***a1)
{
  v3 = a1;
  sub_299290440(&v3);
  return a1;
}

void sub_2993A16F0(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_299229E2C(a1, a2);
}

void sub_2993A1840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_299290440(&a12);
  _Unwind_Resume(a1);
}

void sub_2993A192C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_299290440(&a12);
  _Unwind_Resume(a1);
}

void sub_2993A1948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2A1F76DA0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 88);
  v11 = *(a2 + 24);
  if ((v11 & 0x4000) != 0)
  {
    v12 = 1;
  }

  else if ((v11 & 0x10000) != 0)
  {
    v12 = 2;
  }

  else if ((v11 & 0x400000) != 0)
  {
    v12 = 4;
  }

  else if (*a2 == 5)
  {
    v12 = 3;
  }

  else if (*a2 == 13)
  {
    v12 = 5;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 48) = 0;
  *(a1 + 40) = v12;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 1065353216;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0xFFFFLL;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0;
  sub_2993A2364(v12, (a1 + 544));
  *(a1 + 552) = 0;
  *(a1 + 556) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = a3;
  *(a1 + 664) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 672) = 1065353216;
  sub_29923F450((a1 + 680), 20);
  *(a1 + 704) = 0x3727C5AC3FC00000;
  *(a1 + 712) = 2;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 1065353216;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = -1;
  *(a1 + 792) = 0;
  *(a1 + 800) = 0u;
  *(a1 + 816) = a6;
  *(a1 + 840) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 848) = a4;
  *(a1 + 856) = a5;
  *(a1 + 864) = 0;
  operator new[]();
}

void sub_2993A2184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, uint64_t *a12, void **a13, void **a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18, void **a19)
{
  MEMORY[0x29C29BFB0](v22, 0x10F1C406F3FD563, a3, a4, a5, a6, a7, a8);
  v24 = *(v19 + 864);
  *(v19 + 864) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(v19 + 832);
  *(v19 + 832) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  sub_2993AE504(a16, 0);
  a19 = (v19 + 760);
  sub_29920E060(&a19);
  sub_29921ED28(v19 + 720);
  v26 = *a10;
  if (*a10)
  {
    *(v19 + 688) = v26;
    operator delete(v26);
  }

  sub_29921ED28(v20);
  v27 = *a11;
  if (*a11)
  {
    *(v19 + 624) = v27;
    operator delete(v27);
  }

  v28 = (v19 + 560);
  v29 = *(v19 + 584);
  if (v29)
  {
    *(v19 + 592) = v29;
    operator delete(v29);
  }

  v30 = *v28;
  if (*v28)
  {
    *(v19 + 568) = v30;
    operator delete(v30);
  }

  sub_2993AE430((v21 + 496), 0);
  v31 = *a12;
  *a12 = 0;
  if (v31)
  {
    MEMORY[0x29C29BFB0](v31, 0x1070C4004AA1E42);
  }

  v32 = *a13;
  if (*a13)
  {
    *(v19 + 448) = v32;
    operator delete(v32);
  }

  sub_2993AE47C((v21 + 352));
  v33 = *v21;
  if (*v21)
  {
    *(v19 + 56) = v33;
    operator delete(v33);
  }

  a19 = a14;
  sub_2993ADECC(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_2993A2364@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result > 2)
  {
    if (result == 3)
    {
      operator new();
    }

    if (result == 5)
    {
      operator new();
    }
  }

  else if (!result || result == 2)
  {
    operator new();
  }

  *a2 = 0;
  return result;
}

uint64_t sub_2993A2468(uint64_t a1)
{
  *a1 = &unk_2A1F76DA0;
  sub_2993A2620(a1, 0, 1);
  v2 = *(a1 + 464);
  if (v2)
  {
    CFRelease(v2);
  }

  sub_2993AE550(a1 + 400);
  v3 = *(a1 + 72);
  if (v3)
  {
    MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  v4 = *(a1 + 864);
  *(a1 + 864) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 832);
  *(a1 + 832) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_2993AE504((a1 + 824), 0);
  v14 = (a1 + 760);
  sub_29920E060(&v14);
  sub_29921ED28(a1 + 720);
  v6 = *(a1 + 680);
  if (v6)
  {
    *(a1 + 688) = v6;
    operator delete(v6);
  }

  sub_29921ED28(a1 + 640);
  v7 = *(a1 + 616);
  if (v7)
  {
    *(a1 + 624) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 584);
  if (v8)
  {
    *(a1 + 592) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 560);
  if (v9)
  {
    *(a1 + 568) = v9;
    operator delete(v9);
  }

  sub_2993AE430((a1 + 544), 0);
  v10 = *(a1 + 488);
  *(a1 + 488) = 0;
  if (v10)
  {
    MEMORY[0x29C29BFB0](v10, 0x1070C4004AA1E42);
  }

  v11 = *(a1 + 440);
  if (v11)
  {
    *(a1 + 448) = v11;
    operator delete(v11);
  }

  sub_2993AE47C((a1 + 400));
  v12 = *(a1 + 48);
  if (v12)
  {
    *(a1 + 56) = v12;
    operator delete(v12);
  }

  v14 = (a1 + 8);
  sub_2993ADECC(&v14);
  return a1;
}

void sub_2993A2620(uint64_t a1, unint64_t a2, int a3)
{
  if (a2 && *(a1 + 800) <= a2 && (v6 = *(a1 + 8), v7 = *(a1 + 16), v8 = (v7 - v6) >> 3, v8 >= a2))
  {
    if (v8 > a2)
    {
      v9 = (v6 + 8 * a2);
      while (v7 != v9)
      {
        v11 = *--v7;
        v10 = v11;
        *v7 = 0;
        if (v11)
        {
          (*(*v10 + 8))(v10);
        }
      }

      *(a1 + 16) = v9;
    }

    sub_299217A94((a1 + 48), a2);
    *(a1 + 496) = a2;
  }

  else
  {
    sub_2993A2A08((a1 + 8));
    *(a1 + 56) = *(a1 + 48);
    *(a1 + 568) = *(a1 + 560);
    *(a1 + 592) = *(a1 + 584);
    *(a1 + 496) = 0;
    *(a1 + 800) = 0;
  }

  *(a1 + 808) = 0;
  *(a1 + 480) = 0xFFFFLL;
  v25 = a1 + 80;
  v26 = 0;
  sub_2993AE5AC(&v25);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) &= 0x8000000000000000;
  v15 = *(a1 + 488);
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  *(a1 + 552) = 0;
  *(a1 + 556) = 0;
  *(a1 + 537) = 0;
  v16 = *(a1 + 544);
  if (v16)
  {
    objc_msgSend_reset(**v16, v12, v13, v14);
  }

  if (*(a1 + 744))
  {
    v17 = *(a1 + 736);
    if (v17)
    {
      do
      {
        v18 = *v17;
        operator delete(v17);
        v17 = v18;
      }

      while (v18);
    }

    *(a1 + 736) = 0;
    v19 = *(a1 + 728);
    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        *(*(a1 + 720) + 8 * i) = 0;
      }
    }

    *(a1 + 744) = 0;
  }

  sub_29920E0B4((a1 + 760));
  if (a3)
  {
    if (!a2)
    {
      *(a1 + 784) = xmmword_299403150;
    }

    v21 = *(a1 + 824);
    if (v21)
    {
      sub_29921FB44((v21 + 144));
      *(v21 + 192) = 0;
      sub_29921FA70(v21);
    }

    v22 = *(a1 + 832);
    if (v22)
    {
      (*(*v22 + 16))(v22);
    }

    v23 = *(a1 + 864);
    if (v23)
    {
      v24 = *(*v23 + 16);

      v24();
    }
  }
}

void sub_2993A286C(uint64_t a1)
{
  sub_2993A2468(a1);

  JUMPOUT(0x29C29BFB0);
}

id **sub_2993A28A4(id **result, _DWORD *a2, void *a3)
{
  v5 = result;
  v6 = a2[6];
  if ((v6 & 0x4000) != 0)
  {
    v8 = 1;
  }

  else if ((v6 & 0x10000) != 0)
  {
    v8 = 2;
  }

  else if ((v6 & 0x400000) != 0)
  {
    v8 = 4;
  }

  else
  {
    if (*a2 == 13)
    {
      v7 = 5;
    }

    else
    {
      v7 = 0;
    }

    if (*a2 == 5)
    {
      v8 = 3;
    }

    else
    {
      v8 = v7;
    }
  }

  if (*(result + 10) != v8)
  {
    sub_2993A2620(result, 0, 1);
    *(v5 + 10) = v8;
    sub_2993A2364(v8, &v17);
    result = sub_2993AE430(v5 + 68, v17);
    v9 = 0.8;
    if ((*(v5 + 10) - 3) >= 2)
    {
      v9 = 1.5;
    }

    *(v5 + 176) = v9;
  }

  if ((v5[102] & 1) == 0)
  {
    v10 = a2[7];
    *(v5 + 472) = (a2[6] & 0x400) != 0;
    v11 = v5[61];
    if (*(v11 + 2) != v10)
    {
      *(v11 + 2) = v10;
      v12 = v10 - 1;
      if (v10)
      {
        v13 = &unk_2A145F758 + 108 * v12;
      }

      else
      {
        v13 = 0;
      }

      v11[2] = v13;
      if (v12 <= 6)
      {
        *(v11 + 6) = dword_299427E9C[v12];
      }

      *(v11 + 32) = 0;
      v11[5] = 0;
      *(v11 + 48) = 0;
    }
  }

  v14 = v5[108];
  if (v14)
  {
    v14[18] = a3;
  }

  v15 = v5[103];
  if (v15)
  {
    v15[16] = a3;
  }

  v16 = v5[104];
  if (v16)
  {
    v16[16] = a3;
  }

  return result;
}

void *sub_2993A2A08(void *result)
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

uint64_t sub_2993A2A74(uint64_t a1, unsigned int a2, int a3)
{
  if ((a2 & 0x80000000) != 0 || a2 >= ((*(a1 + 16) - *(a1 + 8)) >> 3))
  {
    goto LABEL_7;
  }

  v3 = *(*(a1 + 48) + 2 * a2);
  if (*(a1 + 40) == 1 && (v3 - 10123) <= 7u)
  {
    v3 -= 10123;
    if (dword_299427970[v3] > a3)
    {
      LOWORD(v3) = aAdgjmptw[v3] + a3;
      return v3;
    }

LABEL_7:
    LOWORD(v3) = -1;
    return v3;
  }

  if (a3 >= 1)
  {
    LOWORD(v3) = -1;
  }

  return v3;
}

void *sub_2993A2AF8(uint64_t a1, unsigned int a2, unsigned int *a3, void *a4, uint64_t a5, int a6)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v8 = a2;
  v9 = *(a1 + 8);
  if (a2 >= ((*(a1 + 16) - v9) >> 3))
  {
    return 0;
  }

  v13 = *(v9 + 8 * a2);
  sub_2993A3188(&v72, a1, v13, 1, 0);
  v64 = v13;
  sub_2993A3188(&v70, a1, v13, 0, 0);
  v14 = v73;
  v62 = v72;
  if (v72 == v73)
  {
    v15 = &v70;
  }

  else
  {
    v15 = &v72;
  }

  v16 = v71;
  if (v72 != v73)
  {
    v16 = v73;
  }

  v17 = *v15;
  v18 = v16 - *v15;
  v65 = v18 >> 3;
  if (*(a1 + 40) != 1)
  {
    sub_2993A3188(&v68, a1, v64, 1, 1);
    sub_2993A3188(&__p, a1, v64, 0, 1);
    v24 = v65 + ((v69 - v68) >> 3);
    v25 = a6;
    if (a6)
    {
      p_p = 0;
    }

    else
    {
      p_p = &__p;
    }

    if (v24)
    {
      v25 = 1;
      p_p = &v68;
    }

    v59 = p_p;
    if (v25)
    {
      v27 = (v69 - v68) >> 3;
    }

    else
    {
      v27 = (v67 - __p) >> 3;
    }

    if (!v25)
    {
      v24 = (v67 - __p) >> 3;
    }

    v61 = v24;
    if (a4)
    {
      v58 = v27;
      if ((*(*a4 + 64))(a4) == 4)
      {
        v28 = *a3;
        if ((v28 & 0x80000000) == 0 && v61 > v28)
        {
          v23 = a4[16];
          if (v23)
          {
            v29 = v61;
            *a3 = v61;
LABEL_94:
            if (__p)
            {
              v67 = __p;
              operator delete(__p);
            }

            if (v68)
            {
              v69 = v68;
              operator delete(v68);
            }

            v22 = v29;
            goto LABEL_99;
          }
        }
      }

      v30 = *(v64 + 168);
      v31 = *(a1 + 8);
      v32 = (*(a1 + 16) - v31) >> 3;
      if (v32 <= v8)
      {
        v35 = 1;
        v27 = v58;
LABEL_46:
        v60 = a5;
        v41 = a5 && (v37 = *(a1 + 8), v38 = (*(a1 + 16) - v37) >> 3, v38 > v8) && (v39 = a2 + 2, v38 > v39) && (v40 = *(*(v37 + 8 * v8) + 168), (v40 - 1) <= 1) && v40 == *(*(v37 + 8 * v39) + 168);
        v42 = v30 - 3;
        v43 = *a3;
        if ((*a3 & 0x80000000) != 0)
        {
LABEL_79:
          v23 = 0;
LABEL_80:
          if (v59 && v42 <= 0xFFFFFFFD)
          {
            v29 = v61;
            if (!v23)
            {
              v50 = *a3;
              if (v61 <= v50)
              {
                v51 = *a3;
              }

              else
              {
                v51 = v61;
              }

              if (v61 <= v50)
              {
LABEL_92:
                v23 = 0;
              }

              else
              {
                v52 = v51 - v50;
                v53 = v50 + 1;
                v54 = *v59 + 8 * v50 + -8 * v65;
                while (1)
                {
                  v23 = *v54;
                  if (*(*v54 + 136) == 1 && (!a4 || !v23[15]))
                  {
                    break;
                  }

                  *a3 = v53++;
                  v54 += 8;
                  if (!--v52)
                  {
                    goto LABEL_92;
                  }
                }
              }
            }
          }

          else
          {
            v29 = v61;
          }

          goto LABEL_94;
        }

        if (a4)
        {
          v44 = v27 == 0;
        }

        else
        {
          v44 = 1;
        }

        v46 = !v44 && v62 == v14;
        while (1)
        {
          if (v65 <= v43)
          {
            goto LABEL_79;
          }

          v23 = *(*v15 + v43);
          v48 = v42 < 0xFFFFFFFE || v23 == 0;
          if (!v48 && !v35)
          {
            if (v41)
            {
              if (!sub_2993AE760(v23 + 9, *(*(v60 + 8) + 2) + 542 * *(a4[1] + 2)))
              {
                goto LABEL_77;
              }
            }

            else if (!sub_2993AE810(v23 + 4, a4))
            {
              goto LABEL_77;
            }
          }

          if (!v46 || !sub_2993A30D8(a1, v23, a4))
          {
            goto LABEL_80;
          }

          v43 = *a3;
LABEL_77:
          *a3 = v43 + 1;
          if (v43++ <= -2)
          {
            goto LABEL_79;
          }
        }
      }

      v33 = a2 + 1;
      v27 = v58;
      if (v32 > v33)
      {
        v34 = *(*(v31 + 8 * v8) + 168);
        if ((v34 - 1) <= 1)
        {
          v35 = v34 != *(*(v31 + 8 * v33) + 168);
          goto LABEL_46;
        }
      }
    }

    else
    {
      v30 = *(v64 + 168);
    }

    v35 = 1;
    goto LABEL_46;
  }

  v19 = *a3;
  if ((v19 & 0x80000000) != 0 || v65 <= v19)
  {
    if (v72 == v73)
    {
      v23 = 0;
      v21 = a6;
      v22 = v18 >> 3;
      goto LABEL_104;
    }

    v22 = v18 >> 3;
    if (*(a1 + 536) == 1 && ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1 == v8 || *(v64 + 164) == 1)
    {
      v36 = *(v64 + 32);
      if (v65 + ((*(v64 + 40) - v36) >> 4) <= v19)
      {
        v23 = 0;
      }

      else if (*(*(*(v36 + 16 * (v19 - v65)) + 8) + 8))
      {
        v23 = *(v36 + 16 * (v19 - v65));
      }

      else
      {
        v23 = 0;
      }

      v22 = v65 + ((*(v64 + 40) - v36) >> 4);
    }

    else
    {
      v23 = 0;
    }

LABEL_99:
    v21 = a6;
    goto LABEL_104;
  }

  if (a4)
  {
    v20 = (*(*a4 + 72))(a4);
    v21 = a6;
    v22 = v18 >> 3;
    if (v20 == 7)
    {
      v23 = 0;
      *a3 = v18 >> 3;
      v21 = 1;
      goto LABEL_104;
    }

    LODWORD(v19) = *a3;
    v17 = *v15;
  }

  else
  {
    v21 = a6;
    v22 = v18 >> 3;
  }

  v23 = v17[v19];
LABEL_104:
  if (v21 && !v23)
  {
    v55 = *a3 - v22;
    if ((*a3 - v22) < 0 || (v56 = *(v64 + 104), v55 >= (*(v64 + 112) - v56) >> 4))
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v56 + 16 * v55);
    }
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  return v23;
}

void sub_2993A306C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = *(v25 - 112);
  if (v27)
  {
    *(v25 - 104) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_2993A30D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a3 + 24))(a3);
  if (result)
  {
    v6 = result;
    v7 = *(a1 + 32);
    v8 = *(a2 + 8);
    v9 = strlen(result);
    if (v8)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = v9;
      v12 = 0;
      do
      {
        v8 = sub_2993B2448(v7, v8, v6[v12++]);
        if (v8)
        {
          v13 = v12 >= v11;
        }

        else
        {
          v13 = 1;
        }
      }

      while (!v13);
    }

    return (v8 != 0);
  }

  return result;
}

void sub_2993A3188(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5)
  {
    v9 = 80;
  }

  else
  {
    v9 = 32;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a4)
  {
    v10 = 8;
    if (a5)
    {
      v10 = 56;
    }

    v11 = (a3 + v10);
    v12 = *v11;
    v13 = v11[1];
    while (v12 != v13)
    {
      v20 = *v12;
      sub_2993A32F8(a1, &v20);
      v12 += 2;
    }
  }

  v14 = sub_2993A13A0();
  v15 = a3 + v9;
  v16 = *(a3 + v9);
  v17 = *(v15 + 8);
  if (v16 != v17)
  {
    v18 = v14;
    do
    {
      v19 = *(a2 + 40) == 4 && sub_299223864(v18, (*(*v16 + 8) + 2)) != 0;
      if (v19 == a4 || *(a2 + 40) == 4 && (*(*(*v16 + 8) + 8) & 1) != 0)
      {
        v20 = *v16;
        sub_2993A32F8(a1, &v20);
      }

      v16 += 2;
    }

    while (v16 != v17);
  }
}

void sub_2993A32CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993A32F8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2993ADF20();
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

uint64_t sub_2993A33CC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  result = 0;
  if ((a3 & 0x80000000) == 0)
  {
    v6 = a1 + 8;
    v5 = *(a1 + 8);
    if ((*(v6 + 8) - v5) >> 3 > a2)
    {
      v7 = *(*(v5 + 8 * a2) + 104);
      if (a3 < ((*(*(v5 + 8 * a2) + 112) - v7) >> 4))
      {
        return *(v7 + 16 * a3);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2993A3420@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = 0;
  v6 = 0;
  v7 = *(result + 16) - *(result + 8);
  v8 = (a2[1] - *a2) >> 1;
  if (v8 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = (a2[1] - *a2) >> 1;
  }

  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v10 = (v7 >> 3) - 1;
  if (v7 >> 3 >= 1 && v8 >= 1)
  {
    v13 = result;
    while (1)
    {
      v5 = *a4;
      v6 = a4[1];
      if (v9 <= (v6 - *a4) >> 3)
      {
        break;
      }

      result = sub_2992B4BD8(*(*(v13 + 8) + 8 * v10), *(*a2 + 2 * v8 - 2), 1);
      v15 = result;
      if (!result)
      {
        break;
      }

      sub_2993A32F8(a4, &v15);
      result = (*(*v15 + 40))(v15);
      v10 -= result;
      v14 = v8-- != 0;
      if (v10 < 0 || v8 == 0 || !v14)
      {
        v5 = *a4;
        v6 = a4[1];
        break;
      }
    }
  }

  if (v9 != (v6 - v5) >> 3)
  {
    a4[1] = v5;
  }

  return result;
}

void sub_2993A3530(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993A354C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  a3[1] = *a3;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v8 = (v5 - v4) >> 3;
    v9 = v8 - 1;
    if (v8 >= 1)
    {
      v10 = (v4 + 8 * v9);
      v11 = *v10;
      v12 = *v10 - 1;
      if (v12 >= 0)
      {
        v14 = (*(a1 + 16) - *(a1 + 8)) >> 3;
        if (v12 < v14)
        {
          v15 = v9;
          do
          {
            if (v15 != v9)
            {
              v11 -= v10[1];
            }

            v16 = *(*(a1 + 8) + 8 * v12);
            v17 = *(v16 + 8);
            v18 = *(v16 + 16);
            if (v17 == v18)
            {
              break;
            }

            while (v11 != (*(**v17 + 40))())
            {
              v17 += 16;
              if (v17 == v18)
              {
                v3 = a3[1];
                goto LABEL_27;
              }
            }

            v19 = *(*(*v17 + 8) + 2);
            v21 = a3[1];
            v20 = a3[2];
            if (v21 >= v20)
            {
              v22 = *a3;
              v23 = v21 - *a3;
              v24 = v23 >> 1;
              if (v23 >> 1 <= -2)
              {
                sub_299212A8C();
              }

              v25 = v20 - v22;
              if (v25 <= v24 + 1)
              {
                v26 = v24 + 1;
              }

              else
              {
                v26 = v25;
              }

              v27 = v25 >= 0x7FFFFFFFFFFFFFFELL;
              v28 = 0x7FFFFFFFFFFFFFFFLL;
              if (!v27)
              {
                v28 = v26;
              }

              if (v28)
              {
                sub_299212A48(a3, v28);
              }

              *(2 * v24) = v19;
              v3 = 2 * v24 + 2;
              memcpy(0, v22, v23);
              v29 = *a3;
              *a3 = 0;
              a3[1] = v3;
              a3[2] = 0;
              if (v29)
              {
                operator delete(v29);
              }
            }

            else
            {
              *v21 = v19;
              v3 = (v21 + 1);
            }

            a3[1] = v3;
            if (v15 <= 0)
            {
              break;
            }

            --v15;
            v10 = (*a2 + 8 * v15);
            v11 = *v10;
            v12 = *v10 - 1;
            if (v12 < 0)
            {
              break;
            }
          }

          while (v12 < v14);
        }
      }
    }

LABEL_27:
    if ((a2[1] - *a2) >> 3 != (v3 - *a3) >> 1)
    {
      a3[1] = *a3;
    }
  }
}

uint64_t sub_2993A3748(uint64_t a1, CFArrayRef theArray)
{
  *(a1 + 448) = *(a1 + 440);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    Mutable = *(a1 + 464);
    if (!Mutable)
    {
      Mutable = CFDataCreateMutable(0, 0);
      *(a1 + 464) = Mutable;
    }

    v36.length = CFDataGetLength(Mutable);
    v36.location = 0;
    CFDataDeleteBytes(Mutable, v36);
    __p = 0;
    v34 = 0;
    v35 = 0;
    v32 = 0;
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v8 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
        v9 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
        v10 = CFArrayGetValueAtIndex(ValueAtIndex, 1);
        Length = CFStringGetLength(v10);
        v12 = CFStringGetLength(v9);
        v13 = Length <= v12;
        if (Length <= v12)
        {
          v14 = v9;
        }

        else
        {
          v14 = v10;
        }

        if (v13)
        {
          v9 = v10;
        }

        CFStringGetCString(v14, v8, 1024, 0x8000100u);
        v15 = strlen(v8);
        sub_299266D00(&__p, &v32);
        v32 += v15 + 1;
        CFDataAppendBytes(*(a1 + 464), v8, v15 + 1);
        CFStringGetCString(v9, v8, 1024, 0x8000100u);
        v16 = strlen(v8);
        sub_299266D00(&__p, &v32);
        v32 += v16 + 1;
        CFDataAppendBytes(*(a1 + 464), v8, v16 + 1);
        free(v8);
      }
    }

    BytePtr = CFDataGetBytePtr(*(a1 + 464));
    v18 = *(a1 + 440);
    v19 = *(a1 + 448);
    v20 = (v19 - v18) >> 4;
    if (Count <= v20)
    {
      if (Count >= v20)
      {
        goto LABEL_27;
      }

      v26 = v18 + 16 * Count;
    }

    else
    {
      v21 = Count - v20;
      v22 = *(a1 + 456);
      if (v21 > (v22 - v19) >> 4)
      {
        if (!(Count >> 60))
        {
          v23 = v22 - v18;
          v24 = v23 >> 3;
          if (v23 >> 3 <= Count)
          {
            v24 = Count;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF0)
          {
            v25 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v24;
          }

          if (!(v25 >> 60))
          {
            operator new();
          }

          sub_29919600C();
        }

        sub_2993ADF20();
      }

      bzero(*(a1 + 448), 16 * v21);
      v26 = v19 + 16 * v21;
    }

    *(a1 + 448) = v26;
LABEL_27:
    v27 = __p;
    if (Count < 1)
    {
      if (!__p)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v28 = (*(a1 + 440) + 8);
      v29 = __p + 8;
      do
      {
        v30 = &BytePtr[*v29];
        *(v28 - 1) = &BytePtr[*(v29 - 1)];
        *v28 = v30;
        v28 += 2;
        v29 += 2;
        --Count;
      }

      while (Count);
    }

    v34 = v27;
    operator delete(v27);
LABEL_31:
    sub_2993AE550(a1 + 400);
  }

  return 1;
}

void sub_2993A3A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993A3A90(unsigned int a1, unsigned int a2, _BYTE *a3)
{
  if (a1 > 5)
  {
    return 0;
  }

  if (((1 << a1) & 0x25) != 0)
  {
LABEL_3:
    *a3 = a2;
    return 1;
  }

  if (((1 << a1) & 0x18) != 0)
  {
    if (a2 <= 713)
    {
      if (a2 == 711)
      {
        LOBYTE(a2) = 51;
        goto LABEL_3;
      }

      if (a2 == 713)
      {
        LOBYTE(a2) = 49;
        goto LABEL_3;
      }
    }

    else
    {
      switch(a2)
      {
        case 0x2D9u:
          LOBYTE(a2) = 53;
          goto LABEL_3;
        case 0x2CBu:
          LOBYTE(a2) = 52;
          goto LABEL_3;
        case 0x2CAu:
          LOBYTE(a2) = 50;
          goto LABEL_3;
      }
    }

    LOBYTE(a2) = a2 + 49;
    goto LABEL_3;
  }

  if (a2 - 97 <= 0x19)
  {
    goto LABEL_3;
  }

  v4 = a2 - 10123;
  result = dword_299427970[v4];
  v5 = aAdgjmptw[v4];
  if (result <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = result;
  }

  v7 = vdupq_n_s64(v6 - 1);
  v8 = -((v6 + 15) & 0xFFFFFFF0);
  v9 = xmmword_299427930;
  v10 = xmmword_299427940;
  v11 = xmmword_299427950;
  v12 = xmmword_299427960;
  v13 = xmmword_2993FDE60;
  v14 = xmmword_2993FDE70;
  v15 = xmmword_2993FCC10;
  v16 = xmmword_2993FCC00;
  v17 = a3 + 7;
  v18 = 15;
  v19 = vdupq_n_s64(0x10uLL);
  do
  {
    v20 = v18 - 15;
    v21 = vmovn_s64(vcgeq_u64(v7, v16));
    if (vuzp1_s8(vuzp1_s16(v21, *v7.i8), *v7.i8).u8[0])
    {
      *(v17 - 7) = v5 + v20;
    }

    if (vuzp1_s8(vuzp1_s16(v21, *&v7), *&v7).i8[1])
    {
      *(v17 - 6) = v5 + v20 + 1;
    }

    if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v15))), *&v7).i8[2])
    {
      *(v17 - 5) = v5 + v20 + 2;
      *(v17 - 4) = v5 + v20 + 3;
    }

    v22 = vmovn_s64(vcgeq_u64(v7, v14));
    if (vuzp1_s8(*&v7, vuzp1_s16(v22, *&v7)).i32[1])
    {
      *(v17 - 3) = v5 + v20 + 4;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(v22, *&v7)).i8[5])
    {
      *(v17 - 2) = v5 + v20 + 5;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v13)))).i8[6])
    {
      *(v17 - 1) = v5 + v20 + 6;
      *v17 = v5 + v20 + 7;
    }

    v23 = vmovn_s64(vcgeq_u64(v7, v12));
    if (vuzp1_s8(vuzp1_s16(v23, *v7.i8), *v7.i8).u8[0])
    {
      v17[1] = v5 + v20 + 8;
    }

    if (vuzp1_s8(vuzp1_s16(v23, *&v7), *&v7).i8[1])
    {
      v17[2] = v5 + v20 + 9;
    }

    if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v11))), *&v7).i8[2])
    {
      v17[3] = v5 + v20 + 10;
      v17[4] = v5 + v20 + 11;
    }

    v24 = vmovn_s64(vcgeq_u64(v7, v10));
    if (vuzp1_s8(*&v7, vuzp1_s16(v24, *&v7)).i32[1])
    {
      v17[5] = v5 + v20 + 12;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(v24, *&v7)).i8[5])
    {
      v17[6] = v5 + v20 + 13;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v9)))).i8[6])
    {
      v17[7] = v5 + v20 + 14;
      v17[8] = v5 + v18;
    }

    v14 = vaddq_s64(v14, v19);
    v15 = vaddq_s64(v15, v19);
    v16 = vaddq_s64(v16, v19);
    v13 = vaddq_s64(v13, v19);
    v12 = vaddq_s64(v12, v19);
    v11 = vaddq_s64(v11, v19);
    v10 = vaddq_s64(v10, v19);
    v9 = vaddq_s64(v9, v19);
    v18 += 16;
    v17 += 16;
  }

  while (v8 + v18 != 15);
  return result;
}

BOOL sub_2993A3DF8(uint64_t a1, int a2, unsigned int a3)
{
  v4 = *(a1 + 40);
  if (v4 == 2)
  {
    result = 1;
    if (a2 != 39 && a2 - 97 >= 0x1B)
    {
      v6 = *(*(a1 + 488) + 8);
      v7 = v6 > 7;
      v8 = (1 << v6) & 0x8C;
      if (!v7 && v8 != 0)
      {
        return a2 == 59;
      }

      return 0;
    }
  }

  else
  {
    if (a2 != 39 || (v4 - 3) < 2)
    {
      return sub_2993A3EB4(v4, a2);
    }

    if ((a3 & 0x80000000) != 0)
    {
      return 0;
    }

    v10 = *(*(a1 + 8) + 8 * a3);
    if (!v10)
    {
      return 0;
    }

    return v10[2] != v10[1] || v10[5] != v10[4] || v10[8] != v10[7];
  }

  return result;
}

BOOL sub_2993A3EB4(int a1, int a2)
{
  result = 1;
  if (a1 <= 2)
  {
    if (a1)
    {
      v8 = (a2 - 97) < 0x1A || (a2 - 10123) < 8;
      return a1 != 1 || v8;
    }

    return (a2 - 97) < 0x1A;
  }

  if ((a1 - 3) >= 2)
  {
    if (a1 != 5)
    {
      return result;
    }

    return (a2 - 97) < 0x1A;
  }

  if ((a2 - 12549) >= 0x25)
  {
    v4 = 10;
    v5 = word_299413998;
    while (*v5 != a2)
    {
      ++v5;
      v4 -= 2;
      if (!v4)
      {
        v5 = &unk_2994139A2;
        break;
      }
    }

    v6 = v5 != &unk_2994139A2;
    if (v5 == &unk_2994139A2)
    {
      v5 = 0;
    }

    return v5 - word_299413998 != -2 && v6;
  }

  return result;
}

void sub_2993A3F74(uint64_t a1, uint64_t (***a2)(float **), int a3, CFArrayRef *a4)
{
  v6 = (*a2)[1](a2);
  v47 = v6;
  v7 = *(a1 + 864);
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  v8 = *(a1 + 824);
  if (v8)
  {
    sub_29921FB44((v8 + 144));
    *(v8 + 192) = 0;
    sub_29921FA70(v8);
  }

  v9 = *(a1 + 832);
  if (v9)
  {
    (*(*v9 + 16))(v9);
  }

  v10 = *(a1 + 56) - *(a1 + 48);
  v46 = (v10 >> 1) - 1;
  if (v46 < 0)
  {
    goto LABEL_68;
  }

  v11 = *(*(a1 + 8) + 8 * ((v10 >> 1) - 1));
  if (!v11 || (*(v11 + 168) - 1) > 1)
  {
    goto LABEL_68;
  }

  v12 = 0;
  v13 = word_299413998;
  while (*v13 != v6)
  {
    v12 -= 2;
    ++v13;
    if (v12 == -10)
    {
      goto LABEL_68;
    }
  }

  if (-v12 == -2)
  {
LABEL_68:
    *(a1 + 784) = xmmword_299403150;
    sub_29922E664((a1 + 48), &v47);
    *(a1 + 552) = a3;
    *(a1 + 496) = (v10 >> 1);
    v48 = (a1 + 80);
    LODWORD(v49) = 0;
    sub_2993AE5AC(&v48);
    operator new();
  }

  v14 = *(v11 + 32);
  v15 = *(v11 + 40);
  while (v14 != v15)
  {
    if ((v15 - *(v11 + 32)) == 16)
    {
      break;
    }

    if (v6 <= 713)
    {
      if (v6 == 711)
      {
        v16 = 51;
      }

      else
      {
        if (v6 != 713)
        {
LABEL_28:
          v16 = v6 + 49;
          goto LABEL_29;
        }

        v16 = 49;
      }
    }

    else
    {
      switch(v6)
      {
        case 729:
          v16 = 53;
          break;
        case 715:
          v16 = 52;
          break;
        case 714:
          v16 = 50;
          break;
        default:
          goto LABEL_28;
      }
    }

LABEL_29:
    v17 = *v14;
    v18 = *(*v14 + 8);
    v19 = sub_2993B2448(*(a1 + 32), v18, v16);
    v20 = v18[1];
    if (v19)
    {
      v21 = *(a1 + 760);
      v22 = *(a1 + 768);
      if (v21 != v22)
      {
        v23 = v19[1];
        do
        {
          v24 = v21[1];
          if (*v21 != v24 && *(v24 - 2) == v20)
          {
            *(v24 - 2) = v23;
          }

          v21 += 3;
        }

        while (v21 != v22);
      }

      v17[1] = v19;
      ++v14;
    }

    else
    {
      v25 = *(a1 + 760);
      v26 = *(a1 + 768);
      while (v25 != v26 && (v26 - *(a1 + 760)) != 24)
      {
        v27 = v25[1];
        if (*v25 == v27 || *(v27 - 2) != v20)
        {
          v25 += 3;
        }

        else
        {
          if (v25 + 3 == v26)
          {
            v31 = v26;
            v26 = v25;
          }

          else
          {
            v28 = v25;
            do
            {
              v29 = v28 + 24;
              sub_29922323C(v28, (v28 + 24));
              v30 = v28 + 48;
              v28 += 24;
            }

            while (v30 != v26);
            v31 = *(a1 + 768);
            v26 = v29;
          }

          if (v31 != v26)
          {
            v32 = v31;
            do
            {
              v34 = *(v32 - 3);
              v32 -= 3;
              v33 = v34;
              if (v34)
              {
                *(v31 - 2) = v33;
                operator delete(v33);
              }

              v31 = v32;
            }

            while (v32 != v26);
          }

          *(a1 + 768) = v26;
        }
      }

      v35 = v46 - (*(*v17 + 40))(v17);
      v36 = *(*(a1 + 8) + 8 * v35);
      v37 = v36[1];
      v38 = v36[2];
      if (v37 != v38)
      {
        do
        {
          v39 = *v37;
          v37 += 2;
          sub_2993AFC30((v39 + 32), v17);
        }

        while (v37 != v38);
        v36 = *(*(a1 + 8) + 8 * v35);
      }

      v40 = v36[4];
      v41 = v36[5];
      while (v40 != v41)
      {
        v42 = *v40;
        v40 += 2;
        sub_2993AFC30((v42 + 32), v17);
      }

      sub_2992B4EF4(&v48, v14 + 1, *(v11 + 40), v14);
      v15 = v43;
      v44 = *(v11 + 40);
      if (v44 != v43)
      {
        do
        {
          v45 = *(v44 - 1);
          if (v45)
          {
            sub_2991A893C(v45);
          }

          --v44;
        }

        while (v44 != v15);
      }

      *(v11 + 40) = v15;
    }
  }

  if (!*(a1 + 784))
  {
    sub_2993A5BA4(a1, ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1);
  }
}

void sub_2993A4C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993A4C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 480) == 0xFFFFLL)
  {
    *(a1 + 480) = a3;
  }

  if (*(a2 + 112) == *(a2 + 104))
  {
    operator new();
  }

  if (*(a1 + 40) == 2)
  {
    v3 = *(a1 + 488);
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
  }
}

void sub_2993A4DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2991A893C(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993A4DE0(uint64_t a1, unsigned int a2, void *a3, unsigned int a4)
{
  v4 = a4;
  v7 = *(a1 + 40);
  if (a2 == 39)
  {
    if ((a4 & 0x80000000) == 0)
    {
      if ((*(a1 + 553) & 0x80) != 0)
      {
        *(a1 + 556) = 1;
      }

      v8 = *(*(a1 + 8) + 8 * a4);
      v9 = v8[1];
      v10 = v8[2];
      if (v9 != v10)
      {
        v11 = v8[1];
        do
        {
          v12 = *v11++;
          ++v12[16];
          if ((*(*v12 + 96))(v12))
          {
            v13 = 1;
          }

          else
          {
            v13 = 4;
          }

          sub_2992B4184(&a3[v13], v9);
          v9 = v11;
        }

        while (v11 != v10);
      }

      v15 = v8[4];
      v14 = v8[5];
      if (v15 != v14)
      {
        v16 = v8[4];
        do
        {
          v17 = *v16++;
          ++v17[16];
          if ((*(*v17 + 96))(v17))
          {
            v18 = 1;
          }

          else
          {
            v18 = 4;
          }

          sub_2992B4184(&a3[v18], v15);
          v15 = v16;
        }

        while (v16 != v14);
      }

      v20 = v8[10];
      v19 = v8[11];
      if (v20 != v19)
      {
        v21 = v8[10];
        do
        {
          v22 = *v21++;
          ++v22[16];
          if ((*(*v22 + 96))(v22))
          {
            v23 = 1;
          }

          else
          {
            v23 = 4;
          }

          sub_2992B4184(&a3[v23], v20);
          v20 = v21;
        }

        while (v21 != v19);
      }

      v25 = v8[7];
      v24 = v8[8];
      if (v25 != v24)
      {
        v26 = v8[7];
        do
        {
          v27 = *v26++;
          ++v27[16];
          if ((*(*v27 + 96))(v27))
          {
            v28 = 1;
          }

          else
          {
            v28 = 4;
          }

          sub_2992B4184(&a3[v28], v25);
          v25 = v26;
        }

        while (v26 != v24);
      }

      sub_2992912B4(v8 + 1);
      sub_2992912B4(v8 + 4);
    }

    if (v7 == 2)
    {
      v29 = *(a1 + 488);
      *(v29 + 32) = 0;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
    }

    return;
  }

  v30 = sub_2993A3A90(*(a1 + 40), a2, *(a1 + 72));
  if (v7 != 2)
  {
    v31 = v30;
    v32 = *(a1 + 40);
    v108 = v7;
    if ((v4 & 0x80000000) != 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = *(*(a1 + 8) + 8 * v4);
      if (v33 && *(v33 + 16) == *(v33 + 8) && *(v33 + 40) == *(v33 + 32) && *(v33 + 64) == *(v33 + 56))
      {
        v35 = *(v33 + 80);
        v34 = *(v33 + 88);
        v36 = v34 == v35;
        if (v34 == v35)
        {
          v37 = 0;
        }

        else
        {
          v37 = *(*(a1 + 8) + 8 * v4);
        }

        v38 = !v36 || (v32 - 3) > 1;
        if (!v38)
        {
          if (*(v33 + 112) == *(v33 + 104))
          {
            return;
          }

          v33 = 0;
          v44 = v4 + 1;
          goto LABEL_65;
        }

        v33 = v37;
      }
    }

    v44 = (v4 + 1);
    if (v32 == 1 && v30 >= 2)
    {
      if (v44 >= 0xFF)
      {
        sub_2991D6EC4("bitset set argument out of range");
      }

      *(a1 + 8 * ((v4 + 1) >> 6) + 504) |= 1 << (v4 + 1);
    }

    else if (v32 != 1)
    {
      goto LABEL_65;
    }

    v45 = *(a1 + 608);
    if (v45)
    {
      (**v45)();
    }

LABEL_65:
    v106 = v31;
    if (v31 >= 1)
    {
      v46 = 0;
      v47 = v44 - 1;
      while (1)
      {
        v48 = *(*(a1 + 72) + v46);
        if (*(a1 + 40) != 3)
        {
          break;
        }

        if (v33)
        {
          v49 = *(v33 + 8);
          v50 = *(v33 + 16);
          if (v50 == v49)
          {
            goto LABEL_80;
          }
        }

        sub_2993A7F04(a1, v33, v44, *(*(a1 + 72) + v46), 0);
LABEL_81:
        if (++v46 == v31)
        {
          goto LABEL_82;
        }
      }

      sub_2993A7F04(a1, v33, v44, *(*(a1 + 72) + v46), 0);
      if (!v33 || (*(v33 + 168) - 1) < 2)
      {
        goto LABEL_81;
      }

      if (v47 <= (*(a1 + 16) - *(a1 + 8)) >> 3)
      {
        v51 = 0;
        v52 = word_299413998;
        while (*v52 != *(*(a1 + 48) + 2 * v47))
        {
          v51 -= 2;
          ++v52;
          if (v51 == -10)
          {
            goto LABEL_79;
          }
        }

        if (-v51 != -2)
        {
          goto LABEL_81;
        }
      }

LABEL_79:
      v49 = *(v33 + 8);
      v50 = *(v33 + 16);
LABEL_80:
      sub_2993A8DC4(a1, v49, v50, v48, v44, 0, 1.0);
      sub_2993A8DC4(a1, *(v33 + 32), *(v33 + 40), v48, v44, 0, 1.0);
      sub_2993A8DC4(a1, *(v33 + 56), *(v33 + 64), v48, v44, 1, 1.0);
      sub_2993A8DC4(a1, *(v33 + 80), *(v33 + 88), v48, v44, 1, 1.0);
      goto LABEL_81;
    }

LABEL_82:
    if (v32 == 3)
    {
      v43 = 1;
      v7 = v108;
      v53 = 1;
      goto LABEL_166;
    }

    v7 = v108;
    if (v33 && *(v33 + 16) == *(v33 + 8) && *(v33 + 40) != *(v33 + 32))
    {
      if (a3[2] == a3[1] && a3[5] == a3[4])
      {
        v55 = v4;
        if (v31 >= 1)
        {
          v56 = 0;
          do
          {
            sub_2993A7F04(a1, v33, v44, *(*(a1 + 72) + v56++), 1);
          }

          while (v106 != v56);
        }

        if (v32 == 4)
        {
          v53 = 1;
          v43 = 1;
          goto LABEL_166;
        }

        v57 = *(a1 + 40);
        if ((v57 == 5 || v57 == 0) && a3[5] != a3[4] && *(v33 + 64) == *(v33 + 56) && (*(*(**(v33 + 32) + 8) + 8) & 4) != 0)
        {
          sub_2993A3A90(v57, *(*(a1 + 48) + 2 * v4), v112);
          BYTE1(v112[0]) = **(a1 + 72);
          v59 = *(a1 + 32);
          v60 = **v59;
          if (v60)
          {
            v61 = v112;
            v62 = 1;
            do
            {
              v63 = sub_2993B2448(v59, v60, *v61);
              v60 = v63;
              if ((v62 & 1) == 0)
              {
                break;
              }

              v62 = 0;
              v61 = (v112 + 1);
            }

            while (v63);
            v4 = v55;
            if (v63)
            {
              if ((v63[4] & 2) != 0)
              {
                sub_2993A7D04(a1, a3, v63, 0);
              }
            }
          }
        }

        v54 = 1;
LABEL_121:
        if (v54 && *(a1 + 40) == 1 && a3[2] == a3[1])
        {
          v103 = a3[4];
          v104 = a3[5];
          while (v103 != v104)
          {
            v105 = *v103;
            v103 += 2;
            *(v105 + 24) = 0;
          }
        }

        v43 = 1;
        v53 = 1;
        if ((v32 - 3) < 2)
        {
          goto LABEL_166;
        }

        goto LABEL_125;
      }

      v54 = 1;
    }

    else
    {
      v54 = 0;
    }

    if (v32 == 4)
    {
      v53 = 1;
      v43 = 1;
      goto LABEL_166;
    }

    goto LABEL_121;
  }

  sub_2993A0E8C(*(a1 + 488), **(a1 + 72), v112);
  if (v112[0] != v112[1])
  {
    operator new();
  }

  v39 = *(a1 + 488);
  if (*(v39 + 48))
  {
    v40 = v4;
    sub_2993A0CA4(v39, **(a1 + 72), &__p);
    v41 = __p;
    v42 = v111;
    if (__p == v111)
    {
      goto LABEL_53;
    }

    do
    {
      sub_2993A7D04(a1, a3, *v41++, 0);
    }

    while (v41 != v42);
    if (__p == v111)
    {
LABEL_53:
      operator new();
    }

    if (__p)
    {
      v111 = __p;
      operator delete(__p);
    }

    v43 = 1;
    v4 = v40;
  }

  else
  {
    v43 = 0;
  }

  if (v112[0])
  {
    v112[1] = v112[0];
    operator delete(v112[0]);
  }

  if ((*(a1 + 40) - 3) < 2)
  {
    v53 = 1;
    goto LABEL_166;
  }

LABEL_125:
  if (*(a1 + 472) == 1)
  {
    sub_2993A808C(a1, a3 + 1, a3, 1);
    sub_2993A808C(a1, a3 + 4, a3, 0);
    v53 = 0;
    if (v7 == 2)
    {
      goto LABEL_167;
    }

    v64 = a3[16];
    if (v64)
    {
      v107 = v4;
      v65 = a3[2] - a3[1];
      if (v65)
      {
        v66 = 0;
        v67 = v65 >> 4;
        if (v67 <= 1)
        {
          i = 1;
        }

        else
        {
          i = v67;
        }

        v69 = &off_29EF15F80;
        v109 = i;
        do
        {
          v70 = a3[1] + 16 * v66;
          if (v64 > (*(**v70 + 40))())
          {
            v71 = *(*(*v70 + 8) + 2);
            v72 = &v69[2 * v71];
            v73 = &(&off_29EF13DA0)[2 * v71];
            if (*(a1 + 40) == 5)
            {
              v74 = v72;
            }

            else
            {
              v74 = v73;
            }

            v75 = *v74;
            if ((*(**v70 + 64))() == 2)
            {
              v76 = *(*v70 + 112);
              v77 = &v69[2 * v76];
              v78 = &(&off_29EF13DA0)[2 * v76];
              if (*(*v70 + 20) == 2)
              {
                v78 = v77;
              }

              v79 = *v78;
            }

            else
            {
              v79 = 0;
            }

            v80 = *v75 - 97;
            v38 = v80 > 0xE;
            v81 = (1 << v80) & 0x4011;
            if (!v38 && v81 != 0)
            {
              v83 = v69;
              v84 = *(*(a1 + 8) + 8 * (v64 - (*(**v70 + 40))()));
              v85 = v84[1];
              v86 = v84[2];
              while (v85 != v86)
              {
                sub_2993AA8B4(a1, a3, v75, v79, v85);
                v85 += 2;
              }

              v87 = v84[4];
              v88 = v84[5];
              v69 = v83;
              for (i = v109; v87 != v88; v87 += 2)
              {
                sub_2993AA8B4(a1, a3, v75, v79, v87);
              }
            }
          }

          ++v66;
        }

        while (v66 != i);
      }

      v89 = sub_2993A3A90(*(a1 + 40), *(*(a1 + 48) + 2 * v64), *(a1 + 72));
      if (v89 >= 1)
      {
        v90 = v89;
        do
        {
          v91 = v90 - 1;
          v92 = *(a1 + 72);
          v93 = *(v92 + v90 - 1);
          if (v93 == 118 || v93 == 105)
          {
            *(v92 + v90) = 0;
            v94 = *(*(a1 + 8) + 8 * v64 - 8);
            v95 = v94[1];
            v96 = v94[2];
            while (v95 != v96)
            {
              sub_2993AA8B4(a1, a3, (*(a1 + 72) + v91), (*(a1 + 72) + v91), v95);
              v95 += 2;
            }

            v97 = v94[4];
            v98 = v94[5];
            while (v97 != v98)
            {
              sub_2993AA8B4(a1, a3, (*(a1 + 72) + v91), (*(a1 + 72) + v91), v97);
              v97 += 2;
            }
          }

          v38 = v90-- <= 1;
        }

        while (!v38);
      }

      v53 = 0;
      v4 = v107;
    }

    else
    {
      v53 = 0;
    }

    goto LABEL_187;
  }

  v53 = 0;
LABEL_166:
  if (v7 == 2)
  {
LABEL_167:
    if ((v43 & 1) == 0)
    {
      goto LABEL_168;
    }

LABEL_191:
    *(a1 + 480) = 0xFFFFLL;
    return;
  }

LABEL_187:
  if (a3[2] != a3[1] || a3[5] != a3[4] || a3[8] != a3[7] || a3[11] != a3[10])
  {
    goto LABEL_191;
  }

LABEL_168:
  if (!v53)
  {
    goto LABEL_185;
  }

  if ((v4 & 0x80000000) == 0 && a3[8] == a3[7])
  {
    v99 = v4;
    v100 = (v4 + 1);
    while (1)
    {
      v101 = *(*(a1 + 8) + 8 * v99);
      if (v101[2] != v101[1])
      {
        *(a1 + 480) = v100;
LABEL_185:
        sub_2993A4C68(a1, a3, (v4 + 1));
        return;
      }

      if (v101[5] == v101[4])
      {
        break;
      }

      if (v99 + 1 == v100)
      {
        goto LABEL_175;
      }

LABEL_176:
      v38 = v99-- <= 0;
      if (v38)
      {
        return;
      }
    }

    if (v101[14] == v101[13] || v99 + 1 != v100)
    {
      goto LABEL_176;
    }

LABEL_175:
    v100 = v99;
    goto LABEL_176;
  }
}

void sub_2993A5B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (a19)
  {
    sub_2991A893C(a19);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_2993A5BA4(const void **result, unint64_t a2)
{
  v108 = *MEMORY[0x29EDCA608];
  if (a2 > 0xC)
  {
    return result;
  }

  v3 = result;
  v4 = result + 70;
  result[71] = result[70];
  result[74] = result[73];
  if (a2)
  {
    v5 = result[1];
    if (result[2] == v5 || (v6 = *v5, (*(*v5 + 168) - 1) > 1))
    {
      __p = 0;
      v103 = 0;
      v104 = 0;
      v107 = 0;
      v106 = 0;
      sub_29922E664(&__p, word_299427998);
      v101[0] = 0;
      v101[1] = 0;
      v100 = v101;
      v7 = v103;
      if (v103 != __p)
      {
        v8 = a2 + 1;
        do
        {
          v11 = *(v7 - 1);
          v9 = v7 - 1;
          v10 = v11;
          if (v11 == 0xFFFF)
          {
            v12 = a2;
          }

          else
          {
            v12 = v10;
          }

          LOWORD(v105) = v12;
          v103 = v9;
          v13 = v3[1];
          v14 = v13[v12];
          v15 = (v14 + 136);
          if (v12 == a2)
          {
            v16 = v13[a2];
            if (v16[2] != v16[1] && v16[5] != v16[4])
            {
              sub_2993A99A4(&v100, *(v14 + 136), (v14 + 144));
              v17 = *(v3[1] + a2);
              v18 = *(v17 + 32);
              v19 = *(v17 + 40);
              while (v18 != v19 && (*(**v18 + 64))() != 2)
              {
                if (*(*(*v18 + 8) + 8))
                {
                  v20 = (*(**v18 + 40))(*v18);
                  v21 = v8 - v20;
                  if (v21 >= 1 && *(*(v3[1] + (v21 - 1)) + 16) != *(*(v3[1] + (v21 - 1)) + 8))
                  {
                    v99 = v8 - v20;
                    sub_29920BF78(&v100, &v99, &v99);
                  }
                }

                v18 += 2;
              }

              v15 = &v100;
            }
          }

          v24 = *v15;
          v22 = v15 + 1;
          v23 = v24;
          if (v24 != v22)
          {
            do
            {
              v99 = *(v23 + 13);
              if (v99)
              {
                if ((*(&v106 + --v99) & 1) == 0)
                {
                  sub_29922E664(&__p, &v99);
                  *(&v106 + v99) = 1;
                }
              }

              else
              {
                sub_29922E664(v3 + 73, &v105);
              }

              v25 = v23[1];
              if (v25)
              {
                do
                {
                  v26 = v25;
                  v25 = *v25;
                }

                while (v25);
              }

              else
              {
                do
                {
                  v26 = v23[2];
                  v68 = *v26 == v23;
                  v23 = v26;
                }

                while (!v68);
              }

              v23 = v26;
            }

            while (v26 != v22);
          }

          v7 = v103;
        }

        while (v103 != __p);
      }

      v27 = v3[73];
      v28 = v3[74];
      while (v27 != v28)
      {
        v29 = *v27;
        v30 = *(v3[1] + v29);
        v31 = v30 + 1;
        v32 = 1;
        if (v30[2] == v30[1])
        {
          v32 = 4;
          v31 = v30 + 4;
        }

        v33 = v30[v32];
        for (i = v31[1]; v33 != i; v33 += 2)
        {
          if (v29 + 1 == (*(**v33 + 40))())
          {
            v105 = *v33;
            sub_2993A32F8(v4, &v105);
          }
        }

        if (*(v3[6] + v29) == 39 && v30[2] != v30[1])
        {
          v36 = v30[4];
          for (j = v30[5]; v36 != j; v36 += 2)
          {
            if (v29 + 1 == (*(**v36 + 40))() && (*(*(*v36 + 1) + 8) & 1) != 0)
            {
              v105 = *v36;
              sub_2993A32F8(v4, &v105);
            }
          }
        }

        ++v27;
      }

      v37 = v4[1];
      v38 = *v4;
      v39 = v37 - *v4;
      if (v37 == *v4)
      {
        if (a2 >= 6)
        {
          v64 = 6;
        }

        else
        {
          v64 = a2;
        }

        do
        {
          while (1)
          {
            v65 = *(v3[1] + a2);
            v66 = *(v65 + 56);
            v67 = *(v65 + 64);
            if (v66 != v67)
            {
              break;
            }

            if (!--v64)
            {
              goto LABEL_147;
            }
          }

          do
          {
            if (v64 + 1 == (*(**v66 + 40))() && (*(**v66 + 96))())
            {
              LOWORD(v105) = v64;
              sub_29922E664(v3 + 73, &v105);
              v105 = *v66;
              sub_2993A32F8(v4, &v105);
            }

            v66 += 2;
          }

          while (v66 != v67);
          v68 = v3[70] != v3[71] || --v64 == 0;
        }

        while (!v68);
        goto LABEL_147;
      }

      if (*(v3 + 10) == 1)
      {
        if ((*(**v38 + 96))(*v38))
        {
          v40 = v3[73];
          v41 = v3[74];
          if (v40 != v41)
          {
            v42 = v40 + 1;
            if (v40 + 1 != v41)
            {
              v43 = *v40;
              v44 = v40 + 1;
              do
              {
                v46 = *v44++;
                v45 = v46;
                v47 = v43 >= v46;
                if (v43 <= v46)
                {
                  v43 = v45;
                }

                if (!v47)
                {
                  v40 = v42;
                }

                v42 = v44;
              }

              while (v44 != v41);
            }
          }

          v48 = *v40;
          if (v48 >= 2)
          {
            for (k = 1; k != v48; ++k)
            {
              v50 = v3[73];
              v51 = v3[74];
              if (v50 != v51)
              {
                while (*v50 != k)
                {
                  if (++v50 == v51)
                  {
                    goto LABEL_68;
                  }
                }
              }

              if (v50 == v51)
              {
LABEL_68:
                v52 = *(v3[1] + k);
                v53 = *(v52 + 8);
                for (m = *(v52 + 16); v53 != m; v53 += 2)
                {
                  if (k + 1 == (*(**v53 + 40))())
                  {
                    v105 = *v53;
                    sub_2993A32F8(v4, &v105);
                  }
                }
              }
            }
          }
        }

        v55 = *v3[1];
        v56 = *(v55 + 32);
        v57 = *(v55 + 40);
        while (v56 != v57)
        {
          v58 = v3[70];
          v59 = v3[71];
          if (v58 != v59)
          {
            while (*v58 != *v56)
            {
              if (++v58 == v59)
              {
                goto LABEL_80;
              }
            }
          }

          if (v58 == v59)
          {
LABEL_80:
            v105 = *v56;
            sub_2993A32F8(v4, &v105);
          }

          v56 += 2;
        }

        goto LABEL_147;
      }

      v105 = sub_2993A97E8;
      sub_29921B920(v38, v37, &v105, 126 - 2 * __clz(v39 >> 3), 1);
      v69 = **v4;
      if ((*(*v69 + 96))(v69))
      {
        if (v39 != 8)
        {
          v70 = (*(*v69 + 40))(v69);
          v71 = v3[70] + 8;
          if (v3[71] != v71)
          {
            v72 = v70;
            v73 = v70;
            v74 = *(v3[1] + v70 - 1);
            do
            {
              v75 = (*(**v71 + 40))();
              if (v75 < v72)
              {
                v76 = v75;
                if (v73 == (v3[2] - v3[1]) >> 3)
                {
LABEL_112:
                  v77 = v3[71];
                  v78 = &v77[-v71 - 8];
                  if (v77 != (v71 + 8))
                  {
                    memmove(v71, (v71 + 8), &v77[-v71 - 8]);
                  }

                  v3[71] = &v78[v71];
                  v79 = v76 - 1;
                  if (!((v76 - 1) >> 16))
                  {
                    v80 = v3[73];
                    v81 = v3[74];
                    if (v80 != v81)
                    {
                      while (*v80 != v79)
                      {
                        if (++v80 == v81)
                        {
                          goto LABEL_124;
                        }
                      }

                      if (v80 != v81)
                      {
                        for (n = v80 + 1; n != v81; ++n)
                        {
                          v85 = *n;
                          if (v79 != v85)
                          {
                            *v80++ = v85;
                          }
                        }
                      }
                    }

                    if (v80 != v81)
                    {
                      v3[74] = v80;
                    }
                  }

                  continue;
                }

                v82 = *(v74 + 8);
                v83 = *(v74 + 16);
                while (v82 != v83)
                {
                  if (v76 + (*(**v82 + 40))() == v73)
                  {
                    goto LABEL_112;
                  }

                  v82 += 16;
                }
              }

              v71 += 8;
LABEL_124:
              ;
            }

            while (v71 != v3[71]);
          }
        }
      }

      else
      {
        v86 = v3[2] - v3[1];
        if (v86)
        {
          v87 = 0;
          v88 = v86 >> 3;
          if (v88 >= 6)
          {
            v88 = 6;
          }

          if (v88 <= 1)
          {
            v89 = 1;
          }

          else
          {
            v89 = v88;
          }

          do
          {
            v90 = *(v3[1] + v87);
            v91 = *(v90 + 56);
            v92 = *(v90 + 64);
            v93 = v87 + 1;
            while (v91 != v92)
            {
              if (v93 == (*(**v91 + 40))() && (*(**v91 + 96))())
              {
                LOWORD(v105) = v87;
                sub_29922E664(v3 + 73, &v105);
              }

              v91 += 16;
            }

            ++v87;
          }

          while (v93 != v89);
        }
      }

LABEL_147:
      sub_29921B8CC(&v100, v101[0]);
      if (__p)
      {
        v103 = __p;
        operator delete(__p);
      }

      goto LABEL_149;
    }
  }

  else
  {
    v6 = *result[1];
  }

  v60 = v6[1];
  v61 = v6[2];
  while (v60 != v61)
  {
    __p = *v60;
    sub_2993A32F8(v4, &__p);
    v60 += 2;
  }

  v62 = v6[4];
  v63 = v6[5];
  while (v62 != v63)
  {
    __p = *v62;
    sub_2993A32F8(v4, &__p);
    v62 += 2;
  }

  LOWORD(__p) = 0;
  sub_29922E664(v3 + 73, &__p);
LABEL_149:
  v94 = v3[70];
  v95 = v3[71];
  v96 = 126 - 2 * __clz((v95->i64 - v94) >> 3);
  if (v95 == v94)
  {
    v97 = 0;
  }

  else
  {
    v97 = v96;
  }

  v98 = sub_2993A9860;
  if ((*(v3 + 10) - 3) < 2)
  {
    v98 = sub_2993A97E8;
  }

  __p = v98;
  return sub_29921B920(v94, v95, &__p, v97, 1);
}

void sub_2993A65C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15)
{
  sub_29921B8CC(&a11, a12);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993A664C(uint64_t a1, uint64_t a2)
{
  sub_2991D7954(v135);
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = (*(a2 + 56) - v4) >> 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = CFStringCreateWithCharacters(0, v4, v5);
  sub_299277A90(v6, &__s);
  v7 = sub_2991C0E9C(&v136, "-------------------- input = ", 29);
  v8 = strlen(__s);
  v9 = sub_2991C0E9C(v7, __s, v8);
  v10 = sub_2991C0E9C(v9, " ------------------", 19);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v131, MEMORY[0x29EDC93D0]);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v131);
  std::ostream::put();
  std::ostream::flush();
  CFRelease(v6);
  if (*(a2 + 760) != *(a2 + 768))
  {
    v12 = sub_2991C0E9C(&v136, "-------------------- nbests------------------", 45);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v131, MEMORY[0x29EDC93D0]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v131);
    std::ostream::put();
    std::ostream::flush();
    v14 = *(a2 + 760);
    v15 = *(a2 + 768);
    if (v14 != v15)
    {
      v16 = MEMORY[0x29EDC93D0];
      do
      {
        v17 = *v14;
        v18 = v14[1];
        while (v17 != v18)
        {
          sub_2993AD7C0(&v131, *(a2 + 40), *v17);
          if ((v133 & 0x80u) == 0)
          {
            locale = &v131;
          }

          else
          {
            locale = v131.__locale_;
          }

          if ((v133 & 0x80u) == 0)
          {
            v20 = sub_2991C0E9C(&v136, locale, v133);
          }

          else
          {
            v20 = sub_2991C0E9C(&v136, locale, v132);
          }

          sub_2991C0E9C(v20, " ", 1);
          if (v133 < 0)
          {
            operator delete(v131.__locale_);
          }

          ++v17;
        }

        std::ios_base::getloc((&v136 + *(v136 - 24)));
        v21 = std::locale::use_facet(&v131, v16);
        (v21->__vftable[2].~facet_0)(v21, 10);
        std::locale::~locale(&v131);
        std::ostream::put();
        std::ostream::flush();
        v14 += 3;
      }

      while (v14 != v15);
    }
  }

  v22 = *(a2 + 8);
  v124 = a1;
  v126 = *(a2 + 16);
  if (v22 != v126)
  {
    v23 = 0;
    v24 = MEMORY[0x29EDC93D0];
    do
    {
      v129 = *v22;
      sub_2993AEC04(&v131, *v22 + 136);
      v25 = sub_2991C0E9C(&v136, "syllables ending with input char ", 33);
      sub_299277B3C(&__p, (*(a2 + 48) + 2 * v23), 1uLL);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = sub_2991C0E9C(v25, p_p, HIBYTE(__p.__r_.__value_.__r.__words[2]), v124);
      }

      else
      {
        v27 = sub_2991C0E9C(v25, p_p, __p.__r_.__value_.__l.__size_, v124);
      }

      v28 = sub_2991C0E9C(v27, " at pos ", 8);
      v29 = MEMORY[0x29C29BD60](v28, v23);
      v30 = sub_2991C0E9C(v29, ": ", 2);
      std::ios_base::getloc((v30 + *(*v30 - 24)));
      v31 = std::locale::use_facet(&v141, v24);
      (v31->__vftable[2].~facet_0)(v31, 10);
      std::locale::~locale(&v141);
      std::ostream::put();
      std::ostream::flush();
      v128 = v23;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v32 = v129[1];
      v33 = v129[2];
      while (v32 != v33)
      {
        sub_2993AD888(&__p, "complete syllable: ", *v32);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = &__p;
        }

        else
        {
          v34 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          sub_2991C0E9C(&v136, v34, HIBYTE(__p.__r_.__value_.__r.__words[2]));
        }

        else
        {
          sub_2991C0E9C(&v136, v34, __p.__r_.__value_.__l.__size_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v32 += 2;
      }

      v35 = v129[4];
      v36 = v129[5];
      while (v35 != v36)
      {
        sub_2993AD888(&__p, "incomplete syllable: ", *v35);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &__p;
        }

        else
        {
          v37 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          sub_2991C0E9C(&v136, v37, HIBYTE(__p.__r_.__value_.__r.__words[2]));
        }

        else
        {
          sub_2991C0E9C(&v136, v37, __p.__r_.__value_.__l.__size_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v38 = *(a2 + 40);
        if ((v38 - 3) >= 2)
        {
          v39 = (*(**v35 + 48))(*v35, 2 * (v38 == 5), 0);
          if (v39)
          {
            for (i = 0; i < v39; ++i)
            {
              v41 = (*(**v35 + 56))(*v35, i);
              sub_2993AD7C0(&__p, *(a2 + 40), v41);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v42 = &__p;
              }

              else
              {
                v42 = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v43 = sub_2991C0E9C(&v136, v42, HIBYTE(__p.__r_.__value_.__r.__words[2]));
              }

              else
              {
                v43 = sub_2991C0E9C(&v136, v42, __p.__r_.__value_.__l.__size_);
              }

              sub_2991C0E9C(v43, ", ", 2);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }

          std::ios_base::getloc((&v136 + *(v136 - 24)));
          v44 = std::locale::use_facet(&__p, v24);
          (v44->__vftable[2].~facet_0)(v44, 10);
          std::locale::~locale(&__p);
          std::ostream::put();
          std::ostream::flush();
        }

        v35 += 2;
      }

      v127 = v22;
      v46 = v129[7];
      v45 = v129[8];
      while (v46 != v45)
      {
        sub_2993AD888(&__p, "Autocorrected Complete syllable: ", *v46);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = &__p;
        }

        else
        {
          v47 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          sub_2991C0E9C(&v136, v47, HIBYTE(__p.__r_.__value_.__r.__words[2]));
        }

        else
        {
          sub_2991C0E9C(&v136, v47, __p.__r_.__value_.__l.__size_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v48 = *v46;
        v49 = (*(**v46 + 80))(*v46);
        if (v49 < 1.0)
        {
          v50 = sub_2991C0E9C(&v136, "\tprob = ", 8);
          *(v50 + *(*v50 - 24) + 16) = 5;
          v51 = MEMORY[0x29C29BD10](v49);
          std::ios_base::getloc((v51 + *(*v51 - 24)));
          v52 = std::locale::use_facet(&__p, v24);
          (v52->__vftable[2].~facet_0)(v52, 10);
          std::locale::~locale(&__p);
          std::ostream::put();
          std::ostream::flush();
        }

        if (v48[15])
        {
          v53 = sub_2991C0E9C(&v136, "\tPrevious syllable = ", 21);
          v54 = (*(*v48[15] + 24))(v48[15]);
          v55 = strlen(v54);
          v56 = sub_2991C0E9C(v53, v54, v55);
          v57 = sub_2991C0E9C(v56, " rawInputLength = ", 18);
          v58 = (*(*v48[15] + 40))(v48[15]);
          v59 = MEMORY[0x29C29BD70](v57, v58);
          std::ios_base::getloc((v59 + *(*v59 - 24)));
          v60 = std::locale::use_facet(&__p, v24);
          (v60->__vftable[2].~facet_0)(v60, 10);
          std::locale::~locale(&__p);
          std::ostream::put();
          std::ostream::flush();
        }

        if (v48[16])
        {
          v61 = sub_2991C0E9C(&v136, "\tNext syllable = ", 17);
          v62 = (*(*v48[16] + 24))(v48[16]);
          v63 = strlen(v62);
          v64 = sub_2991C0E9C(v61, v62, v63);
          v65 = sub_2991C0E9C(v64, " rawInputLength = ", 18);
          v66 = (*(*v48[16] + 40))(v48[16]);
          v67 = MEMORY[0x29C29BD70](v65, v66);
          std::ios_base::getloc((v67 + *(*v67 - 24)));
          v68 = std::locale::use_facet(&__p, v24);
          (v68->__vftable[2].~facet_0)(v68, 10);
          std::locale::~locale(&__p);
          std::ostream::put();
          std::ostream::flush();
        }

        v46 += 2;
      }

      v69 = v129[10];
      v70 = v129[11];
      while (v69 != v70)
      {
        sub_2993AD888(&__p, "Autocorrected Incomplete syllable: ", *v69);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v71 = &__p;
        }

        else
        {
          v71 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          sub_2991C0E9C(&v136, v71, HIBYTE(__p.__r_.__value_.__r.__words[2]));
        }

        else
        {
          sub_2991C0E9C(&v136, v71, __p.__r_.__value_.__l.__size_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v72 = *v69;
        v73 = (*(**v69 + 80))(*v69);
        if (v73 < 1.0)
        {
          v74 = sub_2991C0E9C(&v136, "\tprob = ", 8);
          *(v74 + *(*v74 - 24) + 16) = 5;
          v75 = MEMORY[0x29C29BD10](v73);
          std::ios_base::getloc((v75 + *(*v75 - 24)));
          v76 = std::locale::use_facet(&__p, v24);
          (v76->__vftable[2].~facet_0)(v76, 10);
          std::locale::~locale(&__p);
          std::ostream::put();
          std::ostream::flush();
        }

        if (v72[15])
        {
          v77 = sub_2991C0E9C(&v136, "\tPrevious syllable = ", 21);
          v78 = (*(*v72[15] + 24))(v72[15]);
          v79 = strlen(v78);
          v80 = sub_2991C0E9C(v77, v78, v79);
          v81 = sub_2991C0E9C(v80, " rawInputLength = ", 18);
          v82 = (*(*v72[15] + 40))(v72[15]);
          v83 = MEMORY[0x29C29BD70](v81, v82);
          std::ios_base::getloc((v83 + *(*v83 - 24)));
          v84 = std::locale::use_facet(&__p, v24);
          (v84->__vftable[2].~facet_0)(v84, 10);
          std::locale::~locale(&__p);
          std::ostream::put();
          std::ostream::flush();
        }

        if (v72[16])
        {
          v85 = sub_2991C0E9C(&v136, "\tNext syllable = ", 17);
          v86 = (*(*v72[16] + 24))(v72[16]);
          v87 = strlen(v86);
          v88 = sub_2991C0E9C(v85, v86, v87);
          v89 = sub_2991C0E9C(v88, " rawInputLength = ", 18);
          v90 = (*(*v72[16] + 40))(v72[16]);
          v91 = MEMORY[0x29C29BD70](v89, v90);
          std::ios_base::getloc((v91 + *(*v91 - 24)));
          v92 = std::locale::use_facet(&__p, v24);
          (v92->__vftable[2].~facet_0)(v92, 10);
          std::locale::~locale(&__p);
          std::ostream::put();
          std::ostream::flush();
        }

        v69 += 2;
      }

      v93 = v129[13];
      for (j = v129[14]; v93 != j; v93 += 2)
      {
        if ((*(**v93 + 64))() == 7)
        {
          v95 = sub_2991C0E9C(&v136, "Synthetic syllable: mixed, length = ", 36);
          v96 = (*(**v93 + 32))();
          v97 = MEMORY[0x29C29BD70](v95, v96);
          std::ios_base::getloc((v97 + *(*v97 - 24)));
          v98 = std::locale::use_facet(&__p, v24);
          (v98->__vftable[2].~facet_0)(v98, 10);
          std::locale::~locale(&__p);
          std::ostream::put();
          std::ostream::flush();
        }

        else
        {
          sub_2993AD888(&__p, "Synthetic syllable: ", *v93);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v99 = &__p;
          }

          else
          {
            v99 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            sub_2991C0E9C(&v136, v99, HIBYTE(__p.__r_.__value_.__r.__words[2]));
          }

          else
          {
            sub_2991C0E9C(&v136, v99, __p.__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      v100 = v128;
      if ((*(*v127 + 168) - 1) >= 2)
      {
        sub_2991C0E9C(&v136, "Start column indexes: ", 22);
        v101 = v131.__locale_;
        if (v131.__locale_ != &v132)
        {
          do
          {
            v102 = MEMORY[0x29C29BD70](&v136, *(v101 + 13));
            sub_2991C0E9C(v102, ", ", 2);
            v103 = *(v101 + 1);
            if (v103)
            {
              do
              {
                v104 = v103;
                v103 = *v103;
              }

              while (v103);
            }

            else
            {
              do
              {
                v104 = *(v101 + 2);
                v105 = *v104 == v101;
                v101 = v104;
              }

              while (!v105);
            }

            v101 = v104;
          }

          while (v104 != &v132);
        }

        std::ios_base::getloc((&v136 + *(v136 - 24)));
        v100 = v128;
        v106 = std::locale::use_facet(&__p, v24);
        (v106->__vftable[2].~facet_0)(v106, 10);
        std::locale::~locale(&__p);
        std::ostream::put();
        std::ostream::flush();
      }

      v23 = v100 + 1;
      sub_29921B8CC(&v131, v132);
      v22 = v127 + 1;
    }

    while (v127 + 1 != v126);
  }

  v107 = sub_2991C0E9C(&v136, "First syllables: ", 17, v124);
  std::ios_base::getloc((v107 + *(*v107 - 24)));
  v108 = std::locale::use_facet(&v131, MEMORY[0x29EDC93D0]);
  (v108->__vftable[2].~facet_0)(v108, 10);
  std::locale::~locale(&v131);
  std::ostream::put();
  std::ostream::flush();
  v109 = *(a2 + 560);
  for (k = *(a2 + 568); v109 != k; ++v109)
  {
    v111 = (*(**v109 + 16))(*v109, 1);
    sub_299277A90(v111, &v131);
    v112 = v131.__locale_;
    v113 = strlen(v131.__locale_);
    v114 = sub_2991C0E9C(&v136, v131.__locale_, v113);
    sub_2991C0E9C(v114, ", ", 2);
    CFRelease(v111);
    if (v112)
    {
      MEMORY[0x29C29BF70](v112, 0x1000C8077774924);
    }
  }

  std::ios_base::getloc((&v136 + *(v136 - 24)));
  v115 = std::locale::use_facet(&v131, MEMORY[0x29EDC93D0]);
  (v115->__vftable[2].~facet_0)(v115, 10);
  std::locale::~locale(&v131);
  std::ostream::put();
  std::ostream::flush();
  v116 = sub_2991C0E9C(&v136, "First syllable end column indexes: ", 35);
  std::ios_base::getloc((v116 + *(*v116 - 24)));
  v117 = std::locale::use_facet(&v131, MEMORY[0x29EDC93D0]);
  (v117->__vftable[2].~facet_0)(v117, 10);
  std::locale::~locale(&v131);
  std::ostream::put();
  std::ostream::flush();
  v118 = *(a2 + 584);
  for (m = *(a2 + 592); v118 != m; ++v118)
  {
    v120 = MEMORY[0x29C29BD70](&v136, *v118);
    sub_2991C0E9C(v120, ", ", 2);
  }

  std::ios_base::getloc((&v136 + *(v136 - 24)));
  v121 = std::locale::use_facet(&v131, MEMORY[0x29EDC93D0]);
  (v121->__vftable[2].~facet_0)(v121, 10);
  std::locale::~locale(&v131);
  std::ostream::put();
  std::ostream::flush();
  sub_29927989C(v135, v125);
  if (__s)
  {
    MEMORY[0x29C29BF70](__s, 0x1000C8077774924);
  }

  v135[0] = *MEMORY[0x29EDC9528];
  v122 = *(MEMORY[0x29EDC9528] + 72);
  *(v135 + *(v135[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v136 = v122;
  v137 = MEMORY[0x29EDC9570] + 16;
  if (v139 < 0)
  {
    operator delete(v138[7].__locale_);
  }

  v137 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v138);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C29BF00](&v140);
}

void sub_2993A7A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::locale a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  a28 = *MEMORY[0x29EDC9528];
  v48 = *(MEMORY[0x29EDC9528] + 72);
  *(&a28 + *(a28 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  a30 = v48;
  a31 = MEMORY[0x29EDC9570] + 16;
  if (a44 < 0)
  {
    operator delete(__p);
  }

  a31 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&a32);
  std::iostream::~basic_iostream();
  MEMORY[0x29C29BF00](&a47);
  _Unwind_Resume(a1);
}

uint64_t sub_2993A7D04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a3 + 2);
  if (v4 >= 0x9C2)
  {
    sub_2991D6EC4("bitset test argument out of range");
  }

  if ((*(a1 + 80 + ((v4 >> 3) & 0x1FF8)) & (1 << v4)) == 0)
  {
    operator new();
  }

  return 0;
}

void sub_2993A7EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2991A893C(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993A7EC0(uint64_t result, unint64_t a2)
{
  v2 = *(result + 40);
  if (v2 + 1 >= a2)
  {
    v3 = *(result + 32);
    if (v2 + 1 == a2)
    {
      v4 = *(v3 + 8);
    }

    else
    {
      v4 = *(v3 + 8);
      if (*(*(v4 + 8 * (v2 - a2)) + 16) == *(*(v4 + 8 * (v2 - a2)) + 8))
      {
        return result;
      }
    }

    return sub_2992B3F48(*(v4 + 8 * v2), a2);
  }

  return result;
}

void sub_2993A7F04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a2 && (*(a1 + 552) & 0x8000) != 0)
  {
    v9 = *(a1 + 556);
    goto LABEL_5;
  }

  v9 = 1;
  v10 = 1;
  if (a2)
  {
LABEL_5:
    v10 = a2[2] != a2[1] || a2[8] != a2[7];
  }

  v11 = sub_2993B2448(*(a1 + 32), ***(a1 + 32), a4);
  if (!v11)
  {
    return;
  }

  if (v10)
  {
    goto LABEL_15;
  }

  if (a2[14] == a2[13])
  {
    v13 = 0;
    v12 = 0;
    goto LABEL_17;
  }

  if (*(a1 + 40) != 1)
  {
LABEL_15:
    v13 = 0;
    v12 = 1;
  }

  else
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      v13 = 7;
    }

    else
    {
      v13 = 0;
    }
  }

LABEL_17:
  if (v9 & (v12 | a5))
  {
    sub_2993A7D04(a1, *(*(a1 + 8) + 8 * a3), v11, v13);
    if (a5)
    {
      if (a3 && !*(a1 + 40))
      {
        v14 = a3 - 1;
        v15 = *(*(a1 + 8) + 8 * v14);
        v16 = *(v15 + 32);
        v17 = *(v15 + 40);
        while (v16 != v17)
        {
          if (sub_2993B00A0(*v16))
          {
            v19 = a1 + 80;
            v20 = 0;
            sub_2993AE5AC(&v19);
            v18 = *(*(a1 + 8) + 8 * v14);

            sub_2993A92C8(a1, v18, 1);
            return;
          }

          v16 += 2;
        }
      }
    }
  }
}

void sub_2993A808C(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v117[22] = *MEMORY[0x29EDCA608];
  v4 = a2[1] - *a2;
  if (v4)
  {
    v5 = a3;
    v6 = 0;
    v7 = v4 >> 4;
    v102 = *(a1 + 40);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v98 = v7;
    do
    {
      v8 = *a2 + 16 * v6;
      v9 = (*(**v8 + 40))();
      v10 = *(*v8 + 8);
      (*(**v8 + 72))();
      v11 = *(v10 + 8);
      if ((v11 & 8) != 0)
      {
        v105 = 1;
      }

      else if (*(a1 + 40) != 2 || (v12 = *(v10 + 2), v105 = 1, v12 != 3) && v12 != 54 && v12 != 76)
      {
        if ((*(v10 + 8) & 0x10) == 0)
        {
          goto LABEL_175;
        }

        v105 = 0;
      }

      v101 = v9;
      v13 = *(v10 + 2);
      v116 = *(v10 + 2);
      v14 = *(a1 + 408);
      if (v14)
      {
        v15 = vcnt_s8(v14);
        v15.i16[0] = vaddlv_u8(v15);
        if (v15.u32[0] > 1uLL)
        {
          v16 = v13;
          if (*&v14 <= v13)
          {
            v16 = (v13 % *(a1 + 408));
          }
        }

        else
        {
          v16 = ((v14.i32[0] - 1) & v13);
        }

        v17 = *(*(a1 + 400) + 8 * v16);
        if (v17)
        {
          for (i = *v17; i; i = *i)
          {
            v19 = i[1];
            if (v19 == v13)
            {
              if (*(i + 8) == v13)
              {
                goto LABEL_173;
              }
            }

            else
            {
              if (v15.u32[0] > 1uLL)
              {
                if (v19 >= *&v14)
                {
                  v19 %= *&v14;
                }
              }

              else
              {
                v19 &= *&v14 - 1;
              }

              if (v19 != v16)
              {
                break;
              }
            }
          }
        }
      }

      v100 = v6;
      __p = 0;
      v114 = 0;
      v115 = 0;
      v20 = &(&off_29EF15F80)[2 * v13];
      v21 = &(&off_29EF13DA0)[2 * v13];
      if (v102 == 5)
      {
        v21 = v20;
      }

      v22 = *v21;
      v23 = strlen(*v21);
      v25 = *(a1 + 440);
      v24 = *(a1 + 448);
      v103 = v10;
      if (v25 == v24)
      {
        goto LABEL_150;
      }

      v26 = v23;
      v104 = 0;
      v111 = 0;
      v108 = &v22[v23];
      v27 = v105;
      do
      {
        v29 = *v25;
        v28 = v25[1];
        v30 = strlen(v28);
        v31 = strlen(*v25);
        if (v26 < v30)
        {
          goto LABEL_67;
        }

        v32 = v31;
        if (v26 < v31)
        {
          goto LABEL_35;
        }

        if (v27)
        {
          if (!memcmp(v22, v29, v31))
          {
            v34 = &v117[3 * v104 + 7];
            *v34 = v28;
            v34[1] = v30;
            ++v104;
            v34[2] = v32;
            v27 = 1;
            if ((v11 & 0x10) == 0)
            {
              goto LABEL_65;
            }

            goto LABEL_46;
          }

          v27 = 0;
        }

        if ((v11 & 0x10) == 0)
        {
          goto LABEL_65;
        }

LABEL_46:
        if (memcmp(&v108[-v32], v29, v32))
        {
          goto LABEL_65;
        }

        if (v102 == 5)
        {
          if (v32 >= 3)
          {
LABEL_63:
            v38 = &v117[3 * v111 + 1];
            *v38 = v28;
            v38[1] = v30;
            ++v111;
            v38[2] = v32;
          }

          v27 = 1;
          goto LABEL_65;
        }

        if (v32 != 3)
        {
          goto LABEL_63;
        }

        if (v26 < 5)
        {
          goto LABEL_63;
        }

        v37 = *(v108 - 4);
        v27 = 1;
        if (v37 != 105 && v37 != 117)
        {
          goto LABEL_63;
        }

LABEL_65:
        if (v27)
        {
          v27 = v105;
          if (v30 != v32)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v27 = v105;
        }

LABEL_35:
        if (v27 && !memcmp(v22, v28, v30))
        {
          v33 = &v117[3 * v104 + 7];
          *v33 = v29;
          v33[1] = v32;
          ++v104;
          v33[2] = v30;
          if ((v11 & 0x10) == 0)
          {
            goto LABEL_67;
          }
        }

        else if ((v11 & 0x10) == 0)
        {
          goto LABEL_67;
        }

        if (memcmp(&v108[-v30], v28, v30))
        {
          goto LABEL_67;
        }

        if (v102 == 5)
        {
          if (v32 >= 3)
          {
            goto LABEL_58;
          }
        }

        else if (v32 != 3 || v26 < 4 || (v35 = *(v108 - 3), v35 != 105) && v35 != 117)
        {
LABEL_58:
          v36 = &v117[3 * v111 + 1];
          *v36 = v29;
          v36[1] = v32;
          ++v111;
          v36[2] = v30;
        }

LABEL_67:
        v25 += 2;
      }

      while (v25 != v24);
      v109 = ***(a1 + 32);
      v10 = v103;
      v39 = v104;
      v106 = v26;
      if (v104)
      {
        v40 = 0;
        while (2)
        {
          v41 = &v117[3 * v40 + 7];
          v42 = v41[2];
          v43 = *(a1 + 32);
          v44 = v109;
          if (v109)
          {
            v45 = v41[1];
            v44 = v109;
            if (v45)
            {
              v46 = 0;
              v47 = *v41;
              v44 = v109;
              do
              {
                v44 = sub_2993B2448(v43, v44, *(v47 + v46++));
                if (v44)
                {
                  v48 = v46 >= v45;
                }

                else
                {
                  v48 = 1;
                }
              }

              while (!v48);
            }
          }

          v26 = v106;
          if (!v44)
          {
            goto LABEL_122;
          }

          v50 = (v106 - v42);
          v49 = v106 == v42;
          if (v106 < v42)
          {
            goto LABEL_122;
          }

          v51 = v42 + v22;
          if (v49)
          {
            v117[0] = v44;
            v53 = v44;
          }

          else
          {
            v52 = 0;
            v53 = v44;
            do
            {
              v54 = sub_2993B2448(v43, v53, v51[v52]);
              v53 = v54;
              ++v52;
              if (v54)
              {
                v55 = v52 >= v50;
              }

              else
              {
                v55 = 1;
              }
            }

            while (!v55);
            v117[0] = v54;
            if (!v54)
            {
              goto LABEL_95;
            }
          }

          if (!a4 || (v53[4] & 2) != 0)
          {
            sub_29931C308(&__p, v117);
          }

LABEL_95:
          if (v111)
          {
            v56 = 0;
            while (1)
            {
              v57 = &v117[3 * v56 + 1];
              v58 = v57[2];
              v59 = (v50 - v58);
              if (v50 >= v58)
              {
                break;
              }

LABEL_120:
              if (++v56 == v111)
              {
                goto LABEL_121;
              }
            }

            v60 = *(a1 + 32);
            v61 = v44;
            if (v50 != v58)
            {
              v62 = 0;
              v61 = v44;
              do
              {
                v61 = sub_2993B2448(v60, v61, v51[v62++]);
                if (v61)
                {
                  v63 = v62 >= v59;
                }

                else
                {
                  v63 = 1;
                }
              }

              while (!v63);
            }

            if (v61)
            {
              v64 = v57[1];
              if (v64)
              {
                v65 = 0;
                v66 = *v57;
                do
                {
                  v67 = sub_2993B2448(v60, v61, *(v66 + v65));
                  v61 = v67;
                  ++v65;
                  if (v67)
                  {
                    v68 = v65 >= v64;
                  }

                  else
                  {
                    v68 = 1;
                  }
                }

                while (!v68);
                v112 = v67;
                if (!v67)
                {
                  goto LABEL_119;
                }
              }

              else
              {
                v112 = v61;
              }

              if (!a4 || (v61[4] & 2) != 0)
              {
                sub_29931C308(&__p, &v112);
              }
            }

LABEL_119:
            v50 = v59;
            goto LABEL_120;
          }

LABEL_121:
          v10 = v103;
          v39 = v104;
          v26 = v106;
LABEL_122:
          if (++v40 == v39)
          {
            break;
          }

          continue;
        }
      }

      if (v111)
      {
        for (j = 0; j != v111; ++j)
        {
          v70 = &v117[3 * j + 1];
          v71 = v70[2];
          v72 = *(a1 + 32);
          v73 = v26 - v71;
          v74 = v109;
          if (v109)
          {
            v74 = v109;
            if (v73)
            {
              v75 = 0;
              v74 = v109;
              do
              {
                v74 = sub_2993B2448(v72, v74, v22[v75++]);
                if (v74)
                {
                  v76 = v75 >= v73;
                }

                else
                {
                  v76 = 1;
                }
              }

              while (!v76);
            }
          }

          v117[0] = v74;
          if (v74)
          {
            v26 = v106;
            if (v106 >= v71)
            {
              v77 = v70[1];
              if (v77)
              {
                v78 = 0;
                v79 = *v70;
                do
                {
                  v74 = sub_2993B2448(v72, v74, *(v79 + v78++));
                  if (v74)
                  {
                    v80 = v78 >= v77;
                  }

                  else
                  {
                    v80 = 1;
                  }
                }

                while (!v80);
              }

              v117[0] = v74;
            }

            if (v74 && (!a4 || (v74[4] & 2) != 0))
            {
              sub_29931C308(&__p, v117);
            }
          }

          else
          {
            v26 = v106;
          }
        }
      }

LABEL_150:
      v117[0] = &v116;
      v81 = sub_2993AEDA8((a1 + 400), v116, v117);
      v5 = a3;
      v6 = v100;
      v82 = v81;
      v83 = v81 + 3;
      if (v81 + 3 != &__p)
      {
        v85 = __p;
        v84 = v114;
        v86 = v114 - __p;
        v87 = v81[5];
        v88 = v81[3];
        if (v87 - v88 < (v114 - __p))
        {
          if (v88)
          {
            v81[4] = v88;
            operator delete(v88);
            v87 = 0;
            *v83 = 0;
            v83[1] = 0;
            v83[2] = 0;
          }

          v89 = v86 >> 3;
          if (!((v86 >> 3) >> 61))
          {
            if (v87 >> 2 > v89)
            {
              v89 = v87 >> 2;
            }

            if (v87 >= 0x7FFFFFFFFFFFFFF8)
            {
              v90 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v90 = v89;
            }

            if (!(v90 >> 61))
            {
              sub_29920B86C(v83, v90);
            }
          }

          sub_299212A8C();
        }

        v91 = v81[4];
        v92 = v91 - v88;
        if (v91 - v88 >= v86)
        {
          v10 = v103;
          if (v114 != __p)
          {
            memmove(v81[3], __p, v114 - __p);
          }

          v82[4] = (v88 + v86);
        }

        else
        {
          if (v91 != v88)
          {
            memmove(v81[3], __p, v91 - v88);
            v91 = v82[4];
          }

          v93 = &v85[v92];
          v94 = v84 - &v85[v92];
          if (v94)
          {
            memmove(v91, v93, v94);
          }

          v82[4] = (v91 + v94);
          v10 = v103;
        }
      }

      v117[0] = &v116;
      i = sub_2993AEDA8((a1 + 400), v116, v117);
      if (__p)
      {
        v114 = __p;
        operator delete(__p);
      }

LABEL_173:
      v95 = i[3];
      for (k = i[4]; v95 != k; ++v95)
      {
        sub_2993A9628(a1, v5, *v95, *(v10 + 2), v101);
      }

LABEL_175:
      ++v6;
    }

    while (v6 != v98);
  }
}