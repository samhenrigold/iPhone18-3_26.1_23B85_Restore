uint64_t sub_BAB7A8(int *a1, int *a2, int *a3, int *a4, int *a5, uint64_t (**a6)(int *, int *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    v14 = *a1;
    if (v13)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v14;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v14;
    if ((*a6)(a3, a2))
    {
      v14 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    if ((*a6)(a2, a1))
    {
      v16 = *a1;
      *a1 = *a2;
      *a2 = v16;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a6)(a3, a2))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a6)(a2, a1))
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  result = (*a6)(a5, a4);
  if (result)
  {
    v21 = *a4;
    *a4 = *a5;
    *a5 = v21;
    result = (*a6)(a4, a3);
    if (result)
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      result = (*a6)(a3, a2);
      if (result)
      {
        v23 = *a2;
        *a2 = *a3;
        *a3 = v23;
        result = (*a6)(a2, a1);
        if (result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

BOOL sub_BAB998(int *a1, int *a2, uint64_t (**a3)(int *, int *))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a2 - 1;
        v10 = (*a3)(a1 + 1, a1);
        v11 = (*a3)(v9, a1 + 1);
        if (v10)
        {
          v12 = *a1;
          if (v11)
          {
            *a1 = *v9;
            *v9 = v12;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v12;
            if ((*a3)(v9, a1 + 1))
            {
              v21 = a1[1];
              a1[1] = *v9;
              *v9 = v21;
            }
          }

          return 1;
        }

        if (!v11)
        {
          return 1;
        }

        v20 = a1[1];
        a1[1] = *v9;
        *v9 = v20;
        break;
      case 4:
        v16 = a2 - 1;
        v17 = (*a3)(a1 + 1, a1);
        v18 = (*a3)(a1 + 2, a1 + 1);
        if (v17)
        {
          v19 = *a1;
          if (v18)
          {
            *a1 = a1[2];
            a1[2] = v19;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v19;
            if ((*a3)(a1 + 2, a1 + 1))
            {
              *(a1 + 1) = vrev64_s32(*(a1 + 1));
            }
          }
        }

        else if (v18)
        {
          *(a1 + 1) = vrev64_s32(*(a1 + 1));
          if ((*a3)(a1 + 1, a1))
          {
            *a1 = vrev64_s32(*a1);
          }
        }

        if (!(*a3)(v16, a1 + 2))
        {
          return 1;
        }

        v28 = a1[2];
        a1[2] = *v16;
        *v16 = v28;
        if (!(*a3)(a1 + 2, a1 + 1))
        {
          return 1;
        }

        *(a1 + 1) = vrev64_s32(*(a1 + 1));
        break;
      case 5:
        sub_BAB7A8(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      default:
        goto LABEL_13;
    }

    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vrev64_s32(*a1);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v13 = (*a3)(a1 + 1, a1);
  v14 = (*a3)(a1 + 2, a1 + 1);
  if (v13)
  {
    v15 = *a1;
    if (v14)
    {
      *a1 = a1[2];
      a1[2] = v15;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v15;
      if ((*a3)(a1 + 2, a1 + 1))
      {
        *(a1 + 1) = vrev64_s32(*(a1 + 1));
      }
    }
  }

  else if (v14)
  {
    *(a1 + 1) = vrev64_s32(*(a1 + 1));
    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vrev64_s32(*a1);
    }
  }

  v22 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  v25 = a1 + 2;
  while (!(*a3)(v22, v25))
  {
LABEL_40:
    v25 = v22;
    v23 += 4;
    if (++v22 == a2)
    {
      return 1;
    }
  }

  v30 = *v22;
  v26 = v23;
  do
  {
    v27 = (a1 + v26);
    *(a1 + v26 + 12) = *(a1 + v26 + 8);
    if (v26 == -8)
    {
      *a1 = v30;
      if (++v24 != 8)
      {
        goto LABEL_40;
      }

      return v22 + 1 == a2;
    }

    v26 -= 4;
  }

  while (((*a3)(&v30, v27 + 1) & 1) != 0);
  *(a1 + v26 + 12) = v30;
  if (++v24 != 8)
  {
    goto LABEL_40;
  }

  return v22 + 1 == a2;
}

int *sub_BABD58(char *a1, char *a2, int *a3, uint64_t (**a4)(int *, int *))
{
  if (a1 == a2)
  {
    return a3;
  }

  v53 = v4;
  v54 = v5;
  v49 = a2;
  v46 = a3;
  v47 = a2 - a1;
  v8 = (a2 - a1) >> 2;
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    v10 = v9 >> 1;
    v11 = v9 >> 1;
    do
    {
      if (v10 >= v11)
      {
        v13 = (2 * (v11 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
        v14 = &a1[4 * v13];
        if (2 * (v11 & 0x3FFFFFFFFFFFFFFFLL) + 2 < v8 && (*a4)(&a1[4 * v13], v14 + 1))
        {
          ++v14;
          v13 = 2 * (v11 & 0x3FFFFFFFFFFFFFFFLL) + 2;
        }

        v15 = &a1[4 * v11];
        if (((*a4)(v14, v15) & 1) == 0)
        {
          v50 = *v15;
          do
          {
            v16 = v14;
            *v15 = *v14;
            if (v10 < v13)
            {
              break;
            }

            v17 = (2 * v13) | 1;
            v14 = &a1[4 * v17];
            v18 = 2 * v13 + 2;
            if (v18 < v8 && (*a4)(&a1[4 * v17], v14 + 1))
            {
              ++v14;
              v17 = v18;
            }

            v15 = v16;
            v13 = v17;
          }

          while (!(*a4)(v14, &v50));
          *v16 = v50;
        }
      }

      v12 = v11-- <= 0;
    }

    while (!v12);
  }

  i = v49;
  v20 = v46;
  if (v49 != v46)
  {
    if (v8 < 2)
    {
      i = v49;
      do
      {
        if ((*a4)(i, a1))
        {
          v21 = *i;
          *i = *a1;
          *a1 = v21;
        }

        ++i;
      }

      while (i != v46);
      goto LABEL_45;
    }

    v22 = (a1 + 4);
    for (i = v49; i != v20; ++i)
    {
      if ((*a4)(i, a1))
      {
        v23 = *i;
        *i = *a1;
        *a1 = v23;
        if (v47 == 8)
        {
          v24 = v22;
          v25 = 1;
          if (((*a4)(v22, a1) & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v26 = (*a4)(v22, a1 + 2);
          if (v26)
          {
            v24 = (a1 + 8);
          }

          else
          {
            v24 = v22;
          }

          if (v26)
          {
            v25 = 2;
          }

          else
          {
            v25 = 1;
          }

          if (((*a4)(v24, a1) & 1) == 0)
          {
LABEL_38:
            v51 = *a1;
            v27 = a1;
            do
            {
              v29 = v24;
              *v27 = *v24;
              if (((v8 - 2) >> 1) < v25)
              {
                break;
              }

              v30 = (2 * v25) | 1;
              v24 = &a1[4 * v30];
              if (2 * v25 + 2 < v8 && (*a4)(&a1[4 * v30], v24 + 1))
              {
                ++v24;
                v30 = 2 * v25 + 2;
              }

              v28 = (*a4)(v24, &v51);
              v27 = v29;
              v25 = v30;
            }

            while (!v28);
            *v29 = v51;
            v22 = (a1 + 4);
            v20 = v46;
          }
        }
      }
    }
  }

LABEL_45:
  if (v8 >= 2)
  {
    do
    {
      v32 = 0;
      v48 = *a1;
      v33 = a1;
      do
      {
        v34 = &v33[4 * v32];
        v35 = (v34 + 4);
        v36 = (2 * v32) | 1;
        v37 = 2 * v32 + 2;
        if (v37 < v8)
        {
          v38 = (v34 + 8);
          if ((*a4)(v34 + 1, v34 + 2))
          {
            v35 = v38;
            v36 = v37;
          }
        }

        *v33 = *v35;
        v33 = v35;
        v32 = v36;
      }

      while (v36 <= ((v8 - 2) >> 1));
      v39 = (v49 - 4);
      v40 = v35 == (v49 - 4);
      v49 -= 4;
      if (v40)
      {
        *v35 = v48;
      }

      else
      {
        *v35 = *v39;
        *v39 = v48;
        v41 = (v35 - a1 + 4) >> 2;
        v12 = v41 < 2;
        v42 = v41 - 2;
        if (!v12)
        {
          v43 = v42 >> 1;
          v44 = &a1[4 * (v42 >> 1)];
          if ((*a4)(v44, v35))
          {
            v52 = *v35;
            do
            {
              v45 = v44;
              *v35 = *v44;
              if (!v43)
              {
                break;
              }

              v43 = (v43 - 1) >> 1;
              v44 = &a1[4 * v43];
              v35 = v45;
            }

            while (((*a4)(v44, &v52) & 1) != 0);
            *v45 = v52;
          }
        }
      }

      v12 = v8-- <= 2;
    }

    while (!v12);
  }

  return i;
}

void sub_BAC190(uint64_t a1, uint64_t a2)
{
  sub_7E9A4(v41);
  v4 = *(a2 + 16);
  *(a1 + 112) = *a2;
  *(a1 + 128) = v4;
  *(a1 + 144) = *(a2 + 32);
  *(a1 + 152) = *(a2 + 40);
  sub_BAD298(a1);
  v5 = *(a1 + 48);
  v42[0] = 0x1FFFFFFFELL;
  v6 = sub_A98E8C(v5, v42);
  v7 = *(v6 + 8);
  if (v7 != -1)
  {
    *(a1 + 456) = v7;
    if (*(a1 + 33) != 1)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (!sub_A822FC(*(a1 + 40)))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v8 = *(v5 + 112);
  *(v5 + 112) = v8 + 1;
  *(v6 + 8) = v8;
  v9 = v6;
  sub_2512DC(v5 + 88, v42);
  *(a1 + 456) = *(v9 + 8);
  if (*(a1 + 33) == 1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v10 = *(a1 + 48);
  v42[0] = 0x1FFFFFFFDLL;
  v11 = sub_A98E8C(v10, v42);
  v12 = *(v11 + 8);
  if (v12 == -1)
  {
    v13 = *(v10 + 112);
    *(v10 + 112) = v13 + 1;
    *(v11 + 8) = v13;
    v14 = v11;
    sub_2512DC(v10 + 88, v42);
    v12 = *(v14 + 8);
  }

  sub_BAF528(a1, 0, v12, 0, *(a1 + 116));
LABEL_9:
  LODWORD(v15) = *(a1 + 168);
  if (v15 >= 2)
  {
    v16 = 1;
    while (1)
    {
      if (*(a1 + 25) & 1) == 0 && v16 >= 2 && (*(a1 + 27))
      {
        sub_BAD4E8(a1, v16);
      }

      if (v16)
      {
        v26 = *(a1 + 312);
        v27 = *(a1 + 320);
        if (v26 != v27)
        {
          v28 = *(a1 + 288);
          v29 = *(a1 + 312);
          do
          {
            v30 = *v29++;
            *(v28 + ((v30 >> 3) & 0x1FFFFFF8)) &= ~(1 << v30);
          }

          while (v29 != v27);
        }

        *(a1 + 320) = v26;
        sub_BAD6A0(a1, v16);
        sub_BAD9BC(a1, v16);
        v31 = *(a1 + 456);
        if (*(a1 + 296) > v31 && ((*(*(a1 + 288) + ((v31 >> 3) & 0x1FFFFFF8)) >> v31) & 1) != 0)
        {
          *(*(a1 + 464) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        }

        if (*(a1 + 25) == 1 && *(a1 + 312) == *(a1 + 320))
        {
LABEL_43:
          LODWORD(v15) = *(a1 + 168);
          if (v15)
          {
            goto LABEL_44;
          }

          goto LABEL_53;
        }
      }

      else
      {
        v17 = *(a1 + 264);
        v18 = *(a1 + 272);
        if (v17 != v18)
        {
          v19 = *(a1 + 240);
          v20 = *(a1 + 264);
          do
          {
            v21 = *v20++;
            *(v19 + ((v21 >> 3) & 0x1FFFFFF8)) &= ~(1 << v21);
          }

          while (v20 != v18);
        }

        *(a1 + 272) = v17;
        sub_BAE27C(a1, v16);
        sub_7E9A4(v42);
        v22 = *(a1 + 432);
        v23 = *(a1 + 440);
        while (v22 != v23)
        {
          v24 = *v22++;
          sub_BAFE58(a1, v16, v24);
        }

        *(a1 + 624) = sub_7EA60(v42) + *(a1 + 624);
        v25 = *(a1 + 456);
        if (*(a1 + 248) > v25 && ((*(*(a1 + 240) + ((v25 >> 3) & 0x1FFFFFF8)) >> v25) & 1) != 0)
        {
          *(*(a1 + 464) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v16 & 0x3E);
        }

        if (*(a1 + 25) == 1 && *(a1 + 264) == *(a1 + 272))
        {
          goto LABEL_43;
        }
      }

      v32 = sub_A9D694(a1) + 744;
      if (*(a1 + 736) > v32)
      {
        v32 = *(a1 + 736);
      }

      *(a1 + 736) = v32;
      if (sub_BAF0B4(a1, v16))
      {
        goto LABEL_43;
      }

      ++v16;
      v15 = *(a1 + 168);
      if (v16 >= v15)
      {
        goto LABEL_41;
      }
    }
  }

  LODWORD(v16) = 1;
LABEL_41:
  if (v15)
  {
LABEL_44:
    v33 = 0;
    v34 = 0;
    v35 = v15;
    do
    {
      if ((*(*(a1 + 464) + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v34))
      {
        *(a1 + 656) = *(a1 + 656) + 1.0;
        v36 = *(a1 + 176);
        v37 = *(a1 + 456);
        if (*v36 <= v37)
        {
          *v36 = v37 + 1;
          v38 = v36[2];
          v39 = v36[1] * (v37 + 1);
          v40 = 0xAAAAAAAAAAAAAAABLL * ((v36[3] - v38) >> 3);
          if (v39 > v40)
          {
            sub_BAF9A8((v36 + 2), v39 - v40);
          }

          else if (v39 < v40)
          {
            v36[3] = v38 + 24 * v39;
          }
        }

        *(a1 + 648) += *(v36[2] + 24 * v36[1] * v37 + v33);
      }

      ++v34;
      v33 += 24;
    }

    while (v35 != v34);
  }

LABEL_53:
  *(a1 + 664) = v16;
  *(a1 + 616) = sub_7EA60(v41);
}

__n128 sub_BAC5F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  v95 = a2 + 8;
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  HIBYTE(v129) = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(a2 + 32, &__p);
  __dst = v3;
  if (SHIBYTE(v129) < 0)
  {
    operator delete(__p);
  }

  *(a2 + 256) = 0;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 184) = *(a1 + 112);
  v97 = *(a1 + 168);
  if (v97 >= 2)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v96 = _Q0;
    v9 = 1;
    while (((*(*(a1 + 464) + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
LABEL_9:
      if (++v9 == v97)
      {
        goto LABEL_4;
      }
    }

    v10 = *(a1 + 176);
    v11 = *(a1 + 456);
    v12 = v11;
    if (*v10 <= v11)
    {
      *v10 = v11 + 1;
      v13 = v10[2];
      v14 = v10[1] * (v11 + 1);
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v10[3] - v13) >> 3);
      if (v14 <= v15)
      {
        v12 = v11;
        if (v14 < v15)
        {
          v10[3] = v13 + 24 * v14;
          v12 = v11;
        }
      }

      else
      {
        sub_BAF9A8((v10 + 2), v14 - v15);
        v12 = *(a1 + 456);
      }
    }

    v99 = v9;
    v16 = v10[2] + 24 * v10[1] * v11 + 24 * v9;
    v17 = *(v16 + 4);
    v100 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 20);
    LOWORD(__p) = 0;
    BYTE2(__p) = 0;
    *(&__p + 4) = 0;
    HIDWORD(__p) = 0;
    v129 = -NAN;
    v130 = 0x7FFFFFFF;
    v131 = 0;
    v132 = 0x8000000080000000;
    v133 = 0;
    v134 = 0x8000000080000000;
    v135 = 0x7FFFFFFF;
    v136 = 0;
    v137 = 0x8000000080000000;
    v138 = 0;
    v139 = 0x8000000080000000;
    v140 = 0;
    v141 = 0xFFFFFFFF00000000;
    v142 = -1;
    v143 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v144 = 0x7FFFFFFF;
    v148 = 100;
    v149 = -1;
    v150 = v96;
    v151 = v96;
    v152 = v96;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v21 = *(a1 + 40);
    if (sub_68312C(v21 + 3896) && *(v21 + 3944))
    {
      v22 = 1;
    }

    else
    {
      v23 = *(a1 + 40);
      v22 = sub_4C2B90(v23 + 3896) && *(v23 + 3960) != 0;
    }

    BYTE1(__p) = v22;
    v24 = *(a1 + 40);
    if (sub_4C2B90(v24 + 3896))
    {
      DWORD2(__p) = 2 * (*(v24 + 3960) != 0);
      DWORD1(__p) = DWORD2(__p);
      if (v17 != 0xFFFFFFFF)
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    *(&__p + 4) = 0;
    if (v17 == 0xFFFFFFFF)
    {
LABEL_26:
      sub_A83920(&__p);
      v25 = *(a2 + 16);
      if (v25 >= *(a2 + 24))
      {
        v26 = sub_BA7328(v95, &__p);
      }

      else
      {
        sub_A32C84(*(a2 + 16), &__p);
        v26 = v25 + 296;
      }

      v9 = v99;
      *(a2 + 16) = v26;
      if (*(&v157 + 1))
      {
        *&v158 = *(&v157 + 1);
        operator delete(*(&v157 + 1));
      }

      if (v156)
      {
        *(&v156 + 1) = v156;
        operator delete(v156);
      }

      if (*(&v154 + 1))
      {
        *&v155 = *(&v154 + 1);
        operator delete(*(&v154 + 1));
      }

      *v113 = &v153;
      sub_A3212C(v113);
      if (SHIBYTE(v147) < 0)
      {
        operator delete(v145);
      }

      goto LABEL_9;
    }

LABEL_28:
    v101 = v99;
    while (1)
    {
      v119 = 0;
      v118 = 0u;
      v120 = 1;
      v122 = 0;
      v123 = 0;
      v121 = 0;
      v124 = 1;
      v125 = 0x8000000080000000;
      v126 = 0;
      v127 = 0;
      *v113 = 0;
      *&v113[16] = 0u;
      *v114 = 0xFFFFFFFFLL;
      *&v114[16] = 0u;
      *v117 = 1;
      v116[0] = 0x7FFFFFFFuLL;
      *&v113[4] = 0x8000000080000000;
      *&v113[12] = 0x7FFFFFFF;
      *&v113[20] = 0x8000000080000000;
      *&v114[8] = xmmword_2266560;
      *&v114[24] = -1;
      memset(v115, 0, sizeof(v115));
      v116[1] = 0uLL;
      *&v117[4] = xmmword_22A7500;
      if (v20 != 0xFFFFFFFF)
      {
        break;
      }

      v120 = 1;
      v28 = *sub_A9C5E0((*(a1 + 48) + 88), v12);
      v29 = *sub_A9C5E0((*(a1 + 48) + 88), v17);
      if (*&v117[16] != -1)
      {
        if (*&v117[16] == 1)
        {
          *v113 = 0;
          *&v113[4] = v100;
          *&v113[8] = v19;
          *&v113[12] = v28;
          v12 = v17;
          *&v113[20] = v29;
          v30 = *(&v118 + 1);
          if (*(&v118 + 1) < v119)
          {
            goto LABEL_79;
          }

          goto LABEL_86;
        }

        (off_26711F0[*&v117[16]])(&v102, v113);
      }

      *v113 = 0;
      *&v113[4] = v100;
      *&v113[12] = v28;
      *&v113[20] = v29;
      v12 = v17;
      *&v113[8] = v19;
      *&v117[16] = 1;
      v30 = *(&v118 + 1);
      if (*(&v118 + 1) < v119)
      {
        goto LABEL_79;
      }

LABEL_86:
      v75 = sub_AA9AE0(&v118, v113);
LABEL_87:
      *(&v118 + 1) = v75;
      v76 = *(&v153 + 1);
      if (*(&v153 + 1) >= v154)
      {
        v77 = sub_BA71A0(&v153, &v118);
      }

      else
      {
        sub_A33054(*(&v153 + 1), &v118);
        v77 = v76 + 72;
      }

      *(&v153 + 1) = v77;
      v78 = *(a1 + 176);
      if (*v78 <= v12)
      {
        *v78 = v12 + 1;
        v79 = v78[2];
        v80 = v78[1] * (v12 + 1);
        v81 = 0xAAAAAAAAAAAAAAABLL * ((v78[3] - v79) >> 3);
        if (v80 <= v81)
        {
          if (v80 < v81)
          {
            v78[3] = v79 + 24 * v80;
          }
        }

        else
        {
          sub_BAF9A8((v78 + 2), v80 - v81);
        }
      }

      v82 = v78[2] + 24 * v78[1] * v12 + 24 * --v101;
      v17 = *(v82 + 4);
      v100 = *v82;
      v18 = *(v82 + 8);
      v19 = *(v82 + 16);
      v20 = *(v82 + 20);
      if (*&v117[16] != -1)
      {
        (off_26711F0[*&v117[16]])(&v102, v113);
      }

      if (v121)
      {
        v122 = v121;
        operator delete(v121);
      }

      v83 = v118;
      if (v118)
      {
        v84 = *(&v118 + 1);
        v27 = v118;
        if (*(&v118 + 1) != v118)
        {
          do
          {
            v85 = v84 - 168;
            v86 = *(v84 - 8);
            if (v86 != -1)
            {
              (off_26711F0[v86])(v113, v84 - 168);
            }

            *(v84 - 8) = -1;
            v84 -= 168;
          }

          while (v85 != v83);
          v27 = v118;
        }

        *(&v118 + 1) = v83;
        operator delete(v27);
      }

      if (v17 == 0xFFFFFFFF)
      {
        goto LABEL_26;
      }
    }

    v102 = xmmword_2297BF0;
    LOWORD(v103) = 0;
    *(&v103 + 4) = 0x8000000080000000;
    WORD6(v103) = 0;
    *v104 = xmmword_22A7450;
    *&v104[16] = -COERCE_DOUBLE(0x8000000080000000);
    v105 = 0uLL;
    v106 = 0uLL;
    v107 = 0uLL;
    *&v104[24] = -1;
    v108 = 0x7FFFFFFF;
    v110 = 0;
    v111 = 0;
    v109 = 0;
    LOBYTE(v112) = 1;
    *(&v112 + 4) = 0x8000000080000000;
    HIDWORD(v112) = 0;
    v120 = 0;
    v31 = *sub_A9C5E0((*(a1 + 56) + 88), v20);
    *v104 = v31;
    *&v104[8] = v18;
    *&v104[16] = v19;
    *&v104[24] = v17;
    v32 = *(a1 + 40);
    v169[0] = *sub_A9C5E0((*(a1 + 48) + 88), v12);
    v33 = sub_A79708(&v159, v32, v31, v17, 0, 0);
    v166 = v165 + 12 * *&v104[8];
    if (v167 == 1)
    {
      v168 = *&v104[12];
    }

    if (v164)
    {
      v34 = *(v164 + 4 * ((v162 - v161) >> 4));
    }

    else
    {
      v34 = 0;
    }

    sub_AB3DEC(v33, v169, v34);
    _CF = v162 < v163 && v162 >= v161;
    v36 = (v162 - v161) >> 4;
    if (!_CF)
    {
      LODWORD(v36) = -1;
    }

    *&v104[20] = v36;
    v37 = *(a1 + 48);
    v38 = *&v104[24];
    v39 = sub_A57920((*(a1 + 40) + 4136), *v104);
    v40 = (v39 - *v39);
    if (*v40 >= 9u && (v41 = v40[4]) != 0)
    {
      v42 = (v39 + v41 + *(v39 + v41));
    }

    else
    {
      v42 = 0;
    }

    v159 = __ROR8__(*sub_A571D4(v42, v38), 32);
    v43 = sub_A98E8C(v37, &v159);
    v44 = v43;
    v12 = *(v43 + 8);
    if (v12 == -1)
    {
      v45 = *(v37 + 112);
      *(v37 + 112) = v45 + 1;
      *(v43 + 8) = v45;
      sub_2512DC(v37 + 88, &v159);
      v12 = *(v44 + 8);
    }

    v46 = *&v104[20];
    v47 = sub_A57920((*(a1 + 40) + 4136), *v104);
    v48 = (v47 - *v47);
    if (*v48 >= 9u && (v49 = v48[4]) != 0)
    {
      v50 = (v47 + v49 + *(v47 + v49));
    }

    else
    {
      v50 = 0;
    }

    DWORD1(v102) = 10 * sub_A571D4(v50, v46)[2];
    v51 = *(a1 + 40);
    v52 = *v104;
    v53 = *&v104[20];
    v159 = sub_A56F04((v51 + 4136), *v104, *&v104[20], *&v104[8]);
    LODWORD(v160) = v54;
    v55 = sub_A57920((v51 + 4136), v52);
    v56 = (v55 - *v55);
    if (*v56 >= 9u && (v57 = v56[4]) != 0)
    {
      v58 = (v55 + v57 + *(v55 + v57));
    }

    else
    {
      v58 = 0;
    }

    v59 = *(sub_A571D4(v58, v53) + 6);
    if (*&v104[12] == -1)
    {
      v60 = 0x7FFFFFFF;
    }

    else
    {
      v60 = *&v104[16];
    }

    *(&v102 + 1) = sub_A56700((v51 + 4184), &v159, v59, v60);
    LOWORD(v103) = v61;
    v62 = *(a1 + 40);
    v63 = *v104;
    v64 = *&v104[24];
    v159 = sub_A56F04((v62 + 4136), *v104, *&v104[24], *&v104[8]);
    LODWORD(v160) = v65;
    v66 = sub_A57920((v62 + 4136), v63);
    v67 = (v66 - *v66);
    if (*v67 >= 9u && (v68 = v67[4]) != 0)
    {
      v69 = (v66 + v68 + *(v66 + v68));
    }

    else
    {
      v69 = 0;
    }

    v70 = *(sub_A571D4(v69, v64) + 6);
    if (*&v104[12] == -1)
    {
      v71 = 0x7FFFFFFF;
    }

    else
    {
      v71 = *&v104[16];
    }

    *(&v103 + 4) = sub_A56A5C((v62 + 4184), &v159, v70, v71);
    WORD6(v103) = v72;
    if (*&v117[16])
    {
      v159 = v113;
      v160 = &v102;
      sub_BB0908(&v159);
      v73 = v109;
      if (!v109)
      {
        goto LABEL_74;
      }
    }

    else
    {
      *v113 = v102;
      *&v113[16] = v103;
      *v114 = *v104;
      *&v114[12] = *&v104[12];
      sub_A349D4(v115, v105, *(&v105 + 1), 0xEEEEEEEEEEEEEEEFLL * ((*(&v105 + 1) - v105) >> 2));
      sub_A349D4(&v115[1] + 1, *(&v106 + 1), v107, 0xEEEEEEEEEEEEEEEFLL * ((v107 - *(&v106 + 1)) >> 2));
      LODWORD(v116[0]) = v108;
      sub_956400(v116 + 1, v109, v110, 0xCCCCCCCCCCCCCCCDLL * ((v110 - v109) >> 3));
      *v117 = v112;
      v73 = v109;
      if (!v109)
      {
LABEL_74:
        if (*(&v106 + 1))
        {
          *&v107 = *(&v106 + 1);
          operator delete(*(&v106 + 1));
        }

        if (v105)
        {
          *(&v105 + 1) = v105;
          operator delete(v105);
        }

        v30 = *(&v118 + 1);
        if (*(&v118 + 1) < v119)
        {
LABEL_79:
          *v30 = 0;
          *(v30 + 160) = -1;
          v74 = *&v117[16];
          if (*&v117[16] != -1)
          {
            *&v102 = v30;
            (off_26712A0[*&v117[16]])(&v102, v113);
            *(v30 + 160) = v74;
          }

          v75 = (v30 + 168);
          goto LABEL_87;
        }

        goto LABEL_86;
      }
    }

    v110 = v73;
    operator delete(v73);
    goto LABEL_74;
  }

LABEL_4:
  if (__dst != (a1 + 592))
  {
    v4 = *(a1 + 615);
    if (*(a2 + 55) < 0)
    {
      if (v4 >= 0)
      {
        v87 = (a1 + 592);
      }

      else
      {
        v87 = *(a1 + 592);
      }

      if (v4 >= 0)
      {
        v88 = *(a1 + 615);
      }

      else
      {
        v88 = *(a1 + 600);
      }

      sub_13B38(__dst, v87, v88);
    }

    else if ((*(a1 + 615) & 0x80) != 0)
    {
      sub_13A68(__dst, *(a1 + 592), *(a1 + 600));
    }

    else
    {
      *__dst = *(a1 + 592);
      __dst[2] = *(a1 + 608);
    }
  }

  v89 = *(a1 + 696);
  *(a2 + 120) = *(a1 + 680);
  *(a2 + 136) = v89;
  v90 = *(a1 + 728);
  *(a2 + 152) = *(a1 + 712);
  *(a2 + 168) = v90;
  v91 = *(a1 + 632);
  *(a2 + 56) = *(a1 + 616);
  *(a2 + 72) = v91;
  result = *(a1 + 648);
  v93 = *(a1 + 664);
  *(a2 + 88) = result;
  *(a2 + 104) = v93;
  return result;
}

void sub_BAD198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  sub_A31EF4(a10);
  _Unwind_Resume(a1);
}

void sub_BAD1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(a15 + 16) = v15;
  sub_A7847C(&STACK[0x230]);
  sub_A300F8(a15, v17);
  _Unwind_Resume(a1);
}

void sub_BAD1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_A7847C(&STACK[0x230]);
  sub_A300F8(a15, v16);
  _Unwind_Resume(a1);
}

void sub_BAD214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_A3238C(v66);
  a66 = v66;
  sub_BA94A4(&a49);
  sub_A785D0(&a65);
  sub_A7847C(&STACK[0x230]);
  sub_A300F8(a15, v68);
  _Unwind_Resume(a1);
}

double sub_BAD298(uint64_t a1)
{
  v2 = *(a1 + 264);
  v3 = *(a1 + 272);
  if (v2 != v3)
  {
    v4 = *(a1 + 240);
    v5 = *(a1 + 264);
    do
    {
      v6 = *v5++;
      *(v4 + ((v6 >> 3) & 0x1FFFFFF8)) &= ~(1 << v6);
    }

    while (v5 != v3);
  }

  *(a1 + 272) = v2;
  v7 = *(a1 + 312);
  v8 = *(a1 + 320);
  if (v7 != v8)
  {
    v9 = *(a1 + 288);
    v10 = *(a1 + 312);
    do
    {
      v11 = *v10++;
      *(v9 + ((v11 >> 3) & 0x1FFFFFF8)) &= ~(1 << v11);
    }

    while (v10 != v8);
  }

  *(a1 + 320) = v7;
  v12 = *(a1 + 360);
  v13 = *(a1 + 368);
  if (v12 != v13)
  {
    v14 = *(a1 + 336);
    v15 = *(a1 + 360);
    do
    {
      v16 = *v15++;
      *(v14 + ((v16 >> 3) & 0x1FFFFFF8)) &= ~(1 << v16);
    }

    while (v15 != v13);
  }

  *(a1 + 368) = v12;
  v17 = *(a1 + 432);
  v18 = *(a1 + 440);
  if (v17 != v18)
  {
    v19 = *(a1 + 408);
    v20 = *(a1 + 384);
    v21 = *(a1 + 432);
    do
    {
      v22 = *v21++;
      *(v19 + ((v22 >> 3) & 0x1FFFFFF8)) &= ~(1 << v22);
      *(v20 + 4 * v22) = -1;
    }

    while (v21 != v18);
  }

  *(a1 + 440) = v17;
  sub_C4306C((a1 + 488));
  *(a1 + 472) = 0;
  v33 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(&v34, &__p);
  v23 = (a1 + 592);
  if (*(a1 + 615) < 0)
  {
    operator delete(*v23);
  }

  *v23 = v34;
  *(a1 + 608) = v35;
  HIBYTE(v35) = 0;
  LOBYTE(v34) = 0;
  v24 = v41;
  *(a1 + 680) = v40;
  *(a1 + 696) = v24;
  v25 = v43;
  *(a1 + 712) = v42;
  *(a1 + 728) = v25;
  v26 = v37;
  *(a1 + 616) = v36;
  *(a1 + 632) = v26;
  v27 = v39;
  *(a1 + 648) = v38;
  *(a1 + 664) = v27;
  if (v33 < 0)
  {
    operator delete(__p);
    v28 = (2 * *(a1 + 8) + 2);
    *(a1 + 168) = v28;
    if ((*(a1 + 24) & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v28 = (2 * *(a1 + 8) + 2);
  *(a1 + 168) = v28;
  if (*(a1 + 24))
  {
LABEL_17:
    v29 = *(a1 + 176);
    v29[3] = v29[2];
    *v29 = 0;
    v29[1] = v28;
  }

LABEL_18:
  *(a1 + 200) = *(a1 + 192);
  *(a1 + 224) = *(a1 + 216);
  sub_4D9168(a1 + 464, v28, 0);
  return sub_C430C8((a1 + 488), *(a1 + 16), v30);
}

void sub_BAD4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_BAD4E8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 360);
  v4 = *(a1 + 368);
  if (v3 == v4)
  {
    v19 = *(a1 + 360);
    goto LABEL_25;
  }

  v5 = 24 * (a2 - 2);
  do
  {
    v6 = *v3;
    v7 = *(a1 + 176);
    v8 = *v7;
    v9 = v7;
    if (*v7 > v6)
    {
      goto LABEL_7;
    }

    *v7 = v6 + 1;
    v10 = v7[2];
    v11 = v7[1] * (v6 + 1);
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7[3] - v10) >> 3);
    if (v11 > v12)
    {
      sub_BAF9A8((v7 + 2), v11 - v12);
      v9 = *(a1 + 176);
      v8 = *v9;
LABEL_7:
      v13 = *(v7[2] + 24 * v7[1] * v6 + v5);
      if (v8 > v6)
      {
        goto LABEL_16;
      }

LABEL_8:
      *v9 = v6 + 1;
      v14 = v9[2];
      v15 = v9[1] * (v6 + 1);
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v9[3] - v14) >> 3);
      if (v15 <= v16)
      {
        if (v15 < v16)
        {
          v9[3] = v14 + 24 * v15;
        }
      }

      else
      {
        sub_BAF9A8((v9 + 2), v15 - v16);
      }

      goto LABEL_16;
    }

    if (v11 < v12)
    {
      v7[3] = v10 + 24 * v11;
    }

    v9 = v7;
    v13 = *(v7[2] + 24 * v7[1] * v6 + v5);
    if (v6 + 1 <= v6)
    {
      goto LABEL_8;
    }

LABEL_16:
    if (v13 != 0x7FFFFFFF)
    {
      v17 = (v9[2] + 24 * v9[1] * v6 + 24 * a2);
      if (*v17 == 0x7FFFFFFF || *v17 < v13)
      {
        *v17 = v13;
      }
    }

    ++v3;
  }

  while (v3 != v4);
  v3 = *(a1 + 360);
  v19 = *(a1 + 368);
LABEL_25:
  result = *(a1 + 696) + ((v19 - v3) >> 2);
  *(a1 + 696) = result;
  return result;
}

double sub_BAD6A0(uint64_t a1, unsigned int a2)
{
  sub_7E9A4(v34);
  v4 = *(a1 + 264);
  v33 = *(a1 + 272);
  if (v4 != v33)
  {
    v30 = ~a2;
    v31 = a2;
    v32 = 24 * (a2 - 1);
    while (1)
    {
      v6 = *v4;
      v7 = *sub_A9C5E0((*(a1 + 48) + 88), v6);
      v8 = *(a1 + 176);
      if (*v8 <= v6)
      {
        *v8 = v6 + 1;
        v9 = v8[2];
        v10 = v8[1] * (v6 + 1);
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v8[3] - v9) >> 3);
        if (v10 <= v11)
        {
          if (v10 < v11)
          {
            v8[3] = v9 + 24 * v10;
          }
        }

        else
        {
          sub_BAF9A8((v8 + 2), v10 - v11);
        }
      }

      v12 = *(v8[2] + 24 * v8[1] * v6 + v32);
      if (HIDWORD(v7) == 1 && (v7 + 3) < 2)
      {
LABEL_21:
        v18 = v12;
        v19 = *(a1 + 64);
        if (v19)
        {
          goto LABEL_28;
        }

        goto LABEL_33;
      }

      v14 = *(*(a1 + 40) + 4120);
      if (*(v14 + 17) == 1)
      {
        break;
      }

      v15 = sub_502FF8(v14 + 24, __ROR8__(v7, 32), 0, "stop");
      v20 = (v15 - *v15);
      if (*v20 >= 0x15u)
      {
        v17 = v20[10];
        if (v17)
        {
          goto LABEL_25;
        }
      }

      v18 = v12 - 30;
      v19 = *(a1 + 64);
      if (v19)
      {
LABEL_28:
        if (*v19 > v6)
        {
          v21 = 0;
          v22 = *(a1 + 168) + v30;
          v23 = v22;
          while (v21 <= v22)
          {
            v24 = *sub_BAFC3C(v19 + 2, v19[1] * v6 + v23);
            v21 += 2;
            v23 -= 2;
            if (v24 != 0x7FFFFFFF)
            {
              if (v24 > v18)
              {
                goto LABEL_5;
              }

              goto LABEL_33;
            }
          }
        }

        goto LABEL_5;
      }

LABEL_33:
      if (sub_BAF528(a1, 1u, v6, v31, v18))
      {
        v25 = *(a1 + 176);
        if (*v25 <= v6)
        {
          *v25 = v6 + 1;
          v26 = v25[2];
          v27 = v25[1] * (v6 + 1);
          v28 = 0xAAAAAAAAAAAAAAABLL * ((v25[3] - v26) >> 3);
          if (v27 > v28)
          {
            sub_BAF9A8((v25 + 2), v27 - v28);
          }

          else if (v27 < v28)
          {
            v25[3] = v26 + 24 * v27;
          }
        }

        v5 = v25[2] + 24 * v25[1] * v6 + 24 * v31;
        *(v5 + 4) = v6;
        *(v5 + 8) = -1;
        *(v5 + 16) = v12;
        *(v5 + 20) = -1;
      }

LABEL_5:
      if (++v4 == v33)
      {
        goto LABEL_38;
      }
    }

    v15 = sub_A74944(v14 + 24, v7, 0, "transfers at stop");
    v16 = (v15 - *v15);
    if (*v16 < 5u)
    {
      goto LABEL_21;
    }

    v17 = v16[2];
    if (!v17)
    {
      v18 = v12;
      v19 = *(a1 + 64);
      if (v19)
      {
        goto LABEL_28;
      }

      goto LABEL_33;
    }

LABEL_25:
    v18 = v12 - *(v15 + v17);
    v19 = *(a1 + 64);
    if (v19)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

LABEL_38:
  result = sub_7EA60(v34) + *(a1 + 632);
  *(a1 + 632) = result;
  return result;
}

double sub_BAD9BC(uint64_t a1, unsigned int a2)
{
  sub_7E9A4(v113);
  v4 = *(a1 + 264);
  v102 = *(a1 + 272);
  if (v4 != v102)
  {
    v104 = ~a2;
    v105 = a2;
    v101 = 24 * (a2 - 1);
    do
    {
      v103 = v4;
      v5 = *v4;
      v6 = *sub_A9C5E0((*(a1 + 48) + 88), v5);
      v7 = *(a1 + 176);
      if (*v7 <= v5)
      {
        *v7 = v5 + 1;
        v8 = v7[2];
        v9 = v7[1] * (v5 + 1);
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v7[3] - v8) >> 3);
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v7[3] = v8 + 24 * v9;
          }
        }

        else
        {
          v11 = v6;
          sub_BAF9A8((v7 + 2), v9 - v10);
          v6 = v11;
        }
      }

      v106 = *(v7[2] + 24 * v7[1] * v5 + v101);
      sub_A82C20(&v107, *(a1 + 40), v6);
      v12 = v108;
      v13 = 16;
      if (v112)
      {
        v13 = 32;
      }

      v14 = *(&v107 + v13);
      while (v12 < v14)
      {
        v17 = __ROR8__(*v12, 32);
        v18 = *(a1 + 48);
        v19 = *(v18 + 56) - 1;
        v20 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v17 ^ (v17 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v17 ^ (v17 >> 33))) >> 33));
        v21 = v20 ^ (v20 >> 33);
        v22 = *(v18 + 80);
        v24 = *(v18 + 64);
        v23 = *(v18 + 68);
        v25 = v21 & v19;
        v26 = (v22 + 12 * (v21 & v19));
        v28 = *v26;
        v27 = v26[1];
        if (v23 == v27 && v24 == v28)
        {
          goto LABEL_60;
        }

        if (*(v18 + 40))
        {
          v30 = -1;
          v31 = 1;
          do
          {
            if (*(v18 + 36) == v27 && *(v18 + 32) == v28)
            {
              if (v30 == -1)
              {
                v30 = v25;
              }
            }

            else if (__PAIR64__(v27, v28) == v17)
            {
              goto LABEL_57;
            }

            v25 = (v25 + v31) & v19;
            v32 = (v22 + 12 * v25);
            v28 = *v32;
            v27 = v32[1];
            ++v31;
          }

          while (v23 != v27 || v24 != v28);
          if (v30 != -1)
          {
            if (sub_A99094(*(a1 + 48), 1))
            {
              goto LABEL_35;
            }

            goto LABEL_61;
          }

LABEL_60:
          v30 = v25;
          if (sub_A99094(*(a1 + 48), 1))
          {
            goto LABEL_35;
          }

          goto LABEL_61;
        }

        v48 = 1;
        while (__PAIR64__(v27, v28) != v17)
        {
          v25 = (v25 + v48) & v19;
          v49 = (v22 + 12 * v25);
          v28 = *v49;
          v27 = v49[1];
          ++v48;
          if (v23 == v27 && v24 == v28)
          {
            goto LABEL_60;
          }
        }

LABEL_57:
        if (v25 != -1)
        {
          v51 = v22 + 12 * v25;
          v52 = *(v51 + 8);
          if (v52 != -1)
          {
            goto LABEL_108;
          }

          goto LABEL_94;
        }

        v30 = -1;
        if (sub_A99094(*(a1 + 48), 1))
        {
LABEL_35:
          v34 = *(v18 + 56) - 1;
          v35 = *(v18 + 80);
          v37 = *(v18 + 64);
          v36 = *(v18 + 68);
          v38 = v34 & v21;
          v39 = (v35 + 12 * (v34 & v21));
          v41 = *v39;
          v40 = v39[1];
          v42 = *(v18 + 40);
          if (v36 == v40 && v37 == v41)
          {
            goto LABEL_84;
          }

          if (v42)
          {
            v44 = -1;
            v45 = 1;
            do
            {
              if (*(v18 + 36) == v40 && *(v18 + 32) == v41)
              {
                if (v44 == -1)
                {
                  v44 = v38;
                }
              }

              else if (__PAIR64__(v40, v41) == v17)
              {
                goto LABEL_78;
              }

              v38 = (v38 + v45) & v34;
              v46 = (v35 + 12 * v38);
              v41 = *v46;
              v40 = v46[1];
              ++v45;
            }

            while (v36 != v40 || v37 != v41);
            if (v44 == -1)
            {
LABEL_84:
              v44 = v38;
            }

            v61 = *(v18 + 48);
            if ((v61 - v42) >= 0x1555555555555555)
            {
              goto LABEL_152;
            }
          }

          else
          {
            v58 = 1;
            while (__PAIR64__(v40, v41) != v17)
            {
              v38 = (v38 + v58) & v34;
              v59 = (v35 + 12 * v38);
              v41 = *v59;
              v40 = v59[1];
              ++v58;
              if (v36 == v40 && v37 == v41)
              {
                v42 = 0;
                goto LABEL_84;
              }
            }

LABEL_78:
            if (v38 != -1)
            {
              v51 = v35 + 12 * v38;
              v52 = *(v51 + 8);
              if (v52 != -1)
              {
                goto LABEL_108;
              }

              goto LABEL_94;
            }

            v44 = -1;
            v61 = *(v18 + 48);
            if ((v61 - v42) >= 0x1555555555555555)
            {
LABEL_152:
              exception = __cxa_allocate_exception(0x10uLL);
              sub_195A000(exception, "insert overflow");
            }
          }

          if (v42 && ((v62 = (v35 + 12 * v44), *(v18 + 36) == v62[1]) ? (v63 = *(v18 + 32) == *v62) : (v63 = 0), v63))
          {
            *(v18 + 40) = v42 - 1;
            v57 = 3 * v44;
          }

          else
          {
            *(v18 + 48) = v61 + 1;
            v57 = 3 * v44;
          }

          goto LABEL_93;
        }

LABEL_61:
        v54 = *(v18 + 40);
        v53 = *(v18 + 48);
        if ((v53 - v54) >= 0x1555555555555555)
        {
          goto LABEL_152;
        }

        v35 = *(v18 + 80);
        if (v54 && ((v55 = (v35 + 12 * v30), *(v18 + 36) == v55[1]) ? (v56 = *(v18 + 32) == *v55) : (v56 = 0), v56))
        {
          *(v18 + 40) = v54 - 1;
        }

        else
        {
          *(v18 + 48) = v53 + 1;
        }

        v57 = 3 * v30;
LABEL_93:
        v64 = 4 * v57;
        v65 = v35 + v64;
        *v65 = v17;
        *(v65 + 8) = -1;
        v51 = *(v18 + 80) + v64;
        v52 = *(v51 + 8);
        if (v52 != -1)
        {
          goto LABEL_108;
        }

LABEL_94:
        v66 = *(v18 + 112);
        *(v18 + 112) = v66 + 1;
        *(v51 + 8) = v66;
        v68 = *(v18 + 96);
        v67 = *(v18 + 104);
        if (v68 >= v67)
        {
          v70 = *(v18 + 88);
          v71 = v68 - v70;
          v72 = (v68 - v70) >> 3;
          v73 = v72 + 1;
          if ((v72 + 1) >> 61)
          {
            sub_1794();
          }

          v74 = v67 - v70;
          if (v74 >> 2 > v73)
          {
            v73 = v74 >> 2;
          }

          if (v74 >= 0x7FFFFFFFFFFFFFF8)
          {
            v75 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v75 = v73;
          }

          if (v75)
          {
            if (!(v75 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v76 = (v68 - v70) >> 3;
          v77 = (8 * v72);
          v78 = (8 * v72 - 8 * v76);
          *v77 = v17;
          v69 = v77 + 1;
          memcpy(v78, v70, v71);
          *(v18 + 88) = v78;
          *(v18 + 96) = v69;
          *(v18 + 104) = 0;
          if (v70)
          {
            operator delete(v70);
          }
        }

        else
        {
          *v68 = v17;
          v69 = v68 + 8;
        }

        *(v18 + 96) = v69;
        v52 = *(v51 + 8);
LABEL_108:
        *(a1 + 688) = *(a1 + 688) + 1.0;
        if (v5 != v52)
        {
          v79 = *(v108 + 2);
          v80 = v79 / -10;
          v81 = v79 % 10;
          if (v79 < 0)
          {
            v82 = -5;
          }

          else
          {
            v82 = 5;
          }

          v83 = v80 + v106 + (((-103 * (v82 + v81)) >> 15) & 1) + ((-103 * (v82 + v81)) >> 10);
          v84 = *(a1 + 64);
          if (v84)
          {
            if (*v84 > v52)
            {
              v85 = 0;
              v86 = *(a1 + 168) + v104;
              v87 = v86;
              while (v85 <= v86)
              {
                v88 = *sub_BAFC3C(v84 + 2, v84[1] * v52 + v87);
                v85 += 2;
                v87 -= 2;
                if (v88 != 0x7FFFFFFF)
                {
                  if (v88 > v83)
                  {
                    break;
                  }

                  goto LABEL_118;
                }
              }
            }
          }

          else
          {
LABEL_118:
            if (sub_BAF528(a1, 1u, v52, v105, v83))
            {
              v89 = *(a1 + 176);
              if (*v89 <= v52)
              {
                *v89 = v52 + 1;
                v90 = v89[2];
                v91 = v89[1] * (v52 + 1);
                v92 = 0xAAAAAAAAAAAAAAABLL * ((v89[3] - v90) >> 3);
                if (v91 <= v92)
                {
                  if (v91 < v92)
                  {
                    v89[3] = v90 + 24 * v91;
                  }
                }

                else
                {
                  sub_BAF9A8((v89 + 2), v91 - v92);
                }
              }

              v93 = v89[2] + 24 * v89[1] * v52 + 24 * v105;
              *(v93 + 4) = v5;
              *(v93 + 8) = -1;
              *(v93 + 16) = v106;
              *(v93 + 20) = -1;
            }
          }
        }

        v14 = v109;
        v12 = (v108 + 12);
        v108 = v12;
        if (v12 == v109)
        {
          v12 = v110;
          v108 = v110;
          v15 = 1;
          v112 = 1;
        }

        else
        {
          v15 = v112;
        }

        v16 = v111;
        if (v15)
        {
          v94 = v111;
        }

        else
        {
          v94 = v109;
        }

        if (*(v107 + 16) == 1 && v12 < v94)
        {
          while (1)
          {
            v96 = __ROR8__(*v12, 32);
            if (HIDWORD(v96) == 1 && (v96 + 3) < 2)
            {
              break;
            }

            if (sub_2D5204(**(v107 + 4120)))
            {
              v12 = v108;
              v14 = v109;
              v15 = v112;
              break;
            }

            v14 = v109;
            v12 = (v108 + 12);
            v108 = v12;
            if (v12 == v109)
            {
              v12 = v110;
              v108 = v110;
              v15 = 1;
              v112 = 1;
              if (v110 >= v111)
              {
                break;
              }
            }

            else
            {
              v15 = v112;
              v98 = 16;
              if (v112)
              {
                v98 = 32;
              }

              if (v12 >= *(&v107 + v98))
              {
                break;
              }
            }
          }

          v16 = v111;
        }

        if (v15)
        {
          v14 = v16;
        }
      }

      v4 = v103 + 1;
    }

    while (v103 + 1 != v102);
  }

  result = sub_7EA60(v113) + *(a1 + 632);
  *(a1 + 632) = result;
  return result;
}

double sub_BAE27C(uint64_t a1, unsigned int a2)
{
  sub_7E9A4(v176);
  v4 = *(a1 + 432);
  v5 = *(a1 + 440);
  if (v4 != v5)
  {
    v6 = *(a1 + 408);
    v7 = *(a1 + 384);
    v8 = *(a1 + 432);
    do
    {
      v9 = *v8++;
      *(v6 + ((v9 >> 3) & 0x1FFFFFF8)) &= ~(1 << v9);
      *(v7 + 4 * v9) = -1;
    }

    while (v8 != v5);
  }

  *(a1 + 440) = v4;
  v10 = *(a1 + 312);
  v167 = *(a1 + 320);
  if (v10 == v167)
  {
    goto LABEL_232;
  }

  v168 = a2;
  v164 = a2 + 1;
  while (2)
  {
    v11 = sub_A9C5E0((*(a1 + 48) + 88), *v10);
    sub_A7905C(v169, *(a1 + 40), *v11, 0, 0, 0);
LABEL_8:
    v12 = v172;
LABEL_9:
    v13 = v173;
    while (v12 < v13)
    {
      v14 = __ROR8__(*v12, 32);
      v15 = *(a1 + 56);
      v16 = *(v15 + 56) - 1;
      v17 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v14 ^ (v14 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v14 ^ (v14 >> 33))) >> 33));
      v18 = v17 ^ (v17 >> 33);
      v19 = *(v15 + 80);
      v21 = *(v15 + 64);
      v20 = *(v15 + 68);
      v22 = v18 & v16;
      v23 = (v19 + 12 * (v18 & v16));
      v25 = *v23;
      v24 = v23[1];
      if (v20 == v24 && v21 == v25)
      {
        goto LABEL_55;
      }

      if (*(v15 + 40))
      {
        v27 = -1;
        v28 = 1;
        do
        {
          if (*(v15 + 36) == v24 && *(v15 + 32) == v25)
          {
            if (v27 == -1)
            {
              v27 = v22;
            }
          }

          else if (__PAIR64__(v24, v25) == v14)
          {
            goto LABEL_51;
          }

          v22 = (v22 + v28) & v16;
          v29 = (v19 + 12 * v22);
          v25 = *v29;
          v24 = v29[1];
          ++v28;
        }

        while (v20 != v24 || v21 != v25);
        if (v27 != -1)
        {
          if (sub_A99094(*(a1 + 56), 1))
          {
            goto LABEL_29;
          }

          goto LABEL_56;
        }

LABEL_55:
        v27 = v22;
        if (sub_A99094(*(a1 + 56), 1))
        {
          goto LABEL_29;
        }

        goto LABEL_56;
      }

      v45 = 1;
      while (__PAIR64__(v24, v25) != v14)
      {
        v22 = (v22 + v45) & v16;
        v46 = (v19 + 12 * v22);
        v25 = *v46;
        v24 = v46[1];
        ++v45;
        if (v20 == v24 && v21 == v25)
        {
          goto LABEL_55;
        }
      }

LABEL_51:
      if (v22 != -1)
      {
        v48 = v19 + 12 * v22;
        v49 = *(v48 + 8);
        if (v49 != -1)
        {
          goto LABEL_102;
        }

        goto LABEL_53;
      }

      v27 = -1;
      if (sub_A99094(*(a1 + 56), 1))
      {
LABEL_29:
        v31 = *(v15 + 56) - 1;
        v32 = *(v15 + 80);
        v34 = *(v15 + 64);
        v33 = *(v15 + 68);
        v35 = v31 & v18;
        v36 = (v32 + 12 * (v31 & v18));
        v38 = *v36;
        v37 = v36[1];
        v39 = *(v15 + 40);
        if (v33 == v37 && v34 == v38)
        {
          goto LABEL_92;
        }

        if (v39)
        {
          v41 = -1;
          v42 = 1;
          do
          {
            if (*(v15 + 36) == v37 && *(v15 + 32) == v38)
            {
              if (v41 == -1)
              {
                v41 = v35;
              }
            }

            else if (__PAIR64__(v37, v38) == v14)
            {
              goto LABEL_82;
            }

            v35 = (v35 + v42) & v31;
            v43 = (v32 + 12 * v35);
            v38 = *v43;
            v37 = v43[1];
            ++v42;
          }

          while (v33 != v37 || v34 != v38);
          if (v41 == -1)
          {
LABEL_92:
            v41 = v35;
          }

          v74 = *(v15 + 48);
          if ((v74 - v39) >= 0x1555555555555555)
          {
            goto LABEL_233;
          }
        }

        else
        {
          v65 = 1;
          while (__PAIR64__(v37, v38) != v14)
          {
            v35 = (v35 + v65) & v31;
            v66 = (v32 + 12 * v35);
            v38 = *v66;
            v37 = v66[1];
            ++v65;
            if (v33 == v37 && v34 == v38)
            {
              v39 = 0;
              goto LABEL_92;
            }
          }

LABEL_82:
          if (v35 != -1)
          {
            v48 = v32 + 12 * v35;
            v49 = *(v48 + 8);
            if (v49 != -1)
            {
              goto LABEL_102;
            }

            goto LABEL_53;
          }

          v41 = -1;
          v74 = *(v15 + 48);
          if ((v74 - v39) >= 0x1555555555555555)
          {
LABEL_233:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }
        }

        if (v39 && ((v75 = (v32 + 12 * v41), *(v15 + 36) == v75[1]) ? (v76 = *(v15 + 32) == *v75) : (v76 = 0), v76))
        {
          *(v15 + 40) = v39 - 1;
          v64 = 3 * v41;
        }

        else
        {
          *(v15 + 48) = v74 + 1;
          v64 = 3 * v41;
        }

        goto LABEL_101;
      }

LABEL_56:
      v55 = *(v15 + 40);
      v54 = *(v15 + 48);
      if ((v54 - v55) >= 0x1555555555555555)
      {
        goto LABEL_233;
      }

      v32 = *(v15 + 80);
      if (v55 && ((v56 = (v32 + 12 * v27), *(v15 + 36) == v56[1]) ? (v57 = *(v15 + 32) == *v56) : (v57 = 0), v57))
      {
        *(v15 + 40) = v55 - 1;
      }

      else
      {
        *(v15 + 48) = v54 + 1;
      }

      v64 = 3 * v27;
LABEL_101:
      v77 = 4 * v64;
      v78 = v32 + v77;
      *v78 = v14;
      *(v78 + 8) = -1;
      v48 = *(v15 + 80) + v77;
      v49 = *(v48 + 8);
      if (v49 != -1)
      {
LABEL_102:
        v71 = *(v172 + 5);
        v72 = *(a1 + 96);
        v73 = v49;
        if (v72)
        {
          goto LABEL_103;
        }

        goto LABEL_107;
      }

LABEL_53:
      v50 = *(v15 + 112);
      *(v15 + 112) = v50 + 1;
      *(v48 + 8) = v50;
      v52 = *(v15 + 96);
      v51 = *(v15 + 104);
      if (v52 >= v51)
      {
        v58 = *(v15 + 88);
        v59 = v52 - v58;
        v60 = (v52 - v58) >> 3;
        v61 = v60 + 1;
        if ((v60 + 1) >> 61)
        {
          sub_1794();
        }

        v62 = v51 - v58;
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

        if (v63)
        {
          if (!(v63 >> 61))
          {
            operator new();
          }

LABEL_234:
          sub_1808();
        }

        v68 = (v52 - v58) >> 3;
        v69 = (8 * v60);
        v70 = (8 * v60 - 8 * v68);
        *v69 = v14;
        v53 = v69 + 1;
        memcpy(v70, v58, v59);
        *(v15 + 88) = v70;
        *(v15 + 96) = v53;
        *(v15 + 104) = 0;
        if (v58)
        {
          operator delete(v58);
        }
      }

      else
      {
        *v52 = v14;
        v53 = v52 + 8;
      }

      *(v15 + 96) = v53;
      v49 = *(v48 + 8);
      v71 = *(v172 + 5);
      v72 = *(a1 + 96);
      v73 = v49;
      if (v72)
      {
LABEL_103:
        v79 = *v72;
        v80 = 0xAAAAAAAAAAAAAAABLL * ((*(v72 + 8) - *v72) >> 4);
        if (v80 <= v168)
        {
          sub_A9C3BC(v72, v164 - v80);
          v79 = *v72;
        }

        v81 = &v79[48 * v168];
        if (*(v81 + 1) <= v73 || ((*(*v81 + ((v73 >> 3) & 0x1FFFFFF8)) >> v73) & 1) == 0)
        {
          goto LABEL_160;
        }
      }

LABEL_107:
      v82 = v73 >> 6;
      if (*(a1 + 416) <= v73)
      {
        v86 = *(a1 + 384);
        goto LABEL_127;
      }

      v83 = *(a1 + 408);
      v84 = *(v83 + 8 * v82);
      v85 = 1 << v73;
      v86 = *(a1 + 384);
      if ((v84 & (1 << v73)) == 0)
      {
        goto LABEL_127;
      }

      v87 = *(a1 + 392);
      v88 = &v87[-v86] >> 2;
      if (v88 <= v73)
      {
        v163 = v71;
        v89 = v49 + 1;
        v90 = v89 - v88;
        if (v89 <= v88)
        {
          v71 = v163;
          if (v89 < v88)
          {
            *(a1 + 392) = v86 + 4 * v89;
          }
        }

        else
        {
          v91 = *(a1 + 400);
          if (v90 > (v91 - v87) >> 2)
          {
            v92 = v91 - v86;
            v93 = v92 >> 1;
            if (v92 >> 1 <= v89)
            {
              v93 = v49 + 1;
            }

            v94 = v92 >= 0x7FFFFFFFFFFFFFFCLL;
            v95 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v94)
            {
              v95 = v93;
            }

            if (!(v95 >> 62))
            {
              operator new();
            }

            goto LABEL_234;
          }

          v96 = 4 * v90;
          memset(v87, 255, v96);
          *(a1 + 392) = &v87[v96];
          v71 = v163;
        }

        sub_4D9168(a1 + 408, v49 + 1, 0);
        v83 = *(a1 + 408);
        v82 = v73 >> 6;
        v84 = *(v83 + 8 * (v73 >> 6));
      }

      if ((v84 & v85) != 0)
      {
        v86 = *(a1 + 384);
        if (*(v86 + 4 * v73) < v71)
        {
          goto LABEL_127;
        }
      }

      else
      {
        *(v83 + 8 * v82) = v84 | v85;
        v108 = *(a1 + 440);
        v107 = *(a1 + 448);
        if (v108 >= v107)
        {
          v124 = *(a1 + 432);
          v125 = v108 - v124;
          v126 = (v108 - v124) >> 2;
          v127 = v126 + 1;
          if ((v126 + 1) >> 62)
          {
LABEL_237:
            sub_1794();
          }

          v166 = v10;
          v128 = v107 - v124;
          if (v128 >> 1 > v127)
          {
            v127 = v128 >> 1;
          }

          if (v128 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v129 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v129 = v127;
          }

          if (v129)
          {
            if (!(v129 >> 62))
            {
              operator new();
            }

            goto LABEL_234;
          }

          v130 = v82;
          v131 = v126;
          v132 = (4 * v126);
          v133 = &v132[-v131];
          *v132 = v49;
          v134 = v132 + 1;
          memcpy(v133, v124, v125);
          *(a1 + 432) = v133;
          *(a1 + 440) = v134;
          *(a1 + 448) = 0;
          if (v124)
          {
            operator delete(v124);
          }

          v82 = v130;
          v10 = v166;
          *(a1 + 440) = v134;
          v86 = *(a1 + 384);
          if (*(v86 + 4 * v73) >= v71)
          {
            goto LABEL_160;
          }

LABEL_127:
          v97 = *(a1 + 392);
          v98 = &v97[-v86] >> 2;
          if (v98 <= v73)
          {
            v99 = v49 + 1;
            v100 = v99 - v98;
            v165 = v10;
            if (v99 <= v98)
            {
              v105 = v82;
              if (v99 < v98)
              {
                v106 = (v86 + 4 * v99);
                goto LABEL_142;
              }
            }

            else
            {
              v101 = *(a1 + 400);
              if (v100 > (v101 - v97) >> 2)
              {
                v102 = v101 - v86;
                v103 = v102 >> 1;
                if (v102 >> 1 <= v99)
                {
                  v103 = v49 + 1;
                }

                v94 = v102 >= 0x7FFFFFFFFFFFFFFCLL;
                v104 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v94)
                {
                  v104 = v103;
                }

                if (!(v104 >> 62))
                {
                  operator new();
                }

                goto LABEL_234;
              }

              v105 = v82;
              memset(v97, 255, 4 * v100);
              v106 = &v97[4 * v100];
LABEL_142:
              *(a1 + 392) = v106;
            }

            sub_4D9168(a1 + 408, v49 + 1, 0);
            v82 = v105;
            v10 = v165;
          }

          v109 = *(a1 + 408);
          v110 = *(v109 + 8 * v82);
          if ((v110 & (1 << v73)) == 0)
          {
            *(v109 + 8 * v82) = v110 | (1 << v73);
            v112 = *(a1 + 440);
            v111 = *(a1 + 448);
            if (v112 >= v111)
            {
              v114 = *(a1 + 432);
              v115 = v112 - v114;
              v116 = (v112 - v114) >> 2;
              v117 = v116 + 1;
              if ((v116 + 1) >> 62)
              {
                goto LABEL_237;
              }

              v118 = v111 - v114;
              if (v118 >> 1 > v117)
              {
                v117 = v118 >> 1;
              }

              if (v118 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v119 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v119 = v117;
              }

              if (v119)
              {
                if (!(v119 >> 62))
                {
                  operator new();
                }

                goto LABEL_234;
              }

              v120 = v116;
              v121 = (4 * v116);
              v122 = &v121[-v120];
              *v121 = v49;
              v113 = v121 + 1;
              memcpy(v122, v114, v115);
              *(a1 + 432) = v122;
              *(a1 + 440) = v113;
              *(a1 + 448) = 0;
              if (v114)
              {
                operator delete(v114);
              }
            }

            else
            {
              *v112 = v49;
              v113 = v112 + 4;
            }

            *(a1 + 440) = v113;
          }

          *(*(a1 + 384) + 4 * v73) = v71;
          goto LABEL_160;
        }

        *v108 = v49;
        *(a1 + 440) = v108 + 4;
        v86 = *(a1 + 384);
        if (*(v86 + 4 * v73) < v71)
        {
          goto LABEL_127;
        }
      }

LABEL_160:
      v13 = v173;
      v12 = v172 + 2;
      v172 = v12;
      if (v12 == v173)
      {
        v123 = v170 + 2;
        v170 = v123;
        if (v123 >= v171)
        {
          break;
        }

        while (1)
        {
          v12 = *v123;
          v13 = v123[1];
          if (*v123 != v13)
          {
            break;
          }

          v123 += 2;
          v170 = v123;
          if (v123 >= v171)
          {
            goto LABEL_6;
          }
        }

        v172 = *v123;
        v173 = v13;
        if (v12 < v13)
        {
          goto LABEL_184;
        }
      }

      else if (v12 < v173)
      {
        while (1)
        {
LABEL_184:
          if ((v175 & 1) == 0)
          {
            v135 = v169[0];
            v136 = *v12;
            v137 = *(v169[0] + 4136);
            if (sub_68312C(v137 + 3896))
            {
              if (*(v137 + 3944))
              {
                if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                {
                  v157 = sub_A57824(-85.0, 0.0);
                  sub_58168(v157 >> 17, v157 >> 49);
                  dword_27339C0 = v158 | 0x40000000;
                  __cxa_guard_release(&qword_27339C8);
                }

                v138 = __ROR8__(v136, 32);
                v139 = *(v135 + 4136);
                if (dword_27339C0 == HIDWORD(v138))
                {
                  if (!sub_68312C(v139 + 3896) || !*(v139 + 3944))
                  {
                    v161 = __cxa_allocate_exception(0x40uLL);
                    v162 = sub_2D390(v161, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                  }
                }

                else
                {
                  v142 = *(v139 + 3944);
                  v143 = v142[1];
                  if (v143)
                  {
                    v144 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v138 ^ (v138 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v138 ^ (v138 >> 33))) >> 33));
                    v145 = v144 ^ (v144 >> 33);
                    v146 = vcnt_s8(v143);
                    v146.i16[0] = vaddlv_u8(v146);
                    if (v146.u32[0] > 1uLL)
                    {
                      v147 = v145;
                      if (v145 >= *&v143)
                      {
                        v147 = v145 % *&v143;
                      }
                    }

                    else
                    {
                      v147 = (*&v143 - 1) & v145;
                    }

                    v148 = *(*v142 + 8 * v147);
                    if (v148)
                    {
                      v149 = *v148;
                      if (v149)
                      {
                        if (v146.u32[0] < 2uLL)
                        {
                          v150 = *&v143 - 1;
                          while (1)
                          {
                            v154 = v149[1];
                            if (v145 == v154)
                            {
                              if (*(v149 + 5) == HIDWORD(v138) && *(v149 + 4) == v138)
                              {
                                goto LABEL_182;
                              }
                            }

                            else if ((v154 & v150) != v147)
                            {
                              goto LABEL_224;
                            }

                            v149 = *v149;
                            if (!v149)
                            {
                              goto LABEL_224;
                            }
                          }
                        }

                        do
                        {
                          v152 = v149[1];
                          if (v145 == v152)
                          {
                            if (*(v149 + 5) == HIDWORD(v138) && *(v149 + 4) == v138)
                            {
                              goto LABEL_182;
                            }
                          }

                          else
                          {
                            if (v152 >= *&v143)
                            {
                              v152 %= *&v143;
                            }

                            if (v152 != v147)
                            {
                              break;
                            }
                          }

                          v149 = *v149;
                        }

                        while (v149);
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_224:
          if (v174 == 1)
          {
            goto LABEL_8;
          }

          v155 = sub_C9E544(v169[0] + 3896);
          v12 = v172;
          if (v155 >= *(v172 + 14))
          {
            if (v174)
            {
              goto LABEL_9;
            }

            v156 = sub_585D8((v169[0] + 3896));
            v12 = v172;
            if ((v156 & 1) != 0 || (*(v172 + 15) & 1) == 0)
            {
              goto LABEL_9;
            }
          }

LABEL_182:
          v12 = v172 + 2;
          v172 = v12;
          if (v12 == v173)
          {
            v140 = v170 + 2;
            v170 = v140;
            if (v140 >= v171)
            {
              goto LABEL_9;
            }

            while (1)
            {
              v12 = *v140;
              v141 = v140[1];
              if (*v140 != v141)
              {
                break;
              }

              v140 += 2;
              v170 = v140;
              if (v140 >= v171)
              {
                goto LABEL_6;
              }
            }

            v172 = *v140;
            v173 = v141;
            if (v12 >= v141)
            {
              goto LABEL_9;
            }
          }

          else if (v12 >= v173)
          {
            goto LABEL_9;
          }
        }
      }
    }

LABEL_6:
    if (++v10 != v167)
    {
      continue;
    }

    break;
  }

LABEL_232:
  result = sub_7EA60(v176) + *(a1 + 624);
  *(a1 + 624) = result;
  return result;
}

uint64_t sub_BAF0B4(uint64_t a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return 0;
  }

  v3 = sub_A9D694(a1);
  v4 = sub_A9D7D4(a1) + v3;
  sub_2D577C(**(a1 + 40));
  if (v32 == 1)
  {
    v5 = sub_32AD80(&v21) * 1048576.0;
    if (v5 >= 0.0)
    {
      v6 = v5;
      if (v5 >= 4.50359963e15)
      {
        goto LABEL_16;
      }

      v7 = (v5 + v5) + 1;
    }

    else
    {
      v6 = v5;
      if (v5 <= -4.50359963e15)
      {
        goto LABEL_16;
      }

      v7 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
    }

    v6 = (v7 >> 1);
LABEL_16:
    if (v6 >= 1.84467441e19)
    {
      v4 -= 2;
      if (v4 <= *a1)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (v5 >= 0.0)
    {
      if (v5 >= 4.50359963e15)
      {
        goto LABEL_25;
      }

      v16 = (v5 + v5) + 1;
    }

    else
    {
      if (v5 <= -4.50359963e15)
      {
        goto LABEL_25;
      }

      v16 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
    }

    v5 = (v16 >> 1);
LABEL_25:
    v4 += v5;
    if (v4 <= *a1)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v4 <= *a1)
  {
    return 0;
  }

LABEL_8:
  v9 = sub_7E7E4(1u);
  result = 1;
  if (!v9)
  {
    return result;
  }

  sub_19594F8(&v21);
  v10 = sub_4A5C(&v21, "Exceeded memory limit of ", 25);
  v11 = sub_71478(v10, *a1);
  v12 = sub_4A5C(v11, " in directional SPA (", 21);
  v13 = sub_71478(v12, v4);
  v14 = sub_4A5C(v13, ") in round ", 11);
  std::ostream::operator<<();
  sub_4A5C(v14, "; terminating algorithm.", 24);
  if ((v31 & 0x10) != 0)
  {
    v17 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v17 = v27;
    }

    v18 = v26;
    v15 = v17 - v26;
    if (v17 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_41:
      sub_3244();
    }

LABEL_30:
    if (v15 >= 0x17)
    {
      operator new();
    }

    v20 = v15;
    if (v15)
    {
      memmove(&__dst, v18, v15);
    }

    goto LABEL_35;
  }

  if ((v31 & 8) != 0)
  {
    v18 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_41;
    }

    goto LABEL_30;
  }

  v15 = 0;
  v20 = 0;
LABEL_35:
  *(&__dst + v15) = 0;
  sub_7E854(&__dst, 1u);
  if (v20 < 0)
  {
    operator delete(__dst);
  }

  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::ostream::~ostream();
  std::ios::~ios();
  return 1;
}

void sub_BAF4E4(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_BAF528(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, signed int a5)
{
  v7 = a3;
  v55 = a3;
  v10 = *(a1 + 80);
  if (v10)
  {
    v12 = *v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v10[1] - *v10) >> 4);
    if (v13 <= a4)
    {
      sub_A9C3BC(*(a1 + 80), a4 - v13 + 1);
      v12 = *v10;
    }

    v14 = (v12 + 48 * a4);
    if (v14[1] <= v7 || ((*(*v14 + ((v7 >> 3) & 0x1FFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 25) == 1)
  {
    v15 = a1 + 24 * a2;
    v16 = *(v15 + 192);
    v17 = *(v15 + 200);
    v18 = (v15 + 192);
    v19 = *(a1 + 456);
    v20 = (v17 - v16) >> 2;
    if (v20 <= v19)
    {
      sub_617214(v18, v19 - v20 + 1);
      v16 = *v18;
    }

    v21 = (v16 + 4 * v19);
    if (*(a1 + 26) != 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v22 = *(a1 + 176);
    v23 = *(a1 + 456);
    if (*v22 <= v23)
    {
      *v22 = v23 + 1;
      v24 = v22[2];
      v25 = v22[1] * (v23 + 1);
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v22[3] - v24) >> 3);
      if (v25 <= v26)
      {
        if (v25 < v26)
        {
          v22[3] = v24 + 24 * v25;
        }
      }

      else
      {
        sub_BAF9A8((v22 + 2), v25 - v26);
      }
    }

    v21 = (v22[2] + 24 * v22[1] * v23 + 24 * a4);
    if (*(a1 + 26) != 1)
    {
      goto LABEL_22;
    }
  }

  v27 = *v21;
  if (v27 != 0x7FFFFFFF)
  {
    v28 = *(a1 + 28);
    v29 = v28 / -10;
    v30 = v28 % 10;
    v31 = v28 < 0 ? -5 : 5;
    if ((v29 + (((-103 * (v31 + v30)) >> 15) & 1) + ((-103 * (v31 + v30)) >> 10) + v27) >= a5)
    {
      return 0;
    }
  }

LABEL_22:
  if ((*(a1 + 25) & 1) == 0)
  {
    v36 = v7;
    v40 = *(a1 + 176);
    if (*v40 > v7)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v32 = a1 + 24 * a2;
  v33 = *(v32 + 192);
  v34 = *(v32 + 200);
  v35 = (v32 + 192);
  v36 = v7;
  v37 = (v34 - v33) >> 2;
  if (v37 <= v7)
  {
    sub_617214(v35, v7 - v37 + 1);
    v33 = *v35;
  }

  v38 = *(v33 + 4 * v7);
  if (v38 != 0x7FFFFFFF && v38 >= a5)
  {
    return 0;
  }

  v40 = *(a1 + 176);
  if (*v40 <= v7)
  {
LABEL_33:
    *v40 = v36 + 1;
    v41 = v40[2];
    v42 = v40[1] * (v36 + 1);
    v43 = 0xAAAAAAAAAAAAAAABLL * ((v40[3] - v41) >> 3);
    if (v42 <= v43)
    {
      if (v42 < v43)
      {
        v40[3] = v41 + 24 * v42;
      }
    }

    else
    {
      sub_BAF9A8((v40 + 2), v42 - v43);
    }
  }

LABEL_37:
  v44 = (v40[2] + 24 * v40[1] * v36 + 24 * a4);
  if (*v44 == 0x7FFFFFFF || *v44 < a5)
  {
    if (*(a1 + 25))
    {
      v46 = a1 + 24 * a2;
      v47 = *(v46 + 192);
      v48 = *(v46 + 200);
      v49 = (v46 + 192);
      v50 = (v48 - v47) >> 2;
      if (v50 <= v36)
      {
        sub_617214(v49, v36 - v50 + 1);
        v47 = *v49;
      }

      *(v47 + 4 * v36) = a5;
    }

    *v44 = a5;
    v52 = a1 + 48 * a2;
    v53 = (v52 + 240);
    if (*(v52 + 248) <= v36)
    {
      sub_4D9168(v53, v7 + 1, 0);
      if ((*(*v53 + ((v36 >> 3) & 0x1FFFFFF8)) >> v36))
      {
LABEL_50:
        if (*(a1 + 25))
        {
          return 1;
        }

LABEL_54:
        v54 = v7;
        if (*(a1 + 344) <= v7)
        {
          sub_4D9168(a1 + 336, v7 + 1, 0);
          v54 = v55;
        }

        if (((*(*(a1 + 336) + ((v54 >> 3) & 0x1FFFFFF8)) >> v54) & 1) == 0)
        {
          sub_DD38(a1 + 360, &v55);
          result = 1;
          *(*(a1 + 336) + ((v55 >> 3) & 0x1FFFFFF8)) |= 1 << v55;
          return result;
        }

        return 1;
      }
    }

    else if ((*(*v53 + ((v36 >> 3) & 0x1FFFFFF8)) >> v36))
    {
      goto LABEL_50;
    }

    sub_DD38((v53 + 3), &v55);
    v7 = v55;
    *(*v53 + ((v55 >> 3) & 0x1FFFFFF8)) |= 1 << v55;
    if (*(a1 + 25))
    {
      return 1;
    }

    goto LABEL_54;
  }

  return 0;
}

void sub_BAF9A8(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = 24 * a2 - 24;
      if (v10 < 0x18)
      {
        goto LABEL_33;
      }

      v11 = v10 / 0x18 + 1;
      v12 = v3 + 24 * (v11 & 0x1FFFFFFFFFFFFFFELL);
      v13 = (v3 + 32);
      *&v14.f64[0] = 0x8000000080000000;
      *&v14.f64[1] = 0x8000000080000000;
      v15 = vnegq_f64(v14);
      v16 = v11 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = xmmword_22A8400;
        *(v13 - 1) = v15;
        *v13 = xmmword_2266560;
        v13 += 3;
        v16 -= 2;
      }

      while (v16);
      v3 = v12;
      if (v11 != (v11 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_33:
        do
        {
          *v3 = xmmword_22A8400;
          *(v3 + 16) = -COERCE_DOUBLE(0x8000000080000000);
          v3 += 24;
        }

        while (v3 != v9);
      }

      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v17 = 24 * v5;
    v18 = 24 * v5 + 24 * a2;
    v19 = 24 * a2 - 24;
    v20 = 24 * v5;
    if (v19 < 0x18)
    {
      goto LABEL_34;
    }

    v21 = v19 / 0x18 + 1;
    v20 = v17 + 24 * (v21 & 0x1FFFFFFFFFFFFFFELL);
    v22 = (24 * v5 + 32);
    *&v23.f64[0] = 0x8000000080000000;
    *&v23.f64[1] = 0x8000000080000000;
    v24 = vnegq_f64(v23);
    v25 = v21 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v22 - 2) = xmmword_22A8400;
      *(v22 - 1) = v24;
      *v22 = xmmword_2266560;
      v22 += 3;
      v25 -= 2;
    }

    while (v25);
    if (v21 != (v21 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_34:
      do
      {
        *v20 = xmmword_22A8400;
        *(v20 + 16) = -COERCE_DOUBLE(0x8000000080000000);
        v20 += 24;
      }

      while (v20 != v18);
    }

    v26 = *a1;
    v27 = *(a1 + 8) - *a1;
    v28 = v17 - v27;
    memcpy((v17 - v27), *a1, v27);
    *a1 = v28;
    *(a1 + 8) = v18;
    *(a1 + 16) = 0;
    if (v26)
    {

      operator delete(v26);
    }
  }
}

unint64_t sub_BAFC3C(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
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

  return *a1 + 24 * a2;
}

void sub_BAFD78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_BAFE58(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v133[0] = a3;
  *(a1 + 672) = *(a1 + 672) + 1.0;
  v6 = a3;
  v115 = *sub_A9C5E0((*(a1 + 56) + 88), a3);
  v7 = *(a1 + 384);
  v8 = (*(a1 + 392) - v7) >> 2;
  if (v8 <= v6)
  {
    v9 = a3 + 1;
    if (v9 <= v8)
    {
      if (v9 < v8)
      {
        *(a1 + 392) = v7 + 4 * v9;
      }
    }

    else
    {
      sub_49ABAC(a1 + 384, v9 - v8);
    }

    sub_4D9168(a1 + 408, a3 + 1, 0);
  }

  v10 = *(a1 + 408);
  v11 = *(v10 + 8 * (v6 >> 6));
  if (((1 << a3) & v11) == 0)
  {
    *(v10 + 8 * (v6 >> 6)) = (1 << a3) | v11;
    sub_DD38(a1 + 432, v133);
    v6 = v133[0];
  }

  v114 = *(*(a1 + 384) + 4 * v6);
  sub_A9D53C(&v131, *(a1 + 40), v115);
  v12 = v131;
  if (v131 < v132)
  {
    v117 = a2 - 1;
    while (1)
    {
      *(a1 + 680) = *(a1 + 680) + 1.0;
      v118 = *v12;
      v116 = v133[0];
      sub_A79708(&v119, *(a1 + 40), v115, v114, 0, 1);
      v13 = v123;
      if (v123 >= v122 && v123 < v124)
      {
        break;
      }

LABEL_11:
      v12 = v131 + 4;
      v131 = v12;
      if (v12 >= v132)
      {
        return;
      }
    }

    v15 = 0;
    v112 = 0x7FFFFFFF;
    v110 = 0xFFFFFFFFLL;
    v113 = 0xFFFFFFFFLL;
    LODWORD(v111) = -1;
    while (1)
    {
      v16 = __ROR8__(*v13, 32);
      v17 = *(a1 + 48);
      v18 = *(v17 + 56) - 1;
      v19 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) >> 33));
      v20 = v19 ^ (v19 >> 33);
      v21 = *(v17 + 80);
      v23 = *(v17 + 64);
      v22 = *(v17 + 68);
      v24 = v20 & v18;
      v25 = (v21 + 12 * (v20 & v18));
      v27 = *v25;
      v26 = v25[1];
      if (v22 == v26 && v23 == v27)
      {
        goto LABEL_69;
      }

      if (*(v17 + 40))
      {
        break;
      }

      v47 = 1;
      while (__PAIR64__(v26, v27) != v16)
      {
        v24 = (v24 + v47) & v18;
        v48 = (v21 + 12 * v24);
        v27 = *v48;
        v26 = v48[1];
        ++v47;
        if (v22 == v26 && v23 == v27)
        {
          goto LABEL_69;
        }
      }

LABEL_57:
      if (v24 != -1)
      {
        v50 = v21 + 12 * v24;
        v51 = *(v50 + 8);
        if (v51 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_119;
      }

      v29 = -1;
      if (sub_A99094(*(a1 + 48), 1))
      {
LABEL_35:
        v33 = *(v17 + 56) - 1;
        v34 = *(v17 + 80);
        v36 = *(v17 + 64);
        v35 = *(v17 + 68);
        v37 = v33 & v20;
        v38 = (v34 + 12 * (v33 & v20));
        v40 = *v38;
        v39 = v38[1];
        v41 = *(v17 + 40);
        if (v35 == v39 && v36 == v40)
        {
          goto LABEL_109;
        }

        if (v41)
        {
          v43 = -1;
          v44 = 1;
          do
          {
            if (*(v17 + 36) == v39 && *(v17 + 32) == v40)
            {
              if (v43 == -1)
              {
                v43 = v37;
              }
            }

            else if (__PAIR64__(v39, v40) == v16)
            {
              goto LABEL_91;
            }

            v37 = (v37 + v44) & v33;
            v45 = (v34 + 12 * v37);
            v40 = *v45;
            v39 = v45[1];
            ++v44;
          }

          while (v35 != v39 || v36 != v40);
          if (v43 == -1)
          {
LABEL_109:
            v43 = v37;
          }

          v78 = *(v17 + 48);
          if ((v78 - v41) >= 0x1555555555555555)
          {
            goto LABEL_181;
          }
        }

        else
        {
          v62 = 1;
          while (__PAIR64__(v39, v40) != v16)
          {
            v37 = (v37 + v62) & v33;
            v63 = (v34 + 12 * v37);
            v40 = *v63;
            v39 = v63[1];
            ++v62;
            if (v35 == v39 && v36 == v40)
            {
              v41 = 0;
              goto LABEL_109;
            }
          }

LABEL_91:
          if (v37 != -1)
          {
            v50 = v34 + 12 * v37;
            v51 = *(v50 + 8);
            if (v51 != -1)
            {
              goto LABEL_59;
            }

            goto LABEL_119;
          }

          v43 = -1;
          v78 = *(v17 + 48);
          if ((v78 - v41) >= 0x1555555555555555)
          {
LABEL_181:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }
        }

        if (v41 && ((v79 = (v34 + 12 * v43), *(v17 + 36) == v79[1]) ? (v80 = *(v17 + 32) == *v79) : (v80 = 0), v80))
        {
          *(v17 + 40) = v41 - 1;
          v57 = 3 * v43;
        }

        else
        {
          *(v17 + 48) = v78 + 1;
          v57 = 3 * v43;
        }

        goto LABEL_118;
      }

LABEL_70:
      v54 = *(v17 + 40);
      v53 = *(v17 + 48);
      if ((v53 - v54) >= 0x1555555555555555)
      {
        goto LABEL_181;
      }

      v34 = *(v17 + 80);
      if (v54 && ((v55 = (v34 + 12 * v29), *(v17 + 36) == v55[1]) ? (v56 = *(v17 + 32) == *v55) : (v56 = 0), v56))
      {
        *(v17 + 40) = v54 - 1;
      }

      else
      {
        *(v17 + 48) = v53 + 1;
      }

      v57 = 3 * v29;
LABEL_118:
      v81 = 4 * v57;
      v82 = v34 + v81;
      *v82 = v16;
      *(v82 + 8) = -1;
      v50 = *(v17 + 80) + v81;
      v51 = *(v50 + 8);
      if (v51 != -1)
      {
LABEL_59:
        if (!sub_C435EC((a1 + 488), v51, v16))
        {
          goto LABEL_133;
        }

        goto LABEL_60;
      }

LABEL_119:
      v83 = *(v17 + 112);
      *(v17 + 112) = v83 + 1;
      *(v50 + 8) = v83;
      v85 = *(v17 + 96);
      v84 = *(v17 + 104);
      if (v85 >= v84)
      {
        v87 = *(v17 + 88);
        v88 = v85 - v87;
        v89 = (v85 - v87) >> 3;
        v90 = v89 + 1;
        if ((v89 + 1) >> 61)
        {
          sub_1794();
        }

        v91 = v84 - v87;
        if (v91 >> 2 > v90)
        {
          v90 = v91 >> 2;
        }

        if (v91 >= 0x7FFFFFFFFFFFFFF8)
        {
          v92 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v92 = v90;
        }

        if (v92)
        {
          if (!(v92 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v93 = (v85 - v87) >> 3;
        v94 = (8 * v89);
        v95 = (8 * v89 - 8 * v93);
        *v94 = v16;
        v86 = v94 + 1;
        memcpy(v95, v87, v88);
        *(v17 + 88) = v95;
        *(v17 + 96) = v86;
        *(v17 + 104) = 0;
        if (v87)
        {
          operator delete(v87);
        }
      }

      else
      {
        *v85 = v16;
        v86 = v85 + 1;
      }

      *(v17 + 96) = v86;
      v51 = *(v50 + 8);
      if (!sub_C435EC((a1 + 488), *(v50 + 8), v16))
      {
LABEL_133:
        v15 &= *(a1 + 32);
        goto LABEL_134;
      }

LABEL_60:
      if ((v15 & 1) != 0 && (*(v123 + 15) & 2) != 0)
      {
        v52 = v125;
        if (v125)
        {
          v52 = *(v125 + 4 * ((v123 - v122) >> 4));
        }

        if ((v52 & v118) == 0)
        {
          v65 = (v121 + *(v121 - *v121 + 6));
          v66 = v65 + *v65;
          v67 = &v130;
          if (!v128)
          {
            v67 = v127;
          }

          v68 = *&v66[8 * v127[1] + 8 + 8 * ((v123 - v122) >> 4)] + *v67 - *(v123 + 2);
          v69 = *(a1 + 64);
          if (v69)
          {
            if (*v69 > v51)
            {
              v70 = 0;
              v71 = *(a1 + 168) + ~a2;
              v72 = v71;
              while (v70 <= v71)
              {
                v73 = *sub_BAFC3C(v69 + 2, v69[1] * v51 + v72);
                v70 += 2;
                v72 -= 2;
                if (v73 != 0x7FFFFFFF)
                {
                  if (v73 > v68)
                  {
                    break;
                  }

                  goto LABEL_104;
                }
              }
            }
          }

          else
          {
LABEL_104:
            if (sub_BAF528(a1, 0, v51, a2, v68))
            {
              v74 = *(a1 + 176);
              if (*v74 <= v51)
              {
                *v74 = v51 + 1;
                v75 = v74[2];
                v76 = v74[1] * (v51 + 1);
                v77 = 0xAAAAAAAAAAAAAAABLL * ((v74[3] - v75) >> 3);
                if (v76 <= v77)
                {
                  if (v76 < v77)
                  {
                    v74[3] = v75 + 24 * v76;
                  }
                }

                else
                {
                  sub_BAF9A8((v74 + 2), v76 - v77);
                }
              }

              v108 = v74[2] + 24 * v74[1] * v51 + 24 * a2;
              *(v108 + 4) = v111;
              *(v108 + 8) = v113 | (v110 << 32);
              *(v108 + 16) = v112;
              *(v108 + 20) = v116;
            }
          }
        }
      }

      if ((*(v123 + 15) & 1) == 0)
      {
        goto LABEL_134;
      }

      if (v125)
      {
        if (*(v125 + 4 * ((v123 - v122) >> 4)) != v118)
        {
          goto LABEL_134;
        }
      }

      else if (v118)
      {
        goto LABEL_134;
      }

      v58 = *(a1 + 176);
      if (*v58 <= v51)
      {
        *v58 = v51 + 1;
        v59 = v58[2];
        v60 = v58[1] * (v51 + 1);
        v61 = 0xAAAAAAAAAAAAAAABLL * ((v58[3] - v59) >> 3);
        if (v60 <= v61)
        {
          if (v60 < v61)
          {
            v58[3] = v59 + 24 * v60;
          }
        }

        else
        {
          sub_BAF9A8((v58 + 2), v60 - v61);
        }
      }

      v102 = *(v58[2] + 24 * v58[1] * v51 + 24 * v117);
      if (v102 == 0x7FFFFFFF)
      {
        goto LABEL_134;
      }

      if (v15)
      {
        v103 = (v121 + *(v121 - *v121 + 6));
        v104 = v103 + *v103;
        v105 = &v130;
        if (!v128)
        {
          v105 = v127;
        }

        if (*&v104[8 * v127[1] + 4 + 8 * ((v123 - v122) >> 4)] + *v105 < v102 && sub_AA0D84(*(a1 + 40), &v119, v102))
        {
LABEL_169:
          v111 = (v123 - v122) >> 4;
          v113 = -1431655765 * ((v127 - v126) >> 2);
          if (v128)
          {
            v106 = v130;
          }

          else
          {
            v106 = 0x7FFFFFFF;
          }

          v112 = v106;
          if (v128)
          {
            v107 = v129;
          }

          else
          {
            v107 = 0xFFFFFFFFLL;
          }

          v110 = v107;
        }

        v15 = 1;
        goto LABEL_134;
      }

      if (v128 == 1)
      {
        if (sub_A84F48(*(a1 + 40), &v119, v102, 1u))
        {
          goto LABEL_169;
        }
      }

      else if (sub_A8552C(&v119, *(v58[2] + 24 * v58[1] * v51 + 24 * v117), 1))
      {
        goto LABEL_169;
      }

      v15 = 0;
LABEL_134:
      v96 = v122;
      v13 = v123 - 2;
      v123 -= 2;
      if (*(v119 + 16) == 1 && (v120 & 1) == 0 && v13 >= v122 && v13 < v124)
      {
        do
        {
          v98 = __ROR8__(*v13, 32);
          if (HIDWORD(v98) == 1 && (v98 + 3) < 2)
          {
            break;
          }

          v100 = sub_2D5204(**(v119 + 4120));
          v96 = v122;
          v13 = v123;
          if (v100)
          {
            break;
          }

          v13 = v123 - 2;
          v123 = v13;
        }

        while (v13 >= v122 && v13 < v124);
      }

      if (v13 < v96 || v13 >= v124)
      {
        goto LABEL_11;
      }
    }

    v29 = -1;
    v30 = 1;
    do
    {
      if (*(v17 + 36) == v26 && *(v17 + 32) == v27)
      {
        if (v29 == -1)
        {
          v29 = v24;
        }
      }

      else if (__PAIR64__(v26, v27) == v16)
      {
        goto LABEL_57;
      }

      v24 = (v24 + v30) & v18;
      v31 = (v21 + 12 * v24);
      v27 = *v31;
      v26 = v31[1];
      ++v30;
    }

    while (v22 != v26 || v23 != v27);
    if (v29 != -1)
    {
      if (sub_A99094(*(a1 + 48), 1))
      {
        goto LABEL_35;
      }

      goto LABEL_70;
    }

LABEL_69:
    v29 = v24;
    if (sub_A99094(*(a1 + 48), 1))
    {
      goto LABEL_35;
    }

    goto LABEL_70;
  }
}

void sub_BB0908(uint64_t a1)
{
  v1 = *a1;
  sub_A332F8(v2, *(a1 + 8));
  sub_A34B68(v1, v2);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }
}

uint64_t sub_BB0988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_A520DC(a2);
  v7 = sub_A51E58(a2, 0);
  if (HIDWORD(v7) == 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = 10 * (HIDWORD(v6) - HIDWORD(v7));
  }

  if (HIDWORD(v6) == 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = sub_A520DC(a3);
  v11 = sub_A51E58(a3, 0);
  v12 = 0x7FFFFFFF;
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
    if (HIDWORD(v11) != 0x7FFFFFFF)
    {
      if (HIDWORD(v10) == HIDWORD(v11))
      {
        v13 = 1.79769313e308;
        goto LABEL_19;
      }

      v12 = 10 * (HIDWORD(v10) - HIDWORD(v11));
    }
  }

  if (v9 < 0)
  {
    v14 = -5;
  }

  else
  {
    v14 = 5;
  }

  v15 = v12 / 10;
  v16 = v12 % 10;
  if (v12 < 0)
  {
    v17 = -5;
  }

  else
  {
    v17 = 5;
  }

  v13 = (v9 / 10 + (((103 * (v14 + v9 % 10)) >> 15) & 1) + ((103 * (v14 + v9 % 10)) >> 10)) / (v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10));
LABEL_19:
  v18 = sub_A51E58(a2, 0);
  if ((sub_A51E58(a3, 0) >> 32) >= SHIDWORD(v18))
  {
    v19 = sub_A520DC(a2);
    if ((sub_A520DC(a3) >> 32) >= SHIDWORD(v19))
    {
      return 0;
    }
  }

  if (v13 > *(a1 + 8))
  {
    return 0;
  }

  if ((*(a1 + 25) & 1) == 0)
  {
    for (i = *(a2 + 200); i != *(a2 + 208); i += 9)
    {
      if (!*(i + 24))
      {
        v22 = *i;
        if (*i != i[1])
        {
          v23 = *(v22 + 160);
          v24 = *(v22 + 44);
          if (!v23 && v24 == -1)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_BB0BBC(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a1;
  v50 = __ROR8__(**(a2 + 8), 32);
  result = sub_A98F60(v4 + 40, &v50);
  if (result != -1)
  {
    v6 = *(*(a2 + 8) + 8);
    v7 = *v3[1];
    result = sub_A7905C(v45, *(v4 + 32), v50, 0, 0, 0);
    v8 = v48;
    v9 = v49;
    if (v48 < v49)
    {
      if (v6 < 0)
      {
        v10 = -5;
      }

      else
      {
        v10 = 5;
      }

      v11 = (v10 + v6 % 10);
      v41 = v3;
      v42 = v7 + v6 / 10 + (((103 * v11) >> 15) & 1) + ((103 * v11) >> 10);
      v12 = v6 / -10 + (((-103 * v11) >> 15) & 1) + ((-103 * v11) >> 10);
      while (1)
      {
        v13 = *(v8 + 4);
        v14 = *(v8 + 5);
        v15 = v13 <= v14 + 1 ? v14 + 1 : *(v8 + 4);
        v44 = v15;
        if (v14 >= v13)
        {
          break;
        }

LABEL_46:
        v8 += 2;
        v48 = v8;
        if (v8 == v9)
        {
          v37 = v46;
          while (1)
          {
            v37 += 2;
            v46 = v37;
            if (v37 >= v47)
            {
              break;
            }

            v38 = *v37;
            v39 = v37[1];
            if (*v37 != v39)
            {
LABEL_50:
              v48 = v38;
              v49 = v39;
              v9 = v39;
              v8 = v38;
              goto LABEL_51;
            }
          }
        }

        else
        {
LABEL_51:
          while (v8 < v9)
          {
            result = sub_A795E8(v45);
            v8 = v48;
            v9 = v49;
            if (!result)
            {
              break;
            }

            v8 = v48 + 2;
            v48 = v8;
            if (v8 == v49)
            {
              v40 = v46;
              while (1)
              {
                v40 += 2;
                v46 = v40;
                if (v40 >= v47)
                {
                  goto LABEL_7;
                }

                v38 = *v40;
                v39 = v40[1];
                if (*v40 != v39)
                {
                  goto LABEL_50;
                }
              }
            }
          }
        }

LABEL_7:
        if (v8 >= v9)
        {
          return result;
        }
      }

      v43 = v50;
      v16 = *v3[2];
      while (1)
      {
        v17 = __ROR8__(*v48, 32);
        v18 = *v16;
        v19 = sub_A57920((*(*v16 + 32) + 4136), v17);
        v20 = (v19 - *v19);
        if (*v20 >= 9u && (v21 = v20[4]) != 0)
        {
          v22 = (v19 + v21 + *(v19 + v21));
        }

        else
        {
          v22 = 0;
        }

        result = sub_A571D4(v22, v13);
        if (__ROR8__(*result, 32) == v43)
        {
          sub_A79708(v51, *(v18 + 32), v17, v13, 0, 0);
          if (v58 == 1)
          {
            result = sub_BB0FF4(*(v18 + 32), v51, v42, 2u);
            if (result)
            {
              goto LABEL_27;
            }
          }

          else
          {
            result = sub_BB15D8(v51, v42, 1);
            if (result)
            {
LABEL_27:
              while (v56 >= v55 && v56 < v57)
              {
                v24 = v16[1];
                if (v58)
                {
                  v25 = &v59;
                }

                else
                {
                  v25 = v56;
                }

                v26 = (v52 + *(v52 - *v52 + 6));
                v27 = v12 + *v25 + *(&v26[2 * *(v56 + 1) + 2 + 2 * ((v54 - v53) >> 4)] + *v26) - *(v54 + 8);
                if (v27 >= **v24)
                {
                  v28 = *(v24 + 8);
                  v30 = *(v28 + 8);
                  v29 = *(v28 + 16);
                  if (v30 < v29)
                  {
                    *v30 = v27;
                    v23 = (v30 + 1);
                  }

                  else
                  {
                    v31 = *v28;
                    v32 = v30 - *v28;
                    v33 = v32 >> 2;
                    v34 = (v32 >> 2) + 1;
                    if (v34 >> 62)
                    {
                      sub_1794();
                    }

                    v35 = v29 - v31;
                    if (v35 >> 1 > v34)
                    {
                      v34 = v35 >> 1;
                    }

                    if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v36 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v36 = v34;
                    }

                    if (v36)
                    {
                      if (!(v36 >> 62))
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    *(4 * v33) = v27;
                    v23 = 4 * v33 + 4;
                    memcpy(0, v31, v32);
                    *v28 = 0;
                    *(v28 + 8) = v23;
                    *(v28 + 16) = 0;
                    if (v31)
                    {
                      operator delete(v31);
                    }
                  }

                  *(v28 + 8) = v23;
                }

                result = sub_A7B558(v51, 0);
              }
            }
          }
        }

        if (++v13 == v44)
        {
          v8 = v48;
          v9 = v49;
          v3 = v41;
          goto LABEL_46;
        }
      }
    }
  }

  return result;
}

BOOL sub_BB0FF4(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
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

    if ((v30 + v27 + sub_A7AEE0(v41, v39[1] + v6)[1]) <= a3)
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

  v69 = v68[1];
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

  v87 = sub_A7AEE0(v86, v84[1] + ((v75 - v74) >> 4))[1];
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

uint64_t sub_BB15D8(uint64_t a1, int a2, int a3)
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
        if ((*(&v28[2 * v25[1] + 2 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v28) + *v27) > a2)
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
      if ((*(&v30[2 * v25[1] + 2 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v30) + *v29) <= a2)
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

void sub_BB1910(uint64_t a1, uint64_t a2)
{
  sub_7E9A4(v41);
  v4 = *(a2 + 16);
  *(a1 + 112) = *a2;
  *(a1 + 128) = v4;
  *(a1 + 144) = *(a2 + 32);
  *(a1 + 152) = *(a2 + 40);
  sub_BB2BD8(a1);
  v5 = *(a1 + 48);
  v42[0] = 0x1FFFFFFFDLL;
  v6 = sub_A98E8C(v5, v42);
  v7 = *(v6 + 8);
  if (v7 != -1)
  {
    *(a1 + 456) = v7;
    if (*(a1 + 33) != 1)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (!sub_A822FC(*(a1 + 40)))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v8 = *(v5 + 112);
  *(v5 + 112) = v8 + 1;
  *(v6 + 8) = v8;
  v9 = v6;
  sub_2512DC(v5 + 88, v42);
  *(a1 + 456) = *(v9 + 8);
  if (*(a1 + 33) == 1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v10 = *(a1 + 48);
  v42[0] = 0x1FFFFFFFELL;
  v11 = sub_A98E8C(v10, v42);
  v12 = *(v11 + 8);
  if (v12 == -1)
  {
    v13 = *(v10 + 112);
    *(v10 + 112) = v13 + 1;
    *(v11 + 8) = v13;
    v14 = v11;
    sub_2512DC(v10 + 88, v42);
    v12 = *(v14 + 8);
  }

  sub_BB49D8(a1, 0, v12, 0, *(a1 + 116));
LABEL_9:
  LODWORD(v15) = *(a1 + 168);
  if (v15 >= 2)
  {
    v16 = 1;
    while (1)
    {
      if (*(a1 + 25) & 1) == 0 && v16 >= 2 && (*(a1 + 27))
      {
        sub_BB2E28(a1, v16);
      }

      if (v16)
      {
        v26 = *(a1 + 312);
        v27 = *(a1 + 320);
        if (v26 != v27)
        {
          v28 = *(a1 + 288);
          v29 = *(a1 + 312);
          do
          {
            v30 = *v29++;
            *(v28 + ((v30 >> 3) & 0x1FFFFFF8)) &= ~(1 << v30);
          }

          while (v29 != v27);
        }

        *(a1 + 320) = v26;
        sub_BB2FE0(a1, v16);
        sub_BB32F8(a1, v16);
        v31 = *(a1 + 456);
        if (*(a1 + 296) > v31 && ((*(*(a1 + 288) + ((v31 >> 3) & 0x1FFFFFF8)) >> v31) & 1) != 0)
        {
          *(*(a1 + 464) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        }

        if (*(a1 + 25) == 1 && *(a1 + 312) == *(a1 + 320))
        {
LABEL_43:
          LODWORD(v15) = *(a1 + 168);
          if (v15)
          {
            goto LABEL_44;
          }

          goto LABEL_53;
        }
      }

      else
      {
        v17 = *(a1 + 264);
        v18 = *(a1 + 272);
        if (v17 != v18)
        {
          v19 = *(a1 + 240);
          v20 = *(a1 + 264);
          do
          {
            v21 = *v20++;
            *(v19 + ((v21 >> 3) & 0x1FFFFFF8)) &= ~(1 << v21);
          }

          while (v20 != v18);
        }

        *(a1 + 272) = v17;
        sub_BB3BA0(a1, v16);
        sub_7E9A4(v42);
        v22 = *(a1 + 432);
        v23 = *(a1 + 440);
        while (v22 != v23)
        {
          v24 = *v22++;
          sub_BB4E40(a1, v16, v24);
        }

        *(a1 + 624) = sub_7EA60(v42) + *(a1 + 624);
        v25 = *(a1 + 456);
        if (*(a1 + 248) > v25 && ((*(*(a1 + 240) + ((v25 >> 3) & 0x1FFFFFF8)) >> v25) & 1) != 0)
        {
          *(*(a1 + 464) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v16 & 0x3E);
        }

        if (*(a1 + 25) == 1 && *(a1 + 264) == *(a1 + 272))
        {
          goto LABEL_43;
        }
      }

      v32 = sub_A9D694(a1) + 744;
      if (*(a1 + 736) > v32)
      {
        v32 = *(a1 + 736);
      }

      *(a1 + 736) = v32;
      if (sub_BAF0B4(a1, v16))
      {
        goto LABEL_43;
      }

      ++v16;
      v15 = *(a1 + 168);
      if (v16 >= v15)
      {
        goto LABEL_41;
      }
    }
  }

  LODWORD(v16) = 1;
LABEL_41:
  if (v15)
  {
LABEL_44:
    v33 = 0;
    v34 = 0;
    v35 = v15;
    do
    {
      if ((*(*(a1 + 464) + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v34))
      {
        *(a1 + 656) = *(a1 + 656) + 1.0;
        v36 = *(a1 + 176);
        v37 = *(a1 + 456);
        if (*v36 <= v37)
        {
          *v36 = v37 + 1;
          v38 = v36[2];
          v39 = v36[1] * (v37 + 1);
          v40 = 0xAAAAAAAAAAAAAAABLL * ((v36[3] - v38) >> 3);
          if (v39 > v40)
          {
            sub_BAF9A8((v36 + 2), v39 - v40);
          }

          else if (v39 < v40)
          {
            v36[3] = v38 + 24 * v39;
          }
        }

        *(a1 + 648) += *(v36[2] + 24 * v36[1] * v37 + v33);
      }

      ++v34;
      v33 += 24;
    }

    while (v35 != v34);
  }

LABEL_53:
  *(a1 + 664) = v16;
  *(a1 + 616) = sub_7EA60(v41);
}

__n128 sub_BB1D70@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  HIBYTE(v150) = 0;
  LOBYTE(__p) = 0;
  __dst = (a2 + 32);
  v114 = a2 + 8;
  sub_CC9264(a2 + 32, &__p);
  if (SHIBYTE(v150) < 0)
  {
    operator delete(__p);
  }

  *(a2 + 256) = 0;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 184) = *(a1 + 112);
  v116 = *(a1 + 42);
  if (v116 >= 2)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v115 = _Q0;
    v8 = 1;
    v122 = a1;
    while (((*(a1[58] + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
LABEL_9:
      if (++v8 == v116)
      {
        goto LABEL_4;
      }
    }

    v9 = a1[22];
    v10 = *(a1 + 114);
    v11 = v10;
    if (*v9 <= v10)
    {
      *v9 = v10 + 1;
      v12 = v9[2];
      v13 = v9[1] * (v10 + 1);
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9[3] - v12) >> 3);
      if (v13 <= v14)
      {
        v11 = v10;
        if (v13 < v14)
        {
          v9[3] = v12 + 24 * v13;
          v11 = v10;
        }
      }

      else
      {
        sub_BAF9A8((v9 + 2), v13 - v14);
        v11 = *(a1 + 114);
      }
    }

    v118 = v8;
    v15 = v9[2] + 24 * v9[1] * v10 + 24 * v8;
    v16 = a1;
    v18 = *v15;
    v17 = *(v15 + 4);
    v19 = *(v15 + 8);
    v20 = *(v15 + 16);
    v21 = *(v15 + 20);
    LOWORD(__p) = 0;
    BYTE2(__p) = 0;
    *(&__p + 4) = 0;
    HIDWORD(__p) = 0;
    v150 = -NAN;
    v151 = 0x7FFFFFFF;
    v152 = 0;
    v153 = 0x8000000080000000;
    v154 = 0;
    v155 = 0x8000000080000000;
    v156 = 0x7FFFFFFF;
    v157 = 0;
    v158 = 0x8000000080000000;
    v159 = 0;
    v160 = 0x8000000080000000;
    v161 = 0;
    v162 = 0xFFFFFFFF00000000;
    v163 = -1;
    v164 = 0;
    v166 = 0;
    v167 = 0;
    v168 = 0;
    v165 = 0x7FFFFFFF;
    v169 = 100;
    v170 = -1;
    v171 = v115;
    v172 = v115;
    v173 = v115;
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v22 = v16[5];
    if (sub_68312C(v22 + 3896) && *(v22 + 3944))
    {
      v23 = 1;
    }

    else
    {
      v24 = v122[5];
      v23 = sub_4C2B90(v24 + 3896) && *(v24 + 3960) != 0;
    }

    BYTE1(__p) = v23;
    v25 = v122[5];
    if (sub_4C2B90(v25 + 3896))
    {
      DWORD2(__p) = 2 * (*(v25 + 3960) != 0);
      DWORD1(__p) = DWORD2(__p);
      if (v17 != 0xFFFFFFFF)
      {
        goto LABEL_43;
      }

      goto LABEL_26;
    }

    *(&__p + 4) = 0;
    if (v17 == 0xFFFFFFFF)
    {
LABEL_26:
      v26 = v174;
      v27 = v122;
      if (v174 != *(&v174 + 1))
      {
        v28 = *(&v174 + 1) - 72;
        if (*(&v174 + 1) - 72 > v174)
        {
          do
          {
            v31 = *v26;
            v32 = *(v26 + 16);
            *(v26 + 8) = 0;
            *(v26 + 16) = 0;
            *v26 = 0;
            v33 = *(v26 + 24);
            v119 = v31;
            v120 = *(v26 + 32);
            v34 = *(v26 + 48);
            *(v26 + 32) = 0;
            *(v26 + 40) = 0;
            *(v26 + 48) = 0;
            *v134 = *(v26 + 56);
            *&v134[7] = *(v26 + 63);
            v35 = *(v28 + 24);
            v36 = *(v28 + 16);
            *v26 = *v28;
            *(v26 + 16) = v36;
            *(v28 + 8) = 0;
            *(v28 + 16) = 0;
            *v28 = 0;
            *(v26 + 24) = v35;
            v37 = *(v26 + 32);
            if (v37)
            {
              *(v26 + 40) = v37;
              operator delete(v37);
              *(v26 + 32) = 0;
              *(v26 + 40) = 0;
              *(v26 + 48) = 0;
            }

            *(v26 + 32) = *(v28 + 32);
            *(v26 + 48) = *(v28 + 48);
            *(v28 + 32) = 0;
            *(v28 + 40) = 0;
            *(v28 + 48) = 0;
            v38 = *(v28 + 56);
            *(v26 + 63) = *(v28 + 63);
            *(v26 + 56) = v38;
            v39 = *v28;
            if (*v28)
            {
              v40 = *(v28 + 8);
              v41 = *v28;
              if (v40 != v39)
              {
                do
                {
                  v42 = v40 - 168;
                  v43 = *(v40 - 8);
                  if (v43 != -1)
                  {
                    (off_26711F0[v43])(&v123, v40 - 168);
                  }

                  *(v40 - 8) = -1;
                  v40 -= 168;
                }

                while (v42 != v39);
                v41 = *v28;
                v27 = v122;
              }

              *(v28 + 8) = v39;
              operator delete(v41);
            }

            *v28 = v119;
            *(v28 + 16) = v32;
            *(v28 + 24) = v33;
            v44 = *(v28 + 32);
            if (v44)
            {
              *(v28 + 40) = v44;
              operator delete(v44);
            }

            *(v28 + 32) = v120;
            *(v28 + 48) = v34;
            *(v28 + 56) = *v134;
            *(v28 + 63) = *&v134[7];
            v26 += 72;
            v28 -= 72;
          }

          while (v26 < v28);
        }
      }

      sub_A83920(&__p);
      v29 = *(a2 + 16);
      if (v29 >= *(a2 + 24))
      {
        v30 = sub_BA7328(v114, &__p);
      }

      else
      {
        sub_A32C84(*(a2 + 16), &__p);
        v30 = v29 + 296;
      }

      v8 = v118;
      a1 = v27;
      *(a2 + 16) = v30;
      if (*(&v178 + 1))
      {
        *&v179 = *(&v178 + 1);
        operator delete(*(&v178 + 1));
      }

      if (v177)
      {
        *(&v177 + 1) = v177;
        operator delete(v177);
      }

      if (*(&v175 + 1))
      {
        *&v176 = *(&v175 + 1);
        operator delete(*(&v175 + 1));
      }

      *v134 = &v174;
      sub_A3212C(v134);
      if (SHIBYTE(v168) < 0)
      {
        operator delete(v166);
      }

      goto LABEL_9;
    }

LABEL_43:
    v121 = v118;
    while (1)
    {
      v140 = 0;
      v139 = 0u;
      v141 = 1;
      v143 = 0;
      v144 = 0;
      v142 = 0;
      v145 = 1;
      v146 = 0x8000000080000000;
      v147 = 0;
      v148 = 0;
      *v134 = 0;
      *&v134[16] = 0u;
      *v135 = 0xFFFFFFFFLL;
      *&v135[16] = 0u;
      *v138 = 1;
      v137[0] = 0x7FFFFFFFuLL;
      *&v134[4] = 0x8000000080000000;
      *&v134[12] = 0x7FFFFFFF;
      *&v134[20] = 0x8000000080000000;
      *&v135[8] = xmmword_2266560;
      *&v135[24] = -1;
      memset(v136, 0, sizeof(v136));
      v137[1] = 0uLL;
      *&v138[4] = xmmword_22A7500;
      if (v21 == 0xFFFFFFFF)
      {
        v141 = 1;
        v46 = *sub_A9C5E0((v122[6] + 88), v17);
        v47 = *sub_A9C5E0((v122[6] + 88), v11);
        if (*&v138[16] != -1)
        {
          if (*&v138[16] == 1)
          {
            *v134 = 0;
            *&v134[4] = v20;
            *&v134[8] = v18;
            *&v134[12] = v46;
            v11 = v17;
            *&v134[20] = v47;
            goto LABEL_100;
          }

          (off_26711F0[*&v138[16]])(&v123, v134);
        }

        *v134 = 0;
        *&v134[4] = v20;
        *&v134[12] = v46;
        *&v134[20] = v47;
        v11 = v17;
        *&v134[8] = v18;
        *&v138[16] = 1;
LABEL_100:
        v48 = v122;
        v92 = *(&v139 + 1);
        if (*(&v139 + 1) < v140)
        {
          goto LABEL_93;
        }

        goto LABEL_101;
      }

      v123 = xmmword_2297BF0;
      LOWORD(v124) = 0;
      *(&v124 + 4) = 0x8000000080000000;
      WORD6(v124) = 0;
      *v125 = xmmword_22A7450;
      *&v125[16] = -COERCE_DOUBLE(0x8000000080000000);
      v126 = 0uLL;
      v127 = 0uLL;
      v128 = 0uLL;
      *&v125[24] = -1;
      v129 = 0x7FFFFFFF;
      v131 = 0;
      v132 = 0;
      v130 = 0;
      LOBYTE(v133) = 1;
      *(&v133 + 4) = 0x8000000080000000;
      HIDWORD(v133) = 0;
      v141 = 0;
      v48 = v122;
      v49 = *sub_A9C5E0((v122[7] + 88), v21);
      *v125 = v49;
      *&v125[8] = v19;
      *&v125[16] = v20;
      *&v125[20] = v17;
      v50 = v122[5];
      v190[0] = *sub_A9C5E0((v122[6] + 88), v11);
      v51 = sub_A79708(&v180, v50, v49, v17, 0, 0);
      v187 = v186 + 12 * *&v125[8];
      if (v188 == 1)
      {
        v189 = *&v125[12];
      }

      if (v185)
      {
        v52 = *(v185 + 4 * ((v183 - v182) >> 4));
      }

      else
      {
        v52 = 0;
      }

      sub_AA98A0(v51, v190, v52);
      _CF = v183 < v184 && v183 >= v182;
      v54 = (v183 - v182) >> 4;
      if (!_CF)
      {
        LODWORD(v54) = -1;
      }

      *&v125[24] = v54;
      v55 = v122[6];
      v56 = *&v125[20];
      v57 = sub_A57920((v122[5] + 4136), *v125);
      v58 = (v57 - *v57);
      if (*v58 >= 9u && (v59 = v58[4]) != 0)
      {
        v60 = (v57 + v59 + *(v57 + v59));
      }

      else
      {
        v60 = 0;
      }

      v180 = __ROR8__(*sub_A571D4(v60, v56), 32);
      v61 = sub_A98E8C(v55, &v180);
      v62 = v61;
      v11 = *(v61 + 8);
      if (v11 == -1)
      {
        v63 = *(v55 + 112);
        *(v55 + 112) = v63 + 1;
        *(v61 + 8) = v63;
        sub_2512DC(v55 + 88, &v180);
        v11 = *(v62 + 8);
      }

      v64 = *&v125[20];
      v65 = sub_A57920((v122[5] + 4136), *v125);
      v66 = (v65 - *v65);
      if (*v66 >= 9u && (v67 = v66[4]) != 0)
      {
        v68 = (v65 + v67 + *(v65 + v67));
      }

      else
      {
        v68 = 0;
      }

      DWORD1(v123) = 10 * sub_A571D4(v68, v64)[2];
      v69 = v122[5];
      v70 = *v125;
      v71 = *&v125[20];
      v180 = sub_A56F04((v69 + 4136), *v125, *&v125[20], *&v125[8]);
      LODWORD(v181) = v72;
      v73 = sub_A57920((v69 + 4136), v70);
      v74 = (v73 - *v73);
      if (*v74 >= 9u && (v75 = v74[4]) != 0)
      {
        v76 = (v73 + v75 + *(v73 + v75));
      }

      else
      {
        v76 = 0;
      }

      v77 = *(sub_A571D4(v76, v71) + 6);
      v78 = *&v125[12] == -1 ? 0x7FFFFFFF : *&v125[16];
      *(&v123 + 1) = sub_A56700((v69 + 4184), &v180, v77, v78);
      LOWORD(v124) = v79;
      v80 = v122[5];
      v81 = *v125;
      v82 = *&v125[24];
      v180 = sub_A56F04((v80 + 4136), *v125, *&v125[24], *&v125[8]);
      LODWORD(v181) = v83;
      v84 = sub_A57920((v80 + 4136), v81);
      v85 = (v84 - *v84);
      if (*v85 >= 9u && (v86 = v85[4]) != 0)
      {
        v87 = (v84 + v86 + *(v84 + v86));
      }

      else
      {
        v87 = 0;
      }

      v88 = *(sub_A571D4(v87, v82) + 6);
      v89 = *&v125[12] == -1 ? 0x7FFFFFFF : *&v125[16];
      *(&v124 + 4) = sub_A56A5C((v80 + 4184), &v180, v88, v89);
      WORD6(v124) = v90;
      if (*&v138[16])
      {
        break;
      }

      *v134 = v123;
      *&v134[16] = v124;
      *v135 = *v125;
      *&v135[12] = *&v125[12];
      sub_A349D4(v136, v126, *(&v126 + 1), 0xEEEEEEEEEEEEEEEFLL * ((*(&v126 + 1) - v126) >> 2));
      sub_A349D4(&v136[1] + 1, *(&v127 + 1), v128, 0xEEEEEEEEEEEEEEEFLL * ((v128 - *(&v127 + 1)) >> 2));
      LODWORD(v137[0]) = v129;
      sub_956400(v137 + 1, v130, v131, 0xCCCCCCCCCCCCCCCDLL * ((v131 - v130) >> 3));
      *v138 = v133;
      v91 = v130;
      if (v130)
      {
        goto LABEL_87;
      }

LABEL_88:
      if (*(&v127 + 1))
      {
        *&v128 = *(&v127 + 1);
        operator delete(*(&v127 + 1));
      }

      if (v126)
      {
        *(&v126 + 1) = v126;
        operator delete(v126);
      }

      v92 = *(&v139 + 1);
      if (*(&v139 + 1) < v140)
      {
LABEL_93:
        *v92 = 0;
        *(v92 + 160) = -1;
        v93 = *&v138[16];
        if (*&v138[16] != -1)
        {
          *&v123 = v92;
          (off_26712A0[*&v138[16]])(&v123, v134);
          *(v92 + 160) = v93;
        }

        v94 = (v92 + 168);
        goto LABEL_102;
      }

LABEL_101:
      v94 = sub_AA9AE0(&v139, v134);
LABEL_102:
      *(&v139 + 1) = v94;
      v95 = *(&v174 + 1);
      if (*(&v174 + 1) >= v175)
      {
        v96 = sub_BA71A0(&v174, &v139);
      }

      else
      {
        sub_A33054(*(&v174 + 1), &v139);
        v96 = v95 + 72;
      }

      *(&v174 + 1) = v96;
      v97 = v48[22];
      if (*v97 <= v11)
      {
        *v97 = v11 + 1;
        v98 = v97[2];
        v99 = v97[1] * (v11 + 1);
        v100 = 0xAAAAAAAAAAAAAAABLL * ((v97[3] - v98) >> 3);
        if (v99 <= v100)
        {
          if (v99 < v100)
          {
            v97[3] = v98 + 24 * v99;
          }
        }

        else
        {
          sub_BAF9A8((v97 + 2), v99 - v100);
        }
      }

      v101 = v97[2] + 24 * v97[1] * v11 + 24 * --v121;
      v18 = *v101;
      v17 = *(v101 + 4);
      v19 = *(v101 + 8);
      v20 = *(v101 + 16);
      v21 = *(v101 + 20);
      if (*&v138[16] != -1)
      {
        (off_26711F0[*&v138[16]])(&v123, v134);
      }

      if (v142)
      {
        v143 = v142;
        operator delete(v142);
      }

      v102 = v139;
      if (v139)
      {
        v103 = *(&v139 + 1);
        v45 = v139;
        if (*(&v139 + 1) != v139)
        {
          do
          {
            v104 = v103 - 168;
            v105 = *(v103 - 8);
            if (v105 != -1)
            {
              (off_26711F0[v105])(v134, v103 - 168);
            }

            *(v103 - 8) = -1;
            v103 -= 168;
          }

          while (v104 != v102);
          v45 = v139;
        }

        *(&v139 + 1) = v102;
        operator delete(v45);
      }

      if (v17 == 0xFFFFFFFF)
      {
        goto LABEL_26;
      }
    }

    v180 = v134;
    v181 = &v123;
    sub_BB0908(&v180);
    v91 = v130;
    if (!v130)
    {
      goto LABEL_88;
    }

LABEL_87:
    v131 = v91;
    operator delete(v91);
    goto LABEL_88;
  }

LABEL_4:
  if (__dst != a1 + 74)
  {
    v3 = *(a1 + 615);
    if (*(a2 + 55) < 0)
    {
      if (v3 >= 0)
      {
        v106 = a1 + 74;
      }

      else
      {
        v106 = a1[74];
      }

      if (v3 >= 0)
      {
        v107 = *(a1 + 615);
      }

      else
      {
        v107 = a1[75];
      }

      sub_13B38(__dst, v106, v107);
    }

    else if ((*(a1 + 615) & 0x80) != 0)
    {
      sub_13A68(__dst, a1[74], a1[75]);
    }

    else
    {
      *__dst = *(a1 + 37);
      __dst[2] = a1[76];
    }
  }

  v108 = *(a1 + 87);
  *(a2 + 120) = *(a1 + 85);
  *(a2 + 136) = v108;
  v109 = *(a1 + 91);
  *(a2 + 152) = *(a1 + 89);
  *(a2 + 168) = v109;
  v110 = *(a1 + 79);
  *(a2 + 56) = *(a1 + 77);
  *(a2 + 72) = v110;
  result = *(a1 + 81);
  v112 = *(a1 + 83);
  *(a2 + 88) = result;
  *(a2 + 104) = v112;
  return result;
}

void sub_BB2AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  sub_A31EF4(a10);
  _Unwind_Resume(a1);
}

void sub_BB2B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(a15 + 16) = v15;
  sub_A7847C(&STACK[0x250]);
  sub_A300F8(a15, v17);
  _Unwind_Resume(a1);
}

void sub_BB2B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_A7847C(&STACK[0x250]);
  sub_A300F8(a15, v16);
  _Unwind_Resume(a1);
}

void sub_BB2B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  sub_A3238C(v53);
  STACK[0x210] = v53;
  sub_BA94A4(&a53);
  sub_A785D0(&STACK[0x208]);
  sub_A7847C(&STACK[0x250]);
  sub_A300F8(a15, v55);
  _Unwind_Resume(a1);
}

double sub_BB2BD8(uint64_t a1)
{
  v2 = *(a1 + 264);
  v3 = *(a1 + 272);
  if (v2 != v3)
  {
    v4 = *(a1 + 240);
    v5 = *(a1 + 264);
    do
    {
      v6 = *v5++;
      *(v4 + ((v6 >> 3) & 0x1FFFFFF8)) &= ~(1 << v6);
    }

    while (v5 != v3);
  }

  *(a1 + 272) = v2;
  v7 = *(a1 + 312);
  v8 = *(a1 + 320);
  if (v7 != v8)
  {
    v9 = *(a1 + 288);
    v10 = *(a1 + 312);
    do
    {
      v11 = *v10++;
      *(v9 + ((v11 >> 3) & 0x1FFFFFF8)) &= ~(1 << v11);
    }

    while (v10 != v8);
  }

  *(a1 + 320) = v7;
  v12 = *(a1 + 360);
  v13 = *(a1 + 368);
  if (v12 != v13)
  {
    v14 = *(a1 + 336);
    v15 = *(a1 + 360);
    do
    {
      v16 = *v15++;
      *(v14 + ((v16 >> 3) & 0x1FFFFFF8)) &= ~(1 << v16);
    }

    while (v15 != v13);
  }

  *(a1 + 368) = v12;
  v17 = *(a1 + 432);
  v18 = *(a1 + 440);
  if (v17 != v18)
  {
    v19 = *(a1 + 408);
    v20 = *(a1 + 384);
    v21 = *(a1 + 432);
    do
    {
      v22 = *v21++;
      *(v19 + ((v22 >> 3) & 0x1FFFFFF8)) &= ~(1 << v22);
      *(v20 + 4 * v22) = -1;
    }

    while (v21 != v18);
  }

  *(a1 + 440) = v17;
  sub_C4306C((a1 + 488));
  *(a1 + 472) = 0;
  v33 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(&v34, &__p);
  v23 = (a1 + 592);
  if (*(a1 + 615) < 0)
  {
    operator delete(*v23);
  }

  *v23 = v34;
  *(a1 + 608) = v35;
  HIBYTE(v35) = 0;
  LOBYTE(v34) = 0;
  v24 = v41;
  *(a1 + 680) = v40;
  *(a1 + 696) = v24;
  v25 = v43;
  *(a1 + 712) = v42;
  *(a1 + 728) = v25;
  v26 = v37;
  *(a1 + 616) = v36;
  *(a1 + 632) = v26;
  v27 = v39;
  *(a1 + 648) = v38;
  *(a1 + 664) = v27;
  if (v33 < 0)
  {
    operator delete(__p);
    v28 = (2 * *(a1 + 8) + 2);
    *(a1 + 168) = v28;
    if ((*(a1 + 24) & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v28 = (2 * *(a1 + 8) + 2);
  *(a1 + 168) = v28;
  if (*(a1 + 24))
  {
LABEL_17:
    v29 = *(a1 + 176);
    v29[3] = v29[2];
    *v29 = 0;
    v29[1] = v28;
  }

LABEL_18:
  *(a1 + 200) = *(a1 + 192);
  *(a1 + 224) = *(a1 + 216);
  sub_4D9168(a1 + 464, v28, 0);
  return sub_C430C8((a1 + 488), *(a1 + 16), v30);
}

void sub_BB2E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_BB2E28(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 360);
  v4 = *(a1 + 368);
  if (v3 == v4)
  {
    v19 = *(a1 + 360);
    goto LABEL_25;
  }

  v5 = 24 * (a2 - 2);
  do
  {
    v6 = *v3;
    v7 = *(a1 + 176);
    v8 = *v7;
    v9 = v7;
    if (*v7 > v6)
    {
      goto LABEL_7;
    }

    *v7 = v6 + 1;
    v10 = v7[2];
    v11 = v7[1] * (v6 + 1);
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7[3] - v10) >> 3);
    if (v11 > v12)
    {
      sub_BAF9A8((v7 + 2), v11 - v12);
      v9 = *(a1 + 176);
      v8 = *v9;
LABEL_7:
      v13 = *(v7[2] + 24 * v7[1] * v6 + v5);
      if (v8 > v6)
      {
        goto LABEL_16;
      }

LABEL_8:
      *v9 = v6 + 1;
      v14 = v9[2];
      v15 = v9[1] * (v6 + 1);
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v9[3] - v14) >> 3);
      if (v15 <= v16)
      {
        if (v15 < v16)
        {
          v9[3] = v14 + 24 * v15;
        }
      }

      else
      {
        sub_BAF9A8((v9 + 2), v15 - v16);
      }

      goto LABEL_16;
    }

    if (v11 < v12)
    {
      v7[3] = v10 + 24 * v11;
    }

    v9 = v7;
    v13 = *(v7[2] + 24 * v7[1] * v6 + v5);
    if (v6 + 1 <= v6)
    {
      goto LABEL_8;
    }

LABEL_16:
    if (v13 != 0x7FFFFFFF)
    {
      v17 = (v9[2] + 24 * v9[1] * v6 + 24 * a2);
      if (*v17 == 0x7FFFFFFF || v13 < *v17)
      {
        *v17 = v13;
      }
    }

    ++v3;
  }

  while (v3 != v4);
  v3 = *(a1 + 360);
  v19 = *(a1 + 368);
LABEL_25:
  result = *(a1 + 696) + ((v19 - v3) >> 2);
  *(a1 + 696) = result;
  return result;
}

double sub_BB2FE0(uint64_t a1, unsigned int a2)
{
  sub_7E9A4(v34);
  v4 = *(a1 + 264);
  v33 = *(a1 + 272);
  if (v4 != v33)
  {
    v30 = ~a2;
    v31 = a2;
    v32 = 24 * (a2 - 1);
    while (1)
    {
      v6 = *v4;
      v7 = *sub_A9C5E0((*(a1 + 48) + 88), v6);
      v8 = *(a1 + 176);
      if (*v8 <= v6)
      {
        *v8 = v6 + 1;
        v9 = v8[2];
        v10 = v8[1] * (v6 + 1);
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v8[3] - v9) >> 3);
        if (v10 <= v11)
        {
          if (v10 < v11)
          {
            v8[3] = v9 + 24 * v10;
          }
        }

        else
        {
          sub_BAF9A8((v8 + 2), v10 - v11);
        }
      }

      v12 = *(v8[2] + 24 * v8[1] * v6 + v32);
      if (HIDWORD(v7) == 1 && (v7 + 3) < 2)
      {
LABEL_21:
        v18 = v12;
        v19 = *(a1 + 64);
        if (v19)
        {
          goto LABEL_28;
        }

        goto LABEL_33;
      }

      v14 = *(*(a1 + 40) + 4120);
      if (*(v14 + 17) == 1)
      {
        break;
      }

      v15 = sub_502FF8(v14 + 24, __ROR8__(v7, 32), 0, "stop");
      v20 = (v15 - *v15);
      if (*v20 >= 0x15u)
      {
        v17 = v20[10];
        if (v17)
        {
          goto LABEL_25;
        }
      }

      v18 = v12 + 30;
      v19 = *(a1 + 64);
      if (v19)
      {
LABEL_28:
        if (*v19 > v6)
        {
          v21 = 0;
          v22 = *(a1 + 168) + v30;
          v23 = v22;
          while (v21 <= v22)
          {
            v24 = *sub_BAFC3C(v19 + 2, v19[1] * v6 + v23);
            v21 += 2;
            v23 -= 2;
            if (v24 != 0x7FFFFFFF)
            {
              if (v24 < v18)
              {
                goto LABEL_5;
              }

              goto LABEL_33;
            }
          }
        }

        goto LABEL_5;
      }

LABEL_33:
      if (sub_BB49D8(a1, 1u, v6, v31, v18))
      {
        v25 = *(a1 + 176);
        if (*v25 <= v6)
        {
          *v25 = v6 + 1;
          v26 = v25[2];
          v27 = v25[1] * (v6 + 1);
          v28 = 0xAAAAAAAAAAAAAAABLL * ((v25[3] - v26) >> 3);
          if (v27 > v28)
          {
            sub_BAF9A8((v25 + 2), v27 - v28);
          }

          else if (v27 < v28)
          {
            v25[3] = v26 + 24 * v27;
          }
        }

        v5 = v25[2] + 24 * v25[1] * v6 + 24 * v31;
        *(v5 + 4) = v6;
        *(v5 + 8) = -1;
        *(v5 + 16) = v12;
        *(v5 + 20) = -1;
      }

LABEL_5:
      if (++v4 == v33)
      {
        goto LABEL_38;
      }
    }

    v15 = sub_A74944(v14 + 24, v7, 0, "transfers at stop");
    v16 = (v15 - *v15);
    if (*v16 < 5u)
    {
      goto LABEL_21;
    }

    v17 = v16[2];
    if (!v17)
    {
      v18 = v12;
      v19 = *(a1 + 64);
      if (v19)
      {
        goto LABEL_28;
      }

      goto LABEL_33;
    }

LABEL_25:
    v18 = *(v15 + v17) + v12;
    v19 = *(a1 + 64);
    if (v19)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

LABEL_38:
  result = sub_7EA60(v34) + *(a1 + 632);
  *(a1 + 632) = result;
  return result;
}

double sub_BB32F8(uint64_t a1, unsigned int a2)
{
  sub_7E9A4(v113);
  v4 = *(a1 + 264);
  v102 = *(a1 + 272);
  if (v4 != v102)
  {
    v104 = ~a2;
    v105 = a2;
    v101 = 24 * (a2 - 1);
    do
    {
      v103 = v4;
      v5 = *v4;
      v6 = *sub_A9C5E0((*(a1 + 48) + 88), v5);
      v7 = *(a1 + 176);
      if (*v7 <= v5)
      {
        *v7 = v5 + 1;
        v8 = v7[2];
        v9 = v7[1] * (v5 + 1);
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v7[3] - v8) >> 3);
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v7[3] = v8 + 24 * v9;
          }
        }

        else
        {
          v11 = v6;
          sub_BAF9A8((v7 + 2), v9 - v10);
          v6 = v11;
        }
      }

      v106 = *(v7[2] + 24 * v7[1] * v5 + v101);
      sub_A74644(&v107, *(a1 + 40), v6);
      v12 = v108;
      v13 = 16;
      if (v112)
      {
        v13 = 32;
      }

      v14 = *(&v107 + v13);
      while (v12 < v14)
      {
        v17 = __ROR8__(*v12, 32);
        v18 = *(a1 + 48);
        v19 = *(v18 + 56) - 1;
        v20 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v17 ^ (v17 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v17 ^ (v17 >> 33))) >> 33));
        v21 = v20 ^ (v20 >> 33);
        v22 = *(v18 + 80);
        v24 = *(v18 + 64);
        v23 = *(v18 + 68);
        v25 = v21 & v19;
        v26 = (v22 + 12 * (v21 & v19));
        v28 = *v26;
        v27 = v26[1];
        if (v23 == v27 && v24 == v28)
        {
          goto LABEL_60;
        }

        if (*(v18 + 40))
        {
          v30 = -1;
          v31 = 1;
          do
          {
            if (*(v18 + 36) == v27 && *(v18 + 32) == v28)
            {
              if (v30 == -1)
              {
                v30 = v25;
              }
            }

            else if (__PAIR64__(v27, v28) == v17)
            {
              goto LABEL_57;
            }

            v25 = (v25 + v31) & v19;
            v32 = (v22 + 12 * v25);
            v28 = *v32;
            v27 = v32[1];
            ++v31;
          }

          while (v23 != v27 || v24 != v28);
          if (v30 != -1)
          {
            if (sub_A99094(*(a1 + 48), 1))
            {
              goto LABEL_35;
            }

            goto LABEL_61;
          }

LABEL_60:
          v30 = v25;
          if (sub_A99094(*(a1 + 48), 1))
          {
            goto LABEL_35;
          }

          goto LABEL_61;
        }

        v48 = 1;
        while (__PAIR64__(v27, v28) != v17)
        {
          v25 = (v25 + v48) & v19;
          v49 = (v22 + 12 * v25);
          v28 = *v49;
          v27 = v49[1];
          ++v48;
          if (v23 == v27 && v24 == v28)
          {
            goto LABEL_60;
          }
        }

LABEL_57:
        if (v25 != -1)
        {
          v51 = v22 + 12 * v25;
          v52 = *(v51 + 8);
          if (v52 != -1)
          {
            goto LABEL_108;
          }

          goto LABEL_94;
        }

        v30 = -1;
        if (sub_A99094(*(a1 + 48), 1))
        {
LABEL_35:
          v34 = *(v18 + 56) - 1;
          v35 = *(v18 + 80);
          v37 = *(v18 + 64);
          v36 = *(v18 + 68);
          v38 = v34 & v21;
          v39 = (v35 + 12 * (v34 & v21));
          v41 = *v39;
          v40 = v39[1];
          v42 = *(v18 + 40);
          if (v36 == v40 && v37 == v41)
          {
            goto LABEL_84;
          }

          if (v42)
          {
            v44 = -1;
            v45 = 1;
            do
            {
              if (*(v18 + 36) == v40 && *(v18 + 32) == v41)
              {
                if (v44 == -1)
                {
                  v44 = v38;
                }
              }

              else if (__PAIR64__(v40, v41) == v17)
              {
                goto LABEL_78;
              }

              v38 = (v38 + v45) & v34;
              v46 = (v35 + 12 * v38);
              v41 = *v46;
              v40 = v46[1];
              ++v45;
            }

            while (v36 != v40 || v37 != v41);
            if (v44 == -1)
            {
LABEL_84:
              v44 = v38;
            }

            v61 = *(v18 + 48);
            if ((v61 - v42) >= 0x1555555555555555)
            {
              goto LABEL_152;
            }
          }

          else
          {
            v58 = 1;
            while (__PAIR64__(v40, v41) != v17)
            {
              v38 = (v38 + v58) & v34;
              v59 = (v35 + 12 * v38);
              v41 = *v59;
              v40 = v59[1];
              ++v58;
              if (v36 == v40 && v37 == v41)
              {
                v42 = 0;
                goto LABEL_84;
              }
            }

LABEL_78:
            if (v38 != -1)
            {
              v51 = v35 + 12 * v38;
              v52 = *(v51 + 8);
              if (v52 != -1)
              {
                goto LABEL_108;
              }

              goto LABEL_94;
            }

            v44 = -1;
            v61 = *(v18 + 48);
            if ((v61 - v42) >= 0x1555555555555555)
            {
LABEL_152:
              exception = __cxa_allocate_exception(0x10uLL);
              sub_195A000(exception, "insert overflow");
            }
          }

          if (v42 && ((v62 = (v35 + 12 * v44), *(v18 + 36) == v62[1]) ? (v63 = *(v18 + 32) == *v62) : (v63 = 0), v63))
          {
            *(v18 + 40) = v42 - 1;
            v57 = 3 * v44;
          }

          else
          {
            *(v18 + 48) = v61 + 1;
            v57 = 3 * v44;
          }

          goto LABEL_93;
        }

LABEL_61:
        v54 = *(v18 + 40);
        v53 = *(v18 + 48);
        if ((v53 - v54) >= 0x1555555555555555)
        {
          goto LABEL_152;
        }

        v35 = *(v18 + 80);
        if (v54 && ((v55 = (v35 + 12 * v30), *(v18 + 36) == v55[1]) ? (v56 = *(v18 + 32) == *v55) : (v56 = 0), v56))
        {
          *(v18 + 40) = v54 - 1;
        }

        else
        {
          *(v18 + 48) = v53 + 1;
        }

        v57 = 3 * v30;
LABEL_93:
        v64 = 4 * v57;
        v65 = v35 + v64;
        *v65 = v17;
        *(v65 + 8) = -1;
        v51 = *(v18 + 80) + v64;
        v52 = *(v51 + 8);
        if (v52 != -1)
        {
          goto LABEL_108;
        }

LABEL_94:
        v66 = *(v18 + 112);
        *(v18 + 112) = v66 + 1;
        *(v51 + 8) = v66;
        v68 = *(v18 + 96);
        v67 = *(v18 + 104);
        if (v68 >= v67)
        {
          v70 = *(v18 + 88);
          v71 = v68 - v70;
          v72 = (v68 - v70) >> 3;
          v73 = v72 + 1;
          if ((v72 + 1) >> 61)
          {
            sub_1794();
          }

          v74 = v67 - v70;
          if (v74 >> 2 > v73)
          {
            v73 = v74 >> 2;
          }

          if (v74 >= 0x7FFFFFFFFFFFFFF8)
          {
            v75 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v75 = v73;
          }

          if (v75)
          {
            if (!(v75 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v76 = (v68 - v70) >> 3;
          v77 = (8 * v72);
          v78 = (8 * v72 - 8 * v76);
          *v77 = v17;
          v69 = v77 + 1;
          memcpy(v78, v70, v71);
          *(v18 + 88) = v78;
          *(v18 + 96) = v69;
          *(v18 + 104) = 0;
          if (v70)
          {
            operator delete(v70);
          }
        }

        else
        {
          *v68 = v17;
          v69 = v68 + 8;
        }

        *(v18 + 96) = v69;
        v52 = *(v51 + 8);
LABEL_108:
        *(a1 + 688) = *(a1 + 688) + 1.0;
        if (v5 != v52)
        {
          v79 = *(v108 + 2);
          v80 = v79 / 10;
          v81 = v79 % 10;
          if (v79 < 0)
          {
            v82 = -5;
          }

          else
          {
            v82 = 5;
          }

          v83 = v80 + v106 + (((103 * (v82 + v81)) >> 15) & 1) + ((103 * (v82 + v81)) >> 10);
          v84 = *(a1 + 64);
          if (v84)
          {
            if (*v84 > v52)
            {
              v85 = 0;
              v86 = *(a1 + 168) + v104;
              v87 = v86;
              while (v85 <= v86)
              {
                v88 = *sub_BAFC3C(v84 + 2, v84[1] * v52 + v87);
                v85 += 2;
                v87 -= 2;
                if (v88 != 0x7FFFFFFF)
                {
                  if (v88 < v83)
                  {
                    break;
                  }

                  goto LABEL_118;
                }
              }
            }
          }

          else
          {
LABEL_118:
            if (sub_BB49D8(a1, 1u, v52, v105, v83))
            {
              v89 = *(a1 + 176);
              if (*v89 <= v52)
              {
                *v89 = v52 + 1;
                v90 = v89[2];
                v91 = v89[1] * (v52 + 1);
                v92 = 0xAAAAAAAAAAAAAAABLL * ((v89[3] - v90) >> 3);
                if (v91 <= v92)
                {
                  if (v91 < v92)
                  {
                    v89[3] = v90 + 24 * v91;
                  }
                }

                else
                {
                  sub_BAF9A8((v89 + 2), v91 - v92);
                }
              }

              v93 = v89[2] + 24 * v89[1] * v52 + 24 * v105;
              *(v93 + 4) = v5;
              *(v93 + 8) = -1;
              *(v93 + 16) = v106;
              *(v93 + 20) = -1;
            }
          }
        }

        v14 = v109;
        v12 = (v108 + 12);
        v108 = v12;
        if (v12 == v109)
        {
          v12 = v110;
          v108 = v110;
          v15 = 1;
          v112 = 1;
        }

        else
        {
          v15 = v112;
        }

        v16 = v111;
        if (v15)
        {
          v94 = v111;
        }

        else
        {
          v94 = v109;
        }

        if (*(v107 + 16) == 1 && v12 < v94)
        {
          while (1)
          {
            v96 = __ROR8__(*v12, 32);
            if (HIDWORD(v96) == 1 && (v96 + 3) < 2)
            {
              break;
            }

            if (sub_2D5204(**(v107 + 4120)))
            {
              v12 = v108;
              v14 = v109;
              v15 = v112;
              break;
            }

            v14 = v109;
            v12 = (v108 + 12);
            v108 = v12;
            if (v12 == v109)
            {
              v12 = v110;
              v108 = v110;
              v15 = 1;
              v112 = 1;
              if (v110 >= v111)
              {
                break;
              }
            }

            else
            {
              v15 = v112;
              v98 = 16;
              if (v112)
              {
                v98 = 32;
              }

              if (v12 >= *(&v107 + v98))
              {
                break;
              }
            }
          }

          v16 = v111;
        }

        if (v15)
        {
          v14 = v16;
        }
      }

      v4 = v103 + 1;
    }

    while (v103 + 1 != v102);
  }

  result = sub_7EA60(v113) + *(a1 + 632);
  *(a1 + 632) = result;
  return result;
}

double sub_BB3BA0(uint64_t a1, unsigned int a2)
{
  sub_7E9A4(v176);
  v4 = *(a1 + 432);
  v5 = *(a1 + 440);
  if (v4 != v5)
  {
    v6 = *(a1 + 408);
    v7 = *(a1 + 384);
    v8 = *(a1 + 432);
    do
    {
      v9 = *v8++;
      *(v6 + ((v9 >> 3) & 0x1FFFFFF8)) &= ~(1 << v9);
      *(v7 + 4 * v9) = -1;
    }

    while (v8 != v5);
  }

  *(a1 + 440) = v4;
  v10 = *(a1 + 312);
  v167 = *(a1 + 320);
  if (v10 == v167)
  {
    goto LABEL_232;
  }

  v168 = a2;
  v164 = a2 + 1;
  while (2)
  {
    v11 = sub_A9C5E0((*(a1 + 48) + 88), *v10);
    sub_A7905C(v169, *(a1 + 40), *v11, 0, 0, 0);
LABEL_8:
    v12 = v172;
LABEL_9:
    v13 = v173;
    while (v12 < v13)
    {
      v14 = __ROR8__(*v12, 32);
      v15 = *(a1 + 56);
      v16 = *(v15 + 56) - 1;
      v17 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v14 ^ (v14 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v14 ^ (v14 >> 33))) >> 33));
      v18 = v17 ^ (v17 >> 33);
      v19 = *(v15 + 80);
      v21 = *(v15 + 64);
      v20 = *(v15 + 68);
      v22 = v18 & v16;
      v23 = (v19 + 12 * (v18 & v16));
      v25 = *v23;
      v24 = v23[1];
      if (v20 == v24 && v21 == v25)
      {
        goto LABEL_55;
      }

      if (*(v15 + 40))
      {
        v27 = -1;
        v28 = 1;
        do
        {
          if (*(v15 + 36) == v24 && *(v15 + 32) == v25)
          {
            if (v27 == -1)
            {
              v27 = v22;
            }
          }

          else if (__PAIR64__(v24, v25) == v14)
          {
            goto LABEL_51;
          }

          v22 = (v22 + v28) & v16;
          v29 = (v19 + 12 * v22);
          v25 = *v29;
          v24 = v29[1];
          ++v28;
        }

        while (v20 != v24 || v21 != v25);
        if (v27 != -1)
        {
          if (sub_A99094(*(a1 + 56), 1))
          {
            goto LABEL_29;
          }

          goto LABEL_56;
        }

LABEL_55:
        v27 = v22;
        if (sub_A99094(*(a1 + 56), 1))
        {
          goto LABEL_29;
        }

        goto LABEL_56;
      }

      v45 = 1;
      while (__PAIR64__(v24, v25) != v14)
      {
        v22 = (v22 + v45) & v16;
        v46 = (v19 + 12 * v22);
        v25 = *v46;
        v24 = v46[1];
        ++v45;
        if (v20 == v24 && v21 == v25)
        {
          goto LABEL_55;
        }
      }

LABEL_51:
      if (v22 != -1)
      {
        v48 = v19 + 12 * v22;
        v49 = *(v48 + 8);
        if (v49 != -1)
        {
          goto LABEL_102;
        }

        goto LABEL_53;
      }

      v27 = -1;
      if (sub_A99094(*(a1 + 56), 1))
      {
LABEL_29:
        v31 = *(v15 + 56) - 1;
        v32 = *(v15 + 80);
        v34 = *(v15 + 64);
        v33 = *(v15 + 68);
        v35 = v31 & v18;
        v36 = (v32 + 12 * (v31 & v18));
        v38 = *v36;
        v37 = v36[1];
        v39 = *(v15 + 40);
        if (v33 == v37 && v34 == v38)
        {
          goto LABEL_92;
        }

        if (v39)
        {
          v41 = -1;
          v42 = 1;
          do
          {
            if (*(v15 + 36) == v37 && *(v15 + 32) == v38)
            {
              if (v41 == -1)
              {
                v41 = v35;
              }
            }

            else if (__PAIR64__(v37, v38) == v14)
            {
              goto LABEL_82;
            }

            v35 = (v35 + v42) & v31;
            v43 = (v32 + 12 * v35);
            v38 = *v43;
            v37 = v43[1];
            ++v42;
          }

          while (v33 != v37 || v34 != v38);
          if (v41 == -1)
          {
LABEL_92:
            v41 = v35;
          }

          v74 = *(v15 + 48);
          if ((v74 - v39) >= 0x1555555555555555)
          {
            goto LABEL_233;
          }
        }

        else
        {
          v65 = 1;
          while (__PAIR64__(v37, v38) != v14)
          {
            v35 = (v35 + v65) & v31;
            v66 = (v32 + 12 * v35);
            v38 = *v66;
            v37 = v66[1];
            ++v65;
            if (v33 == v37 && v34 == v38)
            {
              v39 = 0;
              goto LABEL_92;
            }
          }

LABEL_82:
          if (v35 != -1)
          {
            v48 = v32 + 12 * v35;
            v49 = *(v48 + 8);
            if (v49 != -1)
            {
              goto LABEL_102;
            }

            goto LABEL_53;
          }

          v41 = -1;
          v74 = *(v15 + 48);
          if ((v74 - v39) >= 0x1555555555555555)
          {
LABEL_233:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }
        }

        if (v39 && ((v75 = (v32 + 12 * v41), *(v15 + 36) == v75[1]) ? (v76 = *(v15 + 32) == *v75) : (v76 = 0), v76))
        {
          *(v15 + 40) = v39 - 1;
          v64 = 3 * v41;
        }

        else
        {
          *(v15 + 48) = v74 + 1;
          v64 = 3 * v41;
        }

        goto LABEL_101;
      }

LABEL_56:
      v55 = *(v15 + 40);
      v54 = *(v15 + 48);
      if ((v54 - v55) >= 0x1555555555555555)
      {
        goto LABEL_233;
      }

      v32 = *(v15 + 80);
      if (v55 && ((v56 = (v32 + 12 * v27), *(v15 + 36) == v56[1]) ? (v57 = *(v15 + 32) == *v56) : (v57 = 0), v57))
      {
        *(v15 + 40) = v55 - 1;
      }

      else
      {
        *(v15 + 48) = v54 + 1;
      }

      v64 = 3 * v27;
LABEL_101:
      v77 = 4 * v64;
      v78 = v32 + v77;
      *v78 = v14;
      *(v78 + 8) = -1;
      v48 = *(v15 + 80) + v77;
      v49 = *(v48 + 8);
      if (v49 != -1)
      {
LABEL_102:
        v71 = *(v172 + 4);
        v72 = *(a1 + 96);
        v73 = v49;
        if (v72)
        {
          goto LABEL_103;
        }

        goto LABEL_107;
      }

LABEL_53:
      v50 = *(v15 + 112);
      *(v15 + 112) = v50 + 1;
      *(v48 + 8) = v50;
      v52 = *(v15 + 96);
      v51 = *(v15 + 104);
      if (v52 >= v51)
      {
        v58 = *(v15 + 88);
        v59 = v52 - v58;
        v60 = (v52 - v58) >> 3;
        v61 = v60 + 1;
        if ((v60 + 1) >> 61)
        {
          sub_1794();
        }

        v62 = v51 - v58;
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

        if (v63)
        {
          if (!(v63 >> 61))
          {
            operator new();
          }

LABEL_234:
          sub_1808();
        }

        v68 = (v52 - v58) >> 3;
        v69 = (8 * v60);
        v70 = (8 * v60 - 8 * v68);
        *v69 = v14;
        v53 = v69 + 1;
        memcpy(v70, v58, v59);
        *(v15 + 88) = v70;
        *(v15 + 96) = v53;
        *(v15 + 104) = 0;
        if (v58)
        {
          operator delete(v58);
        }
      }

      else
      {
        *v52 = v14;
        v53 = v52 + 8;
      }

      *(v15 + 96) = v53;
      v49 = *(v48 + 8);
      v71 = *(v172 + 4);
      v72 = *(a1 + 96);
      v73 = v49;
      if (v72)
      {
LABEL_103:
        v79 = *v72;
        v80 = 0xAAAAAAAAAAAAAAABLL * ((*(v72 + 8) - *v72) >> 4);
        if (v80 <= v168)
        {
          sub_A9C3BC(v72, v164 - v80);
          v79 = *v72;
        }

        v81 = &v79[48 * v168];
        if (*(v81 + 1) <= v73 || ((*(*v81 + ((v73 >> 3) & 0x1FFFFFF8)) >> v73) & 1) == 0)
        {
          goto LABEL_160;
        }
      }

LABEL_107:
      v82 = v73 >> 6;
      if (*(a1 + 416) <= v73)
      {
        v86 = *(a1 + 384);
        goto LABEL_127;
      }

      v83 = *(a1 + 408);
      v84 = *(v83 + 8 * v82);
      v85 = 1 << v73;
      v86 = *(a1 + 384);
      if ((v84 & (1 << v73)) == 0)
      {
        goto LABEL_127;
      }

      v87 = *(a1 + 392);
      v88 = &v87[-v86] >> 2;
      if (v88 <= v73)
      {
        v163 = v71;
        v89 = v49 + 1;
        v90 = v89 - v88;
        if (v89 <= v88)
        {
          v71 = v163;
          if (v89 < v88)
          {
            *(a1 + 392) = v86 + 4 * v89;
          }
        }

        else
        {
          v91 = *(a1 + 400);
          if (v90 > (v91 - v87) >> 2)
          {
            v92 = v91 - v86;
            v93 = v92 >> 1;
            if (v92 >> 1 <= v89)
            {
              v93 = v49 + 1;
            }

            v94 = v92 >= 0x7FFFFFFFFFFFFFFCLL;
            v95 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v94)
            {
              v95 = v93;
            }

            if (!(v95 >> 62))
            {
              operator new();
            }

            goto LABEL_234;
          }

          v96 = 4 * v90;
          memset(v87, 255, v96);
          *(a1 + 392) = &v87[v96];
          v71 = v163;
        }

        sub_4D9168(a1 + 408, v49 + 1, 0);
        v83 = *(a1 + 408);
        v82 = v73 >> 6;
        v84 = *(v83 + 8 * (v73 >> 6));
      }

      if ((v84 & v85) != 0)
      {
        v86 = *(a1 + 384);
        if (*(v86 + 4 * v73) > v71)
        {
          goto LABEL_127;
        }
      }

      else
      {
        *(v83 + 8 * v82) = v84 | v85;
        v108 = *(a1 + 440);
        v107 = *(a1 + 448);
        if (v108 >= v107)
        {
          v124 = *(a1 + 432);
          v125 = v108 - v124;
          v126 = (v108 - v124) >> 2;
          v127 = v126 + 1;
          if ((v126 + 1) >> 62)
          {
LABEL_237:
            sub_1794();
          }

          v166 = v10;
          v128 = v107 - v124;
          if (v128 >> 1 > v127)
          {
            v127 = v128 >> 1;
          }

          if (v128 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v129 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v129 = v127;
          }

          if (v129)
          {
            if (!(v129 >> 62))
            {
              operator new();
            }

            goto LABEL_234;
          }

          v130 = v82;
          v131 = v126;
          v132 = (4 * v126);
          v133 = &v132[-v131];
          *v132 = v49;
          v134 = v132 + 1;
          memcpy(v133, v124, v125);
          *(a1 + 432) = v133;
          *(a1 + 440) = v134;
          *(a1 + 448) = 0;
          if (v124)
          {
            operator delete(v124);
          }

          v82 = v130;
          v10 = v166;
          *(a1 + 440) = v134;
          v86 = *(a1 + 384);
          if (*(v86 + 4 * v73) <= v71)
          {
            goto LABEL_160;
          }

LABEL_127:
          v97 = *(a1 + 392);
          v98 = &v97[-v86] >> 2;
          if (v98 <= v73)
          {
            v99 = v49 + 1;
            v100 = v99 - v98;
            v165 = v10;
            if (v99 <= v98)
            {
              v105 = v82;
              if (v99 < v98)
              {
                v106 = (v86 + 4 * v99);
                goto LABEL_142;
              }
            }

            else
            {
              v101 = *(a1 + 400);
              if (v100 > (v101 - v97) >> 2)
              {
                v102 = v101 - v86;
                v103 = v102 >> 1;
                if (v102 >> 1 <= v99)
                {
                  v103 = v49 + 1;
                }

                v94 = v102 >= 0x7FFFFFFFFFFFFFFCLL;
                v104 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v94)
                {
                  v104 = v103;
                }

                if (!(v104 >> 62))
                {
                  operator new();
                }

                goto LABEL_234;
              }

              v105 = v82;
              memset(v97, 255, 4 * v100);
              v106 = &v97[4 * v100];
LABEL_142:
              *(a1 + 392) = v106;
            }

            sub_4D9168(a1 + 408, v49 + 1, 0);
            v82 = v105;
            v10 = v165;
          }

          v109 = *(a1 + 408);
          v110 = *(v109 + 8 * v82);
          if ((v110 & (1 << v73)) == 0)
          {
            *(v109 + 8 * v82) = v110 | (1 << v73);
            v112 = *(a1 + 440);
            v111 = *(a1 + 448);
            if (v112 >= v111)
            {
              v114 = *(a1 + 432);
              v115 = v112 - v114;
              v116 = (v112 - v114) >> 2;
              v117 = v116 + 1;
              if ((v116 + 1) >> 62)
              {
                goto LABEL_237;
              }

              v118 = v111 - v114;
              if (v118 >> 1 > v117)
              {
                v117 = v118 >> 1;
              }

              if (v118 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v119 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v119 = v117;
              }

              if (v119)
              {
                if (!(v119 >> 62))
                {
                  operator new();
                }

                goto LABEL_234;
              }

              v120 = v116;
              v121 = (4 * v116);
              v122 = &v121[-v120];
              *v121 = v49;
              v113 = v121 + 1;
              memcpy(v122, v114, v115);
              *(a1 + 432) = v122;
              *(a1 + 440) = v113;
              *(a1 + 448) = 0;
              if (v114)
              {
                operator delete(v114);
              }
            }

            else
            {
              *v112 = v49;
              v113 = v112 + 4;
            }

            *(a1 + 440) = v113;
          }

          *(*(a1 + 384) + 4 * v73) = v71;
          goto LABEL_160;
        }

        *v108 = v49;
        *(a1 + 440) = v108 + 4;
        v86 = *(a1 + 384);
        if (*(v86 + 4 * v73) > v71)
        {
          goto LABEL_127;
        }
      }

LABEL_160:
      v13 = v173;
      v12 = v172 + 2;
      v172 = v12;
      if (v12 == v173)
      {
        v123 = v170 + 2;
        v170 = v123;
        if (v123 >= v171)
        {
          break;
        }

        while (1)
        {
          v12 = *v123;
          v13 = v123[1];
          if (*v123 != v13)
          {
            break;
          }

          v123 += 2;
          v170 = v123;
          if (v123 >= v171)
          {
            goto LABEL_6;
          }
        }

        v172 = *v123;
        v173 = v13;
        if (v12 < v13)
        {
          goto LABEL_184;
        }
      }

      else if (v12 < v173)
      {
        while (1)
        {
LABEL_184:
          if ((v175 & 1) == 0)
          {
            v135 = v169[0];
            v136 = *v12;
            v137 = *(v169[0] + 4136);
            if (sub_68312C(v137 + 3896))
            {
              if (*(v137 + 3944))
              {
                if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                {
                  v157 = sub_A57824(-85.0, 0.0);
                  sub_58168(v157 >> 17, v157 >> 49);
                  dword_27339C0 = v158 | 0x40000000;
                  __cxa_guard_release(&qword_27339C8);
                }

                v138 = __ROR8__(v136, 32);
                v139 = *(v135 + 4136);
                if (dword_27339C0 == HIDWORD(v138))
                {
                  if (!sub_68312C(v139 + 3896) || !*(v139 + 3944))
                  {
                    v161 = __cxa_allocate_exception(0x40uLL);
                    v162 = sub_2D390(v161, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                  }
                }

                else
                {
                  v142 = *(v139 + 3944);
                  v143 = v142[1];
                  if (v143)
                  {
                    v144 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v138 ^ (v138 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v138 ^ (v138 >> 33))) >> 33));
                    v145 = v144 ^ (v144 >> 33);
                    v146 = vcnt_s8(v143);
                    v146.i16[0] = vaddlv_u8(v146);
                    if (v146.u32[0] > 1uLL)
                    {
                      v147 = v145;
                      if (v145 >= *&v143)
                      {
                        v147 = v145 % *&v143;
                      }
                    }

                    else
                    {
                      v147 = (*&v143 - 1) & v145;
                    }

                    v148 = *(*v142 + 8 * v147);
                    if (v148)
                    {
                      v149 = *v148;
                      if (v149)
                      {
                        if (v146.u32[0] < 2uLL)
                        {
                          v150 = *&v143 - 1;
                          while (1)
                          {
                            v154 = v149[1];
                            if (v145 == v154)
                            {
                              if (*(v149 + 5) == HIDWORD(v138) && *(v149 + 4) == v138)
                              {
                                goto LABEL_182;
                              }
                            }

                            else if ((v154 & v150) != v147)
                            {
                              goto LABEL_224;
                            }

                            v149 = *v149;
                            if (!v149)
                            {
                              goto LABEL_224;
                            }
                          }
                        }

                        do
                        {
                          v152 = v149[1];
                          if (v145 == v152)
                          {
                            if (*(v149 + 5) == HIDWORD(v138) && *(v149 + 4) == v138)
                            {
                              goto LABEL_182;
                            }
                          }

                          else
                          {
                            if (v152 >= *&v143)
                            {
                              v152 %= *&v143;
                            }

                            if (v152 != v147)
                            {
                              break;
                            }
                          }

                          v149 = *v149;
                        }

                        while (v149);
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_224:
          if (v174 == 1)
          {
            goto LABEL_8;
          }

          v155 = sub_C9E544(v169[0] + 3896);
          v12 = v172;
          if (v155 >= *(v172 + 14))
          {
            if (v174)
            {
              goto LABEL_9;
            }

            v156 = sub_585D8((v169[0] + 3896));
            v12 = v172;
            if ((v156 & 1) != 0 || (*(v172 + 15) & 1) == 0)
            {
              goto LABEL_9;
            }
          }

LABEL_182:
          v12 = v172 + 2;
          v172 = v12;
          if (v12 == v173)
          {
            v140 = v170 + 2;
            v170 = v140;
            if (v140 >= v171)
            {
              goto LABEL_9;
            }

            while (1)
            {
              v12 = *v140;
              v141 = v140[1];
              if (*v140 != v141)
              {
                break;
              }

              v140 += 2;
              v170 = v140;
              if (v140 >= v171)
              {
                goto LABEL_6;
              }
            }

            v172 = *v140;
            v173 = v141;
            if (v12 >= v141)
            {
              goto LABEL_9;
            }
          }

          else if (v12 >= v173)
          {
            goto LABEL_9;
          }
        }
      }
    }

LABEL_6:
    if (++v10 != v167)
    {
      continue;
    }

    break;
  }

LABEL_232:
  result = sub_7EA60(v176) + *(a1 + 624);
  *(a1 + 624) = result;
  return result;
}

uint64_t sub_BB49D8(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, signed int a5)
{
  v7 = a3;
  v55 = a3;
  v10 = *(a1 + 80);
  if (v10)
  {
    v12 = *v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v10[1] - *v10) >> 4);
    if (v13 <= a4)
    {
      sub_A9C3BC(*(a1 + 80), a4 - v13 + 1);
      v12 = *v10;
    }

    v14 = (v12 + 48 * a4);
    if (v14[1] <= v7 || ((*(*v14 + ((v7 >> 3) & 0x1FFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 25) == 1)
  {
    v15 = a1 + 24 * a2;
    v16 = *(v15 + 192);
    v17 = *(v15 + 200);
    v18 = (v15 + 192);
    v19 = *(a1 + 456);
    v20 = (v17 - v16) >> 2;
    if (v20 <= v19)
    {
      sub_617214(v18, v19 - v20 + 1);
      v16 = *v18;
    }

    v21 = (v16 + 4 * v19);
    if (*(a1 + 26) != 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v22 = *(a1 + 176);
    v23 = *(a1 + 456);
    if (*v22 <= v23)
    {
      *v22 = v23 + 1;
      v24 = v22[2];
      v25 = v22[1] * (v23 + 1);
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v22[3] - v24) >> 3);
      if (v25 <= v26)
      {
        if (v25 < v26)
        {
          v22[3] = v24 + 24 * v25;
        }
      }

      else
      {
        sub_BAF9A8((v22 + 2), v25 - v26);
      }
    }

    v21 = (v22[2] + 24 * v22[1] * v23 + 24 * a4);
    if (*(a1 + 26) != 1)
    {
      goto LABEL_22;
    }
  }

  v27 = *v21;
  if (v27 != 0x7FFFFFFF)
  {
    v28 = *(a1 + 28);
    v29 = v28 / 10;
    v30 = v28 % 10;
    v31 = v28 < 0 ? -5 : 5;
    if ((v29 + (((103 * (v31 + v30)) >> 15) & 1) + ((103 * (v31 + v30)) >> 10) + v27) <= a5)
    {
      return 0;
    }
  }

LABEL_22:
  if ((*(a1 + 25) & 1) == 0)
  {
    v36 = v7;
    v40 = *(a1 + 176);
    if (*v40 > v7)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v32 = a1 + 24 * a2;
  v33 = *(v32 + 192);
  v34 = *(v32 + 200);
  v35 = (v32 + 192);
  v36 = v7;
  v37 = (v34 - v33) >> 2;
  if (v37 <= v7)
  {
    sub_617214(v35, v7 - v37 + 1);
    v33 = *v35;
  }

  v38 = *(v33 + 4 * v7);
  if (v38 != 0x7FFFFFFF && v38 <= a5)
  {
    return 0;
  }

  v40 = *(a1 + 176);
  if (*v40 <= v7)
  {
LABEL_32:
    *v40 = v36 + 1;
    v41 = v40[2];
    v42 = v40[1] * (v36 + 1);
    v43 = 0xAAAAAAAAAAAAAAABLL * ((v40[3] - v41) >> 3);
    if (v42 <= v43)
    {
      if (v42 < v43)
      {
        v40[3] = v41 + 24 * v42;
      }
    }

    else
    {
      sub_BAF9A8((v40 + 2), v42 - v43);
    }
  }

LABEL_36:
  v44 = (v40[2] + 24 * v40[1] * v36 + 24 * a4);
  if (*v44 != 0x7FFFFFFF && *v44 <= a5)
  {
    return 0;
  }

  if (*(a1 + 25))
  {
    v46 = a1 + 24 * a2;
    v47 = *(v46 + 192);
    v48 = *(v46 + 200);
    v49 = (v46 + 192);
    v50 = (v48 - v47) >> 2;
    if (v50 <= v36)
    {
      sub_617214(v49, v36 - v50 + 1);
      v47 = *v49;
    }

    *(v47 + 4 * v36) = a5;
  }

  *v44 = a5;
  v52 = a1 + 48 * a2;
  v53 = (v52 + 240);
  if (*(v52 + 248) > v36)
  {
    if ((*(*v53 + ((v36 >> 3) & 0x1FFFFFF8)) >> v36))
    {
      goto LABEL_48;
    }

LABEL_51:
    sub_DD38((v53 + 3), &v55);
    v7 = v55;
    *(*v53 + ((v55 >> 3) & 0x1FFFFFF8)) |= 1 << v55;
    if (*(a1 + 25))
    {
      return 1;
    }

    goto LABEL_52;
  }

  sub_4D9168(v53, v7 + 1, 0);
  if (((*(*v53 + ((v36 >> 3) & 0x1FFFFFF8)) >> v36) & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  if (*(a1 + 25))
  {
    return 1;
  }

LABEL_52:
  v54 = v7;
  if (*(a1 + 344) <= v7)
  {
    sub_4D9168(a1 + 336, v7 + 1, 0);
    v54 = v55;
  }

  if ((*(*(a1 + 336) + ((v54 >> 3) & 0x1FFFFFF8)) >> v54))
  {
    return 1;
  }

  sub_DD38(a1 + 360, &v55);
  result = 1;
  *(*(a1 + 336) + ((v55 >> 3) & 0x1FFFFFF8)) |= 1 << v55;
  return result;
}

void sub_BB4E40(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v134[0] = a3;
  *(a1 + 672) = *(a1 + 672) + 1.0;
  v6 = a3;
  v117 = *sub_A9C5E0((*(a1 + 56) + 88), a3);
  v7 = *(a1 + 384);
  v8 = (*(a1 + 392) - v7) >> 2;
  if (v8 <= v6)
  {
    v9 = a3 + 1;
    if (v9 <= v8)
    {
      if (v9 < v8)
      {
        *(a1 + 392) = v7 + 4 * v9;
      }
    }

    else
    {
      sub_49ABAC(a1 + 384, v9 - v8);
    }

    sub_4D9168(a1 + 408, a3 + 1, 0);
  }

  v10 = *(a1 + 408);
  v11 = *(v10 + 8 * (v6 >> 6));
  if (((1 << a3) & v11) == 0)
  {
    *(v10 + 8 * (v6 >> 6)) = (1 << a3) | v11;
    sub_DD38(a1 + 432, v134);
    v6 = v134[0];
  }

  v116 = *(*(a1 + 384) + 4 * v6);
  sub_A9D53C(&v132, *(a1 + 40), v117);
  v12 = v132;
  if (v132 < v133)
  {
    while (1)
    {
      *(a1 + 680) = *(a1 + 680) + 1.0;
      v119 = *v12;
      v118 = v134[0];
      sub_A79708(&v120, *(a1 + 40), v117, v116, 0, 1);
      v13 = v124;
      if (v124 >= v123 && v124 < v125)
      {
        break;
      }

LABEL_11:
      v12 = v132 + 4;
      v132 = v12;
      if (v12 >= v133)
      {
        return;
      }
    }

    v15 = 0;
    v114 = 0x7FFFFFFF;
    v112 = 0xFFFFFFFFLL;
    v115 = 0xFFFFFFFFLL;
    LODWORD(v113) = -1;
    while (1)
    {
      v16 = __ROR8__(*v13, 32);
      v17 = *(a1 + 48);
      v18 = *(v17 + 56) - 1;
      v19 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) >> 33));
      v20 = v19 ^ (v19 >> 33);
      v21 = *(v17 + 80);
      v23 = *(v17 + 64);
      v22 = *(v17 + 68);
      v24 = v20 & v18;
      v25 = (v21 + 12 * (v20 & v18));
      v27 = *v25;
      v26 = v25[1];
      if (v22 == v26 && v23 == v27)
      {
        goto LABEL_69;
      }

      if (*(v17 + 40))
      {
        break;
      }

      v47 = 1;
      while (__PAIR64__(v26, v27) != v16)
      {
        v24 = (v24 + v47) & v18;
        v48 = (v21 + 12 * v24);
        v27 = *v48;
        v26 = v48[1];
        ++v47;
        if (v22 == v26 && v23 == v27)
        {
          goto LABEL_69;
        }
      }

LABEL_57:
      if (v24 != -1)
      {
        v50 = v21 + 12 * v24;
        v51 = *(v50 + 8);
        if (v51 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_119;
      }

      v29 = -1;
      if (sub_A99094(*(a1 + 48), 1))
      {
LABEL_35:
        v33 = *(v17 + 56) - 1;
        v34 = *(v17 + 80);
        v36 = *(v17 + 64);
        v35 = *(v17 + 68);
        v37 = v33 & v20;
        v38 = (v34 + 12 * (v33 & v20));
        v40 = *v38;
        v39 = v38[1];
        v41 = *(v17 + 40);
        if (v35 == v39 && v36 == v40)
        {
          goto LABEL_109;
        }

        if (v41)
        {
          v43 = -1;
          v44 = 1;
          do
          {
            if (*(v17 + 36) == v39 && *(v17 + 32) == v40)
            {
              if (v43 == -1)
              {
                v43 = v37;
              }
            }

            else if (__PAIR64__(v39, v40) == v16)
            {
              goto LABEL_91;
            }

            v37 = (v37 + v44) & v33;
            v45 = (v34 + 12 * v37);
            v40 = *v45;
            v39 = v45[1];
            ++v44;
          }

          while (v35 != v39 || v36 != v40);
          if (v43 == -1)
          {
LABEL_109:
            v43 = v37;
          }

          v78 = *(v17 + 48);
          if ((v78 - v41) >= 0x1555555555555555)
          {
            goto LABEL_181;
          }
        }

        else
        {
          v62 = 1;
          while (__PAIR64__(v39, v40) != v16)
          {
            v37 = (v37 + v62) & v33;
            v63 = (v34 + 12 * v37);
            v40 = *v63;
            v39 = v63[1];
            ++v62;
            if (v35 == v39 && v36 == v40)
            {
              v41 = 0;
              goto LABEL_109;
            }
          }

LABEL_91:
          if (v37 != -1)
          {
            v50 = v34 + 12 * v37;
            v51 = *(v50 + 8);
            if (v51 != -1)
            {
              goto LABEL_59;
            }

            goto LABEL_119;
          }

          v43 = -1;
          v78 = *(v17 + 48);
          if ((v78 - v41) >= 0x1555555555555555)
          {
LABEL_181:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }
        }

        if (v41 && ((v79 = (v34 + 12 * v43), *(v17 + 36) == v79[1]) ? (v80 = *(v17 + 32) == *v79) : (v80 = 0), v80))
        {
          *(v17 + 40) = v41 - 1;
          v57 = 3 * v43;
        }

        else
        {
          *(v17 + 48) = v78 + 1;
          v57 = 3 * v43;
        }

        goto LABEL_118;
      }

LABEL_70:
      v54 = *(v17 + 40);
      v53 = *(v17 + 48);
      if ((v53 - v54) >= 0x1555555555555555)
      {
        goto LABEL_181;
      }

      v34 = *(v17 + 80);
      if (v54 && ((v55 = (v34 + 12 * v29), *(v17 + 36) == v55[1]) ? (v56 = *(v17 + 32) == *v55) : (v56 = 0), v56))
      {
        *(v17 + 40) = v54 - 1;
      }

      else
      {
        *(v17 + 48) = v53 + 1;
      }

      v57 = 3 * v29;
LABEL_118:
      v81 = 4 * v57;
      v82 = v34 + v81;
      *v82 = v16;
      *(v82 + 8) = -1;
      v50 = *(v17 + 80) + v81;
      v51 = *(v50 + 8);
      if (v51 != -1)
      {
LABEL_59:
        if (!sub_C435EC((a1 + 488), v51, v16))
        {
          goto LABEL_133;
        }

        goto LABEL_60;
      }

LABEL_119:
      v83 = *(v17 + 112);
      *(v17 + 112) = v83 + 1;
      *(v50 + 8) = v83;
      v85 = *(v17 + 96);
      v84 = *(v17 + 104);
      if (v85 >= v84)
      {
        v87 = *(v17 + 88);
        v88 = v85 - v87;
        v89 = (v85 - v87) >> 3;
        v90 = v89 + 1;
        if ((v89 + 1) >> 61)
        {
          sub_1794();
        }

        v91 = v84 - v87;
        if (v91 >> 2 > v90)
        {
          v90 = v91 >> 2;
        }

        if (v91 >= 0x7FFFFFFFFFFFFFF8)
        {
          v92 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v92 = v90;
        }

        if (v92)
        {
          if (!(v92 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v93 = (v85 - v87) >> 3;
        v94 = (8 * v89);
        v95 = (8 * v89 - 8 * v93);
        *v94 = v16;
        v86 = v94 + 1;
        memcpy(v95, v87, v88);
        *(v17 + 88) = v95;
        *(v17 + 96) = v86;
        *(v17 + 104) = 0;
        if (v87)
        {
          operator delete(v87);
        }
      }

      else
      {
        *v85 = v16;
        v86 = v85 + 1;
      }

      *(v17 + 96) = v86;
      v51 = *(v50 + 8);
      if (!sub_C435EC((a1 + 488), *(v50 + 8), v16))
      {
LABEL_133:
        v15 &= *(a1 + 32);
        goto LABEL_134;
      }

LABEL_60:
      if (v15 & 1) != 0 && (*(v124 + 15))
      {
        v52 = v126;
        if (v126)
        {
          v52 = *(v126 + 4 * ((v124 - v123) >> 4));
        }

        if ((v52 & v119) == 0)
        {
          v65 = (v122 + *(v122 - *v122 + 6));
          v66 = v65 + *v65;
          v67 = &v131;
          if (!v129)
          {
            v67 = v128;
          }

          v68 = *&v66[8 * v128[1] + 4 + 8 * ((v124 - v123) >> 4)] + *v67;
          v69 = *(a1 + 64);
          if (v69)
          {
            if (*v69 > v51)
            {
              v70 = 0;
              v71 = *(a1 + 168) + ~a2;
              v72 = v71;
              while (v70 <= v71)
              {
                v73 = *sub_BAFC3C(v69 + 2, v69[1] * v51 + v72);
                v70 += 2;
                v72 -= 2;
                if (v73 != 0x7FFFFFFF)
                {
                  if (v73 < v68)
                  {
                    break;
                  }

                  goto LABEL_104;
                }
              }
            }
          }

          else
          {
LABEL_104:
            if (sub_BB49D8(a1, 0, v51, a2, v68))
            {
              v74 = *(a1 + 176);
              if (*v74 <= v51)
              {
                *v74 = v51 + 1;
                v75 = v74[2];
                v76 = v74[1] * (v51 + 1);
                v77 = 0xAAAAAAAAAAAAAAABLL * ((v74[3] - v75) >> 3);
                if (v76 <= v77)
                {
                  if (v76 < v77)
                  {
                    v74[3] = v75 + 24 * v76;
                  }
                }

                else
                {
                  sub_BAF9A8((v74 + 2), v76 - v77);
                }
              }

              v110 = v74[2] + 24 * v74[1] * v51 + 24 * a2;
              *(v110 + 4) = v113;
              *(v110 + 8) = v115 | (v112 << 32);
              *(v110 + 16) = v114;
              *(v110 + 20) = v118;
            }
          }
        }
      }

      if ((*(v124 + 15) & 2) == 0)
      {
        goto LABEL_134;
      }

      if (v126)
      {
        if (*(v126 + 4 * ((v124 - v123) >> 4)) != v119)
        {
          goto LABEL_134;
        }
      }

      else if (v119)
      {
        goto LABEL_134;
      }

      v58 = *(a1 + 176);
      if (*v58 <= v51)
      {
        *v58 = v51 + 1;
        v59 = v58[2];
        v60 = v58[1] * (v51 + 1);
        v61 = 0xAAAAAAAAAAAAAAABLL * ((v58[3] - v59) >> 3);
        if (v60 <= v61)
        {
          if (v60 < v61)
          {
            v58[3] = v59 + 24 * v60;
          }
        }

        else
        {
          sub_BAF9A8((v58 + 2), v60 - v61);
        }
      }

      v102 = *(v58[2] + 24 * v58[1] * v51 + 24 * (a2 - 1));
      if (v102 == 0x7FFFFFFF)
      {
        goto LABEL_134;
      }

      v103 = *(v124 + 2);
      v104 = v103 + v102;
      if (v15)
      {
        v105 = (v122 + *(v122 - *v122 + 6));
        v106 = v105 + *v105;
        v107 = &v131;
        if (!v129)
        {
          v107 = v128;
        }

        if (v104 < *&v106[8 * v128[1] + 8 + 8 * ((v124 - v123) >> 4)] + *v107 && sub_A9D3B8(*(a1 + 40), &v120, v104))
        {
LABEL_169:
          v113 = (v124 - v123) >> 4;
          v115 = -1431655765 * ((v128 - v127) >> 2);
          if (v129)
          {
            v108 = v131;
          }

          else
          {
            v108 = 0x7FFFFFFF;
          }

          v114 = v108;
          if (v129)
          {
            v109 = v130;
          }

          else
          {
            v109 = 0xFFFFFFFFLL;
          }

          v112 = v109;
        }

        v15 = 1;
        goto LABEL_134;
      }

      if (v129 == 1)
      {
        if (sub_A7A1E8(*(a1 + 40), &v120, v104, 1u))
        {
          goto LABEL_169;
        }
      }

      else if (sub_A7A710(&v120, v103 + v102, 1))
      {
        goto LABEL_169;
      }

      v15 = 0;
LABEL_134:
      v96 = v123;
      v13 = v124 + 2;
      v124 += 2;
      if (*(v120 + 16) == 1 && (v121 & 1) == 0 && v13 >= v123 && v13 < v125)
      {
        do
        {
          v98 = __ROR8__(*v13, 32);
          if (HIDWORD(v98) == 1 && (v98 + 3) < 2)
          {
            break;
          }

          v100 = sub_2D5204(**(v120 + 4120));
          v96 = v123;
          v13 = v124;
          if (v100)
          {
            break;
          }

          v13 = v124 + 2;
          v124 = v13;
        }

        while (v13 >= v123 && v13 < v125);
      }

      if (v13 < v96 || v13 >= v125)
      {
        goto LABEL_11;
      }
    }

    v29 = -1;
    v30 = 1;
    do
    {
      if (*(v17 + 36) == v26 && *(v17 + 32) == v27)
      {
        if (v29 == -1)
        {
          v29 = v24;
        }
      }

      else if (__PAIR64__(v26, v27) == v16)
      {
        goto LABEL_57;
      }

      v24 = (v24 + v30) & v18;
      v31 = (v21 + 12 * v24);
      v27 = *v31;
      v26 = v31[1];
      ++v30;
    }

    while (v22 != v26 || v23 != v27);
    if (v29 != -1)
    {
      if (sub_A99094(*(a1 + 48), 1))
      {
        goto LABEL_35;
      }

      goto LABEL_70;
    }

LABEL_69:
    v29 = v24;
    if (sub_A99094(*(a1 + 48), 1))
    {
      goto LABEL_35;
    }

    goto LABEL_70;
  }
}

uint64_t sub_BB58F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_A520DC(a2);
  v7 = sub_A51E58(a2, 0);
  if (HIDWORD(v7) == 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = 10 * (HIDWORD(v6) - HIDWORD(v7));
  }

  if (HIDWORD(v6) == 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = sub_A520DC(a3);
  v11 = sub_A51E58(a3, 0);
  v12 = 0x7FFFFFFF;
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
    if (HIDWORD(v11) != 0x7FFFFFFF)
    {
      if (HIDWORD(v10) == HIDWORD(v11))
      {
        v13 = 1.79769313e308;
        goto LABEL_19;
      }

      v12 = 10 * (HIDWORD(v10) - HIDWORD(v11));
    }
  }

  if (v9 < 0)
  {
    v14 = -5;
  }

  else
  {
    v14 = 5;
  }

  v15 = v12 / 10;
  v16 = v12 % 10;
  if (v12 < 0)
  {
    v17 = -5;
  }

  else
  {
    v17 = 5;
  }

  v13 = (v9 / 10 + (((103 * (v14 + v9 % 10)) >> 15) & 1) + ((103 * (v14 + v9 % 10)) >> 10)) / (v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10));
LABEL_19:
  v18 = sub_A51E58(a2, 0);
  if (SHIDWORD(v18) >= (sub_A51E58(a3, 0) >> 32))
  {
    v19 = sub_A520DC(a2);
    if (SHIDWORD(v19) >= (sub_A520DC(a3) >> 32))
    {
      return 0;
    }
  }

  if (v13 > *(a1 + 8))
  {
    return 0;
  }

  if ((*(a1 + 25) & 1) == 0)
  {
    for (i = *(a2 + 200); i != *(a2 + 208); i += 9)
    {
      if (!*(i + 24))
      {
        v22 = *i;
        if (*i != i[1])
        {
          v23 = *(v22 + 160);
          v24 = *(v22 + 44);
          if (!v23 && v24 == -1)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return 1;
}

void sub_BB5F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_BB6008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2FEF94(0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 296 * v6;
    do
    {
      v10 = *(a3 + 24);
      if (!v10)
      {
        sub_2B7420();
      }

      if ((*(*v10 + 48))(v10, *(a2 + 8) + v7))
      {
        v11 = *(a2 + 8);
        if (*(a1 + 25) == 1)
        {
          *(v11 + v7 + 16) = v8;
        }

        sub_BB60F4(a1, a2, (v11 + v7));
      }

      ++v8;
      v7 += 296;
    }

    while (v9 != v7);
  }
}

void sub_BB60F4(unsigned int *a1, uint64_t a2, void *a3)
{
  v4 = a3[25];
  v3 = a3[26];
  v5 = 0x8E38E38E38E38E39 * (v3 - v4);
  if (v5 < 3)
  {
    return;
  }

  memset(v45, 0, 24);
  memset(__p, 0, 24);
  v9 = *v4;
  v10 = *(*v4 + 160);
  if (v10)
  {
    if (v10 != 1)
    {
      sub_5AF20();
    }

    LODWORD(v11) = *(v9 + 8);
    LODWORD(v12) = *(v9 + 4);
    if (v3 == v4)
    {
LABEL_5:
      if (v10)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v11 = *(v9 + 20);
    v12 = *(v9 + 8);
    if (v3 == v4)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
  for (i = 0; i != v5; ++i)
  {
    v19 = a3[25] + 72 * i;
    if (!*(v19 + 24))
    {
      v21 = v11 != v12 || i > 1;
      sub_BB6430(a1, v19, (v19 + 72), v21, v45);
      sub_BB6864(v22, v45);
      if (v17)
      {
        sub_BB6AF0(v23, v45, __p);
      }

      v24 = v45[2];
      v25 = __p[0];
      v26 = *v45;
      v45[0] = __p[0];
      *&v45[1] = *&__p[1];
      *__p = v26;
      __p[2] = v24;
      for (j = v45[1]; j != v25; j -= 40)
      {
        v28 = *(j - 3);
        if (v28)
        {
          *(j - 2) = v28;
          operator delete(v28);
        }
      }

      v45[1] = v25;
      v17 = 1;
    }
  }

  v9 = *a3[25];
  v10 = *(v9 + 160);
  if (v10)
  {
LABEL_6:
    if (v10 != 1)
    {
      sub_5AF20();
    }

    v13 = v9 + 4;
    v14 = *(v9 + 4) | (*(v9 + 4) << 32);
    v15 = (*(v13 + 4) | (*(v13 + 4) << 32)) >> 32;
    v16 = 0x7FFFFFFF;
    if (v15 == 0x7FFFFFFF)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

LABEL_28:
  v29 = *(v9 + 20);
  v14 = *(v9 + 8);
  v15 = HIDWORD(v29);
  v16 = 0x7FFFFFFF;
  if (v15 != 0x7FFFFFFF)
  {
LABEL_29:
    v16 = 0x7FFFFFFF;
    if (HIDWORD(v14) != 0x7FFFFFFF)
    {
      v16 = 10 * (v15 - HIDWORD(v14));
    }
  }

LABEL_31:
  v30 = __p[0];
  v31 = __p[1];
  if (__p[0] != __p[1])
  {
    v32 = v16 / -10;
    v33 = v16 % 10;
    if (v16 < 0)
    {
      v34 = -5;
    }

    else
    {
      v34 = 5;
    }

    v35 = vdup_n_s32(v32 + (((-103 * (v34 + v33)) >> 15) & 1) + ((-103 * (v34 + v33)) >> 10));
    do
    {
      *v30 = vadd_s32(*v30, v35);
      v30 += 5;
    }

    while (v30 != v31);
  }

  sub_BB6F34(a1, a2, a3, __p);
  v36 = __p[0];
  if (__p[0])
  {
    v37 = __p[1];
    v38 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v39 = *(v37 - 3);
        if (v39)
        {
          *(v37 - 2) = v39;
          operator delete(v39);
        }

        v37 -= 40;
      }

      while (v37 != v36);
      v38 = __p[0];
    }

    __p[1] = v36;
    operator delete(v38);
  }

  v40 = v45[0];
  if (v45[0])
  {
    v41 = v45[1];
    v42 = v45[0];
    if (v45[1] != v45[0])
    {
      do
      {
        v43 = *(v41 - 3);
        if (v43)
        {
          *(v41 - 2) = v43;
          operator delete(v43);
        }

        v41 -= 40;
      }

      while (v41 != v40);
      v42 = v45[0];
    }

    v45[1] = v40;
    operator delete(v42);
  }
}

void sub_BB640C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_30C2C4(&a9);
  sub_30C2C4(&a13);
  _Unwind_Resume(a1);
}

void sub_BB6430(unsigned int *a1, void *a2, void *a3, char a4, uint64_t a5)
{
  if (*(a1 + 10) != 1 || a2[1] != *a2)
  {
    __p[3] = 0;
    v5 = *a2;
    if (!v5[40] && *(*a3 + 168 * *v5 + 160) == 1)
    {
      sub_BB77A0(__p, *(a1 + 9), 1);
    }

    sub_5AF20();
  }
}

void sub_BB681C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    v16 = a1;
    operator delete(__p);
    a1 = v16;
  }

  _Unwind_Resume(a1);
}

void sub_BB6864(uint64_t a1, __n128 **a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  v6 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 3);
  if (v5 < 1)
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 3);
    while (1)
    {
      v8 = operator new(40 * v7, &std::nothrow);
      if (v8)
      {
        break;
      }

      v9 = v7 >> 1;
      v10 = v7 > 1;
      v7 >>= 1;
      if (!v10)
      {
        v11 = 0;
        v7 = v9;
        goto LABEL_8;
      }
    }

    v11 = v8;
  }

LABEL_8:
  sub_BBBAAC(v3, v4, v6, v11, v7);
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *a2;
  v13 = a2[1];
  if (*a2 != v13)
  {
    v14 = 0x80000000;
    v15 = 0x80000000;
    v16 = *a2;
    do
    {
      while (v16->n128_u32[0] <= v14 || v16->n128_u32[2] <= v15)
      {
        v16->n128_u32[2] = 0x7FFFFFFF;
        v16 = (v16 + 40);
        if (v16 == v13)
        {
          goto LABEL_16;
        }
      }

      v15 = v16->n128_i32[2];
      v14 = v16->n128_u32[0];
      v16 = (v16 + 40);
    }

    while (v16 != v13);
LABEL_16:
    if (v12 != v13)
    {
      while (v12->n128_u32[2] != 0x7FFFFFFF)
      {
        v12 = (v12 + 40);
        if (v12 == v13)
        {
          return;
        }
      }

      if (v12 != v13)
      {
        v17 = (v12 + 40);
        if (&v12[2].n128_i8[8] != v13)
        {
          do
          {
            if (v17->n128_u32[2] != 0x7FFFFFFF)
            {
              v18 = v17->n128_u64[0];
              v12->n128_u32[2] = v17->n128_u32[2];
              v12->n128_u64[0] = v18;
              v19 = v12[1].n128_u64[0];
              if (v19)
              {
                v12[1].n128_u64[1] = v19;
                operator delete(v19);
                v12[1].n128_u64[0] = 0;
                v12[1].n128_u64[1] = 0;
                v12[2].n128_u64[0] = 0;
              }

              v12[1] = v17[1];
              v12[2].n128_u64[0] = v17[2].n128_u64[0];
              v17[1].n128_u64[0] = 0;
              v17[1].n128_u64[1] = 0;
              v17[2].n128_u64[0] = 0;
              v12 = (v12 + 40);
            }

            v17 = (v17 + 40);
          }

          while (v17 != v13);
          v13 = a2[1];
        }
      }
    }
  }

  if (v12 != v13)
  {
    while (v13 != v12)
    {
      v20 = *(v13 - 3);
      if (v20)
      {
        *(v13 - 2) = v20;
        operator delete(v20);
      }

      v13 -= 10;
    }

    a2[1] = v12;
  }
}

void sub_BB6AD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_BB6AF0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  v4 = *a2;
  v5 = a2[1];
  if (v5 != *a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a2) >> 3);
    while (1)
    {
      v11 = *a3;
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3);
      if (v8 >= v12)
      {
        break;
      }

      if (v7 < v9)
      {
        v13 = v11 + 40 * v8;
        v14 = (v4 + 40 * v7);
        if (*(v13 + 8) <= *v14)
        {
          goto LABEL_16;
        }

        v15 = v7 + 1;
        while (1)
        {
          v16 = v15;
          *v14 = 0x7FFFFFFF;
          if (v9 == v15)
          {
            break;
          }

          v17 = v14[10];
          v14 += 10;
          ++v15;
          if (*(v13 + 8) <= v17)
          {
            v7 = v16;
            goto LABEL_15;
          }
        }

        v7 = v9;
LABEL_15:
        if (v16 < v9)
        {
LABEL_16:
          v18 = v4 + 40 * v7;
          if (*v18 >= *(v13 + 8))
          {
            v19 = v12 - 1;
            v20 = (v11 + 40 * v8 + 48);
            while (v19 != v8)
            {
              ++v8;
              v21 = *v20;
              v20 += 10;
              if (*v18 < v21)
              {
                v19 = v8 - 1;
                if (!v8)
                {
                  goto LABEL_5;
                }

                goto LABEL_23;
              }
            }

            v8 = v12;
            if (!v12)
            {
              goto LABEL_5;
            }

LABEL_23:
            v22 = v11 + 40 * v19;
            *(v18 + 4) = *(v22 + 4);
            v23 = *(v18 + 24);
            v42 = *(v23 - 64);
            v43 = *(v23 - 48);
            v44 = *(v23 - 32);
            v45 = *(v23 - 16);
            if (v18 != v22)
            {
              sub_BBCDF8((v18 + 16), *(v22 + 16), *(v22 + 24), (*(v22 + 24) - *(v22 + 16)) >> 6);
              v4 = *v3;
            }

            v24 = (v4 + 40 * v7);
            v25 = v24[3];
            v26 = v24[4];
            if (v25 < v26)
            {
              *v25 = v42;
              *(v25 + 1) = v43;
              *(v25 + 2) = v44;
              *(v25 + 3) = v45;
              v10 = (v25 + 64);
            }

            else
            {
              v41 = v3;
              v27 = v24[2];
              v28 = v25 - v27;
              v29 = (v25 - v27) >> 6;
              v30 = v29 + 1;
              if ((v29 + 1) >> 58)
              {
                sub_1794();
              }

              v31 = v26 - v27;
              if (v31 >> 5 > v30)
              {
                v30 = v31 >> 5;
              }

              if (v31 >= 0x7FFFFFFFFFFFFFC0)
              {
                v32 = 0x3FFFFFFFFFFFFFFLL;
              }

              else
              {
                v32 = v30;
              }

              if (v32)
              {
                if (!(v32 >> 58))
                {
                  operator new();
                }

                sub_1808();
              }

              v33 = (v29 << 6);
              *v33 = v42;
              v33[1] = v43;
              v33[2] = v44;
              v33[3] = v45;
              v10 = (v29 << 6) + 64;
              memcpy(0, v27, v28);
              v24[2] = 0;
              v24[3] = v10;
              v24[4] = 0;
              if (v27)
              {
                operator delete(v27);
              }

              v3 = v41;
            }

            v24[3] = v10;
            v4 = *v3;
            v5 = v3[1];
          }
        }
      }

LABEL_5:
      ++v7;
      v9 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3);
      if (v7 >= v9)
      {
        if (v7 > v9)
        {
          sub_BBB720(v3, v7 - v9);
          v5 = v3[1];
        }

        goto LABEL_46;
      }
    }

    v34 = v4 + 40 * v7;
    while (v5 != v34)
    {
      v35 = *(v5 - 24);
      if (v35)
      {
        *(v5 - 16) = v35;
        operator delete(v35);
      }

      v5 -= 40;
    }

    v3[1] = v34;
    v5 = v34;
  }

LABEL_46:
  v36 = *v3;
  if (*v3 != v5)
  {
    while (*v36 != 0x7FFFFFFF)
    {
      v36 += 40;
      if (v36 == v5)
      {
        return;
      }
    }

    if (v36 != v5)
    {
      v37 = v36 + 40;
      if (v36 + 40 != v5)
      {
        do
        {
          if (*v37 != 0x7FFFFFFF)
          {
            v38 = *v37;
            *(v36 + 8) = *(v37 + 8);
            *v36 = v38;
            v39 = *(v36 + 16);
            if (v39)
            {
              *(v36 + 24) = v39;
              operator delete(v39);
              *(v36 + 16) = 0;
              *(v36 + 24) = 0;
              *(v36 + 32) = 0;
            }

            *(v36 + 16) = *(v37 + 16);
            *(v36 + 32) = *(v37 + 32);
            *(v37 + 16) = 0;
            *(v37 + 24) = 0;
            *(v37 + 32) = 0;
            v36 += 40;
          }

          v37 += 40;
        }

        while (v37 != v5);
        v5 = v3[1];
      }
    }

    if (v36 != v5)
    {
      while (v5 != v36)
      {
        v40 = *(v5 - 24);
        if (v40)
        {
          *(v5 - 16) = v40;
          operator delete(v40);
        }

        v5 -= 40;
      }

      v3[1] = v36;
    }
  }
}