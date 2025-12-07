void sub_7123D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_712438(uint64_t a1, int **a2, uint64_t a3, double a4)
{
  v4 = *a3;
  if (*a3 == *(a3 + 8) || fabs(sub_70E16C(a1, a2, *a3, a4)) > *(a1 + 1000))
  {
    return 0;
  }

  v8 = (*a2 - **a2);
  v9 = *v8;
  if (*(a2 + 38))
  {
    if (v9 >= 0x47)
    {
      v10 = v8[35];
      if (v10)
      {
        v11 = 2;
LABEL_10:
        v12 = (*(*a2 + v10) & v11) != 0;
        goto LABEL_12;
      }
    }
  }

  else if (v9 >= 0x47)
  {
    v10 = v8[35];
    if (v10)
    {
      v11 = 1;
      goto LABEL_10;
    }
  }

  v12 = 0;
LABEL_12:
  v13 = *v4;
  v14 = (*v4 - **v4);
  v15 = *v14;
  if (*(v4 + 38))
  {
    if (v15 >= 0x47)
    {
      v16 = v14[35];
      if (v16)
      {
        if (((v12 ^ ((*(v13 + v16) & 2) != 0)) & 1) == 0)
        {
          goto LABEL_16;
        }

        return 0;
      }
    }
  }

  else if (v15 >= 0x47)
  {
    v18 = v14[35];
    if (v18)
    {
      if ((v12 ^ ((*(v13 + v18))))
      {
        return 0;
      }

      goto LABEL_16;
    }
  }

  if (v12)
  {
    return 0;
  }

LABEL_16:
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 3) < 2)
  {
    return 1;
  }

  v19 = sub_605E3C(a3, 1uLL);
  return fabs(sub_70E16C(a1, a2, v19, v20)) > *(a1 + 1016);
}

void *sub_7125C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1794();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
  return (v5 - 8);
}

void sub_7126C8(uint64_t a1, int **a2, void *a3, unint64_t **a4)
{
  v4 = *a4;
  a4[1] = *a4;
  if (*(a1 + 1682) == 1)
  {
    v5 = a3;
    v6 = a3[1] - *a3;
    if (!v6)
    {
      goto LABEL_34;
    }

    v7 = 0;
    v45 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3);
    do
    {
      v8 = sub_605E3C(v5, v7);
      v9 = sub_70E2E0(a1, a2, v8);
      v10 = sub_311544(v8);
      if (fabs(v9) <= *(a1 + 1000))
      {
        v11 = *a4;
        v12 = a4[1];
        if (*a4 != v12)
        {
          v13 = v10;
          v14 = HIDWORD(v10);
          v49 = v10;
          v50 = v7;
          do
          {
            v15 = sub_605E3C(v5, *v11);
            v16 = *v15;
            v17 = (*v15 - **v15);
            if (*(v15 + 38))
            {
              if (v17[3])
              {
                v18 = __ROR8__(*&v16[v17[3]], 32);
                v19 = HIDWORD(v18);
              }

              else
              {
                v21 = v12;
                v22 = *&v16[v17[60]];
                v23 = v14;
                v24 = *(v15 + 8);
                LODWORD(v18) = v22 >> 16;
                v25 = v22 << 16;
                v26 = sub_57A90(v24);
                v27 = v26 >> 1;
                v28 = v26 & 0xFE;
                v29 = v24 & ~(-1 << (v26 & 0xFE));
                v30 = sub_581D8(v29);
                v31 = v29 >> 1;
                v14 = v23;
                v32 = sub_581D8(v31);
                v33 = v30 + v22;
                v12 = v21;
                v13 = v49;
                v7 = v50;
                v34 = v32 + (v25 >> 24);
                v35 = ((((((v33 & ~(v33 >> 31)) - v33 + (v33 >> 31)) >> v27) + (v33 >> 31)) << v27) + v33) % (1 << v27);
                v36 = ((((((v34 & ~(v34 >> 31)) - v34 + (v34 >> 31)) >> v27) + (v34 >> 31)) << v27) + v34) % (1 << v27);
                v37 = -1 << v27;
                v38 = ~(-1 << v27);
                if (v38 < v35)
                {
                  v39 = ~v37;
                }

                else
                {
                  v39 = v35;
                }

                if (v38 < v36)
                {
                  v40 = ~v37;
                }

                else
                {
                  v40 = v36;
                }

                sub_58168(v39, v40);
                LODWORD(v19) = v41 | (1 << v28);
                v5 = a3;
              }
            }

            else
            {
              v20 = *v17;
              if (v20 < 5)
              {
                goto LABEL_25;
              }

              if (v17[2])
              {
                v18 = __ROR8__(*&v16[v17[2]], 32);
                v19 = HIDWORD(v18);
                goto LABEL_27;
              }

              if (v20 >= 0x77 && (v42 = v17[59]) != 0)
              {
                LODWORD(v18) = *&v16[v42];
              }

              else
              {
LABEL_25:
                LODWORD(v18) = 0;
              }

              LODWORD(v19) = *(v15 + 8);
            }

LABEL_27:
            if (v19 == v13 && v18 == v14)
            {
              goto LABEL_5;
            }

            ++v11;
          }

          while (v11 != v12);
        }

        v51 = v7;
        sub_2512DC(a4, &v51);
      }

LABEL_5:
      ++v7;
    }

    while (v7 != v45);
    v4 = *a4;
    if ((a4[1] - *a4) <= 8)
    {
LABEL_34:
      a4[1] = v4;
    }
  }
}

BOOL sub_712998(uint64_t a1, int **a2, int **a3)
{
  v3 = *a2;
  v4 = (*a2 - **a2);
  v5 = *v4;
  if (*(a2 + 38))
  {
    if (v5 < 0x47)
    {
      return 0;
    }

    v6 = v4[35];
    if (!v6)
    {
      return 0;
    }

    v7 = *&v3[v6];
    if ((v7 & 0x141510) == 0 && (v7 & 0x40) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v5 < 0x47)
    {
      return 0;
    }

    v8 = v4[35];
    if (!v8)
    {
      return 0;
    }

    v9 = *&v3[v8];
    if ((v9 & 0xA0A88) == 0 && (v9 & 0x20) == 0)
    {
      return 0;
    }
  }

  v10 = *a3;
  v11 = (*a3 - **a3);
  v12 = *v11;
  if (*(a3 + 38))
  {
    if (v12 >= 0x47)
    {
      v13 = v11[35];
      if (v13)
      {
        v14 = *&v10[v13];
        return (v14 & 0x141510) != 0 || (v14 & 0x40) != 0;
      }
    }

    return 0;
  }

  if (v12 < 0x47)
  {
    return 0;
  }

  v16 = v11[35];
  if (!v16)
  {
    return 0;
  }

  v17 = *&v10[v16];
  return (v17 & 0xA0A88) != 0 || (v17 & 0x20) != 0;
}

uint64_t sub_712AA4(uint64_t a1, int **a2, int **a3)
{
  v6 = (*a2 - **a2);
  v7 = *v6;
  if (*(a2 + 38))
  {
    if (v7 < 0x49)
    {
      goto LABEL_11;
    }

    v8 = v6[36];
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  else if (v7 < 0x4B || (v8 = v6[37]) == 0)
  {
LABEL_11:
    v9 = -1;
    v10 = *a3;
    v11 = (*a3 - **a3);
    v12 = *v11;
    if (*(a3 + 38))
    {
      goto LABEL_12;
    }

LABEL_8:
    if (v12 >= 0x49)
    {
      v13 = v11[36];
      if (v13)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

  v9 = *(*a2 + v8);
  v10 = *a3;
  v11 = (*a3 - **a3);
  v12 = *v11;
  if (!*(a3 + 38))
  {
    goto LABEL_8;
  }

LABEL_12:
  if (v12 >= 0x4B)
  {
    v13 = v11[37];
    if (v13)
    {
LABEL_14:
      v14 = *&v10[v13];
      goto LABEL_16;
    }
  }

LABEL_15:
  v14 = 0xFFFF;
LABEL_16:
  if (sub_31EE90(*(a1 + 888), a2[4] & 0xFFFFFFFFFFFFFFLL, a3[4] & 0xFFFFFFFFFFFFFFLL))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_31C74C(*(a1 + 888), a2, a3);
  }

  v16 = v9 + 18000;
  if (((v9 + 18000) >> 5) >= 0x465u)
  {
    v16 = v9 - 18000;
  }

  v17 = v14 - v16;
  if (v17 <= 18000)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 - 36000;
  }

  if (v18 < -17999)
  {
    v18 += 36000;
  }

  return (fabs(v18 / 100.0) <= *(a1 + 1056)) & (*(a1 + 1688) ^ 1 | v15);
}

int **sub_712C28(int **a1, int **a2, int **a3)
{
  v3 = a1;
  v7 = a3;
  if (a1 != a2)
  {
    for (i = a1 + 5; i != a2; i += 5)
    {
      if (sub_709574(&v7, i, v3))
      {
        v3 = i;
      }
    }
  }

  return v3;
}

uint64_t sub_712C9C(uint64_t *a1, int **a2, uint64_t a3)
{
  v5 = *a1;
  if (sub_31EE90(*(*a1 + 888), a2[4] & 0xFFFFFFFFFFFFFFLL, *(a3 + 32) & 0xFFFFFFFFFFFFFFLL))
  {
    return 1;
  }

  v7 = *(v5 + 888);

  return sub_31C74C(v7, a2, a3);
}

BOOL sub_712D18(uint64_t a1, int **a2)
{
  v2 = *a2;
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (*(a2 + 38))
  {
    if (v4 >= 0x9B)
    {
      v5 = v3[77];
      if (v5)
      {
        return (*&v2[v5] & 2) != 0;
      }
    }
  }

  else if (v4 >= 0x9B)
  {
    v7 = v3[77];
    if (v7)
    {
      return (*&v2[v7] & 1) != 0;
    }
  }

  return 0;
}

void sub_712D7C(uint64_t a1, unint64_t *a2, __int128 *a3)
{
  ++*(a1 + 816);
  sub_71F0D0(a1, a2, v34);
  if (v34[0])
  {
    v6 = v35;
    v7 = *(a1 + 768) + (*(v35 + 8) << 6);
    v8 = *a3;
    v9 = a3[1];
    v10 = a3[2];
    *(v7 + 56) = *(a3 + 48);
    *(v7 + 40) = v10;
    *(v7 + 24) = v9;
    *(v7 + 8) = v8;
    v11 = *(v6 + 8);
    v12 = *(a1 + 848);
    if (v11 < (*(a1 + 856) - v12) >> 2 && *(v12 + 4 * v11) != -1)
    {
      v13 = (a1 + 824);
LABEL_22:
      sub_40E27C(v13, v11, a3);
      return;
    }

    v14 = (a1 + 824);
  }

  else
  {
    v15 = *(a1 + 776) - *(a1 + 768);
    sub_71F240(a1, a2, v36);
    *(v37 + 8) = v15 >> 6;
    v16 = *(a1 + 776);
    v17 = *(a1 + 784);
    if (v16 >= v17)
    {
      v22 = *(a1 + 768);
      v23 = v16 - v22;
      v24 = (v16 - v22) >> 6;
      v25 = v24 + 1;
      if ((v24 + 1) >> 58)
      {
        sub_1794();
      }

      v26 = v17 - v22;
      if (v26 >> 5 > v25)
      {
        v25 = v26 >> 5;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFC0)
      {
        v27 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        if (!(v27 >> 58))
        {
          operator new();
        }

        sub_1808();
      }

      v28 = v24;
      v29 = v24 << 6;
      *v29 = *a2;
      v30 = a3[1];
      *(v29 + 8) = *a3;
      *(v29 + 24) = v30;
      *(v29 + 40) = a3[2];
      *(v29 + 56) = *(a3 + 6);
      v21 = (v24 << 6) + 64;
      v31 = (v29 - (v28 << 6));
      memcpy(v31, v22, v23);
      *(a1 + 768) = v31;
      *(a1 + 776) = v21;
      *(a1 + 784) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v16 = *a2;
      v18 = *a3;
      v19 = a3[1];
      v20 = a3[2];
      *(v16 + 56) = *(a3 + 6);
      *(v16 + 40) = v20;
      *(v16 + 24) = v19;
      *(v16 + 8) = v18;
      v21 = v16 + 64;
    }

    *(a1 + 776) = v21;
    v32 = (v15 >> 6);
    v33 = *(a1 + 848);
    if (v32 < (*(a1 + 856) - v33) >> 2 && *(v33 + 4 * v32) != -1)
    {
      v13 = (a1 + 824);
      v11 = v15 >> 6;
      goto LABEL_22;
    }

    v14 = (a1 + 824);
    v11 = v15 >> 6;
  }

  sub_40E0E8(v14, v11, a3);
}

uint64_t sub_712FC8(uint64_t a1, unint64_t *a2, __int128 *a3)
{
  sub_71F0D0(a1, a2, v37);
  if (!v37[0])
  {
    ++*(a1 + 816);
    v16 = *(a1 + 776) - *(a1 + 768);
    sub_71F240(a1, a2, v39);
    *(v40 + 8) = v16 >> 6;
    v17 = *(a1 + 776);
    v18 = *(a1 + 784);
    if (v17 >= v18)
    {
      v25 = *(a1 + 768);
      v26 = v17 - v25;
      v27 = (v17 - v25) >> 6;
      v28 = v27 + 1;
      if ((v27 + 1) >> 58)
      {
        sub_1794();
      }

      v29 = v18 - v25;
      if (v29 >> 5 > v28)
      {
        v28 = v29 >> 5;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFC0)
      {
        v30 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        if (!(v30 >> 58))
        {
          operator new();
        }

        sub_1808();
      }

      v31 = v27;
      v32 = v27 << 6;
      *v32 = *a2;
      v33 = a3[1];
      *(v32 + 8) = *a3;
      *(v32 + 24) = v33;
      *(v32 + 40) = a3[2];
      *(v32 + 56) = *(a3 + 6);
      v22 = (v27 << 6) + 64;
      v34 = (v32 - (v31 << 6));
      memcpy(v34, v25, v26);
      *(a1 + 768) = v34;
      *(a1 + 776) = v22;
      *(a1 + 784) = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v17 = *a2;
      v19 = *a3;
      v20 = a3[1];
      v21 = a3[2];
      *(v17 + 56) = *(a3 + 6);
      *(v17 + 40) = v21;
      *(v17 + 24) = v20;
      *(v17 + 8) = v19;
      v22 = v17 + 64;
    }

    *(a1 + 776) = v22;
    v35 = (v16 >> 6);
    v36 = *(a1 + 848);
    if (v35 < (*(a1 + 856) - v36) >> 2 && *(v36 + 4 * v35) != -1)
    {
      v15 = (a1 + 824);
      v13 = v16 >> 6;
      goto LABEL_24;
    }

    v24 = (a1 + 824);
    v13 = v16 >> 6;
LABEL_26:
    sub_40E0E8(v24, v13, a3);
    return 1;
  }

  v6 = v38;
  v7 = *(a1 + 768) + (*(v38 + 8) << 6);
  v9 = *(v7 + 8);
  v8 = v7 + 8;
  if (*a3 >= v9)
  {
    return 0;
  }

  ++*(a1 + 816);
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  *(v8 + 48) = *(a3 + 48);
  *(v8 + 16) = v11;
  *(v8 + 32) = v12;
  *v8 = v10;
  v13 = *(v6 + 8);
  v14 = *(a1 + 848);
  if (v13 >= (*(a1 + 856) - v14) >> 2 || *(v14 + 4 * v13) == -1)
  {
    v24 = (a1 + 824);
    goto LABEL_26;
  }

  v15 = (a1 + 824);
LABEL_24:
  sub_40E27C(v15, v13, a3);
  return 1;
}

uint64_t sub_713238(uint64_t a1, uint64_t a2, const void *a3, _OWORD *a4, char a5)
{
  *(sub_71FA28(a1) + 880) = a2;
  *(a1 + 888) = sub_3AF6B4(a2);
  *(a1 + 896) = *a4;
  *(a1 + 912) = a5;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 1065353216;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 1065353216;
  memcpy((a1 + 1000), a3, 0x4E0uLL);
  return a1;
}

double sub_7132DC(uint64_t a1, void *a2, int **a3, int **a4, int a5, double a6)
{
  if (a5)
  {
    v9 = a1;
    v10 = sub_70E510(a1, a2, a3, a4);
    a1 = v9;
    if (v10)
    {
      return COERCE_DOUBLE(sub_71336C(v9, a2, a3, a4, 1));
    }
  }

  return sub_70E16C(a1, a3, a4, a6);
}

uint64_t sub_71336C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 && sub_70E510(a1, a2, a3, a4))
  {
    v9 = *(a4 + 32) & 0xFFFFFFFFFFFFFFLL;
    v30 = *(a3 + 32) & 0xFFFFFFFFFFFFFFLL;
    v31 = v9;
    v10 = sub_71A8B4((a1 + 920), &v30);
    if (v10)
    {
      if (*(v10 + 40) == 1)
      {
        return v10[4];
      }
    }

    else
    {
      v12 = *(a3 + 32);
      LODWORD(v30) = v12;
      BYTE6(v30) = BYTE6(v12);
      WORD2(v30) = WORD2(v12);
      v13 = sub_4727F8((a1 + 960), &v30);
      if (v13)
      {
        v14 = v13[3];
      }

      else
      {
        v14 = -1;
      }

      v15 = *(a4 + 32);
      LODWORD(v30) = v15;
      BYTE6(v30) = BYTE6(v15);
      WORD2(v30) = WORD2(v15);
      v16 = sub_4727F8((a1 + 960), &v30);
      if (v16 && v14 != -1 && v16[3] != -1)
      {
        v18 = sub_70E16C(a1, a3, a4, v17);
        v19 = COERCE_DOUBLE(sub_715180(a1, a2, v14));
        v21 = v20;
        if (v20)
        {
          if ((v22 = sub_70DD90(a1, 0, v18), sub_71A340(v22)) && (v23 = sub_70DD90(a1, 0, v19), sub_71A37C(v23)) || (v24 = sub_70DD90(a1, 0, v18), sub_71A37C(v24)) && (v25 = sub_70DD90(a1, 0, v19), sub_71A340(v25)))
          {
            v26 = *(a4 + 32) & 0xFFFFFFFFFFFFFFLL;
            v30 = *(a3 + 32) & 0xFFFFFFFFFFFFFFLL;
            v31 = v26;
            v32 = &v30;
            v27 = sub_71AA98((a1 + 920), &v30, &unk_229EB70, &v32);
            *(v27 + 32) = 0;
            *(v27 + 40) = 0;
            return *&v18;
          }
        }

        v28 = *(a4 + 32) & 0xFFFFFFFFFFFFFFLL;
        v30 = *(a3 + 32) & 0xFFFFFFFFFFFFFFLL;
        v31 = v28;
        v32 = &v30;
        v29 = sub_71AA98((a1 + 920), &v30, &unk_229EB70, &v32);
        *(v29 + 4) = v19;
        *(v29 + 40) = v21;
        if (v21)
        {
          return *&v19;
        }
      }
    }
  }

  return sub_70E2E0(a1, a3, a4);
}

uint64_t sub_7135C4(uint64_t a1, int **a2, int ***a3, uint64_t a4, double a5)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_71367C(a1, a2, a3, &v8, a5);
  if (v8 == v9)
  {
    a4 = -1;
LABEL_8:
    if (!v8)
    {
      return a4;
    }
  }

  else
  {
    v6 = v8;
    while (*v6 != a4)
    {
      if (++v6 == v9)
      {
        goto LABEL_10;
      }
    }

    if (v6 != v9)
    {
      goto LABEL_8;
    }

LABEL_10:
    a4 = *v8;
  }

  v9 = v8;
  operator delete(v8);
  return a4;
}

void sub_713660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_71367C(uint64_t a1, int **a2, int ***a3, void *a4, double a5)
{
  a4[1] = *a4;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  sub_71555C(a1, a2, a3, &v42, a5);
  v9 = v42;
  v10 = v43;
  if (v42 == v43)
  {
    goto LABEL_50;
  }

  do
  {
    v11 = *v9;
    v41 = v11;
    if (v11 == -1 || !sub_70EB5C(a1, a2, a3, v11))
    {
      goto LABEL_4;
    }

    v12 = sub_605E3C(a3, v41);
    v13 = (*a2 - **a2);
    v14 = *v13;
    if (*(a2 + 38))
    {
      if (v14 >= 0x49)
      {
        v15 = v13[36];
        if (v15)
        {
          goto LABEL_14;
        }
      }
    }

    else if (v14 >= 0x4B)
    {
      v15 = v13[37];
      if (v15)
      {
LABEL_14:
        v16 = *(*a2 + v15);
        v17 = *v12;
        v18 = (*v12 - **v12);
        v19 = *v18;
        if (*(v12 + 38))
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }
    }

    v16 = -1;
    v17 = *v12;
    v18 = (*v12 - **v12);
    v19 = *v18;
    if (*(v12 + 38))
    {
LABEL_19:
      if (v19 >= 0x4B)
      {
        v20 = v18[37];
        if (v20)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_22;
    }

LABEL_15:
    if (v19 >= 0x49)
    {
      v20 = v18[36];
      if (v20)
      {
LABEL_21:
        v21 = *&v17[v20];
        goto LABEL_23;
      }
    }

LABEL_22:
    v21 = 0xFFFF;
LABEL_23:
    v22 = v16 + 18000;
    v23 = v16 - 18000;
    if ((v22 >> 5) < 0x465u)
    {
      v23 = v22;
    }

    v24 = v21 - v23;
    if (v24 > 18000)
    {
      v24 -= 36000;
    }

    if (v24 >= -17999)
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 + 36000;
    }

    v26 = sub_605E3C(a3, v41);
    v27 = sub_70E2E0(a1, a2, v26);
    v28 = fabs(v25 / 100.0);
    v29 = fabs(v27);
    if (v29 >= v28)
    {
      v29 = v28;
    }

    if (v29 <= *(a1 + 1152) || (v30 = (*a2 - **a2), *v30 < 0x2Fu) || (v31 = v30[23]) == 0 || ((v32 = *(*a2 + v31), v33 = v32 > 0x2A, v34 = (1 << v32) & 0x50426810004, !v33) ? (v35 = v34 == 0) : (v35 = 1), v35))
    {
      if (v29 <= *(a1 + 1144) || (v36 = (*a2 - **a2), *v36 >= 0x2Fu) && (v37 = v36[23]) != 0 && ((v38 = *(*a2 + v37), v33 = v38 > 0x2A, v39 = (1 << v38) & 0x50426810004, !v33) ? (v40 = v39 == 0) : (v40 = 1), !v40))
      {
        sub_2512DC(a4, &v41);
LABEL_4:
        sub_2512DC(a4, &v41);
      }
    }

    ++v9;
  }

  while (v9 != v10);
  v9 = v42;
LABEL_50:
  if (v9)
  {
    v43 = v9;
    operator delete(v9);
  }
}

void sub_713930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_71395C(uint64_t a1, int **a2, int **a3)
{
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (*(a2 + 38))
  {
    if (v4 >= 0x9B)
    {
      v5 = v3[77];
      if (v5)
      {
        v6 = 2;
LABEL_8:
        v7 = (*(*a2 + v5) & v6) != 0;
        goto LABEL_10;
      }
    }
  }

  else if (v4 >= 0x9B)
  {
    v5 = v3[77];
    if (v5)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_10:
  v8 = *a3;
  v9 = (*a3 - **a3);
  v10 = *v9;
  if (*(a3 + 38))
  {
    if (v10 >= 0x9B)
    {
      v11 = v9[77];
      if (v11)
      {
        return v7 ^ ((*&v8[v11] & 2) != 0) ^ 1;
      }
    }
  }

  else if (v10 >= 0x9B)
  {
    v13 = v9[77];
    if (v13)
    {
      return v7 ^ ((*&v8[v13] & 1) != 0) ^ 1;
    }
  }

  return !v7;
}

BOOL sub_713A2C(uint64_t a1, int **a2)
{
  v2 = *a2;
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (*(a2 + 38))
  {
    if (v4 >= 0x9B)
    {
      v5 = v3[77];
      if (v5)
      {
        return (*&v2[v5] & 1) != 0;
      }
    }
  }

  else if (v4 >= 0x9B)
  {
    v7 = v3[77];
    if (v7)
    {
      return (*&v2[v7] & 2) != 0;
    }
  }

  return 0;
}

BOOL sub_713A90(void *a1, int **a2)
{
  v4 = *a2;
  v5 = (*a2 - **a2);
  v6 = *v5;
  if (*(a2 + 38))
  {
    if (v6 >= 0x9B)
    {
      v7 = v5[77];
      if (v7)
      {
        v8 = *&v4[v7];
        if ((v8 & 2) != 0 && (v8 & 1) == 0)
        {
LABEL_67:
          v55 = *(a2 + 1);
          v72 = *a2;
          v73 = v55;
          v56 = a2[4];
          v74 = v56;
          v57 = a1[111];
          v58 = v56 & 0xFFFFFFFFFFFFLL;
          v59 = v56 & 0xFFFFFFFFFFFFLL | (((v56 & 0xFF000000000000) == 0) << 48);
          v60 = sub_2B51D8(v57, v56 & 0xFFFFFFFFFFFFLL);
          if (*(v57 + 7772) == 1)
          {
            v61 = sub_30C50C(v57 + 3896, v56, 0);
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

            v64 = v63 + ((v56 >> 30) & 0x3FFFC) + 4 + *(v63 + ((v56 >> 30) & 0x3FFFC) + 4);
          }

          else
          {
            v64 = 0;
          }

          *&v69 = v60;
          *(&v69 + 1) = v64;
          *&v70 = sub_31D7E8(v57, v58, 1);
          *(&v70 + 1) = v65;
          v71 = v59;
          goto LABEL_19;
        }
      }
    }
  }

  else if (v6 >= 0x9B)
  {
    v9 = v5[77];
    if (v9)
    {
      v10 = *&v4[v9];
      if ((v10 & 1) != 0 && (v10 & 2) == 0)
      {
        goto LABEL_67;
      }
    }
  }

  v11 = a1[111];
  v12 = a2[4];
  v13 = v12 & 0xFFFFFFFFFFFFLL;
  v14 = v12 & 0xFFFFFFFFFFFFLL | (((v12 & 0xFF000000000000) == 0) << 48);
  v15 = sub_2B51D8(v11, v12 & 0xFFFFFFFFFFFFLL);
  if (*(v11 + 7772) == 1)
  {
    v16 = sub_30C50C(v11 + 3896, v12, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = v18 + ((v12 >> 30) & 0x3FFFC) + 4 + *(v18 + ((v12 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v19 = 0;
  }

  *&v72 = v15;
  *(&v72 + 1) = v19;
  *&v73 = sub_31D7E8(v11, v13, 1);
  *(&v73 + 1) = v20;
  v74 = v14;
  v21 = *(a2 + 1);
  v69 = *a2;
  v70 = v21;
  v71 = a2[4];
LABEL_19:
  sub_713F64(a1, &v72, 1, a1 + 168, 1, &v66);
  v22 = v66;
  if (v66 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_45;
  }

  v23 = v67;
  v24 = v68;
  sub_713F64(a1, &v69, 0, a1 + 168, 1, &v66);
  if (v66 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_45;
  }

  v25 = (v23 - *v23);
  if (*v25 >= 0x2Fu && (v26 = v25[23]) != 0)
  {
    v27 = *(v23 + v26);
    v28 = v27 > 0x2F;
    v29 = 0xE2E040048000uLL >> v27;
    if (v28)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29;
    }

    v31 = v68;
    v32 = (v67 - *v67);
    if (*v32 < 0x2Fu)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v30 = 0;
    v31 = v68;
    v32 = (v67 - *v67);
    if (*v32 < 0x2Fu)
    {
      goto LABEL_36;
    }
  }

  v33 = v32[23];
  if (v33)
  {
    v34 = *(v67 + v33);
    v28 = v34 > 0x2F;
    v35 = (1 << v34) & 0xE2E040048000;
    v36 = v28 || v35 == 0;
    if (!v36)
    {
      if ((v30 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_37;
    }
  }

LABEL_36:
  if (v30)
  {
    goto LABEL_45;
  }

LABEL_37:
  v37 = (v72 - *v72);
  if (*v37 >= 9u && (v38 = v37[4]) != 0)
  {
    v39 = *(v72 + v38);
  }

  else
  {
    v39 = 0;
  }

  v36 = ((v24 | v31) & 1) == 0;
  v40 = 169;
  if (!v36)
  {
    v40 = 168;
  }

  if (v66 + v22 + v39 < a1[v40])
  {
    return 1;
  }

LABEL_45:
  sub_713F64(a1, &v72, 1, a1 + 170, 0, &v66);
  v42 = v66;
  if (v66 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v43 = v67;
  sub_713F64(a1, &v69, 0, a1 + 170, 0, &v66);
  if (v66 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v44 = (v43 - *v43);
  if (*v44 < 0x2Fu)
  {
    LOBYTE(v45) = 0;
    v47 = (v67 - *v67);
    if (*v47 < 0x2Fu)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v45 = v44[23];
    if (v45)
    {
      v46 = *(v43 + v45);
      v28 = v46 > 0x2F;
      v45 = 0xE2E040048000uLL >> v46;
      if (v28)
      {
        LOBYTE(v45) = 0;
      }
    }

    v47 = (v67 - *v67);
    if (*v47 < 0x2Fu)
    {
      goto LABEL_61;
    }
  }

  v48 = v47[23];
  if (v48)
  {
    v49 = *(v67 + v48);
    v28 = v49 > 0x2F;
    v50 = (1 << v49) & 0xE2E040048000;
    if (!v28 && v50 != 0)
    {
      if (v45)
      {
        goto LABEL_62;
      }

      return 0;
    }
  }

LABEL_61:
  if (v45)
  {
    return 0;
  }

LABEL_62:
  v52 = (v72 - *v72);
  if (*v52 >= 9u && (v53 = v52[4]) != 0)
  {
    v54 = *(v72 + v53);
  }

  else
  {
    v54 = 0;
  }

  return v66 + v42 + v54 < a1[170];
}

void sub_713F64(uint64_t a1@<X0>, int **a2@<X1>, int a3@<W2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v8 = 0;
  *(a1 + 856) = *(a1 + 848);
  *(a1 + 832) = *(a1 + 824);
  *(a1 + 872) = 0;
  *(a1 + 776) = *(a1 + 768);
  do
  {
    v10 = a1 + v8;
    if (*(a1 + v8 + 16))
    {
      v11 = *(v10 + 24);
      if (v11 >= 0x80)
      {
        v9 = (a1 + v8);
        operator delete(*(a1 + v8));
        v9[5] = 0;
        *v9 = &unk_2290750;
        v9[1] = 0;
        v9[2] = 0;
        v9[3] = 0;
      }

      else if (v11)
      {
        *(v10 + 16) = 0;
        memset(*(a1 + v8), 128, v11 + 8);
        *(*(a1 + v8) + v11) = -1;
        v12 = *(v10 + 24);
        if (v12 == 7)
        {
          v13 = 6;
        }

        else
        {
          v13 = v12 - (v12 >> 3);
        }

        *(a1 + v8 + 40) = v13 - *(v10 + 16);
      }
    }

    v8 += 48;
  }

  while (v8 != 768);
  *(a1 + 800) = *(a1 + 792);
  *(a1 + 816) = 0;
  v14 = a2[4];
  LODWORD(v165[0]) = v14;
  BYTE6(v165[0]) = BYTE6(v14);
  WORD2(v165[0]) = WORD2(v14);
  v15 = (*a2 - **a2);
  v17 = *v15 >= 0x2Fu && (v16 = v15[23]) != 0 && (*(*a2 + v16) & 0xF7) == 34;
  *v173 = 0;
  v18 = *(a2 + 1);
  *&v173[8] = *a2;
  *&v173[24] = v18;
  v174 = a2[4];
  v175 = v17;
  sub_712D7C(a1, v165, v173);
  v170 = 0;
  v171 = 0;
  v172 = 0;
  __p = 0;
  v168 = 0;
  v169 = 0;
  if (*(a1 + 872))
  {
    v19 = 0;
    *&v156[8] = 0;
    v20 = a3;
    *v156 = a3 ^ 1u;
    while (1)
    {
      v21 = *(a1 + 824);
      v22 = *(a1 + 768) + (*v21 << 6);
      v23 = *(v22 + 16);
      v24 = *(v22 + 32);
      v166 = *(v22 + 48);
      v165[0] = v23;
      v165[1] = v24;
      v160 = *(v22 + 8);
      v157 = *(v22 + 56);
      sub_DD38(a1 + 792, v21);
      v25 = *(a1 + 824);
      *(*(a1 + 848) + 4 * *v25) = -1;
      v26 = *(a1 + 872) - 1;
      *(a1 + 872) = v26;
      if (v26)
      {
        v27 = &v25[4 * v26];
        *v25 = *v27;
        *(v25 + 1) = *(v27 + 1);
        v28 = *(a1 + 824);
        *(*(a1 + 848) + 4 * *v28) = 0;
        v29 = *(a1 + 872);
        if (v29 >= 2)
        {
          v30 = 0;
          v31 = 0;
          v32 = 1;
          do
          {
            v33 = v30 + 5;
            if (v33 >= v29)
            {
              v34 = v29;
            }

            else
            {
              v34 = v33;
            }

            if (v33 <= v32)
            {
              break;
            }

            v35 = v31;
            v36 = *&v28[4 * v31 + 2];
            v37 = &v28[4 * v32 + 2];
            v31 = -1;
            v38 = v36;
            do
            {
              v40 = *v37;
              v37 += 4;
              v39 = v40;
              if (v40 < v38)
              {
                v38 = v39;
                v31 = v32;
              }

              ++v32;
            }

            while (v32 < v34);
            if (v31 >= v29)
            {
              break;
            }

            v41 = 4 * v31;
            v42 = &v28[v41];
            v43 = 16 * v35;
            v44 = v28 + v43;
            v45 = *v42;
            *v42 = *v44;
            *v44 = v45;
            v46 = *(v42 + 1);
            *(v42 + 1) = v36;
            *(v44 + 1) = v46;
            v28 = *(a1 + 824);
            v47 = v28[v41];
            v48 = *(a1 + 848);
            v49 = *(v28 + v43);
            LODWORD(v43) = *(v48 + 4 * v47);
            *(v48 + 4 * v47) = *(v48 + 4 * v49);
            *(v48 + 4 * v49) = v43;
            v30 = 4 * v31;
            v32 = (4 * v31) | 1;
            v29 = *(a1 + 872);
          }

          while (v32 < v29);
        }
      }

      *(a1 + 832) -= 16;
      sub_31B8F4(*(a1 + 888), v165, &v170);
      v50 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v171 - v170) >> 3));
      *v173 = v165;
      *&v173[8] = a1;
      if (v171 == v170)
      {
        v51 = 0;
      }

      else
      {
        v51 = v50;
      }

      sub_71B06C(v170, v171, v173, v51, 1);
      if (!v20)
      {
        v55 = -1;
        goto LABEL_46;
      }

      memset(v173, 0, 24);
      sub_71367C(a1, v165, &v170, v173, v52);
      if (*v173 != *&v173[8])
      {
        break;
      }

LABEL_42:
      v55 = -1;
      if (*v173)
      {
        goto LABEL_45;
      }

LABEL_46:
      v57 = v170;
      v56 = v171;
      if (v170 != v171)
      {
        v161 = 0;
        v158 = v19;
        v163 = v171;
        while (1)
        {
          v63 = (*v57 - **v57);
          if (*v63 >= 0x2Fu)
          {
            v58 = v63[23];
            if (v58)
            {
              v59 = *(*v57 + v58);
              v60 = v59 > 0x36;
              v61 = (1 << v59) & 0x44000000000008;
              if (!v60 && v61 != 0)
              {
                goto LABEL_53;
              }
            }
          }

          if (v20)
          {
            if (v55 == -1)
            {
              goto LABEL_121;
            }

            v64 = *(sub_6B8D68(&v170, v55) + 32);
            v65 = v57[4];
            if (v64 != v65 || WORD2(v64) != WORD2(v65))
            {
              goto LABEL_121;
            }

            v66 = BYTE6(v64) == BYTE6(v65);
LABEL_116:
            v95 = v66;
            v96 = *&v165[0];
            v97 = **&v165[0];
            v98 = *&v165[0] - v97;
            v99 = *(*&v165[0] - v97);
            if (!BYTE6(v166))
            {
              goto LABEL_109;
            }

            goto LABEL_122;
          }

          v67 = v19;
          v68 = *(a1 + 888);
          v69 = v57[4];
          v70 = (v69 & 0xFF000000000000) == 0;
          v71 = v69 & 0xFFFFFFFFFFFFLL;
          v72 = sub_2B51D8(v68, v69 & 0xFFFFFFFFFFFFLL);
          if (*(v68 + 7772) == 1)
          {
            v73 = sub_30C50C(v68 + 3896, v69, 0);
            v74 = &v73[-*v73];
            if (*v74 < 5u)
            {
              v75 = 0;
            }

            else
            {
              v75 = *(v74 + 2);
              if (v75)
              {
                v75 += &v73[*&v73[v75]];
              }
            }

            v76 = v75 + ((v69 >> 30) & 0x3FFFC) + 4 + *(v75 + ((v69 >> 30) & 0x3FFFC) + 4);
            if (*(v68 + 7773) != 1)
            {
              goto LABEL_95;
            }
          }

          else
          {
            v76 = 0;
            if (*(v68 + 7773) != 1)
            {
              goto LABEL_95;
            }
          }

          v77 = sub_31D994(v68 + 3896, v69, 1);
          if (!v77)
          {
            goto LABEL_95;
          }

          v78 = &v77[-*v77];
          if (*v78 < 0xBu)
          {
            goto LABEL_95;
          }

          v79 = *(v78 + 5);
          if (!*(v78 + 5))
          {
            goto LABEL_96;
          }

          v80 = &v79[v77 + *&v79[v77]];
          v19 = v67;
          if (*v80 <= HIDWORD(v71) || (v81 = &v80[8 * HIDWORD(v71)], v84 = *(v81 + 1), v83 = v81 + 4, (v82 = v84) == 0))
          {
            v79 = 0;
            v88 = 0;
            goto LABEL_97;
          }

          v85 = sub_2B3284(v68 + 3896, v82, 1);
          if (!v85)
          {
LABEL_95:
            v79 = 0;
LABEL_96:
            v88 = 0;
            v19 = v67;
            goto LABEL_97;
          }

          v86 = &v85[-*v85];
          v87 = *v86;
          if ((*(v83 + 6) & 2) != 0)
          {
            if (v87 < 5)
            {
              goto LABEL_95;
            }

            v88 = *(v86 + 2);
            v19 = v67;
            if (*(v86 + 2))
            {
              v88 = (v88 + v85 + *(v88 + v85));
            }

            if (v87 < 7)
            {
              goto LABEL_86;
            }

            v89 = *(v86 + 3);
            if (!v89)
            {
              goto LABEL_86;
            }
          }

          else if (v87 < 7)
          {
            if (v87 < 5)
            {
              goto LABEL_95;
            }

            v88 = 0;
            v19 = v67;
            v89 = *(v86 + 2);
            if (!v89)
            {
LABEL_86:
              v79 = 0;
              if (!v88)
              {
                goto LABEL_93;
              }

              goto LABEL_91;
            }
          }

          else
          {
            v88 = *(v86 + 3);
            if (*(v86 + 3))
            {
              v88 = (v88 + v85 + *(v88 + v85));
            }

            v19 = v67;
            v89 = *(v86 + 2);
            if (!v89)
            {
              goto LABEL_86;
            }
          }

          v79 = &v85[v89 + *&v85[v89]];
          if (!v88)
          {
            goto LABEL_93;
          }

LABEL_91:
          v90 = *(v83 + 2);
          if (*v88 > v90)
          {
            v88 = (v88 + 4 * v90 + v88[v90 + 1] + 4);
LABEL_93:
            if (v79)
            {
              goto LABEL_221;
            }

            goto LABEL_97;
          }

          v88 = 0;
          if (v79)
          {
LABEL_221:
            v146 = *(v83 + 2);
            if (*v79 <= v146)
            {
              v79 = 0;
            }

            else
            {
              v79 += 4 * v146 + *&v79[4 * v146 + 4] + 4;
            }
          }

LABEL_97:
          *v173 = v72;
          *&v173[8] = v76;
          *&v173[16] = v88;
          *&v173[24] = v79;
          *&v173[32] = v71 | (v70 << 48);
          sub_31B8F4(*(a1 + 888), v173, &__p);
          v91 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v168 - __p) >> 3));
          v176 = v173;
          v177 = a1;
          if (v168 == __p)
          {
            v92 = 0;
          }

          else
          {
            v92 = v91;
          }

          sub_71B06C(__p, v168, &v176, v92, 1);
          v176 = 0;
          v177 = 0;
          v178 = 0;
          sub_71367C(a1, v173, &__p, &v176, v93);
          v20 = a3;
          v56 = v163;
          if (v176 != v177)
          {
            v94 = v176;
            while (*v94 != -1)
            {
              if (++v94 == v177)
              {
                goto LABEL_112;
              }
            }

            if (v94 != v177)
            {
              goto LABEL_106;
            }

LABEL_112:
            v55 = *v176;
            v177 = v176;
            operator delete(v176);
            if (v55 == -1 || (v101 = *(sub_6B8D68(&__p, v55) + 32), v101 != v166) || WORD2(v101) != WORD2(v166))
            {
LABEL_121:
              v95 = 0;
              v96 = *&v165[0];
              v97 = **&v165[0];
              v98 = *&v165[0] - v97;
              v99 = *(*&v165[0] - v97);
              if (!BYTE6(v166))
              {
                goto LABEL_109;
              }

              goto LABEL_122;
            }

            v66 = ((v101 & 0xFF000000000000) == 0) == BYTE6(v166);
            goto LABEL_116;
          }

LABEL_106:
          if (v176)
          {
            v177 = v176;
            operator delete(v176);
          }

          v95 = 0;
          v55 = -1;
          v96 = *&v165[0];
          v97 = **&v165[0];
          v98 = *&v165[0] - v97;
          v99 = *(*&v165[0] - v97);
          if (!BYTE6(v166))
          {
LABEL_109:
            if (v99 >= 0x4B)
            {
              v100 = *(v98 + 74);
              if (v100)
              {
                goto LABEL_124;
              }
            }

            goto LABEL_128;
          }

LABEL_122:
          if (v99 >= 0x49)
          {
            v100 = *(v98 + 72);
            if (v100)
            {
LABEL_124:
              v102 = *(v96 + v100);
              v103 = *(v57 + 38);
              v104 = *v57;
              v105 = **v57;
              v106 = (*v57 - v105);
              v107 = *v106;
              if (*(v57 + 38))
              {
                goto LABEL_129;
              }

              goto LABEL_125;
            }
          }

LABEL_128:
          v102 = -1;
          v103 = *(v57 + 38);
          v104 = *v57;
          v105 = **v57;
          v106 = (*v57 - v105);
          v107 = *v106;
          if (*(v57 + 38))
          {
LABEL_129:
            if (v107 >= 0x4B)
            {
              v108 = v106[37];
              if (v106[37])
              {
                goto LABEL_131;
              }
            }

            goto LABEL_132;
          }

LABEL_125:
          if (v107 >= 0x49)
          {
            v108 = v106[36];
            if (v106[36])
            {
LABEL_131:
              v109 = *(v104 + v108);
              goto LABEL_133;
            }
          }

LABEL_132:
          v109 = 0xFFFF;
LABEL_133:
          v110 = -v105;
          v111 = v102 + 18000;
          v112 = v102 - 18000;
          if ((v111 >> 5) < 0x465u)
          {
            v112 = v111;
          }

          v113 = v109 - v112;
          if (v113 > 18000)
          {
            v113 -= 36000;
          }

          if (v113 < -17999)
          {
            v113 += 36000;
          }

          v114 = v113 / 100.0;
          if (a5)
          {
            if (v107 < 0x2F)
            {
              goto LABEL_178;
            }

            if (v106[23] && *(v104 + v106[23]) == 23)
            {
              if (v95)
              {
                goto LABEL_178;
              }
            }

            else if (v107 < 0x9B || !v106[77] || v95 & 1 | ((*(v104 + v106[77]) & 4) == 0))
            {
              goto LABEL_178;
            }
          }

          else
          {
            if (v103)
            {
              if (v107 < 0x9B)
              {
                goto LABEL_178;
              }

              v115 = v106[77];
              if (!v106[77])
              {
                goto LABEL_178;
              }

              v116 = 2;
              v117 = 1;
            }

            else
            {
              if (v107 < 0x9B)
              {
                goto LABEL_178;
              }

              v115 = v106[77];
              if (!v106[77])
              {
                goto LABEL_178;
              }

              v116 = 1;
              v117 = 2;
            }

            if (((*(v104 + v115) & v116) != 0) == ((*(v104 + v115) & v117) != 0))
            {
              goto LABEL_178;
            }

            LOWORD(v53) = *(a1 + 1368);
            v53 = vmovl_s16(*&v53).i32[0];
            if (v95 & 1 | (fabs(v114) <= v53))
            {
              goto LABEL_178;
            }
          }

          if (v107 < 0x9B)
          {
            LODWORD(v118) = 0;
          }

          else
          {
            v118 = v106[77];
            if (v106[77])
            {
              v119 = *(v104 + v118);
              v118 = (v119 >> 15) & 1;
              v120 = 1;
              if (v103)
              {
                v120 = 2;
              }

              v121 = (v119 & v120) != 0;
              goto LABEL_165;
            }
          }

          v121 = 0;
LABEL_165:
          if (v118 != v121)
          {
            v122 = v114 < 0.0;
          }

          else
          {
            v122 = v114 > 0.0;
          }

          if (v122)
          {
            *v173 = sub_3116D0(v165);
            if (!sub_420B0C((a1 + 896), v173))
            {
              if (v157)
              {
                v150 = 1;
                v151 = a6;
              }

              else
              {
                v152 = (*v57 - **v57);
                v151 = a6;
                v150 = *v152 >= 0x2Fu && (v153 = v152[23]) != 0 && (*(*v57 + v153) & 0xF7) == 34;
              }

              *v151 = v160;
              v154 = *(v57 + 1);
              *(v151 + 8) = *v57;
              *(v151 + 24) = v154;
              *(v151 + 40) = v57[4];
              *(v151 + 48) = v150;
              v149 = __p;
              if (__p)
              {
                goto LABEL_231;
              }

              goto LABEL_232;
            }

            v96 = *&v165[0];
          }

          v97 = *v96;
          if (*(v96 - v97) >= 0x2Fu && *(v96 - v97 + 46))
          {
            v123 = *(v96 + *(v96 - v97 + 46));
            v60 = v123 > 0x2A;
            v124 = 0x2FBD97EFFFBuLL >> v123;
            if (v60)
            {
              LOBYTE(v124) = 1;
            }
          }

          else
          {
            LOBYTE(v124) = 1;
          }

          v161 |= v124 | a3 ^ 1;
          v104 = *v57;
          v110 = -**v57;
LABEL_178:
          v125 = (v104 + v110);
          v126 = *v125;
          if (v126 < 9)
          {
            v127 = 0;
            v128 = *(v57 + 38);
            v129 = v126 >= 0x9B;
            if (v20)
            {
              goto LABEL_182;
            }
          }

          else
          {
            v127 = v125[4];
            if (v125[4])
            {
              v127 = *(v104 + v127);
            }

            v128 = *(v57 + 38);
            v129 = v126 >= 0x9B;
            if (v20)
            {
LABEL_182:
              if (!v128)
              {
                goto LABEL_190;
              }

              goto LABEL_183;
            }
          }

          if (v128)
          {
LABEL_190:
            if (!v129 || !v125[77] || (*(v104 + v125[77]) & 1) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_194;
          }

LABEL_183:
          if (!v129 || !v125[77] || (*(v104 + v125[77]) & 2) == 0)
          {
            goto LABEL_53;
          }

LABEL_194:
          v130 = v127 + v160;
          if (v127 + v160 > *a4)
          {
            goto LABEL_53;
          }

          v131 = (v96 - v97);
          if (*v131 < 0x2Fu || (v132 = v131[23]) == 0 || (v133 = *(v96 + v132), v133 > 0x2A) || ((1 << v133) & 0x50426810004) == 0)
          {
            if (!v95)
            {
              goto LABEL_53;
            }
          }

          if (v157)
          {
            v134 = 1;
            v135 = v158;
            if (v158 >= *&v156[4])
            {
              goto LABEL_205;
            }
          }

          else if (v125[23])
          {
            v134 = (*(v104 + v125[23]) & 0xF7) == 34;
            v135 = v158;
            if (v158 >= *&v156[4])
            {
              goto LABEL_205;
            }
          }

          else
          {
            v134 = 0;
            v135 = v158;
            if (v158 >= *&v156[4])
            {
LABEL_205:
              v138 = v135 - v19;
              v139 = 0x6DB6DB6DB6DB6DB7 * ((v135 - v19) >> 3);
              v140 = v139 + 1;
              if ((v139 + 1) > 0x492492492492492)
              {
                sub_1794();
              }

              v141 = v19;
              if (0xDB6DB6DB6DB6DB6ELL * ((*&v156[4] - v19) >> 3) > v140)
              {
                v140 = 0xDB6DB6DB6DB6DB6ELL * ((*&v156[4] - v19) >> 3);
              }

              if ((0x6DB6DB6DB6DB6DB7 * ((*&v156[4] - v19) >> 3)) >= 0x249249249249249)
              {
                v142 = 0x492492492492492;
              }

              else
              {
                v142 = v140;
              }

              if (v142)
              {
                if (v142 <= 0x492492492492492)
                {
                  operator new();
                }

                sub_1808();
              }

              v143 = 56 * v139;
              *&v156[4] = 0;
              *v143 = v130;
              v144 = *v57;
              v145 = *(v57 + 1);
              *(v143 + 40) = v57[4];
              *(v143 + 24) = v145;
              *(v143 + 8) = v144;
              *(v143 + 48) = v134;
              v158 = 56 * v139 + 56;
              v19 = (56 * v139 + 56 * (v138 / -56));
              memcpy(v19, v141, v138);
              if (v141)
              {
                operator delete(v141);
              }

              v20 = a3;
              goto LABEL_219;
            }
          }

          *v173 = *v57;
          *&v173[16] = *(v57 + 1);
          *&v173[32] = v57[4];
          *v135 = v130;
          v136 = *&v173[32];
          v137 = *&v173[16];
          *(v135 + 8) = *v173;
          *(v135 + 24) = v137;
          *(v135 + 40) = v136;
          *(v135 + 48) = v134;
          v158 = v135 + 56;
LABEL_219:
          v56 = v163;
LABEL_53:
          v57 += 5;
          if (v57 == v56)
          {
            if ((v161 & 1) == 0 && v19 != v158)
            {
              v147 = v19;
              do
              {
                v148 = *(v147 + 5);
                *v173 = v148;
                v173[6] = BYTE6(v148);
                *&v173[4] = WORD2(v148);
                sub_712FC8(a1, v173, v147);
                v147 = (v147 + 56);
              }

              while (v147 != v158);
            }

            break;
          }
        }
      }

      if (!*(a1 + 872))
      {
        goto LABEL_230;
      }
    }

    v54 = *v173;
    while (*v54 != -1)
    {
      if (++v54 == *&v173[8])
      {
        goto LABEL_44;
      }
    }

    if (v54 != *&v173[8])
    {
      goto LABEL_42;
    }

LABEL_44:
    v55 = **v173;
LABEL_45:
    *&v173[8] = *v173;
    operator delete(*v173);
    goto LABEL_46;
  }

  v19 = 0;
LABEL_230:
  *a6 = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 8) = 0u;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0x1000000000000;
  *(a6 + 48) = 0;
  v149 = __p;
  if (__p)
  {
LABEL_231:
    v168 = v149;
    operator delete(v149);
  }

LABEL_232:
  if (v19)
  {
    operator delete(v19);
  }

  if (v170)
  {
    v171 = v170;
    operator delete(v170);
  }
}

void sub_714DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
    if (!v32)
    {
LABEL_3:
      v34 = a28;
      if (!a28)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  operator delete(v32);
  v34 = a28;
  if (!a28)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v34);
  _Unwind_Resume(exception_object);
}

BOOL sub_714EA0(uint64_t a1, char **a2, int **a3)
{
  v3 = *a3;
  v4 = (*a3 - **a3);
  v5 = *v4;
  if (v5 >= 0x2F && v4[23])
  {
    v6 = *(v3 + v4[23]);
    v7 = v6 > 0x36;
    v8 = (1 << v6) & 0x44000000000008;
    if (!v7 && v8 != 0)
    {
      return 0;
    }
  }

  v10 = *a2;
  v11 = &(*a2)[-**a2];
  v12 = *v11;
  if (v12 < 0x2F)
  {
    return 0;
  }

  if (!*(v11 + 23) || *(v10 + *(v11 + 23)) != 23)
  {
    if (v12 < 0x9B)
    {
      return 0;
    }

    v13 = *(v11 + 77);
    if (!v13 || (*(v10 + v13) & 4) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 1545) != 1)
  {
    return 0;
  }

  if (v5 >= 9 && (v14 = v4[4]) != 0)
  {
    if (*(v3 + v14) >= *(a1 + 1560))
    {
      return 0;
    }
  }

  else if (*(a1 + 1560) <= 0)
  {
    return 0;
  }

  return sub_713A90(a1, a3);
}

BOOL sub_714F74(uint64_t a1, unint64_t **a2, char a3)
{
  v30 = a3;
  v3 = *a2;
  if (*a2 == a2[1])
  {
    return 0;
  }

  v29 = a1;
  v6 = *(a1 + 888);
  v7 = *v3;
  v8 = sub_2B51D8(v6, *v3 & 0xFFFFFFFFFFFFLL);
  if (*(v6 + 7772) == 1)
  {
    v9 = sub_30C50C(v6 + 3896, v7, 0);
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

    v13 = v11 + ((v7 >> 30) & 0x3FFFC) + 4 + *(v11 + ((v7 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v13 = 0;
  }

  v28[0] = v8;
  v28[1] = v13;
  v28[2] = sub_31D7E8(v6, v7 & 0xFFFFFFFFFFFFLL, 1);
  v28[3] = v14;
  v28[4] = v7;
  v15 = *(a1 + 888);
  v16 = *(a2[1] - 1);
  v17 = sub_2B51D8(v15, v16 & 0xFFFFFFFFFFFFLL);
  if (*(v15 + 7772) == 1)
  {
    v18 = sub_30C50C(v15 + 3896, v16, 0);
    v19 = &v18[-*v18];
    if (*v19 < 5u)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(v19 + 2);
      if (v20)
      {
        v20 += &v18[*&v18[v20]];
      }
    }

    v21 = v20 + ((v16 >> 30) & 0x3FFFC) + 4 + *(v20 + ((v16 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v21 = 0;
  }

  v27[0] = v17;
  v27[1] = v21;
  v27[2] = sub_31D7E8(v15, v16 & 0xFFFFFFFFFFFFLL, 1);
  v27[3] = v22;
  v27[4] = v16;
  v23 = *a2;
  v24 = a2[1];
  v31[0] = a1;
  v31[1] = &v30;
  v31[2] = v28;
  v31[3] = v27;
  v31[4] = &v29;
  if (v23 != v24)
  {
    v25 = v23 + 1;
    while (v25 != v24)
    {
      v26 = sub_71FBB8(v31, *(v25 - 1), *v25);
      ++v25;
      if (v26)
      {
        v24 = v25 - 2;
        break;
      }
    }

    v23 = v24;
    v24 = a2[1];
  }

  return v23 != v24;
}

unint64_t sub_715180(uint64_t a1, void *a2, uint64_t a3)
{
  sub_6CC330(v26, *(a1 + 880), a2, a1 + 2168);
  if (a3 == -1 || a2[1266] == a2[1267])
  {
    goto LABEL_17;
  }

  v5 = sub_4D1F50(a2, a3);
  v6 = sub_4D1F50(a2, a3 + 1);
  v7 = (*v5 - **v5);
  if (*v7 >= 0x2Fu)
  {
    v8 = v7[23];
    if (v8)
    {
      v9 = *(*v5 + v8);
      if (v9 <= 0x36)
      {
        if (((1 << v9) & 0x4810000) != 0)
        {
          goto LABEL_12;
        }

        if (((1 << v9) & 0x44000000000008) != 0)
        {
          goto LABEL_17;
        }
      }
    }
  }

  v10 = (*v6 - **v6);
  if (*v10 >= 0x2Fu)
  {
    v11 = v10[23];
    if (v11)
    {
      v12 = *(*v6 + v11);
      if (v12 <= 0x1A)
      {
        v13 = 0x4810000u >> v12;
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  LOBYTE(v13) = 0;
LABEL_13:
  v14 = sub_6CC334(v26, a3, 0, v13 & 1);
  v16 = v15;
  if (v14 >= 0xFFFFFFFF00000000 && v14 == 0xFFFFFFFFLL || (v17 = sub_6CC334(v26, a3, 1, v13 & 1), v17 >= 0xFFFFFFFF00000000) && v17 == 0xFFFFFFFFLL)
  {
LABEL_17:
    v19 = 0;
    v20 = 0;
    v21 = __p;
    if (!__p)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v23 = v16 / 100.0;
  if (v23 >= 180.0)
  {
    do
    {
      v23 = v23 + -360.0;
    }

    while (v23 >= 180.0);
      ;
    }
  }

  v24 = v18 / 100.0;
  if (v24 >= 180.0)
  {
    do
    {
      v24 = v24 + -360.0;
    }

    while (v24 >= 180.0);
      ;
    }
  }

    ;
  }

    ;
  }

  v20 = *&i & 0xFFFFFFFFFFFFFF00;
  v19 = LOBYTE(i);
  v21 = __p;
  if (__p)
  {
LABEL_18:
    v35 = v21;
    operator delete(v21);
  }

LABEL_19:
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  sub_5135D0(v27);
  return v20 | v19;
}

void sub_71555C(uint64_t a1, int **a2, int ***a3, uint64_t a4, double a5)
{
  *(a4 + 8) = *a4;
  if (*a3 == a3[1])
  {
    return;
  }

  v8 = a1;
  if (sub_7168AC(a1, a2, a3, a5))
  {
    v10 = *(a4 + 8);
    v9 = *(a4 + 16);
    if (v10 < v9)
    {
      *v10 = 0;
      v11 = (v10 + 1);
LABEL_30:
      *(a4 + 8) = v11;
      return;
    }

    v22 = *a4;
    v23 = v10 - *a4;
    v24 = v23 >> 3;
    v25 = (v23 >> 3) + 1;
    if (!(v25 >> 61))
    {
      v26 = v9 - v22;
      if (v26 >> 2 > v25)
      {
        v25 = v26 >> 2;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        v27 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        if (!(v27 >> 61))
        {
          operator new();
        }

        goto LABEL_349;
      }

      *(8 * v24) = 0;
      v11 = 8 * v24 + 8;
      memcpy(0, v22, v23);
      *a4 = 0;
      *(a4 + 8) = v11;
      *(a4 + 16) = 0;
      if (!v22)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    goto LABEL_347;
  }

  sub_7126C8(v8, a2, a3, a4);
  if (*a4 != *(a4 + 8))
  {
    return;
  }

  v201[0] = v8;
  v201[1] = a2;
  v12 = *a3;
  v13 = a3[1];
  v202 = v8;
  v203 = a2;
  v204 = v201;
  if (v12 == v13)
  {
    goto LABEL_11;
  }

  while (!sub_720634(&v202, v12))
  {
    v12 += 5;
    if (v12 == v13)
    {
      v12 = v13;
      break;
    }
  }

  v14 = v12;
  v12 = *a3;
  v13 = a3[1];
  if (v14 == v13)
  {
LABEL_11:
    v14 = sub_7208D4(v12, v13, v8, a2);
    v12 = *a3;
    v13 = a3[1];
  }

  if (v14 == v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  v197 = v15;
  v16 = v15[4];
  v17 = v16 & 0xFF000000000000;
  v18 = sub_2B51D8(*(v8 + 888), v16 & 0xFFFFFFFFFFFFLL);
  v19 = (v18 - *v18);
  v20 = *v19;
  if (v17)
  {
    if (v20 < 0x29)
    {
      goto LABEL_80;
    }

    v21 = v19[20];
    if (!v21)
    {
      goto LABEL_80;
    }

    goto LABEL_35;
  }

  if (v20 >= 0x27)
  {
    v21 = v19[19];
    if (v21)
    {
LABEL_35:
      if (*(v18 + v21 + *(v18 + v21)) != 1)
      {
        goto LABEL_80;
      }

      v28 = a3[1] - *a3;
      if (!v28)
      {
        goto LABEL_80;
      }

      v29 = 0;
      v30 = 0;
      v31 = 0xCCCCCCCCCCCCCCCDLL * (v28 >> 3);
      do
      {
        v32 = sub_605E3C(a3, v30);
        v33 = *(v32 + 32);
        v34 = v197[4];
        v37 = v33 == v34;
        v35 = HIDWORD(v33) & 0xFFFFFF;
        v36 = HIDWORD(v34) & 0xFFFFFF;
        v37 = v37 && v35 == v36;
        if (v37)
        {
          goto LABEL_38;
        }

        v38 = v32;
        if (fabs(sub_70E2E0(v8, a2, v32)) > *(v8 + 1000))
        {
          break;
        }

        v39 = (*a2 - **a2);
        v40 = *v39;
        if (*(a2 + 38))
        {
          if (v40 >= 0x9B)
          {
            v41 = v39[77];
            if (v41)
            {
              v42 = 2;
LABEL_51:
              v43 = (*(*a2 + v41) & v42) != 0;
              goto LABEL_53;
            }
          }
        }

        else if (v40 >= 0x9B)
        {
          v41 = v39[77];
          if (v41)
          {
            v42 = 1;
            goto LABEL_51;
          }
        }

        v43 = 0;
LABEL_53:
        v44 = *v38;
        v45 = (*v38 - **v38);
        v46 = *v45;
        if (!*(v38 + 38))
        {
          if (v46 >= 0x9B)
          {
            v48 = v45[77];
            if (v48)
            {
              LOBYTE(v43) = v43 ^ ((*&v44[v48] & 1) != 0);
            }
          }

LABEL_61:
          if (v43)
          {
            goto LABEL_38;
          }

          goto LABEL_62;
        }

        if (v46 < 0x9B)
        {
          goto LABEL_61;
        }

        v47 = v45[77];
        if (!v47)
        {
          goto LABEL_61;
        }

        if ((v43 ^ ((*&v44[v47] & 2) != 0)))
        {
          goto LABEL_38;
        }

LABEL_62:
        v49 = v197[4];
        v50 = v49 & 0xFF000000000000;
        v51 = sub_2B51D8(*(v8 + 888), v49 & 0xFFFFFFFFFFFFLL);
        v52 = (v51 - *v51);
        v53 = *v52;
        if (v50)
        {
          if (v53 >= 0x29)
          {
            v54 = v52[20];
            if (v54)
            {
              goto LABEL_68;
            }
          }
        }

        else if (v53 >= 0x27)
        {
          v54 = v52[19];
          if (v54)
          {
LABEL_68:
            v55 = *(v51 + v54 + *(v51 + v54));
            goto LABEL_70;
          }
        }

        v55 = 0;
LABEL_70:
        v56 = v38[4];
        v57 = v56 & 0xFF000000000000;
        v58 = sub_2B51D8(*(v8 + 888), v56 & 0xFFFFFFFFFFFFLL);
        v59 = (v58 - *v58);
        v60 = *v59;
        if (v57)
        {
          if (v60 >= 0x29)
          {
            v61 = v59[20];
            if (v61)
            {
              goto LABEL_76;
            }
          }
        }

        else if (v60 >= 0x27)
        {
          v61 = v59[19];
          if (v61)
          {
LABEL_76:
            if (v55)
            {
              v62 = *(v58 + v61 + *(v58 + v61));
              if (v62)
              {
                if (v62 - v55 >= *(v8 + 1168))
                {
                  v197 = &(*a3)[v29];
                }
              }
            }
          }
        }

LABEL_38:
        ++v30;
        v29 += 5;
      }

      while (v31 != v30);
    }
  }

LABEL_80:
  v63 = *a3;
  v64 = a3[1] - *a3;
  if (v64)
  {
    v65 = 0;
    v66 = 0xCCCCCCCCCCCCCCCDLL * (v64 >> 3);
    do
    {
      sub_605E3C(a3, v65++);
    }

    while (v66 != v65);
    v63 = *a3;
  }

  v200 = 0xCCCCCCCCCCCCCCCDLL * (v197 - v63);
  v67 = sub_70E2E0(v8, a2, v197);
  v68 = *v197;
  v69 = (*v197 - **v197);
  v70 = *v69;
  if (v70 < 0x2F)
  {
    goto LABEL_94;
  }

  if (!v69[23] || (v71 = *(v68 + v69[23]), v71 > 0x2C))
  {
LABEL_91:
    if (v70 >= 0x43 && v69[33])
    {
      v72 = *(v68 + v69[33]);
      goto LABEL_95;
    }

LABEL_94:
    v72 = 0;
    goto LABEL_95;
  }

  if (((1 << v71) & 0x180000105240) == 0)
  {
    if (!*(v68 + v69[23]))
    {
      v72 = *(v8 + 1584);
      goto LABEL_95;
    }

    goto LABEL_91;
  }

  v72 = *(v8 + 1588);
LABEL_95:
  v73 = *a2;
  v74 = (*a2 - **a2);
  v75 = *v74;
  if (v75 < 0x2F)
  {
    goto LABEL_105;
  }

  if (v74[23])
  {
    v76 = *(v73 + v74[23]);
    if (v76 <= 0x2C)
    {
      if (((1 << v76) & 0x180000105240) != 0)
      {
        LODWORD(v77) = *(v8 + 1588);
        goto LABEL_106;
      }

      if (!*(v73 + v74[23]))
      {
        LODWORD(v77) = *(v8 + 1584);
        goto LABEL_106;
      }
    }
  }

  if (v75 < 0x43)
  {
LABEL_105:
    LODWORD(v77) = 0;
  }

  else
  {
    v77 = v74[33];
    if (v74[33])
    {
      LODWORD(v77) = *(v73 + v77);
    }
  }

LABEL_106:
  v78 = fabs(v67);
  if (v72 == v77)
  {
    if (v70 < 0x2F)
    {
      LOBYTE(v79) = 0;
    }

    else
    {
      v79 = v69[23];
      if (v69[23])
      {
        v80 = *(v68 + v79);
        v81 = v80 > 0x2A;
        v79 = 0x50426810004uLL >> v80;
        if (v81)
        {
          LOBYTE(v79) = 0;
        }
      }
    }

    if (v75 < 0x2F || !v74[23] || ((v82 = *(v73 + v74[23]), v81 = v82 > 0x2A, v83 = (1 << v82) & 0x50426810004, !v81) ? (v84 = v83 == 0) : (v84 = 1), v84))
    {
      if (v79)
      {
        goto LABEL_145;
      }
    }

    else if ((v79 & 1) == 0)
    {
      goto LABEL_145;
    }

    v86 = v70 >= 0x2F && (v85 = v69[23]) != 0 && *(v68 + v85) == 28;
    if (v75 >= 0x2F && v74[23])
    {
      v86 ^= *(v73 + v74[23]) == 28;
    }

    if ((v86 & 1) == 0 && sub_71395C(v8, v197, a2))
    {
      v87 = sub_312F00(v197);
      if (v87 == sub_312F00(a2))
      {
        v88 = (*v197 - **v197);
        if (*v88 >= 0x9Bu && (v89 = v88[77]) != 0)
        {
          v90 = (*(*v197 + v89 + 1) >> 4) & 1;
        }

        else
        {
          v90 = 0;
        }

        v91 = (*a2 - **a2);
        if (*v91 >= 0x9Bu && (v92 = v91[77]) != 0)
        {
          if (v90 != (*(*a2 + v92 + 1) & 0x10) >> 4)
          {
            goto LABEL_145;
          }
        }

        else if (v90)
        {
          goto LABEL_145;
        }

        if (v78 <= *(v8 + 1048) || (v93 = *a3, v94 = a3[1], v202 = v8, v203 = a2, v95 = sub_71A668(v93, v94, &v202), v78 <= *(v8 + 1016)) && ((v96 = v95, (sub_712AA4(v8, a2, v197) & 1) != 0) || v96 == 1))
        {
          sub_7125C0(a4, &v200);
          return;
        }
      }
    }
  }

LABEL_145:
  v202 = sub_311544(v197);
  if ((sub_420B0C((v8 + 896), &v202) & 1) == 0)
  {
    v199 = sub_3116D0(a2);
    if ((sub_420B0C((v8 + 896), &v199) & 1) == 0)
    {
      v98 = *a2;
      v100 = **a2;
      v101 = (*a2 - v100);
      v102 = *v101;
      if (*(a2 + 38))
      {
        if (v102 < 0x49 || (v103 = v101[36]) == 0)
        {
LABEL_156:
          v104 = -1;
LABEL_157:
          v105 = -v100;
          v106 = (*v197 - **v197);
          v107 = *v106;
          if (*(v197 + 38))
          {
            if (v107 < 0x4B || (v108 = v106[37]) == 0)
            {
LABEL_164:
              v109 = 0xFFFF;
LABEL_165:
              v110 = v104 + 18000;
              v111 = v104 - 18000;
              if ((v110 >> 5) < 0x465u)
              {
                v111 = v110;
              }

              v112 = v109 - v111;
              if (v112 > 18000)
              {
                v112 -= 36000;
              }

              if (v112 < -17999)
              {
                v112 += 36000;
              }

              v97 = v112 / 100.0;
              v99 = (v98 + v105);
              if (*v99 < 0x2Fu)
              {
                goto LABEL_178;
              }

LABEL_172:
              v113 = v99[23];
              if (v113)
              {
                v114 = *(v98 + v113);
                v81 = v114 > 0x2A;
                v115 = (1 << v114) & 0x50426810004;
                v116 = v81 || v115 == 0;
                if (!v116 && fabs(v97) <= *(v8 + 1016))
                {
                  v173 = *(a4 + 8);
                  v172 = *(a4 + 16);
                  if (v173 < v172)
                  {
                    *v173 = v200;
                    v11 = (v173 + 1);
                    goto LABEL_30;
                  }

                  v22 = *a4;
                  v190 = v173 - *a4;
                  v191 = v190 >> 3;
                  v192 = (v190 >> 3) + 1;
                  if (!(v192 >> 61))
                  {
                    v193 = v172 - v22;
                    if (v193 >> 2 > v192)
                    {
                      v192 = v193 >> 2;
                    }

                    if (v193 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v194 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v194 = v192;
                    }

                    if (v194)
                    {
                      if (!(v194 >> 61))
                      {
                        operator new();
                      }

LABEL_349:
                      sub_1808();
                    }

                    *(8 * v191) = v200;
                    v11 = 8 * v191 + 8;
                    memcpy(0, v22, v190);
                    *a4 = 0;
                    *(a4 + 8) = v11;
                    *(a4 + 16) = 0;
                    if (!v22)
                    {
                      goto LABEL_30;
                    }

LABEL_29:
                    operator delete(v22);
                    goto LABEL_30;
                  }

LABEL_347:
                  sub_1794();
                }
              }

              goto LABEL_178;
            }
          }

          else
          {
            if (v107 < 0x49)
            {
              goto LABEL_164;
            }

            v108 = v106[36];
            if (!v108)
            {
              goto LABEL_164;
            }
          }

          v109 = *(*v197 + v108);
          goto LABEL_165;
        }
      }

      else
      {
        if (v102 < 0x4B)
        {
          goto LABEL_156;
        }

        v103 = v101[37];
        if (!v103)
        {
          goto LABEL_156;
        }
      }

      v104 = *(v98 + v103);
      goto LABEL_157;
    }
  }

  v97 = sub_70E2E0(v8, a2, v197);
  v98 = *a2;
  v99 = (*a2 - **a2);
  if (*v99 >= 0x2Fu)
  {
    goto LABEL_172;
  }

LABEL_178:
  v117 = a3[1] - *a3;
  if (!v117)
  {
    if (v78 <= *(v8 + 1040))
    {
      goto LABEL_288;
    }

    goto LABEL_239;
  }

  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0xCCCCCCCCCCCCCCCDLL * (v117 >> 3);
  v196 = v121;
  do
  {
    v122 = fabs(sub_70E2E0(v8, a2, &(*a3)[v118]));
    v123 = *(v8 + 1024);
    v124 = *a3;
    v125 = *a2;
    v126 = **a2;
    if (v122 < v123)
    {
LABEL_205:
      v139 = (v125 - v126);
      v140 = *v139;
      if (*(a2 + 38))
      {
        if (v140 >= 0x9B)
        {
          v141 = v139[77];
          if (v139[77])
          {
            v142 = 2;
LABEL_212:
            v143 = (*(v125 + v141) & v142) != 0;
            goto LABEL_214;
          }
        }
      }

      else if (v140 >= 0x9B)
      {
        v141 = v139[77];
        if (v139[77])
        {
          v142 = 1;
          goto LABEL_212;
        }
      }

      v143 = 0;
LABEL_214:
      v144 = v124[v118];
      v145 = (v144 - *v144);
      v146 = *v145;
      if (BYTE6(v124[v118 + 4]))
      {
        if (v146 >= 0x9B && v145[77])
        {
          if ((v143 ^ ((*(v144 + v145[77]) & 2) != 0)))
          {
            goto LABEL_180;
          }

LABEL_223:
          if (v140 >= 0x9B && (v147 = v139[77]) != 0 && (*(v125 + v147 + 1) & 0x10) != 0 || v146 < 0x9B || !v145[77] || (*(v144 + v145[77] + 1) & 0x10) == 0)
          {
            if (sub_31EE90(*(v8 + 888), a2[4] & 0xFFFFFFFFFFFFFFLL, v124[v118 + 4] & 0xFFFFFFFFFFFFFFLL))
            {
              v148 = (v120 >> 3) + 1;
              if (v148 >> 61)
              {
                sub_1794();
              }

              if (v120 >> 3 != -1)
              {
                if (!(v148 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v149 = v8;
              v150 = (8 * (v120 >> 3));
              *v150 = v119;
              memcpy(0, 0, v120);
              v120 = (v150 + 1);
              v8 = v149;
              v121 = v196;
            }
          }

          goto LABEL_180;
        }
      }

      else if (v146 >= 0x9B && v145[77])
      {
        LOBYTE(v143) = v143 ^ ((*(v144 + v145[77]) & 1) != 0);
      }

      if (v143)
      {
        goto LABEL_180;
      }

      goto LABEL_223;
    }

    v127 = v125 - v126;
    v128 = *(v125 - v126);
    if (*(a2 + 38))
    {
      if (v128 >= 0x49)
      {
        v129 = *(v127 + 36);
        if (v129)
        {
          goto LABEL_188;
        }
      }
    }

    else if (v128 >= 0x4B)
    {
      v129 = *(v127 + 37);
      if (v129)
      {
LABEL_188:
        v130 = *(v125 + v129);
        goto LABEL_190;
      }
    }

    v130 = -1;
LABEL_190:
    v131 = v124[v118];
    v132 = (v131 - *v131);
    v133 = *v132;
    if (BYTE6(v124[v118 + 4]))
    {
      if (v133 >= 0x4B)
      {
        v134 = v132[37];
        if (v134)
        {
          goto LABEL_196;
        }
      }
    }

    else if (v133 >= 0x49)
    {
      v134 = v132[36];
      if (v134)
      {
LABEL_196:
        v135 = *(v131 + v134);
        goto LABEL_198;
      }
    }

    v135 = 0xFFFF;
LABEL_198:
    v136 = v130 + 18000;
    v137 = v130 - 18000;
    if ((v136 >> 5) < 0x465u)
    {
      v137 = v136;
    }

    v138 = v135 - v137;
    if (v138 > 18000)
    {
      v138 -= 36000;
    }

    if (v138 < -17999)
    {
      v138 += 36000;
    }

    if (fabs(v138 / 100.0) < v123)
    {
      goto LABEL_205;
    }

LABEL_180:
    ++v119;
    v118 += 5;
  }

  while (v121 != v119);
  if (v120 == 8)
  {
    v152 = *(a4 + 8);
    v151 = *(a4 + 16);
    if (v152 >= v151)
    {
      v184 = *a4;
      v185 = v152 - *a4;
      v186 = v185 >> 3;
      v187 = (v185 >> 3) + 1;
      if (v187 >> 61)
      {
        sub_1794();
      }

      v188 = v151 - v184;
      if (v188 >> 2 > v187)
      {
        v187 = v188 >> 2;
      }

      if (v188 >= 0x7FFFFFFFFFFFFFF8)
      {
        v189 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v189 = v187;
      }

      if (v189)
      {
        if (!(v189 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      *(8 * v186) = 0x100000CFEEDFACFLL;
      v153 = 8 * v186 + 8;
      memcpy(0, v184, v185);
      *a4 = 0;
      *(a4 + 8) = v153;
      *(a4 + 16) = 0;
      if (v184)
      {
        operator delete(v184);
      }
    }

    else
    {
      *v152 = 0x100000CFEEDFACFLL;
      v153 = (v152 + 1);
    }

    *(a4 + 8) = v153;
    operator delete(0);
    return;
  }

  if (v120)
  {
    v154 = *a3;
    v155 = *a2;
    for (i = 0; i != v120; ++i)
    {
      v202 = *i;
      v157 = v154[5 * v202];
      v158 = (v157 - *v157);
      v159 = *v158;
      if (v159 < 0x2F)
      {
        goto LABEL_258;
      }

      if (v158[23])
      {
        v160 = *(v157 + v158[23]);
        if (v160 <= 0x2C)
        {
          if (((1 << v160) & 0x180000105240) != 0)
          {
            v161 = *(v8 + 1588);
            v162 = (v155 - *v155);
            v163 = *v162;
            if (v163 < 0x2F)
            {
              goto LABEL_268;
            }

            goto LABEL_259;
          }

          if (!*(v157 + v158[23]))
          {
            v161 = *(v8 + 1584);
            v162 = (v155 - *v155);
            v163 = *v162;
            if (v163 < 0x2F)
            {
              goto LABEL_268;
            }

            goto LABEL_259;
          }
        }
      }

      if (v159 >= 0x43 && v158[33])
      {
        v161 = *(v157 + v158[33]);
        v162 = (v155 - *v155);
        v163 = *v162;
        if (v163 < 0x2F)
        {
          goto LABEL_268;
        }
      }

      else
      {
LABEL_258:
        v161 = 0;
        v162 = (v155 - *v155);
        v163 = *v162;
        if (v163 < 0x2F)
        {
          goto LABEL_268;
        }
      }

LABEL_259:
      if (v162[23])
      {
        v164 = *(v155 + v162[23]);
        if (v164 <= 0x2C)
        {
          if (((1 << v164) & 0x180000105240) != 0)
          {
            LODWORD(v165) = *(v8 + 1588);
            goto LABEL_269;
          }

          if (!*(v155 + v162[23]))
          {
            LODWORD(v165) = *(v8 + 1584);
            goto LABEL_269;
          }
        }
      }

      if (v163 < 0x43)
      {
LABEL_268:
        LODWORD(v165) = 0;
        goto LABEL_269;
      }

      v165 = v162[33];
      if (v162[33])
      {
        LODWORD(v165) = *(v155 + v165);
      }

LABEL_269:
      if (v161 != v165)
      {
        continue;
      }

      if (v159 >= 0x2F && v158[23])
      {
        v166 = *(v157 + v158[23]);
        if (v163 < 0x2F)
        {
          goto LABEL_278;
        }
      }

      else
      {
        v166 = 32;
        if (v163 < 0x2F)
        {
          goto LABEL_278;
        }
      }

      if (!v162[23])
      {
LABEL_278:
        if (v166 != 32)
        {
          continue;
        }

        goto LABEL_279;
      }

      if (v166 != *(v155 + v162[23]))
      {
        continue;
      }

LABEL_279:
      if (v159 >= 0x9B && (v167 = v158[77]) != 0)
      {
        v168 = (*(v157 + v167 + 1) >> 4) & 1;
        if (v163 < 0x9B)
        {
          goto LABEL_243;
        }
      }

      else
      {
        v168 = 0;
        if (v163 < 0x9B)
        {
          goto LABEL_243;
        }
      }

      if (!v162[77])
      {
LABEL_243:
        if ((v168 & 1) == 0)
        {
          goto LABEL_286;
        }

        continue;
      }

      if (v168 == (*(v155 + v162[77] + 1) & 0x10) >> 4)
      {
LABEL_286:
        sub_7125C0(a4, &v202);
        return;
      }
    }
  }

  if (v78 <= *(v8 + 1040))
  {
LABEL_288:
    v170 = *(a4 + 8);
    v169 = *(a4 + 16);
    if (v170 >= v169)
    {
      v174 = *a4;
      v175 = v170 - *a4;
      v176 = v175 >> 3;
      v177 = (v175 >> 3) + 1;
      if (v177 >> 61)
      {
        sub_1794();
      }

      v178 = v169 - v174;
      if (v178 >> 2 > v177)
      {
        v177 = v178 >> 2;
      }

      if (v178 >= 0x7FFFFFFFFFFFFFF8)
      {
        v179 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v179 = v177;
      }

      if (v179)
      {
        if (!(v179 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      *(8 * v176) = v200;
      v171 = 8 * v176 + 8;
      memcpy(0, v174, v175);
      *a4 = 0;
      *(a4 + 8) = v171;
      *(a4 + 16) = 0;
      if (v174)
      {
        operator delete(v174);
      }
    }

    else
    {
      *v170 = v200;
      v171 = (v170 + 1);
    }

    *(a4 + 8) = v171;
    return;
  }

LABEL_239:
  v202 = sub_3116D0(a2);
  if (sub_420B0C((v8 + 896), &v202))
  {
    v202 = 0;
    sub_7125C0(a4, &v202);
    return;
  }

  if (v78 <= *(v8 + 1064) && (sub_70EB5C(v8, a2, a3, v200) & 1) == 0)
  {
    sub_7125C0(a4, &v200);
    return;
  }

  v180 = sub_712C28(*a3, a3[1], a2);
  v181 = 0xCCCCCCCCCCCCCCCDLL * (v180 - *a3);
  v202 = v181;
  v182 = sub_6DF738(a2, v180);
  v199 = v8;
  if (0xCCCCCCCCCCCCCCCDLL * (a3[1] - *a3) >= 2 && fabs(v182) <= *(v8 + 1072) && (sub_70EB5C(v8, a2, a3, v181) & 1) == 0 && (*(v8 + 1688) != 1 || (sub_712C9C(&v199, a2, v180) & 1) != 0))
  {
    v195 = &v202;
    goto LABEL_345;
  }

  if (a3[1] - *a3 == 40 && (sub_712C9C(&v199, a2, v197) & 1) != 0 || v78 <= *(v8 + 1032) && (v183 = sub_712D18(v8, a2), v183 != sub_712D18(v8, v197)) && (sub_70EB5C(v8, a2, a3, v200) & 1) == 0)
  {
    v195 = &v200;
LABEL_345:
    sub_7125C0(a4, v195);
    return;
  }

  if (fabs(sub_70E2E0(v8, a2, *a3)) <= *(v8 + 1000))
  {
    v198 = 0;
    sub_7125C0(a4, &v198);
  }
}

void sub_716848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_7168AC(uint64_t a1, int **a2, uint64_t a3, double a4)
{
  v4 = *a3;
  if (*a3 == *(a3 + 8) || fabs(sub_70E16C(a1, a2, *a3, a4)) > *(a1 + 1000))
  {
    return 0;
  }

  v8 = (*a2 - **a2);
  v9 = *v8;
  if (*(a2 + 38))
  {
    if (v9 >= 0x9B)
    {
      v10 = v8[77];
      if (v10)
      {
        v11 = 2;
LABEL_10:
        v12 = (*(*a2 + v10) & v11) != 0;
        goto LABEL_12;
      }
    }
  }

  else if (v9 >= 0x9B)
  {
    v10 = v8[77];
    if (v10)
    {
      v11 = 1;
      goto LABEL_10;
    }
  }

  v12 = 0;
LABEL_12:
  v13 = *v4;
  v14 = (*v4 - **v4);
  v15 = *v14;
  if (*(v4 + 38))
  {
    if (v15 >= 0x9B)
    {
      v16 = v14[77];
      if (v16)
      {
        if (((v12 ^ ((*(v13 + v16) & 2) != 0)) & 1) == 0)
        {
          goto LABEL_16;
        }

        return 0;
      }
    }
  }

  else if (v15 >= 0x9B)
  {
    v18 = v14[77];
    if (v18)
    {
      if ((v12 ^ ((*(v13 + v18))))
      {
        return 0;
      }

      goto LABEL_16;
    }
  }

  if (v12)
  {
    return 0;
  }

LABEL_16:
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 3) < 2)
  {
    return 1;
  }

  v19 = sub_605E3C(a3, 1uLL);
  return fabs(sub_70E16C(a1, a2, v19, v20)) > *(a1 + 1016);
}

uint64_t sub_716A34(uint64_t a1, uint64_t a2, const void *a3, _OWORD *a4, char a5)
{
  *(sub_720B1C(a1) + 880) = a2;
  *(a1 + 888) = sub_3AF6B4(a2);
  *(a1 + 896) = *a4;
  *(a1 + 912) = a5;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 1065353216;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 1065353216;
  memcpy((a1 + 1000), a3, 0x4E0uLL);
  return a1;
}

uint64_t sub_716AD8(uint64_t a1, int **a2, int ***a3, uint64_t a4, double a5)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_716B90(a1, a2, a3, &v8, a5);
  if (v8 == v9)
  {
    a4 = -1;
LABEL_8:
    if (!v8)
    {
      return a4;
    }
  }

  else
  {
    v6 = v8;
    while (*v6 != a4)
    {
      if (++v6 == v9)
      {
        goto LABEL_10;
      }
    }

    if (v6 != v9)
    {
      goto LABEL_8;
    }

LABEL_10:
    a4 = *v8;
  }

  v9 = v8;
  operator delete(v8);
  return a4;
}

void sub_716B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_716B90(uint64_t a1, int **a2, int ***a3, void *a4, double a5)
{
  a4[1] = *a4;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  sub_718C4C(a1, a2, a3, &v42, a5);
  v9 = v42;
  v10 = v43;
  if (v42 == v43)
  {
    goto LABEL_50;
  }

  do
  {
    v11 = *v9;
    v41 = v11;
    if (v11 == -1 || !sub_70EB5C(a1, a2, a3, v11))
    {
      goto LABEL_4;
    }

    v12 = sub_605E3C(a3, v41);
    v13 = (*a2 - **a2);
    v14 = *v13;
    if (*(a2 + 38))
    {
      if (v14 >= 0x49)
      {
        v15 = v13[36];
        if (v15)
        {
          goto LABEL_14;
        }
      }
    }

    else if (v14 >= 0x4B)
    {
      v15 = v13[37];
      if (v15)
      {
LABEL_14:
        v16 = *(*a2 + v15);
        v17 = *v12;
        v18 = (*v12 - **v12);
        v19 = *v18;
        if (*(v12 + 38))
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }
    }

    v16 = -1;
    v17 = *v12;
    v18 = (*v12 - **v12);
    v19 = *v18;
    if (*(v12 + 38))
    {
LABEL_19:
      if (v19 >= 0x4B)
      {
        v20 = v18[37];
        if (v20)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_22;
    }

LABEL_15:
    if (v19 >= 0x49)
    {
      v20 = v18[36];
      if (v20)
      {
LABEL_21:
        v21 = *&v17[v20];
        goto LABEL_23;
      }
    }

LABEL_22:
    v21 = 0xFFFF;
LABEL_23:
    v22 = v16 + 18000;
    v23 = v16 - 18000;
    if ((v22 >> 5) < 0x465u)
    {
      v23 = v22;
    }

    v24 = v21 - v23;
    if (v24 > 18000)
    {
      v24 -= 36000;
    }

    if (v24 >= -17999)
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 + 36000;
    }

    v26 = sub_605E3C(a3, v41);
    v27 = sub_70E2E0(a1, a2, v26);
    v28 = fabs(v25 / 100.0);
    v29 = fabs(v27);
    if (v29 >= v28)
    {
      v29 = v28;
    }

    if (v29 <= *(a1 + 1152) || (v30 = (*a2 - **a2), *v30 < 0x2Fu) || (v31 = v30[23]) == 0 || ((v32 = *(*a2 + v31), v33 = v32 > 0x2A, v34 = (1 << v32) & 0x50426810004, !v33) ? (v35 = v34 == 0) : (v35 = 1), v35))
    {
      if (v29 <= *(a1 + 1144) || (v36 = (*a2 - **a2), *v36 >= 0x2Fu) && (v37 = v36[23]) != 0 && ((v38 = *(*a2 + v37), v33 = v38 > 0x2A, v39 = (1 << v38) & 0x50426810004, !v33) ? (v40 = v39 == 0) : (v40 = 1), !v40))
      {
        sub_2512DC(a4, &v41);
LABEL_4:
        sub_2512DC(a4, &v41);
      }
    }

    ++v9;
  }

  while (v9 != v10);
  v9 = v42;
LABEL_50:
  if (v9)
  {
    v43 = v9;
    operator delete(v9);
  }
}

void sub_716E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_716E70(uint64_t a1, int **a2)
{
  v2 = *a2;
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (*(a2 + 38))
  {
    if (v4 >= 0x39)
    {
      v5 = v3[28];
      if (v5)
      {
        v6 = *&v2[v5];
        if ((v6 & 2) != 0)
        {
          return 1;
        }

        goto LABEL_9;
      }
    }

    return 0;
  }

  if (v4 < 0x39)
  {
    return 0;
  }

  v7 = v3[28];
  if (!v7)
  {
    return 0;
  }

  v6 = *&v2[v7];
  if (v6)
  {
    return 1;
  }

LABEL_9:
  if ((v6 & 7) == 4)
  {
    return 1;
  }

  if ((v6 & 3) != 0)
  {
    return 0;
  }

  return (v6 >> 5) & 1;
}

uint64_t sub_716EE4(uint64_t a1, int **a2)
{
  v2 = *a2;
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (*(a2 + 38))
  {
    if (v4 >= 0x39)
    {
      v5 = v3[28];
      if (v5)
      {
        v6 = *&v2[v5];
        if (v6)
        {
          return 1;
        }

        goto LABEL_9;
      }
    }

    return 0;
  }

  if (v4 < 0x39)
  {
    return 0;
  }

  v7 = v3[28];
  if (!v7)
  {
    return 0;
  }

  v6 = *&v2[v7];
  if ((v6 & 2) != 0)
  {
    return 1;
  }

LABEL_9:
  if ((v6 & 7) == 4)
  {
    return 1;
  }

  if ((v6 & 3) != 0)
  {
    return 0;
  }

  return (v6 >> 5) & 1;
}

BOOL sub_716F58(void *a1, int **a2)
{
  v4 = *a2;
  v5 = (*a2 - **a2);
  v6 = *v5;
  if (*(a2 + 38))
  {
    if (v6 >= 0x9B)
    {
      v7 = v5[77];
      if (v7)
      {
        v8 = *&v4[v7];
        if ((v8 & 2) != 0 && (v8 & 1) == 0)
        {
LABEL_67:
          v55 = *(a2 + 1);
          v72 = *a2;
          v73 = v55;
          v56 = a2[4];
          v74 = v56;
          v57 = a1[111];
          v58 = v56 & 0xFFFFFFFFFFFFLL;
          v59 = v56 & 0xFFFFFFFFFFFFLL | (((v56 & 0xFF000000000000) == 0) << 48);
          v60 = sub_2B51D8(v57, v56 & 0xFFFFFFFFFFFFLL);
          if (*(v57 + 7772) == 1)
          {
            v61 = sub_30C50C(v57 + 3896, v56, 0);
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

            v64 = v63 + ((v56 >> 30) & 0x3FFFC) + 4 + *(v63 + ((v56 >> 30) & 0x3FFFC) + 4);
          }

          else
          {
            v64 = 0;
          }

          *&v69 = v60;
          *(&v69 + 1) = v64;
          *&v70 = sub_31D7E8(v57, v58, 1);
          *(&v70 + 1) = v65;
          v71 = v59;
          goto LABEL_19;
        }
      }
    }
  }

  else if (v6 >= 0x9B)
  {
    v9 = v5[77];
    if (v9)
    {
      v10 = *&v4[v9];
      if ((v10 & 1) != 0 && (v10 & 2) == 0)
      {
        goto LABEL_67;
      }
    }
  }

  v11 = a1[111];
  v12 = a2[4];
  v13 = v12 & 0xFFFFFFFFFFFFLL;
  v14 = v12 & 0xFFFFFFFFFFFFLL | (((v12 & 0xFF000000000000) == 0) << 48);
  v15 = sub_2B51D8(v11, v12 & 0xFFFFFFFFFFFFLL);
  if (*(v11 + 7772) == 1)
  {
    v16 = sub_30C50C(v11 + 3896, v12, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = v18 + ((v12 >> 30) & 0x3FFFC) + 4 + *(v18 + ((v12 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v19 = 0;
  }

  *&v72 = v15;
  *(&v72 + 1) = v19;
  *&v73 = sub_31D7E8(v11, v13, 1);
  *(&v73 + 1) = v20;
  v74 = v14;
  v21 = *(a2 + 1);
  v69 = *a2;
  v70 = v21;
  v71 = a2[4];
LABEL_19:
  sub_71742C(a1, &v72, 1, a1 + 168, 1, &v66);
  v22 = v66;
  if (v66 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_45;
  }

  v23 = v67;
  v24 = v68;
  sub_71742C(a1, &v69, 0, a1 + 168, 1, &v66);
  if (v66 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_45;
  }

  v25 = (v23 - *v23);
  if (*v25 >= 0x2Fu && (v26 = v25[23]) != 0)
  {
    v27 = *(v23 + v26);
    v28 = v27 > 0x2F;
    v29 = 0xE2E040048000uLL >> v27;
    if (v28)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29;
    }

    v31 = v68;
    v32 = (v67 - *v67);
    if (*v32 < 0x2Fu)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v30 = 0;
    v31 = v68;
    v32 = (v67 - *v67);
    if (*v32 < 0x2Fu)
    {
      goto LABEL_36;
    }
  }

  v33 = v32[23];
  if (v33)
  {
    v34 = *(v67 + v33);
    v28 = v34 > 0x2F;
    v35 = (1 << v34) & 0xE2E040048000;
    v36 = v28 || v35 == 0;
    if (!v36)
    {
      if ((v30 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_37;
    }
  }

LABEL_36:
  if (v30)
  {
    goto LABEL_45;
  }

LABEL_37:
  v37 = (v72 - *v72);
  if (*v37 >= 9u && (v38 = v37[4]) != 0)
  {
    v39 = *(v72 + v38);
  }

  else
  {
    v39 = 0;
  }

  v36 = ((v24 | v31) & 1) == 0;
  v40 = 169;
  if (!v36)
  {
    v40 = 168;
  }

  if (v66 + v22 + v39 < a1[v40])
  {
    return 1;
  }

LABEL_45:
  sub_71742C(a1, &v72, 1, a1 + 170, 0, &v66);
  v42 = v66;
  if (v66 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v43 = v67;
  sub_71742C(a1, &v69, 0, a1 + 170, 0, &v66);
  if (v66 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v44 = (v43 - *v43);
  if (*v44 < 0x2Fu)
  {
    LOBYTE(v45) = 0;
    v47 = (v67 - *v67);
    if (*v47 < 0x2Fu)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v45 = v44[23];
    if (v45)
    {
      v46 = *(v43 + v45);
      v28 = v46 > 0x2F;
      v45 = 0xE2E040048000uLL >> v46;
      if (v28)
      {
        LOBYTE(v45) = 0;
      }
    }

    v47 = (v67 - *v67);
    if (*v47 < 0x2Fu)
    {
      goto LABEL_61;
    }
  }

  v48 = v47[23];
  if (v48)
  {
    v49 = *(v67 + v48);
    v28 = v49 > 0x2F;
    v50 = (1 << v49) & 0xE2E040048000;
    if (!v28 && v50 != 0)
    {
      if (v45)
      {
        goto LABEL_62;
      }

      return 0;
    }
  }

LABEL_61:
  if (v45)
  {
    return 0;
  }

LABEL_62:
  v52 = (v72 - *v72);
  if (*v52 >= 9u && (v53 = v52[4]) != 0)
  {
    v54 = *(v72 + v53);
  }

  else
  {
    v54 = 0;
  }

  return v66 + v42 + v54 < a1[170];
}

void sub_71742C(uint64_t a1@<X0>, int **a2@<X1>, int a3@<W2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v8 = 0;
  *(a1 + 856) = *(a1 + 848);
  *(a1 + 832) = *(a1 + 824);
  *(a1 + 872) = 0;
  *(a1 + 776) = *(a1 + 768);
  do
  {
    v10 = a1 + v8;
    if (*(a1 + v8 + 16))
    {
      v11 = *(v10 + 24);
      if (v11 >= 0x80)
      {
        v9 = (a1 + v8);
        operator delete(*(a1 + v8));
        v9[5] = 0;
        *v9 = &unk_2290750;
        v9[1] = 0;
        v9[2] = 0;
        v9[3] = 0;
      }

      else if (v11)
      {
        *(v10 + 16) = 0;
        memset(*(a1 + v8), 128, v11 + 8);
        *(*(a1 + v8) + v11) = -1;
        v12 = *(v10 + 24);
        if (v12 == 7)
        {
          v13 = 6;
        }

        else
        {
          v13 = v12 - (v12 >> 3);
        }

        *(a1 + v8 + 40) = v13 - *(v10 + 16);
      }
    }

    v8 += 48;
  }

  while (v8 != 768);
  *(a1 + 800) = *(a1 + 792);
  *(a1 + 816) = 0;
  v14 = a2[4];
  LODWORD(v165[0]) = v14;
  BYTE6(v165[0]) = BYTE6(v14);
  WORD2(v165[0]) = WORD2(v14);
  v15 = (*a2 - **a2);
  v17 = *v15 >= 0x2Fu && (v16 = v15[23]) != 0 && (*(*a2 + v16) & 0xF7) == 34;
  *v173 = 0;
  v18 = *(a2 + 1);
  *&v173[8] = *a2;
  *&v173[24] = v18;
  v174 = a2[4];
  v175 = v17;
  sub_712D7C(a1, v165, v173);
  v170 = 0;
  v171 = 0;
  v172 = 0;
  __p = 0;
  v168 = 0;
  v169 = 0;
  if (*(a1 + 872))
  {
    v19 = 0;
    *&v156[8] = 0;
    v20 = a3;
    *v156 = a3 ^ 1u;
    while (1)
    {
      v21 = *(a1 + 824);
      v22 = *(a1 + 768) + (*v21 << 6);
      v23 = *(v22 + 16);
      v24 = *(v22 + 32);
      v166 = *(v22 + 48);
      v165[0] = v23;
      v165[1] = v24;
      v160 = *(v22 + 8);
      v157 = *(v22 + 56);
      sub_DD38(a1 + 792, v21);
      v25 = *(a1 + 824);
      *(*(a1 + 848) + 4 * *v25) = -1;
      v26 = *(a1 + 872) - 1;
      *(a1 + 872) = v26;
      if (v26)
      {
        v27 = &v25[4 * v26];
        *v25 = *v27;
        *(v25 + 1) = *(v27 + 1);
        v28 = *(a1 + 824);
        *(*(a1 + 848) + 4 * *v28) = 0;
        v29 = *(a1 + 872);
        if (v29 >= 2)
        {
          v30 = 0;
          v31 = 0;
          v32 = 1;
          do
          {
            v33 = v30 + 5;
            if (v33 >= v29)
            {
              v34 = v29;
            }

            else
            {
              v34 = v33;
            }

            if (v33 <= v32)
            {
              break;
            }

            v35 = v31;
            v36 = *&v28[4 * v31 + 2];
            v37 = &v28[4 * v32 + 2];
            v31 = -1;
            v38 = v36;
            do
            {
              v40 = *v37;
              v37 += 4;
              v39 = v40;
              if (v40 < v38)
              {
                v38 = v39;
                v31 = v32;
              }

              ++v32;
            }

            while (v32 < v34);
            if (v31 >= v29)
            {
              break;
            }

            v41 = 4 * v31;
            v42 = &v28[v41];
            v43 = 16 * v35;
            v44 = v28 + v43;
            v45 = *v42;
            *v42 = *v44;
            *v44 = v45;
            v46 = *(v42 + 1);
            *(v42 + 1) = v36;
            *(v44 + 1) = v46;
            v28 = *(a1 + 824);
            v47 = v28[v41];
            v48 = *(a1 + 848);
            v49 = *(v28 + v43);
            LODWORD(v43) = *(v48 + 4 * v47);
            *(v48 + 4 * v47) = *(v48 + 4 * v49);
            *(v48 + 4 * v49) = v43;
            v30 = 4 * v31;
            v32 = (4 * v31) | 1;
            v29 = *(a1 + 872);
          }

          while (v32 < v29);
        }
      }

      *(a1 + 832) -= 16;
      sub_31B8F4(*(a1 + 888), v165, &v170);
      v50 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v171 - v170) >> 3));
      *v173 = v165;
      *&v173[8] = a1;
      if (v171 == v170)
      {
        v51 = 0;
      }

      else
      {
        v51 = v50;
      }

      sub_71B06C(v170, v171, v173, v51, 1);
      if (!v20)
      {
        v55 = -1;
        goto LABEL_46;
      }

      memset(v173, 0, 24);
      sub_716B90(a1, v165, &v170, v173, v52);
      if (*v173 != *&v173[8])
      {
        break;
      }

LABEL_42:
      v55 = -1;
      if (*v173)
      {
        goto LABEL_45;
      }

LABEL_46:
      v57 = v170;
      v56 = v171;
      if (v170 != v171)
      {
        v161 = 0;
        v158 = v19;
        v163 = v171;
        while (1)
        {
          v63 = (*v57 - **v57);
          if (*v63 >= 0x2Fu)
          {
            v58 = v63[23];
            if (v58)
            {
              v59 = *(*v57 + v58);
              v60 = v59 > 0x36;
              v61 = (1 << v59) & 0x44000000000008;
              if (!v60 && v61 != 0)
              {
                goto LABEL_53;
              }
            }
          }

          if (v20)
          {
            if (v55 == -1)
            {
              goto LABEL_121;
            }

            v64 = *(sub_6B8D68(&v170, v55) + 32);
            v65 = v57[4];
            if (v64 != v65 || WORD2(v64) != WORD2(v65))
            {
              goto LABEL_121;
            }

            v66 = BYTE6(v64) == BYTE6(v65);
LABEL_116:
            v95 = v66;
            v96 = *&v165[0];
            v97 = **&v165[0];
            v98 = *&v165[0] - v97;
            v99 = *(*&v165[0] - v97);
            if (!BYTE6(v166))
            {
              goto LABEL_109;
            }

            goto LABEL_122;
          }

          v67 = v19;
          v68 = *(a1 + 888);
          v69 = v57[4];
          v70 = (v69 & 0xFF000000000000) == 0;
          v71 = v69 & 0xFFFFFFFFFFFFLL;
          v72 = sub_2B51D8(v68, v69 & 0xFFFFFFFFFFFFLL);
          if (*(v68 + 7772) == 1)
          {
            v73 = sub_30C50C(v68 + 3896, v69, 0);
            v74 = &v73[-*v73];
            if (*v74 < 5u)
            {
              v75 = 0;
            }

            else
            {
              v75 = *(v74 + 2);
              if (v75)
              {
                v75 += &v73[*&v73[v75]];
              }
            }

            v76 = v75 + ((v69 >> 30) & 0x3FFFC) + 4 + *(v75 + ((v69 >> 30) & 0x3FFFC) + 4);
            if (*(v68 + 7773) != 1)
            {
              goto LABEL_95;
            }
          }

          else
          {
            v76 = 0;
            if (*(v68 + 7773) != 1)
            {
              goto LABEL_95;
            }
          }

          v77 = sub_31D994(v68 + 3896, v69, 1);
          if (!v77)
          {
            goto LABEL_95;
          }

          v78 = &v77[-*v77];
          if (*v78 < 0xBu)
          {
            goto LABEL_95;
          }

          v79 = *(v78 + 5);
          if (!*(v78 + 5))
          {
            goto LABEL_96;
          }

          v80 = &v79[v77 + *&v79[v77]];
          v19 = v67;
          if (*v80 <= HIDWORD(v71) || (v81 = &v80[8 * HIDWORD(v71)], v84 = *(v81 + 1), v83 = v81 + 4, (v82 = v84) == 0))
          {
            v79 = 0;
            v88 = 0;
            goto LABEL_97;
          }

          v85 = sub_2B3284(v68 + 3896, v82, 1);
          if (!v85)
          {
LABEL_95:
            v79 = 0;
LABEL_96:
            v88 = 0;
            v19 = v67;
            goto LABEL_97;
          }

          v86 = &v85[-*v85];
          v87 = *v86;
          if ((*(v83 + 6) & 2) != 0)
          {
            if (v87 < 5)
            {
              goto LABEL_95;
            }

            v88 = *(v86 + 2);
            v19 = v67;
            if (*(v86 + 2))
            {
              v88 = (v88 + v85 + *(v88 + v85));
            }

            if (v87 < 7)
            {
              goto LABEL_86;
            }

            v89 = *(v86 + 3);
            if (!v89)
            {
              goto LABEL_86;
            }
          }

          else if (v87 < 7)
          {
            if (v87 < 5)
            {
              goto LABEL_95;
            }

            v88 = 0;
            v19 = v67;
            v89 = *(v86 + 2);
            if (!v89)
            {
LABEL_86:
              v79 = 0;
              if (!v88)
              {
                goto LABEL_93;
              }

              goto LABEL_91;
            }
          }

          else
          {
            v88 = *(v86 + 3);
            if (*(v86 + 3))
            {
              v88 = (v88 + v85 + *(v88 + v85));
            }

            v19 = v67;
            v89 = *(v86 + 2);
            if (!v89)
            {
              goto LABEL_86;
            }
          }

          v79 = &v85[v89 + *&v85[v89]];
          if (!v88)
          {
            goto LABEL_93;
          }

LABEL_91:
          v90 = *(v83 + 2);
          if (*v88 > v90)
          {
            v88 = (v88 + 4 * v90 + v88[v90 + 1] + 4);
LABEL_93:
            if (v79)
            {
              goto LABEL_221;
            }

            goto LABEL_97;
          }

          v88 = 0;
          if (v79)
          {
LABEL_221:
            v146 = *(v83 + 2);
            if (*v79 <= v146)
            {
              v79 = 0;
            }

            else
            {
              v79 += 4 * v146 + *&v79[4 * v146 + 4] + 4;
            }
          }

LABEL_97:
          *v173 = v72;
          *&v173[8] = v76;
          *&v173[16] = v88;
          *&v173[24] = v79;
          *&v173[32] = v71 | (v70 << 48);
          sub_31B8F4(*(a1 + 888), v173, &__p);
          v91 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v168 - __p) >> 3));
          v176 = v173;
          v177 = a1;
          if (v168 == __p)
          {
            v92 = 0;
          }

          else
          {
            v92 = v91;
          }

          sub_71B06C(__p, v168, &v176, v92, 1);
          v176 = 0;
          v177 = 0;
          v178 = 0;
          sub_716B90(a1, v173, &__p, &v176, v93);
          v20 = a3;
          v56 = v163;
          if (v176 != v177)
          {
            v94 = v176;
            while (*v94 != -1)
            {
              if (++v94 == v177)
              {
                goto LABEL_112;
              }
            }

            if (v94 != v177)
            {
              goto LABEL_106;
            }

LABEL_112:
            v55 = *v176;
            v177 = v176;
            operator delete(v176);
            if (v55 == -1 || (v101 = *(sub_6B8D68(&__p, v55) + 32), v101 != v166) || WORD2(v101) != WORD2(v166))
            {
LABEL_121:
              v95 = 0;
              v96 = *&v165[0];
              v97 = **&v165[0];
              v98 = *&v165[0] - v97;
              v99 = *(*&v165[0] - v97);
              if (!BYTE6(v166))
              {
                goto LABEL_109;
              }

              goto LABEL_122;
            }

            v66 = ((v101 & 0xFF000000000000) == 0) == BYTE6(v166);
            goto LABEL_116;
          }

LABEL_106:
          if (v176)
          {
            v177 = v176;
            operator delete(v176);
          }

          v95 = 0;
          v55 = -1;
          v96 = *&v165[0];
          v97 = **&v165[0];
          v98 = *&v165[0] - v97;
          v99 = *(*&v165[0] - v97);
          if (!BYTE6(v166))
          {
LABEL_109:
            if (v99 >= 0x4B)
            {
              v100 = *(v98 + 74);
              if (v100)
              {
                goto LABEL_124;
              }
            }

            goto LABEL_128;
          }

LABEL_122:
          if (v99 >= 0x49)
          {
            v100 = *(v98 + 72);
            if (v100)
            {
LABEL_124:
              v102 = *(v96 + v100);
              v103 = *(v57 + 38);
              v104 = *v57;
              v105 = **v57;
              v106 = (*v57 - v105);
              v107 = *v106;
              if (*(v57 + 38))
              {
                goto LABEL_129;
              }

              goto LABEL_125;
            }
          }

LABEL_128:
          v102 = -1;
          v103 = *(v57 + 38);
          v104 = *v57;
          v105 = **v57;
          v106 = (*v57 - v105);
          v107 = *v106;
          if (*(v57 + 38))
          {
LABEL_129:
            if (v107 >= 0x4B)
            {
              v108 = v106[37];
              if (v106[37])
              {
                goto LABEL_131;
              }
            }

            goto LABEL_132;
          }

LABEL_125:
          if (v107 >= 0x49)
          {
            v108 = v106[36];
            if (v106[36])
            {
LABEL_131:
              v109 = *(v104 + v108);
              goto LABEL_133;
            }
          }

LABEL_132:
          v109 = 0xFFFF;
LABEL_133:
          v110 = -v105;
          v111 = v102 + 18000;
          v112 = v102 - 18000;
          if ((v111 >> 5) < 0x465u)
          {
            v112 = v111;
          }

          v113 = v109 - v112;
          if (v113 > 18000)
          {
            v113 -= 36000;
          }

          if (v113 < -17999)
          {
            v113 += 36000;
          }

          v114 = v113 / 100.0;
          if (a5)
          {
            if (v107 < 0x2F)
            {
              goto LABEL_178;
            }

            if (v106[23] && *(v104 + v106[23]) == 23)
            {
              if (v95)
              {
                goto LABEL_178;
              }
            }

            else if (v107 < 0x9B || !v106[77] || v95 & 1 | ((*(v104 + v106[77]) & 4) == 0))
            {
              goto LABEL_178;
            }
          }

          else
          {
            if (v103)
            {
              if (v107 < 0x9B)
              {
                goto LABEL_178;
              }

              v115 = v106[77];
              if (!v106[77])
              {
                goto LABEL_178;
              }

              v116 = 2;
              v117 = 1;
            }

            else
            {
              if (v107 < 0x9B)
              {
                goto LABEL_178;
              }

              v115 = v106[77];
              if (!v106[77])
              {
                goto LABEL_178;
              }

              v116 = 1;
              v117 = 2;
            }

            if (((*(v104 + v115) & v116) != 0) == ((*(v104 + v115) & v117) != 0))
            {
              goto LABEL_178;
            }

            LOWORD(v53) = *(a1 + 1368);
            v53 = vmovl_s16(*&v53).i32[0];
            if (v95 & 1 | (fabs(v114) <= v53))
            {
              goto LABEL_178;
            }
          }

          if (v107 < 0x9B)
          {
            LODWORD(v118) = 0;
          }

          else
          {
            v118 = v106[77];
            if (v106[77])
            {
              v119 = *(v104 + v118);
              v118 = (v119 >> 15) & 1;
              v120 = 1;
              if (v103)
              {
                v120 = 2;
              }

              v121 = (v119 & v120) != 0;
              goto LABEL_165;
            }
          }

          v121 = 0;
LABEL_165:
          if (v118 != v121)
          {
            v122 = v114 < 0.0;
          }

          else
          {
            v122 = v114 > 0.0;
          }

          if (v122)
          {
            *v173 = sub_3116D0(v165);
            if (!sub_420B0C((a1 + 896), v173))
            {
              if (v157)
              {
                v150 = 1;
                v151 = a6;
              }

              else
              {
                v152 = (*v57 - **v57);
                v151 = a6;
                v150 = *v152 >= 0x2Fu && (v153 = v152[23]) != 0 && (*(*v57 + v153) & 0xF7) == 34;
              }

              *v151 = v160;
              v154 = *(v57 + 1);
              *(v151 + 8) = *v57;
              *(v151 + 24) = v154;
              *(v151 + 40) = v57[4];
              *(v151 + 48) = v150;
              v149 = __p;
              if (__p)
              {
                goto LABEL_231;
              }

              goto LABEL_232;
            }

            v96 = *&v165[0];
          }

          v97 = *v96;
          if (*(v96 - v97) >= 0x2Fu && *(v96 - v97 + 46))
          {
            v123 = *(v96 + *(v96 - v97 + 46));
            v60 = v123 > 0x2A;
            v124 = 0x2FBD97EFFFBuLL >> v123;
            if (v60)
            {
              LOBYTE(v124) = 1;
            }
          }

          else
          {
            LOBYTE(v124) = 1;
          }

          v161 |= v124 | a3 ^ 1;
          v104 = *v57;
          v110 = -**v57;
LABEL_178:
          v125 = (v104 + v110);
          v126 = *v125;
          if (v126 < 9)
          {
            v127 = 0;
            v128 = *(v57 + 38);
            v129 = v126 >= 0x9B;
            if (v20)
            {
              goto LABEL_182;
            }
          }

          else
          {
            v127 = v125[4];
            if (v125[4])
            {
              v127 = *(v104 + v127);
            }

            v128 = *(v57 + 38);
            v129 = v126 >= 0x9B;
            if (v20)
            {
LABEL_182:
              if (!v128)
              {
                goto LABEL_190;
              }

              goto LABEL_183;
            }
          }

          if (v128)
          {
LABEL_190:
            if (!v129 || !v125[77] || (*(v104 + v125[77]) & 1) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_194;
          }

LABEL_183:
          if (!v129 || !v125[77] || (*(v104 + v125[77]) & 2) == 0)
          {
            goto LABEL_53;
          }

LABEL_194:
          v130 = v127 + v160;
          if (v127 + v160 > *a4)
          {
            goto LABEL_53;
          }

          v131 = (v96 - v97);
          if (*v131 < 0x2Fu || (v132 = v131[23]) == 0 || (v133 = *(v96 + v132), v133 > 0x2A) || ((1 << v133) & 0x50426810004) == 0)
          {
            if (!v95)
            {
              goto LABEL_53;
            }
          }

          if (v157)
          {
            v134 = 1;
            v135 = v158;
            if (v158 >= *&v156[4])
            {
              goto LABEL_205;
            }
          }

          else if (v125[23])
          {
            v134 = (*(v104 + v125[23]) & 0xF7) == 34;
            v135 = v158;
            if (v158 >= *&v156[4])
            {
              goto LABEL_205;
            }
          }

          else
          {
            v134 = 0;
            v135 = v158;
            if (v158 >= *&v156[4])
            {
LABEL_205:
              v138 = v135 - v19;
              v139 = 0x6DB6DB6DB6DB6DB7 * ((v135 - v19) >> 3);
              v140 = v139 + 1;
              if ((v139 + 1) > 0x492492492492492)
              {
                sub_1794();
              }

              v141 = v19;
              if (0xDB6DB6DB6DB6DB6ELL * ((*&v156[4] - v19) >> 3) > v140)
              {
                v140 = 0xDB6DB6DB6DB6DB6ELL * ((*&v156[4] - v19) >> 3);
              }

              if ((0x6DB6DB6DB6DB6DB7 * ((*&v156[4] - v19) >> 3)) >= 0x249249249249249)
              {
                v142 = 0x492492492492492;
              }

              else
              {
                v142 = v140;
              }

              if (v142)
              {
                if (v142 <= 0x492492492492492)
                {
                  operator new();
                }

                sub_1808();
              }

              v143 = 56 * v139;
              *&v156[4] = 0;
              *v143 = v130;
              v144 = *v57;
              v145 = *(v57 + 1);
              *(v143 + 40) = v57[4];
              *(v143 + 24) = v145;
              *(v143 + 8) = v144;
              *(v143 + 48) = v134;
              v158 = 56 * v139 + 56;
              v19 = (56 * v139 + 56 * (v138 / -56));
              memcpy(v19, v141, v138);
              if (v141)
              {
                operator delete(v141);
              }

              v20 = a3;
              goto LABEL_219;
            }
          }

          *v173 = *v57;
          *&v173[16] = *(v57 + 1);
          *&v173[32] = v57[4];
          *v135 = v130;
          v136 = *&v173[32];
          v137 = *&v173[16];
          *(v135 + 8) = *v173;
          *(v135 + 24) = v137;
          *(v135 + 40) = v136;
          *(v135 + 48) = v134;
          v158 = v135 + 56;
LABEL_219:
          v56 = v163;
LABEL_53:
          v57 += 5;
          if (v57 == v56)
          {
            if ((v161 & 1) == 0 && v19 != v158)
            {
              v147 = v19;
              do
              {
                v148 = *(v147 + 5);
                *v173 = v148;
                v173[6] = BYTE6(v148);
                *&v173[4] = WORD2(v148);
                sub_712FC8(a1, v173, v147);
                v147 = (v147 + 56);
              }

              while (v147 != v158);
            }

            break;
          }
        }
      }

      if (!*(a1 + 872))
      {
        goto LABEL_230;
      }
    }

    v54 = *v173;
    while (*v54 != -1)
    {
      if (++v54 == *&v173[8])
      {
        goto LABEL_44;
      }
    }

    if (v54 != *&v173[8])
    {
      goto LABEL_42;
    }

LABEL_44:
    v55 = **v173;
LABEL_45:
    *&v173[8] = *v173;
    operator delete(*v173);
    goto LABEL_46;
  }

  v19 = 0;
LABEL_230:
  *a6 = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 8) = 0u;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0x1000000000000;
  *(a6 + 48) = 0;
  v149 = __p;
  if (__p)
  {
LABEL_231:
    v168 = v149;
    operator delete(v149);
  }

LABEL_232:
  if (v19)
  {
    operator delete(v19);
  }

  if (v170)
  {
    v171 = v170;
    operator delete(v170);
  }
}

void sub_7182C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
    if (!v32)
    {
LABEL_3:
      v34 = a28;
      if (!a28)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  operator delete(v32);
  v34 = a28;
  if (!a28)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v34);
  _Unwind_Resume(exception_object);
}

BOOL sub_718368(uint64_t a1, char **a2, int **a3)
{
  v3 = *a3;
  v4 = (*a3 - **a3);
  v5 = *v4;
  if (v5 >= 0x2F && v4[23])
  {
    v6 = *(v3 + v4[23]);
    v7 = v6 > 0x36;
    v8 = (1 << v6) & 0x44000000000008;
    if (!v7 && v8 != 0)
    {
      return 0;
    }
  }

  v10 = *a2;
  v11 = &(*a2)[-**a2];
  v12 = *v11;
  if (v12 < 0x2F)
  {
    return 0;
  }

  if (!*(v11 + 23) || *(v10 + *(v11 + 23)) != 23)
  {
    if (v12 < 0x9B)
    {
      return 0;
    }

    v13 = *(v11 + 77);
    if (!v13 || (*(v10 + v13) & 4) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 1545) != 1)
  {
    return 0;
  }

  if (v5 >= 9 && (v14 = v4[4]) != 0)
  {
    if (*(v3 + v14) >= *(a1 + 1560))
    {
      return 0;
    }
  }

  else if (*(a1 + 1560) <= 0)
  {
    return 0;
  }

  return sub_716F58(a1, a3);
}

BOOL sub_71843C(uint64_t a1, unint64_t **a2, char a3)
{
  v30 = a3;
  v3 = *a2;
  if (*a2 == a2[1])
  {
    return 0;
  }

  v29 = a1;
  v6 = *(a1 + 888);
  v7 = *v3;
  v8 = sub_2B51D8(v6, *v3 & 0xFFFFFFFFFFFFLL);
  if (*(v6 + 7772) == 1)
  {
    v9 = sub_30C50C(v6 + 3896, v7, 0);
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

    v13 = v11 + ((v7 >> 30) & 0x3FFFC) + 4 + *(v11 + ((v7 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v13 = 0;
  }

  v28[0] = v8;
  v28[1] = v13;
  v28[2] = sub_31D7E8(v6, v7 & 0xFFFFFFFFFFFFLL, 1);
  v28[3] = v14;
  v28[4] = v7;
  v15 = *(a1 + 888);
  v16 = *(a2[1] - 1);
  v17 = sub_2B51D8(v15, v16 & 0xFFFFFFFFFFFFLL);
  if (*(v15 + 7772) == 1)
  {
    v18 = sub_30C50C(v15 + 3896, v16, 0);
    v19 = &v18[-*v18];
    if (*v19 < 5u)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(v19 + 2);
      if (v20)
      {
        v20 += &v18[*&v18[v20]];
      }
    }

    v21 = v20 + ((v16 >> 30) & 0x3FFFC) + 4 + *(v20 + ((v16 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v21 = 0;
  }

  v27[0] = v17;
  v27[1] = v21;
  v27[2] = sub_31D7E8(v15, v16 & 0xFFFFFFFFFFFFLL, 1);
  v27[3] = v22;
  v27[4] = v16;
  v23 = *a2;
  v24 = a2[1];
  v31[0] = a1;
  v31[1] = &v30;
  v31[2] = v28;
  v31[3] = v27;
  v31[4] = &v29;
  if (v23 != v24)
  {
    v25 = v23 + 1;
    while (v25 != v24)
    {
      v26 = sub_720CAC(v31, *(v25 - 1), *v25);
      ++v25;
      if (v26)
      {
        v24 = v25 - 2;
        break;
      }
    }

    v23 = v24;
    v24 = a2[1];
  }

  return v23 != v24;
}

uint64_t sub_718648(uint64_t a1, int **a2, void *a3, int **a4, int **a5, int a6)
{
  v6 = *a4;
  v7 = **a4;
  v8 = (*a4 - v7);
  v9 = *v8;
  if (*(a4 + 38))
  {
    if (v9 < 0x39)
    {
      return 0;
    }

    if (v8[28])
    {
      if ((*(v6 + v8[28]) & 2) != 0 || (*(v6 + v8[28]) & 5) == 4 || (*(v6 + v8[28]) & 0x21) == 0x20)
      {
        goto LABEL_23;
      }

      if (v9 <= 0x9A)
      {
        return 0;
      }
    }

    else if (v9 <= 0x9A)
    {
      return 0;
    }

    if (!v8[77] || (*(v6 + v8[77]) & 2) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v9 < 0x39)
    {
      return 0;
    }

    if (v8[28])
    {
      if ((*(v6 + v8[28]) & 1) != 0 || (*(v6 + v8[28]) & 6) == 4 || (*(v6 + v8[28]) & 0x22) == 0x20)
      {
        goto LABEL_23;
      }

      if (v9 < 0x9B)
      {
        return 0;
      }
    }

    else if (v9 <= 0x9A)
    {
      return 0;
    }

    if (!v8[77] || (*(v6 + v8[77]) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_23:
  v11 = v8[23];
  if (v11)
  {
    v12 = *(v6 + v11);
    v13 = v12 > 0x36;
    v14 = (1 << v12) & 0x44000000000008;
    if (!v13 && v14 != 0)
    {
      return 0;
    }
  }

  v16 = -v7;
  v17 = (*a3 - **a3);
  if (*v17 >= 0x2Fu)
  {
    v18 = v17[23];
    if (v18)
    {
      if (*(*a3 + v18) == 50)
      {
        v19 = a3;
        v20 = a2;
        v21 = a1;
        v22 = a4;
        v23 = a5;
        if (sub_710994(a1, a4, a5, a6))
        {
          return 0;
        }

        a4 = v22;
        v6 = *v22;
        v16 = -**v22;
        a2 = v20;
        a1 = v21;
        a3 = v19;
        a5 = v23;
      }
    }
  }

  v24 = (v6 + v16);
  if (*v24 >= 0x2Fu)
  {
    v25 = v24[23];
    if (v25)
    {
      if ((*(v6 + v25) | 2) == 0xA)
      {
        return 0;
      }
    }
  }

  v26 = a3;
  v27 = a2;
  v28 = a1;
  v29 = a5;
  v30 = a4;
  v31 = sub_70DE9C(*(a1 + 888), a5, a4);
  v32 = *v30;
  v33 = (*v30 - **v30);
  v34 = *v33;
  if (v34 < 0x2F)
  {
    v35 = 1;
    v36 = v27;
    v37 = v28;
    v38 = v26;
    goto LABEL_47;
  }

  v39 = v33[23];
  v38 = v26;
  if (!v33[23])
  {
    v35 = 1;
    v36 = v27;
    v37 = v28;
LABEL_47:
    v42 = v29;
    v43 = *v29;
    v44 = (*v29 - **v29);
    v45 = *v44;
    if (v45 < 0x2F)
    {
      goto LABEL_71;
    }

    goto LABEL_57;
  }

  v40 = v32[v39];
  if (v40 > 0x2A)
  {
    v36 = v27;
    v37 = v28;
    v42 = v29;
    if (v40 == 44)
    {
      goto LABEL_54;
    }

    if (v40 != 43)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v41 = v40 == 6 || v40 == 12;
    v36 = v27;
    v37 = v28;
    v42 = v29;
    if (!v41)
    {
LABEL_56:
      v35 = v32[v39] != 14;
      v43 = *v42;
      v44 = (*v42 - **v42);
      v45 = *v44;
      if (v45 < 0x2F)
      {
        goto LABEL_71;
      }

      goto LABEL_57;
    }
  }

  if (v34 >= 0x9B && v33[77] && (v32[v33[77] + 2] & 0x20) != 0)
  {
    goto LABEL_56;
  }

LABEL_54:
  v35 = 0;
  v43 = *v42;
  v44 = (*v42 - **v42);
  v45 = *v44;
  if (v45 < 0x2F)
  {
    goto LABEL_71;
  }

LABEL_57:
  if (v44[23])
  {
    v46 = *(v43 + v44[23]);
    v13 = v46 > 0x36;
    v47 = (1 << v46) & 0x44000000000008;
    if (!v13 && v47 != 0)
    {
      if (*(v42 + 38))
      {
        if (v45 < 0x9B)
        {
          goto LABEL_71;
        }

        v49 = v44[77];
        if (!v44[77])
        {
          goto LABEL_71;
        }

        v50 = 2;
      }

      else
      {
        if (v45 < 0x9B)
        {
          goto LABEL_71;
        }

        v49 = v44[77];
        if (!v44[77])
        {
          goto LABEL_71;
        }

        v50 = 1;
      }

      v51 = *(v43 + v49);
      if ((v51 & v50) != 0 && !v35 && v31 < 0.0 != ((v51 >> 15) & 1))
      {
        return 0;
      }
    }
  }

LABEL_71:
  v52 = *v38;
  v53 = (v52 - *v52);
  if (*v53 >= 0x43u)
  {
    v54 = v53[33];
    if (v54)
    {
      v55 = *(v52 + v54);
      if (v34 >= 0x2F && v55 < *(v37 + 1516))
      {
        goto LABEL_82;
      }

LABEL_91:
      result = 1;
      v63 = *v30;
      v64 = &v63[-*v63];
      if (*v64 < 0x9Bu)
      {
        return result;
      }

      goto LABEL_92;
    }
  }

  if (v34 < 0x2F || *(v37 + 1516) == 0)
  {
    goto LABEL_91;
  }

LABEL_82:
  v58 = v33[23];
  if (!v58)
  {
    goto LABEL_91;
  }

  v59 = v32[v58];
  v13 = v59 > 0x2F;
  v60 = (1 << v59) & 0xE2E040048000;
  if (v13 || v60 == 0)
  {
    goto LABEL_91;
  }

  v62 = sub_31DDCC(*(v37 + 888), v30[4] & 0xFFFFFFFFFFFFFFLL);
  if (v62 <= 0xFFFFFFFEFFFFFFFFLL && v62)
  {
    result = 1;
    v36 = v27;
    v63 = *v30;
    v64 = *v30 - **v30;
    if (*v64 < 0x9Bu)
    {
      return result;
    }
  }

  else
  {
    result = sub_312F00(v30);
    v36 = v27;
    v63 = *v30;
    v64 = *v30 - **v30;
    if (*v64 < 0x9Bu)
    {
      return result;
    }
  }

LABEL_92:
  v65 = *(v64 + 77);
  if (v65 && (v63[v65 + 2] & 2) != 0)
  {
    v66 = *v36;
    v67 = (*v36 - **v36);
    if (*v67 < 0x9Bu)
    {
      return 0;
    }

    v68 = v67[77];
    if (!v68)
    {
      return 0;
    }

    return result & ((*(v66 + v68 + 2) & 2) >> 1);
  }

  return result;
}

unint64_t sub_718B5C(void *a1, void *a2)
{
  v3 = (a1 + 120);
  if (a1[123])
  {
    v5 = a1[122];
    if (v5)
    {
      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    a1[122] = 0;
    v7 = a1[121];
    if (v7)
    {
      bzero(*v3, 8 * v7);
    }

    a1[123] = 0;
  }

  result = sub_4D1DC0(a2);
  if (result)
  {
    v9 = result;
    for (i = 0; i != v9; ++i)
    {
      v11 = sub_4D1F50(a2, i);
      v12 = *(v11 + 36);
      LODWORD(v13) = *(v11 + 32);
      WORD2(v13) = v12;
      BYTE6(v13) = (v12 & 0x20000000) == 0;
      v14 = &v13;
      result = sub_71E858(v3, &v13, &unk_229EB70, &v14);
      *(result + 24) = i;
    }
  }

  return result;
}

void sub_718C4C(uint64_t a1, int **a2, int ***a3, unint64_t **a4, double a5)
{
  a4[1] = *a4;
  v6 = *a3;
  if (v6 == a3[1])
  {
    return;
  }

  if (fabs(sub_70E16C(a1, a2, v6, a5)) <= *(a1 + 1000))
  {
    if (0xCCCCCCCCCCCCCCCDLL * (a3[1] - *a3) < 2 || (v13 = sub_605E3C(a3, 1uLL), fabs(sub_70E16C(a1, a2, v13, v14)) > *(a1 + 1016)))
    {
      v16 = a4[1];
      v15 = a4[2];
      if (v16 < v15)
      {
        *v16 = 0;
        v17 = (v16 + 8);
LABEL_72:
        a4[1] = v17;
        return;
      }

      v18 = *a4;
      v19 = v16 - *a4;
      v20 = (v19 >> 3) + 1;
      if (!(v20 >> 61))
      {
        v21 = v15 - v18;
        if (v21 >> 2 > v20)
        {
          v20 = v21 >> 2;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          if (!(v22 >> 61))
          {
            operator new();
          }

          goto LABEL_266;
        }

        v65 = (8 * (v19 >> 3));
        *v65 = 0;
        v17 = v65 + 1;
        memcpy(0, v18, v19);
        *a4 = 0;
        a4[1] = v17;
        a4[2] = 0;
        if (!v18)
        {
          goto LABEL_72;
        }

        goto LABEL_71;
      }

      goto LABEL_265;
    }
  }

  sub_7126C8(a1, a2, a3, a4);
  if (*a4 != a4[1])
  {
    return;
  }

  v167[0] = a1;
  v167[1] = a2;
  v11 = *a3;
  v10 = a3[1];
  v168[0] = a1;
  v168[1] = a2;
  v168[2] = v167;
  if (v11 == v10)
  {
    v12 = v11;
  }

  else
  {
    while (!sub_721728(v168, v11))
    {
      v11 += 5;
      if (v11 == v10)
      {
        v11 = v10;
        break;
      }
    }

    v12 = v11;
    v11 = *a3;
    v10 = a3[1];
  }

  if (v12 == v10)
  {
    v12 = v11;
  }

  if (v12 == v10)
  {
    v23 = v11;
  }

  else
  {
    v23 = v12;
  }

  v24 = v23[4];
  v25 = v24 & 0xFF000000000000;
  v26 = sub_2B51D8(*(a1 + 888), v24 & 0xFFFFFFFFFFFFLL);
  v27 = (v26 - *v26);
  v28 = *v27;
  if (v25)
  {
    if (v28 < 0x29)
    {
      goto LABEL_61;
    }

    v29 = v27[20];
    if (!v29)
    {
      goto LABEL_61;
    }

    goto LABEL_34;
  }

  if (v28 >= 0x27)
  {
    v29 = v27[19];
    if (v29)
    {
LABEL_34:
      if (*(v26 + v29 + *(v26 + v29)) != 1)
      {
        goto LABEL_61;
      }

      v30 = a3[1] - *a3;
      if (!v30)
      {
        goto LABEL_61;
      }

      v31 = 0;
      v32 = 0;
      v33 = 0xCCCCCCCCCCCCCCCDLL * (v30 >> 3);
      do
      {
        v34 = sub_605E3C(a3, v32);
        v35 = *(v34 + 32);
        v36 = v23[4];
        v39 = v35 == v36;
        v37 = HIDWORD(v35) & 0xFFFFFF;
        v38 = HIDWORD(v36) & 0xFFFFFF;
        v39 = v39 && v37 == v38;
        if (v39)
        {
          goto LABEL_37;
        }

        v40 = v34;
        if (fabs(sub_70E2E0(a1, a2, v34)) > *(a1 + 1000))
        {
          break;
        }

        v41 = v23[4];
        v42 = v41 & 0xFF000000000000;
        v43 = sub_2B51D8(*(a1 + 888), v41 & 0xFFFFFFFFFFFFLL);
        v44 = (v43 - *v43);
        v45 = *v44;
        if (v42)
        {
          if (v45 >= 0x29)
          {
            v46 = v44[20];
            if (v46)
            {
              goto LABEL_49;
            }
          }
        }

        else if (v45 >= 0x27)
        {
          v46 = v44[19];
          if (v46)
          {
LABEL_49:
            v47 = *(v43 + v46 + *(v43 + v46));
            goto LABEL_51;
          }
        }

        v47 = 0;
LABEL_51:
        v48 = *(v40 + 32);
        v49 = v48 & 0xFF000000000000;
        v50 = sub_2B51D8(*(a1 + 888), v48 & 0xFFFFFFFFFFFFLL);
        v51 = (v50 - *v50);
        v52 = *v51;
        if (v49)
        {
          if (v52 >= 0x29)
          {
            v53 = v51[20];
            if (v53)
            {
              goto LABEL_57;
            }
          }
        }

        else if (v52 >= 0x27)
        {
          v53 = v51[19];
          if (v53)
          {
LABEL_57:
            if (v47)
            {
              v54 = *(v50 + v53 + *(v50 + v53));
              if (v54)
              {
                if (v54 - v47 >= *(a1 + 1168))
                {
                  v23 = &(*a3)[v31];
                }
              }
            }
          }
        }

LABEL_37:
        ++v32;
        v31 += 5;
      }

      while (v33 != v32);
    }
  }

LABEL_61:
  v55 = *a3;
  v56 = a3[1] - *a3;
  if (v56)
  {
    v57 = 0;
    v58 = 0xCCCCCCCCCCCCCCCDLL * (v56 >> 3);
    do
    {
      sub_605E3C(a3, v57++);
    }

    while (v58 != v57);
    v55 = *a3;
  }

  v168[0] = 0xCCCCCCCCCCCCCCCDLL * ((v23 - v55) >> 3);
  v59 = sub_70E2E0(a1, a2, v23);
  v60 = *v23;
  v61 = (*v23 - **v23);
  v62 = *v61;
  if (v62 < 0x2F)
  {
    goto LABEL_78;
  }

  if (!v61[23] || (v63 = *(v60 + v61[23]), v63 > 0x2C))
  {
LABEL_75:
    if (v62 >= 0x43 && v61[33])
    {
      v64 = *(v60 + v61[33]);
      goto LABEL_79;
    }

LABEL_78:
    v64 = 0;
    goto LABEL_79;
  }

  if (((1 << v63) & 0x180000105240) == 0)
  {
    if (!*(v60 + v61[23]))
    {
      v64 = *(a1 + 1584);
      goto LABEL_79;
    }

    goto LABEL_75;
  }

  v64 = *(a1 + 1588);
LABEL_79:
  v66 = *a2;
  v67 = (*a2 - **a2);
  v68 = *v67;
  if (v68 < 0x2F)
  {
    goto LABEL_89;
  }

  if (v67[23])
  {
    v69 = *(v66 + v67[23]);
    if (v69 <= 0x2C)
    {
      if (((1 << v69) & 0x180000105240) != 0)
      {
        LODWORD(v70) = *(a1 + 1588);
        goto LABEL_90;
      }

      if (!*(v66 + v67[23]))
      {
        LODWORD(v70) = *(a1 + 1584);
        goto LABEL_90;
      }
    }
  }

  if (v68 < 0x43)
  {
LABEL_89:
    LODWORD(v70) = 0;
  }

  else
  {
    v70 = v67[33];
    if (v67[33])
    {
      LODWORD(v70) = *(v66 + v70);
    }
  }

LABEL_90:
  v71 = fabs(v59);
  if (v64 != v70)
  {
    goto LABEL_132;
  }

  if (v62 < 0x2F)
  {
    LOBYTE(v72) = 0;
    if (v68 < 0x2F)
    {
      goto LABEL_105;
    }
  }

  else
  {
    v72 = v61[23];
    if (v61[23])
    {
      v73 = *(v60 + v72);
      v74 = v73 > 0x2A;
      v72 = 0x50426810004uLL >> v73;
      if (v74)
      {
        LOBYTE(v72) = 0;
      }
    }

    if (v68 < 0x2F)
    {
      goto LABEL_105;
    }
  }

  if (v67[23])
  {
    v75 = *(v66 + v67[23]);
    v74 = v75 > 0x2A;
    v76 = (1 << v75) & 0x50426810004;
    if (!v74 && v76 != 0)
    {
      if ((v72 & 1) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_106;
    }
  }

LABEL_105:
  if (v72)
  {
    goto LABEL_132;
  }

LABEL_106:
  v79 = v62 >= 0x2F && (v78 = v61[23]) != 0 && *(v60 + v78) == 28;
  if (v68 >= 0x2F && v67[23])
  {
    v79 ^= *(v66 + v67[23]) == 28;
  }

  if ((v79 & 1) == 0)
  {
    v80 = sub_312F00(v23);
    if (v80 == sub_312F00(a2))
    {
      v81 = (*v23 - **v23);
      if (*v81 >= 0x9Bu && (v82 = v81[77]) != 0)
      {
        v83 = (*(*v23 + v82 + 1) >> 4) & 1;
      }

      else
      {
        v83 = 0;
      }

      v84 = (*a2 - **a2);
      if (*v84 >= 0x9Bu && (v85 = v84[77]) != 0)
      {
        if (v83 != (*(*a2 + v85 + 1) & 0x10) >> 4)
        {
          goto LABEL_132;
        }
      }

      else if (v83)
      {
        goto LABEL_132;
      }

      if (v71 <= *(a1 + 1048) || v71 <= *(a1 + 1016) && ((v86 = *a3, v87 = a3[1], v88 = v87 - *a3 - 40, v89 = sub_712AA4(a1, a2, v23), v88 < 0x28) ? (v90 = v87 == v86) : (v90 = 1), !v90 || v89))
      {
        sub_7125C0(a4, v168);
        return;
      }
    }
  }

LABEL_132:
  v166 = sub_311544(v23);
  if ((sub_420B0C((a1 + 896), &v166) & 1) == 0)
  {
    v165 = sub_3116D0(a2);
    if ((sub_420B0C((a1 + 896), &v165) & 1) == 0)
    {
      v92 = *a2;
      v94 = **a2;
      v95 = (*a2 - v94);
      v96 = *v95;
      if (*(a2 + 38))
      {
        if (v96 < 0x49 || (v97 = v95[36]) == 0)
        {
LABEL_143:
          v98 = -1;
LABEL_144:
          v99 = -v94;
          v100 = (*v23 - **v23);
          v101 = *v100;
          if (*(v23 + 38))
          {
            if (v101 < 0x4B || (v102 = v100[37]) == 0)
            {
LABEL_151:
              v103 = 0xFFFF;
LABEL_152:
              v104 = v98 + 18000;
              v105 = v98 - 18000;
              if ((v104 >> 5) < 0x465u)
              {
                v105 = v104;
              }

              v106 = v103 - v105;
              if (v106 > 18000)
              {
                v106 -= 36000;
              }

              if (v106 < -17999)
              {
                v106 += 36000;
              }

              v91 = v106 / 100.0;
              v93 = (v92 + v99);
              if (*v93 < 0x2Fu)
              {
                goto LABEL_165;
              }

LABEL_159:
              v107 = v93[23];
              if (v107)
              {
                v108 = *(v92 + v107);
                v74 = v108 > 0x2A;
                v109 = (1 << v108) & 0x50426810004;
                v110 = v74 || v109 == 0;
                if (!v110 && fabs(v91) <= *(a1 + 1016))
                {
                  v141 = a4[1];
                  v140 = a4[2];
                  if (v141 < v140)
                  {
                    *v141 = v168[0];
                    v17 = (v141 + 8);
                    goto LABEL_72;
                  }

                  v18 = *a4;
                  v154 = v141 - *a4;
                  v155 = (v154 >> 3) + 1;
                  if (!(v155 >> 61))
                  {
                    v156 = v140 - v18;
                    if (v156 >> 2 > v155)
                    {
                      v155 = v156 >> 2;
                    }

                    if (v156 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v157 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v157 = v155;
                    }

                    if (v157)
                    {
                      if (!(v157 >> 61))
                      {
                        operator new();
                      }

LABEL_266:
                      sub_1808();
                    }

                    v159 = (8 * (v154 >> 3));
                    *v159 = v168[0];
                    v17 = v159 + 1;
                    memcpy(0, v18, v154);
                    *a4 = 0;
                    a4[1] = v17;
                    a4[2] = 0;
                    if (!v18)
                    {
                      goto LABEL_72;
                    }

LABEL_71:
                    operator delete(v18);
                    goto LABEL_72;
                  }

LABEL_265:
                  sub_1794();
                }
              }

              goto LABEL_165;
            }
          }

          else
          {
            if (v101 < 0x49)
            {
              goto LABEL_151;
            }

            v102 = v100[36];
            if (!v102)
            {
              goto LABEL_151;
            }
          }

          v103 = *(*v23 + v102);
          goto LABEL_152;
        }
      }

      else
      {
        if (v96 < 0x4B)
        {
          goto LABEL_143;
        }

        v97 = v95[37];
        if (!v97)
        {
          goto LABEL_143;
        }
      }

      v98 = *(v92 + v97);
      goto LABEL_144;
    }
  }

  v91 = sub_70E2E0(a1, a2, v23);
  v92 = *a2;
  v93 = (*a2 - **a2);
  if (*v93 >= 0x2Fu)
  {
    goto LABEL_159;
  }

LABEL_165:
  v111 = a3[1] - *a3;
  if (!v111)
  {
    if (v71 <= *(a1 + 1040))
    {
      goto LABEL_205;
    }

    goto LABEL_202;
  }

  v112 = 0;
  v113 = 0;
  v114 = 0xCCCCCCCCCCCCCCCDLL * (v111 >> 3);
  do
  {
    v115 = fabs(sub_70E2E0(a1, a2, &(*a3)[v112 / 8]));
    v116 = *(a1 + 1024);
    v117 = *a3;
    v118 = *a2;
    v119 = **a2;
    if (v115 < v116)
    {
LABEL_192:
      v132 = (v118 - v119);
      if (*v132 >= 0x9Bu && (v133 = v132[77]) != 0 && (*(v118 + v133 + 1) & 0x10) != 0 || (v134 = *&v117[v112], v135 = (v134 - *v134), *v135 < 0x9Bu) || (v136 = v135[77]) == 0 || (*(v134 + v136 + 1) & 0x10) == 0)
      {
        if (sub_31EE90(*(a1 + 888), a2[4] & 0xFFFFFFFFFFFFFFLL, *&v117[v112 + 32] & 0xFFFFFFFFFFFFFFLL))
        {
          operator new();
        }
      }

      goto LABEL_167;
    }

    v120 = v118 - v119;
    v121 = *(v118 - v119);
    if (*(a2 + 38))
    {
      if (v121 >= 0x49)
      {
        v122 = *(v120 + 36);
        if (v122)
        {
          goto LABEL_175;
        }
      }
    }

    else if (v121 >= 0x4B)
    {
      v122 = *(v120 + 37);
      if (v122)
      {
LABEL_175:
        v123 = *(v118 + v122);
        goto LABEL_177;
      }
    }

    v123 = -1;
LABEL_177:
    v124 = *&v117[v112];
    v125 = (v124 - *v124);
    v126 = *v125;
    if (v117[v112 + 38])
    {
      if (v126 >= 0x4B)
      {
        v127 = v125[37];
        if (v127)
        {
          goto LABEL_183;
        }
      }
    }

    else if (v126 >= 0x49)
    {
      v127 = v125[36];
      if (v127)
      {
LABEL_183:
        v128 = *(v124 + v127);
        goto LABEL_185;
      }
    }

    v128 = 0xFFFF;
LABEL_185:
    v129 = v123 + 18000;
    v130 = v123 - 18000;
    if ((v129 >> 5) < 0x465u)
    {
      v130 = v129;
    }

    v131 = v128 - v130;
    if (v131 > 18000)
    {
      v131 -= 36000;
    }

    if (v131 < -17999)
    {
      v131 += 36000;
    }

    if (fabs(v131 / 100.0) < v116)
    {
      goto LABEL_192;
    }

LABEL_167:
    ++v113;
    v112 += 40;
  }

  while (v114 != v113);
  if (v71 <= *(a1 + 1040))
  {
LABEL_205:
    v138 = a4[1];
    v137 = a4[2];
    if (v138 >= v137)
    {
      v142 = *a4;
      v143 = v138 - *a4;
      v144 = (v143 >> 3) + 1;
      if (v144 >> 61)
      {
        sub_1794();
      }

      v145 = v137 - v142;
      if (v145 >> 2 > v144)
      {
        v144 = v145 >> 2;
      }

      if (v145 >= 0x7FFFFFFFFFFFFFF8)
      {
        v146 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v146 = v144;
      }

      if (v146)
      {
        if (!(v146 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v158 = (8 * (v143 >> 3));
      *v158 = v168[0];
      v139 = v158 + 1;
      memcpy(0, v142, v143);
      *a4 = 0;
      a4[1] = v139;
      a4[2] = 0;
      if (v142)
      {
        operator delete(v142);
      }
    }

    else
    {
      *v138 = v168[0];
      v139 = (v138 + 8);
    }

    a4[1] = v139;
    return;
  }

LABEL_202:
  v166 = sub_3116D0(a2);
  if (sub_420B0C((a1 + 896), &v166))
  {
    v166 = 0;
    sub_7125C0(a4, &v166);
    return;
  }

  if (v71 <= *(a1 + 1064) && (sub_70EB5C(a1, a2, a3, v168[0]) & 1) == 0)
  {
    sub_7125C0(a4, v168);
    return;
  }

  v147 = sub_712C28(*a3, a3[1], a2);
  v148 = 0xCCCCCCCCCCCCCCCDLL * (v147 - *a3);
  v166 = v148;
  v149 = sub_6DF738(a2, v147);
  v165 = a1;
  if (0xCCCCCCCCCCCCCCCDLL * (a3[1] - *a3) >= 2 && fabs(v149) <= *(a1 + 1072) && (sub_70EB5C(a1, a2, a3, v148) & 1) == 0 && (*(a1 + 1688) != 1 || (sub_712C9C(&v165, a2, v147) & 1) != 0))
  {
    v163 = &v166;
    goto LABEL_261;
  }

  if (a3[1] - *a3 == 40 && (sub_712C9C(&v165, a2, v23) & 1) != 0)
  {
    goto LABEL_256;
  }

  if (v71 > *(a1 + 1032))
  {
    goto LABEL_263;
  }

  v150 = (*a2 - **a2);
  if (*v150 >= 0x9Bu && (v151 = v150[77]) != 0)
  {
    v152 = *(*a2 + v151);
    if (v152)
    {
      v153 = 1;
    }

    else
    {
      v153 = (v152 >> 1) & 1;
    }
  }

  else
  {
    v153 = 0;
  }

  v160 = (*v23 - **v23);
  if (*v160 < 0x9Bu || (v161 = v160[77]) == 0)
  {
    if ((v153 & 1) == 0)
    {
      goto LABEL_263;
    }

    goto LABEL_255;
  }

  v162 = *(*v23 + v161);
  if (v162)
  {
    if (v153)
    {
      goto LABEL_263;
    }

    goto LABEL_255;
  }

  if (v153 != ((v162 >> 1) & 1))
  {
LABEL_255:
    if (sub_70EB5C(a1, a2, a3, v168[0]))
    {
      goto LABEL_263;
    }

LABEL_256:
    v163 = v168;
LABEL_261:
    sub_7125C0(a4, v163);
    return;
  }

LABEL_263:
  if (fabs(sub_70E2E0(a1, a2, *a3)) <= *(a1 + 1000))
  {
    v164 = 0;
    sub_7125C0(a4, &v164);
  }
}

void sub_719E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

double sub_719E74(uint64_t a1, int **a2, int **a3)
{
  v3 = *(a2 + 9);
  if (*(a1 + 912) == 1)
  {
    v4 = a2[1];
    v5 = (v4 - *v4);
    v6 = *v5;
    if ((v3 & 0x20000000) != 0)
    {
      if (v6 < 9 || (v7 = v5[4]) == 0)
      {
LABEL_16:
        v11 = 0;
        v12 = a3[1];
        v13 = (v12 - *v12);
        v14 = *v13;
        if ((*(a3 + 39) & 0x20) == 0)
        {
          goto LABEL_17;
        }

LABEL_13:
        if (v14 < 5)
        {
          goto LABEL_19;
        }

        v15 = v13[2];
        if (!v15)
        {
          goto LABEL_19;
        }

        goto LABEL_29;
      }
    }

    else
    {
      if (v6 < 5)
      {
        goto LABEL_16;
      }

      v7 = v5[2];
      if (!v5[2])
      {
        goto LABEL_16;
      }
    }

    v11 = *(v4 + v7);
    v12 = a3[1];
    v13 = (v12 - *v12);
    v14 = *v13;
    if ((*(a3 + 39) & 0x20) == 0)
    {
LABEL_17:
      if (v14 < 9 || (v15 = v13[4]) == 0)
      {
LABEL_19:
        v16 = 0;
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    goto LABEL_13;
  }

  v8 = (*a2 - **a2);
  v9 = *v8;
  if ((v3 & 0x20000000) != 0)
  {
    if (v9 < 0x4B || (v10 = v8[37]) == 0)
    {
LABEL_26:
      v11 = -1;
      v12 = *a3;
      v17 = (*a3 - **a3);
      v18 = *v17;
      if ((*(a3 + 39) & 0x20) == 0)
      {
        goto LABEL_27;
      }

LABEL_23:
      if (v18 >= 0x49)
      {
        v15 = v17[36];
        if (v15)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_30;
    }
  }

  else
  {
    if (v9 < 0x49)
    {
      goto LABEL_26;
    }

    v10 = v8[36];
    if (!v8[36])
    {
      goto LABEL_26;
    }
  }

  v11 = *(*a2 + v10);
  v12 = *a3;
  v17 = (*a3 - **a3);
  v18 = *v17;
  if ((*(a3 + 39) & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_27:
  if (v18 >= 0x4B)
  {
    v15 = v17[37];
    if (v15)
    {
LABEL_29:
      v16 = *(v12 + v15);
      goto LABEL_31;
    }
  }

LABEL_30:
  v16 = 0xFFFF;
LABEL_31:
  v19 = v11 + 18000;
  v20 = v11 - 18000;
  if ((v19 >> 5) < 0x465u)
  {
    v20 = v19;
  }

  v21 = v16 - v20;
  if (v21 > 18000)
  {
    v21 -= 36000;
  }

  if (v21 < -17999)
  {
    v21 += 36000;
  }

  return v21 / 100.0;
}

uint64_t sub_71A018(uint64_t a1, int **a2, int **a3)
{
  v3 = *a2;
  v4 = (*a2 - **a2);
  v5 = *v4;
  if (*(a2 + 38))
  {
    if (v5 < 0x47)
    {
      return 0;
    }

    v6 = v4[35];
    if (!v6 || (*&v3[v6] & 2) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v5 < 0x47)
    {
      return 0;
    }

    v7 = v4[35];
    if (!v7 || (*&v3[v7] & 1) == 0)
    {
      return 0;
    }
  }

  v8 = (*a3 - **a3);
  v9 = *v8;
  if (*(a3 + 38))
  {
    if (v9 >= 0x47)
    {
      v10 = v8[35];
      if (v10)
      {
        LODWORD(result) = 2;
        return (*(*a3 + v10) & result) == 0;
      }
    }

    return 1;
  }

  if (v9 < 0x47)
  {
    return 1;
  }

  v10 = v8[35];
  result = 1;
  if (v10)
  {
    return (*(*a3 + v10) & result) == 0;
  }

  return result;
}

uint64_t sub_71A0D0(uint64_t a1, int **a2, int **a3, int **a4)
{
  v8 = sub_31DDCC(*(a1 + 888), a2[4] & 0xFFFFFFFFFFFFFFLL);
  if (v8 > 0xFFFFFFFEFFFFFFFFLL || v8 == 0)
  {
    return 0;
  }

  result = sub_31EE90(*(a1 + 888), a2[4] & 0xFFFFFFFFFFFFFFLL, a4[4] & 0xFFFFFFFFFFFFFFLL);
  if (!result)
  {
    return result;
  }

  if (sub_31EE90(*(a1 + 888), a2[4] & 0xFFFFFFFFFFFFFFLL, a3[4] & 0xFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  v11 = *a2;
  v12 = (*a2 - **a2);
  v13 = *v12;
  if (*(a2 + 38))
  {
    if (v13 < 0x47)
    {
      return 0;
    }

    v14 = v12[35];
    if (!v14)
    {
      return 0;
    }

    v15 = *&v11[v14];
    if ((v15 & 0x141510) != 0)
    {
      goto LABEL_20;
    }

    v16 = 64;
  }

  else
  {
    if (v13 < 0x47)
    {
      return 0;
    }

    v14 = v12[35];
    if (!v14)
    {
      return 0;
    }

    v15 = *&v11[v14];
    if ((v15 & 0xA0A88) != 0)
    {
      goto LABEL_20;
    }

    v16 = 32;
  }

  if ((v16 & v15) == 0)
  {
    return 0;
  }

LABEL_20:
  v17 = *a4;
  v18 = (*a4 - **a4);
  v19 = *v18;
  if (*(a4 + 38))
  {
    if (v19 < 0x47)
    {
      return 0;
    }

    v20 = v18[35];
    if (!v20)
    {
      return 0;
    }

    v21 = *&v17[v20];
    if ((v21 & 0x141510) == 0)
    {
      v22 = 64;
      goto LABEL_29;
    }
  }

  else
  {
    if (v19 < 0x47)
    {
      return 0;
    }

    v23 = v18[35];
    if (!v23)
    {
      return 0;
    }

    v21 = *&v17[v23];
    if ((v21 & 0xA0A88) == 0)
    {
      v22 = 32;
LABEL_29:
      if ((v22 & v21) != 0)
      {
        goto LABEL_30;
      }

      return 0;
    }
  }

LABEL_30:
  v24 = *&v11[v14];
  if (*(a2 + 38))
  {
    if ((v24 & 0x141510) != 0)
    {
      goto LABEL_36;
    }

    v25 = 64;
  }

  else
  {
    if ((v24 & 0xA0A88) != 0)
    {
      goto LABEL_36;
    }

    v25 = 32;
  }

  if ((v25 & v24) == 0)
  {
    return 1;
  }

LABEL_36:
  v26 = *a3;
  v27 = (*a3 - **a3);
  v28 = *v27;
  if (*(a3 + 38))
  {
    if (v28 >= 0x47)
    {
      v29 = v27[35];
      if (v29)
      {
        v30 = *&v26[v29];
        if ((v30 & 0x141510) == 0)
        {
          return (v30 & 0x40) == 0;
        }

        return 0;
      }
    }

    return 1;
  }

  if (v28 < 0x47)
  {
    return 1;
  }

  v31 = v27[35];
  if (!v31)
  {
    return 1;
  }

  v32 = *&v26[v31];
  if ((v32 & 0xA0A88) != 0)
  {
    return 0;
  }

  return (v32 & 0x20) == 0;
}

BOOL sub_71A340(int a1)
{
  result = 1;
  if ((a1 - 21) > 0x2D || ((1 << (a1 - 21)) & 0x250000002281) == 0)
  {
    return a1 == 2;
  }

  return result;
}

BOOL sub_71A37C(int a1)
{
  result = 1;
  if ((a1 - 20) > 0x2D || ((1 << (a1 - 20)) & 0x250000002281) == 0)
  {
    return a1 == 1;
  }

  return result;
}

uint64_t sub_71A3B8(int **a1, int **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 8);
    v6 = *v5;
    v7 = (v6 - *v6);
    v8 = *v7;
    if (*(v5 + 38))
    {
      if (v8 > 0x46)
      {
        v9 = v7[35];
        if (v9)
        {
          v3 = 0;
          v10 = *(v6 + v9);
          while (1)
          {
            v12 = (*a1 - **a1);
            v13 = *v12;
            if (*(a1 + 38))
            {
              if (v13 >= 0x47)
              {
                v14 = v12[35];
                if (v14)
                {
                  v15 = 2;
LABEL_17:
                  v11 = (*(*a1 + v14) & v15) != 0;
                  goto LABEL_9;
                }
              }
            }

            else if (v13 >= 0x47)
            {
              v14 = v12[35];
              if (v14)
              {
                v15 = 1;
                goto LABEL_17;
              }
            }

            v11 = 0;
LABEL_9:
            v3 += v11 ^ ((v10 & 2) == 0);
            a1 += 5;
            if (a1 == a2)
            {
              return v3;
            }
          }
        }

        v3 = 0;
        while (1)
        {
          v28 = (*a1 - **a1);
          v29 = *v28;
          if (*(a1 + 38))
          {
            break;
          }

          if (v29 < 0x47)
          {
            goto LABEL_44;
          }

          v30 = v28[35];
          v27 = 1;
          if (v30)
          {
            goto LABEL_52;
          }

LABEL_45:
          v3 += v27;
          a1 += 5;
          if (a1 == a2)
          {
            return v3;
          }
        }

        if (v29 >= 0x47)
        {
          v30 = v28[35];
          if (v28[35])
          {
            LODWORD(v27) = 2;
LABEL_52:
            v27 = (*(*a1 + v30) & v27) == 0;
            goto LABEL_45;
          }
        }

LABEL_44:
        v27 = 1;
        goto LABEL_45;
      }

      v3 = 0;
      while (1)
      {
        v24 = (*a1 - **a1);
        v25 = *v24;
        if (*(a1 + 38))
        {
          break;
        }

        if (v25 < 0x47)
        {
          goto LABEL_34;
        }

        v26 = v24[35];
        v23 = 1;
        if (v26)
        {
          goto LABEL_42;
        }

LABEL_35:
        v3 += v23;
        a1 += 5;
        if (a1 == a2)
        {
          return v3;
        }
      }

      if (v25 >= 0x47)
      {
        v26 = v24[35];
        if (v24[35])
        {
          LODWORD(v23) = 2;
LABEL_42:
          v23 = (*(*a1 + v26) & v23) == 0;
          goto LABEL_35;
        }
      }

LABEL_34:
      v23 = 1;
      goto LABEL_35;
    }

    v3 = 0;
    while (1)
    {
      v17 = *a1;
      v18 = (*a1 - **a1);
      v19 = *v18;
      if (*(a1 + 38))
      {
        if (v19 >= 0x47)
        {
          v20 = v18[35];
          if (v20)
          {
            v21 = (*&v17[v20] & 2) != 0;
            if (v8 >= 0x47)
            {
              goto LABEL_31;
            }

            goto LABEL_19;
          }
        }
      }

      else if (v19 >= 0x47)
      {
        v22 = v18[35];
        if (v22)
        {
          v21 = (*&v17[v22] & 1) != 0;
          if (v8 >= 0x47)
          {
            goto LABEL_31;
          }

          goto LABEL_19;
        }
      }

      v21 = 0;
      if (v8 >= 0x47)
      {
LABEL_31:
        v16 = v7[35];
        if (v7[35])
        {
          LODWORD(v16) = *(v6 + v16) & 1;
        }

        goto LABEL_20;
      }

LABEL_19:
      LODWORD(v16) = 0;
LABEL_20:
      v3 += v21 ^ v16 ^ 1;
      a1 += 5;
      if (a1 == a2)
      {
        return v3;
      }
    }
  }

  return 0;
}

void *sub_71A5FC(void *a1)
{
  v2 = a1[457];
  if (v2)
  {
    a1[458] = v2;
    operator delete(v2);
  }

  v3 = a1[454];
  if (v3)
  {
    a1[455] = v3;
    operator delete(v3);
  }

  v4 = a1[447];
  if (v4)
  {
    a1[448] = v4;
    operator delete(v4);
  }

  v5 = a1[444];
  if (v5)
  {
    a1[445] = v5;
    operator delete(v5);
  }

  sub_5135D0(a1 + 162);
  return a1;
}

uint64_t sub_71A668(int **a1, int **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 8);
    v6 = *v5;
    v7 = (v6 - *v6);
    v8 = *v7;
    if (*(v5 + 38))
    {
      if (v8 > 0x9A)
      {
        v9 = v7[77];
        if (v9)
        {
          v3 = 0;
          v10 = *(v6 + v9);
          while (1)
          {
            v12 = (*a1 - **a1);
            v13 = *v12;
            if (*(a1 + 38))
            {
              if (v13 >= 0x9B)
              {
                v14 = v12[77];
                if (v14)
                {
                  v15 = 2;
LABEL_17:
                  v11 = (*(*a1 + v14) & v15) != 0;
                  goto LABEL_9;
                }
              }
            }

            else if (v13 >= 0x9B)
            {
              v14 = v12[77];
              if (v14)
              {
                v15 = 1;
                goto LABEL_17;
              }
            }

            v11 = 0;
LABEL_9:
            v3 += v11 ^ ((v10 & 2) == 0);
            a1 += 5;
            if (a1 == a2)
            {
              return v3;
            }
          }
        }

        v3 = 0;
        while (1)
        {
          v29 = (*a1 - **a1);
          v30 = *v29;
          if (*(a1 + 38))
          {
            break;
          }

          if (v30 < 0x9B)
          {
            goto LABEL_44;
          }

          v31 = v29[77];
          v32 = 1;
          v28 = 1;
          if (v31)
          {
            goto LABEL_52;
          }

LABEL_45:
          v3 += v28;
          a1 += 5;
          if (a1 == a2)
          {
            return v3;
          }
        }

        if (v30 >= 0x9B)
        {
          v31 = v29[77];
          if (v31)
          {
            v32 = 2;
LABEL_52:
            v28 = (*(*a1 + v31) & v32) == 0;
            goto LABEL_45;
          }
        }

LABEL_44:
        v28 = 1;
        goto LABEL_45;
      }

      v3 = 0;
      while (1)
      {
        v24 = (*a1 - **a1);
        v25 = *v24;
        if (*(a1 + 38))
        {
          break;
        }

        if (v25 < 0x9B)
        {
          goto LABEL_34;
        }

        v26 = v24[77];
        v27 = 1;
        v23 = 1;
        if (v26)
        {
          goto LABEL_42;
        }

LABEL_35:
        v3 += v23;
        a1 += 5;
        if (a1 == a2)
        {
          return v3;
        }
      }

      if (v25 >= 0x9B)
      {
        v26 = v24[77];
        if (v26)
        {
          v27 = 2;
LABEL_42:
          v23 = (*(*a1 + v26) & v27) == 0;
          goto LABEL_35;
        }
      }

LABEL_34:
      v23 = 1;
      goto LABEL_35;
    }

    v3 = 0;
    while (1)
    {
      v17 = *a1;
      v18 = (*a1 - **a1);
      v19 = *v18;
      if (*(a1 + 38))
      {
        if (v19 >= 0x9B)
        {
          v20 = v18[77];
          if (v20)
          {
            v21 = (*&v17[v20] & 2) != 0;
            if (v8 >= 0x9B)
            {
              goto LABEL_31;
            }

            goto LABEL_19;
          }
        }
      }

      else if (v19 >= 0x9B)
      {
        v22 = v18[77];
        if (v22)
        {
          v21 = (*&v17[v22] & 1) != 0;
          if (v8 >= 0x9B)
          {
            goto LABEL_31;
          }

          goto LABEL_19;
        }
      }

      v21 = 0;
      if (v8 >= 0x9B)
      {
LABEL_31:
        v16 = v7[77];
        if (v7[77])
        {
          LODWORD(v16) = *(v6 + v16) & 1;
        }

        goto LABEL_20;
      }

LABEL_19:
      LODWORD(v16) = 0;
LABEL_20:
      v3 += v21 ^ v16 ^ 1;
      a1 += 5;
      if (a1 == a2)
      {
        return v3;
      }
    }
  }

  return 0;
}

uint64_t *sub_71A8B4(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (*a2 >> 16) & 0xFFFF0000;
  v5 = v4 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v6 = v4 | (*a2 << 32);
  }

  else
  {
    v6 = v5 + 1;
  }

  v7 = (v3 >> 16) & 0xFFFF0000 | (v3 << 32);
  if ((v3 & 0xFF000000000000) != 0)
  {
    v8 = (v3 >> 16) & 0xFFFF0000 | (v3 << 32);
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = a1[1];
  if (!*&v9)
  {
    return 0;
  }

  v10 = (((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) ^ ((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
  v11 = (((0x2127599BF4325C37 * (v8 ^ (v7 >> 23))) ^ ((0x2127599BF4325C37 * (v8 ^ (v7 >> 23))) >> 47)) + (v10 << 6) + (v10 >> 2) + 2654435769u) ^ v10;
  v12 = vcnt_s8(v9);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v11;
    if (v11 >= *&v9)
    {
      v13 = v11 % *&v9;
    }
  }

  else
  {
    v13 = v11 & (*&v9 - 1);
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14)
  {
    return 0;
  }

  result = *v14;
  if (*v14)
  {
    if (v12.u32[0] < 2uLL)
    {
      v16 = *&v9 - 1;
      while (1)
      {
        v17 = result[1];
        if (v17 == v11)
        {
          if (*(result + 4) == v2)
          {
            v18 = *(result + 10) == WORD2(v2) && *(result + 22) == BYTE6(v2);
            if (v18 && __PAIR64__(*(result + 14), *(result + 6)) == __PAIR64__(WORD2(v3), v3) && *(result + 30) == BYTE6(v3))
            {
              return result;
            }
          }
        }

        else if ((v17 & v16) != v13)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v19 = result[1];
      if (v19 == v11)
      {
        if (*(result + 4) == v2)
        {
          v20 = *(result + 10) == WORD2(v2) && *(result + 22) == BYTE6(v2);
          if (v20 && __PAIR64__(*(result + 14), *(result + 6)) == __PAIR64__(WORD2(v3), v3) && *(result + 30) == BYTE6(v3))
          {
            return result;
          }
        }
      }

      else
      {
        if (v19 >= *&v9)
        {
          v19 %= *&v9;
        }

        if (v19 != v13)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *sub_71AA98(void *a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v7 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v7 = v6 + 1;
  }

  v8 = (((0x2127599BF4325C37 * (v7 ^ (v6 >> 23))) ^ ((0x2127599BF4325C37 * (v7 ^ (v6 >> 23))) >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
  v9 = (v5 >> 16) & 0xFFFF0000 | (v5 << 32);
  if ((v5 & 0xFF000000000000) != 0)
  {
    v10 = (v5 >> 16) & 0xFFFF0000 | (v5 << 32);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = ((0x2127599BF4325C37 * (v10 ^ (v9 >> 23))) ^ ((0x2127599BF4325C37 * (v10 ^ (v9 >> 23))) >> 47)) + (v8 << 6) + (v8 >> 2) + 2654435769u;
  v12 = v11 ^ v8;
  v13 = a1[1];
  if (!*&v13)
  {
    goto LABEL_43;
  }

  v14 = vcnt_s8(v13);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = v11 ^ v8;
    if (v12 >= *&v13)
    {
      v15 = v12 % *&v13;
    }
  }

  else
  {
    v15 = v12 & (*&v13 - 1);
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_43:
    operator new();
  }

  if (v14.u32[0] < 2uLL)
  {
    while (1)
    {
      v18 = v17[1];
      if (v18 == v12)
      {
        if (*(v17 + 4) == v4)
        {
          v19 = *(v17 + 10) == WORD2(v4) && *(v17 + 22) == BYTE6(v4);
          if (v19 && __PAIR64__(*(v17 + 14), *(v17 + 6)) == __PAIR64__(WORD2(v5), v5) && *(v17 + 30) == BYTE6(v5))
          {
            return v17;
          }
        }
      }

      else if ((v18 & (*&v13 - 1)) != v15)
      {
        goto LABEL_43;
      }

      v17 = *v17;
      if (!v17)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v21 = v17[1];
    if (v21 == v12)
    {
      break;
    }

    if (v21 >= *&v13)
    {
      v21 %= *&v13;
    }

    if (v21 != v15)
    {
      goto LABEL_43;
    }

LABEL_30:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_43;
    }
  }

  if (*(v17 + 4) != v4)
  {
    goto LABEL_30;
  }

  v22 = *(v17 + 10) == WORD2(v4) && *(v17 + 22) == BYTE6(v4);
  if (!v22 || __PAIR64__(*(v17 + 14), *(v17 + 6)) != __PAIR64__(WORD2(v5), v5) || *(v17 + 30) != BYTE6(v5))
  {
    goto LABEL_30;
  }

  return v17;
}

uint64_t sub_71AEDC(uint64_t a1)
{
  *a1 = &unk_2290750;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_2290750;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_2290750;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_2290750;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_2290750;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = &unk_2290750;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = &unk_2290750;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = &unk_2290750;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2290750;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = &unk_2290750;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_2290750;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 528) = &unk_2290750;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 576) = &unk_2290750;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 624) = &unk_2290750;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 672) = &unk_2290750;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 720) = &unk_2290750;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 804) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 760) = 0u;
  sub_40D5C8((a1 + 824), 2u);
  return a1;
}

void sub_71B020(_Unwind_Exception *a1)
{
  v3 = v1[99];
  if (v3)
  {
    v1[100] = v3;
    operator delete(v3);
    v4 = v1[96];
    if (!v4)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = v1[96];
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v4;
  operator delete(v4);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

void sub_71B06C(__int128 *a1, int **a2, uint64_t a3, uint64_t a4, char a5)
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
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v10) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        v27 = *(a3 + 8);
        v28 = sub_70E2E0(*(a3 + 8), *a3, v9);
        if (fabs(v28) < fabs(sub_70E2E0(v27, *a3, v10)))
        {
          v36 = *(v10 + 4);
          v32 = *v10;
          v34 = v10[1];
          v29 = *v9;
          v30 = *(v9 + 1);
          *(v10 + 4) = v9[4];
          *v10 = v29;
          v10[1] = v30;
          *v9 = v32;
          *(v9 + 1) = v34;
          v9[4] = v36;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      sub_71B6CC(v10, v10 + 5, v10 + 10, a2 - 5, a3);
      return;
    }

    if (v14 == 5)
    {

      sub_71B820(v10, v10 + 5, v10 + 10, v10 + 15, a2 - 5, a3);
      return;
    }

LABEL_10:
    if (v13 <= 959)
    {
      if (a5)
      {

        sub_71B9D4(v10, a2, a3);
      }

      else
      {

        sub_71BE3C(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_71D4DC(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = v10 + 5 * (v14 >> 1);
    if (v13 < 0x1401)
    {
      sub_71B4E8(v16, v10, a2 - 5, a3);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_71B4E8(v10, v16, a2 - 5, a3);
      v17 = v10 + 40;
      v18 = 40 * v15;
      v19 = a1 + 5 * v15 - 5;
      sub_71B4E8(a1 + 5, v19, a2 - 10, a3);
      sub_71B4E8(a1 + 10, &v17[v18], a2 - 15, a3);
      sub_71B4E8(v19, v16, &v17[v18], a3);
      v35 = *(a1 + 4);
      v31 = *a1;
      v33 = a1[1];
      v20 = *v16;
      v21 = *(v16 + 1);
      *(a1 + 4) = v16[4];
      *a1 = v20;
      a1[1] = v21;
      v16[4] = v35;
      *v16 = v31;
      *(v16 + 1) = v33;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    v22 = *(a3 + 8);
    v23 = sub_70E2E0(v22, *a3, a1 - 5);
    if (fabs(v23) >= fabs(sub_70E2E0(v22, *a3, a1)))
    {
      v10 = sub_71C2D4(a1, a2, a3);
      goto LABEL_22;
    }

LABEL_17:
    v24 = sub_71CABC(a1, a2, a3);
    if ((v25 & 1) == 0)
    {
      goto LABEL_20;
    }

    v26 = sub_71D26C(a1, v24, a3);
    v10 = (v24 + 40);
    if (sub_71D26C((v24 + 40), a2, a3))
    {
      a4 = -v12;
      a2 = v24;
      if (v26)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v26)
    {
LABEL_20:
      sub_71B06C(a1, v24, a3, -v12, a5 & 1);
      v10 = (v24 + 40);
LABEL_22:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  sub_71B4E8(v10, v10 + 5, a2 - 5, a3);
}

uint64_t sub_71B4E8(int **a1, int **a2, int **a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = fabs(sub_70E2E0(v8, *a4, a2));
  v10 = fabs(sub_70E2E0(v8, *a4, a1));
  v11 = *(a4 + 8);
  v12 = sub_70E2E0(v11, *a4, a3);
  v13 = sub_70E2E0(v11, *a4, a2);
  v14 = fabs(v12);
  v15 = fabs(v13);
  if (v9 >= v10)
  {
    if (v14 >= v15)
    {
      return 0;
    }

    v21 = *a2;
    v22 = *(a2 + 1);
    v23 = a2[4];
    v24 = a3[4];
    v25 = *(a3 + 1);
    *a2 = *a3;
    *(a2 + 1) = v25;
    a2[4] = v24;
    a3[4] = v23;
    *a3 = v21;
    *(a3 + 1) = v22;
    v26 = *(a4 + 8);
    v27 = sub_70E2E0(v26, *a4, a2);
    if (fabs(v27) < fabs(sub_70E2E0(v26, *a4, a1)))
    {
      v28 = *a1;
      v29 = *(a1 + 1);
      v30 = a1[4];
      v31 = a2[4];
      v32 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v32;
      a1[4] = v31;
      a2[4] = v30;
      result = 1;
      *a2 = v28;
      *(a2 + 1) = v29;
      return result;
    }
  }

  else
  {
    if (v14 < v15)
    {
      v16 = *a1;
      v17 = *(a1 + 1);
      v18 = a1[4];
      v19 = a3[4];
      v20 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 1) = v20;
      a1[4] = v19;
LABEL_9:
      a3[4] = v18;
      result = 1;
      *a3 = v16;
      *(a3 + 1) = v17;
      return result;
    }

    v34 = *a1;
    v35 = *(a1 + 1);
    v36 = a1[4];
    v37 = a2[4];
    v38 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v38;
    a1[4] = v37;
    a2[4] = v36;
    *a2 = v34;
    *(a2 + 1) = v35;
    v39 = *(a4 + 8);
    v40 = sub_70E2E0(v39, *a4, a3);
    if (fabs(v40) < fabs(sub_70E2E0(v39, *a4, a2)))
    {
      v16 = *a2;
      v17 = *(a2 + 1);
      v18 = a2[4];
      v41 = a3[4];
      v42 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v42;
      a2[4] = v41;
      goto LABEL_9;
    }
  }

  return 1;
}

void sub_71B6CC(int **a1, int **a2, int **a3, int **a4, uint64_t a5)
{
  sub_71B4E8(a1, a2, a3, a5);
  v10 = *(a5 + 8);
  v11 = sub_70E2E0(v10, *a5, a4);
  if (fabs(v11) < fabs(sub_70E2E0(v10, *a5, a3)))
  {
    v12 = *a3;
    v13 = *(a3 + 1);
    v14 = a3[4];
    v15 = a4[4];
    v16 = *(a4 + 1);
    *a3 = *a4;
    *(a3 + 1) = v16;
    a3[4] = v15;
    a4[4] = v14;
    *a4 = v12;
    *(a4 + 1) = v13;
    v17 = *(a5 + 8);
    v18 = sub_70E2E0(v17, *a5, a3);
    if (fabs(v18) < fabs(sub_70E2E0(v17, *a5, a2)))
    {
      v19 = *a2;
      v20 = *(a2 + 1);
      v21 = a2[4];
      v22 = a3[4];
      v23 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v23;
      a2[4] = v22;
      a3[4] = v21;
      *a3 = v19;
      *(a3 + 1) = v20;
      v24 = *(a5 + 8);
      v25 = sub_70E2E0(v24, *a5, a2);
      if (fabs(v25) < fabs(sub_70E2E0(v24, *a5, a1)))
      {
        v26 = *a1;
        v27 = *(a1 + 1);
        v28 = a1[4];
        v29 = a2[4];
        v30 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v30;
        a1[4] = v29;
        a2[4] = v28;
        *a2 = v26;
        *(a2 + 1) = v27;
      }
    }
  }
}

void sub_71B820(int **a1, int **a2, int **a3, int **a4, int **a5, uint64_t a6)
{
  sub_71B6CC(a1, a2, a3, a4, a6);
  v12 = *(a6 + 8);
  v13 = sub_70E2E0(v12, *a6, a5);
  if (fabs(v13) < fabs(sub_70E2E0(v12, *a6, a4)))
  {
    v14 = *a4;
    v15 = *(a4 + 1);
    v16 = a4[4];
    v17 = a5[4];
    v18 = *(a5 + 1);
    *a4 = *a5;
    *(a4 + 1) = v18;
    a4[4] = v17;
    a5[4] = v16;
    *a5 = v14;
    *(a5 + 1) = v15;
    v19 = *(a6 + 8);
    v20 = sub_70E2E0(v19, *a6, a4);
    if (fabs(v20) < fabs(sub_70E2E0(v19, *a6, a3)))
    {
      v21 = *a3;
      v22 = *(a3 + 1);
      v23 = a3[4];
      v24 = a4[4];
      v25 = *(a4 + 1);
      *a3 = *a4;
      *(a3 + 1) = v25;
      a3[4] = v24;
      a4[4] = v23;
      *a4 = v21;
      *(a4 + 1) = v22;
      v26 = *(a6 + 8);
      v27 = sub_70E2E0(v26, *a6, a3);
      if (fabs(v27) < fabs(sub_70E2E0(v26, *a6, a2)))
      {
        v28 = *a2;
        v29 = *(a2 + 1);
        v30 = a2[4];
        v31 = a3[4];
        v32 = *(a3 + 1);
        *a2 = *a3;
        *(a2 + 1) = v32;
        a2[4] = v31;
        a3[4] = v30;
        *a3 = v28;
        *(a3 + 1) = v29;
        v33 = *(a6 + 8);
        v34 = sub_70E2E0(v33, *a6, a2);
        if (fabs(v34) < fabs(sub_70E2E0(v33, *a6, a1)))
        {
          v35 = *a1;
          v36 = *(a1 + 1);
          v37 = a1[4];
          v38 = a2[4];
          v39 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v39;
          a1[4] = v38;
          a2[4] = v37;
          *a2 = v35;
          *(a2 + 1) = v36;
        }
      }
    }
  }
}

void sub_71B9D4(int **a1, int **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = a1 + 5;
  if (a1 + 5 == a2)
  {
    return;
  }

  v6 = 0;
  v7 = a1;
  while (2)
  {
    v9 = v4;
    v10 = *(a3 + 8);
    v11 = sub_70E2E0(v10, *a3, v4);
    if (fabs(v11) >= fabs(sub_70E2E0(v10, *a3, v7)))
    {
      goto LABEL_6;
    }

    v12 = *v9;
    v13 = v7[6];
    *v55 = *(v7 + 7);
    *&v55[14] = *(v7 + 70);
    v14 = *(v7 + 78);
    v15 = *(v7 + 79);
    v16 = v6;
    do
    {
      v21 = a1 + v16;
      v22 = *(a1 + v16 + 16);
      *(v21 + 40) = *(a1 + v16);
      *(v21 + 56) = v22;
      *(v21 + 9) = *(a1 + v16 + 32);
      if (!v16)
      {
        v8 = a1;
        goto LABEL_5;
      }

      v23 = *a3;
      if (*(*(a3 + 8) + 912) != 1)
      {
        v28 = (*v23 - **v23);
        v29 = *v28;
        if (*(*a3 + 38))
        {
          if (v29 < 0x49)
          {
            goto LABEL_44;
          }

          v30 = v28[36];
          if (!v30)
          {
            goto LABEL_44;
          }
        }

        else if (v29 < 0x4B || (v30 = v28[37]) == 0)
        {
LABEL_44:
          v31 = -1;
          v36 = (v12 - *v12);
          v37 = *v36;
          if (v14)
          {
            goto LABEL_45;
          }

          goto LABEL_41;
        }

        v31 = *(*v23 + v30);
        v36 = (v12 - *v12);
        v37 = *v36;
        if (v14)
        {
LABEL_45:
          if (v37 >= 0x4B)
          {
            v34 = v36[37];
            if (v34)
            {
              goto LABEL_47;
            }
          }

LABEL_49:
          v34 = 0xFFFF;
          goto LABEL_50;
        }

LABEL_41:
        if (v37 >= 0x49)
        {
          v34 = v36[36];
          if (v34)
          {
LABEL_47:
            v35 = v12;
            goto LABEL_48;
          }
        }

        goto LABEL_49;
      }

      v24 = v23[1];
      v25 = (v24 - *v24);
      v26 = *v25;
      if (*(*a3 + 38))
      {
        if (v26 < 5)
        {
          goto LABEL_33;
        }

        v27 = v25[2];
        if (!v27)
        {
          goto LABEL_33;
        }
      }

      else if (v26 < 9 || (v27 = v25[4]) == 0)
      {
LABEL_33:
        v31 = 0;
        v32 = (v13 - *v13);
        v33 = *v32;
        if (v14)
        {
LABEL_34:
          if (v33 < 9)
          {
LABEL_37:
            v34 = 0;
            goto LABEL_50;
          }

          v34 = v32[4];
          if (!v34)
          {
            goto LABEL_50;
          }

LABEL_36:
          v35 = v13;
LABEL_48:
          v34 = *(v35 + v34);
          goto LABEL_50;
        }

        goto LABEL_30;
      }

      v31 = *(v24 + v27);
      v32 = (v13 - *v13);
      v33 = *v32;
      if (v14)
      {
        goto LABEL_34;
      }

LABEL_30:
      if (v33 < 5)
      {
        goto LABEL_37;
      }

      v34 = v32[2];
      if (v34)
      {
        goto LABEL_36;
      }

LABEL_50:
      v38 = v31 + 18000;
      v39 = v31 - 18000;
      if ((v38 >> 5) < 0x465u)
      {
        v39 = v38;
      }

      v40 = v34 - v39;
      if (v40 > 18000)
      {
        v40 -= 36000;
      }

      if (v40 < -17999)
      {
        v40 += 36000;
      }

      if (*(*(a3 + 8) + 912))
      {
        v41 = v23[1];
        v42 = (v41 - *v41);
        v43 = *v42;
        if (*(*a3 + 38))
        {
          if (v43 >= 5)
          {
            v44 = v42[2];
            if (!v42[2])
            {
LABEL_69:
              v48 = *(a1 + v16 - 32);
              v49 = (v48 - *v48);
              v50 = *v49;
              if (*(a1 + v16 - 2))
              {
                if (v50 < 9)
                {
                  goto LABEL_9;
                }

                v51 = v49[4];
                if (!v51)
                {
                  goto LABEL_9;
                }
              }

              else if (v50 < 5 || (v51 = v49[2]) == 0)
              {
LABEL_9:
                v17 = 0;
                goto LABEL_10;
              }

LABEL_86:
              v17 = *(v48 + v51);
              goto LABEL_10;
            }

LABEL_67:
            LOWORD(v44) = *(v41 + v44);
            goto LABEL_69;
          }
        }

        else if (v43 >= 9)
        {
          v44 = v42[4];
          if (!v42[4])
          {
            goto LABEL_69;
          }

          goto LABEL_67;
        }

        LOWORD(v44) = 0;
        goto LABEL_69;
      }

      v45 = *v23;
      v46 = (v45 - *v45);
      v47 = *v46;
      if (*(*a3 + 38))
      {
        if (v47 >= 0x49)
        {
          v44 = v46[36];
          if (v46[36])
          {
            goto LABEL_75;
          }
        }
      }

      else if (v47 >= 0x4B)
      {
        v44 = v46[37];
        if (v46[37])
        {
LABEL_75:
          LOWORD(v44) = *(v45 + v44);
          goto LABEL_77;
        }
      }

      LOWORD(v44) = -1;
LABEL_77:
      v48 = *(v21 - 5);
      v52 = (v48 - *v48);
      v53 = *v52;
      if (*(a1 + v16 - 2))
      {
        if (v53 >= 0x4B)
        {
          v51 = v52[37];
          if (v51)
          {
            goto LABEL_86;
          }
        }
      }

      else if (v53 >= 0x49)
      {
        v51 = v52[36];
        if (v51)
        {
          goto LABEL_86;
        }
      }

      v17 = 0xFFFF;
LABEL_10:
      v18 = v44 + 18000;
      v19 = v44 - 18000;
      if ((v18 >> 5) < 0x465u)
      {
        v19 = v18;
      }

      v20 = v17 - v19;
      if (v20 > 18000)
      {
        v20 -= 36000;
      }

      if (v20 < -17999)
      {
        v20 += 36000;
      }

      v16 -= 40;
    }

    while (fabs(v40 / 100.0) < fabs(v20 / 100.0));
    v8 = (a1 + v16 + 40);
LABEL_5:
    *v8 = v12;
    v8[1] = v13;
    *(v8 + 1) = *v55;
    *(v8 + 30) = *&v55[14];
    *(v8 + 38) = v14;
    *(v8 + 39) = v15;
LABEL_6:
    v4 = v9 + 5;
    v6 += 40;
    v7 = v9;
    if (v9 + 5 != a2)
    {
      continue;
    }

    break;
  }
}

void sub_71BE3C(int **a1, int **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v3 = a1;
    v4 = a1 + 5;
    if (a1 + 5 != a2)
    {
      while (1)
      {
        v6 = v4;
        v7 = *(a3 + 8);
        v8 = sub_70E2E0(v7, *a3, v4);
        if (fabs(v8) < fabs(sub_70E2E0(v7, *a3, v3)))
        {
          break;
        }

LABEL_5:
        v4 = v6 + 5;
        v3 = v6;
        if (v6 + 5 == a2)
        {
          return;
        }
      }

      v9 = *v6;
      v10 = v3[6];
      *v50 = *(v3 + 7);
      *&v50[14] = *(v3 + 70);
      v11 = *(v3 + 78);
      v12 = *(v3 + 79);
      while (1)
      {
        v17 = *(v3 + 1);
        *(v3 + 5) = *v3;
        *(v3 + 7) = v17;
        v3[9] = v3[4];
        v18 = *a3;
        if (*(*(a3 + 8) + 912) != 1)
        {
          v23 = (*v18 - **v18);
          v24 = *v23;
          if (*(*a3 + 38))
          {
            if (v24 < 0x49)
            {
              goto LABEL_42;
            }

            v25 = v23[36];
            if (!v25)
            {
              goto LABEL_42;
            }

LABEL_38:
            v26 = *(*v18 + v25);
            v31 = (v9 - *v9);
            v32 = *v31;
            if (!v11)
            {
              goto LABEL_39;
            }

LABEL_43:
            if (v32 >= 0x4B)
            {
              v29 = v31[37];
              if (v29)
              {
                goto LABEL_45;
              }
            }
          }

          else
          {
            if (v24 >= 0x4B)
            {
              v25 = v23[37];
              if (v25)
              {
                goto LABEL_38;
              }
            }

LABEL_42:
            v26 = -1;
            v31 = (v9 - *v9);
            v32 = *v31;
            if (v11)
            {
              goto LABEL_43;
            }

LABEL_39:
            if (v32 >= 0x49)
            {
              v29 = v31[36];
              if (v29)
              {
LABEL_45:
                v30 = v9;
                goto LABEL_46;
              }
            }
          }

          v29 = 0xFFFF;
          goto LABEL_48;
        }

        v19 = v18[1];
        v20 = (v19 - *v19);
        v21 = *v20;
        if (*(*a3 + 38))
        {
          if (v21 < 5)
          {
            goto LABEL_31;
          }

          v22 = v20[2];
          if (!v22)
          {
            goto LABEL_31;
          }
        }

        else if (v21 < 9 || (v22 = v20[4]) == 0)
        {
LABEL_31:
          v26 = 0;
          v27 = (v10 - *v10);
          v28 = *v27;
          if (v11)
          {
LABEL_32:
            if (v28 < 9)
            {
LABEL_35:
              v29 = 0;
              goto LABEL_48;
            }

            v29 = v27[4];
            if (!v29)
            {
              goto LABEL_48;
            }

LABEL_34:
            v30 = v10;
LABEL_46:
            v29 = *(v30 + v29);
            goto LABEL_48;
          }

          goto LABEL_28;
        }

        v26 = *(v19 + v22);
        v27 = (v10 - *v10);
        v28 = *v27;
        if (v11)
        {
          goto LABEL_32;
        }

LABEL_28:
        if (v28 < 5)
        {
          goto LABEL_35;
        }

        v29 = v27[2];
        if (v29)
        {
          goto LABEL_34;
        }

LABEL_48:
        v33 = v26 + 18000;
        v34 = v26 - 18000;
        if ((v33 >> 5) < 0x465u)
        {
          v34 = v33;
        }

        v35 = v29 - v34;
        if (v35 > 18000)
        {
          v35 -= 36000;
        }

        if (v35 < -17999)
        {
          v35 += 36000;
        }

        if (!*(*(a3 + 8) + 912))
        {
          v44 = *v18;
          v45 = (v44 - *v44);
          v46 = *v45;
          if (*(*a3 + 38))
          {
            if (v46 < 0x49)
            {
              goto LABEL_78;
            }

            v39 = v45[36];
            if (!v45[36])
            {
              goto LABEL_78;
            }

LABEL_74:
            LOWORD(v39) = *(v44 + v39);
            v40 = *(v3 - 5);
            v47 = (v40 - *v40);
            v48 = *v47;
            if (!*(v3 - 2))
            {
              goto LABEL_75;
            }

LABEL_79:
            if (v48 < 0x4B)
            {
              goto LABEL_82;
            }

            v43 = v47[37];
            if (!v43)
            {
              goto LABEL_82;
            }
          }

          else
          {
            if (v46 >= 0x4B)
            {
              v39 = v45[37];
              if (v45[37])
              {
                goto LABEL_74;
              }
            }

LABEL_78:
            LOWORD(v39) = -1;
            v40 = *(v3 - 5);
            v47 = (v40 - *v40);
            v48 = *v47;
            if (*(v3 - 2))
            {
              goto LABEL_79;
            }

LABEL_75:
            if (v48 < 0x49 || (v43 = v47[36]) == 0)
            {
LABEL_82:
              v13 = 0xFFFF;
              goto LABEL_9;
            }
          }

LABEL_81:
          v13 = *(v40 + v43);
          goto LABEL_9;
        }

        v36 = v18[1];
        v37 = (v36 - *v36);
        v38 = *v37;
        if (*(*a3 + 38))
        {
          if (v38 >= 5)
          {
            v39 = v37[2];
            if (!v37[2])
            {
              goto LABEL_58;
            }

LABEL_68:
            LOWORD(v39) = *(v36 + v39);
            v40 = *(v3 - 4);
            v41 = (v40 - *v40);
            v42 = *v41;
            if (*(v3 - 2))
            {
              goto LABEL_59;
            }

            goto LABEL_69;
          }

          LOWORD(v39) = 0;
          v40 = *(v3 - 4);
          v41 = (v40 - *v40);
          v42 = *v41;
          if (*(v3 - 2))
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v38 >= 9)
          {
            v39 = v37[4];
            if (!v37[4])
            {
LABEL_58:
              v40 = *(v3 - 4);
              v41 = (v40 - *v40);
              v42 = *v41;
              if (*(v3 - 2))
              {
                goto LABEL_59;
              }

              goto LABEL_69;
            }

            goto LABEL_68;
          }

          LOWORD(v39) = 0;
          v40 = *(v3 - 4);
          v41 = (v40 - *v40);
          v42 = *v41;
          if (*(v3 - 2))
          {
LABEL_59:
            if (v42 >= 9)
            {
              v43 = v41[4];
              if (v43)
              {
                goto LABEL_81;
              }
            }

            goto LABEL_8;
          }
        }

LABEL_69:
        if (v42 >= 5)
        {
          v43 = v41[2];
          if (v43)
          {
            goto LABEL_81;
          }
        }

LABEL_8:
        v13 = 0;
LABEL_9:
        v3 -= 5;
        v14 = v39 + 18000;
        v15 = v39 - 18000;
        if ((v14 >> 5) < 0x465u)
        {
          v15 = v14;
        }

        v16 = v13 - v15;
        if (v16 > 18000)
        {
          v16 -= 36000;
        }

        if (v16 < -17999)
        {
          v16 += 36000;
        }

        if (fabs(v35 / 100.0) >= fabs(v16 / 100.0))
        {
          v3[5] = v9;
          v3[6] = v10;
          *(v3 + 70) = *&v50[14];
          *(v3 + 7) = *v50;
          *(v3 + 78) = v11;
          *(v3 + 79) = v12;
          goto LABEL_5;
        }
      }
    }
  }
}