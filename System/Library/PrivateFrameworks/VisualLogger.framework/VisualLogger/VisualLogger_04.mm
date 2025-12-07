_OWORD *VZDestinationCreateWithFileExporter(char *a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!sub_271146460("VZDestinationCreateWithFileExporter", a1, a3))
  {
    LOBYTE(v10[0]) = 0;
    if (a2)
    {
      v12 = 0;
      if (*(a2 + 40) == 1)
      {
        v10[0] = 0;
        v10[1] = 0;
        v11 = 0;
        sub_27116E754(v10, *(a2 + 16), *(a2 + 24), 0xFAFAFAFAFAFAFAFBLL * ((*(a2 + 24) - *(a2 + 16)) >> 4));
        v12 = 1;
      }

      v7 = *(a2 + 64);
      v13 = *(a2 + 48);
      v14 = v7;
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    v24 = &v25;
    v25 = a3;
    v16[0] = 0;
    v16[1] = 0;
    v8 = a1 - 1;
    v17 = 0;
      ;
    }

    sub_271171230(v16, a1, v8);
    LOBYTE(__p[0]) = 0;
    v23 = 0;
    if (v15 == 1)
    {
      v20 = 0;
      if (v12 == 1)
      {
        *__p = *v10;
        v19 = v11;
        v10[1] = 0;
        v11 = 0;
        v10[0] = 0;
        v20 = 1;
      }

      v21 = v13;
      v22 = v14;
      v23 = 1;
    }

    v26[0] = &unk_288108A18;
    v26[1] = sub_271141150;
    v26[3] = v26;
    v27 = 1;
    sub_2712ABD88(v16, __p, v26);
  }

  return 0;
}

void sub_271169598(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, const char *a19, std::logic_error a20, int a21, __int16 a22, char a23, char a24, char a25, __int128 a26, __int128 a27, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::runtime_error __p, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, uint64_t arg1A0)
{
  if (a2)
  {
    sub_2711307D4(&a48);
    sub_271145690(&a65);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::logic_error::logic_error(&a20, exception_ptr);
      a20.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(a1);
      a19 = std::logic_error::what(&a20);
      sub_27113604C(&__p, &a19);
      sub_271369D54(&__p, &a26);
      a65 = a26;
      sub_27184A2B4(&STACK[0x200], &a27);
      LOBYTE(STACK[0x268]) = 1;
      sub_271170044((v65 - 144), &a65);
      sub_2711307D4(&a65);
      sub_27112D71C(&a26);
      if (a45 == 1 && a44 < 0)
      {
        operator delete(__p.__vftable);
      }

      MEMORY[0x2743BE520](&a20);
      __cxa_end_catch();
    }

    else if (a2 == 2)
    {
      v69 = __cxa_get_exception_ptr(a1);
      sub_271135FD0(&__p, v69);
      __cxa_begin_catch(a1);
      v70 = (a46 + 48);
      if (*(a46 + 71) < 0)
      {
        v70 = *v70;
      }

      a19 = v70;
      sub_27113604C(&a20, &a19);
      sub_27136A868(&a20, &a26);
      a65 = a26;
      sub_27184A2B4(&STACK[0x200], &a27);
      LOBYTE(STACK[0x268]) = 1;
      sub_271170044((v65 - 144), &a65);
      sub_2711307D4(&a65);
      sub_27112D71C(&a26);
      if (a25 == 1 && a24 < 0)
      {
        operator delete(a20.__vftable);
      }

      MEMORY[0x2743BEBB0](&__p);
      __cxa_end_catch();
    }

    else
    {
      __cxa_begin_catch(a1);
      LOBYTE(a65) = 0;
      LOBYTE(STACK[0x268]) = 0;
      sub_271170044((v65 - 144), &a65);
      sub_2711307D4(&a65);
      __cxa_end_catch();
    }

    JUMPOUT(0x2711693F8);
  }

  _Unwind_Resume(a1);
}

void sub_27116984C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x271169854);
  }

  JUMPOUT(0x271169648);
}

uint64_t VZFileImportOptionsGetTypeID()
{
  if (atomic_load_explicit(&qword_28087A1B8, memory_order_acquire))
  {
    return qword_28087A1B0;
  }

  if (__cxa_guard_acquire(&qword_28087A1B8))
  {
    qword_28087A1B0 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A1B8);
  }

  return qword_28087A1B0;
}

void *VZFileImportOptionsCreate()
{
  result = operator new(0x58uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    result[10] = 0;
    *(result + 3) = 0u;
    *(result + 4) = 0u;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *(result + 20) = 1;
    *result = &unk_288119358;
    result[1] = &unk_2881193A8;
  }

  else
  {
    if ((atomic_load_explicit(&qword_28087A1C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A1C0))
    {
      sub_2718519B4(qword_28087A278, "VZFileImportOptions]", 0x13uLL);
      __cxa_guard_release(&qword_28087A1C0);
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(v5) = 0;
    v15 = 0;
    sub_27112E0C4(qword_28087A278, &v16, &v5, 0);
    if (v15 == 1 && v14 == 1)
    {
      if (v13 == 1)
      {
        if (v12 < 0)
        {
          operator delete(__p);
        }

        if (v10 < 0)
        {
          operator delete(v9);
        }
      }

      if (v8 == 1 && v7 < 0)
      {
        operator delete(v6);
      }
    }

    v1 = v16;
    if (v16)
    {
      v2 = v17;
      v3 = v16;
      if (v17 != v16)
      {
        do
        {
          v4 = *(v2 - 1);
          v2 -= 3;
          if (v4 < 0)
          {
            operator delete(*v2);
          }
        }

        while (v2 != v1);
        v3 = v16;
      }

      v17 = v1;
      operator delete(v3);
    }

    return 0;
  }

  return result;
}

uint64_t VZFileImporterGetTypeID()
{
  if (atomic_load_explicit(&qword_28087A1D0, memory_order_acquire))
  {
    return qword_28087A1C8;
  }

  if (__cxa_guard_acquire(&qword_28087A1D0))
  {
    qword_28087A1C8 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A1D0);
  }

  return qword_28087A1C8;
}

uint64_t VZFileImporterImport(char *a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!sub_271146460("VZFileImporterImport", a1, a3))
  {
    memset(v10, 0, sizeof(v10));
    v6 = a1 - 1;
      ;
    }

    sub_271171230(v10, a1, v6);
    if (a2)
    {
      sub_2711708F8(&v8, a2 + 16);
      v9 = 1;
    }

    else
    {
      LOBYTE(v8) = 0;
      v9 = 0;
    }

    v11[0] = &unk_288108A18;
    v11[1] = sub_271141150;
    v11[3] = v11;
    v12 = 1;
    sub_2712AC990();
  }

  return 0;
}

void sub_271169FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_27116A36C(va);
  _Unwind_Resume(a1);
}

void sub_271169FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    sub_2711707EC();
    sub_27117087C();
    sub_27112E8EC(qword_28087A278, &xmmword_28087A290, 0);
    __cxa_end_catch();
    JUMPOUT(0x271169B90);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_27116A048(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  result = operator new(0x60uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    result[1] = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(result + 5) = &unk_288131488;
    result[3] = *(a2 + 40);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(result + 16) = 1;
    *result = &unk_288119588;
    *(result + 1) = &unk_2881195D8;
    *(result + 4) = &unk_2881195F8;
    *(result + 10) = 0;
    *(result + 11) = 0;
    *(result + 9) = 0;
  }

  else
  {
    if ((atomic_load_explicit(&qword_280877B10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877B10))
    {
      sub_2718519B4(qword_280877AF8, "VZLogMessageList]", 0x10uLL);
      __cxa_guard_release(&qword_280877B10);
    }

    if ((atomic_load_explicit(&qword_28087A1E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A1E0))
    {
      sub_2718519B4(&xmmword_28087A2A8, "cv3d::vl::visual_logger::LogMessageList]", 0x27uLL);
      __cxa_guard_release(&qword_28087A1E0);
    }

    if (byte_28087A2BF < 0)
    {
      sub_271127178(&v22, xmmword_28087A2A8, *(&xmmword_28087A2A8 + 1));
    }

    else
    {
      v22 = xmmword_28087A2A8;
      v23 = unk_28087A2B8;
    }

    sub_2711309E8(&v20, &v22, 1uLL);
    LOBYTE(v9) = 0;
    v19 = 0;
    sub_27112E0C4(qword_280877AF8, &v20, &v9, a1);
    if (v19 == 1 && v18 == 1)
    {
      if (v17 == 1)
      {
        if (v16 < 0)
        {
          operator delete(__p);
        }

        if (v14 < 0)
        {
          operator delete(v13);
        }
      }

      if (v12 == 1 && v11 < 0)
      {
        operator delete(v10);
      }
    }

    v5 = v20;
    if (v20)
    {
      v6 = v21;
      v7 = v20;
      if (v21 != v20)
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
        v7 = v20;
      }

      v21 = v5;
      operator delete(v7);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22);
    }

    return 0;
  }

  return result;
}

void sub_27116A328(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087A1E0);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27116A36C(uint64_t result)
{
  if ((*(result + 184) & 1) == 0 && *(result + 176) == 1)
  {
    if (*(result + 168) == 1)
    {
      if (*(result + 167) < 0)
      {
        v1 = result;
        operator delete(*(result + 144));
        result = v1;
      }

      if (*(result + 135) < 0)
      {
        v2 = result;
        operator delete(*(result + 112));
        result = v2;
      }
    }

    if (*(result + 104) == 1 && *(result + 103) < 0)
    {
      v3 = result;
      operator delete(*(result + 80));
      result = v3;
    }
  }

  if (*(result + 56) == 1)
  {
    *(result + 24) = &unk_28812D848;
    *(result + 32) = &unk_288131488;
    v4 = *(result + 48);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = result;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      result = v5;
    }

    *result = &unk_288131488;
    v6 = *(result + 16);
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = result;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        return v7;
      }
    }
  }

  return result;
}

uint64_t (**VZFileImporterCreate(char *a1, uint64_t a2, void *a3))()
{
  v28 = *MEMORY[0x277D85DE8];
  if (!sub_271146460("VZFileImporterCreate", a1, a3))
  {
    memset(v16, 0, 24);
    v6 = a1 - 1;
      ;
    }

    sub_271171230(v16, a1, v6);
    if (a2)
    {
      sub_2711708F8(v9, a2 + 16);
      v15 = 1;
      v24 = &v25;
      v25 = a3;
      LOBYTE(v17[0]) = 0;
      v23 = 0;
      v19 = 0;
      if (v11 == 1)
      {
        *v17 = *v9;
        v18 = v10;
        v9[1] = 0;
        v10 = 0;
        v9[0] = 0;
        v19 = 1;
      }

      LOBYTE(__p[0]) = 0;
      v22 = 0;
      if (v14 == 1)
      {
        *__p = *v12;
        v21 = v13;
        v12[1] = 0;
        v13 = 0;
        v12[0] = 0;
        v22 = 1;
      }

      v23 = 1;
    }

    else
    {
      LOBYTE(v9[0]) = 0;
      v15 = 0;
      v24 = &v25;
      v25 = a3;
      LOBYTE(v17[0]) = 0;
      v23 = 0;
    }

    v26[0] = &unk_288108A18;
    v26[1] = sub_271141150;
    v26[3] = v26;
    v27 = 1;
    sub_2712ADE4C(v16, v17);
  }

  return 0;
}

void sub_27116AD98(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, __int128 a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, const char *a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51, __int128 a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    sub_2711307D4(&STACK[0x260]);
    sub_271171C98(&STACK[0x3A8]);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::logic_error::logic_error(&a66, exception_ptr);
      a66.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(a1);
      a44 = std::logic_error::what(&a66);
      sub_27113604C(&__p, &a44);
      sub_271369D54(&__p, &STACK[0x3A8]);
      a28 = *v68;
      sub_27184A2B4(&a29, &STACK[0x3B8]);
      a42 = 1;
      sub_2711714A0((v69 - 128), &a28);
      sub_2711307D4(&a28);
      sub_27112D71C(&STACK[0x3A8]);
      if (a27 == 1 && a26 < 0)
      {
        operator delete(__p);
      }

      MEMORY[0x2743BE520](&a66);
      __cxa_end_catch();
    }

    else if (a2 == 2)
    {
      v73 = __cxa_get_exception_ptr(a1);
      sub_271135FD0(&a66, v73);
      __cxa_begin_catch(a1);
      v74 = (a67 + 48);
      if (*(a67 + 71) < 0)
      {
        v74 = *v74;
      }

      a44 = v74;
      sub_27113604C(&a45, &a44);
      sub_27136A868(&a45, &STACK[0x3A8]);
      a52 = *v68;
      sub_27184A2B4(&a53, &STACK[0x3B8]);
      a65 = 1;
      sub_2711714A0((v69 - 128), &a52);
      sub_2711307D4(&a52);
      sub_27112D71C(&STACK[0x3A8]);
      if (a51 == 1 && a50 < 0)
      {
        operator delete(a45);
      }

      MEMORY[0x2743BEBB0](&a66);
      __cxa_end_catch();
    }

    else
    {
      __cxa_begin_catch(a1);
      a68 = 0;
      LOBYTE(STACK[0x258]) = 0;
      sub_2711714A0((v69 - 128), &a68);
      sub_2711307D4(&a68);
      __cxa_end_catch();
    }

    JUMPOUT(0x27116ABF4);
  }

  _Unwind_Resume(a1);
}

uint64_t VZFileImporterGetCurrentSequenceTime(uint64_t a1)
{
  if (sub_27116B0C4("VZFileImporterGetCurrentSequenceTime", a1))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v5 = v3[36];
  v4 = v3[37];
  v6 = v3[35];
  if (v6 < 0x86BCA1AF286BCA1BLL * ((v4 - v5) >> 3) || v3[32])
  {
    return *(v5 + 152 * v6);
  }

  if (v5 == v4)
  {
    return 0;
  }

  return *(v4 - 152);
}

BOOL sub_27116B0C4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087A200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A200))
    {
      sub_271171D68();
      __cxa_guard_release(&qword_28087A200);
    }

    if (byte_28087A31F < 0)
    {
      sub_271127178(v5, xmmword_28087A308, *(&xmmword_28087A308 + 1));
    }

    else
    {
      *v5 = xmmword_28087A308;
      v6 = unk_28087A318;
    }

    v7 = 1;
    sub_27112D7CC(a1, v5, &v8);
    v19 = v8;
    LOBYTE(v20) = 0;
    v29 = 0;
    if (v18 == 1)
    {
      v22 = 0;
      if (v11 == 1)
      {
        v20 = v9;
        v21 = v10;
        v10 = 0;
        v9 = 0uLL;
        v22 = 1;
      }

      LOBYTE(v23) = 0;
      v28 = 0;
      if (v17 == 1)
      {
        v24 = v13;
        v23 = *v12;
        v12[0] = 0;
        v12[1] = 0;
        v25 = v14;
        *__p = *v15;
        v27 = v16;
        v13 = 0;
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v28 = 1;
      }

      v29 = 1;
    }

    v30 = 0;
    sub_27112B960(&v19, 0);
    if ((v30 & 1) == 0 && v29 == 1)
    {
      if (v28 == 1)
      {
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23);
        }
      }

      if (v22 == 1 && SHIBYTE(v21) < 0)
      {
        operator delete(v20);
      }
    }

    if (v18 == 1)
    {
      if (v17 == 1)
      {
        if (SHIBYTE(v16) < 0)
        {
          operator delete(v15[0]);
        }

        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
        }
      }

      if (v11 == 1 && SHIBYTE(v10) < 0)
      {
        operator delete(v9);
      }
    }

    if (v7 == 1 && SHIBYTE(v6) < 0)
    {
      operator delete(v5[0]);
    }
  }

  return a2 == 0;
}

void sub_27116B328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZFileImporterGetEndSequenceTime(uint64_t a1)
{
  if (sub_27116B0C4("VZFileImporterGetEndSequenceTime", a1))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v4 = *(v2 + 288);
  v3 = *(v2 + 296);
  if (v4 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 - 152);
  }
}

uint64_t VZFileImporterGetCurrentPackageID(uint64_t a1)
{
  if (sub_27116B0C4("VZFileImporterGetCurrentPackageID", a1))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = v3[36];
  v5 = v3[35];
  if (v5 >= 0x86BCA1AF286BCA1BLL * ((v3[37] - v4) >> 3) && !v3[32])
  {
    return 0;
  }

  v6 = v4 + 152 * v5;
  result = v6 + 8;
  if (*(v6 + 31) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t VZFileImporterGetCurrentDataTypeID(uint64_t a1)
{
  if (sub_27116B0C4("VZFileImporterGetCurrentDataTypeID", a1))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = v3[36];
  v5 = v3[35];
  if (v5 >= 0x86BCA1AF286BCA1BLL * ((v3[37] - v4) >> 3) && !v3[32])
  {
    return 0;
  }

  else
  {
    return *(v4 + 152 * v5 + 32);
  }
}

uint64_t VZFileImporterGetCurrentSubloggerName(uint64_t a1)
{
  if (sub_27116B0C4("VZFileImporterGetCurrentSubloggerName", a1))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = v3[36];
  v5 = v3[35];
  if (v5 >= 0x86BCA1AF286BCA1BLL * ((v3[37] - v4) >> 3) && !v3[32])
  {
    return 0;
  }

  v6 = v4 + 152 * v5;
  result = v6 + 40;
  if (*(v6 + 63) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t VZFileImporterGetCurrentNamespace(uint64_t a1)
{
  if (sub_27116B0C4("VZFileImporterGetCurrentNamespace", a1))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = v3[36];
  v5 = v3[35];
  if (v5 >= 0x86BCA1AF286BCA1BLL * ((v3[37] - v4) >> 3) && !v3[32])
  {
    return 0;
  }

  v6 = v4 + 152 * v5;
  if (*(v6 + 88) != 1)
  {
    return 0;
  }

  result = v6 + 64;
  if (*(v6 + 87) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t VZFileImporterGetCurrentFilePath(uint64_t a1)
{
  if (sub_27116B0C4("VZFileImporterGetCurrentFilePath", a1))
  {
    return 0;
  }

  return sub_2712AF3A8(a1 + 8);
}

uint64_t VZFileImporterGetCurrentOffsetInFile(uint64_t a1)
{
  if (sub_27116B0C4("VZFileImporterGetCurrentOffsetInFile", a1))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = v3[36];
  v5 = v3[35];
  if (v5 >= 0x86BCA1AF286BCA1BLL * ((v3[37] - v4) >> 3) && !v3[32])
  {
    return 0;
  }

  else
  {
    return *(v4 + 152 * v5 + 120);
  }
}

uint64_t VZFileImporterGetCurrentReferenceIDString(uint64_t a1)
{
  if (sub_27116B0C4("VZFileImporterGetCurrentReferenceIDString", a1))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = v3[36];
  v5 = v3[35];
  if (v5 >= 0x86BCA1AF286BCA1BLL * ((v3[37] - v4) >> 3) && !v3[32])
  {
    return 0;
  }

  v6 = v4 + 152 * v5;
  result = v6 + 128;
  if (*(v6 + 151) < 0)
  {
    return *result;
  }

  return result;
}

BOOL VZFileImporterIsDone(uint64_t a1)
{
  if (sub_27116B0C4("VZFileImporterIsDone", a1))
  {
    return 1;
  }

  v3 = *(a1 + 24);
  return v3[35] >= 0x86BCA1AF286BCA1BLL * ((v3[37] - v3[36]) >> 3) && v3[32] == 0;
}

_OWORD *VZFileImporterLoadNext(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  if (sub_27116BCD8("VZFileImporterLoadNext", a1, a2))
  {
    return 0;
  }

  sub_2712AF588(a1 + 8, &v16);
  if (v26)
  {
    result = operator new(0x48uLL, MEMORY[0x277D826F0]);
    if (result)
    {
      result[1] = v16;
      v16 = 0uLL;
      *(result + 4) = off_28810C940;
      *(result + 40) = v18;
      v18 = 0uLL;
      *(result + 14) = 1;
      *result = &unk_288119A08;
      *(result + 1) = &unk_288119A58;
      *(result + 8) = 0;
      if (v26 != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }

    if ((atomic_load_explicit(&qword_280877AD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877AD0))
    {
      sub_2718519B4(qword_280877AB8, "VZLogMessage]", 0xCuLL);
      __cxa_guard_release(&qword_280877AD0);
    }

    if ((atomic_load_explicit(&qword_28087A210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A210))
    {
      sub_2718519B4(&xmmword_28087A338, "cv3d::vl::visual_logger::LogMessage]", 0x23uLL);
      __cxa_guard_release(&qword_28087A210);
    }

    if (byte_28087A34F < 0)
    {
      sub_271127178(&v40, xmmword_28087A338, *(&xmmword_28087A338 + 1));
    }

    else
    {
      v40 = xmmword_28087A338;
      v41 = unk_28087A348;
    }

    sub_2711309E8(&v38, &v40, 1uLL);
    LOBYTE(v27) = 0;
    v37 = 0;
    sub_27112E0C4(qword_280877AB8, &v38, &v27, a2);
    if (v37 == 1 && v36 == 1)
    {
      if (v35 == 1)
      {
        if (v34 < 0)
        {
          operator delete(v33);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }
      }

      if (v30 == 1 && v29 < 0)
      {
        operator delete(v28);
      }
    }

    v12 = v38;
    if (v38)
    {
      v13 = v39;
      v14 = v38;
      if (v39 != v38)
      {
        do
        {
          v15 = *(v13 - 1);
          v13 -= 3;
          if (v15 < 0)
          {
            operator delete(*v13);
          }
        }

        while (v13 != v12);
        v14 = v38;
      }

      v39 = v12;
      operator delete(v14);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }
  }

  else
  {
    sub_27112B960(&v16, a2);
  }

  result = 0;
  if (v26 != 1)
  {
LABEL_7:
    if (v25 == 1)
    {
      if (v24 == 1)
      {
        if (v23 < 0)
        {
          v5 = result;
          operator delete(__p);
          result = v5;
        }

        if (v21 < 0)
        {
          v6 = result;
          operator delete(v20);
          result = v6;
        }
      }

      if (v19 == 1 && SHIBYTE(v18) < 0)
      {
        v7 = result;
        operator delete(v17);
        return v7;
      }
    }

    return result;
  }

LABEL_18:
  v8 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = result;
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    result = v9;
  }

  v10 = *(&v16 + 1);
  if (*(&v16 + 1) && !atomic_fetch_add((*(&v16 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v11 = result;
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    return v11;
  }

  return result;
}

void sub_27116BC7C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087A210);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_27116BCD8(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087A208, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A208))
    {
      sub_271171FCC();
      __cxa_guard_release(&qword_28087A208);
    }

    if (byte_28087A337 < 0)
    {
      sub_271127178(v7, xmmword_28087A320, *(&xmmword_28087A320 + 1));
    }

    else
    {
      *v7 = xmmword_28087A320;
      v8 = unk_28087A330;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_27116BF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_OWORD *VZFileImporterLoadUntil(uint64_t a1, uint64_t a2, void *a3)
{
  if (!sub_27116BCD8("VZFileImporterLoadUntil", a1, a3))
  {
    sub_2712B01B0(a1 + 8, a2);
  }

  return 0;
}

void VZFileImporterSkipNext(uint64_t a1, void *a2)
{
  if (!sub_27116BCD8("VZFileImporterSkipNext", a1, a2))
  {
    sub_2712B0DF0(a1 + 8, &v4);
    if ((v14 & 1) == 0)
    {
      sub_27112B960(&v4, a2);
      if ((v14 & 1) == 0 && v13 == 1)
      {
        if (v12 == 1)
        {
          if (v11 < 0)
          {
            operator delete(__p);
          }

          if (v9 < 0)
          {
            operator delete(v8);
          }
        }

        if (v7 == 1 && v6 < 0)
        {
          operator delete(v5);
        }
      }
    }
  }
}

void VZFileImporterSkipUntil(uint64_t a1, uint64_t a2, void *a3)
{
  if (!sub_27116BCD8("VZFileImporterSkipUntil", a1, a3))
  {
    sub_2712B1180(a1 + 8, a2, &v6);
    if ((v16 & 1) == 0)
    {
      sub_27112B960(&v6, a3);
      if ((v16 & 1) == 0 && v15 == 1)
      {
        if (v14 == 1)
        {
          if (v13 < 0)
          {
            operator delete(__p);
          }

          if (v11 < 0)
          {
            operator delete(v10);
          }
        }

        if (v9 == 1 && v8 < 0)
        {
          operator delete(v7);
        }
      }
    }
  }
}

void VZFileImporterSeekToBegin(uint64_t a1, void *a2)
{
  if (!sub_27116BCD8("VZFileImporterSeekToBegin", a1, a2))
  {
    sub_2712B1534(a1 + 8, &v4);
    if ((v14 & 1) == 0)
    {
      sub_27112B960(&v4, a2);
      if ((v14 & 1) == 0 && v13 == 1)
      {
        if (v12 == 1)
        {
          if (v11 < 0)
          {
            operator delete(__p);
          }

          if (v9 < 0)
          {
            operator delete(v8);
          }
        }

        if (v7 == 1 && v6 < 0)
        {
          operator delete(v5);
        }
      }
    }
  }
}

uint64_t sub_27116C4B0(uint64_t result)
{
  if (atomic_fetch_add((result + 80), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_27116C4EC()
{
  if (atomic_load_explicit(&qword_28087A188, memory_order_acquire))
  {
    return qword_28087A180;
  }

  if (__cxa_guard_acquire(&qword_28087A188))
  {
    qword_28087A180 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A188);
  }

  return qword_28087A180;
}

char *sub_27116C550(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C450, 0);
  if (result)
  {
    v5[0] = a1 + 16;
    v5[1] = a1 + 48;
    v5[2] = a1 + 72;
    v4[0] = result + 16;
    v4[1] = result + 48;
    v4[2] = result + 72;
    return sub_2714D43CC(v5, v4);
  }

  return result;
}

uint64_t sub_27116C5FC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  __cxa_begin_catch(a1);
  sub_27116E1DC();
  sub_27112B400(v26, "failed to compare equal");
  sub_27112DB38(qword_28087A218, v26, 0);
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  __cxa_end_catch();
  return 0;
}

void sub_27116C654(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087A190, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087A190))
    {
      sub_2718519B4(qword_28087A218, "VZFileExportOptions]", 0x13uLL);
      __cxa_guard_release(&qword_28087A190);
    }
  }

  v2 = a1;
  operator new();
}

void sub_27116CB4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31)
{
  __cxa_guard_abort(&qword_28087A190);
  __cxa_begin_catch(a1);
  sub_27116E1DC();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087A218, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x27116CABCLL);
}

uint64_t sub_27116CC9C(uint64_t result)
{
  if (atomic_fetch_add((result + 80), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_27116CCD8()
{
  if (atomic_load_explicit(&qword_28087A1B8, memory_order_acquire))
  {
    return qword_28087A1B0;
  }

  if (__cxa_guard_acquire(&qword_28087A1B8))
  {
    qword_28087A1B0 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A1B8);
  }

  return qword_28087A1B0;
}

void sub_27116CDB0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087A1C0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087A1C0))
    {
      sub_2718519B4(qword_28087A278, "VZFileImportOptions]", 0x13uLL);
      __cxa_guard_release(&qword_28087A1C0);
    }
  }

  v2 = a1;
  operator new();
}

void sub_27116D2A4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32)
{
  __cxa_guard_abort(&qword_28087A1C0);
  __cxa_begin_catch(a1);
  sub_2711707EC();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087A278, &__p, 0);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x27116D214);
}

uint64_t sub_27116D3F4(uint64_t result)
{
  if (atomic_fetch_add((result + 168), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_27116D430()
{
  if (atomic_load_explicit(&qword_28087A1D0, memory_order_acquire))
  {
    return qword_28087A1C8;
  }

  if (__cxa_guard_acquire(&qword_28087A1D0))
  {
    qword_28087A1C8 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A1D0);
  }

  return qword_28087A1C8;
}

void sub_27116D508(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087A1E8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087A1E8))
    {
      sub_2718519B4(qword_28087A2C0, "VZFileImporter]", 0xEuLL);
      __cxa_guard_release(&qword_28087A1E8);
    }
  }

  v2 = a1;
  operator new();
}

void sub_27116D9F8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  __cxa_guard_abort(&qword_28087A1E8);
  __cxa_begin_catch(a1);
  sub_2711719E4();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087A2C0, &__p, 0);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x27116D968);
}

void **sub_27116DB50(void **result)
{
  if (*(result + 24) == 1)
  {
    v1 = *result;
    if (*result)
    {
      v2 = result[1];
      v3 = *result;
      if (v2 != v1)
      {
        v4 = result;
        v5 = 0;
        do
        {
          v6 = &v2[v5];
          if (v2[v5 - 8] == 1)
          {
            v7 = *(v6 - 4);
            if (v7 != -1)
            {
              (off_28812D6B8[v7])(&v9, v6 - 48);
            }

            *(v6 - 4) = -1;
          }

          *(v6 - 102) = off_2881327C0;
          sub_271347580((v6 - 800));
          v5 -= 816;
        }

        while (&v2[v5] != v1);
        result = v4;
        v3 = *v4;
      }

      result[1] = v1;
      v8 = result;
      operator delete(v3);
      return v8;
    }
  }

  return result;
}

uint64_t sub_27116DC5C(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = *(result + 32);
    if (v1 != -1)
    {
      v2 = result;
      (off_28812D6B8[v1])(&v3);
      result = v2;
    }

    *(result + 32) = -1;
  }

  return result;
}

uint64_t sub_27116DCC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_28812D6B8[v2])(&v4, a1);
  }

  *(a1 + 32) = -1;
  return a1;
}

uint64_t sub_27116DD24(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  if (result == a2)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_27116DD80(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(a1 + 48);
      v4 = *(a1 + 40);
      if (v3 != v2)
      {
        v5 = v3 - 32;
        do
        {
          v6 = *(v3 - 8);
          if (v3 - 32 == v6)
          {
            (*(*v6 + 32))(v6);
          }

          else if (v6)
          {
            (*(*v6 + 40))(v6);
          }

          *(v3 - 800) = off_2881327C0;
          sub_271347580(v3 - 784);
          v5 -= 800;
          v3 -= 800;
        }

        while (v3 != v2);
        v4 = *(a1 + 40);
      }

      *(a1 + 48) = v2;
      operator delete(v4);
    }
  }

  if (*(a1 + 32) == 1)
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = *(a1 + 16);
      v9 = *(a1 + 8);
      if (v8 != v7)
      {
        v10 = v8 - 96;
        v11 = v8 - 96;
        do
        {
          (**v11)(v11);
          v10 -= 96;
          v12 = v11 == v7;
          v11 -= 96;
        }

        while (!v12);
        v9 = *(a1 + 8);
      }

      *(a1 + 16) = v7;
      operator delete(v9);
    }
  }

  return a1;
}

void **sub_27116DEFC(void **result)
{
  if (*(result + 24) == 1)
  {
    v1 = *result;
    if (*result)
    {
      v2 = result[1];
      v3 = *result;
      if (v2 != v1)
      {
        v4 = result;
        v5 = v2 - 32;
        do
        {
          v6 = *(v2 - 1);
          if (v2 - 32 == v6)
          {
            (*(*v6 + 32))(v6);
          }

          else if (v6)
          {
            (*(*v6 + 40))(v6);
          }

          *(v2 - 100) = off_2881327C0;
          sub_271347580((v2 - 784));
          v5 -= 800;
          v2 -= 800;
        }

        while (v2 != v1);
        result = v4;
        v3 = *v4;
      }

      result[1] = v1;
      v7 = result;
      operator delete(v3);
      return v7;
    }
  }

  return result;
}

void **sub_27116E014(void **result)
{
  if (*(result + 24) == 1)
  {
    v1 = *result;
    if (*result)
    {
      v2 = result[1];
      v3 = *result;
      if (v2 != v1)
      {
        v4 = result;
        v5 = v2 - 768;
        v6 = v2 - 768;
        do
        {
          (**v6)(v6);
          v5 -= 768;
          v7 = v6 == v1;
          v6 -= 768;
        }

        while (!v7);
        result = v4;
        v3 = *v4;
      }

      result[1] = v1;
      v8 = result;
      operator delete(v3);
      return v8;
    }
  }

  return result;
}

void **sub_27116E0C4(void **result)
{
  if (*(result + 64) == 1 && *(result + 24) == 1)
  {
    v1 = *result;
    if (*result)
    {
      v2 = result[1];
      v3 = *result;
      if (v2 != v1)
      {
        v4 = result;
        v5 = 0;
        do
        {
          v6 = &v2[v5];
          if (v2[v5 - 8] == 1)
          {
            v7 = *(v6 - 4);
            if (v7 != -1)
            {
              (off_28812D6B8[v7])(&v9, v6 - 48);
            }

            *(v6 - 4) = -1;
          }

          *(v6 - 102) = off_2881327C0;
          sub_271347580((v6 - 800));
          v5 -= 816;
        }

        while (&v2[v5] != v1);
        result = v4;
        v3 = *v4;
      }

      result[1] = v1;
      v8 = result;
      operator delete(v3);
      return v8;
    }
  }

  return result;
}

void sub_27116E1DC()
{
  if ((atomic_load_explicit(&qword_28087A190, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A190))
  {
    sub_2718519B4(qword_28087A218, "VZFileExportOptions]", 0x13uLL);

    __cxa_guard_release(&qword_28087A190);
  }
}

double sub_27116E26C()
{
  *(&__p.__r_.__value_.__s + 23) = 19;
  strcpy(&__p, "VZFileExportOptions");
  sub_27184BC8C(&v5, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v1 = &v5;
      if (v0 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v0 = *(&v5 + 1);
  v2 = (v6 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v2 == *(&v5 + 1))
  {
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_8:
    operator new();
  }

  v1 = v5;
LABEL_10:
  *(v1 + v0) = 42;
  v3 = v0 + 1;
  if (SHIBYTE(v6) < 0)
  {
    *(&v5 + 1) = v3;
  }

  else
  {
    HIBYTE(v6) = v3 & 0x7F;
  }

  *(v1 + v3) = 0;
  result = *&v5;
  xmmword_28087A230 = v5;
  unk_28087A240 = v6;
  return result;
}

void sub_27116E444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_27116E474()
{
  v11 = 18;
  strcpy(__p, "VZLogMessageFilter");
  sub_27184BC8C(&v9, __p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (v11 < 0)
  {
    operator delete(*__p);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087A248 = v7;
  unk_28087A258 = v8;
  return result;
}

void sub_27116E698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27116E6D8()
{
  if ((atomic_load_explicit(&qword_28087A1A8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087A1A8))
    {
      sub_27116FDF8();
    }
  }
}

void sub_27116E754(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x50505050505051)
    {
      operator new();
    }

    sub_271135560();
  }
}

void sub_27116E8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27116FCEC(va);
  _Unwind_Resume(a1);
}

void sub_27116E8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v10 = va_arg(va1, void **);
  v12 = va_arg(va1, void);
  v9 = sub_27116DCC4(v6);
  sub_27116DC5C(v9);
  *v7 = v4;
  sub_271347580(v5);
  sub_27116FC00(va1);
  *(v3 + 8) = a3;
  sub_27116FCEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27116E938(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    *(a1 + 8) = 0;
    *(a1 + 40) = -1;
    v4 = *(a2 + 40);
    if (v4 != -1)
    {
      v19 = a1 + 8;
      (off_28812D6D8[v4])(&v19, a2 + 8);
      *(a1 + 40) = v4;
    }

    *(a1 + 48) = 1;
  }

  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a1 + 72) = 0;
  *(a1 + 64) = v6;
  *(a1 + 56) = v5;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(a1 + 72) = 0;
    *(a1 + 104) = 0;
    if (*(a2 + 104) == 1)
    {
      if (*(a2 + 95) < 0)
      {
        sub_271127178((a1 + 72), *(a2 + 72), *(a2 + 80));
      }

      else
      {
        v7 = *(a2 + 72);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 72) = v7;
      }

      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = 1;
    }

    *(a1 + 112) = 1;
  }

  *(a1 + 120) = 0;
  *(a1 + 152) = 0;
  if (*(a2 + 152) == 1)
  {
    *(a1 + 120) = 0;
    *(a1 + 144) = -1;
    v8 = *(a2 + 144);
    if (v8 != -1)
    {
      v19 = a1 + 120;
      (off_28812D6F8[v8])(&v19, a2 + 120);
      *(a1 + 144) = v8;
    }

    *(a1 + 152) = 1;
  }

  *(a1 + 160) = 0;
  *(a1 + 224) = 0;
  if (*(a2 + 224) == 1)
  {
    *(a1 + 160) = 0;
    *(a1 + 216) = -1;
    v9 = *(a2 + 216);
    if (v9 != -1)
    {
      v19 = a1 + 160;
      (off_28812D718[v9])(&v19, a2 + 160);
      *(a1 + 216) = v9;
    }

    *(a1 + 224) = 1;
  }

  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  if (*(a2 + 256) == 1)
  {
    *(a1 + 232) = off_28810C940;
    *(a1 + 240) = *(a2 + 240);
    v10 = *(a2 + 248);
    *(a1 + 248) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 256) = 1;
  }

  *(a1 + 264) = 0;
  *(a1 + 312) = 0;
  if (*(a2 + 312) == 1)
  {
    *(a1 + 272) = 0;
    *(a1 + 304) = -1;
    v11 = *(a2 + 304);
    if (v11 != -1)
    {
      v19 = a1 + 272;
      (off_28812D6D8[v11])(&v19, a2 + 272);
      *(a1 + 304) = v11;
    }

    *(a1 + 312) = 1;
  }

  *(a1 + 320) = 0;
  *(a1 + 416) = 0;
  if (*(a2 + 416) == 1)
  {
    *(a1 + 336) = 0;
    *(a1 + 400) = -1;
    v12 = *(a2 + 400);
    if (v12 != -1)
    {
      v19 = a1 + 336;
      (off_28812D738[v12])(&v19, a2 + 336);
      *(a1 + 400) = v12;
    }

    *(a1 + 416) = 1;
  }

  *(a1 + 432) = 0;
  *(a1 + 576) = 0;
  if (*(a2 + 576) == 1)
  {
    *(a1 + 448) = 0;
    *(a1 + 560) = -1;
    v13 = *(a2 + 560);
    if (v13 != -1)
    {
      v19 = a1 + 448;
      (off_28812D758[v13])(&v19, a2 + 448);
      *(a1 + 560) = v13;
    }

    *(a1 + 576) = 1;
  }

  *(a1 + 592) = 0;
  *(a1 + 624) = 0;
  if (*(a2 + 624) == 1)
  {
    *(a1 + 592) = 0;
    *(a1 + 616) = 0;
    if (*(a2 + 616) == 1)
    {
      *(a1 + 592) = 0;
      *(a1 + 600) = 0;
      *(a1 + 608) = 0;
      sub_271135440(a1 + 592, *(a2 + 592), *(a2 + 600), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 600) - *(a2 + 592)) >> 5));
      *(a1 + 616) = 1;
    }

    *(a1 + 624) = 1;
  }

  *(a1 + 632) = 0;
  *(a1 + 680) = 0;
  if (*(a2 + 680) == 1)
  {
    *(a1 + 640) = 0;
    *(a1 + 672) = -1;
    v14 = *(a2 + 672);
    if (v14 != -1)
    {
      v19 = a1 + 640;
      (off_28812D6D8[v14])(&v19, a2 + 640);
      *(a1 + 672) = v14;
    }

    *(a1 + 680) = 1;
  }

  v15 = *(a2 + 688);
  v16 = *(a2 + 704);
  v17 = *(a2 + 720);
  *(a1 + 729) = *(a2 + 729);
  *(a1 + 704) = v16;
  *(a1 + 720) = v17;
  *(a1 + 688) = v15;
  return a1;
}

void sub_27116ED50(_Unwind_Exception *a1)
{
  if (v1[104] == 1 && v1[95] < 0)
  {
    operator delete(*v2);
    if (v1[112] != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v1[112] != 1)
  {
    goto LABEL_9;
  }

  if (v1[104] == 1 && v1[95] < 0)
  {
    operator delete(*v2);
    sub_27116EEC8(v1);
    _Unwind_Resume(a1);
  }

LABEL_9:
  sub_27116EEC8(v1);
  _Unwind_Resume(a1);
}

void sub_27116EEAC(_Unwind_Exception *a1)
{
  sub_27116F024(v2);
  sub_27116F080(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_27116EEC8(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 != -1)
    {
      v2 = result;
      (off_28812D6C8[v1])(&v3, result + 8);
      result = v2;
    }

    *(result + 40) = -1;
  }

  return result;
}

void sub_27116EF34(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1 && *(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_27116EF54(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t *sub_27116EF68(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  *v2 = 0;
  *(v2 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      result = sub_271127178(v2, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      *(v2 + 16) = *(a2 + 2);
      *v2 = v3;
    }

    *(v2 + 24) = 1;
  }

  return result;
}

void sub_27116EFD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_27116EFF8(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_271127178(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

uint64_t sub_27116F024(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_28812D6C8[v2])(&v4, a1);
  }

  *(a1 + 32) = -1;
  return a1;
}

uint64_t sub_27116F080(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 != -1)
    {
      v2 = result;
      (off_28812D6C8[v1])(&v3, result + 8);
      result = v2;
    }

    *(result + 40) = -1;
  }

  return result;
}

void sub_27116F0EC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_27116F100(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void *sub_27116F114(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_271127178(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

void *sub_27116F140(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_271127178(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

uint64_t sub_27116F16C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_28812D6E8[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t sub_27116F1C8(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 != -1)
    {
      v2 = result;
      (off_28812D6E8[v1])(&v3);
      result = v2;
    }

    *(result + 24) = -1;
  }

  return result;
}

void sub_27116F230(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_27116F294(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void *sub_27116F2B0(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_271127178(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

uint64_t sub_27116F2DC(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_271127178(a1, *a2, *(a2 + 1));
    *(a1 + 24) = 0;
    v5 = a1 + 24;
    *(a1 + 48) = 0;
    if (*(a2 + 48) != 1)
    {
      return a1;
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a1 + 24) = 0;
    v5 = a1 + 24;
    *(a1 + 48) = 0;
    if (*(a2 + 48) != 1)
    {
      return a1;
    }
  }

  if (*(a2 + 47) < 0)
  {
    sub_271127178(v5, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v7 = *(a2 + 24);
    *(v5 + 16) = *(a2 + 5);
    *v5 = v7;
  }

  *(a1 + 48) = 1;
  return a1;
}

void sub_27116F3A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27116F3DC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 != -1)
  {
    (off_28812D708[v2])(&v4, a1);
  }

  *(a1 + 56) = -1;
  return a1;
}

uint64_t sub_27116F438(uint64_t result)
{
  if (*(result + 64) == 1)
  {
    v1 = *(result + 56);
    if (v1 != -1)
    {
      v2 = result;
      (off_28812D708[v1])(&v3);
      result = v2;
    }

    *(result + 56) = -1;
  }

  return result;
}

void sub_27116F4A0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1 && *(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_27116F4C0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t *sub_27116F4D4(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  *v2 = 0;
  *(v2 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      result = sub_271127178(v2, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      *(v2 + 16) = *(a2 + 2);
      *v2 = v3;
    }

    _X2 = 0;
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }

    *(v2 + 32) = _X2;
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
  }

  return result;
}

void sub_27116F55C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_27116F584(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_271127178(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

uint64_t sub_27116F5B0(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 != -1)
  {
    (off_28812D728[v2])(&v4, a1);
  }

  *(a1 + 64) = -1;
  return a1;
}

uint64_t sub_27116F60C(uint64_t result)
{
  if (*(result + 96) == 1)
  {
    v1 = *(result + 80);
    if (v1 != -1)
    {
      v2 = result;
      (off_28812D728[v1])(&v3, result + 16);
      result = v2;
    }

    *(result + 80) = -1;
  }

  return result;
}

void sub_27116F678(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 96) == 1)
  {
    if (*(a2 + 80) == 1 && *(a2 + 55) < 0)
    {
      v3 = a2;
      operator delete(*(a2 + 32));
      a2 = v3;
    }

    if (*(a2 + 24) == 1 && *(a2 + 23) < 0)
    {
      v4 = *a2;

      operator delete(v4);
    }
  }
}

void sub_27116F6F0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_27116F704(uint64_t result)
{
  if (*(result + 96) == 1)
  {
    if (*(result + 80) == 1 && *(result + 55) < 0)
    {
      v1 = result;
      operator delete(*(result + 32));
      result = v1;
    }

    if (*(result + 24) == 1 && *(result + 23) < 0)
    {
      v2 = result;
      operator delete(*result);
      return v2;
    }
  }

  return result;
}

_BYTE **sub_27116F780(_BYTE **result, uint64_t a2)
{
  v2 = *result;
  *v2 = 0;
  v2[96] = 0;
  if (*(a2 + 96) == 1)
  {
    result = sub_271135578(v2, a2);
    v2[96] = 1;
  }

  return result;
}

void *sub_27116F7D8(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_271127178(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

uint64_t sub_27116F804(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812D748[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

uint64_t sub_27116F860(uint64_t result)
{
  if (*(result + 144) == 1)
  {
    v1 = *(result + 128);
    if (v1 != -1)
    {
      v2 = result;
      (off_28812D748[v1])(&v3, result + 16);
      result = v2;
    }

    *(result + 128) = -1;
  }

  return result;
}

uint64_t sub_27116F8CC(uint64_t a1)
{
  if (*(a1 + 32) == 1 && *(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
      v4 = *a1;
      if (v3 == v2)
      {
LABEL_15:
        *(a1 + 8) = v2;
        operator delete(v4);
        return a1;
      }

      while (1)
      {
        v5 = v3;
        if (*(v3 - 16) == 1 && *(v3 - 41) < 0)
        {
          operator delete(*(v3 - 8));
          v3 -= 12;
          if (*(v5 - 72) == 1)
          {
LABEL_10:
            if (*(v5 - 73) < 0)
            {
              operator delete(*v3);
            }
          }
        }

        else
        {
          v3 -= 12;
          if (*(v5 - 72) == 1)
          {
            goto LABEL_10;
          }
        }

        if (v3 == v2)
        {
          v4 = *a1;
          goto LABEL_15;
        }
      }
    }
  }

  return a1;
}

uint64_t sub_27116F998(uint64_t result)
{
  if (*(result + 144) == 1)
  {
    v1 = *(result + 128);
    if (v1 != -1)
    {
      v2 = result;
      (off_28812D748[v1])(&v3, result + 16);
      result = v2;
    }

    *(result + 128) = -1;
  }

  return result;
}

uint64_t sub_27116FA04(uint64_t result)
{
  if (*(result + 96) == 1)
  {
    v1 = *(result + 80);
    if (v1 != -1)
    {
      v2 = result;
      (off_28812D728[v1])(&v3, result + 16);
      result = v2;
    }

    *(result + 80) = -1;
  }

  return result;
}

uint64_t sub_27116FA70(uint64_t result)
{
  if (*(result + 64) == 1)
  {
    v1 = *(result + 56);
    if (v1 != -1)
    {
      v2 = result;
      (off_28812D708[v1])(&v3);
      result = v2;
    }

    *(result + 56) = -1;
  }

  return result;
}

uint64_t sub_27116FAD8(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 != -1)
    {
      v2 = result;
      (off_28812D6E8[v1])(&v3);
      result = v2;
    }

    *(result + 24) = -1;
  }

  return result;
}

uint64_t sub_27116FB50(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *(a2 + 24);
  if (result)
  {
    if (result == a2)
    {
      *(v2 + 24) = v2;
      v4 = *(**(a2 + 24) + 24);

      return v4();
    }

    else
    {
      result = (*(*result + 16))(result);
      *(v2 + 24) = result;
    }
  }

  else
  {
    *(v2 + 24) = 0;
  }

  return result;
}

uint64_t sub_27116FC00(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = 0;
      do
      {
        v7 = v4 + v6;
        if (*(v4 + v6 - 8) == 1)
        {
          v8 = *(v7 - 16);
          if (v8 != -1)
          {
            (off_28812D6B8[v8])(&v10, v7 - 48);
          }

          *(v7 - 16) = -1;
        }

        *(v7 - 816) = off_2881327C0;
        sub_271347580(v7 - 800);
        v6 -= 816;
      }

      while (v4 + v6 != v5);
    }
  }

  return a1;
}

void ***sub_27116FCEC(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = 0;
        do
        {
          v7 = &v4[v6];
          if (v4[v6 - 8] == 1)
          {
            v8 = *(v7 - 4);
            if (v8 != -1)
            {
              (off_28812D6B8[v8])(&v9, v7 - 48);
            }

            *(v7 - 4) = -1;
          }

          *(v7 - 102) = off_2881327C0;
          sub_271347580((v7 - 800));
          v6 -= 816;
        }

        while (&v4[v6] != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_27116FDF8()
{
  v2 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "std::optional");
  sub_27184BC8C(&v0, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27116FFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_27137F4D0(&a16);
  if (*(v24 - 25) < 0)
  {
    operator delete(*(v24 - 48));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271170044(void ***a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877950))
  {
    sub_2718519B4(qword_280877938, "VZDestination]", 0xDuLL);
    __cxa_guard_release(&qword_280877950);
  }

  if ((atomic_load_explicit(&qword_2808779D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808779D0))
  {
    sub_27114C390(&xmmword_2808779B8);
    __cxa_guard_release(&qword_2808779D0);
  }

  if (byte_2808779CF < 0)
  {
    sub_271127178(&v21, xmmword_2808779B8, *(&xmmword_2808779B8 + 1));
  }

  else
  {
    v21 = xmmword_2808779B8;
    v22 = unk_2808779C8;
  }

  if ((atomic_load_explicit(&qword_28087A1A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A1A8))
  {
    sub_27116FDF8();
  }

  if (byte_28087A277 < 0)
  {
    sub_271127178(&v23, xmmword_28087A260, *(&xmmword_28087A260 + 1));
  }

  else
  {
    v23 = xmmword_28087A260;
    v24 = unk_28087A270;
  }

  if ((atomic_load_explicit(&qword_280877990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877990))
  {
    sub_271144B04();
  }

  if (byte_28087798F < 0)
  {
    sub_271127178(&v25, xmmword_280877978, *(&xmmword_280877978 + 1));
  }

  else
  {
    v25 = xmmword_280877978;
    v26 = unk_280877988;
  }

  if ((atomic_load_explicit(&qword_280877BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877BF0))
  {
    sub_27117058C(&xmmword_280877BD8);
    __cxa_guard_release(&qword_280877BF0);
  }

  if (byte_280877BEF < 0)
  {
    sub_271127178(&v27, xmmword_280877BD8, *(&xmmword_280877BD8 + 1));
  }

  else
  {
    v27 = xmmword_280877BD8;
    v28 = unk_280877BE8;
  }

  sub_2711309E8(&v19, &v21, 4uLL);
  LOBYTE(v8) = 0;
  v18 = 0;
  if (*(a2 + 120) == 1)
  {
    v8 = *a2;
    LOBYTE(v9) = 0;
    v17 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v9, (a2 + 16));
      v17 = 1;
    }

    v18 = 1;
  }

  sub_27112E0C4(qword_280877938, &v19, &v8, **a1);
  if (v18 == 1 && v17 == 1)
  {
    if (v16 == 1)
    {
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }
    }

    if (v11 == 1 && v10 < 0)
    {
      operator delete(v9);
    }
  }

  v4 = v19;
  if (v19)
  {
    v5 = v20;
    v6 = v19;
    if (v20 != v19)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v19;
    }

    v20 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_42:
      if ((SHIBYTE(v24) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }
  }

  else if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(v25);
  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
LABEL_43:
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      return;
    }

LABEL_48:
    operator delete(v21);
    return;
  }

LABEL_47:
  operator delete(v23);
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_48;
  }
}

void sub_271170464(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877BF0);
  while (1)
  {
    v4 = *(v1 - 1);
    v1 -= 3;
    if (v4 < 0)
    {
      operator delete(*v1);
    }

    if (v1 == (v2 - 144))
    {
      _Unwind_Resume(a1);
    }
  }
}

double sub_27117058C@<D0>(uint64_t a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 14;
  strcpy(&__p, "std::nullopt_t");
  sub_27184BC8C(&v11, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v2 = std::string::insert(&v11, 0, "const ", 6uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v10 = v2->__r_.__value_.__r.__words[2];
  v9 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v5 = &v9;
      if (v4 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v4 = *(&v9 + 1);
  v6 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v6 == *(&v9 + 1))
  {
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v5 = v9;
LABEL_12:
  *(v5 + v4) = 38;
  v7 = v4 + 1;
  if (SHIBYTE(v10) < 0)
  {
    *(&v9 + 1) = v7;
  }

  else
  {
    HIBYTE(v10) = v7 & 0x7F;
  }

  *(v5 + v7) = 0;
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  return result;
}

void sub_2711707AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711707EC()
{
  if ((atomic_load_explicit(&qword_28087A1C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A1C0))
  {
    sub_2718519B4(qword_28087A278, "VZFileImportOptions]", 0x13uLL);

    __cxa_guard_release(&qword_28087A1C0);
  }
}

void sub_27117087C()
{
  if ((atomic_load_explicit(&qword_28087A1D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087A1D8))
    {
      sub_271170FE4();
    }
  }
}

uint64_t sub_2711708F8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_271170A74(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 8));
    *(a1 + 24) = 1;
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v5 = *(a2 + 32);
    v4 = *(a2 + 40);
    if (v4 != v5)
    {
      if (0x8F5C28F5C28F5C29 * ((v4 - v5) >> 5) < 0x51EB851EB851ECLL)
      {
        operator new();
      }

      sub_271135560();
    }

    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_271170A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 40) = v11;
  sub_271170ED4(&a9);
  sub_27116DEFC(v10);
  sub_27116E014(v9);
  _Unwind_Resume(a1);
}

void sub_271170A74(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x55555555555556)
    {
      operator new();
    }

    sub_271135560();
  }
}

void sub_271170B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v11)
  {
    v14 = (v12 - 768);
    v15 = -v11;
    v16 = v14;
    v17 = v14;
    do
    {
      (**v17)(v17, a2, a3, a4, a5, a6, a7, a8);
      v17 -= 96;
      v16 -= 96;
      v15 += 768;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_271170BDC(&a9);
  _Unwind_Resume(a1);
}

void ***sub_271170BDC(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 96;
        v7 = v4 - 96;
        do
        {
          (**v7)(v7);
          v6 -= 96;
          v8 = v7 == v2;
          v7 -= 96;
        }

        while (!v8);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void *sub_271170C8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  if (a2 != a3)
  {
    v6 = a2 + 768;
    do
    {
      *v4 = off_2881327C0;
      sub_27116E938((v4 + 2), v6 - 752);
      v7 = *(v6 + 24);
      if (v7)
      {
        if (v6 == v7)
        {
          v4[99] = v4 + 96;
          (*(**(v6 + 24) + 24))(*(v6 + 24));
          goto LABEL_5;
        }

        v7 = (*(*v7 + 16))(v7);
      }

      v4[99] = v7;
LABEL_5:
      v4 = v10 + 100;
      v10 += 100;
      v8 = v6 + 32;
      v6 += 800;
    }

    while (v8 != a3);
  }

  return v4;
}

void sub_271170DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *v9 = v10;
  sub_271347580(v11);
  sub_271170DE0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271170DE0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = v4 - 32;
      do
      {
        v7 = *(v4 - 8);
        if (v4 - 32 == v7)
        {
          (*(*v7 + 32))(v7);
        }

        else if (v7)
        {
          (*(*v7 + 40))(v7);
        }

        *(v4 - 800) = off_2881327C0;
        sub_271347580(v4 - 784);
        v6 -= 800;
        v4 -= 800;
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void ***sub_271170ED4(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 32;
        do
        {
          v7 = *(v4 - 1);
          if (v4 - 32 == v7)
          {
            (*(*v7 + 32))(v7);
          }

          else if (v7)
          {
            (*(*v7 + 40))(v7);
          }

          *(v4 - 100) = off_2881327C0;
          sub_271347580((v4 - 784));
          v6 -= 800;
          v4 -= 800;
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_271170FE4()
{
  v2 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "std::optional");
  sub_27184BC8C(&v0, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_2711711C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_27137F4D0(&a16);
  if (*(v24 - 25) < 0)
  {
    operator delete(*(v24 - 48));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_271171230(unint64_t a1, char *a2, _BYTE *a3)
{
  v4 = a3 - a2;
  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    if (a3 == a2)
    {
      return a1;
    }

    v7 = *(a1 + 8);
    v9 = *(a1 + 16);
    v6 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v8 = *a1;
    v5 = v9 >> 63;
    if (*a1 > a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return a1;
    }

    LODWORD(v5) = 0;
    v6 = 22;
    v7 = *(a1 + 23);
    v8 = a1;
    if (a1 > a2)
    {
      goto LABEL_11;
    }
  }

  if (v8 + v7 + 1 > a2)
  {
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_29;
    }

    if (v4 > 0x16)
    {
      operator new();
    }

    v16 = a3 - a2;
    memcpy(__dst, a2, v4);
    *(__dst + v4) = 0;
    if ((v16 & 0x80u) == 0)
    {
      v12 = __dst;
    }

    else
    {
      v12 = __dst[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v13 = v16;
    }

    else
    {
      v13 = __dst[1];
    }

    std::string::append(a1, v12, v13);
    if (v16 < 0)
    {
      operator delete(__dst[0]);
    }

    return a1;
  }

LABEL_11:
  if (v6 - v7 < v4)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 >= v7 + v4 - v6)
    {
      operator new();
    }

LABEL_29:
    sub_271120DA8();
  }

  v10 = a1;
  if (v5)
  {
    v10 = *a1;
  }

  memmove((v10 + v7), a2, v4);
  *(v10 + v7 + v4) = 0;
  v11 = v7 + v4;
  if (*(a1 + 23) < 0)
  {
    *(a1 + 8) = v11;
  }

  else
  {
    *(a1 + 23) = v11 & 0x7F;
  }

  return a1;
}

void sub_271171484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711714A0(void ***a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A1E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A1E8))
  {
    sub_2718519B4(qword_28087A2C0, "VZFileImporter]", 0xEuLL);
    __cxa_guard_release(&qword_28087A1E8);
  }

  if ((atomic_load_explicit(&qword_28087A1F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A1F0))
  {
    sub_2718519B4(&xmmword_28087A2D8, "std::filesystem::path]", 0x15uLL);
    __cxa_guard_release(&qword_28087A1F0);
  }

  if (byte_28087A2EF < 0)
  {
    sub_271127178(&v21, xmmword_28087A2D8, *(&xmmword_28087A2D8 + 1));
  }

  else
  {
    v21 = xmmword_28087A2D8;
    v22 = unk_28087A2E8;
  }

  if ((atomic_load_explicit(&qword_28087A1D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A1D8))
  {
    sub_271170FE4();
  }

  if (byte_28087A2A7 < 0)
  {
    sub_271127178(&v23, xmmword_28087A290, *(&xmmword_28087A290 + 1));
  }

  else
  {
    v23 = xmmword_28087A290;
    v24 = unk_28087A2A0;
  }

  if ((atomic_load_explicit(&qword_280877990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877990))
  {
    sub_271144B04();
  }

  if (byte_28087798F < 0)
  {
    sub_271127178(&v25, xmmword_280877978, *(&xmmword_280877978 + 1));
  }

  else
  {
    v25 = xmmword_280877978;
    v26 = unk_280877988;
  }

  if ((atomic_load_explicit(&qword_28087A1F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A1F8))
  {
    sub_271171A74();
  }

  if (byte_28087A307 < 0)
  {
    sub_271127178(&v27, xmmword_28087A2F0, *(&xmmword_28087A2F0 + 1));
  }

  else
  {
    v27 = xmmword_28087A2F0;
    v28 = unk_28087A300;
  }

  sub_2711309E8(&v19, &v21, 4uLL);
  LOBYTE(v8) = 0;
  v18 = 0;
  if (*(a2 + 120) == 1)
  {
    v8 = *a2;
    LOBYTE(v9) = 0;
    v17 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v9, (a2 + 16));
      v17 = 1;
    }

    v18 = 1;
  }

  sub_27112E0C4(qword_28087A2C0, &v19, &v8, **a1);
  if (v18 == 1 && v17 == 1)
  {
    if (v16 == 1)
    {
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }
    }

    if (v11 == 1 && v10 < 0)
    {
      operator delete(v9);
    }
  }

  v4 = v19;
  if (v19)
  {
    v5 = v20;
    v6 = v19;
    if (v20 != v19)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v19;
    }

    v20 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_42:
      if ((SHIBYTE(v24) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }
  }

  else if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(v25);
  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
LABEL_43:
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      return;
    }

LABEL_48:
    operator delete(v21);
    return;
  }

LABEL_47:
  operator delete(v23);
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_48;
  }
}

void sub_2711718BC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_28087A1F8);
  while (1)
  {
    v4 = *(v1 - 1);
    v1 -= 3;
    if (v4 < 0)
    {
      operator delete(*v1);
    }

    if (v1 == (v2 - 144))
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_2711719E4()
{
  if ((atomic_load_explicit(&qword_28087A1E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A1E8))
  {
    sub_2718519B4(qword_28087A2C0, "VZFileImporter]", 0xEuLL);

    __cxa_guard_release(&qword_28087A1E8);
  }
}

void sub_271171C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271171C98(uint64_t result)
{
  if (*(result + 160) == 1)
  {
    v1 = result;
    (**result)();
    return v1;
  }

  if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v2 = result;
        operator delete(*(result + 80));
        result = v2;
      }

      if (*(result + 71) < 0)
      {
        v3 = result;
        operator delete(*(result + 48));
        result = v3;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v1 = result;
      operator delete(*(result + 16));
      return v1;
    }
  }

  return result;
}

double sub_271171D68()
{
  *(&__p.__r_.__value_.__s + 23) = 14;
  strcpy(&__p, "VZFileImporter");
  sub_27184BC8C(&v9, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087A308 = v7;
  unk_28087A318 = v8;
  return result;
}

void sub_271171F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_271171FCC()
{
  *(&__p.__r_.__value_.__s + 23) = 14;
  strcpy(&__p, "VZFileImporter");
  sub_27184BC8C(&v5, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v1 = &v5;
      if (v0 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v0 = *(&v5 + 1);
  v2 = (v6 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v2 == *(&v5 + 1))
  {
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_8:
    operator new();
  }

  v1 = v5;
LABEL_10:
  *(v1 + v0) = 42;
  v3 = v0 + 1;
  if (SHIBYTE(v6) < 0)
  {
    *(&v5 + 1) = v3;
  }

  else
  {
    HIBYTE(v6) = v3 & 0x7F;
  }

  *(v1 + v3) = 0;
  result = *&v5;
  xmmword_28087A320 = v5;
  unk_28087A330 = v6;
  return result;
}

void sub_2711721A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271172200(uint64_t a1)
{
  sub_2712CAF40(a1 + 8);

  JUMPOUT(0x2743BF050);
}

void sub_27117224C(uint64_t a1)
{
  sub_2712CAF40(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t VZPixelFormatGetChannels(int a1)
{
  sub_2712CA460(a1, v5);
  result = sub_271172364("VZPixelFormatGetChannels", v5);
  if ((v14 & 1) == 0 && v13 == 1)
  {
    if (v12 == 1)
    {
      if (v11 < 0)
      {
        v2 = result;
        operator delete(__p);
        result = v2;
      }

      if (v9 < 0)
      {
        v3 = result;
        operator delete(v8);
        result = v3;
      }
    }

    if (v7 == 1 && v6 < 0)
    {
      v4 = result;
      operator delete(v5[2]);
      return v4;
    }
  }

  return result;
}

uint64_t sub_271172364(uint64_t a1, uint64_t *a2)
{
  v16 = a1;
  if (a2[15])
  {
    return *a2;
  }

  sub_27113F150("in function ", &v16);
  sub_271849064(a2, &v4, &v6);
  sub_27112B960(&v6, 0);
  if (v15 == 1)
  {
    if (v14 == 1)
    {
      if (v13 < 0)
      {
        operator delete(__p);
      }

      if (v11 < 0)
      {
        operator delete(v10);
      }
    }

    if (v9 == 1 && v8 < 0)
    {
      operator delete(v7);
    }
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }

  return 0;
}

void sub_271172458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_27112D71C(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZPixelFormatGetBytesPerPixel(int a1)
{
  sub_2712CA66C(a1, v5);
  result = sub_271172364("VZPixelFormatGetBytesPerPixel", v5);
  if ((v14 & 1) == 0 && v13 == 1)
  {
    if (v12 == 1)
    {
      if (v11 < 0)
      {
        v2 = result;
        operator delete(__p);
        result = v2;
      }

      if (v9 < 0)
      {
        v3 = result;
        operator delete(v8);
        result = v3;
      }
    }

    if (v7 == 1 && v6 < 0)
    {
      v4 = result;
      operator delete(v5[2]);
      return v4;
    }
  }

  return result;
}

uint64_t VZPixelFormatGetBytesPerValue(int a1)
{
  sub_2712CA87C(a1, v5);
  result = sub_271172364("VZPixelFormatGetBytesPerValue", v5);
  if ((v14 & 1) == 0 && v13 == 1)
  {
    if (v12 == 1)
    {
      if (v11 < 0)
      {
        v2 = result;
        operator delete(__p);
        result = v2;
      }

      if (v9 < 0)
      {
        v3 = result;
        operator delete(v8);
        result = v3;
      }
    }

    if (v7 == 1 && v6 < 0)
    {
      v4 = result;
      operator delete(v5[2]);
      return v4;
    }
  }

  return result;
}

uint64_t VZImageGetTypeID()
{
  if (atomic_load_explicit(&qword_28087A358, memory_order_acquire))
  {
    return qword_28087A350;
  }

  if (__cxa_guard_acquire(&qword_28087A358))
  {
    qword_28087A350 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A358);
  }

  return qword_28087A350;
}

void **VZDataCreateWithImage(uint64_t a1, uint64_t a2, void *a3)
{
  v82 = *MEMORY[0x277D85DE8];
  if (!sub_271152BD0("VZDataCreateWithImage", a1, a3))
  {
    sub_27113347C(a2, &v19);
    v17 = &v18;
    v18 = a3;
    LOBYTE(v48) = 0;
    v80 = 0;
    if (v47 != 1)
    {
      goto LABEL_20;
    }

    v48 = v19;
    v49 = v20;
    LOBYTE(v50) = 0;
    v52 = 0;
    if (v23 == 1)
    {
      v50 = *v21;
      v51 = v22;
      v21[1] = 0;
      v22 = 0;
      v21[0] = 0;
      v52 = 1;
    }

    v53 = v24;
    v54 = v25;
    LOBYTE(v55) = 0;
    v57 = 0;
    if (v28 == 1)
    {
      v55 = v26;
      v56 = v27;
      v27 = 0;
      v26 = 0uLL;
      v57 = 1;
      LOBYTE(v58) = 0;
      v62 = 0;
      if (v31 != 1)
      {
LABEL_8:
        LOBYTE(v63[0]) = 0;
        v65 = 0;
        if (v34 != 1)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v58) = 0;
      v62 = 0;
      if (v31 != 1)
      {
        goto LABEL_8;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v59 = v30;
    v58 = *v29;
    v29[1] = 0;
    v30 = 0;
    v29[0] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v60 = _X0;
    v61 = 0;
    v62 = 1;
    LOBYTE(v63[0]) = 0;
    v65 = 0;
    if (v34 != 1)
    {
LABEL_9:
      LOBYTE(v66) = 0;
      v79 = 0;
      if (v46 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

LABEL_13:
    *v63 = *v32;
    v64 = v33;
    v33 = 0;
    v32[1] = 0;
    v32[0] = 0;
    v65 = 1;
    LOBYTE(v66) = 0;
    v79 = 0;
    if (v46 != 1)
    {
LABEL_19:
      v80 = 1;
LABEL_20:
      sub_2712CBA90(a1 + 8, &v48, &v81);
    }

LABEL_14:
    LOBYTE(v66) = 0;
    v68 = 0;
    if (v37 == 1)
    {
      v66 = v35;
      v67 = v36;
      v36 = 0;
      v35 = 0uLL;
      v68 = 1;
      LOBYTE(v69) = 0;
      v73 = 0;
      if (v40 != 1)
      {
LABEL_16:
        LOBYTE(__p) = 0;
        v76 = 0;
        if (v43 != 1)
        {
LABEL_18:
          v77 = v44;
          v78 = v45;
          v79 = 1;
          goto LABEL_19;
        }

LABEL_17:
        __p = *v41;
        v75 = v42;
        v42 = 0;
        v41[0] = 0;
        v41[1] = 0;
        v76 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v69) = 0;
      v73 = 0;
      if (v40 != 1)
      {
        goto LABEL_16;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v69 = *v38;
    v70 = v39;
    v39 = 0;
    v38[0] = 0;
    v38[1] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    v71 = _X0;
    v72 = 0;
    v73 = 1;
    LOBYTE(__p) = 0;
    v76 = 0;
    if (v43 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  return 0;
}

void sub_271172E48(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::runtime_error __p, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  if (a2)
  {
    sub_2711307D4(&a38);
    sub_271137BDC(&STACK[0x4A0]);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::logic_error::logic_error(&a10, exception_ptr);
      a10.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(a1);
      a9 = std::logic_error::what(&a10);
      sub_27113604C(&__p, &a9);
      sub_271369D54(&__p, &a16);
      *&STACK[0x4A0] = a16;
      sub_27184A2B4(&STACK[0x4B0], &a17);
      LOBYTE(STACK[0x518]) = 1;
      sub_2711753BC(&a54, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      sub_27112D71C(&a16);
      if (a35 == 1 && a34 < 0)
      {
        operator delete(__p.__vftable);
      }

      MEMORY[0x2743BE520](&a10);
      __cxa_end_catch();
    }

    else if (a2 == 2)
    {
      v56 = __cxa_get_exception_ptr(a1);
      sub_271135FD0(&__p, v56);
      __cxa_begin_catch(a1);
      v57 = (a36 + 48);
      if (*(a36 + 71) < 0)
      {
        v57 = *v57;
      }

      a9 = v57;
      sub_27113604C(&a10, &a9);
      sub_27136A868(&a10, &a16);
      *&STACK[0x4A0] = a16;
      sub_27184A2B4(&STACK[0x4B0], &a17);
      LOBYTE(STACK[0x518]) = 1;
      sub_2711753BC(&a54, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      sub_27112D71C(&a16);
      if (a15 == 1 && a14 < 0)
      {
        operator delete(a10.__vftable);
      }

      MEMORY[0x2743BEBB0](&__p);
      __cxa_end_catch();
    }

    else
    {
      __cxa_begin_catch(a1);
      LOBYTE(STACK[0x4A0]) = 0;
      LOBYTE(STACK[0x518]) = 0;
      sub_2711753BC(&a54, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      __cxa_end_catch();
    }

    JUMPOUT(0x271172CB8);
  }

  _Unwind_Resume(a1);
}

void VZDataGetImage(uint64_t a1, void *a2)
{
  if (sub_271133B3C("VZDataGetImage", a1, a2) || *(a1 + 584))
  {
    return;
  }

  v32 = &v33;
  v33 = a2;
  sub_2712CC8BC((a1 + 32), &v21);
  v4 = v31;
  if (v31)
  {
    v5 = sub_2711546A0(&v21);
    v6 = sub_27115451C(v5);
    if (v6)
    {
      goto LABEL_29;
    }

    LOBYTE(v10) = 0;
    v20 = 0;
    sub_2711759B8(&v32, &v10);
    if (v20 != 1 || v19 != 1)
    {
      goto LABEL_28;
    }

    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    v6 = 0;
    if (v13 == 1 && v12 < 0)
    {
LABEL_27:
      operator delete(v11);
LABEL_28:
      v6 = 0;
    }
  }

  else
  {
    v10 = v21;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (v30 == 1)
    {
      sub_27112F6CC(&v11, &v22);
      v19 = 1;
    }

    v20 = 1;
    sub_2711759B8(&v32, &v10);
    if (v20 == 1 && v19 == 1)
    {
      if (v18 == 1)
      {
        if (v17 < 0)
        {
          operator delete(__p);
        }

        if (v15 < 0)
        {
          operator delete(v14);
        }
      }

      if (v13 == 1 && v12 < 0)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_29:
  if (v31 == 1)
  {
    v7 = v6;
    (*v21)(&v21);
  }

  else
  {
    if (v30 != 1)
    {
      goto LABEL_41;
    }

    if (v29 == 1)
    {
      if (v28 < 0)
      {
        v8 = v6;
        operator delete(v27);
        v6 = v8;
      }

      if (v26 < 0)
      {
        v9 = v6;
        operator delete(v25);
        v6 = v9;
      }
    }

    if (v24 != 1 || (v23 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    v7 = v6;
    operator delete(v22);
  }

  v6 = v7;
LABEL_41:
  if ((v4 & 1) == 0)
  {
    v6 = 0;
  }

  *(a1 + 584) = v6;
}

void sub_27117331C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::runtime_error __p, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_2711307D4(&a38);
  sub_271154B3C(v37 - 240);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a10, exception_ptr);
    a10.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a9 = std::logic_error::what(&a10);
    sub_27113604C(&__p, &a9);
    sub_271369D54(&__p, &a16);
    *(v37 - 240) = a16;
    sub_27184A2B4(v37 - 224, &a17);
    *(v37 - 120) = 1;
    sub_2711759B8((v37 - 64), v37 - 240);
    sub_2711307D4(v37 - 240);
    sub_27112D71C(&a16);
    if (a35 == 1 && a34 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a10);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v41 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v41);
    __cxa_begin_catch(a1);
    v42 = (a36 + 48);
    if (*(a36 + 71) < 0)
    {
      v42 = *v42;
    }

    a9 = v42;
    sub_27113604C(&a10, &a9);
    sub_27136A868(&a10, &a16);
    *(v37 - 240) = a16;
    sub_27184A2B4(v37 - 224, &a17);
    *(v37 - 120) = 1;
    sub_2711759B8((v37 - 64), v37 - 240);
    sub_2711307D4(v37 - 240);
    sub_27112D71C(&a16);
    if (a15 == 1 && a14 < 0)
    {
      operator delete(a10.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v37 - 240) = 0;
    *(v37 - 120) = 0;
    sub_2711759B8((v37 - 64), v37 - 240);
    sub_2711307D4(v37 - 240);
    __cxa_end_catch();
  }

  JUMPOUT(0x2711732FCLL);
}

char *VZImageCreateDefault(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a1;
  v5[1] = a2;
  return sub_271173570(sub_2712CB478, a4, 0, v5, a3);
}

char *sub_271173570(void (*a1)(__int128 *__return_ptr, void, uint64_t, uint64_t), uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v39 = &v40;
  v40 = a2;
  a1(&v28, a3, a4, a5);
  v6 = v38;
  if (v38)
  {
    v7 = sub_2711546A0(&v28);
    v5 = sub_27115451C(v7);
    if (v5)
    {
      goto LABEL_26;
    }

    v10[0] = 0;
    v18 = 0;
    sub_271175D20(&v39, v10);
    if (v18 != 1 || v17 != 1)
    {
      goto LABEL_25;
    }

    if (v16 == 1)
    {
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }
    }

    v5 = 0;
    if (v11[24] == 1 && (v11[23] & 0x80000000) != 0)
    {
      v8 = v11;
LABEL_24:
      operator delete(*v8);
LABEL_25:
      v5 = 0;
    }
  }

  else
  {
    v19 = v28;
    v8 = v20;
    v20[0] = 0;
    v26 = 0;
    if (v37 == 1)
    {
      sub_27112F6CC(v20, &v29);
      v26 = 1;
    }

    v27 = 1;
    sub_271175D20(&v39, &v19);
    if (v27 == 1 && v26 == 1)
    {
      if (v25 == 1)
      {
        if (v24 < 0)
        {
          operator delete(v23);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }
      }

      if (v20[24] == 1 && (v20[23] & 0x80000000) != 0)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_26:
  if (v38 == 1)
  {
    (*v28)(&v28);
  }

  else if (v37 == 1)
  {
    if (v36 == 1)
    {
      if (v35 < 0)
      {
        operator delete(v34);
      }

      if (v33 < 0)
      {
        operator delete(v32);
      }
    }

    if (v31 == 1 && v30 < 0)
    {
      operator delete(v29);
    }
  }

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  return v5;
}

void sub_2711737B0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, const char *a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, __int128 a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, std::logic_error a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2711307D4(&STACK[0x200]);
  sub_271154B3C(v66 - 232);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a55, exception_ptr);
    a55.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a32 = std::logic_error::what(&a55);
    sub_27113604C(&__p, &a32);
    sub_271369D54(&__p, v66 - 232);
    a16 = *v65;
    sub_27184A2B4(&a17, (v66 - 216));
    a30 = 1;
    sub_271175D20((v66 - 64), &a16);
    sub_2711307D4(&a16);
    sub_27112D71C(v66 - 232);
    if (a15 == 1 && a14 < 0)
    {
      operator delete(__p);
    }

    MEMORY[0x2743BE520](&a55);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v70 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&a55, v70);
    __cxa_begin_catch(a1);
    v71 = (a58 + 48);
    if (*(a58 + 71) < 0)
    {
      v71 = *v71;
    }

    a32 = v71;
    sub_27113604C(&a33, &a32);
    sub_27136A868(&a33, v66 - 232);
    a40 = *v65;
    sub_27184A2B4(&a41, (v66 - 216));
    a54 = 1;
    sub_271175D20((v66 - 64), &a40);
    sub_2711307D4(&a40);
    sub_27112D71C(v66 - 232);
    if (a39 == 1 && a38 < 0)
    {
      operator delete(a33);
    }

    MEMORY[0x2743BEBB0](&a55);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    LOBYTE(a60) = 0;
    a65 = 0;
    sub_271175D20((v66 - 64), &a60);
    sub_2711307D4(&a60);
    __cxa_end_catch();
  }

  JUMPOUT(0x271173790);
}

char *VZImageCreateUninitialized(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a1;
  v5[1] = a2;
  return sub_271173570(sub_2712CB488, a4, 0, v5, a3);
}

char *VZImageCreateCopy(int a1, int a2, uint64_t a3, char *a4, unsigned int a5, void *a6)
{
  v8 = a4;
  if (sub_271173EA8("VZImageCreateCopy", a4, a6))
  {
    return 0;
  }

  v16[0] = a1;
  v16[1] = a2;
  v39 = &v40;
  v40 = a6;
  sub_2712CB498(0, v16, a3, v8, a5, &v28, v12);
  v14 = v38;
  if (v38)
  {
    v15 = sub_2711546A0(&v28);
    v8 = sub_27115451C(v15);
    if (v8)
    {
      goto LABEL_29;
    }

    LOBYTE(v17) = 0;
    v27 = 0;
    sub_2711763D4(&v39, &v17);
    if (v27 != 1 || v26 != 1)
    {
      goto LABEL_28;
    }

    if (v25 == 1)
    {
      if (v24 < 0)
      {
        operator delete(__p);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }
    }

    v8 = 0;
    if (v20 == 1 && v19 < 0)
    {
LABEL_27:
      operator delete(v18);
LABEL_28:
      v8 = 0;
    }
  }

  else
  {
    v17 = v28;
    LOBYTE(v18) = 0;
    v26 = 0;
    if (v37 == 1)
    {
      sub_27112F6CC(&v18, &v29);
      v26 = 1;
    }

    v27 = 1;
    sub_2711763D4(&v39, &v17);
    if (v27 == 1 && v26 == 1)
    {
      if (v25 == 1)
      {
        if (v24 < 0)
        {
          operator delete(__p);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }
      }

      if (v20 == 1 && v19 < 0)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_29:
  if (v38 == 1)
  {
    (*v28)(&v28);
    if (v14)
    {
      return v8;
    }

    return 0;
  }

  if (v37 == 1)
  {
    if (v36 == 1)
    {
      if (v35 < 0)
      {
        operator delete(v34);
      }

      if (v33 < 0)
      {
        operator delete(v32);
      }
    }

    if (v31 == 1 && v30 < 0)
    {
      operator delete(v29);
    }
  }

  if ((v14 & 1) == 0)
  {
    return 0;
  }

  return v8;
}

void sub_271173C9C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const char *a11, std::logic_error a12, int a13, __int16 a14, char a15, char a16, char a17, __int128 a18, __int128 a19, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::runtime_error __p, int a33, __int16 a34, char a35, char a36, char a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_2711307D4(&a40);
  sub_271154B3C(v40 - 256);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a12, exception_ptr);
    a12.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a11 = std::logic_error::what(&a12);
    sub_27113604C(&__p, &a11);
    sub_271369D54(&__p, &a18);
    *(v39 + 128) = a18;
    sub_27184A2B4(v40 - 240, &a19);
    *(v40 - 136) = 1;
    sub_2711763D4((v40 - 80), v40 - 256);
    sub_2711307D4(v40 - 256);
    sub_27112D71C(&a18);
    if (a37 == 1 && a36 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a12);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v44 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v44);
    __cxa_begin_catch(a1);
    v45 = (a38 + 48);
    if (*(a38 + 71) < 0)
    {
      v45 = *v45;
    }

    a11 = v45;
    sub_27113604C(&a12, &a11);
    sub_27136A868(&a12, &a18);
    *(v39 + 128) = a18;
    sub_27184A2B4(v40 - 240, &a19);
    *(v40 - 136) = 1;
    sub_2711763D4((v40 - 80), v40 - 256);
    sub_2711307D4(v40 - 256);
    sub_27112D71C(&a18);
    if (a17 == 1 && a16 < 0)
    {
      operator delete(a12.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v40 - 256) = 0;
    *(v40 - 136) = 0;
    sub_2711763D4((v40 - 80), v40 - 256);
    sub_2711307D4(v40 - 256);
    __cxa_end_catch();
  }

  JUMPOUT(0x271173A64);
}

BOOL sub_271173EA8(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280877C10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877C10))
    {
      sub_2711761D0(&xmmword_280877BF8);
      __cxa_guard_release(&qword_280877C10);
    }

    if (byte_280877C0F < 0)
    {
      sub_271127178(v7, xmmword_280877BF8, *(&xmmword_280877BF8 + 1));
    }

    else
    {
      *v7 = xmmword_280877BF8;
      v8 = unk_280877C08;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_271174124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *VZImageCreateWithBytes(int a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, char *a7, void *a8)
{
  v13 = a3;
  if (sub_271173EA8("VZImageCreateWithBytes", a4, a8))
  {
    return 0;
  }

  v39 = &v40;
  v40 = a8;
  sub_2712CB4A8(v13, a4, a5, a6, a7, &v28);
  v15 = v38;
  if (v38)
  {
    v16 = sub_2711546A0(&v28);
    a7 = sub_27115451C(v16);
    if (a7)
    {
      goto LABEL_29;
    }

    LOBYTE(v17) = 0;
    v27 = 0;
    sub_271176A08(&v39, &v17);
    if (v27 != 1 || v26 != 1)
    {
      goto LABEL_28;
    }

    if (v25 == 1)
    {
      if (v24 < 0)
      {
        operator delete(__p);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }
    }

    a7 = 0;
    if (v20 == 1 && v19 < 0)
    {
LABEL_27:
      operator delete(v18);
LABEL_28:
      a7 = 0;
    }
  }

  else
  {
    v17 = v28;
    LOBYTE(v18) = 0;
    v26 = 0;
    if (v37 == 1)
    {
      sub_27112F6CC(&v18, &v29);
      v26 = 1;
    }

    v27 = 1;
    sub_271176A08(&v39, &v17);
    if (v27 == 1 && v26 == 1)
    {
      if (v25 == 1)
      {
        if (v24 < 0)
        {
          operator delete(__p);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }
      }

      if (v20 == 1 && v19 < 0)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_29:
  if (v38 == 1)
  {
    (*v28)(&v28);
    if (v15)
    {
      return a7;
    }

    return 0;
  }

  if (v37 == 1)
  {
    if (v36 == 1)
    {
      if (v35 < 0)
      {
        operator delete(v34);
      }

      if (v33 < 0)
      {
        operator delete(v32);
      }
    }

    if (v31 == 1 && v30 < 0)
    {
      operator delete(v29);
    }
  }

  if ((v15 & 1) == 0)
  {
    return 0;
  }

  return a7;
}

void sub_271174400(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const char *a11, std::logic_error a12, int a13, __int16 a14, char a15, char a16, char a17, __int128 a18, __int128 a19, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::runtime_error __p, int a33, __int16 a34, char a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, uint64_t _1A0)
{
  sub_2711307D4(&a40);
  sub_271154B3C(&a56);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a12, exception_ptr);
    a12.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a11 = std::logic_error::what(&a12);
    sub_27113604C(&__p, &a11);
    sub_271369D54(&__p, &a18);
    *(v65 + 128) = a18;
    sub_27184A2B4(&a58, &a19);
    a65 = 1;
    sub_271176A08((v66 - 96), &a56);
    sub_2711307D4(&a56);
    sub_27112D71C(&a18);
    if (a37 == 1 && a36 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a12);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v70 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v70);
    __cxa_begin_catch(a1);
    v71 = (a38 + 48);
    if (*(a38 + 71) < 0)
    {
      v71 = *v71;
    }

    a11 = v71;
    sub_27113604C(&a12, &a11);
    sub_27136A868(&a12, &a18);
    *(v65 + 128) = a18;
    sub_27184A2B4(&a58, &a19);
    a65 = 1;
    sub_271176A08((v66 - 96), &a56);
    sub_2711307D4(&a56);
    sub_27112D71C(&a18);
    if (a17 == 1 && a16 < 0)
    {
      operator delete(a12.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    LOBYTE(a56) = 0;
    a65 = 0;
    sub_271176A08((v66 - 96), &a56);
    sub_2711307D4(&a56);
    __cxa_end_catch();
  }

  JUMPOUT(0x2711741C0);
}

uint64_t VZImageGetFormat(uint64_t a1)
{
  if (sub_271152BD0("VZImageGetFormat", a1, 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(a1 + 64);
  }
}

uint64_t VZImageGetWidth(uint64_t a1)
{
  if (sub_271152BD0("VZImageGetWidth", a1, 0))
  {
    return 0;
  }

  else
  {
    return *(a1 + 40);
  }
}

uint64_t VZImageGetHeight(uint64_t a1)
{
  if (sub_271152BD0("VZImageGetHeight", a1, 0))
  {
    return 0;
  }

  else
  {
    return *(a1 + 44);
  }
}

uint64_t VZImageGetBytesPerRow(uint64_t a1)
{
  if (sub_271152BD0("VZImageGetBytesPerRow", a1, 0))
  {
    return 0;
  }

  else
  {
    return *(a1 + 48);
  }
}

uint64_t VZImageGetBaseAddress(uint64_t a1)
{
  v2 = sub_271152BD0("VZImageGetBaseAddress", a1, 0);
  result = 0;
  if (!v2)
  {
    if (*(a1 + 68) == 1 && *(a1 + 56))
    {
      v4 = *(a1 + 24);
      v5 = *(a1 + 32);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v6 = v4;
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
          v4 = v6;
        }
      }

      (*(*v4 + 88))(v4, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
    }

    return *(a1 + 56);
  }

  return result;
}

uint64_t VZImageGetBaseAddressMutable(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 124) == 1 && *(a1 + 112))
    {
      v1 = a1;
      v2 = *(a1 + 80);
      v3 = v1;
      v4 = *(v1 + 88);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = v2;
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
          v2 = v5;
        }
      }

      (*(*v2 + 88))(v2, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
      a1 = v3;
    }

    return *(a1 + 112);
  }

  else
  {
    if ((atomic_load_explicit(&qword_28087A398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A398))
    {
      sub_271177468();
      __cxa_guard_release(&qword_28087A398);
    }

    if (byte_28087A45F < 0)
    {
      sub_271127178(v7, xmmword_28087A448, *(&xmmword_28087A448 + 1));
    }

    else
    {
      *v7 = xmmword_28087A448;
      v8 = unk_28087A458;
    }

    v9 = 1;
    sub_27112D7CC("VZImageGetBaseAddressMutable", v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, 0);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }

    return 0;
  }
}

void sub_271174B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZImageGetByteSize(uint64_t a1)
{
  if (sub_271152BD0("VZImageGetByteSize", a1, 0))
  {
    return 0;
  }

  else
  {
    return sub_2712CB128((a1 + 8));
  }
}

uint64_t VZImageEqual(uint64_t a1, uint64_t a2)
{
  if (sub_271152BD0("VZImageEqual", a1, 0) || sub_271152BD0("VZImageEqual", a2, 0))
  {
    return 0;
  }

  return sub_2712CB250(a1 + 8, a2 + 8);
}

uint64_t sub_271174C60(uint64_t result)
{
  if (atomic_fetch_add((result + 168), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_271174C9C()
{
  if (atomic_load_explicit(&qword_28087A358, memory_order_acquire))
  {
    return qword_28087A350;
  }

  if (__cxa_guard_acquire(&qword_28087A358))
  {
    qword_28087A350 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A358);
  }

  return qword_28087A350;
}

_DWORD *sub_271174D00(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C300, 0);
  if (result)
  {
    if (*(a1 + 56) == *(result + 7))
    {
      if (*(a1 + 64) == result[16] && (*(a1 + 40) == result[10] ? (v4 = *(a1 + 44) == result[11]) : (v4 = 0), v4))
      {
        return (*(a1 + 48) == result[12]);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_271174DD0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877A70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877A70))
    {
      sub_2718519B4(qword_280877A58, "VZImage]", 7uLL);
      __cxa_guard_release(&qword_280877A70);
    }
  }

  v2 = a1;
  operator new();
}

void sub_27117527C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_280877A70);
  __cxa_begin_catch(a1);
  sub_271175C90();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_280877A58, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x2711751ECLL);
}

void sub_2711753BC(void ***a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4(qword_280877838, "VZData]", 6uLL);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_28087A360, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A360))
  {
    sub_271175754();
    __cxa_guard_release(&qword_28087A360);
  }

  if (byte_28087A3B7 < 0)
  {
    sub_271127178(&v21, xmmword_28087A3A0, *(&xmmword_28087A3A0 + 1));
  }

  else
  {
    v21 = xmmword_28087A3A0;
    v22 = unk_28087A3B0;
  }

  if ((atomic_load_explicit(&qword_280877830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877830))
  {
    sub_271135818();
  }

  if (byte_28087782F < 0)
  {
    sub_271127178(&v23, xmmword_280877818, *(&xmmword_280877818 + 1));
  }

  else
  {
    v23 = xmmword_280877818;
    v24 = unk_280877828;
  }

  sub_2711309E8(&v19, &v21, 2uLL);
  LOBYTE(v8) = 0;
  v18 = 0;
  if (*(a2 + 120) == 1)
  {
    v8 = *a2;
    LOBYTE(v9) = 0;
    v17 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v9, (a2 + 16));
      v17 = 1;
    }

    v18 = 1;
  }

  sub_27112E0C4(qword_280877838, &v19, &v8, **a1);
  if (v18 == 1 && v17 == 1)
  {
    if (v16 == 1)
    {
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }
    }

    if (v11 == 1 && v10 < 0)
    {
      operator delete(v9);
    }
  }

  v4 = v19;
  if (v19)
  {
    v5 = v20;
    v6 = v19;
    if (v20 != v19)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v19;
    }

    v20 = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      return;
    }

LABEL_36:
    operator delete(v21);
    return;
  }

  operator delete(v23);
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_36;
  }
}

void sub_2711756B0(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_271175754()
{
  *(&__p.__r_.__value_.__s + 23) = 7;
  strcpy(&__p, "VZImage");
  sub_27184BC8C(&v9, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 38;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087A3A0 = v7;
  unk_28087A3B0 = v8;
  return result;
}

void sub_271175978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711759B8(void ***a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A70))
  {
    sub_2718519B4(qword_280877A58, "VZImage]", 7uLL);
    __cxa_guard_release(&qword_280877A70);
  }

  if ((atomic_load_explicit(&qword_2808778D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778D0))
  {
    sub_271138414(&xmmword_2808778B8);
    __cxa_guard_release(&qword_2808778D0);
  }

  if (byte_2808778CF < 0)
  {
    sub_271127178(&v21, xmmword_2808778B8, *(&xmmword_2808778B8 + 1));
  }

  else
  {
    v21 = xmmword_2808778B8;
    v22 = unk_2808778C8;
  }

  sub_2711309E8(&v19, &v21, 1uLL);
  LOBYTE(v8) = 0;
  v18 = 0;
  if (*(a2 + 120) == 1)
  {
    v8 = *a2;
    LOBYTE(v9) = 0;
    v17 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v9, (a2 + 16));
      v17 = 1;
    }

    v18 = 1;
  }

  sub_27112E0C4(qword_280877A58, &v19, &v8, **a1);
  if (v18 == 1 && v17 == 1)
  {
    if (v16 == 1)
    {
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }
    }

    if (v11 == 1 && v10 < 0)
    {
      operator delete(v9);
    }
  }

  v4 = v19;
  if (v19)
  {
    v5 = v20;
    v6 = v19;
    if (v20 != v19)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v19;
    }

    v20 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }
}

void sub_271175C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112D66C(v9 + 16);
  sub_2711307D4(&a9);
  sub_27137F4D0((v10 - 96));
  if (*(v10 - 41) < 0)
  {
    operator delete(*(v10 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_271175C90()
{
  if ((atomic_load_explicit(&qword_280877A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A70))
  {
    sub_2718519B4(qword_280877A58, "VZImage]", 7uLL);

    __cxa_guard_release(&qword_280877A70);
  }
}

void sub_271175D20(void ***a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A70))
  {
    sub_2718519B4(qword_280877A58, "VZImage]", 7uLL);
    __cxa_guard_release(&qword_280877A70);
  }

  if ((atomic_load_explicit(&qword_28087A368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A368))
  {
    sub_2718519B4(&xmmword_28087A3B8, "cv3d::vl::visual_logger::BufferType]", 0x23uLL);
    __cxa_guard_release(&qword_28087A368);
  }

  if (byte_28087A3CF < 0)
  {
    sub_271127178(&v21, xmmword_28087A3B8, *(&xmmword_28087A3B8 + 1));
  }

  else
  {
    v21 = xmmword_28087A3B8;
    v22 = unk_28087A3C8;
  }

  if ((atomic_load_explicit(&qword_28087A370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A370))
  {
    sub_2718519B4(&xmmword_28087A3D0, "cv3d::esn::arr::SizeT<2, cv3d::esn::arr::SizeType::Shape, void>]", 0x3FuLL);
    __cxa_guard_release(&qword_28087A370);
  }

  if (byte_28087A3E7 < 0)
  {
    sub_271127178(&v23, xmmword_28087A3D0, *(&xmmword_28087A3D0 + 1));
  }

  else
  {
    v23 = xmmword_28087A3D0;
    v24 = unk_28087A3E0;
  }

  if ((atomic_load_explicit(&qword_28087A378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A378))
  {
    sub_2718519B4(&xmmword_28087A3E8, "cv3d::kit::img::Format]", 0x16uLL);
    __cxa_guard_release(&qword_28087A378);
  }

  if (byte_28087A3FF < 0)
  {
    sub_271127178(&v25, xmmword_28087A3E8, *(&xmmword_28087A3E8 + 1));
  }

  else
  {
    v25 = xmmword_28087A3E8;
    v26 = unk_28087A3F8;
  }

  sub_2711309E8(&v19, &v21, 3uLL);
  LOBYTE(v8) = 0;
  v18 = 0;
  if (*(a2 + 120) == 1)
  {
    v8 = *a2;
    LOBYTE(v9) = 0;
    v17 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v9, (a2 + 16));
      v17 = 1;
    }

    v18 = 1;
  }

  sub_27112E0C4(qword_280877A58, &v19, &v8, **a1);
  if (v18 == 1 && v17 == 1)
  {
    if (v16 == 1)
    {
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }
    }

    if (v11 == 1 && v10 < 0)
    {
      operator delete(v9);
    }
  }

  v4 = v19;
  if (v19)
  {
    v5 = v20;
    v6 = v19;
    if (v20 != v19)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v19;
    }

    v20 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
LABEL_38:
      if ((SHIBYTE(v22) & 0x80000000) == 0)
      {
        return;
      }

LABEL_42:
      operator delete(v21);
      return;
    }
  }

  else if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  operator delete(v23);
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_42;
  }
}

void sub_2711760D0(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_28087A378);
  while (1)
  {
    v4 = *(v1 - 1);
    v1 -= 3;
    if (v4 < 0)
    {
      operator delete(*v1);
    }

    if (v1 == (v2 - 112))
    {
      _Unwind_Resume(a1);
    }
  }
}

double sub_2711761D0@<D0>(uint64_t a1@<X8>)
{
  *(&v11.__r_.__value_.__s + 23) = 4;
  strcpy(&v11, "void");
  v2 = std::string::insert(&v11, 0, "const ", 6uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v10 = v2->__r_.__value_.__r.__words[2];
  v9 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v5 = &v9;
      if (v4 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v4 = *(&v9 + 1);
  v6 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v6 == *(&v9 + 1))
  {
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_8:
    operator new();
  }

  v5 = v9;
LABEL_10:
  *(v5 + v4) = 42;
  v7 = v4 + 1;
  if (SHIBYTE(v10) < 0)
  {
    *(&v9 + 1) = v7;
  }

  else
  {
    HIBYTE(v10) = v7 & 0x7F;
  }

  *(v5 + v7) = 0;
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  return result;
}

void sub_2711763A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711763D4(void ***a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A70))
  {
    sub_2718519B4(qword_280877A58, "VZImage]", 7uLL);
    __cxa_guard_release(&qword_280877A70);
  }

  if ((atomic_load_explicit(&qword_28087A368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A368))
  {
    sub_2718519B4(&xmmword_28087A3B8, "cv3d::vl::visual_logger::BufferType]", 0x23uLL);
    __cxa_guard_release(&qword_28087A368);
  }

  if (byte_28087A3CF < 0)
  {
    sub_271127178(v21, xmmword_28087A3B8, *(&xmmword_28087A3B8 + 1));
  }

  else
  {
    *v21 = xmmword_28087A3B8;
    v22 = unk_28087A3C8;
  }

  if ((atomic_load_explicit(&qword_28087A370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A370))
  {
    sub_2718519B4(&xmmword_28087A3D0, "cv3d::esn::arr::SizeT<2, cv3d::esn::arr::SizeType::Shape, void>]", 0x3FuLL);
    __cxa_guard_release(&qword_28087A370);
  }

  if (byte_28087A3E7 < 0)
  {
    sub_271127178(&v23, xmmword_28087A3D0, *(&xmmword_28087A3D0 + 1));
  }

  else
  {
    v23 = xmmword_28087A3D0;
    v24 = unk_28087A3E0;
  }

  if ((atomic_load_explicit(&qword_28087A378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A378))
  {
    sub_2718519B4(&xmmword_28087A3E8, "cv3d::kit::img::Format]", 0x16uLL);
    __cxa_guard_release(&qword_28087A378);
  }

  if (byte_28087A3FF < 0)
  {
    sub_271127178(&v25, xmmword_28087A3E8, *(&xmmword_28087A3E8 + 1));
  }

  else
  {
    v25 = xmmword_28087A3E8;
    v26 = unk_28087A3F8;
  }

  if ((atomic_load_explicit(&qword_2808778F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778F0))
  {
    sub_271138A14(&xmmword_2808778D8);
    __cxa_guard_release(&qword_2808778F0);
  }

  if (byte_2808778EF < 0)
  {
    sub_271127178(&v27, xmmword_2808778D8, *(&xmmword_2808778D8 + 1));
  }

  else
  {
    v27 = xmmword_2808778D8;
    v28 = unk_2808778E8;
  }

  if ((atomic_load_explicit(&qword_28087A380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A380))
  {
    *&xmmword_28087A400 = 0x263233746E6975;
    byte_28087A417 = 7;
    __cxa_guard_release(&qword_28087A380);
  }

  if (byte_28087A417 < 0)
  {
    sub_271127178(&v29, xmmword_28087A400, *(&xmmword_28087A400 + 1));
  }

  else
  {
    v29 = xmmword_28087A400;
    v30 = unk_28087A410;
  }

  sub_2711309E8(&v19, v21, 5uLL);
  LOBYTE(v8) = 0;
  v18 = 0;
  if (*(a2 + 120) == 1)
  {
    v8 = *a2;
    LOBYTE(v9) = 0;
    v17 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v9, (a2 + 16));
      v17 = 1;
    }

    v18 = 1;
  }

  sub_27112E0C4(qword_280877A58, &v19, &v8, **a1);
  if (v18 == 1 && v17 == 1)
  {
    if (v16 == 1)
    {
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }
    }

    if (v11 == 1 && v10 < 0)
    {
      operator delete(v9);
    }
  }

  v4 = v19;
  if (v19)
  {
    v5 = v20;
    v6 = v19;
    if (v20 != v19)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v19;
    }

    v20 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
LABEL_46:
      if ((SHIBYTE(v26) & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_52;
    }
  }

  else if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  operator delete(v27);
  if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
LABEL_47:
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_53;
  }

LABEL_52:
  operator delete(v25);
  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
LABEL_48:
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      return;
    }

LABEL_54:
    operator delete(v21[0]);
    return;
  }

LABEL_53:
  operator delete(v23);
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_54;
  }
}

void sub_2711768C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  __cxa_guard_abort(&qword_2808778F0);
  while (1)
  {
    v60 = *(v58 - 1);
    v58 -= 3;
    if (v60 < 0)
    {
      operator delete(*v58);
    }

    if (v58 == &a29)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_271176A08(void ***a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A70))
  {
    sub_2718519B4(qword_280877A58, "VZImage]", 7uLL);
    __cxa_guard_release(&qword_280877A70);
  }

  if ((atomic_load_explicit(&qword_28087A370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A370))
  {
    sub_2718519B4(&xmmword_28087A3D0, "cv3d::esn::arr::SizeT<2, cv3d::esn::arr::SizeType::Shape, void>]", 0x3FuLL);
    __cxa_guard_release(&qword_28087A370);
  }

  if (byte_28087A3E7 < 0)
  {
    sub_271127178(v21, xmmword_28087A3D0, *(&xmmword_28087A3D0 + 1));
  }

  else
  {
    *v21 = xmmword_28087A3D0;
    v22 = unk_28087A3E0;
  }

  if ((atomic_load_explicit(&qword_28087A378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A378))
  {
    sub_2718519B4(&xmmword_28087A3E8, "cv3d::kit::img::Format]", 0x16uLL);
    __cxa_guard_release(&qword_28087A378);
  }

  if (byte_28087A3FF < 0)
  {
    sub_271127178(&v23, xmmword_28087A3E8, *(&xmmword_28087A3E8 + 1));
  }

  else
  {
    v23 = xmmword_28087A3E8;
    v24 = unk_28087A3F8;
  }

  if ((atomic_load_explicit(&qword_2808778F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778F0))
  {
    sub_271138A14(&xmmword_2808778D8);
    __cxa_guard_release(&qword_2808778F0);
  }

  if (byte_2808778EF < 0)
  {
    sub_271127178(&v25, xmmword_2808778D8, *(&xmmword_2808778D8 + 1));
  }

  else
  {
    v25 = xmmword_2808778D8;
    v26 = unk_2808778E8;
  }

  if ((atomic_load_explicit(&qword_28087A380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A380))
  {
    *&xmmword_28087A400 = 0x263233746E6975;
    byte_28087A417 = 7;
    __cxa_guard_release(&qword_28087A380);
  }

  if (byte_28087A417 < 0)
  {
    sub_271127178(&v27, xmmword_28087A400, *(&xmmword_28087A400 + 1));
  }

  else
  {
    v27 = xmmword_28087A400;
    v28 = unk_28087A410;
  }

  if ((atomic_load_explicit(&qword_28087A388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A388))
  {
    sub_2711770F4();
  }

  if (byte_28087A42F < 0)
  {
    sub_271127178(&v29, xmmword_28087A418, *(&xmmword_28087A418 + 1));
  }

  else
  {
    v29 = xmmword_28087A418;
    v30 = unk_28087A428;
  }

  if ((atomic_load_explicit(&qword_28087A390, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A390))
  {
    *&xmmword_28087A430 = 0x262A64696F76;
    byte_28087A447 = 6;
    __cxa_guard_release(&qword_28087A390);
  }

  if (byte_28087A447 < 0)
  {
    sub_271127178(&v31, xmmword_28087A430, *(&xmmword_28087A430 + 1));
  }

  else
  {
    v31 = xmmword_28087A430;
    v32 = unk_28087A440;
  }

  sub_2711309E8(&v19, v21, 6uLL);
  LOBYTE(v8) = 0;
  v18 = 0;
  if (*(a2 + 120) == 1)
  {
    v8 = *a2;
    LOBYTE(v9) = 0;
    v17 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v9, (a2 + 16));
      v17 = 1;
    }

    v18 = 1;
  }

  sub_27112E0C4(qword_280877A58, &v19, &v8, **a1);
  if (v18 == 1 && v17 == 1)
  {
    if (v16 == 1)
    {
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }
    }

    if (v11 == 1 && v10 < 0)
    {
      operator delete(v9);
    }
  }

  v4 = v19;
  if (v19)
  {
    v5 = v20;
    v6 = v19;
    if (v20 != v19)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v19;
    }

    v20 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
LABEL_50:
      if ((SHIBYTE(v28) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_57;
    }
  }

  else if ((SHIBYTE(v30) & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

  operator delete(v29);
  if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
LABEL_51:
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_58;
  }

LABEL_57:
  operator delete(v27);
  if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
LABEL_52:
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_59;
  }

LABEL_58:
  operator delete(v25);
  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
LABEL_53:
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      return;
    }

LABEL_60:
    operator delete(v21[0]);
    return;
  }

LABEL_59:
  operator delete(v23);
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_60;
  }
}

void sub_271176F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  __cxa_guard_abort(&qword_28087A388);
  while (1)
  {
    v31 = *(v29 - 1);
    v29 -= 3;
    if (v31 < 0)
    {
      operator delete(*v29);
    }

    if (v29 == &a29)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_271177428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_271177468()
{
  *(&__p.__r_.__value_.__s + 23) = 7;
  strcpy(&__p, "VZImage");
  sub_27184BC8C(&v5, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v1 = &v5;
      if (v0 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v0 = *(&v5 + 1);
  v2 = (v6 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v2 == *(&v5 + 1))
  {
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_8:
    operator new();
  }

  v1 = v5;
LABEL_10:
  *(v1 + v0) = 42;
  v3 = v0 + 1;
  if (SHIBYTE(v6) < 0)
  {
    *(&v5 + 1) = v3;
  }

  else
  {
    HIBYTE(v6) = v3 & 0x7F;
  }

  *(v1 + v3) = 0;
  result = *&v5;
  xmmword_28087A448 = v5;
  unk_28087A458 = v6;
  return result;
}

void sub_27117763C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27117766C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_2711776E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_271177760(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711777EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27117787C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_2711778F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_271177970(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711779FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t VZLines2GetTypeID()
{
  if (atomic_load_explicit(&qword_28087A468, memory_order_acquire))
  {
    return qword_28087A460;
  }

  if (__cxa_guard_acquire(&qword_28087A468))
  {
    qword_28087A460 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A468);
  }

  return qword_28087A460;
}

uint64_t VZLines3GetTypeID()
{
  if (atomic_load_explicit(&qword_28087A478, memory_order_acquire))
  {
    return qword_28087A470;
  }

  if (__cxa_guard_acquire(&qword_28087A478))
  {
    qword_28087A470 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A478);
  }

  return qword_28087A470;
}

void **VZDataCreateWithLines2(void **a1, uint64_t a2, void *a3)
{
  v80 = *MEMORY[0x277D85DE8];
  if (!sub_27117854C("VZDataCreateWithLines2", a1, a3))
  {
    sub_27113347C(a2, &v18);
    v16 = &v17;
    v17 = a3;
    LOBYTE(v47) = 0;
    v79 = 0;
    if (v46 != 1)
    {
      goto LABEL_20;
    }

    v47 = v18;
    v48 = v19;
    LOBYTE(v49) = 0;
    v51 = 0;
    if (v22 == 1)
    {
      v49 = *v20;
      v50 = v21;
      v20[1] = 0;
      v21 = 0;
      v20[0] = 0;
      v51 = 1;
    }

    v52 = v23;
    v53 = v24;
    LOBYTE(v54) = 0;
    v56 = 0;
    if (v27 == 1)
    {
      v54 = v25;
      v55 = v26;
      v26 = 0;
      v25 = 0uLL;
      v56 = 1;
      LOBYTE(v57) = 0;
      v61 = 0;
      if (v30 != 1)
      {
LABEL_8:
        LOBYTE(v62[0]) = 0;
        v64 = 0;
        if (v33 != 1)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v57) = 0;
      v61 = 0;
      if (v30 != 1)
      {
        goto LABEL_8;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v58 = v29;
    v57 = *v28;
    v28[1] = 0;
    v29 = 0;
    v28[0] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v59 = _X0;
    v60 = 0;
    v61 = 1;
    LOBYTE(v62[0]) = 0;
    v64 = 0;
    if (v33 != 1)
    {
LABEL_9:
      LOBYTE(v65) = 0;
      v78 = 0;
      if (v45 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

LABEL_13:
    *v62 = *v31;
    v63 = v32;
    v32 = 0;
    v31[1] = 0;
    v31[0] = 0;
    v64 = 1;
    LOBYTE(v65) = 0;
    v78 = 0;
    if (v45 != 1)
    {
LABEL_19:
      v79 = 1;
LABEL_20:
      sub_271341118();
    }

LABEL_14:
    LOBYTE(v65) = 0;
    v67 = 0;
    if (v36 == 1)
    {
      v65 = v34;
      v66 = v35;
      v35 = 0;
      v34 = 0uLL;
      v67 = 1;
      LOBYTE(v68) = 0;
      v72 = 0;
      if (v39 != 1)
      {
LABEL_16:
        LOBYTE(__p) = 0;
        v75 = 0;
        if (v42 != 1)
        {
LABEL_18:
          v76 = v43;
          v77 = v44;
          v78 = 1;
          goto LABEL_19;
        }

LABEL_17:
        __p = *v40;
        v74 = v41;
        v41 = 0;
        v40[0] = 0;
        v40[1] = 0;
        v75 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v68) = 0;
      v72 = 0;
      if (v39 != 1)
      {
        goto LABEL_16;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v68 = *v37;
    v69 = v38;
    v38 = 0;
    v37[0] = 0;
    v37[1] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    v70 = _X0;
    v71 = 0;
    v72 = 1;
    LOBYTE(__p) = 0;
    v75 = 0;
    if (v42 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  return 0;
}

void sub_271178314(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::runtime_error __p, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  if (a2)
  {
    sub_2711307D4(&a38);
    sub_271137BDC(&STACK[0x4A0]);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::logic_error::logic_error(&a10, exception_ptr);
      a10.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(a1);
      a9 = std::logic_error::what(&a10);
      sub_27113604C(&__p, &a9);
      sub_271369D54(&__p, &a16);
      *&STACK[0x4A0] = a16;
      sub_27184A2B4(&STACK[0x4B0], &a17);
      LOBYTE(STACK[0x518]) = 1;
      sub_27117BD10(&a54, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      sub_27112D71C(&a16);
      if (a35 == 1 && a34 < 0)
      {
        operator delete(__p.__vftable);
      }

      MEMORY[0x2743BE520](&a10);
      __cxa_end_catch();
    }

    else if (a2 == 2)
    {
      v56 = __cxa_get_exception_ptr(a1);
      sub_271135FD0(&__p, v56);
      __cxa_begin_catch(a1);
      v57 = (a36 + 48);
      if (*(a36 + 71) < 0)
      {
        v57 = *v57;
      }

      a9 = v57;
      sub_27113604C(&a10, &a9);
      sub_27136A868(&a10, &a16);
      *&STACK[0x4A0] = a16;
      sub_27184A2B4(&STACK[0x4B0], &a17);
      LOBYTE(STACK[0x518]) = 1;
      sub_27117BD10(&a54, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      sub_27112D71C(&a16);
      if (a15 == 1 && a14 < 0)
      {
        operator delete(a10.__vftable);
      }

      MEMORY[0x2743BEBB0](&__p);
      __cxa_end_catch();
    }

    else
    {
      __cxa_begin_catch(a1);
      LOBYTE(STACK[0x4A0]) = 0;
      LOBYTE(STACK[0x518]) = 0;
      sub_27117BD10(&a54, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      __cxa_end_catch();
    }

    JUMPOUT(0x271178184);
  }

  _Unwind_Resume(a1);
}

BOOL sub_27117854C(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087A480, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A480))
    {
      sub_27117BAB0();
      __cxa_guard_release(&qword_28087A480);
    }

    if (byte_28087A4C7 < 0)
    {
      sub_271127178(v7, xmmword_28087A4B0, *(&xmmword_28087A4B0 + 1));
    }

    else
    {
      *v7 = xmmword_28087A4B0;
      v8 = unk_28087A4C0;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_2711787BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void **VZDataCreateWithLines3(void **a1, uint64_t a2, void *a3)
{
  v80 = *MEMORY[0x277D85DE8];
  if (!sub_2711791F4("VZDataCreateWithLines3", a1, a3))
  {
    sub_27113347C(a2, &v18);
    v16 = &v17;
    v17 = a3;
    LOBYTE(v47) = 0;
    v79 = 0;
    if (v46 != 1)
    {
      goto LABEL_20;
    }

    v47 = v18;
    v48 = v19;
    LOBYTE(v49) = 0;
    v51 = 0;
    if (v22 == 1)
    {
      v49 = *v20;
      v50 = v21;
      v20[1] = 0;
      v21 = 0;
      v20[0] = 0;
      v51 = 1;
    }

    v52 = v23;
    v53 = v24;
    LOBYTE(v54) = 0;
    v56 = 0;
    if (v27 == 1)
    {
      v54 = v25;
      v55 = v26;
      v26 = 0;
      v25 = 0uLL;
      v56 = 1;
      LOBYTE(v57) = 0;
      v61 = 0;
      if (v30 != 1)
      {
LABEL_8:
        LOBYTE(v62[0]) = 0;
        v64 = 0;
        if (v33 != 1)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v57) = 0;
      v61 = 0;
      if (v30 != 1)
      {
        goto LABEL_8;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v58 = v29;
    v57 = *v28;
    v28[1] = 0;
    v29 = 0;
    v28[0] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v59 = _X0;
    v60 = 0;
    v61 = 1;
    LOBYTE(v62[0]) = 0;
    v64 = 0;
    if (v33 != 1)
    {
LABEL_9:
      LOBYTE(v65) = 0;
      v78 = 0;
      if (v45 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

LABEL_13:
    *v62 = *v31;
    v63 = v32;
    v32 = 0;
    v31[1] = 0;
    v31[0] = 0;
    v64 = 1;
    LOBYTE(v65) = 0;
    v78 = 0;
    if (v45 != 1)
    {
LABEL_19:
      v79 = 1;
LABEL_20:
      sub_271341DD8();
    }

LABEL_14:
    LOBYTE(v65) = 0;
    v67 = 0;
    if (v36 == 1)
    {
      v65 = v34;
      v66 = v35;
      v35 = 0;
      v34 = 0uLL;
      v67 = 1;
      LOBYTE(v68) = 0;
      v72 = 0;
      if (v39 != 1)
      {
LABEL_16:
        LOBYTE(__p) = 0;
        v75 = 0;
        if (v42 != 1)
        {
LABEL_18:
          v76 = v43;
          v77 = v44;
          v78 = 1;
          goto LABEL_19;
        }

LABEL_17:
        __p = *v40;
        v74 = v41;
        v41 = 0;
        v40[0] = 0;
        v40[1] = 0;
        v75 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v68) = 0;
      v72 = 0;
      if (v39 != 1)
      {
        goto LABEL_16;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v68 = *v37;
    v69 = v38;
    v38 = 0;
    v37[0] = 0;
    v37[1] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    v70 = _X0;
    v71 = 0;
    v72 = 1;
    LOBYTE(__p) = 0;
    v75 = 0;
    if (v42 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  return 0;
}

void sub_271178FBC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::runtime_error __p, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  if (a2)
  {
    sub_2711307D4(&a38);
    sub_271137BDC(&STACK[0x4A0]);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::logic_error::logic_error(&a10, exception_ptr);
      a10.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(a1);
      a9 = std::logic_error::what(&a10);
      sub_27113604C(&__p, &a9);
      sub_271369D54(&__p, &a16);
      *&STACK[0x4A0] = a16;
      sub_27184A2B4(&STACK[0x4B0], &a17);
      LOBYTE(STACK[0x518]) = 1;
      sub_27117C568(&a54, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      sub_27112D71C(&a16);
      if (a35 == 1 && a34 < 0)
      {
        operator delete(__p.__vftable);
      }

      MEMORY[0x2743BE520](&a10);
      __cxa_end_catch();
    }

    else if (a2 == 2)
    {
      v56 = __cxa_get_exception_ptr(a1);
      sub_271135FD0(&__p, v56);
      __cxa_begin_catch(a1);
      v57 = (a36 + 48);
      if (*(a36 + 71) < 0)
      {
        v57 = *v57;
      }

      a9 = v57;
      sub_27113604C(&a10, &a9);
      sub_27136A868(&a10, &a16);
      *&STACK[0x4A0] = a16;
      sub_27184A2B4(&STACK[0x4B0], &a17);
      LOBYTE(STACK[0x518]) = 1;
      sub_27117C568(&a54, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      sub_27112D71C(&a16);
      if (a15 == 1 && a14 < 0)
      {
        operator delete(a10.__vftable);
      }

      MEMORY[0x2743BEBB0](&__p);
      __cxa_end_catch();
    }

    else
    {
      __cxa_begin_catch(a1);
      LOBYTE(STACK[0x4A0]) = 0;
      LOBYTE(STACK[0x518]) = 0;
      sub_27117C568(&a54, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      __cxa_end_catch();
    }

    JUMPOUT(0x271178E2CLL);
  }

  _Unwind_Resume(a1);
}

BOOL sub_2711791F4(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087A490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A490))
    {
      sub_27117C308();
      __cxa_guard_release(&qword_28087A490);
    }

    if (byte_28087A4F7 < 0)
    {
      sub_271127178(v7, xmmword_28087A4E0, *(&xmmword_28087A4E0 + 1));
    }

    else
    {
      *v7 = xmmword_28087A4E0;
      v8 = unk_28087A4F0;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_271179464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VZDataGetLines2(uint64_t a1, void *a2)
{
  if (!sub_271133B3C("VZDataGetLines2", a1, a2) && !*(a1 + 584))
  {
    sub_271342B40(a1 + 32);
  }
}

void sub_2711797D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::runtime_error __p, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_2711307D4(&a38);
  sub_27113827C(v37 - 192);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a10, exception_ptr);
    a10.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a9 = std::logic_error::what(&a10);
    sub_27113604C(&__p, &a9);
    sub_271369D54(&__p, &a16);
    *(v37 - 192) = a16;
    sub_27184A2B4(v37 - 176, &a17);
    *(v37 - 72) = 1;
    sub_27117CB60((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    sub_27112D71C(&a16);
    if (a35 == 1 && a34 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a10);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v41 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v41);
    __cxa_begin_catch(a1);
    v42 = (a36 + 48);
    if (*(a36 + 71) < 0)
    {
      v42 = *v42;
    }

    a9 = v42;
    sub_27113604C(&a10, &a9);
    sub_27136A868(&a10, &a16);
    *(v37 - 192) = a16;
    sub_27184A2B4(v37 - 176, &a17);
    *(v37 - 72) = 1;
    sub_27117CB60((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    sub_27112D71C(&a16);
    if (a15 == 1 && a14 < 0)
    {
      operator delete(a10.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v37 - 192) = 0;
    *(v37 - 72) = 0;
    sub_27117CB60((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x2711797B0);
}

void VZDataGetLines3(uint64_t a1, void *a2)
{
  if (!sub_271133B3C("VZDataGetLines3", a1, a2) && !*(a1 + 584))
  {
    sub_271344104(a1 + 32);
  }
}

void sub_271179D0C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::runtime_error __p, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_2711307D4(&a38);
  sub_27113827C(v37 - 192);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a10, exception_ptr);
    a10.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a9 = std::logic_error::what(&a10);
    sub_27113604C(&__p, &a9);
    sub_271369D54(&__p, &a16);
    *(v37 - 192) = a16;
    sub_27184A2B4(v37 - 176, &a17);
    *(v37 - 72) = 1;
    sub_27117CF84((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    sub_27112D71C(&a16);
    if (a35 == 1 && a34 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a10);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v41 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v41);
    __cxa_begin_catch(a1);
    v42 = (a36 + 48);
    if (*(a36 + 71) < 0)
    {
      v42 = *v42;
    }

    a9 = v42;
    sub_27113604C(&a10, &a9);
    sub_27136A868(&a10, &a16);
    *(v37 - 192) = a16;
    sub_27184A2B4(v37 - 176, &a17);
    *(v37 - 72) = 1;
    sub_27117CF84((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    sub_27112D71C(&a16);
    if (a15 == 1 && a14 < 0)
    {
      operator delete(a10.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v37 - 192) = 0;
    *(v37 - 72) = 0;
    sub_27117CF84((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x271179CECLL);
}

_OWORD *VZLines2Create(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v31 = &v32;
  v32 = a4;
  sub_27133F958(a1, a2, a3, &v20);
  v5 = v30;
  if ((v30 & 1) == 0)
  {
    v9 = v20;
    LOBYTE(v10) = 0;
    v18 = 0;
    if (v29 == 1)
    {
      sub_27112F6CC(&v10, &v21);
      v18 = 1;
    }

    v19 = 1;
    sub_27117D3A8(&v31, &v9);
    if (v19 == 1 && v18 == 1)
    {
      if (v17 == 1)
      {
        if (v16 < 0)
        {
          operator delete(__p);
        }

        if (v14 < 0)
        {
          operator delete(v13);
        }
      }

      if (v12 == 1 && v11 < 0)
      {
        operator delete(v10);
        if (v30 == 1)
        {
          goto LABEL_31;
        }

LABEL_35:
        if (v29 == 1)
        {
          if (v28 == 1)
          {
            if (v27 < 0)
            {
              operator delete(v26);
            }

            if (v25 < 0)
            {
              operator delete(v24);
            }
          }

          if (v23 == 1 && v22 < 0)
          {
            operator delete(v21);
          }
        }

        goto LABEL_44;
      }
    }

LABEL_30:
    if (v30 != 1)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  sub_27117CE38(&v20);
  v6 = operator new(0x28uLL, MEMORY[0x277D826F0]);
  if (!v6)
  {
    LOBYTE(v9) = 0;
    v19 = 0;
    sub_27117D3A8(&v31, &v9);
    if (v19 == 1)
    {
      if (v18 != 1)
      {
        v4 = 0;
        if (v30 != 1)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }

      if (v17 == 1)
      {
        if (v16 < 0)
        {
          operator delete(__p);
        }

        if (v14 < 0)
        {
          operator delete(v13);
        }
      }

      v4 = 0;
      if (v12 == 1 && v11 < 0)
      {
        operator delete(v10);
        v4 = 0;
        if (v30 == 1)
        {
          goto LABEL_31;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_30;
  }

  v4 = v6;
  v6[1] = v20;
  v20 = 0uLL;
  *(v6 + 8) = 1;
  *v6 = &unk_288118FD8;
  *(v6 + 1) = &unk_288119028;
  if (v30 != 1)
  {
    goto LABEL_35;
  }

LABEL_31:
  v7 = *(&v20 + 1);
  if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_44:
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  return v4;
}

void sub_27117A1F8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::runtime_error __p, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_2711307D4(&a38);
  sub_27113827C(v37 - 176);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a10, exception_ptr);
    a10.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a9 = std::logic_error::what(&a10);
    sub_27113604C(&__p, &a9);
    sub_271369D54(&__p, &a16);
    *(v37 - 176) = a16;
    sub_27184A2B4(v37 - 160, &a17);
    *(v37 - 56) = 1;
    sub_27117D3A8((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    sub_27112D71C(&a16);
    if (a35 == 1 && a34 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a10);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v41 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v41);
    __cxa_begin_catch(a1);
    v42 = (a36 + 48);
    if (*(a36 + 71) < 0)
    {
      v42 = *v42;
    }

    a9 = v42;
    sub_27113604C(&a10, &a9);
    sub_27136A868(&a10, &a16);
    *(v37 - 176) = a16;
    sub_27184A2B4(v37 - 160, &a17);
    *(v37 - 56) = 1;
    sub_27117D3A8((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    sub_27112D71C(&a16);
    if (a15 == 1 && a14 < 0)
    {
      operator delete(a10.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v37 - 176) = 0;
    *(v37 - 56) = 0;
    sub_27117D3A8((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    __cxa_end_catch();
  }

  JUMPOUT(0x27117A1DCLL);
}

_OWORD *VZLines3Create(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v31 = &v32;
  v32 = a4;
  sub_2713405D4(a1, a2, a3, &v20);
  v5 = v30;
  if ((v30 & 1) == 0)
  {
    v9 = v20;
    LOBYTE(v10) = 0;
    v18 = 0;
    if (v29 == 1)
    {
      sub_27112F6CC(&v10, &v21);
      v18 = 1;
    }

    v19 = 1;
    sub_27117D848(&v31, &v9);
    if (v19 == 1 && v18 == 1)
    {
      if (v17 == 1)
      {
        if (v16 < 0)
        {
          operator delete(__p);
        }

        if (v14 < 0)
        {
          operator delete(v13);
        }
      }

      if (v12 == 1 && v11 < 0)
      {
        operator delete(v10);
        if (v30 == 1)
        {
          goto LABEL_31;
        }

LABEL_35:
        if (v29 == 1)
        {
          if (v28 == 1)
          {
            if (v27 < 0)
            {
              operator delete(v26);
            }

            if (v25 < 0)
            {
              operator delete(v24);
            }
          }

          if (v23 == 1 && v22 < 0)
          {
            operator delete(v21);
          }
        }

        goto LABEL_44;
      }
    }

LABEL_30:
    if (v30 != 1)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  sub_27117D25C(&v20);
  v6 = operator new(0x28uLL, MEMORY[0x277D826F0]);
  if (!v6)
  {
    LOBYTE(v9) = 0;
    v19 = 0;
    sub_27117D848(&v31, &v9);
    if (v19 == 1)
    {
      if (v18 != 1)
      {
        v4 = 0;
        if (v30 != 1)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }

      if (v17 == 1)
      {
        if (v16 < 0)
        {
          operator delete(__p);
        }

        if (v14 < 0)
        {
          operator delete(v13);
        }
      }

      v4 = 0;
      if (v12 == 1 && v11 < 0)
      {
        operator delete(v10);
        v4 = 0;
        if (v30 == 1)
        {
          goto LABEL_31;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_30;
  }

  v4 = v6;
  v6[1] = v20;
  v20 = 0uLL;
  *(v6 + 8) = 1;
  *v6 = &unk_288118F68;
  *(v6 + 1) = &unk_288118FB8;
  if (v30 != 1)
  {
    goto LABEL_35;
  }

LABEL_31:
  v7 = *(&v20 + 1);
  if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_44:
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  return v4;
}

void sub_27117A6E4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::runtime_error __p, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_2711307D4(&a38);
  sub_27113827C(v37 - 176);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a10, exception_ptr);
    a10.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a9 = std::logic_error::what(&a10);
    sub_27113604C(&__p, &a9);
    sub_271369D54(&__p, &a16);
    *(v37 - 176) = a16;
    sub_27184A2B4(v37 - 160, &a17);
    *(v37 - 56) = 1;
    sub_27117D848((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    sub_27112D71C(&a16);
    if (a35 == 1 && a34 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a10);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v41 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v41);
    __cxa_begin_catch(a1);
    v42 = (a36 + 48);
    if (*(a36 + 71) < 0)
    {
      v42 = *v42;
    }

    a9 = v42;
    sub_27113604C(&a10, &a9);
    sub_27136A868(&a10, &a16);
    *(v37 - 176) = a16;
    sub_27184A2B4(v37 - 160, &a17);
    *(v37 - 56) = 1;
    sub_27117D848((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    sub_27112D71C(&a16);
    if (a15 == 1 && a14 < 0)
    {
      operator delete(a10.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v37 - 176) = 0;
    *(v37 - 56) = 0;
    sub_27117D848((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    __cxa_end_catch();
  }

  JUMPOUT(0x27117A6C8);
}

uint64_t VZLines2GetBytePtr(uint64_t a1)
{
  v2 = sub_27117854C("VZLines2GetBytePtr", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(**(a1 + 16) + 40);
  }

  return result;
}

uint64_t VZLines3GetBytePtr(uint64_t a1)
{
  v2 = sub_2711791F4("VZLines3GetBytePtr", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(**(a1 + 16) + 40);
  }

  return result;
}

uint64_t VZLines2GetCount(uint64_t a1)
{
  v2 = sub_27117854C("VZLines2GetCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(**(a1 + 16) + 56) >> 2;
  }

  return result;
}

unint64_t VZLines3GetCount(uint64_t a1)
{
  v2 = sub_2711791F4("VZLines3GetCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(**(a1 + 16) + 56) / 6uLL;
  }

  return result;
}

uint64_t VZLines2GetByteCount(uint64_t a1)
{
  v2 = sub_27117854C("VZLines2GetByteCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(**(a1 + 16) + 48);
  }

  return result;
}

uint64_t VZLines3GetByteCount(uint64_t a1)
{
  v2 = sub_2711791F4("VZLines3GetByteCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(**(a1 + 16) + 48);
  }

  return result;
}

uint64_t VZLines2GetValueType(uint64_t a1)
{
  if (sub_27117854C("VZLines2GetValueType", a1, 0))
  {
    return 255;
  }

  else
  {
    return ***(a1 + 16);
  }
}

uint64_t VZLines3GetValueType(uint64_t a1)
{
  if (sub_2711791F4("VZLines3GetValueType", a1, 0))
  {
    return 255;
  }

  else
  {
    return ***(a1 + 16);
  }
}

uint64_t sub_27117AB88(uint64_t result)
{
  if (atomic_fetch_add((result + 32), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_27117ABC4()
{
  if (atomic_load_explicit(&qword_28087A468, memory_order_acquire))
  {
    return qword_28087A460;
  }

  if (__cxa_guard_acquire(&qword_28087A468))
  {
    qword_28087A460 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A468);
  }

  return qword_28087A460;
}

void **sub_27117AC28(uint64_t a1, void *lpsrc, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C258, 0);
  if (result)
  {
    v17 = result[2];
    v18 = **(a1 + 16);
    v19 = *v18;
    v20 = *v17;
    if (v19 == *v20)
    {
      v21[0] = &v22;
      v21[1] = v18;
      v21[2] = v20;
      return sub_27175A954(v19, v21);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_27117AD28(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087A4A0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087A4A0))
    {
      sub_2718519B4(qword_28087A510, "VZLines2]", 8uLL);
      __cxa_guard_release(&qword_28087A4A0);
    }
  }

  v2 = a1;
  operator new();
}

void sub_27117B1D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087A4A0);
  __cxa_begin_catch(a1);
  sub_27117CEF4();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087A510, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x27117B144);
}

uint64_t sub_27117B324(uint64_t result)
{
  if (atomic_fetch_add((result + 32), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_27117B360()
{
  if (atomic_load_explicit(&qword_28087A478, memory_order_acquire))
  {
    return qword_28087A470;
  }

  if (__cxa_guard_acquire(&qword_28087A478))
  {
    qword_28087A470 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A478);
  }

  return qword_28087A470;
}

void **sub_27117B3C4(uint64_t a1, void *lpsrc, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C220, 0);
  if (result)
  {
    v17 = result[2];
    v18 = **(a1 + 16);
    v19 = *v18;
    v20 = *v17;
    if (v19 == *v20)
    {
      v21[0] = &v22;
      v21[1] = v18;
      v21[2] = v20;
      return sub_27175A954(v19, v21);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_27117B4C4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087A4A8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087A4A8))
    {
      sub_2718519B4(qword_28087A528, "VZLines3]", 8uLL);
      __cxa_guard_release(&qword_28087A4A8);
    }
  }

  v2 = a1;
  operator new();
}

void sub_27117B970(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087A4A8);
  __cxa_begin_catch(a1);
  sub_27117D318();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087A528, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x27117B8E0);
}

double sub_27117BAB0()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZLines2");
  sub_27184BC8C(&v9, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087A4B0 = v7;
  unk_28087A4C0 = v8;
  return result;
}

void sub_27117BCD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27117BD10(void ***a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4(qword_280877838, "VZData]", 6uLL);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_28087A488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A488))
  {
    sub_27117C0A8();
    __cxa_guard_release(&qword_28087A488);
  }

  if (byte_28087A4DF < 0)
  {
    sub_271127178(&v21, xmmword_28087A4C8, *(&xmmword_28087A4C8 + 1));
  }

  else
  {
    v21 = xmmword_28087A4C8;
    v22 = unk_28087A4D8;
  }

  if ((atomic_load_explicit(&qword_280877830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877830))
  {
    sub_271135818();
  }

  if (byte_28087782F < 0)
  {
    sub_271127178(&v23, xmmword_280877818, *(&xmmword_280877818 + 1));
  }

  else
  {
    v23 = xmmword_280877818;
    v24 = unk_280877828;
  }

  sub_2711309E8(&v19, &v21, 2uLL);
  LOBYTE(v8) = 0;
  v18 = 0;
  if (*(a2 + 120) == 1)
  {
    v8 = *a2;
    LOBYTE(v9) = 0;
    v17 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v9, (a2 + 16));
      v17 = 1;
    }

    v18 = 1;
  }

  sub_27112E0C4(qword_280877838, &v19, &v8, **a1);
  if (v18 == 1 && v17 == 1)
  {
    if (v16 == 1)
    {
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }
    }

    if (v11 == 1 && v10 < 0)
    {
      operator delete(v9);
    }
  }

  v4 = v19;
  if (v19)
  {
    v5 = v20;
    v6 = v19;
    if (v20 != v19)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v19;
    }

    v20 = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      return;
    }

LABEL_36:
    operator delete(v21);
    return;
  }

  operator delete(v23);
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_36;
  }
}

void sub_27117C004(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_27117C0A8()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZLines2");
  sub_27184BC8C(&v9, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 38;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087A4C8 = v7;
  unk_28087A4D8 = v8;
  return result;
}

void sub_27117C2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_27117C308()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZLines3");
  sub_27184BC8C(&v9, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087A4E0 = v7;
  unk_28087A4F0 = v8;
  return result;
}

void sub_27117C528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27117C568(void ***a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4(qword_280877838, "VZData]", 6uLL);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_28087A498, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A498))
  {
    sub_27117C900();
    __cxa_guard_release(&qword_28087A498);
  }

  if (byte_28087A50F < 0)
  {
    sub_271127178(&v21, xmmword_28087A4F8, *(&xmmword_28087A4F8 + 1));
  }

  else
  {
    v21 = xmmword_28087A4F8;
    v22 = unk_28087A508;
  }

  if ((atomic_load_explicit(&qword_280877830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877830))
  {
    sub_271135818();
  }

  if (byte_28087782F < 0)
  {
    sub_271127178(&v23, xmmword_280877818, *(&xmmword_280877818 + 1));
  }

  else
  {
    v23 = xmmword_280877818;
    v24 = unk_280877828;
  }

  sub_2711309E8(&v19, &v21, 2uLL);
  LOBYTE(v8) = 0;
  v18 = 0;
  if (*(a2 + 120) == 1)
  {
    v8 = *a2;
    LOBYTE(v9) = 0;
    v17 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v9, (a2 + 16));
      v17 = 1;
    }

    v18 = 1;
  }

  sub_27112E0C4(qword_280877838, &v19, &v8, **a1);
  if (v18 == 1 && v17 == 1)
  {
    if (v16 == 1)
    {
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }
    }

    if (v11 == 1 && v10 < 0)
    {
      operator delete(v9);
    }
  }

  v4 = v19;
  if (v19)
  {
    v5 = v20;
    v6 = v19;
    if (v20 != v19)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v19;
    }

    v20 = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      return;
    }

LABEL_36:
    operator delete(v21);
    return;
  }

  operator delete(v23);
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_36;
  }
}

void sub_27117C85C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_27117C900()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZLines3");
  sub_27184BC8C(&v9, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 38;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087A4F8 = v7;
  unk_28087A508 = v8;
  return result;
}

void sub_27117CB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27117CB60(void ***a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A4A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A4A0))
  {
    sub_2718519B4(qword_28087A510, "VZLines2]", 8uLL);
    __cxa_guard_release(&qword_28087A4A0);
  }

  if ((atomic_load_explicit(&qword_2808778D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778D0))
  {
    sub_271138414(&xmmword_2808778B8);
    __cxa_guard_release(&qword_2808778D0);
  }

  if (byte_2808778CF < 0)
  {
    sub_271127178(&v21, xmmword_2808778B8, *(&xmmword_2808778B8 + 1));
  }

  else
  {
    v21 = xmmword_2808778B8;
    v22 = unk_2808778C8;
  }

  sub_2711309E8(&v19, &v21, 1uLL);
  LOBYTE(v8) = 0;
  v18 = 0;
  if (*(a2 + 120) == 1)
  {
    v8 = *a2;
    LOBYTE(v9) = 0;
    v17 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v9, (a2 + 16));
      v17 = 1;
    }

    v18 = 1;
  }

  sub_27112E0C4(qword_28087A510, &v19, &v8, **a1);
  if (v18 == 1 && v17 == 1)
  {
    if (v16 == 1)
    {
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }
    }

    if (v11 == 1 && v10 < 0)
    {
      operator delete(v9);
    }
  }

  v4 = v19;
  if (v19)
  {
    v5 = v20;
    v6 = v19;
    if (v20 != v19)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v19;
    }

    v20 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }
}

void sub_27117CDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112D66C(v9 + 16);
  sub_2711307D4(&a9);
  sub_27137F4D0((v10 - 96));
  if (*(v10 - 41) < 0)
  {
    operator delete(*(v10 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27117CE38(uint64_t result)
{
  if ((*(result + 120) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x80uLL);
    sub_2711365E8(v3, v1);
    sub_271137B44(exception, v3);
    __cxa_throw(exception, &unk_28811C2F0, sub_271130150);
  }

  return result;
}

void sub_27117CEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_27117CEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D71C(va);
  __cxa_free_exception(v3);
  _Unwind_Resume(a1);
}

void sub_27117CEF4()
{
  if ((atomic_load_explicit(&qword_28087A4A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A4A0))
  {
    sub_2718519B4(qword_28087A510, "VZLines2]", 8uLL);

    __cxa_guard_release(&qword_28087A4A0);
  }
}

void sub_27117CF84(void ***a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A4A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A4A8))
  {
    sub_2718519B4(qword_28087A528, "VZLines3]", 8uLL);
    __cxa_guard_release(&qword_28087A4A8);
  }

  if ((atomic_load_explicit(&qword_2808778D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778D0))
  {
    sub_271138414(&xmmword_2808778B8);
    __cxa_guard_release(&qword_2808778D0);
  }

  if (byte_2808778CF < 0)
  {
    sub_271127178(&v21, xmmword_2808778B8, *(&xmmword_2808778B8 + 1));
  }

  else
  {
    v21 = xmmword_2808778B8;
    v22 = unk_2808778C8;
  }

  sub_2711309E8(&v19, &v21, 1uLL);
  LOBYTE(v8) = 0;
  v18 = 0;
  if (*(a2 + 120) == 1)
  {
    v8 = *a2;
    LOBYTE(v9) = 0;
    v17 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v9, (a2 + 16));
      v17 = 1;
    }

    v18 = 1;
  }

  sub_27112E0C4(qword_28087A528, &v19, &v8, **a1);
  if (v18 == 1 && v17 == 1)
  {
    if (v16 == 1)
    {
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }
    }

    if (v11 == 1 && v10 < 0)
    {
      operator delete(v9);
    }
  }

  v4 = v19;
  if (v19)
  {
    v5 = v20;
    v6 = v19;
    if (v20 != v19)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v19;
    }

    v20 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }
}