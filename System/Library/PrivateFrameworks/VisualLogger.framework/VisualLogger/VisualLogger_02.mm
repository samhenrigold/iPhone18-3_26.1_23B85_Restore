void sub_271140E50(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_271120E50(a1);
}

_BYTE *sub_271141088(_BYTE *result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    result = sub_271144164(result, (a2 + 16));
    v2[136] = 0;
    v2[152] = 0;
    if (*(a2 + 168) == 1)
    {
      v4 = *(a2 + 160);
      *(v2 + 17) = *(a2 + 152);
      *(v2 + 18) = v4;
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      }

      v2[152] = 1;
      v2[160] = 1;
    }

    else
    {
      v2[160] = 1;
    }
  }

  else
  {
    *result = 0;
    result[160] = 0;
  }

  return result;
}

void sub_27114111C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_271143C50();
  sub_2711440E8();
  sub_27112E8EC(qword_280879D10, &xmmword_280879D40, 0);
  *v1 = 0;
  v1[160] = 0;
  __cxa_end_catch();
  JUMPOUT(0x2711410E8);
}

uint64_t sub_271141158(uint64_t result)
{
  if (*(result + 160) != 1)
  {
    return result;
  }

  if (*(result + 152) == 1)
  {
    v1 = *(result + 144);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        result = v2;
      }
    }
  }

  if (*(result + 104) == 1)
  {
    v3 = *(result + 96);
    if (v3 == result + 72)
    {
      v4 = result;
      (*(*v3 + 32))(*(result + 96));
    }

    else
    {
      if (!v3)
      {
        goto LABEL_12;
      }

      v4 = result;
      (*(*v3 + 40))(*(result + 96));
    }

    result = v4;
  }

LABEL_12:
  if (*(result + 40) == 1 && *(result + 23) < 0)
  {
    v5 = result;
    operator delete(*result);
    return v5;
  }

  return result;
}

uint64_t VZClientSync(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_2711D4BCC(a1 + 16, &v7);
    v30 = "VZClientSync";
    if (v18)
    {
      return v7;
    }

    sub_27113F150("in function ", &v30);
    sub_271849064(&v7, v4, &v19);
    sub_27112B960(&v19, a2);
    if (v29 == 1)
    {
      if (v28 == 1)
      {
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23[0]);
        }
      }

      if (v22 == 1 && SHIBYTE(v21) < 0)
      {
        operator delete(v20);
      }
    }

    if (SHIBYTE(v5) < 0)
    {
      operator delete(v4[0]);
      if (v18)
      {
        return 0;
      }
    }

    else if (v18)
    {
      return 0;
    }

    if (v17 != 1)
    {
      return 0;
    }

    if (v16 == 1)
    {
      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }

      if (SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    result = 0;
    if (v10 == 1 && SHIBYTE(v9) < 0)
    {
      operator delete(v8);
      return 0;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_280879CE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879CE8))
    {
      sub_271144DDC();
      __cxa_guard_release(&qword_280879CE8);
    }

    if (byte_280879D87 < 0)
    {
      sub_271127178(v4, xmmword_280879D70, *(&xmmword_280879D70 + 1));
    }

    else
    {
      *v4 = xmmword_280879D70;
      v5 = unk_280879D80;
    }

    v6 = 1;
    sub_27112D7CC("VZClientSync", v4, &v19);
    v7 = v19;
    LOBYTE(v8) = 0;
    v17 = 0;
    if (v29 == 1)
    {
      v10 = 0;
      if (v22 == 1)
      {
        v8 = v20;
        v9 = v21;
        v21 = 0;
        v20 = 0uLL;
        v10 = 1;
      }

      LOBYTE(v11) = 0;
      v16 = 0;
      if (v28 == 1)
      {
        v12 = v24;
        v11 = *v23;
        v23[0] = 0;
        v23[1] = 0;
        v13 = v25;
        *v14 = *__p;
        v15 = v27;
        v24 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v27 = 0;
        v16 = 1;
      }

      v17 = 1;
    }

    v18 = 0;
    sub_27112B960(&v7, a2);
    if ((v18 & 1) == 0 && v17 == 1)
    {
      if (v16 == 1)
      {
        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }

        if (SHIBYTE(v12) < 0)
        {
          operator delete(v11);
        }
      }

      if (v10 == 1 && SHIBYTE(v9) < 0)
      {
        operator delete(v8);
      }
    }

    if (v29 == 1)
    {
      if (v28 == 1)
      {
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23[0]);
        }
      }

      if (v22 == 1 && SHIBYTE(v21) < 0)
      {
        operator delete(v20);
      }
    }

    if (v6 == 1 && SHIBYTE(v5) < 0)
    {
      operator delete(v4[0]);
    }

    return 0;
  }

  return result;
}

void sub_27114164C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112D71C(&a32);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_27112E024(&a16);
  _Unwind_Resume(a1);
}

void sub_271141688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_27112E024(&a17);
  sub_27112D71C(&a35);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x271141680);
}

const void *VZClientGetUUID(uint64_t a1)
{
  if (!sub_271141A84("VZClientGetUUID", a1))
  {
    v4 = *(a1 + 80);
    v3 = *(a1 + 88);
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      if (v4)
      {
LABEL_6:
        v6 = *(a1 + 80);
        v5 = *(a1 + 88);
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
        }

        if (v6)
        {
          CFRetain(v6);
        }

        sub_271143910(&v10, v6);
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }

    v7 = (*(**(a1 + 16) + 24))(*(a1 + 16));
    Default = CFAllocatorGetDefault();
    v9 = CFUUIDCreateFromUUIDBytes(Default, *v7);
    sub_271143910(&v10, v9);
  }

  return 0;
}

BOOL sub_271141A84(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280879CF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879CF0))
    {
      sub_271144FDC();
      __cxa_guard_release(&qword_280879CF0);
    }

    if (byte_280879D9F < 0)
    {
      sub_271127178(v5, xmmword_280879D88, *(&xmmword_280879D88 + 1));
    }

    else
    {
      *v5 = xmmword_280879D88;
      v6 = unk_280879D98;
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

void sub_271141CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZClientGetAsDestination(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if (sub_271141A84("VZClientGetAsDestination", a1))
  {
    return 0;
  }

  result = a1[9];
  if (!result)
  {
    v4 = a1[4];
    v3 = a1[5];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = a1[6];
    v5 = a1[7];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = operator new(0x38uLL, MEMORY[0x277D826F0]);
    v8 = v7;
    if (v7)
    {
      v7[2] = v4;
      v7[3] = v3;
      v7[4] = v6;
      v7[5] = v5;
      *(v7 + 12) = 1;
      *v7 = &unk_288119928;
      v7[1] = &unk_288119978;
      off_288119938(v7);
      v3 = 0;
      v5 = 0;
      v9 = v8;
      v10 = a1[9];
      a1[9] = v8;
      if (!v10)
      {
LABEL_11:
        if (v8)
        {
          (*(*v9 + 24))(v9);
        }

        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        if (v3)
        {
          if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v3->__on_zero_shared)(v3);
            std::__shared_weak_count::__release_weak(v3);
          }
        }

        return a1[9];
      }
    }

    else
    {
      if ((atomic_load_explicit(&qword_280877950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877950))
      {
        sub_2718519B4(qword_280877938, "VZDestination]", 0xDuLL);
        __cxa_guard_release(&qword_280877950);
      }

      if ((atomic_load_explicit(&qword_280879CA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879CA0))
      {
        sub_2718519B4(&xmmword_280879CF8, "cv3d::vl::visual_logger::SharedDestination]", 0x2AuLL);
        __cxa_guard_release(&qword_280879CA0);
      }

      if (byte_280879D0F < 0)
      {
        sub_271127178(&v28, xmmword_280879CF8, *(&xmmword_280879CF8 + 1));
      }

      else
      {
        v28 = xmmword_280879CF8;
        v29 = unk_280879D08;
      }

      sub_2711309E8(&v26, &v28, 1uLL);
      LOBYTE(v15) = 0;
      v25 = 0;
      sub_27112E0C4(qword_280877938, &v26, &v15, 0);
      if (v25 == 1 && v24 == 1)
      {
        if (v23 == 1)
        {
          if (v22 < 0)
          {
            operator delete(__p);
          }

          if (v20 < 0)
          {
            operator delete(v19);
          }
        }

        if (v18 == 1 && v17 < 0)
        {
          operator delete(v16);
        }
      }

      v11 = v26;
      if (v26)
      {
        v12 = v27;
        v13 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *(v12 - 1);
            v12 -= 3;
            if (v14 < 0)
            {
              operator delete(*v12);
            }
          }

          while (v12 != v11);
          v13 = v26;
        }

        v27 = v11;
        operator delete(v13);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28);
      }

      v9 = 0;
      v10 = a1[9];
      a1[9] = 0;
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    (*(*v10 + 24))(v10);
    goto LABEL_11;
  }

  return result;
}

void sub_271142114(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_280879CA0);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *VZDestinationCreateWithClient(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  sub_271141088(v26, a1);
  v24 = &v25;
  v25 = a2;
  LOBYTE(v44) = 0;
  v58 = 0;
  if (v40 == 1)
  {
    v48 = 0;
    if (v30 == 1)
    {
      v44 = *v26;
      v45 = v27;
      v26[1] = 0;
      v27 = 0;
      v26[0] = 0;
      v46 = v28;
      v47 = v29;
      v48 = 1;
    }

    v49 = v31;
    v50 = v32;
    v51[0] = 0;
    v53 = 0;
    if (v35 == 1)
    {
      if (v34)
      {
        if (v34 == v33)
        {
          v52 = v51;
          (*(*v34 + 24))();
        }

        else
        {
          v52 = v34;
          v34 = 0;
        }
      }

      else
      {
        v52 = 0;
      }

      v53 = 1;
    }

    v54 = v36;
    v55 = v37;
    LOBYTE(v56) = 0;
    v57 = 0;
    if (v39 == 1)
    {
      v56 = v38;
      v38 = 0uLL;
      v57 = v39;
    }

    v58 = 1;
  }

  v41[0] = &unk_288108A18;
  v41[1] = sub_271141150;
  v42 = v41;
  v43 = 1;
  sub_2711D4FA0(&v44, v41, &v20);
  if (v43 != 1)
  {
LABEL_18:
    if (v58 != 1)
    {
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  if (v42 != v41)
  {
    if (v42)
    {
      (*(*v42 + 40))(v42);
    }

    goto LABEL_18;
  }

  (*(*v42 + 32))(v42);
  if (v58 != 1)
  {
    goto LABEL_31;
  }

LABEL_19:
  if (v57 == 1)
  {
    v3 = *(&v56 + 1);
    if (*(&v56 + 1))
    {
      if (!atomic_fetch_add((*(&v56 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }

  if (v53 == 1)
  {
    if (v52 == v51)
    {
      (*(*v52 + 32))(v52);
      if (v48 != 1)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    if (v52)
    {
      (*(*v52 + 40))(v52);
    }
  }

  if (v48 != 1)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }

LABEL_31:
  if (v23)
  {
    v4 = sub_2711455D4(&v20);
    v5 = operator new(0x38uLL, MEMORY[0x277D826F0]);
    v6 = v5;
    if (v5)
    {
      v5[1] = *v4;
      *v4 = 0;
      *(v4 + 8) = 0;
      v5[2] = *(v4 + 16);
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v5 + 12) = 1;
      *v5 = &unk_288119928;
      *(v5 + 1) = &unk_288119978;
    }

    else
    {
      LOBYTE(v9) = 0;
      v19 = 0;
      sub_27114523C(&v24, &v9);
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
    }

    sub_271145690(&v20);
    if (v40 == 1)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v9 = v20;
    LOBYTE(v10) = 0;
    v18 = 0;
    if (v22 == 1)
    {
      sub_27112F6CC(&v10, &v21);
      v18 = 1;
    }

    v19 = 1;
    sub_27114523C(&v24, &v9);
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

    sub_271145690(&v20);
    v6 = 0;
    if (v40 == 1)
    {
LABEL_59:
      if (v39 == 1)
      {
        v7 = *(&v38 + 1);
        if (*(&v38 + 1))
        {
          if (!atomic_fetch_add((*(&v38 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }
        }
      }

      if (v35 == 1)
      {
        if (v34 == v33)
        {
          (*(*v34 + 32))(v34);
          if (v30 != 1)
          {
            return v6;
          }

LABEL_68:
          if (SHIBYTE(v27) < 0)
          {
            operator delete(v26[0]);
          }

          return v6;
        }

        if (v34)
        {
          (*(*v34 + 40))();
        }
      }

      if (v30 != 1)
      {
        return v6;
      }

      goto LABEL_68;
    }
  }

  return v6;
}

void sub_271142784(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_271120E50(a1);
}

uint64_t sub_2711429DC(uint64_t result)
{
  if (atomic_fetch_add((result + 176), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_271142A18()
{
  if (atomic_load_explicit(&qword_280879CB0, memory_order_acquire))
  {
    return qword_280879CA8;
  }

  if (__cxa_guard_acquire(&qword_280879CB0))
  {
    qword_280879CA8 = sub_27112B4B8();
    __cxa_guard_release(&qword_280879CB0);
  }

  return qword_280879CA8;
}

uint64_t sub_271142A7C(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C5D8, 0);
  if (result)
  {
    v4 = result;
    result = sub_27138E6CC((a1 + 16), (result + 16));
    if (result)
    {
      v5 = *(v4 + 168);
      v6 = *(a1 + 168);
      result = v6 == v5;
      if (v6 == v5 && v6 != 0)
      {
        return *(a1 + 152) == *(v4 + 152);
      }
    }
  }

  return result;
}

uint64_t sub_271142B2C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  __cxa_begin_catch(a1);
  sub_271143C50();
  sub_27112B400(v20, "failed to compare equal");
  sub_27112DB38(qword_280879D10, v20, 0);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  __cxa_end_catch();
  return 0;
}

void sub_271142B84(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879CB8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280879CB8))
    {
      sub_2718519B4(qword_280879D10, "VZClientOptions]", 0xFuLL);
      __cxa_guard_release(&qword_280879CB8);
    }
  }

  v2 = a1;
  operator new();
}

void sub_271143028(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_280879CB8);
  __cxa_begin_catch(a1);
  sub_271143C50();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_280879D10, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x271142F98);
}

uint64_t sub_271143178(uint64_t result)
{
  if (atomic_fetch_add((result + 64), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_2711431B4()
{
  if (atomic_load_explicit(&qword_280879CD0, memory_order_acquire))
  {
    return qword_280879CC8;
  }

  if (__cxa_guard_acquire(&qword_280879CD0))
  {
    qword_280879CC8 = sub_27112B4B8();
    __cxa_guard_release(&qword_280879CD0);
  }

  return qword_280879CC8;
}

void *sub_271143218(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C290, 0);
  if (result)
  {
    return (*(a1 + 16) == result[2]);
  }

  return result;
}

void sub_271143294(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879CE0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280879CE0))
    {
      sub_2718519B4(qword_280879D58, "VZClient]", 8uLL);
      __cxa_guard_release(&qword_280879CE0);
    }
  }

  v2 = a1;
  operator new();
}

void sub_271143738(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_280879CE0);
  __cxa_begin_catch(a1);
  sub_271144A74();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_280879D58, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x2711436A8);
}

uint64_t sub_271143878(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

void sub_271143B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_271143B94(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271143BCC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_271143BF0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK8__CFUUIDEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK8__CFUUIDEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK8__CFUUIDEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK8__CFUUIDEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271143C50()
{
  if ((atomic_load_explicit(&qword_280879CB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879CB8))
  {
    sub_2718519B4(qword_280879D10, "VZClientOptions]", 0xFuLL);

    __cxa_guard_release(&qword_280879CB8);
  }
}

double sub_271143CE0()
{
  *(&__p.__r_.__value_.__s + 23) = 15;
  strcpy(&__p, "VZClientOptions");
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
  xmmword_280879D28 = v5;
  unk_280879D38 = v6;
  return result;
}

void sub_271143EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_271143EE4@<D0>(uint64_t a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZLogger");
  sub_27184BC8C(&v7, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
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

LABEL_8:
    operator new();
  }

  v3 = v7;
LABEL_10:
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
  *a1 = v7;
  *(a1 + 16) = v8;
  return result;
}

void sub_2711440B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711440E8()
{
  if ((atomic_load_explicit(&qword_280879CD8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280879CD8))
    {
      sub_2711442D8();
    }
  }
}

uint64_t sub_271144164(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_271127178(a1, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
    }

    *(a1 + 24) = *(a2 + 12);
    *(a1 + 32) = *(a2 + 8);
    *(a1 + 40) = 1;
  }

  v5 = a2[3];
  v6 = *(a2 + 8);
  *(a1 + 72) = 0;
  *(a1 + 64) = v6;
  *(a1 + 48) = v5;
  *(a1 + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    v7 = *(a2 + 12);
    if (v7)
    {
      if (v7 == (a2 + 72))
      {
        *(a1 + 96) = a1 + 72;
        (*(**(a2 + 12) + 24))(*(a2 + 12), a1 + 72);
        goto LABEL_12;
      }

      v7 = (*(*v7 + 16))(v7);
    }

    *(a1 + 96) = v7;
LABEL_12:
    *(a1 + 104) = 1;
  }

  v8 = a2[7];
  *(a1 + 128) = *(a2 + 16);
  *(a1 + 112) = v8;
  return a1;
}

void sub_271144298(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711442D8()
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

void sub_2711444B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t sub_271144524(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

void sub_2711445BC(void ***a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280879CE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879CE0))
  {
    sub_2718519B4(qword_280879D58, "VZClient]", 8uLL);
    __cxa_guard_release(&qword_280879CE0);
  }

  if ((atomic_load_explicit(&qword_280879CD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879CD8))
  {
    sub_2711442D8();
  }

  if (byte_280879D57 < 0)
  {
    sub_271127178(&v21, xmmword_280879D40, *(&xmmword_280879D40 + 1));
  }

  else
  {
    v21 = xmmword_280879D40;
    v22 = unk_280879D50;
  }

  if ((atomic_load_explicit(&qword_280877990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877990))
  {
    sub_271144B04();
  }

  if (byte_28087798F < 0)
  {
    sub_271127178(&v23, xmmword_280877978, *(&xmmword_280877978 + 1));
  }

  else
  {
    v23 = xmmword_280877978;
    v24 = unk_280877988;
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

  sub_27112E0C4(qword_280879D58, &v19, &v8, **a1);
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

void sub_2711448B0(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877990);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2711449C4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288108A18;
  a2[1] = v2;
  return result;
}

uint64_t sub_2711449FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "PFvRKN4cv3d3esn5ErrorEE")
  {
    return a1 + 8;
  }

  if (((v2 & "PFvRKN4cv3d3esn5ErrorEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "PFvRKN4cv3d3esn5ErrorEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("PFvRKN4cv3d3esn5ErrorEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_271144A74()
{
  if ((atomic_load_explicit(&qword_280879CE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879CE0))
  {
    sub_2718519B4(qword_280879D58, "VZClient]", 8uLL);

    __cxa_guard_release(&qword_280879CE0);
  }
}

void sub_271144CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271144D2C(void *result)
{
  if (*(result + 120) == 1)
  {
    return sub_2711D4E88(result);
  }

  if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v1 = result;
        operator delete(result[10]);
        result = v1;
      }

      if (*(result + 71) < 0)
      {
        v2 = result;
        operator delete(result[6]);
        result = v2;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v3 = result;
      operator delete(result[2]);
      return v3;
    }
  }

  return result;
}

double sub_271144DDC()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZClient");
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
  xmmword_280879D70 = v5;
  unk_280879D80 = v6;
  return result;
}

void sub_271144FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_271144FDC()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZClient");
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
  xmmword_280879D88 = v7;
  unk_280879D98 = v8;
  return result;
}

void sub_2711451FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27114523C(void ***a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877950))
  {
    sub_2718519B4(qword_280877938, "VZDestination]", 0xDuLL);
    __cxa_guard_release(&qword_280877950);
  }

  if ((atomic_load_explicit(&qword_280879CD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879CD8))
  {
    sub_2711442D8();
  }

  if (byte_280879D57 < 0)
  {
    sub_271127178(&v21, xmmword_280879D40, *(&xmmword_280879D40 + 1));
  }

  else
  {
    v21 = xmmword_280879D40;
    v22 = unk_280879D50;
  }

  if ((atomic_load_explicit(&qword_280877990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877990))
  {
    sub_271144B04();
  }

  if (byte_28087798F < 0)
  {
    sub_271127178(&v23, xmmword_280877978, *(&xmmword_280877978 + 1));
  }

  else
  {
    v23 = xmmword_280877978;
    v24 = unk_280877988;
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

void sub_271145530(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877990);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2711455D4(uint64_t result)
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

void sub_27114564C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_271145660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D71C(va);
  __cxa_free_exception(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_271145690(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    v1 = *(result + 24);
    if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      result = v2;
    }

    v3 = *(result + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v7;
      }
    }
  }

  else if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v4 = result;
        operator delete(*(result + 80));
        result = v4;
      }

      if (*(result + 71) < 0)
      {
        v5 = result;
        operator delete(*(result + 48));
        result = v5;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v6 = result;
      operator delete(*(result + 16));
      return v6;
    }
  }

  return result;
}

uint64_t sub_2711457E8(uint64_t result)
{
  if (*(result + 152) == 1 && *(result + 151) < 0)
  {
    v2 = result;
    operator delete(*(result + 128));
    result = v2;
    if (*(v2 + 112) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(result + 112) != 1)
  {
    goto LABEL_7;
  }

  if (*(result + 87) < 0)
  {
    v1 = result;
    operator delete(*(result + 64));
    result = v1;
  }

LABEL_7:
  if (*(result + 56) == 1 && *(result + 55) < 0)
  {
    v3 = result;
    operator delete(*(result + 32));
    return v3;
  }

  return result;
}

void sub_271145898(uint64_t a1)
{
  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
    if (*(a1 + 96) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 96) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

LABEL_7:
  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void sub_271145934(uint64_t a1)
{
  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 128));
    a1 = v2;
    if (*(v2 + 112) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 112) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 87) < 0)
  {
    v1 = a1;
    operator delete(*(a1 + 64));
    a1 = v1;
  }

LABEL_7:
  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711459F8(uint64_t a1)
{
  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
    if (*(a1 + 96) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 96) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

LABEL_7:
  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271145AA0(uint64_t a1)
{
  v2 = *(a1 + 464);
  if (v2)
  {
    v3 = *(a1 + 472);
    v4 = *(a1 + 464);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 24))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 464);
    }

    *(a1 + 472) = v2;
    operator delete(v4);
  }

  v7 = *(a1 + 456);
  *(a1 + 456) = 0;
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(a1 + 448);
  *(a1 + 448) = 0;
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v9 = *(a1 + 440);
  *(a1 + 440) = 0;
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  if (*(a1 + 416) == 1)
  {
    if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
    {
      operator delete(*(a1 + 352));
    }

    if (*(a1 + 336) == 1 && *(a1 + 311) < 0)
    {
      operator delete(*(a1 + 288));
    }

    if (*(a1 + 280) == 1 && *(a1 + 279) < 0)
    {
      operator delete(*(a1 + 256));
    }
  }

  sub_271134CBC(a1 + 64);
  return a1;
}

void sub_271145C34(uint64_t a1)
{
  sub_271145AA0(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271145C6C(uint64_t a1)
{
  sub_271145AA0(a1 - 16);

  JUMPOUT(0x2743BF050);
}

_BYTE *sub_271145CA8(void **a1, uint64_t *a2, void **a3)
{
  v28 = *MEMORY[0x277D85DE8];
  result = *a3;
  if (*a3)
  {
    if (*(a2 + 16))
    {
      v6 = *a2;
      result[24] = *(a2 + 8);
      *(result + 2) = v6;
      goto LABEL_9;
    }

    *a3 = 0;
    goto LABEL_8;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_9;
  }

  result = operator new(0x20uLL, MEMORY[0x277D826F0]);
  if (!result)
  {
    if ((atomic_load_explicit(&qword_280877A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A10))
    {
      sub_2718519B4(qword_2808779F8, "VZTimestamp]", 0xBuLL);
      __cxa_guard_release(&qword_280877A10);
    }

    if ((atomic_load_explicit(&qword_280879DA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879DA0))
    {
      sub_27114B3A0();
    }

    if (byte_280879E2F < 0)
    {
      sub_271127178(&v26, xmmword_280879E18, *(&xmmword_280879E18 + 1));
    }

    else
    {
      v26 = xmmword_280879E18;
      v27 = unk_280879E28;
    }

    sub_2711309E8(&v24, &v26, 1uLL);
    LOBYTE(v13) = 0;
    v23 = 0;
    sub_27112E0C4(qword_2808779F8, &v24, &v13, 0);
    if (v23 == 1 && v22 == 1)
    {
      if (v21 == 1)
      {
        if (v20 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }
      }

      if (v16 == 1 && v15 < 0)
      {
        operator delete(v14);
      }
    }

    v9 = v24;
    if (v24)
    {
      v10 = v25;
      v11 = v24;
      if (v25 != v24)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = v24;
      }

      v25 = v9;
      operator delete(v11);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }

    result = *a3;
    *a3 = 0;
    if (!result)
    {
      *a1 = 0;
      return result;
    }

LABEL_8:
    (*(*result + 24))(result);
LABEL_9:
    result = *a3;
    *a1 = *a3;
    if (!result)
    {
      return result;
    }

    return (*(*result + 16))(result);
  }

  v8 = *a2;
  result[24] = *(a2 + 8);
  *(result + 7) = 1;
  *result = &unk_288119A78;
  *(result + 1) = &unk_288119AC8;
  *(result + 2) = v8;
  *a3 = result;
  *a1 = result;
  return (*(*result + 16))(result);
}

void sub_271145FBC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_280879DA0);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27114600C(uint64_t a1)
{
  v2 = *(a1 + 584);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(a1 + 576);
  *(a1 + 576) = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  if (*(a1 + 560) == 1 && (*(a1 + 536) = &unk_288109288, (v4 = *(a1 + 552)) != 0) && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (*(a1 + 528) != 1)
    {
      goto LABEL_11;
    }
  }

  else if (*(a1 + 528) != 1)
  {
    goto LABEL_11;
  }

  v5 = *(a1 + 496);
  if (v5)
  {
    v5(0, a1 + 496, 0, 0, 0);
  }

LABEL_11:
  v6 = *(a1 + 480);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (*(a1 + 448) != 1)
    {
      goto LABEL_24;
    }
  }

  else if (*(a1 + 448) != 1)
  {
    goto LABEL_24;
  }

  if (*(a1 + 408) == 1 && *(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  if (*(a1 + 368) == 1 && *(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  if (*(a1 + 312) == 1 && *(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

LABEL_24:
  sub_271134CBC(a1 + 96);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_27114622C(uint64_t a1)
{
  sub_27114600C(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271146264(uint64_t a1)
{
  sub_27114600C(a1 - 16);

  JUMPOUT(0x2743BF050);
}

uint64_t VZReferenceIDGetTypeID()
{
  if (atomic_load_explicit(&qword_280879DD0, memory_order_acquire))
  {
    return qword_280879DC8;
  }

  if (__cxa_guard_acquire(&qword_280879DD0))
  {
    qword_280879DC8 = sub_27112B4B8();
    __cxa_guard_release(&qword_280879DD0);
  }

  return qword_280879DC8;
}

char *VZReferenceIDCreateFromString(uint64_t a1)
{
  if (sub_271146460("VZReferenceIDCreateFromString", a1, 0))
  {
    return 0;
  }

  return sub_27114BF30(sub_2711D727C, a1);
}

BOOL sub_271146460(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_2808779B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808779B0))
    {
      sub_27114BD2C(&xmmword_280877998);
      __cxa_guard_release(&qword_2808779B0);
    }

    if (byte_2808779AF < 0)
    {
      sub_271127178(v7, xmmword_280877998, *(&xmmword_280877998 + 1));
    }

    else
    {
      *v7 = xmmword_280877998;
      v8 = unk_2808779A8;
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

void sub_2711466DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *VZReferenceIDCreateWithInstanceID(char *a1, char *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  sub_2711D7810(v23, a1, a2);
  v2 = operator new(0xC0uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (!v2)
  {
    if ((v32 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  *v2 = &unk_288117810;
  v2[32] = 0;
  v2[56] = 0;
  if (v25 == 1)
  {
    *(v2 + 2) = *v23;
    *(v2 + 6) = v24;
    v23[1] = 0;
    v24 = 0;
    v23[0] = 0;
    v2[56] = 1;
  }

  v2[64] = 0;
  v2[112] = 0;
  if (v29 == 1)
  {
    _X0 = 0;
    _X1 = 0;
    *(v3 + 10) = v27;
    *(v3 + 4) = *v26;
    v26[1] = 0;
    v27 = 0;
    v26[0] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    *(v3 + 12) = _X0;
    *(v3 + 13) = 0;
    v3[112] = 1;
  }

  v3[128] = 0;
  v3[152] = 0;
  v11 = v32;
  if (v32 == 1)
  {
    *(v3 + 8) = __p;
    *(v3 + 18) = v31;
    v31 = 0;
    __p = 0uLL;
    v3[152] = 1;
  }

  *(v3 + 10) = v33;
  *(v3 + 22) = v34;
  *(v3 + 46) = 1;
  *v3 = &unk_28812D360;
  *(v3 + 2) = &unk_28812D3B0;
  if (v11)
  {
LABEL_11:
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_13:
  if (v29 == 1 && SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (v25 == 1 && SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  if (!v3)
  {
    if ((atomic_load_explicit(&qword_280879DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879DA8))
    {
      sub_2718519B4(qword_280879E30, "VZReferenceID]", 0xDuLL);
      __cxa_guard_release(&qword_280879DA8);
    }

    if ((atomic_load_explicit(&qword_2808779D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808779D0))
    {
      sub_27114C390(&xmmword_2808779B8);
      __cxa_guard_release(&qword_2808779D0);
    }

    if (byte_2808779CF < 0)
    {
      sub_271127178(v19, xmmword_2808779B8, *(&xmmword_2808779B8 + 1));
    }

    else
    {
      *v19 = xmmword_2808779B8;
      v20 = unk_2808779C8;
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

    sub_2711309E8(&v17, v19, 2uLL);
    LOBYTE(v23[0]) = 0;
    v32 = 0;
    sub_27112E0C4(qword_280879E30, &v17, v23, 0);
    if (v32 == 1 && v31 == 1)
    {
      if (BYTE8(__p) == 1)
      {
        if (SBYTE7(__p) < 0)
        {
          operator delete(v29);
        }

        if (v28 < 0)
        {
          operator delete(v27);
        }
      }

      if (LOBYTE(v26[1]) == 1 && SHIBYTE(v26[0]) < 0)
      {
        operator delete(v24);
      }
    }

    v12 = v17;
    if (v17)
    {
      v13 = v18;
      v14 = v17;
      if (v18 != v17)
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
        v14 = v17;
      }

      v18 = v12;
      operator delete(v14);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
        return 0;
      }
    }

    else if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      return 0;
    }

    operator delete(v19[0]);
    return 0;
  }

  return v3;
}

void sub_271146B6C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_2808779D0);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *VZReferenceIDCreateWithIntegerInstanceID(char *a1, std::string *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  sub_2711D7E48(v23, a1, a2);
  v2 = operator new(0xC0uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (!v2)
  {
    if ((v32 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  *v2 = &unk_288117810;
  v2[32] = 0;
  v2[56] = 0;
  if (v25 == 1)
  {
    *(v2 + 2) = *v23;
    *(v2 + 6) = v24;
    v23[1] = 0;
    v24 = 0;
    v23[0] = 0;
    v2[56] = 1;
  }

  v2[64] = 0;
  v2[112] = 0;
  if (v29 == 1)
  {
    _X0 = 0;
    _X1 = 0;
    *(v3 + 10) = v27;
    *(v3 + 4) = *v26;
    v26[1] = 0;
    v27 = 0;
    v26[0] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    *(v3 + 12) = _X0;
    *(v3 + 13) = 0;
    v3[112] = 1;
  }

  v3[128] = 0;
  v3[152] = 0;
  v11 = v32;
  if (v32 == 1)
  {
    *(v3 + 8) = __p;
    *(v3 + 18) = v31;
    v31 = 0;
    __p = 0uLL;
    v3[152] = 1;
  }

  *(v3 + 10) = v33;
  *(v3 + 22) = v34;
  *(v3 + 46) = 1;
  *v3 = &unk_28812D360;
  *(v3 + 2) = &unk_28812D3B0;
  if (v11)
  {
LABEL_11:
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_13:
  if (v29 == 1 && SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (v25 == 1 && SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  if (!v3)
  {
    if ((atomic_load_explicit(&qword_280879DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879DA8))
    {
      sub_2718519B4(qword_280879E30, "VZReferenceID]", 0xDuLL);
      __cxa_guard_release(&qword_280879DA8);
    }

    if ((atomic_load_explicit(&qword_2808779D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808779D0))
    {
      sub_27114C390(&xmmword_2808779B8);
      __cxa_guard_release(&qword_2808779D0);
    }

    if (byte_2808779CF < 0)
    {
      sub_271127178(v19, xmmword_2808779B8, *(&xmmword_2808779B8 + 1));
    }

    else
    {
      *v19 = xmmword_2808779B8;
      v20 = unk_2808779C8;
    }

    if ((atomic_load_explicit(&qword_280879DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879DD8))
    {
      *&xmmword_280879E90 = 0x263436746E69;
      byte_280879EA7 = 6;
      __cxa_guard_release(&qword_280879DD8);
    }

    if (byte_280879EA7 < 0)
    {
      sub_271127178(&v21, xmmword_280879E90, *(&xmmword_280879E90 + 1));
    }

    else
    {
      v21 = xmmword_280879E90;
      v22 = unk_280879EA0;
    }

    sub_2711309E8(&v17, v19, 2uLL);
    LOBYTE(v23[0]) = 0;
    v32 = 0;
    sub_27112E0C4(qword_280879E30, &v17, v23, 0);
    if (v32 == 1 && v31 == 1)
    {
      if (BYTE8(__p) == 1)
      {
        if (SBYTE7(__p) < 0)
        {
          operator delete(v29);
        }

        if (v28 < 0)
        {
          operator delete(v27);
        }
      }

      if (LOBYTE(v26[1]) == 1 && SHIBYTE(v26[0]) < 0)
      {
        operator delete(v24);
      }
    }

    v12 = v17;
    if (v17)
    {
      v13 = v18;
      v14 = v17;
      if (v18 != v17)
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
        v14 = v17;
      }

      v18 = v12;
      operator delete(v14);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
        return 0;
      }
    }

    else if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      return 0;
    }

    operator delete(v19[0]);
    return 0;
  }

  return v3;
}

void sub_271147038(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_2808779D0);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *VZReferenceIDGetAsString(uint64_t a1)
{
  if (sub_2711470F0("VZReferenceIDGetAsString", a1))
  {
    return 0;
  }

  return sub_2711D8390(a1 + 32);
}

BOOL sub_2711470F0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280879DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879DE0))
    {
      sub_27114C6DC();
      __cxa_guard_release(&qword_280879DE0);
    }

    if (byte_280879EBF < 0)
    {
      sub_271127178(v5, xmmword_280879EA8, *(&xmmword_280879EA8 + 1));
    }

    else
    {
      *v5 = xmmword_280879EA8;
      v6 = unk_280879EB8;
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

void sub_271147354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZReferenceIDGetName(uint64_t a1)
{
  if (sub_2711470F0("VZReferenceIDGetName", a1) || *(a1 + 56) != 1)
  {
    return 0;
  }

  if (*(a1 + 55) < 0)
  {
    if (*(a1 + 40))
    {
      return *(a1 + 32);
    }

    return 0;
  }

  if (*(a1 + 55))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t VZReferenceIDGetInstanceID(uint64_t a1)
{
  if (sub_2711470F0("VZReferenceIDGetInstanceID", a1) || *(a1 + 112) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 87);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 72);
  }

  if (!v2)
  {
    return 0;
  }

  if (v3 >= 0)
  {
    return a1 + 64;
  }

  return *(a1 + 64);
}

uint64_t VZReferenceIDGetInstanceIDAsInteger(uint64_t a1)
{
  if (sub_2711470F0("VZReferenceIDGetInstanceIDAsInteger", a1) || *(a1 + 112) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 87);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 72);
  }

  if (!v2)
  {
    return 0;
  }

  if (*(a1 + 176) == 1)
  {
    if ((*(a1 + 168) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    *(a1 + 160) = sub_2714FB0B0(a1 + 64);
    *(a1 + 168) = v4;
    *(a1 + 176) = 1;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  return a1 + 160;
}

uint64_t VZDataInfoGetTypeID()
{
  if (atomic_load_explicit(&qword_280879DF0, memory_order_acquire))
  {
    return qword_280879DE8;
  }

  if (__cxa_guard_acquire(&qword_280879DF0))
  {
    qword_280879DE8 = sub_27112B4B8();
    __cxa_guard_release(&qword_280879DF0);
  }

  return qword_280879DE8;
}

_OWORD *VZDataInfoCreate()
{
  result = operator new(0x1F0uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    result[29] = 0u;
    result[30] = 0u;
    result[27] = 0u;
    result[28] = 0u;
    result[25] = 0u;
    result[26] = 0u;
    result[23] = 0u;
    result[24] = 0u;
    result[21] = 0u;
    result[22] = 0u;
    result[19] = 0u;
    result[20] = 0u;
    result[17] = 0u;
    result[18] = 0u;
    result[15] = 0u;
    result[16] = 0u;
    result[13] = 0u;
    result[14] = 0u;
    result[11] = 0u;
    result[12] = 0u;
    result[9] = 0u;
    result[10] = 0u;
    result[7] = 0u;
    result[8] = 0u;
    result[5] = 0u;
    result[6] = 0u;
    result[3] = 0u;
    result[4] = 0u;
    result[2] = 0u;
    *result = 0u;
    result[1] = 0u;
    *(result + 108) = 1;
    *result = &unk_288119BC8;
    *(result + 2) = &unk_288119C18;
    *(result + 440) = 0u;
    *(result + 456) = 0u;
    *(result + 472) = 0u;
  }

  else
  {
    if ((atomic_load_explicit(&qword_280877810, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877810))
    {
      sub_2718519B4(qword_2808777F8, "VZDataInfo]", 0xAuLL);
      __cxa_guard_release(&qword_280877810);
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(v5) = 0;
    v15 = 0;
    sub_27112E0C4(qword_2808777F8, &v16, &v5, 0);
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

double VZDataInfoSetName(uint64_t a1, const char *a2)
{
  if (!sub_2711477FC("VZDataInfoSetName", a1))
  {

    return sub_271147AA0(a2, a1 + 64);
  }

  return result;
}

BOOL sub_2711477FC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280879DF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879DF8))
    {
      sub_27114C940();
      __cxa_guard_release(&qword_280879DF8);
    }

    if (byte_280879ED7 < 0)
    {
      sub_271127178(v5, xmmword_280879EC0, *(&xmmword_280879EC0 + 1));
    }

    else
    {
      *v5 = xmmword_280879EC0;
      v6 = unk_280879ED0;
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

void sub_271147A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_271147AA0(const char *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = strlen(a1);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v8) = v4;
    if (v4)
    {
      memcpy(&__dst, a1, v4);
      *(&__dst + v5) = 0;
      if (*(a2 + 24) != 1)
      {
LABEL_16:
        result = *&__dst;
        *a2 = __dst;
        *(a2 + 16) = v8;
        *(a2 + 24) = 1;
        return result;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      if (*(a2 + 24) != 1)
      {
        goto LABEL_16;
      }
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    goto LABEL_16;
  }

  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *(a2 + 24) = 0;
  }

  return result;
}

void sub_271147BDC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_27114BCA4();
  v1 = sub_27114CB44();
  sub_27112E8EC(&xmmword_280877998, v1, 0);
  __cxa_end_catch();
  JUMPOUT(0x271147B24);
}

uint64_t VZDataInfoGetName(uint64_t a1)
{
  if (sub_271147C78("VZDataInfoGetName", a1))
  {
    return 0;
  }

  if (*(a1 + 88) != 1)
  {
    return 0;
  }

  result = a1 + 64;
  if (*(a1 + 87) < 0)
  {
    return *result;
  }

  return result;
}

BOOL sub_271147C78(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280879E00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879E00))
    {
      sub_27114CDE4();
      __cxa_guard_release(&qword_280879E00);
    }

    if (byte_280879EEF < 0)
    {
      sub_271127178(v5, xmmword_280879ED8, *(&xmmword_280879ED8 + 1));
    }

    else
    {
      *v5 = xmmword_280879ED8;
      v6 = unk_280879EE8;
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

void sub_271147EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZDataInfoGetInstanceID(uint64_t a1)
{
  if (sub_271147C78("VZDataInfoGetInstanceID", a1))
  {
    return 0;
  }

  if (*(a1 + 208) != 1)
  {
    return 0;
  }

  if ((*(a1 + 416) & 1) == 0)
  {
    sub_2711D89F4(a1 + 32);
    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 336) != 1)
  {
    return 0;
  }

  v3 = *(a1 + 311);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 296);
  }

  if (!v3)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    return a1 + 288;
  }

  return *(a1 + 288);
}

uint64_t VZDataInfoGetInstanceIDAsInteger(uint64_t a1)
{
  if (sub_271147C78("VZDataInfoGetInstanceIDAsInteger", a1))
  {
    return 0;
  }

  if (*(a1 + 208) != 1)
  {
    return 0;
  }

  if ((*(a1 + 416) & 1) == 0)
  {
    sub_2711D89F4(a1 + 32);
    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 336) != 1)
  {
    return 0;
  }

  v3 = *(a1 + 311);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 296);
  }

  if (!v3)
  {
    return v3;
  }

  if (*(a1 + 400) == 1)
  {
    if ((*(a1 + 392) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    *(a1 + 384) = sub_2714FB0B0(a1 + 288);
    *(a1 + 392) = v5;
    *(a1 + 400) = 1;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  return (a1 + 0x80);
}

void VZDataInfoSetInstanceID(uint64_t a1, char *a2)
{
  if (!sub_2711477FC("VZDataInfoSetInstanceID", a1))
  {

    sub_2711D9738(a1 + 32, a2);
  }
}

void VZDataInfoSetInstanceIDFromInteger(uint64_t a1, uint64_t a2)
{
  if (!sub_2711477FC("VZDataInfoSetInstanceIDFromInteger", a1))
  {

    sub_2711D9964(a1 + 32, a2);
  }
}

void VZDataInfoSetReferenceIDFromString(uint64_t a1, char *a2)
{
  if (!sub_2711477FC("VZDataInfoSetReferenceIDFromString", a1))
  {

    sub_2711D8728(a1 + 32, a2);
  }
}

void VZDataInfoSetReferenceID(uint64_t a1, uint64_t a2)
{
  if (!sub_2711477FC("VZDataInfoSetReferenceID", a1))
  {
    v4 = (a2 + 32);
    if (!a2)
    {
      v4 = 0;
    }

    sub_2711D84D0(a1 + 32, v4 | (a2 + 32) & 0xFFFFFFFFFFFFFF00, a2 != 0);
  }
}

uint64_t VZDataInfoGetReferenceID(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (sub_271147C78("VZDataInfoGetReferenceID", a1))
  {
    return 0;
  }

  v3 = sub_2711D89F4(a1 + 32);
  v4 = *(a1 + 440);
  if ((v5 & 1) == 0)
  {
    *(a1 + 440) = 0;
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    return *(a1 + 440);
  }

  if (!v4 || !sub_2714FB8D4(v4 + 32, v3))
  {
    v6 = operator new(0xC0uLL, MEMORY[0x277D826F0]);
    if (v6)
    {
      v7 = v6;
      *v6 = &unk_288117810;
      sub_271135578((v6 + 4), v3);
      *(v7 + 128) = 0;
      *(v7 + 152) = 0;
      if (*(v3 + 120) == 1)
      {
        if (*(v3 + 119) < 0)
        {
          sub_271127178(v7 + 128, *(v3 + 96), *(v3 + 104));
        }

        else
        {
          v8 = *(v3 + 96);
          v7[18] = *(v3 + 112);
          *(v7 + 8) = v8;
        }

        *(v7 + 152) = 1;
      }

      v9 = 0;
      v10 = *(v3 + 128);
      v7[22] = *(v3 + 144);
      *(v7 + 10) = v10;
      *(v7 + 46) = 1;
      *v7 = &unk_28812D360;
      v7[2] = &unk_28812D3B0;
      atomic_fetch_add(v7 + 46, 1u);
      v11 = *(a1 + 440);
      *(a1 + 440) = v7;
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if ((atomic_load_explicit(&qword_280879DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879DA8))
      {
        sub_2718519B4(qword_280879E30, "VZReferenceID]", 0xDuLL);
        __cxa_guard_release(&qword_280879DA8);
      }

      if ((atomic_load_explicit(&qword_280879DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879DB0))
      {
        sub_27114B79C();
      }

      if (byte_280879E5F < 0)
      {
        sub_271127178(&v29, xmmword_280879E48, *(&xmmword_280879E48 + 1));
      }

      else
      {
        v29 = xmmword_280879E48;
        v30 = unk_280879E58;
      }

      sub_2711309E8(&v27, &v29, 1uLL);
      LOBYTE(v16) = 0;
      v26 = 0;
      sub_27112E0C4(qword_280879E30, &v27, &v16, 0);
      if (v26 == 1 && v25 == 1)
      {
        if (v24 == 1)
        {
          if (v23 < 0)
          {
            operator delete(__p);
          }

          if (v21 < 0)
          {
            operator delete(v20);
          }
        }

        if (v19 == 1 && v18 < 0)
        {
          operator delete(v17);
        }
      }

      v12 = v27;
      if (v27)
      {
        v13 = v28;
        v14 = v27;
        if (v28 != v27)
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
          v14 = v27;
        }

        v28 = v12;
        operator delete(v14);
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(v29);
      }

      v7 = 0;
      v9 = 1;
      v11 = *(a1 + 440);
      *(a1 + 440) = 0;
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    (*(*v11 + 24))(v11);
LABEL_16:
    if ((v9 & 1) == 0)
    {
      (*(*v7 + 24))(v7);
    }
  }

  return *(a1 + 440);
}

void sub_271148640(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_280879DB0);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27114866C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x271148678);
  }

  sub_271120E50(a1);
}

void *VZDataInfoGetReferenceIDAsString(uint64_t a1)
{
  if (sub_271147C78("VZDataInfoGetReferenceIDAsString", a1))
  {
    return 0;
  }

  v2 = sub_2711D89F4(a1 + 32);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return sub_2711D8390(v2);
}

double VZDataInfoSetSpace(uint64_t a1, const char *a2)
{
  if (!sub_2711477FC("VZDataInfoSetSpace", a1))
  {

    return sub_271147AA0(a2, a1 + 120);
  }

  return result;
}

uint64_t VZDataInfoGetSpace(uint64_t a1)
{
  if (sub_271147C78("VZDataInfoGetSpace", a1))
  {
    return 0;
  }

  if (*(a1 + 144) != 1)
  {
    return 0;
  }

  result = a1 + 120;
  if (*(a1 + 143) < 0)
  {
    return *result;
  }

  return result;
}

char *VZDataInfoGetAssociatedSpace(char *a1)
{
  if (sub_271147C78("VZDataInfoGetAssociatedSpace", a1))
  {
    return 0;
  }

  if (a1[144] == 1)
  {
    result = a1 + 120;
    if (a1[143] < 0)
    {
      return *result;
    }
  }

  else
  {
    if (a1[88] != 1)
    {
      return 0;
    }

    result = a1 + 64;
    if (a1[87] < 0)
    {
      return *result;
    }
  }

  return result;
}

BOOL VZDataInfoSetTimestampMachContinuousNanoseconds(uint64_t a1, uint64_t a2)
{
  result = sub_2711477FC("VZDataInfoSetTimestampMachContinuousNanoseconds", a1);
  if (!result)
  {
    if ((*(a1 + 112) & 1) == 0)
    {
      *(a1 + 112) = 1;
    }

    *(a1 + 96) = a2;
    *(a1 + 104) = 2;
  }

  return result;
}

BOOL VZDataInfoSetTimestampSteadyNanoseconds(uint64_t a1, uint64_t a2)
{
  result = sub_2711477FC("VZDataInfoSetTimestampSteadyNanoseconds", a1);
  if (!result)
  {
    if ((*(a1 + 112) & 1) == 0)
    {
      *(a1 + 112) = 1;
    }

    *(a1 + 96) = a2;
    *(a1 + 104) = 4;
  }

  return result;
}

BOOL VZDataInfoSetTimestampChronologicalNanoseconds(uint64_t a1, uint64_t a2)
{
  result = sub_2711477FC("VZDataInfoSetTimestampChronologicalNanoseconds", a1);
  if (!result)
  {
    if ((*(a1 + 112) & 1) == 0)
    {
      *(a1 + 112) = 1;
    }

    *(a1 + 96) = a2;
    *(a1 + 104) = 1;
  }

  return result;
}

BOOL VZDataInfoSetTimestamp(uint64_t a1, uint64_t a2)
{
  result = sub_2711477FC("VZDataInfoSetTimestamp", a1);
  if (!result)
  {
    if (a2)
    {
      if (*(a1 + 112))
      {
        *(a1 + 112) = 0;
      }

      *(a1 + 96) = *(a2 + 16);
      v5 = 1;
    }

    else
    {
      if ((*(a1 + 112) & 1) == 0)
      {
        return result;
      }

      v5 = 0;
    }

    *(a1 + 112) = v5;
  }

  return result;
}

BOOL VZDataInfoSetLogTimestampNanoseconds(uint64_t a1, uint64_t a2)
{
  result = sub_2711477FC("VZDataInfoSetLogTimestampNanoseconds", a1);
  if (!result)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      *(a1 + 48) = 1;
    }

    *(a1 + 32) = a2;
    *(a1 + 40) = 2;
  }

  return result;
}

void *VZDataInfoGetTimestamp(uint64_t a1)
{
  if (sub_271147C78("VZDataInfoGetTimestamp", a1))
  {
    return 0;
  }

  sub_271145CA8(&v4, (a1 + 96), (a1 + 456));
  result = v4;
  if (v4)
  {
    v3 = v4;
    (*(*v4 + 24))();
    return v3;
  }

  return result;
}

void *VZDataInfoGetLogTimestamp(uint64_t a1)
{
  if (sub_271147C78("VZDataInfoGetLogTimestamp", a1))
  {
    return 0;
  }

  LOBYTE(v6) = 0;
  v7 = 0;
  if (*(a1 + 48) == 1)
  {
    v6 = *(a1 + 32);
    v7 = 1;
  }

  sub_271145CA8(&v8, &v6, (a1 + 448));
  result = v8;
  if (v8)
  {
    v5 = v8;
    (*(*v8 + 24))(v8, v3, v4);
    return v5;
  }

  return result;
}

uint64_t VZDataInfoAddReferenceFromString(uint64_t a1, char *a2)
{
  if (sub_2711477FC("VZDataInfoAddReferenceFromString", a1) || sub_271146460("VZDataInfoAddReferenceFromString", a2, 0))
  {
    return 0;
  }

  return sub_2711D9C50(a1 + 32, a2);
}

uint64_t VZDataInfoAddReference(uint64_t a1, uint64_t a2)
{
  if (sub_2711477FC("VZDataInfoAddReference", a1) || sub_2711470F0("VZDataInfoAddReference", a2))
  {
    return 0;
  }

  return sub_2711D9B10(a1 + 32, a2 + 32);
}

unint64_t VZDataInfoGetReferenceCount(uint64_t a1)
{
  if (sub_271147C78("VZDataInfoGetReferenceCount", a1) || *(a1 + 248) != 1)
  {
    return 0;
  }

  else
  {
    return 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 232) - *(a1 + 224)) >> 5);
  }
}

uint64_t VZDataInfoGetReferenceAt(uint64_t a1, unint64_t a2)
{
  v64 = *MEMORY[0x277D85DE8];
  if (sub_271147C78("VZDataInfoGetReferenceAt", a1))
  {
    return 0;
  }

  sub_2711D9E20(a1 + 32, a2, &v49);
  if ((v61 & 1) == 0)
  {
    sub_27112B960(&v49, 0);
    v4 = 0;
    goto LABEL_17;
  }

  v6 = *(a1 + 464);
  v5 = *(a1 + 472);
  v7 = (v5 - v6) >> 3;
  if (v7 <= a2)
  {
    v17 = a2 + 1;
    v18 = a2 + 1 - v7;
    if (a2 + 1 <= v7)
    {
      if (a2 + 1 < v7)
      {
        v22 = (v6 + 8 * v17);
        while (v5 != v22)
        {
          v24 = *--v5;
          v23 = v24;
          *v5 = 0;
          if (v24)
          {
            (*(*v23 + 24))(v23);
          }
        }

        *(a1 + 472) = v22;
      }
    }

    else
    {
      v19 = *(a1 + 480);
      if (v18 > (v19 - v5) >> 3)
      {
        if (!(v17 >> 61))
        {
          v20 = v19 - v6;
          if (v20 >> 2 > v17)
          {
            v17 = v20 >> 2;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v17;
          }

          if (!(v21 >> 61))
          {
            operator new();
          }

          sub_2711270EC();
        }

        sub_271135560();
      }

      bzero(*(a1 + 472), 8 * v18);
      *(a1 + 472) = &v5[v18];
    }
  }

  v8 = *(a1 + 464);
  v4 = *(v8 + 8 * a2);
  if (!v4)
  {
    v9 = operator new(0xC0uLL, MEMORY[0x277D826F0]);
    v10 = v9;
    if (!v9)
    {
      if ((atomic_load_explicit(&qword_280879DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879DA8))
      {
        sub_2718519B4(qword_280879E30, "VZReferenceID]", 0xDuLL);
        __cxa_guard_release(&qword_280879DA8);
      }

      if ((atomic_load_explicit(&qword_280879DC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879DC0))
      {
        sub_2718519B4(&xmmword_280879E78, "cv3d::vl::visual_logger::ReferenceID]", 0x24uLL);
        __cxa_guard_release(&qword_280879DC0);
      }

      if (byte_280879E8F < 0)
      {
        sub_271127178(&v62, xmmword_280879E78, *(&xmmword_280879E78 + 1));
      }

      else
      {
        v62 = xmmword_280879E78;
        v63 = unk_280879E88;
      }

      sub_2711309E8(&v47, &v62, 1uLL);
      LOBYTE(v36) = 0;
      v46 = 0;
      sub_27112E0C4(qword_280879E30, &v47, &v36, 0);
      if (v46 == 1 && v45 == 1)
      {
        if (v44 == 1)
        {
          if (v43 < 0)
          {
            operator delete(v42);
          }

          if (v41 < 0)
          {
            operator delete(v40);
          }
        }

        if (v39 == 1 && v38 < 0)
        {
          operator delete(v37);
        }
      }

      v32 = v47;
      if (v47)
      {
        v33 = v48;
        v34 = v47;
        if (v48 != v47)
        {
          do
          {
            v35 = *(v33 - 1);
            v33 -= 3;
            if (v35 < 0)
            {
              operator delete(*v33);
            }
          }

          while (v33 != v32);
          v34 = v47;
        }

        v48 = v32;
        operator delete(v34);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      v13 = 0;
      v14 = *(v8 + 8 * a2);
      *(v8 + 8 * a2) = 0;
      if (!v14)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    *v9 = &unk_288117810;
    v9[32] = 0;
    v9[56] = 0;
    if (v51 == 1)
    {
      *(v9 + 2) = v49;
      *(v9 + 6) = v50;
      v50 = 0;
      v49 = 0uLL;
      v9[56] = 1;
      v9[64] = 0;
      v11 = v9 + 64;
      v9[112] = 0;
      if (v55 != 1)
      {
LABEL_9:
        v9[128] = 0;
        v12 = v9 + 128;
        v9[152] = 0;
        if (v58 != 1)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v9[64] = 0;
      v11 = v9 + 64;
      v9[112] = 0;
      if (v55 != 1)
      {
        goto LABEL_9;
      }
    }

    _X0 = 0;
    _X1 = 0;
    *(v11 + 2) = v53;
    *v11 = v52;
    v53 = 0;
    v52 = 0uLL;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    *(v10 + 12) = _X0;
    *(v10 + 13) = 0;
    v10[112] = 1;
    v10[128] = 0;
    v12 = v10 + 128;
    v10[152] = 0;
    if (v58 != 1)
    {
LABEL_11:
      *(v10 + 10) = v59;
      *(v10 + 22) = v60;
      *(v10 + 46) = 1;
      *v10 = &unk_28812D360;
      *(v10 + 2) = &unk_28812D3B0;
      atomic_fetch_add(v10 + 46, 1u);
      v13 = v10;
      v14 = *(v8 + 8 * a2);
      *(v8 + 8 * a2) = v10;
      if (!v14)
      {
LABEL_13:
        if (v10)
        {
          (*(*v13 + 24))(v13);
        }

        v4 = *(v8 + 8 * a2);
        goto LABEL_17;
      }

LABEL_12:
      (*(*v14 + 24))(v14);
      goto LABEL_13;
    }

LABEL_10:
    *v12 = __p;
    *(v12 + 2) = v57;
    v57 = 0;
    __p = 0uLL;
    v10[152] = 1;
    goto LABEL_11;
  }

LABEL_17:
  if (v61 == 1)
  {
    if (v58 == 1 && SHIBYTE(v57) < 0)
    {
      operator delete(__p);
    }

    if (v55 == 1 && SHIBYTE(v53) < 0)
    {
      operator delete(v52);
    }

    if (v51 == 1 && SHIBYTE(v50) < 0)
    {
      v15 = &v49;
LABEL_36:
      operator delete(*v15);
    }
  }

  else if (v57 == 1)
  {
    if (BYTE8(__p) == 1)
    {
      if (SBYTE7(__p) < 0)
      {
        operator delete(v55);
      }

      if (v54 < 0)
      {
        operator delete(v53);
      }
    }

    if (BYTE8(v52) == 1 && SBYTE7(v52) < 0)
    {
      v15 = &v50;
      goto LABEL_36;
    }
  }

  return v4;
}

void sub_271149414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_280879DC0);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VZDataGetTypeID()
{
  if (atomic_load_explicit(&qword_280879E10, memory_order_acquire))
  {
    return qword_280879E08;
  }

  if (__cxa_guard_acquire(&qword_280879E10))
  {
    qword_280879E08 = sub_27112B4B8();
    __cxa_guard_release(&qword_280879E10);
  }

  return qword_280879E08;
}

uint64_t VZDataGetPackageID(uint64_t a1)
{
  v2 = sub_271133B3C("VZDataGetPackageID", a1, 0);
  result = 0;
  if (!v2)
  {
    v6 = *(a1 + 32);
    v5 = a1 + 32;
    v4 = v6;
    if (*(v5 + 23) >= 0)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t VZDataGetDataTypeID(uint64_t a1)
{
  if (sub_271133B3C("VZDataGetDataTypeID", a1, 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(a1 + 56);
  }
}

_OWORD *VZDataGetDataInfo(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = sub_271133B3C("VZDataGetDataInfo", a1, 0);
  result = 0;
  if (!v2)
  {
    result = *(a1 + 576);
    if (!result)
    {
      v4 = operator new(0x1F0uLL, MEMORY[0x277D826F0]);
      if (v4)
      {
        *v4 = &unk_288117810;
        v4[2] = *(a1 + 64);
        *(v4 + 6) = *(a1 + 80);
        v5 = v4;
        sub_27113523C((v4 + 4), (a1 + 96));
        result = v5;
        *(v5 + 256) = 0;
        *(v5 + 416) = 0;
        if (*(a1 + 448) == 1)
        {
          sub_271135578((v5 + 16), (a1 + 288));
          result = v5;
          *(v5 + 352) = 0;
          *(v5 + 376) = 0;
          if (*(a1 + 408) == 1)
          {
            if (*(a1 + 407) < 0)
            {
              sub_271127178(v5 + 352, *(a1 + 384), *(a1 + 392));
            }

            else
            {
              v5[22] = *(a1 + 384);
              *(v5 + 46) = *(a1 + 400);
            }

            result = v5;
            *(v5 + 376) = 1;
          }

          result[24] = *(a1 + 416);
          *(result + 50) = *(a1 + 432);
          *(result + 416) = 1;
        }

        *(result + 108) = 1;
        *result = &unk_288119BC8;
        *(result + 2) = &unk_288119C18;
        *(result + 440) = 0u;
        *(result + 456) = 0u;
        *(result + 472) = 0u;
        v6 = *(a1 + 576);
        *(a1 + 576) = result;
        if (v6)
        {
LABEL_12:
          (*(*v6 + 24))(v6);
          return *(a1 + 576);
        }
      }

      else
      {
        if ((atomic_load_explicit(&qword_280877810, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877810))
        {
          sub_2718519B4(qword_2808777F8, "VZDataInfo]", 0xAuLL);
          __cxa_guard_release(&qword_280877810);
        }

        if ((atomic_load_explicit(&qword_280879DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879DB8))
        {
          sub_27114BA24();
        }

        if (byte_280879E77 < 0)
        {
          sub_271127178(&v24, xmmword_280879E60, *(&xmmword_280879E60 + 1));
        }

        else
        {
          v24 = xmmword_280879E60;
          v25 = unk_280879E70;
        }

        sub_2711309E8(&v22, &v24, 1uLL);
        LOBYTE(v11) = 0;
        v21 = 0;
        sub_27112E0C4(qword_2808777F8, &v22, &v11, 0);
        if (v21 == 1 && v20 == 1)
        {
          if (v19 == 1)
          {
            if (v18 < 0)
            {
              operator delete(__p);
            }

            if (v16 < 0)
            {
              operator delete(v15);
            }
          }

          if (v14 == 1 && v13 < 0)
          {
            operator delete(v12);
          }
        }

        v7 = v22;
        if (v22)
        {
          v8 = v23;
          v9 = v22;
          if (v23 != v22)
          {
            do
            {
              v10 = *(v8 - 1);
              v8 -= 3;
              if (v10 < 0)
              {
                operator delete(*v8);
              }
            }

            while (v8 != v7);
            v9 = v22;
          }

          v23 = v7;
          operator delete(v9);
        }

        if (SHIBYTE(v25) < 0)
        {
          operator delete(v24);
        }

        result = 0;
        v6 = *(a1 + 576);
        *(a1 + 576) = 0;
        if (v6)
        {
          goto LABEL_12;
        }
      }
    }
  }

  return result;
}

void sub_271149988(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_280879DB8);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711499B4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2711499C0);
  }

  sub_271120E50(a1);
}

uint64_t VZDataGetTimestampNanosecondsSinceEpoch(uint64_t a1)
{
  if (sub_271133B3C("VZDataGetTimestampNanosecondsSinceEpoch", a1, 0))
  {
    return 0;
  }

  if (*(a1 + 144) == 1)
  {
    return *(a1 + 128);
  }

  if (*(a1 + 80) != 1)
  {
    return 0;
  }

  sub_2711D9378(a1 + 64, v6);
  result = v6[0];
  if ((v15 & 1) == 0 && v14 == 1)
  {
    if (v13 == 1)
    {
      if (v12 < 0)
      {
        v3 = v6[0];
        operator delete(__p);
        result = v3;
      }

      if (v10 < 0)
      {
        v4 = result;
        operator delete(v9);
        result = v4;
      }
    }

    if (v8 == 1 && v7 < 0)
    {
      v5 = result;
      operator delete(v6[2]);
      return v5;
    }
  }

  return result;
}

uint64_t VZDataGetTimestampClockType(_BYTE *a1)
{
  if (sub_271133B3C("VZDataGetTimestampClockType", a1, 0))
  {
    return 0;
  }

  if (a1[144] == 1)
  {
    return a1[136];
  }

  if (a1[80] != 1)
  {
    return 0;
  }

  sub_2711D9558((a1 + 64), v6);
  result = v6[0];
  if ((v16 & 1) == 0 && v15 == 1)
  {
    if (v14 == 1)
    {
      if (v13 < 0)
      {
        v3 = v6[0];
        operator delete(__p);
        result = v3;
      }

      if (v11 < 0)
      {
        v4 = result;
        operator delete(v10);
        result = v4;
      }
    }

    if (v9 == 1 && v8 < 0)
    {
      v5 = result;
      operator delete(v7);
      return v5;
    }
  }

  return result;
}

uint64_t VZDataGetLogTimestampNanosecondsSinceEpoch(uint64_t a1)
{
  v2 = sub_271133B3C("VZDataGetLogTimestampNanosecondsSinceEpoch", a1, 0);
  result = 0;
  if (!v2)
  {
    sub_2711D9378(a1 + 64, v4);
    v26 = "VZDataGetLogTimestampNanosecondsSinceEpoch";
    if (v13)
    {
      return v4[0];
    }

    sub_27113F150("in function ", &v26);
    sub_271849064(v4, &v14, &v16);
    sub_27112B960(&v16, 0);
    if (v25 == 1)
    {
      if (v24 == 1)
      {
        if (v23 < 0)
        {
          operator delete(__p);
        }

        if (v21 < 0)
        {
          operator delete(v20);
        }
      }

      if (v19 == 1 && v18 < 0)
      {
        operator delete(v17);
      }
    }

    if (v15 < 0)
    {
      operator delete(v14);
      if (v13)
      {
        return 1;
      }
    }

    else if (v13)
    {
      return 1;
    }

    if (v12 != 1)
    {
      return 1;
    }

    if (v11 == 1)
    {
      if (v10 < 0)
      {
        operator delete(v9);
      }

      if (v8 < 0)
      {
        operator delete(v7);
      }
    }

    result = 1;
    if (v6 == 1 && v5 < 0)
    {
      operator delete(v4[2]);
      return 1;
    }
  }

  return result;
}

void sub_271149DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  sub_27112D71C(&a32);
  if (a31 < 0)
  {
    operator delete(__p);
    sub_27112E024(&a10);
    _Unwind_Resume(a1);
  }

  sub_27112E024(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_271149E0C(uint64_t result)
{
  if (atomic_fetch_add((result + 184), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 16) + 8))();
  }

  return result;
}

uint64_t sub_271149E48()
{
  if (atomic_load_explicit(&qword_280879DD0, memory_order_acquire))
  {
    return qword_280879DC8;
  }

  if (__cxa_guard_acquire(&qword_280879DD0))
  {
    qword_280879DC8 = sub_27112B4B8();
    __cxa_guard_release(&qword_280879DD0);
  }

  return qword_280879DC8;
}

char *sub_271149EAC(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812D410, 0);
  if (result)
  {

    return sub_2714FB8D4(a1 + 32, (result + 32));
  }

  return result;
}

void sub_271149F40(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879DA8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280879DA8))
    {
      sub_2718519B4(qword_280879E30, "VZReferenceID]", 0xDuLL);
      __cxa_guard_release(&qword_280879DA8);
    }
  }

  v2 = a1;
  operator new();
}

void sub_27114A44C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_280879DA8);
  __cxa_begin_catch(a1);
  sub_27114B70C();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_280879E30, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x27114A3BCLL);
}

uint64_t sub_27114A59C(uint64_t result)
{
  if (atomic_fetch_add((result + 432), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 16) + 8))();
  }

  return result;
}

uint64_t sub_27114A5D8()
{
  if (atomic_load_explicit(&qword_280879DF0, memory_order_acquire))
  {
    return qword_280879DE8;
  }

  if (__cxa_guard_acquire(&qword_280879DF0))
  {
    qword_280879DE8 = sub_27112B4B8();
    __cxa_guard_release(&qword_280879DF0);
  }

  return qword_280879DE8;
}

void *sub_27114A63C(uint64_t a1, void *lpsrc, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C840, 0);
  if (result)
  {
    v17 = *(a1 + 48);
    v18 = *(result + 48);
    if (v17 == v18 && v17 != 0)
    {
      if (*(a1 + 32) != result[4])
      {
        return 0;
      }

      v17 = *(a1 + 40);
      v18 = *(result + 40);
    }

    if (v17 == v18)
    {
      v21[0] = a1 + 64;
      v21[1] = a1 + 96;
      v21[2] = a1 + 120;
      v21[3] = a1 + 160;
      v21[4] = a1 + 224;
      v20[0] = result + 8;
      v20[1] = result + 12;
      v20[2] = result + 15;
      v20[3] = result + 20;
      v20[4] = result + 28;
      return sub_2714FBB90(v21, v20);
    }

    return 0;
  }

  return result;
}

void sub_27114A788(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877810, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877810))
    {
      sub_2718519B4(qword_2808777F8, "VZDataInfo]", 0xAuLL);
      __cxa_guard_release(&qword_280877810);
    }
  }

  v2 = a1;
  operator new();
}

uint64_t sub_27114AACC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  __cxa_guard_abort(&qword_280877810);
  __cxa_begin_catch(a1);
  v33 = sub_271135110();
  sub_27112B400(v35, "failed to create description");
  sub_27112DB38(v33, v35, 0);
  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  __cxa_end_catch();
  return 0;
}

uint64_t sub_27114ABDC(uint64_t result)
{
  if (atomic_fetch_add((result + 568), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 16) + 8))();
  }

  return result;
}

uint64_t sub_27114AC18()
{
  if (atomic_load_explicit(&qword_280879E10, memory_order_acquire))
  {
    return qword_280879E08;
  }

  if (__cxa_guard_acquire(&qword_280879E10))
  {
    qword_280879E08 = sub_27112B4B8();
    __cxa_guard_release(&qword_280879E10);
  }

  return qword_280879E08;
}

char *sub_27114AC7C(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C370, 0);
  if (result)
  {
    return sub_2711DAAE4((a1 + 32), result + 4);
  }

  return result;
}

uint64_t sub_27114AD00(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  __cxa_begin_catch(a1);
  sub_27114D274();
  sub_27112B400(v20, "failed to compare equal");
  sub_27112DB38(qword_280877838, v20, 0);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  __cxa_end_catch();
  return 0;
}

void sub_27114AD58(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877850))
    {
      sub_2718519B4(qword_280877838, "VZData]", 6uLL);
      __cxa_guard_release(&qword_280877850);
    }
  }

  v2 = a1;
  operator new();
}

void sub_27114B248(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  __cxa_guard_abort(&qword_280877850);
  __cxa_begin_catch(a1);
  sub_27114D274();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_280877838, &__p, 0);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x27114B1B8);
}

void sub_27114B5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27114B624(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 80) == 1 && *(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 24) != 1)
    {
      return a1;
    }

    v2 = a1;
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else
  {
    if (*(a1 + 112) != 1)
    {
      return a1;
    }

    if (*(a1 + 104) == 1)
    {
      if (*(a1 + 103) < 0)
      {
        operator delete(*(a1 + 80));
      }

      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }
    }

    if (*(a1 + 40) != 1 || (*(a1 + 39) & 0x80000000) == 0)
    {
      return a1;
    }

    v2 = (a1 + 16);
  }

  operator delete(*v2);
  return a1;
}

void sub_27114B70C()
{
  if ((atomic_load_explicit(&qword_280879DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879DA8))
  {
    sub_2718519B4(qword_280879E30, "VZReferenceID]", 0xDuLL);

    __cxa_guard_release(&qword_280879DA8);
  }
}

void sub_27114B9E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27114BC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27114BCA4()
{
  if ((atomic_load_explicit(&qword_2808779B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808779B0))
    {
      sub_27114BD2C(&xmmword_280877998);
      __cxa_guard_release(&qword_2808779B0);
    }
  }
}

double sub_27114BD2C@<D0>(uint64_t a1@<X8>)
{
  *(&v11.__r_.__value_.__s + 23) = 4;
  strcpy(&v11, "char");
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

void sub_27114BF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_27114BF30(void (*a1)(void **__return_ptr, uint64_t), uint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  a1(v32, a2);
  v2 = operator new(0xC0uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (!v2)
  {
    if ((v40 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  *v2 = &unk_288117810;
  v2[32] = 0;
  v2[56] = 0;
  if (v34 == 1)
  {
    *(v2 + 2) = *v32;
    *(v2 + 6) = v33;
    v32[1] = 0;
    v33 = 0;
    v32[0] = 0;
    v2[56] = 1;
    v2[64] = 0;
    v4 = v2 + 64;
    v2[112] = 0;
    if (v37 != 1)
    {
LABEL_4:
      v2[128] = 0;
      v5 = v2 + 128;
      v2[152] = 0;
      v6 = v40;
      if (v40 != 1)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else
  {
    v2[64] = 0;
    v4 = v2 + 64;
    v2[112] = 0;
    if (v37 != 1)
    {
      goto LABEL_4;
    }
  }

  _X0 = 0;
  _X1 = 0;
  *(v4 + 2) = v36;
  *v4 = *v35;
  v35[1] = 0;
  v36 = 0;
  v35[0] = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  *(v3 + 12) = _X0;
  *(v3 + 13) = 0;
  v3[112] = 1;
  v3[128] = 0;
  v5 = v3 + 128;
  v3[152] = 0;
  v6 = v40;
  if (v40 == 1)
  {
LABEL_5:
    *v5 = *__p;
    *(v5 + 2) = v39;
    __p[1] = 0;
    v39 = 0;
    __p[0] = 0;
    v3[152] = 1;
  }

LABEL_6:
  *(v3 + 10) = v41;
  *(v3 + 22) = v42;
  *(v3 + 46) = 1;
  *v3 = &unk_28812D360;
  *(v3 + 2) = &unk_28812D3B0;
  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_11:
  if (v37 == 1 && SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }

  if (v34 == 1 && SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  if (!v3)
  {
    if ((atomic_load_explicit(&qword_280879DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879DA8))
    {
      sub_2718519B4(qword_280879E30, "VZReferenceID]", 0xDuLL);
      __cxa_guard_release(&qword_280879DA8);
    }

    if ((atomic_load_explicit(&qword_2808779D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808779D0))
    {
      sub_27114C390(&xmmword_2808779B8);
      __cxa_guard_release(&qword_2808779D0);
    }

    if (byte_2808779CF < 0)
    {
      sub_271127178(v30, xmmword_2808779B8, *(&xmmword_2808779B8 + 1));
    }

    else
    {
      *v30 = xmmword_2808779B8;
      v31 = unk_2808779C8;
    }

    sub_2711309E8(v32, v30, 1uLL);
    LOBYTE(v19) = 0;
    v29 = 0;
    sub_27112E0C4(qword_280879E30, v32, &v19, 0);
    if (v29 == 1 && v28 == 1)
    {
      if (v27 == 1)
      {
        if (v26 < 0)
        {
          operator delete(v25);
        }

        if (v24 < 0)
        {
          operator delete(v23);
        }
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20);
      }
    }

    v14 = v32[0];
    if (v32[0])
    {
      v15 = v32[1];
      v16 = v32[0];
      if (v32[1] != v32[0])
      {
        do
        {
          v17 = *(v15 - 1);
          v15 -= 3;
          if (v17 < 0)
          {
            operator delete(*v15);
          }
        }

        while (v15 != v14);
        v16 = v32[0];
      }

      v32[1] = v14;
      operator delete(v16);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[0]);
    }

    return 0;
  }

  return v3;
}

void sub_27114C328(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_2808779D0);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27114C368(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x27114C0B4);
  }

  JUMPOUT(0x27114C360);
}

void sub_27114C380(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x27114C388);
  }

  JUMPOUT(0x27114C360);
}

double sub_27114C390@<D0>(uint64_t a1@<X8>)
{
  *(&v17.__r_.__value_.__s + 23) = 4;
  strcpy(&v17, "char");
  v2 = std::string::insert(&v17, 0, "const ", 6uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v16 = v2->__r_.__value_.__r.__words[2];
  v15 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
    v4 = SHIBYTE(v16);
    if ((SHIBYTE(v16) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v5 = &v15;
      if (v4 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = SHIBYTE(v16);
    if ((SHIBYTE(v16) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v4 = *(&v15 + 1);
  v6 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v6 == *(&v15 + 1))
  {
    if ((v16 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_8:
    operator new();
  }

  v5 = v15;
LABEL_10:
  *(v5 + v4) = 42;
  v7 = v4 + 1;
  if (SHIBYTE(v16) < 0)
  {
    *(&v15 + 1) = v7;
  }

  else
  {
    HIBYTE(v16) = v7 & 0x7F;
  }

  *(v5 + v7) = 0;
  v14 = v16;
  v13 = v15;
  v8 = SHIBYTE(v16);
  if ((SHIBYTE(v16) & 0x8000000000000000) != 0)
  {
    v8 = *(&v13 + 1);
    v10 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v10 == *(&v13 + 1))
    {
      if ((v14 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

LABEL_18:
      operator new();
    }

    v9 = v13;
  }

  else
  {
    v9 = &v13;
    if (SHIBYTE(v16) == 22)
    {
      goto LABEL_18;
    }
  }

  *(v9 + v8) = 38;
  v11 = v8 + 1;
  if (SHIBYTE(v14) < 0)
  {
    *(&v13 + 1) = v11;
  }

  else
  {
    HIBYTE(v14) = v11 & 0x7F;
  }

  *(v9 + v11) = 0;
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  return result;
}

void sub_27114C6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_27114C6DC()
{
  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "VZReferenceID");
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
  xmmword_280879EA8 = v7;
  unk_280879EB8 = v8;
  return result;
}

void sub_27114C900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_27114C940()
{
  *(&__p.__r_.__value_.__s + 23) = 10;
  strcpy(&__p, "VZDataInfo");
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
  xmmword_280879EC0 = v5;
  unk_280879ED0 = v6;
  return result;
}

void sub_27114CB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_27114CB44()
{
  if ((atomic_load_explicit(&qword_2808779F0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2808779F0))
  {
    return qword_2808779D8;
  }

  sub_27114CBDC(qword_2808779D8);
  __cxa_guard_release(&qword_2808779F0);
  return qword_2808779D8;
}

void sub_27114CBDC(std::string *a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "std::optional");
  sub_27184BC8C(v2, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_27114CCC0(v2, a1);
  if (v3 < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_27114CC90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27114CCC0(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 11;
  strcpy(&v9, "std::string");
  sub_2711309E8(__p, &v9, 1uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }
}

void sub_27114CDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_27114CDE4()
{
  *(&__p.__r_.__value_.__s + 23) = 10;
  strcpy(&__p, "VZDataInfo");
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
  xmmword_280879ED8 = v7;
  unk_280879EE8 = v8;
  return result;
}

void sub_27114D008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27114D218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27114D274()
{
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4(qword_280877838, "VZData]", 6uLL);

    __cxa_guard_release(&qword_280877850);
  }
}

void VZDataCreateNumbersWithCFData(CFTypeRef cf, char a2, uint64_t a3, uint64_t a4)
{
  v5[53] = *MEMORY[0x277D85DE8];
  if (cf)
  {
    CFRetain(cf);
  }

  sub_2711C268C(v5, cf);
}

std::__shared_weak_count *sub_27114D5CC(void (*a1)(__int128 *__return_ptr, __int128 *, uint64_t, __int128 *), uint64_t a2, __int128 *a3, unsigned __int8 *a4, __int128 *a5)
{
  v91 = *MEMORY[0x277D85DE8];
  v46 = a2;
  v45 = &v46;
  v44 = *a3;
  *a3 = 0uLL;
  v5 = *a4;
  LOBYTE(v47) = 0;
  v79 = 0;
  if (*(a5 + 400) == 1)
  {
    v47 = *a5;
    v48 = *(a5 + 2);
    LOBYTE(v49) = 0;
    v51 = 0;
    if (*(a5 + 56) == 1)
    {
      v49 = a5[2];
      v50 = *(a5 + 6);
      *(a5 + 40) = 0uLL;
      *(a5 + 4) = 0;
      v51 = 1;
    }

    v52 = a5[4];
    v53 = *(a5 + 10);
    LOBYTE(v54) = 0;
    v56 = 0;
    if (*(a5 + 112) == 1)
    {
      v54 = *(a5 + 88);
      v55 = *(a5 + 13);
      a5[6] = 0uLL;
      *(a5 + 11) = 0;
      v56 = 1;
      LOBYTE(v57) = 0;
      v61 = 0;
      if (*(a5 + 176) != 1)
      {
LABEL_6:
        LOBYTE(v62[0]) = 0;
        v64 = 0;
        if (*(a5 + 216) != 1)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else
    {
      LOBYTE(v57) = 0;
      v61 = 0;
      if (*(a5 + 176) != 1)
      {
        goto LABEL_6;
      }
    }

    _X2 = 0;
    _X3 = 0;
    v58 = *(a5 + 18);
    v57 = a5[8];
    *(a5 + 136) = 0uLL;
    *(a5 + 16) = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }

    v59 = _X2;
    v60 = 0;
    v61 = 1;
    LOBYTE(v62[0]) = 0;
    v64 = 0;
    if (*(a5 + 216) != 1)
    {
LABEL_7:
      LOBYTE(v65) = 0;
      v78 = 0;
      if (*(a5 + 384) != 1)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

LABEL_11:
    *v62 = a5[12];
    v63 = *(a5 + 26);
    *(a5 + 200) = 0uLL;
    *(a5 + 24) = 0;
    v64 = 1;
    LOBYTE(v65) = 0;
    v78 = 0;
    if (*(a5 + 384) != 1)
    {
LABEL_17:
      v79 = 1;
      goto LABEL_18;
    }

LABEL_12:
    LOBYTE(v65) = 0;
    v67 = 0;
    if (*(a5 + 248) == 1)
    {
      v65 = a5[14];
      v66 = *(a5 + 30);
      *(a5 + 232) = 0uLL;
      *(a5 + 28) = 0;
      v67 = 1;
      LOBYTE(v68) = 0;
      v72 = 0;
      if (*(a5 + 304) != 1)
      {
LABEL_14:
        LOBYTE(__p) = 0;
        v75 = 0;
        if (*(a5 + 344) != 1)
        {
LABEL_16:
          v76 = a5[22];
          v77 = *(a5 + 46);
          v78 = 1;
          goto LABEL_17;
        }

LABEL_15:
        __p = a5[20];
        v74 = *(a5 + 42);
        *(a5 + 328) = 0uLL;
        *(a5 + 40) = 0;
        v75 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v68) = 0;
      v72 = 0;
      if (*(a5 + 304) != 1)
      {
        goto LABEL_14;
      }
    }

    _X2 = 0;
    _X3 = 0;
    v68 = a5[16];
    v69 = *(a5 + 34);
    *(a5 + 264) = 0uLL;
    *(a5 + 32) = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X10] }

    v70 = _X2;
    v71 = 0;
    v72 = 1;
    LOBYTE(__p) = 0;
    v75 = 0;
    if (*(a5 + 344) != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_18:
  a1(&v80, &v44, v5, &v47);
  if (v79 != 1)
  {
    goto LABEL_55;
  }

  if (v78 == 1)
  {
    if (v75 == 1 && SHIBYTE(v74) < 0)
    {
      operator delete(__p);
    }

    if (v72 == 1 && SHIBYTE(v69) < 0)
    {
      operator delete(v68);
    }

    if (v67 == 1 && SHIBYTE(v66) < 0)
    {
      operator delete(v65);
    }
  }

  if (v64 == 1)
  {
    v13 = v62[0];
    if (v62[0])
    {
      v14 = v62[1];
      v15 = v62[0];
      if (v62[1] == v62[0])
      {
LABEL_45:
        v62[1] = v13;
        operator delete(v15);
        goto LABEL_46;
      }

      while (1)
      {
        v16 = v14;
        if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
        {
          operator delete(*(v14 - 8));
          v14 -= 12;
          if (*(v16 - 72) == 1)
          {
LABEL_37:
            if (*(v16 - 73) < 0)
            {
              operator delete(*v14);
            }
          }
        }

        else
        {
          v14 -= 12;
          if (*(v16 - 72) == 1)
          {
            goto LABEL_37;
          }
        }

        if (v14 == v13)
        {
          v15 = v62[0];
          goto LABEL_45;
        }
      }
    }
  }

LABEL_46:
  if (v61 == 1 && SHIBYTE(v58) < 0)
  {
    operator delete(v57);
  }

  if (v56 == 1 && SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  if (v51 == 1 && SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

LABEL_55:
  v20 = *(&v44 + 1);
  if (!*(&v44 + 1) || atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v21 = v90;
    if (v90)
    {
      goto LABEL_58;
    }

LABEL_70:
    v35 = v80;
    v24 = v36;
    v36[0] = 0;
    v42 = 0;
    if (v89 == 1)
    {
      sub_27112F6CC(v36, &v81);
      v42 = 1;
    }

    v43 = 1;
    sub_27115100C(&v45, &v35);
    if (v43 == 1 && v42 == 1)
    {
      if (v41 == 1)
      {
        if (v40 < 0)
        {
          operator delete(v39);
        }

        if (v38 < 0)
        {
          operator delete(v37);
        }
      }

      if (v36[24] == 1 && (v36[23] & 0x80000000) != 0)
      {
        goto LABEL_81;
      }
    }

    goto LABEL_83;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  v21 = v90;
  if ((v90 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_58:
  v22 = sub_271135F14(&v80);
  sub_271135E2C(v22);
  v20 = v23;
  if (v23)
  {
    goto LABEL_83;
  }

  v26[0] = 0;
  v34 = 0;
  sub_27115100C(&v45, v26);
  if (v34 != 1 || v33 != 1)
  {
    goto LABEL_82;
  }

  if (v32 == 1)
  {
    if (v31 < 0)
    {
      operator delete(v30);
    }

    if (v29 < 0)
    {
      operator delete(v28);
    }
  }

  v20 = 0;
  if (v27[24] == 1 && (v27[23] & 0x80000000) != 0)
  {
    v24 = v27;
LABEL_81:
    operator delete(*v24);
LABEL_82:
    v20 = 0;
  }

LABEL_83:
  if (v90 == 1)
  {
    sub_27113681C(&v80);
  }

  else if (v89 == 1)
  {
    if (v88 == 1)
    {
      if (v87 < 0)
      {
        operator delete(v86);
      }

      if (v85 < 0)
      {
        operator delete(v84);
      }
    }

    if (v83 == 1 && v82 < 0)
    {
      operator delete(v81);
    }
  }

  if ((v21 & 1) == 0)
  {
    return 0;
  }

  return v20;
}

void sub_27114DC48(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, const char *a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, __int128 a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, std::logic_error a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    sub_2711307D4(&STACK[0x200]);
    sub_271137BDC(&STACK[0x4C0]);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::logic_error::logic_error(&a55, exception_ptr);
      a55.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(a1);
      a32 = std::logic_error::what(&a55);
      sub_27113604C(&__p, &a32);
      sub_271369D54(&__p, &STACK[0x4C0]);
      a16 = *&STACK[0x4C0];
      sub_27184A2B4(&a17, &STACK[0x4D0]);
      a30 = 1;
      sub_27115100C(&STACK[0x310], &a16);
      sub_2711307D4(&a16);
      sub_27112D71C(&STACK[0x4C0]);
      if (a15 == 1 && a14 < 0)
      {
        operator delete(__p);
      }

      MEMORY[0x2743BE520](&a55);
      __cxa_end_catch();
    }

    else if (a2 == 2)
    {
      v68 = __cxa_get_exception_ptr(a1);
      sub_271135FD0(&a55, v68);
      __cxa_begin_catch(a1);
      v69 = (a58 + 48);
      if (*(a58 + 71) < 0)
      {
        v69 = *v69;
      }

      a32 = v69;
      sub_27113604C(&a33, &a32);
      sub_27136A868(&a33, &STACK[0x4C0]);
      a40 = *&STACK[0x4C0];
      sub_27184A2B4(&a41, &STACK[0x4D0]);
      a54 = 1;
      sub_27115100C(&STACK[0x310], &a40);
      sub_2711307D4(&a40);
      sub_27112D71C(&STACK[0x4C0]);
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
      sub_27115100C(&STACK[0x310], &a60);
      sub_2711307D4(&a60);
      __cxa_end_catch();
    }

    JUMPOUT(0x27114DC10);
  }

  _Unwind_Resume(a1);
}

void VZDataCreatePoints2WithCFData(CFTypeRef cf, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v5[53] = *MEMORY[0x277D85DE8];
  if (cf)
  {
    CFRetain(cf);
  }

  sub_2711C268C(v5, cf);
}

void VZDataCreatePoints3WithCFData(CFTypeRef cf, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v5[53] = *MEMORY[0x277D85DE8];
  if (cf)
  {
    CFRetain(cf);
  }

  sub_2711C268C(v5, cf);
}

void VZDataCreateLines2WithCFData(CFTypeRef cf, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v5[53] = *MEMORY[0x277D85DE8];
  if (cf)
  {
    CFRetain(cf);
  }

  sub_2711C268C(v5, cf);
}

void VZDataCreateLines3WithCFData(CFTypeRef cf, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v5[53] = *MEMORY[0x277D85DE8];
  if (cf)
  {
    CFRetain(cf);
  }

  sub_2711C268C(v5, cf);
}

void sub_27114F214(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const char *a11, std::logic_error a12, int a13, __int16 a14, char a15, char a16, char a17, __int128 a18, __int128 a19, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::runtime_error __p, int a33, __int16 a34, char a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  if (a2)
  {
    sub_2711307D4(&a40);
    sub_271137BDC(&STACK[0x4C0]);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::logic_error::logic_error(&a12, exception_ptr);
      a12.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(a1);
      a11 = std::logic_error::what(&a12);
      sub_27113604C(&__p, &a11);
      sub_271369D54(&__p, &a18);
      *&STACK[0x4C0] = a18;
      sub_27184A2B4(&STACK[0x4D0], &a19);
      LOBYTE(STACK[0x538]) = 1;
      sub_2711514AC(&a58, &STACK[0x4C0]);
      sub_2711307D4(&STACK[0x4C0]);
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
      v60 = __cxa_get_exception_ptr(a1);
      sub_271135FD0(&__p, v60);
      __cxa_begin_catch(a1);
      v61 = (a38 + 48);
      if (*(a38 + 71) < 0)
      {
        v61 = *v61;
      }

      a11 = v61;
      sub_27113604C(&a12, &a11);
      sub_27136A868(&a12, &a18);
      *&STACK[0x4C0] = a18;
      sub_27184A2B4(&STACK[0x4D0], &a19);
      LOBYTE(STACK[0x538]) = 1;
      sub_2711514AC(&a58, &STACK[0x4C0]);
      sub_2711307D4(&STACK[0x4C0]);
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
      LOBYTE(STACK[0x4C0]) = 0;
      LOBYTE(STACK[0x538]) = 0;
      sub_2711514AC(&a58, &STACK[0x4C0]);
      sub_2711307D4(&STACK[0x4C0]);
      __cxa_end_catch();
    }

    JUMPOUT(0x27114F03CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t VZDataGetCFDictionary(uint64_t a1, void *a2)
{
  if (!sub_271133B3C("VZDataGetCFDictionary", a1, a2))
  {
    sub_2711E5D30(a1 + 32, &v4);
  }

  return 0;
}

void sub_27114F624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27113827C(va);
  _Unwind_Resume(a1);
}

void VZDataCreateNumberWithCFNumber(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    CFRetain(cf);
  }

  sub_27143B84C(&v4, cf);
}

void sub_27114FEA8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::runtime_error __p, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if (a2)
  {
    sub_2711307D4(&a38);
    sub_271137BDC(&STACK[0x4B0]);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::logic_error::logic_error(&a10, exception_ptr);
      a10.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(a1);
      a9 = std::logic_error::what(&a10);
      sub_27113604C(&__p, &a9);
      sub_271369D54(&__p, &a16);
      *&STACK[0x4B0] = a16;
      sub_27184A2B4(&STACK[0x4C0], &a17);
      LOBYTE(STACK[0x528]) = 1;
      sub_271151D5C(&a56, &STACK[0x4B0]);
      sub_2711307D4(&STACK[0x4B0]);
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
      v58 = __cxa_get_exception_ptr(a1);
      sub_271135FD0(&__p, v58);
      __cxa_begin_catch(a1);
      v59 = (a36 + 48);
      if (*(a36 + 71) < 0)
      {
        v59 = *v59;
      }

      a9 = v59;
      sub_27113604C(&a10, &a9);
      sub_27136A868(&a10, &a16);
      *&STACK[0x4B0] = a16;
      sub_27184A2B4(&STACK[0x4C0], &a17);
      LOBYTE(STACK[0x528]) = 1;
      sub_271151D5C(&a56, &STACK[0x4B0]);
      sub_2711307D4(&STACK[0x4B0]);
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
      LOBYTE(STACK[0x4B0]) = 0;
      LOBYTE(STACK[0x528]) = 0;
      sub_271151D5C(&a56, &STACK[0x4B0]);
      sub_2711307D4(&STACK[0x4B0]);
      __cxa_end_catch();
    }

    JUMPOUT(0x27114FD18);
  }

  _Unwind_Resume(a1);
}

void VZDataCreateBlobWithCFData(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    CFRetain(cf);
  }

  sub_2711C268C(&v4, cf);
}

void sub_27115095C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::runtime_error __p, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if (a2)
  {
    sub_2711307D4(&a38);
    sub_271137BDC(&STACK[0x4B0]);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::logic_error::logic_error(&a10, exception_ptr);
      a10.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(a1);
      a9 = std::logic_error::what(&a10);
      sub_27113604C(&__p, &a9);
      sub_271369D54(&__p, &a16);
      *&STACK[0x4B0] = a16;
      sub_27184A2B4(&STACK[0x4C0], &a17);
      LOBYTE(STACK[0x528]) = 1;
      sub_271152108(&a56, &STACK[0x4B0]);
      sub_2711307D4(&STACK[0x4B0]);
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
      v58 = __cxa_get_exception_ptr(a1);
      sub_271135FD0(&__p, v58);
      __cxa_begin_catch(a1);
      v59 = (a36 + 48);
      if (*(a36 + 71) < 0)
      {
        v59 = *v59;
      }

      a9 = v59;
      sub_27113604C(&a10, &a9);
      sub_27136A868(&a10, &a16);
      *&STACK[0x4B0] = a16;
      sub_27184A2B4(&STACK[0x4C0], &a17);
      LOBYTE(STACK[0x528]) = 1;
      sub_271152108(&a56, &STACK[0x4B0]);
      sub_2711307D4(&STACK[0x4B0]);
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
      LOBYTE(STACK[0x4B0]) = 0;
      LOBYTE(STACK[0x528]) = 0;
      sub_271152108(&a56, &STACK[0x4B0]);
      sub_2711307D4(&STACK[0x4B0]);
      __cxa_end_catch();
    }

    JUMPOUT(0x2711507CCLL);
  }

  _Unwind_Resume(a1);
}

void sub_271150BA0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  sub_271150CCC(&v4, v3);
}

void sub_271150ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_271150F50(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271150F88(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_271150FAC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_27115100C(void ***a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4(qword_280877838, "VZData]", 6uLL);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_280877930, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877930))
  {
    sub_27113A3FC();
  }

  if (byte_28087792F < 0)
  {
    sub_271127178(&v21, xmmword_280877918, *(&xmmword_280877918 + 1));
  }

  else
  {
    v21 = xmmword_280877918;
    v22 = unk_280877928;
  }

  if ((atomic_load_explicit(&qword_280877A30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A30))
  {
    sub_2718519B4(&xmmword_280877A18, "cv3d::kit::ArithmeticType]", 0x19uLL);
    __cxa_guard_release(&qword_280877A30);
  }

  if (byte_280877A2F < 0)
  {
    sub_271127178(&v23, xmmword_280877A18, *(&xmmword_280877A18 + 1));
  }

  else
  {
    v23 = xmmword_280877A18;
    v24 = unk_280877A28;
  }

  if ((atomic_load_explicit(&qword_280877830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877830))
  {
    sub_271135818();
  }

  if (byte_28087782F < 0)
  {
    sub_271127178(&v25, xmmword_280877818, *(&xmmword_280877818 + 1));
  }

  else
  {
    v25 = xmmword_280877818;
    v26 = unk_280877828;
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

void sub_2711513AC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
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

void sub_2711514AC(void ***a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4(qword_280877838, "VZData]", 6uLL);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_280877A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A50))
  {
    sub_271151850();
  }

  if (byte_280877A4F < 0)
  {
    sub_271127178(&v21, xmmword_280877A38, *(&xmmword_280877A38 + 1));
  }

  else
  {
    v21 = xmmword_280877A38;
    v22 = unk_280877A48;
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

void sub_2711517AC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_271151924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271151954(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 14;
  strcpy(&__p, "__CFDictionary");
  sub_27184BC8C(&v9, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v1 = std::string::insert(&v9, 0, "const ", 6uLL);
  v2 = *&v1->__r_.__value_.__l.__data_;
  v8 = v1->__r_.__value_.__r.__words[2];
  v7 = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v3 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v4 = &v7;
      if (v3 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v3 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v3 = *(&v7 + 1);
  v5 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v5 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v4 = v7;
LABEL_12:
  *(v4 + v3) = 42;
  v6 = v3 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v6;
  }

  else
  {
    HIBYTE(v8) = v6 & 0x7F;
  }

  *(v4 + v6) = 0;
  *v11 = v7;
  v12 = v8;
  operator new();
}

void sub_271151CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271151D5C(void ***a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4(qword_280877838, "VZData]", 6uLL);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_280879EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879EF0))
  {
    sub_2718519B4(&xmmword_280879EF8, "cv3d::kit::cf::NumberRef]", 0x18uLL);
    __cxa_guard_release(&qword_280879EF0);
  }

  if (byte_280879F0F < 0)
  {
    sub_271127178(&v21, xmmword_280879EF8, *(&xmmword_280879EF8 + 1));
  }

  else
  {
    v21 = xmmword_280879EF8;
    v22 = unk_280879F08;
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

void sub_271152064(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_271152108(void ***a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4(qword_280877838, "VZData]", 6uLL);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_280877930, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877930))
  {
    sub_27113A3FC();
  }

  if (byte_28087792F < 0)
  {
    sub_271127178(&v21, xmmword_280877918, *(&xmmword_280877918 + 1));
  }

  else
  {
    v21 = xmmword_280877918;
    v22 = unk_280877928;
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

void sub_271152408(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_2711527EC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const char *a13, std::logic_error a14, int a15, __int16 a16, char a17, char a18, char a19, __int128 a20, __int128 a21, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::runtime_error __p, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_2711307D4(&a42);
  sub_271154B3C(v59 - 240);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a14, exception_ptr);
    a14.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a13 = std::logic_error::what(&a14);
    sub_27113604C(&__p, &a13);
    sub_271369D54(&__p, &a20);
    *(v58 + 160) = a20;
    sub_27184A2B4(v59 - 224, &a21);
    *(v59 - 120) = 1;
    sub_27115423C((v59 - 64), v59 - 240);
    sub_2711307D4(v59 - 240);
    sub_27112D71C(&a20);
    if (a39 == 1 && a38 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a14);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v63 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v63);
    __cxa_begin_catch(a1);
    v64 = (a40 + 48);
    if (*(a40 + 71) < 0)
    {
      v64 = *v64;
    }

    a13 = v64;
    sub_27113604C(&a14, &a13);
    sub_27136A868(&a14, &a20);
    *(v58 + 160) = a20;
    sub_27184A2B4(v59 - 224, &a21);
    *(v59 - 120) = 1;
    sub_27115423C((v59 - 64), v59 - 240);
    sub_2711307D4(v59 - 240);
    sub_27112D71C(&a20);
    if (a19 == 1 && a18 < 0)
    {
      operator delete(a14.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v59 - 240) = 0;
    *(v59 - 120) = 0;
    sub_27115423C((v59 - 64), v59 - 240);
    sub_2711307D4(v59 - 240);
    __cxa_end_catch();
  }

  JUMPOUT(0x271152764);
}

uint64_t VZImageGetContainedCVPixelBuffer(uint64_t a1, void *a2)
{
  if (sub_271152BD0("VZImageGetContainedCVPixelBuffer", a1, a2))
  {
    *(&v8 + 1) = 0;
    v9 = 0;
    *&v8 = &unk_288115A20;
    v18 = 1;
  }

  else
  {
    sub_2711FB560(&v8, a1 + 8, v4);
    if ((v18 & 1) == 0)
    {
      sub_27112B960(&v8, a2);
      v5 = 0;
      if (v18 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  sub_271152E8C(&v8);
  if (*(&v8 + 1))
  {
    v5 = **(&v8 + 1);
    v6 = *(*(&v8 + 1) + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        if (v18 != 1)
        {
          goto LABEL_14;
        }

LABEL_11:
        (*v8)(&v8);
        return v5;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (v18 == 1)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (v17 != 1)
  {
    return v5;
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

  if (v11 != 1 || (v10 & 0x80000000) == 0)
  {
    return v5;
  }

  operator delete(v9);
  return v5;
}

BOOL sub_271152BD0(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280877A90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A90))
    {
      sub_271154C0C(&xmmword_280877A78);
      __cxa_guard_release(&qword_280877A90);
    }

    if (byte_280877A8F < 0)
    {
      sub_271127178(v7, xmmword_280877A78, *(&xmmword_280877A78 + 1));
    }

    else
    {
      *v7 = xmmword_280877A78;
      v8 = unk_280877A88;
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

void sub_271152E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271152E8C(uint64_t result)
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

void sub_271152F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_271152F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D71C(va);
  __cxa_free_exception(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_271152F48(uint64_t result)
{
  if (*(result + 120) == 1)
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

uint64_t VZImageGetCVPixelBufferView(uint64_t a1, void *a2)
{
  if (sub_271152BD0("VZImageGetCVPixelBufferView", a1, a2))
  {
    *(&v8 + 1) = 0;
    v9 = 0;
    *&v8 = &unk_288115A20;
    v18 = 1;
  }

  else
  {
    sub_2711FB73C(a1 + 8, &v8, v4);
    if ((v18 & 1) == 0)
    {
      sub_27112B960(&v8, a2);
      v5 = 0;
      if (v18 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  sub_271152E8C(&v8);
  if (*(&v8 + 1))
  {
    v5 = **(&v8 + 1);
    v6 = *(*(&v8 + 1) + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        if (v18 != 1)
        {
          goto LABEL_14;
        }

LABEL_11:
        (*v8)(&v8);
        return v5;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (v18 == 1)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (v17 != 1)
  {
    return v5;
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

  if (v11 != 1 || (v10 & 0x80000000) == 0)
  {
    return v5;
  }

  operator delete(v9);
  return v5;
}

void sub_271153A94(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const char *a13, std::logic_error a14, int a15, __int16 a16, char a17, char a18, char a19, __int128 a20, __int128 a21, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::runtime_error __p, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  if (a2)
  {
    sub_2711307D4(&a42);
    sub_271137BDC(&STACK[0x4E0]);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::logic_error::logic_error(&a14, exception_ptr);
      a14.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(a1);
      a13 = std::logic_error::what(&a14);
      sub_27113604C(&__p, &a13);
      sub_271369D54(&__p, &a20);
      *(v61 + 832) = a20;
      sub_27184A2B4(&STACK[0x4F0], &a21);
      LOBYTE(STACK[0x558]) = 1;
      sub_271154E6C(&a62, &STACK[0x4E0]);
      sub_2711307D4(&STACK[0x4E0]);
      sub_27112D71C(&a20);
      if (a39 == 1 && a38 < 0)
      {
        operator delete(__p.__vftable);
      }

      MEMORY[0x2743BE520](&a14);
      __cxa_end_catch();
    }

    else if (a2 == 2)
    {
      v65 = __cxa_get_exception_ptr(a1);
      sub_271135FD0(&__p, v65);
      __cxa_begin_catch(a1);
      v66 = (a40 + 48);
      if (*(a40 + 71) < 0)
      {
        v66 = *v66;
      }

      a13 = v66;
      sub_27113604C(&a14, &a13);
      sub_27136A868(&a14, &a20);
      *(v61 + 832) = a20;
      sub_27184A2B4(&STACK[0x4F0], &a21);
      LOBYTE(STACK[0x558]) = 1;
      sub_271154E6C(&a62, &STACK[0x4E0]);
      sub_2711307D4(&STACK[0x4E0]);
      sub_27112D71C(&a20);
      if (a19 == 1 && a18 < 0)
      {
        operator delete(a14.__vftable);
      }

      MEMORY[0x2743BEBB0](&__p);
      __cxa_end_catch();
    }

    else
    {
      __cxa_begin_catch(a1);
      LOBYTE(STACK[0x4E0]) = 0;
      LOBYTE(STACK[0x558]) = 0;
      sub_271154E6C(&a62, &STACK[0x4E0]);
      sub_2711307D4(&STACK[0x4E0]);
      __cxa_end_catch();
    }

    JUMPOUT(0x271153898);
  }

  _Unwind_Resume(a1);
}

uint64_t VZDataGetContainedCVPixelBuffer(uint64_t a1, void *a2)
{
  if (sub_271133B3C("VZDataGetContainedCVPixelBuffer", a1, a2))
  {
    *(&v7 + 1) = 0;
    v8 = 0;
    *&v7 = &unk_288115A20;
    v17 = 1;
  }

  else
  {
    sub_2711FCF8C((a1 + 32), &v7);
    if ((v17 & 1) == 0)
    {
      sub_27112B960(&v7, a2);
      v4 = 0;
      if (v17 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  sub_271152E8C(&v7);
  if (*(&v7 + 1))
  {
    v4 = **(&v7 + 1);
    v5 = *(*(&v7 + 1) + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        if (v17 != 1)
        {
          goto LABEL_14;
        }

LABEL_11:
        (*v7)(&v7);
        return v4;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  if (v17 == 1)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (v16 != 1)
  {
    return v4;
  }

  if (v15 == 1)
  {
    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }
  }

  if (v10 != 1 || (v9 & 0x80000000) == 0)
  {
    return v4;
  }

  operator delete(v8);
  return v4;
}

uint64_t VZDataGetCVPixelBufferView(uint64_t a1, void *a2)
{
  if (sub_271133B3C("VZDataGetCVPixelBufferView", a1, a2))
  {
    *(&v7 + 1) = 0;
    v8 = 0;
    *&v7 = &unk_288115A20;
    v17 = 1;
  }

  else
  {
    sub_2711FD580(a1 + 32, &v7);
    if ((v17 & 1) == 0)
    {
      sub_27112B960(&v7, a2);
      v4 = 0;
      if (v17 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  sub_271152E8C(&v7);
  if (*(&v7 + 1))
  {
    v4 = **(&v7 + 1);
    v5 = *(*(&v7 + 1) + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        if (v17 != 1)
        {
          goto LABEL_14;
        }

LABEL_11:
        (*v7)(&v7);
        return v4;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  if (v17 == 1)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (v16 != 1)
  {
    return v4;
  }

  if (v15 == 1)
  {
    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }
  }

  if (v10 != 1 || (v9 & 0x80000000) == 0)
  {
    return v4;
  }

  operator delete(v8);
  return v4;
}

uint64_t VZDataGetCVPixelBuffer(uint64_t a1, void *a2)
{
  if (sub_271133B3C("VZDataGetCVPixelBuffer", a1, a2))
  {
    *(&v7 + 1) = 0;
    v8 = 0;
    *&v7 = &unk_288115A20;
    v17 = 1;
  }

  else
  {
    sub_2711FD580(a1 + 32, &v7);
    if ((v17 & 1) == 0)
    {
      sub_27112B960(&v7, a2);
      v4 = 0;
      if (v17 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  sub_271152E8C(&v7);
  if (*(&v7 + 1))
  {
    v4 = **(&v7 + 1);
    v5 = *(*(&v7 + 1) + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        if (v17 != 1)
        {
          goto LABEL_14;
        }

LABEL_11:
        (*v7)(&v7);
        return v4;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  if (v17 == 1)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (v16 != 1)
  {
    return v4;
  }

  if (v15 == 1)
  {
    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }
  }

  if (v10 != 1 || (v9 & 0x80000000) == 0)
  {
    return v4;
  }

  operator delete(v8);
  return v4;
}

void sub_27115423C(void ***a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A70))
  {
    sub_2718519B4(qword_280877A58, "VZImage]", 7uLL);
    __cxa_guard_release(&qword_280877A70);
  }

  if ((atomic_load_explicit(&qword_280879F10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879F10))
  {
    sub_2718519B4(&xmmword_280879F18, "cv3d::kit::cv::PixelBufferRef]", 0x1DuLL);
    __cxa_guard_release(&qword_280879F10);
  }

  if (byte_280879F2F < 0)
  {
    sub_271127178(&v21, xmmword_280879F18, *(&xmmword_280879F18 + 1));
  }

  else
  {
    v21 = xmmword_280879F18;
    v22 = unk_280879F28;
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

void sub_2711544CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112D66C(v9 + 16);
  sub_2711307D4(&a9);
  sub_27137F4D0((v10 - 88));
  if (*(v10 - 41) < 0)
  {
    operator delete(*(v10 - 64));
  }

  _Unwind_Resume(a1);
}

char *sub_27115451C(uint64_t a1)
{
  result = operator new(0xB0uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    *result = &unk_288117810;
    *(result + 1) = &unk_2881177F0;
    v3 = *(a1 + 32);
    *(result + 24) = *(a1 + 16);
    *(result + 2) = &unk_2881147D8;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(result + 40) = v3;
    *(result + 54) = *(a1 + 46);
    result[72] = 0;
    result[128] = 0;
    if (*(a1 + 120) == 1)
    {
      *(result + 9) = &unk_288114798;
      v4 = *(a1 + 72);
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      v5 = *(a1 + 88);
      *(result + 5) = v4;
      *(result + 6) = v5;
      *(result + 110) = *(a1 + 102);
      result[128] = 1;
    }

    result[136] = 0;
    result[160] = 0;
    if (*(a1 + 152) == 1)
    {
      *(result + 17) = &unk_288115A20;
      *(result + 9) = *(a1 + 136);
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
      result[160] = 1;
    }

    *(result + 42) = 1;
    *result = &unk_288119128;
    *(result + 1) = &unk_288119178;
  }

  return result;
}

uint64_t sub_2711546A0(uint64_t result)
{
  if ((*(result + 160) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x80uLL);
    sub_2711365E8(v3, v1);
    sub_271137B44(exception, v3);
    __cxa_throw(exception, &unk_28811C2F0, sub_271130150);
  }

  return result;
}

void sub_271154718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_27115472C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D71C(va);
  __cxa_free_exception(v3);
  _Unwind_Resume(a1);
}

void *sub_27115475C(void *result)
{
  *result = &unk_2881147D8;
  v1 = result[2];
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

void sub_2711547F0(void *a1)
{
  *a1 = &unk_2881147D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711548A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(result + 24);
  *(a2 + 8) = *(result + 32);
  return result;
}

uint64_t sub_2711548BC(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void *sub_27115494C(void *result)
{
  *result = &unk_288114798;
  v1 = result[2];
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

void sub_2711549E0(void *a1)
{
  *a1 = &unk_288114798;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271154A98@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(result + 24);
  *(a2 + 8) = *(result + 32);
  return result;
}

uint64_t sub_271154AAC(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t sub_271154B3C(uint64_t result)
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

double sub_271154C0C@<D0>(uint64_t a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 7;
  strcpy(&__p, "VZImage");
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

void sub_271154E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271154E6C(void ***a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4(qword_280877838, "VZData]", 6uLL);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_280879F10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879F10))
  {
    sub_2718519B4(&xmmword_280879F18, "cv3d::kit::cv::PixelBufferRef]", 0x1DuLL);
    __cxa_guard_release(&qword_280879F10);
  }

  if (byte_280879F2F < 0)
  {
    sub_271127178(&v21, xmmword_280879F18, *(&xmmword_280879F18 + 1));
  }

  else
  {
    v21 = xmmword_280879F18;
    v22 = unk_280879F28;
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

void sub_271155174(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

_OWORD *VZDataIOExportDataToNewBlob(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  if (sub_271133B3C("VZDataIOExportDataToNewBlob", a1, a3))
  {
    return 0;
  }

  LOBYTE(v14) = 0;
  v16 = 0;
  v39 = &v40;
  v40 = a3;
  sub_271233754(v4 + 32, &v14, &v28);
  v5 = v38;
  if (v38)
  {
    v6 = sub_2711381C0(&v28);
    v7 = operator new(0x28uLL, MEMORY[0x277D826F0]);
    if (v7)
    {
      v4 = v7;
      v7[1] = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v7 + 8) = 1;
      *v7 = &unk_288119278;
      *(v7 + 1) = &unk_2881192C8;
      if (v38 != 1)
      {
        goto LABEL_37;
      }

LABEL_33:
      v8 = *(&v28 + 1);
      if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }

      goto LABEL_46;
    }

    LOBYTE(v17) = 0;
    v27 = 0;
    sub_271157980(&v39, &v17);
    if (v27 == 1)
    {
      if (v26 != 1)
      {
        v4 = 0;
        if (v38 != 1)
        {
          goto LABEL_37;
        }

        goto LABEL_33;
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

      v4 = 0;
      if (v20 == 1 && v19 < 0)
      {
        operator delete(v18);
        v4 = 0;
        if (v38 == 1)
        {
          goto LABEL_33;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_32:
    if (v38 != 1)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v17 = v28;
  LOBYTE(v18) = 0;
  v26 = 0;
  if (v37 == 1)
  {
    sub_27112F6CC(&v18, &v29);
    v26 = 1;
  }

  v27 = 1;
  sub_271157980(&v39, &v17);
  if (v27 != 1 || v26 != 1)
  {
    goto LABEL_32;
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

  if (v20 != 1 || (v19 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  operator delete(v18);
  if (v38 == 1)
  {
    goto LABEL_33;
  }

LABEL_37:
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

LABEL_46:
  if ((v5 & 1) == 0)
  {
    v4 = 0;
  }

  if (v16 == 1)
  {
    v9 = v14;
    if (v14)
    {
      v10 = v15;
      v11 = v14;
      if (v15 != v14)
      {
        do
        {
          v12 = *(v10 - 1);
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          v10 -= 16;
        }

        while (v10 != v9);
        v11 = v14;
      }

      v15 = v9;
      operator delete(v11);
    }
  }

  return v4;
}

void sub_2711555BC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const char *a13, std::logic_error a14, int a15, __int16 a16, char a17, char a18, char a19, __int128 a20, __int128 a21, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::runtime_error __p, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, char a42)
{
  sub_2711307D4(&a42);
  sub_27113827C(v41 - 192);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a14, exception_ptr);
    a14.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a13 = std::logic_error::what(&a14);
    sub_27113604C(&__p, &a13);
    sub_271369D54(&__p, &a20);
    *(v41 - 192) = a20;
    sub_27184A2B4(v41 - 176, &a21);
    *(v41 - 72) = 1;
    sub_271157980((v41 - 64), v41 - 192);
    sub_2711307D4(v41 - 192);
    sub_27112D71C(&a20);
    if (a39 == 1 && a38 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a14);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v45 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v45);
    __cxa_begin_catch(a1);
    v46 = (a40 + 48);
    if (*(a40 + 71) < 0)
    {
      v46 = *v46;
    }

    a13 = v46;
    sub_27113604C(&a14, &a13);
    sub_27136A868(&a14, &a20);
    *(v41 - 192) = a20;
    sub_27184A2B4(v41 - 176, &a21);
    *(v41 - 72) = 1;
    sub_271157980((v41 - 64), v41 - 192);
    sub_2711307D4(v41 - 192);
    sub_27112D71C(&a20);
    if (a19 == 1 && a18 < 0)
    {
      operator delete(a14.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v41 - 192) = 0;
    *(v41 - 72) = 0;
    sub_271157980((v41 - 64), v41 - 192);
    sub_2711307D4(v41 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x271155510);
}

uint64_t VZDataIOImportDataFromBlob(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v40 = *MEMORY[0x277D85DE8];
  if (sub_2711331C0("VZDataIOImportDataFromBlob", a1, a3))
  {
    return 0;
  }

  LOBYTE(v13) = 0;
  v15 = 0;
  v27 = &v28;
  v28 = a3;
  sub_271233DE0((v4 + 16), &v13, &v29);
  v5 = v39;
  if ((v39 & 1) == 0)
  {
    v16 = v29;
    LOBYTE(v17) = 0;
    v25 = 0;
    if (v38 == 1)
    {
      sub_27112F6CC(&v17, &v30);
      v25 = 1;
    }

    v26 = 1;
    sub_271157D2C(&v27, &v16);
    if (v26 != 1 || v25 != 1)
    {
      goto LABEL_28;
    }

    if (v24 == 1)
    {
      if (v23 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20);
      }
    }

    if (v19 != 1 || (v18 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v6 = sub_271135F14(&v29);
  sub_271135E2C(v6);
  v4 = v7;
  if (!v7)
  {
    LOBYTE(v16) = 0;
    v26 = 0;
    sub_271157D2C(&v27, &v16);
    if (v26 != 1 || v25 != 1)
    {
      goto LABEL_27;
    }

    if (v24 == 1)
    {
      if (v23 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20);
      }
    }

    v4 = 0;
    if (v19 != 1 || (v18 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_26:
    operator delete(v17);
LABEL_27:
    v4 = 0;
  }

LABEL_28:
  if (v39 == 1)
  {
    sub_27113681C(&v29);
  }

  else if (v38 == 1)
  {
    if (v37 == 1)
    {
      if (v36 < 0)
      {
        operator delete(v35);
      }

      if (v34 < 0)
      {
        operator delete(v33);
      }
    }

    if (v32 == 1 && v31 < 0)
    {
      operator delete(v30);
    }
  }

  if ((v5 & 1) == 0)
  {
    v4 = 0;
  }

  if (v15 == 1)
  {
    v8 = v13;
    if (v13)
    {
      v9 = v14;
      v10 = v13;
      if (v14 != v13)
      {
        do
        {
          v11 = *(v9 - 1);
          if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v11->__on_zero_shared)(v11);
            std::__shared_weak_count::__release_weak(v11);
          }

          v9 -= 16;
        }

        while (v9 != v8);
        v10 = v13;
      }

      v14 = v8;
      operator delete(v10);
    }
  }

  return v4;
}

void sub_271155ABC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const char *a13, std::logic_error a14, int a15, __int16 a16, char a17, char a18, char a19, __int128 a20, __int128 a21, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::runtime_error __p, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, __int128 a60, uint64_t a61, uint64_t a62, uint64_t a63, uint64_t _1A8)
{
  if (a2)
  {
    sub_2711307D4(&a42);
    sub_271137BDC(&a60);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::logic_error::logic_error(&a14, exception_ptr);
      a14.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(a1);
      a13 = std::logic_error::what(&a14);
      sub_27113604C(&__p, &a13);
      sub_271369D54(&__p, &a20);
      a60 = a20;
      sub_27184A2B4(&a61, &a21);
      a65 = 1;
      sub_271157D2C(&a58, &a60);
      sub_2711307D4(&a60);
      sub_27112D71C(&a20);
      if (a39 == 1 && a38 < 0)
      {
        operator delete(__p.__vftable);
      }

      MEMORY[0x2743BE520](&a14);
      __cxa_end_catch();
    }

    else if (a2 == 2)
    {
      v68 = __cxa_get_exception_ptr(a1);
      sub_271135FD0(&__p, v68);
      __cxa_begin_catch(a1);
      v69 = (a40 + 48);
      if (*(a40 + 71) < 0)
      {
        v69 = *v69;
      }

      a13 = v69;
      sub_27113604C(&a14, &a13);
      sub_27136A868(&a14, &a20);
      a60 = a20;
      sub_27184A2B4(&a61, &a21);
      a65 = 1;
      sub_271157D2C(&a58, &a60);
      sub_2711307D4(&a60);
      sub_27112D71C(&a20);
      if (a19 == 1 && a18 < 0)
      {
        operator delete(a14.__vftable);
      }

      MEMORY[0x2743BEBB0](&__p);
      __cxa_end_catch();
    }

    else
    {
      __cxa_begin_catch(a1);
      LOBYTE(a60) = 0;
      a65 = 0;
      sub_271157D2C(&a58, &a60);
      sub_2711307D4(&a60);
      __cxa_end_catch();
    }

    JUMPOUT(0x2711559F4);
  }

  _Unwind_Resume(a1);
}

_OWORD *VZDataIOExportLogMessageToNewBlob(_OWORD *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  if (sub_27115629C("VZDataIOExportLogMessageToNewBlob", a1, a3))
  {
    return 0;
  }

  LOBYTE(v14) = 0;
  v16 = 0;
  v39 = &v40;
  v40 = a3;
  sub_2712344FC((v4 + 1), &v14, &v28);
  v5 = v38;
  if (v38)
  {
    v6 = sub_2711381C0(&v28);
    v7 = operator new(0x28uLL, MEMORY[0x277D826F0]);
    if (v7)
    {
      v4 = v7;
      v7[1] = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v7 + 8) = 1;
      *v7 = &unk_288119278;
      *(v7 + 1) = &unk_2881192C8;
      if (v38 != 1)
      {
        goto LABEL_37;
      }

LABEL_33:
      v8 = *(&v28 + 1);
      if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }

      goto LABEL_46;
    }

    LOBYTE(v17) = 0;
    v27 = 0;
    sub_27115833C(&v39, &v17);
    if (v27 == 1)
    {
      if (v26 != 1)
      {
        v4 = 0;
        if (v38 != 1)
        {
          goto LABEL_37;
        }

        goto LABEL_33;
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

      v4 = 0;
      if (v20 == 1 && v19 < 0)
      {
        operator delete(v18);
        v4 = 0;
        if (v38 == 1)
        {
          goto LABEL_33;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_32:
    if (v38 != 1)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v17 = v28;
  LOBYTE(v18) = 0;
  v26 = 0;
  if (v37 == 1)
  {
    sub_27112F6CC(&v18, &v29);
    v26 = 1;
  }

  v27 = 1;
  sub_27115833C(&v39, &v17);
  if (v27 != 1 || v26 != 1)
  {
    goto LABEL_32;
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

  if (v20 != 1 || (v19 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  operator delete(v18);
  if (v38 == 1)
  {
    goto LABEL_33;
  }

LABEL_37:
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

LABEL_46:
  if ((v5 & 1) == 0)
  {
    v4 = 0;
  }

  if (v16 == 1)
  {
    v9 = v14;
    if (v14)
    {
      v10 = v15;
      v11 = v14;
      if (v15 != v14)
      {
        do
        {
          v12 = *(v10 - 1);
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          v10 -= 16;
        }

        while (v10 != v9);
        v11 = v14;
      }

      v15 = v9;
      operator delete(v11);
    }
  }

  return v4;
}