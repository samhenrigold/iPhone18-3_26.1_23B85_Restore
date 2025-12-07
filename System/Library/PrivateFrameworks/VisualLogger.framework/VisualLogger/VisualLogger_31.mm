void sub_27139C76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  sub_27112D66C(v39 + 16);
  sub_27112E024(va);
  if (*(v40 - 64) == 1)
  {
    sub_27113827C(v40 - 192);
  }

  _Unwind_Resume(a1);
}

void sub_27139C7B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63[0] = a2;
  v63[1] = a1;
  LOBYTE(v51) = 0;
  v62 = 0;
  v50[0] = &unk_2881317E0;
  v50[1] = &v51;
  v50[2] = v63;
  sub_27184A384(v50, v37);
  if (v49 == 1)
  {
    v25 = v61;
    if (v61 == 1)
    {
      v15 = v51;
      v51 = 0uLL;
      *v16 = off_28810C940;
      *&v16[8] = *&v52[8];
      *&v52[8] = 0uLL;
    }

    else
    {
      v15 = v51;
      v16[0] = 0;
      v24 = 0;
      if (v60 == 1)
      {
        v17 = 0;
        if (v53 == 1)
        {
          *v16 = *v52;
          *&v16[16] = *&v52[16];
          memset(v52, 0, sizeof(v52));
          v17 = 1;
        }

        LOBYTE(v18[0]) = 0;
        v23 = 0;
        if (v59 == 1)
        {
          v19 = v55;
          *v18 = v54;
          v54 = 0uLL;
          v20 = v56;
          *v21 = v57;
          v22 = v58;
          v55 = 0;
          v57 = 0uLL;
          v58 = 0;
          v23 = 1;
        }

        v24 = 1;
      }
    }

    goto LABEL_30;
  }

  v26 = *v37;
  LOBYTE(__p) = 0;
  v36 = 0;
  if (v48 == 1)
  {
    sub_27112F6CC(&__p, &v38);
    v36 = 1;
    v15 = v26;
    v16[0] = 0;
    v17 = 0;
    if (v29 == 1)
    {
      *v16 = __p;
      *&v16[16] = v28;
      v28 = 0;
      __p = 0uLL;
      v17 = 1;
      LOBYTE(v18[0]) = 0;
      v23 = 0;
      if ((v35 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      LOBYTE(v18[0]) = 0;
      v23 = 0;
      if ((v35 & 1) == 0)
      {
LABEL_7:
        v24 = 1;
        v25 = 0;
        if (!v29)
        {
          goto LABEL_20;
        }

LABEL_18:
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_20;
      }
    }

    v19 = v31;
    *v18 = v30;
    v30 = 0uLL;
    v20 = v32;
    *v21 = v33;
    v22 = v34;
    v31 = 0;
    v33 = 0uLL;
    v34 = 0;
    v23 = 1;
    v24 = 1;
    v25 = 0;
    if (v29)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v15 = *v37;
    v16[0] = 0;
    v24 = 0;
    v25 = 0;
  }

LABEL_20:
  if ((v49 & 1) == 0 && v48 == 1)
  {
    if (v47 == 1)
    {
      if (v46 < 0)
      {
        operator delete(v43);
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41);
      }
    }

    if (v40 == 1 && SHIBYTE(v39) < 0)
    {
      operator delete(v38);
    }
  }

LABEL_30:
  if (v62 == 1)
  {
    if (v61 == 1)
    {
      v4 = *&v52[16];
      if (*&v52[16] && !atomic_fetch_add((*&v52[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }

      v5 = *(&v51 + 1);
      if (*(&v51 + 1) && !atomic_fetch_add((*(&v51 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else if (v60 == 1)
    {
      if (v59 == 1)
      {
        if (SHIBYTE(v58) < 0)
        {
          operator delete(v57);
        }

        if (SHIBYTE(v55) < 0)
        {
          operator delete(v54);
        }
      }

      if (v53 == 1 && (v52[23] & 0x80000000) != 0)
      {
        operator delete(*v52);
      }
    }
  }

  if (v25 == 1)
  {
    *a3 = v15;
    v15 = 0uLL;
    *(a3 + 16) = off_28810C940;
    *(a3 + 24) = *&v16[8];
    *&v16[8] = 0;
    *&v16[16] = 0;
    *(a3 + 120) = 1;
    goto LABEL_96;
  }

  if (*(&v15 + 1) != &off_288132220)
  {
    sub_271847E00(&v15, &v26);
    if (SBYTE7(__p) < 0)
    {
      sub_271127178(v37, v26, *(&v26 + 1));
    }

    else
    {
      *v37 = v26;
      *&v38 = __p;
    }

    BYTE8(v38) = 1;
    LOBYTE(v39) = 0;
    v44 = 0;
    v45 = 1;
    sub_27139F524(3, v37, &v51);
    *a3 = v51;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    if (v60 != 1)
    {
      *(a3 + 120) = 0;
      goto LABEL_70;
    }

    *(a3 + 40) = 0;
    v8 = v53;
    if (v53 == 1)
    {
      *(a3 + 16) = *v52;
      *(a3 + 32) = *&v52[16];
      memset(v52, 0, sizeof(v52));
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v9 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v59 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v9 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v59 & 1) == 0)
      {
LABEL_63:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v8)
        {
          goto LABEL_70;
        }

        goto LABEL_68;
      }
    }

    v10 = v56;
    *(v9 + 16) = v55;
    *v9 = v54;
    v54 = 0uLL;
    *(a3 + 72) = v10;
    *(a3 + 80) = v57;
    *(a3 + 96) = v58;
    v55 = 0;
    v57 = 0uLL;
    v58 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v8)
    {
      goto LABEL_70;
    }

LABEL_68:
    if ((v52[23] & 0x80000000) != 0)
    {
      operator delete(*v52);
    }

LABEL_70:
    if (v45 == 1)
    {
      if (v44 == 1)
      {
        if (SHIBYTE(v43) < 0)
        {
          operator delete(v42);
        }

        if (SHIBYTE(v41) < 0)
        {
          operator delete(v39);
        }
      }

      if (BYTE8(v38) == 1 && SBYTE7(v38) < 0)
      {
        operator delete(v37[0]);
      }
    }

    if (SBYTE7(__p) < 0)
    {
      v11 = v26;
LABEL_95:
      operator delete(v11);
      goto LABEL_96;
    }

    goto LABEL_96;
  }

  LOBYTE(v37[0]) = 0;
  v45 = 0;
  if (v24 == 1)
  {
    sub_27112F6CC(v37, v16);
    v45 = 1;
  }

  sub_27139F524(v15, v37, &v51);
  *a3 = v51;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v60 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_86;
  }

  *(a3 + 40) = 0;
  v6 = v53;
  if (v53 == 1)
  {
    *(a3 + 16) = *v52;
    *(a3 + 32) = *&v52[16];
    memset(v52, 0, sizeof(v52));
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v7 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v59 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_83:
    v12 = v56;
    *(v7 + 16) = v55;
    *v7 = v54;
    v54 = 0uLL;
    *(a3 + 72) = v12;
    *(a3 + 80) = v57;
    *(a3 + 96) = v58;
    v55 = 0;
    v57 = 0uLL;
    v58 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v6)
    {
      goto LABEL_86;
    }

    goto LABEL_84;
  }

  *(a3 + 48) = 0;
  v7 = a3 + 48;
  *(a3 + 104) = 0;
  if (v59)
  {
    goto LABEL_83;
  }

LABEL_57:
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v6)
  {
    goto LABEL_86;
  }

LABEL_84:
  if ((v52[23] & 0x80000000) != 0)
  {
    operator delete(*v52);
  }

LABEL_86:
  if (v45 == 1)
  {
    if (v44 == 1)
    {
      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(v39);
      }
    }

    if (BYTE8(v38) == 1 && SBYTE7(v38) < 0)
    {
      v11 = v37[0];
      goto LABEL_95;
    }
  }

LABEL_96:
  if (v25 == 1)
  {
    v13 = *&v16[16];
    if (*&v16[16] && !atomic_fetch_add((*&v16[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      v14 = *(&v15 + 1);
      if (!*(&v15 + 1))
      {
        return;
      }
    }

    else
    {
      v14 = *(&v15 + 1);
      if (!*(&v15 + 1))
      {
        return;
      }
    }

    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  else if (v24 == 1)
  {
    if (v23 == 1)
    {
      if (SHIBYTE(v22) < 0)
      {
        operator delete(v21[0]);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18[0]);
      }
    }

    if (v17 == 1 && (v16[23] & 0x80000000) != 0)
    {
      operator delete(*v16);
    }
  }
}

void sub_27139D068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  sub_27112D66C(va);
  sub_271158CF0(&a9);
  _Unwind_Resume(a1);
}

void sub_27139D084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a30 < 0)
  {
    operator delete(__p);
    sub_271158CF0(&a9);
    _Unwind_Resume(a1);
  }

  sub_271158CF0(&a9);
  _Unwind_Resume(a1);
}

void sub_27139D120(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55[0] = a1;
  v55[1] = a2;
  LOBYTE(v42) = 0;
  v54 = 0;
  v41[0] = &unk_288131820;
  v41[1] = &v42;
  v41[2] = v55;
  sub_27184A384(v41, &v30);
  if (v40 == 1)
  {
    v18 = v53;
    if (v53 == 1)
    {
      v4 = v42;
      v42 = 0uLL;
      v7 = v4;
      *v8 = v43;
    }

    else
    {
      v7 = v42;
      LOBYTE(v8[0]) = 0;
      v17 = 0;
      if (v52 == 1)
      {
        v10 = 0;
        if (v45 == 1)
        {
          *v8 = v43;
          v9 = v44;
          v44 = 0;
          v43 = 0uLL;
          v10 = 1;
        }

        LOBYTE(v11[0]) = 0;
        v16 = 0;
        if (v51 == 1)
        {
          v12 = v47;
          *v11 = v46;
          v46 = 0uLL;
          v13 = v48;
          *v14 = v49;
          v15 = v50;
          v47 = 0;
          v49 = 0uLL;
          v50 = 0;
          v16 = 1;
        }

        v17 = 1;
      }
    }

    goto LABEL_30;
  }

  v19 = v30;
  LOBYTE(__p) = 0;
  v29 = 0;
  if (v39 == 1)
  {
    sub_27112F6CC(&__p, &v31);
    v29 = 1;
    v7 = v19;
    LOBYTE(v8[0]) = 0;
    v10 = 0;
    if (v22 == 1)
    {
      *v8 = __p;
      v9 = v21;
      v21 = 0;
      __p = 0uLL;
      v10 = 1;
      LOBYTE(v11[0]) = 0;
      v16 = 0;
      if ((v28 & 1) == 0)
      {
LABEL_7:
        v17 = 1;
        v18 = 0;
        if (!v22)
        {
          goto LABEL_20;
        }

LABEL_18:
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_20;
      }
    }

    else
    {
      LOBYTE(v11[0]) = 0;
      v16 = 0;
      if ((v28 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v12 = v24;
    *v11 = v23;
    v23 = 0uLL;
    v13 = v25;
    *v14 = v26;
    v15 = v27;
    v24 = 0;
    v26 = 0uLL;
    v27 = 0;
    v16 = 1;
    v17 = 1;
    v18 = 0;
    if (v22)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = v30;
    LOBYTE(v8[0]) = 0;
    v17 = 0;
    v18 = 0;
  }

LABEL_20:
  if ((v40 & 1) == 0 && v39 == 1)
  {
    if (v38 == 1)
    {
      if (v37 < 0)
      {
        operator delete(v36);
      }

      if (v35 < 0)
      {
        operator delete(v34);
      }
    }

    if (v33 == 1 && v32 < 0)
    {
      operator delete(v31);
    }
  }

LABEL_30:
  if (v54 == 1)
  {
    if (v53 == 1)
    {
      v5 = *(&v42 + 1);
      if (*(&v42 + 1) && !atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else if (v52 == 1)
    {
      if (v51 == 1)
      {
        if (SHIBYTE(v50) < 0)
        {
          operator delete(v49);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(v46);
        }
      }

      if (v45 == 1 && SHIBYTE(v44) < 0)
      {
        operator delete(v43);
      }
    }
  }

  sub_27139F114(a3, &v7);
  if (v18 == 1)
  {
    v6 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      if (!atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  else if (v17 == 1)
  {
    if (v16 == 1)
    {
      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }

      if (SHIBYTE(v12) < 0)
      {
        operator delete(v11[0]);
      }
    }

    if (v10 == 1 && SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_27139D584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  sub_27112D66C(v39 + 16);
  sub_27112E024(va);
  if (*(v40 - 64) == 1)
  {
    sub_27113827C(v40 - 192);
  }

  _Unwind_Resume(a1);
}

void sub_27139D5C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60[0] = a2;
  v60[1] = a1;
  v48[0] = 0;
  v59 = 0;
  v47[0] = &unk_288131860;
  v47[1] = v48;
  v47[2] = v60;
  sub_27184A384(v47, v34);
  if (v46 == 1)
  {
    v22 = v58;
    if (v58 == 1)
    {
      *v12 = &unk_288131488;
      *&v12[8] = *&v48[8];
      *&v48[8] = 0;
      *&v48[16] = 0;
    }

    else
    {
      *v12 = *v48;
      v12[16] = 0;
      v21 = 0;
      if (v57 == 1)
      {
        v14 = 0;
        if (v50 == 1)
        {
          *&v12[16] = *&v48[16];
          v13 = v49;
          *&v48[24] = 0;
          v49 = 0;
          *&v48[16] = 0;
          v14 = 1;
        }

        LOBYTE(v15[0]) = 0;
        v20 = 0;
        if (v56 == 1)
        {
          v16 = v52;
          *v15 = v51;
          v51 = 0uLL;
          v17 = v53;
          *v18 = v54;
          v19 = v55;
          v52 = 0;
          v54 = 0uLL;
          v55 = 0;
          v20 = 1;
        }

        v21 = 1;
      }
    }

    goto LABEL_30;
  }

  v23 = *v34;
  LOBYTE(__p) = 0;
  v33 = 0;
  if (v45 == 1)
  {
    sub_27112F6CC(&__p, &v35);
    v33 = 1;
    *v12 = v23;
    v12[16] = 0;
    v14 = 0;
    if (v26 == 1)
    {
      *&v12[16] = __p;
      v13 = v25;
      v25 = 0;
      __p = 0uLL;
      v14 = 1;
      LOBYTE(v15[0]) = 0;
      v20 = 0;
      if ((v32 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      LOBYTE(v15[0]) = 0;
      v20 = 0;
      if ((v32 & 1) == 0)
      {
LABEL_7:
        v21 = 1;
        v22 = 0;
        if (!v26)
        {
          goto LABEL_20;
        }

LABEL_18:
        if (SHIBYTE(v25) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_20;
      }
    }

    v16 = v28;
    *v15 = v27;
    v27 = 0uLL;
    v17 = v29;
    *v18 = v30;
    v19 = v31;
    v28 = 0;
    v30 = 0uLL;
    v31 = 0;
    v20 = 1;
    v21 = 1;
    v22 = 0;
    if (v26)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *v12 = *v34;
    v12[16] = 0;
    v21 = 0;
    v22 = 0;
  }

LABEL_20:
  if ((v46 & 1) == 0 && v45 == 1)
  {
    if (v44 == 1)
    {
      if (v43 < 0)
      {
        operator delete(v40);
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38);
      }
    }

    if (v37 == 1 && SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }
  }

LABEL_30:
  if (v59 == 1)
  {
    if (v58 == 1)
    {
      (**v48)(v48);
    }

    else if (v57 == 1)
    {
      if (v56 == 1)
      {
        if (SHIBYTE(v55) < 0)
        {
          operator delete(v54);
        }

        if (SHIBYTE(v52) < 0)
        {
          operator delete(v51);
        }
      }

      if (v50 == 1 && SHIBYTE(v49) < 0)
      {
        operator delete(*&v48[16]);
      }
    }
  }

  v4 = v22;
  if (v22 == 1)
  {
    *a3 = &unk_288131488;
    *(a3 + 8) = *&v12[8];
    *&v12[8] = 0;
    *&v12[16] = 0;
    *(a3 + 120) = v4;
    goto LABEL_91;
  }

  if (*&v12[8] != &off_288132220)
  {
    sub_271847E00(v12, &v23);
    if (SBYTE7(__p) < 0)
    {
      sub_271127178(v34, v23, *(&v23 + 1));
    }

    else
    {
      *v34 = v23;
      *&v35 = __p;
    }

    BYTE8(v35) = 1;
    LOBYTE(v36) = 0;
    v41 = 0;
    v42 = 1;
    sub_27139F524(3, v34, v48);
    *a3 = *v48;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    if (v57 != 1)
    {
      *(a3 + 120) = 0;
      goto LABEL_65;
    }

    *(a3 + 40) = 0;
    v7 = v50;
    if (v50 == 1)
    {
      *(a3 + 16) = *&v48[16];
      *(a3 + 32) = v49;
      *&v48[24] = 0;
      v49 = 0;
      *&v48[16] = 0;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v8 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v56 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v8 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v56 & 1) == 0)
      {
LABEL_58:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v7)
        {
          goto LABEL_65;
        }

        goto LABEL_63;
      }
    }

    v9 = v53;
    *(v8 + 16) = v52;
    *v8 = v51;
    v51 = 0uLL;
    *(a3 + 72) = v9;
    *(a3 + 80) = v54;
    *(a3 + 96) = v55;
    v52 = 0;
    v54 = 0uLL;
    v55 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v7)
    {
      goto LABEL_65;
    }

LABEL_63:
    if (SHIBYTE(v49) < 0)
    {
      operator delete(*&v48[16]);
    }

LABEL_65:
    if (v42 == 1)
    {
      if (v41 == 1)
      {
        if (SHIBYTE(v40) < 0)
        {
          operator delete(v39);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(v36);
        }
      }

      if (BYTE8(v35) == 1 && SBYTE7(v35) < 0)
      {
        operator delete(v34[0]);
      }
    }

    if (SBYTE7(__p) < 0)
    {
      v10 = v23;
LABEL_90:
      operator delete(v10);
      goto LABEL_91;
    }

    goto LABEL_91;
  }

  LOBYTE(v34[0]) = 0;
  v42 = 0;
  if (v21 == 1)
  {
    sub_27112F6CC(v34, &v12[16]);
    v42 = 1;
  }

  sub_27139F524(v12[0], v34, v48);
  *a3 = *v48;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v57 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_81;
  }

  *(a3 + 40) = 0;
  v5 = v50;
  if (v50 == 1)
  {
    *(a3 + 16) = *&v48[16];
    *(a3 + 32) = v49;
    *&v48[24] = 0;
    v49 = 0;
    *&v48[16] = 0;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v6 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v56 & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_78:
    v11 = v53;
    *(v6 + 16) = v52;
    *v6 = v51;
    v51 = 0uLL;
    *(a3 + 72) = v11;
    *(a3 + 80) = v54;
    *(a3 + 96) = v55;
    v52 = 0;
    v54 = 0uLL;
    v55 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v5)
    {
      goto LABEL_81;
    }

    goto LABEL_79;
  }

  *(a3 + 48) = 0;
  v6 = a3 + 48;
  *(a3 + 104) = 0;
  if (v56)
  {
    goto LABEL_78;
  }

LABEL_52:
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v5)
  {
    goto LABEL_81;
  }

LABEL_79:
  if (SHIBYTE(v49) < 0)
  {
    operator delete(*&v48[16]);
  }

LABEL_81:
  if (v42 == 1)
  {
    if (v41 == 1)
    {
      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39);
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(v36);
      }
    }

    if (BYTE8(v35) == 1 && SBYTE7(v35) < 0)
    {
      v10 = v34[0];
      goto LABEL_90;
    }
  }

LABEL_91:
  if (v22 == 1)
  {
    (**v12)(v12);
  }

  else if (v21 == 1)
  {
    if (v20 == 1)
    {
      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18[0]);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(v15[0]);
      }
    }

    if (v14 == 1 && SHIBYTE(v13) < 0)
    {
      operator delete(*&v12[16]);
    }
  }
}

void sub_27139DD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  sub_27112D66C(va);
  sub_271159B04(&a9);
  _Unwind_Resume(a1);
}

void sub_27139DDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a30 < 0)
  {
    operator delete(__p);
    sub_271159B04(&a9);
    _Unwind_Resume(a1);
  }

  sub_271159B04(&a9);
  _Unwind_Resume(a1);
}

void sub_27139E114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_27139E158(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_13:
      a1[1] = v2;
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
LABEL_8:
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
          goto LABEL_8;
        }
      }

      if (v3 == v2)
      {
        v4 = *a1;
        goto LABEL_13;
      }
    }
  }

  return a1;
}

void sub_27139E20C(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_271135560();
  }
}

void sub_27139E2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2711DC24C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27139E2F4(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void **__return_ptr, uint64_t *, uint64_t))
{
  v28 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v8 = a1;
    do
    {
      v9 = *(v8 + 23);
      if (v9 < 0)
      {
        v10 = *v8;
        v9 = v8[1];
      }

      else
      {
        v10 = v8;
      }

      a4(v22, v10, v9);
      v11 = *(a3 + 8);
      if (v11 >= *(a3 + 16))
      {
        sub_27139E498(a3, v22);
      }

      else
      {
        *v11 = 0;
        *(v11 + 24) = 0;
        if (v24 == 1)
        {
          v12 = *v22;
          *(v11 + 16) = v23;
          *v11 = v12;
          v22[1] = 0;
          v23 = 0;
          v22[0] = 0;
          *(v11 + 24) = 1;
        }

        *(v11 + 32) = 0;
        *(v11 + 80) = 0;
        if (v27 == 1)
        {
          _X0 = 0;
          _X1 = 0;
          v15 = __p;
          *(v11 + 48) = v26;
          *(v11 + 32) = v15;
          v26 = 0;
          __p = 0uLL;
          __asm { CASPAL          X0, X1, X0, X1, [X9] }

          *(v11 + 64) = _X0;
          *(v11 + 72) = 0;
          *(v11 + 80) = 1;
        }

        v21 = v11 + 96;
      }

      *(a3 + 8) = v21;
      if (v27 == 1 && SHIBYTE(v26) < 0)
      {
        operator delete(__p);
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22[0]);
      }

      v8 += 3;
    }

    while (v8 != a2);
  }

  return a3;
}

double sub_27139E498(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v7 = (32 * ((*(a1 + 8) - *a1) >> 5));
  *(&v19 + 1) = 0;
  *v7 = 0;
  v7[24] = 0;
  if (*(a2 + 24) == 1)
  {
    *v7 = *a2;
    *(96 * v2 + 0x10) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(96 * v2 + 0x18) = 1;
  }

  *(96 * v2 + 0x20) = 0;
  *(96 * v2 + 0x50) = 0;
  if (*(a2 + 80) == 1)
  {
    _X0 = 0;
    _X1 = 0;
    *(96 * v2 + 0x30) = *(a2 + 48);
    *(96 * v2 + 0x20) = *(a2 + 32);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    *(96 * v2 + 0x40) = _X0;
    *(96 * v2 + 0x48) = 0;
    *(96 * v2 + 0x50) = 1;
  }

  *&v19 = 96 * v2 + 96;
  v15 = *(a1 + 8);
  v16 = &v7[*a1 - v15];
  sub_2711DC160(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  result = *&v19;
  *(a1 + 8) = v19;
  if (v17)
  {
    operator delete(v17);
    *&result = 96 * v2 + 96;
  }

  return result;
}

void sub_27139E648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2711DC24C(va);
  _Unwind_Resume(a1);
}

BOOL sub_27139E65C(uint64_t a1, void *a2, void *a3)
{
  if (**a2 != **a3 || *(*a2 + 8) != *(*a3 + 8))
  {
    return 0;
  }

  v3 = a2[1];
  v4 = a3[1];
  v5 = *(v3 + 24);
  v6 = *(v4 + 24);
  if (v5 != v6 || v5 == 0)
  {
    if (v5 != v6)
    {
      return 0;
    }
  }

  else
  {
    v9 = *(v3 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v3 + 8);
    }

    v11 = *(v4 + 23);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = v4[1];
    }

    if (v9 != v11)
    {
      return 0;
    }

    if (v10 >= 0)
    {
      v13 = a2[1];
    }

    else
    {
      v13 = *v3;
    }

    if (v12 < 0)
    {
      v4 = *v4;
    }

    v14 = a2;
    v15 = a3;
    v16 = memcmp(v13, v4, v9);
    a2 = v14;
    a3 = v15;
    if (v16)
    {
      return 0;
    }
  }

  v17 = a2[2];
  v18 = a3[2];
  v19 = *(v17 + 16);
  v20 = *(v18 + 16);
  if (v19 != v20 || v19 == 0)
  {
    if (v19 != v20)
    {
      return 0;
    }
  }

  else if (*v17 != *v18 || *(v17 + 8) != *(v18 + 8))
  {
    return 0;
  }

  v22 = a2[3];
  v23 = a3[3];
  v24 = *(v23 + 24);
  v25 = *(v22 + 24);
  result = v25 == v24;
  if (v25 == v24 && v25 != 0)
  {
    v27 = *(v22 + 23);
    if (v27 >= 0)
    {
      v28 = *(v22 + 23);
    }

    else
    {
      v28 = *(v22 + 8);
    }

    v29 = *(v23 + 23);
    v30 = v29;
    if (v29 < 0)
    {
      v29 = v23[1];
    }

    if (v28 == v29)
    {
      if (v27 >= 0)
      {
        v31 = a2[3];
      }

      else
      {
        v31 = *v22;
      }

      if (v30 >= 0)
      {
        v32 = v23;
      }

      else
      {
        v32 = *v23;
      }

      return memcmp(v31, v32, v28) == 0;
    }

    return 0;
  }

  return result;
}

double sub_27139E814@<D0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = *a1;
  v7 = 0;
  v6 = 0uLL;
  if (v3 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 5) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_271135560();
  }

  sub_27139E900(v4, v3, &v6);
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t sub_27139E900(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = 0;
    sub_27139DEA8(&v6, v4, a1);
  }

  return a3;
}

void sub_27139E9F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27139EA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27139EA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27139EA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27139EA48(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != -1)
  {
    (off_288131650[v2])(&v4, a1);
  }

  *(a1 + 16) = -1;
  return a1;
}

void **sub_27139EAA4(void **result, void *a2)
{
  v2 = *result;
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void **sub_27139EAC4(void **result, void *a2)
{
  v2 = *result;
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_27139EAE4(uint64_t a1, uint64_t *a2)
{
  v5 = 0;
  v9 = v4;
  v10 = "data of type ";
  v11 = v4;
  v12 = "data of type ";
  v13 = "data of type ";
  v6[0] = &v9;
  sub_2711EF0C8(v6);
  v6[0] = a2;
  v6[1] = a2 + 3;
  v9 = v4;
  v10 = "{";
  v11 = v4;
  v12 = "{";
  v13 = "{";
  if (v5 == -1 || (v8 = &v9, (*(&off_288131670 + v5))(&v8, v4), LOBYTE(v9) = 1, v10 = v4, v11 = &v7, sub_2712B32E4(v6, &v9), v9 = v4, v10 = "}", v11 = v4, v12 = "}", v13 = "}", v5 == -1))
  {
    sub_2711308D4();
  }

  v8 = &v9;
  (*(&off_288131670 + v5))(&v8, v4);
  v9 = v4;
  v10 = " is not serializable";
  v11 = v4;
  v12 = " is not serializable";
  v13 = " is not serializable";
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v6[0] = &v9;
  (*(&off_288131688 + v5))(v6, v4);
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v9 = v6;
  result = (off_288131638[v5])(&v9, v4);
  if (v5 != -1)
  {
    return (off_288131620[v5])(&v9, v4);
  }

  return result;
}

void sub_27139ECA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27139ECB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27139ECC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27139ECDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27139ECF0(uint64_t *result, uint64_t a2)
{
  qword_28087B858 = 0;
  qword_28087B850 = 0;
  qword_28087B848 = &qword_28087B850;
  if (a2)
  {
    operator new();
  }
}

void sub_27139EF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_2711B5360(va1);
  sub_27139EF64(va);
  sub_27139F038(qword_28087B850);
  _Unwind_Resume(a1);
}

uint64_t sub_27139EF64(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[5];
      if (v3)
      {
        v4 = v1[6];
        v5 = v1[5];
        if (v4 != v3)
        {
          do
          {
            v6 = *(v4 - 8);
            if (v6)
            {
              if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v6->__on_zero_shared)(v6);
                std::__shared_weak_count::__release_weak(v6);
              }
            }

            v4 -= 16;
          }

          while (v4 != v3);
          v5 = v1[5];
        }

        v1[6] = v3;
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_27139F038(void *a1)
{
  if (a1)
  {
    sub_27139F038(*a1);
    sub_27139F038(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      v3 = a1[6];
      v4 = a1[5];
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 8);
          if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }

          v3 -= 16;
        }

        while (v3 != v2);
        v4 = a1[5];
      }

      a1[6] = v2;
      operator delete(v4);
    }

    operator delete(a1);
  }
}

void sub_27139F114(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 120) == 1)
  {
    v3 = *a2;
    v4 = a2[1];
    *a2 = 0uLL;
    *a1 = v3;
    *(a1 + 16) = v4;
    *(a1 + 120) = 1;
    return;
  }

  if (*(a2 + 1) != &off_288132220)
  {
    sub_271847E00(a2, &v12);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(&v13, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
    }

    else
    {
      v13 = v12;
    }

    v14 = 1;
    LOBYTE(v15) = 0;
    v19 = 0;
    v20 = 1;
    sub_27139F524(3, &v13, &v30);
    *a1 = v30;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    if (v40 == 1)
    {
      *(a1 + 40) = 0;
      v8 = v33;
      if (v33 == 1)
      {
        *(a1 + 16) = v31;
        *(a1 + 32) = v32;
        v32 = 0;
        v31 = 0uLL;
        *(a1 + 40) = 1;
        *(a1 + 48) = 0;
        v9 = a1 + 48;
        *(a1 + 104) = 0;
        if ((v39 & 1) == 0)
        {
LABEL_18:
          *(a1 + 112) = 1;
          *(a1 + 120) = 0;
          if (!v8)
          {
            goto LABEL_26;
          }

LABEL_24:
          if (SHIBYTE(v32) < 0)
          {
            operator delete(v31);
          }

          goto LABEL_26;
        }
      }

      else
      {
        *(a1 + 48) = 0;
        v9 = a1 + 48;
        *(a1 + 104) = 0;
        if ((v39 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v10 = v36;
      *(v9 + 16) = v35;
      *v9 = v34;
      v34 = 0uLL;
      *(a1 + 72) = v10;
      *(a1 + 80) = v37;
      *(a1 + 96) = v38;
      v35 = 0;
      v37 = 0uLL;
      v38 = 0;
      *(a1 + 104) = 1;
      *(a1 + 112) = 1;
      *(a1 + 120) = 0;
      if (v8)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *(a1 + 120) = 0;
    }

LABEL_26:
    if (v20 == 1)
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

      if (v14 == 1 && SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    return;
  }

  v5 = *a2;
  LOBYTE(v21[0]) = 0;
  v29 = 0;
  if (*(a2 + 112) == 1)
  {
    sub_27112F6CC(v21, a2 + 1);
    v29 = 1;
  }

  sub_27139F524(v5, v21, &v30);
  *a1 = v30;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (v40 != 1)
  {
    *(a1 + 120) = 0;
    goto LABEL_41;
  }

  *(a1 + 40) = 0;
  v6 = v33;
  if (v33 != 1)
  {
    *(a1 + 48) = 0;
    v7 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v39 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_38:
    v11 = v36;
    *(v7 + 16) = v35;
    *v7 = v34;
    v34 = 0uLL;
    *(a1 + 72) = v11;
    *(a1 + 80) = v37;
    *(a1 + 96) = v38;
    v35 = 0;
    v37 = 0uLL;
    v38 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v6)
    {
      goto LABEL_41;
    }

LABEL_39:
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    goto LABEL_41;
  }

  *(a1 + 16) = v31;
  *(a1 + 32) = v32;
  v32 = 0;
  v31 = 0uLL;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  v7 = a1 + 48;
  *(a1 + 104) = 0;
  if (v39)
  {
    goto LABEL_38;
  }

LABEL_12:
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  if (v6)
  {
    goto LABEL_39;
  }

LABEL_41:
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
      operator delete(v21[0]);
    }
  }
}

void sub_27139F4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_27139F4E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27139F524(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  LOBYTE(v8[0]) = 0;
  v16 = 0;
  if (*(a2 + 96) == 1)
  {
    sub_27112F6CC(v8, a2);
    v16 = 1;
  }

  sub_27139F710(&v17, v3, v8);
  *a3 = v17;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v27 == 1)
  {
    *(a3 + 40) = 0;
    v5 = v20;
    if (v20 == 1)
    {
      *(a3 + 16) = __p;
      *(a3 + 32) = v19;
      v19 = 0;
      __p = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
LABEL_6:
        *(a3 + 112) = 1;
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
        goto LABEL_6;
      }
    }

    v7 = v23;
    *(v6 + 16) = v22;
    *v6 = v21;
    v21 = 0uLL;
    *(a3 + 72) = v7;
    *(a3 + 80) = v24;
    *(a3 + 96) = v25;
    v22 = 0;
    v24 = 0uLL;
    v25 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_12:
  if (v16 != 1)
  {
    return;
  }

  if (v15 != 1)
  {
    goto LABEL_16;
  }

  if (v14 < 0)
  {
    operator delete(v13);
    if (v12 < 0)
    {
      goto LABEL_21;
    }

LABEL_16:
    if (v10 != 1)
    {
      return;
    }

    goto LABEL_17;
  }

  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  operator delete(v11);
  if (v10 != 1)
  {
    return;
  }

LABEL_17:
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }
}

uint64_t sub_27139F710(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = result;
  v4 = a2;
  LOBYTE(v6[0]) = 0;
  v15 = 0;
  if (*(a3 + 96) != 1)
  {
    *result = a2;
    *(result + 8) = &off_288132220;
    *(result + 16) = 0;
    *(result + 112) = 0;
    return result;
  }

  sub_27112F6CC(v6, a3);
  v15 = 1;
  *v3 = v4;
  *(v3 + 8) = &off_288132220;
  *(v3 + 16) = 0;
  *(v3 + 112) = 0;
  *(v3 + 40) = 0;
  if (v8 == 1)
  {
    *(v3 + 16) = *v6;
    *(v3 + 32) = v7;
    v6[1] = 0;
    v7 = 0;
    v6[0] = 0;
    *(v3 + 40) = 1;
  }

  *(v3 + 48) = 0;
  *(v3 + 104) = 0;
  if (v14)
  {
    v5 = v11;
    *(v3 + 64) = v10;
    *(v3 + 48) = *v9;
    v9[0] = 0;
    v9[1] = 0;
    *(v3 + 72) = v5;
    *(v3 + 80) = *__p;
    *(v3 + 96) = v13;
    __p[1] = 0;
    v13 = 0;
    v10 = 0;
    __p[0] = 0;
    *(v3 + 104) = 1;
    *(v3 + 112) = 1;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v10) & 0x80000000) == 0)
      {
LABEL_7:
        if (v8 != 1)
        {
          return v3;
        }

        goto LABEL_14;
      }
    }

    else if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    operator delete(v9[0]);
    if (v8 != 1)
    {
      return v3;
    }
  }

  else
  {
    *(v3 + 112) = 1;
    if (v8 != 1)
    {
      return v3;
    }
  }

LABEL_14:
  if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    return v3;
  }

  operator delete(v6[0]);
  return v3;
}

void sub_27139F8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_27139F8D0(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_27139A710(v16, **(a1 + 16), *(*(a1 + 16) + 8));
  sub_2711218C8(&v7);
  v6[1] = 1;
  v6[2] = &v8;
  v6[0] = &unk_288134F58;
  LODWORD(v15) = 2;
  std::ostream::write();
  sub_27139FE54(v6, v16);
  if ((v14 & 0x10) != 0)
  {
    v2 = v13;
    if (v13 < v12)
    {
      v13 = v12;
      v2 = v12;
    }

    v3 = v11;
    v1 = v2 - v11;
    if (v2 - v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ((v14 & 8) == 0)
    {
      v1 = 0;
      v5 = 0;
      goto LABEL_12;
    }

    v3 = v9;
    v1 = v10 - v9;
    if ((v10 - v9) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_14:
      sub_271120DA8();
    }
  }

  if (v1 >= 0x17)
  {
    operator new();
  }

  v5 = v1;
  if (v1)
  {
    memmove(&__dst, v3, v1);
  }

LABEL_12:
  *(&__dst.__vftable + v1) = 0;
  sub_27139FFEC(&v15, &__dst);
}

void sub_27139FCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27139FD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_271123F00(va);
  sub_27139FD58(v19 - 160);
  _Unwind_Resume(a1);
}

uint64_t sub_27139FD58(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 64);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 64);
    }

    *(a1 + 72) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 56);
  if (v6 != -1)
  {
    (off_288131650[v6])(&v8, a1 + 40);
  }

  *(a1 + 56) = -1;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_27139FE54(uint64_t a1, uint64_t a2)
{
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  if (*(a2 + 56) > 1u)
  {
    sub_2711308D4();
  }

  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
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

  v8 = v4;
  v9 = (*(*v4 + 16))(v4);
  std::ostream::write();
  return (*(*v8 + 32))(v8, a1, v9);
}

void sub_2713A01AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713A01F8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881316F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2713A024C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void *sub_2713A0264(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_2713A0264;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_2713A0264;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_288131730;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000027188EB71)
      {
        if (((v5 & 0x800000027188EB71 & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000027188EB71))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000027188EB71 & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188EBC4)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_2713A0430(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  sub_27139A608(v3, *v1);
  sub_2717252D8(v2, *(*(v1 + 8) + 16), *(*(v1 + 8) + 24));
}

void sub_2713A0738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713A0788(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a3 >= 2)
  {
    std::istream::read();
    v26 = 0;
    std::istream::read();
    v5 = *(a2 + 31);
    if ((v5 & 0x8000000000000000) != 0)
    {
      v5 = *(a2 + 16);
      if (v5 >= v26)
      {
        v6 = *(a2 + 8);
        *(a2 + 16) = v26;
        goto LABEL_13;
      }
    }

    else if (v26 <= v5)
    {
      *(a2 + 31) = v26;
      v6 = (a2 + 8);
LABEL_13:
      *v6 = 0;
      goto LABEL_14;
    }

    std::string::append((a2 + 8), v26 - v5, 0);
LABEL_14:
    std::istream::read();
    std::istream::read();
    sub_27139ABFC(a2);
    if (*(a2 + 56))
    {
      sub_2711308D4();
    }

    v9 = *(a2 + 40);
    v26 = &unk_28810A568;
    v27.__r_.__value_.__r.__words[0] = v9;
    std::istream::read();
    (*(*v27.__r_.__value_.__l.__data_ + 40))(v27.__r_.__value_.__r.__words[0], a1, 2);
    return;
  }

  sub_27139A124(&v26, (a2 + 64));
  std::istream::read();
  v19 = 0;
  std::istream::read();
  size = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v27.__r_.__value_.__l.__size_;
    if (v27.__r_.__value_.__l.__size_ >= v19)
    {
      v8 = v27.__r_.__value_.__r.__words[0];
      v27.__r_.__value_.__l.__size_ = v19;
      goto LABEL_17;
    }
  }

  else if (v19 <= SHIBYTE(v27.__r_.__value_.__r.__words[2]))
  {
    *(&v27.__r_.__value_.__s + 23) = v19;
    v8 = &v27;
LABEL_17:
    v19[v8] = 0;
    goto LABEL_18;
  }

  std::string::append(&v27, &v19[-size], 0);
LABEL_18:
  std::istream::read();
  std::istream::read();
  sub_27139A288(&v26);
  if (v29)
  {
    sub_2711308D4();
  }

  v19 = &unk_28810A5B0;
  v20 = v28;
  v18 = 1;
  std::istream::read();
  (*(*v20 + 40))(v20, a1, 1);
  sub_2713A0DC8(&v19, &v26);
  sub_2713A0F0C(a2, &v19);
  v10 = __p;
  if (__p)
  {
    v11 = v25;
    v12 = __p;
    if (v25 != __p)
    {
      do
      {
        v13 = *(v11 - 1);
        if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        v11 -= 16;
      }

      while (v11 != v10);
      v12 = __p;
    }

    v25 = v10;
    operator delete(v12);
  }

  if (v23 != -1)
  {
    (off_288131650[v23])(&v18, &v22);
  }

  v23 = -1;
  if (v21 < 0)
  {
    operator delete(v20);
  }

  v14 = v30;
  if (v30)
  {
    v15 = v31;
    v16 = v30;
    if (v31 != v30)
    {
      do
      {
        v17 = *(v15 - 1);
        if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
        }

        v15 -= 16;
      }

      while (v15 != v14);
      v16 = v30;
    }

    v31 = v14;
    operator delete(v16);
  }

  if (v29 != -1)
  {
    (off_288131650[v29])(&v19, &v28);
  }

  v29 = -1;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_2713A0C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713A0C88(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  __n.__r_.__value_.__r.__words[0] = 0;
  std::istream::read();
  *(&v6.__r_.__value_.__s + 23) = 0;
  v6.__r_.__value_.__s.__data_[0] = 0;
  std::istream::read();
  std::istream::read();
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__n, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __n = v6;
  }

  v3 = v7;
  v5 = v7;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
    v3 = v5;
  }

  *a2 = __n;
  *(a2 + 24) = v3;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_2713A0DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2713A0DC8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    sub_271127178(__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *__p = *(a2 + 8);
    v9 = *(a2 + 24);
  }

  v10 = *(a2 + 32);
  v6[0] = 0;
  v7 = -1;
  v4 = *(a2 + 56);
  if (v4 != -1)
  {
    v11 = v6;
    (off_288131660[v4])(&v11, a2 + 40);
    v7 = v4;
  }

  sub_27139A974(a1, __p, v6, (a2 + 64));
  if (v7 != -1)
  {
    (off_288131650[v7])(&v11, v6);
  }

  v7 = -1;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_2713A0ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27139EA48(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2713A0F0C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a1 + 56);
  v6 = *(a2 + 56);
  if (v5 == -1)
  {
    if (v6 == -1)
    {
      goto LABEL_8;
    }
  }

  else if (v6 == -1)
  {
    (off_288131650[v5])(&v14, a1 + 40);
    *(a1 + 56) = -1;
    goto LABEL_8;
  }

  v13 = a1 + 40;
  (off_288131780[v6])(&v13);
LABEL_8:
  v7 = (a1 + 64);
  v8 = *(a1 + 64);
  if (v8)
  {
    v9 = *(a1 + 72);
    v10 = *(a1 + 64);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 8);
        if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }

        v9 -= 16;
      }

      while (v9 != v8);
      v10 = *v7;
    }

    *(a1 + 72) = v8;
    operator delete(v10);
    *v7 = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  return a1;
}

void sub_2713A1090(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4)
  {
    v7 = a3;
    (off_288131650[v4])(&v8, v3);
    a3 = v7;
LABEL_7:
    *v3 = *a3;
    *a3 = 0uLL;
    *(v3 + 16) = 0;
    return;
  }

  v5 = *a3;
  *a3 = 0uLL;
  v6 = *(a2 + 8);
  *a2 = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_2713A117C(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v7 = a3;
    (off_288131650[v4])(&v8, v3);
    a3 = v7;
LABEL_7:
    *v3 = *a3;
    *a3 = 0uLL;
    *(v3 + 16) = 1;
    return;
  }

  v5 = *a3;
  *a3 = 0uLL;
  v6 = *(a2 + 8);
  *a2 = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

uint64_t sub_2713A1270(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 64);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 64);
    }

    *(a1 + 72) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 56);
  if (v6 != -1)
  {
    (off_288131650[v6])(&v8, a1 + 40);
  }

  *(a1 + 56) = -1;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_2713A136C(uint64_t result)
{
  if (*(result + 128) == 1)
  {
    if (*(result + 120) == 1)
    {
      v1 = *(result + 16);
      if (v1)
      {
        if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = result;
          (v1->__on_zero_shared)(v1);
          std::__shared_weak_count::__release_weak(v1);
          return v5;
        }
      }
    }

    else if (*(result + 112) == 1)
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
        v4 = result;
        operator delete(*(result + 16));
        return v4;
      }
    }
  }

  return result;
}

void sub_2713A1498(uint64_t a1)
{
  v16[18] = *MEMORY[0x277D85DE8];
  sub_2713973EC(v16, **(a1 + 16), *(*(a1 + 16) + 8));
  sub_2711218C8(&v7);
  v6[1] = 1;
  v6[2] = &v8;
  v6[0] = &unk_288134F58;
  LODWORD(v15) = 2;
  std::ostream::write();
  sub_2713A1978(v6, v16, v15);
  if ((v14 & 0x10) != 0)
  {
    v2 = v13;
    if (v13 < v12)
    {
      v13 = v12;
      v2 = v12;
    }

    v3 = v11;
    v1 = v2 - v11;
    if (v2 - v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ((v14 & 8) == 0)
    {
      v1 = 0;
      v5 = 0;
      goto LABEL_12;
    }

    v3 = v9;
    v1 = v10 - v9;
    if ((v10 - v9) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_14:
      sub_271120DA8();
    }
  }

  if (v1 >= 0x17)
  {
    operator new();
  }

  v5 = v1;
  if (v1)
  {
    memmove(&__dst, v3, v1);
  }

LABEL_12:
  *(&__dst.__vftable + v1) = 0;
  sub_27139FFEC(&v15, &__dst);
}

void sub_2713A17C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271123F00(&a23);
    sub_2713A1844(v23 - 216);
    _Unwind_Resume(a1);
  }

  sub_271123F00(&a23);
  sub_2713A1844(v23 - 216);
  _Unwind_Resume(a1);
}

uint64_t sub_2713A1844(uint64_t a1)
{
  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = *(a1 + 96);
    v4 = *(a1 + 88);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 88);
    }

    *(a1 + 96) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 80);
  if (v6 != -1)
  {
    (off_288131650[v6])(&v8, a1 + 64);
  }

  *(a1 + 80) = -1;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_19:
    operator delete(*a1);
    return a1;
  }

  if (*(a1 + 23) < 0)
  {
    goto LABEL_19;
  }

  return a1;
}

uint64_t sub_2713A1978(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  result = sub_27139FE54(a1, (a2 + 3));
  if (a3 >= 2)
  {
    if (*(a2 + 136) == 1)
    {
      std::ostream::write();
      std::ostream::write();
    }

    return std::ostream::write();
  }

  return result;
}

void sub_2713A1AB4(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  v2 = *v1;
  memset(&v3[3], 0, 24);
  sub_27139A608(v4, v2);
  v4[88] = 0;
  v4[112] = 0;
  sub_2717252D8(v3, *(*(v1 + 8) + 16), *(*(v1 + 8) + 24));
}

void sub_2713A1D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_2717254C8(&a17);
  sub_2713A1844(&__p);
  _Unwind_Resume(a1);
}

void sub_2713A1DBC(uint64_t a1, uint64_t **a2, unsigned int a3)
{
  std::istream::read();
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    v6 = *a2;
    a2[1] = 0;
  }

  else
  {
    *(a2 + 23) = 0;
    v6 = a2;
  }

  *v6 = 0;
  std::istream::read();
  std::istream::read();
  sub_2713A0788(a1, (a2 + 3), 2u);
  if (a3 >= 2)
  {
    std::istream::read();
    if (*(a2 + 136))
    {
      if (*(a2 + 135) < 0)
      {
        operator delete(a2[14]);
      }

      *(a2 + 136) = 0;
    }
  }
}

uint64_t sub_2713A1F88(uint64_t result)
{
  if (*(result + 128) == 1)
  {
    if (*(result + 120) == 1)
    {
      v1 = *(result + 32);
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
  }

  return result;
}

void sub_2713A2104(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  sub_271397988(&v18, **(a1 + 16), *(*(a1 + 16) + 8));
  sub_2711218C8(&v9);
  v8[0] = &unk_288134F58;
  v8[1] = 1;
  v8[2] = &v10;
  LODWORD(v17) = 1;
  std::ostream::write();
  *&v17 = 0x8E38E38E38E38E39 * ((v20 - v19) >> 4);
  std::ostream::write();
  v1 = v19;
  for (i = v20; v1 != i; v1 += 18)
  {
    LODWORD(__dst.__vftable) = 2;
    std::ostream::write();
    sub_2713A1978(v8, v1, 2u);
  }

  if ((v16 & 0x10) != 0)
  {
    v4 = v15;
    if (v15 < v14)
    {
      v15 = v14;
      v4 = v14;
    }

    v5 = v13;
    v3 = v4 - v13;
    if (v4 - v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v16 & 8) == 0)
    {
      v3 = 0;
      v7 = 0;
      goto LABEL_14;
    }

    v5 = v11;
    v3 = v12 - v11;
    if ((v12 - v11) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_271120DA8();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v7 = v3;
  if (v3)
  {
    memmove(&__dst, v5, v3);
  }

LABEL_14:
  *(&__dst.__vftable + v3) = 0;
  sub_27139FFEC(&v17, &__dst);
}

void sub_2713A2544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271123F00(&a23);
    sub_2713A25C4((v23 - 128));
    _Unwind_Resume(a1);
  }

  sub_271123F00(&a23);
  sub_2713A25C4((v23 - 128));
  _Unwind_Resume(a1);
}

void *sub_2713A25C4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_2713A1844(v3 - 144);
      }

      while (v3 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    v6 = a1[2];
    v7 = a1[1];
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 8);
        if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }

        v6 -= 16;
      }

      while (v6 != v5);
      v7 = a1[1];
    }

    a1[2] = v5;
    operator delete(v7);
  }

  return a1;
}

void sub_2713A26C8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  v2 = *v1;
  memset(v6, 0, 24);
  v3 = *v2;
  v4 = v2[1];
  v6[6] = v6;
  LOBYTE(v7) = 0;
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  memset(&v6[3], 0, 24);
  sub_2717252D8(v5, *(*(v1 + 8) + 16), *(*(v1 + 8) + 24));
}

void sub_2713A2D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_2713A1844(&__p);
  sub_2717254C8(&a12);
  sub_2713A25C4(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_2713A2E48(uint64_t a1, __int128 *a2)
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

  sub_2713A2F3C(a1 + 24, a2 + 24);
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    if (*(a2 + 135) < 0)
    {
      sub_271127178((a1 + 112), *(a2 + 14), *(a2 + 15));
    }

    else
    {
      v5 = a2[7];
      *(a1 + 128) = *(a2 + 16);
      *(a1 + 112) = v5;
    }

    *(a1 + 136) = 1;
  }

  return a1;
}

void sub_2713A2EF4(_Unwind_Exception *a1)
{
  if (*(v1 + 136) == 1 && *(v1 + 135) < 0)
  {
    operator delete(*v2);
  }

  sub_27139FD58(v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2713A2F3C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    sub_271127178((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  v5 = *(a2 + 32);
  *(a1 + 40) = 0;
  *(a1 + 32) = v5;
  *(a1 + 56) = -1;
  v6 = *(a2 + 56);
  if (v6 != -1)
  {
    v10 = a1 + 40;
    (off_288131660[v6])(&v10, a2 + 40);
    *(a1 + 56) = v6;
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  v10 = a1 + 64;
  v11 = 0;
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  return a1;
}

void sub_2713A3074(_Unwind_Exception *a1)
{
  sub_27139EA48(v2);
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2713A30B0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    sub_2713A1844(i - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2713A3104(uint64_t result)
{
  if (*(result + 128) == 1)
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
  }

  return result;
}

uint64_t sub_2713A31E0(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      v3 = *(a1 + 152);
      v4 = *(a1 + 144);
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 1);
          v3 -= 3;
          if (v5 < 0)
          {
            operator delete(*v3);
          }
        }

        while (v3 != v2);
        v4 = *(a1 + 144);
      }

      *(a1 + 152) = v2;
      operator delete(v4);
    }
  }

  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
    if (*(a1 + 104) != 1)
    {
      goto LABEL_16;
    }
  }

  else if (*(a1 + 104) != 1)
  {
    goto LABEL_16;
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

LABEL_16:
  if (*(a1 + 48) != 1 || (*(a1 + 47) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 24));
  return a1;
}

uint64_t sub_2713A32D8(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 != -1)
  {
    (off_2881318A0[v2])(&v4, a1 + 32);
  }

  *(a1 + 96) = -1;
  return a1;
}

uint64_t sub_2713A3334@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(result + 16);
  *a2 = *(result + 8);
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = (a2 + 16);
  *(a2 + 40) = 0;
  if (*(result + 48) == 1)
  {
    if (*(result + 47) < 0)
    {
      result = sub_271127178(v5, *(result + 24), *(result + 32));
    }

    else
    {
      *v5 = *(result + 24);
      *(a2 + 32) = *(result + 40);
    }

    *(a2 + 40) = 1;
  }

  if (*(v2 + 72) == 1)
  {
    v6 = *(v2 + 64);
    *(a2 + 48) = *(v2 + 56);
    *(a2 + 56) = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *(a2 + 48) = 0;
  }

  *(a2 + 72) = 0;
  *(a2 + 64) = v7;
  *(a2 + 96) = 0;
  if (*(v2 + 104) == 1)
  {
    if (*(v2 + 103) < 0)
    {
      result = sub_271127178((a2 + 72), *(v2 + 80), *(v2 + 88));
    }

    else
    {
      *(a2 + 72) = *(v2 + 80);
      *(a2 + 88) = *(v2 + 96);
    }

    *(a2 + 96) = 1;
  }

  if (*(v2 + 136))
  {
    if (*(v2 + 135) < 0)
    {
      result = sub_271127178(v13, *(v2 + 112), *(v2 + 120));
    }

    else
    {
      *v13 = *(v2 + 112);
      *&v13[16] = *(v2 + 128);
    }

    *&v14[7] = *&v13[15];
    *v14 = *&v13[8];
    v11 = v13[23];
    v12 = *&v13[8];
    *(a2 + 112) = *v13;
    *(a2 + 120) = v12;
    *(a2 + 127) = *&v14[7];
    *(a2 + 135) = v11;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 1;
    if (*(v2 + 168) != 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(a2 + 112) = 0;
    *(a2 + 160) = 0;
    if (*(v2 + 168) != 1)
    {
LABEL_21:
      v10 = 0;
      *(a2 + 176) = 0;
      goto LABEL_22;
    }
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 152) - *(v2 + 144)) >> 3);
  memset(v13, 0, sizeof(v13));
  sub_27139E20C(v13, v8);
  result = sub_27139E2F4(*(v2 + 144), *(v2 + 152), v13, sub_2714FB29C);
  v9 = *&v13[16];
  *(a2 + 176) = *v13;
  *(a2 + 192) = v9;
  v10 = 1;
LABEL_22:
  *(a2 + 200) = v10;
  return result;
}

void sub_2713A3550(_Unwind_Exception *exception_object)
{
  if (v1[96] == 1 && v1[95] < 0)
  {
    operator delete(*v3);
  }

  if (v1[40] == 1 && v1[39] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2713A35D0(void *a1, uint64_t a2)
{
  *a1 = &unk_28810BD40;
  a1[1] = &unk_28810BDB8;
  sub_2713B2524((a1 + 2), (a2 + 80));
  v11[0] = &unk_28810E7B8;
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(a2 + 56);
    v7 = *(a2 + 64);
    v8 = *(a2 + 68);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v6 = *(a2 + 56);
    v7 = *(a2 + 64);
    v8 = *(a2 + 68);
  }

  v11[1] = v4;
  v12 = v5;
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = v6;
  v16 = v7;
  v17 = v8;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  sub_2715F4CDC((a1 + 24), v11, 0);
  v9 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_2713A3778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271229D10(va);
  sub_2713A31E0(v3 + 16);
  _Unwind_Resume(a1);
}

void sub_2713A3794(uint64_t a1, int a2)
{
  *a1 = &unk_28810BD40;
  *(a1 + 8) = &unk_28810BDB8;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  v2 = &unk_28810F9B8;
  sub_2713BE9C4();
}

void sub_2713A38AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2712B8A00(&a9);
  sub_2713A31E0(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_2713A38DC(uint64_t a1)
{
  *a1 = &unk_28810BD40;
  *(a1 + 8) = &unk_28810BDB8;
  v2 = *(a1 + 288);
  if (v2 != -1)
  {
    (off_2881318A0[v2])(&v8, a1 + 224);
  }

  *(a1 + 288) = -1;
  if (*(a1 + 184) == 1)
  {
    v3 = *(a1 + 160);
    if (v3)
    {
      v4 = *(a1 + 168);
      v5 = *(a1 + 160);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = *(a1 + 160);
      }

      *(a1 + 168) = v3;
      operator delete(v5);
    }
  }

  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if (*(a1 + 120) != 1)
    {
      goto LABEL_18;
    }
  }

  else if (*(a1 + 120) != 1)
  {
    goto LABEL_18;
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

LABEL_18:
  if (*(a1 + 64) != 1 || (*(a1 + 63) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 40));
  return a1;
}

void sub_2713A3A58(uint64_t a1)
{
  sub_2713A38DC(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2713A3A90(uint64_t a1)
{
  sub_2713A38DC(a1 - 8);

  JUMPOUT(0x2743BF050);
}

void sub_2713A3ADC(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v5)
  {
    v6 = v5;
    if (**(v5 + 5) <= 1u)
    {
      v7 = v5[88];
      *(v5 + 9) = "info";
      *(v5 + 10) = 4;
      if ((v7 & 1) == 0)
      {
        v5[88] = 1;
      }
    }

    sub_27182791C((v5 + 48), v5 + 5);
    v8 = sub_2718289B0(v6);
    *(v6 + 40) = v8;
    if (*(v6 + 88))
    {
      *(v6 + 88) = 0;
    }

    if (*v8 < 2u && ((*(v6 + 72) = "version", *(v6 + 80) = 7, *(v6 + 88) = 1, v9 = *(v6 + 72), v10 = *v9, v11 = *(v9 + 3), v10 == *"version") ? (v12 = v11 == *"sion") : (v12 = 0), v12))
    {
      *(v6 + 96) = 6;
      *(v6 + 100) = 1;
      *(v6 + 88) = 0;
    }

    else
    {
      LOBYTE(__src) = 6;
      v48 = 6;
      v13 = sub_2718289B0(v6);
      v14 = *v13;
      *v13 = 6;
      LOBYTE(__src) = v14;
      v15 = v13[1];
      v13[1] = v48;
      v48 = v15;
      sub_2715CC40C(&v48, v14);
    }

    sub_2713B29CC(v6, a2 + 16, 6);
  }

  v16 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v16)
  {
    v17 = v16;
    v18 = v16[3];
    if (*(v18 + 40) == 1)
    {
      __src = (v18 + 16);
      sub_2718460EC(&__src, 6u);
    }

    else
    {
      sub_27184636C(&__src, (v18 + 8), 6u);
    }

    sub_271840ADC(v17[3]);
    sub_2713B5730(v17, a2 + 16, 6);
    v30 = v17[3];
    v31 = *(*(v30 + 88) - 8);
    sub_2718404E0((v30 + 48), *(v30 + 16) - v31 - 9);
    v32 = *(v30 + 48);
    if (v32)
    {
      memmove((*(v30 + 24) + v31), *(v30 + 56), v32);
    }

    *(v30 + 48) = 0;
    v33 = *(v30 + 80);
    v34 = *(v30 + 88) - 8;
    *(v30 + 88) = v34;
    if (v33 == v34)
    {
      std::ostream::write();
      if (*(v30 + 40) == 1)
      {
        free(*(v30 + 24));
        *(v30 + 40) = 0;
      }
    }

    sub_2713B61C4(v17, a2 + 192);
  }

  else
  {
    v19 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v19)
    {
      v20 = v19;
      if (**(v19 + 5) <= 1u)
      {
        v21 = v19[88];
        *(v19 + 9) = "info";
        *(v19 + 10) = 4;
        if ((v21 & 1) == 0)
        {
          v19[88] = 1;
        }
      }

      sub_2715DF0F0((v19 + 48), v19 + 5);
      v22 = sub_27182815C(v20);
      *(v20 + 40) = v22;
      if (*(v20 + 88))
      {
        *(v20 + 88) = 0;
      }

      if (*v22 < 2u && ((*(v20 + 72) = "version", *(v20 + 80) = 7, *(v20 + 88) = 1, v23 = *(v20 + 72), v24 = *v23, v25 = *(v23 + 3), v24 == *"version") ? (v26 = v25 == *"sion") : (v26 = 0), v26))
      {
        *(v20 + 96) = 6;
        *(v20 + 100) = 1;
        *(v20 + 88) = 0;
      }

      else
      {
        LOBYTE(__src) = 6;
        v48 = 6;
        v27 = sub_27182815C(v20);
        v28 = *v27;
        *v27 = 6;
        LOBYTE(__src) = v28;
        v29 = v27[1];
        v27[1] = v48;
        v48 = v29;
        sub_2715CA870(&v48, v28);
      }

      sub_2713B6988(v20, a2 + 16, 6);
    }

    v35 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v35)
    {
      v36 = v35;
      if (v35[5])
      {
        v37 = v35[3];
        LOBYTE(__src) = *(v36 + 32);
        sub_271120E64(v37, &__src, 1);
      }

      MEMORY[0x2743BE7F0](*(v36 + 24), 6);
      ++*(v36 + 40);
      sub_2713B8244(v36, a2 + 16, 6);
      v38 = *(v36 + 34);
      if (*(v36 + 40))
      {
        v39 = *(v36 + 24);
        LOBYTE(__src) = *(v36 + 32);
        sub_271120E64(v39, &__src, 1);
      }

      v40 = *(v36 + 24);
      LOBYTE(__src) = v38;
      sub_271120E64(v40, &__src, 1);
      ++*(v36 + 40);
      sub_2713B891C(v36, a2 + 192);
    }

    else
    {
      v41 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v41)
      {
        LODWORD(__src) = 6;
        v42 = v41;
        sub_27173318C(v41 + 3, *(v41 + 4), &__src, &__src + 4, 4);
        v43 = __src;
        sub_2717312C0(v42);
        sub_2713B93E0(v42, a2 + 16, v43);
        v44 = *(v42[7] - 8) + v42[3];
        *(v44 + 10) = v42[4] - v44 - 18;
        v42[7] -= 8;
        sub_2713B8FF0(v42, a2 + 192);
      }

      else
      {
        v45 = a1[2];
        LODWORD(__src) = 6;
        (*(v4 + 104))(a1, &__src);
        v46 = __src;
        if (v45 < 1)
        {
          sub_2713B9F84(a1, a2 + 16, __src);
        }

        else
        {
          if (v45 == 2)
          {
            LODWORD(__src) = 3;
            (*(*a1 + 104))(a1, &__src);
          }

          (*(*a1 + 16))(a1);
          sub_2713B9F84(a1, a2 + 16, v46);
          (*(*a1 + 24))(a1);
        }

        sub_2713B9D14(a1, a2 + 192);
      }
    }
  }
}

void sub_2713A420C(void *a1, uint64_t a2)
{
  v4 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v4)
  {
    v5 = v4[104];
    *(v4 + 11) = "info";
    *(v4 + 12) = 4;
    if ((v5 & 1) == 0)
    {
      v4[104] = 1;
    }

    sub_2713BB450(v4, a2 + 16);
  }

  v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v6)
  {
    LODWORD(__p[0]) = 6;
    v7 = v6;
    sub_27183FB7C(v6[6], __p);
    sub_2713BF6F4(__p, v7, a2 + 16, LODWORD(__p[0]));
    LODWORD(__p[0]) = 2;
    sub_27183FB7C(v7[6], __p);
    sub_2713C0350(v7, (a2 + 192), __p[0]);
  }

  v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
  if (v8)
  {
    v9 = v8[104];
    *(v8 + 11) = "info";
    *(v8 + 12) = 4;
    if ((v9 & 1) == 0)
    {
      v8[104] = 1;
    }

    sub_2713C0E9C(v8, a2 + 16);
  }

  v10 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
  if (!v10)
  {
    v14 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
    if (v14)
    {
      v15 = v14;
      sub_2713C49D0(__p, v14, a2 + 16);
      sub_2713C5500(v15, (a2 + 192));
    }

    sub_2713C8FB8(a2, a1);
  }

  v11 = v10;
  LODWORD(__p[0]) = 6;
  sub_27183A9AC(v10, __p);
  if (LODWORD(__p[0]) >= 6)
  {
    v12 = 6;
  }

  else
  {
    v12 = LODWORD(__p[0]);
  }

  if (LODWORD(__p[0]) <= 2)
  {
    sub_2713C30AC(__p, v11, a2 + 16, v12);
LABEL_33:
    LODWORD(__p[0]) = 2;
    sub_27183A9AC(v11, __p);
    v16 = (a2 + 192);
    if (LODWORD(__p[0]) > 1)
    {
      sub_2713C43FC(v11, v16);
    }

    sub_2713C3F40(v11, v16);
  }

  sub_2713C32B8(v11, a2 + 16, v12);
  while (1)
  {
    if ((*(v11 + 131) & 1) != 0 || (*(*(v11 + 16) + *(**(v11 + 16) - 24) + 32) & 2) != 0)
    {
      goto LABEL_33;
    }

    sub_27183D78C(v11, __p);
    if (v18 < 0)
    {
      if (__p[1] == 1 && *(v11 + 72) == *__p[0])
      {
LABEL_26:
        v13 = 0;
        if (v18 < 0)
        {
          goto LABEL_29;
        }

        goto LABEL_17;
      }
    }

    else if (v18 == 1 && *(v11 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_26;
    }

    v13 = 1;
    if (v18 < 0)
    {
LABEL_29:
      operator delete(__p[0]);
    }

LABEL_17:
    if ((v13 & 1) == 0)
    {
      goto LABEL_33;
    }
  }
}

void sub_2713A46C4(uint64_t a1, __n128 a2)
{
  v5 = *MEMORY[0x277D85DE8];
  sub_2715F51B0(a1 + 192, v3, a2);
  sub_2713A3334(a1 + 16, v4);
  sub_2713C8E9C();
}

void sub_2713A4884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271134CBC(v3 + 16);
  sub_2712B8A00(va);
  _Unwind_Resume(a1);
}

void sub_2713A48A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2712B8A00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2713A48C0(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D580, 8);
  if (result)
  {
    v4 = result;
    v6[0] = a1 + 24;
    v6[1] = a1 + 40;
    v6[2] = a1 + 72;
    v6[3] = a1 + 96;
    v6[4] = a1 + 128;
    v6[5] = a1 + 160;
    v5[0] = result + 24;
    v5[1] = result + 40;
    v5[2] = result + 72;
    v5[3] = result + 96;
    v5[4] = result + 128;
    v5[5] = result + 160;
    result = sub_271399AF0(v6, v5);
    if (result)
    {
      return sub_2715F56DC((a1 + 192), (v4 + 192));
    }
  }

  return result;
}

uint64_t sub_2713A499C(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D580, 8);
  if (result)
  {
    v4 = result;
    v6[0] = a1 + 16;
    v6[1] = a1 + 32;
    v6[2] = a1 + 64;
    v6[3] = a1 + 88;
    v6[4] = a1 + 120;
    v6[5] = a1 + 152;
    v5[0] = result + 24;
    v5[1] = result + 40;
    v5[2] = result + 72;
    v5[3] = result + 96;
    v5[4] = result + 128;
    v5[5] = result + 160;
    result = sub_271399AF0(v6, v5);
    if (result)
    {
      return sub_2715F56DC((a1 + 184), (v4 + 192));
    }
  }

  return result;
}

uint64_t sub_2713A4AB8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28810AD28;
  *(a1 + 8) = &unk_28810ADA0;
  sub_2713B2524(a1 + 16, (a2 + 32));
  sub_2717221A8(a1 + 192, *(a2 + 16));
  *(a1 + 592) = 0;
  *(a1 + 576) = 0u;
  v4 = *(a2 + 16);
  if (*(v4 + 408) == 1)
  {
    *(a1 + 584) = sub_271127424(a1 + 576, v4 + 384);
  }

  return a1;
}

void sub_2713A4B60(_Unwind_Exception *a1)
{
  sub_27137F4D0((v1 + 576));
  sub_2713AE52C((v1 + 192));
  sub_2713A31E0(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_2713A4B98(uint64_t a1)
{
  *a1 = &unk_28810AD28;
  *(a1 + 8) = &unk_28810ADA0;
  v2 = *(a1 + 576);
  if (v2)
  {
    v3 = *(a1 + 584);
    v4 = *(a1 + 576);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 576);
    }

    *(a1 + 584) = v2;
    operator delete(v4);
  }

  sub_2713AE52C((a1 + 192));
  if (*(a1 + 184) == 1)
  {
    v6 = *(a1 + 160);
    if (v6)
    {
      v7 = *(a1 + 168);
      v8 = *(a1 + 160);
      if (v7 != v6)
      {
        do
        {
          v9 = *(v7 - 1);
          v7 -= 3;
          if (v9 < 0)
          {
            operator delete(*v7);
          }
        }

        while (v7 != v6);
        v8 = *(a1 + 160);
      }

      *(a1 + 168) = v6;
      operator delete(v8);
    }
  }

  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if (*(a1 + 120) != 1)
    {
      goto LABEL_24;
    }
  }

  else if (*(a1 + 120) != 1)
  {
    goto LABEL_24;
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

LABEL_24:
  if (*(a1 + 64) != 1 || (*(a1 + 63) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 40));
  return a1;
}

void sub_2713A4D28(uint64_t a1)
{
  sub_2713A4B98(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2713A4D60(uint64_t a1)
{
  sub_2713A4B98(a1 - 8);

  JUMPOUT(0x2743BF050);
}

void sub_2713A4DD0(_DWORD *a1, uint64_t a2, unsigned int *a3)
{
  v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v6)
  {
    v7 = *a3;

    sub_2713D8D2C(v6, a2, v7);
  }

  v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v8)
  {
    v9 = *a3;

    sub_2713D8F50(v8, a2, v9);
  }

  else
  {
    v10 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v10)
    {
      v11 = *a3;

      sub_2713D912C(v10, a2, v11);
    }

    v12 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v12)
    {
      v13 = *a3;

      sub_2713D9350(v12, a2, v13);
    }

    else
    {
      v14 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      v15 = *a3;
      if (v14)
      {

        sub_2713D954C(v14, a2, v15);
      }

      else
      {

        sub_2713D96B8(a1, a2, v15);
      }
    }
  }
}

void sub_2713A4FEC(void *a1, uint64_t a2, unsigned int *a3)
{
  v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v6)
  {
    v7 = v6[104];
    *(v6 + 11) = "info";
    *(v6 + 12) = 4;
    if ((v7 & 1) == 0)
    {
      v6[104] = 1;
    }

    sub_2713BB450(v6, a2 + 16);
  }

  v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v8)
  {
    v9 = v8;
    v10 = *a3;
    LODWORD(__p) = 6;
    sub_27183FB7C(v8[6], &__p);
    sub_2713BF6F4(&__p, v9, a2 + 16, __p);
    LODWORD(__p) = 4;
    sub_27183FB7C(*(v9 + 48), &__p);
    sub_2713D210C(v9, a2 + 192, __p);
    if (v10 >= 3)
    {
      sub_2713BFFC0(v9, (a2 + 576));
    }

    return;
  }

  v11 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
  if (v11)
  {
    v12 = v11[104];
    *(v11 + 11) = "info";
    *(v11 + 12) = 4;
    if ((v12 & 1) == 0)
    {
      v11[104] = 1;
    }

    sub_2713C0E9C(v11, a2 + 16);
  }

  v13 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
  if (v13)
  {
    v14 = v13;
    v15 = *a3;
    LODWORD(__p) = 6;
    sub_27183A9AC(v13, &__p);
    if (__p >= 6)
    {
      v16 = 6;
    }

    else
    {
      v16 = __p;
    }

    if (__p > 2)
    {
      sub_2713C32B8(v14, a2 + 16, v16);
      while (1)
      {
        if ((*(v14 + 131) & 1) != 0 || (*(*(v14 + 16) + *(**(v14 + 16) - 24) + 32) & 2) != 0)
        {
          goto LABEL_36;
        }

        sub_27183D78C(v14, &__p);
        if (v26 < 0)
        {
          if (v25 == 1 && *(v14 + 72) == *__p)
          {
LABEL_28:
            v17 = 0;
            if (v26 < 0)
            {
              goto LABEL_31;
            }

            goto LABEL_19;
          }
        }

        else if (v26 == 1 && *(v14 + 72) == __p)
        {
          goto LABEL_28;
        }

        v17 = 1;
        if (v26 < 0)
        {
LABEL_31:
          operator delete(__p);
        }

LABEL_19:
        if ((v17 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    sub_2713C30AC(&__p, v14, a2 + 16, v16);
LABEL_36:
    LODWORD(__p) = 4;
    sub_27183A9AC(v14, &__p);
    if (__p >= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = __p;
    }

    v22 = (a2 + 192);
    if (__p > 2)
    {
      sub_2713D5298(v14, v22, v21);
      while (1)
      {
        if ((*(v14 + 131) & 1) != 0 || (*(*(v14 + 16) + *(**(v14 + 16) - 24) + 32) & 2) != 0)
        {
          goto LABEL_55;
        }

        sub_27183D78C(v14, &__p);
        if (v26 < 0)
        {
          if (v25 == 1 && *(v14 + 72) == *__p)
          {
LABEL_50:
            v23 = 0;
            if (v26 < 0)
            {
              goto LABEL_53;
            }

            goto LABEL_41;
          }
        }

        else if (v26 == 1 && *(v14 + 72) == __p)
        {
          goto LABEL_50;
        }

        v23 = 1;
        if (v26 < 0)
        {
LABEL_53:
          operator delete(__p);
        }

LABEL_41:
        if ((v23 & 1) == 0)
        {
          goto LABEL_55;
        }
      }
    }

    sub_2713D4A48(v14, v22, v21);
LABEL_55:
    if (v15 >= 3)
    {
      sub_2713C3B9C(v14, (a2 + 576));
    }
  }

  else
  {
    v18 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
    v19 = *a3;
    if (v18)
    {
      v20 = v18;
      sub_2713C49D0(&__p, v18, a2 + 16);
      sub_2713D5A84(v20, a2 + 192);
      if (v19 >= 3)
      {
        sub_2713C53C4(v20, (a2 + 576));
      }
    }

    else
    {

      sub_2713D98A4(a1, a2, v19);
    }
  }
}

void sub_2713A5580(uint64_t *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = sub_27171CBE8(1uLL);
  v6 = a1[72];
  v7 = a1[73];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v6;
    v2 = *(v6 + 8);
    v15[0] = *(v6 + 16);
    *(v15 + 3) = *(v6 + 19);
    v3 = *(v6 + 23);
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *v6 = 0;
  }

  sub_271722BF0(a1 + 24, v5, v13);
  LOBYTE(v9) = 0;
  v12 = 0;
  if (v6 != v7)
  {
    if (v3 < 0)
    {
      sub_271127178(&v9, v8, v2);
    }

    else
    {
      *&v9 = v8;
      *(&v9 + 1) = v2;
      *v10 = v15[0];
      *&v10[3] = *(v15 + 3);
      v11 = v3;
    }

    v12 = 1;
  }

  sub_27153F59C(&v14, v13, &v9);
}

void sub_2713A582C(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, void *__pa, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, ...)
{
  va_start(va, a16);
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__pa);
  }

  sub_271359728(va);
  if (v17 != v18 && v19 < 0)
  {
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2713A58A4(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D2E0, 8);
  if (result)
  {
    v4 = result;
    result = sub_2713D86DC((a1 + 192), (result + 192));
    if (result)
    {
      v6[0] = a1 + 24;
      v6[1] = a1 + 40;
      v6[2] = a1 + 72;
      v6[3] = a1 + 96;
      v6[4] = a1 + 128;
      v6[5] = a1 + 160;
      v5[0] = v4 + 24;
      v5[1] = v4 + 40;
      v5[2] = v4 + 72;
      v5[3] = v4 + 96;
      v5[4] = v4 + 128;
      v5[5] = v4 + 160;
      return sub_271399AF0(v6, v5);
    }
  }

  return result;
}

uint64_t sub_2713A5980(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D2E0, 8);
  if (result)
  {
    v4 = result;
    result = sub_2713D86DC((a1 + 184), (result + 192));
    if (result)
    {
      v6[0] = a1 + 16;
      v6[1] = a1 + 32;
      v6[2] = a1 + 64;
      v6[3] = a1 + 88;
      v6[4] = a1 + 120;
      v6[5] = a1 + 152;
      v5[0] = v4 + 24;
      v5[1] = v4 + 40;
      v5[2] = v4 + 72;
      v5[3] = v4 + 96;
      v5[4] = v4 + 128;
      v5[5] = v4 + 160;
      return sub_271399AF0(v6, v5);
    }
  }

  return result;
}

uint64_t sub_2713A5B2C(uint64_t a1)
{
  if (*(a1 + 144) != 1)
  {
    return a1;
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_4:
      if ((*(a1 + 95) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(a1 + 72));
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_14;
  }

LABEL_12:
  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_14:
  operator delete(*a1);
  return a1;
}

uint64_t sub_2713A5BF4(uint64_t a1, void *a2)
{
  v4 = a1 + 24;
  *(a1 + 48) = 0u;
  v5 = a1 + 48;
  v6 = a1 + 72;
  *(a1 + 96) = 0u;
  v7 = a1 + 96;
  v8 = a1 + 120;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 144) = *(a2 + 4);
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178((a1 + 152), a2[3], a2[4]);
    }

    else
    {
      v9 = *(a2 + 3);
      *(a1 + 168) = a2[5];
      *(a1 + 152) = v9;
    }
  }

  else
  {
    *(a1 + 175) = 0;
    *(a1 + 152) = 0;
  }

  *(a1 + 176) = *a2;
  v10 = *(a2 + 13);
  *(a1 + 208) = a2[28];
  *(a1 + 192) = v10;
  if (*(a2 + 200) == 1)
  {
    if (a2 + 7 != a1)
    {
      v11 = *(a2 + 79);
      if (*(a1 + 23) < 0)
      {
        if (v11 >= 0)
        {
          v13 = a2 + 7;
        }

        else
        {
          v13 = a2[7];
        }

        if (v11 >= 0)
        {
          v14 = *(a2 + 79);
        }

        else
        {
          v14 = a2[8];
        }

        sub_2711289F8(a1, v13, v14);
      }

      else if ((*(a2 + 79) & 0x80) != 0)
      {
        sub_271128928(a1, a2[7], a2[8]);
      }

      else
      {
        v12 = *(a2 + 7);
        *(a1 + 16) = a2[9];
        *a1 = v12;
      }
    }

    if (v4 != a2 + 10)
    {
      v15 = *(a2 + 103);
      if (*(a1 + 47) < 0)
      {
        if (v15 >= 0)
        {
          v17 = a2 + 10;
        }

        else
        {
          v17 = a2[10];
        }

        if (v15 >= 0)
        {
          v18 = *(a2 + 103);
        }

        else
        {
          v18 = a2[11];
        }

        sub_2711289F8(v4, v17, v18);
      }

      else if ((*(a2 + 103) & 0x80) != 0)
      {
        sub_271128928(v4, a2[10], a2[11]);
      }

      else
      {
        v16 = *(a2 + 5);
        *(v4 + 16) = a2[12];
        *v4 = v16;
      }
    }

    if (v5 != a2 + 13)
    {
      v19 = *(a2 + 127);
      if (*(a1 + 71) < 0)
      {
        if (v19 >= 0)
        {
          v21 = a2 + 13;
        }

        else
        {
          v21 = a2[13];
        }

        if (v19 >= 0)
        {
          v22 = *(a2 + 127);
        }

        else
        {
          v22 = a2[14];
        }

        sub_2711289F8(v5, v21, v22);
      }

      else if ((*(a2 + 127) & 0x80) != 0)
      {
        sub_271128928(v5, a2[13], a2[14]);
      }

      else
      {
        v20 = *(a2 + 13);
        *(v5 + 16) = a2[15];
        *v5 = v20;
      }
    }

    if (v6 != a2 + 16)
    {
      v23 = *(a2 + 151);
      if (*(a1 + 95) < 0)
      {
        if (v23 >= 0)
        {
          v25 = a2 + 16;
        }

        else
        {
          v25 = a2[16];
        }

        if (v23 >= 0)
        {
          v26 = *(a2 + 151);
        }

        else
        {
          v26 = a2[17];
        }

        sub_2711289F8(v6, v25, v26);
      }

      else if ((*(a2 + 151) & 0x80) != 0)
      {
        sub_271128928(v6, a2[16], a2[17]);
      }

      else
      {
        v24 = *(a2 + 8);
        *(v6 + 16) = a2[18];
        *v6 = v24;
      }
    }

    if (v7 != a2 + 19)
    {
      v27 = *(a2 + 175);
      if (*(a1 + 119) < 0)
      {
        if (v27 >= 0)
        {
          v29 = a2 + 19;
        }

        else
        {
          v29 = a2[19];
        }

        if (v27 >= 0)
        {
          v30 = *(a2 + 175);
        }

        else
        {
          v30 = a2[20];
        }

        sub_2711289F8(v7, v29, v30);
      }

      else if ((*(a2 + 175) & 0x80) != 0)
      {
        sub_271128928(v7, a2[19], a2[20]);
      }

      else
      {
        v28 = *(a2 + 19);
        *(v7 + 16) = a2[21];
        *v7 = v28;
      }
    }

    if (v8 != a2 + 22)
    {
      v31 = *(a2 + 199);
      if (*(a1 + 143) < 0)
      {
        if (v31 >= 0)
        {
          v33 = a2 + 22;
        }

        else
        {
          v33 = a2[22];
        }

        if (v31 >= 0)
        {
          v34 = *(a2 + 199);
        }

        else
        {
          v34 = a2[23];
        }

        sub_2711289F8(v8, v33, v34);
      }

      else if ((*(a2 + 199) & 0x80) != 0)
      {
        sub_271128928(v8, a2[22], a2[23]);
      }

      else
      {
        v32 = *(a2 + 11);
        *(v8 + 16) = a2[24];
        *v8 = v32;
      }
    }
  }

  return a1;
}

void sub_2713A5EF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*v6);
    if ((*(v1 + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 95) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v5);
  if ((*(v1 + 95) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*v4);
  if ((*(v1 + 71) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*v3);
  if ((*(v1 + 47) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(*v2);
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_2713A5FAC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
      goto LABEL_19;
    }
  }

  else if (*(a1 + 23))
  {
    goto LABEL_19;
  }

  if ((*(a1 + 47) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 32))
    {
      goto LABEL_19;
    }
  }

  else if (*(a1 + 47))
  {
    goto LABEL_19;
  }

  if ((*(a1 + 71) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 56))
    {
      goto LABEL_19;
    }
  }

  else if (*(a1 + 71))
  {
    goto LABEL_19;
  }

  v4 = *(a1 + 95);
  if (v4 < 0)
  {
    v4 = *(a1 + 80);
  }

  if (v4)
  {
    goto LABEL_19;
  }

  v5 = *(a1 + 119);
  if (v5 < 0)
  {
    v5 = *(a1 + 104);
  }

  if (v5)
  {
LABEL_19:
    v6 = 1;
    v7 = *(a1 + 175);
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    v7 = *(a1 + 160);
    LOBYTE(__p[0]) = 0;
    v38 = 0;
    if (!v6)
    {
      goto LABEL_44;
    }

    goto LABEL_26;
  }

  v8 = *(a1 + 143);
  if (v8 < 0)
  {
    v8 = *(a1 + 128);
  }

  v6 = v8 != 0;
  v7 = *(a1 + 175);
  if (v7 < 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  LOBYTE(__p[0]) = 0;
  v38 = 0;
  if (!v6)
  {
LABEL_44:
    v11 = *(a1 + 144);
    LODWORD(v15[0]) = v11;
    if (v7)
    {
      goto LABEL_45;
    }

    goto LABEL_58;
  }

LABEL_26:
  sub_27181626C(v15, a1, (a1 + 24), (a1 + 48), (a1 + 72), (a1 + 96), (a1 + 120));
  if (v38 == 1)
  {
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *v15;
    v27 = v15[2];
    HIBYTE(v15[2]) = 0;
    LOBYTE(v15[0]) = 0;
    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28);
    }

    v28 = *v16;
    v29 = v17;
    HIBYTE(v17) = 0;
    LOBYTE(v16[0]) = 0;
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[0]);
    }

    *v30 = *v18;
    v31 = v19;
    HIBYTE(v19) = 0;
    LOBYTE(v18[0]) = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    v32 = *v20;
    v33 = v21;
    HIBYTE(v21) = 0;
    LOBYTE(v20[0]) = 0;
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }

    *v34 = *v22;
    v35 = v23;
    HIBYTE(v23) = 0;
    LOBYTE(v22[0]) = 0;
    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
      v36 = v24;
      v37 = v25;
      HIBYTE(v25) = 0;
      LOBYTE(v24) = 0;
      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[0]);
      }
    }

    else
    {
      v36 = v24;
      v37 = v25;
      HIBYTE(v25) = 0;
      LOBYTE(v24) = 0;
    }
  }

  else
  {
    *__p = *v15;
    v9 = v15[2];
    memset(v15, 0, sizeof(v15));
    v10 = *v16;
    v16[0] = 0;
    v28 = v10;
    v27 = v9;
    v29 = v17;
    v16[1] = 0;
    v17 = 0;
    *v30 = *v18;
    v18[0] = 0;
    v18[1] = 0;
    v31 = v19;
    v33 = v21;
    v32 = *v20;
    v19 = 0;
    v20[0] = 0;
    v20[1] = 0;
    v21 = 0;
    *v34 = *v22;
    v22[0] = 0;
    v22[1] = 0;
    v35 = v23;
    v37 = v25;
    v36 = v24;
    v23 = 0;
    v24 = 0uLL;
    v25 = 0;
    v38 = 1;
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
LABEL_42:
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_56;
    }
  }

  else if ((SHIBYTE(v19) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(v18[0]);
  if ((SHIBYTE(v17) & 0x80000000) == 0)
  {
LABEL_43:
    if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_57;
  }

LABEL_56:
  operator delete(v16[0]);
  if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_57:
  operator delete(v15[0]);
  v11 = *(a1 + 144);
  LODWORD(v15[0]) = v11;
  if (v7)
  {
LABEL_45:
    if (*(a1 + 175) < 0)
    {
      sub_271127178(&v15[1], *(a1 + 152), *(a1 + 160));
      v11 = v15[0];
    }

    else
    {
      *&v15[1] = *(a1 + 152);
      v16[0] = *(a1 + 168);
    }

    LOBYTE(v16[1]) = 1;
    *a2 = *(a1 + 176);
    *(a2 + 16) = v11;
    *(a2 + 24) = *&v15[1];
    *(a2 + 40) = v16[0];
    v15[1] = 0;
    v15[2] = 0;
    v16[0] = 0;
    *(a2 + 48) = 1;
    *(a2 + 56) = 0;
    v12 = a2 + 56;
    *(a2 + 200) = 0;
    if (v38)
    {
      goto LABEL_49;
    }

LABEL_59:
    *(a2 + 208) = *(a1 + 192);
    *(a2 + 224) = *(a1 + 208);
    if (v38 != 1)
    {
      return;
    }

    goto LABEL_60;
  }

LABEL_58:
  LOBYTE(v15[1]) = 0;
  LOBYTE(v16[1]) = 0;
  *a2 = *(a1 + 176);
  *(a2 + 16) = v11;
  *(a2 + 24) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v12 = a2 + 56;
  *(a2 + 200) = 0;
  if ((v38 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_49:
  sub_2711B0ED4(v12, __p);
  *(a2 + 200) = 1;
  v13 = v16[1];
  v14 = SHIBYTE(v16[0]);
  *(a2 + 208) = *(a1 + 192);
  *(a2 + 224) = *(a1 + 208);
  if ((v13 & 1) != 0 && v14 < 0)
  {
    operator delete(v15[1]);
  }

  if (v38 != 1)
  {
    return;
  }

LABEL_60:
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
LABEL_62:
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_69;
    }
  }

  else if ((SHIBYTE(v35) & 0x80000000) == 0)
  {
    goto LABEL_62;
  }

  operator delete(v34[0]);
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
LABEL_63:
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

LABEL_70:
    operator delete(v30[0]);
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
LABEL_65:
      if ((SHIBYTE(v27) & 0x80000000) == 0)
      {
        return;
      }

LABEL_72:
      operator delete(__p[0]);
      return;
    }

    goto LABEL_71;
  }

LABEL_69:
  operator delete(v32);
  if (SHIBYTE(v31) < 0)
  {
    goto LABEL_70;
  }

LABEL_64:
  if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

LABEL_71:
  operator delete(v28);
  if (SHIBYTE(v27) < 0)
  {
    goto LABEL_72;
  }
}

BOOL sub_2713A6524(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(*a1 + 23);
  }

  else
  {
    v4 = *(*a1 + 8);
  }

  v5 = *(v2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v2 + 8);
  }

  if (v4 != v5)
  {
    return 0;
  }

  v9 = v3 >= 0 ? *a1 : **a1;
  v10 = v6 >= 0 ? *a2 : *v2;
  if (memcmp(v9, v10, v4))
  {
    return 0;
  }

  v11 = *(a1 + 8);
  v12 = a2[1];
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v14 = *(v11 + 23);
  }

  else
  {
    v14 = *(v11 + 8);
  }

  v15 = *(v12 + 23);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(v12 + 8);
  }

  if (v14 != v15)
  {
    return 0;
  }

  v17 = v13 >= 0 ? *(a1 + 8) : *v11;
  v18 = v16 >= 0 ? a2[1] : *v12;
  if (memcmp(v17, v18, v14))
  {
    return 0;
  }

  v19 = *(a1 + 16);
  v20 = a2[2];
  v21 = *(v19 + 23);
  if (v21 >= 0)
  {
    v22 = *(v19 + 23);
  }

  else
  {
    v22 = *(v19 + 8);
  }

  v23 = *(v20 + 23);
  v24 = v23;
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(v20 + 8);
  }

  if (v22 != v23)
  {
    return 0;
  }

  v25 = v21 >= 0 ? *(a1 + 16) : *v19;
  v26 = v24 >= 0 ? a2[2] : *v20;
  if (memcmp(v25, v26, v22))
  {
    return 0;
  }

  v27 = *(a1 + 24);
  v28 = a2[3];
  v29 = *(v27 + 23);
  if (v29 >= 0)
  {
    v30 = *(v27 + 23);
  }

  else
  {
    v30 = *(v27 + 8);
  }

  v31 = *(v28 + 23);
  v32 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v31 = *(v28 + 8);
  }

  if (v30 != v31)
  {
    return 0;
  }

  v33 = v29 >= 0 ? *(a1 + 24) : *v27;
  v34 = v32 >= 0 ? a2[3] : *v28;
  if (memcmp(v33, v34, v30))
  {
    return 0;
  }

  v35 = *(a1 + 32);
  v36 = a2[4];
  v37 = *(v35 + 23);
  if (v37 >= 0)
  {
    v38 = *(v35 + 23);
  }

  else
  {
    v38 = *(v35 + 8);
  }

  v39 = *(v36 + 23);
  v40 = v39;
  if ((v39 & 0x80u) != 0)
  {
    v39 = *(v36 + 8);
  }

  if (v38 != v39)
  {
    return 0;
  }

  v41 = v37 >= 0 ? *(a1 + 32) : *v35;
  v42 = v40 >= 0 ? a2[4] : *v36;
  if (memcmp(v41, v42, v38))
  {
    return 0;
  }

  v43 = *(a1 + 40);
  v44 = a2[5];
  v45 = *(v43 + 23);
  if (v45 >= 0)
  {
    v46 = *(v43 + 23);
  }

  else
  {
    v46 = *(v43 + 8);
  }

  v47 = *(v44 + 23);
  v48 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v47 = *(v44 + 8);
  }

  if (v46 != v47)
  {
    return 0;
  }

  v49 = v45 >= 0 ? *(a1 + 40) : *v43;
  v50 = v48 >= 0 ? a2[5] : *v44;
  if (memcmp(v49, v50, v46) || **(a1 + 48) != *a2[6])
  {
    return 0;
  }

  v51 = *(a1 + 56);
  v52 = a2[7];
  v53 = *(v51 + 23);
  if (v53 >= 0)
  {
    v54 = *(v51 + 23);
  }

  else
  {
    v54 = *(v51 + 8);
  }

  v55 = *(v52 + 23);
  v56 = v55;
  if ((v55 & 0x80u) != 0)
  {
    v55 = *(v52 + 8);
  }

  if (v54 != v55)
  {
    return 0;
  }

  v57 = v53 >= 0 ? *(a1 + 56) : *v51;
  v58 = v56 >= 0 ? a2[7] : *v52;
  if (memcmp(v57, v58, v54))
  {
    return 0;
  }

  v59 = *(a1 + 64);
  v60 = a2[8];
  v62 = *v59;
  v61 = v59[1];
  v64 = *v60;
  v63 = v60[1];
  if (v62 != v64 || v61 != v63)
  {
    return 0;
  }

  v66 = *(a1 + 72);
  v67 = a2[9];
  if (*v66 != *v67 || *(v66 + 8) != *(v67 + 8))
  {
    return 0;
  }

  v70 = *(v66 + 12);
  v71 = *(v66 + 20);
  v72 = *(v67 + 12);
  v73 = *(v67 + 20);
  return v70 == v72 && v71 == v73;
}

uint64_t sub_2713A6850(uint64_t a1)
{
  *a1 = &unk_288131CA8;
  *(a1 + 8) = &unk_288131D08;
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A68F8(uint64_t a1)
{
  *(a1 - 8) = &unk_288131CA8;
  *a1 = &unk_288131D08;
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v4, a1 + 8);
  }

  *(a1 + 184) = -1;
}

uint64_t sub_2713A699C(uint64_t a1)
{
  *a1 = &unk_288131CA8;
  *(a1 + 8) = &unk_288131D08;
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40B4DE50DDLL);
}

uint64_t sub_2713A6A58(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_288131CA8;
  *a1 = &unk_288131D08;
  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 184);
  if (v4 != -1)
  {
    (off_288131910[v4])(&v6, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40B4DE50DDLL);
}

uint64_t sub_2713A6B14(uint64_t a1)
{
  *a1 = &unk_28810B3E0;
  *(a1 + 8) = &unk_28810B440;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A6C04(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B3E0;
  *a1 = &unk_28810B440;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713A6CF0(uint64_t a1)
{
  *a1 = &unk_28810B3E0;
  *(a1 + 8) = &unk_28810B440;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713A6E00(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B3E0;
  *a1 = &unk_28810B440;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713A6F18(uint64_t a1)
{
  *a1 = &unk_28810B530;
  *(a1 + 8) = &unk_28810B590;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A7008(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B530;
  *a1 = &unk_28810B590;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713A70F4(uint64_t a1)
{
  *a1 = &unk_28810B530;
  *(a1 + 8) = &unk_28810B590;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713A7204(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B530;
  *a1 = &unk_28810B590;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713A731C(uint64_t a1)
{
  *a1 = &unk_28810B488;
  *(a1 + 8) = &unk_28810B4E8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A740C(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B488;
  *a1 = &unk_28810B4E8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713A74F8(uint64_t a1)
{
  *a1 = &unk_28810B488;
  *(a1 + 8) = &unk_28810B4E8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713A7608(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B488;
  *a1 = &unk_28810B4E8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713A7720(uint64_t a1)
{
  *a1 = &unk_28810BC68;
  *(a1 + 8) = &unk_28810BCC8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A7810(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BC68;
  *a1 = &unk_28810BCC8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713A78FC(uint64_t a1)
{
  *a1 = &unk_28810BC68;
  *(a1 + 8) = &unk_28810BCC8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713A7A0C(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BC68;
  *a1 = &unk_28810BCC8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713A7B24(uint64_t a1)
{
  *a1 = &unk_28810BBC0;
  *(a1 + 8) = &unk_28810BC20;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A7C14(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BBC0;
  *a1 = &unk_28810BC20;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713A7D00(uint64_t a1)
{
  *a1 = &unk_28810BBC0;
  *(a1 + 8) = &unk_28810BC20;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713A7E10(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BBC0;
  *a1 = &unk_28810BC20;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713A7F28(uint64_t a1)
{
  *a1 = &unk_28810B680;
  *(a1 + 8) = &unk_28810B6E0;
  v2 = *(a1 + 208);
  if (v2)
  {
    v2(0, a1 + 208, 0, 0, 0);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

void *sub_2713A7FE4(void *result)
{
  v1 = result;
  *(result - 1) = &unk_28810B680;
  *result = &unk_28810B6E0;
  v2 = result[25];
  if (v2)
  {
    result = v2(0, result + 25, 0, 0, 0);
  }

  v3 = *(v1 + 46);
  if (v3 != -1)
  {
    result = (off_288131910[v3])(&v4, v1 + 1);
  }

  *(v1 + 46) = -1;
  return result;
}

uint64_t sub_2713A809C(uint64_t a1)
{
  *a1 = &unk_28810B680;
  *(a1 + 8) = &unk_28810B6E0;
  v2 = *(a1 + 208);
  if (v2)
  {
    v2(0, a1 + 208, 0, 0, 0);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40294CF2FDLL);
}

uint64_t sub_2713A816C(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B680;
  *a1 = &unk_28810B6E0;
  v3 = *(a1 + 200);
  if (v3)
  {
    v3(0, a1 + 200, 0, 0, 0);
  }

  v4 = *(a1 + 184);
  if (v4 != -1)
  {
    (off_288131910[v4])(&v6, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40294CF2FDLL);
}

uint64_t sub_2713A823C(uint64_t a1)
{
  *a1 = &unk_288131D78;
  *(a1 + 8) = &unk_288131DD8;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A832C(uint64_t a1)
{
  *(a1 - 8) = &unk_288131D78;
  *a1 = &unk_288131DD8;
  v2 = *(a1 + 200);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713A8418(uint64_t a1)
{
  *a1 = &unk_288131D78;
  *(a1 + 8) = &unk_288131DD8;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713A8528(uint64_t a1)
{
  *(a1 - 8) = &unk_288131D78;
  *a1 = &unk_288131DD8;
  v2 = *(a1 + 200);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713A8640(uint64_t a1)
{
  *a1 = &unk_28810B5D8;
  *(a1 + 8) = &unk_28810B638;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A8730(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B5D8;
  *a1 = &unk_28810B638;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713A881C(uint64_t a1)
{
  *a1 = &unk_28810B5D8;
  *(a1 + 8) = &unk_28810B638;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713A892C(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B5D8;
  *a1 = &unk_28810B638;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

unsigned __int8 *sub_2713A8A44@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result[23] < 0)
  {
    result = sub_271127178(a2, *result, *(result + 1));
    *(a2 + 24) = v2[24];
    if ((v2[55] & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a2 = *result;
    *(a2 + 16) = *(result + 2);
    *(a2 + 24) = result[24];
    if ((result[55] & 0x80000000) == 0)
    {
LABEL_3:
      *(a2 + 32) = *(v2 + 2);
      *(a2 + 48) = *(v2 + 6);
      goto LABEL_6;
    }
  }

  result = sub_271127178((a2 + 32), *(v2 + 4), *(v2 + 5));
LABEL_6:
  *(a2 + 56) = *(v2 + 14);
  if (v2[87] < 0)
  {
    result = sub_271127178((a2 + 64), *(v2 + 8), *(v2 + 9));
  }

  else
  {
    *(a2 + 64) = *(v2 + 4);
    *(a2 + 80) = *(v2 + 10);
  }

  if (v2[111] < 0)
  {
    return sub_271127178((a2 + 88), *(v2 + 11), *(v2 + 12));
  }

  *(a2 + 88) = *(v2 + 88);
  *(a2 + 104) = *(v2 + 13);
  return result;
}

void sub_2713A8B2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
    if ((*(v1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 32));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2713A8BA0(uint64_t a1)
{
  *a1 = &unk_28810B7D0;
  *(a1 + 8) = &unk_28810B830;
  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
    if ((*(a1 + 287) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 255) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 287) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 264));
  if ((*(a1 + 255) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 223) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(*(a1 + 232));
  if ((*(a1 + 223) & 0x80000000) == 0)
  {
LABEL_5:
    v2 = *(a1 + 192);
    if (v2 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(a1 + 200));
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
LABEL_11:
    (off_288131910[v2])(&v4, a1 + 16);
  }

LABEL_12:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A8CAC(uint64_t a1)
{
  sub_2713A8BA0(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2713A8CE4(uint64_t a1)
{
  sub_2713A8BA0(a1 - 8);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713A8D20(uint64_t a1)
{
  *a1 = &unk_28810BB18;
  *(a1 + 8) = &unk_28810BB78;
  if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
    if (*(a1 + 344) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 344) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

LABEL_7:
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A8E00(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BB18;
  *a1 = &unk_28810BB78;
  if (*(a1 + 368) == 1 && *(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
    if (*(a1 + 336) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 336) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

LABEL_7:
  v2 = *(a1 + 184);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v3, a1 + 8);
  }

  *(a1 + 184) = -1;
}

void sub_2713A8EDC(uint64_t a1)
{
  *a1 = &unk_28810BB18;
  *(a1 + 8) = &unk_28810BB78;
  if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
    if (*(a1 + 344) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 344) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

LABEL_7:
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v3, a1 + 16);
  }

  *(a1 + 192) = -1;

  JUMPOUT(0x2743BF050);
}

void sub_2713A8FDC(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BB18;
  *a1 = &unk_28810BB78;
  if (*(a1 + 368) == 1 && *(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
    if (*(a1 + 336) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 336) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

LABEL_7:
  v2 = *(a1 + 184);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v3, a1 + 8);
  }

  *(a1 + 184) = -1;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713A90DC(uint64_t a1)
{
  *a1 = &unk_28810B878;
  *(a1 + 8) = &unk_28810B8D8;
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_2713A9174(uint64_t result)
{
  v1 = result;
  *(result - 8) = &unk_28810B878;
  *result = &unk_28810B8D8;
  v2 = *(result + 184);
  if (v2 != -1)
  {
    result = (off_288131910[v2])(&v3, result + 8);
  }

  *(v1 + 184) = -1;
  return result;
}

uint64_t sub_2713A9208(uint64_t a1)
{
  *a1 = &unk_28810B878;
  *(a1 + 8) = &unk_28810B8D8;
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40CF772451);
}

uint64_t sub_2713A92B4(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B878;
  *a1 = &unk_28810B8D8;
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40CF772451);
}

uint64_t sub_2713A9360(uint64_t a1)
{
  *a1 = &unk_28810B728;
  *(a1 + 8) = &unk_28810B788;
  sub_2713B1E08(a1 + 200);
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_2713A9400(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B728;
  *a1 = &unk_28810B788;
  result = sub_2713B1E08(a1 + 192);
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    result = (off_288131910[v3])(&v4, a1 + 8);
  }

  *(a1 + 184) = -1;
  return result;
}

uint64_t sub_2713A9498(uint64_t a1)
{
  *a1 = &unk_28810B728;
  *(a1 + 8) = &unk_28810B788;
  sub_2713B1E08(a1 + 200);
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40DC57CB27);
}

uint64_t sub_2713A954C(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B728;
  *a1 = &unk_28810B788;
  sub_2713B1E08(a1 + 192);
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40DC57CB27);
}

uint64_t sub_2713A95FC(uint64_t a1)
{
  *a1 = &unk_28810B9C8;
  *(a1 + 8) = &unk_28810BA28;
  sub_271167834(a1 + 200, *(a1 + 208));
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A96A0(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B9C8;
  *a1 = &unk_28810BA28;
  sub_271167834(a1 + 192, *(a1 + 200));
  v2 = *(a1 + 184);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v3, a1 + 8);
  }

  *(a1 + 184) = -1;
}

uint64_t sub_2713A9740(uint64_t a1)
{
  *a1 = &unk_28810B9C8;
  *(a1 + 8) = &unk_28810BA28;
  sub_271167834(a1 + 200, *(a1 + 208));
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40546963AFLL);
}

uint64_t sub_2713A97F8(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B9C8;
  *a1 = &unk_28810BA28;
  sub_271167834(a1 + 192, *(a1 + 200));
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40546963AFLL);
}

uint64_t sub_2713A98B0(uint64_t a1)
{
  *a1 = &unk_28810BA70;
  *(a1 + 8) = &unk_28810BAD0;
  if (*(a1 + 248) == 1 && *(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  v2 = *(a1 + 200);
  if (v2)
  {
    v3 = *(a1 + 208);
    v4 = *(a1 + 200);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 200);
    }

    *(a1 + 208) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 192);
  if (v6 != -1)
  {
    (off_288131910[v6])(&v8, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A99C0(uint64_t a1)
{
  sub_2713A98B0(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2713A99F8(uint64_t a1)
{
  sub_2713A98B0(a1 - 8);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713A9A34(uint64_t a1)
{
  *a1 = &unk_28810B920;
  *(a1 + 8) = &unk_28810B980;
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_2713A9ACC(uint64_t result)
{
  v1 = result;
  *(result - 8) = &unk_28810B920;
  *result = &unk_28810B980;
  v2 = *(result + 184);
  if (v2 != -1)
  {
    result = (off_288131910[v2])(&v3, result + 8);
  }

  *(v1 + 184) = -1;
  return result;
}

uint64_t sub_2713A9B60(uint64_t a1)
{
  *a1 = &unk_28810B920;
  *(a1 + 8) = &unk_28810B980;
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40956CF698);
}

uint64_t sub_2713A9C0C(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B920;
  *a1 = &unk_28810B980;
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40956CF698);
}

void sub_2713A9D10(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0((a1 + 16), &v5);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v5);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v5);
  }

  sub_2713DA100(a2, (a1 + 208), &v5);
}

void *sub_2713A9ECC(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D378, 0);
  if (result)
  {

    return sub_271450554(a1, result);
  }

  return result;
}

void sub_2713AA00C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0((a1 + 16), &v5);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v5);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v5);
  }

  sub_2713E4434(a2, *(a1 + 216), *(a1 + 224), &v5);
}

void *sub_2713AA1C8(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D360, 0);
  if (result)
  {

    return sub_271453BDC(a1, result);
  }

  return result;
}

void sub_2713AA2F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0((a1 + 16), &v5);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v5);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v5);
  }

  sub_2713F4A18(a2, *(a1 + 216), *(a1 + 224), &v5);
}

void *sub_2713AA4AC(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D348, 0);
  if (result)
  {

    return sub_271457194(a1, result);
  }

  return result;
}

void sub_2713AA5D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0((a1 + 16), &v5);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v5);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v5);
  }

  sub_271407D9C(a2, *(a1 + 216), *(a1 + 224), &v5);
}

void *sub_2713AA790(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D330, 0);
  if (result)
  {

    return sub_27145A8B8(a1, result);
  }

  return result;
}

void sub_2713AA8B8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0((a1 + 16), &v7);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v7);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v7);
  }

  v9[0] = &unk_28812E9E8;
  v6 = *(a1 + 216);
  v5 = *(a1 + 224);
  v9[1] = &unk_28812EA30;
  v9[2] = v6;
  v9[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v7;
  sub_27113523C(v11, &v8);
  v9[0] = &unk_28810C840;
  sub_2711EFB3C(a2, v9);
}

void sub_2713AAC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_27145DFDC(va);
  sub_271134CBC(v34 + 16);
  _Unwind_Resume(a1);
}

void sub_2713AAC58(_Unwind_Exception *a1)
{
  sub_2711F00E8(v2);
  sub_271134CBC(v1 + 16);
  _Unwind_Resume(a1);
}

void *sub_2713AAC78(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D3D8, 0);
  if (result)
  {

    return sub_27145E09C(a1, result);
  }

  return result;
}

void sub_2713AADB8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0((a1 + 16), &v7);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v7);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v7);
  }

  v9[0] = &unk_28812EA90;
  v6 = *(a1 + 216);
  v5 = *(a1 + 224);
  v9[1] = &unk_28812EAD8;
  v9[2] = v6;
  v9[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v7;
  sub_27113523C(v11, &v8);
  v9[0] = &unk_28810C7F8;
  sub_2711F21F0(a2, v9);
}

void sub_2713AB13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_27146C1A0(va);
  sub_271134CBC(v34 + 16);
  _Unwind_Resume(a1);
}

void sub_2713AB158(_Unwind_Exception *a1)
{
  sub_2711F279C(v2);
  sub_271134CBC(v1 + 16);
  _Unwind_Resume(a1);
}

void *sub_2713AB178(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D3C0, 0);
  if (result)
  {

    return sub_27146C260(a1, result);
  }

  return result;
}

void sub_2713AB4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271134CBC(v3 + 16);
  sub_27173FDFC(va);
  _Unwind_Resume(a1);
}

void sub_2713AB4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27173FDFC(va);
  _Unwind_Resume(a1);
}

void *sub_2713AB4F0(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D400, 0);
  if (result)
  {

    return sub_27147A444(a1, result);
  }

  return result;
}

void sub_2713AB618(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 208);
  *&v5 = *(a1 + 200);
  *(&v5 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0((a1 + 16), &v6);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v6);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v6);
  }

  sub_271439780(a2, &v5, &v6);
}

void sub_2713AB81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_271134CBC(v9 + 16);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void *sub_2713AB84C(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D240, 0);
  if (result)
  {

    return sub_27147D6B0(a1, result);
  }

  return result;
}

void sub_2713AB974(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0((a1 + 16), &v5);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v5);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v5);
  }

  sub_27144D4A4(a2, a1 + 208, &v5);
}

void *sub_2713ABB30(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D990, 0);
  if (result)
  {

    return sub_271480B94(a1, result);
  }

  return result;
}

void sub_2713ABC58(uint64_t a1)
{
  v29[25] = *MEMORY[0x277D85DE8];
  sub_2713A8A44((a1 + 200), v4);
  v3 = *(a1 + 192);
  if (v3 == 2)
  {
    sub_271399EB0((a1 + 16), &v14);
  }

  else if (v3 == 1)
  {
    sub_2713DA430(a1 + 16, &v14);
  }

  else
  {
    if (v3)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v14);
  }

  v16 = &unk_288131F40;
  v17 = &unk_288131F88;
  v18 = *v4;
  v19 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v20 = v6;
  v21 = *v7;
  v22 = v8;
  v5 = 0;
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  v23 = v9;
  v25 = v11;
  v24 = *v10;
  v10[0] = 0;
  v10[1] = 0;
  v27 = v13;
  v26 = *v12;
  v11 = 0;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  v28 = v14;
  sub_27113523C(v29, &v15);
  v16 = &unk_28810C528;
  operator new();
}

void sub_2713ABFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  (*(*v49 + 8))(v49, a2, a3, a4, a5, a6, a7, a8);
  sub_2714852FC(&a49);
  sub_271134CBC(v50 + 16);
  sub_2713B1398(&a9);
  _Unwind_Resume(a1);
}

void *sub_2713AC09C(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D318, 0);
  if (result)
  {

    return sub_271486088(a1, result);
  }

  return result;
}

void sub_2713AC698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  (*(*v45 + 8))(v45, a2, a3, a4, a5, a6, a7, a8);
  sub_2713772A8(&a45);
  sub_271134CBC(v46 + 16);
  sub_271376568(&a10);
  _Unwind_Resume(a1);
}

void sub_2713AC724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271376568(va);
  _Unwind_Resume(a1);
}

void *sub_2713AC738(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D228, 0);
  if (result)
  {

    return sub_27148AC30(a1, result);
  }

  return result;
}

void sub_2713AC860(uint64_t a1@<X0>, void *a2@<X8>)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 200);
  if (v7 == 2)
  {
    if (*(a1 + 248) != 1)
    {
      goto LABEL_15;
    }

    v9 = 0;
    LOBYTE(v8) = *(a1 + 208);
    v3 = *(a1 + 216);
    v2 = *(a1 + 224);
    v10 = 1;
    v4 = 1;
    v5 = *(a1 + 225);
    v11 = *(a1 + 192);
    if (v11 != 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v7 == 1)
    {
      if (*(a1 + 248))
      {
        goto LABEL_15;
      }

      v4 = 0;
      v8 = *(a1 + 208);
      v3 = *(a1 + 216);
      v2 = *(a1 + 224);
      v5 = *(a1 + 232) << 56;
      v12 = *(a1 + 233);
      v9 = v8 & 0xFFFFFFFFFFFFFF00;
      v10 = 1;
      v11 = *(a1 + 192);
      if (v11 == 2)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

    LOBYTE(v8) = 0;
    v10 = 0;
    v9 = 0;
    v11 = *(a1 + 192);
    if (v11 != 2)
    {
LABEL_10:
      if (v11 == 1)
      {
        sub_2713DA430(a1 + 16, &v13);
LABEL_14:
        v15[0] = &unk_2881313F8;
        v15[1] = &unk_288131440;
        v15[2] = v9 | v8;
        v15[3] = v3;
        v16 = v2;
        v17 = v5;
        v18 = v12;
        v19 = v4;
        v20 = v10;
        v21 = v13;
        sub_27113523C(v22, &v14);
        v15[0] = &unk_28810C570;
        sub_271494B3C(a2, v15);
      }

      if (!v11)
      {
        sub_2713A3334(a1 + 16, &v13);
        goto LABEL_14;
      }

LABEL_15:
      sub_2711308D4();
    }
  }

LABEL_8:
  sub_271399EB0((a1 + 16), &v13);
  goto LABEL_14;
}

void sub_2713ACC2C(_Unwind_Exception *a1)
{
  sub_271134CBC(v1 + 96);
  sub_271134CBC(v2 + 16);
  _Unwind_Resume(a1);
}

void *sub_2713ACC64(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D5B8, 0);
  if (result)
  {

    return sub_271494DC0(a1, result);
  }

  return result;
}

void sub_2713ACD8C(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  sub_2713A5FAC(a1 + 200, &v3);
  v2 = *(a1 + 192);
  if (v2 == 2)
  {
    sub_271399EB0((a1 + 16), &v4);
  }

  else if (v2 == 1)
  {
    sub_2713DA430(a1 + 16, &v4);
  }

  else
  {
    if (v2)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v4);
  }

  sub_27149DC38(&v3, &v4);
}

void sub_2713AD000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271134CBC(v3 + 16);
  sub_2711B039C(va);
  _Unwind_Resume(a1);
}

void sub_2713AD020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2711B039C(va);
  _Unwind_Resume(a1);
}

void *sub_2713AD034(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D2B8, 0);
  if (result)
  {

    return sub_27149F9F0(a1, result);
  }

  return result;
}

void sub_2713AD15C(uint64_t a1)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = 0;
  v9 = &v10;
  v3 = *(a1 + 200);
  v4 = (a1 + 208);
  if (v3 != (a1 + 208))
  {
    do
    {
      sub_2711B1344(&v9, &v10, v3 + 4, (v3 + 4));
      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  v5 = *(a1 + 192);
  if (v5 == 2)
  {
    sub_271399EB0((a1 + 16), &v12);
  }

  else if (v5 == 1)
  {
    sub_2713DA430(a1 + 16, &v12);
  }

  else
  {
    if (v5)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v12);
  }

  v14 = &unk_288131350;
  v15 = &unk_288131398;
  v16 = v9;
  v17[0] = v10;
  v17[1] = v11;
  if (v11)
  {
    *(v10 + 16) = v17;
    v9 = &v10;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v16 = v17;
  }

  v18 = v12;
  sub_27113523C(v19, &v13);
  v14 = &unk_28810C600;
  operator new();
}

void sub_2713AD5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  (*(*v38 + 8))(v38, a2, a3, a4, a5, a6, a7, a8);
  sub_2714A9210(va);
  sub_271134CBC(v39 + 16);
  sub_271167834(&a10, a11);
  _Unwind_Resume(a1);
}

void *sub_2713AD678(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D1E8, 0);
  if (result)
  {

    return sub_2714A9280(a1, result);
  }

  return result;
}

void sub_2713AD7A0(uint64_t a1)
{
  v19[25] = *MEMORY[0x277D85DE8];
  sub_2714B1860(v4, (a1 + 200));
  LOBYTE(v6[0]) = 0;
  v8 = 0;
  if (*(a1 + 248) == 1)
  {
    if (*(a1 + 247) < 0)
    {
      sub_271127178(v6, *(a1 + 224), *(a1 + 232));
    }

    else
    {
      *v6 = *(a1 + 224);
      v7 = *(a1 + 240);
    }

    v8 = 1;
  }

  v3 = *(a1 + 192);
  if (v3 == 2)
  {
    sub_271399EB0((a1 + 16), &v9);
  }

  else if (v3 == 1)
  {
    sub_2713DA430(a1 + 16, &v9);
  }

  else
  {
    if (v3)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v9);
  }

  v11 = &unk_288131B88;
  v12 = &unk_288131BD0;
  *v13 = *v4;
  v14 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  LOBYTE(v15) = 0;
  v17 = 0;
  if (v8 == 1)
  {
    v15 = *v6;
    v16 = v7;
    v6[1] = 0;
    v7 = 0;
    v6[0] = 0;
    v17 = 1;
  }

  v18 = v9;
  sub_27113523C(v19, &v10);
  v11 = &unk_28810C648;
  operator new();
}

void sub_2713ADCB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a9);
  _Unwind_Resume(a1);
}

void sub_2713ADCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  (*(*v43 + 8))(v43, a2, a3, a4, a5, a6, a7, a8);
  sub_2714B0A3C(&a43);
  sub_271134CBC(v44 + 16);
  sub_2713B2190(&a9);
  _Unwind_Resume(a1);
}

void *sub_2713ADD88(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D200, 0);
  if (result)
  {

    return sub_2714B1990(a1, result);
  }

  return result;
}

void sub_2713ADEB0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v20[25] = *MEMORY[0x277D85DE8];
  if (*(a1 + 248) == 1)
  {
    v3 = *(a1 + 208);
    v8 = *(a1 + 216);
    v9 = *(a1 + 224);
    *(&v13 + 7) = *(a1 + 232);
    HIBYTE(v13) = *(a1 + 240);
    v4 = v3 & 0xFFFFFFFFFFFFFF00;
    v12 = v13;
    v5 = v3;
    v6 = 1;
    v7 = *(a1 + 192);
    if (v7 != 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v6 = 0;
    v7 = *(a1 + 192);
    if (v7 != 2)
    {
LABEL_3:
      if (v7 == 1)
      {
        sub_2713DA430(a1 + 16, &v10);
      }

      else
      {
        if (v7)
        {
          sub_2711308D4();
        }

        sub_2713A3334(a1 + 16, &v10);
      }

LABEL_9:
      *&v13 = &unk_288131C18;
      *(&v13 + 1) = &unk_288131C60;
      v14 = v4 | v5;
      v15 = v8;
      v16 = v9;
      v17 = v12;
      v18 = v6;
      v19 = v10;
      sub_27113523C(v20, &v11);
      *&v13 = &unk_28810C5B8;
      sub_2714B849C(a2, &v13);
    }
  }

  sub_271399EB0((a1 + 16), &v10);
  goto LABEL_9;
}

void sub_2713AE238(_Unwind_Exception *a1)
{
  sub_271134CBC(v2 + 80);
  sub_271134CBC(v1 + 16);
  _Unwind_Resume(a1);
}

void *sub_2713AE270(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D1D0, 0);
  if (result)
  {

    return sub_2714B9D68(a1, result);
  }

  return result;
}

uint64_t sub_2713AE358(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
      v4 = *a1;
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 1);
          v3 -= 3;
          if (v5 < 0)
          {
            operator delete(*v3);
          }
        }

        while (v3 != v2);
        v4 = *a1;
      }

      *(a1 + 8) = v2;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t sub_2713AE3D8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 != -1)
  {
    (off_2881318A0[v2])(&v4, a1);
  }

  *(a1 + 64) = -1;
  return a1;
}

void sub_2713AE434(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_2713AE4B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t *sub_2713AE52C(uint64_t *a1)
{
  v2 = a1[44];
  if (v2)
  {
    a1[45] = v2;
    v3 = (a1[46] - v2) >> 2;
    v33 = v2;
    v34 = v3;
    v4 = *(a1 + 95);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_2881318B0[v4])(&v35, a1 + 47);
  }

  v5 = a1[36];
  if (v5)
  {
    a1[37] = v5;
    v6 = -1431655765 * ((a1[38] - v5) >> 2);
    v33 = v5;
    v34 = v6;
    v7 = *(a1 + 79);
    if (v7 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_2881318C0[v7])(&v35, a1 + 39);
  }

  v8 = a1[32];
  if (v8)
  {
    a1[33] = v8;
    v9 = (a1[34] - v8) >> 3;
    v33 = v8;
    v34 = v9;
    v10 = *(a1 + 71);
    if (v10 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_2881318D0[v10])(&v35, a1 + 35);
  }

  v11 = a1[28];
  if (v11)
  {
    a1[29] = v11;
    v12 = (a1[30] - v11) >> 3;
    v33 = v11;
    v34 = v12;
    v13 = *(a1 + 63);
    if (v13 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_2881318E0[v13])(&v35, a1 + 31);
  }

  v14 = a1[24];
  if (v14)
  {
    a1[25] = v14;
    v15 = -1431655765 * ((a1[26] - v14) >> 2);
    v33 = v14;
    v34 = v15;
    v16 = *(a1 + 55);
    if (v16 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_2881318C0[v16])(&v35, a1 + 27);
  }

  v17 = a1[20];
  if (v17)
  {
    a1[21] = v17;
    v18 = *(a1 + 44) - v17;
    v33 = v17;
    v34 = v18;
    v19 = *(a1 + 47);
    if (v19 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_2881318F0[v19])(&v35, a1 + 23);
  }

  v20 = a1[15];
  if (v20)
  {
    a1[16] = v20;
    v21 = *(a1 + 34) - v20;
    v33 = v20;
    v34 = v21;
    v22 = *(a1 + 37);
    if (v22 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_2881318F0[v22])(&v35, a1 + 18);
  }

  v23 = a1[10];
  if (v23)
  {
    a1[11] = v23;
    v24 = -1431655765 * ((a1[12] - v23) >> 2);
    v33 = v23;
    v34 = v24;
    v25 = *(a1 + 27);
    if (v25 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288131900[v25])(&v35, a1 + 13);
  }

  v26 = a1[5];
  if (v26)
  {
    a1[6] = v26;
    v27 = -1431655765 * ((a1[7] - v26) >> 2);
    v33 = v26;
    v34 = v27;
    v28 = *(a1 + 17);
    if (v28 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288131900[v28])(&v35, a1 + 8);
  }

  v29 = *a1;
  if (*a1)
  {
    a1[1] = v29;
    v30 = -1431655765 * ((a1[2] - v29) >> 2);
    v33 = v29;
    v34 = v30;
    v31 = *(a1 + 7);
    if (v31 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288131900[v31])(&v35, a1 + 3);
  }

  return a1;
}

uint64_t *sub_2713AE8DC(uint64_t *a1)
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
    (off_2881318C0[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_2713AE96C(uint64_t *a1)
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
    (off_2881318D0[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_2713AE9F0(uint64_t *a1)
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
    (off_2881318E0[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_2713AEA74(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = *(a1 + 4) - v2;
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v8 = &v6;
    (off_2881318F0[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_2713AEAF4(uint64_t *a1)
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
    (off_288131900[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_2713AEB84(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = (a1[2] - v2) >> 2;
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v8 = &v6;
    (off_2881318B0[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t sub_2713AEC14(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, 12 * *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

uint64_t sub_2713AEC9C(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, 8 * *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

uint64_t sub_2713AED20(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, 8 * *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

uint64_t sub_2713AEDA4(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, 12 * *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

void sub_2713AEE20(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 168) == 1)
  {
    v3 = *(a2 + 144);
    if (v3)
    {
      v4 = *(a2 + 152);
      v5 = *(a2 + 144);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = *(a2 + 144);
      }

      *(a2 + 152) = v3;
      operator delete(v5);
    }
  }

  if (*(a2 + 136) == 1 && *(a2 + 135) < 0)
  {
    operator delete(*(a2 + 112));
  }

  if (*(a2 + 104) == 1 && *(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    v7 = *(a2 + 24);

    operator delete(v7);
  }
}

void sub_2713AEF0C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 168) == 1)
  {
    v3 = *(a2 + 144);
    if (v3)
    {
      v4 = *(a2 + 152);
      v5 = *(a2 + 144);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = *(a2 + 144);
      }

      *(a2 + 152) = v3;
      operator delete(v5);
    }
  }

  if (*(a2 + 136) == 1 && *(a2 + 135) < 0)
  {
    operator delete(*(a2 + 112));
  }

  if (*(a2 + 104) == 1 && *(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    v7 = *(a2 + 24);

    operator delete(v7);
  }
}

void sub_2713AEFF8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 168) == 1)
  {
    v3 = *(a2 + 144);
    if (v3)
    {
      v4 = *(a2 + 152);
      v5 = *(a2 + 144);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = *(a2 + 144);
      }

      *(a2 + 152) = v3;
      operator delete(v5);
    }
  }

  if (*(a2 + 136) == 1 && *(a2 + 135) < 0)
  {
    operator delete(*(a2 + 112));
  }

  if (*(a2 + 104) == 1 && *(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    v7 = *(a2 + 24);

    operator delete(v7);
  }
}

uint64_t sub_2713AF0E4(uint64_t result)
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

uint64_t sub_2713AF15C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v2(0, a1 + 8, 0, 0, 0);
  }

  return a1;
}

uint64_t sub_2713AF1A4(uint64_t a1)
{
  *a1 = &unk_288131CA8;
  *(a1 + 8) = &unk_288131D08;
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_2713AF24C(uint64_t a1)
{
  *a1 = &unk_288131CA8;
  *(a1 + 8) = &unk_288131D08;
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40B4DE50DDLL);
}

void sub_2713AF308(uint64_t a1)
{
  *(a1 - 8) = &unk_288131CA8;
  *a1 = &unk_288131D08;
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v4, a1 + 8);
  }

  *(a1 + 184) = -1;
}

uint64_t sub_2713AF3AC(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_288131CA8;
  *a1 = &unk_288131D08;
  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 184);
  if (v4 != -1)
  {
    (off_288131910[v4])(&v6, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40B4DE50DDLL);
}

uint64_t sub_2713AF468(uint64_t a1)
{
  *a1 = &unk_28810B3E0;
  *(a1 + 8) = &unk_28810B440;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713AF558(uint64_t a1)
{
  *a1 = &unk_28810B3E0;
  *(a1 + 8) = &unk_28810B440;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713AF668(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B3E0;
  *a1 = &unk_28810B440;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713AF754(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B3E0;
  *a1 = &unk_28810B440;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713AF86C(uint64_t a1)
{
  *a1 = &unk_28810B530;
  *(a1 + 8) = &unk_28810B590;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713AF95C(uint64_t a1)
{
  *a1 = &unk_28810B530;
  *(a1 + 8) = &unk_28810B590;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713AFA6C(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B530;
  *a1 = &unk_28810B590;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713AFB58(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B530;
  *a1 = &unk_28810B590;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713AFC70(uint64_t a1)
{
  *a1 = &unk_28810B488;
  *(a1 + 8) = &unk_28810B4E8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713AFD60(uint64_t a1)
{
  *a1 = &unk_28810B488;
  *(a1 + 8) = &unk_28810B4E8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}