void sub_27152B5D0(_Unwind_Exception *a1)
{
  if (*(v1 + 56) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*v2);
    sub_2711B039C(v3 + 8);
    _Unwind_Resume(a1);
  }

  sub_2711B039C(v3 + 8);
  _Unwind_Resume(a1);
}

void sub_27152B698(uint64_t a1, uint64_t a2, char *a3, const void ****a4)
{
  v8 = *(a2 + 616);
  std::mutex::lock(v8);
  v47[0] = a3 + 8;
  v9 = sub_271536D38((a2 + 624), a3 + 8, v47);
  v11 = v9[6];
  v10 = v9[7];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock(v8);
  if (v11)
  {
    std::mutex::lock(v11);
    sub_27112AE58((v11 + 80), **a4, **a4);
    std::mutex::unlock(v11);
  }

  if ((*(a2 + 304) & 1) == 0)
  {
    v12 = 1;
    goto LABEL_9;
  }

  v17[0] = (a2 + 272);
  v17[1] = a3;
  *&v37 = &unk_288116948;
  *(&v37 + 1) = v17;
  *&v38 = a4;
  sub_27184A384(&v37, v47);
  v12 = v56;
  if (v56 == 1)
  {
    *a1 = 0;
LABEL_9:
    *(a1 + 120) = v12;
    goto LABEL_10;
  }

  sub_271847E00(v47, v17);
  if (SBYTE7(v18) < 0)
  {
    sub_271127178(v28, v17[0], v17[1]);
  }

  else
  {
    *v28 = *v17;
    v29 = v18;
  }

  v30 = 1;
  LOBYTE(v31) = 0;
  v35 = 0;
  v36 = 1;
  sub_271390244(&v37, 2u, v28);
  if (v36 == 1)
  {
    if (v35 == 1)
    {
      if (v34 < 0)
      {
        operator delete(__p);
      }

      if (v32 < 0)
      {
        operator delete(v31);
      }
    }

    if (v30 == 1 && SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
    }
  }

  if (SBYTE7(v18) < 0)
  {
    operator delete(v17[0]);
    if (*(a2 + 464) != 1)
    {
      goto LABEL_32;
    }
  }

  else if (*(a2 + 464) != 1)
  {
    goto LABEL_32;
  }

  v13 = *(a2 + 456);
  if (!v13)
  {
    sub_27112AFFC();
  }

  (*(*v13 + 48))(v13, a3, &v37);
LABEL_32:
  *v17 = v37;
  LOBYTE(v18) = 0;
  v27 = 0;
  if (v46 == 1)
  {
    sub_27112F6CC(&v18, &v38);
    v27 = 1;
    *a1 = *v17;
    *(a1 + 16) = 0;
    *(a1 + 40) = 0;
    v14 = v20;
    if (v20 == 1)
    {
      *(a1 + 16) = v18;
      *(a1 + 32) = v19;
      v19 = 0;
      v18 = 0uLL;
      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
      v15 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v26 & 1) == 0)
      {
LABEL_35:
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (!v14)
        {
          goto LABEL_42;
        }

LABEL_40:
        if (SHIBYTE(v19) < 0)
        {
          operator delete(v18);
        }

        goto LABEL_42;
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v15 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v26 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v16 = v23;
    *(v15 + 16) = v22;
    *v15 = v21;
    v21 = 0uLL;
    *(a1 + 72) = v16;
    *(a1 + 80) = v24;
    *(a1 + 96) = v25;
    v22 = 0;
    v24 = 0uLL;
    v25 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (v14)
    {
      goto LABEL_40;
    }
  }

  else
  {
    *a1 = v37;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

LABEL_42:
  if (v46 == 1)
  {
    if (v45 == 1)
    {
      if (v44 < 0)
      {
        operator delete(v43);
      }

      if (v42 < 0)
      {
        operator delete(v41);
      }
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }
  }

  if ((v56 & 1) == 0 && v55 == 1)
  {
    if (v54 == 1)
    {
      if (v53 < 0)
      {
        operator delete(v52);
      }

      if (v51 < 0)
      {
        operator delete(v50);
      }
    }

    if (v49 == 1 && v48 < 0)
    {
      operator delete(v47[2]);
    }
  }

LABEL_10:
  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

void sub_27152BAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_27112E024(v43 - 192);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27152BB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock(v9);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27152BB9C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (*(a4 + 48) != 1)
  {
    DWORD2(v34) = -1;
    operator new();
  }

  if (*(a4 + 40) != 1)
  {
    DWORD2(v14) = 0;
    *&v33 = v13;
    *(&v33 + 1) = "Received invalid Sync update from client ";
    *&v34 = v13;
    *(&v34 + 1) = "Received invalid Sync update from client ";
    v35 = "Received invalid Sync update from client ";
    v54 = &v33;
    sub_2711DCE58(&v54);
    sub_2714C602C(&v33, v13, (a3 + 8));
  }

  if (*(a2 + 608) == 1)
  {
    v7 = a4;
    (*(**(a2 + 600) + 40))(*(a2 + 600), a3 + 8, a4);
    a4 = v7;
  }

  if (*(a2 + 344) != 1)
  {
    goto LABEL_12;
  }

  if (*(a4 + 40) != 1)
  {
    sub_2711308D4();
  }

  if (!*a4)
  {
LABEL_12:
    v8 = 1;
    goto LABEL_13;
  }

  v13[0] = (a2 + 312);
  v13[1] = a3;
  *&v33 = &unk_2881168F8;
  *(&v33 + 1) = v13;
  *&v34 = a2;
  *(&v34 + 1) = a4;
  sub_27184A384(&v33, &v43);
  v8 = v53;
  if (v53)
  {
    *a1 = 0;
LABEL_13:
    *(a1 + 120) = v8;
    return;
  }

  sub_271847E00(&v43, v13);
  if (SBYTE7(v14) < 0)
  {
    sub_271127178(v24, v13[0], v13[1]);
  }

  else
  {
    *v24 = *v13;
    v25 = v14;
  }

  v26 = 1;
  LOBYTE(v27) = 0;
  v31 = 0;
  v32 = 1;
  sub_271390244(&v33, 2u, v24);
  if (v32 == 1)
  {
    if (v31 == 1)
    {
      if (v30 < 0)
      {
        operator delete(v29);
      }

      if (v28 < 0)
      {
        operator delete(v27);
      }
    }

    if (v26 == 1 && SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }
  }

  if (SBYTE7(v14) < 0)
  {
    operator delete(v13[0]);
  }

  if (*(a2 + 464) == 1)
  {
    v9 = *(a2 + 456);
    if (!v9)
    {
      sub_27112AFFC();
    }

    (*(*v9 + 48))(v9, a3, &v33);
  }

  *v13 = v33;
  LOBYTE(v14) = 0;
  v23 = 0;
  if (v42 != 1)
  {
    *a1 = v33;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    goto LABEL_52;
  }

  sub_27112F6CC(&v14, &v34);
  v23 = 1;
  *a1 = *v13;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  v10 = v16;
  if (v16 == 1)
  {
    *(a1 + 16) = v14;
    *(a1 + 32) = v15;
    v15 = 0;
    v14 = 0uLL;
    *(a1 + 40) = 1;
    *(a1 + 48) = 0;
    v11 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v22 & 1) == 0)
    {
LABEL_45:
      *(a1 + 112) = 1;
      *(a1 + 120) = 0;
      if (!v10)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }
  }

  else
  {
    *(a1 + 48) = 0;
    v11 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v22 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  v12 = v19;
  *(v11 + 16) = v18;
  *v11 = v17;
  v17 = 0uLL;
  *(a1 + 72) = v12;
  *(a1 + 80) = v20;
  *(a1 + 96) = v21;
  v18 = 0;
  v20 = 0uLL;
  v21 = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  if (!v10)
  {
    goto LABEL_52;
  }

LABEL_50:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14);
  }

LABEL_52:
  if (v42 == 1)
  {
    if (v41 == 1)
    {
      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39[0]);
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(v37[0]);
      }
    }

    if (v36 == 1 && SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }
  }

  if ((v53 & 1) == 0 && v52 == 1)
  {
    if (v51 != 1)
    {
      goto LABEL_19;
    }

    if (v50 < 0)
    {
      operator delete(v49);
      if ((v48 & 0x80000000) == 0)
      {
LABEL_19:
        if (v46 != 1)
        {
          return;
        }

LABEL_20:
        if (v45 < 0)
        {
          operator delete(v44);
        }

        return;
      }
    }

    else if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    operator delete(v47);
    if (v46 != 1)
    {
      return;
    }

    goto LABEL_20;
  }
}

void sub_27152C498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
    sub_27112E024(v42 - 184);
    _Unwind_Resume(a1);
  }

  sub_27112E024(v42 - 184);
  _Unwind_Resume(a1);
}

void sub_27152C50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27152C5E4(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v34 = 3;
  LOBYTE(v35) = 0;
  v45 = 0;
  v8 = *(a1 + 560);
  std::mutex::lock(v8);
  v9 = *(a1 + 568);
  v10 = *(a1 + 576);
  if (v9 == v10)
  {
    v11 = 0;
LABEL_28:
    std::mutex::unlock(v8);
    v19 = a4;
    if (*(a1 + 552) == 1)
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(v9 + 264);
    if (!v12)
    {
      goto LABEL_4;
    }

    v13 = std::__shared_weak_count::lock(v12);
    if (!v13)
    {
      goto LABEL_4;
    }

    v14 = v13;
    v15 = *(v9 + 256);
    if (v15)
    {
      v16 = (*(*v15 + 24))(v15);
      if (*v16 == *a3 && v16[1] == a3[1])
      {
        break;
      }
    }

    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = 1;
      goto LABEL_3;
    }

LABEL_4:
    v9 += 288;
    if (v9 == v10)
    {
      goto LABEL_28;
    }
  }

  sub_27138B9F4(v15, a2, &v22);
  if ((v33 & 1) == 0)
  {
    sub_27138A894(&v34, &v22);
    if ((v33 & 1) == 0 && v32 == 1)
    {
      if (v31 == 1)
      {
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26[0]);
        }
      }

      if (v25 == 1 && SHIBYTE(v24) < 0)
      {
        operator delete(v23);
      }
    }
  }

  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v18 = 0;
    v11 = 1;
LABEL_3:
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if ((v18 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_4;
  }

  v11 = 1;
  std::mutex::unlock(v8);
  v19 = a4;
  if (*(a1 + 552) != 1)
  {
    goto LABEL_31;
  }

LABEL_29:
  if ((v11 & 1) == 0)
  {
    sub_2715058E4();
  }

LABEL_31:
  if (v45 == 1)
  {
    v22 = v35;
    LOBYTE(v23) = 0;
    v32 = 0;
    if (v44 == 1)
    {
      sub_27112F6CC(&v23, &v36);
      v32 = 1;
      *v19 = v22;
      *(v19 + 16) = 0;
      *(v19 + 40) = 0;
      v20 = v25;
      if (v25 == 1)
      {
        *(v19 + 16) = v23;
        *(v19 + 32) = v24;
        v24 = 0;
        v23 = 0uLL;
        *(v19 + 40) = 1;
      }

      *(v19 + 48) = 0;
      *(v19 + 104) = 0;
      if (v31)
      {
        v21 = v28;
        *(v19 + 64) = v27;
        *(v19 + 48) = *v26;
        v26[0] = 0;
        v26[1] = 0;
        *(v19 + 72) = v21;
        *(v19 + 80) = *__p;
        *(v19 + 96) = v30;
        v27 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v30 = 0;
        *(v19 + 104) = 1;
      }

      *(v19 + 112) = 1;
      *(v19 + 120) = 0;
      if (v20 && SHIBYTE(v24) < 0)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v19 = v35;
      *(v19 + 16) = 0;
      *(v19 + 112) = 0;
      *(v19 + 120) = 0;
    }
  }

  else
  {
    if (((*(a1 + 552) | v11) & 1) == 0)
    {
      sub_2714C3BB8(a3, 13, "client not found");
    }

    *(v19 + 120) = 1;
  }

  if (v45 == 1 && v44 == 1)
  {
    if (v43 == 1)
    {
      if (v42 < 0)
      {
        operator delete(v41);
      }

      if (v40 < 0)
      {
        operator delete(v39);
      }
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }
  }
}

void sub_27152CC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_27112D66C(v26 + 16);
  sub_27112E024(va);
  sub_27138AE34(v27 - 224);
  _Unwind_Resume(a1);
}

void sub_27152CCAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v82 = *MEMORY[0x277D85DE8];
  v51 = a4;
  if (a4 == 1)
  {
    if (*(a2 + 608) == 1)
    {
      (*(**(a2 + 600) + 56))(*(a2 + 600), a3 + 8);
    }

    std::mutex::lock(*(a2 + 616));
    operator new();
  }

  if (*(a2 + 608) == 1)
  {
    (*(**(a2 + 600) + 64))(*(a2 + 600), a3 + 8);
  }

  v7 = *(a2 + 560);
  std::mutex::lock(v7);
  *__p = *(a3 + 8);
  v8 = *(a2 + 568);
  v9 = *(a2 + 576);
  if (v8 != v9)
  {
    while (1)
    {
      v10 = *(v8 + 8) == __p[0] && *(v8 + 16) == __p[1];
      if (v10)
      {
        break;
      }

      v8 += 288;
      if (v8 == v9)
      {
        goto LABEL_38;
      }
    }
  }

  if (v8 != v9)
  {
    if (v8 + 288 != v9)
    {
      do
      {
        v11 = v8;
        *v8 = *(v8 + 288);
        sub_27138FD98(v8 + 8, v8 + 296);
        v12 = *(v8 + 528);
        *(v8 + 528) = 0u;
        v13 = *(v8 + 248);
        *(v8 + 240) = v12;
        if (v13)
        {
          std::__shared_weak_count::__release_weak(v13);
        }

        v14 = *(v8 + 544);
        *(v8 + 544) = 0u;
        v15 = *(v8 + 264);
        *(v8 + 256) = v14;
        if (v15)
        {
          std::__shared_weak_count::__release_weak(v15);
        }

        v16 = *(v8 + 560);
        *(v8 + 560) = 0u;
        v17 = *(v8 + 280);
        *(v8 + 272) = v16;
        if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
        }

        v8 += 288;
      }

      while (v11 + 576 != v9);
      v9 = *(a2 + 576);
    }

    if (v9 != v8)
    {
      while (1)
      {
        v18 = *(v9 - 8);
        if (v18)
        {
          if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            break;
          }
        }

        v19 = *(v9 - 24);
        if (v19)
        {
          goto LABEL_32;
        }

LABEL_33:
        v20 = *(v9 - 40);
        if (v20)
        {
          std::__shared_weak_count::__release_weak(v20);
        }

        sub_2711B039C(v9 - 280);
        v9 -= 288;
        if (v9 == v8)
        {
          goto LABEL_37;
        }
      }

      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
      v19 = *(v9 - 24);
      if (!v19)
      {
        goto LABEL_33;
      }

LABEL_32:
      std::__shared_weak_count::__release_weak(v19);
      goto LABEL_33;
    }

LABEL_37:
    *(a2 + 576) = v8;
  }

LABEL_38:
  v21 = *(a2 + 616);
  std::mutex::lock(v21);
  v22 = *(a2 + 632);
  if (v22)
  {
    v23 = LOBYTE(__p[0]);
    v24 = (a2 + 632);
    v25 = *(a2 + 632);
    do
    {
      v26 = *(v25 + 32);
      v27 = LOBYTE(__p[0]);
      if (v26 == LOBYTE(__p[0]) && (v26 = *(v25 + 33), v27 = BYTE1(__p[0]), v26 == BYTE1(__p[0])) && (v26 = *(v25 + 34), v27 = BYTE2(__p[0]), v26 == BYTE2(__p[0])) && (v26 = *(v25 + 35), v27 = BYTE3(__p[0]), v26 == BYTE3(__p[0])) && (v26 = *(v25 + 36), v27 = BYTE4(__p[0]), v26 == BYTE4(__p[0])) && (v26 = *(v25 + 37), v27 = BYTE5(__p[0]), v26 == BYTE5(__p[0])) && (v26 = *(v25 + 38), v27 = BYTE6(__p[0]), v26 == BYTE6(__p[0])) && (v26 = *(v25 + 39), v27 = HIBYTE(__p[0]), v26 == HIBYTE(__p[0])) && (v26 = *(v25 + 40), v27 = LOBYTE(__p[1]), v26 == LOBYTE(__p[1])) && (v26 = *(v25 + 41), v27 = BYTE1(__p[1]), v26 == BYTE1(__p[1])) && (v26 = *(v25 + 42), v27 = BYTE2(__p[1]), v26 == BYTE2(__p[1])) && (v26 = *(v25 + 43), v27 = BYTE3(__p[1]), v26 == BYTE3(__p[1])) && (v26 = *(v25 + 44), v27 = BYTE4(__p[1]), v26 == BYTE4(__p[1])) && (v26 = *(v25 + 45), v27 = BYTE5(__p[1]), v26 == BYTE5(__p[1])) && (v26 = *(v25 + 46), v27 = BYTE6(__p[1]), v26 == BYTE6(__p[1])) && (v26 = *(v25 + 47), v27 = HIBYTE(__p[1]), v26 == HIBYTE(__p[1])))
      {
        v24 = v25;
      }

      else
      {
        v28 = v26 >= v27;
        v29 = v26 < v27;
        if (v28)
        {
          v24 = v25;
        }

        v25 += v29;
      }

      v25 = *v25;
    }

    while (v25);
    if (v24 != (a2 + 632))
    {
      if ((v30 = *(v24 + 32), LOBYTE(__p[0]) == v30) && (v30 = *(v24 + 33), v23 = BYTE1(__p[0]), BYTE1(__p[0]) == v30) && (v30 = *(v24 + 34), v23 = BYTE2(__p[0]), BYTE2(__p[0]) == v30) && (v30 = *(v24 + 35), v23 = BYTE3(__p[0]), BYTE3(__p[0]) == v30) && (v30 = *(v24 + 36), v23 = BYTE4(__p[0]), BYTE4(__p[0]) == v30) && (v30 = *(v24 + 37), v23 = BYTE5(__p[0]), BYTE5(__p[0]) == v30) && (v30 = *(v24 + 38), v23 = BYTE6(__p[0]), BYTE6(__p[0]) == v30) && (v30 = *(v24 + 39), v23 = HIBYTE(__p[0]), HIBYTE(__p[0]) == v30) && (v30 = *(v24 + 40), v23 = LOBYTE(__p[1]), LOBYTE(__p[1]) == v30) && (v30 = *(v24 + 41), v23 = BYTE1(__p[1]), BYTE1(__p[1]) == v30) && (v30 = *(v24 + 42), v23 = BYTE2(__p[1]), BYTE2(__p[1]) == v30) && (v30 = *(v24 + 43), v23 = BYTE3(__p[1]), BYTE3(__p[1]) == v30) && (v30 = *(v24 + 44), v23 = BYTE4(__p[1]), BYTE4(__p[1]) == v30) && (v30 = *(v24 + 45), v23 = BYTE5(__p[1]), BYTE5(__p[1]) == v30) && (v30 = *(v24 + 46), v23 = BYTE6(__p[1]), BYTE6(__p[1]) == v30) && (v30 = *(v24 + 47), v23 = HIBYTE(__p[1]), HIBYTE(__p[1]) == v30) || v23 >= v30)
      {
        v31 = v24[1];
        if (v31)
        {
          do
          {
            v32 = v31;
            v31 = *v31;
          }

          while (v31);
        }

        else
        {
          v33 = v24;
          do
          {
            v32 = v33[2];
            v10 = *v32 == v33;
            v33 = v32;
          }

          while (!v10);
        }

        if (*(a2 + 624) == v24)
        {
          *(a2 + 624) = v32;
        }

        --*(a2 + 640);
        sub_271128F64(v22, v24);
        v34 = v24[7];
        if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v34->__on_zero_shared)(v34);
          std::__shared_weak_count::__release_weak(v34);
        }

        operator delete(v24);
      }
    }
  }

  std::mutex::unlock(v21);
  std::mutex::unlock(v7);
  if ((*(a2 + 384) & 1) == 0)
  {
    v35 = 1;
    goto LABEL_96;
  }

  *&v61 = a2 + 352;
  *(&v61 + 1) = a3;
  v41[0] = &unk_288116970;
  v41[1] = &v61;
  *&v42 = &v51;
  sub_27184A384(v41, __p);
  v35 = v81;
  if (v81)
  {
    *a1 = 0;
LABEL_96:
    *(a1 + 120) = v35;
    return;
  }

  sub_271847E00(__p, &v61);
  if (SBYTE7(v62) < 0)
  {
    sub_271127178(&v52, v61, *(&v61 + 1));
  }

  else
  {
    v52 = v61;
    v53 = v62;
  }

  v54 = 1;
  LOBYTE(v55) = 0;
  v59 = 0;
  v60 = 1;
  sub_271390244(v41, 2u, &v52);
  if (v60 == 1)
  {
    if (v59 == 1)
    {
      if (v58 < 0)
      {
        operator delete(v57);
      }

      if (v56 < 0)
      {
        operator delete(v55);
      }
    }

    if (v54 == 1 && SHIBYTE(v53) < 0)
    {
      operator delete(v52);
    }
  }

  if (SBYTE7(v62) < 0)
  {
    operator delete(v61);
    if (*(a2 + 464) != 1)
    {
      goto LABEL_116;
    }
  }

  else if (*(a2 + 464) != 1)
  {
    goto LABEL_116;
  }

  v36 = *(a2 + 456);
  if (!v36)
  {
    sub_27112AFFC();
  }

  (*(*v36 + 48))(v36, a3, v41);
LABEL_116:
  v61 = *v41;
  LOBYTE(v62) = 0;
  v71 = 0;
  if (v50 == 1)
  {
    sub_27112F6CC(&v62, &v42);
    v71 = 1;
    *a1 = v61;
    *(a1 + 16) = 0;
    *(a1 + 40) = 0;
    v37 = v64;
    if (v64 == 1)
    {
      *(a1 + 16) = v62;
      *(a1 + 32) = v63;
      v63 = 0;
      v62 = 0uLL;
      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
      v38 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v70 & 1) == 0)
      {
        goto LABEL_119;
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v38 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v70 & 1) == 0)
      {
LABEL_119:
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (!v37)
        {
          goto LABEL_126;
        }

LABEL_124:
        if (SHIBYTE(v63) < 0)
        {
          operator delete(v62);
        }

        goto LABEL_126;
      }
    }

    v39 = v65;
    v40 = v67;
    *(v38 + 16) = v66;
    *v38 = v39;
    v65 = 0uLL;
    *(a1 + 72) = v40;
    *(a1 + 80) = v68;
    *(a1 + 96) = v69;
    v66 = 0;
    v68 = 0uLL;
    v69 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (v37)
    {
      goto LABEL_124;
    }
  }

  else
  {
    *a1 = *v41;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

LABEL_126:
  if (v50 == 1)
  {
    if (v49 == 1)
    {
      if (v48 < 0)
      {
        operator delete(v47);
      }

      if (v46 < 0)
      {
        operator delete(v45);
      }
    }

    if (v44 == 1 && v43 < 0)
    {
      operator delete(v42);
    }
  }

  if ((v81 & 1) == 0 && v80 == 1)
  {
    if (v79 == 1)
    {
      if (SHIBYTE(v78) < 0)
      {
        operator delete(v77);
      }

      if (SHIBYTE(v76) < 0)
      {
        operator delete(v75);
      }
    }

    if (v74 == 1 && v73 < 0)
    {
      operator delete(__p[2]);
    }
  }
}

void sub_27152DFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112D66C(v5 + 16);
  sub_2711307D4(va);
  _Unwind_Resume(a1);
}

void sub_27152E004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  operator delete(v65);
  if (a34 < 0)
  {
    operator delete(__p);
    sub_27112E024(&a65);
    sub_271392A1C(&a49);
    _Unwind_Resume(a1);
  }

  sub_27112E024(&a65);
  sub_271392A1C(&a49);
  _Unwind_Resume(a1);
}

void sub_27152E114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_27112D71C(&a11);
  sub_27112E024(&a65);
  _Unwind_Resume(a1);
}

void sub_27152E130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_27112D66C(va);
  JUMPOUT(0x27152E13CLL);
}

void sub_27152E184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  sub_2714FBE4C(va);
  sub_271134CBC(v54 + 16);
  _Unwind_Resume(a1);
}

void sub_27152E1A0(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  sub_271134CBC(v2 + 16);
  _Unwind_Resume(a1);
}

void sub_27152E1DC(_Unwind_Exception *a1)
{
  MEMORY[0x2743BF050](v1, 0x10B3C40A422F1BFLL);
  sub_271134CBC(v2 + 16);
  _Unwind_Resume(a1);
}

void sub_27152E224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  sub_27112F828(va);
  std::mutex::unlock(v54);
  _Unwind_Resume(a1);
}

void sub_27152E240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (LOBYTE(STACK[0x208]) == 1 && SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  std::mutex::~mutex(v67);
  std::__shared_weak_count::~__shared_weak_count(v66);
  operator delete(v69);
  std::mutex::unlock(v65);
  _Unwind_Resume(a1);
}

void sub_27152E2BC(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v8 = *(a2 + 616);
  std::mutex::lock(v8);
  v55[0] = a3 + 8;
  v9 = sub_271536D38((a2 + 624), a3 + 8, v55);
  v11 = v9[6];
  v10 = v9[7];
  v24 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock(v8);
  if (v11)
  {
    std::mutex::lock(v11);
    v12 = *a4;
    if (*a4 != a4 + 1)
    {
      v13 = v11;
      do
      {
        v14 = v12 + 4;
        sub_27112AE58(&v13[1].__m_.__opaque[8], v12 + 4, (v12 + 4));
        v15 = *(v12 + 55);
        if (v15 < 0)
        {
          v14 = v12[4];
          v15 = v12[5];
        }

        v13 = v11;
        sub_271501DA8(&v11[1], v14, v15, *(v12 + 56));
        v16 = v12[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v12[2];
            v18 = *v17 == v12;
            v12 = v17;
          }

          while (!v18);
        }

        v12 = v17;
      }

      while (v17 != a4 + 1);
    }

    std::mutex::unlock(v11);
  }

  if ((*(a2 + 424) & 1) == 0)
  {
    v19 = 1;
    goto LABEL_20;
  }

  v25[0] = (a2 + 392);
  v25[1] = a3;
  *&v45 = &unk_288116920;
  *(&v45 + 1) = v25;
  *&v46 = a4;
  sub_27184A384(&v45, v55);
  v19 = v64;
  if (v64 == 1)
  {
    *a1 = 0;
LABEL_20:
    *(a1 + 120) = v19;
    goto LABEL_21;
  }

  sub_271847E00(v55, v25);
  if (SBYTE7(v26) < 0)
  {
    sub_271127178(v36, v25[0], v25[1]);
  }

  else
  {
    *v36 = *v25;
    v37 = v26;
  }

  v38 = 1;
  LOBYTE(v39) = 0;
  v43 = 0;
  v44 = 1;
  sub_271390244(&v45, 2u, v36);
  if (v44 == 1)
  {
    if (v43 == 1)
    {
      if (v42 < 0)
      {
        operator delete(__p);
      }

      if (v40 < 0)
      {
        operator delete(v39);
      }
    }

    if (v38 == 1 && SHIBYTE(v37) < 0)
    {
      operator delete(v36[0]);
    }
  }

  if (SBYTE7(v26) < 0)
  {
    operator delete(v25[0]);
    if (*(a2 + 464) != 1)
    {
      goto LABEL_43;
    }
  }

  else if (*(a2 + 464) != 1)
  {
    goto LABEL_43;
  }

  v20 = *(a2 + 456);
  if (!v20)
  {
    sub_27112AFFC();
  }

  (*(*v20 + 48))(v20, a3, &v45);
LABEL_43:
  *v25 = v45;
  LOBYTE(v26) = 0;
  v35 = 0;
  if (v54 == 1)
  {
    sub_27112F6CC(&v26, &v46);
    v35 = 1;
    *a1 = *v25;
    *(a1 + 16) = 0;
    *(a1 + 40) = 0;
    v21 = v28;
    if (v28 == 1)
    {
      *(a1 + 16) = v26;
      *(a1 + 32) = v27;
      v27 = 0;
      v26 = 0uLL;
      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
      v22 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v34 & 1) == 0)
      {
LABEL_46:
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (!v21)
        {
          goto LABEL_53;
        }

LABEL_51:
        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26);
        }

        goto LABEL_53;
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v22 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v34 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    v23 = v31;
    *(v22 + 16) = v30;
    *v22 = v29;
    v29 = 0uLL;
    *(a1 + 72) = v23;
    *(a1 + 80) = v32;
    *(a1 + 96) = v33;
    v30 = 0;
    v32 = 0uLL;
    v33 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (v21)
    {
      goto LABEL_51;
    }
  }

  else
  {
    *a1 = v45;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

LABEL_53:
  if (v54 == 1)
  {
    if (v53 == 1)
    {
      if (v52 < 0)
      {
        operator delete(v51);
      }

      if (v50 < 0)
      {
        operator delete(v49);
      }
    }

    if (v48 == 1 && v47 < 0)
    {
      operator delete(v46);
    }
  }

  if ((v64 & 1) == 0 && v63 == 1)
  {
    if (v62 == 1)
    {
      if (v61 < 0)
      {
        operator delete(v60);
      }

      if (v59 < 0)
      {
        operator delete(v58);
      }
    }

    if (v57 == 1 && v56 < 0)
    {
      operator delete(v55[2]);
    }
  }

LABEL_21:
  if (v24)
  {
    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }
}

void sub_27152E784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_27112E024(v43 - 208);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27152E814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock(v9);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27152E838(void *a1@<X0>, uint64_t a3@<X8>)
{
  v25 = 3;
  LOBYTE(v26) = 0;
  v36 = 0;
  v5 = a1[70];
  std::mutex::lock(v5);
  v6 = a1[72];
  v7 = a1[71];
  *&v12 = 0;
  if (v6 != v7)
  {
    if (!((0x8E38E38E38E38E39 * ((v6 - v7) >> 5)) >> 60))
    {
      operator new();
    }

    sub_271135560();
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  std::mutex::unlock(v5);
  if (a1[69])
  {
    sub_271504DFC();
  }

  if (v36 != 1)
  {
    *(a3 + 120) = 1;
    return;
  }

  v11 = v26;
  LOBYTE(v12) = 0;
  v21 = 0;
  if (v35 == 1)
  {
    sub_27112F6CC(&v12, &v27);
    v21 = 1;
    *a3 = v11;
    *(a3 + 16) = 0;
    *(a3 + 40) = 0;
    v8 = v14;
    if (v14 == 1)
    {
      *(a3 + 16) = v12;
      *(a3 + 32) = v13;
      v13 = 0;
      v12 = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v9 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v20 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v9 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v20 & 1) == 0)
      {
LABEL_12:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v8)
        {
          goto LABEL_20;
        }

LABEL_18:
        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12);
        }

        goto LABEL_20;
      }
    }

    v10 = v17;
    *(v9 + 16) = v16;
    *v9 = *v15;
    v15[0] = 0;
    v15[1] = 0;
    *(a3 + 72) = v10;
    *(a3 + 80) = *v18;
    *(a3 + 96) = v19;
    v16 = 0;
    v18[0] = 0;
    v18[1] = 0;
    v19 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *a3 = v26;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    *(a3 + 120) = 0;
  }

LABEL_20:
  if ((v36 & 1) != 0 && v35 == 1)
  {
    if (v34 == 1)
    {
      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (v31 < 0)
      {
        operator delete(v30);
      }
    }

    if (v29 == 1 && v28 < 0)
    {
      operator delete(v27);
    }
  }
}

void sub_27152EFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  sub_27112E024(&a31);
  sub_27138AE34(va);
  _Unwind_Resume(a1);
}

void sub_27152F014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  sub_27112D66C(v51 + 16);
  sub_27138AE34(va);
  _Unwind_Resume(a1);
}

void sub_27152F030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  sub_27138AE34(va);
  _Unwind_Resume(a1);
}

void sub_27152F044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  sub_27138AE34(va);
  _Unwind_Resume(a1);
}

void sub_27152F058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::mutex *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_271347F18(&a34);
  std::mutex::unlock(a12);
  sub_27138AE34(&a55);
  _Unwind_Resume(a1);
}

void sub_27152F134(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 560);
  std::mutex::lock(v4);
  v5 = *(a1 + 512);
  v6 = *(a2 + 32);
  v7 = *(a2 + 16);
  *(a1 + 472) = *a2;
  *(a1 + 488) = v7;
  *(a1 + 504) = v6;
  if ((v5 & 1) == 0)
  {
    *(a1 + 512) = 1;
  }

  std::mutex::unlock(v4);
}

uint64_t sub_27152F1A4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = *(a1 + 616);
  std::mutex::lock(v6);
  v7 = *(a1 + 632);
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = a1 + 632;
  v9 = a1 + 632;
  do
  {
    v10 = sub_271536E2C((v7 + 32), a2);
    if ((v10 & 0x80u) == 0)
    {
      v9 = v7;
    }

    v7 = *(v7 + ((v10 >> 4) & 8));
  }

  while (v7);
  if (v9 == v8 || (sub_271536E2C(a2, (v9 + 32)) & 0x80) != 0)
  {
LABEL_19:
    std::mutex::unlock(v6);
    LODWORD(v11) = 0;
    v20 = 0;
    return v20 | (v11 << 8);
  }

  v11 = *(v9 + 48);
  v12 = *(v9 + 56);
  v22 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock(v6);
  if (!v11)
  {
    v20 = 0;
    if (!v12)
    {
      return v20 | (v11 << 8);
    }

    goto LABEL_22;
  }

  std::mutex::lock(v11);
  v13 = *(a3 + 23);
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = sub_271502C1C(&v11[1]);
  if ((v13 & 0x80u) == 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = v14;
  }

  if ((v13 & 0x80u) == 0)
  {
    v18 = v13;
  }

  else
  {
    v18 = v15;
  }

  v19 = atomic_load(*(sub_2714FF1E0(v16, v17, v18) + 40));
  v20 = *v19 == 1;
  std::mutex::unlock(v11);
  LODWORD(v11) = 1;
  v12 = v22;
  if (v22)
  {
LABEL_22:
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  return v20 | (v11 << 8);
}

void sub_27152F330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock(v9);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27152F34C(uint64_t a1, unsigned __int8 *a2, void ***a3)
{
  v6 = *(a1 + 616);
  std::mutex::lock(v6);
  v7 = *(a1 + 632);
  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = a1 + 632;
  v9 = a1 + 632;
  do
  {
    v10 = sub_271536E2C((v7 + 32), a2);
    if ((v10 & 0x80u) == 0)
    {
      v9 = v7;
    }

    v7 = *(v7 + ((v10 >> 4) & 8));
  }

  while (v7);
  if (v9 == v8 || (sub_271536E2C(a2, (v9 + 32)) & 0x80) != 0)
  {
LABEL_25:
    std::mutex::unlock(v6);
    LODWORD(v11) = 0;
    v19 = 0;
    return v19 | (v11 << 8);
  }

  v11 = *(v9 + 48);
  v12 = *(v9 + 56);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock(v6);
  if (!v11)
  {
    v19 = 0;
    if (!v12)
    {
      return v19 | (v11 << 8);
    }

    goto LABEL_31;
  }

  std::mutex::lock(v11);
  v13 = *(a3 + 23);
  if (v13 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v13 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = a3[1];
  }

  if (sub_271501BA4(&v11[1], v14, v15))
  {
    v16 = *(a3 + 23);
    if (v16 >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    if (v16 >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = a3[1];
    }

    v19 = **(sub_271501398(&v11[1], v17, v18) + 32);
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v11);
  LODWORD(v11) = 1;
  if (v12)
  {
LABEL_31:
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  return v19 | (v11 << 8);
}

void sub_27152F4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock(v9);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27152F514(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 616);
  std::mutex::lock(v6);
  v7 = *(a1 + 632);
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = a1 + 632;
  v9 = a1 + 632;
  do
  {
    v10 = sub_271536E2C((v7 + 32), a2);
    if ((v10 & 0x80u) == 0)
    {
      v9 = v7;
    }

    v7 = *(v7 + ((v10 >> 4) & 8));
  }

  while (v7);
  if (v9 == v8 || (sub_271536E2C(a2, (v9 + 32)) & 0x80) != 0)
  {
LABEL_13:
    v21 = 0;
    v22 = 0;
    std::mutex::unlock(v6);
    v12 = 0;
    goto LABEL_14;
  }

  v11 = *(v9 + 48);
  v12 = *(v9 + 56);
  v21 = v11;
  v22 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock(v6);
  if (!v11)
  {
LABEL_14:
    *a3 = 0;
    *(a3 + 24) = 0;
    if (!v12)
    {
      return;
    }

    goto LABEL_15;
  }

  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  std::mutex::lock(v11);
  sub_2715028B8(&v11[1], &v16);
  v13 = v17;
  *a3 = v16;
  *(a3 + 8) = v13;
  v14 = a3 + 8;
  v15 = v18;
  *(a3 + 16) = v18;
  if (v15)
  {
    *(v13 + 16) = v14;
    v16 = &v17;
    v17 = 0;
    v18 = 0;
    v13 = 0;
  }

  else
  {
    *a3 = v14;
  }

  *(a3 + 24) = 1;
  sub_271167834(&v16, v13);
  std::mutex::unlock(v11);
  sub_271167834(&v19, v20[0]);
  v12 = v22;
  if (v22)
  {
LABEL_15:
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_27152F6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::mutex::unlock(v14);
  sub_271167834(&a12, a13);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27152F708()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v51 = *MEMORY[0x277D85DE8];
  *v0 = &unk_28810A640;
  sub_271536334(v20, v7);
  if (*(v6 + 40) == 1)
  {
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = 0;
  }

  v17[0] = 0;
  v19 = 0;
  v8 = *(v4 + 32);
  if (v8 != 1)
  {
LABEL_10:
    v14[0] = 0;
    v16 = 0;
    if (*(v2 + 32) == 1)
    {
      v11 = (v2 + 24);
      v10 = *(v2 + 24);
      if (v10)
      {
        if (v10 == v2)
        {
          v15 = v14;
          (*(*v10 + 24))(v10, v14);
          v16 = 1;
          v21[0] = 0;
          v23 = 0;
          if ((v19 & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_20;
        }

        v15 = *(v2 + 24);
      }

      else
      {
        v11 = &v15;
      }

      *v11 = 0;
      v16 = 1;
      v21[0] = 0;
      v23 = 0;
      if ((v8 & 1) == 0)
      {
LABEL_26:
        __token.__r_.__value_.__r.__words[0] = &unk_28810A690;
        __token.__r_.__value_.__s.__data_[8] = 0;
        __token.__r_.__value_.__s.__data_[16] = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v34 = 0;
        v32 = 0;
        v33 = 0;
        __p = 0u;
        v26 = 0u;
        LODWORD(v27) = 0;
        sub_271536334(&v35, v20);
        v36 = 0;
        v38 = 0;
        if (v23 != 1)
        {
          goto LABEL_33;
        }

        v13 = v22;
        if (v22)
        {
          if (v22 == v21)
          {
            v37 = &v36;
            (*(*v22 + 24))();
            goto LABEL_32;
          }

          v13 = (*(*v22 + 16))();
        }

        v37 = v13;
LABEL_32:
        v38 = 1;
LABEL_33:
        v39 = 0;
        v40 = 0;
        v44 = 0;
        v47 = 0;
        v48 = 0;
        v50 = 0u;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v45 = 0u;
        memset(v46, 0, 25);
        v49 = &v50;
        operator new();
      }
    }

    else
    {
      v21[0] = 0;
      v23 = 0;
      if (!v8)
      {
        goto LABEL_26;
      }
    }

LABEL_20:
    v12 = v18;
    if (v18)
    {
      if (v18 == v17)
      {
        v22 = v21;
        (*(*v18 + 24))();
        goto LABEL_25;
      }

      v12 = (*(*v18 + 16))();
    }

    v22 = v12;
LABEL_25:
    v23 = 1;
    goto LABEL_26;
  }

  v9 = *(v4 + 24);
  if (v9)
  {
    if (v9 == v4)
    {
      v18 = v17;
      (*(*v9 + 24))(v9, v17);
      goto LABEL_9;
    }

    v9 = (*(*v9 + 16))(v9);
  }

  v18 = v9;
LABEL_9:
  v19 = 1;
  goto LABEL_10;
}

void sub_271531428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, int a63)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  sub_27112E024(&STACK[0x310]);
  sub_27112F828(&a59);
  sub_271372B20(&a66);
  sub_271372BB8(&STACK[0x200]);
  sub_2711B0820(&a22);
  sub_271372C50(&STACK[0x228]);
  _Unwind_Resume(a1);
}

void *sub_2715316BC(void *result)
{
  *result = &unk_28810A640;
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

void sub_271531750(void *a1)
{
  *a1 = &unk_28810A640;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27153183C(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 4);
  v3 = *(v2 + 560);
  std::mutex::lock(v3);
  v4 = *(v2 + 512);
  *(v2 + 472) = v5;
  *(v2 + 488) = v6;
  *(v2 + 504) = v7;
  if ((v4 & 1) == 0)
  {
    *(v2 + 512) = 1;
  }

  std::mutex::unlock(v3);
}

void sub_2715318B8(uint64_t *a1, uint64_t a2, char w2_0, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a3 + 23) < 0)
  {
    sub_271127178(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v11 = *(a3 + 16);
  }

  v12 = 1;
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  sub_2711B1344(&v8, v9, __p, __p);
  sub_2715319D4(a1, a2, w2_0, &v8);
}

void sub_2715319A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_271167834(&a10, a11);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2715319D4(uint64_t *a1, uint64_t a2, char a3, const void ***a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v10[1] = 0;
  v9 = v10;
  v4 = a4 + 1;
  v5 = *a4;
  if (*a4 != (a4 + 1))
  {
    do
    {
      sub_2711B1344(&v9, v10, v5 + 4, (v5 + 4));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  LOBYTE(v11) = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  LOBYTE(v15) = 0;
  v16 = 0;
  LOBYTE(v17) = 0;
  v18 = 0;
  LOBYTE(__p) = 0;
  v20 = 0;
  sub_271394340(&v9, &v11);
}

void sub_271531D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271392A1C(va);
  _Unwind_Resume(a1);
}

void sub_271531D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2714FBE4C(v14 - 96);
  sub_271134CBC(va);
  sub_271167834(&a9, a10);
  _Unwind_Resume(a1);
}

void sub_271531D98(uint64_t *a1, uint64_t a2, char a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a4 + 23) < 0)
  {
    sub_271127178(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v10 = *(a4 + 16);
  }

  v11 = 2;
  v8[0] = 0;
  v8[1] = 0;
  v7 = v8;
  sub_2711B1344(&v7, v8, __p, __p);
  sub_2715319D4(a1, a2, a3, &v7);
}

void sub_271531E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_271167834(&a10, a11);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271531EB4(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a4 + 23) < 0)
  {
    v8 = a5;
    sub_271127178(__p, *a4, *(a4 + 8));
    a5 = v8;
  }

  else
  {
    *__p = *a4;
    v12 = *(a4 + 16);
  }

  v13 = a5;
  v10[0] = 0;
  v10[1] = 0;
  v9 = v10;
  sub_2711B1344(&v9, v10, __p, __p);
  sub_2715319D4(a1, a2, a3, &v9);
}

void sub_271531FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_271167834(&a10, a11);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_271531FDC(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = sub_271120E64(a1, "Server<", 7);
  v16 = a2;
  v22 = 0;
  sub_271136C48(&v20, v21, &v16);
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v20 = &v19;
  (off_288133448[v22])(__p, &v20, v21);
  if (v22 != -1)
  {
    (off_288133400[v22])(&v20, v21);
  }

  if ((v18 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v5 = v18;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_271120E64(v3, v4, v5);
  v7 = sub_271120E64(v6, ">{", 2);
  v8 = *(a2 + 8);
  sub_2718179D4((v8 + 24), v21);
  v9 = sub_271120E64(v7, v21, 36);
  v10 = sub_271120E64(v9, ", tcp/ip ", 9);
  if (*(v8 + 552))
  {
    v11 = "enabled";
  }

  else
  {
    v11 = "disabled";
  }

  if (*(v8 + 552))
  {
    v12 = 7;
  }

  else
  {
    v12 = 8;
  }

  v13 = sub_271120E64(v10, v11, v12);
  result = sub_271120E64(v13, "}", 1);
  if (v18 < 0)
  {
    v15 = result;
    operator delete(__p[0]);
    return v15;
  }

  return result;
}

void sub_271532174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2715321C8(uint64_t a1)
{
  if (*(a1 + 80) != 1)
  {
    goto LABEL_5;
  }

  v2 = *(a1 + 72);
  if (v2 != a1 + 48)
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

LABEL_5:
    if (*(a1 + 40) == 1)
    {
      goto LABEL_6;
    }

    return a1;
  }

  (*(*v2 + 32))(v2);
  if (*(a1 + 40) != 1)
  {
    return a1;
  }

LABEL_6:
  v3 = *(a1 + 32);
  if (v3 != a1 + 8)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }

  (*(*v3 + 32))(v3);
  return a1;
}

void sub_2715322DC(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 72);
    if (v2 == a1 + 48)
    {
      (*(*v2 + 32))(v2);
      if (*(a1 + 40) != 1)
      {
        goto LABEL_12;
      }

      goto LABEL_6;
    }

    if (v2)
    {
      (*(*v2 + 40))(v2);
    }
  }

  if (*(a1 + 40) != 1)
  {
    goto LABEL_12;
  }

LABEL_6:
  v3 = *(a1 + 32);
  if (v3 == a1 + 8)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

LABEL_12:

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271532404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 40) == 1)
  {
    v8 = *(a1 + 32);
    if (!v8)
    {
      sub_27112AFFC();
    }

    (*(*v8 + 48))(v8);
  }

  (*(*a2 + 32))(v12, a2);
  if (v21)
  {
    v9 = (*(*a2 + 72))(a2, v12[0], a3, a4);
    if (*(a1 + 80) != 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    if (*(a1 + 80) != 1)
    {
      goto LABEL_10;
    }
  }

  v22 = v9;
  v10 = *(a1 + 72);
  if (!v10)
  {
    sub_27112AFFC();
  }

  (*(*v10 + 48))(v10, &v22);
LABEL_10:
  if ((v21 & 1) == 0 && v20 == 1)
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
      operator delete(v12[2]);
    }
  }

  return v9;
}

void sub_2715325A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715325C4(uint64_t a1)
{
  *a1 = &unk_28810C398;
  *(a1 + 8) = &unk_28810C430;
  sub_271532754(a1, 0, 0);
  v2 = *(a1 + 448);
  *(a1 + 448) = 0;
  if (v2)
  {
    std::thread::~thread(v2);
    MEMORY[0x2743BF050]();
  }

  if (*(a1 + 440) == 1)
  {
    v3 = *(a1 + 432);
    *(a1 + 432) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  std::mutex::~mutex((a1 + 360));
  std::condition_variable::~condition_variable((a1 + 312));
  if (*(a1 + 304) == 1)
  {
    v4 = *(a1 + 280);
    *(a1 + 280) = 0;
    if (v4)
    {
      std::mutex::~mutex(v4);
      MEMORY[0x2743BF050]();
    }

    v5 = *(a1 + 272);
    if (v5 == a1 + 248)
    {
      (*(*v5 + 32))(v5);
    }

    else if (v5)
    {
      (*(*v5 + 40))(v5);
    }
  }

  std::mutex::~mutex((a1 + 168));
  sub_2714D9770(*(a1 + 152));
  std::condition_variable::~condition_variable((a1 + 96));
  std::mutex::~mutex((a1 + 32));
  return a1;
}

void sub_271532754(uint64_t a1, std::unique_lock<std::mutex> *__lk, char a3)
{
  v5 = (a1 + 168);
  v9 = (a1 + 168);
  v10 = 0;
  if (a3)
  {
    if (*(a1 + 240) != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    std::mutex::lock((a1 + 168));
    v10 = 1;
    __lk = &v9;
    if (*(a1 + 240) != 1)
    {
      goto LABEL_12;
    }
  }

  atomic_store(1u, (a1 + 241));
  if (*(a1 + 304) == 1)
  {
    v7 = *(a1 + 280);
    std::mutex::lock(v7);
    v8 = *(a1 + 296);
    if (v8)
    {
      std::mutex::lock(*(a1 + 296));
      std::condition_variable::notify_all(*(a1 + 288));
      std::mutex::unlock(v8);
    }

    std::mutex::unlock(v7);
    if ((*(a1 + 240) & 1) == 0)
    {
LABEL_12:
      if (a3)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  do
  {
    std::condition_variable::wait((a1 + 312), __lk);
  }

  while ((*(a1 + 240) & 1) != 0);
  if (v10)
  {
    v5 = v9;
LABEL_13:
    std::mutex::unlock(v5);
  }
}

void sub_271532858(_Unwind_Exception *a1)
{
  std::mutex::unlock(v3);
  if ((v2 & 1) == 0)
  {
    std::mutex::unlock(v1);
  }

  _Unwind_Resume(a1);
}

void sub_27153288C(uint64_t a1)
{
  sub_2715325C4(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715328C4(uint64_t a1)
{
  sub_2715325C4(a1 - 8);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271532900(unint64_t *a1)
{
  sub_271532754(a1, 0, 0);
  atomic_store("waiting", a1 + 29);
  v2 = *(*a1 + 64);

  return v2(a1);
}

uint64_t sub_271532978(uint64_t a1)
{
  v4.__m_ = (a1 + 168);
  v4.__owns_ = 1;
  std::mutex::lock((a1 + 168));
  sub_271532754(a1, &v4, 1);
  if (*(a1 + 440) == 1)
  {
    v2 = *(a1 + 432);
    *(a1 + 432) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    *(a1 + 440) = 0;
  }

  if (v4.__owns_)
  {
    std::mutex::unlock(v4.__m_);
  }

  atomic_store("proceeding", (a1 + 232));
  return (*(*a1 + 72))(a1);
}

void sub_271532A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_271532A78(uint64_t a1, uint64_t a2)
{
  sub_271532754(a1, 0, 0);
  std::mutex::lock((a1 + 360));
  while (!std::mutex::try_lock((a1 + 168)))
  {
    std::mutex::unlock((a1 + 360));
    sched_yield();
    std::mutex::lock((a1 + 168));
    if (std::mutex::try_lock((a1 + 360)))
    {
      break;
    }

    std::mutex::unlock((a1 + 168));
    sched_yield();
    std::mutex::lock((a1 + 360));
  }

  if (*(a1 + 440) == 1)
  {
    v5 = *(a2 + 8);
    *(a2 + 8) = 0;
    v6 = *(a1 + 432);
    *(a1 + 432) = v5;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  else
  {
    v7 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 424) = &unk_28810C368;
    *(a1 + 432) = v7;
    *(a1 + 440) = 1;
  }

  sub_271532BB4(a1, v4);
}

void sub_271532B98(_Unwind_Exception *a1)
{
  std::mutex::unlock((v1 + 360));
  std::mutex::unlock((v1 + 168));
  _Unwind_Resume(a1);
}

void sub_271532BB4(uint64_t a1, __n128 a2)
{
  v12[7] = *MEMORY[0x277D85DE8];
  if (*(a1 + 240) != 1)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/Server.cpp", 890, "!control_.pattern_running", 0x19uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      a2.n128_f64[0] = qword_28087C420(*algn_28087C428, "!control_.pattern_running", 25, "", 0);
LABEL_10:
      if (!*(a1 + 448))
      {
        goto LABEL_19;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/Server.cpp", 891, "!control_.thread", 0x10uLL, "", 0, sub_271852CA8, a2.n128_f64[0]);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_18:
          a2.n128_f64[0] = qword_28087C420(*algn_28087C428, "!control_.thread", 16, "", 0);
LABEL_19:
          atomic_store(0, (a1 + 241));
          *(a1 + 240) = 1;
          atomic_store((*(**(a1 + 432) + 24))(*(a1 + 432), a2), (a1 + 232));
          v11[0] = &unk_2881334B8;
          v11[1] = a1;
          v12[3] = v12;
          v11[3] = v11;
          v12[0] = &unk_2881334B8;
          v12[1] = a1;
          operator new();
        }
      }

      else
      {
        v7 = qword_28087C408;
        v8 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_20;
        }
      }

      do
      {
        v10 = *v7;
        v9 = *(v7 + 8);
        v7 += 16;
        v10(v9, "!control_.thread", 16, "", 0);
      }

      while (v7 != v8);
      if (byte_28087C430)
      {
        goto LABEL_18;
      }

LABEL_20:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_20;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "!control_.pattern_running", 25, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_20;
  }

  goto LABEL_9;
}

void sub_271533204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271533268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_27139272C(va1);
  sub_27139272C(va);
  _Unwind_Resume(a1);
}

void sub_271533284(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715366FC(va);
  JUMPOUT(0x271533290);
}

void sub_2715332AC(uint64_t a1)
{
  std::mutex::lock((a1 + 168));
  v2 = *(a1 + 240);
  std::mutex::unlock((a1 + 168));
  if ((v2 & 1) == 0)
  {
    std::mutex::lock((a1 + 360));
    while (!std::mutex::try_lock((a1 + 168)))
    {
      std::mutex::unlock((a1 + 360));
      sched_yield();
      std::mutex::lock((a1 + 168));
      if (std::mutex::try_lock((a1 + 360)))
      {
        break;
      }

      std::mutex::unlock((a1 + 168));
      sched_yield();
      std::mutex::lock((a1 + 360));
    }

    if ((*(a1 + 240) & 1) != 0 || (v4 = atomic_load((a1 + 232)), v4 != "waiting"))
    {
      std::mutex::unlock((a1 + 360));
      std::mutex::unlock((a1 + 168));
    }

    else
    {
      if (*(a1 + 440) == 1)
      {
        sub_271532BB4(a1, v3);
      }

      std::mutex::unlock((a1 + 360));
      std::mutex::unlock((a1 + 168));
      sub_271532978(a1);
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

void sub_271533460(_Unwind_Exception *a1)
{
  std::mutex::unlock((v1 + 360));
  std::mutex::unlock((v1 + 168));
  _Unwind_Resume(a1);
}

void sub_271533488(uint64_t *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a1[2];
  v3 = a1[3];
  a1[3] = v3 + 1;
  v4 = v3;
  v5 = 0;
  v6 = 1;
  v7 = 0;
  v8 = 0;
  (*(*v2 + 56))(v2, &v4);
  v4 = v3;
  v5 = 0;
  v6 = 1;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 1;
  LOBYTE(v11) = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  LOBYTE(v15) = 0;
  v16 = 0;
  LOBYTE(v17) = 0;
  v18 = 0;
  LOBYTE(v19) = 0;
  v20 = 0;
  sub_2713907D0(&v4, &v11);
}

void sub_27153378C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, char *);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_271392A1C(va);
  sub_2714FBE4C(v15 - 80);
  sub_271134CBC(va1);
  _Unwind_Resume(a1);
}

void sub_2715337B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_2715337D8(uint64_t *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a1[2];
  v3 = a1[3];
  a1[3] = v3 + 1;
  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  (*(*v2 + 56))(v2, &v4);
  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 1;
  LOBYTE(v11) = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  LOBYTE(v15) = 0;
  v16 = 0;
  LOBYTE(v17) = 0;
  v18 = 0;
  LOBYTE(v19) = 0;
  v20 = 0;
  sub_2713907D0(&v4, &v11);
}

void sub_271533AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, char *);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_271392A1C(va);
  sub_2714FBE4C(v15 - 80);
  sub_271134CBC(va1);
  _Unwind_Resume(a1);
}

void sub_271533B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_271533B30(uint64_t *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1[2];
  v4 = a1[3];
  a1[3] = v4 + 1;
  v11 = v4;
  LOBYTE(v12) = 1;
  v13 = 0;
  v14 = 0;
  (*(*v3 + 56))(v3, &v11);
  v5[0] = v4;
  v5[1] = 1;
  LOBYTE(v6) = 1;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  LOBYTE(v10) = 1;
  LOBYTE(v15) = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  LOBYTE(v19) = 0;
  v20 = 0;
  LOBYTE(v21) = 0;
  v22 = 0;
  LOBYTE(v23) = 0;
  v24 = 0;
  sub_2713907D0(v5, &v15);
}

void sub_271533FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_27112D66C(v26 + 16);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_271533FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  sub_271392A1C(&a24);
  sub_2714FBE4C(v42 - 96);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_27153401C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_27153403C(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  v8 = a1 + 32;
  v24.__m_ = (a1 + 32);
  v24.__owns_ = 1;
  std::mutex::lock((a1 + 32));
  if (a4)
  {
    v9 = a3[4];
    std::mutex::lock(v9);
    a3[5] = a1 + 96;
    a3[6] = v8;
    std::mutex::unlock(v9);
    v10 = (a1 + 152);
    v11 = *(a1 + 144);
    if (v11 != (a1 + 152))
    {
      goto LABEL_7;
    }

LABEL_24:
    v13 = 1;
    v17 = a3[3];
    if (!v17)
    {
      goto LABEL_47;
    }

LABEL_25:
    while (((v13 | (*(*v17 + 48))(v17)) & 1) == 0)
    {
      std::condition_variable::wait((a1 + 96), &v24);
      v11 = *(a1 + 144);
      if (v11 == v10)
      {
        goto LABEL_24;
      }

LABEL_7:
      while (*(v11 + 104) == 1)
      {
        if (*(v11 + 64))
        {
          if (*(v11 + 56) != 1)
          {
            v13 = 0;
            v17 = a3[3];
            if (!v17)
            {
              goto LABEL_47;
            }

            goto LABEL_25;
          }

          v12 = v11[6];
          if (v12 <= a2)
          {
            v13 = 0;
            if (*(v11 + 64) > 2u || v12 != a2)
            {
              goto LABEL_20;
            }
          }
        }

        v14 = v11[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v11[2];
            v16 = *v15 == v11;
            v11 = v15;
          }

          while (!v16);
        }

        v11 = v15;
        if (v15 == v10)
        {
          goto LABEL_24;
        }
      }

      v13 = 0;
LABEL_20:
      v17 = a3[3];
      if (!v17)
      {
LABEL_47:
        sub_27112AFFC();
      }
    }

    if (!v24.__owns_)
    {
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
      return;
    }

    std::mutex::unlock(v24.__m_);
    v24.__owns_ = 0;
    v18 = a3[4];
    std::mutex::lock(v18);
    a3[5] = 0;
    a3[6] = 0;
    std::mutex::unlock(v18);
    if (v24.__owns_)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v19 = (a1 + 152);
    v20 = *(a1 + 144);
    if (v20 != (a1 + 152))
    {
      do
      {
        while (1)
        {
          if (*(v20 + 104) == 1)
          {
            if (!*(v20 + 64))
            {
              break;
            }

            if (*(v20 + 56) == 1)
            {
              v21 = v20[6];
              if (v21 > a2 || *(v20 + 64) <= 2u && v21 == a2)
              {
                break;
              }
            }
          }

          std::condition_variable::wait((a1 + 96), &v24);
          v20 = *(a1 + 144);
          if (v20 == v19)
          {
            goto LABEL_44;
          }
        }

        v22 = v20[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v20[2];
            v16 = *v23 == v20;
            v20 = v23;
          }

          while (!v16);
        }

        v20 = v23;
      }

      while (v23 != v19);
    }

LABEL_44:
    if (v24.__owns_)
    {
LABEL_45:
      std::mutex::unlock(v24.__m_);
    }
  }
}

void sub_2715342E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_271534318(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, char a5)
{
  v10 = a1 + 32;
  v31.__m_ = (a1 + 32);
  v31.__owns_ = 1;
  std::mutex::lock((a1 + 32));
  if (a5)
  {
    v11 = a4[4];
    std::mutex::lock(v11);
    a4[5] = a1 + 96;
    a4[6] = v10;
    std::mutex::unlock(v11);
  }

  v12.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + a3;
  v13 = (a1 + 152);
  while (1)
  {
    v16 = *(a1 + 144);
    if (v16 == v13)
    {
      break;
    }

    while (1)
    {
      if (*(v16 + 104) != 1)
      {
        v17 = 0;
LABEL_26:
        if ((a5 & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_27;
      }

      if (*(v16 + 64))
      {
        break;
      }

LABEL_19:
      v19 = v16[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v16[2];
          v21 = *v20 == v16;
          v16 = v20;
        }

        while (!v21);
      }

      v16 = v20;
      if (v20 == v13)
      {
        goto LABEL_9;
      }
    }

    if (*(v16 + 56) == 1)
    {
      v18 = v16[6];
      if (v18 <= a2)
      {
        v17 = 0;
        if (*(v16 + 64) > 2u || v18 != a2)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_19;
    }

    v17 = 0;
    if (a5)
    {
      goto LABEL_27;
    }

LABEL_10:
    if (v17)
    {
LABEL_64:
      if (v31.__owns_)
      {
        std::mutex::unlock(v31.__m_);
      }

      return;
    }

LABEL_29:
    if (v12.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      goto LABEL_42;
    }

    v23.__d_.__rep_ = v12.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v23.__d_.__rep_ < 1)
    {
      goto LABEL_7;
    }

    std::chrono::steady_clock::now();
    v24.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v24.__d_.__rep_)
    {
      v14 = 0;
      goto LABEL_5;
    }

    if (v24.__d_.__rep_ < 1)
    {
      if (v24.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
      {
LABEL_38:
        v14 = 1000 * v24.__d_.__rep_;
        if (1000 * v24.__d_.__rep_ > (v23.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
        {
          goto LABEL_39;
        }
      }

      else
      {
        v14 = 0x8000000000000000;
      }

LABEL_5:
      v15.__d_.__rep_ = v14 + v23.__d_.__rep_;
      goto LABEL_6;
    }

    if (v24.__d_.__rep_ <= 0x20C49BA5E353F7)
    {
      goto LABEL_38;
    }

    v14 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v23.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_5;
    }

LABEL_39:
    v15.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:
    std::condition_variable::__do_timed_wait((a1 + 96), &v31, v15);
    std::chrono::steady_clock::now();
LABEL_7:
    if (std::chrono::steady_clock::now().__d_.__rep_ >= v12.__d_.__rep_)
    {
LABEL_42:
      v25 = *(a1 + 144);
      if (v25 == v13)
      {
LABEL_43:
        if (a5)
        {
          goto LABEL_60;
        }
      }

      else
      {
        while (*(v25 + 104) == 1)
        {
          if (*(v25 + 64))
          {
            if (*(v25 + 56) != 1)
            {
              if ((a5 & 1) == 0)
              {
                goto LABEL_64;
              }

LABEL_60:
              v29 = a4[3];
              if (v29)
              {
                (*(*v29 + 48))(v29);
                goto LABEL_62;
              }

LABEL_69:
              sub_27112AFFC();
            }

            v26 = v25[6];
            if (v26 <= a2 && (*(v25 + 64) > 2u || v26 != a2))
            {
              break;
            }
          }

          v27 = v25[1];
          if (v27)
          {
            do
            {
              v28 = v27;
              v27 = *v27;
            }

            while (v27);
          }

          else
          {
            do
            {
              v28 = v25[2];
              v21 = *v28 == v25;
              v25 = v28;
            }

            while (!v21);
          }

          v25 = v28;
          if (v28 == v13)
          {
            goto LABEL_43;
          }
        }

        if (a5)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_64;
    }
  }

LABEL_9:
  v17 = 1;
  if ((a5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_27:
  v22 = a4[3];
  if (!v22)
  {
    goto LABEL_69;
  }

  if (((v17 | (*(*v22 + 48))(v22)) & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_62:
  if (v31.__owns_)
  {
    std::mutex::unlock(v31.__m_);
    v31.__owns_ = 0;
    v30 = a4[4];
    std::mutex::lock(v30);
    a4[5] = 0;
    a4[6] = 0;
    std::mutex::unlock(v30);
    goto LABEL_64;
  }

  std::__throw_system_error(1, "unique_lock::unlock: not locked");
  __break(1u);
}

void sub_2715346AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715346DC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  std::mutex::lock((a1 + 32));
  v6 = *(a1 + 152);
  if (v6)
  {
    v7 = a1 + 152;
    do
    {
      v8 = sub_271536E2C((v6 + 32), a2);
      if ((v8 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v6 = *(v6 + ((v8 >> 4) & 8));
    }

    while (v6);
    if (v7 != a1 + 152 && (sub_271536E2C(a2, (v7 + 32)) & 0x80) == 0)
    {
      if ((*(v7 + 104) & 1) == 0)
      {
        *&v16 = *(a3 + 16);
        BYTE8(v16) = *(a3 + 24);
        v12 = *(a3 + 16);
        *(v7 + 64) = *a3;
        *(v7 + 80) = v12;
        *(v7 + 48) = v16;
        *(v7 + 96) = 1;
        *(v7 + 104) = 1;
LABEL_18:
        std::condition_variable::notify_all((a1 + 96));
        goto LABEL_19;
      }

      v9 = *(a3 + 24);
      if (v9 == 1)
      {
        v10 = (a3 + 16);
        v11 = (a3 + 17);
      }

      else
      {
        v9 = *(v7 + 88);
        if (v9 != 1)
        {
          LOBYTE(v9) = 0;
          v13 = 0;
LABEL_16:
          *(v7 + 48) = v13;
          *(v7 + 49) = v16;
          *(v7 + 52) = *(&v16 + 3);
          *(v7 + 56) = v9;
          v14 = *(v7 + 96);
          v15 = *(a3 + 16);
          *(v7 + 64) = *a3;
          *(v7 + 80) = v15;
          if ((v14 & 1) == 0)
          {
            *(v7 + 96) = 1;
          }

          goto LABEL_18;
        }

        v10 = (v7 + 80);
        v11 = (v7 + 81);
      }

      v13 = *v10;
      LODWORD(v16) = *v11;
      *(&v16 + 3) = *(v11 + 3);
      goto LABEL_16;
    }
  }

LABEL_19:

  std::mutex::unlock((a1 + 32));
}

void sub_271534878(uint64_t a1, _OWORD *a2)
{
  std::mutex::lock((a1 + 32));
  v5 = a2;
  v4 = sub_271537344((a1 + 144), a2, &v5);
  *(v4 + 48) = 0;
  *(v4 + 104) = 0;

  std::mutex::unlock((a1 + 32));
}

void sub_2715348F0(uint64_t a1, _OWORD *a2)
{
  std::mutex::lock((a1 + 24));
  v5 = a2;
  v4 = sub_271537344((a1 + 136), a2, &v5);
  *(v4 + 48) = 0;
  *(v4 + 104) = 0;

  std::mutex::unlock((a1 + 24));
}

void sub_271534968(uint64_t a1, unsigned __int8 *a2)
{
  std::mutex::lock((a1 + 32));
  v5 = (a1 + 152);
  v4 = *(a1 + 152);
  if (v4)
  {
    v6 = a1 + 152;
    v7 = *(a1 + 152);
    do
    {
      v8 = sub_271536E2C((v7 + 32), a2);
      if ((v8 & 0x80u) == 0)
      {
        v6 = v7;
      }

      v7 = *(v7 + ((v8 >> 4) & 8));
    }

    while (v7);
    if (v6 != v5 && (sub_271536E2C(a2, (v6 + 32)) & 0x80) == 0)
    {
      v9 = (a1 + 152);
      v10 = v4;
      do
      {
        v11 = sub_271536E2C(v10 + 32, a2);
        if ((v11 & 0x80u) == 0)
        {
          v9 = v10;
        }

        v10 = *(v10 + ((v11 >> 4) & 8));
      }

      while (v10);
      if (v9 == v5 || (sub_271536E2C(a2, v9 + 32) & 0x80) != 0)
      {
        v9 = (a1 + 152);
      }

      v12 = v9[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        v14 = v9;
        do
        {
          v13 = v14[2];
          v15 = *v13 == v14;
          v14 = v13;
        }

        while (!v15);
      }

      if (*(a1 + 144) == v9)
      {
        *(a1 + 144) = v13;
      }

      --*(a1 + 160);
      sub_271128F64(v4, v9);
      operator delete(v9);
    }
  }

  std::condition_variable::notify_all((a1 + 96));

  std::mutex::unlock((a1 + 32));
}

void sub_271534AC8(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock((a1 + 32));
  v6 = *(a1 + 152);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = a1 + 152;
  do
  {
    v8 = sub_271536E2C((v6 + 32), a2);
    if ((v8 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v6 = *(v6 + ((v8 >> 4) & 8));
  }

  while (v6);
  if (v7 == a1 + 152 || (sub_271536E2C(a2, (v7 + 32)) & 0x80) != 0 || (*(v7 + 104) & 1) == 0)
  {
LABEL_10:
    v10 = 0;
    *a3 = 0;
  }

  else
  {
    v9 = *(v7 + 80);
    *a3 = *(v7 + 64);
    *(a3 + 16) = v9;
    v10 = 1;
  }

  *(a3 + 32) = v10;

  std::mutex::unlock((a1 + 32));
}

void sub_271534B90(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock((a1 + 24));
  v6 = *(a1 + 144);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = a1 + 144;
  do
  {
    v8 = sub_271536E2C((v6 + 32), a2);
    if ((v8 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v6 = *(v6 + ((v8 >> 4) & 8));
  }

  while (v6);
  if (v7 == a1 + 144 || (sub_271536E2C(a2, (v7 + 32)) & 0x80) != 0 || (*(v7 + 104) & 1) == 0)
  {
LABEL_10:
    v10 = 0;
    *a3 = 0;
  }

  else
  {
    v9 = *(v7 + 80);
    *a3 = *(v7 + 64);
    *(a3 + 16) = v9;
    v10 = 1;
  }

  *(a3 + 32) = v10;

  std::mutex::unlock((a1 + 24));
}

uint64_t sub_271534C60(uint64_t result)
{
  *result = &unk_2881331E0;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_271534CB4(uint64_t a1)
{
  *a1 = &unk_2881331E0;
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271534D90(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881331E0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_271534DC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_271534DD8(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void sub_271534E1C(uint64_t a1, char *a2, const void ****a3)
{
  v32 = 0;
  v33 = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v7 = std::__shared_weak_count::lock(v4);
  v33 = v7;
  if (!v7 || (v8 = *(a1 + 8), (v32 = v8) == 0))
  {
LABEL_6:
    sub_271535104(&v21, "server cannot receive data from network", 39);
    v9 = v21;
    LOBYTE(v10[0]) = 0;
    v19 = 0;
    if (v31 != 1)
    {
      v20 = 0;
      goto LABEL_16;
    }

    v12 = 0;
    if (v24 == 1)
    {
      *v10 = __p;
      v11 = v23;
      v23 = 0;
      __p = 0uLL;
      v12 = 1;
      LOBYTE(v13[0]) = 0;
      v18 = 0;
      if ((v30 & 1) == 0)
      {
LABEL_9:
        v19 = 1;
        v20 = 0;
        if (!v24)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }

    else
    {
      LOBYTE(v13[0]) = 0;
      v18 = 0;
      if ((v30 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v14 = v26;
    *v13 = v25;
    v25 = 0uLL;
    v15 = v27;
    *v16 = v28;
    v17 = v29;
    v26 = 0;
    v28 = 0uLL;
    v29 = 0;
    v18 = 1;
    v19 = 1;
    v20 = 0;
    if (!v24)
    {
      goto LABEL_16;
    }

LABEL_14:
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p);
    }

LABEL_16:
    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  sub_27152B698(&v9, v8, a2, a3);
LABEL_17:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (v20)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_18:
  if (v20)
  {
    return;
  }

LABEL_21:
  if (v19 == 1)
  {
    if (v18 == 1)
    {
      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      if (SHIBYTE(v14) < 0)
      {
        operator delete(v13[0]);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }
}

uint64_t sub_27153508C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_271535104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = ", server object has been destroyed";
  v13[3] = 34;
  sub_271131230(v13, &v14, 0, 0, &v4);
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v4.__r_.__value_.__l.__data_, v4.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v4;
  }

  v6 = 1;
  LOBYTE(v7) = 0;
  v11 = 0;
  v12 = 1;
  sub_271389570(2, &__p, a1);
  if (v12 != 1)
  {
    goto LABEL_11;
  }

  if (v11 == 1)
  {
    if ((v10 & 0x80000000) == 0)
    {
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_15:
      operator delete(v7);
      if (v6 != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    operator delete(v9);
    if (v8 < 0)
    {
      goto LABEL_15;
    }
  }

LABEL_8:
  if (v6 != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_11:
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_271535250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271535288(uint64_t result)
{
  *result = &unk_288133250;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_2715352DC(uint64_t a1)
{
  *a1 = &unk_288133250;
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715353B8(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_288133250;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2715353F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_271535400(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void sub_271535444(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v33 = 0;
  v34 = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
    v8 = 0;
    goto LABEL_6;
  }

  v8 = std::__shared_weak_count::lock(v5);
  v34 = v8;
  if (!v8 || (v9 = *(a1 + 8), (v33 = v9) == 0))
  {
LABEL_6:
    sub_271535104(&v22, "server cannot receive sync from network", 39);
    v10 = v22;
    LOBYTE(v11[0]) = 0;
    v20 = 0;
    if (v32 != 1)
    {
      v21 = 0;
      goto LABEL_16;
    }

    v13 = 0;
    if (v25 == 1)
    {
      *v11 = __p;
      v12 = v24;
      v24 = 0;
      __p = 0uLL;
      v13 = 1;
      LOBYTE(v14[0]) = 0;
      v19 = 0;
      if ((v31 & 1) == 0)
      {
LABEL_9:
        v20 = 1;
        v21 = 0;
        if (!v25)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }

    else
    {
      LOBYTE(v14[0]) = 0;
      v19 = 0;
      if ((v31 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v15 = v27;
    *v14 = v26;
    v26 = 0uLL;
    v16 = v28;
    *v17 = v29;
    v18 = v30;
    v27 = 0;
    v29 = 0uLL;
    v30 = 0;
    v19 = 1;
    v20 = 1;
    v21 = 0;
    if (!v25)
    {
      goto LABEL_16;
    }

LABEL_14:
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p);
    }

LABEL_16:
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  sub_27152BB9C(&v10, v9, a2, a4);
LABEL_17:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if (v21)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_18:
  if (v21)
  {
    return;
  }

LABEL_21:
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
      operator delete(v11[0]);
    }
  }
}

uint64_t sub_2715356B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_27153572C(uint64_t result)
{
  *result = &unk_2881332C0;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_271535780(uint64_t a1)
{
  *a1 = &unk_2881332C0;
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27153585C(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881332C0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_271535894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_2715358A4(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void sub_2715358E8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *a3;
  v32 = 0;
  v33 = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v7 = std::__shared_weak_count::lock(v5);
  v33 = v7;
  if (!v7 || (v8 = *(a1 + 8), (v32 = v8) == 0))
  {
LABEL_6:
    sub_271535104(&v21, "server cannot receive connection update from network", 52);
    v9 = v21;
    LOBYTE(v10[0]) = 0;
    v19 = 0;
    if (v31 != 1)
    {
      v20 = 0;
      goto LABEL_16;
    }

    v12 = 0;
    if (v24 == 1)
    {
      *v10 = __p;
      v11 = v23;
      v23 = 0;
      __p = 0uLL;
      v12 = 1;
      LOBYTE(v13[0]) = 0;
      v18 = 0;
      if ((v30 & 1) == 0)
      {
LABEL_9:
        v19 = 1;
        v20 = 0;
        if (!v24)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }

    else
    {
      LOBYTE(v13[0]) = 0;
      v18 = 0;
      if ((v30 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v14 = v26;
    *v13 = v25;
    v25 = 0uLL;
    v15 = v27;
    *v16 = v28;
    v17 = v29;
    v26 = 0;
    v28 = 0uLL;
    v29 = 0;
    v18 = 1;
    v19 = 1;
    v20 = 0;
    if (!v24)
    {
      goto LABEL_16;
    }

LABEL_14:
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p);
    }

LABEL_16:
    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  sub_27152CCAC(&v9, v8, a2, v4);
LABEL_17:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (v20)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_18:
  if (v20)
  {
    return;
  }

LABEL_21:
  if (v19 == 1)
  {
    if (v18 == 1)
    {
      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      if (SHIBYTE(v14) < 0)
      {
        operator delete(v13[0]);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }
}

uint64_t sub_271535B58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_271535BD0(uint64_t result)
{
  *result = &unk_288133330;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_271535C24(uint64_t a1)
{
  *a1 = &unk_288133330;
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271535D00(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_288133330;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_271535D38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_271535D48(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void sub_271535D8C(uint64_t a1, char *a2, void *a3)
{
  v32 = 0;
  v33 = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v7 = std::__shared_weak_count::lock(v4);
  v33 = v7;
  if (!v7 || (v8 = *(a1 + 8), (v32 = v8) == 0))
  {
LABEL_6:
    sub_271535104(&v21, "server cannot receive context status update from network", 56);
    v9 = v21;
    LOBYTE(v10[0]) = 0;
    v19 = 0;
    if (v31 != 1)
    {
      v20 = 0;
      goto LABEL_16;
    }

    v12 = 0;
    if (v24 == 1)
    {
      *v10 = __p;
      v11 = v23;
      v23 = 0;
      __p = 0uLL;
      v12 = 1;
      LOBYTE(v13[0]) = 0;
      v18 = 0;
      if ((v30 & 1) == 0)
      {
LABEL_9:
        v19 = 1;
        v20 = 0;
        if (!v24)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }

    else
    {
      LOBYTE(v13[0]) = 0;
      v18 = 0;
      if ((v30 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v14 = v26;
    *v13 = v25;
    v25 = 0uLL;
    v15 = v27;
    *v16 = v28;
    v17 = v29;
    v26 = 0;
    v28 = 0uLL;
    v29 = 0;
    v18 = 1;
    v19 = 1;
    v20 = 0;
    if (!v24)
    {
      goto LABEL_16;
    }

LABEL_14:
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p);
    }

LABEL_16:
    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  sub_27152E2BC(&v9, v8, a2, a3);
LABEL_17:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (v20)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_18:
  if (v20)
  {
    return;
  }

LABEL_21:
  if (v19 == 1)
  {
    if (v18 == 1)
    {
      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      if (SHIBYTE(v14) < 0)
      {
        operator delete(v13[0]);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }
}

uint64_t sub_271535FFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_4")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_4" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_4"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_4" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_271536074(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 32) = 0;
  *(a1 + 24) = v4;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    if (*(a2 + 55) < 0)
    {
      sub_271127178((a1 + 32), *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
    }

    *(a1 + 56) = 1;
  }

  *(a1 + 64) = 0;
  *(a1 + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    sub_2711B0ED4(a1 + 64, (a2 + 64));
    *(a1 + 208) = 1;
  }

  v6 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = v6;
  v7 = *(a2 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 264);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_271536188(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2715361CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    while (1)
    {
      *(a1 + 16) = v3 - 288;
      v4 = *(v3 - 8);
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          break;
        }
      }

      v5 = *(v3 - 24);
      if (v5)
      {
        goto LABEL_7;
      }

LABEL_8:
      v6 = *(v3 - 40);
      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      sub_2711B039C(v3 - 280);
      v3 = *(a1 + 16);
      if (v3 == v2)
      {
        goto LABEL_12;
      }
    }

    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = *(v3 - 24);
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_7:
    std::__shared_weak_count::__release_weak(v5);
    goto LABEL_8;
  }

LABEL_12:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_2715362A8(void *a1)
{
  v2 = a1[35];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[31];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_2711B039C((a1 + 1));
  return a1;
}

uint64_t sub_271536334(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    v2 = (a2 + 24);
    v3 = *(a2 + 24);
    if (v3)
    {
      if (v3 == a2)
      {
        *(result + 24) = result;
        v4 = result;
        v5 = a2;
        (*(**v2 + 24))(*v2, result);
        a2 = v5;
        result = v4;
        goto LABEL_8;
      }

      *(result + 24) = v3;
    }

    else
    {
      v2 = (result + 24);
    }

    *v2 = 0;
LABEL_8:
    *(result + 32) = 1;
  }

  *(result + 40) = 0;
  v6 = result + 40;
  *(result + 72) = 0;
  if (*(a2 + 72) != 1)
  {
    goto LABEL_17;
  }

  v7 = (a2 + 64);
  v8 = *(a2 + 64);
  if (v8)
  {
    if (v8 == a2 + 40)
    {
      *(result + 64) = v6;
      v9 = result;
      v10 = a2;
      (*(**v7 + 24))(*v7, v6);
      a2 = v10;
      result = v9;
      goto LABEL_16;
    }

    *(result + 64) = v8;
  }

  else
  {
    v7 = (result + 64);
  }

  *v7 = 0;
LABEL_16:
  *(result + 72) = 1;
LABEL_17:
  *(result + 80) = 0;
  v11 = result + 80;
  *(result + 112) = 0;
  if (*(a2 + 112) != 1)
  {
    goto LABEL_25;
  }

  v12 = (a2 + 104);
  v13 = *(a2 + 104);
  if (v13)
  {
    if (v13 == a2 + 80)
    {
      *(result + 104) = v11;
      v14 = result;
      v15 = a2;
      (*(**v12 + 24))(*v12, v11);
      a2 = v15;
      result = v14;
      goto LABEL_24;
    }

    *(result + 104) = v13;
  }

  else
  {
    v12 = (result + 104);
  }

  *v12 = 0;
LABEL_24:
  *(result + 112) = 1;
LABEL_25:
  *(result + 120) = 0;
  v16 = result + 120;
  *(result + 152) = 0;
  if (*(a2 + 152) != 1)
  {
    return result;
  }

  v17 = (a2 + 144);
  v18 = *(a2 + 144);
  if (v18)
  {
    if (v18 == a2 + 120)
    {
      *(result + 144) = v16;
      v19 = result;
      (*(**v17 + 24))(*v17, v16);
      result = v19;
      goto LABEL_32;
    }

    *(result + 144) = v18;
  }

  else
  {
    v17 = (result + 144);
  }

  *v17 = 0;
LABEL_32:
  *(result + 152) = 1;
  return result;
}

uint64_t sub_271536590(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 8);
  std::mutex::lock((v4 + 360));
    ;
  }

  std::mutex::lock((v4 + 168));
  *(v4 + 240) = 0;
  std::thread::detach(*(v4 + 448));
  v5 = *(v4 + 448);
  *(v4 + 448) = 0;
  if (v5)
  {
    std::thread::~thread(v5);
    MEMORY[0x2743BF050]();
  }

  std::condition_variable::notify_all((v4 + 312));
  std::mutex::unlock((v4 + 168));
  std::mutex::unlock((v4 + 360));
  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    v7 = MEMORY[0x2743BE900]();
    MEMORY[0x2743BF050](v7, 0x20C4093837F09);
  }

  MEMORY[0x2743BF050](a1, 0x20C40A4A59CD2);
  return 0;
}

void sub_2715366A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::mutex::unlock((v3 + 168));
  std::mutex::unlock((v3 + 360));
  sub_2715366FC(va);
  _Unwind_Resume(a1);
}

void sub_2715366C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::mutex::unlock((v3 + 360));
  sub_2715366FC(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_2715366FC(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      v4 = MEMORY[0x2743BE900]();
      MEMORY[0x2743BF050](v4, 0x20C4093837F09);
    }

    MEMORY[0x2743BF050](v1, 0x20C40A4A59CD2);
    return v2;
  }

  return result;
}

void sub_271536768(void *a1)
{
  if (a1)
  {
    sub_271536768(*a1);
    sub_271536768(a1[1]);
    v2 = a1[7];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void sub_27153683C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271536A20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_271536A98(uint64_t a1, const char *a2)
{
  v5 = 0;
  v6 = v4;
  v7 = "server cannot receive ";
  v8 = v4;
  v9 = "server cannot receive ";
  v10 = "server cannot receive ";
  v11 = &v6;
  sub_2712C3BC8(&v11);
  if (*a2)
  {
    v6 = v4;
    v7 = a2;
    v8 = v4;
    v9 = a2;
    v10 = a2;
    if (v5 != -1)
    {
      v11 = &v6;
      (off_288133460[v5])(&v11, v4);
      goto LABEL_6;
    }

LABEL_11:
    sub_2711308D4();
  }

  v6 = v4;
  v7 = "nullptr";
  v8 = v4;
  v9 = "nullptr";
  v10 = "nullptr";
  if (v5 == -1)
  {
    goto LABEL_11;
  }

  v11 = &v6;
  (*(&off_288133418 + v5))(&v11, v4);
LABEL_6:
  v6 = v4;
  v7 = ", server object has been destroyed";
  v8 = v4;
  v9 = ", server object has been destroyed";
  v10 = ", server object has been destroyed";
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v11 = &v6;
  (*(&off_288133478 + v5))(&v11, v4);
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v6 = &v11;
  result = (off_288133448[v5])(&v6, v4);
  if (v5 != -1)
  {
    return (off_288133400[v5])(&v6, v4);
  }

  return result;
}

void sub_271536CA4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881060A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271536CF8(uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 96));

  std::mutex::~mutex((a1 + 32));
}

uint64_t *sub_271536D38(uint64_t **a1, unsigned __int8 *a2, _OWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v3;
      if ((sub_271536E2C(a2, v3 + 32) & 0x80) == 0)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((sub_271536E2C(v5 + 32, a2) & 0x80) == 0)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_271536E2C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == v3)
  {
    v2 = a1[1];
    v3 = a2[1];
    if (v2 == v3)
    {
      v2 = a1[2];
      v3 = a2[2];
      if (v2 == v3)
      {
        v2 = a1[3];
        v3 = a2[3];
        if (v2 == v3)
        {
          v2 = a1[4];
          v3 = a2[4];
          if (v2 == v3)
          {
            v2 = a1[5];
            v3 = a2[5];
            if (v2 == v3)
            {
              v2 = a1[6];
              v3 = a2[6];
              if (v2 == v3)
              {
                v2 = a1[7];
                v3 = a2[7];
                if (v2 == v3)
                {
                  v2 = a1[8];
                  v3 = a2[8];
                  if (v2 == v3)
                  {
                    v2 = a1[9];
                    v3 = a2[9];
                    if (v2 == v3)
                    {
                      v2 = a1[10];
                      v3 = a2[10];
                      if (v2 == v3)
                      {
                        v2 = a1[11];
                        v3 = a2[11];
                        if (v2 == v3)
                        {
                          v2 = a1[12];
                          v3 = a2[12];
                          if (v2 == v3)
                          {
                            v2 = a1[13];
                            v3 = a2[13];
                            if (v2 == v3)
                            {
                              v2 = a1[14];
                              v3 = a2[14];
                              if (v2 == v3)
                              {
                                v2 = a1[15];
                                v3 = a2[15];
                                if (v2 == v3)
                                {
                                  return 0;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t sub_271536F5C(uint64_t a1)
{
  v2 = *(**(a1 + 8) + 24);
  if (!v2)
  {
    sub_27112AFFC();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_271536FD0(uint64_t a1)
{
  v2 = *(**(a1 + 8) + 24);
  if (!v2)
  {
    sub_27112AFFC();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_27153704C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881060E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715370A0(uint64_t a1)
{
  sub_271167834(a1 + 104, *(a1 + 112));
  v2 = *(a1 + 96);
  *(a1 + 88) = &unk_28810B138;
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::mutex::~mutex((a1 + 24));
}

uint64_t sub_271537148(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *v1;
  v2 = v1[1];
  LOBYTE(v1) = **(a1 + 16);
  v4 = *(v3 + 24);
  v6 = v1;
  if (!v4)
  {
    sub_27112AFFC();
  }

  return (*(*v4 + 48))(v4, v2, &v6);
}

uint64_t sub_2715371C0(uint64_t a1)
{
  v2 = *(**(a1 + 8) + 24);
  if (!v2)
  {
    sub_27112AFFC();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_27153728C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881334B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_2715372CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit3viz11SyncControl12StartPatternEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit3viz11SyncControl12StartPatternEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit3viz11SyncControl12StartPatternEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit3viz11SyncControl12StartPatternEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t *sub_271537344(uint64_t **a1, unsigned __int8 *a2, _OWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v3;
      if ((sub_271536E2C(a2, v3 + 32) & 0x80) == 0)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((sub_271536E2C(v5 + 32, a2) & 0x80) == 0)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void sub_27153743C(float32x2_t *a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>, double a4@<D1>, double a5@<D3>)
{
  v7 = a1[3].f32[1];
  v82[0] = a1[1].f32[1];
  v82[1] = v7;
  v8 = a1[5].f32[1];
  v9 = a1[7].f32[1];
  v82[2] = v8;
  v82[3] = v9;
  v81 = xmmword_271897910;
  if (v82[0] != 0.0 && fabsf(v82[0]) > *a2 || v7 != 0.0 && fabsf(v7) > *a2 || v8 != 0.0 && fabsf(v8) > *a2)
  {
    goto LABEL_11;
  }

  if (v9 != 1.0)
  {
    v10 = 1.0 - v9;
    if (v9 > 1.0)
    {
      v10 = v9 + -1.0;
    }

    if (v10 > *a2)
    {
LABEL_11:
      LODWORD(v89) = 0;
      v90 = &v88;
      v91 = "se3 group matrix must be an affine 3x4 transform:\n";
      v92 = &v88;
      v93 = "se3 group matrix must be an affine 3x4 transform:\n";
      v94 = "se3 group matrix must be an affine 3x4 transform:\n";
      v83 = &v90;
      sub_2711F7FCC(&v83);
      v90 = &v88;
      v91 = "expected last row: ";
      v92 = &v88;
      v93 = "expected last row: ";
      v94 = "expected last row: ";
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v83 = &v90;
      (*(&off_288133540 + v89))(&v83, &v88);
      sub_27153D4D8(v85, &v88, &v81);
      v90 = &v88;
      v91 = "\n";
      v92 = &v88;
      v93 = "\n";
      v94 = "\n";
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v83 = &v90;
      (*(&off_288133558 + v89))(&v83, &v88);
      v90 = &v88;
      v91 = "  actual last row: ";
      v92 = &v88;
      v93 = "  actual last row: ";
      v94 = "  actual last row: ";
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v83 = &v90;
      (*(&off_288133540 + v89))(&v83, &v88);
      sub_27153D4D8(&v50, &v88, v82);
      v90 = &v88;
      v91 = "\n";
      v92 = &v88;
      v93 = "\n";
      v94 = "\n";
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v83 = &v90;
      (*(&off_288133558 + v89))(&v83, &v88);
      v90 = &v88;
      v91 = "   with tolerance: ";
      v92 = &v88;
      v93 = "   with tolerance: ";
      v94 = "   with tolerance: ";
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v83 = &v90;
      (*(&off_288133540 + v89))(&v83, &v88);
      sub_2711CDE78(&v90, &v88, a2);
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v90 = &v83;
      (off_288133588[v89])(&v86, &v90, &v88);
      if (v89 != -1)
      {
        (off_288133528[v89])(&v90, &v88);
      }

      if (SHIBYTE(v87) < 0)
      {
        sub_271127178(&v61, v86, *(&v86 + 1));
      }

      else
      {
        v61 = v86;
        v62 = v87;
      }

      v63 = 1;
      LOBYTE(v64) = 0;
      v68 = 0;
      v69 = 1;
      sub_27184B70C(&v61, &v70);
      *a3 = v70;
      *(a3 + 16) = 0;
      *(a3 + 112) = 0;
      if (v80 != 1)
      {
        *(a3 + 120) = 0;
        goto LABEL_48;
      }

      *(a3 + 40) = 0;
      v43 = v73;
      if (v73 == 1)
      {
        *(a3 + 16) = __p;
        *(a3 + 32) = v72;
        v72 = 0;
        __p = 0uLL;
        *(a3 + 40) = 1;
        *(a3 + 48) = 0;
        v44 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v79 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        *(a3 + 48) = 0;
        v44 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v79 & 1) == 0)
        {
LABEL_41:
          *(a3 + 112) = 1;
          *(a3 + 120) = 0;
          if (!v43)
          {
LABEL_48:
            if (v69 != 1)
            {
              goto LABEL_79;
            }

            if (v68 == 1)
            {
              if (v67 < 0)
              {
                operator delete(v66);
              }

              if (v65 < 0)
              {
                operator delete(v64);
              }
            }

            if (v63 != 1 || (SHIBYTE(v62) & 0x80000000) == 0)
            {
              goto LABEL_79;
            }

            v46 = v61;
LABEL_57:
            operator delete(v46);
LABEL_79:
            if (SHIBYTE(v87) < 0)
            {
              operator delete(v86);
            }

            return;
          }

LABEL_46:
          if (SHIBYTE(v72) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_48;
        }
      }

      v45 = v76;
      *(v44 + 16) = v75;
      *v44 = v74;
      v74 = 0uLL;
      *(a3 + 72) = v45;
      *(a3 + 80) = v77;
      *(a3 + 96) = v78;
      v75 = 0;
      v77 = 0uLL;
      v78 = 0;
      *(a3 + 104) = 1;
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v43)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }
  }

  v12 = *a1[4].f32;
  v11 = *a1[6].f32;
  v13 = *a1->f32;
  v14 = *a1[2].f32;
  v15 = vextq_s8(vextq_s8(v14, v14, 0xCuLL), v14, 8uLL);
  v16 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v17 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
  v18 = vextq_s8(vextq_s8(v12, v12, 0xCuLL), v12, 8uLL);
  v19 = vmlsq_f32(vmulq_f32(v15, v16), v17, v18);
  v20 = vextq_s8(v13, v13, 8uLL).u64[0];
  v21 = vmla_f32(vmla_lane_f32(vmul_f32(*a1, *v19.i8), vdup_lane_s32(*v19.i8, 1), *a1, 1), *&vextq_s8(v19, v19, 8uLL), v20).f32[0];
  v22 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
  v23 = vextq_s8(vextq_s8(v11, v11, 0xCuLL), v11, 8uLL);
  v24 = vmlsq_f32(vmulq_f32(v18, v22), v16, v23);
  v16.i64[0] = vextq_s8(v14, v14, 8uLL).u64[0];
  v25 = vdup_lane_s32(*v24.i8, 1);
  v26 = vmla_lane_f32(vmul_f32(*v14.i8, *v24.i8), v25, *v14.i8, 1);
  v14.i64[0] = vextq_s8(v24, v24, 8uLL).u64[0];
  v27 = vmlsq_f32(vmulq_f32(v15, v22), v17, v23);
  v28 = (((v9 * v21) - (v82[0] * vmla_f32(v26, *v14.i8, *v16.f32).f32[0])) - (v8 * vmla_f32(vmla_lane_f32(vmul_f32(*a1, *v27.i8), vdup_lane_s32(*v27.i8, 1), *a1, 1), *&vextq_s8(v27, v27, 8uLL), v20).f32[0])) + (v7 * vmla_f32(vmla_lane_f32(vmul_f32(*a1, *v24.i8), v25, *a1, 1), *v14.i8, v20).f32[0]);
  v60 = v28;
  if (v28 != 1.0)
  {
    v29 = a2 + 1;
    v30 = v28 >= 1.0 ? v28 + -1.0 : 1.0 - v28;
    if (v30 > a2[1])
    {
      LODWORD(v89) = 0;
      v90 = &v88;
      v91 = "se3 group matrix must have determinant 1\n";
      v92 = &v88;
      v93 = "se3 group matrix must have determinant 1\n";
      v94 = "se3 group matrix must have determinant 1\n";
      v83 = &v90;
      sub_2711DCE58(&v83);
      v90 = &v88;
      v91 = "actual determinant: ";
      v92 = &v88;
      v93 = "actual determinant: ";
      v94 = "actual determinant: ";
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v83 = &v90;
      (*(&off_2881335A0 + v89))(&v83, &v88);
      sub_2711CDE78(v85, &v88, &v60);
      v90 = &v88;
      v91 = "\n";
      v92 = &v88;
      v93 = "\n";
      v94 = "\n";
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v83 = &v90;
      (*(&off_288133558 + v89))(&v83, &v88);
      v90 = &v88;
      v91 = "    with tolerance: ";
      v92 = &v88;
      v93 = "    with tolerance: ";
      v94 = "    with tolerance: ";
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v83 = &v90;
      (*(&off_2881335A0 + v89))(&v83, &v88);
      sub_2711CDE78(&v90, &v88, v29);
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v90 = &v83;
      (off_288133588[v89])(&v86, &v90, &v88);
      if (v89 != -1)
      {
        (off_288133528[v89])(&v90, &v88);
      }

      if (SHIBYTE(v87) < 0)
      {
        sub_271127178(&v51, v86, *(&v86 + 1));
      }

      else
      {
        v51 = v86;
        v52 = v87;
      }

      v53 = 1;
      LOBYTE(v54) = 0;
      v58 = 0;
      v59 = 1;
      sub_27184B70C(&v51, &v70);
      *a3 = v70;
      *(a3 + 16) = 0;
      *(a3 + 112) = 0;
      if (v80 != 1)
      {
        *(a3 + 120) = 0;
        goto LABEL_70;
      }

      *(a3 + 40) = 0;
      v47 = v73;
      if (v73 == 1)
      {
        *(a3 + 16) = __p;
        *(a3 + 32) = v72;
        v72 = 0;
        __p = 0uLL;
        *(a3 + 40) = 1;
        *(a3 + 48) = 0;
        v48 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v79 & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        *(a3 + 48) = 0;
        v48 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v79 & 1) == 0)
        {
LABEL_63:
          *(a3 + 112) = 1;
          *(a3 + 120) = 0;
          if (!v47)
          {
LABEL_70:
            if (v59 != 1)
            {
              goto LABEL_79;
            }

            if (v58 == 1)
            {
              if (v57 < 0)
              {
                operator delete(v56);
              }

              if (v55 < 0)
              {
                operator delete(v54);
              }
            }

            if (v53 != 1 || (SHIBYTE(v52) & 0x80000000) == 0)
            {
              goto LABEL_79;
            }

            v46 = v51;
            goto LABEL_57;
          }

LABEL_68:
          if (SHIBYTE(v72) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_70;
        }
      }

      v49 = v76;
      *(v48 + 16) = v75;
      *v48 = v74;
      v74 = 0uLL;
      *(a3 + 72) = v49;
      *(a3 + 80) = v77;
      *(a3 + 96) = v78;
      v75 = 0;
      v77 = 0uLL;
      v78 = 0;
      *(a3 + 104) = 1;
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v47)
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }
  }

  LODWORD(a4) = a1[1].i32[0];
  v31 = a1[2];
  LODWORD(a5) = a1[3].i32[0];
  v32 = a1[4];
  v13.i32[0] = a1[5].i32[0];
  v33 = vzip1_s32(*a1, v31);
  v34 = vzip2_s32(*a1, v31);
  *v35.f32 = vmla_n_f32(vmla_lane_f32(vmul_n_f32(v33, COERCE_FLOAT(*a1)), v34, *a1, 1), __PAIR64__(LODWORD(a5), LODWORD(a4)), *&a4);
  *&v35.u32[2] = vmla_f32(vmla_lane_f32(vmul_f32(v32, *a1), vdup_lane_s32(*a1, 1), v32, 1), *&a4, *v13.i8);
  *v36.f32 = vmla_n_f32(vmla_lane_f32(vmul_n_f32(v33, v31.f32[0]), v34, v31, 1), __PAIR64__(LODWORD(a5), LODWORD(a4)), *&a5);
  *&v36.u32[2] = vmla_f32(vmla_lane_f32(vmul_f32(v32, v31), vdup_lane_s32(v31, 1), v32, 1), *&a5, *v13.i8);
  *v37.f32 = vmla_n_f32(vmla_lane_f32(vmul_n_f32(v33, v32.f32[0]), v34, v32, 1), __PAIR64__(LODWORD(a5), LODWORD(a4)), *v13.i32);
  v38 = vmla_f32(vmla_lane_f32(vmul_f32(v32, v32), vdup_lane_s32(v32, 1), v32, 1), *v13.i8, *v13.i8);
  *&v37.u32[2] = v38;
  v38.i32[0] = a2[2];
  v39 = vaddq_f32(v35, xmmword_271897880);
  v40 = vaddq_f32(v36, xmmword_271897890);
  v41 = vaddq_f32(v37, xmmword_2718978A0);
  v39.i32[3] = v40.i32[0];
  v42 = vdupq_lane_s32(v38, 0);
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vcgeq_f32(v42, vabsq_f32(v39)), vcgeq_f32(v42, vabsq_f32(vextq_s8(vextq_s8(v40, v40, 0xCuLL), v41, 8uLL)))))) & 1) == 0 || vabsq_f32(vdupq_laneq_s32(v41, 2)).f32[0] > *v38.i32)
  {
    v84 = -1;
    operator new();
  }

  *(a3 + 120) = 1;
}

void sub_2715381E8(_Unwind_Exception *a1)
{
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2715382F4(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v94[0] = *(a1 + 24);
  v94[1] = v5;
  v6 = *(a1 + 88);
  v7 = *(a1 + 120);
  v94[2] = v6;
  v94[3] = v7;
  v93[0] = xmmword_2718979B0;
  v93[1] = unk_2718979C0;
  if (v94[0] != 0.0 && fabs(v94[0]) > *a2 || v5 != 0.0 && fabs(v5) > *a2 || v6 != 0.0 && fabs(v6) > *a2)
  {
    goto LABEL_11;
  }

  if (v7 != 1.0)
  {
    v8 = 1.0 - v7;
    if (v7 > 1.0)
    {
      v8 = v7 + -1.0;
    }

    if (v8 > *a2)
    {
LABEL_11:
      LODWORD(v106) = 0;
      v100 = &v105;
      v101 = "se3 group matrix must be an affine 3x4 transform:\n";
      v102 = &v105;
      v103 = "se3 group matrix must be an affine 3x4 transform:\n";
      v104 = "se3 group matrix must be an affine 3x4 transform:\n";
      v95 = &v100;
      sub_2711F7FCC(&v95);
      v100 = &v105;
      v101 = "expected last row: ";
      v102 = &v105;
      v103 = "expected last row: ";
      v104 = "expected last row: ";
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v95 = &v100;
      (*(&off_288133540 + v106))(&v95, &v105);
      sub_27153DAE0(v97, &v105, v93);
      v100 = &v105;
      v101 = "\n";
      v102 = &v105;
      v103 = "\n";
      v104 = "\n";
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v95 = &v100;
      (*(&off_288133558 + v106))(&v95, &v105);
      v100 = &v105;
      v101 = "  actual last row: ";
      v102 = &v105;
      v103 = "  actual last row: ";
      v104 = "  actual last row: ";
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v95 = &v100;
      (*(&off_288133540 + v106))(&v95, &v105);
      sub_27153DAE0(&v62, &v105, v94);
      v100 = &v105;
      v101 = "\n";
      v102 = &v105;
      v103 = "\n";
      v104 = "\n";
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v95 = &v100;
      (*(&off_288133558 + v106))(&v95, &v105);
      v100 = &v105;
      v101 = "   with tolerance: ";
      v102 = &v105;
      v103 = "   with tolerance: ";
      v104 = "   with tolerance: ";
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v95 = &v100;
      (*(&off_288133540 + v106))(&v95, &v105);
      sub_2711CC17C(&v100, &v105, a2);
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v100 = &v95;
      (off_288133588[v106])(&v98, &v100, &v105);
      if (v106 != -1)
      {
        (off_288133528[v106])(&v100, &v105);
      }

      if (SHIBYTE(v99) < 0)
      {
        sub_271127178(&v73, v98, *(&v98 + 1));
      }

      else
      {
        v73 = v98;
        v74 = v99;
      }

      v75 = 1;
      LOBYTE(v76) = 0;
      v80 = 0;
      v81 = 1;
      sub_27184B70C(&v73, &v82);
      *a3 = v82;
      *(a3 + 16) = 0;
      *(a3 + 112) = 0;
      if (v92 != 1)
      {
        *(a3 + 120) = 0;
        goto LABEL_48;
      }

      *(a3 + 40) = 0;
      v55 = v85;
      if (v85 == 1)
      {
        *(a3 + 16) = __p;
        *(a3 + 32) = v84;
        v84 = 0;
        __p = 0uLL;
        *(a3 + 40) = 1;
        *(a3 + 48) = 0;
        v56 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v91 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        *(a3 + 48) = 0;
        v56 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v91 & 1) == 0)
        {
LABEL_41:
          *(a3 + 112) = 1;
          *(a3 + 120) = 0;
          if (!v55)
          {
LABEL_48:
            if (v81 != 1)
            {
              goto LABEL_79;
            }

            if (v80 == 1)
            {
              if (v79 < 0)
              {
                operator delete(v78);
              }

              if (v77 < 0)
              {
                operator delete(v76);
              }
            }

            if (v75 != 1 || (SHIBYTE(v74) & 0x80000000) == 0)
            {
              goto LABEL_79;
            }

            v58 = v73;
LABEL_57:
            operator delete(v58);
LABEL_79:
            if (SHIBYTE(v99) < 0)
            {
              operator delete(v98);
            }

            return;
          }

LABEL_46:
          if (SHIBYTE(v84) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_48;
        }
      }

      v57 = v88;
      *(v56 + 16) = v87;
      *v56 = v86;
      v86 = 0uLL;
      *(a3 + 72) = v57;
      *(a3 + 80) = v89;
      *(a3 + 96) = v90;
      v87 = 0;
      v89 = 0uLL;
      v90 = 0;
      *(a3 + 104) = 1;
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v55)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }
  }

  _Q5 = *(a1 + 96);
  v10 = *(a1 + 112);
  _Q7 = *a1;
  _Q16 = *(a1 + 64);
  v13 = *(a1 + 80);
  _Q19 = *(a1 + 32);
  v14 = *(a1 + 48);
  v16 = vextq_s8(_Q19, v14, 8uLL);
  _Q21 = vzip1q_s64(v13, _Q16);
  v18 = vzip1q_s64(v14, _Q19);
  v19 = vextq_s8(_Q16, v13, 8uLL);
  _D23 = vmlsq_f64(vmulq_f64(v16, _Q21), v18, v19).f64[1];
  __asm { FMLA            D25, D23, V7.D[1] }

  v26 = *(a1 + 16);
  v27 = _D25 + v26 * vmlsq_laneq_f64(vmulq_laneq_f64(_Q19, _Q16, 1), _Q16, _Q19, 1).f64[0];
  v28 = vzip1q_s64(v10, _Q5);
  _Q6 = vextq_s8(_Q5, v10, 8uLL);
  v30 = vmlsq_laneq_f64(vmulq_laneq_f64(_Q16, _Q5, 1), _Q5, _Q16, 1).f64[0];
  _Q21.f64[0] = vmlsq_f64(vmulq_f64(v19, v28), _Q21, _Q6).f64[1];
  __asm { FMLA            D16, D21, V19.D[1] }

  v31 = v94[0] * (_Q16.f64[0] + *v14.i64 * v30);
  *v14.i64 = vmlsq_laneq_f64(vmulq_laneq_f64(_Q19, _Q5, 1), _Q5, _Q19, 1).f64[0];
  _Q6.f64[0] = vmlsq_f64(vmulq_f64(v16, v28), v18, _Q6).f64[1];
  __asm { FMLA            D5, D6, V7.D[1] }

  v32 = v7 * v27 - v31 - v6 * (_Q5.f64[0] + v26 * *v14.i64);
  __asm { FMLA            D2, D21, V7.D[1] }

  v34 = v32 + v5 * (_D2 + v26 * v30);
  v72 = v34;
  if (v34 != 1.0)
  {
    v35 = v34 >= 1.0 ? v34 + -1.0 : 1.0 - v34;
    if (v35 > a2[1])
    {
      LODWORD(v106) = 0;
      v100 = &v105;
      v101 = "se3 group matrix must have determinant 1\n";
      v102 = &v105;
      v103 = "se3 group matrix must have determinant 1\n";
      v104 = "se3 group matrix must have determinant 1\n";
      v95 = &v100;
      sub_2711DCE58(&v95);
      v100 = &v105;
      v101 = "actual determinant: ";
      v102 = &v105;
      v103 = "actual determinant: ";
      v104 = "actual determinant: ";
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v95 = &v100;
      (*(&off_2881335A0 + v106))(&v95, &v105);
      sub_2711CC17C(v97, &v105, &v72);
      v100 = &v105;
      v101 = "\n";
      v102 = &v105;
      v103 = "\n";
      v104 = "\n";
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v95 = &v100;
      (*(&off_288133558 + v106))(&v95, &v105);
      v100 = &v105;
      v101 = "    with tolerance: ";
      v102 = &v105;
      v103 = "    with tolerance: ";
      v104 = "    with tolerance: ";
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v95 = &v100;
      (*(&off_2881335A0 + v106))(&v95, &v105);
      sub_2711CC17C(&v100, &v105, a2 + 1);
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v100 = &v95;
      (off_288133588[v106])(&v98, &v100, &v105);
      if (v106 != -1)
      {
        (off_288133528[v106])(&v100, &v105);
      }

      if (SHIBYTE(v99) < 0)
      {
        sub_271127178(&v63, v98, *(&v98 + 1));
      }

      else
      {
        v63 = v98;
        v64 = v99;
      }

      v65 = 1;
      LOBYTE(v66) = 0;
      v70 = 0;
      v71 = 1;
      sub_27184B70C(&v63, &v82);
      *a3 = v82;
      *(a3 + 16) = 0;
      *(a3 + 112) = 0;
      if (v92 != 1)
      {
        *(a3 + 120) = 0;
        goto LABEL_70;
      }

      *(a3 + 40) = 0;
      v59 = v85;
      if (v85 == 1)
      {
        *(a3 + 16) = __p;
        *(a3 + 32) = v84;
        v84 = 0;
        __p = 0uLL;
        *(a3 + 40) = 1;
        *(a3 + 48) = 0;
        v60 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v91 & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        *(a3 + 48) = 0;
        v60 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v91 & 1) == 0)
        {
LABEL_63:
          *(a3 + 112) = 1;
          *(a3 + 120) = 0;
          if (!v59)
          {
LABEL_70:
            if (v71 != 1)
            {
              goto LABEL_79;
            }

            if (v70 == 1)
            {
              if (v69 < 0)
              {
                operator delete(v68);
              }

              if (v67 < 0)
              {
                operator delete(v66);
              }
            }

            if (v65 != 1 || (SHIBYTE(v64) & 0x80000000) == 0)
            {
              goto LABEL_79;
            }

            v58 = v63;
            goto LABEL_57;
          }

LABEL_68:
          if (SHIBYTE(v84) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_70;
        }
      }

      v61 = v88;
      *(v60 + 16) = v87;
      *v60 = v86;
      v86 = 0uLL;
      *(a3 + 72) = v61;
      *(a3 + 80) = v89;
      *(a3 + 96) = v90;
      v87 = 0;
      v89 = 0uLL;
      v90 = 0;
      *(a3 + 104) = 1;
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v59)
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }
  }

  v36 = *(a1 + 32);
  v37 = *(a1 + 80);
  _Q5 = *(a1 + 64);
  v39 = vzip1q_s64(*a1, v36);
  v50 = vzip2q_s64(*a1, v36);
  v40.f64[0] = *(a1 + 16);
  v40.f64[1] = *(a1 + 48);
  v41 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v39, *a1), v50, *a1, 1), v40, v40.f64[0]);
  _Q17 = vmulq_f64(_Q5, *a1);
  _D1 = *(a1 + 8);
  __asm { FMLA            D17, D1, V5.D[1] }

  *_Q17.i64 = *_Q17.i64 + v37 * v40.f64[0];
  v44 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v39, v36.f64[0]), v50, v36, 1), v40, v40.f64[1]);
  _D1 = *(a1 + 40);
  __asm { FMLA            D0, D1, V5.D[1] }

  v16.f64[0] = _D0 + v37 * v40.f64[1];
  v47 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v39, _Q5.f64[0]), v50, _Q5, 1), v40, v37);
  _D1 = *(a1 + 72);
  __asm { FMLA            D0, D1, V5.D[1] }

  v50.f64[0] = _D0 + v37 * v37;
  v51 = a2[2];
  v52 = vaddq_f64(v44, xmmword_2718978D0);
  v53 = vdupq_lane_s64(*&v51, 0);
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v53, vabsq_f64(vaddq_f64(v41, xmmword_2718978C0))), vcgeq_f64(v53, vabsq_f64(vzip1q_s64(_Q17, v52)))), vuzp1q_s32(vcgeq_f64(v53, vabsq_f64(vextq_s8(v52, v16, 8uLL))), vcgeq_f64(v53, vabsq_f64(v47)))))) & 1) == 0)
  {
    goto LABEL_58;
  }

  __asm { FMOV            V1.2D, #-1.0 }

  if (vabsq_f64(vaddq_f64(v50, _Q1)).f64[0] > v51)
  {
LABEL_58:
    v96 = -1;
    operator new();
  }

  *(a3 + 120) = 1;
}

void sub_2715390B8(_Unwind_Exception *a1)
{
  if (*(v1 - 193) < 0)
  {
    operator delete(*(v1 - 216));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271539EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_guard_abort(&qword_2808777D0);
  sub_27153B07C(&a15);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_271123F00(&a30);
  sub_27112E024(&a65);
  v67 = *v65;
  *v65 = 0;
  if (v67)
  {
    MEMORY[0x2743BF050](v67, 0x1000C4072FAA15ELL);
  }

  _Unwind_Resume(a1);
}

void sub_27153AD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_guard_abort(&qword_2808777D0);
  sub_27153B07C(&a15);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_271123F00(&a30);
  sub_27112E024(&a65);
  v67 = *v65;
  *v65 = 0;
  if (v67)
  {
    MEMORY[0x2743BF050](v67, 0x1000C4072FAA15ELL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27153AE78()
{
  if ((atomic_load_explicit(&qword_28087BA48, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_28087BA48))
  {
    return qword_28087BA40;
  }

  sub_27137B0C8(&v3);
  sub_27112B400(__p, "cv3dapi.kit.viz.SE3");
  qword_28087BA40 = sub_271125D80(&v3, __p);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  __cxa_guard_release(&qword_28087BA48);
  return qword_28087BA40;
}

void sub_27153AF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_guard_abort(&qword_28087BA48);
    _Unwind_Resume(a1);
  }

  __cxa_guard_abort(&qword_28087BA48);
  _Unwind_Resume(a1);
}

void sub_27153AF74(uint64_t a1, uint64_t a2)
{
  v3[6] = 0;
  v4[0] = v3;
  v4[1] = "Invalid argument for SE3: ";
  v4[2] = v3;
  v4[3] = "Invalid argument for SE3: ";
  v4[4] = "Invalid argument for SE3: ";
  v5 = v4;
  sub_2711E76D0(&v5);
  sub_2711CE2CC(v4, v3, a2);
}

uint64_t sub_27153B07C(uint64_t a1)
{
  sub_27112F8A0(a1);
  v2 = *(a1 + 64);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  return a1;
}

void sub_27153B100(uint64_t *a1, float32x2_t *a2)
{
  v11 = 0uLL;
  v12 = 0;
  sub_27153DC6C(a2, &v11);
  v2 = v11;
  v3 = vextq_s8(v2, v2, 8uLL).u64[0];
  LODWORD(v4) = vmla_f32(vmla_lane_f32(vmul_f32(*v2.i8, *v2.i8), vdup_lane_s32(*v11.i8, 1), *v11.i8, 1), v3, v3).u32[0];
  __asm { FMOV            V9.2S, #1.0 }

  v10 = v4;
  if (!_NF)
  {
    __sincosf_stret(sqrtf(v4));
    v4 = v10;
  }

  if (v4 >= 0.0061)
  {
    __sincosf_stret(sqrtf(v4));
  }

  operator new();
}

void sub_27153B49C(uint64_t *a1, float64x2_t *a2)
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  sub_27153DF7C(a2, &v13);
  _V20.D[1] = v13.f64[1];
  _D1 = v13.f64[1];
  __asm { FMLA            D0, D1, V20.D[1] }

  v9 = _D0 + *&v14 * *&v14;
  __asm { FMOV            V3.2D, #1.0 }

  v12 = v9;
  if (_NF)
  {
    if (v9 < 2.775e-15)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __sincos_stret(sqrt(v9));
    v9 = v12;
    if (v12 < 2.775e-15)
    {
LABEL_8:
      if (v9 < 0.0000002635)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if (v9 <= 9.0)
  {
    if (v9 < 0.0000002635)
    {
LABEL_12:
      __asm { FMOV            V16.2D, #-0.5 }

      operator new();
    }
  }

  else if (v9 < 0.0000002635)
  {
    goto LABEL_12;
  }

LABEL_11:
  __sincos_stret(sqrt(v9));
  goto LABEL_12;
}

double sub_27153B8AC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>)
{
  v4 = *a1;
  v5 = *(*a1 + 136);
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      if (*(v4 + 128))
      {
        goto LABEL_23;
      }

      v8 = *(v4 + 16);
      v30 = *v4;
      v31 = v8;
      v9 = *(v4 + 48);
      v32 = *(v4 + 32);
      v33 = v9;
    }

    else
    {
      if (v5 != 5)
      {
        return *a3.i64;
      }

      if (*(v4 + 128) != 1)
      {
        goto LABEL_23;
      }

      v6 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v4 + 32)), *(v4 + 48));
      v30 = vcvt_hight_f32_f64(vcvt_f32_f64(*v4), *(v4 + 16));
      v31 = v6;
      v7 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v4 + 96)), *(v4 + 112));
      v32 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v4 + 64)), *(v4 + 80));
      v33 = v7;
    }

    memset(v34, 0, 24);
    sub_27153DC6C(&v30, v34);
    v10 = v34[0];
    v11 = vextq_s8(v10, v10, 8uLL).u64[0];
    v12 = vmla_f32(vmla_lane_f32(vmul_f32(*v10.i8, *v10.i8), vdup_lane_s32(*&v34[0], 1), *v10.i8, 1), v11, v11);
    if (*v12.i32 >= 0.0061)
    {
      v16 = sqrtf(*v12.i32);
      v28 = *v12.i32;
      v29 = v34[0];
      v17 = __sincosf_stret(v16);
      *v12.i32 = v28;
      v10 = v29;
      v14 = v17.__sinval / v16;
      __asm { FMOV            V1.2S, #1.0 }

      v13 = vmul_n_f32(vsub_f32(_D1, __PAIR64__(LODWORD(v17.__cosval), v17.__sinval / v16)), 1.0 / v28);
      if (v28 >= 0.00000149)
      {
LABEL_17:
        if (*v12.i32 <= 9.0)
        {
          v15 = (vmuls_lane_f32(0.5, v13, 1) - v13.f32[0]) / v14;
        }

        else
        {
          v15 = (v13.f32[1] + (v14 * -0.5)) / vmuls_lane_f32(*v12.i32, v13, 1);
        }

        goto LABEL_22;
      }
    }

    else
    {
      v13 = vsub_f32(0x3F0000003E2AAAABLL, vmul_n_f32(vadd_f32(vdiv_f32(vdup_lane_s32(v12, 0), 0xC4340000C59D8000), 0x3D2AAAAB3C088889), *v12.i32));
      v14 = 1.0 - (*v12.i32 * v13.f32[0]);
      if (*v12.i32 >= 0.00000149)
      {
        goto LABEL_17;
      }
    }

    v15 = (*v12.i32 * 0.000033069) + ((*v12.i32 * 0.0013889) + 0.083333);
LABEL_22:
    v23 = vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL);
    v24 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
    v25 = vsubq_f32(vmulq_f32(v23, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL)), vmulq_f32(v24, vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL)));
    v26.i64[0] = 0xBF000000BF000000;
    v26.i64[1] = 0xBF000000BF000000;
    a3 = vaddq_f32(vaddq_f32(v33, vmulq_f32(v25, v26)), vmulq_n_f32(vsubq_f32(vmulq_f32(v23, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL)), vmulq_f32(v24, vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL))), v15));
    DWORD1(v34[1]) = a3.i32[2];
    *(v34 + 12) = a3.i64[0];
    a3.i64[0] = *&v34[0];
    *a2 = v34[0];
    *(a2 + 16) = *&v34[1];
    return *a3.i64;
  }

  if (v5 == 1)
  {
    if (*(v4 + 128) != 2)
    {
      goto LABEL_23;
    }

    a3 = *v4;
    *a2 = *v4;
    *(a2 + 16) = *(v4 + 16);
  }

  else if (v5 == 2)
  {
    if (*(v4 + 128) == 3)
    {
      *a2 = vcvt_hight_f32_f64(vcvt_f32_f64(*v4), *(v4 + 16));
      *a3.f32 = vcvt_f32_f64(*(v4 + 32));
      *(a2 + 16) = a3.i64[0];
      return *a3.i64;
    }

LABEL_23:
    sub_2711308D4();
  }

  return *a3.i64;
}

void sub_27153BBA0(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 136);
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      if (*(v3 + 128))
      {
        goto LABEL_24;
      }

      v12 = vcvtq_f64_f32(*(v3 + 8));
      v44 = vcvtq_f64_f32(*v3);
      v45 = v12;
      v13 = vcvtq_f64_f32(*(v3 + 24));
      v46 = vcvtq_f64_f32(*(v3 + 16));
      v47 = v13;
      v14 = vcvtq_f64_f32(*(v3 + 40));
      v48 = vcvtq_f64_f32(*(v3 + 32));
      v49 = v14;
      v15 = vcvtq_f64_f32(*(v3 + 56));
      v50 = vcvtq_f64_f32(*(v3 + 48));
      v51 = v15;
    }

    else
    {
      if (v4 != 5)
      {
        return;
      }

      if (*(v3 + 128) != 1)
      {
        goto LABEL_24;
      }

      v7 = *(v3 + 80);
      v48 = *(v3 + 64);
      v49 = v7;
      v8 = *(v3 + 112);
      v50 = *(v3 + 96);
      v51 = v8;
      v9 = *(v3 + 16);
      v44 = *v3;
      v45 = v9;
      v10 = *(v3 + 48);
      v46 = *(v3 + 32);
      v47 = v10;
    }

    memset(v52, 0, sizeof(v52));
    sub_27153DF7C(&v44, v52);
    v16.f64[0] = v52[1].f64[0];
    _Q18 = v52[0];
    v18 = vextq_s8(_Q18, _Q18, 8uLL);
    _D1 = v52[0].f64[1];
    __asm { FMLA            D0, D1, V18.D[1] }

    v25 = _D0 + v16.f64[0] * v16.f64[0];
    if (v25 >= 0.0000002635)
    {
      v28 = sqrt(v25);
      v42 = v18;
      v43 = v52[1].f64[0];
      v40 = _D0 + v52[1].f64[0] * v52[1].f64[0];
      v41 = v52[0];
      v29 = __sincos_stret(v28);
      v25 = v40;
      _Q18 = v41;
      v18 = v42;
      v16.f64[0] = v43;
      v27.f64[0] = v29.__sinval / v28;
      v30.f64[0] = v29.__sinval / v28;
      v30.f64[1] = v29.__cosval;
      __asm { FMOV            V1.2D, #1.0 }

      v26 = vmulq_n_f64(vsubq_f64(_Q1, v30), 1.0 / v40);
      if (v40 >= 2.775e-15)
      {
LABEL_16:
        if (v25 <= 9.0)
        {
          v27.f64[0] = (vmuld_lane_f64(0.5, v26, 1) - v26.f64[0]) / v27.f64[0];
        }

        else
        {
          v27.f64[0] = (v26.f64[1] + v27.f64[0] * -0.5) / vmuld_lane_f64(v25, v26, 1);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v27 = vmulq_n_f64(vaddq_f64(vdivq_f64(vdupq_lane_s64(*&v25, 0), xmmword_2718978E0), xmmword_2718978F0), v25);
      v26 = vsubq_f64(xmmword_271897900, v27);
      v27.f64[0] = 1.0 - v25 * v26.f64[0];
      if (v25 >= 2.775e-15)
      {
        goto LABEL_16;
      }
    }

    v27.f64[0] = v25 * 0.0000330687831 + v25 * 0.00138888889 + 0.0833333333;
LABEL_21:
    v26.f64[0] = v51.f64[0];
    v32.f64[0] = v18.f64[0];
    v32.f64[1] = v16.f64[0];
    v33 = vextq_s8(v50, v26, 8uLL);
    v34 = vsubq_f64(vmulq_laneq_f64(_Q18, v50, 1), vmulq_f64(v18, v50));
    __asm { FMOV            V6.2D, #-0.5 }

    v36 = vaddq_f64(v26, vmulq_f64(v34, _Q6));
    v26.f64[1] = v50.f64[0];
    v16.f64[1] = _Q18.f64[0];
    v37 = vsubq_f64(vmulq_f64(v32, v26), vmulq_f64(v16, v33));
    v38 = vextq_s8(v37, v34, 8uLL);
    v34.f64[1] = v37.f64[0];
    *(&v52[1] + 8) = vaddq_f64(vaddq_f64(v50, vmulq_f64(v37, _Q6)), vmulq_n_f64(vsubq_f64(vmulq_f64(v32, v34), vmulq_f64(v16, v38)), v27.f64[0]));
    *&v52[2].f64[1] = *&vaddq_f64(v36, vmulq_f64(v27, vsubq_f64(vmulq_laneq_f64(_Q18, v37, 1), vmulq_f64(v18, v37))));
    v39 = v52[1];
    *a2 = v52[0];
    a2[1] = v39;
    v6 = v52[2];
    goto LABEL_22;
  }

  if (v4 == 1)
  {
    if (*(v3 + 128) == 2)
    {
      v11 = vcvtq_f64_f32(*(v3 + 8));
      *a2 = vcvtq_f64_f32(*v3);
      a2[1] = v11;
      v6 = vcvtq_f64_f32(*(v3 + 16));
      goto LABEL_22;
    }

LABEL_24:
    sub_2711308D4();
  }

  if (v4 != 2)
  {
    return;
  }

  if (*(v3 + 128) != 3)
  {
    goto LABEL_24;
  }

  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  v6 = *(v3 + 32);
LABEL_22:
  a2[2] = v6;
}

void sub_27153BE9C(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D3>)
{
  v7 = *a1;
  v8 = *(*a1 + 136);
  if (v8 > 3)
  {
    if (v8 == 4)
    {
      if (!*(v7 + 128))
      {
        v30 = *(v7 + 16);
        *a2 = *v7;
        *(a2 + 16) = v30;
        v31 = *(v7 + 48);
        *(a2 + 32) = *(v7 + 32);
        *(a2 + 48) = v31;
        return;
      }

      goto LABEL_22;
    }

    if (v8 == 5)
    {
      if (*(v7 + 128) != 1)
      {
        goto LABEL_22;
      }

      v20 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v7 + 32)), *(v7 + 48));
      *a2 = vcvt_hight_f32_f64(vcvt_f32_f64(*v7), *(v7 + 16));
      *(a2 + 16) = v20;
      v21 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v7 + 96)), *(v7 + 112));
      *(a2 + 32) = vcvt_hight_f32_f64(vcvt_f32_f64(*(v7 + 64)), *(v7 + 80));
      *(a2 + 48) = v21;
    }
  }

  else
  {
    if (v8 == 1)
    {
      if (*(v7 + 128) == 2)
      {
        v5.i32[0] = *(v7 + 8);
        v4.i64[0] = *v7;
        v22 = v4;
        v22.i32[2] = v5.i32[0];
        LODWORD(v23) = HIDWORD(*v7);
        v6.i64[0] = *(v7 + 12);
        v6.i32[2] = *(v7 + 20);
        v24 = vmla_f32(vmla_lane_f32(vmul_f32(*v4.i8, *v4.i8), vdup_lane_s32(*v7, 1), *v7, 1), v5, v5);
        if (*v24.i32 >= 0.0061)
        {
          v51 = sqrtf(*v24.i32);
          v52 = a2;
          v78 = v6;
          v74 = *(v7 + 8);
          v76 = v22;
          v70 = *v24.i32;
          v72 = v4.i32[0];
          v53 = __sincosf_stret(v51);
          v4.i32[0] = v72;
          v5.i32[0] = v74;
          v22 = v76;
          v6 = v78;
          a2 = v52;
          v28.f32[0] = v53.__sinval / v51;
          v29 = (1.0 / v70) * (1.0 - v53.__cosval);
          v25.f32[0] = (1.0 / v70) * (1.0 - (v53.__sinval / v51));
          v28.i32[1] = LODWORD(v53.__cosval);
        }

        else
        {
          v25 = vsub_f32(0x3F0000003E2AAAABLL, vmul_n_f32(vadd_f32(vdiv_f32(vdup_lane_s32(v24, 0), 0xC4340000C59D8000), 0x3D2AAAAB3C088889), *v24.i32));
          v26 = vmul_n_f32(v25, *v24.i32);
          __asm { FMOV            V2.2S, #1.0 }

          v28 = vsub_f32(_D2, v26);
          v29 = v25.f32[1];
        }

        v54 = (*v4.i32 * (*v4.i32 * v29)) + v28.f32[1];
        v55 = (v5.f32[0] * (v5.f32[0] * v29)) + v28.f32[1];
        v56 = v23 * (*v4.i32 * v29);
        v57 = v5.f32[0] * (*v4.i32 * v29);
        v58 = v5.f32[0] * (v23 * v29);
        v59 = *v4.i32 * v28.f32[0];
        v60 = v23 * v28.f32[0];
        v28.f32[0] = v5.f32[0] * v28.f32[0];
        v61 = v56 - v28.f32[0];
        v62 = v57 + v60;
        v28.f32[0] = v56 + v28.f32[0];
        v63 = v58 - v59;
        v64 = v57 - v60;
        v65 = v58 + v59;
        v66 = vextq_s8(vextq_s8(v22, v22, 0xCuLL), v22, 8uLL);
        v67 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
        v68 = vsubq_f32(vmulq_f32(v66, vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL)), vmulq_f32(v67, vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL)));
        *a2 = v54;
        *(a2 + 4) = v28.i32[0];
        *(a2 + 8) = v64;
        *(a2 + 12) = 0;
        *(a2 + 16) = v61;
        *(a2 + 20) = (v23 * (v23 * v29)) + v28.f32[1];
        *(a2 + 24) = v65;
        *(a2 + 28) = 0;
        *(a2 + 32) = v62;
        *(a2 + 36) = v63;
        *(a2 + 40) = v55;
        v50 = vaddq_f32(vaddq_f32(v6, vmulq_n_f32(v68, v29)), vmulq_n_f32(vsubq_f32(vmulq_f32(v66, vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL)), vmulq_f32(v67, vextq_s8(vextq_s8(v68, v68, 0xCuLL), v68, 8uLL))), v25.f32[0]));
        goto LABEL_21;
      }

LABEL_22:
      sub_2711308D4();
    }

    if (v8 == 2)
    {
      if (*(v7 + 128) == 3)
      {
        *v3.i32 = *v7;
        v9 = vcvt_f32_f64(*(v7 + 8));
        v10 = v3;
        *(v10.i64 + 4) = v9;
        *v6.i8 = vcvt_f32_f64(*(v7 + 24));
        *&v11 = *(v7 + 40);
        v6.i32[2] = v11;
        *&a3 = *v3.i32 * *v3.i32;
        v12 = vmla_lane_f32(vmla_f32(*&a3, v9, v9), vdup_lane_s32(v9, 1), v9, 1);
        if (*v12.i32 >= 0.0061)
        {
          v32 = sqrtf(*v12.i32);
          v33 = a2;
          v77 = v9;
          v73 = v10;
          v75 = v6;
          v69 = v12;
          v71 = *v7;
          v34 = __sincosf_stret(v32);
          *v3.i32 = v71;
          v10 = v73;
          v6 = v75;
          v9 = v77;
          a2 = v33;
          v12.i32[1] = v69.i32[1];
          v19.f32[0] = v34.__sinval / v32;
          *v12.i32 = (1.0 / *v69.i32) * (1.0 - v34.__cosval);
          v13.f32[0] = (1.0 / *v69.i32) * (1.0 - (v34.__sinval / v32));
          v19.i32[1] = LODWORD(v34.__cosval);
        }

        else
        {
          v13 = vsub_f32(0x3F0000003E2AAAABLL, vmul_n_f32(vadd_f32(vdiv_f32(vdup_lane_s32(v12, 0), 0xC4340000C59D8000), 0x3D2AAAAB3C088889), *v12.i32));
          __asm { FMOV            V1.2S, #1.0 }

          v19 = vsub_f32(_D1, vmul_n_f32(v13, *v12.i32));
          v12.i32[0] = v13.i32[1];
        }

        v35 = vmul_f32(*&vdupq_lane_s32(v12, 0), v9);
        v36 = ((*v12.i32 * *v3.i32) * *v3.i32) + v19.f32[1];
        v37 = (*v12.i32 * *v3.i32) * v9.f32[0];
        v38 = vmuls_lane_f32(*v12.i32 * *v3.i32, v9, 1);
        *&v39 = *v3.i32 * v19.f32[0];
        v40 = vmul_f32(v19, v9).f32[0];
        v41 = vmuls_lane_f32(v19.f32[0], v9, 1);
        v42 = v37 - v41;
        v43 = v38 + v40;
        v44 = v37 + v41;
        v45 = v38 - v40;
        v46 = vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL);
        v47 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
        v48 = vsubq_f32(vmulq_f32(v46, vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL)), vmulq_f32(v47, vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL)));
        *a2 = v36;
        *(a2 + 4) = v44;
        *(a2 + 8) = v45;
        *(a2 + 12) = 0;
        *(a2 + 16) = v42;
        *(a2 + 20) = vmul_f32(v35, v9).f32[0] + v19.f32[1];
        *(a2 + 28) = 0;
        v49 = vmul_lane_f32(v35, v9, 1);
        v35.i32[0] = vsub_f32(v49, __PAIR64__(v19.u32[1], v39)).u32[0];
        v35.i32[1] = vadd_f32(v49, v19).i32[1];
        *(a2 + 32) = v43;
        *(a2 + 24) = v49.f32[0] + *&v39;
        *(a2 + 36) = v35;
        v50 = vaddq_f32(vaddq_f32(v6, vmulq_n_f32(v48, *v12.i32)), vmulq_n_f32(vsubq_f32(vmulq_f32(v46, vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL)), vmulq_f32(v47, vextq_s8(vextq_s8(v48, v48, 0xCuLL), v48, 8uLL))), v13.f32[0]));
LABEL_21:
        *(a2 + 44) = 0;
        *(a2 + 56) = v50.i32[2];
        *(a2 + 48) = v50.i64[0];
        *(a2 + 60) = 1065353216;
        return;
      }

      goto LABEL_22;
    }
  }
}

float64x2_t sub_27153C318@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, float64x2_t result@<Q0>, float64x2_t a4@<Q5>)
{
  v5 = *a1;
  v6 = *(*a1 + 136);
  if (v6 > 3)
  {
    if (v6 == 4)
    {
      if (!*(v5 + 128))
      {
        v31 = vcvtq_f64_f32(*(v5 + 8));
        *a2 = vcvtq_f64_f32(*v5);
        *(a2 + 16) = v31;
        v32 = vcvtq_f64_f32(*(v5 + 24));
        *(a2 + 32) = vcvtq_f64_f32(*(v5 + 16));
        *(a2 + 48) = v32;
        v33 = vcvtq_f64_f32(*(v5 + 40));
        *(a2 + 64) = vcvtq_f64_f32(*(v5 + 32));
        *(a2 + 80) = v33;
        result = vcvtq_f64_f32(*(v5 + 48));
        v34 = vcvtq_f64_f32(*(v5 + 56));
        *(a2 + 96) = result;
        *(a2 + 112) = v34;
        return result;
      }

      goto LABEL_22;
    }

    if (v6 == 5)
    {
      if (*(v5 + 128) != 1)
      {
        goto LABEL_22;
      }

      v22 = *(v5 + 80);
      *(a2 + 64) = *(v5 + 64);
      *(a2 + 80) = v22;
      v23 = *(v5 + 112);
      *(a2 + 96) = *(v5 + 96);
      *(a2 + 112) = v23;
      v24 = *(v5 + 16);
      *a2 = *v5;
      *(a2 + 16) = v24;
      result = *(v5 + 32);
      v25 = *(v5 + 48);
      *(a2 + 32) = result;
      *(a2 + 48) = v25;
    }
  }

  else
  {
    if (v6 == 1)
    {
      if (*(v5 + 128) == 2)
      {
        _Q26 = vcvtq_f64_f32(*v5);
        v7.f64[0] = *(v5 + 8);
        v9 = vextq_s8(_Q26, _Q26, 8uLL);
        v10 = vcvtq_f64_f32(*(v5 + 12));
        v4.f64[0] = *(v5 + 20);
        v11 = vextq_s8(v10, v10, 8uLL);
        _D1 = _Q26.f64[1];
        __asm { FMLA            D0, D1, V26.D[1] }

        v28 = _D0 + v7.f64[0] * v7.f64[0];
        if (v28 >= 0.0000002635)
        {
          v51 = sqrt(v28);
          v52 = a2;
          v85 = _Q26;
          v87 = *(v5 + 8);
          v81 = v4;
          v83 = v9;
          v77 = v11;
          v79 = v10;
          v75 = _D0 + v7.f64[0] * v7.f64[0];
          v53 = __sincos_stret(v51);
          cosval = v53.__cosval;
          v11 = v77;
          v10 = v79;
          v4 = v81;
          v9 = v83;
          _Q26 = v85;
          v7.f64[0] = v87;
          a2 = v52;
          v29 = v53.__sinval / v51;
          v54.f64[0] = v53.__sinval / v51;
          v54.f64[1] = v53.__cosval;
          __asm { FMOV            V3.2D, #1.0 }

          v19 = vmulq_n_f64(vsubq_f64(_Q3, v54), 1.0 / v75);
        }

        else
        {
          v19 = vsubq_f64(xmmword_271897900, vmulq_n_f64(vaddq_f64(vdivq_f64(vdupq_lane_s64(*&v28, 0), xmmword_2718978E0), xmmword_2718978F0), v28));
          v29 = 1.0 - v28 * v19.f64[0];
          cosval = 1.0 - vmuld_lane_f64(v28, v19, 1);
        }

        a4.f64[0] = v19.f64[1];
        v56 = vmuld_lane_f64(_Q26.f64[0], v19, 1);
        v57 = vmuld_lane_f64(v19.f64[1], _Q26, 1);
        v42 = v56 * _Q26.f64[0] + cosval;
        v43 = vmuld_lane_f64(v57, _Q26, 1) + cosval;
        v44 = vmuld_lane_f64(v7.f64[0], v19, 1) * v7.f64[0] + cosval;
        v45 = vmuld_lane_f64(v56, _Q26, 1);
        v46 = v56 * v7.f64[0];
        v47 = v57 * v7.f64[0];
        v48 = v29 * _Q26.f64[0];
        v49 = vmuld_lane_f64(v29, _Q26, 1);
        v50 = v29 * v7.f64[0];
        goto LABEL_21;
      }

LABEL_22:
      sub_2711308D4();
    }

    if (v6 == 2)
    {
      if (*(v5 + 128) == 3)
      {
        v7.f64[0] = *(v5 + 16);
        _Q26 = *v5;
        v9 = vextq_s8(_Q26, _Q26, 8uLL);
        v4.f64[0] = *(v5 + 40);
        v10 = *(v5 + 24);
        v11 = vextq_s8(v10, v10, 8uLL);
        _D9 = *(v5 + 8);
        __asm { FMLA            D0, D9, V26.D[1] }

        v18 = _D0 + v7.f64[0] * v7.f64[0];
        if (v18 >= 0.0000002635)
        {
          v35 = sqrt(v18);
          v36 = a2;
          v84 = *v5;
          v86 = *(v5 + 16);
          v80 = v4;
          v82 = v9;
          v76 = v11;
          v78 = *(v5 + 24);
          v74 = _D0 + v7.f64[0] * v7.f64[0];
          v37 = __sincos_stret(v35);
          v21 = v37.__cosval;
          v11 = v76;
          v10 = v78;
          v4 = v80;
          v9 = v82;
          _Q26 = v84;
          v7.f64[0] = v86;
          a2 = v36;
          v20 = v37.__sinval / v35;
          v38.f64[0] = v37.__sinval / v35;
          v38.f64[1] = v37.__cosval;
          __asm { FMOV            V3.2D, #1.0 }

          v19 = vmulq_n_f64(vsubq_f64(_Q3, v38), 1.0 / v74);
        }

        else
        {
          v19 = vsubq_f64(xmmword_271897900, vmulq_n_f64(vaddq_f64(vdivq_f64(vdupq_lane_s64(*&v18, 0), xmmword_2718978E0), xmmword_2718978F0), v18));
          v20 = 1.0 - v18 * v19.f64[0];
          v21 = 1.0 - vmuld_lane_f64(v18, v19, 1);
        }

        a4.f64[0] = v19.f64[1];
        v40 = vmuld_lane_f64(_Q26.f64[0], v19, 1);
        v41 = vmuld_lane_f64(_D9, v19, 1);
        v42 = _Q26.f64[0] * v40 + v21;
        v43 = _D9 * v41 + v21;
        v44 = v7.f64[0] * vmuld_lane_f64(v7.f64[0], v19, 1) + v21;
        v45 = _D9 * v40;
        v46 = v7.f64[0] * v40;
        v47 = v7.f64[0] * v41;
        v48 = _Q26.f64[0] * v20;
        v49 = _D9 * v20;
        v50 = v7.f64[0] * v20;
LABEL_21:
        v58 = v45 - v50;
        v59 = v46 + v49;
        v60 = v45 + v50;
        v61 = v47 - v48;
        v62 = v46 - v49;
        v63.f64[0] = v9.f64[0];
        v63.f64[1] = v7.f64[0];
        v64.f64[0] = v4.f64[0];
        v64.f64[1] = v10.f64[0];
        v65 = v47 + v48;
        v66.f64[0] = v10.f64[0];
        v66.f64[1] = v11.f64[0];
        v7.f64[1] = _Q26.f64[0];
        v67.f64[0] = v11.f64[0];
        v67.f64[1] = v4.f64[0];
        v68 = vsubq_f64(vmulq_f64(v63, v64), vmulq_f64(v7, v67));
        v69 = vsubq_f64(vmulq_f64(_Q26, v11), vmulq_f64(v9, v10));
        v70 = vaddq_f64(v66, vmulq_n_f64(v68, a4.f64[0]));
        v71 = vaddq_f64(v4, vmulq_f64(v69, a4));
        v72 = vextq_s8(v68, v69, 8uLL);
        v69.f64[1] = v68.f64[0];
        v73 = vmulq_f64(vsubq_f64(vmulq_laneq_f64(_Q26, v68, 1), vmulq_f64(v9, v68)), v19);
        *a2 = v42;
        *(a2 + 8) = v60;
        *(a2 + 16) = v62;
        result = vaddq_f64(v70, vmulq_n_f64(vsubq_f64(vmulq_f64(v63, v69), vmulq_f64(v7, v72)), v19.f64[0]));
        *(a2 + 24) = 0;
        *(a2 + 32) = v58;
        *(a2 + 40) = v43;
        *(a2 + 48) = v65;
        *(a2 + 56) = 0;
        *(a2 + 64) = v59;
        *(a2 + 72) = v61;
        *(a2 + 80) = v44;
        *(a2 + 88) = 0;
        *(a2 + 112) = *&vaddq_f64(v71, v73);
        *(a2 + 96) = result;
        *(a2 + 120) = 0x3FF0000000000000;
        return result;
      }

      goto LABEL_22;
    }
  }

  return result;
}

BOOL sub_27153C728(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 136);
  v5 = v3 != 5 && v3 != 2;
  v6 = *a2;
  v7 = *(*a2 + 136);
  v9 = v7 == 5 || v7 == 2;
  if (v5 == v9 || ((v3 & 0xFE) == 4) == ((v7 & 0xFE) != 4))
  {
    return 0;
  }

  result = 0;
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      if (*(v2 + 128) || *(v6 + 128))
      {
        goto LABEL_77;
      }

      if (*v2 != *v6 || *(v2 + 4) != *(v6 + 4) || *(v2 + 8) != *(v6 + 8) || *(v2 + 12) != *(v6 + 12) || *(v2 + 16) != *(v6 + 16) || *(v2 + 20) != *(v6 + 20) || *(v2 + 24) != *(v6 + 24) || *(v2 + 28) != *(v6 + 28) || *(v2 + 32) != *(v6 + 32) || *(v2 + 36) != *(v6 + 36) || *(v2 + 40) != *(v6 + 40) || *(v2 + 44) != *(v6 + 44) || *(v2 + 48) != *(v6 + 48) || *(v2 + 52) != *(v6 + 52) || *(v2 + 56) != *(v6 + 56) || *(v2 + 60) != *(v6 + 60))
      {
        return 0;
      }
    }

    else
    {
      if (v3 != 5)
      {
        return result;
      }

      if (*(v2 + 128) != 1 || *(v6 + 128) != 1)
      {
        goto LABEL_77;
      }

      if (*v2 != *v6 || *(v2 + 8) != *(v6 + 8) || *(v2 + 16) != *(v6 + 16) || *(v2 + 24) != *(v6 + 24) || *(v2 + 32) != *(v6 + 32) || *(v2 + 40) != *(v6 + 40) || *(v2 + 48) != *(v6 + 48) || *(v2 + 56) != *(v6 + 56) || *(v2 + 64) != *(v6 + 64) || *(v2 + 72) != *(v6 + 72) || *(v2 + 80) != *(v6 + 80) || *(v2 + 88) != *(v6 + 88) || *(v2 + 96) != *(v6 + 96) || *(v2 + 104) != *(v6 + 104) || *(v2 + 112) != *(v6 + 112) || *(v2 + 120) != *(v6 + 120))
      {
        return 0;
      }
    }
  }

  else
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        return result;
      }

      if (*(v2 + 128) == 3 && *(v6 + 128) == 3)
      {
        return *v2 == *v6 && *(v2 + 8) == *(v6 + 8) && *(v2 + 16) == *(v6 + 16) && *(v2 + 24) == *(v6 + 24) && *(v2 + 32) == *(v6 + 32) && *(v2 + 40) == *(v6 + 40);
      }

LABEL_77:
      sub_2711308D4();
    }

    if (*(v2 + 128) != 2 || *(v6 + 128) != 2)
    {
      goto LABEL_77;
    }

    if (*v2 != *v6 || *(v2 + 4) != *(v6 + 4) || *(v2 + 8) != *(v6 + 8) || *(v2 + 12) != *(v6 + 12) || *(v2 + 16) != *(v6 + 16) || *(v2 + 20) != *(v6 + 20))
    {
      return 0;
    }
  }

  return 1;
}

void sub_27153CFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 - 73) < 0)
  {
    operator delete(*(v16 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_27153D058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27153D06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (*(v9 - 73) < 0)
  {
    operator delete(*(v9 - 96));
    sub_271130878(va);
    _Unwind_Resume(a1);
  }

  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27153D0B8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087BA38, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087BA38))
    {
      operator new();
    }
  }

  operator new();
}

BOOL sub_27153D1BC(uint64_t a1, uint64_t a2)
{
  result = sub_27153C728(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  if (v5 != v6 || v5 == 0)
  {
    if (v5 != v6)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(a1 + 31);
    if (v8 >= 0)
    {
      v9 = *(a1 + 31);
    }

    else
    {
      v9 = *(a1 + 16);
    }

    v10 = *(a2 + 31);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 16);
    }

    if (v9 != v10)
    {
      return 0;
    }

    v12 = v8 >= 0 ? (a1 + 8) : *(a1 + 8);
    v13 = v11 >= 0 ? (a2 + 8) : *(a2 + 8);
    if (memcmp(v12, v13, v9))
    {
      return 0;
    }
  }

  v14 = *(a2 + 64);
  v15 = *(a1 + 64);
  result = v15 == v14;
  if (v15 != v14 || !*(a1 + 64))
  {
    return result;
  }

  v16 = *(a1 + 63);
  if (v16 >= 0)
  {
    v17 = *(a1 + 63);
  }

  else
  {
    v17 = *(a1 + 48);
  }

  v18 = *(a2 + 63);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 48);
  }

  if (v17 != v18)
  {
    return 0;
  }

  if (v16 >= 0)
  {
    v20 = (a1 + 40);
  }

  else
  {
    v20 = *(a1 + 40);
  }

  if (v19 >= 0)
  {
    v21 = (a2 + 40);
  }

  else
  {
    v21 = *(a2 + 40);
  }

  return memcmp(v20, v21, v17) == 0;
}

void sub_27153D2F4(void *a1, uint64_t a2)
{
  sub_271120E64(a1, "Transform3{src: ", 16);
  if (*(a2 + 32) == 1)
  {
    v18 = 34;
    v4 = sub_271120E64(a1, &v18, 1);
    v5 = *(a2 + 31);
    if (v5 >= 0)
    {
      v6 = a2 + 8;
    }

    else
    {
      v6 = *(a2 + 8);
    }

    if (v5 >= 0)
    {
      v7 = *(a2 + 31);
    }

    else
    {
      v7 = *(a2 + 16);
    }

    v8 = sub_271120E64(v4, v6, v7);
    v19 = 34;
    v9 = &v19;
    v10 = 1;
  }

  else
  {
    v9 = "world";
    v8 = a1;
    v10 = 5;
  }

  sub_271120E64(v8, v9, v10);
  sub_271120E64(a1, ", dst: ", 7);
  if (*(a2 + 64) == 1)
  {
    v20 = 34;
    v11 = sub_271120E64(a1, &v20, 1);
    v12 = *(a2 + 63);
    if (v12 >= 0)
    {
      v13 = a2 + 40;
    }

    else
    {
      v13 = *(a2 + 40);
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 63);
    }

    else
    {
      v14 = *(a2 + 48);
    }

    v15 = sub_271120E64(v11, v13, v14);
    v21 = 34;
    v16 = &v21;
    v17 = 1;
  }

  else
  {
    v16 = "world";
    v15 = a1;
    v17 = 5;
  }

  sub_271120E64(v15, v16, v17);
  sub_271120E64(a1, ", transform:", 12);
  operator new();
}

uint64_t sub_27153D4D8(uint64_t a1, uint64_t a2, float *a3)
{
  v11 = a2;
  v12 = "{";
  v13 = a2;
  v14 = "{";
  v15 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1 || (v16 = &v11, (*(&off_288133558 + v3))(&v16), sub_2711CDE78(&v11, a2, a3), v11 = a2, v12 = ",", v13 = a2, v14 = ",", v15 = ",", v6 = *(a2 + 24), v6 == -1) || (v16 = &v11, (*(&off_288133558 + v6))(&v16, a2), sub_2711CDE78(&v11, a2, a3 + 1), v11 = a2, v12 = ",", v13 = a2, v14 = ",", v15 = ",", v7 = *(a2 + 24), v7 == -1) || (v16 = &v11, (*(&off_288133558 + v7))(&v16, a2), sub_2711CDE78(&v11, a2, a3 + 2), v11 = a2, v12 = ",", v13 = a2, v14 = ",", v15 = ",", v8 = *(a2 + 24), v8 == -1) || (v16 = &v11, (*(&off_288133558 + v8))(&v16, a2), sub_2711CDE78(&v11, a2, a3 + 3), v11 = a2, v12 = "}", v13 = a2, v14 = "}", v15 = "}", v9 = *(a2 + 24), v9 == -1))
  {
    sub_2711308D4();
  }

  v16 = &v11;
  return (*(&off_288133558 + v9))(&v16, a2);
}

void sub_27153D668(uint64_t *a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v17 + 7) = *(a2 + 15);
  v5 = *a2;
  v17[0] = *(a2 + 8);
  v4 = v17[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v12 = v5;
  *v13 = v4;
  *&v13[7] = *(v17 + 7);
  v14 = v6;
  memset(v17, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v16 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_288133528[v10])(&v11, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v12, 2uLL);
  *(v3 + 24) = 2;
  if ((v16 & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v12);
    return;
  }

  operator delete(__p);
  if (v14 < 0)
  {
    goto LABEL_13;
  }
}

void sub_27153D82C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27153D884(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_27153DAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27153DAE0(uint64_t a1, uint64_t a2, double *a3)
{
  v11 = a2;
  v12 = "{";
  v13 = a2;
  v14 = "{";
  v15 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1 || (v16 = &v11, (*(&off_288133558 + v3))(&v16), sub_2711CC17C(&v11, a2, a3), v11 = a2, v12 = ",", v13 = a2, v14 = ",", v15 = ",", v6 = *(a2 + 24), v6 == -1) || (v16 = &v11, (*(&off_288133558 + v6))(&v16, a2), sub_2711CC17C(&v11, a2, a3 + 1), v11 = a2, v12 = ",", v13 = a2, v14 = ",", v15 = ",", v7 = *(a2 + 24), v7 == -1) || (v16 = &v11, (*(&off_288133558 + v7))(&v16, a2), sub_2711CC17C(&v11, a2, a3 + 2), v11 = a2, v12 = ",", v13 = a2, v14 = ",", v15 = ",", v8 = *(a2 + 24), v8 == -1) || (v16 = &v11, (*(&off_288133558 + v8))(&v16, a2), sub_2711CC17C(&v11, a2, a3 + 3), v11 = a2, v12 = "}", v13 = a2, v14 = "}", v15 = "}", v9 = *(a2 + 24), v9 == -1))
  {
    sub_2711308D4();
  }

  v16 = &v11;
  return (*(&off_288133558 + v9))(&v16, a2);
}

void sub_27153DC6C(float32x2_t *a1, float32x2_t *a2)
{
  v4 = (a1[3].f32[0] - a1[4].f32[1]) * 0.5;
  a2->f32[0] = v4;
  v5 = (a1[4].f32[0] - a1[1].f32[0]) * 0.5;
  a2->f32[1] = v5;
  v6 = (a1->f32[1] - a1[2].f32[0]) * 0.5;
  a2[1].f32[0] = v6;
  v7 = a1->f32[0];
  v8 = a1[2].f32[1];
  v9 = a1[5].f32[0];
  v10 = -1.0;
  v11 = (((a1->f32[0] + v8) + v9) + -1.0) * 0.5;
  v12 = ((v4 * v4) + (v5 * v5)) + (v6 * v6);
  if (v11 >= -1.0 || (v11 + 1.0) <= -0.00001)
  {
    v15 = (v11 + -1.0) < 0.00001 && v11 > 1.0;
    if (v11 > 0.99 || v15)
    {
      v16 = (v12 * ((v12 * (((v12 * 5.0) / 112.0) + 0.075)) + 0.16667)) + 1.0;
    }

    else
    {
      if (v11 <= -0.99)
      {
        v10 = (((a1->f32[0] + v8) + v9) + -1.0) * 0.5;
        goto LABEL_19;
      }

      v16 = acosf(v11) / sqrtf(v12);
    }

    a2->f32[0] = v4 * v16;
    a2->f32[1] = v5 * v16;
    a2[1].f32[0] = v6 * v16;
    return;
  }

LABEL_19:
  v17 = asinf(sqrtf(v12));
  v18 = ((3.1416 - v17) * (3.1416 - v17)) / (1.0 - v10);
  v19 = (v7 - v10) * v18;
  v20 = (v8 - v10) * v18;
  v21 = (v9 - v10) * v18;
  if (v19 <= v20)
  {
    v26 = v18 * 0.5;
    if (v20 <= v21)
    {
      v33 = sqrtf(v21);
      if (v6 < 0.0)
      {
        v33 = -v33;
      }

      a2[1].f32[0] = v33;
      v34.i32[0] = a1[1].i32[0];
      v34.i32[1] = a1[3].i32[0];
      *a2 = vmul_n_f32(vmul_n_f32(vadd_f32(a1[4], v34), v26), 1.0 / v33);
    }

    else
    {
      v27 = sqrtf(v20);
      if (v5 < 0.0)
      {
        v27 = -v27;
      }

      a2->f32[1] = v27;
      v28 = 1.0 / v27;
      v29 = a1[4].f32[1] + a1[3].f32[0];
      a2->f32[0] = v28 * (v26 * (a1[2].f32[0] + a1->f32[1]));
      a2[1].f32[0] = v28 * (v26 * v29);
    }
  }

  else
  {
    v22 = v18 * 0.5;
    v23 = v22 * (a1[4].f32[0] + a1[1].f32[0]);
    if (v19 <= v21)
    {
      v30 = sqrtf(v21);
      if (v6 < 0.0)
      {
        v30 = -v30;
      }

      a2[1].f32[0] = v30;
      v31 = 1.0 / v30;
      v32 = v31 * (v22 * (a1[4].f32[1] + a1[3].f32[0]));
      a2->f32[0] = v31 * v23;
      a2->f32[1] = v32;
    }

    else
    {
      v24 = sqrtf(v19);
      if (v4 < 0.0)
      {
        v24 = -v24;
      }

      a2->f32[0] = v24;
      v25 = 1.0 / v24;
      a2->f32[1] = v25 * (v22 * (a1[2].f32[0] + a1->f32[1]));
      a2[1].f32[0] = v25 * v23;
    }
  }
}

void sub_27153DF7C(float64x2_t *a1, float64x2_t *a2)
{
  v4 = (a1[3].f64[0] - a1[4].f64[1]) * 0.5;
  a2->f64[0] = v4;
  v5 = (a1[4].f64[0] - a1[1].f64[0]) * 0.5;
  a2->f64[1] = v5;
  v6 = (a1->f64[1] - a1[2].f64[0]) * 0.5;
  a2[1].f64[0] = v6;
  v7 = a1->f64[0];
  v8 = a1[2].f64[1];
  v9 = a1[5].f64[0];
  v10 = -1.0;
  v11 = (a1->f64[0] + v8 + v9 + -1.0) * 0.5;
  v12 = v4 * v4 + v5 * v5 + v6 * v6;
  if (v11 >= -1.0 || v11 + 1.0 <= -0.00001)
  {
    v22 = v11 > 1.0;
    if (v11 + -1.0 >= 0.00001)
    {
      v22 = 0;
    }

    if (v11 <= 0.99 && !v22)
    {
      if (v11 <= -0.99)
      {
        v10 = (a1->f64[0] + v8 + v9 + -1.0) * 0.5;
        goto LABEL_3;
      }

      v24 = acos(v11) / sqrt(v12);
      a2->f64[0] = v4 * v24;
      a2->f64[1] = v5 * v24;
    }

    else
    {
      v24 = v12 * (v12 * (v12 * 5.0 / 112.0 + 0.075) + 0.166666667) + 1.0;
      a2->f64[0] = v4 * v24;
      a2->f64[1] = v5 * v24;
    }

    a2[1].f64[0] = v6 * v24;
    return;
  }

LABEL_3:
  v13 = asin(sqrt(v12));
  v14 = (3.14159265 - v13) * (3.14159265 - v13) / (1.0 - v10);
  v15 = (v7 - v10) * v14;
  v16 = (v8 - v10) * v14;
  v17 = (v9 - v10) * v14;
  if (v15 <= v16)
  {
    v25 = v14 * 0.5;
    if (v16 <= v17)
    {
      v32 = sqrt(v17);
      if (v6 < 0.0)
      {
        v32 = -v32;
      }

      a2[1].f64[0] = v32;
      v33.f64[0] = a1[1].f64[0];
      v33.f64[1] = a1[3].f64[0];
      *a2 = vmulq_n_f64(vmulq_n_f64(vaddq_f64(a1[4], v33), v25), 1.0 / v32);
    }

    else
    {
      v26 = sqrt(v16);
      if (v5 < 0.0)
      {
        v26 = -v26;
      }

      a2->f64[1] = v26;
      v27 = 1.0 / v26;
      v28 = a1[4].f64[1] + a1[3].f64[0];
      a2->f64[0] = v27 * (v25 * (a1[2].f64[0] + a1->f64[1]));
      a2[1].f64[0] = v27 * (v25 * v28);
    }
  }

  else
  {
    v18 = v14 * 0.5;
    v19 = v18 * (a1[4].f64[0] + a1[1].f64[0]);
    if (v15 <= v17)
    {
      v29 = sqrt(v17);
      if (v6 < 0.0)
      {
        v29 = -v29;
      }

      a2[1].f64[0] = v29;
      v30 = 1.0 / v29;
      v31 = v30 * (v18 * (a1[4].f64[1] + a1[3].f64[0]));
      a2->f64[0] = v30 * v19;
      a2->f64[1] = v31;
    }

    else
    {
      v20 = sqrt(v15);
      if (v4 < 0.0)
      {
        v20 = -v20;
      }

      a2->f64[0] = v20;
      v21 = 1.0 / v20;
      a2->f64[1] = v21 * (v18 * (a1[2].f64[0] + a1->f64[1]));
      a2[1].f64[0] = v21 * v19;
    }
  }
}

float sub_27153E294(uint64_t a1, uint64_t *a2)
{
  *a1 = *(*a2 + 136);
  LODWORD(v2) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 104) = 0;
  v3 = *a2;
  v4 = *(*a2 + 136);
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      if (!*(v3 + 32))
      {
        LODWORD(v2) = *v3;
        v19 = *(v3 + 1);
        v20 = *(v3 + 4);
        v21 = *(v3 + 5);
        v22 = *(v3 + 8);
        v23 = *(v3 + 9);
        v24 = *(v3 + 12);
        v25 = *(v3 + 13);
        v26 = *(v3 + 2);
        v27 = *(v3 + 6);
        v28 = *(v3 + 10);
        v29 = *(v3 + 14);
        *(a1 + 8) = *v3;
        *(a1 + 12) = v20;
        *(a1 + 16) = v22;
        *(a1 + 20) = v24;
        *(a1 + 24) = v19;
        *(a1 + 28) = v21;
        *(a1 + 32) = v23;
        *(a1 + 36) = v25;
        *(a1 + 40) = v26;
        *(a1 + 44) = v27;
        *(a1 + 48) = v28;
        *(a1 + 52) = v29;
        return *&v2;
      }
    }

    else
    {
      if (v4 != 5)
      {
        return *&v2;
      }

      if (*(v3 + 32) == 1)
      {
        *&v2 = *v3;
        v7 = *(v3 + 1);
        v8 = *(v3 + 4);
        v9 = *(v3 + 5);
        v10 = *(v3 + 8);
        v11 = *(v3 + 9);
        v12 = *(v3 + 12);
        v13 = *(v3 + 13);
        v14 = *(v3 + 2);
        v15 = *(v3 + 6);
        v16 = *(v3 + 10);
        v17 = *(v3 + 14);
        *(a1 + 8) = *v3;
        *(a1 + 16) = v8;
        *(a1 + 104) = 1;
        *(a1 + 24) = v10;
        *(a1 + 32) = v12;
        *(a1 + 40) = v7;
        *(a1 + 48) = v9;
        *(a1 + 56) = v11;
        *(a1 + 64) = v13;
        *(a1 + 72) = v14;
        *(a1 + 80) = v15;
        *(a1 + 88) = v16;
        *(a1 + 96) = v17;
        return *&v2;
      }
    }

LABEL_15:
    sub_2711308D4();
  }

  if (v4 == 1)
  {
    if (*(v3 + 32) == 2)
    {
      *(a1 + 104) = 2;
      v2 = *v3;
      v18 = *(v3 + 2);
      *(a1 + 8) = *v3;
      *(a1 + 24) = v18;
      return *&v2;
    }

    goto LABEL_15;
  }

  if (v4 != 2)
  {
    return *&v2;
  }

  if (*(v3 + 32) != 3)
  {
    goto LABEL_15;
  }

  *(a1 + 104) = 3;
  v2 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *(a1 + 8) = *v3;
  *(a1 + 24) = v5;
  *(a1 + 40) = v6;
  return *&v2;
}

uint64_t *sub_27153E3E4(uint64_t *a1, _BYTE *a2)
{
  if ((atomic_load_explicit(&qword_28087BA50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BA50))
  {
    sub_27153E698();
  }

  __p = 0;
  v25 = 0;
  v26 = 0;
  sub_2714A56E0(a1, &__p);
  v4 = qword_28087BA60;
  if (!qword_28087BA60)
  {
    goto LABEL_41;
  }

  if (v26 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v26 >= 0)
  {
    v6 = HIBYTE(v26);
  }

  else
  {
    v6 = v25;
  }

  v7 = &qword_28087BA60;
  do
  {
    while (1)
    {
      v8 = *(v4 + 55);
      v9 = v8 >= 0 ? (v4 + 32) : *(v4 + 32);
      v10 = v8 >= 0 ? *(v4 + 55) : *(v4 + 40);
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, p_p, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_24;
      }

LABEL_10:
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v7 = v4;
    v4 = *v4;
  }

  while (v4);
LABEL_25:
  if (v7 == &qword_28087BA60)
  {
    goto LABEL_41;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(p_p, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v20 = std::string::append(&v22, ", expected [Algebra|Affine][F|D]", 0x20uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(exception, &v23);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  if (v6 < v15)
  {
    goto LABEL_41;
  }

LABEL_37:
  *a2 = *(v7 + 56);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_27153E620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v28 & 1) == 0)
    {
LABEL_8:
      if (a27 < 0)
      {
        operator delete(a22);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v27);
  goto LABEL_8;
}

void sub_27153E698()
{
  v0 = 84148737;
  qword_28087BA68 = 0;
  qword_28087BA60 = 0;
  qword_28087BA58 = &qword_28087BA60;
  v2 = 0;
  sub_27148C43C(&v3, v1, &v0);
}

void sub_27153E904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_27151CE44(qword_28087BA60);
    _Unwind_Resume(a1);
  }

  sub_27151CE44(qword_28087BA60);
  _Unwind_Resume(a1);
}

void sub_27153E954(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 112);
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      if (!v4)
      {
        __asm { FMOV            V0.4S, #1.0 }

        operator new();
      }
    }

    else if (v4 == 1)
    {
      __asm { FMOV            V0.2D, #1.0 }

      operator new();
    }
  }

  else if (v3 == 1)
  {
    if (v4 == 2)
    {
      operator new();
    }
  }

  else if (v4 == 3)
  {
    operator new();
  }

  sub_2711308D4();
}

void sub_27153ED28(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a31 == 1 && a30 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 88) == 1 && *(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  MEMORY[0x2743BF050](v32, v31, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

BOOL sub_27153ED84(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v27[3] = v2;
  v27[4] = v3;
  v6 = *(a1 + 112);
  v7 = *(a2 + 112);
  if (v6 != -1 && v7 == v6)
  {
    v27[0] = &v26;
    if (((off_2881335D0[v6])(v27, a1 + 16, a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7 != v6)
  {
    return 0;
  }

  v10 = *(a1 + 144);
  v11 = *(a2 + 144);
  if (v10 == v11 && *(a1 + 144))
  {
    v12 = *(a1 + 143);
    if (v12 >= 0)
    {
      v13 = *(a1 + 143);
    }

    else
    {
      v13 = *(a1 + 128);
    }

    v14 = *(a2 + 143);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a2 + 128);
    }

    if (v13 != v14)
    {
      return 0;
    }

    v16 = v12 >= 0 ? (a1 + 120) : *(a1 + 120);
    v17 = v15 >= 0 ? (a2 + 120) : *(a2 + 120);
    if (memcmp(v16, v17, v13))
    {
      return 0;
    }
  }

  else if (v10 != v11)
  {
    return 0;
  }

  v18 = *(a2 + 176);
  v19 = *(a1 + 176);
  result = v19 == v18;
  if (v19 != v18 || !*(a1 + 176))
  {
    return result;
  }

  v20 = *(a1 + 175);
  if (v20 >= 0)
  {
    v21 = *(a1 + 175);
  }

  else
  {
    v21 = *(a1 + 160);
  }

  v22 = *(a2 + 175);
  v23 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(a2 + 160);
  }

  if (v21 != v22)
  {
    return 0;
  }

  if (v20 >= 0)
  {
    v24 = (a1 + 152);
  }

  else
  {
    v24 = *(a1 + 152);
  }

  if (v23 >= 0)
  {
    v25 = (a2 + 152);
  }

  else
  {
    v25 = *(a2 + 152);
  }

  return memcmp(v24, v25, v21) == 0;
}

BOOL sub_27153EF2C(uint64_t a1, float *a2, float *a3)
{
  result = *a2 == *a3;
  if (*a2 == *a3)
  {
    v4 = a2[1];
    v5 = a3[1];
    result = v4 == v5;
    if (v4 == v5)
    {
      v6 = a2[2];
      v7 = a3[2];
      result = v6 == v7;
      if (v6 == v7)
      {
        result = a2[3] == a3[3];
      }
    }
  }

  if (result)
  {
    v8 = a2[4];
    v9 = a3[4];
    result = v8 == v9;
    if (v8 == v9)
    {
      v10 = a2[5];
      v11 = a3[5];
      result = v10 == v11;
      if (v10 == v11)
      {
        v12 = a2[6];
        v13 = a3[6];
        result = v12 == v13;
        if (v12 == v13)
        {
          result = a2[7] == a3[7];
        }
      }
    }

    if (result)
    {
      v14 = a2[8];
      v15 = a3[8];
      result = v14 == v15;
      if (v14 == v15)
      {
        v16 = a2[9];
        v17 = a3[9];
        result = v16 == v17;
        if (v16 == v17)
        {
          v18 = a2[10];
          v19 = a3[10];
          result = v18 == v19;
          if (v18 == v19)
          {
            return a2[11] == a3[11];
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_27153F01C(uint64_t a1, double *a2, double *a3)
{
  result = *a2 == *a3;
  if (*a2 == *a3)
  {
    v4 = a2[1];
    v5 = a3[1];
    result = v4 == v5;
    if (v4 == v5)
    {
      v6 = a2[2];
      v7 = a3[2];
      result = v6 == v7;
      if (v6 == v7)
      {
        result = a2[3] == a3[3];
      }
    }
  }

  if (result)
  {
    v8 = a2[4];
    v9 = a3[4];
    result = v8 == v9;
    if (v8 == v9)
    {
      v10 = a2[5];
      v11 = a3[5];
      result = v10 == v11;
      if (v10 == v11)
      {
        v12 = a2[6];
        v13 = a3[6];
        result = v12 == v13;
        if (v12 == v13)
        {
          result = a2[7] == a3[7];
        }
      }
    }

    if (result)
    {
      v14 = a2[8];
      v15 = a3[8];
      result = v14 == v15;
      if (v14 == v15)
      {
        v16 = a2[9];
        v17 = a3[9];
        result = v16 == v17;
        if (v16 == v17)
        {
          v18 = a2[10];
          v19 = a3[10];
          result = v18 == v19;
          if (v18 == v19)
          {
            return a2[11] == a3[11];
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_27153F10C(uint64_t a1, float *a2, float *a3)
{
  result = *a2 == *a3;
  if (*a2 == *a3)
  {
    v4 = a2[1];
    v5 = a3[1];
    result = v4 == v5;
    if (v4 == v5)
    {
      result = a2[2] == a3[2];
    }
  }

  if (result)
  {
    v6 = a2[3];
    v7 = a3[3];
    result = v6 == v7;
    if (v6 == v7)
    {
      v8 = a2[4];
      v9 = a3[4];
      result = v8 == v9;
      if (v8 == v9)
      {
        return a2[5] == a3[5];
      }
    }
  }

  return result;
}

BOOL sub_27153F184(uint64_t a1, double *a2, double *a3)
{
  result = *a2 == *a3;
  if (*a2 == *a3)
  {
    v4 = a2[1];
    v5 = a3[1];
    result = v4 == v5;
    if (v4 == v5)
    {
      result = a2[2] == a3[2];
    }
  }

  if (result)
  {
    v6 = a2[3];
    v7 = a3[3];
    result = v6 == v7;
    if (v6 == v7)
    {
      v8 = a2[4];
      v9 = a3[4];
      result = v8 == v9;
      if (v8 == v9)
      {
        return a2[5] == a3[5];
      }
    }
  }

  return result;
}

uint64_t sub_27153F450(uint64_t a1, uint64_t a2, double *a3)
{
  v10 = a2;
  v11 = "{";
  v12 = a2;
  v13 = "{";
  v14 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1 || (v15 = &v10, (*(&off_288133620 + v3))(&v15), sub_2711CC17C(&v10, a2, a3), v10 = a2, v11 = ",", v12 = a2, v13 = ",", v14 = ",", v6 = *(a2 + 24), v6 == -1) || (v15 = &v10, (*(&off_288133620 + v6))(&v15, a2), sub_2711CC17C(&v10, a2, a3 + 1), v10 = a2, v11 = ",", v12 = a2, v13 = ",", v14 = ",", v7 = *(a2 + 24), v7 == -1) || (v15 = &v10, (*(&off_288133620 + v7))(&v15, a2), sub_2711CC17C(&v10, a2, a3 + 2), v10 = a2, v11 = "}", v12 = a2, v13 = "}", v14 = "}", v8 = *(a2 + 24), v8 == -1))
  {
    sub_2711308D4();
  }

  v15 = &v10;
  return (*(&off_288133620 + v8))(&v15, a2);
}

void sub_27153F9C0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x2743BF050](v21, v22, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void *sub_27153FACC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 408) == 1 && *(v1 + 407) < 0)
    {
      operator delete(*(v1 + 384));
    }

    v3 = sub_271359728(v1);
    MEMORY[0x2743BF050](v3, 0x10B2C40FBB7FC15);
    return v2;
  }

  return result;
}

BOOL sub_27153FB34(float ***a1, float ***a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = **a2;
  if (v4 - v5 != (*a2)[1] - v6)
  {
    return 0;
  }

  if (v5 != v4)
  {
    while (*v5 == *v6 && v5[1] == v6[1] && v5[2] == v6[2])
    {
      v5 += 3;
      v6 += 3;
      if (v5 == v4)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

LABEL_7:
  v8 = v2[4];
  v7 = v2[5];
  v9 = v3[4];
  if (v7 - v8 != v3[5] - v9)
  {
    return 0;
  }

  if (v8 != v7)
  {
    while (*v8 == *v9 && v8[1] == v9[1] && v8[2] == v9[2])
    {
      v8 += 3;
      v9 += 3;
      if (v8 == v7)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

LABEL_13:
  if (*(v2 + 16) != *(v3 + 16))
  {
    return 0;
  }

  v11 = v2[9];
  v10 = v2[10];
  v12 = v3[9];
  if (v10 - v11 != v3[10] - v12)
  {
    return 0;
  }

  if (v11 != v10)
  {
    while (*v11 == *v12 && v11[1] == v12[1] && v11[2] == v12[2])
    {
      v11 += 3;
      v12 += 3;
      if (v11 == v10)
      {
        goto LABEL_20;
      }
    }

    return 0;
  }

LABEL_20:
  if (*(v2 + 26) != *(v3 + 26))
  {
    return 0;
  }

  v14 = v2[14];
  v13 = v2[15];
  v15 = v3[14];
  if (v13 - v14 != v3[15] - v15)
  {
    return 0;
  }

  if (v14 != v13)
  {
    while (*v14 == *v15 && *(v14 + 1) == *(v15 + 1) && *(v14 + 2) == *(v15 + 2))
    {
      v14 += 3;
      v15 += 12;
      if (v14 == v13)
      {
        goto LABEL_27;
      }
    }

    return 0;
  }

LABEL_27:
  v17 = v2[18];
  v16 = v2[19];
  v18 = v3[18];
  if (v16 - v17 != v3[19] - v18)
  {
    return 0;
  }

  if (v17 != v16)
  {
    while (*v17 == *v18 && *(v17 + 1) == *(v18 + 1))
    {
      v17 += 2;
      v18 += 8;
      if (v17 == v16)
      {
        goto LABEL_35;
      }
    }

    return 0;
  }

LABEL_35:
  v21 = v2[22];
  v20 = v2[23];
  v22 = v3[22];
  if (v20 - v21 != v3[23] - v22)
  {
    return 0;
  }

  if (v21 != v20)
  {
    while (*v21 == *v22 && v21[1] == v22[1])
    {
      v21 += 2;
      v22 += 2;
      if (v21 == v20)
      {
        goto LABEL_40;
      }
    }

    return 0;
  }

LABEL_40:
  v49 = *a2;
  v50 = *a1;
  v25 = v2 + 26;
  v23 = v2[26];
  v24 = v25[1];
  v27 = v3 + 26;
  v26 = v3[26];
  if (v24 - v23 != v27[1] - v26)
  {
    return 0;
  }

  if (v23 != v24)
  {
    while (*v23 == *v26 && *(v23 + 1) == *(v26 + 1) && *(v23 + 2) == *(v26 + 2))
    {
      v23 += 3;
      v26 += 3;
      if (v23 == v24)
      {
        goto LABEL_46;
      }
    }

    return 0;
  }

LABEL_46:
  v28 = v50[30];
  v29 = v50[31] - v28;
  v30 = v49[30];
  if (v29 != v49[31] - v30)
  {
    return 0;
  }

  if (memcmp(v28, v30, v29))
  {
    return 0;
  }

  if (*(v50 + 68) != *(v49 + 68))
  {
    return 0;
  }

  v31 = v50[35];
  v32 = v50[36] - v31;
  v33 = v49[35];
  if (v32 != v49[36] - v33)
  {
    return 0;
  }

  if (memcmp(v31, v33, v32))
  {
    return 0;
  }

  if (*(v50 + 78) != *(v49 + 78))
  {
    return 0;
  }

  v35 = v50[40];
  v34 = v50[41];
  v36 = v49[40];
  if (v34 - v35 != v49[41] - v36)
  {
    return 0;
  }

  if (v35 != v34)
  {
    while (*v35 == *v36)
    {
      ++v35;
      ++v36;
      if (v35 == v34)
      {
        goto LABEL_56;
      }
    }

    return 0;
  }

LABEL_56:
  if (*(v50 + 88) != *(v49 + 88))
  {
    return 0;
  }

  v37 = *(v50 + 380);
  v38 = *(v49 + 380);
  if (v37 == v38 && v37 != 0)
  {
    if (*(v50 + 89) != *(v49 + 89) || *(v50 + 90) != *(v49 + 90) || *(v50 + 91) != *(v49 + 91) || *(v50 + 92) != *(v49 + 92) || *(v50 + 93) != *(v49 + 93) || *(v50 + 94) != *(v49 + 94))
    {
      return 0;
    }

    goto LABEL_63;
  }

  if (v37 != v38)
  {
    return 0;
  }

LABEL_63:
  v40 = *(v49 + 408);
  v41 = *(v50 + 408);
  result = v41 == v40;
  if (v41 == v40 && *(v50 + 408))
  {
    v43 = *(v50 + 407);
    if (v43 >= 0)
    {
      v44 = *(v50 + 407);
    }

    else
    {
      v44 = v50[49];
    }

    v45 = *(v49 + 407);
    v46 = v49[49];
    if (v45 >= 0)
    {
      v46 = *(v49 + 407);
    }

    if (v44 != v46)
    {
      return 0;
    }

    if (v43 >= 0)
    {
      v47 = (v50 + 48);
    }

    else
    {
      v47 = v50[48];
    }

    if (v45 >= 0)
    {
      v48 = (v49 + 48);
    }

    else
    {
      v48 = v49[48];
    }

    return memcmp(v47, v48, v44) == 0;
  }

  return result;
}

void sub_271540344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271540360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x2743BF050](v7, 0x10B2C40EED050F3, a3, a4);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_27154038C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_2715403A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_2715403B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_271137AE8(&a12);
    _Unwind_Resume(a1);
  }

  sub_271137AE8(&a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_271540400(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = -1431655765 * ((a1[2] - v2) >> 2);
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v8 = &v6;
    (off_288133638[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_271540490(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = -1431655765 * ((a1[2] - v2) >> 2);
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v8 = &v6;
    (off_288133668[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_271540520(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = (a1[2] - v2) >> 3;
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v8 = &v6;
    (off_288133648[v4])(&v8, a1 + 3);
  }

  return a1;
}