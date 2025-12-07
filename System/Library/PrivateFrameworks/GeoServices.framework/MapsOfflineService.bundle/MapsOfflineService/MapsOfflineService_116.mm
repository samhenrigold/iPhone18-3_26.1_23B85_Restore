void sub_73D9FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (v22)
  {
    v23 = a1;
    operator delete(v22);
    a1 = v23;
  }

  _Unwind_Resume(a1);
}

void sub_73DA74(unsigned __int16 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a4;
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    while (1)
    {
      v51 = sub_845EC(v9);
      v47[0] = sub_1232F20(&v51);
      __p[0] = sub_1232F20(&v55);
      if (sub_1232EBC(v47, __p) || sub_846D0(v9))
      {
        break;
      }

      v9 += 48;
      if (v9 == v10)
      {
        v9 = v10;
        break;
      }
    }
  }

  v11 = a2[1];
  sub_734CE0(a5);
  if (v9 != v11)
  {
    if (v9 + 24 != a5)
    {
      v12 = *(v9 + 47);
      if (*(a5 + 23) < 0)
      {
        if (v12 >= 0)
        {
          v14 = (v9 + 24);
        }

        else
        {
          v14 = *(v9 + 24);
        }

        if (v12 >= 0)
        {
          v15 = *(v9 + 47);
        }

        else
        {
          v15 = *(v9 + 32);
        }

        sub_13B38(a5, v14, v15);
      }

      else if ((*(v9 + 47) & 0x80) != 0)
      {
        sub_13A68(a5, *(v9 + 24), *(v9 + 32));
      }

      else
      {
        v13 = *(v9 + 24);
        *(a5 + 16) = *(v9 + 40);
        *a5 = v13;
      }
    }

    *(a5 + 24) = sub_845EC(v9);
    v16 = a2[3];
    v17 = a2[4];
    if (v16 != v17)
    {
      while (1)
      {
        v51 = sub_845EC(v16);
        v47[0] = sub_1232F20(&v51);
        __p[0] = sub_1232F20(&v55);
        if (sub_1232EBC(v47, __p) || sub_846D0(v16))
        {
          break;
        }

        v16 += 48;
        if (v16 == v17)
        {
          v16 = v17;
          break;
        }
      }
    }

    if (v16 == a2[4])
    {
      v19 = (a5 + 128);
      v18 = a5;
      v20 = *(a5 + 23);
      if ((*(a5 + 151) & 0x80000000) == 0)
      {
LABEL_27:
        if ((v20 & 0x80) != 0)
        {
          sub_13A68(v19, *v18, *(v18 + 8));
        }

        else
        {
          v21 = *v18;
          v19[2] = *(v18 + 16);
          *v19 = v21;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v18 = (v16 + 24);
      v19 = (a5 + 128);
      if (a5 + 128 == v18)
      {
        goto LABEL_38;
      }

      v20 = *(v18 + 23);
      if ((*(a5 + 151) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    if ((v20 & 0x80u) == 0)
    {
      v22 = v18;
    }

    else
    {
      v22 = *v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = *(v18 + 8);
    }

    sub_13B38(v19, v22, v23);
LABEL_38:
    if (*(a2 + 49))
    {
      if (*(a2 + 49) == 3)
      {
        goto LABEL_48;
      }

      v24 = *(a2 + 48);
      if (v24 == 5 || v24 == 8)
      {
        v26 = 2;
      }

      else
      {
        v26 = 3;
      }
    }

    else
    {
      v26 = 1;
    }

    *(a5 + 120) = v26;
LABEL_48:
    v27 = a2[8];
    v28 = a2[7];
    if (v28 == v27)
    {
      goto LABEL_93;
    }

    v29 = a2[7];
    while ((*(v29 + 32) & 1) == 0)
    {
      v29 += 40;
      if (v29 == v27)
      {
        goto LABEL_57;
      }
    }

    if (v29 == v27)
    {
LABEL_57:
      LODWORD(v51) = *v28;
      if (*(v28 + 31) < 0)
      {
        sub_325C(&v52, *(v28 + 8), *(v28 + 16));
      }

      else
      {
        v31 = *(v28 + 8);
        v53 = *(v28 + 24);
        v52 = v31;
      }

      goto LABEL_61;
    }

    LODWORD(v51) = *v29;
    if (*(v29 + 31) < 0)
    {
      sub_325C(&v52, *(v29 + 8), *(v29 + 16));
    }

    else
    {
      v30 = *(v29 + 8);
      v53 = *(v29 + 24);
      v52 = v30;
    }

    v28 = v29;
LABEL_61:
    v54 = *(v28 + 32);
    v46 = 0;
    LOBYTE(__p[0]) = 0;
    sub_73450C(v47, v51, &v52, __p);
    *(a5 + 64) = v47[0];
    if (*(a5 + 95) < 0)
    {
      operator delete(*(a5 + 72));
    }

    *(a5 + 72) = *&v47[1];
    *(a5 + 88) = v48;
    HIBYTE(v48) = 0;
    LOBYTE(v47[1]) = 0;
    v32 = (a5 + 96);
    if ((*(a5 + 119) & 0x80000000) == 0)
    {
      *v32 = v49;
      *(a5 + 112) = v50;
      HIBYTE(v50) = 0;
      LOBYTE(v49) = 0;
      if (v46 < 0)
      {
        goto LABEL_65;
      }

LABEL_69:
      v33 = a2[13];
      v34 = a2[14];
      if (v33 != v34)
      {
        goto LABEL_70;
      }

      goto LABEL_74;
    }

    operator delete(*v32);
    v35 = SHIBYTE(v48);
    *v32 = v49;
    *(a5 + 112) = v50;
    HIBYTE(v50) = 0;
    LOBYTE(v49) = 0;
    if (v35 < 0)
    {
      operator delete(v47[1]);
      if ((v46 & 0x80000000) == 0)
      {
        goto LABEL_69;
      }
    }

    else if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

LABEL_65:
    operator delete(__p[0]);
    v33 = a2[13];
    v34 = a2[14];
    if (v33 != v34)
    {
LABEL_70:
      while (1)
      {
        __p[0] = sub_845EC(v33);
        v47[0] = sub_1232F20(__p);
        v56 = sub_1232F20(&v55);
        if (sub_1232EBC(v47, &v56) || sub_846D0(v33))
        {
          break;
        }

        v33 += 48;
        if (v33 == v34)
        {
          v33 = v34;
          break;
        }
      }
    }

LABEL_74:
    if (v33 == a2[14])
    {
      HIBYTE(v47[2]) = 0;
      LOBYTE(v47[0]) = 0;
    }

    else if (*(v33 + 47) < 0)
    {
      sub_325C(v47, *(v33 + 24), *(v33 + 32));
    }

    else
    {
      *v47 = *(v33 + 24);
      v47[2] = *(v33 + 40);
    }

    if (v32 != v47)
    {
      if (*(a5 + 119) < 0)
      {
        if (SHIBYTE(v47[2]) >= 0)
        {
          v36 = v47;
        }

        else
        {
          v36 = v47[0];
        }

        if (SHIBYTE(v47[2]) >= 0)
        {
          v37 = HIBYTE(v47[2]);
        }

        else
        {
          v37 = v47[1];
        }

        sub_13B38((a5 + 96), v36, v37);
      }

      else if ((HIBYTE(v47[2]) & 0x80) != 0)
      {
        sub_13A68((a5 + 96), v47[0], v47[1]);
      }

      else
      {
        *v32 = *v47;
        *(a5 + 112) = v47[2];
      }
    }

    if (SHIBYTE(v47[2]) < 0)
    {
      operator delete(v47[0]);
      if ((SHIBYTE(v53) & 0x80000000) == 0)
      {
        goto LABEL_93;
      }
    }

    else if ((SHIBYTE(v53) & 0x80000000) == 0)
    {
      goto LABEL_93;
    }

    operator delete(v52);
LABEL_93:
    sub_73C770(a1, a2 + 10, v19, a3, v47);
    if (*(a5 + 55) < 0)
    {
      operator delete(*(a5 + 32));
    }

    *(a5 + 32) = *v47;
    v38 = v48;
    *(a5 + 48) = v47[2];
    *(a5 + 56) = v38;
    memset(v47, 0, sizeof(v47));
    v39 = *(a1 + 23);
    if ((v39 & 0x80) != 0)
    {
      if (*(a1 + 1) != 3)
      {
        return;
      }

      v40 = *a1;
    }

    else
    {
      v40 = a1;
      if (v39 != 3)
      {
LABEL_105:
        if (v39 != 3)
        {
          return;
        }

LABEL_112:
        if (*a1 == 18499 && *(a1 + 2) == 78 && *(a3 + 32) == 5)
        {
          *(a5 + 60) = 0;
        }

        return;
      }
    }

    v41 = *v40;
    v42 = *(v40 + 2);
    if (v41 == 20554 && v42 == 78)
    {
      sub_73E12C(a1, a5);
      v39 = *(a1 + 23);
      if ((v39 & 0x80) == 0)
      {
        goto LABEL_105;
      }
    }

    else if ((v39 & 0x80) == 0)
    {
      goto LABEL_105;
    }

    if (*(a1 + 1) != 3)
    {
      return;
    }

    a1 = *a1;
    goto LABEL_112;
  }
}

void sub_73E044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
    sub_3E5388(v32);
    _Unwind_Resume(a1);
  }

  sub_3E5388(v32);
  _Unwind_Resume(a1);
}

void sub_73E12C(uint64_t *a1, void **a2)
{
  v3 = *(a1 + 23);
  if (v3 < 0)
  {
    if (a1[1] != 3)
    {
      return;
    }

    a1 = *a1;
  }

  else if (v3 != 3)
  {
    return;
  }

  v4 = *a1 == 20554 && *(a1 + 2) == 78;
  if (v4 && sub_7345C4((a2 + 8)))
  {
    v5 = *(a2 + 23);
    v6 = v5;
    v7 = *a2;
    if (v5 < 0)
    {
      v5 = a2[1];
    }

    else
    {
      v7 = a2;
    }

    if (v5)
    {
      do
      {
        v8 = *v7;
        if (v8 < 0 || (_DefaultRuneLocale.__runetype[v8] & 0x400) == 0)
        {
          return;
        }

        v7 = (v7 + 1);
      }

      while (--v5);
    }

    __src = 0uLL;
    v47 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    memset(&__dst, 0, sizeof(__dst));
    v39 = 0;
    v40 = 0;
    v9 = *(a2 + 16);
    v41 = 0;
    if (v9 == 100000)
    {
      HIBYTE(v47) = 15;
      *&__src = *"都道府県道";
      *(&__src + 7) = *"\xBA\x9C県道";
      HIBYTE(__src) = 0;
      sub_195A048(&__dst, "トドウフケンドウ", 0x18uLL);
      if (SHIBYTE(v45) < 0)
      {
        v44 = 6;
        v12 = v43;
      }

      else
      {
        HIBYTE(v45) = 6;
        v12 = &v43;
      }

      v12[2] = -25929;
      *v12 = -407400475;
      *(v12 + 6) = 0;
      if (SHIBYTE(v41) < 0)
      {
        v40 = 12;
        v13 = v39;
      }

      else
      {
        HIBYTE(v41) = 12;
        v13 = &v39;
      }

      v10 = 0;
      v13[2] = -1283202117;
      *v13 = *"ゴウセン";
      *(v13 + 12) = 0;
      v6 = *(a2 + 23);
      v11 = 15;
    }

    else if (v9 == 100006)
    {
      v10 = 0;
      v11 = 6;
      HIBYTE(v47) = 6;
      LODWORD(__src) = -373449755;
      WORD2(__src) = -27775;
      BYTE6(__src) = 0;
      LODWORD(__dst.__r_.__value_.__r.__words[1]) = -1501371511;
      __dst.__r_.__value_.__r.__words[0] = *"コクドウ";
      LODWORD(v43) = -407400475;
      WORD2(v43) = -25929;
      *(&__dst.__r_.__value_.__s + 23) = 12;
      __dst.__r_.__value_.__s.__data_[12] = 0;
      HIBYTE(v45) = 6;
      BYTE6(v43) = 0;
      HIBYTE(v41) = 12;
      LODWORD(v40) = -1283202117;
      v39 = *"ゴウセン";
    }

    else
    {
      v11 = 0;
      v10 = 1;
    }

    if (v6 < 0)
    {
      sub_325C(v37, *a2, a2[1]);
    }

    else
    {
      *v37 = *a2;
      v38 = a2[2];
    }

    if (!v10)
    {
      goto LABEL_37;
    }

    v14 = HIBYTE(v45);
    if (v45 < 0)
    {
      v14 = v44;
    }

    if (v14)
    {
LABEL_37:
      if (SHIBYTE(v38) >= 0)
      {
        v15 = HIBYTE(v38);
      }

      else
      {
        v15 = v37[1];
      }

      if (v15 + v11 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v15 + v11 > 0x16)
      {
        operator new();
      }

      memset(&v48, 0, sizeof(v48));
      *(&v48.__r_.__value_.__s + 23) = v15 + v11;
      if ((v10 & 1) == 0)
      {
        memcpy(&v48, &__src, v11);
      }

      v16 = &v48 + v11;
      if (v15)
      {
        if (SHIBYTE(v38) >= 0)
        {
          v17 = v37;
        }

        else
        {
          v17 = v37[0];
        }

        memmove(v16, v17, v15);
      }

      v16[v15] = 0;
      if (v45 >= 0)
      {
        v18 = &v43;
      }

      else
      {
        v18 = v43;
      }

      if (v45 >= 0)
      {
        v19 = HIBYTE(v45);
      }

      else
      {
        v19 = v44;
      }

      v20 = std::string::append(&v48, v18, v19);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v36 = v20->__r_.__value_.__r.__words[2];
      *__p = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (__p != a2)
      {
        if (*(a2 + 23) < 0)
        {
          if (SHIBYTE(v36) >= 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = __p[0];
          }

          if (SHIBYTE(v36) >= 0)
          {
            v23 = HIBYTE(v36);
          }

          else
          {
            v23 = __p[1];
          }

          sub_13B38(a2, v22, v23);
        }

        else if ((HIBYTE(v36) & 0x80) != 0)
        {
          sub_13A68(a2, __p[0], __p[1]);
        }

        else
        {
          *a2 = *__p;
          a2[2] = v36;
        }
      }

      sub_852E4("ja_JP", 5, &v48);
      a2[3] = sub_1232F28(&v48, 0);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      goto LABEL_79;
    }

    v25 = HIBYTE(v41);
    if (v41 < 0)
    {
      v25 = v40;
    }

    if (v25)
    {
LABEL_79:
      if (SHIBYTE(v38) >= 0)
      {
        v26 = HIBYTE(v38);
      }

      else
      {
        v26 = v37[1];
      }

      if (v26 + size > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v26 + size > 0x16)
      {
        operator new();
      }

      memset(&v48, 0, sizeof(v48));
      *(&v48.__r_.__value_.__s + 23) = v26 + size;
      if (size)
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        memmove(&v48, p_dst, size);
      }

      v28 = &v48 + size;
      if (v26)
      {
        if (SHIBYTE(v38) >= 0)
        {
          v29 = v37;
        }

        else
        {
          v29 = v37[0];
        }

        memmove(v28, v29, v26);
      }

      v28[v26] = 0;
      if (v41 >= 0)
      {
        v30 = &v39;
      }

      else
      {
        v30 = v39;
      }

      if (v41 >= 0)
      {
        v31 = HIBYTE(v41);
      }

      else
      {
        v31 = v40;
      }

      v32 = std::string::append(&v48, v30, v31);
      v33 = *&v32->__r_.__value_.__l.__data_;
      v36 = v32->__r_.__value_.__r.__words[2];
      *__p = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      sub_734B90(&v48, __p, 20, 1);
      if (*(a2 + 55) < 0)
      {
        operator delete(a2[4]);
      }

      *(a2 + 2) = *&v48.__r_.__value_.__l.__data_;
      v34 = v49;
      a2[6] = v48.__r_.__value_.__r.__words[2];
      a2[7] = v34;
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37[0]);
      if ((SHIBYTE(v41) & 0x80000000) == 0)
      {
LABEL_109:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_110;
        }

        goto LABEL_114;
      }
    }

    else if ((SHIBYTE(v41) & 0x80000000) == 0)
    {
      goto LABEL_109;
    }

    operator delete(v39);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_110:
      if ((SHIBYTE(v45) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_115;
    }

LABEL_114:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      return;
    }

LABEL_115:
    operator delete(v43);
  }
}

void sub_73E7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if (a39 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  operator delete(a28);
  if (a39 < 0)
  {
LABEL_8:
    operator delete(a34);
    _Unwind_Resume(a1);
  }

LABEL_11:
  _Unwind_Resume(a1);
}

void sub_73E85C(__int128 **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  HIBYTE(v17) = 0;
  LOBYTE(__dst[0]) = 0;
  v4 = *a1;
  if (*a1 == a1[1])
  {
    *a3 = *__dst;
    *(a3 + 16) = v17;
  }

  else
  {
    if (__dst != (v4 + 24))
    {
      if (*(v4 + 47) < 0)
      {
        sub_13A68(__dst, *(v4 + 3), *(v4 + 4));
      }

      else
      {
        *__dst = *(v4 + 24);
        v17 = *(v4 + 5);
      }
    }

    sub_73EA7C(a1, &__p);
    v11 = 50331648;
    v12 = 0;
    v13 = -4294967282;
    v7 = sub_6E9A8();
    v21[0] = a2;
    v21[1] = a2 + 4;
    v22 = 4;
    v23 = 1;
    v18[0] = __p;
    v18[1] = v15;
    v19 = 2;
    v20 = (v15 - __p) >> 3;
    v8 = (*(*v7 + 48))(v7, v21, v18, &v11);
    if (v8 >> 31)
    {
      *a3 = *__dst;
      *(a3 + 16) = v17;
      __dst[1] = 0;
      v17 = 0;
      __dst[0] = 0;
    }

    else
    {
      v9 = *a1;
      if (v8 < (-1431655765 * ((a1[1] - *a1) >> 4)))
      {
        v9 += 3 * v8;
      }

      if (*(v9 + 47) < 0)
      {
        sub_325C(a3, *(v9 + 3), *(v9 + 4));
      }

      else
      {
        v10 = *(v9 + 24);
        *(a3 + 16) = *(v9 + 5);
        *a3 = v10;
      }
    }

    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_73EA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_73EA7C(__int128 **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = a1[1];
  if (v2 != *a1)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v2 - *a1)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  a2[2] = 0;
  *a2 = 0;
}

void sub_73ED78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v14[2] = v16;
  *v14 = v15;
  if (!v15)
  {
    _Unwind_Resume(exception_object);
  }

  v14[1] = v15;
  operator delete(v15);
  _Unwind_Resume(exception_object);
}

void sub_73EDD4(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_734F1C(a3);
  if (*a1 != a1[1])
  {
    sub_73EFB0(a1, &__p);
    v13 = 50331648;
    v14 = 0;
    v15 = -4294967282;
    v6 = sub_6EAFC();
    v21[0] = a2 + 32;
    v21[1] = a2 + 36;
    v22 = 4;
    v23 = 1;
    v18[0] = __p;
    v18[1] = v17;
    v19 = 2;
    v20 = (v17 - __p) >> 3;
    v7 = (*(*v6 + 48))(v6, v21, v18, &v13);
    if (!(v7 >> 31))
    {
      v8 = *a1;
      if (v7 < (-1431655765 * ((a1[1] - *a1) >> 4)))
      {
        v8 += 48 * v7;
      }

      *(a3 + 24) = sub_845EC(v8);
      if (v8 + 24 != a3)
      {
        v9 = *(v8 + 47);
        if (*(a3 + 23) < 0)
        {
          if (v9 >= 0)
          {
            v11 = (v8 + 24);
          }

          else
          {
            v11 = *(v8 + 24);
          }

          if (v9 >= 0)
          {
            v12 = *(v8 + 47);
          }

          else
          {
            v12 = *(v8 + 32);
          }

          sub_13B38(a3, v11, v12);
        }

        else if ((*(v8 + 47) & 0x80) != 0)
        {
          sub_13A68(a3, *(v8 + 24), *(v8 + 32));
        }

        else
        {
          v10 = *(v8 + 24);
          *(a3 + 16) = *(v8 + 40);
          *a3 = v10;
        }
      }
    }

    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }
}

void sub_73EF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    if ((*(v13 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v13 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v13);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_73EFB0@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_73F070(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_73F08C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = sub_3AF6B4(a2);
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = a3;
  a1[4] = a4;
  return a1;
}

void sub_73F0E4(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, size_t *a5@<X8>)
{
  v10 = sub_4D1F50(a2, a3);
  v11 = *a1;
  v12 = *(v10 + 32);
  v13 = v12 & 0xFFFFFFFFFFFFFFLL;
  v14 = sub_2B51D8(*a1, v12 & 0xFFFFFFFFFFFFLL);
  v75 = a4;
  if (*(v11 + 7772) == 1)
  {
    v15 = sub_30C50C(v11 + 3896, v12, 0);
    v16 = &v15[-*v15];
    if (*v16 < 5u)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v16 + 2);
      if (v17)
      {
        v17 += &v15[*&v15[v17]];
      }
    }

    v18 = v17 + ((v12 >> 30) & 0x3FFFC) + 4 + *(v17 + ((v12 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v18 = 0;
  }

  v78[0] = v14;
  v78[1] = v18;
  v78[2] = sub_31D7E8(v11, v12 & 0xFFFFFFFFFFFFLL, 1);
  v78[3] = v19;
  v20 = a3 + 1;
  v78[4] = v13;
  v21 = sub_4D1F50(a2, a3 + 1);
  v22 = *a1;
  v77 = v21;
  v23 = *(v21 + 32);
  v24 = sub_2B51D8(*a1, v23 & 0xFFFFFFFFFFFFLL);
  if (*(v22 + 7772) == 1)
  {
    v25 = sub_30C50C(v22 + 3896, v23, 0);
    v26 = &v25[-*v25];
    if (*v26 < 5u)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(v26 + 2);
      if (v27)
      {
        v27 += &v25[*&v25[v27]];
      }
    }

    v74 = v27 + ((v23 >> 30) & 0x3FFFC) + 4 + *(v27 + ((v23 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v74 = 0;
  }

  v72 = sub_31D7E8(v22, v23 & 0xFFFFFFFFFFFFLL, 1);
  v73 = v28;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v29 = (v14 - *v14);
  v30 = *v29;
  if (v30 >= 0x2F)
  {
    v31 = v29[23];
    if (v29[23])
    {
      v32 = *(v14 + v29[23]);
      v33 = v32 > 0x36;
      v34 = (1 << v32) & 0x44000000000008;
      if (!v33 && v34 != 0)
      {
        LODWORD(v36) = 0;
        if (a3)
        {
          goto LABEL_35;
        }

LABEL_31:
        v40 = *(v14 + v31);
        v33 = v40 > 0x36;
        v41 = (1 << v40) & 0x44000000000008;
        if (!v33 && v41 != 0)
        {
LABEL_35:
          v43 = sub_6A9E6C(a1[4], v10) & (v36 ^ 1);
          if (!v75)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }
  }

  v37 = (v24 - *v24);
  if (*v37 >= 0x2Fu && (v38 = v37[23]) != 0 && (v39 = *(v24 + v38), v39 <= 0x36))
  {
    v36 = 0x44000000000008uLL >> v39;
    if (a3)
    {
      goto LABEL_35;
    }
  }

  else
  {
    LODWORD(v36) = 0;
    if (a3)
    {
      goto LABEL_35;
    }
  }

  if (v30 >= 0x2F)
  {
    v31 = v29[23];
    if (v29[23])
    {
      goto LABEL_31;
    }
  }

LABEL_37:
  LOBYTE(v43) = 0;
  if (!v75)
  {
    goto LABEL_39;
  }

LABEL_38:
  if (!(v43 & 1 | !sub_6A9E6C(a1[4], v77)))
  {
    sub_73F798(a1, v78, a5, 0);
  }

LABEL_39:
  sub_31B8F4(*a1, v78, a5);
  sub_70E6E8(a1[3], v78, a5);
  v76 = v24;
  v44 = a5[1];
  v45 = sub_4D1DC0(a2);
  if (v20 <= v45)
  {
    v46 = v45;
  }

  else
  {
    v46 = a3 + 1;
  }

  if (v20 < v45)
  {
    while (1)
    {
      v48 = sub_4D1F50(a2, v20);
      v44 = *a5;
      v49 = a5[1];
      if (*a5 != v49)
      {
        while (*(v48 + 32) != *(v44 + 32) || (HIDWORD(*(v48 + 32)) & 0xFFFFFF) != (*(v44 + 36) & 0xFFFFFF))
        {
          v44 += 40;
          if (v44 == v49)
          {
            goto LABEL_48;
          }
        }
      }

      if (v44 != v49)
      {
        break;
      }

LABEL_48:
      if (++v20 == v46)
      {
        v47 = -1;
        v44 = a5[1];
        if (*(a1[2] + 872) == 1)
        {
          goto LABEL_59;
        }

        goto LABEL_67;
      }
    }

    v47 = v20 + 1;
    if (*(a1[2] + 872) != 1)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v47 = -1;
    if (*(a1[2] + 872) != 1)
    {
      goto LABEL_67;
    }
  }

LABEL_59:
  if (v44 == a5[1] && sub_6A9E6C(a1[4], v77))
  {
    v51 = sub_7406B8(a1, a2, a3, a5);
    if (v51 != -1)
    {
      v52 = sub_4D1F50(a2, v51);
      v44 = *a5;
      v53 = a5[1];
      if (*a5 != v53)
      {
        while ((*(v44 + 32) & 0xFFFFFFFFFFFFFFLL) != (*(v52 + 32) & 0xFFFFFFFFFFFFFFLL))
        {
          v44 += 40;
          if (v44 == v53)
          {
            v44 = a5[1];
            break;
          }
        }
      }

      v47 = v51 + 1;
    }
  }

LABEL_67:
  if ((v44 == a5[1]) | sub_740E60(a1, a2, a3, v47) & 1 || (v55 = a3 + 2, v55 < sub_4D1DC0(a2)) && v47 != -1 && ((v56 = (v76 - *v76), *v56 < 0x2Fu) || (v57 = v56[23]) == 0 || ((v58 = *(v76 + v57), v33 = v58 > 0x36, v59 = (1 << v58) & 0x44000000000008, !v33) ? (v60 = v59 == 0) : (v60 = 1), v60)) && sub_6A9E6C(a1[4], v77) && (sub_4D0560(), v62 = v61, v64 = v63, sub_4D0560(), sub_746180(v62, v55 + v64, v66, v65 + v47)))
  {
    if (sub_6A9E6C(a1[4], v77))
    {
      sub_31B8F4(*a1, v78, a5);
      sub_70E6E8(a1[3], v78, a5);
      v44 = *a5;
      v54 = a5[1];
      if (*a5 != v54)
      {
        while ((*(v44 + 32) & 0xFFFFFFFFFFFFFFLL) != (v23 & 0xFFFFFFFFFFFFFFLL))
        {
          v44 += 40;
          if (v44 == v54)
          {
            v44 = a5[1];
            break;
          }
        }
      }
    }
  }

  if (v44 == a5[1])
  {
    v67 = *a5;
    a5[1] = *a5;
    v68 = a5[2];
    if (v67 >= v68)
    {
      v69 = 0xCCCCCCCCCCCCCCCDLL * ((v68 - v67) >> 3);
      v70 = 2 * v69;
      if (2 * v69 <= 1)
      {
        v70 = 1;
      }

      if (v69 >= 0x333333333333333)
      {
        v71 = 0x666666666666666;
      }

      else
      {
        v71 = v70;
      }

      if (v71 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    *v67 = v76;
    v67[1] = v74;
    v67[2] = v72;
    v67[3] = v73;
    v67[4] = v23 & 0xFFFFFFFFFFFFFFLL;
    a5[1] = (v67 + 5);
  }
}

void sub_73F75C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_73F798(uint64_t *a1, uint64_t a2, size_t *a3, int a4)
{
  a3[1] = *a3;
  memset(v5, 0, 24);
  *&v4 = 0;
  sub_741450(v5, a2, &v4);
  operator new();
}

void sub_74052C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27)
{
  v29 = *(v27 - 128);
  if (!v29)
  {
    _Unwind_Resume(exception_object);
  }

  *(v27 - 120) = v29;
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

void sub_740664(uint64_t *a1, uint64_t a2, __int128 **a3)
{
  sub_31B8F4(*a1, a2, a3);
  v6 = a1[3];

  sub_70E6E8(v6, a2, a3);
}

unint64_t sub_7406B8(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_4D1F50(a2, a3);
  v9 = *a1;
  v10 = *(v8 + 32);
  v11 = sub_2B51D8(*a1, v10 & 0xFFFFFFFFFFFFLL);
  if (*(v9 + 7772) == 1)
  {
    v12 = sub_30C50C(v9 + 3896, v10, 0);
    v13 = &v12[-*v12];
    if (*v13 < 5u)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v13 + 2);
      if (v14)
      {
        v14 += &v12[*&v12[v14]];
      }
    }

    v15 = v14 + ((v10 >> 30) & 0x3FFFC) + 4 + *(v14 + ((v10 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v15 = 0;
  }

  v79[0] = v11;
  v79[1] = v15;
  v79[2] = sub_31D7E8(v9, v10 & 0xFFFFFFFFFFFFLL, 1);
  v79[3] = v16;
  v17 = a3 + 1;
  v79[4] = v10 & 0xFFFFFFFFFFFFFFLL;
  v18 = sub_4D1DC0(a2);
  if (a3 + 1 > v18)
  {
    v19 = a3 + 1;
  }

  else
  {
    v19 = v18;
  }

  if (v17 >= v18)
  {
    return -1;
  }

  v20 = 0;
  while (1)
  {
    v21 = sub_4D1F50(a2, v17);
    if (!sub_6A9E6C(a1[4], v21))
    {
      break;
    }

    v20 += sub_4D23F8(a2, v17++, v22);
    if (v19 == v17)
    {
      return -1;
    }
  }

  v23 = *(v21 + 32);
  v24 = *(v8 + 32);
  if (v23 == v24 && WORD2(v23) == WORD2(v24) && BYTE6(v23) == BYTE6(v24))
  {
    return -1;
  }

  v25 = a1[3];
  v26 = *a1;
  v27 = sub_2B51D8(*a1, v24 & 0xFFFFFFFFFFFFLL);
  v70 = a4;
  if (*(v26 + 7772) == 1)
  {
    v28 = sub_30C50C(v26 + 3896, v24, 0);
    v29 = &v28[-*v28];
    if (*v29 < 5u)
    {
      v30 = 0;
    }

    else
    {
      v30 = *(v29 + 2);
      if (v30)
      {
        v30 += &v28[*&v28[v30]];
      }
    }

    v31 = v30 + ((v24 >> 30) & 0x3FFFC) + 4 + *(v30 + ((v24 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v31 = 0;
  }

  *&v76 = v27;
  *(&v76 + 1) = v31;
  *&v77 = sub_31D7E8(v26, v24 & 0xFFFFFFFFFFFFLL, 1);
  *(&v77 + 1) = v32;
  v78 = v24 & 0xFFFFFFFFFFFFFFLL;
  v33 = *a1;
  v34 = *(v21 + 32);
  v35 = sub_2B51D8(*a1, v34 & 0xFFFFFFFFFFFFLL);
  if (*(v33 + 7772) == 1)
  {
    v36 = sub_30C50C(v33 + 3896, v34, 0);
    v37 = &v36[-*v36];
    if (*v37 < 5u)
    {
      v38 = 0;
    }

    else
    {
      v38 = *(v37 + 2);
      if (v38)
      {
        v38 += &v36[*&v36[v38]];
      }
    }

    v39 = v38 + ((v34 >> 30) & 0x3FFFC) + 4 + *(v38 + ((v34 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v39 = 0;
  }

  v71 = v35;
  v72 = v39;
  v73 = sub_31D7E8(v33, v34 & 0xFFFFFFFFFFFFLL, 1);
  v74 = v40;
  v75 = v34 & 0xFFFFFFFFFFFFFFLL;
  if (sub_71A018(v25, &v76, &v71))
  {
    return -1;
  }

  v42 = *a1;
  v43 = *(v21 + 32);
  v44 = sub_2B51D8(*a1, v43 & 0xFFFFFFFFFFFFLL);
  if (*(v42 + 7772) == 1)
  {
    v45 = sub_30C50C(v42 + 3896, v43, 0);
    v46 = &v45[-*v45];
    v47 = v70;
    if (*v46 < 5u)
    {
      v48 = 0;
    }

    else
    {
      v48 = *(v46 + 2);
      if (v48)
      {
        v48 += &v45[*&v45[v48]];
      }
    }

    v49 = v48 + ((v43 >> 30) & 0x3FFFC) + 4 + *(v48 + ((v43 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v49 = 0;
    v47 = v70;
  }

  v50 = sub_31D7E8(v42, v43 & 0xFFFFFFFFFFFFLL, 1);
  *&v76 = v44;
  *(&v76 + 1) = v49;
  *&v77 = v50;
  *(&v77 + 1) = v51;
  v78 = v43 & 0xFFFFFFFFFFFFFFLL;
  v52 = v47[1];
  if (*v47 != v52)
  {
    if (*(a1[2] + 880) >= v20)
    {
      v53 = v20;
    }

    else
    {
      v53 = *(a1[2] + 880);
    }

    sub_31CFDC(*a1, *v47, &v76, v53);
  }

  v54 = v70;
  v55 = v70[2];
  if (v52 >= v55)
  {
    v59 = *v70;
    v60 = 0xCCCCCCCCCCCCCCCDLL * ((v52 - *v70) >> 3);
    v61 = v60 + 1;
    if (v60 + 1 > 0x666666666666666)
    {
      sub_1794();
    }

    v62 = 0xCCCCCCCCCCCCCCCDLL * ((v55 - v59) >> 3);
    if (2 * v62 > v61)
    {
      v61 = 2 * v62;
    }

    if (v62 >= 0x333333333333333)
    {
      v63 = 0x666666666666666;
    }

    else
    {
      v63 = v61;
    }

    if (v63)
    {
      if (v63 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v54 = v70;
    v64 = 8 * ((v52 - *v70) >> 3);
    v65 = v77;
    *v64 = v76;
    *(v64 + 16) = v65;
    *(v64 + 32) = v78;
    v58 = (40 * v60 + 40);
    memcpy((40 * v60 - (v52 - v59)), v59, v52 - v59);
    *v70 = 40 * v60 - (v52 - v59);
    v70[1] = v58;
    v70[2] = 0;
    if (v59)
    {
      operator delete(v59);
    }
  }

  else
  {
    v56 = v76;
    v57 = v77;
    *(v52 + 32) = v78;
    *v52 = v56;
    *(v52 + 16) = v57;
    v58 = (v52 + 40);
  }

  v66 = *v54;
  v67 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v58 - *v54) >> 3));
  v68 = v58 == *v54;
  v54[1] = v58;
  v71 = a1;
  v72 = v79;
  if (v68)
  {
    v69 = 0;
  }

  else
  {
    v69 = v67;
  }

  sub_7463A4(v66, v58, &v71, v69, 1);
  return v17;
}

void sub_740E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_740E60(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1[2] + 370) != 1 || a3 == -1 || a4 == -1)
  {
    return 0;
  }

  v6 = a2;
  v8 = a3 + 1;
  v9 = 0.0;
  if (a3 + 1 > a4)
  {
    v10 = a3 + 1;
  }

  else
  {
    v10 = a4;
  }

  v73 = v10;
  if (a3 + 1 < a4)
  {
    v11 = a3;
    v70 = a4 - 1;
    v71 = 0;
    v12 = 0.0;
    do
    {
      v13 = sub_4D1F50(v6, v8);
      if (*(a1[2] + 384) == 1 && (sub_6AA264(a1[4], v13) & 1) != 0)
      {
        goto LABEL_14;
      }

      v14 = (*v13 - **v13);
      if (*v14 >= 0x2Fu)
      {
        v15 = v14[23];
        if (v15)
        {
          if (*(*v13 + v15) == 14)
          {
            goto LABEL_14;
          }
        }
      }

      v16 = a1[4];
      v17 = *a1;
      v18 = v13[4];
      v19 = sub_2B51D8(*a1, v18 & 0xFFFFFFFFFFFFLL);
      if (*(v17 + 7772) == 1)
      {
        v20 = sub_30C50C(v17 + 3896, v18, 0);
        v21 = &v20[-*v20];
        if (*v21 < 5u)
        {
          v22 = 0;
        }

        else
        {
          v22 = *(v21 + 2);
          if (v22)
          {
            v22 += &v20[*&v20[v22]];
          }
        }

        v23 = v22 + ((v18 >> 30) & 0x3FFFC) + 4 + *(v22 + ((v18 >> 30) & 0x3FFFC) + 4);
      }

      else
      {
        v23 = 0;
      }

      v24 = sub_31D7E8(v17, v18 & 0xFFFFFFFFFFFFLL, 1);
      v75 = v19;
      v76 = v23;
      v77 = v24;
      v78 = v25;
      v79 = v18 & 0xFFFFFFFFFFFFFFLL;
      if (sub_6A9434(v16, &v75))
      {
        v6 = a2;
        goto LABEL_14;
      }

      v6 = a2;
      v26 = sub_4D1F50(a2, v11);
      v27 = (*v26 - **v26);
      v28 = *v27;
      if (*(v26 + 38))
      {
        v29 = v71;
        if (v28 >= 0x49)
        {
          v30 = v27[36];
          if (v30)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        v29 = v71;
        if (v28 >= 0x4B)
        {
          v30 = v27[37];
          if (v30)
          {
LABEL_34:
            v31 = *(*v26 + v30);
            v32 = *(v13 + 38);
            v33 = *v13;
            v34 = (*v13 - **v13);
            v35 = *v34;
            if (*(v13 + 38))
            {
              goto LABEL_39;
            }

            goto LABEL_35;
          }
        }
      }

      v31 = -1;
      v32 = *(v13 + 38);
      v33 = *v13;
      v34 = (*v13 - **v13);
      v35 = *v34;
      if (*(v13 + 38))
      {
LABEL_39:
        if (v35 >= 0x4B)
        {
          v36 = v34[37];
          if (v34[37])
          {
            goto LABEL_41;
          }
        }

        goto LABEL_42;
      }

LABEL_35:
      if (v35 >= 0x49)
      {
        v36 = v34[36];
        if (v34[36])
        {
LABEL_41:
          v37 = *&v33[v36];
          goto LABEL_43;
        }
      }

LABEL_42:
      v37 = 0xFFFF;
LABEL_43:
      v38 = v31 + 18000;
      v39 = v31 - 18000;
      if ((v38 >> 5) < 0x465u)
      {
        v39 = v38;
      }

      v40 = v37 - v39;
      if (v40 > 18000)
      {
        v40 -= 36000;
      }

      if (v40 < -17999)
      {
        v40 += 36000;
      }

      v41 = v40 / 100.0;
      v9 = v9 + v41;
      if (v8 >= v70)
      {
        goto LABEL_71;
      }

      if (!v32)
      {
        if (v35 < 0x49)
        {
          v42 = 0xFFFF;
LABEL_63:
          v44 = -1;
          goto LABEL_64;
        }

        if (v34[36])
        {
          v42 = *&v33[v34[36]];
          if (v35 < 0x4B)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v42 = 0xFFFF;
          if (v35 < 0x4B)
          {
            goto LABEL_63;
          }
        }

        v43 = v34[37];
        if (!v43)
        {
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      if (v35 >= 0x4B)
      {
        if (v34[37])
        {
          v42 = *&v33[v34[37]];
          v43 = v34[36];
          if (!v43)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v42 = 0xFFFF;
          v43 = v34[36];
          if (!v43)
          {
            goto LABEL_63;
          }
        }

        goto LABEL_61;
      }

      v42 = 0xFFFF;
      v44 = -1;
      if (v35 >= 0x49)
      {
        v43 = v34[36];
        if (!v43)
        {
          goto LABEL_63;
        }

LABEL_61:
        v44 = *&v33[v43];
      }

LABEL_64:
      v45 = v44 + 18000;
      if (((v44 + 18000) >> 5) >= 0x465u)
      {
        v45 = v44 - 18000;
      }

      v46 = v45 - v42;
      if (v46 > 18000)
      {
        v46 -= 36000;
      }

      if (v46 < -17999)
      {
        v46 += 36000;
      }

      v9 = v9 + v46 / 100.0;
LABEL_71:
      v47 = fabs(v41);
      v48 = a1[2];
      if (v47 <= *(v48 + 16))
      {
        v41 = v12;
      }

      else
      {
        if (v29 > *(v48 + 376) && v12 != 0.0 && v12 <= 0.0 == v41 > 0.0)
        {
          return 1;
        }

        v29 = 0;
      }

      v71 = sub_4D23F8(a2, v8, v47) + v29;
      v11 = v8;
      v12 = v41;
LABEL_14:
      ++v8;
    }

    while (v73 != v8);
  }

  if (fabs(v9) <= 180.0)
  {
    return 0;
  }

  v49 = *a1;
  v50 = *(sub_4D1F50(v6, a3) + 32);
  v51 = sub_2B51D8(v49, v50 & 0xFFFFFFFFFFFFLL);
  if (*(v49 + 7772) == 1)
  {
    v52 = sub_30C50C(v49 + 3896, v50, 0);
    v53 = &v52[-*v52];
    if (*v53 < 5u)
    {
      v54 = 0;
    }

    else
    {
      v54 = *(v53 + 2);
      if (v54)
      {
        v54 += &v52[*&v52[v54]];
      }
    }

    v55 = v54 + ((v50 >> 30) & 0x3FFFC) + 4 + *(v54 + ((v50 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v55 = 0;
  }

  v56 = sub_31D7E8(v49, v50 & 0xFFFFFFFFFFFFLL, 1);
  v75 = v51;
  v76 = v55;
  v77 = v56;
  v78 = v57;
  v79 = v50 & 0xFFFFFFFFFFFFFFLL;
  v58 = *a1;
  v59 = *(sub_4D1F50(v6, a4 - 1) + 32);
  v60 = sub_2B51D8(v58, v59 & 0xFFFFFFFFFFFFLL);
  if (*(v58 + 7772) == 1)
  {
    v61 = sub_30C50C(v58 + 3896, v59, 0);
    v62 = &v61[-*v61];
    if (*v62 < 5u)
    {
      v63 = 0;
    }

    else
    {
      v63 = *(v62 + 2);
      if (v63)
      {
        v63 += &v61[*&v61[v63]];
      }
    }

    v64 = (v63 + ((v59 >> 30) & 0x3FFFC) + 4 + *(v63 + ((v59 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v64 = 0;
  }

  v74[0] = v60;
  v74[1] = v64;
  v74[2] = sub_31D7E8(v58, v59 & 0xFFFFFFFFFFFFLL, 1);
  v74[3] = v65;
  v74[4] = (v59 & 0xFFFFFFFFFFFFFFLL);
  v66 = sub_7102E4(a1[3], &v75, v74);
  result = 1;
  if (v66)
  {
    return 0;
  }

  return result;
}

__n128 sub_741450(char **a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v9 = *a1;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v11 = v10 + 1;
    if (v10 + 1 > 0x555555555555555)
    {
      sub_1794();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v9) >> 4);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x2AAAAAAAAAAAAAALL)
    {
      v13 = 0x555555555555555;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0x555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v14 = 16 * ((v4 - *a1) >> 4);
    v15 = *(a2 + 16);
    *v14 = *a2;
    *(v14 + 16) = v15;
    v16 = *a3;
    *(v14 + 32) = *(a2 + 32);
    *(v14 + 40) = v16;
    v8 = (48 * v10 + 48);
    v17 = (48 * v10 - (v4 - v9));
    memcpy((v14 - (v4 - v9)), v9, v4 - v9);
    *a1 = v17;
    a1[1] = v8;
    a1[2] = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    result = *a2;
    v7 = *(a2 + 16);
    *(v4 + 4) = *(a2 + 32);
    *v4 = result;
    *(v4 + 1) = v7;
    *(v4 + 5) = *a3;
    v8 = v4 + 48;
  }

  a1[1] = v8;
  v18 = *a1;
  v19 = v8 - *a1;
  if (v19 >= 49)
  {
    v20 = (0xAAAAAAAAAAAAAAABLL * (v19 >> 4) - 2) >> 1;
    v21 = &v18[48 * v20];
    v22 = *(v8 - 1);
    if (*(v21 + 5) > v22)
    {
      v23 = v8 - 48;
      v29 = *(v8 - 2);
      v27 = *(v8 - 3);
      v28 = *(v8 - 2);
      do
      {
        v24 = v23;
        v23 = v21;
        v25 = *v21;
        v26 = *(v21 + 1);
        *(v24 + 4) = *(v21 + 4);
        *v24 = v25;
        *(v24 + 1) = v26;
        *(v24 + 5) = *(v21 + 5);
        if (!v20)
        {
          break;
        }

        v20 = (v20 - 1) >> 1;
        v21 = &v18[48 * v20];
      }

      while (*(v21 + 5) > v22);
      result = v27;
      *v23 = v27;
      *(v23 + 1) = v28;
      *(v23 + 4) = v29;
      *(v23 + 5) = v22;
    }
  }

  return result;
}

unint64_t sub_741648(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4));
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

  return *a1 + 48 * a2;
}

void sub_741784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_741864(void *a1, int **a2, int **a3)
{
  if (*(a1[2] + 912) != 1)
  {
    return 0;
  }

  v3 = *a3;
  v4 = (*a3 - **a3);
  v5 = *v4;
  if (*(a3 + 38))
  {
    if (v5 < 0x9B || !v4[77] || (*&v3[v4[77]] & 2) == 0)
    {
      goto LABEL_11;
    }

    return 1;
  }

  if (v5 >= 0x9B && v4[77] && (*&v3[v4[77]] & 1) != 0)
  {
    return 1;
  }

LABEL_11:
  v7 = *a2;
  v8 = (*a2 - **a2);
  v9 = *v8;
  if (v9 >= 0x2F && v8[23])
  {
    v10 = *(v7 + v8[23]);
    if (v5 < 0x2F)
    {
LABEL_19:
      if (v10 != 32)
      {
        return 0;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v10 = 32;
    if (v5 < 0x2F)
    {
      goto LABEL_19;
    }
  }

  if (!v4[23])
  {
    goto LABEL_19;
  }

  if (v10 != v3[v4[23]])
  {
    return 0;
  }

LABEL_20:
  if (v9 < 0x43 || (v11 = v8[33]) == 0)
  {
    v12 = 0;
    if (v5 < 0x43)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v12 = *(v7 + v11);
  if (v5 >= 0x43)
  {
LABEL_25:
    v13 = v4[33];
    if (!v13)
    {
      goto LABEL_28;
    }

    if (v12 == v3[v13])
    {
      goto LABEL_29;
    }

    return 0;
  }

LABEL_28:
  if (v12)
  {
    return 0;
  }

LABEL_29:
  if (fabs(sub_70E2E0(a1[3], a2, a3)) < *(a1[2] + 104))
  {
    return 0;
  }

  v17 = a1[1];
  v24 = sub_3116D0(a2);
  if (sub_420B0C(v17, &v24))
  {
    return 0;
  }

  v18 = (*a2 - **a2);
  if (*v18 >= 0x9Bu && (v19 = v18[77]) != 0)
  {
    v20 = (*(*a2 + v19) >> 2) & 1;
  }

  else
  {
    v20 = 0;
  }

  v21 = (*a3 - **a3);
  if (*v21 >= 0x9Bu && (v22 = v21[77]) != 0)
  {
    v23 = (*(*a3 + v22) >> 2) & 1;
  }

  else
  {
    v23 = 0;
  }

  return v20 ^ v23 ^ 1u;
}

void sub_741A8C(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, size_t *a5@<X8>)
{
  v10 = sub_4D1F50(a2, a3);
  v11 = *a1;
  v12 = *(v10 + 32);
  v13 = v12 & 0xFFFFFFFFFFFFFFLL;
  v14 = sub_2B51D8(*a1, v12 & 0xFFFFFFFFFFFFLL);
  v75 = a4;
  if (*(v11 + 7772) == 1)
  {
    v15 = sub_30C50C(v11 + 3896, v12, 0);
    v16 = &v15[-*v15];
    if (*v16 < 5u)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v16 + 2);
      if (v17)
      {
        v17 += &v15[*&v15[v17]];
      }
    }

    v18 = v17 + ((v12 >> 30) & 0x3FFFC) + 4 + *(v17 + ((v12 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v18 = 0;
  }

  v78[0] = v14;
  v78[1] = v18;
  v78[2] = sub_31D7E8(v11, v12 & 0xFFFFFFFFFFFFLL, 1);
  v78[3] = v19;
  v20 = a3 + 1;
  v78[4] = v13;
  v21 = sub_4D1F50(a2, a3 + 1);
  v22 = *a1;
  v77 = v21;
  v23 = *(v21 + 32);
  v24 = sub_2B51D8(*a1, v23 & 0xFFFFFFFFFFFFLL);
  if (*(v22 + 7772) == 1)
  {
    v25 = sub_30C50C(v22 + 3896, v23, 0);
    v26 = &v25[-*v25];
    if (*v26 < 5u)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(v26 + 2);
      if (v27)
      {
        v27 += &v25[*&v25[v27]];
      }
    }

    v74 = v27 + ((v23 >> 30) & 0x3FFFC) + 4 + *(v27 + ((v23 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v74 = 0;
  }

  v72 = sub_31D7E8(v22, v23 & 0xFFFFFFFFFFFFLL, 1);
  v73 = v28;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v29 = (v14 - *v14);
  v30 = *v29;
  if (v30 >= 0x2F)
  {
    v31 = v29[23];
    if (v29[23])
    {
      v32 = *(v14 + v29[23]);
      v33 = v32 > 0x36;
      v34 = (1 << v32) & 0x44000000000008;
      if (!v33 && v34 != 0)
      {
        LODWORD(v36) = 0;
        if (a3)
        {
          goto LABEL_35;
        }

LABEL_31:
        v40 = *(v14 + v31);
        v33 = v40 > 0x36;
        v41 = (1 << v40) & 0x44000000000008;
        if (!v33 && v41 != 0)
        {
LABEL_35:
          v43 = sub_6ABAB4(a1[4], v10) & (v36 ^ 1);
          if (!v75)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }
  }

  v37 = (v24 - *v24);
  if (*v37 >= 0x2Fu && (v38 = v37[23]) != 0 && (v39 = *(v24 + v38), v39 <= 0x36))
  {
    v36 = 0x44000000000008uLL >> v39;
    if (a3)
    {
      goto LABEL_35;
    }
  }

  else
  {
    LODWORD(v36) = 0;
    if (a3)
    {
      goto LABEL_35;
    }
  }

  if (v30 >= 0x2F)
  {
    v31 = v29[23];
    if (v29[23])
    {
      goto LABEL_31;
    }
  }

LABEL_37:
  LOBYTE(v43) = 0;
  if (!v75)
  {
    goto LABEL_39;
  }

LABEL_38:
  if (!(v43 & 1 | !sub_6ABAB4(a1[4], v77)))
  {
    sub_742140(a1, v78, a5, 0);
  }

LABEL_39:
  sub_31B8F4(*a1, v78, a5);
  sub_70E6E8(a1[3], v78, a5);
  v76 = v24;
  v44 = a5[1];
  v45 = sub_4D1DC0(a2);
  if (v20 <= v45)
  {
    v46 = v45;
  }

  else
  {
    v46 = a3 + 1;
  }

  if (v20 < v45)
  {
    while (1)
    {
      v48 = sub_4D1F50(a2, v20);
      v44 = *a5;
      v49 = a5[1];
      if (*a5 != v49)
      {
        while (*(v48 + 32) != *(v44 + 32) || (HIDWORD(*(v48 + 32)) & 0xFFFFFF) != (*(v44 + 36) & 0xFFFFFF))
        {
          v44 += 40;
          if (v44 == v49)
          {
            goto LABEL_48;
          }
        }
      }

      if (v44 != v49)
      {
        break;
      }

LABEL_48:
      if (++v20 == v46)
      {
        v47 = -1;
        v44 = a5[1];
        if (*(a1[2] + 872) == 1)
        {
          goto LABEL_59;
        }

        goto LABEL_67;
      }
    }

    v47 = v20 + 1;
    if (*(a1[2] + 872) != 1)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v47 = -1;
    if (*(a1[2] + 872) != 1)
    {
      goto LABEL_67;
    }
  }

LABEL_59:
  if (v44 == a5[1] && sub_6ABAB4(a1[4], v77))
  {
    v51 = sub_74300C(a1, a2, a3, a5);
    if (v51 != -1)
    {
      v52 = sub_4D1F50(a2, v51);
      v44 = *a5;
      v53 = a5[1];
      if (*a5 != v53)
      {
        while ((*(v44 + 32) & 0xFFFFFFFFFFFFFFLL) != (*(v52 + 32) & 0xFFFFFFFFFFFFFFLL))
        {
          v44 += 40;
          if (v44 == v53)
          {
            v44 = a5[1];
            break;
          }
        }
      }

      v47 = v51 + 1;
    }
  }

LABEL_67:
  if ((v44 == a5[1]) | sub_7437B4(a1, a2, a3, v47) & 1 || (v55 = a3 + 2, v55 < sub_4D1DC0(a2)) && v47 != -1 && ((v56 = (v76 - *v76), *v56 < 0x2Fu) || (v57 = v56[23]) == 0 || ((v58 = *(v76 + v57), v33 = v58 > 0x36, v59 = (1 << v58) & 0x44000000000008, !v33) ? (v60 = v59 == 0) : (v60 = 1), v60)) && sub_6ABAB4(a1[4], v77) && (sub_4D0560(), v62 = v61, v64 = v63, sub_4D0560(), sub_746180(v62, v55 + v64, v66, v65 + v47)))
  {
    if (sub_6ABAB4(a1[4], v77))
    {
      sub_31B8F4(*a1, v78, a5);
      sub_70E6E8(a1[3], v78, a5);
      v44 = *a5;
      v54 = a5[1];
      if (*a5 != v54)
      {
        while ((*(v44 + 32) & 0xFFFFFFFFFFFFFFLL) != (v23 & 0xFFFFFFFFFFFFFFLL))
        {
          v44 += 40;
          if (v44 == v54)
          {
            v44 = a5[1];
            break;
          }
        }
      }
    }
  }

  if (v44 == a5[1])
  {
    v67 = *a5;
    a5[1] = *a5;
    v68 = a5[2];
    if (v67 >= v68)
    {
      v69 = 0xCCCCCCCCCCCCCCCDLL * ((v68 - v67) >> 3);
      v70 = 2 * v69;
      if (2 * v69 <= 1)
      {
        v70 = 1;
      }

      if (v69 >= 0x333333333333333)
      {
        v71 = 0x666666666666666;
      }

      else
      {
        v71 = v70;
      }

      if (v71 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    *v67 = v76;
    v67[1] = v74;
    v67[2] = v72;
    v67[3] = v73;
    v67[4] = v23 & 0xFFFFFFFFFFFFFFLL;
    a5[1] = (v67 + 5);
  }
}

void sub_742104(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_742140(uint64_t *a1, uint64_t a2, size_t *a3, int a4)
{
  a3[1] = *a3;
  memset(v5, 0, 24);
  *&v4 = 0;
  sub_741450(v5, a2, &v4);
  operator new();
}

void sub_742ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27)
{
  v29 = *(v27 - 128);
  if (!v29)
  {
    _Unwind_Resume(exception_object);
  }

  *(v27 - 120) = v29;
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

unint64_t sub_74300C(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_4D1F50(a2, a3);
  v9 = *a1;
  v10 = *(v8 + 32);
  v11 = sub_2B51D8(*a1, v10 & 0xFFFFFFFFFFFFLL);
  if (*(v9 + 7772) == 1)
  {
    v12 = sub_30C50C(v9 + 3896, v10, 0);
    v13 = &v12[-*v12];
    if (*v13 < 5u)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v13 + 2);
      if (v14)
      {
        v14 += &v12[*&v12[v14]];
      }
    }

    v15 = v14 + ((v10 >> 30) & 0x3FFFC) + 4 + *(v14 + ((v10 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v15 = 0;
  }

  v77[0] = v11;
  v77[1] = v15;
  v77[2] = sub_31D7E8(v9, v10 & 0xFFFFFFFFFFFFLL, 1);
  v77[3] = v16;
  v17 = a3 + 1;
  v77[4] = v10 & 0xFFFFFFFFFFFFFFLL;
  v18 = sub_4D1DC0(a2);
  if (a3 + 1 > v18)
  {
    v19 = a3 + 1;
  }

  else
  {
    v19 = v18;
  }

  if (v17 >= v18)
  {
    return -1;
  }

  v20 = 0;
  while (1)
  {
    v21 = sub_4D1F50(a2, v17);
    if (!sub_6ABAB4(a1[4], v21))
    {
      break;
    }

    v20 += sub_4D23F8(a2, v17++, v22);
    if (v19 == v17)
    {
      return -1;
    }
  }

  v23 = *(v21 + 32);
  v24 = *(v8 + 32);
  if (v23 == v24 && WORD2(v23) == WORD2(v24) && BYTE6(v23) == BYTE6(v24))
  {
    return -1;
  }

  v25 = *a1;
  v26 = sub_2B51D8(*a1, v24 & 0xFFFFFFFFFFFFLL);
  v68 = a4;
  if (*(v25 + 7772) == 1)
  {
    v27 = sub_30C50C(v25 + 3896, v24, 0);
    v28 = &v27[-*v27];
    if (*v28 < 5u)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(v28 + 2);
      if (v29)
      {
        v29 += &v27[*&v27[v29]];
      }
    }

    v30 = v29 + ((v24 >> 30) & 0x3FFFC) + 4 + *(v29 + ((v24 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v30 = 0;
  }

  *&v74 = v26;
  *(&v74 + 1) = v30;
  *&v75 = sub_31D7E8(v25, v24 & 0xFFFFFFFFFFFFLL, 1);
  *(&v75 + 1) = v31;
  v76 = v24 & 0xFFFFFFFFFFFFFFLL;
  v32 = *a1;
  v33 = *(v21 + 32);
  v34 = sub_2B51D8(*a1, v33 & 0xFFFFFFFFFFFFLL);
  if (*(v32 + 7772) == 1)
  {
    v35 = sub_30C50C(v32 + 3896, v33, 0);
    v36 = &v35[-*v35];
    if (*v36 < 5u)
    {
      v37 = 0;
    }

    else
    {
      v37 = *(v36 + 2);
      if (v37)
      {
        v37 += &v35[*&v35[v37]];
      }
    }

    v38 = v37 + ((v33 >> 30) & 0x3FFFC) + 4 + *(v37 + ((v33 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v38 = 0;
  }

  v69 = v34;
  v70 = v38;
  v71 = sub_31D7E8(v32, v33 & 0xFFFFFFFFFFFFLL, 1);
  v72 = v39;
  v73 = v33 & 0xFFFFFFFFFFFFFFLL;
  if (sub_394BD0())
  {
    return -1;
  }

  v41 = *a1;
  v42 = *(v21 + 32);
  v43 = sub_2B51D8(*a1, v42 & 0xFFFFFFFFFFFFLL);
  if (*(v41 + 7772) == 1)
  {
    v44 = sub_30C50C(v41 + 3896, v42, 0);
    v45 = &v44[-*v44];
    v46 = v68;
    if (*v45 < 5u)
    {
      v47 = 0;
    }

    else
    {
      v47 = *(v45 + 2);
      if (v47)
      {
        v47 += &v44[*&v44[v47]];
      }
    }

    v48 = v47 + ((v42 >> 30) & 0x3FFFC) + 4 + *(v47 + ((v42 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v48 = 0;
    v46 = v68;
  }

  *&v74 = v43;
  *(&v74 + 1) = v48;
  *&v75 = sub_31D7E8(v41, v42 & 0xFFFFFFFFFFFFLL, 1);
  *(&v75 + 1) = v49;
  v76 = v42 & 0xFFFFFFFFFFFFFFLL;
  v50 = v46[1];
  if (*v46 != v50)
  {
    if (*(a1[2] + 880) >= v20)
    {
      v51 = v20;
    }

    else
    {
      v51 = *(a1[2] + 880);
    }

    sub_31CFDC(*a1, *v46, &v74, v51);
  }

  v52 = v68;
  v53 = v68[2];
  if (v50 >= v53)
  {
    v57 = *v68;
    v58 = 0xCCCCCCCCCCCCCCCDLL * ((v50 - *v68) >> 3);
    v59 = v58 + 1;
    if (v58 + 1 > 0x666666666666666)
    {
      sub_1794();
    }

    v60 = 0xCCCCCCCCCCCCCCCDLL * ((v53 - v57) >> 3);
    if (2 * v60 > v59)
    {
      v59 = 2 * v60;
    }

    if (v60 >= 0x333333333333333)
    {
      v61 = 0x666666666666666;
    }

    else
    {
      v61 = v59;
    }

    if (v61)
    {
      if (v61 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v52 = v68;
    v62 = 8 * ((v50 - *v68) >> 3);
    v63 = v75;
    *v62 = v74;
    *(v62 + 16) = v63;
    *(v62 + 32) = v76;
    v56 = (40 * v58 + 40);
    memcpy((40 * v58 - (v50 - v57)), v57, v50 - v57);
    *v68 = 40 * v58 - (v50 - v57);
    v68[1] = v56;
    v68[2] = 0;
    if (v57)
    {
      operator delete(v57);
    }
  }

  else
  {
    v54 = v74;
    v55 = v75;
    *(v50 + 32) = v76;
    *v50 = v54;
    *(v50 + 16) = v55;
    v56 = (v50 + 40);
  }

  v64 = *v52;
  v65 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v56 - *v52) >> 3));
  v66 = v56 == *v52;
  v52[1] = v56;
  v69 = a1;
  v70 = v77;
  if (v66)
  {
    v67 = 0;
  }

  else
  {
    v67 = v65;
  }

  sub_7463A4(v64, v56, &v69, v67, 1);
  return v17;
}

void sub_743784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7437B4(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1[2] + 370) != 1 || a3 == -1 || a4 == -1)
  {
    return 0;
  }

  v6 = a2;
  v8 = a3 + 1;
  v9 = 0.0;
  if (a3 + 1 > a4)
  {
    v10 = a3 + 1;
  }

  else
  {
    v10 = a4;
  }

  v73 = v10;
  if (a3 + 1 < a4)
  {
    v11 = a3;
    v70 = a4 - 1;
    v71 = 0;
    v12 = 0.0;
    do
    {
      v13 = sub_4D1F50(v6, v8);
      if (*(a1[2] + 384) == 1 && (sub_6AA264(a1[4], v13) & 1) != 0)
      {
        goto LABEL_14;
      }

      v14 = (*v13 - **v13);
      if (*v14 >= 0x2Fu)
      {
        v15 = v14[23];
        if (v15)
        {
          if (*(*v13 + v15) == 14)
          {
            goto LABEL_14;
          }
        }
      }

      v16 = a1[4];
      v17 = *a1;
      v18 = v13[4];
      v19 = sub_2B51D8(*a1, v18 & 0xFFFFFFFFFFFFLL);
      if (*(v17 + 7772) == 1)
      {
        v20 = sub_30C50C(v17 + 3896, v18, 0);
        v21 = &v20[-*v20];
        if (*v21 < 5u)
        {
          v22 = 0;
        }

        else
        {
          v22 = *(v21 + 2);
          if (v22)
          {
            v22 += &v20[*&v20[v22]];
          }
        }

        v23 = v22 + ((v18 >> 30) & 0x3FFFC) + 4 + *(v22 + ((v18 >> 30) & 0x3FFFC) + 4);
      }

      else
      {
        v23 = 0;
      }

      v24 = sub_31D7E8(v17, v18 & 0xFFFFFFFFFFFFLL, 1);
      v75 = v19;
      v76 = v23;
      v77 = v24;
      v78 = v25;
      v79 = v18 & 0xFFFFFFFFFFFFFFLL;
      if (sub_6AB064(v16, &v75))
      {
        v6 = a2;
        goto LABEL_14;
      }

      v6 = a2;
      v26 = sub_4D1F50(a2, v11);
      v27 = (*v26 - **v26);
      v28 = *v27;
      if (*(v26 + 38))
      {
        v29 = v71;
        if (v28 >= 0x49)
        {
          v30 = v27[36];
          if (v30)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        v29 = v71;
        if (v28 >= 0x4B)
        {
          v30 = v27[37];
          if (v30)
          {
LABEL_34:
            v31 = *(*v26 + v30);
            v32 = *(v13 + 38);
            v33 = *v13;
            v34 = (*v13 - **v13);
            v35 = *v34;
            if (*(v13 + 38))
            {
              goto LABEL_39;
            }

            goto LABEL_35;
          }
        }
      }

      v31 = -1;
      v32 = *(v13 + 38);
      v33 = *v13;
      v34 = (*v13 - **v13);
      v35 = *v34;
      if (*(v13 + 38))
      {
LABEL_39:
        if (v35 >= 0x4B)
        {
          v36 = v34[37];
          if (v34[37])
          {
            goto LABEL_41;
          }
        }

        goto LABEL_42;
      }

LABEL_35:
      if (v35 >= 0x49)
      {
        v36 = v34[36];
        if (v34[36])
        {
LABEL_41:
          v37 = *&v33[v36];
          goto LABEL_43;
        }
      }

LABEL_42:
      v37 = 0xFFFF;
LABEL_43:
      v38 = v31 + 18000;
      v39 = v31 - 18000;
      if ((v38 >> 5) < 0x465u)
      {
        v39 = v38;
      }

      v40 = v37 - v39;
      if (v40 > 18000)
      {
        v40 -= 36000;
      }

      if (v40 < -17999)
      {
        v40 += 36000;
      }

      v41 = v40 / 100.0;
      v9 = v9 + v41;
      if (v8 >= v70)
      {
        goto LABEL_71;
      }

      if (!v32)
      {
        if (v35 < 0x49)
        {
          v42 = 0xFFFF;
LABEL_63:
          v44 = -1;
          goto LABEL_64;
        }

        if (v34[36])
        {
          v42 = *&v33[v34[36]];
          if (v35 < 0x4B)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v42 = 0xFFFF;
          if (v35 < 0x4B)
          {
            goto LABEL_63;
          }
        }

        v43 = v34[37];
        if (!v43)
        {
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      if (v35 >= 0x4B)
      {
        if (v34[37])
        {
          v42 = *&v33[v34[37]];
          v43 = v34[36];
          if (!v43)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v42 = 0xFFFF;
          v43 = v34[36];
          if (!v43)
          {
            goto LABEL_63;
          }
        }

        goto LABEL_61;
      }

      v42 = 0xFFFF;
      v44 = -1;
      if (v35 >= 0x49)
      {
        v43 = v34[36];
        if (!v43)
        {
          goto LABEL_63;
        }

LABEL_61:
        v44 = *&v33[v43];
      }

LABEL_64:
      v45 = v44 + 18000;
      if (((v44 + 18000) >> 5) >= 0x465u)
      {
        v45 = v44 - 18000;
      }

      v46 = v45 - v42;
      if (v46 > 18000)
      {
        v46 -= 36000;
      }

      if (v46 < -17999)
      {
        v46 += 36000;
      }

      v9 = v9 + v46 / 100.0;
LABEL_71:
      v47 = fabs(v41);
      v48 = a1[2];
      if (v47 <= *(v48 + 16))
      {
        v41 = v12;
      }

      else
      {
        if (v29 > *(v48 + 376) && v12 != 0.0 && v12 <= 0.0 == v41 > 0.0)
        {
          return 1;
        }

        v29 = 0;
      }

      v71 = sub_4D23F8(a2, v8, v47) + v29;
      v11 = v8;
      v12 = v41;
LABEL_14:
      ++v8;
    }

    while (v73 != v8);
  }

  if (fabs(v9) <= 180.0)
  {
    return 0;
  }

  v49 = *a1;
  v50 = *(sub_4D1F50(v6, a3) + 32);
  v51 = sub_2B51D8(v49, v50 & 0xFFFFFFFFFFFFLL);
  if (*(v49 + 7772) == 1)
  {
    v52 = sub_30C50C(v49 + 3896, v50, 0);
    v53 = &v52[-*v52];
    if (*v53 < 5u)
    {
      v54 = 0;
    }

    else
    {
      v54 = *(v53 + 2);
      if (v54)
      {
        v54 += &v52[*&v52[v54]];
      }
    }

    v55 = v54 + ((v50 >> 30) & 0x3FFFC) + 4 + *(v54 + ((v50 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v55 = 0;
  }

  v56 = sub_31D7E8(v49, v50 & 0xFFFFFFFFFFFFLL, 1);
  v75 = v51;
  v76 = v55;
  v77 = v56;
  v78 = v57;
  v79 = v50 & 0xFFFFFFFFFFFFFFLL;
  v58 = *a1;
  v59 = *(sub_4D1F50(v6, a4 - 1) + 32);
  v60 = sub_2B51D8(v58, v59 & 0xFFFFFFFFFFFFLL);
  if (*(v58 + 7772) == 1)
  {
    v61 = sub_30C50C(v58 + 3896, v59, 0);
    v62 = &v61[-*v61];
    if (*v62 < 5u)
    {
      v63 = 0;
    }

    else
    {
      v63 = *(v62 + 2);
      if (v63)
      {
        v63 += &v61[*&v61[v63]];
      }
    }

    v64 = (v63 + ((v59 >> 30) & 0x3FFFC) + 4 + *(v63 + ((v59 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v64 = 0;
  }

  v74[0] = v60;
  v74[1] = v64;
  v74[2] = sub_31D7E8(v58, v59 & 0xFFFFFFFFFFFFLL, 1);
  v74[3] = v65;
  v74[4] = (v59 & 0xFFFFFFFFFFFFFFLL);
  v66 = sub_7102E4(a1[3], &v75, v74);
  result = 1;
  if (v66)
  {
    return 0;
  }

  return result;
}

void sub_743DA4(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, size_t *a5@<X8>)
{
  v8 = sub_4D1F50(a2, a3);
  v9 = *a1;
  v11 = *(v8 + 32);
  v10 = *(v8 + 36);
  v12 = ((v10 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v10 << 32) | v11;
  v13 = v12 ^ 0x1000000000000;
  v14 = sub_2B51D8(*a1, ((v10 & 0x20000000u) << 19) | (v10 << 32) & 0xFFFFFFFFFFFFLL | v11 & 0xFFFFFFFFFFFFLL);
  if (*(v9 + 7772) == 1)
  {
    v15 = sub_30C50C(v9 + 3896, v11, 0);
    v16 = &v15[-*v15];
    if (*v16 < 5u)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v16 + 2);
      if (v17)
      {
        v17 += &v15[*&v15[v17]];
      }
    }

    v18 = v17 + 4 * v10 + 4 + *(v17 + 4 * v10 + 4);
  }

  else
  {
    v18 = 0;
  }

  v88[0] = v14;
  v88[1] = v18;
  v88[2] = sub_31D7E8(v9, v12 & 0xFFFFFFFFFFFFLL, 1);
  v88[3] = v19;
  v20 = a3 + 1;
  v88[4] = v13;
  v21 = sub_4D1F50(a2, a3 + 1);
  v22 = *a1;
  v24 = *(v21 + 32);
  v23 = *(v21 + 36);
  v85 = v21;
  v25 = ((v23 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v23 << 32) | v24;
  v86 = sub_2B51D8(*a1, ((v23 & 0x20000000u) << 19) | (v23 << 32) & 0xFFFFFFFFFFFFLL | v24 & 0xFFFFFFFFFFFFLL);
  if (*(v22 + 7772) == 1)
  {
    v26 = sub_30C50C(v22 + 3896, v24, 0);
    v27 = &v26[-*v26];
    if (*v27 < 5u)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(v27 + 2);
      if (v28)
      {
        v28 += &v26[*&v26[v28]];
      }
    }

    v29 = v28 + 4 * v23 + 4 + *(v28 + 4 * v23 + 4);
  }

  else
  {
    v29 = 0;
  }

  v83 = sub_31D7E8(v22, v25 & 0xFFFFFFFFFFFFLL, 1);
  v31 = v30;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v32 = (v14 - *v14);
  v33 = *v32;
  if (v33 < 0x2F || (v34 = v32[23]) == 0 || ((v35 = *(v14 + v32[23]), v36 = v35 > 0x36, v37 = (1 << v35) & 0x44000000000008, !v36) ? (v38 = v37 == 0) : (v38 = 1), v38))
  {
    v40 = (v86 - *v86);
    if (*v40 >= 0x2Fu && (v41 = v40[23]) != 0 && (v42 = *(v86 + v41), v42 <= 0x36))
    {
      v39 = 0x44000000000008uLL >> v42;
      if (a3)
      {
        goto LABEL_35;
      }
    }

    else
    {
      LODWORD(v39) = 0;
      if (a3)
      {
        goto LABEL_35;
      }
    }

    if (v33 < 0x2F || (v34 = v32[23]) == 0)
    {
LABEL_37:
      LOBYTE(v46) = 0;
      if (!a4)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }

  else
  {
    LODWORD(v39) = 0;
    if (a3)
    {
      goto LABEL_35;
    }
  }

  v43 = *(v14 + v34);
  v36 = v43 > 0x36;
  v44 = (1 << v43) & 0x44000000000008;
  if (v36 || v44 == 0)
  {
    goto LABEL_37;
  }

LABEL_35:
  v46 = sub_6AD28C(a1[4], v8) & (v39 ^ 1);
  if (!a4)
  {
    goto LABEL_39;
  }

LABEL_38:
  if (!(v46 & 1 | !sub_6AD28C(a1[4], v85)))
  {
    sub_7444BC(a1, v88, a5, 0);
  }

LABEL_39:
  sub_31B8F4(*a1, v88, a5);
  sub_70E6E8(a1[3], v88, a5);
  v82 = v31;
  v47 = a5[1];
  v48 = sub_4D1DC0(a2);
  if (v20 <= v48)
  {
    v49 = v48;
  }

  else
  {
    v49 = a3 + 1;
  }

  if (v20 < v48)
  {
    while (1)
    {
      v51 = sub_4D1F50(a2, v20);
      v47 = *a5;
      v52 = a5[1];
      if (*a5 != v52)
      {
        v53 = *(v51 + 32);
        v54 = (v53 >> 61) & 1;
        v55 = HIDWORD(v53);
        while (1)
        {
          v56 = *(v47 + 32);
          if (*(v51 + 32) == v56 && WORD2(*(v47 + 32)) == v55 && (v54 ^ BYTE6(v56)) == 1)
          {
            break;
          }

          v47 += 40;
          if (v47 == v52)
          {
            goto LABEL_48;
          }
        }
      }

      if (v47 != v52)
      {
        break;
      }

LABEL_48:
      if (++v20 == v49)
      {
        v50 = -1;
        v47 = a5[1];
        if (*(a1[2] + 872) == 1)
        {
          goto LABEL_62;
        }

        goto LABEL_76;
      }
    }

    v50 = v20 + 1;
    if (*(a1[2] + 872) != 1)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v50 = -1;
    if (*(a1[2] + 872) != 1)
    {
      goto LABEL_76;
    }
  }

LABEL_62:
  if (v47 == a5[1] && sub_6AD28C(a1[4], v85))
  {
    v58 = sub_745388(a1, a2, a3, a5);
    if (v58 != -1)
    {
      v59 = sub_4D1F50(a2, v58);
      v47 = *a5;
      v60 = a5[1];
      if (*a5 != v60)
      {
        while (1)
        {
          v61 = *(v47 + 32);
          v62 = *(v59 + 32) == v61 && WORD2(v61) == *(v59 + 36);
          if (v62 && ((*(v59 + 36) >> 29) & 1 ^ BYTE6(v61)) == 1)
          {
            break;
          }

          v47 += 40;
          if (v47 == v60)
          {
            v47 = a5[1];
            break;
          }
        }
      }

      v50 = v58 + 1;
    }
  }

LABEL_76:
  v64 = v25 ^ 0x1000000000000;
  if ((v47 == a5[1]) | sub_745B5C(a1, a2, a3, v50) & 1 || a3 + 2 < sub_4D1DC0(a2) && v50 != -1 && ((v66 = (v86 - *v86), *v66 < 0x2Fu) || (v67 = v66[23]) == 0 || ((v68 = *(v86 + v67), v36 = v68 > 0x36, v69 = (1 << v68) & 0x44000000000008, !v36) ? (v70 = v69 == 0) : (v70 = 1), v70)) && sub_6AD28C(a1[4], v85) && (sub_4D0560(), v72 = v71, v74 = v73, sub_4D0560(), sub_746180(v72, a3 + 2 + v74, v76, v75 + v50)))
  {
    if (sub_6AD28C(a1[4], v85))
    {
      sub_31B8F4(*a1, v88, a5);
      sub_70E6E8(a1[3], v88, a5);
      v47 = *a5;
      v65 = a5[1];
      if (*a5 != v65)
      {
        while ((*(v47 + 32) & 0xFFFFFFFFFFFFFFLL) != v64)
        {
          v47 += 40;
          if (v47 == v65)
          {
            v47 = a5[1];
            break;
          }
        }
      }
    }
  }

  if (v47 == a5[1])
  {
    v77 = *a5;
    a5[1] = *a5;
    v78 = a5[2];
    if (v77 >= v78)
    {
      v79 = 0xCCCCCCCCCCCCCCCDLL * ((v78 - v77) >> 3);
      v80 = 2 * v79;
      if (2 * v79 <= 1)
      {
        v80 = 1;
      }

      if (v79 >= 0x333333333333333)
      {
        v81 = 0x666666666666666;
      }

      else
      {
        v81 = v80;
      }

      if (v81 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    *v77 = v86;
    v77[1] = v29;
    v77[2] = v83;
    v77[3] = v82;
    v77[4] = v64;
    a5[1] = (v77 + 5);
  }
}

void sub_744480(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_7444BC(uint64_t *a1, uint64_t a2, size_t *a3, int a4)
{
  a3[1] = *a3;
  memset(v5, 0, 24);
  *&v4 = 0;
  sub_741450(v5, a2, &v4);
  operator new();
}

void sub_745250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27)
{
  v29 = *(v27 - 128);
  if (!v29)
  {
    _Unwind_Resume(exception_object);
  }

  *(v27 - 120) = v29;
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

unint64_t sub_745388(uint64_t *a1, void *a2, uint64_t a3, int ***a4)
{
  v7 = sub_4D1F50(a2, a3);
  v8 = *a1;
  v9 = *(v7 + 32);
  v10 = *(v7 + 36);
  v11 = ((v10 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v10 << 32) | v9;
  v12 = sub_2B51D8(*a1, ((v10 & 0x20000000u) << 19) | (v10 << 32) & 0xFFFFFFFFFFFFLL | v9 & 0xFFFFFFFFFFFFLL);
  if (*(v8 + 7772) == 1)
  {
    v13 = sub_30C50C(v8 + 3896, v9, 0);
    v14 = &v13[-*v13];
    if (*v14 < 5u)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(v14 + 2);
      if (v15)
      {
        v15 += &v13[*&v13[v15]];
      }
    }

    v16 = v15 + 4 * v10 + 4 + *(v15 + 4 * v10 + 4);
  }

  else
  {
    v16 = 0;
  }

  v82[0] = v12;
  v82[1] = v16;
  v82[2] = sub_31D7E8(v8, v11 & 0xFFFFFFFFFFFFLL, 1);
  v82[3] = v17;
  v18 = a3 + 1;
  v82[4] = v11 ^ 0x1000000000000;
  v19 = sub_4D1DC0(a2);
  if (a3 + 1 > v19)
  {
    v20 = a3 + 1;
  }

  else
  {
    v20 = v19;
  }

  if (v18 >= v19)
  {
    return -1;
  }

  v21 = 0;
  while (1)
  {
    v22 = sub_4D1F50(a2, v18);
    if (!sub_6AD28C(a1[4], v22))
    {
      break;
    }

    v21 += sub_4D23F8(a2, v18++, v23);
    if (v20 == v18)
    {
      return -1;
    }
  }

  v25 = *(v7 + 32);
  v24 = *(v7 + 36);
  if (__PAIR64__(*(v22 + 36), *(v22 + 32)) == __PAIR64__(v24, v25) && ((v24 ^ *(v22 + 36)) & 0x20000000) == 0)
  {
    return -1;
  }

  v26 = *a1;
  v27 = v24;
  v28 = ((v24 & 0x20000000) << 19) | (v24 << 32) | v25;
  v29 = sub_2B51D8(*a1, v28 & 0xFFFFFFFFFFFFLL);
  if (*(v26 + 7772) == 1)
  {
    v30 = sub_30C50C(v26 + 3896, v25, 0);
    v31 = &v30[-*v30];
    if (*v31 < 5u)
    {
      v32 = 0;
    }

    else
    {
      v32 = *(v31 + 2);
      if (v32)
      {
        v32 += &v30[*&v30[v32]];
      }
    }

    v33 = v32 + 4 * v27 + 4 + *(v32 + 4 * v27 + 4);
  }

  else
  {
    v33 = 0;
  }

  *&v79 = v29;
  *(&v79 + 1) = v33;
  *&v80 = sub_31D7E8(v26, v28 & 0xFFFFFFFFFFFFLL, 1);
  *(&v80 + 1) = v34;
  v81 = v28 ^ 0x1000000000000;
  v35 = *a1;
  v37 = *(v22 + 32);
  v36 = *(v22 + 36);
  v38 = ((v36 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v36 << 32) | v37;
  v39 = sub_2B51D8(*a1, ((v36 & 0x20000000u) << 19) | (v36 << 32) & 0xFFFFFFFFFFFFLL | v37 & 0xFFFFFFFFFFFFLL);
  if (*(v35 + 7772) == 1)
  {
    v40 = sub_30C50C(v35 + 3896, v37, 0);
    v41 = &v40[-*v40];
    if (*v41 < 5u)
    {
      v42 = 0;
    }

    else
    {
      v42 = *(v41 + 2);
      if (v42)
      {
        v42 += &v40[*&v40[v42]];
      }
    }

    v43 = v42 + 4 * v36 + 4 + *(v42 + 4 * v36 + 4);
  }

  else
  {
    v43 = 0;
  }

  v74 = v39;
  v75 = v43;
  v76 = sub_31D7E8(v35, v38 & 0xFFFFFFFFFFFFLL, 1);
  v77 = v44;
  v78 = v38 ^ 0x1000000000000;
  if (sub_394BD0())
  {
    return -1;
  }

  v46 = *a1;
  v47 = *(v22 + 32);
  v48 = *(v22 + 36);
  v49 = ((v48 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v48 << 32) | v47;
  v50 = sub_2B51D8(*a1, ((v48 & 0x20000000u) << 19) | (v48 << 32) & 0xFFFFFFFFFFFFLL | v47 & 0xFFFFFFFFFFFFLL);
  if (*(v46 + 7772) == 1)
  {
    v51 = sub_30C50C(v46 + 3896, v47, 0);
    v52 = &v51[-*v51];
    if (*v52 < 5u)
    {
      v53 = 0;
    }

    else
    {
      v53 = *(v52 + 2);
      if (v53)
      {
        v53 += &v51[*&v51[v53]];
      }
    }

    v54 = v53 + 4 * v48 + 4 + *(v53 + 4 * v48 + 4);
  }

  else
  {
    v54 = 0;
  }

  *&v79 = v50;
  *(&v79 + 1) = v54;
  *&v80 = sub_31D7E8(v46, v49 & 0xFFFFFFFFFFFFLL, 1);
  *(&v80 + 1) = v55;
  v81 = v49 ^ 0x1000000000000;
  v56 = a4[1];
  if (*a4 != v56)
  {
    if (*(a1[2] + 880) >= v21)
    {
      v57 = v21;
    }

    else
    {
      v57 = *(a1[2] + 880);
    }

    sub_31CFDC(*a1, *a4, &v79, v57);
  }

  v58 = a4[2];
  if (v56 >= v58)
  {
    v62 = *a4;
    v63 = 0xCCCCCCCCCCCCCCCDLL * (v56 - *a4);
    v64 = v63 + 1;
    if (v63 + 1 > 0x666666666666666)
    {
      sub_1794();
    }

    v65 = 0xCCCCCCCCCCCCCCCDLL * (v58 - v62);
    if (2 * v65 > v64)
    {
      v64 = 2 * v65;
    }

    if (v65 >= 0x333333333333333)
    {
      v66 = 0x666666666666666;
    }

    else
    {
      v66 = v64;
    }

    if (v66)
    {
      if (v66 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v67 = 8 * (v56 - *a4);
    v68 = v80;
    *v67 = v79;
    *(v67 + 16) = v68;
    *(v67 + 32) = v81;
    v61 = (40 * v63 + 40);
    memcpy((40 * v63 - (v56 - v62)), v62, v56 - v62);
    *a4 = (40 * v63 - (v56 - v62));
    a4[1] = v61;
    a4[2] = 0;
    if (v62)
    {
      operator delete(v62);
    }
  }

  else
  {
    v59 = v79;
    v60 = v80;
    v56[4] = v81;
    *v56 = v59;
    *(v56 + 1) = v60;
    v61 = v56 + 5;
  }

  v69 = *a4;
  v70 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * (v61 - *a4));
  v71 = v61 == *a4;
  a4[1] = v61;
  v74 = a1;
  v75 = v82;
  if (v71)
  {
    v72 = 0;
  }

  else
  {
    v72 = v70;
  }

  sub_7463A4(v69, v61, &v74, v72, 1);
  return v18;
}

void sub_745B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_745B5C(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1[2] + 370) != 1 || a3 == -1 || a4 == -1)
  {
    return 0;
  }

  v7 = a1;
  v8 = a3 + 1;
  v9 = 0.0;
  if (a3 + 1 > a4)
  {
    v10 = a3 + 1;
  }

  else
  {
    v10 = a4;
  }

  v82 = v10;
  if (a3 + 1 < a4)
  {
    v11 = 0;
    v12 = 0.0;
    v80 = a4 - 1;
    v81 = a3;
    do
    {
      v13 = sub_4D1F50(a2, v8);
      if (*(v7[2] + 384) == 1 && (sub_6AD700(v7[4], v13) & 1) != 0)
      {
        goto LABEL_14;
      }

      v14 = (*v13 - **v13);
      if (*v14 >= 0x2Fu)
      {
        v15 = v14[23];
        if (v15)
        {
          if (*(*v13 + v15) == 14)
          {
            goto LABEL_14;
          }
        }
      }

      v83 = v11;
      v16 = a2;
      v17 = v7[4];
      v18 = v7;
      v19 = *v7;
      v21 = *(v13 + 8);
      v20 = *(v13 + 9);
      v22 = ((v20 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v20 << 32) | v21;
      v23 = sub_2B51D8(v19, ((v20 & 0x20000000u) << 19) | (v20 << 32) & 0xFFFFFFFFFFFFLL | v21 & 0xFFFFFFFFFFFFLL);
      if (*(v19 + 7772) == 1)
      {
        v24 = sub_30C50C(v19 + 3896, v21, 0);
        v25 = &v24[-*v24];
        if (*v25 < 5u)
        {
          v26 = 0;
        }

        else
        {
          v26 = *(v25 + 2);
          if (v26)
          {
            v26 += &v24[*&v24[v26]];
          }
        }

        v27 = v26 + 4 * v20 + 4 + *(v26 + 4 * v20 + 4);
      }

      else
      {
        v27 = 0;
      }

      v28 = sub_31D7E8(v19, v22 & 0xFFFFFFFFFFFFLL, 1);
      v85 = v23;
      v86 = v27;
      v87 = v28;
      v88 = v29;
      v89 = v22 ^ 0x1000000000000;
      if (sub_6AC884(v17, &v85))
      {
        a2 = v16;
        v11 = v83;
        v7 = v18;
        goto LABEL_14;
      }

      a2 = v16;
      v30 = sub_4D1F50(v16, v81);
      v31 = (*v30 - **v30);
      v32 = *v31;
      v33 = v83;
      v7 = v18;
      if ((*(v30 + 39) & 0x20) != 0)
      {
        if (v32 >= 0x4B)
        {
          v34 = v31[37];
          if (v34)
          {
LABEL_34:
            v35 = *(*v30 + v34);
            v36 = *(v13 + 9);
            v37 = *v13;
            v38 = (*v13 - **v13);
            v39 = *v38;
            if ((v36 & 0x20000000) == 0)
            {
              goto LABEL_39;
            }

            goto LABEL_35;
          }
        }
      }

      else if (v32 >= 0x49)
      {
        v34 = v31[36];
        if (v34)
        {
          goto LABEL_34;
        }
      }

      v35 = -1;
      v36 = *(v13 + 9);
      v37 = *v13;
      v38 = (*v13 - **v13);
      v39 = *v38;
      if ((v36 & 0x20000000) == 0)
      {
LABEL_39:
        if (v39 >= 0x4B)
        {
          v40 = v38[37];
          if (v38[37])
          {
            goto LABEL_41;
          }
        }

        goto LABEL_42;
      }

LABEL_35:
      if (v39 >= 0x49)
      {
        v40 = v38[36];
        if (v38[36])
        {
LABEL_41:
          v41 = *(v37 + v40);
          goto LABEL_43;
        }
      }

LABEL_42:
      v41 = 0xFFFF;
LABEL_43:
      v42 = v35 + 18000;
      v43 = v35 - 18000;
      if ((v42 >> 5) < 0x465u)
      {
        v43 = v42;
      }

      v44 = v41 - v43;
      if (v44 > 18000)
      {
        v44 -= 36000;
      }

      if (v44 < -17999)
      {
        v44 += 36000;
      }

      v45 = v44 / 100.0;
      v9 = v9 + v45;
      if (v8 >= v80)
      {
        goto LABEL_76;
      }

      if ((v36 & 0x20000000) != 0)
      {
        if (v39 < 0x49)
        {
          v46 = 0xFFFF;
        }

        else if (v38[36])
        {
          v46 = *(v37 + v38[36]);
          if (v39 >= 0x4B)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v46 = 0xFFFF;
          if (v39 >= 0x4B)
          {
LABEL_67:
            v47 = v38[37];
            if (v47)
            {
LABEL_68:
              v48 = *(v37 + v47);
              goto LABEL_69;
            }
          }
        }

LABEL_63:
        v48 = -1;
        goto LABEL_69;
      }

      if (v39 >= 0x4B)
      {
        if (v38[37])
        {
          v46 = *(v37 + v38[37]);
          v47 = v38[36];
          if (v47)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v46 = 0xFFFF;
          v47 = v38[36];
          if (v47)
          {
            goto LABEL_68;
          }
        }

        goto LABEL_63;
      }

      v46 = 0xFFFF;
      v48 = -1;
      if (v39 >= 0x49)
      {
        v47 = v38[36];
        if (v47)
        {
          goto LABEL_68;
        }

        goto LABEL_63;
      }

LABEL_69:
      v49 = v48 + 18000;
      if (((v48 + 18000) >> 5) >= 0x465u)
      {
        v49 = v48 - 18000;
      }

      v50 = v49 - v46;
      if (v50 > 18000)
      {
        v50 -= 36000;
      }

      if (v50 < -17999)
      {
        v50 += 36000;
      }

      v9 = v9 + v50 / 100.0;
LABEL_76:
      v51 = fabs(v45);
      v52 = v18[2];
      if (v51 <= *(v52 + 16))
      {
        v45 = v12;
      }

      else
      {
        if (v83 > *(v52 + 376) && v12 != 0.0 && v12 <= 0.0 == v45 > 0.0)
        {
          return 1;
        }

        v33 = 0;
      }

      v11 = sub_4D23F8(v16, v8, v51) + v33;
      v81 = v8;
      v12 = v45;
LABEL_14:
      ++v8;
    }

    while (v82 != v8);
  }

  if (fabs(v9) <= 180.0)
  {
    return 0;
  }

  v53 = *v7;
  v54 = sub_4D1F50(a2, a3);
  v56 = *(v54 + 32);
  v55 = *(v54 + 36);
  v57 = ((v55 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v55 << 32) | v56;
  v58 = sub_2B51D8(v53, ((v55 & 0x20000000u) << 19) | (v55 << 32) & 0xFFFFFFFFFFFFLL | v56 & 0xFFFFFFFFFFFFLL);
  if (*(v53 + 7772) == 1)
  {
    v59 = sub_30C50C(v53 + 3896, v56, 0);
    v60 = &v59[-*v59];
    if (*v60 < 5u)
    {
      v61 = 0;
    }

    else
    {
      v61 = *(v60 + 2);
      if (v61)
      {
        v61 += &v59[*&v59[v61]];
      }
    }

    v62 = v61 + 4 * v55 + 4 + *(v61 + 4 * v55 + 4);
  }

  else
  {
    v62 = 0;
  }

  v63 = sub_31D7E8(v53, v57 & 0xFFFFFFFFFFFFLL, 1);
  v85 = v58;
  v86 = v62;
  v87 = v63;
  v88 = v64;
  v89 = v57 ^ 0x1000000000000;
  v65 = *v7;
  v66 = sub_4D1F50(a2, a4 - 1);
  v67 = *(v66 + 32);
  v68 = *(v66 + 36);
  v69 = ((v68 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v68 << 32) | v67;
  v70 = sub_2B51D8(v65, ((v68 & 0x20000000u) << 19) | (v68 << 32) & 0xFFFFFFFFFFFFLL | v67 & 0xFFFFFFFFFFFFLL);
  if (*(v65 + 7772) == 1)
  {
    v71 = sub_30C50C(v65 + 3896, v67, 0);
    v72 = &v71[-*v71];
    if (*v72 < 5u)
    {
      v73 = 0;
    }

    else
    {
      v73 = *(v72 + 2);
      if (v73)
      {
        v73 += &v71[*&v71[v73]];
      }
    }

    v74 = (v73 + 4 * v68 + 4 + *(v73 + 4 * v68 + 4));
  }

  else
  {
    v74 = 0;
  }

  v84[0] = v70;
  v84[1] = v74;
  v84[2] = sub_31D7E8(v65, v69 & 0xFFFFFFFFFFFFLL, 1);
  v84[3] = v75;
  v84[4] = (v69 ^ 0x1000000000000);
  v76 = sub_7102E4(v7[3], &v85, v84);
  result = 1;
  if (v76)
  {
    return 0;
  }

  return result;
}

uint64_t sub_746180(void *a1, unint64_t a2, void *a3, unint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v8 = sub_4D1DC0(a1);
        v9 = sub_4D1DC0(a3);
        if (v6 >= v8 || a4 >= v9)
        {
          if (v6 < v8 == a4 < v9)
          {
            return 0;
          }
        }

        else
        {
          v10 = sub_4D1F50(a1, v6);
          if (v10 == sub_4D1F50(a3, a4))
          {
            return 0;
          }
        }

        v11 = sub_4D1F50(a1, v6);
        v12 = (*v11 - **v11);
        if (*v12 >= 0x2Fu)
        {
          v13 = v12[23];
          if (v13)
          {
            v14 = *(*v11 + v13);
            v15 = v14 > 0x36;
            v16 = (1 << v14) & 0x44000000000008;
            if (!v15 && v16 != 0)
            {
              break;
            }
          }
        }

        ++v6;
      }

      return 1;
    }

    if (a2 < sub_4D1DC0(a1))
    {
      while (1)
      {
        v24 = sub_4D1F50(a1, v6);
        v25 = (*v24 - **v24);
        if (*v25 >= 0x2Fu)
        {
          v26 = v25[23];
          if (v26)
          {
            v27 = *(*v24 + v26);
            v15 = v27 > 0x36;
            v28 = (1 << v27) & 0x44000000000008;
            if (!v15 && v28 != 0)
            {
              break;
            }
          }
        }

        if (++v6 >= sub_4D1DC0(a1))
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else if (a3 && a4 < sub_4D1DC0(a3))
  {
    while (1)
    {
      v18 = sub_4D1F50(0, v6);
      v19 = (*v18 - **v18);
      if (*v19 >= 0x2Fu)
      {
        v20 = v19[23];
        if (v20)
        {
          v21 = *(*v18 + v20);
          v15 = v21 > 0x36;
          v22 = (1 << v21) & 0x44000000000008;
          if (!v15 && v22 != 0)
          {
            break;
          }
        }
      }

      ++v6;
      if (a4 >= sub_4D1DC0(a3))
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

void sub_7463A4(uint64_t a1, int **a2, void *a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 5;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3uLL:

          sub_746CC4(a1, (a1 + 40), a2 - 5, a3);
          return;
        case 4uLL:

          sub_747120(a1, (a1 + 40), (a1 + 80), a2 - 5, a3);
          return;
        case 5uLL:

          sub_747404(a1, (a1 + 40), (a1 + 80), (a1 + 120), a2 - 5, a3);
          return;
      }
    }

    else
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        v38 = *a3;
        v37 = a3[1];
        v39 = sub_70E2E0(*(v38 + 24), v37, v9);
        v40 = sub_70E2E0(*(v38 + 24), v37, a1);
        if (*(*(v38 + 16) + 681) == 1)
        {
          v41 = sub_70DE94(*(v38 + 24), v37, v9);
          v42 = sub_70DE94(*(v38 + 24), v37, a1);
          v43 = *(v38 + 16);
          v44.i16[0] = *(v43 + 580);
          v45 = vmovl_s16(v44).i32[0];
          if (vabdd_f64(v39, v40) <= v45)
          {
            LOWORD(v45) = *(v43 + 582);
            if (vabdd_f64(v41, v42) >= vmovl_s16(*&v45).i32[0])
            {
              v39 = v41;
              v40 = v42;
            }
          }
        }

        if (fabs(v39) < fabs(v40))
        {
          v46 = *a1;
          v47 = *(a1 + 16);
          v116 = *(a1 + 32);
          v114 = v46;
          v115 = v47;
          v48 = *v9;
          v49 = *(v9 + 1);
          *(a1 + 32) = v9[4];
          *a1 = v48;
          *(a1 + 16) = v49;
          *v9 = v114;
          *(v9 + 1) = v115;
          v9[4] = v116;
        }

        return;
      }
    }

    if (v13 <= 959)
    {
      break;
    }

    if (v11 == 1)
    {
      if (a1 != a2)
      {
        v83 = (v14 - 2) >> 1;
        v84 = v83 + 1;
        v85 = (a1 + 40 * v83);
        do
        {
          sub_7485D8(a1, a3, 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3), v85);
          v85 -= 5;
          --v84;
        }

        while (v84);
        v86 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
        do
        {
          sub_7489E8(a1, a2, a3, v86);
          a2 -= 5;
        }

        while (v86-- > 2);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = (a1 + 40 * (v14 >> 1));
    if (v13 < 0x1401)
    {
      sub_746CC4(v16, a1, a2 - 5, a3);
      if (a5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_746CC4(a1, v16, a2 - 5, a3);
      v17 = 40 * v15;
      v18 = (40 * v15 + a1 - 40);
      sub_746CC4((a1 + 40), v18, a2 - 10, a3);
      sub_746CC4((a1 + 80), (a1 + 40 + v17), a2 - 15, a3);
      sub_746CC4(v18, v16, (a1 + 40 + v17), a3);
      v19 = *a1;
      v20 = *(a1 + 16);
      v116 = *(a1 + 32);
      v114 = v19;
      v115 = v20;
      v21 = *v16;
      v22 = v16[1];
      *(a1 + 32) = *(v16 + 4);
      *a1 = v21;
      *(a1 + 16) = v22;
      v23 = v114;
      v24 = v115;
      *(v16 + 4) = v116;
      *v16 = v23;
      v16[1] = v24;
      if (a5)
      {
        goto LABEL_21;
      }
    }

    v26 = *a3;
    v25 = a3[1];
    v27 = sub_70E2E0(*(*a3 + 24), v25, (a1 - 40));
    v28 = sub_70E2E0(*(v26 + 24), v25, a1);
    if (*(*(v26 + 16) + 681) == 1)
    {
      v29 = sub_70DE94(*(v26 + 24), v25, (a1 - 40));
      v30 = sub_70DE94(*(v26 + 24), v25, a1);
      v31 = *(v26 + 16);
      v32.i16[0] = *(v31 + 580);
      v33 = vmovl_s16(v32).i32[0];
      if (vabdd_f64(v27, v28) <= v33)
      {
        LOWORD(v33) = *(v31 + 582);
        if (vabdd_f64(v29, v30) >= vmovl_s16(*&v33).i32[0])
        {
          v27 = v29;
          v28 = v30;
        }
      }
    }

    if (fabs(v27) >= fabs(v28))
    {
      v10 = sub_7477C8(a1, a2, a3);
      goto LABEL_26;
    }

LABEL_21:
    v34 = sub_747D1C(a1, a2, a3);
    if ((v35 & 1) == 0)
    {
      goto LABEL_24;
    }

    v36 = sub_7481D8(a1, v34, a3);
    v10 = (v34 + 40);
    if (sub_7481D8(v34 + 5, a2, a3))
    {
      a4 = -v12;
      a2 = v34;
      if (v36)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v36)
    {
LABEL_24:
      sub_7463A4(a1, v34, a3, -v12, a5 & 1);
      v10 = (v34 + 40);
LABEL_26:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  v50 = (a1 + 40);
  v52 = a1 == a2 || v50 == a2;
  if (a5)
  {
    if (!v52)
    {
      v53 = 0;
      v54 = a1;
      do
      {
        v58 = v50;
        v60 = *a3;
        v59 = a3[1];
        v61 = sub_70E2E0(*(*a3 + 24), v59, v50);
        v62 = sub_70E2E0(*(v60 + 24), v59, v54);
        if (*(*(v60 + 16) + 681) == 1)
        {
          v63 = sub_70DE94(*(v60 + 24), v59, v58);
          v64 = sub_70DE94(*(v60 + 24), v59, v54);
          v65 = *(v60 + 16);
          v66.i16[0] = *(v65 + 580);
          v67 = vmovl_s16(v66).i32[0];
          if (vabdd_f64(v61, v62) <= v67)
          {
            LOWORD(v67) = *(v65 + 582);
            if (vabdd_f64(v63, v64) >= vmovl_s16(*&v67).i32[0])
            {
              v61 = v63;
              v62 = v64;
            }
          }
        }

        if (fabs(v61) < fabs(v62))
        {
          v68 = *v58;
          v69 = *(v58 + 1);
          v116 = v58[4];
          v114 = v68;
          v115 = v69;
          v70 = v53;
          do
          {
            v71 = a1 + v70;
            v72 = *(a1 + v70 + 16);
            *(v71 + 40) = *(a1 + v70);
            *(v71 + 56) = v72;
            *(v71 + 72) = *(a1 + v70 + 32);
            if (!v70)
            {
              v55 = a1;
              goto LABEL_54;
            }

            v73 = (v71 - 40);
            v75 = *a3;
            v74 = a3[1];
            v76 = sub_70E2E0(*(*a3 + 24), v74, &v114);
            v77 = sub_70E2E0(*(v75 + 24), v74, v73);
            if (*(*(v75 + 16) + 681) == 1)
            {
              v78 = sub_70DE94(*(v75 + 24), v74, &v114);
              v79 = sub_70DE94(*(v75 + 24), v74, v73);
              v80 = *(v75 + 16);
              v81.i16[0] = *(v80 + 580);
              v82 = vmovl_s16(v81).i32[0];
              if (vabdd_f64(v76, v77) <= v82)
              {
                LOWORD(v82) = *(v80 + 582);
                if (vabdd_f64(v78, v79) >= vmovl_s16(*&v82).i32[0])
                {
                  v76 = v78;
                  v77 = v79;
                }
              }
            }

            v70 -= 40;
          }

          while (fabs(v76) < fabs(v77));
          v55 = a1 + v70 + 40;
LABEL_54:
          v56 = v114;
          v57 = v115;
          *(v55 + 32) = v116;
          *v55 = v56;
          *(v55 + 16) = v57;
        }

        v50 = v58 + 5;
        v53 += 40;
        v54 = v58;
      }

      while (v58 + 5 != a2);
    }
  }

  else if (!v52)
  {
    v88 = a1 - 40;
    do
    {
      v91 = v50;
      v93 = *a3;
      v92 = a3[1];
      v94 = sub_70E2E0(*(*a3 + 24), v92, v50);
      v95 = sub_70E2E0(*(v93 + 24), v92, a1);
      if (*(*(v93 + 16) + 681) == 1)
      {
        v96 = sub_70DE94(*(v93 + 24), v92, v91);
        v97 = sub_70DE94(*(v93 + 24), v92, a1);
        v98 = *(v93 + 16);
        v99.i16[0] = *(v98 + 580);
        v100 = vmovl_s16(v99).i32[0];
        if (vabdd_f64(v94, v95) <= v100)
        {
          LOWORD(v100) = *(v98 + 582);
          if (vabdd_f64(v96, v97) >= vmovl_s16(*&v100).i32[0])
          {
            v94 = v96;
            v95 = v97;
          }
        }
      }

      if (fabs(v94) < fabs(v95))
      {
        v101 = *v91;
        v102 = *(v91 + 16);
        v116 = *(v91 + 32);
        v114 = v101;
        v115 = v102;
        v103 = v88;
        do
        {
          v104 = *(v103 + 56);
          *(v103 + 80) = *(v103 + 40);
          *(v103 + 96) = v104;
          *(v103 + 112) = *(v103 + 72);
          v106 = *a3;
          v105 = a3[1];
          v107 = sub_70E2E0(*(*a3 + 24), v105, &v114);
          v108 = sub_70E2E0(*(v106 + 24), v105, v103);
          if (*(*(v106 + 16) + 681) == 1)
          {
            v109 = sub_70DE94(*(v106 + 24), v105, &v114);
            v110 = sub_70DE94(*(v106 + 24), v105, v103);
            v111 = *(v106 + 16);
            v112.i16[0] = *(v111 + 580);
            v113 = vmovl_s16(v112).i32[0];
            if (vabdd_f64(v107, v108) <= v113)
            {
              LOWORD(v113) = *(v111 + 582);
              if (vabdd_f64(v109, v110) >= vmovl_s16(*&v113).i32[0])
              {
                v107 = v109;
                v108 = v110;
              }
            }
          }

          v103 -= 40;
        }

        while (fabs(v107) < fabs(v108));
        v89 = v114;
        v90 = v115;
        *(v103 + 112) = v116;
        *(v103 + 80) = v89;
        *(v103 + 96) = v90;
      }

      v50 = (v91 + 40);
      v88 += 40;
      a1 = v91;
    }

    while ((v91 + 40) != a2);
  }
}

uint64_t sub_746CC4(int **a1, int **a2, int **a3, void *a4)
{
  v9 = *a4;
  v8 = a4[1];
  v10 = sub_70E2E0(*(*a4 + 24), v8, a2);
  v11 = sub_70E2E0(*(v9 + 24), v8, a1);
  if (*(*(v9 + 16) + 681) == 1)
  {
    v12 = sub_70DE94(*(v9 + 24), v8, a2);
    v13 = sub_70DE94(*(v9 + 24), v8, a1);
    v14 = *(v9 + 16);
    v15.i16[0] = *(v14 + 580);
    v16 = vmovl_s16(v15).i32[0];
    if (vabdd_f64(v10, v11) <= v16)
    {
      LOWORD(v16) = *(v14 + 582);
      if (vabdd_f64(v12, v13) >= vmovl_s16(*&v16).i32[0])
      {
        v10 = v12;
        v11 = v13;
      }
    }
  }

  v17 = fabs(v10);
  v18 = fabs(v11);
  v20 = *a4;
  v19 = a4[1];
  v21 = sub_70E2E0(*(*a4 + 24), v19, a3);
  v22 = sub_70E2E0(*(v20 + 24), v19, a2);
  if (v17 >= v18)
  {
    if (*(*(v20 + 16) + 681))
    {
      v33 = sub_70DE94(*(v20 + 24), v19, a3);
      v34 = sub_70DE94(*(v20 + 24), v19, a2);
      v35 = *(v20 + 16);
      v36.i16[0] = *(v35 + 580);
      v37 = vmovl_s16(v36).i32[0];
      if (vabdd_f64(v21, v22) <= v37)
      {
        LOWORD(v37) = *(v35 + 582);
        if (vabdd_f64(v33, v34) >= vmovl_s16(*&v37).i32[0])
        {
          v21 = v33;
          v22 = v34;
        }
      }
    }

    if (fabs(v21) >= fabs(v22))
    {
      return 0;
    }

    v38 = *a2;
    v39 = *(a2 + 1);
    v40 = a2[4];
    v41 = a3[4];
    v42 = *(a3 + 1);
    *a2 = *a3;
    *(a2 + 1) = v42;
    a2[4] = v41;
    a3[4] = v40;
    *a3 = v38;
    *(a3 + 1) = v39;
    v44 = *a4;
    v43 = a4[1];
    v45 = sub_70E2E0(*(*a4 + 24), v43, a2);
    v46 = sub_70E2E0(*(v44 + 24), v43, a1);
    if (*(*(v44 + 16) + 681) == 1)
    {
      v47 = sub_70DE94(*(v44 + 24), v43, a2);
      v48 = sub_70DE94(*(v44 + 24), v43, a1);
      v49 = *(v44 + 16);
      v50.i16[0] = *(v49 + 580);
      v51 = vmovl_s16(v50).i32[0];
      if (vabdd_f64(v45, v46) <= v51)
      {
        LOWORD(v51) = *(v49 + 582);
        if (vabdd_f64(v47, v48) >= vmovl_s16(*&v51).i32[0])
        {
          v45 = v47;
          v46 = v48;
        }
      }
    }

    if (fabs(v45) < fabs(v46))
    {
      v52 = *a1;
      v53 = *(a1 + 1);
      v54 = a1[4];
      v55 = a2[4];
      v56 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v56;
      a1[4] = v55;
      a2[4] = v54;
      result = 1;
      *a2 = v52;
      *(a2 + 1) = v53;
      return result;
    }
  }

  else
  {
    if (*(*(v20 + 16) + 681))
    {
      v23 = sub_70DE94(*(v20 + 24), v19, a3);
      v24 = sub_70DE94(*(v20 + 24), v19, a2);
      v25 = *(v20 + 16);
      v26.i16[0] = *(v25 + 580);
      v27 = vmovl_s16(v26).i32[0];
      if (vabdd_f64(v21, v22) <= v27)
      {
        LOWORD(v27) = *(v25 + 582);
        if (vabdd_f64(v23, v24) >= vmovl_s16(*&v27).i32[0])
        {
          v21 = v23;
          v22 = v24;
        }
      }
    }

    if (fabs(v21) < fabs(v22))
    {
      v28 = *a1;
      v29 = *(a1 + 1);
      v30 = a1[4];
      v31 = a3[4];
      v32 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 1) = v32;
      a1[4] = v31;
LABEL_29:
      a3[4] = v30;
      result = 1;
      *a3 = v28;
      *(a3 + 1) = v29;
      return result;
    }

    v58 = *a1;
    v59 = *(a1 + 1);
    v60 = a1[4];
    v61 = a2[4];
    v62 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v62;
    a1[4] = v61;
    a2[4] = v60;
    *a2 = v58;
    *(a2 + 1) = v59;
    v64 = *a4;
    v63 = a4[1];
    v65 = sub_70E2E0(*(*a4 + 24), v63, a3);
    v66 = sub_70E2E0(*(v64 + 24), v63, a2);
    if (*(*(v64 + 16) + 681) == 1)
    {
      v67 = sub_70DE94(*(v64 + 24), v63, a3);
      v68 = sub_70DE94(*(v64 + 24), v63, a2);
      v69 = *(v64 + 16);
      v70.i16[0] = *(v69 + 580);
      v71 = vmovl_s16(v70).i32[0];
      if (vabdd_f64(v65, v66) <= v71)
      {
        LOWORD(v71) = *(v69 + 582);
        if (vabdd_f64(v67, v68) >= vmovl_s16(*&v71).i32[0])
        {
          v65 = v67;
          v66 = v68;
        }
      }
    }

    if (fabs(v65) < fabs(v66))
    {
      v28 = *a2;
      v29 = *(a2 + 1);
      v30 = a2[4];
      v72 = a3[4];
      v73 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v73;
      a2[4] = v72;
      goto LABEL_29;
    }
  }

  return 1;
}

void sub_747120(int **a1, int **a2, int **a3, int **a4, void *a5)
{
  sub_746CC4(a1, a2, a3, a5);
  v11 = *a5;
  v10 = a5[1];
  v12 = sub_70E2E0(*(*a5 + 24), v10, a4);
  v13 = sub_70E2E0(*(v11 + 24), v10, a3);
  if (*(*(v11 + 16) + 681) == 1)
  {
    v14 = sub_70DE94(*(v11 + 24), v10, a4);
    v15 = sub_70DE94(*(v11 + 24), v10, a3);
    v16 = *(v11 + 16);
    v17.i16[0] = *(v16 + 580);
    v18 = vmovl_s16(v17).i32[0];
    if (vabdd_f64(v12, v13) <= v18)
    {
      LOWORD(v18) = *(v16 + 582);
      if (vabdd_f64(v14, v15) >= vmovl_s16(*&v18).i32[0])
      {
        v12 = v14;
        v13 = v15;
      }
    }
  }

  if (fabs(v12) < fabs(v13))
  {
    v19 = *a3;
    v20 = *(a3 + 1);
    v21 = a3[4];
    v22 = a4[4];
    v23 = *(a4 + 1);
    *a3 = *a4;
    *(a3 + 1) = v23;
    a3[4] = v22;
    a4[4] = v21;
    *a4 = v19;
    *(a4 + 1) = v20;
    v25 = *a5;
    v24 = a5[1];
    v26 = sub_70E2E0(*(*a5 + 24), v24, a3);
    v27 = sub_70E2E0(*(v25 + 24), v24, a2);
    if (*(*(v25 + 16) + 681) == 1)
    {
      v28 = sub_70DE94(*(v25 + 24), v24, a3);
      v29 = sub_70DE94(*(v25 + 24), v24, a2);
      v30 = *(v25 + 16);
      v31.i16[0] = *(v30 + 580);
      v32 = vmovl_s16(v31).i32[0];
      if (vabdd_f64(v26, v27) <= v32)
      {
        LOWORD(v32) = *(v30 + 582);
        if (vabdd_f64(v28, v29) >= vmovl_s16(*&v32).i32[0])
        {
          v26 = v28;
          v27 = v29;
        }
      }
    }

    if (fabs(v26) < fabs(v27))
    {
      v33 = *a2;
      v34 = *(a2 + 1);
      v35 = a2[4];
      v36 = a3[4];
      v37 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v37;
      a2[4] = v36;
      a3[4] = v35;
      *a3 = v33;
      *(a3 + 1) = v34;
      v39 = *a5;
      v38 = a5[1];
      v40 = sub_70E2E0(*(v39 + 24), v38, a2);
      v41 = sub_70E2E0(*(v39 + 24), v38, a1);
      if (*(*(v39 + 16) + 681) == 1)
      {
        v42 = sub_70DE94(*(v39 + 24), v38, a2);
        v43 = sub_70DE94(*(v39 + 24), v38, a1);
        v44 = *(v39 + 16);
        v45.i16[0] = *(v44 + 580);
        v46 = vmovl_s16(v45).i32[0];
        if (vabdd_f64(v40, v41) <= v46)
        {
          LOWORD(v46) = *(v44 + 582);
          if (vabdd_f64(v42, v43) >= vmovl_s16(*&v46).i32[0])
          {
            v40 = v42;
            v41 = v43;
          }
        }
      }

      if (fabs(v40) < fabs(v41))
      {
        v47 = *a1;
        v48 = *(a1 + 1);
        v49 = a1[4];
        v50 = a2[4];
        v51 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v51;
        a1[4] = v50;
        a2[4] = v49;
        *a2 = v47;
        *(a2 + 1) = v48;
      }
    }
  }
}

void sub_747404(int **a1, int **a2, int **a3, int **a4, int **a5, void *a6)
{
  sub_747120(a1, a2, a3, a4, a6);
  v13 = *a6;
  v12 = a6[1];
  v14 = sub_70E2E0(*(*a6 + 24), v12, a5);
  v15 = sub_70E2E0(*(v13 + 24), v12, a4);
  if (*(*(v13 + 16) + 681) == 1)
  {
    v16 = sub_70DE94(*(v13 + 24), v12, a5);
    v17 = sub_70DE94(*(v13 + 24), v12, a4);
    v18 = *(v13 + 16);
    v19.i16[0] = *(v18 + 580);
    v20 = vmovl_s16(v19).i32[0];
    if (vabdd_f64(v14, v15) <= v20)
    {
      LOWORD(v20) = *(v18 + 582);
      if (vabdd_f64(v16, v17) >= vmovl_s16(*&v20).i32[0])
      {
        v14 = v16;
        v15 = v17;
      }
    }
  }

  if (fabs(v14) < fabs(v15))
  {
    v21 = *a4;
    v22 = *(a4 + 1);
    v23 = a4[4];
    v24 = a5[4];
    v25 = *(a5 + 1);
    *a4 = *a5;
    *(a4 + 1) = v25;
    a4[4] = v24;
    a5[4] = v23;
    *a5 = v21;
    *(a5 + 1) = v22;
    v27 = *a6;
    v26 = a6[1];
    v28 = sub_70E2E0(*(*a6 + 24), v26, a4);
    v29 = sub_70E2E0(*(v27 + 24), v26, a3);
    if (*(*(v27 + 16) + 681) == 1)
    {
      v30 = sub_70DE94(*(v27 + 24), v26, a4);
      v31 = sub_70DE94(*(v27 + 24), v26, a3);
      v32 = *(v27 + 16);
      v33.i16[0] = *(v32 + 580);
      v34 = vmovl_s16(v33).i32[0];
      if (vabdd_f64(v28, v29) <= v34)
      {
        LOWORD(v34) = *(v32 + 582);
        if (vabdd_f64(v30, v31) >= vmovl_s16(*&v34).i32[0])
        {
          v28 = v30;
          v29 = v31;
        }
      }
    }

    if (fabs(v28) < fabs(v29))
    {
      v35 = *a3;
      v36 = *(a3 + 1);
      v37 = a3[4];
      v38 = a4[4];
      v39 = *(a4 + 1);
      *a3 = *a4;
      *(a3 + 1) = v39;
      a3[4] = v38;
      a4[4] = v37;
      *a4 = v35;
      *(a4 + 1) = v36;
      v41 = *a6;
      v40 = a6[1];
      v42 = sub_70E2E0(*(*a6 + 24), v40, a3);
      v43 = sub_70E2E0(*(v41 + 24), v40, a2);
      if (*(*(v41 + 16) + 681) == 1)
      {
        v44 = sub_70DE94(*(v41 + 24), v40, a3);
        v45 = sub_70DE94(*(v41 + 24), v40, a2);
        v46 = *(v41 + 16);
        v47.i16[0] = *(v46 + 580);
        v48 = vmovl_s16(v47).i32[0];
        if (vabdd_f64(v42, v43) <= v48)
        {
          LOWORD(v48) = *(v46 + 582);
          if (vabdd_f64(v44, v45) >= vmovl_s16(*&v48).i32[0])
          {
            v42 = v44;
            v43 = v45;
          }
        }
      }

      if (fabs(v42) < fabs(v43))
      {
        v49 = *a2;
        v50 = *(a2 + 1);
        v51 = a2[4];
        v52 = a3[4];
        v53 = *(a3 + 1);
        *a2 = *a3;
        *(a2 + 1) = v53;
        a2[4] = v52;
        a3[4] = v51;
        *a3 = v49;
        *(a3 + 1) = v50;
        v55 = *a6;
        v54 = a6[1];
        v56 = sub_70E2E0(*(v55 + 24), v54, a2);
        v57 = sub_70E2E0(*(v55 + 24), v54, a1);
        if (*(*(v55 + 16) + 681) == 1)
        {
          v58 = sub_70DE94(*(v55 + 24), v54, a2);
          v59 = sub_70DE94(*(v55 + 24), v54, a1);
          v60 = *(v55 + 16);
          v61.i16[0] = *(v60 + 580);
          v62 = vmovl_s16(v61).i32[0];
          if (vabdd_f64(v56, v57) <= v62)
          {
            LOWORD(v62) = *(v60 + 582);
            if (vabdd_f64(v58, v59) >= vmovl_s16(*&v62).i32[0])
            {
              v56 = v58;
              v57 = v59;
            }
          }
        }

        if (fabs(v56) < fabs(v57))
        {
          v63 = *a1;
          v64 = *(a1 + 1);
          v65 = a1[4];
          v66 = a2[4];
          v67 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v67;
          a1[4] = v66;
          a2[4] = v65;
          *a2 = v63;
          *(a2 + 1) = v64;
        }
      }
    }
  }
}

__int128 *sub_7477C8(__int128 *a1, int **a2, void *a3)
{
  v4 = a2;
  v78 = *(a1 + 4);
  v6 = a1[1];
  v76 = *a1;
  v77 = v6;
  v7 = a2 - 5;
  v9 = *a3;
  v8 = a3[1];
  v10 = sub_70E2E0(*(*a3 + 24), v8, &v76);
  v11 = sub_70E2E0(*(v9 + 24), v8, v7);
  if (*(*(v9 + 16) + 681) == 1)
  {
    v12 = sub_70DE94(*(v9 + 24), v8, &v76);
    v13 = sub_70DE94(*(v9 + 24), v8, v7);
    v14 = *(v9 + 16);
    v15.i16[0] = *(v14 + 580);
    v16 = vmovl_s16(v15).i32[0];
    if (vabdd_f64(v10, v11) <= v16)
    {
      LOWORD(v16) = *(v14 + 582);
      if (vabdd_f64(v12, v13) >= vmovl_s16(*&v16).i32[0])
      {
        v10 = v12;
        v11 = v13;
      }
    }
  }

  if (fabs(v10) >= fabs(v11))
  {
    v27 = (a1 + 40);
    do
    {
      v17 = v27;
      if (v27 >= v4)
      {
        break;
      }

      v29 = *a3;
      v28 = a3[1];
      v30 = sub_70E2E0(*(*a3 + 24), v28, &v76);
      v31 = sub_70E2E0(*(v29 + 24), v28, v17);
      if (*(*(v29 + 16) + 681) == 1)
      {
        v32 = sub_70DE94(*(v29 + 24), v28, &v76);
        v33 = sub_70DE94(*(v29 + 24), v28, v17);
        v34 = *(v29 + 16);
        v35.i16[0] = *(v34 + 580);
        v36 = vmovl_s16(v35).i32[0];
        if (vabdd_f64(v30, v31) <= v36)
        {
          LOWORD(v36) = *(v34 + 582);
          if (vabdd_f64(v32, v33) >= vmovl_s16(*&v36).i32[0])
          {
            v30 = v32;
            v31 = v33;
          }
        }
      }

      v27 = (v17 + 40);
    }

    while (fabs(v30) >= fabs(v31));
  }

  else
  {
    v17 = a1;
    do
    {
      v17 = (v17 + 40);
      v19 = *a3;
      v18 = a3[1];
      v20 = sub_70E2E0(*(*a3 + 24), v18, &v76);
      v21 = sub_70E2E0(*(v19 + 24), v18, v17);
      if (*(*(v19 + 16) + 681) == 1)
      {
        v22 = sub_70DE94(*(v19 + 24), v18, &v76);
        v23 = sub_70DE94(*(v19 + 24), v18, v17);
        v24 = *(v19 + 16);
        v25.i16[0] = *(v24 + 580);
        v26 = vmovl_s16(v25).i32[0];
        if (vabdd_f64(v20, v21) <= v26)
        {
          LOWORD(v26) = *(v24 + 582);
          if (vabdd_f64(v22, v23) >= vmovl_s16(*&v26).i32[0])
          {
            v20 = v22;
            v21 = v23;
          }
        }
      }
    }

    while (fabs(v20) >= fabs(v21));
  }

  if (v17 < v4)
  {
    do
    {
      v4 -= 5;
      v62 = *a3;
      v61 = a3[1];
      v63 = sub_70E2E0(*(*a3 + 24), v61, &v76);
      v64 = sub_70E2E0(*(v62 + 24), v61, v4);
      if (*(*(v62 + 16) + 681) == 1)
      {
        v65 = sub_70DE94(*(v62 + 24), v61, &v76);
        v66 = sub_70DE94(*(v62 + 24), v61, v4);
        v67 = *(v62 + 16);
        v68.i16[0] = *(v67 + 580);
        v69 = vmovl_s16(v68).i32[0];
        if (vabdd_f64(v63, v64) <= v69)
        {
          LOWORD(v69) = *(v67 + 582);
          if (vabdd_f64(v65, v66) >= vmovl_s16(*&v69).i32[0])
          {
            v63 = v65;
            v64 = v66;
          }
        }
      }
    }

    while (fabs(v63) < fabs(v64));
  }

  while (v17 < v4)
  {
    v37 = *v17;
    v38 = v17[1];
    v81 = *(v17 + 4);
    v79 = v37;
    v80 = v38;
    v39 = *v4;
    v40 = *(v4 + 1);
    *(v17 + 4) = v4[4];
    *v17 = v39;
    v17[1] = v40;
    v41 = v79;
    v42 = v80;
    v4[4] = v81;
    *v4 = v41;
    *(v4 + 1) = v42;
    do
    {
      v17 = (v17 + 40);
      v44 = *a3;
      v43 = a3[1];
      v45 = sub_70E2E0(*(*a3 + 24), v43, &v76);
      v46 = sub_70E2E0(*(v44 + 24), v43, v17);
      if (*(*(v44 + 16) + 681) == 1)
      {
        v47 = sub_70DE94(*(v44 + 24), v43, &v76);
        v48 = sub_70DE94(*(v44 + 24), v43, v17);
        v49 = *(v44 + 16);
        v50.i16[0] = *(v49 + 580);
        v51 = vmovl_s16(v50).i32[0];
        if (vabdd_f64(v45, v46) <= v51)
        {
          LOWORD(v51) = *(v49 + 582);
          if (vabdd_f64(v47, v48) >= vmovl_s16(*&v51).i32[0])
          {
            v45 = v47;
            v46 = v48;
          }
        }
      }
    }

    while (fabs(v45) >= fabs(v46));
    do
    {
      v4 -= 5;
      v53 = *a3;
      v52 = a3[1];
      v54 = sub_70E2E0(*(*a3 + 24), v52, &v76);
      v55 = sub_70E2E0(*(v53 + 24), v52, v4);
      if (*(*(v53 + 16) + 681) == 1)
      {
        v56 = sub_70DE94(*(v53 + 24), v52, &v76);
        v57 = sub_70DE94(*(v53 + 24), v52, v4);
        v58 = *(v53 + 16);
        v59.i16[0] = *(v58 + 580);
        v60 = vmovl_s16(v59).i32[0];
        if (vabdd_f64(v54, v55) <= v60)
        {
          LOWORD(v60) = *(v58 + 582);
          if (vabdd_f64(v56, v57) >= vmovl_s16(*&v60).i32[0])
          {
            v54 = v56;
            v55 = v57;
          }
        }
      }
    }

    while (fabs(v54) < fabs(v55));
  }

  v70 = (v17 - 40);
  if ((v17 - 40) != a1)
  {
    v71 = *v70;
    v72 = *(v17 - 24);
    *(a1 + 4) = *(v17 - 1);
    *a1 = v71;
    a1[1] = v72;
  }

  v73 = v76;
  v74 = v77;
  *(v17 - 1) = v78;
  *v70 = v73;
  *(v17 - 24) = v74;
  return v17;
}

__int128 *sub_747D1C(__int128 *a1, int **a2, void *a3)
{
  v6 = 0;
  v7 = a1[1];
  v67 = *a1;
  v68 = v7;
  v69 = *(a1 + 4);
  do
  {
    v9 = *a3;
    v8 = a3[1];
    v10 = sub_70E2E0(*(*a3 + 24), v8, (a1 + v6 + 40));
    v11 = sub_70E2E0(*(v9 + 24), v8, &v67);
    if (*(*(v9 + 16) + 681) == 1)
    {
      v12 = sub_70DE94(*(v9 + 24), v8, (a1 + v6 + 40));
      v13 = sub_70DE94(*(v9 + 24), v8, &v67);
      v14 = *(v9 + 16);
      v15.i16[0] = *(v14 + 580);
      v16 = vmovl_s16(v15).i32[0];
      if (vabdd_f64(v10, v11) <= v16)
      {
        LOWORD(v16) = *(v14 + 582);
        if (vabdd_f64(v12, v13) >= vmovl_s16(*&v16).i32[0])
        {
          v10 = v12;
          v11 = v13;
        }
      }
    }

    v6 += 40;
  }

  while (fabs(v10) < fabs(v11));
  v17 = a1 + v6;
  v18 = (a1 + v6 - 40);
  if (v6 == 40)
  {
    do
    {
      if (v17 >= a2)
      {
        break;
      }

      a2 -= 5;
      v29 = *a3;
      v28 = a3[1];
      v30 = sub_70E2E0(*(*a3 + 24), v28, a2);
      v31 = sub_70E2E0(*(v29 + 24), v28, &v67);
      if (*(*(v29 + 16) + 681) == 1)
      {
        v32 = sub_70DE94(*(v29 + 24), v28, a2);
        v33 = sub_70DE94(*(v29 + 24), v28, &v67);
        v34 = *(v29 + 16);
        v35.i16[0] = *(v34 + 580);
        v36 = vmovl_s16(v35).i32[0];
        if (vabdd_f64(v30, v31) <= v36)
        {
          LOWORD(v36) = *(v34 + 582);
          if (vabdd_f64(v32, v33) >= vmovl_s16(*&v36).i32[0])
          {
            v30 = v32;
            v31 = v33;
          }
        }
      }
    }

    while (fabs(v30) >= fabs(v31));
  }

  else
  {
    do
    {
      a2 -= 5;
      v20 = *a3;
      v19 = a3[1];
      v21 = sub_70E2E0(*(*a3 + 24), v19, a2);
      v22 = sub_70E2E0(*(v20 + 24), v19, &v67);
      if (*(*(v20 + 16) + 681) == 1)
      {
        v23 = sub_70DE94(*(v20 + 24), v19, a2);
        v24 = sub_70DE94(*(v20 + 24), v19, &v67);
        v25 = *(v20 + 16);
        v26.i16[0] = *(v25 + 580);
        v27 = vmovl_s16(v26).i32[0];
        if (vabdd_f64(v21, v22) <= v27)
        {
          LOWORD(v27) = *(v25 + 582);
          if (vabdd_f64(v23, v24) >= vmovl_s16(*&v27).i32[0])
          {
            v21 = v23;
            v22 = v24;
          }
        }
      }
    }

    while (fabs(v21) >= fabs(v22));
  }

  if (v17 < a2)
  {
    v37 = v17;
    v38 = a2;
    do
    {
      v40 = *(v37 + 1);
      v70 = *v37;
      v39 = v70;
      v71 = v40;
      v72 = *(v37 + 4);
      v41 = v72;
      v43 = *v38;
      v42 = *(v38 + 1);
      *(v37 + 4) = v38[4];
      *v37 = v43;
      *(v37 + 1) = v42;
      v38[4] = v41;
      *v38 = v39;
      *(v38 + 1) = v40;
      do
      {
        v37 += 40;
        v45 = *a3;
        v44 = a3[1];
        v46 = sub_70E2E0(*(*a3 + 24), v44, v37);
        v47 = sub_70E2E0(*(v45 + 24), v44, &v67);
        if (*(*(v45 + 16) + 681) == 1)
        {
          v48 = sub_70DE94(*(v45 + 24), v44, v37);
          v49 = sub_70DE94(*(v45 + 24), v44, &v67);
          v50 = *(v45 + 16);
          v51.i16[0] = *(v50 + 580);
          v52 = vmovl_s16(v51).i32[0];
          if (vabdd_f64(v46, v47) <= v52)
          {
            LOWORD(v52) = *(v50 + 582);
            if (vabdd_f64(v48, v49) >= vmovl_s16(*&v52).i32[0])
            {
              v46 = v48;
              v47 = v49;
            }
          }
        }
      }

      while (fabs(v46) < fabs(v47));
      do
      {
        v38 -= 5;
        v54 = *a3;
        v53 = a3[1];
        v55 = sub_70E2E0(*(*a3 + 24), v53, v38);
        v56 = sub_70E2E0(*(v54 + 24), v53, &v67);
        if (*(*(v54 + 16) + 681) == 1)
        {
          v57 = sub_70DE94(*(v54 + 24), v53, v38);
          v58 = sub_70DE94(*(v54 + 24), v53, &v67);
          v59 = *(v54 + 16);
          v60.i16[0] = *(v59 + 580);
          v61 = vmovl_s16(v60).i32[0];
          if (vabdd_f64(v55, v56) <= v61)
          {
            LOWORD(v61) = *(v59 + 582);
            if (vabdd_f64(v57, v58) >= vmovl_s16(*&v61).i32[0])
            {
              v55 = v57;
              v56 = v58;
            }
          }
        }
      }

      while (fabs(v55) >= fabs(v56));
    }

    while (v37 < v38);
    v18 = (v37 - 40);
  }

  if (v18 != a1)
  {
    v62 = *v18;
    v63 = v18[1];
    *(a1 + 4) = *(v18 + 4);
    *a1 = v62;
    a1[1] = v63;
  }

  v64 = v67;
  v65 = v68;
  *(v18 + 4) = v69;
  *v18 = v64;
  v18[1] = v65;
  return v18;
}

BOOL sub_7481D8(int **a1, __int128 *a2, void *a3)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = a2 - 5;
        v9 = *a3;
        v8 = a3[1];
        v10 = sub_70E2E0(*(*a3 + 24), v8, a2 - 5);
        v11 = sub_70E2E0(*(v9 + 24), v8, a1);
        if (*(*(v9 + 16) + 681) == 1)
        {
          v12 = sub_70DE94(*(v9 + 24), v8, v7);
          v13 = sub_70DE94(*(v9 + 24), v8, a1);
          v14 = *(v9 + 16);
          v15.i16[0] = *(v14 + 580);
          v16 = vmovl_s16(v15).i32[0];
          if (vabdd_f64(v10, v11) <= v16)
          {
            LOWORD(v16) = *(v14 + 582);
            if (vabdd_f64(v12, v13) >= vmovl_s16(*&v16).i32[0])
            {
              v10 = v12;
              v11 = v13;
            }
          }
        }

        if (fabs(v10) < fabs(v11))
        {
          v17 = *a1;
          v18 = *(a1 + 1);
          v19 = a1[4];
          v20 = v7[4];
          v21 = *(v7 + 1);
          *a1 = *v7;
          *(a1 + 1) = v21;
          a1[4] = v20;
          v7[4] = v19;
          result = 1;
          *v7 = v17;
          *(v7 + 1) = v18;
          return result;
        }

        return 1;
      }

      goto LABEL_15;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_746CC4(a1, a1 + 5, a2 - 5, a3);
      return 1;
    case 4:
      sub_747120(a1, a1 + 5, a1 + 10, a2 - 5, a3);
      return 1;
    case 5:
      sub_747404(a1, a1 + 5, a1 + 10, a1 + 15, a2 - 5, a3);
      return 1;
  }

LABEL_15:
  v23 = a1 + 10;
  sub_746CC4(a1, a1 + 5, a1 + 10, a3);
  v24 = (a1 + 15);
  if (a1 + 15 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    v30 = *a3;
    v29 = a3[1];
    v31 = sub_70E2E0(*(*a3 + 24), v29, v24);
    v32 = sub_70E2E0(*(v30 + 24), v29, v23);
    if (*(*(v30 + 16) + 681) == 1)
    {
      v33 = sub_70DE94(*(v30 + 24), v29, v24);
      v34 = sub_70DE94(*(v30 + 24), v29, v23);
      v35 = *(v30 + 16);
      v36.i16[0] = *(v35 + 580);
      v37 = vmovl_s16(v36).i32[0];
      if (vabdd_f64(v31, v32) <= v37)
      {
        LOWORD(v37) = *(v35 + 582);
        if (vabdd_f64(v33, v34) >= vmovl_s16(*&v37).i32[0])
        {
          v31 = v33;
          v32 = v34;
        }
      }
    }

    if (fabs(v31) < fabs(v32))
    {
      v38 = v24[1];
      v51 = *v24;
      v52 = v38;
      v53 = *(v24 + 4);
      v39 = v25;
      do
      {
        v40 = a1 + v39;
        v41 = *(a1 + v39 + 96);
        *(v40 + 120) = *(a1 + v39 + 80);
        *(v40 + 136) = v41;
        *(v40 + 152) = *(a1 + v39 + 112);
        if (v39 == -80)
        {
          v27 = a1;
          goto LABEL_18;
        }

        v43 = *a3;
        v42 = a3[1];
        v44 = sub_70E2E0(*(*a3 + 24), v42, &v51);
        v45 = sub_70E2E0(*(v43 + 24), v42, (v40 + 40));
        if (*(*(v43 + 16) + 681) == 1)
        {
          v46 = sub_70DE94(*(v43 + 24), v42, &v51);
          v47 = sub_70DE94(*(v43 + 24), v42, (v40 + 40));
          v48 = *(v43 + 16);
          v49.i16[0] = *(v48 + 580);
          v50 = vmovl_s16(v49).i32[0];
          if (vabdd_f64(v44, v45) <= v50)
          {
            LOWORD(v50) = *(v48 + 582);
            if (vabdd_f64(v46, v47) >= vmovl_s16(*&v50).i32[0])
            {
              v44 = v46;
              v45 = v47;
            }
          }
        }

        v39 -= 40;
      }

      while (fabs(v44) < fabs(v45));
      v27 = a1 + v39 + 120;
LABEL_18:
      v28 = v52;
      *v27 = v51;
      *(v27 + 16) = v28;
      *(v27 + 32) = v53;
      if (++v26 == 8)
      {
        return (v24 + 40) == a2;
      }
    }

    v23 = v24;
    v25 += 40;
    v24 = (v24 + 40);
    if (v24 == a2)
    {
      return 1;
    }
  }
}

void sub_7485D8(uint64_t a1, void *a2, uint64_t a3, int **a4)
{
  v10 = a3 - 2;
  if (a3 >= 2)
  {
    v66 = v9;
    v67 = v8;
    v68 = v7;
    v69 = v6;
    v70 = v4;
    v71 = v5;
    v11 = a4;
    if ((v10 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 3)))
    {
      v15 = (0x999999999999999ALL * ((a4 - a1) >> 3)) | 1;
      v16 = (a1 + 40 * v15);
      v17 = 0x999999999999999ALL * ((a4 - a1) >> 3) + 2;
      v62 = v10 >> 1;
      if (v17 < a3)
      {
        v19 = *a2;
        v18 = a2[1];
        v20 = sub_70E2E0(*(*a2 + 24), v18, (a1 + 40 * v15));
        v21 = sub_70E2E0(*(v19 + 24), v18, v16 + 5);
        if (*(*(v19 + 16) + 681) == 1)
        {
          v22 = sub_70DE94(*(v19 + 24), v18, (a1 + 40 * v15));
          v23 = sub_70DE94(*(v19 + 24), v18, v16 + 5);
          v24 = *(v19 + 16);
          v25.i16[0] = *(v24 + 580);
          v26 = vmovl_s16(v25).i32[0];
          if (vabdd_f64(v20, v21) <= v26)
          {
            LOWORD(v26) = *(v24 + 582);
            if (vabdd_f64(v22, v23) >= vmovl_s16(*&v26).i32[0])
            {
              v20 = v22;
              v21 = v23;
            }
          }
        }

        if (fabs(v20) < fabs(v21))
        {
          v16 += 5;
          v15 = v17;
        }
      }

      v28 = *a2;
      v27 = a2[1];
      v29 = sub_70E2E0(*(*a2 + 24), v27, v16);
      v30 = sub_70E2E0(*(v28 + 24), v27, v11);
      if (*(*(v28 + 16) + 681) == 1)
      {
        v31 = sub_70DE94(*(v28 + 24), v27, v16);
        v32 = sub_70DE94(*(v28 + 24), v27, v11);
        v33 = *(v28 + 16);
        v34.i16[0] = *(v33 + 580);
        v35 = vmovl_s16(v34).i32[0];
        if (vabdd_f64(v29, v30) <= v35)
        {
          LOWORD(v35) = *(v33 + 582);
          if (vabdd_f64(v31, v32) >= vmovl_s16(*&v35).i32[0])
          {
            v29 = v31;
            v30 = v32;
          }
        }
      }

      v36 = v62;
      if (fabs(v29) >= fabs(v30))
      {
        v37 = *(v11 + 1);
        v63 = *v11;
        v64 = v37;
        v65 = v11[4];
        do
        {
          v38 = v16;
          v39 = *v16;
          v40 = *(v16 + 1);
          v11[4] = v16[4];
          *v11 = v39;
          *(v11 + 1) = v40;
          if (v36 < v15)
          {
            break;
          }

          v41 = (2 * v15) | 1;
          v16 = (a1 + 40 * v41);
          v15 = 2 * v15 + 2;
          if (v15 >= a3)
          {
            v15 = v41;
          }

          else
          {
            v43 = *a2;
            v42 = a2[1];
            v44 = sub_70E2E0(*(*a2 + 24), v42, (a1 + 40 * v41));
            v45 = sub_70E2E0(*(v43 + 24), v42, v16 + 5);
            if (*(*(v43 + 16) + 681) == 1)
            {
              v46 = sub_70DE94(*(v43 + 24), v42, (a1 + 40 * v41));
              v47 = sub_70DE94(*(v43 + 24), v42, v16 + 5);
              v48 = *(v43 + 16);
              v49.i16[0] = *(v48 + 580);
              v50 = vmovl_s16(v49).i32[0];
              if (vabdd_f64(v44, v45) <= v50)
              {
                LOWORD(v50) = *(v48 + 582);
                if (vabdd_f64(v46, v47) >= vmovl_s16(*&v50).i32[0])
                {
                  v44 = v46;
                  v45 = v47;
                }
              }
            }

            v36 = v62;
            if (fabs(v44) >= fabs(v45))
            {
              v15 = v41;
            }

            else
            {
              v16 += 5;
            }
          }

          v52 = *a2;
          v51 = a2[1];
          v53 = sub_70E2E0(*(*a2 + 24), v51, v16);
          v54 = sub_70E2E0(*(v52 + 24), v51, &v63);
          if (*(*(v52 + 16) + 681) == 1)
          {
            v55 = sub_70DE94(*(v52 + 24), v51, v16);
            v56 = sub_70DE94(*(v52 + 24), v51, &v63);
            v57 = *(v52 + 16);
            v58.i16[0] = *(v57 + 580);
            v59 = vmovl_s16(v58).i32[0];
            if (vabdd_f64(v53, v54) <= v59)
            {
              LOWORD(v59) = *(v57 + 582);
              if (vabdd_f64(v55, v56) >= vmovl_s16(*&v59).i32[0])
              {
                v53 = v55;
                v54 = v56;
              }
            }
          }

          v11 = v38;
        }

        while (fabs(v53) >= fabs(v54));
        v60 = v63;
        v61 = v64;
        v38[4] = v65;
        *v38 = v60;
        *(v38 + 1) = v61;
      }
    }
  }
}

void sub_7489E8(__int128 *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = 0;
    v57 = *a1;
    v58 = a1[1];
    v59 = *(a1 + 4);
    v6 = (a4 - 2) >> 1;
    v7 = a1;
    do
    {
      v12 = v7 + 5 * v5;
      v8 = v12 + 5;
      v9 = (2 * v5) | 1;
      v13 = 2 * v5 + 2;
      if (v13 < a4)
      {
        v14 = v12 + 10;
        v15 = *a3;
        v16 = a3[1];
        v17 = sub_70E2E0(*(*a3 + 24), v16, v12 + 5);
        v18 = sub_70E2E0(*(v15 + 24), v16, v14);
        if (*(*(v15 + 16) + 681) == 1)
        {
          v19 = sub_70DE94(*(v15 + 24), v16, v8);
          v20 = sub_70DE94(*(v15 + 24), v16, v14);
          v21 = *(v15 + 16);
          v22.i16[0] = *(v21 + 580);
          v23 = vmovl_s16(v22).i32[0];
          if (vabdd_f64(v17, v18) <= v23)
          {
            LOWORD(v23) = *(v21 + 582);
            if (vabdd_f64(v19, v20) >= vmovl_s16(*&v23).i32[0])
            {
              v17 = v19;
              v18 = v20;
            }
          }
        }

        if (fabs(v17) < fabs(v18))
        {
          v8 = v14;
          v9 = v13;
        }
      }

      v10 = *v8;
      v11 = *(v8 + 1);
      *(v7 + 4) = v8[4];
      *v7 = v10;
      v7[1] = v11;
      v7 = v8;
      v5 = v9;
    }

    while (v9 <= v6);
    v24 = (a2 - 40);
    if (v8 == (a2 - 40))
    {
      v8[4] = v59;
      *v8 = v57;
      *(v8 + 1) = v58;
    }

    else
    {
      v25 = *v24;
      v26 = *(a2 - 24);
      v8[4] = *(a2 - 8);
      *v8 = v25;
      *(v8 + 1) = v26;
      *v24 = v57;
      *(a2 - 24) = v58;
      *(a2 - 8) = v59;
      v27 = v8 - a1 + 40;
      if (v27 >= 41)
      {
        v28 = (0xCCCCCCCCCCCCCCCDLL * (v27 >> 3) - 2) >> 1;
        v29 = a1 + 5 * v28;
        v30 = *a3;
        v31 = a3[1];
        v32 = sub_70E2E0(*(*a3 + 24), v31, v29);
        v33 = sub_70E2E0(*(v30 + 24), v31, v8);
        if (*(*(v30 + 16) + 681) == 1)
        {
          v34 = sub_70DE94(*(v30 + 24), v31, a1 + 5 * v28);
          v35 = sub_70DE94(*(v30 + 24), v31, v8);
          v36 = *(v30 + 16);
          v37.i16[0] = *(v36 + 580);
          v38 = vmovl_s16(v37).i32[0];
          if (vabdd_f64(v32, v33) <= v38)
          {
            LOWORD(v38) = *(v36 + 582);
            if (vabdd_f64(v34, v35) >= vmovl_s16(*&v38).i32[0])
            {
              v32 = v34;
              v33 = v35;
            }
          }
        }

        if (fabs(v32) < fabs(v33))
        {
          v39 = *v8;
          v40 = *(v8 + 1);
          v62 = v8[4];
          v60 = v39;
          v61 = v40;
          do
          {
            v41 = v29;
            v42 = *v29;
            v43 = *(v29 + 1);
            v8[4] = v29[4];
            *v8 = v42;
            *(v8 + 1) = v43;
            if (!v28)
            {
              break;
            }

            v28 = (v28 - 1) >> 1;
            v29 = a1 + 5 * v28;
            v44 = *a3;
            v45 = a3[1];
            v46 = sub_70E2E0(*(*a3 + 24), v45, v29);
            v47 = sub_70E2E0(*(v44 + 24), v45, &v60);
            if (*(*(v44 + 16) + 681) == 1)
            {
              v48 = sub_70DE94(*(v44 + 24), v45, a1 + 5 * v28);
              v49 = sub_70DE94(*(v44 + 24), v45, &v60);
              v50 = *(v44 + 16);
              v51.i16[0] = *(v50 + 580);
              v52 = vmovl_s16(v51).i32[0];
              if (vabdd_f64(v46, v47) <= v52)
              {
                LOWORD(v52) = *(v50 + 582);
                if (vabdd_f64(v48, v49) >= vmovl_s16(*&v52).i32[0])
                {
                  v46 = v48;
                  v47 = v49;
                }
              }
            }

            v8 = v41;
          }

          while (fabs(v46) < fabs(v47));
          v53 = v61;
          *v41 = v60;
          *(v41 + 1) = v53;
          v41[4] = v62;
        }
      }
    }
  }
}

void sub_748DB4()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A4210 = 0u;
  unk_27A4220 = 0u;
  dword_27A4230 = 1065353216;
  sub_3A9A34(&xmmword_27A4210, v0, v0);
  sub_3A9A34(&xmmword_27A4210, v3, v3);
  sub_3A9A34(&xmmword_27A4210, __p, __p);
  sub_3A9A34(&xmmword_27A4210, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27A41E8 = 0;
    qword_27A41F0 = 0;
    qword_27A41E0 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_748FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A41F8)
  {
    qword_27A4200 = qword_27A41F8;
    operator delete(qword_27A41F8);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_7490A8(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v16, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v16, &v17);
    v6 = std::string::append(&v17, ",size=", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v18, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20 = v10->__r_.__value_.__r.__words[2];
    v19 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v20 >= 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19;
    }

    if (v20 >= 0)
    {
      v13 = HIBYTE(v20);
    }

    else
    {
      v13 = *(&v19 + 1);
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  return *a1 + 40 * a2;
}

void sub_7491FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_7492DC(__int128 **a1)
{
  v2 = sub_4D1EF8(a1[3], a1[4]);
  v4 = v3;
  if (sub_4D2148(a1[3], a1[4]) || sub_4D21C8(a1[3], a1[4]) != 1000000000)
  {
    if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) < v4)
    {
      if (v4 < 0x555555555555556)
      {
        operator new();
      }

      sub_1794();
    }

    if (v4)
    {
      v6 = 48 * v4;
      v7 = v2 + 40;
      do
      {
        v20 = *(v7 - 8);
        v19 = sub_4D2148(a1[3], a1[4]);
        v18 = sub_4D21C8(a1[3], a1[4]);
        v12 = sub_4E662C(&v20, &v19, &v18, v8, v9, v10, v11);
        v13 = *v7;
        *&v15[0] = a1[4];
        DWORD2(v15[0]) = v12;
        v14 = *(v7 - 1);
        v15[1] = *(v7 - 24);
        v16 = v14;
        v17 = v13;
        sub_7497E8(a1, v15);
        v7 += 48;
        v6 -= 48;
      }

      while (v6);
    }
  }

  else if (v4)
  {
    v5 = 48 * v4;
    do
    {
      sub_7497E8(a1, v2);
      v2 += 3;
      v5 -= 48;
    }

    while (v5);
  }
}

uint64_t sub_7494A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  sub_7492DC(a1);
  return a1;
}

void sub_7494D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7494F0(uint64_t a1)
{
  v2 = sub_4D1F50(*(a1 + 24), *(a1 + 32));
  v4 = (*v2 - **v2);
  v5 = 0.0;
  if (*v4 >= 9u)
  {
    v6 = v4[4];
    if (v6)
    {
      LODWORD(v3) = *(*v2 + v6);
      v5 = v3;
    }
  }

  v7 = sub_4D21C8(*(a1 + 24), *(a1 + 32));
  v8 = v5 * ((v7 - sub_4D2148(*(a1 + 24), *(a1 + 32))) / 1000000000.0);
  if (v8 >= 0.0)
  {
    if (v8 < 4.50359963e15)
    {
      v9 = (v8 + v8) + 1;
      return (v9 >> 1);
    }
  }

  else if (v8 > -4.50359963e15)
  {
    v9 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
    return (v9 >> 1);
  }

  return v8;
}

double sub_7495D4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, void **a3@<X8>)
{
  v8 = a1 + 24;
  v6 = *(a1 + 24);
  v7 = *(v8 + 8);
  if (v7 >= 0xCCCCCCCCCCCCCCCDLL * ((v6[1267] - v6[1266]) >> 3))
  {
    v11 = sub_4D1F50(v6, v7);
    sub_2B79D0(a2, *(v11 + 32) | (*(v11 + 36) << 32), &v16);
    sub_31BF20(&v16, a3);
    if (*(&v16 + 1))
    {
      v17 = *(&v16 + 1);
      operator delete(*(&v16 + 1));
    }
  }

  else
  {
    sub_7490A8(v6 + 1266, v7);
    nullsub_1();
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    v10 = v9[1];
    if (v10 != *v9)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v10 - *v9) >> 2) < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }
  }

  if (sub_4D2148(*(a1 + 24), *(a1 + 32)) || sub_4D21C8(*(a1 + 24), *(a1 + 32)) != 1000000000)
  {
    v13 = sub_4D2148(*(a1 + 24), *(a1 + 32));
    v14 = sub_4D21C8(*(a1 + 24), *(a1 + 32));
    sub_2F4C8(a3, 0, &v16, v13 / 1000000000.0, v14 / 1000000000.0);
    v15 = *a3;
    if (*a3)
    {
      a3[1] = v15;
      operator delete(v15);
    }

    result = *&v16;
    *a3 = v16;
    a3[2] = v17;
  }

  return result;
}

void sub_749780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_7497E8(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[2];
    v3[1] = a2[1];
    v3[2] = v6;
    *v3 = v5;
    v7 = v3 + 3;
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = v3 - *a1;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 4) + 1;
  if (v10 > 0x555555555555555)
  {
    sub_1794();
  }

  v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 4);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x2AAAAAAAAAAAAAALL)
  {
    v12 = 0x555555555555555;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = (16 * (v9 >> 4));
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v13[2] = a2[2];
  v7 = v13 + 3;
  v15 = (v13 - v9);
  if (v8 != v3)
  {
    v16 = v15;
    do
    {
      v17 = *v8;
      v18 = v8[2];
      v16[1] = v8[1];
      v16[2] = v18;
      *v16 = v17;
      v16 += 3;
      v8 += 3;
    }

    while (v8 != v3);
    v8 = *a1;
  }

  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(a1 + 8) = v7;
}

void sub_749948()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A4268 = 0u;
  unk_27A4278 = 0u;
  dword_27A4288 = 1065353216;
  sub_3A9A34(&xmmword_27A4268, v0, v0);
  sub_3A9A34(&xmmword_27A4268, v3, v3);
  sub_3A9A34(&xmmword_27A4268, __p, __p);
  sub_3A9A34(&xmmword_27A4268, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27A4240 = 0;
    qword_27A4248 = 0;
    qword_27A4238 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_749B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A4250)
  {
    qword_27A4258 = qword_27A4250;
    operator delete(qword_27A4250);
  }

  _Unwind_Resume(exception_object);
}

void sub_749C3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      *a2 = *a1;
      v3 = *(a1 + 16);
LABEL_32:
      *(a2 + 16) = v3;
      return;
    }

LABEL_5:
    if ((atomic_load_explicit(&qword_27A4290, memory_order_acquire) & 1) == 0)
    {
      v13 = a1;
      v14 = __cxa_guard_acquire(&qword_27A4290);
      a1 = v13;
      if (v14)
      {
        xmmword_27A52D0 = *"\x1B\\tn=nav\"";
        qword_27A52E0 = 0x900000000000000;
        *&qword_27A52E8 = *"\x1B\\tn=address\"";
        qword_27A52F8 = 0xD00000000000000;
        xmmword_27A5300 = *"\x1B\\toi=lhp\"";
        qword_27A5310 = 0xA00000000000000;
        qword_27A5328 = 0xB00000000000000;
        *&qword_27A5318 = *"\x1B\\toi=orth\"";
        if (byte_27A42AF < 0)
        {
          sub_325C(&xmmword_27A5330, xmmword_27A4298, *(&xmmword_27A4298 + 1));
        }

        else
        {
          xmmword_27A5330 = xmmword_27A4298;
          qword_27A5340 = unk_27A42A8;
        }

        __cxa_guard_release(&qword_27A4290);
        a1 = v13;
      }
    }

    v4 = *(a1 + 23);
    if (v4 >= 0)
    {
      v5 = *(a1 + 23);
    }

    else
    {
      v5 = *(a1 + 8);
    }

    if (v5 + 13 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v5 + 13 >= 0x17)
    {
      operator new();
    }

    BYTE13(v15) = 0;
    HIWORD(v15) = 0;
    v16 = 0;
    HIBYTE(v16) = v5 + 13;
    strcpy(&v15, "\x1B\\tn=address");
    if (v5)
    {
      if ((v4 & 0x80u) == 0)
      {
        v6 = a1;
      }

      else
      {
        v6 = *a1;
      }

      memmove(&v15 + 13, v6, v5);
    }

    *(&v15 + v5 + 13) = 0;
    v7 = SHIBYTE(v16);
    if ((SHIBYTE(v16) & 0x8000000000000000) != 0)
    {
      v7 = *(&v15 + 1);
      v8 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if ((v8 - *(&v15 + 1)) < 9)
      {
        if (0x7FFFFFFFFFFFFFF7 - (v16 & 0x7FFFFFFFFFFFFFFFuLL) < *(&v15 + 1) + 9 - v8)
        {
          sub_3244();
        }

LABEL_22:
        operator new();
      }

      v9 = v15;
    }

    else
    {
      if ((SHIBYTE(v16) - 14) < 9)
      {
        goto LABEL_22;
      }

      v9 = &v15;
    }

    v11 = v9 + v7;
    *v11 = *"\x1B\\tn=nav\"";
    v11[8] = 92;
    v12 = v7 + 9;
    if (SHIBYTE(v16) < 0)
    {
      *(&v15 + 1) = v7 + 9;
    }

    else
    {
      HIBYTE(v16) = v12 & 0x7F;
    }

    *(v9 + v12) = 0;
    *a2 = v15;
    v3 = v16;
    goto LABEL_32;
  }

  if (*(a1 + 8))
  {
    goto LABEL_5;
  }

  v10 = *a1;

  sub_325C(a2, v10, 0);
}

void sub_74A014(_Unwind_Exception *a1)
{
  if (SHIBYTE(qword_27A5328) < 0)
  {
    sub_21E350C();
  }

  sub_21E3518();
  _Unwind_Resume(a1);
}

void sub_74A034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_74A04C(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[23];
  v6 = *a1;
  v5 = *(a1 + 1);
  if (v4 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v4 >= 0)
  {
    v8 = a1[23];
  }

  else
  {
    v8 = *(a1 + 1);
  }

  if (v8 < 7)
  {
    goto LABEL_20;
  }

  v9 = &v7[v8];
  v10 = v8;
  v11 = v7;
  while (1)
  {
    v12 = memchr(v11, 27, v10 - 6);
    if (!v12)
    {
      goto LABEL_20;
    }

    if (*v12 == 1634491419 && *(v12 + 3) == 1030188641)
    {
      break;
    }

    v11 = v12 + 1;
    v10 = v9 - v11;
    if (v9 - v11 < 7)
    {
      goto LABEL_20;
    }
  }

  if (v12 == v9 || v12 - v7 == -1)
  {
LABEL_20:
    if ((v8 + 10) > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if ((v8 + 10) >= 0x17)
    {
      operator new();
    }

    *(&v21 + 1) = 23664;
    v22 = 0;
    HIBYTE(v22) = v8 + 10;
    *&v21 = *"\x1B\\toi=lhp\"";
    if (v8)
    {
      if ((v4 & 0x80u) == 0)
      {
        v15 = a1;
      }

      else
      {
        v15 = v6;
      }

      memmove(&v21 + 10, v15, v8);
    }

    *(&v21 + v8 + 10) = 0;
    v16 = SHIBYTE(v22);
    if ((SHIBYTE(v22) & 0x8000000000000000) != 0)
    {
      v16 = *(&v21 + 1);
      v17 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if ((v17 - *(&v21 + 1)) < 0xB)
      {
        if (0x7FFFFFFFFFFFFFF7 - (v22 & 0x7FFFFFFFFFFFFFFFuLL) < *(&v21 + 1) + 11 - v17)
        {
          sub_3244();
        }

LABEL_33:
        operator new();
      }

      v18 = v21;
    }

    else
    {
      if ((SHIBYTE(v22) - 12) < 0xB)
      {
        goto LABEL_33;
      }

      v18 = &v21;
    }

    v19 = v18 + v16;
    *v19 = *"\x1B\\toi=orth\"";
    *(v19 + 7) = 1550349426;
    v20 = v16 + 11;
    if (SHIBYTE(v22) < 0)
    {
      *(&v21 + 1) = v16 + 11;
    }

    else
    {
      HIBYTE(v22) = v20 & 0x7F;
    }

    *(v18 + v20) = 0;
    *a2 = v21;
    v14 = v22;
    goto LABEL_40;
  }

  if ((v4 & 0x80000000) == 0)
  {
    *a2 = *a1;
    v14 = *(a1 + 2);
LABEL_40:
    *(a2 + 16) = v14;
    return;
  }

  sub_325C(a2, v6, v5);
}

void sub_74A3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_74A3B8(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[23];
  v5 = *a1;
  v6 = *(a1 + 1);
  if (v4 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v4 >= 0)
  {
    v8 = a1[23];
  }

  else
  {
    v8 = *(a1 + 1);
  }

  if (v8 < 7)
  {
    goto LABEL_20;
  }

  v9 = &v7[v8];
  v10 = v8;
  v11 = v7;
  while (1)
  {
    v12 = memchr(v11, 27, v10 - 6);
    if (!v12)
    {
      goto LABEL_20;
    }

    if (*v12 == 1634491419 && *(v12 + 3) == 1030188641)
    {
      break;
    }

    v11 = v12 + 1;
    v10 = v9 - v11;
    if (v9 - v11 < 7)
    {
      goto LABEL_20;
    }
  }

  if (v12 == v9 || v12 - v7 == -1)
  {
LABEL_20:
    if (byte_27A42AF >= 0)
    {
      v15 = byte_27A42AF;
    }

    else
    {
      v15 = *(&xmmword_27A4298 + 1);
    }

    if (v8 + v15 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v8 + v15 > 0x16)
    {
      operator new();
    }

    v25 = 0;
    v24 = 0uLL;
    HIBYTE(v25) = v8 + v15;
    if (v15)
    {
      if (byte_27A42AF >= 0)
      {
        v16 = &xmmword_27A4298;
      }

      else
      {
        v16 = xmmword_27A4298;
      }

      memmove(&v24, v16, v15);
    }

    v17 = &v24 + v15;
    if (v8)
    {
      if (a1[23] >= 0)
      {
        v18 = a1;
      }

      else
      {
        v18 = *a1;
      }

      memmove(v17, v18, v8);
    }

    v17[v8] = 0;
    v19 = SHIBYTE(v25);
    if ((SHIBYTE(v25) & 0x8000000000000000) != 0)
    {
      v19 = *(&v24 + 1);
      v20 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if ((v20 - *(&v24 + 1)) < 0xB)
      {
        if (0x7FFFFFFFFFFFFFF7 - (v25 & 0x7FFFFFFFFFFFFFFFuLL) < *(&v24 + 1) + 11 - v20)
        {
          sub_3244();
        }

LABEL_41:
        operator new();
      }

      v21 = v24;
    }

    else
    {
      if ((SHIBYTE(v25) - 12) < 0xB)
      {
        goto LABEL_41;
      }

      v21 = &v24;
    }

    v22 = v21 + v19;
    *v22 = *"\x1B\\toi=orth\"";
    *(v22 + 7) = 1550349426;
    v23 = v19 + 11;
    if (SHIBYTE(v25) < 0)
    {
      *(&v24 + 1) = v19 + 11;
    }

    else
    {
      HIBYTE(v25) = v23 & 0x7F;
    }

    *(v21 + v23) = 0;
    *a2 = v24;
    v14 = v25;
    goto LABEL_48;
  }

  if ((v4 & 0x80000000) == 0)
  {
    *a2 = *a1;
    v14 = *(a1 + 2);
LABEL_48:
    *(a2 + 16) = v14;
    return;
  }

  sub_325C(a2, v5, v6);
}

void sub_74A72C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_74A744(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[23];
  if ((v4 & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 1);
    if (!v6)
    {
      v19 = *a1;

      sub_325C(a2, v19, 0);
      return;
    }

    v5 = *a1;
    if (v6 < 9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!a1[23])
    {
      *a2 = *a1;
      *(a2 + 16) = *(a1 + 2);
      return;
    }

    v5 = a1;
    if (v4 < 9)
    {
      goto LABEL_11;
    }
  }

  v7 = *v5;
  v8 = v5[8];
  if (v7 == 0x76616E3D6E745C1BLL && v8 == 92)
  {
    v11 = 0;
    HIBYTE(v28) = 0;
    LOBYTE(__src) = 0;
    v10 = 1;
    if ((v4 & 0x80000000) == 0)
    {
      v12 = v4;
    }

    else
    {
      v12 = *(a1 + 1);
    }

    if (v12 < 0xC)
    {
      goto LABEL_32;
    }

    goto LABEL_15;
  }

LABEL_11:
  v10 = 0;
  __src = *"\x1B\\tn=nav\"";
  v28 = 0x900000000000000;
  v11 = 9;
  if ((v4 & 0x80000000) == 0)
  {
    v12 = v4;
  }

  else
  {
    v12 = *(a1 + 1);
  }

  if (v12 < 0xC)
  {
    goto LABEL_32;
  }

LABEL_15:
  if ((v4 & 0x80000000) == 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = *a1;
  }

  v14 = &v13[v12];
  v15 = *(v14 - 12);
  v16 = *(v14 - 1);
  if (v15 != 0x726F6E3D6E745C1BLL || v16 != 1550606701)
  {
LABEL_32:
    v26 = 0xC00000000000000;
    *__s = *"\x1B\\tn=normal\"";
    v18 = 12;
    goto LABEL_33;
  }

  v18 = 0;
  HIBYTE(v26) = 0;
  __s[0] = 0;
LABEL_33:
  if (v12 + v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v12 + v11 > 0x16)
  {
    operator new();
  }

  memset(&v24, 0, sizeof(v24));
  *(&v24.__r_.__value_.__s + 23) = v12 + v11;
  if ((v10 & 1) == 0)
  {
    memcpy(&v24, &__src, v11);
  }

  v20 = &v24 + v11;
  if (v12)
  {
    if (a1[23] >= 0)
    {
      v21 = a1;
    }

    else
    {
      v21 = *a1;
    }

    memmove(v20, v21, v12);
  }

  v20[v12] = 0;
  v22 = std::string::append(&v24, __s, v18);
  v23 = *&v22->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&v22->__r_.__value_.__l + 2);
  *a2 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      return;
    }

LABEL_47:
    operator delete(*__s);
    return;
  }

  operator delete(v24.__r_.__value_.__l.__data_);
  if (SHIBYTE(v26) < 0)
  {
    goto LABEL_47;
  }
}

void sub_74A9F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void sub_74AA44(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  v10 = *(a3 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  if (v9 == v10)
  {
    v12 = v8 >= 0 ? a2 : *a2;
    v13 = v11 >= 0 ? a3 : *a3;
    if (!memcmp(v12, v13, v9))
    {
      if (*(a1 + 23) < 0)
      {
        v37 = *a1;
        v38 = *(a1 + 8);

        sub_325C(a4, v37, v38);
      }

      else
      {
        *a4 = *a1;
        *(a4 + 16) = *(a1 + 16);
      }

      return;
    }
  }

  if (v9 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v9 + 7 >= 0x17)
  {
    operator new();
  }

  *&v41.__r_.__value_.__r.__words[1] = 0uLL;
  *(&v41.__r_.__value_.__s + 23) = v9 + 7;
  strcpy(&v41, "\x1B\\lang=");
  if (v9)
  {
    if ((v8 & 0x80u) == 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    memmove(v41.__r_.__value_.__r.__words + 7, v14, v9);
  }

  *(v41.__r_.__value_.__r.__words + v9 + 7) = 0;
  size = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v41.__r_.__value_.__l.__size_;
    v17 = (v41.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v17 == v41.__r_.__value_.__l.__size_)
    {
      if ((v41.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

LABEL_27:
      operator new();
    }

    v16 = v41.__r_.__value_.__r.__words[0];
  }

  else
  {
    v16 = &v41;
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) == 22)
    {
      goto LABEL_27;
    }
  }

  v16->__r_.__value_.__s.__data_[size] = 92;
  v18 = size + 1;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    v41.__r_.__value_.__l.__size_ = v18;
  }

  else
  {
    *(&v41.__r_.__value_.__s + 23) = v18 & 0x7F;
  }

  v16->__r_.__value_.__s.__data_[v18] = 0;
  v42 = v41;
  memset(&v41, 0, sizeof(v41));
  sub_74A04C(a1, v39);
  if ((v40 & 0x80u) == 0)
  {
    v19 = v39;
  }

  else
  {
    v19 = v39[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v20 = v40;
  }

  else
  {
    v20 = v39[1];
  }

  v21 = std::string::append(&v42, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v23 = __p.__r_.__value_.__l.__size_;
    v24 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v24 - __p.__r_.__value_.__l.__size_ < 7)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 7 - v24)
      {
        sub_3244();
      }

LABEL_45:
      operator new();
    }

    p_p = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 16) < 7)
    {
      goto LABEL_45;
    }

    p_p = &__p;
  }

  v26 = (p_p + v23);
  *(v26 + 3) = 1030188641;
  *v26 = 1634491419;
  v27 = v23 + 7;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    __p.__r_.__value_.__l.__size_ = v23 + 7;
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = v27 & 0x7F;
  }

  p_p->__r_.__value_.__s.__data_[v27] = 0;
  v44 = __p;
  memset(&__p, 0, sizeof(__p));
  v28 = *(a3 + 23);
  if (v28 >= 0)
  {
    v29 = a3;
  }

  else
  {
    v29 = *a3;
  }

  if (v28 >= 0)
  {
    v30 = *(a3 + 23);
  }

  else
  {
    v30 = *(a3 + 8);
  }

  v31 = std::string::append(&v44, v29, v30);
  v32 = *&v31->__r_.__value_.__l.__data_;
  v46 = v31->__r_.__value_.__r.__words[2];
  v45 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  v33 = SHIBYTE(v46);
  if ((SHIBYTE(v46) & 0x8000000000000000) != 0)
  {
    v33 = *(&v45 + 1);
    v35 = (v46 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v35 == *(&v45 + 1))
    {
      if ((v46 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

LABEL_62:
      operator new();
    }

    v34 = v45;
  }

  else
  {
    v34 = &v45;
    if (SHIBYTE(v46) == 22)
    {
      goto LABEL_62;
    }
  }

  *(v34 + v33) = 92;
  v36 = v33 + 1;
  if (SHIBYTE(v46) < 0)
  {
    *(&v45 + 1) = v36;
  }

  else
  {
    HIBYTE(v46) = v36 & 0x7F;
  }

  *(v34 + v36) = 0;
  *a4 = v45;
  *(a4 + 16) = v46;
  v46 = 0;
  v45 = 0uLL;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_69:
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_70;
      }

LABEL_75:
      operator delete(v39[0]);
      if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_71:
        if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

LABEL_77:
        operator delete(v41.__r_.__value_.__l.__data_);
        return;
      }

      goto LABEL_76;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_69;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v40 < 0)
  {
    goto LABEL_75;
  }

LABEL_70:
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

LABEL_76:
  operator delete(v42.__r_.__value_.__l.__data_);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_77;
  }
}

void sub_74B0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (v40 < 0)
  {
    operator delete(*(v41 - 112));
    if (a40 < 0)
    {
LABEL_5:
      operator delete(__p);
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if (a40 < 0)
  {
    goto LABEL_5;
  }

  if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    if (a14 < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a28);
  if (a14 < 0)
  {
LABEL_7:
    operator delete(a9);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

LABEL_12:
  if ((a26 & 0x80000000) == 0)
  {
LABEL_8:
    if (a20 < 0)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_9:
    operator delete(a15);
    _Unwind_Resume(a1);
  }

LABEL_14:
  _Unwind_Resume(a1);
}

void sub_74B1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x74B124);
  }

  JUMPOUT(0x74B190);
}

void sub_74B1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    JUMPOUT(0x74B198);
  }

  JUMPOUT(0x74B134);
}

void sub_74B1D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_734C10(a1 + 32))
  {
    v4 = *(a1 + 60);
    switch(v4)
    {
      case 3:
        sub_74A3B8((a1 + 32), &v9);
        break;
      case 2:
        sub_74A04C((a1 + 32), &v9);
        break;
      case 0:
        if (*(a1 + 55) < 0)
        {
          v7 = *(a1 + 32);
          v8 = *(a1 + 40);

          sub_325C(a2, v7, v8);
        }

        else
        {
          *a2 = *(a1 + 32);
          *(a2 + 16) = *(a1 + 48);
        }

        return;
      default:
        sub_749C3C(a1 + 32, &v9);
        break;
    }

    v12[0] = *v10;
    *(v12 + 7) = *&v10[7];
    v5 = v11;
    v6 = v12[0];
    *a2 = v9;
    *(a2 + 8) = v6;
    *(a2 + 15) = *(v12 + 7);
    *(a2 + 23) = v5;
    return;
  }

  sub_749C3C(a1 + 128, a2);
}

void sub_74E188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_37:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_38:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_39:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_40:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_41:
              operator delete(a70);
              if ((a69 & 0x80000000) == 0)
              {
LABEL_42:
                if (a67 < 0)
                {
LABEL_43:
                  operator delete(a66);
                  if ((a65 & 0x80000000) == 0)
                  {
LABEL_44:
                    _Unwind_Resume(a1);
                  }

LABEL_36:
                  operator delete(a63);
                  _Unwind_Resume(a1);
                }

LABEL_35:
                if ((a65 & 0x80000000) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_36;
              }

LABEL_34:
              operator delete(a68);
              if (a67 < 0)
              {
                goto LABEL_43;
              }

              goto LABEL_35;
            }

LABEL_33:
            if ((a69 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_41;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_37;
  }

  goto LABEL_29;
}

void sub_74E3A0(void ***a1, uint64_t a2)
{
  if (!sub_4D1F6C(a1))
  {
    *(a2 + 16) |= 1u;
    v4 = *(a2 + 24);
    if (v4)
    {
      sub_64D110(a1, v4);
      if (!sub_4D1F6C(a1 + 20))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v5 = *(a2 + 8);
      v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
      if (v5)
      {
        v6 = *v6;
      }

      sub_14BAE64(v6);
      *(a2 + 24) = v7;
      sub_64D110(a1, v7);
      if (!sub_4D1F6C(a1 + 20))
      {
        goto LABEL_17;
      }
    }

LABEL_3:
    if (sub_4D1F6C(a1 + 40))
    {
      goto LABEL_4;
    }

LABEL_23:
    *(a2 + 16) |= 4u;
    v12 = *(a2 + 40);
    if (v12)
    {
      sub_64D110(a1 + 40, v12);
      if (!sub_4D1F6C(a1 + 60))
      {
        goto LABEL_29;
      }
    }

    else
    {
      v13 = *(a2 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      sub_14BAE64(v14);
      *(a2 + 40) = v15;
      sub_64D110(a1 + 40, v15);
      if (!sub_4D1F6C(a1 + 60))
      {
        goto LABEL_29;
      }
    }

LABEL_5:
    if (sub_4D1F6C(a1 + 80))
    {
      goto LABEL_6;
    }

LABEL_35:
    *(a2 + 16) |= 0x10u;
    v20 = *(a2 + 56);
    if (v20)
    {
      sub_64D110(a1 + 80, v20);
      if (!sub_4D1F6C(a1 + 100))
      {
        goto LABEL_41;
      }
    }

    else
    {
      v21 = *(a2 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_14BAE64(v22);
      *(a2 + 56) = v23;
      sub_64D110(a1 + 80, v23);
      if (!sub_4D1F6C(a1 + 100))
      {
        goto LABEL_41;
      }
    }

LABEL_7:
    if (sub_4D1F6C(a1 + 120))
    {
      goto LABEL_8;
    }

LABEL_47:
    *(a2 + 16) |= 0x40u;
    v28 = *(a2 + 72);
    if (v28)
    {
      sub_64D110(a1 + 120, v28);
      if (!sub_4D1F6C(a1 + 140))
      {
        goto LABEL_53;
      }
    }

    else
    {
      v29 = *(a2 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      sub_14BAE64(v30);
      *(a2 + 72) = v31;
      sub_64D110(a1 + 120, v31);
      if (!sub_4D1F6C(a1 + 140))
      {
        goto LABEL_53;
      }
    }

LABEL_9:
    if (sub_4D1F6C(a1 + 160))
    {
      return;
    }

    goto LABEL_55;
  }

  if (sub_4D1F6C(a1 + 20))
  {
    goto LABEL_3;
  }

LABEL_17:
  *(a2 + 16) |= 2u;
  v8 = *(a2 + 32);
  if (v8)
  {
    sub_64D110(a1 + 20, v8);
    if (!sub_4D1F6C(a1 + 40))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v9 = *(a2 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    sub_14BAE64(v10);
    *(a2 + 32) = v11;
    sub_64D110(a1 + 20, v11);
    if (!sub_4D1F6C(a1 + 40))
    {
      goto LABEL_23;
    }
  }

LABEL_4:
  if (sub_4D1F6C(a1 + 60))
  {
    goto LABEL_5;
  }

LABEL_29:
  *(a2 + 16) |= 8u;
  v16 = *(a2 + 48);
  if (v16)
  {
    sub_64D110(a1 + 60, v16);
    if (!sub_4D1F6C(a1 + 80))
    {
      goto LABEL_35;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    sub_14BAE64(v18);
    *(a2 + 48) = v19;
    sub_64D110(a1 + 60, v19);
    if (!sub_4D1F6C(a1 + 80))
    {
      goto LABEL_35;
    }
  }

LABEL_6:
  if (sub_4D1F6C(a1 + 100))
  {
    goto LABEL_7;
  }

LABEL_41:
  *(a2 + 16) |= 0x20u;
  v24 = *(a2 + 64);
  if (v24)
  {
    sub_64D110(a1 + 100, v24);
    if (!sub_4D1F6C(a1 + 120))
    {
      goto LABEL_47;
    }
  }

  else
  {
    v25 = *(a2 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    sub_14BAE64(v26);
    *(a2 + 64) = v27;
    sub_64D110(a1 + 100, v27);
    if (!sub_4D1F6C(a1 + 120))
    {
      goto LABEL_47;
    }
  }

LABEL_8:
  if (sub_4D1F6C(a1 + 140))
  {
    goto LABEL_9;
  }

LABEL_53:
  *(a2 + 16) |= 0x80u;
  v32 = *(a2 + 80);
  if (v32)
  {
    sub_64D110(a1 + 140, v32);
    if (sub_4D1F6C(a1 + 160))
    {
      return;
    }

    goto LABEL_55;
  }

  v35 = *(a2 + 8);
  v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
  if (v35)
  {
    v36 = *v36;
  }

  sub_14BAE64(v36);
  *(a2 + 80) = v37;
  sub_64D110(a1 + 140, v37);
  if (!sub_4D1F6C(a1 + 160))
  {
LABEL_55:
    *(a2 + 16) |= 0x100u;
    v33 = *(a2 + 88);
    if (v33)
    {
      v34 = a1 + 160;
    }

    else
    {
      v38 = *(a2 + 8);
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      sub_14BAE64(v39);
      v33 = v40;
      *(a2 + 88) = v40;
      v34 = a1 + 160;
    }

    sub_64D110(v34, v33);
  }
}

void sub_74E7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 14;
  strcpy(v9, "RoadComplexity");
  memset(__p, 0, sizeof(__p));
  v5 = sub_3AEC94(a4, v9, __p);
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v7 = vnegq_f64(v6);
  *(a1 + 8) = v7;
  *(a1 + 32) = v7;
  *(a1 + 48) = v7;
  *(a1 + 64) = v7;
  *(a1 + 80) = 0x7FFFFFFFFFFFFFFFLL;
  sub_74E8E8(a1, v5);
}

void sub_74E8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_74EFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 73) < 0)
  {
    operator delete(*(v26 - 96));
  }

  sub_5C010(v26 - 72);
  _Unwind_Resume(a1);
}

void sub_74F070(_Unwind_Exception *a1)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x74F068);
}

void sub_74F0A0(_Unwind_Exception *a1)
{
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x74F068);
}

void sub_74F0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 14;
  strcpy(v9, "RoadComplexity");
  memset(__p, 0, sizeof(__p));
  v5 = sub_3AEC94(a4, v9, __p);
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v7 = vnegq_f64(v6);
  *(a1 + 8) = v7;
  *(a1 + 32) = v7;
  *(a1 + 48) = v7;
  *(a1 + 64) = v7;
  *(a1 + 80) = 0x7FFFFFFFFFFFFFFFLL;
  sub_74F208(a1, v5);
}

void sub_74F1E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_74F91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 73) < 0)
  {
    operator delete(*(v26 - 96));
  }

  sub_5C010(v26 - 72);
  _Unwind_Resume(a1);
}

void sub_74F990(_Unwind_Exception *a1)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x74F988);
}

void sub_74F9C0(_Unwind_Exception *a1)
{
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x74F988);
}

void sub_74F9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 14;
  strcpy(v9, "RoadComplexity");
  memset(__p, 0, sizeof(__p));
  v5 = sub_3AEC94(a4, v9, __p);
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v7 = vnegq_f64(v6);
  *(a1 + 8) = v7;
  *(a1 + 32) = v7;
  *(a1 + 48) = v7;
  *(a1 + 64) = v7;
  *(a1 + 80) = 0x7FFFFFFFFFFFFFFFLL;
  sub_74FB28(a1, v5);
}

void sub_74FB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_75023C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 73) < 0)
  {
    operator delete(*(v26 - 96));
  }

  sub_5C010(v26 - 72);
  _Unwind_Resume(a1);
}

void sub_7502B0(_Unwind_Exception *a1)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x7502A8);
}

void sub_7502E0(_Unwind_Exception *a1)
{
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x7502A8);
}

unint64_t sub_750300@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = sub_4D1DC0(a1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v4)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  *&dword_0 = 0;
  result = sub_4D1DC0(a1);
  v6 = result;
  if (result)
  {
    result = sub_4D1DC0(a1);
    if (result >= 2)
    {
      result = sub_4D23F8(a1, 0, v7);
      *dword_8 = result;
    }

    if (v6 != 1)
    {
      v8 = dword_10;
      v9 = 1;
      do
      {
        result = sub_4D1DC0(a1);
        v11 = v9 + 1;
        if (v9 + 1 < result)
        {
          result = sub_4D23F8(a1, v9, v10);
          *v8 = *(v8 - 1) + result;
        }

        ++v8;
        ++v9;
      }

      while (v6 != v11);
    }
  }

  return result;
}

void sub_75042C(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_750444(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_75045C(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_750474(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_75048C(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_7504A4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  LODWORD(v74[0]) = 151323651;
  *v77 = 0u;
  *v78 = 0u;
  v79 = 1065353216;
  sub_751F38(v77, v74, v74);
  sub_751F38(v77, v74 + 1, v74 + 1);
  sub_751F38(v77, v74 + 2, v74 + 2);
  sub_751F38(v77, v74 + 3, v74 + 3);
  *v74 = 0u;
  *__p = 0u;
  v76 = 1065353216;
  v6 = v78[0];
  if (!v78[0])
  {
    v74[0] = 0;
    goto LABEL_148;
  }

  while (2)
  {
    v73 = v6[16];
    v72 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = sub_4D1DC0(a3);
    v69 = v6;
    if (!v8)
    {
      if (v72 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_5;
      }

LABEL_142:
      v80 = sub_4D1DB8(a3);
      v62 = *(a4 + 8);
      if (v62 < *(a4 + 16))
      {
        goto LABEL_143;
      }

LABEL_3:
      v7 = sub_7513E4(a4, &v73, &v72, &v80);
      goto LABEL_4;
    }

    v9 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v11 = *sub_6CA524(a2, v9);
      v12 = 72;
      if (v73 == 3)
      {
        v12 = 48;
      }

      v13 = *(a1 + v12);
      v14 = sub_4D1F50(a3, v9);
      v16 = a4;
      LOBYTE(a4) = 0;
      if (v73 > 4u)
      {
        if (v73 == 5)
        {
          v26 = (*v14 - **v14);
          if (*v26 >= 0x9Bu)
          {
            v27 = v26[77];
            if (v27)
            {
              LODWORD(a4) = (*(*v14 + v27 + 1) >> 2) & 1;
              v19 = v74[1];
              if (!v74[1])
              {
                goto LABEL_64;
              }

              goto LABEL_44;
            }
          }
        }

        else
        {
          if (v73 != 9)
          {
            goto LABEL_43;
          }

          v20 = (*v14 - **v14);
          if (*v20 >= 0x9Bu)
          {
            v21 = v20[77];
            if (v21)
            {
              LODWORD(a4) = (*(*v14 + v21 + 3) >> 4) & 1;
              v19 = v74[1];
              if (!v74[1])
              {
                goto LABEL_64;
              }

              goto LABEL_44;
            }
          }
        }

        goto LABEL_40;
      }

      if (v73 != 3)
      {
        if (v73 != 4)
        {
          goto LABEL_43;
        }

        v17 = (*v14 - **v14);
        if (*v17 >= 0x9Bu)
        {
          v18 = v17[77];
          if (v18)
          {
            LODWORD(a4) = (*(*v14 + v18 + 1) >> 3) & 1;
            v19 = v74[1];
            if (!v74[1])
            {
              goto LABEL_64;
            }

            goto LABEL_44;
          }
        }

LABEL_40:
        LOBYTE(a4) = 0;
        v19 = v74[1];
        if (!v74[1])
        {
          goto LABEL_64;
        }

        goto LABEL_44;
      }

      if (*(a1 + 1) != 1)
      {
        goto LABEL_40;
      }

      v22 = *v14;
      v23 = (*v14 - **v14);
      v24 = *v23;
      if (v24 < 0x9B)
      {
        if (v24 < 0x71)
        {
          goto LABEL_40;
        }
      }

      else if (v23[77] && (*(v22 + v23[77] + 1) & 0x80) != 0)
      {
        v25 = v23[56];
        if (v25)
        {
          LOBYTE(a4) = *(v22 + v25) - 1 < 2;
          v19 = v74[1];
          if (!v74[1])
          {
            goto LABEL_64;
          }

          goto LABEL_44;
        }

        goto LABEL_40;
      }

      v28 = v23[56];
      if (!v28)
      {
        LOBYTE(a4) = 0;
LABEL_43:
        v19 = v74[1];
        if (!v74[1])
        {
          goto LABEL_64;
        }

        goto LABEL_44;
      }

      LOBYTE(a4) = (*(v22 + v28) & 0xFD) == 1;
      v19 = v74[1];
      if (!v74[1])
      {
        goto LABEL_64;
      }

LABEL_44:
      v15 = vcnt_s8(v19);
      v15.i16[0] = vaddlv_u8(v15);
      if (v15.u32[0] > 1uLL)
      {
        v29 = v73;
        if (v19 <= v73)
        {
          v29 = v73 % v19;
        }
      }

      else
      {
        v29 = (v19 - 1) & v73;
      }

      v30 = *(v74[0] + v29);
      if (v30)
      {
        v31 = *v30;
        if (v31)
        {
          if (v15.u32[0] < 2uLL)
          {
            v32 = v19 - 1;
            while (1)
            {
              v34 = v31[1];
              if (v34 == v73)
              {
                if (*(v31 + 16) == v73)
                {
                  goto LABEL_63;
                }
              }

              else if ((v34 & v32) != v29)
              {
                goto LABEL_64;
              }

              v31 = *v31;
              if (!v31)
              {
                goto LABEL_64;
              }
            }
          }

          do
          {
            v33 = v31[1];
            if (v33 == v73)
            {
              if (*(v31 + 16) == v73)
              {
LABEL_63:
                v35 = 0;
                goto LABEL_65;
              }
            }

            else
            {
              if (v33 >= v19)
              {
                v33 %= v19;
              }

              if (v33 != v29)
              {
                break;
              }
            }

            v31 = *v31;
          }

          while (v31);
        }
      }

LABEL_64:
      v35 = 1;
LABEL_65:
      v36 = 64;
      if (v73 == 3)
      {
        v36 = 40;
      }

      v37 = *(a1 + v36);
      v38 = sub_4D23F8(a3, v9, *&v15);
      if (a4)
      {
        if (v35)
        {
          v39 = 0x7FFFFFFFFFFFFFFFLL;
          a4 = v16;
          if (v72 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v40 = v11 - v13;
            if (v11 <= v13)
            {
              v40 = 0;
            }

            v72 = v40;
            v39 = v10;
          }

          sub_751F38(v74, &v73, &v73);
          v10 = v39;
        }

        else
        {
          a4 = v16;
        }

        goto LABEL_9;
      }

      if (v72 == 0x7FFFFFFFFFFFFFFFLL)
      {
        a4 = v16;
        if (v35)
        {
          goto LABEL_9;
        }
      }

      else
      {
        a4 = v16;
        if (v10 != 0x7FFFFFFFFFFFFFFFLL && v13 + v10 + v37 < v38 + v11)
        {
          v80 = v10;
          v41 = *(v16 + 8);
          if (v41 >= *(v16 + 16))
          {
            v42 = sub_7513E4(v16, &v73, &v72, &v80);
          }

          else
          {
            sub_68542C(*(v16 + 8), v73, &v72, &v80, 1);
            v42 = (v41 + 616);
            *(v16 + 8) = v41 + 616;
          }

          *(v16 + 8) = v42;
          v10 = 0x7FFFFFFFFFFFFFFFLL;
          v72 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v35)
        {
          goto LABEL_9;
        }
      }

      v43 = 80;
      if (v73 == 3)
      {
        v43 = 56;
      }

      v44 = *(a1 + v43);
      v45 = sub_4D1DB8(a3);
      if (v45 >= v44 + v11)
      {
        v10 = v44 + v11;
      }

      else
      {
        v10 = v45;
      }

      v46 = v74[1];
      if (v74[1])
      {
        v47 = v73;
        v48 = vcnt_s8(v74[1]);
        v48.i16[0] = vaddlv_u8(v48);
        if (v48.u32[0] > 1uLL)
        {
          v49 = v73;
          if (v74[1] <= v73)
          {
            v49 = v73 % LOBYTE(v74[1]);
          }
        }

        else
        {
          v49 = (LODWORD(v74[1]) - 1) & v73;
        }

        v50 = v74[0];
        v51 = *(v74[0] + v49);
        if (v51)
        {
          v52 = *v51;
          if (*v51)
          {
            v53 = v74[1] - 1;
            if (v48.u32[0] < 2uLL)
            {
              while (1)
              {
                v54 = *(v52 + 1);
                if (v54 == v73)
                {
                  if (v52[16] == v73)
                  {
                    goto LABEL_110;
                  }
                }

                else if ((v54 & v53) != v49)
                {
                  goto LABEL_9;
                }

                v52 = *v52;
                if (!v52)
                {
                  goto LABEL_9;
                }
              }
            }

            do
            {
              v55 = *(v52 + 1);
              if (v55 == v73)
              {
                if (v52[16] == v73)
                {
LABEL_110:
                  if (v48.u32[0] > 1uLL)
                  {
                    if (v74[1] <= v73)
                    {
                      v47 = v73 % v74[1];
                    }
                  }

                  else
                  {
                    v47 = v53 & v73;
                  }

                  v56 = *(v74[0] + v47);
                  do
                  {
                    v57 = v56;
                    v56 = *v56;
                  }

                  while (v56 != v52);
                  if (v57 == __p)
                  {
                    goto LABEL_127;
                  }

                  v58 = v57[1];
                  if (v48.u32[0] > 1uLL)
                  {
                    if (v58 >= v74[1])
                    {
                      v58 %= v74[1];
                    }
                  }

                  else
                  {
                    v58 &= v53;
                  }

                  if (v58 != v47)
                  {
LABEL_127:
                    if (!*v52)
                    {
                      goto LABEL_128;
                    }

                    v59 = *(*v52 + 8);
                    if (v48.u32[0] > 1uLL)
                    {
                      if (v59 >= v74[1])
                      {
                        v59 %= v74[1];
                      }
                    }

                    else
                    {
                      v59 &= v53;
                    }

                    if (v59 != v47)
                    {
LABEL_128:
                      *(v74[0] + v47) = 0;
                    }
                  }

                  v60 = *v52;
                  if (*v52)
                  {
                    v61 = *(v60 + 1);
                    if (v48.u32[0] > 1uLL)
                    {
                      if (v61 >= v46)
                      {
                        v61 %= v46;
                      }
                    }

                    else
                    {
                      v61 &= v53;
                    }

                    if (v61 != v47)
                    {
                      v50[v61] = v57;
                      v60 = *v52;
                    }
                  }

                  *v57 = v60;
                  *v52 = 0;
                  --__p[1];
                  operator delete(v52);
                  break;
                }
              }

              else
              {
                if (v55 >= v74[1])
                {
                  v55 %= v74[1];
                }

                if (v55 != v49)
                {
                  break;
                }
              }

              v52 = *v52;
            }

            while (v52);
          }
        }
      }

LABEL_9:
      ++v9;
    }

    while (v9 != v8);
    if (v72 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_5;
    }

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_142;
    }

    v80 = v10;
    v62 = *(a4 + 8);
    if (v62 >= *(a4 + 16))
    {
      goto LABEL_3;
    }

LABEL_143:
    sub_68542C(v62, v73, &v72, &v80, 1);
    v7 = (v62 + 616);
    *(a4 + 8) = v62 + 616;
LABEL_4:
    *(a4 + 8) = v7;
LABEL_5:
    v6 = *v69;
    if (*v69)
    {
      continue;
    }

    break;
  }

  v63 = __p[0];
  if (__p[0])
  {
    do
    {
      v64 = *v63;
      operator delete(v63);
      v63 = v64;
    }

    while (v64);
  }

  v65 = v74[0];
  v74[0] = 0;
  if (v65)
  {
    operator delete(v65);
  }

LABEL_148:
  v66 = v78[0];
  if (v78[0])
  {
    do
    {
      v67 = *v66;
      operator delete(v66);
      v66 = v67;
    }

    while (v67);
  }

  v68 = v77[0];
  v77[0] = 0;
  if (v68)
  {
    operator delete(v68);
  }
}