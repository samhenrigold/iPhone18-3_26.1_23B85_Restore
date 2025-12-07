void sub_29926BFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44)
{
  sub_29922D72C(&a29);
  if (v45)
  {
    (*(*v45 + 16))(v45);
  }

  if (v44)
  {
    (*(*v44 + 16))(v44);
  }

  sub_299273884(&a33);
  sub_29921D794(&a19);
  sub_29926C200(&a14);
  _Unwind_Resume(a1);
}

void ***sub_29926C200(void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    free(*v2);
    MEMORY[0x29C29BFB0](v2, 0x1010C40B1660244);
  }

  return a1;
}

uint64_t sub_29926C250(uint64_t a1, uint64_t a2)
{
  v33[19] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1168);
  if (v4)
  {
    sub_299273F58((v4 + 128));
    sub_299273FFC(v4 + 152);
  }

  v5 = *(a1 + 1176);
  if (v5)
  {
    sub_299273F58((v5 + 128));
    sub_299273FFC(v5 + 152);
  }

  v6 = *(a1 + 1048);
  if (v6)
  {
    sub_2992740A4((v6 + 8));
    if (*(v6 + 56))
    {
      sub_299274058(v6 + 32, *(v6 + 48));
      *(v6 + 48) = 0;
      v7 = *(v6 + 40);
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          *(*(v6 + 32) + 8 * i) = 0;
        }
      }

      *(v6 + 56) = 0;
    }
  }

  (*(**(a1 + 1072) + 24))(*(a1 + 1072));
  sub_2991C70DC(v31, a2, 8);
  memset(&v30, 0, sizeof(v30));
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  v18 = *(MEMORY[0x29EDC9530] + 8);
  v9 = *(MEMORY[0x29EDC9530] + 16);
  v10 = sub_2991EAC8C(v31, &v30, 0xAu);
  if ((*(v10 + *(*v10 - 24) + 32) & 5) == 0)
  {
    v23 = 0;
    v11 = MEMORY[0x29EDC95A0] + 64;
    v22 = MEMORY[0x29EDC95A0] + 64;
    v20[0] = v18;
    *(v20 + *(v18 - 24)) = v9;
    v20[1] = 0;
    v12 = (v20 + *(v20[0] - 24));
    std::ios_base::init(v12, v21);
    v13 = MEMORY[0x29EDC95A0] + 24;
    v12[1].__vftable = 0;
    v12[1].__fmtflags_ = -1;
    v20[0] = v13;
    v22 = v11;
    sub_2992751F0(v21, &v30, 8);
    sub_2991EAC8C(v20, v26, 9u);
    sub_2991EAC8C(v20, v24, 9u);
    sub_2991EAC8C(v20, v28, 9u);
    if (v29 >= 0)
    {
      v14 = v28;
    }

    else
    {
      v14 = v28[0];
    }

    sub_2991C6CA8(&__str, v14);
    std::stoi(&__str, 0, 16);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_2991EAC8C(v20, v28, 9u);
    if (v29 >= 0)
    {
      v15 = v28;
    }

    else
    {
      v15 = v28[0];
    }

    sub_2991C6CA8(&__str, v15);
    std::stoi(&__str, 0, 16);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v27 >= 0)
    {
      v16 = v26;
    }

    else
    {
      v16 = v26[0];
    }

    sub_2992769B0(v16);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v31[0] = *MEMORY[0x29EDC9518];
  *(v31 + *(v31[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29BBF0](&v32);
  std::istream::~istream();
  return MEMORY[0x29C29BF00](v33);
}

void sub_29926CA48(uint64_t a1, void *a2)
{
  v109 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 864);
  __p = 0;
  v103 = 0;
  v104 = 0;
  v3 = a2[6];
  v85 = a2 + 6;
  v100 = v2;
  v101 = a2[7];
  if (v3 == v101)
  {
    goto LABEL_111;
  }

  v82 = a1 + 1208;
  v94 = v2 + 64;
  do
  {
    if ((*(**v3 + 408))(*v3))
    {
      goto LABEL_42;
    }

    v4 = *v3;
    v5 = *(v100 + 87);
    v6 = v5 >= 0 ? v94 : *(v100 + 64);
    v7 = v5 >= 0 ? *(v100 + 87) : *(v100 + 72);
    v8 = (*(*v100 + 552))();
    v10 = v9;
    __s2 = (*(*v100 + 544))(v100);
    if (!v4)
    {
      goto LABEL_42;
    }

    v12 = v11;
    v13 = !v7 || v11 == 0;
    if (v13 || v10 == 0)
    {
      goto LABEL_42;
    }

    v15 = *(v4 + 87);
    v16 = v4 + 16;
    if (v15 < 0)
    {
      v16 = *(v4 + 8);
    }

    __s1 = v16;
    v17 = v15 >= 0 ? *(v4 + 87) : *(v4 + 9);
    v95 = (*(*v4 + 552))(v4);
    v19 = v18;
    v89 = (*(*v4 + 544))(v4);
    v88 = (v17 - v7);
    if (v17 < v7 || __s1 == 0)
    {
      goto LABEL_42;
    }

    v22 = v20;
    v23 = !memcmp(__s1, v6, 2 * v7) && v19 >= v10;
    if (!v23 || v95 == 0)
    {
      goto LABEL_42;
    }

    v25 = !memcmp(v95, v8, 2 * v10) && v22 >= v12;
    v26 = !v25 || v89 == 0;
    if (v26 || memcmp(v89, __s2, 2 * v12))
    {
      goto LABEL_42;
    }

    v83 = (*(*v4 + 304))(v4);
    v27 = (*(*v4 + 48))(v4);
    *buf = v82;
    memset(&buf[8], 0, 64);
    v108 = 0u;
    if (!v27)
    {
LABEL_78:
      v105[0] = __s1 + 2 * v7;
      v105[1] = v88;
      v52 = (*(*v4 + 112))(v4);
      v53 = v4[55];
      v54 = (*(*v4 + 376))(v4);
      v55 = (*(*v4 + 96))(v4);
      v56 = (*(*v4 + 408))(v4);
      v57 = sub_299273A90(buf, v105, v52, v53, v54, v55, v56);
      goto LABEL_79;
    }

    v93 = 0;
    v28 = 0;
    v29 = 0;
    v97 = 0;
    v98 = 0;
    v87 = v27;
    while (1)
    {
      v92 = (*(*v4 + 312))(v4, v28);
      v99 = (*(*v4 + 320))(v4, v28);
      v91 = (*(*v4 + 568))(v4, v28);
      if (v7 <= v29 || v12 <= v97 || v10 <= v98)
      {
        v39 = (*v83 + v93);
        sub_29925493C(v105, v89 + v97, v89 + v97 + *(v39 + 12), &buf[8]);
        sub_29925493C(v105, v95 + v98, v95 + v98 + v99, &buf[32]);
        v40 = *&buf[64];
        if (*&buf[64] >= v108)
        {
          v44 = 0xCCCCCCCCCCCCCCCDLL * ((*&buf[64] - *&buf[56]) >> 3);
          v45 = v44 + 1;
          if (v44 + 1 > 0x666666666666666)
          {
            sub_29921E9A8();
          }

          if (0x999999999999999ALL * ((v108 - *&buf[56]) >> 3) > v45)
          {
            v45 = 0x999999999999999ALL * ((v108 - *&buf[56]) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v108 - *&buf[56]) >> 3) >= 0x333333333333333)
          {
            v46 = 0x666666666666666;
          }

          else
          {
            v46 = v45;
          }

          if (v46)
          {
            sub_29921E9C0(&buf[56], v46);
          }

          v47 = 8 * ((*&buf[64] - *&buf[56]) >> 3);
          v48 = *v39;
          v49 = v39[1];
          *(v47 + 32) = *(v39 + 4);
          *v47 = v48;
          *(v47 + 16) = v49;
          v43 = 40 * v44 + 40;
          v50 = (v47 - (*&buf[64] - *&buf[56]));
          memcpy(v50, *&buf[56], *&buf[64] - *&buf[56]);
          v51 = *&buf[56];
          *&buf[56] = v50;
          *&buf[64] = v43;
          *&v108 = 0;
          if (v51)
          {
            operator delete(v51);
          }
        }

        else
        {
          v41 = *v39;
          v42 = v39[1];
          *(*&buf[64] + 32) = *(v39 + 4);
          *v40 = v41;
          v40[1] = v42;
          v43 = v40 + 40;
        }

        *&buf[64] = v43;
        *(v43 - 12) = v99;
        goto LABEL_77;
      }

      v30 = v99;
      if (!v28 && v10 < v99)
      {
        v31 = (*(*v4 + 544))(v4);
        v32 = (*(*v4 + 568))(v4, 0);
        if (!v31)
        {
          v32 = 0;
        }

        v30 = v99;
        if (v32 == v12)
        {
          v33 = memcmp(v31, __s2, 2 * v12);
          v30 = v99;
          if (!v33)
          {
            break;
          }
        }
      }

      v34 = v97 + v91;
      v35 = v29 + v92 > v7 && v34 > v12;
      v36 = v30 + v98;
      if (v35 && v36 > v10)
      {
        v84 = (*(*v4 + 344))(v4, v28);
        v38 = (*(*v4 + 352))(v4, v28);
        sub_2992738F8(buf, v89 + v12, v34 - v12, v29 + v92 - v7, v95 + v10, v36 - v10, v84, v38);
      }

LABEL_77:
      v29 += v92;
      v98 += v99;
      v97 += v91;
      ++v28;
      v93 += 40;
      if (v87 == v28)
      {
        goto LABEL_78;
      }
    }

    v57 = 0;
LABEL_79:
    if (*(&v108 + 1))
    {
      CFRelease(*(&v108 + 1));
    }

    *(&v108 + 1) = 0;
    if (*&buf[56])
    {
      *&buf[64] = *&buf[56];
      operator delete(*&buf[56]);
    }

    if (*&buf[32])
    {
      *&buf[40] = *&buf[32];
      operator delete(*&buf[32]);
    }

    if (*&buf[8])
    {
      *&buf[16] = *&buf[8];
      operator delete(*&buf[8]);
    }

    if (v57)
    {
      (*(*v57 + 544))(v57);
      if (v58)
      {
        v59 = *(*(*v57 + 544))(v57);
        if (((v59 - 12353) < 0x56 || v59 == 12540 || v59 == 12316) && (v60 = *(*(*v57 + 544))(v57), v60 != *(*(*v57 + 552))(v57)))
        {
          v64 = sub_2993652F8(4u);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            v65 = (*(*v57 + 24))(v57);
            v66 = (*(*v57 + 56))(v57);
            v67 = (*(*v57 + 232))(v57);
            *buf = 138412802;
            *&buf[4] = v65;
            *&buf[12] = 2112;
            *&buf[14] = v66;
            *&buf[22] = 2112;
            *&buf[24] = v67;
            _os_log_debug_impl(&dword_29918C000, v64, OS_LOG_TYPE_DEBUG, "[ME:removeTruncatedContextFromCandidates] Remove an invalid candidate %@ (%@/%@)", buf, 0x20u);
          }
        }

        else
        {
          v61 = sub_2993652F8(4u);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            v73 = (*(**v3 + 24))();
            v74 = (*(**v3 + 56))();
            v75 = (*(**v3 + 232))();
            v76 = (*(*v57 + 24))(v57);
            v77 = (*(*v57 + 56))(v57);
            v78 = (*(*v57 + 232))(v57);
            *buf = 138413570;
            *&buf[4] = v73;
            *&buf[12] = 2112;
            *&buf[14] = v74;
            *&buf[22] = 2112;
            *&buf[24] = v75;
            *&buf[32] = 2112;
            *&buf[34] = v76;
            *&buf[42] = 2112;
            *&buf[44] = v77;
            *&buf[52] = 2112;
            *&buf[54] = v78;
            _os_log_debug_impl(&dword_29918C000, v61, OS_LOG_TYPE_DEBUG, "[ME:removeTruncatedContextFromCandidates] Converting %@ (%@/%@) to %@ (%@/%@)", buf, 0x3Eu);
          }

          v62 = v103;
          if (v103 >= v104)
          {
            v68 = (v103 - __p) >> 3;
            if ((v68 + 1) >> 61)
            {
              sub_299212A8C();
            }

            v69 = (v104 - __p) >> 2;
            if (v69 <= v68 + 1)
            {
              v69 = v68 + 1;
            }

            if (v104 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v70 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v70 = v69;
            }

            if (v70)
            {
              sub_29920B86C(&__p, v70);
            }

            *(8 * v68) = v57;
            v63 = 8 * v68 + 8;
            v71 = (8 * v68 - (v103 - __p));
            memcpy(v71, __p, v103 - __p);
            v72 = __p;
            __p = v71;
            v103 = v63;
            v104 = 0;
            if (v72)
            {
              operator delete(v72);
            }
          }

          else
          {
            *v103 = v57;
            v63 = (v62 + 8);
          }

          v103 = v63;
        }
      }
    }

LABEL_42:
    ++v3;
  }

  while (v3 != v101);
LABEL_111:
  sub_299273BA0(a2 + 1);
  sub_29921ECBC(v85);
  v79 = __p;
  if (__p != v103)
  {
    do
    {
      v80 = *v79;
      v106[3] = v106;
      *buf = v80;
      v106[0] = &unk_2A1F65308;
      sub_2992AB710(a2, buf, 1, 0, v106);
      sub_29921F128(v106);
      v81 = *buf;
      *buf = 0;
      if (v81)
      {
        (*(*v81 + 16))(v81);
      }

      v79 += 8;
    }

    while (v79 != v103);
    v79 = __p;
  }

  if (v79)
  {
    v103 = v79;
    operator delete(v79);
  }
}

void sub_29926D768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29926D824(uint64_t a1)
{
  sub_299274D34(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void *sub_29926D860(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  result = sub_29925A5D8((a1 + 64), &v4);
  if (result)
  {
    return *(a1 + 16);
  }

  return result;
}

void sub_29926D8B4(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x29EDCA608];
  sub_299276BDC(*(a1 + 216), &v34);
  sub_2993E5110(*(a1 + 192), &v32);
  __p = 0;
  v30 = 0;
  v31 = 0;
  __src = 0;
  v27 = 0;
  v28 = 0;
  if (v33 == v32)
  {
    v3 = 1;
  }

  else
  {
    v3 = (v33 - v32) >> 6;
  }

  sub_299256F7C(&__src, v3);
  v4 = v32;
  v5 = v33;
  if (v32 == v33)
  {
    v12 = v27;
  }

  else
  {
    do
    {
      v6 = *(v4 + 23);
      if (v6 >= 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = *v4;
      }

      if (v6 >= 0)
      {
        v8 = *(v4 + 23);
      }

      else
      {
        v8 = v4[1];
      }

      sub_29922C614(&__p, v7, v8);
      v9 = v27;
      if (v27 >= v28)
      {
        v13 = __src;
        v14 = v27 - __src;
        v15 = 0xCCCCCCCCCCCCCCCDLL * ((v27 - __src) >> 3);
        v16 = v15 + 1;
        if (v15 + 1 > 0x666666666666666)
        {
          sub_29921E9A8();
        }

        if (0x999999999999999ALL * ((v28 - __src) >> 3) > v16)
        {
          v16 = 0x999999999999999ALL * ((v28 - __src) >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v28 - __src) >> 3) >= 0x333333333333333)
        {
          v16 = 0x666666666666666;
        }

        if (v16)
        {
          sub_29921E9C0(&__src, v16);
        }

        v17 = 8 * ((v27 - __src) >> 3);
        v18 = *(v4 + 3);
        v19 = *(v4 + 5);
        *(v17 + 32) = v4[7];
        *v17 = v18;
        *(v17 + 16) = v19;
        v12 = (40 * v15 + 40);
        v20 = (40 * v15 - v14);
        memcpy((v17 - v14), v13, v14);
        v21 = __src;
        __src = v20;
        v27 = v12;
        v28 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        v10 = *(v4 + 3);
        v11 = *(v4 + 5);
        v27[4] = v4[7];
        *v9 = v10;
        v9[1] = v11;
        v12 = v9 + 5;
      }

      v27 = v12;
      v4 += 8;
    }

    while (v4 != v5);
  }

  if (__src == v12)
  {
    if (v12 >= v28)
    {
      v22 = 0x999999999999999ALL * ((v28 - v12) >> 3);
      if (v22 <= 1)
      {
        v22 = 1;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v28 - v12) >> 3) >= 0x333333333333333)
      {
        v23 = 0x666666666666666;
      }

      else
      {
        v23 = v22;
      }

      sub_29921E9C0(&__src, v23);
    }

    v12[4] = 0;
    *v12 = 0u;
    *(v12 + 1) = 0u;
    v27 = v12 + 5;
    *v12 = 0u;
    *(v12 + 1) = 0u;
    v12[4] = 0;
    v24 = (v35 - v34) >> 1;
    *(v12 + 12) = v24;
    *(v12 + 13) = v24;
    v25 = HIBYTE(v31);
    if (v31 < 0)
    {
      v25 = v30;
    }

    *(v12 + 14) = v25;
  }

  operator new();
}

void sub_29926DCCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  a18 = &a24;
  sub_299273CA0(&a18);
  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void sub_29926DD98(uint64_t a1, uint64_t a2)
{
  v115 = *MEMORY[0x29EDCA608];
  v4 = sub_2993652F8(2u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v68 = (*(a1 + 184) >> 1) & 1;
    v69 = *(*(a1 + 176) + 104);
    *buf = 67109376;
    *&buf[4] = v68;
    *&buf[8] = 2048;
    *&buf[10] = v69;
    _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[MJ::predict] prediction:%d acceptedCandidate:%p", buf, 0x12u);
  }

  if ((*(a1 + 231) & 1) == 0)
  {
    sub_299273BA0((a2 + 8));
    sub_29921ECBC((a2 + 48));
    v8 = sub_2992896C0(*(*(a1 + 176) + 104), v5, v6, v7);
    ptr = v8;
    if ((*(a1 + 230) & 1) != 0 || (*(a1 + 184) & 2) != 0 && v8 && (*(*v8 + 48))(v8) && (*(*ptr + 24))(ptr))
    {
      v9 = sub_2993652F8(0xDu);
      v10 = os_signpost_id_make_with_pointer(v9, &ptr);
      v11 = sub_2993652F8(0xDu);
      v99 = v10 - 1;
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = v11;
        if (os_signpost_enabled(v11))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_29918C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "MecabraPredictionAnalyzeWithContext", &unk_29945DB9F, buf, 2u);
        }
      }

      sub_299383844((*(a1 + 176) + 248));
      v13 = sub_2992FE0BC();
      sub_29926B324(a1, a2, v13, 1, 0);
      v98 = v10;
      memset(v109, 0, sizeof(v109));
      v107 = 0u;
      v108 = 0u;
      memset(buf, 0, sizeof(buf));
      v110 = 1065353216;
      sub_299265CC4(a1, a2, buf);
      v14 = *(a1 + 1032);
      if (*v14 == 1)
      {
        sub_299266A18(a1, a2, ptr, v13, v13);
        v14 = *(a1 + 1032);
      }

      if (v14[264] == 1)
      {
        std::mutex::lock((a1 + 880));
        v15 = *(a1 + 944);
        std::mutex::unlock((a1 + 880));
        if (v15 != 2)
        {
          sub_2992C3E18(*(a1 + 3864), a2, v13, v13);
        }
      }

      if (*(a1 + 228) == 1)
      {
        (*(**(a1 + 3848) + 16))(__dst);
        v17 = *(&v113 + 1);
        for (i = v113; i != v17; ++i)
        {
          v105[0] = &unk_2A1F65308;
          v105[3] = v105;
          sub_2992AB710(a2, i, 1, 0, v105);
          sub_29921F128(v105);
        }

        *__dst = &unk_2A1F65118;
        p_isa = &v113;
        sub_29921EC68(&p_isa);
        sub_29921ED28(&__dst[8]);
      }

      sub_29924976C(*(a1 + 3888), a2, *v13, v13[1], (*(a1 + 176) + 248));
      if (*(a1 + 1184) || *(a1 + 1192))
      {
        sub_299317C40(a1, a2);
      }

      *__dst = &unk_2A1F65CF8;
      *&__dst[8] = sub_2992ACA88;
      *(&v112[0] + 1) = __dst;
      sub_2992AB9D4(a2, __dst);
      sub_29922D72C(__dst);
      if ((*(a1 + 230) & 1) == 0 && !sub_2992B23AC(a1 + 1216, a2, (*(a1 + 176) + 248)))
      {
        if ((atomic_load_explicit(&qword_2A14603D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14603D0))
        {
          v112[1] = xmmword_29EF10018;
          v113 = *&off_29EF10028;
          v114[0] = xmmword_29EF10038;
          *__dst = xmmword_29EF0FFF8;
          v112[0] = unk_29EF10008;
          sub_299274E3C(&qword_2A1460468, __dst, 5);
          __cxa_atexit(sub_29926ECD0, &qword_2A1460468, &dword_29918C000);
          __cxa_guard_release(&qword_2A14603D0);
        }

        if ((atomic_load_explicit(&qword_2A14603D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14603D8))
        {
          if (**(a1 + 1032))
          {
            v95 = 4;
          }

          else
          {
            v95 = 1;
          }

          dword_2A14603B0 = v95;
          __cxa_guard_release(&qword_2A14603D8);
        }

        v97 = *(a1 + 176);
        v18 = 0xCCCCCCCCCCCCCCCDLL * ((v97[33] - v97[32]) >> 3);
        v19 = 5;
        if (v18 > 5)
        {
          v19 = 0xCCCCCCCCCCCCCCCDLL * ((v97[33] - v97[32]) >> 3);
        }

        v100 = 0xCCCCCCCCCCCCCCCDLL * ((v97[33] - v97[32]) >> 3);
        v96 = v19 - 5;
        if (v18 > (v19 - 5))
        {
          v20 = 0;
          v21 = 0;
          do
          {
            --v100;
            v22 = *(v97[41] + 8 * v100);
            v23 = v97[35];
            v24 = v97[36] - v23;
            v25 = (v23 + 2 * v22);
            if (v22 >= v24 >> 1)
            {
              v25 = 0;
            }

            v26 = *v25;
            if (v26 != 9787)
            {
              if ((u_charType(v26) - 19) < 0xB)
              {
                if (v21)
                {
                  break;
                }

                v21 = 0;
                continue;
              }

              v22 = *(v97[41] + 8 * v100);
              v23 = v97[35];
              v24 = v97[36] - v23;
            }

            if (v22 >= v24 >> 1)
            {
              v27 = 0;
              v28 = 0;
            }

            else
            {
              v27 = (v23 + 2 * v22);
              if (v23)
              {
                v28 = *(v97[32] + 40 * v100 + 24);
              }

              else
              {
                v28 = 0;
              }
            }

            v29 = sub_29927512C(&qword_2A1460468, v27, v28);
            if (qword_2A1460470)
            {
              v30 = vcnt_s8(qword_2A1460470);
              v30.i16[0] = vaddlv_u8(v30);
              if (v30.u32[0] > 1uLL)
              {
                v31 = v29;
                if (v29 >= qword_2A1460470)
                {
                  v31 = v29 % qword_2A1460470;
                }
              }

              else
              {
                v31 = (qword_2A1460470 - 1) & v29;
              }

              v32 = *(qword_2A1460468 + 8 * v31);
              if (v32)
              {
                for (j = *v32; j; j = *j)
                {
                  v34 = j[1];
                  if (v34 == v29)
                  {
                    if (j[3] == v28)
                    {
                      if (!v28)
                      {
                        goto LABEL_71;
                      }

                      v35 = j[2];
                      v36 = v28;
                      v37 = v27;
                      while (*v37 == *v35)
                      {
                        ++v35;
                        v37 = (v37 + 2);
                        if (!--v36)
                        {
                          goto LABEL_71;
                        }
                      }
                    }
                  }

                  else
                  {
                    if (v30.u32[0] > 1uLL)
                    {
                      if (v34 >= qword_2A1460470)
                      {
                        v34 %= qword_2A1460470;
                      }
                    }

                    else
                    {
                      v34 &= qword_2A1460470 - 1;
                    }

                    if (v34 != v31)
                    {
                      break;
                    }
                  }
                }
              }
            }

            v38 = CFStringCreateWithCharacters(0, v27, v28);
            p_isa = &v38->isa;
            v39 = sub_2992F2800(1, 2, v38, 0);
            v102 = v39;
            if (v39)
            {
              for (k = 0; k < CFArrayGetCount(v39); ++k)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v39, k);
                sub_299276BDC(ValueAtIndex, __dst);
                v42 = sub_29931BC30(*(a1 + 3880), a2, *__dst, ((*&__dst[8] - *__dst) >> 1), v27, v28, dword_2A14603B0 + v20);
                if (*__dst)
                {
                  *&__dst[8] = *__dst;
                  operator delete(*__dst);
                }

                v20 += v42;
              }

              CFRelease(v39);
            }

            if (v38)
            {
              CFRelease(v38);
            }

            v21 = 1;
          }

          while (v100 > v96);
        }
      }

LABEL_71:
      if (**(a1 + 1032) == 1)
      {
        if ((atomic_load_explicit(&qword_2A14603E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14603E0))
        {
          sub_299217DF0(__dst, L"、");
          sub_299217DF0(v112 + 8, L"。");
          sub_299217DF0(&v113, L"！");
          sub_299217DF0(v114 + 8, L"？");
          qword_2A14603F8 = 0;
          unk_2A1460400 = 0;
          qword_2A1460408 = 0;
          sub_299273D44(&qword_2A14603F8, __dst, &v115, 4uLL);
          for (m = 0; m != -96; m -= 24)
          {
            if (*(&v114[1] + m + 15) < 0)
            {
              operator delete(*(v114 + m + 8));
            }
          }

          __cxa_atexit(sub_29926ECD4, &qword_2A14603F8, &dword_29918C000);
          __cxa_guard_release(&qword_2A14603E0);
        }

        v43 = *(a1 + 176);
        if (!sub_2993232FC(v43 + 31, 0) && v43[33] != v43[32])
        {
          v44 = *(a1 + 1176);
          if (!v44 || !*(v44 + 8))
          {
            goto LABEL_116;
          }

          v45 = *(a1 + 176);
          v46 = v45[32];
          v47 = 0xCCCCCCCCCCCCCCCDLL * ((v45[33] - v46) >> 3);
          v48 = v47 - (*(v44 + 32) + *(*(a1 + 1032) + 328));
          v49 = v48 & ~(v48 >> 63);
          *&v112[0] = 0;
          memset(__dst, 0, sizeof(__dst));
          if (v49 < v47)
          {
            v50 = 0;
            v51 = 40 * v49 + 24;
            do
            {
              v52 = *(v45[41] + 8 * v49);
              v53 = v45[35];
              if (v52 >= (v45[36] - v53) >> 1 || ((v54 = *(v46 + v51), v53) ? (v55 = v54 == 0) : (v55 = 1), v55))
              {
                v56 = 0;
              }

              else
              {
                v56 = (*(**(a1 + 192) + 32))(*(a1 + 192), v53 + 2 * v52, 2 * v54);
                v50 = *&__dst[8];
              }

              if (v50 >= *&v112[0])
              {
                v57 = *__dst;
                v58 = v50 - *__dst;
                v59 = (v50 - *__dst) >> 2;
                v60 = v59 + 1;
                if ((v59 + 1) >> 62)
                {
                  sub_299212A8C();
                }

                v61 = *&v112[0] - *__dst;
                if ((*&v112[0] - *__dst) >> 1 > v60)
                {
                  v60 = v61 >> 1;
                }

                v62 = v61 >= 0x7FFFFFFFFFFFFFFCLL;
                v63 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v62)
                {
                  v63 = v60;
                }

                if (v63)
                {
                  sub_2992F86B0(__dst, v63);
                }

                v64 = (v50 - *__dst) >> 2;
                v65 = (4 * v59);
                v66 = (4 * v59 - 4 * v64);
                *v65 = v56;
                v50 = v65 + 1;
                memcpy(v66, v57, v58);
                v67 = *__dst;
                *__dst = v66;
                *&__dst[8] = v50;
                *&v112[0] = 0;
                if (v67)
                {
                  operator delete(v67);
                }
              }

              else
              {
                *v50++ = v56;
              }

              *&__dst[8] = v50;
              ++v49;
              v46 = v45[32];
              v51 += 40;
            }

            while (v49 < 0xCCCCCCCCCCCCCCCDLL * ((v45[33] - v46) >> 3));
          }

          LMLanguageModelCreatePredictionEnumerator();
          v70 = 0;
          while (1)
          {
            v71 = -7.0;
            if (v70 == 5 || (LMPredictionEnumeratorAdvance() & 1) == 0)
            {
              break;
            }

            v104 = 0;
            v102 = 0;
            p_isa = 0;
            LMPredictionEnumeratorGetPrediction();
            ++v70;
            if (v104 == 2)
            {
              v71 = *&p_isa;
              goto LABEL_110;
            }
          }

          v70 = -1;
LABEL_110:
          LMPredictionEnumeratorRelease();
          if (*__dst)
          {
            *&__dst[8] = *__dst;
            operator delete(*__dst);
          }

          v72 = v70 - 1;
          if (v70 >= 1)
          {
            v73 = 0;
            if (v72 <= 1)
            {
              v72 = 1;
            }

            v74 = v72 + (-1.0 - v71 + -1.0 - v71);
          }

          else
          {
LABEL_116:
            v74 = -1;
            v73 = 2;
          }

          v75 = qword_2A14603F8;
          v76 = unk_2A1460400;
          while (v75 != v76)
          {
            v77 = *(v75 + 23);
            if (v77 < 0)
            {
              v78 = *v75;
              if (*v75)
              {
                v77 = *(v75 + 8);
              }

              else
              {
                v77 = 0;
              }

              if (*(v75 + 8) != 1)
              {
                goto LABEL_128;
              }
            }

            else
            {
              v78 = v75;
              if (v77 != 1)
              {
                goto LABEL_128;
              }

              v77 = 1;
              v78 = v75;
            }

            if (*v78 == 12289)
            {
              v79 = 587;
              goto LABEL_129;
            }

LABEL_128:
            v79 = 582;
LABEL_129:
            v80 = word_29940982A[v79];
            v81 = *(a1 + 3880);
            v82 = sub_2992FE0BC();
            sub_29931A61C(v81, a2, *v82, v82[1], v78, v77, v78, v77, 0.0, v80, v80, 0, 0, v74, 0, 67, 2, v73);
            v75 += 24;
          }
        }

        if (**(a1 + 1032))
        {
          sub_299232D70((a1 + 3928), a2, *(*(a1 + 176) + 280), (*(*(a1 + 176) + 288) - *(*(a1 + 176) + 280)) >> 1);
        }
      }

      sub_2992ABFE4(a2);
      sub_2992AC684(a2, 12, "## Final ##", 0, 1);
      v83 = *(a2 + 48);
      v84 = *(a2 + 56) - v83;
      if (v84)
      {
        v85 = v84 >> 3;
        if (v85 <= 1)
        {
          v85 = 1;
        }

        v86 = 1;
        do
        {
          v87 = *v83++;
          *(v87 + 8) = v86++;
          --v85;
        }

        while (v85);
        v88 = *MEMORY[0x29EDB8ED8];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        *__dst = Mutable;
        (*(**(a1 + 3944) + 16))(*(a1 + 3944), Mutable, 0, 0);
        if ((*(a1 + 184) & 0x20) != 0)
        {
          v90 = "ja-Romaji";
        }

        else
        {
          v90 = "ja-Kana";
        }

        v91 = CFStringCreateWithCString(v88, v90, 0x8000100u);
        p_isa = &v91->isa;
        sub_2992BBD18(*(a1 + 3936), @"ja", v91, Mutable);
        if (v91)
        {
          CFRelease(v91);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      v92 = sub_2993652F8(0xDu);
      if (v99 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v93 = v92;
        if (os_signpost_enabled(v92))
        {
          *__dst = 0;
          _os_signpost_emit_with_name_impl(&dword_29918C000, v93, OS_SIGNPOST_INTERVAL_END, v98, "MecabraPredictionAnalyzeWithContext", &unk_29945DB9F, __dst, 2u);
        }
      }

      sub_29921ED28(v109);
    }
  }
}

void sub_29926EB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  __cxa_guard_abort(&qword_2A14603D0);
  sub_29921ED28(&a35);
  _Unwind_Resume(a1);
}

void **sub_29926ECD4(void **a1)
{
  v3 = a1;
  sub_299212B90(&v3);
  return a1;
}

void sub_29926ED0C(uint64_t a1, uint64_t *a2, int a3, _BYTE *a4)
{
  v4 = a2;
  v41[4] = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(*a2 + 119);
  if (v8 < 0)
  {
    v9 = *(v7 + 12);
    LOWORD(v8) = *(v7 + 52);
  }

  else
  {
    v9 = (v7 + 24);
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 40);
  v12 = v11[1];
  v13 = 0.0;
  if (v12)
  {
    v14 = 2 * v12;
    if (2 * v12 > (2 * v10))
    {
      goto LABEL_29;
    }

    v15 = *v11;
    v16 = (*(v6 + 184) >> 6) & 8 | *(v6 + 184) & 0x20 | (*(v6 + 184) >> 4) & 0x10 | (*(v6 + 184) >> 7) & 6;
    if (v16)
    {
      if (v14)
      {
        v17 = 0;
        v18 = (v14 - 1);
        v37 = v10;
        v38 = v14 & 0x7FFFFFFE;
        do
        {
          v19 = *&v9[v17];
          v20 = *&v15[v17];
          if (v19 != v20)
          {
            if (v17 == v38)
            {
              goto LABEL_29;
            }

            v21 = v15;
            v10 = v18;
            v22 = sub_2993C4A54(v20, v16);
            v18 = v10;
            v15 = v21;
            v4 = a2;
            LODWORD(v10) = v37;
            if (!v22)
            {
              goto LABEL_29;
            }

            v23 = *v22;
            v24 = v22[1] - *v22;
            if (!v24)
            {
              goto LABEL_29;
            }

            v25 = v24 >> 1;
            if (v25 <= 1)
            {
              v25 = 1;
            }

            while (1)
            {
              v26 = *v23++;
              if (v19 == v26)
              {
                break;
              }

              if (!--v25)
              {
                goto LABEL_29;
              }
            }

            v13 = v13 + -1.0;
          }

          v17 += 2;
        }

        while (v18 > v17);
      }
    }

    else if (memcmp(*v11, v9, 2 * v12))
    {
      goto LABEL_29;
    }
  }

  v27 = *(v6 + 1032);
  if (v10 - v12 <= 0)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27[240] + v27[240] * (v10 - v12);
  }

  v29 = -(v13 * v27[222]);
  v30 = v27[238];
  v31 = -v27[239];
  v32 = *(a1 + 56);
  v33 = log2f(a3 / 100.0);
  (*(*v7 + 480))(v7, (v28 - a3 + v30 + v32 + v29 + (v33 * v31)));
  v7[55] = (v28 + (v29 * *(*(v6 + 1032) + 448)));
  (*(**v4 + 528))();
  v34 = *(a1 + 48);
  v41[0] = &unk_2A1F65308;
  v41[3] = v41;
  sub_2992AB710(v34, v4, 1, 0, v41);
  sub_29921F128(v41);
LABEL_29:
  std::mutex::lock((v6 + 880));
  v35 = *(v6 + 944);
  std::mutex::unlock((v6 + 880));
  if (v35 == 2)
  {
    *a4 = 1;
  }
}

void sub_29926F03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29921F128(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29926F058(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 64);
    *(v2 + 64) = 0;
    if (v3)
    {
      MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
    }

    v4 = *(v2 + 56);
    *(v2 + 56) = 0;
    if (v4)
    {
      MEMORY[0x29C29BF70](v4, 0x1000C8077774924);
    }

    sub_29918D980(v2 + 8);
    sub_29919C3B0(v2);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t *sub_29926F224(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_2992751B4((v2 + 19));
    sub_299273F58(v2 + 16);
    v3 = v2[12];
    v2[12] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v2[11];
    v2[11] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    sub_299383FE4(v2);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void sub_29926F2F0(CFURLRef *__return_ptr a1@<X8>, CFURLRef url@<X0>, CFStringRef pathComponent@<X1>)
{
  v4 = CFURLCreateCopyAppendingPathComponent(0, url, pathComponent, 0);
  cf[0] = 0;
  cf[1] = v4;
  if (CFURLResourceIsReachable(v4, cf))
  {
    *a1 = v4;
  }

  else
  {
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    *a1 = 0;
    if (v4)
    {
      CFRelease(v4);
    }
  }
}

void sub_29926F368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

void sub_29926F380(const __CFURL *a1@<X0>, void *a2@<X8>)
{
  if (a1 && CFURLResourceIsReachable(a1, 0))
  {
    sub_29926F2F0(&v7, a1, off_2A145E3A0);
    sub_29926F2F0(&v6, a1, off_2A145E398);
    v5 = v6;
    v4 = v7;
    if (v7 && v6)
    {
      operator new();
    }

    *a2 = 0;
    if (v5)
    {
      CFRelease(v5);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    *a2 = 0;
  }
}

void sub_29926F510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  (*(*v11 + 8))(v11, a2, a3, a4, a5, a6, a7, a8);
  (*(*v10 + 8))(v10);
  sub_29920FE30(&a9, 0);
  sub_29920FE30(&a10, 0);
  _Unwind_Resume(a1);
}

void sub_29926F5E4(int a1, uint64_t a2, int a3, int a4, CFDictionaryRef theDict)
{
  if (a2 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDC5760]);
    v7 = CFGetTypeID(Value);
    if (v7 == CFBooleanGetTypeID() && Value == *MEMORY[0x29EDB8F00])
    {
      v9 = *(a2 + 1168);
      if (v9)
      {
        sub_2993F5054(v9);
      }

      v10 = *(a2 + 1064);
      if (v10)
      {

        sub_29926C250(a2, v10);
      }
    }
  }
}

void sub_29926F688(uint64_t a1, const __CFString ***a2)
{
  v41 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 192);
  if (v3)
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v4 = *a2;
    v5 = a2[1];
    if (*a2 != v5)
    {
      v28 = a1;
      do
      {
        sub_299278568(*v4, __p);
        v6 = v35;
        if (v35 >= v36)
        {
          v9 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 3);
          v10 = v9 + 1;
          if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_299212A8C();
          }

          if (0x5555555555555556 * ((v36 - v34) >> 3) > v10)
          {
            v10 = 0x5555555555555556 * ((v36 - v34) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 3) >= 0x555555555555555)
          {
            v11 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v11 = v10;
          }

          v40 = &v34;
          if (v11)
          {
            sub_299212AA4(&v34, v11);
          }

          v12 = 8 * ((v35 - v34) >> 3);
          v13 = *__p;
          *(v12 + 16) = v30;
          *v12 = v13;
          __p[1] = 0;
          v30 = 0;
          __p[0] = 0;
          v8 = 24 * v9 + 24;
          v14 = (24 * v9 - (v35 - v34));
          memcpy((v12 - (v35 - v34)), v34, v35 - v34);
          v15 = v34;
          v16 = v36;
          v34 = v14;
          v35 = v8;
          v36 = 0;
          *&buf = v15;
          v38 = v15;
          v39 = v16;
          *(&buf + 1) = v15;
          sub_299212AFC(&buf);
          v35 = v8;
          if (SHIBYTE(v30) < 0)
          {
            operator delete(__p[0]);
            v8 = v35;
          }
        }

        else
        {
          v7 = *__p;
          *(v35 + 2) = v30;
          *v6 = v7;
          v8 = v6 + 24;
          v35 = v6 + 24;
        }

        v17 = (v8 - 24);
        if (*(v8 - 1) < 0)
        {
          v17 = *v17;
        }

        v18 = v32;
        if (v32 >= v33)
        {
          v20 = (v32 - v31) >> 3;
          if ((v20 + 1) >> 61)
          {
            sub_299212A8C();
          }

          v21 = (v33 - v31) >> 2;
          if (v21 <= v20 + 1)
          {
            v21 = v20 + 1;
          }

          if (v33 - v31 >= 0x7FFFFFFFFFFFFFF8)
          {
            v22 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v21;
          }

          if (v22)
          {
            sub_2991C1E60(&v31, v22);
          }

          v23 = (8 * v20);
          *v23 = v17;
          v19 = 8 * v20 + 8;
          v24 = v23 - (v32 - v31);
          memcpy(v24, v31, v32 - v31);
          v25 = v31;
          v31 = v24;
          v32 = v19;
          v33 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v32 = v17;
          v19 = (v18 + 8);
        }

        v32 = v19;
        v26 = sub_2993652F8(9u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = v35 - 24;
          if (*(v35 - 1) < 0)
          {
            v27 = *v27;
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v27;
          _os_log_debug_impl(&dword_29918C000, v26, OS_LOG_TYPE_DEBUG, "[MJ] Setting additional dictionary %s", &buf, 0xCu);
        }

        ++v4;
      }

      while (v4 != v5);
      v3 = *(v28 + 192);
    }

    (*(*v3 + 160))(v3);
    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    *&buf = &v34;
    sub_299212B90(&buf);
  }
}

void sub_29926F9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char *__p, char *a21, uint64_t a22, char a23)
{
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  __p = &a23;
  sub_299212B90(&__p);
  _Unwind_Resume(a1);
}

void sub_29926FBC4(uint64_t a1, uint64_t a2, CFStringRef theString, double a4)
{
  v4 = *(a1 + 1048);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = sub_29926FC44;
  v5[3] = &unk_29EF10068;
  v5[4] = a1;
  v5[5] = a2;
  *&v5[6] = a4;
  sub_2993274B0(v4, theString, v5);
}

void sub_29926FC44(void *a1, CFStringRef theString)
{
  if (theString)
  {
    v4 = a1[4];
    Length = CFStringGetLength(theString);
    if (Length < 1)
    {
LABEL_7:
      v9 = sub_2993277A4(*(v4 + 1048), theString);
      if (v9)
      {
        v10 = v9;
        v11 = a1[5];
        v12 = a1[6];
        sub_29933A2F4(*(v4 + 176), v11, v9, 0, &v12);
        CFRelease(v10);
      }
    }

    else
    {
      v6 = Length;
      v7 = 0;
      while (1)
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v7);
        if (!u_isgraph(CharacterAtIndex) || u_isdigit(CharacterAtIndex))
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_7;
        }
      }
    }
  }
}

void sub_29926FD10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::mutex::lock((a1 + 720));
    operator new();
  }
}

void sub_29926FE58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::mutex::lock((a1 + 720));
    operator new();
  }
}

void sub_29926FFA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::mutex::lock((a1 + 720));
    operator new();
  }
}

uint64_t sub_2992700B8(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 1168))
  {
    LMLanguageModelFlushDynamicData();
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    v4 = sub_29933AC80(v3);
  }

  else
  {
    v4 = 1;
  }

  if ((*(**(a1 + 192) + 120))(*(a1 + 192)))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299270134(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    (*(*v2 + 88))(v2);
  }

  LMLanguageModelResetDynamicData();
  sub_29931FE84(**(a1 + 3888));
  v3 = *(**(a1 + 192) + 72);

  return v3();
}

void sub_2992701D0(uint64_t a1)
{
  if (((*(**(a1 + 192) + 240))(*(a1 + 192)) & 1) == 0 && (*(a1 + 1200) & 1) == 0)
  {
    v2 = sub_29936D41C("ja");
    if (v2)
    {
      v3 = v2;
      sub_299270284(v2, v2);
      sub_299270308(v4, v3);
      *(a1 + 1200) = 1;
      CFRelease(v3);
    }
  }
}

void sub_29927026C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

void sub_299270284(int a1, CFURLRef url)
{
  v5 = *MEMORY[0x29EDCA608];
  if (CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024))
  {
    sub_2991C6CA8(&__p, buffer);
    if (v3 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_299270308(uint64_t a1, const __CFURL *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = CFURLCreateCopyAppendingPathComponent(0, a2, off_2A145E380, 1u);
  v3 = 0;
  url[1] = v2;
  v6[0] = off_2A145E390;
  v6[1] = off_2A145E3A0;
  do
  {
    sub_29926F2F0(url, v2, v6[v3]);
    v4 = url[0];
    if (url[0])
    {
      CFURLGetFileSystemRepresentation(url[0], 1u, buffer, 1024);
      CFRelease(v4);
    }

    ++v3;
  }

  while (v3 != 2);
  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_2992703F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299270438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v4 = *(a1 + 176);
    if (v4)
    {
      (*(*v4 + 24))(v4, a2);
    }
  }

  v5 = *(a1 + 3888);

  return sub_29924A45C(v5);
}

uint64_t sub_2992704A4(uint64_t a1, CFStringRef theString, const __CFString *a3, int a4, int a5)
{
  v7 = *MEMORY[0x29EDCA608];
  if (theString && CFStringGetLength(theString))
  {
    sub_299276E1C(theString);
  }

  return 0;
}

void sub_299270BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, const void *a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_29921D794((v32 - 176));
  if (a19 < 0)
  {
    operator delete(__p);
  }

  *(v32 - 176) = &a20;
  sub_299273CA0((v32 - 176));
  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  sub_29924A4BC(&a26, 0);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

CFMutableArrayRef sub_299270CB4(uint64_t a1, const __CFString *a2)
{
  sub_299276BDC(a2, v35);
  sub_2993E5110(*(a1 + 192), &v33);
  if (v33 == v34)
  {
    v27 = 0;
  }

  else
  {
    v31 = 0;
    theArray = CFArrayCreateMutable(0, (v34 - v33) >> 6, MEMORY[0x29EDB9000]);
    __p = 0;
    v30 = 0;
    v3 = v33;
    if (v34 != v33)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = (v34 - v33) >> 6;
      do
      {
        v9 = (v3 + v4);
        if (v7 == v8 - 1 || (*(v9 + 6) != -1 ? (v10 = *(v9 + 22) == -1) : (v10 = 1), v10))
        {
          v11 = 1;
        }

        else
        {
          v11 = sub_299255970(*(a1 + 1040), *(v9 + 28), *(v3 + v4 + 118));
        }

        v12 = *(v9 + 25);
        v13 = *(v9 + 23);
        if (v13 >= 0)
        {
          v14 = v9;
        }

        else
        {
          v14 = *v9;
        }

        if (v13 >= 0)
        {
          v15 = *(v9 + 23);
        }

        else
        {
          v15 = v9[1];
        }

        sub_29922C614(&__p, v14, v15);
        v16 = *(v9 + 23);
        if ((v16 & 0x8000000000000000) != 0)
        {
          v16 = v9[1];
        }

        v6 += v12;
        if (v16)
        {
          v17 = v5 == -1;
        }

        else
        {
          v17 = 1;
        }

        v19 = !v17 && v6 != 0;
        if (v19 & v11)
        {
          v20 = v31 >= 0 ? &__p : __p;
          v21 = v31 >= 0 ? SHIBYTE(v31) : v30;
          v22 = CFStringCreateWithCharacters(0, v20, v21);
          if (v22)
          {
            v23 = sub_299230C50(v22, v5, v6);
            if (v23)
            {
              CFArrayAppendValue(theArray, v23);
              CFRelease(v23);
            }

            if (SHIBYTE(v31) < 0)
            {
              *__p = 0;
              v30 = 0;
            }

            else
            {
              LOWORD(__p) = 0;
              HIBYTE(v31) = 0;
            }

            v5 += v6;
            v6 = 0;
          }
        }

        ++v7;
        v3 = v33;
        v8 = (v34 - v33) >> 6;
        v4 += 64;
      }

      while (v7 < v8);
      if (v6 > 0)
      {
        if (v31 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v31 >= 0)
        {
          v25 = SHIBYTE(v31);
        }

        else
        {
          v25 = v30;
        }

        v26 = CFStringCreateWithCharacters(0, p_p, v25);
        sub_299230C50(v26, v5, v6);
      }
    }

    v27 = theArray;
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }
  }

  __p = &v33;
  sub_299273CA0(&__p);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  return v27;
}

void sub_299270F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, __int16 *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  sub_299219AB4(&a10, 0);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_2992530BC(&a17, 0);
  __p = &a18;
  sub_299273CA0(&__p);
  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void sub_299270F8C(uint64_t a1, uint64_t a2)
{
  __p[3] = *MEMORY[0x29EDCA608];
  sub_2992AC684(a2, 12, "## Before reranking ##", 0, 1);
  if (*(a1 + 228) == 1 && *(a1 + 1168))
  {
    (*(**(a1 + 3840) + 16))(*(a1 + 3840), a2, *(a1 + 176) + 248);
    v55 = &unk_2A1F65CF8;
    v56 = sub_2992ACF40;
    v58 = &v55;
    sub_2992AB9D4(a2, &v55);
  }

  else
  {
    v55 = &unk_2A1F65CF8;
    v56 = sub_2992ACA88;
    v58 = &v55;
    sub_2992AB9D4(a2, &v55);
  }

  sub_29922D72C(&v55);
  v4 = *(a1 + 1032);
  if (*v4 == 1 && *(a2 + 56) - *(a2 + 48) >= 9uLL)
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    sub_2991C5AEC(&v55, *(v4 + 404) + *(v4 + 416));
    v6 = *(a2 + 48);
    v5 = *(a2 + 56);
    if (((v5 - v6) >> 3) >= 8)
    {
      v7 = 8;
    }

    else
    {
      v7 = (v5 - v6) >> 3;
    }

    __p[0] = 0;
    if (v5 != v6)
    {
      v8 = 0;
      do
      {
        v9 = *(*(a2 + 48) + 8 * v8);
        if ((*(*v9 + 96))(v9) == 76 || (*(*v9 + 96))(v9) == 74)
        {
          sub_299266D00(&v55, __p);
        }

        v8 = __p[0] + 1;
        __p[0] = v8;
      }

      while (v8 < v7);
    }

    v10 = v55;
    v11 = (v56 - v55) >> 3;
    if (v11 >= 2)
    {
      if (v55 != v56)
      {
        v12 = v56 - 8;
        if (v56 - 8 > v55)
        {
          v13 = v55 + 8;
          do
          {
            v14 = *(v13 - 1);
            *(v13 - 1) = *v12;
            *v12 = v14;
            v12 -= 8;
            v15 = v13 >= v12;
            v13 += 8;
          }

          while (!v15);
        }
      }

      memset(__p, 0, 24);
      sub_2991C5AEC(__p, v11);
      v17 = v55;
      v16 = v56;
      v54 = v56;
      while (v17 != v16)
      {
        *buf = *v17;
        v18 = *(*(a2 + 48) + 8 * *buf);
        v19 = (*(*v18 + 48))(v18);
        if ((*(*v18 + 96))(v18) != 74)
        {
          v21 = v55;
          v20 = v56;
          while (v21 != v20)
          {
            if (*v21 != *buf)
            {
              v22 = *(*(a2 + 48) + 8 * *v21);
              v23 = (*(*v22 + 48))(v22) - 1;
              if (v23 < v19)
              {
                v24 = (*(*v18 + 344))(v18, 0);
                if (v24 == (*(*v22 + 344))(v22, 0))
                {
                  v25 = (*(*v18 + 352))(v18, v23);
                  if (v25 == (*(*v22 + 352))(v22, v23))
                  {
                    (*(*v18 + 544))(v18);
                    v27 = v26;
                    (*(*v22 + 544))(v22);
                    if (v28 + v27 >= *(*(a1 + 1032) + 342))
                    {
                      v29 = (*(*v18 + 544))(v18);
                      v31 = v30;
                      v32 = (*(*v22 + 544))(v22);
                      if (v31 >= v33 && (v29 || !v33) && !memcmp(v29, v32, 2 * v33))
                      {
                        sub_299266D00(__p, buf);
                        break;
                      }
                    }
                  }
                }
              }
            }

            ++v21;
          }
        }

        ++v17;
        v16 = v54;
      }

      v34 = sub_2993652F8(0xBu);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v37 = __p[1];
        for (i = __p[0]; i != v37; ++i)
        {
          v38 = *i;
          v39 = sub_2993652F8(0xBu);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            v40 = *(*(a2 + 48) + 8 * v38);
            v41 = (*(*v40 + 24))(v40);
            *buf = 138412290;
            *&buf[4] = v41;
            _os_log_debug_impl(&dword_29918C000, v39, OS_LOG_TYPE_DEBUG, "Pruning %@ (excessive learning candidates)", buf, 0xCu);
          }
        }
      }

      sub_2992AC390(a2, __p, v35);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v10 = v55;
    }

    if (v10)
    {
      v56 = v10;
      operator delete(v10);
    }
  }

  if (*(a1 + 832) != *(a1 + 824) && *(a1 + 848) == 1)
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    __p[0] = 0;
    v42 = *(a2 + 48);
    if (*(a2 + 56) != v42)
    {
      v43 = 0;
      do
      {
        if ((*(**(v42 + 8 * v43) + 408))(*(v42 + 8 * v43)) == 1)
        {
          break;
        }

        v44 = __p[0];
        if (__p[0] >= *(*(a1 + 1032) + 310))
        {
          sub_299266D00(&v55, __p);
          v44 = __p[0];
        }

        v43 = v44 + 1;
        __p[0] = v43;
        v42 = *(a2 + 48);
      }

      while (v43 < (*(a2 + 56) - v42) >> 3);
    }

    v45 = sub_2993652F8(0xBu);
    v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG);
    v48 = v55;
    if (v46)
    {
      v49 = v56;
      if (v55 != v56)
      {
        do
        {
          v50 = *v48;
          v51 = sub_2993652F8(0xBu);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            v52 = *(*(a2 + 48) + 8 * v50);
            v53 = (*(*v52 + 24))(v52);
            LODWORD(__p[0]) = 138412290;
            *(__p + 4) = v53;
            _os_log_debug_impl(&dword_29918C000, v51, OS_LOG_TYPE_DEBUG, "Pruning %@ (QuickPath candidate)", __p, 0xCu);
          }

          ++v48;
        }

        while (v48 != v49);
        v48 = v55;
      }
    }

    if (v56 != v48)
    {
      sub_2992AC390(a2, &v55, v47);
      v48 = v55;
    }

    if (v48)
    {
      v56 = v48;
      operator delete(v48);
    }
  }

  sub_2992AC684(a2, 12, "## After reranking ##", 0, 1);
}

void sub_2992717CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_299271854(void *a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_29918C000, v2, OS_LOG_TYPE_DEBUG, "[MJ::assetDictionariesDidChange]", buf, 2u);
  }

  v3 = a1[132];
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = sub_2993652F8(9u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "assetDictionariesDidChange";
      v18 = 2112;
      v19 = v4;
      _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "[MJ::%s] swapping neural language model: %@", buf, 0x16u);
    }

    error = 0;
    if (CFURLResourceIsReachable(v4, &error))
    {
      if (a1[148] && a1[480] && a1[481])
      {
        v6 = sub_2993652F8(0xDu);
        v7 = os_signpost_id_make_with_pointer(v6, a1);
        v8 = sub_2993652F8(0xDu);
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v9 = v8;
          if (os_signpost_enabled(v8))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_29918C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "MecabraJapaneseNeuralLanguageModelSwap", "Swap neural language model for MecabraJapanese", buf, 2u);
          }
        }

        sub_29926F2F0(&v15, v4, off_2A145E390);
        sub_29926F2F0(&v14, v4, off_2A145E3A0);
        if (v15)
        {
          if (v14)
          {
            operator new();
          }

          CFRelease(v15);
        }

        else if (v14)
        {
          CFRelease(v14);
        }
      }
    }

    else if (error)
    {
      CFRelease(error);
    }

    v3 = a1[132];
  }

  sub_29923F12C((a1 + 135), *(v3 + 48), 0);
  if (a1[481])
  {
    v10 = *(a1[132] + 56);
    if (v10)
    {
      v11 = a1[145];
      sub_299278568(v10, buf);
      v12 = sub_299241F00(v11, buf);
      v13 = v12;
      if ((v20 & 0x80000000) == 0)
      {
        if (!v12)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      operator delete(*buf);
      if (v13)
      {
LABEL_28:
        (*(*a1[481] + 40))(a1[481], *(a1[145] + 344));
      }
    }
  }

LABEL_29:
  sub_29926F688(a1, a1[132]);
}

void sub_299271D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (v20)
  {
    (*(*v20 + 8))(v20, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_29920FE30(&a12, 0);
  sub_29920FE30(&a13, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_299271EC0(uint64_t a1, uint64_t a2)
{
  v17[19] = *MEMORY[0x29EDCA608];
  sub_2991C70DC(v15, a2, 8);
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  contentsDeallocator = *MEMORY[0x29EDB8EE8];
  v3 = sub_2991EAC8C(v15, __p, 0xAu);
  if ((*(v3 + *(*v3 - 24) + 32) & 5) == 0)
  {
    if (v14 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    v5 = CFStringCreateWithCStringNoCopy(0, v4, 0x8000100u, contentsDeallocator);
    v12 = v5;
    v6 = sub_299327878(*(a1 + 1048), v5);
    v10 = 0;
    v11 = v6;
    v9 = 0;
    sub_299276A84(v5);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  v15[0] = *MEMORY[0x29EDC9518];
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29BBF0](&v16);
  std::istream::~istream();
  return MEMORY[0x29C29BF00](v17);
}

void sub_2992722F8(uint64_t a1, int a2)
{
  if (*(a1 + 230) != a2)
  {
    *(a1 + 230) = a2;
    (*(**(a1 + 192) + 112))(*(a1 + 192));
    v4 = *(a1 + 1184);
    if (v4)
    {
      if (!a2)
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 1056);
      if (*(v5 + 81) == 1)
      {
        sub_29926F380(*(v5 + 72), &v9);
        if (v9)
        {
          v6 = *(a1 + 1192);
          *(a1 + 1192) = v9;
          if (v6)
          {
            (*(*v6 + 8))(v6);
          }
        }

        v7 = *(a1 + 1056);
        if (*(v7 + 24) != *(v7 + 32))
        {
          sub_29926F688(a1, (v7 + 24));
          v7 = *(a1 + 1056);
        }

        *(v7 + 81) = 0;
      }

      v4 = *(a1 + 1192);
      if (v4)
      {
LABEL_12:
        *(*(a1 + 3816) + 8) = v4;
        v8 = *(**(a1 + 3848) + 32);

        v8();
      }
    }
  }
}

uint64_t sub_299272444(uint64_t a1, const __CFString *a2)
{
  result = *(a1 + 1168);
  if (result)
  {
    return sub_299384100(result, a2);
  }

  return result;
}

uint64_t sub_299272454(uint64_t a1, const __CFString *a2)
{
  result = *(a1 + 1168);
  if (result)
  {
    return sub_2993841C0(result, a2);
  }

  return result;
}

MecabraCandidate *sub_299272464(uint64_t a1, const __CFString *a2, int a3)
{
  result = sub_2992704A4(a1, a2, 0, a3, 1);
  if (result)
  {

    return sub_29928A270(result);
  }

  return result;
}

uint64_t sub_2992724EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v4 = (v2 + 24);
    sub_29927255C(&v4);
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x29C29BFB0](v2, 0x1032C40CA71968DLL);
  }

  return a1;
}

void sub_29927255C(void ***a1)
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
        sub_29921ED28((v4 - 48));
        v6 = *(v4 - 11);
        if (v6)
        {
          *(v4 - 10) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 14);
        if (v7)
        {
          *(v4 - 13) = v7;
          operator delete(v7);
        }

        v8 = *(v4 - 17);
        if (v8)
        {
          *(v4 - 16) = v8;
          operator delete(v8);
        }

        v9 = *(v4 - 20);
        if (v9)
        {
          *(v4 - 19) = v9;
          operator delete(v9);
        }

        v10 = v4 - 184;
        v11 = *(v4 - 23);
        if (v11)
        {
          *(v4 - 22) = v11;
          operator delete(v11);
        }

        v4 -= 184;
      }

      while (v10 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_299272640(uint64_t a1)
{
  sub_299253084((a1 + 2592), 0);
  std::mutex::~mutex((a1 + 16));
  sub_299215B18((a1 + 8), 0);
  return a1;
}

void **sub_299272684(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  sub_29918D980(a1 + 8);

  return sub_29919C3B0(a1);
}

void sub_2992726D0(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        sub_29925A03C(&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

unint64_t sub_299272744(unint64_t result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v112 = *(a2 - 2);
        v113 = *v8;
        if (v112 <= *v8)
        {
          return result;
        }

        v114 = v8[1];
        v115 = *(a2 - 1);
        *v8 = v112;
        v8[1] = v115;
        goto LABEL_105;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v120 = v8[2];
      v121 = *v8;
      v122 = v8[4];
      if (v120 <= *v8)
      {
        if (v122 > v120)
        {
          v179 = v8[3];
          v180 = v8[5];
          v8[2] = v122;
          v8[3] = v180;
          v8[4] = v120;
          v8[5] = v179;
          if (v122 > v121)
          {
            v181 = v8[1];
            *v8 = v122;
            v8[1] = v180;
            v8[2] = v121;
            v8[3] = v181;
          }

          goto LABEL_193;
        }
      }

      else
      {
        if (v122 > v120)
        {
          v123 = v8[1];
          v124 = v8[5];
          *v8 = v122;
          v8[1] = v124;
          v8[4] = v121;
          v8[5] = v123;
          goto LABEL_191;
        }

        v193 = v8[1];
        v194 = v8[3];
        *v8 = v120;
        v8[1] = v194;
        v8[2] = v121;
        v8[3] = v193;
        if (v122 > v121)
        {
          v195 = v8[5];
          v8[2] = v122;
          v8[3] = v195;
          v8[4] = v121;
          v8[5] = v193;
LABEL_191:
          v120 = v121;
LABEL_193:
          v196 = *(a2 - 2);
          if (v196 > v120)
          {
            v8[4] = v196;
            *(a2 - 2) = v120;
            v197 = v8[4];
            v198 = v8[5];
            v8[5] = *(a2 - 1);
            *(a2 - 1) = v198;
            v199 = v8[2];
            if (v197 > v199)
            {
              v200 = v8[3];
              v201 = v8[5];
              v8[2] = v197;
              v8[3] = v201;
              v8[4] = v199;
              v8[5] = v200;
              v202 = *v8;
              if (v197 > *v8)
              {
                v203 = v8[1];
                *v8 = v197;
                v8[1] = v201;
                v8[2] = v202;
                v8[3] = v203;
              }
            }
          }

          return result;
        }
      }

      v120 = v122;
      goto LABEL_193;
    }

    if (v9 == 5)
    {

      return sub_299273174(v8, v8 + 2, v8 + 4, v8 + 6, a2 - 2);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v125 = (v8 + 2);
      v127 = v8 == a2 || v125 == a2;
      if (a4)
      {
        if (!v127)
        {
          v128 = 0;
          v129 = v8;
          do
          {
            v130 = v125;
            v131 = *(v129 + 2);
            v132 = *v129;
            if (v131 > *v129)
            {
              v133 = *(v129 + 3);
              v134 = v128;
              while (1)
              {
                v135 = v8 + v134;
                v136 = *(v8 + v134 + 8);
                *(v135 + 2) = v132;
                *(v135 + 3) = v136;
                if (!v134)
                {
                  break;
                }

                v132 = *(v135 - 2);
                v134 -= 16;
                if (v131 <= v132)
                {
                  v137 = (v8 + v134 + 16);
                  goto LABEL_127;
                }
              }

              v137 = v8;
LABEL_127:
              *v137 = v131;
              v137[1] = v133;
            }

            v125 = v130 + 16;
            v128 += 16;
            v129 = v130;
          }

          while (v130 + 16 != a2);
        }
      }

      else if (!v127)
      {
        v182 = v8 + 3;
        do
        {
          v183 = v125;
          v184 = v7[2];
          v185 = *v7;
          if (v184 > *v7)
          {
            v186 = v7[3];
            v187 = v182;
            do
            {
              v188 = v187;
              v189 = *(v187 - 2);
              v187 -= 2;
              *(v188 - 1) = v185;
              *v188 = v189;
              v185 = *(v188 - 5);
            }

            while (v184 > v185);
            *(v187 - 1) = v184;
            *v187 = v186;
          }

          v125 = v183 + 16;
          v182 += 2;
          v7 = v183;
        }

        while (v183 + 16 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v138 = (v9 - 2) >> 1;
        v139 = v138;
        do
        {
          v140 = v139;
          if (v138 >= v139)
          {
            v141 = (2 * v139) | 1;
            v142 = &v8[2 * v141];
            if (2 * v140 + 2 >= v9)
            {
              v143 = *v142;
            }

            else
            {
              v143 = v142[2];
              v144 = *v142 > v143;
              if (*v142 < v143)
              {
                v143 = *v142;
              }

              if (v144)
              {
                v142 += 2;
                v141 = 2 * v140 + 2;
              }
            }

            v145 = &v8[2 * v140];
            v146 = *v145;
            if (v143 <= *v145)
            {
              v147 = v145[1];
              do
              {
                v148 = v145;
                v145 = v142;
                v149 = v142[1];
                *v148 = v143;
                v148[1] = v149;
                if (v138 < v141)
                {
                  break;
                }

                v150 = (2 * v141) | 1;
                v142 = &v8[2 * v150];
                v141 = 2 * v141 + 2;
                if (v141 >= v9)
                {
                  v143 = *v142;
                  v141 = v150;
                }

                else
                {
                  v143 = *v142;
                  result = (v142 + 2);
                  v151 = v142[2];
                  if (*v142 >= v151)
                  {
                    v143 = v142[2];
                  }

                  if (*v142 <= v151)
                  {
                    v141 = v150;
                  }

                  else
                  {
                    v142 += 2;
                  }
                }
              }

              while (v143 <= v146);
              *v145 = v146;
              v145[1] = v147;
            }
          }

          v139 = v140 - 1;
        }

        while (v140);
        do
        {
          v152 = 0;
          v153 = *v8;
          v154 = v8[1];
          v155 = v8;
          do
          {
            v156 = &v155[2 * v152];
            v157 = v156 + 2;
            v158 = (2 * v152) | 1;
            v152 = 2 * v152 + 2;
            if (v152 >= v9)
            {
              v159 = *v157;
              v152 = v158;
            }

            else
            {
              v161 = v156[4];
              v160 = v156 + 4;
              v159 = v161;
              result = *(v160 - 2);
              v162 = result > v161;
              if (result < v161)
              {
                v159 = *(v160 - 2);
              }

              if (v162)
              {
                v157 = v160;
              }

              else
              {
                v152 = v158;
              }
            }

            v163 = v157[1];
            *v155 = v159;
            v155[1] = v163;
            v155 = v157;
          }

          while (v152 <= ((v9 - 2) >> 1));
          if (v157 == (a2 - 16))
          {
            *v157 = v153;
            v157[1] = v154;
          }

          else
          {
            v164 = *(a2 - 1);
            *v157 = *(a2 - 2);
            v157[1] = v164;
            *(a2 - 2) = v153;
            *(a2 - 1) = v154;
            v165 = (v157 - v8 + 16) >> 4;
            v144 = v165 < 2;
            v166 = v165 - 2;
            if (!v144)
            {
              v167 = v166 >> 1;
              v168 = &v8[2 * v167];
              v169 = *v168;
              v170 = *v157;
              if (*v168 > *v157)
              {
                v171 = v157[1];
                do
                {
                  v172 = v157;
                  v157 = v168;
                  v173 = v168[1];
                  *v172 = v169;
                  v172[1] = v173;
                  if (!v167)
                  {
                    break;
                  }

                  v167 = (v167 - 1) >> 1;
                  v168 = &v8[2 * v167];
                  v169 = *v168;
                }

                while (*v168 > v170);
                *v157 = v170;
                v157[1] = v171;
              }
            }
          }

          a2 -= 16;
          v144 = v9-- <= 2;
        }

        while (!v144);
      }

      return result;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = v10;
    v12 = *(a2 - 2);
    if (v9 < 0x81)
    {
      v17 = *v8;
      v18 = *v11;
      if (*v8 <= *v11)
      {
        if (v12 > v17)
        {
          *v8 = v12;
          *(a2 - 2) = v17;
          v26 = *v8;
          v27 = v8[1];
          v8[1] = *(a2 - 1);
          *(a2 - 1) = v27;
          v28 = *v11;
          if (v26 > *v11)
          {
            v29 = v11[1];
            v30 = v8[1];
            *v11 = v26;
            v11[1] = v30;
            *v8 = v28;
            v8[1] = v29;
          }
        }
      }

      else if (v12 <= v17)
      {
        v46 = v11[1];
        v47 = v8[1];
        *v11 = v17;
        v11[1] = v47;
        *v8 = v18;
        v8[1] = v46;
        v48 = *(a2 - 2);
        if (v48 > v18)
        {
          v49 = *(a2 - 1);
          *v8 = v48;
          v8[1] = v49;
          *(a2 - 2) = v18;
          *(a2 - 1) = v46;
        }
      }

      else
      {
        v19 = v11[1];
        v20 = *(a2 - 1);
        *v11 = v12;
        v11[1] = v20;
        *(a2 - 2) = v18;
        *(a2 - 1) = v19;
      }

      goto LABEL_56;
    }

    v13 = *v10;
    v14 = *v8;
    if (*v10 <= *v8)
    {
      if (v12 > v13)
      {
        *v10 = v12;
        *(a2 - 2) = v13;
        v21 = *v10;
        v22 = v10[1];
        v10[1] = *(a2 - 1);
        *(a2 - 1) = v22;
        v23 = *v8;
        if (v21 > *v8)
        {
          v24 = v8[1];
          v25 = v10[1];
          *v8 = v21;
          v8[1] = v25;
          *v10 = v23;
          v10[1] = v24;
        }
      }
    }

    else if (v12 <= v13)
    {
      v31 = v8[1];
      v32 = v10[1];
      *v8 = v13;
      v8[1] = v32;
      *v10 = v14;
      v10[1] = v31;
      v33 = *(a2 - 2);
      if (v33 > v14)
      {
        v34 = *(a2 - 1);
        *v10 = v33;
        v10[1] = v34;
        *(a2 - 2) = v14;
        *(a2 - 1) = v31;
      }
    }

    else
    {
      v15 = v8[1];
      v16 = *(a2 - 1);
      *v8 = v12;
      v8[1] = v16;
      *(a2 - 2) = v14;
      *(a2 - 1) = v15;
    }

    v35 = v10 - 2;
    v36 = *(v10 - 2);
    v37 = v8[2];
    v38 = *(a2 - 4);
    if (v36 <= v37)
    {
      if (v38 > v36)
      {
        *v35 = v38;
        *(a2 - 4) = v36;
        v41 = *v35;
        v42 = *(v10 - 1);
        *(v10 - 1) = *(a2 - 3);
        *(a2 - 3) = v42;
        v43 = v8[2];
        if (v41 > v43)
        {
          v44 = v8[3];
          v45 = *(v10 - 1);
          v8[2] = v41;
          v8[3] = v45;
          *v35 = v43;
          *(v10 - 1) = v44;
        }
      }
    }

    else if (v38 <= v36)
    {
      v50 = v8[3];
      v51 = *(v10 - 1);
      v8[2] = v36;
      v8[3] = v51;
      *v35 = v37;
      *(v10 - 1) = v50;
      v52 = *(a2 - 4);
      if (v52 > v37)
      {
        v53 = *(a2 - 3);
        *v35 = v52;
        *(v10 - 1) = v53;
        *(a2 - 4) = v37;
        *(a2 - 3) = v50;
      }
    }

    else
    {
      v39 = v8[3];
      v40 = *(a2 - 3);
      v8[2] = v38;
      v8[3] = v40;
      *(a2 - 4) = v37;
      *(a2 - 3) = v39;
    }

    v56 = v10[2];
    v54 = v10 + 2;
    v55 = v56;
    v57 = v8[4];
    v58 = *(a2 - 6);
    if (v56 <= v57)
    {
      if (v58 > v55)
      {
        *v54 = v58;
        *(a2 - 6) = v55;
        v61 = *v54;
        v62 = v54[1];
        v54[1] = *(a2 - 5);
        *(a2 - 5) = v62;
        v63 = v8[4];
        if (v61 > v63)
        {
          v64 = v8[5];
          v65 = v54[1];
          v8[4] = v61;
          v8[5] = v65;
          *v54 = v63;
          v54[1] = v64;
        }
      }
    }

    else if (v58 <= v55)
    {
      v66 = v8[5];
      v67 = v54[1];
      v8[4] = v55;
      v8[5] = v67;
      *v54 = v57;
      v54[1] = v66;
      v68 = *(a2 - 6);
      if (v68 > v57)
      {
        v69 = *(a2 - 5);
        *v54 = v68;
        v54[1] = v69;
        *(a2 - 6) = v57;
        *(a2 - 5) = v66;
      }
    }

    else
    {
      v59 = v8[5];
      v60 = *(a2 - 5);
      v8[4] = v58;
      v8[5] = v60;
      *(a2 - 6) = v57;
      *(a2 - 5) = v59;
    }

    v70 = *v11;
    v71 = *v35;
    v72 = *v54;
    if (*v11 <= *v35)
    {
      if (v72 <= v70)
      {
        goto LABEL_51;
      }

      v75 = v11[1];
      v76 = v54[1];
      *v11 = v72;
      v11[1] = v76;
      *v54 = v70;
      v54[1] = v75;
      if (v72 <= v71)
      {
        goto LABEL_54;
      }

      v77 = v35[1];
      *v35 = v72;
      v35[1] = v76;
      *v11 = v71;
      v11[1] = v77;
    }

    else
    {
      if (v72 > v70)
      {
        v73 = v35[1];
        v74 = v54[1];
        *v35 = v72;
        v35[1] = v74;
        *v54 = v71;
        v54[1] = v73;
LABEL_51:
        v71 = v70;
        goto LABEL_55;
      }

      v78 = v35[1];
      v79 = v11[1];
      *v35 = v70;
      v35[1] = v79;
      *v11 = v71;
      v11[1] = v78;
      if (v72 > v71)
      {
        v80 = v54[1];
        *v11 = v72;
        v11[1] = v80;
        *v54 = v71;
        v54[1] = v78;
LABEL_54:
        v71 = v72;
      }
    }

LABEL_55:
    v81 = *v8;
    v82 = v8[1];
    v83 = v11[1];
    *v8 = v71;
    v8[1] = v83;
    *v11 = v81;
    v11[1] = v82;
LABEL_56:
    --a3;
    v84 = *v8;
    if ((a4 & 1) != 0 || *(v8 - 2) > v84)
    {
      v85 = 0;
      v86 = v8[1];
      do
      {
        v87 = v8[v85 + 2];
        v85 += 2;
      }

      while (v87 > v84);
      v88 = &v8[v85];
      v89 = a2;
      if (v85 == 2)
      {
        v89 = a2;
        do
        {
          if (v88 >= v89)
          {
            break;
          }

          v91 = *(v89 - 2);
          v89 -= 16;
        }

        while (v91 <= v84);
      }

      else
      {
        do
        {
          v90 = *(v89 - 2);
          v89 -= 16;
        }

        while (v90 <= v84);
      }

      if (v88 >= v89)
      {
        v8 = (v8 + v85 * 8);
      }

      else
      {
        v92 = *v89;
        v8 = (v8 + v85 * 8);
        v93 = v89;
        do
        {
          v94 = v8[1];
          v95 = *(v93 + 1);
          *v8 = v92;
          v8[1] = v95;
          *v93 = v87;
          *(v93 + 1) = v94;
          do
          {
            v96 = v8[2];
            v8 += 2;
            v87 = v96;
          }

          while (v96 > v84);
          do
          {
            v97 = *(v93 - 2);
            v93 -= 16;
            v92 = v97;
          }

          while (v97 <= v84);
        }

        while (v8 < v93);
      }

      if (v8 - 2 != v7)
      {
        v98 = *(v8 - 1);
        *v7 = *(v8 - 2);
        v7[1] = v98;
      }

      *(v8 - 2) = v84;
      *(v8 - 1) = v86;
      if (v88 < v89)
      {
        goto LABEL_79;
      }

      v99 = sub_299273310(v7, v8 - 2);
      result = sub_299273310(v8, a2);
      if (result)
      {
        a2 = (v8 - 2);
        if (!v99)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v99)
      {
LABEL_79:
        result = sub_299272744(v7, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      if (v84 <= *(a2 - 2))
      {
        v101 = (v8 + 2);
        do
        {
          v8 = v101;
          if (v101 >= a2)
          {
            break;
          }

          v101 += 16;
        }

        while (v84 <= *v8);
      }

      else
      {
        do
        {
          v100 = v8[2];
          v8 += 2;
        }

        while (v84 <= v100);
      }

      v102 = a2;
      if (v8 < a2)
      {
        v102 = a2;
        do
        {
          v103 = *(v102 - 2);
          v102 -= 16;
        }

        while (v84 > v103);
      }

      v104 = v7[1];
      if (v8 < v102)
      {
        v105 = *v8;
        v106 = *v102;
        do
        {
          v107 = v8[1];
          v108 = *(v102 + 1);
          *v8 = v106;
          v8[1] = v108;
          *v102 = v105;
          *(v102 + 1) = v107;
          do
          {
            v109 = v8[2];
            v8 += 2;
            v105 = v109;
          }

          while (v84 <= v109);
          do
          {
            v110 = *(v102 - 2);
            v102 -= 16;
            v106 = v110;
          }

          while (v84 > v110);
        }

        while (v8 < v102);
      }

      if (v8 - 2 != v7)
      {
        v111 = *(v8 - 1);
        *v7 = *(v8 - 2);
        v7[1] = v111;
      }

      a4 = 0;
      *(v8 - 2) = v84;
      *(v8 - 1) = v104;
    }
  }

  v116 = v8[2];
  v113 = *v8;
  v117 = *(a2 - 2);
  if (v116 <= *v8)
  {
    if (v117 > v116)
    {
      v8[2] = v117;
      *(a2 - 2) = v116;
      v174 = v8[2];
      v175 = v8[3];
      v8[3] = *(a2 - 1);
      *(a2 - 1) = v175;
      v176 = *v8;
      if (v174 > *v8)
      {
        v177 = v8[1];
        v178 = v8[3];
        *v8 = v174;
        v8[1] = v178;
        v8[2] = v176;
        v8[3] = v177;
      }
    }
  }

  else if (v117 <= v116)
  {
    v114 = v8[1];
    v190 = v8[3];
    *v8 = v116;
    v8[1] = v190;
    v8[2] = v113;
    v8[3] = v114;
    v191 = *(a2 - 2);
    if (v191 > v113)
    {
      v192 = *(a2 - 1);
      v8[2] = v191;
      v8[3] = v192;
LABEL_105:
      *(a2 - 2) = v113;
      *(a2 - 1) = v114;
    }
  }

  else
  {
    v118 = v8[1];
    v119 = *(a2 - 1);
    *v8 = v117;
    v8[1] = v119;
    *(a2 - 2) = v113;
    *(a2 - 1) = v118;
  }

  return result;
}

unint64_t *sub_299273174(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 <= *result)
  {
    if (v7 <= v5)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v7;
      *a3 = v5;
      v10 = *a2;
      v11 = a2[1];
      a2[1] = a3[1];
      a3[1] = v11;
      v12 = *result;
      if (v10 > *result)
      {
        v13 = result[1];
        v14 = a2[1];
        *result = v10;
        result[1] = v14;
        *a2 = v12;
        a2[1] = v13;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v7 > v5)
    {
      v8 = result[1];
      v9 = a3[1];
      *result = v7;
      result[1] = v9;
      *a3 = v6;
      a3[1] = v8;
LABEL_9:
      v5 = v6;
      goto LABEL_11;
    }

    v15 = result[1];
    v16 = a2[1];
    *result = v5;
    result[1] = v16;
    *a2 = v6;
    a2[1] = v15;
    v5 = *a3;
    if (*a3 > v6)
    {
      v17 = a3[1];
      *a2 = v5;
      a2[1] = v17;
      *a3 = v6;
      a3[1] = v15;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*a4 > v5)
  {
    *a3 = *a4;
    *a4 = v5;
    v18 = *a3;
    v19 = a3[1];
    a3[1] = a4[1];
    a4[1] = v19;
    v20 = *a2;
    if (v18 > *a2)
    {
      *a2 = v18;
      *a3 = v20;
      v21 = *a2;
      v22 = a2[1];
      a2[1] = a3[1];
      a3[1] = v22;
      v23 = *result;
      if (v21 > *result)
      {
        v24 = result[1];
        v25 = a2[1];
        *result = v21;
        result[1] = v25;
        *a2 = v23;
        a2[1] = v24;
      }
    }
  }

  v26 = *a4;
  if (*a5 > *a4)
  {
    *a4 = *a5;
    *a5 = v26;
    v27 = *a4;
    v28 = a4[1];
    a4[1] = a5[1];
    a5[1] = v28;
    v29 = *a3;
    if (v27 > *a3)
    {
      *a3 = v27;
      *a4 = v29;
      v30 = *a3;
      v31 = a3[1];
      a3[1] = a4[1];
      a4[1] = v31;
      v32 = *a2;
      if (v30 > *a2)
      {
        *a2 = v30;
        *a3 = v32;
        v33 = *a2;
        v34 = a2[1];
        a2[1] = a3[1];
        a3[1] = v34;
        v35 = *result;
        if (v33 > *result)
        {
          v36 = result[1];
          v37 = a2[1];
          *result = v33;
          result[1] = v37;
          *a2 = v35;
          a2[1] = v36;
        }
      }
    }
  }

  return result;
}

BOOL sub_299273310(unint64_t *a1, unint64_t *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v7 = a1[2];
      v4 = *a1;
      v8 = *(a2 - 2);
      if (v7 <= *a1)
      {
        if (v8 > v7)
        {
          a1[2] = v8;
          *(a2 - 2) = v7;
          v22 = a1[2];
          v23 = a1[3];
          a1[3] = *(a2 - 1);
          *(a2 - 1) = v23;
          v24 = *a1;
          if (v22 > *a1)
          {
            v25 = a1[1];
            v26 = a1[3];
            *a1 = v22;
            a1[1] = v26;
            a1[2] = v24;
            a1[3] = v25;
          }
        }

        return 1;
      }

      if (v8 > v7)
      {
        v9 = a1[1];
        v10 = *(a2 - 1);
        *a1 = v8;
        a1[1] = v10;
        *(a2 - 2) = v4;
        *(a2 - 1) = v9;
        return 1;
      }

      v5 = a1[1];
      v33 = a1[3];
      *a1 = v7;
      a1[1] = v33;
      a1[2] = v4;
      a1[3] = v5;
      v34 = *(a2 - 2);
      if (v34 <= v4)
      {
        return 1;
      }

      v35 = *(a2 - 1);
      a1[2] = v34;
      a1[3] = v35;
      goto LABEL_6;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_299273174(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        return 1;
      }

      goto LABEL_14;
    }

    v17 = a1[2];
    v18 = *a1;
    v19 = a1[4];
    if (v17 <= *a1)
    {
      if (v19 > v17)
      {
        v30 = a1[3];
        v31 = a1[5];
        a1[2] = v19;
        a1[3] = v31;
        a1[4] = v17;
        a1[5] = v30;
        if (v19 > v18)
        {
          v32 = a1[1];
          *a1 = v19;
          a1[1] = v31;
          a1[2] = v18;
          a1[3] = v32;
        }

        goto LABEL_48;
      }
    }

    else
    {
      if (v19 > v17)
      {
        v20 = a1[1];
        v21 = a1[5];
        *a1 = v19;
        a1[1] = v21;
        a1[4] = v18;
        a1[5] = v20;
LABEL_46:
        v17 = v18;
LABEL_48:
        v52 = *(a2 - 2);
        if (v52 > v17)
        {
          a1[4] = v52;
          *(a2 - 2) = v17;
          v53 = a1[4];
          v54 = a1[5];
          a1[5] = *(a2 - 1);
          *(a2 - 1) = v54;
          v55 = a1[2];
          if (v53 > v55)
          {
            v56 = a1[3];
            v57 = a1[5];
            a1[2] = v53;
            a1[3] = v57;
            a1[4] = v55;
            a1[5] = v56;
            v58 = *a1;
            if (v53 > *a1)
            {
              v59 = a1[1];
              *a1 = v53;
              a1[1] = v57;
              a1[2] = v58;
              a1[3] = v59;
            }
          }
        }

        return 1;
      }

      v49 = a1[1];
      v50 = a1[3];
      *a1 = v17;
      a1[1] = v50;
      a1[2] = v18;
      a1[3] = v49;
      if (v19 > v18)
      {
        v51 = a1[5];
        a1[2] = v19;
        a1[3] = v51;
        a1[4] = v18;
        a1[5] = v49;
        goto LABEL_46;
      }
    }

    v17 = v19;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = *a1;
    if (v3 > *a1)
    {
      v5 = a1[1];
      v6 = *(a2 - 1);
      *a1 = v3;
      a1[1] = v6;
LABEL_6:
      *(a2 - 2) = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_14:
  v11 = a1 + 4;
  v12 = a1[4];
  v13 = a1[2];
  v14 = *a1;
  if (v13 <= *a1)
  {
    if (v12 > v13)
    {
      v27 = a1[3];
      v28 = a1[5];
      a1[2] = v12;
      a1[3] = v28;
      a1[4] = v13;
      a1[5] = v27;
      if (v12 > v14)
      {
        v29 = a1[1];
        *a1 = v12;
        a1[1] = v28;
        a1[2] = v14;
        a1[3] = v29;
      }
    }
  }

  else if (v12 <= v13)
  {
    v36 = a1[1];
    v37 = a1[3];
    *a1 = v13;
    a1[1] = v37;
    a1[2] = v14;
    a1[3] = v36;
    if (v12 > v14)
    {
      v38 = a1[5];
      a1[2] = v12;
      a1[3] = v38;
      a1[4] = v14;
      a1[5] = v36;
    }
  }

  else
  {
    v15 = a1[1];
    v16 = a1[5];
    *a1 = v12;
    a1[1] = v16;
    a1[4] = v14;
    a1[5] = v15;
  }

  v39 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v40 = 0;
  v41 = 0;
  while (1)
  {
    v42 = *v39;
    v43 = *v11;
    if (*v39 > *v11)
    {
      v44 = v39[1];
      v45 = v40;
      while (1)
      {
        v46 = (a1 + v45);
        v47 = *(a1 + v45 + 40);
        v46[6] = v43;
        v46[7] = v47;
        if (v45 == -32)
        {
          break;
        }

        v43 = v46[2];
        v45 -= 16;
        if (v42 <= v43)
        {
          v48 = (a1 + v45 + 48);
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v42;
      v48[1] = v44;
      if (++v41 == 8)
      {
        return v39 + 2 == a2;
      }
    }

    v11 = v39;
    v40 += 16;
    v39 += 2;
    if (v39 == a2)
    {
      return 1;
    }
  }
}

uint64_t **sub_29927363C(void *a1, void *a2)
{
  v4 = (*(**a2 + 144))();
  v5 = a1[1];
  if (!v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v5 <= v4)
    {
      v9 = v4 % v5;
    }
  }

  else
  {
    v9 = (v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if ((*(*i[2] + 152))(i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= v5)
        {
          v12 %= v5;
        }
      }

      else
      {
        v12 &= v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_299273778(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    sub_299215B18(a1, cf);
  }
}

uint64_t sub_2992737D8(uint64_t a1)
{
  sub_299273810(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_299273810(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 16))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void *sub_299273884(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    a1[5] = v5;
    operator delete(v5);
  }

  v6 = a1[1];
  if (v6)
  {
    a1[2] = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_2992738F8(uint64_t a1, _WORD *a2, uint64_t a3, __int16 a4, _WORD *a5, uint64_t a6, __int16 a7, __int16 a8)
{
  v13 = a3;
  sub_29925493C(&v28, a2, &a2[a3], (a1 + 8));
  sub_29925493C(&v29, a5, &a5[a6], (a1 + 32));
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  if (v15 >= v16)
  {
    v18 = *(a1 + 56);
    v19 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - v18) >> 3);
    v20 = v19 + 1;
    if (v19 + 1 > 0x666666666666666)
    {
      sub_29921E9A8();
    }

    v21 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v18) >> 3);
    if (2 * v21 > v20)
    {
      v20 = 2 * v21;
    }

    if (v21 >= 0x333333333333333)
    {
      v22 = 0x666666666666666;
    }

    else
    {
      v22 = v20;
    }

    if (v22)
    {
      sub_29921E9C0(a1 + 56, v22);
    }

    v23 = 40 * v19;
    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + 24) = v13;
    *(v23 + 26) = a4;
    *(v23 + 28) = a6;
    *(v23 + 30) = a7;
    *(v23 + 32) = a8;
    *(v23 + 34) = 0;
    *(v23 + 36) = 0;
    *(v23 + 37) = 513;
    *(v23 + 39) = 0;
    v17 = 40 * v19 + 40;
    v24 = *(a1 + 56);
    v25 = *(a1 + 64) - v24;
    v26 = (40 * v19 - v25);
    memcpy(v26, v24, v25);
    v27 = *(a1 + 56);
    *(a1 + 56) = v26;
    *(a1 + 64) = v17;
    *(a1 + 72) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = v13;
    *(v15 + 26) = a4;
    *(v15 + 28) = a6;
    *(v15 + 30) = a7;
    *(v15 + 32) = a8;
    *(v15 + 34) = 0;
    *(v15 + 36) = 0;
    *(v15 + 37) = 513;
    v17 = v15 + 40;
    *(v15 + 39) = 0;
  }

  *(a1 + 64) = v17;
}

uint64_t sub_299273A90(int ***a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v9 = a1[1];
  v10 = a1[2];
  if (v9 != v10)
  {
    v11 = a1[4];
    v12 = a1[5];
    if (v11 != v12 && a1[7] != a1[8])
    {
      v18[2] = v7;
      v18[3] = v8;
      v13 = *a1;
      v14 = (v10 - v9) >> 1;
      if (!v9)
      {
        v14 = 0;
      }

      v18[0] = v9;
      v18[1] = v14;
      v15 = (v12 - v11) >> 1;
      if (!v11)
      {
        v15 = 0;
      }

      v17[0] = v11;
      v17[1] = v15;
      sub_2992DC898(v13, a2, v18, v17, a3, a4, (a1 + 7), a5, 0.0, a6, a7, a1[10]);
    }
  }

  return 0;
}

const void **sub_299273B40(const void **a1)
{
  sub_299274AE8(a1 + 10, 0);
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

void *sub_299273BA0(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t sub_299273C0C(void *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(*a1 + 40);
    v3 = (a1[1] + 40 * a2 + 30);
    do
    {
      v4 = *(v3 - 19);
      if (v2 > v4)
      {
        v5 = *(*a1 + 32);
        if (*(v5 + v4))
        {
          v6 = *v3;
          if (v2 > v6 && (*(v5 + v6) & 2) != 0)
          {
            break;
          }
        }
      }

      v3 -= 20;
      --a2;
    }

    while (a2);
  }

  return a2;
}

void sub_299273C64(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_29920B86C(a1, a2);
  }

  sub_299212A8C();
}

void sub_299273CA0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_299273CF4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_299273CF4(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 41);
    v3 -= 8;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t *sub_299273D44(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_299273DCC(result, a4);
  }

  return result;
}

void sub_299273DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_299212B90(&a9);
  _Unwind_Resume(a1);
}

void sub_299273DCC(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_299212AA4(a1, a2);
  }

  sub_299212A8C();
}

char *sub_299273E18(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_29922C89C(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_299273ED8(v9);
  return v4;
}

uint64_t sub_299273ED8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_299273F10(a1);
  }

  return a1;
}

void sub_299273F10(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_299273F58(uint64_t *result)
{
  if (result[2])
  {
    v2 = result[1];
    v3 = *(*result + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    result[2] = 0;
    while (v2 != result)
    {
      v5 = *(v2 + 8);
      sub_299273FB8(result, v2);
      v2 = v5;
    }
  }
}

void sub_299273FB8(int a1, void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void sub_299273FFC(uint64_t result)
{
  if (*(result + 24))
  {
    sub_299274058(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void sub_299274058(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_2992740A4(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_2992327A4((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_299274118(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29927415C(void *a1, uint64_t a2, int *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29922C89C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v6 = *a3;
  operator new();
}

void sub_299274298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_2992742B4(void *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_29923AF34(a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    sub_29927452C();
  }

  while (1)
  {
    v15 = *(v14 + 1);
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!sub_29923AF78(a1, v14 + 8, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_299274508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_2992745EC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992745D0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_2992745EC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_2992745EC(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_299274650(void *a1, unsigned __int16 *a2)
{
  result = sub_299274688(a1, a2);
  if (result)
  {
    sub_299274784(a1, result);
    return 1;
  }

  return result;
}

unsigned __int16 *sub_299274688(void *a1, unsigned __int16 *a2)
{
  v4 = sub_29923AF34(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = *(i + 1);
    if (v12 == v6)
    {
      if (sub_29923AF78(a1, i + 8, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_299274784(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_2992747D0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_2992745EC(&v6, v3);
  }

  return v2;
}

void *sub_2992747D0@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

char *sub_299274A50(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29922C89C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29922C89C(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_299274ACC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_299274AE8(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_299274B8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    sub_299274C10(v2, 0);
    MEMORY[0x29C29BFB0](v2, 0x1020C403A5D3213);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    sub_299274C48(v3, 0);
    MEMORY[0x29C29BFB0](v3, 0x20C4093837F09);
  }

  return a1;
}

void sub_299274C10(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_299274C48(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_299274C80(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    MEMORY[0x29C29BFB0](v2, 0x50C40EE9192B6);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_299274CE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2991A893C(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_299274D34(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      sub_299274D78((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_299274D78(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t sub_299274DF0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_299274D78(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_299274E3C(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      sub_299274EB4(a1, a2, a2);
      a2 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

void *sub_299274EB4(void *a1, uint64_t **a2, _OWORD *a3)
{
  v5 = sub_29927512C(a1, *a2, a2[1]);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  v11 = a2[1];
  while (1)
  {
    v12 = v10[1];
    if (v12 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v8)
    {
      goto LABEL_23;
    }

LABEL_22:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[3] != v11)
  {
    goto LABEL_22;
  }

  if (v11)
  {
    v13 = v10[2];
    v14 = a2[1];
    for (i = *a2; *i == *v13; i = (i + 2))
    {
      ++v13;
      v14 = (v14 - 1);
      if (!v14)
      {
        return v10;
      }
    }

    goto LABEL_22;
  }

  return v10;
}

void sub_299275158(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }

    JUMPOUT(0x29C29BFB0);
  }
}

uint64_t sub_2992751B4(uint64_t a1)
{
  sub_299274058(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2992751F0(uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C29BE80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  sub_2991BF83C(a1);
  return a1;
}

void sub_29927529C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_2992752C4(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    munmap(v2, *(a1 + 8));
    *a1 = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (*(a1 + 14))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7)
        {
          free(v7);
          v6 = *(a1 + 16);
        }

        v8 = *(v6 + v4 + 8);
        if (v8)
        {
          free(v8);
        }

        ++v5;
        v4 += 32;
      }

      while (v5 < *(a1 + 14));
      v3 = *(a1 + 16);
    }

    free(v3);
  }
}

uint64_t sub_299275374(void **a1, CFURLRef anURL)
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  if (!v3)
  {
    return 4294967246;
  }

  v4 = v3;
  memset(&v22, 0, sizeof(v22));
  CString = CFStringGetCString(v3, buffer, 1024, 0x8000100u);
  CFRelease(v4);
  if (!CString)
  {
    return 4294967246;
  }

  v6 = open(buffer, 0, *&v22.st_dev, *&v22.st_uid, *&v22.st_atimespec, *&v22.st_mtimespec, *&v22.st_ctimespec, *&v22.st_birthtimespec);
  if (v6 == -1)
  {
    return 4294967253;
  }

  v7 = v6;
  fstat(v6, &v22);
  *a1 = mmap(0, v22.st_size, 1, 2, v7, 0);
  close(v7);
  v8 = *a1;
  if (*a1 == -1)
  {
    return 4294967188;
  }

  *(a1 + 2) = v22.st_size;
  *(a1 + 6) = bswap32(*(v8 + 76)) >> 16;
  v9 = bswap32(*(v8 + 78));
  v10 = HIWORD(v9);
  *(a1 + 7) = HIWORD(v9);
  v11 = malloc_type_calloc(1uLL, 32 * v10, 0x10100402BD90E94uLL);
  a1[2] = v11;
  if (!v11)
  {
    return 4294967188;
  }

  if (*(a1 + 7))
  {
    v12 = 0;
    v13 = (v8 + 4 * v10 + 80);
    do
    {
      v14 = a1[2] + 32 * v12;
      v15 = bswap32(*v13);
      *(v14 + 6) = v15;
      v16 = 2 * v15 + 2;
      *(v14 + 7) = bswap32(v13[1]);
      v17 = malloc_type_malloc(4 * v16, 0x100004052888210uLL);
      *v14 = v17;
      if (v16 >= 1)
      {
        v18 = 0;
        do
        {
          v19 = *v13++;
          v17[v18++] = bswap32(v19);
        }

        while (v16 > v18);
      }

      v20 = malloc_type_malloc(*(v14 + 7), 0x100004077774924uLL);
      *(v14 + 1) = v20;
      memcpy(v20, v13, *(v14 + 7));
      v13 = (v13 + *(v14 + 7));
      *(v14 + 2) = 0;
      ++v12;
    }

    while (v12 < *(a1 + 7));
  }

  return 0;
}

CFStringRef sub_2992755BC(const __CFURL *a1)
{
  v1 = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 10, MEMORY[0x29EDB9000]);
  CFArrayAppendValue(Mutable, v1);
  CFRelease(v1);
  CFArrayAppendValue(Mutable, @"ja");
  v4 = CFStringCreateByCombiningStrings(v2, Mutable, @"/");
  CFRelease(Mutable);
  return v4;
}

CFStringRef sub_299275654(const __CFURL *a1)
{
  if (a1)
  {
    result = sub_2992755BC(a1);
    if (result)
    {
      v2 = result;
      v3 = CFURLCreateWithFileSystemPath(0, result, kCFURLPOSIXPathStyle, 1u);
      CFRelease(v2);
      return v3;
    }
  }

  else
  {

    return sub_29936D41C("ja");
  }

  return result;
}

__CFArray *sub_2992756CC()
{
  v99 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1460490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460490))
  {
    sub_29927A128(values, "n", "l");
    sub_29927A17C(v16);
    sub_29927A1D8(v17, L"gw", "g");
    sub_29927A22C(v18);
    sub_29927A1D8(v19, L"ch", "c");
    sub_29927A128(v20, "y", "j");
    sub_29927A128(v21, "j", "z");
    sub_29927A288(v22);
    sub_29927A2E4(v23, L"ba", "b");
    sub_29927A338(v24, "c", "c");
    sub_29927A38C(v25, "c", "c");
    sub_29927A38C(v26, L"cheun", L"ceon");
    sub_29927A38C(v27, "c", "c");
    sub_29927A38C(v28, L"cheuk", L"coek");
    sub_29927A3E0(v29);
    sub_29927A2E4(v30, L"da", "d");
    sub_29927A43C(v31, "d", L"deoi");
    sub_29927A43C(v32, "d", L"deon");
    sub_29927A43C(v33, "d", L"deot");
    sub_29927A338(v34, "d", "d");
    sub_29927A43C(v35, "d", L"doek");
    sub_29927A490(v36, "d", "d");
    sub_29927A2E4(v37, "f", L"faa");
    sub_29927A2E4(v38, L"ga", "g");
    sub_29927A43C(v39, "g", L"geoi");
    sub_29927A338(v40, "g", "g");
    sub_29927A43C(v41, "g", L"goek");
    sub_29927A490(v42, "g", "g");
    sub_29927A4E4(v43, "g", "g");
    sub_29927A2E4(v44, L"ha", "h");
    sub_29927A43C(v45, "h", L"heoi");
    sub_29927A338(v46, "h", "h");
    sub_29927A490(v47, "h", "h");
    sub_29927A43C(v48, "j", L"zeoi");
    sub_29927A43C(v49, "j", L"zeon");
    sub_29927A43C(v50, "j", L"zeot");
    sub_29927A338(v51, "j", "z");
    sub_29927A43C(v52, "j", L"zoek");
    sub_29927A490(v53, "j", "z");
    sub_29927A2E4(v54, "k", L"kaa");
    sub_29927A43C(v55, L"keui", "k");
    sub_29927A338(v56, L"keu", L"koe");
    sub_29927A43C(v57, L"keuk", "k");
    sub_29927A490(v58, L"keung", L"koeng");
    sub_29927A4E4(v59, L"kwa", L"kwaa");
    sub_29927A2E4(v60, "l", L"laa");
    sub_29927A43C(v61, L"leui", "l");
    sub_29927A43C(v62, L"leun", "l");
    sub_29927A43C(v63, L"leut", "l");
    sub_29927A338(v64, L"leu", L"loe");
    sub_29927A43C(v65, L"leuk", "l");
    sub_29927A490(v66, L"leung", L"loeng");
    sub_29927A2E4(v67, L"ma", "m");
    sub_29927A2E4(v68, "n", L"naa");
    sub_29927A43C(v69, L"neui", "n");
    sub_29927A43C(v70, L"neut", "n");
    sub_29927A4E4(v71, L"nga", L"ngaa");
    sub_29927A490(v72, "n", "n");
    sub_29927A2E4(v73, "p", L"paa");
    sub_29927A2E4(v74, L"sa", "s");
    sub_29927A43C(v75, "s", L"seoi");
    sub_29927A43C(v76, "s", L"seon");
    sub_29927A43C(v77, "s", L"seot");
    sub_29927A338(v78, "s", "s");
    sub_29927A43C(v79, "s", L"soek");
    sub_29927A490(v80, "s", "s");
    sub_29927A2E4(v81, "t", L"taa");
    sub_29927A43C(v82, L"teui", "t");
    sub_29927A43C(v83, L"teun", "t");
    sub_29927A338(v84, L"teu", L"toe");
    sub_29927A2E4(v85, L"wa", "w");
    sub_29927A2E4(v86, "j", L"zaa");
    sub_29927A2E4(v87, L"ya", "j");
    sub_29927A43C(v88, "y", L"joek");
    sub_29927A490(v89, "y", "j");
    sub_29927A43C(v90, "y", L"jeoi");
    sub_29927A43C(v91, "y", L"jeon");
    sub_29927A2E4(v92, "y", L"jyu");
    sub_29927A4E4(v93, L"yun", L"jyun");
    sub_29927A4E4(v94, "y", "j");
    sub_29927A2E4(v95, "l", L"naa");
    sub_29927A43C(v96, L"leui", "n");
    sub_29927A43C(v97, L"leut", "n");
    sub_29927A490(v98, L"leung", "n");
    qword_2A14604E0 = 0;
    qword_2A14604E8 = 0;
    qword_2A14604F0 = 0;
    sub_29927A538(values, &v99);
  }

  v0 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0xAAAAAAAAAAAAAAABLL * ((qword_2A14604E8 - qword_2A14604E0) >> 4), MEMORY[0x29EDB9000]);
  v2 = qword_2A14604E0;
  v3 = qword_2A14604E8;
  if (qword_2A14604E0 != qword_2A14604E8)
  {
    v4 = MEMORY[0x29EDB9000];
    do
    {
      v5 = *(v2 + 23);
      if (v5 >= 0)
      {
        v6 = v2;
      }

      else
      {
        v6 = *v2;
      }

      if (v5 >= 0)
      {
        v7 = *(v2 + 23);
      }

      else
      {
        v7 = *(v2 + 8);
      }

      v8 = CFStringCreateWithCharacters(0, v6, v7);
      v9 = *(v2 + 47);
      if (v9 >= 0)
      {
        v10 = (v2 + 24);
      }

      else
      {
        v10 = *(v2 + 24);
      }

      if (v9 >= 0)
      {
        v11 = *(v2 + 47);
      }

      else
      {
        v11 = *(v2 + 32);
      }

      v12 = CFStringCreateWithCharacters(0, v10, v11);
      values[0] = v8;
      values[1] = v12;
      v13 = CFArrayCreate(v0, values, 2, v4);
      CFArrayAppendValue(Mutable, v13);
      if (v13)
      {
        CFRelease(v13);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      v2 += 48;
    }

    while (v2 != v3);
  }

  return Mutable;
}

void sub_299276260(_Unwind_Exception *a1)
{
  v3 = -4032;
  do
  {
    sub_299274118(v1);
    v1 -= 48;
    v3 += 48;
  }

  while (v3);
  __cxa_guard_abort(&qword_2A1460490);
  _Unwind_Resume(a1);
}

void **sub_299276328(void **a1)
{
  v3 = a1;
  sub_29927A6BC(&v3);
  return a1;
}

__CFString *sub_299276360(const char *a1)
{
  Mutable = CFStringCreateMutable(0, 1024);
  v3 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], "/", 0x8000100u);
  CFStringAppend(Mutable, v3);
  if (a1)
  {
    CFStringAppendCString(Mutable, a1, 0x8000100u);
  }

  CFRelease(v3);
  return Mutable;
}

CFStringRef sub_2992763EC(CFURLRef url, CFStringRef pathComponent)
{
  if (pathComponent)
  {
    v2 = CFURLCreateCopyAppendingPathComponent(0, url, pathComponent, 0);
    v3 = CFURLCopyAbsoluteURL(v2);
    CFRelease(v2);
    if (v3)
    {
LABEL_3:
      v4 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
      CFRelease(v3);
      return v4;
    }
  }

  else
  {
    v3 = CFURLCopyAbsoluteURL(url);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

void sub_29927646C(const __CFURL *a1@<X0>, const __CFString *a2@<X1>, char **a3@<X8>)
{
  v4 = sub_2992763EC(a1, a2);
  if (v4)
  {
    Length = CFStringGetLength(v4);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }

  *a3 = 0;
}

BOOL sub_299276528(const __CFURL *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    v1 = buffer;
  }

  else
  {
    v1 = &unk_29943AA03;
  }

  sub_2991C6CA8(__p, v1);
  if (v6 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = stat(v2, buffer);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3 == 0;
}

void sub_2992765DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299276600(const __CFURL *a1, const __CFString *a2, const __CFURL *a3, const __CFString *a4, unsigned int a5)
{
  v11 = *MEMORY[0x29EDB8ED8];
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v13 = sub_2992763EC(a1, 0);
  if (v13)
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, v13);
    v25.length = CFStringGetLength(MutableCopy);
    v25.location = 0;
    CFStringFindAndReplace(MutableCopy, @" ", @"\\ ", v25, 0);
  }

  else
  {
    MutableCopy = 0;
  }

  v15 = CFStringCreateWithFormat(v11, 0, @"-p -d %@ -N 2", MutableCopy);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  CFStringAppend(Mutable, v15);
  CFRelease(v13);
  if (a2)
  {
    v16 = sub_2992763EC(a1, a2);
    if (v16)
    {
      v17 = CFStringCreateMutableCopy(0, 0, v16);
      v26.length = CFStringGetLength(v17);
      v26.location = 0;
      CFStringFindAndReplace(v17, @" ", @"\\ ", v26, 0);
    }

    else
    {
      v17 = 0;
    }

    v18 = CFStringCreateWithFormat(0, 0, @" -u %@", v17);
    if (v17)
    {
      CFRelease(v17);
    }

    CFStringAppend(Mutable, v18);
    CFRelease(v18);
    CFRelease(v16);
  }

  if (a4)
  {
    v19 = a3;
    if (!a3)
    {
      v20 = CFCopyHomeDirectoryURLForUser();
      v19 = CFURLCreateCopyAppendingPathComponent(0, v20, @"/Library/Dictionaries", 1u);
      CFRelease(v20);
    }

    v21 = sub_2992763EC(v19, a4);
    if (v21)
    {
      v22 = CFStringCreateMutableCopy(0, 0, v21);
      v27.length = CFStringGetLength(v22);
      v27.location = 0;
      CFStringFindAndReplace(v22, @" ", @"\\ ", v27, 0);
    }

    else
    {
      v22 = 0;
    }

    v23 = CFStringCreateWithFormat(0, 0, @" -g %@", v22);
    if (v22)
    {
      CFRelease(v22);
    }

    CFStringAppend(Mutable, v23);
    CFRelease(v23);
    CFRelease(v21);
    if (!a3 && v19)
    {
      CFRelease(v19);
    }
  }

  if (a5 <= 2)
  {
    CFStringAppend(Mutable, *(&off_29EF100B0 + a5));
  }

  Length = CFStringGetLength(Mutable);
  CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  operator new[]();
}

void sub_29927692C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_299219AB4(va, 0);
  sub_299219AB4(va1, 0);
  _Unwind_Resume(a1);
}

void sub_2992769B0(char *cStr)
{
  v3 = CFStringCreateWithCStringNoCopy(*MEMORY[0x29EDB8ED8], cStr, 0x8000100u, *MEMORY[0x29EDB8EE8]);
  CFStringGetLength(v3);
  operator new[]();
}

void sub_299276A68(_Unwind_Exception *a1)
{
  *v2 = 0;
  MEMORY[0x29C29BF70](v3, v1);
  _Unwind_Resume(a1);
}

void sub_299276A84(const __CFString *a1)
{
  if (a1)
  {
    CFStringGetLength(a1);
    operator new[]();
  }

  operator new[]();
}

void sub_299276B28(_Unwind_Exception *a1)
{
  *v1 = 0;
  MEMORY[0x29C29BF70](v3, v2);
  _Unwind_Resume(a1);
}

void sub_299276BC0(_Unwind_Exception *a1)
{
  *v2 = 0;
  MEMORY[0x29C29BF70](v3, v1);
  _Unwind_Resume(a1);
}

void sub_299276BDC(const __CFString *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    Length = CFStringGetLength(a1);
    v5 = 0;
    sub_29927A740(a2, Length, &v5);
    if (Length)
    {
      v6.location = 0;
      v6.length = Length;
      CFStringGetCharacters(a1, v6, *a2);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_299276C54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299276CEC@<X0>(unsigned __int16 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  result = sub_29921822C(a3, a2, 0);
  if (a2)
  {
    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    v8 = 2 * a2;
    do
    {
      result = MEMORY[0x29C29CDF0](*a1);
      *v7++ = result;
      ++a1;
      v8 -= 2;
    }

    while (v8);
  }

  return result;
}

void sub_299276D60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_299276D80(char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  sub_2992769B0(a1);
}

void sub_299276DF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

void sub_299276E80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

UniChar *sub_299276EA8(const __CFString *a1, CFIndex *a2, char *a3)
{
  CharactersPtr = CFStringGetCharactersPtr(a1);
  *a2 = CFStringGetLength(a1);
  if (!CharactersPtr)
  {
    operator new[]();
  }

  *a3 = 0;
  return CharactersPtr;
}

BOOL sub_299276F48(CFStringRef theString)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  System = CFLocaleGetSystem();
  CFStringLowercase(MutableCopy, System);
  v4 = CFStringCompare(theString, MutableCopy, 0) == kCFCompareEqualTo;
  CFRelease(MutableCopy);
  return v4;
}

uint64_t sub_299276FB0(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (result && a2)
  {
    v5 = result;
    v6 = 0;
    v7 = a2 - 1;
    v10 = 0;
    do
    {
      if (v6 >= v7)
      {
        v9 = 1;
      }

      else
      {
        v8 = (v5 + 2 * v6);
        v9 = 1;
        if ((*v8 & 0xFC00) == 0xD800)
        {
          if ((v8[1] & 0xFC00) == 0xDC00)
          {
            v9 = 2;
          }

          else
          {
            v9 = 1;
          }
        }
      }

      result = (*(a3 + 16))(a3, v6, v9, &v10);
      v6 += v9;
    }

    while (v6 < a2 && (v10 & 1) == 0);
  }

  return result;
}

const __CFString *sub_29927708C(const __CFString *result, int a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    result = CFStringGetLength(result);
    if (result)
    {
      v6 = result;
      v7 = a2 ? &result[-1].length + 7 : 0;
      v13 = 0;
      RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(v5, v7);
      location = RangeOfComposedCharactersAtIndex.location;
      length = RangeOfComposedCharactersAtIndex.length;
      result = (*(a3 + 16))(a3, RangeOfComposedCharactersAtIndex.location, RangeOfComposedCharactersAtIndex.length, &v13);
      if ((v13 & 1) == 0)
      {
        do
        {
          if (a2)
          {
            v11 = location - 1;
            if (location < 1)
            {
              return result;
            }
          }

          else
          {
            v11 = location + length;
            if (location + length >= v6)
            {
              return result;
            }
          }

          v12 = CFStringGetRangeOfComposedCharactersAtIndex(v5, v11);
          location = v12.location;
          length = v12.length;
          result = (*(a3 + 16))(a3, v12.location, v12.length, &v13);
        }

        while (v13 != 1);
      }
    }
  }

  return result;
}

CFURLRef sub_29927717C(const __CFURL *a1, const __CFString *a2)
{
  v2 = 0;
  v11 = *MEMORY[0x29EDCA608];
  if (a1 && a2)
  {
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      v5 = buffer;
    }

    else
    {
      v5 = &unk_29943AA03;
    }

    sub_2991C6CA8(v8, v5);
    if (v9 < 0)
    {
      if (!v8[1])
      {
        v2 = 0;
LABEL_18:
        operator delete(v8[0]);
        return v2;
      }

      v6 = v8[0];
    }

    else
    {
      if (!v9)
      {
        return 0;
      }

      v6 = v8;
    }

    if (stat(v6, buffer) < 0)
    {
      v2 = 0;
    }

    else
    {
      v2 = CFURLCreateCopyAppendingPathComponent(0, a1, a2, 1u);
    }

    if (v9 < 0)
    {
      goto LABEL_18;
    }
  }

  return v2;
}

void sub_299277284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const __CFURL *sub_2992772AC(CFURLRef url, CFStringRef pathComponent)
{
  v2 = CFURLCreateCopyAppendingPathComponent(0, url, pathComponent, 1u);
  v3 = v2;
  if (v2 && !sub_299276528(v2))
  {
    CFRelease(v3);
    return 0;
  }

  return v3;
}

uint64_t sub_299277300(int a1)
{
  v1 = a1 - 1;
  if ((a1 - 1) >= 0x12 || ((0x3FFDBu >> v1) & 1) == 0)
  {
    abort();
  }

  return dword_29940BF44[v1];
}

CFComparisonResult sub_29927733C(const __CFLocale *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  Value = CFLocaleGetValue(a1, *MEMORY[0x29EDB8F70]);
  v3 = CFLocaleGetValue(a1, *MEMORY[0x29EDB8F78]);
  if (CFStringCompare(Value, @"zh", 0))
  {
    if (CFStringCompare(Value, @"yue", 0))
    {
      result = CFStringCompare(Value, @"ja", 0);
      if (result)
      {
        if (CFStringCompare(Value, @"ko", 0))
        {
          if (CFStringCompare(Value, @"th", 0))
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return 6;
          }
        }

        else
        {
          return 4;
        }
      }
    }

    else if (v3 && CFStringCompare(v3, @"Hant", 0) == kCFCompareEqualTo)
    {
      return 5;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (!v3)
    {
      return 3;
    }

    if (CFStringCompare(v3, @"Hans", 0) == kCFCompareEqualTo)
    {
      return 1;
    }

    if (CFStringCompare(v3, @"Hant", 0))
    {
      return 3;
    }

    return 2;
  }

  return result;
}

CFLocaleRef sub_299277498(uint64_t a1)
{
  v1 = sub_2992774EC(a1);
  v2 = CFStringCreateWithCString(0, v1, 0x8000100u);
  v3 = CFLocaleCreate(0, v2);
  CFRelease(v2);
  return v3;
}

char *sub_2992774EC(unsigned int a1)
{
  if (a1 >= 7)
  {
    abort();
  }

  return off_29EF100C8[a1];
}

const char *sub_299277514(int a1, __int16 a2)
{
  v2 = a1 - 1;
  result = "zh-Hans-Stroke";
  switch(v2)
  {
    case 0:
      v4 = "ja-Romaji";
      v5 = "ja-Kana";
      v6 = (a2 & 0x20) == 0;
      goto LABEL_15;
    case 1:
      v4 = "zh-Hans-Pinyin10";
      v5 = "zh-Hans-Pinyin";
      goto LABEL_14;
    case 3:
      v4 = "zh-Hant-Pinyin10";
      v5 = "zh-Hant-Pinyin";
      goto LABEL_14;
    case 4:
      return "zh-Hant-Zhuyin";
    case 6:
      return result;
    case 7:
      return "zh-Hant-Stroke";
    case 8:
      return "zh-Hant-Cangjie";
    case 9:
      return "zh-Hans-Wubixing";
    case 10:
      return "zh-Hans-HWR";
    case 11:
      return "zh-Hant-HWR";
    case 12:
      v4 = "yue-Hant-Pinyin10";
      v5 = "yue-Hant-Pinyin";
LABEL_14:
      v6 = (a2 & 0x4000) == 0;
LABEL_15:
      if (v6)
      {
        result = v5;
      }

      else
      {
        result = v4;
      }

      break;
    case 13:
      result = "yue-Hant-HWR";
      break;
    case 14:
      result = "yue-Hant-Stroke";
      break;
    case 15:
      result = "yue-Hant-Cangjie";
      break;
    case 16:
      result = "ko";
      break;
    default:
      result = "???";
      break;
  }

  return result;
}

uint64_t sub_299277628(char *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = sub_29927773C(a1);
  if (v2)
  {

    return sub_299277300(v2);
  }

  if (!strncmp("zh-Hans", a1, 7uLL))
  {
    return 1;
  }

  if (!strncmp("zh-Hant", a1, 7uLL))
  {
    return 2;
  }

  if (!strncmp("yue-Hant", a1, 8uLL))
  {
    return 5;
  }

  v4 = *a1;
  switch(v4)
  {
    case 'k':
      if (a1[1] == 111)
      {
        return 4;
      }

      return 0xFFFFFFFFLL;
    case 'j':
      if (a1[1] == 97)
      {
        return 0;
      }

      return 0xFFFFFFFFLL;
    case 't':
      v4 = a1[1];
      v5 = 104;
      break;
    default:
      v5 = 116;
      break;
  }

  if (v5 == v4)
  {
    return 6;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_29927773C(char *__s2)
{
  if (!__s2)
  {
    return 0;
  }

  if (!strncmp("zh-Hans-Pinyin", __s2, 0xEuLL))
  {
    return 2;
  }

  if (!strncmp("zh-Hans-Stroke", __s2, 0xFuLL))
  {
    return 7;
  }

  if (!strncmp("zh-Hant-Stroke", __s2, 0xFuLL))
  {
    return 8;
  }

  if (!strncmp("zh-Hant-Pinyin", __s2, 0xEuLL))
  {
    return 4;
  }

  if (!strncmp("yue-Hant-Pinyin", __s2, 0xFuLL))
  {
    return 13;
  }

  if (!strncmp("yue-Hant-HWR", __s2, 0xCuLL))
  {
    return 14;
  }

  v2 = 15;
  if (strncmp("yue-Hant-Stroke", __s2, 0xFuLL))
  {
    v2 = 16;
    if (strncmp("yue-Hant-Cangjie", __s2, 0x10uLL))
    {
      if (!strncmp("zh-Hant-Zhuyin", __s2, 0xEuLL))
      {
        return 5;
      }

      else if (!strncmp("zh-Hant-Cangjie", __s2, 0xEuLL))
      {
        return 9;
      }

      else
      {
        v3 = *__s2;
        if (v3 == 106)
        {
          return __s2[1] == 97;
        }

        else
        {
          if (v3 == 107)
          {
            v3 = __s2[1];
            v4 = 111;
          }

          else
          {
            v4 = 107;
          }

          if (v4 == v3)
          {
            return 17;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

DIR *sub_2992778EC(const char *a1, uint64_t a2)
{
  v6 = 0;
  result = opendir(a1);
  if (result)
  {
    v4 = result;
    do
    {
      v5 = readdir(v4);
      if (!v5)
      {
        break;
      }

      (*(a2 + 16))(a2, v5->d_name, &v6);
    }

    while (v6 != 1);
    return closedir(v4);
  }

  return result;
}

uint64_t sub_299277964(const __CFString *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = sub_299277A24;
  v3[3] = &unk_29EF10090;
  v3[4] = &v4;
  sub_29927708C(a1, 0, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_299277A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_299277A3C(const char *a1)
{
  v2 = getenv(a1);
  if (v2)
  {
    return *v2 == 49;
  }

  return sub_2992EEDCC(a1, v3, v4, v5);
}

const __CFString *sub_299277A90@<X0>(const __CFString *result@<X0>, char **a2@<X8>)
{
  if (result)
  {
    Length = CFStringGetLength(result);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }

  *a2 = 0;
  return result;
}

void sub_299277B20(_Unwind_Exception *a1)
{
  *v1 = 0;
  MEMORY[0x29C29BF70](v3, v2);
  _Unwind_Resume(a1);
}

void sub_299277B3C(std::string *__return_ptr a1@<X8>, void *__src@<X0>, unint64_t a3@<X1>)
{
  v50 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1460498, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460498))
  {
    sub_2992517A8(&xmmword_2A1460560);
  }

  sub_29925851C(__p, __src, a3);
  if ((v39 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v39 & 0x80u) == 0)
  {
    v7 = v39;
  }

  else
  {
    v7 = __p[1];
  }

  qword_2A1460618 = 0;
  if (!qword_2A1460590)
  {
    goto LABEL_69;
  }

  sub_29927AA84(a1, 2 * v7, 0);
  if (v7)
  {
    if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = 22;
    }

    else
    {
      v8 = (a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    std::string::resize(a1, v8, 0);
    v9 = (v6 + 2 * v7);
    v46 = xmmword_2A14605D8;
    v47 = unk_2A14605E8;
    v48 = xmmword_2A14605F8;
    v49 = unk_2A1460608;
    v42 = xmmword_2A1460598;
    v43 = unk_2A14605A8;
    v10 = xmmword_2A14605B8;
    v11 = unk_2A14605C8;
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v13 = a1;
    }

    else
    {
      v13 = a1->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    v14 = v13 + size;
    v44 = xmmword_2A14605B8;
    v45 = unk_2A14605C8;
    while (1)
    {
      v15 = (*(*qword_2A1460590 + 24))(qword_2A1460590, &v42, v6, v9, &v41, v13, v14, &v40, v10, v11);
      qword_2A1460618 += (v41 - v6) >> 1;
      if (v41 == v6)
      {
        goto LABEL_67;
      }

      if (v15 != 1)
      {
        break;
      }

      if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = a1;
      }

      else
      {
        v16 = a1->__r_.__value_.__r.__words[0];
      }

      v17 = v40 - v16;
      std::string::resize(a1, 2 * (v40 - v16), 0);
      v18 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((v18 & 0x80u) == 0)
      {
        v19 = a1;
      }

      else
      {
        v19 = a1->__r_.__value_.__r.__words[0];
      }

      v13 = (v19 + v17);
      if ((v18 & 0x80u) != 0)
      {
        v18 = a1->__r_.__value_.__l.__size_;
      }

      v14 = v19 + v18;
      v6 = v41;
      if (v41 >= v9)
      {
        goto LABEL_67;
      }
    }

    if (v15)
    {
      if (v15 != 3)
      {
        goto LABEL_67;
      }

      if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = a1;
      }

      else
      {
        v20 = a1->__r_.__value_.__r.__words[0];
      }

      std::string::resize(a1, v13 - v20, 0);
      sub_2991D9210(a1, v6, v9);
    }

    else
    {
      if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = a1;
      }

      else
      {
        v21 = a1->__r_.__value_.__r.__words[0];
      }

      std::string::resize(a1, v40 - v21, 0);
    }
  }

  else
  {
    v46 = xmmword_2A14605D8;
    v47 = unk_2A14605E8;
    v48 = xmmword_2A14605F8;
    v49 = unk_2A1460608;
    v42 = xmmword_2A1460598;
    v43 = unk_2A14605A8;
    v44 = xmmword_2A14605B8;
    v45 = unk_2A14605C8;
  }

  v22 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  v23 = a1->__r_.__value_.__l.__size_;
  if ((v22 & 0x80u) == 0)
  {
    v24 = 22;
  }

  else
  {
    v24 = (a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  std::string::resize(a1, v24, 0);
  if ((v22 & 0x80u) == 0)
  {
    v25 = v22;
  }

  else
  {
    v25 = v23;
  }

  v26 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  v27 = v26 < 0;
  if (v26 >= 0)
  {
    v28 = a1;
  }

  else
  {
    v28 = a1->__r_.__value_.__r.__words[0];
  }

  v29 = (v28 + v25);
  if (v27)
  {
    v30 = a1->__r_.__value_.__l.__size_;
  }

  else
  {
    v30 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  for (i = v29 + v30; ; i = v36 + v35)
  {
    v32 = (*(*qword_2A1460590 + 40))(qword_2A1460590, &v42, v29, i, &v41);
    if (v32 != 1)
    {
      break;
    }

    if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = a1;
    }

    else
    {
      v33 = a1->__r_.__value_.__r.__words[0];
    }

    v34 = v41 - v33;
    std::string::resize(a1, 2 * (v41 - v33), 0);
    v35 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((v35 & 0x80u) == 0)
    {
      v36 = a1;
    }

    else
    {
      v36 = a1->__r_.__value_.__r.__words[0];
    }

    v29 = (v36 + v34);
    if ((v35 & 0x80u) != 0)
    {
      v35 = a1->__r_.__value_.__l.__size_;
    }
  }

  if (!v32)
  {
    v29 = v41;
    goto LABEL_75;
  }

  if (v32 == 3)
  {
LABEL_75:
    if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = a1;
    }

    else
    {
      v37 = a1->__r_.__value_.__r.__words[0];
    }

    std::string::resize(a1, v29 - v37, 0);
    goto LABEL_79;
  }

LABEL_67:
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(a1->__r_.__value_.__l.__data_);
  }

LABEL_69:
  if ((byte_2A1460577 & 0x80000000) == 0)
  {
    if (byte_2A1460577)
    {
      *&a1->__r_.__value_.__l.__data_ = xmmword_2A1460560;
      a1->__r_.__value_.__r.__words[2] = unk_2A1460570;
      goto LABEL_79;
    }

LABEL_84:
    sub_299251964("wstring_convert: to_bytes error");
  }

  if (!*(&xmmword_2A1460560 + 1))
  {
    goto LABEL_84;
  }

  sub_2991A110C(a1, xmmword_2A1460560, *(&xmmword_2A1460560 + 1));
LABEL_79:
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_299277FF8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    sub_2991C6CA8(v15, &unk_2994377F6);
    __cxa_end_catch();
    JUMPOUT(0x299277F0CLL);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x299277FD8);
}

void sub_299278038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  JUMPOUT(0x299277FD8);
}

void sub_29927805C(void *a1, int a2)
{
  if (a2)
  {
    sub_2991EDA10(a1);
  }

  JUMPOUT(0x299277FD8);
}

void *sub_29927806C@<X0>(void *__s@<X0>, int __c@<W2>, uint64_t a3@<X1>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v12 = __s;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = __s;
    v7 = 0;
    v8 = __s + a3;
    do
    {
      v9 = memchr(v5, __c, v8 - v5);
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      v11 = v10;
      if (v7 >= a4[2])
      {
        __s = sub_29927A8DC(a4, &v12, &v11);
        v7 = __s;
      }

      else
      {
        __s = sub_2991D9388(v7, v5, v10, v10 - v5);
        v7 += 3;
      }

      a4[1] = v7;
      v5 = v11 + 1;
      v12 = v11 + 1;
    }

    while (v11 + 1 <= v8);
  }

  return __s;
}

void sub_299278130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299212B90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299278154(CFStringRef theString)
{
  v1 = theString;
  if (theString)
  {
    Length = CFStringGetLength(theString);
    if (Length)
    {
      v3 = Length;
      theStringa = v1;
      v24 = 0;
      v25 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v1);
      CStringPtr = 0;
      v22 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
      }

      v26 = 0;
      v27 = 0;
      v23 = CStringPtr;
      if (v3 >= 1)
      {
        v6 = 0;
        v7 = 0;
        LOBYTE(v1) = 0;
        v8 = 0;
        v9 = 64;
        while (1)
        {
          if (v8 >= 4)
          {
            v10 = 4;
          }

          else
          {
            v10 = v8;
          }

          v11 = v25;
          if (v25 <= v8)
          {
            v13 = 0;
          }

          else
          {
            if (v22)
            {
              v12 = &v22[v24];
            }

            else
            {
              if (v23)
              {
                v13 = v23[v24 + v8];
                goto LABEL_15;
              }

              if (v27 <= v8 || v7 > v8)
              {
                v15 = v10 + v6;
                v16 = v9 - v10;
                v17 = v8 - v10;
                v18 = v17 + 64;
                if (v17 + 64 >= v25)
                {
                  v18 = v25;
                }

                v26 = v17;
                v27 = v18;
                if (v25 >= v16)
                {
                  v11 = v16;
                }

                v28.location = v17 + v24;
                v28.length = v11 + v15;
                CFStringGetCharacters(theStringa, v28, buffer);
                v7 = v26;
              }

              v12 = &buffer[-v7];
            }

            v13 = v12[v8];
          }

LABEL_15:
          if ((v13 - 48) < 0xAu || (v13 + 240) < 0xAu)
          {
            LOBYTE(v1) = ++v8 >= v3;
            --v6;
            ++v9;
            if (v3 != v8)
            {
              continue;
            }
          }

          return v1 & 1;
        }
      }

      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

BOOL sub_2992782F4(CFStringRef theString)
{
  v32 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14604A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14604A0))
  {
    v23 = xmmword_29940BEE0;
    v24[0] = unk_29940BEF0;
    *(v24 + 14) = unk_29940BEFE;
    *buffer = *a0123456789_0;
    v22 = *&a0123456789_0[16];
    sub_29923BCCC(qword_2A1460510, buffer, 39);
    __cxa_atexit(sub_29923BCC8, qword_2A1460510, &dword_29918C000);
    __cxa_guard_release(&qword_2A14604A0);
  }

  if (theString && (Length = CFStringGetLength(theString), (v3 = Length) != 0))
  {
    v25 = theString;
    v28 = 0;
    v29 = Length;
    CharactersPtr = CFStringGetCharactersPtr(theString);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
    }

    v27 = CStringPtr;
    v30 = 0;
    v31 = 0;
    if (v3 >= 1)
    {
      v7 = 0;
      v5 = 0;
      v8 = 0;
      v9 = 64;
      while (1)
      {
        if (v8 >= 4)
        {
          v10 = 4;
        }

        else
        {
          v10 = v8;
        }

        v11 = v29;
        if (v29 <= v8)
        {
          v13 = 0;
        }

        else
        {
          if (CharactersPtr)
          {
            v12 = &CharactersPtr[v28];
LABEL_17:
            v13 = v12[v8];
            goto LABEL_19;
          }

          if (!v27)
          {
            v14 = v30;
            if (v31 <= v8 || v30 > v8)
            {
              v16 = v10 + v7;
              v17 = v9 - v10;
              v18 = v8 - v10;
              v19 = v18 + 64;
              if (v18 + 64 >= v29)
              {
                v19 = v29;
              }

              v30 = v18;
              v31 = v19;
              if (v29 >= v17)
              {
                v11 = v17;
              }

              v33.location = v18 + v28;
              v33.length = v11 + v16;
              CFStringGetCharacters(v25, v33, buffer);
              v14 = v30;
            }

            v12 = &buffer[-v14];
            goto LABEL_17;
          }

          v13 = v27[v28 + v8];
        }

LABEL_19:
        v20 = v13;
        if (sub_299223864(qword_2A1460510, &v20))
        {
          v5 = ++v8 >= v3;
          --v7;
          ++v9;
          if (v3 != v8)
          {
            continue;
          }
        }

        return v5;
      }
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

void *sub_299278568@<X0>(const __CFString *a1@<X0>, void *a2@<X8>)
{
  sub_299277A90(a1, &__s);
  if (__s)
  {
    sub_2991C6CA8(a2, __s);

    JUMPOUT(0x29C29BF70);
  }

  return sub_2991C6CA8(a2, &unk_2994377F6);
}

void sub_299278624(const __CFString *a1@<X0>, void *a2@<X8>)
{
  Length = CFStringGetLength(a1);
  buffer = 0;
  v8 = 0;
  v9 = 0;
  sub_299217A94(&buffer, Length);
  v10.location = 0;
  v10.length = Length;
  CFStringGetCharacters(a1, v10, buffer);
  v5 = 2 * Length;
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v6 = buffer;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v5;
  if (v5)
  {
    memmove(a2, v6, v5);
  }

  *(a2 + v5) = 0;
  if (buffer)
  {
    v8 = buffer;
    operator delete(buffer);
  }
}

void sub_299278714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_299278730@<X0>(std::string *__str@<X0>, std::string *a2@<X8>)
{
  v2 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  v3 = __str->__r_.__value_.__r.__words[0];
  size = __str->__r_.__value_.__l.__size_;
  if (v2 >= 0)
  {
    v5 = __str;
  }

  else
  {
    v5 = __str->__r_.__value_.__r.__words[0];
  }

  if (v2 >= 0)
  {
    v6 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v6 = __str->__r_.__value_.__l.__size_;
  }

  v7 = &v5[-1].__r_.__value_.__r.__words[2] + 7;
  v8 = -1;
  while (v6)
  {
    v9 = v7[v6--];
    ++v8;
    if (v9 == 47)
    {
      if (v6 != -1)
      {
        if (v8)
        {
          return std::string::basic_string(a2, __str, v6 + 1, 0xFFFFFFFFFFFFFFFFLL, &v10);
        }

        return sub_2991C6CA8(a2, &unk_2994377F6);
      }

      break;
    }
  }

  if ((v2 & 0x80000000) != 0)
  {

    return sub_2991A110C(a2, v3, size);
  }

  else
  {
    *a2 = *__str;
  }

  return __str;
}

uint64_t **sub_29927880C(unsigned int a1)
{
  v65[2] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14604A8, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v8 = __cxa_guard_acquire(&qword_2A14604A8);
    a1 = v7;
    if (v8)
    {
      v42 = 6422625;
      v43 = 99;
      v45 = 0;
      v46 = 0;
      v44 = 0;
      sub_2992220D8(&v44, &v42, &v44, 3);
      v49 = 10123;
      memset(v50, 0, sizeof(v50));
      sub_299215EC0(v50, v44, v45, (v45 - v44) >> 1);
      v37 = 6619236;
      v38 = 102;
      v40 = 0;
      v41 = 0;
      v39 = 0;
      sub_2992220D8(&v39, &v37, &v39, 3);
      v51 = 10124;
      memset(v52, 0, sizeof(v52));
      sub_299215EC0(v52, v39, v40, (v40 - v39) >> 1);
      v32 = 6815847;
      v33 = 105;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      sub_2992220D8(&v34, &v32, &v34, 3);
      v53 = 10125;
      memset(v54, 0, sizeof(v54));
      sub_299215EC0(v54, v34, v35, (v35 - v34) >> 1);
      v27 = 7012458;
      v28 = 108;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      sub_2992220D8(&v29, &v27, &v29, 3);
      v55 = 10126;
      memset(v56, 0, sizeof(v56));
      sub_299215EC0(v56, v29, v30, (v30 - v29) >> 1);
      v22 = 7209069;
      v23 = 111;
      v25 = 0;
      v26 = 0;
      v24 = 0;
      sub_2992220D8(&v24, &v22, &v24, 3);
      v57 = 10127;
      memset(v58, 0, sizeof(v58));
      sub_299215EC0(v58, v24, v25, (v25 - v24) >> 1);
      v48 = 0x73007200710070;
      v20 = 0;
      v21 = 0;
      v19 = 0;
      sub_2992220D8(&v19, &v48, &v49, 4);
      v59 = 10128;
      memset(v60, 0, sizeof(v60));
      sub_299215EC0(v60, v19, v20, (v20 - v19) >> 1);
      v14 = 7667828;
      v15 = 118;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      sub_2992220D8(&v16, &v14, &v16, 3);
      v61 = 10129;
      memset(v62, 0, sizeof(v62));
      sub_299215EC0(v62, v16, v17, (v17 - v16) >> 1);
      v47 = 0x7A007900780077;
      v12 = 0;
      v13 = 0;
      __p = 0;
      sub_2992220D8(&__p, &v47, &v48, 4);
      v63 = 10130;
      v65[0] = 0;
      v65[1] = 0;
      v64 = 0;
      sub_299215EC0(&v64, __p, v12, (v12 - __p) >> 1);
      sub_29927AB34(&v49, 8);
      for (i = 0; i != -32; i -= 4)
      {
        v10 = v65[i - 1];
        if (v10)
        {
          v65[i] = v10;
          operator delete(v10);
        }
      }

      if (__p)
      {
        v12 = __p;
        operator delete(__p);
      }

      if (v16)
      {
        v17 = v16;
        operator delete(v16);
      }

      if (v19)
      {
        v20 = v19;
        operator delete(v19);
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }

      __cxa_atexit(sub_299278EC4, &xmmword_2A1460538, &dword_29918C000);
      __cxa_guard_release(&qword_2A14604A8);
      a1 = v7;
    }
  }

  if (!*(&xmmword_2A1460538 + 1))
  {
    return &unk_29940BF10;
  }

  v1 = vcnt_s8(*(&xmmword_2A1460538 + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (*(&xmmword_2A1460538 + 1) <= a1)
    {
      v2 = a1 % WORD4(xmmword_2A1460538);
    }
  }

  else
  {
    v2 = (DWORD2(xmmword_2A1460538) - 1) & a1;
  }

  v3 = *(xmmword_2A1460538 + 8 * v2);
  if (!v3)
  {
    return &unk_29940BF10;
  }

  v4 = *v3;
  if (!v4)
  {
    return &unk_29940BF10;
  }

  do
  {
    v5 = v4[1];
    if (v5 == a1)
    {
      if (*(v4 + 8) == a1)
      {
        break;
      }
    }

    else
    {
      if (v1.u32[0] > 1uLL)
      {
        if (v5 >= *(&xmmword_2A1460538 + 1))
        {
          v5 %= *(&xmmword_2A1460538 + 1);
        }
      }

      else
      {
        v5 &= *(&xmmword_2A1460538 + 1) - 1;
      }

      if (v5 != v2)
      {
        return &unk_29940BF10;
      }
    }

    v4 = *v4;
  }

  while (v4);
  if (v4)
  {
    return v4 + 3;
  }

  else
  {
    return &unk_29940BF10;
  }
}

void sub_299278D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  v44 = (v42 + 240);
  v45 = -256;
  while (1)
  {
    v46 = *(v44 - 1);
    if (v46)
    {
      *v44 = v46;
      operator delete(v46);
    }

    v44 -= 4;
    v45 += 32;
    if (!v45)
    {
      if (__p)
      {
        operator delete(__p);
      }

      if (a14)
      {
        operator delete(a14);
      }

      if (a17)
      {
        operator delete(a17);
      }

      if (a21)
      {
        operator delete(a21);
      }

      if (a25)
      {
        operator delete(a25);
      }

      if (a29)
      {
        operator delete(a29);
      }

      if (a33)
      {
        operator delete(a33);
      }

      if (a37)
      {
        operator delete(a37);
      }

      __cxa_guard_abort(&qword_2A14604A8);
      _Unwind_Resume(a1);
    }
  }
}

const __CFString *sub_299278EC8(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    Length = CFStringGetLength(result);
    if (Length >= 1)
    {
      v3 = Length;
      for (i = 0; i < v3; i += RangeOfComposedCharactersAtIndex.length)
      {
        RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(v1, i);
        if (RangeOfComposedCharactersAtIndex.length == 2)
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(v1, RangeOfComposedCharactersAtIndex.location);
          v8 = CFStringGetCharacterAtIndex(v1, RangeOfComposedCharactersAtIndex.location + 1);
          if ((CharacterAtIndex & 0xFC00) != 0xD800 || (v8 & 0xFC00) != 0xDC00)
          {
            continue;
          }

          v6 = v8 + (CharacterAtIndex << 10) - 56613888;
        }

        else
        {
          if (RangeOfComposedCharactersAtIndex.length != 1)
          {
            if (!RangeOfComposedCharactersAtIndex.length)
            {
              ++i;
            }

            continue;
          }

          v6 = CFStringGetCharacterAtIndex(v1, RangeOfComposedCharactersAtIndex.location);
        }

        if (u_hasBinaryProperty(v6, UCHAR_IDEOGRAPHIC))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_299278FD4(char *a1, unsigned int a2)
{
  v2 = 67173375;
  if (a2)
  {
    v3 = 0;
    v4 = a2;
    do
    {
      v5 = *a1++;
      v3 = (1025 * (v3 + v5)) ^ ((1025 * (v3 + v5)) >> 6);
      --v4;
    }

    while (v4);
    v2 = 1025 * v3 + 67173375;
  }

  return 32769 * ((9 * (v2 ^ (v2 >> 6))) ^ ((9 * (v2 ^ (v2 >> 6))) >> 11));
}

CFPropertyListRef sub_29927901C(char *cStr)
{
  v1 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v2 = sub_299279090(v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

void sub_299279078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

CFPropertyListRef sub_299279090(CFStringRef filePath)
{
  v1 = CFURLCreateWithFileSystemPath(*MEMORY[0x29EDB8ED8], filePath, kCFURLPOSIXPathStyle, 0);
  v2 = sub_29927910C(v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

void sub_2992790F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

CFPropertyListRef sub_29927910C(CFURLRef fileURL)
{
  v1 = *MEMORY[0x29EDB8ED8];
  v2 = CFReadStreamCreateWithFile(*MEMORY[0x29EDB8ED8], fileURL);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFReadStreamOpen(v2))
  {
    v4 = CFPropertyListCreateWithStream(v1, v3, 0, 0, 0, 0);
    CFReadStreamClose(v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

void sub_2992791A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29927B09C(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992791C0(const __CFString *a1, uint64_t a2)
{
  if (!a1)
  {
    return a2;
  }

  v3 = CFGetTypeID(a1);
  if (v3 == CFStringGetTypeID())
  {
    v4 = 1;
    if (CFStringCompare(a1, @"true", 1uLL) == kCFCompareEqualTo)
    {
      return v4;
    }

    return CFStringCompare(a1, @"YES", 1uLL) == kCFCompareEqualTo;
  }

  else
  {
    if (v3 == CFNumberGetTypeID() && !CFNumberIsFloatType(a1))
    {
      valuePtr = 0;
      CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
      return valuePtr != 0;
    }

    if (v3 != CFBooleanGetTypeID())
    {
      return 0;
    }

    return *MEMORY[0x29EDB8F00] == a1;
  }
}

CFURLRef sub_2992792A8(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == CFStringGetTypeID())
  {

    return CFURLCreateWithFileSystemPath(0, a1, kCFURLPOSIXPathStyle, 1u);
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFURLGetTypeID())
  {
    return 0;
  }

  return CFURLCopyAbsoluteURL(a1);
}

CFURLRef sub_299279348(const __CFString *a1)
{
  if (!a1 || (result = sub_2992792A8(a1)) == 0)
  {
    v2 = sub_299279384();

    return CFRetain(v2);
  }

  return result;
}

uint64_t sub_299279384()
{
  if ((atomic_load_explicit(&qword_2A1461E40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461E40))
  {
    qword_2A1461E38 = sub_29927AA08();
    __cxa_guard_release(&qword_2A1461E40);
  }

  return qword_2A1461E38;
}

uint64_t sub_2992793F8()
{
  if ((atomic_load_explicit(&qword_2A14604B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14604B8))
  {
    qword_2A14604B0 = CFCharacterSetCreateWithCharactersInString(0, @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ");
    __cxa_guard_release(&qword_2A14604B8);
  }

  return qword_2A14604B0;
}

uint64_t sub_29927947C()
{
  if ((atomic_load_explicit(&qword_2A1461E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461E30))
  {
    qword_2A1461E28 = sub_2992794F0();
    __cxa_guard_release(&qword_2A1461E30);
  }

  return qword_2A1461E28;
}

__CFCharacterSet *sub_2992794F0()
{
  Mutable = CFCharacterSetCreateMutable(0);
  v3.location = 12288;
  v3.length = 64;
  CFCharacterSetAddCharactersInRange(Mutable, v3);
  CFCharacterSetAddCharactersInString(Mutable, @",，、。；;？?！!\\”“＂＂≪≫】【");
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
  CFCharacterSetUnion(Mutable, Predefined);
  return Mutable;
}

uint64_t sub_29927954C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (CEMStringContainsEmoji())
    {
      return 0;
    }

    else
    {
      v2 = CFStringGetLength(v1) - 1;
      Predefined = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
      v5.location = v2;
      v5.length = 1;
      if (CFStringFindCharacterFromSet(v1, Predefined, v5, 2uLL, 0))
      {
        return 501;
      }

      else
      {
        v4 = sub_2992793F8();
        v6.location = v2;
        v6.length = 1;
        if (CFStringFindCharacterFromSet(v1, v4, v6, 2uLL, 0))
        {
          return 502;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2992795EC(uint64_t *a1, _BYTE *a2, _BYTE *a3)
{
  v4 = *a1;
  if (!*a1)
  {
    result = 0;
    *a2 = 0;
    *a3 = 0;
    return result;
  }

  v6 = a1[1];
  if (!v6)
  {
    goto LABEL_29;
  }

  v17 = a2;
  v8 = v6 != 3 || *v4 != *aIng_0 || *(v4 + 4) != aIng_0[2];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x29EDCA600];
  while (1)
  {
    v15 = *(v4 + 2 * v10);
    if (v15 == 32)
    {
      if ((v12 & 1) == 0)
      {
        v11 = v8 & v13;
      }

      v12 = 1;
      goto LABEL_20;
    }

    if (!sub_2993C3F88(*(v4 + 2 * v10)) && (v15 > 0xFF || (*(v14 + 4 * v15 + 60) & 0x400) == 0))
    {
      break;
    }

LABEL_20:
    v13 |= (v15 - 97) < 0x1Au;
    if (++v10 >= a1[1])
    {
      v16 = 1;
      goto LABEL_23;
    }
  }

  v16 = 0;
LABEL_23:
  LODWORD(v6) = v8 & v16 & v13;
  if (v12)
  {
    result = 0;
    *v17 = v11 & 1;
    *a3 = v6;
    return result;
  }

  if (*a3 == 1)
  {
    a2 = v17;
    if (v6)
    {
      *v17 = 0;
      result = 1;
      *a3 = 1;
      return result;
    }
  }

  else
  {
    a2 = v17;
  }

LABEL_29:
  result = 0;
  *a3 = v6;
  *a2 = v6;
  return result;
}

uint64_t sub_299279770(char *__s1, uint64_t a2, char *__s2, uint64_t a4, int a5, int a6)
{
  result = 0;
  if (a4 == a2)
  {
    a6 = 1;
  }

  if (a4 >= a2 && a6)
  {
    v11 = (2 * a2);
    if (a5)
    {
      if (v11 >= 2)
      {
        v12 = 0;
        while (1)
        {
          v13 = *&__s2[v12];
          v14 = *&__s1[v12];
          if (v13 != v14)
          {
            if (v12 == v11)
            {
              return 0;
            }

            result = sub_2993C4A54(v14, a5);
            if (!result)
            {
              return result;
            }

            v15 = *result;
            v16 = *(result + 8) - *result;
            if (!v16)
            {
              return 0;
            }

            v17 = v16 >> 1;
            if (v17 <= 1)
            {
              v17 = 1;
            }

            while (1)
            {
              v18 = *v15++;
              if (v13 == v18)
              {
                break;
              }

              if (!--v17)
              {
                return 0;
              }
            }
          }

          v12 += 2;
          result = 1;
          if (v11 - 1 <= v12)
          {
            return result;
          }
        }
      }

      return 1;
    }

    else
    {
      return memcmp(__s1, __s2, v11) == 0;
    }
  }

  return result;
}

CFStringRef sub_299279868(UInt8 *bytes, CFIndex numBytes)
{
  if (numBytes)
  {
    return CFStringCreateWithBytes(*MEMORY[0x29EDB8ED8], bytes, numBytes, 0x8000100u, 0);
  }

  else
  {
    return &stru_2A1F7E6E8;
  }
}

const void *sub_29927989C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_29920B5BC(a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  *(a2 + v5) = 0;
  return result;
}

BOOL sub_299279944(_BOOL8 result)
{
  v8 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v1 = result;
    result = sub_299276528(result);
    if (result)
    {
      if (CFURLSetResourcePropertyForKey(v1, *MEMORY[0x29EDB9038], *MEMORY[0x29EDB8F00], 0))
      {
        return 1;
      }

      else
      {
        v2 = sub_29930AF10();
        if (CFURLGetFileSystemRepresentation(v1, 1u, buffer, 1024))
        {
          v3 = buffer;
        }

        else
        {
          v3 = &unk_29943AA03;
        }

        sub_2991C6CA8(__p, v3);
        if (v6 >= 0)
        {
          v4 = __p;
        }

        else
        {
          v4 = __p[0];
        }

        sub_29930B600(v2, "failed to set backup exclusion for item at URL: %s", v4);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        return 0;
      }
    }
  }

  return result;
}

void sub_299279A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFMutableArrayRef sub_299279A74(const __CFString *a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_2A14604C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14604C8))
  {
    qword_2A14604C0 = CFCharacterSetCreateWithCharactersInString(0, @"12345");
    __cxa_guard_release(&qword_2A14604C8);
  }

  if (a1)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
    Length = CFStringGetLength(a1);
    v6 = 0;
    v7.length = Length;
    while (1)
    {
      v7.location = v6;
      if (!CFStringFindCharacterFromSet(a1, qword_2A14604C0, v7, 0, &v16) || v16.location == v6)
      {
        break;
      }

      v17.length = a2 - v6 + v16.location;
      v17.location = v6;
      v8 = CFStringCreateWithSubstring(0, a1, v17);
      if (!sub_299276F48(v8))
      {
        goto LABEL_13;
      }

      if (a2)
      {
        v12 = objc_msgSend_zhuyinSyllableFromPinyinSyllable(v8, v9, v10, v11);
        if (!v12)
        {
LABEL_13:
          CFRelease(v8);
          break;
        }

        v13 = v12;
        v14 = Mutable;
      }

      else
      {
        v14 = Mutable;
        v13 = v8;
      }

      CFArrayAppendValue(v14, v13);
      CFRelease(v8);
      v6 = v16.length + v16.location;
      v7.length = Length - (v16.length + v16.location);
      if (Length <= v16.length + v16.location)
      {
        return Mutable;
      }
    }

    CFRelease(Mutable);
  }

  return 0;
}

__CFArray *sub_299279BF8(__int16 **a1)
{
  Mutable = CFArrayCreateMutable(0, a1[1] - *a1, MEMORY[0x29EDB9000]);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = *MEMORY[0x29EDB8ED8];
    do
    {
      v6 = *v3++;
      valuePtr = v6;
      v7 = CFNumberCreate(v5, kCFNumberShortType, &valuePtr);
      CFArrayAppendValue(Mutable, v7);
      CFRelease(v7);
    }

    while (v3 != v4);
  }

  return Mutable;
}

uint64_t *sub_299279CA4@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  result = sub_2991A650C(a3, a2);
  if (v3)
  {
    v6 = *result;
    do
    {
      v8 = *a1++;
      v7 = v8;
      v9 = v8 + 96;
      if ((v8 - 12353) < 0x54)
      {
        v7 = v9;
      }

      *v6++ = v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_299279CFC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14604D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14604D0))
  {
    __cxa_atexit(sub_29927B244, 0, &dword_29918C000);
    __cxa_guard_release(&qword_2A14604D0);
  }

  if ((atomic_load_explicit(&qword_2A14604D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14604D8))
  {
    *v20 = xmmword_29940BF28;
    *(&v20[1] + 4) = *(&xmmword_29940BF28 + 12);
    sub_29927B0D4(v20, 7);
    __cxa_atexit(sub_299279F90, &qword_2A14604F8, &dword_29918C000);
    __cxa_guard_release(&qword_2A14604D8);
  }

  result = sub_299217DF0(a3, byte_29945C656);
  if (a2)
  {
    v7 = &a1[a2];
    do
    {
      v8 = *a1;
      if ((v8 - 12353) > 0x53u)
      {
        if ((v8 + 255) > 0x5Du)
        {
          v13 = qword_2A1460500;
          if (qword_2A1460500)
          {
            v14 = &qword_2A1460500;
            v15 = qword_2A1460500;
            do
            {
              v16 = *(v15 + 26);
              v17 = v16 >= v8;
              v18 = v16 < v8;
              if (v17)
              {
                v14 = v15;
              }

              v15 = *(v15 + 8 * v18);
            }

            while (v15);
            if (v14 != &qword_2A1460500 && v8 >= *(v14 + 13))
            {
              while (1)
              {
                while (1)
                {
                  v19 = *(v13 + 26);
                  if (v19 <= v8)
                  {
                    break;
                  }

                  v13 = *v13;
                  if (!v13)
                  {
                    goto LABEL_33;
                  }
                }

                if (v19 >= v8)
                {
                  break;
                }

                v13 = *(v13 + 8);
                if (!v13)
                {
LABEL_33:
                  sub_2991D6EC4("map::at:  key not found");
                }
              }

              LOWORD(v8) = *(v13 + 28);
            }
          }
        }

        else
        {
          LOWORD(v8) = v8 + 288;
        }

        result = sub_2992174C4(a3, v8);
      }

      else
      {
        v9 = (&unk_2A145E8A0 + 24 * v8 - 296472);
        v10 = *(v9 + 23);
        if (v10 >= 0)
        {
          v11 = v9;
        }

        else
        {
          v11 = *v9;
        }

        if (v10 >= 0)
        {
          v12 = *(v9 + 23);
        }

        else
        {
          v12 = v9[1];
        }

        result = sub_29922C614(a3, v11, v12);
      }

      ++a1;
    }

    while (a1 != v7);
  }

  return result;
}

uint64_t sub_299279FBC(const __CFString *a1)
{
  if (a1 && CFStringGetLength(a1))
  {
    sub_299276A84(a1);
  }

  return 0;
}

__CFString *sub_29927A080(void *a1)
{
  if (*a1 == a1[1])
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v3 = a1[1] - *a1;
  if (v3)
  {
    v4 = 0;
    v5 = v3 >> 1;
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    do
    {
      chars = *(*a1 + 2 * v4) + 48;
      CFStringAppendCharacters(Mutable, &chars, 1);
      ++v4;
    }

    while (v6 != v4);
  }

  return Mutable;
}

_BYTE *sub_29927A128(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_299217DF0(a1, a2);
  sub_299217DF0(v5 + 24, a3);
  return a1;
}

void sub_29927A160(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A17C(_BYTE *a1)
{
  v2 = sub_299217DF0(a1, "n");
  sub_299217DF0(v2 + 24, byte_29945C656);
  return a1;
}

void sub_29927A1BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A1D8(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_299217DF0(a1, a2);
  sub_299217DF0(v5 + 24, a3);
  return a1;
}

void sub_29927A210(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A22C(_BYTE *a1)
{
  v2 = sub_299217DF0(a1, L"ang");
  sub_299217DF0(v2 + 24, L"an");
  return a1;
}

void sub_29927A26C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A288(_BYTE *a1)
{
  v2 = sub_299217DF0(a1, "a");
  sub_299217DF0(v2 + 24, "a");
  return a1;
}

void sub_29927A2C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A2E4(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_299217DF0(a1, a2);
  sub_299217DF0(v5 + 24, a3);
  return a1;
}

void sub_29927A31C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A338(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_299217DF0(a1, a2);
  sub_299217DF0(v5 + 24, a3);
  return a1;
}

void sub_29927A370(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A38C(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_299217DF0(a1, a2);
  sub_299217DF0(v5 + 24, a3);
  return a1;
}

void sub_29927A3C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A3E0(_BYTE *a1)
{
  v2 = sub_299217DF0(a1, "c");
  sub_299217DF0(v2 + 24, L"coeng");
  return a1;
}

void sub_29927A420(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A43C(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_299217DF0(a1, a2);
  sub_299217DF0(v5 + 24, a3);
  return a1;
}

void sub_29927A474(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A490(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_299217DF0(a1, a2);
  sub_299217DF0(v5 + 24, a3);
  return a1;
}

void sub_29927A4C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A4E4(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_299217DF0(a1, a2);
  sub_299217DF0(v5 + 24, a3);
  return a1;
}

void sub_29927A51C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29927A628(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29922C89C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_29922C89C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_29927A6A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29927A6BC(void ***a1)
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
        sub_2992327A4(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_29927A740(uint64_t *a1, uint64_t a2, __int16 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2991A6584(a1, a2);
  }

  return a1;
}

void sub_29927A8C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29927A8DC(uint64_t a1, void **a2, uint64_t *a3)
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
  sub_2991D9388((24 * v3), *a2, *a3, *a3 - *a2);
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

void sub_29927A9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299212AFC(va);
  _Unwind_Resume(a1);
}

CFURLRef sub_29927AA08()
{
  v0 = CFCopyHomeDirectoryURLForUser();
  v1 = CFURLCreateCopyAppendingPathComponent(0, v0, @"Library/Keyboard", 1u);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

void sub_29927AA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29927AA84(void *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__b + 23) = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  *(__b + __len) = 0;
  return __b;
}

void sub_29927AB34(unsigned __int16 *a1, uint64_t a2)
{
  xmmword_2A1460538 = 0u;
  *&qword_2A1460548 = 0u;
  dword_2A1460558 = 1065353216;
  if (a2)
  {
    for (i = a1; i != &a1[16 * a2]; i += 16)
    {
      v3 = *i;
      if (!*(&xmmword_2A1460538 + 1))
      {
        goto LABEL_19;
      }

      v4 = vcnt_s8(*(&xmmword_2A1460538 + 8));
      v4.i16[0] = vaddlv_u8(v4);
      if (v4.u32[0] > 1uLL)
      {
        v5 = *i;
        if (*(&xmmword_2A1460538 + 1) <= v3)
        {
          v5 = v3 % WORD4(xmmword_2A1460538);
        }
      }

      else
      {
        v5 = (DWORD2(xmmword_2A1460538) - 1) & v3;
      }

      v6 = *(xmmword_2A1460538 + 8 * v5);
      if (!v6 || (v7 = *v6) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v8 = v7[1];
        if (v8 == v3)
        {
          break;
        }

        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *(&xmmword_2A1460538 + 1))
          {
            v8 %= *(&xmmword_2A1460538 + 1);
          }
        }

        else
        {
          v8 &= *(&xmmword_2A1460538 + 1) - 1;
        }

        if (v8 != v5)
        {
          goto LABEL_19;
        }

LABEL_18:
        v7 = *v7;
        if (!v7)
        {
          goto LABEL_19;
        }
      }

      if (*(v7 + 8) != v3)
      {
        goto LABEL_18;
      }
    }
  }
}

void sub_29927AF98(_Unwind_Exception *a1)
{
  sub_29927AFD8(1, v1);
  sub_29927B034(&xmmword_2A1460538);
  _Unwind_Resume(a1);
}

void sub_29927AFD8(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_29927B034(uint64_t a1)
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
        v2[4] = v4;
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

void sub_29927B09C(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_29927B0D4(uint64_t *result, uint64_t a2)
{
  qword_2A1460508 = 0;
  qword_2A1460500 = 0;
  qword_2A14604F8 = &qword_2A1460500;
  if (a2)
  {
    operator new();
  }
}

void sub_29927B244()
{
  v0 = &byte_2A145F07F;
  v1 = -2016;
  v2 = &byte_2A145F07F;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

uint64_t *sub_29927B28C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0;
  *a1 = utrans_openU();
  return a1;
}

void *sub_29927B320(void *a1)
{
  if (*a1)
  {
    utrans_close();
  }

  return a1;
}

BOOL sub_29927B354(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!*a1)
  {
    return 0;
  }

  if (*(a2 + 23) >= 0)
  {
    LODWORD(v3) = *(a2 + 23);
  }

  else
  {
    v3 = *(a2 + 8);
  }

  MEMORY[0x2A1C7C4A8](a1);
  v5 = v10 - v4;
  sub_29927B494(v6, v10 - v4, v7, 0);
  v11 = v3;
  v12 = 0;
  v10[3] = v3;
  utrans_transUChars();
  v8 = v12 < 1;
  if (v12 <= 0)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    sub_29922C614(a2, v5, v11);
  }

  return v8;
}

unint64_t sub_29927B494(uint64_t ***a1, void *__dst, unint64_t a3, unint64_t a4)
{
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v9 = a1[1];
    v5 = v9 >= a4;
    v10 = v9 - a4;
    if (!v5)
    {
LABEL_17:
      sub_29925A4C0();
    }

    if (v10 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = v10;
    }

    a1 = *a1;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = v4 >= a4;
    v6 = v4 - a4;
    if (!v5)
    {
      goto LABEL_17;
    }

    if (v6 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = v6;
    }

    if (v7)
    {
LABEL_8:
      memmove(__dst, a1 + 2 * a4, 2 * v7);
    }
  }

  return v7;
}

uint64_t *sub_29927B508(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *a1 = unum_open();
  return a1;
}

void *sub_29927B588(void *a1)
{
  if (*a1)
  {
    unum_close();
  }

  return a1;
}

uint64_t sub_29927B5BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = *a1;
  if (result)
  {
    *a4 = unum_parseInt64();
    return 1;
  }

  return result;
}

uint64_t sub_29927B610(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!*a1)
  {
    return 0;
  }

  v6 = unum_formatInt64();
  v7 = 1;
  if ((a4 & 1) == 0)
  {
    if (*(a3 + 23) < 0)
    {
      **a3 = 0;
      *(a3 + 8) = 0;
    }

    else
    {
      *a3 = 0;
      *(a3 + 23) = 0;
    }
  }

  sub_29922C614(a3, __src, v6);
  return v7;
}

uint64_t sub_29927B6FC(uint64_t a1, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 0;
  }

  result = CFDictionaryContainsKey(theDict, off_2A145F3A8);
  if (!result)
  {
    return result;
  }

  if (*(a1 + 16) == 1)
  {
    result = CFDictionaryContainsKey(theDict, off_2A145F358);
    if (!result)
    {
      return result;
    }

    v5 = &off_2A145F350;
  }

  else
  {
    result = CFDictionaryContainsKey(theDict, off_2A145F360);
    if (!result)
    {
      return result;
    }

    v5 = &off_2A145F368;
  }

  result = CFDictionaryContainsKey(theDict, *v5);
  if (result)
  {
    return 1;
  }

  return result;
}