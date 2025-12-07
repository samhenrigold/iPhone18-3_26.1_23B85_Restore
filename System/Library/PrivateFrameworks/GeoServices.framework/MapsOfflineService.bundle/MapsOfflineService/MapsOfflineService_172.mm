void sub_A7DAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_A7DB8C(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_49D4();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_A7E418(uint64_t a1)
{
  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  v2 = *(a1 + 456);
  if (v2)
  {
    *(a1 + 464) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 432);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 408);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 352);
  if (v5)
  {
    *(a1 + 360) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 328);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 304);
  if (v7)
  {
    *(a1 + 312) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 280);
  if (v8)
  {
    *(a1 + 288) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 256);
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(a1 + 232);
  if (v10)
  {
    *(a1 + 240) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 208);
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 176);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(a1 + 152);
  if (v13)
  {
    *(a1 + 160) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 128);
  if (v14)
  {
    *(a1 + 136) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 56);
  if (!v15 || atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  return a1;
}

void *sub_A7E55C(void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_A7E5B0(v2);
    operator delete();
  }

  return a1;
}

void *sub_A7E5B0(void *a1)
{
  sub_A7E418((a1 + 178));
  sub_A40284((a1 + 85));
  v2 = a1[84];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[78];
  if (v3)
  {
    a1[79] = v3;
    operator delete(v3);
  }

  v4 = a1[77];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[63];
  if (v5)
  {
    a1[64] = v5;
    operator delete(v5);
  }

  v6 = a1[62];
  if (v6)
  {
    free(v6);
  }

  sub_A37AFC((a1 + 19));
  return a1;
}

void *sub_A7E66C(void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_A7E6C0(v2);
    operator delete();
  }

  return a1;
}

void *sub_A7E6C0(void *a1)
{
  sub_A7E7F4((a1 + 178));
  sub_A40284((a1 + 85));
  v2 = a1[84];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[78];
  if (v3)
  {
    a1[79] = v3;
    operator delete(v3);
  }

  v4 = a1[73];
  if (v4)
  {
    v5 = a1[74];
    v6 = a1[73];
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 2);
        v5 -= 2;
        v7 = v8;
        if (v8)
        {
          free(v7);
          *v5 = 0;
        }
      }

      while (v5 != v4);
      v6 = a1[73];
    }

    a1[74] = v4;
    free(v6);
  }

  v9 = a1[63];
  if (v9)
  {
    a1[64] = v9;
    operator delete(v9);
  }

  v10 = a1[58];
  if (v10)
  {
    v11 = a1[59];
    v12 = a1[58];
    if (v11 != v10)
    {
      do
      {
        v14 = *(v11 - 2);
        v11 -= 2;
        v13 = v14;
        if (v14)
        {
          free(v13);
          *v11 = 0;
        }
      }

      while (v11 != v10);
      v12 = a1[58];
    }

    a1[59] = v10;
    free(v12);
  }

  sub_A37AFC((a1 + 19));
  return a1;
}

uint64_t sub_A7E7F4(uint64_t a1)
{
  if (*(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  v2 = *(a1 + 520);
  if (v2)
  {
    *(a1 + 528) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 496);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 472);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 416);
  if (v5)
  {
    *(a1 + 424) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 392);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 368);
  if (v7)
  {
    *(a1 + 376) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 344);
  if (v8)
  {
    *(a1 + 352) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 320);
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(a1 + 296);
  if (v10)
  {
    *(a1 + 304) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 272);
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 240);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(a1 + 216);
  if (v13)
  {
    *(a1 + 224) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 176);
  if (v14)
  {
    v15 = *(a1 + 184);
    v16 = *(a1 + 176);
    if (v15 != v14)
    {
      do
      {
        v18 = *(v15 - 2);
        v15 -= 2;
        v17 = v18;
        if (v18)
        {
          free(v17);
          *v15 = 0;
        }
      }

      while (v15 != v14);
      v16 = *(a1 + 176);
    }

    *(a1 + 184) = v14;
    free(v16);
  }

  v19 = *(a1 + 56);
  if (!v19 || atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  return a1;
}

void sub_A7E978(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int64x2_t *a4@<X8>)
{
  *a4 = 0uLL;
  a4[1].i64[0] = 0;
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*a2 == v4)
  {
    return;
  }

  v90 = *(a2 + 8);
  while (2)
  {
    v6 = *v5;
    v7 = v5[1];
    while (1)
    {
      if (v6 == v7)
      {
        goto LABEL_3;
      }

      v8 = *v6;
      v9 = sub_3A231C(*(a1 + 4184) + 24, __ROR8__(*v6, 32), 0);
      v10 = &v9[-*v9];
      if (*v10 < 5u)
      {
        v11 = 0;
      }

      else
      {
        v11 = *(v10 + 2);
        if (v11)
        {
          v11 += &v9[*&v9[v11]];
        }
      }

      v12 = (v11 + 4 * v8 + 4 + *(v11 + 4 * v8 + 4));
      v13 = (v12 - *v12);
      if (*v13 >= 0x2Bu)
      {
        v14 = v13[21];
        if (v14)
        {
          if (*(v12 + v14) != -1)
          {
            break;
          }
        }
      }

      v6 += 16;
    }

    *v112 = 0u;
    *v113 = 0u;
    v114 = 1065353216;
    *v109 = 0u;
    *v110 = 0u;
    v111 = 1065353216;
    v15 = v5[1] - *v5;
    if ((v15 & 0x7FFFFFFF80) == 0)
    {
      v42 = 0;
      goto LABEL_49;
    }

    v16 = 0;
    v93 = (v15 >> 7);
    v94 = v5;
    do
    {
      v17 = (*v5 + (v16 << 7));
      v18 = v17[2];
      v19 = (v18 - *v18);
      if (*v19 >= 9u)
      {
        v20 = v19[4];
        if (v20)
        {
          if (*(v18 + v20))
          {
            v21 = *v17;
            v22 = __ROR8__(*v17, 32);
            v23 = sub_3A231C(*(a1 + 4184) + 24, v22, 0);
            v24 = &v23[-*v23];
            if (*v24 < 5u)
            {
              v25 = 0;
            }

            else
            {
              v25 = *(v24 + 2);
              if (v25)
              {
                v25 += &v23[*&v23[v25]];
              }
            }

            v26 = (v25 + 4 * v21 + 4 + *(v25 + 4 * v21 + 4));
            v27 = (v26 - *v26);
            if (*v27 < 0x2Bu || (v28 = v27[21]) == 0 || *(v26 + v28) == -1)
            {
LABEL_44:
              v99 = 0.0;
              operator new();
            }

            v29 = sub_3A231C(*(a1 + 4184) + 24, v22, 0);
            v30 = &v29[-*v29];
            v31 = *v30;
            if (v31 <= 4)
            {
              v35 = 0;
              v33 = (4 * v21 + 4 + dword_4[v21]);
              v36 = (v33 - *v33);
              if (*v36 < 0x2Bu)
              {
                goto LABEL_39;
              }
            }

            else
            {
              v32 = *(v30 + 2);
              if (*(v30 + 2))
              {
                v32 += &v29[*&v29[v32]];
              }

              v33 = (v32 + 4 * v21 + 4 + *(v32 + 4 * v21 + 4));
              if (v31 >= 0x17 && (v34 = *(v30 + 11)) != 0)
              {
                v35 = &v29[v34 + *&v29[v34]];
                v36 = (v33 - *v33);
                if (*v36 < 0x2Bu)
                {
                  goto LABEL_39;
                }
              }

              else
              {
                v35 = 0;
                v36 = (v33 - *v33);
                if (*v36 < 0x2Bu)
                {
                  goto LABEL_39;
                }
              }
            }

            v37 = v36[21];
            if (v37)
            {
              v38 = *(v33 + v37);
LABEL_40:
              v39 = sub_A7F86C(v35, v38);
              v40 = (v39 - *v39);
              if (*v40 >= 5u)
              {
                v41 = v40[2];
                if (v41)
                {
                  if (*(v39 + v41 + *(v39 + v41)))
                  {
                    operator new();
                  }
                }
              }

              goto LABEL_44;
            }

LABEL_39:
            v38 = -1;
            goto LABEL_40;
          }
        }
      }

      v17[14] = v17[13];
      v5 = v94;
      ++v16;
    }

    while (v16 != v93);
    v42 = v113[1];
    v4 = v90;
    if (v110[1] <= &stru_20)
    {
LABEL_49:
      if (v42 > a3)
      {
        goto LABEL_50;
      }

      goto LABEL_113;
    }

LABEL_50:
    if (sub_7E7E4(3u))
    {
      sub_19594F8(&v99);
      v43 = sub_4A5C(&v99, "Too many different boarding restriction ids or groups on trip sequence ", 71);
      v45 = *v5;
      v44 = v5[1];
      sub_19594F8(&v115);
      if (v45 != v44)
      {
        sub_3A25A8(*(a1 + 4184) + 24, __ROR8__(*v45, 32), 0, "trip");
        v46 = sub_2C939C(*(a1 + 4184) + 24, 1u, 0);
        if (!v46 || (v47 = &v46[-*v46], *v47 < 0xDu) || (v48 = *(v47 + 6)) == 0)
        {
LABEL_126:
          exception = __cxa_allocate_exception(0x40uLL);
          v87 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
        }

        v49 = &v46[v48 + *&v46[v48]];
        v50 = &v49[-*v49];
        if (*v50 >= 0xBu)
        {
          v51 = *(v50 + 5);
          if (v51)
          {
            if (v49[v51])
            {
LABEL_58:
              nullsub_1();
            }
          }
        }

        while (1)
        {
          std::ostream::operator<<();
          v45 += 16;
          if (v45 == v44)
          {
            break;
          }

          sub_4A5C(&v115, ", ", 2);
          sub_3A25A8(*(a1 + 4184) + 24, __ROR8__(*v45, 32), 0, "trip");
          v52 = sub_2C939C(*(a1 + 4184) + 24, 1u, 0);
          if (!v52)
          {
            goto LABEL_126;
          }

          v53 = &v52[-*v52];
          if (*v53 < 0xDu)
          {
            goto LABEL_126;
          }

          v54 = *(v53 + 6);
          if (!v54)
          {
            goto LABEL_126;
          }

          v55 = &v52[v54 + *&v52[v54]];
          v56 = &v55[-*v55];
          if (*v56 >= 0xBu)
          {
            v57 = *(v56 + 5);
            if (v57)
            {
              if (v55[v57])
              {
                goto LABEL_58;
              }
            }
          }
        }
      }

      if ((v124 & 0x10) != 0)
      {
        v59 = v123;
        v60 = &v119;
        if (v123 < v120)
        {
          v123 = v120;
          v59 = v120;
          v60 = &v119;
        }
      }

      else
      {
        if ((v124 & 8) == 0)
        {
          v58 = 0;
          v98 = 0;
          goto LABEL_79;
        }

        v59 = v118[2];
        v60 = v118;
      }

      v61 = *v60;
      v58 = v59 - *v60;
      if (v58 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v58 >= 0x17)
      {
        operator new();
      }

      v98 = v59 - *v60;
      if (v58)
      {
        memmove(__dst, v61, v58);
      }

LABEL_79:
      *(__dst + v58) = 0;
      v115 = *&v89;
      *(&v115 + *(*&v89 - 24)) = v88;
      if (v122 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v117);
      std::ostream::~ostream();
      std::ios::~ios();
      if ((v98 & 0x80u) == 0)
      {
        v62 = __dst;
      }

      else
      {
        v62 = __dst[0];
      }

      if ((v98 & 0x80u) == 0)
      {
        v63 = v98;
      }

      else
      {
        v63 = __dst[1];
      }

      v64 = sub_4A5C(v43, v62, v63);
      sub_4A5C(v64, "; dropping restrictions", 23);
      if (v98 < 0)
      {
        operator delete(__dst[0]);
        v65 = v108;
        if ((v108 & 0x10) != 0)
        {
          goto LABEL_92;
        }

LABEL_89:
        if ((v65 & 8) != 0)
        {
          v67 = v102[2];
          v68 = v102;
          goto LABEL_95;
        }

        v66 = 0;
        HIBYTE(v117.__locale_) = 0;
      }

      else
      {
        v65 = v108;
        if ((v108 & 0x10) == 0)
        {
          goto LABEL_89;
        }

LABEL_92:
        v67 = v107;
        v68 = &v103;
        if (v107 < v104)
        {
          v107 = v104;
          v67 = v104;
          v68 = &v103;
        }

LABEL_95:
        v69 = *v68;
        v66 = v67 - *v68;
        if (v66 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v66 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v117.__locale_) = v67 - *v68;
        if (v66)
        {
          memmove(&v115, v69, v66);
        }
      }

      *(&v115 + v66) = 0;
      sub_7E854(&v115, 3u);
      if (SHIBYTE(v117.__locale_) < 0)
      {
        operator delete(v115);
      }

      v99 = v89;
      *(&v99 + *(*&v89 - 24)) = v88;
      if (v106 < 0)
      {
        operator delete(v105);
      }

      std::locale::~locale(&v101);
      std::ostream::~ostream();
      std::ios::~ios();
    }

    v71 = *v5;
    v70 = v5[1];
    if (*v5 != v70)
    {
      v72 = v70 - v71 - 128;
      v73 = *v5;
      if (v72 < 0x80)
      {
        goto LABEL_131;
      }

      v74 = (v72 >> 7) + 1;
      v73 = &v71[16 * (v74 & 0x3FFFFFFFFFFFFFELL)];
      v75 = v71 + 30;
      v76 = v74 & 0x3FFFFFFFFFFFFFELL;
      do
      {
        v77 = *(v75 - 1);
        *(v75 - 16) = *(v75 - 17);
        *v75 = v77;
        v75 += 32;
        v76 -= 2;
      }

      while (v76);
      if (v74 != (v74 & 0x3FFFFFFFFFFFFFELL))
      {
LABEL_131:
        do
        {
          *(v73 + 14) = *(v73 + 13);
          v73 += 128;
        }

        while (v73 != v70);
      }
    }

    v42 = 0;
LABEL_113:
    v78 = v110[0];
    if (v110[0])
    {
      do
      {
        v79 = *v78;
        operator delete(v78);
        v78 = v79;
      }

      while (v79);
    }

    v80 = v109[0];
    v109[0] = 0;
    if (v80)
    {
      operator delete(v80);
    }

    v81 = v113[0];
    if (v113[0])
    {
      do
      {
        v82 = *v81;
        operator delete(v81);
        v81 = v82;
      }

      while (v82);
    }

    v83 = v112[0];
    v112[0] = 0;
    if (v83)
    {
      operator delete(v83);
    }

    if (v42)
    {
      v84.i64[0] = vdupq_n_s64(1uLL).u64[0];
      v84.i64[1] = v42;
      *a4 = vaddq_s64(*a4, v84);
      v85 = a4[1].u64[0];
      if (v85 <= v42)
      {
        v85 = v42;
      }

      a4[1].i64[0] = v85;
    }

LABEL_3:
    v5 += 3;
    if (v5 != v4)
    {
      continue;
    }

    break;
  }
}

void sub_A7F738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, void *__p)
{
  sub_1959728(&a28);
  v67 = __p;
  if (__p)
  {
    do
    {
      v68 = *v67;
      operator delete(v67);
      v67 = v68;
    }

    while (v68);
  }

  v69 = a61;
  a61 = 0;
  if (v69)
  {
    operator delete(v69);
  }

  v70 = a66;
  if (a66)
  {
    do
    {
      v71 = *v70;
      operator delete(v70);
      v70 = v71;
    }

    while (v71);
  }

  v72 = a65;
  a65 = 0;
  if (v72)
  {
    operator delete(v72);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A7F86C(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(&v10, " is out of range", &v9);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[a2 + 1] + a1[a2 + 1];
}

void sub_A7F93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_A7F9BC(void *a1, unsigned int *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = (v5 + (((v4 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v4 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v4 + 0x388152A534) ^ 0xDEADBEEFLL;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_31;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v5 + (((v4 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v4 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v4 + 0x388152A534) ^ 0xDEADBEEFLL;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 + 0x7FFFFFFFFFFFFFFFLL);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v11[1];
      if (v14 == v6)
      {
        if (*(v11 + 4) == v4 && *(v11 + 5) == v5)
        {
          return v11;
        }
      }

      else if ((v14 & (*&v7 - 1)) != v9)
      {
        goto LABEL_31;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_31;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_31;
    }
  }

  if (*(v11 + 4) != v4 || *(v11 + 5) != v5)
  {
    goto LABEL_12;
  }

  return v11;
}

uint64_t *sub_A7FD44(void *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (*(v8 + 4) == v3)
        {
          return v8;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_12;
  }

  return v8;
}

void *sub_A80078(void *a1, uint64_t a2)
{
  *a1 = a2;
  sub_A80E80(a1 + 1, 0x7Fu);
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  return a1;
}

void sub_A800B0(uint64_t *a1, unsigned int **a2)
{
  v2 = a1[1];
  a1[5] = a1[4];
  a1[2] = v2;
  *(a1 + 14) = 0;
  v150 = a1 + 8;
  v157 = a1 + 1;
  a1[9] = a1[8];
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v6 = *v3;
      if (v6 != -1 && v6 < ((*(*a1 + 80) - *(*a1 + 72)) >> 3))
      {
        v159[0] = 0;
        v7 = a1[8];
        v8 = (a1[9] - v7) >> 4;
        if (v8 <= v6)
        {
          sub_A81078(v150, v6 - v8 + 1);
          v7 = *v150;
        }

        v9 = v7 + 16 * v6;
        if (*v9 == 0x7FFFFFFF || (*v9 <= 0 ? (v10 = *(v9 + 4) == 0) : (v10 = 0), !v10))
        {
          *v9 = 0;
          *(v9 + 8) = -1;
          sub_A80D80(v157, v6, v159);
        }
      }

      ++v3;
    }

    while (v3 != v4);
    if (*(a1 + 14))
    {
      v11 = xmmword_22A74E0;
      do
      {
        v12 = a1[1];
        v13 = *v12;
        v153 = *(v12 + 1);
        *(a1[4] + 4 * v13) = -1;
        v14 = *(a1 + 14) - 1;
        *(a1 + 14) = v14;
        if (v14)
        {
          v15 = &v12[3 * v14];
          *v12 = *v15;
          *(v12 + 1) = *(v15 + 1);
          v16 = a1[1];
          *(a1[4] + 4 * *v16) = 0;
          v17 = *(a1 + 14);
          if (v17 >= 2)
          {
            v18 = 0;
            v19 = 0;
            v20 = 1;
            do
            {
              v21 = v18 + 5;
              if (v21 >= v17)
              {
                v22 = v17;
              }

              else
              {
                v22 = v21;
              }

              if (v21 <= v20)
              {
                break;
              }

              v23 = v19;
              v24 = *&v16[3 * v19 + 1];
              v25 = HIDWORD(v24);
              v26 = &v16[3 * v20 + 1];
              v19 = -1;
              v27 = v24;
              do
              {
                v28 = v26[1];
                v10 = v28 == v25;
                v29 = v28 < v25;
                if (v10)
                {
                  v29 = *v26 < v27;
                }

                if (v29)
                {
                  v27 = *v26;
                  LODWORD(v25) = v26[1];
                  v19 = v20;
                }

                v26 += 3;
                ++v20;
              }

              while (v20 < v22);
              if (v19 >= v17)
              {
                break;
              }

              v30 = &v16[3 * v19];
              v31 = 12 * v23;
              v32 = v16 + v31;
              v33 = *v30;
              *v30 = *v32;
              *v32 = v33;
              v34 = *(v30 + 1);
              *(v30 + 1) = v24;
              *(v32 + 4) = v34;
              v16 = a1[1];
              v35 = v16[3 * v19];
              v36 = a1[4];
              v37 = *(v16 + v31);
              LODWORD(v31) = *(v36 + 4 * v35);
              *(v36 + 4 * v35) = *(v36 + 4 * v37);
              *(v36 + 4 * v37) = v31;
              v18 = 4 * v19;
              v20 = (4 * v19) | 1;
              v17 = *(a1 + 14);
            }

            while (v20 < v17);
          }
        }

        a1[2] -= 12;
        v38 = *a1;
        v39 = *(*a1 + 72);
        v40 = *(*a1 + 80);
        v41 = v40 - v39;
        v42 = (v40 - v39) >> 3;
        if (v13 >= v42)
        {
LABEL_138:
          exception = __cxa_allocate_exception(0x40uLL);
          v149 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
        }

        if (v13 >= v41 >> 3)
        {
LABEL_137:
          v147 = __cxa_allocate_exception(0x10uLL);
          sub_195A2D8(v147, "key out of range");
        }

        v152 = 8 * v13;
        v43 = (*(v38 + 96) + 28 * *(v39 + 8 * v13));
        v151 = v153 & 0xFFFFFFFF00000000;
        v154 = v13;
        while (1)
        {
          if (v13 >= v41 >> 3)
          {
            goto LABEL_137;
          }

          v44 = *(v38 + 96);
          if (v43 == (v44 + 28 * *(v39 + 8 * v13 + 4)))
          {
            break;
          }

          v45 = *v43;
          if (v45 < v42)
          {
            v46 = *(v43 + 1);
            if (v46 != 0x7FFFFFFF)
            {
              if (v13 >= (v40 - v39) >> 3)
              {
                goto LABEL_137;
              }

              v47 = *(v39 + v152);
              v49 = a1[8];
              v48 = a1[9];
              v50 = (v48 - v49) >> 4;
              v158 = v43;
              if (v50 <= v45)
              {
                v51 = v45 + 1;
                v52 = v45 + 1 - v50;
                v53 = a1[10];
                if (v52 > (v53 - v48) >> 4)
                {
                  v54 = v53 - v49;
                  if (v54 >> 3 > v51)
                  {
                    v51 = v54 >> 3;
                  }

                  if (v54 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v55 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v55 = v51;
                  }

                  if (!(v55 >> 60))
                  {
                    operator new();
                  }

                  goto LABEL_140;
                }

                v56 = v48 + 16 * v52;
                v57 = 16 * v45 - (v48 - v49);
                v58 = a1[9];
                v13 = v154;
                if (v57 < 0x70)
                {
                  goto LABEL_146;
                }

                v59 = (v57 >> 4) + 1;
                v58 = (v48 + 16 * (v59 & 0x1FFFFFFFFFFFFFF8));
                v60 = (v48 + 64);
                v61 = v59 & 0x1FFFFFFFFFFFFFF8;
                do
                {
                  *(v60 - 2) = v11;
                  *(v60 - 1) = v11;
                  *(v60 - 4) = v11;
                  *(v60 - 3) = v11;
                  v60[2] = v11;
                  v60[3] = v11;
                  *v60 = v11;
                  v60[1] = v11;
                  v60 += 8;
                  v61 -= 8;
                }

                while (v61);
                if (v59 != (v59 & 0x1FFFFFFFFFFFFFF8))
                {
LABEL_146:
                  do
                  {
                    *v58++ = v11;
                  }

                  while (v58 != v56);
                }

                a1[9] = v56;
              }

              v62 = v46 + v153;
              v63 = (v46 + v151) >> 32;
              v64 = v49 + 16 * v45;
              if (*v64 == 0x7FFFFFFF)
              {
LABEL_59:
                v155 = (v46 + v151) >> 32;
                v156 = (v46 + v151) & 0xFFFFFFFF00000000 | (v46 + v153);
                *v64 = v156;
                *(v64 + 8) = v13;
                *(v64 + 12) = -1227133513 * ((v43 - v44 + -28 * v47) >> 2);
                v65 = a1[4];
                v66 = a1[5];
                v67 = v66 - v65;
                v68 = (v66 - v65) >> 2;
                if (v68 > v45)
                {
                  v69 = *&v65[4 * v45];
                  if (v69 == -1)
                  {
LABEL_95:
                    LODWORD(v159[0]) = v45;
                    *(v159 + 4) = v156;
                    v99 = a1[2];
                    v100 = a1[3];
                    if (v99 >= v100)
                    {
                      v103 = *v157;
                      v104 = 0xAAAAAAAAAAAAAAABLL * ((v99 - *v157) >> 2);
                      v105 = v104 + 1;
                      if (v104 + 1 > 0x1555555555555555)
                      {
                        sub_1794();
                      }

                      v106 = 0xAAAAAAAAAAAAAAABLL * ((v100 - v103) >> 2);
                      if (2 * v106 > v105)
                      {
                        v105 = 2 * v106;
                      }

                      if (v106 >= 0xAAAAAAAAAAAAAAALL)
                      {
                        v107 = 0x1555555555555555;
                      }

                      else
                      {
                        v107 = v105;
                      }

                      if (v107)
                      {
                        if (v107 <= 0x1555555555555555)
                        {
                          operator new();
                        }

                        goto LABEL_140;
                      }

                      v130 = 4 * ((v99 - *v157) >> 2);
                      *v130 = v159[0];
                      *(v130 + 8) = v155;
                      v101 = 12 * v104 + 12;
                      v131 = (12 * v104 - (v99 - v103));
                      memcpy(v131, v103, v99 - v103);
                      a1[1] = v131;
                      a1[2] = v101;
                      a1[3] = 0;
                      if (v103)
                      {
                        operator delete(v103);
                      }

                      v11 = xmmword_22A74E0;
                    }

                    else
                    {
                      *v99 = v159[0];
                      *(v99 + 8) = v155;
                      v101 = v99 + 12;
                    }

                    v13 = v154;
                    v43 = v158;
                    a1[2] = v101;
                    v132 = *(a1 + 14);
                    *(a1[4] + 4 * v45) = v132;
                    *(a1 + 14) = v132 + 1;
                    if (v132)
                    {
                      v133 = *v157;
                      do
                      {
                        v134 = v132 - 1;
                        v135 = (v132 - 1) >> 2;
                        v136 = (v133 + 12 * v135);
                        v137 = (v133 + 12 * v132);
                        v138 = v136[2];
                        v139 = v137[2];
                        v10 = v138 == v139;
                        v140 = v138 < v139;
                        if (v10)
                        {
                          v140 = v136[1] < v137[1];
                        }

                        if (v140)
                        {
                          break;
                        }

                        v141 = *v137;
                        *v137 = *v136;
                        *v136 = v141;
                        v142 = *(v137 + 1);
                        *(v137 + 1) = *(v136 + 1);
                        *(v136 + 1) = v142;
                        v133 = a1[1];
                        v143 = *(v133 + 12 * v132);
                        v144 = a1[4];
                        v145 = *(v133 + 12 * v135);
                        v146 = *(v144 + 4 * v143);
                        *(v144 + 4 * v143) = *(v144 + 4 * v145);
                        *(v144 + 4 * v145) = v146;
                        v132 = v134 >> 2;
                      }

                      while (v134 >= 4);
                    }
                  }

                  else
                  {
                    v70 = *v157 + 12 * v69;
                    v71 = *(v70 + 4);
                    *(v70 + 4) = v156;
                    v72 = v62 < v71;
                    if (v155 != HIDWORD(v71))
                    {
                      v72 = v155 < HIDWORD(v71);
                    }

                    if (v72)
                    {
                      v13 = v154;
                      if (v69)
                      {
                        v73 = *v157;
                        do
                        {
                          v74 = v69 - 1;
                          v75 = (v69 - 1) >> 2;
                          v76 = (v73 + 12 * v75);
                          v77 = (v73 + 12 * v69);
                          v78 = v76[2];
                          v79 = v77[2];
                          v10 = v78 == v79;
                          v80 = v78 < v79;
                          if (v10)
                          {
                            v80 = v76[1] < v77[1];
                          }

                          if (v80)
                          {
                            break;
                          }

                          v81 = *v77;
                          *v77 = *v76;
                          *v76 = v81;
                          v82 = *(v77 + 1);
                          *(v77 + 1) = *(v76 + 1);
                          *(v76 + 1) = v82;
                          v73 = a1[1];
                          v83 = *(v73 + 12 * v69);
                          v84 = a1[4];
                          v85 = *(v73 + 12 * v75);
                          v86 = *(v84 + 4 * v83);
                          *(v84 + 4 * v83) = *(v84 + 4 * v85);
                          *(v84 + 4 * v85) = v86;
                          v69 = v74 >> 2;
                        }

                        while (v74 >= 4);
                      }
                    }

                    else
                    {
                      v108 = (4 * v69) | 1;
                      v109 = *(a1 + 14);
                      v13 = v154;
                      if (v108 < v109)
                      {
                        v110 = 4 * v69;
                        do
                        {
                          v111 = v110 + 5;
                          if (v111 >= v109)
                          {
                            v112 = v109;
                          }

                          else
                          {
                            v112 = v111;
                          }

                          if (v111 <= v108)
                          {
                            break;
                          }

                          v113 = *v157;
                          v114 = v69;
                          v115 = *(*v157 + 12 * v69 + 4);
                          v116 = HIDWORD(v115);
                          v117 = (*v157 + 12 * v108 + 4);
                          v69 = -1;
                          v118 = v115;
                          do
                          {
                            v119 = v117[1];
                            v10 = v119 == v116;
                            v120 = v119 < v116;
                            if (v10)
                            {
                              v120 = *v117 < v118;
                            }

                            if (v120)
                            {
                              v118 = *v117;
                              LODWORD(v116) = v117[1];
                              v69 = v108;
                            }

                            v117 += 3;
                            ++v108;
                          }

                          while (v108 < v112);
                          if (v69 >= v109)
                          {
                            break;
                          }

                          v121 = v113 + 12 * v69;
                          v122 = 12 * v114;
                          v123 = v113 + v122;
                          v124 = *v121;
                          *v121 = *v123;
                          *v123 = v124;
                          v125 = *(v121 + 4);
                          *(v121 + 4) = v115;
                          *(v123 + 4) = v125;
                          v126 = a1[1];
                          v127 = *(v126 + 12 * v69);
                          v128 = a1[4];
                          v129 = *(v126 + v122);
                          LODWORD(v123) = *(v128 + 4 * v127);
                          *(v128 + 4 * v127) = *(v128 + 4 * v129);
                          *(v128 + 4 * v129) = v123;
                          v110 = 4 * v69;
                          v108 = (4 * v69) | 1;
                          v109 = *(a1 + 14);
                        }

                        while (v108 < v109);
                      }
                    }
                  }

                  goto LABEL_37;
                }

                while (2)
                {
                  v87 = (v67 >> 1) | 1;
                  if (v68 <= v67 >> 1)
                  {
                    v89 = v87 - v68;
                    v90 = a1[6];
                    if (v89 <= (v90 - v66) >> 2)
                    {
                      bzero(v66, 4 * v89);
                      v11 = xmmword_22A74E0;
                      v66 += 4 * v89;
                      a1[5] = v66;
                      v67 = v66 - v65;
                      v88 = (v66 - v65) >> 2;
                      if (v68 >= v88)
                      {
                        goto LABEL_71;
                      }
                    }

                    else
                    {
                      v91 = v66 - v65;
                      v92 = (v66 - v65) >> 2;
                      v93 = v92 + v89;
                      if ((v92 + v89) >> 62)
                      {
                        sub_1794();
                      }

                      v94 = v90 - v65;
                      if (v94 >> 1 > v93)
                      {
                        v93 = v94 >> 1;
                      }

                      if (v94 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v95 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v95 = v93;
                      }

                      if (v95)
                      {
                        if (!(v95 >> 62))
                        {
                          operator new();
                        }

LABEL_140:
                        sub_1808();
                      }

                      v96 = v92;
                      v97 = 4 * v92;
                      bzero((4 * v92), 4 * v89);
                      v66 = (4 * v92 + 4 * v89);
                      v98 = (v97 - 4 * v96);
                      memcpy(v98, v65, v91);
                      a1[4] = v98;
                      a1[5] = v66;
                      a1[6] = 0;
                      if (!v65)
                      {
                        v65 = v98;
                        v11 = xmmword_22A74E0;
                        v67 = v66 - v98;
                        v88 = (v66 - v98) >> 2;
                        if (v68 < v88)
                        {
                          break;
                        }

                        goto LABEL_71;
                      }

                      operator delete(v65);
                      v65 = a1[4];
                      v66 = a1[5];
                      v11 = xmmword_22A74E0;
                      v67 = v66 - v65;
                      v88 = (v66 - v65) >> 2;
                      if (v68 >= v88)
                      {
                        goto LABEL_71;
                      }
                    }
                  }

                  else
                  {
                    if (v87 >= v68)
                    {
                      v67 = v66 - v65;
                      v88 = (v66 - v65) >> 2;
                      if (v68 < v88)
                      {
                        break;
                      }

LABEL_71:
                      v68 = v88;
                      if (v88 > v45)
                      {
                        goto LABEL_95;
                      }

                      continue;
                    }

                    v66 = &v65[4 * v87];
                    a1[5] = v66;
                    v67 = 4 * v87;
                    v88 = (4 * v87) >> 2;
                    if (v68 >= v88)
                    {
                      goto LABEL_71;
                    }
                  }

                  break;
                }

                memset(&v65[4 * v68], 255, v67 - 4 * v68);
                v11 = xmmword_22A74E0;
                goto LABEL_71;
              }

              v102 = *(v64 + 4);
              if (v102 == v63)
              {
                if (*v64 > v62)
                {
                  goto LABEL_59;
                }
              }

              else if (v102 > v63)
              {
                goto LABEL_59;
              }
            }
          }

LABEL_37:
          v43 += 7;
          v38 = *a1;
          v39 = *(*a1 + 72);
          v40 = *(*a1 + 80);
          v41 = v40 - v39;
          v42 = (v40 - v39) >> 3;
          if (v13 >= v42)
          {
            goto LABEL_138;
          }
        }
      }

      while (*(a1 + 14));
    }
  }
}

uint64_t sub_A80C90(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v2 = a1 + 64;
  v5 = a2;
  v6 = (v4 - v3) >> 4;
  if (v6 <= a2)
  {
    v7 = v2;
    sub_A81078(v2, a2 - v6 + 1);
    v3 = *v7;
  }

  return *(v3 + 16 * v5);
}

uint64_t sub_A80CE0(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v2 = a1 + 64;
  v5 = a2;
  v6 = (v4 - v3) >> 4;
  if (v6 <= a2)
  {
    v7 = v2;
    sub_A81078(v2, a2 - v6 + 1);
    v3 = *v7;
  }

  return *(v3 + 16 * v5 + 8);
}

uint64_t sub_A80D30(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v2 = a1 + 64;
  v5 = a2;
  v6 = (v4 - v3) >> 4;
  if (v6 <= a2)
  {
    v7 = v2;
    sub_A81078(v2, a2 - v6 + 1);
    v3 = *v7;
  }

  return *(v3 + 16 * v5 + 12);
}

void sub_A80D80(uint64_t *result, unsigned int a2, uint64_t a3)
{
  v4 = result[3];
  if (a2 >= ((result[4] - v4) >> 2) || (v5 = *(v4 + 4 * a2), v5 == -1))
  {
    sub_A8125C(result, a2, a3);
  }

  else
  {
    v6 = *result + 12 * v5;
    v8 = *(v6 + 4);
    v7 = *(v6 + 8);
    *(v6 + 4) = *a3;
    LODWORD(v6) = *(a3 + 4);
    v9 = *a3 < v8;
    v10 = v6 == v7;
    v11 = v6 < v7;
    if (v10)
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v5)
      {
        v12 = *result;
        do
        {
          v13 = v5 - 1;
          v14 = (v5 - 1) >> 2;
          v15 = (v12 + 12 * v14);
          v16 = (v12 + 12 * v5);
          v17 = v15[2];
          v18 = v16[2];
          v10 = v17 == v18;
          v19 = v17 < v18;
          if (v10)
          {
            v19 = v15[1] < v16[1];
          }

          if (v19)
          {
            break;
          }

          v20 = *v16;
          *v16 = *v15;
          *v15 = v20;
          v21 = *(v16 + 1);
          *(v16 + 1) = *(v15 + 1);
          *(v15 + 1) = v21;
          v12 = *result;
          v22 = *(*result + 12 * v5);
          v23 = result[3];
          v24 = *(*result + 12 * v14);
          v25 = *(v23 + 4 * v22);
          *(v23 + 4 * v22) = *(v23 + 4 * v24);
          *(v23 + 4 * v24) = v25;
          LODWORD(v5) = v13 >> 2;
        }

        while (v13 >= 4);
      }
    }

    else
    {
      sub_A80F68(result, v5);
    }
  }
}

size_t *sub_A80E80(size_t *a1, unsigned int a2)
{
  *(a1 + 12) = 0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  sub_428E0(a1 + 3, a2);
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) <= 0x7E)
  {
    operator new();
  }

  return a1;
}

void sub_A80F44(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_21E0CA4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_A80F68(uint64_t *a1, uint64_t a2)
{
  v2 = (4 * a2) | 1u;
  v3 = *(a1 + 12);
  if (v2 < v3)
  {
    v4 = 4 * a2;
    do
    {
      if (v4 + 5 >= v3)
      {
        v5 = v3;
      }

      else
      {
        v5 = v4 + 5;
      }

      if (v4 + 5 <= v2)
      {
        break;
      }

      v6 = *a1;
      v7 = *(*a1 + 12 * a2 + 4);
      v8 = HIDWORD(v7);
      v9 = (*a1 + 12 * v2 + 4);
      v10 = 0xFFFFFFFFLL;
      v11 = v7;
      do
      {
        v12 = v9[1];
        v13 = v12 == v8;
        v14 = v12 < v8;
        if (v13)
        {
          v14 = *v9 < v11;
        }

        if (v14)
        {
          v11 = *v9;
          LODWORD(v8) = v9[1];
          v10 = v2;
        }

        v9 += 3;
        v2 = (v2 + 1);
      }

      while (v2 < v5);
      if (v10 >= v3)
      {
        break;
      }

      v15 = (v6 + 12 * v10);
      v16 = 12 * a2;
      v17 = (v6 + v16);
      v18 = *v15;
      *v15 = *v17;
      *v17 = v18;
      v19 = *(v15 + 1);
      *(v15 + 1) = v7;
      *(v17 + 1) = v19;
      v20 = *(*a1 + 12 * v10);
      v21 = a1[3];
      v22 = *(*a1 + v16);
      LODWORD(v17) = *(v21 + 4 * v20);
      *(v21 + 4 * v20) = *(v21 + 4 * v22);
      *(v21 + 4 * v22) = v17;
      v4 = 4 * v10;
      v2 = (4 * v10) | 1u;
      v3 = *(a1 + 12);
      a2 = v10;
    }

    while (v2 < v3);
  }

  return a2;
}

void sub_A81078(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v9 = &v4[a2];
      v10 = (a2 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v10 < 7)
      {
        goto LABEL_33;
      }

      v11 = v10 + 1;
      v12 = &v4[v11 & 0x1FFFFFFFFFFFFFF8];
      v13 = v4 + 4;
      v14 = v11 & 0x1FFFFFFFFFFFFFF8;
      do
      {
        *(v13 - 2) = xmmword_22A74E0;
        *(v13 - 1) = xmmword_22A74E0;
        *(v13 - 4) = xmmword_22A74E0;
        *(v13 - 3) = xmmword_22A74E0;
        v13[2] = xmmword_22A74E0;
        v13[3] = xmmword_22A74E0;
        *v13 = xmmword_22A74E0;
        v13[1] = xmmword_22A74E0;
        v13 += 8;
        v14 -= 8;
      }

      while (v14);
      v4 = v12;
      if (v11 != (v11 & 0x1FFFFFFFFFFFFFF8))
      {
LABEL_33:
        do
        {
          *v4++ = xmmword_22A74E0;
        }

        while (v4 != v9);
      }

      v4 = v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 4;
    v6 = v5 + a2;
    if ((v5 + a2) >> 60)
    {
      sub_1794();
    }

    v7 = v3 - *a1;
    if (v7 >> 3 > v6)
    {
      v6 = v7 >> 3;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v15 = 16 * v5;
    v16 = 16 * v5 + 16 * a2;
    v17 = (a2 - 1) & 0xFFFFFFFFFFFFFFFLL;
    v18 = (16 * v5);
    if (v17 < 7)
    {
      goto LABEL_34;
    }

    v19 = v17 + 1;
    v18 = (v15 + 16 * (v19 & 0x1FFFFFFFFFFFFFF8));
    v20 = (v15 + 64);
    v21 = v19 & 0x1FFFFFFFFFFFFFF8;
    do
    {
      *(v20 - 2) = xmmword_22A74E0;
      *(v20 - 1) = xmmword_22A74E0;
      *(v20 - 4) = xmmword_22A74E0;
      *(v20 - 3) = xmmword_22A74E0;
      v20[2] = xmmword_22A74E0;
      v20[3] = xmmword_22A74E0;
      *v20 = xmmword_22A74E0;
      v20[1] = xmmword_22A74E0;
      v20 += 8;
      v21 -= 8;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFF8))
    {
LABEL_34:
      do
      {
        *v18++ = xmmword_22A74E0;
      }

      while (v18 != v16);
    }

    v22 = *a1;
    v23 = *(a1 + 8) - *a1;
    v24 = v15 - v23;
    memcpy((v15 - v23), *a1, v23);
    *a1 = v24;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

void sub_A8125C(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v6 = a2;
  v8 = a1[3];
  v9 = a1[4];
  v7 = (a1 + 3);
  v10 = v9 - v8;
  v11 = (v9 - v8) >> 2;
  if (v11 <= a2)
  {
    do
    {
      v29 = (v10 >> 1) | 1;
      if (v11 <= v10 >> 1)
      {
        sub_42CC4(v7, v29 - v11);
        v8 = a1[3];
        v9 = a1[4];
        v10 = v9 - v8;
        v30 = (v9 - v8) >> 2;
        if (v11 < v30)
        {
          goto LABEL_17;
        }
      }

      else if (v29 < v11)
      {
        v9 = v8 + 4 * v29;
        a1[4] = v9;
        v10 = 4 * v29;
        v30 = (4 * v29) >> 2;
        if (v11 < v30)
        {
LABEL_17:
          memset((v8 + 4 * v11), 255, v10 - 4 * v11);
        }
      }

      else
      {
        v10 = v9 - v8;
        v30 = (v9 - v8) >> 2;
        if (v11 < v30)
        {
          goto LABEL_17;
        }
      }

      v11 = v30;
    }

    while (v30 <= v6);
  }

  LODWORD(v31) = a2;
  v12 = *a3;
  HIDWORD(v31) = *a3;
  v32 = HIDWORD(v12);
  sub_376F0(a1, &v31);
  v13 = *(a1 + 12);
  *(a1[3] + 4 * v6) = v13;
  *(a1 + 12) = v13 + 1;
  if (v13)
  {
    v14 = *a1;
    do
    {
      v15 = v13 - 1;
      v16 = (v13 - 1) >> 2;
      v17 = (v14 + 12 * v16);
      v18 = (v14 + 12 * v13);
      v19 = v17[2];
      v20 = v18[2];
      v21 = v19 == v20;
      v22 = v19 < v20;
      if (v21)
      {
        v22 = v17[1] < v18[1];
      }

      if (v22)
      {
        break;
      }

      v23 = *v18;
      *v18 = *v17;
      *v17 = v23;
      v24 = *(v18 + 1);
      *(v18 + 1) = *(v17 + 1);
      *(v17 + 1) = v24;
      v14 = *a1;
      v25 = *(*a1 + 12 * v13);
      v26 = a1[3];
      v27 = *(*a1 + 12 * v16);
      v28 = *(v26 + 4 * v25);
      *(v26 + 4 * v25) = *(v26 + 4 * v27);
      *(v26 + 4 * v27) = v28;
      v13 = v15 >> 2;
    }

    while (v15 > 3);
  }
}

void sub_A81424(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v5 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v47 = *(a2 + 40);
  sub_A78D38(a1 + 517, *(a2 + 32), v47, v62);
  v6 = *(v3 + 52);
  if (v6 <= *(v3 + 56))
  {
    v7 = 0;
    v45 = v3;
    v46 = v5;
    while (1)
    {
      v8 = sub_A56F04(v4 + 517, *(v3 + 32), v6, v47);
      v10 = v9;
      v11 = sub_A57920(v4 + 517, *(v3 + 32));
      v12 = (v11 - *v11);
      if (*v12 >= 9u && (v13 = v12[4]) != 0)
      {
        v14 = (v11 + v13 + *(v11 + v13));
      }

      else
      {
        v14 = 0;
      }

      v15 = *(sub_A571D4(v14, v6) + 6);
      v16 = __ROR8__(v8, 32);
      v17 = sub_3A25A8(v4[523] + 24, v16, 0, "trip");
      v18 = (v17 - *v17);
      if (*v18 < 9u)
      {
        LODWORD(v19) = 0;
      }

      else
      {
        v19 = v18[4];
        if (v19)
        {
          LODWORD(v19) = *(v17 + v19);
        }
      }

      v20 = v19 + ~v15;
      v21 = (*(v3 + 56) - v6) >= v20 ? v20 : *(v3 + 56) - v6;
      v48 = v21 + v15;
      if (!v21)
      {
        break;
      }

      v22 = v5[2];
      if (v7 < v22)
      {
        *v7 = v8;
        *(v7 + 8) = v10;
        *(v7 + 12) = v15;
        *(v7 + 16) = v48;
        v7 += 20;
      }

      else
      {
        v23 = *v5;
        v24 = v7 - *v5;
        v25 = 0xCCCCCCCCCCCCCCCDLL * (v24 >> 2) + 1;
        if (v25 > 0xCCCCCCCCCCCCCCCLL)
        {
          sub_1794();
        }

        v26 = v4;
        v27 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - v23) >> 2);
        if (2 * v27 > v25)
        {
          v25 = 2 * v27;
        }

        if (v27 >= 0x666666666666666)
        {
          v28 = 0xCCCCCCCCCCCCCCCLL;
        }

        else
        {
          v28 = v25;
        }

        if (v28)
        {
          if (v28 <= 0xCCCCCCCCCCCCCCCLL)
          {
            operator new();
          }

          sub_1808();
        }

        v29 = 4 * (v24 >> 2);
        *v29 = v8;
        *(v29 + 8) = v10;
        *(v29 + 12) = v15;
        *(v29 + 16) = v48;
        v7 = v29 + 20;
        v30 = v29 - v24;
        memcpy((v29 - v24), v23, v24);
        v5 = v46;
        *v46 = v30;
        v46[1] = v7;
        v46[2] = 0;
        if (v23)
        {
          operator delete(v23);
        }

        v4 = v26;
        v3 = v45;
      }

      v5[1] = v7;
      v6 += v21 + 1;
      if (v6 > *(v3 + 56))
      {
        goto LABEL_52;
      }
    }

    if (!sub_7E7E4(1u))
    {
      goto LABEL_51;
    }

    sub_19594F8(&v51);
    v31 = sub_4A5C(&v51, "Block transfer unpacking on SPA journey leg failed due to travel between the same stop indices on a journey leg for trip ", 121);
    sub_A81A58(v4 + 523, v8);
    v33 = std::ostream::operator<<(v31, v32);
    v34 = sub_4A5C(v33, " (line ", 7);
    v35 = sub_3A25A8(v4[523] + 24, v16, 0, "trip");
    v36 = (v35 - *v35);
    if (*v36 >= 7u && (v37 = v36[3]) != 0)
    {
      v38 = *(v35 + v37 + 4) | (*(v35 + v37) << 32);
    }

    else
    {
      v38 = 0xFFFFFFFFLL;
    }

    sub_A81B90(v4 + 507, v38);
    v40 = std::ostream::operator<<(v34, v39);
    v41 = sub_4A5C(v40, ") from index ", 13);
    std::ostream::operator<<();
    sub_4A5C(v41, " to ", 4);
    std::ostream::operator<<();
    if ((v61 & 0x10) != 0)
    {
      v43 = v60;
      if (v60 < v57)
      {
        v60 = v57;
        v43 = v57;
      }

      v44 = v56;
      v42 = v43 - v56;
      if (v43 - v56 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if ((v61 & 8) == 0)
      {
        v42 = 0;
        v50 = 0;
LABEL_46:
        *(&__dst + v42) = 0;
        sub_7E854(&__dst, 1u);
        if (v50 < 0)
        {
          operator delete(__dst);
        }

        if (v59 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v53);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_51:
        v5[1] = *v5;
        goto LABEL_52;
      }

      v44 = v54;
      v42 = v55 - v54;
      if ((v55 - v54) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_56:
        sub_3244();
      }
    }

    if (v42 >= 0x17)
    {
      operator new();
    }

    v50 = v42;
    if (v42)
    {
      memmove(&__dst, v44, v42);
    }

    goto LABEL_46;
  }

LABEL_52:
  if (v62[0])
  {
    v62[1] = v62[0];
    operator delete(v62[0]);
  }
}

void sub_A819BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a19);
  v21 = *(v19 - 112);
  if (v21)
  {
    *(v19 - 104) = v21;
    operator delete(v21);
    v22 = *a10;
    if (!*a10)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v22 = *a10;
    if (!*a10)
    {
      goto LABEL_5;
    }
  }

  *(a10 + 8) = v22;
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_A81A58(void *a1, uint64_t a2)
{
  v3 = sub_3A25A8(*a1 + 24, __ROR8__(a2, 32), 0, "trip");
  v4 = (v3 - *v3);
  if (*v4 >= 5u && v4[2])
  {
    v5 = sub_2C939C(*a1 + 24, 1u, 0);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = sub_2C939C(*a1 + 24, 1u, 0);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  v6 = &v5[-*v5];
  if (*v6 < 0xDu || (v7 = *(v6 + 6)) == 0)
  {
LABEL_15:
    exception = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v8 = &v5[v7 + *&v5[v7]];
  v9 = &v8[-*v8];
  if (*v9 >= 0xBu)
  {
    v10 = *(v9 + 5);
    if (v10)
    {
      if (v8[v10])
      {

        nullsub_1();
      }
    }
  }
}

void sub_A81B90(void *a1, uint64_t a2)
{
  v3 = sub_92FC60(*a1 + 24, __ROR8__(a2, 32), 0, "line");
  v4 = (v3 - *v3);
  if (*v4 >= 5u && v4[2])
  {
    v5 = sub_2C939C(*a1 + 24, 1u, 0);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = sub_2C939C(*a1 + 24, 1u, 0);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  v6 = &v5[-*v5];
  if (*v6 < 0xDu || (v7 = *(v6 + 6)) == 0)
  {
LABEL_15:
    exception = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v8 = &v5[v7 + *&v5[v7]];
  v9 = &v8[-*v8];
  if (*v9 >= 0xBu)
  {
    v10 = *(v9 + 5);
    if (v10)
    {
      if (v8[v10])
      {

        nullsub_1();
      }
    }
  }
}

void sub_A81CC8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v5 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v47 = *(a2 + 36);
  sub_A78D38(a1 + 517, *(a2 + 28), v47, v62);
  v6 = *(v3 + 48);
  if (v6 <= *(v3 + 52))
  {
    v7 = 0;
    v45 = v3;
    v46 = v5;
    while (1)
    {
      v8 = sub_A56F04(v4 + 517, *(v3 + 28), v6, v47);
      v10 = v9;
      v11 = sub_A57920(v4 + 517, *(v3 + 28));
      v12 = (v11 - *v11);
      if (*v12 >= 9u && (v13 = v12[4]) != 0)
      {
        v14 = (v11 + v13 + *(v11 + v13));
      }

      else
      {
        v14 = 0;
      }

      v15 = *(sub_A571D4(v14, v6) + 6);
      v16 = __ROR8__(v8, 32);
      v17 = sub_3A25A8(v4[523] + 24, v16, 0, "trip");
      v18 = (v17 - *v17);
      if (*v18 < 9u)
      {
        LODWORD(v19) = 0;
      }

      else
      {
        v19 = v18[4];
        if (v19)
        {
          LODWORD(v19) = *(v17 + v19);
        }
      }

      v20 = v19 + ~v15;
      v21 = (*(v3 + 52) - v6) >= v20 ? v20 : *(v3 + 52) - v6;
      v48 = v21 + v15;
      if (!v21)
      {
        break;
      }

      v22 = v5[2];
      if (v7 < v22)
      {
        *v7 = v8;
        *(v7 + 8) = v10;
        *(v7 + 12) = v15;
        *(v7 + 16) = v48;
        v7 += 20;
      }

      else
      {
        v23 = *v5;
        v24 = v7 - *v5;
        v25 = 0xCCCCCCCCCCCCCCCDLL * (v24 >> 2) + 1;
        if (v25 > 0xCCCCCCCCCCCCCCCLL)
        {
          sub_1794();
        }

        v26 = v4;
        v27 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - v23) >> 2);
        if (2 * v27 > v25)
        {
          v25 = 2 * v27;
        }

        if (v27 >= 0x666666666666666)
        {
          v28 = 0xCCCCCCCCCCCCCCCLL;
        }

        else
        {
          v28 = v25;
        }

        if (v28)
        {
          if (v28 <= 0xCCCCCCCCCCCCCCCLL)
          {
            operator new();
          }

          sub_1808();
        }

        v29 = 4 * (v24 >> 2);
        *v29 = v8;
        *(v29 + 8) = v10;
        *(v29 + 12) = v15;
        *(v29 + 16) = v48;
        v7 = v29 + 20;
        v30 = v29 - v24;
        memcpy((v29 - v24), v23, v24);
        v5 = v46;
        *v46 = v30;
        v46[1] = v7;
        v46[2] = 0;
        if (v23)
        {
          operator delete(v23);
        }

        v4 = v26;
        v3 = v45;
      }

      v5[1] = v7;
      v6 += v21 + 1;
      if (v6 > *(v3 + 52))
      {
        goto LABEL_52;
      }
    }

    if (!sub_7E7E4(1u))
    {
      goto LABEL_51;
    }

    sub_19594F8(&v51);
    v31 = sub_4A5C(&v51, "Block transfer unpacking on SPA journey leg failed due to travel between the same stop indices on a journey leg for trip ", 121);
    sub_A81A58(v4 + 523, v8);
    v33 = std::ostream::operator<<(v31, v32);
    v34 = sub_4A5C(v33, " (line ", 7);
    v35 = sub_3A25A8(v4[523] + 24, v16, 0, "trip");
    v36 = (v35 - *v35);
    if (*v36 >= 7u && (v37 = v36[3]) != 0)
    {
      v38 = *(v35 + v37 + 4) | (*(v35 + v37) << 32);
    }

    else
    {
      v38 = 0xFFFFFFFFLL;
    }

    sub_A81B90(v4 + 507, v38);
    v40 = std::ostream::operator<<(v34, v39);
    v41 = sub_4A5C(v40, ") from index ", 13);
    std::ostream::operator<<();
    sub_4A5C(v41, " to ", 4);
    std::ostream::operator<<();
    if ((v61 & 0x10) != 0)
    {
      v43 = v60;
      if (v60 < v57)
      {
        v60 = v57;
        v43 = v57;
      }

      v44 = v56;
      v42 = v43 - v56;
      if (v43 - v56 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if ((v61 & 8) == 0)
      {
        v42 = 0;
        v50 = 0;
LABEL_46:
        *(&__dst + v42) = 0;
        sub_7E854(&__dst, 1u);
        if (v50 < 0)
        {
          operator delete(__dst);
        }

        if (v59 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v53);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_51:
        v5[1] = *v5;
        goto LABEL_52;
      }

      v44 = v54;
      v42 = v55 - v54;
      if ((v55 - v54) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_56:
        sub_3244();
      }
    }

    if (v42 >= 0x17)
    {
      operator new();
    }

    v50 = v42;
    if (v42)
    {
      memmove(&__dst, v44, v42);
    }

    goto LABEL_46;
  }

LABEL_52:
  if (v62[0])
  {
    v62[1] = v62[0];
    operator delete(v62[0]);
  }
}

void sub_A82260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a19);
  v21 = *(v19 - 112);
  if (v21)
  {
    *(v19 - 104) = v21;
    operator delete(v21);
    v22 = *a10;
    if (!*a10)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v22 = *a10;
    if (!*a10)
    {
      goto LABEL_5;
    }
  }

  *(a10 + 8) = v22;
  operator delete(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_A822FC(uint64_t a1)
{
  sub_A74644(&v5, a1, 0x1FFFFFFFEuLL);
  v2 = 16;
  if (v7)
  {
    v2 = 32;
  }

  if (v6 < *(&v5 + v2))
  {
    sub_A82A90(*(a1 + 4120) + 24, __ROR8__(*v6, 32), 0, "routing stop");
    operator new();
  }

  sub_1C4C(0, 0, &v5, 0, 1);
  sub_A82C20(&v5, a1, 0x1FFFFFFFDuLL);
  v3 = 16;
  if (v7)
  {
    v3 = 32;
  }

  if (v6 < *(&v5 + v3))
  {
    sub_A82A90(*(a1 + 4120) + 24, __ROR8__(*v6, 32), 0, "routing stop");
    operator new();
  }

  sub_1C4C(0, 0, &v5, 0, 1);
  return 0;
}

void sub_A82A24(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A82A90(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_3D4D04(a1, HIDWORD(a2), a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0x15u)
  {
    v9 = *(v8 + 10);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v5)
      {
        return &v9[v5 + 1] + v9[v5 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v12;
      v20 = v6;
      v18[0] = sub_7FCF0(9u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v5 + 1] + v9[v5 + 1];
  }

  return 0;
}

void sub_A82BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A82C20(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v6 = sub_C9E24C(a2 + 3896, a3);
  v7 = *v6;
  *(a1 + 24) = *v6;
  v8 = sub_C9E24C(a2 + 3896, a3);
  *(a1 + 32) = v7 + v8[1] - *v8;
  if (HIDWORD(a3) == 1 && (a3 + 3) < 2)
  {
    goto LABEL_29;
  }

  v9 = sub_A74944(a2 + 24, a3, 0, "transfers at stop");
  v10 = (v9 - *v9);
  v11 = *v10;
  if (v11 < 0xB)
  {
    goto LABEL_29;
  }

  v12 = v10[5];
  if (v10[5])
  {
    v12 = (v12 + v9 + *(v12 + v9));
  }

  if (v11 < 0xD || !v10[6])
  {
    v13 = 0;
    if (!v12)
    {
      goto LABEL_14;
    }

LABEL_11:
    v14 = *v12;
    if (*v12)
    {
      v15 = (v12 + 1);
LABEL_13:
      *(a1 + 8) = v15;
      *(a1 + 16) = &v12[3 * v14 + 1];
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v13 = (v9 + v10[6] + *(v9 + v10[6]));
  if (v12)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (v13)
  {
    v16 = (v13 - *v13);
    if (*v16 >= 5u)
    {
      v17 = v16[2];
      if (v17)
      {
        if (v11 < 0xD)
        {
          v18 = 0;
        }

        else
        {
          v18 = v10[6];
          if (v10[6])
          {
            v18 = (v18 + v9 + *(v18 + v9));
          }
        }

        v19 = (v18 - *v18);
        if (*v19 < 9u)
        {
          LODWORD(v20) = 0;
        }

        else
        {
          v20 = v19[4];
          if (v20)
          {
            LODWORD(v20) = *(v18 + v20);
          }
        }

        v12 = (v13 + v17 + *(v13 + v17));
        v14 = *v12;
        if (*v12 > v20)
        {
          if (v11 >= 0xD && (v21 = v10[6]) != 0)
          {
            v22 = (v9 + v21 + *(v9 + v21));
          }

          else
          {
            v22 = 0;
          }

          v33 = (v22 - *v22);
          if (*v33 >= 9u && (v34 = v33[4]) != 0)
          {
            v35 = *(v22 + v34);
          }

          else
          {
            v35 = 0;
          }

          v15 = &v12[3 * v35 + 1];
          goto LABEL_13;
        }
      }
    }
  }

LABEL_29:
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  v25 = v23;
  *(a1 + 72) = v23 == v24;
  if (v23 == v24)
  {
    v25 = *(a1 + 24);
    *(a1 + 8) = v25;
    *(a1 + 40) = *(a1 + 56);
    if (*(*a1 + 16) != 1)
    {
      return a1;
    }
  }

  else if (*(*a1 + 16) != 1)
  {
    return a1;
  }

  v26 = v23 == v24;
  v27 = 16;
  if (v26)
  {
    v27 = 32;
  }

  if (v25 < *(a1 + v27))
  {
    while (1)
    {
      v28 = __ROR8__(*v25, 32);
      v29 = HIDWORD(v28) != 1 || (v28 + 3) >= 2;
      if (!v29 || (sub_2D5204(**(*a1 + 4120)) & 1) != 0)
      {
        break;
      }

      v30 = *(a1 + 16);
      v25 = (*(a1 + 8) + 12);
      *(a1 + 8) = v25;
      if (v25 == v30)
      {
        v25 = *(a1 + 24);
        *(a1 + 8) = v25;
        *(a1 + 72) = 1;
        if (v25 >= *(a1 + 32))
        {
          return a1;
        }
      }

      else
      {
        if (*(a1 + 72))
        {
          v31 = 32;
        }

        else
        {
          v31 = 16;
        }

        if (v25 >= *(a1 + v31))
        {
          return a1;
        }
      }
    }
  }

  return a1;
}

void *sub_A82F14(void *result, unint64_t a2)
{
  v120 = result;
  if (*(a2 + 200) == *(a2 + 208))
  {
    return result;
  }

  v2 = a2;
  v3 = sub_A520DC(a2);
  v4 = *(v2 + 208) - *(v2 + 200);
  if (!v4)
  {
    return sub_A83920(v2);
  }

  v5 = 0;
  v6 = 0x8E38E38E38E38E39 * (v4 >> 3);
  v7 = HIDWORD(v3);
  v111 = v6;
  v112 = v2;
  while (2)
  {
    v15 = *(v2 + 208) + 72 * ~v5;
    v17 = *v15;
    v16 = *(v15 + 8);
    if (*v15 == v16)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v108 = sub_2D390(exception, "Tightening called on empty journey leg bundle", 0x2DuLL);
    }

    if (0xCF3CF3CF3CF3CF3DLL * ((v16 - v17) >> 3) >= 2)
    {
      v109 = __cxa_allocate_exception(0x40uLL);
      v110 = sub_2D390(v109, "Tightening called on bundled journey", 0x24uLL);
    }

    v18 = *(v15 + 24);
    if (v18)
    {
      if (v18 == 1)
      {
        if (*(v17 + 160) != 1)
        {
          sub_5AF20();
        }

        *(v17 + 4) += v7 - *(v17 + 8);
        *(v17 + 8) = v7;
      }

      v19 = *(v17 + 160);
      if (v19 == 1)
      {
        goto LABEL_4;
      }

LABEL_117:
      if (v19)
      {
        sub_5AF20();
      }

      v9 = *(v17 + 8);
      LODWORD(v8) = *(v17 + 4);
      goto LABEL_5;
    }

    if (*(v17 + 160))
    {
      sub_5AF20();
    }

    v113 = v5;
    v20 = *(v17 + 52);
    v21 = sub_A57920(v120 + 517, *(v17 + 32));
    v22 = (v21 - *v21);
    if (*v22 >= 9u && (v23 = v22[4]) != 0)
    {
      v24 = (v21 + v23 + *(v21 + v23));
    }

    else
    {
      v24 = 0;
    }

    v25 = *sub_A571D4(v24, v20);
    v26 = *(v17 + 56);
    v27 = sub_A57920(v120 + 517, *(v17 + 32));
    v28 = (v27 - *v27);
    if (*v28 >= 9u && (v29 = v28[4]) != 0)
    {
      v30 = (v27 + v29 + *(v27 + v29));
    }

    else
    {
      v30 = 0;
    }

    v31 = sub_A571D4(v30, v26);
    sub_A7905C(v132, v120, __ROR8__(*v31, 32), 0, 0, 0);
    v32 = v135;
    if (v135 >= v136)
    {
      goto LABEL_116;
    }

    v117 = v7;
    v114 = __ROR8__(v25, 32);
    while (2)
    {
      v119 = __ROR8__(*v32, 32);
      sub_A79708(v123, v120, v119, *(v32 + 10), 0, 0);
      v33 = __ROR8__(*v126, 32);
      v138 = &v141;
      v139 = 1;
      v140 = v114;
      v141 = v33;
      v137[0] = &v140;
      v137[1] = 1;
      sub_A848D4(v123, &v138, v137, &v121);
      v34 = v121;
      v118 = v122;
      if (v121 == v122)
      {
        goto LABEL_101;
      }

      v116 = 4 * v119;
      do
      {
        v35 = *v34;
        v36 = v34[1];
        v126 = v125 + 16 * v35;
        if (v129 == 1)
        {
          v37 = sub_A84F48(v120, v123, v117, 1u);
        }

        else
        {
          v37 = sub_A8552C(v123, v117, 1);
        }

        if (v37)
        {
          v39 = v127;
          v38 = v128;
          v41 = v130;
          v40 = v131;
          v42 = &v131;
          if (!v129)
          {
            v42 = v128;
          }

          v43 = *v42;
          v44 = (v124 + *(v124 - *v124 + 6));
          v45 = &v44[2 * (v128[1] + v36)] + *v44;
          v126 = v125 + 16 * v36;
          LODWORD(v45) = *(v45 + 8) + v43;
          v46 = *(v126 + 8);
          v47 = v45 - v46;
          v48 = *(v17 + 4);
          v49 = v48 / -10;
          v50 = v48 % 10;
          v51 = v48 < 0 ? -5 : 5;
          if (v47 > (v49 + *(v17 + 12) + (((-103 * (v51 + v50)) >> 15) & 1) + ((-103 * (v51 + v50)) >> 10)))
          {
            v115 = v129;
            *(v17 + 4) = 10 * v46;
            v52 = sub_A5706C(v120 + 517, v119);
            v53 = v52;
            v54 = &v52[-*v52];
            if (*v54 < 5u)
            {
              v55 = 0;
            }

            else
            {
              v55 = *(v54 + 2);
              if (v55)
              {
                v55 += &v52[*&v52[v55]];
              }
            }

            v56 = (v55 + v116 + 4 + *(v55 + v116 + 4));
            v57 = (v56 - *v56);
            if (*v57 >= 9u && (v58 = v57[4]) != 0)
            {
              v59 = (v56 + v58 + *(v56 + v58));
            }

            else
            {
              v59 = 0;
            }

            v60 = sub_A571D4(v59, v36);
            v61 = (v53 - *v53);
            if (*v61 < 0xBu)
            {
              v62 = 0;
              v63 = (v56 - *v56);
              if (*v63 >= 0x11u)
              {
LABEL_57:
                v64 = v63[8];
                if (v63[8])
                {
                  LODWORD(v64) = *(v56 + v64);
                }

LABEL_61:
                v65 = -1431655765 * ((v38 - v39) >> 2);
                v66 = sub_A57320(v62, v64 + *(v56 + v63[2] + *(v56 + v63[2])) * v65 + *(v60 + 14));
                if (v66)
                {
                  v67 = __ROR8__(*v66, 32);
                  v68 = v66[2];
                }

                else
                {
                  v68 = 0;
                  v67 = 0xFFFFFFFFLL;
                }

                v138 = v67;
                LODWORD(v139) = v68;
                v69 = sub_A57920(v120 + 517, v119);
                v70 = (v69 - *v69);
                if (*v70 >= 9u && (v71 = v70[4]) != 0)
                {
                  v72 = (v69 + v71 + *(v69 + v71));
                }

                else
                {
                  v72 = 0;
                }

                v73 = *(sub_A571D4(v72, v36) + 6);
                if ((v115 & (v41 != -1)) != 0)
                {
                  v74 = v40;
                }

                else
                {
                  v74 = 0x7FFFFFFF;
                }

                *(v17 + 8) = sub_A56700(v120 + 523, &v138, v73, v74);
                *(v17 + 16) = v75;
                v76 = sub_A5706C(v120 + 517, v119);
                v77 = v76;
                v78 = &v76[-*v76];
                if (*v78 < 5u)
                {
                  v79 = 0;
                }

                else
                {
                  v79 = *(v78 + 2);
                  if (v79)
                  {
                    v79 += &v76[*&v76[v79]];
                  }
                }

                v80 = (v79 + v116 + 4 + *(v79 + v116 + 4));
                v81 = (v80 - *v80);
                if (*v81 >= 9u && (v82 = v81[4]) != 0)
                {
                  v83 = (v80 + v82 + *(v80 + v82));
                }

                else
                {
                  v83 = 0;
                }

                v84 = sub_A571D4(v83, v35);
                v85 = (v77 - *v77);
                if (*v85 < 0xBu)
                {
                  v86 = 0;
                  v87 = (v80 - *v80);
                  if (*v87 >= 0x11u)
                  {
LABEL_83:
                    v88 = v87[8];
                    if (v87[8])
                    {
                      LODWORD(v88) = *(v80 + v88);
                    }

                    goto LABEL_87;
                  }
                }

                else
                {
                  v86 = v85[5];
                  if (v86)
                  {
                    v86 = (v86 + v77 + *(v86 + v77));
                  }

                  v87 = (v80 - *v80);
                  if (*v87 >= 0x11u)
                  {
                    goto LABEL_83;
                  }
                }

                LODWORD(v88) = 0;
LABEL_87:
                v89 = sub_A57320(v86, v88 + *(v80 + v87[2] + *(v80 + v87[2])) * v65 + *(v84 + 14));
                if (v89)
                {
                  v90 = __ROR8__(*v89, 32);
                  v91 = v89[2];
                }

                else
                {
                  v91 = 0;
                  v90 = 0xFFFFFFFFLL;
                }

                v138 = v90;
                LODWORD(v139) = v91;
                v92 = sub_A57920(v120 + 517, v119);
                v93 = (v92 - *v92);
                if (*v93 >= 9u && (v94 = v93[4]) != 0)
                {
                  v95 = (v92 + v94 + *(v92 + v94));
                }

                else
                {
                  v95 = 0;
                }

                v96 = sub_A571D4(v95, v35);
                *(v17 + 20) = sub_A56A5C(v120 + 523, &v138, *(v96 + 6), v74);
                *(v17 + 28) = v97;
                *(v17 + 52) = v36;
                *(v17 + 56) = v35;
                *(v17 + 32) = v119;
                v98 = 0xFFFFFFFF00000000;
                if (v129)
                {
                  v98 = v130 << 32;
                }

                v99 = (-1431655765 * ((v128 - v127) >> 2)) | v98;
                if (v129)
                {
                  v100 = v131;
                }

                else
                {
                  v100 = 0x7FFFFFFF;
                }

                *(v17 + 40) = v99;
                *(v17 + 48) = v100;
                goto LABEL_34;
              }
            }

            else
            {
              v62 = v61[5];
              if (v62)
              {
                v62 = (v62 + v53 + *(v62 + v53));
              }

              v63 = (v56 - *v56);
              if (*v63 >= 0x11u)
              {
                goto LABEL_57;
              }
            }

            LODWORD(v64) = 0;
            goto LABEL_61;
          }
        }

LABEL_34:
        v34 += 2;
      }

      while (v34 != v118);
      v34 = v121;
      v2 = v112;
LABEL_101:
      if (v34)
      {
        v122 = v34;
        operator delete(v34);
      }

      v101 = v136;
      v32 = v135 + 16;
      v135 = v32;
      if (v32 == v136)
      {
        v102 = i + 2;
        for (i = v102; v102 < v134; i = v102)
        {
          v32 = *v102;
          v101 = v102[1];
          if (*v102 != v101)
          {
            v135 = *v102;
            v136 = v101;
            goto LABEL_109;
          }

          v102 += 2;
        }

        break;
      }

LABEL_109:
      while (v32 < v101)
      {
        v103 = sub_A795E8(v132);
        v32 = v135;
        v101 = v136;
        if (!v103)
        {
          break;
        }

        v32 = v135 + 16;
        v135 = v32;
        if (v32 == v136)
        {
          v104 = i;
          while (1)
          {
            v104 += 2;
            i = v104;
            if (v104 >= v134)
            {
              goto LABEL_31;
            }

            v105 = *v104;
            v106 = v104[1];
            if (*v104 != v106)
            {
              v135 = *v104;
              v136 = v106;
              v101 = v106;
              v32 = v105;
              goto LABEL_109;
            }
          }
        }
      }

LABEL_31:
      if (v32 < v101)
      {
        continue;
      }

      break;
    }

LABEL_116:
    v5 = v113;
    v6 = v111;
    v19 = *(v17 + 160);
    if (v19 != 1)
    {
      goto LABEL_117;
    }

LABEL_4:
    v8 = *(v17 + 4);
    v9 = v8 | (v8 << 32);
LABEL_5:
    if (v19)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8;
    }

    v11 = HIDWORD(v9);
    v12 = v10 / -10;
    v13 = v10 % 10;
    if (v10 < 0)
    {
      v14 = -5;
    }

    else
    {
      v14 = 5;
    }

    LODWORD(v7) = v12 + v11 + (((-103 * (v14 + v13)) >> 15) & 1) + ((-103 * (v14 + v13)) >> 10);
    if (++v5 != v6)
    {
      continue;
    }

    return sub_A83920(v2);
  }
}

void sub_A838F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

unint64_t sub_A83920(unint64_t result)
{
  v1 = result;
  v2 = *(result + 200);
  v3 = *(result + 208);
  v4 = (result + 200);
  if (v3 - v2 == 72)
  {
    if (v2 == v3 || *(v2 + 24) == 1)
    {
      return result;
    }
  }

  else if (v2 == v3)
  {
    return result;
  }

  v6 = sub_A8449C((result + 200), 0);
  v7 = sub_A8449C(v4, 1uLL);
  v8 = sub_A78688(v6, 0);
  if (*(v8 + 160) != 1 || (v9 = v8, result = sub_A846B8(v7, 0), *(result + 160)))
  {
LABEL_28:
    sub_5AF20();
  }

  v10 = *(result + 4);
  if (v10 < 0)
  {
    v11 = -5;
  }

  else
  {
    v11 = 5;
  }

  *(v9 + 4) += *(result + 12) - *(v9 + 8) + v10 / -10 + (((-103 * (v11 + v10 % 10)) >> 15) & 1) + ((-103 * (v11 + v10 % 10)) >> 10);
  v12 = *(result + 4);
  if (v12 < 0)
  {
    v13 = -5;
  }

  else
  {
    v13 = 5;
  }

  *(v9 + 8) = v12 / -10 + *(result + 12) + (((-103 * (v13 + v12 % 10)) >> 15) & 1) + ((-103 * (v13 + v12 % 10)) >> 10);
  v14 = *(v1 + 208);
  for (i = *(v1 + 200) + 72; i != v14; i += 72)
  {
    if (*(i + 24) == 1)
    {
      v16 = *(i + 8) - *i;
      if (v16)
      {
        v17 = 0;
        v18 = 0xCF3CF3CF3CF3CF3DLL * (v16 >> 3);
        do
        {
          v19 = sub_A78688(i, v17);
          if (*(v19 + 160) != 1)
          {
            goto LABEL_28;
          }

          v20 = v19;
          result = sub_A78688((i - 72), v17);
          if (*(result + 160))
          {
            goto LABEL_28;
          }

          *(v20 + 8) = *(v20 + 8) - *(v20 + 4) + *(result + 24);
          *(v20 + 4) = *(result + 24);
          ++v17;
        }

        while (v18 != v17);
        v14 = *(v1 + 208);
      }
    }
  }

  return result;
}

void *sub_A83B68(void *result, unint64_t a2)
{
  v110 = result;
  if (*(a2 + 200) == *(a2 + 208))
  {
    return result;
  }

  v2 = a2;
  v3 = sub_A51E58(a2, 0);
  v4 = *(v2 + 208) - *(v2 + 200);
  if (!v4)
  {
    return sub_A83920(v2);
  }

  v5 = v3;
  v6 = 0;
  v7 = 0x8E38E38E38E38E39 * (v4 >> 3);
  v101 = v7;
  v102 = v2;
  while (1)
  {
LABEL_5:
    v8 = *(v2 + 200) + 72 * v6;
    v10 = *v8;
    v9 = *(v8 + 8);
    if (*v8 == v9)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v98 = sub_2D390(exception, "Tightening called on empty journey leg bundle", 0x2DuLL);
    }

    if (0xCF3CF3CF3CF3CF3DLL * ((v9 - v10) >> 3) >= 2)
    {
      v99 = __cxa_allocate_exception(0x40uLL);
      v100 = sub_2D390(v99, "Tightening called on bundled journey", 0x24uLL);
    }

    v11 = *(v8 + 24);
    if (!v11)
    {
      break;
    }

    if (v11 == 1)
    {
      if (*(v10 + 160) != 1)
      {
        sub_5AF20();
      }

      v12 = *(v10 + 8) + HIDWORD(v5) - *(v10 + 4);
      *(v10 + 4) = HIDWORD(v5);
      *(v10 + 8) = v12;
    }

    v13 = *(v10 + 160);
    if (v13 == 1)
    {
      goto LABEL_4;
    }

LABEL_107:
    if (v13)
    {
      sub_5AF20();
    }

    v5 = *(v10 + 20);
    if (++v6 == v7)
    {
      return sub_A83920(v2);
    }
  }

  if (*(v10 + 160))
  {
    sub_5AF20();
  }

  v103 = v6;
  v108 = v10;
  v14 = *(v10 + 56);
  v15 = sub_A57920(v110 + 517, *(v10 + 32));
  v16 = (v15 - *v15);
  if (*v16 >= 9u && (v17 = v16[4]) != 0)
  {
    v18 = (v15 + v17 + *(v15 + v17));
  }

  else
  {
    v18 = 0;
  }

  v19 = *sub_A571D4(v18, v14);
  v20 = *(v108 + 52);
  v21 = sub_A57920(v110 + 517, *(v108 + 32));
  v22 = (v21 - *v21);
  if (*v22 >= 9u && (v23 = v22[4]) != 0)
  {
    v24 = (v21 + v23 + *(v21 + v23));
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_A571D4(v24, v20);
  sub_A7905C(v122, v110, __ROR8__(*v25, 32), 0, 0, 0);
  v26 = v125;
  if (v125 >= v126)
  {
    goto LABEL_106;
  }

  v106 = HIDWORD(v5);
  v104 = __ROR8__(v19, 32);
  while (2)
  {
    v109 = __ROR8__(*v26, 32);
    sub_A79708(v113, v110, v109, *(v26 + 8), 0, 0);
    v27 = __ROR8__(*v116, 32);
    v128 = &v131;
    v129 = 1;
    v130 = v104;
    v131 = v27;
    v127[0] = &v130;
    v127[1] = 1;
    sub_A79B68(v113, &v128, v127, &v111);
    v28 = v111;
    v107 = v112;
    if (v111 == v112)
    {
      goto LABEL_91;
    }

    v105 = 4 * v109;
    do
    {
      v29 = *v28;
      v30 = v28[1];
      v116 = v115 + 16 * v29;
      v31 = *(v116 + 8);
      if (v119 == 1)
      {
        v32 = sub_A7A1E8(v110, v113, v31 + v106, 1u);
      }

      else
      {
        v32 = sub_A7A710(v113, v31 + v106, 1);
      }

      if (v32)
      {
        v33 = v119;
        v35 = v117;
        v34 = v118;
        v36 = v120;
        v37 = v121;
        v38 = &v121;
        if (!v119)
        {
          v38 = v118;
        }

        v39 = *v38;
        v40 = (v114 + *(v114 - *v114 + 6));
        v41 = &v40[2 * (v118[1] + v30)] + *v40;
        v116 = v115 + 16 * v30;
        if (*(v41 + 4) + v39 < *(v108 + 24))
        {
          *(v108 + 4) = 10 * v31;
          v42 = sub_A5706C(v110 + 517, v109);
          v43 = v42;
          v44 = &v42[-*v42];
          if (*v44 < 5u)
          {
            v45 = 0;
          }

          else
          {
            v45 = *(v44 + 2);
            if (v45)
            {
              v45 += &v42[*&v42[v45]];
            }
          }

          v46 = (v45 + v105 + 4 + *(v45 + v105 + 4));
          v47 = (v46 - *v46);
          if (*v47 >= 9u && (v48 = v47[4]) != 0)
          {
            v49 = (v46 + v48 + *(v46 + v48));
          }

          else
          {
            v49 = 0;
          }

          v50 = sub_A571D4(v49, v29);
          v51 = (v43 - *v43);
          if (*v51 < 0xBu)
          {
            v52 = 0;
            v53 = (v46 - *v46);
            if (*v53 >= 0x11u)
            {
LABEL_47:
              v54 = v53[8];
              if (v53[8])
              {
                LODWORD(v54) = *(v46 + v54);
              }

LABEL_51:
              v55 = -1431655765 * ((v34 - v35) >> 2);
              v56 = sub_A57320(v52, v54 + *(v46 + v53[2] + *(v46 + v53[2])) * v55 + *(v50 + 14));
              if (v56)
              {
                v57 = __ROR8__(*v56, 32);
                v58 = v56[2];
              }

              else
              {
                v58 = 0;
                v57 = 0xFFFFFFFFLL;
              }

              v128 = v57;
              LODWORD(v129) = v58;
              v59 = sub_A57920(v110 + 517, v109);
              v60 = (v59 - *v59);
              if (*v60 >= 9u && (v61 = v60[4]) != 0)
              {
                v62 = (v59 + v61 + *(v59 + v61));
              }

              else
              {
                v62 = 0;
              }

              v63 = *(sub_A571D4(v62, v29) + 6);
              if ((v33 & (v36 != -1)) != 0)
              {
                v64 = v37;
              }

              else
              {
                v64 = 0x7FFFFFFF;
              }

              *(v108 + 8) = sub_A56700(v110 + 523, &v128, v63, v64);
              *(v108 + 16) = v65;
              v66 = sub_A5706C(v110 + 517, v109);
              v67 = v66;
              v68 = &v66[-*v66];
              if (*v68 < 5u)
              {
                v69 = 0;
              }

              else
              {
                v69 = *(v68 + 2);
                if (v69)
                {
                  v69 += &v66[*&v66[v69]];
                }
              }

              v70 = (v69 + v105 + 4 + *(v69 + v105 + 4));
              v71 = (v70 - *v70);
              if (*v71 >= 9u && (v72 = v71[4]) != 0)
              {
                v73 = (v70 + v72 + *(v70 + v72));
              }

              else
              {
                v73 = 0;
              }

              v74 = sub_A571D4(v73, v30);
              v75 = (v67 - *v67);
              if (*v75 < 0xBu)
              {
                v76 = 0;
                v77 = (v70 - *v70);
                if (*v77 >= 0x11u)
                {
LABEL_73:
                  v78 = v77[8];
                  if (v77[8])
                  {
                    LODWORD(v78) = *(v70 + v78);
                  }

                  goto LABEL_77;
                }
              }

              else
              {
                v76 = v75[5];
                if (v76)
                {
                  v76 = (v76 + v67 + *(v76 + v67));
                }

                v77 = (v70 - *v70);
                if (*v77 >= 0x11u)
                {
                  goto LABEL_73;
                }
              }

              LODWORD(v78) = 0;
LABEL_77:
              v79 = sub_A57320(v76, v78 + *(v70 + v77[2] + *(v70 + v77[2])) * v55 + *(v74 + 14));
              if (v79)
              {
                v80 = __ROR8__(*v79, 32);
                v81 = v79[2];
              }

              else
              {
                v81 = 0;
                v80 = 0xFFFFFFFFLL;
              }

              v128 = v80;
              LODWORD(v129) = v81;
              v82 = sub_A57920(v110 + 517, v109);
              v83 = (v82 - *v82);
              if (*v83 >= 9u && (v84 = v83[4]) != 0)
              {
                v85 = (v82 + v84 + *(v82 + v84));
              }

              else
              {
                v85 = 0;
              }

              v86 = sub_A571D4(v85, v30);
              *(v108 + 20) = sub_A56A5C(v110 + 523, &v128, *(v86 + 6), v64);
              *(v108 + 28) = v87;
              *(v108 + 52) = v29;
              *(v108 + 56) = v30;
              *(v108 + 32) = v109;
              v88 = 0xFFFFFFFF00000000;
              if (v119)
              {
                v88 = v120 << 32;
              }

              v89 = (-1431655765 * ((v118 - v117) >> 2)) | v88;
              if (v119)
              {
                v90 = v121;
              }

              else
              {
                v90 = 0x7FFFFFFF;
              }

              *(v108 + 40) = v89;
              *(v108 + 48) = v90;
              goto LABEL_27;
            }
          }

          else
          {
            v52 = v51[5];
            if (v52)
            {
              v52 = (v52 + v43 + *(v52 + v43));
            }

            v53 = (v46 - *v46);
            if (*v53 >= 0x11u)
            {
              goto LABEL_47;
            }
          }

          LODWORD(v54) = 0;
          goto LABEL_51;
        }
      }

LABEL_27:
      v28 += 2;
    }

    while (v28 != v107);
    v28 = v111;
    v2 = v102;
LABEL_91:
    if (v28)
    {
      v112 = v28;
      operator delete(v28);
    }

    v91 = v126;
    v26 = v125 + 16;
    v125 = v26;
    if (v26 == v126)
    {
      v92 = i + 2;
      for (i = v92; v92 < v124; i = v92)
      {
        v26 = *v92;
        v91 = v92[1];
        if (*v92 != v91)
        {
          v125 = *v92;
          v126 = v91;
          goto LABEL_99;
        }

        v92 += 2;
      }

      break;
    }

LABEL_99:
    while (v26 < v91)
    {
      v93 = sub_A795E8(v122);
      v26 = v125;
      v91 = v126;
      if (!v93)
      {
        break;
      }

      v26 = v125 + 16;
      v125 = v26;
      if (v26 == v126)
      {
        v94 = i;
        while (1)
        {
          v94 += 2;
          i = v94;
          if (v94 >= v124)
          {
            goto LABEL_24;
          }

          v95 = *v94;
          v96 = v94[1];
          if (*v94 != v96)
          {
            v125 = *v94;
            v126 = v96;
            v91 = v96;
            v26 = v95;
            goto LABEL_99;
          }
        }
      }
    }

LABEL_24:
    if (v26 < v91)
    {
      continue;
    }

    break;
  }

LABEL_106:
  v6 = v103;
  v7 = v101;
  v10 = v108;
  v13 = *(v108 + 160);
  if (v13 != 1)
  {
    goto LABEL_107;
  }

LABEL_4:
  v5 = *(v10 + 8) | (*(v10 + 8) << 32);
  if (++v6 != v7)
  {
    goto LABEL_5;
  }

  return sub_A83920(v2);
}

void sub_A84470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

unint64_t sub_A8449C(void *a1, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 72 * a2;
}

void sub_A845D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

unint64_t sub_A846B8(void *a1, unint64_t a2)
{
  if (0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 168 * a2;
}

void sub_A847F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_A848D4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a4;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = a1[5];
  v9 = (v8 - 16);
  a1[4] = v8 - 16;
  v58 = v7;
  if (*(*a1 + 16) == 1 && (a1[1] & 1) == 0 && v9 >= a1[3])
  {
    do
    {
      if (v9 >= a1[5])
      {
        break;
      }

      v10 = __ROR8__(*v9, 32);
      if (HIDWORD(v10) == 1 && (v10 + 3) < 2)
      {
        break;
      }

      v12 = sub_2D5204(**(*a1 + 4120));
      v9 = a1[4];
      if (v12)
      {
        break;
      }

      v9 -= 2;
      a1[4] = v9;
    }

    while (v9 >= a1[3]);
    v8 = a1[5];
  }

  v13 = a1[3];
  if (v9 >= v13 && v9 < v8)
  {
    v15 = 0;
    v57 = a3;
    do
    {
      v16 = *(a3 + 8);
      if (!v16)
      {
        goto LABEL_59;
      }

      v17 = __ROR8__(*v9, 32);
      v18 = *a3;
      v19 = 8 * v16;
      while (v17 != *v18)
      {
        ++v18;
        v19 -= 8;
        if (!v19)
        {
          goto LABEL_59;
        }
      }

      if ((*(v9 + 15) & 2) == 0)
      {
LABEL_59:
        v23 = v15;
        v39 = *(a2 + 8);
        if (!v39)
        {
          goto LABEL_65;
        }

        goto LABEL_60;
      }

      v20 = (v9 - v13) >> 4;
      v21 = a1[6];
      if (v21)
      {
        v22 = *(v21 + 4 * v20);
        v23 = 0;
        if (!v15)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v22 = 0;
        v23 = 0;
        if (!v15)
        {
          goto LABEL_56;
        }
      }

      v24 = -1;
      for (i = 0; i != v15; i += 16)
      {
        if ((*(i + 8) & v22) == 0)
        {
          v24 = *i;
          *i = -1;
        }
      }

      if (v24 != -1)
      {
        v27 = v7[1];
        v26 = v7[2];
        if (v27 >= v26)
        {
          v29 = *v7;
          v30 = v27 - *v7;
          v31 = v30 >> 3;
          v32 = (v30 >> 3) + 1;
          if (v32 >> 61)
          {
            sub_1794();
          }

          v33 = v26 - v29;
          if (v33 >> 2 > v32)
          {
            v32 = v33 >> 2;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFF8)
          {
            v34 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v32;
          }

          if (v34)
          {
            if (!(v34 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v35 = (8 * v31);
          *v35 = v24;
          v35[1] = v20;
          v28 = 8 * v31 + 8;
          memcpy(0, v29, v30);
          v7 = v58;
          *v58 = 0;
          v58[2] = 0;
          if (v29)
          {
            operator delete(v29);
          }
        }

        else
        {
          *v27 = v24;
          v27[1] = v20;
          v28 = (v27 + 2);
        }

        v7[1] = v28;
      }

      a3 = v57;
      v23 = 0;
      v36 = 0;
      while (1)
      {
        v37 = *v36;
        v36 += 4;
        if (v37 == -1)
        {
          break;
        }

        v23 = v36;
        if (v36 == v15)
        {
          goto LABEL_59;
        }
      }

      if (v36 != v15)
      {
        v38 = v23 + 4;
        do
        {
          if (*v38 != -1)
          {
            *v23 = *v38;
            *(v23 + 1) = *(v38 + 1);
            v23 += 4;
          }

          v38 += 4;
        }

        while (v38 != v15);
      }

LABEL_56:
      if (v23 == v15)
      {
        goto LABEL_59;
      }

      v39 = *(a2 + 8);
      if (!v39)
      {
        goto LABEL_65;
      }

LABEL_60:
      v40 = a1[4];
      v41 = __ROR8__(*v40, 32);
      v42 = *a2;
      v43 = 8 * v39;
      while (v41 != *v42)
      {
        ++v42;
        v43 -= 8;
        if (!v43)
        {
          goto LABEL_65;
        }
      }

      if (*(v40 + 15))
      {
        v49 = (v40 - a1[3]) >> 4;
        v50 = a1[6];
        if (v50)
        {
          v51 = *(v50 + 4 * v49);
          v52 = 0;
          if (!v23)
          {
            goto LABEL_96;
          }

LABEL_90:
          v53 = 16;
          while ((v51 & ~*(v53 - 8)) != 0)
          {
            v54 = v53 == v23;
            v53 += 16;
            if (v54)
            {
              goto LABEL_102;
            }
          }

          v52 = v53 - 16;
          if ((v53 - 16) != v23)
          {
            while (v53 != v23)
            {
              if ((v51 & ~*(v53 + 8)) != 0)
              {
                *v52 = *v53;
                *(v52 + 8) = *(v53 + 8);
                v52 += 16;
              }

              v53 += 16;
            }
          }
        }

        else
        {
          v51 = 0;
          v52 = 0;
          if (v23)
          {
            goto LABEL_90;
          }
        }

LABEL_96:
        if (v52 == v23)
        {
LABEL_102:
          v52 = v23;
        }

        v55 = v52 >> 4;
        if (((v52 >> 4) + 1) >> 60)
        {
          sub_1794();
        }

        if (v52 >> 4 != -1)
        {
          if (!(((v52 >> 4) + 1) >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v56 = 16 * v55;
        *v56 = v49;
        *(v56 + 8) = v51;
        v15 = 16 * v55 + 16;
        memcpy(0, 0, v52);
        v7 = v58;
        goto LABEL_66;
      }

LABEL_65:
      v15 = v23;
LABEL_66:
      v13 = a1[3];
      v9 = (a1[4] - 16);
      a1[4] = v9;
      if (*(*a1 + 16) == 1 && (a1[1] & 1) == 0 && v9 >= v13 && v9 < a1[5])
      {
        do
        {
          v45 = __ROR8__(*v9, 32);
          if (HIDWORD(v45) == 1 && (v45 + 3) < 2)
          {
            break;
          }

          v47 = sub_2D5204(**(*a1 + 4120));
          v13 = a1[3];
          v9 = a1[4];
          if (v47)
          {
            break;
          }

          v9 -= 2;
          a1[4] = v9;
        }

        while (v9 >= v13 && v9 < a1[5]);
      }
    }

    while (v9 >= v13 && v9 < a1[5]);
  }
}

void sub_A84EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
    v13 = *a11;
    if (!*a11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = *a11;
    if (!*a11)
    {
      goto LABEL_3;
    }
  }

  *(a11 + 8) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

BOOL sub_A84F48(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 72) - *(a2 + 56)) >> 2);
  if (!v4)
  {
    return 0;
  }

  v6 = (*(a2 + 32) - *(a2 + 24)) >> 4;
  v7 = *(a2 + 88);
  v8 = 4 * v7;
  v9 = v4;
  for (i = v4 - 1; ; --i)
  {
    v11 = sub_A5706C((a1 + 4136), v7);
    v12 = &v11[-*v11];
    if (*v12 < 5u)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 + 2);
      if (v13)
      {
        v13 += &v11[*&v11[v13]];
      }
    }

    v14 = (v13 + v8 + 4 + *(v13 + v8 + 4));
    v15 = (v14 - *v14);
    if (*v15 >= 7u && (v16 = v15[3]) != 0)
    {
      v17 = (v14 + v16 + *(v14 + v16));
    }

    else
    {
      v17 = 0;
    }

    sub_A7AC40(v17, i);
    v18 = sub_A5706C((a1 + 4136), v7);
    v19 = v18;
    v20 = &v18[-*v18];
    if (*v20 < 5u)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(v20 + 2);
      if (v21)
      {
        v21 += &v18[*&v18[v21]];
      }
    }

    v22 = (v21 + v8 + 4 + *(v21 + v8 + 4));
    v23 = (v22 - *v22);
    if (*v23 >= 7u && (v24 = v23[3]) != 0)
    {
      v25 = (v22 + v24 + *(v22 + v24));
    }

    else
    {
      v25 = 0;
    }

    v26 = sub_A7AC40(v25, i);
    v27 = *v26;
    v28 = (v19 - *v19);
    if (*v28 < 9u)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28[4];
      if (v29)
      {
        v29 = (v29 + v19 + *(v29 + v19));
      }
    }

    v30 = sub_A7AD90(v29, v26[2] >> 8)[1];
    v31 = sub_A5706C((a1 + 4136), v7);
    v32 = v31;
    v33 = &v31[-*v31];
    if (*v33 < 5u)
    {
      v34 = 0;
    }

    else
    {
      v34 = *(v33 + 2);
      if (v34)
      {
        v34 += &v31[*&v31[v34]];
      }
    }

    v35 = (v34 + v8 + 4 + *(v34 + v8 + 4));
    v36 = (v35 - *v35);
    if (*v36 >= 7u && (v37 = v36[3]) != 0)
    {
      v38 = (v35 + v37 + *(v35 + v37));
    }

    else
    {
      v38 = 0;
    }

    v39 = sub_A7AC40(v38, i);
    v40 = (v32 - *v32);
    if (*v40 < 7u)
    {
      v41 = 0;
    }

    else
    {
      v41 = v40[3];
      if (v41)
      {
        v41 = (v41 + v32 + *(v41 + v32));
      }
    }

    if ((v30 + v27 + *sub_A7AEE0(v41, v39[1] + v6)) <= a3)
    {
      break;
    }

    if (!--v9)
    {
      return 0;
    }
  }

  if (i == -1)
  {
    return 0;
  }

  v42 = *(a2 + 88);
  v44 = *(a2 + 24);
  v43 = *(a2 + 32);
  v45 = sub_A5706C((a1 + 4136), v42);
  v46 = &v45[-*v45];
  if (*v46 < 5u)
  {
    v47 = 0;
  }

  else
  {
    v47 = *(v46 + 2);
    if (v47)
    {
      v47 += &v45[*&v45[v47]];
    }
  }

  v48 = 4 * v42;
  v49 = (v47 + v48 + 4 + *(v47 + v48 + 4));
  v50 = (v49 - *v49);
  if (*v50 >= 7u && (v51 = v50[3]) != 0)
  {
    v52 = (v49 + v51 + *(v49 + v51));
  }

  else
  {
    v52 = 0;
  }

  v53 = v43 - v44;
  v54 = *(sub_A7AC40(v52, i) + 8);
  v55 = sub_A5706C((a1 + 4136), v42);
  v56 = v55;
  v57 = &v55[-*v55];
  if (*v57 < 5u)
  {
    v58 = 0;
  }

  else
  {
    v58 = *(v57 + 2);
    if (v58)
    {
      v58 += &v55[*&v55[v58]];
    }
  }

  v59 = v58 + v48;
  v60 = v53 >> 4;
  v61 = (v59 + 4 + *(v59 + 4));
  v62 = (v61 - *v61);
  if (*v62 >= 7u && (v63 = v62[3]) != 0)
  {
    v64 = (v61 + v63 + *(v61 + v63));
  }

  else
  {
    v64 = 0;
  }

  v65 = sub_A7AC40(v64, i);
  v66 = (v56 - *v56);
  if (*v66 < 7u)
  {
    v68 = sub_A7AEE0(0, v65[1] + v60);
    if (!v54)
    {
LABEL_65:
      v71 = -1;
      goto LABEL_66;
    }
  }

  else
  {
    v67 = v66[3];
    if (v67)
    {
      v67 = (v67 + v56 + *(v67 + v56));
    }

    v68 = sub_A7AEE0(v67, v65[1] + v60);
    if (!v54)
    {
      goto LABEL_65;
    }
  }

  v69 = *v68;
  v70 = -v54;
  v71 = v54 - 1;
  while ((sub_A7AB44((a1 + 4136), v42, i, v71) + v69) > a3)
  {
    --v71;
    if (__CFADD__(v70++, 1))
    {
      goto LABEL_65;
    }
  }

LABEL_66:
  v73 = *(a2 + 88);
  v74 = *(a2 + 24);
  v75 = *(a2 + 32);
  v76 = sub_A5706C((a1 + 4136), v73);
  v77 = v76;
  v78 = &v76[-*v76];
  if (*v78 < 5u)
  {
    v79 = 0;
  }

  else
  {
    v79 = *(v78 + 2);
    if (v79)
    {
      v79 += &v76[*&v76[v79]];
    }
  }

  v80 = (v79 + 4 * v73 + 4 + *(v79 + 4 * v73 + 4));
  v81 = (v80 - *v80);
  if (*v81 >= 7u && (v82 = v81[3]) != 0)
  {
    v83 = (v80 + v82 + *(v80 + v82));
  }

  else
  {
    v83 = 0;
  }

  v84 = sub_A7AC40(v83, i);
  v85 = (v77 - *v77);
  if (*v85 < 7u)
  {
    v86 = 0;
  }

  else
  {
    v86 = v85[3];
    if (v86)
    {
      v86 = (v86 + v77 + *(v86 + v77));
    }
  }

  v87 = *sub_A7AEE0(v86, v84[1] + ((v75 - v74) >> 4));
  v88 = sub_A7AA48((a1 + 4136), v73, i, v71);
  *(a2 + 64) = *(a2 + 56) + 12 * i;
  if (*(a2 + 96) == 1)
  {
    v89 = a3 - v87;
    if (v88 < (a3 - v87))
    {
      v89 = v88;
    }

    *(a2 + 100) = v71;
    *(a2 + 104) = v89;
  }

  sub_A7B558(a2, a4);
  v90 = *(a2 + 64);
  if (v90 < *(a2 + 56))
  {
    return 0;
  }

  return v90 < *(a2 + 72);
}

uint64_t sub_A8552C(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = -1431655765 * ((v6 - v5) >> 2);
  if (v7)
  {
    LODWORD(v7) = *(v7 + 32);
  }

  if (v7 == v8)
  {
    return 0;
  }

  if (!a3)
  {
    goto LABEL_25;
  }

  if (v8 < 0x41)
  {
    v24 = *(a1 + 64);
    if (v24 >= v5 && v24 < v6)
    {
      goto LABEL_25;
    }

LABEL_24:
    sub_A7B42C(a1);
    goto LABEL_25;
  }

  sub_A79A50(a1);
  if (*(a1 + 96))
  {
    v9 = (a1 + 104);
  }

  else
  {
    v9 = *(a1 + 64);
  }

  v10 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
  v11 = *(&v10[2 * *(*(a1 + 64) + 4) + 1 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v10) + *v9;
  sub_A7B42C(a1);
  v12 = *(a1 + 96);
  if (*(a1 + 96))
  {
    v13 = (a1 + 104);
  }

  else
  {
    v13 = *(a1 + 64);
  }

  if (a2 <= v11)
  {
    sub_A79A50(a1);
    v26 = *(a1 + 56);
    v25 = *(a1 + 64);
    if (v25 >= v26)
    {
LABEL_26:
      while (v25 < *(a1 + 72))
      {
        if (*(a1 + 96))
        {
          v27 = (a1 + 104);
        }

        else
        {
          v27 = v25;
        }

        v28 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
        if ((*(&v28[2 * v25[1] + 1 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v28) + *v27) > a2)
        {
          goto LABEL_35;
        }

        sub_A7B02C(a1, 0);
        v26 = *(a1 + 56);
        v25 = *(a1 + 64);
        if (v25 < v26)
        {
          goto LABEL_34;
        }
      }
    }

    goto LABEL_34;
  }

  v14 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
  v15 = *(&v14[2 * *(*(a1 + 64) + 4) + 2 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v14) + *v13;
  if (v15 <= a2)
  {
    goto LABEL_24;
  }

  v16 = (a2 - v11) / (v15 - v11);
  v17 = *(a1 + 56);
  v18 = (v16 * (-1431655765 * ((*(a1 + 72) - v17) >> 2) - 1));
  *(a1 + 64) = v17 + 12 * v18;
  if (v12)
  {
    *(a1 + 100) = -NAN;
  }

  v19 = *(a1 + 80);
  if (v19)
  {
    v20 = sub_585D8((*a1 + 3896));
    v21 = *v19;
    if (v21 <= v18)
    {
      v22 = *(v19 + 1);
      if (*(v19 + 2) + v21 - v22 > v18)
      {
        v23 = *(v22 + (v18 - v21));
        if ((v23 & 1) != 0 && ((v23 >> 1) & 1 & ~v20) == 0)
        {
          goto LABEL_24;
        }
      }
    }
  }

LABEL_25:
  v26 = *(a1 + 56);
  v25 = *(a1 + 64);
  if (v25 >= v26)
  {
    goto LABEL_26;
  }

LABEL_34:
  sub_A7B558(a1, 0);
  v26 = *(a1 + 56);
  v25 = *(a1 + 64);
LABEL_35:
  if (v25 >= v26)
  {
    while (v25 < *(a1 + 72))
    {
      if (*(a1 + 96))
      {
        v29 = (a1 + 104);
      }

      else
      {
        v29 = v25;
      }

      v30 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
      if ((*(&v30[2 * v25[1] + 1 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v30) + *v29) <= a2)
      {
        return 1;
      }

      sub_A7B558(a1, 0);
      v25 = *(a1 + 64);
      if (v25 < *(a1 + 56))
      {
        return 0;
      }
    }
  }

  return 0;
}

void sub_A85864(char *a1@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  HIBYTE(__p[2]) = 14;
  strcpy(__p, "departure_time");
  sub_A866CC(a2, __p, a1 + 5);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(__p[2]) = 12;
  strcpy(__p, "arrival_time");
  sub_A866CC(a2, __p, a1 + 8);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(__p[2]) = 18;
  strcpy(__p, "arrival_time_delay");
  v4 = *(a1 + 11);
  if (v4 != 0x7FFFFFFF)
  {
    v5 = v4 / 10;
    v6 = v4 % 10;
    v7 = v4 < 0 ? -5 : 5;
    v8 = (v5 + (((103 * (v7 + v6)) >> 15) & 1) + ((103 * (v7 + v6)) >> 10));
    v16[0] = v8;
    v9 = a2[1];
    if (v9 >= a2[2])
    {
      v11 = sub_A8711C(a2, __p, v16);
    }

    else
    {
      v10 = __p[2];
      *v9 = *__p;
      v9[2] = v10;
      v9[3] = v8;
      *(v9 + 12) = 2;
      v9[8] = 0;
      v9[9] = 0;
      v9[7] = 0;
      v11 = v9 + 10;
    }

    a2[1] = v11;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  HIBYTE(__p[2]) = 16;
  strcpy(__p, "request_time_gap");
  sub_A86A10(a2, __p, a1 + 18);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(__p[2]) = 15;
  strcpy(__p, "travel_duration");
  sub_A86A10(a2, __p, a1 + 12);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(__p[2]) = 16;
  strcpy(__p, "walking_duration");
  sub_A86A10(a2, __p, a1 + 15);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(__p[2]) = 21;
  strcpy(__p, "fare_estimate_penalty");
  v12 = *(a1 + 23);
  if (v12 != -1)
  {
    v16[0] = *(a1 + 23);
    v13 = a2[1];
    if (v13 >= a2[2])
    {
      v15 = sub_A87984(a2, __p, v16);
    }

    else
    {
      v14 = __p[2];
      *v13 = *__p;
      v13[2] = v14;
      v13[3] = v12;
      *(v13 + 12) = 3;
      v13[8] = 0;
      v13[9] = 0;
      v13[7] = 0;
      v15 = v13 + 10;
    }

    a2[1] = v15;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_A8658C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    sub_3ECF74(v23);
    _Unwind_Resume(a1);
  }

  sub_3ECF74(v23);
  _Unwind_Resume(a1);
}

void sub_A866CC(uint64_t a1, const void ***a2, int *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  if (v3 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_43;
  }

  v5 = a2;
  if (v3 + 7 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v18 = 0;
  HIBYTE(v18) = v3 + 7;
  strcpy(__p, "static_");
  if (v3)
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    memmove(__p + 7, a2, v3);
  }

  *(__p + v3 + 7) = 0;
  v7 = *a3;
  if (v7 != 0x7FFFFFFF)
  {
    v19 = *a3;
    v8 = *(a1 + 8);
    if (v8 >= *(a1 + 16))
    {
      v10 = sub_A8711C(a1, __p, &v19);
    }

    else
    {
      if (SHIBYTE(v18) < 0)
      {
        sub_325C(*(a1 + 8), __p[0], __p[1]);
      }

      else
      {
        v9 = *__p;
        *(v8 + 16) = v18;
        *v8 = v9;
      }

      *(v8 + 24) = v7;
      *(v8 + 48) = 2;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = 0;
      v10 = (v8 + 80);
      *(a1 + 8) = v8 + 80;
    }

    *(a1 + 8) = v10;
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *(v5 + 23) >= 0 ? *(v5 + 23) : v5[1];
  if (v11 + 9 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_43:
    sub_3244();
  }

  if (v11 + 9 >= 0x17)
  {
    operator new();
  }

  __p[1] = &stru_20 + 63;
  v18 = 0;
  HIBYTE(v18) = v11 + 9;
  __p[0] = *"expected_";
  if (v11)
  {
    if (*(v5 + 23) >= 0)
    {
      v12 = v5;
    }

    else
    {
      v12 = *v5;
    }

    memmove(&__p[1] + 1, v12, v11);
  }

  *(&__p[1] + v11 + 1) = 0;
  v13 = a3[a3[1] != 0x7FFFFFFF];
  if (v13 != 0x7FFFFFFF)
  {
    v19 = v13;
    v14 = *(a1 + 8);
    if (v14 >= *(a1 + 16))
    {
      v16 = sub_A8711C(a1, __p, &v19);
    }

    else
    {
      if (SHIBYTE(v18) < 0)
      {
        sub_325C(*(a1 + 8), __p[0], __p[1]);
      }

      else
      {
        v15 = *__p;
        *(v14 + 16) = v18;
        *v14 = v15;
      }

      *(v14 + 24) = v13;
      *(v14 + 48) = 2;
      *(v14 + 64) = 0;
      *(v14 + 72) = 0;
      *(v14 + 56) = 0;
      v16 = (v14 + 80);
      *(a1 + 8) = v14 + 80;
    }

    *(a1 + 8) = v16;
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_A869D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 8) = v15;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_A86A10(uint64_t a1, const void ***a2, int *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  if (v3 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_49;
  }

  v5 = a2;
  if (v3 + 7 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v26 = 0;
  HIBYTE(v26) = v3 + 7;
  strcpy(__p, "static_");
  if (v3)
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    memmove(__p + 7, a2, v3);
  }

  *(__p + v3 + 7) = 0;
  v7 = *a3;
  if (*a3 != 0x7FFFFFFF)
  {
    v8 = v7 / 10;
    v9 = v7 % 10;
    if (v7 < 0)
    {
      v10 = -5;
    }

    else
    {
      v10 = 5;
    }

    v11 = (v8 + (((103 * (v10 + v9)) >> 15) & 1) + ((103 * (v10 + v9)) >> 10));
    v27 = v11;
    v12 = *(a1 + 8);
    if (v12 >= *(a1 + 16))
    {
      v14 = sub_A8711C(a1, __p, &v27);
    }

    else
    {
      if (SHIBYTE(v26) < 0)
      {
        sub_325C(*(a1 + 8), __p[0], __p[1]);
      }

      else
      {
        v13 = *__p;
        *(v12 + 16) = v26;
        *v12 = v13;
      }

      *(v12 + 24) = v11;
      *(v12 + 48) = 2;
      *(v12 + 64) = 0;
      *(v12 + 72) = 0;
      *(v12 + 56) = 0;
      v14 = (v12 + 80);
      *(a1 + 8) = v12 + 80;
    }

    *(a1 + 8) = v14;
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *(v5 + 23) >= 0 ? *(v5 + 23) : v5[1];
  if (v15 + 9 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_49:
    sub_3244();
  }

  if (v15 + 9 >= 0x17)
  {
    operator new();
  }

  __p[1] = &stru_20 + 63;
  v26 = 0;
  HIBYTE(v26) = v15 + 9;
  __p[0] = *"expected_";
  if (v15)
  {
    if (*(v5 + 23) >= 0)
    {
      v16 = v5;
    }

    else
    {
      v16 = *v5;
    }

    memmove(&__p[1] + 1, v16, v15);
  }

  *(&__p[1] + v15 + 1) = 0;
  v17 = a3[a3[1] != 0x7FFFFFFF];
  if (v17 != 0x7FFFFFFF)
  {
    v18 = v17 / 10;
    v19 = v17 % 10;
    if (v17 < 0)
    {
      v20 = -5;
    }

    else
    {
      v20 = 5;
    }

    v21 = (v18 + (((103 * (v20 + v19)) >> 15) & 1) + ((103 * (v20 + v19)) >> 10));
    v27 = v21;
    v22 = *(a1 + 8);
    if (v22 >= *(a1 + 16))
    {
      v24 = sub_A8711C(a1, __p, &v27);
    }

    else
    {
      if (SHIBYTE(v26) < 0)
      {
        sub_325C(*(a1 + 8), __p[0], __p[1]);
      }

      else
      {
        v23 = *__p;
        *(v22 + 16) = v26;
        *v22 = v23;
      }

      *(v22 + 24) = v21;
      *(v22 + 48) = 2;
      *(v22 + 64) = 0;
      *(v22 + 72) = 0;
      *(v22 + 56) = 0;
      v24 = (v22 + 80);
      *(a1 + 8) = v22 + 80;
    }

    *(a1 + 8) = v24;
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_A86DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 8) = v15;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_A86DF4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    v6 = a2;
    sub_325C(__p, *a3, *(a3 + 8));
    a2 = v6;
    v4 = *(a1 + 8);
    if (v4 < *(a1 + 16))
    {
LABEL_3:
      if (*(a2 + 23) < 0)
      {
        sub_325C(v4, *a2, *(a2 + 1));
      }

      else
      {
        v5 = *a2;
        *(v4 + 16) = *(a2 + 2);
        *v4 = v5;
      }

      if (SHIBYTE(v8) < 0)
      {
        sub_325C((v4 + 24), __p[0], __p[1]);
      }

      else
      {
        *(v4 + 24) = *__p;
        *(v4 + 40) = v8;
      }

      *(v4 + 48) = 5;
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      *(v4 + 56) = 0;
      *(a1 + 8) = v4 + 80;
      *(a1 + 8) = v4 + 80;
      if (SHIBYTE(v8) < 0)
      {
        goto LABEL_13;
      }

      return;
    }
  }

  else
  {
    *__p = *a3;
    v8 = *(a3 + 16);
    v4 = *(a1 + 8);
    if (v4 < *(a1 + 16))
    {
      goto LABEL_3;
    }
  }

  *(a1 + 8) = sub_A874C0(a1, a2, __p);
  if (SHIBYTE(v8) < 0)
  {
LABEL_13:
    operator delete(__p[0]);
  }
}

void sub_A86F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  *(v14 + 8) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A86F5C(uint64_t a1, __int128 *a2, void *a3)
{
  v13 = a3;
  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_A87F78(0, 8, &__p, &v12, &v13);
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 16))
  {
    *(a1 + 8) = sub_A87BC8(a1, a2, &__p);
    v7 = __p;
    if (!__p)
    {
      return;
    }
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v6;
    }

    *(v5 + 48) = 0;
    sub_A87E2C((v5 + 56), __p, v15);
    *(a1 + 8) = v5 + 80;
    *(a1 + 8) = v5 + 80;
    v7 = __p;
    if (!__p)
    {
      return;
    }
  }

  v8 = v15;
  v9 = v7;
  if (v15 != v7)
  {
    do
    {
      v10 = (v8 - 32);
      v11 = *(v8 - 8);
      if (v11 != -1)
      {
        (off_2670B50[v11])(&v17, v8 - 32);
      }

      *(v8 - 8) = -1;
      v8 -= 32;
    }

    while (v10 != v7);
    v9 = __p;
  }

  v15 = v7;
  operator delete(v9);
}

void sub_A870A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v5 + 8) = v6;
  sub_A87418(va);
  _Unwind_Resume(a1);
}

void sub_A870C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_842F4(v6 + 24);
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  *(v5 + 8) = v6;
  sub_A87418(va);
  _Unwind_Resume(a1);
}

void sub_A870F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_A87418(va);
  _Unwind_Resume(a1);
}

void sub_A87104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_A87418(va);
  _Unwind_Resume(a1);
}

void *sub_A8711C(void **a1, uint64_t a2, void *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  *(v7 + 24) = *a3;
  *(v7 + 48) = 2;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = 0;
  v8 = (v7 + 80);
  v18 = (v7 + 80);
  v9 = *a1;
  v10 = a1[1];
  v11 = (v7 + *a1 - v10);
  if (*a1 != v10)
  {
    v12 = 0;
    do
    {
      v13 = &v9[v12];
      v14 = &v11[v12];
      v15 = *&v9[v12];
      *(v14 + 2) = *&v9[v12 + 16];
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v11[v12 + 24] = 0;
      *(v14 + 12) = -1;
      v16 = *&v9[v12 + 48];
      if (v16 != -1)
      {
        v19 = &v11[v12 + 24];
        (off_2670B80[v16])(&v19, v13 + 24);
        *(v14 + 12) = v16;
      }

      *(v14 + 7) = 0;
      *(v14 + 8) = 0;
      *(v14 + 9) = 0;
      *(v14 + 56) = *(v13 + 56);
      *(v14 + 9) = *(v13 + 9);
      *(v13 + 7) = 0;
      *(v13 + 8) = 0;
      *(v13 + 9) = 0;
      v12 += 80;
    }

    while (v13 + 80 != v10);
    do
    {
      sub_3ED230(v9);
      v9 += 80;
    }

    while (v9 != v10);
    v9 = *a1;
    v8 = v18;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

uint64_t sub_A87360(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_3ED230(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_A873E8(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 sub_A873F8(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  *(a2 + 8) = 0uLL;
  a2->n128_u64[0] = 0;
  return result;
}

char **sub_A87418(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 32;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_2670B50[v6])(&v8, v3 - 32);
        }

        *(v3 - 2) = -1;
        v3 -= 32;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_A874C0(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  v18 = v7;
  v19 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_325C((v7 + 24), *a3, *(a3 + 8));
  }

  else
  {
    *(v7 + 24) = *a3;
    *(v7 + 40) = *(a3 + 16);
  }

  *(v7 + 48) = 5;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = 0;
  v8 = (v7 + 80);
  v20 = (v19 + 80);
  v9 = *a1;
  v10 = a1[1];
  v11 = (v18 + *a1 - v10);
  if (*a1 != v10)
  {
    v12 = 0;
    do
    {
      v13 = &v9[v12];
      v14 = &v11[v12];
      v15 = *&v9[v12];
      *(v14 + 2) = *&v9[v12 + 16];
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v11[v12 + 24] = 0;
      *(v14 + 12) = -1;
      v16 = *&v9[v12 + 48];
      if (v16 != -1)
      {
        v21 = &v11[v12 + 24];
        (off_2670B80[v16])(&v21, v13 + 24);
        *(v14 + 12) = v16;
      }

      *(v14 + 7) = 0;
      *(v14 + 8) = 0;
      *(v14 + 9) = 0;
      *(v14 + 56) = *(v13 + 56);
      *(v14 + 9) = *(v13 + 9);
      *(v13 + 7) = 0;
      *(v13 + 8) = 0;
      *(v13 + 9) = 0;
      v12 += 80;
    }

    while (v13 + 80 != v10);
    do
    {
      sub_3ED230(v9);
      v9 += 80;
    }

    while (v9 != v10);
    v9 = *a1;
    v8 = v20;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_A87704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
    sub_A87360(&a9);
    _Unwind_Resume(a1);
  }

  sub_A87360(&a9);
  _Unwind_Resume(a1);
}

void *sub_A87740(void **a1, uint64_t a2, _BYTE *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  *(v7 + 24) = *a3;
  *(v7 + 48) = 1;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = 0;
  v8 = (v7 + 80);
  v18 = (v7 + 80);
  v9 = *a1;
  v10 = a1[1];
  v11 = (v7 + *a1 - v10);
  if (*a1 != v10)
  {
    v12 = 0;
    do
    {
      v13 = &v9[v12];
      v14 = &v11[v12];
      v15 = *&v9[v12];
      *(v14 + 2) = *&v9[v12 + 16];
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v11[v12 + 24] = 0;
      *(v14 + 12) = -1;
      v16 = *&v9[v12 + 48];
      if (v16 != -1)
      {
        v19 = &v11[v12 + 24];
        (off_2670B80[v16])(&v19, v13 + 24);
        *(v14 + 12) = v16;
      }

      *(v14 + 7) = 0;
      *(v14 + 8) = 0;
      *(v14 + 9) = 0;
      *(v14 + 56) = *(v13 + 56);
      *(v14 + 9) = *(v13 + 9);
      *(v13 + 7) = 0;
      *(v13 + 8) = 0;
      *(v13 + 9) = 0;
      v12 += 80;
    }

    while (v13 + 80 != v10);
    do
    {
      sub_3ED230(v9);
      v9 += 80;
    }

    while (v9 != v10);
    v9 = *a1;
    v8 = v18;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void *sub_A87984(void **a1, uint64_t a2, void *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  *(v7 + 24) = *a3;
  *(v7 + 48) = 3;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = 0;
  v8 = (v7 + 80);
  v18 = (v7 + 80);
  v9 = *a1;
  v10 = a1[1];
  v11 = (v7 + *a1 - v10);
  if (*a1 != v10)
  {
    v12 = 0;
    do
    {
      v13 = &v9[v12];
      v14 = &v11[v12];
      v15 = *&v9[v12];
      *(v14 + 2) = *&v9[v12 + 16];
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v11[v12 + 24] = 0;
      *(v14 + 12) = -1;
      v16 = *&v9[v12 + 48];
      if (v16 != -1)
      {
        v19 = &v11[v12 + 24];
        (off_2670B80[v16])(&v19, v13 + 24);
        *(v14 + 12) = v16;
      }

      *(v14 + 7) = 0;
      *(v14 + 8) = 0;
      *(v14 + 9) = 0;
      *(v14 + 56) = *(v13 + 56);
      *(v14 + 9) = *(v13 + 9);
      *(v13 + 7) = 0;
      *(v13 + 8) = 0;
      *(v13 + 9) = 0;
      v12 += 80;
    }

    while (v13 + 80 != v10);
    do
    {
      sub_3ED230(v9);
      v9 += 80;
    }

    while (v9 != v10);
    v9 = *a1;
    v8 = v18;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void *sub_A87BC8(void **a1, uint64_t a2, uint64_t *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  *(v7 + 48) = 0;
  sub_A87E2C((v7 + 56), *a3, a3[1]);
  v8 = (v7 + 80);
  v18 = (v7 + 80);
  v9 = *a1;
  v10 = a1[1];
  v11 = (v7 + *a1 - v10);
  if (*a1 != v10)
  {
    v12 = 0;
    do
    {
      v13 = &v9[v12];
      v14 = &v11[v12];
      v15 = *&v9[v12];
      *(v14 + 2) = *&v9[v12 + 16];
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v11[v12 + 24] = 0;
      *(v14 + 12) = -1;
      v16 = *&v9[v12 + 48];
      if (v16 != -1)
      {
        v19 = &v11[v12 + 24];
        (off_2670B80[v16])(&v19, v13 + 24);
        *(v14 + 12) = v16;
      }

      *(v14 + 7) = 0;
      *(v14 + 8) = 0;
      *(v14 + 9) = 0;
      *(v14 + 56) = *(v13 + 56);
      *(v14 + 9) = *(v13 + 9);
      *(v13 + 7) = 0;
      *(v13 + 8) = 0;
      *(v13 + 9) = 0;
      v12 += 80;
    }

    while (v13 + 80 != v10);
    do
    {
      sub_3ED230(v9);
      v9 += 80;
    }

    while (v9 != v10);
    v9 = *a1;
    v8 = v18;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_A87DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_842F4(v9 + 24);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_A87360(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_A87E2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3 != a2)
  {
    if (((a3 - a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_A87F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_84350(va);
  _Unwind_Resume(a1);
}

void sub_A87F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void **);
  v9 = va_arg(va1, void);
  sub_840B0(v5);
  sub_84254(va1);
  *(v3 + 8) = v4;
  sub_84350(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A87F78(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  if (a1 != a2)
  {
    v9 = a1;
    if (a1 <= 8)
    {
      v10 = 8;
    }

    else
    {
      v10 = a1;
    }

    while (1)
    {
      if (v10 == v9)
      {
        sub_49EC("bitset test argument out of range");
      }

      if (((**a5 >> v9) & 1) == 0)
      {
        goto LABEL_7;
      }

      if (v9 > 1u)
      {
        break;
      }

      if (!v9)
      {
        LODWORD(v20) = 1279869266;
        v11 = 4;
        v12 = &v20 + 4;
        goto LABEL_21;
      }

      if (v9 != 1)
      {
        goto LABEL_17;
      }

      qmemcpy(&v20, "BUS", 3);
      v11 = 3;
      v12 = &v20 + 3;
LABEL_21:
      *v12 = 0;
      v17[0] = v20;
      v18 = v11;
      v19 = 5;
      v14 = *(a3 + 8);
      if (v14 >= *(a3 + 16))
      {
        v16 = sub_A8819C(a3, v17);
      }

      else
      {
        *v14 = 0;
        *(v14 + 24) = -1;
        v15 = v19;
        if (v19 != -1)
        {
          v20 = v14;
          (off_2670B80[v19])(&v20, v17, a3, a4);
          *(v14 + 24) = v15;
        }

        v16 = v14 + 32;
      }

      *(a3 + 8) = v16;
      if (v19 != -1)
      {
        (off_2670B50[v19])(&v20, v17);
      }

LABEL_7:
      if (a2 == ++v9)
      {
        return a3;
      }
    }

    if (v9 == 2)
    {
      BYTE4(v20) = 89;
      v13 = 1381123398;
      goto LABEL_20;
    }

    if (v9 == 3)
    {
      BYTE4(v20) = 82;
      v13 = 1162368079;
LABEL_20:
      LODWORD(v20) = v13;
      v11 = 5;
      v12 = &v20 + 5;
      goto LABEL_21;
    }

LABEL_17:
    qmemcpy(&v20, "UNKNOWN", 7);
    v11 = 7;
    v12 = &v20 + 7;
    goto LABEL_21;
  }

  return a3;
}

void sub_A88184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_842F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A8819C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  *v7 = 0;
  *(v7 + 24) = -1;
  v8 = *(a2 + 24);
  if (v8 != -1)
  {
    v13 = v7;
    (off_2670B80[v8])(&v13, a2);
    *(v7 + 24) = v8;
  }

  v9 = *a1;
  v10 = *(a1 + 8) - *a1;
  v11 = v7 - v10;
  memcpy((v7 - v10), *a1, v10);
  *a1 = v11;
  *(a1 + 8) = v7 + 32;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v7 + 32;
}

uint64_t sub_A882C4(unsigned int a1)
{
  if (a1 < 6)
  {
    return a1 + 1;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_A882D4(char a1)
{
  if ((a1 - 1) > 3u)
  {
    return 4;
  }

  else
  {
    return dword_22A74F0[(a1 - 1)];
  }
}

uint64_t sub_A88300(uint64_t a1, int a2, void *a3)
{
  if (a2 != 0x7FFFFFFF)
  {
    v5 = *a3;
    v4 = a3[1];
    *__p = 0u;
    *v31 = 0u;
    v32 = 1065353216;
    if (v5 == v4)
    {
      goto LABEL_20;
    }

    do
    {
      v6 = sub_502FF8(*(a1 + 4120) + 24, __ROR8__(*v5, 32), 0, "stop");
      v7 = (v6 + *(v6 - *v6 + 42));
      v8 = *v7;
      v9 = *(v7 + v8);
      if (v9 >= 0x17)
      {
        operator new();
      }

      v29 = *(v7 + v8);
      if (v9)
      {
        memcpy(__dst, v7 + v8 + 4, v9);
      }

      *(__dst + v9) = 0;
      v27 = __dst;
      v10 = sub_A8932C(__p, __dst, &unk_229EB70, &v27);
      ++*(v10 + 10);
      if (v29 < 0)
      {
        operator delete(__dst[0]);
      }

      ++v5;
    }

    while (v5 != v4);
    if (!v31[1])
    {
LABEL_20:
      v41 = 0uLL;
      v42 = 0;
    }

    else
    {
      v11 = v31[0];
      if (!v31[0])
      {
        goto LABEL_19;
      }

      v12 = *v31[0];
      if (*v31[0])
      {
        do
        {
          if (*(v11 + 10) < *(v12 + 10))
          {
            v11 = v12;
          }

          v12 = *v12;
        }

        while (v12);
      }

      if (v11[39] < 0)
      {
        sub_325C(&v41, *(v11 + 2), *(v11 + 3));
      }

      else
      {
LABEL_19:
        v41 = *(v11 + 1);
        v42 = *(v11 + 4);
      }
    }

    v13 = v31[0];
    if (v31[0])
    {
      do
      {
        v21 = *v13;
        if (*(v13 + 39) < 0)
        {
          operator delete(v13[2]);
        }

        operator delete(v13);
        v13 = v21;
      }

      while (v21);
    }

    v14 = __p[0];
    __p[0] = 0;
    if (v14)
    {
      operator delete(v14);
    }

    v15 = HIBYTE(v42);
    if (v42 < 0)
    {
      v15 = *(&v41 + 1);
    }

    if (v15)
    {
      sub_25BE0(v40, &v41);
      if (!sub_7E7E4(2u))
      {
        goto LABEL_59;
      }

      sub_19594F8(__p);
      v16 = sub_4A5C(__p, "Determined time zone: ", 22);
      sub_25F74(v40, __dst);
      if ((v29 & 0x80u) == 0)
      {
        v17 = __dst;
      }

      else
      {
        v17 = __dst[0];
      }

      if ((v29 & 0x80u) == 0)
      {
        v18 = v29;
      }

      else
      {
        v18 = __dst[1];
      }

      sub_4A5C(v16, v17, v18);
      if (v29 < 0)
      {
        operator delete(__dst[0]);
        v19 = v39;
        if ((v39 & 0x10) == 0)
        {
LABEL_36:
          if ((v19 & 8) == 0)
          {
            v20 = 0;
            v29 = 0;
LABEL_54:
            *(__dst + v20) = 0;
            sub_7E854(__dst, 2u);
            if (v29 < 0)
            {
              operator delete(__dst[0]);
            }

            if (v37 < 0)
            {
              operator delete(v36);
            }

            std::locale::~locale(v31);
            std::ostream::~ostream();
            std::ios::~ios();
LABEL_59:
            v24 = sub_A88F8C((a1 + 4072));
            sub_375C(__dst, v40, v24, WORD2(v24) + 1, v25, 0, 0, 0);
          }

          v23 = v31[1];
          v20 = v33 - v31[1];
          if (v33 - v31[1] > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_62:
            sub_3244();
          }

LABEL_49:
          if (v20 >= 0x17)
          {
            operator new();
          }

          v29 = v20;
          if (v20)
          {
            memmove(__dst, v23, v20);
          }

          goto LABEL_54;
        }
      }

      else
      {
        v19 = v39;
        if ((v39 & 0x10) == 0)
        {
          goto LABEL_36;
        }
      }

      v22 = v38;
      if (v38 < v35)
      {
        v38 = v35;
        v22 = v35;
      }

      v23 = v34;
      v20 = v22 - v34;
      if (v22 - v34 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_62;
      }

      goto LABEL_49;
    }

    if (v42 < 0)
    {
      operator delete(v41);
    }
  }

  return 0;
}

void sub_A88F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_3874(&a29);
  sub_3874(&a17);
  sub_3874(&a23);
  sub_25F00((v29 - 128));
  if (*(v29 - 89) < 0)
  {
    operator delete(*(v29 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A88F8C(void *a1)
{
  v1 = sub_2C939C(*a1 + 24, 1u, 0);
  if (!v1 || (v2 = &v1[-*v1], *v2 < 0xDu) || (v3 = *(v2 + 6)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v11 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v4 = &v1[v3 + *&v1[v3]];
  v5 = &v4[-*v4];
  v6 = &v4[*(v5 + 3)];
  v7 = *v6;
  v8 = v6[2];
  if (*v5 >= 9u && *(v5 + 4))
  {
    return v7 | (v8 << 32);
  }

  else
  {
    return v7 | (v8 << 32);
  }
}

uint64_t sub_A89068(uint64_t a1, int a2)
{
  __p = 0;
  v30 = 0;
  v31 = 0;
  sub_A74644(&v23, a1, 0x1FFFFFFFEuLL);
  v2 = v24;
  v3 = 16;
  if (v28)
  {
    v3 = 32;
  }

  if (v24 < *(&v23 + v3))
  {
    v4 = 0;
    do
    {
      v8 = __ROR8__(*v2, 32);
      if (v4 >= v31)
      {
        v9 = v4;
        v10 = v4 >> 3;
        v11 = v10 + 1;
        if ((v10 + 1) >> 61)
        {
          sub_1794();
        }

        if (v31 >> 2 > v11)
        {
          v11 = v31 >> 2;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          if (!(v12 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v13 = (8 * v10);
        *v13 = v8;
        v4 = (v13 + 1);
        memcpy(0, 0, v9);
        __p = 0;
        v31 = 0;
        v30 = v4;
        v5 = v25;
        v2 = (v24 + 12);
        v24 = v2;
        if (v2 == v25)
        {
LABEL_23:
          v2 = v26;
          v24 = v26;
          v6 = 1;
          v28 = 1;
          goto LABEL_24;
        }
      }

      else
      {
        *v4 = v8;
        v4 += 8;
        v30 = v4;
        v5 = v25;
        v2 = (v24 + 12);
        v24 = v2;
        if (v2 == v25)
        {
          goto LABEL_23;
        }
      }

      v6 = v28;
LABEL_24:
      v7 = v27;
      if (v6)
      {
        v14 = v27;
      }

      else
      {
        v14 = v5;
      }

      if (*(v23 + 16) == 1 && v2 < v14)
      {
        while (1)
        {
          v16 = __ROR8__(*v2, 32);
          if (HIDWORD(v16) == 1 && (v16 + 3) < 2)
          {
            break;
          }

          if (sub_2D5204(**(v23 + 4120)))
          {
            v2 = v24;
            v5 = v25;
            v6 = v28;
            break;
          }

          v5 = v25;
          v2 = (v24 + 12);
          v24 = v2;
          if (v2 == v25)
          {
            v2 = v26;
            v24 = v26;
            v6 = 1;
            v28 = 1;
            if (v26 >= v27)
            {
              break;
            }
          }

          else
          {
            v6 = v28;
            if (v28)
            {
              v18 = 32;
            }

            else
            {
              v18 = 16;
            }

            if (v2 >= *(&v23 + v18))
            {
              break;
            }
          }
        }

        v7 = v27;
      }

      if (v6)
      {
        v5 = v7;
      }
    }

    while (v2 < v5);
  }

  result = sub_A88300(a1, a2, &__p);
  if (__p)
  {
    v20 = result;
    operator delete(__p);
    return v20;
  }

  return result;
}

void sub_A89304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_A8932C(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v4 = a2;
  v6 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = sub_AAD8(&v26, a2, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_43;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = v8;
    if (v8 >= *&v10)
    {
      v12 = v8 % *&v10;
    }
  }

  else
  {
    v12 = (*&v10 - 1) & v8;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_43:
    operator new();
  }

  v15 = *(v4 + 23);
  if (v15 >= 0)
  {
    v16 = *(v4 + 23);
  }

  else
  {
    v16 = v4[1];
  }

  if (v15 < 0)
  {
    v4 = *v4;
  }

  if (v11.u32[0] < 2uLL)
  {
    while (1)
    {
      v21 = v14[1];
      if (v21 == v9)
      {
        v22 = *(v14 + 39);
        v23 = v22;
        if (v22 < 0)
        {
          v22 = v14[3];
        }

        if (v22 == v16)
        {
          v24 = v23 >= 0 ? (v14 + 2) : v14[2];
          if (!memcmp(v24, v4, v16))
          {
            return v14;
          }
        }
      }

      else if ((v21 & (*&v10 - 1)) != v12)
      {
        goto LABEL_43;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v17 = v14[1];
    if (v17 == v9)
    {
      break;
    }

    if (v17 >= *&v10)
    {
      v17 %= *&v10;
    }

    if (v17 != v12)
    {
      goto LABEL_43;
    }

LABEL_20:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_43;
    }
  }

  v18 = *(v14 + 39);
  v19 = v18;
  if (v18 < 0)
  {
    v18 = v14[3];
  }

  if (v18 != v16)
  {
    goto LABEL_20;
  }

  v20 = v19 >= 0 ? (v14 + 2) : v14[2];
  if (memcmp(v20, v4, v16))
  {
    goto LABEL_20;
  }

  return v14;
}

void sub_A89710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_A89728(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A89CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_A89D1C(__int128 *a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    if (*(a1 + 1) == 7 && **a1 == 1635151465 && *(*a1 + 3) == 1684630625)
    {
      return -1;
    }

    if (*(a1 + 1) == 7)
    {
      v3 = *a1;
LABEL_16:
      v5 = *v3;
      v6 = *(v3 + 3);
      if (v5 != 1096175177 || v6 != 1145654337)
      {
        goto LABEL_20;
      }

      return -1;
    }
  }

  else if (v1 == 7)
  {
    v2 = *a1 == 1635151465 && *(a1 + 3) == 1684630625;
    v3 = a1;
    if (v2)
    {
      return -1;
    }

    goto LABEL_16;
  }

LABEL_20:
  sub_71628(a1, &v11);
  v8.n128_u64[0] = v11;
  result = sub_A95AC8(&__p, v8);
  if (v13 < 0)
  {
    v10 = result;
    operator delete(__p);
    return v10;
  }

  return result;
}

void sub_A89E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A89E58(__int128 *a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    if (*(a1 + 1) == 7 && **a1 == 1635151465 && *(*a1 + 3) == 1684630625)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if (*(a1 + 1) == 7)
    {
      v3 = *a1;
LABEL_16:
      v5 = *v3;
      v6 = *(v3 + 3);
      if (v5 != 1096175177 || v6 != 1145654337)
      {
        goto LABEL_20;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (v1 == 7)
  {
    v2 = *a1 == 1635151465 && *(a1 + 3) == 1684630625;
    v3 = a1;
    if (v2)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_16;
  }

LABEL_20:
  sub_71628(a1, &v10);
  result = sub_65B84(&__p, v10);
  if (v12 < 0)
  {
    v9 = result;
    operator delete(__p);
    return v9;
  }

  return result;
}

void sub_A89F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8A3A0(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A8A480((v1 + 536));
  sub_A8A480((v1 + 416));
  sub_A300F8(v2, v4);
  _Unwind_Resume(a1);
}

void sub_A8A3FC()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 632) = v2;
    operator delete(v2);
  }

  v3 = *(v0 + 616);
  if (v3)
  {
    free(v3);
  }

  JUMPOUT(0xA8A3E4);
}

void sub_A8A420(_Unwind_Exception *a1)
{
  v4 = v1[63];
  if (v4)
  {
    v1[64] = v4;
    operator delete(v4);
    v5 = v1[62];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v1[62];
    if (v5)
    {
LABEL_5:
      free(v5);
      sub_A300F8(v2, v6);
      _Unwind_Resume(a1);
    }
  }

  JUMPOUT(0xA8A3ECLL);
}

void sub_A8A45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v19);
  _Unwind_Resume(a1);
}

void *sub_A8A480(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    free(v3);
  }

  return a1;
}

uint64_t sub_A8A4C4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A8A6FC(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A8A558(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

double sub_A8A558(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_A96578(a1);
  sub_A9674C(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_A96C1C(a1, v3);
        sub_A985C8(a1, v3, v11);
      }

      v4 += 2;
      v3 = (v3 + 1);
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

double sub_A8A6FC(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_AAA01C(a1);
  sub_AAA1EC(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_AAA6BC(a1, v3);
        sub_AAC108(a1, v3, v11);
      }

      v4 += 2;
      v3 = (v3 + 1);
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

void sub_A8A8A0(std::string *a1@<X8>)
{
  sub_A8A93C(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A8A920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8A93C(std::string *a1@<X8>)
{
  *(&v21.__r_.__value_.__s + 23) = 1;
  LOWORD(v21.__r_.__value_.__l.__data_) = 116;
  v20 = 0;
  __s[0] = 0;
  v2 = std::string::append(&v21, __s, 0);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v18 = 0;
  v17[0] = 0;
  v4 = std::string::append(&v22, v17, 0);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v16 = 0;
  v15[0] = 0;
  v6 = std::string::append(&v23, v15, 0);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v14 = 0;
  v13[0] = 0;
  v8 = std::string::append(&v24, v13, 0);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = 0;
  LOBYTE(__p) = 0;
  v10 = std::string::append(&v25, &__p, 0);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*v13);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_6:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*v15);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*v17);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v21.__r_.__value_.__l.__data_);
    return;
  }

LABEL_20:
  operator delete(*__s);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_A8AB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v50 - 25) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v50 - 25) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v50 - 48));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 57) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((*(v50 - 57) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 80));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 89) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a21);
  if ((*(v50 - 89) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v50 - 112));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a27);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a45);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a33);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a39);
  _Unwind_Resume(exception_object);
}

void sub_A8AC98(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A8B238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8B698(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A8A480((v1 + 536));
  sub_A8A480((v1 + 416));
  sub_A300F8(v2, v4);
  _Unwind_Resume(a1);
}

void sub_A8B6F4()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 632) = v2;
    operator delete(v2);
  }

  v3 = *(v0 + 616);
  if (v3)
  {
    free(v3);
  }

  JUMPOUT(0xA8B6DCLL);
}

void sub_A8B718(_Unwind_Exception *a1)
{
  v4 = v1[63];
  if (v4)
  {
    v1[64] = v4;
    operator delete(v4);
    v5 = v1[62];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v1[62];
    if (v5)
    {
LABEL_5:
      free(v5);
      sub_A300F8(v2, v6);
      _Unwind_Resume(a1);
    }
  }

  JUMPOUT(0xA8B6E4);
}

void sub_A8B754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_A8B77C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A8B9B4(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A8B810(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

double sub_A8B810(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_AB41A4(a1);
  sub_AB4378(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_AB4848(a1, v3);
        sub_AB61F4(a1, v3, v11);
      }

      v4 += 2;
      v3 = (v3 + 1);
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

double sub_A8B9B4(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_ABE6E8(a1);
  sub_ABE8B8(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_ABED88(a1, v3);
        sub_AC07D4(a1, v3, v11);
      }

      v4 += 2;
      v3 = (v3 + 1);
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

void sub_A8BB58(std::string *a1@<X8>)
{
  sub_A8BBF4(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A8BBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8BBF4(std::string *a1@<X8>)
{
  *(&v21.__r_.__value_.__s + 23) = 1;
  LOWORD(v21.__r_.__value_.__l.__data_) = 116;
  v20 = 1;
  strcpy(__s, "w");
  v2 = std::string::append(&v21, __s, 1uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v18 = 0;
  v17[0] = 0;
  v4 = std::string::append(&v22, v17, 0);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v16 = 0;
  v15[0] = 0;
  v6 = std::string::append(&v23, v15, 0);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v14 = 0;
  v13[0] = 0;
  v8 = std::string::append(&v24, v13, 0);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = 0;
  LOBYTE(__p) = 0;
  v10 = std::string::append(&v25, &__p, 0);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*v13);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_6:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*v15);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*v17);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v21.__r_.__value_.__l.__data_);
    return;
  }

LABEL_20:
  operator delete(*__s);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_A8BE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v50 - 25) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v50 - 25) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v50 - 48));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 57) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((*(v50 - 57) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 80));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 89) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a21);
  if ((*(v50 - 89) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v50 - 112));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a27);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a45);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a33);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a39);
  _Unwind_Resume(exception_object);
}

void sub_A8BF54(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A8C4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8C954(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A8A480((v1 + 536));
  sub_A8A480((v1 + 416));
  sub_A300F8(v2, v4);
  _Unwind_Resume(a1);
}

void sub_A8C9B0()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 632) = v2;
    operator delete(v2);
  }

  v3 = *(v0 + 616);
  if (v3)
  {
    free(v3);
  }

  JUMPOUT(0xA8C998);
}

void sub_A8C9D4(_Unwind_Exception *a1)
{
  v4 = v1[63];
  if (v4)
  {
    v1[64] = v4;
    operator delete(v4);
    v5 = v1[62];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v1[62];
    if (v5)
    {
LABEL_5:
      free(v5);
      sub_A300F8(v2, v6);
      _Unwind_Resume(a1);
    }
  }

  JUMPOUT(0xA8C9A0);
}

void sub_A8CA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_A8CA38@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A8CC70(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A8CACC(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

double sub_A8CACC(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_AC804C(a1);
  sub_AC8220(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_AC86F0(a1, v3);
        sub_ACA09C(a1, v3, v11);
      }

      v4 += 2;
      v3 = (v3 + 1);
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

double sub_A8CC70(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_AD31E0(a1);
  sub_AD33B0(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_AD3880(a1, v3);
        sub_AD52CC(a1, v3, v11);
      }

      v4 += 2;
      v3 = (v3 + 1);
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

void sub_A8CE14(std::string *a1@<X8>)
{
  sub_A8CEB0(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A8CE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8CEB0(std::string *a1@<X8>)
{
  *(&v21.__r_.__value_.__s + 23) = 1;
  LOWORD(v21.__r_.__value_.__l.__data_) = 116;
  v20 = 1;
  strcpy(__s, "w");
  v2 = std::string::append(&v21, __s, 1uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v18 = 1;
  strcpy(v17, "r");
  v4 = std::string::append(&v22, v17, 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v16 = 0;
  v15[0] = 0;
  v6 = std::string::append(&v23, v15, 0);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v14 = 0;
  v13[0] = 0;
  v8 = std::string::append(&v24, v13, 0);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = 0;
  LOBYTE(__p) = 0;
  v10 = std::string::append(&v25, &__p, 0);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*v13);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_6:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*v15);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*v17);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v21.__r_.__value_.__l.__data_);
    return;
  }

LABEL_20:
  operator delete(*__s);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_A8D0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v50 - 41) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v50 - 41) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v50 - 64));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((*(v50 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 96));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 105) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a21);
  if ((*(v50 - 105) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v50 - 128));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a27);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a45);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a33);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a39);
  _Unwind_Resume(exception_object);
}