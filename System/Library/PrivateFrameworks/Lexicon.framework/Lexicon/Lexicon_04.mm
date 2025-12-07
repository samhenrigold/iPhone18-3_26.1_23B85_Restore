void sub_1B5D199DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D19A08(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void LXLexiconRepositoryCreateView(const __CFString *a1)
{
  if (qword_1ED833C28 != -1)
  {
    dispatch_once(&qword_1ED833C28, &unk_1F2D578B0);
  }

  *(_CFRuntimeCreateInstance() + 16) = &unk_1F2D559E8;
  operator new();
}

void sub_1B5D1A03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  std::mutex::unlock(&qword_1ED833928);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(a1);
}

void sub_1B5D1A104()
{
  if ((atomic_load_explicit(&qword_1ED833968, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED833968))
  {
    xmmword_1ED8338F8 = 0u;
    xmmword_1ED833918 = 0u;
    xmmword_1ED8338D8 = 0u;
    *&qword_1ED8338E8 = 0u;
    LODWORD(xmmword_1ED8338F8) = 1065353216;
    *(&xmmword_1ED8338F8 + 8) = 0u;
    *&qword_1ED833910 = 0u;
    DWORD2(xmmword_1ED833918) = 1065353216;
    qword_1ED833928 = 850045863;
    unk_1ED833930 = 0u;
    unk_1ED833940 = 0u;
    unk_1ED833950 = 0u;
    qword_1ED833960 = 0;

    __cxa_guard_release(&qword_1ED833968);
  }
}

uint64_t sub_1B5D1A19C()
{
  qword_1ED833B90 = 0;
  *algn_1ED833B98 = "LXLexicon";
  qword_1ED833BA0 = 0;
  unk_1ED833BA8 = 0;
  qword_1ED833BB0 = sub_1B5D1A1F0;
  unk_1ED833BB8 = 0u;
  unk_1ED833BC8 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833B80 = result;
  return result;
}

void LXLexiconRepositoryAddOrUpdate(uint64_t a1)
{
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = LXLexiconCopyName(a1);
  v20 = v3;
  sub_1B5D1A104();
  sub_1B5CE4DD0(v3, __p);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  std::mutex::lock(&qword_1ED833928);
  v22[0] = __p;
  v4 = sub_1B5D4C084(__p, v22);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = v4[6];
  v4[5] = v2;
  v4[6] = v1;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = qword_1ED8338E8;
  if (qword_1ED8338E8)
  {
    while (1)
    {
      v7 = *(v6 + 48);
      if (!v7 || *(v7 + 8) == -1)
      {
        break;
      }

      v8 = *v6;
LABEL_40:
      v6 = v8;
      if (!v8)
      {
        goto LABEL_41;
      }
    }

    v9 = *(&xmmword_1ED8338D8 + 1);
    v10 = *(v6 + 8);
    v11 = vcnt_s8(*(&xmmword_1ED8338D8 + 8));
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      if (v10 >= *(&xmmword_1ED8338D8 + 1))
      {
        v10 %= *(&xmmword_1ED8338D8 + 1);
      }
    }

    else
    {
      v10 &= *(&xmmword_1ED8338D8 + 1) - 1;
    }

    v8 = *v6;
    v12 = *(xmmword_1ED8338D8 + 8 * v10);
    do
    {
      v13 = v12;
      v12 = *v12;
    }

    while (v12 != v6);
    if (v13 == &qword_1ED8338E8)
    {
      goto LABEL_55;
    }

    v14 = v13[1];
    if (v11.u32[0] > 1uLL)
    {
      if (v14 >= *(&xmmword_1ED8338D8 + 1))
      {
        v14 %= *(&xmmword_1ED8338D8 + 1);
      }
    }

    else
    {
      v14 &= *(&xmmword_1ED8338D8 + 1) - 1;
    }

    v15 = *v6;
    if (v14 != v10)
    {
LABEL_55:
      if (v8)
      {
        v16 = *(v8 + 8);
        if (v11.u32[0] > 1uLL)
        {
          if (v16 >= *(&xmmword_1ED8338D8 + 1))
          {
            v16 %= *(&xmmword_1ED8338D8 + 1);
          }
        }

        else
        {
          v16 &= *(&xmmword_1ED8338D8 + 1) - 1;
        }

        v15 = *v6;
        if (v16 == v10)
        {
          goto LABEL_33;
        }
      }

      *(xmmword_1ED8338D8 + 8 * v10) = 0;
      v15 = *v6;
    }

    if (!v15)
    {
LABEL_39:
      *v13 = v15;
      *v6 = 0;
      --qword_1ED8338F0;
      v22[0] = v6;
      v22[1] = &xmmword_1ED8338D8;
      v23 = 1;
      memset(v24, 0, sizeof(v24));
      sub_1B5D4CC50(v22);
      goto LABEL_40;
    }

LABEL_33:
    v17 = *(v15 + 8);
    if (v11.u32[0] > 1uLL)
    {
      if (v17 >= v9)
      {
        v17 %= v9;
      }
    }

    else
    {
      v17 &= v9 - 1;
    }

    if (v17 != v10)
    {
      *(xmmword_1ED8338D8 + 8 * v17) = v13;
      v15 = *v6;
    }

    goto LABEL_39;
  }

LABEL_41:
  v21[0] = v2;
  v21[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1B5D4C534(__p, v21);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
    std::mutex::unlock(&qword_1ED833928);
    std::__shared_weak_count::__release_weak(v1);
  }

  else
  {
    std::mutex::unlock(&qword_1ED833928);
  }

  if (v19 < 0)
  {
    operator delete(__p[0]);
    if (!v3)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (v3)
  {
LABEL_50:
    CFRelease(v3);
  }

LABEL_51:
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1B5D1A4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  std::mutex::unlock(&qword_1ED833928);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1B5CE5794(&a16, 0);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t LXCompileUnigramsFileWithError(const __CFString *a1, const __CFDictionary *a2, uint64_t a3, CFErrorRef *a4)
{
  v73 = *MEMORY[0x1E69E9840];
  if (a1 && CFStringGetLength(a1))
  {
    atomic_store((a3 & 0x100000) != 0, byte_1EB90CC20);
    atomic_store((a3 & 0x80000) == 0, byte_1EB90C7D0);
    LODWORD(v28[0]) = 0x100000;
    WORD2(v28[0]) = 0;
    BYTE6(v28[0]) = 1;
    v28[1] = 0;
    sub_1B5CDCAAC(v28, "Unigrams", 0, 8u);
    v29 = 0x100000;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0x100000;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38[0] = 0;
    v39 = 0x100000;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v6 = getenv("BUILT_PRODUCTS_DIR");
    sub_1B5D5C9B0(valuePtr, v6);
    v7 = getenv("WRAPPER_NAME");
    sub_1B5D5C9B0(v68, v7);
    if (v68[0])
    {
      v8 = *valuePtr == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = !v8;
    if (v8)
    {
      LODWORD(__dst) = 0x100000;
      WORD2(__dst) = 0;
      BYTE6(__dst) = 1;
      v67 = 0;
      sub_1B5CDCAAC(&__dst, "Output", 0, 6u);
    }

    else
    {
      sub_1B5D5DCB4(v63, valuePtr, "/");
      sub_1B5D5DD0C(&__dst, v63, v68);
    }

    sub_1B5D5CBBC(&v29, &__dst);
    if (v67 && BYTE6(__dst) == 1)
    {
      free(v67);
    }

    if (v9 && v65 && v64 == 1)
    {
      free(v65);
    }

    v12 = getenv("SRCROOT");
    sub_1B5D5C9B0(&__dst, v12);
    v13 = getenv("TEXTINPUT_LANGUAGE");
    sub_1B5D5C9B0(&v61, v13);
    v14 = getenv("PRECOMPILED_DATA");
    sub_1B5D5C9B0(&v59, v14);
    sub_1B5D5DCB4(v47, &__dst, "/");
    sub_1B5D5DD0C(v50, v47, &v59);
    sub_1B5D5DCB4(&v53, v50, "/");
    sub_1B5D5DD0C(buf, &v53, &v61);
    sub_1B5D5CBBC(&v34, buf);
    if (*&v56[4] && v56[2] == 1)
    {
      free(*&v56[4]);
    }

    if (v54 && BYTE6(v53) == 1)
    {
      free(v54);
    }

    if (v52 && v51 == 1)
    {
      free(v52);
    }

    if (v49 && v48 == 1)
    {
      free(v49);
    }

    if (v37)
    {
      v15 = v37;
    }

    else
    {
      v15 = v38;
    }

    v16 = mkpath_np(v15, 0x1EDu);
    v17 = v16;
    if (v16)
    {
      if (v16 != 17)
      {
        v18 = atomic_load(byte_1EB90C7D0);
        if (v18)
        {
          v19 = atomic_load(byte_1EB90CC20);
          if (v19)
          {
            v20 = v37;
            v21 = strerror(v16);
            if (v20)
            {
              v22 = v20;
            }

            else
            {
              v22 = v38;
            }

            printf("couldn't create directory '%s': %s (%d)", v22, v21, v17);
            putchar(10);
          }

          else
          {
            v23 = sub_1B5D32914();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = v37;
              v25 = strerror(v17);
              if (v24)
              {
                v26 = v24;
              }

              else
              {
                v26 = v38;
              }

              *buf = 136315650;
              *v56 = v26;
              *&v56[8] = 2080;
              *&v56[10] = v25;
              v57 = 1024;
              v58 = v17;
              _os_log_impl(&dword_1B5CDB000, v23, OS_LOG_TYPE_ERROR, "couldn't create directory '%s': %s (%d)", buf, 0x1Cu);
            }
          }
        }
      }
    }

    v27 = getenv("DERIVED_SOURCES_DIR");
    sub_1B5D5C9B0(buf, v27);
    if (*buf)
    {
      sub_1B5D5CABC(&v53, buf);
    }

    else
    {
      LODWORD(v53) = 0x100000;
      WORD2(v53) = 0;
      BYTE6(v53) = 1;
      v54 = 0;
      sub_1B5CDCAAC(&v53, "Deps", 0, 4u);
    }

    sub_1B5D5CBBC(&v39, &v53);
    if (v54 && BYTE6(v53) == 1)
    {
      free(v54);
    }

    if (*&v56[4] && v56[2] == 1)
    {
      free(*&v56[4]);
    }

    if (v60 && BYTE6(v59) == 1)
    {
      free(v60);
    }

    if (v62 && BYTE6(v61) == 1)
    {
      free(v62);
    }

    if (v67 && BYTE6(__dst) == 1)
    {
      free(v67);
    }

    if (v70 && v69 == 1)
    {
      free(v70);
    }

    if (v72)
    {
      if (valuePtr[6] == 1)
      {
        free(v72);
      }
    }

    v45 = 0;
    v46 = 0;
    v44 = a3 | 0x10;
    operator new();
  }

  if (!a4)
  {
    return 0;
  }

  v10 = sub_1B5D4E9A0(@"missing source path", 0);
  result = 0;
  *a4 = v10;
  return result;
}

void sub_1B5D1B8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1B5CE5794(va, 0);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1B5D1B8E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1B5CE56B8(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D1B900(uint64_t a1)
{
  v2 = *(a1 + 2008);
  if (v2)
  {
    *(a1 + 2016) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 1984);
  if (v3)
  {
    *(a1 + 1992) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 1936);
  if (v4 && *(a1 + 1934) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 1904);
  if (v5 && *(a1 + 1902) == 1)
  {
    free(v5);
  }

  v6 = *(a1 + 1856);
  if (v6)
  {
    *(a1 + 1864) = v6;
    operator delete(v6);
  }

  sub_1B5D1BB0C(a1 + 1816);
  sub_1B5D1BB70(a1 + 1776);
  *(a1 + 328) = &unk_1F2D558B8;
  sub_1B5D1BBBC((a1 + 1720));
  v7 = *(a1 + 1712);
  if (v7)
  {
    sub_1B5CDD904(v7);
  }

  *(a1 + 328) = &unk_1F2D559C0;
  v8 = *(a1 + 1680);
  if (v8 && *(a1 + 1678) == 1)
  {
    free(v8);
  }

  sub_1B5D1BBBC((a1 + 1624));
  sub_1B5D1BBF8((a1 + 288));
  v9 = *(a1 + 280);
  if (v9)
  {
    sub_1B5D1BC34((v9 + 24));
  }

  v10 = *(a1 + 272);
  if (v10)
  {
    sub_1B5D1BCD4(v10);
  }

  v11 = *(a1 + 264);
  *(a1 + 264) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a1 + 256);
  if (v12)
  {
    sub_1B5CDD904(v12);
  }

  v13 = *(a1 + 216);
  if (v13 && *(a1 + 214) == 1)
  {
    free(v13);
  }

  v14 = *(a1 + 184);
  if (v14 && *(a1 + 182) == 1)
  {
    free(v14);
  }

  v15 = *(a1 + 152);
  if (v15 && *(a1 + 150) == 1)
  {
    free(v15);
  }

  v16 = *(a1 + 120);
  if (v16 && *(a1 + 118) == 1)
  {
    free(v16);
  }

  v17 = *(a1 + 88);
  if (v17 && *(a1 + 86) == 1)
  {
    free(v17);
  }

  v18 = *(a1 + 56);
  if (v18 && *(a1 + 54) == 1)
  {
    free(v18);
  }

  v19 = *(a1 + 24);
  if (v19 && *(a1 + 22) == 1)
  {
    free(v19);
  }

  return a1;
}

uint64_t sub_1B5D1BB0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_1B5D1BB70(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void **sub_1B5D1BBBC(void **a1)
{
  sub_1B5D1C09C(a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void **sub_1B5D1BBF8(void **a1)
{
  sub_1B5D1C01C(a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

atomic_uint *sub_1B5D1BC34(atomic_uint *result)
{
  if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    v3 = (result - 6);
    v4 = *(result - 3);
    if (v4)
    {
      v5 = *(result - 2);
      v6 = *(result - 3);
      if (v5 != v4)
      {
        do
        {
          v8 = *(v5 - 8);
          v5 -= 8;
          v7 = v8;
          if (v8)
          {
            sub_1B5D1BE14(v7 + 84);
          }
        }

        while (v5 != v4);
        v6 = *v3;
      }

      *(v2 - 2) = v4;
      operator delete(v6);
    }

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

atomic_uint *sub_1B5D1BCD4(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (result && add == 1)
  {
    v9[1] = v2;
    v9[2] = v1;
    v9[3] = v3;
    v10 = v4;
    v6 = result;
    v9[0] = (result + 18);
    sub_1B5D1BD90(v9);
    if (*(v6 + 24) >= 0xFu)
    {
      v7 = *(v6 + 7);
      if (v7)
      {
        MEMORY[0x1B8C880C0](v7, 0x1000C8077774924);
      }
    }

    v8 = *(v6 + 4);
    if (v8)
    {
      sub_1B5D1BC34((v8 + 24));
    }

    v9[0] = (v6 + 2);
    sub_1B5D1BD90(v9);

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

void sub_1B5D1BD90(void ***a1)
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
        v7 = *(v4 - 1);
        v4 -= 8;
        v6 = v7;
        if (v7)
        {
          sub_1B5D1BCD4(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1B5D1BE14(uint64_t result)
{
  if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    v16[1] = v2;
    v16[2] = v1;
    v16[3] = v3;
    v17 = v4;
    v5 = result;
    v6 = *(result + 236);
    if (v6)
    {
      sub_1B5CDD904(v6);
    }

    v16[0] = (v5 + 196);
    sub_1B5D1BF88(v16);
    v16[0] = (v5 + 172);
    sub_1B5D1BF88(v16);
    v7 = *(v5 + 156);
    if (v7)
    {
      sub_1B5D1BC34((v7 + 24));
    }

    v8 = *(v5 + 148);
    if (v8)
    {
      sub_1B5D1BC34((v8 + 24));
    }

    v9 = *(v5 + 140);
    if (v9)
    {
      sub_1B5D1BCD4(v9);
    }

    v10 = *(v5 + 116);
    if (v10)
    {
      *(v5 + 124) = v10;
      operator delete(v10);
    }

    if (*(v5 + 92) >= 0xFu)
    {
      v11 = *(v5 + 100);
      if (v11)
      {
        MEMORY[0x1B8C880C0](v11, 0x1000C8077774924);
      }
    }

    if (*(v5 + 68) >= 0xFu)
    {
      v12 = *(v5 + 76);
      if (v12)
      {
        MEMORY[0x1B8C880C0](v12, 0x1000C8077774924);
      }
    }

    if (*(v5 + 52) >= 0xFu)
    {
      v13 = *(v5 + 60);
      if (v13)
      {
        MEMORY[0x1B8C880C0](v13, 0x1000C8077774924);
      }
    }

    v14 = *(v5 + 28);
    if (v14 && *(v5 + 26) == 1)
    {
      free(v14);
    }

    v15 = *(v5 - 76);
    if (v15 && *(v5 - 78) == 1)
    {
      free(v15);
    }

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

void sub_1B5D1BF88(void ***a1)
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
        if (v6 && *(v4 - 26) == 1)
        {
          free(v6);
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

void sub_1B5D1C01C(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = v1;
      v1 = *v1;
      v3 = v2[4];
      if (v3)
      {
        sub_1B5D1BC34((v3 + 24));
      }

      if (*(v2 + 8) >= 0xFu)
      {
        v4 = v2[3];
        if (v4)
        {
          MEMORY[0x1B8C880C0](v4, 0x1000C8077774924);
        }
      }

      operator delete(v2);
    }

    while (v1);
  }
}

void sub_1B5D1C09C(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = v1;
      v1 = *v1;
      if (*(v2 + 8) >= 0xFu)
      {
        v3 = v2[3];
        if (v3)
        {
          MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
        }
      }

      operator delete(v2);
    }

    while (v1);
  }
}

void sub_1B5D1C10C(uint64_t a1)
{
  sub_1B5CDDF24(a1);
  *(a1 + 1432) = 0u;

  sub_1B5D1C150(a1 + 1392);
}

void sub_1B5D1C150(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1B5D1C09C(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_1B5D1C1AC(uint64_t a1)
{
  *a1 = &unk_1F2D558B8;
  sub_1B5D1BBBC((a1 + 1392));
  v2 = *(a1 + 1384);
  if (v2)
  {
    sub_1B5CDD904(v2);
  }

  *a1 = &unk_1F2D559C0;
  v3 = *(a1 + 1352);
  if (v3 && *(a1 + 1350) == 1)
  {
    free(v3);
  }

  sub_1B5D1BBBC((a1 + 1296));

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D1C25C(uint64_t a1)
{
  *a1 = &unk_1F2D558B8;
  sub_1B5D1BBBC((a1 + 1392));
  v2 = *(a1 + 1384);
  if (v2)
  {
    sub_1B5CDD904(v2);
  }

  *a1 = &unk_1F2D559C0;
  v3 = *(a1 + 1352);
  if (v3 && *(a1 + 1350) == 1)
  {
    free(v3);
  }

  sub_1B5D1BBBC((a1 + 1296));
  return a1;
}

void LXCompileStemSuffixTokenIDConversionMap(const __CFURL *a1, const __CFURL *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = sub_1B5CE52C0(a1, 0);
  operator new();
}

void sub_1B5D1C6E0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19, uint64_t a21, const void *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, __int128 buf)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_6:
      sub_1B5D4DCF0(&a19);
      sub_1B5D4DD24(&a21);
      sub_1B5CE57CC(&a22, 0);
      if (a2 == 1)
      {
        v32 = __cxa_begin_catch(a1);
        if (qword_1EB90CA38 != -1)
        {
          dispatch_once(&qword_1EB90CA38, &unk_1F2D578F0);
        }

        v33 = qword_1EB90CA30;
        if (os_log_type_enabled(qword_1EB90CA30, OS_LOG_TYPE_ERROR))
        {
          v34 = (*(*v32 + 16))(v32);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v34;
          _os_log_error_impl(&dword_1B5CDB000, v33, OS_LOG_TYPE_ERROR, "Failed to compile the stem-suffix tokenID conversion map: %s", &buf, 0xCu);
        }

        __cxa_end_catch();
        JUMPOUT(0x1B5D1C598);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

os_log_t sub_1B5D1C968()
{
  result = os_log_create("com.apple.Lexicon", "StemSuffixTokenIDConverter");
  qword_1EB90CA30 = result;
  return result;
}

CFStringRef LXUnigramsCompilerCopyVersion()
{
  v30[2] = *MEMORY[0x1E69E9840];
  sub_1B5CF7CDC(v18);
  v0 = MEMORY[0x1B8C87F10](&v19, 3);
  v1 = sub_1B5CE599C(v0, ".", 1);
  MEMORY[0x1B8C87F10](v1, 21);
  if ((v26 & 0x10) != 0)
  {
    v3 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v3 = v22;
    }

    locale = v21[4].__locale_;
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v2 = 0;
      v17 = 0;
      goto LABEL_14;
    }

    locale = v21[1].__locale_;
    v3 = v21[3].__locale_;
  }

  v2 = v3 - locale;
  if ((v3 - locale) > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1B5D114C8();
  }

  if (v2 >= 0x17)
  {
    operator new();
  }

  v17 = v3 - locale;
  if (v2)
  {
    memmove(&__dst, locale, v2);
  }

LABEL_14:
  *(&__dst + v2) = 0;
  if (v17 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  sub_1B5D5C9B0(v28, p_dst);
  if (v17 < 0)
  {
    operator delete(__dst);
  }

  v18[0] = *MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v19 = v6;
  v20 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  v20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C88080](&v27);
  if (v29)
  {
    v7 = v29;
  }

  else
  {
    v7 = v30;
  }

  v8 = strlen(v7);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1B5D114C8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v15 = v8;
  if (v8)
  {
    memmove(v14, v7, v8);
  }

  *(v14 + v9) = 0;
  if ((v15 & 0x80u) == 0)
  {
    v10 = v14;
  }

  else
  {
    v10 = v14[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v14[1];
  }

  v12 = sub_1B5CDFA10(v10, v11);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v29 && v28[6] == 1)
  {
    free(v29);
  }

  return v12;
}

void sub_1B5D1CD34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v23 = *(v21 - 96);
  if (v23)
  {
    if (*(v21 - 98) == 1)
    {
      free(v23);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t LXUnigramsCompilerGetSupportedTries()
{
  if (qword_1EB90CA28 != -1)
  {
    dispatch_once(&qword_1EB90CA28, &unk_1F2D578D0);
  }

  return qword_1EB90CA20;
}

void sub_1B5D1CDEC()
{
  v30[1] = *MEMORY[0x1E69E9840];
  qword_1EB90CA20 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v28 = xmmword_1B5DC571C;
  v29 = unk_1B5DC572C;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  sub_1B5CFE668(&v25, &v28, v30, 8uLL);
  v0 = v25;
  v1 = v26;
  if (v25 != v26)
  {
    do
    {
      v24 = *v0;
      sub_1B5CFE4CC(&v24, __p);
      v2 = v20;
      if (v20 >= v21)
      {
        v4 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3);
        v5 = v4 + 1;
        if (v4 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1B5D04FA0();
        }

        if (0x5555555555555556 * ((v21 - v19) >> 3) > v5)
        {
          v5 = 0x5555555555555556 * ((v21 - v19) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v21 - v19) >> 3) >= 0x555555555555555)
        {
          v6 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v6 = v5;
        }

        v30[0] = &v19;
        if (v6)
        {
          sub_1B5CE5E20(&v19, v6);
        }

        v7 = 8 * ((v20 - v19) >> 3);
        v8 = *__p;
        *(v7 + 16) = v23;
        *v7 = v8;
        __p[1] = 0;
        v23 = 0;
        __p[0] = 0;
        v9 = 24 * v4 + 24;
        v10 = (24 * v4 - (v20 - v19));
        memcpy((v7 - (v20 - v19)), v19, v20 - v19);
        v11 = v19;
        v12 = v21;
        v19 = v10;
        v20 = v9;
        v21 = 0;
        *&v29 = v11;
        *(&v29 + 1) = v12;
        *&v28 = v11;
        *(&v28 + 1) = v11;
        sub_1B5CE5E78(&v28);
        v20 = v9;
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v3 = *__p;
        *(v20 + 2) = v23;
        *v2 = v3;
        v20 = v2 + 24;
      }

      ++v0;
    }

    while (v0 != v1);
    v0 = v25;
  }

  if (v0)
  {
    v26 = v0;
    operator delete(v0);
  }

  v13 = v19;
  v14 = v20;
  while (v13 != v14)
  {
    v15 = v13[23];
    if (v15 < 0)
    {
      v16 = *v13;
      v15 = *(v13 + 1);
    }

    else
    {
      v16 = v13;
    }

    v17 = qword_1EB90CA20;
    v18 = sub_1B5CDFA10(v16, v15);
    CFArrayAppendValue(v17, v18);
    v13 += 24;
  }

  *&v28 = &v19;
  sub_1B5CE5D7C(&v28);
}

void sub_1B5D1D054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  __p = &a9;
  sub_1B5CE5D7C(&__p);
  _Unwind_Resume(a1);
}

void sub_1B5D1E10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, const void *a33, const void *a34, __int16 a35)
{
  sub_1B5D0DD30(&STACK[0x3F8]);
  MEMORY[0x1B8C880C0](v35, 0x1000C8077774924);
  sub_1B5CFBD94(&STACK[0x458], MEMORY[0x1E69E54D0]);
  MEMORY[0x1B8C88080](&STACK[0x5F8]);
  sub_1B5D0DB30(&STACK[0x2B8]);
  MEMORY[0x1B8C88080](a20);
  sub_1B5D0DA64(&STACK[0x690]);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  sub_1B5CE5794(&a33, 0);
  sub_1B5CE5794(&a34, 0);
  sub_1B5D0C498(&a35);
  _Unwind_Resume(a1);
}

void *LXCreateWordModerationLexicon(CFDictionaryRef theDict, CFErrorRef *a2)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695E480];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"dataFile");
    if (Value)
    {
      v6 = *v4;
      Copy = CFStringCreateCopy(v6, Value);
      v14 = Copy;
      cf = 0;
      v16[0] = 0;
LABEL_7:
      v9 = sub_1B5CDFCFC(theDict);
      v16[0] = v9;
      if (v9)
      {
        Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v11 = MEMORY[0x1B8C87840](v9);
        CFDictionaryAddValue(Mutable, @"locale", v11);
        cf = LXLexiconCreate(Mutable, a2);
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      goto LABEL_10;
    }
  }

  v6 = *v4;
  v8 = CFLocaleCreate(v6, @"root");
  v16[0] = &unk_1F2D5B360;
  v16[3] = v16;
  Copy = sub_1B5CDFEBC(0, v8, v16);
  sub_1B5DA8570(v16);
  if (v8)
  {
    CFRelease(v8);
  }

  v14 = Copy;
  cf = 0;
  v16[0] = 0;
  if (theDict)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (!Copy || !CFStringGetLength(Copy))
  {
    if (a2)
    {
      Instance = 0;
      *a2 = sub_1B5D4E9A0(@"Could not determine the location of the word moderation lexicon file, or one was not provided.", 0);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (qword_1ED833C28 != -1)
  {
    dispatch_once(&qword_1ED833C28, &unk_1F2D57910);
  }

  Instance = _CFRuntimeCreateInstance();
  sub_1B5D50360((Instance + 16), v16[0], v14, 0, 0);
  *(Instance + 16) = &unk_1F2D5B3E0;
  *(Instance + 30280) = &unk_1F2D58190;
  *(Instance + 30288) = uspoof_open();
  *(Instance + 30296) = 0;
  if (cf)
  {
    CFRetain(cf);
    sub_1B5D1E6A8((Instance + 30296), cf);
  }

  if (((*(*(Instance + 16) + 16))(Instance + 16, a2) & 1) == 0)
  {
    CFRelease(Instance);
LABEL_20:
    Instance = 0;
  }

LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16[0])
  {
    CFRelease(v16[0]);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return Instance;
}

void sub_1B5D1E608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D1E6A8(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_1B5D1E6E0(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_1B5D1E718()
{
  qword_1ED833B90 = 0;
  *algn_1ED833B98 = "LXLexicon";
  qword_1ED833BA0 = 0;
  unk_1ED833BA8 = 0;
  qword_1ED833BB0 = sub_1B5D1A1F0;
  unk_1ED833BB8 = 0u;
  unk_1ED833BC8 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833B80 = result;
  return result;
}

void sub_1B5D1E76C(uint64_t a1)
{
  sub_1B5D1E7A4(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D1E7A4(uint64_t a1)
{
  *a1 = &unk_1F2D56460;
  v2 = a1 + 48;
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  v3 = MEMORY[0x1E69E54E8];
  v4 = *MEMORY[0x1E69E54E8];
  *(a1 + 48) = *MEMORY[0x1E69E54E8];
  *(v2 + *(v4 - 24)) = *(v3 + 24);
  *(a1 + 56) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  *(a1 + 56) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 64));
  std::ostream::~ostream();
  MEMORY[0x1B8C88080](a1 + 160);
  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v5)
  {
    (*(*v5 + 336))(v5);
  }

  v6 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v6)
  {
    (*(*v6 + 48))(v6);
  }

  return a1;
}

uint64_t sub_1B5D1E97C(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(result + 32) = *(result + 32) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t sub_1B5D1E9A8(uint64_t result, unsigned int a2)
{
  if (a2 <= 2)
  {
    *(result + 32) |= dword_1B5DC47D8[a2];
  }

  return result;
}

uint64_t sub_1B5D1E9CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1 & 8) != 0)
  {
    return 2;
  }

  else
  {
    return (v1 >> 1) & 1;
  }
}

double sub_1B5D1E9E4(uint64_t a1, float a2)
{
  result = a2;
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1B5D1E9FC(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(result + 32) = *(result + 32) & 0xFFFFFFFB | v2;
  return result;
}

uint64_t sub_1B5D1EA28(uint64_t a1)
{
  v1 = *(*sub_1B5D1EA70(a1) + 136);

  return v1();
}

uint64_t sub_1B5D1EA70(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    operator new();
  }

  return *(a1 + 24);
}

BOOL sub_1B5D1EB20(uint64_t a1)
{
  v1 = (*(*a1 + 312))(a1);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v2 = *(v1 + 20) == 9;
    if (*(v1 + 20) == 9)
    {
      break;
    }

    v1 = *(v1 + 40);
    if (!v1)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1B5D1EBF0(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 8) + 8) + 80);
  v4 = v2[1];
  v3 = v2[2];
  if (v4 != v3)
  {
    while (1)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_1B5CDD904(v6);
      }

      if (v7 == a2)
      {
        break;
      }

      v4 += 2;
      if (v4 == v3)
      {
        v4 = v3;
        break;
      }
    }

    v3 = v2[2];
  }

  if (v4 == v3)
  {
    return 0;
  }

  v8 = *(*v4 + 656);
  if (v8 != 255)
  {
    v9 = v2[171];
    v10 = v2[170];
    if (v9 == v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = ((v9 - v10) << 9) - 1;
    }

    v12 = v2[173];
    v13 = v2[174] + v12;
    if (v11 == v13)
    {
      if (v12 < 0x1000)
      {
        v15 = v2[172];
        v16 = v2[169];
        if (v9 - v10 < (v15 - v16))
        {
          operator new();
        }

        if (v15 == v16)
        {
          v17 = 1;
        }

        else
        {
          v17 = (v15 - v16) >> 2;
        }

        sub_1B5D04F58(v17);
      }

      v2[173] = v12 - 4096;
      v23 = *v10;
      v2[170] = v10 + 8;
      sub_1B5D083D4(v2 + 169, &v23);
      v10 = v2[170];
      v13 = v2[174] + v2[173];
    }

    *(*&v10[(v13 >> 9) & 0x7FFFFFFFFFFFF8] + (v13 & 0xFFF)) = v8;
    ++v2[174];
    v3 = v2[2];
  }

  if (v4 + 2 == v3)
  {
    v20 = v4;
  }

  else
  {
    do
    {
      v18 = *(v4 + 1);
      v4[2] = 0;
      v4[3] = 0;
      v19 = v4[1];
      *v4 = v18;
      if (v19)
      {
        sub_1B5CDD904(v19);
      }

      v20 = v4 + 2;
      v21 = v4 + 4;
      v4 += 2;
    }

    while (v21 != v3);
    v3 = v2[2];
  }

  while (v3 != v20)
  {
    v22 = *(v3 - 1);
    if (v22)
    {
      sub_1B5CDD904(v22);
    }

    v3 -= 2;
  }

  v2[2] = v20;
  return 1;
}

void sub_1B5D1F1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D1F1FC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 8) + 8) + 80);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v4 != v5)
  {
    while (1)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_1B5CDD904(v6);
      }

      if (v7 == a2)
      {
        break;
      }

      v4 += 2;
      if (v4 == v5)
      {
        v4 = v5;
        break;
      }
    }

    v5 = *(v3 + 16);
  }

  if (v4 == v5)
  {
    v9 = a2;
    operator new();
  }

  return 0;
}

uint64_t sub_1B5D1F3BC(uint64_t a1)
{
  v1 = *(*(*(a1 + 8) + 8) + 80);
  v2 = v1[1];
  if (v2 != v1[2])
  {
    do
    {
      v3 = v1[4];
      v4 = v1[5];
      if (v3 != v4)
      {
        do
        {
          v6 = *v3;
          v5 = v3[1];
          if (v5)
          {
            atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
            v7 = *v2;
            sub_1B5CDD904(v5);
            if (v7 == v6)
            {
              goto LABEL_9;
            }
          }

          else if (*v2 == v6)
          {
            goto LABEL_9;
          }

          v3 += 2;
        }

        while (v3 != v4);
        v3 = v4;
LABEL_9:
        v4 = v1[5];
      }

      if (v3 == v4)
      {
        v2 += 2;
        v12 = v1[2];
      }

      else
      {
        v8 = v1[2];
        if (v2 + 2 == v8)
        {
          v12 = v2;
        }

        else
        {
          v9 = v2;
          do
          {
            v10 = *(v9 + 1);
            v9[2] = 0;
            v9[3] = 0;
            v11 = v9[1];
            *v9 = v10;
            if (v11)
            {
              sub_1B5CDD904(v11);
            }

            v12 = v9 + 2;
            v13 = v9 + 4;
            v9 += 2;
          }

          while (v13 != v8);
          v8 = v1[2];
        }

        while (v8 != v12)
        {
          v14 = *(v8 - 1);
          if (v14)
          {
            sub_1B5CDD904(v14);
          }

          v8 -= 2;
        }

        v1[2] = v12;
      }
    }

    while (v2 != v12);
  }

  sub_1B5D05DDC(v1 + 4);
  return 1;
}

void sub_1B5D1F4F0(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 8);
  std::mutex::lock((v1 + 16));
  if (*(v1 + 8))
  {
    *(v1 + 8) = 2;
  }

  std::mutex::unlock((v1 + 16));
}

uint64_t sub_1B5D1F540(uint64_t a1)
{
  v1 = *(*(*(a1 + 8) + 8) + 80);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  result = 0xFFFFFFFFLL;
  while (v2 != v3)
  {
    v5 = *v2;
    v2 += 2;
    v6 = *(v5 + 576);
    if (result == v6)
    {
      v7 = result;
    }

    else
    {
      v7 = -1;
    }

    if (result == -1)
    {
      v7 = v6;
    }

    if (v6 == -1)
    {
      result = result;
    }

    else
    {
      result = v7;
    }
  }

  return result;
}

uint64_t sub_1B5D1F584(uint64_t a1, int a2)
{
  v2 = *(*(*(a1 + 8) + 8) + 80);
  v3 = *(v2 + 8);
  for (i = *(v2 + 16); v3 != i; *(v5 + 576) = v7)
  {
    v6 = *v3;
    v3 += 2;
    v5 = v6;
    if (a2 >= ((*(v6 + 616) - *(v6 + 608)) >> 3))
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }
  }

  return 0;
}

uint64_t sub_1B5D1F5E8(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v5 = *(*(*(a1 + 8) + 8) + 80);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v6 != v7)
  {
    while (*(*v6 + 656) != *(a2 + 123))
    {
      v6 += 16;
      if (v6 == v7)
      {
        return *a4;
      }
    }

    (*(**v6 + 168))(v14);
    v9 = v15;
    v11 = v14[0];
    v10 = v14[1];
    if (v15 >= 0)
    {
      v12 = v14;
    }

    else
    {
      v12 = v14[0];
    }

    if (v15 >= 0)
    {
      v10 = v15;
    }

    memcpy(&unk_1EB90C8A0, v12, 2 * v10);
    *a3 = &unk_1EB90C8A0;
    *a4 *= 2;
    if (v9 < 0)
    {
      operator delete(v11);
    }
  }

  return *a4;
}

unint64_t sub_1B5D1F6E0(uint64_t a1, void *__src, size_t __n, int a4, int a5, unsigned int a6, void *__dst, unint64_t a8)
{
  result = 0;
  if (__n && a4)
  {
    if (a6)
    {
      v12 = *(*(*(a1 + 8) + 8) + 80);
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      while (1)
      {
        if (v13 == v14)
        {
          result = 0;
          goto LABEL_12;
        }

        if (*(*v13 + 656) == a5)
        {
          break;
        }

        v13 += 2;
      }

      result = (*(**v13 + 96))(*v13, (a6 >> 4) & 8 | (a6 >> 2) & 4 | (a6 >> 15) & 0x10 | 1, __src, __n, a4 & 0xFFFFFFF, __dst);
LABEL_12:
      if ((result > a8) | result & 1)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }

    else if (a8 >= __n)
    {
      memcpy(__dst, __src, __n);
      return __n;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B5D1F7E4(uint64_t a1)
{
  v1 = sub_1B5D1EA70(a1);
  (*(*v1 + 200))(v1);
  return 0;
}

uint64_t sub_1B5D1F824(uint64_t a1)
{
  v2 = sub_1B5D1EA70(a1);
  (**v2)(v2);
  v3 = sub_1B5D1EA70(a1);
  v4 = (*(*v3 + 200))(v3);
  v5 = v4[2];
  v5[4] = 0;
  v5[5] = 0;
  v6 = v5[1];
  v7 = v5[2];
  if (v7 != v6)
  {
    v8 = 0;
    do
    {
      v9 = *(v6 + 8 * v8);
      if (v9)
      {
        v10 = *(v9 - 8);
        if (v10)
        {
          v11 = (v9 + (v10 << 7) - 24);
          v12 = -128 * v10;
          do
          {
            sub_1B5D05220(v11, 0);
            v11 -= 16;
            v12 += 128;
          }

          while (v12);
        }

        MEMORY[0x1B8C880C0](v9 - 16, 0x1070C80FE750B47);
        v6 = v5[1];
        v7 = v5[2];
      }

      ++v8;
    }

    while (v8 < (v7 - v6) >> 3);
  }

  v5[2] = v6;
  v13 = v4[4];
  if (v13)
  {
    v13[4] = 0;
    v13[5] = 0;
    v14 = v13[1];
    v15 = v13[2];
    if (v15 != v14)
    {
      v16 = 0;
      do
      {
        v17 = *(v14 + 8 * v16);
        if (v17)
        {
          MEMORY[0x1B8C880C0](v17, 0x1020C80EDCEB4C7);
          v14 = v13[1];
          v15 = v13[2];
        }

        ++v16;
      }

      while (v16 < (v15 - v14) >> 3);
    }

    v13[2] = v14;
  }

  v18 = v4[6];
  if (v18)
  {
    *(v18 + 32) = 0;
    *(v18 + 40) = 0;
  }

  v19 = v4[8];
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v4[8] = 0;
  return 0;
}

uint64_t sub_1B5D1F9E0(uint64_t a1, const UChar *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((*(*a1 + 280))(a1) <= 0)
  {
    if (setjmp((a1 + 336)) != 1)
    {
      std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
      v16 = sub_1B5CE599C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/tagger.cpp", 69);
      v17 = sub_1B5CE599C(v16, "(", 1);
      v18 = MEMORY[0x1B8C87F00](v17, 355);
      v19 = sub_1B5CE599C(v18, ") [", 3);
      v20 = sub_1B5CE599C(v19, "lattice_level() >= 1", 20);
      v21 = sub_1B5CE599C(v20, "] ", 2);
      sub_1B5CE599C(v21, "use -l option to obtain N-Best results. e.g., mecab -N10 -l1", 60);
      longjmp((a1 + 336), 1);
    }

    return 0;
  }

  if (a4)
  {
    v14 = sub_1B5D1EA70(a1);
    v15 = (*(*v14 + 152))(v14);
  }

  else
  {
    v15 = (*(*a1 + 24))(a1, a2, a3, a5, a6, a7);
  }

  v22 = v15;
  if (!v15)
  {
    return 0;
  }

  v23 = sub_1B5D1EA70(a1);
  (*(*v23 + 144))(v23, v22);
  First = u_strFindFirst(a2, a3 >> 1, "\t", 1);
  if (First)
  {
    v25 = First - a2;
  }

  else
  {
    v25 = 0;
  }

  if (First)
  {
    v26 = -16;
  }

  else
  {
    v26 = -8;
  }

  v27 = sub_1B5D1EA70(a1);
  v28 = (*(*v27 + 200))(v27);
  v29 = sub_1B5D100B8(v28);
  sub_1B5D21BA4(v29, v22, v25 + a4, v26 + a3);
  return 1;
}

uint64_t sub_1B5D1FC70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if ((*(*a1 + 280))(a1) < 1)
  {
    return 0;
  }

  v12 = sub_1B5D1EA70(a1);
  v13 = v12;
  if (a5)
  {
    v14 = (*(*v12 + 152))(v12);
    goto LABEL_44;
  }

  sub_1B5D203BC(a1);
  if ((a6 & 2) == 0)
  {
    (**v13)(v13);
  }

  if (!a4)
  {
    a4 = 2 * (*(*a2 + 24))(a2);
  }

  (*(*v13 + 80))(v13, a3, a4);
  v15 = *(a1[1] + 8);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 0x40000000;
  v53 = sub_1B5D05790;
  v54 = &unk_1E7C20548;
  v55 = v15;
  std::mutex::lock((v15 + 16));
  *(v15 + 8) = 1;
  std::mutex::unlock((v15 + 16));
  if (((*(*v13 + 168))(v13, 2) & 1) != 0 || (*(*v13 + 168))(v13, 8))
  {
    *(v15 + 120) = sub_1B5D05258;
    *(v15 + 128) = 0;
  }

  if ((*(*v13 + 168))(v13, 4))
  {
    sub_1B5D04490(v13, 0, 0);
    if (!v16)
    {
      goto LABEL_41;
    }
  }

  v17 = (*(*v13 + 64))(v13);
  v49 = (*(*v13 + 88))(v13);
  v18 = (*(*v13 + 40))(v13);
  v51 = (*(*v13 + 32))(v13);
  v19 = (*(*v13 + 200))(v13);
  v20 = (*(*a2 + 24))(a2);
  v21 = *(v15 + 80);
  v22 = sub_1B5D05010(*(v19 + 16));
  v22[6] = 0u;
  v22[7] = 0u;
  v22[4] = 0u;
  v22[5] = 0u;
  v22[2] = 0u;
  v22[3] = 0u;
  *v22 = 0u;
  v22[1] = 0u;
  v23 = *(v21 + 136);
  *(v22 + 6) = "BOS/EOS";
  *(v22 + 7) = v23;
  *(v22 + 124) = 2;
  *v18 = v22;
  v24 = sub_1B5D04ED0(v22);
  *(v15 + 112) = v24;
  v50 = v17;
  if (v24 != -1)
  {
    if (!v24)
    {
      goto LABEL_41;
    }

    v24 = 0;
  }

  v25 = 2 * v20;
  *(v15 + 116) = v24;
  v26 = (v15 + 116);
  if (2 * v20)
  {
    if (*(v15 + 8) != 2)
    {
      v27 = 0;
      do
      {
        if (v18[v27])
        {
          if (v27 || !*v51)
          {
            v28 = *(v15 + 80);
            if (v50)
            {
              v29 = sub_1B5D0713C(v28, a2, v27, (v50 + v27), v50 + v49, v19, a6);
            }

            else
            {
              v29 = sub_1B5D0713C(v28, a2, v27, 0, 0, v19, a6);
            }

            v51[v27] = v29;
          }

          v30 = *(v15 + 120);
          v31 = *(v15 + 128);
          v32 = (v15 + (v31 >> 1));
          if (v31)
          {
            v30 = *(*v32 + v30);
          }

          if (!v30(v32, v27))
          {
            break;
          }

          if (*v26 != -1 && *v26 >= *(v15 + 112))
          {
            goto LABEL_35;
          }
        }

        v27 += 2;
        if (v25 <= v27)
        {
          goto LABEL_35;
        }
      }

      while (*(v15 + 8) != 2);
    }
  }

  else
  {
LABEL_35:
    v33 = *(v15 + 80);
    v34 = sub_1B5D05010(*(v19 + 16));
    v34[6] = 0u;
    v34[7] = 0u;
    v34[4] = 0u;
    v34[5] = 0u;
    v34[2] = 0u;
    v34[3] = 0u;
    *v34 = 0u;
    v34[1] = 0u;
    v35 = *(v33 + 136);
    *(v34 + 6) = "BOS/EOS";
    *(v34 + 7) = v35;
    *(v34 + 124) = 3;
    v51[v25] = v34;
    if (!v18[v25])
    {
      goto LABEL_52;
    }

    v36 = *(v15 + 120);
    v37 = *(v15 + 128);
    v38 = (v15 + (v37 >> 1));
    if (v37)
    {
      v36 = *(*v38 + v36);
    }

    if (v36(v38, v25, v34, v18, v19, v15 + 116))
    {
LABEL_52:
      if ((*(*v13 + 168))(v13, 32, v34))
      {
        sub_1B5D04DB4(v13);
      }

      else
      {
        v47 = (*(*v13 + 24))(v13);
        v48 = *v47;
        if (*v47)
        {
          do
          {
            v48[1] = v47;
            v47 = v48;
            v48 = *v48;
          }

          while (v48);
        }
      }

      v39 = 1;
      goto LABEL_42;
    }
  }

LABEL_41:
  v39 = 0;
LABEL_42:
  a5 = 0;
  v53(v52);
  if (!v39)
  {
    return 0;
  }

  v14 = (*(*v13 + 16))(v13);
LABEL_44:
  v40 = v14;
  if (v14)
  {
    v41 = sub_1B5D1EA70(a1);
    (*(*v41 + 144))(v41, v40);
    v42 = sub_1B5D1EA70(a1);
    v43 = (*(*v42 + 200))(v42);
    v44 = sub_1B5D100B8(v43);
    v45 = (*(*a2 + 24))(a2);
    sub_1B5D21BA4(v44, v40, a5, 2 * v45);
    return 1;
  }

  return 0;
}

uint64_t sub_1B5D203BC(uint64_t a1)
{
  v2 = sub_1B5D1EA70(a1);
  (*(*v2 + 176))(v2, *(a1 + 32));
  v3 = sub_1B5D1EA70(a1);
  v4.n128_u64[0] = *(a1 + 40);
  v4.n128_f32[0] = v4.n128_f64[0];
  v5 = *(*v3 + 112);

  return v5(v4);
}

uint64_t sub_1B5D20448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(*a1 + 280))(a1) < 1)
  {
    return 0;
  }

  if (a4)
  {
    v10 = sub_1B5D1EA70(a1);
    v11 = (*(*v10 + 152))(v10);
  }

  else
  {
    v11 = (*(*a1 + 16))(a1, a2, a3, a5);
  }

  v12 = v11;
  if (!v11)
  {
    return 0;
  }

  v13 = sub_1B5D1EA70(a1);
  (*(*v13 + 144))(v13, v12);
  v14 = sub_1B5D1EA70(a1);
  v15 = (*(*v14 + 200))(v14);
  v16 = sub_1B5D100B8(v15);
  sub_1B5D21BA4(v16, v12, a4, a3);
  return 1;
}

uint64_t sub_1B5D205B8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *(*(a1 + 8) + 8);
  result = (*(*a2 + 64))(a2);
  if (result)
  {
    v7 = (*(*a2 + 32))(a2);
    v8 = (*(*a2 + 200))(a2);
    v9 = (*(*a2 + 88))(a2);
    v10 = (*(*a2 + 64))(a2);
    v11 = v10 + v9;
    v12 = *(v5 + 80);
    v13 = sub_1B5D05010(*(v8 + 16));
    v13[6] = 0u;
    v13[7] = 0u;
    *(v13 + 124) = 2;
    *v13 = 0u;
    v13[1] = 0u;
    v13[4] = 0u;
    v13[5] = 0u;
    v13[2] = 0u;
    v13[3] = 0u;
    v14 = *(v12 + 136);
    *(v13 + 6) = v10;
    *(v13 + 7) = v14;
    *v7 = v13;
    result = sub_1B5D07E40(*(v5 + 80), v10, (v10 + v9), v8, a3);
    if (result)
    {
      v7[2] = result;
      v15 = *(v5 + 80);
      v16 = sub_1B5D05010(*(v8 + 16));
      v16[6] = 0u;
      v16[7] = 0u;
      *(v16 + 124) = 3;
      *v16 = 0u;
      v16[1] = 0u;
      v16[4] = 0u;
      v16[5] = 0u;
      v16[2] = 0u;
      v16[3] = 0u;
      v17 = *(v15 + 136);
      *(v16 + 6) = v11;
      *(v16 + 7) = v17;
      v7[v9 + 2] = v16;
      v18 = v7[2];
      for (*(v13 + 1) = v18; v18; v18 = *(v18 + 24))
      {
        *(v18 + 8) = v7[*(v18 + 96) + 2];
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1B5D207AC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v12 = sub_1B5D1EA70(a1);
    sub_1B5D203BC(a1);
    if ((a4 & 2) == 0)
    {
      (**v12)(v12);
    }

    (*(*v12 + 80))(v12, a2, a3);
    if (sub_1B5D0354C(*(*(a1 + 8) + 8), v12, a4, a5, a6))
    {
      return (*(*v12 + 16))(v12);
    }
  }

  else if (setjmp((a1 + 336)) != 1)
  {
    std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
    v13 = sub_1B5CE599C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/tagger.cpp", 69);
    v14 = sub_1B5CE599C(v13, "(", 1);
    v15 = MEMORY[0x1B8C87F00](v14, 173);
    v16 = sub_1B5CE599C(v15, ") [", 3);
    v17 = sub_1B5CE599C(v16, "str", 3);
    v18 = sub_1B5CE599C(v17, "] ", 2);
    sub_1B5CE599C(v18, "NULL pointer is given", 21);
    longjmp((a1 + 336), 1);
  }

  return 0;
}

uint64_t sub_1B5D20994(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    v8 = sub_1B5D1EA70(a1);
    sub_1B5D203BC(a1);
    if ((a4 & 2) == 0)
    {
      (**v8)(v8);
    }

    (*(*v8 + 80))(v8, a2, a3);
    if (sub_1B5D0354C(*(*(a1 + 8) + 8), v8, a4, 0, 0))
    {
      return (*(*v8 + 16))(v8);
    }
  }

  else if (setjmp((a1 + 336)) != 1)
  {
    std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
    v9 = sub_1B5CE599C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/tagger.cpp", 69);
    v10 = sub_1B5CE599C(v9, "(", 1);
    v11 = MEMORY[0x1B8C87F00](v10, 140);
    v12 = sub_1B5CE599C(v11, ") [", 3);
    v13 = sub_1B5CE599C(v12, "str", 3);
    v14 = sub_1B5CE599C(v13, "] ", 2);
    sub_1B5CE599C(v14, "NULL pointer is given", 21);
    longjmp((a1 + 336), 1);
  }

  return 0;
}

uint64_t sub_1B5D20B6C(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 24))(a2);
  v3 = *v2;
  if (*v2)
  {
    do
    {
      v3[1] = v2;
      v2 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  return 1;
}

uint64_t sub_1B5D20BC4(uint64_t a1, uint64_t **a2)
{
  if (*(a1 + 8) && (v2 = *(*(*(a1 + 16) + 8) + 80)) != 0)
  {
    return sub_1B5D084D8(v2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D20BE8(uint64_t a1)
{
  *a1 = &unk_1F2D56460;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0x3FE8000000000000;
  sub_1B5D0218C((a1 + 48));
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  return a1;
}

void sub_1B5D20C4C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 336))(v3);
  }

  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 48))(v4);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1B5D20CC0(uint64_t a1, const char *a2)
{
  v65[19] = *MEMORY[0x1E69E9840];
  v3 = sub_1B5D0D7DC(v63, a2, 8);
  if ((*(v3 + *(v63[0] - 24) + 32) & 5) != 0)
  {
    if (setjmp((a1 + 416)) != 1)
    {
      std::ios_base::clear((a1 + 128 + *(*(a1 + 128) - 24)), 0);
      v41 = sub_1B5CE599C((a1 + 128), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/param.cpp", 68);
      v42 = sub_1B5CE599C(v41, "(", 1);
      v43 = MEMORY[0x1B8C87F00](v42, 138);
      v44 = sub_1B5CE599C(v43, ") [", 3);
      v45 = sub_1B5CE599C(v44, "ifs", 3);
      v46 = sub_1B5CE599C(v45, "] ", 2);
      v47 = sub_1B5CE599C(v46, "no such file or directory: ", 27);
      v48 = strlen(a2);
      sub_1B5CE599C(v47, a2, v48);
      longjmp((a1 + 416), 1);
    }

    v4 = 0;
    goto LABEL_76;
  }

  memset(&v61, 0, sizeof(v61));
  v5 = MEMORY[0x1E69E9830];
  v6 = v63[0];
  while (1)
  {
LABEL_5:
    std::ios_base::getloc((v63 + *(v6 - 24)));
    v7 = std::locale::use_facet(&v60, MEMORY[0x1E69E5318]);
    v8 = (v7->__vftable[2].~facet_0)(v7, 10);
    std::locale::~locale(&v60);
    MEMORY[0x1B8C87E10](v9);
    if (v60.__r_.__value_.__s.__data_[0] != 1)
    {
      goto LABEL_22;
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      *v61.__r_.__value_.__l.__data_ = 0;
      v61.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v61.__r_.__value_.__s.__data_[0] = 0;
      *(&v61.__r_.__value_.__s + 23) = 0;
    }

    v10 = 0;
    while (1)
    {
      v11 = *&v64[*(v63[0] - 24) + 24];
      v12 = v11[3];
      if (v12 != v11[4])
      {
        v11[3] = v12 + 1;
        v13 = *v12;
        goto LABEL_13;
      }

      v14 = (*(*v11 + 80))(v11);
      v13 = v14;
      if (v14 == -1)
      {
        break;
      }

LABEL_13:
      if (v8 == v13)
      {
        v16 = 0;
        goto LABEL_21;
      }

      std::string::push_back(&v61, v13);
      v15 = ++v10;
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        v10 = v15;
        if (v61.__r_.__value_.__l.__size_ == 0x7FFFFFFFFFFFFFF7)
        {
          v16 = 4;
          goto LABEL_21;
        }
      }
    }

    if (v10)
    {
      v16 = 2;
    }

    else
    {
      v16 = 6;
    }

LABEL_21:
    std::ios_base::clear((v63 + *(v63[0] - 24)), *&v64[*(v63[0] - 24) + 16] | v16);
LABEL_22:
    v17 = (*&v64[*(v63[0] - 24) + 16] & 5) != 0;
    if ((*&v64[*(v63[0] - 24) + 16] & 5) != 0)
    {
      goto LABEL_73;
    }

    if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v6 = v63[0];
      if (v61.__r_.__value_.__l.__size_)
      {
        v18 = *v61.__r_.__value_.__l.__data_;
        goto LABEL_28;
      }

      continue;
    }

    v6 = v63[0];
    if (*(&v61.__r_.__value_.__s + 23))
    {
      v18 = v61.__r_.__value_.__s.__data_[0];
LABEL_28:
      v6 = v63[0];
      if (v18 != 59)
      {
        v6 = v63[0];
        if (v18 != 35)
        {
          break;
        }
      }
    }
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v61.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v20 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v61 : v61.__r_.__value_.__r.__words[0];
    v21 = memchr(v20, 61, size);
    if (v21)
    {
      v22 = v21;
      if (v21 - v20 != -1)
      {
        v23 = v21 - v20 + 1;
        do
        {
          v24 = v23;
          v25 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
          if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v25 = v61.__r_.__value_.__l.__size_;
          }

          if (v23 >= v25)
          {
            break;
          }

          v26 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v61 : v61.__r_.__value_.__r.__words[0];
          v27 = v26->__r_.__value_.__s.__data_[v24];
          v28 = (v27 & 0x80000000) != 0 ? __maskrune(v27, 0x4000uLL) : *(v5 + 4 * v27 + 60) & 0x4000;
          v29 = v28;
          v23 = v24 + 1;
        }

        while (v29);
        v30 = &v22[~v20];
        while (1)
        {
          v31 = v30;
          v32 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
          if (v30 < 0)
          {
            break;
          }

          if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v33 = &v61;
          }

          else
          {
            v33 = v61.__r_.__value_.__r.__words[0];
          }

          v34 = v33->__r_.__value_.__s.__data_[v31];
          if ((v34 & 0x80000000) != 0)
          {
            v35 = __maskrune(v34, 0x4000uLL);
          }

          else
          {
            v35 = *(v5 + 4 * v34 + 60) & 0x4000;
          }

          v36 = v35;
          v30 = v31 - 1;
          if (!v36)
          {
            v37 = v31 + 1;
            v32 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
            goto LABEL_61;
          }
        }

        v37 = v30 + 1;
LABEL_61:
        if ((v32 & 0x80u) == 0)
        {
          v38 = v32;
        }

        else
        {
          v38 = v61.__r_.__value_.__l.__size_;
        }

        std::string::basic_string(&v60, &v61, v24, v38 - v24, &__p);
        std::string::basic_string(&__p, &v61, 0, v37, &v62);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        sub_1B5D153D8(a1, p_p, &v60, 0);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        v6 = v63[0];
        goto LABEL_5;
      }
    }
  }

  if (setjmp((a1 + 416)) != 1)
  {
    std::ios_base::clear((a1 + 128 + *(*(a1 + 128) - 24)), 0);
    v49 = sub_1B5CE599C((a1 + 128), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/param.cpp", 68);
    v50 = sub_1B5CE599C(v49, "(", 1);
    v51 = MEMORY[0x1B8C87F00](v50, 146);
    v52 = sub_1B5CE599C(v51, ") [", 3);
    v53 = sub_1B5CE599C(v52, "pos != std::string::npos", 24);
    v54 = sub_1B5CE599C(v53, "] ", 2);
    v55 = sub_1B5CE599C(v54, "format error: ", 14);
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = &v61;
    }

    else
    {
      v56 = v61.__r_.__value_.__r.__words[0];
    }

    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v57 = v61.__r_.__value_.__l.__size_;
    }

    sub_1B5CE599C(v55, v56, v57);
    longjmp((a1 + 416), 1);
  }

LABEL_73:
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  v4 = v17;
LABEL_76:
  v63[0] = *MEMORY[0x1E69E54C8];
  *(v63 + *(v63[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C87DF0](v64);
  std::istream::~istream();
  MEMORY[0x1B8C88080](v65);
  return v4;
}

void sub_1B5D21490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  __cxa_end_catch();
  if (a24 < 0)
  {
    operator delete(__p);
  }

  v27 = sub_1B5D1530C(&a26);
  MEMORY[0x1B8C88080](v27 + 424);
  _Unwind_Resume(a1);
}

void sub_1B5D2149C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1B5CE56B8(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1B5D214DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  v33 = sub_1B5D1530C(&a32);
  MEMORY[0x1B8C88080](v33 + 424);
  _Unwind_Resume(a1);
}

void sub_1B5D21518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::locale a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  std::locale::~locale(&a16);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  v27 = sub_1B5D1530C(&a26);
  MEMORY[0x1B8C88080](v27 + 424);
  _Unwind_Resume(a1);
}

void sub_1B5D21554(uint64_t a1, char *a2, unsigned int *a3)
{
  v37[2] = *MEMORY[0x1E69E9840];
  sub_1B5CE410C(v26, a2);
  v5 = *a3;
  sub_1B5CF7CDC(v30);
  memset(&v29, 0, sizeof(v29));
  v6 = MEMORY[0x1B8C87F00](&v31, v5);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
  {
    goto LABEL_33;
  }

  MEMORY[0x1B8C87E10](&v36, v30, 0);
  if ((v36 & 1) == 0)
  {
    goto LABEL_31;
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    *v29.__r_.__value_.__l.__data_ = 0;
    v29.__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    v29.__r_.__value_.__s.__data_[0] = 0;
    *(&v29.__r_.__value_.__s + 23) = 0;
  }

  v7 = (v30 + *(v30[0] - 3));
  width = v7->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v9 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v9 = v7->__width_;
  }

  if (width >= 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v7);
  v11 = std::locale::use_facet(&v28, MEMORY[0x1E69E5318]);
  std::locale::~locale(&v28);
  if (!v10)
  {
    v19 = v30[0];
    *(&v33[-1].__locale_ + *(v30[0] - 3)) = 0;
    v18 = 4;
    goto LABEL_30;
  }

  v12 = 0;
  while (1)
  {
    v13 = *(&v33[1].__locale_ + *(v30[0] - 3));
    v14 = v13[3];
    if (v14 == v13[4])
    {
      break;
    }

    LOBYTE(v15) = *v14;
LABEL_18:
    if ((v15 & 0x80) == 0 && (*(&v11[1].~facet + (v15 & 0x7F)) & 0x4000) != 0)
    {
      v18 = 0;
      goto LABEL_28;
    }

    std::string::push_back(&v29, v15);
    v16 = *(&v33[1].__locale_ + *(v30[0] - 3));
    v17 = v16[3];
    if (v17 == v16[4])
    {
      (*(*v16 + 80))(v16);
    }

    else
    {
      v16[3] = v17 + 1;
    }

    if (v10 == ++v12)
    {
      v18 = 0;
      v12 = 1;
      goto LABEL_28;
    }
  }

  v15 = (*(*v13 + 72))(v13);
  if (v15 != -1)
  {
    goto LABEL_18;
  }

  v18 = 2;
LABEL_28:
  v19 = v30[0];
  *(&v33[-1].__locale_ + *(v30[0] - 3)) = 0;
  if (!v12)
  {
    v18 |= 4u;
  }

LABEL_30:
  std::ios_base::clear((v30 + *(v19 - 3)), *(&v33[0].__locale_ + *(v19 - 3)) | v18);
LABEL_31:
  if ((*(&v33[0].__locale_ + *(v30[0] - 3)) & 5) != 0 || (sub_1B5D0317C(v30), (*(&v33[0].__locale_ + *(v30[0] - 3)) & 2) == 0))
  {
LABEL_33:
    operator new();
  }

  v37[0] = v29.__r_.__value_.__l.__size_;
  v24 = v29.__r_.__value_.__r.__words[0];
  *(v37 + 7) = *(&v29.__r_.__value_.__r.__words[1] + 7);
  v25 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  v30[0] = *MEMORY[0x1E69E54D8];
  v20 = *(MEMORY[0x1E69E54D8] + 72);
  *(v30 + *(v30[0] - 3)) = *(MEMORY[0x1E69E54D8] + 64);
  v31 = v20;
  v32 = MEMORY[0x1E69E5548] + 16;
  if (v34 < 0)
  {
    operator delete(v33[7].__locale_);
  }

  v32 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v33);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C88080](&v35);
  v30[0] = v26;
  v21 = sub_1B5D1558C((a1 + 8), v26, v30);
  v22 = v21;
  if (*(v21 + 79) < 0)
  {
    operator delete(v21[7]);
  }

  v23 = v37[0];
  v22[7] = v24;
  v22[8] = v23;
  *(v22 + 71) = *(v37 + 7);
  *(v22 + 79) = v25;
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }
}

void sub_1B5D21A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a2)
  {
    std::locale::~locale(&a16);
    __cxa_begin_catch(exception_object);
    v25 = a24;
    *(&a24 + *(a24 - 24) + 32) |= 1u;
    if ((*(&a24 + *(v25 - 24) + 36) & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x1B5D217DCLL);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D21BA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1 + 2;
  v8 = a1[2];
  v9[8] = 0;
  v9[9] = 0;
  if (v8)
  {
    a1[3] = v8;
    operator delete(v8);
  }

  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  do
  {
    v10 = a2;
    a2 = *(a2 + 8);
  }

  while (a2);
  sub_1B5D21CE4(v9 + 4);
  v12 = v11;
  *v11 = v10;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a4;
  a1[1] = a3;
  v14 = a1[3];
  v13 = a1[4];
  if (v14 >= v13)
  {
    v16 = (v14 - *v9) >> 3;
    if ((v16 + 1) >> 61)
    {
      sub_1B5D04FA0();
    }

    v17 = v13 - *v9;
    v18 = v17 >> 2;
    if (v17 >> 2 <= (v16 + 1))
    {
      v18 = v16 + 1;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v19 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    if (v19)
    {
      sub_1B5D051D8(v19);
    }

    v20 = (8 * v16);
    *v20 = v12;
    v15 = 8 * v16 + 8;
    v21 = a1[2];
    v22 = a1[3] - v21;
    v23 = v20 - v22;
    memcpy(v20 - v22, v21, v22);
    v24 = a1[2];
    a1[2] = v23;
    a1[3] = v15;
    a1[4] = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v14 = v11;
    v15 = (v14 + 1);
  }

  a1[3] = v15;
  v25 = a1[2];

  return sub_1B5D21E2C(v25, v15, (v15 - v25) >> 3);
}

double sub_1B5D21CE4(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[4];
  if (v3 == v2)
  {
    v3 = 0;
    ++v1;
    a1[4] = 0;
    a1[5] = v1;
  }

  v4 = a1[1];
  if (v1 == (a1[2] - v4) >> 3)
  {
    is_mul_ok(v2, 0x28uLL);
    operator new[]();
  }

  v5 = *(v4 + 8 * v1);
  a1[4] = v3 + 1;
  v6 = v5 + 40 * v3;
  *(v6 + 32) = 0;
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  return result;
}

uint64_t sub_1B5D21E2C(uint64_t result, uint64_t a2, uint64_t a3)
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
    if (*(*v4 + 16) > v9)
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

      while (*(*v4 + 16) > v9);
      *v10 = v7;
    }
  }

  return result;
}

uint64_t sub_1B5D21E88(char *a1)
{
  if ((atomic_load_explicit(&qword_1EB90CA58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB90CA58))
  {
    operator new();
  }

  v2 = qword_1EB90CA50;
  pthread_mutex_lock((qword_1EB90CA50 + 8));
  if ((atomic_load_explicit(&qword_1EB90CA48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB90CA48))
  {
    operator new();
  }

  sub_1B5D0E3A4(qword_1EB90CA40, a1);

  return pthread_mutex_unlock((v2 + 8));
}

void sub_1B5D21F8C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C880F0](v1, 0x10B3C4049531B19);
  __cxa_guard_abort(&qword_1EB90CA58);
  _Unwind_Resume(a1);
}

void sub_1B5D21FD4(void *a1)
{
  *a1 = &unk_1F2D57940;
  v1 = a1[2];
  if (v1)
  {
    sub_1B5CDD904(v1);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D22040(void *a1)
{
  *a1 = &unk_1F2D57940;
  v2 = a1[2];
  if (v2)
  {
    sub_1B5CDD904(v2);
  }

  return a1;
}

uint64_t sub_1B5D2208C(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  result = ucol_strcollUTF8();
  if ((result + 1) >= 3)
  {
    __assert_rtn("compareInCollation", "ICUCollatorWrapper.cpp", 128, "false && invalid return value from ucol_strcollUTF8()");
  }

  return result;
}

void sub_1B5D22140(uint64_t a1@<X0>, UChar32 a2@<W1>, _WORD *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __assert_rtn("computeSortKey", "ICUCollatorWrapper.cpp", 73, "c != 0");
  }

  src = a2;
  *pErrorCode = 0;
  u_strFromUTF32(dest, 2, pErrorCode, &src, 1, &pErrorCode[1]);
  if (pErrorCode[1] >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    if (qword_1EB90CB20 != -1)
    {
      dispatch_once(&qword_1EB90CB20, &unk_1F2D59740);
    }

    v6 = qword_1EB90CB18;
    if (os_log_type_enabled(qword_1EB90CB18, OS_LOG_TYPE_ERROR))
    {
      v10 = u_errorName(pErrorCode[1]);
      *buf = 67109378;
      v17 = a2;
      v18 = 2080;
      v19 = v10;
      _os_log_error_impl(&dword_1B5CDB000, v6, OS_LOG_TYPE_ERROR, "u_strFromUTF32 failed to convert %u (%s)", buf, 0x12u);
    }

    goto LABEL_7;
  }

  if (!*(a1 + 8))
  {
LABEL_7:
    *a3 = 0;
    return;
  }

  SortKey = ucol_getSortKey();
  if (SortKey >= 9)
  {
    operator new[]();
  }

  if (SortKey)
  {
    v9 = SortKey - 1;
    if (buf[v9])
    {
      __assert_rtn("computeSortKey", "ICUCollatorWrapper.cpp", 110, "keyBuffer[key_len - 1] == 0");
    }

    sub_1B5CDD214(a3, v9, buf, SortKey - 1);
  }

  else
  {
    if (qword_1EB90CB20 != -1)
    {
      dispatch_once(&qword_1EB90CB20, &unk_1F2D59740);
    }

    v8 = qword_1EB90CB18;
    if (os_log_type_enabled(qword_1EB90CB18, OS_LOG_TYPE_ERROR))
    {
      *v14 = 67109120;
      v15 = pErrorCode[0];
      _os_log_error_impl(&dword_1B5CDB000, v8, OS_LOG_TYPE_ERROR, "ucol_getSortKey failed compute collation key of string (len=%d)", v14, 8u);
    }

    *a3 = 0;
  }
}

uint64_t sub_1B5D22414(uint64_t (***a1)(void, unsigned __int16 *, void), unsigned __int16 *a2)
{
  v2 = *(a2 + 1);
  if (!v2)
  {
    v2 = a2 + 8;
  }

  return (**a1)(a1, v2, *a2);
}

void sub_1B5D22450(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, _WORD *a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    *a4 = 0;
    return;
  }

  v5 = a3;
  sub_1B5D22848(&__p, a3);
  *pErrorCode = 0;
  u_strFromUTF8(__p, (v27 - __p) >> 1, pErrorCode, a2, v5, &pErrorCode[1]);
  v8 = pErrorCode[1];
  if (pErrorCode[1] == U_BUFFER_OVERFLOW_ERROR)
  {
    v9 = pErrorCode[0];
    v10 = __p;
    v11 = v27;
    v12 = (v27 - __p) >> 1;
    if (pErrorCode[0] <= v12)
    {
      if (pErrorCode[0] >= v12)
      {
LABEL_17:
        pErrorCode[1] = U_ZERO_ERROR;
        u_strFromUTF8(v10, (v11 - v10) >> 1, pErrorCode, a2, v5, &pErrorCode[1]);
        v8 = pErrorCode[1];
        goto LABEL_18;
      }

      v11 = __p + 2 * pErrorCode[0];
    }

    else
    {
      v13 = pErrorCode[0] - v12;
      if (v13 > (v28 - v27) >> 1)
      {
        if ((pErrorCode[0] & 0x80000000) == 0)
        {
          if (v28 - __p > pErrorCode[0])
          {
            v9 = v28 - __p;
          }

          if ((v28 - __p) >= 0x7FFFFFFFFFFFFFFELL)
          {
            v14 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v9;
          }

          sub_1B5D0DF78(v14);
        }

        sub_1B5D04FA0();
      }

      bzero(v27, 2 * v13);
      v11 += 2 * v13;
    }

    v27 = v11;
    goto LABEL_17;
  }

LABEL_18:
  if (v8 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    goto LABEL_19;
  }

  if (pErrorCode[0] > ((v27 - __p) >> 1))
  {
    __assert_rtn("computeSortKey", "ICUCollatorWrapper.cpp", 40, "ustr_len <= ustr.size()");
  }

  if (!*(a1 + 8))
  {
LABEL_19:
    *a4 = 0;
    goto LABEL_37;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (pErrorCode[0])
  {
    if ((pErrorCode[0] & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1B5D04FA0();
  }

  v15 = 0;
  v16 = 0;
  SortKey = ucol_getSortKey();
  if (SortKey)
  {
    sub_1B5D228D4(&v22, SortKey);
    v16 = v22;
    v15 = v23;
    SortKey = ucol_getSortKey();
  }

  if (!SortKey)
  {
    if (qword_1EB90CB20 != -1)
    {
      dispatch_once(&qword_1EB90CB20, &unk_1F2D59740);
    }

    v19 = qword_1EB90CB18;
    if (os_log_type_enabled(qword_1EB90CB18, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v30 = pErrorCode[0];
      _os_log_error_impl(&dword_1B5CDB000, v19, OS_LOG_TYPE_ERROR, "ucol_getSortKey failed compute collation key of string (len=%d)", buf, 8u);
    }

    *a4 = 0;
    if (!v16)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v15 - v16 < SortKey)
  {
    v20 = "key_len <= key.size()";
    v21 = 60;
    goto LABEL_43;
  }

  v18 = SortKey - 1;
  if (v16[v18])
  {
    v20 = "key[key_len - 1] == 0";
    v21 = 61;
LABEL_43:
    __assert_rtn("computeSortKey", "ICUCollatorWrapper.cpp", v21, v20);
  }

  sub_1B5CDD214(a4, v18, v16, v18);
LABEL_36:
  v23 = v16;
  operator delete(v16);
LABEL_37:
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

void sub_1B5D2280C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1B5D22848(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      sub_1B5D0DF78(a2);
    }

    sub_1B5D04FA0();
  }

  return a1;
}

void sub_1B5D228B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D228D4(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_1B5D04FA0();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

id sub_1B5D22A0C(void *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v42 = a1;
  if (v42)
  {
    v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v42, "count")}];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v42;
    v1 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (!v1)
    {
      goto LABEL_37;
    }

    v2 = *v46;
    v3 = *MEMORY[0x1E695D9B0];
    v39 = *MEMORY[0x1E695D9E8];
    v40 = *MEMORY[0x1E695D978];
    while (1)
    {
      v4 = 0;
      do
      {
        if (*v46 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v45 + 1) + 8 * v4);
        v6 = CFGetTypeID(v5);
        if (v6 == CFLocaleGetTypeID())
        {
          v7 = v5;
          v8 = MEMORY[0x1E695DF58];
          v9 = [v7 localeIdentifier];
          v10 = [v8 componentsFromLocaleIdentifier:v9];

          v11 = [v10 objectForKeyedSubscript:v3];
          LODWORD(v9) = v11 == 0;

          if (!v9)
          {
            v12 = [v7 localeIdentifier];
            if ([v12 hasPrefix:@"zh_CN"])
            {

              goto LABEL_13;
            }

            v14 = [v7 localeIdentifier];
            v15 = [v14 hasPrefix:@"zh-CN"];

            if (v15)
            {
LABEL_13:
              v16 = objc_alloc(MEMORY[0x1E695DF58]);
              v17 = @"zh-Hans-CN";
              goto LABEL_14;
            }

            v19 = [v7 localeIdentifier];
            if ([v19 hasPrefix:@"zh_HK"])
            {

              goto LABEL_22;
            }

            v20 = [v7 localeIdentifier];
            v21 = [v20 hasPrefix:@"zh-HK"];

            if (v21)
            {
LABEL_22:
              v16 = objc_alloc(MEMORY[0x1E695DF58]);
              v17 = @"zh-Hant-HK";
              goto LABEL_14;
            }

            v22 = [v7 localeIdentifier];
            if ([v22 hasPrefix:@"zh_TW"])
            {

              goto LABEL_26;
            }

            v23 = [v7 localeIdentifier];
            v24 = [v23 hasPrefix:@"zh-TW"];

            if (v24)
            {
LABEL_26:
              v16 = objc_alloc(MEMORY[0x1E695DF58]);
              v17 = @"zh-Hant-TW";
              goto LABEL_14;
            }

            v25 = [v7 localeIdentifier];
            if ([v25 hasPrefix:@"yue_HK"])
            {

LABEL_30:
              v16 = objc_alloc(MEMORY[0x1E695DF58]);
              v17 = @"yue-Hant-HK";
LABEL_14:
              v13 = [v16 initWithLocaleIdentifier:{v17, v39}];
LABEL_15:
              v18 = v13;
            }

            else
            {
              v26 = [v7 localeIdentifier];
              v27 = [v26 hasPrefix:@"yue-HK"];

              if (v27)
              {
                goto LABEL_30;
              }

              v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v28 = [v10 objectForKeyedSubscript:v3];
              [v41 setObject:v28 forKeyedSubscript:v3];

              v29 = [v10 objectForKeyedSubscript:v40];
              LOBYTE(v28) = v29 == 0;

              if ((v28 & 1) == 0)
              {
                v30 = [v10 objectForKeyedSubscript:v40];
                [v41 setObject:v30 forKeyedSubscript:v40];
              }

              v31 = [v10 objectForKeyedSubscript:{v39, v39}];
              v32 = v31 == 0;

              if (!v32)
              {
                v33 = [v10 objectForKeyedSubscript:v39];
                [v41 setObject:v33 forKeyedSubscript:v39];
              }

              v34 = MEMORY[0x1E695DF58];
              v35 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v41];
              v36 = [v34 canonicalLanguageIdentifierFromString:v35];

              v18 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v36];
            }

            [v43 addObject:v18];
            goto LABEL_17;
          }

          v13 = v7;
          goto LABEL_15;
        }

LABEL_17:
        ++v4;
      }

      while (v1 != v4);
      v37 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      v1 = v37;
      if (!v37)
      {
LABEL_37:

        goto LABEL_39;
      }
    }
  }

  v43 = 0;
LABEL_39:

  return v43;
}

void *sub_1B5D22FF4(void *result, CFStringRef theString)
{
  if (theString)
  {
    CFStringGetLength(theString);
    operator new[]();
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t *sub_1B5D23138(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_1B5D23F18((v2 + 136), 0);
    sub_1B5D1E6E0((v2 + 128), 0);
    v6 = (v2 + 104);
    sub_1B5D23F50(&v6);
    v6 = (v2 + 80);
    sub_1B5D1BF88(&v6);
    v3 = *(v2 + 56);
    if (v3)
    {
      *(v2 + 64) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      *(v2 + 40) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 8);
    if (v5)
    {
      *(v2 + 16) = v5;
      operator delete(v5);
    }

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

uint64_t sub_1B5D23204(uint64_t result)
{
  v1 = result;
  v2 = *(result + 14352);
  if (v2 != -1)
  {
    result = (off_1F2D57988[v2])(&v3, result);
  }

  *(v1 + 14352) = -1;
  return result;
}

uint64_t *sub_1B5D2325C(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1488);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1472);
  *(a2 + 1472) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1464), 0);
  *(a2 + 88) = &unk_1F2D559C0;
  v5 = *(a2 + 1440);
  if (v5 && *(a2 + 1438) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC((a2 + 1384));
  *(a2 + 40) = &unk_1F2D5B7D0;
  sub_1B5D132A8((a2 + 48), 0);
  sub_1B5D13120(a2 + 56);
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D23364(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1504);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1488);
  *(a2 + 1488) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1480), 0);
  *(a2 + 104) = &unk_1F2D559C0;
  v5 = *(a2 + 1456);
  if (v5 && *(a2 + 1454) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC((a2 + 1400));
  sub_1B5DB7F4C((a2 + 40));
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D23440(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1504);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1488);
  *(a2 + 1488) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1480), 0);
  *(a2 + 104) = &unk_1F2D559C0;
  v5 = *(a2 + 1456);
  if (v5 && *(a2 + 1454) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC((a2 + 1400));
  sub_1B5DB7200((a2 + 40));
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D2351C(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 2048);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 2032);
  *(a2 + 2032) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 2024), 0);
  *(a2 + 648) = &unk_1F2D559C0;
  v5 = *(a2 + 2000);
  if (v5 && *(a2 + 1998) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC((a2 + 1944));
  sub_1B5DB4DE8((a2 + 40));
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D235F8(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1480);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1464);
  *(a2 + 1464) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1456), 0);
  *(a2 + 80) = &unk_1F2D559C0;
  v5 = *(a2 + 1432);
  if (v5 && *(a2 + 1430) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC((a2 + 1376));
  sub_1B5DB387C((a2 + 40));
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D236D4(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1544);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1528);
  *(a2 + 1528) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1520), 0);
  *(a2 + 144) = &unk_1F2D559C0;
  v5 = *(a2 + 1496);
  if (v5 && *(a2 + 1494) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC((a2 + 1440));
  *(a2 + 40) = &unk_1F2D5E170;
  sub_1B5D752BC(a2 + 48);
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D237D0(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1520);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1504);
  *(a2 + 1504) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1496), 0);
  *(a2 + 120) = &unk_1F2D559C0;
  v5 = *(a2 + 1472);
  if (v5 && *(a2 + 1470) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC((a2 + 1416));
  *(a2 + 40) = &unk_1F2D5DF18;
  sub_1B5D0C050(*(a2 + 104));
  *(a2 + 48) = &unk_1F2D56850;
  sub_1B5D132A8((a2 + 56), 0);
  sub_1B5D13120(a2 + 64);
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D23900(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1536);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1520);
  *(a2 + 1520) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1512), 0);
  *(a2 + 136) = &unk_1F2D559C0;
  v5 = *(a2 + 1488);
  if (v5 && *(a2 + 1486) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC((a2 + 1432));
  *(a2 + 40) = &unk_1F2D5DC98;
  sub_1B5D0C050(*(a2 + 120));
  sub_1B5D6E2D4((a2 + 48));
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D23A04(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1536);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1520);
  *(a2 + 1520) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1512), 0);
  *(a2 + 136) = &unk_1F2D559C0;
  v5 = *(a2 + 1488);
  if (v5 && *(a2 + 1486) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC((a2 + 1432));
  *(a2 + 40) = &unk_1F2D5D658;
  sub_1B5D0C050(*(a2 + 120));
  sub_1B5D5FA24((a2 + 48));
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D23B08(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 2080);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 2064);
  *(a2 + 2064) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 2056), 0);
  *(a2 + 680) = &unk_1F2D559C0;
  v5 = *(a2 + 2032);
  if (v5 && *(a2 + 2030) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC((a2 + 1976));
  *(a2 + 40) = &unk_1F2D5D178;
  sub_1B5D0C050(*(a2 + 664));
  sub_1B5D63158((a2 + 48));
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D23C0C(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1576);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1560);
  *(a2 + 1560) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1552), 0);
  *(a2 + 176) = &unk_1F2D559C0;
  v5 = *(a2 + 1528);
  if (v5 && *(a2 + 1526) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC((a2 + 1472));
  *(a2 + 40) = &unk_1F2D5C620;
  sub_1B5D0C050(*(a2 + 160));
  *(a2 + 48) = &unk_1F2D5C6F8;
  sub_1B5D752BC(a2 + 56);
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D23D30(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1512);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1496);
  *(a2 + 1496) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1488), 0);
  *(a2 + 112) = &unk_1F2D559C0;
  v5 = *(a2 + 1464);
  if (v5 && *(a2 + 1462) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC((a2 + 1408));
  *(a2 + 40) = &unk_1F2D5CC38;
  sub_1B5D0C050(*(a2 + 96));
  sub_1B5D6E334((a2 + 48));
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D23E34(uint64_t a1, uint64_t a2)
{
  v3.n128_f64[0] = sub_1B5D93B50(a2);
  v4 = *(a2 + 14344);
  if (v4)
  {
    sub_1B5CDD904(v4);
  }

  v5 = *(a2 + 14320);
  *(a2 + 14320) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5, v3);
  }

  sub_1B5CE29CC((a2 + 14312), 0);
  *(a2 + 12920) = &unk_1F2D559C0;
  v6 = *(a2 + 14272);
  if (v6 && *(a2 + 14270) == 1)
  {
    free(v6);
  }

  sub_1B5D1BBBC((a2 + 14216));
  sub_1B5CE10F4((a2 + 8), 0);

  return sub_1B5CE10F4(a2, 0);
}

void sub_1B5D23F18(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_1B5D23F50(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v7 = *(v6 - 8);
        v6 -= 8;
        if (v7 >= 0xF)
        {
          v8 = *(v4 - 1);
          if (v8)
          {
            MEMORY[0x1B8C880C0](v8, 0x1000C8077774924);
          }
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1B5D24008()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5410], std::exception::~exception);
}

uint64_t sub_1B5D240C0(uint64_t a1)
{
  v1 = *(a1 + 14352);
  if (v1 == -1 || (v10 = &v9, (off_1F2D57EF0[v1])(&v10, a1), v3 = *(a1 + 28712), v3 == -1))
  {
    sub_1B5D24008();
  }

  v10 = &v9;
  (off_1F2D57EF0[v3])(&v10, a1 + 14360);
  sub_1B5CDDF24(a1 + 28744);
  v4 = *(a1 + 28728);
  *(a1 + 28720) = 0u;
  if (v4)
  {
    sub_1B5CDD904(v4);
  }

  sub_1B5D23138((a1 + 30120), 0);
  sub_1B5D23138((a1 + 30120), 0);
  *(a1 + 28744) = &unk_1F2D559C0;
  v5 = *(a1 + 30096);
  if (v5 && *(a1 + 30094) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC((a1 + 30040));
  v6 = *(a1 + 28736);
  *(a1 + 28736) = 0;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v7 = *(a1 + 28728);
  if (v7)
  {
    sub_1B5CDD904(v7);
  }

  sub_1B5D23204(a1 + 14360);
  sub_1B5D23204(a1);
  return a1;
}

uint64_t sub_1B5D2422C(uint64_t a1)
{
  v1 = *(a1 + 14352);
  if (v1 == -1)
  {
    sub_1B5D24008();
  }

  v4 = &v3;
  return (off_1F2D57D30[v1])(&v4, a1);
}

double sub_1B5D24278@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DB1B64(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D2441C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D24440@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DB0DF4(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D245E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D24608@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DB0DF4(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D247AC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D247D0@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DB0364(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D24974(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D24998@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DAFB68(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D24B3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D24B60@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DAF414(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D24D04(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D24D28@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DAECBC(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D24ECC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D24EF0@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DAE0FC(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D25094(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D250B8@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DAE0FC(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D2525C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D25280@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DAD92C(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D25424(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D25448@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DAD1DC(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D255EC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D25610@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DACA8C(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D257B4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D257D8@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 20) != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 12904);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 14304);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 14308) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 14300);
  if (!v8)
  {
    __assert_rtn("word_with_id", "TIWordTrie.cpp", 878, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 8);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  sub_1B5D93A40(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "TIWordTrie.cpp", 893, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D2597C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D25A00(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = a4;
  v66 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    v42 = *(a4 + 14352);
    if (v42 != -1)
    {
      v58[0] = &v56;
      (off_1F2D57A58[v42])(&v62, v58, a4, a3);
      v58[0] = &v62;
      v58[1] = a2;
      v59 = 0;
      v43 = *(v5 + 14352);
      if (v43 == -1 || (v56 = v58, (off_1F2D57CC8[v43])(&v56, v5), v65 == -1))
      {
        sub_1B5D24008();
      }

      v58[0] = &v56;
      if ((off_1F2D57AC0[v65])(v58, &v62))
      {
        v35 = sub_1B5D262F8(a1, &v62, a2, v5);
      }

      else
      {
        v35 = 0;
      }

      v44 = &v62;
      goto LABEL_91;
    }

LABEL_96:
    sub_1B5D24008();
  }

  v6 = *(a4 + 14352);
  if (v6 == -1)
  {
    goto LABEL_96;
  }

  v8 = a3;
  v62 = &v56;
  (off_1F2D57A58[v6])(v58, &v62, a4);
  v56 = 0;
  v57 = 0uLL;
  v9 = *a2;
  if (v9 <= 0xE)
  {
    v10 = a2 + 1;
  }

  else
  {
    v10 = *(a2 + 1);
  }

  if (*a2)
  {
    v11 = 0;
    v50 = v8;
    v51 = (v10 + v9);
    v47 = v5;
    do
    {
      v12 = *v10;
      v14 = v56;
      v13 = v57;
      if (v56 != v57)
      {
        do
        {
          sub_1B5D89300(v14, v8, v12);
          v14 += 96;
        }

        while (v14 != v13);
        v14 = v56;
        v13 = v57;
      }

      while (1)
      {
        if (v14 == v13)
        {
          v14 = v13;
          goto LABEL_15;
        }

        if (!sub_1B5D8939C(v14))
        {
          break;
        }

        v14 += 96;
      }

      if (v14 != v13)
      {
        for (i = v14 + 96; i != v13; i += 96)
        {
          if (sub_1B5D8939C(i))
          {
            sub_1B5D87A08(v14, i);
            v14 += 96;
          }
        }
      }

LABEL_15:
      v15 = v57;
      if (v14 != v57)
      {
        while (v15 != v14)
        {
          v15 -= 96;
          sub_1B5D27078(v15);
        }

        *&v57 = v14;
      }

      if (v60 == -1)
      {
        goto LABEL_92;
      }

      v62 = &v53;
      if ((off_1F2D57AC0[v60])(&v62, v58))
      {
        v62 = v58;
        LOBYTE(v63) = v12;
        v16 = *(v5 + 14352);
        if (v16 == -1)
        {
          goto LABEL_92;
        }

        v53.n128_u64[0] = &v62;
        (off_1F2D57B28[v16])(&v53, v5);
      }

      v53.n128_u64[0] = v58;
      v17 = *(v5 + 14352);
      if (v17 == -1)
      {
LABEL_92:
        sub_1B5D24008();
      }

      v62 = &v53;
      ++v11;
      if ((off_1F2D57B90[v17])(&v62, v5))
      {
        v53.n128_u16[0] = 1;
        v53.n128_u8[2] = 32;
        v62 = v58;
        v63 = &v53;
        v18 = *(v5 + 14352);
        if (v18 == -1)
        {
          sub_1B5D24008();
        }

        v61 = &v62;
        (off_1F2D57BF8[v18])(&v54, &v61, v5);
        v49 = v10;
        if (v53.n128_u16[0] >= 0xFu && v53.n128_u64[1])
        {
          MEMORY[0x1B8C880C0](v53.n128_u64[1], 0x1000C8077774924);
        }

        v19 = v54;
        v20 = v55;
        while (v19 != v20)
        {
          LODWORD(v61) = 0;
          if (sub_1B5D4D8B8(a5, *(v19 + 60), &v61, 0))
          {
            sub_1B5D4DA24(&v53, a5, v61);
            if (v53.n128_u16[0])
            {
              v21 = v57;
              if (v57 >= *(&v57 + 1))
              {
                v23 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v56) >> 5) + 1;
                if (v23 > 0x2AAAAAAAAAAAAAALL)
                {
                  sub_1B5D04FA0();
                }

                if (0x5555555555555556 * ((*(&v57 + 1) - v56) >> 5) > v23)
                {
                  v23 = 0x5555555555555556 * ((*(&v57 + 1) - v56) >> 5);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((*(&v57 + 1) - v56) >> 5) >= 0x155555555555555)
                {
                  v24 = 0x2AAAAAAAAAAAAAALL;
                }

                else
                {
                  v24 = v23;
                }

                v65 = &v56;
                if (v24)
                {
                  if (v24 <= 0x2AAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  sub_1B5CE5968();
                }

                v62 = 0;
                v63 = (32 * ((v57 - v56) >> 5));
                v64 = v63;
                sub_1B5D877EC(v63, v8, v58, v11, 0, &v53, 0.0);
                *&v64 = v64 + 96;
                v26 = v56;
                v25 = v57;
                v27 = (v56 + v63 - v57);
                if (v56 != v57)
                {
                  v28 = v11;
                  v29 = 0;
                  v30 = v56;
                  v31 = v56 + v63 - v57;
                  do
                  {
                    sub_1B5D87910(v31, v30);
                    v30 += 96;
                    v31 += 96;
                    v29 -= 96;
                  }

                  while (v30 != v25);
                  v11 = v28;
                  v8 = v50;
                  do
                  {
                    sub_1B5D27078(v26);
                    v26 += 96;
                  }

                  while (v26 != v25);
                }

                v32 = v56;
                v33 = *(&v57 + 1);
                v56 = v27;
                v52 = v64;
                v57 = v64;
                *&v64 = v32;
                *(&v64 + 1) = v33;
                v62 = v32;
                v63 = v32;
                sub_1B5D270D0(&v62);
                v22 = v52;
              }

              else
              {
                sub_1B5D877EC(v57, v8, v58, v11, 0, &v53, 0.0);
                v22 = v21 + 96;
              }

              *&v57 = v22;
              if (v53.n128_u16[0] >= 0xFu && v53.n128_u64[1])
              {
                MEMORY[0x1B8C880C0](v53.n128_u64[1], 0x1000C8077774924);
              }
            }
          }

          v19 += 88;
        }

        v62 = &v54;
        sub_1B5D26264(&v62);
        v5 = v47;
        v10 = v49;
      }

      v10 = (v10 + 1);
    }

    while (v10 != v51);
  }

  if (v60 == -1)
  {
    sub_1B5D24008();
  }

  v62 = &v53;
  if (!(off_1F2D57AC0[v60])(&v62, v58) || (v35 = sub_1B5D262F8(a1, v58, a2, v5), !v35))
  {
    v37 = v56;
    v36 = v57;
    if (v56 == v57)
    {
LABEL_81:
      v35 = 0;
    }

    else
    {
      while ((sub_1B5D8939C(v37) & 1) == 0)
      {
LABEL_80:
        v37 += 96;
        if (v37 == v36)
        {
          goto LABEL_81;
        }
      }

      sub_1B5D8ACC0(&v54, v37, v8, a2);
      v38 = v54;
      v39 = v55;
      while (1)
      {
        if (v38 == v39)
        {
          v62 = &v54;
          sub_1B5D26264(&v62);
          goto LABEL_80;
        }

        sub_1B5D33704(&v62, v38);
        v40 = sub_1B5D5DD60(&v62, a1);
        if (v63)
        {
          v41 = BYTE6(v62) == 1;
        }

        else
        {
          v41 = 0;
        }

        if (v41)
        {
          free(v63);
        }

        if (v40)
        {
          break;
        }

        v38 += 88;
      }

      v35 = *(v38 + 60);
      v62 = &v54;
      sub_1B5D26264(&v62);
    }
  }

  v62 = &v56;
  sub_1B5D2641C(&v62);
  v44 = v58;
LABEL_91:
  sub_1B5D264A0(v44);
  return v35;
}

void sub_1B5D26134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  a20 = &a23;
  sub_1B5D2641C(&a20);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

void sub_1B5D26264(void ***a1)
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
        v6 = *(v4 - 10);
        if (v6 && *(v4 - 82) == 1)
        {
          free(v6);
        }

        v4 -= 88;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1B5D262F8(unsigned __int16 *a1, void **a2, void *a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v15 = a3;
  v4 = *(a4 + 14352);
  if (v4 == -1)
  {
    sub_1B5D24008();
  }

  v13 = &v14;
  (off_1F2D57BF8[v4])(v12, &v13, a4);
  v6 = v12[0];
  v7 = v12[1];
  while (1)
  {
    if (v6 == v7)
    {
      v10 = 0;
      goto LABEL_14;
    }

    sub_1B5D33704(&v14, v6);
    v8 = sub_1B5D5DD60(&v14, a1);
    if (v15 && BYTE6(v14) == 1)
    {
      free(v15);
    }

    if (v8)
    {
      break;
    }

    v6 += 88;
  }

  v10 = *(v6 + 60);
LABEL_14:
  v14 = v12;
  sub_1B5D26264(&v14);
  return v10;
}

void sub_1B5D2641C(void ***a1)
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
        v4 = sub_1B5D27078(v4 - 96);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1B5D264A0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 != -1)
  {
    result = (off_1F2D57C60[v2])(&v3, result);
  }

  *(v1 + 32) = -1;
  return result;
}

float sub_1B5D264F8(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 12)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *(v3 + 12) != -1 && v5 < v6; ++v5)
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }

    sub_1B5DB1680(v3, a2, *(v10 + v5));
    i = i * 0.0;
  }

  return i;
}

float sub_1B5D265D4(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 11)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != -1 && v5 < v6; ++v5)
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }

    sub_1B5DAF788(v3, *(a2 + 64), *(v10 + v5));
    i = i * 0.0;
  }

  return i;
}

float sub_1B5D266B0(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 10)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != 0xFFFFFFFFLL && v5 < v6; ++v5)
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }

    sub_1B5DB075C(v3, a2, *(v10 + v5));
    i = i * 0.0;
  }

  return i;
}

float sub_1B5D2679C(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 9)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != -1 && v5 < v6; ++v5)
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }

    sub_1B5DAFED4(v3, a2, *(v10 + v5));
    i = i * 0.0;
  }

  return i;
}

float sub_1B5D26878(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 8)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != -1 && v5 < v6; ++v5)
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }

    sub_1B5DAF788(v3, *(a2 + 64), *(v10 + v5));
    i = i * 0.0;
  }

  return i;
}

float sub_1B5D26954(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 7)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != -1 && v5 < v6; ++v5)
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }

    sub_1B5DAF028(v3, a2, *(v10 + v5));
    i = i * 0.0;
  }

  return i;
}

float sub_1B5D26A30(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 6)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *(v3 + 12) != -1 && v5 < v6; i = i * sub_1B5DAE958(v3, a2, *(v10 + v5++)))
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }
  }

  return i;
}

float sub_1B5D26B08(unsigned int ***a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (v3[8] != 5)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != -1 && v5 < v6; ++v5)
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }

    sub_1B5DAC73C(v3, a2, *(v10 + v5));
    i = i * v11;
  }

  return i;
}

float sub_1B5D26BE0(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 4)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != 0xFFFFFFFFLL && v5 < v6; i = i * sub_1B5DADC08(v3, a2, *(v10 + v5++)))
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }
  }

  return i;
}

float sub_1B5D26CC8(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 3)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != -1 && v5 < v6; i = i * sub_1B5DAD5C8(v3, a2, *(v10 + v5++)))
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }
  }

  return i;
}

float sub_1B5D26DA0(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 2)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != -1 && v5 < v6; i = i * sub_1B5DACE78(v3, a2, *(v10 + v5++)))
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }
  }

  return i;
}

float sub_1B5D26E78(unsigned int ***a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (v3[8] != 1)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != -1 && v5 < v6; ++v5)
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }

    sub_1B5DAC73C(v3, a2, *(v10 + v5));
    i = i * v11;
  }

  return i;
}

float sub_1B5D26F50(char ***a1, uint64_t **a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 8))
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "TIWordTrie.cpp", 220, "from_depth <= to_depth");
  }

  v7 = 1.0;
  if ((*v3 & 0x80000000) == 0 && v5 < v6)
  {
    do
    {
      if (*v4 <= 0xEu)
      {
        v9 = (v4 + 2);
      }

      else
      {
        v9 = *(v4 + 1);
      }

      v7 = v7 * sub_1B5D93028(v3, a2, *(v9 + v5));
      if (*v3 < 0)
      {
        break;
      }

      ++v5;
    }

    while (v5 < v6);
  }

  return v7;
}

void sub_1B5D2702C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }
}

void sub_1B5D27054(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }
}

uint64_t sub_1B5D27078(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v2)
  {
    v3 = sub_1B5D27078(v2);
    MEMORY[0x1B8C880F0](v3, 0x1032C40198927B0);
  }

  sub_1B5D264A0(a1 + 40);
  sub_1B5D264A0(a1);
  return a1;
}

uint64_t sub_1B5D270D0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    sub_1B5D27078(i - 96);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B5D27120(uint64_t **a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (*(v4 + 32) != 12)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  v19 = 0;
  v8 = *a2 != 1 || *(v4 + 12) == -1 || *v6 == 0;
  if (v8 || (sub_1B5DB144C(a2 + 5, v4, &v19) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (*(v4 + 9) == 1)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  v9 = v19 & 0x3FFFFFFF;
  if ((v19 & 0x3FFFFFFF) == 0)
  {
    if ((sub_1B5DB14C0((a2 + 40), v4) & 1) == 0)
    {
      sub_1B5D80088(v25, (a2 + 88), v6);
      if (v25[0])
      {
        sub_1B5D5CABC(v26, v25);
        BYTE4(v29) = 0;
        *(&v29 + 5) = 0;
        v30 = 0u;
        *&v31 = 0xFFFFFFFFLL;
        BYTE8(v31) = 0;
        HIDWORD(v31) = 0;
        v32 = 0;
        LODWORD(v29) = 1065353216;
        if (a2[6])
        {
          HIDWORD(v30) = -1;
        }

        sub_1B5D5CABC(&v20, v26);
        v21 = v29;
        v22 = v30;
        v23 = v31;
        v24 = v32;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924(a3, &v20, v25);
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_28:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v10 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10 == 1)
  {
    v11 = 0;
    v20 = v9;
    v12 = 0.0;
    do
    {
      sub_1B5DB1B64(v26, a2, v9, &v20, v6);
      v13 = *&v29;
      if (v26[0])
      {
        sub_1B5DACBA8(a3, v26);
      }

      if (v28)
      {
        v14 = v27 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v28);
      }

      v12 = v12 + v13;
      v9 = v20;
      if (!v20)
      {
        break;
      }
    }

    while (v11++ < 0xFF);
    v16 = *a3;
    v17 = a3[1];
    v18 = v17 - *a3;
    if (v18 == 88)
    {
      *(v16 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v18 >> 3)) >= 2)
    {
      if (v12 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v16 != v17)
      {
        *(v16 + 32) = *(v16 + 32) / v12;
        v16 += 88;
      }
    }
  }
}

void sub_1B5D27454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  v31 = *(v29 + 8);
  if (v31 && BYTE6(a29) == 1)
  {
    free(v31);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D274FC(unsigned int ***a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (v4[8] != 11)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  v19 = 0;
  v8 = *a2 != 1 || *v4 == -1 || *v6 == 0;
  if (v8 || (sub_1B5DAF530(a2 + 5, v4, &v19) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  v9 = v19 & 0x3FFFFFFF;
  if ((v19 & 0x3FFFFFFF) == 0)
  {
    if ((sub_1B5DB0F10((a2 + 40), v4) & 1) == 0)
    {
      sub_1B5D80088(v25, (a2 + 104), v6);
      if (v25[0])
      {
        sub_1B5D5CABC(v26, v25);
        BYTE4(v29) = 0;
        *(&v29 + 5) = 0;
        v30 = 0u;
        *&v31 = 0xFFFFFFFFLL;
        BYTE8(v31) = 0;
        HIDWORD(v31) = 0;
        v32 = 0;
        LODWORD(v29) = 1065353216;
        if (a2[6])
        {
          HIDWORD(v30) = -1;
        }

        sub_1B5D5CABC(&v20, v26);
        v21 = v29;
        v22 = v30;
        v23 = v31;
        v24 = v32;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924(a3, &v20, v25);
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_28:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v10 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10 == 1)
  {
    v11 = 0;
    v20 = v9;
    v12 = 0.0;
    do
    {
      sub_1B5DB0DF4(v26, a2, v9, &v20, v6);
      v13 = *&v29;
      if (v26[0])
      {
        sub_1B5DACBA8(a3, v26);
      }

      if (v28)
      {
        v14 = v27 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v28);
      }

      v12 = v12 + v13;
      v9 = v20;
      if (!v20)
      {
        break;
      }
    }

    while (v11++ < 0xFF);
    v16 = *a3;
    v17 = a3[1];
    v18 = v17 - *a3;
    if (v18 == 88)
    {
      *(v16 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v18 >> 3)) >= 2)
    {
      if (v12 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v16 != v17)
      {
        *(v16 + 32) = *(v16 + 32) / v12;
        v16 += 88;
      }
    }
  }
}

void sub_1B5D2782C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  v31 = *(v29 + 8);
  if (v31 && BYTE6(a29) == 1)
  {
    free(v31);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D278D4(uint64_t **a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (*(v4 + 32) != 10)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  v19 = 0;
  v8 = *a2 != 1 || *v4 == 0xFFFFFFFFLL || *v6 == 0;
  if (v8 || (sub_1B5DB0480(a2 + 5, v4, &v19) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  v9 = v19 & 0x3FFFFFFF;
  if ((v19 & 0x3FFFFFFF) == 0)
  {
    if ((sub_1B5DB0518((a2 + 40), v4) & 1) == 0)
    {
      sub_1B5D80088(v25, (a2 + 104), v6);
      if (v25[0])
      {
        sub_1B5D5CABC(v26, v25);
        BYTE4(v29) = 0;
        *(&v29 + 5) = 0;
        v30 = 0u;
        *&v31 = 0xFFFFFFFFLL;
        BYTE8(v31) = 0;
        HIDWORD(v31) = 0;
        v32 = 0;
        LODWORD(v29) = 1065353216;
        if (a2[6])
        {
          HIDWORD(v30) = -1;
        }

        sub_1B5D5CABC(&v20, v26);
        v21 = v29;
        v22 = v30;
        v23 = v31;
        v24 = v32;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924(a3, &v20, v25);
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_28:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v10 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10 == 1)
  {
    v11 = 0;
    v20 = v9;
    v12 = 0.0;
    do
    {
      sub_1B5DB0DF4(v26, a2, v9, &v20, v6);
      v13 = *&v29;
      if (v26[0])
      {
        sub_1B5DACBA8(a3, v26);
      }

      if (v28)
      {
        v14 = v27 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v28);
      }

      v12 = v12 + v13;
      v9 = v20;
      if (!v20)
      {
        break;
      }
    }

    while (v11++ < 0xFF);
    v16 = *a3;
    v17 = a3[1];
    v18 = v17 - *a3;
    if (v18 == 88)
    {
      *(v16 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v18 >> 3)) >= 2)
    {
      if (v12 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v16 != v17)
      {
        *(v16 + 32) = *(v16 + 32) / v12;
        v16 += 88;
      }
    }
  }
}

void sub_1B5D27C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  v31 = *(v29 + 8);
  if (v31 && BYTE6(a29) == 1)
  {
    free(v31);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D27CB0(uint64_t **a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (*(v4 + 32) != 9)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  v19 = 0;
  v8 = *a2 != 1 || *v4 == -1 || *v6 == 0;
  if (v8 || (sub_1B5DAFC84((a2 + 40), v4, &v19) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  v9 = v19 & 0x3FFFFFFF;
  if ((v19 & 0x3FFFFFFF) == 0)
  {
    if ((sub_1B5DAFD14((a2 + 40), v4) & 1) == 0)
    {
      sub_1B5D80088(v25, (a2 + 648), v6);
      if (v25[0])
      {
        sub_1B5D5CABC(v26, v25);
        BYTE4(v29) = 0;
        *(&v29 + 5) = 0;
        v30 = 0u;
        *&v31 = 0xFFFFFFFFLL;
        BYTE8(v31) = 0;
        HIDWORD(v31) = 0;
        v32 = 0;
        LODWORD(v29) = 1065353216;
        if (a2[6])
        {
          HIDWORD(v30) = -1;
        }

        sub_1B5D5CABC(&v20, v26);
        v21 = v29;
        v22 = v30;
        v23 = v31;
        v24 = v32;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924(a3, &v20, v25);
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_28:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v10 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10 == 1)
  {
    v11 = 0;
    v20 = v9;
    v12 = 0.0;
    do
    {
      sub_1B5DB0364(v26, a2, v9, &v20, v6);
      v13 = *&v29;
      if (v26[0])
      {
        sub_1B5DACBA8(a3, v26);
      }

      if (v28)
      {
        v14 = v27 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v28);
      }

      v12 = v12 + v13;
      v9 = v20;
      if (!v20)
      {
        break;
      }
    }

    while (v11++ < 0xFF);
    v16 = *a3;
    v17 = a3[1];
    v18 = v17 - *a3;
    if (v18 == 88)
    {
      *(v16 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v18 >> 3)) >= 2)
    {
      if (v12 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v16 != v17)
      {
        *(v16 + 32) = *(v16 + 32) / v12;
        v16 += 88;
      }
    }
  }
}

void sub_1B5D27FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  v31 = *(v29 + 8);
  if (v31 && BYTE6(a29) == 1)
  {
    free(v31);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D28088(unsigned int ***a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (v4[8] != 8)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  v19 = 0;
  v8 = *a2 != 1 || *v4 == -1 || *v6 == 0;
  if (v8 || (sub_1B5DAF530(a2 + 5, v4, &v19) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  v9 = v19 & 0x3FFFFFFF;
  if ((v19 & 0x3FFFFFFF) == 0)
  {
    if ((sub_1B5DAF5C8((a2 + 40), v4) & 1) == 0)
    {
      sub_1B5D80088(v25, (a2 + 80), v6);
      if (v25[0])
      {
        sub_1B5D5CABC(v26, v25);
        BYTE4(v29) = 0;
        *(&v29 + 5) = 0;
        v30 = 0u;
        *&v31 = 0xFFFFFFFFLL;
        BYTE8(v31) = 0;
        HIDWORD(v31) = 0;
        v32 = 0;
        LODWORD(v29) = 1065353216;
        if (a2[6])
        {
          HIDWORD(v30) = -1;
        }

        sub_1B5D5CABC(&v20, v26);
        v21 = v29;
        v22 = v30;
        v23 = v31;
        v24 = v32;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924(a3, &v20, v25);
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_28:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v10 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10 == 1)
  {
    v11 = 0;
    v20 = v9;
    v12 = 0.0;
    do
    {
      sub_1B5DAFB68(v26, a2, v9, &v20, v6);
      v13 = *&v29;
      if (v26[0])
      {
        sub_1B5DACBA8(a3, v26);
      }

      if (v28)
      {
        v14 = v27 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v28);
      }

      v12 = v12 + v13;
      v9 = v20;
      if (!v20)
      {
        break;
      }
    }

    while (v11++ < 0xFF);
    v16 = *a3;
    v17 = a3[1];
    v18 = v17 - *a3;
    if (v18 == 88)
    {
      *(v16 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v18 >> 3)) >= 2)
    {
      if (v12 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v16 != v17)
      {
        *(v16 + 32) = *(v16 + 32) / v12;
        v16 += 88;
      }
    }
  }
}

void sub_1B5D283B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  v31 = *(v29 + 8);
  if (v31 && BYTE6(a29) == 1)
  {
    free(v31);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D28460(uint64_t **a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (*(v4 + 32) != 7)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  v19 = 0;
  v8 = *a2 != 1 || *v4 == -1 || *v6 == 0;
  if (v8 || (sub_1B5DAEDD8(a2 + 5, v4, &v19) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  v9 = v19 & 0x3FFFFFFF;
  if ((v19 & 0x3FFFFFFF) == 0)
  {
    if ((sub_1B5DAEE68((a2 + 40), v4) & 1) == 0)
    {
      sub_1B5D80088(v25, (a2 + 144), v6);
      if (v25[0])
      {
        sub_1B5D5CABC(v26, v25);
        BYTE4(v29) = 0;
        *(&v29 + 5) = 0;
        v30 = 0u;
        *&v31 = 0xFFFFFFFFLL;
        BYTE8(v31) = 0;
        HIDWORD(v31) = 0;
        v32 = 0;
        LODWORD(v29) = 1065353216;
        if (a2[6])
        {
          HIDWORD(v30) = -1;
        }

        sub_1B5D5CABC(&v20, v26);
        v21 = v29;
        v22 = v30;
        v23 = v31;
        v24 = v32;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924(a3, &v20, v25);
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_28:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v10 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10 == 1)
  {
    v11 = 0;
    v20 = v9;
    v12 = 0.0;
    do
    {
      sub_1B5DAF414(v26, a2, v9, &v20, v6);
      v13 = *&v29;
      if (v26[0])
      {
        sub_1B5DACBA8(a3, v26);
      }

      if (v28)
      {
        v14 = v27 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v28);
      }

      v12 = v12 + v13;
      v9 = v20;
      if (!v20)
      {
        break;
      }
    }

    while (v11++ < 0xFF);
    v16 = *a3;
    v17 = a3[1];
    v18 = v17 - *a3;
    if (v18 == 88)
    {
      *(v16 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v18 >> 3)) >= 2)
    {
      if (v12 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v16 != v17)
      {
        *(v16 + 32) = *(v16 + 32) / v12;
        v16 += 88;
      }
    }
  }
}

void sub_1B5D28790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  v31 = *(v29 + 8);
  if (v31 && BYTE6(a29) == 1)
  {
    free(v31);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D28838(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (*(v4 + 32) != 6)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  if (*a2 != 1 || *(v4 + 12) == -1 || *v6 == 0)
  {
    goto LABEL_11;
  }

  v25 = 0;
  if (!sub_1B5D137A8(a2 + 6, v4, &v25) || (~v25 & 0x7FFFFF) == 0)
  {
    goto LABEL_11;
  }

  if (*(v4 + 9) == 1)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  if ((v25 & 0x400000) != 0 || (v9 = v25 & 0x1FFFFF, (v25 & 0x1FFFFF) == 0))
  {
    if ((v25 & 0x400000) != 0 || (sub_1B5DAE718((a2 + 5), v4) & 1) == 0)
    {
      sub_1B5D80088(v24, (a2 + 15), v6);
      if (v24[0])
      {
        sub_1B5D5CABC(&v25, v24);
        BYTE4(v28) = 0;
        *(&v28 + 5) = 0;
        v29 = 0u;
        *&v30 = 0xFFFFFFFFLL;
        BYTE8(v30) = 0;
        HIDWORD(v30) = 0;
        v31 = 0;
        LODWORD(v28) = 1065353216;
        if (*(a2 + 6))
        {
          HIDWORD(v29) = -1;
        }

        sub_1B5D5CABC(&v19, &v25);
        v20 = v28;
        v21 = v29;
        v22 = v30;
        v23 = v31;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924(a3, &v19, v24);
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v10 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10 == 1)
  {
    v11 = 0;
    v19 = v9;
    v12 = 0.0;
    do
    {
      sub_1B5DAECBC(&v25, a2, v9, &v19, v6);
      v13 = *&v28;
      if (v25)
      {
        sub_1B5DACBA8(a3, &v25);
      }

      if (v27)
      {
        v14 = v26 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v27);
      }

      v12 = v12 + v13;
      v9 = v19;
      if (!v19)
      {
        break;
      }
    }

    while (v11++ < 0xFF);
    v16 = *a3;
    v17 = a3[1];
    v18 = v17 - *a3;
    if (v18 == 88)
    {
      *(v16 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v18 >> 3)) >= 2)
    {
      if (v12 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v16 != v17)
      {
        *(v16 + 32) = *(v16 + 32) / v12;
        v16 += 88;
      }
    }
  }
}

void sub_1B5D28B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  if (a30 && BYTE6(a29) == 1)
  {
    free(a30);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D28C28(unsigned int ***a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (v4[8] != 5)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  if (*a2 != 1 || *v4 == -1 || *v6 == 0)
  {
    goto LABEL_11;
  }

  v25 = 0;
  if (!sub_1B5D6EE88(a2 + 6, v4, &v25) || (~v25 & 0x7FFFFF) == 0)
  {
    goto LABEL_11;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  if ((v25 & 0x400000) != 0 || (v9 = v25 & 0x1FFFFF, (v25 & 0x1FFFFF) == 0))
  {
    if ((v25 & 0x400000) != 0 || (sub_1B5DAE218((a2 + 40), v4) & 1) == 0)
    {
      sub_1B5D80088(v24, (a2 + 136), v6);
      if (v24[0])
      {
        sub_1B5D5CABC(&v25, v24);
        BYTE4(v28) = 0;
        *(&v28 + 5) = 0;
        v29 = 0u;
        *&v30 = 0xFFFFFFFFLL;
        BYTE8(v30) = 0;
        HIDWORD(v30) = 0;
        v31 = 0;
        LODWORD(v28) = 1065353216;
        if (a2[6])
        {
          HIDWORD(v29) = -1;
        }

        sub_1B5D5CABC(&v19, &v25);
        v20 = v28;
        v21 = v29;
        v22 = v30;
        v23 = v31;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924(a3, &v19, v24);
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v10 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10 == 1)
  {
    v11 = 0;
    v19 = v9;
    v12 = 0.0;
    do
    {
      sub_1B5DAE0FC(&v25, a2, v9, &v19, v6);
      v13 = *&v28;
      if (v25)
      {
        sub_1B5DACBA8(a3, &v25);
      }

      if (v27)
      {
        v14 = v26 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v27);
      }

      v12 = v12 + v13;
      v9 = v19;
      if (!v19)
      {
        break;
      }
    }

    while (v11++ < 0xFF);
    v16 = *a3;
    v17 = a3[1];
    v18 = v17 - *a3;
    if (v18 == 88)
    {
      *(v16 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v18 >> 3)) >= 2)
    {
      if (v12 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v16 != v17)
      {
        *(v16 + 32) = *(v16 + 32) / v12;
        v16 += 88;
      }
    }
  }
}

void sub_1B5D28F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  if (a30 && BYTE6(a29) == 1)
  {
    free(a30);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D29014(uint64_t **a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (*(v4 + 32) != 4)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  if (*a2 != 1 || *v4 == 0xFFFFFFFFLL || *v6 == 0)
  {
    goto LABEL_11;
  }

  v25 = 0;
  if (!sub_1B5D600EC(a2 + 6, v4, &v25) || (~v25 & 0xFFFFFF) == 0)
  {
    goto LABEL_11;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  if ((v25 & 0x400000) != 0 || (v9 = v25 & 0x1FFFFF, (v25 & 0x1FFFFF) == 0))
  {
    if ((v25 & 0x400000) != 0 || (sub_1B5DADA48((a2 + 40), v4) & 1) == 0)
    {
      sub_1B5D80088(v24, (a2 + 136), v6);
      if (v24[0])
      {
        sub_1B5D5CABC(&v25, v24);
        BYTE4(v28) = 0;
        *(&v28 + 5) = 0;
        v29 = 0u;
        *&v30 = 0xFFFFFFFFLL;
        BYTE8(v30) = 0;
        HIDWORD(v30) = 0;
        v31 = 0;
        LODWORD(v28) = 1065353216;
        if (a2[6])
        {
          HIDWORD(v29) = -1;
        }

        sub_1B5D5CABC(&v19, &v25);
        v20 = v28;
        v21 = v29;
        v22 = v30;
        v23 = v31;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924(a3, &v19, v24);
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v10 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10 == 1)
  {
    v11 = 0;
    v19 = v9;
    v12 = 0.0;
    do
    {
      sub_1B5DAE0FC(&v25, a2, v9, &v19, v6);
      v13 = *&v28;
      if (v25)
      {
        sub_1B5DACBA8(a3, &v25);
      }

      if (v27)
      {
        v14 = v26 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v27);
      }

      v12 = v12 + v13;
      v9 = v19;
      if (!v19)
      {
        break;
      }
    }

    while (v11++ < 0xFF);
    v16 = *a3;
    v17 = a3[1];
    v18 = v17 - *a3;
    if (v18 == 88)
    {
      *(v16 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v18 >> 3)) >= 2)
    {
      if (v12 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v16 != v17)
      {
        *(v16 + 32) = *(v16 + 32) / v12;
        v16 += 88;
      }
    }
  }
}

void sub_1B5D2935C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  if (a30 && BYTE6(a29) == 1)
  {
    free(a30);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D29404(uint64_t **a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (*(v4 + 32) != 3)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  if (*a2 != 1 || *v4 == -1 || *v6 == 0)
  {
    goto LABEL_11;
  }

  v25 = 0;
  if (!sub_1B5D64DE0((a2 + 48), v4, &v25) || (~v25 & 0x7FFFFF) == 0)
  {
    goto LABEL_11;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  if ((v25 & 0x400000) != 0 || (v9 = v25 & 0x1FFFFF, (v25 & 0x1FFFFF) == 0))
  {
    if ((v25 & 0x400000) != 0 || (sub_1B5DAD388((a2 + 40), v4) & 1) == 0)
    {
      sub_1B5D80088(v24, (a2 + 680), v6);
      if (v24[0])
      {
        sub_1B5D5CABC(&v25, v24);
        BYTE4(v28) = 0;
        *(&v28 + 5) = 0;
        v29 = 0u;
        *&v30 = 0xFFFFFFFFLL;
        BYTE8(v30) = 0;
        HIDWORD(v30) = 0;
        v31 = 0;
        LODWORD(v28) = 1065353216;
        if (a2[6])
        {
          HIDWORD(v29) = -1;
        }

        sub_1B5D5CABC(&v19, &v25);
        v20 = v28;
        v21 = v29;
        v22 = v30;
        v23 = v31;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924(a3, &v19, v24);
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v10 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10 == 1)
  {
    v11 = 0;
    v19 = v9;
    v12 = 0.0;
    do
    {
      sub_1B5DAD92C(&v25, a2, v9, &v19, v6);
      v13 = *&v28;
      if (v25)
      {
        sub_1B5DACBA8(a3, &v25);
      }

      if (v27)
      {
        v14 = v26 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v27);
      }

      v12 = v12 + v13;
      v9 = v19;
      if (!v19)
      {
        break;
      }
    }

    while (v11++ < 0xFF);
    v16 = *a3;
    v17 = a3[1];
    v18 = v17 - *a3;
    if (v18 == 88)
    {
      *(v16 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v18 >> 3)) >= 2)
    {
      if (v12 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v16 != v17)
      {
        *(v16 + 32) = *(v16 + 32) / v12;
        v16 += 88;
      }
    }
  }
}

void sub_1B5D29748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  if (a30 && BYTE6(a29) == 1)
  {
    free(a30);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D297F0(uint64_t **a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (*(v4 + 32) != 2)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  if (*a2 != 1 || *v4 == -1 || *v6 == 0)
  {
    goto LABEL_11;
  }

  v25 = 0;
  if (!sub_1B5D7601C(a2 + 6, v4, &v25) || (~v25 & 0x7FFFFF) == 0)
  {
    goto LABEL_11;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  if ((v25 & 0x400000) != 0 || (v9 = v25 & 0x1FFFFF, (v25 & 0x1FFFFF) == 0))
  {
    if ((v25 & 0x400000) != 0 || (sub_1B5DACCB8((a2 + 40), v4) & 1) == 0)
    {
      sub_1B5D80088(v24, (a2 + 176), v6);
      if (v24[0])
      {
        sub_1B5D5CABC(&v25, v24);
        BYTE4(v28) = 0;
        *(&v28 + 5) = 0;
        v29 = 0u;
        *&v30 = 0xFFFFFFFFLL;
        BYTE8(v30) = 0;
        HIDWORD(v30) = 0;
        v31 = 0;
        LODWORD(v28) = 1065353216;
        if (a2[6])
        {
          HIDWORD(v29) = -1;
        }

        sub_1B5D5CABC(&v19, &v25);
        v20 = v28;
        v21 = v29;
        v22 = v30;
        v23 = v31;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924(a3, &v19, v24);
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v10 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10 == 1)
  {
    v11 = 0;
    v19 = v9;
    v12 = 0.0;
    do
    {
      sub_1B5DAD1DC(&v25, a2, v9, &v19, v6);
      v13 = *&v28;
      if (v25)
      {
        sub_1B5DACBA8(a3, &v25);
      }

      if (v27)
      {
        v14 = v26 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v27);
      }

      v12 = v12 + v13;
      v9 = v19;
      if (!v19)
      {
        break;
      }
    }

    while (v11++ < 0xFF);
    v16 = *a3;
    v17 = a3[1];
    v18 = v17 - *a3;
    if (v18 == 88)
    {
      *(v16 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v18 >> 3)) >= 2)
    {
      if (v12 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v16 != v17)
      {
        *(v16 + 32) = *(v16 + 32) / v12;
        v16 += 88;
      }
    }
  }
}

void sub_1B5D29B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  if (a30 && BYTE6(a29) == 1)
  {
    free(a30);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D29BDC(unsigned int ***a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (v4[8] != 1)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  if (*a2 != 1 || *v4 == -1 || *v6 == 0)
  {
    goto LABEL_11;
  }

  v25 = 0;
  if (!sub_1B5D6EE88(a2 + 6, v4, &v25) || (~v25 & 0x7FFFFF) == 0)
  {
    goto LABEL_11;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  if ((v25 & 0x400000) != 0 || (v9 = v25 & 0x1FFFFF, (v25 & 0x1FFFFF) == 0))
  {
    if ((v25 & 0x400000) != 0 || (sub_1B5DAC57C((a2 + 40), v4) & 1) == 0)
    {
      sub_1B5D80088(v24, (a2 + 112), v6);
      if (v24[0])
      {
        sub_1B5D5CABC(&v25, v24);
        BYTE4(v28) = 0;
        *(&v28 + 5) = 0;
        v29 = 0u;
        *&v30 = 0xFFFFFFFFLL;
        BYTE8(v30) = 0;
        HIDWORD(v30) = 0;
        v31 = 0;
        LODWORD(v28) = 1065353216;
        if (a2[6])
        {
          HIDWORD(v29) = -1;
        }

        sub_1B5D5CABC(&v19, &v25);
        v20 = v28;
        v21 = v29;
        v22 = v30;
        v23 = v31;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924(a3, &v19, v24);
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v10 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10 == 1)
  {
    v11 = 0;
    v19 = v9;
    v12 = 0.0;
    do
    {
      sub_1B5DACA8C(&v25, a2, v9, &v19, v6);
      v13 = *&v28;
      if (v25)
      {
        sub_1B5DACBA8(a3, &v25);
      }

      if (v27)
      {
        v14 = v26 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v27);
      }

      v12 = v12 + v13;
      v9 = v19;
      if (!v19)
      {
        break;
      }
    }

    while (v11++ < 0xFF);
    v16 = *a3;
    v17 = a3[1];
    v18 = v17 - *a3;
    if (v18 == 88)
    {
      *(v16 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v18 >> 3)) >= 2)
    {
      if (v12 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v16 != v17)
      {
        *(v16 + 32) = *(v16 + 32) / v12;
        v16 += 88;
      }
    }
  }
}

void sub_1B5D29F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  if (a30 && BYTE6(a29) == 1)
  {
    free(a30);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D29FC8(char ***a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (*(v4 + 8))
  {
    sub_1B5D24008();
  }

  if (*(a2 + 20) != 1)
  {
    goto LABEL_17;
  }

  if (*v4 < 0)
  {
    goto LABEL_17;
  }

  v6 = (*a1)[1];
  if (!*v6)
  {
    goto LABEL_17;
  }

  v7 = *v4;
  v8 = *(v4 + 2);
  if ((HIBYTE(v8) & 3) >= (v7 + 1))
  {
    goto LABEL_17;
  }

  if (!(v7 | v8))
  {
    if (!v4[24])
    {
      __assert_rtn("derive_words_at_cursor", "TIWordTrie.cpp", 788, "!cursor.is_root()");
    }

    goto LABEL_8;
  }

  if ((v8 & 0x20000000) == 0 || (v9 = *(v4 + 4) & 0x7FFFFFFF) == 0)
  {
    if ((v8 & 0x10000000) != 0)
    {
      goto LABEL_18;
    }

    if ((v8 & 0xFFFFFF) != 0)
    {
LABEL_17:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      return;
    }

LABEL_8:
    if (!v4[20])
    {
      goto LABEL_17;
    }

LABEL_18:
    sub_1B5D80088(v23, a2 + 12920, v6);
    if (!v23[0])
    {
      __assert_rtn("derive_words_at_cursor", "TIWordTrie.cpp", 798, "!derived_base_form.is_empty()");
    }

    sub_1B5D5CABC(v18, v23);
    BYTE4(v19) = 0;
    *(&v19 + 5) = 0;
    v20 = 0u;
    *&v21 = 0xFFFFFFFFLL;
    BYTE8(v21) = 0;
    HIDWORD(v21) = 0;
    v22 = 0;
    LODWORD(v19) = 1065353216;
    if ((*(a2 + 12906) & 1) == 0)
    {
LABEL_31:
      sub_1B5D5CABC(v13, v18);
      v14 = v19;
      v15 = v20;
      v16 = v21;
      v17 = v22;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = 0;
      sub_1B5D93924(a3, v13, v18);
    }

    v10 = *(v4 + 2);
    if ((v10 & 0xFFFFFF) != 0)
    {
      if ((v10 & 0x10000000) == 0)
      {
        v11 = 0;
LABEL_30:
        HIDWORD(v20) = v11;
        goto LABEL_31;
      }

      LODWORD(v12) = *(v4 + 4);
    }

    else
    {
      v12 = *(v4 + 2);
      if ((v10 & 0x10000000) == 0)
      {
        v11 = 0;
        if ((v12 & 0xFF00000000) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    if ((v12 & 0x8000) != 0)
    {
      v11 = v12 & 0x7F00 | BYTE2(v12);
    }

    else
    {
      v11 = BYTE1(v12);
    }

    goto LABEL_30;
  }

  sub_1B5D93724(a3, a2, v9, v6);
}

void sub_1B5D2A288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  if (a26 && a25 == 1)
  {
    free(a26);
  }

  v28 = *(v26 - 80);
  if (v28)
  {
    if (*(v26 - 82) == 1)
    {
      free(v28);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D2A2F8(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 12)
  {
    sub_1B5D24008();
  }

  v5 = 0;
  if (*(v3 + 12) == -1 || (*(v3 + 9) & 1) != 0)
  {
    return 0;
  }

  result = sub_1B5DB144C((a2 + 40), v3, &v5);
  if (result)
  {
    return (HIBYTE(v5) >> 6) & 1;
  }

  return result;
}

uint64_t sub_1B5D2A368(unsigned int ***a1, uint64_t a2)
{
  v3 = **a1;
  if (v3[8] != 11)
  {
    sub_1B5D24008();
  }

  v5 = 0;
  if ((*v3 + 1) < 2)
  {
    return 0;
  }

  result = sub_1B5DAF530((a2 + 40), v3, &v5);
  if (result)
  {
    return (HIBYTE(v5) >> 6) & 1;
  }

  return result;
}

uint64_t sub_1B5D2A3D4(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 10)
  {
    sub_1B5D24008();
  }

  v6 = 0;
  if (*v3)
  {
    v4 = *v3 == 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  result = sub_1B5DB0480((a2 + 40), v3, &v6);
  if (result)
  {
    return (HIBYTE(v6) >> 6) & 1;
  }

  return result;
}

uint64_t sub_1B5D2A444(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 9)
  {
    sub_1B5D24008();
  }

  v5 = 0;
  if ((*v3 + 1) < 2)
  {
    return 0;
  }

  result = sub_1B5DAFC84(a2 + 40, v3, &v5);
  if (result)
  {
    return (HIBYTE(v5) >> 6) & 1;
  }

  return result;
}

uint64_t sub_1B5D2A4B0(unsigned int ***a1, uint64_t a2)
{
  v3 = **a1;
  if (v3[8] != 8)
  {
    sub_1B5D24008();
  }

  v5 = 0;
  if ((*v3 + 1) < 2)
  {
    return 0;
  }

  result = sub_1B5DAF530((a2 + 40), v3, &v5);
  if (result)
  {
    return (HIBYTE(v5) >> 6) & 1;
  }

  return result;
}

uint64_t sub_1B5D2A51C(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 7)
  {
    sub_1B5D24008();
  }

  v5 = 0;
  if ((*v3 + 1) < 2)
  {
    return 0;
  }

  result = sub_1B5DAEDD8((a2 + 40), v3, &v5);
  if (result)
  {
    return (HIBYTE(v5) >> 6) & 1;
  }

  return result;
}

BOOL sub_1B5D2A588(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 6)
  {
    sub_1B5D24008();
  }

  if (*(v3 + 12) != -1 && (*(v3 + 9) & 1) == 0 && (v5 = 0, sub_1B5D137A8((a2 + 48), v3, &v5)) && (~v5 & 0x7FFFFF) != 0)
  {
    return (v5 & 0x600000) == 0x200000;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5D2A60C(unsigned int ***a1, uint64_t a2)
{
  v3 = **a1;
  if (v3[8] != 5)
  {
    sub_1B5D24008();
  }

  if ((*v3 + 1) >= 2 && (v5 = 0, sub_1B5D6EE88((a2 + 48), v3, &v5)) && (~v5 & 0x7FFFFF) != 0)
  {
    return (v5 & 0x600000) == 0x200000;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5D2A68C(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 4)
  {
    sub_1B5D24008();
  }

  if (*v3)
  {
    v4 = *v3 == 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && (v7 = 0, v6 = sub_1B5D600EC((a2 + 48), v3, &v7), v6 && (~v7 & 0xFFFFFF) != 0))
  {
    return (v7 & 0x600000) == 0x200000;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5D2A710(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 3)
  {
    sub_1B5D24008();
  }

  if ((*v3 + 1) >= 2 && (v5 = 0, sub_1B5D64DE0(a2 + 48, v3, &v5)) && (~v5 & 0x7FFFFF) != 0)
  {
    return (v5 & 0x600000) == 0x200000;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5D2A790(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 2)
  {
    sub_1B5D24008();
  }

  if ((*v3 + 1) >= 2 && (v5 = 0, sub_1B5D7601C((a2 + 48), v3, &v5)) && (~v5 & 0x7FFFFF) != 0)
  {
    return (v5 & 0x600000) == 0x200000;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5D2A810(unsigned int ***a1, uint64_t a2)
{
  v3 = **a1;
  if (v3[8] != 1)
  {
    sub_1B5D24008();
  }

  if ((*v3 + 1) >= 2 && (v5 = 0, sub_1B5D6EE88((a2 + 48), v3, &v5)) && (~v5 & 0x7FFFFF) != 0)
  {
    return (v5 & 0x600000) == 0x200000;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D2A890(char ***a1)
{
  v1 = **a1;
  if (*(v1 + 8))
  {
    sub_1B5D24008();
  }

  if ((*v1 & 0x80000000) == 0 && ((v2 = *v1, v3 = *(v1 + 2), v2 | v3) || (v3 = 0, v1[24])) && (HIBYTE(v3) & 3) < (v2 + 1))
  {
    return v1[19] >> 7;
  }

  else
  {
    return 0;
  }
}

double sub_1B5D2A8F8(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 12)
  {
    sub_1B5D24008();
  }

  sub_1B5DB1680(v3, a2, *(v2 + 8));
  return 0.0;
}

double sub_1B5D2A930(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 11)
  {
    sub_1B5D24008();
  }

  sub_1B5DAF788(v3, *(a2 + 64), *(v2 + 8));
  return 0.0;
}

double sub_1B5D2A96C(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 10)
  {
    sub_1B5D24008();
  }

  sub_1B5DB075C(v3, a2, *(v2 + 8));
  return 0.0;
}

double sub_1B5D2A9A4(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 9)
  {
    sub_1B5D24008();
  }

  sub_1B5DAFED4(v3, a2, *(v2 + 8));
  return 0.0;
}

double sub_1B5D2A9DC(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 8)
  {
    sub_1B5D24008();
  }

  sub_1B5DAF788(v3, *(a2 + 64), *(v2 + 8));
  return 0.0;
}

double sub_1B5D2AA18(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 7)
  {
    sub_1B5D24008();
  }

  sub_1B5DAF028(v3, a2, *(v2 + 8));
  return 0.0;
}

float sub_1B5D2AA50(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  if (*(v4 + 32) != 6)
  {
    sub_1B5D24008();
  }

  v5 = *(v3 + 8);

  return sub_1B5DAE958(v4, a2, v5);
}

float sub_1B5D2AA88(unsigned int ***a1, uint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  if (v4[8] != 5)
  {
    sub_1B5D24008();
  }

  v5 = *(v3 + 8);

  sub_1B5DAC73C(v4, a2, v5);
  return result;
}