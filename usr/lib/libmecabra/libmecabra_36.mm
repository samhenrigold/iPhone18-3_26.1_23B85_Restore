const UInt8 *sub_2993DE948(uint64_t a1, int a2, uint64_t a3, int a4, CFArrayRef *a5)
{
  if (!a5)
  {
    return *(a1 + 2);
  }

  v7 = (((a1 - a2) + a3) >> 1) + 1;
  result = sub_299308694(a5, v7);
  if (result)
  {
    v9 = result;
    if (a4 == 110 && (sub_299255298(a5, v7) & 1) != 0)
    {
      return 0;
    }

    else
    {
      return *v9;
    }
  }

  return result;
}

void sub_2993DE9CC(const void **a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int a5)
{
  if (a5 > 4)
  {
    if (a5 == 5)
    {
      sub_2993DEAEC(a3, a1);
      sub_29922E664(a1, &word_29942A7C2);
      sub_29922E664(a1, word_29942A7C6);
      goto LABEL_10;
    }

    if (a5 != 13)
    {
      return;
    }
  }

  else if (a5 != 2)
  {
    if (a5 != 4)
    {
      return;
    }

    sub_29922E664(a1, word_29942A7C6);
    sub_29922E664(a1, &word_29942A7C2);
  }

  sub_2993DEAEC(a3, a1);
LABEL_10:
  sub_29922E664(a1, &word_29942A7C2);
  sub_2993DEAEC(a4, a1);
  sub_29922E664(a1, &word_29942A7C2);
  sub_2993DEB7C(a2, a1);

  sub_29922E664(a1, &word_29942A7C4);
}

void sub_2993DEAEC(uint64_t *a1, const void **a2)
{
  v3 = *a1;
  if (a1[1] == *a1)
  {

    sub_29922E664(a2, word_29942A7C6);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      sub_29922E664(a2, (v3 + v5));
      ++v6;
      v3 = *a1;
      v5 += 2;
    }

    while (v6 < (a1[1] - *a1) >> 1);
  }
}

void sub_2993DEB7C(uint64_t *a1, const void **a2)
{
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      sub_29922E664(a2, (v2 + v5));
      ++v6;
      v2 = *a1;
      v5 += 2;
    }

    while (v6 < (a1[1] - *a1) >> 1);
  }
}

BOOL sub_2993DEBE4(uint64_t *a1, uint64_t a2, char a3)
{
  v5 = *a1;
  v6 = a1[1];
  if (a3)
  {
    if (v6 == *a1)
    {
      return 1;
    }

    v7 = 0;
LABEL_4:
    v8 = 0;
    v9 = *(v5 + 2 * v7);
    v10 = word_299413998;
    while (*v10 != v9)
    {
      v8 -= 2;
      ++v10;
      if (v8 == -10)
      {
        if ((v9 - 12549) > 0x24)
        {
          return 0;
        }

LABEL_15:
        if (v9 <= 713)
        {
          if (v9 == 711)
          {
            v12 = 51;
          }

          else
          {
            if (v9 != 713)
            {
              goto LABEL_26;
            }

            v12 = 49;
          }
        }

        else
        {
          switch(v9)
          {
            case 729:
              v12 = 53;
              break;
            case 715:
              v12 = 52;
              break;
            case 714:
              v12 = 50;
              break;
            default:
LABEL_26:
              v12 = v9 + 49;
              break;
          }
        }

        v14 = *(a2 + 8);
        v13 = *(a2 + 16);
        if (v14 < v13)
        {
          *v14 = v12;
          v15 = v14 + 1;
          goto LABEL_39;
        }

        v16 = *a2;
        v17 = &v14[-*a2];
        v18 = (v17 + 1);
        if ((v17 + 1) < 0)
        {
          goto LABEL_61;
        }

        v19 = v13 - v16;
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          operator new();
        }

        v21 = &v14[-*a2];
        *v17 = v12;
        v15 = v17 + 1;
        memcpy(0, v16, v21);
        *a2 = 0;
        *(a2 + 8) = v17 + 1;
        *(a2 + 16) = 0;
        if (v16)
        {
          operator delete(v16);
        }

LABEL_39:
        *(a2 + 8) = v15;
        ++v7;
        v5 = *a1;
        if (v7 >= (a1[1] - *a1) >> 1)
        {
          return 1;
        }

        goto LABEL_4;
      }
    }

    v11 = -v8 == -2 || v8 == -10;
    if (!v11 || (v9 - 12549) < 0x25u)
    {
      goto LABEL_15;
    }

    return 0;
  }

  else
  {
    if (v6 == *a1)
    {
      return 1;
    }

    for (i = 0; i < (a1[1] - *a1) >> 1; ++i)
    {
      v23 = *(v5 + 2 * i);
      v24 = (v23 - 97) < 0x1A;
      if ((v23 - 97) > 0x19)
      {
        break;
      }

      v25 = v23;
      v27 = *(a2 + 8);
      v26 = *(a2 + 16);
      if (v27 >= v26)
      {
        v29 = *a2;
        v30 = &v27[-*a2];
        v31 = (v30 + 1);
        if ((v30 + 1) < 0)
        {
LABEL_61:
          sub_299212A8C();
        }

        v32 = v26 - v29;
        if (2 * v32 > v31)
        {
          v31 = 2 * v32;
        }

        if (v32 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v33 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          operator new();
        }

        v34 = &v27[-*a2];
        *v30 = v25;
        v28 = v30 + 1;
        memcpy(0, v29, v34);
        *a2 = 0;
        *(a2 + 8) = v30 + 1;
        *(a2 + 16) = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        *v27 = v25;
        v28 = v27 + 1;
      }

      *(a2 + 8) = v28;
      v5 = *a1;
    }
  }

  return v24;
}

uint64_t sub_2993DEED0(uint64_t a1, int a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F79218;
  *(a1 + 28) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 120) = sub_2993B2710(a2);
  return a1;
}

void sub_2993DEF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = v3[22];
  if (v6)
  {
    v3[23] = v6;
    operator delete(v6);
  }

  sub_299362490(va);
  v7 = *v4;
  if (*v4)
  {
    v3[17] = v7;
    operator delete(v7);
  }

  v8 = v3[12];
  if (v8)
  {
    v3[13] = v8;
    operator delete(v8);
  }

  sub_299362490(va);
  v9 = v3[6];
  if (v9)
  {
    sub_2991A893C(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993DEFD8(uint64_t a1)
{
  *a1 = &unk_2A1F79218;
  sub_2993DF080(a1);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v7 = (a1 + 152);
  sub_299362490(&v7);
  v3 = *(a1 + 128);
  if (v3)
  {
    *(a1 + 136) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  v7 = (a1 + 72);
  sub_299362490(&v7);
  v5 = *(a1 + 48);
  if (v5)
  {
    sub_2991A893C(v5);
  }

  return a1;
}

void sub_2993DF080(void *a1)
{
  a1[2] = 0;
  v2 = a1[9];
  for (i = a1[10]; i != v2; i -= 8)
  {
    v5 = *(i - 8);
    v4 = v5;
    if (v5)
    {
      sub_2993226F0(v4);
    }
  }

  a1[10] = v2;
  a1[13] = a1[12];
  v6 = a1[19];
  for (j = a1[20]; j != v6; j -= 8)
  {
    v9 = *(j - 8);
    v8 = v9;
    if (v9)
    {
      sub_2993226F0(v8);
    }
  }

  a1[20] = v6;
  a1[23] = a1[22];
  a1[17] = a1[16];
}

void sub_2993DF108(uint64_t a1)
{
  sub_2993DEFD8(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993DF140(uint64_t a1, char *__s, uint64_t a3)
{
  sub_2992BC434(__s, a3, 1, &v107);
  v4 = v107;
  v107 = 0uLL;
  v5 = *(a1 + 48);
  *(a1 + 40) = v4;
  if (!v5)
  {
    v6 = v4;
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_9:
    v11 = sub_29930AF10();
    sub_29930B600(v11, "Dictionary file %s is empty");
    return 0;
  }

  sub_2991A893C(v5);
  if (*(&v107 + 1))
  {
    sub_2991A893C(*(&v107 + 1));
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v8 = *v6;
  v7 = v6[1];
  if (v7 < 4)
  {
    if (!v8)
    {
      v94 = sub_29930AF10();
      sub_29930B600(v94, "Dictionary file %s has an empty header");
      return 0;
    }

    LODWORD(v9) = *v8;
  }

  else
  {
    v9 = *v8;
    if (v7 == (v9 ^ 0xEF718F77))
    {
      v10 = sub_29930AF10();
      sub_29930B600(v10, "Dictionary file %s doesn't support the original format");
      return 0;
    }
  }

  if (v9 == 105)
  {
    *(a1 + 32) = v8[1];
    *(a1 + 24) = v8[2];
    v96 = v8[3];
    v97 = v8[4];
    v12 = v8[5];
    *(a1 + 28) = v12;
    *(a1 + 8) = v8[6];
    v13 = v8 + 12;
    if (v12)
    {
      v14 = 0;
      v15 = (a1 + 152);
      v98 = (a1 + 72);
      do
      {
        v16 = *v13;
        v18 = *(a1 + 136);
        v17 = *(a1 + 144);
        if (v18 >= v17)
        {
          v20 = *(a1 + 128);
          v21 = v18 - v20;
          v22 = (v18 - v20) >> 2;
          v23 = v22 + 1;
          if ((v22 + 1) >> 62)
          {
            sub_299212A8C();
          }

          v24 = v17 - v20;
          if (v24 >> 1 > v23)
          {
            v23 = v24 >> 1;
          }

          v25 = v24 >= 0x7FFFFFFFFFFFFFFCLL;
          v26 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v25)
          {
            v26 = v23;
          }

          if (v26)
          {
            sub_2992F86B0(a1 + 128, v26);
          }

          v27 = v22;
          v28 = (4 * v22);
          v29 = &v28[-v27];
          *v28 = v16;
          v19 = v28 + 1;
          memcpy(v29, v20, v21);
          v30 = *(a1 + 128);
          *(a1 + 128) = v29;
          *(a1 + 136) = v19;
          *(a1 + 144) = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          *v18 = v16;
          v19 = v18 + 4;
        }

        *(a1 + 136) = v19;
        v31 = v13[1];
        v99 = v13[2];
        v32 = v13[4];
        v34 = v13[5];
        v33 = v13[6];
        v35 = v13 + 8;
        v104 = v13[7];
        v105 = v13[3];
        sub_2993E3F98(&v106, v13 + 4, v31, 0);
        v37 = *(a1 + 80);
        v36 = *(a1 + 88);
        if (v37 >= v36)
        {
          v102 = v34;
          v38 = *v98;
          v39 = (v37 - *v98) >> 3;
          v40 = v39 + 1;
          if ((v39 + 1) >> 61)
          {
            sub_299212A8C();
          }

          v41 = v36 - v38;
          if (v41 >> 2 > v40)
          {
            v40 = v41 >> 2;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFF8)
          {
            v42 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v40;
          }

          v110 = (a1 + 72);
          v100 = v33;
          if (v42)
          {
            sub_29924EEE8(v98, v42);
          }

          v43 = v39;
          v44 = (8 * v39);
          *v44 = v106;
          v106 = 0;
          v45 = &v44[-v43];
          if (v38 != v37)
          {
            v46 = v38;
            v47 = v45;
            do
            {
              *v47++ = *v46;
              *v46++ = 0;
            }

            while (v46 != v37);
            do
            {
              if (*v38)
              {
                sub_2993226F0(*v38);
              }

              ++v38;
            }

            while (v38 != v37);
            v38 = *v98;
          }

          *(a1 + 72) = v45;
          *(a1 + 80) = v44 + 1;
          v48 = *(a1 + 88);
          *(a1 + 88) = 0;
          v108 = v38;
          v109 = v48;
          *&v107 = v38;
          *(&v107 + 1) = v38;
          sub_299362E64(&v107);
          v49 = v106;
          *(a1 + 80) = v44 + 1;
          v15 = (a1 + 152);
          v33 = v100;
          v34 = v102;
          if (v49)
          {
            sub_2993226F0(v49);
          }
        }

        else
        {
          *v37 = v106;
          *(a1 + 80) = v37 + 1;
        }

        v13 = (v35 + v31 + v105);
        if (*(a1 + 28) != 1)
        {
          *&v107 = v35 + v31 + v105;
          sub_2993DF930(a1 + 96, &v107);
          v13 = (v13 + v99);
        }

        if (v32)
        {
          sub_2993E3F98(&v106, v13, v34, 0);
          v51 = *(a1 + 160);
          v50 = *(a1 + 168);
          if (v51 >= v50)
          {
            v101 = v33;
            v54 = *v15;
            v55 = (v51 - *v15) >> 3;
            v56 = v55 + 1;
            if ((v55 + 1) >> 61)
            {
              sub_299212A8C();
            }

            v57 = v50 - v54;
            if (v57 >> 2 > v56)
            {
              v56 = v57 >> 2;
            }

            if (v57 >= 0x7FFFFFFFFFFFFFF8)
            {
              v58 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v58 = v56;
            }

            v110 = v15;
            v103 = v34;
            if (v58)
            {
              sub_29924EEE8(v15, v58);
            }

            v64 = v55;
            v65 = (8 * v55);
            *v65 = v106;
            v106 = 0;
            v66 = &v65[-v64];
            if (v54 != v51)
            {
              v67 = v54;
              v68 = v66;
              do
              {
                *v68++ = *v67;
                *v67++ = 0;
              }

              while (v67 != v51);
              do
              {
                if (*v54)
                {
                  sub_2993226F0(*v54);
                }

                ++v54;
              }

              while (v54 != v51);
              v54 = *v15;
            }

            *(a1 + 152) = v66;
            *(a1 + 160) = v65 + 1;
            v69 = *(a1 + 168);
            *(a1 + 168) = 0;
            v108 = v54;
            v109 = v69;
            *&v107 = v54;
            *(&v107 + 1) = v54;
            sub_299362E64(&v107);
            v70 = v106;
            *(a1 + 160) = v65 + 1;
            v33 = v101;
            v34 = v103;
            if (v70)
            {
              sub_2993226F0(v70);
            }
          }

          else
          {
            *v51 = v106;
            *(a1 + 160) = v51 + 1;
          }

          *&v107 = v13 + v34 + v104;
          sub_2993DF930(a1 + 176, &v107);
          v13 = (v13 + v34 + v104 + v33);
        }

        else
        {
          sub_2993E3F98(&v106, 0, 0, 0);
          v53 = *(a1 + 160);
          v52 = *(a1 + 168);
          if (v53 >= v52)
          {
            v59 = *v15;
            v60 = (v53 - *v15) >> 3;
            v61 = v60 + 1;
            if ((v60 + 1) >> 61)
            {
              sub_299212A8C();
            }

            v62 = v52 - v59;
            if (v62 >> 2 > v61)
            {
              v61 = v62 >> 2;
            }

            if (v62 >= 0x7FFFFFFFFFFFFFF8)
            {
              v63 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v63 = v61;
            }

            v110 = v15;
            if (v63)
            {
              sub_29924EEE8(v15, v63);
            }

            v71 = v60;
            v72 = (8 * v60);
            *v72 = v106;
            v106 = 0;
            v73 = &v72[-v71];
            if (v59 != v53)
            {
              v74 = v59;
              v75 = v73;
              do
              {
                *v75++ = *v74;
                *v74++ = 0;
              }

              while (v74 != v53);
              do
              {
                if (*v59)
                {
                  sub_2993226F0(*v59);
                }

                ++v59;
              }

              while (v59 != v53);
              v59 = *v15;
            }

            *(a1 + 152) = v73;
            *(a1 + 160) = v72 + 1;
            v76 = *(a1 + 168);
            *(a1 + 168) = 0;
            v108 = v59;
            v109 = v76;
            *&v107 = v59;
            *(&v107 + 1) = v59;
            sub_299362E64(&v107);
            v77 = v106;
            *(a1 + 160) = v72 + 1;
            if (v77)
            {
              sub_2993226F0(v77);
            }
          }

          else
          {
            *v53 = v106;
            *(a1 + 160) = v53 + 1;
          }

          v79 = *(a1 + 184);
          v78 = *(a1 + 192);
          if (v79 >= v78)
          {
            v81 = *(a1 + 176);
            v82 = (v79 - v81) >> 3;
            if ((v82 + 1) >> 61)
            {
              sub_29924EED0();
            }

            v83 = v78 - v81;
            v84 = v83 >> 2;
            if (v83 >> 2 <= (v82 + 1))
            {
              v84 = v82 + 1;
            }

            if (v83 >= 0x7FFFFFFFFFFFFFF8)
            {
              v85 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v85 = v84;
            }

            if (v85)
            {
              sub_29920BE54(a1 + 176, v85);
            }

            v86 = (8 * v82);
            *v86 = 0;
            v80 = 8 * v82 + 8;
            v87 = *(a1 + 176);
            v88 = *(a1 + 184) - v87;
            v89 = v86 - v88;
            memcpy(v86 - v88, v87, v88);
            v90 = *(a1 + 176);
            *(a1 + 176) = v89;
            *(a1 + 184) = v80;
            *(a1 + 192) = 0;
            if (v90)
            {
              operator delete(v90);
            }
          }

          else
          {
            *v79 = 0;
            v80 = (v79 + 1);
          }

          *(a1 + 184) = v80;
        }

        ++v14;
      }

      while (v14 < *(a1 + 28));
      v91 = *(a1 + 40);
      v8 = *v91;
      v7 = v91[1];
    }

    *(a1 + 36) = 0;
    *(a1 + 16) = *(a1 + 72);
    *(a1 + 56) = v13;
    *(a1 + 64) = v13 + v96;
    if (v13 + v96 + v97 == v8 + v7)
    {
      return 1;
    }

    v92 = sub_29930AF10();
    sub_29930B600(v92, "Dictionary file %s has the wrong content");
  }

  else
  {
    v93 = sub_29930AF10();
    sub_29930B600(v93, "Dictionary file %s is incompatible (version %d, expected version %d)");
  }

  return 0;
}

void sub_2993DF88C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  if (a24)
  {
    sub_2993226F0(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993DF930(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_29924EED0();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_29920BE54(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_2993DFA0C(uint64_t result, unsigned int a2)
{
  if (*(result + 28) <= a2)
  {
    v2 = 0;
    a2 = -1;
  }

  else
  {
    v2 = *(result + 72) + 8 * a2;
  }

  *(result + 36) = a2;
  *(result + 16) = v2;
  return result;
}

uint64_t sub_2993DFA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1 + 104))(a1);
  if (result)
  {
    result = (*(*a1 + 104))(a1, a2);
    v15 = 0;
    v7 = result;
    if (result)
    {
      v8 = 12 * (result >> 12);
      v9 = 4 * (result >> 12);
      v10 = 1;
      do
      {
        if (*(a1 + 28) == 1)
        {
          v11 = *(a1 + 56) + v8;
        }

        else
        {
          v11 = *(a1 + 56) + 12 * *(*(*(a1 + 96) + 8 * *(a1 + 36)) + v9);
        }

        v12 = *(a1 + 64) + *(v11 + 8);
        v14[0] = v11;
        v14[1] = v12;
        result = (*(a3 + 16))(a3, v14, &v15);
        if (v15)
        {
          break;
        }

        v8 += 12;
        v9 += 4;
      }

      while (v10++ < v7);
    }
  }

  return result;
}

uint64_t sub_2993DFB70(uint64_t result, unsigned int a2, uint64_t a3, _BYTE *a4)
{
  v4 = a2;
  if (a2 && (*a4 & 1) == 0)
  {
    v6 = result;
    v7 = *(result + 40);
    v8 = 12 * (a2 >> 12);
    v9 = 4 * (a2 >> 12);
    v10 = 1;
    do
    {
      if (*(v7 + 28) == 1)
      {
        v11 = *(v7 + 56) + v8;
      }

      else
      {
        v11 = *(v7 + 56) + 12 * *(*(*(v7 + 96) + 8 * *(v7 + 36)) + v9);
      }

      v12 = *(v7 + 64) + *(v11 + 8);
      v14[0] = v11;
      v14[1] = v12;
      result = (*(*(v6 + 32) + 16))(*(v6 + 32), v14);
      if (*a4)
      {
        break;
      }

      v8 += 12;
      v9 += 4;
    }

    while (v10++ < v4);
  }

  return result;
}

void **sub_2993DFC68(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*a1 + 7))(&v12);
  sub_299359338(&v12, a1, a3, &v14);
  sub_2992B0BA8(&v12, &v14);
  sub_2992A5BA0(v15);
  v9 = v14;
  v14 = 0;
  if (v9)
  {
    MEMORY[0x29C29BFB0](v9, 0x1010C40E4C6A875);
  }

  if ((*(*a1 + 11))(a1, &v12))
  {
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 0x40000000;
    v11[2] = sub_2993DFE50;
    v11[3] = &unk_29EF22280;
    v11[4] = a5;
    v14 = MEMORY[0x29EDCA5F8];
    v15[0] = 0x40000000;
    v15[1] = sub_2993DFB70;
    v15[2] = &unk_29EF22258;
    v15[3] = v11;
    v15[4] = a1;
    (*(*a1 + 10))(a1, &v12, a4, &v14);
  }

  sub_2992A5BA0(&v13);
  result = v12;
  v12 = 0;
  if (result)
  {
    return MEMORY[0x29C29BFB0](result, 0x1010C40E4C6A875);
  }

  return result;
}

void sub_2993DFE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2992AB338(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993DFE60(void *a1, _DWORD **a2, char a3, BOOL *a4, BOOL *a5)
{
  if (!(*(*a1 + 88))(a1))
  {
    return 0;
  }

  v10 = sub_2993E44C8(a1[2], a2);
  *a5 = v10 != 0;
  *a4 = (v10 & 0x800) != 0;
  v11 = 1;
  if ((a3 & 0xE) != 0 && *a5)
  {
    if (a3)
    {
      v12 = 256;
    }

    else
    {
      v12 = 512;
    }

    LODWORD(v11) = (v10 & v12) != 0;
    if (a3)
    {
      v13 = (v10 >> 10) & 1;
    }

    else
    {
      v13 = 1;
    }

    if ((a3 & 8) != 0)
    {
      return v13;
    }

    else
    {
      return v11;
    }
  }

  return v11;
}

_WORD *sub_2993DFF74(void *a1, unsigned int a2)
{
  v3 = a1[15];
  if (v3)
  {
    return sub_2993B2928(v3, (a1[8] + *(a1[7] + 12 * a2 + 8)));
  }

  else
  {
    return *sub_2992FE060();
  }
}

_DWORD *sub_2993DFFC0(_DWORD *result, unsigned __int8 *a2, unint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      v4 = result;
      v5 = result[9];
      if (v5 != -1)
      {
        if (*(*(result + 22) + 8 * v5))
        {
          v7 = (*(result + 19) + 8 * v5);
          sub_2992B72DC(&v13, *v7);
          sub_2992A5E4C(&v15, &v13);
          sub_2992A5BA0(&v14);
          v8 = v13;
          v13 = 0;
          if (v8)
          {
            MEMORY[0x29C29BFB0](v8, 0x1010C40E4C6A875);
          }

          sub_2993E4318(v7, &v15, a2, a3, &v13);
          if ((*(*v4 + 88))(v4, &v13))
          {
            sub_2992A5E4C(&v11, &v13);
            sub_2992B73E8(&v11, *v7);
            sub_2992A5BA0(&v12);
            v9 = v11;
            v11 = 0;
            if (v9)
            {
              MEMORY[0x29C29BFB0](v9, 0x1010C40E4C6A875);
            }
          }

          sub_2992A5BA0(&v14);
          v10 = v13;
          v13 = 0;
          if (v10)
          {
            MEMORY[0x29C29BFB0](v10, 0x1010C40E4C6A875);
          }

          sub_2992A5BA0(&v16);
          result = v15;
          v15 = 0;
          if (result)
          {
            return MEMORY[0x29C29BFB0](result, 0x1010C40E4C6A875);
          }
        }
      }
    }
  }

  return result;
}

void sub_2993E0194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va2, a13);
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  va_copy(va2, va1);
  v17 = va_arg(va2, void **);
  v19 = va_arg(va2, void);
  sub_2992AB338(va);
  sub_2992A5B54(va1);
  sub_2992A5B54(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E01DC(uint64_t result, unsigned int a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    v4 = a2;
    if (a2)
    {
      if ((*a4 & 1) == 0)
      {
        v6 = result;
        v7 = *(result + 40);
        v8 = 4 * (a2 >> 12);
        v9 = 1;
        do
        {
          v10 = *(v7 + 64) + *(*(v7 + 56) + 12 * *(*(*(v7 + 176) + 8 * *(v7 + 36)) + v8) + 8);
          v12[0] = *(v7 + 56) + 12 * *(*(*(v7 + 176) + 8 * *(v7 + 36)) + v8);
          v12[1] = v10;
          result = (*(*(v6 + 32) + 16))(*(v6 + 32), v12);
          if (*a4)
          {
            break;
          }

          v8 += 4;
        }

        while (v9++ < v4);
      }
    }
  }

  return result;
}

uint64_t sub_2993E02C0()
{
  if ((atomic_load_explicit(&qword_2A14622C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14622C0))
  {
    operator new();
  }

  return qword_2A14622B8;
}

uint64_t sub_2993E0350(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 == 5)
  {
    v4 = (a1 + 8);
    if (!*(a1 + 8))
    {
      v5 = sub_2993E03BC(a1, 5);
      sub_29920FE30(v4, v5);
      if (*(a1 + 8))
      {
        return v2;
      }

      else
      {
        return 2;
      }
    }
  }

  return v2;
}

CFURLRef sub_2993E03BC(_BYTE *a1, uint64_t a2)
{
  v4 = sub_29936C2B8();
  result = sub_29936CBC8(v4, a2, 0);
  if (result)
  {
    *a1 = 1;
  }

  else
  {
    v6 = sub_29936C2B8();

    return sub_29936CBC8(v6, a2, 1);
  }

  return result;
}

const __CFURL *sub_2993E0424(uint64_t a1, CFURLRef relativeURL)
{
  result = 0;
  if (relativeURL)
  {
    if ((*a1 & 1) == 0)
    {
      result = CFURLCopyAbsoluteURL(relativeURL);
      if (result)
      {
        v4 = result;
        v7 = *(a1 + 8);
        v6 = (a1 + 8);
        v5 = v7;
        if (!v7 || !CFEqual(result, v5))
        {
          v8 = sub_29936C2B8();
          sub_29936CC30(v8, 5, v4);
          v9 = CFRetain(v4);
          sub_29920FE30(v6, v9);
        }

        CFRelease(v4);
        return 1;
      }
    }
  }

  return result;
}

void sub_2993E04B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

void sub_2993E04D0(CFStringTokenizerRef *a1, CFStringRef theString, uint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  Length = CFStringGetLength(theString);
  if ((Length - 201) >= 0xFFFFFFFFFFFFFF3BLL)
  {
    v30.length = Length;
    v30.location = 0;
    CFStringTokenizerSetString(*a1, theString, v30);
    v6 = 0;
    v7 = 0;
    v21 = *MEMORY[0x29EDB8ED8];
    do
    {
      if (!CFStringTokenizerAdvanceToNextToken(*a1))
      {
        break;
      }

      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(*a1);
      v9 = CFStringCreateWithSubstring(v21, theString, CurrentTokenRange);
      v10 = sub_29927947C();
      cf = v9;
      v13 = objc_msgSend_componentsSeparatedByCharactersInSet_(v9, v11, v10, v12);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v24, v28, 16);
      if (v15)
      {
        v16 = v15;
        v17 = *v25;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v24 + 1) + 8 * i);
            if (sub_2993D5A34(a1, v19))
            {
              (*(a3 + 16))(a3, v19);
            }
          }

          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, &v24, v28, 16);
        }

        while (v16);
      }

      CFRelease(cf);
      if (v6 > 0x13)
      {
        break;
      }

      v7 += CurrentTokenRange.length;
      ++v6;
    }

    while (v7 < 0x33);
  }
}

uint64_t sub_2993E0694(uint64_t a1)
{
  *a1 = &unk_2A1F792C8;
  sub_2993E0710(a1);
  std::mutex::~mutex((a1 + 104));
  sub_299354B0C((a1 + 96), 0);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_2993E0710(uint64_t a1)
{
  std::mutex::lock((a1 + 104));
  *(a1 + 40) = *(a1 + 32);
  *(a1 + 64) = *(a1 + 56);
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*v2)
    {
      sub_2993226F0(*v2);
    }

    MEMORY[0x29C29BFB0](v2, 0x80C40B8603338);
    *(a1 + 16) = 0;
  }

  sub_299354B0C((a1 + 96), 0);

  std::mutex::unlock((a1 + 104));
}

uint64_t sub_2993E07A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1 + 104))(a1);
  if (result)
  {
    result = (*(*a1 + 104))(a1, a2);
    v7 = *(a1[4] + 2 * result);
    v15 = 0;
    if (v7)
    {
      v8 = (result + 1);
      v9 = 1;
      do
      {
        v10 = a1[4];
        v11 = *(v10 + 2 * v8);
        v12 = v8 + 1;
        v14[0] = a1 + 10;
        v14[1] = v10 + 2 * (v8 + 1);
        result = (*(a3 + 16))(a3, v14, &v15);
        if (v15)
        {
          break;
        }

        v8 = v12 + v11;
      }

      while (v9++ < v7);
    }
  }

  return result;
}

void sub_2993E08DC(CFIndex result, CFArrayRef theArray)
{
  if (!theArray || !CFArrayGetCount(theArray))
  {
    return;
  }

  v91 = 0;
  v90 = 0uLL;
  v4 = (*(*result + 16))(result);
  v5 = 0;
  v87 = *MEMORY[0x29EDB8F80];
  while (v5 < CFArrayGetCount(theArray))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    v7 = v5 + 1;
    v8 = CFArrayGetValueAtIndex(theArray, v5 + 1);
    if (v4 == 17)
    {
      v9 = CFArrayGetValueAtIndex(theArray, v5 + 2);
      v7 = v5 + 3;
      v10 = CFArrayGetValueAtIndex(theArray, v5 + 3);
      if (!ValueAtIndex)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
      if (!ValueAtIndex)
      {
        goto LABEL_74;
      }
    }

    if (v8)
    {
      if (ValueAtIndex != v87 && v8 != v87)
      {
        Length = CFStringGetLength(v8);
        v12 = CFStringGetLength(ValueAtIndex);
        if (Length)
        {
          v13 = v12;
          if (v12)
          {
            v104 = 0;
            v105 = 0;
            v106 = 0;
            sub_299217A94(&v104, Length);
            v107.location = 0;
            v107.length = Length;
            CFStringGetCharacters(v8, v107, v104);
            if (v104 != v105)
            {
              v14 = v105 - 2;
              if (v105 - 2 > v104)
              {
                v15 = v104 + 2;
                do
                {
                  v16 = *(v15 - 1);
                  *(v15 - 1) = *v14;
                  *v14 = v16;
                  v14 -= 2;
                  v17 = v15 >= v14;
                  v15 += 2;
                }

                while (!v17);
              }
            }

            v101 = 0;
            v102 = 0;
            v103 = 0;
            sub_299217A94(&v101, v13);
            v108.location = 0;
            v108.length = v13;
            CFStringGetCharacters(ValueAtIndex, v108, v101);
            v18 = v105 - v104;
            if ((v105 - v104) >= 0x7FFFFFFFFFFFFFF8)
            {
              sub_2991A11B0();
            }

            if (v18 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v105 - v104;
            if (v105 != v104)
            {
              memmove(&__dst, v104, v18);
            }

            v19 = 0;
            __dst.__r_.__value_.__s.__data_[v18] = 0;
            LOWORD(valuePtr) = 0;
            if (v4 == 17 && v9 && v87 != v9)
            {
              if (CFNumberGetValue(v9, kCFNumberSInt16Type, &valuePtr))
              {
                v19 = valuePtr;
              }

              else
              {
                v19 = 0;
              }
            }

            valuePtr = 0uLL;
            v93 = 0;
            if (v4 == 17 && v10 && v87 != v10)
            {
              for (i = 0; i < CFArrayGetCount(v10); ++i)
              {
                v21 = CFArrayGetValueAtIndex(v10, i);
                v89[0] = 0;
                if (CFNumberGetValue(v21, kCFNumberSInt64Type, v89))
                {
                  v22 = *(&valuePtr + 1);
                  if (*(&valuePtr + 1) >= v93)
                  {
                    v24 = valuePtr;
                    v25 = *(&valuePtr + 1) - valuePtr;
                    v26 = (*(&valuePtr + 1) - valuePtr) >> 3;
                    v27 = v26 + 1;
                    if ((v26 + 1) >> 61)
                    {
                      sub_2993B2DA8();
                    }

                    v28 = v93 - valuePtr;
                    if ((v93 - valuePtr) >> 2 > v27)
                    {
                      v27 = v28 >> 2;
                    }

                    v17 = v28 >= 0x7FFFFFFFFFFFFFF8;
                    v29 = 0x1FFFFFFFFFFFFFFFLL;
                    if (!v17)
                    {
                      v29 = v27;
                    }

                    if (v29)
                    {
                      sub_299236FB8(&valuePtr, v29);
                    }

                    *(8 * v26) = v89[0];
                    v23 = 8 * v26 + 8;
                    memcpy(0, v24, v25);
                    v30 = valuePtr;
                    *&valuePtr = 0;
                    *(&valuePtr + 1) = v23;
                    v93 = 0;
                    if (v30)
                    {
                      operator delete(v30);
                    }
                  }

                  else
                  {
                    **(&valuePtr + 1) = v89[0];
                    v23 = v22 + 8;
                  }

                  *(&valuePtr + 1) = v23;
                }
              }
            }

            __p = __dst;
            memset(&__dst, 0, sizeof(__dst));
            v97 = 0;
            v96 = 0uLL;
            sub_299215EC0(&v96, v101, v102, (v102 - v101) >> 1);
            v98 = v19;
            v31 = valuePtr;
            v99 = valuePtr;
            v32 = v93;
            v100 = v93;
            valuePtr = 0uLL;
            v93 = 0;
            v33 = *(&v90 + 1);
            if (*(&v90 + 1) >= v91)
            {
              v35 = v90;
              v36 = *(&v90 + 1) - v90;
              v37 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v90 + 1) - v90) >> 4);
              v38 = v37 + 1;
              if (v37 + 1 > 0x333333333333333)
              {
                sub_299212A8C();
              }

              if (0x999999999999999ALL * ((v91 - v90) >> 4) > v38)
              {
                v38 = 0x999999999999999ALL * ((v91 - v90) >> 4);
              }

              if (0xCCCCCCCCCCCCCCCDLL * ((v91 - v90) >> 4) >= 0x199999999999999)
              {
                v39 = 0x333333333333333;
              }

              else
              {
                v39 = v38;
              }

              if (v39)
              {
                if (v39 <= 0x333333333333333)
                {
                  operator new();
                }

                sub_29919600C();
              }

              v40 = 16 * ((*(&v90 + 1) - v90) >> 4);
              *v40 = __p;
              memset(&__p, 0, sizeof(__p));
              *(v40 + 24) = v96;
              *(v40 + 40) = v97;
              v97 = 0;
              v96 = 0uLL;
              *(v40 + 48) = v19;
              *(v40 + 56) = v31;
              *(v40 + 72) = v32;
              v99 = 0uLL;
              v41 = 80 * v37 + 80;
              v42 = 80 * v37 - v36;
              v100 = 0;
              memcpy((v40 - v36), v35, v36);
              *&v90 = v42;
              *(&v90 + 1) = v41;
              v91 = 0;
              if (v35)
              {
                operator delete(v35);
                *(&v90 + 1) = v41;
                if (v99)
                {
                  *(&v99 + 1) = v99;
                  operator delete(v99);
                }
              }
            }

            else
            {
              v34 = *&__p.__r_.__value_.__l.__data_;
              *(*(&v90 + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
              *(v33 + 24) = 0;
              *v33 = v34;
              memset(&__p, 0, sizeof(__p));
              *(v33 + 32) = 0;
              *(v33 + 40) = 0;
              *(v33 + 24) = v96;
              *(v33 + 40) = v97;
              v96 = 0uLL;
              v97 = 0;
              *(v33 + 48) = v98;
              *(v33 + 56) = 0;
              *(v33 + 64) = 0;
              *(v33 + 72) = 0;
              *(v33 + 56) = v99;
              *(v33 + 72) = v100;
              v99 = 0uLL;
              v100 = 0;
              *(&v90 + 1) = v33 + 80;
            }

            if (v96)
            {
              *(&v96 + 1) = v96;
              operator delete(v96);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (valuePtr)
            {
              *(&valuePtr + 1) = valuePtr;
              operator delete(valuePtr);
            }

            if (v101)
            {
              v102 = v101;
              operator delete(v101);
            }

            if (v104)
            {
              v105 = v104;
              operator delete(v104);
            }
          }
        }
      }
    }

LABEL_74:
    v5 = v7 + 1;
  }

  v43 = *(&v90 + 1);
  v44 = v90;
  if (v90 != *(&v90 + 1))
  {
    v104 = sub_2993E1850;
    if ((*(&v90 + 1) - v90) < 1)
    {
      v50 = 0;
      v46 = 0;
    }

    else
    {
      v45 = MEMORY[0x29EDC9418];
      v46 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v90 + 1) - v90) >> 4);
      while (1)
      {
        v47 = operator new(80 * v46, v45);
        if (v47)
        {
          break;
        }

        v48 = v46 >> 1;
        v49 = v46 > 1;
        v46 >>= 1;
        if (!v49)
        {
          v50 = 0;
          v46 = v48;
          goto LABEL_83;
        }
      }

      v50 = v47;
    }

LABEL_83:
    sub_2993E186C(v44, v43, &v104, 0xCCCCCCCCCCCCCCCDLL * (v43 - v44), v50, v46);
    if (v50)
    {
      operator delete(v50);
    }

    std::mutex::lock((result + 104));
    v51 = (result + 56);
    *(result + 64) = *(result + 56);
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    sub_29922E664((result + 56), &__p);
    memset(&__p, 0, sizeof(__p));
    v105 = 0;
    v106 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v52 = v90;
    if (*(&v90 + 1) != v90)
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 1;
      do
      {
        v57 = v52 + v53;
        if (!v55)
        {
          goto LABEL_101;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v59 = *(v57 + 23);
        v60 = v59;
        if ((v59 & 0x80u) != 0)
        {
          v59 = *(v57 + 8);
        }

        if (size == v59 && ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_p = &__p) : (p_p = __p.__r_.__value_.__r.__words[0]), v60 >= 0 ? (v62 = (v52 + v53)) : (v62 = *v57), !memcmp(p_p, v62, size)))
        {
          ++*(*v51 + v54);
        }

        else
        {
LABEL_101:
          sub_29924BA6C(&v104, (v52 + v53));
          v63 = v102;
          if (v102 >= v103)
          {
            v65 = v101;
            v66 = v102 - v101;
            v67 = (v102 - v101) >> 2;
            v68 = v67 + 1;
            if ((v67 + 1) >> 62)
            {
              sub_299212A8C();
            }

            v69 = v103 - v101;
            if ((v103 - v101) >> 1 > v68)
            {
              v68 = v69 >> 1;
            }

            v17 = v69 >= 0x7FFFFFFFFFFFFFFCLL;
            v70 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v17)
            {
              v70 = v68;
            }

            if (v70)
            {
              sub_2992F86B0(&v101, v70);
            }

            *(4 * v67) = v56;
            v64 = (4 * v67 + 4);
            memcpy(0, v65, v66);
            v71 = v101;
            v101 = 0;
            v102 = v64;
            v103 = 0;
            if (v71)
            {
              operator delete(v71);
            }
          }

          else
          {
            *v102 = v56;
            v64 = v63 + 4;
          }

          v102 = v64;
          LOWORD(__dst.__r_.__value_.__l.__data_) = 1;
          sub_29922E664(v51, &__dst);
          v54 = v56++;
          v52 = v90;
        }

        memset(&__dst, 0, sizeof(__dst));
        valuePtr = 0uLL;
        v93 = 0;
        memset(v89, 0, sizeof(v89));
        v72 = *(v52 + v53 + 23);
        if (v72 < 0)
        {
          v72 = *(v52 + v53 + 8);
        }

        v88 = (v72 >> 1) + 48;
        sub_29922E664(&valuePtr, &v88);
        sub_2993DE9CC(&__dst.__r_.__value_.__l.__data_, (v57 + 24), &valuePtr, v89, *(result + 24));
        if ((*(*result + 16))(result) == 17)
        {
          v73 = v90 + v53;
          v74 = __dst.__r_.__value_.__l.__size_;
          if (__dst.__r_.__value_.__l.__size_ >= __dst.__r_.__value_.__r.__words[2])
          {
            v76 = __dst.__r_.__value_.__r.__words[0];
            v77 = __dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0];
            v78 = (__dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0]) >> 1;
            if (v78 <= -2)
            {
              sub_299212A8C();
            }

            if (__dst.__r_.__value_.__r.__words[2] - __dst.__r_.__value_.__r.__words[0] <= v78 + 1)
            {
              v79 = v78 + 1;
            }

            else
            {
              v79 = __dst.__r_.__value_.__r.__words[2] - __dst.__r_.__value_.__r.__words[0];
            }

            v80 = 0x7FFFFFFFFFFFFFFFLL;
            if (__dst.__r_.__value_.__r.__words[2] - __dst.__r_.__value_.__r.__words[0] < 0x7FFFFFFFFFFFFFFELL)
            {
              v80 = v79;
            }

            if (v80)
            {
              sub_299212A48(&__dst, v80);
            }

            v81 = (2 * v78);
            v82 = *(v73 + 48);
            v83 = &v81[-((__dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0]) >> 1)];
            *v81 = v82;
            v75 = (v81 + 1);
            memcpy(v83, v76, v77);
            v84 = __dst.__r_.__value_.__r.__words[0];
            __dst.__r_.__value_.__r.__words[0] = v83;
            *&__dst.__r_.__value_.__r.__words[1] = v75;
            if (v84)
            {
              operator delete(v84);
            }
          }

          else
          {
            *__dst.__r_.__value_.__l.__size_ = *(v73 + 48);
            v75 = v74 + 2;
          }

          __dst.__r_.__value_.__l.__size_ = v75;
          v85 = v90 + v53;
          v88 = (*(v90 + v53 + 64) - *(v90 + v53 + 56)) >> 3;
          sub_29922E664(&__dst.__r_.__value_.__l.__data_, &v88);
          sub_299218EBC(&__dst, __dst.__r_.__value_.__l.__size_, *(v85 + 56), *(v85 + 64), (*(v85 + 64) - *(v85 + 56)) >> 1);
        }

        v88 = (LODWORD(__dst.__r_.__value_.__r.__words[1]) - LODWORD(__dst.__r_.__value_.__l.__data_)) >> 1;
        sub_29922E664(v51, &v88);
        sub_2992F87C8(v51, *(result + 64), __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_, (__dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0]) >> 1);
        v86 = *&__dst.__r_.__value_.__l.__data_;
        std::string::operator=(&__p, (v90 + v53));
        if (valuePtr)
        {
          *(&valuePtr + 1) = valuePtr;
          operator delete(valuePtr);
        }

        if (__dst.__r_.__value_.__r.__words[0])
        {
          __dst.__r_.__value_.__l.__size_ = __dst.__r_.__value_.__r.__words[0];
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v56 += ((*(&v86 + 1) - v86) >> 1) + 1;
        ++v55;
        v52 = v90;
        v53 += 80;
      }

      while (v55 < 0xCCCCCCCCCCCCCCCDLL * ((*(&v90 + 1) - v90) >> 4));
    }

    operator new();
  }

  __p.__r_.__value_.__r.__words[0] = &v90;
  sub_2993E1740(&__p);
}

void sub_2993E13FC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  MEMORY[0x29C29BFB0](v34, 0x80C40B8603338, a3, a4, a5, a6, a7, a8);
  v37 = *(v33 + 80);
  if (v37)
  {
    *(v33 + 88) = v37;
    operator delete(v37);
  }

  *(v33 + 80) = v35 - 120;
  sub_299212B90((v35 - 144));
  if (a33 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((a10 + 104));
  __p = &a15;
  sub_2993E1740(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E158C(uint64_t a1)
{
  v7 = (a1 + 104);
  v8 = 0;
  sub_2993479E4(&v7);
  if ((v2 & 1) != 0 && (v3 = *(a1 + 96)) != 0)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      if (*v4)
      {
        sub_2993226F0(*v4);
      }

      MEMORY[0x29C29BFB0](v4, 0x80C40B8603338);
      v3 = *(a1 + 96);
    }

    *(a1 + 96) = 0;
    *(a1 + 16) = v3;
    sub_29922323C(a1 + 32, (a1 + 56));
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (v8 == 1)
  {
    std::mutex::unlock(v7);
  }

  return v5;
}

void sub_2993E163C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993E1664(uint64_t a1)
{
  sub_2993E0694(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993E16A0(uint64_t a1)
{
  sub_2993E0694(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993E1700(uint64_t a1)
{
  sub_2993E0694(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993E1740(void ****a1)
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
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 7);
        if (v7)
        {
          *(v4 - 6) = v7;
          operator delete(v7);
        }

        v8 = v4 - 10;
        if (*(v4 - 57) < 0)
        {
          operator delete(*v8);
        }

        v4 -= 10;
      }

      while (v8 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2993E17FC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2993E186C(__int128 *a1, __int128 *a2, unsigned int (**a3)(__int128 *, uint64_t), unint64_t a4, char *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    v8 = a1;
    if (a4 == 2)
    {
      if ((*a3)(a2 - 5, a1, a3, 2, a5, a6))
      {

        sub_2993E28D4(v8, a2 - 5);
      }
    }

    else if (a4 <= 0)
    {
      if (a1 != a2)
      {
        v15 = a1 + 5;
        if (a1 + 5 != a2)
        {
          v16 = 0;
          v17 = a1;
          do
          {
            v18 = v15;
            if ((*a3)(v15, v17))
            {
              v19 = *v18;
              v30 = *(v18 + 2);
              *v29 = v19;
              *(v18 + 1) = 0;
              *(v18 + 2) = 0;
              *v18 = 0;
              *v31 = *(v17 + 104);
              v32 = *(v17 + 15);
              *(v17 + 14) = 0;
              *(v17 + 15) = 0;
              *(v17 + 13) = 0;
              v33 = *(v17 + 64);
              *__p = *(v17 + 136);
              v35 = *(v17 + 19);
              *(v17 + 17) = 0;
              *(v17 + 18) = 0;
              v20 = v16;
              *(v17 + 19) = 0;
              while (1)
              {
                v21 = sub_2993E2970(&v8[5] + v20, (v8 + v20));
                if (!v20)
                {
                  break;
                }

                v22 = (*a3)(v29, &v8[-5] + v20, v21);
                v20 -= 80;
                if ((v22 & 1) == 0)
                {
                  v23 = &v8[5] + v20;
                  goto LABEL_22;
                }
              }

              v23 = v8;
LABEL_22:
              sub_2993E2970(v23, v29);
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              if (v31[0])
              {
                v31[1] = v31[0];
                operator delete(v31[0]);
              }

              if (SHIBYTE(v30) < 0)
              {
                operator delete(v29[0]);
              }
            }

            v15 = v18 + 5;
            v16 += 80;
            v17 = v18;
          }

          while (v18 + 5 != a2);
        }
      }
    }

    else
    {
      v11 = a5;
      v12 = a4 >> 1;
      v13 = &a1[5 * (a4 >> 1)];
      if (a4 <= a6)
      {
        v28 = 0;
        v29[0] = a5;
        v29[1] = &v28;
        sub_2993E1BE8(a1, &a1[5 * (a4 >> 1)], a3, a4 >> 1, a5);
        v28 = a4 >> 1;
        v24 = a4 - v12;
        v25 = &v11[5 * v12];
        sub_2993E1BE8(&v8[5 * (a4 >> 1)], a2, a3, v24, v25);
        v28 = a4;
        v26 = &v11[5 * a4];
        v27 = v25;
        while (v27 != v26)
        {
          if ((*a3)(v27, v11))
          {
            sub_2993E2970(v8, v27);
            v27 += 5;
          }

          else
          {
            sub_2993E2970(v8, v11);
            v11 += 5;
          }

          v8 += 5;
          if (v11 == v25)
          {
            while (v27 != v26)
            {
              sub_2993E2970(v8, v27);
              v27 += 5;
              v8 += 5;
            }

            goto LABEL_42;
          }
        }

        while (v11 != v25)
        {
          sub_2993E2970(v8, v11);
          v11 += 5;
          v8 += 5;
        }

LABEL_42:
        sub_2993E2A0C(v29);
      }

      else
      {
        sub_2993E186C(a1, &a1[5 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v14 = a4 - v12;
        sub_2993E186C(v13, a2, a3, v14, v11, a6);

        sub_2993E2300(v8, v13, a2, a3, v12, v14, v11, a6);
      }
    }
  }
}

void sub_2993E1BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2993E2A0C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2993E1BE8(uint64_t *result, __int128 *a2, unsigned int (**a3)(__int128 *, uint64_t), unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5;
    v9 = result;
    if (a4 == 2)
    {
      v38 = a5;
      v39 = &v40;
      v40 = 0;
      v11 = a2 - 5;
      if ((*a3)(a2 - 5, result))
      {
        v12 = *v11;
        *(v5 + 16) = *(a2 - 8);
        *v5 = v12;
        *(a2 - 9) = 0;
        *(a2 - 8) = 0;
        *v11 = 0;
        *(v5 + 24) = 0;
        *(v5 + 32) = 0;
        *(v5 + 40) = 0;
        *(v5 + 24) = *(a2 - 56);
        *(v5 + 40) = *(a2 - 5);
        *(a2 - 6) = 0;
        *(a2 - 5) = 0;
        *(a2 - 7) = 0;
        *(v5 + 48) = *(a2 - 16);
        *(v5 + 64) = 0;
        *(v5 + 72) = 0;
        *(v5 + 56) = 0;
        *(v5 + 56) = *(a2 - 24);
        *(v5 + 72) = *(a2 - 1);
        *(a2 - 3) = 0;
        *(a2 - 2) = 0;
        *(a2 - 1) = 0;
        ++v40;
        v13 = v9[2];
        *(v5 + 80) = *v9;
        *(v5 + 96) = v13;
        v9[1] = 0;
        v9[2] = 0;
        *v9 = 0;
        *(v5 + 104) = 0;
        *(v5 + 112) = 0;
        *(v5 + 120) = 0;
        *(v5 + 104) = *(v9 + 3);
        *(v5 + 120) = v9[5];
        v9[4] = 0;
        v9[5] = 0;
        v9[3] = 0;
        *(v5 + 128) = *(v9 + 24);
        *(v5 + 144) = 0;
        *(v5 + 152) = 0;
        *(v5 + 136) = 0;
        v15 = v9[7];
        v14 = v9 + 7;
        *(v5 + 136) = v15;
        v16 = v14 + 1;
        v17 = v14 + 2;
      }

      else
      {
        v29 = *v9;
        *(v5 + 16) = v9[2];
        *v5 = v29;
        v9[1] = 0;
        v9[2] = 0;
        *v9 = 0;
        *(v5 + 24) = 0;
        *(v5 + 32) = 0;
        *(v5 + 40) = 0;
        *(v5 + 24) = *(v9 + 3);
        *(v5 + 40) = v9[5];
        v9[4] = 0;
        v9[5] = 0;
        v9[3] = 0;
        *(v5 + 48) = *(v9 + 24);
        *(v5 + 64) = 0;
        *(v5 + 72) = 0;
        *(v5 + 56) = 0;
        *(v5 + 56) = *(v9 + 7);
        *(v5 + 72) = v9[9];
        v9[7] = 0;
        v9[8] = 0;
        v9[9] = 0;
        ++v40;
        v30 = *(a2 - 8);
        *(v5 + 80) = *v11;
        *(v5 + 96) = v30;
        *(a2 - 9) = 0;
        *(a2 - 8) = 0;
        *v11 = 0;
        *(v5 + 104) = 0;
        *(v5 + 112) = 0;
        *(v5 + 120) = 0;
        *(v5 + 104) = *(a2 - 56);
        *(v5 + 120) = *(a2 - 5);
        *(a2 - 6) = 0;
        *(a2 - 5) = 0;
        *(a2 - 7) = 0;
        *(v5 + 128) = *(a2 - 16);
        *(v5 + 144) = 0;
        *(v5 + 152) = 0;
        *(v5 + 136) = 0;
        v32 = *(a2 - 3);
        v31 = a2 - 24;
        *(v5 + 136) = v32;
        v16 = v31 + 8;
        v17 = v31 + 16;
        v14 = v31;
      }

      *(v5 + 144) = *v16;
      *(v5 + 152) = *v17;
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
    }

    else
    {
      if (a4 == 1)
      {
        v10 = *result;
        *(a5 + 16) = result[2];
        *a5 = v10;
        result[1] = 0;
        result[2] = 0;
        *result = 0;
        *(a5 + 24) = 0;
        *(a5 + 32) = 0;
        *(a5 + 40) = 0;
        *(a5 + 24) = *(result + 3);
        *(a5 + 40) = result[5];
        result[4] = 0;
        result[5] = 0;
        result[3] = 0;
        *(a5 + 48) = *(result + 24);
        *(a5 + 64) = 0;
        *(a5 + 72) = 0;
        *(a5 + 56) = 0;
        *(a5 + 56) = *(result + 7);
        *(a5 + 72) = result[9];
        result[7] = 0;
        result[8] = 0;
        result[9] = 0;
        return result;
      }

      if (a4 <= 8)
      {
        if (result == a2)
        {
          return result;
        }

        v38 = a5;
        v39 = &v40;
        v18 = *result;
        *(a5 + 16) = result[2];
        *a5 = v18;
        result[1] = 0;
        result[2] = 0;
        *result = 0;
        *(a5 + 24) = 0;
        *(a5 + 32) = 0;
        *(a5 + 40) = 0;
        *(a5 + 24) = *(result + 3);
        *(a5 + 40) = result[5];
        result[4] = 0;
        result[5] = 0;
        result[3] = 0;
        *(a5 + 48) = *(result + 24);
        *(a5 + 64) = 0;
        *(a5 + 72) = 0;
        *(a5 + 56) = 0;
        *(a5 + 56) = *(result + 7);
        *(a5 + 72) = result[9];
        result[7] = 0;
        result[8] = 0;
        result[9] = 0;
        v40 = 1;
        v19 = (result + 10);
        if (result + 10 != a2)
        {
          v20 = 0;
          v21 = a5;
          do
          {
            v22 = v19;
            v23 = (v21 + 80);
            if ((*a3)(v19, v21))
            {
              *v23 = *v21;
              *(v21 + 96) = *(v21 + 16);
              *v21 = 0;
              *(v21 + 8) = 0;
              *(v21 + 104) = *(v21 + 24);
              *(v21 + 120) = *(v21 + 40);
              *(v21 + 16) = 0;
              *(v21 + 24) = 0;
              *(v21 + 32) = 0;
              *(v21 + 40) = 0;
              *(v21 + 128) = *(v21 + 48);
              *(v21 + 136) = *(v21 + 56);
              *(v21 + 152) = *(v21 + 72);
              *(v21 + 56) = 0;
              *(v21 + 64) = 0;
              ++v40;
              v24 = v5;
              *(v21 + 72) = 0;
              if (v21 != v5)
              {
                v25 = v20;
                while ((*a3)(v22, v5 + v25 - 80))
                {
                  sub_2993E2970(v5 + v25, (v5 + v25 - 80));
                  v25 -= 80;
                  if (!v25)
                  {
                    v24 = v5;
                    goto LABEL_19;
                  }
                }

                v24 = v5 + v25;
              }

LABEL_19:
              sub_2993E2970(v24, v22);
            }

            else
            {
              v26 = *v22;
              *(v21 + 96) = *(v22 + 2);
              *v23 = v26;
              *(v22 + 1) = 0;
              *(v22 + 2) = 0;
              *v22 = 0;
              *(v21 + 104) = 0;
              *(v21 + 112) = 0;
              *(v21 + 120) = 0;
              *(v21 + 104) = *(v9 + 13);
              *(v21 + 120) = v9[15];
              v9[14] = 0;
              v9[15] = 0;
              v9[13] = 0;
              *(v21 + 128) = *(v9 + 64);
              *(v21 + 144) = 0;
              *(v21 + 152) = 0;
              *(v21 + 136) = 0;
              *(v21 + 136) = *(v9 + 17);
              *(v21 + 152) = v9[19];
              v9[17] = 0;
              v9[18] = 0;
              v9[19] = 0;
              ++v40;
            }

            v19 = v22 + 5;
            v20 += 80;
            v21 += 80;
            v9 = v22;
          }

          while (v22 + 5 != a2);
        }

        goto LABEL_38;
      }

      v27 = &result[10 * (a4 >> 1)];
      sub_2993E186C(result, v27, a3, a4 >> 1, a5, a4 >> 1);
      sub_2993E186C(&v9[10 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), (v5 + 80 * (a4 >> 1)), a4 - (a4 >> 1));
      v38 = v5;
      v39 = &v40;
      v40 = 0;
      if (v27 == a2)
      {
        v28 = 0;
LABEL_32:
        if (v9 == v27)
        {
          goto LABEL_38;
        }

        do
        {
          v36 = *v9;
          *(v5 + 16) = v9[2];
          *v5 = v36;
          v9[1] = 0;
          v9[2] = 0;
          *v9 = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
          *(v5 + 40) = 0;
          *(v5 + 24) = *(v9 + 3);
          *(v5 + 40) = v9[5];
          v9[4] = 0;
          v9[5] = 0;
          v9[3] = 0;
          *(v5 + 48) = *(v9 + 24);
          *(v5 + 64) = 0;
          *(v5 + 72) = 0;
          *(v5 + 56) = 0;
          *(v5 + 56) = *(v9 + 7);
          *(v5 + 72) = v9[9];
          v9[7] = 0;
          v9[8] = 0;
          v9[9] = 0;
          v9 += 10;
          v5 += 80;
          ++v28;
        }

        while (v9 != v27);
      }

      else
      {
        v33 = &v9[10 * (a4 >> 1)];
        while (1)
        {
          if ((*a3)(v33, v9))
          {
            v34 = *v33;
            *(v5 + 16) = v33[2];
            *v5 = v34;
            v33[1] = 0;
            v33[2] = 0;
            *v33 = 0;
            *(v5 + 24) = 0;
            *(v5 + 32) = 0;
            *(v5 + 40) = 0;
            *(v5 + 24) = *(v33 + 3);
            *(v5 + 40) = v33[5];
            v33[4] = 0;
            v33[5] = 0;
            v33[3] = 0;
            *(v5 + 48) = *(v33 + 24);
            *(v5 + 64) = 0;
            *(v5 + 72) = 0;
            *(v5 + 56) = 0;
            *(v5 + 56) = *(v33 + 7);
            *(v5 + 72) = v33[9];
            v33[7] = 0;
            v33[8] = 0;
            v33[9] = 0;
            v33 += 10;
          }

          else
          {
            v35 = *v9;
            *(v5 + 16) = v9[2];
            *v5 = v35;
            v9[1] = 0;
            v9[2] = 0;
            *v9 = 0;
            *(v5 + 24) = 0;
            *(v5 + 32) = 0;
            *(v5 + 40) = 0;
            *(v5 + 24) = *(v9 + 3);
            *(v5 + 40) = v9[5];
            v9[4] = 0;
            v9[5] = 0;
            v9[3] = 0;
            *(v5 + 48) = *(v9 + 24);
            *(v5 + 64) = 0;
            *(v5 + 72) = 0;
            *(v5 + 56) = 0;
            *(v5 + 56) = *(v9 + 7);
            *(v5 + 72) = v9[9];
            v9[7] = 0;
            v9[8] = 0;
            v9[9] = 0;
            v9 += 10;
          }

          v28 = ++v40;
          v5 += 80;
          if (v9 == v27)
          {
            break;
          }

          if (v33 == a2)
          {
            goto LABEL_32;
          }
        }

        if (v33 == a2)
        {
          goto LABEL_38;
        }

        do
        {
          v37 = *v33;
          *(v5 + 16) = v33[2];
          *v5 = v37;
          v33[1] = 0;
          v33[2] = 0;
          *v33 = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
          *(v5 + 40) = 0;
          *(v5 + 24) = *(v33 + 3);
          *(v5 + 40) = v33[5];
          v33[4] = 0;
          v33[5] = 0;
          v33[3] = 0;
          *(v5 + 48) = *(v33 + 24);
          *(v5 + 64) = 0;
          *(v5 + 72) = 0;
          *(v5 + 56) = 0;
          *(v5 + 56) = *(v33 + 7);
          *(v5 + 72) = v33[9];
          v33[7] = 0;
          v33[8] = 0;
          v33[9] = 0;
          v33 += 10;
          v5 += 80;
          ++v28;
        }

        while (v33 != a2);
      }

      v40 = v28;
    }

LABEL_38:
    v38 = 0;
    return sub_2993E2A0C(&v38);
  }

  return result;
}

void sub_2993E22E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2993E2A0C(va);
  _Unwind_Resume(a1);
}

double sub_2993E2300(uint64_t result, __n128 *a2, __n128 *a3, uint64_t (**a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8)
{
  v61 = a6;
  if (a6)
  {
    while (a5 > a8 && v61 > a8)
    {
      if (!a5)
      {
        return v17;
      }

      v14 = 0;
      v15 = -a5;
      while (1)
      {
        v16 = &v14[result];
        if ((*a4)(a2, &v14[result]))
        {
          break;
        }

        v14 += 80;
        if (__CFADD__(v15++, 1))
        {
          return v17;
        }
      }

      v19 = v61;
      v58 = a3;
      v59 = a4;
      v57 = result;
      if (-v15 >= v61)
      {
        if (v15 == -1)
        {

          *&v17 = sub_2993E28D4(&v14[result], a2).n128_u64[0];
          return v17;
        }

        v24 = -v15 / 2;
        v21 = a2;
        if (a2 != a3)
        {
          v25 = result + 80 * v24;
          v26 = *v59;
          v27 = 0xCCCCCCCCCCCCCCCDLL * (a3 - a2);
          v21 = a2;
          do
          {
            v28 = &v21[80 * (v27 >> 1)];
            v29 = v26(v28, &v14[v25]);
            if (v29)
            {
              v27 += ~(v27 >> 1);
            }

            else
            {
              v27 >>= 1;
            }

            if (v29)
            {
              v21 = v28 + 80;
            }
          }

          while (v27);
          v24 = -v15 / 2;
          result = v57;
          v19 = v61;
        }

        v20 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - a2) >> 4);
        v22 = &v14[80 * v24 + result];
      }

      else
      {
        v20 = v61 / 2;
        v21 = &a2[5 * (v61 / 2)];
        v22 = a2;
        if (a2 - result != v14)
        {
          v23 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - result - v14) >> 4);
          v22 = &v14[result];
          do
          {
            if ((*v59)(v21, &v22[5 * (v23 >> 1)]))
            {
              v23 >>= 1;
            }

            else
            {
              v22 += 5 * (v23 >> 1) + 5;
              v23 += ~(v23 >> 1);
            }
          }

          while (v23);
          v20 = v61 / 2;
          v19 = v61;
        }

        v24 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - result - v14) >> 4);
      }

      v30 = v21;
      if (v22 != a2)
      {
        v30 = v22;
        if (a2 != v21)
        {
          v56 = v20;
          v55 = v24;
          sub_2993E28D4(v22, a2);
          v30 = v22 + 5;
          for (i = a2 + 5; i != v21; i += 5)
          {
            if (v30 == a2)
            {
              a2 = i;
            }

            sub_2993E28D4(v30, i);
            v30 += 5;
          }

          if (v30 != a2)
          {
            v32 = v30;
            v33 = a2;
            do
            {
              while (1)
              {
                sub_2993E28D4(v32, v33);
                v32 += 5;
                v33 += 5;
                if (v33 == v21)
                {
                  break;
                }

                if (v32 == a2)
                {
                  a2 = v33;
                }
              }

              v33 = a2;
            }

            while (v32 != a2);
          }

          v19 = v61;
          v24 = v55;
          v20 = v56;
        }
      }

      a5 = -(v24 + v15);
      v34 = v19 - v20;
      if ((v24 + v20) >= (v19 - (v24 + v20) - v15))
      {
        v35 = v24;
        v36 = -(v24 + v15);
        v37 = v20;
        sub_2993E2300(v30, v21, v58, v59, v36, v19 - v20, a7, a8);
        v21 = v22;
        v34 = v37;
        a5 = v35;
        a3 = v30;
      }

      else
      {
        sub_2993E2300(&v14[v57], v22, v30, v59, v24, v20, a7, a8);
        v16 = v30;
        a3 = v58;
      }

      v61 = v34;
      result = v16;
      a2 = v21;
      a4 = v59;
      if (!v34)
      {
        return v17;
      }
    }

    v62[0] = a7;
    v62[1] = &v63;
    v63 = 0;
    if (a5 <= v61)
    {
      if (a2 != result)
      {
        v47 = 0;
        v48 = 0;
        do
        {
          v49 = &a7[v47 / 0x10];
          v50 = (result + v47);
          v51 = *(result + v47);
          *(v49 + 2) = *(result + v47 + 16);
          *v49 = v51;
          v50->n128_u64[1] = 0;
          v50[1].n128_u64[0] = 0;
          v50->n128_u64[0] = 0;
          *(v49 + 3) = 0;
          *(v49 + 4) = 0;
          *(v49 + 5) = 0;
          *(v49 + 24) = *(result + v47 + 24);
          *(v49 + 5) = *(result + v47 + 40);
          v50[2].n128_u64[0] = 0;
          v50[2].n128_u64[1] = 0;
          v50[1].n128_u64[1] = 0;
          *(v49 + 24) = *(result + v47 + 48);
          *(v49 + 8) = 0;
          *(v49 + 9) = 0;
          *(v49 + 7) = 0;
          *(v49 + 56) = *(result + v47 + 56);
          *(v49 + 9) = *(result + v47 + 72);
          v50[3].n128_u64[1] = 0;
          v50[4].n128_u64[0] = 0;
          v50[4].n128_u64[1] = 0;
          ++v48;
          v47 += 80;
        }

        while (&v50[5] != a2);
        v63 = v48;
        v52 = &a7[v47 / 0x10];
        v53 = &a7[v47 / 0x10 - 5];
        while (a2 != a3)
        {
          if ((*a4)(a2, a7))
          {
            sub_2993E2970(result, a2);
            a2 += 5;
          }

          else
          {
            sub_2993E2970(result, a7);
            a7 += 5;
          }

          result += 80;
          if (v52 == a7)
          {
            goto LABEL_80;
          }
        }

        do
        {
          sub_2993E2970(result, a7);
          result += 80;
          v54 = v53 == a7;
          a7 += 5;
        }

        while (!v54);
      }
    }

    else if (a2 != a3)
    {
      v38 = 0;
      v39 = 0;
      do
      {
        v40 = &a7[v38];
        v41 = &a2[v38];
        v42 = a2[v38];
        *(v40 + 2) = a2[v38 + 1].n128_u64[0];
        *v40 = v42;
        *(v41 + 1) = 0;
        *(v41 + 2) = 0;
        *v41 = 0;
        *(v40 + 3) = 0;
        *(v40 + 4) = 0;
        *(v40 + 5) = 0;
        *(v40 + 24) = *(&a2[v38 + 1] + 8);
        *(v40 + 5) = a2[v38 + 2].n128_u64[1];
        *(v41 + 4) = 0;
        *(v41 + 5) = 0;
        *(v41 + 3) = 0;
        *(v40 + 24) = a2[v38 + 3].n128_u16[0];
        *(v40 + 8) = 0;
        *(v40 + 9) = 0;
        *(v40 + 7) = 0;
        *(v40 + 56) = *(&a2[v38 + 3] + 8);
        *(v40 + 9) = a2[v38 + 4].n128_u64[1];
        *(v41 + 7) = 0;
        *(v41 + 8) = 0;
        *(v41 + 9) = 0;
        ++v39;
        v38 += 5;
      }

      while (v41 + 80 != a3);
      v63 = v39;
      v43 = &a3[-5];
      v44 = &a7[v38];
      while (a2 != result)
      {
        v45 = (*a4)((v44 - 5), &a2[-5]);
        if (v45)
        {
          v46 = &a2[-5];
        }

        else
        {
          v46 = v44 - 5;
        }

        if (v45)
        {
          a2 -= 5;
        }

        else
        {
          v44 -= 5;
        }

        sub_2993E2970(v43, v46);
        v43 -= 80;
        if (v44 == a7)
        {
          goto LABEL_80;
        }
      }

      while (v44 != a7)
      {
        v44 -= 5;
        sub_2993E2970(v43, v44);
        v43 -= 80;
      }
    }

LABEL_80:
    sub_2993E2A0C(v62);
  }

  return v17;
}

void sub_2993E28BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_2993E2A0C(va);
  _Unwind_Resume(a1);
}

__n128 sub_2993E28D4(__n128 *a1, __n128 *a2)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  v4 = a2[1].n128_u64[0];
  *a1 = *a2;
  a1[1].n128_u64[0] = v4;
  *a2 = result;
  a2[1].n128_u64[0] = v2;
  v5 = a1[1].n128_u64[1];
  a1[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v5;
  v6 = a1[2].n128_u64[0];
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v6;
  v7 = a1[2].n128_u64[1];
  a1[2].n128_u64[1] = a2[2].n128_u64[1];
  a2[2].n128_u64[1] = v7;
  LOWORD(v7) = a1[3].n128_u16[0];
  a1[3].n128_u16[0] = a2[3].n128_u16[0];
  a2[3].n128_u16[0] = v7;
  v8 = a1[3].n128_u64[1];
  a1[3].n128_u64[1] = a2[3].n128_u64[1];
  a2[3].n128_u64[1] = v8;
  v9 = a1[4].n128_u64[0];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[4].n128_u64[0] = v9;
  v10 = a1[4].n128_u64[1];
  a1[4].n128_u64[1] = a2[4].n128_u64[1];
  a2[4].n128_u64[1] = v10;
  return result;
}

__n128 sub_2993E2970(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  sub_29922323C(a1 + 24, (a2 + 24));
  v5 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 24);
  if (v5)
  {
    *(a1 + 64) = v5;
    operator delete(v5);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a1 + 72) = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t *sub_2993E2A0C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 32);
      do
      {
        v6 = v5[3];
        if (v6)
        {
          v5[4] = v6;
          operator delete(v6);
        }

        v7 = *(v5 - 1);
        if (v7)
        {
          *v5 = v7;
          operator delete(v7);
        }

        if (*(v5 - 9) < 0)
        {
          operator delete(*(v5 - 4));
        }

        ++v4;
        v5 += 10;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

const void **sub_2993E2A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, CFArrayRef *a3@<X2>, uint64_t a4@<X3>, const void **a5@<X8>)
{
  *a5 = &unk_2A1F65C80;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = 0;
  return sub_2993E2B30(a5, a1, a2, a3, a4);
}

void sub_2993E2B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v12;
  *v10 = v11;
  a10 = v13;
  sub_29922CB20(&a10);
  _Unwind_Resume(a1);
}

const void **sub_2993E2B30(const void **result, uint64_t a2, uint64_t a3, CFArrayRef *a4, uint64_t a5)
{
  v13[4] = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v5 = a5;
    v9 = result;
    v10 = result + 1;
    v11 = (*(*result + 3))(result);
    sub_2993C9E5C(v10, v11 + a3);
    v12 = 0;
    do
    {
      v13[0] = &unk_2A1F79588;
      v13[1] = v9;
      v13[3] = v13;
      sub_2993E2E40(v11 + v12, a2, a3, v12, a4, v13, v5);
      result = sub_2993E3B04(v13);
      ++v12;
    }

    while (a3 != v12);
  }

  return result;
}

void sub_2993E2C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2993E3B04(va);
  _Unwind_Resume(a1);
}

void sub_2993E2C64(const void **__return_ptr a1@<X8>, CFArrayRef theArray@<X0>, uint64_t a3@<X1>)
{
  *a1 = &unk_2A1F65C80;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  sub_2993E2CF0(a1, theArray, a3);
}

void sub_2993E2CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v12;
  *v10 = v11;
  a10 = v13;
  sub_29922CB20(&a10);
  _Unwind_Resume(a1);
}

void sub_2993E2CF0(const void **a1, CFArrayRef theArray, uint64_t a3)
{
  v3 = a3;
  v11[4] = *MEMORY[0x29EDCA608];
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v7 = Count;
    v8 = (*(*a1 + 3))(a1);
    sub_2993C9E5C(a1 + 1, v8 + v7);
    if (v7 >= 1)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = *(CFArrayGetValueAtIndex(theArray, i) + 3);
        v11[0] = &off_2A1F79618;
        v11[1] = a1;
        v11[3] = v11;
        sub_2993E316C(v8 + i, v10, i, v11, v3);
        sub_2993E3B04(v11);
      }
    }
  }
}

void sub_2993E2E40(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, CFArrayRef *a5, uint64_t a6, int a7)
{
  v39 = *(a2 + 2 * a4);
  sub_2993E3850(*(a6 + 24), a1, &v39, 1, 0.0);
  if (a7)
  {
    sub_29939FE38(v39, &v37);
    v12 = v37;
    for (i = v38; v12 != i; v12 += 24)
    {
      if (v12[23] < 0)
      {
        sub_29922C89C(__p, *v12, *(v12 + 1));
      }

      else
      {
        v14 = *v12;
        v36 = *(v12 + 2);
        *__p = v14;
      }

      if (v36 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      if (v36 >= 0)
      {
        v16 = SHIBYTE(v36);
      }

      else
      {
        v16 = __p[1];
      }

      sub_2993E3850(*(a6 + 24), a1, v15, v16, 0.0);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }
    }

    __p[0] = &v37;
    sub_299212B90(__p);
  }

  else
  {
    sub_29939FBB8(v39, &v37);
    v17 = v37;
    v18 = v38;
    if (v37 != v38)
    {
      do
      {
        LOWORD(__p[0]) = *v17;
        if (v39 == LOWORD(__p[0]))
        {
          v19 = 0.0;
        }

        else
        {
          v19 = -2.7000001;
        }

        sub_2993E3850(*(a6 + 24), a1, __p, 1, v19);
        v17 += 2;
      }

      while (v17 != v18);
      v17 = v37;
    }

    if (v17)
    {
      v38 = v17;
      operator delete(v17);
    }
  }

  if (a5)
  {
    v20 = sub_29939F19C(v39);
    v21 = -0.2;
    if (a4 >= 0x28)
    {
      v21 = 0.0;
    }

    if (a4 >= 0x14)
    {
      v22 = v21;
    }

    else
    {
      v22 = -1.0;
    }

    v23 = sub_299308694(a5, a4);
    if (v23)
    {
      v24 = *v23;
      if (*v23)
      {
        v25 = 0;
        v26 = *(v23 + 1);
        v27 = (v23 + 8);
        do
        {
          LOWORD(v37) = v24;
          if (v20)
          {
            v28 = sub_29939F19C(v24);
          }

          else
          {
            v28 = 1;
          }

          if ((((v24 & 0xFFDF) - 65) < 0x1Au || (((v24 - 12593) < 0x33u) & v28) != 0) && v39 != v24)
          {
            v30 = *(v27 - 1) - v26;
            if (v30 >= v22)
            {
              v31 = ((v24 & 0xFFDF) - 65);
              v32 = v30 <= -0.00001 ? v30 * 4.0 + -0.3 : 0.0;
              sub_2993E3850(*(a6 + 24), a1, &v37, 1, v32);
              v33 = v25 + 1;
              if (v31 < 0x1A || (++v25, v33 > 2))
              {
                v34 = v33 <= 2 ? 0 : 6;
                if (v31 < 0x1A)
                {
                  v34 = 8;
                }

                if ((v34 | 8) != 8)
                {
                  break;
                }
              }
            }
          }

          v29 = *v27;
          v27 += 2;
          v24 = v29;
        }

        while (v29);
      }
    }
  }
}

void sub_2993E3120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17)
{
  __p = &a16;
  sub_299212B90(&__p);
  _Unwind_Resume(a1);
}

void sub_2993E316C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, int a5)
{
  v38 = (*(*a2 + 8))(a2);
  sub_2993E3850(*(a4 + 24), a1, &v38, 1, 0.0);
  if (a5)
  {
    sub_29939FE38(v38, &v36);
    v10 = v36;
    for (i = v37; v10 != i; v10 += 24)
    {
      if (v10[23] < 0)
      {
        sub_29922C89C(__p, *v10, *(v10 + 1));
      }

      else
      {
        v12 = *v10;
        v35 = *(v10 + 2);
        *__p = v12;
      }

      if (v35 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v35 >= 0)
      {
        v14 = SHIBYTE(v35);
      }

      else
      {
        v14 = __p[1];
      }

      sub_2993E3850(*(a4 + 24), a1, v13, v14, 0.0);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p[0]);
      }
    }

    __p[0] = &v36;
    sub_299212B90(__p);
  }

  else
  {
    sub_29939FBB8(v38, &v36);
    v15 = v36;
    v16 = v37;
    if (v36 != v37)
    {
      do
      {
        LOWORD(__p[0]) = *v15;
        if (v38 == LOWORD(__p[0]))
        {
          v17 = 0.0;
        }

        else
        {
          v17 = -2.7000001;
        }

        sub_2993E3850(*(a4 + 24), a1, __p, 1, v17);
        v15 += 2;
      }

      while (v15 != v16);
      v15 = v36;
    }

    if (v15)
    {
      v37 = v15;
      operator delete(v15);
    }
  }

  v19 = a2[1];
  v18 = a2[2];
  if (v19 != v18)
  {
    v20 = sub_29939F19C(v38);
    v21 = 0;
    v22 = -0.2;
    if (a3 >= 0x28)
    {
      v22 = 0.0;
    }

    if (a3 >= 0x14)
    {
      v23 = v22;
    }

    else
    {
      v23 = -1.0;
    }

    v24 = *(v19 + 4);
    v25 = v19;
    do
    {
      v26 = *v25;
      if (v20)
      {
        v27 = sub_29939F19C(*v25);
      }

      else
      {
        v27 = 1;
      }

      if ((((v26 & 0xFFDF) - 65) < 0x1Au || (((v26 - 12593) < 0x33u) & v27) != 0) && v26 != v38)
      {
        v29 = v25[1] - v24;
        if (v29 >= v23)
        {
          v30 = ((v26 & 0xFFDF) - 65);
          v31 = v29 <= -0.00001 ? v29 * 4.0 + -0.3 : 0.0;
          sub_2993E3850(*(a4 + 24), a1, v19, 1, v31);
          v32 = v21 + 1;
          if (v30 < 0x1A || (++v21, v32 >= 3))
          {
            v33 = v32 <= 2 ? 0 : 6;
            if (v30 < 0x1A)
            {
              v33 = 7;
            }

            if (v33 != 7 && v33)
            {
              break;
            }
          }
        }
      }

      v25 += 2;
      v19 += 8;
    }

    while (v25 != v18);
  }
}

void sub_2993E3460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17)
{
  __p = &a16;
  sub_299212B90(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E34AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, CFArrayRef *a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v12[4] = *MEMORY[0x29EDCA608];
  result = LXLatticeCreateMutable();
  *a5 = result;
  if (a2)
  {
    v11 = 0;
    do
    {
      v12[0] = &unk_2A1F79698;
      v12[1] = a5;
      v12[3] = v12;
      sub_2993E2E40(v11, a1, a2, v11, a3, v12, a4);
      result = sub_2993E3B04(v12);
      ++v11;
    }

    while (a2 != v11);
  }

  return result;
}

void sub_2993E3598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2993E3B04(va);
  sub_2992E3B48(v3, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E35B8@<X0>(const __CFArray *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v10[4] = *MEMORY[0x29EDCA608];
  Count = CFArrayGetCount(a1);
  result = LXLatticeCreateMutable();
  *a3 = result;
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v9 = *(CFArrayGetValueAtIndex(a1, i) + 3);
      v10[0] = &unk_2A1F79718;
      v10[1] = a3;
      v10[3] = v10;
      sub_2993E316C(i, v9, i, v10, a2);
      result = sub_2993E3B04(v10);
    }
  }

  return result;
}

uint64_t *sub_2993E36C4@<X0>(uint64_t *__return_ptr a1@<X8>, CFArrayRef theArray@<X0>)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  while (1)
  {
    result = CFArrayGetCount(theArray);
    if (v4 >= result)
    {
      return result;
    }

    v6 = *(CFArrayGetValueAtIndex(theArray, v4) + 3);
    v7 = (*(*v6 + 8))(v6);
    v8 = v7;
    if ((v7 - 12593) > 0x32 || (v9 = v6[2], v10 = v6[1], v10 == v9))
    {
      sub_2992174C4(a1, v7);
      ++v4;
    }

    else
    {
      v11 = v10[1];
      while (1)
      {
        v12 = *v10;
        v13 = ((v12 & 0xFFDF) - 65) > 0x19u || v12 == v7;
        if (!v13 && v11 - v10[1] < 0.0001)
        {
          break;
        }

        v10 += 2;
        if (v10 == v9)
        {
          goto LABEL_15;
        }
      }

      sub_2992174C4(a1, v12);
LABEL_15:
      v14 = *(a1 + 23);
      v15 = v4 + 1;
      if ((v14 & 0x80u) != 0)
      {
        v14 = a1[1];
      }

      v4 = v14;
      if (v14 != v15)
      {
        sub_2992174C4(a1, v8);
        v4 = v15;
      }
    }
  }
}

void sub_2993E3820(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993E3850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9[0] = a3;
  v9[1] = a4;
  v8 = a2;
  v7 = a5;
  v6 = 1;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, &v8, v9, &v7, &v6);
}

uint64_t sub_2993E392C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F79588;
  a2[1] = v2;
  return result;
}

uint64_t sub_2993E397C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F795F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993E39C8(uint64_t a1, uint64_t a2, void *__src, unint64_t a4, uint64_t a5, double a6)
{
  v11 = a4;
  v12 = __src;
  v10 = a6;
  v9 = a5;
  v6 = (a1 + 24 * a2);
  v7 = v6[1];
  if (v7 >= v6[2])
  {
    result = sub_2993910C4(v6, &v12, &v11, &v10, &v9);
  }

  else
  {
    sub_2993E3A50(v6[1], __src, a4, a5, a6);
    result = v7 + 40;
    v6[1] = v7 + 40;
  }

  v6[1] = result;
  return result;
}

double *sub_2993E3A50(double *__dst, void *__src, unint64_t a3, uint64_t a4, double a5)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_299212A30();
  }

  v8 = __dst;
  if (a3 >= 0xB)
  {
    if ((a3 | 3) == 0xB)
    {
      v10 = 13;
    }

    else
    {
      v10 = (a3 | 3) + 1;
    }

    sub_299212A48(__dst, v10);
  }

  *(__dst + 23) = a3;
  v9 = __dst;
  if (a3)
  {
    __dst = memmove(__dst, __src, 2 * a3);
  }

  *(v9 + a3) = 0;
  v8[3] = a5;
  *(v8 + 4) = a4;
  return __dst;
}

uint64_t sub_2993E3B04(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2993E3BF4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_2A1F79618;
  a2[1] = v2;
  return result;
}

uint64_t sub_2993E3C44(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79678))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993E3D00(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F79698;
  a2[1] = v2;
  return result;
}

void sub_2993E3D2C(uint64_t a1, uint64_t *a2, uint64_t a3, double *a4, uint64_t *a5)
{
  v5 = CFStringCreateWithCharacters(0, *a3, *(a3 + 8));
  LXLatticeAddNode();
  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_2993E3DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E3DC8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F796F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993E3E84(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F79718;
  a2[1] = v2;
  return result;
}

void sub_2993E3EB0(uint64_t a1, uint64_t *a2, uint64_t a3, double *a4, uint64_t *a5)
{
  v5 = CFStringCreateWithCharacters(0, *a3, *(a3 + 8));
  LXLatticeAddNode();
  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_2993E3F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E3F4C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79778))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_2993E3F98(void *a1, void *a2, unint64_t a3, int a4)
{
  v5 = a2;
  *a1 = 0;
  if (a4)
  {
    if (*a2 != 0x11181BE3ELL)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_2993E4050(exception);
      __cxa_throw(exception, off_29EF0BC88, MEMORY[0x29EDC9360]);
    }

    v5 = a2 + 1;
    a3 -= 8;
  }

  sub_29932265C(0, 0, v5, a3);
  *a1 = v7;
  return a1;
}

std::logic_error *sub_2993E4050(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "header check failed");
  result->__vftable = (MEMORY[0x29EDC95F0] + 16);
  return result;
}

uint64_t *sub_2993E408C(uint64_t *a1, uint64_t **a2, _DWORD **a3)
{
  *a1 = 0;
  v5 = malloc_type_malloc(0x48uLL, 0x108004094C1867FuLL);
  v6 = v5;
  if (v5)
  {
    v5[8] = 0;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *v5 = 0u;
    *(v5 + 1) = 0u;
  }

  __p = 0;
  v34 = 0;
  v35 = 0;
  __src = 0;
  v31 = 0;
  v32 = 0;
  v7 = *a2;
  v8 = a2[1];
  do
  {
    v9 = v7;
    if (*(v7 + 23) < 0)
    {
      v9 = *v7;
    }

    v10 = v34;
    if (v34 >= v35)
    {
      v12 = (v34 - __p) >> 3;
      if ((v12 + 1) >> 61)
      {
        sub_299212A8C();
      }

      v13 = (v35 - __p) >> 2;
      if (v13 <= v12 + 1)
      {
        v13 = v12 + 1;
      }

      if (v35 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        sub_2991C1E60(&__p, v14);
      }

      v15 = (8 * v12);
      *v15 = v9;
      v11 = 8 * v12 + 8;
      v16 = v15 - (v34 - __p);
      memcpy(v16, __p, v34 - __p);
      v17 = __p;
      __p = v16;
      v34 = v11;
      v35 = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v34 = v9;
      v11 = (v10 + 8);
    }

    v34 = v11;
    v18 = *(v7 + 23);
    if (v18 < 0)
    {
      v18 = *(v7 + 8);
    }

    v19 = v31;
    if (v31 >= v32)
    {
      v21 = __src;
      v22 = v31 - __src;
      v23 = (v31 - __src) >> 3;
      v24 = v23 + 1;
      if ((v23 + 1) >> 61)
      {
        sub_299212A8C();
      }

      v25 = v32 - __src;
      if ((v32 - __src) >> 2 > v24)
      {
        v24 = v25 >> 2;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        sub_299236FB8(&__src, v26);
      }

      *(8 * v23) = v18;
      v20 = 8 * v23 + 8;
      memcpy(0, v21, v22);
      v27 = __src;
      __src = 0;
      v31 = v20;
      v32 = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v31 = v18;
      v20 = (v19 + 8);
    }

    v31 = v20;
    v7 += 24;
  }

  while (v7 != v8);
  sub_2992AA48C(v6, (v34 - __p) >> 3, __p, __src, *a3);
  *a1 = v6;
  if (__src)
  {
    v31 = __src;
    operator delete(__src);
  }

  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_2993E42DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2993E4318@<X0>(void *a1@<X0>, _DWORD **a2@<X1>, unsigned __int8 *a3@<X2>, unint64_t a4@<X3>, void ***a5@<X8>)
{
  if (a3 && a4)
  {
    v10 = sub_2992B0F2C();
    v11 = *(v10 + 8 * (**a2 & 3));
    result = (*(*v11 + 16))(v11, *a1, a2, *a3);
    if (a4 >= 2)
    {
      v13 = a4 - 1;
      v14 = a3 + 1;
      do
      {
        if (*a5 == 0 || (**a5 & 3) == 0)
        {
          break;
        }

        (*(**(v10 + 8 * (**a5 & 3)) + 16))(&v17);
        sub_2992B0BA8(a5, &v17);
        v15 = v18;
        v18 = 0;
        if (v15)
        {
          v16 = sub_2992A5BE8(v15);
          MEMORY[0x29C29BFB0](v16, 0x20C4093837F09);
        }

        result = v17;
        v17 = 0;
        if (result)
        {
          result = MEMORY[0x29C29BFB0](result, 0x1010C40E4C6A875);
        }

        ++v14;
        --v13;
      }

      while (v13);
    }
  }

  else
  {

    return sub_2992B0984(a5, 0);
  }

  return result;
}

uint64_t sub_2993E44C8(void *a1, _DWORD **a2)
{
  v4 = sub_2992B0F2C();
  if (!*a1)
  {
    return 0;
  }

  v5 = *(**(v4 + 8 * (**a2 & 3)) + 40);

  return v5();
}

uint64_t BurstTrieCompile(uint64_t a1, char *a2, uint64_t a3)
{
  v40[19] = *MEMORY[0x29EDCA608];
  v33[0] = &unk_2A1F68348;
  v33[1] = 0;
  sub_299257A28(v33, "UTF-8", a2);
  sub_2991C70DC(v38, a1, 8);
  v5 = v38[0];
  if ((v39[*(v38[0] - 24) + 16] & 5) != 0)
  {
    v6 = 1;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    memset(v29, 0, sizeof(v29));
    __src = 0;
    v27 = 0;
    v28 = 0;
    v7 = MEMORY[0x29EDC93D0];
    while (1)
    {
      std::ios_base::getloc((v38 + *(v5 - 24)));
      v8 = std::locale::use_facet(&v34, v7);
      (v8->__vftable[2].~facet_0)(v8, 10);
      std::locale::~locale(&v34);
      v9 = std::istream::getline();
      if ((*(v9 + *(*v9 - 24) + 32) & 5) != 0)
      {
        break;
      }

      sub_2992553B4(v37, &v30, 2uLL);
      if (*(v30 + 23) < 0)
      {
        sub_2991A110C(__p, *v30, *(v30 + 1));
      }

      else
      {
        v10 = *v30;
        __p[0].__r_.__value_.__r.__words[2] = *(v30 + 2);
        *&__p[0].__r_.__value_.__l.__data_ = v10;
      }

      sub_299257B30(v33, __p);
      sub_29924BA6C(v29, __p);
      v11 = v30 + 24;
      if (*(v30 + 47) < 0)
      {
        v11 = *v11;
      }

      v12 = atoi(v11);
      v13 = v27;
      if (v27 >= v28)
      {
        v15 = __src;
        v16 = v27 - __src;
        v17 = (v27 - __src) >> 2;
        v18 = v17 + 1;
        if ((v17 + 1) >> 62)
        {
          sub_299212A8C();
        }

        v19 = v28 - __src;
        if ((v28 - __src) >> 1 > v18)
        {
          v18 = v19 >> 1;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v20 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          sub_2992F86B0(&__src, v20);
        }

        *(4 * v17) = v12;
        v14 = 4 * v17 + 4;
        memcpy(0, v15, v16);
        v21 = __src;
        __src = 0;
        v27 = v14;
        v28 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v27 = v12;
        v14 = (v13 + 4);
      }

      v27 = v14;
      v22 = v30;
      v23 = v31;
      while (v23 != v22)
      {
        v24 = *(v23 - 1);
        v23 -= 3;
        if (v24 < 0)
        {
          operator delete(*v23);
        }
      }

      v31 = v22;
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      v5 = v38[0];
    }

    sub_2993E408C(&v34, v29, &__src);
    sub_2991EB0E0(__p, a3, 20);
    if ((__p[1].__r_.__value_.__s.__data_[*(__p[0].__r_.__value_.__r.__words[0] - 24) + 8] & 5) != 0)
    {
      v6 = 1;
    }

    else
    {
      std::ostream::write();
      std::ostream::write();
      if (!std::filebuf::close())
      {
        std::ios_base::clear((__p + *(__p[0].__r_.__value_.__r.__words[0] - 24)), *(&__p[1].__r_.__value_.__r.__words[1] + *(__p[0].__r_.__value_.__r.__words[0] - 24)) | 4);
      }

      v6 = 0;
    }

    __p[0].__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9520];
    *(__p[0].__r_.__value_.__r.__words + *(__p[0].__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x29EDC9520] + 24);
    MEMORY[0x29C29BBF0](&__p[0].__r_.__value_.__r.__words[1]);
    std::ostream::~ostream();
    MEMORY[0x29C29BF00](&v36);
    if (v34.__locale_)
    {
      sub_2993226F0(v34.__locale_);
    }

    if (__src)
    {
      v27 = __src;
      operator delete(__src);
    }

    __p[0].__r_.__value_.__r.__words[0] = v29;
    sub_299212B90(__p);
    __p[0].__r_.__value_.__r.__words[0] = &v30;
    sub_299212B90(__p);
  }

  v38[0] = *MEMORY[0x29EDC9518];
  *(v38 + *(v38[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29BBF0](v39);
  std::istream::~istream();
  MEMORY[0x29C29BF00](v40);
  sub_299257C90(v33);
  return v6;
}

void sub_2993E4AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::locale a22, char *a23)
{
  if (a22.__locale_)
  {
    sub_2993226F0(a22.__locale_);
  }

  if (__p)
  {
    operator delete(__p);
  }

  a23 = &a14;
  sub_299212B90(&a23);
  a23 = &a17;
  sub_299212B90(&a23);
  sub_2991D64B0(&STACK[0x6B0], MEMORY[0x29EDC9518]);
  MEMORY[0x29C29BF00](&STACK[0x858]);
  sub_299257C90(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E4BB0(uint64_t a1, uint64_t a2, int a3, void *a4, unsigned int a5)
{
  LODWORD(v5) = a5;
  if (*(a2 + 109) != 1)
  {
    __src = 0;
    v11 = sub_2993E4CD4(a1, a2, &__src);
    if (v11 >= v5)
    {
      v5 = v5;
    }

    else
    {
      v5 = v11;
    }

    v8 = __src;
    if (v5)
    {
      v12 = __src == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return v5;
    }

    v13 = 2 * v5;
LABEL_23:
    memcpy(a4, v8, v13);
    return v5;
  }

  v8 = *(a2 + 48);
  v9 = *(a2 + 88);
  v10 = v9 >> 1;
  if (!a3 || v9 < 2)
  {
    if (v10 >= a5)
    {
      v5 = a5;
    }

    else
    {
      v5 = v10;
    }

    v13 = (2 * v5);
    goto LABEL_23;
  }

  if (!v8)
  {
    v10 = 0;
  }

  v17[0] = v8;
  v17[1] = v10;
  sub_299216DAC(v17, 0, 0, 0, &__src);
  if (v20 < 0)
  {
    if (v19 >= v5)
    {
      v15 = v5;
    }

    else
    {
      v15 = v19;
    }

    v16 = __src;
    memcpy(a4, __src, 2 * v15);
    operator delete(v16);
    return v15;
  }

  else
  {
    if (v20 >= v5)
    {
      v5 = v5;
    }

    else
    {
      v5 = v20;
    }

    memcpy(a4, &__src, 2 * (v5 & 0x7FFF));
  }

  return v5;
}

uint64_t sub_2993E4CD4(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  v3 = *(a2 + 56);
  if (v3)
  {
    *a3 = v3;
    LODWORD(result) = -1;
    do
    {
      v5 = *v3++;
      result = (result + 1);
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    (*(*a1 + 96))(a1);
    return v6 >> 1;
  }

  return result;
}

uint64_t sub_2993E4F9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    v4 = 0;
    result = 0;
    do
    {
      if (*(v3 + 48) && *(v3 + 88))
      {
        ++v4;
        if (a2 && a3 + a2 < v4)
        {
          return result;
        }

        if (v4 > a3)
        {
          result = (result + *(v3 + 86));
        }
      }

      v3 = *(v3 + 8);
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2993E4FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  (*(*a1 + 264))(a1, a4 != 0);
  if (a4)
  {
    v12 = *a4;
    v13 = 2 * a4[1];
    v14 = *(a4 + 16);
    v15 = *(a4 + 17);
    v16 = *(*a1 + 56);

    return v16(a1, v12, v13, a5, a6, v14, v15);
  }

  else
  {
    v18 = *(*a1 + 48);

    return v18(a1, a2, 2 * a3, a5, a6);
  }
}

uint64_t sub_2993E5110@<X0>(uint64_t a1@<X0>, void *a5@<X8>)
{
  result = (*(*a1 + 240))(a1);
  if (!result)
  {
    sub_2993D4C48();
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  return result;
}

void sub_2993E5688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_299273CA0(&a13);
  (*(*v23 + 336))(v23);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E570C(__int128 **a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1[1] - *a1) >> 6;
  v4 = v3 + 1;
  if ((v3 + 1) >> 58)
  {
    sub_299212A8C();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v4)
  {
    v4 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v21[4] = a1;
  if (v7)
  {
    if (!(v7 >> 58))
    {
      operator new();
    }

    sub_29919600C();
  }

  v8 = v3 << 6;
  *v8 = *a2;
  v9 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v10 = *(a3 + 16);
  *(v8 + 24) = *a3;
  *(v8 + 16) = v9;
  *(v8 + 40) = v10;
  *(v8 + 56) = *(a3 + 32);
  v12 = *a1;
  v11 = a1[1];
  v13 = *a1 + v8 - v11;
  if (*a1 != v11)
  {
    v14 = *a1;
    v15 = *a1 + v8 - v11;
    do
    {
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *v14 = 0;
      v17 = *(v14 + 24);
      v18 = *(v14 + 40);
      *(v15 + 56) = *(v14 + 7);
      *(v15 + 40) = v18;
      *(v15 + 24) = v17;
      v14 += 4;
      v15 += 64;
    }

    while (v14 != v11);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 4;
    }

    while (v12 != v11);
    v12 = *a1;
  }

  *a1 = v13;
  a1[1] = (v8 + 64);
  v19 = a1[2];
  a1[2] = 0;
  v21[2] = v12;
  v21[3] = v19;
  v21[0] = v12;
  v21[1] = v12;
  sub_2993E589C(v21);
  return v8 + 64;
}

uint64_t sub_2993E589C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 8;
      *(a1 + 16) = v2 - 8;
      if (*(v2 - 41) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2993E5900(uint64_t a1@<X0>, uint64_t a2@<X1>, CFArrayRef *a3@<X2>, const void **a4@<X8>)
{
  *a4 = &unk_2A1F65C80;
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = 0;
  sub_2993E5990(a4, a1, a2, a3);
}

void sub_2993E5970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v12;
  *v10 = v11;
  a10 = v13;
  sub_29922CB20(&a10);
  _Unwind_Resume(a1);
}

void sub_2993E5990(const void **a1, uint64_t a2, uint64_t a3, CFArrayRef *a4)
{
  v35 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v7 = a1 + 1;
    v8 = (*(*a1 + 3))(a1);
    sub_2993C9E5C(v7, v8 + a3);
    for (i = 0; i != a3; ++i)
    {
      __src = *(a2 + 2 * i);
      sub_2993E5F60(a1, i + v8, &__src, 1, 1, 0.0);
      v10 = __src;
      if ((atomic_load_explicit(&qword_2A1461860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461860))
      {
        v32 = xmmword_29942ACA0;
        v33 = 237309475;
        qword_2A1461870 = 0;
        qword_2A1461878 = 0;
        qword_2A1461868 = 0;
        sub_2993E6178(&v32, v34);
      }

      v11 = qword_2A1461868;
      if (qword_2A1461868 != qword_2A1461870)
      {
        while (*v11 != v10 && v11[1] != v10)
        {
          v11 += 2;
          if (v11 == qword_2A1461870)
          {
            goto LABEL_13;
          }
        }
      }

      if (v11 == qword_2A1461870)
      {
LABEL_13:
        v13 = 0;
      }

      else
      {
        v13 = v11[*v11 == v10];
      }

      LOWORD(v32) = v13;
      v14 = dbl_29942ACB0[__src == v13];
      v15 = v13 != 0;
      if (a4)
      {
        if (i >= 0x28)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = -0.2;
        }

        if (i >= 0x14)
        {
          v17 = v16;
        }

        else
        {
          v17 = -1.0;
        }

        v18 = sub_299308694(a4, i);
        if (!v18)
        {
LABEL_36:
          if ((v15 & 1) == 0)
          {
            continue;
          }

LABEL_39:
          sub_2993E5F60(a1, i + v8, &v32, 1, 1, v14);
          continue;
        }

        v19 = *v18;
        if (*v18)
        {
          v20 = 0;
          v21 = *(v18 + 1);
          v22 = (v18 + 8);
          while (1)
          {
            v30 = v19;
            v23 = *(v22 - 1) - v21;
            if (v19 != __src && v23 >= v17)
            {
              v25 = v23 * 4.0 + -0.3;
              v26 = v19 != v32;
              if (v25 < v14 && v19 == v32)
              {
                v25 = v14;
              }

              sub_2993E5F60(a1, i + v8, &v30, 1, 1, v25);
              v15 &= v26;
              if (v20 > 1)
              {
                goto LABEL_36;
              }

              ++v20;
            }

            v28 = *v22;
            v22 += 2;
            v19 = v28;
            if (!v28)
            {
              goto LABEL_36;
            }
          }
        }
      }

      if (v13)
      {
        goto LABEL_39;
      }
    }
  }
}

void sub_2993E5CC4(const __CFArray *a1@<X0>, void *a2@<X8>)
{
  *a2 = &unk_2A1F65C80;
  a2[1] = 0;
  v4 = (a2 + 1);
  a2[2] = 0;
  a2[3] = 0;
  Count = CFArrayGetCount(a1);
  sub_2993C9E5C(v4, Count);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v8 = ValueAtIndex[3];
      v9 = v8[1];
      v10 = v8[2];
      if (v9 == v10)
      {
        __src[0] = (*(*v8 + 8))(ValueAtIndex[3]);
        sub_2993E5F60(a2, i, __src, 1, 1, 0.0);
        v9 = v8[1];
        v10 = v8[2];
      }

      while (v9 != v10)
      {
        sub_2993E5F60(a2, i, v9, 1, 1, 0.0);
        v9 += 8;
      }
    }
  }
}

void sub_2993E5DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v3 = v4;
  sub_29922CB20(va);
  _Unwind_Resume(a1);
}

__int16 *sub_2993E5E20@<X0>(__int16 *result@<X0>, unint64_t a2@<X1>, const void **a3@<X8>, float a4@<S0>)
{
  *a3 = &unk_2A1F65C80;
  a3[1] = 0;
  v4 = a3 + 1;
  a3[2] = 0;
  a3[3] = 0;
  if (a2)
  {
    v6 = a2;
    v7 = result;
    sub_2993C9E5C(a3 + 1, a2);
    v8 = 0;
    v9 = a4 / v6;
    do
    {
      v11 = *v7++;
      v10 = v11;
      v18 = v11;
      v17 = &v18;
      v16 = 1;
      v15 = v9;
      v14 = 1;
      v12 = *v4 + v8;
      v13 = *(v12 + 8);
      if (v13 >= *(v12 + 16))
      {
        result = sub_2993E622C(*v4 + v8, &v17, &v16, &v15, &v14);
      }

      else
      {
        *(v13 + 23) = 1;
        *v13 = v10;
        *(v13 + 2) = 0;
        *(v13 + 24) = v9;
        *(v13 + 32) = 1;
        result = (v13 + 40);
        *(v12 + 8) = v13 + 40;
      }

      *(v12 + 8) = result;
      v8 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

void sub_2993E5F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  *v7 = v8;
  sub_29922CB20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E5F60(uint64_t a1, uint64_t a2, void *__src, int a4, int a5, double a6)
{
  v12 = __src;
  v11 = a4;
  v10 = a6;
  v9 = a5;
  v6 = *(a1 + 8) + 24 * a2;
  v7 = *(v6 + 8);
  if (v7 >= *(v6 + 16))
  {
    result = sub_2993E5FF4(v6, &v12, &v11, &v10, &v9);
  }

  else
  {
    sub_2993C9408(*(v6 + 8), __src, a4, a5, a6);
    result = v7 + 40;
    *(v6 + 8) = v7 + 40;
  }

  *(v6 + 8) = result;
  return result;
}

uint64_t sub_2993E5FF4(uint64_t a1, void **a2, int *a3, double *a4, int *a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0x666666666666666)
  {
    sub_299212A8C();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v6)
  {
    v6 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v9 = 0x666666666666666;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    sub_299391224(a1, v9);
  }

  v16 = 0;
  v17 = 40 * v5;
  v18 = 40 * v5;
  sub_2993C9408((40 * v5), *a2, *a3, *a5, *a4);
  *&v18 = 40 * v5 + 40;
  v10 = *(a1 + 8);
  v11 = 40 * v5 + *a1 - v10;
  sub_29939127C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2993913B8(&v16);
  return v15;
}

void sub_2993E6130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2993913B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E6144(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2993E6208(_Unwind_Exception *exception_object)
{
  if (qword_2A1461868)
  {
    qword_2A1461870 = qword_2A1461868;
    operator delete(qword_2A1461868);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993E622C(uint64_t a1, void **a2, int *a3, float *a4, int *a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0x666666666666666)
  {
    sub_299212A8C();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v6)
  {
    v6 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v9 = 0x666666666666666;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    sub_299391224(a1, v9);
  }

  v16 = 0;
  v17 = 40 * v5;
  v18 = 40 * v5;
  sub_2993C9408((40 * v5), *a2, *a3, *a5, *a4);
  *&v18 = 40 * v5 + 40;
  v10 = *(a1 + 8);
  v11 = 40 * v5 + *a1 - v10;
  sub_29939127C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2993913B8(&v16);
  return v15;
}

void sub_2993E636C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2993913B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E6380(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = 0;
  Value = CFDictionaryGetValue(theDict, kMecabraCreationLearningEnabledKey[0]);
  *(a1 + 4) = sub_2992791C0(Value, 1) != 0;
  v5 = CFDictionaryGetValue(theDict, kMecabraCreationDynamicLanguageModelEnabledKey[0]);
  *(a1 + 5) = sub_2992791C0(v5, 1) != 0;
  v6 = CFDictionaryGetValue(theDict, kMecabraCreationUseSpecialSymbolKey[0]);
  *(a1 + 6) = sub_2992791C0(v6, 0) != 0;
  v7 = CFDictionaryGetValue(theDict, kMecabraCreationSyncLearningDataKey[0]);
  *(a1 + 7) = sub_2992791C0(v7, 1) != 0;
  v8 = CFDictionaryGetValue(theDict, kMecabraCreationLiteModeKey[0]);
  *(a1 + 8) = sub_2992791C0(v8, 0) != 0;
  v9 = CFDictionaryGetValue(theDict, kMecabraCreationEnableABTestingKey[0]);
  *(a1 + 9) = sub_2992791C0(v9, 0) != 0;
  v10 = CFDictionaryGetValue(theDict, kMecabraCreationEnableUnilmKey[0]);
  *(a1 + 10) = sub_2992791C0(v10, 0) != 0;
  v11 = CFDictionaryGetValue(theDict, kMecabraCreationThaiMultiKeyLayoutKey[0]);
  *(a1 + 11) = sub_2992791C0(v11, 0) != 0;
  v12 = CFDictionaryGetValue(theDict, kMecabraCreationCustomSystemDictionaryDirectoryKey[0]);
  *(a1 + 16) = sub_2992792A8(v12);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v13 = CFDictionaryGetValue(theDict, kMecabraCreationCustomStaticLanguageModelBundleKey[0]);
  *(a1 + 40) = sub_2992792A8(v13);
  v14 = CFDictionaryGetValue(theDict, kMecabraCreationCustomStaticDialectLanguageModelBundleKey[0]);
  v15 = sub_2992792A8(v14);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v15;
  *(a1 + 72) = 0;
  valuePtr = 0;
  v16 = CFDictionaryGetValue(theDict, kMecabraCreationInputMethodTypeKey[0]);
  if (v16)
  {
    CFNumberGetValue(v16, kCFNumberCFIndexType, &valuePtr);
    *a1 = valuePtr;
  }

  if (*(a1 + 8) == 1)
  {
    *(a1 + 4) = 0;
  }

  else if (*(a1 + 4))
  {
    v17 = CFDictionaryGetValue(theDict, kMecabraCreationCustomLearningDictionaryDirectoryKey[0]);
    v18 = sub_2992792A8(v17);
    sub_29920FE30((a1 + 24), v18);
    *(a1 + 4) = *(a1 + 24) != 0;
  }

  if (*(a1 + 5) == 1)
  {
    v19 = CFDictionaryGetValue(theDict, kMecabraCreationCustomDynamicLanguageModelDirectoryKey[0]);
    v20 = sub_299279348(v19);
    sub_29920FE30((a1 + 56), v20);
  }

  v21 = CFDictionaryGetValue(theDict, kMecabraCreationCustomAdditionalDictionaryDirectoriesKey[0]);
  if (v21)
  {
    sub_299240D80((a1 + 32), v21);
  }

  v22 = CFDictionaryGetValue(theDict, kMecabraCreationSecondaryLocaleKey[0]);
  if (v22)
  {
    sub_299229BC0((a1 + 64), v22);
  }

  v23 = CFDictionaryGetValue(theDict, kMecabraCreationWubixingStandardKey[0]);
  if (v23)
  {
    CFNumberGetValue(v23, kCFNumberCFIndexType, &valuePtr);
    *(a1 + 72) = valuePtr;
  }

  return a1;
}

void sub_2993E66AC(_Unwind_Exception *a1)
{
  sub_299219AB4(v6, 0);
  sub_29920FE30(v5, 0);
  sub_29920FE30((v1 + 48), 0);
  sub_29920FE30(v2 + 3, 0);
  sub_299229F00(v4, 0);
  sub_29920FE30(v3, 0);
  sub_29920FE30(v2, 0);
  _Unwind_Resume(a1);
}

CFLocaleRef *sub_2993E6728(CFLocaleRef *a1, const __CFString *a2)
{
  *a1 = CFLocaleCreate(0, a2);
  a1[1] = 0;
  a1[2] = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57F0], a2);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57E8], *MEMORY[0x29EDB8F00]);
  v5 = LXLexiconCreate();
  sub_299291748(a1 + 1, v5);
  if (a1[1])
  {
    operator new();
  }

  sub_299291748(a1 + 1, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return a1;
}

void sub_2993E68F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299274AE8(va, 0);
  v6 = *(v3 + 16);
  *(v3 + 16) = 0;
  if (v6)
  {
    (*(*v6 + 72))(v6);
  }

  sub_299291748(v4, 0);
  sub_299253084(v3, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E6964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x29EDCA608];
  result = *(a1 + 16);
  if (result)
  {
    v6[0] = &unk_2A1F79CA0;
    v6[1] = a1;
    v6[2] = a4;
    v6[3] = v6;
    sub_2993E8594(result, a2, v6, 0, a3);
  }

  return result;
}

void sub_2993E69FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2993EA098(va);
  _Unwind_Resume(a1);
}

const void ***sub_2993E6A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7[4] = *MEMORY[0x29EDCA608];
  result = *(a1 + 16);
  if (result)
  {
    v7[0] = &unk_2A1F79DA0;
    v7[1] = a1;
    v7[2] = a4;
    v7[3] = v7;
    sub_2993E6AB4(result, a2, a3, v7, a5);
  }

  return result;
}

void sub_2993E6AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2993EA098(va);
  _Unwind_Resume(a1);
}

void sub_2993E6AB4(const void ***a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5[4] = *MEMORY[0x29EDCA608];
  v5[0] = &unk_2A1F79D20;
  v5[1] = a4;
  v5[3] = v5;
  sub_2993E98A4(a1, a2, a3, v5, a5);
}

void sub_2993E6B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2993E9824(va);
  _Unwind_Resume(a1);
}

BOOL sub_2993E6B4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v12 = 0;
  v6 = 0;
  if ((**v4)(v4, a2, 2 * a3, &v12))
  {
    v7 = LXLexiconCopyEntryForTokenID();
    v6 = v7 != 0;
    if (v7)
    {
      v8 = v7;
      MetaFlags = LXEntryGetMetaFlags();
      LXEntryGetProbability();
      *a4 = MetaFlags;
      a4[1] = v10;
      CFRelease(v8);
    }
  }

  return v6;
}

uint64_t sub_2993E6C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 24))(&v12);
  (*(*a1 + 40))(&v11, a1, v12, a2, a3);
  v8 = v11;
  v11 = 0;
  sub_2993E7BB0(&v12, v8);
  sub_2993E7BB0(&v11, 0);
  v9 = (*(*a1 + 48))(a1, v12, a4);
  sub_2993E7BB0(&v12, 0);
  return v9;
}

void sub_2993E6D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2993E7BB0(va, 0);
  _Unwind_Resume(a1);
}

const void ***sub_2993E6D44(const void ***result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 && (a3 & 1) == 0)
  {
    v7 = result;
    v13 = 0;
    ((*result)[3])(&v12);
    v11 = 0;
    if (a3)
    {
      v8 = 0;
      do
      {
        ((*v7)[5])(&v10, v7, v12, a2 + v8, 2);
        v9 = v10;
        v10 = 0;
        sub_2993E7BB0(&v12, v9);
        sub_2993E7BB0(&v10, 0);
        if ((((*v7)[4])(v7, v12) & 1) == 0)
        {
          break;
        }

        if (((*v7)[6])(v7, v12, &v11))
        {
          sub_2993E7C14(*(a4 + 24), &v11, a2, v8 + 2);
          if (v13)
          {
            break;
          }
        }

        v8 = v8 + 2;
      }

      while (v8 < a3);
    }

    return sub_2993E7BB0(&v12, 0);
  }

  return result;
}

void sub_2993E6EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2993E7BB0(va, 0);
  _Unwind_Resume(a1);
}

const void ***sub_2993E6ED8(const void ***result, const void *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v12[4] = *MEMORY[0x29EDCA608];
  if (a2 && (a3 & 1) == 0)
  {
    v7 = result;
    ((*result)[3])(&v11);
    ((*v7)[5])(v12, v7, v11, a2, a3);
    v8 = v12[0];
    v12[0] = 0;
    sub_2993E7BB0(&v11, v8);
    sub_2993E7BB0(v12, 0);
    if (((*v7)[4])(v7, v11))
    {
      if (a3 < 0x7FFFFFFFFFFFFFF8)
      {
        if (a3 < 0x17)
        {
          v10 = a3;
          if (a3)
          {
            memcpy(&__dst, a2, a3);
          }

          *(&__dst + a3) = 0;
          operator new();
        }

        operator new();
      }

      sub_2991A11B0();
    }

    return sub_2993E7BB0(&v11, 0);
  }

  return result;
}

void sub_2993E7120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void **a16, __int16 a18, char a19, char a20)
{
  sub_2993E7E2C(&a18);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_2993E7BB0(&a16, 0);
  _Unwind_Resume(a1);
}

void sub_2993E71F4(void a1, void *a2, UniChar *chars, unint64_t a3)
{
  CFStringCreateWithCharacters(0, chars, a3 >> 1);
  if (LXCursorCreateByAdvancing())
  {
    operator new();
  }

  operator new();
}

void sub_2993E72B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_299235628(&a9, 0);
  sub_299219AB4(&a10, 0);
  _Unwind_Resume(a1);
}

BOOL sub_2993E72DC(uint64_t a1, void *a2, _DWORD *a3)
{
  if (!(*(*a1 + 32))(a1))
  {
    return 0;
  }

  Entry = LXCursorCopyFirstEntry();
  if (!Entry)
  {
    return 0;
  }

  v5 = Entry;
  TokenID = LXEntryGetTokenID();
  *a3 = TokenID;
  v7 = TokenID != 0;
  CFRelease(v5);
  return v7;
}

void sub_2993E736C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299320950(va, 0);
  _Unwind_Resume(a1);
}

void sub_2993E7384(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  if ((*(*a1 + 32))(a1))
  {
    v4 = LXCursorCopyTraversedCharacters();
    CFStringGetLength(v4);
    sub_2992A3CC4(1uLL);
  }
}

void sub_2993E7A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, int a56, __int16 a57, char a58, char a59)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993E7B00(uint64_t a1)
{
  *a1 = &unk_2A1F79798;
  sub_299291748((a1 + 8), 0);
  return a1;
}

void sub_2993E7B48(uint64_t a1)
{
  *a1 = &unk_2A1F79798;
  sub_299291748((a1 + 8), 0);

  JUMPOUT(0x29C29BFB0);
}

const void ***sub_2993E7BB0(const void ***result, const void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_299235628(v2, 0);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2993E7C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, a2, &v6, &v5);
}

__n128 sub_2993E7CE4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F79820;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2993E7D1C(void *a1, uint64_t a2, const void **a3, size_t *a4)
{
  v6 = *a4;
  v7 = a1[3];
  v8 = v7 + *a4;
  v9 = a1[1];
  size = SHIBYTE(v9->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = v9->__r_.__value_.__l.__size_;
  }

  v11 = *a3;
  if (size < v8)
  {
    std::string::resize(v9, v7 + *a4, 0);
    v9 = a1[1];
    v7 = a1[3];
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  memcpy(v9 + v7, v11, v6);
  v12 = a1[1];
  if (*(v12 + 23) < 0)
  {
    v12 = *v12;
  }

  v13 = *(a1[4] + 24);

  return sub_2993E7C14(v13, a2, v12, v8);
}

uint64_t sub_2993E7DE0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79890))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993E7E2C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2993E7EAC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t sub_2993E7EBC(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    JUMPOUT(0x29C29BF70);
  }

  return result;
}

uint64_t sub_2993E7EE4(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = a1[7];
  TokenID = LXEntryGetTokenID();
  result = sub_2993E7C14(*(v5 + 24), &TokenID, *(*(a1[4] + 8) + 40) + 2 * a1[8], 2 * (*(*(a1[5] + 8) + 24) - a1[8]));
  *a3 = *(*(a1[6] + 8) + 24);
  return result;
}

__n128 sub_2993E7F74(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_2993E7FC4(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 40);
  LXCursorConditionalProbability();
  v6 = v4 + v5;
  v7 = *(*(a1 + 32) + 8);
  v9 = v7[6];
  v8 = v7[7];
  if (v9 >= v8)
  {
    v11 = v7[5];
    v12 = (v9 - v11) >> 4;
    if ((v12 + 1) >> 60)
    {
      sub_299212A8C();
    }

    v13 = v8 - v11;
    v14 = v13 >> 3;
    if (v13 >> 3 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v22[4] = v7 + 5;
    if (v15)
    {
      sub_2992A3CC4(v15);
    }

    v16 = 16 * v12;
    *v16 = 0;
    *(v16 + 8) = v6;
    sub_2993E80F4(v16, a2);
    v10 = v16 + 16;
    v17 = v7[5];
    v18 = v7[6];
    v19 = (v16 + v17 - v18);
    sub_2993E8154(v17, v18, v19);
    v20 = v7[5];
    v7[5] = v19;
    v7[6] = v16 + 16;
    v21 = v7[7];
    v7[7] = 0;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    sub_2993E81C4(v22);
  }

  else
  {
    *v9 = 0;
    *(v9 + 8) = v6;
    sub_2993E80F4(v9, a2);
    v10 = v9 + 16;
  }

  v7[6] = v10;
}

void sub_2993E80F4(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    sub_299235628(a1, cf);
  }
}

void sub_2993E8154(const void **a1, const void **a2, void *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      a3[1] = v5[1];
      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
    do
    {
      sub_299235628(v4, 0);
      v4 += 2;
    }

    while (v4 != a2);
  }
}

uint64_t sub_2993E81C4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    sub_299235628((i - 16), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2993E8218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = v3 >> 1;
    v6 = a1 + 16 * (v3 >> 1);
    v7 = *(a2 - 8);
    if (*(v6 + 8) < v7)
    {
      v8 = a2 - 16;
      v9 = *(a2 - 16);
      *(a2 - 16) = 0;
      do
      {
        v10 = v6;
        v11 = *v6;
        *v6 = 0;
        sub_299235628(v8, v11);
        *(v8 + 8) = *(v10 + 8);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = a1 + 16 * v5;
        v8 = v10;
      }

      while (*(v6 + 8) < v7);
      sub_299235628(v10, v9);
      *(v10 + 8) = v7;
    }
  }
}

void sub_2993E82CC(const void ****a1)
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
        v4 -= 2;
        sub_299235628(v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2993E83F4(uint64_t a1)
{
  *a1 = &unk_2A1F798B0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  *a1 = &unk_2A1F79798;
  sub_299291748((a1 + 8), 0);
  return a1;
}

void sub_2993E848C(uint64_t a1)
{
  *a1 = &unk_2A1F798B0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  *a1 = &unk_2A1F79798;
  sub_299291748((a1 + 8), 0);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993E8594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = *MEMORY[0x29EDCA608];
  v5[0] = &unk_2A1F79B00;
  v5[1] = a3;
  v5[3] = v5;
  sub_2993E862C(a1, a2, v5, a4, a5);
}

void sub_2993E8618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2993E9824(va);
  _Unwind_Resume(a1);
}

void sub_2993E862C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = off_2A1A9A2C8;
  if ((*off_2A1A9A2C8(&off_2A1A9A2C8) & 1) == 0)
  {
    v7 = off_2A1A9A2B0(&off_2A1A9A2B0);
    sub_2992A6BEC(v7, 256);
    _tlv_atexit(sub_2992A65C8, v7);
    *v5(&off_2A1A9A2C8) = 1;
  }

  v6 = off_2A1A9A2F8;
  if ((*off_2A1A9A2F8(&off_2A1A9A2F8) & 1) == 0)
  {
    v8 = off_2A1A9A2E0(&off_2A1A9A2E0);
    sub_2992A6C9C(v8, 0x100uLL);
    _tlv_atexit(sub_2992A65FC, v8);
    *v6(&off_2A1A9A2F8) = 1;
  }

  v9 = 0;
  operator new();
}

void sub_2993E8878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, const void **);
  v20 = va_arg(va1, void);
  sub_2993E7BB0(va, 0);
  sub_2993E9644(va1);
  _Unwind_Resume(a1);
}

const void ***sub_2993E88A0(const void ***result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7, _BYTE *a8, float a9, uint64_t a10, uint64_t a11, const void ***a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v40 = result;
  v48 = *MEMORY[0x29EDCA608];
  v46 = a7;
  if ((*a8 & 1) == 0)
  {
    if (((*(*result[2] + 4))(result[2], a4) & 1) == 0)
    {
      __assert_rtn("ambiguousDfsTraverse", "AmbiguousTrieAdapter.hpp", 141, "m_trie->isValid(curCursor)");
    }

    if (a5 && (*(*a2 + 24))(a2) != a12)
    {
      goto LABEL_33;
    }

    LODWORD(v45) = 0;
    if ((a7 & 1) != 0 || (result = (*(*v40[2] + 6))(v40[2], a4, &v45), result))
    {
      result = sub_2993E8E60(*(a3 + 24), a4, a10, 2 * a11, a13, a14, a12, a8, a9);
    }

    if ((*a8 & 1) == 0)
    {
LABEL_33:
      result = (*(*a2 + 24))(a2);
      if (result > a12)
      {
        result = (*(*a2 + 16))(a2, a12);
        v20 = result;
        v45 = 0;
        if (result)
        {
          v21 = 0;
          v35 = a17;
          v22 = a9;
          do
          {
            result = (*(*a2 + 72))(a2, a15, a16, a12, v21);
            if (result)
            {
              v44 = (*(*a2 + 32))(a2, a12, v45) + v22;
              v43 = (a12 + (*(*a2 + 40))(a2, a12, v45));
              result = (*(*a2 + 48))(a2, a12, v45);
              v24 = result;
              v25 = v23;
              v26 = v43;
              if (v43 != a12 || (v35 & 1) == 0)
              {
                if (v23)
                {
                  (*(*v40[2] + 5))(&v42);
                  if ((*(*v40[2] + 4))(v40[2], v42))
                  {
                    v27 = a11;
                    v28 = 2 * a11;
                    v29 = v25;
                    do
                    {
                      v30 = *v24;
                      v24 = (v24 + 2);
                      *(a10 + v28) = v30;
                      v28 += 2;
                      --v29;
                    }

                    while (v29);
                    v31 = v45;
                    if (a13)
                    {
                      *(a13 + 8 * a14) = v45;
                      v27 = a11;
                    }

                    v32 = v44;
                    sub_2993E88A0(v40, a2, a3, v42, a5, a6, v46, a8, v32, a10, v27 + v25, v43, a13, a14 + 1, a12, v31, v26 == a12);
                    if (*a8)
                    {
                      return sub_2993E7BB0(&v42, 0);
                    }
                  }

                  result = sub_2993E7BB0(&v42, 0);
                  if (a6)
                  {
                    v33 = v43;
                    result = (*(*a2 + 24))(a2);
                    if (v33 == result)
                    {
                      result = (*(*a2 + 56))(a2, a12, v45);
                      if (result)
                      {
                        v47 = 0;
                        operator new();
                      }
                    }
                  }
                }

                else
                {
                  v34 = v44;
                  result = sub_2993E88A0(v40, a2, a3, a4, a5, a6, v46, a8, v34, a10, a11, v43, a13, a14, a15, a16, v43 == a12);
                }
              }
            }

            v21 = v45 + 1;
            v45 = v21;
          }

          while (v21 < v20);
        }
      }
    }
  }

  return result;
}

void sub_2993E8E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2992A7094(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E8E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  v15 = a9;
  v13 = a4;
  v14 = a3;
  v11 = a6;
  v12 = a5;
  v10 = a7;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, a2, &v15, &v14, &v13, &v12, &v11, &v10, a8);
}

__n128 sub_2993E8F70(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F79970;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

const void ***sub_2993E8FC8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a1 + 8);
  (*(**(v7 + 16) + 40))(&v15);
  if (!(*(**(v7 + 16) + 32))(*(v7 + 16), v15))
  {
    return sub_2993E7BB0(&v15, 0);
  }

  if (v6)
  {
    v8 = (**(a1 + 24) + 2 * **(a1 + 32));
    v9 = v6;
    do
    {
      v10 = *v5++;
      *v8++ = v10;
      --v9;
    }

    while (v9);
  }

  v11 = **(a1 + 40);
  if (v11)
  {
    *(v11 + 8 * **(a1 + 48)) = **(a1 + 56);
  }

  v14 = 0;
  if ((**(a1 + 64) & 1) == 0)
  {
    if (!(*(**(v7 + 16) + 48))(*(v7 + 16), v15, &v14))
    {
      goto LABEL_11;
    }

    v11 = **(a1 + 40);
  }

  v12 = **(a1 + 80);
  sub_2993E8E60(*(*(a1 + 72) + 24), v15, **(a1 + 24), 2 * (**(a1 + 32) + v6), v11, **(a1 + 48) + 1, **(a1 + 88), *(a1 + 96), v12);
LABEL_11:
  if (**(a1 + 96) == 1)
  {
    *a3 = 1;
  }

  return sub_2993E7BB0(&v15, 0);
}

void sub_2993E9160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2993E7BB0(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E917C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F799D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2993E9248(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F799F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void sub_2993E93BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2993E7E2C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E93D0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79AE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2993E94B0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F79A70;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_2993E9500(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(a1 + 16);
  v8 = **(a1 + 8);
  v10[0] = *a2;
  v10[1] = v8;
  result = sub_2993E95DC(*(v7 + 24), v10, **(a1 + 24), **(a1 + 32), **(a1 + 40), **(a1 + 48), **(a1 + 56) - **(a1 + 64));
  **(a1 + 72) = (**(a1 + 72) | *a5) & 1;
  return result;
}

uint64_t sub_2993E9590(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79AD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993E95DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a4;
  v12 = a3;
  v9 = a6;
  v10 = a5;
  v8 = a7;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, a2, &v12, &v11, &v10, &v9, &v8);
}

uint64_t sub_2993E9644(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2993E9734(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F79B00;
  a2[1] = v2;
  return result;
}

uint64_t sub_2993E977C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79B70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993E97C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v6 = a5;
  v7 = a4;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, a2, &v8, &v7, &v6);
}

uint64_t sub_2993E9824(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_2993E98A4(const void ***a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = off_2A1A9A328;
  if ((*off_2A1A9A328(&off_2A1A9A328) & 1) == 0)
  {
    v7 = off_2A1A9A310(&off_2A1A9A310);
    sub_2992A6BEC(v7, 256);
    _tlv_atexit(sub_2992A65C8, v7);
    *v5(&off_2A1A9A328) = 1;
  }

  v6 = off_2A1A9A358;
  if ((*off_2A1A9A358(&off_2A1A9A358) & 1) == 0)
  {
    v8 = off_2A1A9A340(&off_2A1A9A340);
    sub_2992A6C9C(v8, 0x100uLL);
    _tlv_atexit(sub_2992A65FC, v8);
    *v6(&off_2A1A9A358) = 1;
  }

  v9 = 0;
  operator new();
}

void sub_2993E9AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, const void **);
  v20 = va_arg(va1, void);
  sub_2993E7BB0(va, 0);
  sub_2993E9644(va1);
  _Unwind_Resume(a1);
}

__n128 sub_2993E9B94(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F79B90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2993E9BCC(uint64_t a1, uint64_t a2, int *a3, char **a4, void **a5, void **a6, void **a7, void **a8, uint64_t a9)
{
  v16 = *MEMORY[0x29EDCA608];
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  v12 = *a7;
  v13 = *a8;
  v15 = *a3;
  __p[5] = v11;
  __p[6] = v10;
  __p[3] = v13;
  __p[4] = v12;
  if ((*(**(*(a1 + 8) + 16) + 32))(*(*(a1 + 8) + 16)))
  {
    memset(__p, 0, 24);
    sub_2992A7DFC(__p, v9, v10 + v9, v10);
    operator new();
  }

  __assert_rtn("operator()", "AmbiguousTrieAdapter.hpp", 44, "m_trie->isValid(cursor)");
}

void sub_2993E9D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_2993E7E2C(va);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993E9DB4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79C70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2993E9E94(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F79C00;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_2993E9EE4(uint64_t a1, _DWORD *a2, uint64_t *a3, uint64_t *a4, _BYTE *a5)
{
  v8 = *a3;
  v9 = *a4;
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = *v11 + *a4;
  v13 = *(v10 + 8) - *v10;
  if (v12 > v13)
  {
    sub_29920BD1C(v10, v12 - v13);
  }

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      *(**(a1 + 16) + **(a1 + 8) + i) = *(v8 + i);
    }
  }

  v15 = *(a1 + 40);
  v16 = **(a1 + 32);
  v18[0] = *a2;
  v18[1] = v16;
  result = sub_2993E95DC(*(*(a1 + 24) + 24), v18, **(a1 + 16), v12, *v15, **(a1 + 48), **(a1 + 56) - **(a1 + 64));
  **(a1 + 72) = (**(a1 + 72) | *a5) & 1;
  return result;
}

uint64_t sub_2993E9FDC(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79C60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993EA028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13[0] = a2;
  v13[1] = a3;
  v12[0] = a4;
  v12[1] = a5;
  v10 = a8;
  v11 = a7;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, v13, v12, a6, &v11, &v10, a9);
}

uint64_t sub_2993EA098(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_2993EA18C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F79CA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2993EA1BC(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a3;
  v10 = *a4;
  v11 = LXLexiconCopyEntryForTokenID();
  v19 = v11;
  if (v11)
  {
    v12 = v11;
    v13 = LXEntryCopyString();
    v18 = v13;
    sub_299276BDC(v13, &__p);
    MetaFlags = LXEntryGetMetaFlags();
    LXEntryGetProbability();
    sub_2993EA028(*(*(a1 + 16) + 24), __p, (v17 - __p) >> 1, MetaFlags, v15, a2, v9, v10, a6);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    CFRelease(v12);
  }
}

void sub_2993EA2AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13, const void *a14)
{
  sub_299219AB4(&a13, 0);
  sub_299320950(&a14, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993EA2F0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79D00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993EA3AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F79D20;
  a2[1] = v2;
  return result;
}

uint64_t sub_2993EA3F4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79D80))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2993EA4B4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F79DA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2993EA4E4(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a3;
  v10 = *a4;
  v11 = LXLexiconCopyEntryForTokenID();
  v19 = v11;
  if (v11)
  {
    v12 = v11;
    v13 = LXEntryCopyString();
    v18 = v13;
    sub_299276BDC(v13, &__p);
    MetaFlags = LXEntryGetMetaFlags();
    LXEntryGetProbability();
    sub_2993EA028(*(*(a1 + 16) + 24), __p, (v17 - __p) >> 1, MetaFlags, v15, a2, v9, v10, a6);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    CFRelease(v12);
  }
}

void sub_2993EA5D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13, const void *a14)
{
  sub_299219AB4(&a13, 0);
  sub_299320950(&a14, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993EA618(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79E00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2993EA664(uint64_t *a1@<X8>)
{
  sub_299278568(@"en_US", &v7);
  v2 = std::string::insert(&v7, 0, "EnglishLexicon_", 0xFuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v6 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = sub_2993EA800;
  v4[3] = &unk_29EF22318;
  v4[4] = @"en_US";
  if (qword_2A1461D50 != -1)
  {
    dispatch_once(&qword_2A1461D50, &unk_2A1F65DA8);
  }

  v7.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  v7.__r_.__value_.__l.__size_ = 0x40000000;
  v7.__r_.__value_.__r.__words[2] = sub_2993EDAEC;
  v8 = &unk_29EF22360;
  v10 = __p;
  v11 = qword_2A1461D48;
  v12 = 0;
  v9 = v4;
  sub_2993ED278(a1, __p, &v7);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2993EA7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993EA800(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57F0], *(a1 + 32));
  operator new();
}

void sub_2993EA89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x29C29BFB0](v3, 0x1060C404B74122BLL);
  sub_299274AE8(va, 0);
  _Unwind_Resume(a1);
}

void sub_2993EA8D4(uint64_t *a1@<X8>)
{
  sub_2991C6CA8(v7, "en_US");
  std::operator+<char>();
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 1174405120;
  v2[2] = sub_2993EAAA0;
  v2[3] = &unk_2A1F79E10;
  if (SHIBYTE(v8) < 0)
  {
    sub_2991A110C(&__p, v7[0], v7[1]);
  }

  else
  {
    __p = *v7;
    v4 = v8;
  }

  if (qword_2A1461D50 != -1)
  {
    dispatch_once(&qword_2A1461D50, &unk_2A1F65DA8);
  }

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = sub_2993EDAEC;
  v9[3] = &unk_29EF22360;
  v9[5] = v5;
  v9[6] = qword_2A1461D48;
  v10 = 0;
  v9[4] = v2;
  sub_2993ED278(a1, v5, v9);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_2993EAA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993EAAA0(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  sub_2991C6CA8(&v37, "/System/Library/LinguisticData/RequiredAssets_en.bundle/AssetData/");
  if ((v39 & 0x80u) == 0)
  {
    v2 = v39;
  }

  else
  {
    v2 = v38;
  }

  v3 = &v40;
  sub_2991C1C18(&v40, v2 + 8);
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v3 = v40.__r_.__value_.__r.__words[0];
  }

  if (v2)
  {
    if ((v39 & 0x80u) == 0)
    {
      v4 = &v37;
    }

    else
    {
      v4 = v37;
    }

    memmove(v3, v4, v2);
  }

  strcpy(v3 + v2, "Phrases-");
  v5 = (a1 + 32);
  v6 = *(a1 + 55);
  if (v6 >= 0)
  {
    v7 = (a1 + 32);
  }

  else
  {
    v7 = *(a1 + 32);
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 55);
  }

  else
  {
    v8 = *(a1 + 40);
  }

  v9 = std::string::append(&v40, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v34, ".dat", 4uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v36 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if ((v39 & 0x80u) == 0)
  {
    v13 = v39;
  }

  else
  {
    v13 = v38;
  }

  v14 = &v33;
  sub_2991C1C18(&v33, v13 + 6);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v14 = v33.__r_.__value_.__r.__words[0];
  }

  if (v13)
  {
    if ((v39 & 0x80u) == 0)
    {
      v15 = &v37;
    }

    else
    {
      v15 = v37;
    }

    memmove(v14, v15, v13);
  }

  strcpy(v14 + v13, "Delta-");
  v16 = *(a1 + 55);
  if (v16 >= 0)
  {
    v17 = (a1 + 32);
  }

  else
  {
    v17 = *(a1 + 32);
  }

  if (v16 >= 0)
  {
    v18 = *(a1 + 55);
  }

  else
  {
    v18 = *(a1 + 40);
  }

  v19 = std::string::append(&v33, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v40, ".dat", 4uLL);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v36 >= 0)
  {
    v23 = __p;
  }

  else
  {
    v23 = __p[0];
  }

  v24 = sub_299276360(v23);
  v33.__r_.__value_.__r.__words[0] = v24;
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v34;
  }

  else
  {
    v25 = v34.__r_.__value_.__r.__words[0];
  }

  filePath = sub_299276360(v25);
  v26 = CFURLCreateWithFileSystemPath(0, v24, kCFURLPOSIXPathStyle, 1u);
  v27 = CFURLCreateWithFileSystemPath(0, filePath, kCFURLPOSIXPathStyle, 1u);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v26 && sub_299276528(v26))
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57D8], v24);
    if (v27 && sub_299276528(v27))
    {
      v29 = CFArrayCreate(0, &filePath, 1, MEMORY[0x29EDB9000]);
      v40.__r_.__value_.__r.__words[0] = v29;
      CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57E0], v29);
      if (v29)
      {
        CFRelease(v29);
      }
    }

    operator new();
  }

  v30 = sub_2993652F8(0);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 55) < 0)
    {
      v5 = *v5;
    }

    LODWORD(v40.__r_.__value_.__l.__data_) = 136315138;
    *(v40.__r_.__value_.__r.__words + 4) = v5;
    _os_log_error_impl(&dword_29918C000, v30, OS_LOG_TYPE_ERROR, "Failed to find data path for locale %s", &v40, 0xCu);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (filePath)
  {
    CFRelease(filePath);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
  }

  if (v39 < 0)
  {
    operator delete(v37);
  }

  return 0;
}

void sub_2993EAF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2993EB0B0(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    return sub_2991A110C(result + 32, *(a2 + 32), *(a2 + 40));
  }

  v2 = *(a2 + 32);
  *(result + 6) = *(a2 + 48);
  *(result + 2) = v2;
  return result;
}

void sub_2993EB0DC(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_2993EB0F0(uint64_t *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1461880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461880))
  {
    sub_2991C6CA8(qword_2A14618A0, "EnglishDynamicLexicon_en_US");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A14618A0, &dword_29918C000);
    __cxa_guard_release(&qword_2A1461880);
  }

  if (qword_2A1461D50 != -1)
  {
    dispatch_once(&qword_2A1461D50, &unk_2A1F65DA8);
  }

  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = sub_2993EDAEC;
  v2[3] = &unk_29EF22360;
  v2[5] = qword_2A14618A0;
  v2[6] = qword_2A1461D48;
  v3 = 0;
  v2[4] = &unk_2A1F79E40;
  sub_2993ED278(a1, qword_2A14618A0, v2);
}

uint64_t sub_2993EB29C(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xFFF0000000000000;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a3;
  if (a3 == 2)
  {
    View = LXLexiconRepositoryCreateView();
  }

  else
  {
    View = LXLexiconCreate();
  }

  sub_299291748(a1, View);
  return a1;
}

void sub_2993EB334(_Unwind_Exception *a1)
{
  sub_2993EC474((v1 + 1));
  sub_299291748(v1, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993EB354(uint64_t **a1, uint64_t a2)
{
  v8 = 0u;
  memset(v7, 0, sizeof(v7));
  v3 = *a1;
  if (*a1 != a1[1])
  {
    do
    {
      sub_2993EC4CC(v7, v3);
      sub_2993EDF60(*a1, a1[1], &v9, 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1));
      v5 = a1[1];
      sub_299235628(v5 - 1, 0);
      a1[1] = v5 - 3;
      v3 = *a1;
    }

    while (*a1 != v5 - 3);
  }

  v9 = 0;
  while ((v9 & 1) == 0 && *(&v8 + 1))
  {
    sub_2993EB470(a2, *(*(*(&v7[0] + 1) + 8 * ((*(&v8 + 1) + v8 - 1) / 0xAAuLL)) + 24 * ((*(&v8 + 1) + v8 - 1) % 0xAAuLL) + 16));
    sub_2993EE2A0(v7);
  }

  return sub_2993ECACC(v7);
}

uint64_t sub_2993EB470(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2991A2240();
  }

  return (*(*v2 + 48))(v2, &v4);
}

CFIndex sub_2993EB4C4(uint64_t a1, CFStringRef theString, unint64_t a3, double a4)
{
  if (*(a1 + 8) < a3 || *(a1 + 16) + -0.000001 > a4)
  {
    return 0;
  }

  v4 = 0;
  if (theString)
  {
    v7 = *a1;
    if (*a1)
    {
      Length = CFStringGetLength(theString);
      v9 = CFStringGetLength(v7);
      if (v9 >= Length)
      {
        v10 = Length;
      }

      else
      {
        v10 = v9;
      }

      if (!v10)
      {
        return 0;
      }

      v4 = 0;
      while (1)
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v4);
        if (CharacterAtIndex != CFStringGetCharacterAtIndex(v7, v4))
        {
          break;
        }

        if (v10 == ++v4)
        {
          return v10;
        }
      }
    }
  }

  return v4;
}

void sub_2993EB58C(uint64_t a1, const __CFString *a2, unint64_t a3, double a4)
{
  v8 = sub_2993EB4C4(a1, a2, a3, a4);
  Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], a2);
  sub_299219AB4(a1, Copy);
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  sub_2993EB6DC((a1 + 48), v8);
  if (v8 < CFStringGetLength(a2))
  {
    v10 = v8;
    do
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(a2, v10);
      v19 = CharacterAtIndex;
      v12 = sub_29927880C(CharacterAtIndex);
      if (*v12 == v12[1])
      {
        v18 = 1;
        v17 = *(a1 + 56);
        if (v17 >= *(a1 + 64))
        {
          v16 = sub_2993ECDAC(a1 + 48, &v18, &v19);
        }

        else
        {
          sub_29927A740(*(a1 + 56), 1, &v19);
          v16 = (v17 + 24);
          *(a1 + 56) = v17 + 24;
        }
      }

      else
      {
        v13 = v12;
        v14 = *(a1 + 56);
        v15 = (a1 + 48);
        if (v14 >= *(a1 + 64))
        {
          v16 = sub_29933AF54(v15, v13);
        }

        else
        {
          sub_29933AF00(v15, v13);
          v16 = (v14 + 24);
        }
      }

      *(a1 + 56) = v16;
      ++v10;
    }

    while (v10 < CFStringGetLength(a2));
  }

  sub_2993EB784((a1 + 24), v8);
}

void sub_2993EB6DC(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_2993ECC40(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void sub_2993EB784(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_2993ECED4(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      do
      {
        v8 = v3 - 24;
        sub_29929A278(v3 - 24, *(v3 - 16));
        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void sub_2993EB828(uint64_t a1)
{
  *&v2 = 0;
  *(&v2 + 1) = 0xFFF0000000000000;
  sub_299219AB4((a1 + 8), 0);
  *(a1 + 16) = v2;
  sub_2993ED13C((a1 + 32));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  memset(v3, 0, sizeof(v3));
  sub_2993ED1AC((a1 + 56));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  memset(v4, 0, sizeof(v4));
  v5 = v4;
  sub_29920E060(&v5);
  v5 = v3;
  sub_29929A1EC(&v5);
}

void *sub_2993EB8DC(void *result, uint64_t a2, int a3)
{
  v4[4] = *MEMORY[0x29EDCA608];
  if (*result)
  {
    memset(v4, 0, 24);
    v3[0] = &unk_2A1F79EE8;
    v3[1] = result;
    v3[2] = v4;
    v3[3] = v3;
    sub_2993EB9C8(result, v3, a3 ^ 1, 1);
  }

  return result;
}

void sub_2993EB99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  a10 = &a14;
  sub_2993ED1EC(&a10);
  _Unwind_Resume(a1);
}

void sub_2993EC1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, CFTypeRef cf, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30)
{
  v32 = *(v30 - 168);
  if (v32)
  {
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2993EC2B4(void *result, const __CFString *a2, uint64_t a3, unint64_t a4, double a5)
{
  if (*result)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6 || a4 == 0;
  if (!v7 && a5 != 0.0)
  {
    v9 = result;
    sub_2993EB58C((result + 1), a2, a4, a5);

    return sub_2993EB8DC(v9, a3, 0);
  }

  return result;
}

void *sub_2993EC320(void *result, const __CFString *a2, uint64_t a3, unint64_t a4, __int16 a5, double a6)
{
  if (*result)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6 || a4 == 0;
  if (!v7 && a6 != 0.0)
  {
    sub_2993EB58C((result + 1), a2, a4, a6);
    operator new();
  }

  return result;
}

void sub_2993EC448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  a10 = &a14;
  sub_2993ED1EC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_2993EC474(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_29920E060(&v3);
  v3 = (a1 + 24);
  sub_29929A1EC(&v3);
  sub_299219AB4(a1, 0);
  return a1;
}

uint64_t sub_2993EC4CC(unint64_t *a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 170 * ((v4 - v5) >> 3) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    v9 = v7 >= 0xAA;
    v10 = v7 - 170;
    if (!v9)
    {
      v11 = a1[3];
      v12 = v11 - *a1;
      if (v4 - v5 < v12)
      {
        operator new();
      }

      v13 = v12 >> 2;
      if (v11 == *a1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      sub_29921EA5C(v14);
    }

    a1[4] = v10;
    v24 = *v5;
    a1[1] = (v5 + 1);
    sub_2993EC9C8(a1, &v24);
    v5 = a1[1];
    v4 = a1[2];
    v7 = a1[4];
    v8 = a1[5] + v7;
  }

  v15 = *a2;
  v17 = a2[1];
  v16 = a2[2];
  v18 = (v5[v8 / 0xAA] + 24 * (v8 % 0xAA));
  *v18 = v15;
  v18[1] = v17;
  if (v16)
  {
    v16 = CFRetain(v16);
    v7 = a1[4];
    v5 = a1[1];
    v4 = a1[2];
  }

  v18[2] = v16;
  v19 = a1[5] + 1;
  a1[5] = v19;
  v20 = v19 + v7;
  v21 = &v5[v20 / 0xAA];
  v22 = *v21 + 24 * (v20 % 0xAA);
  if (v4 == v5)
  {
    v22 = 0;
  }

  if (v22 == *v21)
  {
    v22 = *(v21 - 1) + 4080;
  }

  return v22 - 24;
}

void sub_2993EC99C(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_2993EC9C8(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_29921EA5C(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

uint64_t sub_2993ECACC(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0xAA];
    v7 = *v6 + 24 * (v5 % 0xAA);
    v8 = v3[(*(a1 + 40) + v5) / 0xAA] + 24 * ((*(a1 + 40) + v5) % 0xAA);
    if (v7 != v8)
    {
      do
      {
        sub_299235628((v7 + 16), 0);
        v7 += 24;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 85;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 170;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2993ECC40(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_299212A8C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_29920DDE0(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_29920DE38(v18);
  }
}

uint64_t *sub_2993ECDAC(uint64_t a1, int *a2, __int16 *a3)
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
    sub_29920DDE0(a1, v7);
  }

  v13 = 0;
  v14 = 24 * v3;
  v15 = 24 * v3;
  v16 = 0;
  sub_29927A740((24 * v3), *a2, a3);
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
  sub_29920DE38(&v13);
  return (24 * v3 + 24);
}

void sub_2993ECEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29920DE38(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2993ECED4(uint64_t *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = 24 * a2;
      v11 = (v3 + 8);
      do
      {
        *v11 = 0;
        v11[1] = 0;
        *(v11 - 1) = v11;
        v11 += 3;
        v10 -= 24;
      }

      while (v10);
    }

    else
    {
      v9 = result[1];
    }

    result[1] = v9;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_299212A8C();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    v30 = result;
    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_29919600C();
    }

    v12 = 0;
    v29 = 0;
    v13 = 24 * v5 + 24 * a2;
    v14 = 24 * a2;
    v15 = (24 * v5 + 8);
    do
    {
      *v15 = 0;
      v15[1] = 0;
      *(v15 - 1) = v15;
      v15 += 3;
      v14 -= 24;
    }

    while (v14);
    v16 = *result;
    v17 = result[1];
    v18 = 24 * v5 - (v17 - *result);
    v28 = 24 * v5 + 24 * a2;
    if (v17 != v16)
    {
      v19 = 0;
      v20 = -8 * ((v17 - v16) >> 3) + 24 * v5;
      do
      {
        v21 = (v20 + v19);
        *v21 = *(v16 + v19);
        v22 = (v16 + v19 + 8);
        v23 = *v22;
        *(v20 + v19 + 8) = *v22;
        v24 = v20 + v19 + 8;
        v25 = *(v16 + v19 + 16);
        v21[2] = v25;
        if (v25)
        {
          *(v23 + 16) = v24;
          *(v16 + v19) = v22;
          *v22 = 0;
          *(v16 + v19 + 16) = 0;
        }

        else
        {
          *v21 = v24;
        }

        v19 += 24;
      }

      while (v16 + v19 != v17);
      do
      {
        sub_29929A278(v16, *(v16 + 8));
        v16 += 24;
      }

      while (v16 != v17);
      v16 = *v2;
      v13 = v28;
      v12 = v29;
    }

    *v2 = v18;
    v2[1] = v13;
    v26 = v2[2];
    v2[2] = v12;
    v28 = v16;
    v29 = v26;
    v27[0] = v16;
    v27[1] = v16;
    return sub_2993ED0E8(v27);
  }

  return result;
}

uint64_t sub_2993ED0E8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_29929A278(i - 24, *(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2993ED13C(const void ****a1)
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
        v5 = v3 - 3;
        sub_29929A278((v3 - 3), *(v3 - 2));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2993ED1AC(uint64_t *a1)
{
  if (*a1)
  {
    sub_29920E0B4(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2993ED1EC(void ***a1)
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
        v6 = v4 - 3;
        sub_299235628(v4 - 1, 0);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2993ED278(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1461890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461890))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_2A1461898, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461898))
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &stru_2A145FB60, &dword_29918C000);
    __cxa_guard_release(&qword_2A1461898);
  }

  std::mutex::lock(&stru_2A145FB60);
  v5 = qword_2A1461888;
  v6 = sub_2991C0548(qword_2A1461888, a2);
  v7 = v5[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*v5 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_19:
    v15 = sub_2993652F8(0xDu);
    v16 = os_signpost_id_make_with_pointer(v15, a2);
    v17 = sub_2993652F8(0xDu);
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = v17;
      if (os_signpost_enabled(v17))
      {
        if (*(a2 + 23) >= 0)
        {
          v19 = a2;
        }

        else
        {
          v19 = *a2;
        }

        *buf = 136315138;
        *&buf[4] = v19;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "SingletonResourceManagerLoad", "Load resource with key: [%s]", buf, 0xCu);
      }
    }

    *buf = (*(a3 + 16))(a3);
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v8)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v7)
      {
        v14 %= *&v7;
      }
    }

    else
    {
      v14 &= *&v7 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_19;
    }

LABEL_18:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_19;
    }
  }

  if (!sub_2991C09F4(v5, v13 + 2, a2))
  {
    goto LABEL_18;
  }

  v20 = v13[6];
  if (!v20 || v20->__shared_owners_ == -1)
  {
    goto LABEL_19;
  }

  v21 = std::__shared_weak_count::lock(v20);
  if (v21)
  {
    v22 = v13[5];
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(&stru_2A145FB60);
  *a1 = v22;
  a1[1] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_2991A893C(v21);
  }
}

void sub_2993EDBD4(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v3);
  sub_2993EDEE0(v2, 0);
  MEMORY[0x29C29BFB0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_2993EDC34(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2993EDD3C(v2);
    MEMORY[0x29C29BFB0](v3, 0x10F2C40E01BBEB9);
  }

  return a1;
}

void sub_2993EDC80(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993EDCB8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2993EDD3C(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2993EDCFC(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79EC0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993EDD3C(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = atomic_load((a1 + 40));
  if (v2 == 1)
  {
    v3 = (a1 + 112);
    do
    {
      v4 = dispatch_time(0, 1000000);
      if (sub_299299E1C(a1, v4, 0))
      {
        break;
      }

      v5 = atomic_load((a1 + 40));
      if (v5 == 2)
      {
        break;
      }

      v6 = sub_2993652F8(1u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = a1 + 112;
        if (*(a1 + 135) < 0)
        {
          v8 = *v3;
        }

        *buf = 136315138;
        v11 = v8;
        _os_log_error_impl(&dword_29918C000, v6, OS_LOG_TYPE_ERROR, "Still waiting for resource [%s] to complete in background.", buf, 0xCu);
      }

      v7 = atomic_load((a1 + 40));
    }

    while (v7 == 1);
  }

  std::mutex::lock((a1 + 48));
  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 8));
  dispatch_release(*(a1 + 16));
  std::mutex::unlock((a1 + 48));
  if (*(a1 + 144) == 1)
  {
    std::mutex::unlock(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  std::mutex::~mutex((a1 + 48));
  sub_2993EDEE0(a1, 0);
  return a1;
}

void sub_2993EDED0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2991EDA10(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2993EDEE0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 56);
    sub_29920E060(&v3);
    v3 = (v2 + 32);
    sub_29929A1EC(&v3);
    sub_299219AB4((v2 + 8), 0);
    sub_299291748(v2, 0);
    return MEMORY[0x29C29BFB0](v2, 0x1060C404B74122BLL);
  }

  return result;
}

void sub_2993EDF60(const void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = *a1;
    v9 = a1[2];
    v10 = a1[1];
    if (v9)
    {
      v11 = CFRetain(v9);
    }

    else
    {
      v11 = 0;
    }

    v12 = 0;
    v13 = v4 >> 1;
    v14 = a1;
    while (1)
    {
      v15 = v14;
      v14 += 3 * v12 + 3;
      v16 = 2 * v12;
      v12 = (2 * v12) | 1;
      v17 = v16 + 2;
      if (v17 < a4)
      {
        v18 = *v14;
        v19 = v14[1];
        v20 = *(v14 + 3);
        v21 = v14[4];
        if (v19 != v21 && vabdd_f64(v18, v20) <= 0.3)
        {
          if (v19 >= v21)
          {
            goto LABEL_11;
          }

LABEL_10:
          v14 += 3;
          v12 = v17;
          goto LABEL_11;
        }

        if (v18 > v20)
        {
          goto LABEL_10;
        }
      }

LABEL_11:
      *v15 = *v14;
      v22 = v14[2];
      v14[2] = 0;
      sub_299235628(v15 + 2, v22);
      v15[1] = v14[1];
      if (v12 > v13)
      {
        if ((a2 - 24) == v14)
        {
          *v14 = v8;
          sub_299235628(v14 + 2, v11);
          v14[1] = v10;
        }

        else
        {
          v24 = *(a2 - 8);
          v23 = (a2 - 8);
          *v14 = *(v23 - 2);
          *v23 = 0;
          sub_299235628(v14 + 2, v24);
          v14[1] = *(v23 - 1);
          *(v23 - 2) = v8;
          sub_299235628(v23, v11);
          *(v23 - 1) = v10;
          sub_2993EE134(a1, (v14 + 3), 0xAAAAAAAAAAAAAAABLL * (v14 + 3 - a1));
        }

        return;
      }
    }
  }
}

void sub_2993EE118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_299235628(va, 0);
  _Unwind_Resume(a1);
}

void sub_2993EE134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v6 = v3 >> 1;
    v7 = a1 + 24 * (v3 >> 1);
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *(a2 - 24);
    v11 = *(a2 - 16);
    if (v9 == v11 || vabdd_f64(v8, v10) > 0.3)
    {
      if (v8 <= v10)
      {
        return;
      }
    }

    else if (v9 >= v11)
    {
      return;
    }

    v12 = *(a2 - 8);
    if (v12)
    {
      v13 = CFRetain(v12);
      v8 = *v7;
    }

    else
    {
      v13 = 0;
    }

    *(a2 - 24) = v8;
    v14 = *(v7 + 16);
    *(v7 + 16) = 0;
    sub_299235628((a2 - 8), v14);
    *(a2 - 16) = *(v7 + 8);
    if (v3 >= 2)
    {
      v15 = v7;
      do
      {
        v16 = v6 - 1;
        v6 = (v6 - 1) >> 1;
        v7 = a1 + 24 * v6;
        v17 = *v7;
        v18 = *(v7 + 8);
        if (v18 == v11 || vabdd_f64(v17, v10) > 0.3)
        {
          if (v17 <= v10)
          {
            goto LABEL_19;
          }
        }

        else if (v18 >= v11)
        {
LABEL_19:
          v7 = v15;
          break;
        }

        *v15 = v17;
        v19 = *(v7 + 16);
        *(v7 + 16) = 0;
        sub_299235628((v15 + 16), v19);
        *(v15 + 8) = *(v7 + 8);
        v15 = a1 + 24 * v6;
      }

      while (v16 > 1);
    }

    *v7 = v10;
    sub_299235628((v7 + 16), v13);
    *(v7 + 8) = v11;
  }
}

uint64_t sub_2993EE2A0(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_299235628((*(a1[1] + 8 * (v2 / 0xAA)) + 24 * (v2 % 0xAA) + 16), 0);
  --a1[5];

  return sub_2993EE324(a1, 1);
}

uint64_t sub_2993EE324(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0xAA)
  {
    a2 = 1;
  }

  if (v5 < 0x154)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *sub_2993EE39C(uint64_t a1, void *a2, unint64_t a3, double a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    while (1)
    {
      v7 = v5;
      v8 = *(v5 + 32);
      v9 = *(v5 + 40);
      if (v9 == a3)
      {
        if (v8 < a4)
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }

      if (vabdd_f64(a4, v8) <= 0.3)
      {
        if (v9 > a3)
        {
          goto LABEL_11;
        }

LABEL_7:
        if (vabdd_f64(v8, a4) <= 0.3)
        {
          if (v9 >= a3)
          {
            goto LABEL_17;
          }

          goto LABEL_14;
        }

LABEL_8:
        if (v8 <= a4)
        {
          goto LABEL_17;
        }

LABEL_14:
        result = v7 + 1;
        v5 = v7[1];
        if (!v5)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v8 >= a4)
        {
          goto LABEL_7;
        }

LABEL_11:
        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_17;
        }
      }
    }
  }

  v7 = result;
LABEL_17:
  *a2 = v7;
  return result;
}

uint64_t sub_2993EE434(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_299235628(v2 + 6, 0);
    }

    operator delete(v2);
  }

  return a1;
}

__n128 sub_2993EE4F8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F79EE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2993EE528(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  LXCursorTerminationProbability();
  v6 = v5 + *a2;
  if (v6 >= *(v4 + 24))
  {
    v7 = *(a1 + 16);
    v9 = v7[1];
    v8 = v7[2];
    if (v9 >= v8)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *v7) >> 3);
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_299212A8C();
      }

      v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *v7) >> 3);
      v15 = 2 * v14;
      if (2 * v14 <= v13 + 1)
      {
        v15 = v13 + 1;
      }

      if (v14 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v15;
      }

      v34 = *(a1 + 16);
      if (v16)
      {
        sub_2993EE784(v16);
      }

      v17 = 24 * v13;
      v30 = 0;
      v31 = v17;
      v32 = v17;
      v33 = 0;
      v19 = *(a2 + 8);
      v18 = *(a2 + 16);
      *v17 = v6;
      *(v17 + 8) = v19;
      if (v18)
      {
        v18 = CFRetain(v18);
        v20 = v31;
        v21 = v32;
      }

      else
      {
        v20 = v17;
        v21 = v17;
      }

      *(v17 + 16) = v18;
      v32 = v21 + 24;
      v22 = v7[1];
      v23 = v20 + *v7 - v22;
      sub_2993EE7DC(*v7, v22, v23);
      v24 = *v7;
      *v7 = v23;
      v12 = v32;
      v30 = v24;
      v31 = v24;
      v7[1] = v32;
      v32 = v24;
      v25 = v7[2];
      v7[2] = v33;
      v33 = v25;
      sub_2993EE8A0(&v30);
    }

    else
    {
      v11 = *(a2 + 8);
      v10 = *(a2 + 16);
      *v9 = v6;
      *(v9 + 8) = v11;
      if (v10)
      {
        v10 = CFRetain(v10);
      }

      *(v9 + 16) = v10;
      v12 = v9 + 24;
      v7[1] = v9 + 24;
    }

    v7[1] = v12;
    sub_2993EE134(*v7, v12, 0xAAAAAAAAAAAAAAABLL * ((v12 - *v7) >> 3));
    v26 = *(a1 + 16);
    v27 = *(v26 + 8);
    v28 = 0xAAAAAAAAAAAAAAABLL * ((v27 - *v26) >> 3);
    if (v28 > *(v4 + 16))
    {
      sub_2993EDF60(*v26, v27, &v30, v28);
      v29 = *(v26 + 8);
      sub_299235628((v29 - 8), 0);
      *(v26 + 8) = v29 - 24;
    }
  }
}

uint64_t sub_2993EE738(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79F58))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2993EE784(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_29919600C();
}

void sub_2993EE7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      v7 = (a3 + v6);
      v9 = *(v5 + v6 + 8);
      v8 = *(v5 + v6 + 16);
      *v7 = *(v5 + v6);
      v7[1] = v9;
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      v7[2] = v8;
      v6 += 24;
    }

    while (v5 + v6 != a2);
    do
    {
      sub_299235628((v5 + 16), 0);
      v5 += 24;
    }

    while (v5 != a2);
  }
}

void sub_2993EE86C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = -v2;
    v5 = (v1 + v2 - 8);
    do
    {
      sub_299235628(v5, 0);
      v5 -= 3;
      v4 += 24;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993EE8A0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_299235628((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2993EE8F8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_2993EE9FC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F79F78;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_2993EEA3C(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v7 = *(a1 + 40);
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = sub_2993EEBA0;
  v3[3] = &unk_29EF22388;
  v4 = *(a1 + 24);
  v3[4] = v6;
  v3[5] = a2;
  v5 = *(a1 + 8);
  v2 = v4 - *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(v7 + 8) - *v7) >> 3) == v5)
  {
    v2 = fmax(**v7 + -0.3 - *a2, v2);
  }

  if (v2 <= 0.0)
  {
    sub_299235108(*(a2 + 16), v3, *(a1 + 16), v2);
  }

  _Block_object_dispose(v6, 8);
}

uint64_t sub_2993EEB54(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79FD8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2993EEBA0(uint64_t a1, const void *a2, uint64_t a3, double a4)
{
  if (LXCursorHasEntries())
  {
    v8 = **(a1 + 40) + a4;
    LXCursorTerminationProbability();
    v10 = v8 + v9;
    if (v10 >= *(a1 + 48))
    {
      v11 = *(*(*(a1 + 32) + 8) + 24);
      v12 = *(*(a1 + 40) + 8) + a3;
      v14 = v11[1];
      v13 = v11[2];
      if (v14 >= v13)
      {
        v16 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *v11) >> 3);
        if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_299212A8C();
        }

        v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *v11) >> 3);
        v18 = 2 * v17;
        if (2 * v17 <= v16 + 1)
        {
          v18 = v16 + 1;
        }

        if (v17 >= 0x555555555555555)
        {
          v19 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v19 = v18;
        }

        v37 = *(*(*(a1 + 32) + 8) + 24);
        if (v19)
        {
          sub_2993EE784(v19);
        }

        v21 = 24 * v16;
        v33 = 0;
        v34 = v21;
        v35 = v21;
        v36 = 0;
        *v21 = v10;
        *(v21 + 8) = v12;
        if (a2)
        {
          v22 = CFRetain(a2);
          v23 = v34;
          v24 = v35;
        }

        else
        {
          v22 = 0;
          v23 = v21;
          v24 = v21;
        }

        *(v21 + 16) = v22;
        v35 = v24 + 24;
        v25 = v11[1];
        v26 = v23 + *v11 - v25;
        sub_2993EE7DC(*v11, v25, v26);
        v27 = *v11;
        *v11 = v26;
        v20 = v35;
        v33 = v27;
        v34 = v27;
        v11[1] = v35;
        v35 = v27;
        v28 = v11[2];
        v11[2] = v36;
        v36 = v28;
        sub_2993EE8A0(&v33);
      }

      else
      {
        *v14 = v10;
        *(v14 + 8) = v12;
        if (a2)
        {
          v15 = CFRetain(a2);
        }

        else
        {
          v15 = 0;
        }

        *(v14 + 16) = v15;
        v20 = v14 + 24;
        v11[1] = v14 + 24;
      }

      v11[1] = v20;
      sub_2993EE134(*v11, v20, 0xAAAAAAAAAAAAAAABLL * ((v20 - *v11) >> 3));
      v29 = *(*(*(a1 + 32) + 8) + 24);
      v30 = *(v29 + 8);
      v31 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *v29) >> 3);
      if (v31 > *(a1 + 56))
      {
        sub_2993EDF60(*v29, v30, &v33, v31);
        v32 = *(v29 + 8);
        sub_299235628((v32 - 8), 0);
        *(v29 + 8) = v32 - 24;
      }
    }
  }
}

uint64_t sub_2993EEDEC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v2 != v3)
  {
  }

  sub_29921B8CC(a1 + 40, *(a1 + 48));
  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_2993EEE54(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  v6 = a1[6];
  v5 = a1 + 6;
  *(v5 - 4) = v2;
  sub_29921B8CC((v5 - 1), v6);
  *v5 = 0;
  v5[1] = 0;
  *(v5 - 2) = *(v5 - 5);
  *(v5 - 1) = v5;
}

uint64_t sub_2993EEEB8(int *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 4);
  if (v6 == *(a1 + 2))
  {
    return 0;
  }

  v17[9] = v4;
  v17[10] = v5;
  while (1)
  {
    Surface = MecabraCandidateGetSurface(*v6, a2, a3, a4);
    if (!Surface)
    {
      break;
    }

    v9 = Surface;
    v10 = *a1;
    if (atomic_load_explicit(&qword_2A14618C0, memory_order_acquire) != -1)
    {
      v16 = v17;
      v17[0] = &v15;
      std::__call_once(&qword_2A14618C0, &v16, sub_2993EF5F8);
    }

    v11 = v10 == 5 || v10 == 2;
    if (!v11 || (v12 = qword_2A14618B8) == 0 || (v18.length = CFArrayGetCount(qword_2A14618B8), v18.location = 0, !CFArrayContainsValue(v12, v18, v9)))
    {
      if ((sub_2992BF2E4(*(a1 + 9), v9, 2048) & 1) == 0)
      {
        break;
      }
    }

    v6 = (*(a1 + 4) + 8);
    *(a1 + 4) = v6;
    if (v6 == *(a1 + 2))
    {
      return 0;
    }
  }

  v14 = *(a1 + 4);
  *(a1 + 4) = v14 + 8;
  return *v14;
}

void sub_2993EEFE0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1[8] > ((a1[2] - a1[1]) >> 3))
  {
    v4 = objc_msgSend_rawCandidate(a2, a2, a3, a4);
    v5 = (*(*v4 + 32))(v4);
    sub_299276A84(v5);
  }

  MEMORY[0x2A1C71028]();
}

void sub_2993EF14C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993EF174(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[1];
  if (v6 != a2[2])
  {
    do
    {
      v7 = *v6++;
      sub_2993EEFE0(a1, v7, a3, a4);
    }

    while (v6 != a2[2]);
    v6 = a2[1];
  }

  v9 = a2[6];
  v8 = a2 + 6;
  *(v8 - 4) = v6;
  sub_29921B8CC((v8 - 1), v9);
  *v8 = 0;
  v8[1] = 0;
  *(v8 - 1) = v8;
  a1[4] = a1[1];
}

void sub_2993EF1E8(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  if (v6 != v7)
  {
    v8 = *(a1 + 16);
    v9 = (a1 + 8);
    if ((v8 - *(a1 + 8)) >> 3 >= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = (v8 - *(a1 + 8)) >> 3;
    }

    v11 = (a1 + 48);
    do
    {
      v23 = *v6;
      v12 = objc_msgSend_rawCandidate(v23, a2, a3, a4);
      v13 = (*(*v12 + 32))(v12);
      v14 = sub_299279FBC(v13);
      v22 = v14;
      v15 = *v11;
      if (!*v11)
      {
        goto LABEL_14;
      }

      v16 = a1 + 48;
      do
      {
        v17 = *(v15 + 28);
        v18 = v17 >= v14;
        v19 = v17 < v14;
        if (v18)
        {
          v16 = v15;
        }

        v15 = *(v15 + 8 * v19);
      }

      while (v15);
      if (v16 != v11 && v14 >= *(v16 + 28))
      {
      }

      else
      {
LABEL_14:
        sub_2993EF32C((a1 + 8), (*v9 + 8 * v10), &v23);
        sub_2992BD068((a1 + 40), &v22, &v22);
        ++v10;
      }

      ++v6;
    }

    while (v6 != v7);
    v6 = *(a2 + 1);
  }

  v21 = *(a2 + 6);
  v20 = a2 + 48;
  *(v20 - 4) = v6;
  sub_29921B8CC((v20 - 1), v21);
  *v20 = 0;
  v20[1] = 0;
  *(v20 - 1) = v20;
  *(a1 + 32) = *(a1 + 8);
}

char *sub_2993EF32C(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_2993EF630();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    if (v14)
    {
      sub_2993EF648(a1, v14);
    }

    v16 = (8 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == v4)
        {
          v19 = 1;
        }

        else
        {
          v19 = v12 >> 2;
        }

        sub_2993EF648(a1, v19);
      }

      v16 = (v16 - (((v12 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v16 = *a3;
    memcpy(v16 + 1, v4, a1[1] - v4);
    v20 = *a1;
    v21 = v16 + a1[1] - v4 + 8;
    a1[1] = v4;
    v22 = v4 - v20;
    v23 = v16 - (v4 - v20);
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    a1[1] = v21;
    a1[2] = 0;
    if (v24)
    {
      operator delete(v24);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v17 = v9 <= a3 || v4 > a3;
    v18 = 8;
    if (v17)
    {
      v18 = 0;
    }

    *v4 = *&a3[v18];
  }

  return v4;
}

void sub_2993EF50C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993EF524(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2993EF630();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_2993EF648(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

CFArrayRef sub_2993EF5F8()
{
  result = CFArrayCreate(0, &off_2A145FBA0, 4, MEMORY[0x29EDB9000]);
  qword_2A14618B8 = result;
  return result;
}

void sub_2993EF648(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2993EF690(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 850045863;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = &unk_2A1F79FF8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  if (!sub_2993EFD48(0))
  {
    return a1;
  }

  v5 = sub_299277498(a2);
  if (!v5)
  {
    return a1;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v6 = off_2A14618D0;
  v14 = off_2A14618D0;
  if (!off_2A14618D0)
  {
    v7 = sub_2993EFEDC();
    v12[3] = dlsym(v7, "NLStringTokenizerCreate");
    off_2A14618D0 = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    v8 = (v6)(0, 0, 0, 0, 0, v5);
    sub_2993EF880(v4, v8);
    CFRelease(v5);
    return a1;
  }

  v10 = dlerror();
  result = abort_report_np("%s", v10);
  __break(1u);
  return result;
}

void sub_2993EF830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, const void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  sub_299253084(va, 0);
  std::mutex::~mutex(v6);
  sub_2993EF880(v5, 0);
  _Unwind_Resume(a1);
}

void sub_2993EF880(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_2993EF8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8))
  {
    std::mutex::lock((a1 + 16));
    v8 = *(a1 + 8);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v9 = off_2A14618D8;
    v15 = off_2A14618D8;
    if (!off_2A14618D8)
    {
      v10 = sub_2993EFEDC();
      v13[3] = dlsym(v10, "NLStringTokenizerSetString");
      off_2A14618D8 = v13[3];
      v9 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (v9)
    {
      v9(v8, a2, a3, a4);
      std::mutex::unlock((a1 + 16));
    }

    else
    {
      v11 = dlerror();
      abort_report_np("%s", v11);
      __break(1u);
    }
  }
}

void sub_2993EF9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  std::mutex::unlock((v13 + 16));
  _Unwind_Resume(a1);
}

BOOL sub_2993EFA24(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v2 = off_2A14618E0;
  v10 = off_2A14618E0;
  if (!off_2A14618E0)
  {
    v3 = sub_2993EFEDC();
    v8[3] = dlsym(v3, "NLStringTokenizerAdvanceToNextToken");
    off_2A14618E0 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = dlerror();
    v6 = abort_report_np("%s", v5);
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v2(v1) != 0;
}

uint64_t sub_2993EFB4C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v2 = off_2A14618E8;
  v10 = off_2A14618E8;
  if (!off_2A14618E8)
  {
    v3 = sub_2993EFEDC();
    v8[3] = dlsym(v3, "NLStringTokenizerGetCurrentTokenRange");
    off_2A14618E8 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = dlerror();
    v6 = abort_report_np("%s", v5);
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v2(v1);
}

uint64_t sub_2993EFC78(uint64_t a1)
{
  *a1 = &unk_2A1F79FF8;
  v2 = (a1 + 8);
  std::mutex::~mutex((a1 + 16));
  sub_2993EF880(v2, 0);
  return a1;
}

void sub_2993EFCD0(uint64_t a1)
{
  *a1 = &unk_2A1F79FF8;
  v1 = (a1 + 8);
  std::mutex::~mutex((a1 + 16));
  sub_2993EF880(v1, 0);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993EFD48(uint64_t a1)
{
  if (!qword_2A14618C8)
  {
    qword_2A14618C8 = _sl_dlopen();
  }

  return qword_2A14618C8;
}

uint64_t sub_2993EFE18(uint64_t a1)
{
  result = _sl_dlopen();
  qword_2A14618C8 = result;
  return result;
}

void *sub_2993EFE8C(uint64_t a1)
{
  v2 = sub_2993EFEDC();
  result = dlsym(v2, "NLStringTokenizerCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A14618D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2993EFEDC()
{
  v3 = 0;
  v0 = sub_2993EFD48(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

void *sub_2993EFF38(uint64_t a1)
{
  v2 = sub_2993EFEDC();
  result = dlsym(v2, "NLStringTokenizerSetString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A14618D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2993EFF88(uint64_t a1)
{
  v2 = sub_2993EFEDC();
  result = dlsym(v2, "NLStringTokenizerAdvanceToNextToken");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A14618E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2993EFFD8(uint64_t a1)
{
  v2 = sub_2993EFEDC();
  result = dlsym(v2, "NLStringTokenizerGetCurrentTokenRange");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A14618E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2993F0028(void *a1)
{
  *a1 = &unk_2A1F719F0;
  v2 = (a1 + 1);
  sub_29921ED28((a1 + 3));
  sub_2992530BC(v2, 0);
  return a1;
}

void sub_2993F0080(void *a1)
{
  *a1 = &unk_2A1F719F0;
  v1 = (a1 + 1);
  sub_29921ED28((a1 + 3));
  sub_2992530BC(v1, 0);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993F0120(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v63 = *MEMORY[0x29EDCA608];
  v7 = malloc_type_malloc(0x5CuLL, 0x10B00409D9B1D59uLL);
  if (v7)
  {
    v8 = v7;
    errorCode = 0;
    resourceData = 0;
    if (CFURLCreateDataAndPropertiesFromResource(*MEMORY[0x29EDB8ED8], v5, &resourceData, 0, 0, &errorCode) && (Length = CFDataGetLength(resourceData), (v10 = malloc_type_malloc(Length, 0x100004077774924uLL)) != 0))
    {
      v11 = v10;
      v64.location = 0;
      v64.length = Length;
      CFDataGetBytes(resourceData, v64, v10);
      CFRelease(resourceData);
      *v8 = *v11;
      v12 = bswap32(*(v11 + 1)) >> 16;
      *(v8 + 1) = v12;
      v13 = bswap32(*(v11 + 2)) >> 16;
      *(v8 + 2) = v13;
      *(v8 + 3) = bswap32(*(v11 + 3)) >> 16;
      *(v8 + 4) = bswap32(*(v11 + 4)) >> 16;
      *(v8 + 5) = bswap32(*(v11 + 5)) >> 16;
      *(v8 + 6) = bswap32(*(v11 + 6)) >> 16;
      *(v8 + 7) = bswap32(*(v11 + 7)) >> 16;
      *(v8 + 8) = bswap32(*(v11 + 8)) >> 16;
      *(v8 + 9) = bswap32(*(v11 + 9)) >> 16;
      v14 = malloc_type_malloc(v12 * v13 + v12, 0x100004077774924uLL);
      *(v8 + 20) = v14;
      if (v14)
      {
        v58 = v3;
        v59 = v11;
        memmove(v14, v11 + 20, *(v8 + 2) * *(v8 + 1));
        v15 = *(v8 + 2) * *(v8 + 1);
        v16 = v15 + 20;
        if (v15 >= 1)
        {
          v17 = 0;
          do
          {
            *(*(v8 + 20) + v17++) ^= *v8;
          }

          while (v17 < *(v8 + 2) * *(v8 + 1));
        }

        v18 = *(v8 + 3);
        v19 = *(v8 + 4);
        if (v18 > 0)
        {
          v20 = 0;
          v21 = __src;
          do
          {
            memmove(&__src[256 * v20], &v59[v16], v19);
            if (v19 >= 1)
            {
              v22 = *v8;
              v23 = v21;
              v24 = v19;
              do
              {
                *v23 ^= v22;
                v23 = (v23 + 1);
                --v24;
              }

              while (v24);
            }

            v16 += v19;
            *(&__src[256 * v20++] + v19) = 0;
            v21 += 256;
          }

          while (v20 != v18);
        }

        v25 = malloc_type_malloc((v19 + 2) * v18, 0x100004077774924uLL);
        *(v8 + 28) = v25;
        if (v25)
        {
          if (*(v8 + 3) >= 1)
          {
            v26 = 0;
            v27 = __src;
            do
            {
              memmove((*(v8 + 28) + (*(v8 + 4) + 2) * v26++), v27, *(v8 + 4) + 2);
              v27 += 256;
            }

            while (v26 < *(v8 + 3));
          }

          v28 = *(v8 + 5);
          v29 = *(v8 + 6);
          if (v28 > 0)
          {
            v30 = 0;
            v31 = __src;
            do
            {
              memmove(&__src[256 * v30], &v59[v16], v29);
              if (v29 >= 1)
              {
                v32 = *v8;
                v33 = v31;
                v34 = v29;
                do
                {
                  *v33 ^= v32;
                  v33 = (v33 + 1);
                  --v34;
                }

                while (v34);
              }

              v16 += v29;
              *(&__src[256 * v30++] + v29) = 0;
              v31 += 256;
            }

            while (v30 != v28);
          }

          v35 = malloc_type_malloc((v29 + 2) * v28, 0x100004077774924uLL);
          *(v8 + 36) = v35;
          if (v35)
          {
            v11 = v59;
            if (*(v8 + 5) >= 1)
            {
              v36 = 0;
              v37 = __src;
              do
              {
                memmove((*(v8 + 36) + (*(v8 + 6) + 2) * v36++), v37, *(v8 + 6) + 2);
                v37 += 256;
              }

              while (v36 < *(v8 + 5));
            }

            v38 = *(v8 + 7);
            v39 = *(v8 + 7);
            memmove(__src, &v59[v16], v39);
            if (v38 >= 1)
            {
              v40 = *v8;
              v41 = __src;
              v42 = v38;
              do
              {
                *v41 ^= v40;
                v41 = (v41 + 1);
                --v42;
              }

              while (v42);
            }

            *(__src + v39) = 0;
            v43 = malloc_type_malloc(v39 + 2, 0x100004077774924uLL);
            *(v8 + 44) = v43;
            if (v43)
            {
              v44 = v16 + v38;
              sub_29936B460(v43, __src, *(v8 + 7) + 2);
              v45 = *(v8 + 8);
              v46 = *(v8 + 8);
              memmove(__src, &v59[v44], v46);
              if (v45 >= 1)
              {
                v47 = *v8;
                v48 = __src;
                v49 = v45;
                do
                {
                  *v48 ^= v47;
                  v48 = (v48 + 1);
                  --v49;
                }

                while (v49);
              }

              *(__src + v46) = 0;
              v50 = malloc_type_malloc(v46 + 2, 0x100004077774924uLL);
              *(v8 + 52) = v50;
              v3 = v58;
              if (v50)
              {
                sub_29936B460(v50, __src, *(v8 + 8) + 2);
                v51 = *(v8 + 9);
                memmove(__src, &v59[(v44 + v45)], v51);
                if (v51 >= 1)
                {
                  v52 = *v8;
                  v53 = __src;
                  v54 = v51;
                  do
                  {
                    *v53 ^= v52;
                    v53 = (v53 + 1);
                    --v54;
                  }

                  while (v54);
                }

                *(__src + v51) = 0;
                v55 = malloc_type_malloc(v51 + 2, 0x100004077774924uLL);
                *(v8 + 60) = v55;
                if (v55)
                {
                  sub_29936B460(v55, __src, *(v8 + 9) + 2);
                  free(v59);
                  goto LABEL_54;
                }

                errorCode = -108;
                v50 = *(v8 + 52);
              }

              else
              {
                errorCode = -108;
              }

              free(v50);
              v43 = *(v8 + 44);
            }

            else
            {
              errorCode = -108;
              v3 = v58;
            }

            free(v43);
            v35 = *(v8 + 36);
          }

          else
          {
            errorCode = -108;
            v3 = v58;
            v11 = v59;
          }

          free(v35);
          v25 = *(v8 + 28);
        }

        else
        {
          errorCode = -108;
          v3 = v58;
          v11 = v59;
        }

        free(v25);
        v14 = *(v8 + 20);
      }

      else
      {
        errorCode = -108;
      }

      free(v14);
      free(v11);
      v56 = errorCode;
      if (!errorCode)
      {
LABEL_54:
        v56 = sub_299275374((v8 + 68), v3);
        if (!v56)
        {
          *v6 = v8;
          return v56;
        }
      }
    }

    else
    {
      v56 = 4294967188;
    }

    free(v8);
    return v56;
  }

  return 4294967188;
}

void sub_2993F0780(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 20));
    free(*(a1 + 28));
    free(*(a1 + 36));
    free(*(a1 + 44));
    free(*(a1 + 52));
    free(*(a1 + 60));
    sub_2992752C4(a1 + 68);

    free(a1);
  }
}

uint64_t sub_2993F07F4(uint64_t a1, unsigned __int16 *a2, int a3, int a4, uint64_t a5, _DWORD *a6, int *a7, int a8, __int16 a9, char a10)
{
  v15 = a3;
  v250 = *MEMORY[0x29EDCA608];
  if (a3 > 127)
  {
    v17 = (a2 + a3 - 128);
    v18 = s;
    v19 = 128;
    while (v19)
    {
      v20 = *v17++;
      *v18++ = v20;
      v19 -= 2;
      if (!v20)
      {
        if (v19)
        {
          bzero(v18, v19);
        }

        break;
      }
    }

    s[64] = 0;
    v15 = 128;
  }

  else
  {
    if ((a3 - 257) < 0xFFFFFFFFFFFFFEFDLL)
    {
      return 4294967186;
    }

    v21 = a3 + ((a3 & 0x80) >> 7);
    v22 = v21 >> 1;
    v23 = 2 * (v21 >> 1);
    v24 = s;
    while (v22)
    {
      v25 = *a2++;
      *v24++ = v25;
      v23 -= 2;
      --v22;
      if (!v25)
      {
        if (v22)
        {
          bzero(v24, v23);
        }

        break;
      }
    }

    *(s + v15) = 0;
  }

  *v233 = a4;
  v225[0] = a10;
  v26 = v15 - a4;
  if (v15 == a4)
  {
    result = 0;
    *a7 = 0;
    return result;
  }

  v214 = a4;
  v218 = a8;
  v213 = v15;
  v215 = a5;
  v216 = a6;
  v217 = a7;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = a9;
  *&v244[4] = 0;
  v243[0] = 0;
  v219 = v26;
  v31 = v26;
  LOWORD(a8) = 1;
  v32 = a9;
  do
  {
    v33 = sub_2993F3D88(a1, s, v31 - v27, 0, &v244[4], v243);
    if (v33)
    {
      v29 = 0;
      v34 = a8;
      v35 = v27;
      v28 = v33;
      v32 = v30;
    }

    else
    {
      v36 = sub_2993F3D88(a1, s, v31 - v27 + v28, v29, &v244[4], v243);
      if (v36)
      {
        v34 = a8 - 1;
      }

      else
      {
        v34 = a8;
      }

      if (v36)
      {
        v35 = v27 - v28;
      }

      else
      {
        v35 = v27;
      }

      if (v36)
      {
        v28 = v36;
      }

      else
      {
        v28 = 0;
      }

      if (!v36)
      {
        v32 = v30;
      }
    }

    v27 = v35 + v28;
    v37 = v32;
    if (v32 <= *&v244[4])
    {
      v37 = *&v244[4];
    }

    if (v32)
    {
      v30 = v37;
    }

    else
    {
      v30 = *&v244[4];
    }

    *&v224[2 * v34 + 1] = v30;
    v38 = v243[0];
    v225[v34 + 51] = sub_299349620(v243[0]);
    v39 = v27;
    *&v233[2 * v34] = v39;
    v225[v34] = v38;
    a8 = (v34 + 1);
    if (a8 > 49)
    {
      v34 = 0;
      goto LABEL_43;
    }

    if (!v28)
    {
      break;
    }

    ++v29;
  }

  while ((v35 + v28) != v219);
  if (v28)
  {
    goto LABEL_44;
  }

LABEL_43:
  LOWORD(a8) = v34;
LABEL_44:
  v40 = v217;
  if (a8 < 2 || !(v35 + v28))
  {
    goto LABEL_371;
  }

  if (a8 >= 0x10u)
  {
    *(v215 + 66) = v27 + v214;
    v41 = v225[a8 + 50];
    if (v41 == 1)
    {
      v42 = 2;
    }

    else
    {
      if (v41 != 4)
      {
        goto LABEL_371;
      }

      v42 = 6;
    }

    *(v215 + 68) = v41;
    *(v215 + 69) = v42;
    if (v39 + v214 <= 63)
    {
      v199 = v219 - v27;
      if ((2 * u_strlen((s + v199)) - 65) < 0xFFFFFFBD)
      {
        return 4294967186;
      }

      sub_29936B460(v215, (s + v199), 0x42uLL);
      if (v199 >= v213)
      {
LABEL_370:
        result = 0;
        *v216 = -1;
        *v217 = 1;
        return result;
      }

      v200 = s + v219 - (v35 + v28);
      while (1)
      {
        v243[0] = 0;
        if (!*(a1 + 82))
        {
          break;
        }

        sub_2993F7500(*(a1 + 84), v200, 2, &v244[4], v243);
        if (!v243[0])
        {
          break;
        }

        v199 += 2;
        v200 += 2;
        if (v199 >= v213)
        {
          goto LABEL_370;
        }
      }
    }

LABEL_371:
    result = 0;
    *v217 = 0;
    return result;
  }

  v43 = 0;
  v44 = 0;
  v245 = 0x100010001;
  v246 = 1;
  v247 = 0;
  v45 = *(a1 + 60);
  v46 = v45 + 36;
  v248 = 0x1000100010001;
  v249 = 0;
  v47 = &v244[4];
  do
  {
    v48 = &v227[v43];
    *&v227[v43 + 1] = *(v46 - 16);
    if (*v47++)
    {
      *v48 = 2;
      *(v48 + 3) = *v46;
      v50 = v48 + 5;
    }

    else
    {
      v50 = &v227[8 * v44 - v44 + 3];
      v227[v43] = -1;
    }

    ++v46;
    *v50 = 0;
    ++v44;
    v43 += 7;
  }

  while (v43 != 112);
  v227[112] = -1;
  v228 = v45[52];
  v229 = -1;
  v230 = v45[53];
  v231 = 0;
  *v217 = 0;
  LODWORD(v51) = *v216;
  if (!*v216)
  {
    LODWORD(v51) = a8 - 1;
    *v216 = v51;
  }

  if (v51 < 1)
  {
    goto LABEL_374;
  }

  v52 = 0;
  v51 = v51;
  v53 = v51 + 1;
  v220 = v27;
  v54 = v218;
  while (2)
  {
    if (v54 && *&v233[2 * v51] != v39)
    {
      goto LABEL_71;
    }

    v55 = v39;
    if ((2 * u_strlen(s) - 257) < 0xFFFFFEFD)
    {
      goto LABEL_62;
    }

    sub_29936B460(v236, s, 0x102uLL);
    if (*v40 >= 46)
    {
      *v40 = v52;
      goto LABEL_373;
    }

    v56 = *(a1 + 60);
    v57 = *(a1 + 44);
    v242[0] = 0;
    v240[0] = 0;
    v239[0] = 0;
    v223 = 0;
    v222 = 0;
    v58 = v225[v51];
    v59 = v58 - 200 > 3 || v58 == 201;
    v39 = v55;
    if (!v59 || (v58 & 0xFE) == 2 || *&v225[v51] / 0xAu - 13 < 3 || v58 - 112 <= 9 && ((1 << (v58 - 112)) & 0x203) != 0 || (v58 & 0xFE) == 0x72)
    {
      goto LABEL_69;
    }

    v61 = v225[v51];
    v62 = v51;
    do
    {
      v63 = v61;
      v61 = v224[v62 + 102];
      if (v63 <= 0x2C && ((1 << v63) & 0x100000804000) != 0)
      {
        goto LABEL_69;
      }

      v64 = v63 == 93 || v63 == 45;
      v65 = v64 || v63 == 73;
      v66 = v65;
      if (v61 != 100 && v66)
      {
        goto LABEL_69;
      }

      if (v63 - 30 < 3 || v63 == 210)
      {
        if (v61 - 110 <= 0xA && ((1 << (v61 - 110)) & 0x403) != 0)
        {
          goto LABEL_69;
        }
      }

      else if (v61 - 112 <= 9 && ((1 << (v61 - 112)) & 0x203) != 0)
      {
        goto LABEL_69;
      }

      if ((v61 & 0xFE) == 0x72)
      {
        if (v63 - 60 > 0x17 || ((1 << (v63 - 60)) & 0xB0000B) == 0)
        {
          goto LABEL_69;
        }
      }

      else if (v63 == 83)
      {
        if (v61 != 120 && v61 != 150)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v63 == 63 || v61 == 45 && v63 - 110 <= 0x28 && ((1 << (v63 - 110)) & 0x10040100C3FLL) != 0)
        {
          goto LABEL_69;
        }

        v211 = v56;
        v209 = sub_299349620(v224[v62 + 102]);
        v68 = sub_299349620(v63);
        v56 = v211;
        v39 = v55;
        if (!(v209 | v68) && v61 <= 0x63 && v63 < 0x64)
        {
          goto LABEL_69;
        }
      }

      --v62;
    }

    while ((v62 + 1) > 1);
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = v225;
    v77 = v53;
    do
    {
      v79 = *v76++;
      v78 = v79;
      v80 = v79 - 70;
      if (v79 - 70 <= 0x3C)
      {
        if (((1 << v80) & 0x100C3F00C0000000) != 0)
        {
          goto LABEL_133;
        }

        if (((1 << v80) & 0x100401) != 0)
        {
          goto LABEL_140;
        }

        if (((1 << v80) & 0x200802) != 0)
        {
          goto LABEL_139;
        }
      }

      if (v78 <= 0x3D)
      {
        if (((1 << v78) & 0x1004010040100401) != 0)
        {
          goto LABEL_140;
        }

        if (((1 << v78) & 0x2008020080200802) != 0)
        {
          goto LABEL_139;
        }
      }

      v81 = v78 + 116;
      if (v78 - 140 > 0x3F)
      {
        goto LABEL_128;
      }

      if (((1 << v81) & 0x401) == 0)
      {
        if (((1 << v81) & 0x5000000000000000) != 0)
        {
LABEL_140:
          ++v74;
        }

        else if (((1 << v81) & 0xA000000000000000) != 0)
        {
LABEL_139:
          ++v75;
        }

        else
        {
LABEL_128:
          if (v58 < 2 || v71 || v70)
          {
            goto LABEL_69;
          }

          ++v73;
        }

        v82 = v78 & 0xFE;
        if (v82 == 200)
        {
          if (v72 | v73)
          {
            goto LABEL_69;
          }

          v73 = 0;
          v72 = 0;
          ++v70;
          v69 = v74 + v75 - v71;
        }

        else if (v82 == 202)
        {
          if (v72 | v73)
          {
            goto LABEL_69;
          }

          if (v74 + v75 == ++v71 + v69 || 0xAAAAAAAAAAAAAAABLL * (v74 + v75 - (v71 + v69)) >= 0x5555555555555556)
          {
            goto LABEL_69;
          }

          v73 = 0;
          v72 = 0;
        }

        goto LABEL_149;
      }

LABEL_133:
      if (v58 < 2 || v71 || v70)
      {
        goto LABEL_69;
      }

      v71 = 0;
      ++v72;
LABEL_149:
      --v77;
    }

    while (v77);
    if (v70 >= 2 && v71)
    {
      goto LABEL_69;
    }

    v207 = v57;
    v212 = v56;
    if (v71)
    {
      ++v225[v51 + 51];
    }

    v210 = *v233 + *&v233[2 * v51];
    if (v210 > 0x100)
    {
      goto LABEL_62;
    }

    v83 = 0;
    v84 = v210 >> 1;
    while (v210 >> 1 != v83)
    {
      v85 = *(v236 + v213 - v210 + v83 * 2);
      v235[v83++] = v85;
      if (!v85)
      {
        if (v83 != v84)
        {
          bzero(&v235[v83], 2 * v84 - v83 * 2);
        }

        break;
      }
    }

    *(v235 + v210) = 0;
    v86 = 2 * u_strlen(v235);
    if ((v86 & 0xFE) != 0)
    {
      v87 = 0;
      v88 = 0;
      v224[0] = 0;
      v89 = v86 & 0xFE;
      v90 = &v234[v89 + 38];
      v91 = v86 - 2;
      do
      {
        if (*(a1 + 82))
        {
          sub_2993F7500(*(a1 + 84), v90, 2, v243, v224);
          if (v224[0] && v243[0] == 101)
          {
            v234[v87++] = v91 - v88;
          }
        }

        else
        {
          v224[0] = 0;
        }

        v88 += 2;
        v90 -= 2;
      }

      while (v88 < v89);
      if (v87)
      {
        v92 = 0;
        *&v244[4] = 0;
        v93 = *(&v233[102] + v87 + 1);
        v94 = 2 * (v93 >> 1);
        while (v94 != v92)
        {
          v95 = v235[v92 / 2];
          *&v244[v92 + 4] = v95;
          v92 += 2;
          if (!v95)
          {
            if (v92 != 2 * (v93 >> 1))
            {
              bzero(&v244[v92 + 4], v94 - v92);
            }

            break;
          }
        }

        *&v244[v93 + 4] = 0;
        if (v87 >= 2)
        {
          v96 = v87 - 2;
          while (1)
          {
            v97 = &v234[v96];
            v98 = *v97;
            v99 = v97[1];
            if (v98 - v99 + 2 * u_strlen(&v244[4]) > 0x102)
            {
              break;
            }

            v100 = &v244[4];
            v101 = v244;
            do
            {
              v102 = v100;
              v103 = *(v101 + 2);
              v101 += 2;
              v100 += 2;
            }

            while (v103);
            v93 = v93 + v98 - 2 - v99;
            v104 = (v98 - 2 - v99 + ((v98 - 2 - v99) >> 31)) >> 1;
            v105 = (&v235[1] + v99);
            do
            {
              v106 = v102;
              if (!v104)
              {
                break;
              }

              v107 = *v105++;
              *v102++ = v107;
              --v104;
            }

            while (v107);
            *v106 = 0;
            *&v244[v93 + 4] = 0;
            v60 = v96-- <= 0;
            if (v60)
            {
              goto LABEL_184;
            }
          }

LABEL_186:
          v40 = v217;
          goto LABEL_62;
        }

LABEL_184:
        v108 = u_strlen(&v244[4]);
        v109 = u_strlen(v235);
        v110 = v234[0];
        if (2 * (v109 + v108) - v234[0] > 0x102)
        {
          goto LABEL_186;
        }

        sub_29936B4BC(&v244[4], (&v235[1] + v234[0]), 0x102uLL);
        *&v244[v93 + 2 + 2 * u_strlen(v235) - v110] = 0;
        if ((2 * u_strlen(&v244[4]) - 257) < 0xFFFFFEFD)
        {
          goto LABEL_186;
        }

        sub_29936B460(v235, &v244[4], 0x102uLL);
      }
    }

    v40 = v217;
    if (sub_2993F2230(v235, v242, a1, v227, 0, &v223))
    {
      goto LABEL_62;
    }

    v201 = v223;
    if (!v223)
    {
      v40 = v217;
      if ((2 * u_strlen(v235) - 65) < 0xFFFFFFBD)
      {
        goto LABEL_62;
      }

      sub_29936B460(v240, v235, 0x42uLL);
      v130 = u_strlen(v240);
      if (!(v130 << 17))
      {
        goto LABEL_345;
      }

      v206 = (2 * v130);
      if (v206 < 1)
      {
        v144 = 0;
        goto LABEL_273;
      }

      v131 = sub_2993F21A4(a1, v240);
      v40 = v217;
      v39 = v55;
      if (v131 == -11)
      {
        goto LABEL_69;
      }

      v132 = v131;
      v133 = 0;
      v134 = 0;
      v135 = 0;
      while (1)
      {
        if (!(v133 | v132))
        {
          v135 = 1;
        }

        if ((2 * u_strlen(v239) - 63) < 0xFFFFFFBD)
        {
          goto LABEL_62;
        }

        if (v132 == 102)
        {
          v40 = v217;
          v39 = v55;
          if (v134 == 2)
          {
            goto LABEL_69;
          }

          v136 = v237;
          if (!v133)
          {
            goto LABEL_69;
          }

          do
          {
            v137 = *(v136 + 2);
            v136 += 2;
          }

          while (v137);
          v138 = *v207;
          *(v136 + 1) = v138;
          v59 = v138 == 0;
          v134 = 2;
          v139 = 4;
          if (v59)
          {
            v139 = 2;
          }

          *&v136[v139] = 0;
          v133 += 2;
          if (v206 <= v133)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v140 = v237;
          do
          {
            v141 = *(v140 + 2);
            v140 += 2;
          }

          while (v141);
          if (v134 == 2)
          {
            v134 = 1;
          }

          v142 = *(v212 + 20 + 2 * v132);
          *(v140 + 1) = v142;
          v59 = v142 == 0;
          v143 = 4;
          if (v59)
          {
            v143 = 2;
          }

          *&v140[v143] = 0;
          v133 += 2;
          if (v206 <= v133)
          {
            v144 = (v134 | v135) != 0;
LABEL_273:
            v40 = v217;
            if ((2 * u_strlen(v239) - 65) >= 0xFFFFFFBD)
            {
              sub_29936B460((v215 + 72 * *v217), v239, 0x42uLL);
              v145 = *v217;
              v146 = v215 + 72 * *v217;
              *(v146 + 69) = 6;
              LOBYTE(v127) = v225[v51 + 51];
              *(v146 + 68) = v127;
              v205 = *&v224[2 * v51 + 1];
              *(v146 + 70) = v205;
              *v217 = v145 + 1;
              if (!v144)
              {
                v40 = v217;
                if ((2 * u_strlen(v242) - 65) >= 0xFFFFFFBD)
                {
                  sub_29936B460(v240, v242, 0x42uLL);
                  v165 = 0;
                  LODWORD(v166) = *v217;
                  goto LABEL_308;
                }

                goto LABEL_62;
              }

              v239[0] = 0;
              if (v206 >= 1)
              {
                v147 = 0;
                do
                {
                  v148 = sub_2993F21A4(a1, &v240[v147]);
                  v40 = v217;
                  v39 = v55;
                  if (v148 == -11)
                  {
                    goto LABEL_69;
                  }

                  v149 = v148;
                  if ((2 * u_strlen(v239) - 63) < 0xFFFFFFBD)
                  {
                    goto LABEL_62;
                  }

                  if (v149 == 102)
                  {
                    v150 = v238;
                    do
                    {
                      v151 = v150[1];
                      ++v150;
                    }

                    while (v151);
                    v152 = v207[11];
                  }

                  else
                  {
                    v150 = v238;
                    do
                    {
                      v153 = v150[1];
                      ++v150;
                    }

                    while (v153);
                    v152 = *(v212 + 2 * v149);
                  }

                  *v150 = v152;
                  if (!v152)
                  {
                    --v150;
                  }

                  v150[1] = 0;
                  ++v147;
                }

                while (v206 > (v147 * 2));
              }

              v40 = v217;
              if ((2 * u_strlen(v239) - 65) < 0xFFFFFFBD)
              {
                goto LABEL_62;
              }

              sub_29936B460((v215 + 72 * *v217), v239, 0x42uLL);
              v154 = *v217;
              v155 = v215 + 72 * *v217;
              *(v155 + 69) = 2;
              *(v155 + 68) = v127;
              *(v155 + 70) = v205;
              v156 = v154 + 1;
              *v217 = v154 + 1;
              if (v154 >= v52)
              {
                v157 = 0;
                v158 = v156 - v52;
                v159 = (v158 + 7) & 0xFFFFFFFFFFFFFFF8;
                v160 = vdupq_n_s64(v158 - 1);
                v161 = (v215 + 72 * v52);
                do
                {
                  v162 = vdupq_n_s64(v157);
                  v163 = vmovn_s64(vcgeq_u64(v160, vorrq_s8(v162, xmmword_2993FCC00)));
                  if (vuzp1_s8(vuzp1_s16(v163, *v160.i8), *v160.i8).u8[0])
                  {
                    v161[33] = v210;
                  }

                  if (vuzp1_s8(vuzp1_s16(v163, *&v160), *&v160).i8[1])
                  {
                    v161[69] = v210;
                  }

                  if (vuzp1_s8(vuzp1_s16(*&v160, vmovn_s64(vcgeq_u64(v160, vorrq_s8(v162, xmmword_2993FCC10)))), *&v160).i8[2])
                  {
                    v161[105] = v210;
                    v161[141] = v210;
                  }

                  v164 = vmovn_s64(vcgeq_u64(v160, vorrq_s8(v162, xmmword_2993FDE70)));
                  if (vuzp1_s8(*&v160, vuzp1_s16(v164, *&v160)).i32[1])
                  {
                    v161[177] = v210;
                  }

                  if (vuzp1_s8(*&v160, vuzp1_s16(v164, *&v160)).i8[5])
                  {
                    v161[213] = v210;
                  }

                  if (vuzp1_s8(*&v160, vuzp1_s16(*&v160, vmovn_s64(vcgeq_u64(v160, vorrq_s8(v162, xmmword_2993FDE60))))).i8[6])
                  {
                    v161[249] = v210;
                    v161[285] = v210;
                  }

                  v157 += 8;
                  v161 += 288;
                }

                while (v159 != v157);
              }

LABEL_345:
              v220 = 0;
              if (v218)
              {
                *v216 = -1;
              }

              v40 = v217;
              v39 = v55;
              goto LABEL_70;
            }

LABEL_62:
            *v40 = v52;
            v39 = v55;
            if (v220 != -4)
            {
              goto LABEL_70;
            }

LABEL_373:
            *v216 = v51;
LABEL_374:
            if (!v51)
            {
              goto LABEL_376;
            }

            return 0;
          }
        }

        v132 = sub_2993F21A4(a1, v240 + v133);
        v40 = v217;
        v39 = v55;
        if (v132 == -11)
        {
          goto LABEL_69;
        }
      }
    }

    v40 = v217;
    v39 = v55;
    if ((v51 & 0x8000) != 0)
    {
      goto LABEL_69;
    }

    v203 = 0;
    v204 = 0;
    v202 = 0;
    v111 = v51 & 0x7FFF;
    v208 = v51 & 0x7FFF;
    while (2)
    {
      v112 = &v225[v208];
      v113 = v225[v208];
      if ((v113 - 120) > 9)
      {
        if ((v113 - 110) > 9)
        {
          v40 = v217;
          if ((v113 - 100) <= 9)
          {
            v39 = v55;
            if (HIDWORD(v204) == 1 || HIDWORD(v204) == 4)
            {
              goto LABEL_69;
            }
          }
        }

        else
        {
          v40 = v217;
          v39 = v55;
          if ((HIDWORD(v204) == 4 || HIDWORD(v204) == 1) && (v51 - v111 < 3 || v112[2] - 160 < 0xFFFFFFD8))
          {
            goto LABEL_69;
          }
        }
      }

      else if (HIDWORD(v204) == 4 || HIDWORD(v204) == 1)
      {
        v114 = v51 - v111 >= 3 && v112[2] - 130 < 0x1E;
        if (v208 < 2)
        {
          v40 = v217;
          v39 = v55;
          if (v208)
          {
            goto LABEL_213;
          }

          goto LABEL_214;
        }

        if (*(v112 - 2) - 110 < 0xA)
        {
          v114 = 1;
        }

        v40 = v217;
        v39 = v55;
LABEL_213:
        if (*(v112 - 1) - 110 >= 0xA)
        {
LABEL_214:
          if (!v114)
          {
            goto LABEL_69;
          }
        }
      }

      HIDWORD(v204) = sub_299349620(v225[v208]);
      if (HIDWORD(v204) == 4)
      {
        LOBYTE(v203) = v203 + 1;
      }

      else if (HIDWORD(v204) == 1)
      {
        ++v202;
      }

      v115 = (429496730 * v113) >> 32;
      v116 = HIDWORD(v203);
      if ((v115 - 10) < 6)
      {
        v117 = 1;
      }

      else
      {
        v117 = v204;
      }

      if ((v113 - 210) < 0xA)
      {
        v116 = 1;
      }

      HIDWORD(v203) = v116;
      LODWORD(v204) = v117;
      v40 = v217;
      if (v51 == v111)
      {
        v39 = v55;
        if ((v115 - 13) < 3)
        {
          goto LABEL_69;
        }
      }

      if ((2 * u_strlen(v242) - 63) < 0xFFFFFFBD)
      {
        goto LABEL_62;
      }

      if (v113 > 0x9F)
      {
        v40 = v217;
        v39 = v55;
        if ((v113 - 210) > 9)
        {
          goto LABEL_69;
        }

        v118 = v113 - 194;
      }

      else
      {
        v118 = v115;
      }

      v119 = v241;
      do
      {
        v120 = *(v119 + 2);
        v119 += 2;
      }

      while (v120);
      v121 = *&v226[8 * v118 - v118 + 3];
      *(v119 + 1) = v121;
      v59 = v121 == 0;
      v122 = 4;
      if (v59)
      {
        v122 = 2;
      }

      *&v119[v122] = 0;
      v60 = v208 <= 0;
      v111 = --v208;
      if (!v60)
      {
        continue;
      }

      break;
    }

    v40 = v217;
    v39 = v55;
    if (v202 | v203)
    {
      v123 = v202 <= v203 ? 6 : 3;
      v225[v51 + 51] = v123;
      v124 = sub_299349620(v58);
      v39 = v55;
      if (v124 != 4 && v124 != 1)
      {
        goto LABEL_69;
      }
    }

    if (!v204)
    {
      goto LABEL_69;
    }

    if ((2 * u_strlen(v242) - 65) < 0xFFFFFFBD)
    {
      goto LABEL_62;
    }

    sub_29936B460((v215 + 72 * *v217), v242, 0x42uLL);
    v125 = *v217;
    v126 = v215 + 72 * *v217;
    *(v126 + 69) = 0;
    v127 = v225[v51 + 51];
    *(v126 + 68) = v127;
    v205 = *&v224[2 * v51 + 1];
    *(v126 + 70) = v205;
    v128 = v125 + 1;
    *v217 = v125 + 1;
    if (WORD2(v203))
    {
      v129 = 0;
      goto LABEL_310;
    }

    v40 = v217;
    if (sub_2993F2C7C(a1, v242, v240, &v222))
    {
      goto LABEL_62;
    }

    v39 = v55;
    if (v222)
    {
      goto LABEL_69;
    }

    if (sub_2993F2230(v240, v239, a1, v227, 1, &v222 + 1) || (2 * u_strlen(v239) - 65) < 0xFFFFFFBD)
    {
      goto LABEL_62;
    }

    sub_29936B460((v215 + 72 * *v217), v239, 0x42uLL);
    v193 = *v217;
    v194 = v215 + 72 * v193;
    *(v194 + 69) = 1;
    *(v194 + 68) = v127;
    *(v194 + 70) = v205;
    v166 = v193 + 1;
    *v217 = v166;
    if (v127 == 6)
    {
      v195 = (v215 + 72 * v166);
      v195[34] = 2310;
      v195[70] = 1286;
      v195[35] = v205;
      v195[71] = v205;
      v196 = sub_2993F39FC(a1, v242, v195, v195 + 36);
      LODWORD(v166) = *v217;
      if (!v196)
      {
        LODWORD(v166) = v166 + 2;
        *v217 = v166;
      }

      v165 = 6;
      LOBYTE(v127) = 6;
    }

    else
    {
      v165 = 6;
    }

LABEL_308:
    v167 = v215 + 72 * v166;
    *(v167 + 69) = v165;
    *(v167 + 68) = v127;
    *(v167 + 70) = v205;
    v40 = v217;
    if ((2 * u_strlen(v240) - 65) < 0xFFFFFFBD)
    {
      goto LABEL_62;
    }

    sub_29936B460((v215 + 72 * *v217), v240, 0x42uLL);
    v128 = *v217 + 1;
    *v217 = v128;
    v129 = 1;
LABEL_310:
    if (!v201)
    {
      v40 = v217;
      if ((2 * u_strlen(v235) - 65) >= 0xFFFFFFBD)
      {
        sub_29936B460(v240, v235, 0x42uLL);
        if (!sub_2993F2230(v240, v239, a1, v227, 1, &v222 + 1) && (2 * u_strlen(v239) - 65) >= 0xFFFFFFBD)
        {
          sub_29936B460((v215 + 72 * *v217), v239, 0x42uLL);
          v197 = *v217;
          v198 = v215 + 72 * *v217;
          *(v198 + 69) = 1;
          *(v198 + 68) = v127;
          *(v198 + 70) = v205;
          v128 = v197 + 1;
          *v217 = v197 + 1;
          goto LABEL_311;
        }
      }

      goto LABEL_62;
    }

LABEL_311:
    v242[0] = 0;
    v239[0] = 0;
    if (!v129)
    {
LABEL_330:
      if (v128 > v52)
      {
        v185 = 0;
        v186 = v128 - v52;
        v187 = (v186 + 7) & 0xFFFFFFFFFFFFFFF8;
        v188 = vdupq_n_s64(v186 - 1);
        v189 = (v215 + 72 * v52);
        do
        {
          v190 = vdupq_n_s64(v185);
          v191 = vmovn_s64(vcgeq_u64(v188, vorrq_s8(v190, xmmword_2993FCC00)));
          if (vuzp1_s8(vuzp1_s16(v191, *v188.i8), *v188.i8).u8[0])
          {
            v189[33] = v210;
          }

          if (vuzp1_s8(vuzp1_s16(v191, *&v188), *&v188).i8[1])
          {
            v189[69] = v210;
          }

          if (vuzp1_s8(vuzp1_s16(*&v188, vmovn_s64(vcgeq_u64(v188, vorrq_s8(v190, xmmword_2993FCC10)))), *&v188).i8[2])
          {
            v189[105] = v210;
            v189[141] = v210;
          }

          v192 = vmovn_s64(vcgeq_u64(v188, vorrq_s8(v190, xmmword_2993FDE70)));
          if (vuzp1_s8(*&v188, vuzp1_s16(v192, *&v188)).i32[1])
          {
            v189[177] = v210;
          }

          if (vuzp1_s8(*&v188, vuzp1_s16(v192, *&v188)).i8[5])
          {
            v189[213] = v210;
          }

          if (vuzp1_s8(*&v188, vuzp1_s16(*&v188, vmovn_s64(vcgeq_u64(v188, vorrq_s8(v190, xmmword_2993FDE60))))).i8[6])
          {
            v189[249] = v210;
            v189[285] = v210;
          }

          v185 += 8;
          v189 += 288;
        }

        while (v187 != v185);
      }

      goto LABEL_345;
    }

    v168 = u_strlen(v240);
    if (!(v168 << 17))
    {
      goto LABEL_345;
    }

    v169 = (2 * v168);
    if (v169 < 1)
    {
LABEL_327:
      v40 = v217;
      if ((2 * u_strlen(v242) - 65) < 0xFFFFFFBD)
      {
        goto LABEL_62;
      }

      sub_29936B460((v215 + 72 * *v217), v242, 0x42uLL);
      v181 = *v217;
      v182 = v215 + 72 * *v217;
      *(v182 + 69) = 10;
      *(v182 + 68) = v127;
      *(v182 + 70) = v205;
      *v217 = v181 + 1;
      if ((2 * u_strlen(v239) - 65) < 0xFFFFFFBD)
      {
        goto LABEL_62;
      }

      sub_29936B460((v215 + 72 * *v217), v239, 0x42uLL);
      v183 = *v217;
      v184 = v215 + 72 * *v217;
      *(v184 + 69) = 2;
      *(v184 + 68) = v127;
      *(v184 + 70) = v205;
      v128 = v183 + 1;
      *v217 = v183 + 1;
      goto LABEL_330;
    }

    v170 = 0;
    while (1)
    {
      v171 = sub_2993F21A4(a1, &v240[v170]);
      v40 = v217;
      v39 = v55;
      if (v171 == -11)
      {
        break;
      }

      v172 = v171;
      if ((2 * u_strlen(v242) - 63) < 0xFFFFFFBD)
      {
        goto LABEL_62;
      }

      v173 = v241;
      do
      {
        v174 = *(v173 + 2);
        v173 += 2;
      }

      while (v174);
      v175 = *&v226[8 * v172 - v172 + 3];
      *(v173 + 1) = v175;
      v59 = v175 == 0;
      v176 = 4;
      if (v59)
      {
        v176 = 2;
      }

      *&v173[v176] = 0;
      v40 = v217;
      if ((2 * u_strlen(v239) - 63) < 0xFFFFFFBD)
      {
        goto LABEL_62;
      }

      v177 = v237;
      do
      {
        v178 = *(v177 + 2);
        v177 += 2;
      }

      while (v178);
      v179 = *(v212 + 2 * v172);
      *(v177 + 1) = v179;
      v59 = v179 == 0;
      v180 = 4;
      if (v59)
      {
        v180 = 2;
      }

      *&v177[v180] = 0;
      if (v169 <= (++v170 * 2))
      {
        goto LABEL_327;
      }
    }

LABEL_69:
    *v40 = v52;
    v220 = -11;
LABEL_70:
    v52 = *v40;
    v54 = v218;
LABEL_71:
    --v53;
    v60 = v51-- <= 1;
    if (!v60)
    {
      continue;
    }

    break;
  }

LABEL_376:
  result = 0;
  *v216 = -1;
  return result;
}

uint64_t sub_2993F21A4(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 82))
  {
    return 4294967285;
  }

  v3 = 0;
  sub_2993F7500(*(a1 + 84), a2, 2, v4, &v3);
  result = v4[0] <= 9u ? v4[0] : v4[0] + 2;
  if (!v3)
  {
    return 4294967285;
  }

  return result;
}

uint64_t sub_2993F2230(UChar *s, UChar *a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  v10 = s;
  v11 = 0;
  v121 = *MEMORY[0x29EDCA608];
  v109 = 0x100010001;
  v110 = 1;
  v111 = 0;
  v112 = 0x1000100010001;
  v113 = 0;
  v12 = *(*(a3 + 44) + 28);
  v13 = &v116;
  v14 = vdupq_n_s64(0x19uLL);
  do
  {
    v15 = vdupq_n_s64(v11);
    v16 = vorrq_s8(v15, xmmword_2993FCC00);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v14, v16)), 6), 6).u8[0])
    {
      *(v13 - 4) = v12;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), v16)), 6), 6).i8[1])
    {
      *(v13 - 3) = v12;
    }

    if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), vorrq_s8(v15, xmmword_2993FCC10)))), 6).i8[2])
    {
      *(v13 - 2) = v12;
      *(v13 - 1) = v12;
    }

    v17 = vorrq_s8(v15, xmmword_2993FDE70);
    if (vuzp1_s8(6, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), v17)), 6)).i32[1])
    {
      *v13 = v12;
    }

    if (vuzp1_s8(6, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), v17)), 6)).i8[5])
    {
      *(v13 + 1) = v12;
    }

    if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), vorrq_s8(v15, xmmword_2993FDE60))))).i8[6])
    {
      *(v13 + 2) = v12;
      *(v13 + 3) = v12;
    }

    v11 += 8;
    v13 += 4;
  }

  while (v11 != 32);
  v117[0] = 0;
  sa[0] = 0;
  v18 = 2 * u_strlen(s);
  if (v18 < -5)
  {
    goto LABEL_165;
  }

  v19 = 0;
  v103 = 0;
  v105 = a5;
  v106 = 0;
  v20 = 0;
  v21 = (v18 >> 1) - 1;
  if (v18 >> 1 < 1)
  {
    v21 = (v18 >> 1) + 2;
  }

  v101 = v21 >> 2;
  v22 = (v18 >> 1) & 3;
  if (v18 >> 1 <= 0)
  {
    v22 = -(-(v18 >> 1) & 3);
  }

  if (v22)
  {
    LODWORD(v23) = v22;
  }

  else
  {
    LODWORD(v23) = 4;
  }

  v90 = (a4 + 99);
  v92 = (a4 + 106);
  if (a5 == 1)
  {
    v24 = 73;
  }

  else
  {
    v24 = 71;
  }

  v25 = 78;
  if (a5 == 1)
  {
    v25 = 80;
  }

  v96 = v25;
  v97 = v24;
  v26 = 85;
  if (a5 == 1)
  {
    v26 = 87;
  }

  v95 = v26;
  if (a5 == 1)
  {
    v27 = 10;
  }

  else
  {
    v27 = 8;
  }

  v28 = 92;
  if (a5 == 1)
  {
    v28 = 94;
  }

  v91 = (a4 + v28);
  v102 = a4;
  v93 = v27;
  v94 = 1;
  v29 = 1;
  v98 = v10;
LABEL_36:
  v104 = -2;
LABEL_37:
  v30 = 2 * v23;
  if ((2 * v23 - 9) < 0xFFFFFFF5)
  {
    return 4294967186;
  }

  result = 4294967186;
  if ((v23 & 0x80000000) == 0 && (v20 & 0x80000000) == 0)
  {
    v32 = v23;
    v33 = 2 * v23;
    v34 = v119;
    v35 = (v10 + v20);
    do
    {
      if (!v33)
      {
        goto LABEL_45;
      }

      v36 = *v35++;
      *v34 = v36;
      v34 += 2;
      v33 -= 2;
    }

    while (v36);
    if (v33)
    {
      v37 = v20;
      bzero(v34, v33);
      v20 = v37;
    }

LABEL_45:
    v38 = 0;
    *&v119[v30] = 0;
    if (v23 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v23;
    }

    v99 = v23 + v29;
    v100 = v20;
    while (1)
    {
      v108[0] = 0;
      if (!*(a3 + 82) || ((sub_2993F7500(*(a3 + 84), &v119[2 * v38], 2, v120, v108), v120[0] <= 9u) ? (v39 = v120[0]) : (v39 = v120[0] + 2), !v108[0]))
      {
        v89 = -v29;
        goto LABEL_168;
      }

      if (v39 == 102)
      {
        break;
      }

      if (v19)
      {
        goto LABEL_57;
      }

      if (v18 == 2 || v39)
      {
        v40 = v32 - v38;
        if (v105 == 1 || v39 != 1 || v40 == 1)
        {
          if (v105 == 1 && *&v108[2 * v39 + 1])
          {
            if ((2 * u_strlen(sa) - 255) < 0xFFFFFEFD)
            {
              return 4294967186;
            }

            v41 = (v102 - v39 + 8 * v39 + 3);
          }

          else
          {
            if ((2 * u_strlen(sa) - 255) < 0xFFFFFEFD)
            {
              return 4294967186;
            }

            v41 = (v102 - v39 + 8 * v39 + 1);
          }

          v42 = v117;
          do
          {
            v43 = v42[2];
            ++v42;
          }

          while (v43);
          v44 = *v41;
          v45 = 2;
          if (!v44)
          {
            v45 = 1;
          }

          v42[1] = v44;
          v42[v45] = 0;
          v103 = v39;
          v106 += 2;
          v104 = -1;
        }

        switch(v40)
        {
          case 2:
            if ((2 * u_strlen(sa) - 255) < 0xFFFFFEFD)
            {
              return 4294967186;
            }

            v56 = v117;
            do
            {
              v57 = v56[2];
              ++v56;
            }

            while (v57);
            v19 = 0;
            v58 = 2;
            if (!*(v102 + v97))
            {
              v58 = 1;
            }

            v56[1] = *(v102 + v97);
            v56[v58] = 0;
            v106 += 2;
            v55 = 10;
            goto LABEL_101;
          case 3:
            if ((2 * u_strlen(sa) - 255) < 0xFFFFFEFD)
            {
              return 4294967186;
            }

            v52 = v117;
            do
            {
              v53 = v52[2];
              ++v52;
            }

            while (v53);
            v19 = 0;
            v54 = 2;
            if (!*(v102 + v96))
            {
              v54 = 1;
            }

            v52[1] = *(v102 + v96);
            v52[v54] = 0;
            v106 += 2;
            v55 = 11;
LABEL_101:
            v103 = v55;
            v104 = -1;
            goto LABEL_58;
          case 4:
            if ((2 * u_strlen(sa) - 255) < 0xFFFFFEFD)
            {
              return 4294967186;
            }

            v46 = v117;
            do
            {
              v47 = v46[2];
              ++v46;
            }

            while (v47);
            v19 = 0;
            if (v104 == 65534)
            {
              v48 = v106;
            }

            else
            {
              v48 = -1;
            }

            v104 = v48;
            v49 = *(v102 + v95);
            v46[1] = v49;
            v50 = v49 == 0;
            v51 = 2;
            if (v50)
            {
              v51 = 1;
            }

            v46[v51] = 0;
            v106 += 2;
            v103 = 12;
            goto LABEL_58;
        }
      }

      v19 = 0;
LABEL_58:
      ++v29;
      if (++v38 == v23)
      {
        v59 = v119;
        v60 = &v115;
        v10 = v98;
        v61 = v101;
        while (1)
        {
          if (!v32)
          {
            goto LABEL_114;
          }

          v62 = *v59;
          if (v62 != *v60)
          {
            break;
          }

          --v32;
          v59 += 2;
          v60 += 2;
          if (!v62)
          {
            goto LABEL_114;
          }
        }

        if (v101 == 1)
        {
          if ((v103 - 16) > 0xFFFFFFFC)
          {
            goto LABEL_114;
          }

          v64 = v106;
          if ((v104 & 0x8000) == 0)
          {
            v114[0] = 0;
            if (v104)
            {
              if (v104 > 0x100u)
              {
                return 4294967186;
              }

              v75 = v104 & 0xFFFE;
              v76 = v114;
              v77 = sa;
              while (v75)
              {
                v78 = *v77++;
                *v76++ = v78;
                v75 -= 2;
                if (!v78)
                {
                  if (v75)
                  {
                    bzero(v76, v75);
                  }

                  break;
                }
              }

              *(v114 + v104) = 0;
            }

            if ((2 * u_strlen(v114) - 255) < 0xFFFFFEFD)
            {
              return 4294967186;
            }

            v79 = &v113;
            do
            {
              v80 = *(v79 + 2);
              v79 = (v79 + 2);
            }

            while (v80);
            v81 = *(v102 + v93);
            *(v79 + 1) = v81;
            v50 = v81 == 0;
            v82 = 4;
            if (v50)
            {
              v82 = 2;
            }

            *(v79 + v82) = 0;
            *(&v114[1] + v104) = 0;
            v83 = 2 * u_strlen(v114);
            if ((v83 - v104 + 2 * u_strlen(sa) - 257) < 0xFFFFFEFD)
            {
              return 4294967186;
            }

            sub_29936B4BC(v114, (sa + v104), 0x102uLL);
            v10 = v98;
            if ((2 * u_strlen(v114) - 257) < 0xFFFFFEFD)
            {
              return 4294967186;
            }

            sub_29936B460(sa, v114, 0x102uLL);
            v64 = v106 + 2;
          }

          v84 = u_strlen(sa);
          v63 = v91;
          v74 = v100;
          if ((2 * v84 - 255) < 0xFFFFFEFD)
          {
            return 4294967186;
          }
        }

        else
        {
          if (v101 != 2)
          {
            if (v101 == 3 && (v103 - 16) <= 0xFFFFFFFC)
            {
              if ((2 * u_strlen(sa) - 255) < 0xFFFFFEFD)
              {
                return 4294967186;
              }

              v103 = 15;
              v63 = v92;
              v64 = v106;
              goto LABEL_137;
            }

LABEL_114:
            v29 = v99;
            v20 = v30 + v100;
            LODWORD(v23) = 4;
            --v101;
            if (v61 > 0)
            {
              goto LABEL_37;
            }

            if ((v94 & 1) == 0 && 2 * u_strlen(sa) <= 2)
            {
              sa[0] = 0;
            }

LABEL_165:
            if ((2 * u_strlen(sa) - 65) < 0xFFFFFFBD)
            {
              return 4294967186;
            }

            sub_29936B460(a2, sa, 0x42uLL);
            v89 = 0;
LABEL_168:
            result = 0;
            *a6 = v89;
            return result;
          }

          if ((v103 - 16) > 0xFFFFFFFC)
          {
            goto LABEL_114;
          }

          v64 = v106;
          if ((v104 & 0x8000) == 0)
          {
            v114[0] = 0;
            if (v104)
            {
              if (v104 > 0x100u)
              {
                return 4294967186;
              }

              v65 = v104 & 0xFFFE;
              v66 = v114;
              v67 = sa;
              while (v65)
              {
                v68 = *v67++;
                *v66++ = v68;
                v65 -= 2;
                if (!v68)
                {
                  if (v65)
                  {
                    bzero(v66, v65);
                  }

                  break;
                }
              }

              *(v114 + v104) = 0;
            }

            if ((2 * u_strlen(v114) - 255) < 0xFFFFFEFD)
            {
              return 4294967186;
            }

            v69 = &v113;
            do
            {
              v70 = *(v69 + 2);
              v69 = (v69 + 2);
            }

            while (v70);
            v71 = *(v102 + v93);
            *(v69 + 1) = v71;
            v50 = v71 == 0;
            v72 = 4;
            if (v50)
            {
              v72 = 2;
            }

            *(v69 + v72) = 0;
            *(&v114[1] + v104) = 0;
            v73 = 2 * u_strlen(v114);
            if ((v73 - v104 + 2 * u_strlen(sa) - 257) < 0xFFFFFEFD)
            {
              return 4294967186;
            }

            sub_29936B4BC(v114, (sa + v104), 0x102uLL);
            v10 = v98;
            if ((2 * u_strlen(v114) - 257) < 0xFFFFFEFD)
            {
              return 4294967186;
            }

            sub_29936B460(sa, v114, 0x102uLL);
            v64 = v106 + 2;
          }

          if ((2 * u_strlen(sa) - 255) < 0xFFFFFEFD)
          {
            return 4294967186;
          }

          v103 = 14;
          v63 = v90;
LABEL_137:
          v74 = v100;
        }

        v85 = v117;
        do
        {
          v86 = v85[2];
          ++v85;
        }

        while (v86);
        v94 = 0;
        v87 = *v63;
        v85[1] = v87;
        v50 = v87 == 0;
        LODWORD(v23) = 4;
        v88 = 1;
        if (!v50)
        {
          v88 = 2;
        }

        v85[v88] = 0;
        v106 = v64 + 2;
        v20 = v30 + v74;
        --v101;
        v29 = v99;
        goto LABEL_36;
      }
    }

    *a2 = 0;
LABEL_57:
    v19 = 1;
    goto LABEL_58;
  }

  return result;
}

uint64_t sub_2993F2C7C(uint64_t a1, const UChar *a2, UChar *a3, int *a4)
{
  v5 = a2;
  v7 = 0;
  v90 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 44) + 28;
  do
  {
    *&v86[v7 / 2] = *(v8 + dword_29942C714[v7 / 4]);
    v7 += 4;
  }

  while (v7 != 48);
  v81 = 0;
  v9 = u_strlen(a2);
  *a3 = 0;
  v10 = 2 * v9;
  s[0] = 0;
  *a4 = 0;
  if (2 * v9 < 0)
  {
    v12 = 0;
    if (v10 != -2)
    {
      return v12;
    }

    v52 = 1;
    goto LABEL_165;
  }

  v78 = 2 * v9;
  v79 = 0;
  v75 = 0;
  v76 = 0;
  v71 = 0;
  v73 = 0;
  v74 = 0;
  v72 = 0;
  v11 = 0;
  LODWORD(v12) = 0;
  v13 = 0;
  v80 = 0;
  v70 = v5 + 1;
  v14 = 1;
  do
  {
    if (!*(a1 + 82))
    {
      v81 = 0;
      goto LABEL_22;
    }

    sub_2993F7500(*(a1 + 84), v5 + v11, 2, &v84, &v81);
    if (!v81)
    {
      goto LABEL_22;
    }

    v15 = v5;
    if (v84 - 16 >= 0xFFFFFFF9)
    {
      v16 = v84 - 9;
    }

    else
    {
      v16 = 0;
    }

    if ((v84 & 0xFE) == 0x66)
    {
      v17 = v84 - 92;
LABEL_12:
      if (v13 == 1)
      {
        v18 = 2 * u_strlen(v15);
        if (v18 >= 2)
        {
          v26 = v11 + 2;
          if (((v11 + 2) & 0x8000) == 0 && v26 + 2 <= v18)
          {
            LOBYTE(v82) = 0;
            if (*(a1 + 82))
            {
              sub_2993F7500(*(a1 + 84), v15 + v26, 2, v89, &v82);
              if (v82)
              {
                if (HIBYTE(v89[0]) == 2 && LOBYTE(v89[0]) - 10 < 3)
                {
                  goto LABEL_106;
                }
              }
            }
          }
        }
      }

      if (v11 == SWORD2(v75))
      {
        if (v13 == 1 && v80 == 1)
        {
          *a3 = 0;
          *a4 = v11;
          if (v12 < 1)
          {
            v5 = v15;
          }

          else
          {
            v5 = v15;
            if (v85 <= 1u)
            {
              v10 = v78;
              if (v84 <= 9u)
              {
                v11 -= 2;
                *a4 = v11;
              }

              goto LABEL_102;
            }
          }

          v10 = v78;
LABEL_102:
          v80 = 0;
          v13 = 0;
          v19 = v11 - 2;
          v14 = 1;
          goto LABEL_134;
        }

        goto LABEL_29;
      }

      if (v85 != 2 || v84 > 9u || (v20 = 2 * u_strlen(v15), v20 < 2) || (v19 = v11 - 2, ((v11 - 2) & 0x8000) != 0) || v19 + 2 > v20 || (LOBYTE(v82) = 0, !*(a1 + 82)) || (sub_2993F7500(*(a1 + 84), v15 + v19, 2, v89, &v82), !v82) || HIBYTE(v89[0]) > 1u || LOBYTE(v89[0]) >= 0xAu)
      {
LABEL_29:
        if (HIDWORD(v80) == 2)
        {
          v14 = 0;
          v27 = v75;
          if (!v76)
          {
            v27 = v11;
          }

          LODWORD(v75) = v27;
          v83[v76] = v17;
          v13 = 1;
          HIDWORD(v80) = 2;
          ++v76;
        }

        else if (HIDWORD(v80) == 1)
        {
          v14 = 0;
          if (v84 <= 9u)
          {
            v21 = v84;
          }

          else
          {
            v21 = 0;
          }

          if (v84 - 16 >= 0xFFFFFFF9)
          {
            v22 = v84 - 9;
          }

          else
          {
            v22 = 0;
          }

          v72 = v22;
          v23 = v84 - 92;
          if ((v84 & 0xFE) != 0x66)
          {
            v23 = v21;
          }

          v74 = v23;
          v83[0] = v17;
          v13 = 1;
          HIDWORD(v80) = 2;
          v76 = 1;
          v71 = v11;
          LODWORD(v75) = v11;
        }

        else
        {
          v28 = u_strlen(a3);
          v29 = &v86[2 * v17];
          if ((2 * (u_strlen(v29) + v28) - 65) < 0xFFFFFFBD)
          {
            return 4294967186;
          }

          sub_29936B4BC(a3, v29, 0x42uLL);
          v14 = 0;
          ++v79;
          v13 = 1;
        }

        goto LABEL_63;
      }

      v80 = 0;
      v13 = 0;
      *a3 = 0;
      *a4 = v11;
      v14 = 1;
      WORD2(v75) = v11;
LABEL_132:
      v5 = v15;
      goto LABEL_133;
    }

    if (v84 != 100)
    {
      if (v84 == 101)
      {
        v80 = 0;
        v13 = 0;
        *a3 = 0;
        v11 += 2;
        *a4 = v11;
        v14 = 1;
        goto LABEL_63;
      }

      if (v84 > 9u || v74 < 0)
      {
        v17 = 0;
      }

      else
      {
        v17 = v84;
      }

      if (v84 > 9u)
      {
LABEL_63:
        if (v85 != 2 || (v84 - 10) > 5u)
        {
          goto LABEL_131;
        }

        if (v14 != 1 || (v84 - 10) > 2u)
        {
          goto LABEL_75;
        }

        if (v12 == 3 && v84 == 10)
        {
          v30 = u_strlen(a3);
          v31 = u_strlen(v86);
          if ((2 * (v31 + v30 + u_strlen(v87)) - 65) < 0xFFFFFFBD)
          {
            return 4294967186;
          }

          sub_29936B4BC(a3, v86, 0x42uLL);
          sub_29936B4BC(a3, v87, 0x42uLL);
          v32 = v79 + 2;
        }

        else
        {
          v33 = dword_29942C6F8[v16];
          if (v12 != v33)
          {
            v41 = u_strlen(a3);
            if ((2 * (u_strlen(v87) + v41) - 65) < 0xFFFFFFBD)
            {
              return 4294967186;
            }

            sub_29936B4BC(a3, v87, 0x42uLL);
            ++v79;
            if (v12 < v33)
            {
              v34 = HIDWORD(v80);
              if (v80 == 1)
              {
LABEL_106:
                v80 = 0;
                v13 = 0;
                *a3 = 0;
                *a4 = v11;
                v19 = v11 - 2;
                goto LABEL_107;
              }

LABEL_76:
              if (v34 == 2)
              {
                v35 = dword_29942C6F8[v16];
                v36 = v12 - (v35 + v76);
                if (v36 >= 1)
                {
                  do
                  {
                    sub_29936B4BC(a3, v86, 0x42uLL);
                    --v36;
                  }

                  while (v36);
                }

                if (v76)
                {
                  v37 = v76;
                  v38 = v83;
                  do
                  {
                    v39 = *v38++;
                    sub_29936B4BC(a3, &v86[2 * v39], 0x42uLL);
                    --v37;
                  }

                  while (v37);
                }

                v40 = v12 - v35 + v79;
                if (v12 - v35 >= v76)
                {
                  v79 += v12 - v35;
                  v13 = 0;
                  v76 = 0;
                  HIDWORD(v80) = 1;
                  v14 = 1;
LABEL_90:
                  LODWORD(v80) = 1;
                  LODWORD(v12) = v35;
LABEL_131:
                  v19 = v11;
                  goto LABEL_132;
                }

                v5 = v15;
                if (v84 >= 0xDu)
                {
                  if (v40 >= 5)
                  {
                    v79 += v12 - v35;
                    v80 = 0;
                    v13 = 0;
                    v76 = 0;
                    *a3 = 0;
                    v19 = v11 + 2;
                    *a4 = v11 + 2;
                    v14 = 1;
LABEL_133:
                    v10 = v78;
                    goto LABEL_134;
                  }

                  v46 = sub_2993F3B8C(a1, (v70 + v11), v35);
                  if (v46 == -11)
                  {
                    v13 = 0;
                    v76 = 0;
                    v79 = 0;
                    *a3 = 0;
                    *a4 = v11 + 2;
                    v14 = 1;
                    v80 = 1;
                    LODWORD(v12) = v35;
                    v19 = v11;
                    goto LABEL_133;
                  }

                  v49 = v35 + ~v46;
                  v50 = u_strlen(a3);
                  v51 = u_strlen(&v86[2 * v74]);
                  if ((2 * (v51 + v50 + u_strlen(v86) * v49) - 65) < 0xFFFFFFBD)
                  {
                    return 4294967186;
                  }

                  if (v49 < 1)
                  {
                    HIDWORD(v80) = 0;
                    v13 = 0;
                    v76 = 0;
                    v79 = 0;
                    v14 = 1;
                  }

                  else
                  {
                    do
                    {
                      sub_29936B4BC(a3, v86, 0x42uLL);
                      v14 = 1;
                      --v49;
                    }

                    while (v49);
                    HIDWORD(v80) = 0;
                    v13 = 0;
                    v76 = 0;
                    v79 = 0;
                  }

                  goto LABEL_90;
                }

                *a3 = 0;
                v42 = u_strlen(a3);
                v10 = v78;
                if ((2 * (u_strlen(&v86[2 * v74]) + v42) - 65) < 0xFFFFFFBD)
                {
                  return 4294967186;
                }

                sub_29936B4BC(a3, &v86[2 * v74], 0x42uLL);
                v13 = 0;
                v76 = 0;
                *a4 = v11 - 2;
                v43 = v40 + 1;
                v14 = 1;
                v79 = v43;
                v80 = 0x100000001;
                LODWORD(v12) = v35;
LABEL_22:
                v19 = v11;
                goto LABEL_134;
              }

              if (v84 < 0xDu)
              {
                v13 = 0;
                LODWORD(v12) = dword_29942C6F8[v16];
                HIDWORD(v80) = 1;
                v14 = 1;
              }

              else
              {
                if (v79 >= 5)
                {
                  v80 = 0;
                  v13 = 0;
                  *a3 = 0;
                  v19 = v11 + 2;
                  *a4 = v11 + 2;
LABEL_107:
                  v14 = 1;
                  goto LABEL_132;
                }

                if (v14)
                {
                  if (!HIDWORD(v80))
                  {
                    HIDWORD(v80) = 0;
                    v13 = 0;
                    LODWORD(v12) = 0;
                    v79 = 0;
                    *a3 = 0;
                    *a4 = v78;
                    v14 = 1;
                    v19 = v78;
                    v5 = v15;
                    v10 = v78;
                    goto LABEL_134;
                  }

                  v44 = u_strlen(a3);
                  if ((2 * (v44 + u_strlen(v86) * v12) - 65) < 0xFFFFFFBD)
                  {
                    return 4294967186;
                  }

                  if (v12 >= 1)
                  {
                    do
                    {
                      sub_29936B4BC(a3, v86, 0x42uLL);
                      LODWORD(v12) = v12 - 1;
                    }

                    while (v12);
                  }
                }

                LODWORD(v12) = dword_29942C6F8[v16];
                v45 = sub_2993F3B8C(a1, (v70 + v11), v12);
                if (v45 == -11)
                {
                  HIDWORD(v80) = 0;
                  v13 = 0;
                  LODWORD(v12) = 0;
                  v79 = 0;
                  *a3 = 0;
                  *a4 = v11 + 2;
                }

                else
                {
                  v47 = v12 + ~v45;
                  v48 = u_strlen(a3);
                  if ((2 * (v48 + u_strlen(v86) * v47) - 65) < 0xFFFFFFBD)
                  {
                    return 4294967186;
                  }

                  if (v47 >= 1)
                  {
                    do
                    {
                      sub_29936B4BC(a3, v86, 0x42uLL);
                      v14 = 1;
                      --v47;
                    }

                    while (v47);
                    HIDWORD(v80) = 0;
                    v13 = 0;
                    v79 = 0;
                    goto LABEL_130;
                  }

                  HIDWORD(v80) = 0;
                  v13 = 0;
                  v79 = 0;
                }

                v14 = 1;
              }

LABEL_130:
              LODWORD(v80) = 1;
              goto LABEL_131;
            }

LABEL_75:
            v34 = HIDWORD(v80);
            goto LABEL_76;
          }

          if ((2 * u_strlen(v87) - 65) < 0xFFFFFFBD)
          {
            return 4294967186;
          }

          sub_29936B460(a3, v87, 0x42uLL);
          *a4 = v11;
          v32 = v79 + 1;
        }

        v79 = v32;
        goto LABEL_75;
      }

      goto LABEL_12;
    }

    if (!v11)
    {
      v19 = 0;
      *a4 = 2;
      v73 = 1;
      goto LABEL_132;
    }

    v24 = u_strlen(s);
    if ((2 * (u_strlen((v70 + v11)) + v24) - 65) < 0xFFFFFFBD)
    {
      return 4294967186;
    }

    v5 = v15;
    sub_29936B4BC(s, (v70 + v11), 0x42uLL);
    v73 = 1;
    v10 = v78;
    v19 = v78;
LABEL_134:
    v11 = v19 + 2;
  }

  while (v19 + 2 <= v10);
  v52 = v73 == 0;
  if (v14 || v80 != 1 || !HIDWORD(v80))
  {
    goto LABEL_162;
  }

  if (HIDWORD(v80) != 1)
  {
    if (v71 == v75)
    {
      if (v12 < v76)
      {
        v12 = 0;
        *a4 = v71;
        return v12;
      }

      v58 = v12 - v76;
      if (v58 >= 1)
      {
        do
        {
          sub_29936B4BC(a3, v86, 0x42uLL);
          --v58;
        }

        while (v58);
      }

      if (v76)
      {
        v59 = v76;
        v60 = v83;
        do
        {
          v61 = *v60++;
          sub_29936B4BC(a3, &v86[2 * v61], 0x42uLL);
          --v59;
        }

        while (v59);
      }
    }

    else
    {
      v57 = v12 + ~dword_29942C6F8[v72];
      if (v57 >= 1)
      {
        do
        {
          sub_29936B4BC(a3, v86, 0x42uLL);
          --v57;
        }

        while (v57);
      }

      v56 = &v86[2 * v74];
LABEL_161:
      sub_29936B4BC(a3, v56, 0x42uLL);
    }

LABEL_162:
    if (v14 != 1 || v19 != v10)
    {
      if (v52)
      {
        return 0;
      }

      goto LABEL_175;
    }

    if (!HIDWORD(v80) && *a3)
    {
      v63 = u_strlen(a3);
      if ((2 * (u_strlen(v86) + v63) - 65) < 0xFFFFFFBD)
      {
        return 4294967186;
      }

      sub_29936B4BC(a3, v86, 0x42uLL);
      if (!v73)
      {
        return 0;
      }

LABEL_175:
      v64 = *(a1 + 44);
      v89[0] = 0;
      if ((2 * u_strlen(a3) - 65) < 0xFFFFFFBD)
      {
        return 4294967186;
      }

      v66 = a3 - 1;
      do
      {
        v67 = v66[1];
        ++v66;
      }

      while (v67);
      v68 = *v64;
      *v66 = v68;
      if (!v68)
      {
        --v66;
      }

      v66[1] = 0;
      v12 = sub_2993F2C7C(a1, s, v89, &v82);
      if (v12)
      {
        return v12;
      }

      v69 = u_strlen(a3);
      if ((2 * (u_strlen(v89) + v69) - 65) <= 0xFFFFFFBC)
      {
        return 4294967186;
      }

      sub_29936B4BC(a3, v89, 0x42uLL);
      return 0;
    }

LABEL_165:
    v62 = u_strlen(a3);
    if ((2 * (v62 + u_strlen(v86) * v12) - 65) < 0xFFFFFFBD)
    {
      return 4294967186;
    }

    if (v12 >= 1)
    {
      do
      {
        sub_29936B4BC(a3, v86, 0x42uLL);
        LODWORD(v12) = v12 - 1;
      }

      while (v12);
    }

    if (v52)
    {
      return 0;
    }

    goto LABEL_175;
  }

  v53 = u_strlen(a3);
  v54 = u_strlen(v86);
  v55 = v12 + ~dword_29942C6F8[v72];
  v56 = &v86[2 * v74];
  if ((2 * (u_strlen(v56) + v53 + v55 * v54) - 65) >= 0xFFFFFFBD)
  {
    if (v55 < 1)
    {
      v52 = v73 == 0;
    }

    else
    {
      v52 = v73 == 0;
      do
      {
        sub_29936B4BC(a3, v86, 0x42uLL);
        --v55;
      }

      while (v55);
    }

    goto LABEL_161;
  }

  return 4294967186;
}

uint64_t sub_2993F39FC(uint64_t a1, UChar *s, _WORD *a3, _WORD *a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 60);
  *a3 = 0;
  *a4 = 0;
  if (2 * u_strlen(s) < 1)
  {
    v20 = 0;
    result = 4294967285;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = v8 + 20;
    do
    {
      v13 = v11 * 2;
      v22 = 0;
      if (!*(a1 + 82))
      {
        goto LABEL_8;
      }

      sub_2993F7500(*(a1 + 84), &s[v11], 2, v23, &v22);
      v14 = v23[0];
      if (v23[0] > 9u)
      {
        v14 = v23[0] + 2;
      }

      if (v22 && v14 < 0xA)
      {
        v18 = 2 * v14;
        LOBYTE(a3[v11]) = *(v12 + v18);
        LOBYTE(a4[v11]) = *(v8 + v18);
        ++v10;
        v19 = (2 * (v14 & 0x1FF)) | 1;
        v16 = v9 | 1;
        *(a3 + v16) = *(v12 + v19);
        v17 = *(v8 + v19);
      }

      else
      {
LABEL_8:
        v15 = s[v11];
        LOBYTE(a3[v11]) = v15;
        LOBYTE(a4[v11]) = v15;
        v16 = v9 | 1;
        v17 = *(s + v16);
        *(a3 + v16) = v17;
      }

      *(a4 + v16) = v17;
      ++v11;
      v9 = (v13 + 2);
    }

    while (v9 < 2 * u_strlen(s));
    v20 = v11 * 2;
    if (v10)
    {
      result = 0;
    }

    else
    {
      result = 4294967285;
    }
  }

  *(a3 + v20) = 0;
  *(a4 + v20) = 0;
  return result;
}

uint64_t sub_2993F3B8C(uint64_t a1, UChar *s, int a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = (2 * u_strlen(s));
  if (!v6 || !*s)
  {
    return 0;
  }

  if (v6 < 1)
  {
    if (a3 < 0)
    {
      return 4294967285;
    }

    LODWORD(v9) = 0;
    v8 = 0;
LABEL_43:
    if (v8 > 0 && v9 == 0)
    {
      return (v8 - 1);
    }

    else
    {
      return v9;
    }
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v18 = 0;
  while (1)
  {
    if (!*(a1 + 82))
    {
      v18 = 0;
      goto LABEL_34;
    }

    sub_2993F7500(*(a1 + 84), &s[v7 / 2], 2, v19, &v18);
    if (v18)
    {
      break;
    }

LABEL_34:
    v7 += 2;
    if (v7 >= v6)
    {
      result = 4294967285;
      if (v8 <= a3 && (v11 & 0x80000000) == 0)
      {
        if (v10 != 1)
        {
          goto LABEL_43;
        }

        v16 = dword_29942C744[v11];
        return (v16 + v9);
      }

      return result;
    }
  }

  if ((v19[0] & 0xFE) != 0x64)
  {
    if (v19[0] > 9u)
    {
      if (v19[0] < 0x10u)
      {
        v12 = dword_29942C744[v19[0] - 10];
        if (v19[0] >= 0xDu && v10 != 1)
        {
          v8 = 0;
          v11 = v19[0] - 10;
LABEL_21:
          if (v12 >= a3)
          {
            v11 = -1;
          }

          v10 = 1;
          goto LABEL_34;
        }

        if (v12 > v9 && v10 != 1)
        {
          v14 = v8 - 1;
          if (!v8)
          {
            v14 = 0;
          }

          v9 = (v12 + v14);
          v10 = 2;
          v8 = 0;
          goto LABEL_34;
        }

        if (v10 == 1)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v8 = v8 == 0;
      }
    }

    else
    {
      if (v8 == -1)
      {
        v8 = -1;
      }

      else
      {
        ++v8;
      }

      if (v10)
      {
        v9 = v9;
      }

      else
      {
        v9 = (v8 - 1);
      }
    }

    goto LABEL_34;
  }

  if (v11)
  {
    v16 = dword_29942C744[v11];
    return (v16 + v9);
  }

  return v9;
}

uint64_t sub_2993F3D88(uint64_t a1, uint64_t a2, int a3, int a4, _WORD *a5, unsigned __int8 *a6)
{
  result = 0;
  v26 = *MEMORY[0x29EDCA608];
  if (a3 >= 1)
  {
    v8 = a4;
    if ((a4 & 0x80000000) == 0)
    {
      v12 = 0;
      v21 = 0;
      v13 = a3 >> 1;
      while (a3 >> 1 != v12)
      {
        v14 = *(a2 + v12 * 2);
        s[v12++] = v14;
        if (!v14)
        {
          if (v12 != v13)
          {
            bzero(&s[v12], 2 * v13 - v12 * 2);
          }

          break;
        }
      }

      *(s + a3) = 0;
      sub_29936B460(v25, s, 0x102uLL);
      v15 = u_strlen(s);
      v25[v15] = 0;
      v19 = 1;
      v20 = 0;
      if (*(a1 + 82) >= 7u)
      {
        do
        {
          sub_2993F774C(*(a1 + 84) + 192, v25, (v15 * 2), &v22, &v21, &v19);
          if (!v21)
          {
            break;
          }

          v16 = v23;
          if ((v23 & 0xFE) != 2 && v23 - 220 >= 0xA)
          {
            if (v8 <= 0)
            {
              v18 = v20;
              *a5 = bswap32(v22) >> 16;
              *a6 = v16;
              return v18 & (--v8 >> 31);
            }

            --v8;
          }
        }

        while (*(a1 + 82) > 6u);
      }

      v18 = 0;
      return v18 & (v8 >> 31);
    }
  }

  return result;
}

BOOL sub_2993F3F24(uint64_t a1)
{
  sub_29932C330(a1);
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*a1 + 32))(a1);
  }

  return v2 != 0;
}

uint64_t sub_2993F3F80(uint64_t result)
{
  if (*(result + 96) == 1 && !*(result + 8))
  {
    if (*(result + 40))
    {
      return (*(*result + 16))();
    }
  }

  return result;
}

BOOL sub_2993F3FC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10[4] = *MEMORY[0x29EDCA608];
  if (*(a1 + 128) && *(a1 + 96) == 1)
  {
    v8 = objc_msgSend_rawCandidate(a2, a2, a3, a4);
    v10[0] = &unk_2A1F7A200;
    v10[1] = a1;
    v10[3] = v10;
    sub_29931161C(v8, v10);
    sub_29939995C(v10);
  }

  return sub_29932CC58(a1, a2, a3, a4);
}

void sub_2993F4090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29939995C(va);
  _Unwind_Resume(a1);
}

void sub_2993F40BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  v3 = *(a3 + 8);
  sub_2991C6CA8(&__p, off_2A145F3B0[0]);
  sub_2992B7C70(&v5, v3);
}

void sub_2993F41C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 55);
  if (v4 >= 0)
  {
    v5 = (a2 + 32);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 55);
  }

  else
  {
    v6 = *(a2 + 40);
  }

  if (v6)
  {
    v7 = 2 * v6;
    v8 = v5;
    do
    {
      v9 = *v8;
      v10 = v9 - 48;
      v11 = v9 - 3664;
      if (v10 < 0xA || v11 < 0xA)
      {
        goto LABEL_21;
      }

      ++v8;
      v7 -= 2;
    }

    while (v7);
  }

  v13 = *v5;
  if (v13 == 3633 || (v13 & 0xFFFC) == 0xE48)
  {
LABEL_21:
    v17 = sub_2992FE060();
    v5 = *v17;
    v6 = v17[1];
    goto LABEL_22;
  }

  v14 = -1;
  v15 = &word_29940CF12;
  while (v14 != 11)
  {
    v16 = *v15++;
    ++v14;
    if (v16 == v13)
    {
      if (v14 > 0xB)
      {
        break;
      }

      goto LABEL_21;
    }
  }

LABEL_22:
  if (!v6)
  {
    return;
  }

  v18 = *MEMORY[0x29EDB8ED8];
  v19 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], v5, v6);
  v23[5] = v19;
  v20 = CFStringCreateWithCharacters(v18, v5, v6);
  v21 = v20;
  v23[4] = v20;
  if (!v19)
  {
    if (!v20)
    {
      return;
    }

LABEL_27:
    CFRelease(v21);
    if (!v19)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v20)
  {
    v22 = (*(*a2 + 48))(a2);
    sub_29933219C(v23, v19, v21, v22);
    v23[0] = &unk_2A1F767B8;
    (*(*a1 + 216))(a1, v23);
    sub_2993321FC(v23);
    goto LABEL_27;
  }

LABEL_28:
  CFRelease(v19);
}

void sub_2993F4394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14)
{
  sub_2993321FC(&a9);
  sub_299219AB4(&a13, 0);
  sub_299219AB4(&a14, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993F43D8(uint64_t a1)
{
  sub_2993D894C(*(a1 + 128));

  return sub_29932D4B8(a1);
}

const __CFString *sub_2993F4414(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (!a1[1])
  {
    return 0;
  }

  result = *(a2 + 8);
  if (!result)
  {
    return result;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  Length = CFStringGetLength(result);
  v6 = CFStringGetLength(*(a2 + 16)) - 1;
  if ((Length - 1) > 0x1F || v6 > 0x1F)
  {
    return 0;
  }

  v8 = sub_2993652F8(6u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a2 + 8);
    v10 = *(a2 + 16);
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "[MJL::registerToLearningDictionary] Learning phrase %@ (%@)", &v12, 0x16u);
  }

  (*(*a1 + 208))(a1, a1[1], a2);
  return 1;
}

void sub_2993F4548(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_2A14618F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14618F0))
  {
    sub_2991C6CA8(&qword_2A14618F8, off_2A145F3B0[0]);
    dword_2A1461910 = 0;
    word_2A1461914 = 1;
    byte_2A1461916 = 0;
    sub_2991C6CA8(qword_2A1461918, off_2A145F3B8);
    *(&dword_2A1461930 + 3) = 0;
    dword_2A1461930 = 0;
    __cxa_atexit(sub_2993F4824, 0, &dword_29918C000);
    __cxa_guard_release(&qword_2A14618F0);
  }

  v3 = 0uLL;
  v4 = 0;
  sub_299332338(&v3, &qword_2A14618F8, &dword_2A1461938, 2uLL);
  sub_29921EF84(a2);
  *a2 = v3;
  *(a2 + 16) = v4;
  v4 = 0;
  v3 = 0uLL;
  v5 = &v3;
  sub_29921EB1C(&v5);
}

void sub_2993F465C(_Unwind_Exception *a1)
{
  if (byte_2A146190F < 0)
  {
    operator delete(qword_2A14618F8);
  }

  __cxa_guard_abort(&qword_2A14618F0);
  _Unwind_Resume(a1);
}

void sub_2993F46B0(void *a1)
{
  sub_29932C230(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993F479C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F7A200;
  a2[1] = v2;
  return result;
}

uint64_t sub_2993F47D8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F7A260))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2993F4824()
{
  v0 = &byte_2A146192F;
  v1 = -64;
  v2 = &byte_2A146192F;
  do
  {
    v3 = *v2;
    v2 -= 32;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 32;
  }

  while (v1);
}

void MecabraContextCreateMutable(const __CFAllocator *a1)
{
  v1 = sub_2993652F8(2u);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_29918C000, v1, OS_LOG_TYPE_DEBUG, "[MecabraContextCreateMutable]", v2, 2u);
  }

  operator new();
}

void MecabraContextRelease(void *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(2u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_debug_impl(&dword_29918C000, v2, OS_LOG_TYPE_DEBUG, "[MecabraContextRelease] context:%p", &v3, 0xCu);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (*a1)
  {
    (*(**a1 + 8))(*a1);
  }

  MEMORY[0x29C29BFB0](a1, 0x20C4093837F09);
}

const __CFString *MecabraContextAddCandidate(uint64_t *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = sub_299324150(a2);
  if (v4)
  {
    CFArrayAppendValue(*(v2 + 16), a2);
  }

  return v4;
}

void *MecabraContextRemoveCandidatesInRange(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return sub_299324190(result, a2, a3);
    }
  }

  return result;
}

CFIndex MecabraContextGetCandidateCount(uint64_t a1)
{
  if (a1 && *a1 && (v1 = *(*a1 + 16)) != 0)
  {
    return CFArrayGetCount(v1);
  }

  else
  {
    return 0;
  }
}

const void *MecabraContextGetCandidateAtIndex(uint64_t *a1, CFIndex a2)
{
  if (a1 && (v2 = *a1) != 0)
  {
    return sub_299324228(v2, a2);
  }

  else
  {
    return 0;
  }
}

const __CFString *MecabraContextAddInlineCandidate(uint64_t *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = sub_299324150(a2);
  if (v4)
  {
    CFArrayAppendValue(*(v2 + 32), a2);
  }

  return v4;
}

void *MecabraContextRemoveInlineCandidatesInRange(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return sub_29932428C(result, a2, a3);
    }
  }

  return result;
}

CFIndex MecabraContextGetInlineCandidateCount(uint64_t a1)
{
  if (a1 && *a1)
  {
    return CFArrayGetCount(*(*a1 + 32));
  }

  else
  {
    return 0;
  }
}

const void *MecabraContextGetInlineCandidateAtIndex(uint64_t *a1, CFIndex a2)
{
  if (a1 && (v2 = *a1) != 0)
  {
    return sub_299324314(v2, a2);
  }

  else
  {
    return 0;
  }
}

void MecabraContextSetRightContextFromString(uint64_t *a1, const void *a2)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      sub_299324374(v2, a2);
    }
  }
}

uint64_t MecabraContextSetCandidateHistoryForAnalysisString(uint64_t a1, const void *a2, const void *a3)
{
  if (!a1 || !*a1)
  {
    return 0;
  }

  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (!v3)
  {
    CFDictionarySetValue(*(*a1 + 40), a2, a3);
  }

  return v4;
}

void MecabraContextResetCandidateHistory(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      CFDictionaryRemoveAllValues(*(*a1 + 40));
    }
  }
}

void MecabraContextSetGeometryModel(uint64_t *a1, int a2, const __CFArray *a3)
{
  if (a1)
  {
    v3 = *a1;
    if (v3)
    {
      sub_2993244A8(v3, a2, a3);
    }
  }
}

void MecabraContextSetOption(uint64_t a1, const void *a2, const void *a3)
{
  if (a1 && *a1 && a2)
  {
    v3 = *(*a1 + 56);
    if (v3)
    {
      CFDictionarySetValue(v3, a2, a3);
    }
  }
}

const void *MecabraContextGetOption(uint64_t *a1, const void *a2)
{
  if (a1 && (v2 = *a1) != 0)
  {
    return sub_299225D3C(v2, a2);
  }

  else
  {
    return 0;
  }
}

void MecabraContextSetAppContext(uint64_t *a1, const void *a2)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      sub_299324594(v2, a2);
    }
  }
}

void MecabraContextSetRecipientContext(uint64_t *a1, const void *a2)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      sub_299324AA0(v2, a2);
    }
  }
}

uint64_t MecabraContextSetTextContentType(uint64_t result, int a2)
{
  if (result)
  {
    if (*result)
    {
      *(*result + 64) = a2;
    }
  }

  return result;
}

void MecabraContextSetShuangpinType(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = sub_2993652F8(2u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134218240;
    v6 = a1;
    v7 = 1024;
    v8 = a2;
    _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[MecabraContextSetShuangpinType] context:%p type:%d", &v5, 0x12u);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (*a1)
  {
    *(*a1 + 68) = a2;
  }
}

void MecabraContextSetKeyboardLayout(uint64_t *a1, const __CFArray *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v4 = sub_2993652F8(2u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    v6 = a1;
    _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[MecabraContextSetKeyboardLayout] context:%p", &v5, 0xCu);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (*a1)
  {
    sub_299324AF8(*a1, a2);
  }
}

uint64_t sub_2993F4E44(uint64_t a1)
{
  *a1 = &unk_2A1F7A280;
  CFRelease(*(a1 + 8));
  return a1;
}

void sub_2993F4E94(uint64_t a1)
{
  sub_2993F4E44(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993F4ECC(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = sub_299383A30(a1, 0, @"ja", a2, 0, 0, a3, 0, a6 == 1, a6 == 2, 0);
  *v10 = &unk_2A1F7A2B0;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 104) = a4;
  *(v10 + 112) = a5;
  *(v10 + 120) = 10000;
  *(v10 + 128) = v10 + 128;
  *(v10 + 136) = v10 + 128;
  *(v10 + 144) = 0u;
  *(v10 + 160) = 0u;
  *(v10 + 176) = 0;
  *(v10 + 184) = 1065353216;
  sub_2992157F8(v10 + 152, 0x2710uLL);
  *(a1 + 192) = a6;
  *(a1 + 196) = 0x3F8147AE3F800000;
  *(a1 + 204) = 1112014848;
  sub_2993F5054(a1);
  return a1;
}

void sub_2993F4FCC(_Unwind_Exception *a1)
{
  sub_2992751B4(v1 + 152);
  sub_299273F58(v2);
  v5 = *(v1 + 96);
  *(v1 + 96) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *v3;
  *v3 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_299383FE4(v1);
  _Unwind_Resume(a1);
}

void sub_2993F5054(void *a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4002000000;
  v12 = sub_2993F53BC;
  v13 = sub_2993F53E0;
  memset(v14, 0, sizeof(v14));
  v3 = 0;
  v4 = &v3;
  v5 = 0x4002000000;
  v6 = sub_2993F53BC;
  v7 = sub_2993F53E0;
  memset(v8, 0, sizeof(v8));
  LMLanguageModelEnumerateDynamicTokensWithBlock();
  sub_2992E9E20(a1 + 11, v10 + 5, v4 + 5, 1000, 0x40000, 1000, 10000);
  v2 = a1[12];
  if (!v2)
  {
    operator new();
  }

  sub_29924DE10(v2);
  sub_29924C9E4(a1[12], 1000, 0, 7);
  _Block_object_dispose(&v3, 8);
  v15 = v8;
  sub_29920E060(&v15);
  _Block_object_dispose(&v9, 8);
  v3 = v14;
  sub_29920E060(&v3);
}

void sub_2993F5234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  MEMORY[0x29C29BFB0](v15, 0x10F3C4023F7E159, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  *(v17 - 40) = v16;
  sub_29920E060((v17 - 40));
  _Block_object_dispose((v17 - 104), 8);
  sub_29920E060(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993F5290(void *a1)
{
  LMLanguageModelResetDynamicData();
  v2 = a1[11];
  if (v2)
  {
    sub_29924DE10(v2);
  }

  result = a1[12];
  if (result)
  {

    return sub_29924DE10(result);
  }

  return result;
}

uint64_t sub_2993F52EC(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  LMLanguageModelGetDynamicTokenIDRange();
  v3 = *(a1 + 8);

  return MEMORY[0x2A1C67E20](v3);
}

__n128 sub_2993F53BC(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_2993F540C(void *a1, uint64_t a2, _BYTE *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = a1[6];
  v7 = sub_2993652F8(6u);
  os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  v8 = sub_2993F52EC(v6, a2);
  v14 = v8;
  if (v8)
  {
    v9 = v8;
    if (CFStringGetLength(v8))
    {
      v10 = sub_299327878(*(v6 + 104), v9);
      v11 = v10;
      v13 = v10;
      if (v10)
      {
        if ((CFStringGetLength(v10) - 1) <= 0x1E)
        {
          v12 = 0;
          sub_299276A84(v11);
        }

        CFRelease(v11);
      }
    }

    CFRelease(v9);
  }

  if (*(*(a1[4] + 8) + 48) - *(*(a1[4] + 8) + 40) == 6291456)
  {
    *a3 = 1;
  }
}

void sub_2993F5874(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, const void *a17, const void *a18)
{
  if (v18)
  {
    MEMORY[0x29C29BF70](v18, 0x1000C80BDFB0063, a3, a4, a5, a6, a7, a8);
  }

  if (a10)
  {
    MEMORY[0x29C29BF70](a10, 0x1000C80BDFB0063, a3, a4, a5, a6, a7, a8);
  }

  sub_299219AB4(&a17, 0);
  sub_299219AB4(&a18, 0);
  _Unwind_Resume(a1);
}

CFIndex sub_2993F5950(CFIndex result, CFStringRef theString, const __CFString *a3)
{
  if (theString)
  {
    v5 = result;
    result = CFStringGetLength(theString);
    if (a3)
    {
      if (result)
      {
        result = CFStringGetLength(a3);
        if (result)
        {
          v9 = 0;
          v10 = 0;
          v8 = 0;
          v6 = sub_299276EA8(theString, &v10, &v8 + 1);
          v7 = sub_299276EA8(a3, &v9, &v8);
          result = sub_29924D6E4(*(v5 + 96), v7, 2 * v9, v6, 2 * v10, 0, 0, 10000);
          if (HIBYTE(v8) == 1)
          {
            result = MEMORY[0x29C29BF70](v6, 0x1000C80BDFB0063);
          }

          if (v8 == 1)
          {
            return MEMORY[0x29C29BF70](v7, 0x1000C80BDFB0063);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2993F5A44(uint64_t a1, unsigned __int16 *__src, unint64_t a3, int a4)
{
  if (a4 == 5 && a3)
  {
    v7 = __src;
    v8 = a3;
    while (1)
    {
      v10 = *v7++;
      v9 = v10;
      v11 = (v10 + 240);
      v12 = (v10 - 48) >= 0xA && v11 >= 0xA;
      if (v12 && !sub_299281CA8(v9) && v9 != 65292 && v9 != 44)
      {
        break;
      }

      if (!--v8)
      {
        return 3;
      }
    }
  }

  sub_29925851C(__p, __src, a3);
  if (!sub_299327FD8((a1 + 152), __p))
  {
    v15 = sub_2993F5C58(a1, __src, a3);
    sub_29927415C((a1 + 120), __p, &v15);
  }

  v13 = *sub_2993F5B7C(a1 + 120, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

void sub_2993F5B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **sub_2993F5B7C(uint64_t a1, unsigned __int16 *a2)
{
  v6 = a2;
  v3 = *(sub_2992742B4((a1 + 32), a2, &unk_299400092, &v6, &v5) + 5);
  if (*(a1 + 8) != v3)
  {
    sub_2993F64D8(a1 + 8, 0, 0, v3 + 16);
  }

  return (v3 + 40);
}

uint64_t sub_2993F5C58(uint64_t a1, UniChar *a2, CFIndex a3)
{
  if (a2 && a3)
  {
    v6 = a3;
    v7 = a2;
    while (1)
    {
      v8 = *v7++;
      v9 = (v8 + 240);
      if ((v8 - 48) >= 0xA && v9 >= 0xA)
      {
        break;
      }

      if (!--v6)
      {
        return 3;
      }
    }
  }

  if (a3 == 3)
  {
    if (a2[1] == 12289)
    {
      v12 = *a2;
      v13 = (v12 - 48) >= 0xA && (v12 + 240) >= 0xAu;
      if (!v13 || sub_299281B98(v12))
      {
        v14 = a2[2];
        v11 = 3;
        if ((v14 - 48) < 0xA || (v14 + 240) < 0xAu || sub_299281B98(v14))
        {
          return v11;
        }
      }
    }
  }

  else if (!a3)
  {
    return 0;
  }

  v11 = (*(**(a1 + 112) + 32))(*(a1 + 112), a2, 2 * a3);
  if (!v11)
  {
    v15 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x29EDB8ED8], a2, a3, *MEMORY[0x29EDB8EE8]);
    TokenIDForString = LMLanguageModelGetTokenIDForString();
    LMLanguageModelGetDynamicTokenIDRange();
    if (TokenIDForString)
    {
      v11 = TokenIDForString;
    }

    else
    {
      v11 = 0;
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  return v11;
}

uint64_t sub_2993F5E08(uint64_t a1, unsigned __int16 *a2, unint64_t a3, unsigned __int16 *a4, uint64_t a5, int a6)
{
  if (a5)
  {
    v6 = 2 * a5;
    while (1)
    {
      v7 = *a4;
      v8 = &unk_29942C878;
      if (v7 != 12300)
      {
        if (v7 != 12301)
        {
          return sub_2993F5A44(a1, a2, a3, a6);
        }

        v8 = &unk_29942C87A;
      }

      if (v8 - &unk_29942C878 == -2)
      {
        break;
      }

      ++a4;
      v6 -= 2;
      if (!v6)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (!a3)
    {
      return 0;
    }

    v9 = 2 * a3;
    for (i = a2; ; ++i)
    {
      v11 = *i;
      v12 = &unk_29942C87E;
      if (v11 != 65288)
      {
        if (v11 != 65289)
        {
          return sub_2993F5A44(a1, a2, a3, a6);
        }

        v12 = &unk_29942C880;
      }

      if (v12 - &unk_29942C87E == -2)
      {
        break;
      }

      v9 -= 2;
      if (!v9)
      {
        return 0;
      }
    }
  }

  return sub_2993F5A44(a1, a2, a3, a6);
}

void sub_2993F5F40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993F5F68(void *a1, const __CFString *a2, int *a3)
{
  v5 = LMLanguageModelAddTokenForString();
  if (v5 && a1[15])
  {
    v7 = 0;
    sub_299276A84(a2);
  }

  return v5;
}

void sub_2993F6044(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    MEMORY[0x29C29BF70](v15, 0x1000C80BDFB0063, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993F6084(uint64_t a1, unsigned __int16 *a2)
{
  v3 = sub_299274688((a1 + 32), a2);
  v4 = v3[5];
  v6 = *v4;
  v5 = *(v4 + 8);
  v6[1] = v5;
  *v5 = v6;
  --*(a1 + 24);
  sub_299273FB8(a1 + 8, v4);

  return sub_299274784((a1 + 32), v3);
}

double sub_2993F60EC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v24 = a2;
  if (*(a1 + 192) == 2)
  {
    __p = 0;
    v22 = 0;
    v7 = a4 + 1;
    v23 = 0;
    sub_2991B6CFC(&__p, a4 + 1);
    if (a4)
    {
      v8 = 4 * a4;
      do
      {
        sub_2992141C0(&__p, a3++);
        v8 -= 4;
      }

      while (v8);
    }

    sub_2992141C0(&__p, &v24);
    if (*(a1 + 32) >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = *(a1 + 32);
    }

    if (v9)
    {
      v10 = 0;
      v11 = 0.0;
      v12 = -4;
      do
      {
        if (v10 <= 1)
        {
          v13 = 196;
        }

        else
        {
          v13 = 200;
        }

        v14 = *(a1 + v13);
        v15 = v10 + 1;
        LMLanguageModelGetUsageCount();
        v17 = v16;
        if (v16 >= v14)
        {
          LMLanguageModelGetUsageCount();
          if (v18 != 0.0 && (v10 != 1 || v18 > *(a1 + 204)))
          {
            v11 = v11 + (v17 / v18);
          }
        }

        v12 -= 4;
        ++v10;
      }

      while (v9 != v15);
    }

    else
    {
      v11 = 0.0;
    }

    v20 = log10(v11 / v9);
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }

    return v20;
  }

  else
  {

    LMLanguageModelConditionalProbability();
  }

  return result;
}

void sub_2993F62A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2993F62C8(uint64_t a1, int *a2, uint64_t a3)
{
  if (*(a1 + 192) == 2)
  {
    if (a3 < 1)
    {
      return 0.0;
    }

    v6 = 0;
    v7 = 0.0;
    do
    {
      v7 = v7 + sub_2993F60EC(a1, a2[v6], a2, v6);
      ++v6;
    }

    while (a3 != v6);
    return v7;
  }

  else
  {

    LMLanguageModelJointProbability();
  }

  return result;
}

uint64_t sub_2993F637C(void *a1)
{
  sub_2992751B4((a1 + 19));
  sub_299273F58(a1 + 16);
  v2 = a1[12];
  a1[12] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[11];
  a1[11] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_299383FE4(a1);
}

void sub_2993F6420(void *a1)
{
  sub_2992751B4((a1 + 19));
  sub_299273F58(a1 + 16);
  v2 = a1[12];
  a1[12] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[11];
  a1[11] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_299383FE4(a1);

  JUMPOUT(0x29C29BFB0);
}

id **sub_2993F6678(id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x29C29BFB0](v2, 0x80C40B8603338);
  }

  return a1;
}

void *sub_2993F66CC@<X0>(void *a1@<X0>, void *a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v55 = *MEMORY[0x29EDCA608];
  v6 = objc_msgSend_count(a1, a3, a4, a5);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v6)
  {
    if (v6 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_299212A8C();
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v7, &v50, v54, 16, a2);
  v12 = result;
  if (result)
  {
    v13 = 0;
    v46 = *v51;
    do
    {
      v14 = 0;
      v15 = (72 * v13 + 64);
      v47 = v12;
      do
      {
        if (*v51 != v46)
        {
          objc_enumerationMutation(a1);
        }

        v49 = v13;
        v16 = *(*(&v50 + 1) + 8 * v14);
        v17 = objc_msgSend_range(v16, v9, v10, v11);
        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = -1;
        }

        else
        {
          v21 = v17;
        }

        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

        v48 = v22;
        v23 = objc_msgSend_replacementString(v16, v18, v19, v20);
        v27 = objc_msgSend_modificationType(v16, v24, v25, v26);
        v31 = objc_msgSend_syllableRange(v16, v28, v29, v30);
        if (v31 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v35 = -1;
        }

        else
        {
          v35 = v31;
        }

        if (v31 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v36 = 0;
        }

        else
        {
          v36 = v32;
        }

        v37 = objc_msgSend_additionalSyllableRange(v16, v32, v33, v34);
        v39 = v38;
        objc_msgSend_modificationScore(v16, v38, v40, v41);
        if (v37 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v43 = 0;
        }

        else
        {
          v43 = v39;
        }

        if (v37 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v44 = -1;
        }

        else
        {
          v44 = v37;
        }

        *(v15 - 8) = v21;
        *(v15 - 7) = v48;
        *(v15 - 6) = v23;
        *(v15 - 10) = v27;
        *(v15 - 4) = v35;
        *(v15 - 3) = v36;
        v13 = v49 + 1;
        v14 = v14 + 1;
        *(v15 - 2) = v44;
        *(v15 - 1) = v43;
        *v15 = v42;
        v15 += 9;
      }

      while (v47 != v14);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v9, &v50, v54, 16);
      v12 = result;
    }

    while (result);
  }

  return result;
}

void sub_2993F6930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    *(a9 + 8) = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2993F6964@<X0>(id **a1@<X0>, uint64_t a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v6 = objc_msgSend_correction(**a1, a3, a4, a5);
  v10 = objc_msgSend_range(v6, v7, v8, v9);
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = -1;
  }

  else
  {
    v14 = v10;
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
  }

  else
  {
    v15 = v11;
  }

  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = objc_msgSend_replacementString(v6, v11, v12, v13);
  *(a2 + 24) = objc_msgSend_modificationType(v6, v16, v17, v18);
  v22 = objc_msgSend_syllableRange(v6, v19, v20, v21);
  if (v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = -1;
  }

  else
  {
    v26 = v22;
  }

  if (v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = 0;
  }

  else
  {
    v27 = v23;
  }

  *(a2 + 32) = v26;
  *(a2 + 40) = v27;
  v28 = objc_msgSend_additionalSyllableRange(v6, v23, v24, v25);
  if (v28 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = -1;
  }

  else
  {
    v32 = v28;
  }

  if (v28 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = 0;
  }

  else
  {
    v33 = v29;
  }

  *(a2 + 48) = v32;
  *(a2 + 56) = v33;
  result = objc_msgSend_modificationScore(v6, v29, v30, v31);
  *(a2 + 64) = v35;
  return result;
}

id sub_2993F6A08(int a1)
{
  v2 = sub_2992EEE98();
  v5 = objc_msgSend_classNamed_(v2, v3, @"PRAutocorrectionContext", v4);
  v8 = 2;
  if (a1 == 2)
  {
    v8 = 4;
  }

  if (a1 == 1)
  {
    v9 = objc_msgSend_autocorrectionContextOfType_(v5, v6, 3, v7);
  }

  else
  {
    v9 = objc_msgSend_autocorrectionContextOfType_(v5, v6, v8, v7);
  }

  return v9;
}

void sub_2993F6AB0(_Unwind_Exception *a1, int a2)
{
  v4 = v2;
  MEMORY[0x29C29BFB0](v4, 0x1030C4059851DCDLL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2993F6AA0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993F6B00()
{
  if ((atomic_load_explicit(&qword_2A14622D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14622D0))
  {
    sub_2991C6CA8(v2, "/System/Library/LinguisticData/RequiredAssets_zh.bundle/AssetData/reading-lookup.dat");
    if (SHIBYTE(v3) < 0)
    {
      sub_2991A110C(__p, v2[0], v2[1]);
    }

    else
    {
      *__p = *v2;
      v5 = v3;
    }

    if (v5 >= 0)
    {
      v1 = __p;
    }

    else
    {
      v1 = __p[0];
    }

    sub_2993F6A68(v1);
  }

  return qword_2A14622C8;
}

void sub_2993F6BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A14622D0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993F6C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  result = sub_2993F6CC0(a1, a2, a3, a4, a5, a6, a7);
  if (!result)
  {

    return sub_2993F6D40(a1, a2, a3, a4, a5, a6, v7);
  }

  return result;
}

uint64_t sub_2993F6CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v9 = a5;
  result = CFBurstTrieContainsUTF8String();
  if (result)
  {
    return sub_2993F6E0C(a1, 0, 0, 0, v9, a6, v7);
  }

  return result;
}

uint64_t sub_2993F6D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = 0;
  v13 = 0;
  v14 = a2 + 2 * a3;
  while (a4 > v13)
  {
    v15 = v13++;
    if ((*(v14 + 2 * v15) & 0xFC00) == 0xD800 && a4 != v13 && (*(v14 + 2 * v13) & 0xFC00) == 0xDC00)
    {
      v13 = v15 + 2;
    }

    v16 = sub_2993F6CC0(a1, v14, v15, v13 - v15, a5, a6 + v12, (a7 - v12));
    v12 = (v16 + v12);
    if (!v16)
    {
      return 0;
    }
  }

  return v12;
}

uint64_t sub_2993F6E0C(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6, unsigned int a7)
{
  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 40) + 2 * a2;
  v30 = a7;
  v23 = a4;
  v24 = a3;
  v28 = 2 * a4;
  v12 = 2 * (a4 - 1);
  do
  {
    if (a4)
    {
      v13 = 0;
      v14 = 0;
      v25 = v11;
      v26 = v8;
      v15 = v11 + 2 * v8;
      do
      {
        v16 = *(v15 + v13);
        if (!v13)
        {
          v17 = v16 >> 14;
          if (a5 == 1 && v17 == 2)
          {
            break;
          }

          v16 &= 0x3FFFu;
          if (a5 == 2 && v17 == 1)
          {
            break;
          }
        }

        v18 = *(a1 + 48);
        v19 = v16 + *(a1 + 8) * v16;
        v20 = strlen((v18 + v19));
        v21 = v20 + v10;
        if (v20 + v10 > v30)
        {
          break;
        }

        strncpy((a6 + v10), (v18 + v19), v20);
        v10 = v21;
        v14 |= v12 == v13;
        v13 += 2;
      }

      while (v28 != v13);
      a4 = v23;
      v11 = v25;
      v8 = v26;
      if (v14)
      {
        break;
      }
    }

    v11 += 2 * v9++ * a4;
    v8 += a4;
  }

  while (v9 != v24);
  return v10;
}

uint64_t sub_2993F6F74(uint64_t a1, char *__s)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  sub_2992BC434(__s, "r", 1, &v10);
  v3 = v10;
  v10 = 0uLL;
  v4 = *(a1 + 24);
  *(a1 + 16) = v3;
  if (v4)
  {
    sub_2991A893C(v4);
    if (*(&v10 + 1))
    {
      sub_2991A893C(*(&v10 + 1));
    }
  }

  v5 = **(a1 + 16);
  *a1 = v5;
  if (*v5 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2993F7120(exception, 2);
    goto LABEL_9;
  }

  *(a1 + 8) = v5[1];
  v6 = CFBurstTrieCreateFromMapBytes();
  *(a1 + 32) = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2993F7120(exception, 1);
LABEL_9:
    __cxa_throw(exception, &unk_2A1F7A308, sub_2993F71C4);
  }

  v7 = v5 + *(*a1 + 4);
  *(a1 + 40) = v5 + *(*a1 + 8);
  *(a1 + 48) = v7;
  return a1;
}

uint64_t sub_2993F7120(uint64_t a1, int a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2A1F7A330;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = a2 == 1;
  if (a2 == 1)
  {
    v4 = "Reading lookup index trie error.";
  }

  else
  {
    v4 = "Reading lookup version error.";
  }

  if (v3)
  {
    v5 = 32;
  }

  else
  {
    v5 = 29;
  }

  sub_299248CC0((a1 + 8), v4, v5);
  return a1;
}

void sub_2993F71A0(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void sub_2993F71C4(std::exception *this)
{
  this->__vftable = &unk_2A1F7A330;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t sub_2993F7224(const __CFString *a1, int a2)
{
  if ((a2 - 3) < 0xFFFFFFFE)
  {
    return 0;
  }

  v2 = sub_2993F6B00();
  if (v2)
  {
    sub_299276A84(a1);
  }

  return v2;
}

void sub_2993F7364(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C80BDFB0063, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993F73A4(std::exception *this)
{
  this->__vftable = &unk_2A1F7A330;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993F7418(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void *sub_2993F7434(uint64_t a1, unsigned int a2, void *a3, _BYTE *a4, void *__dst, _WORD *a6)
{
  v12 = a2;
  v13 = (*(a1 + 8) + a2);
  v14 = *v13;
  *a6 = v14;
  result = memmove(__dst, v13 + 1, v14);
  if (*a6)
  {
    v16 = 0;
    do
    {
      *(__dst + v16++) ^= 0x6Cu;
      v17 = *a6;
    }

    while (v17 > v16);
  }

  else
  {
    v17 = 0;
  }

  *a4 = *(*(a1 + 8) + a2 + 1 + v17);
  *a3 = *(a1 + 8) + v12 + *a6 + 2;
  return result;
}

uint64_t sub_2993F7500(uint64_t result, unsigned __int8 *a2, int a3, _BYTE *a4, _BYTE *a5)
{
  __n_2[5] = *MEMORY[0x29EDCA608];
  __n = 0;
  __len_1 = 0;
  __len = 0;
  v9 = 0xFFFF;
  v10 = 1;
  while (1)
  {
    v11 = v9 + 1;
    v12 = (v9 + 1);
    if (v12 == a3)
    {
      break;
    }

    v13 = a2[(a3 - 2 - v9)];
    v14 = *result;
    v15 = v13 + *(*result + 8 * v10) + 2;
    if (v15 > **result || v14[2 * v15 + 1] != v10)
    {
      goto LABEL_14;
    }

    v16 = v14[2 * v15];
    v10 = v15;
    v9 = v11;
    if (v16 < 0)
    {
      result = sub_2993F7434(result, -v16, &__len_1, &__len, __n_2, &__n);
      if (v12 + __n + 1 == a3)
      {
        result = memcmp(__n_2, a2, __n);
        if (!result)
        {
          v17 = __len;
          result = memmove(a4, __len_1, __len);
          for (*a5 = v17; v17; --v17)
          {
            *a4++ ^= 0x6Cu;
          }

          return result;
        }
      }

LABEL_14:
      *a5 = 0;
      return result;
    }
  }

  v18 = *result;
  v19 = *(*result + 8 * v10);
  if (v19 >= **result)
  {
    goto LABEL_14;
  }

  v20 = 2 * v19;
  if (v18[v20 + 3] != v10)
  {
    goto LABEL_14;
  }

  v21 = v18[v20 + 2];
  if ((v21 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  sub_2993F7434(result, -v21, &__len_1, &__len, __n_2, &__n);
  v22 = __len;
  result = memmove(a4, __len_1, __len);
  for (*a5 = v22; v22; --v22)
  {
    *a4++ ^= 0x6Cu;
  }

  return result;
}

void *sub_2993F76E8(void *__src, size_t __len, _BYTE *__dst, _BYTE *a4)
{
  v5 = __dst;
  v6 = __len;
  v7 = __len;
  result = memmove(__dst, __src, __len);
  *a4 = v6;
  if (v6)
  {
    do
    {
      *v5++ ^= 0x6Cu;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2993F774C(uint64_t result, uint64_t a2, int a3, _BYTE *a4, _BYTE *a5, uint64_t a6)
{
  v28 = *MEMORY[0x29EDCA608];
  v7 = *(a6 + 4);
  if (v7 < a3)
  {
    v9 = *a6;
    if ((*a6 & 0x80000000) == 0)
    {
      v10 = *(result + 24);
      if (v9 <= v10)
      {
        *&__n[1] = 0;
        HIBYTE(__n[0]) = 0;
        v14 = v7;
        LOWORD(__n[0]) = 0;
        while (1)
        {
          v15 = 2 * v9;
          if (v14 > v7)
          {
            v16 = *result;
            v17 = *(*result + 4 * v15);
            if (v17 >= 1 && v17 < v10 && *(v16 + 8 * v17 + 12) == v9)
            {
              v19 = *(v16 + 4 * (2 * v17 + 2));
              if (v19 < 0)
              {
                sub_2993F7434(result, -v19, &__n[1], __n + 3, __s1, __n);
                result = sub_2993F76E8(*&__n[1], HIBYTE(__n[0]), a4, a5);
                *a6 = v9;
                *(a6 + 4) = v14;
                return result;
              }
            }
          }

          v20 = a3 - v14;
          if (a3 <= v14)
          {
            goto LABEL_4;
          }

          v21 = *result;
          v22 = *(a2 + (v20 - 1)) + *(*result + 4 * v15) + 2;
          v23 = v22 < 1 || v22 > v10;
          if (v23 || *(v21 + 4 * ((2 * (v22 & 0x3FFFFFFF)) | 1u)) != v9)
          {
            goto LABEL_4;
          }

          v24 = *(v21 + 4 * (2 * v22));
          if (v24 < 0)
          {
            break;
          }

          ++v14;
          v9 = v22;
        }

        result = sub_2993F7434(result, -v24, &__n[1], __n + 3, __s1, __n);
        v25 = __n[0];
        if (((v20 + ~LOWORD(__n[0])) & 0x8000) == 0 && LOWORD(__n[0]) + v14 < a3)
        {
          result = memcmp(__s1, (a2 + (v20 + ~LOWORD(__n[0]))), LOWORD(__n[0]));
          if (!result)
          {
            result = sub_2993F76E8(*&__n[1], HIBYTE(__n[0]), a4, a5);
            *a6 = -1;
            *(a6 + 4) = v14 + v25 + 1;
            return result;
          }
        }
      }
    }
  }

LABEL_4:
  *a5 = 0;
  return result;
}

uint64_t sub_2993F7954(unsigned __int16 *a1, const char *a2, unsigned int a3, unsigned int a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x29EDBA0F8], a2, a2, a3 >> 1);
  objc_msgSend_getCString_maxLength_encoding_(v6, v7, v16, 100, 4);
  printf("%s \n", v16);
  v8 = a4 >> 28;
  if (v8)
  {
    v9 = 0;
    v10 = (*(a1 + 1) + 2 * (a4 & 0xFFFFFF));
    v11 = 2 * (HIBYTE(a4) & 0xF);
    v12 = v11;
    do
    {
      printf("reading %d: ", v9);
      if ((a4 & 0xF000000) != 0)
      {
        v13 = 0;
        do
        {
          if (v13)
          {
            v14 = v10[v13 / 2];
          }

          else
          {
            v14 = *v10 & 0x3FFF;
          }

          printf("%s", (*(a1 + 2) + v14 + *a1 * v14));
          v13 += 2;
        }

        while (v11 != v13);
      }

      putchar(10);
      ++v9;
      v10 = (v10 + v12);
      v12 += v11;
    }

    while (v9 != v8);
  }

  result = putchar(10);
  ++dword_2A1461938;
  return result;
}

uint64_t ReadingLookupDictionaryBuild(int a1, char *const *a2)
{
  v104 = *MEMORY[0x29EDCA608];
  v4 = objc_autoreleasePoolPush();
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = MEMORY[0x29EDCA650];
  while (1)
  {
    while (1)
    {
      v10 = getopt_long(a1, a2, "r:w:o:d:", &off_2A145FC00, 0);
      if (v10 <= 110)
      {
        break;
      }

      switch(v10)
      {
        case 'o':
          v6 = *v9;
          break;
        case 'w':
          v7 = *v9;
          break;
        case 'r':
          v8 = *v9;
          break;
        default:
          goto LABEL_9;
      }
    }

    if (v10 == -1)
    {
      break;
    }

    if (v10 == 100)
    {
      v5 = *v9;
    }

    else
    {
LABEL_9:
      sub_2993F819C(*a2);
    }
  }

  if (v5)
  {
    v11 = open(v5, 0);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = v11;
      fstat(v11, &v102);
      v13 = mmap(0, v102.st_size, 1, 1, v12, 0);
      if (!CFBurstTrieCreateFromMapBytes())
      {
        __assert_rtn("dumpDictionary", "BuildReadingLookupDictionary.mm", 84, "trie");
      }

      *&v99.st_dev = 0;
      LOWORD(v99.st_dev) = v13[1];
      v99.st_ino = v13 + *(v13 + 2);
      *&v99.st_uid = v13 + *(v13 + 1);
      CFBurstTrieCreateCursorForBytes();
      CFBurstTrieTraverseFromCursor();
      CFBurstTrieCursorRelease();
      CFBurstTrieRelease();
      close(v12);
      munmap(v13, v102.st_size);
      printf("%d words\n", dword_2A1461938);
      goto LABEL_40;
    }

    v85 = *MEMORY[0x29EDCA610];
LABEL_52:
    fprintf(v85, "Cannot open %s\n");
LABEL_54:
    exit(1);
  }

  if (!v8 || !v7 || !v6)
  {
    sub_2993F819C(*a2);
    goto LABEL_54;
  }

  v88 = v4;
  v14 = open(v8, 0);
  if (v14 < 0)
  {
    v85 = *MEMORY[0x29EDCA610];
    goto LABEL_52;
  }

  v15 = v14;
  fstat(v14, &v99);
  v86 = v15;
  v87 = mmap(0, v99.st_size, 1, 1, v15, 0);
  v16 = MEMORY[0x29EDBA0F8];
  v18 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x29EDBA0F8], v17, v7, 4);
  v20 = objc_msgSend_stringWithContentsOfFile_encoding_error_(v16, v19, v18, 4, 0);
  v23 = objc_msgSend_componentsSeparatedByString_(v20, v21, @"\n", v22);
  CFBurstTrieCreate();
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v95, v100, 16);
  if (v25)
  {
    v26 = v25;
    v27 = *v96;
    do
    {
      v28 = 0;
      v89 = v26;
      do
      {
        if (*v96 != v27)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v95 + 1) + 8 * v28);
        v30 = objc_autoreleasePoolPush();
        v34 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x29EDB9F50], v31, v32, v33);
        v37 = objc_msgSend_stringByTrimmingCharactersInSet_(v29, v35, v34, v36);
        if (objc_msgSend_length(v37, v38, v39, v40) && (objc_msgSend_hasPrefix_(v37, v41, @"#", v42) & 1) == 0)
        {
          v45 = objc_msgSend_componentsSeparatedByString_(v37, v43, @",", v44);
          v48 = objc_msgSend_objectAtIndex_(v45, v46, 0, v47);
          if (!objc_msgSend_length(v48, v49, v50, v51))
          {
            __assert_rtn("ReadingLookupDictionaryBuild", "BuildReadingLookupDictionary.mm", 178, "[word length] > 0");
          }

          objc_msgSend_getCString_maxLength_encoding_(v48, v52, v103, 100, 4);
          v55 = objc_msgSend_objectAtIndex_(v45, v53, 1, v54);
          if ((objc_msgSend_isEqualToString_(v55, v56, @"*", v57) & 1) == 0)
          {
            if (objc_msgSend_count(v45, v58, v59, v60) != 4)
            {
              __assert_rtn("ReadingLookupDictionaryBuild", "BuildReadingLookupDictionary.mm", 183, "[components count] == 4");
            }

            v63 = objc_msgSend_objectAtIndex_(v45, v61, 1, v62);
            objc_msgSend_getCString_maxLength_encoding_(v63, v64, v101, 100, 4);
            atoi(v101);
            v67 = objc_msgSend_objectAtIndex_(v45, v65, 2, v66);
            objc_msgSend_getCString_maxLength_encoding_(v67, v68, v101, 100, 4);
            atoi(v101);
            v71 = objc_msgSend_objectAtIndex_(v45, v69, 3, v70);
            objc_msgSend_getCString_maxLength_encoding_(v71, v72, v101, 100, 4);
            if (atoi(v101) >> 24)
            {
              __assert_rtn("ReadingLookupDictionaryBuild", "BuildReadingLookupDictionary.mm", 193, "offset <= 0xFFFFFF");
            }

            objc_msgSend_getCharacters_(v48, v73, &v102, v74);
            objc_msgSend_length(v48, v75, v76, v77);
            v26 = v89;
            if (!CFBurstTrieAddUTF8String())
            {
              __assert_rtn("ReadingLookupDictionaryBuild", "BuildReadingLookupDictionary.mm", 198, "CFBurstTrieAddUTF8String(trie, (UInt8*)utf16String, [word length] * sizeof(unichar), payload)");
            }
          }
        }

        objc_autoreleasePoolPop(v30);
        ++v28;
      }

      while (v26 != v28);
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v78, &v95, v100, 16);
    }

    while (v26);
  }

  v79 = *(v87 + 6);
  v80 = v79 - *(v87 + 2) + 24;
  __buf[0] = 1;
  __buf[1] = *v87;
  v91 = 24;
  v92 = v80;
  v94 = 0;
  v93 = (LODWORD(v99.st_size) - v79 + v80);
  v81 = open(v6, 1537, 384);
  if (v81 < 0)
  {
    fprintf(*MEMORY[0x29EDCA610], "Cannot create %s\n");
    goto LABEL_54;
  }

  v82 = v81;
  v4 = v88;
  if (write(v81, __buf, 0x18uLL) != 24)
  {
    __assert_rtn("ReadingLookupDictionaryBuild", "BuildReadingLookupDictionary.mm", 225, "numByteWritten == sizeof(ReadingLookupDictionaryHeader)");
  }

  v83 = write(v82, v87 + 10, v99.st_size - 10);
  if (v83 != v99.st_size - 10)
  {
    __assert_rtn("ReadingLookupDictionaryBuild", "BuildReadingLookupDictionary.mm", 227, "numByteWritten == statBuffer.st_size - sizeof(ReadingHeader)");
  }

  if (!CFBurstTrieSerializeWithFileDescriptor())
  {
    __assert_rtn("ReadingLookupDictionaryBuild", "BuildReadingLookupDictionary.mm", 228, "CFBurstTrieSerializeWithFileDescriptor(trie, outputFile, kCFBurstTrieReadOnly | kCFBurstTrieBitmapCompression | kCFBurstTrieSortByKey)");
  }

  close(v82);
  fprintf(*MEMORY[0x29EDCA610], "Created reading lookup dictioanry at %s\n", v6);
  close(v86);
LABEL_40:
  objc_autoreleasePoolPop(v4);
  return 0;
}

uint64_t sub_2993F819C(const char *a1)
{
  v2 = MEMORY[0x29EDCA610];
  fprintf(*MEMORY[0x29EDCA610], "%s --reading-list PATH --word-index PATH --output PATH\n", a1);
  fwrite("or\n", 3uLL, 1uLL, *v2);
  return fprintf(*v2, "%s --dump PATH\n", a1);
}

char *sub_2993F820C(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_2993F9D38(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_2991E2384(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_2991DFC7C(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

unsigned __int8 *sub_2993F82D4(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_2993F9D38(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = (a3 + 1);
  }

  v11 = sub_2991E2384(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_2991E0BDC(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

void sub_2993F839C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v275 = a2;
  v5 = sub_2991E1F14(a3, &v275, a3[11].u32[1]);
  v6 = v275;
  if (v5)
  {
    return;
  }

  while (2)
  {
    v7 = v6 + 1;
    v8 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v8 + (*v7 << 7) - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = v6 + 2;
LABEL_6:
      v275 = v7;
      goto LABEL_7;
    }

    v26 = sub_2991FC5E0(v6, v8);
    v275 = v26;
    if (!v26)
    {
      return;
    }

    v7 = v26;
LABEL_7:
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_269;
        }

        v9 = v7 - 1;
        while (2)
        {
          v275 = v9 + 1;
          if (!*(a1 + 72))
          {
            v11 = *(a1 + 68);
LABEL_16:
            sub_2992018A8((a1 + 56), v11 + 1);
            v10 = *(a1 + 72);
            goto LABEL_17;
          }

          sub_2991EA510();
          if (v12 != v13)
          {
            sub_2991EA4F8();
            *(a1 + 64) = v15;
            v17 = *(v16 + 8);
            goto LABEL_22;
          }

          if (v11 == *(a1 + 68))
          {
            goto LABEL_16;
          }

LABEL_17:
          sub_2991EA54C(v10);
          v18 = *(a1 + 56);
          if (!v18)
          {
            sub_2991EA558();
          }

          if (*(v18 + 24))
          {
            v24 = sub_2991EA4B0();
            (*(v25 + 40))(v24, &unk_2A1F638C0, 24);
          }

          v19 = sub_2991EA438();
          sub_2991EA528(v19);
          sub_2991EA51C();
          *(a1 + 64) = v20;
          v17 = sub_2991EA504(v21, v22);
LABEL_22:
          v275 = sub_2991FC624(v17, v14, a3);
          if (v275)
          {
            sub_2991EA4EC();
            if (!(!v210 & v23) || *v9 != 10)
            {
              goto LABEL_267;
            }

            continue;
          }

          return;
        }

      case 2u:
        if (v8 != 18)
        {
          goto LABEL_269;
        }

        sub_2991EA540(*(a1 + 40) | 1);
        if (v43)
        {
          sub_2991EA534();
        }

        v44 = (a1 + 152);
        goto LABEL_227;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        v153 = v7 + 1;
        v152 = *v7;
        if ((v152 & 0x8000000000000000) == 0)
        {
          goto LABEL_183;
        }

        sub_2991EA40C();
        if (v155 < 0)
        {
          v275 = sub_2991FC598(v154, v152);
          if (!v275)
          {
            return;
          }
        }

        else
        {
          v153 = (v154 + 2);
LABEL_183:
          v275 = v153;
        }

        if ((v152 - 1) > 3)
        {
          v269 = *(a1 + 8);
          if (v269)
          {
            v270 = ((v269 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v273 = v152;
            v274 = sub_2991E2054((a1 + 8));
            v152 = v273;
            v270 = v274;
          }

          sub_2991FC480(3, v152, v270);
        }

        else
        {
          *(a1 + 40) |= 0x800000u;
          *(a1 + 272) = v152;
        }

        goto LABEL_267;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_269;
        }

        sub_2991EA480(*(a1 + 40) | 0x1000000);
        if ((v100 & 0x80) == 0)
        {
          goto LABEL_122;
        }

        sub_2991EA424();
        if (v103 < 0)
        {
          v237 = sub_2991FC598(v102, v100);
          v275 = v237;
          *(a1 + 276) = v238;
          if (!v237)
          {
            return;
          }
        }

        else
        {
          v101 = (v102 + 2);
LABEL_122:
          v275 = v101;
          *(a1 + 276) = v100;
        }

        goto LABEL_267;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_269;
        }

        v125 = v7 - 1;
        while (1)
        {
          v275 = v125 + 1;
          if (!*(a1 + 96))
          {
            break;
          }

          sub_2991EA510();
          if (v12 == v13)
          {
            if (v127 == *(a1 + 92))
            {
LABEL_154:
              sub_2992018A8((a1 + 80), v127 + 1);
              v126 = *(a1 + 96);
            }

            sub_2991EA54C(v126);
            v132 = *(a1 + 80);
            if (!v132)
            {
              sub_2991EA558();
            }

            if (*(v132 + 24))
            {
              v137 = sub_2991EA4B0();
              (*(v138 + 40))(v137, &unk_2A1F638C0, 24);
            }

            v133 = sub_2991EA438();
            sub_2991EA528(v133);
            sub_2991EA51C();
            *(a1 + 88) = v134;
            v131 = sub_2991EA504(v135, v136);
            goto LABEL_160;
          }

          sub_2991EA4F8();
          *(a1 + 88) = v129;
          v131 = *(v130 + 8);
LABEL_160:
          v275 = sub_2991FC624(v131, v128, a3);
          if (!v275)
          {
            return;
          }

          sub_2991EA4EC();
          if (!(!v210 & v23) || *v125 != 42)
          {
            goto LABEL_267;
          }
        }

        v127 = *(a1 + 92);
        goto LABEL_154;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_269;
        }

        sub_2991EA480(*(a1 + 40) | 0x200);
        if ((v148 & 0x80) == 0)
        {
          goto LABEL_178;
        }

        sub_2991EA424();
        if (v151 < 0)
        {
          v251 = sub_2991FC598(v150, v148);
          v275 = v251;
          *(a1 + 224) = v252;
          if (!v251)
          {
            return;
          }
        }

        else
        {
          v149 = (v150 + 2);
LABEL_178:
          v275 = v149;
          *(a1 + 224) = v148;
        }

        goto LABEL_267;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_269;
        }

        sub_2991EA540(*(a1 + 40) | 2);
        if (v43)
        {
          sub_2991EA534();
        }

        v44 = (a1 + 160);
        goto LABEL_227;
      case 0xAu:
        if (v8 != 85)
        {
          goto LABEL_269;
        }

        *(a1 + 40) |= 0x2000000u;
        v179 = *v7;
        v118 = v7 + 4;
        *(a1 + 280) = v179;
        goto LABEL_251;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        sub_2991EA490(*(a1 + 40) | 0x800);
        if ((v77 & 0x8000000000000000) == 0)
        {
          goto LABEL_100;
        }

        sub_2991EA40C();
        if (v80 < 0)
        {
          v227 = sub_2991FC598(v79, v77);
          v275 = v227;
          *(a1 + 232) = v228;
          if (!v227)
          {
            return;
          }
        }

        else
        {
          v78 = (v79 + 2);
LABEL_100:
          v275 = v78;
          *(a1 + 232) = v77;
        }

        goto LABEL_267;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_269;
        }

        sub_2991EA480(*(a1 + 40) | 0x400);
        if ((v180 & 0x80) == 0)
        {
          goto LABEL_234;
        }

        sub_2991EA424();
        if (v183 < 0)
        {
          v257 = sub_2991FC598(v182, v180);
          v275 = v257;
          *(a1 + 228) = v258;
          if (!v257)
          {
            return;
          }
        }

        else
        {
          v181 = (v182 + 2);
LABEL_234:
          v275 = v181;
          *(a1 + 228) = v180;
        }

        goto LABEL_267;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_269;
        }

        sub_2991EA480(*(a1 + 40) | 0x1000);
        if ((v91 & 0x80) == 0)
        {
          goto LABEL_113;
        }

        sub_2991EA424();
        if (v94 < 0)
        {
          v233 = sub_2991FC598(v93, v91);
          v275 = v233;
          *(a1 + 240) = v234;
          if (!v233)
          {
            return;
          }
        }

        else
        {
          v92 = (v93 + 2);
LABEL_113:
          v275 = v92;
          *(a1 + 240) = v91;
        }

        goto LABEL_267;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_269;
        }

        sub_2991EA480(*(a1 + 40) | 0x4000000);
        if ((v139 & 0x80) == 0)
        {
          goto LABEL_169;
        }

        sub_2991EA424();
        if (v142 < 0)
        {
          v247 = sub_2991FC598(v141, v139);
          v275 = v247;
          *(a1 + 284) = v248;
          if (!v247)
          {
            return;
          }
        }

        else
        {
          v140 = (v141 + 2);
LABEL_169:
          v275 = v140;
          *(a1 + 284) = v139;
        }

        goto LABEL_267;
      case 0xFu:
        if (v8 != 125)
        {
          goto LABEL_269;
        }

        *(a1 + 40) |= 0x8000000u;
        v119 = *v7;
        v118 = v7 + 4;
        *(a1 + 288) = v119;
        goto LABEL_251;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_269;
        }

        sub_2991EA480(*(a1 + 40) | 0x10000000);
        if ((v59 & 0x80) == 0)
        {
          goto LABEL_76;
        }

        sub_2991EA424();
        if (v62 < 0)
        {
          v225 = sub_2991FC598(v61, v59);
          v275 = v225;
          *(a1 + 292) = v226;
          if (!v225)
          {
            return;
          }
        }

        else
        {
          v60 = (v61 + 2);
LABEL_76:
          v275 = v60;
          *(a1 + 292) = v59;
        }

        goto LABEL_267;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        sub_2991EA480(*(a1 + 40) | 0x20000000);
        if ((v170 & 0x80) == 0)
        {
          goto LABEL_217;
        }

        sub_2991EA424();
        if (v173 < 0)
        {
          v253 = sub_2991FC598(v172, v170);
          v275 = v253;
          *(a1 + 296) = v254;
          if (!v253)
          {
            return;
          }
        }

        else
        {
          v171 = (v172 + 2);
LABEL_217:
          v275 = v171;
          *(a1 + 296) = v170;
        }

        goto LABEL_267;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        sub_2991EA480(*(a1 + 40) | 0x40000000);
        if ((v174 & 0x80) == 0)
        {
          goto LABEL_222;
        }

        sub_2991EA424();
        if (v177 < 0)
        {
          v255 = sub_2991FC598(v176, v174);
          v275 = v255;
          *(a1 + 300) = v256;
          if (!v255)
          {
            return;
          }
        }

        else
        {
          v175 = (v176 + 2);
LABEL_222:
          v275 = v175;
          *(a1 + 300) = v174;
        }

        goto LABEL_267;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_269;
        }

        sub_2991EA4A0(*(a1 + 44) | 1);
        if (v192 < 0 && (sub_2991EA40C(), v195 < 0))
        {
          sub_2991FC598(v194, v193);
          sub_2991EA460();
          *(a1 + 308) = v263;
          if (!v264)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 308) = v196;
        }

        goto LABEL_267;
      case 0x14u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        sub_2991EA480(*(a1 + 40) | 0x80000000);
        if ((v188 & 0x80) == 0)
        {
          goto LABEL_244;
        }

        sub_2991EA424();
        if (v191 < 0)
        {
          v261 = sub_2991FC598(v190, v188);
          v275 = v261;
          *(a1 + 304) = v262;
          if (!v261)
          {
            return;
          }
        }

        else
        {
          v189 = (v190 + 2);
LABEL_244:
          v275 = v189;
          *(a1 + 304) = v188;
        }

        goto LABEL_267;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_269;
        }

        sub_2991EA4A0(*(a1 + 44) | 2);
        if (v45 < 0 && (sub_2991EA40C(), v48 < 0))
        {
          sub_2991FC598(v47, v46);
          sub_2991EA460();
          *(a1 + 309) = v219;
          if (!v220)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 309) = v49;
        }

        goto LABEL_267;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_269;
        }

        sub_2991EA4A0(*(a1 + 44) | 8);
        if (v120 < 0 && (sub_2991EA40C(), v123 < 0))
        {
          sub_2991FC598(v122, v121);
          sub_2991EA460();
          *(a1 + 311) = v245;
          if (!v246)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 311) = v124;
        }

        goto LABEL_267;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_269;
        }

        sub_2991EA4A0(*(a1 + 44) | 4);
        if (v198 < 0 && (sub_2991EA40C(), v201 < 0))
        {
          sub_2991FC598(v200, v199);
          sub_2991EA460();
          *(a1 + 310) = v265;
          if (!v266)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 310) = v202;
        }

        goto LABEL_267;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_269;
        }

        sub_2991EA490(*(a1 + 40) | 0x4000);
        if (v54 < 0 && (sub_2991EA40C(), v57 < 0))
        {
          sub_2991FC598(v56, v55);
          sub_2991EA460();
          *(a1 + 245) = v223;
          if (!v224)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 245) = v58;
        }

        goto LABEL_267;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_269;
        }

        sub_2991EA490(*(a1 + 40) | 0x10000);
        if (v113 < 0 && (sub_2991EA40C(), v116 < 0))
        {
          sub_2991FC598(v115, v114);
          sub_2991EA460();
          *(a1 + 247) = v243;
          if (!v244)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 247) = v117;
        }

        goto LABEL_267;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_269;
        }

        sub_2991EA490(*(a1 + 40) | 0x8000);
        if (v81 < 0 && (sub_2991EA40C(), v84 < 0))
        {
          sub_2991FC598(v83, v82);
          sub_2991EA460();
          *(a1 + 246) = v229;
          if (!v230)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 246) = v85;
        }

        goto LABEL_267;
      case 0x1Eu:
        if (v8 != 242)
        {
          goto LABEL_269;
        }

        v156 = v7 - 2;
        while (1)
        {
          v275 = v156 + 2;
          if (!*(a1 + 120))
          {
            break;
          }

          sub_2991EA510();
          if (v12 == v13)
          {
            if (v158 == *(a1 + 116))
            {
LABEL_194:
              sub_2992018A8((a1 + 104), v158 + 1);
              v157 = *(a1 + 120);
            }

            sub_2991EA54C(v157);
            v163 = *(a1 + 104);
            if (!v163)
            {
              sub_2991EA558();
            }

            if (*(v163 + 24))
            {
              v168 = sub_2991EA4B0();
              (*(v169 + 40))(v168, &unk_2A1F638C0, 24);
            }

            v164 = sub_2991EA438();
            sub_2991EA528(v164);
            sub_2991EA51C();
            *(a1 + 112) = v165;
            v162 = sub_2991EA504(v166, v167);
            goto LABEL_200;
          }

          sub_2991EA4F8();
          *(a1 + 112) = v160;
          v162 = *(v161 + 8);
LABEL_200:
          v275 = sub_2991FC624(v162, v159, a3);
          if (!v275)
          {
            return;
          }

          sub_2991EA4EC();
          if (!(!v210 & v23) || *v156 != 498)
          {
            goto LABEL_267;
          }
        }

        v158 = *(a1 + 116);
        goto LABEL_194;
      case 0x1Fu:
        if (v8 != 250)
        {
          goto LABEL_269;
        }

        v63 = v7 - 2;
        break;
      case 0x20u:
        if (v8)
        {
          goto LABEL_269;
        }

        sub_2991EA4A0(*(a1 + 44) | 0x10);
        if (v38 < 0 && (sub_2991EA40C(), v41 < 0))
        {
          sub_2991FC598(v40, v39);
          sub_2991EA460();
          *(a1 + 312) = v217;
          if (!v218)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 312) = v42;
        }

        goto LABEL_267;
      case 0x21u:
        if (v8 != 8)
        {
          goto LABEL_269;
        }

        sub_2991EA4A0(*(a1 + 44) | 0x20);
        if (v203 < 0 && (sub_2991EA40C(), v206 < 0))
        {
          sub_2991FC598(v205, v204);
          sub_2991EA460();
          *(a1 + 313) = v267;
          if (!v268)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 313) = v207;
        }

        goto LABEL_267;
      case 0x22u:
        if (v8 != 16)
        {
          goto LABEL_269;
        }

        sub_2991EA490(*(a1 + 40) | 0x40000);
        if (v95 < 0 && (sub_2991EA40C(), v98 < 0))
        {
          sub_2991FC598(v97, v96);
          sub_2991EA460();
          *(a1 + 249) = v235;
          if (!v236)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 249) = v99;
        }

        goto LABEL_267;
      case 0x23u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        sub_2991EA490(*(a1 + 40) | 0x20000);
        if (v104 < 0 && (sub_2991EA40C(), v107 < 0))
        {
          sub_2991FC598(v106, v105);
          sub_2991EA460();
          *(a1 + 248) = v239;
          if (!v240)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 248) = v108;
        }

        goto LABEL_267;
      case 0x24u:
        if (v8 != 34)
        {
          goto LABEL_269;
        }

        sub_2991EA540(*(a1 + 40) | 4);
        if (v43)
        {
          sub_2991EA534();
        }

        v44 = (a1 + 168);
        goto LABEL_227;
      case 0x28u:
        if (v8 != 64)
        {
          goto LABEL_269;
        }

        sub_2991EA480(*(a1 + 40) | 0x100000);
        if ((v109 & 0x80) == 0)
        {
          goto LABEL_135;
        }

        sub_2991EA424();
        if (v112 < 0)
        {
          v241 = sub_2991FC598(v111, v109);
          v275 = v241;
          *(a1 + 252) = v242;
          if (!v241)
          {
            return;
          }
        }

        else
        {
          v110 = (v111 + 2);
LABEL_135:
          v275 = v110;
          *(a1 + 252) = v109;
        }

        goto LABEL_267;
      case 0x29u:
        if (v8 != 72)
        {
          goto LABEL_269;
        }

        sub_2991EA4C4(*(a1 + 44) | 0x40);
        if ((v31 & 0x80) == 0)
        {
          goto LABEL_38;
        }

        sub_2991EA424();
        if (v34 < 0)
        {
          v215 = sub_2991FC598(v33, v31);
          v275 = v215;
          *(a1 + 316) = v216;
          if (!v215)
          {
            return;
          }
        }

        else
        {
          v32 = (v33 + 2);
LABEL_38:
          v275 = v32;
          *(a1 + 316) = v31;
        }

        goto LABEL_267;
      case 0x2Au:
        if (v8 != 80)
        {
          goto LABEL_269;
        }

        sub_2991EA4C4(*(a1 + 44) | 0x80);
        if ((v50 & 0x80) == 0)
        {
          goto LABEL_67;
        }

        sub_2991EA424();
        if (v53 < 0)
        {
          v221 = sub_2991FC598(v52, v50);
          v275 = v221;
          *(a1 + 320) = v222;
          if (!v221)
          {
            return;
          }
        }

        else
        {
          v51 = (v52 + 2);
LABEL_67:
          v275 = v51;
          *(a1 + 320) = v50;
        }

        goto LABEL_267;
      case 0x2Bu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        sub_2991EA4C4(*(a1 + 44) | 0x100);
        if ((v184 & 0x80) == 0)
        {
          goto LABEL_239;
        }

        sub_2991EA424();
        if (v187 < 0)
        {
          v259 = sub_2991FC598(v186, v184);
          v275 = v259;
          *(a1 + 324) = v260;
          if (!v259)
          {
            return;
          }
        }

        else
        {
          v185 = (v186 + 2);
LABEL_239:
          v275 = v185;
          *(a1 + 324) = v184;
        }

        goto LABEL_267;
      case 0x2Cu:
        if (v8 != 98)
        {
          goto LABEL_269;
        }

        sub_2991EA4D4(*(a1 + 40) | 8);
        if (v35)
        {
          sub_2991EA4E0();
        }

        v36 = &off_2A145E1E8;
        v37 = (a1 + 176);
        goto LABEL_264;
      case 0x2Du:
        if (v8 != 106)
        {
          goto LABEL_269;
        }

        sub_2991EA4D4(*(a1 + 40) | 0x10);
        if (v35)
        {
          sub_2991EA4E0();
        }

        v36 = &off_2A145E168;
        v37 = (a1 + 184);
        goto LABEL_264;
      case 0x2Eu:
        if (v8 != 114)
        {
          goto LABEL_269;
        }

        sub_2991EA4D4(*(a1 + 40) | 0x20);
        if (v35)
        {
          sub_2991EA4E0();
        }

        v36 = &off_2A145E188;
        v37 = (a1 + 192);
        goto LABEL_264;
      case 0x2Fu:
        if (v8 != 122)
        {
          goto LABEL_269;
        }

        sub_2991EA4D4(*(a1 + 40) | 0x40);
        if (v35)
        {
          sub_2991EA4E0();
        }

        v36 = &off_2A145E1A8;
        v37 = (a1 + 200);
        goto LABEL_264;
      case 0x30u:
        if (v8 != 130)
        {
          goto LABEL_269;
        }

        sub_2991EA4D4(*(a1 + 40) | 0x80);
        if (v35)
        {
          sub_2991EA4E0();
        }

        v36 = &off_2A145E1C8;
        v37 = (a1 + 208);
LABEL_264:
        v178 = sub_2991EE614(v37, v36, v35);
        goto LABEL_265;
      case 0x31u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        sub_2991EA490(*(a1 + 40) | 0x80000);
        if (v86 < 0 && (sub_2991EA40C(), v89 < 0))
        {
          sub_2991FC598(v88, v87);
          sub_2991EA460();
          *(a1 + 250) = v231;
          if (!v232)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 250) = v90;
        }

        goto LABEL_267;
      case 0x32u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        sub_2991EA490(*(a1 + 40) | 0x2000);
        if (v143 < 0 && (sub_2991EA40C(), v146 < 0))
        {
          sub_2991FC598(v145, v144);
          sub_2991EA460();
          *(a1 + 244) = v249;
          if (!v250)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 244) = v147;
        }

        goto LABEL_267;
      case 0x33u:
        if (v8 != 157)
        {
          goto LABEL_269;
        }

        *(a1 + 40) |= 0x200000u;
        v197 = *v7;
        v118 = v7 + 4;
        *(a1 + 256) = v197;
LABEL_251:
        v275 = v118;
        goto LABEL_267;
      case 0x34u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        sub_2991EA490(*(a1 + 40) | 0x400000);
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        sub_2991EA40C();
        if (v30 < 0)
        {
          v213 = sub_2991FC598(v29, v27);
          v275 = v213;
          *(a1 + 264) = v214;
          if (!v213)
          {
            return;
          }
        }

        else
        {
          v28 = (v29 + 2);
LABEL_33:
          v275 = v28;
          *(a1 + 264) = v27;
        }

        goto LABEL_267;
      case 0x35u:
        if (v8 != 170)
        {
          goto LABEL_269;
        }

        sub_2991EA540(*(a1 + 40) | 0x100);
        if (v43)
        {
          sub_2991EA534();
        }

        v44 = (a1 + 216);
LABEL_227:
        v178 = sub_2991EE508(v44, v43);
LABEL_265:
        v208 = sub_2991FC624(v178, v275, a3);
        goto LABEL_266;
      default:
LABEL_269:
        if (v8)
        {
          v210 = (v8 & 7) == 4;
        }

        else
        {
          v210 = 1;
        }

        if (v210)
        {
          a3[10].i32[0] = v8 - 1;
          return;
        }

        if (v8 < 0x640)
        {
          v211 = *(a1 + 8);
          if (v211)
          {
            v212 = (v211 & 0xFFFFFFFFFFFFFFFELL) + 8;
          }

          else
          {
            v271 = v8;
            v272 = sub_2991E2054((a1 + 8));
            v8 = v271;
            v212 = v272;
            v7 = v275;
          }

          v208 = sub_2991FCAE0(v8, v212, v7, a3);
        }

        else
        {
          v208 = sub_2991F4D18((a1 + 16), v8, v7, &unk_2A1461A18, (a1 + 8), a3);
        }

LABEL_266:
        v275 = v208;
        if (!v208)
        {
          return;
        }

LABEL_267:
        v209 = sub_2991E1F14(a3, &v275, a3[11].u32[1]);
        v6 = v275;
        if (v209)
        {
          return;
        }

        continue;
    }

    break;
  }

  while (1)
  {
    v275 = v63 + 2;
    if (!*(a1 + 144))
    {
      break;
    }

    sub_2991EA510();
    if (v12 == v13)
    {
      if (v65 == *(a1 + 140))
      {
LABEL_85:
        sub_2992018A8((a1 + 128), v65 + 1);
        v64 = *(a1 + 144);
      }

      sub_2991EA54C(v64);
      v70 = *(a1 + 128);
      if (!v70)
      {
        sub_2991EA558();
      }

      if (*(v70 + 24))
      {
        v75 = sub_2991EA4B0();
        (*(v76 + 40))(v75, &unk_2A1F638C0, 24);
      }

      v71 = sub_2991EA438();
      sub_2991EA528(v71);
      sub_2991EA51C();
      *(a1 + 136) = v72;
      v69 = sub_2991EA504(v73, v74);
      goto LABEL_91;
    }

    sub_2991EA4F8();
    *(a1 + 136) = v67;
    v69 = *(v68 + 8);
LABEL_91:
    v275 = sub_2991FC624(v69, v66, a3);
    if (!v275)
    {
      return;
    }

    sub_2991EA4EC();
    if (!(!v210 & v23) || *v63 != 506)
    {
      goto LABEL_267;
    }
  }

  v65 = *(a1 + 140);
  goto LABEL_85;
}

char *sub_2993F940C(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_2993F9D38(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_2991E2384(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_2991E6308(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

unsigned __int8 *sub_2993F94D4(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_2993F9D38(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = (a3 + 1);
  }

  v11 = sub_2991E2384(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_2991E7258(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

void sub_2993F959C(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    v9 = sub_2993F9D38(a3, v7);
    if (!v9)
    {
      return;
    }

    v8 = v9;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_2991E2384(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 == v13)
  {
    v14 = v11;
    sub_2993F839C(a2, v8, a1);
    if (v15)
    {
      ++a1[11].i32[0];
      if (!a1[10].i32[0])
      {
        v16 = a1[3].i32[1] + v14;
        a1[3].i32[1] = v16;
        *a1 = (*&a1[1] + (v16 & (v16 >> 31)));
      }
    }
  }
}

char *sub_2993F9664(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_2993F9D38(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_2991E2384(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_2991E5680(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

char *sub_2993F972C(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_2993F9D38(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_2991E2384(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_2991E6A24(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

void sub_2993F97F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) <= 0x100u)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 16);
    v6 = &v5[32 * *(a1 + 10)];
    v7 = *(a2 + 16);
    if (v4 > 0x100)
    {
      v12 = sub_2991F3A0C(v5, v6, *v7, (v7 + 8));
    }

    else
    {
      v8 = 0;
      v9 = v7 + 32 * *(a2 + 10);
      if (*(a1 + 10) && *(a2 + 10))
      {
        v8 = 0;
        do
        {
          if (*v5 == *v7)
          {
            v10 = v5 + 32;
          }

          else
          {
            v10 = v5;
          }

          if (*v5 < *v7)
          {
            v5 += 32;
          }

          else
          {
            v7 += 32;
            v5 = v10;
          }

          ++v8;
        }

        while (v5 != v6 && v7 != v9);
      }

      v12 = v8 + ((v9 - v7) >> 5) + ((v6 - v5) >> 5);
    }

    sub_2991F384C(a1, v12);
  }

  v13 = *(a2 + 16);
  if (*(a2 + 8) >= 0x101u)
  {
    v19 = *v13;
    v18 = v13 + 2;
    v17 = v19;

    sub_2991F99E4(v17, v18, a1);
  }

  else if (*(a2 + 10))
  {
    v14 = &v13[8 * *(a2 + 10)];
    v15 = v13;
    do
    {
      v16 = *v15;
      v15 += 8;
      sub_2991F3B14(a1, v16, v13 + 1);
      v13 = v15;
    }

    while (v15 != v14);
  }
}

uint64_t sub_2993F9928()
{
  sub_2991FBAD4();
  sub_2991FBAB4();
  sub_2991FBAA0();
  sub_2991F9E50(v2, v3, v4);
  sub_2991FBAC4();
  v5 = sub_2991FBAF4();
  v7 = v6(v5);
  result = 0;
  if (v7)
  {
    if ((v1 & 2) != 0)
    {
      return 1;
    }

    sub_2991FBAE8();
    if ((*(v9 + 48))(v0))
    {
      return 1;
    }

    else
    {
      sub_2991FB190(v0);
      return 0;
    }
  }

  return result;
}

_OWORD *sub_2993F9A18()
{
  sub_2991FEC54();
  if (*(v7 + 23) < 0)
  {
    **v1 = 0;
    *(v1 + 8) = 0;
  }

  else
  {
    *v1 = 0;
    *(v1 + 23) = 0;
  }

  v8 = *(v2 + 8);
  if (v8 - v3 + *(v2 + 28) >= v0)
  {
    v9 = *(v1 + 23);
    if (v9 < 0)
    {
      v9 = *(v1 + 8);
    }

    sub_2991FEC14(v9);
    v8 = *(v2 + 8);
  }

  v10 = v8 - v3 + 16;
  while (1)
  {
    v11 = __OFSUB__(v0, v10);
    v0 -= v10;
    if ((v0 < 0) ^ v11 | (v0 == 0))
    {
      sub_2991FEC68(v4, v5, v6, v7);
      v12 = sub_2991EF75C(v17, "CHECK failed: size > chunk_size: ");
      sub_2991EF898(&v16, &v12->__r_.__value_.__l.__data_);
      v4 = sub_2991EF8A0(v17);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    sub_2991FEC88(v4, v5, v10);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = sub_2991FBBA8(v2);
    if (!result)
    {
      return result;
    }

    sub_2991FEC3C();
    if (v15 ^ v11 | v14)
    {
      sub_2991FEC88(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_2993F9B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_2993F9B44()
{
  sub_2991FEC54();
  v8 = *(v4 + 8);
  if (v8 - v5 + *(v4 + 28) >= v6)
  {
    v9 = *(v1 + 23);
    if (v9 < 0)
    {
      v9 = *(v1 + 8);
    }

    sub_2991FEC14(v9);
    v8 = *(v2 + 8);
  }

  v10 = v8 - v3 + 16;
  while (1)
  {
    v11 = __OFSUB__(v0, v10);
    v0 -= v10;
    if ((v0 < 0) ^ v11 | (v0 == 0))
    {
      sub_2991FEC68(v4, v5, v6, v7);
      v12 = sub_2991EF75C(v17, "CHECK failed: size > chunk_size: ");
      sub_2991EF898(&v16, &v12->__r_.__value_.__l.__data_);
      v4 = sub_2991EF8A0(v17);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    sub_2991FEC88(v4, v5, v10);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = sub_2991FBBA8(v2);
    if (!result)
    {
      return result;
    }

    sub_2991FEC3C();
    if (v15 ^ v11 | v14)
    {
      sub_2991FEC88(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_2993F9C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_2993F9C50(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_2993F9D38(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v15;
  }

  else
  {
    v8 = (a3 + 1);
  }

  v9 = sub_2991E2384(a1, v8, v7);
  v10 = *(a1 + 88);
  v11 = __OFSUB__(v10--, 1);
  *(a1 + 88) = v10;
  if (v10 < 0 == v11)
  {
    v12 = v9;
    result = (*(*a2 + 88))(a2, v8, a1);
    if (!result)
    {
      return result;
    }

    ++*(a1 + 88);
    if (!*(a1 + 80))
    {
      v14 = *(a1 + 28) + v12;
      *(a1 + 28) = v14;
      *a1 = *(a1 + 8) + (v14 & (v14 >> 31));
      return result;
    }
  }

  return 0;
}

uint64_t sub_2993F9D38(uint64_t a1, int a2)
{
  result = a1 + 2;
  v4 = -21;
  while (1)
  {
    a2 += (*(result - 1) - 1) << (v4 + 28);
    if ((*(result - 1) & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v4 += 7;
    if (!v4)
    {
      v5 = *(a1 + 4);
      v6 = a1 + 5;
      if (a2 + (v5 << 28) - 0x10000000 > 0x7FFFFFEF)
      {
        v6 = 0;
      }

      if (v5 <= 7)
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x2A1C594D8](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex)
{
  v2 = MEMORY[0x2A1C59558](theString, theIndex);
  result.length = v3;
  result.location = v2;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x2A1C595D0](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

uint64_t language_modeling::v1::LanguageModel::blocklistStatus()
{
  return MEMORY[0x2A1C67FC0]();
}

{
  return MEMORY[0x2A1C67FC8]();
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2A1C6FAB0](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2A1C6FAC0](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2A1C6FB88](this, a2);
}

{
  return MEMORY[0x2A1C6FBA0](this, a2);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2A1C6FD78]();
}

{
  return MEMORY[0x2A1C6FD80]();
}

{
  return MEMORY[0x2A1C6FD90]();
}

{
  return MEMORY[0x2A1C6FDA8]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE00]();
}

{
  return MEMORY[0x2A1C6FE08]();
}

{
  return MEMORY[0x2A1C6FE10]();
}

{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE28]();
}

{
  return MEMORY[0x2A1C6FE30]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}