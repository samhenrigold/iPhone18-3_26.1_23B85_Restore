void sub_104A998(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_104A9B4(uint64_t a1, unsigned int *a2, int *a3, uint64_t a4)
{
  if (*(a1 + 3048) != 1)
  {
    return 4294967294;
  }

  v4 = a4;
  sub_104AED8(a1, a2, a3, a4);
  result = sub_104B668(*(a1 + 3032), *a2);
  if (result)
  {
    v36 = v4;
    v9 = *result;
    v10 = *(result + 8);
    if (*result != v10)
    {
      do
      {
        v15 = *(a1 + 1040);
        if (v15 != -1)
        {
          v16 = *(v9 + 16);
          if (v16 != -1 && *(v9 + 20) != 0x7FFFFFFF && *(v9 + 24) != 0x7FFFFFFFFFFFFFFFLL && v16 + *a3 > v15)
          {
            goto LABEL_7;
          }
        }

        v17 = sub_104B730(a1, v9);
        v18 = *(v9 + 16);
        if (v18 == -1 || (v19 = *(v9 + 20), v19 == 0x7FFFFFFF) || *(v9 + 24) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = *(a1 + 3904);
          v12 = v17 >> 6;
          v13 = 1 << v17;
          v14 = *(v11 + 8 * (v17 >> 6));
          if ((v14 & (1 << v17)) == 0)
          {
            v22 = *(a1 + 24) + 32 * v17;
            v23 = *v22;
            v24 = *(v22 + 8);
            if (*v22 != v24)
            {
              do
              {
                v38[0] = 0;
                sub_101F030(a1 + 816, v23, v38);
                sub_105B98C((a1 + 816));
                v23 += 12;
              }

              while (v23 != v24);
              v11 = *(a1 + 3904);
              v14 = *(v11 + 8 * v12);
            }

            *(v11 + 8 * v12) = v14 | v13;
          }

          ++*(a1 + 3936);
          goto LABEL_7;
        }

        if (*(a1 + 3049) == 1 && ((v20 = *(a1 + 1044), v20 == 0x7FFFFFFF) || v19 + a3[1] <= v20))
        {
          v21 = v17;
          if (!*(*(a1 + 3880) + 40 * v17 + 32))
          {
            v25.n128_f64[0] = sub_104BAFC(*(a1 + 3032), *v9, v38);
            v26 = v39;
            if (!v39)
            {
              v29 = *(a1 + 3904);
              v30 = v21 >> 6;
              v31 = 1 << v21;
              v32 = *(v29 + 8 * (v21 >> 6));
              if ((v32 & (1 << v21)) == 0)
              {
                v33 = *(a1 + 24) + 32 * v21;
                v35 = *v33;
                v34 = *(v33 + 8);
                if (*v33 != v34)
                {
                  do
                  {
                    LODWORD(v37) = 0;
                    sub_101F030(a1 + 816, v35, &v37);
                    sub_105B98C((a1 + 816));
                    v35 += 12;
                  }

                  while (v35 != v34);
                  v29 = *(a1 + 3904);
                  v31 = 1 << v21;
                  v30 = v21 >> 6;
                  v32 = *(v29 + 8 * (v21 >> 6));
                }

                *(v29 + 8 * v30) = v32 | v31;
              }

              ++*(a1 + 3928);
              goto LABEL_37;
            }

            v27 = *(*(a1 + 3880) + 40 * v21 + 32);
            if (v27 == -1)
            {
              if (v39 == -1)
              {
                goto LABEL_37;
              }
            }

            else if (v39 == -1)
            {
              v28 = *(a1 + 3880) + 40 * v21;
              (off_2674F98[v27])(&v37, v25.n128_f64[0]);
              *(v28 + 32) = -1;
LABEL_37:
              if (v39 != -1)
              {
                (off_2674F98[v39])(&v37, v38);
              }

              if (!v26)
              {
                goto LABEL_7;
              }

              v18 = *(v9 + 16);
              v19 = *(v9 + 20);
              goto LABEL_41;
            }

            v37 = *(a1 + 3880) + 40 * v21;
            (off_2674FB0[v39])(&v37, v25);
            goto LABEL_37;
          }
        }

        else
        {
          v21 = v17;
        }

LABEL_41:
        *v38 = (v18 + *a3) | ((v19 + a3[1]) << 32);
        sub_104BD90(a1, a2, v38, v21, v36, *(v9 + 8), 0, 1);
LABEL_7:
        v9 += 32;
      }

      while (v9 != v10);
    }

    return *(*(a1 + 3032) + 204);
  }

  return result;
}

void sub_104AD40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_104AD7C(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int *a4, uint64_t a5, unsigned int *a6)
{
  v6 = *a6;
  if (v6)
  {
    v7 = a5;
    do
    {
      v12 = *(a1 + 8);
      v13 = *a2;
      LODWORD(v20) = v6;
      if (sub_101F374(*v12, v13 & 0xFFFFFFFFFFFFFFFLL, &v20))
      {
        v14 = *(a1 + 8);
        v15 = *a2;
        v21 = v6;
        v16 = sub_101F854(*v14, v15 & 0xFFFFFFFFFFFFFFFLL, (v15 & 0x1000000000000000) == 0, &v21);
        v20 = v16;
        if (v16)
        {
          v17 = v16 >= 0xFFFFFFFF00000000;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          v18 = *(a1 + 20);
          if (v18 != -1 && v6 == v18)
          {
            return 0xFFFFFFFFLL;
          }
        }

        else if (sub_10550EC(a1 + 1064, &v20) == -1 && sub_10550EC(*(a1 + 976) + 800, &v20) == -1)
        {
          if (*(a1 + 3048) == 1 && v6 < *(*(a1 + 3032) + 200))
          {
            return 0;
          }

          if (*(*a1 + 1473) != 1 || !sub_1063C18(*a1 + 240, v20, a3, *a4, v7))
          {
            return v6;
          }
        }
      }

      v6 = (v6 - 1);
    }

    while (v6);
  }

  return v6;
}

void *sub_104AED8(void *a1, unsigned int *a2, int *a3, int a4)
{
  v58 = a1;
  if (*(a1 + 3048) == 1)
  {
    sub_104C2AC(a1, a2);
    a1 = v58;
  }

  result = sub_105C338(a1[122] + 24, a2, &v60);
  if (v60)
  {
    sub_105C338(v58[122] + 24, a2, &v60);
    result = v58;
    v6 = *(*(&v61 + 1) + 8);
    v54 = *(*(&v61 + 1) + 16);
    if (v6 != v54)
    {
      __asm { FMOV            V0.2D, #1.0 }

      v57 = _Q0;
      while (1)
      {
        v56 = v6;
        v11 = (*result[122] + 32 * *v6);
        v12 = -1431655765 * ((v11[1] - *v11) >> 5);
        if (v12)
        {
          break;
        }

LABEL_6:
        v6 = v56 + 1;
        if (v56 + 1 == v54)
        {
          return result;
        }
      }

      v13 = 0;
      while (1)
      {
        v14 = (*v11 + 96 * v13);
        v15 = *a2;
        if (*v14 != v15)
        {
          goto LABEL_10;
        }

        v16 = v14[1];
        if (v16 != a2[1])
        {
          goto LABEL_10;
        }

        v17 = *result;
        v18 = v14[2];
        v19 = result[371];
        if (*(*result + 1474) == 1)
        {
          v20 = v16 & 0xFFFFFFF | (((v16 >> 28) & 3) << 29) | (((v16 & 0x60000000) == 0x40000000) << 31);
          v21 = *(v17 + 1536) - 1;
          v22 = 0x2127599BF4325C37 * (((v20 >> 29) & 2 | (v20 >> 31) | (v20 >> 27) & 4 | (v15 << 32) | (8 * (v20 & 0xFFFFFFF))) ^ (((v15 << 32) | (8 * (v20 & 0xFFFFFFF))) >> 23));
          v23 = *(v17 + 1552);
          v24 = *(v17 + 1544);
          v25 = *(v17 + 1548);
          v26 = (v22 ^ (v22 >> 47)) & v21;
          v28 = *(v23 + 8 * v26);
          v27 = *(v23 + 8 * v26 + 4);
          if (v24 != v28 || v25 != v27)
          {
            if (*(v17 + 1520))
            {
              v30 = 1;
              while (*(v17 + 1512) == v28 && *(v17 + 1516) == v27 || v28 != v15 || v27 != v20)
              {
                v26 = (v26 + v30) & v21;
                v28 = *(v23 + 8 * v26);
                v27 = *(v23 + 8 * v26 + 4);
                ++v30;
                if (v24 == v28 && v25 == v27)
                {
                  goto LABEL_37;
                }
              }
            }

            else
            {
              v32 = 1;
              while (v28 != v15 || v27 != v20)
              {
                v26 = (v26 + v32) & v21;
                v28 = *(v23 + 8 * v26);
                v27 = *(v23 + 8 * v26 + 4);
                ++v32;
                if (v24 == v28 && v25 == v27)
                {
                  goto LABEL_37;
                }
              }
            }

            if (v26 != -1)
            {
              goto LABEL_10;
            }
          }
        }

LABEL_37:
        sub_F92868((v17 + 8), *a2 | ((HIDWORD(*a2) & 0xFFFFFFF | (*a2 >> 31) & 0x60000000 | (((*a2 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v59);
        v60 = 0u;
        v61 = 0u;
        v62 = v57;
        v63 = 0x3FF0000000000000;
        v64 = 1;
        sub_10B9C08((v17 + 192), &v60, v59, v18, v19);
        if ((v64 & 1) == 0)
        {
          goto LABEL_9;
        }

        LODWORD(v34) = v60;
        v35 = *&v62 * v34;
        if (v35 >= 0.0)
        {
          result = v58;
          if (v35 >= 4.50359963e15)
          {
            goto LABEL_44;
          }

          v36 = (v35 + v35) + 1;
        }

        else
        {
          result = v58;
          if (v35 <= -4.50359963e15)
          {
            goto LABEL_44;
          }

          v36 = (v35 + v35) - 1 + (((v35 + v35) - 1) >> 63);
        }

        v35 = (v36 >> 1);
LABEL_44:
        v37 = *(&v62 + 1) * SDWORD1(v60);
        if (v37 >= 0.0)
        {
          if (v37 >= 4.50359963e15)
          {
            goto LABEL_50;
          }

          v38 = (v37 + v37) + 1;
        }

        else
        {
          if (v37 <= -4.50359963e15)
          {
            goto LABEL_50;
          }

          v38 = (v37 + v37) - 1 + (((v37 + v37) - 1) >> 63);
        }

        v37 = (v38 >> 1);
LABEL_50:
        v39 = v61 + v35;
        v40 = DWORD1(v61) + v37;
        if (v39 == -1 || v40 == 0x7FFFFFFF)
        {
          goto LABEL_10;
        }

        v43 = *a3;
        v42 = a3[1];
        v44 = *result;
        v45 = result[371];
        v60 = 0u;
        v61 = 0u;
        v62 = v57;
        v63 = 0x3FF0000000000000;
        v64 = 1;
        sub_10B9770((v44 + 192), &v60, v14, (v14 + 2), v45, 1, 1);
        if (v64)
        {
          LODWORD(v46) = v60;
          v47 = *&v62 * v46;
          if (v47 >= 0.0)
          {
            result = v58;
            if (v47 < 4.50359963e15)
            {
              v48 = (v47 + v47) + 1;
LABEL_60:
              v47 = (v48 >> 1);
            }
          }

          else
          {
            result = v58;
            if (v47 > -4.50359963e15)
            {
              v48 = (v47 + v47) - 1 + (((v47 + v47) - 1) >> 63);
              goto LABEL_60;
            }
          }

          v49 = *(&v62 + 1) * SDWORD1(v60);
          if (v49 >= 0.0)
          {
            if (v49 < 4.50359963e15)
            {
              v50 = (v49 + v49) + 1;
LABEL_66:
              v49 = (v50 >> 1);
            }
          }

          else if (v49 > -4.50359963e15)
          {
            v50 = (v49 + v49) - 1 + (((v49 + v49) - 1) >> 63);
            goto LABEL_66;
          }

          v51 = v61 + v47;
          if (v51 != -1)
          {
            v52 = DWORD1(v61) + v49;
            if (v52 != 0x7FFFFFFF)
            {
              *&v60 = (v39 + v43 + v51) | ((v40 + v42 + v52) << 32);
              sub_104BD90(result, a2, &v60, *v56, a4, v13, 0, 0);
              result = v58;
            }
          }

          goto LABEL_10;
        }

LABEL_9:
        result = v58;
LABEL_10:
        if (++v13 == v12)
        {
          goto LABEL_6;
        }
      }
    }
  }

  return result;
}

unint64_t sub_104B508(uint64_t a1, int **a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  if (*(a1 + 1474) != 1 || (v9 = a4, sub_100A224((a1 + 1560), a2) == -1) && ((v10 = a2[4], v11 = HIDWORD(v10) & 0x40000000, v10 < 0) ? (_ZF = v11 == 0) : (_ZF = 0), !_ZF ? (v13 = 0) : (v13 = 0x40000000), *&v25 = v10 | ((HIDWORD(v10) & 0x6FFFFFFF | (((v13 | (v11 >> 1)) == 0x40000000) << 31)) << 32), v14 = sub_100B6E4(a1 + 1480, &v25), a4 = v9, v14 == -1))
  {
    v17 = *a4;
    v25 = 0u;
    v26 = 0u;
    __asm { FMOV            V0.2D, #1.0 }

    v27 = _Q0;
    v28 = 0x3FF0000000000000;
    v29 = 1;
    sub_10BC914((a1 + 192), &v25, a2, 0x3B9ACA00u, a3, v17, a5);
    if (v29 == 1)
    {
      v23 = sub_F8634C(&v25, &v27, v22);
      v16 = (v26 + v23) | ((DWORD1(v26) + HIDWORD(v23)) << 32);
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v15 = v16 & 0xFFFFFFFF00000000;
    v16 = v16;
  }

  else
  {
    v15 = 0x7FFFFFFF00000000;
    v16 = 0xFFFFFFFFLL;
  }

  return v15 | v16;
}

void *sub_104B668(uint64_t a1, unint64_t a2)
{
  LODWORD(v9[0]) = *(a1 + 200);
  v4 = sub_101F854(*(a1 + 24), a2 & 0xFFFFFFFFFFFFFFFLL, (a2 & 0x1000000000000000) == 0, v9);
  v11 = v4;
  if (v4)
  {
    v5 = v4 > 0xFFFFFFFEFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v9[0] = 0;
  v9[1] = 0;
  v10 = sub_105BD90(*(a1 + 32), a2, v4);
  if (v10 == 0xFFFF)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = (a1 + 280);
  sub_1055C88(v6, &v11, &v10, v7);
  return v7;
}

uint64_t sub_104B730(uint64_t *a1, uint64_t **a2)
{
  sub_1034760((a1 + 386), a2, v43);
  if (v43[0])
  {
    return v43[3][1];
  }

  v5 = a1[4];
  v6 = a1[3];
  v7 = a1[379];
  v44 = *a2;
  sub_105733C(*(v7 + 8), &v44, (v7 + 232));
  sub_1016868(v7 + 40, (v7 + 232), *(v7 + 208), 0, &__p);
  v44 = a1;
  sub_104A234((a1 + 3), &__p, 0, &v44);
  v4 = (v5 - v6) >> 5;
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  sub_105772C((a1 + 386), a2, &__p);
  v8 = __p;
  if (v42 == 1)
  {
    v9 = (*(__p + 1) + 16 * v41);
    *v9 = *a2;
    v9[1] = -1;
  }

  *(v8[1] + 16 * v41 + 8) = v4;
  v10 = a1[483];
  v11 = a1[484];
  if (v10 >= v11)
  {
    v13 = a1[482];
    v14 = v10 - v13;
    v15 = (v10 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      sub_1794();
    }

    v17 = v11 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (!(v18 >> 61))
      {
        operator new();
      }

      goto LABEL_49;
    }

    v19 = v15;
    v20 = (8 * v15);
    v21 = *a2;
    v22 = &v20[-v19];
    *v20 = v21;
    v12 = (v20 + 1);
    memcpy(v22, v13, v14);
    a1[482] = v22;
    a1[483] = v12;
    a1[484] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v10 = *a2;
    v12 = (v10 + 8);
  }

  a1[483] = v12;
  v23 = a1[489];
  v24 = a1[490];
  if (v23 == v24 << 6)
  {
    if ((v23 + 1) < 0)
    {
      sub_1794();
    }

    v25 = v24 << 7;
    if (v25 <= (v23 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v25 = (v23 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v23 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_3D41C((a1 + 488), v26);
    v23 = a1[489];
  }

  a1[489] = v23 + 1;
  *(a1[488] + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v23);
  v27 = a1[486];
  if (v27 >= a1[487])
  {
    v28 = sub_1053300((a1 + 485));
  }

  else
  {
    *(v27 + 32) = 0;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    v28 = v27 + 40;
  }

  a1[486] = v28;
  v29 = a1[117];
  v30 = a1[116];
  v31 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 3);
  if (v4 >= v31)
  {
    v32 = a1[118];
    if (v29 < v32)
    {
      *v29 = xmmword_2297C00;
      *(v29 + 16) = 0;
      v33 = v29 + 24;
LABEL_45:
      a1[117] = v33;
      return v4;
    }

    v34 = v31 + 1;
    if (v31 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v35 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v30) >> 3);
    if (2 * v35 > v34)
    {
      v34 = 2 * v35;
    }

    if (v35 >= 0x555555555555555)
    {
      v36 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v36 = v34;
    }

    if (!v36)
    {
      v37 = 8 * ((v29 - v30) >> 3);
      *v37 = xmmword_2297C00;
      *(v37 + 16) = 0;
      v33 = v37 + 24;
      v38 = (v37 - (v29 - v30));
      memcpy(v38, v30, v29 - v30);
      a1[116] = v38;
      a1[117] = v33;
      a1[118] = 0;
      if (v30)
      {
        operator delete(v30);
      }

      goto LABEL_45;
    }

    if (v36 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_49:
    sub_1808();
  }

  return v4;
}

void sub_104BAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_104BAFC@<D0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 225) != 1)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 8);
  if (*(v4 + 3880))
  {
    goto LABEL_3;
  }

  v16 = a1;
  v17 = a2;
  v18 = sub_3BF72C(v4 + 8, a2, 1);
  v5 = v18;
  if (v18)
  {
    v19 = &v18[-*v18];
    a1 = v16;
    if (*v19 < 7u)
    {
      v5 = 0;
      a2 = v17;
    }

    else
    {
      a2 = v17;
      if (!*(v19 + 3) || (v20 = (v5 + *(v19 + 3) + *(v5 + *(v19 + 3))), *v20 <= HIDWORD(v17)))
      {
LABEL_3:
        v5 = 0;
        goto LABEL_4;
      }

      v5 = (&v20[(v17 >> 32) + 1] + v20[(v17 >> 32) + 1]);
    }
  }

  else
  {
    a2 = v17;
    a1 = v16;
  }

LABEL_4:
  v6 = (v5 - *v5);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    v9 = (v8 - *v8);
    v10 = *v9;
    if (v10 < 5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = (&loc_1120530 + 1);
    v10 = *(&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) < 5u)
    {
      goto LABEL_17;
    }
  }

  v11 = v9[2];
  if (v9[2])
  {
    v11 += v8 + *(v8 + v11);
  }

  if (v10 >= 9)
  {
    v12 = v9[4];
    if (v12 && v11 != 0)
    {
      v21 = (v8 + v12);
      v22 = *v21;
      *a3 = v11;
      *(a3 + 8) = v21 + v22;
      *&result = 0xFFFFFFFFLL;
      *(a3 + 16) = 0xFFFFFFFFLL;
      *(a3 + 24) = -1;
      *(a3 + 32) = 2;
      return result;
    }
  }

LABEL_17:
  sub_105C1B4(a1, a2, &v24);
  if (!v24)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v15 = v25;
    if (!v25)
    {
      return result;
    }

    goto LABEL_23;
  }

  v14 = v25;
  *a3 = v24;
  *(a3 + 8) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a3 + 32) = 1;
  v15 = v25;
  if (v25)
  {
LABEL_23:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  return result;
}

uint64_t sub_104BD34(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_2674F98[v2])(&v4, a1);
  }

  *(a1 + 32) = -1;
  return a1;
}

void sub_104BD90(uint64_t a1, void *a2, unsigned int *a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v41 = a4;
  v8 = *(a1 + 1040);
  v9 = *a3;
  if (v8 != -1 && v9 > v8)
  {
    return;
  }

  v12 = (*(a1 + 928) + 24 * a4);
  if (*v12)
  {
    v13 = v12[2];
    v14 = v9 >= v13;
    if (v9 == v13)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  v39 = a3;
  v15 = a2;
  v16 = a6;
  v17 = a8;
  v18 = a5;
  v19 = a7;
  sub_2512DC(a1 + 952, &v41);
  a2 = v15;
  a7 = v19;
  a5 = v18;
  a8 = v17;
  a6 = v16;
  if (*(a1 + 3048) == 1)
  {
    v20 = *(a1 + 3072);
    v21 = *(a1 + 3080);
    if (v20 >= v21)
    {
      v23 = *(a1 + 3064);
      v24 = v20 - v23;
      v25 = (v20 - v23) >> 2;
      v26 = v25 + 1;
      if ((v25 + 1) >> 62)
      {
        sub_1794();
      }

      v27 = v21 - v23;
      if (v27 >> 1 > v26)
      {
        v26 = v27 >> 1;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v28 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        if (!(v28 >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      v29 = v25;
      v30 = (4 * v25);
      v31 = &v30[-v29];
      *v30 = v41;
      v22 = v30 + 1;
      memcpy(v31, v23, v24);
      *(a1 + 3064) = v31;
      *(a1 + 3072) = v22;
      *(a1 + 3080) = 0;
      if (v23)
      {
        operator delete(v23);
      }

      a6 = v16;
      a8 = v17;
      a5 = v18;
      a7 = v19;
      a2 = v15;
    }

    else
    {
      *v20 = v41;
      v22 = v20 + 4;
    }

    *(a1 + 3072) = v22;
  }

  a3 = v39;
  if (*v12)
  {
    v32 = v12[2];
    v14 = *v39 >= v32;
    if (*v39 == v32)
    {
LABEL_7:
      if (a3[1] >= v12[3])
      {
        return;
      }

      goto LABEL_28;
    }

LABEL_27:
    if (v14)
    {
      return;
    }
  }

LABEL_28:
  *(v12 + 1) = *a3;
  *v12 = *a2;
  if (a7)
  {
    v33 = 0x40000000;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33 & 0xC0000000 | a5 & 0x3FFFFFFF;
  if (a8)
  {
    v35 = 0x80000000;
  }

  else
  {
    v35 = 0;
  }

  v12[4] = a6;
  v12[5] = v34 | v35;
  if ((*(a1 + 3048) & 1) == 0)
  {
    v40 = *a3;
    v36 = *(a1 + 1008);
    if (v41 >= ((*(a1 + 1016) - v36) >> 2) || *(v36 + 4 * v41) == -1)
    {
      sub_1057090((a1 + 984), v41, &v40);
    }

    else
    {
      sub_1057208((a1 + 984), v41, &v40);
    }

    if ((*(*(a1 + 976) + 8) - **(a1 + 976)) >> 5 == (*(a1 + 960) - *(a1 + 952)) >> 3)
    {
      v37 = *(a1 + 1040);
      v38 = *(*(a1 + 984) + 4);
      if (v37 == -1 || v38 < v37)
      {
        *(a1 + 1040) = v38;
      }
    }
  }
}

uint64_t sub_104C048(uint64_t a1, unsigned int *a2, __int128 *a3)
{
  sub_40F508(a1, a2, &v32);
  if (v32)
  {
    v6 = v33;
    v7 = *(a1 + 768) + 80 * *(v33 + 8);
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
    *v8 = *a3;
    v19 = a3[1];
    v20 = a3[2];
    v21 = a3[3];
    *(v8 + 64) = *(a3 + 16);
    *(v8 + 32) = v20;
    *(v8 + 48) = v21;
    *(v8 + 16) = v19;
    v22 = *(v6 + 8);
    v23 = a1 + 824;
  }

  else
  {
    ++*(a1 + 816);
    v12 = -858993459 * ((*(a1 + 776) - *(a1 + 768)) >> 4);
    sub_40F660(a1, a2, v34);
    *(v35 + 8) = v12;
    v13 = *(a1 + 776);
    v14 = *(a1 + 784);
    if (v13 >= v14)
    {
      v24 = *(a1 + 768);
      v25 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v24) >> 4) + 1;
      if (v25 > 0x333333333333333)
      {
        sub_1794();
      }

      v26 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - v24) >> 4);
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0x199999999999999)
      {
        v27 = 0x333333333333333;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        if (v27 <= 0x333333333333333)
        {
          operator new();
        }

        sub_1808();
      }

      v28 = *a3;
      v29 = 16 * ((v13 - v24) >> 4);
      *(v29 + 24) = a3[1];
      v30 = a3[3];
      *(v29 + 40) = a3[2];
      *(v29 + 56) = v30;
      *v29 = *a2;
      *(v29 + 72) = *(a3 + 8);
      *(v29 + 8) = v28;
      v18 = v29 + 80;
      v31 = (v29 - (v13 - v24));
      memcpy(v31, v24, v13 - v24);
      *(a1 + 768) = v31;
      *(a1 + 776) = v18;
      *(a1 + 784) = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v13 = *a2;
      *(v13 + 8) = *a3;
      v15 = a3[1];
      v16 = a3[2];
      v17 = a3[3];
      *(v13 + 72) = *(a3 + 8);
      *(v13 + 56) = v17;
      *(v13 + 40) = v16;
      *(v13 + 24) = v15;
      v18 = v13 + 80;
    }

    *(a1 + 776) = v18;
    v23 = a1 + 824;
    v22 = v12;
  }

  sub_1056B88(v23, v22, a3);
  return 1;
}

void sub_104C2AC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[379];
  v5 = *a2;
  sub_105C4B0(v2[1], &v5, v2 + 32);
  v4 = v2[32];
  v3 = v2[33];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_104C36C(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 8) = a2 + 224;
  *(a1 + 16) = -1;
  sub_1045600(a1 + 24, a2);
  *(a1 + 944) = 0;
  *(a1 + 928) = 0u;
  operator new();
}

void sub_104C640(_Unwind_Exception *a1)
{
  sub_360988(v1 + 2080);
  sub_584EC4((v1 + 1200));
  v5 = *(v1 + 1168);
  if (v5)
  {
    *(v1 + 1176) = v5;
    operator delete(v5);
  }

  sub_102E120((v1 + 1056));
  sub_21DB4B4(v1 + 984);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 960) = v6;
    operator delete(v6);
    v7 = *v2;
    if (!*v2)
    {
LABEL_5:
      sub_C65AF0((v1 + 24));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v7 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }
  }

  *(v1 + 936) = v7;
  operator delete(v7);
  sub_C65AF0((v1 + 24));
  _Unwind_Resume(a1);
}

double sub_104C798(uint64_t a1)
{
  v2 = a1 + 2080;
  v3 = 768;
  do
  {
    if (*(v2 + 16))
    {
      v4 = *(v2 + 24);
      if (v4 >= 0x80)
      {
        operator delete(*v2);
        *(v2 + 40) = 0;
        *v2 = &unk_2290750;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      else if (v4)
      {
        *(v2 + 16) = 0;
        memset(*v2, 128, v4 + 8);
        *(*v2 + v4) = -1;
        v5 = *(v2 + 24);
        if (v5 == 7)
        {
          v6 = 6;
        }

        else
        {
          v6 = v5 - (v5 >> 3);
        }

        *(v2 + 40) = v6 - *(v2 + 16);
      }
    }

    v2 += 48;
    v3 -= 48;
  }

  while (v3);
  v7 = a1 + 1200;
  *(a1 + 2056) = *(a1 + 2048);
  *(a1 + 2032) = *(a1 + 2024);
  *(a1 + 2072) = 0;
  *(a1 + 1976) = *(a1 + 1968);
  v8 = 768;
  do
  {
    if (*(v7 + 16))
    {
      v9 = *(v7 + 24);
      if (v9 >= 0x80)
      {
        operator delete(*v7);
        *(v7 + 40) = 0;
        *v7 = &unk_2290750;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
      }

      else if (v9)
      {
        *(v7 + 16) = 0;
        memset(*v7, 128, v9 + 8);
        *(*v7 + v9) = -1;
        v10 = *(v7 + 24);
        if (v10 == 7)
        {
          v11 = 6;
        }

        else
        {
          v11 = v10 - (v10 >> 3);
        }

        *(v7 + 40) = v11 - *(v7 + 16);
      }
    }

    v7 += 48;
    v8 -= 48;
  }

  while (v8);
  *(a1 + 2000) = *(a1 + 1992);
  *(a1 + 2016) = 0;
  *(a1 + 1016) = *(a1 + 1008);
  *(a1 + 992) = *(a1 + 984);
  *(a1 + 1032) = 0;
  *(a1 + 1040) = -NAN;
  *(a1 + 20) = -1;
  *(a1 + 1048) = 0;
  sub_1053AC0(a1 + 1064);
  sub_1053AC0(a1 + 2856);
  *(a1 + 1176) = *(a1 + 1168);
  v12 = *(a1 + 952);
  v13 = *(a1 + 960);
  if (v12 != v13)
  {
    do
    {
      v14 = *v12++;
      v15 = *(a1 + 928) + 24 * v14;
      *v15 = 0;
      *(v15 + 8) = xmmword_2297C80;
    }

    while (v12 != v13);
    v12 = *(a1 + 952);
  }

  *(a1 + 960) = v12;
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  if (v16 != v17)
  {
    v18 = *(a1 + 32);
    do
    {
      v20 = *(v18 - 32);
      v18 -= 32;
      v19 = v20;
      if (v20)
      {
        *(v16 - 24) = v19;
        operator delete(v19);
      }

      v16 = v18;
    }

    while (v18 != v17);
  }

  *(a1 + 32) = v17;
  sub_3068EC(a1 + 48);
  sub_1053AC0(a1 + 824);
  *(a1 + 2960) = 0x7FFFFFFF;
  *(a1 + 3048) = 0;
  v21 = a1 + 3088;
  v22 = 768;
  do
  {
    if (*(v21 + 16))
    {
      v23 = *(v21 + 24);
      if (v23 >= 0x80)
      {
        operator delete(*v21);
        *(v21 + 40) = 0;
        *v21 = &unk_2290750;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
      }

      else if (v23)
      {
        *(v21 + 16) = 0;
        memset(*v21, 128, v23 + 8);
        *(*v21 + v23) = -1;
        v24 = *(v21 + 24);
        if (v24 == 7)
        {
          v25 = 6;
        }

        else
        {
          v25 = v24 - (v24 >> 3);
        }

        *(v21 + 40) = v25 - *(v21 + 16);
      }
    }

    v21 += 48;
    v22 -= 48;
  }

  while (v22);
  *(a1 + 3864) = *(a1 + 3856);
  v26 = *(a1 + 3888);
  v27 = *(a1 + 3880);
  if (v26 != v27)
  {
    do
    {
      v28 = v26 - 40;
      v29 = *(v26 - 8);
      if (v29 != -1)
      {
        (off_2674F98[v29])(&v31, v26 - 40);
      }

      *(v26 - 8) = -1;
      v26 -= 40;
    }

    while (v28 != v27);
  }

  *(a1 + 3888) = v27;
  *(a1 + 3912) = 0;
  result = 0.0;
  *(a1 + 3928) = 0u;
  return result;
}

void sub_104CAE0(int32x2_t *a1)
{
  v84 = 0;
  __p = 0;
  v82 = 0;
  v83 = 0;
  v2 = *a1;
  v3 = *(*a1 + 1536);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = 8 * v3;
  v5 = *(*a1 + 1552);
  while (1)
  {
    v6 = *(v5 + 4);
    if (*(*&v2 + 1544) != *v5 || *(*&v2 + 1548) != v6)
    {
      if (!*(*&v2 + 1520))
      {
        break;
      }

      if (*(*&v2 + 1512) != *v5 || *(*&v2 + 1516) != v6)
      {
        break;
      }
    }

    v5 += 8;
    v4 -= 8;
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  v9 = *(*a1 + 1552) + 8 * v3;
  if (v5 == v9)
  {
LABEL_14:
    v10 = *(*&v2 + 1792);
    v11 = *(*&v2 + 1696);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_87:
    v13 = v10;
    goto LABEL_88;
  }

  v15 = 0;
  v16 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v78 = _Q0;
  do
  {
    v21 = HIDWORD(*v5) & 0x40000000;
    v22 = *v5 < 0 && v21 == 0;
    v23 = (*v5 >> 33) & 0x10000000 | HIDWORD(*v5) & 0xFFFFFFF;
    if (v22)
    {
      v24 = 0x40000000;
    }

    else
    {
      v24 = 0;
    }

    LODWORD(v80) = *v5;
    HIDWORD(v80) = v23 | (v21 >> 1) | v24;
    if (v84 && ((v25 = *a1, v26 = a1[371], sub_F92868((*a1 + 8), *v5, v85), v86 = 0u, v87 = 0u, v88 = v78, v89 = 0x3FF0000000000000, v90 = 1, sub_10B9C08((*&v25 + 192), &v86, v85, 0x3B9ACA00u, v26), (v90 & 1) == 0) || (v28 = sub_F8634C(&v86, &v88, v27), v87 + v28 == -1) || DWORD1(v87) + HIDWORD(v28) == 0x7FFFFFFF || *(&v87 + 1) + v29 == 0x7FFFFFFFFFFFFFFFLL))
    {
      __src = v16;
      v30 = sub_101E508(*&a1[1]);
      if (v30 - 1 <= v84 || (v31 = *a1, v32 = a1[371], v33 = a1[370].i8[4], LODWORD(v86) = v30 - 1, v34 = sub_101F854(*(*&v31 + 224), v80 & 0xFFFFFFFFFFFFFFFLL, (v80 & 0x1000000000000000) == 0, &v86), (sub_1063C18(*&v31 + 240, v34, v32, a1[370].i32[0], v33) & 1) != 0) || (LODWORD(v86) = v30 - 1, v35 = sub_101F854(*(*&v31 + 224), v80 & 0xFFFFFFFFFFFFFFFLL, (v80 & 0x1000000000000000) != 0, &v86), (sub_1063C18(*&v31 + 240, v35, v32, a1[370].i32[0], v33) & 1) != 0))
      {
        sub_101F030(&a1[132], &v80, &v84);
        sub_105B98C(a1 + 132);
        LODWORD(v86) = v84 - 1;
        sub_101F030(&a1[356], &v80, &v86);
        sub_105B98C(a1 + 356);
        v36 = a1[1];
        LODWORD(v86) = v84;
        v37 = sub_101F854(*v36, v80 & 0xFFFFFFFFFFFFFFFLL, (v80 & 0x1000000000000000) == 0, &v86);
        v16 = __src;
        if (__src == v15 || v15[-1].i64[1] != v37)
        {
          if (v15 >= v83)
          {
            v38 = v15 - __src;
            v39 = (v15 - __src) >> 3;
            v40 = v39 + 1;
            if ((v39 + 1) >> 61)
            {
              sub_1794();
            }

            v41 = v83 - __src;
            if ((v83 - __src) >> 2 > v40)
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

            if (v42)
            {
              if (!(v42 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v39) = v37;
            v15 = (8 * v39 + 8);
            memcpy(0, __src, v38);
            __p = 0;
            v82 = v15;
            v83 = 0;
            v16 = 0;
          }

          else
          {
            v15->i64[0] = v37;
            v15 = (v15 + 8);
          }

          v82 = v15;
        }

        v43 = a1[1];
        LODWORD(v86) = v84;
        v44 = sub_101F854(*v43, v80 & 0xFFFFFFFFFFFFFFFLL, (v80 & 0x1000000000000000) != 0, &v86);
        if (v15[-1].i64[1] != v44)
        {
          if (v15 >= v83)
          {
            v45 = v15 - v16;
            v46 = (v15 - v16) >> 3;
            v47 = v46 + 1;
            if ((v46 + 1) >> 61)
            {
              sub_1794();
            }

            v48 = v83 - v16;
            if ((v83 - v16) >> 2 > v47)
            {
              v47 = v48 >> 2;
            }

            if (v48 >= 0x7FFFFFFFFFFFFFF8)
            {
              v49 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v49 = v47;
            }

            if (v49)
            {
              if (!(v49 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v46) = v44;
            v15 = (8 * v46 + 8);
            memcpy(0, v16, v45);
            __p = 0;
            v82 = v15;
            v83 = 0;
            v16 = 0;
          }

          else
          {
            v15->i64[0] = v44;
            v15 = (v15 + 8);
          }

          v82 = v15;
        }
      }

      else
      {
        LODWORD(v86) = v30 - 2;
        sub_101F030(&a1[356], &v80, &v86);
        v16 = __src;
        sub_105B98C(a1 + 356);
      }
    }

    else
    {
      LODWORD(v86) = 0;
      sub_101F030(&a1[132], &v80, &v86);
      sub_105B98C(a1 + 132);
    }

    for (v5 += 8; v5 != v9; v5 += 8)
    {
      v50 = *(v5 + 4);
      if (*(*&v2 + 1544) != *v5 || *(*&v2 + 1548) != v50)
      {
        if (!*(*&v2 + 1520))
        {
          break;
        }

        if (*(*&v2 + 1512) != *v5 || *(*&v2 + 1516) != v50)
        {
          break;
        }
      }
    }
  }

  while (v5 != v9);
  v2 = *a1;
  v10 = *(*a1 + 1792);
  v11 = *(*a1 + 1696);
  if (!v11)
  {
    goto LABEL_87;
  }

LABEL_15:
  v12 = 88 * v11;
  v13 = v10;
  while (1)
  {
    v14 = v13[4];
    if ((*(*&v2 + 1736) != v14 || *(*&v2 + 1776) != v13[9] || ((v13[10] ^ *(*&v2 + 1784)) & 0x1FFFFFFFFFFFFFFFLL) != 0) && (!*(*&v2 + 1680) || *(*&v2 + 1624) != v14 || *(*&v2 + 1664) != v13[9] || ((v13[10] ^ *(*&v2 + 1672)) & 0x1FFFFFFFFFFFFFFFLL) != 0))
    {
      break;
    }

    v13 += 11;
    v12 -= 88;
    if (!v12)
    {
      goto LABEL_114;
    }
  }

LABEL_88:
  v53 = &v10[11 * v11];
  if (v13 != v53)
  {
    do
    {
      v54 = v13[4];
      v55 = HIDWORD(v54) & 0x40000000;
      if (v54 < 0 && v55 == 0)
      {
        v57 = 0x40000000;
      }

      else
      {
        v57 = 0;
      }

      *&v86 = v13[4] | (((v13[10] >> 25) & 0x80000000 | HIDWORD(v54) & 0xFFFFFFF | (v54 >> 33) & 0x10000000 | (v55 >> 1) | v57) << 32);
      LODWORD(v85[0]) = 0;
      sub_101F030(&a1[132], &v86, v85);
      sub_105B98C(a1 + 132);
      v58 = v13[9];
      v59 = HIDWORD(v58) & 0x40000000;
      if (v58 < 0 && v59 == 0)
      {
        v61 = 0x40000000;
      }

      else
      {
        v61 = 0;
      }

      *&v86 = v13[9] | (((v13[10] >> 26) & 0x80000000 | HIDWORD(v58) & 0xFFFFFFF | (v58 >> 33) & 0x10000000 | (v59 >> 1) | v61) << 32);
      LODWORD(v85[0]) = 0;
      sub_101F030(&a1[132], &v86, v85);
      sub_105B98C(a1 + 132);
      for (v13 += 11; v13 != v53; v13 += 11)
      {
        v62 = v13[4];
        if ((*(*&v2 + 1736) != v62 || *(*&v2 + 1776) != v13[9] || ((v13[10] ^ *(*&v2 + 1784)) & 0x1FFFFFFFFFFFFFFFLL) != 0) && (!*(*&v2 + 1680) || *(*&v2 + 1624) != v62 || *(*&v2 + 1664) != v13[9] || ((v13[10] ^ *(*&v2 + 1672)) & 0x1FFFFFFFFFFFFFFFLL) != 0))
        {
          break;
        }
      }
    }

    while (v13 != v53);
    v2 = *a1;
  }

LABEL_114:
  for (i = *(sub_F931AC(*&v2 + 8) + 16); i; i = *i)
  {
    v64 = i[2];
    v65 = HIDWORD(v64) & 0x40000000;
    if (v64 < 0 && v65 == 0)
    {
      v67 = 0x40000000;
    }

    else
    {
      v67 = 0;
    }

    LODWORD(v86) = i[2];
    DWORD1(v86) = (v64 >> 33) & 0x10000000 | HIDWORD(v64) & 0xFFFFFFF | (v65 >> 1) | v67;
    LODWORD(v85[0]) = 0;
    sub_101F030(&a1[132], &v86, v85);
    sub_105B98C(a1 + 132);
  }

  v69 = __p;
  v68 = v82;
  v70 = 126 - 2 * __clz((v82 - __p) >> 3);
  if (v82 == __p)
  {
    v71 = 0;
  }

  else
  {
    v71 = v70;
  }

  sub_2D31D4(__p, v82, &v86, v71, 1);
  if (v68 == v69)
  {
LABEL_143:
    if (v69 != v68)
    {
      v82 = v69;
    }
  }

  else
  {
    v72 = &v69[-1].i32[2];
    while (v72 + 4 != v68)
    {
      v73 = v72[2];
      v72 += 2;
      LODWORD(v74) = v72[2];
      if (v73 == v74 && v72[1] == v72[3])
      {
        v76 = (v72 + 4);
        if (v72 + 4 != v68)
        {
          do
          {
            if (v74 != v76->i32[0] || v72[1] != v76->i32[1])
            {
              v74 = v76->i64[0];
              *(v72 + 1) = v76->i64[0];
              v72 += 2;
            }

            v76 = (v76 + 8);
          }

          while (v76 != v68);
          v68 = v82;
        }

        v69 = (v72 + 2);
        goto LABEL_143;
      }
    }
  }

  sub_10625E0(*a1 + 240, &__p, *&a1[371], a1[370].i32[0], a1[370].u8[4], 4u);
  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }
}

void sub_104D46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    v16 = a1;
    operator delete(__p);
    a1 = v16;
  }

  _Unwind_Resume(a1);
}

void sub_104D4C0(uint64_t **a1, void *a2)
{
  v2 = a1[147];
  v3 = a1[146];
  v76 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 5);
  if (v76 >> 30)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v72 = sub_2D390(exception, "The source terminal of a query cannot have more than (2^30 - 1) nodes.", 0x46uLL);
  }

  if (v2 != v3)
  {
    v5 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v77 = _Q0;
    do
    {
      v10 = &a1[146][12 * v5];
      v11 = *a1;
      v12 = **a1;
      if (*(v12 + 7774) == 1)
      {
        v14 = *v10;
        v13 = v10[1];
        v15 = sub_2AF704(v12 + 3896, *v10, 1);
        if (!v15)
        {
          goto LABEL_4;
        }

        v16 = &v15[-*v15];
        if (*v16 < 5u)
        {
          goto LABEL_4;
        }

        v17 = *(v16 + 2);
        if (!v17 || *&v15[v17 + *&v15[v17]] <= (v13 & 0xFFFFFFF) || !sub_2B817C(v12, v14 & 0xF0000000FFFFFFFFLL | ((v13 & 0xFFFFFFF) << 32)))
        {
          goto LABEL_4;
        }

        v11 = *a1;
      }

      v18 = a1[371];
      v84 = 0u;
      v85 = 0u;
      v86 = v77;
      v87 = 0x3FF0000000000000;
      LOBYTE(v88) = 1;
      sub_10B9770(v11 + 24, &v84, v10, (v10 + 2), v18, 1, 1);
      if (v88)
      {
        v20 = sub_F8634C(&v84, &v86, v19);
        v21 = v85 + v20;
        if (v85 + v20 != -1)
        {
          v22 = DWORD1(v85) + HIDWORD(v20);
          if (DWORD1(v85) + HIDWORD(v20) != 0x7FFFFFFF)
          {
            v23 = sub_104A508(*a1, v10, v10[2], a1[371], a1 + 740, *(a1 + 2964));
            if (v23 != -1 && HIDWORD(v23) != 0x7FFFFFFF)
            {
              sub_F92948(*a1 + 8, *v10, 1, a1 + 372);
              v25 = -1171354717 * ((a1[373] - a1[372]) >> 3);
              if (v25)
              {
                v26 = 0;
                v27 = 0;
                if (v23 < 0)
                {
                  v28 = -5;
                }

                else
                {
                  v28 = 5;
                }

                v78 = SHIDWORD(v23) / 10 + (((103 * (SHIDWORD(v23) % 10 + v28)) >> 15) & 1) + ((103 * (SHIDWORD(v23) % 10 + v28)) >> 10);
                v74 = v21 + v23;
                v73 = v22 + HIDWORD(v23);
                v29 = 88 * v25;
                while (2)
                {
                  v30 = a1[372];
                  v31 = *(a1 + 740);
                  if (v31 == 0x7FFFFFFF)
                  {
                    v32 = 0x7FFFFFFF;
                  }

                  else
                  {
                    v32 = v78 + v31;
                  }

                  v33 = *a1;
                  v34 = a1[371];
                  v35 = *(a1 + 2964);
                  if (*(*a1 + 1474) == 1)
                  {
                    if (sub_100A224(v33 + 195, &v30[v26 / 8]) != -1)
                    {
                      goto LABEL_24;
                    }

                    v36 = v30[v26 / 8 + 4];
                    v37 = HIDWORD(v36) & 0x40000000;
                    v38 = v36 < 0 && v37 == 0;
                    v39 = v38 ? 0x40000000 : 0;
                    *&v84 = v36 | ((HIDWORD(v36) & 0x6FFFFFFF | (((v39 | (v37 >> 1)) == 0x40000000) << 31)) << 32);
                    if (sub_100B6E4((v33 + 185), &v84) != -1)
                    {
                      goto LABEL_24;
                    }
                  }

                  v84 = 0u;
                  v85 = 0u;
                  v86 = v77;
                  v87 = 0x3FF0000000000000;
                  LOBYTE(v88) = 1;
                  sub_10BC914(v33 + 24, &v84, &v30[v26 / 8], 0x3B9ACA00u, v34, v32, v35);
                  if ((v88 & 1) == 0)
                  {
                    goto LABEL_24;
                  }

                  v41 = sub_F8634C(&v84, &v86, v40);
                  if (v85 + v41 == -1 || DWORD1(v85) + HIDWORD(v41) == 0x7FFFFFFF)
                  {
                    goto LABEL_24;
                  }

                  v42 = &v30[v26 / 8];
                  v43 = v30[v26 / 8 + 10];
                  v44 = v30[v26 / 8 + 4];
                  v45 = HIDWORD(v44) & 0x40000000;
                  if (v44 < 0 && v45 == 0)
                  {
                    v47 = 0x40000000;
                  }

                  else
                  {
                    v47 = 0;
                  }

                  v48 = (v73 + DWORD1(v85) + HIDWORD(v41));
                  v80 = (v74 + v85 + v41) | (v48 << 32);
                  v81 = v44 | ((HIDWORD(v44) & 0xFFFFFFF | (v43 >> 25) & 0x80000000 | (v44 >> 33) & 0x10000000 | (v45 >> 1) | v47) << 32);
                  v49 = *(a1 + 2964);
                  *&v84 = v80;
                  DWORD2(v84) = v32;
                  BYTE12(v84) = v49;
                  v50 = v42[4];
                  v51 = HIDWORD(v50) & 0x40000000;
                  if (v50 < 0 && v51 == 0)
                  {
                    v53 = 0x40000000;
                  }

                  else
                  {
                    v53 = 0;
                  }

                  *&v85 = v42[4] | (((v42[10] >> 25) & 0x80000000 | HIDWORD(v50) & 0xFFFFFFF | (v50 >> 33) & 0x10000000 | (v51 >> 1) | v53) << 32);
                  v54 = v42[9];
                  v55 = HIDWORD(v54) & 0x40000000;
                  if (v54 < 0 && v55 == 0)
                  {
                    v57 = 0x40000000;
                  }

                  else
                  {
                    v57 = 0;
                  }

                  *(&v85 + 1) = v42[9] | (((v42[10] >> 26) & 0x80000000 | HIDWORD(v54) & 0xFFFFFFF | (v54 >> 33) & 0x10000000 | (v55 >> 1) | v57) << 32);
                  *&v86 = v42[10];
                  v88 = v27;
                  v89 = 0;
                  v90 = v5 | 0x80000000;
                  v58 = v42[4];
                  v59 = HIDWORD(v58) & 0x40000000;
                  if (v58 < 0 && v59 == 0)
                  {
                    v61 = 0x40000000;
                  }

                  else
                  {
                    v61 = 0;
                  }

                  v79 = v42[4] | ((HIDWORD(v58) & 0xFFFFFFF | (v42[10] >> 25) & 0x80000000 | (v58 >> 33) & 0x10000000 | (v59 >> 1) | v61) << 32);
                  v62 = *(a1 + 261);
                  if (v62 == 0x7FFFFFFF)
                  {
LABEL_76:
                    sub_104C048((a1 + 150), &v79, &v84);
                    v67 = v42[4];
                    v68 = HIDWORD(v67) & 0x40000000;
                    if (v67 < 0 && v68 == 0)
                    {
                      v70 = 0x40000000;
                    }

                    else
                    {
                      v70 = 0;
                    }

                    v82[0] = (v42[4] | ((HIDWORD(v67) & 0xFFFFFFF | (v42[10] >> 25) & 0x80000000 | (v67 >> 33) & 0x10000000 | (v68 >> 1) | v70) << 32));
                    LODWORD(v79) = 0;
                    sub_101F030((a1 + 132), v82, &v79);
                    sub_105A9CC(a1 + 132, a2);
                    sub_105B98C(a1 + 132);
                    sub_10508D4(a1, &v81, &v80, v5);
LABEL_24:
                    ++v27;
                    v26 += 88;
                    if (v29 == v26)
                    {
                      goto LABEL_4;
                    }

                    continue;
                  }

                  break;
                }

                sub_105A854((a1 + 150), &v79, v82);
                if (v82[0])
                {
                  sub_105A854((a1 + 150), &v79, v82);
                  v63 = a1[246][10 * *(v83 + 8) + 1];
                  if (v84 == v63)
                  {
                    if (SDWORD1(v84) >= SHIDWORD(v63))
                    {
                      goto LABEL_76;
                    }
                  }

                  else if (v84 >= v63)
                  {
                    goto LABEL_76;
                  }

                  sub_105A854((a1 + 150), &v79, v82);
                  v64 = HIDWORD(a1[246][10 * *(v83 + 8) + 1]);
                  v65 = *(a1 + 261);
                  if (v65 >= v64 && v48 > v62)
                  {
                    v66 = -1;
LABEL_75:
                    *(a1 + 262) += v66;
                    goto LABEL_76;
                  }

                  if (v65 >= v64)
                  {
                    goto LABEL_76;
                  }
                }

                if (v48 > v62)
                {
                  goto LABEL_76;
                }

                v66 = 1;
                goto LABEL_75;
              }
            }
          }
        }
      }

LABEL_4:
      ++v5;
    }

    while (v5 != v76);
  }
}

void sub_104DBCC(uint64_t a1)
{
  v52 = -1431655765 * ((*(a1 + 1176) - *(a1 + 1168)) >> 5);
  if (v52)
  {
    v2 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v61 = _Q0;
    while (1)
    {
      v55 = v2;
      v6 = (*(a1 + 1168) + 96 * v2);
      if (*(a1 + 3048) == 1)
      {
        sub_1051E9C(a1, v6);
      }

      sub_105C338(*(a1 + 976) + 24, v6, &v63);
      if (v63)
      {
        v60 = *(v6 + 2);
        v7 = *a1;
        v8 = *(a1 + 2968);
        v63 = 0u;
        v64 = 0u;
        v65 = v61;
        v66 = 0x3FF0000000000000;
        v67 = 1;
        sub_10B9770((v7 + 192), &v63, v6, (v6 + 1), v8, 1, 1);
        if (v67)
        {
          v10 = sub_F8634C(&v63, &v65, v9);
          v54 = v64 + v10;
          if (v64 + v10 != -1)
          {
            v53 = DWORD1(v64) + HIDWORD(v10);
            if (DWORD1(v64) + HIDWORD(v10) != 0x7FFFFFFF)
            {
              break;
            }
          }
        }
      }

LABEL_3:
      v2 = v55 + 1;
      if (v55 + 1 == v52)
      {
        return;
      }
    }

    sub_105C338(*(a1 + 976) + 24, v6, &v63);
    v12 = *(*(&v64 + 1) + 8);
    v11 = *(*(&v64 + 1) + 16);
    for (i = v11; ; v11 = i)
    {
      if (v12 == v11)
      {
        goto LABEL_3;
      }

      v59 = v12;
      v13 = (**(a1 + 976) + 32 * *v12);
      v14 = -1431655765 * ((v13[1] - *v13) >> 5);
      if (v14)
      {
        break;
      }

LABEL_11:
      v12 = v59 + 1;
    }

    v15 = 0;
    while (1)
    {
      v16 = (*v13 + 96 * v15);
      if (*v16 != *v6)
      {
        goto LABEL_15;
      }

      if (v16[1] != *(v6 + 1))
      {
        goto LABEL_15;
      }

      v17 = v16[2];
      v18 = *a1;
      v19 = *(a1 + 2968);
      v63 = 0u;
      v64 = 0u;
      v65 = v61;
      v66 = 0x3FF0000000000000;
      v67 = 1;
      sub_10B9770((v18 + 192), &v63, v16, (v16 + 2), v19, 1, 1);
      if ((v67 & 1) == 0)
      {
        goto LABEL_15;
      }

      LODWORD(v20) = v63;
      v21 = *&v65 * v20;
      if (v21 >= 0.0)
      {
        if (v21 >= 4.50359963e15)
        {
          goto LABEL_25;
        }

        v22 = (v21 + v21) + 1;
      }

      else
      {
        if (v21 <= -4.50359963e15)
        {
          goto LABEL_25;
        }

        v22 = (v21 + v21) - 1 + (((v21 + v21) - 1) >> 63);
      }

      v21 = (v22 >> 1);
LABEL_25:
      v23 = *(&v65 + 1) * SDWORD1(v63);
      if (v23 >= 0.0)
      {
        if (v23 < 4.50359963e15)
        {
          v24 = (v23 + v23) + 1;
          goto LABEL_30;
        }
      }

      else if (v23 > -4.50359963e15)
      {
        v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_30:
        v23 = (v24 >> 1);
      }

      if (v64 + v21 == -1 || DWORD1(v64) + v23 == 0x7FFFFFFF || v60 < v17)
      {
        goto LABEL_15;
      }

      v57 = DWORD1(v64) + v23;
      v58 = v64 + v21;
      v27 = *a1;
      v28 = *(a1 + 2968);
      if (*(*a1 + 1474) == 1)
      {
        v29 = *v6;
        v30 = *(v6 + 1) & 0xFFFFFFF | (((*(v6 + 1) >> 28) & 3) << 29) | (((*(v6 + 1) & 0x60000000) == 0x40000000) << 31);
        v31 = *(v27 + 1536) - 1;
        v32 = 0x2127599BF4325C37 * (((v30 >> 29) & 2 | (v30 >> 31) | (v30 >> 27) & 4 | (v29 << 32) | (8 * (v30 & 0xFFFFFFF))) ^ (((v29 << 32) | (8 * (v30 & 0xFFFFFFF))) >> 23));
        v33 = *(v27 + 1552);
        v34 = *(v27 + 1544);
        v35 = *(v27 + 1548);
        v36 = (v32 ^ (v32 >> 47)) & v31;
        v38 = *(v33 + 8 * v36);
        v37 = *(v33 + 8 * v36 + 4);
        if (v34 != v38 || v35 != v37)
        {
          if (*(v27 + 1520))
          {
            v40 = 1;
            while (*(v27 + 1512) == v38 && *(v27 + 1516) == v37 || v38 != v29 || v37 != v30)
            {
              v36 = (v36 + v40) & v31;
              v38 = *(v33 + 8 * v36);
              v37 = *(v33 + 8 * v36 + 4);
              ++v40;
              if (v34 == v38 && v35 == v37)
              {
                goto LABEL_63;
              }
            }
          }

          else
          {
            v42 = 1;
            while (v38 != v29 || v37 != v30)
            {
              v36 = (v36 + v42) & v31;
              v38 = *(v33 + 8 * v36);
              v37 = *(v33 + 8 * v36 + 4);
              ++v42;
              if (v34 == v38 && v35 == v37)
              {
                goto LABEL_63;
              }
            }
          }

          if (v36 != -1)
          {
            goto LABEL_15;
          }
        }
      }

LABEL_63:
      sub_F92868((v27 + 8), *v6 | ((HIDWORD(*v6) & 0xFFFFFFF | (*v6 >> 31) & 0x60000000 | (((*v6 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v62);
      v63 = 0u;
      v64 = 0u;
      v65 = v61;
      v66 = 0x3FF0000000000000;
      v67 = 1;
      sub_10B9C08((v27 + 192), &v63, v62, v60 - v17, v28);
      if (v67)
      {
        LODWORD(v44) = v63;
        v45 = *&v65 * v44;
        if (v45 >= 0.0)
        {
          if (v45 < 4.50359963e15)
          {
            v46 = (v45 + v45) + 1;
LABEL_69:
            v45 = (v46 >> 1);
          }
        }

        else if (v45 > -4.50359963e15)
        {
          v46 = (v45 + v45) - 1 + (((v45 + v45) - 1) >> 63);
          goto LABEL_69;
        }

        v47 = *(&v65 + 1) * SDWORD1(v63);
        if (v47 >= 0.0)
        {
          if (v47 < 4.50359963e15)
          {
            v48 = (v47 + v47) + 1;
LABEL_75:
            v47 = (v48 >> 1);
          }
        }

        else if (v47 > -4.50359963e15)
        {
          v48 = (v47 + v47) - 1 + (((v47 + v47) - 1) >> 63);
          goto LABEL_75;
        }

        v49 = v64 + v45;
        v50 = DWORD1(v64) + v47;
        if (v49 != -1 && v50 != 0x7FFFFFFF)
        {
          LODWORD(v63) = v58 + v54 + v49;
          DWORD1(v63) = v57 + v53 + v50;
          sub_104BD90(a1, v6, &v63, *v59, v55, v15, 1, 0);
        }
      }

LABEL_15:
      if (++v15 == v14)
      {
        goto LABEL_11;
      }
    }
  }
}

void sub_104E228(void ***a1, unsigned int *a2, unsigned int a3)
{
  if (*(*a1 + 1472) == 1 && sub_6EECC())
  {
    v6 = sub_101E508(a1[1]) - 1;
  }

  else
  {
    v6 = 0;
  }

  if (*a2 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *a2;
  }

  if (*a2 != -1)
  {
    v6 = v7;
  }

  v86 = v6;
  v87 = v6;
  if (*(a1 + 518))
  {
    v80 = (a1 + 375);
    v8 = -1;
    do
    {
      if (((a1[250] - a1[249]) >> 2) >= a3)
      {
        return;
      }

      v9 = &a1[246][10 * *a1[253]];
      v95[0] = *v9;
      v10 = v9[3];
      v11 = v9[4];
      v12 = v9[2];
      v95[1] = v9[1];
      v95[3] = v10;
      v96 = v11;
      v95[2] = v12;
      sub_1032874((a1 + 150));
      v13 = **a1;
      if (*(v13 + 7774) == 1)
      {
        v14 = LODWORD(v95[0]);
        v15 = DWORD1(v95[0]);
        if ((v16 = sub_2AF704(v13 + 3896, v95[0], 1)) == 0)
        {
          continue;
        }

        v17 = &v16[-*v16];
        if (*v17 < 5u || (v18 = *(v17 + 2)) == 0 || *&v16[v18 + *&v16[v18]] <= (v15 & 0xFFFFFFFu) || !sub_2B817C(v13, v14 & 0xF0000000FFFFFFFFLL | ((v15 & 0xFFFFFFF) << 32)))
        {
          continue;
        }
      }

      if (*(a1 + 1052) != 1 || sub_2B8438(**a1, LODWORD(v95[0]) | ((DWORD1(v95[0]) & 0xFFFFFFF) << 32)))
      {
        v19 = DWORD2(v96);
        v20 = *(a1 + 260);
        if (v20 != -1 && DWORD2(v95[0]) > v20 || *(a1 + 3048) == 1 && sub_10510B0(a1, v95 + 2))
        {
          return;
        }

        v21 = *(a1 + 261);
        if (v21 != 0x7FFFFFFF && SHIDWORD(v95[0]) <= v21)
        {
          --*(a1 + 262);
        }

        if (*(a1 + 756) == -1 || (v22 = a1[1], LODWORD(v88) = *(a1 + 756), !sub_101F374(*v22, *&v95[0] & 0xFFFFFFFFFFFFFFFLL, &v88)))
        {
          v81 = v19 & 0x7FFFFFFF;
          v85 = sub_10512B4(a1, v95, v95 + 2, v19 & 0x7FFFFFFF);
          v23 = *(a1 + 740);
          v24 = 0x7FFFFFFF;
          if (v23 != 0x7FFFFFFF)
          {
            if (v95[0] < 0)
            {
              v25 = -5;
            }

            else
            {
              v25 = 5;
            }

            v24 = SHIDWORD(v95[0]) / -10 + v23 + (((-103 * (v25 + SHIDWORD(v95[0]) % 10)) >> 15) & 1) + ((-103 * (v25 + SHIDWORD(v95[0]) % 10)) >> 10);
          }

          v84 = v24;
          v26 = sub_394BD0();
          v27 = &v87;
          if (v26)
          {
            v27 = &v86;
          }

          v28 = *v27 >= v85 ? &v85 : v27;
          v29 = sub_105167C(a1, v95, a1[371], &v84, *(a1 + 2964), v28);
          v30 = v29;
          if (v29 != -1)
          {
            if (v29)
            {
              v53 = a1[1];
              LODWORD(v88) = v29;
              v54 = sub_101F854(*v53, *&v95[0] & 0xFFFFFFFFFFFFFFFLL, (*&v95[0] & 0x1000000000000000) != 0, &v88);
              v83 = v54;
              if (!v54)
              {
                continue;
              }

              if (v54 > 0xFFFFFFFEFFFFFFFFLL)
              {
                continue;
              }

              v79 = *(a1 + 2964);
              sub_1061D68((*a1 + 30), *&v95[0], v30, 1, a1[371], v84, v79, v80);
              if (a1[375] == a1[376])
              {
                continue;
              }

              sub_585C38((a1 + 260), &v83, &v88);
              v55 = v88;
              if (v89 == 1)
              {
                v56 = *(v88 + 8) + 12 * *(&v88 + 1);
                *v56 = v83;
                *(v56 + 8) = 0x7FFFFFFF;
              }

              v57 = *(v55 + 8) + 12 * *(&v88 + 1);
              v60 = *(v57 + 8);
              v58 = (v57 + 8);
              v59 = v60;
              if (v60 == 0x7FFFFFFF || SHIDWORD(v95[0]) < v59)
              {
                *v58 = HIDWORD(v95[0]);
              }

              v61 = -858993459 * ((a1[376] - a1[375]) >> 3);
              if (v61)
              {
                v62 = 0;
                v63 = 0;
                v64 = 40 * v61;
                do
                {
                  v65 = *v80 + v62;
                  v66 = *(v65 + 28);
                  v67 = v66 & 0xFFFFFFFF00000000;
                  if (v66 != -1 && v67 != 0x7FFFFFFF00000000)
                  {
                    *&v88 = (v67 + *(&v95[0] + 1)) & 0xFFFFFFFF00000000 | (v66 + DWORD2(v95[0]));
                    DWORD2(v88) = v84;
                    BYTE12(v88) = v79;
                    *&v90 = 0;
                    v89 = 0uLL;
                    v92 = v63;
                    v93 = v30;
                    v94 = v81;
                    v69 = *(v65 + 8);
                    v70 = *(v65 + 1);
                    v89 = *v65;
                    v90 = v70;
                    v91 = v69;
                    v82 = *v65;
                    sub_104A674(a1, &v82, &v88);
                  }

                  ++v63;
                  v62 += 40;
                }

                while (v64 != v62);
              }
            }

            else
            {
              if ((a1[381] & 1) == 0)
              {
                sub_10508D4(a1, v95, v95 + 2, v81);
              }

              sub_F92948(*a1 + 8, *&v95[0], 1, a1 + 372);
              v31 = -1171354717 * ((a1[373] - a1[372]) >> 3);
              if (v31)
              {
                v32 = 0;
                v33 = 0;
                v34 = 88 * v31;
                do
                {
                  v35 = a1[372];
                  v36 = sub_104B508(*a1, &v35[v32 / 8], a1[371], &v84, *(a1 + 2964));
                  v37 = v36 & 0xFFFFFFFF00000000;
                  if (v36 != -1 && v37 != 0x7FFFFFFF00000000)
                  {
                    v39 = &v35[v32 / 8];
                    v40 = v35[v32 / 8 + 4];
                    v41 = HIDWORD(v40) & 0x40000000;
                    if (v40 < 0 && v41 == 0)
                    {
                      v43 = 0x40000000;
                    }

                    else
                    {
                      v43 = 0;
                    }

                    v83 = v35[v32 / 8 + 4] | ((HIDWORD(v40) & 0xFFFFFFF | (v35[v32 / 8 + 10] >> 25) & 0x80000000 | (v40 >> 33) & 0x10000000 | (v41 >> 1) | v43) << 32);
                    v82 = (*(&v95[0] + 1) + v37) & 0xFFFFFFFF00000000 | (DWORD2(v95[0]) + v36);
                    v44 = *(a1 + 2964);
                    *&v88 = v82;
                    DWORD2(v88) = v84;
                    BYTE12(v88) = v44;
                    v45 = v39[4];
                    v46 = HIDWORD(v45) & 0x40000000;
                    if (v45 < 0 && v46 == 0)
                    {
                      v48 = 0x40000000;
                    }

                    else
                    {
                      v48 = 0;
                    }

                    *&v89 = v39[4] | (((v39[10] >> 25) & 0x80000000 | HIDWORD(v45) & 0xFFFFFFF | (v45 >> 33) & 0x10000000 | (v46 >> 1) | v48) << 32);
                    v49 = v39[9];
                    v50 = HIDWORD(v49) & 0x40000000;
                    if (v49 < 0 && v50 == 0)
                    {
                      v52 = 0x40000000;
                    }

                    else
                    {
                      v52 = 0;
                    }

                    *(&v89 + 1) = v39[9] | (((v39[10] >> 26) & 0x80000000 | HIDWORD(v49) & 0xFFFFFFF | (v49 >> 33) & 0x10000000 | (v50 >> 1) | v52) << 32);
                    *&v90 = v39[10];
                    v92 = v33;
                    v93 = 0;
                    v94 = v81;
                    sub_104A674(a1, &v83, &v88);
                    sub_10508D4(a1, &v83, &v82, v81);
                  }

                  ++v33;
                  v32 += 88;
                }

                while (v34 != v32);
              }
            }

            v71 = *(a1 + 261);
            if (v71 != 0x7FFFFFFF && !*(a1 + 262) && v8 == -1)
            {
              v72 = a1[119];
              v73 = a1[120];
              if (v72 == v73)
              {
                return;
              }

              v8 = 0;
              v74 = a1[116];
              do
              {
                if (0xAAAAAAAAAAAAAAABLL * (a1[117] - v74) > *v72)
                {
                  v75 = v74[3 * *v72 + 1];
                }

                else
                {
                  v75 = 0x7FFFFFFFFFFFFFFFLL;
                }

                v76 = HIDWORD(v75);
                if (v8 > v75)
                {
                  LODWORD(v75) = v8;
                }

                if (v71 >= v76)
                {
                  v8 = v75;
                }

                ++v72;
              }

              while (v72 != v73);
              v77 = *(a1 + 260);
              if (v77 == -1 || v8 < v77)
              {
                *(a1 + 260) = v8;
              }
            }
          }
        }
      }
    }

    while (*(a1 + 518));
  }
}

void sub_104E9E8(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char a5, _DWORD *a6, int a7, unsigned int *a8, uint64_t *a9, void *a10, unsigned int a11, int a12, int a13)
{
  sub_104C798(a1);
  *(a1 + 2960) = *a4;
  *(a1 + 2964) = a5;
  *(a1 + 2968) = a3;
  if (a1 + 1168 != a2)
  {
    sub_C70E60((a1 + 1168), *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  }

  *(a1 + 1192) = *(a2 + 24);
  *(a1 + 1040) = *a6;
  *(a1 + 1044) = a7;
  *(a1 + 20) = a13;
  *(a1 + 976) = a1 + 24;
  sub_104CAE0(a1);
  sub_104D4C0(a1, a10);
  v21 = *a9;
  v20 = a9[1];
  if (*a9 != v20)
  {
    do
    {
      v23 = *(v21 + 8);
      sub_101F030(a1 + 1056, v21, &v23);
      sub_105A9CC((a1 + 1056), a10);
      sub_105B98C((a1 + 1056));
      v21 += 16;
    }

    while (v21 != v20);
  }

  sub_104E228(a1, a8, a11);
}

void sub_104EB20(uint64_t *a1, int32x2_t *a2, unint64_t ***a3, uint64_t a4, int a5, char a6, int a7, int a8, unsigned int a9, int a10, unsigned int a11)
{
  sub_104C798(a1);
  v19 = *a3;
  v18 = a3[1];
  if (*a3 == v18)
  {
    v20 = *a3;
  }

  else
  {
    do
    {
      v24 = a1;
      sub_1050600((a1 + 3), v19, 1, &v24);
      v19 += 4;
    }

    while (v19 != v18);
    v19 = *a3;
    v20 = a3[1];
  }

  v21 = 0xAAAAAAAAAAAAAAABLL * ((a1[117] - a1[116]) >> 3);
  v22 = (v20 - v19) >> 5;
  if (v22 > v21)
  {
    sub_1052E94((a1 + 116), v22 - v21);
  }

  a1[122] = (a1 + 3);
  sub_104EC30(a1, a2, a4, a5, a6, a7, a8, a9, a11);
}

void sub_104EC30(int32x2_t *a1, int32x2_t *a2, uint64_t a3, int a4, char a5, int a6, int a7, unsigned int a8, unsigned int a9)
{
  v18 = a8;
  a1[370].i32[0] = a4;
  a1[370].i8[4] = a5;
  a1[371] = a3;
  v13 = &a1[146];
  if (v13 != a2)
  {
    sub_C70E60(v13, *a2, *&a2[1], 0xAAAAAAAAAAAAAAABLL * ((*&a2[1] - *a2) >> 5));
  }

  a1[149] = a2[3];
  a1[130].i32[0] = a6;
  a1[130].i32[1] = a7;
  v14 = a1[122];
  if (v14[11] + v14[5] + v14[17] + v14[23] + v14[29] + v14[35] + v14[41] + v14[47] + v14[53] + v14[59] + v14[65] + v14[71] + v14[77] + v14[83] + v14[89] + v14[95] || a1[381].i8[0] == 1)
  {
    sub_104CAE0(a1);
    __p = 0;
    v16 = 0;
    v17 = 0;
    sub_104D4C0(a1, &__p);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    sub_104DBCC(a1);
    sub_104E228(a1, &v18, a9);
  }
}

void sub_104ED8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_104EDA8(int32x2_t *a1, int32x2_t *a2, int a3, char a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, char a10)
{
  if (!*&a1[379])
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v24 = sub_2D390(exception, "A BucketSearchDataProvider is required for the bucket search query", 0x42uLL);
  }

  sub_104C798(a1);
  a1[122] = &a1[3];
  a1[381].i8[0] = 1;
  a1[381].i8[1] = a10;
  a1[381].i32[1] = a9;
  a1[384] = a1[383];
  a1[382].i32[0] = 0;
  v18 = a1[379];
  if ((*(*&v18 + 224) & 1) == 0)
  {
    v25 = __cxa_allocate_exception(0x40uLL);
    v26 = sub_2D390(v25, "The bucket search cost function has to be preprocessed.", 0x37uLL);
  }

  v19 = *(*&v18 + 204);
  v20 = *(*&v18 + 216);
  if (v19 >= a7)
  {
    v21 = a7;
  }

  else
  {
    v21 = *(*&v18 + 204);
  }

  if (a7 == -1)
  {
    v22 = v19;
  }

  else
  {
    v22 = v21;
  }

  sub_104EC30(a1, a2, v20, a3, a4, a5, a6, v22, a8);
}

uint64_t sub_104EEF4(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v2) >> 3) <= a2 || (v3 = (v2 + 24 * a2), !*v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v10, a2);
    sub_23E08("No valid data for target id ", &v10, &v11);
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

  return v3[5] & 0x3FFFFFFF;
}

void sub_104EFC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_104F020(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v2) >> 3) <= a2 || (v3 = (v2 + 24 * a2), !*v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v10, a2);
    sub_23E08("No valid data for target id ", &v10, &v11);
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

  return v3[4];
}

void sub_104F0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_104F148(void *a1, unint64_t a2)
{
  v2 = a1[116];
  if (0xAAAAAAAAAAAAAAABLL * ((a1[117] - v2) >> 3) <= a2 || !*(v2 + 24 * a2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v9, a2);
    sub_23E08("No valid data for target id ", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v10;
    }

    else
    {
      v6 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v8 = sub_2D390(exception, v6, size);
  }

  return *(a1[482] + 8 * a2);
}

void sub_104F21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

_BYTE *sub_104F274@<X0>(void *a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = 0;
  sub_104F348(a1, a2, v4, a3);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_104F334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1048C00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_104F348@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  result = sub_F6EB3C(a4);
  v9 = a1[116];
  if (0xAAAAAAAAAAAAAAABLL * ((a1[117] - v9) >> 3) > a2)
  {
    v10 = v9 + 24 * a2;
    if (*v10)
    {
      if (*(a1 + 3048) != 1 || *(a1 + 3049) == 1)
      {
        if ((*(v10 + 23) & 0x40) != 0)
        {
          v11 = *v10;
          sub_F92868((*a1 + 8), *v10 | ((HIDWORD(*v10) & 0xFFFFFFF | (*v10 >> 31) & 0x60000000 | (((*v10 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v12);
          sub_F69060(a4, v11, v12, 0);
          sub_F6901C(a4, a1[146] + 96 * (*(v10 + 20) & 0x3FFFFFFF) + 8);
        }

        else
        {
          sub_104F654(a1, v10, a3, v12);
          sub_49C304(a4, v12);
          sub_4547F0(v12);
        }

        if ((*(v10 + 20) & 0x80000000) != 0)
        {
          sub_104FBE4(v10, a1[485] + 40 * a2, v12);
          sub_F70C60(a4, v12);
          sub_4547F0(v12);
        }

        return sub_F68F20(a4, *(*a1[122] + 32 * a2) + 96 * *(v10 + 16) + 8);
      }
    }
  }

  return result;
}

void sub_104F500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4547F0(va);
  sub_4547F0(v3);
  _Unwind_Resume(a1);
}

_BYTE *sub_104F580@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v5 = 0;
  sub_104F654(a1, a2, v4, a3);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_104F640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1048C00(va);
  _Unwind_Resume(a1);
}

void sub_104F654(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_F6EB3C(a4);
  if (*a2)
  {
    v43 = *a2;
    if (v43)
    {
      v35 = a2;
      __src = 0;
      v8 = 0;
      while (1)
      {
        sub_105A854((a1 + 150), &v43, &v37);
        v9 = a1[246] + 80 * *(*(&v38 + 1) + 8);
        v10 = v8 - __src;
        v11 = 0x8E38E38E38E38E39 * ((v8 - __src) >> 3);
        v12 = v11 + 1;
        if (v11 + 1 > 0x38E38E38E38E38ELL)
        {
          sub_1794();
        }

        if (0x1C71C71C71C71C72 * (-__src >> 3) > v12)
        {
          v12 = 0x1C71C71C71C71C72 * (-__src >> 3);
        }

        if (0x8E38E38E38E38E39 * (-__src >> 3) >= 0x1C71C71C71C71C7)
        {
          v13 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          if (v13 <= 0x38E38E38E38E38ELL)
          {
            operator new();
          }

          sub_1808();
        }

        v14 = 8 * ((v8 - __src) >> 3);
        *v14 = *(v9 + 8);
        v15 = *(v9 + 24);
        v16 = *(v9 + 40);
        v17 = *(v9 + 56);
        *(v14 + 64) = *(v9 + 72);
        *(v14 + 32) = v16;
        *(v14 + 48) = v17;
        *(v14 + 16) = v15;
        v8 = v14 + 72;
        v18 = 72 * v11 + 72 * (v10 / -72);
        memcpy((v14 + 72 * (v10 / -72)), __src, v10);
        if (__src)
        {
          operator delete(__src);
        }

        __src = v18;
        if ((*(v9 + 72) & 0x80000000) != 0)
        {
          break;
        }

        v43 = *(v9 + 32);
        if (!v43)
        {
          v19 = v18;
          if (v18 != v8)
          {
            goto LABEL_21;
          }

LABEL_18:
          if (!v8)
          {
            return;
          }

LABEL_46:
          operator delete(v19);
          return;
        }
      }

      v43 = 0;
      v19 = v18;
      if (v18 == v8)
      {
        goto LABEL_18;
      }

LABEL_21:
      __p[0] = 0;
      __p[1] = 0;
      v20 = v19;
      v42 = 0;
      while (!*(v20 + 15))
      {
        if (*(a3 + 24) && !sub_F6FDC8(a4))
        {
          *&v37 = *(v20 + 2);
          v28 = *(a3 + 24);
          if (!v28)
          {
            sub_2B7420();
          }

          if ((*(*v28 + 48))(v28, &v37))
          {
            goto LABEL_42;
          }
        }

        v29 = *a1;
        sub_F92868((*a1 + 8), *(v20 + 2) | ((HIDWORD(*(v20 + 2)) & 0xFFFFFFF | (*(v20 + 2) >> 31) & 0x60000000 | (((*(v20 + 2) & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v44);
        sub_F92868((v29 + 8), *(v20 + 3) | ((HIDWORD(*(v20 + 3)) & 0xFFFFFFF | (*(v20 + 3) >> 31) & 0x60000000 | (((*(v20 + 3) & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v39 + 1);
        *&v39[0] = v45;
        v37 = v44[0];
        v38 = v44[1];
        v40 = *(v20 + 4);
        sub_F6F284(a4, &v37, 0);
LABEL_22:
        v20 += 72;
        if (v20 == v8)
        {
          sub_105A854((a1 + 150), v35, &v37);
          sub_F6901C(a4, a1[146] + 96 * (*(a1[246] + 80 * *(*(&v38 + 1) + 8) + 72) & 0x7FFFFFFF) + 8);
          goto LABEL_43;
        }
      }

      sub_1080924(*a1 + 336, v20 + 2, a1[371], v20 + 2, v20[12], __p);
      v21 = __p[1];
      v22 = __p[0];
      if (__p[0] != __p[1])
      {
        while (1)
        {
          if (*(a3 + 24) && !sub_F6FDC8(a4))
          {
            v23 = v22[4];
            v24 = HIDWORD(v23) & 0x40000000;
            if (v23 < 0 && v24 == 0)
            {
              v26 = 0x40000000;
            }

            else
            {
              v26 = 0;
            }

            *&v37 = v22[4] | (((v22[10] >> 25) & 0x80000000 | HIDWORD(v23) & 0xFFFFFFF | (v23 >> 33) & 0x10000000 | (v24 >> 1) | v26) << 32);
            v27 = *(a3 + 24);
            if (!v27)
            {
              sub_2B7420();
            }

            if ((*(*v27 + 48))(v27, &v37))
            {
              break;
            }
          }

          sub_F6F284(a4, v22, 0);
          v22 += 11;
          if (v22 == v21)
          {
            goto LABEL_22;
          }
        }

LABEL_42:
        v30 = sub_F69058(a4);
        v31 = *(v30 + 16);
        v37 = *v30;
        v38 = v31;
        v32 = *(v30 + 32);
        v33 = *(v30 + 48);
        v34 = *(v30 + 64);
        v40 = *(v30 + 80);
        v39[1] = v33;
        v39[2] = v34;
        v39[0] = v32;
        LODWORD(v37) = 1000000000;
        sub_F6901C(a4, &v37);
        goto LABEL_43;
      }

      sub_F6E9D8(a4);
LABEL_43:
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v19)
      {
        goto LABEL_46;
      }
    }
  }
}

void sub_104FB5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
    if (!a10)
    {
LABEL_3:
      sub_4547F0(v24);
      _Unwind_Resume(a1);
    }
  }

  else if (!a10)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  sub_4547F0(v24);
  _Unwind_Resume(a1);
}

void sub_104FBE4(_DWORD *a2@<X1>, uint64_t a3@<X2>, void *a5@<X8>)
{
  sub_F6EB3C(a5);
  if (*a2)
  {
    v8 = *a2;
    if (v8)
    {
      v7 = *(a3 + 32);
      if (v7 == 2)
      {
        sub_105C628(a3, &v8);
      }

      else
      {
        if (v7 != 1)
        {
          sub_5AF20();
        }

        sub_105C7AC(*a3, &v8);
      }

      operator new();
    }
  }
}

void sub_104FEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
    v18 = a15;
    if (!a15)
    {
LABEL_3:
      if (!v16)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v18 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v18);
  if (!v16)
  {
LABEL_4:
    sub_4547F0(a10);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v16);
  sub_4547F0(a10);
  _Unwind_Resume(a1);
}

unint64_t sub_104FF94(void *a1)
{
  v32.n128_u64[0] = -1;
  v32.n128_u64[1] = -1;
  v2 = a1 + 260;
  v3 = a1[260];
  v4 = a1[261];
  if (*v3 > -2)
  {
    v5 = a1[260];
    v18 = a1[263];
    v7 = &v3[v18];
    if (v3 != &v3[v18])
    {
LABEL_5:
      v8 = (a1 + 260);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = a1[260];
    do
    {
      v6 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v5 = (v5 + v6);
      v4 = (v4 + 12 * v6);
    }

    while (*v5 < -1);
    v7 = &v3[a1[263]];
    if (v5 != v7)
    {
      goto LABEL_5;
    }
  }

  v8 = (a1 + 266);
  v19 = 6;
  v20 = a1 + 260;
  while (1)
  {
    v4 = v20[7];
    v5 = *v8;
    if (**v8 <= -2)
    {
      do
      {
        v21 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v5 = (v5 + v21);
        v4 = (v4 + 12 * v21);
      }

      while (*v5 < -1);
    }

    v7 = &(*v8)[v20[9]];
    if (v5 != v7)
    {
      break;
    }

    v20 = &v2[v19];
    v19 += 6;
    v8 = &v2[v19];
    if (v19 == 96)
    {
      goto LABEL_26;
    }
  }

LABEL_6:
  v9 = (a1 + 356);
  do
  {
    while (1)
    {
      v10 = a1[1];
      v11 = *v4;
      v4 = (v4 + 12);
      v31.n128_u64[0] = v11;
      v31.n128_u64[0] = sub_10539D0(*v10, &v31);
      v31.n128_u64[1] = v12;
      sub_32114(&v32, &v31);
      LODWORD(v11) = *(v5 + 1);
      v5 = (v5 + 1);
      if (v11 <= -2)
      {
        do
        {
          v13 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v5 = (v5 + v13);
          v4 = (v4 + 12 * v13);
        }

        while (*v5 < -1);
      }

      if (v5 == v7)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_26;
      }
    }

    v14 = v8 + 6;
    if (v8 + 6 == v9)
    {
      break;
    }

    while (1)
    {
      v15 = v14;
      v16 = v8[6];
      v4 = v8[7];
      v5 = v16;
      if (*v16 <= -2)
      {
        do
        {
          v17 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v5 = (v5 + v17);
          v4 = (v4 + 12 * v17);
        }

        while (*v5 < -1);
      }

      v7 = &v8[9][v16];
      if (v5 != v7)
      {
        break;
      }

      v14 = v15 + 6;
      v8 = v15;
      if (v15 + 6 == v9)
      {
        goto LABEL_26;
      }
    }

    v8 = v15;
  }

  while (v15);
LABEL_26:
  if (!sub_329BC(&v32))
  {
    v22 = a1[249];
    for (i = a1[250]; v22 != i; ++v22)
    {
      v24 = a1[1];
      v25 = *(a1[246] + 80 * *v22);
      v31.n128_u32[0] = 1;
      v26 = sub_101F854(*v24, v25 & 0xFFFFFFFFFFFFFFFLL, (v25 & 0x1000000000000000) != 0, &v31);
      if (v26)
      {
        v27 = HIDWORD(v26) == 0xFFFFFFFF;
      }

      else
      {
        v27 = 1;
      }

      if (!v27)
      {
        v28 = a1[1];
        v33 = v26;
        v31.n128_u64[0] = sub_10539D0(*v28, &v33);
        v31.n128_u64[1] = v29;
        sub_32114(&v32, &v31);
        operator new();
      }
    }
  }

  return v32.n128_u64[0];
}

void sub_10503A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10503C8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  sub_105A854(a1 + 1200, &v5, v6);
  if (!v6[0])
  {
    return 0;
  }

  sub_105A854(a1 + 1200, &v5, v6);
  v3 = *(a1 + 1968) + 80 * *(v6[3] + 2);
  if ((*(v3 + 72) & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return *(v3 + 32);
  }
}

unint64_t sub_1050450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v15 = a2;
  sub_105A854(a1 + 1200, &v15, v16);
  v4 = v16[0];
  if (v16[0])
  {
    sub_105A854(a1 + 1200, &v14, v16);
    v4 = v16[0];
    if (v16[0])
    {
      v12 = v14;
      v13 = v15;
      sub_105A854(a1 + 1200, &v13, v16);
      v5 = *(v17 + 8);
      v6 = *(a1 + 1968);
      sub_105A854(a1 + 1200, &v12, v16);
      v7 = v13;
      if (v13)
      {
        v8 = *(a1 + 1968) + 80 * *(v17 + 8) + 8;
        v9 = v6 + 80 * v5 + 8;
        do
        {
          if (!v12)
          {
            break;
          }

          if (__PAIR64__(HIDWORD(v13), v7) == v12)
          {
            v4 = v13 & 0xFFFFFFFF00000000;
            v11 = v13;
            return v11 | v4;
          }

          if (*v8 == *v9)
          {
            if (*(v8 + 4) >= *(v9 + 4))
            {
              goto LABEL_12;
            }
          }

          else if (*v8 >= *v9)
          {
LABEL_12:
            if ((*(v8 + 64) & 0x80000000) != 0)
            {
              v12 = 0;
            }

            else
            {
              v12 = *(v8 + 24);
              if (v12)
              {
                sub_105A854(a1 + 1200, &v12, v16);
                v8 = *(a1 + 1968) + 80 * *(v17 + 8) + 8;
              }
            }

            goto LABEL_6;
          }

          if ((*(v9 + 64) & 0x80000000) != 0)
          {
            break;
          }

          v13 = *(v9 + 24);
          if (v13)
          {
            sub_105A854(a1 + 1200, &v13, v16);
            v9 = *(a1 + 1968) + 80 * *(v17 + 8) + 8;
          }

LABEL_6:
          v7 = v13;
        }

        while (v13);
      }

      v4 = 0;
    }
  }

  v11 = 0;
  return v11 | v4;
}

void *sub_1050600(uint64_t a1, unint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v27 = a2;
    v28 = ((v5 - *a1) >> 5);
    do
    {
      v11 = **a4;
      v29[0] = *v6 | ((HIDWORD(*v6) & 0xFFFFFFF | (*v6 >> 31) & 0x60000000 | (((*v6 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32);
      if (sub_100B6E4(v11 + 1480, v29) == -1)
      {
        if (a3)
        {
          LODWORD(v29[0]) = 0;
          sub_101F030(a1 + 792, v6, v29);
          sub_105B98C((a1 + 792));
        }

        sub_105BBDC(a1 + 24, v6, v29);
        v12 = v30;
        v14 = v30[2];
        v13 = v30[3];
        if (v14 < v13)
        {
          *v14 = v28;
          v10 = v14 + 8;
        }

        else
        {
          v15 = v30[1];
          v16 = v14 - v15;
          v17 = (v14 - v15) >> 3;
          v18 = v17 + 1;
          if ((v17 + 1) >> 61)
          {
            sub_1794();
          }

          v19 = a3;
          v20 = v13 - v15;
          if (v20 >> 2 > v18)
          {
            v18 = v20 >> 2;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v18;
          }

          if (v21)
          {
            if (!(v21 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v22 = (v14 - v15) >> 3;
          v23 = (8 * v17);
          v24 = (8 * v17 - 8 * v22);
          *v23 = v28;
          v10 = v23 + 1;
          memcpy(v24, v15, v16);
          v12[1] = v24;
          v12[2] = v10;
          v12[3] = 0;
          if (v15)
          {
            operator delete(v15);
          }

          a3 = v19;
        }

        v12[2] = v10;
      }

      v6 += 12;
    }

    while (v6 != v7);
    v5 = *(a1 + 8);
    a2 = v27;
  }

  if (v5 >= *(a1 + 16))
  {
    result = sub_1020B2C(a1, a2);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v25 = a2[1];
    if (v25 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v25 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1794();
    }

    v5[3] = a2[3];
    result = v5 + 4;
    *(a1 + 8) = v5 + 4;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_10508B4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_10508D4(uint64_t a1, unsigned int *a2, _DWORD *a3, int a4)
{
  if (*(a1 + 3048) == 1)
  {
    sub_1051E9C(a1, a2);
  }

  sub_105C338(*(a1 + 976) + 24, a2, &v79);
  if (v79)
  {
    sub_105C338(*(a1 + 976) + 24, a2, &v79);
    v6 = *(*(&v80 + 1) + 8);
    v72 = *(*(&v80 + 1) + 16);
    if (v6 != v72)
    {
      __asm { FMOV            V0.2D, #1.0 }

      v77 = _Q0;
      while (1)
      {
        v74 = v6;
        v10 = (**(a1 + 976) + 32 * *v6);
        v11 = -1431655765 * ((v10[1] - *v10) >> 5);
        if (v11)
        {
          break;
        }

LABEL_6:
        v6 = v74 + 1;
        if (v74 + 1 == v72)
        {
          return;
        }
      }

      v12 = 0;
      while (1)
      {
        v13 = (*v10 + 96 * v12);
        v14 = *a2;
        if (*v13 != v14)
        {
          goto LABEL_9;
        }

        v15 = v13[1];
        if (v15 != a2[1])
        {
          goto LABEL_9;
        }

        v16 = *a1;
        v17 = *(a1 + 2968);
        if (*(*a1 + 1474) == 1)
        {
          v18 = v15 & 0xFFFFFFF | (((v15 >> 28) & 3) << 29) | (((v15 & 0x60000000) == 0x40000000) << 31);
          v19 = *(v16 + 1536) - 1;
          v20 = 0x2127599BF4325C37 * (((v18 >> 29) & 2 | (v18 >> 31) | (v18 >> 27) & 4 | (v14 << 32) | (8 * (v18 & 0xFFFFFFF))) ^ (((v14 << 32) | (8 * (v18 & 0xFFFFFFF))) >> 23));
          v21 = *(v16 + 1552);
          v22 = *(v16 + 1544);
          v23 = *(v16 + 1548);
          v24 = (v20 ^ (v20 >> 47)) & v19;
          v26 = *(v21 + 8 * v24);
          v25 = *(v21 + 8 * v24 + 4);
          if (v22 != v26 || v23 != v25)
          {
            if (*(v16 + 1520))
            {
              v28 = 1;
              while (*(v16 + 1512) == v26 && *(v16 + 1516) == v25 || v26 != v14 || v25 != v18)
              {
                v24 = (v24 + v28) & v19;
                v26 = *(v21 + 8 * v24);
                v25 = *(v21 + 8 * v24 + 4);
                ++v28;
                if (v22 == v26 && v23 == v25)
                {
                  goto LABEL_36;
                }
              }
            }

            else
            {
              v30 = 1;
              while (v26 != v14 || v25 != v18)
              {
                v24 = (v24 + v30) & v19;
                v26 = *(v21 + 8 * v24);
                v25 = *(v21 + 8 * v24 + 4);
                ++v30;
                if (v22 == v26 && v23 == v25)
                {
                  goto LABEL_36;
                }
              }
            }

            if (v24 != -1)
            {
              goto LABEL_9;
            }
          }
        }

LABEL_36:
        sub_F92868((v16 + 8), *a2 | ((HIDWORD(*a2) & 0xFFFFFFF | (*a2 >> 31) & 0x60000000 | (((*a2 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v78);
        v79 = 0u;
        v80 = 0u;
        v81 = v77;
        v82 = 0x3FF0000000000000;
        v83 = 1;
        sub_10B9C08((v16 + 192), &v79, v78, 0x3B9ACA00u, v17);
        if ((v83 & 1) == 0)
        {
          goto LABEL_9;
        }

        LODWORD(v32) = v79;
        v33 = *&v81 * v32;
        if (v33 >= 0.0)
        {
          if (v33 >= 4.50359963e15)
          {
            goto LABEL_43;
          }

          v34 = (v33 + v33) + 1;
        }

        else
        {
          if (v33 <= -4.50359963e15)
          {
            goto LABEL_43;
          }

          v34 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
        }

        v33 = (v34 >> 1);
LABEL_43:
        v35 = *(&v81 + 1) * SDWORD1(v79);
        if (v35 >= 0.0)
        {
          if (v35 >= 4.50359963e15)
          {
            goto LABEL_49;
          }

          v36 = (v35 + v35) + 1;
        }

        else
        {
          if (v35 <= -4.50359963e15)
          {
            goto LABEL_49;
          }

          v36 = (v35 + v35) - 1 + (((v35 + v35) - 1) >> 63);
        }

        v35 = (v36 >> 1);
LABEL_49:
        v37 = v80 + v33;
        v38 = DWORD1(v80) + v35;
        if (v37 == -1 || v38 == 0x7FFFFFFF)
        {
          goto LABEL_9;
        }

        v40 = *a1;
        v41 = *(a1 + 2968);
        if (*(*a1 + 1474) != 1)
        {
          goto LABEL_81;
        }

        v42 = *a2;
        v43 = a2[1] & 0xFFFFFFF | (((a2[1] >> 28) & 3) << 29) | (((a2[1] & 0x60000000) == 0x40000000) << 31);
        v44 = *(v40 + 1536) - 1;
        v45 = 0x2127599BF4325C37 * (((v43 >> 29) & 2 | (v43 >> 31) | (v43 >> 27) & 4 | (v42 << 32) | (8 * (v43 & 0xFFFFFFF))) ^ (((v42 << 32) | (8 * (v43 & 0xFFFFFFF))) >> 23));
        v46 = *(v40 + 1552);
        v47 = *(v40 + 1544);
        v48 = *(v40 + 1548);
        v49 = (v45 ^ (v45 >> 47)) & v44;
        v51 = *(v46 + 8 * v49);
        v50 = *(v46 + 8 * v49 + 4);
        if (v47 == v51 && v48 == v50)
        {
          goto LABEL_81;
        }

        if (*(v40 + 1520))
        {
          v53 = 1;
          while (*(v40 + 1512) == v51 && *(v40 + 1516) == v50 || v51 != v42 || v50 != v43)
          {
            v49 = (v49 + v53) & v44;
            v51 = *(v46 + 8 * v49);
            v50 = *(v46 + 8 * v49 + 4);
            ++v53;
            if (v47 == v51 && v48 == v50)
            {
              goto LABEL_81;
            }
          }
        }

        else
        {
          v55 = 1;
          while (v51 != v42 || v50 != v43)
          {
            v49 = (v49 + v55) & v44;
            v51 = *(v46 + 8 * v49);
            v50 = *(v46 + 8 * v49 + 4);
            ++v55;
            if (v47 == v51 && v48 == v50)
            {
              goto LABEL_81;
            }
          }
        }

        if (v49 == -1)
        {
LABEL_81:
          v75 = DWORD1(v80) + v35;
          v76 = v80 + v33;
          v61 = 1000000000 - v13[2];
          sub_F92868((v40 + 8), *a2 | ((HIDWORD(*a2) & 0xFFFFFFF | (*a2 >> 31) & 0x60000000 | (((*a2 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v78);
          v79 = 0u;
          v80 = 0u;
          v81 = v77;
          v82 = 0x3FF0000000000000;
          v83 = 1;
          sub_10B9C08((v40 + 192), &v79, v78, v61, v41);
          if (v83 == 1)
          {
            v63 = sub_F8634C(&v79, &v81, v62);
            v64 = (v80 + v63) | ((DWORD1(v80) + HIDWORD(v63)) << 32);
          }

          else
          {
            v64 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v57 = a3;
          v58 = v76 - v64;
          v59 = v75 - HIDWORD(v64);
          _CF = *a3 >= (v76 - v64);
          if (*a3 != v76 - v64)
          {
LABEL_78:
            if (_CF)
            {
              goto LABEL_86;
            }

            goto LABEL_9;
          }
        }

        else
        {
          v57 = a3;
          v58 = v37 + 1;
          v59 = v38 - 0x7FFFFFFF;
          _CF = *a3 >= (v37 + 1);
          if (*a3 != v37 + 1)
          {
            goto LABEL_78;
          }
        }

        if (v57[1] >= v59)
        {
LABEL_86:
          v66 = *a3;
          v65 = a3[1];
          v67 = *a1;
          v68 = *(a1 + 2968);
          v79 = 0u;
          v80 = 0u;
          v81 = v77;
          v82 = 0x3FF0000000000000;
          v83 = 1;
          sub_10B9770((v67 + 192), &v79, v13, (v13 + 2), v68, 1, 1);
          if (v83)
          {
            v70 = sub_F8634C(&v79, &v81, v69);
            if (v80 + v70 != -1 && DWORD1(v80) + HIDWORD(v70) != 0x7FFFFFFF)
            {
              *&v79 = (v66 - v58 + v80 + v70) | ((v65 - v59 + DWORD1(v80) + HIDWORD(v70)) << 32);
              sub_104BD90(a1, a2, &v79, *v74, a4, v12, 0, 0);
            }
          }
        }

LABEL_9:
        if (++v12 == v11)
        {
          goto LABEL_6;
        }
      }
    }
  }
}

BOOL sub_10510B0(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 3056);
  v3 = *(a1 + 3072);
  v4 = *(a1 + 3064);
  v5 = *(a1 + 3052);
  if (v2 + v3 - v4 < v5)
  {
    return 0;
  }

  if (v4 == v3)
  {
    *(a1 + 3064) = 0;
    *(a1 + 3072) = 0;
    *(a1 + 3080) = 0;
    result = v2 >= v5;
    if (!v4)
    {
      return result;
    }

    goto LABEL_12;
  }

  do
  {
    v7 = *(a1 + 928) + 24 * *v4;
    v9 = *(v7 + 8);
    v8 = v7 + 8;
    v10 = *a2 >= v9;
    if (*a2 == v9)
    {
      if (a2[1] < *(v8 + 4))
      {
        goto LABEL_10;
      }
    }

    else if (!v10)
    {
LABEL_10:
      operator new();
    }

    ++*(a1 + 3056);
    ++v4;
  }

  while (v4 != v3);
  v4 = *(a1 + 3064);
  v11 = *(a1 + 3056);
  v12 = *(a1 + 3052);
  *(a1 + 3064) = 0;
  *(a1 + 3072) = 0;
  *(a1 + 3080) = 0;
  result = v11 >= v12;
  if (v4)
  {
LABEL_12:
    v13 = result;
    operator delete(v4);
    return v13;
  }

  return result;
}

void sub_1051298(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10512B4(uint64_t a1, unsigned int *a2, _DWORD *a3, int a4)
{
  if (*(a1 + 3048) != 1)
  {
    return 4294967294;
  }

  sub_10508D4(a1, a2, a3, a4);
  result = sub_10517D4(*(a1 + 3032), *a2);
  if (result)
  {
    v36 = a4;
    v9 = *result;
    v10 = *(result + 8);
    if (*result != v10)
    {
      do
      {
        v15 = *(a1 + 1040);
        if (v15 != -1)
        {
          v16 = *(v9 + 16);
          if (v16 != -1 && *(v9 + 20) != 0x7FFFFFFF && *(v9 + 24) != 0x7FFFFFFFFFFFFFFFLL && v16 + *a3 > v15)
          {
            goto LABEL_7;
          }
        }

        v17 = sub_1051898(a1, v9);
        v18 = *(v9 + 16);
        if (v18 == -1 || (v19 = *(v9 + 20), v19 == 0x7FFFFFFF) || *(v9 + 24) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = *(a1 + 3904);
          v12 = v17 >> 6;
          v13 = 1 << v17;
          v14 = *(v11 + 8 * (v17 >> 6));
          if ((v14 & (1 << v17)) == 0)
          {
            v22 = *(a1 + 24) + 32 * v17;
            v23 = *v22;
            v24 = *(v22 + 8);
            if (*v22 != v24)
            {
              do
              {
                v38[0] = 0;
                sub_101F030(a1 + 816, v23, v38);
                sub_105B98C((a1 + 816));
                v23 += 12;
              }

              while (v23 != v24);
              v11 = *(a1 + 3904);
              v14 = *(v11 + 8 * v12);
            }

            *(v11 + 8 * v12) = v14 | v13;
          }

          ++*(a1 + 3936);
          goto LABEL_7;
        }

        if (*(a1 + 3049) == 1 && ((v20 = *(a1 + 1044), v20 == 0x7FFFFFFF) || v19 + a3[1] <= v20))
        {
          v21 = v17;
          if (!*(*(a1 + 3880) + 40 * v17 + 32))
          {
            v25.n128_f64[0] = sub_1051C64(*(a1 + 3032), *v9, v38);
            v26 = v39;
            if (!v39)
            {
              v29 = *(a1 + 3904);
              v30 = v21 >> 6;
              v31 = 1 << v21;
              v32 = *(v29 + 8 * (v21 >> 6));
              if ((v32 & (1 << v21)) == 0)
              {
                v33 = *(a1 + 24) + 32 * v21;
                v35 = *v33;
                v34 = *(v33 + 8);
                if (*v33 != v34)
                {
                  do
                  {
                    LODWORD(v37) = 0;
                    sub_101F030(a1 + 816, v35, &v37);
                    sub_105B98C((a1 + 816));
                    v35 += 12;
                  }

                  while (v35 != v34);
                  v29 = *(a1 + 3904);
                  v31 = 1 << v21;
                  v30 = v21 >> 6;
                  v32 = *(v29 + 8 * (v21 >> 6));
                }

                *(v29 + 8 * v30) = v32 | v31;
              }

              ++*(a1 + 3928);
              goto LABEL_37;
            }

            v27 = *(*(a1 + 3880) + 40 * v21 + 32);
            if (v27 == -1)
            {
              if (v39 == -1)
              {
                goto LABEL_37;
              }
            }

            else if (v39 == -1)
            {
              v28 = *(a1 + 3880) + 40 * v21;
              (off_2674F98[v27])(&v37, v25.n128_f64[0]);
              *(v28 + 32) = -1;
LABEL_37:
              if (v39 != -1)
              {
                (off_2674F98[v39])(&v37, v38);
              }

              if (!v26)
              {
                goto LABEL_7;
              }

              v18 = *(v9 + 16);
              v19 = *(v9 + 20);
              goto LABEL_41;
            }

            v37 = *(a1 + 3880) + 40 * v21;
            (off_2674FB0[v39])(&v37, v25);
            goto LABEL_37;
          }
        }

        else
        {
          v21 = v17;
        }

LABEL_41:
        *v38 = (v18 + *a3) | ((v19 + a3[1]) << 32);
        sub_104BD90(a1, a2, v38, v21, v36, *(v9 + 8), 0, 1);
LABEL_7:
        v9 += 32;
      }

      while (v9 != v10);
    }

    return *(*(a1 + 3032) + 204);
  }

  return result;
}

void sub_1051640(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_105167C(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int *a4, uint64_t a5, unsigned int *a6)
{
  v6 = *a6;
  if (v6)
  {
    v7 = a5;
    do
    {
      v12 = *(a1 + 8);
      v13 = *a2;
      LODWORD(v20) = v6;
      if (sub_101F374(*v12, v13 & 0xFFFFFFFFFFFFFFFLL, &v20))
      {
        v14 = *(a1 + 8);
        v15 = *a2;
        v21 = v6;
        v16 = sub_101F854(*v14, v15 & 0xFFFFFFFFFFFFFFFLL, (v15 & 0x1000000000000000) != 0, &v21);
        v20 = v16;
        if (v16)
        {
          v17 = v16 >= 0xFFFFFFFF00000000;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          v18 = *(a1 + 20);
          if (v18 != -1 && v6 == v18)
          {
            return 0xFFFFFFFFLL;
          }
        }

        else if (sub_10550EC(a1 + 1064, &v20) == -1 && sub_10550EC(*(a1 + 976) + 800, &v20) == -1)
        {
          if (*(a1 + 3048) == 1 && v6 < *(*(a1 + 3032) + 200))
          {
            return 0;
          }

          if (*(*a1 + 1473) != 1 || !sub_1063C18(*a1 + 240, v20, a3, *a4, v7))
          {
            return v6;
          }
        }
      }

      v6 = (v6 - 1);
    }

    while (v6);
  }

  return v6;
}

void *sub_10517D4(uint64_t a1, unint64_t a2)
{
  LODWORD(v9[0]) = *(a1 + 200);
  v4 = sub_101F854(*(a1 + 24), a2 & 0xFFFFFFFFFFFFFFFLL, (a2 & 0x1000000000000000) != 0, v9);
  v11 = v4;
  if (v4)
  {
    v5 = v4 > 0xFFFFFFFEFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v9[0] = 0;
  v9[1] = 0;
  v10 = sub_105CC98(*(a1 + 32), a2, v4);
  if (v10 == 0xFFFF)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = (a1 + 280);
  sub_1058664(v6, &v11, &v10, v7);
  return v7;
}

uint64_t sub_1051898(uint64_t *a1, uint64_t **a2)
{
  sub_1034760((a1 + 386), a2, v43);
  if (v43[0])
  {
    return v43[3][1];
  }

  v5 = a1[4];
  v6 = a1[3];
  v7 = a1[379];
  v44 = *a2;
  sub_105733C(*(v7 + 8), &v44, (v7 + 232));
  sub_1016868(v7 + 40, (v7 + 232), *(v7 + 208), 0, &__p);
  v44 = a1;
  sub_1050600((a1 + 3), &__p, 0, &v44);
  v4 = (v5 - v6) >> 5;
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  sub_105772C((a1 + 386), a2, &__p);
  v8 = __p;
  if (v42 == 1)
  {
    v9 = (*(__p + 1) + 16 * v41);
    *v9 = *a2;
    v9[1] = -1;
  }

  *(v8[1] + 16 * v41 + 8) = v4;
  v10 = a1[483];
  v11 = a1[484];
  if (v10 >= v11)
  {
    v13 = a1[482];
    v14 = v10 - v13;
    v15 = (v10 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      sub_1794();
    }

    v17 = v11 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (!(v18 >> 61))
      {
        operator new();
      }

      goto LABEL_49;
    }

    v19 = v15;
    v20 = (8 * v15);
    v21 = *a2;
    v22 = &v20[-v19];
    *v20 = v21;
    v12 = (v20 + 1);
    memcpy(v22, v13, v14);
    a1[482] = v22;
    a1[483] = v12;
    a1[484] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v10 = *a2;
    v12 = (v10 + 8);
  }

  a1[483] = v12;
  v23 = a1[489];
  v24 = a1[490];
  if (v23 == v24 << 6)
  {
    if ((v23 + 1) < 0)
    {
      sub_1794();
    }

    v25 = v24 << 7;
    if (v25 <= (v23 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v25 = (v23 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v23 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_3D41C((a1 + 488), v26);
    v23 = a1[489];
  }

  a1[489] = v23 + 1;
  *(a1[488] + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v23);
  v27 = a1[486];
  if (v27 >= a1[487])
  {
    v28 = sub_1053300((a1 + 485));
  }

  else
  {
    *(v27 + 32) = 0;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    v28 = v27 + 40;
  }

  a1[486] = v28;
  v29 = a1[117];
  v30 = a1[116];
  v31 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 3);
  if (v4 >= v31)
  {
    v32 = a1[118];
    if (v29 < v32)
    {
      *v29 = xmmword_2297C00;
      *(v29 + 16) = 0;
      v33 = v29 + 24;
LABEL_45:
      a1[117] = v33;
      return v4;
    }

    v34 = v31 + 1;
    if (v31 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v35 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v30) >> 3);
    if (2 * v35 > v34)
    {
      v34 = 2 * v35;
    }

    if (v35 >= 0x555555555555555)
    {
      v36 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v36 = v34;
    }

    if (!v36)
    {
      v37 = 8 * ((v29 - v30) >> 3);
      *v37 = xmmword_2297C00;
      *(v37 + 16) = 0;
      v33 = v37 + 24;
      v38 = (v37 - (v29 - v30));
      memcpy(v38, v30, v29 - v30);
      a1[116] = v38;
      a1[117] = v33;
      a1[118] = 0;
      if (v30)
      {
        operator delete(v30);
      }

      goto LABEL_45;
    }

    if (v36 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_49:
    sub_1808();
  }

  return v4;
}

void sub_1051C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1051C64@<D0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 225) != 1)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 8);
  if (*(v4 + 3880))
  {
    goto LABEL_3;
  }

  v16 = a1;
  v17 = a2;
  v18 = sub_3BF72C(v4 + 8, a2, 1);
  v5 = v18;
  if (v18)
  {
    v19 = &v18[-*v18];
    a1 = v16;
    if (*v19 < 7u)
    {
      v5 = 0;
      a2 = v17;
    }

    else
    {
      a2 = v17;
      if (!*(v19 + 3) || (v20 = (v5 + *(v19 + 3) + *(v5 + *(v19 + 3))), *v20 <= HIDWORD(v17)))
      {
LABEL_3:
        v5 = 0;
        goto LABEL_4;
      }

      v5 = (&v20[(v17 >> 32) + 1] + v20[(v17 >> 32) + 1]);
    }
  }

  else
  {
    a2 = v17;
    a1 = v16;
  }

LABEL_4:
  v6 = (v5 - *v5);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    v9 = (v8 - *v8);
    v10 = *v9;
    if (v10 < 5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = (&loc_1120530 + 1);
    v10 = *(&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) < 5u)
    {
      goto LABEL_17;
    }
  }

  v11 = v9[2];
  if (v9[2])
  {
    v11 += v8 + *(v8 + v11);
  }

  if (v10 >= 7)
  {
    v12 = v9[3];
    if (v12 && v11 != 0)
    {
      v21 = (v8 + v12);
      v22 = *v21;
      *a3 = v11;
      *(a3 + 8) = v21 + v22;
      *&result = 0xFFFFFFFFLL;
      *(a3 + 16) = 0xFFFFFFFFLL;
      *(a3 + 24) = -1;
      *(a3 + 32) = 2;
      return result;
    }
  }

LABEL_17:
  sub_105CDBC(a1, a2, &v24);
  if (!v24)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v15 = v25;
    if (!v25)
    {
      return result;
    }

    goto LABEL_23;
  }

  v14 = v25;
  *a3 = v24;
  *(a3 + 8) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a3 + 32) = 1;
  v15 = v25;
  if (v25)
  {
LABEL_23:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  return result;
}

void sub_1051E9C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[379];
  v5 = *a2;
  sub_105C4B0(v2[1], &v5, v2 + 32);
  v4 = v2[32];
  v3 = v2[33];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }
}

void *sub_1051F5C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  a1[5] = 0;
  *a1 = &unk_2290750;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  if (v2)
  {
    v3 = __clz(v2);
    if (v3 == 61)
    {
      v4 = 6;
    }

    else
    {
      v4 = (0xFFFFFFFFFFFFFFFFLL >> v3) - (0x1FFFFFFFFFFFFFFFuLL >> v3);
    }

    a1[5] = v4;
    operator new();
  }

  a1[6] = &unk_2290750;
  v5 = *a2;
  a1[11] = 0;
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = 0;
  if (v5)
  {
    v6 = __clz(v5);
    if (v6 == 61)
    {
      v7 = 6;
    }

    else
    {
      v7 = (0xFFFFFFFFFFFFFFFFLL >> v6) - (0x1FFFFFFFFFFFFFFFuLL >> v6);
    }

    a1[11] = v7;
    operator new();
  }

  a1[12] = &unk_2290750;
  v8 = *a2;
  a1[17] = 0;
  a1[14] = 0;
  a1[15] = 0;
  a1[13] = 0;
  if (v8)
  {
    v9 = __clz(v8);
    if (v9 == 61)
    {
      v10 = 6;
    }

    else
    {
      v10 = (0xFFFFFFFFFFFFFFFFLL >> v9) - (0x1FFFFFFFFFFFFFFFuLL >> v9);
    }

    a1[17] = v10;
    operator new();
  }

  a1[18] = &unk_2290750;
  v11 = *a2;
  a1[23] = 0;
  a1[20] = 0;
  a1[21] = 0;
  a1[19] = 0;
  if (v11)
  {
    v12 = __clz(v11);
    if (v12 == 61)
    {
      v13 = 6;
    }

    else
    {
      v13 = (0xFFFFFFFFFFFFFFFFLL >> v12) - (0x1FFFFFFFFFFFFFFFuLL >> v12);
    }

    a1[23] = v13;
    operator new();
  }

  a1[24] = &unk_2290750;
  v14 = *a2;
  a1[29] = 0;
  a1[26] = 0;
  a1[27] = 0;
  a1[25] = 0;
  if (v14)
  {
    v15 = __clz(v14);
    if (v15 == 61)
    {
      v16 = 6;
    }

    else
    {
      v16 = (0xFFFFFFFFFFFFFFFFLL >> v15) - (0x1FFFFFFFFFFFFFFFuLL >> v15);
    }

    a1[29] = v16;
    operator new();
  }

  a1[30] = &unk_2290750;
  v17 = *a2;
  a1[35] = 0;
  a1[32] = 0;
  a1[33] = 0;
  a1[31] = 0;
  if (v17)
  {
    v18 = __clz(v17);
    if (v18 == 61)
    {
      v19 = 6;
    }

    else
    {
      v19 = (0xFFFFFFFFFFFFFFFFLL >> v18) - (0x1FFFFFFFFFFFFFFFuLL >> v18);
    }

    a1[35] = v19;
    operator new();
  }

  v20 = *a2;
  a1[41] = 0;
  a1[36] = &unk_2290750;
  a1[37] = 0;
  a1[38] = 0;
  a1[39] = 0;
  if (v20)
  {
    v21 = __clz(v20);
    if (v21 == 61)
    {
      v22 = 6;
    }

    else
    {
      v22 = (0xFFFFFFFFFFFFFFFFLL >> v21) - (0x1FFFFFFFFFFFFFFFuLL >> v21);
    }

    a1[41] = v22;
    operator new();
  }

  v23 = *a2;
  a1[47] = 0;
  a1[42] = &unk_2290750;
  a1[43] = 0;
  a1[44] = 0;
  a1[45] = 0;
  if (v23)
  {
    v24 = __clz(v23);
    if (v24 == 61)
    {
      v25 = 6;
    }

    else
    {
      v25 = (0xFFFFFFFFFFFFFFFFLL >> v24) - (0x1FFFFFFFFFFFFFFFuLL >> v24);
    }

    a1[47] = v25;
    operator new();
  }

  v26 = *a2;
  a1[53] = 0;
  a1[48] = &unk_2290750;
  a1[49] = 0;
  a1[50] = 0;
  a1[51] = 0;
  if (v26)
  {
    v27 = __clz(v26);
    if (v27 == 61)
    {
      v28 = 6;
    }

    else
    {
      v28 = (0xFFFFFFFFFFFFFFFFLL >> v27) - (0x1FFFFFFFFFFFFFFFuLL >> v27);
    }

    a1[53] = v28;
    operator new();
  }

  v29 = *a2;
  a1[59] = 0;
  a1[54] = &unk_2290750;
  a1[55] = 0;
  a1[56] = 0;
  a1[57] = 0;
  if (v29)
  {
    v30 = __clz(v29);
    if (v30 == 61)
    {
      v31 = 6;
    }

    else
    {
      v31 = (0xFFFFFFFFFFFFFFFFLL >> v30) - (0x1FFFFFFFFFFFFFFFuLL >> v30);
    }

    a1[59] = v31;
    operator new();
  }

  v32 = *a2;
  a1[65] = 0;
  a1[60] = &unk_2290750;
  a1[61] = 0;
  a1[62] = 0;
  a1[63] = 0;
  if (v32)
  {
    v33 = __clz(v32);
    if (v33 == 61)
    {
      v34 = 6;
    }

    else
    {
      v34 = (0xFFFFFFFFFFFFFFFFLL >> v33) - (0x1FFFFFFFFFFFFFFFuLL >> v33);
    }

    a1[65] = v34;
    operator new();
  }

  v35 = *a2;
  a1[66] = &unk_2290750;
  a1[71] = 0;
  a1[67] = 0;
  a1[69] = 0;
  a1[68] = 0;
  if (v35)
  {
    v36 = __clz(v35);
    if (v36 == 61)
    {
      v37 = 6;
    }

    else
    {
      v37 = (0xFFFFFFFFFFFFFFFFLL >> v36) - (0x1FFFFFFFFFFFFFFFuLL >> v36);
    }

    a1[71] = v37;
    operator new();
  }

  v38 = *a2;
  a1[72] = &unk_2290750;
  a1[77] = 0;
  a1[73] = 0;
  a1[75] = 0;
  a1[74] = 0;
  if (v38)
  {
    v39 = __clz(v38);
    if (v39 == 61)
    {
      v40 = 6;
    }

    else
    {
      v40 = (0xFFFFFFFFFFFFFFFFLL >> v39) - (0x1FFFFFFFFFFFFFFFuLL >> v39);
    }

    a1[77] = v40;
    operator new();
  }

  v41 = *a2;
  a1[78] = &unk_2290750;
  a1[83] = 0;
  a1[79] = 0;
  a1[81] = 0;
  a1[80] = 0;
  if (v41)
  {
    v42 = __clz(v41);
    if (v42 == 61)
    {
      v43 = 6;
    }

    else
    {
      v43 = (0xFFFFFFFFFFFFFFFFLL >> v42) - (0x1FFFFFFFFFFFFFFFuLL >> v42);
    }

    a1[83] = v43;
    operator new();
  }

  v44 = *a2;
  a1[84] = &unk_2290750;
  a1[89] = 0;
  a1[85] = 0;
  a1[87] = 0;
  a1[86] = 0;
  if (v44)
  {
    v45 = __clz(v44);
    if (v45 == 61)
    {
      v46 = 6;
    }

    else
    {
      v46 = (0xFFFFFFFFFFFFFFFFLL >> v45) - (0x1FFFFFFFFFFFFFFFuLL >> v45);
    }

    a1[89] = v46;
    operator new();
  }

  v47 = *a2;
  a1[90] = &unk_2290750;
  a1[95] = 0;
  a1[91] = 0;
  a1[93] = 0;
  a1[92] = 0;
  if (v47)
  {
    v48 = __clz(v47);
    if (v48 == 61)
    {
      v49 = 6;
    }

    else
    {
      v49 = (0xFFFFFFFFFFFFFFFFLL >> v48) - (0x1FFFFFFFFFFFFFFFuLL >> v48);
    }

    a1[95] = v49;
    operator new();
  }

  return a1;
}

void sub_1052908(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      do
      {
        *v3 = 0;
        *(v3 + 8) = xmmword_2297C80;
        v3 += 24;
      }

      while (v3 != v9);
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

    v10 = 24 * v5;
    v11 = 24 * v5 + 24 * a2;
    v12 = 24 * v5;
    do
    {
      *v12 = 0;
      *(v12 + 8) = xmmword_2297C80;
      v12 += 24;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v10 - v14;
    memcpy((v10 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t *sub_1052A9C(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 32);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_2674F50[v2])(&v3, v1);
  }

  *(v1 + 32) = 0;
  return result;
}

void sub_1052AF4(uint64_t *a1, void *a2, void *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      v6 = *a3;
      v5 = a3[1];
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = a2[1];
      *a2 = v6;
      a2[1] = v5;
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);

        std::__shared_weak_count::__release_weak(v7);
      }

      return;
    }

    v8 = a3;
    (off_2674F50[v4])(&v10, v3);
    a3 = v8;
  }

  *(v3 + 32) = -1;
  v9 = a3[1];
  *v3 = *a3;
  *(v3 + 8) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(v3 + 32) = 1;
}

__n128 sub_1052C08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  if (v4 != -1)
  {
    if (v4 == 2)
    {
      result = *a3;
      *(a2 + 12) = *(a3 + 12);
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_2674F50[v4])(&v8, v3);
    a3 = v6;
  }

  *(v3 + 32) = -1;
  result = *a3;
  v7 = *(a3 + 16);
  *v3 = *a3;
  *(v3 + 16) = v7;
  *(v3 + 32) = 2;
  return result;
}

uint64_t sub_1052CA0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = v2 - *a1;
  v4 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 3) + 1;
  if (v4 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - v1) >> 3) > v4)
  {
    v4 = 0x999999999999999ALL * ((*(a1 + 16) - v1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - v1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 8 * (v3 >> 3);
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = v7 - v3;
  if (v1 != v2)
  {
    v13 = v7 - v3;
    v9 = v1;
    do
    {
      *v8 = 0;
      *(v8 + 32) = -1;
      v10 = v9[8];
      if (v10 != -1)
      {
        v14 = v8;
        (off_2674F80[v10])(&v14, v9);
        *(v8 + 32) = v10;
      }

      v9 += 10;
      v8 += 40;
    }

    while (v9 != v2);
    do
    {
      v11 = v1[8];
      if (v11 != -1)
      {
        (off_2674F50[v11])(&v15, v1);
      }

      v1[8] = -1;
      v1 += 10;
    }

    while (v1 != v2);
    v1 = *a1;
    v8 = v13;
  }

  *a1 = v8;
  *(a1 + 8) = v7 + 40;
  *(a1 + 16) = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v7 + 40;
}

__n128 sub_1052E70(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  *a2 = 0uLL;
  return result;
}

__n128 sub_1052E84(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

void sub_1052E94(uint64_t a1, unint64_t a2)
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
      v14 = v11 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = xmmword_2297C00;
        *(v13 - 2) = 0;
        *(v13 - 1) = 0;
        *v13 = xmmword_2297C80;
        v13 += 3;
        v14 -= 2;
      }

      while (v14);
      v3 = v12;
      if (v11 != (v11 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_33:
        do
        {
          *v3 = xmmword_2297C00;
          *(v3 + 16) = 0;
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

    v15 = 24 * v5;
    v16 = 24 * v5 + 24 * a2;
    v17 = 24 * a2 - 24;
    v18 = 24 * v5;
    if (v17 < 0x18)
    {
      goto LABEL_34;
    }

    v19 = v17 / 0x18 + 1;
    v18 = v15 + 24 * (v19 & 0x1FFFFFFFFFFFFFFELL);
    v20 = (24 * v5 + 32);
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = xmmword_2297C00;
      *(v20 - 2) = 0;
      *(v20 - 1) = 0;
      *v20 = xmmword_2297C80;
      v20 += 3;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_34:
      do
      {
        *v18 = xmmword_2297C00;
        *(v18 + 16) = 0;
        v18 += 24;
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

uint64_t *sub_10530FC(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 32);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_2674F98[v2])(&v3, v1);
  }

  *(v1 + 32) = 0;
  return result;
}

void sub_1053154(uint64_t *a1, void *a2, void *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      v6 = *a3;
      v5 = a3[1];
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = a2[1];
      *a2 = v6;
      a2[1] = v5;
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);

        std::__shared_weak_count::__release_weak(v7);
      }

      return;
    }

    v8 = a3;
    (off_2674F98[v4])(&v10, v3);
    a3 = v8;
  }

  *(v3 + 32) = -1;
  v9 = a3[1];
  *v3 = *a3;
  *(v3 + 8) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(v3 + 32) = 1;
}

__n128 sub_1053268(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  if (v4 != -1)
  {
    if (v4 == 2)
    {
      result = *a3;
      *(a2 + 12) = *(a3 + 12);
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_2674F98[v4])(&v8, v3);
    a3 = v6;
  }

  *(v3 + 32) = -1;
  result = *a3;
  v7 = *(a3 + 16);
  *v3 = *a3;
  *(v3 + 16) = v7;
  *(v3 + 32) = 2;
  return result;
}

uint64_t sub_1053300(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = v2 - *a1;
  v4 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 3) + 1;
  if (v4 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - v1) >> 3) > v4)
  {
    v4 = 0x999999999999999ALL * ((*(a1 + 16) - v1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - v1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 8 * (v3 >> 3);
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = v7 - v3;
  if (v1 != v2)
  {
    v13 = v7 - v3;
    v9 = v1;
    do
    {
      *v8 = 0;
      *(v8 + 32) = -1;
      v10 = v9[8];
      if (v10 != -1)
      {
        v14 = v8;
        (off_2674FC8[v10])(&v14, v9);
        *(v8 + 32) = v10;
      }

      v9 += 10;
      v8 += 40;
    }

    while (v9 != v2);
    do
    {
      v11 = v1[8];
      if (v11 != -1)
      {
        (off_2674F98[v11])(&v15, v1);
      }

      v1[8] = -1;
      v1 += 10;
    }

    while (v1 != v2);
    v1 = *a1;
    v8 = v13;
  }

  *a1 = v8;
  *(a1 + 8) = v7 + 40;
  *(a1 + 16) = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v7 + 40;
}

__n128 sub_10534D0(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  *a2 = 0uLL;
  return result;
}

__n128 sub_10534E4(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

size_t *sub_10534F4(size_t *a1, unsigned int a2)
{
  *(a1 + 12) = 0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  sub_428E0(a1 + 3, a2);
  if (a1[2] - *a1 <= 0x3F7)
  {
    operator new();
  }

  return a1;
}

void sub_10535A8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_21E2018(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10535CC(uint64_t a1, uint64_t *a2)
{
  *a1 = a2;
  *(a1 + 34) = 0;
  *(a1 + 24) = 0x3E4CCCCD3F000000;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 32;
  *(a1 + 72) = 0xFFFFFFFF00000000;
  v3 = (a1 + 72);
  *(a1 + 80) = 0;
  v4 = a1 + 80;
  *(a1 + 8) = xmmword_2267060;
  *(a1 + 32) = 0;
  v5 = sub_101E508(a2);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_101EA90((a1 + 88), v5, &__p);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  *(a1 + 33) = 1;
  *(a1 + 72) = 0xFFFFFFFF00000000;
  v6 = malloc_type_malloc(8 * *(a1 + 64), 0x100004000313F17uLL);
  *(a1 + 80) = v6;
  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = (v6 + 8 * v7);
    v9 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v9 < 0xF || v6 < v4 && v3 < v8)
    {
      goto LABEL_14;
    }

    v10 = v9 + 1;
    v11 = vld1q_dup_f64(v3);
    v12 = v6 + 1;
    v13 = v10 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v12[-1] = v11;
      *v12 = v11;
      v12 += 2;
      v13 -= 4;
    }

    while (v13);
    v6 = (v6 + 8 * (v10 & 0x3FFFFFFFFFFFFFFCLL));
    if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_14:
      do
      {
        v6->f64[0] = *v3;
        v6 = (v6 + 8);
      }

      while (v6 != v8);
    }
  }

  return a1;
}

void sub_1053724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_34BE0((v11 + 88));
  if (!*v12)
  {
    _Unwind_Resume(a1);
  }

  free(*v12);
  _Unwind_Resume(a1);
}

void *sub_1053784(void *a1, uint64_t a2)
{
  v2 = a2;
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
  sub_10538E8(v5 + 103, v2);
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[98] - a1[96]) >> 4) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_1053888(_Unwind_Exception *a1)
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

size_t *sub_10538E8(size_t *a1, unsigned int a2)
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

void sub_10539AC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_21E2018(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10539D0(uint64_t a1, unsigned int *a2)
{
  v3 = sub_101E790(a1, *a2, 1);
  if (!v3)
  {
    return -1;
  }

  v4 = &v3[-*v3];
  if (*v4 < 9u)
  {
    return -1;
  }

  v5 = *(v4 + 4);
  if (!v5)
  {
    return -1;
  }

  v6 = sub_101E640(&v3[v5 + *&v3[v5]], a2[1]);
  v7 = (v6 - *v6);
  if (*v7 < 0xDu)
  {
    return -1;
  }

  v8 = v7[6];
  if (!v8)
  {
    return -1;
  }

  v9 = v6 + v8;
  LODWORD(v10) = *(v9 + 4);
  if (v10 >= 0xFFFFFFFE)
  {
    v10 = 4294967294;
  }

  else
  {
    v10 = v10;
  }

  v15 = *v9 | (v10 << 32);
  v16 = 0x7FFFFFFF;
  v11 = *(v9 + 8);
  LODWORD(v9) = *(v9 + 12);
  if (v9 >= 0xFFFFFFFE)
  {
    v9 = 4294967294;
  }

  else
  {
    v9 = v9;
  }

  v13 = v11 | (v9 << 32);
  v14 = 0x7FFFFFFF;
  sub_320C0(&v17, &v15, &v13);
  return v17;
}

double sub_1053AC0(uint64_t a1)
{
  LODWORD(result) = *(a1 + 16);
  v2 = 4;
  if (!vcvts_n_u32_f32(*&result, 2uLL))
  {
    do
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v2 *= 2;
    }

    while (!(*&result * v2));
  }

  if (*(a1 + 48) || v2 != *(a1 + 56))
  {

    *&result = sub_D5B9C0(a1, v2).u64[0];
  }

  return result;
}

void sub_1053B80(uint64_t **a1, unint64_t *a2, int *a3)
{
  v7 = a1[11];
  v6 = a1[12];
  if (v7 != v6)
  {
    v8 = v6 - v7 - 24;
    v9 = a1[11];
    if (v8 < 0x18)
    {
      goto LABEL_52;
    }

    v10 = v8 / 0x18 + 1;
    v9 = &v7[3 * (v10 & 0x1FFFFFFFFFFFFFFELL)];
    v11 = v7 + 3;
    v12 = v10 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      v13 = *v11;
      *(v11 - 2) = *(v11 - 3);
      v11[1] = v13;
      v11 += 6;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_52:
      do
      {
        v9[1] = *v9;
        v9 += 3;
      }

      while (v9 != v6);
    }
  }

  v14 = *a1;
  v15 = *a2;
  v16 = *a2 >> 16;
  v51 = 1;
  v17 = sub_101F374(*v14, HIDWORD(v15) & 0xFFFF0000FFFFFFFFLL | (v16 << 32), &v51);
  v18 = *a3;
  v19 = v18 + 1;
  v20 = sub_101E508(*a1);
  if (v18 + 1 > v20)
  {
    v21 = v18 + 1;
  }

  else
  {
    v21 = v20;
  }

  if (v19 < v20)
  {
    while (1)
    {
      v23 = *a1;
      v24 = *a2;
      v25 = *a2 >> 16;
      v52 = v19;
      v26 = sub_101F854(*v23, HIDWORD(v24) & 0xFFFF0000FFFFFFFFLL | (v25 << 32), (v24 >> 1) & 1, &v52);
      if (v26 > 0xFFFFFFFEFFFFFFFFLL || v26 == 0)
      {
        goto LABEL_14;
      }

      v28 = &a1[11][3 * v19];
      v30 = v28[1];
      v29 = v28[2];
      if (v30 < v29)
      {
        break;
      }

      v31 = *v28;
      v32 = v30 - *v28;
      v33 = v32 >> 3;
      v34 = (v32 >> 3) + 1;
      if (v34 >> 61)
      {
        goto LABEL_48;
      }

      v35 = v29 - v31;
      if (v35 >> 2 > v34)
      {
        v34 = v35 >> 2;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v36 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = v34;
      }

      if (v36)
      {
        if (!(v36 >> 61))
        {
          operator new();
        }

LABEL_49:
        sub_1808();
      }

      *(8 * v33) = v26;
      v37 = 8 * v33 + 8;
      memcpy(0, v31, v32);
      *v28 = 0;
      v28[1] = v37;
      v28[2] = 0;
      if (v31)
      {
        operator delete(v31);
      }

      v28[1] = v37;
      if (v17)
      {
        goto LABEL_34;
      }

LABEL_14:
      if (v21 == ++v19)
      {
        return;
      }
    }

    *v30 = v26;
    v28[1] = (v30 + 1);
    if (!v17)
    {
      goto LABEL_14;
    }

LABEL_34:
    v38 = &a1[11][3 * v19];
    v39 = *a1;
    v40 = *a2;
    v41 = *a2 >> 16;
    v53 = v19;
    v42 = sub_101F854(*v39, HIDWORD(v40) & 0xFFFF0000FFFFFFFFLL | (v41 << 32), (v40 & 2) == 0, &v53);
    v44 = v38[1];
    v43 = v38[2];
    if (v44 < v43)
    {
      *v44 = v42;
      v22 = (v44 + 1);
    }

    else
    {
      v45 = *v38;
      v46 = v44 - *v38;
      v47 = v46 >> 3;
      v48 = (v46 >> 3) + 1;
      if (v48 >> 61)
      {
LABEL_48:
        sub_1794();
      }

      v49 = v43 - v45;
      if (v49 >> 2 > v48)
      {
        v48 = v49 >> 2;
      }

      if (v49 >= 0x7FFFFFFFFFFFFFF8)
      {
        v50 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v48;
      }

      if (v50)
      {
        if (!(v50 >> 61))
        {
          operator new();
        }

        goto LABEL_49;
      }

      *(8 * v47) = v42;
      v22 = 8 * v47 + 8;
      memcpy(0, v45, v46);
      *v38 = 0;
      v38[1] = v22;
      v38[2] = 0;
      if (v45)
      {
        operator delete(v45);
      }
    }

    v38[1] = v22;
    goto LABEL_14;
  }
}

void sub_1053EDC(uint64_t **a1, void *a2)
{
  if (*a2 == a2[1])
  {
    return;
  }

  v158 = 0;
  v156 = 0x3E4CCCCD3F000000;
  v159 = 0;
  v160 = 0xFFFFFFFF00000000;
  v161 = 0;
  v162 = 0;
  v155 = xmmword_2267060;
  v157 = 256;
  v163 = 32;
  v164 = 0xFFFFFFFF00000000;
  v165 = malloc_type_malloc(0x100uLL, 0x100004000313F17uLL);
  v2 = vdupq_n_s64(0xFFFFFFFF00000000);
  v3 = (v165 + 16);
  v4 = 32;
  do
  {
    v3[-1] = v2;
    *v3 = v2;
    v3 += 2;
    v4 -= 4;
  }

  while (v4);
  v152 = 0;
  v153 = 0;
  v154 = 0;
  v5 = a1[12] - a1[11];
  if (!v5)
  {
    goto LABEL_219;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v148 = 0;
  v149 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v138 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  do
  {
    v147 = v11;
    __p = v9;
    if (v11 < (a2[1] - *a2) >> 2)
    {
      v140 = *(*a2 + 4 * v11);
      if (v140)
      {
        v14 = v10;
        v16 = a1[11];
        v15 = a1[12];
        v17 = &v16[3 * v11];
        if (&v152 != v17)
        {
          sub_31F64(&v152, *v17, v17[1], (v17[1] - *v17) >> 3);
          v7 = v152;
          v6 = v153;
        }

        v18 = 126 - 2 * __clz((v6 - v7) >> 3);
        if (v6 == v7)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }

        sub_2D31D4(v7, v6, v166, v19, 1);
        v20 = v152;
        v6 = v153;
        if (v152 != v153)
        {
          v21 = v152;
          do
          {
            v22 = v21 + 2;
            if (v21 + 2 == v153)
            {
              goto LABEL_25;
            }

            v23 = *v21;
            v24 = v21[1];
            LODWORD(v25) = v21[2];
            v26 = v21[3];
            v27 = v23 == v25 && v24 == v26;
            v21 = v22;
          }

          while (!v27);
          v28 = (v22 + 2);
          v29 = v22 - 2;
          if (v28 == v153)
          {
            v30 = (v29 + 2);
            if (v29 + 2 == v153)
            {
              goto LABEL_25;
            }

LABEL_34:
            v6 = v30;
            v153 = v30;
            if (v20 == v30)
            {
              goto LABEL_45;
            }

            goto LABEL_39;
          }

          do
          {
            if (v25 != v28->i32[0] || v29[1] != v28->i32[1])
            {
              v25 = v28->i64[0];
              *(v29 + 1) = v28->i64[0];
              v29 += 2;
            }

            v28 = (v28 + 8);
          }

          while (v28 != v6);
          v6 = v153;
          v30 = (v29 + 2);
          if (v29 + 2 != v153)
          {
            goto LABEL_34;
          }
        }

LABEL_25:
        if (v20 == v6)
        {
LABEL_45:
          v141 = 0;
          v143 = -1 - 0x5555555555555555 * (v15 - v16);
          v13 = v8;
          v10 = v14;
          while (1)
          {
            v150 = v6;
            if (v20 == v6)
            {
              goto LABEL_47;
            }

            do
            {
              while (1)
              {
                while (1)
                {
                  v34 = v13;
                  v35 = v20->i64[0];
                  v36 = **a1;
                  v167 = 1;
                  v168 = v35;
                  v166[0] = &v167;
                  v166[1] = &v168;
                  v37 = *(v36 + 3856) + 1;
                  *(v36 + 3856) = v37;
                  if (!*v36)
                  {
                    goto LABEL_211;
                  }

                  if (*(v36 + 688) == v35)
                  {
                    break;
                  }

                  if (*(v36 + 712) == v35)
                  {
                    ++*(v36 + 3864);
                    *(v36 + 720) = v37;
                    v38 = *(v36 + 728);
                    if (!v38)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_78;
                  }

                  if (*(v36 + 736) == v35)
                  {
                    ++*(v36 + 3864);
                    *(v36 + 744) = v37;
                    v38 = *(v36 + 752);
                    if (!v38)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_78;
                  }

                  if (*(v36 + 760) == v35)
                  {
                    ++*(v36 + 3864);
                    *(v36 + 768) = v37;
                    v38 = *(v36 + 776);
                    if (!v38)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_78;
                  }

                  v39 = *(v36 + 744);
                  v40 = *(v36 + 720);
                  v41 = *(v36 + 696);
                  v42 = *(v36 + 768);
                  v38 = sub_2D52A4(*v36, 7, v35, 1);
                  if (v41 >= v37)
                  {
                    v43 = v37;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  v44 = 28;
                  if (v41 >= v37)
                  {
                    v44 = 0;
                  }

                  if (v40 < v43)
                  {
                    v43 = v40;
                    v44 = 29;
                  }

                  if (v39 < v43)
                  {
                    v44 = 30;
                    v43 = v39;
                  }

                  v45 = v42 >= v43;
                  v46 = 31;
                  if (v45)
                  {
                    v46 = v44;
                  }

                  v47 = v36 + 16 + 24 * v46;
                  *v47 = v168;
                  *(v47 + 8) = *(v36 + 3856);
                  *(v47 + 16) = v38;
                  if (v38)
                  {
                    goto LABEL_78;
                  }

                  sub_101E964(v166);
LABEL_211:
                  v13 = v34;
                  v20 = (v20 + 8);
                  if (v20 == v150)
                  {
                    goto LABEL_46;
                  }
                }

                ++*(v36 + 3864);
                *(v36 + 696) = v37;
                v38 = *(v36 + 704);
                if (!v38)
                {
                  goto LABEL_211;
                }

LABEL_78:
                v48 = (v38 + *v38);
                v49 = (v48 - *v48);
                if (*v49 < 9u)
                {
                  goto LABEL_211;
                }

                v50 = v49[4];
                if (!v50)
                {
                  goto LABEL_211;
                }

                v51 = sub_101E640((v48 + v50 + *(v48 + v50)), HIDWORD(v35));
                v52 = (v51 - *v51);
                if (*v52 < 9u)
                {
                  goto LABEL_211;
                }

                v53 = v52[4];
                v54 = v150;
                v13 = v34;
                if (v53)
                {
                  v55 = (v51 + v53 + *(v51 + v53));
                  v56 = *v55;
                  if (v56)
                  {
                    break;
                  }
                }

LABEL_51:
                v20 = (v20 + 8);
                if (v20 == v54)
                {
                  goto LABEL_46;
                }
              }

              v57 = 8 * v56;
              v58 = (v55 + 1);
              v59 = __p;
              v60 = __p;
              do
              {
                while (v59 < v10)
                {
                  v61 = *v58++;
                  *v59 = v61;
                  v59 += 8;
                  v57 -= 8;
                  if (!v57)
                  {
                    goto LABEL_96;
                  }
                }

                v62 = v59 - v60;
                v63 = (v59 - v60) >> 3;
                v64 = v63 + 1;
                if ((v63 + 1) >> 61)
                {
                  sub_1794();
                }

                if ((v10 - v60) >> 2 > v64)
                {
                  v64 = (v10 - v60) >> 2;
                }

                if (v10 - v60 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v65 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v65 = v64;
                }

                if (v65)
                {
                  if (!(v65 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                *(8 * v63) = *v58;
                v59 = (8 * v63 + 8);
                memcpy(0, v60, v62);
                v60 = 0;
                v10 = 0;
                ++v58;
                v57 -= 8;
              }

              while (v57);
LABEL_96:
              if (v60 != v59)
              {
                v66 = v60;
                __pa = v59;
                v146 = v10;
                v13 = v34;
                while (1)
                {
                  if (v162 != v161)
                  {
                    v68 = v163 - 1;
                    v69 = *v66;
                    v70 = __ROR8__(*v66, 32);
                    v71 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v70 ^ (v70 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v70 ^ (v70 >> 33))) >> 33));
                    v72 = (v71 ^ (v71 >> 33)) & (v163 - 1);
                    v73 = (v165 + 8 * v72);
                    v75 = *v73;
                    v74 = v73[1];
                    if (v164 != *v73 || HIDWORD(v164) != v74)
                    {
                      if (v161)
                      {
                        v77 = 1;
                        while (*&v160 == __PAIR64__(v74, v75) || __PAIR64__(v74, v75) != v69)
                        {
                          v72 = (v72 + v77) & v68;
                          v78 = (v165 + 8 * v72);
                          v75 = *v78;
                          v74 = v78[1];
                          ++v77;
                          if (v164 == v75 && HIDWORD(v164) == v74)
                          {
                            goto LABEL_123;
                          }
                        }
                      }

                      else
                      {
                        v80 = 1;
                        while (__PAIR64__(v74, v75) != v69)
                        {
                          v72 = (v72 + v80) & v68;
                          v81 = (v165 + 8 * v72);
                          v75 = *v81;
                          v74 = v81[1];
                          ++v80;
                          if (v164 == v75 && HIDWORD(v164) == v74)
                          {
                            goto LABEL_123;
                          }
                        }
                      }

                      if (v72 != -1 && v165 + 8 * v72 != v165 + 8 * v163)
                      {
                        goto LABEL_100;
                      }
                    }
                  }

LABEL_123:
                  if (v149 >= v148)
                  {
                    v83 = v149 - v13;
                    v84 = (v149 - v13) >> 3;
                    v85 = v84 + 1;
                    if ((v84 + 1) >> 61)
                    {
                      sub_1794();
                    }

                    if ((v148 - v13) >> 2 > v85)
                    {
                      v85 = (v148 - v13) >> 2;
                    }

                    if (v148 - v13 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v86 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v86 = v85;
                    }

                    if (v86)
                    {
                      if (!(v86 >> 61))
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    v87 = v13;
                    v13 = 0;
                    *(8 * v84) = *v66;
                    v148 = 0;
                    v149 = (8 * v84 + 8);
                    memcpy(0, v87, v83);
                    if (v87)
                    {
                      operator delete(v87);
                    }

                    v10 = v146;
                  }

                  else
                  {
                    v149->i64[0] = *v66;
                    v149 = (v149 + 8);
                  }

                  sub_101F9D8(&v155, 1);
                  if (sub_10550EC(&v155, v66) == -1)
                  {
                    if ((v162 - v161) >= 0x1FFFFFFFFFFFFFFFLL)
                    {
                      exception = __cxa_allocate_exception(0x10uLL);
                      std::logic_error::logic_error(exception, "insert overflow");
                    }

                    if (v161 && (v89 = vceq_s32(v160, *(v165 + 8 * v88)), (v89.i32[0] & v89.i32[1] & 1) != 0))
                    {
                      --v161;
                    }

                    else
                    {
                      ++v162;
                    }

                    *(v165 + v88) = *v66;
                  }

                  v90 = &a1[11][3 * v147];
                  v92 = v90[1];
                  v91 = v90[2];
                  if (v92 >= v91)
                  {
                    break;
                  }

                  *v92 = *v66;
                  v90[1] = (v92 + 1);
                  if (v147 != v143)
                  {
                    goto LABEL_159;
                  }

LABEL_100:
                  v66 += 8;
                  if (v66 == v59)
                  {
                    __p = v60;
                    goto LABEL_51;
                  }
                }

                v93 = *v90;
                v94 = v92 - *v90;
                v95 = (v94 >> 3) + 1;
                if (v95 >> 61)
                {
                  sub_1794();
                }

                v96 = v13;
                v97 = v91 - v93;
                if (v97 >> 2 > v95)
                {
                  v95 = v97 >> 2;
                }

                if (v97 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v98 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v98 = v95;
                }

                if (v98)
                {
                  if (!(v98 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v99 = (8 * (v94 >> 3));
                *v99 = *v66;
                v100 = v99 + 1;
                memcpy(0, v93, v94);
                *v90 = 0;
                v90[1] = v100;
                v90[2] = 0;
                if (v93)
                {
                  operator delete(v93);
                }

                v59 = __pa;
                v10 = v146;
                v13 = v96;
                v90[1] = v100;
                if (v147 == v143)
                {
                  goto LABEL_100;
                }

LABEL_159:
                v142 = v13;
                v101 = a1[11];
                v102 = *v66;
                v103 = **a1;
                if (atomic_load_explicit(byte_2732E58, memory_order_acquire))
                {
                  v104 = HIDWORD(v102);
                  if (qword_2732E50 == v102)
                  {
                    goto LABEL_161;
                  }

LABEL_162:
                  v105 = *(v103 + 3856) + 1;
                  *(v103 + 3856) = v105;
                  if (*v103)
                  {
                    if (*(v103 + 688) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 696) = v105;
                      v106 = *(v103 + 704);
                      if (!v106)
                      {
                        goto LABEL_193;
                      }

LABEL_188:
                      v113 = (v106 + *v106);
                      v114 = (v113 - *v113);
                      if (*v114 >= 9u)
                      {
                        v115 = v114[4];
                        if (v115)
                        {
                          v116 = sub_101E640((v113 + v115 + *(v113 + v115)), v104);
                          v117 = (v116 - *v116);
                          if (*v117 < 0xBu)
                          {
                            v120 = 0;
                            v119 = 0xFFFFFFFF00000000;
                            v54 = v150;
                          }

                          else
                          {
                            v118 = v117[5];
                            v54 = v150;
                            if (!v118)
                            {
                              goto LABEL_193;
                            }

                            v120 = *(v116 + v118);
                            v119 = v120 & 0xFFFFFFFF00000000;
                            v120 = v120;
                          }

LABEL_194:
                          v121 = &v101[3 * v147];
                          v122 = v120 | v119;
                          v124 = v121[4];
                          v123 = v121[5];
                          if (v124 < v123)
                          {
                            *v124 = v122;
                            v67 = v124 + 8;
                            v10 = v146;
                          }

                          else
                          {
                            v125 = v121[3];
                            v126 = v124 - v125;
                            v127 = (v124 - v125) >> 3;
                            v128 = v127 + 1;
                            if ((v127 + 1) >> 61)
                            {
                              sub_1794();
                            }

                            v129 = v123 - v125;
                            if (v129 >> 2 > v128)
                            {
                              v128 = v129 >> 2;
                            }

                            if (v129 >= 0x7FFFFFFFFFFFFFF8)
                            {
                              v130 = 0x1FFFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v130 = v128;
                            }

                            if (v130)
                            {
                              if (!(v130 >> 61))
                              {
                                operator new();
                              }

                              sub_1808();
                            }

                            v131 = (v124 - v125) >> 3;
                            v132 = (8 * v127);
                            v133 = (8 * v127 - 8 * v131);
                            *v132 = v122;
                            v67 = v132 + 1;
                            memcpy(v133, v125, v126);
                            v121[3] = v133;
                            v121[4] = v67;
                            v121[5] = 0;
                            if (v125)
                            {
                              operator delete(v125);
                            }

                            v10 = v146;
                            v54 = v150;
                          }

                          v13 = v142;
                          v121[4] = v67;
                          v59 = __pa;
                          goto LABEL_100;
                        }
                      }
                    }

                    else if (*(v103 + 712) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 720) = v105;
                      v106 = *(v103 + 728);
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }

                    else if (*(v103 + 736) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 744) = v105;
                      v106 = *(v103 + 752);
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }

                    else if (*(v103 + 760) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 768) = v105;
                      v106 = *(v103 + 776);
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }

                    else
                    {
                      v107 = *(v103 + 720);
                      v108 = *(v103 + 696);
                      v136 = *(v103 + 768);
                      v137 = *(v103 + 744);
                      v106 = sub_2D52A4(*v103, 7, v102, 1);
                      if (v108 >= v105)
                      {
                        v109 = v105;
                      }

                      else
                      {
                        v109 = v108;
                      }

                      v110 = 28;
                      if (v108 >= v105)
                      {
                        v110 = 0;
                      }

                      if (v107 < v109)
                      {
                        v109 = v107;
                        v110 = 29;
                      }

                      if (v137 < v109)
                      {
                        v110 = 30;
                        v109 = v137;
                      }

                      v45 = v136 >= v109;
                      v111 = 31;
                      if (v45)
                      {
                        v111 = v110;
                      }

                      v112 = v103 + 16 + 24 * v111;
                      *v112 = v102;
                      *(v112 + 8) = *(v103 + 3856);
                      *(v112 + 16) = v106;
                      v54 = v150;
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }
                  }
                }

                else
                {
                  sub_21E6BE8();
                  v104 = HIDWORD(v102);
                  if (qword_2732E50 != v102)
                  {
                    goto LABEL_162;
                  }

LABEL_161:
                  if (HIDWORD(qword_2732E50) != v104)
                  {
                    goto LABEL_162;
                  }
                }

LABEL_193:
                v120 = 0;
                v119 = 0xFFFFFFFF00000000;
                goto LABEL_194;
              }

              __p = v60;
              v13 = v34;
              v20 = (v20 + 8);
            }

            while (v20 != v150);
LABEL_46:
            v20 = v152;
LABEL_47:
            v7 = v13;
            v6 = v149;
            v13 = v20;
            v152 = v7;
            v153 = v149;
            v20 = v7;
            v12 = v154;
            v154 = v148;
            v148 = v12;
            v149 = v13;
            v8 = v13;
            if (++v141 == v140)
            {
              goto LABEL_7;
            }
          }
        }

        do
        {
LABEL_39:
          sub_101F9D8(&v155, 1);
          if (sub_10550EC(&v155, v20) == -1)
          {
            if ((v162 - v161) >= 0x1FFFFFFFFFFFFFFFLL)
            {
              v135 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v135, "insert overflow");
            }

            if (v161 && (v33 = vceq_s32(v160, *(v165 + 8 * v32)), (v33.i32[0] & v33.i32[1] & 1) != 0))
            {
              --v161;
            }

            else
            {
              ++v162;
            }

            *(v165 + v32) = v20->i64[0];
          }

          v20 = (v20 + 8);
        }

        while (v20 != v6);
        v20 = v152;
        v6 = v153;
        goto LABEL_45;
      }
    }

    v12 = v148;
    v13 = v149;
LABEL_7:
    v11 = v147 + 1;
    v148 = v12;
    v149 = v13;
    v9 = __p;
  }

  while (v147 + 1 != v138);
  if (v8)
  {
    operator delete(v8);
  }

LABEL_219:
  if (v152)
  {
    v153 = v152;
    operator delete(v152);
  }

  if (v165)
  {
    free(v165);
  }
}

void sub_1054DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  if (!a36)
  {
    _Unwind_Resume(exception_object);
  }

  free(a36);
  _Unwind_Resume(exception_object);
}

int32x2_t *sub_1054E9C(int32x2_t *result)
{
  v1 = result[11];
  v2 = result[12];
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *v1;
      v5 = v1[1];
      while (v4 != v5)
      {
        if (!*v4 || *(v4 + 1) == -1)
        {
          goto LABEL_7;
        }

        sub_101F9D8(&v3[1], 1);
        v6 = *&v3[8] - 1;
        v7 = *v4;
        v8 = __ROR8__(*v4, 32);
        v9 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v8 ^ (v8 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v8 ^ (v8 >> 33))) >> 33));
        v10 = v9 ^ (v9 >> 33);
        v11 = v3[10];
        v12 = v3[9].i32[0];
        v13 = v3[9].i32[1];
        v14 = v10 & v6;
        v15 = (*&v11 + 8 * (v10 & v6));
        result = *v15;
        v16 = v15[1];
        v17 = v3[6];
        if (v12 == result && v13 == v16)
        {
          goto LABEL_28;
        }

        if (v17)
        {
          v19 = -1;
          v20 = 1;
          do
          {
            if (v3[5].i32[0] == result && v3[5].i32[1] == v16)
            {
              if (v19 == -1)
              {
                v19 = v14;
              }
            }

            else if (__PAIR64__(v16, result) == v7)
            {
              goto LABEL_39;
            }

            v14 = (v14 + v20) & v6;
            v21 = (*&v11 + 8 * v14);
            result = *v21;
            v16 = v21[1];
            ++v20;
          }

          while (v12 != result || v13 != v16);
          if (v19 == -1)
          {
LABEL_28:
            v19 = v14;
          }

          v23 = v3[7];
          if (*&v23 - *&v17 >= 0x1FFFFFFFFFFFFFFFuLL)
          {
            goto LABEL_41;
          }

LABEL_30:
          if (*&v17 && (v24 = vceq_s32(v3[5], *(*&v11 + 8 * v19)), (v24.i32[0] & v24.i32[1] & 1) != 0))
          {
            v3[6] = (*&v17 - 1);
          }

          else
          {
            v3[7] = (*&v23 + 1);
          }

          *(*&v11 + 8 * v19) = *v4;
          goto LABEL_7;
        }

        v25 = 1;
        while (__PAIR64__(v16, result) != v7)
        {
          v14 = (v14 + v25) & v6;
          v26 = (*&v11 + 8 * v14);
          result = *v26;
          v16 = v26[1];
          ++v25;
          if (v12 == result && v13 == v16)
          {
            goto LABEL_28;
          }
        }

LABEL_39:
        if (v14 == -1)
        {
          v19 = -1;
          v23 = v3[7];
          if (*&v23 - *&v17 >= 0x1FFFFFFFFFFFFFFFuLL)
          {
LABEL_41:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }

          goto LABEL_30;
        }

LABEL_7:
        ++v4;
      }

      v1 += 3;
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_10550EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56) - 1;
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = *(a1 + 72);
  v9 = *(a1 + 64);
  v10 = *(a1 + 68);
  result = v7 & v3;
  v12 = (v8 + 8 * (v7 & v3));
  v14 = *v12;
  v13 = v12[1];
  if (v9 == *v12 && v10 == v13)
  {
    return -1;
  }

  if (*(a1 + 40))
  {
    v17 = *(a1 + 32);
    v16 = *(a1 + 36);
    v18 = -1;
    v19 = 1;
    do
    {
      if (v17 == v14 && v16 == v13)
      {
        if (v18 == -1)
        {
          v18 = result;
        }
      }

      else if (__PAIR64__(v13, v14) == v4)
      {
        return result;
      }

      result = (result + v19) & v3;
      v20 = (v8 + 8 * result);
      v14 = *v20;
      v13 = v20[1];
      ++v19;
    }

    while (v9 != v14 || v10 != v13);
    if (v18 != -1)
    {
      return -1;
    }

    return -1;
  }

  v22 = 1;
  while (__PAIR64__(v13, v14) != v4)
  {
    result = (result + v22) & v3;
    v23 = (v8 + 8 * result);
    v14 = *v23;
    v13 = v23[1];
    ++v22;
    if (v9 == v14 && v10 == v13)
    {
      return -1;
    }
  }

  return result;
}

unint64_t sub_1055218(uint64_t a1, unsigned int *a2)
{
  if (atomic_load_explicit(byte_2732E58, memory_order_acquire))
  {
    v3 = *a2;
    if (v3 != qword_2732E50)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = a1;
    sub_21E13C0();
    a1 = v11;
    v3 = *a2;
    if (*a2 != qword_2732E50)
    {
      goto LABEL_4;
    }
  }

  if (a2[1] == HIDWORD(qword_2732E50))
  {
LABEL_10:
    LODWORD(v6) = 0;
    return v6 | 0xFFFFFFFF00000000;
  }

LABEL_4:
  v4 = sub_101E790(a1, v3, 1);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = &v4[-*v4];
  if (*v5 < 9u)
  {
    goto LABEL_10;
  }

  v6 = *(v5 + 4);
  if (v6)
  {
    v7 = sub_101E640(&v4[v6 + *&v4[v6]], a2[1]);
    v8 = (v7 - *v7);
    if (*v8 >= 0xBu)
    {
      v9 = v8[5];
      if (v9)
      {
        return *(v7 + v9);
      }
    }

    goto LABEL_10;
  }

  return v6 | 0xFFFFFFFF00000000;
}

unint64_t sub_1055328@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = 0x2127599BF4325C37 * (*a2 ^ (*a2 >> 23));
  v6 = (v5 ^ ~(v5 >> 47)) + ((v5 ^ (v5 >> 47)) << 21);
  v7 = 21 * ((265 * (v6 ^ (v6 >> 24))) ^ ((265 * (v6 ^ (v6 >> 24))) >> 14));
  v8 = 2147483649u * (v7 ^ (v7 >> 28));
  v9 = (a1 + 48 * (((((v7 ^ (v7 >> 28)) >> 8) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 16)) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 24)) & 0xF));
  v10 = v8 >> 7;
  v11 = v9[3];
  while (1)
  {
    v12 = v10 & v11;
    v13 = *(*v9 + v12);
    v14 = ((v13 ^ (0x101010101010101 * (v8 & 0x7F))) - 0x101010101010101) & ~(v13 ^ (0x101010101010101 * (v8 & 0x7F))) & 0x8080808080808080;
    if (v14)
    {
      break;
    }

LABEL_5:
    if ((v13 & (~v13 << 6) & 0x8080808080808080) != 0)
    {
      result = sub_1055460(v9, v8);
      *a3 = v9;
      *(a3 + 8) = result;
      *(a3 + 16) = 1;
      return result;
    }

    v3 += 8;
    v10 = v3 + v12;
  }

  while (1)
  {
    result = (v12 + (__clz(__rbit64(v14)) >> 3)) & v11;
    if (*(v9[1] + 32 * result) == v4)
    {
      break;
    }

    v14 &= v14 - 1;
    if (!v14)
    {
      goto LABEL_5;
    }
  }

  *a3 = v9;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

unint64_t sub_1055460(void *a1, unint64_t a2)
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
      sub_1055558(a1);
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

uint64_t sub_1055558(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    v2 = (&dword_0 + 1);
LABEL_4:
    sub_1055588(a1, v2);
  }

  if (*(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    v2 = ((2 * v1) | 1);
    goto LABEL_4;
  }

  return sub_105576C(a1);
}

uint64_t sub_105576C(uint64_t result)
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
      goto LABEL_27;
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
LABEL_27:
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
        v18 = 32 * i;
        v19 = *(*(result + 8) + 32 * i);
        v20 = ((0x2127599BF4325C37 * (v19 ^ (v19 >> 23))) ^ ~((0x2127599BF4325C37 * (v19 ^ (v19 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v19 ^ (v19 >> 23))) ^ ((0x2127599BF4325C37 * (v19 ^ (v19 >> 23))) >> 47)) << 21);
        v21 = 21 * ((265 * (v20 ^ (v20 >> 24))) ^ ((265 * (v20 ^ (v20 >> 24))) >> 14));
        v22 = 2147483649u * (v21 ^ (v21 >> 28));
        v23 = v13 & (v22 >> 7);
        v24 = *(v17->i64 + v23) & (~*(v17->i64 + v23) << 7) & 0x8080808080808080;
        if (v24)
        {
          v15 = v13 & (v22 >> 7);
        }

        else
        {
          v25 = 8;
          v15 = v13 & (v22 >> 7);
          do
          {
            v15 = (v15 + v25) & v13;
            v25 += 8;
            v24 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v24);
        }

        v16 = (v15 + (__clz(__rbit64(v24)) >> 3)) & v13;
        if ((((v16 - v23) ^ (i - v23)) & v13) > 7)
        {
          v26 = v17->u8[v16];
          v17->i8[v16] = v22 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v22 & 0x7F;
          v27 = *(result + 8);
          if (v26 == 128)
          {
            v28 = (v27 + 32 * v16);
            v29 = v27 + 32 * i;
            *v28 = *v29;
            v28[1] = 0;
            v28[2] = 0;
            v28[3] = 0;
            *(v28 + 1) = *(v29 + 8);
            v28[3] = *(v29 + 24);
            *(v29 + 16) = 0;
            *(v29 + 24) = 0;
            *(v29 + 8) = 0;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v30 = (v27 + v18);
            v31 = *v30;
            v32 = v30[3];
            v33 = *(v30 + 1);
            v30[2] = 0;
            v30[3] = 0;
            v30[1] = 0;
            v34 = *(result + 8);
            v35 = (v34 + v18);
            v36 = v34 + 32 * v16;
            *v35 = *v36;
            v35[1] = 0;
            v35[2] = 0;
            v35[3] = 0;
            *(v35 + 1) = *(v36 + 8);
            v35[3] = *(v36 + 24);
            *(v36 + 16) = 0;
            *(v36 + 24) = 0;
            *(v36 + 8) = 0;
            v37 = *(result + 8) + 32 * v16;
            *v37 = v31;
            *(v37 + 8) = v33;
            *(v37 + 24) = v32;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v22 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v22 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v38 = i - (i >> 3);
    v39 = i == 7;
    v40 = 6;
    if (!v39)
    {
      v40 = v38;
    }

    *(result + 40) = v40 - *(result + 16);
  }

  else
  {
    *(result + 40) = -*(result + 16);
  }

  return result;
}

void *sub_1055A68(void ***a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
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
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  v8 = a2[1];
  if (v8 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *&dword_18[8 * v2] = a2[3];
  v9 = *a1;
  v10 = a1[1];
  v11 = (v7 + *a1 - v10);
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = (v7 + *a1 - v10);
    do
    {
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      *v13 = *v12;
      v14 = *(v12 + 3);
      v13[2] = *(v12 + 2);
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      v13[3] = v14;
      v12 += 32;
      v13 += 4;
    }

    while (v12 != v10);
    do
    {
      v15 = *v9;
      if (*v9)
      {
        *(v9 + 1) = v15;
        operator delete(v15);
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = (v7 + 32);
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return (v7 + 32);
}

void sub_1055C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  sub_DA13F4(va);
  _Unwind_Resume(a1);
}

void sub_1055C88(uint64_t a1, unsigned int *a2, unsigned __int16 *a3, void *a4)
{
  a4[1] = *a4;
  if (!*(a1 + 3880))
  {
    v32[1] = v7;
    v32[2] = v6;
    v32[9] = v4;
    v32[10] = v5;
    v11 = sub_3BF72C(a1 + 8, *a2, 1);
    if (v11)
    {
      v12 = &v11[-*v11];
      if (*v12 >= 9u)
      {
        v13 = *(v12 + 4);
        if (v13)
        {
          v14 = &v11[v13 + *&v11[v13]];
          v15 = a2[1];
          if (*v14 > v15)
          {
            v16 = &v14[4 * v15 + 4 + *&v14[4 * v15 + 4]];
            v17 = &v16[-*v16];
            if (*v17 >= 5u)
            {
              v18 = *(v17 + 2);
              if (v18)
              {
                v19 = &v16[v18 + *&v16[v18]];
                v20 = *a3;
                if (*v19 > v20)
                {
                  v21 = &v19[4 * v20 + 4 + *&v19[4 * v20 + 4]];
                  v22 = &v21[-*v21];
                  if (*v22 >= 5u)
                  {
                    v23 = *(v22 + 2);
                    if (v23)
                    {
                      if (*&v21[v23 + *&v21[v23]] > ((a4[2] - *a4) >> 5))
                      {
                        operator new();
                      }

                      v24 = &v21[-*v21];
                      if (*v24 < 5u)
                      {
                        v25 = 0;
                      }

                      else
                      {
                        v25 = *(v24 + 2);
                        if (v25)
                        {
                          v25 = (v25 + v21 + *(v25 + v21));
                        }
                      }

                      v26 = *v25;
                      if (v26)
                      {
                        v27 = 12 * v26;
                        v28 = a4[1];
                        v29 = v25 + 7;
                        do
                        {
                          while (1)
                          {
                            v32[0] = v29 - 5;
                            if (v28 < a4[2])
                            {
                              break;
                            }

                            v28 = sub_10561F8(a4, v32);
                            a4[1] = v28;
                            v29 += 6;
                            v27 -= 12;
                            if (!v27)
                            {
                              return;
                            }
                          }

                          *(v28 + 8) = -1;
                          *(v28 + 16) = -NAN;
                          *(v28 + 24) = 0x7FFFFFFFFFFFFFFFLL;
                          *v28 = *(v29 - 5) | (*(v29 - 3) << 32);
                          *(v28 + 8) = *(v29 - 2);
                          v30 = *(v29 - 1);
                          if (v30 != 0xFFFF)
                          {
                            v31 = *v29;
                            *(v28 + 16) = v30;
                            *(v28 + 20) = v31;
                            *(v28 + 24) = 0;
                          }

                          v28 += 32;
                          a4[1] = v28;
                          v29 += 6;
                          v27 -= 12;
                        }

                        while (v27);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

char *sub_1055EF8(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 1744) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1752) = v3;
    v4 = *(a1 + 1760);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1768) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1776) = v3;
    v4 = *(a1 + 1784);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1792) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1800) = v3;
    v4 = *(a1 + 1808);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1816) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1824) = v3;
    v4 = *(a1 + 1832);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 1800);
    v8 = *(a1 + 1776);
    v9 = *(a1 + 1752);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 1752);
    }

    v11 = 72;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 1776);
    }

    v13 = 73;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 1800);
    }

    v15 = *(a1 + 1824);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 74;
    }

    v18 = sub_2D52A4(*a1, 18, a2, 1);
    v19 = 75;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_10560CC(v21);
  return 0;
}

uint64_t sub_10560CC(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0x12u);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_10561C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10561F8(uint64_t a1, unsigned __int16 **a2)
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
  v8 = *a2;
  *v7 = 0xFFFFFFFF00000000;
  *(v7 + 8) = -1;
  *(v7 + 16) = -NAN;
  *(v7 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  if (v8)
  {
    *v7 = *v8 | (v8[2] << 32);
    dword_8[8 * v2] = v8[3];
    v9 = v8[4];
    if (v9 != 0xFFFF)
    {
      v10 = v8[5];
      dword_10[8 * v2] = v9;
      dword_14[8 * v2] = v10;
      *&dword_18[8 * v2] = 0;
    }
  }

  v11 = v7 + 32;
  v12 = *a1;
  v13 = *(a1 + 8) - *a1;
  v14 = v7 - v13;
  memcpy((v7 - v13), *a1, v13);
  *a1 = v14;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_1056338(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v5 = __ROR8__(a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = (*(*(a1 + 16) + 56) + 200 * (bswap64(v7) % *(*(a1 + 16) + 40)));
  v16 = a2;
  v17[0] = &v16;
  v17[1] = v7;
  sub_10564BC(v8, v17, &v13);
  if ((v15 & 1) == 0)
  {
    v9 = __ROR8__(v16, 32);
    v10 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) >> 33));
    sub_1056630((*(*(a1 + 16) + 136) + 200 * (bswap64(v10 ^ (v10 >> 33)) % *(*(a1 + 16) + 120))), &v16, v17, 8uLL, 0);
  }

  v11 = v14;
  *a3 = v13;
  a3[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = v14;
    if (v14)
    {
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

void sub_10564BC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock((a1 + 3));
  v6 = a1[15];
  v7 = a1[14];
  if (v7 != v6)
  {
    v8 = a1[11];
    v9 = a1[12] - v8;
    v11 = *a2;
    v10 = *(a2 + 8);
    v12 = v10 % v9;
    v13 = v9 - 1;
    while (1)
    {
      if (*(v8 + v12) == 2)
      {
        v14 = v7 + 24 * v12;
        if (*(v14 + 8) == v10 && *v14 == *v11 && *(v14 + 4) == v11[1])
        {
          v7 += 24 * v12;
          break;
        }
      }

      else if (!*(v8 + v12))
      {
        goto LABEL_21;
      }

      if (v12 == v13)
      {
        v12 = 0;
      }

      else
      {
        ++v12;
      }
    }
  }

  if (v7 == v6)
  {
LABEL_21:
    ++a1[24];
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v21 = (a1 + 3);
  }

  else
  {
    ++a1[23];
    v15 = *(v7 + 16);
    if (v15 != a1)
    {
      v16 = v15[1];
      if (v16 != a1)
      {
        v17 = *v15;
        *(v17 + 8) = v16;
        *v16 = v17;
        v18 = *a1;
        *(v18 + 8) = v15;
        *v15 = v18;
        *a1 = v15;
        v15[1] = a1;
      }
    }

    v20 = v15[4];
    v19 = v15[5];
    *a3 = v20;
    *(a3 + 8) = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    *(a3 + 16) = 1;
    v21 = (a1 + 3);
  }

  std::mutex::unlock(v21);
}

uint64_t sub_1056630(uint64_t *a1, void ***a2, uint64_t a3, unint64_t a4, int a5)
{
  if (a1[21] < a4)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v34);
    v7 = sub_4A5C(&v34, "LRUCache: item is too large (", 29);
    v8 = sub_71478(v7, a4);
    v9 = sub_4A5C(v8, " > ", 3);
    v10 = sub_71478(v9, a1[21]);
    sub_4A5C(v10, ")", 1);
    if ((v44 & 0x10) != 0)
    {
      v29 = v43;
      if (v43 < v40)
      {
        v43 = v40;
        v29 = v40;
      }

      v30 = v39;
      v11 = v29 - v39;
      if (v29 - v39 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if ((v44 & 8) == 0)
      {
        v11 = 0;
        v33 = 0;
LABEL_36:
        *(&__dst + v11) = 0;
        sub_7E854(&__dst, 1u);
        if (v33 < 0)
        {
          operator delete(__dst);
        }

        if (v42 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v36);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v30 = v37;
      v11 = v38 - v37;
      if ((v38 - v37) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_43:
        sub_3244();
      }
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    v33 = v11;
    if (v11)
    {
      memmove(&__dst, v30, v11);
    }

    goto LABEL_36;
  }

  v34 = COERCE_DOUBLE(&v34);
  v35 = &v34;
  v36.__locale_ = 0;
  std::mutex::lock((a1 + 3));
  v14 = a1[15];
  v15 = a1[14];
  if (v15 == v14)
  {
    goto LABEL_16;
  }

  v16 = __ROR8__(*a2, 32);
  v17 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) >> 33));
  v18 = v17 ^ (v17 >> 33);
  v19 = a1[11];
  v20 = a1[12] - v19;
  v21 = v18 % v20;
  v22 = v20 - 1;
  while (*(v19 + v21) != 2)
  {
    if (!*(v19 + v21))
    {
      goto LABEL_19;
    }

LABEL_9:
    if (v21 == v22)
    {
      v21 = 0;
    }

    else
    {
      ++v21;
    }
  }

  if (*(v15 + 24 * v21 + 8) != v18 || *(v15 + 24 * v21) != *a2)
  {
    goto LABEL_9;
  }

  v15 += 24 * v21;
LABEL_16:
  if (v15 == v14)
  {
LABEL_19:
    ++a1[22];
    v23 = a1[1];
    if (v23 != a1)
    {
      v24 = a1[21] - a4;
      do
      {
        if (a1[20] <= v24)
        {
          break;
        }

        sub_3D7B5C(a1, v23, &v34);
        v23 = a1[1];
      }

      while (v23 != a1);
    }

    operator new();
  }

  if (a5)
  {
    sub_3D7B5C(a1, *(v15 + 16), &v34);
    goto LABEL_19;
  }

  std::mutex::unlock((a1 + 3));
  if (v36.__locale_)
  {
    v25 = v35;
    v26 = *(*&v34 + 8);
    v27 = *v35;
    *(v27 + 8) = v26;
    *v26 = v27;
    v36.__locale_ = 0;
    if (v25 != &v34)
    {
      do
      {
        v28 = *(v25 + 1);
        operator delete(v25);
        v25 = v28;
      }

      while (v28 != &v34);
    }
  }

  return 0;
}

void sub_1056B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  std::mutex::unlock((v17 + 24));
  sub_244F9C(&a17);
  _Unwind_Resume(a1);
}

void sub_1056B88(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 24);
  if (a2 >= ((*(result + 32) - v3) >> 2) || (v4 = *(v3 + 4 * a2), v4 == -1))
  {
    sub_1056D84(result, a2, a3);
  }

  else
  {
    v5 = *result + 12 * v4;
    v6 = *(v5 + 4);
    v7 = *(v5 + 8);
    *(v5 + 4) = *a3;
    v8 = *(a3 + 4) < v7;
    v9 = *a3 < v6;
    if (*a3 == v6)
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v4)
      {
        v10 = *result;
        do
        {
          v11 = v4 - 1;
          v12 = (v4 - 1) >> 2;
          v13 = (v10 + 12 * v12);
          v14 = (v10 + 12 * v4);
          v15 = v14[1];
          v16 = v13[1];
          v17 = v16 == v15;
          v18 = v16 < v15;
          if (v17)
          {
            v18 = v13[2] < v14[2];
          }

          if (v18)
          {
            break;
          }

          v19 = *v14;
          *v14 = *v13;
          *v13 = v19;
          v20 = *(v14 + 1);
          *(v14 + 1) = *(v13 + 1);
          *(v13 + 1) = v20;
          v10 = *result;
          v21 = *(*result + 12 * v4);
          v22 = *(result + 24);
          v23 = *(*result + 12 * v12);
          v24 = *(v22 + 4 * v21);
          *(v22 + 4 * v21) = *(v22 + 4 * v23);
          *(v22 + 4 * v23) = v24;
          v4 = v11 >> 2;
        }

        while (v11 >= 4);
      }
    }

    else
    {
      v25 = (4 * v4) | 1;
      v26 = *(result + 48);
      if (v25 < v26)
      {
        v27 = 4 * v4;
        do
        {
          v28 = v27 + 5;
          if (v28 >= v26)
          {
            v29 = v26;
          }

          else
          {
            v29 = v28;
          }

          if (v28 <= v25)
          {
            break;
          }

          v30 = *result;
          v31 = v4;
          v32 = *(*result + 12 * v4 + 4);
          v33 = HIDWORD(v32);
          v34 = (*result + 12 * v25 + 4);
          v4 = -1;
          v35 = v32;
          do
          {
            v36 = *v34 < v35;
            if (*v34 == v35)
            {
              v36 = v34[1] < v33;
            }

            if (v36)
            {
              v35 = *v34;
              LODWORD(v33) = v34[1];
              v4 = v25;
            }

            v34 += 3;
            ++v25;
          }

          while (v25 < v29);
          if (v4 >= v26)
          {
            break;
          }

          v37 = v30 + 12 * v4;
          v38 = 12 * v31;
          v39 = v30 + v38;
          v40 = *v37;
          *v37 = *v39;
          *v39 = v40;
          v41 = *(v37 + 4);
          *(v37 + 4) = v32;
          *(v39 + 4) = v41;
          v42 = *(*result + 12 * v4);
          v43 = *(result + 24);
          v44 = *(*result + v38);
          LODWORD(v39) = *(v43 + 4 * v42);
          *(v43 + 4 * v42) = *(v43 + 4 * v44);
          *(v43 + 4 * v44) = v39;
          v27 = 4 * v4;
          v25 = (4 * v4) | 1;
          v26 = *(result + 48);
        }

        while (v25 < v26);
      }
    }
  }
}

void sub_1056D84(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
      v19 = v18[1];
      v20 = v17[1];
      v21 = v20 == v19;
      v22 = v20 < v19;
      if (v21)
      {
        v22 = v17[2] < v18[2];
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

uint64_t sub_1056F4C@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
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

LABEL_6:
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

  v17 = v9[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v11;
    if (*(v17 + 32 * v18) == v4)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_6;
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
    v24 = (v17 + 32 * v18);
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

void sub_1057090(uint64_t *a1, unsigned int a2, unsigned int *a3)
{
  v5 = a2;
  v7 = a1[3];
  v8 = a1[4];
  v6 = (a1 + 3);
  v9 = v8 - v7;
  v10 = (v8 - v7) >> 2;
  if (v10 <= a2)
  {
    do
    {
      v22 = (v9 >> 1) | 1;
      if (v10 <= v9 >> 1)
      {
        sub_42CC4(v6, v22 - v10);
        v7 = a1[3];
        v8 = a1[4];
        v9 = v8 - v7;
        v23 = (v8 - v7) >> 2;
        if (v10 < v23)
        {
          goto LABEL_15;
        }
      }

      else if (v22 < v10)
      {
        v8 = v7 + 4 * v22;
        a1[4] = v8;
        v9 = 4 * v22;
        v23 = (4 * v22) >> 2;
        if (v10 < v23)
        {
LABEL_15:
          memset((v7 + 4 * v10), 255, v9 - 4 * v10);
        }
      }

      else
      {
        v9 = v8 - v7;
        v23 = (v8 - v7) >> 2;
        if (v10 < v23)
        {
          goto LABEL_15;
        }
      }

      v10 = v23;
    }

    while (v23 <= v5);
  }

  v24 = v5 | (*a3 << 32);
  sub_2512DC(a1, &v24);
  v11 = *(a1 + 12);
  v12 = a1[3];
  *(v12 + 4 * v5) = v11;
  *(a1 + 12) = v11 + 1;
  if (v11)
  {
    v13 = *a1;
    do
    {
      v14 = v11 - 1;
      v15 = (v13 + 8 * ((v11 - 1) >> 2));
      v16 = (v13 + 8 * v11);
      v17 = v15[1];
      v18 = v16[1];
      if (v17 > v18)
      {
        break;
      }

      v19 = *v16;
      *v16 = *v15;
      v16[1] = v17;
      *v15 = v19;
      v15[1] = v18;
      v20 = *v16;
      v21 = *(v12 + 4 * v20);
      *(v12 + 4 * v20) = *(v12 + 4 * v19);
      *(v12 + 4 * v19) = v21;
      v11 = v14 >> 2;
    }

    while (v14 > 3);
  }
}

double sub_1057208(uint64_t *a1, unsigned int a2, unsigned int *a3)
{
  v3 = a1[3];
  v4 = *(v3 + 4 * a2);
  v5 = *a1;
  v6 = *a1 + 8 * v4;
  v7 = *(v6 + 4);
  v8 = *a3;
  *(v6 + 4) = *a3;
  if (v8 <= v7)
  {
    v16 = (4 * v4) | 1;
    v17 = *(a1 + 12);
    if (v16 < v17)
    {
      v18 = 4 * v4;
      do
      {
        v19 = v18 + 5;
        if (v19 >= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        if (v19 <= v16)
        {
          break;
        }

        v21 = v4;
        v22 = *(v5 + 8 * v4 + 4);
        v23 = (v5 + 4 + 8 * v16);
        LODWORD(v4) = -1;
        v24 = v22;
        do
        {
          v26 = *v23;
          v23 += 2;
          v25 = v26;
          if (v26 > v24)
          {
            v24 = v25;
            LODWORD(v4) = v16;
          }

          ++v16;
        }

        while (v16 < v20);
        if (v4 >= v17)
        {
          break;
        }

        v27 = (v5 + 8 * v4);
        result = *v27;
        *v27 = *(v5 + 8 * v21);
        *(v27 + 1) = v22;
        *(v5 + 8 * v21) = result;
        v29 = *v27;
        v30 = *(v3 + 4 * v29);
        *(v3 + 4 * v29) = *(v3 + 4 * LODWORD(result));
        *(v3 + 4 * LODWORD(result)) = v30;
        v18 = 4 * v4;
        v16 = (4 * v4) | 1;
        v17 = *(a1 + 12);
      }

      while (v16 < v17);
    }
  }

  else if (v4)
  {
    do
    {
      v9 = v4 - 1;
      v10 = (v5 + 8 * ((v4 - 1) >> 2));
      v11 = (v5 + 8 * v4);
      v12 = v10[1];
      v13 = v11[1];
      if (v12 > v13)
      {
        break;
      }

      v14 = *v11;
      *v11 = *v10;
      v11[1] = v12;
      *v10 = v14;
      v10[1] = v13;
      v4 = *v11;
      v15 = *(v3 + 4 * v4);
      *(v3 + 4 * v4) = *(v3 + 4 * v14);
      *(v3 + 4 * v14) = v15;
      LODWORD(v4) = v9 >> 2;
    }

    while (v9 >= 4);
  }

  return result;
}

void sub_105733C(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = *a3;
  for (i = a3[1]; i != v6; i -= 104)
  {
    v9 = *(i - 24);
    if (v9)
    {
      v10 = *(i - 16);
      v8 = *(i - 24);
      if (v10 != v9)
      {
        do
        {
          v11 = *(v10 - 9);
          v10 -= 4;
          if (v11 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v8 = *(i - 24);
      }

      *(i - 16) = v9;
      operator delete(v8);
    }
  }

  a3[1] = v6;
  if (!*(a1 + 3880))
  {
    v21 = sub_3BF72C(a1 + 8, *a2, 1);
    if (v21)
    {
      v22 = &v21[-*v21];
      if (*v22 >= 7u)
      {
        v12 = *(v22 + 3);
        if (!v12)
        {
          goto LABEL_14;
        }

        v23 = &v21[v12 + *&v21[v12]];
        v24 = a2[1];
        if (*v23 > v24)
        {
          v12 = &v23[4 * v24 + 4 + *&v23[4 * v24 + 4]];
          goto LABEL_14;
        }
      }
    }
  }

  v12 = 0;
LABEL_14:
  v13 = (v12 - *v12);
  if (*v13 >= 5u && (v14 = v13[2]) != 0)
  {
    v15 = (v12 + v14 + *(v12 + v14));
    sub_48C748(a3, *v15);
    v16 = *v15;
    if (!v16)
    {
      return;
    }
  }

  else
  {
    v15 = 0;
    sub_48C748(a3, 0xFEEDFACFuLL);
    v16 = 4277009103;
  }

  v17 = 4 * v16;
  v18 = a3[1];
  v19 = v15 + 1;
  do
  {
    while (1)
    {
      v20 = (v19 + *v19);
      v25 = v20;
      if (v18 < a3[2])
      {
        break;
      }

      v18 = sub_1057514(a3, &v25);
      a3[1] = v18;
      ++v19;
      v17 -= 4;
      if (!v17)
      {
        return;
      }
    }

    sub_322264(v18, v20);
    v18 += 104;
    a3[1] = v18;
    a3[1] = v18;
    ++v19;
    v17 -= 4;
  }

  while (v17);
}

uint64_t sub_1057514(uint64_t *a1, int **a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v5 = 0x276276276276276;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v20 = 8 * ((a1[1] - *a1) >> 3);
  sub_322264(v20, *a2);
  v6 = 104 * v2 + 104;
  v7 = *a1;
  v8 = a1[1];
  v9 = v20 + *a1 - v8;
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = v20 + *a1 - v8;
    do
    {
      *v11 = *v10;
      v12 = *(v10 + 1);
      v13 = *(v10 + 2);
      v14 = *(v10 + 3);
      *(v11 + 64) = *(v10 + 64);
      *(v11 + 32) = v13;
      *(v11 + 48) = v14;
      *(v11 + 16) = v12;
      *(v11 + 72) = *(v10 + 18);
      *(v11 + 88) = 0;
      *(v11 + 96) = 0;
      *(v11 + 80) = 0;
      *(v11 + 80) = *(v10 + 5);
      *(v11 + 96) = v10[12];
      v10[10] = 0;
      v10[11] = 0;
      v10[12] = 0;
      v10 += 13;
      v11 += 104;
    }

    while (v10 != v8);
    do
    {
      v16 = v7[10];
      if (v16)
      {
        v17 = v7[11];
        v15 = v7[10];
        if (v17 != v16)
        {
          do
          {
            v18 = *(v17 - 9);
            v17 -= 4;
            if (v18 < 0)
            {
              operator delete(*v17);
            }
          }

          while (v17 != v16);
          v15 = v7[10];
        }

        v7[11] = v16;
        operator delete(v15);
      }

      v7 += 13;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_1057718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_49BB1C(va);
  _Unwind_Resume(a1);
}

unint64_t sub_105772C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = (v6 ^ ~(v6 >> 33)) + ((v6 ^ (v6 >> 33)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (a1 + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  while (1)
  {
    v13 = v11 & v12;
    v14 = *(*v10 + v13);
    v15 = ((v14 ^ (0x101010101010101 * (v9 & 0x7F))) - 0x101010101010101) & ~(v14 ^ (0x101010101010101 * (v9 & 0x7F))) & 0x8080808080808080;
    if (v15)
    {
      break;
    }

LABEL_8:
    if ((v14 & (~v14 << 6) & 0x8080808080808080) != 0)
    {
      result = sub_1057888(v10, v9);
      *a3 = v10;
      *(a3 + 8) = result;
      *(a3 + 16) = 1;
      return result;
    }

    v3 += 8;
    v11 = v3 + v13;
  }

  while (1)
  {
    result = (v13 + (__clz(__rbit64(v15)) >> 3)) & v12;
    v17 = (v10[1] + 16 * result);
    v19 = *v17;
    v18 = v17[1];
    if (v19 == v4 && v18 == HIDWORD(v4))
    {
      break;
    }

    v15 &= v15 - 1;
    if (!v15)
    {
      goto LABEL_8;
    }
  }

  *a3 = v10;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

unint64_t sub_1057888(void *a1, unint64_t a2)
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
      sub_1057980(a1);
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