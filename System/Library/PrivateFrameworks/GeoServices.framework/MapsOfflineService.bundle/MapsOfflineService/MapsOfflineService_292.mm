uint64_t sub_11BE774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_2C7A60(*(a1 + 64), a2, a3);
  v8 = result;
  if (v7 > 8)
  {
    if (v7 != 10)
    {
      if (v7 != 9)
      {
        goto LABEL_56;
      }

      v35 = result;
      result = sub_11BFF20(*(a1 + 56), &v35);
      if (!result)
      {
        goto LABEL_56;
      }

      v16 = v35;
      if (*(a1 + 3))
      {
        v17 = *(a1 + 48);
        v18 = sub_93D480(*(a1 + 56), v35, 0, "station");
        v19 = v18 + *(v18 - *v18 + 6);
        v20 = *v19;
        LODWORD(v19) = *(v19 + 4);
        if (v19 >= 0xFFFFFFFE)
        {
          v19 = 4294967294;
        }

        else
        {
          v19 = v19;
        }

        v36 = v20 | (v19 << 32);
        v37 = 0x7FFFFFFF;
        result = sub_3B8540(v17, &v36);
        if (!result)
        {
          goto LABEL_56;
        }

        v16 = v35;
      }

      if (v16)
      {
        v21 = HIDWORD(v35);
        v22 = v16 << 32;
        if (HIDWORD(v35) == -1)
        {
          v22 = 0;
          v21 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v22 = 0;
        v21 = 0xFFFFFFFFLL;
      }

      *a4 = 2;
      v34 = v21 | v22;
LABEL_55:
      *(a4 + 4) = v34;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0x3FF0000000000000;
      *(a4 + 32) = 0;
      *(a4 + 40) = 1;
      return result;
    }

    if (*(a1 + 3))
    {
      v30 = *(a1 + 48);
      v31 = sub_502FF8(*(a1 + 56), result, 0, "stop");
      v32 = v31 + *(v31 - *v31 + 6);
      v33 = *v32;
      LODWORD(v32) = *(v32 + 4);
      v32 = v32 >= 0xFFFFFFFE ? 4294967294 : v32;
      v36 = v33 | (v32 << 32);
      v37 = 0x7FFFFFFF;
      result = sub_3B8540(v30, &v36);
      if (!result)
      {
        goto LABEL_56;
      }
    }

    if (v8)
    {
      v27 = HIDWORD(v8);
    }

    else
    {
      v27 = 0xFFFFFFFFLL;
    }

    v28 = HIDWORD(v8) == 0xFFFFFFFF || v8 == 0;
    v29 = v8 << 32;
    *a4 = 0;
LABEL_52:
    if (v28)
    {
      v29 = 0;
    }

    v34 = v29 | v27;
    goto LABEL_55;
  }

  if (v7 == 1)
  {
    if (*(a1 + 3))
    {
      v23 = *(a1 + 48);
      v24 = sub_503310(*(a1 + 56), result, 0, "access point");
      v25 = v24 + *(v24 - *v24 + 14);
      v26 = *v25;
      LODWORD(v25) = *(v25 + 4);
      v25 = v25 >= 0xFFFFFFFE ? 4294967294 : v25;
      v36 = v26 | (v25 << 32);
      v37 = 0x7FFFFFFF;
      result = sub_3B8540(v23, &v36);
      if (!result)
      {
        goto LABEL_56;
      }
    }

    if (v8)
    {
      v27 = HIDWORD(v8);
    }

    else
    {
      v27 = 0xFFFFFFFFLL;
    }

    v28 = HIDWORD(v8) == 0xFFFFFFFF || v8 == 0;
    v29 = v8 << 32;
    *a4 = 3;
    goto LABEL_52;
  }

  if (v7 != 4)
  {
    goto LABEL_56;
  }

  v35 = result;
  result = sub_11C0120(*(a1 + 56), &v35);
  if (!result)
  {
    goto LABEL_56;
  }

  v9 = v35;
  if (*(a1 + 3))
  {
    v10 = *(a1 + 48);
    v11 = sub_93D2F4(*(a1 + 56), v35, 0, "hall");
    v12 = v11 + *(v11 - *v11 + 6);
    v13 = *v12;
    LODWORD(v12) = *(v12 + 4);
    if (v12 >= 0xFFFFFFFE)
    {
      v12 = 4294967294;
    }

    else
    {
      v12 = v12;
    }

    v36 = v13 | (v12 << 32);
    v37 = 0x7FFFFFFF;
    result = sub_3B8540(v10, &v36);
    if (result)
    {
      v9 = v35;
      goto LABEL_11;
    }

LABEL_56:
    *a4 = 0;
    *(a4 + 40) = 0;
    return result;
  }

LABEL_11:
  if (v9)
  {
    v14 = HIDWORD(v35);
    v15 = v9 << 32;
    if (HIDWORD(v35) == -1)
    {
      v15 = 0;
      v14 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0xFFFFFFFFLL;
  }

  *a4 = 1;
  *(a4 + 4) = v14 | v15;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0x3FF0000000000000;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  return result;
}

void sub_11BEAA4(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v5 = a1;
  v6 = *(a2 + 40) * 100.0;
  if (v6 >= 0.0)
  {
    v7 = *(a2 + 40) * 100.0;
    if (v6 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v8 = (v6 + v6) + 1;
  }

  else
  {
    v7 = *(a2 + 40) * 100.0;
    if (v6 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v8 = (v6 + v6) - 1 + (((v6 + v6) - 1) >> 63);
  }

  v7 = (v8 >> 1);
LABEL_7:
  if (v7 >= 9.22337204e18)
  {
    v10 = 0x7FFFFFFFFFFFFFFELL;
    goto LABEL_16;
  }

  if (v6 >= 0.0)
  {
    if (v6 < 4.50359963e15)
    {
      v9 = (v6 + v6) + 1;
      goto LABEL_14;
    }
  }

  else if (v6 > -4.50359963e15)
  {
    v9 = (v6 + v6) - 1 + (((v6 + v6) - 1) >> 63);
LABEL_14:
    v6 = (v9 >> 1);
  }

  v10 = v6;
LABEL_16:
  if (v10 <= *(a1 + 24))
  {
    v10 = *(a1 + 24);
  }

  if (*(a1 + 32) >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(a1 + 32);
  }

  if (*(a1 + 1) == 1)
  {
    v13 = sub_E67C38(a2);
    v18 = 0;
    if (a3 == 1)
    {
      v19 = a2;
      if (v13 == -1)
      {
        if (*(a2 + 72) == *(a2 + 80))
        {
          v18 = *(v5 + 2);
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v19 = a2;
    }

    v75 = v19;
    sub_11C1274(*(v5 + 56), v19, *(v5 + 40), v11, v14, v15, v16, v17);
    *v80 = 0u;
    *__p = 0u;
    v82 = 1065353216;
    v21 = v83;
    v20 = v84;
    v77 = v5;
    v22 = 0;
    if (v83 != v84)
    {
      do
      {
        v23 = *(v21 + 1);
        v24 = sub_11C4B38(*(v5 + 56), v23, 0, "station polygon");
        v25 = *(v24 + *(v24 - *v24 + 4));
        v78 = v25;
        if (*(v5 + 3))
        {
          v26 = *(v5 + 48);
          v27 = sub_93D480(*(v5 + 56), v25, 0, "station");
          v28 = v27 + *(v27 - *v27 + 6);
          v29 = *v28;
          LODWORD(v28) = *(v28 + 4);
          v28 = v28 >= 0xFFFFFFFE ? 4294967294 : v28;
          v85 = v29 | (v28 << 32);
          LODWORD(v86) = 0x7FFFFFFF;
          if ((sub_3B8540(v26, &v85) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        v30 = *v21 > 0.0 ? 0.0 : 1.0;
        v22 |= *v21 <= 0.0;
        if (!(v18 & 1 | (*v21 <= 0.0)))
        {
          goto LABEL_31;
        }

        if (sub_11BFF20(*(v5 + 56), &v78))
        {
          sub_11C4CC4(v80, &v78, &v78);
          v31 = sub_11C4B38(*(v77 + 56), v23, 0, "station polygon");
          v32 = (v31 - *v31);
          if (*v32 < 0xBu || (v33 = v32[5]) == 0 || (v34 = *(v31 + v33), v34 < 2))
          {
            if (!v78 || (v35 = HIDWORD(v78), HIDWORD(v78) == -1))
            {
              v36 = 0;
              v35 = 0xFFFFFFFFLL;
              v37 = *v21 * 100.0;
              if (v37 < 0.0)
              {
                goto LABEL_51;
              }

LABEL_48:
              v38 = v37;
              if (v37 < 4.50359963e15)
              {
                v39 = (v37 + v37) + 1;
                goto LABEL_53;
              }
            }

            else
            {
              v36 = v78 << 32;
              v37 = *v21 * 100.0;
              if (v37 >= 0.0)
              {
                goto LABEL_48;
              }

LABEL_51:
              v38 = v37;
              if (v37 > -4.50359963e15)
              {
                v39 = (v37 + v37) - 1 + (((v37 + v37) - 1) >> 63);
LABEL_53:
                v38 = (v39 >> 1);
              }
            }

            if (v38 >= 9.22337204e18)
            {
              v41 = 0x7FFFFFFFFFFFFFFELL;
              v42 = v35 | v36;
              v43 = a4;
              v44 = a4[31];
              v45 = a4[32];
              if (v44 < v45)
              {
                goto LABEL_72;
              }
            }

            else
            {
              if (v37 >= 0.0)
              {
                if (v37 < 4.50359963e15)
                {
                  v40 = (v37 + v37) + 1;
LABEL_70:
                  v37 = (v40 >> 1);
                }
              }

              else if (v37 > -4.50359963e15)
              {
                v40 = (v37 + v37) - 1 + (((v37 + v37) - 1) >> 63);
                goto LABEL_70;
              }

              v41 = v37;
              v42 = v35 | v36;
              v43 = a4;
              v44 = a4[31];
              v45 = a4[32];
              if (v44 < v45)
              {
LABEL_72:
                *v44 = 2;
                *(v44 + 4) = v42;
                *(v44 + 16) = v41;
                *(v44 + 24) = v30;
                v50 = v44 + 40;
                *(v44 + 32) = 0;
                v5 = v77;
LABEL_76:
                a4[31] = v50;
                goto LABEL_31;
              }
            }

            v46 = v43[30];
            v47 = 0xCCCCCCCCCCCCCCCDLL * ((v44 - v46) >> 3) + 1;
            if (v47 > 0x666666666666666)
            {
              sub_1794();
            }

            v48 = 0xCCCCCCCCCCCCCCCDLL * ((v45 - v46) >> 3);
            if (2 * v48 > v47)
            {
              v47 = 2 * v48;
            }

            if (v48 >= 0x333333333333333)
            {
              v49 = 0x666666666666666;
            }

            else
            {
              v49 = v47;
            }

            if (v49)
            {
              if (v49 <= 0x666666666666666)
              {
                operator new();
              }

              sub_1808();
            }

            v51 = 8 * ((v44 - v46) >> 3);
            *v51 = 2;
            *(v51 + 4) = v42;
            *(v51 + 16) = v41;
            *(v51 + 24) = v30;
            *(v51 + 32) = 0;
            v50 = v51 + 40;
            v52 = (v51 - (v44 - v46));
            memcpy(v52, v46, v44 - v46);
            a4[30] = v52;
            a4[31] = v50;
            a4[32] = 0;
            if (v46)
            {
              operator delete(v46);
            }

            v5 = v77;
            goto LABEL_76;
          }

          if (v34 == 2)
          {
            v54 = a4[34];
            v53 = a4[35];
            if (v54 >= v53)
            {
              v56 = a4[33];
              v57 = v54 - v56;
              v58 = (v54 - v56) >> 3;
              v59 = v58 + 1;
              if ((v58 + 1) >> 61)
              {
                sub_1794();
              }

              v60 = v53 - v56;
              if (v60 >> 2 > v59)
              {
                v59 = v60 >> 2;
              }

              if (v60 >= 0x7FFFFFFFFFFFFFF8)
              {
                v61 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v61 = v59;
              }

              if (v61)
              {
                if (!(v61 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              *(8 * v58) = v78;
              v55 = 8 * v58 + 8;
              memcpy(0, v56, v57);
              a4[33] = 0;
              a4[34] = v55;
              a4[35] = 0;
              if (v56)
              {
                operator delete(v56);
              }

              v5 = v77;
            }

            else
            {
              v5 = v77;
              *v54 = v78;
              v55 = (v54 + 8);
            }

            a4[34] = v55;
            goto LABEL_31;
          }
        }

        v5 = v77;
LABEL_31:
        v21 += 6;
      }

      while (v21 != v20);
    }

    if ((v22 & 1) == 0 && ((v18 ^ 1) & 1) == 0)
    {
      sub_11C1758(*(v5 + 56), v75, *(v5 + 40), &v78);
      v62 = v78;
      v74 = v79;
      if (v78 != v79)
      {
        do
        {
          v63 = *(v5 + 56);
          v64 = sub_503310(v63, v62[3] | (v62[2] << 32), 0, "access point");
          v65 = (v64 - *v64);
          if (*v65 >= 0x11u)
          {
            v66 = v65[8];
            if (v66)
            {
              v67 = (v64 + v66 + *(v64 + v66));
              v68 = *v67;
              if (v68)
              {
                v69 = 8 * v68;
                v70 = v67 + 1;
                do
                {
                  if (*(v63 + 3888) != 1 || sub_2D5204(*(v63 + 3872)))
                  {
                    operator new();
                  }

                  v70 += 2;
                  v69 -= 8;
                }

                while (v69);
                v5 = v77;
              }
            }
          }

          v62 += 12;
        }

        while (v62 != v74);
        v62 = v78;
      }

      if (v62)
      {
        v79 = v62;
        operator delete(v62);
      }
    }

    v71 = __p[0];
    if (__p[0])
    {
      do
      {
        v72 = *v71;
        operator delete(v71);
        v71 = v72;
      }

      while (v72);
    }

    v73 = v80[0];
    v80[0] = 0;
    if (v73)
    {
      operator delete(v73);
    }

    if (v83)
    {
      v84 = v83;
      operator delete(v83);
    }
  }
}

void sub_11BF970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_11BD8(&a17);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  a24 = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_11BFA44(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  v5 = *(a2 + 40) * 100.0;
  if (v5 >= 0.0)
  {
    v6 = *(a2 + 40) * 100.0;
    if (v5 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v7 = (v5 + v5) + 1;
  }

  else
  {
    v6 = *(a2 + 40) * 100.0;
    if (v5 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v7 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
  }

  v6 = (v7 >> 1);
LABEL_7:
  if (v6 < 9.22337204e18)
  {
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    if (*a1 != 1)
    {
      return;
    }
  }

  else
  {
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    if (*a1 != 1)
    {
      return;
    }
  }

  sub_11C02DC(*(a1 + 56), a2, *(a1 + 40), &v35);
  v8 = v35;
  v9 = v36;
  if (v35 != v36)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(v8 + 3) | (*(v8 + 2) << 32);
      v12 = sub_502FF8(*(a1 + 56), v11, 0, "stop");
      v13 = *(v12 + *(v12 - *v12 + 12));
      if (v13 <= 0xFFFFFFFEFFFFFFFFLL && v13 != 0)
      {
        v15 = sub_93D480(*(a1 + 56), v13, 0, "station");
        v16 = (v15 - *v15);
        if (*v16 >= 0xBu)
        {
          v17 = v16[5];
          if (v17)
          {
            if (*(v15 + v17 + *(v15 + v17)))
            {
              goto LABEL_15;
            }
          }
        }
      }

      if (*(a1 + 3))
      {
        v18 = *(a1 + 48);
        v19 = sub_502FF8(*(a1 + 56), v11, 0, "stop");
        v20 = v19 + *(v19 - *v19 + 6);
        v21 = *v20;
        LODWORD(v20) = *(v20 + 4);
        v20 = v20 >= 0xFFFFFFFE ? 4294967294 : v20;
        v37 = v21 | (v20 << 32);
        v38 = 0x7FFFFFFF;
        if ((sub_3B8540(v18, &v37) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v22 = *v8 * 100.0;
      if (v22 >= 0.0)
      {
        v23 = *v8 * 100.0;
        if (v22 >= 4.50359963e15)
        {
          goto LABEL_34;
        }

        v24 = (v22 + v22) + 1;
      }

      else
      {
        v23 = *v8 * 100.0;
        if (v22 <= -4.50359963e15)
        {
          goto LABEL_34;
        }

        v24 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
      }

      v23 = (v24 >> 1);
LABEL_34:
      if (v23 >= 9.22337204e18)
      {
        v26 = 0x7FFFFFFFFFFFFFFELL;
        v27 = a3[2];
        if (v10 >= v27)
        {
          goto LABEL_44;
        }

        goto LABEL_13;
      }

      if (v22 >= 0.0)
      {
        if (v22 >= 4.50359963e15)
        {
          goto LABEL_43;
        }

        v25 = (v22 + v22) + 1;
      }

      else
      {
        if (v22 <= -4.50359963e15)
        {
          goto LABEL_43;
        }

        v25 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
      }

      v22 = (v25 >> 1);
LABEL_43:
      v26 = v22;
      v27 = a3[2];
      if (v10 >= v27)
      {
LABEL_44:
        v28 = *a3;
        v29 = v10 - *a3;
        v30 = 0xCCCCCCCCCCCCCCCDLL * (v29 >> 3) + 1;
        if (v30 > 0x666666666666666)
        {
          sub_1794();
        }

        v31 = 0xCCCCCCCCCCCCCCCDLL * ((v27 - v28) >> 3);
        if (2 * v31 > v30)
        {
          v30 = 2 * v31;
        }

        if (v31 >= 0x333333333333333)
        {
          v32 = 0x666666666666666;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          if (v32 <= 0x666666666666666)
          {
            operator new();
          }

          sub_1808();
        }

        v33 = 8 * (v29 >> 3);
        *v33 = 0;
        *(v33 + 4) = v8[1];
        *(v33 + 16) = v26;
        *(v33 + 24) = 0;
        *(v33 + 32) = 0;
        v10 = (v33 + 40);
        v34 = (v33 - v29);
        memcpy((v33 - v29), v28, v29);
        *a3 = v34;
        a3[1] = v10;
        a3[2] = 0;
        if (v28)
        {
          operator delete(v28);
        }

        goto LABEL_14;
      }

LABEL_13:
      *v10 = 0;
      *(v10 + 1) = v8[1];
      *(v10 + 2) = v26;
      *(v10 + 3) = 0;
      *(v10 + 32) = 0;
      v10 += 10;
LABEL_14:
      a3[1] = v10;
LABEL_15:
      v8 += 6;
      if (v8 == v9)
      {
        v8 = v35;
        break;
      }
    }
  }

  if (v8)
  {
    v36 = v8;
    operator delete(v8);
  }
}

void sub_11BFECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (!*v11)
  {
    _Unwind_Resume(exception_object);
  }

  *(v11 + 8) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

uint64_t sub_11BFF20(uint64_t a1, unint64_t *a2)
{
  v3 = sub_93D480(a1, *a2, 0, "station");
  v4 = (v3 - *v3);
  if (*v4 < 0xDu)
  {
    return 0;
  }

  v5 = v4[6];
  if (!v5)
  {
    return 0;
  }

  v6 = (v3 + v5 + *(v3 + v5));
  v7 = *v6;
  if (!v7)
  {
    return 0;
  }

  v8 = 8 * v7;
  v9 = v6 + 1;
  do
  {
    if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
    {
      operator new();
    }

    v9 += 2;
    v8 -= 8;
  }

  while (v8);
  return 0;
}

void sub_11C0100(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11C0120(uint64_t a1, unint64_t *a2)
{
  v3 = sub_93D2F4(a1, *a2, 0, "hall");
  v4 = (v3 - *v3);
  if (*v4 < 0xDu)
  {
    return 0;
  }

  v5 = v4[6];
  if (!v5)
  {
    return 0;
  }

  v6 = (v3 + v5 + *(v3 + v5));
  v7 = *v6;
  if (!v7)
  {
    return 0;
  }

  v8 = 8 * v7;
  v9 = v6 + 1;
  do
  {
    if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
    {
      operator new();
    }

    v9 += 2;
    v8 -= 8;
  }

  while (v8);
  return 0;
}

void sub_11C02C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_11C02DC(uint64_t a1@<X0>, unsigned int *a2@<X1>, int a3@<W2>, void *a5@<X8>)
{
  if (*(a1 + 3872) && a3 && (*a2 & a2[1]) != 0xFFFFFFFF)
  {
    sub_2B6218(&v5, a3);
    operator new();
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
}

void sub_11C11A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  sub_1959728(va);
  if (v48)
  {
    operator delete(v48);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (!a19)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

void sub_11C1274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *(v8 + 3880);
  v24 = *(v8 + 3872);
  v25 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_3BFF0C(v26, &v24);
  v18 = v25;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  sub_11C283C(v26, v14, v30, v12, v10, 0, &v22);
  *v16 = 0;
  v16[1] = 0;
  v16[2] = 0;
  if (v23 != v22)
  {
    if (((v23 - v22) >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  v19 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = v27;
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }
}

void sub_11C16D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_BA4254(va);
  _Unwind_Resume(a1);
}

void sub_11C16E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_11C16FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
    v17 = __p;
    if (!__p)
    {
LABEL_3:
      sub_BA4254(&a14);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v17 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v17);
  sub_BA4254(&a14);
  _Unwind_Resume(a1);
}

void sub_11C1758(uint64_t a1@<X0>, unsigned int *a2@<X1>, int a3@<W2>, void *a5@<X8>)
{
  if (*(a1 + 3872) && a3 && (*a2 & a2[1]) != 0xFFFFFFFF)
  {
    sub_2B6218(&v5, a3);
    operator new();
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
}

void sub_11C261C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  sub_1959728(va);
  if (v48)
  {
    operator delete(v48);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (!a19)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

void sub_11C26F0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[2];
    *(v3 + 1) = a2[1];
    *(v3 + 2) = v6;
    *v3 = v5;
    v7 = (v3 + 48);
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (&v3[-*a1] >> 4);
  v10 = v9 + 1;
  if (v9 + 1 > 0x555555555555555)
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

  v13 = (16 * (&v3[-*a1] >> 4));
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v13[2] = a2[2];
  v7 = 48 * v9 + 48;
  v15 = 48 * v9 - (v3 - v8);
  memcpy(v13 - (v3 - v8), v8, v3 - v8);
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

void sub_11C283C(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, void **a7@<X8>)
{
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v8 = 0x7FFFFFFFFFFFFFFELL;
  if (a5 < 0x7FFFFFFFFFFFFFFELL)
  {
    v8 = a5;
  }

  v9[4] = v8;
  v10 = a6;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v20 = 0;
  v21 = 0;
  __p = 0;
  *v11 = 0u;
  v12 = 0u;
  if (*a2 == -1 && a2[1] == -1)
  {
    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
  }

  else
  {
    sub_11C2958(v9);
    sub_11C3608(v9, a7);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11[1])
  {
    *&v12 = v11[1];
    operator delete(v11[1]);
  }
}

void sub_11C2958(uint64_t a1)
{
  LODWORD(v179) = 0;
  sub_2D1C68((a1 + 56), &v179, (a1 + 32));
  LODWORD(v177) = 1;
  *&v179 = 0;
  sub_2D1C68((a1 + 56), &v177, &v179);
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v2 != v3)
  {
    v5 = *(a1 + 88);
    v4 = *(a1 + 96);
    v6 = *(a1 + 24);
    do
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= v6)
      {
        return;
      }

      v7 = *v2;
      v8 = *(v2 + 1);
      v9 = v3 - v2;
      if (v9 >= 2)
      {
        v10 = 0;
        v179 = *v2;
        v11 = v2;
        do
        {
          v12 = &v11[v10 + 1];
          v13 = (2 * v10) | 1;
          v14 = 2 * v10 + 2;
          if (v14 < v9)
          {
            v15 = *(v12 + 8);
            v16 = *(v12 + 24);
            v12 += 16 * (v15 > v16);
            if (v15 > v16)
            {
              v13 = v14;
            }
          }

          *v11 = *v12;
          v11 = v12;
          v10 = v13;
        }

        while (v13 <= ((v9 - 2) >> 1));
        v17 = v3 - 1;
        if (v12 == v17)
        {
          *v12 = v179;
        }

        else
        {
          *v12 = *v17;
          *v17 = v179;
          v18 = (v12 - v2 + 16) >> 4;
          v39 = v18 < 2;
          v19 = v18 - 2;
          if (!v39)
          {
            v20 = v19 >> 1;
            v21 = &v2[v19 >> 1];
            v22 = *(v12 + 8);
            if (*(v21 + 8) > v22)
            {
              v23 = *v12;
              do
              {
                v24 = v12;
                v12 = v21;
                *v24 = *v21;
                if (!v20)
                {
                  break;
                }

                v20 = (v20 - 1) >> 1;
                v21 = &v2[v20];
              }

              while (*(v21 + 8) > v22);
              *v12 = v23;
              *(v12 + 8) = v22;
            }
          }
        }

        v3 = *(a1 + 64);
      }

      *(a1 + 64) = v3 - 1;
      *(a1 + 48) = v8;
      if (v7)
      {
        sub_11C3DD8(a1, v7);
      }

      while (1)
      {
        v25 = *(a1 + 152);
        v26 = *(a1 + 160);
        if (v25 == v26)
        {
          break;
        }

        v27 = *(v25 + 1);
        if (v27 > *(a1 + 48))
        {
          break;
        }

        v28 = *v25;
        v29 = *(v25 + 2);
        if (v26 - v25 >= 25)
        {
          v30 = 0;
          v31 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 3);
          v179 = *v25;
          v180 = *(v25 + 2);
          v32 = v25;
          do
          {
            v34 = &v32[3 * v30 + 3];
            v35 = (2 * v30) | 1;
            v36 = 2 * v30 + 2;
            if (v36 < v31)
            {
              v37 = *(v34 + 8);
              v38 = *(v34 + 32);
              v39 = v37 <= v38;
              v40 = v37 <= v38 ? 0 : 24;
              v34 += v40;
              if (!v39)
              {
                v35 = v36;
              }
            }

            v33 = *v34;
            v32[2] = *(v34 + 16);
            *v32 = v33;
            v32 = v34;
            v30 = v35;
          }

          while (v35 <= ((v31 - 2) >> 1));
          v41 = v26 - 24;
          if (v34 == v41)
          {
            v51 = v179;
            *(v34 + 16) = v180;
            *v34 = v51;
          }

          else
          {
            v42 = *v41;
            *(v34 + 16) = *(v41 + 2);
            *v34 = v42;
            *v41 = v179;
            *(v41 + 2) = v180;
            v43 = v34 - v25 + 24;
            if (v43 >= 25)
            {
              v44 = (-2 - 0x5555555555555555 * (v43 >> 3)) >> 1;
              v45 = &v25[24 * v44];
              v46 = *(v34 + 8);
              if (*(v45 + 1) > v46)
              {
                v47 = *v34;
                v48 = *(v34 + 16);
                do
                {
                  v49 = v34;
                  v34 = v45;
                  v50 = *v45;
                  *(v49 + 16) = *(v45 + 2);
                  *v49 = v50;
                  if (!v44)
                  {
                    break;
                  }

                  v44 = (v44 - 1) >> 1;
                  v45 = &v25[24 * v44];
                }

                while (*(v45 + 1) > v46);
                *v34 = v47;
                *(v34 + 8) = v46;
                *(v34 + 16) = v48;
              }
            }
          }

          v26 = *(a1 + 160);
        }

        *(a1 + 160) = v26 - 24;
        v52 = *(a1 + 128);
        v53 = *(a1 + 136);
        if (v52 >= v53)
        {
          v57 = *(a1 + 120);
          v58 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v57) >> 3) + 1;
          if (v58 > 0xAAAAAAAAAAAAAAALL)
          {
LABEL_176:
            sub_1794();
          }

          v59 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v57) >> 3);
          if (2 * v59 > v58)
          {
            v58 = 2 * v59;
          }

          if (v59 >= 0x555555555555555)
          {
            v60 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v60 = v58;
          }

          if (v60)
          {
            if (v60 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            goto LABEL_174;
          }

          v61 = (8 * ((v52 - v57) >> 3));
          *v61 = v28;
          v61[1] = v27;
          v61[2] = v29;
          v54 = v61 + 3;
          v62 = v61 - (v52 - v57);
          memcpy(v62, v57, v52 - v57);
          *(a1 + 120) = v62;
          *(a1 + 128) = v54;
          *(a1 + 136) = 0;
          if (v57)
          {
            operator delete(v57);
          }

          *(a1 + 128) = v54;
          v55 = *(a1 + 120);
          v56 = v54 - v55;
          if (v54 - v55 >= 25)
          {
LABEL_60:
            v63 = (-2 - 0x5555555555555555 * (v56 >> 3)) >> 1;
            v64 = (v55 + 24 * v63);
            v65 = *(v54 - 1);
            if (v64[2] > v65)
            {
              v66 = v54 - 3;
              v179 = *(v54 - 3);
              do
              {
                v67 = v66;
                v66 = v64;
                v68 = *v64;
                v67[2] = v64[2];
                *v67 = v68;
                if (!v63)
                {
                  break;
                }

                v63 = (v63 - 1) >> 1;
                v64 = (v55 + 24 * v63);
              }

              while (v64[2] > v65);
              *v66 = v179;
              v66[2] = v65;
            }
          }
        }

        else
        {
          *v52 = v28;
          *(v52 + 1) = v27;
          v54 = v52 + 24;
          *(v52 + 2) = v29;
          *(a1 + 128) = v52 + 24;
          v55 = *(a1 + 120);
          v56 = v54 - v55;
          if (v54 - v55 >= 25)
          {
            goto LABEL_60;
          }
        }
      }

      while (1)
      {
        v69 = *(a1 + 120);
        v70 = *(a1 + 128);
        if (v69 == v70)
        {
          break;
        }

        v71 = *(v69 + 2);
        if (v71 >= *(a1 + 48))
        {
          break;
        }

        v73 = *v69;
        v72 = *(v69 + 1);
        if (v70 - v69 >= 25)
        {
          v74 = 0;
          v75 = 0xAAAAAAAAAAAAAAABLL * ((v70 - v69) >> 3);
          v179 = *v69;
          v180 = *(v69 + 2);
          v76 = v69;
          do
          {
            v78 = &v76[3 * v74 + 3];
            v79 = (2 * v74) | 1;
            v80 = 2 * v74 + 2;
            if (v80 < v75)
            {
              v81 = *(v78 + 16);
              v82 = *(v78 + 40);
              v83 = v81 <= v82;
              v84 = v81 <= v82 ? 0 : 24;
              v78 += v84;
              if (!v83)
              {
                v79 = v80;
              }
            }

            v77 = *v78;
            v76[2] = *(v78 + 16);
            *v76 = v77;
            v76 = v78;
            v74 = v79;
          }

          while (v79 <= ((v75 - 2) >> 1));
          v85 = v70 - 24;
          if (v78 == v85)
          {
            v93 = v179;
            *(v78 + 16) = v180;
            *v78 = v93;
          }

          else
          {
            v86 = *v85;
            *(v78 + 16) = *(v85 + 2);
            *v78 = v86;
            *v85 = v179;
            *(v85 + 2) = v180;
            v87 = v78 - v69 + 24;
            if (v87 >= 25)
            {
              v88 = (-2 - 0x5555555555555555 * (v87 >> 3)) >> 1;
              v89 = &v69[24 * v88];
              v90 = *(v78 + 16);
              if (*(v89 + 2) > v90)
              {
                v177 = *v78;
                do
                {
                  v91 = v78;
                  v78 = v89;
                  v92 = *v89;
                  *(v91 + 16) = *(v89 + 2);
                  *v91 = v92;
                  if (!v88)
                  {
                    break;
                  }

                  v88 = (v88 - 1) >> 1;
                  v89 = &v69[24 * v88];
                }

                while (*(v89 + 2) > v90);
                *v78 = v177;
                *(v78 + 16) = v90;
              }
            }
          }

          v70 = *(a1 + 128);
        }

        *(a1 + 128) = v70 - 24;
        v94 = *(a1 + 96);
        v95 = *(a1 + 104);
        if (v94 < v95)
        {
          *v94 = v73;
          *(v94 + 1) = v72;
          v96 = v94 + 24;
          *(v94 + 2) = v71;
          *(a1 + 96) = v94 + 24;
          v97 = *(a1 + 88);
          v98 = v96 - v97;
          if (v96 - v97 < 25)
          {
            continue;
          }

LABEL_102:
          v105 = (-2 - 0x5555555555555555 * (v98 >> 3)) >> 1;
          v106 = (v97 + 24 * v105);
          v107 = *(v96 - 2);
          if (v106[1] > v107)
          {
            v110 = *(v96 - 3);
            v109 = v96 - 3;
            v108 = v110;
            v111 = v109[2];
            do
            {
              v112 = v109;
              v109 = v106;
              v113 = *v106;
              v112[2] = v106[2];
              *v112 = v113;
              if (!v105)
              {
                break;
              }

              v105 = (v105 - 1) >> 1;
              v106 = (v97 + 24 * v105);
            }

            while (v106[1] > v107);
            *v109 = v108;
            v109[1] = v107;
            v109[2] = v111;
          }

          continue;
        }

        v99 = *(a1 + 88);
        v100 = 0xAAAAAAAAAAAAAAABLL * ((v94 - v99) >> 3) + 1;
        if (v100 > 0xAAAAAAAAAAAAAAALL)
        {
LABEL_175:
          sub_1794();
        }

        v101 = 0xAAAAAAAAAAAAAAABLL * ((v95 - v99) >> 3);
        if (2 * v101 > v100)
        {
          v100 = 2 * v101;
        }

        if (v101 >= 0x555555555555555)
        {
          v102 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v102 = v100;
        }

        if (v102)
        {
          if (v102 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_174;
        }

        v103 = (8 * ((v94 - v99) >> 3));
        *v103 = v73;
        v103[1] = v72;
        v103[2] = v71;
        v96 = v103 + 3;
        v104 = v103 - (v94 - v99);
        memcpy(v104, v99, v94 - v99);
        *(a1 + 88) = v104;
        *(a1 + 96) = v96;
        *(a1 + 104) = 0;
        if (v99)
        {
          operator delete(v99);
        }

        *(a1 + 96) = v96;
        v97 = *(a1 + 88);
        v98 = v96 - v97;
        if (v96 - v97 >= 25)
        {
          goto LABEL_102;
        }
      }

      while (2)
      {
        v5 = *(a1 + 88);
        v4 = *(a1 + 96);
        v6 = *(a1 + 24);
        v114 = v70 - v69;
        if (v70 != v69)
        {
          v115 = 0xAAAAAAAAAAAAAAABLL * (v114 >> 3);
          if (v115 - 0x5555555555555555 * ((v4 - v5) >> 3) >= v6 && *(v69 + 1) < *(v69 + 2))
          {
            v116 = *v69;
            v178 = *(v69 + 2);
            v177 = v116;
            if (v114 >= 25)
            {
              v117 = 0;
              v118 = *v69;
              v180 = *(v69 + 2);
              v179 = v118;
              v119 = v69;
              do
              {
                v121 = &v119[3 * v117 + 3];
                v122 = (2 * v117) | 1;
                v123 = 2 * v117 + 2;
                if (v123 < v115)
                {
                  v124 = *(v121 + 16);
                  v125 = *(v121 + 40);
                  v126 = v124 <= v125;
                  v127 = v124 <= v125 ? 0 : 24;
                  v121 += v127;
                  if (!v126)
                  {
                    v122 = v123;
                  }
                }

                v120 = *v121;
                v119[2] = *(v121 + 16);
                *v119 = v120;
                v119 = v121;
                v117 = v122;
              }

              while (v122 <= ((v115 - 2) >> 1));
              v128 = v70 - 24;
              if (v121 == v128)
              {
                v137 = v179;
                *(v121 + 16) = v180;
                *v121 = v137;
              }

              else
              {
                v129 = *v128;
                *(v121 + 16) = *(v128 + 2);
                *v121 = v129;
                v130 = v179;
                *(v128 + 2) = v180;
                *v128 = v130;
                v131 = v121 - v69 + 24;
                if (v131 >= 25)
                {
                  v132 = (-2 - 0x5555555555555555 * (v131 >> 3)) >> 1;
                  v133 = &v69[24 * v132];
                  v134 = *(v121 + 16);
                  if (*(v133 + 2) > v134)
                  {
                    v181 = *v121;
                    do
                    {
                      v135 = v121;
                      v121 = v133;
                      v136 = *v133;
                      *(v135 + 16) = *(v133 + 2);
                      *v135 = v136;
                      if (!v132)
                      {
                        break;
                      }

                      v132 = (v132 - 1) >> 1;
                      v133 = &v69[24 * v132];
                    }

                    while (*(v133 + 2) > v134);
                    *v121 = v181;
                    *(v121 + 16) = v134;
                  }
                }
              }

              v70 = *(a1 + 128);
            }

            *(a1 + 128) = v70 - 24;
            v138 = sub_11C4328(a1, &v177);
            *&v181 = v138;
            v182 = v138;
            v139 = *(a1 + 48);
            if (v139 <= v138)
            {
              if (v139 >= v138)
              {
                v146 = *(a1 + 128);
                v145 = *(a1 + 136);
                if (v146 >= v145)
                {
                  v154 = *(a1 + 120);
                  v155 = 0xAAAAAAAAAAAAAAABLL * ((v146 - v154) >> 3) + 1;
                  if (v155 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_176;
                  }

                  v156 = 0xAAAAAAAAAAAAAAABLL * ((v145 - v154) >> 3);
                  if (2 * v156 > v155)
                  {
                    v155 = 2 * v156;
                  }

                  if (v156 >= 0x555555555555555)
                  {
                    v157 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v157 = v155;
                  }

                  if (v157)
                  {
                    if (v157 <= 0xAAAAAAAAAAAAAAALL)
                    {
                      operator new();
                    }

LABEL_174:
                    sub_1808();
                  }

                  v169 = (8 * ((v146 - v154) >> 3));
                  *v169 = v177;
                  v169[1] = v138;
                  v169[2] = v138;
                  v147 = v169 + 3;
                  v170 = v169 - (v146 - v154);
                  memcpy(v170, v154, v146 - v154);
                  *(a1 + 120) = v170;
                  *(a1 + 128) = v147;
                  *(a1 + 136) = 0;
                  if (v154)
                  {
                    operator delete(v154);
                  }

                  *(a1 + 128) = v147;
                  v148 = *(a1 + 120);
                  v149 = v147 - v148;
                  if (v147 - v148 < 25)
                  {
                    goto LABEL_108;
                  }
                }

                else
                {
                  *v146 = v177;
                  *(v146 + 1) = v138;
                  *(v146 + 2) = v138;
                  v147 = v146 + 24;
                  *(a1 + 128) = v146 + 24;
                  v148 = *(a1 + 120);
                  v149 = &v146[-v148 + 24];
                  if (v149 < 25)
                  {
                    goto LABEL_108;
                  }
                }

                v171 = (-2 - 0x5555555555555555 * (v149 >> 3)) >> 1;
                v172 = (v148 + 24 * v171);
                v173 = *(v147 - 1);
                if (v172[2] > v173)
                {
                  v174 = v147 - 3;
                  v179 = *(v147 - 3);
                  do
                  {
                    v175 = v174;
                    v174 = v172;
                    v176 = *v172;
                    v175[2] = v172[2];
                    *v175 = v176;
                    if (!v171)
                    {
                      break;
                    }

                    v171 = (v171 - 1) >> 1;
                    v172 = (v148 + 24 * v171);
                  }

                  while (v172[2] > v173);
                  *v174 = v179;
                  v174[2] = v173;
                }

                goto LABEL_108;
              }

              sub_2D2348(a1 + 152, &v177, &v181, &v182);
            }

            else
            {
              v141 = *(a1 + 96);
              v140 = *(a1 + 104);
              if (v141 >= v140)
              {
                v150 = *(a1 + 88);
                v151 = 0xAAAAAAAAAAAAAAABLL * ((v141 - v150) >> 3) + 1;
                if (v151 > 0xAAAAAAAAAAAAAAALL)
                {
                  goto LABEL_175;
                }

                v152 = 0xAAAAAAAAAAAAAAABLL * ((v140 - v150) >> 3);
                if (2 * v152 > v151)
                {
                  v151 = 2 * v152;
                }

                if (v152 >= 0x555555555555555)
                {
                  v153 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v153 = v151;
                }

                if (v153)
                {
                  if (v153 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  goto LABEL_174;
                }

                v158 = (8 * ((v141 - v150) >> 3));
                *v158 = v177;
                v158[1] = v138;
                v158[2] = v138;
                v142 = v158 + 3;
                v159 = v158 - (v141 - v150);
                memcpy(v159, v150, v141 - v150);
                *(a1 + 88) = v159;
                *(a1 + 96) = v142;
                *(a1 + 104) = 0;
                if (v150)
                {
                  operator delete(v150);
                }

                *(a1 + 96) = v142;
                v143 = *(a1 + 88);
                v144 = v142 - v143;
                if (v142 - v143 >= 25)
                {
LABEL_160:
                  v160 = (-2 - 0x5555555555555555 * (v144 >> 3)) >> 1;
                  v161 = (v143 + 24 * v160);
                  v162 = *(v142 - 2);
                  if (v161[1] > v162)
                  {
                    v165 = *(v142 - 3);
                    v164 = v142 - 3;
                    v163 = v165;
                    v166 = v164[2];
                    do
                    {
                      v167 = v164;
                      v164 = v161;
                      v168 = *v161;
                      v167[2] = v161[2];
                      *v167 = v168;
                      if (!v160)
                      {
                        break;
                      }

                      v160 = (v160 - 1) >> 1;
                      v161 = (v143 + 24 * v160);
                    }

                    while (v161[1] > v162);
                    *v164 = v163;
                    v164[1] = v162;
                    v164[2] = v166;
                  }
                }
              }

              else
              {
                *v141 = v177;
                *(v141 + 1) = v138;
                *(v141 + 2) = v138;
                v142 = v141 + 24;
                *(a1 + 96) = v141 + 24;
                v143 = *(a1 + 88);
                v144 = &v141[-v143 + 24];
                if (v144 >= 25)
                {
                  goto LABEL_160;
                }
              }
            }

LABEL_108:
            v69 = *(a1 + 120);
            v70 = *(a1 + 128);
            continue;
          }
        }

        break;
      }

      v2 = *(a1 + 56);
      v3 = *(a1 + 64);
    }

    while (v2 != v3);
  }
}

void sub_11C3608(void *a1@<X0>, void **a2@<X8>)
{
  v4 = a1[15];
  for (i = a1[16]; v4 != i; i = a1[16])
  {
    v6 = *v4;
    v101 = *(v4 + 16);
    v100 = v6;
    if (i - v4 >= 25)
    {
      v7 = 0;
      v8 = 0xAAAAAAAAAAAAAAABLL * ((i - v4) >> 3);
      v103 = *v4;
      v104 = *(v4 + 16);
      v9 = v4;
      do
      {
        v11 = v9 + 24 * v7 + 24;
        v12 = (2 * v7) | 1;
        v13 = 2 * v7 + 2;
        if (v13 < v8)
        {
          v14 = *(v11 + 16);
          v15 = *(v11 + 40);
          v16 = v14 <= v15;
          v17 = v14 <= v15 ? 0 : 24;
          v11 += v17;
          if (!v16)
          {
            v12 = v13;
          }
        }

        v10 = *v11;
        *(v9 + 16) = *(v11 + 16);
        *v9 = v10;
        v9 = v11;
        v7 = v12;
      }

      while (v12 <= ((v8 - 2) >> 1));
      v18 = (i - 24);
      if (v11 == v18)
      {
        v26 = v103;
        *(v11 + 16) = v104;
        *v11 = v26;
      }

      else
      {
        v19 = *v18;
        *(v11 + 16) = *(v18 + 2);
        *v11 = v19;
        *v18 = v103;
        *(v18 + 2) = v104;
        v20 = v11 - v4 + 24;
        if (v20 >= 25)
        {
          v21 = (-2 - 0x5555555555555555 * (v20 >> 3)) >> 1;
          v22 = v4 + 24 * v21;
          v23 = *(v11 + 16);
          if (*(v22 + 16) > v23)
          {
            v102 = *v11;
            do
            {
              v24 = v11;
              v11 = v22;
              v25 = *v22;
              *(v24 + 16) = *(v22 + 16);
              *v24 = v25;
              if (!v21)
              {
                break;
              }

              v21 = (v21 - 1) >> 1;
              v22 = v4 + 24 * v21;
            }

            while (*(v22 + 16) > v23);
            *v11 = v102;
            *(v11 + 16) = v23;
          }
        }
      }

      i = a1[16];
    }

    a1[16] = i - 24;
    *&v103 = sub_11C4328(a1, &v100);
    if (v103 <= a1[4])
    {
      sub_2D2348((a1 + 11), &v100, &v103, &v103);
    }

    v4 = a1[15];
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1[3])
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v29 = a1[12];
      v30 = a1[11];
      if (v30 == v29)
      {
        break;
      }

      v31 = *v30;
      v101 = *(v30 + 16);
      v100 = v31;
      if (v29 - v30 >= 25)
      {
        v32 = 0;
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 3);
        v34 = *v30;
        v104 = *(v30 + 16);
        v103 = v34;
        v35 = v30;
        do
        {
          v37 = v35 + 24 * v32 + 24;
          v38 = (2 * v32) | 1;
          v39 = 2 * v32 + 2;
          if (v39 < v33)
          {
            v40 = *(v37 + 8);
            v41 = *(v37 + 32);
            v42 = v40 <= v41;
            v43 = v40 <= v41 ? 0 : 24;
            v37 += v43;
            if (!v42)
            {
              v38 = v39;
            }
          }

          v36 = *v37;
          *(v35 + 16) = *(v37 + 16);
          *v35 = v36;
          v35 = v37;
          v32 = v38;
        }

        while (v38 <= ((v33 - 2) >> 1));
        v44 = (v29 - 24);
        if (v37 == v44)
        {
          v55 = v103;
          *(v37 + 16) = v104;
          *v37 = v55;
        }

        else
        {
          v45 = *v44;
          *(v37 + 16) = *(v44 + 2);
          *v37 = v45;
          v46 = v103;
          *(v44 + 2) = v104;
          *v44 = v46;
          v47 = v37 - v30 + 24;
          if (v47 >= 25)
          {
            v48 = (-2 - 0x5555555555555555 * (v47 >> 3)) >> 1;
            v49 = v30 + 24 * v48;
            v50 = *(v37 + 8);
            if (*(v49 + 8) > v50)
            {
              v51 = *v37;
              v52 = *(v37 + 16);
              do
              {
                v53 = v37;
                v37 = v49;
                v54 = *v49;
                *(v53 + 16) = *(v49 + 16);
                *v53 = v54;
                if (!v48)
                {
                  break;
                }

                v48 = (v48 - 1) >> 1;
                v49 = v30 + 24 * v48;
              }

              while (*(v49 + 8) > v50);
              *v37 = v51;
              *(v37 + 8) = v50;
              *(v37 + 16) = v52;
            }
          }
        }

        v29 = a1[12];
      }

      a1[12] = v29 - 24;
      v56 = *(&v100 + 1);
      if (*(&v100 + 1) == v101)
      {
        v58 = a2[1];
        v57 = a2[2];
        if (v58 < v57)
        {
          *v58 = v100;
          *(v58 + 1) = v56;
          v28 = v58 + 16;
        }

        else
        {
          v59 = *a2;
          v60 = v58 - *a2;
          v61 = (v60 >> 4) + 1;
          if (v61 >> 60)
          {
            sub_1794();
          }

          v62 = v57 - v59;
          if (v62 >> 3 > v61)
          {
            v61 = v62 >> 3;
          }

          if (v62 >= 0x7FFFFFFFFFFFFFF0)
          {
            v63 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v63 = v61;
          }

          if (v63)
          {
            if (!(v63 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v64 = (16 * (v60 >> 4));
          *v64 = v100;
          v64[1] = v56;
          v28 = v64 + 2;
          memcpy(0, v59, v60);
          *a2 = 0;
          a2[2] = 0;
          if (v59)
          {
            operator delete(v59);
          }
        }

        a2[1] = v28;
        v27 = v101;
        if (a1[3] <= ((v28 - *a2) >> 4))
        {
          break;
        }
      }

      else
      {
        *&v103 = sub_11C4328(a1, &v100);
        sub_2D2348((a1 + 11), &v100, &v103, &v103);
        if (a1[3] <= ((a2[1] - *a2) >> 4))
        {
          break;
        }
      }
    }
  }

  else
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v65 = a1[11];
  for (j = a1[12]; v65 != j; j = a1[12])
  {
    if (*(v65 + 8) != v27)
    {
      break;
    }

    v68 = *v65;
    v101 = *(v65 + 16);
    v100 = v68;
    if (j - v65 >= 25)
    {
      v69 = 0;
      v70 = 0xAAAAAAAAAAAAAAABLL * ((j - v65) >> 3);
      v103 = *v65;
      v104 = *(v65 + 16);
      v71 = v65;
      do
      {
        v73 = v71 + 24 * v69 + 24;
        v74 = (2 * v69) | 1;
        v75 = 2 * v69 + 2;
        if (v75 < v70)
        {
          v76 = *(v73 + 8);
          v77 = *(v73 + 32);
          v78 = v76 <= v77;
          v79 = v76 <= v77 ? 0 : 24;
          v73 += v79;
          if (!v78)
          {
            v74 = v75;
          }
        }

        v72 = *v73;
        *(v71 + 16) = *(v73 + 16);
        *v71 = v72;
        v71 = v73;
        v69 = v74;
      }

      while (v74 <= ((v70 - 2) >> 1));
      v80 = (j - 24);
      if (v73 == v80)
      {
        v90 = v103;
        *(v73 + 16) = v104;
        *v73 = v90;
      }

      else
      {
        v81 = *v80;
        *(v73 + 16) = *(v80 + 2);
        *v73 = v81;
        *v80 = v103;
        *(v80 + 2) = v104;
        v82 = v73 - v65 + 24;
        if (v82 >= 25)
        {
          v83 = (-2 - 0x5555555555555555 * (v82 >> 3)) >> 1;
          v84 = v65 + 24 * v83;
          v85 = *(v73 + 8);
          if (*(v84 + 8) > v85)
          {
            v86 = *v73;
            v87 = *(v73 + 16);
            do
            {
              v88 = v73;
              v73 = v84;
              v89 = *v84;
              *(v88 + 16) = *(v84 + 16);
              *v88 = v89;
              if (!v83)
              {
                break;
              }

              v83 = (v83 - 1) >> 1;
              v84 = v65 + 24 * v83;
            }

            while (*(v84 + 8) > v85);
            *v73 = v86;
            *(v73 + 8) = v85;
            *(v73 + 16) = v87;
          }
        }
      }

      j = a1[12];
    }

    a1[12] = j - 24;
    v91 = *(&v100 + 1);
    if (*(&v100 + 1) == v101)
    {
      v93 = a2[1];
      v92 = a2[2];
      if (v93 < v92)
      {
        *v93 = v100;
        *(v93 + 1) = v91;
        v67 = v93 + 16;
      }

      else
      {
        v94 = *a2;
        v95 = v93 - *a2;
        v96 = (v95 >> 4) + 1;
        if (v96 >> 60)
        {
          sub_1794();
        }

        v97 = v92 - v94;
        if (v97 >> 3 > v96)
        {
          v96 = v97 >> 3;
        }

        if (v97 >= 0x7FFFFFFFFFFFFFF0)
        {
          v98 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v98 = v96;
        }

        if (v98)
        {
          if (!(v98 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v99 = (16 * (v95 >> 4));
        *v99 = v100;
        v99[1] = v91;
        v67 = v99 + 2;
        memcpy(0, v94, v95);
        *a2 = 0;
        a2[2] = 0;
        if (v94)
        {
          operator delete(v94);
        }
      }

      a2[1] = v67;
    }

    else
    {
      *&v103 = sub_11C4328(a1, &v100);
      sub_2D2348((a1 + 11), &v100, &v103, &v103);
    }

    v65 = a1[11];
  }
}

void sub_11C3DA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_11C3DD8(uint64_t *a1, unsigned int a2)
{
  if (sub_57A90(a2) <= 0x1D)
  {
    v4 = sub_57A90(a2);
    v5 = sub_57A90(a2);
    if (v4 <= 0x1D && v5 >> 1 <= v4 >> 1)
    {
      sub_57A90(a2);
      operator new();
    }
  }

  v6 = sub_BA4870(*a1, a2, 1);
  if (v6)
  {
    v7 = &v6[-*v6];
    if (*v7 >= 7u)
    {
      v8 = *(v7 + 3);
      if (v8)
      {
        v9 = &v6[v8 + *&v6[v8]];
        v10 = &v9[-*v9];
        if (*v10 >= 5u)
        {
          v11 = *(v10 + 2);
          if (v11)
          {
            v12 = *&v9[v11 + *&v9[v11]];
            if (v12)
            {
              v13 = 0;
              while (1)
              {
                v36 = __PAIR64__(v13, a2);
                *&v39 = sub_11C44FC(*a1, __PAIR64__(v13, a2));
                *(&v39 + 1) = v15;
                v16 = sub_2D2764(a1, &v39);
                v37 = v17;
                v38 = v16;
                v18 = a1[6];
                if (v18 > v17)
                {
                  break;
                }

                if (v18 < v16)
                {
                  v14 = a1 + 19;
                  goto LABEL_13;
                }

                v20 = a1[16];
                v19 = a1[17];
                if (v20 >= v19)
                {
                  v24 = a1[15];
                  v25 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v24) >> 3) + 1;
                  if (v25 > 0xAAAAAAAAAAAAAAALL)
                  {
                    sub_1794();
                  }

                  v26 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v24) >> 3);
                  if (2 * v26 > v25)
                  {
                    v25 = 2 * v26;
                  }

                  if (v26 >= 0x555555555555555)
                  {
                    v27 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v27 = v25;
                  }

                  if (v27)
                  {
                    if (v27 <= 0xAAAAAAAAAAAAAAALL)
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v28 = (8 * ((v20 - v24) >> 3));
                  *v28 = v36;
                  v28[1] = v16;
                  v28[2] = v17;
                  v21 = v28 + 3;
                  v29 = v28 - (v20 - v24);
                  memcpy(v29, v24, v20 - v24);
                  a1[15] = v29;
                  a1[16] = v21;
                  a1[17] = 0;
                  if (v24)
                  {
                    operator delete(v24);
                  }

                  a1[16] = v21;
                  v22 = a1[15];
                  v23 = v21 - v22;
                  if (v21 - v22 < 25)
                  {
                    goto LABEL_14;
                  }

LABEL_33:
                  v30 = (-2 - 0x5555555555555555 * (v23 >> 3)) >> 1;
                  v31 = v22 + 24 * v30;
                  v32 = *(v21 - 1);
                  if (*(v31 + 16) > v32)
                  {
                    v33 = v21 - 3;
                    v39 = *(v21 - 3);
                    do
                    {
                      v34 = v33;
                      v33 = v31;
                      v35 = *v31;
                      v34[2] = *(v31 + 16);
                      *v34 = v35;
                      if (!v30)
                      {
                        break;
                      }

                      v30 = (v30 - 1) >> 1;
                      v31 = v22 + 24 * v30;
                    }

                    while (*(v31 + 16) > v32);
                    *v33 = v39;
                    v33[2] = v32;
                  }

                  goto LABEL_14;
                }

                *v20 = v36;
                v20[1] = v16;
                v20[2] = v17;
                v21 = v20 + 3;
                a1[16] = (v20 + 3);
                v22 = a1[15];
                v23 = v20 - v22 + 24;
                if (v23 >= 25)
                {
                  goto LABEL_33;
                }

LABEL_14:
                if (++v13 == v12)
                {
                  return;
                }
              }

              v14 = a1 + 11;
LABEL_13:
              sub_2D2348(v14, &v36, &v38, &v37);
              goto LABEL_14;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_11C4328(uint64_t a1, unint64_t *a2)
{
  sub_11C4710(*a1, *a2, &__p);
  sub_2CCAE0(&__p, *(a1 + 8), *(a1 + 40), v22, v3, v4);
  v5 = v22[0] * 100.0;
  if (v22[0] * 100.0 >= 0.0)
  {
    v6 = v22[0] * 100.0;
    if (v5 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v7 = (v5 + v5) + 1;
  }

  else
  {
    v6 = v22[0] * 100.0;
    if (v5 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v7 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
  }

  v6 = (v7 >> 1);
LABEL_7:
  if (v6 < 9.22337204e18)
  {
    if (v5 >= 0.0)
    {
      if (v5 >= 4.50359963e15)
      {
        goto LABEL_16;
      }

      v8 = (v5 + v5) + 1;
    }

    else
    {
      if (v5 <= -4.50359963e15)
      {
        goto LABEL_16;
      }

      v8 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
    }

    v5 = (v8 >> 1);
LABEL_16:
    v9 = v5;
    v10 = __p;
    if (!__p)
    {
      return v9;
    }

    goto LABEL_17;
  }

  v9 = 0x7FFFFFFFFFFFFFFELL;
  v10 = __p;
  if (!__p)
  {
    return v9;
  }

LABEL_17:
  v11 = v24;
  v12 = v10;
  if (v24 != v10)
  {
    v13 = v24;
    do
    {
      v16 = *(v13 - 3);
      v13 -= 3;
      v15 = v16;
      if (v16)
      {
        v17 = *(v11 - 2);
        v14 = v15;
        if (v17 != v15)
        {
          v18 = *(v11 - 2);
          do
          {
            v20 = *(v18 - 3);
            v18 -= 24;
            v19 = v20;
            if (v20)
            {
              *(v17 - 2) = v19;
              operator delete(v19);
            }

            v17 = v18;
          }

          while (v18 != v15);
          v14 = *v13;
        }

        *(v11 - 2) = v15;
        operator delete(v14);
      }

      v11 = v13;
    }

    while (v13 != v10);
    v12 = __p;
  }

  v24 = v10;
  operator delete(v12);
  return v9;
}

void sub_11C44E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_52FF0(va);
  _Unwind_Resume(a1);
}

std::string::size_type sub_11C44FC(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  v4 = sub_BA4870(a1, a2, 1);
  if (!v4 || (v5 = &v4[-*v4], *v5 < 7u) || (v6 = *(v5 + 3)) == 0 || (v7 = &v4[v6 + *&v4[v6]], v8 = &v7[-*v7], *v8 < 5u) || (v9 = *(v8 + 2)) == 0 || (v10 = &v7[v9 + *&v7[v9]], *v10 <= v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v17 = v3;
    v18 = exception;
    v25[0] = v17;
    v25[1] = v2;
    sub_2FF494(v25, &v22);
    sub_23E08("Referenced polygon ", &v22, &v23);
    sub_30F54(&v24, " does not exist.", &v23);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v24;
    }

    else
    {
      v19 = v24.__r_.__value_.__r.__words[0];
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    v21 = sub_2D390(v18, v19, size);
  }

  v11 = &v10[4 * v3 + 4 + *&v10[4 * v3 + 4]];
  v12 = &v11[*&v11[-*v11 + 6]];
  v13 = *(v12 + 4);
  if (v13 >= 0xFFFFFFFE)
  {
    v13 = -2;
  }

  LODWORD(v23.__r_.__value_.__l.__data_) = *v12;
  HIDWORD(v23.__r_.__value_.__r.__words[0]) = v13;
  LODWORD(v23.__r_.__value_.__r.__words[1]) = 0x7FFFFFFF;
  v14 = *(v12 + 8);
  LODWORD(v12) = *(v12 + 12);
  if (v12 >= 0xFFFFFFFE)
  {
    v12 = 4294967294;
  }

  else
  {
    v12 = v12;
  }

  v22.__r_.__value_.__r.__words[0] = v14 | (v12 << 32);
  LODWORD(v22.__r_.__value_.__r.__words[1]) = 0x7FFFFFFF;
  sub_320C0(&v24, &v23, &v22);
  return v24.__r_.__value_.__r.__words[0];
}

void sub_11C4690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_11C4710(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v5 = HIDWORD(a2);
  v6 = sub_BA4870(a1, a2, 1);
  if (!v6 || (v7 = &v6[-*v6], *v7 < 7u) || (v8 = *(v7 + 3)) == 0 || (v9 = &v6[v8 + *&v6[v8]], v10 = &v9[-*v9], *v10 < 5u) || (v11 = *(v10 + 2)) == 0 || (v12 = &v9[v11 + *&v9[v11]], *v12 <= v5))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v23[0] = v5;
    v23[1] = v3;
    sub_2FF494(v23, &v20);
    sub_23E08("Referenced polygon ", &v20, &v21);
    sub_30F54(&v22, " does not exist.", &v21);
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v19 = sub_2D390(exception, v17, size);
  }

  v13 = &v12[4 * v5 + 4 + *&v12[4 * v5 + 4]];
  v14 = &v13[*&v13[-*v13 + 4]];
  v15 = &v14[*v14];

  sub_2CBB58(v15, a3);
}

void sub_11C4874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

char *sub_11C48F4(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  v4 = sub_BA4870(a1, a2, 1);
  if (!v4 || (v5 = &v4[-*v4], *v5 < 7u) || (v6 = *(v5 + 3)) == 0 || (v7 = &v4[v6 + *&v4[v6]], v8 = &v7[-*v7], *v8 < 5u) || (v9 = *(v8 + 2)) == 0 || (v10 = &v7[v9 + *&v7[v9]], *v10 <= v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v21 = v3;
    v22 = exception;
    v28[0] = v21;
    v28[1] = v2;
    sub_2FF494(v28, &v26);
    sub_23E08("Referenced polygon ", &v26, &v27);
    sub_30F54(&v29, " does not exist.", &v27);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v29;
    }

    else
    {
      v23 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    v25 = sub_2D390(v22, v23, size);
  }

  v11 = &v10[4 * v3 + 4 + *&v10[4 * v3 + 4]];
  v12 = &v11[-*v11];
  if (*v12 < 9u)
  {
    return 0;
  }

  v13 = *(v12 + 4);
  if (!v13)
  {
    return 0;
  }

  v14 = &v11[v13];
  v15 = *v14;
  v17 = &v14[v15 + 4];
  v16 = *&v14[v15];
  v29.__r_.__value_.__r.__words[0] = v17;
  v29.__r_.__value_.__l.__size_ = v16;
  v29.__r_.__value_.__r.__words[2] = 0xF424000000040;
  v30 = 257;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v18 = sub_4303F8(&v29, 0, 0);
  result = 0;
  if (v18)
  {
    return &v17[*v17];
  }

  return result;
}

void sub_11C4AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_11C4B38(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_2C939C(a1, a2, a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0x1Bu)
  {
    v9 = *(v8 + 13);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v6)
      {
        return &v9[v6 + 1] + v9[v6 + 1];
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
      v19 = v6;
      v20 = v12;
      v18[0] = sub_7FCF0(6u);
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

    return &v9[v6 + 1] + v9[v6 + 1];
  }

  return 0;
}

void sub_11C4C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_11C4CC4(void *a1, void *a2, void *a3)
{
  v3 = *a2;
  v4 = __ROR8__(*a2, 32);
  v5 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) >> 33));
  v6 = v5 ^ (v5 >> 33);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_31;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5 ^ (v5 >> 33);
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
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
        if (*(v11 + 4) == v3 && *(v11 + 5) == HIDWORD(v3))
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

  if (*(v11 + 4) != v3 || *(v11 + 5) != HIDWORD(v3))
  {
    goto LABEL_12;
  }

  return v11;
}

uint64_t sub_11C503C(uint64_t a1, void *a2)
{
  *a1 = a2;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  do
  {
    v6 = a1 + v5;
    *(v6 + 24) = 0;
    *(v6 + 48) = 0;
    *(v6 + 32) = 0;
    *(v6 + 56) = 0;
    v5 += 48;
  }

  while (v5 != 3840);
  *(a1 + 3864) = 0u;
  v7 = *a2;
  *(a1 + 3880) = -1;
  if (v7)
  {
    LOBYTE(v7) = sub_2D5658(v7);
  }

  *(a1 + 3884) = v7;
  return a1;
}

uint64_t **sub_11C50DC()
{
  result = __chkstk_darwin();
  if (*v2)
  {
    v3 = v2;
    v4 = result;
    v5 = (*result)[1];
    v150 = **result;
    v151 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    sub_3603F0(v152, &v150);
    v6 = v151;
    if (v151 && !atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v87[0] = &unk_2290750;
    v87[1] = 0;
    v88 = 0u;
    v89 = 0;
    v90 = &unk_2290750;
    v91 = 0;
    v92 = 0u;
    v93 = 0;
    v94 = &unk_2290750;
    v95 = 0;
    v96 = 0u;
    v97 = 0;
    v98 = &unk_2290750;
    v99 = 0u;
    v101 = 0;
    v102 = &unk_2290750;
    v100 = 0;
    v104 = 0;
    v103 = 0u;
    v105 = 0;
    v106 = &unk_2290750;
    v109 = 0;
    v110 = &unk_2290750;
    v108 = 0;
    v107 = 0u;
    v111 = 0u;
    v112 = 0;
    v113 = 0;
    v114 = &unk_2290750;
    v115 = 0u;
    v117 = 0;
    v118 = &unk_2290750;
    v116 = 0;
    v119 = 0u;
    v120 = 0;
    v121 = 0;
    v122 = &unk_2290750;
    v123 = 0u;
    v125 = 0;
    v124 = 0;
    v129 = 0;
    v127 = 0u;
    v126 = &unk_2290750;
    v128 = 0;
    v130 = &unk_2290750;
    v133 = 0;
    v131 = 0u;
    v132 = 0;
    v134 = &unk_2290750;
    v137 = 0;
    v135 = 0u;
    v136 = 0;
    v138 = &unk_2290750;
    v141 = 0;
    v139 = 0u;
    v140 = 0;
    v142 = &unk_2290750;
    v145 = 0;
    v143 = 0u;
    v144 = 0;
    v146 = &unk_2290750;
    v149 = 0;
    v147 = 0u;
    v148 = 0;
    v7 = *v3;
    v8 = *(*v3 + 8);
    v78 = *(*v3 + 16);
    if (v8 != v78)
    {
      v85 = *(v7 + 544);
      v81 = v4;
      do
      {
        if (*v8 >= 0)
        {
          v9 = *v8;
        }

        else
        {
          v9 = -*v8;
        }

        v10 = sub_335D84(v152, v9);
        if (v10)
        {
          v11 = v10 > 0xFFFFFFFEFFFFFFFFLL;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = v10 & 0xFFFF00000000;
        }

        if (v10 <= 0xFFFFFFFEFFFFFFFFLL)
        {
          v13 = v10;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          v14 = *(v8 + 8);
          v154 = 0;
          v155 = 0;
          v156 = 0;
          LODWORD(v15) = *(v4 + 970);
          if (v15 != -1)
          {
            goto LABEL_40;
          }

          v16 = sub_101E790((v4 + 1), 1u, 1);
          if (!v16)
          {
LABEL_37:
            LODWORD(v15) = 1;
            v79 = v8;
            if (!v14)
            {
              goto LABEL_132;
            }

            goto LABEL_41;
          }

          v17 = &v16[-*v16];
          v18 = *v17;
          if (v18 < 0xB)
          {
            if (v18 < 9)
            {
              goto LABEL_37;
            }
          }

          else if (*(v17 + 5))
          {
            v15 = &v16[*(v17 + 5) + *&v16[*(v17 + 5)]];
            v19 = &v15[-*v15];
            if (*v19 >= 5u && (v20 = *(v19 + 2)) != 0)
            {
              LODWORD(v15) = v15[v20];
              v79 = v8;
              if (!v14)
              {
                goto LABEL_132;
              }
            }

            else
            {
              LODWORD(v15) = 0;
LABEL_40:
              v79 = v8;
              if (!v14)
              {
                goto LABEL_132;
              }
            }

LABEL_41:
            v86 = (v15 - 1);
            if (v15 == 1)
            {
              do
              {
                sub_11C5B00((v4 + 1), v12 | v13, 1, &v154);
                sub_11C5B00((v4 + 1), v12 | v13, 0, &v154);
                v14 &= v14 - 1;
              }

              while (v14);
              goto LABEL_132;
            }

            v82 = v13;
            v83 = v12;
LABEL_43:
            v24 = 0;
            v80 = v14;
            v25 = __clz(__rbit32(v14));
            v153 = 1;
LABEL_44:
            sub_11C5B00((v4 + 1), v12 | v13, *(&v153 + v24), &v154);
            v84 = v24;
            v26 = 0;
LABEL_45:
            v27 = 0;
            v28 = v154[++v26];
            v0 = v0 & 0xFFFF0000 | v25;
            v29 = (HIDWORD(v28) + 2654435769 + (v28 << 6) + (v28 >> 2)) ^ v28;
            v30 = (v25 - 1640531527 + (v29 << 6) + (v29 >> 2)) ^ v29;
            v31 = (v30 << 6) + 2654435769u + (v30 >> 2);
            v32 = v31 ^ v30;
            v33 = (v31 ^ ~v30) + ((v31 ^ v30) << 21);
            v34 = 21 * ((265 * (v33 ^ (v33 >> 24))) ^ ((265 * (v33 ^ (v33 >> 24))) >> 14));
            v35 = 2147483649u * (v34 ^ (v34 >> 28));
            v36 = &v87[6 * (((((v34 ^ (v34 >> 28)) >> 8) ^ ((-2147483647 * (v34 ^ (v34 >> 28))) >> 16)) ^ ((-2147483647 * (v34 ^ (v34 >> 28))) >> 24)) & 0xF)];
            v37 = v35 >> 7;
            v38 = v36[3];
            v39 = *v36;
            v40 = 0x101010101010101 * (v35 & 0x7F);
            for (i = v35 >> 7; ; i = v27 + v42)
            {
              v42 = i & v38;
              v43 = *(v39 + v42);
              v44 = ((v43 ^ v40) - 0x101010101010101) & ~(v43 ^ v40) & 0x8080808080808080;
              if (v44)
              {
                break;
              }

LABEL_53:
              if ((v43 & (~v43 << 6) & 0x8080808080808080) != 0)
              {
                goto LABEL_56;
              }

              v27 += 8;
            }

            while (1)
            {
              v45 = (v42 + (__clz(__rbit64(v44)) >> 3)) & v38;
              v46 = v36[1] + 12 * v45;
              if (*v46 == v28 && __PAIR64__(*(v46 + 8), *(v46 + 4)) == __PAIR64__(v25, HIDWORD(v28)) && !*(v46 + 9))
              {
                break;
              }

              v44 &= v44 - 1;
              if (!v44)
              {
                goto LABEL_53;
              }
            }

            if (v38 != v45)
            {
              goto LABEL_127;
            }

LABEL_56:
            for (j = 0; ; v37 = j + v48)
            {
              v48 = v37 & v38;
              v49 = *(v39 + v48);
              v50 = ((v49 ^ v40) - 0x101010101010101) & ~(v49 ^ v40) & 0x8080808080808080;
              if (v50)
              {
                break;
              }

LABEL_62:
              if ((v49 & (~v49 << 6) & 0x8080808080808080) != 0)
              {
                v52 = v36[1] + 12 * sub_11C5FEC(v36, v35);
                *v52 = v28;
                *(v52 + 8) = v0;
                goto LABEL_65;
              }

              j += 8;
            }

            while (1)
            {
              v51 = v36[1] + 12 * ((v48 + (__clz(__rbit64(v50)) >> 3)) & v38);
              if (*v51 == v28 && __PAIR64__(*(v51 + 8), *(v51 + 4)) == __PAIR64__(v25, HIDWORD(v28)) && !*(v51 + 9))
              {
                break;
              }

              v50 &= v50 - 1;
              if (!v50)
              {
                goto LABEL_62;
              }
            }

LABEL_65:
            v53 = 0;
            v54 = *(v7 + 696) - 1;
            v55 = -1;
            for (k = v32; ; k = v53 + v57)
            {
              v57 = k & v54;
              v58 = *(v7 + 720) + 16 * (k & v54);
              v59 = *v58;
              if (*(v7 + 704) == *v58 && *(v7 + 708) == *(v58 + 4) && *(v58 + 8) == *(v7 + 712) && *(v7 + 713) == *(v58 + 9))
              {
                if (v55 == -1)
                {
                  v60 = v57;
                }

                else
                {
                  v60 = v55;
                }

                goto LABEL_86;
              }

              if (*(v7 + 680) && *(v7 + 664) == v59 && *(v7 + 668) == *(v58 + 4) && *(v58 + 8) == *(v7 + 672) && *(v7 + 673) == *(v58 + 9))
              {
                if (v55 == -1)
                {
                  v55 = v57;
                }
              }

              else if (v59 == v28 && __PAIR64__(*(v58 + 8), *(v58 + 4)) == __PAIR64__(v25, HIDWORD(v28)) && !*(v58 + 9))
              {
                if (v57 != -1)
                {
                  goto LABEL_126;
                }

                v60 = -1;
LABEL_86:
                if (!sub_11C6638(v7 + 632, 1))
                {
                  v72 = *(v7 + 688);
                  v73 = *(v7 + 680);
                  if ((v72 - v73) < 0xFFFFFFFFFFFFFFFLL)
                  {
                    v74 = *(v7 + 720) + 16 * v60;
                    if (v73 && *(v7 + 664) == *v74 && *(v7 + 668) == *(v74 + 4) && *(v74 + 8) == *(v7 + 672) && *(v7 + 673) == *(v74 + 9))
                    {
                      *(v7 + 680) = v73 - 1;
LABEL_125:
                      *v74 = v28;
                      *(v74 + 8) = v0 | 0x7FFFFFFF00000000;
                      v58 = *(v7 + 720) + 16 * v60;
                      goto LABEL_126;
                    }

                    v75 = v72 + 1;
LABEL_124:
                    *(v7 + 688) = v75;
                    goto LABEL_125;
                  }

LABEL_139:
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(exception, "insert overflow");
                }

                v61 = 0;
                v62 = *(v7 + 696) - 1;
                v63 = *(v7 + 720);
                v64 = *(v7 + 680);
                v65 = *(v7 + 664);
                v66 = *(v7 + 668);
                v67 = *(v7 + 672);
                v68 = -1;
                v69 = *(v7 + 673);
                while (2)
                {
                  v70 = v32 & v62;
                  v58 = v63 + 16 * (v32 & v62);
                  v71 = *v58;
                  if (*(v7 + 704) == *v58 && *(v7 + 708) == *(v58 + 4) && *(v58 + 8) == *(v7 + 712) && *(v7 + 713) == *(v58 + 9))
                  {
                    if (v68 == -1)
                    {
                      v60 = v32 & v62;
                    }

                    else
                    {
                      v60 = v68;
                    }

LABEL_116:
                    v76 = *(v7 + 688);
                    if ((v76 - v64) < 0xFFFFFFFFFFFFFFFLL)
                    {
                      v74 = v63 + 16 * v60;
                      if (v64 && v65 == *v74 && v66 == *(v74 + 4) && *(v74 + 8) == v67 && v69 == *(v74 + 9))
                      {
                        *(v7 + 680) = v64 - 1;
                        goto LABEL_125;
                      }

                      v75 = v76 + 1;
                      goto LABEL_124;
                    }

                    goto LABEL_139;
                  }

                  if (v64 && v65 == v71 && v66 == *(v58 + 4) && *(v58 + 8) == v67 && v69 == *(v58 + 9))
                  {
                    if (v68 == -1)
                    {
                      v68 = v32 & v62;
                    }

LABEL_90:
                    v32 = ++v61 + v70;
                    continue;
                  }

                  break;
                }

                if (v71 != v28 || __PAIR64__(*(v58 + 8), *(v58 + 4)) != __PAIR64__(v25, HIDWORD(v28)) || *(v58 + 9))
                {
                  goto LABEL_90;
                }

                if (v70 == -1)
                {
                  v60 = -1;
                  goto LABEL_116;
                }

LABEL_126:
                *(v58 + 12) = v85;
LABEL_127:
                if (v26 == v86)
                {
                  v12 = v83;
                  v24 = v84 + 1;
                  v4 = v81;
                  v13 = v82;
                  if (v84 == 1)
                  {
                    v14 = v80 & ~(1 << v25);
                    if (!v14)
                    {
                      goto LABEL_132;
                    }

                    goto LABEL_43;
                  }

                  goto LABEL_44;
                }

                goto LABEL_45;
              }

              ++v53;
            }
          }

          v21 = *(v17 + 4);
          if (!v21)
          {
            goto LABEL_37;
          }

          v22 = sub_101E640(&v16[v21 + *&v16[v21]], 0);
          v23 = (v22 - *v22);
          if (*v23 < 5u)
          {
            LODWORD(v15) = 0;
          }

          else
          {
            v15 = v23[2];
            if (v15)
            {
              LODWORD(v15) = v15[v22];
            }
          }

          *(v4 + 970) = v15;
          v79 = v8;
          if (v14)
          {
            goto LABEL_41;
          }

LABEL_132:
          if (v154)
          {
            v155 = v154;
            operator delete(v154);
          }

          v8 = v79;
        }

        v8 += 16;
      }

      while (v8 != v78);
    }

    sub_360988(v87);
    return sub_360B9C(v152);
  }

  return result;
}

void sub_11C5A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  v19 = *(v17 - 112);
  if (v19)
  {
    *(v17 - 104) = v19;
    operator delete(v19);
  }

  sub_360988(va);
  sub_360B9C(&STACK[0x358]);
  _Unwind_Resume(a1);
}

void sub_11C5B00(uint64_t a1, unint64_t a2, int a3, const void **a4)
{
  a4[1] = *a4;
  v8 = sub_101E790(a1, a2, 1);
  if (!v8)
  {
    return;
  }

  v9 = &v8[-*v8];
  if (*v9 < 5u)
  {
    goto LABEL_13;
  }

  v10 = *(v9 + 2);
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = HIDWORD(a2);
  v12 = v8;
  v13 = sub_101F5B8(&v8[v10 + *&v8[v10]], v11);
  v14 = 2;
  if (a3)
  {
    v14 = 0;
  }

  v15 = *(v13 + v14);
  v16 = (v12 - *v12);
  if (*v16 >= 7u && (v17 = v16[3]) != 0)
  {
    v18 = sub_101F704((v12 + v17 + *(v12 + v17)), v15);
    v19 = (v18 - *v18);
    if (*v19 < 5u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18 = sub_101F704(0, v15);
    v19 = (v18 - *v18);
    if (*v19 < 5u)
    {
      goto LABEL_13;
    }
  }

  v20 = v19[2];
  if (v20)
  {
    v21 = (v18 + v20 + *(v18 + v20));
    goto LABEL_14;
  }

LABEL_13:
  v21 = 0;
LABEL_14:
  v22 = a4[1];
  v23 = *a4;
  if ((*v21 + 1) > ((a4[2] - *a4) >> 3))
  {
    operator new();
  }

  v24 = (v22 - v23) >> 3;
  if (v22 == v23)
  {
    sub_11C5E24(a4, 1 - v24);
    v25 = *v21;
    if (!v25)
    {
      return;
    }

    goto LABEL_22;
  }

  if (v24 >= 2)
  {
    a4[1] = v23 + 8;
  }

  v25 = *v21;
  if (v25)
  {
LABEL_22:
    v26 = &v21[2 * v25 + 1];
    for (i = v21 + 1; i != v26; i += 2)
    {
      v30 = *i;
      v29 = i[1];
      if (*(a1 + 3876) != 1 || (v31 = sub_101E790(a1, *i, 1)) != 0 && (v32 = &v31[-*v31], *v32 >= 9u) && (v33 = *(v32 + 4)) != 0 && *&v31[v33 + *&v31[v33]])
      {
        v34 = v29 << 32;
        v36 = a4[1];
        v35 = a4[2];
        if (v36 >= v35)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v30 = 0;
        v34 = 0xFFFFFFFF00000000;
        v36 = a4[1];
        v35 = a4[2];
        if (v36 >= v35)
        {
LABEL_33:
          v37 = *a4;
          v38 = v36 - *a4;
          v39 = (v38 >> 3) + 1;
          if (v39 >> 61)
          {
            sub_1794();
          }

          v40 = v35 - v37;
          if (v40 >> 2 > v39)
          {
            v39 = v40 >> 2;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFF8)
          {
            v41 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = v39;
          }

          if (v41)
          {
            if (!(v41 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v42 = (8 * (v38 >> 3));
          *v42 = v30 | v34;
          v28 = v42 + 1;
          memcpy(0, v37, v38);
          *a4 = 0;
          a4[1] = v28;
          a4[2] = 0;
          if (v37)
          {
            operator delete(v37);
          }

          goto LABEL_24;
        }
      }

      *v36 = v30 | v34;
      v28 = v36 + 8;
LABEL_24:
      a4[1] = v28;
    }
  }
}

void sub_11C5E24(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v9 = &v4[a2];
      v10 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v10 < 7)
      {
        goto LABEL_33;
      }

      v11 = v10 + 1;
      v12 = &v4[v11 & 0x3FFFFFFFFFFFFFF8];
      v13 = v4 + 4;
      *&v14 = 0xFFFFFFFF00000000;
      *(&v14 + 1) = 0xFFFFFFFF00000000;
      v15 = v11 & 0x3FFFFFFFFFFFFFF8;
      do
      {
        *(v13 - 2) = v14;
        *(v13 - 1) = v14;
        *v13 = v14;
        v13[1] = v14;
        v13 += 4;
        v15 -= 8;
      }

      while (v15);
      v4 = v12;
      if (v11 != (v11 & 0x3FFFFFFFFFFFFFF8))
      {
LABEL_33:
        do
        {
          *v4++ = 0xFFFFFFFF00000000;
        }

        while (v4 != v9);
      }

      v4 = v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 3;
    v6 = v5 + a2;
    if ((v5 + a2) >> 61)
    {
      sub_1794();
    }

    v7 = v3 - *a1;
    if (v7 >> 2 > v6)
    {
      v6 = v7 >> 2;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v8 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v16 = 8 * v5;
    v17 = 8 * v5 + 8 * a2;
    v18 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v19 = (8 * v5);
    if (v18 < 7)
    {
      goto LABEL_34;
    }

    v20 = v18 + 1;
    v19 = (v16 + 8 * (v20 & 0x3FFFFFFFFFFFFFF8));
    v21 = (v16 + 32);
    *&v22 = 0xFFFFFFFF00000000;
    *(&v22 + 1) = 0xFFFFFFFF00000000;
    v23 = v20 & 0x3FFFFFFFFFFFFFF8;
    do
    {
      *(v21 - 2) = v22;
      *(v21 - 1) = v22;
      *v21 = v22;
      v21[1] = v22;
      v21 += 4;
      v23 -= 8;
    }

    while (v23);
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFF8))
    {
LABEL_34:
      do
      {
        *v19++ = 0xFFFFFFFF00000000;
      }

      while (v19 != v17);
    }

    v24 = *a1;
    v25 = *(a1 + 8) - *a1;
    v26 = v16 - v25;
    memcpy((v16 - v25), *a1, v25);
    *a1 = v26;
    *(a1 + 8) = v17;
    *(a1 + 16) = 0;
    if (v24)
    {

      operator delete(v24);
    }
  }
}

unint64_t sub_11C5FEC(void *a1, unint64_t a2)
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
      sub_11C60E4(a1);
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

uint64_t sub_11C60E4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    v2 = (&dword_0 + 1);
LABEL_4:
    sub_11C6114(a1, v2);
  }

  if (*(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    v2 = ((2 * v1) | 1);
    goto LABEL_4;
  }

  return sub_11C6310(a1);
}

uint64_t sub_11C6310(uint64_t result)
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
        v18 = (*(result + 8) + 12 * i);
        v19 = (v18[1] + 2654435769 + (*v18 << 6) + (*v18 >> 2)) ^ *v18;
        v20 = (*(v18 + 8) + 2654435769 + (v19 << 6) + (v19 >> 2)) ^ v19;
        v21 = *(v18 + 9) + 2654435769 + (v20 << 6) + (v20 >> 2);
        v22 = (v21 ^ ~v20) + ((v21 ^ v20) << 21);
        v23 = 21 * ((265 * (v22 ^ (v22 >> 24))) ^ ((265 * (v22 ^ (v22 >> 24))) >> 14));
        v24 = 2147483649u * (v23 ^ (v23 >> 28));
        v25 = v13 & (v24 >> 7);
        v26 = *(v17->i64 + v25) & (~*(v17->i64 + v25) << 7) & 0x8080808080808080;
        if (v26)
        {
          v15 = v13 & (v24 >> 7);
        }

        else
        {
          v27 = 8;
          v15 = v13 & (v24 >> 7);
          do
          {
            v15 = (v15 + v27) & v13;
            v27 += 8;
            v26 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v26);
        }

        v16 = (v15 + (__clz(__rbit64(v26)) >> 3)) & v13;
        if ((((v16 - v25) ^ (i - v25)) & v13) > 7)
        {
          v28 = v17->u8[v16];
          v17->i8[v16] = v24 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v24 & 0x7F;
          v29 = *(result + 8);
          if (v28 == 128)
          {
            v30 = v29 + 12 * v16;
            v31 = (v29 + 12 * i);
            v32 = *v31;
            *(v30 + 8) = *(v31 + 2);
            *v30 = v32;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v33 = (v29 + 12 * i);
            v34 = *v33;
            v35 = *(v33 + 2);
            v36 = 12 * v16;
            v37 = (v29 + v36);
            v38 = *(v37 + 2);
            *v33 = *v37;
            *(v33 + 2) = v38;
            v39 = *(result + 8) + v36;
            *v39 = v34;
            *(v39 + 8) = v35;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v24 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v24 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v40 = i - (i >> 3);
    v41 = i == 7;
    v42 = 6;
    if (!v41)
    {
      v42 = v40;
    }
  }

  else
  {
    v42 = 0;
  }

  *(result + 40) = v42 - *(result + 16);
  return result;
}

uint64_t sub_11C6638(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_11C692C(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 56);
  if (v5 >= ~a2)
  {
    goto LABEL_27;
  }

  v6 = *(a1 + 64);
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
      v11 = *(a1 + 48);
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

      sub_361230(&v28, a1, v13);
      v17 = *a1;
      v16 = *(a1 + 16);
      v18 = v29;
      *a1 = v28;
      *(a1 + 16) = v18;
      v28 = v17;
      v29 = v16;
      v36 = *(a1 + 32);
      v19 = v36;
      v37 = *(a1 + 40);
      v20 = v37;
      *(a1 + 32) = v30;
      *(a1 + 40) = v31;
      v30 = v19;
      v31 = v20;
      v21 = *(a1 + 48);
      *(a1 + 48) = v32;
      v32 = v21;
      v22 = *(a1 + 64);
      v23 = v33;
      *(a1 + 64) = v33;
      v33 = v22;
      v24 = *(a1 + 80);
      v25 = *(a1 + 84);
      *&v16 = *(a1 + 72);
      *(a1 + 72) = v34;
      *&v34 = v16;
      *(&v34 + 1) = __PAIR64__(v25, v24);
      v26 = *(a1 + 88);
      *(a1 + 88) = v35;
      v35 = v26;
      *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v23)));
      *(a1 + 24) = 0;
      v28 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v29, v22)));
      BYTE8(v29) = 0;
      if (v26)
      {
        free(v26);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_11C692C(uint64_t a1)
{
  v2 = *(a1 + 56) - *(a1 + 48);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 64), v5 < 0x21))
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
    sub_361230(&v20, a1, v5);
    v9 = *a1;
    v8 = *(a1 + 16);
    v10 = v21;
    *a1 = v20;
    *(a1 + 16) = v10;
    v20 = v9;
    v21 = v8;
    v28 = *(a1 + 32);
    v11 = v28;
    v29 = *(a1 + 40);
    v12 = v29;
    *(a1 + 32) = v22;
    *(a1 + 40) = v23;
    v22 = v11;
    v23 = v12;
    v13 = *(a1 + 48);
    *(a1 + 48) = v24;
    v24 = v13;
    v14 = *(a1 + 64);
    v15 = v25;
    *(a1 + 64) = v25;
    v25 = v14;
    v16 = *(a1 + 80);
    v17 = *(a1 + 84);
    *&v8 = *(a1 + 72);
    *(a1 + 72) = v26;
    *&v26 = v8;
    *(&v26 + 1) = __PAIR64__(v17, v16);
    v18 = *(a1 + 88);
    *(a1 + 88) = v27;
    v27 = v18;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v15)));
    *(a1 + 24) = 0;
    v20 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v21, v14)));
    BYTE8(v21) = 0;
    if (v18)
    {
      free(v18);
    }

    result = 1;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_11C6A8C(uint64_t a1, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v6 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v6;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 24), *(a2 + 3), *(a2 + 4));
LABEL_6:
  if (*(a2 + 71) < 0)
  {
    sub_325C((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v7 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v7;
  }

  v8 = *(a2 + 9);
  *(a1 + 80) = *(a2 + 20);
  *(a1 + 72) = v8;
  operator new();
}

void sub_11C6C64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_11C6CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  sub_11CAF6C(v31);
  sub_15DC140((v32 + 56));
  sub_15D9814(va);
  sub_15DC140(&a10);
  sub_15D9814(&a25);
  operator delete();
}

uint64_t sub_11C6D2C(uint64_t a1)
{
  std::mutex::~mutex((a1 + 112));
  v2 = *(a1 + 104);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      do
      {
        v5 = *v4;
        sub_15DC140(v4 + 9);
        sub_15D9814((v4 + 2));
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = *v3;
    *v3 = 0;
    if (v6)
    {
      operator delete(v6);
    }

    operator delete();
  }

  if ((*(a1 + 71) & 0x80000000) == 0)
  {
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_16;
  }

  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_16:
  operator delete(*a1);
  return a1;
}

void sub_11C6E60(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_7E9A4(v56);
  std::mutex::lock((a1 + 112));
  sub_15D8B44(v50, 0, 0);
  v8 = *(a2 + 48);
  v52 |= 1u;
  v9 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
  if (v51)
  {
    v9 = *v9;
  }

  sub_194EA1C(&v53, (v8 & 0xFFFFFFFFFFFFFFFELL), v9);
  v54 = *(a2 + 56);
  v10 = *(a2 + 60);
  v52 |= 6u;
  v55 = v10;
  v11 = *(a2 + 32);
  if (v11)
  {
    if ((v11 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v39);
    sub_4A5C(&v39, "Processing fare request with ", 29);
    v12 = std::ostream::operator<<();
    sub_4A5C(v12, " routes (", 9);
    v13 = std::ostream::operator<<();
    sub_4A5C(v13, " cached).", 9);
    if ((v49 & 0x10) != 0)
    {
      v15 = v48;
      if (v48 < v45)
      {
        v48 = v45;
        v15 = v45;
      }

      v16 = v44;
      v14 = v15 - v44;
      if (v15 - v44 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if ((v49 & 8) == 0)
      {
        v14 = 0;
        v35 = 0;
LABEL_18:
        __dst[v14] = 0;
        sub_7E854(__dst, 2u);
        if (v35 < 0)
        {
          operator delete(*__dst);
        }

        if (v47 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v41);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_23;
      }

      v16 = v42;
      v14 = v43 - v42;
      if ((v43 - v42) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_41:
        sub_3244();
      }
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v35 = v14;
    if (v14)
    {
      memmove(__dst, v16, v14);
    }

    goto LABEL_18;
  }

LABEL_23:
  v35 = 19;
  strcpy(__dst, "FareRoutesRequested");
  sub_2C0888(&v39);
  nullsub_1();
  sub_2C1D4C(&v39);
  if (v35 < 0)
  {
    operator delete(*__dst);
  }

  v35 = 16;
  strcpy(__dst, "FareRoutesCached");
  sub_2C0888(&v39);
  nullsub_1();
  sub_2C1D4C(&v39);
  if (v35 < 0)
  {
    operator delete(*__dst);
  }

  sub_11C7620(a1, v50, a3, __dst);
  sub_15DB34C(a4, 0, 0);
  v17 = *(a2 + 32);
  if (v17 >= 1)
  {
    v18 = 8;
    v19 = 0;
    do
    {
      v20 = *(*(a2 + 40) + v18);
      v21 = *(a4 + 40);
      if (v21 && (v22 = *(a4 + 32), v22 < *v21))
      {
        *(a4 + 32) = v22 + 1;
        v23 = *&v21[2 * v22 + 2];
        v24 = *v19;
        if (v24 == -1)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v26 = sub_15E0F18(*(a4 + 24));
        v23 = sub_19593CC(a4 + 24, v26);
        v24 = *v19;
        if (v24 == -1)
        {
LABEL_33:
          v25 = sub_11CB114(*(a1 + 88), v20);
          if (!v25)
          {
            sub_49EC("unordered_map::at: key not found");
          }

          sub_15DCD50(v23, v25 + 72);
          goto LABEL_29;
        }
      }

      sub_15DCD50(v23, *(v36 + 8 * v24 + 8));
      v27 = *(a1 + 88);
      v39 = *&v20;
      v28 = sub_11CB254(v27, v20, &unk_229EB70, &v39);
      sub_15DCD50(v28 + 72, v23);
LABEL_29:
      ++v19;
      v18 += 8;
      --v17;
    }

    while (v17);
  }

  v29 = *(a4 + 16);
  *(a4 + 56) = v38;
  v30 = v37;
  *(a4 + 16) = v29 | 3;
  v31 = *(a4 + 8);
  v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
  if (v31)
  {
    v32 = *v32;
  }

  sub_194EA1C((a4 + 48), (v30 & 0xFFFFFFFFFFFFFFFELL), v32);
  strcpy(v33, "Runtime.Total");
  sub_7EA60(v56);
  sub_2C0888(&v39);
  nullsub_1();
  sub_2C1D4C(&v39);
  sub_15DB5A8(__dst);
  sub_15D8C38(v50);
  std::mutex::unlock((a1 + 112));
}

void sub_11C74FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a28);
  if (v29)
  {
    operator delete(v29);
  }

  sub_15D8C38(v30 - 192);
  std::mutex::unlock((v28 + 112));
  _Unwind_Resume(a1);
}

uint64_t sub_11C7620@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 32);
  if (!v7)
  {
    v7 = 0;
LABEL_35:
    v32 = (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL);

    return sub_11C925C(v32, v7, a4);
  }

  v8 = *(a2 + 40);
  v9 = (v8 + 8);
  if (!v8)
  {
    v9 = 0;
  }

  v10 = 0;
  v11 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (!v11)
  {
    v15 = v9;
LABEL_11:
    v18 = &v9[v7];
    do
    {
      v19 = *v15++;
      v10 += *(v19 + 32);
    }

    while (v15 != v18);
    goto LABEL_13;
  }

  v12 = 0;
  v13 = v11 + 1;
  v14 = (v11 + 1) & 0x3FFFFFFFFFFFFFFELL;
  v15 = &v9[v14];
  v16 = v9 + 1;
  v17 = v14;
  do
  {
    v10 += *(*(v16 - 1) + 32);
    v12 += *(*v16 + 32);
    v16 += 2;
    v17 -= 2;
  }

  while (v17);
  v10 += v12;
  if (v13 != v14)
  {
    goto LABEL_11;
  }

LABEL_13:
  if (!v10)
  {
    goto LABEL_35;
  }

  sub_11C93DC(a1, a2, a3, v128);
  if ((v133 & 1) == 0)
  {
    if (!sub_7E7E4(2u))
    {
LABEL_75:
      result = sub_11C925C((*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), *(a2 + 32), a4);
      goto LABEL_252;
    }

    sub_19594F8(&__p[3]);
    sub_4A5C(&__p[3], "Generating empty fare route responses for ", 42);
    v34 = std::ostream::operator<<();
    sub_4A5C(v34, " fare routes.", 13);
    if ((v126 & 0x10) != 0)
    {
      v51 = v125;
      if (v125 < v122)
      {
        v125 = v122;
        v51 = v122;
      }

      v52 = v121;
      v35 = v51 - v121;
      if (v51 - v121 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if ((v126 & 8) == 0)
      {
        v35 = 0;
        HIBYTE(__p[2]) = 0;
LABEL_70:
        *(__p + v35) = 0;
        sub_7E854(__p, 2u);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        if (v124 < 0)
        {
          operator delete(v123);
        }

        std::locale::~locale(&v118);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_75;
      }

      v52 = v119[0];
      v35 = v120 - v119[0];
      if (v120 - v119[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_77:
        sub_3244();
      }
    }

    if (v35 >= 0x17)
    {
      operator new();
    }

    HIBYTE(__p[2]) = v35;
    if (v35)
    {
      memmove(__p, v52, v35);
    }

    goto LABEL_70;
  }

  v20 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v21 = v131 & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v20 + 23);
  if (v22 >= 0)
  {
    v23 = *(v20 + 23);
  }

  else
  {
    v23 = *(v20 + 8);
  }

  v24 = *(v21 + 23);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(v21 + 8);
  }

  if (v23 != v24 || (v22 >= 0 ? (v26 = (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL)) : (v26 = *v20), v25 >= 0 ? (v27 = (v131 & 0xFFFFFFFFFFFFFFFELL)) : (v27 = *v21), memcmp(v26, v27, v23)))
  {
    operator new();
  }

  if (v132 != 1)
  {
    v36 = sub_15D84D0(v132);
    if (!sub_7E7E4(1u))
    {
      goto LABEL_96;
    }

    sub_19594F8(&__p[3]);
    v37 = sub_4A5C(&__p[3], "The external fare service failed with a fare response status of ", 64);
    v38 = *(v36 + 23);
    if (v38 >= 0)
    {
      v39 = v36;
    }

    else
    {
      v39 = *v36;
    }

    if (v38 >= 0)
    {
      v40 = *(v36 + 23);
    }

    else
    {
      v40 = v36[1];
    }

    v41 = sub_4A5C(v37, v39, v40);
    v42 = sub_4A5C(v41, " (precache: ", 12);
    v43 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v44 = *(v43 + 23);
    if (v44 >= 0)
    {
      v45 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      v45 = *v43;
    }

    if (v44 >= 0)
    {
      v46 = *(v43 + 23);
    }

    else
    {
      v46 = *(v43 + 8);
    }

    v47 = sub_4A5C(v42, v45, v46);
    sub_4A5C(v47, ").", 2);
    if ((v126 & 0x10) != 0)
    {
      v53 = v125;
      if (v125 < v122)
      {
        v125 = v122;
        v53 = v122;
      }

      v54 = &v121;
    }

    else
    {
      if ((v126 & 8) == 0)
      {
        v48 = 0;
        HIBYTE(__p[2]) = 0;
LABEL_91:
        *(__p + v48) = 0;
        sub_7E854(__p, 1u);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        if (v124 < 0)
        {
          operator delete(v123);
        }

        std::locale::~locale(&v118);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_96:
        if (*(v36 + 23) >= 0)
        {
          v58 = *(v36 + 23);
        }

        else
        {
          v58 = v36[1];
        }

        if (v58 + 26 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v58 + 26 > 0x16)
          {
            operator new();
          }

          qmemcpy(__p, "Error.FareResponse.Status.", 26);
          if (*(v36 + 23) >= 0)
          {
            v59 = v36;
          }

          else
          {
            v59 = *v36;
          }

          memmove(&__p[3] + 2, v59, v58);
          *(&__p[3] + v58 + 2) = 0;
          sub_2C0888(&__p[3]);
          nullsub_1();
          sub_2C1D4C(&__p[3]);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          operator new();
        }

        sub_3244();
      }

      v54 = v119;
      v53 = v120;
    }

    v57 = *v54;
    v48 = v53 - *v54;
    if (v48 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v48 >= 0x17)
    {
      operator new();
    }

    HIBYTE(__p[2]) = v53 - *v54;
    if (v48)
    {
      memmove(__p, v57, v48);
    }

    goto LABEL_91;
  }

  if (v129 > *(a2 + 32))
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_139;
    }

    sub_19594F8(&__p[3]);
    sub_4A5C(&__p[3], "Requested ", 10);
    v28 = std::ostream::operator<<();
    sub_4A5C(v28, " fare route responses from the fare service but received ", 57);
    v29 = std::ostream::operator<<();
    sub_4A5C(v29, ". Ignoring ", 11);
    v30 = std::ostream::operator<<();
    sub_4A5C(v30, " fare routes.", 13);
    if ((v126 & 0x10) != 0)
    {
      v60 = v125;
      if (v125 < v122)
      {
        v125 = v122;
        v60 = v122;
      }

      v61 = &v121;
    }

    else
    {
      if ((v126 & 8) == 0)
      {
        v31 = 0;
        HIBYTE(__p[2]) = 0;
LABEL_134:
        *(__p + v31) = 0;
        sub_7E854(__p, 1u);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        if (v124 < 0)
        {
          operator delete(v123);
        }

        std::locale::~locale(&v118);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_139:
        operator new();
      }

      v61 = v119;
      v60 = v120;
    }

    v66 = *v61;
    v31 = v60 - *v61;
    if (v31 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    HIBYTE(__p[2]) = v60 - *v61;
    if (v31)
    {
      memmove(__p, v66, v31);
    }

    goto LABEL_134;
  }

  if (sub_7E7E4(2u))
  {
    sub_19594F8(&__p[3]);
    sub_4A5C(&__p[3], "Successfully received ", 22);
    v49 = std::ostream::operator<<();
    sub_4A5C(v49, " fare route responses from the fare service.", 44);
    if ((v126 & 0x10) != 0)
    {
      v55 = v125;
      if (v125 < v122)
      {
        v125 = v122;
        v55 = v122;
      }

      v56 = &v121;
    }

    else
    {
      if ((v126 & 8) == 0)
      {
        v50 = 0;
        HIBYTE(__p[2]) = 0;
        goto LABEL_118;
      }

      v56 = v119;
      v55 = v120;
    }

    v62 = *v56;
    v50 = v55 - *v56;
    if (v50 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v50 >= 0x17)
    {
      operator new();
    }

    HIBYTE(__p[2]) = v55 - *v56;
    if (v50)
    {
      memmove(__p, v62, v50);
    }

LABEL_118:
    *(__p + v50) = 0;
    sub_7E854(__p, 2u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    if (v124 < 0)
    {
      operator delete(v123);
    }

    std::locale::~locale(&v118);
    std::ostream::~ostream();
    std::ios::~ios();
    v63 = v129;
    v64 = *(a2 + 32);
    if (v64 >= v129)
    {
      v65 = v129;
    }

    else
    {
      v65 = *(a2 + 32);
    }

    if (v65 < 1)
    {
LABEL_230:
      if (v63 < v64)
      {
        goto LABEL_231;
      }

      goto LABEL_251;
    }

    goto LABEL_144;
  }

  v63 = v129;
  v64 = *(a2 + 32);
  if (v64 >= v129)
  {
    v65 = v129;
  }

  else
  {
    v65 = *(a2 + 32);
  }

  if (v65 < 1)
  {
    goto LABEL_230;
  }

LABEL_144:
  v115 = -v65;
  v67 = 1;
  do
  {
    v68 = *(*(a2 + 40) + 8 * v67);
    v69 = *(v130 + 8 * v67);
    v70 = *(v69 + 112);
    if (v70 == 1)
    {
      goto LABEL_196;
    }

    v71 = sub_15D85B8(v70);
    if (sub_7E7E4(1u))
    {
      sub_19594F8(&__p[3]);
      sub_4A5C(&__p[3], "Fare route response ", 20);
      v72 = std::ostream::operator<<();
      sub_4A5C(v72, " of ", 4);
      v73 = std::ostream::operator<<();
      v74 = sub_4A5C(v73, " has status ", 12);
      v75 = *(v71 + 23);
      if (v75 >= 0)
      {
        v76 = v71;
      }

      else
      {
        v76 = *v71;
      }

      if (v75 >= 0)
      {
        v77 = *(v71 + 23);
      }

      else
      {
        v77 = v71[1];
      }

      v78 = sub_4A5C(v74, v76, v77);
      v79 = sub_4A5C(v78, " (request precache: ", 20);
      v80 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v81 = *(v80 + 23);
      if (v81 >= 0)
      {
        v82 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v82 = *v80;
      }

      if (v81 >= 0)
      {
        v83 = *(v80 + 23);
      }

      else
      {
        v83 = *(v80 + 8);
      }

      v84 = sub_4A5C(v79, v82, v83);
      v85 = sub_4A5C(v84, "; response precache: ", 21);
      v86 = v131 & 0xFFFFFFFFFFFFFFFELL;
      v87 = *((v131 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if (v87 >= 0)
      {
        v88 = v131 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v88 = *v86;
      }

      if (v87 >= 0)
      {
        v89 = *(v86 + 23);
      }

      else
      {
        v89 = *(v86 + 8);
      }

      v90 = sub_4A5C(v85, v88, v89);
      sub_4A5C(v90, "). Using empty fare route instead.", 34);
      if ((v126 & 0x10) != 0)
      {
        v92 = v125;
        v93 = &v121;
        if (v125 < v122)
        {
          v125 = v122;
          v92 = v122;
          v93 = &v121;
        }
      }

      else
      {
        if ((v126 & 8) == 0)
        {
          v91 = 0;
          HIBYTE(__p[2]) = 0;
LABEL_178:
          *(__p + v91) = 0;
          sub_7E854(__p, 1u);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          __p[3] = *&v114;
          *(&__p[3] + *(*&v114 - 24)) = v113;
          if (v124 < 0)
          {
            operator delete(v123);
          }

          std::locale::~locale(&v118);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_183;
        }

        v92 = v120;
        v93 = v119;
      }

      v94 = *v93;
      v91 = v92 - *v93;
      if (v91 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v91 >= 0x17)
      {
        operator new();
      }

      HIBYTE(__p[2]) = v92 - *v93;
      if (v91)
      {
        memmove(__p, v94, v91);
      }

      goto LABEL_178;
    }

LABEL_183:
    sub_15DBDD8(&__p[3], 0, 0);
    LODWORD(v118.__locale_) |= 1u;
    v127 = 0;
    sub_15DCD50(v69, &__p[3]);
    sub_15DC140(&__p[3]);
    if (*(v71 + 23) >= 0)
    {
      v95 = *(v71 + 23);
    }

    else
    {
      v95 = v71[1];
    }

    if (v95 + 23 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v95 < 0xFFFFFFFFFFFFFFE9)
    {
      operator new();
    }

    HIBYTE(__p[2]) = v95 + 23;
    qmemcpy(__p, "Error.FareRoute.Status.", 23);
    if (*(v71 + 23) >= 0)
    {
      v96 = v71;
    }

    else
    {
      v96 = *v71;
    }

    memmove(&__p[2] + 7, v96, v95);
    *(&__p[2] + v95 + 7) = 0;
    sub_2C0888(&__p[3]);
    nullsub_1();
    sub_2C1D4C(&__p[3]);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    strcpy(__p, "Error.FareRoute.Status");
    HIBYTE(__p[2]) = 22;
    sub_2C0888(&__p[3]);
    nullsub_1();
    sub_2C1D4C(&__p[3]);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_196:
    if (!sub_11CBB54(v68, v69))
    {
      if (!sub_7E7E4(1u))
      {
        goto LABEL_215;
      }

      sub_19594F8(&__p[3]);
      sub_4A5C(&__p[3], "Fare route response ", 20);
      v97 = std::ostream::operator<<();
      sub_4A5C(v97, " of ", 4);
      v98 = std::ostream::operator<<();
      sub_4A5C(v98, " is inconsistent. Using empty fare route instead.", 49);
      if ((v126 & 0x10) != 0)
      {
        v100 = v125;
        v101 = &v121;
        if (v125 < v122)
        {
          v125 = v122;
          v100 = v122;
          v101 = &v121;
        }
      }

      else
      {
        if ((v126 & 8) == 0)
        {
          v99 = 0;
          HIBYTE(__p[2]) = 0;
LABEL_210:
          *(__p + v99) = 0;
          sub_7E854(__p, 1u);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          __p[3] = *&v114;
          *(&__p[3] + *(*&v114 - 24)) = v113;
          if (v124 < 0)
          {
            operator delete(v123);
          }

          std::locale::~locale(&v118);
          std::ostream::~ostream();
          std::ios::~ios();
LABEL_215:
          sub_15DBDD8(&__p[3], 0, 0);
          LODWORD(v118.__locale_) |= 1u;
          v127 = 0;
          sub_15DCD50(v69, &__p[3]);
          sub_15DC140(&__p[3]);
          operator new();
        }

        v100 = v120;
        v101 = v119;
      }

      v102 = *v101;
      v99 = v100 - *v101;
      if (v99 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v99 >= 0x17)
      {
        operator new();
      }

      HIBYTE(__p[2]) = v100 - *v101;
      if (v99)
      {
        memmove(__p, v102, v99);
      }

      goto LABEL_210;
    }

    if (*(v69 + 112) == 1)
    {
      v103 = sub_15D85B8(1);
      if (*(v103 + 23) >= 0)
      {
        v104 = *(v103 + 23);
      }

      else
      {
        v104 = v103[1];
      }

      if (v104 + 23 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v104 < 0xFFFFFFFFFFFFFFE9)
      {
        operator new();
      }

      HIBYTE(__p[2]) = v104 + 23;
      qmemcpy(__p, "Error.FareRoute.Status.", 23);
      if (*(v103 + 23) >= 0)
      {
        v105 = v103;
      }

      else
      {
        v105 = *v103;
      }

      memmove(&__p[2] + 7, v105, v104);
      *(&__p[2] + v104 + 7) = 0;
      sub_2C0888(&__p[3]);
      nullsub_1();
      sub_2C1D4C(&__p[3]);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    ++v67;
  }

  while (v115 + v67 != 1);
  if (v129 < *(a2 + 32))
  {
LABEL_231:
    if (sub_7E7E4(1u))
    {
      sub_19594F8(&__p[3]);
      sub_4A5C(&__p[3], "Requested ", 10);
      v106 = std::ostream::operator<<();
      sub_4A5C(v106, " fare route responses from the fare service but only received ", 62);
      v107 = std::ostream::operator<<();
      sub_4A5C(v107, ". Generating empty fare route responses for ", 44);
      v108 = std::ostream::operator<<();
      sub_4A5C(v108, " missing fare routes.", 21);
      if ((v126 & 0x10) != 0)
      {
        v110 = v125;
        if (v125 < v122)
        {
          v125 = v122;
          v110 = v122;
        }

        v111 = &v121;
      }

      else
      {
        if ((v126 & 8) == 0)
        {
          v109 = 0;
          HIBYTE(__p[2]) = 0;
          goto LABEL_245;
        }

        v111 = v119;
        v110 = v120;
      }

      v112 = *v111;
      v109 = v110 - *v111;
      if (v109 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v109 >= 0x17)
      {
        operator new();
      }

      HIBYTE(__p[2]) = v110 - *v111;
      if (v109)
      {
        memmove(__p, v112, v109);
      }

LABEL_245:
      *(__p + v109) = 0;
      sub_7E854(__p, 1u);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      if (v124 < 0)
      {
        operator delete(v123);
      }

      std::locale::~locale(&v118);
      std::ostream::~ostream();
      std::ios::~ios();
    }

    operator new();
  }

LABEL_251:
  result = sub_15DB4FC(a4, v128);
LABEL_252:
  if (v133 == 1)
  {
    return sub_15DB5A8(v128);
  }

  return result;
}

void sub_11C9084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a27);
  if (*(v27 - 96) == 1)
  {
    sub_15DB5A8(v27 - 160);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_11C925C@<X0>(__int128 *a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_15DB34C(a3, 0, 0);
  *(a3 + 16) |= 1u;
  v6 = *(a3 + 8);
  v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if (v6)
  {
    v7 = *v7;
  }

  sub_194EA1C((a3 + 48), a1, v7);
  *(a3 + 16) |= 2u;
  *(a3 + 56) = 0;
  while (1)
  {
    v8 = *(a3 + 32);
    result = sub_A0AF10(a2);
    if (v8 >= result)
    {
      break;
    }

    v10 = *(a3 + 40);
    if (v10 && (v11 = *(a3 + 32), v11 < *v10))
    {
      *(a3 + 32) = v11 + 1;
      v12 = *&v10[2 * v11 + 2];
    }

    else
    {
      v13 = sub_15E0F18(*(a3 + 24));
      v12 = sub_19593CC(a3 + 24, v13);
    }

    sub_15DBDD8(v14, 0, 0);
    v15 |= 1u;
    v16 = 0;
    sub_15DCD50(v12, v14);
    sub_15DC140(v14);
  }

  return result;
}

void sub_11C9384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_15DC140(va);
  sub_15DB5A8(v3);
  _Unwind_Resume(a1);
}

void sub_11C93DC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (a1[12])
  {
    memset(&v61, 0, sizeof(v61));
    sub_194DAE0(a2, &v61);
    memset(v59, 0, sizeof(v59));
    v60 = 1065353216;
    if ((*(a1 + 71) & 0x8000000000000000) != 0)
    {
      if (!a1[7])
      {
        goto LABEL_11;
      }
    }

    else if (!*(a1 + 71))
    {
LABEL_11:
      if (*(a3 + 31) < 0 && *(a3 + 16) == 27)
      {
        v8 = *(a3 + 8);
        v9 = *v8;
        v10 = v8[1];
        v11 = v8[2];
        v12 = *(v8 + 19);
        v13 = v9 == 0x6C7070612E6D6F63 && v10 == 0x6F722E6F65672E65;
        v14 = v13 && v11 == 0x65642E676E697475;
        if (v14 && v12 == 0x6C657665642E676ELL)
        {
          sub_11CB880(v59);
        }
      }

      v16 = *(a1 + 20);
      *&__dst = a1[9];
      DWORD2(__dst) = v16;
      BYTE12(__dst) = 1;
      v56 = vdup_n_s32(0x258u);
      *__p = 0u;
      v63 = 0u;
      v64 = 1065353216;
      sub_573F4(&v57, a1, 1, &__dst, v59, __p, &v61);
      v17 = v63;
      if (!v63)
      {
LABEL_32:
        v19 = __p[0];
        __p[0] = 0;
        if (v19)
        {
          operator delete(v19);
        }

        sub_573F8(&v57, a1 + 3);
        if (!sub_7E7E4(2u))
        {
LABEL_63:
          sub_57450(&__dst);
          sub_7E9A4(v54);
          v34 = sub_56D64();
          BYTE7(v53[1]) = 18;
          strcpy(v53, "CallTo.FareService");
          sub_7EA60(v54);
          sub_2C0888(__p);
          nullsub_1();
          sub_2C1D4C(__p);
          if (v34)
          {
            if (!sub_7E7E4(1u))
            {
              goto LABEL_103;
            }

            sub_19594F8(__p);
            v35 = sub_4A5C(__p, "The external fare service call failed with the error ", 53);
            sub_56EE4(v34, v53);
            if ((SBYTE7(v53[1]) & 0x80u) == 0)
            {
              v36 = v53;
            }

            else
            {
              v36 = *&v53[0];
            }

            if ((SBYTE7(v53[1]) & 0x80u) == 0)
            {
              v37 = BYTE7(v53[1]);
            }

            else
            {
              v37 = *(&v53[0] + 1);
            }

            sub_4A5C(v35, v36, v37);
            if (SBYTE7(v53[1]) < 0)
            {
              operator delete(*&v53[0]);
              v38 = v71;
              if ((v71 & 0x10) == 0)
              {
LABEL_73:
                if ((v38 & 8) == 0)
                {
                  v39 = 0;
                  BYTE7(v53[1]) = 0;
LABEL_98:
                  *(v53 + v39) = 0;
                  sub_7E854(v53, 1u);
                  if (SBYTE7(v53[1]) < 0)
                  {
                    operator delete(*&v53[0]);
                  }

                  if (v69 < 0)
                  {
                    operator delete(v68);
                  }

                  std::locale::~locale(&v63);
                  std::ostream::~ostream();
                  std::ios::~ios();
LABEL_103:
                  operator new();
                }

                v45 = *(&v63 + 1);
                v39 = v65 - *(&v63 + 1);
                if (v65 - *(&v63 + 1) > 0x7FFFFFFFFFFFFFF7)
                {
LABEL_113:
                  sub_3244();
                }

LABEL_93:
                if (v39 >= 0x17)
                {
                  operator new();
                }

                BYTE7(v53[1]) = v39;
                if (v39)
                {
                  memmove(v53, v45, v39);
                }

                goto LABEL_98;
              }
            }

            else
            {
              v38 = v71;
              if ((v71 & 0x10) == 0)
              {
                goto LABEL_73;
              }
            }

            v44 = v70;
            if (v70 < v67)
            {
              v70 = v67;
              v44 = v67;
            }

            v45 = v66;
            v39 = v44 - v66;
            if (v44 - v66 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_113;
            }

            goto LABEL_93;
          }

          if (sub_3F80(&__dst) == 200)
          {
            operator new();
          }

          if (!sub_7E7E4(1u))
          {
LABEL_131:
            v49 = sub_3F80(&__dst);
            std::to_string(&v52, v49);
            v50 = std::string::insert(&v52, 0, "CallTo.FareService.Error.Http.", 0x1EuLL);
            v51 = *&v50->__r_.__value_.__l.__data_;
            *&v53[1] = *(&v50->__r_.__value_.__l + 2);
            v53[0] = v51;
            v50->__r_.__value_.__l.__size_ = 0;
            v50->__r_.__value_.__r.__words[2] = 0;
            v50->__r_.__value_.__r.__words[0] = 0;
            sub_2C0888(__p);
            nullsub_1();
            sub_2C1D4C(__p);
            if (SBYTE7(v53[1]) < 0)
            {
              operator delete(*&v53[0]);
            }

            if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v52.__r_.__value_.__l.__data_);
            }

            operator new();
          }

          sub_19594F8(__p);
          v40 = sub_4A5C(__p, "The external fare service call failed with an http response code of ", 68);
          sub_3F80(&__dst);
          std::ostream::operator<<();
          sub_4A5C(v40, ".", 1);
          if ((v71 & 0x10) != 0)
          {
            v46 = v70;
            if (v70 < v67)
            {
              v70 = v67;
              v46 = v67;
            }

            v47 = &v66;
          }

          else
          {
            if ((v71 & 8) == 0)
            {
              v41 = 0;
              BYTE7(v53[1]) = 0;
LABEL_126:
              *(v53 + v41) = 0;
              sub_7E854(v53, 1u);
              if (SBYTE7(v53[1]) < 0)
              {
                operator delete(*&v53[0]);
              }

              if (v69 < 0)
              {
                operator delete(v68);
              }

              std::locale::~locale(&v63);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_131;
            }

            v47 = &v63 + 1;
            v46 = v65;
          }

          v48 = *v47;
          v41 = v46 - *v47;
          if (v41 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v41 >= 0x17)
          {
            operator new();
          }

          BYTE7(v53[1]) = v46 - *v47;
          if (v41)
          {
            memmove(v53, v48, v41);
          }

          goto LABEL_126;
        }

        sub_19594F8(__p);
        v20 = sub_4A5C(__p, "Sending fare request to ", 24);
        v21 = *(a1 + 23);
        if (v21 >= 0)
        {
          v22 = a1;
        }

        else
        {
          v22 = *a1;
        }

        if (v21 >= 0)
        {
          v23 = *(a1 + 23);
        }

        else
        {
          v23 = a1[1];
        }

        v24 = sub_4A5C(v20, v22, v23);
        v25 = sub_4A5C(v24, " (proxy: ", 9);
        v26 = *(a1 + 47);
        if (v26 >= 0)
        {
          v27 = a1 + 3;
        }

        else
        {
          v27 = a1[3];
        }

        if (v26 >= 0)
        {
          v28 = *(a1 + 47);
        }

        else
        {
          v28 = a1[4];
        }

        v29 = sub_4A5C(v25, v27, v28);
        sub_4A5C(v29, ", number of fare routes: ", 25);
        v30 = std::ostream::operator<<();
        sub_4A5C(v30, ").", 2);
        if ((v71 & 0x10) != 0)
        {
          v32 = v70;
          if (v70 < v67)
          {
            v70 = v67;
            v32 = v67;
          }

          v33 = v66;
          v31 = v32 - v66;
          if (v32 - v66 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_88;
          }
        }

        else
        {
          if ((v71 & 8) == 0)
          {
            v31 = 0;
            v56.i8[7] = 0;
LABEL_58:
            *(&__dst + v31) = 0;
            sub_7E854(&__dst, 2u);
            if (v56.i8[7] < 0)
            {
              operator delete(__dst);
            }

            if (v69 < 0)
            {
              operator delete(v68);
            }

            std::locale::~locale(&v63);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_63;
          }

          v33 = *(&v63 + 1);
          v31 = v65 - *(&v63 + 1);
          if (v65 - *(&v63 + 1) > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_88:
            sub_3244();
          }
        }

        if (v31 >= 0x17)
        {
          operator new();
        }

        v56.i8[7] = v31;
        if (v31)
        {
          memmove(&__dst, v33, v31);
        }

        goto LABEL_58;
      }

      while (1)
      {
        v18 = *v17;
        if (v17[63] < 0)
        {
          operator delete(*(v17 + 5));
          if ((v17[39] & 0x80000000) == 0)
          {
            goto LABEL_28;
          }

LABEL_31:
          operator delete(*(v17 + 2));
          operator delete(v17);
          v17 = v18;
          if (!v18)
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v17[39] < 0)
          {
            goto LABEL_31;
          }

LABEL_28:
          operator delete(v17);
          v17 = v18;
          if (!v18)
          {
            goto LABEL_32;
          }
        }
      }
    }

    sub_11CB5F4(v59);
  }

  if (sub_7E7E4(2u))
  {
    sub_19594F8(__p);
    sub_4A5C(__p, "No external fare service call made because external service calls are disabled. ", 80);
    if ((v71 & 0x10) != 0)
    {
      v42 = v70;
      if (v70 < v67)
      {
        v70 = v67;
        v42 = v67;
      }

      v43 = v66;
      v7 = v42 - v66;
      if (v42 - v66 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_115;
      }
    }

    else
    {
      if ((v71 & 8) == 0)
      {
        v7 = 0;
        v58 = 0;
LABEL_106:
        *(&v57 + v7) = 0;
        sub_7E854(&v57, 2u);
        if (v58 < 0)
        {
          operator delete(v57);
        }

        if (v69 < 0)
        {
          operator delete(v68);
        }

        std::locale::~locale(&v63);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_111;
      }

      v43 = *(&v63 + 1);
      v7 = v65 - *(&v63 + 1);
      if (v65 - *(&v63 + 1) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_115:
        sub_3244();
      }
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v58 = v7;
    if (v7)
    {
      memmove(&v57, v43, v7);
    }

    goto LABEL_106;
  }

LABEL_111:
  *a4 = 0;
  a4[64] = 0;
}

void sub_11CA774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a67);
  sub_15DB5A8(&a18);
  sub_3514EC(&a29);
  sub_11CAAE8(&a38);
  sub_2CD04(&a62);
  if (a66 < 0)
  {
    operator delete(a65);
  }

  _Unwind_Resume(a1);
}

void *sub_11CA9C8(void *a1, void *a2, uint64_t a3)
{
  sub_15D9594(a1, 0, 0);
  if (a1 != a2)
  {
    v6 = a1[1];
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v7 = a2[1];
    if ((v7 & 2) != 0)
    {
      v7 = 0;
    }

    else if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v6 == v7)
    {
      sub_1335544(a1, a2);
    }

    else
    {
      sub_15D9E80(a1, a2);
    }
  }

  v8 = sub_15DBDD8((a1 + 7), 0, 0);
  if (v8 != a3)
  {
    v9 = a1[8];
    if ((v9 & 2) != 0)
    {
      v9 = 0;
    }

    else if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v10 = *(a3 + 8);
    if ((v10 & 2) != 0)
    {
      v10 = 0;
    }

    else if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v9 == v10)
    {
      sub_15DCDA4(v8, a3);
    }

    else
    {
      sub_15DCD50(v8, a3);
    }
  }

  return a1;
}

uint64_t sub_11CAAE8(uint64_t a1)
{
  if ((*(a1 + 159) & 0x80000000) == 0)
  {
    sub_2CD04(a1 + 96);
    sub_2CD04(a1 + 56);
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 136));
  sub_2CD04(a1 + 96);
  sub_2CD04(a1 + 56);
  if (*(a1 + 55) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*a1);
  return a1;
}

void *sub_11CAB7C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_11D1708(a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v7)
    {
      v9 = v5 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v11[1];
      if (v13 == v6)
      {
        if (sub_11D1604(a1, (v11 + 2), a2))
        {
          return v11;
        }
      }

      else if ((v13 & (*&v7 - 1)) != v9)
      {
        goto LABEL_23;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_23;
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
      goto LABEL_23;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  if (!sub_11D1604(a1, (v11 + 2), a2))
  {
    goto LABEL_12;
  }

  return v11;
}

void sub_11CAED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11CAF18(va);
  _Unwind_Resume(a1);
}

void sub_11CAEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_15D9814(v3 + 16);
  sub_11CAF18(va);
  _Unwind_Resume(a1);
}

void sub_11CAF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11CAF18(va);
  _Unwind_Resume(a1);
}

char **sub_11CAF18(char **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_15DC140(v1 + 9);
      sub_15D9814((v1 + 16));
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_11CAF6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_15DC140(v2 + 9);
      sub_15D9814((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_11CAFD4(void *a1, uint64_t a2)
{
  v4 = sub_11D1708(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v8);
  if (!v10)
  {
    return 0;
  }

  v9 = *v10;
  if (*v10)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v5 - 1;
      while (1)
      {
        v12 = v9[1];
        if (v6 == v12)
        {
          if (sub_11D1604(a1, (v9 + 2), a2))
          {
            return v9;
          }
        }

        else if ((v12 & v11) != v8)
        {
          return 0;
        }

        v9 = *v9;
        if (!v9)
        {
          return v9;
        }
      }
    }

    do
    {
      v13 = v9[1];
      if (v6 == v13)
      {
        if (sub_11D1604(a1, (v9 + 2), a2))
        {
          return v9;
        }
      }

      else
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }

        if (v13 != v8)
        {
          return 0;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

void *sub_11CB114(void *a1, uint64_t a2)
{
  v4 = sub_11D1708(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v8);
  if (!v10)
  {
    return 0;
  }

  v9 = *v10;
  if (*v10)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v5 - 1;
      while (1)
      {
        v12 = v9[1];
        if (v12 == v6)
        {
          if (sub_11D1604(a1, (v9 + 2), a2))
          {
            return v9;
          }
        }

        else if ((v12 & v11) != v8)
        {
          return 0;
        }

        v9 = *v9;
        if (!v9)
        {
          return v9;
        }
      }
    }

    do
    {
      v13 = v9[1];
      if (v13 == v6)
      {
        if (sub_11D1604(a1, (v9 + 2), a2))
        {
          return v9;
        }
      }

      else
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }

        if (v13 != v8)
        {
          return 0;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

void *sub_11CB254(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_11D1708(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_23;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v12[1];
      if (v14 == v7)
      {
        if (sub_11D1604(a1, (v12 + 2), a2))
        {
          return v12;
        }
      }

      else if ((v14 & (*&v8 - 1)) != v10)
      {
        goto LABEL_23;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v13 >= *&v8)
    {
      v13 %= *&v8;
    }

    if (v13 != v10)
    {
      goto LABEL_23;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  if (!sub_11D1604(a1, (v12 + 2), a2))
  {
    goto LABEL_12;
  }

  return v12;
}

void sub_11CB5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11CAF18(va);
  _Unwind_Resume(a1);
}

void sub_11CB5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_15D9814(v3 + 16);
  sub_11CAF18(va);
  _Unwind_Resume(a1);
}

void sub_11CB5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11CAF18(va);
  _Unwind_Resume(a1);
}

void sub_11CB690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2CC94(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_11CB764(_BYTE *a1, char *__s, __int128 *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
    a1[v7] = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *a1 = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_5:
      v8 = *a3;
      *(a1 + 5) = *(a3 + 2);
      *(a1 + 24) = v8;
      return a1;
    }
  }

  sub_325C(a1 + 24, *a3, *(a3 + 1));
  return a1;
}

void sub_11CB864(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_11CB91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2CC94(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_11CB9F0(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_11CBB38(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_11CBB54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 > 0;
  if (v4 < 1)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v6 = *(*(a2 + 40) + 8);
  v7 = *(v6 + 56);
  if (!v7)
  {
    v7 = &off_2779808;
  }

  if (!*(v6 + 76))
  {
LABEL_59:
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v73);
    sub_4A5C(&v73, "Base fare in fare route has a range length of ", 46);
    v34 = std::ostream::operator<<();
    sub_4A5C(v34, ", which is too short", 20);
    if ((v83 & 0x10) != 0)
    {
      v37 = v82;
      if (v82 < v79)
      {
        v82 = v79;
        v37 = v79;
      }

      v38 = v78;
      v13 = v37 - v78;
      if (v37 - v78 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_91;
      }
    }

    else
    {
      if ((v83 & 8) == 0)
      {
        v13 = 0;
        v72 = 0;
        goto LABEL_191;
      }

      v38 = v76[0];
      v13 = v77 - v76[0];
      if (v77 - v76[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_91:
        sub_3244();
      }
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v72 = v13;
    if (!v13)
    {
      goto LABEL_191;
    }

    goto LABEL_190;
  }

  v8 = *(v7 + 6);
  if (sub_96AE18(*(v6 + 72)) >= *(a1 + 32))
  {
LABEL_63:
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v73);
    sub_4A5C(&v73, "Base fare in fare route references start leg ", 45);
    v35 = std::ostream::operator<<();
    sub_4A5C(v35, " which is out of range (", 24);
    v36 = std::ostream::operator<<();
    sub_4A5C(v36, " legs in fare route request)", 28);
    if ((v83 & 0x10) != 0)
    {
      v40 = v82;
      if (v82 < v79)
      {
        v82 = v79;
        v40 = v79;
      }

      v38 = v78;
      v13 = v40 - v78;
      if (v40 - v78 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_108;
      }
    }

    else
    {
      if ((v83 & 8) == 0)
      {
        v13 = 0;
        v72 = 0;
        goto LABEL_191;
      }

      v38 = v76[0];
      v13 = v77 - v76[0];
      if (v77 - v76[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_108:
        sub_3244();
      }
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v72 = v13;
    if (!v13)
    {
      goto LABEL_191;
    }

    goto LABEL_190;
  }

  if (sub_96AE18((*(v6 + 76) + *(v6 + 72))) > *(a1 + 32))
  {
LABEL_7:
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v73);
    sub_4A5C(&v73, "Base fare in fare route references start leg ", 45);
    v10 = std::ostream::operator<<();
    sub_4A5C(v10, " + range length ", 16);
    v11 = std::ostream::operator<<();
    sub_4A5C(v11, " which is out of range (", 24);
    v12 = std::ostream::operator<<();
    sub_4A5C(v12, " legs in fare route request)", 28);
    if ((v83 & 0x10) != 0)
    {
      v46 = v82;
      if (v82 < v79)
      {
        v82 = v79;
        v46 = v79;
      }

      v47 = &v78;
    }

    else
    {
      if ((v83 & 8) == 0)
      {
        v13 = 0;
        v72 = 0;
LABEL_191:
        *(&__dst + v13) = 0;
        sub_7E854(&__dst, 1u);
        if (v72 < 0)
        {
          operator delete(__dst);
        }

        if (v81 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v75);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v47 = v76;
      v46 = v77;
    }

    v38 = *v47;
    v13 = v46 - *v47;
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v72 = v46 - *v47;
    if (!v13)
    {
      goto LABEL_191;
    }

LABEL_190:
    memmove(&__dst, v38, v13);
    goto LABEL_191;
  }

  v27 = *(v6 + 56);
  if (!v27)
  {
    v27 = &off_2779808;
  }

  if (v8 != *(v27 + 6))
  {
LABEL_73:
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v73);
    sub_4A5C(&v73, "Fare route response has base fare of mismatching currencies. Expected ", 70);
    v39 = std::ostream::operator<<();
    sub_4A5C(v39, " but got ", 9);
    std::ostream::operator<<();
    if ((v83 & 0x10) != 0)
    {
      v55 = v82;
      if (v82 < v79)
      {
        v82 = v79;
        v55 = v79;
      }

      v56 = &v78;
    }

    else
    {
      if ((v83 & 8) == 0)
      {
        v13 = 0;
        v72 = 0;
        goto LABEL_191;
      }

      v56 = v76;
      v55 = v77;
    }

    v38 = *v56;
    v13 = v55 - *v56;
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v72 = v55 - *v56;
    if (!v13)
    {
      goto LABEL_191;
    }

    goto LABEL_190;
  }

  if (v4 == 1)
  {
LABEL_12:
    v14 = *(a2 + 56);
    if (v14 < 1)
    {
      return 1;
    }

    v15 = 0;
    while (1)
    {
      v16 = *(a2 + 64) + 8;
      v17 = *(v16 + 8 * v15);
      if (v15)
      {
        if ((*(*(v16 + 8 * (v15 - 1)) + 60) + *(*(v16 + 8 * (v15 - 1)) + 56)) > *(v17 + 56))
        {
          break;
        }
      }

      if (!*(v17 + 60))
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v73);
        sub_4A5C(&v73, "Surcharge in fare route has a range length of ", 46);
        v43 = std::ostream::operator<<();
        sub_4A5C(v43, ", which is too short", 20);
        if ((v83 & 0x10) != 0)
        {
          v57 = v82;
          if (v82 < v79)
          {
            v82 = v79;
            v57 = v79;
          }

          v58 = &v78;
        }

        else
        {
          if ((v83 & 8) == 0)
          {
            v13 = 0;
            v72 = 0;
            goto LABEL_191;
          }

          v58 = v76;
          v57 = v77;
        }

        v38 = *v58;
        v13 = v57 - *v58;
        if (v13 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v13 >= 0x17)
        {
          operator new();
        }

        v72 = v57 - *v58;
        if (v13)
        {
          goto LABEL_190;
        }

        goto LABEL_191;
      }

      if (sub_96AE18(*(v17 + 56)) >= *(a1 + 32))
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v73);
        sub_4A5C(&v73, "Surcharge in fare route references start leg ", 45);
        v44 = std::ostream::operator<<();
        sub_4A5C(v44, " which is out of range (", 24);
        v45 = std::ostream::operator<<();
        sub_4A5C(v45, " legs in fare route request)", 28);
        if ((v83 & 0x10) != 0)
        {
          v59 = v82;
          if (v82 < v79)
          {
            v82 = v79;
            v59 = v79;
          }

          v60 = &v78;
        }

        else
        {
          if ((v83 & 8) == 0)
          {
            v13 = 0;
            v72 = 0;
            goto LABEL_191;
          }

          v60 = v76;
          v59 = v77;
        }

        v38 = *v60;
        v13 = v59 - *v60;
        if (v13 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v13 >= 0x17)
        {
          operator new();
        }

        v72 = v59 - *v60;
        if (v13)
        {
          goto LABEL_190;
        }

        goto LABEL_191;
      }

      if (sub_96AE18((*(v17 + 60) + *(v17 + 56))) > *(a1 + 32))
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v73);
        sub_4A5C(&v73, "Surcharge in fare route references start leg ", 45);
        v48 = std::ostream::operator<<();
        sub_4A5C(v48, " + range length ", 16);
        v49 = std::ostream::operator<<();
        sub_4A5C(v49, " which is out of range (", 24);
        v50 = std::ostream::operator<<();
        sub_4A5C(v50, " legs in fare route request)", 28);
        if ((v83 & 0x10) != 0)
        {
          v61 = v82;
          if (v82 < v79)
          {
            v82 = v79;
            v61 = v79;
          }

          v62 = &v78;
        }

        else
        {
          if ((v83 & 8) == 0)
          {
            v13 = 0;
            v72 = 0;
            goto LABEL_191;
          }

          v62 = v76;
          v61 = v77;
        }

        v38 = *v62;
        v13 = v61 - *v62;
        if (v13 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v13 >= 0x17)
        {
          operator new();
        }

        v72 = v61 - *v62;
        if (v13)
        {
          goto LABEL_190;
        }

        goto LABEL_191;
      }

      v18 = *(v17 + 40);
      if (v18)
      {
        v19 = v18 + 8;
      }

      else
      {
        v19 = 0;
      }

      v20 = *(v17 + 32);
      if (v20)
      {
        v21 = *(*v19 + 48);
        if (!v5)
        {
          if (v21)
          {
            v22 = *(*v19 + 48);
          }

          else
          {
            v22 = &off_2779808;
          }

          v8 = *(v22 + 6);
        }

        if (!v21)
        {
          v21 = &off_2779808;
        }

        if (v8 != *(v21 + 6))
        {
          goto LABEL_41;
        }

        if (v20 != 1)
        {
          v23 = v19 + 8;
          v24 = 8 * v20 - 8;
          while (1)
          {
            v25 = *(*v23 + 48);
            if (!v25)
            {
              v25 = &off_2779808;
            }

            if (v8 != *(v25 + 6))
            {
              break;
            }

            v23 += 8;
            v24 -= 8;
            if (!v24)
            {
              goto LABEL_14;
            }
          }

LABEL_41:
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v73);
          sub_4A5C(&v73, "Fare route response has surcharge unit of mismatching currencies. Expected ", 75);
          v26 = std::ostream::operator<<();
          sub_4A5C(v26, " but got ", 9);
          std::ostream::operator<<();
          if ((v83 & 0x10) != 0)
          {
            v41 = v82;
            if (v82 < v79)
            {
              v82 = v79;
              v41 = v79;
            }

            v42 = &v78;
          }

          else
          {
            if ((v83 & 8) == 0)
            {
              v13 = 0;
              v72 = 0;
              goto LABEL_191;
            }

            v42 = v76;
            v41 = v77;
          }

          v38 = *v42;
          v13 = v41 - *v42;
          if (v13 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v13 >= 0x17)
          {
            operator new();
          }

          v72 = v41 - *v42;
          if (v13)
          {
            goto LABEL_190;
          }

          goto LABEL_191;
        }

LABEL_14:
        v5 = 1;
      }

      ++v15;
      result = 1;
      if (v15 == v14)
      {
        return result;
      }
    }

    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v73);
    sub_4A5C(&v73, "Surcharge reference legs in non-increasing order. Previous surcharge at index ", 78);
    v51 = std::ostream::operator<<();
    sub_4A5C(v51, " has start leg ", 15);
    v52 = std::ostream::operator<<();
    sub_4A5C(v52, " and range length ", 18);
    v53 = std::ostream::operator<<();
    sub_4A5C(v53, "; surcharge at index ", 21);
    v54 = std::ostream::operator<<();
    sub_4A5C(v54, " has start leg ", 15);
    std::ostream::operator<<();
    if ((v83 & 0x10) != 0)
    {
      v67 = v82;
      if (v82 < v79)
      {
        v82 = v79;
        v67 = v79;
      }

      v68 = &v78;
    }

    else
    {
      if ((v83 & 8) == 0)
      {
        v13 = 0;
        v72 = 0;
        goto LABEL_191;
      }

      v68 = v76;
      v67 = v77;
    }

    v38 = *v68;
    v13 = v67 - *v68;
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v72 = v67 - *v68;
    if (v13)
    {
      goto LABEL_190;
    }

    goto LABEL_191;
  }

  v28 = 0;
  v29 = v4 - 1;
  while (1)
  {
    v30 = *(a2 + 40) + 8 * v28;
    v31 = *(v30 + 16);
    v32 = *(v31 + 72);
    if (*(*(v30 + 8) + 76) + *(*(v30 + 8) + 72) > v32)
    {
      break;
    }

    if (!*(v31 + 76))
    {
      goto LABEL_59;
    }

    if (sub_96AE18(v32) >= *(a1 + 32))
    {
      goto LABEL_63;
    }

    if (sub_96AE18((*(v31 + 76) + *(v31 + 72))) > *(a1 + 32))
    {
      goto LABEL_7;
    }

    v33 = *(v31 + 56);
    if (!v33)
    {
      v33 = &off_2779808;
    }

    if (v8 != *(v33 + 6))
    {
      goto LABEL_73;
    }

    if (v29 == ++v28)
    {
      goto LABEL_12;
    }
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v73);
    sub_4A5C(&v73, "Base fare reference legs in non-increasing order. Previous base fare at index ", 78);
    v63 = std::ostream::operator<<();
    sub_4A5C(v63, " has start leg ", 15);
    v64 = std::ostream::operator<<();
    sub_4A5C(v64, " and range length ", 18);
    v65 = std::ostream::operator<<();
    sub_4A5C(v65, "; base fare at index ", 21);
    v66 = std::ostream::operator<<();
    sub_4A5C(v66, " has start leg ", 15);
    std::ostream::operator<<();
    if ((v83 & 0x10) != 0)
    {
      v69 = v82;
      if (v82 < v79)
      {
        v82 = v79;
        v69 = v79;
      }

      v70 = &v78;
    }

    else
    {
      if ((v83 & 8) == 0)
      {
        v13 = 0;
        v72 = 0;
        goto LABEL_191;
      }

      v70 = v76;
      v69 = v77;
    }

    v38 = *v70;
    v13 = v69 - *v70;
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v72 = v69 - *v70;
    if (!v13)
    {
      goto LABEL_191;
    }

    goto LABEL_190;
  }

  return result;
}

void sub_11CCBA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

void *sub_11CCD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 32))
  {
    if (*(*(*(a1 + 40) + 8) + 56))
    {
      v4 = *(*(*(a1 + 40) + 8) + 56);
    }

    else
    {
      v4 = &off_2779808;
    }

    sub_15DD818(&v15, v4);
    v5 = *(a1 + 32);
    if (v5 < 2)
    {
LABEL_11:
      *a2 = 1;
      sub_11CD70C((a2 + 8), &v15);
    }

    else
    {
      v6 = v17;
      v7 = LODWORD(v15.__r_.__value_.__r.__words[2]) | 2;
      v8 = *(a1 + 40) + 16;
      v9 = v5 - 1;
      while (1)
      {
        v10 = *(*v8 + 56);
        if (!v10)
        {
          v10 = &off_2779808;
        }

        if (*(v10 + 6) != v16)
        {
          break;
        }

        v6 += *(v10 + 7);
        LODWORD(v15.__r_.__value_.__r.__words[2]) = v7;
        v17 = v6;
        v8 += 8;
        if (!--v9)
        {
          goto LABEL_11;
        }
      }

      v13 = sub_11CF7A4(3);
      *a2 = 0;
      *(a2 + 8) = v13;
      *(a2 + 16) = v14;
    }

    return sub_15DD88C(&v15);
  }

  else
  {
    result = sub_11CF7A4(1);
    *a2 = 0;
    *(a2 + 8) = result;
    *(a2 + 16) = v12;
  }

  return result;
}

double sub_11CCE90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v7 = sub_39881C(*(*(*(a2 + 40) + 8 + 8 * (*(a1 + 56) + *(a1 + 60) - 1)) + 64) - *(*(*(a2 + 40) + 8 + 8 * *(a1 + 56)) + 56));
  if (v7 < 0)
  {
    v18 = v7;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v23, v18);
    sub_23E08("Surcharge covers a trip with a negative duration of ", &v23, &v24);
    sub_30F54(&v25, " sec", &v24);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v25;
    }

    else
    {
      v20 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    v22 = sub_2D390(exception, v20, size);
  }

  v8 = 10 * v7;
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = (v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 32);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  sub_11CD7AC(a4, v10, &v10[v11], v11);
  sub_11D178C(&v24, (a3 + 1), v8);
  v12 = *a4;
  v13 = a4[1];
  v14 = 126 - 2 * __clz((v13 - *a4) >> 6);
  v15 = v13 == *a4;
  LODWORD(v25.__r_.__value_.__l.__data_) = v24.__r_.__value_.__l.__data_;
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  return sub_11CD928(v12, v13, &v25, v16, 1);
}

void sub_11CCFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

void **sub_11CD098(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_15DFD6C(v3 - 64);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_11CD0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(a2 + 56))
  {
    result = sub_11CF7A4(2);
    *a4 = 0;
    *(a4 + 8) = result;
    *(a4 + 16) = v18;
    return result;
  }

  sub_15DD73C(&v26, 0, 0);
  v8 = *(a2 + 64);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + 56);
  if (!v10)
  {
LABEL_17:
    *a4 = 1;
    sub_11CD70C((a4 + 8), &v26);
    return sub_15DD88C(&v26);
  }

  v11 = &v9[v10];
  while (1)
  {
    sub_11CCE90(*v9, a1, a3, &__p);
    v12 = __p;
    v13 = *(__p + 6);
    if (!v13)
    {
      v13 = &off_2779808;
    }

    if (HIDWORD(v27))
    {
      break;
    }

    LODWORD(v26.__r_.__value_.__r.__words[2]) |= 3u;
    v27 = v13[3];
    v15 = v25;
    v16 = __p;
    if (v25 != __p)
    {
      do
      {
LABEL_15:
        v15 = sub_15DFD6C(v15 - 64);
      }

      while (v15 != v12);
      v16 = __p;
    }

LABEL_7:
    v25 = v12;
    operator delete(v16);
    if (++v9 == v11)
    {
      goto LABEL_17;
    }
  }

  if (*(v13 + 6) == v27)
  {
    v14 = *(v13 + 7) + HIDWORD(v27);
    LODWORD(v26.__r_.__value_.__r.__words[2]) |= 2u;
    HIDWORD(v27) = v14;
    v15 = v25;
    v16 = __p;
    if (v25 != __p)
    {
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  v19 = sub_11CF7A4(3);
  *a4 = 0;
  *(a4 + 8) = v19;
  *(a4 + 16) = v20;
  v21 = __p;
  if (__p)
  {
    v22 = v25;
    v23 = __p;
    if (v25 != __p)
    {
      do
      {
        v22 = sub_15DFD6C(v22 - 64);
      }

      while (v22 != v21);
      v23 = __p;
    }

    v25 = v21;
    operator delete(v23);
  }

  return sub_15DD88C(&v26);
}

void sub_11CD2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_15DD88C(va);
  _Unwind_Resume(a1);
}

void *sub_11CD2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_11CCD78(a2, v16);
  v9 = v16[0];
  if (v16[0] != 1)
  {
    goto LABEL_6;
  }

  result = sub_11CD0F4(a1, a2, a3, v12);
  if (v12[0] != 1)
  {
LABEL_5:
    v9 = v16[0];
LABEL_6:
    *a4 = v9;
    v10 = (a4 + 8);
    if (v9)
    {
      result = sub_11CD70C(v10, &v17);
    }

    else
    {
      *&v10->__r_.__value_.__l.__data_ = *&v17.__r_.__value_.__l.__data_;
    }

    goto LABEL_9;
  }

  if (v14 == v18)
  {
    LODWORD(v17.__r_.__value_.__r.__words[2]) |= 2u;
    v19 += v15;
    result = sub_15DD88C(v13);
    goto LABEL_5;
  }

  result = sub_11CF7A4(3);
  *a4 = 0;
  *(a4 + 8) = result;
  *(a4 + 16) = v11;
  if (v12[0] == 1)
  {
    result = sub_15DD88C(v13);
  }

LABEL_9:
  if (v16[0] == 1)
  {
    return sub_15DD88C(&v17);
  }

  return result;
}

void sub_11CD40C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15)
{
  if (a14)
  {
    sub_15DD88C(&a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11CD42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 40);
  v5 = (v4 + 8);
  if (!v4)
  {
    v5 = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = 8 * v6;
    while (1)
    {
      v8 = *v5;
      if (*(*v5 + 72) == a2)
      {
        break;
      }

      ++v5;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    *a3 = 1;

    return sub_15DDFE4(a3 + 8, v8);
  }

  else
  {
LABEL_7:
    result = sub_11CF7A4(1);
    *a3 = 0;
    *(a3 + 8) = result;
    *(a3 + 16) = v10;
  }

  return result;
}

void sub_11CD4C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a2 + 64);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a2 + 56);
  if (v8)
  {
    v9 = 8 * v8;
    while (1)
    {
      v10 = *v7;
      if (*(*v7 + 56) == a4)
      {
        break;
      }

      ++v7;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    sub_11CCE90(v10, a1, a3, &__p);
    sub_15DF0B0(v25, v10);
    v13 = v28;
    if (v28 >= 1)
    {
      v14 = (v29 + 2);
      do
      {
        sub_15DFDA8(*v14++);
        --v13;
      }

      while (v13);
      v28 = 0;
    }

    v15 = __p;
    v16 = v31;
    if (__p != v31)
    {
      do
      {
        if (v29 && v28 < *v29)
        {
          v17 = &v29[2 * v28++];
          v18 = *(v17 + 1);
        }

        else
        {
          v19 = sub_15E120C(v27);
          v18 = sub_19593CC(&v27, v19);
        }

        sub_15E06F0(v18, v15);
        v15 += 64;
      }

      while (v15 != v16);
    }

    *a5 = 1;
    sub_15DEEEC(a5 + 8, 0, 0);
    if ((a5 + 8) != v25)
    {
      v20 = *(a5 + 16);
      if ((v20 & 2) != 0)
      {
        v20 = 0;
      }

      else if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v21 = v26;
      if ((v26 & 2) != 0)
      {
        v21 = 0;
      }

      else if (v26)
      {
        v21 = *(v26 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v20 == v21)
      {
        sub_12D952C(a5 + 8, v25);
      }

      else
      {
        sub_15DFA64(a5 + 8, v25);
      }
    }

    sub_15DF174(v25);
    v22 = __p;
    if (__p)
    {
      v23 = v31;
      v24 = __p;
      if (v31 != __p)
      {
        do
        {
          v23 = sub_15DFD6C(v23 - 64);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v31 = v22;
      operator delete(v24);
    }
  }

  else
  {
LABEL_8:
    v11 = sub_11CF7A4(2);
    *a5 = 0;
    *(a5 + 8) = v11;
    *(a5 + 16) = v12;
  }
}

void sub_11CD6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_11CD098(va);
  _Unwind_Resume(a1);
}

void sub_11CD6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_15DF174(va);
  sub_11CD098(va1);
  _Unwind_Resume(a1);
}

std::string *sub_11CD70C(std::string *a1, std::string *a2)
{
  sub_15DD73C(a1, 0, 0);
  if (a1 != a2)
  {
    size = a1->__r_.__value_.__l.__size_;
    if ((size & 2) != 0)
    {
      size = 0;
    }

    else if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = a2->__r_.__value_.__l.__size_;
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (size == v5)
    {
      sub_15DDDA8(a1, a2);
    }

    else
    {
      sub_15DDD54(a1, a2);
    }
  }

  return a1;
}

void sub_11CD7AC(uint64_t result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 58))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_11CD87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v12)
  {
    v14 = v11 - 64;
    v15 = -v12;
    do
    {
      v14 = sub_15DFD6C(v14) - 64;
      v15 += 64;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_11CD8B0(&a9);
  _Unwind_Resume(a1);
}

void ***sub_11CD8B0(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_15DFD6C(v4 - 64);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

double sub_11CD928(char *result, char *a2, unsigned int *a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = result;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    result = v9;
    v11 = v10;
    v12 = &a2[-v9] >> 6;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return v23;
      }

      if (v12 == 2)
      {
        v22 = sub_11D17F8(a3, (a2 - 64), result);
        if (a2 - 64 != result && v22)
        {
          v24 = *(result + 1);
          if ((v24 & 2) != 0)
          {
            v24 = 0;
          }

          else if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v29 = *(a2 - 7);
          if ((v29 & 2) != 0)
          {
            v29 = 0;
          }

          else if (v29)
          {
            v29 = *(v29 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v30 = (a2 - 64);
          if (v24 == v29)
          {

            *&v23 = sub_15E0744(result, v30).n128_u64[0];
          }

          else
          {

            sub_1956DC4(result, v30);
          }
        }

        return v23;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      return sub_11CE048(result, (result + 64), (result + 128), (a2 - 64), a3);
    }

    if (v12 == 5)
    {

      return sub_11CE244(result, (result + 64), (result + 128), (result + 192), (a2 - 64), a3);
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        sub_11CE4C8(result, a2, a3);
      }

      else
      {

        sub_11CE680(result, a2, a3);
      }

      return v23;
    }

    if (v10 == 1)
    {
      if (result != a2)
      {
        v25 = (v12 - 2) >> 1;
        v26 = v25 + 1;
        v27 = &result[64 * v25];
        do
        {
          sub_11CF13C(result, a3, v12, v27);
          v27 -= 64;
          --v26;
        }

        while (v26);
        do
        {
          sub_11CF358(result, a2, a3, v12);
          a2 -= 64;
        }

        while (v12-- > 2);
      }

      return v23;
    }

    v13 = v12 >> 1;
    v14 = &result[64 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      sub_11CDDDC(&result[64 * (v12 >> 1)], result, (a2 - 64), a3);
      if (a5)
      {
        goto LABEL_28;
      }
    }

    else
    {
      sub_11CDDDC(result, &result[64 * (v12 >> 1)], (a2 - 64), a3);
      v15 = v13 << 6;
      v16 = &result[64 * v13 - 64];
      sub_11CDDDC((result + 64), v16, (a2 - 128), a3);
      sub_11CDDDC((result + 128), &result[v15 + 64], (a2 - 192), a3);
      sub_11CDDDC(v16, v14, &result[v15 + 64], a3);
      v17 = *(result + 1);
      if ((v17 & 2) != 0)
      {
        v17 = 0;
      }

      else if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v18 = *(v14 + 8);
      if ((v18 & 2) != 0)
      {
        v18 = 0;
      }

      else if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v17 == v18)
      {
        sub_15E0744(result, v14);
        if (a5)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1956DC4(result, v14);
        if (a5)
        {
          goto LABEL_28;
        }
      }
    }

    if (!sub_11D17F8(a3, (result - 64), result))
    {
      v9 = sub_11CE80C(result, a2, a3);
      goto LABEL_33;
    }

LABEL_28:
    v19 = sub_11CEAD4(result, a2, a3);
    if ((v20 & 1) == 0)
    {
      goto LABEL_31;
    }

    v21 = sub_11CED94(result, v19, a3);
    v9 = (v19 + 64);
    if (sub_11CED94(v19 + 64, a2, a3))
    {
      a4 = -v11;
      a2 = v19;
      if (v21)
      {
        return v23;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v21)
    {
LABEL_31:
      sub_11CD928(result, v19, a3, -v11, a5 & 1);
      v9 = (v19 + 64);
LABEL_33:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  sub_11CDDDC(result, (result + 64), (a2 - 64), a3);
  return v23;
}

BOOL sub_11CDDDC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v8 = sub_11D17F8(a4, a2, a1);
  result = sub_11D17F8(a4, a3, a2);
  if (!v8)
  {
    if (!result)
    {
      return result;
    }

    if (a3 != a2)
    {
      v11 = *(a2 + 8);
      if ((v11 & 2) != 0)
      {
        v11 = 0;
      }

      else if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v14 = *(a3 + 8);
      if ((v14 & 2) != 0)
      {
        v14 = 0;
      }

      else if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v11 == v14)
      {
        sub_15E0744(a2, a3);
      }

      else
      {
        sub_1956DC4(a2, a3);
      }
    }

    v18 = sub_11D17F8(a4, a2, a1);
    result = 1;
    if (a2 == a1 || !v18)
    {
      return result;
    }

    v19 = *(a1 + 8);
    if ((v19 & 2) != 0)
    {
      v19 = 0;
    }

    else if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v20 = *(a2 + 8);
    if ((v20 & 2) != 0)
    {
      v20 = 0;
    }

    else if (v20)
    {
      v16 = a1;
      v17 = a2;
      if (v19 != *(v20 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_50;
      }

LABEL_63:
      sub_15E0744(v16, v17);
      return 1;
    }

    v16 = a1;
    v17 = a2;
    if (v19 != v20)
    {
      goto LABEL_50;
    }

    goto LABEL_63;
  }

  if (result)
  {
    if (a3 == a1)
    {
      return 1;
    }

    v10 = *(a1 + 8);
    if ((v10 & 2) != 0)
    {
      v10 = 0;
    }

    else if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v13 = *(a3 + 8);
    if ((v13 & 2) != 0)
    {
      v13 = 0;
    }

    else if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v16 = a1;
    v17 = a3;
    if (v10 == v13)
    {
      goto LABEL_63;
    }

LABEL_50:
    sub_1956DC4(v16, v17);
    return 1;
  }

  if (a2 != a1)
  {
    v12 = *(a1 + 8);
    if ((v12 & 2) != 0)
    {
      v12 = 0;
    }

    else if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v15 = *(a2 + 8);
    if ((v15 & 2) != 0)
    {
      v15 = 0;
    }

    else if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v12 == v15)
    {
      sub_15E0744(a1, a2);
    }

    else
    {
      sub_1956DC4(a1, a2);
    }
  }

  v21 = sub_11D17F8(a4, a3, a2);
  result = 1;
  if (a3 != a2 && v21)
  {
    v22 = *(a2 + 8);
    if ((v22 & 2) != 0)
    {
      v22 = 0;
    }

    else if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v23 = *(a3 + 8);
    if ((v23 & 2) != 0)
    {
      v23 = 0;
    }

    else if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v16 = a2;
    v17 = a3;
    if (v22 == v23)
    {
      goto LABEL_63;
    }

    goto LABEL_50;
  }

  return result;
}

double sub_11CE048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  sub_11CDDDC(a1, a2, a3, a5);
  if (!sub_11D17F8(a5, a4, a3))
  {
    return result;
  }

  if (a4 != a3)
  {
    v11 = *(a3 + 8);
    if ((v11 & 2) != 0)
    {
      v11 = 0;
    }

    else if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v12 = *(a4 + 8);
    if ((v12 & 2) != 0)
    {
      v12 = 0;
    }

    else if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v11 == v12)
    {
      sub_15E0744(a3, a4);
      if (!sub_11D17F8(a5, a3, a2))
      {
        return result;
      }

      goto LABEL_14;
    }

    sub_1956DC4(a3, a4);
  }

  if (!sub_11D17F8(a5, a3, a2))
  {
    return result;
  }

LABEL_14:
  if (a3 != a2)
  {
    v13 = *(a2 + 8);
    if ((v13 & 2) != 0)
    {
      v13 = 0;
    }

    else if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v14 = *(a3 + 8);
    if ((v14 & 2) != 0)
    {
      v14 = 0;
    }

    else if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v13 == v14)
    {
      sub_15E0744(a2, a3);
      v15 = sub_11D17F8(a5, a2, a1);
      if (a2 == a1)
      {
        return result;
      }

      goto LABEL_28;
    }

    sub_1956DC4(a2, a3);
  }

  v15 = sub_11D17F8(a5, a2, a1);
  if (a2 == a1)
  {
    return result;
  }

LABEL_28:
  if (v15)
  {
    v16 = *(a1 + 8);
    if ((v16 & 2) != 0)
    {
      v16 = 0;
    }

    else if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v17 = *(a2 + 8);
    if ((v17 & 2) != 0)
    {
      v17 = 0;
    }

    else if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v16 == v17)
    {

      *&result = sub_15E0744(a1, a2).n128_u64[0];
    }

    else
    {

      sub_1956DC4(a1, a2);
    }
  }

  return result;
}

double sub_11CE244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  sub_11CE048(a1, a2, a3, a4, a6);
  if (!sub_11D17F8(a6, a5, a4))
  {
    return result;
  }

  if (a5 != a4)
  {
    v13 = *(a4 + 8);
    if ((v13 & 2) != 0)
    {
      v13 = 0;
    }

    else if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v14 = *(a5 + 8);
    if ((v14 & 2) != 0)
    {
      v14 = 0;
    }

    else if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v13 == v14)
    {
      sub_15E0744(a4, a5);
      if (!sub_11D17F8(a6, a4, a3))
      {
        return result;
      }

      goto LABEL_14;
    }

    sub_1956DC4(a4, a5);
  }

  if (!sub_11D17F8(a6, a4, a3))
  {
    return result;
  }

LABEL_14:
  if (a4 != a3)
  {
    v15 = *(a3 + 8);
    if ((v15 & 2) != 0)
    {
      v15 = 0;
    }

    else if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v16 = *(a4 + 8);
    if ((v16 & 2) != 0)
    {
      v16 = 0;
    }

    else if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v15 == v16)
    {
      sub_15E0744(a3, a4);
      if (!sub_11D17F8(a6, a3, a2))
      {
        return result;
      }

      goto LABEL_28;
    }

    sub_1956DC4(a3, a4);
  }

  if (!sub_11D17F8(a6, a3, a2))
  {
    return result;
  }

LABEL_28:
  if (a3 != a2)
  {
    v17 = *(a2 + 8);
    if ((v17 & 2) != 0)
    {
      v17 = 0;
    }

    else if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v18 = *(a3 + 8);
    if ((v18 & 2) != 0)
    {
      v18 = 0;
    }

    else if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v17 == v18)
    {
      sub_15E0744(a2, a3);
      v19 = sub_11D17F8(a6, a2, a1);
      if (a2 == a1)
      {
        return result;
      }

      goto LABEL_42;
    }

    sub_1956DC4(a2, a3);
  }

  v19 = sub_11D17F8(a6, a2, a1);
  if (a2 == a1)
  {
    return result;
  }

LABEL_42:
  if (v19)
  {
    v20 = *(a1 + 8);
    if ((v20 & 2) != 0)
    {
      v20 = 0;
    }

    else if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v21 = *(a2 + 8);
    if ((v21 & 2) != 0)
    {
      v21 = 0;
    }

    else if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v20 == v21)
    {

      *&result = sub_15E0744(a1, a2).n128_u64[0];
    }

    else
    {

      sub_1956DC4(a1, a2);
    }
  }

  return result;
}

uint64_t sub_11CE4C8(uint64_t result, uint64_t a2, unsigned int *a3)
{
  if (result == a2)
  {
    return result;
  }

  v4 = result;
  v5 = result + 64;
  if (result + 64 == a2)
  {
    return result;
  }

  v7 = 0;
  v8 = result;
  while (2)
  {
    v9 = v8;
    v8 = v5;
    result = sub_11D17F8(a3, v5, v9);
    if (!result)
    {
      goto LABEL_6;
    }

    sub_11CF09C(&v18, v8);
    v10 = v7;
    while (1)
    {
      v11 = v4 + v10;
      v12 = *(v4 + v10 + 72);
      if ((v12 & 2) != 0)
      {
        v12 = 0;
        v13 = *(v11 + 8);
        if ((v13 & 2) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v13 = *(v11 + 8);
        if ((v13 & 2) != 0)
        {
LABEL_16:
          v13 = 0;
          goto LABEL_17;
        }
      }

      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFCLL);
      }

LABEL_17:
      if (v12 == v13)
      {
        sub_15E0744(v11 + 64, v11);
      }

      else
      {
        sub_15E06F0(v11 + 64, v11);
      }

      if (!v10)
      {
        break;
      }

      v14 = sub_11D17F8(a3, &v18, v4 + v10 - 64);
      v10 -= 64;
      if (!v14)
      {
        v15 = (v4 + v10 + 64);
        if (v15 == &v18)
        {
          goto LABEL_5;
        }

        goto LABEL_25;
      }
    }

    v15 = v4;
    if (v4 == &v18)
    {
      goto LABEL_5;
    }

LABEL_25:
    v16 = v15[1];
    if ((v16 & 2) != 0)
    {
      v16 = 0;
    }

    else if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v17 = v19;
    if ((v19 & 2) != 0)
    {
      v17 = 0;
    }

    else if (v19)
    {
      v17 = *(v19 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v16 == v17)
    {
      sub_15E0744(v15, &v18);
    }

    else
    {
      sub_15E06F0(v15, &v18);
    }

LABEL_5:
    result = sub_15DFD6C(&v18);
LABEL_6:
    v5 = v8 + 64;
    v7 += 64;
    if (v8 + 64 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_11CE680(uint64_t result, void *a2, unsigned int *a3)
{
  if (result == a2)
  {
    return result;
  }

  v4 = result;
  v5 = result + 64;
  if ((result + 64) == a2)
  {
    return result;
  }

  while (2)
  {
    v7 = v5;
    result = sub_11D17F8(a3, v5, v4);
    if (!result)
    {
      goto LABEL_6;
    }

    sub_11CF09C(&v13, v7);
    do
    {
      v8 = v4[9];
      if ((v8 & 2) != 0)
      {
        v8 = 0;
        v9 = v4[1];
        if ((v9 & 2) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v9 = v4[1];
        if ((v9 & 2) != 0)
        {
LABEL_16:
          v9 = 0;
          goto LABEL_17;
        }
      }

      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
      }

LABEL_17:
      if (v8 == v9)
      {
        sub_15E0744((v4 + 8), v4);
      }

      else
      {
        sub_15E06F0((v4 + 8), v4);
      }

      v4 -= 8;
    }

    while (sub_11D17F8(a3, &v13, v4));
    v10 = (v4 + 8);
    if (v4 + 8 != &v13)
    {
      v11 = v4[9];
      if ((v11 & 2) != 0)
      {
        v11 = 0;
      }

      else if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v12 = v14;
      if ((v14 & 2) != 0)
      {
        v12 = 0;
      }

      else if (v14)
      {
        v12 = *(v14 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v11 == v12)
      {
        sub_15E0744(v10, &v13);
      }

      else
      {
        sub_15E06F0(v10, &v13);
      }
    }

    result = sub_15DFD6C(&v13);
LABEL_6:
    v5 = v7 + 64;
    v4 = v7;
    if ((v7 + 64) != a2)
    {
      continue;
    }

    return result;
  }
}