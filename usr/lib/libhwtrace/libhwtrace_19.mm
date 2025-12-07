__n128 sub_298BD7238(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void *sub_298BD7248(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

uint64_t sub_298BD7290(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = v2;
  return result;
}

size_t sub_298BD72A8(size_t result, char *__s, uint64_t a3)
{
  if (__s)
  {
    v5 = result;
    result = strlen(__s);
    if (result == 6 && *__s == 1163157343 && *(__s + 2) == 21592)
    {
      v7 = *(*(v5 + 32) + 8);
      *(v7 + 40) = *(v5 + 40) + a3;
      *(v7 + 48) = 1;
    }
  }

  return result;
}

void sub_298BD7344(void *a1, char *__s, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v53 = *MEMORY[0x29EDCA608];
  v5 = a1[9];
  *(*(a1[4] + 8) + 24) = 1;
  if (__s && strlen(__s) == 6)
  {
    v11 = *__s == 1163157343 && *(__s + 2) == 21592;
    if (v11)
    {
      v36 = v5 + 8;
      v12 = *(a1[5] + 8);
      v14 = *(v12 + 40);
      v13 = *(v12 + 48);
      v28[0] = "DSC::";
      v28[2] = v14;
      v28[3] = v13;
      v29 = 1283;
      *&v30 = v28;
      *&v31 = "::";
      LOWORD(v32) = 770;
      if (*a3)
      {
        *&v33 = &v30;
        *&v34 = a3;
        LOWORD(v35) = 770;
      }

      else
      {
        v33 = v30;
        v34 = v31;
        v35 = v32;
      }

      sub_298B996A4(&v33, &v37);
      memset(v39, 0, sizeof(v39));
      v15 = a1[10];
      v40 = a5;
      v41 = v15 + a4;
      v43 = 0;
      v44 = 0;
      v42 = v15;
      sub_298BB0E68(&__p, __s);
      v16 = 0;
      v17 = *(a1[6] + 8);
      if (*(v17 + 48) == 1)
      {
        v16 = *(v17 + 40);
      }

      v47 = v16;
      v48 = 1;
      v49 = 0;
      v50 = xmmword_298D1B1F0;
      v51 = 0;
      v52 = 0;
      uuid_copy(v39, *(*(a1[7] + 8) + 24));
      v18 = *(a1[8] + 8);
      v19 = *(v18 + 40);
      v20 = (v18 + 48);
      if (v19 != (v18 + 48))
      {
        do
        {
          if (v50)
          {
            v21 = 1;
          }

          else
          {
            v21 = *(&v50 + 1) == 0;
          }

          if (!v21)
          {
            v22 = v19[4];
            if (v41 <= v22 && v40 + v41 > v22)
            {
              sub_298BD30C0(&v36, v22, *(v19 + 10));
            }
          }

          v23 = v19[1];
          if (v23)
          {
            do
            {
              v24 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          else
          {
            do
            {
              v24 = v19[2];
              v11 = *v24 == v19;
              v19 = v24;
            }

            while (!v11);
          }

          v19 = v24;
        }

        while (v24 != v20);
      }

      if (v40)
      {
        *(v5 + 1) = 0;
        sub_298BD3D9C(&v27, v36, &v36);
      }

      else
      {
        v27 = 0;
      }

      sub_298BD76A8(&v27, "", 0, 1);
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

      v25 = v52;
      v52 = 0;
      if (v25)
      {
        MEMORY[0x29C2945C0](v25, 0x1000C8077774924);
      }

      v26 = v51;
      v51 = 0;
      if (v26)
      {
        sub_298AE9B00(v26, *(v26 + 8));
        MEMORY[0x29C2945F0](v26, 0x1020C4062D53EE8);
        if ((v46 & 0x80000000) == 0)
        {
LABEL_36:
          if ((v38 & 0x80000000) == 0)
          {
            return;
          }

          goto LABEL_41;
        }
      }

      else if ((v46 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      operator delete(__p);
      if ((v38 & 0x80000000) == 0)
      {
        return;
      }

LABEL_41:
      operator delete(v37);
    }
  }
}

uint64_t **sub_298BD76A8(uint64_t **result, _BYTE *a2, size_t a3, int a4)
{
  v8 = *result;
  if (*result)
  {
    v10[1] = v5;
    v10[2] = v4;
    v10[3] = v6;
    v10[4] = v7;
    v10[0] = v8;
    *result = 0;
    sub_298B06434(v10, a2, a3);
    sub_298AF1D58(v10);
    exit(a4);
  }

  return result;
}

uint64_t sub_298BD76EC(uint64_t result)
{
  v1 = *(result + 168);
  *(result + 168) = 0;
  if (v1)
  {
    v2 = result;
    MEMORY[0x29C2945C0](v1, 0x1000C8077774924);
    result = v2;
  }

  v3 = *(result + 160);
  *(result + 160) = 0;
  if (v3)
  {
    v4 = result;
    sub_298AEB5EC(result + 160, v3);
    result = v4;
  }

  if (*(result + 127) < 0)
  {
    v5 = result;
    operator delete(*(result + 104));
    result = v5;
  }

  if (*(result + 31) < 0)
  {
    v6 = result;
    operator delete(*(result + 8));
    return v6;
  }

  return result;
}

void sub_298BD7798(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  _Block_object_assign((a1 + 56), *(a2 + 56), 8);
  v4 = *(a2 + 64);

  _Block_object_assign((a1 + 64), v4, 8);
}

void sub_298BD7818(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void sub_298BD7880(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 1) = 0;
  v8 = 0;
  sub_298ADC1D4(a1 + 72, a2, a3, &v8, a4);
  if (!*a4)
  {
    sub_298BDB5B8((a1 + 16), a2, a3, a4);
    if (!*a4)
    {
      *(a1 + 648) = 0;
    }
  }
}

void *sub_298BD790C@<X0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v50 = *MEMORY[0x29EDCA608];
  v47[0] = a4;
  v47[1] = a5;
  v46 = a3;
  v40 = *a2;
  v41 = *(a2 + 2);
  v42 = *(a2 + 4);
  v43 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v44 = *(a2 + 2);
  v9 = *(a2 + 6);
  *(a2 + 6) = 0;
  v45 = v9;
  sub_298AFF468(&v40, v33);
  if (!v33[0])
  {
    v43 = 0;
    v42 = 0uLL;
    v12 = v45;
    v45 = 0;
    v33[0] = v12;
    sub_298C39D18();
  }

  v49 = -1;
  v48 = v33[0];
  result = sub_298BDC2AC(&v40);
  v11 = v48;
  if (v49)
  {
    *a6 = v48;
    return result;
  }

  v48 = 0;
  v35 = a3;
  v36 = v11;
  v38 = 0;
  v39 = 0;
  __p = 0;
  *a6 = 0;
  v13 = *(v11 + 24);
  v34[0] = *(v11 + 16);
  v34[1] = v13;
  v33[0] = a1;
  v33[1] = &v46;
  v33[2] = v47;
  v33[3] = v34;
  v33[4] = a6;
  v33[5] = &v35;
  sub_298BF508C(v34[0], v13, sub_298BE51BC, v33, 0);
  v14 = v36;
  v15 = __p;
  v16 = v38;
  v36 = 0;
  __p = 0;
  v17 = v39;
  v38 = 0;
  v39 = 0;
  v18 = *(a1 + 640);
  *(a1 + 600) = v35;
  v29 = 0;
  if (v18 == 1)
  {
    v19 = *(a1 + 608);
    *(a1 + 608) = v14;
    if (v19)
    {
      v28 = sub_298AEAF14(v19);
      MEMORY[0x29C2945F0](v28, 0x1070C401CED0764);
      v20 = *(a1 + 616);
      if (!v20)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v20 = *(a1 + 616);
      if (!v20)
      {
        goto LABEL_16;
      }
    }

    v21 = *(a1 + 624);
    v22 = v20;
    if (v21 != v20)
    {
      do
      {
        while (1)
        {
          v23 = *(v21 - 57);
          v21 -= 10;
          if (v23 < 0)
          {
            break;
          }

          if (v21 == v20)
          {
            goto LABEL_14;
          }
        }

        operator delete(*v21);
      }

      while (v21 != v20);
LABEL_14:
      v22 = *(a1 + 616);
    }

    *(a1 + 624) = v20;
    operator delete(v22);
LABEL_16:
    *(a1 + 616) = v15;
    *(a1 + 624) = v16;
    *(a1 + 632) = v17;
    v31 = 0;
    v32 = 0;
    v30 = 0;
    *(a1 + 648) = 0;
    sub_298AEAEBC(&v29);
    v24 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }

LABEL_19:
    v25 = v38;
    v26 = v24;
    if (v38 != v24)
    {
      do
      {
        while (1)
        {
          v27 = *(v25 - 57);
          v25 -= 10;
          if (v27 < 0)
          {
            break;
          }

          if (v25 == v24)
          {
            goto LABEL_24;
          }
        }

        operator delete(*v25);
      }

      while (v25 != v24);
LABEL_24:
      v26 = __p;
    }

    v38 = v24;
    operator delete(v26);
    goto LABEL_26;
  }

  *(a1 + 608) = v14;
  *(a1 + 616) = v15;
  *(a1 + 624) = v16;
  *(a1 + 632) = v17;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  *(a1 + 640) = 1;
  *(a1 + 648) = 0;
  sub_298AEAEBC(&v29);
  v24 = __p;
  if (__p)
  {
    goto LABEL_19;
  }

LABEL_26:
  sub_298AEAEBC(&v36);
  return sub_298AEAEBC(&v48);
}

void sub_298BD7C4C(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, __int16 *a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v269 = *MEMORY[0x29EDCA608];
  v18 = sub_298BD630C(a1, a2, a3);
  v19 = a4 + 4;
  v20 = *(a4 + 31);
  if (v20 >= 0)
  {
    v21 = a4 + 4;
  }

  else
  {
    v21 = *(a4 + 1);
  }

  if (v20 >= 0)
  {
    v22 = *(a4 + 31);
  }

  else
  {
    v22 = *(a4 + 2);
  }

  v181 = a7;
  v182 = v18;
  v180 = a8;
  if (v21)
  {
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_293:
      sub_298ADDDA0();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v236) = v22;
    if (v22)
    {
      memmove(&v234, v21, v22);
    }

    *(&v234 + v22) = 0;
  }

  else
  {
    v235 = 0;
    v234 = 0;
    v236 = 0;
  }

  if (*a1 == 1)
  {
    v23 = sub_298B9CDFC();
    v24 = sub_298B00584(v23, "note: Registering ");
    if (v236 >= 0)
    {
      v25 = &v234;
    }

    else
    {
      v25 = v234;
    }

    if (v236 >= 0)
    {
      v26 = HIBYTE(v236);
    }

    else
    {
      v26 = v235;
    }

    v27 = sub_298B9BCEC(v24, v25, v26);
    sub_298B00584(v27, " for ");
    v28 = sub_298B9CDFC();
    if (a3)
    {
      v29 = sub_298B00584(v28, "pid=");
      sub_298B9B00C(v29, a2);
    }

    else
    {
      sub_298B00584(v28, "shared map");
    }

    if (*(a10 + 56) == 1)
    {
      v30 = sub_298B9CDFC();
      v31 = sub_298B00584(v30, " [only segment: ");
      v32 = *(a10 + 39);
      if (v32 >= 0)
      {
        v33 = (a10 + 16);
      }

      else
      {
        v33 = *(a10 + 16);
      }

      if (v32 >= 0)
      {
        v34 = *(a10 + 39);
      }

      else
      {
        v34 = *(a10 + 24);
      }

      v35 = sub_298B63DC4(v31, v33, v34);
      sub_298B00584(v35, "]");
    }

    v36 = sub_298B9CDFC();
    sub_298B00584(v36, "\n");
  }

  v228 = *a4;
  v229 = *(a4 + 2);
  __p = *v19;
  v37 = *(a4 + 3);
  *v19 = 0;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v232 = *(a4 + 2);
  v38 = *(a4 + 6);
  *(a4 + 6) = 0;
  v231 = v37;
  v233 = v38;
  sub_298BD9374(&v267, a1, &v228, a5, a6);
  v39 = v233;
  v233 = 0;
  if (v39)
  {
    (*(*v39 + 16))(v39);
  }

  if (SHIBYTE(v231) < 0)
  {
    operator delete(__p);
  }

  if (v268)
  {
    v40 = v267;
    v267 = 0;
    *a9 = v40;
    if (v40)
    {
      goto LABEL_84;
    }

    v41 = 0;
  }

  else
  {
    *a9 = 0;
    v41 = v267;
  }

  if (*(v41 + 33) == 1)
  {
    *a9 = 0;
    goto LABEL_84;
  }

  v42 = sub_298CEFFAC(*(*(v41 + 8) + 16), *(*(v41 + 8) + 24));
  if (v42 > 0x15)
  {
LABEL_142:
    v91 = v42;
    sub_298BB0E68(&v221, "Cannot load object file of unknown type ");
    sub_298ADC8F4(&v263, v91);
    if ((v263.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v92 = &v263;
    }

    else
    {
      v92 = v263.__r_.__value_.__r.__words[0];
    }

    if ((v263.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v263.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v263.__r_.__value_.__l.__size_;
    }

    v94 = std::string::append(&v221, v92, size);
    v95 = v94->__r_.__value_.__r.__words[2];
    *&v265.__r_.__value_.__l.__data_ = *&v94->__r_.__value_.__l.__data_;
    v265.__r_.__value_.__r.__words[2] = v95;
    v94->__r_.__value_.__l.__size_ = 0;
    v94->__r_.__value_.__r.__words[2] = 0;
    v94->__r_.__value_.__r.__words[0] = 0;
    v96 = std::string::append(&v265, ": ");
    v97 = v96->__r_.__value_.__r.__words[2];
    *&v223.__r_.__value_.__l.__data_ = *&v96->__r_.__value_.__l.__data_;
    v223.__r_.__value_.__r.__words[2] = v97;
    v96->__r_.__value_.__l.__size_ = 0;
    v96->__r_.__value_.__r.__words[2] = 0;
    v96->__r_.__value_.__r.__words[0] = 0;
    if (v236 >= 0)
    {
      v98 = &v234;
    }

    else
    {
      v98 = v234;
    }

    if (v236 >= 0)
    {
      v99 = HIBYTE(v236);
    }

    else
    {
      v99 = v235;
    }

    v100 = std::string::append(&v223, v98, v99);
    v101 = v100->__r_.__value_.__r.__words[2];
    v237 = *&v100->__r_.__value_.__l.__data_;
    v238 = v101;
    v100->__r_.__value_.__l.__size_ = 0;
    v100->__r_.__value_.__r.__words[2] = 0;
    v100->__r_.__value_.__r.__words[0] = 0;
    sub_298BD6D38(a9, &v237);
  }

  if (((1 << v42) & 0x33DC00) == 0)
  {
    if (v42 == 19)
    {
      sub_298BB0E68(&v223, "Cannot use dSYM companion MachO: ");
      if (v236 >= 0)
      {
        v87 = &v234;
      }

      else
      {
        v87 = v234;
      }

      if (v236 >= 0)
      {
        v88 = HIBYTE(v236);
      }

      else
      {
        v88 = v235;
      }

      v89 = std::string::append(&v223, v87, v88);
      v90 = v89->__r_.__value_.__r.__words[2];
      v237 = *&v89->__r_.__value_.__l.__data_;
      v238 = v90;
      v89->__r_.__value_.__l.__size_ = 0;
      v89->__r_.__value_.__r.__words[2] = 0;
      v89->__r_.__value_.__r.__words[0] = 0;
      sub_298BD6D38(a9, &v237);
    }

    goto LABEL_142;
  }

  v43 = *v41;
  if (!*v41)
  {
    if (v236 >= 0)
    {
      v44 = &v234;
    }

    else
    {
      v44 = v234;
    }

    if (v236 >= 0)
    {
      v45 = SHIBYTE(v236);
    }

    else
    {
      v45 = v235;
    }

    sub_298BD96DC(*(v41 + 8), v44, v45, a5, *a1, &v237);
    if (v243)
    {
      v43 = 0;
      v46 = v237;
      *&v237 = 0;
      *a9 = v46;
      if (v46)
      {
        v47 = 1;
        goto LABEL_61;
      }

      v48 = 0;
    }

    else
    {
      *a9 = 0;
      v48 = v237;
    }

    v49 = *(&v237 + 1);
    v237 = 0uLL;
    if (v242 == 1)
    {
      v51 = v239;
      v86 = SHIBYTE(v241);
      v241 = 0;
      v239 = 0;
      v240 = 0;
      v50 = v86 < 0;
    }

    else
    {
      v50 = 0;
      v51 = 0;
    }

    v43 = v238;
    v52 = *(v41 + 16);
    *(v41 + 16) = v48;
    if (v52)
    {
      (*(*v52 + 8))(v52);
    }

    v53 = *(v41 + 24);
    *(v41 + 24) = v49;
    if (v53)
    {
      (*(*v53 + 8))(v53);
    }

    *v41 = v43;
    if (v50)
    {
      operator delete(v51);
    }

    v47 = 0;
LABEL_61:
    if (v243)
    {
      v54 = v237;
      *&v237 = 0;
      if (v54)
      {
        (*(*v54 + 8))(v54);
      }
    }

    else
    {
      sub_298BD9AA8(&v237);
    }

    if (v47)
    {
      goto LABEL_84;
    }
  }

  if (a5)
  {
    v238 = 0;
    v237 = a5;
    sub_298B1FB90(&v237, v226);
    v55 = v43[42];
    if (v55)
    {
      v56 = v55 + 8;
    }

    else
    {
      v56 = 0;
    }

    v238 = 0;
    v237 = v56;
    sub_298B1FB90(&v237, v224);
    v57 = v227;
    if (v227 >= 0)
    {
      v58 = v226;
    }

    else
    {
      v58 = v226[0];
    }

    if (v227 >= 0)
    {
      v59 = v227;
    }

    else
    {
      v59 = v226[1];
    }

    v60 = v225;
    v61 = v224[0];
    v62 = v224[1];
    if (v225 >= 0)
    {
      v63 = v224;
    }

    else
    {
      v63 = v224[0];
    }

    if (v225 >= 0)
    {
      v62 = v225;
    }

    if (v59 != v62 || v59 && memcmp(v58, v63, v59))
    {
      v64 = std::generic_category();
      v214 = "Disassembler.cpp";
      v215 = 259;
      v212 = ":";
      v213 = 259;
      sub_298ADC860(&v214, &v212, v216);
      sub_298AFB090(0x482uLL, 0, v209);
      v211 = 260;
      v210 = v209;
      sub_298ADC860(v216, &v210, v217);
      v207 = ": ";
      v208 = 259;
      sub_298ADC860(v217, &v207, v218);
      v205 = "Expected UUID ";
      v206 = 259;
      sub_298ADC860(v218, &v205, &v219);
      v204 = 260;
      v203 = v226;
      sub_298ADC860(&v219, &v203, &v260);
      v201 = " for object ";
      v202 = 259;
      sub_298ADC860(&v260, &v201, &v263);
      v200 = 260;
      v199 = &v234;
      sub_298ADC860(&v263, &v199, &v221);
      v197 = ", but got ";
      v198 = 259;
      sub_298ADC860(&v221, &v197, &v265);
      v196 = 260;
      v195 = v224;
      sub_298ADC860(&v265, &v195, &v223);
      v193 = " instead.";
      v194 = 259;
      sub_298ADC860(&v223, &v193, &v237);
      sub_298ADDCA4(45, v64, &v237);
    }

    if (v60 < 0)
    {
      operator delete(v61);
      v57 = v227;
    }

    if (v57 < 0)
    {
      operator delete(v226[0]);
    }
  }

  v189[0] = 0;
  v192 = 0;
  if (*(a10 + 56) == 1)
  {
    sub_298BD4988(v189, a10);
    v192 = 1;
  }

  v65 = sub_298BF4860(v43, v189);
  if (v192 == 1 && v191 < 0)
  {
    v102 = v65;
    v103 = v66;
    operator delete(v190);
    v66 = v103;
    v65 = v102;
  }

  if (v66)
  {
    v67 = v65;
  }

  else
  {
    v67 = 0;
  }

  if (a6)
  {
    v68 = 0;
  }

  else
  {
    v68 = v67;
  }

  v69 = (a6 >> 1) - v68;
  *&v223.__r_.__value_.__r.__words[1] = 0uLL;
  v223.__r_.__value_.__r.__words[0] = &v223.__r_.__value_.__l.__size_;
  v70 = (*(*v43 + 352))(v43);
  v72 = v71;
  v73 = (*(*v43 + 360))(v43);
  v221.__r_.__value_.__r.__words[0] = v70;
  v221.__r_.__value_.__l.__size_ = v72;
  if (v72 == v74 && v70 == v73)
  {
    v75 = v264;
LABEL_108:
    v264 = v75 & 0xFE;
    v76 = v223.__r_.__value_.__l.__size_;
    v263 = v223;
    if (v223.__r_.__value_.__r.__words[2])
    {
      *(v223.__r_.__value_.__l.__size_ + 16) = &v263.__r_.__value_.__l.__size_;
      v223.__r_.__value_.__r.__words[0] = &v223.__r_.__value_.__l.__size_;
      *&v223.__r_.__value_.__r.__words[1] = 0uLL;
      v76 = 0;
    }

    else
    {
      v263.__r_.__value_.__r.__words[0] = &v263.__r_.__value_.__l.__size_;
    }

    v77 = a9;
    goto LABEL_111;
  }

  *&v175 = v73;
  *(&v175 + 1) = v74;
  v75 = v264;
  v178 = v69;
  while (1)
  {
    (*(*v72 + 144))(&v265, v72, v70);
    if (v265.__r_.__value_.__s.__data_[16])
    {
      break;
    }

    v104 = v265.__r_.__value_.__r.__words[0];
LABEL_163:
    if (v265.__r_.__value_.__l.__size_ >= 0x10)
    {
      if (*v104 == 0x5F74666977735F5FLL && v104[1] == 0x7972746E655F7361)
      {
        v109 = 0x100000000;
        goto LABEL_179;
      }
    }

    else if (v265.__r_.__value_.__l.__size_ < 0xE)
    {
      goto LABEL_165;
    }

    v116 = *v104;
    v117 = *(v104 + 6);
    if (v116 != 0x5F74666977735F5FLL || v117 != 0x7465725F73615F74)
    {
LABEL_165:
      v106 = 3;
      goto LABEL_166;
    }

    v109 = 0x100000001;
LABEL_179:
    LODWORD(v260) = v109;
    BYTE4(v260) = BYTE4(v109);
    (*(*v72 + 176))(&v237, v72, v70);
    v110 = *(&v237 + 1);
    if (v238)
    {
      v110 = v170;
    }

    __len = v110;
    v174 = v237;
    v168 = v238;
    if (v238)
    {
      if (v237)
      {
        v75 |= 1u;
        v264 = v75;
        v263.__r_.__value_.__r.__words[0] = v237;
        v106 = 1;
        goto LABEL_166;
      }

      v174 = 0;
    }

    v111 = (*(*v72 + 152))(v72, v70);
    *&v237 = &v223;
    *(&v237 + 1) = &v260;
    if (__len >= 4)
    {
      v112 = v174;
      v113 = v111 + v178;
      v114 = 4 * (__len >> 2);
      do
      {
        v115 = *v112++;
        sub_298BDC9D8(&v237, v113 + v115);
        v113 += 4;
        v114 -= 4;
      }

      while (v114);
    }

    v106 = 0;
    if ((v168 & 1) != 0 && v174)
    {
      (*(*v174 + 8))(v174);
      v106 = 0;
    }

    v170 = __len;
LABEL_166:
    if (v265.__r_.__value_.__s.__data_[16])
    {
      v107 = v265.__r_.__value_.__r.__words[0];
      v265.__r_.__value_.__r.__words[0] = 0;
      if (v107)
      {
        (*(*v107 + 8))(v107);
      }
    }

    if (v106 != 3 && v106)
    {
      goto LABEL_251;
    }

    (*(*v221.__r_.__value_.__l.__size_ + 136))(v221.__r_.__value_.__l.__size_, &v221);
    v72 = v221.__r_.__value_.__l.__size_;
    v70 = v221.__r_.__value_.__r.__words[0];
    v69 = v178;
    if (*&v221.__r_.__value_.__l.__data_ == v175)
    {
      goto LABEL_108;
    }
  }

  v104 = 0;
  v105 = v265.__r_.__value_.__r.__words[0];
  v265.__r_.__value_.__r.__words[0] = 0;
  if (!v105)
  {
    goto LABEL_163;
  }

  v264 = v75 | 1;
  v263.__r_.__value_.__r.__words[0] = v105;
LABEL_251:
  v76 = v223.__r_.__value_.__l.__size_;
  v77 = a9;
  v69 = v178;
LABEL_111:
  sub_298AE9B00(&v223, v76);
  if (v264)
  {
    v78 = v263.__r_.__value_.__r.__words[0];
    v263.__r_.__value_.__r.__words[0] = 0;
    *v77 = v78;
    if (v78)
    {
      goto LABEL_126;
    }
  }

  else
  {
    *v77 = 0;
  }

  v79 = (*(*v43 + 352))(v43);
  v81 = v80;
  v82 = (*(*v43 + 360))(v43);
  v219 = v79;
  v220 = v81;
  v84 = v81 == v83 && v79 == v82;
  if (v84)
  {
    if ((*(a10 + 56) & 1) != 0 && *(a10 + 40))
    {
      goto LABEL_124;
    }

    goto LABEL_125;
  }

  v177 = v83;
  v179 = v69;
  v119 = v82;
  v176 = 0;
  while (2)
  {
    (*(*v81 + 144))(&v260, v81, v79);
    if (v262)
    {
      v120 = v260;
      v260 = 0;
      *a9 = v120;
      if (v120)
      {
        goto LABEL_199;
      }

      v122 = 0;
    }

    else
    {
      *a9 = 0;
      v122 = v260;
    }

    v123 = v261;
    if (v261 < 0xA)
    {
LABEL_202:
      v124 = 0;
      goto LABEL_203;
    }

    if (*v122 == *"__bootcode" && *(v122 + 8) == *"de")
    {
      goto LABEL_220;
    }

    if (v261 < 0xF)
    {
      if (v261 == 10)
      {
        goto LABEL_202;
      }

LABEL_245:
      v124 = *v122 == *"__interpose" && *(v122 + 3) == *"nterpose";
    }

    else
    {
      if (*v122 != *"__lcxx_override" || *(v122 + 7) != *"override")
      {
        goto LABEL_245;
      }

LABEL_220:
      v124 = 1;
    }

LABEL_203:
    if ((((*(*v81 + 200))(v81, v79) & 1) != 0 || v124) && ((*(*v81 + 224))(v81, v79) & 1) == 0)
    {
      (*(*v81 + 176))(&v237, v81, v79);
      v132 = *(&v237 + 1);
      v167 = v238;
      if (v238)
      {
        v132 = __len;
      }

      v169 = v132;
      v171 = v237;
      if ((v238 & 1) == 0)
      {
        *a9 = 0;
        goto LABEL_261;
      }

      *a9 = v237;
      if (v171)
      {
LABEL_199:
        v121 = 1;
      }

      else
      {
        v171 = 0;
LABEL_261:
        v165 = (*(*v81 + 152))(v81, v79) + v179;
        if (a1[744] != 1 || (a11 & 0x100000000) != 0 && (a11 - 1) < 0xA && ((0x3E7u >> (a11 - 1)) & 1) != 0)
        {
          LODWORD(v166) = 0;
        }

        else
        {
          v166 = v165 >> 63;
        }

        v164 = *(v43[10] + 8 * v79);
        if (*(v164 + 31))
        {
          __lena = 16;
        }

        else
        {
          __lena = strlen((v164 + 16));
        }

        *&v237 = v182;
        v265.__r_.__value_.__r.__words[0] = &v234;
        v265.__r_.__value_.__r.__words[2] = "::";
        v266 = 772;
        v222 = 261;
        v221.__r_.__value_.__r.__words[0] = v122;
        v221.__r_.__value_.__l.__size_ = v123;
        sub_298ADC860(&v265, &v221, &v223);
        sub_298B996A4(&v223, &v237 + 1);
        v240 = 0;
        v241 = 0;
        v242 = v171;
        v243 = v169;
        v244 = (*(*v81 + 168))(v81, v79);
        v245 = v165;
        v246 = v179;
        v247 = v79;
        v248 = v81;
        if (__lena > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_293;
        }

        if (__lena >= 0x17)
        {
          operator new();
        }

        HIBYTE(v251) = __lena;
        if (__lena)
        {
          memmove(&v249, (v164 + 16), __lena);
        }

        *(&v249 + __lena) = 0;
        v252 = v179 + v67;
        v253 = 0;
        v254 = v166;
        v255 = 0;
        v256 = v181;
        v257 = v180;
        v258 = 0;
        v259 = 0;
        if (a5)
        {
          sub_298BD9B74(a5, 0, &v240);
        }

        if ((*(a10 + 56) & 1) == 0)
        {
          v133 = v245;
          goto LABEL_272;
        }

        if (v251 >= 0)
        {
          v142 = &v249;
        }

        else
        {
          v142 = v249;
        }

        if (v251 >= 0)
        {
          v143 = SHIBYTE(v251);
        }

        else
        {
          v143 = v250;
        }

        v144 = *(a10 + 39);
        if (v144 >= 0)
        {
          v145 = (a10 + 16);
        }

        else
        {
          v145 = *(a10 + 16);
        }

        v146 = *(a10 + 24);
        if (v144 >= 0)
        {
          v146 = *(a10 + 39);
        }

        if (v143 == v146 && (!v143 || !memcmp(v142, v145, v143)))
        {
          *(a10 + 40) = v43;
          *(a10 + 48) = v179;
          v133 = v245;
          v162 = *a10;
          if (*a10 >= v245)
          {
            v162 = v245;
          }

          v163 = v244 + v245;
          if (*(a10 + 8) > v244 + v245)
          {
            v163 = *(a10 + 8);
          }

          *a10 = v162;
          *(a10 + 8) = v163;
          if (a1[744] != 1 || (v133 & 0x8000000000000000) == 0)
          {
            goto LABEL_277;
          }

LABEL_272:
          v134 = HIBYTE(v239);
          if (SHIBYTE(v239) < 0)
          {
            v134 = v238;
          }

          if (v134 >= 0xC && (SHIBYTE(v239) >= 0 ? (v156 = &v237 + 8) : (v156 = *(&v237 + 1)), (v157 = &v156[v134], v158 = *(v157 - 12), v159 = *(v157 - 1), v158 == 0x735F687475615F5FLL) ? (v160 = v159 == 1935832436) : (v160 = 0), !v160 ? (v161 = 0) : (v161 = 1), (v161 & v166) == 1))
          {
            a1[1] = 0;
            v121 = 4;
            v176 = 1;
          }

          else
          {
LABEL_277:
            v135 = v263.__r_.__value_.__r.__words[0];
            if (v263.__r_.__value_.__l.__data_ != &v263.__r_.__value_.__r.__words[1])
            {
              do
              {
                if (v256 <= v181 && v257 > v181)
                {
                  v137 = *(v135 + 32);
                  if (v245 <= v137 && v244 + v245 > v137)
                  {
                    sub_298BD30C0(&v237, v137, *(v135 + 40));
                  }
                }

                v138 = *(v135 + 8);
                if (v138)
                {
                  do
                  {
                    v139 = v138;
                    v138 = v138->__r_.__value_.__r.__words[0];
                  }

                  while (v138);
                }

                else
                {
                  do
                  {
                    v139 = *(v135 + 16);
                    v84 = v139->__r_.__value_.__r.__words[0] == v135;
                    v135 = v139;
                  }

                  while (!v84);
                }

                v135 = v139;
              }

              while (v139 != &v263.__r_.__value_.__r.__words[1]);
            }

            if (v244)
            {
              a1[1] = 0;
              sub_298BD3D9C(a9, v237, &v237);
              v121 = *a9 != 0;
            }

            else
            {
              v121 = 0;
              *a9 = 0;
            }
          }
        }

        else
        {
          if (*a1 == 1)
          {
            v147 = sub_298B9CDFC();
            v148 = sub_298B00584(v147, "Skipping '");
            if (v251 >= 0)
            {
              v149 = &v249;
            }

            else
            {
              v149 = v249;
            }

            if (v251 >= 0)
            {
              v150 = SHIBYTE(v251);
            }

            else
            {
              v150 = v250;
            }

            v151 = sub_298B63DC4(v148, v149, v150);
            v152 = sub_298B00584(v151, "::");
            if (SHIBYTE(v239) >= 0)
            {
              v153 = &v237 + 8;
            }

            else
            {
              v153 = *(&v237 + 1);
            }

            if (SHIBYTE(v239) >= 0)
            {
              v154 = SHIBYTE(v239);
            }

            else
            {
              v154 = v238;
            }

            v155 = sub_298B63DC4(v152, v153, v154);
            sub_298B00584(v155, "\n");
          }

          v121 = 4;
        }

        v140 = v259;
        v259 = 0;
        if (v140)
        {
          MEMORY[0x29C2945C0](v140, 0x1000C8077774924);
        }

        v141 = v258;
        v258 = 0;
        if (v141)
        {
          sub_298AEB5EC(&v258, v141);
        }

        if (SHIBYTE(v251) < 0)
        {
          operator delete(v249);
        }

        if (SHIBYTE(v239) < 0)
        {
          operator delete(*(&v237 + 1));
        }

        if ((v167 & 1) != 0 && v171)
        {
          (*(*v171 + 8))(v171);
        }

        __len = v169;
      }
    }

    else
    {
      v121 = 4;
    }

    if (v262)
    {
      v125 = v260;
      v260 = 0;
      if (v125)
      {
        (*(*v125 + 8))(v125);
      }
    }

    if ((v121 | 4) != 4)
    {
      goto LABEL_126;
    }

    (*(*v220 + 136))(v220, &v219);
    v81 = v220;
    v79 = v219;
    if (v220 != v177 || v219 != v119)
    {
      continue;
    }

    break;
  }

  v127 = *(a10 + 56);
  if (v127)
  {
    if (*(a10 + 40))
    {
      if (v176)
      {
        goto LABEL_224;
      }

LABEL_124:
      a1[1] = 0;
      sub_298BD3EFC(v182, a10);
    }

LABEL_125:
    *a9 = 0;
  }

  else
  {
    if ((v176 & 1) == 0)
    {
      goto LABEL_125;
    }

LABEL_224:
    if (v236 >= 0)
    {
      v128 = &v234;
    }

    else
    {
      v128 = v234;
    }

    if (v236 >= 0)
    {
      v129 = SHIBYTE(v236);
    }

    else
    {
      v129 = v235;
    }

    v185.i8[0] = 0;
    v188 = 0;
    if (v127)
    {
      sub_298BD4988(&v185, a10);
      v188 = 1;
    }

    sub_298BD9B94(a9, a1, v43, v179, v128, v129, &v185);
    if (v188 == 1 && v187 < 0)
    {
      operator delete(v186);
    }

    if (!*a9)
    {
      if (*(a10 + 56))
      {
        goto LABEL_124;
      }

      goto LABEL_125;
    }
  }

LABEL_126:
  if (v264)
  {
    v85 = v263.__r_.__value_.__r.__words[0];
    v263.__r_.__value_.__r.__words[0] = 0;
    if (v85)
    {
      (*(*v85 + 8))(v85);
    }
  }

  else
  {
    sub_298AE9B00(&v263, v263.__r_.__value_.__l.__size_);
  }

LABEL_84:
  if ((v268 & 1) != 0 && v267)
  {
    (*(*v267 + 8))(v267);
  }

  if (SHIBYTE(v236) < 0)
  {
    operator delete(v234);
  }
}

void sub_298BD9374(uint64_t a1, uint64_t a2, __int16 *a3, const unsigned __int8 *a4, uint64_t a5)
{
  v30 = *MEMORY[0x29EDCA608];
  v10 = a3 + 4;
  v9 = *(a3 + 1);
  v11 = *(a3 + 31);
  if (v11 >= 0)
  {
    v9 = a3 + 4;
  }

  if (v11 < 0)
  {
    v11 = *(a3 + 2);
  }

  v28 = v9;
  v29 = v11;
  sub_298B1EEB8(&v28, __p);
  v12 = *(v10 - 6);
  if (v26 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if (v26 >= 0)
  {
    v14 = v26;
  }

  else
  {
    v14 = __p[1];
  }

  v15 = *sub_298BDABD0((a2 + 720), v13, v14);
  if (v15)
  {
    *(a1 + 8) &= ~1u;
    *a1 = v15;
  }

  else
  {
    LOWORD(v20) = *a3;
    BYTE2(v20) = *(a3 + 2);
    v21 = *v10;
    v22 = *(v10 + 2);
    *v10 = 0;
    *(v10 + 1) = 0;
    *(v10 + 2) = 0;
    v23 = *(a3 + 2);
    v16 = *(a3 + 6);
    *(a3 + 6) = 0;
    v24 = v16;
    sub_298B21594(&v20, &v28);
    sub_298BDC2AC(&v20);
    if ((v29 & 1) == 0 || (v17 = v28, v28 = 0, !v17))
    {
      sub_298BDACE8(&v27, &v28);
    }

    if (v12)
    {
      v18 = *(a2 + 592);
      if (a4 && !v18)
      {
        sub_298BD6444(a2);
      }

      if (v18 && sub_298BDAD54(*v18, a4))
      {
        v19 = v17;
        sub_298AE617C(&v19);
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }

        operator new();
      }
    }

    *(a1 + 8) |= 1u;
    *a1 = v17;
    sub_298B2165C(&v28);
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t *sub_298BD96DC@<X0>(__n128 *a1@<X0>, _BYTE *a2@<X1>, size_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v45 = *MEMORY[0x29EDCA608];
  v37 = a1[1];
  v38 = "";
  *&v39 = 0;
  result = sub_298B73E04(&v37, &v43);
  if (v44)
  {
    v33 = v43;
    sub_298B851B0(&v33, &v34);
    v23 = std::string::append(&v34, ": ");
    v24 = v23->__r_.__value_.__r.__words[2];
    *__p = *&v23->__r_.__value_.__l.__data_;
    v26 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v36 = 260;
    v35[0] = __p;
    v32 = 261;
    v31[0] = a2;
    v31[1] = a3;
    sub_298ADC860(v35, v31, &v37);
    operator new();
  }

  v12 = v43;
  v13 = *(v43 + 8);
  if ((v13 - 17) >= 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = v43;
  }

  if (v13 == 1)
  {
    v30 = 0;
    v28[1] = 0;
    v28[2] = 0;
    v28[0] = v43;
    v29 = 0;
    sub_298BDC328(&v37, a2, a3, v28, a4);
    sub_298BD9AA8(v28);
    if (v42)
    {
      v16 = v37.n128_u64[0];
      v37.n128_u64[0] = 0;
      *(a6 + 56) |= 1u;
      *a6 = v16;
    }

    else
    {
      if (a5)
      {
        v17 = sub_298B9CDFC();
        v18 = sub_298B00584(v17, "note: ");
        v19 = sub_298B63DC4(v18, a2, a3);
        v20 = sub_298B00584(v19, ": selected slice ");
        v21 = sub_298BDC79C(v20, &v39);
        sub_298B00584(v21, "\n");
      }

      *(a6 + 56) &= ~1u;
      v22 = v37;
      v37 = 0uLL;
      *a6 = v22;
      *(a6 + 16) = v38;
      *(a6 + 24) = 0;
      *(a6 + 48) = 0;
      if (v41 == 1)
      {
        *(a6 + 24) = v39;
        *(a6 + 40) = v40;
        v40 = 0;
        v39 = 0uLL;
        *(a6 + 48) = 1;
      }
    }

    return sub_298BE5B3C(&v37);
  }

  else
  {
    if (!v14)
    {
      v15 = std::generic_category();
      __p[0] = "Disassembler.cpp";
      v26 = ":";
      v27 = 771;
      *(&v34.__r_.__value_.__s + 23) = 4;
      strcpy(&v34, "1006");
      v31[0] = __p;
      v31[2] = &v34;
      v32 = 1026;
      v35[0] = v31;
      v35[2] = ": ";
      v36 = 770;
      v37.n128_u64[0] = v35;
      v38 = "not a MachO?";
      WORD4(v39) = 770;
      sub_298ADDCA4(45, v15, &v37);
    }

    *(a6 + 56) &= ~1u;
    *a6 = v12;
    *(a6 + 8) = 0;
    *(a6 + 16) = v14;
    *(a6 + 24) = 0;
    *(a6 + 48) = 0;
  }

  return result;
}

uint64_t *sub_298BD9AA8(uint64_t *result)
{
  if (*(result + 48) == 1 && *(result + 47) < 0)
  {
    v5 = result;
    operator delete(result[3]);
    result = v5;
  }

  v1 = result[1];
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    result = v2;
  }

  v3 = *result;
  *result = 0;
  if (v3)
  {
    v4 = result;
    (*(*v3 + 8))(v3);
    return v4;
  }

  return result;
}

void sub_298BD9B74(unsigned __int8 *src, char *in, uuid_t uu)
{
  if (src)
  {
    uuid_copy(uu, src);
  }

  else
  {
    uuid_parse(in, uu);
  }
}

void sub_298BD9B94(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int64x2_t *a7)
{
  v13[0] = a5;
  v13[1] = a6;
  v12 = a4;
  v10.i8[0] = 0;
  v11 = 0;
  if (a7[3].i8[8] == 1)
  {
    i64 = a7[3].i64;
    v8 = vld1q_dup_f64(i64);
    v10 = vsubq_s64(*a7, v8);
    v11 = 1;
  }

  v9[0] = &v10;
  v9[1] = &v12;
  v9[2] = a2;
  v9[3] = v13;
  sub_298BF4518(a3, sub_298BE6508, v9, a1);
}

void sub_298BD9C20(char *a1@<X0>, void *a2@<X8>)
{
  if (a1[1] == 1)
  {
    *a2 = 0;
  }

  else
  {
    sub_298BD49F8(a2, (a1 + 8));
    if (!*a2)
    {
      v4 = *(a1 + 82);
      if (v4 == a1 + 664)
      {
LABEL_4:
        v21 = &unk_2A1F1EB58;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        sub_298BD2CB8(v20);
        v14[3] = &unk_2A1F1E9B8;
        memset(v15, 0, sizeof(v15));
        v17 = 0u;
        v18 = 0u;
        v16 = 1065353216;
        v19 = 1065353216;
        v13 = 21;
        strcpy(__p, "_ExceptionVectorsBase");
        v14[0] = __p;
        v5 = sub_298BDD4E0(v15, __p, v14);
        LODWORD(v14[0]) = 1;
        v6 = v5[6];
        if (v6 >= v5[7])
        {
          v8 = v5;
          v7 = sub_298BDD7F0((v5 + 5), v14);
          v5 = v8;
        }

        else
        {
          *v6 = 1;
          v7 = v6 + 1;
        }

        v5[6] = v7;
        if (v13 < 0)
        {
          operator delete(*__p);
        }

        operator new();
      }

      while (1)
      {
        sub_298BD49F8(a2, *(v4 + 5));
        if (*a2)
        {
          break;
        }

        v9 = *(v4 + 1);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v4 + 2);
            v11 = *v10 == v4;
            v4 = v10;
          }

          while (!v11);
        }

        v4 = v10;
        if (v10 == a1 + 664)
        {
          goto LABEL_4;
        }
      }
    }
  }
}

void sub_298BDA58C(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a2 + 680 + 8 * a3);
  if (v4)
  {
    v5 = v4 == a4;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    std::generic_category();
    v16 = "Disassembler.h";
    v17 = 259;
    v14 = ":";
    v15 = 259;
    sub_298ADC860(&v16, &v14, v18);
    v11 = 3;
    LODWORD(__p) = 3354933;
    v13 = 260;
    p_p = &__p;
    sub_298ADC860(v18, &p_p, v19);
    v8 = ": ";
    v9 = 259;
    sub_298ADC860(v19, &v8, v20);
    v6 = "Exception vector already registered";
    v7 = 259;
    sub_298ADC860(v20, &v6, v21);
    sub_298B996A4(v21, &v22);
    operator new();
  }

  *(a2 + 680 + 8 * a3) = a4;
  *a1 = 0;
}

void *sub_298BDA76C(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        v7 = v2;
        operator delete(v2[2]);
        v2 = v7;
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_298BDA7F8(uint64_t a1)
{
  sub_298AE88F0(a1 + 48);
  sub_298BDD2E4(a1 + 8);
  return a1;
}

uint64_t sub_298BDA82C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_298BDA86C(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v4 = a4[3];
  if (v4 && *(v4 + 144) <= a2 && *(v4 + 152) > a2 && a4[1] <= a3 && a4[2] > a3)
  {
    return 0;
  }

  if (*(a1 + 1) != 1)
  {
    return 4;
  }

  v7 = *a4;
  if (!*a4)
  {
    return 1;
  }

  result = 1;
  while (1)
  {
    v8 = v7[57];
    v9 = v7[56];
    if (v9 != v8)
    {
      v10 = 0x2E8BA2E8BA2E8BA3 * ((v8 - v9) >> 4);
      v11 = v10 >> 1;
      v12 = &v9[176 * (v10 >> 1)];
      v13 = *(v12 + 9);
      v14 = v12 + 176;
      v15 = v10 + ~(v10 >> 1);
      if (v13 <= a3)
      {
        v16 = v14;
      }

      else
      {
        v16 = v7[56];
      }

      if (v13 <= a3)
      {
        v17 = v15;
      }

      else
      {
        v17 = v11;
      }

      while (v17)
      {
        v22 = v17 >> 1;
        v23 = &v16[176 * (v17 >> 1)];
        v24 = *(v23 + 9);
        v25 = v23 + 176;
        v17 += ~(v17 >> 1);
        if (v24 > a3)
        {
          v17 = v22;
        }

        else
        {
          v16 = v25;
        }
      }

      if (v16 != v9)
      {
        break;
      }
    }

LABEL_15:
    v7 = *v7;
    if (!v7)
    {
      return result;
    }
  }

  v18 = v16 - 176;
  while (1)
  {
    if (*(v18 + 18) <= a2 && *(v18 + 19) > a2)
    {
      v19 = *(v18 + 9);
      if (v19 <= a3)
      {
        v20 = *(v18 + 8) + v19;
        if (v20 > a3)
        {
          break;
        }
      }
    }

    if (*(v18 + 9) <= a3)
    {
      v21 = v9 == v18;
      v18 -= 176;
      if (!v21)
      {
        continue;
      }
    }

    goto LABEL_15;
  }

  result = 0;
  a4[1] = v19;
  a4[2] = v20;
  a4[3] = v18;
  return result;
}

uint64_t sub_298BDA9EC(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v4 = a4[3];
  if (v4 && *(v4 + 144) <= a2 && *(v4 + 152) > a2 && (a4[1] <= a3 ? (v5 = a4[2] > a3) : (v5 = 0), v5))
  {
    if (*(v4 + 136) != 1)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 1) != 1)
    {
      return 4;
    }

    v9 = *a4;
    if (!*a4)
    {
      return 1;
    }

    while (1)
    {
      v10 = v9[57];
      v11 = v9[56];
      if (v11 != v10)
      {
        v12 = 0x2E8BA2E8BA2E8BA3 * ((v10 - v11) >> 4);
        v13 = v9[56];
        do
        {
          v14 = v12 >> 1;
          v15 = v13 + 176 * (v12 >> 1);
          v16 = *(v15 + 72);
          v17 = v15 + 176;
          v12 += ~(v12 >> 1);
          if (v16 > a3)
          {
            v12 = v14;
          }

          else
          {
            v13 = v17;
          }
        }

        while (v12);
        if (v13 != v11)
        {
          break;
        }
      }

LABEL_15:
      v9 = *v9;
      if (!v9)
      {
        return 1;
      }
    }

    v4 = v13 - 176;
    while (1)
    {
      if (*(v4 + 144) <= a2 && *(v4 + 152) > a2)
      {
        v18 = *(v4 + 72);
        if (v18 <= a3)
        {
          v19 = *(v4 + 64) + v18;
          if (v19 > a3)
          {
            break;
          }
        }
      }

      if (*(v4 + 72) <= a3)
      {
        v20 = v11 == v4;
        v4 -= 176;
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    a4[1] = v18;
    a4[2] = v19;
    a4[3] = v4;
    if (*(v4 + 136) != 1)
    {
      return 0;
    }
  }

  v7 = sub_298BD4134(*v4, v4);
  std::mutex::lock(v7);
  if (*(v4 + 56))
  {
    v8 = 0;
  }

  else if (*(v4 + 138))
  {
    v8 = 2;
  }

  else
  {
    v8 = sub_298BDAEC4(a1, v4);
  }

  std::mutex::unlock(v7);
  return v8;
}

uint64_t sub_298BDABD0(_DWORD *a1, int8x16_t *a2, unint64_t a3)
{
  v6 = sub_298BA724C(a2, a3);
  v7 = sub_298B96440(a1, a2, a3, v6);
  v8 = *a1;
  v9 = v7;
  v10 = *(*a1 + 8 * v7);
  if (v10)
  {
    if (v10 != -8)
    {
      return v10 + 8;
    }

    --a1[4];
  }

  v11 = operator new(a3 + 17, 8uLL);
  v12 = v11;
  v13 = (v11 + 2);
  if (a3)
  {
    memcpy(v11 + 2, a2, a3);
  }

  v13[a3] = 0;
  *v12 = a3;
  v12[1] = 0;
  *(v8 + 8 * v9) = v12;
  ++a1[3];
  for (i = (*a1 + 8 * sub_298B96888(a1, v9)); ; ++i)
  {
    v10 = *i;
    if (*i != -8 && v10 != 0)
    {
      break;
    }
  }

  return v10 + 8;
}

uint64_t sub_298BDAD54(int8x8_t *a1, const unsigned __int8 *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  memset(dst, 0, sizeof(dst));
  if (a2)
  {
    uuid_copy(dst, a2);
    v3 = a1[33];
    if (!*&v3)
    {
      return 0;
    }
  }

  else
  {
    uuid_parse(0, dst);
    v3 = a1[33];
    if (!*&v3)
    {
      return 0;
    }
  }

  v4 = *&dst[8] ^ *dst;
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] <= 1uLL)
  {
    v6 = (*&v3 - 1) & v4;
  }

  else if (v4 < *&v3)
  {
    v6 = *&dst[8] ^ *dst;
  }

  else
  {
    v6 = v4 % *&v3;
  }

  v7 = *(*&a1[32] + 8 * v6);
  if (v7)
  {
    v8 = *v7;
    if (*v7)
    {
      if (v5.u32[0] < 2uLL)
      {
        v9 = *&v3 - 1;
        while (1)
        {
          v12 = *(v8 + 1);
          if (v4 == v12)
          {
            if (!uuid_compare(v8 + 16, dst))
            {
              return 1;
            }
          }

          else if ((v12 & v9) != v6)
          {
            return 0;
          }

          result = 0;
          v8 = *v8;
          if (!v8)
          {
            return result;
          }
        }
      }

      do
      {
        v10 = *(v8 + 1);
        if (v4 == v10)
        {
          if (!uuid_compare(v8 + 16, dst))
          {
            return 1;
          }
        }

        else
        {
          if (v10 >= *&v3)
          {
            v10 %= *&v3;
          }

          if (v10 != v6)
          {
            return 0;
          }
        }

        v8 = *v8;
      }

      while (v8);
    }
  }

  return 0;
}

uint64_t sub_298BDAEC4(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 1;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v7 = *(a1 + 592);
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2000000000;
  v5[3] = *v7;
  dyld_shared_cache_for_each_image();
  if (*(v9 + 24) == 1)
  {
    *(a2 + 138) = 1;
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v8, 8);
  return v3;
}

uint64_t sub_298BDB050(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(*(result + 32) + 8) + 24) == 1)
  {
    v4 = *(result + 56);
    v5 = v4[9];
    v6 = v4[10] + a3;
    if (v6 <= v5 && v4[8] + v5 <= v6 + a4)
    {
      return dyld_image_content_for_segment();
    }
  }

  return result;
}

void sub_298BDB10C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v36 = a3;
  v8 = *(a1[7] + 72) - *(a1[7] + 80);
  LOBYTE(v29) = 0;
  LOBYTE(v30) = 0;
  sub_298BF4DF8(a2, a4, v8, &v29, &v33);
  if (v35 != 1)
  {
    return;
  }

  if (*(*(*(a1[4] + 8) + 24) + 136) != 1)
  {
    operator new[]();
  }

  *(a1[7] + 48) = v34;
  v9 = *(*(a1[5] + 8) + 24);
  std::mutex::lock((v9 + 40));
  v10 = *(*(a1[5] + 8) + 24);
  v13 = *(v10 + 16);
  v11 = v10 + 16;
  v12 = v13;
  v14 = *(v11 + 16);
  if (!v14)
  {
    v23 = 0;
LABEL_17:
    v17 = sub_298BE4B44(v11, &v36, v23);
    *v17 = a3;
    *(v17 + 1) = 0u;
    *(v17 + 3) = 0u;
    *(v17 + 5) = 0u;
    v17[7] = 0;
    goto LABEL_18;
  }

  v15 = v14 - 1;
  v16 = v15 & (37 * a3);
  v17 = (v12 + (v16 << 6));
  v18 = *v17;
  if (*v17 != a3)
  {
    v19 = 0;
    v20 = 1;
    while (v18 != -1)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == -2;
      }

      if (v21)
      {
        v19 = v17;
      }

      v22 = v16 + v20++;
      v16 = v22 & v15;
      v17 = (v12 + (v16 << 6));
      v18 = *v17;
      if (*v17 == a3)
      {
        goto LABEL_18;
      }
    }

    if (v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v17;
    }

    goto LABEL_17;
  }

LABEL_18:
  std::mutex::unlock((v9 + 40));
  v25 = v17[1];
  v24 = v17 + 1;
  if (!v25)
  {
    sub_298BF4F80(a2, a4, 0, &v29);
    v26 = v29;
    v27 = v30;
    v28 = v31;
    v24[6] = v32;
    *(v24 + 1) = v27;
    *(v24 + 2) = v28;
    *v24 = v26;
  }

  *(*(a1[6] + 8) + 24) = 0;
}

void sub_298BDB330(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 8);
}

void sub_298BDB390(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void sub_298BDB400(uint64_t a1)
{
  sub_298AE88F0(a1 + 48);
  sub_298BDD2E4(a1 + 8);

  JUMPOUT(0x29C2945F0);
}

void sub_298BDB454(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    do
    {
      while (1)
      {
        v3 = *v2;
        if (*(v2 + 39) < 0)
        {
          break;
        }

        operator delete(v2);
        v2 = v3;
        if (!v3)
        {
          goto LABEL_6;
        }
      }

      __p = v2;
      operator delete(v2[2]);
      operator delete(__p);
      v2 = v3;
    }

    while (v3);
  }

LABEL_6:
  v4 = a1[4];
  a1[4] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x29C2945F0);
}

void *sub_298BDB508(void *a1, const void *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = a3;
  if (a3)
  {
    memmove(a1, a2, a3);
  }

  *(a1 + a3) = 0;
  return a1;
}

void sub_298BDB5B8(uint64_t **a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  *&v22 = a2;
  *(&v22 + 1) = a3;
  *a1 = 0;
  v8 = (a1 + 1);
  v9 = sub_298BDB9EC(a1 + 1, a2, &v22);
  if ((v10 & 1) == 0)
  {
    v21 = *(a1 + 1);
    v15 = (v9 + 4);
    goto LABEL_20;
  }

  if (*v8 != v9)
  {
    v11 = *v9;
    if (*v9)
    {
      do
      {
        v12 = v11;
        v11 = v11[1];
      }

      while (v11);
    }

    else
    {
      v13 = v9;
      do
      {
        v12 = v13[2];
        v14 = *v12 == v13;
        v13 = v12;
      }

      while (v14);
    }

    v15 = (v12 + 4);
    if (v12[4] <= a2 && v12[5] > a2)
    {
      goto LABEL_19;
    }
  }

  v16 = v9[1];
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
      v17 = v9[2];
      v14 = *v17 == v9;
      v9 = v17;
    }

    while (!v14);
  }

  if (v17 != (a1 + 2))
  {
    v19 = v17[4];
    v15 = (v17 + 4);
    v18 = v19;
    if (a2 <= v19 && a3 > v18)
    {
LABEL_19:
      v21 = *(a1 + 1);
LABEL_20:
      sub_298BDB6DC(a4, v21, v15, &v22);
      return;
    }
  }

  *a4 = 0;
}

void sub_298BDB6DC(void *a1, char a2, unint64_t *a3, uint64_t a4)
{
  if (a2)
  {
    std::generic_category();
    sub_298BDBAAC(&v5, a3);
    v6[0] = "Pre-existing interval: ";
    v6[2] = &v5;
    v7 = 1027;
    sub_298B996A4(v6, &__p);
    operator new();
  }

  *a1 = 0;
}

uint64_t **sub_298BDB9EC(uint64_t **a1, unint64_t a2, _OWORD *a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_2:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_2;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_2;
    }
  }
}

void sub_298BDBAAC(std::string *a1, unint64_t *a2)
{
  sub_298ADC8F4(&v14, *a2);
  v4 = std::string::insert(&v14, 0, "[");
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v15, ", ");
  v7 = v6->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  sub_298ADC8F4(&__p, a2[1]);
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v16, p_p, size);
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v17, ")");
  *a1 = *v12;
  v12->__r_.__value_.__r.__words[0] = 0;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v16.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(v14.__r_.__value_.__l.__data_);
    return;
  }

LABEL_16:
  operator delete(v15.__r_.__value_.__l.__data_);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_17;
  }
}

__n128 sub_298BDBC28(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 39) < 0)
  {
    v3 = a1;
    sub_298AFE11C((a1 + 16), *(a2 + 16), *(a2 + 24));
    a1 = v3;
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  return result;
}

void sub_298BDBC98(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    sub_298BDBF18(result, a2 - v2);
  }
}

uint64_t sub_298BDBCC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a4)
  {
    v8 = result;
    do
    {
      v9 = a3 + ((a4 - a3) >> 1);
      *(*(v8 + 32) + 16 * a2) = *(a5 + 16 * v9);
      result = sub_298BDBCC8(v8, 2 * a2, a3, v9, a5);
      a3 = v9 + 1;
      a2 = (2 * a2) | 1;
    }

    while (v9 + 1 != a4);
  }

  return result;
}

uint64_t *sub_298BDBD58(uint64_t *a1, void *a2, void *a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v6 = a2;
    do
    {
      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      ++v4;
      v6 = v8;
    }

    while (v8 != a3);
  }

  sub_298BDBDE0(a1, a2, a3, v4);
  return a1;
}

uint64_t *sub_298BDBDE0(uint64_t *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    sub_298BDBE98(result, a4);
  }

  return result;
}

void sub_298BDBE98(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_298BDBEDC(a2);
  }

  sub_298ADDDA0();
}

void sub_298BDBEDC(unint64_t a1)
{
  if (!(a1 >> 60))
  {

    operator new();
  }

  sub_298ADDDA0();
}

void sub_298BDBF18(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 > (v4 - v5) >> 4)
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      sub_298ADDDA0();
    }

    v9 = v4 - v6;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_298BDBEDC(v10);
    }

    v12 = v7 >> 4;
    v11 = (16 * (v7 >> 4));
    bzero(v11, 16 * a2);
    memcpy(&v11[-16 * v12], v6, v7);
    *a1 = &v11[-16 * v12];
    *(a1 + 8) = &v11[16 * a2];
    *(a1 + 16) = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }

  else
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }
}

size_t sub_298BDC040(size_t result, uint64_t a2, char *__s)
{
  if (!__s)
  {
    return result;
  }

  result = strlen(__s);
  if (result >= 0x10)
  {
    if (*__s == 0x5F74666977735F5FLL && *(__s + 1) == 0x7972746E655F7361)
    {
      return dyld_image_content_for_section();
    }
  }

  else if (result < 0xE)
  {
    return result;
  }

  if (*__s == 0x5F74666977735F5FLL && *(__s + 6) == 0x7465725F73615F74)
  {
    return dyld_image_content_for_section();
  }

  return result;
}

uint64_t *sub_298BDC16C(uint64_t *result, int *a2, uint64_t a3, unint64_t a4)
{
  if (a2 && a4 >= 4)
  {
    v4 = a2;
    v5 = result[4] + a3;
    v6 = (result[5] + 8);
    do
    {
      v7 = v5 + *v4;
      v8 = *v6;
      if (!*v6)
      {
LABEL_10:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v9 = v8;
          v10 = v8[4];
          if (v10 <= v7)
          {
            break;
          }

          v8 = *v9;
          if (!*v9)
          {
            goto LABEL_10;
          }
        }

        if (v10 >= v7)
        {
          break;
        }

        v8 = v9[1];
        if (!v8)
        {
          goto LABEL_10;
        }
      }

      *(v9 + 10) = *(result + 12);
      v5 += 4;
      ++v4;
    }

    while (v4 != (a2 + (a4 & 0xFFFFFFFFFFFFFFFCLL)));
  }

  return result;
}

uint64_t sub_298BDC2AC(uint64_t result)
{
  v1 = *(result + 48);
  *(result + 48) = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  if (*(result + 31) < 0)
  {
    v3 = result;
    operator delete(*(result + 8));
    return v3;
  }

  return result;
}

void sub_298BDC328(__n128 *a1, const void *a2, const void *a3, _BYTE *a4, unint64_t a5)
{
  v49 = *MEMORY[0x29EDCA608];
  v44[0] = a2;
  v44[1] = a3;
  if (*(*a4 + 8) == 1)
  {
    v6 = *a4;
  }

  else
  {
    v6 = 0;
  }

  sub_298B80798(&v45, v6, 0);
  sub_298B80798(&v42, 0, 0);
  *v38 = v45;
  v39 = v46;
  v40 = v47;
  v41 = v48;
  v7 = v45;
  v32 = DWORD2(v45);
  v30 = v42;
  if (v45 != v42 || DWORD2(v45) != v43)
  {
    v8 = *(&v40 + 1);
    v9 = v41;
    v10 = v40;
    v11 = DWORD1(v40);
    v13 = DWORD1(v39);
    v12 = DWORD2(v39);
    v14 = HIDWORD(v38[1]);
    v15 = v39;
    v29 = v43;
    while (1)
    {
      v16 = *(v7 + 48);
      v17 = v16 == -889275714 ? v14 : v10;
      v18 = v16 == -889275714 ? v15 : v11;
      sub_298B7DEF8(v17, v18, 0, 0, __p);
      if (v36 == 3)
      {
        break;
      }

      if (v36 != 5 && (v36 - 3) < 3)
      {
        goto LABEL_18;
      }

LABEL_30:
      if (v35 < 0)
      {
        operator delete(__p[0]);
      }

      sub_298B80798(&v45, v7, v32 + 1);
      v7 = v45;
      v14 = HIDWORD(v45);
      v32 = DWORD2(v45);
      v15 = v46;
      v13 = DWORD1(v46);
      v12 = DWORD2(v46);
      v10 = v47;
      v11 = DWORD1(v47);
      v8 = *(&v47 + 1);
      v9 = v48;
      if (v45 == v30 && DWORD2(v45) == v29)
      {
        goto LABEL_34;
      }
    }

    if (v37 == 34)
    {
      goto LABEL_19;
    }

LABEL_18:
    if ((a4[48] & 1) == 0)
    {
LABEL_19:
      v19 = *(v7 + 24);
      v20 = *(v7 + 48);
      v21 = v20 == -889275714;
      if (v20 == -889275714)
      {
        v22 = v13;
      }

      else
      {
        v22 = v8;
      }

      if (v21)
      {
        v23 = v12;
      }

      else
      {
        v23 = v9;
      }

      if (v19 < v22)
      {
        v22 = *(v7 + 24);
      }

      v24 = v19 - v22;
      if (v24 >= v23)
      {
        v24 = v23;
      }

      *&v45 = v22 + *(v7 + 16);
      *(&v45 + 1) = v24;
      v46 = *(v7 + 32);
      sub_298B7E74C(&v45);
    }

    goto LABEL_30;
  }

LABEL_34:
  if (a4[48] != 1)
  {
    sub_298BB0E68(&v45, "Universal object does not contain a recognized arch slice: ");
    sub_298B1EEB8(v44, __p);
    if ((v35 & 0x80u) == 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    if ((v35 & 0x80u) == 0)
    {
      v26 = v35;
    }

    else
    {
      v26 = __p[1];
    }

    v27 = std::string::append(&v45, v25, v26);
    v28 = v27->__r_.__value_.__r.__words[2];
    *v38 = *&v27->__r_.__value_.__l.__data_;
    *&v39 = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    sub_298BD6D38(&v33, v38);
  }

  sub_298BDC820(a1, a4);
}

uint64_t sub_298BDC79C(uint64_t result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = *(a2 + 8);
    if (*(a2 + 23) >= 0)
    {
      v3 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v3 = v2;
    }

    return sub_298B9BCEC(result, a2, v3);
  }

  else
  {
    v4 = *(result + 32);
    if (*(result + 24) - v4 > 3uLL)
    {
      *v4 = 1701736270;
      *(result + 32) += 4;
    }

    else
    {
      return sub_298B9BCEC(result, "None", 4uLL);
    }
  }

  return result;
}

__n128 sub_298BDC820(__n128 *a1, uint64_t a2)
{
  a1[3].n128_u8[8] &= ~1u;
  result = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *a1 = result;
  v3 = *(a2 + 16);
  a1[1].n128_u8[8] = 0;
  a1[1].n128_u64[0] = v3;
  a1[3].n128_u8[0] = 0;
  if (*(a2 + 48) == 1)
  {
    result = *(a2 + 24);
    a1[2].n128_u64[1] = *(a2 + 40);
    *(a1 + 24) = result;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    a1[3].n128_u8[0] = 1;
  }

  return result;
}

BOOL sub_298BDC880(const unsigned __int8 **a1, const unsigned __int8 **a2)
{
  sub_298B1FB90(a1, v14);
  sub_298B1FB90(a2, __p);
  v3 = v15;
  if ((v15 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = v14[1];
  }

  v5 = v13;
  v6 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  if (v4 == v5)
  {
    if ((v15 & 0x80u) == 0)
    {
      v7 = v14;
    }

    else
    {
      v7 = v14[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    result = memcmp(v7, v8, v4) == 0;
  }

  else
  {
    result = 0;
  }

  if (v6 < 0)
  {
    v10 = result;
    operator delete(__p[0]);
    result = v10;
    v3 = v15;
  }

  if ((v3 & 0x80) != 0)
  {
    v11 = result;
    operator delete(v14[0]);
    return v11;
  }

  return result;
}

BOOL sub_298BDC964(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t *sub_298BDC9D8(uint64_t *result, unint64_t a2)
{
  v2 = *(*result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      break;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  *(v3 + 10) = *result[1];
  return result;
}

uint64_t sub_298BDCAC4(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = v2 + 8;
  do
  {
    v6 = *(v5 - 8);
    v10 = *(a2 + 2);
    v9 = *a2;
    result = (*(*v6 + 16))(v6, &v9);
    if (result)
    {
      break;
    }

    v8 = v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

void sub_298BDCB6C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298BDCBE4(uint64_t result, uint64_t a2, const char *a3, __int128 *a4)
{
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (v5 != v4)
  {
    if (a3)
    {
      v9 = *v5;
      v22 = *(a4 + 2);
      v21 = *a4;
      result = (*(*v9 + 16))(v9, &v21);
      if (result)
      {
        v10 = strlen(a3);
        result = (*(*v9 + 8))(v9, a2, a3, v10);
      }

      if (v5 + 1 != v4)
      {
        v11 = v5[1];
        v22 = *(a4 + 2);
        v21 = *a4;
        result = (*(*v11 + 16))(v11, &v21);
        if (result)
        {
          v12 = strlen(a3);
          result = (*(*v11 + 8))(v11, a2, a3, v12);
        }

        if (v5 + 2 != v4)
        {
          v13 = v5[2];
          v22 = *(a4 + 2);
          v21 = *a4;
          result = (*(*v13 + 16))(v13, &v21);
          if (result)
          {
            v14 = strlen(a3);
            result = (*(*v13 + 8))(v13, a2, a3, v14);
          }

          if (v5 + 3 != v4)
          {
            v15 = v5[3];
            v22 = *(a4 + 2);
            v21 = *a4;
            result = (*(*v15 + 16))(v15, &v21);
            if (result)
            {
              v16 = strlen(a3);
              result = (*(*v15 + 8))(v15, a2, a3, v16);
            }

            for (i = v5 + 4; i != v4; ++i)
            {
              v18 = *i;
              v22 = *(a4 + 2);
              v21 = *a4;
              result = (*(*v18 + 16))(v18, &v21);
              if (result)
              {
                v19 = strlen(a3);
                result = (*(*v18 + 8))(v18, a2, a3, v19);
              }
            }
          }
        }
      }
    }

    else
    {
      do
      {
        v20 = *v5;
        v22 = *(a4 + 2);
        v21 = *a4;
        result = (*(*v20 + 16))(v20, &v21);
        if (result)
        {
          result = (*(*v20 + 8))(v20, a2, a3, 0);
        }

        ++v5;
      }

      while (v5 != v4);
    }
  }

  return result;
}

void *sub_298BDCF70(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = (v3 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_298ADDDA0();
  }

  v6 = *(a1 + 16) - v2;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    sub_298AEF838(v7);
  }

  v8 = (8 * (v3 >> 3));
  *v8 = *a2;
  v9 = v8 + 1;
  memcpy(0, v2, v3);
  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

uint64_t sub_298BDD044(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_298AEBDC8(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_298BDD0A4(a1, *(i + 4), i + 1);
  }

  return a1;
}

void sub_298BDD0A4(void *a1, unsigned int a2, _OWORD *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] <= 1uLL)
  {
    v5 = (v3 - 1) & a2;
    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_15:
    operator new();
  }

  v5 = a2;
  if (v3 <= a2)
  {
    v5 = a2 % v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_6:
  v7 = *v6;
  if (!v7)
  {
    goto LABEL_15;
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == a2)
      {
        if (*(v7 + 4) == a2)
        {
          return;
        }
      }

      else if ((v9 & (v3 - 1)) != v5)
      {
        goto LABEL_15;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v3)
    {
      v8 %= v3;
    }

    if (v8 != v5)
    {
      goto LABEL_15;
    }

LABEL_10:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_10;
  }
}

uint64_t sub_298BDD2E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 5);
    if (v4)
    {
      *(v2 + 6) = v4;
      v17 = v2;
      operator delete(v4);
      v2 = v17;
    }

    if (v2[39] < 0)
    {
      v18 = v2;
      operator delete(*(v2 + 2));
      v2 = v18;
    }

    operator delete(v2);
    if (v3)
    {
      v5 = *v3;
      v6 = *(v3 + 5);
      if (v6)
      {
        *(v3 + 6) = v6;
        operator delete(v6);
      }

      if (v3[39] < 0)
      {
        operator delete(*(v3 + 2));
      }

      operator delete(v3);
      if (v5)
      {
        v7 = *v5;
        v8 = *(v5 + 5);
        if (v8)
        {
          *(v5 + 6) = v8;
          operator delete(v8);
        }

        if (v5[39] < 0)
        {
          operator delete(*(v5 + 2));
        }

        operator delete(v5);
        if (v7)
        {
          v9 = *v7;
          v10 = *(v7 + 5);
          if (v10)
          {
            *(v7 + 6) = v10;
            operator delete(v10);
          }

          if (v7[39] < 0)
          {
            operator delete(*(v7 + 2));
          }

          operator delete(v7);
          if (v9)
          {
            v13 = *v9;
            v14 = *(v9 + 5);
            if (v14)
            {
              *(v9 + 6) = v14;
              operator delete(v14);
            }

            if (v9[39] < 0)
            {
              operator delete(*(v9 + 2));
            }

            operator delete(v9);
            if (v13)
            {
              do
              {
                v15 = *v13;
                v16 = *(v13 + 5);
                if (v16)
                {
                  *(v13 + 6) = v16;
                  operator delete(v16);
                }

                if (v13[39] < 0)
                {
                  operator delete(*(v13 + 2));
                }

                operator delete(v13);
                v13 = v15;
              }

              while (v15);
            }
          }
        }
      }
    }
  }

  v11 = *a1;
  *a1 = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return a1;
}

uint64_t *sub_298BDD494(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_298AEB1D4(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

void *sub_298BDD4E0(void *a1, uint64_t **a2, __int128 **a3)
{
  v3 = a2;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_298B7F920(&v17, a2, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_9;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] <= 1uLL)
  {
    v12 = (*&v9 - 1) & v7;
  }

  else
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v15 = *v13) == 0)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v8)
    {
      break;
    }

    if (v11 <= 1)
    {
      v16 &= *&v9 - 1;
    }

    else if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v12)
    {
      goto LABEL_9;
    }

LABEL_15:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  if (!sub_298BDC964(v15 + 2, v3))
  {
    goto LABEL_15;
  }

  return v15;
}

_DWORD *sub_298BDD7F0(uint64_t a1, int *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = (v3 >> 2) + 1;
  if (v4 >> 62)
  {
    sub_298ADDDA0();
  }

  v6 = *(a1 + 16) - v2;
  if (v6 >> 1 > v4)
  {
    v4 = v6 >> 1;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v7 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 62))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v8 = (4 * (v3 >> 2));
  *v8 = *a2;
  v9 = v8 + 1;
  memcpy(0, v2, v3);
  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

void *sub_298BDD8E0(void *a1, uint64_t **a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_298B7F920(&v17, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] <= 1uLL)
  {
    v10 = (*&v7 - 1) & v6;
  }

  else
  {
    v10 = v6 < *&v7 ? v6 : v6 % *&v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (!*v11)
  {
    return 0;
  }

  if (v9.u32[0] >= 2uLL)
  {
    while (1)
    {
      v13 = v12[1];
      if (v13 == v8)
      {
        if (sub_298BDC964(v12 + 2, v2))
        {
          return v12;
        }
      }

      else
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }

        if (v13 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
      if (!v12)
      {
        return 0;
      }
    }
  }

  v15 = *&v7 - 1;
  while (1)
  {
    v16 = v12[1];
    if (v16 == v8)
    {
      break;
    }

    if ((v16 & v15) != v10)
    {
      return 0;
    }

LABEL_23:
    result = 0;
    v12 = *v12;
    if (!v12)
    {
      return result;
    }
  }

  if (!sub_298BDC964(v12 + 2, v2))
  {
    goto LABEL_23;
  }

  return v12;
}

uint64_t sub_298BDDA2C(void *a1, unsigned int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] <= 1uLL)
  {
    v5 = (v3 - 1) & a2;
    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_15:
    operator new();
  }

  v5 = a2;
  if (v3 <= a2)
  {
    v5 = a2 % v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_6:
  result = *v6;
  if (!*v6)
  {
    goto LABEL_15;
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = *(result + 8);
      if (v9 == a2)
      {
        if (*(result + 16) == a2)
        {
          return result;
        }
      }

      else if ((v9 & (v3 - 1)) != v5)
      {
        goto LABEL_15;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v8 = *(result + 8);
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v3)
    {
      v8 %= v3;
    }

    if (v8 != v5)
    {
      goto LABEL_15;
    }

LABEL_10:
    result = *result;
    if (!result)
    {
      goto LABEL_15;
    }
  }

  if (*(result + 16) != a2)
  {
    goto LABEL_10;
  }

  return result;
}

BOOL sub_298BDDC84(float *a1, uint64_t **a2, uint64_t a3)
{
  v3 = a2;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_298B7F920(&v17, a2, v6);
  v8 = v7;
  v9 = *(a1 + 2);
  if (!*&v9)
  {
    goto LABEL_9;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] <= 1uLL)
  {
    v12 = (*&v9 - 1) & v7;
  }

  else
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 <= 1)
    {
      v15 &= *&v9 - 1;
    }

    else if (v15 >= *&v9)
    {
      v15 %= *&v9;
    }

    if (v15 != v12)
    {
      goto LABEL_9;
    }

LABEL_15:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  result = sub_298BDC964(v14 + 2, v3);
  if (!result)
  {
    goto LABEL_15;
  }

  return result;
}

void sub_298BDDED8(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    __n = 2;
  }

  else if ((__n & (__n - 1)) != 0)
  {
    v6 = a1;
    __n = std::__next_prime(__n);
    a1 = v6;
  }

  v2 = *(a1 + 8);
  if (__n > *&v2)
  {
    goto LABEL_4;
  }

  if (__n < *&v2)
  {
    v3 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v2 < 3uLL || (v4 = vcnt_s8(v2), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v7 = a1;
      v8 = __n;
      prime = std::__next_prime(v3);
      __n = v8;
      v3 = prime;
      a1 = v7;
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (__n <= v3)
    {
      __n = v3;
    }

    if (__n < *&v2)
    {
LABEL_4:

      sub_298AE8270(a1, __n);
    }
  }
}

uint64_t *sub_298BDDFD8(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_298AEFAFC(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_298BDE034(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    sub_298ADDDA0();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v5 = 0x1745D1745D1745DLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 80);
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 80) = v7;
  *(v6 + 96) = *(a2 + 96);
  v8 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v8;
  *(v6 + 120) = *(a2 + 120);
  *(v6 + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v9 = *(a2 + 144);
  *(v6 + 128) = *(a2 + 128);
  *(v6 + 144) = v9;
  v10 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(v6 + 160) = v10;
  v11 = 176 * v2 + 176;
  v12 = *a1;
  v13 = a1[1];
  v14 = v6 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v6 + *a1 - v13;
    do
    {
      *v16 = *v15;
      v17 = *(v15 + 8);
      *(v16 + 24) = *(v15 + 24);
      *(v16 + 8) = v17;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 8) = 0;
      *(v16 + 32) = *(v15 + 32);
      v19 = *(v15 + 64);
      v18 = *(v15 + 80);
      v20 = *(v15 + 48);
      *(v16 + 96) = *(v15 + 96);
      *(v16 + 64) = v19;
      *(v16 + 80) = v18;
      *(v16 + 48) = v20;
      v21 = *(v15 + 104);
      *(v16 + 120) = *(v15 + 120);
      *(v16 + 104) = v21;
      *(v15 + 112) = 0;
      *(v15 + 120) = 0;
      *(v15 + 104) = 0;
      v22 = *(v15 + 144);
      *(v16 + 128) = *(v15 + 128);
      *(v16 + 144) = v22;
      v23 = *(v15 + 160);
      *(v15 + 160) = 0;
      *(v15 + 168) = 0;
      *(v16 + 160) = v23;
      v15 += 176;
      v16 += 176;
    }

    while (v15 != v13);
    do
    {
      v24 = *(v12 + 168);
      *(v12 + 168) = 0;
      if (v24)
      {
        MEMORY[0x29C2945C0](v24, 0x1000C8077774924);
      }

      v25 = *(v12 + 160);
      *(v12 + 160) = 0;
      if (v25)
      {
        sub_298AEB5EC(v12 + 160, v25);
      }

      if (*(v12 + 127) < 0)
      {
        operator delete(*(v12 + 104));
      }

      if (*(v12 + 31) < 0)
      {
        operator delete(*(v12 + 8));
      }

      v12 += 176;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

uint64_t sub_298BDE2B4(uint64_t result, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v5 = (37 * a4) + ~((37 * a4) << 32) + (((a3 >> 4) ^ (a3 >> 9)) << 32);
    v6 = (v5 ^ (v5 >> 22)) + ~((v5 ^ (v5 >> 22)) << 13);
    v7 = (9 * (v6 ^ (v6 >> 8))) ^ ((9 * (v6 ^ (v6 >> 8))) >> 15);
    v8 = a2 - 1;
    v9 = (a2 - 1) & (((v7 + ~(v7 << 27)) >> 31) ^ (v7 + ~(v7 << 27)));
    v10 = (result + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    if (*v10 == a3 && v12 == a4)
    {
LABEL_7:
      *a5 = v10;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      while (v11 != -4096 || v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v14)
        {
          v16 = 0;
        }

        else
        {
          v16 = v12 == 0x8000000000000000;
        }

        if (v16 && v11 == -8192)
        {
          v14 = v10;
        }

        v18 = v9 + v15++;
        v9 = v18 & v8;
        v10 = (result + 16 * (v18 & v8));
        v11 = *v10;
        v12 = v10[1];
        if (*v10 == a3 && v12 == a4)
        {
          goto LABEL_7;
        }
      }

      if (v14)
      {
        v10 = v14;
      }

      *a5 = v10;
    }
  }

  else
  {
    *a5 = 0;
  }

  return result;
}

_OWORD *sub_298BDE394(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_10;
      }

      v13 = v12 + 1;
      v10 = &result[v13 & 0x1FFFFFFFFFFFFFFCLL];
      v14 = result + 2;
      v15 = v13 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *(v14 - 2) = xmmword_298D1B220;
        *(v14 - 1) = xmmword_298D1B220;
        *v14 = xmmword_298D1B220;
        v14[1] = xmmword_298D1B220;
        v14 += 4;
        v15 -= 4;
      }

      while (v15);
      if (v13 != (v13 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_10:
        v16 = &result[v11];
        do
        {
          *v10++ = xmmword_298D1B220;
        }

        while (v10 != v16);
      }
    }

    if (v3)
    {
      v17 = 16 * v3;
      v18 = (v4 + 8);
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;
        if ((v19 != -4096 || v20 != 0x7FFFFFFFFFFFFFFFLL) && (v19 != -8192 || v20 != 0x8000000000000000))
        {
          v27 = 0;
          sub_298BDE2B4(*a1, *(a1 + 16), v19, v20, &v27);
          v23 = v27;
          v24 = *v18;
          *v27 = *(v18 - 1);
          v23[1] = v24;
          ++*(a1 + 8);
        }

        v18 += 2;
        v17 -= 16;
      }

      while (v17);
    }

    JUMPOUT(0x29C2945E0);
  }

  *(a1 + 8) = 0;
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = 16 * v25;
    do
    {
      *v10++ = xmmword_298D1B220;
      v26 -= 16;
    }

    while (v26);
  }

  return result;
}

void sub_298BDE544(uint64_t *a1, char *a2)
{
  v2 = 126 - 2 * __clz(0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 4));
  if (a2 == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  sub_298BDE57C(a1, a2, v3, 1);
}

void sub_298BDE57C(uint64_t *result, char *a2, uint64_t a3, int a4)
{
LABEL_1:
  v4 = (a2 - 176);
  v5 = (a2 - 352);
  v6 = (a2 - 528);
LABEL_2:
  v7 = 1 - a3;
  while (1)
  {
    v8 = v7;
    v9 = a2 - result;
    v10 = 0x2E8BA2E8BA2E8BA3 * ((a2 - result) >> 4);
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        if (*(a2 - 13) < result[9])
        {

          sub_298BDFD3C(result, v4);
        }

        return;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {

      sub_298BDE9F8(result, result + 22, result + 44, v4);
      return;
    }

    if (v10 == 5)
    {

      sub_298BDEAA0(result, result + 22, result + 44, result + 66, v4);
      return;
    }

LABEL_10:
    if (v9 <= 4223)
    {
      if (a4)
      {

        sub_298BDEBC8(result, a2);
      }

      else
      {

        sub_298BDEEB4(result, a2);
      }

      return;
    }

    if (v8 == 1)
    {

      sub_298BDF184(result, a2, a2);
      return;
    }

    v19 = a4;
    v20 = a2;
    v11 = v10 >> 1;
    v12 = &result[22 * (v10 >> 1)];
    v18 = result;
    if (v9 < 0x5801)
    {
      sub_298BDE940(&result[22 * (v10 >> 1)], result, v4);
    }

    else
    {
      v13 = result;
      sub_298BDE940(result, &result[22 * (v10 >> 1)], v4);
      sub_298BDE940(v13 + 22, &v13[22 * v11 - 22], v5);
      sub_298BDE940(v13 + 44, &v13[22 * v11 + 22], v6);
      sub_298BDE940(&v13[22 * v11 - 22], v12, &v13[22 * v11 + 22]);
      sub_298BDFD3C(v13, v12);
    }

    if ((v19 & 1) == 0 && *(v18 - 13) >= v18[9])
    {
      result = sub_298BDF6E0(v18, v20);
      goto LABEL_18;
    }

    v14 = sub_298BDF90C(v18, v20);
    LOBYTE(a4) = v19;
    v15 = v14;
    if ((v16 & 1) == 0)
    {
      goto LABEL_17;
    }

    v17 = sub_298BDFAD8(v18, v14);
    if (sub_298BDFAD8((v15 + 176), v20))
    {
      a3 = -v8;
      a2 = v15;
      result = v18;
      a4 = v19;
      if (v17)
      {
        return;
      }

      goto LABEL_1;
    }

    v7 = v8 + 1;
    a2 = v20;
    a4 = v19;
    result = (v15 + 176);
    if (!v17)
    {
LABEL_17:
      sub_298BDE57C(v18, v15, -v8, a4 & 1);
      result = (v15 + 176);
LABEL_18:
      a4 = 0;
      a3 = -v8;
      a2 = v20;
      goto LABEL_2;
    }
  }

  sub_298BDE940(result, result + 22, v4);
}

uint64_t *sub_298BDE940(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[9];
  v5 = a3[9];
  if (v4 < result[9])
  {
    if (v5 >= v4)
    {
      result = sub_298BDFD3C(result, a2);
      if (a3[9] >= a2[9])
      {
        return result;
      }

      v7 = a3;
      result = a2;
    }

    else
    {
      v7 = a3;
    }
  }

  else
  {
    if (v5 >= v4)
    {
      return result;
    }

    v6 = result;
    result = sub_298BDFD3C(a2, a3);
    if (a2[9] >= v6[9])
    {
      return result;
    }

    result = v6;
    v7 = a2;
  }

  return sub_298BDFD3C(result, v7);
}

uint64_t sub_298BDE9F8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = sub_298BDE940(a1, a2, a3);
  if (*(a4 + 72) < a3[9])
  {
    result = sub_298BDFD3C(a3, a4);
    if (a3[9] < a2[9])
    {
      result = sub_298BDFD3C(a2, a3);
      if (a2[9] < a1[9])
      {

        return sub_298BDFD3C(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_298BDEAA0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  result = sub_298BDE940(a1, a2, a3);
  if (a4[9] < a3[9])
  {
    result = sub_298BDFD3C(a3, a4);
    if (a3[9] < a2[9])
    {
      result = sub_298BDFD3C(a2, a3);
      if (a2[9] < a1[9])
      {
        result = sub_298BDFD3C(a1, a2);
      }
    }
  }

  if (*(a5 + 72) < a4[9])
  {
    result = sub_298BDFD3C(a4, a5);
    if (a4[9] < a3[9])
    {
      result = sub_298BDFD3C(a3, a4);
      if (a3[9] < a2[9])
      {
        result = sub_298BDFD3C(a2, a3);
        if (a2[9] < a1[9])
        {

          return sub_298BDFD3C(a1, a2);
        }
      }
    }
  }

  return result;
}

void sub_298BDEBC8(void *a1, void *a2)
{
  v41 = *MEMORY[0x29EDCA608];
  if (a1 == a2)
  {
    return;
  }

  v4 = a1 + 22;
  if (a1 + 22 == a2)
  {
    return;
  }

  v5 = 0;
  v6 = a1;
  while (2)
  {
    v7 = v4;
    if (v6[31] >= v6[9])
    {
      goto LABEL_4;
    }

    v28 = *v4;
    __p = *(v6 + 23);
    v30 = v6[25];
    v6[23] = 0;
    v6[24] = 0;
    v6[25] = 0;
    v8 = *(v6 + 16);
    v33 = *(v6 + 15);
    v34 = v8;
    v35 = v6[34];
    v9 = *(v6 + 14);
    v31 = *(v6 + 13);
    v32 = v9;
    v10 = *(v6 + 35);
    v37 = v6[37];
    v36 = v10;
    v6[35] = 0;
    v6[36] = 0;
    v6[37] = 0;
    v11 = *(v6 + 20);
    v38 = *(v6 + 19);
    v39 = v11;
    v12 = *(v6 + 21);
    v6[42] = 0;
    v6[43] = 0;
    v13 = v5;
    v40 = v12;
    do
    {
      v14 = a1 + v13;
      *(a1 + v13 + 176) = *(a1 + v13);
      if (*(a1 + v13 + 207) < 0)
      {
        operator delete(*(v14 + 23));
      }

      *(v14 + 184) = *(v14 + 8);
      *(v14 + 25) = *(v14 + 3);
      v14[31] = 0;
      v14[8] = 0;
      v15 = *(v14 + 5);
      *(v14 + 15) = *(v14 + 4);
      *(v14 + 16) = v15;
      *(v14 + 34) = *(v14 + 12);
      v16 = *(v14 + 3);
      *(v14 + 13) = *(v14 + 2);
      *(v14 + 14) = v16;
      v17 = (v14 + 280);
      if (v14[303] < 0)
      {
        operator delete(*v17);
      }

      v18 = a1 + v13;
      *v17 = *(v14 + 104);
      *(v14 + 37) = *(v14 + 15);
      v18[127] = 0;
      v14[104] = 0;
      v19 = *(a1 + v13 + 144);
      *(v18 + 19) = *(a1 + v13 + 128);
      *(v18 + 20) = v19;
      v20 = *(a1 + v13 + 160);
      *(v18 + 20) = 0;
      v21 = *(a1 + v13 + 336);
      *(v18 + 42) = v20;
      if (!v21)
      {
        v22 = *(v18 + 21);
        *(v18 + 21) = 0;
        v23 = *(v18 + 43);
        *(v18 + 43) = v22;
        if (!v23)
        {
          goto LABEL_14;
        }

LABEL_13:
        MEMORY[0x29C2945C0](v23, 0x1000C8077774924);
        goto LABEL_14;
      }

      sub_298AE9B00(v21, *(v21 + 8));
      MEMORY[0x29C2945F0](v21, 0x1020C4062D53EE8);
      v25 = *(v18 + 21);
      *(v18 + 21) = 0;
      v23 = *(v18 + 43);
      *(v18 + 43) = v25;
      if (v23)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (!v13)
      {
        sub_298BDFE18(a1, &v28);
        v26 = *(&v40 + 1);
        if (!*(&v40 + 1))
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v24 = *(a1 + v13 - 104);
      v13 -= 176;
    }

    while (*(&v33 + 1) < v24);
    sub_298BDFE18(a1 + v13 + 176, &v28);
    v26 = *(&v40 + 1);
    if (*(&v40 + 1))
    {
LABEL_20:
      MEMORY[0x29C2945C0](v26, 0x1000C8077774924);
    }

LABEL_21:
    v27 = v40;
    if (v40)
    {
      sub_298AE9B00(v40, *(v40 + 8));
      MEMORY[0x29C2945F0](v27, 0x1020C4062D53EE8);
      if (SHIBYTE(v37) < 0)
      {
        goto LABEL_28;
      }

LABEL_23:
      if (SHIBYTE(v30) < 0)
      {
LABEL_24:
        operator delete(__p);
      }
    }

    else
    {
      if ((SHIBYTE(v37) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_28:
      operator delete(v36);
      if (SHIBYTE(v30) < 0)
      {
        goto LABEL_24;
      }
    }

LABEL_4:
    v4 = v7 + 22;
    v5 += 176;
    v6 = v7;
    if (v7 + 22 != a2)
    {
      continue;
    }

    break;
  }
}

void *sub_298BDEEB4(void *result, void *a2)
{
  v32 = *MEMORY[0x29EDCA608];
  if (result == a2)
  {
    return result;
  }

  v3 = result + 22;
  if (result + 22 == a2)
  {
    return result;
  }

  v4 = result + 127;
  while (2)
  {
    v5 = v3;
    if (result[31] >= result[9])
    {
      goto LABEL_4;
    }

    v19 = *v3;
    __p = *(result + 23);
    v21 = result[25];
    result[23] = 0;
    result[24] = 0;
    result[25] = 0;
    v6 = *(result + 16);
    v24 = *(result + 15);
    v25 = v6;
    v26 = result[34];
    v7 = *(result + 14);
    v22 = *(result + 13);
    v23 = v7;
    v8 = *(result + 35);
    v28 = result[37];
    v27 = v8;
    result[35] = 0;
    result[36] = 0;
    result[37] = 0;
    v9 = *(result + 20);
    v29 = *(result + 19);
    v30 = v9;
    v10 = *(result + 21);
    result[42] = 0;
    result[43] = 0;
    v11 = v4;
    v31 = v10;
    do
    {
      *(v11 + 49) = *(v11 - 127);
      if (v11[80] < 0)
      {
        operator delete(*(v11 + 57));
      }

      *(v11 + 57) = *(v11 - 119);
      *(v11 + 73) = *(v11 - 103);
      *(v11 - 96) = 0;
      *(v11 - 119) = 0;
      *(v11 + 97) = *(v11 - 79);
      *(v11 + 113) = *(v11 - 63);
      *(v11 + 129) = *(v11 - 47);
      *(v11 + 145) = *(v11 - 31);
      *(v11 + 81) = *(v11 - 95);
      if (v11[176] < 0)
      {
        operator delete(*(v11 + 153));
      }

      *(v11 + 153) = *(v11 - 23);
      *(v11 + 169) = *(v11 - 7);
      *v11 = 0;
      *(v11 - 23) = 0;
      *(v11 + 177) = *(v11 + 1);
      *(v11 + 193) = *(v11 + 17);
      v13 = *(v11 + 33);
      *(v11 + 33) = 0;
      v14 = *(v11 + 209);
      *(v11 + 209) = v13;
      if (!v14)
      {
        v15 = *(v11 + 41);
        *(v11 + 41) = 0;
        v16 = *(v11 + 217);
        *(v11 + 217) = v15;
        if (!v16)
        {
          goto LABEL_7;
        }

LABEL_14:
        MEMORY[0x29C2945C0](v16, 0x1000C8077774924);
        goto LABEL_7;
      }

      sub_298AE9B00(v14, *(v14 + 8));
      MEMORY[0x29C2945F0](v14, 0x1020C4062D53EE8);
      v17 = *(v11 + 41);
      *(v11 + 41) = 0;
      v16 = *(v11 + 217);
      *(v11 + 217) = v17;
      if (v16)
      {
        goto LABEL_14;
      }

LABEL_7:
      v12 = *(v11 - 231);
      v11 -= 176;
    }

    while (*(&v24 + 1) < v12);
    sub_298BDFE18((v11 + 49), &v19);
    if (*(&v31 + 1))
    {
      MEMORY[0x29C2945C0](*(&v31 + 1), 0x1000C8077774924);
    }

    v18 = v31;
    if (v31)
    {
      sub_298AE9B00(v31, *(v31 + 8));
      MEMORY[0x29C2945F0](v18, 0x1020C4062D53EE8);
      if (SHIBYTE(v28) < 0)
      {
        goto LABEL_24;
      }

LABEL_21:
      if (SHIBYTE(v21) < 0)
      {
LABEL_22:
        operator delete(__p);
      }
    }

    else
    {
      if ((SHIBYTE(v28) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_24:
      operator delete(v27);
      if (SHIBYTE(v21) < 0)
      {
        goto LABEL_22;
      }
    }

LABEL_4:
    v3 = v5 + 22;
    v4 += 176;
    result = v5;
    if (v5 + 22 != a2)
    {
      continue;
    }

    return result;
  }
}

void sub_298BDF184(char *a1, char *a2, uint64_t *a3)
{
  v78 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    v4 = a2;
    v6 = a2 - a1;
    v7 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 4);
    if (a2 - a1 >= 177)
    {
      v8 = (v7 - 2) >> 1;
      v9 = v8 + 1;
      v10 = &a1[176 * v8];
      do
      {
        sub_298BDFF14(a1, v7, v10);
        v10 -= 22;
        --v9;
      }

      while (v9);
    }

    if (v4 != a3)
    {
      v11 = v4;
      do
      {
        if (v11[9] < *(a1 + 9))
        {
          sub_298BDFD3C(v11, a1);
          sub_298BDFF14(a1, v7, a1);
        }

        v11 += 22;
      }

      while (v11 != a3);
    }

    if (v6 >= 177)
    {
      v12 = 0x2E8BA2E8BA2E8BA3 * (v6 >> 4);
      do
      {
        while (2)
        {
          v51 = v4;
          v13 = 0;
          v52 = *a1;
          v53 = *(a1 + 8);
          v54 = *(a1 + 3);
          *(a1 + 1) = 0;
          *(a1 + 2) = 0;
          *(a1 + 3) = 0;
          v14 = *(a1 + 5);
          v57 = *(a1 + 4);
          v58 = v14;
          v59 = *(a1 + 12);
          v15 = *(a1 + 3);
          v55 = *(a1 + 2);
          v56 = v15;
          v61 = *(a1 + 15);
          v60 = *(a1 + 104);
          *(a1 + 14) = 0;
          *(a1 + 15) = 0;
          *(a1 + 13) = 0;
          v16 = *(a1 + 9);
          v62 = *(a1 + 8);
          v63 = v16;
          v17 = *(a1 + 10);
          *(a1 + 20) = 0;
          *(a1 + 21) = 0;
          v18 = a1;
          v64 = v17;
          do
          {
            v19 = &v18[176 * v13];
            v20 = (v19 + 176);
            if (2 * v13 + 2 >= v12)
            {
              v13 = (2 * v13) | 1;
              v24 = (v19 + 184);
              *v18 = *v20;
              if ((v18[31] & 0x80000000) == 0)
              {
                goto LABEL_22;
              }

LABEL_21:
              operator delete(*(v18 + 1));
              goto LABEL_22;
            }

            v21 = *(v19 + 31);
            v22 = *(v19 + 53);
            v23 = (v19 + 352);
            if (v21 >= v22)
            {
              v13 = (2 * v13) | 1;
            }

            else
            {
              v20 = v23;
              v13 = 2 * v13 + 2;
            }

            v24 = v20 + 8;
            *v18 = *v20;
            if (v18[31] < 0)
            {
              goto LABEL_21;
            }

LABEL_22:
            v25 = *v24;
            *(v18 + 3) = *(v24 + 16);
            *(v18 + 8) = v25;
            *(v20 + 31) = 0;
            *(v20 + 8) = 0;
            v26 = *(v20 + 96);
            v28 = *(v20 + 64);
            v27 = *(v20 + 80);
            *(v18 + 3) = *(v20 + 48);
            *(v18 + 4) = v28;
            *(v18 + 5) = v27;
            *(v18 + 12) = v26;
            *(v18 + 2) = *(v20 + 32);
            if (v18[127] < 0)
            {
              operator delete(*(v18 + 13));
            }

            v29 = *(v20 + 104);
            *(v18 + 15) = *(v20 + 120);
            *(v18 + 104) = v29;
            *(v20 + 127) = 0;
            *(v20 + 104) = 0;
            v30 = *(v20 + 144);
            *(v18 + 8) = *(v20 + 128);
            *(v18 + 9) = v30;
            v31 = *(v20 + 160);
            *(v20 + 160) = 0;
            v32 = *(v18 + 20);
            *(v18 + 20) = v31;
            if (!v32)
            {
              v33 = *(v20 + 168);
              *(v20 + 168) = 0;
              v34 = *(v18 + 21);
              *(v18 + 21) = v33;
              if (!v34)
              {
                goto LABEL_13;
              }

LABEL_26:
              MEMORY[0x29C2945C0](v34, 0x1000C8077774924);
              goto LABEL_13;
            }

            sub_298AE9B00(v32, *(v32 + 8));
            MEMORY[0x29C2945F0](v32, 0x1020C4062D53EE8);
            v35 = *(v20 + 168);
            *(v20 + 168) = 0;
            v34 = *(v18 + 21);
            *(v18 + 21) = v35;
            if (v34)
            {
              goto LABEL_26;
            }

LABEL_13:
            v18 = v20;
          }

          while (v13 <= ((v12 - 2) >> 1));
          v4 = v51 - 22;
          if (v20 == v51 - 22)
          {
            sub_298BDFE18(v20, &v52);
          }

          else
          {
            sub_298BDFE18(v20, (v51 - 22));
            sub_298BDFE18(v4, &v52);
            v36 = v20 - a1 + 176;
            if (v36 >= 177)
            {
              v37 = (0x2E8BA2E8BA2E8BA3 * (v36 >> 4) - 2) >> 1;
              v38 = &a1[176 * v37];
              if (v38[9] < *(v20 + 72))
              {
                v65 = *v20;
                v39 = *(v24 + 16);
                __p = *v24;
                v67 = v39;
                *(v24 + 8) = 0;
                *(v24 + 16) = 0;
                *v24 = 0;
                v68 = *(v20 + 32);
                v40 = *(v20 + 48);
                v41 = *(v20 + 64);
                v42 = *(v20 + 80);
                v72 = *(v20 + 96);
                v70 = v41;
                v71 = v42;
                v69 = v40;
                v43 = *(v20 + 104);
                v74 = *(v20 + 120);
                v73 = v43;
                *(v20 + 104) = 0;
                *(v20 + 112) = 0;
                *(v20 + 120) = 0;
                v44 = *(v20 + 144);
                v75 = *(v20 + 128);
                v76 = v44;
                v45 = *(v20 + 160);
                *(v20 + 160) = 0;
                *(v20 + 168) = 0;
                v77 = v45;
                v46 = *(&v70 + 1);
                do
                {
                  v47 = v38;
                  sub_298BDFE18(v20, v38);
                  if (!v37)
                  {
                    break;
                  }

                  v37 = (v37 - 1) >> 1;
                  v38 = &a1[176 * v37];
                  v20 = v47;
                }

                while (v38[9] < v46);
                sub_298BDFE18(v47, &v65);
                if (*(&v77 + 1))
                {
                  MEMORY[0x29C2945C0](*(&v77 + 1), 0x1000C8077774924);
                }

                v48 = v77;
                if (v77)
                {
                  sub_298AE9B00(v77, *(v77 + 8));
                  MEMORY[0x29C2945F0](v48, 0x1020C4062D53EE8);
                  if (SHIBYTE(v74) < 0)
                  {
                    goto LABEL_56;
                  }

LABEL_39:
                  if (SHIBYTE(v67) < 0)
                  {
LABEL_40:
                    operator delete(__p);
                  }
                }

                else
                {
                  if ((SHIBYTE(v74) & 0x80000000) == 0)
                  {
                    goto LABEL_39;
                  }

LABEL_56:
                  operator delete(v73);
                  if (SHIBYTE(v67) < 0)
                  {
                    goto LABEL_40;
                  }
                }
              }
            }
          }

          if (*(&v64 + 1))
          {
            MEMORY[0x29C2945C0](*(&v64 + 1), 0x1000C8077774924);
          }

          v49 = v64;
          if (!v64)
          {
            if ((SHIBYTE(v61) & 0x80000000) == 0)
            {
              goto LABEL_46;
            }

LABEL_51:
            operator delete(v60);
            if (SHIBYTE(v54) < 0)
            {
              goto LABEL_52;
            }

LABEL_47:
            v50 = v12-- <= 2;
            if (v50)
            {
              return;
            }

            continue;
          }

          break;
        }

        sub_298AE9B00(v64, *(v64 + 8));
        MEMORY[0x29C2945F0](v49, 0x1020C4062D53EE8);
        if (SHIBYTE(v61) < 0)
        {
          goto LABEL_51;
        }

LABEL_46:
        if ((SHIBYTE(v54) & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

LABEL_52:
        operator delete(v53);
        v50 = v12-- <= 2;
      }

      while (!v50);
    }
  }
}

uint64_t *sub_298BDF6E0(uint64_t *a1, unint64_t a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v18 = *a1;
  *v19 = *(a1 + 1);
  v20 = a1[3];
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v3 = *(a1 + 5);
  v23 = *(a1 + 4);
  v24 = v3;
  v25 = a1[12];
  v4 = *(a1 + 2);
  v22 = *(a1 + 3);
  v21 = v4;
  v27 = a1[15];
  *__p = *(a1 + 13);
  a1[14] = 0;
  a1[15] = 0;
  a1[13] = 0;
  v5 = *(a1 + 8);
  v29 = *(a1 + 9);
  v28 = v5;
  v6 = *(a1 + 10);
  a1[20] = 0;
  a1[21] = 0;
  v30 = v6;
  if (*(&v23 + 1) >= *(a2 - 104))
  {
    v10 = a1 + 22;
    do
    {
      v8 = v10;
      if (v10 >= a2)
      {
        break;
      }

      v11 = v10[9];
      v10 += 22;
    }

    while (*(&v23 + 1) >= v11);
  }

  else
  {
    v7 = a1;
    do
    {
      v8 = v7 + 22;
      v9 = v7[31];
      v7 += 22;
    }

    while (*(&v23 + 1) >= v9);
  }

  if (v8 >= a2)
  {
    v12 = a2;
  }

  else
  {
    do
    {
      v12 = a2 - 176;
      v13 = *(a2 - 104);
      a2 -= 176;
    }

    while (*(&v23 + 1) < v13);
  }

  while (v8 < v12)
  {
    sub_298BDFD3C(v8, v12);
    do
    {
      v14 = v8[31];
      v8 += 22;
    }

    while (*(&v23 + 1) >= v14);
    do
    {
      v15 = *(v12 - 104);
      v12 -= 176;
    }

    while (*(&v23 + 1) < v15);
  }

  if (v8 - 22 != a1)
  {
    sub_298BDFE18(a1, (v8 - 22));
  }

  sub_298BDFE18((v8 - 22), &v18);
  if (*(&v30 + 1))
  {
    MEMORY[0x29C2945C0](*(&v30 + 1), 0x1000C8077774924);
  }

  v16 = v30;
  if (!v30)
  {
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    operator delete(__p[0]);
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      return v8;
    }

LABEL_26:
    operator delete(v19[0]);
    return v8;
  }

  sub_298AE9B00(v30, *(v30 + 8));
  MEMORY[0x29C2945F0](v16, 0x1020C4062D53EE8);
  if (SHIBYTE(v27) < 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (SHIBYTE(v20) < 0)
  {
    goto LABEL_26;
  }

  return v8;
}

uint64_t *sub_298BDF90C(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v32 = *MEMORY[0x29EDCA608];
  v19 = *a1;
  v20 = *(a1 + 1);
  v21 = a1[3];
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v3 = *(a1 + 5);
  v24 = *(a1 + 4);
  v25 = v3;
  v26 = a1[12];
  v4 = *(a1 + 2);
  v23 = *(a1 + 3);
  v22 = v4;
  v28 = a1[15];
  v27 = *(a1 + 13);
  a1[14] = 0;
  a1[15] = 0;
  a1[13] = 0;
  v5 = *(a1 + 8);
  v30 = *(a1 + 9);
  v29 = v5;
  v6 = *(a1 + 10);
  a1[20] = 0;
  a1[21] = 0;
  v31 = v6;
  do
  {
    v7 = a1[v2 + 31];
    v2 += 22;
  }

  while (v7 < *(&v24 + 1));
  v8 = &a1[v2];
  v9 = &a1[v2 - 22];
  if (v2 == 22)
  {
    while (v8 < a2)
    {
      v10 = a2 - 176;
      v11 = *(a2 - 104);
      a2 -= 176;
      if (v11 < *(&v24 + 1))
      {
        goto LABEL_10;
      }
    }

    v10 = a2;
  }

  else
  {
    do
    {
      v10 = a2 - 176;
      v12 = *(a2 - 104);
      a2 -= 176;
    }

    while (v12 >= *(&v24 + 1));
  }

LABEL_10:
  if (v8 < v10)
  {
    v14 = v8;
    v15 = v10;
    do
    {
      v16 = a1;
      sub_298BDFD3C(v14, v15);
      do
      {
        v17 = v14[31];
        v14 += 22;
      }

      while (v17 < *(&v24 + 1));
      do
      {
        v18 = *(v15 - 104);
        v15 -= 176;
      }

      while (v18 >= *(&v24 + 1));
      a1 = v16;
    }

    while (v14 < v15);
    v9 = v14 - 22;
  }

  if (v9 != a1)
  {
    sub_298BDFE18(a1, v9);
  }

  sub_298BDFE18(v9, &v19);
  sub_298BD76EC(&v19);
  return v9;
}

BOOL sub_298BDFAD8(uint64_t *a1, uint64_t *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_298BDE940(a1, a1 + 22, a2 - 22);
        return 1;
      case 4:
        sub_298BDE9F8(a1, a1 + 22, a1 + 44, (a2 - 22));
        return 1;
      case 5:
        sub_298BDEAA0(a1, a1 + 22, a1 + 44, a1 + 66, (a2 - 22));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      if (*(a2 - 13) < a1[9])
      {
        sub_298BDFD3C(a1, (a2 - 22));
      }

      return 1;
    }
  }

  v5 = a1 + 44;
  sub_298BDE940(a1, a1 + 22, a1 + 44);
  v6 = a1 + 66;
  if (a1 + 66 != a2)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      if (v6[9] < v5[9])
      {
        v17 = *v6;
        v18 = *(v6 + 1);
        v19 = v6[3];
        v6[1] = 0;
        v6[2] = 0;
        v6[3] = 0;
        v10 = *(v6 + 5);
        v22 = *(v6 + 4);
        v23 = v10;
        v24 = v6[12];
        v11 = *(v6 + 2);
        v21 = *(v6 + 3);
        v20 = v11;
        v26 = v6[15];
        v25 = *(v6 + 13);
        v6[14] = 0;
        v6[15] = 0;
        v6[13] = 0;
        v12 = *(v6 + 8);
        v28 = *(v6 + 9);
        v27 = v12;
        v13 = *(v6 + 10);
        v6[20] = 0;
        v6[21] = 0;
        v14 = v8;
        v29 = v13;
        while (1)
        {
          sub_298BDFE18(a1 + v14 + 528, a1 + v14 + 352);
          if (v14 == -352)
          {
            break;
          }

          v15 = *(a1 + v14 + 248);
          v14 -= 176;
          if (*(&v22 + 1) >= v15)
          {
            v16 = a1 + v14 + 528;
            goto LABEL_22;
          }
        }

        v16 = a1;
LABEL_22:
        sub_298BDFE18(v16, &v17);
        if (++v9 == 8)
        {
          sub_298BD76EC(&v17);
          return v6 + 22 == a2;
        }

        sub_298BD76EC(&v17);
      }

      v5 = v6;
      v8 += 176;
      result = 1;
      v6 += 22;
      if (v6 == a2)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_298BDFD3C(uint64_t *a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = a1[3];
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v3 = *(a1 + 5);
  v13 = *(a1 + 4);
  v14 = v3;
  v15 = a1[12];
  v4 = *(a1 + 2);
  v12 = *(a1 + 3);
  v11 = v4;
  v17 = a1[15];
  v16 = *(a1 + 13);
  a1[14] = 0;
  a1[15] = 0;
  a1[13] = 0;
  v5 = *(a1 + 8);
  v19 = *(a1 + 9);
  v18 = v5;
  v6 = *(a1 + 10);
  a1[20] = 0;
  a1[21] = 0;
  v20 = v6;
  sub_298BDFE18(a1, a2);
  sub_298BDFE18(a2, &v8);
  return sub_298BD76EC(&v8);
}

uint64_t sub_298BDFE18(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  v6 = *(a2 + 96);
  v8 = *(a2 + 64);
  v7 = *(a2 + 80);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v8;
  *(a1 + 80) = v7;
  *(a1 + 96) = v6;
  *(a1 + 32) = *(a2 + 32);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v9 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v9;
  *(a2 + 127) = 0;
  *(a2 + 104) = 0;
  v10 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v10;
  v11 = *(a2 + 160);
  *(a2 + 160) = 0;
  v12 = *(a1 + 160);
  *(a1 + 160) = v11;
  if (v12)
  {
    sub_298AEB5EC(a1 + 160, v12);
  }

  v13 = *(a2 + 168);
  *(a2 + 168) = 0;
  v14 = *(a1 + 168);
  *(a1 + 168) = v13;
  if (v14)
  {
    MEMORY[0x29C2945C0](v14, 0x1000C8077774924);
  }

  return a1;
}

void sub_298BDFF14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v35 = *MEMORY[0x29EDCA608];
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v5 = v3 >> 1;
    if ((v3 >> 1) >= 0x2E8BA2E8BA2E8BA3 * ((a3 - a1) >> 4))
    {
      v7 = (0x5D1745D1745D1746 * ((a3 - a1) >> 4)) | 1;
      v8 = a1 + 176 * v7;
      if (0x5D1745D1745D1746 * ((a3 - a1) >> 4) + 2 < a2)
      {
        v9 = *(v8 + 72) >= *(v8 + 248);
        v10 = 176;
        if (*(v8 + 72) >= *(v8 + 248))
        {
          v10 = 0;
        }

        v8 += v10;
        if (!v9)
        {
          v7 = 0x5D1745D1745D1746 * ((a3 - a1) >> 4) + 2;
        }
      }

      if (*(v8 + 72) >= a3[9])
      {
        v22 = *a3;
        *v23 = *(a3 + 1);
        v24 = a3[3];
        a3[1] = 0;
        a3[2] = 0;
        a3[3] = 0;
        v11 = *(a3 + 5);
        v27 = *(a3 + 4);
        v28 = v11;
        v29 = a3[12];
        v12 = *(a3 + 2);
        v26 = *(a3 + 3);
        v25 = v12;
        v31 = a3[15];
        *__p = *(a3 + 13);
        a3[14] = 0;
        a3[15] = 0;
        a3[13] = 0;
        v13 = *(a3 + 8);
        v33 = *(a3 + 9);
        v32 = v13;
        v14 = *(a3 + 10);
        a3[20] = 0;
        a3[21] = 0;
        v34 = v14;
        do
        {
          v15 = v8;
          sub_298BDFE18(a3, v8);
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = a1 + 176 * v16;
          if (2 * v7 + 2 < a2)
          {
            v17 = *(v8 + 72);
            v18 = *(v8 + 248);
            v19 = v17 >= v18;
            v20 = v17 >= v18 ? 0 : 176;
            v8 += v20;
            if (!v19)
            {
              v16 = 2 * v7 + 2;
            }
          }

          a3 = v15;
          v7 = v16;
        }

        while (*(v8 + 72) >= *(&v27 + 1));
        sub_298BDFE18(v15, &v22);
        if (*(&v34 + 1))
        {
          MEMORY[0x29C2945C0](*(&v34 + 1), 0x1000C8077774924);
        }

        v21 = v34;
        if (v34)
        {
          sub_298AE9B00(v34, *(v34 + 8));
          MEMORY[0x29C2945F0](v21, 0x1020C4062D53EE8);
          if ((SHIBYTE(v31) & 0x80000000) == 0)
          {
LABEL_23:
            if ((SHIBYTE(v24) & 0x80000000) == 0)
            {
              return;
            }

LABEL_27:
            operator delete(v23[0]);
            return;
          }
        }

        else if ((SHIBYTE(v31) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        operator delete(__p[0]);
        if (SHIBYTE(v24) < 0)
        {
          goto LABEL_27;
        }
      }
    }
  }
}

void sub_298BE017C(unsigned int *a1)
{
  v2 = a1[2];
  sub_298AEB390(a1);
  if (v2)
  {
    v3 = 1 << (33 - __clz(v2 - 1));
    if (v3 <= 64)
    {
      v4 = 64;
    }

    else
    {
      v4 = v3;
    }

    if (v4 == a1[4])
    {
      *(a1 + 1) = 0;
      v5 = *a1;
      v6 = (v4 - 1) & 0x7FFFFFFFFFFFFFFLL;
      if (v6)
      {
        v7 = v6 + 1;
        v8 = (v6 + 1) & 0xFFFFFFFFFFFFFFELL;
        v9 = (v5 + 32 * v8);
        v10 = (v5 + 32);
        v11 = v8;
        do
        {
          *(v10 - 4) = -4096;
          *v10 = -4096;
          v10 += 8;
          v11 -= 2;
        }

        while (v11);
        if (v7 == v8)
        {
          return;
        }
      }

      else
      {
        v9 = *a1;
      }

      v12 = (v5 + 32 * v4);
      do
      {
        *v9 = -4096;
        v9 += 4;
      }

      while (v9 != v12);
      return;
    }
  }

  else
  {
    if (!a1[4])
    {
      *(a1 + 1) = 0;
      return;
    }

    LODWORD(v4) = 0;
  }

  MEMORY[0x29C2945E0](*a1, 8);

  sub_298BE0284(a1, v4);
}

char *sub_298BE0284(char *result, int a2)
{
  if (a2)
  {
    v2 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    LODWORD(v3) = (((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8)) + 1;
    *(result + 4) = v3;
    v4 = result;
    result = operator new(32 * v3, 8uLL);
    *v4 = result;
    *(v4 + 1) = 0;
    v5 = *(v4 + 4);
    if (v5)
    {
      v6 = 0;
      v7 = v5 + 0x7FFFFFFFFFFFFFFLL;
      v8 = v7 & 0x7FFFFFFFFFFFFFFLL;
      v9 = (v7 & 0x7FFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = result + 32;
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_298D1A120)));
        if (v12.i8[0])
        {
          *(v11 - 4) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 64;
      }

      while (v9 != v6);
    }
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    *(result + 4) = 0;
  }

  return result;
}

void *sub_298BE0370(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v10 = 0;
LABEL_9:
    v5 = sub_298BE04B0(a1, a2, v10);
    v12 = *a2;
    v5[2] = 0;
    v5[3] = 0;
    *v5 = v12;
    v5[1] = 0;
    return v5;
  }

  v3 = v2 - 1;
  v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
  v5 = (*a1 + 32 * v4);
  v6 = *v5;
  if (*a2 != *v5)
  {
    v8 = 0;
    v9 = 1;
    while (v6 != -4096)
    {
      if (v8)
      {
        v13 = 0;
      }

      else
      {
        v13 = v6 == -8192;
      }

      if (v13)
      {
        v8 = v5;
      }

      v14 = v4 + v9++;
      v4 = v14 & v3;
      v5 = (*a1 + 32 * v4);
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5;
      }
    }

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    goto LABEL_9;
  }

  return v5;
}

uint64_t sub_298BE042C(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = (result + 32 * v4);
    v6 = *v5;
    if (*v5 == a3)
    {
LABEL_3:
      *a4 = v5;
    }

    else
    {
      v7 = 0;
      v8 = 1;
      while (v6 != -4096)
      {
        if (v7)
        {
          v9 = 0;
        }

        else
        {
          v9 = v6 == -8192;
        }

        if (v9)
        {
          v7 = v5;
        }

        v10 = v4 + v8++;
        v4 = v10 & (a2 - 1);
        v5 = (result + 32 * v4);
        v6 = *v5;
        if (*v5 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v7)
      {
        v5 = v7;
      }

      *a4 = v5;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *sub_298BE04B0(uint64_t *a1, uint64_t *a2, void *a3)
{
  v9 = a3;
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v7 = a2;
    v5 *= 2;
  }

  else
  {
    if (v5 + ~v4 - *(a1 + 3) > v5 >> 3)
    {
      goto LABEL_3;
    }

    v7 = a2;
  }

  v8 = a1;
  sub_298BE0570(a1, v5);
  sub_298BE042C(*v8, *(v8 + 4), *v7, &v9);
  a1 = v8;
  v4 = *(v8 + 2);
  a3 = v9;
LABEL_3:
  *(a1 + 2) = v4 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 3);
  }

  return a3;
}

void *sub_298BE0570(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(32 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v11 = *(a1 + 4);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &result[4 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 4;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -4096;
        *v13 = -4096;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[4 * v11];
        do
        {
          *v10 = -4096;
          v10 += 4;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v23 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = *(a1 + 4) - 1;
          v25 = v24 & ((v23 >> 4) ^ (v23 >> 9));
          v22 = (*a1 + 32 * v25);
          v26 = *v22;
          if (v23 != *v22)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -4096)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -8192;
              }

              if (v29)
              {
                v27 = v22;
              }

              v30 = v25 + v28++;
              v25 = v30 & v24;
              v22 = (*a1 + 32 * v25);
              v26 = *v22;
              if (v23 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v27)
            {
              v22 = v27;
            }
          }

LABEL_24:
          *v22 = v23;
          v22[1] = 0;
          v22[2] = 0;
          v22[3] = 0;
          *(v22 + 1) = *(v16 + 1);
          v22[3] = v16[3];
          v16[1] = 0;
          v16[2] = 0;
          v16[3] = 0;
          ++*(a1 + 2);
        }

        v16 += 4;
      }

      while (v16 != &v4[4 * v3]);
    }

    JUMPOUT(0x29C2945E0);
  }

  a1[1] = 0;
  v17 = *(a1 + 4);
  if (v17)
  {
    if (((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
    v19 = result + 4;
    v20 = v18 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 4) = -4096;
      *v19 = -4096;
      v19 += 8;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[4 * v17];
      do
      {
        *v10 = -4096;
        v10 += 4;
      }

      while (v10 != v21);
    }
  }

  return result;
}

void *sub_298BE0790(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = (v3 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_298ADDDA0();
  }

  v6 = *(a1 + 16) - v2;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v8 = (8 * (v3 >> 3));
  *v8 = *a2;
  v9 = v8 + 1;
  memcpy(0, v2, v3);
  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

void sub_298BE0880(__int128 *a1, char *a2)
{
  v2 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3));
  if (a2 == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  sub_298BE08B8(a1, a2, v3, 1);
}

void sub_298BE08B8(__int128 *result, char *a2, uint64_t a3, char a4)
{
  v7 = 0x6DB6DB6DB6DB6DB7;
LABEL_2:
  v8 = result;
LABEL_3:
  v9 = 1 - a3;
  while (1)
  {
    result = v8;
    v10 = v9;
    v11 = a2 - v8;
    v12 = ((a2 - v8) >> 3) * v7;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v24 = *(a2 - 7);
        v23 = (a2 - 56);
        if (v24 < *v8)
        {

          sub_298BE2448(v8, v23);
        }

        return;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      sub_298BE0FE8(v8, (v8 + 56), v8 + 7, (a2 - 56));
      return;
    }

    if (v12 == 5)
    {

      sub_298BE1250(v8, (v8 + 56), v8 + 7, (v8 + 168), (a2 - 56));
      return;
    }

LABEL_11:
    if (v11 <= 1343)
    {
      if (a4)
      {

        sub_298BE1564(v8, a2);
      }

      else
      {

        sub_298BE1704(v8, a2);
      }

      return;
    }

    if (v10 == 1)
    {

      sub_298BE1860(v8, a2, a2);
      return;
    }

    v13 = v12 >> 1;
    v14 = (v8 + 56 * (v12 >> 1));
    if (v11 < 0x1C01)
    {
      sub_298BE0C6C(v14, v8, a2 - 7);
    }

    else
    {
      sub_298BE0C6C(v8, v14, a2 - 7);
      v15 = v8 + 56;
      v16 = v7;
      v17 = 56 * v13;
      v18 = result + 7 * v13 - 7;
      sub_298BE0C6C((result + 56), v18, a2 - 14);
      sub_298BE0C6C(result + 7, &v15[v17], a2 - 21);
      v19 = &v15[v17];
      v7 = v16;
      sub_298BE0C6C(v18, v14, v19);
      sub_298BE2448(result, v14);
    }

    if ((a4 & 1) == 0 && *(result - 7) >= *result)
    {
      v8 = sub_298BE1CC8(result, a2);
      goto LABEL_23;
    }

    v20 = sub_298BE1EF0(result, a2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_22;
    }

    v22 = sub_298BE212C(result, v20);
    v8 = (v20 + 56);
    if (sub_298BE212C((v20 + 56), a2))
    {
      a3 = -v10;
      a2 = v20;
      if (v22)
      {
        return;
      }

      goto LABEL_2;
    }

    v9 = v10 + 1;
    if (!v22)
    {
LABEL_22:
      sub_298BE08B8(result, v20, -v10, a4 & 1);
      v8 = (v20 + 56);
LABEL_23:
      a4 = 0;
      a3 = -v10;
      goto LABEL_3;
    }
  }

  sub_298BE0C6C(v8, v8 + 7, a2 - 7);
}

void sub_298BE0C6C(__int128 *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 >= *a1)
  {
    if (v4 < v3)
    {
      v10 = *a2;
      v11 = a2 + 2;
      v12 = a2[2];
      v13 = a2 + 3;
      *v36 = a2[3];
      *&v36[7] = *(a2 + 31);
      v14 = *(a2 + 39);
      a2[2] = 0;
      a2[4] = 0;
      a2[3] = 0;
      v32 = *(a2 + 5);
      *a2 = *a3;
      v15 = a3[4];
      *(a2 + 1) = *(a3 + 1);
      a2[4] = v15;
      *(a3 + 39) = 0;
      *(a3 + 16) = 0;
      *(a2 + 5) = *(a3 + 5);
      *a3 = v10;
      if (*(a3 + 39) < 0)
      {
        v16 = a1;
        v17 = a3;
        v18 = a2;
        operator delete(a3[2]);
        a1 = v16;
        a2 = v18;
        a3 = v17;
      }

      a3[2] = v12;
      a3[3] = *v36;
      *(a3 + 31) = *&v36[7];
      *(a3 + 39) = v14;
      *(a3 + 5) = v32;
      if (*a2 < *a1)
      {
        v19 = *a1;
        v20 = *(a1 + 2);
        *v37 = *(a1 + 3);
        *&v37[7] = *(a1 + 31);
        v21 = *(a1 + 39);
        *(a1 + 24) = 0uLL;
        *(a1 + 2) = 0;
        v33 = *(a1 + 40);
        *a1 = *a2;
        v22 = v11[2];
        a1[1] = *v11;
        *(a1 + 4) = v22;
        *(a2 + 39) = 0;
        *(a2 + 16) = 0;
        *(a1 + 40) = *(a2 + 5);
        *a2 = v19;
        if (*(a2 + 39) < 0)
        {
          v23 = *v11;
          v24 = a2;
          operator delete(v23);
          a2 = v24;
        }

        a2[2] = v20;
        *v13 = *v37;
        *(v13 + 7) = *&v37[7];
        *(a2 + 39) = v21;
        *(a2 + 5) = v33;
      }
    }
  }

  else
  {
    if (v4 < v3)
    {
      v5 = *a1;
      v6 = *(a1 + 2);
      *v35 = *(a1 + 3);
      *&v35[7] = *(a1 + 31);
      v7 = *(a1 + 39);
      *(a1 + 24) = 0uLL;
      *(a1 + 2) = 0;
      v31 = *(a1 + 40);
      *a1 = *a3;
      v8 = a3[4];
      a1[1] = *(a3 + 1);
      *(a1 + 4) = v8;
      *(a3 + 39) = 0;
      *(a3 + 16) = 0;
      *(a1 + 40) = *(a3 + 5);
      *a3 = v5;
      if ((*(a3 + 39) & 0x80000000) == 0)
      {
LABEL_5:
        a3[2] = v6;
        a3[3] = *v35;
        *(a3 + 31) = *&v35[7];
        *(a3 + 39) = v7;
        *(a3 + 5) = v31;
        return;
      }

LABEL_4:
      v9 = a3;
      operator delete(a3[2]);
      a3 = v9;
      goto LABEL_5;
    }

    v25 = *a1;
    v6 = *(a1 + 2);
    *v38 = *(a1 + 3);
    *&v38[7] = *(a1 + 31);
    v7 = *(a1 + 39);
    *(a1 + 24) = 0uLL;
    *(a1 + 2) = 0;
    v34 = *(a1 + 40);
    *a1 = *a2;
    v26 = a2[4];
    a1[1] = *(a2 + 1);
    *(a1 + 4) = v26;
    *(a2 + 39) = 0;
    *(a2 + 16) = 0;
    *(a1 + 40) = *(a2 + 5);
    *a2 = v25;
    if (*(a2 + 39) < 0)
    {
      v27 = a3;
      v28 = a2;
      operator delete(a2[2]);
      a2 = v28;
      a3 = v27;
    }

    a2[2] = v6;
    a2[3] = *v38;
    *(a2 + 31) = *&v38[7];
    *(a2 + 39) = v7;
    *(a2 + 5) = v34;
    if (*a3 < *a2)
    {
      v29 = *a2;
      *v35 = a2[3];
      *&v35[7] = *(a2 + 31);
      a2[3] = 0;
      a2[4] = 0;
      a2[2] = 0;
      v31 = *(a2 + 5);
      *a2 = *a3;
      v30 = a3[4];
      *(a2 + 1) = *(a3 + 1);
      a2[4] = v30;
      *(a3 + 39) = 0;
      *(a3 + 16) = 0;
      *(a2 + 5) = *(a3 + 5);
      *a3 = v29;
      if ((*(a3 + 39) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }
}

void sub_298BE0FE8(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  sub_298BE0C6C(a1, a2, a3);
  if (*a4 < *a3)
  {
    v8 = *a3;
    v9 = (a3 + 1);
    v10 = *(a3 + 2);
    *v25 = *(a3 + 3);
    *&v25[7] = *(a3 + 31);
    v11 = *(a3 + 39);
    *(a3 + 2) = 0;
    *(a3 + 4) = 0;
    *(a3 + 3) = 0;
    v22 = *(a3 + 40);
    *a3 = *a4;
    v12 = *(a4 + 4);
    a3[1] = a4[1];
    *(a3 + 4) = v12;
    *(a4 + 39) = 0;
    *(a4 + 16) = 0;
    *(a3 + 40) = *(a4 + 40);
    *a4 = v8;
    if (*(a4 + 39) < 0)
    {
      operator delete(*(a4 + 2));
    }

    *(a4 + 2) = v10;
    *(a4 + 3) = *v25;
    *(a4 + 31) = *&v25[7];
    *(a4 + 39) = v11;
    *(a4 + 40) = v22;
    if (*a3 < *a2)
    {
      v13 = *a2;
      v14 = (a2 + 1);
      v15 = *(a2 + 2);
      *v26 = *(a2 + 3);
      *&v26[7] = *(a2 + 31);
      v16 = *(a2 + 39);
      *(a2 + 2) = 0;
      *(a2 + 4) = 0;
      *(a2 + 3) = 0;
      v23 = *(a2 + 40);
      *a2 = *a3;
      v17 = *(a3 + 4);
      a2[1] = *v9;
      *(a2 + 4) = v17;
      *(a3 + 39) = 0;
      *(a3 + 16) = 0;
      *(a2 + 40) = *(a3 + 40);
      *a3 = v13;
      if (*(a3 + 39) < 0)
      {
        operator delete(*v9);
      }

      *(a3 + 2) = v15;
      *(a3 + 3) = *v26;
      *(a3 + 31) = *&v26[7];
      *(a3 + 39) = v16;
      *(a3 + 40) = v23;
      if (*a2 < *a1)
      {
        v18 = *a1;
        v19 = *(a1 + 16);
        *v27 = *(a1 + 24);
        *&v27[7] = *(a1 + 31);
        v20 = *(a1 + 39);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 16) = 0;
        v24 = *(a1 + 40);
        *a1 = *a2;
        v21 = *(a2 + 4);
        *(a1 + 16) = *v14;
        *(a1 + 32) = v21;
        *(a2 + 39) = 0;
        *(a2 + 16) = 0;
        *(a1 + 40) = *(a2 + 40);
        *a2 = v18;
        if (*(a2 + 39) < 0)
        {
          operator delete(*v14);
        }

        *(a2 + 2) = v19;
        *(a2 + 3) = *v27;
        *(a2 + 31) = *&v27[7];
        *(a2 + 39) = v20;
        *(a2 + 40) = v24;
      }
    }
  }
}

void sub_298BE1250(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  sub_298BE0FE8(a1, a2, a3, a4);
  if (*a5 < *a4)
  {
    v10 = *a4;
    v11 = (a4 + 1);
    v12 = *(a4 + 2);
    *v33 = *(a4 + 3);
    *&v33[7] = *(a4 + 31);
    v13 = *(a4 + 39);
    *(a4 + 2) = 0;
    *(a4 + 4) = 0;
    *(a4 + 3) = 0;
    v29 = *(a4 + 40);
    *a4 = *a5;
    v14 = *(a5 + 4);
    a4[1] = a5[1];
    *(a4 + 4) = v14;
    *(a5 + 39) = 0;
    *(a5 + 16) = 0;
    *(a4 + 40) = *(a5 + 40);
    *a5 = v10;
    if (*(a5 + 39) < 0)
    {
      operator delete(*(a5 + 2));
    }

    *(a5 + 2) = v12;
    *(a5 + 3) = *v33;
    *(a5 + 31) = *&v33[7];
    *(a5 + 39) = v13;
    *(a5 + 40) = v29;
    if (*a4 < *a3)
    {
      v15 = *a3;
      v16 = (a3 + 1);
      v17 = *(a3 + 2);
      *v34 = *(a3 + 3);
      *&v34[7] = *(a3 + 31);
      v18 = *(a3 + 39);
      *(a3 + 2) = 0;
      *(a3 + 4) = 0;
      *(a3 + 3) = 0;
      v30 = *(a3 + 40);
      *a3 = *a4;
      v19 = *(a4 + 4);
      a3[1] = *v11;
      *(a3 + 4) = v19;
      *(a4 + 39) = 0;
      *(a4 + 16) = 0;
      *(a3 + 40) = *(a4 + 40);
      *a4 = v15;
      if (*(a4 + 39) < 0)
      {
        operator delete(*v11);
      }

      *(a4 + 2) = v17;
      *(a4 + 3) = *v34;
      *(a4 + 31) = *&v34[7];
      *(a4 + 39) = v18;
      *(a4 + 40) = v30;
      if (*a3 < *a2)
      {
        v20 = *a2;
        v21 = (a2 + 1);
        v22 = *(a2 + 2);
        *v35 = *(a2 + 3);
        *&v35[7] = *(a2 + 31);
        v23 = *(a2 + 39);
        *(a2 + 2) = 0;
        *(a2 + 4) = 0;
        *(a2 + 3) = 0;
        v31 = *(a2 + 40);
        *a2 = *a3;
        v24 = *(a3 + 4);
        a2[1] = *v16;
        *(a2 + 4) = v24;
        *(a3 + 39) = 0;
        *(a3 + 16) = 0;
        *(a2 + 40) = *(a3 + 40);
        *a3 = v20;
        if (*(a3 + 39) < 0)
        {
          operator delete(*v16);
        }

        *(a3 + 2) = v22;
        *(a3 + 3) = *v35;
        *(a3 + 31) = *&v35[7];
        *(a3 + 39) = v23;
        *(a3 + 40) = v31;
        if (*a2 < *a1)
        {
          v25 = *a1;
          v26 = *(a1 + 2);
          *v36 = *(a1 + 3);
          *&v36[7] = *(a1 + 31);
          v27 = *(a1 + 39);
          *(a1 + 3) = 0;
          *(a1 + 4) = 0;
          *(a1 + 2) = 0;
          v32 = *(a1 + 40);
          *a1 = *a2;
          v28 = *(a2 + 4);
          a1[1] = *v21;
          *(a1 + 4) = v28;
          *(a2 + 39) = 0;
          *(a2 + 16) = 0;
          *(a1 + 40) = *(a2 + 40);
          *a2 = v25;
          if (*(a2 + 39) < 0)
          {
            operator delete(*v21);
          }

          *(a2 + 2) = v26;
          *(a2 + 3) = *v36;
          *(a2 + 31) = *&v36[7];
          *(a2 + 39) = v27;
          *(a2 + 40) = v32;
        }
      }
    }
  }
}

void sub_298BE1564(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = a1 + 56;
    if (a1 + 56 != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = v4;
        v8 = *(v6 + 56);
        if (v8 < *v6)
        {
          v10 = *(v6 + 64);
          v9 = *(v6 + 72);
          *v19 = *(v6 + 80);
          *&v19[7] = *(v6 + 87);
          v11 = *(v6 + 95);
          *(v6 + 80) = 0;
          *(v6 + 88) = 0;
          *(v6 + 72) = 0;
          v12 = *(v6 + 96);
          v13 = v5;
          v18 = v12;
          while (1)
          {
            v14 = v13;
            v15 = a1 + v13;
            *(a1 + v13 + 56) = *(a1 + v13);
            if (*(a1 + v13 + 95) < 0)
            {
              operator delete(*(v15 + 72));
            }

            *(v15 + 72) = *(v15 + 16);
            *(v15 + 88) = *(v15 + 32);
            *(v15 + 39) = 0;
            *(v15 + 16) = 0;
            *(v15 + 96) = *(v15 + 40);
            if (!v14)
            {
              break;
            }

            v13 = v14 - 56;
            if (v8 >= *(a1 + v14 - 56))
            {
              v16 = a1 + v14;
              *v16 = v8;
              *(v16 + 8) = v10;
              v17 = a1 + v14;
              if ((*(a1 + v13 + 95) & 0x80000000) == 0)
              {
                goto LABEL_4;
              }

              goto LABEL_15;
            }
          }

          v16 = a1;
          *a1 = v8;
          *(a1 + 8) = v10;
          v17 = a1;
          if ((*(a1 + 39) & 0x80000000) == 0)
          {
            goto LABEL_4;
          }

LABEL_15:
          operator delete(*(v17 + 16));
LABEL_4:
          *(v17 + 16) = v9;
          *(v16 + 24) = *v19;
          *(v16 + 31) = *&v19[7];
          *(v16 + 39) = v11;
          *(v17 + 40) = v18;
        }

        v4 = v7 + 56;
        v5 += 56;
        v6 = v7;
      }

      while (v7 + 56 != a2);
    }
  }
}

uint64_t sub_298BE1704(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result + 56;
    if (result + 56 != a2)
    {
      v4 = (result - 56);
      do
      {
        v5 = v3;
        v6 = *(result + 56);
        if (v6 < *result)
        {
          v8 = *(result + 64);
          v7 = *(result + 72);
          *v13 = *(result + 80);
          *&v13[7] = *(result + 87);
          v9 = *(result + 95);
          *(result + 80) = 0;
          *(result + 88) = 0;
          *(result + 72) = 0;
          v10 = v4;
          v12 = *(result + 96);
          do
          {
            *(v10 + 7) = *(v10 + 7);
            if (*(v10 + 151) < 0)
            {
              operator delete(v10[16]);
            }

            *(v10 + 8) = *(v10 + 9);
            v10[18] = v10[11];
            *(v10 + 95) = 0;
            *(v10 + 72) = 0;
            *(v10 + 19) = *(v10 + 6);
            v11 = *v10;
            v10 -= 7;
          }

          while (v6 < v11);
          v10[14] = v6;
          v10[15] = v8;
          if (*(v10 + 151) < 0)
          {
            operator delete(v10[16]);
          }

          v10[16] = v7;
          v10[17] = *v13;
          *(v10 + 143) = *&v13[7];
          *(v10 + 151) = v9;
          *(v10 + 19) = v12;
        }

        v3 = v5 + 56;
        v4 += 7;
        result = v5;
      }

      while (v5 + 56 != a2);
    }
  }

  return result;
}

void sub_298BE1860(char *a1, char *a2, __int128 *a3)
{
  if (a1 != a2)
  {
    v4 = a2;
    v6 = a2 - a1;
    v7 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 57)
    {
      v8 = (v7 - 2) >> 1;
      v9 = v8 + 1;
      v10 = &a1[56 * v8];
      do
      {
        sub_298BE2528(a1, v7, v10);
        v10 -= 7;
        --v9;
      }

      while (v9);
    }

    if (v4 != a3)
    {
      v11 = v4;
      do
      {
        if (*v11 < *a1)
        {
          v12 = *v11;
          v13 = *(v11 + 2);
          *v41 = *(v11 + 3);
          *&v41[7] = *(v11 + 31);
          v14 = *(v11 + 39);
          *(v11 + 3) = 0;
          *(v11 + 4) = 0;
          *(v11 + 2) = 0;
          v38 = *(v11 + 40);
          *v11 = *a1;
          v15 = *(a1 + 4);
          v11[1] = *(a1 + 1);
          *(v11 + 4) = v15;
          a1[39] = 0;
          a1[16] = 0;
          *(v11 + 40) = *(a1 + 40);
          *a1 = v12;
          if (a1[39] < 0)
          {
            operator delete(*(a1 + 2));
          }

          *(a1 + 2) = v13;
          *(a1 + 3) = *v41;
          *(a1 + 31) = *&v41[7];
          a1[39] = v14;
          *(a1 + 40) = v38;
          sub_298BE2528(a1, v7, a1);
        }

        v11 = (v11 + 56);
      }

      while (v11 != a3);
    }

    if (v6 >= 57)
    {
      v16 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
      do
      {
        v18 = 0;
        v19 = v4;
        v39 = *a1;
        v20 = *(a1 + 2);
        *v43 = *(a1 + 3);
        *&v43[7] = *(a1 + 31);
        v21 = a1[39];
        *(a1 + 3) = 0;
        *(a1 + 4) = 0;
        *(a1 + 2) = 0;
        v22 = a1;
        v42 = *(a1 + 40);
        do
        {
          v24 = &v22[56 * v18];
          v25 = v24 + 56;
          if (2 * v18 + 2 >= v16)
          {
            v18 = (2 * v18) | 1;
            *v22 = *v25;
            if ((v22[39] & 0x80000000) == 0)
            {
              goto LABEL_19;
            }

LABEL_27:
            operator delete(*(v22 + 2));
            goto LABEL_19;
          }

          v27 = *(v24 + 14);
          v26 = v24 + 112;
          if (*(v26 - 7) >= v27)
          {
            v18 = (2 * v18) | 1;
          }

          else
          {
            v25 = v26;
            v18 = 2 * v18 + 2;
          }

          *v22 = *v25;
          if (v22[39] < 0)
          {
            goto LABEL_27;
          }

LABEL_19:
          v23 = *(v25 + 1);
          *(v22 + 4) = *(v25 + 4);
          *(v22 + 1) = v23;
          v25[39] = 0;
          v25[16] = 0;
          *(v22 + 40) = *(v25 + 40);
          v22 = v25;
        }

        while (v18 <= ((v16 - 2) >> 1));
        v4 = (v4 - 56);
        if (v25 == v19 - 56)
        {
          *v25 = v39;
          if (v25[39] < 0)
          {
            operator delete(*(v25 + 2));
          }

          *(v25 + 2) = v20;
          *(v25 + 3) = *v43;
          *(v25 + 31) = *&v43[7];
          v25[39] = v21;
          *(v25 + 40) = v42;
        }

        else
        {
          *v25 = *v4;
          if (v25[39] < 0)
          {
            operator delete(*(v25 + 2));
          }

          v28 = *(v19 - 40);
          *(v25 + 4) = *(v19 - 3);
          *(v25 + 1) = v28;
          *(v19 - 17) = 0;
          *(v19 - 40) = 0;
          *(v25 + 40) = *(v19 - 1);
          *v4 = v39;
          if (*(v19 - 17) < 0)
          {
            operator delete(*(v19 - 5));
          }

          *(v19 - 5) = v20;
          *(v19 - 4) = *v43;
          *(v19 - 25) = *&v43[7];
          *(v19 - 17) = v21;
          *(v19 - 1) = v42;
          v29 = v25 + 56 - a1;
          if (v29 >= 57)
          {
            v30 = (0x6DB6DB6DB6DB6DB7 * (v29 >> 3) - 2) >> 1;
            v31 = &a1[56 * v30];
            v32 = *v25;
            if (*v31 < *v25)
            {
              v33 = *(v25 + 1);
              v37 = *(v25 + 2);
              *v44 = *(v25 + 3);
              *&v44[7] = *(v25 + 31);
              v34 = v25[39];
              *(v25 + 3) = 0;
              *(v25 + 4) = 0;
              *(v25 + 2) = 0;
              v40 = *(v25 + 40);
              do
              {
                v35 = v31;
                *v25 = *v31;
                if (v25[39] < 0)
                {
                  operator delete(*(v25 + 2));
                }

                v36 = v35[1];
                *(v25 + 4) = *(v35 + 4);
                *(v25 + 1) = v36;
                *(v35 + 39) = 0;
                *(v35 + 16) = 0;
                *(v25 + 40) = *(v35 + 40);
                if (!v30)
                {
                  break;
                }

                v30 = (v30 - 1) >> 1;
                v31 = &a1[56 * v30];
                v25 = v35;
              }

              while (*v31 < v32);
              *v35 = v32;
              *(v35 + 1) = v33;
              if (*(v35 + 39) < 0)
              {
                operator delete(*(v35 + 2));
              }

              *(v35 + 2) = v37;
              *(v35 + 3) = *v44;
              *(v35 + 31) = *&v44[7];
              *(v35 + 39) = v34;
              *(v35 + 40) = v40;
            }
          }
        }
      }

      while (v16-- > 2);
    }
  }
}

__int128 *sub_298BE1CC8(__int128 *a1, unint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  v6 = a1 + 1;
  v5 = *(a1 + 2);
  *v24 = *(a1 + 3);
  *&v24[7] = *(a1 + 31);
  v7 = *(a1 + 39);
  *(a1 + 24) = 0uLL;
  *(a1 + 2) = 0;
  v21 = v4;
  v22 = *(a1 + 40);
  v8 = v4;
  if (v4 >= *(a2 - 56))
  {
    v11 = (a1 + 56);
    do
    {
      v9 = v11;
      if (v11 >= a2)
      {
        break;
      }

      v11 = (v11 + 56);
    }

    while (v4 >= *v9);
  }

  else
  {
    v9 = a1;
    do
    {
      v10 = *(v9 + 7);
      v9 = (v9 + 56);
    }

    while (v4 >= v10);
  }

  if (v9 < a2)
  {
    do
    {
      v12 = *(v2 - 56);
      v2 -= 56;
    }

    while (v4 < v12);
  }

  while (v9 < v2)
  {
    v13 = *v9;
    v14 = *(v9 + 2);
    *v25 = *(v9 + 3);
    *&v25[7] = *(v9 + 31);
    v15 = *(v9 + 39);
    *(v9 + 3) = 0;
    *(v9 + 4) = 0;
    *(v9 + 2) = 0;
    v23 = *(v9 + 40);
    *v9 = *v2;
    v16 = *(v2 + 32);
    v9[1] = *(v2 + 16);
    *(v9 + 4) = v16;
    *(v2 + 39) = 0;
    *(v2 + 16) = 0;
    *(v9 + 40) = *(v2 + 40);
    *v2 = v13;
    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    *(v2 + 16) = v14;
    *(v2 + 24) = *v25;
    *(v2 + 31) = *&v25[7];
    *(v2 + 39) = v15;
    *(v2 + 40) = v23;
    do
    {
      v17 = *(v9 + 7);
      v9 = (v9 + 56);
    }

    while (v8 >= v17);
    do
    {
      v18 = *(v2 - 56);
      v2 -= 56;
    }

    while (v8 < v18);
  }

  if ((v9 - 56) != a1)
  {
    *a1 = *(v9 - 56);
    if (*(a1 + 39) < 0)
    {
      operator delete(*v6);
    }

    v19 = *(v9 - 40);
    *(v6 + 2) = *(v9 - 3);
    *v6 = v19;
    *(v9 - 17) = 0;
    *(v9 - 40) = 0;
    *(a1 + 40) = *(v9 - 1);
  }

  *(v9 - 56) = v21;
  if (*(v9 - 17) < 0)
  {
    operator delete(*(v9 - 5));
  }

  *(v9 - 5) = v5;
  *(v9 - 25) = *&v24[7];
  *(v9 - 4) = *v24;
  *(v9 - 17) = v7;
  *(v9 - 1) = v22;
  return v9;
}

char *sub_298BE1EF0(char *a1, unint64_t a2)
{
  v4 = 0;
  v5 = (a1 + 16);
  v24 = *(a1 + 2);
  v6 = *a1;
  *v27 = *(a1 + 3);
  *&v27[7] = *(a1 + 31);
  v7 = a1[39];
  *(a1 + 24) = 0uLL;
  *(a1 + 2) = 0;
  v25 = *(a1 + 40);
  v23 = v6;
  v8 = v6;
  do
  {
    v9 = *&a1[v4 + 56];
    v4 += 56;
  }

  while (v9 < v6);
  v10 = &a1[v4];
  if (v4 == 56)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v12 = *(a2 - 56);
      a2 -= 56;
    }

    while (v12 >= v6);
  }

  else
  {
    do
    {
      v11 = *(a2 - 56);
      a2 -= 56;
    }

    while (v11 >= v6);
  }

  v13 = &a1[v4];
  if (v10 < a2)
  {
    v14 = a2;
    do
    {
      v15 = *v13;
      v16 = *(v13 + 2);
      *v28 = *(v13 + 3);
      *&v28[7] = *(v13 + 31);
      v17 = v13[39];
      *(v13 + 3) = 0;
      *(v13 + 4) = 0;
      *(v13 + 2) = 0;
      v26 = *(v13 + 40);
      *v13 = *v14;
      v18 = *(v14 + 32);
      *(v13 + 1) = *(v14 + 16);
      *(v13 + 4) = v18;
      *(v14 + 39) = 0;
      *(v14 + 16) = 0;
      *(v13 + 40) = *(v14 + 40);
      *v14 = v15;
      if (*(v14 + 39) < 0)
      {
        operator delete(*(v14 + 16));
      }

      *(v14 + 16) = v16;
      *(v14 + 24) = *v28;
      *(v14 + 31) = *&v28[7];
      *(v14 + 39) = v17;
      *(v14 + 40) = v26;
      do
      {
        v19 = *(v13 + 7);
        v13 += 56;
      }

      while (v19 < v8);
      do
      {
        v20 = *(v14 - 56);
        v14 -= 56;
      }

      while (v20 >= v8);
    }

    while (v13 < v14);
  }

  if (v13 - 56 != a1)
  {
    *a1 = *(v13 - 56);
    if (a1[39] < 0)
    {
      operator delete(*v5);
    }

    v21 = *(v13 - 40);
    *(v5 + 2) = *(v13 - 3);
    *v5 = v21;
    *(v13 - 17) = 0;
    *(v13 - 40) = 0;
    *(a1 + 40) = *(v13 - 1);
  }

  *(v13 - 56) = v23;
  if (*(v13 - 17) < 0)
  {
    operator delete(*(v13 - 5));
  }

  *(v13 - 5) = v24;
  *(v13 - 25) = *&v27[7];
  *(v13 - 4) = *v27;
  *(v13 - 17) = v7;
  *(v13 - 1) = v25;
  return v13 - 56;
}

BOOL sub_298BE212C(uint64_t a1, uint64_t *a2)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = (a2 - 7);
        if (*(a2 - 7) < *a1)
        {
          v6 = *a1;
          v7 = *(a1 + 16);
          *v27 = *(a1 + 24);
          *&v27[7] = *(a1 + 31);
          v8 = *(a1 + 39);
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 16) = 0;
          v25 = *(a1 + 40);
          *a1 = *v5;
          v9 = *(a2 - 3);
          *(a1 + 16) = *(a2 - 5);
          *(a1 + 32) = v9;
          *(a2 - 17) = 0;
          *(a2 - 40) = 0;
          *(a1 + 40) = *(a2 - 1);
          *v5 = v6;
          if (*(a2 - 17) < 0)
          {
            operator delete(*(a2 - 5));
          }

          *(a2 - 5) = v7;
          *(a2 - 4) = *v27;
          *(a2 - 25) = *&v27[7];
          *(a2 - 17) = v8;
          *(a2 - 1) = v25;
        }

        return 1;
      }

      goto LABEL_13;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_298BE0C6C(a1, (a1 + 56), a2 - 7);
      return 1;
    case 4:
      sub_298BE0FE8(a1, (a1 + 56), (a1 + 112), (a2 - 7));
      return 1;
    case 5:
      sub_298BE1250(a1, (a1 + 56), (a1 + 112), (a1 + 168), (a2 - 7));
      return 1;
  }

LABEL_13:
  v10 = (a1 + 112);
  sub_298BE0C6C(a1, (a1 + 56), (a1 + 112));
  v11 = (a1 + 168);
  if ((a1 + 168) == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v11;
    if (*v11 < *v10)
    {
      v15 = v11[1];
      v23 = v11[2];
      *v26 = v11[3];
      *&v26[7] = *(v11 + 31);
      v16 = *(v11 + 39);
      v11[3] = 0;
      v11[4] = 0;
      v11[2] = 0;
      v17 = v12;
      v24 = *(v11 + 5);
      while (1)
      {
        v18 = v17;
        v19 = a1 + v17;
        *(a1 + v17 + 168) = *(a1 + v17 + 112);
        if (*(a1 + v17 + 207) < 0)
        {
          operator delete(*(v19 + 184));
        }

        *(v19 + 184) = *(v19 + 128);
        *(v19 + 200) = *(v19 + 144);
        *(v19 + 151) = 0;
        *(v19 + 128) = 0;
        *(v19 + 208) = *(v19 + 152);
        if (v18 == -112)
        {
          break;
        }

        v17 = v18 - 56;
        if (v14 >= *(a1 + v18 + 56))
        {
          v20 = a1 + v17 + 168;
          *v20 = v14;
          *(v20 + 8) = v15;
          v21 = a1 + v18;
          if ((*(a1 + v17 + 207) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_26;
        }
      }

      v20 = a1;
      *a1 = v14;
      *(a1 + 8) = v15;
      v21 = a1 - 112;
      if ((*(a1 + 39) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_26:
      operator delete(*(v21 + 128));
LABEL_15:
      *(v21 + 128) = v23;
      *(v20 + 24) = *v26;
      *(v20 + 31) = *&v26[7];
      *(v20 + 39) = v16;
      *(v21 + 152) = v24;
      if (++v13 == 8)
      {
        return v11 + 7 == a2;
      }
    }

    v10 = v11;
    v12 += 56;
    v11 += 7;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

__n128 sub_298BE2448(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  *v9 = *(a1 + 3);
  *&v9[7] = *(a1 + 31);
  v5 = *(a1 + 39);
  *(a1 + 24) = 0uLL;
  *(a1 + 2) = 0;
  v8 = *(a1 + 40);
  *a1 = *a2;
  v6 = *(a2 + 4);
  a1[1] = a2[1];
  *(a1 + 4) = v6;
  *(a2 + 39) = 0;
  *(a2 + 16) = 0;
  *(a1 + 40) = *(a2 + 40);
  *a2 = v3;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 2));
  }

  *(a2 + 2) = v4;
  *(a2 + 3) = *v9;
  *(a2 + 31) = *&v9[7];
  *(a2 + 39) = v5;
  result = v8;
  *(a2 + 40) = v8;
  return result;
}

void sub_298BE2528(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = a2 - 2;
  if (a2 < 2)
  {
    return;
  }

  v4 = a3;
  v6 = v3 >> 1;
  if ((v3 >> 1) < 0x6DB6DB6DB6DB6DB7 * ((a3 - a1) >> 3))
  {
    return;
  }

  v8 = (0xDB6DB6DB6DB6DB6ELL * ((a3 - a1) >> 3)) | 1;
  v9 = (a1 + 56 * v8);
  if ((0xDB6DB6DB6DB6DB6ELL * ((a3 - a1) >> 3) + 2) >= a2)
  {
    v12 = *a3;
    if (*v9 < *a3)
    {
      return;
    }
  }

  else
  {
    v10 = *v9;
    v11 = v9[7];
    if (*v9 <= v11)
    {
      v10 = v9[7];
    }

    if (*v9 < v11)
    {
      v9 += 7;
      v8 = 0xDB6DB6DB6DB6DB6ELL * ((a3 - a1) >> 3) + 2;
    }

    v12 = *a3;
    if (v10 < *a3)
    {
      return;
    }
  }

  v13 = a3[1];
  v19 = a3[2];
  *v21 = a3[3];
  *&v21[7] = *(a3 + 31);
  v14 = *(a3 + 39);
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = 0;
  v20 = *(a3 + 5);
  while (1)
  {
    v17 = v9;
    *v4 = *v9;
    if (*(v4 + 39) < 0)
    {
      operator delete(v4[2]);
    }

    v18 = *(v17 + 1);
    v4[4] = v17[4];
    *(v4 + 1) = v18;
    *(v17 + 39) = 0;
    *(v17 + 16) = 0;
    *(v4 + 5) = *(v17 + 5);
    if (v6 < v8)
    {
      break;
    }

    v9 = (a1 + 56 * ((2 * v8) | 1));
    if (2 * v8 + 2 < a2)
    {
      v15 = *v9;
      v16 = v9[7];
      if (*v9 <= v16)
      {
        v15 = v9[7];
      }

      if (*v9 >= v16)
      {
        v8 = (2 * v8) | 1;
      }

      else
      {
        v9 += 7;
        v8 = 2 * v8 + 2;
      }

      v4 = v17;
      if (v15 < v12)
      {
        break;
      }
    }

    else
    {
      v8 = (2 * v8) | 1;
      v4 = v17;
      if (*v9 < v12)
      {
        break;
      }
    }
  }

  *v17 = v12;
  v17[1] = v13;
  if (*(v17 + 39) < 0)
  {
    operator delete(v17[2]);
  }

  v17[2] = v19;
  v17[3] = *v21;
  *(v17 + 31) = *&v21[7];
  *(v17 + 39) = v14;
  *(v17 + 5) = v20;
}

void sub_298BE2734(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_298AEB438(a1, *(a1 + 16));
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

void *sub_298BE2790(float *a1, unint64_t a2, void **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_15;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] <= 1uLL)
  {
    v8 = (*&v6 - 1) & v5;
    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_15:
    operator new();
  }

  v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  if (v5 >= *&v6)
  {
    v8 = v5 % *&v6;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_6:
  result = *v9;
  if (!*v9)
  {
    goto LABEL_15;
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = result[1];
      if (v12 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_15;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v11 = result[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_15;
    }

LABEL_10:
    result = *result;
    if (!result)
    {
      goto LABEL_15;
    }
  }

  if (result[2] != a2)
  {
    goto LABEL_10;
  }

  return result;
}

std::mutex **sub_298BE2C88(std::mutex **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    std::mutex::~mutex(v2);
    MEMORY[0x29C2945F0]();
    return v3;
  }

  return v1;
}

double sub_298BE2CDC(char **a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_298ADDDA0();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  sub_298BE2DB4(&v14, v7, v2, a1);
  *v16 = *a2;
  *&v16 = v16 + 8;
  v8 = a1[1] - *a1;
  v9 = &v15[-v8];
  memcpy(&v15[-v8], *a1, v8);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  result = *&v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  if (v10)
  {
    v13 = result;
    operator delete(v10);
    return v13;
  }

  return result;
}

uint64_t *sub_298BE2DB4(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  *a1 = 0;
  a1[1] = 8 * a3;
  a1[2] = 8 * a3;
  a1[3] = 0;
  return a1;
}

void sub_298BE2E2C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v1 < 3uLL || (v3 = vcnt_s8(v1), v3.i16[0] = vaddlv_u8(v3), v3.u32[0] > 1uLL))
    {
      v6 = a1;
      prime = std::__next_prime(v2);
      a1 = v6;
    }

    else
    {
      v4 = 1 << -__clz(v2 - 1);
      if (v2 >= 2)
      {
        prime = v4;
      }

      else
      {
        prime = v2;
      }
    }

    if (prime < *&v1)
    {

      sub_298AE8270(a1, prime);
    }
  }
}

uint64_t sub_298BE2EF4(uint64_t a1)
{
  v1 = 152;
  if (*(a1 + 8))
  {
    v1 = 144;
  }

  return *(*(a1 + 16) + v1);
}

uint64_t sub_298BE2F30(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4 = *(v1 + 8);
  v2 = v1 + 8;
  v3 = v4;
  if (*(v2 + 23) >= 0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_298BE2F54(int64_t a1, unsigned __int8 **a2)
{
  v2 = 126 - 2 * __clz((a2 - a1) >> 3);
  if (a2 == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return sub_298BE2F78(a1, a2, v3, 1);
}

int64_t sub_298BE2F78(int64_t result, unsigned __int8 **a2, uint64_t a3, int a4)
{
LABEL_1:
  v5 = 1 - a3;
  while (1)
  {
    v6 = v5;
    v7 = (a2 - result) >> 3;
    if (v7 <= 2)
    {
      if (v7 < 2)
      {
        return result;
      }

      if (v7 == 2)
      {
        v15 = result;
        result = sub_298BE4564(*(a2 - 1), *result);
        if (result)
        {
          v16 = *v15;
          *v15 = *(a2 - 1);
          *(a2 - 1) = v16;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v7 == 3)
    {
      break;
    }

    if (v7 == 4)
    {

      return sub_298BE3480(result, (result + 8), (result + 16), a2 - 1);
    }

    if (v7 == 5)
    {

      return sub_298BE3518(result, (result + 8), (result + 16), (result + 24), a2 - 1);
    }

LABEL_9:
    if (v7 <= 23)
    {
      if (a4)
      {

        return sub_298BE363C(result, a2);
      }

      else
      {

        return sub_298BE383C(result, a2);
      }
    }

    if (v6 == 1)
    {

      return sub_298BE39FC(result, a2, a2);
    }

    v18 = a4;
    v8 = v7 >> 1;
    v9 = (result + 8 * (v7 >> 1));
    v10 = result;
    if (v7 < 0x81)
    {
      sub_298BE32E4((result + 8 * (v7 >> 1)), result, a2 - 1);
    }

    else
    {
      sub_298BE32E4(result, (result + 8 * (v7 >> 1)), a2 - 1);
      sub_298BE32E4(v10 + 1, v9 - 1, a2 - 2);
      sub_298BE32E4(v10 + 2, &v10[v8 + 1], a2 - 3);
      sub_298BE32E4(v9 - 1, v9, &v10[v8 + 1]);
      v11 = *v10;
      *v10 = *v9;
      *v9 = v11;
    }

    if ((v18 & 1) == 0 && !sub_298BE4564(*(v10 - 1), *v10))
    {
      result = sub_298BE3E08(v10, a2);
      goto LABEL_17;
    }

    v12 = v10;
    v13 = sub_298BE4104(v10, a2);
    LOBYTE(a4) = v18;
    if ((v14 & 1) == 0)
    {
      goto LABEL_16;
    }

    v17 = sub_298BE4344(v12, v13);
    if (sub_298BE4344(v13 + 1, a2))
    {
      a3 = -v6;
      a2 = v13;
      result = v12;
      a4 = v18;
      if (v17)
      {
        return result;
      }

      goto LABEL_1;
    }

    v5 = v6 + 1;
    a4 = v18;
    result = (v13 + 1);
    if (!v17)
    {
LABEL_16:
      sub_298BE2F78(v12, v13, -v6, a4 & 1);
      result = (v13 + 1);
LABEL_17:
      a4 = 0;
      a3 = -v6;
      goto LABEL_1;
    }
  }

  return sub_298BE32E4(result, (result + 8), a2 - 1);
}

unint64_t sub_298BE32E4(unsigned __int8 **a1, unsigned __int8 **a2, unsigned __int8 **a3)
{
  v6 = sub_298BE4564(*a2, *a1);
  v7 = *a3;
  v8 = *a2;
  if (v6)
  {
    result = sub_298BE4564(*a3, *a2);
    v14 = *a1;
    if (result)
    {
      *a1 = *a3;
      *a3 = v14;
    }

    else
    {
      *a1 = *a2;
      *a2 = v14;
      result = sub_298BE4564(*a3, v14);
      if (result)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else
  {
    v9 = (*(*v7 + 16))(*a3);
    result = (*(*v8 + 16))(v8);
    if (v9 == result)
    {
      if (v7[8] >= v8[8])
      {
        return result;
      }
    }

    else
    {
      v11 = (*(*v7 + 16))(v7);
      result = (*(*v8 + 16))(v8);
      if (v11 >= result)
      {
        return result;
      }
    }

    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    result = sub_298BE4564(*a2, *a1);
    if (result)
    {
      v13 = *a1;
      *a1 = *a2;
      *a2 = v13;
    }
  }

  return result;
}

BOOL sub_298BE3480(unsigned __int8 **a1, unsigned __int8 **a2, unsigned __int8 **a3, unsigned __int8 **a4)
{
  sub_298BE32E4(a1, a2, a3);
  result = sub_298BE4564(*a4, *a3);
  if (result)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    result = sub_298BE4564(*a3, *a2);
    if (result)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      result = sub_298BE4564(*a2, *a1);
      if (result)
      {
        v11 = *a1;
        *a1 = *a2;
        *a2 = v11;
      }
    }
  }

  return result;
}

BOOL sub_298BE3518(unsigned __int8 **a1, unsigned __int8 **a2, unsigned __int8 **a3, unsigned __int8 **a4, unsigned __int8 **a5)
{
  sub_298BE32E4(a1, a2, a3);
  if (sub_298BE4564(*a4, *a3))
  {
    v10 = *a3;
    *a3 = *a4;
    *a4 = v10;
    if (sub_298BE4564(*a3, *a2))
    {
      v11 = *a2;
      *a2 = *a3;
      *a3 = v11;
      if (sub_298BE4564(*a2, *a1))
      {
        v12 = *a1;
        *a1 = *a2;
        *a2 = v12;
      }
    }
  }

  result = sub_298BE4564(*a5, *a4);
  if (result)
  {
    v14 = *a4;
    *a4 = *a5;
    *a5 = v14;
    result = sub_298BE4564(*a4, *a3);
    if (result)
    {
      v15 = *a3;
      *a3 = *a4;
      *a4 = v15;
      result = sub_298BE4564(*a3, *a2);
      if (result)
      {
        v16 = *a2;
        *a2 = *a3;
        *a3 = v16;
        result = sub_298BE4564(*a2, *a1);
        if (result)
        {
          v17 = *a1;
          *a1 = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

uint64_t sub_298BE363C(uint64_t result, unsigned __int8 **a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = result;
  v4 = result + 8;
  if ((result + 8) == a2)
  {
    return result;
  }

  v5 = 0;
  v6 = result;
  while (2)
  {
    v7 = v6;
    v6 = v4;
    result = sub_298BE4564(v7[1], *v7);
    if (!result)
    {
      goto LABEL_7;
    }

    v8 = 0;
    v9 = *v6;
    *v6 = 0;
    for (i = v5; ; i -= 8)
    {
      v11 = (v3 + i);
      v12 = *(v3 + i);
      *v11 = 0;
      v11[1] = v12;
      if (v8)
      {
        (*(*v8 + 8))(v8);
        if (!i)
        {
LABEL_4:
          v7 = v3;
          goto LABEL_5;
        }
      }

      else if (!i)
      {
        goto LABEL_4;
      }

      v13 = *(v3 + i - 8);
      v14 = (*(*v9 + 16))(v9);
      if (v14 != (*(*v13 + 16))(v13))
      {
        break;
      }

      if (v9[8] >= v13[8])
      {
        goto LABEL_5;
      }

LABEL_11:
      --v7;
      v8 = *v11;
    }

    v15 = (*(*v9 + 16))(v9);
    if (v15 < (*(*v13 + 16))(v13))
    {
      goto LABEL_11;
    }

    v7 = (v3 + i);
LABEL_5:
    result = *v7;
    *v7 = v9;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

LABEL_7:
    v4 = v6 + 8;
    v5 += 8;
    if ((v6 + 8) != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_298BE383C(uint64_t result, unsigned __int8 **a2)
{
  if (result != a2)
  {
    v3 = result;
    while (1)
    {
      do
      {
        if ((v3 + 8) == a2)
        {
          return result;
        }

        v4 = v3;
        v3 += 8;
        result = sub_298BE4564(v4[1], *v4);
      }

      while (!result);
      v5 = 0;
      v6 = *v3;
      *v3 = 0;
      while (1)
      {
        v7 = *v4;
        *v4 = 0;
        v4[1] = v7;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }

        v8 = *(v4 - 1);
        v9 = (*(*v6 + 16))(v6);
        if (v9 != (*(*v8 + 16))(v8))
        {
          break;
        }

        if (v6[8] >= v8[8])
        {
          goto LABEL_3;
        }

LABEL_9:
        v5 = *v4--;
      }

      v10 = (*(*v6 + 16))(v6);
      if (v10 < (*(*v8 + 16))(v8))
      {
        goto LABEL_9;
      }

LABEL_3:
      result = *v4;
      *v4 = v6;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t sub_298BE39FC(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v4 = a2;
    v5 = result;
    v6 = (a2 - result) >> 3;
    if (v6 >= 2)
    {
      v7 = (v6 - 2) >> 1;
      v8 = v7 + 1;
      v9 = (result + 8 * v7);
      do
      {
        result = sub_298BE4654(v5, v6, v9--);
        --v8;
      }

      while (v8);
    }

    if (v4 != a3)
    {
      v10 = v4;
      do
      {
        result = sub_298BE4564(*v10, *v5);
        if (result)
        {
          v11 = *v10;
          *v10 = *v5;
          *v5 = v11;
          result = sub_298BE4654(v5, v6, v5);
        }

        ++v10;
      }

      while (v10 != a3);
    }

    if (v6 >= 2)
    {
      v40 = v5;
      do
      {
        v13 = 0;
        v41 = *v5;
        v42 = v4;
        *v5 = 0;
        v14 = v5;
        do
        {
          v15 = &v14[v13];
          v16 = v15 + 1;
          v17 = (2 * v13) | 1;
          v13 = 2 * v13 + 2;
          if (v13 >= v6)
          {
            v13 = v17;
            v28 = *v16;
            *v16 = 0;
            v27 = *v14;
            *v14 = v28;
            if (v27)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v20 = v15[2];
            v18 = v15 + 2;
            v19 = v20;
            v21 = *(v18 - 1);
            v22 = (*(*v21 + 16))(v21);
            if (v22 == (*(*v19 + 16))(v19))
            {
              v24 = v21[8] >= v19[8];
            }

            else
            {
              v23 = (*(*v21 + 16))(v21);
              v24 = v23 >= (*(*v19 + 16))(v19);
            }

            if (!v24)
            {
              v16 = v18;
            }

            else
            {
              v13 = v17;
            }

            v26 = *v16;
            *v16 = 0;
            v27 = *v14;
            *v14 = v26;
            if (v27)
            {
LABEL_25:
              (*(*v27 + 8))(v27);
            }
          }

          v14 = v16;
        }

        while (v13 <= ((v6 - 2) >> 1));
        v4 = v42 - 1;
        if (v16 == (v42 - 1))
        {
          result = *v16;
          v5 = v40;
          *v16 = v41;
          if (result)
          {
            goto LABEL_43;
          }

          goto LABEL_13;
        }

        v29 = *v4;
        *v4 = 0;
        v30 = *v16;
        *v16 = v29;
        v5 = v40;
        if (v30)
        {
          (*(*v30 + 8))(v30);
          result = *v4;
          *v4 = v41;
          if (!result)
          {
            goto LABEL_33;
          }
        }

        else
        {
          result = *v4;
          *v4 = v41;
          if (!result)
          {
LABEL_33:
            v31 = v16 + 1 - v40;
            v12 = v31 < 2;
            v32 = v31 - 2;
            if (v12)
            {
              goto LABEL_13;
            }

            goto LABEL_34;
          }
        }

        result = (*(*result + 8))(result);
        v39 = v16 + 1 - v40;
        v12 = v39 < 2;
        v32 = v39 - 2;
        if (v12)
        {
          goto LABEL_13;
        }

LABEL_34:
        v33 = v32 >> 1;
        v34 = &v40[v32 >> 1];
        result = sub_298BE4564(*v34, *v16);
        if (!result)
        {
          goto LABEL_13;
        }

        v35 = *v16;
        *v16 = 0;
        while (2)
        {
          v36 = v34;
          v37 = *v34;
          *v34 = 0;
          v38 = *v16;
          *v16 = v37;
          if (!v38)
          {
            if (!v33)
            {
              goto LABEL_12;
            }

LABEL_38:
            v33 = (v33 - 1) >> 1;
            v34 = &v40[v33];
            v16 = v36;
            if (!sub_298BE4564(*v34, v35))
            {
              goto LABEL_12;
            }

            continue;
          }

          break;
        }

        (*(*v38 + 8))(v38);
        if (v33)
        {
          goto LABEL_38;
        }

LABEL_12:
        result = *v36;
        *v36 = v35;
        if (!result)
        {
          goto LABEL_13;
        }

LABEL_43:
        result = (*(*result + 8))(result);
LABEL_13:
        v12 = v6-- <= 2;
      }

      while (!v12);
    }
  }

  return result;
}

unsigned __int8 **sub_298BE3E08(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = a2;
  v4 = *a1;
  *a1 = 0;
  if (sub_298BE4564(v4, *(a2 - 1)))
  {
    v5 = a1;
    do
    {
      v6 = v5[1];
      ++v5;
    }

    while (!sub_298BE4564(v4, v6));
  }

  else
  {
    v7 = a1 + 1;
    do
    {
      v5 = v7;
      if (v7 >= v2)
      {
        break;
      }

      ++v7;
    }

    while (!sub_298BE4564(v4, *v5));
  }

  if (v5 < v2)
  {
    do
    {
      v8 = *--v2;
    }

    while (sub_298BE4564(v4, v8));
  }

LABEL_20:
  while (v5 < v2)
  {
    v9 = *v5;
    *v5++ = *v2;
    *v2 = v9;
    while (1)
    {
      v10 = *v5;
      v11 = (*(*v4 + 16))(v4);
      if (v11 != (*(*v10 + 16))(v10))
      {
        break;
      }

      if (v4[8] < v10[8])
      {
        goto LABEL_18;
      }

LABEL_13:
      ++v5;
    }

    v12 = (*(*v4 + 16))(v4);
    if (v12 >= (*(*v10 + 16))(v10))
    {
      goto LABEL_13;
    }

    do
    {
LABEL_18:
      while (1)
      {
        v14 = *--v2;
        v13 = v14;
        v15 = (*(*v4 + 16))(v4);
        if (v15 != (*(*v13 + 16))(v13))
        {
          break;
        }

        if (v4[8] >= v13[8])
        {
          goto LABEL_20;
        }
      }

      v16 = (*(*v4 + 16))(v4);
    }

    while (v16 < (*(*v13 + 16))(v13));
  }

  v17 = v5 - 1;
  if (v5 - 1 != a1 && (v18 = *v17, *v17 = 0, v19 = *a1, *a1 = v18, v19))
  {
    (*(*v19 + 8))(v19);
    v20 = *v17;
    *v17 = v4;
    if (v20)
    {
      goto LABEL_26;
    }

    return v5;
  }

  else
  {
    v20 = *v17;
    *v17 = v4;
    if (!v20)
    {
      return v5;
    }

LABEL_26:
    (*(*v20 + 8))(v20);
    return v5;
  }
}