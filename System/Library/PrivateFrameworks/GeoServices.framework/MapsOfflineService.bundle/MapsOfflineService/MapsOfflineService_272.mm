void sub_10834F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a50);
  sub_1F1A8(a11);
  if (a38)
  {
    operator delete(a38);
    v52 = a44;
    if (!a44)
    {
LABEL_5:
      sub_1F1A8(v50 - 168);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v52 = a44;
    if (!a44)
    {
      goto LABEL_5;
    }
  }

  operator delete(v52);
  sub_1F1A8(v50 - 168);
  _Unwind_Resume(a1);
}

void *sub_10836FC(void *a1, unint64_t *a2)
{
  v4 = sub_444030(a1, *a2);
  v5 = sub_4A5C(v4, "(", 1);
  std::ostream::operator<<();
  v6 = sub_4A5C(v5, ")-->", 4);
  v7 = sub_444030(v6, a2[1]);
  v8 = sub_4A5C(v7, "(", 1);
  std::ostream::operator<<();
  v9 = sub_4A5C(v8, ") cell:", 7);
  v10 = sub_2FF718(v9, __ROR8__(a2[2], 32));
  v11 = sub_4A5C(v10, ", cost = ", 9);
  sub_705F0(v11, *(a2 + 28));
  return a1;
}

void sub_10837C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v76 = a2;
  sub_108600C(v3, &v76, &v87);
  if (v87 == v88 && sub_7E7E4(3u))
  {
    sub_19594F8(&v76);
    sub_4A5C(&v76, "No shortcut entries found.", 26);
    if ((v84 & 0x10) != 0)
    {
      v7 = p_p;
      if (p_p < v81)
      {
        p_p = v81;
        v7 = v81;
      }

      v8 = *(&v80 + 1);
      v6 = v7 - *(&v80 + 1);
      if (v7 - *(&v80 + 1) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_130;
      }
    }

    else
    {
      if ((v84 & 8) == 0)
      {
        v6 = 0;
        HIBYTE(v75) = 0;
LABEL_14:
        *(&__dst + v6) = 0;
        sub_7E854(&__dst, 3u);
        if (SHIBYTE(v75) < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::locale::~locale(&v78);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_19;
      }

      v8 = v79;
      v6 = v80 - v79;
      if (v80 - v79 > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_130:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v75) = v6;
    if (v6)
    {
      memmove(&__dst, v8, v6);
    }

    goto LABEL_14;
  }

LABEL_19:
  v9 = v87;
  v70 = v88;
  if (v87 == v88)
  {
    goto LABEL_119;
  }

  do
  {
    v10 = v9[5];
    if (!v10)
    {
      if (!sub_7E7E4(3u))
      {
        goto LABEL_42;
      }

      sub_19594F8(&v76);
      v12 = sub_4A5C(&v76, "Invalid cost ptr stored for key ", 32);
      sub_10852AC(v12, v9);
      if ((v84 & 0x10) != 0)
      {
        v14 = p_p;
        v15 = &v80 + 1;
        if (p_p < v81)
        {
          p_p = v81;
          v14 = v81;
          v15 = &v80 + 1;
        }
      }

      else
      {
        if ((v84 & 8) == 0)
        {
          v13 = 0;
          HIBYTE(v75) = 0;
LABEL_37:
          *(&__dst + v13) = 0;
          sub_7E854(&__dst, 3u);
          if (SHIBYTE(v75) < 0)
          {
            operator delete(__dst);
          }

          v76 = v69;
          *(&v76 + *(v69 - 3)) = v68;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          std::locale::~locale(&v78);
          std::ostream::~ostream();
          std::ios::~ios();
LABEL_42:
          v10 = v9[5];
          v11 = *(a2 + 16);
          if (!v10)
          {
            goto LABEL_46;
          }

          goto LABEL_43;
        }

        v14 = v80;
        v15 = &v79;
      }

      v16 = *v15;
      v13 = v14 - *v15;
      if (v13 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v13 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v75) = v14 - *v15;
      if (v13)
      {
        memmove(&__dst, v16, v13);
      }

      goto LABEL_37;
    }

    v11 = *(a2 + 16);
LABEL_43:
    v17 = *(v10 + 24);
    if (v17)
    {
      v18 = (*(v17 + 32) - *(v17 + 24)) >> 3;
      __dst = 0;
      v74 = 0;
      v75 = 0;
      v19 = *a2;
      v20 = *(a2 + 16);
      v21 = v9[5];
      if (v21)
      {
        goto LABEL_55;
      }

      goto LABEL_60;
    }

LABEL_46:
    v22 = sub_105BEB4(*(v4 + 176), v11, 1);
    if (!v22 || (v23 = &v22[-*v22], *v23 < 5u) || !*(v23 + 2) || (v24 = &v22[*(v23 + 2) + *&v22[*(v23 + 2)]], *v24 <= HIDWORD(v11)) || (v25 = &v24[4 * HIDWORD(v11) + 4 + *&v24[4 * HIDWORD(v11) + 4]], v26 = &v25[-*v25], *v26 < 0xBu) || (v27 = *(v26 + 5)) == 0)
    {
      LODWORD(v18) = 0;
      __dst = 0;
      v74 = 0;
      v75 = 0;
      v19 = *a2;
      v20 = *(a2 + 16);
      v21 = v9[5];
      if (!v21)
      {
        goto LABEL_60;
      }

LABEL_55:
      v28 = *(v21 + 24);
      if (!v28)
      {
        goto LABEL_60;
      }

      v76 = v19;
      v29 = *(v28 + 8);
      v71 = *v28;
      v89[0] = v29;
      v30 = sub_1069A1C(&v71, v89, &v76);
      if (*(v28 + 8) != v30 && *v30 == v76)
      {
        v31 = (v30 - *v28) >> 3;
        if (v31 != 0xFFFF)
        {
          goto LABEL_61;
        }
      }

LABEL_83:
      if (!sub_7E7E4(3u))
      {
LABEL_101:
        v59 = __dst;
        if (!__dst)
        {
          goto LABEL_21;
        }

LABEL_102:
        v74 = v59;
        operator delete(v59);
        goto LABEL_21;
      }

      sub_19594F8(&v76);
      v54 = sub_4A5C(&v76, "Invalid entry id for key ", 25);
      sub_10852AC(v54, v9);
      if ((v84 & 0x10) != 0)
      {
        v56 = p_p;
        v57 = &v80 + 1;
        if (p_p < v81)
        {
          p_p = v81;
          v56 = v81;
          v57 = &v80 + 1;
        }
      }

      else
      {
        if ((v84 & 8) == 0)
        {
          v55 = 0;
          v72 = 0;
LABEL_96:
          *(&v71 + v55) = 0;
          sub_7E854(&v71, 3u);
          if (v72 < 0)
          {
            operator delete(v71);
          }

          v76 = v69;
          *(&v76 + *(v69 - 3)) = v68;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          std::locale::~locale(&v78);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_101;
        }

        v56 = v80;
        v57 = &v79;
      }

      v58 = *v57;
      v55 = v56 - *v57;
      if (v55 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v55 >= 0x17)
      {
        operator new();
      }

      v72 = v56 - *v57;
      if (v55)
      {
        memmove(&v71, v58, v55);
      }

      goto LABEL_96;
    }

    LODWORD(v18) = *&v25[v27 + *&v25[v27]];
    __dst = 0;
    v74 = 0;
    v75 = 0;
    v19 = *a2;
    v20 = *(a2 + 16);
    v21 = v9[5];
    if (v21)
    {
      goto LABEL_55;
    }

LABEL_60:
    LOWORD(v31) = sub_105BD90(*(v4 + 176), v19, v20);
    if (v31 == 0xFFFF)
    {
      goto LABEL_83;
    }

LABEL_61:
    v32 = *(a2 + 16);
    v33 = v9[5];
    if (v33 && (v34 = *(v33 + 24)) != 0)
    {
      if ((v34 + 24) != &__dst)
      {
        sub_31F64(&__dst, *(v34 + 24), *(v34 + 32), (*(v34 + 32) - *(v34 + 24)) >> 3);
      }
    }

    else
    {
      v35 = *(v4 + 176);
      v74 = __dst;
      v36 = sub_105BEB4(v35, v32, 1);
      if (v36)
      {
        v37 = &v36[-*v36];
        if (*v37 >= 5u)
        {
          if (*(v37 + 2))
          {
            v38 = &v36[*(v37 + 2) + *&v36[*(v37 + 2)]];
            if (*v38 > HIDWORD(v32))
            {
              v39 = &v38[4 * HIDWORD(v32) + 4 + *&v38[4 * HIDWORD(v32) + 4]];
              v40 = &v39[-*v39];
              if (*v40 >= 0xBu)
              {
                v41 = *(v40 + 5);
                if (v41)
                {
                  v42 = &v39[v41 + *&v39[v41]];
                  v43 = *v42;
                  v71 = v42 + 4;
                  v89[0] = &v42[8 * v43 + 4];
                  sub_1069B6C(&v71, v89, &__dst, &v76);
                }
              }
            }
          }
        }
      }
    }

    if (v74 == __dst)
    {
      goto LABEL_101;
    }

    v44 = v18 * v31;
    v45 = (v74 - __dst) >> 3;
    v46 = __dst + 4;
    while (*(v46 - 1) != *(a2 + 8) || *v46 != *(a2 + 12))
    {
      ++v44;
      v46 += 8;
      if (!--v45)
      {
        goto LABEL_101;
      }
    }

    if (!sub_7E7E4(3u))
    {
      goto LABEL_101;
    }

    v86 = 0;
    v76 = v67;
    *(&v76 + *(v67 - 3)) = v66;
    v47 = (&v76 + *(v76 - 3));
    std::ios_base::init(v47, &v77);
    v47[1].__vftable = 0;
    v47[1].__fmtflags_ = -1;
    std::locale::locale(&v78);
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    memset(&__p, 0, sizeof(__p));
    v84 = 16;
    p_p = &__p;
    std::string::append(&__p, 0x16uLL, 0);
    size = __p.__r_.__value_.__l.__size_;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    *(&v80 + 1) = &__p;
    *&v81 = &__p;
    *(&v81 + 1) = &__p + size;
    v49 = sub_4A5C(&v76, "Cost for ", 9);
    v50 = sub_10852AC(v49, v9);
    v51 = sub_4A5C(v50, ": ", 2);
    v52 = sub_106CA9C(v9[5], v44);
    sub_705F0(v51, *v52);
    if ((v84 & 0x10) != 0)
    {
      v60 = p_p;
      v61 = &v80 + 1;
      if (p_p < v81)
      {
        p_p = v81;
        v60 = v81;
        v61 = &v80 + 1;
      }
    }

    else
    {
      if ((v84 & 8) == 0)
      {
        v53 = 0;
        v72 = 0;
        goto LABEL_112;
      }

      v60 = v80;
      v61 = &v79;
    }

    v62 = *v61;
    v53 = v60 - *v61;
    if (v53 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v53 >= 0x17)
    {
      operator new();
    }

    v72 = v60 - *v61;
    if (v53)
    {
      memmove(&v71, v62, v53);
    }

LABEL_112:
    *(&v71 + v53) = 0;
    sub_7E854(&v71, 3u);
    if (v72 < 0)
    {
      operator delete(v71);
    }

    v76 = v69;
    *(&v76 + *(v69 - 3)) = v68;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::locale::~locale(&v78);
    std::ostream::~ostream();
    std::ios::~ios();
    v59 = __dst;
    if (__dst)
    {
      goto LABEL_102;
    }

LABEL_21:
    v9 += 7;
  }

  while (v9 != v70);
  v9 = v87;
LABEL_119:
  if (v9)
  {
    v63 = v88;
    v64 = v9;
    if (v88 != v9)
    {
      do
      {
        v65 = *(v63 - 1);
        if (v65)
        {
          if (!atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v65->__on_zero_shared)(v65);
            std::__shared_weak_count::__release_weak(v65);
          }
        }

        v63 -= 7;
      }

      while (v63 != v9);
      v64 = v87;
    }

    v88 = v9;
    operator delete(v64);
  }
}

void sub_10845D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a31 < 0)
  {
    operator delete(__p);
    sub_1959728(&a32);
    sub_108543C((v46 - 128));
    _Unwind_Resume(a1);
  }

  sub_1959728(&a32);
  sub_108543C((v46 - 128));
  _Unwind_Resume(a1);
}

unsigned int sub_1084748(uint64_t a1, double a2)
{
  v2 = *(a1 + 248);
  if (!v2)
  {
    return 1000;
  }

  LODWORD(a2) = *(a1 + 252);
  return vcvtad_u64_f64(*&a2 * 1000.0 / v2);
}

void sub_1084780(uint64_t a1, unsigned int *a2, __int128 *a3)
{
  ++*(a1 + 816);
  sub_40F508(a1, a2, &v33);
  if (v33)
  {
    v6 = v34;
    v7 = *(a1 + 768) + 112 * *(v34 + 8);
    v9 = a3[4];
    v8 = a3[5];
    v10 = *(a3 + 24);
    *(v7 + 56) = a3[3];
    *(v7 + 104) = v10;
    *(v7 + 88) = v8;
    *(v7 + 72) = v9;
    v11 = *a3;
    v12 = a3[1];
    *(v7 + 40) = a3[2];
    *(v7 + 24) = v12;
    *(v7 + 8) = v11;
    v13 = *(v6 + 8);
    v14 = a1 + 824;
  }

  else
  {
    v15 = -1227133513 * ((*(a1 + 776) - *(a1 + 768)) >> 4);
    sub_40F660(a1, a2, v35);
    *(v36 + 8) = v15;
    v16 = *(a1 + 776);
    v17 = *(a1 + 784);
    if (v16 >= v17)
    {
      v24 = *(a1 + 768);
      v25 = 0x6DB6DB6DB6DB6DB7 * ((v16 - v24) >> 4) + 1;
      if (v25 > 0x249249249249249)
      {
        sub_1794();
      }

      v26 = 0x6DB6DB6DB6DB6DB7 * ((v17 - v24) >> 4);
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0x124924924924924)
      {
        v27 = 0x249249249249249;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        if (v27 <= 0x249249249249249)
        {
          operator new();
        }

        sub_1808();
      }

      v28 = a3[2];
      v29 = 16 * ((v16 - v24) >> 4);
      *(v29 + 56) = a3[3];
      v30 = a3[5];
      *(v29 + 72) = a3[4];
      *(v29 + 88) = v30;
      v31 = a3[1];
      *(v29 + 8) = *a3;
      *(v29 + 24) = v31;
      *v29 = *a2;
      *(v29 + 104) = *(a3 + 12);
      v23 = v29 + 112;
      v32 = (v29 - (v16 - v24));
      *(v29 + 40) = v28;
      memcpy(v32, v24, v16 - v24);
      *(a1 + 768) = v32;
      *(a1 + 776) = v23;
      *(a1 + 784) = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v16 = *a2;
      v18 = *a3;
      v19 = a3[1];
      *(v16 + 40) = a3[2];
      *(v16 + 24) = v19;
      *(v16 + 8) = v18;
      v20 = a3[3];
      v21 = a3[4];
      v22 = a3[5];
      *(v16 + 104) = *(a3 + 12);
      *(v16 + 88) = v22;
      *(v16 + 72) = v21;
      *(v16 + 56) = v20;
      v23 = v16 + 112;
    }

    *(a1 + 776) = v23;
    v14 = a1 + 824;
    v13 = v15;
  }

  sub_1056B88(v14, v13, a3);
}

uint64_t sub_10849E8(uint64_t a1, unsigned int *a2, __int128 *a3)
{
  sub_40F508(a1, a2, &v37);
  if (v37)
  {
    v6 = v38;
    v7 = *(a1 + 768) + 112 * *(v38 + 8);
    v9 = *(v7 + 8);
    v8 = v7 + 8;
    v10 = *a3 >= v9;
    if (*a3 == v9)
    {
      if (*(a3 + 1) >= *(v8 + 4))
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    ++*(a1 + 816);
    v21 = *a3;
    v22 = a3[2];
    *(v8 + 16) = a3[1];
    *(v8 + 32) = v22;
    *v8 = v21;
    v23 = a3[3];
    v24 = a3[4];
    v25 = a3[5];
    *(v8 + 96) = *(a3 + 24);
    *(v8 + 64) = v24;
    *(v8 + 80) = v25;
    *(v8 + 48) = v23;
    v26 = *(v6 + 8);
    v27 = a1 + 824;
  }

  else
  {
    ++*(a1 + 816);
    v12 = -1227133513 * ((*(a1 + 776) - *(a1 + 768)) >> 4);
    sub_40F660(a1, a2, v39);
    *(v40 + 8) = v12;
    v13 = *(a1 + 776);
    v14 = *(a1 + 784);
    if (v13 >= v14)
    {
      v28 = *(a1 + 768);
      v29 = 0x6DB6DB6DB6DB6DB7 * ((v13 - v28) >> 4) + 1;
      if (v29 > 0x249249249249249)
      {
        sub_1794();
      }

      v30 = 0x6DB6DB6DB6DB6DB7 * ((v14 - v28) >> 4);
      if (2 * v30 > v29)
      {
        v29 = 2 * v30;
      }

      if (v30 >= 0x124924924924924)
      {
        v31 = 0x249249249249249;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        if (v31 <= 0x249249249249249)
        {
          operator new();
        }

        sub_1808();
      }

      v32 = a3[2];
      v33 = 16 * ((v13 - v28) >> 4);
      *(v33 + 56) = a3[3];
      v34 = a3[5];
      *(v33 + 72) = a3[4];
      *(v33 + 88) = v34;
      v35 = a3[1];
      *(v33 + 8) = *a3;
      *(v33 + 24) = v35;
      *v33 = *a2;
      *(v33 + 104) = *(a3 + 12);
      v20 = v33 + 112;
      v36 = (v33 - (v13 - v28));
      *(v33 + 40) = v32;
      memcpy(v36, v28, v13 - v28);
      *(a1 + 768) = v36;
      *(a1 + 776) = v20;
      *(a1 + 784) = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v13 = *a2;
      v15 = *a3;
      v16 = a3[1];
      *(v13 + 40) = a3[2];
      *(v13 + 24) = v16;
      *(v13 + 8) = v15;
      v17 = a3[3];
      v18 = a3[4];
      v19 = a3[5];
      *(v13 + 104) = *(a3 + 12);
      *(v13 + 88) = v19;
      *(v13 + 72) = v18;
      *(v13 + 56) = v17;
      v20 = v13 + 112;
    }

    *(a1 + 776) = v20;
    v27 = a1 + 824;
    v26 = v12;
  }

  sub_1056B88(v27, v26, a3);
  return 1;
}

void sub_1084C84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    v8 = *(a2 + 64);
    *(v3 + 80) = *(a2 + 80);
    *(v3 + 48) = v7;
    *(v3 + 64) = v8;
    *(v3 + 32) = v6;
    v9 = v3 + 88;
LABEL_3:
    *(a1 + 8) = v9;
    return;
  }

  v10 = *a1;
  v11 = 0x2E8BA2E8BA2E8BA3 * ((v3 - *a1) >> 3);
  v12 = v11 + 1;
  if ((v11 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1794();
  }

  v13 = 0x2E8BA2E8BA2E8BA3 * ((v4 - v10) >> 3);
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0x1745D1745D1745DLL)
  {
    v14 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    if (v14 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = *(a2 + 48);
  v16 = 8 * ((v3 - *a1) >> 3);
  *(v16 + 32) = *(a2 + 32);
  *(v16 + 48) = v15;
  *(v16 + 64) = *(a2 + 64);
  *(v16 + 80) = *(a2 + 80);
  v17 = *(a2 + 16);
  *v16 = *a2;
  *(v16 + 16) = v17;
  v9 = 88 * v11 + 88;
  v18 = 88 * v11 - (v3 - v10);
  memcpy((v16 - (v3 - v10)), v10, v3 - v10);
  *a1 = v18;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (!v10)
  {
    goto LABEL_3;
  }

  operator delete(v10);
  *(a1 + 8) = v9;
}

void sub_1084E08(size_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      if ((0x2E8BA2E8BA2E8BA3 * (v4 >> 3)) < 0x2E8BA2E8BA2E8BBLL)
      {
        operator new();
      }

      sub_1808();
    }

    if (v4 < v3)
    {
      v6 = 8 * (v4 >> 3);
      v7 = a1[1] - v2;
      v8 = v6 - v7;
      memcpy((v6 - v7), v2, v7);
      *a1 = v8;
      a1[1] = v6;
      a1[2] = v6;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

void sub_1084F28(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *(a1 + 16);
  v25 = *(a1 + 24);
  if (v4 != v25)
  {
    while (1)
    {
      __p = 0;
      v29 = 0;
      v30 = 0;
      std::mutex::lock((v4 + 24));
      v6 = *(v4 + 8);
      v31 = a2;
      sub_10854F0(v4, v4, v6, v6, &__p, &v32, &v31);
      std::mutex::unlock((v4 + 24));
      v7 = *a3;
      v8 = a3[1];
      v9 = 0x6DB6DB6DB6DB6DB7 * ((v8 - *a3) >> 3) + 0x6DB6DB6DB6DB6DB7 * ((v29 - __p) >> 3);
      v10 = a3[2];
      v27 = v4;
      if (0x6DB6DB6DB6DB6DB7 * ((v10 - *a3) >> 3) < v9)
      {
        if (v9 <= 0x492492492492492)
        {
          operator new();
        }

LABEL_34:
        sub_1794();
      }

      v12 = __p;
      v11 = v29;
      if (__p != v29)
      {
        break;
      }

      if (__p)
      {
        goto LABEL_27;
      }

LABEL_5:
      v4 = v27 + 272;
      if (v27 + 272 == v25)
      {
        return;
      }
    }

    do
    {
      while (v8 < v10)
      {
        v13 = *v12;
        v14 = v12[1];
        *(v8 + 8) = *(v12 + 8);
        *v8 = v13;
        *(v8 + 1) = v14;
        *(v8 + 40) = *(v12 + 40);
        *(v12 + 5) = 0;
        *(v12 + 6) = 0;
        v8 += 56;
        a3[1] = v8;
        v12 = (v12 + 56);
        if (v12 == v11)
        {
          goto LABEL_26;
        }
      }

      v15 = v8 - v7;
      v16 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 3);
      v17 = v16 + 1;
      if ((v16 + 1) > 0x492492492492492)
      {
        goto LABEL_34;
      }

      if (0xDB6DB6DB6DB6DB6ELL * ((v10 - v7) >> 3) > v17)
      {
        v17 = 0xDB6DB6DB6DB6DB6ELL * ((v10 - v7) >> 3);
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((v10 - v7) >> 3)) >= 0x249249249249249)
      {
        v18 = 0x492492492492492;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        if (v18 <= 0x492492492492492)
        {
          operator new();
        }

        sub_1808();
      }

      v19 = 8 * ((v8 - v7) >> 3);
      v10 = 0;
      v20 = *v12;
      v21 = v12[1];
      *(v19 + 32) = *(v12 + 8);
      *v19 = v20;
      *(v19 + 16) = v21;
      *(v19 + 40) = *(v12 + 40);
      *(v12 + 5) = 0;
      *(v12 + 6) = 0;
      v8 = (v19 + 56);
      v22 = (56 * v16 - v15);
      memcpy((v19 - v15), v7, v15);
      *a3 = v22;
      a3[1] = v8;
      a3[2] = 0;
      if (v7)
      {
        operator delete(v7);
      }

      v7 = v22;
      a3[1] = v8;
      v12 = (v12 + 56);
    }

    while (v12 != v11);
LABEL_26:
    v12 = __p;
    if (!__p)
    {
      goto LABEL_5;
    }

LABEL_27:
    v23 = v29;
    v5 = v12;
    if (v29 != v12)
    {
      do
      {
        v24 = *(v23 - 1);
        if (v24)
        {
          if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
          }
        }

        v23 -= 56;
      }

      while (v23 != v12);
      v5 = __p;
    }

    v29 = v12;
    operator delete(v5);
    goto LABEL_5;
  }
}

void sub_1085260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_108543C(va);
  sub_108543C(v7);
  _Unwind_Resume(a1);
}

void *sub_10852AC(void *a1, uint64_t a2)
{
  v4 = sub_4A5C(a1, "cell: ", 6);
  v5 = sub_2FF718(v4, __ROR8__(*a2, 32));
  v6 = sub_4A5C(v5, ", ", 2);
  v7 = sub_4A5C(v6, "cost_function_id: ", 18);
  std::ostream::operator<<();
  v8 = sub_4A5C(v7, ", ", 2);
  v9 = sub_4A5C(v8, "live_speeds_time_stamp: ", 24);
  v10 = sub_258D4(v9, (a2 + 12));
  v11 = sub_4A5C(v10, ", ", 2);
  v12 = sub_4A5C(v11, "live_blockages_time_stamp: ", 27);
  v13 = sub_258D4(v12, (a2 + 16));
  v14 = sub_4A5C(v13, ", ", 2);
  v15 = sub_4A5C(v14, "live_area_incidents_time_stamp: ", 32);
  v16 = sub_258D4(v15, (a2 + 20));
  v17 = sub_4A5C(v16, ", ", 2);
  sub_4A5C(v17, "traffic_type: ", 14);
  v18 = std::ostream::operator<<();
  v19 = sub_4A5C(v18, ", ", 2);
  v20 = sub_4A5C(v19, "free_flow_branch_id: ", 21);
  std::ostream::operator<<();
  v21 = sub_4A5C(v20, ", ", 2);
  sub_4A5C(v21, "traffic_branch_id: ", 19);
  v22 = std::ostream::operator<<();
  sub_4A5C(v22, ", source: ", 10);
  v23 = std::ostream::operator<<();
  v24 = sub_4A5C(v23, ", computation_timestamp: ", 25);
  sub_258D4(v24, (a2 + 32));
  return a1;
}

char **sub_108543C(char **a1)
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
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 56;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_10854F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a5;
  if (a2 != a4)
  {
    v9 = a2;
    do
    {
      v10 = *v9;
      v11 = *v9 + 16;
      if (*v11 == *(**a7 + 16) && *(*v9 + 20) == *(**a7 + 20))
      {
        v13 = *(*v9 + 32);
        v18[0] = *v11;
        v18[1] = v13;
        v19 = *(v11 + 32);
        v15 = v10[8];
        v14 = v10[9];
        v20 = v15;
        v21 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
        }

        sub_1085614(&v22, v18);
        v16 = v21;
        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        v10 = *v9;
      }

      v9 = v10;
    }

    while (v10 != a4);
    return v22;
  }

  return a5;
}

uint64_t *sub_1085614(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *v2) >> 3);
    v8 = v7 + 1;
    if ((v7 + 1) > 0x492492492492492)
    {
      sub_1794();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *v2) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x249249249249249)
    {
      v10 = 0x492492492492492;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0x492492492492492)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    v12 = 56 * v7;
    v13 = a2[1];
    *v12 = *a2;
    *(v12 + 16) = v13;
    *(v12 + 32) = *(a2 + 8);
    *(v12 + 40) = *(a2 + 40);
    *(a2 + 40) = 0uLL;
    v14 = 56 * v7 + 56;
    v15 = *v2;
    v16 = *(v2 + 8) - *v2;
    v17 = v12 - v16;
    memcpy((v12 - v16), *v2, v16);
    *v2 = v17;
    *(v2 + 8) = v14;
    *(v2 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }

    result = v11;
    *(v2 + 8) = v14;
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 8);
    *v3 = v5;
    *(v3 + 16) = v6;
    *(v3 + 40) = *(a2 + 40);
    *(a2 + 40) = 0uLL;
    *(v2 + 8) = v3 + 56;
  }

  return result;
}

void sub_108579C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = (v4 + 1);
  sub_2133C(a1, &v10);
}

void sub_1085B0C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1085B64(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *(a1 + 16);
  v25 = *(a1 + 24);
  if (v4 != v25)
  {
    while (1)
    {
      __p = 0;
      v29 = 0;
      v30 = 0;
      std::mutex::lock((v4 + 24));
      v6 = *(v4 + 8);
      v31 = a2;
      sub_1085EE8(v4, v4, v6, v6, &__p, &v32, &v31);
      std::mutex::unlock((v4 + 24));
      v7 = *a3;
      v8 = a3[1];
      v9 = 0x6DB6DB6DB6DB6DB7 * ((v8 - *a3) >> 3) + 0x6DB6DB6DB6DB6DB7 * ((v29 - __p) >> 3);
      v10 = a3[2];
      v27 = v4;
      if (0x6DB6DB6DB6DB6DB7 * ((v10 - *a3) >> 3) < v9)
      {
        if (v9 <= 0x492492492492492)
        {
          operator new();
        }

LABEL_34:
        sub_1794();
      }

      v12 = __p;
      v11 = v29;
      if (__p != v29)
      {
        break;
      }

      if (__p)
      {
        goto LABEL_27;
      }

LABEL_5:
      v4 = v27 + 272;
      if (v27 + 272 == v25)
      {
        return;
      }
    }

    do
    {
      while (v8 < v10)
      {
        v13 = *v12;
        v14 = v12[1];
        *(v8 + 8) = *(v12 + 8);
        *v8 = v13;
        *(v8 + 1) = v14;
        *(v8 + 40) = *(v12 + 40);
        *(v12 + 5) = 0;
        *(v12 + 6) = 0;
        v8 += 56;
        a3[1] = v8;
        v12 = (v12 + 56);
        if (v12 == v11)
        {
          goto LABEL_26;
        }
      }

      v15 = v8 - v7;
      v16 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 3);
      v17 = v16 + 1;
      if ((v16 + 1) > 0x492492492492492)
      {
        goto LABEL_34;
      }

      if (0xDB6DB6DB6DB6DB6ELL * ((v10 - v7) >> 3) > v17)
      {
        v17 = 0xDB6DB6DB6DB6DB6ELL * ((v10 - v7) >> 3);
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((v10 - v7) >> 3)) >= 0x249249249249249)
      {
        v18 = 0x492492492492492;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        if (v18 <= 0x492492492492492)
        {
          operator new();
        }

        sub_1808();
      }

      v19 = 8 * ((v8 - v7) >> 3);
      v10 = 0;
      v20 = *v12;
      v21 = v12[1];
      *(v19 + 32) = *(v12 + 8);
      *v19 = v20;
      *(v19 + 16) = v21;
      *(v19 + 40) = *(v12 + 40);
      *(v12 + 5) = 0;
      *(v12 + 6) = 0;
      v8 = (v19 + 56);
      v22 = (56 * v16 - v15);
      memcpy((v19 - v15), v7, v15);
      *a3 = v22;
      a3[1] = v8;
      a3[2] = 0;
      if (v7)
      {
        operator delete(v7);
      }

      v7 = v22;
      a3[1] = v8;
      v12 = (v12 + 56);
    }

    while (v12 != v11);
LABEL_26:
    v12 = __p;
    if (!__p)
    {
      goto LABEL_5;
    }

LABEL_27:
    v23 = v29;
    v5 = v12;
    if (v29 != v12)
    {
      do
      {
        v24 = *(v23 - 1);
        if (v24)
        {
          if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
          }
        }

        v23 -= 56;
      }

      while (v23 != v12);
      v5 = __p;
    }

    v29 = v12;
    operator delete(v5);
    goto LABEL_5;
  }
}

void sub_1085E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_108543C(va);
  sub_108543C(v7);
  _Unwind_Resume(a1);
}

uint64_t sub_1085EE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a5;
  if (a2 != a4)
  {
    v9 = a2;
    do
    {
      v10 = *v9;
      v11 = *v9 + 16;
      if (*v11 == *(**a7 + 16) && *(*v9 + 20) == *(**a7 + 20))
      {
        v13 = *(*v9 + 32);
        v18[0] = *v11;
        v18[1] = v13;
        v19 = *(v11 + 32);
        v15 = v10[8];
        v14 = v10[9];
        v20 = v15;
        v21 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
        }

        sub_1085614(&v22, v18);
        v16 = v21;
        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        v10 = *v9;
      }

      v9 = v10;
    }

    while (v10 != a4);
    return v22;
  }

  return a5;
}

void sub_108600C(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *(a1 + 16);
  v25 = *(a1 + 24);
  if (v4 != v25)
  {
    while (1)
    {
      __p = 0;
      v29 = 0;
      v30 = 0;
      std::mutex::lock((v4 + 24));
      v6 = *(v4 + 8);
      v31 = a2;
      sub_1086390(v4, v4, v6, v6, &__p, &v32, &v31);
      std::mutex::unlock((v4 + 24));
      v7 = *a3;
      v8 = a3[1];
      v9 = 0x6DB6DB6DB6DB6DB7 * ((v8 - *a3) >> 3) + 0x6DB6DB6DB6DB6DB7 * ((v29 - __p) >> 3);
      v10 = a3[2];
      v27 = v4;
      if (0x6DB6DB6DB6DB6DB7 * ((v10 - *a3) >> 3) < v9)
      {
        if (v9 <= 0x492492492492492)
        {
          operator new();
        }

LABEL_34:
        sub_1794();
      }

      v12 = __p;
      v11 = v29;
      if (__p != v29)
      {
        break;
      }

      if (__p)
      {
        goto LABEL_27;
      }

LABEL_5:
      v4 = v27 + 272;
      if (v27 + 272 == v25)
      {
        return;
      }
    }

    do
    {
      while (v8 < v10)
      {
        v13 = *v12;
        v14 = v12[1];
        *(v8 + 8) = *(v12 + 8);
        *v8 = v13;
        *(v8 + 1) = v14;
        *(v8 + 40) = *(v12 + 40);
        *(v12 + 5) = 0;
        *(v12 + 6) = 0;
        v8 += 56;
        a3[1] = v8;
        v12 = (v12 + 56);
        if (v12 == v11)
        {
          goto LABEL_26;
        }
      }

      v15 = v8 - v7;
      v16 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 3);
      v17 = v16 + 1;
      if ((v16 + 1) > 0x492492492492492)
      {
        goto LABEL_34;
      }

      if (0xDB6DB6DB6DB6DB6ELL * ((v10 - v7) >> 3) > v17)
      {
        v17 = 0xDB6DB6DB6DB6DB6ELL * ((v10 - v7) >> 3);
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((v10 - v7) >> 3)) >= 0x249249249249249)
      {
        v18 = 0x492492492492492;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        if (v18 <= 0x492492492492492)
        {
          operator new();
        }

        sub_1808();
      }

      v19 = 8 * ((v8 - v7) >> 3);
      v10 = 0;
      v20 = *v12;
      v21 = v12[1];
      *(v19 + 32) = *(v12 + 8);
      *v19 = v20;
      *(v19 + 16) = v21;
      *(v19 + 40) = *(v12 + 40);
      *(v12 + 5) = 0;
      *(v12 + 6) = 0;
      v8 = (v19 + 56);
      v22 = (56 * v16 - v15);
      memcpy((v19 - v15), v7, v15);
      *a3 = v22;
      a3[1] = v8;
      a3[2] = 0;
      if (v7)
      {
        operator delete(v7);
      }

      v7 = v22;
      a3[1] = v8;
      v12 = (v12 + 56);
    }

    while (v12 != v11);
LABEL_26:
    v12 = __p;
    if (!__p)
    {
      goto LABEL_5;
    }

LABEL_27:
    v23 = v29;
    v5 = v12;
    if (v29 != v12)
    {
      do
      {
        v24 = *(v23 - 1);
        if (v24)
        {
          if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
          }
        }

        v23 -= 56;
      }

      while (v23 != v12);
      v5 = __p;
    }

    v29 = v12;
    operator delete(v5);
    goto LABEL_5;
  }
}

void sub_1086344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_108543C(va);
  sub_108543C(v7);
  _Unwind_Resume(a1);
}

uint64_t sub_1086390(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a5;
  if (a2 != a4)
  {
    v9 = a2;
    do
    {
      v10 = *v9;
      v11 = *v9 + 16;
      if (*v11 == *(**a7 + 16) && *(*v9 + 20) == *(**a7 + 20))
      {
        v13 = *(*v9 + 32);
        v18[0] = *v11;
        v18[1] = v13;
        v19 = *(v11 + 32);
        v15 = v10[8];
        v14 = v10[9];
        v20 = v15;
        v21 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
        }

        sub_1085614(&v22, v18);
        v16 = v21;
        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        v10 = *v9;
      }

      v9 = v10;
    }

    while (v10 != a4);
    return v22;
  }

  return a5;
}

void sub_10864B4(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = (v4 + 1);
  sub_2133C(a1, &v10);
}

void sub_1086824(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_108687C(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_40CC5C(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_10538E8(v5 + 103, a2);
  if (0x6DB6DB6DB6DB6DB7 * ((a1[98] - a1[96]) >> 4) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_1086988(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10869E8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 1);
  *a4 = *a1;
  *(a4 + 16) = v8;
  *(a4 + 32) = *(a1 + 8);
  v9 = sub_FC17C8(a2, a1 + 3);
  *(a4 + 16) = 0x8000000080000000;
  *(a4 + 24) = 0x7FFFFFFF;
  v10 = *(a1 + 15);
  if (v10 && (v11 = *a1, (v12 = sub_1055EF8(a3, *a1, 1)) != 0) && (v13 = &v12[-*v12], *v13 >= 5u) && *(v13 + 2) && (v14 = &v12[*(v13 + 2) + *&v12[*(v13 + 2)]], *v14 > HIDWORD(v11)))
  {
    v15 = &v14[4 * HIDWORD(v11) + 4 + *&v14[4 * HIDWORD(v11) + 4]];
    v16 = &v15[-*v15];
    if (*v16 >= 7u && (v17 = *(v16 + 3)) != 0)
    {
      v18 = v15[v17];
    }

    else
    {
      v18 = 0;
    }

    if ((v18 & (1 << v10)) != 0)
    {
      v19 = *(a1 + 15);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  *(a4 + 30) = v19;
  *(a4 + 28) = 0;
  *(a4 + 32) = 0;
  v20 = *a1;
  v21 = sub_1055EF8(a3, v20, 1);
  if (v21 && (v22 = &v21[-*v21], *v22 >= 5u) && *(v22 + 2) && (v23 = &v21[*(v22 + 2) + *&v21[*(v22 + 2)]], *v23 > HIDWORD(v20)) && (v24 = &v23[4 * HIDWORD(v20) + 4 + *&v23[4 * HIDWORD(v20) + 4]], v25 = &v24[-*v24], *v25 >= 5u) && (v26 = *(v25 + 2)) != 0)
  {
    v27 = *&v24[v26];
  }

  else
  {
    v27 = 0;
  }

  v29 = v27;
  result = sub_FC1B44(a2, *v9, &v29);
  *(a4 + 12) = result;
  return result;
}

unint64_t sub_1086BB8(void *a1, unsigned int *a2)
{
  v2 = (a2[1] + (*a2 << 6) + (*a2 >> 2) + 2654435769u) ^ *a2;
  v3 = (*(a2 + 4) + (v2 << 6) + (v2 >> 2) + 2654435769u) ^ v2;
  v4 = (*(a2 + 5) + (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
  v5 = (a2[3] + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v6 = (a2[4] + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v7 = (a2[5] + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  v8 = (a2[6] + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  v9 = (*(a2 + 28) + (v8 << 6) + (v8 >> 2) + 2654435769u) ^ v8;
  v10 = (*(a2 + 15) + (v9 << 6) + (v9 >> 2) + 2654435769u) ^ v9;
  return bswap64((*(a2 + 32) + (v10 << 6) + (v10 >> 2) + 2654435769u) ^ v10) % *a1;
}

void *sub_1086C98(void *result, unsigned int *a2)
{
  v2 = (a2[1] + (*a2 << 6) + (*a2 >> 2) + 2654435769u) ^ *a2;
  v3 = (*(a2 + 4) + (v2 << 6) + (v2 >> 2) + 2654435769u) ^ v2;
  v4 = (*(a2 + 5) + (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
  v5 = (a2[3] + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v6 = (a2[4] + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v7 = a2[6];
  v8 = (a2[5] + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  *result = a2;
  v9 = (v7 + (v8 << 6) + (v8 >> 2) + 2654435769u) ^ v8;
  v10 = (*(a2 + 28) + (v9 << 6) + (v9 >> 2) + 2654435769u) ^ v9;
  v11 = (*(a2 + 15) + (v10 << 6) + (v10 >> 2) + 2654435769u) ^ v10;
  result[1] = (*(a2 + 32) + (v11 << 6) + (v11 >> 2) + 2654435769u) ^ v11;
  return result;
}

uint64_t sub_1086D70(void *a1, uint64_t *a2)
{
  v3 = a1[4];
  result = a1[3];
  if (result != v3)
  {
    v6 = a1;
    v5 = *a1;
    v7 = v6[1] - v5;
    v9 = *a2;
    v8 = a2[1];
    v10 = v8 % v7;
    v11 = v7 - 1;
    while (1)
    {
      if (*(v5 + v10) == 2)
      {
        v12 = result + 56 * v10;
        if (*(v12 + 40) == v8 && *v12 == *v9 && *(v12 + 4) == *(v9 + 4) && *(v9 + 8) == *(v12 + 8) && *(v9 + 10) == *(v12 + 10) && *(v12 + 12) == *(v9 + 12) && *(v12 + 16) == *(v9 + 16) && *(v12 + 20) == *(v9 + 20) && *(v12 + 24) == *(v9 + 24) && *(v12 + 28) == *(v9 + 28) && *(v9 + 30) == *(v12 + 30) && *(v9 + 32) == *(v12 + 32))
        {
          result += 56 * v10;
          return result;
        }
      }

      else if (!*(v5 + v10))
      {
        return v3;
      }

      if (v10 == v11)
      {
        v10 = 0;
      }

      else
      {
        ++v10;
      }
    }
  }

  return result;
}

void sub_1086EB4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_26750D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1086F08(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void sub_1086FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1F1A8(va);
  std::mutex::unlock((v3 + 208));
  _Unwind_Resume(a1);
}

uint64_t sub_1087018(uint64_t a1, unsigned int *a2, const void **a3, unint64_t a4, int a5)
{
  if (*(a1 + 168) < a4)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v52);
    v7 = sub_4A5C(&v52, "LRUCache: item is too large (", 29);
    v8 = sub_71478(v7, a4);
    v9 = sub_4A5C(v8, " > ", 3);
    v10 = sub_71478(v9, *(a1 + 168));
    sub_4A5C(v10, ")", 1);
    if ((v62 & 0x10) != 0)
    {
      v46 = v61;
      if (v61 < v57)
      {
        v61 = v57;
        v46 = v57;
      }

      v47 = v56;
      v11 = v46 - v56;
      if ((v46 - v56) >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v62 & 8) == 0)
      {
        v11 = 0;
        HIBYTE(v51) = 0;
LABEL_31:
        *(&__dst + v11) = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(v51) < 0)
        {
          operator delete(__dst);
        }

        if (v60 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v53);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v47 = *(&v53 + 1);
      v11 = v55 - *(&v53 + 1);
      if ((v55 - *(&v53 + 1)) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_38:
        sub_3244();
      }
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v51) = v11;
    if (v11)
    {
      memmove(&__dst, v47, v11);
    }

    goto LABEL_31;
  }

  __dst = &__dst;
  p_dst = &__dst;
  v51 = 0;
  std::mutex::lock((a1 + 24));
  v15 = (a2[1] + (*a2 << 6) + (*a2 >> 2) + 2654435769u) ^ *a2;
  v16 = (*(a2 + 4) + (v15 << 6) + (v15 >> 2) + 2654435769u) ^ v15;
  v17 = (*(a2 + 5) + (v16 << 6) + (v16 >> 2) + 2654435769u) ^ v16;
  v18 = (a2[3] + (v17 << 6) + (v17 >> 2) + 2654435769u) ^ v17;
  v19 = (a2[4] + (v18 << 6) + (v18 >> 2) + 2654435769u) ^ v18;
  v20 = (a2[5] + (v19 << 6) + (v19 >> 2) + 2654435769u) ^ v19;
  v21 = (a2[6] + (v20 << 6) + (v20 >> 2) + 2654435769u) ^ v20;
  v22 = (*(a2 + 28) + (v21 << 6) + (v21 >> 2) + 2654435769u) ^ v21;
  v23 = (*(a2 + 15) + (v22 << 6) + (v22 >> 2) + 2654435769u) ^ v22;
  v24 = (*(a2 + 32) + (v23 << 6) + (v23 >> 2) + 2654435769u) ^ v23;
  *&v52 = a2;
  *(&v52 + 1) = v24;
  v25 = sub_1086D70((a1 + 88), &v52);
  if (*(a1 + 120) == v25)
  {
LABEL_9:
    ++*(a1 + 176);
    v26 = *(a1 + 8);
    if (v26 != a1)
    {
      v27 = *(a1 + 168) - a4;
      do
      {
        if (*(a1 + 160) <= v27)
        {
          break;
        }

        sub_3D43B0(a1, v26, &__dst);
        v26 = *(a1 + 8);
      }

      while (v26 != a1);
    }

    v28 = *(a2 + 1);
    v52 = *a2;
    v53 = v28;
    v29 = (DWORD1(v52) + 2654435769 + (v52 << 6) + (v52 >> 2)) ^ v52;
    v30 = (WORD4(v52) + 2654435769 + (v29 << 6) + (v29 >> 2)) ^ v29;
    v31 = (WORD5(v52) + 2654435769 + (v30 << 6) + (v30 >> 2)) ^ v30;
    v32 = (HIDWORD(v52) + 2654435769 + (v31 << 6) + (v31 >> 2)) ^ v31;
    v33 = (v28 + 2654435769 + (v32 << 6) + (v32 >> 2)) ^ v32;
    v34 = (SDWORD1(v28) + 2654435769 + (v33 << 6) + (v33 >> 2)) ^ v33;
    v54 = a2[8];
    v35 = (SDWORD2(v28) + 2654435769 + (v34 << 6) + (v34 >> 2)) ^ v34;
    v36 = (BYTE12(v28) + 2654435769 + (v35 << 6) + (v35 >> 2)) ^ v35;
    v37 = (HIWORD(v28) + 2654435769 + (v36 << 6) + (v36 >> 2)) ^ v36;
    v38 = *a3;
    v39 = a3[1];
    v55 = (v54 + 2654435769 + (v37 << 6) + (v37 >> 2)) ^ v37;
    v56 = v38;
    v57 = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(v39 + 1, 1uLL, memory_order_relaxed);
    }

    v58 = a4;
    operator new();
  }

  if (a5)
  {
    sub_3D43B0(a1, *(v25 + 48), &__dst);
    goto LABEL_9;
  }

  std::mutex::unlock((a1 + 24));
  if (v51)
  {
    v40 = p_dst;
    v41 = *(__dst + 1);
    v42 = *p_dst;
    v42[1] = v41;
    *v41 = v42;
    v51 = 0;
    if (v40 != &__dst)
    {
      do
      {
        v43 = v40[1];
        v44 = v40[9];
        if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v45 = v40;
          (v44->__on_zero_shared)(v44);
          std::__shared_weak_count::__release_weak(v44);
          v40 = v45;
        }

        operator delete(v40);
        v40 = v43;
      }

      while (v43 != &__dst);
    }
  }

  return 0;
}

void sub_1087914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::mutex::unlock((v22 + 24));
  sub_3BC67C(&__p);
  _Unwind_Resume(a1);
}

void sub_1087AB4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[1].__shared_owners_ = v4;
    operator delete(v4);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void *sub_1087ADC(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_40CC5C(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_10538E8(v5 + 103, a2);
  if (0xEEEEEEEEEEEEEEEFLL * ((a1[98] - a1[96]) >> 3) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_1087BE0(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1087C40@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v10;
  *(a5 + 32) = *(a1 + 32);
  v11 = sub_FC5000(a2, (a1 + 12));
  v12 = v11;
  if (*(a1 + 28) == 2 && *(v11 + 176) == 1)
  {
    v13 = *(a1 + 32);
    v50 = *a1;
    v51 = v13;
    if (sub_1064B60(a4, &v50) != -1)
    {
      *(a5 + 32) = v13;
      if (*(a1 + 28) == 2)
      {
        goto LABEL_5;
      }

LABEL_23:
      v14 = 0x7FFFFFFF;
      *(a5 + 16) = 0x7FFFFFFF;
      v17 = 0x7FFFFFFF;
LABEL_24:
      v20 = *(a1 + 28);
      *(a5 + 20) = 0x7FFFFFFF;
      if (v20 == 2)
      {
        goto LABEL_25;
      }

LABEL_37:
      v21 = 0x7FFFFFFF;
      goto LABEL_38;
    }
  }

  v13 = 0;
  *(a5 + 32) = 0;
  if (*(a1 + 28) != 2)
  {
    goto LABEL_23;
  }

LABEL_5:
  if (*(v12 + 176) != 1)
  {
    v14 = 0x7FFFFFFF;
    v23 = *(a1 + 28);
    *(a5 + 16) = 0x7FFFFFFF;
    if (v23 == 2)
    {
      goto LABEL_13;
    }

LABEL_36:
    v17 = 0x7FFFFFFF;
    *(a5 + 20) = 0x7FFFFFFF;
    goto LABEL_37;
  }

  v14 = 0x7FFFFFFF;
  if (a4[7] != a4[6] && (*(a1 + 16) != 0x7FFFFFFF || v12[42] == 0x7FFFFFFF))
  {
    v50 = *a1;
    v51 = v13;
    v15 = sub_1064B60(a4, &v50);
    if (v15 != -1 && v15 != a4[8])
    {
      v14 = *(a4[11] + 16 * v15 + 12);
    }
  }

  v16 = *(a1 + 28);
  *(a5 + 16) = v14;
  if (v16 != 2)
  {
    goto LABEL_36;
  }

LABEL_13:
  if (*(v12 + 177) != 1)
  {
    v17 = 0x7FFFFFFF;
    v49 = *(a1 + 28);
    *(a5 + 20) = 0x7FFFFFFF;
    if (v49 != 2)
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

  v17 = 0x7FFFFFFF;
  if (a4[7] == a4[6] || *(a1 + 20) == 0x7FFFFFFF && *(v12 + 178) == 1 && v12[42] != 0x7FFFFFFF)
  {
    goto LABEL_24;
  }

  v50 = *a1;
  v51 = 256;
  v18 = sub_1064B60(a4, &v50);
  if (v18 == -1 || v18 == a4[8])
  {
    goto LABEL_24;
  }

  v17 = *(a4[11] + 16 * v18 + 12);
  v19 = *(a1 + 28);
  *(a5 + 20) = v17;
  if (v19 != 2)
  {
    goto LABEL_37;
  }

LABEL_25:
  if (!v12[286] && !v12[287] && !*(v12 + 144))
  {
    goto LABEL_37;
  }

  v21 = 0x7FFFFFFF;
  if (a4[7] != a4[6] && (*(a1 + 24) != 0x7FFFFFFF || *(v12 + 178) != 1 || v12[42] == 0x7FFFFFFF))
  {
    v50 = *a1;
    v51 = 512;
    v22 = sub_1064B60(a4, &v50);
    if (v22 != -1 && v22 != a4[8])
    {
      v21 = *(a4[11] + 16 * v22 + 12);
    }
  }

LABEL_38:
  *(a5 + 24) = v21;
  v24 = *(a1 + 30);
  if (v24 && (v25 = *a1, (v26 = sub_1059F84(a3, *a1, 1)) != 0) && (v27 = &v26[-*v26], *v27 >= 5u) && *(v27 + 2) && (v28 = &v26[*(v27 + 2) + *&v26[*(v27 + 2)]], *v28 > HIDWORD(v25)))
  {
    v29 = &v28[4 * HIDWORD(v25) + 4 + *&v28[4 * HIDWORD(v25) + 4]];
    v30 = &v29[-*v29];
    if (*v30 >= 7u && (v31 = *(v30 + 3)) != 0)
    {
      v32 = v29[v31];
    }

    else
    {
      v32 = 0;
    }

    if ((v32 & (1 << v24)) != 0)
    {
      v33 = *(a1 + 30);
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  *(a5 + 30) = v33;
  v34 = v17 == 0x7FFFFFFF && v14 == 0x7FFFFFFF;
  v35 = 2 * (v21 != 0x7FFFFFFF);
  if (!v34)
  {
    v35 = 2;
  }

  *(a5 + 28) = v35;
  if (v14 == 0x7FFFFFFF)
  {
    *(a5 + 32) = 0;
  }

  v36 = *a1;
  v37 = sub_1059F84(a3, v36, 1);
  if (v37 && (v38 = &v37[-*v37], *v38 >= 5u) && *(v38 + 2) && (v39 = &v37[*(v38 + 2) + *&v37[*(v38 + 2)]], *v39 > HIDWORD(v36)) && (v40 = &v39[4 * HIDWORD(v36) + 4 + *&v39[4 * HIDWORD(v36) + 4]], v41 = &v40[-*v40], *v41 >= 5u) && (v42 = *(v41 + 2)) != 0)
  {
    v43 = *&v40[v42];
  }

  else
  {
    v43 = 0;
  }

  v44 = v43 & 0xFFFFDFFF;
  v45 = v43 | 0x2000;
  if (v14 == 0x7FFFFFFF)
  {
    v45 = v44;
  }

  v46 = v45 & 0xFFDFBFFF;
  v47 = v45 | 0x4000;
  if (v17 == 0x7FFFFFFF)
  {
    v47 = v46;
  }

  v50 = v47 & 0xFFDFFFFF | ((v21 != 0x7FFFFFFF) << 21);
  result = sub_FC537C(a2, *v12, &v50);
  *(a5 + 12) = result;
  return result;
}

void sub_10880F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2675128;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1088144(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void sub_1088224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1F1A8(va);
  std::mutex::unlock((v3 + 208));
  _Unwind_Resume(a1);
}

uint64_t sub_1088254(uint64_t a1, unsigned int *a2, const void **a3, unint64_t a4, int a5)
{
  if (*(a1 + 168) < a4)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v52);
    v7 = sub_4A5C(&v52, "LRUCache: item is too large (", 29);
    v8 = sub_71478(v7, a4);
    v9 = sub_4A5C(v8, " > ", 3);
    v10 = sub_71478(v9, *(a1 + 168));
    sub_4A5C(v10, ")", 1);
    if ((v62 & 0x10) != 0)
    {
      v46 = v61;
      if (v61 < v57)
      {
        v61 = v57;
        v46 = v57;
      }

      v47 = v56;
      v11 = v46 - v56;
      if ((v46 - v56) >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v62 & 8) == 0)
      {
        v11 = 0;
        HIBYTE(v51) = 0;
LABEL_31:
        *(&__dst + v11) = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(v51) < 0)
        {
          operator delete(__dst);
        }

        if (v60 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v53);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v47 = *(&v53 + 1);
      v11 = v55 - *(&v53 + 1);
      if ((v55 - *(&v53 + 1)) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_38:
        sub_3244();
      }
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v51) = v11;
    if (v11)
    {
      memmove(&__dst, v47, v11);
    }

    goto LABEL_31;
  }

  __dst = &__dst;
  p_dst = &__dst;
  v51 = 0;
  std::mutex::lock((a1 + 24));
  v15 = (a2[1] + (*a2 << 6) + (*a2 >> 2) + 2654435769u) ^ *a2;
  v16 = (*(a2 + 4) + (v15 << 6) + (v15 >> 2) + 2654435769u) ^ v15;
  v17 = (*(a2 + 5) + (v16 << 6) + (v16 >> 2) + 2654435769u) ^ v16;
  v18 = (a2[3] + (v17 << 6) + (v17 >> 2) + 2654435769u) ^ v17;
  v19 = (a2[4] + (v18 << 6) + (v18 >> 2) + 2654435769u) ^ v18;
  v20 = (a2[5] + (v19 << 6) + (v19 >> 2) + 2654435769u) ^ v19;
  v21 = (a2[6] + (v20 << 6) + (v20 >> 2) + 2654435769u) ^ v20;
  v22 = (*(a2 + 28) + (v21 << 6) + (v21 >> 2) + 2654435769u) ^ v21;
  v23 = (*(a2 + 15) + (v22 << 6) + (v22 >> 2) + 2654435769u) ^ v22;
  v24 = (*(a2 + 32) + (v23 << 6) + (v23 >> 2) + 2654435769u) ^ v23;
  *&v52 = a2;
  *(&v52 + 1) = v24;
  v25 = sub_1086D70((a1 + 88), &v52);
  if (*(a1 + 120) == v25)
  {
LABEL_9:
    ++*(a1 + 176);
    v26 = *(a1 + 8);
    if (v26 != a1)
    {
      v27 = *(a1 + 168) - a4;
      do
      {
        if (*(a1 + 160) <= v27)
        {
          break;
        }

        sub_3BC744(a1, v26, &__dst);
        v26 = *(a1 + 8);
      }

      while (v26 != a1);
    }

    v28 = *(a2 + 1);
    v52 = *a2;
    v53 = v28;
    v29 = (DWORD1(v52) + 2654435769 + (v52 << 6) + (v52 >> 2)) ^ v52;
    v30 = (WORD4(v52) + 2654435769 + (v29 << 6) + (v29 >> 2)) ^ v29;
    v31 = (WORD5(v52) + 2654435769 + (v30 << 6) + (v30 >> 2)) ^ v30;
    v32 = (HIDWORD(v52) + 2654435769 + (v31 << 6) + (v31 >> 2)) ^ v31;
    v33 = (v28 + 2654435769 + (v32 << 6) + (v32 >> 2)) ^ v32;
    v34 = (SDWORD1(v28) + 2654435769 + (v33 << 6) + (v33 >> 2)) ^ v33;
    v54 = a2[8];
    v35 = (SDWORD2(v28) + 2654435769 + (v34 << 6) + (v34 >> 2)) ^ v34;
    v36 = (BYTE12(v28) + 2654435769 + (v35 << 6) + (v35 >> 2)) ^ v35;
    v37 = (HIWORD(v28) + 2654435769 + (v36 << 6) + (v36 >> 2)) ^ v36;
    v38 = *a3;
    v39 = a3[1];
    v55 = (v54 + 2654435769 + (v37 << 6) + (v37 >> 2)) ^ v37;
    v56 = v38;
    v57 = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(v39 + 1, 1uLL, memory_order_relaxed);
    }

    v58 = a4;
    operator new();
  }

  if (a5)
  {
    sub_3BC744(a1, *(v25 + 48), &__dst);
    goto LABEL_9;
  }

  std::mutex::unlock((a1 + 24));
  if (v51)
  {
    v40 = p_dst;
    v41 = *(__dst + 1);
    v42 = *p_dst;
    v42[1] = v41;
    *v41 = v42;
    v51 = 0;
    if (v40 != &__dst)
    {
      do
      {
        v43 = v40[1];
        v44 = v40[9];
        if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v45 = v40;
          (v44->__on_zero_shared)(v44);
          std::__shared_weak_count::__release_weak(v44);
          v40 = v45;
        }

        operator delete(v40);
        v40 = v43;
      }

      while (v43 != &__dst);
    }
  }

  return 0;
}

void sub_1088B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::mutex::unlock((v22 + 24));
  sub_3BC67C(&__p);
  _Unwind_Resume(a1);
}

void sub_1088CE4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[1].__shared_owners_ = v4;
    operator delete(v4);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void *sub_1088D0C(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_40E98C(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_10538E8(v5 + 103, a2);
  if (0x6DB6DB6DB6DB6DB7 * ((a1[98] - a1[96]) >> 4) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_1088E18(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1088E78@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 1);
  *a4 = *a1;
  *(a4 + 16) = v8;
  *(a4 + 32) = *(a1 + 8);
  v9 = sub_FC84C8(a2, a1 + 3);
  *(a4 + 16) = 0x8000000080000000;
  *(a4 + 24) = 0x7FFFFFFF;
  v10 = *(a1 + 15);
  if (v10 && (v11 = *a1, (v12 = sub_105BEB4(a3, *a1, 1)) != 0) && (v13 = &v12[-*v12], *v13 >= 5u) && *(v13 + 2) && (v14 = &v12[*(v13 + 2) + *&v12[*(v13 + 2)]], *v14 > HIDWORD(v11)))
  {
    v15 = &v14[4 * HIDWORD(v11) + 4 + *&v14[4 * HIDWORD(v11) + 4]];
    v16 = &v15[-*v15];
    if (*v16 >= 7u && (v17 = *(v16 + 3)) != 0)
    {
      v18 = v15[v17];
    }

    else
    {
      v18 = 0;
    }

    if ((v18 & (1 << v10)) != 0)
    {
      v19 = *(a1 + 15);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  *(a4 + 30) = v19;
  *(a4 + 28) = 0;
  *(a4 + 32) = 0;
  v20 = *a1;
  v21 = sub_105BEB4(a3, v20, 1);
  if (v21 && (v22 = &v21[-*v21], *v22 >= 5u) && *(v22 + 2) && (v23 = &v21[*(v22 + 2) + *&v21[*(v22 + 2)]], *v23 > HIDWORD(v20)) && (v24 = &v23[4 * HIDWORD(v20) + 4 + *&v23[4 * HIDWORD(v20) + 4]], v25 = &v24[-*v24], *v25 >= 5u) && (v26 = *(v25 + 2)) != 0)
  {
    v27 = *&v24[v26];
  }

  else
  {
    v27 = 0;
  }

  v29 = v27;
  result = sub_FC8844(a2, *v9, &v29);
  *(a4 + 12) = result;
  return result;
}

void sub_1089068(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2675178;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10890BC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void sub_108919C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1F1A8(va);
  std::mutex::unlock((v3 + 208));
  _Unwind_Resume(a1);
}

uint64_t sub_10891CC(uint64_t a1, unsigned int *a2, const void **a3, unint64_t a4, int a5)
{
  if (*(a1 + 168) < a4)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v52);
    v7 = sub_4A5C(&v52, "LRUCache: item is too large (", 29);
    v8 = sub_71478(v7, a4);
    v9 = sub_4A5C(v8, " > ", 3);
    v10 = sub_71478(v9, *(a1 + 168));
    sub_4A5C(v10, ")", 1);
    if ((v62 & 0x10) != 0)
    {
      v46 = v61;
      if (v61 < v57)
      {
        v61 = v57;
        v46 = v57;
      }

      v47 = v56;
      v11 = v46 - v56;
      if ((v46 - v56) >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v62 & 8) == 0)
      {
        v11 = 0;
        HIBYTE(v51) = 0;
LABEL_31:
        *(&__dst + v11) = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(v51) < 0)
        {
          operator delete(__dst);
        }

        if (v60 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v53);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v47 = *(&v53 + 1);
      v11 = v55 - *(&v53 + 1);
      if ((v55 - *(&v53 + 1)) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_38:
        sub_3244();
      }
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v51) = v11;
    if (v11)
    {
      memmove(&__dst, v47, v11);
    }

    goto LABEL_31;
  }

  __dst = &__dst;
  p_dst = &__dst;
  v51 = 0;
  std::mutex::lock((a1 + 24));
  v15 = (a2[1] + (*a2 << 6) + (*a2 >> 2) + 2654435769u) ^ *a2;
  v16 = (*(a2 + 4) + (v15 << 6) + (v15 >> 2) + 2654435769u) ^ v15;
  v17 = (*(a2 + 5) + (v16 << 6) + (v16 >> 2) + 2654435769u) ^ v16;
  v18 = (a2[3] + (v17 << 6) + (v17 >> 2) + 2654435769u) ^ v17;
  v19 = (a2[4] + (v18 << 6) + (v18 >> 2) + 2654435769u) ^ v18;
  v20 = (a2[5] + (v19 << 6) + (v19 >> 2) + 2654435769u) ^ v19;
  v21 = (a2[6] + (v20 << 6) + (v20 >> 2) + 2654435769u) ^ v20;
  v22 = (*(a2 + 28) + (v21 << 6) + (v21 >> 2) + 2654435769u) ^ v21;
  v23 = (*(a2 + 15) + (v22 << 6) + (v22 >> 2) + 2654435769u) ^ v22;
  v24 = (*(a2 + 32) + (v23 << 6) + (v23 >> 2) + 2654435769u) ^ v23;
  *&v52 = a2;
  *(&v52 + 1) = v24;
  v25 = sub_1086D70((a1 + 88), &v52);
  if (*(a1 + 120) == v25)
  {
LABEL_9:
    ++*(a1 + 176);
    v26 = *(a1 + 8);
    if (v26 != a1)
    {
      v27 = *(a1 + 168) - a4;
      do
      {
        if (*(a1 + 160) <= v27)
        {
          break;
        }

        sub_3D3C10(a1, v26, &__dst);
        v26 = *(a1 + 8);
      }

      while (v26 != a1);
    }

    v28 = *(a2 + 1);
    v52 = *a2;
    v53 = v28;
    v29 = (DWORD1(v52) + 2654435769 + (v52 << 6) + (v52 >> 2)) ^ v52;
    v30 = (WORD4(v52) + 2654435769 + (v29 << 6) + (v29 >> 2)) ^ v29;
    v31 = (WORD5(v52) + 2654435769 + (v30 << 6) + (v30 >> 2)) ^ v30;
    v32 = (HIDWORD(v52) + 2654435769 + (v31 << 6) + (v31 >> 2)) ^ v31;
    v33 = (v28 + 2654435769 + (v32 << 6) + (v32 >> 2)) ^ v32;
    v34 = (SDWORD1(v28) + 2654435769 + (v33 << 6) + (v33 >> 2)) ^ v33;
    v54 = a2[8];
    v35 = (SDWORD2(v28) + 2654435769 + (v34 << 6) + (v34 >> 2)) ^ v34;
    v36 = (BYTE12(v28) + 2654435769 + (v35 << 6) + (v35 >> 2)) ^ v35;
    v37 = (HIWORD(v28) + 2654435769 + (v36 << 6) + (v36 >> 2)) ^ v36;
    v38 = *a3;
    v39 = a3[1];
    v55 = (v54 + 2654435769 + (v37 << 6) + (v37 >> 2)) ^ v37;
    v56 = v38;
    v57 = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(v39 + 1, 1uLL, memory_order_relaxed);
    }

    v58 = a4;
    operator new();
  }

  if (a5)
  {
    sub_3D3C10(a1, *(v25 + 48), &__dst);
    goto LABEL_9;
  }

  std::mutex::unlock((a1 + 24));
  if (v51)
  {
    v40 = p_dst;
    v41 = *(__dst + 1);
    v42 = *p_dst;
    v42[1] = v41;
    *v41 = v42;
    v51 = 0;
    if (v40 != &__dst)
    {
      do
      {
        v43 = v40[1];
        v44 = v40[9];
        if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v45 = v40;
          (v44->__on_zero_shared)(v44);
          std::__shared_weak_count::__release_weak(v44);
          v40 = v45;
        }

        operator delete(v40);
        v40 = v43;
      }

      while (v43 != &__dst);
    }
  }

  return 0;
}

void sub_1089AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::mutex::unlock((v22 + 24));
  sub_3BC67C(&__p);
  _Unwind_Resume(a1);
}

void sub_1089C68(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[1].__shared_owners_ = v4;
    operator delete(v4);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_1089C90()
{
  byte_27C14EF = 3;
  LODWORD(qword_27C14D8) = 5136193;
  byte_27C1507 = 3;
  LODWORD(qword_27C14F0) = 5136194;
  byte_27C151F = 3;
  LODWORD(qword_27C1508) = 5136195;
  byte_27C1537 = 15;
  strcpy(&qword_27C1520, "vehicle_mass_kg");
  byte_27C154F = 21;
  strcpy(&xmmword_27C1538, "vehicle_cargo_mass_kg");
  byte_27C1567 = 19;
  strcpy(&qword_27C1550, "vehicle_aux_power_w");
  byte_27C157F = 15;
  strcpy(&qword_27C1568, "dcdc_efficiency");
  strcpy(&qword_27C1580, "drive_train_efficiency");
  HIBYTE(word_27C1596) = 22;
  operator new();
}

void sub_1089E6C(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C1596) < 0)
  {
    sub_21E6F14();
  }

  sub_21E6F20();
  _Unwind_Resume(a1);
}

uint64_t sub_1089E8C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_4491BC(*a2, (a1 + 24), 0);
  v5 = sub_4491BC(*a2, (a1 + 32), 1);
  if (v4 == -1 && HIDWORD(v4) == 0xFFFFFFFF)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v5 == -1 && HIDWORD(v5) == 0xFFFFFFFF)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = HIDWORD(v5);
  v9 = v5;
  v10 = exp(3.14159265 - HIDWORD(v4) * 6.28318531 / 4294967300.0);
  v11 = atan((v10 - 1.0 / v10) * 0.5) * 57.2957795 * 0.0174532925;
  v12.i64[0] = v4;
  v12.i64[1] = v9;
  v13 = exp(3.14159265 - v8 * 6.28318531 / 4294967300.0);
  v14 = atan((v13 - 1.0 / v13) * 0.5) * 57.2957795 * 0.0174532925;
  v15 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v12), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v27 = vsubq_f64(v15, vdupq_laneq_s64(v15, 1)).f64[0];
  v16 = sin((v11 - v14) * 0.5);
  v17 = v16 * v16;
  v18 = cos(v11);
  v19 = v18 * cos(v14);
  v20 = sin(0.5 * v27);
  v21 = atan2(sqrt(v20 * v20 * v19 + v17), sqrt(1.0 - (v20 * v20 * v19 + v17)));
  v22 = (v21 + v21) * 6372797.56 * 100.0;
  if (v22 >= 0.0)
  {
    v23 = v22;
    if (v22 >= 4.50359963e15)
    {
      goto LABEL_16;
    }

    v24 = (v22 + v22) + 1;
  }

  else
  {
    v23 = v22;
    if (v22 <= -4.50359963e15)
    {
      goto LABEL_16;
    }

    v24 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
  }

  v23 = (v24 >> 1);
LABEL_16:
  if (v23 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v22 >= 0.0)
  {
    if (v22 < 4.50359963e15)
    {
      v26 = (v22 + v22) + 1;
      return (v26 >> 1);
    }
  }

  else if (v22 > -4.50359963e15)
  {
    v26 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
    return (v26 >> 1);
  }

  return v22;
}

uint64_t sub_108A15C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_4491BC(*a2, (a1 + 24), 0);
  v5 = *(a1 + 68);
  v4 = *(a1 + 72);
  if (v5 == -1 && v4 == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v3 == -1 && HIDWORD(v3) == 0xFFFFFFFF)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = HIDWORD(v3);
  v9 = v3;
  v10 = exp(3.14159265 - v4 * 6.28318531 / 4294967300.0);
  v11 = atan((v10 - 1.0 / v10) * 0.5) * 57.2957795 * 0.0174532925;
  v12.i64[0] = v5;
  v12.i64[1] = v9;
  v13 = exp(3.14159265 - v8 * 6.28318531 / 4294967300.0);
  v14 = atan((v13 - 1.0 / v13) * 0.5) * 57.2957795 * 0.0174532925;
  v15 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v12), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v27 = vsubq_f64(v15, vdupq_laneq_s64(v15, 1)).f64[0];
  v16 = sin((v11 - v14) * 0.5);
  v17 = v16 * v16;
  v18 = cos(v11);
  v19 = v18 * cos(v14);
  v20 = sin(0.5 * v27);
  v21 = atan2(sqrt(v20 * v20 * v19 + v17), sqrt(1.0 - (v20 * v20 * v19 + v17)));
  v22 = (v21 + v21) * 6372797.56 * 100.0;
  if (v22 >= 0.0)
  {
    v23 = v22;
    if (v22 >= 4.50359963e15)
    {
      goto LABEL_16;
    }

    v24 = (v22 + v22) + 1;
  }

  else
  {
    v23 = v22;
    if (v22 <= -4.50359963e15)
    {
      goto LABEL_16;
    }

    v24 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
  }

  v23 = (v24 >> 1);
LABEL_16:
  if (v23 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v22 >= 0.0)
  {
    if (v22 < 4.50359963e15)
    {
      v26 = (v22 + v22) + 1;
      return (v26 >> 1);
    }
  }

  else if (v22 > -4.50359963e15)
  {
    v26 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
    return (v26 >> 1);
  }

  return v22;
}

uint64_t sub_108A410(uint64_t a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v1 = *(a1 + 23);
    if (v1 != 4)
    {
      if (v1 != 7 || (*a1 == 1818584418 ? (v2 = *(a1 + 3) == 1701734764) : (v2 = 0), !v2))
      {
LABEL_28:
        exception = __cxa_allocate_exception(0x40uLL);
        std::operator+<char>();
        sub_30F54(&v11, " provided", &v10);
        if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = &v11;
        }

        else
        {
          v7 = v11.__r_.__value_.__r.__words[0];
        }

        if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v11.__r_.__value_.__l.__size_;
        }

        v9 = sub_2D390(exception, v7, size);
      }

      return 2;
    }

    if (*a1 != 1701669236)
    {
      if (*a1 == 1953722211)
      {
        return 0;
      }

      v5 = a1;
      goto LABEL_26;
    }

    return 1;
  }

  if (*(a1 + 8) == 4 && **a1 == 1953722211)
  {
    return 0;
  }

  if (*(a1 + 8) == 4 && **a1 == 1701669236)
  {
    return 1;
  }

  if (*(a1 + 8) == 7 && **a1 == 1818584418 && *(*a1 + 3) == 1701734764)
  {
    return 2;
  }

  if (*(a1 + 8) != 4)
  {
    goto LABEL_28;
  }

  v5 = *a1;
LABEL_26:
  if (*v5 != 1701736302)
  {
    goto LABEL_28;
  }

  return 3;
}

void sub_108A60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_108A664(uint64_t a1, void *a2)
{
  v16 = 17;
  strcpy(__p, "sort_by_path_cost");
  LOBYTE(v14[0]) = 0;
  v4 = sub_5FBE4(a2, __p, v14);
  if (v16 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v16 = 14;
  strcpy(__p, "add_debug_info");
  LOBYTE(v14[0]) = 0;
  v6 = sub_5FBE4(a2, __p, v14);
  if (v16 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 8) = 0u;
  *(a1 + 1) = v6;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v16 = 21;
  *(a1 + 72) = 0;
  strcpy(__p, "max_num_scanned_nodes");
  if (sub_353010(a2, __p))
  {
    HIBYTE(v14[2]) = 21;
    strcpy(v14, "max_num_scanned_nodes");
    v8 = sub_353010(a2, v14);
    if (SHIBYTE(v14[2]) < 0)
    {
      operator delete(v14[0]);
      if ((v16 & 0x80000000) == 0)
      {
LABEL_8:
        *(a1 + 80) = v8;
        v16 = 17;
        strcpy(__p, "max_num_via_nodes");
        if (sub_353010(a2, __p))
        {
          HIBYTE(v14[2]) = 17;
          strcpy(v14, "max_num_via_nodes");
          v9 = sub_353010(a2, v14);
          if (SHIBYTE(v14[2]) < 0)
          {
            operator delete(v14[0]);
            if ((v16 & 0x80000000) == 0)
            {
LABEL_11:
              *(a1 + 84) = v9;
              v16 = 17;
              strcpy(__p, "min_partial_level");
              *(a1 + 88) = sub_108B604(a2, __p);
              if (v16 < 0)
              {
                operator delete(*__p);
              }

              v16 = 18;
              strcpy(__p, "max_stretch_factor");
              v10 = sub_63D34(a2, __p);
              if (v16 < 0)
              {
                v11 = v10;
                operator delete(*__p);
                v10 = v11;
              }

              *(a1 + 96) = v10;
              v16 = 18;
              strcpy(__p, "check_cost_stretch");
              v12 = sub_5F9D0(a2, __p);
              if (v16 < 0)
              {
                v13 = v12;
                operator delete(*__p);
                v12 = v13;
              }

              *(a1 + 104) = v12;
              operator new();
            }
          }

          else if ((v16 & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v9 = -1;
          if ((v16 & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        operator delete(*__p);
        goto LABEL_11;
      }
    }

    else if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = -1;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  operator delete(*__p);
  goto LABEL_8;
}

void sub_108B3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, void **a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  v33 = v31[19];
  if (v33)
  {
    v31[20] = v33;
    operator delete(v33);
    v34 = *a15;
    if (!*a15)
    {
LABEL_3:
      v35 = *a18;
      if (!*a18)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v34 = *a15;
    if (!*a15)
    {
      goto LABEL_3;
    }
  }

  v31[17] = v34;
  operator delete(v34);
  v35 = *a18;
  if (!*a18)
  {
LABEL_4:
    v36 = *(a14 + 24);
    if (!v36)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  v31[8] = v35;
  operator delete(v35);
  v36 = *(a14 + 24);
  if (!v36)
  {
LABEL_5:
    v37 = *a14;
    if (!*a14)
    {
LABEL_12:
      _Unwind_Resume(exception_object);
    }

LABEL_11:
    v31[2] = v37;
    operator delete(v37);
    goto LABEL_12;
  }

LABEL_10:
  v31[5] = v36;
  operator delete(v36);
  v37 = *a14;
  if (!*a14)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

uint64_t sub_108B604(void *a1, uint64_t *a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return *(v2 + 10);
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_108B740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_108B778(uint64_t *a1, uint64_t a2, void *a3)
{
  *a1 = a2;
  sub_102E1A4((a1 + 1), a2, 0);
  sub_1034D18((a1 + 494), *a1, 0);
  a1[988] = -1;
  a1[987] = -1;
  v8[0] = 10;
  v8[1] = &v7;
  v8[2] = &v6;
  v8[3] = &v5;
  sub_1097790(a1 + 989, v8);
  sub_108A664((a1 + 1085), a3);
}

void sub_108B828(_Unwind_Exception *a1)
{
  sub_360988(v1 + v2);
  sub_100DCF0(v1 + 3952);
  sub_100CA00(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_108B86C(void ***a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, unsigned int a6@<W5>, void *a7@<X6>, unsigned int a8@<W7>, unint64_t *a9@<X8>)
{
  v203[0] = a8;
  v13 = 0x1FFFFFFFFFFFFFA0;
  do
  {
    v15 = &a1[v13];
    if (a1[v13 + 1087])
    {
      v16 = v15[1088];
      if (v16 >= 0x80)
      {
        v14 = &a1[v13];
        operator delete(v15[1085]);
        v15[1085] = &unk_2290750;
        v14[1090] = 0;
        v14[1086] = 0;
        v14[1088] = 0;
        v14[1087] = 0;
      }

      else if (v16)
      {
        v15[1087] = 0;
        memset(v15[1085], 128, v16 + 8);
        *(v15[1085] + v16) = -1;
        v17 = v15[1088];
        if (v17 == 7)
        {
          v18 = 6;
        }

        else
        {
          v18 = v17 - (v17 >> 3);
        }

        a1[v13 + 1090] = (v18 - v15[1087]);
      }
    }

    v13 += 6;
  }

  while (v13 * 8);
  *(a1 + 1109) = -NAN;
  *(a1 + 1107) = -NAN;
  a1[1108] = 0x7FFFFFFFFFFFFFFFLL;
  a1[987] = -1;
  a1[988] = -1;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  *(a1 + 1107) = *(sub_100E984((*a1 + 539), a7, a4, a5, a6, 0) + 1);
  if (*(a1 + 2214) != -1)
  {
    v19 = *(a1 + 2215);
    if (v19 != 0x7FFFFFFF && a1[1108] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v201 = 0x7FFFFFFF;
      v202 = 0x7FFFFFFF;
      v20 = *a5;
      if (*a5 != 0x7FFFFFFF)
      {
        v202 = *a5;
        v21 = v19 / 10;
        v22 = v19 % 10;
        if (v19 < 0)
        {
          v23 = -5;
        }

        else
        {
          v23 = 5;
        }

        v201 = v21 + v20 + (((103 * (v23 + v22)) >> 15) & 1) + ((103 * (v23 + v22)) >> 10);
      }

      sub_108C754(&v198, *a1, a7, a1 + 1089);
      v26 = *a2;
      v25 = a2[1];
      if (*a2 != v25)
      {
        v28 = v199;
        v27 = v200;
        do
        {
          if (v28 < v27)
          {
            *v28 = *v26;
            *(v28 + 8) = 0;
            v28 += 16;
          }

          else
          {
            v29 = v198;
            v30 = v28 - v198;
            v31 = (v28 - v198) >> 4;
            v32 = v31 + 1;
            if ((v31 + 1) >> 60)
            {
              sub_1794();
            }

            if ((v27 - v198) >> 3 > v32)
            {
              v32 = (v27 - v198) >> 3;
            }

            if (v27 - v198 >= 0x7FFFFFFFFFFFFFF0)
            {
              v33 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v32;
            }

            if (v33)
            {
              if (!(v33 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v34 = v31;
            v35 = 16 * v31;
            v27 = 0;
            *v35 = *v26;
            *(v35 + 8) = 0;
            v28 = 16 * v31 + 16;
            v36 = (v35 - 16 * v34);
            memcpy(v36, v29, v30);
            v198 = v36;
            v200 = 0;
            if (v29)
            {
              operator delete(v29);
            }
          }

          v199 = v28;
          v26 += 12;
        }

        while (v26 != v25);
      }

      v38 = *a3;
      v37 = a3[1];
      if (*a3 != v37)
      {
        v40 = v199;
        v39 = v200;
        do
        {
          if (v40 < v39)
          {
            *v40 = *v38;
            *(v40 + 8) = 0;
            v40 += 16;
          }

          else
          {
            v41 = v198;
            v42 = v40 - v198;
            v43 = (v40 - v198) >> 4;
            v44 = v43 + 1;
            if ((v43 + 1) >> 60)
            {
              sub_1794();
            }

            if ((v39 - v198) >> 3 > v44)
            {
              v44 = (v39 - v198) >> 3;
            }

            if (v39 - v198 >= 0x7FFFFFFFFFFFFFF0)
            {
              v45 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v45 = v44;
            }

            if (v45)
            {
              if (!(v45 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v46 = v43;
            v47 = 16 * v43;
            v39 = 0;
            *v47 = *v38;
            *(v47 + 8) = 0;
            v40 = 16 * v43 + 16;
            v48 = (v47 - 16 * v46);
            memcpy(v48, v41, v42);
            v198 = v48;
            v200 = 0;
            if (v41)
            {
              operator delete(v41);
            }
          }

          v199 = v40;
          v38 += 12;
        }

        while (v38 != v37);
      }

      v49 = *(a1 + 2214);
      v50 = a1[1086];
      v51 = *v50;
      if (v49 <= *v50)
      {
        v67 = v50[1];
        v54 = a6;
      }

      else
      {
        v52 = a1[1087];
        v53 = (v52 - v50) >> 4;
        v54 = a6;
        if (v53 >= 1)
        {
          if (v52 - v50 != 16)
          {
            do
            {
              v55 = (4 * v53) & 0xFFFFFFFFFFFFFFF0;
              _X14 = v50 + v55;
              __asm { PRFM            #0, [X14] }

              v62 = &v50[2 * (v53 >> 1)];
              _X13 = v62 + v55;
              __asm { PRFM            #0, [X13] }

              if (*v62 >= v49)
              {
                v65 = 0;
              }

              else
              {
                v65 = v53 >> 1;
              }

              v50 += 2 * v65;
              v53 -= v53 >> 1;
            }

            while (v53 > 1);
            v51 = *v50;
          }

          v50 += 2 * (v51 < v49);
        }

        if (v52 == v50)
        {
          v67 = *(v52 - 1);
        }

        else
        {
          v66 = *(v50 - 4);
          if (*v50 == v66)
          {
            v67 = v50[1];
          }

          else
          {
            v24 = *(v50 - 1);
            v67 = v24 + (v49 - v66) / (*v50 - v66) * (v50[1] - v24);
          }
        }
      }

      v197 = sub_108CF40(a1 + 2214, v67, v24);
      sub_103061C((a1 + 1), a2, a4, &v202, v54, &v197, 0x7FFFFFFF, v203, &v198, a1 + 1092, *(a1 + 2190), v133, *(a1 + 2192));
      __p[0] = sub_1031BFC(a1 + 1);
      __p[1] = v68;
      sub_32114((a1 + 987), __p);
      sub_1036CE8((a1 + 494), a3, a4, &v201, v54, &v197, 0x7FFFFFFF, v203, &v198, a1 + 1092, *(a1 + 2190), v134, *(a1 + 2192));
      __p[0] = sub_1037D18(a1 + 494);
      __p[1] = v69;
      sub_32114((a1 + 987), __p);
      sub_108D06C(a1, a2, a3, a4, v54, &v195);
      v70 = v195;
      v71 = v196;
      if (v195 != v196)
      {
        v72 = v195 + 32;
        while (1)
        {
          sub_108DB5C(a1, v72 - 4, __p);
          if (!sub_F69D6C(__p))
          {
            break;
          }

LABEL_70:
          sub_4547F0(__p);
          v91 = v72 + 64;
          v72 += 96;
          if (v91 == v71)
          {
            v70 = v195;
            goto LABEL_105;
          }
        }

        if (*(a1 + 8681) != 1)
        {
LABEL_101:
          v132 = a9[1];
          if (v132 < a9[2])
          {
            v73 = *__p;
            *(v132 + 16) = v156;
            *(v132 + 24) = 0;
            *v132 = v73;
            __p[1] = 0;
            v156 = 0;
            __p[0] = 0;
            *(v132 + 32) = 0;
            *(v132 + 40) = 0;
            *(v132 + 24) = v157;
            *(v132 + 40) = v158;
            v157 = 0uLL;
            v158 = 0;
            v74 = v159;
            v75 = v161;
            v76 = v162;
            *(v132 + 64) = v160;
            *(v132 + 80) = v75;
            *(v132 + 48) = v74;
            *(v132 + 96) = v76;
            *(v132 + 104) = 0;
            *(v132 + 112) = 0;
            *(v132 + 120) = 0;
            *(v132 + 104) = v163;
            v163 = 0uLL;
            *(v132 + 120) = v164;
            *(v132 + 128) = 0;
            *(v132 + 136) = 0;
            *(v132 + 144) = 0;
            *(v132 + 128) = v165;
            *(v132 + 144) = v166;
            *(v132 + 152) = 0;
            v164 = 0;
            v165 = 0uLL;
            v166 = 0;
            *(v132 + 160) = 0;
            *(v132 + 168) = 0;
            *(v132 + 152) = v167;
            *(v132 + 168) = v168;
            v167 = 0uLL;
            v168 = 0;
            v77 = v170;
            v78 = v171;
            *(v132 + 176) = v169;
            *(v132 + 192) = v77;
            *(v132 + 208) = v78;
            *(v132 + 216) = 0;
            *(v132 + 224) = 0;
            *(v132 + 232) = 0;
            *(v132 + 216) = v172;
            v172 = 0uLL;
            *(v132 + 232) = v173;
            *(v132 + 240) = 0;
            *(v132 + 248) = 0;
            *(v132 + 256) = 0;
            *(v132 + 240) = v174;
            *(v132 + 256) = v175;
            v173 = 0;
            v174 = 0uLL;
            v175 = 0;
            v79 = v176;
            v80 = v178;
            *(v132 + 280) = v177;
            *(v132 + 296) = v80;
            *(v132 + 264) = v79;
            v81 = v179;
            v82 = v180;
            v83 = v182;
            *(v132 + 344) = v181;
            *(v132 + 360) = v83;
            *(v132 + 312) = v81;
            *(v132 + 328) = v82;
            v84 = v183;
            v85 = v184;
            v86 = v186;
            *(v132 + 408) = v185;
            *(v132 + 424) = v86;
            *(v132 + 376) = v84;
            *(v132 + 392) = v85;
            v87 = v187;
            v88 = v188;
            v89 = v190;
            *(v132 + 472) = v189;
            *(v132 + 488) = v89;
            *(v132 + 440) = v87;
            *(v132 + 456) = v88;
            *(v132 + 504) = v191;
            *(v132 + 512) = v192;
            v191 = 0;
            v192 = 0uLL;
            *(v132 + 528) = 0;
            *(v132 + 544) = 0;
            *(v132 + 536) = 0;
            *(v132 + 528) = v193;
            *(v132 + 544) = v194;
            v193 = 0uLL;
            v194 = 0;
            v90 = v132 + 552;
          }

          else
          {
            sub_49B008(a9, __p);
          }

          a9[1] = v90;
          goto LABEL_70;
        }

        v92 = sub_4491BC(**a1, v72 - 1, 0) >> 32;
        v93 = sub_4491BC(**a1, v72, 0) >> 32;
        sub_D7B0(v144);
        *(&v145 + *(v144[0] - 24)) = 9;
        v94 = sub_4A5C(&v145, "ViaPath: {", 12);
        v95 = sub_4A5C(v94, "  cost_function: ", 20);
        v96 = *(a4 + 31);
        if (v96 >= 0)
        {
          v97 = a4 + 8;
        }

        else
        {
          v97 = *(a4 + 8);
        }

        if (v96 >= 0)
        {
          v98 = *(a4 + 31);
        }

        else
        {
          v98 = *(a4 + 16);
        }

        v99 = sub_4A5C(v95, v97, v98);
        v100 = sub_4A5C(v99, ",", 2);
        v101 = sub_4A5C(v100, "  via_node: ", 15);
        v102 = sub_421CD4(v101, *(v72 - 4));
        v103 = sub_4A5C(v102, ",", 2);
        v104 = sub_4A5C(v103, "  path_cost: ", 16);
        if (*(v72 + 3) == -1 || *(v72 + 4) == 0x7FFFFFFF || (v105 = *(v72 + 5), v105 == -1) || (v106 = *(v72 + 6), v106 == 0x7FFFFFFF))
        {
          v107 = 0x7FFFFFFF00000000;
          v108 = 0xFFFFFFFFLL;
        }

        else
        {
          v108 = (v105 + *(v72 + 3));
          v107 = (v106 + *(v72 + 4)) << 32;
        }

        v109 = sub_705F0(v104, v108 | v107);
        v110 = sub_4A5C(v109, ",", 2);
        v111 = sub_4A5C(v110, "  path_length_lb: ", 21);
        v112 = sub_70FBC(v111, a1[1108]);
        v113 = sub_4A5C(v112, ",", 2);
        v114 = sub_4A5C(v113, "  plateau: {", 14);
        v115 = sub_4A5C(v114, "    length_lb: ", 18);
        v116 = sub_1089E8C((v72 - 32), *a1);
        v117 = sub_70FBC(v115, v116);
        v118 = sub_4A5C(v117, ",", 2);
        sub_4A5C(v118, "    first_node_coord:", 24);
        v119 = exp(v92 * -6.28318531 / 4294967300.0 + 3.14159265);
        atan((v119 + -1.0 / v119) * 0.5);
        v120 = std::ostream::operator<<();
        sub_4A5C(v120, ",", 1);
        v121 = std::ostream::operator<<();
        v122 = sub_4A5C(v121, ",", 2);
        sub_4A5C(v122, "    last_node_coord: ", 24);
        v123 = exp(v93 * -6.28318531 / 4294967300.0 + 3.14159265);
        atan((v123 + -1.0 / v123) * 0.5);
        v124 = std::ostream::operator<<();
        sub_4A5C(v124, ",", 1);
        v125 = std::ostream::operator<<();
        v126 = sub_4A5C(v125, "", 1);
        v127 = sub_4A5C(v126, "  }", 3);
        sub_4A5C(v127, "}", 1);
        if ((v154 & 0x10) != 0)
        {
          v129 = v153;
          v130 = &v149;
          if (v153 < v150)
          {
            v153 = v150;
            v129 = v150;
            v130 = &v149;
          }
        }

        else
        {
          if ((v154 & 8) == 0)
          {
            v128 = 0;
            HIBYTE(v143) = 0;
LABEL_96:
            *(&__dst + v128) = 0;
            if (SHIBYTE(v156) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = __dst;
            v156 = v143;
            *v144 = v137;
            *(v144 + *(*&v137 - 24)) = v136;
            v145 = v135;
            if (v152 < 0)
            {
              operator delete(v151);
            }

            std::locale::~locale(&v147);
            std::iostream::~basic_iostream();
            std::ios::~ios();
            goto LABEL_101;
          }

          v129 = v148[2];
          v130 = v148;
        }

        v131 = *v130;
        v128 = v129 - *v130;
        if (v128 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

        if (v128 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v143) = v129 - *v130;
        if (v128)
        {
          memmove(&__dst, v131, v128);
        }

        goto LABEL_96;
      }

LABEL_105:
      if (v70)
      {
        v196 = v70;
        operator delete(v70);
      }

      if (v198)
      {
        v199 = v198;
        operator delete(v198);
      }
    }
  }
}

void sub_108C62C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 184);
  if (!v4)
  {
    sub_487EC4(v1);
    _Unwind_Resume(a1);
  }

  *(v2 - 176) = v4;
  operator delete(v4);
  sub_487EC4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_108C754(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = result;
  if (*a4 != a4[1])
  {
    v5 = a3;
    result = sub_F69D08(a3);
    if (result)
    {
      if (*(a2 + 9952) == 1)
      {
        result = sub_585D8((a2 + 8));
        if (result)
        {
          *v4 = 0;
          v4[1] = 0;
          v4[2] = 0;
          v7 = *(a2 + 4464);
          v8 = sub_2FEF94((a4[1] - *a4) >> 2);
          v9 = *(v7 + 3872);
          if (v9 != -1 || (v9 = 1, (v74 = sub_101E790(v7, 1u, 1)) == 0))
          {
LABEL_6:
            if (v9 >= v8)
            {
              v10 = v8;
            }

            else
            {
              v10 = v9;
            }

            v103 = 256;
            v86 = v10;
            if (v10 < 2)
            {
              return sub_F69D08(v5);
            }

            v11 = 0;
            v85 = v7 + 16;
            v94 = (v7 + 688);
            v91 = (v7 + 736);
            v92 = (v7 + 712);
            v90 = (v7 + 760);
            v96 = v4;
            while (1)
            {
              if (!*(&v103 + v11))
              {
                v12 = 0;
                v13 = 1;
                goto LABEL_19;
              }

              result = sub_F69D08(v5);
              v12 = result - 1;
              if (result - 1 >= 0)
              {
                break;
              }

LABEL_14:
              if (++v11 == 2)
              {
                return result;
              }
            }

            v13 = -1;
LABEL_19:
            v95 = v13;
            v14 = 1;
            while (1)
            {
              result = sub_F69D08(v5);
              if (v12 >= result)
              {
                goto LABEL_14;
              }

              v100 = *(*a4 + 4 * v14);
              if (v100)
              {
                break;
              }

LABEL_101:
              if (++v14 == v86 || v12 < 0)
              {
                goto LABEL_14;
              }
            }

            v15 = sub_F695B0(v5, v12);
            v16 = *(v15 + 32);
            v17 = (v16 & 0xFF000000000000) == 0;
            v18 = ((v16 >> 16) & 0xFFFF0000 | (v16 << 32) | (2 * v17)) + 4 * *(v15 + 80);
            LODWORD(v104) = v14;
            v19 = sub_101F854(v7, HIDWORD(v18) & 0xFFFF0000FFFFFFFFLL | (WORD1(v18) << 32), v17, &v104);
            v102 = 0;
            v20 = HIDWORD(v19);
            v101 = v14;
            v93 = v14 - 1;
            v21 = v19;
LABEL_23:
            v98 = v20;
            v99 = v21;
            while (1)
            {
              result = sub_F69D08(v5);
              if (v12 < 0)
              {
                v14 = v101;
                goto LABEL_101;
              }

              v14 = v101;
              if (v12 >= result || v102 >= v100)
              {
                goto LABEL_101;
              }

              v22 = sub_F695B0(v5, v12);
              v23 = v11;
              v24 = v5;
              v25 = *(v22 + 32);
              v97 = *(v22 + 84);
              v26 = v25 & 0xFF000000000000;
              v27 = ((v25 >> 16) & 0xFFFF0000 | (v25 << 32) | (2 * ((v25 & 0xFF000000000000) == 0))) + 4 * *(v22 + 80);
              v106 = 1;
              v107[0] = HIDWORD(v27);
              v104 = &v106;
              v105 = v107;
              v28 = *(v7 + 3856) + 1;
              *(v7 + 3856) = v28;
              if (!*v7)
              {
                goto LABEL_82;
              }

              v29 = v7 + 688;
              if (*v94 != HIDWORD(v27))
              {
                v29 = v7 + 712;
                if (*v92 != HIDWORD(v27))
                {
                  v29 = v7 + 736;
                  if (*v91 != HIDWORD(v27))
                  {
                    v29 = v7 + 760;
                    if (*v90 != HIDWORD(v27))
                    {
                      break;
                    }
                  }
                }
              }

              ++*(v7 + 3864);
              *(v29 + 8) = v28;
              v30 = *(v29 + 16);
              if (v30)
              {
                goto LABEL_33;
              }

LABEL_82:
              v21 = 0;
              LODWORD(v20) = -1;
LABEL_83:
              v11 = v23;
              v62 = v96;
              v12 += v95;
              v5 = v24;
              if (v21 != v99 || v20 != v98)
              {
                v63 = v27 | v97 & 1;
                v65 = v96[1];
                v64 = v96[2];
                if (v65 >= v64)
                {
                  v67 = *v96;
                  v68 = v65 - *v96;
                  v69 = v68 >> 4;
                  v70 = (v68 >> 4) + 1;
                  if (v70 >> 60)
                  {
                    sub_1794();
                  }

                  v71 = v64 - v67;
                  if (v71 >> 3 > v70)
                  {
                    v70 = v71 >> 3;
                  }

                  if (v71 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v72 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v72 = v70;
                  }

                  if (v72)
                  {
                    if (!(v72 >> 60))
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v73 = 16 * v69;
                  *v73 = v63;
                  *(v73 + 8) = v101;
                  v66 = 16 * v69 + 16;
                  memcpy(0, v67, v68);
                  v62 = v96;
                  *v96 = 0;
                  v96[2] = 0;
                  if (v67)
                  {
                    operator delete(v67);
                  }

                  v5 = v24;
                  v11 = v23;
                }

                else
                {
                  *v65 = v63;
                  *(v65 + 2) = v101;
                  v66 = (v65 + 16);
                }

                v62[1] = v66;
                ++v102;
                goto LABEL_23;
              }
            }

            v48 = *(v7 + 744);
            v49 = *(v7 + 720);
            v50 = *(v7 + 696);
            v88 = *(v7 + 768);
            v30 = sub_2D52A4(*v7, 7, HIDWORD(v27), 1);
            if (v50 >= v28)
            {
              v51 = v28;
            }

            else
            {
              v51 = v50;
            }

            v52 = 28;
            if (v50 >= v28)
            {
              v52 = 0;
            }

            if (v49 < v51)
            {
              v51 = v49;
              v52 = 29;
            }

            if (v48 < v51)
            {
              v52 = 30;
              v51 = v48;
            }

            v53 = v88 >= v51;
            v54 = 31;
            if (v53)
            {
              v54 = v52;
            }

            v55 = v85 + 24 * v54;
            *v55 = v107[0];
            *(v55 + 8) = *(v7 + 3856);
            *(v55 + 16) = v30;
            if (v30)
            {
LABEL_33:
              v31 = (v30 + *v30);
              v32 = (v31 - *v31);
              if (*v32 < 5u)
              {
                goto LABEL_42;
              }

              v33 = v32[2];
              if (!v33)
              {
                goto LABEL_42;
              }

              v34 = sub_101F5B8((v31 + v33 + *(v31 + v33)), WORD1(v27));
              v35 = (v31 - *v31);
              if (*v35 < 7u)
              {
                v36 = 0;
              }

              else
              {
                v36 = v35[3];
                if (v36)
                {
                  v36 = (v36 + v31 + *(v36 + v31));
                }
              }

              v37 = sub_101F704(v36, *(v34 + (v26 != 0)));
              v38 = (v37 - *v37);
              if (*v38 >= 5u && (v39 = v38[2]) != 0)
              {
                v40 = (v37 + v39 + *(v37 + v39));
              }

              else
              {
LABEL_42:
                v40 = 0;
              }

              v41 = sub_C54264(v40, v93);
              v21 = *v41;
              LODWORD(v20) = v41[1];
              if (*(v7 + 3876) != 1)
              {
                goto LABEL_83;
              }

              v106 = 1;
              v107[0] = v21;
              v104 = &v106;
              v105 = v107;
              v42 = *(v7 + 3856) + 1;
              *(v7 + 3856) = v42;
              if (!*v7)
              {
                goto LABEL_82;
              }

              v43 = v7 + 688;
              if (*v94 == v21 || (v43 = v7 + 712, *v92 == v21) || (v43 = v7 + 736, *v91 == v21) || (v43 = v7 + 760, *v90 == v21))
              {
                ++*(v7 + 3864);
                *(v43 + 8) = v42;
                v44 = *(v43 + 16);
                if (v44)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v89 = *(v7 + 744);
                v56 = *(v7 + 720);
                v57 = *(v7 + 696);
                v84 = *(v7 + 768);
                v44 = sub_2D52A4(*v7, 7, v21, 1);
                if (v57 >= v42)
                {
                  v58 = v42;
                }

                else
                {
                  v58 = v57;
                }

                v59 = 28;
                if (v57 >= v42)
                {
                  v59 = 0;
                }

                if (v56 < v58)
                {
                  v58 = v56;
                  v59 = 29;
                }

                if (v89 < v58)
                {
                  v59 = 30;
                  v58 = v89;
                }

                v53 = v84 >= v58;
                v60 = 31;
                if (v53)
                {
                  v60 = v59;
                }

                v61 = v85 + 24 * v60;
                *v61 = v107[0];
                *(v61 + 8) = *(v7 + 3856);
                *(v61 + 16) = v44;
                if (v44)
                {
LABEL_50:
                  v45 = (v44 + *v44);
                  v46 = (v45 - *v45);
                  if (*v46 >= 9u)
                  {
                    v47 = v46[4];
                    if (v47)
                    {
                      if (*(v45 + v47 + *(v45 + v47)))
                      {
                        goto LABEL_83;
                      }
                    }
                  }

                  goto LABEL_82;
                }
              }
            }

            sub_101E964(&v104);
            goto LABEL_82;
          }

          v75 = &v74[-*v74];
          v76 = *v75;
          if (v76 < 0xB)
          {
            if (v76 < 9)
            {
LABEL_115:
              v9 = 1;
              goto LABEL_6;
            }
          }

          else if (*(v75 + 5))
          {
            v77 = &v74[*(v75 + 5) + *&v74[*(v75 + 5)]];
            v78 = &v77[-*v77];
            if (*v78 >= 5u && (v79 = *(v78 + 2)) != 0)
            {
              v9 = v77[v79];
            }

            else
            {
              v9 = 0;
            }

            goto LABEL_6;
          }

          v80 = *(v75 + 4);
          if (v80)
          {
            v81 = sub_101E640(&v74[v80 + *&v74[v80]], 0);
            v82 = (v81 - *v81);
            if (*v82 >= 5u && (v83 = v82[2]) != 0)
            {
              v9 = *(v81 + v83);
            }

            else
            {
              v9 = 0;
            }

            *(v7 + 3872) = v9;
            goto LABEL_6;
          }

          goto LABEL_115;
        }
      }
    }
  }

  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  return result;
}

void sub_108CEF4(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

unint64_t sub_108CF40(_DWORD *a1, double a2, double a3)
{
  LODWORD(a3) = *a1;
  v3 = *&a3 * a2;
  if (v3 >= 0.0)
  {
    if (v3 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v4 = (v3 + v3) + 1;
  }

  else
  {
    if (v3 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v4 = (v3 + v3) - 1 + (((v3 + v3) - 1) >> 63);
  }

  v3 = (v4 >> 1);
LABEL_7:
  v5 = a1[1] * a2;
  if (v5 >= 0.0)
  {
    if (v5 < 4.50359963e15)
    {
      v6 = (v5 + v5) + 1;
      goto LABEL_12;
    }
  }

  else if (v5 > -4.50359963e15)
  {
    v6 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
LABEL_12:
    v5 = (v6 >> 1);
  }

  return v3 | (v5 << 32);
}

void sub_108D06C(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, char **a6@<X8>)
{
  sub_101B21C(a2, v104);
  sub_101B21C(a3, v103);
  v87 = a6;
  sub_1031BD0((a1 + 494), &v100);
  v9 = v101;
  v10 = v102;
  if (v101 != v102)
  {
    v21 = v100;
    *&v22.f64[0] = 0x8000000080000000;
    *&v22.f64[1] = 0x8000000080000000;
    v91 = vnegq_f64(v22);
    do
    {
      v28 = *v21 + 80 * *v9;
      if (sub_1031B9C((a1 + 1), v28))
      {
        sub_109983C((a1 + 989), v28, &v93);
        v30 = v93;
        v29 = v94;
        if (v95 == 1)
        {
          v31 = v93[1] + 104 * v94;
          *v31 = *v28;
          *(v31 + 40) = 0u;
          *(v31 + 56) = 0u;
          *(v31 + 72) = 0u;
          *(v31 + 88) = 0u;
          *(v31 + 8) = 0u;
          *(v31 + 24) = 0u;
          *(v31 + 48) = v91;
          *(v31 + 64) = v91;
          *(v31 + 80) = xmmword_2266550;
          *(v31 + 96) = 0x7FFFFFFF;
        }

        v23 = v30[1] + 104 * v29;
        *(v23 + 8) = *v28;
        v24 = v23 + 8;
        *(v24 + 52) = *(v28 + 8);
        if ((*(v28 + 72) & 0x80000000) != 0)
        {
          v25 = 0;
        }

        else
        {
          v25 = *(v28 + 32);
        }

        *(v24 + 16) = v25;
        v26 = v103[0] + 12 * (*(v28 + 72) & 0x7FFFFFFF);
        v27 = *v26;
        *(v24 + 88) = *(v26 + 2);
        *(v24 + 80) = v27;
      }

      ++v9;
    }

    while (v9 != v10);
  }

  sub_1031BD0((a1 + 1), &v97);
  v11 = v98;
  v12 = v99;
  if (v98 != v99)
  {
    v32 = v97;
    do
    {
      v72 = *v32 + 80 * *v11;
      sub_108DF28((a1 + 989), v72, &v93);
      if (v93)
      {
        v73 = v96;
        *(v96 + 52) = *(v72 + 8);
        v74 = (*(v72 + 72) & 0x80000000) != 0 ? 0 : *(v72 + 24);
        *(v73 + 16) = v74;
        *(v73 + 48) = *(v72 + 16);
        v75 = v104[0] + 12 * (*(v72 + 72) & 0x7FFFFFFF);
        v76 = *(v75 + 2);
        *(v73 + 76) = *v75;
        *(v73 + 84) = v76;
        sub_108E04C(a1, (v73 + 8));
        if (*(v73 + 52) != -1 && *(v73 + 56) != 0x7FFFFFFF)
        {
          v77 = *(v73 + 60);
          if (v77 != -1)
          {
            v78 = *(v73 + 64);
            if (v78 != 0x7FFFFFFF)
            {
              v79 = (v78 + *(v73 + 56));
              if (v79 != 0x7FFFFFFF)
              {
                v80 = (v77 + *(v73 + 52));
                if (v80 != -1)
                {
                  if (*(a1 + 2218) == -1 || (v81 = *(a1 + 2219), v81 == 0x7FFFFFFF) || v79 < v81)
                  {
                    a1[1109] = (v80 | (v79 << 32));
                  }
                }
              }
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v12);
  }

  v13 = a1 + 989;
  v14 = a1 + 1085;
  v15 = a1[989];
  v16 = a1[990];
  if (*v15 <= -2)
  {
    v17 = a1[989];
    do
    {
      v18 = (__clz(__rbit64(((*v17 >> 7) & ~*v17 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v17 = (v17 + v18);
      v16 += 13 * v18;
    }

    while (*v17 < -1);
    v19 = (a1[992] + v15);
    v20 = a1 + 989;
    if (v17 == v19)
    {
      goto LABEL_83;
    }

    goto LABEL_19;
  }

  v17 = a1[989];
  v33 = a1[992];
  v19 = (v33 + v15);
  v20 = a1 + 989;
  if (v15 != (v33 + v15))
  {
LABEL_19:
    __src = 0;
    v92 = 0;
    while (1)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v92 - __src) >> 5) >= *(a1 + 2191) && *v14 != 1)
      {
        goto LABEL_100;
      }

      v88 = v92 - __src;
      v89 = 0xAAAAAAAAAAAAAAABLL * ((v92 - __src) >> 5);
      v34 = (v16 + 1);
      if (v16[1])
      {
        if (*(v16 + 13) != -1 && *(v16 + 14) != 0x7FFFFFFF && *(v16 + 15) != -1 && *(v16 + 16) != 0x7FFFFFFF && *(v16 + 17) != -1 && *(v16 + 18) != 0x7FFFFFFF)
        {
          v84 = v13;
          sub_108DF28(v13, v16 + 3, &v93);
          v13 = v84;
          if ((!v93 || *v34 != *(v96 + 16)) && *(v16 + 13) != -1 && *(v16 + 14) != 0x7FFFFFFF)
          {
            v35 = *(v16 + 15);
            if (v35 != -1)
            {
              v36 = *(v16 + 16);
              if (v36 != 0x7FFFFFFF)
              {
                v43 = v36 + *(v16 + 14);
                if (v43 != 0x7FFFFFFF)
                {
                  v44 = v35 + *(v16 + 13);
                  if (v44 != -1)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

LABEL_35:
      v37 = *(v17 + 1);
      v17 = (v17 + 1);
      v16 += 13;
      if (v37 <= -2)
      {
        do
        {
          v38 = (__clz(__rbit64(((*v17 >> 7) & ~*v17 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v17 = (v17 + v38);
          v16 += 13 * v38;
        }

        while (*v17 < -1);
      }

      if (v17 == v19)
      {
        v39 = v20 + 6;
        if (v20 + 6 == v14)
        {
          goto LABEL_89;
        }

        while (1)
        {
          v40 = v39;
          v41 = v20[6];
          v16 = v20[7];
          v17 = v41;
          if (*v41 <= -2)
          {
            do
            {
              v42 = (__clz(__rbit64(((*v17 >> 7) & ~*v17 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
              v17 = (v17 + v42);
              v16 += 13 * v42;
            }

            while (*v17 < -1);
          }

          v19 = (v20[9] + v41);
          if (v17 != v19)
          {
            break;
          }

          v39 = v40 + 6;
          v20 = v40;
          if (v40 + 6 == v14)
          {
            goto LABEL_89;
          }
        }

        v20 = v40;
        if (!v40)
        {
          goto LABEL_89;
        }
      }

      else if (!v20)
      {
        goto LABEL_89;
      }
    }

    v45 = *(a1 + 1097);
    v46 = v45 * *(a1 + 2219);
    if (v46 >= 0.0)
    {
      HIDWORD(v47) = 1127219200;
      if (v46 < 4.50359963e15)
      {
        v48 = (v46 + v46) + 1;
        goto LABEL_55;
      }
    }

    else
    {
      HIDWORD(v47) = -1020264448;
      if (v46 > -4.50359963e15)
      {
        v48 = (v46 + v46) - 1 + (((v46 + v46) - 1) >> 63);
LABEL_55:
        v46 = (v48 >> 1);
      }
    }

    if (v43 > v46)
    {
      goto LABEL_35;
    }

    if (*(a1 + 8784) == 1)
    {
      LODWORD(v47) = *(a1 + 2214);
      if (v45 * v47 < v44)
      {
        goto LABEL_35;
      }
    }

    v49 = *a1;
    v50 = **a1;
    if (*(v50 + 7774) == 1)
    {
      v82 = HIDWORD(*v34);
      v83 = *v34;
      v51 = sub_2AF704(v50 + 3896, HIDWORD(*v34), 1);
      if (!v51 || (v52 = &v51[-*v51], *v52 < 5u) || (v53 = *(v52 + 2)) == 0 || *&v51[v53 + *&v51[v53]] <= WORD1(v83) || !sub_2B817C(v50, v82 & 0xFFFF0000FFFFFFFFLL | (WORD1(v83) << 32)))
      {
LABEL_82:
        v13 = v84;
        goto LABEL_35;
      }

      v49 = *a1;
    }

    v54 = sub_10325E8(v49, v16 + 1, 0x3B9ACA00u, a4, v16 + 12, a5);
    if (v54 != -1 && HIDWORD(v54) != 0x7FFFFFFF)
    {
      v55 = *(v16 + 18) + HIDWORD(v54);
      *(v16 + 17) += v54;
      *(v16 + 18) = v55;
      if (sub_108E1C4(a1, (v16 + 1)))
      {
        if (sub_108E2D8(a1, (v16 + 1)))
        {
          v56 = v89 + 1;
          if (v89 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          if (0x5555555555555556 * (-__src >> 5) > v56)
          {
            v56 = 0x5555555555555556 * (-__src >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-__src >> 5) >= 0x155555555555555)
          {
            v57 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v57 = v56;
          }

          if (v57)
          {
            if (v57 <= 0x2AAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v58 = (32 * ((v92 - __src) >> 5));
          v59 = *(v16 + 3);
          *v58 = *v34;
          v58[1] = v59;
          v60 = *(v16 + 5);
          v61 = *(v16 + 7);
          v62 = *(v16 + 11);
          v58[4] = *(v16 + 9);
          v58[5] = v62;
          v58[2] = v60;
          v58[3] = v61;
          v92 = v58 + 6;
          memcpy((96 * v89 + 96 * (v88 / -96)), __src, v88);
          if (__src)
          {
            operator delete(__src);
          }

          __src = 96 * v89 + 96 * (v88 / -96);
        }
      }
    }

    goto LABEL_82;
  }

LABEL_83:
  v20 = a1 + 995;
  v63 = 6;
  v64 = a1 + 989;
  do
  {
    v16 = v64[7];
    v17 = *v20;
    if (**v20 <= -2)
    {
      do
      {
        v65 = (__clz(__rbit64(((*v17 >> 7) & ~*v17 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v17 = (v17 + v65);
        v16 += 13 * v65;
      }

      while (*v17 < -1);
    }

    v19 = (v64[9] + *v20);
    if (v17 != v19)
    {
      goto LABEL_19;
    }

    v64 = &v13[v63];
    v63 += 6;
    v20 = &v13[v63];
  }

  while (v63 != 96);
  v92 = 0;
  __src = 0;
LABEL_89:
  if (*v14 == 1)
  {
    v66 = v92;
    v67 = 0xAAAAAAAAAAAAAAABLL * ((v92 - __src) >> 5);
    v68 = 126 - 2 * __clz(v67);
    v69 = v92 - __src;
    if (v92 == __src)
    {
      v70 = 0;
    }

    else
    {
      v70 = v68;
    }

    sub_1099FE8(__src, v92, &v93, v70, 1);
    v71 = *(a1 + 2191);
    if (v67 > v71)
    {
      v69 = 96 * v71;
      v66 = (96 * v71 + __src);
    }

    *v87 = 0;
    v87[1] = 0;
    v87[2] = 0;
    if (v66 != __src)
    {
      if (0xAAAAAAAAAAAAAAABLL * (v69 >> 5) <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1794();
    }

    if (__src)
    {
      operator delete(__src);
    }
  }

  else
  {
LABEL_100:
    *v87 = __src;
    v87[1] = v92;
    v87[2] = 0;
  }

  if (v103[0])
  {
    v103[1] = v103[0];
    operator delete(v103[0]);
  }

  if (v104[0])
  {
    v104[1] = v104[0];
    operator delete(v104[0]);
  }
}

void sub_108DA84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    v21 = *(v19 - 136);
    if (!v21)
    {
LABEL_3:
      v22 = *(v19 - 112);
      if (!v22)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v21 = *(v19 - 136);
    if (!v21)
    {
      goto LABEL_3;
    }
  }

  *(v19 - 128) = v21;
  operator delete(v21);
  v22 = *(v19 - 112);
  if (!v22)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  *(v19 - 104) = v22;
  operator delete(v22);
  _Unwind_Resume(exception_object);
}

uint64_t sub_108DB5C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1030FAC((a1 + 8), a2, v48);
  if (sub_F69D6C(v48))
  {
    *a3 = *v48;
    v6 = v50;
    *(a3 + 16) = *&v48[16];
    *&v48[8] = 0u;
    *(a3 + 24) = v49;
    *(a3 + 40) = v6;
    v49 = 0u;
    *v48 = 0;
    v50 = 0;
    v7 = v56;
    *(a3 + 96) = v54;
    v8 = v53;
    *(a3 + 64) = v52;
    *(a3 + 80) = v8;
    *(a3 + 48) = v51;
    *(a3 + 104) = v55;
    *(a3 + 120) = v7;
    v55 = 0u;
    *(a3 + 128) = v57;
    v9 = v60;
    *(a3 + 144) = v58;
    v57 = 0u;
    v56 = 0;
    v58 = 0;
    *(a3 + 152) = v59;
    *(a3 + 168) = v9;
    v59 = 0u;
    v10 = v61;
    v11 = v62;
    v12 = v65;
    *(a3 + 208) = v63;
    *(a3 + 176) = v10;
    *(a3 + 192) = v11;
    *(a3 + 216) = v64;
    *(a3 + 232) = v12;
    v64 = 0u;
    v60 = 0;
    v65 = 0;
    *(a3 + 240) = v66;
    v13 = v83;
    *(a3 + 256) = v67;
    v66 = 0u;
    v14 = v68;
    v15 = v70;
    *(a3 + 280) = v69;
    *(a3 + 296) = v15;
    *(a3 + 264) = v14;
    v16 = v71;
    v17 = v72;
    v18 = v74;
    *(a3 + 344) = v73;
    *(a3 + 360) = v18;
    *(a3 + 312) = v16;
    *(a3 + 328) = v17;
    v19 = v75;
    v20 = v76;
    v21 = v78;
    *(a3 + 408) = v77;
    *(a3 + 424) = v21;
    *(a3 + 376) = v19;
    *(a3 + 392) = v20;
    v22 = v79;
    v23 = v80;
    v24 = v82;
    *(a3 + 472) = v81;
    *(a3 + 488) = v24;
    *(a3 + 440) = v22;
    *(a3 + 456) = v23;
    *(a3 + 504) = v13;
    v67 = 0;
    v83 = 0;
    v25 = v85;
    *(a3 + 512) = v84;
    *(a3 + 528) = v25;
    *(a3 + 544) = v86;
    v84 = 0u;
    v85 = 0u;
    v86 = 0;
  }

  else
  {
    sub_10373A4((a1 + 3952), a2, v47);
    if (sub_F69D6C(v47))
    {
      sub_49D2CC(a3, v47);
    }

    else
    {
      sub_F6B1A0(v48, v47);
      *a3 = *v48;
      v26 = v50;
      *(a3 + 16) = *&v48[16];
      *&v48[8] = 0u;
      *(a3 + 24) = v49;
      *(a3 + 40) = v26;
      v49 = 0u;
      *v48 = 0;
      v50 = 0;
      v27 = v56;
      *(a3 + 96) = v54;
      v28 = v53;
      *(a3 + 64) = v52;
      *(a3 + 80) = v28;
      *(a3 + 48) = v51;
      *(a3 + 104) = v55;
      *(a3 + 120) = v27;
      v55 = 0u;
      *(a3 + 128) = v57;
      v29 = v60;
      *(a3 + 144) = v58;
      v57 = 0u;
      v56 = 0;
      v58 = 0;
      *(a3 + 152) = v59;
      *(a3 + 168) = v29;
      v59 = 0u;
      v30 = v61;
      v31 = v62;
      v32 = v65;
      *(a3 + 208) = v63;
      *(a3 + 176) = v30;
      *(a3 + 192) = v31;
      *(a3 + 216) = v64;
      *(a3 + 232) = v32;
      v64 = 0u;
      v60 = 0;
      v65 = 0;
      *(a3 + 240) = v66;
      v33 = v83;
      *(a3 + 256) = v67;
      v66 = 0u;
      v34 = v68;
      v35 = v70;
      *(a3 + 280) = v69;
      *(a3 + 296) = v35;
      *(a3 + 264) = v34;
      v36 = v71;
      v37 = v72;
      v38 = v74;
      *(a3 + 344) = v73;
      *(a3 + 360) = v38;
      *(a3 + 312) = v36;
      *(a3 + 328) = v37;
      v39 = v75;
      v40 = v76;
      v41 = v78;
      *(a3 + 408) = v77;
      *(a3 + 424) = v41;
      *(a3 + 376) = v39;
      *(a3 + 392) = v40;
      v42 = v79;
      v43 = v80;
      v44 = v82;
      *(a3 + 472) = v81;
      *(a3 + 488) = v44;
      *(a3 + 440) = v42;
      *(a3 + 456) = v43;
      *(a3 + 504) = v33;
      v67 = 0;
      v83 = 0;
      v45 = v85;
      *(a3 + 512) = v84;
      *(a3 + 528) = v45;
      *(a3 + 544) = v86;
      v84 = 0u;
      v85 = 0u;
      v86 = 0;
    }

    sub_4547F0(v47);
  }

  return sub_4547F0(v48);
}

void sub_108DEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_4547F0(&a9);
  sub_4547F0(&STACK[0x228]);
  _Unwind_Resume(a1);
}

uint64_t sub_108DF28@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = 0x2127599BF4325C37 * (*a2 ^ (*a2 >> 23));
  v6 = (v5 ^ ~(v5 >> 47)) + ((v5 ^ (v5 >> 47)) << 21);
  v7 = 21 * ((265 * (v6 ^ (v6 >> 24))) ^ ((265 * (v6 ^ (v6 >> 24))) >> 14));
  v8 = 2147483649u * (v7 ^ (v7 >> 28));
  v9 = (result + 48 * (((((v7 ^ (v7 >> 28)) >> 8) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 16)) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 24)) & 0xF));
  v10 = v8 >> 7;
  v11 = v9[3];
  v12 = *v9;
  v13 = 0x101010101010101 * (v8 & 0x7F);
  while (1)
  {
    v14 = v10 & v11;
    v15 = *(v12 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_5:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_8;
    }

    v3 += 8;
    v10 = v3 + v14;
  }

  while (1)
  {
    v17 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v11;
    v18 = (v9[1] + 104 * v17);
    if (*v18 == v4)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_5;
    }
  }

  if (v11 == v17)
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[4] = 0;
    return result;
  }

  *a3 = v9;
  a3[1] = (result + 768);
  a3[2] = (v12 + v17);
  a3[3] = v18;
  a3[4] = (v12 + v11);
  return result;
}

void *sub_108E04C(void *result, uint64_t *a2)
{
  *(a2 + 60) = 0;
  v3 = *a2;
  a2[3] = *a2;
  a2[4] = v3;
  v4 = 0x7FFFFFFF;
  v5 = *(a2 + 11) == -1 || *(a2 + 12) == 0x7FFFFFFF;
  if (v5 || (v6 = *(a2 + 13), v6 == -1) || (v7 = *(a2 + 14), v7 == 0x7FFFFFFF))
  {
    v8 = -1;
    v16 = a2[1];
    if (!v16)
    {
      return result;
    }
  }

  else
  {
    v8 = v6 + *(a2 + 11);
    v4 = v7 + *(a2 + 12);
    v16 = a2[1];
    if (!v16)
    {
      return result;
    }
  }

  result = sub_108E838((result + 989), &v16, v14);
  if (v14[0])
  {
    v9 = v15;
    v10 = v15[13];
    if (v10 == -1)
    {
      v12 = 0x7FFFFFFF;
      v11 = -1;
    }

    else if (v15[14] == 0x7FFFFFFF)
    {
      v11 = -1;
      v12 = 0x7FFFFFFF;
    }

    else
    {
      v11 = v15[15];
      v12 = 0x7FFFFFFF;
      if (v11 != -1)
      {
        v13 = v15[16];
        if (v13 == 0x7FFFFFFF)
        {
          v11 = -1;
        }

        else
        {
          v10 = v15[13];
          v11 += v10;
          v12 = v13 + v15[14];
        }
      }
    }

    if (v12 != 0x7FFFFFFF && v11 != -1 && v11 == v8 && v12 == v4)
    {
      *(a2 + 60) = (*(a2 + 11) - v10 + v15[17]) | ((*(a2 + 12) - v15[14] + v15[18]) << 32);
      a2[3] = *(v9 + 4);
    }
  }

  return result;
}

BOOL sub_108E1C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8832) == *(a1 + 8840))
  {
    v4 = *(a2 + 48);
    v5 = *(a2 + 64);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (v7 < 0 != v6)
    {
      v7 = 0;
    }

    if (*(a1 + 8800) == 1)
    {
      v7 = *(a1 + 8876);
    }

    v12 = v7 / 10.0;
    return v5 >= sub_FB43D4(&v12, (a1 + 8808));
  }

  else
  {
    if (*(a1 + 8800) == 1)
    {
      v3 = *(a1 + 8864);
    }

    else
    {
      v9 = a2;
      v10 = sub_108A15C(a2, *a1);
      a2 = v9;
      v3 = v10;
    }

    v11 = sub_1089E8C(a2, *a1);
    v12 = v3 / 100.0;
    return v11 >= sub_108E97C(&v12, (a1 + 8832));
  }
}

uint64_t sub_108E2D8(void ***a1, uint64_t a2)
{
  v4 = *(a1 + 2201);
  if (v4 == 2)
  {
    v7 = *(a2 + 44);
    v6 = *(a2 + 48);
    if (v7 != -1 && v6 != 0x7FFFFFFF && *(a2 + 52) != -1)
    {
      v10 = *(a2 + 56);
      if (v10 != 0x7FFFFFFF)
      {
        v11 = *(a2 + 48);
        if (v10 + v11 < *(a1 + 2215))
        {
          return 1;
        }

        v12 = *(a2 + 44);
        v68[0] = a1;
        v13 = 0x7FFFFFFF;
        if (v12 == -1 || v11 == 0x7FFFFFFF)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }
    }
  }

  else
  {
    if (v4 == 3)
    {
      return 1;
    }

    v7 = *(a2 + 44);
    v6 = *(a2 + 48);
  }

  v68[0] = a1;
  v13 = 0x7FFFFFFF;
  if (v7 == -1 || v6 == 0x7FFFFFFF)
  {
    goto LABEL_25;
  }

LABEL_23:
  v16 = *(a2 + 52);
  if (v16 == -1 || (v17 = *(a2 + 56), v17 == 0x7FFFFFFF))
  {
LABEL_25:
    v18 = -1;
    goto LABEL_26;
  }

  v18 = v16 + *(a2 + 44);
  v13 = v17 + *(a2 + 48);
LABEL_26:
  if (v4)
  {
    v19 = v13;
  }

  else
  {
    v19 = v18;
  }

  v55 = v19;
  v66 = sub_4491BC(**a1, (a2 + 24), 0);
  v67 = v20;
  v5 = 1;
  v21 = sub_4491BC(**a1, (a2 + 32), 1);
  v65 = v22;
  v23 = *(a2 + 24);
  v24 = *(a2 + 32);
  *(&v63 + 1) = v23;
  v64 = v21;
  *&v63 = v24;
  v25 = v23 != 0;
  if (v23 | v24)
  {
    v26 = 1;
    v53 = v13;
    v54 = v18;
    while (v26)
    {
      if (!v25)
      {
        return 1;
      }

      *(&v63 + 1) = sub_1032038((a1 + 1), v23);
      if (!*(&v63 + 1))
      {
        return 1;
      }

      sub_108E838((a1 + 989), &v63 + 1, v61);
      if (!v61[0] || v62[13] == -1 || v62[14] == 0x7FFFFFFF || (v27 = v62[15], v27 == -1) || (v28 = v62[16], v28 == 0x7FFFFFFF) || (v29 = v28 + v62[14], v29 == 0x7FFFFFFF) || (v30 = v27 + v62[13], v30 == -1) || v30 == v18 && v29 == v13)
      {
        v23 = *(&v63 + 1);
        v24 = v63;
        v25 = *(&v63 + 1) != 0;
        if (v63 == 0)
        {
          return 1;
        }
      }

      else
      {
        v31 = *(a1 + 2201);
        if (v31 != 2)
        {
          if (v31)
          {
            v45 = v28 + v62[14];
          }

          else
          {
            v45 = v30;
          }

          if (v31)
          {
            v46 = v62[14];
          }

          else
          {
            v46 = v62[13];
          }

          if (*(a1 + 1099) * (v45 - v46) < (v55 - v46))
          {
            return 0;
          }

          v47 = sub_10381DC((a1 + 494), *(&v63 + 1), *a2);
          if (v47)
          {
            v48 = sub_10320C0((a1 + 494), v47);
            v49 = HIDWORD(v48);
            if (!*(a1 + 2201))
            {
              LODWORD(v49) = v48;
            }

            if (*(a1 + 1099) * (v45 - (v46 + v49)) < (v55 - (v46 + v49)))
            {
              return 0;
            }
          }

LABEL_96:
          v18 = v30;
          v13 = v29;
LABEL_58:
          if (v18 == v54)
          {
            v26 = v13 >= v53;
          }

          else
          {
            v26 = v18 >= v54;
          }

          v23 = *(&v63 + 1);
          v24 = v63;
          v25 = *(&v63 + 1) != 0;
          v5 = 1;
          goto LABEL_62;
        }

        v60 = sub_10381DC((a1 + 494), *(&v63 + 1), *a2);
        if (v60)
        {
          v58 = sub_4491BC(**a1, &v63 + 1, 1);
          v59 = v50;
          v56 = sub_4491BC(**a1, &v60, 0);
          v57 = v51;
          if (sub_108EA9C(v68, &v58, &v66, &v64, &v56))
          {
            return 0;
          }

          goto LABEL_96;
        }

        if (v30 == v54)
        {
          v26 = v29 >= v53;
        }

        else
        {
          v26 = v30 >= v54;
        }

        v23 = *(&v63 + 1);
        v24 = v63;
        v25 = *(&v63 + 1) != 0;
        v5 = 1;
        v13 = v29;
        v18 = v30;
LABEL_62:
        if (!(v23 | v24))
        {
          return v5;
        }
      }
    }

    if (!v24)
    {
      return 1;
    }

    *&v63 = sub_1038154((a1 + 494), v24);
    if (!v63)
    {
      return 1;
    }

    sub_108E838((a1 + 989), &v63, v61);
    if (v61[0])
    {
      if (v62[13] != -1 && v62[14] != 0x7FFFFFFF)
      {
        v32 = v62[15];
        if (v32 != -1)
        {
          v33 = v62[16];
          if (v33 != 0x7FFFFFFF)
          {
            v34 = v33 + v62[14];
            if (v34 != 0x7FFFFFFF)
            {
              v35 = v32 + v62[13];
              if (v35 != -1 && (v35 != v54 || v34 != v53))
              {
                v36 = *(a1 + 2201);
                if (v36)
                {
                  v37 = v33 + v62[14];
                }

                else
                {
                  v37 = v35;
                }

                v38 = v62 + 16;
                if (!v36)
                {
                  v38 = v62 + 15;
                }

                if (v36 == 2)
                {
                  v60 = sub_1032140((a1 + 1), v63, *a2);
                  if (v60)
                  {
                    v58 = sub_4491BC(**a1, &v63, 0);
                    v59 = v39;
                    v56 = sub_4491BC(**a1, &v60, 1);
                    v57 = v40;
                    if (sub_108EA9C(v68, &v56, &v66, &v64, &v58))
                    {
                      return 0;
                    }
                  }
                }

                else
                {
                  v41 = *v38;
                  if (*(a1 + 1099) * (v37 - *v38) < (v55 - *v38))
                  {
                    return 0;
                  }

                  v42 = sub_1032140((a1 + 1), v63, *a2);
                  if (v42)
                  {
                    v43 = sub_10320C0((a1 + 1), v42);
                    v44 = HIDWORD(v43);
                    if (!*(a1 + 2201))
                    {
                      LODWORD(v44) = v43;
                    }

                    if (*(a1 + 1099) * (v37 - (v41 + v44)) < (v55 - (v41 + v44)))
                    {
                      return 0;
                    }
                  }
                }

                v53 = v34;
                v54 = v35;
              }
            }
          }
        }
      }
    }

    goto LABEL_58;
  }

  return v5;
}

uint64_t sub_108E838@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = 0x2127599BF4325C37 * (*a2 ^ (*a2 >> 23));
  v6 = (v5 ^ ~(v5 >> 47)) + ((v5 ^ (v5 >> 47)) << 21);
  v7 = 21 * ((265 * (v6 ^ (v6 >> 24))) ^ ((265 * (v6 ^ (v6 >> 24))) >> 14));
  v8 = 2147483649u * (v7 ^ (v7 >> 28));
  v9 = (result + 48 * (((((v7 ^ (v7 >> 28)) >> 8) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 16)) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 24)) & 0xF));
  v10 = v8 >> 7;
  v11 = v9[3];
  v12 = *v9;
  v13 = 0x101010101010101 * (v8 & 0x7F);
  while (1)
  {
    v14 = v10 & v11;
    v15 = *(v12 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_5:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = v12;
      a3[4] = 0;
      return result;
    }

    v3 += 8;
    v10 = v3 + v14;
  }

  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v11;
    v17 = v9[1];
    if (*(v17 + 104 * v18) == v4)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_5;
    }
  }

  v19 = v11 == v18;
  v20 = v12 + v18;
  v21 = v12 + v11;
  v22 = result + 768;
  if (v11 == v18)
  {
    v20 = 0;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v23 = v9;
  }

  if (v19)
  {
    v24 = a3;
  }

  else
  {
    v24 = (v17 + 104 * v18);
  }

  if (v19)
  {
    v25 = 0;
  }

  else
  {
    v25 = v21;
  }

  *a3 = v23;
  a3[1] = v22;
  a3[2] = v20;
  a3[3] = v24;
  a3[4] = v25;
  return result;
}

uint64_t sub_108E97C(double *a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a2;
  if (*a1 <= v4)
  {
    return *(v3 + 1);
  }

  v5 = a2[1];
  v6 = (v5 - v3) >> 4;
  if (v6 >= 1)
  {
    if (v5 - v3 != 16)
    {
      do
      {
        v7 = (4 * v6) & 0xFFFFFFFFFFFFFFF0;
        _X13 = v3 + v7;
        __asm { PRFM            #0, [X13] }

        v14 = &v3[2 * (v6 >> 1)];
        _X12 = v14 + v7;
        __asm { PRFM            #0, [X12] }

        if (*v14 >= v2)
        {
          v17 = 0;
        }

        else
        {
          v17 = v6 >> 1;
        }

        v3 += 2 * v17;
        v6 -= v6 >> 1;
      }

      while (v6 > 1);
      v4 = *v3;
    }

    v3 += 2 * (v4 < v2);
  }

  if (v5 == v3)
  {
    return *(v5 - 1);
  }

  v18 = *(v3 - 2);
  v19 = *v3;
  if (v18 == *v3)
  {
    return *(v3 + 1);
  }

  v21 = *(v3 + 1);
  v22 = *(v3 - 1);
  v23 = (v2 - v18) / (v19 - v18) * (v21 - v22);
  if (v23 >= 0.0)
  {
    if (v23 < 4.50359963e15)
    {
      v24 = (v23 + v23) + 1;
      goto LABEL_19;
    }
  }

  else if (v23 > -4.50359963e15)
  {
    v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_19:
    v23 = (v24 >> 1);
  }

  return v22 + v23;
}

BOOL sub_108EA9C(uint64_t *a1, int32x2_t *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v7 = *a1;
  v8 = *a2;
  v9 = vmvn_s8(vceq_s32(*a2, -1));
  if (((v9.i32[0] | v9.i32[1]) & 1) == 0)
  {
    v29 = *a3;
    v30 = a3[1];
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    v33 = *a4;
    if (*a3 == -1 && v30 == -1)
    {
      goto LABEL_77;
    }

    goto LABEL_13;
  }

  v11 = *a5;
  v10 = a5[1];
  v12 = *a5 == -1 && v10 == -1;
  v103 = *a2;
  if (v12)
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    v29 = *a3;
    v30 = a3[1];
    if (*a3 == -1 && v30 == -1)
    {
      goto LABEL_76;
    }

    goto LABEL_24;
  }

  v14 = exp(3.14159265 - v8.u32[1] * 6.28318531 / 4294967300.0);
  v15 = atan((v14 - 1.0 / v14) * 0.5) * 57.2957795 * 0.0174532925;
  v16.i64[0] = v103.u32[0];
  v16.i64[1] = v11;
  v17 = exp(3.14159265 - v10 * 6.28318531 / 4294967300.0);
  v18 = atan((v17 - 1.0 / v17) * 0.5) * 57.2957795 * 0.0174532925;
  v19 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v16), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v102 = vsubq_f64(v19, vdupq_laneq_s64(v19, 1)).f64[0];
  v20 = sin((v15 - v18) * 0.5);
  v21 = v20 * v20;
  v22 = cos(v15);
  v23 = v22 * cos(v18);
  v24 = sin(0.5 * v102);
  v25 = atan2(sqrt(v24 * v24 * v23 + v21), sqrt(1.0 - (v24 * v24 * v23 + v21)));
  v26 = (v25 + v25) * 6372797.56 * 100.0;
  if (v26 >= 0.0)
  {
    v27 = v26;
    if (v26 < 4.50359963e15)
    {
      v28 = (v26 + v26) + 1;
      goto LABEL_31;
    }
  }

  else
  {
    v27 = v26;
    if (v26 > -4.50359963e15)
    {
      v28 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
LABEL_31:
      v27 = (v28 >> 1);
    }
  }

  v69 = a3;
  if (v27 < 9.22337204e18)
  {
    if (v26 >= 0.0)
    {
      if (v26 >= 4.50359963e15)
      {
        goto LABEL_71;
      }

      v70 = (v26 + v26) + 1;
    }

    else
    {
      if (v26 <= -4.50359963e15)
      {
        goto LABEL_71;
      }

      v70 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
    }

    v26 = (v70 >> 1);
LABEL_71:
    v8.i32[1] = v103.i32[1];
    v31 = v26;
    v29 = *v69;
    v30 = v69[1];
    if (*v69 != -1 || v30 != -1)
    {
      goto LABEL_24;
    }

LABEL_76:
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    v33 = *a4;
    goto LABEL_77;
  }

  v31 = 0x7FFFFFFFFFFFFFFELL;
  v8.i32[1] = v103.i32[1];
  v29 = *v69;
  v30 = v69[1];
  if (*v69 == -1 && v30 == -1)
  {
    goto LABEL_76;
  }

LABEL_24:
  v53 = exp(3.14159265 - v8.u32[1] * 6.28318531 / 4294967300.0);
  v54 = atan((v53 - 1.0 / v53) * 0.5) * 57.2957795 * 0.0174532925;
  v55.i64[0] = v103.u32[0];
  v55.i64[1] = v29;
  v56 = exp(3.14159265 - v30 * 6.28318531 / 4294967300.0);
  v57 = atan((v56 - 1.0 / v56) * 0.5) * 57.2957795 * 0.0174532925;
  v58 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v55), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v105 = vsubq_f64(v58, vdupq_laneq_s64(v58, 1)).f64[0];
  v59 = sin((v54 - v57) * 0.5);
  v60 = v59 * v59;
  v61 = cos(v54);
  v62 = v61 * cos(v57);
  v63 = sin(0.5 * v105);
  v64 = atan2(sqrt(v63 * v63 * v62 + v60), sqrt(1.0 - (v63 * v63 * v62 + v60)));
  v65 = (v64 + v64) * 6372797.56 * 100.0;
  if (v65 >= 0.0)
  {
    v66 = v65;
    if (v65 < 4.50359963e15)
    {
      v67 = (v65 + v65) + 1;
      goto LABEL_45;
    }
  }

  else
  {
    v66 = v65;
    if (v65 > -4.50359963e15)
    {
      v67 = (v65 + v65) - 1 + (((v65 + v65) - 1) >> 63);
LABEL_45:
      v66 = (v67 >> 1);
    }
  }

  if (v66 < 9.22337204e18)
  {
    if (v65 >= 0.0)
    {
      if (v65 >= 4.50359963e15)
      {
        goto LABEL_117;
      }

      v72 = (v65 + v65) + 1;
    }

    else
    {
      if (v65 <= -4.50359963e15)
      {
        goto LABEL_117;
      }

      v72 = (v65 + v65) - 1 + (((v65 + v65) - 1) >> 63);
    }

    v65 = (v72 >> 1);
LABEL_117:
    v32 = v65;
    v33 = *a4;
    if (v29 != -1 || v30 != -1)
    {
      goto LABEL_13;
    }

LABEL_77:
    v35 = a4[1];
    v68 = 0x7FFFFFFFFFFFFFFFLL;
    if (v33 == -1 && v35 == -1)
    {
      goto LABEL_83;
    }

LABEL_81:
    v79 = *a5;
    v78 = a5[1];
    if (v79 == -1 && v78 == -1)
    {
      goto LABEL_83;
    }

    v83 = exp(3.14159265 - v35 * 6.28318531 / 4294967300.0);
    v84 = atan((v83 - 1.0 / v83) * 0.5) * 57.2957795 * 0.0174532925;
    v85.i64[0] = v33;
    v85.i64[1] = v79;
    v86 = exp(3.14159265 - v78 * 6.28318531 / 4294967300.0);
    v87 = atan((v86 - 1.0 / v86) * 0.5) * 57.2957795 * 0.0174532925;
    v88 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v85), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v106 = vsubq_f64(v88, vdupq_laneq_s64(v88, 1)).f64[0];
    v89 = sin((v84 - v87) * 0.5);
    v90 = v89 * v89;
    v91 = cos(v84);
    v92 = v91 * cos(v87);
    v93 = sin(0.5 * v106);
    v94 = atan2(sqrt(v93 * v93 * v92 + v90), sqrt(1.0 - (v93 * v93 * v92 + v90)));
    v95 = (v94 + v94) * 6372797.56 * 100.0;
    if (v95 >= 0.0)
    {
      v96 = v95;
      if (v95 >= 4.50359963e15)
      {
        goto LABEL_92;
      }

      v97 = (v95 + v95) + 1;
    }

    else
    {
      v96 = v95;
      if (v95 <= -4.50359963e15)
      {
        goto LABEL_92;
      }

      v97 = (v95 + v95) - 1 + (((v95 + v95) - 1) >> 63);
    }

    v96 = (v97 >> 1);
LABEL_92:
    if (v96 >= 9.22337204e18)
    {
      v80 = 0x7FFFFFFFFFFFFFFELL;
      v81 = *(v7 + 8792) * v31;
      if (v81 >= 0.0)
      {
        goto LABEL_102;
      }

LABEL_84:
      if (v81 > -4.50359963e15)
      {
        v82 = (v81 + v81) - 1 + (((v81 + v81) - 1) >> 63);
LABEL_104:
        v81 = (v82 >> 1);
        return v68 + v32 + v80 > v81;
      }

      return v68 + v32 + v80 > v81;
    }

    if (v95 >= 0.0)
    {
      if (v95 >= 4.50359963e15)
      {
        goto LABEL_101;
      }

      v98 = (v95 + v95) + 1;
    }

    else
    {
      if (v95 <= -4.50359963e15)
      {
        goto LABEL_101;
      }

      v98 = (v95 + v95) - 1 + (((v95 + v95) - 1) >> 63);
    }

    v95 = (v98 >> 1);
LABEL_101:
    v80 = v95;
    v81 = *(v7 + 8792) * v31;
    if (v81 >= 0.0)
    {
      goto LABEL_102;
    }

    goto LABEL_84;
  }

  v32 = 0x7FFFFFFFFFFFFFFELL;
  v33 = *a4;
  if (v29 == -1 && v30 == -1)
  {
    goto LABEL_77;
  }

LABEL_13:
  v35 = a4[1];
  if (v33 == -1 && v35 == -1)
  {
    v68 = 0x7FFFFFFFFFFFFFFFLL;
    v35 = -1;
    if (v33 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  v37 = exp(3.14159265 - v30 * 6.28318531 / 4294967300.0);
  v38 = atan((v37 - 1.0 / v37) * 0.5) * 57.2957795 * 0.0174532925;
  v39.i64[0] = v29;
  v39.i64[1] = v33;
  v40 = exp(3.14159265 - v35 * 6.28318531 / 4294967300.0);
  v41 = atan((v40 - 1.0 / v40) * 0.5) * 57.2957795 * 0.0174532925;
  v42 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v39), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v104 = vsubq_f64(v42, vdupq_laneq_s64(v42, 1)).f64[0];
  v43 = sin((v38 - v41) * 0.5);
  v44 = v43 * v43;
  v45 = cos(v38);
  v46 = v45 * cos(v41);
  v47 = sin(0.5 * v104);
  v48 = atan2(sqrt(v47 * v47 * v46 + v44), sqrt(1.0 - (v47 * v47 * v46 + v44)));
  v49 = (v48 + v48) * 6372797.56 * 100.0;
  if (v49 >= 0.0)
  {
    v50 = v49;
    if (v49 >= 4.50359963e15)
    {
      goto LABEL_39;
    }

    v51 = (v49 + v49) + 1;
  }

  else
  {
    v50 = v49;
    if (v49 <= -4.50359963e15)
    {
      goto LABEL_39;
    }

    v51 = (v49 + v49) - 1 + (((v49 + v49) - 1) >> 63);
  }

  v50 = (v51 >> 1);
LABEL_39:
  if (v50 >= 9.22337204e18)
  {
    v68 = 0x7FFFFFFFFFFFFFFELL;
    if (v33 == -1 && v35 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  if (v49 >= 0.0)
  {
    if (v49 >= 4.50359963e15)
    {
      goto LABEL_109;
    }

    v71 = (v49 + v49) + 1;
  }

  else
  {
    if (v49 <= -4.50359963e15)
    {
      goto LABEL_109;
    }

    v71 = (v49 + v49) - 1 + (((v49 + v49) - 1) >> 63);
  }

  v49 = (v71 >> 1);
LABEL_109:
  v68 = v49;
  if (v33 != -1 || v35 != -1)
  {
    goto LABEL_81;
  }

LABEL_83:
  v80 = 0x7FFFFFFFFFFFFFFFLL;
  v81 = *(v7 + 8792) * v31;
  if (v81 < 0.0)
  {
    goto LABEL_84;
  }

LABEL_102:
  if (v81 < 4.50359963e15)
  {
    v82 = (v81 + v81) + 1;
    goto LABEL_104;
  }

  return v68 + v32 + v80 > v81;
}

uint64_t sub_108F570(uint64_t a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v1 = *(a1 + 23);
    if (v1 != 4)
    {
      if (v1 != 7 || (*a1 == 1818584418 ? (v2 = *(a1 + 3) == 1701734764) : (v2 = 0), !v2))
      {
LABEL_28:
        exception = __cxa_allocate_exception(0x40uLL);
        std::operator+<char>();
        sub_30F54(&v11, " provided", &v10);
        if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = &v11;
        }

        else
        {
          v7 = v11.__r_.__value_.__r.__words[0];
        }

        if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v11.__r_.__value_.__l.__size_;
        }

        v9 = sub_2D390(exception, v7, size);
      }

      return 2;
    }

    if (*a1 != 1701669236)
    {
      if (*a1 == 1953722211)
      {
        return 0;
      }

      v5 = a1;
      goto LABEL_26;
    }

    return 1;
  }

  if (*(a1 + 8) == 4 && **a1 == 1953722211)
  {
    return 0;
  }

  if (*(a1 + 8) == 4 && **a1 == 1701669236)
  {
    return 1;
  }

  if (*(a1 + 8) == 7 && **a1 == 1818584418 && *(*a1 + 3) == 1701734764)
  {
    return 2;
  }

  if (*(a1 + 8) != 4)
  {
    goto LABEL_28;
  }

  v5 = *a1;
LABEL_26:
  if (*v5 != 1701736302)
  {
    goto LABEL_28;
  }

  return 3;
}

void sub_108F76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_108F7C4(uint64_t a1, void *a2)
{
  v16 = 17;
  strcpy(__p, "sort_by_path_cost");
  LOBYTE(v14[0]) = 0;
  v4 = sub_5FBE4(a2, __p, v14);
  if (v16 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v16 = 14;
  strcpy(__p, "add_debug_info");
  LOBYTE(v14[0]) = 0;
  v6 = sub_5FBE4(a2, __p, v14);
  if (v16 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 8) = 0u;
  *(a1 + 1) = v6;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v16 = 21;
  *(a1 + 72) = 0;
  strcpy(__p, "max_num_scanned_nodes");
  if (sub_353010(a2, __p))
  {
    HIBYTE(v14[2]) = 21;
    strcpy(v14, "max_num_scanned_nodes");
    v8 = sub_353010(a2, v14);
    if (SHIBYTE(v14[2]) < 0)
    {
      operator delete(v14[0]);
      if ((v16 & 0x80000000) == 0)
      {
LABEL_8:
        *(a1 + 80) = v8;
        v16 = 17;
        strcpy(__p, "max_num_via_nodes");
        if (sub_353010(a2, __p))
        {
          HIBYTE(v14[2]) = 17;
          strcpy(v14, "max_num_via_nodes");
          v9 = sub_353010(a2, v14);
          if (SHIBYTE(v14[2]) < 0)
          {
            operator delete(v14[0]);
            if ((v16 & 0x80000000) == 0)
            {
LABEL_11:
              *(a1 + 84) = v9;
              v16 = 17;
              strcpy(__p, "min_partial_level");
              *(a1 + 88) = sub_108B604(a2, __p);
              if (v16 < 0)
              {
                operator delete(*__p);
              }

              v16 = 18;
              strcpy(__p, "max_stretch_factor");
              v10 = sub_63D34(a2, __p);
              if (v16 < 0)
              {
                v11 = v10;
                operator delete(*__p);
                v10 = v11;
              }

              *(a1 + 96) = v10;
              v16 = 18;
              strcpy(__p, "check_cost_stretch");
              v12 = sub_5F9D0(a2, __p);
              if (v16 < 0)
              {
                v13 = v12;
                operator delete(*__p);
                v12 = v13;
              }

              *(a1 + 104) = v12;
              operator new();
            }
          }

          else if ((v16 & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v9 = -1;
          if ((v16 & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        operator delete(*__p);
        goto LABEL_11;
      }
    }

    else if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = -1;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  operator delete(*__p);
  goto LABEL_8;
}

void sub_1090534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, void **a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  v33 = v31[19];
  if (v33)
  {
    v31[20] = v33;
    operator delete(v33);
    v34 = *a15;
    if (!*a15)
    {
LABEL_3:
      v35 = *a18;
      if (!*a18)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v34 = *a15;
    if (!*a15)
    {
      goto LABEL_3;
    }
  }

  v31[17] = v34;
  operator delete(v34);
  v35 = *a18;
  if (!*a18)
  {
LABEL_4:
    v36 = *(a14 + 24);
    if (!v36)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  v31[8] = v35;
  operator delete(v35);
  v36 = *(a14 + 24);
  if (!v36)
  {
LABEL_5:
    v37 = *a14;
    if (!*a14)
    {
LABEL_12:
      _Unwind_Resume(exception_object);
    }

LABEL_11:
    v31[2] = v37;
    operator delete(v37);
    goto LABEL_12;
  }

LABEL_10:
  v31[5] = v36;
  operator delete(v36);
  v37 = *a14;
  if (!*a14)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_1090764(uint64_t *a1, uint64_t a2, void *a3)
{
  *a1 = a2;
  sub_103A224((a1 + 1), a2, 0);
  sub_1040258((a1 + 494), *a1, 0);
  a1[988] = -1;
  a1[987] = -1;
  v8[0] = 10;
  v8[1] = &v7;
  v8[2] = &v6;
  v8[3] = &v5;
  sub_109813C(a1 + 989, v8);
  sub_108F7C4((a1 + 1085), a3);
}

void sub_1090814(_Unwind_Exception *a1)
{
  sub_360988(v1 + v2);
  sub_100E0D0(v1 + 3952);
  sub_100CD54(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_1090858(int32x2_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, unsigned int a6@<W5>, void *a7@<X6>, unsigned int a8@<W7>, uint64_t *a9@<X8>)
{
  v203[0] = a8;
  v13 = 0x1FFFFFFFFFFFFFA0;
  do
  {
    v15 = &a1[v13];
    if (a1[v13 + 1087])
    {
      v16 = v15[1088];
      if (v16 >= 0x80)
      {
        v14 = &a1[v13];
        operator delete(v15[1085]);
        v15[1085] = &unk_2290750;
        v14[1090] = 0;
        v14[1086] = 0;
        v14[1088] = 0;
        v14[1087] = 0;
      }

      else if (v16)
      {
        v15[1087] = 0;
        memset(v15[1085], 128, v16 + 8);
        v15[1085]->i8[v16] = -1;
        v17 = v15[1088];
        if (v17 == 7)
        {
          v18 = 6;
        }

        else
        {
          v18 = v17 - (v17 >> 3);
        }

        a1[v13 + 1090] = (v18 - v15[1087]);
      }
    }

    v13 += 6;
  }

  while (v13 * 8);
  *(a1 + 1109) = -NAN;
  *(a1 + 1107) = -NAN;
  a1[1108] = 0x7FFFFFFFFFFFFFFFLL;
  a1[987] = -1;
  a1[988] = -1;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  *(a1 + 1107) = *(sub_10104F4(*a1 + 539, a7, a4, a5, a6, 0) + 1);
  if (*(a1 + 2214) != -1)
  {
    v19 = *(a1 + 2215);
    if (v19 != 0x7FFFFFFF && a1[1108] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v201 = 0x7FFFFFFF;
      v202 = 0x7FFFFFFF;
      v20 = *a5;
      if (*a5 != 0x7FFFFFFF)
      {
        v202 = *a5;
        v21 = v19 / 10;
        v22 = v19 % 10;
        if (v19 < 0)
        {
          v23 = -5;
        }

        else
        {
          v23 = 5;
        }

        v201 = v21 + v20 + (((103 * (v23 + v22)) >> 15) & 1) + ((103 * (v23 + v22)) >> 10);
      }

      sub_1091740(&v198, *a1, a7, a1 + 1089);
      v26 = *a2;
      v25 = a2[1];
      if (*a2 != v25)
      {
        v28 = v199;
        v27 = v200;
        do
        {
          if (v28 < v27)
          {
            *v28 = *v26;
            *(v28 + 8) = 0;
            v28 += 16;
          }

          else
          {
            v29 = v198;
            v30 = v28 - v198;
            v31 = (v28 - v198) >> 4;
            v32 = v31 + 1;
            if ((v31 + 1) >> 60)
            {
              sub_1794();
            }

            if ((v27 - v198) >> 3 > v32)
            {
              v32 = (v27 - v198) >> 3;
            }

            if (v27 - v198 >= 0x7FFFFFFFFFFFFFF0)
            {
              v33 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v32;
            }

            if (v33)
            {
              if (!(v33 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v34 = v31;
            v35 = 16 * v31;
            v27 = 0;
            *v35 = *v26;
            *(v35 + 8) = 0;
            v28 = 16 * v31 + 16;
            v36 = (v35 - 16 * v34);
            memcpy(v36, v29, v30);
            v198 = v36;
            v200 = 0;
            if (v29)
            {
              operator delete(v29);
            }
          }

          v199 = v28;
          v26 += 12;
        }

        while (v26 != v25);
      }

      v38 = *a3;
      v37 = a3[1];
      if (*a3 != v37)
      {
        v40 = v199;
        v39 = v200;
        do
        {
          if (v40 < v39)
          {
            *v40 = *v38;
            *(v40 + 8) = 0;
            v40 += 16;
          }

          else
          {
            v41 = v198;
            v42 = v40 - v198;
            v43 = (v40 - v198) >> 4;
            v44 = v43 + 1;
            if ((v43 + 1) >> 60)
            {
              sub_1794();
            }

            if ((v39 - v198) >> 3 > v44)
            {
              v44 = (v39 - v198) >> 3;
            }

            if (v39 - v198 >= 0x7FFFFFFFFFFFFFF0)
            {
              v45 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v45 = v44;
            }

            if (v45)
            {
              if (!(v45 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v46 = v43;
            v47 = 16 * v43;
            v39 = 0;
            *v47 = *v38;
            *(v47 + 8) = 0;
            v40 = 16 * v43 + 16;
            v48 = (v47 - 16 * v46);
            memcpy(v48, v41, v42);
            v198 = v48;
            v200 = 0;
            if (v41)
            {
              operator delete(v41);
            }
          }

          v199 = v40;
          v38 += 12;
        }

        while (v38 != v37);
      }

      v49 = *(a1 + 2214);
      v50 = a1[1086];
      v51 = *v50;
      if (v49 <= *v50)
      {
        v67 = v50[1];
        v54 = a6;
      }

      else
      {
        v52 = a1[1087];
        v53 = (v52 - v50) >> 4;
        v54 = a6;
        if (v53 >= 1)
        {
          if (v52 - v50 != 16)
          {
            do
            {
              v55 = (4 * v53) & 0xFFFFFFFFFFFFFFF0;
              _X14 = v50 + v55;
              __asm { PRFM            #0, [X14] }

              v62 = &v50[2 * (v53 >> 1)];
              _X13 = v62 + v55;
              __asm { PRFM            #0, [X13] }

              if (*v62 >= v49)
              {
                v65 = 0;
              }

              else
              {
                v65 = v53 >> 1;
              }

              v50 += 2 * v65;
              v53 -= v53 >> 1;
            }

            while (v53 > 1);
            v51 = *v50;
          }

          v50 += 2 * (v51 < v49);
        }

        if (v52 == v50)
        {
          v67 = *&v52[-1];
        }

        else
        {
          v66 = *(v50 - 4);
          if (*v50 == v66)
          {
            v67 = v50[1];
          }

          else
          {
            v24 = *(v50 - 1);
            v67 = v24 + (v49 - v66) / (*v50 - v66) * (v50[1] - v24);
          }
        }
      }

      v197 = sub_108CF40(a1 + 2214, v67, v24);
      sub_103C888((a1 + 1), a2, a4, &v202, v54, &v197, 0x7FFFFFFF, v203, &v198, a1 + 1092, *(a1 + 2190), v133, *(a1 + 2192));
      __p[0] = sub_103DD3C(a1 + 1);
      __p[1] = v68;
      sub_32114((a1 + 987), __p);
      sub_1042418((a1 + 494), a3, a4, &v201, v54, &v197, 0x7FFFFFFF, v203, &v198, a1 + 1092, *(a1 + 2190), v134, *(a1 + 2192));
      __p[0] = sub_1043448(a1 + 494);
      __p[1] = v69;
      sub_32114((a1 + 987), __p);
      sub_1091F2C(a1, a2, a3, a4, v54, &v195);
      v70 = v195;
      v71 = v196;
      if (v195 != v196)
      {
        v72 = v195 + 32;
        while (1)
        {
          sub_1092A1C(a1, v72 - 4, __p);
          if (!sub_F69D6C(__p))
          {
            break;
          }

LABEL_70:
          sub_4547F0(__p);
          v91 = v72 + 64;
          v72 += 96;
          if (v91 == v71)
          {
            v70 = v195;
            goto LABEL_105;
          }
        }

        if (*(a1 + 8681) != 1)
        {
LABEL_101:
          v132 = a9[1];
          if (v132 < a9[2])
          {
            v73 = *__p;
            *(v132 + 16) = v156;
            *(v132 + 24) = 0;
            *v132 = v73;
            __p[1] = 0;
            v156 = 0;
            __p[0] = 0;
            *(v132 + 32) = 0;
            *(v132 + 40) = 0;
            *(v132 + 24) = v157;
            *(v132 + 40) = v158;
            v157 = 0uLL;
            v158 = 0;
            v74 = v159;
            v75 = v161;
            v76 = v162;
            *(v132 + 64) = v160;
            *(v132 + 80) = v75;
            *(v132 + 48) = v74;
            *(v132 + 96) = v76;
            *(v132 + 104) = 0;
            *(v132 + 112) = 0;
            *(v132 + 120) = 0;
            *(v132 + 104) = v163;
            v163 = 0uLL;
            *(v132 + 120) = v164;
            *(v132 + 128) = 0;
            *(v132 + 136) = 0;
            *(v132 + 144) = 0;
            *(v132 + 128) = v165;
            *(v132 + 144) = v166;
            *(v132 + 152) = 0;
            v164 = 0;
            v165 = 0uLL;
            v166 = 0;
            *(v132 + 160) = 0;
            *(v132 + 168) = 0;
            *(v132 + 152) = v167;
            *(v132 + 168) = v168;
            v167 = 0uLL;
            v168 = 0;
            v77 = v170;
            v78 = v171;
            *(v132 + 176) = v169;
            *(v132 + 192) = v77;
            *(v132 + 208) = v78;
            *(v132 + 216) = 0;
            *(v132 + 224) = 0;
            *(v132 + 232) = 0;
            *(v132 + 216) = v172;
            v172 = 0uLL;
            *(v132 + 232) = v173;
            *(v132 + 240) = 0;
            *(v132 + 248) = 0;
            *(v132 + 256) = 0;
            *(v132 + 240) = v174;
            *(v132 + 256) = v175;
            v173 = 0;
            v174 = 0uLL;
            v175 = 0;
            v79 = v176;
            v80 = v178;
            *(v132 + 280) = v177;
            *(v132 + 296) = v80;
            *(v132 + 264) = v79;
            v81 = v179;
            v82 = v180;
            v83 = v182;
            *(v132 + 344) = v181;
            *(v132 + 360) = v83;
            *(v132 + 312) = v81;
            *(v132 + 328) = v82;
            v84 = v183;
            v85 = v184;
            v86 = v186;
            *(v132 + 408) = v185;
            *(v132 + 424) = v86;
            *(v132 + 376) = v84;
            *(v132 + 392) = v85;
            v87 = v187;
            v88 = v188;
            v89 = v190;
            *(v132 + 472) = v189;
            *(v132 + 488) = v89;
            *(v132 + 440) = v87;
            *(v132 + 456) = v88;
            *(v132 + 504) = v191;
            *(v132 + 512) = v192;
            v191 = 0;
            v192 = 0uLL;
            *(v132 + 528) = 0;
            *(v132 + 544) = 0;
            *(v132 + 536) = 0;
            *(v132 + 528) = v193;
            *(v132 + 544) = v194;
            v193 = 0uLL;
            v194 = 0;
            v90 = v132 + 552;
          }

          else
          {
            sub_49DFE8(a9, __p);
          }

          a9[1] = v90;
          goto LABEL_70;
        }

        v92 = sub_4491BC(**a1, v72 - 1, 0) >> 32;
        v93 = sub_4491BC(**a1, v72, 0) >> 32;
        sub_D7B0(v144);
        *(&v145 + *(v144[0] - 24)) = 9;
        v94 = sub_4A5C(&v145, "ViaPath: {", 12);
        v95 = sub_4A5C(v94, "  cost_function: ", 20);
        v96 = *(a4 + 31);
        if (v96 >= 0)
        {
          v97 = a4 + 8;
        }

        else
        {
          v97 = *(a4 + 8);
        }

        if (v96 >= 0)
        {
          v98 = *(a4 + 31);
        }

        else
        {
          v98 = *(a4 + 16);
        }

        v99 = sub_4A5C(v95, v97, v98);
        v100 = sub_4A5C(v99, ",", 2);
        v101 = sub_4A5C(v100, "  via_node: ", 15);
        v102 = sub_421CD4(v101, *(v72 - 4));
        v103 = sub_4A5C(v102, ",", 2);
        v104 = sub_4A5C(v103, "  path_cost: ", 16);
        if (*(v72 + 3) == -1 || *(v72 + 4) == 0x7FFFFFFF || (v105 = *(v72 + 5), v105 == -1) || (v106 = *(v72 + 6), v106 == 0x7FFFFFFF))
        {
          v107 = 0x7FFFFFFF00000000;
          v108 = 0xFFFFFFFFLL;
        }

        else
        {
          v108 = (v105 + *(v72 + 3));
          v107 = (v106 + *(v72 + 4)) << 32;
        }

        v109 = sub_705F0(v104, v108 | v107);
        v110 = sub_4A5C(v109, ",", 2);
        v111 = sub_4A5C(v110, "  path_length_lb: ", 21);
        v112 = sub_70FBC(v111, a1[1108]);
        v113 = sub_4A5C(v112, ",", 2);
        v114 = sub_4A5C(v113, "  plateau: {", 14);
        v115 = sub_4A5C(v114, "    length_lb: ", 18);
        v116 = sub_1089E8C((v72 - 32), *a1);
        v117 = sub_70FBC(v115, v116);
        v118 = sub_4A5C(v117, ",", 2);
        sub_4A5C(v118, "    first_node_coord:", 24);
        v119 = exp(v92 * -6.28318531 / 4294967300.0 + 3.14159265);
        atan((v119 + -1.0 / v119) * 0.5);
        v120 = std::ostream::operator<<();
        sub_4A5C(v120, ",", 1);
        v121 = std::ostream::operator<<();
        v122 = sub_4A5C(v121, ",", 2);
        sub_4A5C(v122, "    last_node_coord: ", 24);
        v123 = exp(v93 * -6.28318531 / 4294967300.0 + 3.14159265);
        atan((v123 + -1.0 / v123) * 0.5);
        v124 = std::ostream::operator<<();
        sub_4A5C(v124, ",", 1);
        v125 = std::ostream::operator<<();
        v126 = sub_4A5C(v125, "", 1);
        v127 = sub_4A5C(v126, "  }", 3);
        sub_4A5C(v127, "}", 1);
        if ((v154 & 0x10) != 0)
        {
          v129 = v153;
          v130 = &v149;
          if (v153 < v150)
          {
            v153 = v150;
            v129 = v150;
            v130 = &v149;
          }
        }

        else
        {
          if ((v154 & 8) == 0)
          {
            v128 = 0;
            HIBYTE(v143) = 0;
LABEL_96:
            *(&__dst + v128) = 0;
            if (SHIBYTE(v156) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = __dst;
            v156 = v143;
            *v144 = v137;
            *(v144 + *(*&v137 - 24)) = v136;
            v145 = v135;
            if (v152 < 0)
            {
              operator delete(v151);
            }

            std::locale::~locale(&v147);
            std::iostream::~basic_iostream();
            std::ios::~ios();
            goto LABEL_101;
          }

          v129 = v148[2];
          v130 = v148;
        }

        v131 = *v130;
        v128 = v129 - *v130;
        if (v128 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

        if (v128 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v143) = v129 - *v130;
        if (v128)
        {
          memmove(&__dst, v131, v128);
        }

        goto LABEL_96;
      }

LABEL_105:
      if (v70)
      {
        v196 = v70;
        operator delete(v70);
      }

      if (v198)
      {
        v199 = v198;
        operator delete(v198);
      }
    }
  }
}

void sub_1091618(_Unwind_Exception *a1)
{
  v4 = *(v2 - 184);
  if (!v4)
  {
    sub_487EC4(v1);
    _Unwind_Resume(a1);
  }

  *(v2 - 176) = v4;
  operator delete(v4);
  sub_487EC4(v1);
  _Unwind_Resume(a1);
}

int64_t sub_1091740(int64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = result;
  if (*a4 != a4[1])
  {
    v5 = a3;
    result = sub_F6D008(a3);
    if (result)
    {
      if (*(a2 + 31328) == 1)
      {
        result = sub_585D8((a2 + 8));
        if (result)
        {
          *v4 = 0;
          v4[1] = 0;
          v4[2] = 0;
          v7 = *(a2 + 15152);
          v8 = sub_2FEF94((a4[1] - *a4) >> 2);
          v9 = *(v7 + 3872);
          if (v9 != -1 || (v9 = 1, (v74 = sub_101E790(v7, 1u, 1)) == 0))
          {
LABEL_6:
            if (v9 >= v8)
            {
              v10 = v8;
            }

            else
            {
              v10 = v9;
            }

            v103 = 256;
            v86 = v10;
            if (v10 < 2)
            {
              return sub_F6D008(v5);
            }

            v11 = 0;
            v85 = v7 + 16;
            v94 = (v7 + 688);
            v91 = (v7 + 736);
            v92 = (v7 + 712);
            v90 = (v7 + 760);
            v96 = v4;
            while (1)
            {
              if (!*(&v103 + v11))
              {
                v12 = 0;
                v13 = 1;
                goto LABEL_19;
              }

              result = sub_F6D008(v5);
              v12 = result - 1;
              if (result - 1 >= 0)
              {
                break;
              }

LABEL_14:
              if (++v11 == 2)
              {
                return result;
              }
            }

            v13 = -1;
LABEL_19:
            v95 = v13;
            v14 = 1;
            while (1)
            {
              result = sub_F6D008(v5);
              if (v12 >= result)
              {
                goto LABEL_14;
              }

              v100 = *(*a4 + 4 * v14);
              if (v100)
              {
                break;
              }

LABEL_101:
              if (++v14 == v86 || v12 < 0)
              {
                goto LABEL_14;
              }
            }

            v15 = sub_F6C648(v5, v12);
            v16 = *(v15 + 32);
            v17 = (v16 & 0xFF000000000000) == 0;
            v18 = ((v16 >> 16) & 0xFFFF0000 | (v16 << 32) | (2 * v17)) + 4 * *(v15 + 80);
            LODWORD(v104) = v14;
            v19 = sub_101F854(v7, HIDWORD(v18) & 0xFFFF0000FFFFFFFFLL | (WORD1(v18) << 32), v17, &v104);
            v102 = 0;
            v20 = HIDWORD(v19);
            v101 = v14;
            v93 = v14 - 1;
            v21 = v19;
LABEL_23:
            v98 = v20;
            v99 = v21;
            while (1)
            {
              result = sub_F6D008(v5);
              if (v12 < 0)
              {
                v14 = v101;
                goto LABEL_101;
              }

              v14 = v101;
              if (v12 >= result || v102 >= v100)
              {
                goto LABEL_101;
              }

              v22 = sub_F6C648(v5, v12);
              v23 = v11;
              v24 = v5;
              v25 = *(v22 + 32);
              v97 = *(v22 + 88);
              v26 = v25 & 0xFF000000000000;
              v27 = ((v25 >> 16) & 0xFFFF0000 | (v25 << 32) | (2 * ((v25 & 0xFF000000000000) == 0))) + 4 * *(v22 + 80);
              v106 = 1;
              v107[0] = HIDWORD(v27);
              v104 = &v106;
              v105 = v107;
              v28 = *(v7 + 3856) + 1;
              *(v7 + 3856) = v28;
              if (!*v7)
              {
                goto LABEL_82;
              }

              v29 = v7 + 688;
              if (*v94 != HIDWORD(v27))
              {
                v29 = v7 + 712;
                if (*v92 != HIDWORD(v27))
                {
                  v29 = v7 + 736;
                  if (*v91 != HIDWORD(v27))
                  {
                    v29 = v7 + 760;
                    if (*v90 != HIDWORD(v27))
                    {
                      break;
                    }
                  }
                }
              }

              ++*(v7 + 3864);
              *(v29 + 8) = v28;
              v30 = *(v29 + 16);
              if (v30)
              {
                goto LABEL_33;
              }

LABEL_82:
              v21 = 0;
              LODWORD(v20) = -1;
LABEL_83:
              v11 = v23;
              v62 = v96;
              v12 += v95;
              v5 = v24;
              if (v21 != v99 || v20 != v98)
              {
                v63 = v27 | v97 & 1;
                v65 = v96[1];
                v64 = v96[2];
                if (v65 >= v64)
                {
                  v67 = *v96;
                  v68 = v65 - *v96;
                  v69 = v68 >> 4;
                  v70 = (v68 >> 4) + 1;
                  if (v70 >> 60)
                  {
                    sub_1794();
                  }

                  v71 = v64 - v67;
                  if (v71 >> 3 > v70)
                  {
                    v70 = v71 >> 3;
                  }

                  if (v71 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v72 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v72 = v70;
                  }

                  if (v72)
                  {
                    if (!(v72 >> 60))
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v73 = 16 * v69;
                  *v73 = v63;
                  *(v73 + 8) = v101;
                  v66 = 16 * v69 + 16;
                  memcpy(0, v67, v68);
                  v62 = v96;
                  *v96 = 0;
                  v96[2] = 0;
                  if (v67)
                  {
                    operator delete(v67);
                  }

                  v5 = v24;
                  v11 = v23;
                }

                else
                {
                  *v65 = v63;
                  *(v65 + 2) = v101;
                  v66 = (v65 + 16);
                }

                v62[1] = v66;
                ++v102;
                goto LABEL_23;
              }
            }

            v48 = *(v7 + 744);
            v49 = *(v7 + 720);
            v50 = *(v7 + 696);
            v88 = *(v7 + 768);
            v30 = sub_2D52A4(*v7, 7, HIDWORD(v27), 1);
            if (v50 >= v28)
            {
              v51 = v28;
            }

            else
            {
              v51 = v50;
            }

            v52 = 28;
            if (v50 >= v28)
            {
              v52 = 0;
            }

            if (v49 < v51)
            {
              v51 = v49;
              v52 = 29;
            }

            if (v48 < v51)
            {
              v52 = 30;
              v51 = v48;
            }

            v53 = v88 >= v51;
            v54 = 31;
            if (v53)
            {
              v54 = v52;
            }

            v55 = v85 + 24 * v54;
            *v55 = v107[0];
            *(v55 + 8) = *(v7 + 3856);
            *(v55 + 16) = v30;
            if (v30)
            {
LABEL_33:
              v31 = (v30 + *v30);
              v32 = (v31 - *v31);
              if (*v32 < 5u)
              {
                goto LABEL_42;
              }

              v33 = v32[2];
              if (!v33)
              {
                goto LABEL_42;
              }

              v34 = sub_101F5B8((v31 + v33 + *(v31 + v33)), WORD1(v27));
              v35 = (v31 - *v31);
              if (*v35 < 7u)
              {
                v36 = 0;
              }

              else
              {
                v36 = v35[3];
                if (v36)
                {
                  v36 = (v36 + v31 + *(v36 + v31));
                }
              }

              v37 = sub_101F704(v36, *(v34 + (v26 != 0)));
              v38 = (v37 - *v37);
              if (*v38 >= 5u && (v39 = v38[2]) != 0)
              {
                v40 = (v37 + v39 + *(v37 + v39));
              }

              else
              {
LABEL_42:
                v40 = 0;
              }

              v41 = sub_C54264(v40, v93);
              v21 = *v41;
              LODWORD(v20) = v41[1];
              if (*(v7 + 3876) != 1)
              {
                goto LABEL_83;
              }

              v106 = 1;
              v107[0] = v21;
              v104 = &v106;
              v105 = v107;
              v42 = *(v7 + 3856) + 1;
              *(v7 + 3856) = v42;
              if (!*v7)
              {
                goto LABEL_82;
              }

              v43 = v7 + 688;
              if (*v94 == v21 || (v43 = v7 + 712, *v92 == v21) || (v43 = v7 + 736, *v91 == v21) || (v43 = v7 + 760, *v90 == v21))
              {
                ++*(v7 + 3864);
                *(v43 + 8) = v42;
                v44 = *(v43 + 16);
                if (v44)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v89 = *(v7 + 744);
                v56 = *(v7 + 720);
                v57 = *(v7 + 696);
                v84 = *(v7 + 768);
                v44 = sub_2D52A4(*v7, 7, v21, 1);
                if (v57 >= v42)
                {
                  v58 = v42;
                }

                else
                {
                  v58 = v57;
                }

                v59 = 28;
                if (v57 >= v42)
                {
                  v59 = 0;
                }

                if (v56 < v58)
                {
                  v58 = v56;
                  v59 = 29;
                }

                if (v89 < v58)
                {
                  v59 = 30;
                  v58 = v89;
                }

                v53 = v84 >= v58;
                v60 = 31;
                if (v53)
                {
                  v60 = v59;
                }

                v61 = v85 + 24 * v60;
                *v61 = v107[0];
                *(v61 + 8) = *(v7 + 3856);
                *(v61 + 16) = v44;
                if (v44)
                {
LABEL_50:
                  v45 = (v44 + *v44);
                  v46 = (v45 - *v45);
                  if (*v46 >= 9u)
                  {
                    v47 = v46[4];
                    if (v47)
                    {
                      if (*(v45 + v47 + *(v45 + v47)))
                      {
                        goto LABEL_83;
                      }
                    }
                  }

                  goto LABEL_82;
                }
              }
            }

            sub_101E964(&v104);
            goto LABEL_82;
          }

          v75 = &v74[-*v74];
          v76 = *v75;
          if (v76 < 0xB)
          {
            if (v76 < 9)
            {
LABEL_115:
              v9 = 1;
              goto LABEL_6;
            }
          }

          else if (*(v75 + 5))
          {
            v77 = &v74[*(v75 + 5) + *&v74[*(v75 + 5)]];
            v78 = &v77[-*v77];
            if (*v78 >= 5u && (v79 = *(v78 + 2)) != 0)
            {
              v9 = v77[v79];
            }

            else
            {
              v9 = 0;
            }

            goto LABEL_6;
          }

          v80 = *(v75 + 4);
          if (v80)
          {
            v81 = sub_101E640(&v74[v80 + *&v74[v80]], 0);
            v82 = (v81 - *v81);
            if (*v82 >= 5u && (v83 = v82[2]) != 0)
            {
              v9 = *(v81 + v83);
            }

            else
            {
              v9 = 0;
            }

            *(v7 + 3872) = v9;
            goto LABEL_6;
          }

          goto LABEL_115;
        }
      }
    }
  }

  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  return result;
}

void sub_1091EE0(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void sub_1091F2C(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, char **a6@<X8>)
{
  sub_101B084(a2, v104);
  sub_101B084(a3, v103);
  v87 = a6;
  sub_1031BD0((a1 + 494), &v100);
  v9 = v101;
  v10 = v102;
  if (v101 != v102)
  {
    v21 = v100;
    *&v22.f64[0] = 0x8000000080000000;
    *&v22.f64[1] = 0x8000000080000000;
    v91 = vnegq_f64(v22);
    do
    {
      v28 = *v21 + 80 * *v9;
      if (sub_1031B9C((a1 + 1), v28))
      {
        sub_109983C((a1 + 989), v28, &v93);
        v30 = v93;
        v29 = v94;
        if (v95 == 1)
        {
          v31 = v93[1] + 104 * v94;
          *v31 = *v28;
          *(v31 + 40) = 0u;
          *(v31 + 56) = 0u;
          *(v31 + 72) = 0u;
          *(v31 + 88) = 0u;
          *(v31 + 8) = 0u;
          *(v31 + 24) = 0u;
          *(v31 + 48) = v91;
          *(v31 + 64) = v91;
          *(v31 + 80) = xmmword_2266550;
          *(v31 + 96) = 0x7FFFFFFF;
        }

        v23 = v30[1] + 104 * v29;
        *(v23 + 8) = *v28;
        v24 = v23 + 8;
        *(v24 + 52) = *(v28 + 8);
        if ((*(v28 + 72) & 0x80000000) != 0)
        {
          v25 = 0;
        }

        else
        {
          v25 = *(v28 + 32);
        }

        *(v24 + 16) = v25;
        v26 = v103[0] + 12 * (*(v28 + 72) & 0x7FFFFFFF);
        v27 = *v26;
        *(v24 + 88) = *(v26 + 2);
        *(v24 + 80) = v27;
      }

      ++v9;
    }

    while (v9 != v10);
  }

  sub_1031BD0((a1 + 1), &v97);
  v11 = v98;
  v12 = v99;
  if (v98 != v99)
  {
    v32 = v97;
    do
    {
      v72 = *v32 + 80 * *v11;
      sub_108DF28((a1 + 989), v72, &v93);
      if (v93)
      {
        v73 = v96;
        *(v96 + 52) = *(v72 + 8);
        v74 = (*(v72 + 72) & 0x80000000) != 0 ? 0 : *(v72 + 24);
        *(v73 + 16) = v74;
        *(v73 + 48) = *(v72 + 16);
        v75 = v104[0] + 12 * (*(v72 + 72) & 0x7FFFFFFF);
        v76 = *(v75 + 2);
        *(v73 + 76) = *v75;
        *(v73 + 84) = v76;
        sub_108E04C(a1, (v73 + 8));
        if (*(v73 + 52) != -1 && *(v73 + 56) != 0x7FFFFFFF)
        {
          v77 = *(v73 + 60);
          if (v77 != -1)
          {
            v78 = *(v73 + 64);
            if (v78 != 0x7FFFFFFF)
            {
              v79 = (v78 + *(v73 + 56));
              if (v79 != 0x7FFFFFFF)
              {
                v80 = (v77 + *(v73 + 52));
                if (v80 != -1)
                {
                  if (*(a1 + 2218) == -1 || (v81 = *(a1 + 2219), v81 == 0x7FFFFFFF) || v79 < v81)
                  {
                    a1[1109] = (v80 | (v79 << 32));
                  }
                }
              }
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v12);
  }

  v13 = a1 + 989;
  v14 = a1 + 1085;
  v15 = a1[989];
  v16 = a1[990];
  if (*v15 <= -2)
  {
    v17 = a1[989];
    do
    {
      v18 = (__clz(__rbit64(((*v17 >> 7) & ~*v17 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v17 = (v17 + v18);
      v16 += 13 * v18;
    }

    while (*v17 < -1);
    v19 = (a1[992] + v15);
    v20 = a1 + 989;
    if (v17 == v19)
    {
      goto LABEL_83;
    }

    goto LABEL_19;
  }

  v17 = a1[989];
  v33 = a1[992];
  v19 = (v33 + v15);
  v20 = a1 + 989;
  if (v15 != (v33 + v15))
  {
LABEL_19:
    __src = 0;
    v92 = 0;
    while (1)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v92 - __src) >> 5) >= *(a1 + 2191) && *v14 != 1)
      {
        goto LABEL_100;
      }

      v88 = v92 - __src;
      v89 = 0xAAAAAAAAAAAAAAABLL * ((v92 - __src) >> 5);
      v34 = (v16 + 1);
      if (v16[1])
      {
        if (*(v16 + 13) != -1 && *(v16 + 14) != 0x7FFFFFFF && *(v16 + 15) != -1 && *(v16 + 16) != 0x7FFFFFFF && *(v16 + 17) != -1 && *(v16 + 18) != 0x7FFFFFFF)
        {
          v84 = v13;
          sub_108DF28(v13, v16 + 3, &v93);
          v13 = v84;
          if ((!v93 || *v34 != *(v96 + 16)) && *(v16 + 13) != -1 && *(v16 + 14) != 0x7FFFFFFF)
          {
            v35 = *(v16 + 15);
            if (v35 != -1)
            {
              v36 = *(v16 + 16);
              if (v36 != 0x7FFFFFFF)
              {
                v43 = v36 + *(v16 + 14);
                if (v43 != 0x7FFFFFFF)
                {
                  v44 = v35 + *(v16 + 13);
                  if (v44 != -1)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

LABEL_35:
      v37 = *(v17 + 1);
      v17 = (v17 + 1);
      v16 += 13;
      if (v37 <= -2)
      {
        do
        {
          v38 = (__clz(__rbit64(((*v17 >> 7) & ~*v17 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v17 = (v17 + v38);
          v16 += 13 * v38;
        }

        while (*v17 < -1);
      }

      if (v17 == v19)
      {
        v39 = v20 + 6;
        if (v20 + 6 == v14)
        {
          goto LABEL_89;
        }

        while (1)
        {
          v40 = v39;
          v41 = v20[6];
          v16 = v20[7];
          v17 = v41;
          if (*v41 <= -2)
          {
            do
            {
              v42 = (__clz(__rbit64(((*v17 >> 7) & ~*v17 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
              v17 = (v17 + v42);
              v16 += 13 * v42;
            }

            while (*v17 < -1);
          }

          v19 = (v20[9] + v41);
          if (v17 != v19)
          {
            break;
          }

          v39 = v40 + 6;
          v20 = v40;
          if (v40 + 6 == v14)
          {
            goto LABEL_89;
          }
        }

        v20 = v40;
        if (!v40)
        {
          goto LABEL_89;
        }
      }

      else if (!v20)
      {
        goto LABEL_89;
      }
    }

    v45 = *(a1 + 1097);
    v46 = v45 * *(a1 + 2219);
    if (v46 >= 0.0)
    {
      HIDWORD(v47) = 1127219200;
      if (v46 < 4.50359963e15)
      {
        v48 = (v46 + v46) + 1;
        goto LABEL_55;
      }
    }

    else
    {
      HIDWORD(v47) = -1020264448;
      if (v46 > -4.50359963e15)
      {
        v48 = (v46 + v46) - 1 + (((v46 + v46) - 1) >> 63);
LABEL_55:
        v46 = (v48 >> 1);
      }
    }

    if (v43 > v46)
    {
      goto LABEL_35;
    }

    if (*(a1 + 8784) == 1)
    {
      LODWORD(v47) = *(a1 + 2214);
      if (v45 * v47 < v44)
      {
        goto LABEL_35;
      }
    }

    v49 = *a1;
    v50 = **a1;
    if (*(v50 + 7774) == 1)
    {
      v82 = HIDWORD(*v34);
      v83 = *v34;
      v51 = sub_2AF704(v50 + 3896, HIDWORD(*v34), 1);
      if (!v51 || (v52 = &v51[-*v51], *v52 < 5u) || (v53 = *(v52 + 2)) == 0 || *&v51[v53 + *&v51[v53]] <= WORD1(v83) || !sub_2B817C(v50, v82 & 0xFFFF0000FFFFFFFFLL | (WORD1(v83) << 32)))
      {
LABEL_82:
        v13 = v84;
        goto LABEL_35;
      }

      v49 = *a1;
    }

    v54 = sub_103E47C(v49, v16 + 1, 0x3B9ACA00u, a4, v16 + 12, a5);
    if (v54 != -1 && HIDWORD(v54) != 0x7FFFFFFF)
    {
      v55 = *(v16 + 18) + HIDWORD(v54);
      *(v16 + 17) += v54;
      *(v16 + 18) = v55;
      if (sub_108E1C4(a1, (v16 + 1)))
      {
        if (sub_108E2D8(a1, (v16 + 1)))
        {
          v56 = v89 + 1;
          if (v89 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          if (0x5555555555555556 * (-__src >> 5) > v56)
          {
            v56 = 0x5555555555555556 * (-__src >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-__src >> 5) >= 0x155555555555555)
          {
            v57 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v57 = v56;
          }

          if (v57)
          {
            if (v57 <= 0x2AAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v58 = (32 * ((v92 - __src) >> 5));
          v59 = *(v16 + 3);
          *v58 = *v34;
          v58[1] = v59;
          v60 = *(v16 + 5);
          v61 = *(v16 + 7);
          v62 = *(v16 + 11);
          v58[4] = *(v16 + 9);
          v58[5] = v62;
          v58[2] = v60;
          v58[3] = v61;
          v92 = v58 + 6;
          memcpy((96 * v89 + 96 * (v88 / -96)), __src, v88);
          if (__src)
          {
            operator delete(__src);
          }

          __src = 96 * v89 + 96 * (v88 / -96);
        }
      }
    }

    goto LABEL_82;
  }

LABEL_83:
  v20 = a1 + 995;
  v63 = 6;
  v64 = a1 + 989;
  do
  {
    v16 = v64[7];
    v17 = *v20;
    if (**v20 <= -2)
    {
      do
      {
        v65 = (__clz(__rbit64(((*v17 >> 7) & ~*v17 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v17 = (v17 + v65);
        v16 += 13 * v65;
      }

      while (*v17 < -1);
    }

    v19 = (v64[9] + *v20);
    if (v17 != v19)
    {
      goto LABEL_19;
    }

    v64 = &v13[v63];
    v63 += 6;
    v20 = &v13[v63];
  }

  while (v63 != 96);
  v92 = 0;
  __src = 0;
LABEL_89:
  if (*v14 == 1)
  {
    v66 = v92;
    v67 = 0xAAAAAAAAAAAAAAABLL * ((v92 - __src) >> 5);
    v68 = 126 - 2 * __clz(v67);
    v69 = v92 - __src;
    if (v92 == __src)
    {
      v70 = 0;
    }

    else
    {
      v70 = v68;
    }

    sub_1099FE8(__src, v92, &v93, v70, 1);
    v71 = *(a1 + 2191);
    if (v67 > v71)
    {
      v69 = 96 * v71;
      v66 = (96 * v71 + __src);
    }

    *v87 = 0;
    v87[1] = 0;
    v87[2] = 0;
    if (v66 != __src)
    {
      if (0xAAAAAAAAAAAAAAABLL * (v69 >> 5) <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1794();
    }

    if (__src)
    {
      operator delete(__src);
    }
  }

  else
  {
LABEL_100:
    *v87 = __src;
    v87[1] = v92;
    v87[2] = 0;
  }

  if (v103[0])
  {
    v103[1] = v103[0];
    operator delete(v103[0]);
  }

  if (v104[0])
  {
    v104[1] = v104[0];
    operator delete(v104[0]);
  }
}

void sub_1092944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    v21 = *(v19 - 136);
    if (!v21)
    {
LABEL_3:
      v22 = *(v19 - 112);
      if (!v22)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v21 = *(v19 - 136);
    if (!v21)
    {
      goto LABEL_3;
    }
  }

  *(v19 - 128) = v21;
  operator delete(v21);
  v22 = *(v19 - 112);
  if (!v22)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  *(v19 - 104) = v22;
  operator delete(v22);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1092A1C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_103D148((a1 + 8), a2, v48);
  if (sub_F69D6C(v48))
  {
    *a3 = *v48;
    v6 = v50;
    *(a3 + 16) = *&v48[16];
    *&v48[8] = 0u;
    *(a3 + 24) = v49;
    *(a3 + 40) = v6;
    v49 = 0u;
    *v48 = 0;
    v50 = 0;
    v7 = v56;
    *(a3 + 96) = v54;
    v8 = v53;
    *(a3 + 64) = v52;
    *(a3 + 80) = v8;
    *(a3 + 48) = v51;
    *(a3 + 104) = v55;
    *(a3 + 120) = v7;
    v55 = 0u;
    *(a3 + 128) = v57;
    v9 = v60;
    *(a3 + 144) = v58;
    v57 = 0u;
    v56 = 0;
    v58 = 0;
    *(a3 + 152) = v59;
    *(a3 + 168) = v9;
    v59 = 0u;
    v10 = v61;
    v11 = v62;
    v12 = v65;
    *(a3 + 208) = v63;
    *(a3 + 176) = v10;
    *(a3 + 192) = v11;
    *(a3 + 216) = v64;
    *(a3 + 232) = v12;
    v64 = 0u;
    v60 = 0;
    v65 = 0;
    *(a3 + 240) = v66;
    v13 = v83;
    *(a3 + 256) = v67;
    v66 = 0u;
    v14 = v68;
    v15 = v70;
    *(a3 + 280) = v69;
    *(a3 + 296) = v15;
    *(a3 + 264) = v14;
    v16 = v71;
    v17 = v72;
    v18 = v74;
    *(a3 + 344) = v73;
    *(a3 + 360) = v18;
    *(a3 + 312) = v16;
    *(a3 + 328) = v17;
    v19 = v75;
    v20 = v76;
    v21 = v78;
    *(a3 + 408) = v77;
    *(a3 + 424) = v21;
    *(a3 + 376) = v19;
    *(a3 + 392) = v20;
    v22 = v79;
    v23 = v80;
    v24 = v82;
    *(a3 + 472) = v81;
    *(a3 + 488) = v24;
    *(a3 + 440) = v22;
    *(a3 + 456) = v23;
    *(a3 + 504) = v13;
    v67 = 0;
    v83 = 0;
    v25 = v85;
    *(a3 + 512) = v84;
    *(a3 + 528) = v25;
    *(a3 + 544) = v86;
    v84 = 0u;
    v85 = 0u;
    v86 = 0;
  }

  else
  {
    sub_1042AD4((a1 + 3952), a2, v47);
    if (sub_F69D6C(v47))
    {
      sub_49EA74(a3, v47);
    }

    else
    {
      sub_F6DDE0(v48, v47);
      *a3 = *v48;
      v26 = v50;
      *(a3 + 16) = *&v48[16];
      *&v48[8] = 0u;
      *(a3 + 24) = v49;
      *(a3 + 40) = v26;
      v49 = 0u;
      *v48 = 0;
      v50 = 0;
      v27 = v56;
      *(a3 + 96) = v54;
      v28 = v53;
      *(a3 + 64) = v52;
      *(a3 + 80) = v28;
      *(a3 + 48) = v51;
      *(a3 + 104) = v55;
      *(a3 + 120) = v27;
      v55 = 0u;
      *(a3 + 128) = v57;
      v29 = v60;
      *(a3 + 144) = v58;
      v57 = 0u;
      v56 = 0;
      v58 = 0;
      *(a3 + 152) = v59;
      *(a3 + 168) = v29;
      v59 = 0u;
      v30 = v61;
      v31 = v62;
      v32 = v65;
      *(a3 + 208) = v63;
      *(a3 + 176) = v30;
      *(a3 + 192) = v31;
      *(a3 + 216) = v64;
      *(a3 + 232) = v32;
      v64 = 0u;
      v60 = 0;
      v65 = 0;
      *(a3 + 240) = v66;
      v33 = v83;
      *(a3 + 256) = v67;
      v66 = 0u;
      v34 = v68;
      v35 = v70;
      *(a3 + 280) = v69;
      *(a3 + 296) = v35;
      *(a3 + 264) = v34;
      v36 = v71;
      v37 = v72;
      v38 = v74;
      *(a3 + 344) = v73;
      *(a3 + 360) = v38;
      *(a3 + 312) = v36;
      *(a3 + 328) = v37;
      v39 = v75;
      v40 = v76;
      v41 = v78;
      *(a3 + 408) = v77;
      *(a3 + 424) = v41;
      *(a3 + 376) = v39;
      *(a3 + 392) = v40;
      v42 = v79;
      v43 = v80;
      v44 = v82;
      *(a3 + 472) = v81;
      *(a3 + 488) = v44;
      *(a3 + 440) = v42;
      *(a3 + 456) = v43;
      *(a3 + 504) = v33;
      v67 = 0;
      v83 = 0;
      v45 = v85;
      *(a3 + 512) = v84;
      *(a3 + 528) = v45;
      *(a3 + 544) = v86;
      v84 = 0u;
      v85 = 0u;
      v86 = 0;
    }

    sub_4547F0(v47);
  }

  return sub_4547F0(v48);
}

void sub_1092D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_4547F0(&a9);
  sub_4547F0(&STACK[0x228]);
  _Unwind_Resume(a1);
}

uint64_t sub_1092DA0(uint64_t a1, void *a2)
{
  v4 = sub_109CD74(*a2, (a1 + 24), 0);
  v5 = sub_109CD74(*a2, (a1 + 32), 1);
  if (v4 == -1 && HIDWORD(v4) == 0xFFFFFFFF)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v5 == -1 && HIDWORD(v5) == 0xFFFFFFFF)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = HIDWORD(v5);
  v9 = v5;
  v10 = exp(3.14159265 - HIDWORD(v4) * 6.28318531 / 4294967300.0);
  v11 = atan((v10 - 1.0 / v10) * 0.5) * 57.2957795 * 0.0174532925;
  v12.i64[0] = v4;
  v12.i64[1] = v9;
  v13 = exp(3.14159265 - v8 * 6.28318531 / 4294967300.0);
  v14 = atan((v13 - 1.0 / v13) * 0.5) * 57.2957795 * 0.0174532925;
  v15 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v12), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v27 = vsubq_f64(v15, vdupq_laneq_s64(v15, 1)).f64[0];
  v16 = sin((v11 - v14) * 0.5);
  v17 = v16 * v16;
  v18 = cos(v11);
  v19 = v18 * cos(v14);
  v20 = sin(0.5 * v27);
  v21 = atan2(sqrt(v20 * v20 * v19 + v17), sqrt(1.0 - (v20 * v20 * v19 + v17)));
  v22 = (v21 + v21) * 6372797.56 * 100.0;
  if (v22 >= 0.0)
  {
    v23 = v22;
    if (v22 >= 4.50359963e15)
    {
      goto LABEL_16;
    }

    v24 = (v22 + v22) + 1;
  }

  else
  {
    v23 = v22;
    if (v22 <= -4.50359963e15)
    {
      goto LABEL_16;
    }

    v24 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
  }

  v23 = (v24 >> 1);
LABEL_16:
  if (v23 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v22 >= 0.0)
  {
    if (v22 < 4.50359963e15)
    {
      v26 = (v22 + v22) + 1;
      return (v26 >> 1);
    }
  }

  else if (v22 > -4.50359963e15)
  {
    v26 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
    return (v26 >> 1);
  }

  return v22;
}

uint64_t sub_1093070(unsigned int *a1, void *a2)
{
  v3 = sub_109CD74(*a2, a1 + 6, 0);
  v5 = a1[17];
  v4 = a1[18];
  if (v5 == -1 && v4 == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v3 == -1 && HIDWORD(v3) == 0xFFFFFFFF)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = HIDWORD(v3);
  v9 = v3;
  v10 = exp(3.14159265 - v4 * 6.28318531 / 4294967300.0);
  v11 = atan((v10 - 1.0 / v10) * 0.5) * 57.2957795 * 0.0174532925;
  v12.i64[0] = v5;
  v12.i64[1] = v9;
  v13 = exp(3.14159265 - v8 * 6.28318531 / 4294967300.0);
  v14 = atan((v13 - 1.0 / v13) * 0.5) * 57.2957795 * 0.0174532925;
  v15 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v12), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v27 = vsubq_f64(v15, vdupq_laneq_s64(v15, 1)).f64[0];
  v16 = sin((v11 - v14) * 0.5);
  v17 = v16 * v16;
  v18 = cos(v11);
  v19 = v18 * cos(v14);
  v20 = sin(0.5 * v27);
  v21 = atan2(sqrt(v20 * v20 * v19 + v17), sqrt(1.0 - (v20 * v20 * v19 + v17)));
  v22 = (v21 + v21) * 6372797.56 * 100.0;
  if (v22 >= 0.0)
  {
    v23 = v22;
    if (v22 >= 4.50359963e15)
    {
      goto LABEL_16;
    }

    v24 = (v22 + v22) + 1;
  }

  else
  {
    v23 = v22;
    if (v22 <= -4.50359963e15)
    {
      goto LABEL_16;
    }

    v24 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
  }

  v23 = (v24 >> 1);
LABEL_16:
  if (v23 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v22 >= 0.0)
  {
    if (v22 < 4.50359963e15)
    {
      v26 = (v22 + v22) + 1;
      return (v26 >> 1);
    }
  }

  else if (v22 > -4.50359963e15)
  {
    v26 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
    return (v26 >> 1);
  }

  return v22;
}

uint64_t sub_1093324(uint64_t a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v1 = *(a1 + 23);
    if (v1 != 4)
    {
      if (v1 != 7 || (*a1 == 1818584418 ? (v2 = *(a1 + 3) == 1701734764) : (v2 = 0), !v2))
      {
LABEL_28:
        exception = __cxa_allocate_exception(0x40uLL);
        std::operator+<char>();
        sub_30F54(&v11, " provided", &v10);
        if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = &v11;
        }

        else
        {
          v7 = v11.__r_.__value_.__r.__words[0];
        }

        if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v11.__r_.__value_.__l.__size_;
        }

        v9 = sub_2D390(exception, v7, size);
      }

      return 2;
    }

    if (*a1 != 1701669236)
    {
      if (*a1 == 1953722211)
      {
        return 0;
      }

      v5 = a1;
      goto LABEL_26;
    }

    return 1;
  }

  if (*(a1 + 8) == 4 && **a1 == 1953722211)
  {
    return 0;
  }

  if (*(a1 + 8) == 4 && **a1 == 1701669236)
  {
    return 1;
  }

  if (*(a1 + 8) == 7 && **a1 == 1818584418 && *(*a1 + 3) == 1701734764)
  {
    return 2;
  }

  if (*(a1 + 8) != 4)
  {
    goto LABEL_28;
  }

  v5 = *a1;
LABEL_26:
  if (*v5 != 1701736302)
  {
    goto LABEL_28;
  }

  return 3;
}

void sub_1093520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1093578(uint64_t a1, void *a2)
{
  v16 = 17;
  strcpy(__p, "sort_by_path_cost");
  LOBYTE(v14[0]) = 0;
  v4 = sub_5FBE4(a2, __p, v14);
  if (v16 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v16 = 14;
  strcpy(__p, "add_debug_info");
  LOBYTE(v14[0]) = 0;
  v6 = sub_5FBE4(a2, __p, v14);
  if (v16 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 8) = 0u;
  *(a1 + 1) = v6;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v16 = 21;
  *(a1 + 72) = 0;
  strcpy(__p, "max_num_scanned_nodes");
  if (sub_353010(a2, __p))
  {
    HIBYTE(v14[2]) = 21;
    strcpy(v14, "max_num_scanned_nodes");
    v8 = sub_353010(a2, v14);
    if (SHIBYTE(v14[2]) < 0)
    {
      operator delete(v14[0]);
      if ((v16 & 0x80000000) == 0)
      {
LABEL_8:
        *(a1 + 80) = v8;
        v16 = 17;
        strcpy(__p, "max_num_via_nodes");
        if (sub_353010(a2, __p))
        {
          HIBYTE(v14[2]) = 17;
          strcpy(v14, "max_num_via_nodes");
          v9 = sub_353010(a2, v14);
          if (SHIBYTE(v14[2]) < 0)
          {
            operator delete(v14[0]);
            if ((v16 & 0x80000000) == 0)
            {
LABEL_11:
              *(a1 + 84) = v9;
              v16 = 17;
              strcpy(__p, "min_partial_level");
              *(a1 + 88) = sub_108B604(a2, __p);
              if (v16 < 0)
              {
                operator delete(*__p);
              }

              v16 = 18;
              strcpy(__p, "max_stretch_factor");
              v10 = sub_63D34(a2, __p);
              if (v16 < 0)
              {
                v11 = v10;
                operator delete(*__p);
                v10 = v11;
              }

              *(a1 + 96) = v10;
              v16 = 18;
              strcpy(__p, "check_cost_stretch");
              v12 = sub_5F9D0(a2, __p);
              if (v16 < 0)
              {
                v13 = v12;
                operator delete(*__p);
                v12 = v13;
              }

              *(a1 + 104) = v12;
              operator new();
            }
          }

          else if ((v16 & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v9 = -1;
          if ((v16 & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        operator delete(*__p);
        goto LABEL_11;
      }
    }

    else if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = -1;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  operator delete(*__p);
  goto LABEL_8;
}

void sub_10942E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, void **a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  v33 = v31[19];
  if (v33)
  {
    v31[20] = v33;
    operator delete(v33);
    v34 = *a15;
    if (!*a15)
    {
LABEL_3:
      v35 = *a18;
      if (!*a18)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v34 = *a15;
    if (!*a15)
    {
      goto LABEL_3;
    }
  }

  v31[17] = v34;
  operator delete(v34);
  v35 = *a18;
  if (!*a18)
  {
LABEL_4:
    v36 = *(a14 + 24);
    if (!v36)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  v31[8] = v35;
  operator delete(v35);
  v36 = *(a14 + 24);
  if (!v36)
  {
LABEL_5:
    v37 = *a14;
    if (!*a14)
    {
LABEL_12:
      _Unwind_Resume(exception_object);
    }

LABEL_11:
    v31[2] = v37;
    operator delete(v37);
    goto LABEL_12;
  }

LABEL_10:
  v31[5] = v36;
  operator delete(v36);
  v37 = *a14;
  if (!*a14)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_1094518(uint64_t *a1, uint64_t a2, void *a3)
{
  *a1 = a2;
  sub_1045744((a1 + 1), a2, 0);
  sub_104C6F0((a1 + 494), *a1, 0);
  a1[988] = -1;
  a1[987] = -1;
  v8[0] = 10;
  v8[1] = &v7;
  v8[2] = &v6;
  v8[3] = &v5;
  sub_1098AE8(a1 + 989, v8);
  sub_1093578((a1 + 1085), a3);
}

void sub_10945C8(_Unwind_Exception *a1)
{
  sub_360988(v1 + v2);
  sub_C66B9C(v1 + 3952);
  sub_C6579C((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_109460C(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, int *a4@<X3>, int *a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X6>, unsigned int a8@<W7>, uint64_t a9@<X8>)
{
  v199[0] = a8;
  v13 = 0x1FFFFFFFFFFFFFA0;
  do
  {
    v15 = &a1[v13];
    if (a1[v13 + 1087])
    {
      v16 = v15[1088];
      if (v16 >= 0x80)
      {
        v14 = &a1[v13];
        operator delete(v15[1085]);
        v15[1085] = &unk_2290750;
        v14[1090] = 0;
        v14[1086] = 0;
        v14[1088] = 0;
        v14[1087] = 0;
      }

      else if (v16)
      {
        v15[1087] = 0;
        memset(v15[1085], 128, v16 + 8);
        *(v15[1085] + v16) = -1;
        v17 = v15[1088];
        if (v17 == 7)
        {
          v18 = 6;
        }

        else
        {
          v18 = v17 - (v17 >> 3);
        }

        a1[v13 + 1090] = (v18 - v15[1087]);
      }
    }

    v13 += 6;
  }

  while (v13 * 8);
  *(a1 + 1109) = -NAN;
  *(a1 + 1107) = -NAN;
  a1[1108] = 0x7FFFFFFFFFFFFFFFLL;
  a1[987] = -1;
  a1[988] = -1;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  *(a1 + 1107) = *(sub_1011FD4((*a1 + 19), a7, a4, a5, a6, 0) + 1);
  if (*(a1 + 2214) != -1)
  {
    v19 = *(a1 + 2215);
    if (v19 != 0x7FFFFFFF && a1[1108] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v197 = 0x7FFFFFFF;
      v198 = 0x7FFFFFFF;
      v20 = *a5;
      if (*a5 != 0x7FFFFFFF)
      {
        v198 = *a5;
        v21 = v19 / 10;
        v22 = v19 % 10;
        if (v19 < 0)
        {
          v23 = -5;
        }

        else
        {
          v23 = 5;
        }

        v197 = v21 + v20 + (((103 * (v23 + v22)) >> 15) & 1) + ((103 * (v23 + v22)) >> 10);
      }

      sub_10954F8(&v194, *a1, a7, a1 + 1089);
      v26 = *a2;
      v25 = a2[1];
      if (*a2 != v25)
      {
        v27 = v195;
        do
        {
          if (v27 < v196)
          {
            *v27 = *v26;
            *(v27 + 8) = 0;
            v27 += 16;
          }

          else
          {
            v28 = v194;
            v29 = v27 - v194;
            v30 = (v27 - v194) >> 4;
            v31 = v30 + 1;
            if ((v30 + 1) >> 60)
            {
              sub_1794();
            }

            v32 = v196 - v194;
            if ((v196 - v194) >> 3 > v31)
            {
              v31 = v32 >> 3;
            }

            if (v32 >= 0x7FFFFFFFFFFFFFF0)
            {
              v33 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v31;
            }

            if (v33)
            {
              if (!(v33 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v34 = 16 * v30;
            *v34 = *v26;
            *(v34 + 8) = 0;
            v27 = 16 * v30 + 16;
            memcpy(0, v28, v29);
            v194 = 0;
            v196 = 0;
            if (v28)
            {
              operator delete(v28);
            }
          }

          v195 = v27;
          v26 += 12;
        }

        while (v26 != v25);
      }

      v36 = *a3;
      v35 = a3[1];
      if (*a3 != v35)
      {
        v37 = v195;
        do
        {
          if (v37 < v196)
          {
            *v37 = *v36;
            *(v37 + 8) = 0;
            v37 += 16;
          }

          else
          {
            v38 = v194;
            v39 = v37 - v194;
            v40 = (v37 - v194) >> 4;
            v41 = v40 + 1;
            if ((v40 + 1) >> 60)
            {
              sub_1794();
            }

            v42 = v196 - v194;
            if ((v196 - v194) >> 3 > v41)
            {
              v41 = v42 >> 3;
            }

            if (v42 >= 0x7FFFFFFFFFFFFFF0)
            {
              v43 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v43 = v41;
            }

            if (v43)
            {
              if (!(v43 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v44 = 16 * v40;
            *v44 = *v36;
            *(v44 + 8) = 0;
            v37 = 16 * v40 + 16;
            memcpy(0, v38, v39);
            v194 = 0;
            v196 = 0;
            if (v38)
            {
              operator delete(v38);
            }
          }

          v195 = v37;
          v36 += 12;
        }

        while (v36 != v35);
      }

      v45 = *(a1 + 2214);
      v46 = a1[1086];
      v47 = *v46;
      if (v45 <= *v46)
      {
        v63 = v46[1];
        v50 = a6;
      }

      else
      {
        v48 = a1[1087];
        v49 = (v48 - v46) >> 4;
        v50 = a6;
        if (v49 >= 1)
        {
          if (v48 - v46 != 16)
          {
            do
            {
              v51 = (4 * v49) & 0xFFFFFFFFFFFFFFF0;
              _X14 = v46 + v51;
              __asm { PRFM            #0, [X14] }

              v58 = &v46[2 * (v49 >> 1)];
              _X13 = v58 + v51;
              __asm { PRFM            #0, [X13] }

              if (*v58 >= v45)
              {
                v61 = 0;
              }

              else
              {
                v61 = v49 >> 1;
              }

              v46 += 2 * v61;
              v49 -= v49 >> 1;
            }

            while (v49 > 1);
            v47 = *v46;
          }

          v46 += 2 * (v47 < v45);
        }

        if (v48 == v46)
        {
          v63 = *(v48 - 1);
        }

        else
        {
          v62 = *(v46 - 4);
          if (*v46 == v62)
          {
            v63 = v46[1];
          }

          else
          {
            v24 = *(v46 - 1);
            v63 = v24 + (v45 - v62) / (*v46 - v62) * (v46[1] - v24);
          }
        }
      }

      v193 = sub_108CF40(a1 + 2214, v63, v24);
      sub_1047EB8((a1 + 1), a2, a4, &v198, v50, &v193, 0x7FFFFFFF, v199, &v194, a1 + 1092, *(a1 + 2190), v129, *(a1 + 2192));
      __p[0] = sub_10499B8(a1 + 1);
      __p[1] = v64;
      sub_32114((a1 + 987), __p);
      sub_104E9E8((a1 + 494), a3, a4, &v197, v50, &v193, 0x7FFFFFFF, v199, &v194, a1 + 1092, *(a1 + 2190), v130, *(a1 + 2192));
      __p[0] = sub_104FF94(a1 + 494);
      __p[1] = v65;
      sub_32114((a1 + 987), __p);
      sub_1095D28(a1, a2, a3, a4, v50, &v191);
      v66 = v191;
      v67 = v192;
      if (v191 != v192)
      {
        v68 = (v191 + 32);
        while (1)
        {
          sub_1096798(a1, v68 - 8, __p);
          if (!sub_F6FDC8(__p))
          {
            break;
          }

LABEL_70:
          sub_4547F0(__p);
          v87 = v68 + 16;
          v68 += 24;
          if (v87 == v67)
          {
            v66 = v191;
            goto LABEL_105;
          }
        }

        if (*(a1 + 8681) != 1)
        {
LABEL_101:
          v128 = *(a9 + 8);
          if (v128 < *(a9 + 16))
          {
            v69 = *__p;
            *(v128 + 16) = v152;
            *(v128 + 24) = 0;
            *v128 = v69;
            __p[1] = 0;
            v152 = 0;
            __p[0] = 0;
            *(v128 + 32) = 0;
            *(v128 + 40) = 0;
            *(v128 + 24) = v153;
            *(v128 + 40) = v154;
            v153 = 0uLL;
            v154 = 0;
            v70 = v155;
            v71 = v157;
            v72 = v158;
            *(v128 + 64) = v156;
            *(v128 + 80) = v71;
            *(v128 + 48) = v70;
            *(v128 + 96) = v72;
            *(v128 + 104) = 0;
            *(v128 + 112) = 0;
            *(v128 + 120) = 0;
            *(v128 + 104) = v159;
            v159 = 0uLL;
            *(v128 + 120) = v160;
            *(v128 + 128) = 0;
            *(v128 + 136) = 0;
            *(v128 + 144) = 0;
            *(v128 + 128) = v161;
            *(v128 + 144) = v162;
            *(v128 + 152) = 0;
            v160 = 0;
            v161 = 0uLL;
            v162 = 0;
            *(v128 + 160) = 0;
            *(v128 + 168) = 0;
            *(v128 + 152) = v163;
            *(v128 + 168) = v164;
            v163 = 0uLL;
            v164 = 0;
            v73 = v166;
            v74 = v167;
            *(v128 + 176) = v165;
            *(v128 + 192) = v73;
            *(v128 + 208) = v74;
            *(v128 + 216) = 0;
            *(v128 + 224) = 0;
            *(v128 + 232) = 0;
            *(v128 + 216) = v168;
            v168 = 0uLL;
            *(v128 + 232) = v169;
            *(v128 + 240) = 0;
            *(v128 + 248) = 0;
            *(v128 + 256) = 0;
            *(v128 + 240) = v170;
            *(v128 + 256) = v171;
            v169 = 0;
            v170 = 0uLL;
            v171 = 0;
            v75 = v172;
            v76 = v174;
            *(v128 + 280) = v173;
            *(v128 + 296) = v76;
            *(v128 + 264) = v75;
            v77 = v175;
            v78 = v176;
            v79 = v178;
            *(v128 + 344) = v177;
            *(v128 + 360) = v79;
            *(v128 + 312) = v77;
            *(v128 + 328) = v78;
            v80 = v179;
            v81 = v180;
            v82 = v182;
            *(v128 + 408) = v181;
            *(v128 + 424) = v82;
            *(v128 + 376) = v80;
            *(v128 + 392) = v81;
            v83 = v183;
            v84 = v184;
            v85 = v186;
            *(v128 + 472) = v185;
            *(v128 + 488) = v85;
            *(v128 + 440) = v83;
            *(v128 + 456) = v84;
            *(v128 + 504) = v187;
            *(v128 + 512) = v188;
            v187 = 0;
            v188 = 0uLL;
            *(v128 + 528) = 0;
            *(v128 + 544) = 0;
            *(v128 + 536) = 0;
            *(v128 + 528) = v189;
            *(v128 + 544) = v190;
            v189 = 0uLL;
            v190 = 0;
            v86 = (v128 + 552);
          }

          else
          {
            v86 = sub_D59894(a9, __p);
          }

          *(a9 + 8) = v86;
          goto LABEL_70;
        }

        v88 = sub_109CD74(**a1, v68 - 2, 0) >> 32;
        v89 = sub_109CD74(**a1, v68, 0) >> 32;
        sub_D7B0(v140);
        *(&v141 + *(v140[0] - 24)) = 9;
        v90 = sub_4A5C(&v141, "ViaPath: {", 12);
        v91 = sub_4A5C(v90, "  cost_function: ", 20);
        v92 = *(a4 + 31);
        if (v92 >= 0)
        {
          v93 = (a4 + 2);
        }

        else
        {
          v93 = *(a4 + 1);
        }

        if (v92 >= 0)
        {
          v94 = *(a4 + 31);
        }

        else
        {
          v94 = *(a4 + 2);
        }

        v95 = sub_4A5C(v91, v93, v94);
        v96 = sub_4A5C(v95, ",", 2);
        v97 = sub_4A5C(v96, "  via_node: ", 15);
        v98 = sub_444030(v97, *(v68 - 4));
        v99 = sub_4A5C(v98, ",", 2);
        v100 = sub_4A5C(v99, "  path_cost: ", 16);
        if (v68[3] == -1 || v68[4] == 0x7FFFFFFF || (v101 = v68[5], v101 == -1) || (v102 = v68[6], v102 == 0x7FFFFFFF))
        {
          v103 = 0x7FFFFFFF00000000;
          v104 = 0xFFFFFFFFLL;
        }

        else
        {
          v104 = v101 + v68[3];
          v103 = (v102 + v68[4]) << 32;
        }

        v105 = sub_705F0(v100, v104 | v103);
        v106 = sub_4A5C(v105, ",", 2);
        v107 = sub_4A5C(v106, "  path_length_lb: ", 21);
        v108 = sub_70FBC(v107, a1[1108]);
        v109 = sub_4A5C(v108, ",", 2);
        v110 = sub_4A5C(v109, "  plateau: {", 14);
        v111 = sub_4A5C(v110, "    length_lb: ", 18);
        v112 = sub_1092DA0((v68 - 8), *a1);
        v113 = sub_70FBC(v111, v112);
        v114 = sub_4A5C(v113, ",", 2);
        sub_4A5C(v114, "    first_node_coord:", 24);
        v115 = exp(v88 * -6.28318531 / 4294967300.0 + 3.14159265);
        atan((v115 + -1.0 / v115) * 0.5);
        v116 = std::ostream::operator<<();
        sub_4A5C(v116, ",", 1);
        v117 = std::ostream::operator<<();
        v118 = sub_4A5C(v117, ",", 2);
        sub_4A5C(v118, "    last_node_coord: ", 24);
        v119 = exp(v89 * -6.28318531 / 4294967300.0 + 3.14159265);
        atan((v119 + -1.0 / v119) * 0.5);
        v120 = std::ostream::operator<<();
        sub_4A5C(v120, ",", 1);
        v121 = std::ostream::operator<<();
        v122 = sub_4A5C(v121, "", 1);
        v123 = sub_4A5C(v122, "  }", 3);
        sub_4A5C(v123, "}", 1);
        if ((v150 & 0x10) != 0)
        {
          v125 = v149;
          v126 = &v145;
          if (v149 < v146)
          {
            v149 = v146;
            v125 = v146;
            v126 = &v145;
          }
        }

        else
        {
          if ((v150 & 8) == 0)
          {
            v124 = 0;
            HIBYTE(v139) = 0;
LABEL_96:
            *(&__dst + v124) = 0;
            if (SHIBYTE(v152) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = __dst;
            v152 = v139;
            *v140 = v133;
            *(v140 + *(*&v133 - 24)) = v132;
            v141 = v131;
            if (v148 < 0)
            {
              operator delete(v147);
            }

            std::locale::~locale(&v143);
            std::iostream::~basic_iostream();
            std::ios::~ios();
            goto LABEL_101;
          }

          v125 = v144[2];
          v126 = v144;
        }

        v127 = *v126;
        v124 = v125 - *v126;
        if (v124 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

        if (v124 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v139) = v125 - *v126;
        if (v124)
        {
          memmove(&__dst, v127, v124);
        }

        goto LABEL_96;
      }

LABEL_105:
      if (v66)
      {
        v192 = v66;
        operator delete(v66);
      }

      if (v194)
      {
        v195 = v194;
        operator delete(v194);
      }
    }
  }
}