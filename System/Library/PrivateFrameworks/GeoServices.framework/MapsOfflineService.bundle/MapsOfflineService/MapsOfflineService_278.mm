void sub_10E1338(uint64_t a1, __int128 **a2)
{
  v73 = a1;
  v2 = *a2;
  v62 = a2[1];
  if (*a2 != v62)
  {
    while (1)
    {
      v80 = (((*(v2 + 32) >> 16) & 0xFFFF0000 | (*(v2 + 32) << 32) | (2 * ((*(v2 + 32) & 0xFF000000000000) == 0))) + 4 * *(v2 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v2 + 88) & 1;
      sub_10E1C34(&v73, &v80, 1, 0);
      v80 = (((*(v2 + 72) >> 16) & 0xFFFF0000 | (*(v2 + 72) << 32) | (2 * ((*(v2 + 72) & 0xFF000000000000) == 0))) + 4 * *(v2 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v2 + 88) >> 1) & 1;
      sub_10E1C34(&v73, &v80, 0, 1);
      v4 = v69;
      v63 = v72;
      v64 = v71;
      if (v71 != v72)
      {
        v65 = v2;
        if (v69 != v70)
        {
          break;
        }
      }

LABEL_94:
      if (v4)
      {
        v70 = v4;
        operator delete(v4);
      }

      if (v71)
      {
        v72 = v71;
        operator delete(v71);
      }

      v2 += 96;
      if (v2 == v62)
      {
        return;
      }
    }

    while (1)
    {
      v5 = v69;
      v66 = v70;
      if (v69 != v70)
      {
        break;
      }

LABEL_7:
      if (++v64 == v63)
      {
        v4 = v69;
        goto LABEL_94;
      }
    }

    v6 = *v64;
    v67 = v6;
    while (1)
    {
      v7 = *v5;
      v8 = *(a1 + 2352);
      v9 = *(a1 + 2344);
      v10 = &v8[-v9];
      v11 = &v8[-v9] >> 2;
      if (v6 != -1 && v7 != -1)
      {
        if (v11 <= v6)
        {
          exception = __cxa_allocate_exception(0x40uLL);
          v61 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
        }

        v12 = *(v9 + 4 * v6);
        if (v12 != -1)
        {
          while (*(*(a1 + 2368) + 176 * v12) != v7)
          {
            v12 = *(*(a1 + 2392) + 4 * v12);
            if (v12 == -1)
            {
              goto LABEL_18;
            }
          }

          goto LABEL_11;
        }
      }

LABEL_18:
      v13 = *(v2 + 48);
      v76 = *(v2 + 32);
      v77 = v13;
      v14 = *(v2 + 80);
      v78 = *(v2 + 64);
      v79 = v14;
      v15 = *(v2 + 16);
      v74 = *v2;
      v75 = v15;
      v83 = v76;
      v84 = v13;
      v85 = v78;
      v86 = v14;
      v81 = v74;
      v82 = v15;
      v87 = 0;
      LODWORD(v80) = v7;
      v16 = *(a1 + 2440);
      v17 = (*(a1 + 2448) - v16) >> 2;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      if (v17 < (v10 >> 2) || v11 <= v7)
      {
        break;
      }

LABEL_89:
      ++*(v16 + 4 * v7);
      sub_10E3598((a1 + 2248), v6, &v80, v68);
      if (*(&v90 + 1))
      {
        *&v91 = *(&v90 + 1);
        operator delete(*(&v90 + 1));
      }

      if (v88)
      {
        *(&v88 + 1) = v88;
        operator delete(v88);
      }

      v2 = v65;
      v6 = v67;
LABEL_11:
      if (++v5 == v66)
      {
        goto LABEL_7;
      }
    }

    if (v7 < (v10 >> 2))
    {
      goto LABEL_75;
    }

    v18 = (v7 + 1);
    if (v11 <= v7)
    {
      v19 = v18 - v11;
      if (v18 <= v11)
      {
        if (v18 >= v11)
        {
          goto LABEL_35;
        }

        v24 = (v9 + 4 * v18);
      }

      else
      {
        v20 = *(a1 + 2360);
        if (v19 > (v20 - v8) >> 2)
        {
          v21 = v20 - v9;
          v22 = v21 >> 1;
          if (v21 >> 1 <= v18)
          {
            v22 = (v7 + 1);
          }

          if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v23 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          if (!(v23 >> 62))
          {
            operator new();
          }

          goto LABEL_100;
        }

        memset(v8, 255, ((4 * v18 - v10 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
        v24 = &v8[4 * v19];
      }

      *(a1 + 2352) = v24;
    }

LABEL_35:
    v25 = *(a1 + 2424);
    v26 = *(a1 + 2416);
    v27 = (v25 - v26) >> 2;
    v28 = v18 - v27;
    if (v18 <= v27)
    {
      if (v18 >= v27)
      {
        goto LABEL_48;
      }

      v33 = v26 + 4 * v18;
    }

    else
    {
      v29 = *(a1 + 2432);
      if (v28 > (v29 - v25) >> 2)
      {
        v30 = v29 - v26;
        v31 = v30 >> 1;
        if (v30 >> 1 <= v18)
        {
          v31 = (v7 + 1);
        }

        if (v30 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v32 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v31;
        }

        if (!(v32 >> 62))
        {
          operator new();
        }

        goto LABEL_100;
      }

      bzero(*(a1 + 2424), ((4 * v18 - (v25 - v26) - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
      v33 = v25 + 4 * v28;
    }

    *(a1 + 2424) = v33;
LABEL_48:
    v34 = *(a1 + 2256);
    v35 = *(a1 + 2248);
    v36 = (v34 - v35) >> 2;
    if (v36 <= v7)
    {
      v37 = v18 - v36;
      if (v18 > v36)
      {
        v38 = *(a1 + 2264);
        if (v37 > (v38 - v34) >> 2)
        {
          v39 = v38 - v35;
          v40 = v39 >> 1;
          if (v39 >> 1 <= v18)
          {
            v40 = (v7 + 1);
          }

          if (v39 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v41 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = v40;
          }

          if (!(v41 >> 62))
          {
            operator new();
          }

          goto LABEL_100;
        }

        memset(*(a1 + 2256), 255, ((4 * v18 - (v34 - v35) - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
        v42 = v34 + 4 * v37;
        goto LABEL_61;
      }

      if (v18 < v36)
      {
        v42 = v35 + 4 * v18;
LABEL_61:
        *(a1 + 2256) = v42;
      }
    }

    v43 = *(a1 + 2328);
    v44 = *(a1 + 2320);
    v45 = (v43 - v44) >> 2;
    v46 = v18 - v45;
    if (v18 > v45)
    {
      v47 = *(a1 + 2336);
      if (v46 > (v47 - v43) >> 2)
      {
        v48 = v47 - v44;
        v49 = v48 >> 1;
        if (v48 >> 1 <= v18)
        {
          v49 = (v7 + 1);
        }

        if (v48 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v50 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 62))
        {
          operator new();
        }

        goto LABEL_100;
      }

      bzero(*(a1 + 2328), ((4 * v18 - (v43 - v44) - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
      v51 = v43 + 4 * v46;
      goto LABEL_74;
    }

    if (v18 < v45)
    {
      v51 = v44 + 4 * v18;
LABEL_74:
      *(a1 + 2328) = v51;
    }

LABEL_75:
    v52 = *(a1 + 2352) - *(a1 + 2344);
    v53 = v52 >> 2;
    v54 = *(a1 + 2448);
    v16 = *(a1 + 2440);
    v55 = (v54 - v16) >> 2;
    v56 = (v52 >> 2) - v55;
    if (v52 >> 2 <= v55)
    {
      if (v52 >> 2 < v55)
      {
        *(a1 + 2448) = v16 + v52;
      }
    }

    else
    {
      v57 = *(a1 + 2456);
      if (v56 > (v57 - v54) >> 2)
      {
        if (v53 >> 62)
        {
          sub_1794();
        }

        v58 = v57 - v16;
        if (v58 >> 1 > v53)
        {
          v53 = v58 >> 1;
        }

        if (v58 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v59 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v59 = v53;
        }

        if (!(v59 >> 62))
        {
          operator new();
        }

LABEL_100:
        sub_1808();
      }

      bzero(*(a1 + 2448), ((v52 - (v54 - v16) - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
      *(a1 + 2448) = v54 + 4 * v56;
      v16 = *(a1 + 2440);
    }

    LODWORD(v6) = v67;
    goto LABEL_89;
  }
}

void sub_10E1BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_10E1C34(void *a1, unint64_t *a2, int a3, int a4)
{
  v6 = *a1;
  if (a3)
  {
    v7 = v6[217];
    for (i = v6[218]; v7 != i; v7 += 200)
    {
      if (*(v7 + 104) == *a2)
      {
        operator new();
      }
    }
  }

  if (a4)
  {
    v9 = v6[220];
    for (j = v6[221]; v9 != j; v9 += 200)
    {
      if (*(v9 + 8) == *a2)
      {
        operator new();
      }
    }
  }

  sub_40D8D4((v6 + 4), a2, &v31);
  if (v31)
  {
    operator new();
  }

  v11 = v6[294] - v6[293];
  sub_F98CE4(v6 + 281, v11 >> 2);
  sub_40D9F8((v6 + 4), a2, v32);
  v12 = *(v32[0] + 8) + 16 * v32[1];
  if (v33 == 1)
  {
    *v12 = *a2;
    *(v12 + 8) = -1;
  }

  *(v12 + 8) = v11 >> 2;
  v13 = v6[101];
  v14 = v6[102];
  if (v13 >= v14)
  {
    v16 = v6[100];
    v17 = v13 - v16;
    v18 = (v13 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      sub_1794();
    }

    v20 = v14 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (!(v21 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v22 = v18;
    v23 = (8 * v18);
    v24 = &v23[-v22];
    *v23 = *a2;
    v15 = v23 + 1;
    memcpy(v24, v16, v17);
    v6[100] = v24;
    v6[101] = v15;
    v6[102] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v13 = *a2;
    v15 = v13 + 1;
  }

  v6[101] = v15;
  v25 = *a2;
  if ((*a2 & 0xFFFC) != 0)
  {
    v26 = v25 >> 1;
    v27 = v25 >> 16;
    v28 = HIDWORD(v25);
    LODWORD(v30) = v28;
    WORD2(v30) = v27;
    BYTE6(v30) = ((v28 & 0xFFFE0000FFFFFFFFLL | (v27 << 32) & 0xFFFEFFFFFFFFFFFFLL | ((v26 & 1) << 48)) ^ 0x1000000000000) >> 48;
    sub_100A578((v6 + 199), 1);
    if (sub_100A97C((v6 + 199), &v30) == -1)
    {
      sub_100AA78((v6 + 199), &v30, v29, v32);
    }
  }

  operator new();
}

void sub_10E2184(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10E21B4(uint64_t *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, __int128 *a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v10 = a4[2];
  v11 = a4[4];
  v12 = a4[5];
  v24 = a4[3];
  v25 = v11;
  v26 = v12;
  v13 = a4[1];
  v21 = *a4;
  v22 = v13;
  v27 = *(a4 + 12);
  v23 = v10;
  v14 = a3;
  v20 = a3;
  *__p = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = a1[305];
  v16 = a1[294] - a1[293];
  if ((a1[306] - v15) >> 2 < (v16 >> 2) || v16 >> 2 <= a3)
  {
    sub_F98CE4(a1 + 281, a3);
    v17 = a1[294] - a1[293];
    LOWORD(v19) = 0;
    BYTE2(v19) = 0;
    v15 = a1[305];
    v18 = (a1[306] - v15) >> 2;
    if (v17 >> 2 <= v18)
    {
      if (v17 >> 2 < v18)
      {
        a1[306] = v15 + v17;
      }
    }

    else
    {
      sub_10E4FEC((a1 + 305), (v17 >> 2) - v18, &v19);
      v15 = a1[305];
    }
  }

  ++*(v15 + 4 * v14);
  if (a5)
  {
    sub_10E5208(a1 + 281, a2, &v20, a6);
  }

  else
  {
    sub_10E3598(a1 + 281, a2, &v20, a6);
  }

  if (*(&v30 + 1))
  {
    *&v31 = *(&v30 + 1);
    operator delete(*(&v30 + 1));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_10E2360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10E3774(va);
  _Unwind_Resume(a1);
}

__n128 sub_10E2374(uint64_t a1, unsigned int *a2, __n128 *a3)
{
  sub_10E4678(a1 + 824, a2, &v8);
  v5 = v8;
  if (v10 == 1)
  {
    v6 = *(v8 + 8) + 24 * v9;
    *v6 = *a2;
    *(v6 + 8) = 0xFFFFLL;
    *(v6 + 16) = 0;
  }

  result = *a3;
  *(*(v5 + 8) + 24 * v9 + 8) = *a3;
  return result;
}

unint64_t sub_10E23F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = sub_F6D008(a2);
  if (result)
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    v42 = result;
    v43 = v5;
    do
    {
      v10 = sub_F6C648(a2, v9);
      v11 = v10;
      if (v9)
      {
        v44 = (((*(v10 + 32) >> 16) & 0xFFFF0000 | (*(v10 + 32) << 32) | (2 * ((*(v10 + 32) & 0xFF000000000000) == 0))) + 4 * *(v10 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v10 + 88) & 1;
        sub_F98EF8((a1 + 4), &v44, v45);
        if (v45[0])
        {
          v12 = *(v46 + 8);
          goto LABEL_19;
        }
      }

      else
      {
        v13 = a1[217];
        v14 = a1[218];
        if (v13 != v14)
        {
          v15 = (v13 + 28);
          while (1)
          {
            if (*(v15 - 8) == sub_F6C788(a2))
            {
              v17 = sub_73F1C(a2);
              if (sub_F71798(v15, v17))
              {
                break;
              }
            }

            v16 = v15 + 88;
            v15 += 200;
            if (v16 == v14)
            {
              goto LABEL_15;
            }
          }

          v14 = (v15 - 112);
LABEL_15:
          v13 = v14;
          v14 = a1[218];
        }

        if (v13 != v14)
        {
          v12 = *v13;
          goto LABEL_19;
        }
      }

      v12 = 0xFFFFFFFFLL;
LABEL_19:
      if (v9 == sub_F6D008(a2) - 1)
      {
        v18 = a1[220];
        v19 = a1[221];
        if (v18 != v19)
        {
          v20 = (v18 + 4);
          while (1)
          {
            if (*(v20 - 8) == sub_F6C7D0(a2))
            {
              v22 = sub_F69058(a2);
              if (sub_F71798(v20, v22))
              {
                break;
              }
            }

            v21 = v20 + 184;
            v20 += 200;
            if (v21 == v19)
            {
              goto LABEL_26;
            }
          }

          v19 = (v20 - 16);
LABEL_26:
          v18 = v19;
          v19 = a1[221];
        }

        if (v18 == v19)
        {
          result = v9;
          if (v12 != 0xFFFFFFFF)
          {
            goto LABEL_5;
          }

LABEL_43:
          if (v9 != sub_F6D008(a2) - 1)
          {
            goto LABEL_56;
          }

          goto LABEL_44;
        }

        v23 = *v18;
        if (v12 != 0xFFFFFFFF)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v44 = (((*(v11 + 72) >> 16) & 0xFFFF0000 | (*(v11 + 72) << 32) | (2 * ((*(v11 + 72) & 0xFF000000000000) == 0))) + 4 * *(v11 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v11 + 88) >> 1) & 1;
        sub_F98EF8((a1 + 4), &v44, v45);
        if (v45[0])
        {
          v23 = *(v46 + 8);
          if (v12 != 0xFFFFFFFF)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v23 = -1;
          if (v12 != 0xFFFFFFFF)
          {
LABEL_29:
            result = v9;
            if (v23 == -1)
            {
              goto LABEL_5;
            }

            v24 = a1[293];
            if (v12 >= (a1[294] - v24) >> 2)
            {
              exception = __cxa_allocate_exception(0x40uLL);
              v41 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
            }

            v25 = *(v24 + 4 * v12);
            if (v25 != -1)
            {
              while (*(a1[296] + 176 * v25) != v23)
              {
                v25 = *(a1[299] + 4 * v25);
                if (v25 == -1)
                {
                  goto LABEL_34;
                }
              }

LABEL_56:
              result = v8;
              goto LABEL_5;
            }

LABEL_34:
            v26 = v9 + 1;
            v28 = v5[1];
            v27 = v5[2];
            if (v28 >= v27)
            {
              v31 = *v5;
              v32 = v28 - *v5;
              v36 = (v32 >> 4) + 1;
              if (v36 >> 60)
              {
                sub_1794();
              }

              v37 = v27 - v31;
              if (v37 >> 3 > v36)
              {
                v36 = v37 >> 3;
              }

              if (v37 >= 0x7FFFFFFFFFFFFFF0)
              {
                v38 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v36;
              }

              if (v38)
              {
                if (!(v38 >> 60))
                {
                  operator new();
                }

                sub_1808();
              }

              v39 = (16 * (v32 >> 4));
              *v39 = v9;
LABEL_68:
              v39[1] = v26;
              v30 = v39 + 2;
              memcpy(0, v31, v32);
              v5 = v43;
              *v43 = 0;
              v43[2] = 0;
              if (v31)
              {
                operator delete(v31);
              }

              v7 = v42;
              goto LABEL_4;
            }

            *v28 = v9;
            goto LABEL_46;
          }
        }
      }

      if (v23 == -1)
      {
        goto LABEL_43;
      }

LABEL_44:
      v26 = v9 + 1;
      v28 = v5[1];
      v29 = v5[2];
      if (v28 >= v29)
      {
        v31 = *v5;
        v32 = v28 - *v5;
        v33 = (v32 >> 4) + 1;
        if (v33 >> 60)
        {
          sub_1794();
        }

        v34 = v29 - v31;
        if (v34 >> 3 > v33)
        {
          v33 = v34 >> 3;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF0)
        {
          v35 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v33;
        }

        if (v35)
        {
          if (!(v35 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v39 = (16 * (v32 >> 4));
        *v39 = v8;
        goto LABEL_68;
      }

      *v28 = v8;
LABEL_46:
      v28[1] = v26;
      v30 = v28 + 2;
LABEL_4:
      v5[1] = v30;
      result = v8;
LABEL_5:
      ++v9;
      v8 = result;
    }

    while (v9 != v7);
  }

  return result;
}

void sub_10E28A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = *a11;
  if (*a11)
  {
    *(a11 + 8) = v11;
    v12 = a1;
    operator delete(v11);
    a1 = v12;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10E2918@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(result + 2344);
  if (v3 >= (*(result + 2352) - v4) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v5 = *(v4 + 4 * v3);
  *a3 = result + 2368;
  *(a3 + 8) = result + 2392;
  *(a3 + 16) = v5;
  *(a3 + 24) = result + 2368;
  *(a3 + 32) = result + 2392;
  *(a3 + 40) = -1;
  return result;
}

uint64_t sub_10E2994(void *a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 >= ((a1[294] - a1[293]) >> 2))
  {
    return 0;
  }

  else
  {
    return *(a1[302] + 4 * v2);
  }
}

uint64_t sub_10E29C4(void *a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 >= ((a1[294] - a1[293]) >> 2))
  {
    return 0;
  }

  else
  {
    return *sub_10E2A0C(a1 + 281, v2);
  }
}

uint64_t sub_10E2A0C(void *a1, unsigned int a2)
{
  v2 = a1[13] - a1[12];
  if (a2 >= (v2 >> 2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v3 = v2 >> 2;
  v4 = a1[24];
  if ((a1[25] - v4) >> 2 < v3)
  {
    v8 = __cxa_allocate_exception(0x40uLL);
    v9 = sub_2D390(v8, "no or incomplete vertex data stored", 0x23uLL);
  }

  return v4 + 4 * a2;
}

BOOL sub_10E2AB8(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[293];
  if (v2 >= (a1[294] - v3) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v4 = *(v3 + 4 * v2);
  if (v4 == -1)
  {
    return 0;
  }

  while (1)
  {
    v5 = a1[296] + 176 * v4;
    v7 = *(v5 + 152);
    v6 = *(v5 + 160);
    v8 = v7 == v6;
    v9 = v7 != v6;
    if (!v8)
    {
      break;
    }

    v4 = *(a1[299] + 4 * v4);
    if (v4 == -1)
    {
      return 0;
    }
  }

  return v9;
}

uint64_t sub_10E2B7C(uint64_t a1, unsigned int *a2)
{
  v2 = 0;
  v3 = *a2;
  v4 = 265 * ((~v3 + (v3 << 21)) ^ ((~v3 + (v3 << 21)) >> 24));
  v5 = 2147483649u * ((21 * (v4 ^ (v4 >> 14))) ^ ((21 * (v4 ^ (v4 >> 14))) >> 28));
  v6 = a1 + 48 * (((BYTE1(v5) ^ BYTE2(v5)) ^ BYTE3(v5)) & 0xF);
  v7 = v6 + 824;
  v8 = v5 >> 7;
  v9 = *(v6 + 848);
  v10 = *(v6 + 824);
  v11 = 0x101010101010101 * (v5 & 0x7F);
  result = 0xFFFFLL;
  while (1)
  {
    v13 = v8 & v9;
    v14 = *(v10 + v13);
    v15 = ((v14 ^ v11) - 0x101010101010101) & ~(v14 ^ v11) & 0x8080808080808080;
    if (v15)
    {
      break;
    }

LABEL_5:
    if ((v14 & (~v14 << 6) & 0x8080808080808080) != 0)
    {
      return result;
    }

    v2 += 8;
    v8 = v2 + v13;
  }

  while (1)
  {
    v16 = (v13 + (__clz(__rbit64(v15)) >> 3)) & v9;
    v17 = *(v7 + 8) + 24 * v16;
    if (*v17 == v3)
    {
      break;
    }

    v15 &= v15 - 1;
    if (!v15)
    {
      goto LABEL_5;
    }
  }

  if (v9 == v16)
  {
    return 0xFFFFLL;
  }

  else
  {
    return *(v17 + 8);
  }
}

BOOL sub_10E2C94(void *a1, unint64_t *a2, int a3, int a4)
{
  sub_F98EF8((a1 + 4), a2, v17);
  if (v17[0] && *(v17[3] + 8) != -1)
  {
    return 1;
  }

  if (!a3 || (v9 = a1[217], v10 = a1[218], v9 == v10))
  {
LABEL_8:
    if (!a4)
    {
      return 0;
    }

    v11 = a1[220];
    v12 = a1[221];
    if (v11 == v12)
    {
      return 0;
    }

    else
    {
      v13 = *a2;
      v14 = v11 + 200;
      do
      {
        v15 = *(v14 - 192);
        result = v15 == v13;
        v16 = v15 == v13 || v14 == v12;
        v14 += 200;
      }

      while (!v16);
    }
  }

  else
  {
    while (*(v9 + 104) != *a2)
    {
      v9 += 200;
      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  return result;
}

BOOL sub_10E2DA0(uint64_t a1, unint64_t *a2)
{
  v5 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32) | (2 * ((*a2 & 0xFF000000000000) == 0));
  sub_F98EF8(a1 + 32, &v5, v6);
  return v6[0] || sub_100A97C(a1 + 1592, a2) != -1;
}

unint64_t sub_10E2E50(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
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

  return *a1 + 8 * a2;
}

void sub_10E2F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

unint64_t sub_10E3064(unint64_t result)
{
  if (result >= 0x10000)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(&v8, " failed", &v7);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_10E3124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t sub_10E31A4(void *a1, unint64_t *a2)
{
  v3 = *a1;
  sub_40D8D4(*a1 + 32, a2, v26);
  if (v26[0])
  {
    return *(v26[3] + 2);
  }

  v4 = (v3[294] - v3[293]) >> 2;
  sub_F98CE4(v3 + 281, v4);
  sub_40D9F8((v3 + 4), a2, &v27);
  v6 = v28;
  v7 = *(v27 + 8);
  if (v29 == 1)
  {
    *(v7 + 16 * v28) = *a2;
  }

  *(v7 + 16 * v6 + 8) = v4;
  v8 = v3[101];
  v9 = v3[102];
  if (v8 >= v9)
  {
    v11 = v3[100];
    v12 = v8 - v11;
    v13 = (v8 - v11) >> 3;
    v14 = v13 + 1;
    if ((v13 + 1) >> 61)
    {
      sub_1794();
    }

    v15 = v9 - v11;
    if (v15 >> 2 > v14)
    {
      v14 = v15 >> 2;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v16 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (!(v16 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v17 = (v8 - v11) >> 3;
    v18 = (8 * v13);
    v19 = (8 * v13 - 8 * v17);
    *v18 = *a2;
    v10 = v18 + 1;
    memcpy(v19, v11, v12);
    v3[100] = v19;
    v3[101] = v10;
    v3[102] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v8 = *a2;
    v10 = v8 + 1;
  }

  v3[101] = v10;
  v20 = *a2;
  if ((*a2 & 0xFFFC) != 0)
  {
    v21 = v20 >> 1;
    v22 = v20 >> 16;
    v23 = HIDWORD(v20);
    LODWORD(v25) = v23;
    WORD2(v25) = v22;
    BYTE6(v25) = ((v23 & 0xFFFE0000FFFFFFFFLL | (v22 << 32) & 0xFFFEFFFFFFFFFFFFLL | ((v21 & 1) << 48)) ^ 0x1000000000000) >> 48;
    sub_100A578((v3 + 199), 1);
    if (sub_100A97C((v3 + 199), &v25) == -1)
    {
      sub_100AA78((v3 + 199), &v25, v24, &v27);
    }
  }

  return v4;
}

void sub_10E33A4(void *a1, unint64_t a2, unint64_t a3, int a4, int a5)
{
  if (a5)
  {
    sub_10E4BA8(a1, a2, a3);
    if (a2 > (a1[11] - a1[9]) >> 2)
    {
      if (!(a2 >> 62))
      {
        operator new();
      }

      goto LABEL_13;
    }
  }

  sub_10E4BA8(a1 + 12, a2, a3);
  if (a2 > (a1[23] - a1[21]) >> 2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

LABEL_13:
    sub_1794();
  }

  if (a4 && a2 > (a1[26] - a1[24]) >> 2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_10E3598(uint64_t *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  if (*a3 > a2)
  {
    a2 = *a3;
  }

  sub_F98CE4(a1, a2);
  v8 = *(a3 + 80);
  v15[4] = *(a3 + 64);
  v15[5] = v8;
  v15[6] = *(a3 + 96);
  v9 = *(a3 + 16);
  v15[0] = *a3;
  v15[1] = v9;
  v10 = *(a3 + 48);
  v15[2] = *(a3 + 32);
  v15[3] = v10;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v12 = *(a3 + 112);
  v11 = *(a3 + 120);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v19 = *(a3 + 136);
  v21 = 0;
  v22 = 0;
  __p = 0;
  v14 = *(a3 + 152);
  v13 = *(a3 + 160);
  if (v13 != v14)
  {
    if (((v13 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_10E5610(a1 + 12, v5, v15, a4);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  ++*(a1[21] + 4 * v5);
}

void sub_10E375C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10E3774(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_10E37B8(void *a1)
{
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  v3 = a1[21];
  if (v3)
  {
    a1[22] = v3;
    operator delete(v3);
  }

  sub_FE8A74((a1 + 12));
  v4 = a1[9];
  if (v4)
  {
    a1[10] = v4;
    operator delete(v4);
  }

  return sub_FE8A74(a1);
}

uint64_t sub_10E3824(uint64_t a1, unsigned int *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = 0x8F5C28F5C28F5C29 * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v6 > 0x147AE147AE147AELL)
  {
    sub_1794();
  }

  if (0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3) > v6)
  {
    v6 = 0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((*(a1 + 16) - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v8 = 0x147AE147AE147AELL;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    sub_1808();
  }

  sub_1106228(8 * ((*(a1 + 8) - *a1) >> 3), *a2, a3, a4, a5, a6);
  v10 = v9 + 200;
  v11 = *a1;
  v12 = *(a1 + 8) - *a1;
  v13 = v9 - v12;
  memcpy((v9 - v12), *a1, v12);
  *a1 = v13;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_10E3980(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10E3998(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v49[0] = sub_F6C7D0(a2);
  v7 = sub_F69058(a2);
  v46 = sub_F6C788(a3);
  v8 = sub_73F1C(a3);
  sub_1106228(&v47, -1, v49, v7, &v46, v8);
  if (v6[253] == v6[252] || (v9 = sub_10E3D60(v6 + 223, &v47), v10 = v6[280], v9 == -1) || (v11 = (v10 + 200 * v9), v11 == (v10 + 200 * v6[254])))
  {
    v47 = (v6[294] - v6[293]) >> 2;
    v12 = v6[101];
    v13 = v6[102];
    if (v12 >= v13)
    {
      v23 = v6[100];
      v24 = v12 - v23;
      v25 = (v12 - v23) >> 3;
      v26 = v25 + 1;
      if ((v25 + 1) >> 61)
      {
        sub_1794();
      }

      v27 = v13 - v23;
      if (v27 >> 2 > v26)
      {
        v26 = v27 >> 2;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFF8)
      {
        v28 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        if (!(v28 >> 61))
        {
          operator new();
        }

        goto LABEL_49;
      }

      v31 = (v12 - v23) >> 3;
      v32 = (8 * v25);
      v33 = (8 * v25 - 8 * v31);
      *v32 = v48;
      v14 = v32 + 1;
      memcpy(v33, v23, v24);
      v6[100] = v33;
      v6[101] = v14;
      v6[102] = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v12 = v48;
      v14 = v12 + 8;
    }

    v6[101] = v14;
    v34 = a1[1];
    v36 = *(v34 + 8);
    v35 = *(v34 + 16);
    if (v36 < v35)
    {
      v37 = v47;
      *v36 = v47;
      v38 = (v36 + 1);
LABEL_45:
      *(v34 + 8) = v38;
      sub_F98CE4(v6 + 281, v37);
      sub_10E3E54((v6 + 223), 1);
      if (sub_10E3D60(v6 + 223, &v47) == -1)
      {
        sub_10E4514(v6 + 223, &v47, v45, v49);
      }

      return;
    }

    v39 = *v34;
    v40 = v36 - *v34;
    v41 = v40 >> 2;
    v42 = (v40 >> 2) + 1;
    if (!(v42 >> 62))
    {
      v43 = v35 - v39;
      if (v43 >> 1 > v42)
      {
        v42 = v43 >> 1;
      }

      if (v43 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v44 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v42;
      }

      if (!v44)
      {
        v37 = v47;
        *(4 * v41) = v47;
        v38 = 4 * v41 + 4;
        memcpy(0, v39, v40);
        *v34 = 0;
        *(v34 + 8) = v38;
        *(v34 + 16) = 0;
        if (v39)
        {
          operator delete(v39);
          v37 = v47;
        }

        goto LABEL_45;
      }

      if (!(v44 >> 62))
      {
        operator new();
      }

LABEL_49:
      sub_1808();
    }

LABEL_48:
    sub_1794();
  }

  v15 = a1[1];
  v17 = *(v15 + 8);
  v16 = *(v15 + 16);
  if (v17 < v16)
  {
    *v17 = *v11;
    *(v15 + 8) = v17 + 1;
    return;
  }

  v18 = *v15;
  v19 = v17 - *v15;
  v20 = (v19 >> 2) + 1;
  if (v20 >> 62)
  {
    goto LABEL_48;
  }

  v21 = v16 - v18;
  if (v21 >> 1 > v20)
  {
    v20 = v21 >> 1;
  }

  if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v22 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v22 = v20;
  }

  if (v22)
  {
    if (!(v22 >> 62))
    {
      operator new();
    }

    goto LABEL_49;
  }

  v29 = (4 * (v19 >> 2));
  *v29 = *v11;
  v30 = v29 + 1;
  memcpy(0, v18, v19);
  *v15 = 0;
  *(v15 + 8) = v30;
  *(v15 + 16) = 0;
  if (v18)
  {
    operator delete(v18);
  }

  *(v15 + 8) = v30;
}

unint64_t sub_10E3D60(void *a1, uint64_t a2)
{
  v4 = a1[31] - 1;
  v5 = sub_11062FC(a1, a2) & v4;
  if (!sub_1106280((a1 + 32), a1[57] + 200 * v5))
  {
    v6 = -1;
    v7 = 1;
    do
    {
      if (a1[29] && sub_1106280((a1 + 4), a1[57] + 200 * v5))
      {
        if (v6 == -1)
        {
          v6 = v5;
        }
      }

      else if (sub_1106280(a2, a1[57] + 200 * v5))
      {
        return v5;
      }

      v5 = (v5 + v7++) & v4;
    }

    while (!sub_1106280((a1 + 32), a1[57] + 200 * v5));
  }

  return -1;
}

uint64_t sub_10E3E54(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_10E427C(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 240);
  if (v5 >= ~a2)
  {
    goto LABEL_27;
  }

  v6 = *(a1 + 248);
  v7 = v5 + a2;
  if (v6 < 4 || v7 > *a1)
  {
    v8 = *(a1 + 16);
    v9 = vcvts_n_u32_f32(v8, 2uLL);
    v10 = 4;
    if (v7 >= v9)
    {
      while ((v10 & 0x8000000000000000) == 0)
      {
        v10 *= 2;
        if (v7 < (v8 * v10))
        {
          goto LABEL_10;
        }
      }

LABEL_27:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "resize overflow");
    }

LABEL_10:
    if (v10 > v6)
    {
      v11 = *(a1 + 232);
      v12 = v5 - v11 + a2;
      v13 = 4;
      if (v6 > 4)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (v12 >= (v8 * v13))
      {
LABEL_13:
        while ((v13 & 0x8000000000000000) == 0)
        {
          v13 *= 2;
          if (v13 >= v6)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_27;
      }

      v14 = v7 - (v11 >> 2);
      v15 = 4;
      if (v14 >= v9)
      {
        while ((v15 & 0x8000000000000000) == 0)
        {
          v15 *= 2;
          if (v14 < (v8 * v15))
          {
            goto LABEL_19;
          }
        }

        goto LABEL_27;
      }

LABEL_19:
      if (v13 <= 0x7FFFFFFFFFFFFFFELL && v13 < v15 && v12 >= (*(a1 + 20) * (2 * v13)))
      {
        v13 *= 2;
      }

      sub_FE8380(&v50, a1, v13);
      v93 = *(a1 + 224);
      v16 = v66;
      *(a1 + 224) = v64;
      v18 = *a1;
      v17 = *(a1 + 16);
      v19 = v51;
      *a1 = v50;
      *(a1 + 16) = v19;
      v50 = v18;
      v51 = v17;
      v20 = *(a1 + 208);
      v91 = *(a1 + 192);
      v92 = v20;
      v21 = *(a1 + 144);
      v87 = *(a1 + 128);
      v88 = v21;
      v22 = *(a1 + 176);
      v89 = *(a1 + 160);
      v90 = v22;
      v23 = *(a1 + 80);
      v83 = *(a1 + 64);
      v84 = v23;
      v24 = *(a1 + 112);
      v85 = *(a1 + 96);
      v86 = v24;
      v25 = *(a1 + 48);
      v81 = *(a1 + 32);
      v82 = v25;
      v26 = v63;
      *(a1 + 192) = v62;
      *(a1 + 208) = v26;
      v27 = v59;
      *(a1 + 128) = v58;
      *(a1 + 144) = v27;
      v28 = v61;
      *(a1 + 160) = v60;
      *(a1 + 176) = v28;
      v29 = v55;
      *(a1 + 64) = v54;
      *(a1 + 80) = v29;
      v30 = v57;
      *(a1 + 96) = v56;
      *(a1 + 112) = v30;
      v31 = v53;
      *(a1 + 32) = v52;
      *(a1 + 48) = v31;
      v62 = v91;
      v63 = v92;
      v32 = v65;
      v65 = *(a1 + 232);
      v33 = *(a1 + 248);
      *(a1 + 248) = v16;
      v34 = v93;
      v58 = v87;
      v59 = v88;
      v60 = v89;
      v61 = v90;
      v54 = v83;
      v55 = v84;
      v56 = v85;
      v57 = v86;
      v52 = v81;
      v53 = v82;
      *(a1 + 232) = v32;
      v64 = v34;
      v66 = v33;
      sub_11061C0(&v81);
      v35 = *(a1 + 432);
      v91 = *(a1 + 416);
      v92 = v35;
      v36 = *(a1 + 456);
      v93 = *(a1 + 448);
      v37 = *(a1 + 368);
      v87 = *(a1 + 352);
      v88 = v37;
      v38 = *(a1 + 400);
      v89 = *(a1 + 384);
      v90 = v38;
      v39 = *(a1 + 304);
      v83 = *(a1 + 288);
      v84 = v39;
      v40 = *(a1 + 336);
      v85 = *(a1 + 320);
      v86 = v40;
      v41 = *(a1 + 272);
      v81 = *(a1 + 256);
      v82 = v41;
      v42 = v78;
      *(a1 + 416) = v77;
      *(a1 + 432) = v42;
      v43 = v74;
      *(a1 + 352) = v73;
      *(a1 + 368) = v43;
      v44 = v76;
      *(a1 + 384) = v75;
      *(a1 + 400) = v44;
      v45 = v70;
      *(a1 + 288) = v69;
      *(a1 + 304) = v45;
      v46 = v72;
      *(a1 + 320) = v71;
      *(a1 + 336) = v46;
      v47 = v68;
      *(a1 + 256) = v67;
      *(a1 + 272) = v47;
      v77 = v91;
      v78 = v92;
      v48 = v80;
      *(a1 + 448) = v79;
      *(a1 + 456) = v48;
      v73 = v87;
      v74 = v88;
      v75 = v89;
      v76 = v90;
      v69 = v83;
      v70 = v84;
      v71 = v85;
      v72 = v86;
      v67 = v81;
      v68 = v82;
      v79 = v93;
      v80 = v36;
      *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), *(a1 + 248))));
      *(a1 + 24) = 0;
      v50 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v51, v66)));
      BYTE8(v51) = 0;
      if (v36)
      {
        free(v36);
      }

      return 1;
    }
  }

  return result;
}

void sub_10E4214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    free(a65);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10E427C(uint64_t a1)
{
  v2 = *(a1 + 240) - *(a1 + 232);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 248), v5 < 0x21))
  {
    result = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    v6 = v2;
    do
    {
      v7 = v5;
      v5 >>= 1;
    }

    while (v7 >= 0x42 && (*(a1 + 20) * v5) > v6);
    sub_FE8380(&v42, a1, v5);
    v85 = *(a1 + 224);
    v8 = v58;
    *(a1 + 224) = v56;
    v10 = *a1;
    v9 = *(a1 + 16);
    v11 = v43;
    *a1 = v42;
    *(a1 + 16) = v11;
    v42 = v10;
    v43 = v9;
    v12 = *(a1 + 208);
    v83 = *(a1 + 192);
    v84 = v12;
    v13 = *(a1 + 144);
    v79 = *(a1 + 128);
    v80 = v13;
    v14 = *(a1 + 176);
    v81 = *(a1 + 160);
    v82 = v14;
    v15 = *(a1 + 80);
    v75 = *(a1 + 64);
    v76 = v15;
    v16 = *(a1 + 112);
    v77 = *(a1 + 96);
    v78 = v16;
    v17 = *(a1 + 48);
    v73 = *(a1 + 32);
    v74 = v17;
    v18 = v55;
    *(a1 + 192) = v54;
    *(a1 + 208) = v18;
    v19 = v51;
    *(a1 + 128) = v50;
    *(a1 + 144) = v19;
    v20 = v53;
    *(a1 + 160) = v52;
    *(a1 + 176) = v20;
    v21 = v47;
    *(a1 + 64) = v46;
    *(a1 + 80) = v21;
    v22 = v49;
    *(a1 + 96) = v48;
    *(a1 + 112) = v22;
    v23 = v45;
    *(a1 + 32) = v44;
    *(a1 + 48) = v23;
    v54 = v83;
    v55 = v84;
    v24 = v57;
    v57 = *(a1 + 232);
    v25 = *(a1 + 248);
    *(a1 + 248) = v8;
    v26 = v85;
    v50 = v79;
    v51 = v80;
    v52 = v81;
    v53 = v82;
    v46 = v75;
    v47 = v76;
    v48 = v77;
    v49 = v78;
    v44 = v73;
    v45 = v74;
    *(a1 + 232) = v24;
    v56 = v26;
    v58 = v25;
    sub_11061C0(&v73);
    v27 = *(a1 + 432);
    v83 = *(a1 + 416);
    v84 = v27;
    v28 = *(a1 + 456);
    v85 = *(a1 + 448);
    v29 = *(a1 + 368);
    v79 = *(a1 + 352);
    v80 = v29;
    v30 = *(a1 + 400);
    v81 = *(a1 + 384);
    v82 = v30;
    v31 = *(a1 + 304);
    v75 = *(a1 + 288);
    v76 = v31;
    v32 = *(a1 + 336);
    v77 = *(a1 + 320);
    v78 = v32;
    v33 = *(a1 + 272);
    v73 = *(a1 + 256);
    v74 = v33;
    v34 = v70;
    *(a1 + 416) = v69;
    *(a1 + 432) = v34;
    v35 = v66;
    *(a1 + 352) = v65;
    *(a1 + 368) = v35;
    v36 = v68;
    *(a1 + 384) = v67;
    *(a1 + 400) = v36;
    v37 = v62;
    *(a1 + 288) = v61;
    *(a1 + 304) = v37;
    v38 = v64;
    *(a1 + 320) = v63;
    *(a1 + 336) = v38;
    v39 = v60;
    *(a1 + 256) = v59;
    *(a1 + 272) = v39;
    v69 = v83;
    v70 = v84;
    v40 = v72;
    *(a1 + 448) = v71;
    *(a1 + 456) = v40;
    v65 = v79;
    v66 = v80;
    v67 = v81;
    v68 = v82;
    v61 = v75;
    v62 = v76;
    v63 = v77;
    v64 = v78;
    v59 = v73;
    v60 = v74;
    v71 = v85;
    v72 = v28;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), *(a1 + 248))));
    *(a1 + 24) = 0;
    v42 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v43, v58)));
    BYTE8(v43) = 0;
    if (v28)
    {
      free(v28);
    }

    result = 1;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_10E44FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    free(a65);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10E4514@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a1[29];
  v5 = a1[30];
  if ((v5 - v6) >= 0x147AE147AE147AELL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "insert overflow");
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  if (!sub_1106280((a1 + 4), a1[57] + 200 * a3))
  {
    v5 = a1[30];
LABEL_7:
    a1[30] = v5 + 1;
    goto LABEL_10;
  }

  if (a1[29])
  {
    sub_1106280((a1 + 4), a1[57] + 200 * a3);
    v10 = a1[29] - 1;
  }

  else
  {
    v10 = -1;
  }

  a1[29] = v10;
LABEL_10:
  v11 = a1[57] + 200 * a3;
  *v11 = *a2;
  v12 = *(a2 + 16);
  v13 = *(a2 + 32);
  v14 = *(a2 + 64);
  *(v11 + 48) = *(a2 + 48);
  *(v11 + 64) = v14;
  *(v11 + 16) = v12;
  *(v11 + 32) = v13;
  v15 = *(a2 + 80);
  v16 = *(a2 + 96);
  v17 = *(a2 + 128);
  *(v11 + 112) = *(a2 + 112);
  *(v11 + 128) = v17;
  *(v11 + 80) = v15;
  *(v11 + 96) = v16;
  result = *(a2 + 144);
  v19 = *(a2 + 160);
  v20 = *(a2 + 176);
  *(v11 + 192) = *(a2 + 192);
  *(v11 + 160) = v19;
  *(v11 + 176) = v20;
  *(v11 + 144) = result;
  v21 = a1[57];
  v22 = v21 + 200 * a3;
  v23 = v21 + 200 * a1[31];
  *a4 = a1;
  a4[1] = v22;
  a4[2] = v23;
  return result;
}

unint64_t sub_10E4678@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = 265 * ((~v4 + (v4 << 21)) ^ ((~v4 + (v4 << 21)) >> 24));
  v6 = 2147483649u * ((21 * (v5 ^ (v5 >> 14))) ^ ((21 * (v5 ^ (v5 >> 14))) >> 28));
  v7 = (a1 + 48 * (((BYTE1(v6) ^ BYTE2(v6)) ^ BYTE3(v6)) & 0xF));
  v8 = v6 >> 7;
  v9 = v7[3];
  while (1)
  {
    v10 = v8 & v9;
    v11 = *(*v7 + v10);
    v12 = ((v11 ^ (0x101010101010101 * (v6 & 0x7F))) - 0x101010101010101) & ~(v11 ^ (0x101010101010101 * (v6 & 0x7F))) & 0x8080808080808080;
    if (v12)
    {
      break;
    }

LABEL_5:
    if ((v11 & (~v11 << 6) & 0x8080808080808080) != 0)
    {
      result = sub_10E4798(v7, v6);
      *a3 = v7;
      *(a3 + 8) = result;
      *(a3 + 16) = 1;
      return result;
    }

    v3 += 8;
    v8 = v3 + v10;
  }

  while (1)
  {
    result = (v10 + (__clz(__rbit64(v12)) >> 3)) & v9;
    if (*(v7[1] + 24 * result) == v4)
    {
      break;
    }

    v12 &= v12 - 1;
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  *a3 = v7;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

unint64_t sub_10E4798(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_10E4890(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

void sub_10E4890(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    v2 = (&dword_0 + 1);
LABEL_4:
    sub_FE7DBC(a1, v2);
  }

  if (*(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    v2 = ((2 * v1) | 1);
    goto LABEL_4;
  }

  sub_10E48C0(a1);
}

uint64_t sub_10E48C0(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_28;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_28:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = *(*(result + 8) + 24 * i);
        v19 = 265 * ((~v18 + (v18 << 21)) ^ ((~v18 + (v18 << 21)) >> 24));
        v20 = 2147483649u * ((21 * (v19 ^ (v19 >> 14))) ^ ((21 * (v19 ^ (v19 >> 14))) >> 28));
        v21 = v13 & (v20 >> 7);
        v22 = *(v17->i64 + v21) & (~*(v17->i64 + v21) << 7) & 0x8080808080808080;
        if (v22)
        {
          v15 = v13 & (v20 >> 7);
        }

        else
        {
          v23 = 8;
          v15 = v13 & (v20 >> 7);
          do
          {
            v15 = (v15 + v23) & v13;
            v23 += 8;
            v22 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v22);
        }

        v16 = (v15 + (__clz(__rbit64(v22)) >> 3)) & v13;
        if ((((v16 - v21) ^ (i - v21)) & v13) > 7)
        {
          v24 = v17->u8[v16];
          v17->i8[v16] = v20 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v20 & 0x7F;
          v25 = *(result + 8);
          if (v24 == 128)
          {
            v26 = v25 + 24 * v16;
            v27 = (v25 + 24 * i);
            v28 = *v27;
            *(v26 + 16) = *(v27 + 2);
            *v26 = v28;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v29 = (v25 + 24 * i);
            v30 = *v29;
            v31 = *(v29 + 2);
            v32 = 24 * v16;
            v33 = (v25 + 24 * v16);
            v34 = *(v33 + 2);
            *v29 = *v33;
            *(v29 + 2) = v34;
            v35 = *(result + 8) + v32;
            *v35 = v30;
            *(v35 + 16) = v31;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v20 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v20 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v36 = i - (i >> 3);
    v37 = i == 7;
    v38 = 6;
    if (!v37)
    {
      v38 = v36;
    }
  }

  else
  {
    v38 = 0;
  }

  *(result + 40) = v38 - *(result + 16);
  return result;
}

void sub_10E4BA8(void *a1, unint64_t a2, unint64_t a3)
{
  if (a2 > (a1[1] - *a1) >> 2 && a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    goto LABEL_10;
  }

  if (0x2E8BA2E8BA2E8BA3 * ((a1[4] - a1[3]) >> 4) < a3)
  {
    sub_10E4D20(a1 + 3, a3);
    if (a3 > (a1[8] - a1[6]) >> 2)
    {
      if (!(a3 >> 62))
      {
        operator new();
      }

LABEL_10:
      sub_1794();
    }
  }
}

void sub_10E4D20(void *a1, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x1745D1745D1745ELL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_10E4E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10E4F74(va);
  _Unwind_Resume(a1);
}

void sub_10E4E3C(void *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      v10 = *(v7 + 2);
      *(v8 + 16) = *(v7 + 1);
      *(v8 + 32) = v10;
      *v8 = v9;
      v11 = *(v7 + 3);
      v12 = *(v7 + 4);
      v13 = *(v7 + 6);
      *(v8 + 80) = *(v7 + 5);
      *(v8 + 96) = v13;
      *(v8 + 48) = v11;
      *(v8 + 64) = v12;
      *(v8 + 120) = 0;
      *(v8 + 128) = 0;
      *(v8 + 112) = 0;
      *(v8 + 112) = *(v7 + 7);
      *(v8 + 128) = v7[16];
      v7[15] = 0;
      v7[16] = 0;
      v7[14] = 0;
      *(v8 + 136) = *(v7 + 17);
      *(v8 + 160) = 0;
      *(v8 + 168) = 0;
      *(v8 + 152) = 0;
      *(v8 + 152) = *(v7 + 19);
      *(v8 + 168) = v7[21];
      v7[19] = 0;
      v7[20] = 0;
      v7[21] = 0;
      v7 += 22;
      v8 += 176;
    }

    while (v7 != v4);
    do
    {
      v14 = v5[19];
      if (v14)
      {
        v5[20] = v14;
        operator delete(v14);
      }

      v15 = v5[14];
      if (v15)
      {
        v5[15] = v15;
        operator delete(v15);
      }

      v5 += 22;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v16 = *a1;
  *a1 = v6;
  a1[1] = v16;
  a2[1] = v16;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
}

uint64_t sub_10E4F74(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 176;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 64);
    if (v5)
    {
      *(i - 56) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10E4FEC(uint64_t a1, unint64_t a2, const float *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 > (v4 - v5) >> 2)
  {
    v6 = v5 - *a1;
    v7 = v6 >> 2;
    v8 = (v6 >> 2) + a2;
    if (v8 >> 62)
    {
      sub_1794();
    }

    v9 = v4 - *a1;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    v19 = 4 * v7;
    v20 = 4 * v7 + 4 * a2;
    v21 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v21 < 0x13)
    {
      v11 = v19;
    }

    else if (v19 >= (a3 + 1) || (v11 = v19, v6 + 4 * a2 <= a3))
    {
      v22 = v21 + 1;
      v11 = (v19 + 4 * (v22 & 0x7FFFFFFFFFFFFFF8));
      v23 = vld1q_dup_f32(a3);
      v24 = (v19 + 16);
      v25 = v22 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v24[-1] = v23;
        *v24 = v23;
        v24 += 2;
        v25 -= 8;
      }

      while (v25);
      if (v22 == (v22 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_29:
        v26 = *a1;
        v27 = *(a1 + 8) - *a1;
        v28 = v19 - v27;
        memcpy((v19 - v27), *a1, v27);
        *a1 = v28;
        *(a1 + 8) = v20;
        *(a1 + 16) = 0;
        if (v26)
        {

          operator delete(v26);
        }

        return;
      }
    }

    do
    {
      *v11++ = *a3;
    }

    while (v11 != v20);
    goto LABEL_29;
  }

  if (a2)
  {
    v12 = &v5[a2];
    v13 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v13 < 0xF || v5 < a3 + 1 && v12 > a3)
    {
      goto LABEL_38;
    }

    v14 = v13 + 1;
    v15 = &v5[v14 & 0x7FFFFFFFFFFFFFF8];
    v16 = vld1q_dup_f32(a3);
    v17 = (v5 + 4);
    v18 = v14 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v17[-1] = v16;
      *v17 = v16;
      v17 += 2;
      v18 -= 8;
    }

    while (v18);
    v5 = v15;
    if (v14 != (v14 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_38:
      do
      {
        *v5++ = *a3;
      }

      while (v5 != v12);
    }

    v5 = v12;
  }

  *(a1 + 8) = v5;
}

void sub_10E5208(uint64_t *a1@<X0>, unsigned int a2@<W1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1[12];
  v6 = a1[13] - v5;
  if (a2 >= (v6 >> 2))
  {
    goto LABEL_7;
  }

  if (a2 >= (v6 >> 2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v25 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v7 = *(v5 + 4 * a2);
  if (v7 == -1)
  {
LABEL_7:

    sub_10E3598(a1, a2, a3, a4);
    return;
  }

  v8 = a1 + 15;
  v9 = a1 + 18;
  while (1)
  {
    v10 = a1[15] + 176 * v7;
    if (*v10 == *a3)
    {
      break;
    }

    v7 = *(*v9 + 4 * v7);
    if (v7 == -1)
    {
      goto LABEL_7;
    }
  }

  v11 = *v10;
  v12 = *(v10 + 32);
  v28 = *(v10 + 16);
  v29 = v12;
  v27 = v11;
  v13 = *(v10 + 48);
  v14 = *(v10 + 64);
  v15 = *(v10 + 96);
  v32 = *(v10 + 80);
  v33 = v15;
  v30 = v13;
  v31 = v14;
  __p[1] = 0;
  v35 = 0;
  __p[0] = 0;
  v17 = *(v10 + 112);
  v16 = *(v10 + 120);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v36 = *(v10 + 136);
  v38 = 0;
  v37 = 0uLL;
  v19 = *(v10 + 152);
  v18 = *(v10 + 160);
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v20 = *v8 + 176 * v7;
  *v20 = v27;
  if (*(v20 + 104) != -1 || DWORD2(v33) != -1)
  {
    if (DWORD2(v33) == -1)
    {
      *(v20 + 104) = -1;
      v22 = (v20 + 112);
      v21 = *(v20 + 112);
      if (!v21)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v26 = v20 + 8;
    (off_26754F8[DWORD2(v33)])(&v26);
  }

  v22 = (v20 + 112);
  v21 = *(v20 + 112);
  if (v21)
  {
LABEL_21:
    *(v20 + 120) = v21;
    operator delete(v21);
    *v22 = 0;
    v22[1] = 0;
    v22[2] = 0;
  }

LABEL_22:
  *(v20 + 112) = *__p;
  *(v20 + 128) = v35;
  __p[0] = 0;
  __p[1] = 0;
  v35 = 0;
  v23 = *(v20 + 152);
  *(v20 + 136) = v36;
  if (v23)
  {
    *(v20 + 160) = v23;
    operator delete(v23);
    *(v20 + 152) = 0;
    *(v20 + 160) = 0;
    *(v20 + 168) = 0;
    v23 = __p[0];
  }

  *(v20 + 152) = v37;
  *(v20 + 168) = v38;
  v37 = 0uLL;
  v38 = 0;
  if (v23)
  {
    __p[1] = v23;
    operator delete(v23);
  }

  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = v7;
}

void sub_10E5538(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10E5560(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(*a1 + 96))
  {
    *(v3 + 96) = -1;
    v4 = *(a3 + 16);
    *v3 = *a3;
    *(v3 + 16) = v4;
    result = *(a3 + 32);
    v6 = *(a3 + 48);
    v7 = *(a3 + 80);
    *(v3 + 64) = *(a3 + 64);
    *(v3 + 80) = v7;
    *(v3 + 32) = result;
    *(v3 + 48) = v6;
    *(v3 + 96) = 0;
  }

  else
  {
    v8 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v8;
    result = *(a3 + 32);
    v9 = *(a3 + 48);
    v10 = *(a3 + 64);
    *(a2 + 76) = *(a3 + 76);
    *(a2 + 48) = v9;
    *(a2 + 64) = v10;
    *(a2 + 32) = result;
  }

  return result;
}

__n128 sub_10E55B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(*a1 + 96) == 1)
  {
    *a2 = *a3;
    result = *(a3 + 8);
    v5 = *(a3 + 24);
    *(a2 + 40) = *(a3 + 40);
    *(a2 + 24) = v5;
    *(a2 + 8) = result;
  }

  else
  {
    *(v3 + 96) = -1;
    result = *a3;
    v6 = *(a3 + 32);
    *(v3 + 16) = *(a3 + 16);
    *(v3 + 32) = v6;
    *v3 = result;
    *(v3 + 96) = 1;
  }

  return result;
}

uint64_t sub_10E5610@<X0>(void *a1@<X0>, unsigned int a2@<W1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2;
  v8 = *a1;
  v9 = (a1[1] - *a1) >> 2;
  if (v9 <= a2)
  {
    v10 = a2 + 1;
    v31 = -1;
    if (v10 <= v9)
    {
      if (v10 < v9)
      {
        a1[1] = v8 + 4 * v10;
      }
    }

    else
    {
      sub_569AC(a1, v10 - v9, &v31);
      v8 = *a1;
    }
  }

  v11 = (a1 + 6);
  v13 = a1[7];
  v12 = a1[8];
  if (v13 >= v12)
  {
    v15 = *v11;
    v16 = v13 - *v11;
    v17 = v16 >> 2;
    v18 = (v16 >> 2) + 1;
    if (v18 >> 62)
    {
      sub_1794();
    }

    v19 = v12 - v15;
    if (v19 >> 1 > v18)
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
      if (!(v20 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    *(4 * v17) = *(v8 + 4 * v7);
    v14 = 4 * v17 + 4;
    memcpy(0, v15, v16);
    a1[6] = 0;
    a1[7] = v14;
    a1[8] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = *(v8 + 4 * v7);
    v14 = (v13 + 4);
  }

  v21 = a1[3];
  a1[7] = v14;
  v22 = a1[4];
  v23 = a1[5];
  *(v8 + 4 * v7) = -1171354717 * ((v22 - v21) >> 4);
  if (v22 >= v23)
  {
    result = sub_10E584C(a1 + 3, a3);
  }

  else
  {
    v24 = *a3;
    v25 = a3[2];
    *(v22 + 16) = a3[1];
    *(v22 + 32) = v25;
    *v22 = v24;
    v26 = a3[3];
    v27 = a3[4];
    v28 = a3[6];
    *(v22 + 80) = a3[5];
    *(v22 + 96) = v28;
    *(v22 + 48) = v26;
    *(v22 + 64) = v27;
    *(v22 + 120) = 0;
    *(v22 + 128) = 0;
    *(v22 + 112) = 0;
    *(v22 + 112) = a3[7];
    *(v22 + 128) = *(a3 + 16);
    *(a3 + 15) = 0;
    *(a3 + 16) = 0;
    *(a3 + 14) = 0;
    *(v22 + 136) = *(a3 + 136);
    *(v22 + 160) = 0;
    *(v22 + 168) = 0;
    *(v22 + 152) = 0;
    *(v22 + 152) = *(a3 + 152);
    *(v22 + 168) = *(a3 + 21);
    *(a3 + 19) = 0;
    *(a3 + 20) = 0;
    *(a3 + 21) = 0;
    result = v22 + 176;
  }

  a1[4] = result;
  v30 = -1171354717 * ((result - a1[3]) >> 4) - 1;
  *a4 = a1 + 3;
  *(a4 + 8) = v11;
  *(a4 + 16) = v30;
  return result;
}

uint64_t sub_10E584C(void *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
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

  v21 = a1;
  if (v5)
  {
    if (v5 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 176 * v2;
  __p = 0;
  v18 = v6;
  v7 = *(a2 + 80);
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 80) = v7;
  v8 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v8;
  v9 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v9;
  v10 = *(a2 + 112);
  *(v6 + 96) = *(a2 + 96);
  *(v6 + 112) = v10;
  *(v6 + 128) = *(a2 + 128);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(v6 + 136) = *(a2 + 136);
  *(v6 + 152) = *(a2 + 152);
  *(v6 + 168) = *(a2 + 168);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v19 = 176 * v2 + 176;
  v20 = 0;
  sub_10E4E3C(a1, &__p);
  v11 = a1[1];
  v12 = v18;
  while (1)
  {
    v13 = v19;
    if (v19 == v12)
    {
      break;
    }

    v19 -= 176;
    v14 = *(v13 - 24);
    if (v14)
    {
      *(v13 - 16) = v14;
      operator delete(v14);
    }

    v15 = *(v13 - 64);
    if (v15)
    {
      *(v13 - 56) = v15;
      operator delete(v15);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_10E59F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10E4F74(va);
  _Unwind_Resume(a1);
}

void sub_10E5A04()
{
  byte_27C256F = 3;
  LODWORD(qword_27C2558) = 5136193;
  byte_27C2587 = 3;
  LODWORD(qword_27C2570) = 5136194;
  byte_27C259F = 3;
  LODWORD(qword_27C2588) = 5136195;
  byte_27C25B7 = 15;
  strcpy(&qword_27C25A0, "vehicle_mass_kg");
  byte_27C25CF = 21;
  strcpy(&xmmword_27C25B8, "vehicle_cargo_mass_kg");
  byte_27C25E7 = 19;
  strcpy(&qword_27C25D0, "vehicle_aux_power_w");
  byte_27C25FF = 15;
  strcpy(&qword_27C25E8, "dcdc_efficiency");
  strcpy(&qword_27C2600, "drive_train_efficiency");
  HIBYTE(word_27C2616) = 22;
  operator new();
}

void sub_10E5BE0(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C2616) < 0)
  {
    sub_21E7DCC();
  }

  sub_21E7DD8();
  _Unwind_Resume(a1);
}

void sub_10E5C00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a3;
  *(a1 + 8) = a2;
  *(a1 + 16) = a4;
  *(a1 + 24) = a6;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v7 = sub_3AF6B4(a3);
  *(a1 + 112) = 0u;
  *(a1 + 104) = v7;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1065353216;
  *(a1 + 152) = -1;
  *(a1 + 160) = -1;
  sub_1321834((a1 + 168), 0, 0);
  operator new();
}

void sub_10E6744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_1321980(v32 + 56);
  sub_616CD4(v32);
  _Unwind_Resume(a1);
}

void sub_10E6864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10E8A2C((v19 + 344));
  sub_1321980(v18 + 56);
  sub_616CD4(v18);
  _Unwind_Resume(a1);
}

void sub_10E6898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_5C010(&a13);
  if (a26 < 0)
  {
    operator delete(__p);
    sub_1321980(v26 + 56);
    sub_616CD4(v26);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10E681CLL);
}

void *sub_10E68D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v26 = v15;
  v27 = v16;
  v18 = v17;
  v25 = v19;
  v20 = v8;
  sub_7E9A4(v46);
  if (*(v20 + 272) == 1)
  {
    sub_FF68E4(*(v20 + 24));
  }

  if (*(v20 + 328) == 1)
  {
    sub_13219BC(v20 + 168);
  }

  sub_1173BD8(&v38, *v20);
  sub_10104C4(v35, *v20);
  v34 = -NAN;
  sub_F6BEE8(v33);
  sub_10E6F6C(v20, v25, v26, v18, v27, v14, v12, v10, &v38, v35, &v34, v33);
  if (!*v18 && sub_F6A05C(v33))
  {
    sub_438678(&v28, *v20, v14);
    sub_7E9A4(v32);
    sub_F6D05C(v33, &v29);
    sub_43A664(&v28, &v29, &__p);
    v21 = __p;
    v22 = v31;
    v29 = v20;
    if (__p != v31)
    {
      do
      {
        sub_10E9420(&v29, v21);
        v21 += 4;
      }

      while (v21 != v22);
    }

    v23 = sub_7EA60(v32);
    sub_10E7940(v20, v33, &__p, v23);
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }
  }

  if (*(v20 + 276) == 1 && LODWORD(v34) != -1 && HIDWORD(v34) != 0x7FFFFFFF)
  {
    if (*(v20 + 273) == 1)
    {
      sub_FF68E4(*(v20 + 24));
    }

    operator new();
  }

  *(v20 + 40) = sub_7EA60(v46);
  sub_4547F0(v33);
  if (v37 == 1)
  {
    sub_3E3DF0(v36);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  return sub_3E3EF8(v39);
}

void sub_10E6E70(_Unwind_Exception *a1)
{
  v2 = STACK[0x2310];
  if (STACK[0x2310])
  {
    STACK[0x2318] = v2;
    operator delete(v2);
  }

  sub_4547F0(&STACK[0x2340]);
  if (LOBYTE(STACK[0x3A80]) == 1)
  {
    sub_3E3DF0(&STACK[0x25C0]);
  }

  sub_404134(&STACK[0x3AA0]);
  _Unwind_Resume(a1);
}

uint64_t sub_10E6F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int32x2_t *a10, double *a11, uint64_t a12)
{
  v12 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v14 = v13;
  v16 = v15;
  v57 = v17;
  v58 = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v12;
  sub_7E9A4(v63);
  *a11 = -NAN;
  sub_F687F4(a12);
  sub_103A224(v62, *(v25 + 24), 0);
  if (*(v25 + 282) == 1)
  {
    v61[0].n128_u32[0] = 0x7FFFFFFF;
    v26 = sub_103A228(v62, v24, v22, v20, v61, 0, -1, v14, 0xFFFFFFFF);
    v61[0].n128_u64[0] = sub_103DD3C(v62);
    v61[0].n128_u64[1] = v27;
    sub_32114((v25 + 152), v61);
    if (v26 == -1 || (v26 & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
    {
      *(v25 + 40) = sub_7EA60(v63);
      *a11 = -NAN;
      sub_F687F4(a12);
      return sub_100CD54(v62);
    }

    sub_103CD74(v62, v61);
    if (sub_F69D6C(v61) && (sub_3B8508() & 1) == 0)
    {
      *(v25 + 40) = sub_7EA60(v63);
      exception = __cxa_allocate_exception(0x40uLL);
      v54 = sub_2D390(exception, "Unpacking of path with valid cost failed", 0x28uLL);
    }

    sub_1173BDC(a9, v61, v57);
    if (*(v25 + 328) == 1)
    {
      sub_11D47CC(v61, v20, 0x7FFFFFFF, 0, 0, a10, v25 + 168);
    }

    v28 = sub_F93A38(v20);
    sub_10E7BC8(v25, v61, v28, a10, 1, 1, 0, v16);
    sub_4547F0(v61);
  }

  v56 = v14;
  v29 = *(v25 + 376);
  if (v29)
  {
    v30 = sub_103A228(v62, v24, v22, v20, v58, v57, -1, v56, 0xFFFFFFFF);
    v61[0].n128_u64[0] = sub_103DD3C(v62);
    v61[0].n128_u64[1] = v31;
    sub_32114((v25 + 152), v61);
    *(v25 + 48) += sub_1031BE8(v62);
    if (v30 == -1 || (v30 & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
    {
LABEL_80:
      *(v25 + 40) = sub_7EA60(v63);
      *a11 = -NAN;
      sub_F687F4(a12);
      return sub_100CD54(v62);
    }

    sub_103CD74(v62, v61);
    if (sub_F69D6C(v61))
    {
      if ((sub_3B8508() & 1) == 0)
      {
        sub_74700();
        nullsub_1();
      }

      sub_4547F0(v61);
    }

    else
    {
      sub_1173BDC(a9, v61, v57);
      if (*(v25 + 328) == 1)
      {
        sub_11D47CC(v61, v20, *v58, v57, 0, a10, v25 + 168);
      }

      if (*(v25 + 276) == 1)
      {
        *a11 = v30;
        sub_DF7DB8(a12, v61);
      }

      sub_10E23F8(*(v25 + 16), v61, &__p);
      if (*(v25 + 274) == 1 && __p == v60)
      {
        *(v25 + 40) = sub_7EA60(v63);
        *a11 = -NAN;
        sub_F687F4(a12);
        v34 = 1;
      }

      else
      {
        ++*(v25 + 52);
        if (*(v25 + 275) == 1 && ((v32 = sub_F93A38(v20), *(v25 + 281) != 1) ? (v33 = 0) : (v33 = *(v25 + 376) > 1u), !sub_10E7BC8(v25, v61, v32, a10, 1, *(v25 + 283), v33, v16)))
        {
          v34 = 2;
        }

        else
        {
          v34 = 0;
        }
      }

      if (__p)
      {
        v60 = __p;
        operator delete(__p);
      }

      sub_4547F0(v61);
      if (v34)
      {
LABEL_34:
        if (v34 != 2)
        {
          return sub_100CD54(v62);
        }

        goto LABEL_37;
      }
    }

    if (v29 != 1)
    {
      v55 = -v29;
      for (i = 2; v55 + i != 1; ++i)
      {
        v47 = sub_103A228(v62, v24, v22, v20, v58, v57, -1, v56, 0xFFFFFFFF);
        v61[0].n128_u64[0] = sub_103DD3C(v62);
        v61[0].n128_u64[1] = v48;
        sub_32114((v25 + 152), v61);
        *(v25 + 48) += sub_1031BE8(v62);
        if (v47 == -1 || (v47 & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
        {
          goto LABEL_80;
        }

        sub_103CD74(v62, v61);
        if (sub_F69D6C(v61))
        {
          if ((sub_3B8508() & 1) == 0)
          {
            sub_74700();
            nullsub_1();
          }

          sub_4547F0(v61);
          continue;
        }

        sub_1173BDC(a9, v61, v57);
        if (*(v25 + 328) == 1)
        {
          sub_11D47CC(v61, v20, *v58, v57, 0, a10, v25 + 168);
        }

        if (*(v25 + 276) == 1 && (*(v25 + 273) & 1) == 0)
        {
          *a11 = v47;
          sub_DF7DB8(a12, v61);
        }

        sub_10E23F8(*(v25 + 16), v61, &__p);
        if (*(v25 + 274) == 1 && __p == v60)
        {
          *(v25 + 40) = sub_7EA60(v63);
          *a11 = -NAN;
          sub_F687F4(a12);
          v34 = 1;
          v51 = __p;
          if (__p)
          {
            goto LABEL_73;
          }
        }

        else
        {
          ++*(v25 + 52);
          if (*(v25 + 275) != 1 || ((v49 = sub_F93A38(v20), *(v25 + 281) != 1) ? (v50 = 0) : (v50 = i < *(v25 + 376)), sub_10E7BC8(v25, v61, v49, a10, 1, *(v25 + 283), v50, v16)))
          {
            v34 = 0;
            v51 = __p;
            if (!__p)
            {
              goto LABEL_74;
            }

LABEL_73:
            v60 = v51;
            operator delete(v51);
            goto LABEL_74;
          }

          v34 = 2;
          v51 = __p;
          if (__p)
          {
            goto LABEL_73;
          }
        }

LABEL_74:
        sub_4547F0(v61);
        if (v34)
        {
          goto LABEL_34;
        }
      }
    }
  }

LABEL_37:
  if (*(v25 + 304))
  {
    sub_10E8C24(v25, &__p);
    v35 = __p;
    if (__p != v60)
    {
      sub_103C9C0(v62, v24, &__p, v20, *v58, v57, -1, 0x7FFFFFFF, v56, 0, 0xFFFFFFFF);
      v61[0].n128_u64[0] = sub_103DD3C(v62);
      v61[0].n128_u64[1] = v36;
      sub_32114((v25 + 152), v61);
      v37 = sub_10309DC(v62);
      v38 = *v37;
      v39 = *(v37 + 8);
      if (*v37 != v39)
      {
        do
        {
          sub_103CE4C(v62, *v38, v61);
          sub_1173BDC(a9, v61, v57);
          if (*(v25 + 328) == 1)
          {
            sub_11D47CC(v61, v20, *v58, v57, 0, a10, v25 + 168);
          }

          v40 = sub_F93A38(v20);
          sub_10E7BC8(v25, v61, v40, a10, 0, 0, 0, v16);
          sub_4547F0(v61);
          ++v38;
        }

        while (v38 != v39);
      }

      v35 = __p;
    }

    if (v35)
    {
      v41 = v60;
      v42 = v35;
      if (v60 != v35)
      {
        v43 = v60;
        do
        {
          v45 = *(v43 - 4);
          v43 -= 32;
          v44 = v45;
          if (v45)
          {
            *(v41 - 3) = v44;
            operator delete(v44);
          }

          v41 = v43;
        }

        while (v43 != v35);
        v42 = __p;
      }

      v60 = v35;
      operator delete(v42);
    }
  }

  return sub_100CD54(v62);
}

void sub_10E77A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__pa, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (__pa)
  {
    operator delete(__pa);
    sub_4547F0(va);
    sub_100CD54(&STACK[0x288]);
    _Unwind_Resume(a1);
  }

  sub_4547F0(va);
  sub_100CD54(&STACK[0x288]);
  _Unwind_Resume(a1);
}

void sub_10E791C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, char *);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  sub_4547F0(va1);
  sub_39393C(va);
  sub_100CD54(&STACK[0x288]);
  _Unwind_Resume(a1);
}

void sub_10E7940(uint64_t a1, void *a2, uint64_t **a3, double a4)
{
  if (sub_F6A05C(a2) && *(a1 + 344) != *(a1 + 352))
  {
    v8 = *(a1 + 368);
    if (v8)
    {
      if (v8 >= a4)
      {
        v9 = *(a1 + 104);
        v10 = sub_F69654(a2);
        sub_4E51E0(v9, *(v10 + 32) | (*(v10 + 36) << 32), v33);
        v11 = *(a1 + 104);
        v12 = sub_F6C814(a2);
        sub_4E51E0(v11, *(v12 + 32) | (*(v12 + 36) << 32), __p);
        v28 = a2;
        v29 = a3;
        v13 = *(a1 + 344);
        v14 = *(a1 + 352);
        if (v13 != v14)
        {
          if ((v34 & 0x80u) == 0)
          {
            v15 = v34;
          }

          else
          {
            v15 = v33[1];
          }

          if ((v34 & 0x80u) == 0)
          {
            v16 = v33;
          }

          else
          {
            v16 = v33[0];
          }

          if ((v32 & 0x80u) == 0)
          {
            v17 = v32;
          }

          else
          {
            v17 = __p[1];
          }

          if ((v32 & 0x80u) == 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          while (1)
          {
            v19 = *(v13 + 32);
            v20 = *(v13 + 24);
            if (v20 == v19)
            {
              break;
            }

            v21 = *(v13 + 24);
            while (1)
            {
              v22 = *(v21 + 23);
              v23 = v22;
              if ((v22 & 0x80u) != 0)
              {
                v22 = *(v21 + 8);
              }

              if (v22 == v15)
              {
                v24 = v23 >= 0 ? v21 : *v21;
                if (!memcmp(v24, v16, v15))
                {
                  break;
                }
              }

              v21 += 24;
              if (v21 == v19)
              {
                goto LABEL_18;
              }
            }

            if (v21 != v19)
            {
              while (1)
              {
                v25 = *(v20 + 23);
                v26 = v25;
                if ((v25 & 0x80u) != 0)
                {
                  v25 = *(v20 + 8);
                }

                if (v25 == v17)
                {
                  v27 = v26 >= 0 ? v20 : *v20;
                  if (!memcmp(v27, v18, v17))
                  {
                    break;
                  }
                }

                v20 += 24;
                if (v20 == v19)
                {
                  goto LABEL_18;
                }
              }

              if (v20 != v19)
              {
                break;
              }
            }

LABEL_18:
            v13 += 48;
            if (v13 == v14)
            {
              goto LABEL_42;
            }
          }
        }

        if (v13 != v14)
        {
          sub_7E9A4(v30);
          sub_1169E1C(*(a1 + 32), v28, v29, v13);
          *(a1 + 96) = (sub_7EA60(v30) + *(a1 + 96));
        }

LABEL_42:
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        if (v34 < 0)
        {
          operator delete(v33[0]);
        }
      }
    }
  }
}

void sub_10E7B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a21);
  _Unwind_Resume(exception_object);
}

uint64_t sub_10E7BC8(uint64_t a1, __int128 *a2, uint64_t a3, int32x2_t *a4, int a5, int a6, int a7, uint64_t a8)
{
  v9 = a2;
  if (sub_F69D6C(a2))
  {
    return 0;
  }

  sub_10E23F8(*(a1 + 16), v9, &v129);
  v13 = v129;
  v12 = v130;
  if (v129 == v130)
  {
    v11 = 0;
    if (*(a1 + 277) == 1)
    {
      goto LABEL_142;
    }

    goto LABEL_188;
  }

  v108 = a8;
  v11 = 0;
  v115 = 1;
  v112 = v9;
  v114 = v130;
  do
  {
    if (*v13 < v13[1])
    {
      ++*(a1 + 56);
      sub_4C35D4(v9, &v127);
      v15 = v127;
      v16 = *v13;
      sub_4C35D4(v9, &v117);
      v17 = &v15[96 * v16 + 96];
      v18 = v117 + 96 * v13[1];
      if (v17 == v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0;
        do
        {
          while (1)
          {
            v20 = (*v17 - **v17);
            if (*v20 >= 9u)
            {
              v21 = v20[4];
              if (v21)
              {
                break;
              }
            }

            v17 += 96;
            if (v17 == v18)
            {
              goto LABEL_18;
            }
          }

          v19 += *(*v17 + v21);
          v17 += 96;
        }

        while (v17 != v18);
      }

LABEL_18:
      if (v19 < *(a1 + 288))
      {
        v22 = v13[1];
        v98 = v22 >= *v13;
        v23 = v22 - *v13;
        if (!v98)
        {
          v23 = 0;
        }

        if (v23 >= 2)
        {
          v24 = sub_F6CDE4(v9, *v13);
          v25 = (*v24 - **v24);
          if (*v25 >= 0x2Fu)
          {
            v26 = v25[23];
            if (v26)
            {
              if (!*(*v24 + v26))
              {
                v27 = *(sub_F6CDE4(v9, v13[1] - 1) + 40);
                v28 = (v27 - *v27);
                if (*v28 >= 0x2Fu)
                {
                  v29 = v28[23];
                  if (v29)
                  {
                    if (!*(v27 + v29))
                    {
                      sub_4C35D4(v9, &v127);
                      v30 = v127;
                      v31 = *v13;
                      sub_4C35D4(v9, &v117);
                      v32 = &v30[96 * v31 + 96];
                      v33 = v117 + 96 * v13[1] - 96;
                      if (v32 != v33)
                      {
                        while (1)
                        {
                          v34 = (*v32 - **v32);
                          if (*v34 < 0x2Fu)
                          {
                            break;
                          }

                          v35 = v34[23];
                          if (!v35 || *(*v32 + v35))
                          {
                            break;
                          }

                          v32 += 96;
                          if (v32 == v33)
                          {
                            goto LABEL_33;
                          }
                        }

                        v115 = 0;
                        goto LABEL_8;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_33:
      sub_10E9060(a1, v9, v13, &v127);
      if (*(a1 + 278) != 1)
      {
        goto LABEL_85;
      }

      sub_1164FEC(*(a1 + 32), &v127, &v125);
      v36 = v125;
      v37 = v126;
      if (v125 != v126)
      {
        do
        {
          if (a6)
          {
            v131 = *(v36 + 8);
            v132 = 0;
            sub_4C2A78(&v131, &v117);
            v38 = sub_D3B7AC((a1 + 112), &v117);
            if (v38)
            {
              sub_4C2D98(v38 + 2, &v117);
            }

            else
            {
              sub_D3B9CC((a1 + 112), &v117, &v117);
            }

            v39 = __p;
            if (__p)
            {
              do
              {
                v40 = *v39;
                operator delete(v39);
                v39 = v40;
              }

              while (v40);
            }

            v41 = v120;
            v120 = 0;
            if (v41)
            {
              operator delete(v41);
            }
          }

          v42 = *(a1 + 24);
          *(v42 + 31330) = 1;
          sub_100A578(v42 + 31336, 1);
          if (sub_100A97C(v42 + 31336, v36) == -1)
          {
            sub_100AA78(v42 + 31336, v36, v43, &v117);
            v11 = (v11 + 1);
          }

          else
          {
            v11 = v11;
          }

          v36 += 24;
        }

        while (v36 != v37);
        v115 = 0;
        v44 = 0;
        if ((*(a1 + 279) & 1) == 0)
        {
LABEL_82:
          if (v125)
          {
            v126 = v125;
            operator delete(v125);
          }

          if ((v44 & 1) == 0)
          {
            goto LABEL_7;
          }

LABEL_85:
          if (*(a1 + 280) != 1)
          {
            goto LABEL_94;
          }

          v65 = *(a1 + 24);
          sub_11681B4(*(a1 + 32), &v127, &v131);
          *(v65 + 31330) = 1;
          v67 = *(&v131 + 1);
          v66 = v131;
          if (v131 == *(&v131 + 1))
          {
            v71 = 0;
            v9 = v112;
            if (!v131)
            {
              goto LABEL_93;
            }
          }

          else
          {
            v68 = 0;
            do
            {
              *(v65 + 31330) = 1;
              sub_100A578(v65 + 31336, 1);
              v70 = sub_100A97C(v65 + 31336, v66);
              if (v70 == -1)
              {
                sub_100AA78(v65 + 31336, v66, v69, &v117);
              }

              v68 |= v70 == -1;
              ++v66;
            }

            while (v66 != v67);
            v66 = v131;
            v71 = v68 & 1;
            v9 = v112;
            if (!v131)
            {
              goto LABEL_93;
            }
          }

          *(&v131 + 1) = v66;
          operator delete(v66);
LABEL_93:
          v11 = (v11 + v71);
LABEL_94:
          if (!a7)
          {
            goto LABEL_98;
          }

          sub_116528C(*(a1 + 32), &v127, &v131);
          v73 = *(&v131 + 1);
          v72 = v131;
          if (v131 == *(&v131 + 1))
          {
            if (!v131)
            {
              goto LABEL_98;
            }
          }

          else
          {
            do
            {
              v75 = *(a1 + 24);
              *(v75 + 31330) = 1;
              sub_100A578(v75 + 31336, 1);
              if (sub_100A97C(v75 + 31336, v72) == -1)
              {
                sub_100AA78(v75 + 31336, v72, v76, &v117);
                v11 = (v11 + 1);
              }

              else
              {
                v11 = v11;
              }

              v72 += 3;
            }

            while (v72 != v73);
            v72 = v131;
            if (!v131)
            {
LABEL_98:
              sub_1165F34(&v127, &v131);
              if (v131 != *(&v131 + 1))
              {
                v115 = 0;
                v11 = (v11 + sub_F8F510(*(a1 + 24) + 8, &v131));
                v74 = v131;
                if (!v131)
                {
LABEL_7:
                  sub_4547F0(&v127);
LABEL_8:
                  v12 = v114;
                  goto LABEL_9;
                }

LABEL_132:
                v87 = *(&v131 + 1);
                v14 = v74;
                if (*(&v131 + 1) != v74)
                {
                  v88 = *(&v131 + 1);
                  do
                  {
                    v90 = *(v88 - 3);
                    v88 -= 24;
                    v89 = v90;
                    if (v90)
                    {
                      *(v87 - 2) = v89;
                      operator delete(v89);
                    }

                    v87 = v88;
                  }

                  while (v88 != v74);
                  v14 = v131;
                }

                *(&v131 + 1) = v74;
                operator delete(v14);
                goto LABEL_7;
              }

              *(a1 + 64) += v19;
              v77 = sub_3B6890(*a1);
              sub_1165B0C(*(a1 + 32), &v127, a4, v77, &v117);
              if (v117 == v118)
              {
                v79 = __p;
                if (v119 == v120)
                {
                  v78 = __p == v122;
                  if (!__p)
                  {
                    goto LABEL_125;
                  }
                }

                else
                {
                  v78 = 0;
                  if (!__p)
                  {
                    goto LABEL_125;
                  }
                }
              }

              else
              {
                v78 = 0;
                v79 = __p;
                if (!__p)
                {
                  goto LABEL_125;
                }
              }

              v80 = v122;
              v81 = v79;
              if (v122 != v79)
              {
                v82 = v122;
                do
                {
                  v84 = *(v82 - 3);
                  v82 -= 24;
                  v83 = v84;
                  if (v84)
                  {
                    *(v80 - 2) = v83;
                    operator delete(v83);
                  }

                  v80 = v82;
                }

                while (v82 != v79);
                v81 = __p;
              }

              v122 = v79;
              operator delete(v81);
LABEL_125:
              if (v119)
              {
                v120 = v119;
                operator delete(v119);
              }

              if (v117)
              {
                v118 = v117;
                operator delete(v117);
              }

              if (!v78)
              {
                sub_F6BA80(&v127, 3);
              }

              v85 = sub_F68F18(&v127);
              sub_F6E648(v9, v85);
              v86 = *(a1 + 16);
              sub_49EA74(&v117, v9);
              sub_10DFEB4(v86, &v117, a3, v13, 0, a5);
              sub_4547F0(&v117);
              v74 = v131;
              if (!v131)
              {
                goto LABEL_7;
              }

              goto LABEL_132;
            }
          }

          *(&v131 + 1) = v72;
          operator delete(v72);
          goto LABEL_98;
        }
      }

      sub_1168CF4(*(a1 + 32), &v127, &v117);
      v45 = v119;
      v46 = v120;
      if (v117 != v118 || v119 != v120 || __p != v122)
      {
        v47 = *(a1 + 24);
        *(v47 + 31330) = 1;
        if (v45 == v46)
        {
          v51 = 0;
        }

        else
        {
          v48 = 0;
          do
          {
            *(v47 + 31330) = 1;
            sub_1008300(v47 + 31416, 1);
            v50 = sub_1008EEC(v47 + 31416, v45);
            if (v50 == -1)
            {
              sub_10091E8(v47 + 31416, v45, v49, &v131);
            }

            v48 |= v50 == -1;
            v45 += 96;
          }

          while (v45 != v46);
          v47 = *(a1 + 24);
          v51 = v48 & 1;
        }

        v9 = v112;
        v115 = 0;
        v44 = 0;
        v11 = (v11 + v51 + sub_F8F510(v47 + 8, &__p));
        if ((*(a1 + 279) & 1) == 0)
        {
LABEL_70:
          v59 = __p;
          if (__p)
          {
            v60 = v122;
            v61 = __p;
            if (v122 != __p)
            {
              v62 = v122;
              do
              {
                v64 = *(v62 - 3);
                v62 -= 24;
                v63 = v64;
                if (v64)
                {
                  *(v60 - 2) = v63;
                  operator delete(v63);
                }

                v60 = v62;
              }

              while (v62 != v59);
              v61 = __p;
            }

            v122 = v59;
            operator delete(v61);
          }

          if (v119)
          {
            v120 = v119;
            operator delete(v119);
          }

          if (v117)
          {
            v118 = v117;
            operator delete(v117);
          }

          goto LABEL_82;
        }
      }

      sub_1169BAC(*(a1 + 32), &v123);
      v52 = v123;
      v53 = v124;
      if (v123 != v124)
      {
        sub_F6BA80(&v127, 2);
        v52 = v123;
        v53 = v124;
      }

      v54 = *(a1 + 24);
      *(v54 + 31330) = 1;
      if (v52 == v53)
      {
        v58 = 0;
        v9 = v112;
        if (!v52)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v55 = 0;
        do
        {
          *(v54 + 31330) = 1;
          sub_100A578(v54 + 31336, 1);
          v57 = sub_100A97C(v54 + 31336, v52);
          if (v57 == -1)
          {
            sub_100AA78(v54 + 31336, v52, v56, &v131);
          }

          v55 |= v57 == -1;
          ++v52;
        }

        while (v52 != v53);
        v52 = v123;
        v58 = v55 & 1;
        v9 = v112;
        if (!v123)
        {
          goto LABEL_69;
        }
      }

      v124 = v52;
      operator delete(v52);
LABEL_69:
      v11 = (v58 + v11);
      v44 = 1;
      goto LABEL_70;
    }

LABEL_9:
    v13 += 2;
  }

  while (v13 != v12);
  a8 = v108;
  if ((v115 & 1) == 0 || *(a1 + 277) != 1)
  {
    goto LABEL_188;
  }

LABEL_142:
  sub_1169BAC(*(a1 + 32), &v127);
  v91 = v127;
  v92 = v128;
  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }

  if (v91 != v92)
  {
    sub_F6BA80(v9, 2);
  }

  sub_116528C(*(a1 + 32), v9, &v127);
  v93 = v127;
  v94 = v127 != v128;
  if (v127 == v128)
  {
    v94 = 0;
  }

  else
  {
    while (*(*v93[1] + 464 * v93[2] + 352) != 1)
    {
      v93 += 3;
      if (v93 == v128)
      {
        goto LABEL_152;
      }
    }

    v94 |= 2uLL;
  }

LABEL_152:
  sub_F6E648(v9, v94);
  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }

  v95 = sub_73F1C(v9);
  v96 = *(a1 + 336);
  if (*(v95 + 82))
  {
    v97 = 0x40000;
  }

  else
  {
    v97 = 0;
  }

  v98 = v96 <= -1 || ((v96 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
  v100 = !v98 || (v96 - 1) < 0xFFFFFFFFFFFFFLL || (v96 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (v100 && *(v95 + 73) == 1 && *(v95 + 72) == 1)
  {
    v101 = *(v95 + 24);
    v102 = *&v101 <= -1 || ((*&v101 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
    v103 = v102 && (*&v101 - 1) >= 0xFFFFFFFFFFFFFLL;
    v104 = !v103 || (*&v101 & 0x7FFFFFFFFFFFFFFFLL) == 0;
    v105 = !v104 || v101 <= 0.0;
    if (!v105 && v101 > *(a1 + 336))
    {
      v97 |= 0x20000uLL;
    }
  }

  sub_F6E648(v9, v97);
  sub_10DFE00(*(a1 + 16), v9, a3, a8);
LABEL_188:
  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  return v11;
}

void sub_10E86BC(_Unwind_Exception *a1)
{
  v3 = *(v1 - 152);
  if (v3)
  {
    *(v1 - 144) = v3;
    operator delete(v3);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10E8814(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  if (!sub_5FC6C(a2))
  {
    v15 = 6;
    strcpy(__p, "checks");
    v4 = sub_5F680(a2, __p);
    memset(v16, 0, 24);
    sub_10E95D4(v16, (v4[1] - *v4) >> 4);
    sub_10E9924(*v4, v4[1], v16);
    v5 = *a1;
    if (*a1)
    {
      v6 = *(a1 + 8);
      v7 = *a1;
      if (v6 != v5)
      {
        do
        {
          v8 = *(v6 - 3);
          if (v8)
          {
            v9 = *(v6 - 2);
            v10 = *(v6 - 3);
            if (v9 != v8)
            {
              do
              {
                v11 = *(v9 - 1);
                v9 -= 3;
                if (v11 < 0)
                {
                  operator delete(*v9);
                }
              }

              while (v9 != v8);
              v10 = *(v6 - 3);
            }

            *(v6 - 2) = v8;
            operator delete(v10);
          }

          v12 = v6 - 6;
          if (*(v6 - 25) < 0)
          {
            operator delete(*v12);
          }

          v6 -= 6;
        }

        while (v12 != v5);
        v7 = *a1;
      }

      *(a1 + 8) = v5;
      operator delete(v7);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    *a1 = v16[0];
    *(a1 + 16) = *&v16[1];
    memset(v16, 0, 24);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    BYTE7(v16[1]) = 21;
    strcpy(v16, "max_check_duration_ms");
    *(a1 + 24) = sub_353010(a2, v16);
    if (SBYTE7(v16[1]) < 0)
    {
      operator delete(*&v16[0]);
    }
  }

  return a1;
}

void sub_10E89CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_10E8A2C(v21);
    _Unwind_Resume(a1);
  }

  sub_10E8A2C(v21);
  _Unwind_Resume(a1);
}

void ***sub_10E8A2C(void ***a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
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
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v9 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v9);
        }

        v3 -= 6;
      }

      while (v9 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_10E8C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10E8C24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11 = sub_10E2C7C(*(a1 + 16));
  sub_10E9D7C(v12, 0x400u);
  v4 = sub_3068E4(*(a1 + 16));
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    do
    {
      v7 = *v5;
      v10[0] = 0;
      LODWORD(v9[0]) = v7;
      sub_10E9EC8(v12, v9, v10);
      v5 += 50;
    }

    while (v5 != v6);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v10[0] = a2;
  v10[1] = a1;
  v9[0] = a1;
  v9[1] = a2;
  sub_10E8D6C(&v11, v10, v9);
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  return sub_360988(v12);
}

void sub_10E8D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_39393C(v11);
  sub_404190(va);
  _Unwind_Resume(a1);
}

void sub_10E8D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_404190(va);
  _Unwind_Resume(a1);
}

void sub_10E8D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_404190(va);
  _Unwind_Resume(a1);
}

void sub_10E8D6C(uint64_t *a1, void *a2, void *a3)
{
  if (*(a1 + 220))
  {
    while (1)
    {
      v6 = a1[104];
      v7 = (a1[97] + 16 * *v6);
      v8 = *v7;
      v51 = *(v7 + 1);
      sub_DD38((a1 + 100), v6);
      v9 = a1[104];
      *(a1[107] + 4 * *v9) = -1;
      v10 = *(a1 + 220) - 1;
      *(a1 + 220) = v10;
      if (v10)
      {
        v11 = &v9[4 * v10];
        *v9 = *v11;
        *(v9 + 1) = *(v11 + 1);
        v12 = a1[104];
        *(a1[107] + 4 * *v12) = 0;
        v13 = *(a1 + 220);
        if (v13 >= 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 1;
          do
          {
            v17 = v14 + 5;
            if (v17 >= v13)
            {
              v18 = v13;
            }

            else
            {
              v18 = v17;
            }

            if (v17 <= v16)
            {
              break;
            }

            v19 = v15;
            v20 = *&v12[4 * v15 + 2];
            v21 = &v12[4 * v16 + 2];
            v15 = -1;
            v22 = v20;
            do
            {
              v24 = *v21;
              v21 += 4;
              v23 = v24;
              if (v24 < v22)
              {
                v22 = v23;
                v15 = v16;
              }

              ++v16;
            }

            while (v16 < v18);
            if (v15 >= v13)
            {
              break;
            }

            v25 = 4 * v15;
            v26 = &v12[v25];
            v27 = 16 * v19;
            v28 = v12 + v27;
            v29 = *v26;
            *v26 = *v28;
            *v28 = v29;
            v30 = *(v26 + 1);
            *(v26 + 1) = v20;
            *(v28 + 1) = v30;
            v12 = a1[104];
            v31 = v12[v25];
            v32 = a1[107];
            v33 = *(v12 + v27);
            LODWORD(v27) = *(v32 + 4 * v31);
            *(v32 + 4 * v31) = *(v32 + 4 * v33);
            *(v32 + 4 * v33) = v27;
            v14 = 4 * v15;
            v16 = (4 * v15) | 1;
            v13 = *(a1 + 220);
          }

          while (v16 < v13);
        }
      }

      a1[105] -= 16;
      v34 = a2[1];
      if (*(v34 + 304) <= ((*(*a2 + 8) - **a2) >> 5) || v51 > *(v34 + 312))
      {
        return;
      }

      if ((sub_10EA21C(a3, v8) & 1) == 0)
      {
        break;
      }

LABEL_3:
      if (!*(a1 + 220))
      {
        return;
      }
    }

    v35 = *a1;
    v36 = *(*a1 + 96);
    if (v8 >= (*(*a1 + 104) - v36) >> 2)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v48 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
    }

    for (i = *(v36 + 4 * v8); ; i = *(*(v35 + 144) + 4 * i))
    {
      if (i == -1)
      {
        goto LABEL_3;
      }

      v39 = (*(v35 + 120) + 176 * i);
      if (sub_10DF72C(v39) != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

LABEL_24:
      ;
    }

    v50 = sub_3F80(v39);
    v40 = sub_10DF6A4(v39);
    v41 = v51;
    if (v40)
    {
      v42 = sub_10DF6C4(v39);
      v43 = *v42;
      v44 = &(*v42)[-**v42];
      if (*v44 < 9u)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v45 = sub_10DF708(v39);
      v43 = *v45;
      v44 = &(*v45)[-**v45];
      if (*v44 < 9u)
      {
        goto LABEL_22;
      }
    }

    v46 = *(v44 + 4);
    if (v46)
    {
      v38 = *&v43[v46];
      goto LABEL_23;
    }

LABEL_22:
    v38 = 0;
LABEL_23:
    v49 = v38 + v41;
    sub_10EA4D0((a1 + 1), &v50, &v49);
    goto LABEL_24;
  }
}

uint64_t sub_10E9060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = *a3;
  v9 = *(a1 + 296);
  if ((v9 & 0x8000000000000000) == 0 && v8)
  {
    v10 = 0;
    v11 = v8 - 1;
    while (1)
    {
      v14 = sub_F6C648(a2, v11);
      v15 = (*v14 - **v14);
      if (*v15 >= 9u && (v16 = v15[4]) != 0)
      {
        v10 += *(*v14 + v16);
        v9 = *(a1 + 296);
        v12 = v11-- != 0;
        v13 = v12;
        if (v10 > v9)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v9 = *(a1 + 296);
        v12 = v11-- != 0;
        v13 = v12;
        if (v10 > v9)
        {
LABEL_15:
          v8 = v11 + 1;
          break;
        }
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  v17 = a3[1];
  if ((v9 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    while (v17 < sub_F6D008(a2))
    {
      v19 = sub_F6C648(a2, v17);
      v20 = (*v19 - **v19);
      if (*v20 >= 9u && (v21 = v20[4]) != 0)
      {
        v18 += *(*v19 + v21);
        ++v17;
        if (v18 > *(a1 + 296))
        {
          break;
        }
      }

      else
      {
        ++v17;
        if (v18 > *(a1 + 296))
        {
          break;
        }
      }
    }
  }

  v22 = sub_F6BEE8(a4);
  sub_F6C6A0(v22, v17 - v8);
  if (v8 <= v17)
  {
    v23 = v17;
  }

  else
  {
    v23 = v8;
  }

  if (v17 > v8)
  {
    v24 = v8;
    do
    {
      v25 = sub_F6C648(a2, v24);
      v26 = sub_F6C650(a2, v24);
      sub_F6C3B8(a4, v25, v26);
      ++v24;
    }

    while (v23 != v24);
  }

  v45 = 0;
  v46 = 0;
  v48 = 0;
  v47 = 0;
  v49 = 0x3FF0000000000000;
  v50 = 1;
  v51 = 0;
  v52 = 0;
  v53 = -1935671296;
  v55 = 0;
  v56 = 0;
  if (v8)
  {
    v44 = 0;
    v27 = 3;
  }

  else
  {
    v44 = *sub_73F1C(a2);
    v27 = *(sub_73F1C(a2) + 76);
  }

  v54 = v27;
  sub_F68F20(a4, &v44);
  v32 = 0;
  v33 = 0;
  v35 = 0;
  v34 = 0;
  v36 = 0x3FF0000000000000;
  v37 = 1;
  v38 = 0;
  v39 = 0;
  v40 = -1935671296;
  v42 = 0;
  v43 = 0;
  if (v17 == sub_F6D008(a2) - 1)
  {
    v28 = *sub_F69058(a2);
  }

  else
  {
    v28 = 1000000000;
  }

  v31 = v28;
  if (v17 == sub_F6D008(a2) - 1)
  {
    v29 = *(sub_F69058(a2) + 76);
  }

  else
  {
    v29 = 3;
  }

  v41 = v29;
  return sub_F6901C(a4, &v31);
}

uint64_t sub_10E9388(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
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
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10E9420(uint64_t *a1, __n128 *a2)
{
  v3 = *a1;
  v4 = a2[3].n128_u32[0];
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_3;
  }

  if (sub_38F538(*a2[2].n128_u64[0] + 464 * a2[2].n128_u64[1], 0))
  {
    goto LABEL_17;
  }

  v4 = a2[3].n128_u32[0];
  if (v4 == 1)
  {
LABEL_3:
    if ((sub_3904C0(*a2[2].n128_u64[0] + 704 * a2[2].n128_u64[1], 0) & 1) == 0)
    {
      v4 = a2[3].n128_u32[0];
      goto LABEL_7;
    }

LABEL_17:
    sub_4C2B44(a2 + 2, &v11);
    sub_4C2AA0(&v11, v12);
    v7 = sub_D3B7AC((v3 + 112), v12);
    if (v7)
    {
      sub_4C2D98(v7 + 2, v12);
    }

    else
    {
      sub_D3B9CC((v3 + 112), v12, v12);
    }

    v8 = __p;
    if (__p)
    {
      do
      {
        v9 = *v8;
        operator delete(v8);
        v8 = v9;
      }

      while (v9);
    }

    v10 = v13;
    v13 = 0;
    if (v10)
    {
      operator delete(v10);
    }

    return;
  }

LABEL_7:
  if (v4 == 1)
  {
    v5 = *a2[2].n128_u64[0] + 704 * a2[2].n128_u64[1];
    if (!sub_38F51C(v5, 0))
    {
      return;
    }

LABEL_12:
    v6 = a2[3].n128_u32[0];
    if (v6)
    {
      if (v6 != 1 || *(*a2[2].n128_u64[0] + 704 * a2[2].n128_u64[1] + 688) != 5)
      {
        return;
      }
    }

    else if (*(v5 + 96) != 14)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v4)
  {
    sub_5AF20();
  }

  v5 = *a2[2].n128_u64[0] + 464 * a2[2].n128_u64[1];
  if (sub_38F51C(v5, 0))
  {
    goto LABEL_12;
  }
}

void sub_10E95C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_4C2DE8(va);
  _Unwind_Resume(a1);
}

void sub_10E95D4(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_10E9710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10E986C(va);
  _Unwind_Resume(a1);
}

void sub_10E9724(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 24) = *(v7 + 24);
      *(v8 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      v8 += 48;
    }

    while (v7 != v4);
    do
    {
      v10 = *(v5 + 24);
      if (v10)
      {
        v11 = *(v5 + 32);
        v12 = *(v5 + 24);
        if (v11 != v10)
        {
          do
          {
            v13 = *(v11 - 1);
            v11 -= 3;
            if (v13 < 0)
            {
              operator delete(*v11);
            }
          }

          while (v11 != v10);
          v12 = *(v5 + 24);
        }

        *(v5 + 32) = v10;
        operator delete(v12);
      }

      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 48;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v14 = *a1;
  *a1 = v6;
  a1[1] = v14;
  a2[1] = v14;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
}

uint64_t sub_10E986C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    v4 = *(i - 24);
    if (v4)
    {
      v5 = *(i - 16);
      v6 = *(i - 24);
      if (v5 != v4)
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
        v6 = *(i - 24);
      }

      *(i - 16) = v4;
      operator delete(v6);
    }

    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_10E9924(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      if (*(v6 + 8) != 5)
      {
        sub_5AF20();
      }

      sub_10E9A70(*v6, v14);
      v7 = a3[1];
      if (v7 >= a3[2])
      {
        v9 = sub_10E9BC0(a3, v14);
        v10 = __p[0];
        a3[1] = v9;
        if (v10)
        {
          v11 = __p[1];
          v12 = v10;
          if (__p[1] != v10)
          {
            do
            {
              v13 = *(v11 - 1);
              v11 -= 3;
              if (v13 < 0)
              {
                operator delete(*v11);
              }
            }

            while (v11 != v10);
            v12 = __p[0];
          }

          __p[1] = v10;
          operator delete(v12);
        }
      }

      else
      {
        v8 = *v14;
        *(v7 + 16) = v15;
        *(v7 + 24) = 0;
        *v7 = v8;
        v14[1] = 0;
        v15 = 0;
        v14[0] = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v7 + 24) = *__p;
        *(v7 + 40) = v17;
        __p[0] = 0;
        __p[1] = 0;
        v17 = 0;
        a3[1] = v7 + 48;
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }

      v6 += 16;
    }

    while (v6 != a2);
  }

  return a3;
}

void sub_10E9A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10E9388(va);
  _Unwind_Resume(a1);
}

void sub_10E9A70(void *a1@<X1>, uint64_t a2@<X8>)
{
  v9 = 6;
  strcpy(v8, "branch");
  v4 = sub_5F8FC(a1, v8);
  if (*(v4 + 23) < 0)
  {
    sub_325C(a2, *v4, v4[1]);
  }

  else
  {
    v5 = *v4;
    *(a2 + 16) = v4[2];
    *a2 = v5;
  }

  v7 = 14;
  strcpy(__p, "country_filter");
  sub_63960(a1, __p, (a2 + 24));
  if ((v7 & 0x80000000) == 0)
  {
    if ((v9 & 0x80000000) == 0)
    {
      return;
    }

LABEL_8:
    operator delete(v8[0]);
    return;
  }

  operator delete(__p[0]);
  if (v9 < 0)
  {
    goto LABEL_8;
  }
}

void sub_10E9B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v20 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v20 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v20);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

uint64_t sub_10E9BC0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  v19 = a1;
  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 48 * v2;
  __p = 0;
  v16 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v17 = 48 * v2 + 48;
  v18 = 0;
  sub_10E9724(a1, &__p);
  v7 = a1[1];
  v8 = v16;
  while (1)
  {
    v9 = v17;
    if (v17 == v8)
    {
      break;
    }

    v17 -= 48;
    v10 = *(v9 - 24);
    if (v10)
    {
      v11 = *(v9 - 16);
      v12 = *(v9 - 24);
      if (v11 != v10)
      {
        do
        {
          v13 = *(v11 - 1);
          v11 -= 3;
          if (v13 < 0)
          {
            operator delete(*v11);
          }
        }

        while (v11 != v10);
        v12 = *(v9 - 24);
      }

      *(v9 - 16) = v10;
      operator delete(v12);
    }

    if (*(v9 - 25) < 0)
    {
      operator delete(*(v9 - 48));
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_10E9D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10E986C(va);
  _Unwind_Resume(a1);
}

void *sub_10E9D7C(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_F8A300(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_40D5C8(v5 + 103, a2);
  if (v4 > (a1[98] - a1[96]) >> 4)
  {
    operator new();
  }

  return a1;
}

void sub_10E9E68(_Unwind_Exception *a1)
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

void sub_10E9EC8(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = 0;
  ++*(a1 + 816);
  v7 = *a2;
  v8 = 265 * ((~v7 + (v7 << 21)) ^ ((~v7 + (v7 << 21)) >> 24));
  v9 = 2147483649u * ((21 * (v8 ^ (v8 >> 14))) ^ ((21 * (v8 ^ (v8 >> 14))) >> 28));
  v10 = (a1 + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(*v10 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_6:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_9;
    }

    v6 += 8;
    v11 = v6 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    if (*(v17 + 8 * v18) == v7)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  if (v12 == v18)
  {
LABEL_9:
    v19 = *(a1 + 776) - *(a1 + 768);
    sub_F8B0C4(a1, a2, &v39);
    v20 = v40;
    v21 = *(v39 + 8);
    if (v41 == 1)
    {
      *(v21 + 8 * v40) = *a2;
    }

    *(v21 + 8 * v20 + 4) = v19 >> 4;
    v22 = *(a1 + 776);
    v23 = *(a1 + 784);
    if (v22 >= v23)
    {
      v25 = *(a1 + 768);
      v26 = v22 - v25;
      v27 = (v22 - v25) >> 4;
      v28 = v27 + 1;
      if ((v27 + 1) >> 60)
      {
        sub_1794();
      }

      v29 = v23 - v25;
      if (v29 >> 3 > v28)
      {
        v28 = v29 >> 3;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFF0)
      {
        v30 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        if (!(v30 >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v34 = v27;
      v35 = 16 * v27;
      *v35 = *a2;
      *(v35 + 8) = *a3;
      v24 = 16 * v27 + 16;
      v36 = (v35 - 16 * v34);
      memcpy(v36, v25, v26);
      *(a1 + 768) = v36;
      *(a1 + 776) = v24;
      *(a1 + 784) = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v22 = *a2;
      *(v22 + 8) = *a3;
      v24 = v22 + 16;
    }

    *(a1 + 776) = v24;
    v37 = (v19 >> 4);
    v38 = *(a1 + 848);
    if (v37 >= (*(a1 + 856) - v38) >> 2 || *(v38 + 4 * v37) == -1)
    {
      sub_40E0E8((a1 + 824), v19 >> 4, a3);
    }

    else
    {
      sub_40E27C((a1 + 824), v19 >> 4, a3);
    }

    return;
  }

  v31 = v17 + 8 * v18;
  *(*(a1 + 768) + 16 * *(v31 + 4) + 8) = *a3;
  v32 = *(v31 + 4);
  v33 = *(a1 + 848);
  if (v32 >= (*(a1 + 856) - v33) >> 2 || *(v33 + 4 * v32) == -1)
  {

    sub_40E0E8((a1 + 824), v32, a3);
  }

  else
  {

    sub_40E27C((a1 + 824), v32, a3);
  }
}

uint64_t sub_10EA21C(void *a1, unsigned int a2)
{
  v13 = a2;
  v2 = *a1;
  v3 = sub_10E2E2C(*(*a1 + 16), &v13);
  if (v3)
  {
    v4 = v3;
    v5 = sub_2B51D8(*(v2 + 104), HIDWORD(v4) & 0xFFFF0000FFFFFFFFLL | (WORD1(v4) << 32));
    v6 = (v5 - *v5);
    if (*v6 >= 0x2Fu)
    {
      v7 = v6[23];
      if (v7)
      {
        if (!*(v5 + v7))
        {
          v8 = *(v2 + 104);
          v9 = sub_2B4EDC(v8, HIDWORD(v4) & 0xFFFF0000FFFFFFFFLL | (WORD1(v4) << 32), (v4 & 2) == 0);
          sub_2B365C(v8, v9, 0, (v8 + 7800));
          v10 = *(v8 + 7800);
          v11 = *(v8 + 7808);
          if (v11 != v10)
          {
            if (((v11 - v10) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }
        }
      }
    }
  }

  return 0;
}

void sub_10EA498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
    operator delete(v19);
    _Unwind_Resume(a1);
  }

  operator delete(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_10EA4D0(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = 0;
  v7 = *a2;
  v8 = 265 * ((~v7 + (v7 << 21)) ^ ((~v7 + (v7 << 21)) >> 24));
  v9 = 2147483649u * ((21 * (v8 ^ (v8 >> 14))) ^ ((21 * (v8 ^ (v8 >> 14))) >> 28));
  v10 = (a1 + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(*v10 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_6:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_9;
    }

    v6 += 8;
    v11 = v6 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    if (*(v17 + 8 * v18) == v7)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  if (v12 == v18)
  {
LABEL_9:
    ++*(a1 + 816);
    v19 = *(a1 + 776) - *(a1 + 768);
    sub_F8B0C4(a1, a2, &v47);
    v20 = v48;
    v21 = *(v47 + 8);
    if (v49 == 1)
    {
      *(v21 + 8 * v48) = *a2;
    }

    *(v21 + 8 * v20 + 4) = v19 >> 4;
    v22 = *(a1 + 776);
    v23 = *(a1 + 784);
    if (v22 >= v23)
    {
      v25 = *(a1 + 768);
      v26 = v22 - v25;
      v27 = (v22 - v25) >> 4;
      v28 = v27 + 1;
      if ((v27 + 1) >> 60)
      {
        sub_1794();
      }

      v29 = v23 - v25;
      if (v29 >> 3 > v28)
      {
        v28 = v29 >> 3;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFF0)
      {
        v30 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        if (!(v30 >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v40 = v27;
      v41 = 16 * v27;
      *v41 = *a2;
      *(v41 + 8) = *a3;
      v24 = 16 * v27 + 16;
      v42 = (v41 - 16 * v40);
      memcpy(v42, v25, v26);
      *(a1 + 768) = v42;
      *(a1 + 776) = v24;
      *(a1 + 784) = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v22 = *a2;
      *(v22 + 8) = *a3;
      v24 = v22 + 16;
    }

    *(a1 + 776) = v24;
    v43 = (v19 >> 4);
    v44 = *(a1 + 848);
    if (v43 < (*(a1 + 856) - v44) >> 2 && *(v44 + 4 * v43) != -1)
    {
      v39 = (a1 + 824);
      v37 = v19 >> 4;
      goto LABEL_31;
    }

    v45 = (a1 + 824);
    v37 = v19 >> 4;
    goto LABEL_33;
  }

  v31 = v17 + 8 * v18;
  v33 = *(v31 + 4);
  v32 = (v31 + 4);
  v34 = *(a1 + 768) + 16 * v33;
  v36 = *(v34 + 8);
  v35 = (v34 + 8);
  if (*a3 < v36)
  {
    ++*(a1 + 816);
    *v35 = *a3;
    v37 = *v32;
    v38 = *(a1 + 848);
    if (v37 < (*(a1 + 856) - v38) >> 2 && *(v38 + 4 * v37) != -1)
    {
      v39 = (a1 + 824);
LABEL_31:
      sub_40E27C(v39, v37, a3);
      return 1;
    }

    v45 = (a1 + 824);
LABEL_33:
    sub_40E0E8(v45, v37, a3);
    return 1;
  }

  return 0;
}

void sub_10EA7F4()
{
  byte_27C2677 = 3;
  LODWORD(qword_27C2660) = 5136193;
  byte_27C268F = 3;
  LODWORD(qword_27C2678) = 5136194;
  byte_27C26A7 = 3;
  LODWORD(qword_27C2690) = 5136195;
  byte_27C26BF = 15;
  strcpy(&qword_27C26A8, "vehicle_mass_kg");
  byte_27C26D7 = 21;
  strcpy(&xmmword_27C26C0, "vehicle_cargo_mass_kg");
  byte_27C26EF = 19;
  strcpy(&qword_27C26D8, "vehicle_aux_power_w");
  byte_27C2707 = 15;
  strcpy(&qword_27C26F0, "dcdc_efficiency");
  strcpy(&qword_27C2708, "drive_train_efficiency");
  HIBYTE(word_27C271E) = 22;
  operator new();
}

void sub_10EA9D0(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C271E) < 0)
  {
    sub_21E7EA8();
  }

  sub_21E7EB4();
  _Unwind_Resume(a1);
}

void sub_10EAC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_584EC4((v18 + v23));
  sub_1321980(v18 + v19);
  if (*(v20 + 20192) == 1)
  {
    sub_3E3DF0(v18 + 1891);
  }

  sub_CDE540(v18 + v22);
  if (*v21 == 1)
  {
    sub_3E3DF0(v18 + 584);
  }

  sub_404134((v20 + 48));
  v25 = v18[7];
  if (v25)
  {
    v18[8] = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10EAD2C(uint64_t a1)
{
  HIBYTE(v13[2]) = 19;
  strcpy(v13, "DrivingPathAnalyzer");
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v1 = sub_3AEC94(a1, v13, &v10);
  v9 = 7;
  strcpy(__p, "default");
  v2 = sub_5F5AC(v1, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = v10;
  if (v10)
  {
    v4 = v11;
    v5 = v10;
    if (v11 != v10)
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
      v5 = v10;
    }

    v11 = v3;
    operator delete(v5);
  }

  if (SHIBYTE(v13[2]) < 0)
  {
    operator delete(v13[0]);
  }

  return v2;
}

void sub_10EAE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1A104(&a15);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a15);
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a18);
  _Unwind_Resume(a1);
}

void sub_10EAEB0(uint64_t a1, void *a2)
{
  sub_7E9A4(v109);
  sub_10EB90C(a1, a2, &v107);
  *(a1 + 256) = sub_7EA60(v109);
  sub_10EC3A8(a1, a2, &v105);
  v4 = *(a1 + 80);
  if (!v4)
  {
    v6 = sub_10E2904(a2);
    goto LABEL_13;
  }

  if (v105 == v106)
  {
    v6 = 0;
    goto LABEL_13;
  }

  v5 = v106 - v105 - 8;
  if (v5 >= 0x18)
  {
    v8 = (v5 >> 3) + 1;
    v7 = &v105[v8 & 0x3FFFFFFFFFFFFFFCLL];
    v9 = vdupq_n_s64(v4);
    v10 = (v105 + 2);
    v11 = 0uLL;
    v12 = v8 & 0x3FFFFFFFFFFFFFFCLL;
    v13 = 0uLL;
    do
    {
      v11 = vsubq_s64(v11, vtstq_s64(v10[-1], v9));
      v13 = vsubq_s64(v13, vtstq_s64(*v10, v9));
      v10 += 2;
      v12 -= 4;
    }

    while (v12);
    v6 = vaddvq_s64(vaddq_s64(v13, v11));
    if (v8 == (v8 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = 0;
    v7 = v105;
  }

  do
  {
    v14 = *v7++;
    if ((v14 & v4) != 0)
    {
      ++v6;
    }
  }

  while (v7 != v106);
LABEL_13:
  *(a1 + 264) = (sub_7EA60(v109) - *(a1 + 256));
  if (v6)
  {
    sub_10ECAB8(a2, &v103);
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v15 = sub_10E2904(a2);
    v16 = sub_10E2904(a2);
    v17 = *a1;
    v99 = 0;
    if (v15)
    {
      v87 = 0;
      v88 = a2;
      v18 = (v17 * v16 + 0.5);
      v83 = v15;
      v84 = v15;
      v90 = a1;
      v82 = v18;
      while (sub_10E2904(a2) < v18 && *(a1 + 292) < *(a1 + 96))
      {
        sub_10E2918(a2, &v99, &v95);
        v19 = v98;
        v20 = v97;
        if (v98 != v97)
        {
          v22 = v95;
          v21 = v96;
          while (!sub_10DF6A4(*v22 + 176 * v20))
          {
            v20 = *(*v21 + 4 * v20);
            if (v20 == v19)
            {
              v20 = v19;
              break;
            }
          }

          if (v20 == v98)
          {
            goto LABEL_16;
          }

          v94 = *sub_62A71C(&v103, v99);
          v23 = sub_10DF6C4(*v22 + 176 * v20);
          sub_F90350(a1 + 296, (((*(v23 + 32) >> 16) & 0xFFFF0000 | (*(v23 + 32) << 32) | (2 * ((*(v23 + 32) & 0xFF000000000000) == 0))) + 4 * *(v23 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v23 + 88) & 1, 0, &v100, 0);
          v25 = v100;
          v24 = v101;
          v89 = v101;
          while (2)
          {
            if (v25 != v24)
            {
              v26 = v97;
              v27 = v98;
              if (v97 != v98)
              {
                v69 = v95;
                v70 = v96;
                do
                {
                  v71 = *v69 + 176 * v26;
                  if (sub_10DF6A4(v71))
                  {
                    v72 = sub_10DF6C4(v71);
                    v73 = v25[4];
                    if (__PAIR64__(*(v72 + 36), *(v72 + 32)) == __PAIR64__(WORD2(v73), v73) && *(v72 + 38) == BYTE6(v73))
                    {
                      v74 = v25[9];
                      if (__PAIR64__(*(v72 + 76), *(v72 + 72)) == __PAIR64__(WORD2(v74), v74) && *(v72 + 78) == BYTE6(v74) && *(v25 + 20) == *(v72 + 80) && ((*(v25 + 88) ^ *(v72 + 88)) & 3) == 0 && ((*(v25 + 42) ^ *(v72 + 84)) & 0x7FFF) == 0 && ((*(v25 + 88) ^ *(v72 + 88)) & 0x7C) == 0 && *(v25 + 43) == *(v72 + 86))
                      {
                        goto LABEL_28;
                      }
                    }
                  }

                  v26 = *(*v70 + 4 * v26);
                }

                while (v26 != v27);
              }

              if ((~*(v25 + 88) & 0x41) == 0 || sub_10B8408(v25, *(a1 + 14)))
              {
                goto LABEL_28;
              }

              v28 = *sub_800760(&v107, v99);
              v93 = v28;
              ++*(a1 + 276);
              if (v99 >= v84)
              {
                ++*(a1 + 280);
              }

              sub_10ECE04(a1, v25, v88, v94, &v105, &__p, v28);
              v85 = __p;
              v86 = v92;
              v110 = __p;
              v111 = v92;
              sub_10E1338(v88, &v110);
              v29 = __p;
              v30 = v92;
LABEL_41:
              if (v29 == v30)
              {
                v75 = sub_10E2904(v88);
                v76 = v107;
                v77 = (v108 - v107) >> 3;
                if (v75 <= v77)
                {
                  if (v75 < v77)
                  {
                    v108 = &v107[8 * v75];
                  }
                }

                else
                {
                  sub_A3CD8(&v107, v75 - v77, &v93);
                  v76 = v107;
                }

                *&v76[8 * v99] = v93;
                v78 = sub_10E2904(v88);
                v79 = v106 - v105;
                if (v78 <= v79)
                {
                  if (v78 < v79)
                  {
                    v106 = &v105[v78];
                  }
                }

                else
                {
                  sub_331250(&v105, v78 - v79, &v105[v99]);
                }

                v80 = sub_10E2904(v88);
                v81 = (v104 - v103) >> 3;
                if (v80 <= v81)
                {
                  if (v80 < v81)
                  {
                    v104 = v103 + 8 * v80;
                  }
                }

                else
                {
                  sub_331250(&v103, v80 - v81, &v94);
                }

                if (__p)
                {
                  v92 = __p;
                  operator delete(__p);
                }

                v87 -= 0x5555555555555555 * ((v86 - v85) >> 5);
LABEL_28:
                v25 += 12;
                v24 = v89;
                continue;
              }

              if (*(a1 + 48) != 1 || (v32 = (*v29 - **v29), *v32 < 0x2Fu) || (v33 = v32[23]) == 0 || *(*v29 + v33) == 32)
              {
                v34 = *(a1 + 10024);
                v35 = v29[4];
                v112 = 1;
                v113 = v35;
                v110 = &v112;
                v111 = &v113;
                v36 = *(v34 + 3856) + 1;
                *(v34 + 3856) = v36;
                if (!*v34)
                {
                  goto LABEL_60;
                }

                if (*(v34 + 2128) == v35)
                {
                  ++*(v34 + 3864);
                  *(v34 + 2136) = v36;
                  v37 = *(v34 + 2144);
                  if (v37)
                  {
                    goto LABEL_49;
                  }

LABEL_60:
                  sub_31DB68(&v110);
                  v40 = 0.0;
LABEL_36:
                  a1 = v90;
                  goto LABEL_37;
                }

                if (*(v34 + 2152) == v35)
                {
                  ++*(v34 + 3864);
                  *(v34 + 2160) = v36;
                  v37 = *(v34 + 2168);
                  if (v37)
                  {
                    goto LABEL_49;
                  }

                  goto LABEL_60;
                }

                if (*(v34 + 2176) == v35)
                {
                  ++*(v34 + 3864);
                  *(v34 + 2184) = v36;
                  v37 = *(v34 + 2192);
                  if (v37)
                  {
                    goto LABEL_49;
                  }

                  goto LABEL_60;
                }

                if (*(v34 + 2200) == v35)
                {
                  ++*(v34 + 3864);
                  *(v34 + 2208) = v36;
                  v37 = *(v34 + 2216);
                  if (v37)
                  {
                    goto LABEL_49;
                  }

                  goto LABEL_60;
                }

                v49 = *(v34 + 2184);
                v50 = *(v34 + 2160);
                v51 = *(v34 + 2136);
                v52 = *(v34 + 2208);
                v37 = sub_2D52A4(*v34, 22, v35, 1);
                if (v51 >= v36)
                {
                  v53 = v36;
                }

                else
                {
                  v53 = v51;
                }

                v54 = 88;
                if (v51 >= v36)
                {
                  v54 = 0;
                }

                if (v50 < v53)
                {
                  v53 = v50;
                  v54 = 89;
                }

                if (v49 < v53)
                {
                  v54 = 90;
                  v53 = v49;
                }

                v55 = v52 >= v53;
                v56 = 91;
                if (v55)
                {
                  v56 = v54;
                }

                v57 = v34 + 16 + 24 * v56;
                *v57 = v113;
                *(v57 + 8) = *(v34 + 3856);
                *(v57 + 16) = v37;
                a1 = v90;
                if (!v37)
                {
                  goto LABEL_60;
                }

LABEL_49:
                v38 = (v37 + *v37);
                v39 = (v38 - *v38);
                v40 = 0.0;
                if (*v39 >= 0xBu)
                {
                  if (v39[5])
                  {
                    v41 = (v38 + v39[5] + *(v38 + v39[5]));
                    if (*v41 > WORD2(v35))
                    {
                      v42 = 2 * WORD2(v35);
                      v43 = &v41[v42 + 1];
                      if (*v43)
                      {
                        v44 = BYTE2(v41[v42 + 2]);
                        v45 = sub_2B3284(v34, *v43, 1);
                        if (!v45)
                        {
                          goto LABEL_36;
                        }

                        v46 = &v45[-*v45];
                        v47 = *v46;
                        if (((v35 & 0xFF000000000000) == 0x1000000000000) == (v44 & 2) >> 1)
                        {
                          a1 = v90;
                          if (v47 < 7)
                          {
                            goto LABEL_37;
                          }

                          v48 = *(v46 + 3);
                          if (!v48)
                          {
                            goto LABEL_37;
                          }
                        }

                        else
                        {
                          a1 = v90;
                          if (v47 < 5)
                          {
                            goto LABEL_37;
                          }

                          v48 = *(v46 + 2);
                          if (!v48)
                          {
                            goto LABEL_37;
                          }
                        }

                        v58 = &v45[v48 + *&v45[v48]];
                        v59 = *(v43 + 4);
                        if (*v58 > v59)
                        {
                          v60 = &v58[4 * v59 + 4 + *&v58[4 * v59 + 4]];
                          v61 = &v60[-*v60];
                          v62 = *v61;
                          if (v62 >= 0xB && *(v61 + 5))
                          {
                            v63 = *&v60[*(v61 + 5)];
                            v64 = *(v34 + 3880);
                            if (!*(v34 + 3880))
                            {
                              goto LABEL_93;
                            }
                          }

                          else
                          {
                            v63 = 0xFFFF;
                            v64 = *(v34 + 3880);
                            if (!*(v34 + 3880))
                            {
                              goto LABEL_93;
                            }
                          }

                          if (v62 >= 0x11 && (v65 = *(v61 + 8)) != 0 && (v66 = &v60[v65 + *&v60[v65]], *v66 >= v64) && (v67 = *&v66[2 * v64 + 2], (v67 + 1) > 1u))
                          {
                            v68 = v67;
                          }

                          else
                          {
LABEL_93:
                            if (v63 == 0xFFFF)
                            {
                              v40 = 0.3;
                              goto LABEL_37;
                            }

                            v68 = v63;
                          }

                          v40 = v68 / 1000.0;
                        }
                      }
                    }
                  }
                }

LABEL_37:
                v31 = v93;
                if (v93 >= v40)
                {
                  v31 = v40;
                }

                v93 = v31;
              }

              v29 += 12;
              goto LABEL_41;
            }

            break;
          }

          a2 = v88;
          if (*(a1 + 13))
          {
            v83 = sub_10E2904(v88);
          }

LABEL_16:
          v18 = v82;
        }

        if (++v99 >= v83)
        {
          goto LABEL_129;
        }
      }

      ++*(a1 + 288);
    }

    else
    {
      LODWORD(v87) = 0;
    }

LABEL_129:
    *(a1 + 284) += v87;
    ++*(a1 + 272);
    *(a1 + 248) = sub_7EA60(v109);
    if (v100)
    {
      v101 = v100;
      operator delete(v100);
    }

    if (v103)
    {
      v104 = v103;
      operator delete(v103);
    }
  }

  if (v105)
  {
    v106 = v105;
    operator delete(v105);
  }

  if (v107)
  {
    v108 = v107;
    operator delete(v107);
  }
}

void sub_10EB818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  v36 = *(v34 - 200);
  if (v36)
  {
    *(v34 - 192) = v36;
    operator delete(v36);
    v37 = *(v34 - 176);
    if (!v37)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v37 = *(v34 - 176);
    if (!v37)
    {
      goto LABEL_3;
    }
  }

  *(v34 - 168) = v37;
  operator delete(v37);
  _Unwind_Resume(exception_object);
}

void sub_10EB90C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_10E2904(a2);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v5)
  {
    if (!(v5 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a1 + 24) == 1)
  {
    sub_10F11A8(v121);
    v6 = sub_10E2904(a2);
    if (v6)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v7 = 0;
    v8 = sub_10E2C7C(a2);
    v9 = *(v8 + 104) - *(v8 + 96);
    if ((v9 & 0x3FFFFFFFCLL) != 0)
    {
      v10 = 0;
      v110 = (v9 >> 2);
      do
      {
        v120 = v10;
        v111 = v10;
        if (((*(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          v11 = 0;
          v131 = __p;
          v129 = v128;
          v132 = 0;
          v123 = v122;
          do
          {
            v13 = &v121[v11];
            if (*&v121[v11 + 16])
            {
              v14 = *(v13 + 3);
              if (v14 >= 0x80)
              {
                v12 = &v121[v11];
                operator delete(*&v121[v11]);
                v12[5] = 0;
                *v12 = &unk_2290750;
                v12[1] = 0;
                v12[2] = 0;
                v12[3] = 0;
              }

              else if (v14)
              {
                *(v13 + 2) = 0;
                memset(*&v121[v11], 128, v14 + 8);
                *(*&v121[v11] + v14) = -1;
                v15 = *(v13 + 3);
                v16 = v15 - (v15 >> 3);
                v17 = v15 == 7;
                v18 = 6;
                if (!v17)
                {
                  v18 = v16;
                }

                *&v121[v11 + 40] = v18 - *(v13 + 2);
              }
            }

            v11 += 48;
          }

          while (v11 != 768);
          v125 = __src;
          v127 = 0;
          v116[0] = 0;
          sub_10EA4D0(v121, &v120, v116);
          if (v132)
          {
            v19 = 1.79769313e308;
            do
            {
              v20 = v122 + 16 * *v128;
              v119 = *v20;
              v21 = *(v20 + 1);
              v22 = v125;
              if (v125 >= v126)
              {
                v24 = __src;
                v25 = v125 - __src;
                v26 = (v125 - __src) >> 2;
                v27 = v26 + 1;
                if ((v26 + 1) >> 62)
                {
                  sub_1794();
                }

                v28 = v126 - __src;
                if ((v126 - __src) >> 1 > v27)
                {
                  v27 = v28 >> 1;
                }

                if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v29 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v29 = v27;
                }

                if (v29)
                {
                  if (!(v29 >> 62))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v30 = (4 * v26);
                v31 = &v30[-((v125 - __src) >> 2)];
                *v30 = *v128;
                v23 = (v30 + 1);
                memcpy(v31, v24, v25);
                __src = v31;
                v125 = v23;
                v126 = 0;
                if (v24)
                {
                  operator delete(v24);
                }
              }

              else
              {
                *v125 = *v128;
                v23 = v22 + 4;
              }

              v125 = v23;
              v32 = v128;
              *(__p + *v128) = -1;
              v33 = --v132;
              if (v132)
              {
                v34 = &v32[2 * v33];
                *v32 = *v34;
                v32[1] = *(v34 + 1);
                v35 = v128;
                *(__p + *v128) = 0;
                v36 = v132;
                if (v132 >= 2)
                {
                  v37 = 0;
                  v38 = 0;
                  v39 = 1;
                  do
                  {
                    v40 = v37 + 5;
                    if (v40 >= v36)
                    {
                      v41 = v36;
                    }

                    else
                    {
                      v41 = v40;
                    }

                    if (v40 <= v39)
                    {
                      break;
                    }

                    v42 = v38;
                    v43 = v35[2 * v38 + 1];
                    v44 = &v35[2 * v39 + 1];
                    v38 = -1;
                    v45 = v43;
                    do
                    {
                      v47 = *v44;
                      v44 += 2;
                      v46 = v47;
                      if (v47 < v45)
                      {
                        v45 = v46;
                        v38 = v39;
                      }

                      ++v39;
                    }

                    while (v39 < v41);
                    if (v38 >= v36)
                    {
                      break;
                    }

                    v48 = 2 * v38;
                    v49 = &v35[v48];
                    v50 = 16 * v42;
                    v51 = v35 + v50;
                    v52 = *v49;
                    *v49 = *v51;
                    *v51 = v52;
                    v53 = *(v49 + 1);
                    *(v49 + 1) = v43;
                    *(v51 + 1) = v53;
                    v35 = v128;
                    v54 = *(v128 + v48 * 8);
                    v55 = __p;
                    v56 = *(v128 + v50);
                    LODWORD(v50) = *(__p + v54);
                    *(__p + v54) = *(__p + v56);
                    v55[v56] = v50;
                    v37 = 4 * v38;
                    v39 = (4 * v38) | 1;
                    v36 = v132;
                  }

                  while (v39 < v132);
                }
              }

              v129 -= 16;
              if (v21 > *(a1 + 32))
              {
                break;
              }

              v57 = v7;
              if (v21 <= *(a1 + 40))
              {
                *(v7 + ((v119 >> 3) & 0x1FFFFFF8)) |= 1 << v119;
              }

              sub_10E2918(a2, &v119, v116);
              v58 = v117;
              v59 = v118;
              if (v117 != v118)
              {
                v60 = v116[0];
                v61 = v116[1];
                while (1)
                {
                  v63 = (*v60 + 176 * v58);
                  if (sub_10DF6A4(v63))
                  {
                    v64 = sub_10DF6C4(v63);
                    v135[0] = sub_3F80(v63);
                    v65 = (*v64 - **v64);
                    if (*v65 >= 9u && (v66 = v65[4]) != 0)
                    {
                      v67 = *(*v64 + v66);
                    }

                    else
                    {
                      v67 = 0;
                    }

                    v133[0] = (v67 + v21);
                    sub_10EA4D0(v121, v135, v133);
                    if (*(a1 + 48) != 1)
                    {
                      break;
                    }

                    v68 = (*v64 - **v64);
                    if (*v68 < 0x2Fu)
                    {
                      break;
                    }

                    v69 = v68[23];
                    if (!v69 || *(*v64 + v69) == 32)
                    {
                      break;
                    }
                  }

LABEL_62:
                  v58 = *(*v61 + 4 * v58);
                  if (v58 == v59)
                  {
                    goto LABEL_24;
                  }
                }

                v70 = v21;
                v71 = a1;
                v72 = *(a1 + 10024);
                v73 = v64[4];
                v134 = 1;
                v135[0] = v73;
                v133[0] = &v134;
                v133[1] = v135;
                v74 = *(v72 + 3856) + 1;
                *(v72 + 3856) = v74;
                if (*v72)
                {
                  if (*(v72 + 2128) == v73)
                  {
                    ++*(v72 + 3864);
                    *(v72 + 2136) = v74;
                    v75 = *(v72 + 2144);
                    if (!v75)
                    {
                      goto LABEL_57;
                    }

LABEL_98:
                    v82 = (v75 + *v75);
                    v83 = (v82 - *v82);
                    v62 = 0.0;
                    if (*v83 >= 0xBu)
                    {
                      v57 = 0;
                      if (!v83[5])
                      {
                        goto LABEL_59;
                      }

                      v84 = (v82 + v83[5] + *(v82 + v83[5]));
                      if (*v84 <= WORD2(v73))
                      {
                        goto LABEL_59;
                      }

                      v85 = 2 * WORD2(v73);
                      v86 = &v84[v85 + 1];
                      if (!*v86)
                      {
                        v57 = 0;
                        goto LABEL_59;
                      }

                      v87 = BYTE2(v84[v85 + 2]);
                      v88 = sub_2B3284(v72, *v86, 1);
                      if (v88)
                      {
                        v89 = &v88[-*v88];
                        v90 = *v89;
                        if (((v73 & 0xFF000000000000) == 0x1000000000000) == (v87 & 2) >> 1)
                        {
                          if (v90 >= 7)
                          {
                            v91 = *(v89 + 3);
                            if (v91)
                            {
                              goto LABEL_110;
                            }
                          }

LABEL_115:
                          v57 = 0;
                        }

                        else
                        {
                          if (v90 < 5)
                          {
                            goto LABEL_115;
                          }

                          v91 = *(v89 + 2);
                          if (!v91)
                          {
                            goto LABEL_115;
                          }

LABEL_110:
                          v92 = &v88[v91 + *&v88[v91]];
                          v93 = *(v86 + 4);
                          v57 = 0;
                          if (*v92 > v93)
                          {
                            v94 = &v92[4 * v93 + 4 + *&v92[4 * v93 + 4]];
                            v95 = &v94[-*v94];
                            v96 = *v95;
                            if (v96 >= 0xB && *(v95 + 5))
                            {
                              v97 = *&v94[*(v95 + 5)];
                              v98 = *(v72 + 3880);
                              if (!*(v72 + 3880))
                              {
                                goto LABEL_121;
                              }
                            }

                            else
                            {
                              v97 = 0xFFFF;
                              v98 = *(v72 + 3880);
                              if (!*(v72 + 3880))
                              {
                                goto LABEL_121;
                              }
                            }

                            if (v96 >= 0x11 && (v99 = *(v95 + 8)) != 0 && (v100 = &v94[v99 + *&v94[v99]], *v100 >= v98) && (v101 = *&v100[2 * v98 + 2], (v101 + 1) > 1u))
                            {
                              v102 = v101;
LABEL_123:
                              v62 = v102 / 1000.0;
                            }

                            else
                            {
LABEL_121:
                              if (v97 != 0xFFFF)
                              {
                                v102 = v97;
                                goto LABEL_123;
                              }

                              v62 = 0.3;
                            }
                          }
                        }

LABEL_59:
                        if (v62 < v19)
                        {
                          v19 = v62;
                        }

                        a1 = v71;
                        v21 = v70;
                        goto LABEL_62;
                      }
                    }

LABEL_58:
                    v57 = 0;
                    goto LABEL_59;
                  }

                  if (*(v72 + 2152) == v73)
                  {
                    ++*(v72 + 3864);
                    *(v72 + 2160) = v74;
                    v75 = *(v72 + 2168);
                    if (v75)
                    {
                      goto LABEL_98;
                    }
                  }

                  else if (*(v72 + 2176) == v73)
                  {
                    ++*(v72 + 3864);
                    *(v72 + 2184) = v74;
                    v75 = *(v72 + 2192);
                    if (v75)
                    {
                      goto LABEL_98;
                    }
                  }

                  else
                  {
                    if (*(v72 + 2200) != v73)
                    {
                      v112 = *(v72 + 2160);
                      v76 = *(v72 + 2136);
                      v113 = *(v72 + 2208);
                      v114 = *(v72 + 2184);
                      v75 = sub_2D52A4(*v72, 22, v73, 1);
                      if (v76 >= v74)
                      {
                        v77 = v74;
                      }

                      else
                      {
                        v77 = v76;
                      }

                      v78 = 88;
                      if (v76 >= v74)
                      {
                        v78 = 0;
                      }

                      if (v112 < v77)
                      {
                        v77 = v112;
                        v78 = 89;
                      }

                      if (v114 < v77)
                      {
                        v78 = 90;
                        v77 = v114;
                      }

                      v79 = v113 >= v77;
                      v80 = 91;
                      if (v79)
                      {
                        v80 = v78;
                      }

                      v81 = v72 + 16 + 24 * v80;
                      *v81 = v135[0];
                      *(v81 + 8) = *(v72 + 3856);
                      *(v81 + 16) = v75;
                      if (!v75)
                      {
                        sub_31DB68(v133);
                        goto LABEL_57;
                      }

                      goto LABEL_98;
                    }

                    ++*(v72 + 3864);
                    *(v72 + 2208) = v74;
                    v75 = *(v72 + 2216);
                    if (v75)
                    {
                      goto LABEL_98;
                    }
                  }
                }

LABEL_57:
                v62 = 0.0;
                goto LABEL_58;
              }

LABEL_24:
              v7 = v57;
            }

            while (v132);
            if (v19 != 1.79769313e308)
            {
              v103 = __src;
              v104 = v125;
              if (__src != v125)
              {
                v105 = v122;
                v106 = *(a1 + 40);
                do
                {
                  v107 = &v105[16 * *v103];
                  if (*(v107 + 1) > v106)
                  {
                    break;
                  }

                  v108 = *v107;
                  v109 = *(8 * v108);
                  if (v19 < v109)
                  {
                    v109 = v19;
                  }

                  *(8 * v108) = v109;
                  ++v103;
                }

                while (v103 != v104);
              }
            }
          }
        }

        v10 = v111 + 1;
      }

      while (v111 + 1 != v110);
    }

    if (__p)
    {
      v131 = __p;
      operator delete(__p);
    }

    if (v128)
    {
      v129 = v128;
      operator delete(v128);
    }

    if (__src)
    {
      v125 = __src;
      operator delete(__src);
    }

    if (v122)
    {
      v123 = v122;
      operator delete(v122);
    }

    sub_360988(v121);
  }
}

void sub_10EC328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (v25)
  {
    operator delete(v25);
  }

  sub_584EC4(&a25);
  if (__p)
  {
    *(a9 + 8) = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10EC3A8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_10E2904(a2);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v5)
  {
    if (!(v5 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v6 = a1 + 176;
  if (*(a1 + 176) == 1)
  {
    if (*(a1 + 224) < 1)
    {
      v52 = 0;
      LODWORD(v51) = 0;
    }

    else
    {
      v52 = *(a1 + 208) & 1;
      v51 = (*(a1 + 208) >> 1) & 1;
    }

    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    memset(v82, 0, sizeof(v82));
    memset(v81, 0, sizeof(v81));
    v7 = sub_10E2904(a2);
    v8 = sub_10E2904(a2);
    sub_10EDE60(v81, v7, 2 * v8, 0);
    v45 = (a1 + 176);
    v71 = v81;
    sub_10F1338(v72, 0x400u);
    v53 = a1;
    v46 = a3;
    v9 = sub_10E2C7C(a2);
    v10 = *(v9 + 104) - *(v9 + 96);
    if ((v10 & 0x3FFFFFFFCLL) != 0)
    {
      v11 = 0;
      v47 = (v10 >> 2);
      do
      {
        LODWORD(__p) = v11;
        if (v11 >= ((v82[1] - v82[0]) >> 2))
        {
          v12 = (v82[1] - v82[0]) >> 2;
          v13 = v11 + 1;
          if (v12 <= v11)
          {
            LODWORD(v65) = -1;
            sub_569AC(v82, v13 - v12, &v65);
          }

          LODWORD(v65) = 0;
          v14 = (v84 - *(&v83 + 1)) >> 2;
          if (v14 <= v11)
          {
            sub_569AC(&v83 + 8, v13 - v14, &v65);
          }

          else if (v13 < v14)
          {
            *&v84 = *(&v83 + 1) + 4 * v13;
          }
        }

        sub_10E2918(a2, &__p, &v65);
        v49 = v11;
        v15 = v67;
        v16 = p_p;
        if (v67 != p_p)
        {
          v17 = v66;
          v54 = v65;
          do
          {
            v18 = (*v54 + 176 * v15);
            if (sub_10DF6A4(v18))
            {
              v19 = sub_10DF6C4(v18);
              if (v52)
              {
                v20 = sub_3F80(v18);
                v21 = v20;
                v22 = (*v19 - **v19);
                if (*v22 >= 9u && (v23 = v22[4]) != 0)
                {
                  v24 = *(*v19 + v23);
                }

                else
                {
                  v24 = 0;
                }

                v25 = __p;
                if (__p <= v20)
                {
                  v26 = v20;
                }

                else
                {
                  v26 = __p;
                }

                if (v26 >= ((v82[1] - v82[0]) >> 2))
                {
                  v27 = (v82[1] - v82[0]) >> 2;
                  v28 = v26 + 1;
                  if (v27 <= v26)
                  {
                    LODWORD(v62) = -1;
                    if (v28 <= v27)
                    {
                      if (v28 < v27)
                      {
                        v82[1] = v82[0] + 4 * v28;
                      }
                    }

                    else
                    {
                      sub_569AC(v82, v28 - v27, &v62);
                    }
                  }

                  LODWORD(v62) = 0;
                  v29 = (v84 - *(&v83 + 1)) >> 2;
                  if (v28 <= v29)
                  {
                    if (v28 < v29)
                    {
                      *&v84 = *(&v83 + 1) + 4 * v28;
                    }
                  }

                  else
                  {
                    sub_569AC(&v83 + 8, v28 - v29, &v62);
                  }
                }

                v50 = v50 & 0xFFFFFFFF00000000 | v25;
                sub_10F14B0(v82, v21, v50, v24, &v56);
                ++*(*(&v83 + 1) + 4 * v21);
              }

              if (v51)
              {
                v30 = __p;
                v31 = sub_3F80(v18);
                v32 = v31;
                v33 = (*v19 - **v19);
                if (*v33 >= 9u && (v34 = v33[4]) != 0)
                {
                  v35 = *(*v19 + v34);
                }

                else
                {
                  v35 = 0;
                }

                if (v31 <= v30)
                {
                  v36 = v30;
                }

                else
                {
                  v36 = v31;
                }

                if (v36 >= ((v82[1] - v82[0]) >> 2))
                {
                  v37 = (v82[1] - v82[0]) >> 2;
                  v38 = v36 + 1;
                  if (v37 <= v36)
                  {
                    LODWORD(v62) = -1;
                    if (v38 <= v37)
                    {
                      if (v38 < v37)
                      {
                        v82[1] = v82[0] + 4 * v38;
                      }
                    }

                    else
                    {
                      sub_569AC(v82, v38 - v37, &v62);
                    }
                  }

                  LODWORD(v62) = 0;
                  v39 = (v84 - *(&v83 + 1)) >> 2;
                  if (v38 <= v39)
                  {
                    if (v38 < v39)
                    {
                      *&v84 = *(&v83 + 1) + 4 * v38;
                    }
                  }

                  else
                  {
                    sub_569AC(&v83 + 8, v38 - v39, &v62);
                  }
                }

                v6 = v6 & 0xFFFFFFFF00000000 | v32;
                sub_10F14B0(v82, v30, v6, v35, &v56);
                ++*(*(&v83 + 1) + 4 * v30);
              }

              v40 = sub_10EE11C(v53, v18);
              if (v40)
              {
                v41 = *(v53 + 208);
                if (v41 & 1) != 0 && (v40)
                {
                  v42 = v40;
                  v56 = xmmword_22907C0;
                  LODWORD(v62) = __p;
                  sub_10F1724(v72, &v62, &v56);
                  v41 = *(v53 + 208);
                  LOBYTE(v40) = v42;
                }

                if ((v41 & 2) != 0 && (v40 & 2) != 0)
                {
                  v43 = sub_3F80(v18);
                  v56 = xmmword_22AFB10;
                  LODWORD(v62) = v43;
                  sub_10F1724(v72, &v62, &v56);
                }
              }
            }

            v15 = *(*v17 + 4 * v15);
          }

          while (v15 != v16);
        }

        v11 = v49 + 1;
      }

      while (v49 + 1 != v47);
    }

    v44 = sub_10E2904(a2);
    v62 = 0;
    v63 = 0;
    v64 = 0;
    if (v44)
    {
      if ((v44 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    __p = 0;
    v60 = 0;
    v61 = 0;
    v65 = v45;
    v66 = v46;
    v67 = &v62;
    v68 = a2;
    v69 = v53;
    p_p = &__p;
    *&v56 = a2;
    *(&v56 + 1) = v53;
    v57 = &v62;
    v58 = v45;
    sub_10EE470(&v71, &v55, &v65, &v56);
    if (__p)
    {
      v60 = __p;
      operator delete(__p);
    }

    if (v62)
    {
      v63 = v62;
      operator delete(v62);
    }

    if (v79)
    {
      v80 = v79;
      operator delete(v79);
    }

    if (v77)
    {
      v78 = v77;
      operator delete(v77);
    }

    if (v75)
    {
      v76 = v75;
      operator delete(v75);
    }

    if (v73)
    {
      v74 = v73;
      operator delete(v73);
    }

    sub_360988(v72);
    sub_F96228(v81);
  }
}

void sub_10ECA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a33)
  {
    operator delete(a33);
  }

  sub_404190(&a42);
  sub_F96228(&STACK[0x480]);
  v43 = *a11;
  if (*a11)
  {
    *(a11 + 8) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10ECAB8@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v34 = sub_10E2C7C(a1);
  sub_10E9D7C(v35, 0x400u);
  v4 = sub_3068E4(a1);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    do
    {
      v7 = *v5;
      v33 = 0;
      v44 = v7;
      sub_10E9EC8(v35, &v44, &v33);
      v5 += 50;
    }

    while (v5 != v6);
  }

  sub_10EE8CC(&v34);
  v8 = sub_10E2904(a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (v8)
  {
    if (!(v8 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v9 = sub_10E2C7C(a1);
  v10 = *(v9 + 104) - *(v9 + 96);
  if ((v10 & 0x3FFFFFFFCLL) != 0)
  {
    v11 = 0;
    v12 = (v10 >> 2);
    v13 = v36;
    do
    {
LABEL_16:
      v19 = 0;
      v21 = 265 * ((~v11 + (v11 << 21)) ^ ((~v11 + (v11 << 21)) >> 24));
      v22 = 2147483649u * ((21 * (v21 ^ (v21 >> 14))) ^ ((21 * (v21 ^ (v21 >> 14))) >> 28));
      v23 = &v35[3 * (((BYTE1(v22) ^ BYTE2(v22)) ^ BYTE3(v22)) & 0xF)];
      v24 = v22 >> 7;
      v25 = v23[3];
      v26 = *v23;
      v27 = 0x101010101010101 * (v22 & 0x7F);
      for (i = v24; ; i = v19 + v14)
      {
        v14 = i & v25;
        v15 = *(v26 + (i & v25));
        v16 = ((v15 ^ v27) - 0x101010101010101) & ~(v15 ^ v27) & 0x8080808080808080;
        if (v16)
        {
          break;
        }

LABEL_12:
        if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
        {
LABEL_15:
          *(8 * v11++) = 0x7FFFFFFFFFFFFFFFLL;
          if (v11 == v12)
          {
            goto LABEL_24;
          }

          goto LABEL_16;
        }

        v19 += 8;
      }

      v17 = v23[1];
      while (1)
      {
        v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v25;
        if (v11 == *(v17 + 8 * v18))
        {
          break;
        }

        v16 &= v16 - 1;
        if (!v16)
        {
          goto LABEL_12;
        }
      }

      if (v25 == v18)
      {
        goto LABEL_15;
      }

      for (j = 0; ; v24 = j + v29)
      {
        v29 = v24 & v25;
        v30 = ((*(v26 + v29) ^ v27) - 0x101010101010101) & ~(*(v26 + v29) ^ v27) & 0x8080808080808080;
        if (v30)
        {
          break;
        }

LABEL_18:
        j += 8;
      }

      while (1)
      {
        v31 = (v29 + (__clz(__rbit64(v30)) >> 3)) & v25;
        if (v11 == *(v17 + 8 * v31))
        {
          break;
        }

        v30 &= v30 - 1;
        if (!v30)
        {
          goto LABEL_18;
        }
      }

      *(8 * v11++) = v13[2 * *(v17 + 8 * v31 + 4) + 1];
    }

    while (v11 != v12);
  }

LABEL_24:
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  return sub_360988(v35);
}

void sub_10ECDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    *(v12 + 8) = v11;
    operator delete(v11);
    sub_404190(&a11);
    _Unwind_Resume(a1);
  }

  sub_404190(&a11);
  _Unwind_Resume(a1);
}

void sub_10ECE04(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>)
{
  v162.n128_u64[0] = (((*(a2 + 9) >> 16) & 0xFFFF0000 | (*(a2 + 9) << 32) | (2 * ((*(a2 + 9) & 0xFF000000000000) == 0))) + 4 * *(a2 + 41)) & 0xFFFFFFFFFFFFFFFELL | (*(a2 + 88) >> 1) & 1;
  if (sub_10E2C94(a3, v162.n128_u64, 0, 1))
  {
    if (*(a1 + 12) != 1)
    {
      goto LABEL_51;
    }

    v14 = *(a1 + 16);
    v15 = *(a1 + 10088);
    LODWORD(v178) = 0x7FFFFFFF;
    v162 = 0u;
    v163 = 0u;
    __asm { FMOV            V0.2D, #1.0 }

    v164 = _Q0;
    *&v165 = 0x3FF0000000000000;
    BYTE8(v165) = 1;
    sub_10B54B8((a1 + 4600), &v162, a2, 0x3B9ACA00u, v14, &v178, v15);
    if ((BYTE8(v165) & 1) == 0)
    {
      goto LABEL_51;
    }

    v22 = sub_F8634C(&v162, &v164, v21);
    if (v163 + v22 == -1 || DWORD1(v163) + HIDWORD(v22) == 0x7FFFFFFF || *(&v163 + 1) + v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_51;
    }

    sub_438BE4((a1 + 10048), a2[2] & 0xFFFFFFFFFFFFFFLL, &v162);
    v24 = v162.n128_u64[0];
    if (v162.n128_u64[0] == v162.n128_u64[1])
    {
      sub_438BE4((a1 + 10048), *(a2 + 9) & 0xFFFFFFFFFFFFFFLL, &v178);
      v25 = v178 == *(&v178 + 1);
      if (v178)
      {
        *(&v178 + 1) = v178;
        operator delete(v178);
      }

      v24 = v162.n128_u64[0];
      if (!v162.n128_u64[0])
      {
        goto LABEL_10;
      }
    }

    else
    {
      v25 = 0;
      if (!v162.n128_u64[0])
      {
        goto LABEL_10;
      }
    }

    v162.n128_u64[1] = v24;
    operator delete(v24);
LABEL_10:
    if (v25)
    {
      v26 = a2[3];
      v164 = a2[2];
      v165 = v26;
      *v166 = a2[4];
      *&v166[12] = *(a2 + 76);
      v27 = a2[1];
      v162 = *a2;
      v163 = v27;
      a6[1] = 0;
      a6[2] = 0;
      *a6 = 0;
      operator new();
    }

LABEL_51:
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    return;
  }

  v28 = *(a1 + 16);
  v29 = *(a1 + 10088);
  LODWORD(v178) = 0x7FFFFFFF;
  v162 = 0u;
  v163 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v146 = _Q0;
  v164 = _Q0;
  *&v165 = 0x3FF0000000000000;
  BYTE8(v165) = 1;
  sub_10B54B8((a1 + 4600), &v162, a2, 0x3B9ACA00u, v28, &v178, v29);
  if ((BYTE8(v165) & 1) == 0)
  {
    goto LABEL_51;
  }

  v32 = sub_F8634C(&v162, &v164, v31);
  if (v163 + v32 == -1 || DWORD1(v163) + HIDWORD(v32) == 0x7FFFFFFF || *(&v163 + 1) + v33 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_51;
  }

  v34 = *(a2 + 1);
  v35 = (v34 - *v34);
  v36 = *v35;
  if (*(a2 + 38))
  {
    if (v36 < 5)
    {
      goto LABEL_26;
    }

    v37 = v35[2];
    if (!v35[2])
    {
      goto LABEL_26;
    }

LABEL_22:
    v38 = *(v34 + v37);
    v39 = *(a2 + 6);
    v40 = (v39 - *v39);
    v41 = *v40;
    if (*(a2 + 78))
    {
      goto LABEL_27;
    }

LABEL_23:
    if (v41 >= 5)
    {
      v42 = v40[2];
      if (!v40[2])
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

LABEL_30:
    v42 = 0;
    goto LABEL_31;
  }

  if (v36 >= 9)
  {
    v37 = v35[4];
    if (v35[4])
    {
      goto LABEL_22;
    }
  }

LABEL_26:
  v38 = 0;
  v39 = *(a2 + 6);
  v40 = (v39 - *v39);
  v41 = *v40;
  if (!*(a2 + 78))
  {
    goto LABEL_23;
  }

LABEL_27:
  if (v41 < 9)
  {
    goto LABEL_30;
  }

  v42 = v40[4];
  if (v40[4])
  {
LABEL_29:
    v42 = *(v39 + v42);
  }

LABEL_31:
  v43 = v38 + 18000;
  v44 = (v38 + 18000) >> 5;
  v45 = v38 - 18000;
  if (v44 < 0x465)
  {
    v45 = v43;
  }

  v46 = v42 - v45;
  if (v46 > 18000)
  {
    v46 -= 36000;
  }

  if (v46 < -17999)
  {
    v46 += 36000;
  }

  v47 = fabs(v46 / 100.0);
  if (v36 >= 0x11 && (v48 = v35[8]) != 0 && (*(v34 + v48) & 4) != 0 || (v49 = 0.0, v41 >= 0x11) && v40[8] && (*(v39 + v40[8]) & 4) != 0)
  {
    v49 = v47;
  }

  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_51;
  }

  if (*(a1 + 104) < a4)
  {
    goto LABEL_51;
  }

  v162.n128_u64[0] = (((*(a2 + 4) >> 16) & 0xFFFF0000 | (*(a2 + 4) << 32) | (2 * ((a2[2] & 0xFF000000000000) == 0))) + 4 * *(a2 + 20)) & 0xFFFFFFFFFFFFFFFELL | *(a2 + 88) & 1;
  v50 = sub_10E0980(a3, v162.n128_u64);
  if (v50 != -1)
  {
    v51 = *(a1 + 80);
    if (v51)
    {
      if ((*(*a5 + 8 * v50) & v51) == 0)
      {
        goto LABEL_51;
      }
    }
  }

  if (!sub_10F0278(a1, a2, a1 + 56, a7))
  {
    goto LABEL_51;
  }

  v143 = a5;
  v177 = (((*(a2 + 9) >> 16) & 0xFFFF0000 | (*(a2 + 9) << 32) | (2 * ((*(a2 + 9) & 0xFF000000000000) == 0))) + 4 * *(a2 + 41)) & 0xFFFFFFFFFFFFFFFELL | (*(a2 + 88) >> 1) & 1;
  *(a1 + 21432) = *(a1 + 21424);
  *(a1 + 21408) = *(a1 + 21400);
  *(a1 + 21448) = 0;
  *(a1 + 21352) = *(a1 + 21344);
  v52 = -768;
  do
  {
    v54 = a1 + v52;
    if (*(a1 + v52 + 21360))
    {
      v55 = *(v54 + 21368);
      if (v55 >= 0x80)
      {
        v53 = (a1 + v52);
        operator delete(*(v54 + 21344));
        *(v54 + 21344) = &unk_2290750;
        v53[2673] = 0;
        v53[2669] = 0;
        v53[2671] = 0;
        v53[2670] = 0;
      }

      else if (v55)
      {
        *(v54 + 21360) = 0;
        memset(*(v54 + 21344), 128, v55 + 8);
        *(*(v54 + 21344) + v55) = -1;
        v56 = *(v54 + 21368);
        if (v56 == 7)
        {
          v57 = 6;
        }

        else
        {
          v57 = v56 - (v56 >> 3);
        }

        *(a1 + v52 + 21384) = v57 - *(v54 + 21360);
      }
    }

    v52 += 48;
  }

  while (v52);
  *(a1 + 21376) = *(a1 + 21368);
  *(a1 + 21392) = 0;
  v162 = 0uLL;
  v58 = a2[3];
  v165 = a2[2];
  *v166 = v58;
  *&v166[16] = a2[4];
  *&v166[28] = *(a2 + 76);
  v59 = a2[1];
  v163 = *a2;
  v164 = v59;
  v167 = 0x7FFFFFFFFFFFFFFFLL;
  v168 = v47;
  v169 = v49;
  sub_10F06C8(a1 + 20576, &v177, &v162);
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v172 = 0;
  v171 = 0;
  v173 = 0;
  if (!*(a1 + 21448))
  {
    v140 = 0;
    v141 = 0;
    v142 = 0;
    goto LABEL_170;
  }

  __src = 0;
  v145 = 0;
  do
  {
    v60 = *(a1 + 21344) + 144 * **(a1 + 21400);
    v170 = *v60;
    v61 = *(v60 + 8);
    v62 = *(v60 + 12);
    v63 = *(v60 + 16);
    v64 = sub_3116D0((v60 + 24));
    v65 = *(v60 + 96);
    if (sub_4389AC((a1 + 10048), (v60 + 64)))
    {
      v66 = 1;
    }

    else
    {
      sub_438BE4((a1 + 10048), v65 & 0xFFFFFFFFFFFFFFLL, &v162);
      v66 = v162.n128_u64[0] != v162.n128_u64[1];
      if (v162.n128_u64[0])
      {
        v162.n128_u64[1] = v162.n128_u64[0];
        operator delete(v162.n128_u64[0]);
      }
    }

    v67 = *(v60 + 120);
    v68 = *(v60 + 128);
    v69 = *(v60 + 136);
    sub_DD38(a1 + 21368, *(a1 + 21400));
    sub_10F2574((a1 + 21400));
    v70 = (*(a1 + 21376) - *(a1 + 21368)) >> 2;
    v71 = *(a1 + 100);
    if (v71 <= v70 || v66)
    {
      if (v71 <= v70)
      {
        break;
      }
    }

    else
    {
      if (v68 >= *(a1 + 128) || v69 >= *(a1 + 120) || v63 >= *(a1 + 112) || v67 != 0x7FFFFFFFFFFFFFFFLL && v67 > *(a1 + 160))
      {
        continue;
      }

      if (sub_10E2C94(a3, &v170, 0, 1))
      {
        v72 = sub_10E0980(a3, &v170);
        if (v72 == -1 || (v73 = *(a1 + 88)) == 0 || (*(*v143 + 8 * v72) & v73) != 0)
        {
          sub_F6BEE8(&v162);
          v148 = 0;
          v150 = 0;
          v151 = 0;
          v149 = 0;
          v152 = 0;
          v153 = 0x3FF0000000000000;
          v154 = 1;
          v155 = 0;
          v156 = 0;
          v157 = 0;
          v158 = -29536;
          v160 = 0;
          v161 = 0;
          v159 = 3;
          sub_F68F20(&v162, &v148);
          sub_F6901C(&v162, &v148);
          for (i = v170; i != v177; i = (((*(v74 + 56) >> 16) & 0xFFFF0000 | (*(v74 + 56) << 32) | (2 * ((*(v74 + 56) & 0xFF000000000000) == 0))) + 4 * *(v74 + 104)) & 0xFFFFFFFFFFFFFFFELL | *(v74 + 112) & 1)
          {
            sub_F98EF8(a1 + 20576, &i, &v178);
            v74 = *(a1 + 21344) + 144 * *(*(&v179 + 1) + 8);
            sub_F6C3B8(&v162, (v74 + 24), 0);
          }

          sub_F98EF8(a1 + 20576, &v177, &v178);
          sub_F6C3B8(&v162, (*(a1 + 21344) + 144 * *(*(&v179 + 1) + 8) + 24), 0);
          v75 = sub_5FC64(&v162);
          v76 = sub_445EF4(&v162);
          if (v75 != v76)
          {
            v77 = (v76 - 96);
            if (v76 - 96 > v75)
            {
              v78 = v75 + 96;
              do
              {
                v180 = *(v78 - 64);
                v181 = *(v78 - 48);
                *v182 = *(v78 - 32);
                *&v182[16] = *(v78 - 16);
                v178 = *(v78 - 96);
                v179 = *(v78 - 80);
                v79 = v77[1];
                *(v78 - 96) = *v77;
                *(v78 - 80) = v79;
                v81 = v77[3];
                v80 = v77[4];
                v82 = v77[2];
                *(v78 - 20) = *(v77 + 76);
                *(v78 - 48) = v81;
                *(v78 - 32) = v80;
                *(v78 - 64) = v82;
                v77[4] = *v182;
                *(v77 + 76) = *&v182[12];
                *v77 = v178;
                v77[3] = v181;
                v77[2] = v180;
                v77[1] = v179;
                v77 -= 6;
                _CF = v78 >= v77;
                v78 += 96;
              }

              while (!_CF);
            }
          }

          if (*(a1 + 15) == 1)
          {
            sub_11D47CC(&v162, *(a1 + 16), 0x7FFFFFFF, *(a1 + 10088), 0, (a1 + 15048), a1 + 20472);
          }

          sub_1165F34(&v162, &v178);
          v83 = v178;
          sub_34BE0(&v178);
          if (v83 == *(&v83 + 1))
          {
            v84 = sub_5FC64(&v162);
            for (j = sub_445EF4(&v162); v84 != j; v84 += 6)
            {
              v86 = v145 - __src;
              v87 = 0xAAAAAAAAAAAAAAABLL * ((v145 - __src) >> 5);
              v88 = v87 + 1;
              if (v87 + 1 > 0x2AAAAAAAAAAAAAALL)
              {
                sub_1794();
              }

              if (0x5555555555555556 * (-__src >> 5) > v88)
              {
                v88 = 0x5555555555555556 * (-__src >> 5);
              }

              if (0xAAAAAAAAAAAAAAABLL * (-__src >> 5) >= 0x155555555555555)
              {
                v89 = 0x2AAAAAAAAAAAAAALL;
              }

              else
              {
                v89 = v88;
              }

              if (v89)
              {
                if (v89 <= 0x2AAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_1808();
              }

              v90 = (32 * ((v145 - __src) >> 5));
              v91 = v84[1];
              *v90 = *v84;
              v90[1] = v91;
              v92 = v84[2];
              v93 = v84[3];
              v94 = v84[5];
              v90[4] = v84[4];
              v90[5] = v94;
              v90[2] = v92;
              v90[3] = v93;
              v145 = v90 + 6;
              memcpy((96 * v87 + 96 * (v86 / -96)), __src, v86);
              if (__src)
              {
                operator delete(__src);
              }

              __src = 96 * v87 + 96 * (v86 / -96);
            }
          }

          sub_4547F0(&v162);
          continue;
        }
      }

      if (v67 == 0x7FFFFFFFFFFFFFFFLL && v63 >= *(a1 + 168))
      {
        sub_31BA24(*(a1 + 10016), v64, &v171, 0, 1, 1);
        v96 = v171;
        if (v171 == v172)
        {
LABEL_117:
          v67 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          while (1)
          {
            v97 = (*v96 - **v96);
            if (*v97 < 0x2Fu)
            {
              break;
            }

            v98 = v97[23];
            if (!v98 || *(*v96 + v98) == 32)
            {
              break;
            }

            v96 += 5;
            if (v96 == v172)
            {
              goto LABEL_117;
            }
          }

          v67 = 0;
        }
      }

      sub_F90350(a1 + 296, v170, 0, &v174, 0);
      v99 = v174;
      if (v174 != v175)
      {
        v100 = v175;
        while (1)
        {
          v102 = *(v99 + 9);
          v103 = (v102 >> 16) & 0xFFFF0000 | (v102 << 32);
          v104 = (v102 & 0xFF000000000000) == 0;
          v105 = (v103 | (2 * v104)) + 4 * v99[41];
          *&v178 = v105 & 0xFFFFFFFFFFFFFFFELL | (*(v99 + 88) >> 1) & 1;
          v162.n128_u16[2] = WORD1(v105);
          v162.n128_u32[0] = HIDWORD(v105);
          v162.n128_u8[6] = (((v105 << 16) & 0xFFFF00000000 | HIDWORD(v105) | (v104 << 48)) ^ 0x1000000000000uLL) >> 48;
          if ((sub_10E2DA0(a3, v162.n128_u64) || sub_10F0278(a1, v99, a1 + 56, a7)) && (~*(v99 + 88) & 0x41) != 0 && !sub_10B8408(v99, *(a1 + 14)))
          {
            v106 = *(a1 + 16);
            v107 = *(a1 + 10088);
            v148 = 0x7FFFFFFF;
            v162 = 0u;
            v163 = 0u;
            v164 = v146;
            *&v165 = 0x3FF0000000000000;
            BYTE8(v165) = 1;
            sub_10B54B8((a1 + 4600), &v162, v99, 0x3B9ACA00u, v106, &v148, v107);
            if (BYTE8(v165))
            {
              v109 = sub_F8634C(&v162, &v164, v108);
              v111 = v163 + v109;
              if (v163 + v109 != -1 && DWORD1(v163) + HIDWORD(v109) != 0x7FFFFFFF)
              {
                v112 = *(&v163 + 1) + v110;
                if (*(&v163 + 1) + v110 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  break;
                }
              }
            }
          }

LABEL_123:
          v99 += 48;
          if (v99 == v100)
          {
            goto LABEL_69;
          }
        }

        v113 = v112 + v67;
        if (v67 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v113 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v114 = *(v99 + 1);
        v115 = (v114 - *v114);
        v116 = *v115;
        if (*(v99 + 38))
        {
          if (v116 >= 5)
          {
            v117 = v115[2];
            if (!v115[2])
            {
LABEL_142:
              v118 = *(v99 + 6);
              v119 = (v118 - *v118);
              v120 = *v119;
              if (*(v99 + 78))
              {
                if (v120 < 9)
                {
                  goto LABEL_149;
                }

                v121 = v119[4];
                if (!v121)
                {
                  goto LABEL_149;
                }

LABEL_148:
                v122 = *(v118 + v121);
              }

              else
              {
                if (v120 >= 5)
                {
                  v121 = v119[2];
                  if (v121)
                  {
                    goto LABEL_148;
                  }
                }

LABEL_149:
                v122 = 0;
              }

              v123 = v117 + 18000;
              v124 = (v117 + 18000) >> 5;
              v125 = v117 - 18000;
              if (v124 < 0x465)
              {
                v125 = v123;
              }

              v126 = v122 - v125;
              if (v126 > 18000)
              {
                v126 -= 36000;
              }

              if (v126 < -17999)
              {
                v126 += 36000;
              }

              v127 = 0.0;
              if (v116 >= 0x13)
              {
                v128 = v115[9];
                if (v128)
                {
                  LOWORD(v127) = *(v114 + v128);
                  v127 = *&v127;
                }
              }

              v129 = fabs(v126 / 100.0) + v127;
              v162.n128_u32[0] = v111 + v61;
              v162.n128_u32[1] = DWORD1(v163) + HIDWORD(v109) + v62;
              v162.n128_u64[1] = v112 + v63;
              v130 = *(v99 + 1);
              v163 = *v99;
              v164 = v130;
              v131 = *(v99 + 2);
              v132 = *(v99 + 3);
              v133 = *(v99 + 4);
              *&v166[28] = *(v99 + 38);
              *v166 = v132;
              *&v166[16] = v133;
              v165 = v131;
              v167 = v113;
              v168 = v68 + v129;
              v134 = *(v99 + 1);
              if (v134 && (v135 = (v134 - *v134), *v135 >= 0x11u) && (v136 = v135[8]) != 0 && (*(v134 + v136) & 4) != 0 || (v137 = *(v99 + 6), v101 = 0.0, v137) && (v138 = (v137 - *v137), *v138 >= 0x11u) && (v139 = v138[8]) != 0 && (*(v137 + v139) & 4) != 0)
              {
                v101 = v69 + v129;
              }

              v169 = v101;
              sub_10F0978(a1 + 20576, &v178, &v162);
              goto LABEL_123;
            }

LABEL_140:
            LOWORD(v117) = *(v114 + v117);
            goto LABEL_142;
          }
        }

        else if (v116 >= 9)
        {
          v117 = v115[4];
          if (!v115[4])
          {
            goto LABEL_142;
          }

          goto LABEL_140;
        }

        LOWORD(v117) = 0;
        goto LABEL_142;
      }
    }

LABEL_69:
    ;
  }

  while (*(a1 + 21448));
  v140 = v171;
  v141 = __src;
  v142 = v145;
LABEL_170:
  *(a1 + 292) += (*(a1 + 21376) - *(a1 + 21368)) >> 2;
  *a6 = v141;
  a6[1] = v142;
  a6[2] = 0;
  if (v140)
  {
    v172 = v140;
    operator delete(v140);
  }

  if (v174)
  {
    v175 = v174;
    operator delete(v174);
  }
}

void sub_10EDDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_4547F0(&a29);
  v31 = STACK[0x2D8];
  if (STACK[0x2D8])
  {
    STACK[0x2E0] = v31;
    operator delete(v31);
    v32 = *(v29 - 256);
    if (!v32)
    {
LABEL_3:
      if (!a11)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a11);
      goto LABEL_8;
    }
  }

  else
  {
    v32 = *(v29 - 256);
    if (!v32)
    {
      goto LABEL_3;
    }
  }

  *(v29 - 248) = v32;
  operator delete(v32);
  if (!a11)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10EDE60(void *a1, unint64_t a2, unint64_t a3, int a4)
{
  v4 = a1[12];
  if (a2 > (a1[13] - v4) >> 2 && a2 > (a1[14] - v4) >> 2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    goto LABEL_20;
  }

  v5 = a1[15];
  if (a3 > (a1[16] - v5) >> 4)
  {
    if (a3 > (a1[17] - v5) >> 4)
    {
      if (!(a3 >> 60))
      {
        operator new();
      }

      sub_1794();
    }

    if (a3 > (a1[20] - a1[18]) >> 2)
    {
      if (!(a3 >> 62))
      {
        operator new();
      }

      goto LABEL_20;
    }
  }

  if (a2 > (a1[23] - a1[21]) >> 2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

LABEL_20:
    sub_1794();
  }

  if (a4 && a1[26] - a1[24] < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }
}

uint64_t sub_10EE11C(uint64_t a1, uint64_t a2)
{
  v42[0] = a1 + 176;
  v42[1] = a1;
  v42[2] = a2;
  if (*(a1 + 177) == 1)
  {
    v4 = sub_10DF6C4(a2);
    v5 = sub_4C1A94(*(a1 + 10024), v4);
    v6 = v5;
    v7 = *&v5 <= -1 || ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
    v8 = v7 && (*&v5 - 1) >= 0xFFFFFFFFFFFFFLL;
    v9 = !v8 || (*&v5 & 0x7FFFFFFFFFFFFFFFLL) == 0;
    if (v9 && v5 > 0.0)
    {
      v10 = *(a1 + 10032);
      v11 = sub_3E37C0(*(a1 + 10040), *(v4 + 32) & 0xFFFFFFFFFFFFFFLL);
      v43 = 0;
      v44 = 0;
      v12 = sub_2BC6DC(v10, v11, &v43);
      v13 = *&v12 <= -1 || ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
      v14 = v13 && (*&v12 - 1) >= 0xFFFFFFFFFFFFFLL;
      v15 = !v14 || (*&v12 & 0x7FFFFFFFFFFFFFFFLL) == 0;
      if (v15 && v12 > 0.0 && v12 <= *(a1 + 192) && v6 / v12 > *(a1 + 184))
      {
        goto LABEL_29;
      }
    }
  }

  if (sub_10F0C70(v42, 0))
  {
    goto LABEL_29;
  }

  if (*(a1 + 200) != 1)
  {
    goto LABEL_38;
  }

  v17 = sub_10DF6C4(a2);
  sub_43ECB4((a1 + 10048), v17, &v43);
  v18 = v43;
  v19 = v44;
  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  v20 = sub_10DF6C4(a2);
  sub_43ECB4((a1 + 10048), v20 + 40, &v43);
  v21 = v43;
  v22 = v44;
  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v18 == v19 && v21 != v22)
  {
LABEL_29:
    v16 = 1;
    if (*(a1 + 177) != 1)
    {
      goto LABEL_65;
    }
  }

  else
  {
LABEL_38:
    v16 = 0;
    if (*(a1 + 177) != 1)
    {
      goto LABEL_65;
    }
  }

  v23 = sub_10DF6C4(a2);
  v24 = sub_4C1A94(*(a1 + 10024), v23);
  v25 = v24;
  v28 = *&v24 > -1 && ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v24 - 1) < 0xFFFFFFFFFFFFFLL || (*&v24 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (v28 && v24 > 0.0)
  {
    v29 = *(a1 + 10032);
    v30 = sub_3E37C0(*(a1 + 10040), *(v23 + 32) & 0xFFFFFFFFFFFFFFLL);
    v43 = 0;
    v44 = 0;
    v31 = sub_2BC6DC(v29, v30, &v43);
    v32 = *&v31 <= -1 || ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
    v33 = v32 && (*&v31 - 1) >= 0xFFFFFFFFFFFFFLL;
    v34 = !v33 || (*&v31 & 0x7FFFFFFFFFFFFFFFLL) == 0;
    if (v34 && v31 > 0.0 && v31 <= *(a1 + 192) && v25 / v31 > *(a1 + 184))
    {
      return v16 | 2;
    }
  }

LABEL_65:
  if (sub_10F0C70(v42, 1))
  {
    return v16 | 2;
  }

  if (*(a1 + 200) == 1)
  {
    v35 = sub_10DF6C4(a2);
    sub_43ECB4((a1 + 10048), v35, &v43);
    v36 = v43;
    v37 = v44;
    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    v38 = sub_10DF6C4(a2);
    sub_43ECB4((a1 + 10048), v38 + 40, &v43);
    v39 = v43;
    v40 = v44;
    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    if (v36 != v37 && v39 == v40)
    {
      return v16 | 2;
    }
  }

  return v16;
}

void sub_10EE470(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 220))
  {
    v5 = a3;
    v6 = a1;
    while (1)
    {
      v7 = v6[104];
      v8 = (v6[97] + 24 * *v7);
      v9 = *v8;
      v10 = *(v8 + 1);
      v69 = *(v8 + 2);
      sub_DD38((v6 + 100), v7);
      v11 = v6[104];
      *(v6[107] + 4 * *v11) = -1;
      v12 = *(v6 + 220) - 1;
      *(v6 + 220) = v12;
      if (v12)
      {
        v13 = &v11[4 * v12];
        *v11 = *v13;
        *(v11 + 1) = *(v13 + 1);
        v14 = v6[104];
        *(v6[107] + 4 * *v14) = 0;
        v15 = *(v6 + 220);
        if (v15 >= 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 1;
          do
          {
            v19 = v16 + 5;
            if (v19 >= v15)
            {
              v20 = v15;
            }

            else
            {
              v20 = v19;
            }

            if (v19 <= v18)
            {
              break;
            }

            v21 = v17;
            v22 = *&v14[4 * v17 + 2];
            v23 = &v14[4 * v18 + 2];
            v17 = -1;
            v24 = v22;
            do
            {
              v26 = *v23;
              v23 += 4;
              v25 = v26;
              if (v26 < v24)
              {
                v24 = v25;
                v17 = v18;
              }

              ++v18;
            }

            while (v18 < v20);
            if (v17 >= v15)
            {
              break;
            }

            v27 = 4 * v17;
            v28 = &v14[v27];
            v29 = 16 * v21;
            v30 = v14 + v29;
            v31 = *v28;
            *v28 = *v30;
            *v30 = v31;
            v32 = *(v28 + 1);
            *(v28 + 1) = v22;
            *(v30 + 1) = v32;
            v14 = v6[104];
            v33 = v14[v27];
            v34 = v6[107];
            v35 = *(v14 + v29);
            LODWORD(v29) = *(v34 + 4 * v33);
            *(v34 + 4 * v33) = *(v34 + 4 * v35);
            *(v34 + 4 * v35) = v29;
            v16 = 4 * v17;
            v18 = (4 * v17) | 1;
            v15 = *(v6 + 220);
          }

          while (v18 < v15);
        }
      }

      v6[105] -= 16;
      LODWORD(v76) = v9;
      if ((*(*v5 + 40) & 1) == 0)
      {
        break;
      }

      if (*(*v5 + 56) > *(**(v5 + 16) + v9))
      {
        v36 = *(v5 + 32);
        v37 = sub_10E2E2C(*(v5 + 24), &v76);
        sub_F90350(v36 + 296, v37, 0, *(v5 + 40), 0);
        v38 = *(v5 + 40);
        v71 = *(v5 + 24);
        v72 = v36;
        v73 = *v5;
        if (sub_10F1E64(v38, &v71))
        {
          v39 = v76;
          *(**(v5 + 8) + 8 * v76) = v69;
          ++*(**(v5 + 16) + v39);
        }

        goto LABEL_22;
      }

LABEL_3:
      v5 = a3;
      if (!*(v6 + 220))
      {
        return;
      }
    }

    *(**(v5 + 8) + 8 * v9) = v69;
LABEL_22:
    v40 = *v6;
    v41 = *(*v6 + 96);
    if (v9 >= (*(*v6 + 104) - v41) >> 2)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v64 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
    }

    v42 = *(v41 + 4 * v9);
    if (v42 != -1)
    {
      v67 = v10;
      v68 = v9;
      do
      {
        v43 = *(v40 + 120) + 16 * v42;
        v78 = *v43;
        v44 = *(a4 + 8);
        v45 = sub_10E2E2C(*a4, &v78);
        if (!v45)
        {
          goto LABEL_40;
        }

        v46 = HIDWORD(v45);
        if (!HIDWORD(v45) || (*(v44 + 200) & 1) == 0)
        {
          goto LABEL_40;
        }

        v47 = v45;
        v48 = v45 >> 16;
        v49 = *(v44 + 10016);
        v50 = v46 & 0xFFFF0000FFFFFFFFLL | (WORD1(v45) << 32);
        v70 = sub_2B51D8(v49, v50);
        if (*(v49 + 7772) == 1)
        {
          v51 = sub_30C50C(v49 + 3896, v46, 0);
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

          v54 = v53 + ((v47 << 16 >> 30) & 0x3FFFC) + 4 + *(v53 + ((v47 << 16 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v54 = 0;
        }

        v55 = sub_31D7E8(v49, v50, 1);
        v71 = v70;
        v72 = v54;
        v73 = v55;
        v74 = v56;
        v75 = ((v47 << 47) & 0x1000000000000 | HIDWORD(v47) | (v48 << 32)) ^ 0x1000000000000;
        sub_43ECB4((v44 + 10048), &v71, &v76);
        v58 = v76;
        v57 = v77;
        if (v76)
        {
          v77 = v76;
          operator delete(v76);
        }

        v59 = v58 == v57;
        v6 = a1;
        v10 = v67;
        v9 = v68;
        if (v59)
        {
LABEL_40:
          v60 = **(a4 + 16);
          v61 = *(v60 + v9);
          if (v61 <= *(v60 + v78))
          {
            LOBYTE(v61) = *(v60 + v78);
          }

          *(v60 + v78) = v61;
          v62 = *(v43 + 8) + v10;
          if (v62 <= *(*(a4 + 24) + 48))
          {
            LODWORD(v76) = *v43;
            v71 = v62;
            v72 = v69;
            sub_10F1AD8((v6 + 1), &v76, &v71);
          }
        }

        v42 = *(*(v40 + 144) + 4 * v42);
      }

      while (v42 != -1);
    }

    goto LABEL_3;
  }
}

void sub_10EE8CC(uint64_t *a1)
{
  if (*(a1 + 220))
  {
    while (1)
    {
      v3 = a1[104];
      v4 = (a1[97] + 16 * *v3);
      v5 = *v4;
      v6 = *(v4 + 1);
      sub_DD38((a1 + 100), v3);
      v7 = a1[104];
      *(a1[107] + 4 * *v7) = -1;
      v8 = *(a1 + 220) - 1;
      *(a1 + 220) = v8;
      if (v8)
      {
        v9 = &v7[4 * v8];
        *v7 = *v9;
        *(v7 + 1) = *(v9 + 1);
        v10 = a1[104];
        *(a1[107] + 4 * *v10) = 0;
        v2 = *(a1 + 220);
        if (v2 >= 2)
        {
          v11 = 0;
          v12 = 0;
          v13 = 1;
          do
          {
            v14 = v11 + 5;
            if (v14 >= v2)
            {
              v15 = v2;
            }

            else
            {
              v15 = v14;
            }

            if (v14 <= v13)
            {
              break;
            }

            v16 = v12;
            v17 = *&v10[4 * v12 + 2];
            v18 = &v10[4 * v13 + 2];
            v12 = -1;
            v19 = v17;
            do
            {
              v21 = *v18;
              v18 += 4;
              v20 = v21;
              if (v21 < v19)
              {
                v19 = v20;
                v12 = v13;
              }

              ++v13;
            }

            while (v13 < v15);
            if (v12 >= v2)
            {
              break;
            }

            v22 = 4 * v12;
            v23 = &v10[v22];
            v24 = 16 * v16;
            v25 = v10 + v24;
            v26 = *v23;
            *v23 = *v25;
            *v25 = v26;
            v27 = *(v23 + 1);
            *(v23 + 1) = v17;
            *(v25 + 1) = v27;
            v10 = a1[104];
            v28 = v10[v22];
            v29 = a1[107];
            v30 = *(v10 + v24);
            LODWORD(v24) = *(v29 + 4 * v28);
            *(v29 + 4 * v28) = *(v29 + 4 * v30);
            *(v29 + 4 * v30) = v24;
            v11 = 4 * v12;
            v13 = (4 * v12) | 1;
            v2 = *(a1 + 220);
          }

          while (v13 < v2);
        }
      }

      else
      {
        v2 = 0;
      }

      a1[105] -= 16;
      v31 = *a1;
      v32 = *(*a1 + 96);
      if (v5 >= (*(*a1 + 104) - v32) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v42 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v33 = *(v32 + 4 * v5);
      if (v33 != -1)
      {
        break;
      }

LABEL_4:
      if (!v2)
      {
        return;
      }
    }

    while (1)
    {
      v35 = (*(v31 + 120) + 176 * v33);
      if (sub_10DF72C(v35) == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_25;
      }

      v44 = sub_3F80(v35);
      if (sub_10DF6A4(v35))
      {
        v36 = sub_10DF6C4(v35);
        v37 = *v36;
        v38 = &(*v36)[-**v36];
        if (*v38 < 9u)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v39 = sub_10DF708(v35);
        v37 = *v39;
        v38 = &(*v39)[-**v39];
        if (*v38 < 9u)
        {
          goto LABEL_23;
        }
      }

      v40 = *(v38 + 4);
      if (v40)
      {
        v34 = *&v37[v40];
        goto LABEL_24;
      }

LABEL_23:
      v34 = 0;
LABEL_24:
      v43 = v34 + v6;
      sub_10EA4D0((a1 + 1), &v44, &v43);
LABEL_25:
      v33 = *(*(v31 + 144) + 4 * v33);
      if (v33 == -1)
      {
        v2 = *(a1 + 220);
        goto LABEL_4;
      }
    }
  }
}

void sub_10EEB90(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v7 = 16;
  strcpy(__p, "exploration_from");
  v4 = sub_5F8FC(a2, __p);
  a1[3] = sub_10EF4B4(v4);
  if (v7 < 0)
  {
    operator delete(*__p);
  }

  v7 = 14;
  strcpy(__p, "exploration_to");
  v5 = sub_5F8FC(a2, __p);
  a1[4] = sub_10EF4B4(v5);
  if (v7 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_10EF3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    v20 = *v18;
    if (!*v18)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v20 = *v18;
    if (!*v18)
    {
      goto LABEL_3;
    }
  }

  *(v18 + 8) = v20;
  operator delete(v20);
  _Unwind_Resume(exception_object);
}