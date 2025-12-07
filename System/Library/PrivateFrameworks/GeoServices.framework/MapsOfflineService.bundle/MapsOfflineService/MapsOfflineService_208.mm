void sub_C45DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *a11;
  if (*a11)
  {
    *(a11 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_C45DD4(uint64_t a1, int **a2)
{
  result = 3735928559;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = v3[1];
      v3 += 2;
      v7 = ((result << 6) + 2654435769u + (result >> 2) + v5) ^ result;
      result = (v6 + 2654435769 + (v7 << 6) + (v7 >> 2)) ^ v7;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_C45E68@<X0>(uint64_t result@<X0>, char **a2@<X8>)
{
  v4 = *result;
  v3 = *(result + 8);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v4 == v3)
  {
    return result;
  }

  v5 = result;
  v7 = (v4 + 80);
  v6 = *(v4 + 80);
  v9 = (v4 + 88);
  v8 = *(v4 + 88);
  v75 = a2;
  if (v6 == v8)
  {
    v11 = *(v4 + 52) == 0;
    result = *(v4 + 52);
    if (!result)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = sub_2FEF94(0xAAAAAAAAAAAAAAABLL * ((v8 - v6) >> 2));
    v4 = *v5;
    v7 = (*v5 + 80);
    v9 = (*v5 + 88);
    v11 = v10 == 0;
    if (*v7 == *v9)
    {
      result = *(v4 + 52);
      if (!result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = sub_2FEF94(0xAAAAAAAAAAAAAAABLL * (*v9 - *v7));
      if (!result)
      {
LABEL_5:
        v12 = *(v4 + 32);
        if (v12)
        {
          v13 = *(*(v12 + 40) + 8);
          goto LABEL_15;
        }

        v14 = *(*(v4 + 24) + 8);
        goto LABEL_14;
      }
    }
  }

  if (*v7 != *v9)
  {
    v13 = **v7;
    goto LABEL_15;
  }

  v14 = *(*(v4 + 40) + 4);
LABEL_14:
  v13 = 10 * v14;
LABEL_15:
  if (v13 < 0)
  {
    v15 = -5;
  }

  else
  {
    v15 = 5;
  }

  v16 = *v5;
  v71 = v5[1];
  if (*v5 != v71)
  {
    if (v11)
    {
      v17 = 0;
      v18 = 0;
      v19 = v13 / -10;
      v20 = 103 * (v15 + v13 % 10);
      v21 = v19 - *(v4 + 48) - (((v20 >> 15) & 1) + (v20 >> 10));
      result = 5;
      v72 = v21;
      do
      {
        v23 = *(v16 + 16);
        v24 = (v23 - *v23);
        if (*v24 >= 9u && (v25 = v24[4]) != 0 && (v26 = *(v23 + v25), v26))
        {
          v27 = 0;
          v28 = 24 * v26;
          v29 = 8;
          v73 = 24 * v26;
          do
          {
            v30 = *(v16 + 32);
            if (v30)
            {
              v31 = *(*(v30 + 40) + v29);
              if (v31 < 0)
              {
                v32 = -5;
              }

              else
              {
                v32 = 5;
              }

              v33 = *(*(v30 + 40) + v29 + 4);
            }

            else
            {
              v31 = 10 * *(*(v16 + 24) + v27 + 8);
              if (v31 < 0)
              {
                v32 = -5;
              }

              else
              {
                v32 = 5;
              }

              v33 = 10 * *(*(v16 + 24) + v27 + 12);
            }

            v34 = v31 / 10;
            v35 = (((103 * (v32 + v31 % 10)) >> 15) & 1) + ((103 * (v32 + v31 % 10)) >> 10);
            v36 = v33 / 10;
            v37 = v33 % 10;
            if (v33 < 0)
            {
              v38 = -5;
            }

            else
            {
              v38 = 5;
            }

            v39 = *(v16 + 48) + v21;
            v40 = v39 + v34 + v35;
            v41 = v39 + v36 + (((103 * (v38 + v37)) >> 15) & 1) + ((103 * (v38 + v37)) >> 10);
            v42 = a2[2];
            if (v17 < v42)
            {
              *v17 = v40;
              *(v17 + 4) = v41;
              v17 += 8;
              v22 = v18;
            }

            else
            {
              v43 = v17 - v18;
              v44 = (v17 - v18) >> 3;
              v45 = v44 + 1;
              if ((v44 + 1) >> 61)
              {
                *v75 = v18;
                sub_1794();
              }

              v46 = v42 - v18;
              if (v46 >> 2 > v45)
              {
                v45 = v46 >> 2;
              }

              if (v46 >= 0x7FFFFFFFFFFFFFF8)
              {
                v47 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v47 = v45;
              }

              if (v47)
              {
                if (!(v47 >> 61))
                {
                  operator new();
                }

                *v75 = v18;
                sub_1808();
              }

              v22 = 0;
              v48 = (8 * v44);
              *v48 = v40;
              v48[1] = v41;
              v17 = 8 * v44 + 8;
              memcpy(0, v18, v43);
              v75[1] = v17;
              v75[2] = 0;
              a2 = v75;
              v21 = v72;
              result = 5;
              v28 = v73;
            }

            a2[1] = v17;
            v29 += 20;
            v27 += 24;
            v18 = v22;
          }

          while (v28 != v27);
        }

        else
        {
          v22 = v18;
        }

        *a2 = v22;
        v16 += 128;
        v18 = v22;
      }

      while (v16 != v71);
    }

    else
    {
      v49 = 0;
      do
      {
        v50 = *(v16 + 16);
        v51 = (v50 - *v50);
        if (*v51 >= 9u)
        {
          v52 = v51[4];
          if (v52)
          {
            v53 = *(v50 + v52);
            if (v53)
            {
              v54 = 0;
              result = 20 * v53;
              v55 = 8;
              v74 = 20 * v53;
              do
              {
                while (1)
                {
                  v56 = *(v16 + 32);
                  if (v56)
                  {
                    v57 = *(*(v56 + 40) + v54 + 8);
                    v58 = v57 < 0 ? -5 : 5;
                    v59 = *(*(v56 + 40) + v54 + 12);
                  }

                  else
                  {
                    v57 = 10 * *(*(v16 + 24) + v55);
                    v58 = v57 < 0 ? -5 : 5;
                    v59 = 10 * *(*(v16 + 24) + v55 + 4);
                  }

                  v60 = v57 / 10 + (((103 * (v58 + v57 % 10)) >> 15) & 1) + ((103 * (v58 + v57 % 10)) >> 10);
                  v61 = v59 / 10;
                  v62 = v59 % 10;
                  v63 = v59 < 0 ? -5 : 5;
                  v64 = v61 + (((103 * (v63 + v62)) >> 15) & 1) + ((103 * (v63 + v62)) >> 10);
                  v65 = a2[2];
                  if (v49 >= v65)
                  {
                    break;
                  }

                  *v49 = v60;
                  *(v49 + 4) = v64;
                  v49 += 8;
                  a2[1] = v49;
                  v55 += 24;
                  v54 += 20;
                  if (result == v54)
                  {
                    goto LABEL_53;
                  }
                }

                v66 = v49;
                v67 = v49 >> 3;
                v68 = v67 + 1;
                if ((v67 + 1) >> 61)
                {
                  *v75 = 0;
                  sub_1794();
                }

                if (v65 >> 2 > v68)
                {
                  v68 = v65 >> 2;
                }

                if (v65 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v69 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v69 = v68;
                }

                if (v69)
                {
                  if (!(v69 >> 61))
                  {
                    operator new();
                  }

                  *v75 = 0;
                  sub_1808();
                }

                v70 = (8 * v67);
                *v70 = v60;
                v70[1] = v64;
                v49 = 8 * v67 + 8;
                memcpy(0, 0, v66);
                v75[1] = v49;
                v75[2] = 0;
                a2 = v75;
                result = v74;
                v75[1] = v49;
                v55 += 24;
                v54 += 20;
              }

              while (v74 != v54);
            }
          }
        }

LABEL_53:
        *a2 = 0;
        v16 += 128;
      }

      while (v16 != v71);
    }
  }

  return result;
}

void sub_C464D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  *a12 = v12;
  if (v12)
  {
    a12[1] = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_C46508(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a3;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v4 = a2[1] - *a2;
  if (v4)
  {
    v5 = 0;
    v30 = a1 << 32;
    v31 = v4 >> 3;
    v33 = v3;
    do
    {
      v6 = *a2;
      if (v5 >= (a2[1] - *a2) >> 3)
      {
        sub_6FAB4();
      }

      v7 = sub_2FEF94(v5);
      v8 = *(*(v6 + 8 * v5) + 56) - *(*(v6 + 8 * v5) + 48);
      if (v8)
      {
        v9 = 0;
        v35 = v5;
        v36 = v8 >> 4;
        v10 = v30 | v7;
        v34 = __ROR8__(v10, 32);
        do
        {
          while (1)
          {
            v12 = *(*(v6 + 8 * v5) + 48);
            if (v9 >= (*(*(v6 + 8 * v5) + 56) - v12) >> 4)
            {
              sub_6FAB4();
            }

            v37 = __ROR8__(*(v12 + 16 * v9), 32);
            v38 = &v37;
            v13 = sub_C46840(v3, &v37, &unk_229EB70, &v38);
            v14 = v13;
            v16 = v13[3];
            v15 = v13[4];
            v17 = v16;
            if (v16 != v15)
            {
              v17 = v13[3];
              while (__ROR8__(*v17, 32) != v10)
              {
                v17 += 2;
                if (v17 == v15)
                {
                  goto LABEL_18;
                }
              }
            }

            if (v17 == v15)
            {
              break;
            }

            *(v17 + 5) = v9++;
            if (v9 == v36)
            {
              goto LABEL_3;
            }
          }

LABEL_18:
          v18 = v6;
          v19 = *(v6 + 8 * v5);
          v20 = *(v19 + 74);
          v21 = *(v19 + 73);
          v22 = (*(v19 + 80) >> 1) & 1;
          v23 = v13[5];
          if (v15 < v23)
          {
            *v15 = v34;
            *(v15 + 4) = v9;
            *(v15 + 5) = v9;
            *(v15 + 6) = v20;
            *(v15 + 14) = v21;
            v11 = (v15 + 2);
            *(v15 + 15) = v22;
          }

          else
          {
            v24 = v15 - v16;
            v25 = (v15 - v16) >> 4;
            v26 = v25 + 1;
            if ((v25 + 1) >> 60)
            {
              sub_1794();
            }

            v27 = v23 - v16;
            if (v27 >> 3 > v26)
            {
              v26 = v27 >> 3;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFF0)
            {
              v28 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v26;
            }

            if (v28)
            {
              if (!(v28 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v29 = 16 * v25;
            *v29 = v34;
            *(v29 + 8) = v9;
            *(v29 + 10) = v9;
            *(v29 + 12) = v20;
            *(v29 + 14) = v21;
            *(v29 + 15) = v22;
            v11 = 16 * v25 + 16;
            memcpy(0, v16, v24);
            v14[3] = 0;
            v14[4] = v11;
            v14[5] = 0;
            if (v16)
            {
              operator delete(v16);
            }

            v3 = v33;
          }

          v6 = v18;
          v5 = v35;
          v14[4] = v11;
          ++v9;
        }

        while (v9 != v36);
      }

LABEL_3:
      ++v5;
    }

    while (v5 != v31);
  }
}

uint64_t *sub_C46840(void *a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *a2;
  v5 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v6 = (0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_31;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33);
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
        if (*(v11 + 5) == HIDWORD(v4) && *(v11 + 4) == v4)
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

  if (*(v11 + 5) != HIDWORD(v4) || *(v11 + 4) != v4)
  {
    goto LABEL_12;
  }

  return v11;
}

void sub_C46BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

void sub_C46BBC(unint64_t *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v4 = a4;
  v6 = *a2;
  v5 = a2[1];
  v94 = 0;
  v95 = 0;
  v93 = 0;
  if ((a3 & 1) == 0)
  {
    v96[0] = 0;
    v96[1] = 0;
    __p[0] = 0;
    if (v5 != v6)
    {
      if (!((0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3)) >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    v27 = sub_52C28(&v93, v96);
    v24 = v96[0];
    v94 = v27;
    if (!v96[0])
    {
      goto LABEL_37;
    }

    v96[1] = v96[0];
LABEL_36:
    operator delete(v24);
    goto LABEL_37;
  }

  *v96 = 0u;
  *__p = 0u;
  v98 = 1065353216;
  if (v6 == v5)
  {
    v96[0] = 0;
    goto LABEL_37;
  }

  do
  {
    LODWORD(v100) = *(*v6 + 4);
    v90[0] = &v100;
    v8 = sub_C498E8(v96, &v100, &unk_229EB70, v90);
    v9 = v8;
    v11 = v8[4];
    v10 = v8[5];
    if (v11 < v10)
    {
      *v11 = v6;
      v7 = v11 + 8;
    }

    else
    {
      v12 = v8[3];
      v13 = v11 - v12;
      v14 = (v11 - v12) >> 3;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        sub_1794();
      }

      v16 = v10 - v12;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v18 = v14;
      v19 = (8 * v14);
      v20 = &v19[-v18];
      *v19 = v6;
      v7 = v19 + 1;
      memcpy(v20, v12, v13);
      v9[3] = v20;
      v9[4] = v7;
      v9[5] = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    v9[4] = v7;
    v6 += 24;
  }

  while (v6 != v5);
  v21 = __p[0];
  if (__p[0])
  {
    v22 = 0;
    do
    {
      if (v22 < v95)
      {
        *v22 = 0;
        v22[1] = 0;
        v22[2] = 0;
        *v22 = *(v21 + 24);
        v22[2] = *(v21 + 5);
        *(v21 + 3) = 0;
        *(v21 + 4) = 0;
        *(v21 + 5) = 0;
        v22 += 3;
      }

      else
      {
        v22 = sub_52C28(&v93, (v21 + 24));
      }

      v94 = v22;
      v21 = *v21;
    }

    while (v21);
    v23 = __p[0];
    if (__p[0])
    {
      do
      {
        v25 = *v23;
        v26 = v23[3];
        if (v26)
        {
          v23[4] = v26;
          operator delete(v26);
        }

        operator delete(v23);
        v23 = v25;
      }

      while (v25);
    }
  }

  v24 = v96[0];
  v4 = a4;
  v96[0] = 0;
  if (v24)
  {
    goto LABEL_36;
  }

LABEL_37:
  v4[4] = 0u;
  v4[5] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  *v4 = 0u;
  v4[1] = 0u;
  *v96 = 0u;
  *__p = 0u;
  v98 = 1065353216;
  *v90 = 0u;
  *v91 = 0u;
  v92 = 1065353216;
  v28 = v93;
  v85 = v94;
  if (v93 == v94)
  {
    goto LABEL_114;
  }

  do
  {
    v30 = v28[1];
    v31 = 126 - 2 * __clz((v30 - *v28) >> 3);
    v88 = 0;
    v89 = 0;
    if (v30 == *v28)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31;
    }

    sub_C4A8BC(*v28, v30, &v100, v32, 1);
    v33 = *v28;
    v34 = v28[1];
    v86 = v28;
    if (*v28 != v34)
    {
      v35 = 0;
      while (v33 != *v28)
      {
        v36 = v88;
        v37 = v89;
        if (sub_C49C2C(&v100, *(v33 - 1), *v33))
        {
          if (v35 >= 0xAAAAAAAAAAAAAAABLL * ((v89 - v88) >> 3))
          {
            goto LABEL_57;
          }

          v38 = 24 * v35;
          v39 = v35;
          while (!sub_C4A288(&v99, *(*(v36 + v38 + 8) - 8), *v33))
          {
            ++v39;
            v36 = v88;
            v37 = v89;
            v38 += 24;
            if (v39 >= 0xAAAAAAAAAAAAAAABLL * ((v89 - v88) >> 3))
            {
              goto LABEL_57;
            }
          }

          v57 = &v88[v38];
          v59 = *&v88[v38 + 8];
          v58 = *(v57 + 2);
          if (v59 >= v58)
          {
            v61 = *v57;
            v62 = v59 - *v57;
            v63 = (v62 >> 3) + 1;
            if (v63 >> 61)
            {
              sub_1794();
            }

            v64 = v58 - v61;
            if (v64 >> 2 > v63)
            {
              v63 = v64 >> 2;
            }

            if (v64 >= 0x7FFFFFFFFFFFFFF8)
            {
              v65 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v65 = v63;
            }

            if (v65)
            {
              if (!(v65 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v66 = (8 * (v62 >> 3));
            *v66 = *v33;
            v60 = v66 + 1;
            memcpy(0, v61, v62);
            *v57 = 0;
            *(v57 + 1) = v60;
            *(v57 + 2) = 0;
            if (v61)
            {
              operator delete(v61);
            }
          }

          else
          {
            *v59 = *v33;
            v60 = v59 + 1;
          }

          v28 = v86;
          *(v57 + 1) = v60;
          if (++v33 == v34)
          {
            goto LABEL_104;
          }
        }

        else
        {
LABEL_56:
          v35 = 0xAAAAAAAAAAAAAAABLL * (&v37[-v36] >> 3);
LABEL_57:
          v40 = 0xAAAAAAAAAAAAAAABLL * (&v37[-v36] >> 3) + 1;
          if (v40 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          if (0x5555555555555556 * (-v36 >> 3) > v40)
          {
            v40 = 0x5555555555555556 * (-v36 >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v36 >> 3) >= 0x555555555555555)
          {
            v41 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v41 = v40;
          }

          if (v41)
          {
            if (v41 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v42 = (8 * (&v37[-v36] >> 3));
          v43 = (v42 - &v37[-v36]);
          *v42 = 0;
          v42[1] = 0;
          v42[2] = 0;
          if (v36 != v37)
          {
            v44 = v36;
            v45 = 8 * (&v37[-v36] >> 3) - &v37[-v36];
            do
            {
              *v45 = *v44;
              *(v45 + 16) = *(v44 + 16);
              *v44 = 0;
              *(v44 + 8) = 0;
              *(v44 + 16) = 0;
              v44 += 24;
              v45 += 24;
            }

            while (v44 != v37);
            do
            {
              v46 = *v36;
              if (*v36)
              {
                *(v36 + 8) = v46;
                operator delete(v46);
              }

              v36 += 24;
            }

            while (v36 != v37);
            v36 = v88;
          }

          v88 = v43;
          if (v36)
          {
            operator delete(v36);
          }

          v89 = (v42 + 3);
          v48 = v42[1];
          v47 = v42[2];
          if (v48 >= v47)
          {
            v50 = *v42;
            v51 = v48 - *v42;
            v52 = (v51 >> 3) + 1;
            if (v52 >> 61)
            {
              sub_1794();
            }

            v53 = v47 - v50;
            if (v53 >> 2 > v52)
            {
              v52 = v53 >> 2;
            }

            if (v53 >= 0x7FFFFFFFFFFFFFF8)
            {
              v54 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v54 = v52;
            }

            if (v54)
            {
              if (!(v54 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v55 = (8 * (v51 >> 3));
            *v55 = *v33;
            v56 = v55 + 1;
            memcpy(0, v50, v51);
            *v42 = 0;
            v42[1] = v56;
            v42[2] = 0;
            if (v50)
            {
              operator delete(v50);
            }

            v28 = v86;
            v42[1] = v56;
            if (++v33 == v34)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v49 = *v33++;
            *v48 = v49;
            v28 = v86;
            v42[1] = v48 + 1;
            if (v33 == v34)
            {
              goto LABEL_104;
            }
          }
        }
      }

      v36 = v88;
      v37 = v89;
      goto LABEL_56;
    }

LABEL_104:
    if (v88 != v89)
    {
      operator new();
    }

    if (v88)
    {
      v67 = v89;
      v29 = v88;
      if (v89 != v88)
      {
        v68 = v89;
        do
        {
          v70 = *(v68 - 3);
          v68 -= 24;
          v69 = v70;
          if (v70)
          {
            *(v67 - 2) = v69;
            operator delete(v69);
          }

          v67 = v68;
        }

        while (v68 != v88);
        v29 = v88;
      }

      operator delete(v29);
    }

    v28 += 3;
  }

  while (v28 != v85);
  v71 = v91[0];
  if (v91[0])
  {
    do
    {
      v83 = *v71;
      v84 = v71[2];
      if (v84)
      {
        v71[3] = v84;
        operator delete(v84);
      }

      operator delete(v71);
      v71 = v83;
    }

    while (v83);
  }

LABEL_114:
  v72 = v90[0];
  v90[0] = 0;
  if (v72)
  {
    operator delete(v72);
  }

  v73 = __p[0];
  if (__p[0])
  {
    do
    {
      v79 = *v73;
      v80 = v73[2];
      if (v80)
      {
        v73[3] = v80;
        operator delete(v80);
      }

      operator delete(v73);
      v73 = v79;
    }

    while (v79);
  }

  v74 = v96[0];
  v96[0] = 0;
  if (v74)
  {
    operator delete(v74);
  }

  v75 = v93;
  if (v93)
  {
    v76 = v94;
    v77 = v93;
    if (v94 != v93)
    {
      v78 = v94;
      do
      {
        v82 = *(v78 - 3);
        v78 -= 3;
        v81 = v82;
        if (v82)
        {
          *(v76 - 2) = v81;
          operator delete(v81);
        }

        v76 = v78;
      }

      while (v78 != v75);
      v77 = v93;
    }

    v94 = v75;
    operator delete(v77);
  }
}

void sub_C49500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    a36 = __p;
    operator delete(__p);
    sub_34BE0(&a32);
    _Unwind_Resume(a1);
  }

  sub_34BE0(&a32);
  _Unwind_Resume(a1);
}

void sub_C497F0()
{
  if (*(v0 - 168))
  {
    JUMPOUT(0xC49800);
  }

  JUMPOUT(0xC497A8);
}

char ***sub_C49884(char ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v2; sub_C4D6D4(a1, i))
    {
      i -= 3;
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_C498E8(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v9[1];
      if (v11 == v4)
      {
        if (*(v9 + 4) == v4)
        {
          return v9;
        }
      }

      else if ((v11 & (*&v5 - 1)) != v7)
      {
        goto LABEL_23;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_23;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_C49C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_C49C2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2[1];
  v4 = v3 - *a2;
  if (v4 != a3[1] - *a3)
  {
    return 0;
  }

  if (v3 == *a2)
  {
    return 1;
  }

  v7 = v4 >> 7;
  v8 = 52;
  do
  {
    v10 = *a2;
    v11 = *a3;
    v12 = *a2 + v8;
    v13 = *(v12 + 28);
    v14 = *(v12 + 36);
    if (v13 == v14)
    {
      v15 = *(v10 + v8);
      v16 = *(v11 + v8 + 28);
      v17 = *(v11 + v8 + 36);
      if (v16 != v17)
      {
LABEL_9:
        if ((v15 != 0) != (sub_2FEF94(0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 2)) != 0))
        {
          return 0;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v15 = sub_2FEF94(0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 2));
      v16 = *(v11 + v8 + 28);
      v17 = *(v11 + v8 + 36);
      if (v16 != v17)
      {
        goto LABEL_9;
      }
    }

    if ((v15 != 0) != (*(v11 + v8) != 0))
    {
      return 0;
    }

LABEL_13:
    v18 = *(v10 + v8 - 36);
    v19 = (v18 - *v18);
    v20 = *v19;
    if (v20 >= 9 && v19[4])
    {
      v21 = *(v18 + v19[4]);
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v11 + v8 - 36);
    v23 = (v22 - *v22);
    v24 = *v23;
    if (v24 < 9)
    {
      LODWORD(v25) = 0;
    }

    else
    {
      v25 = v23[4];
      if (v23[4])
      {
        LODWORD(v25) = *(v22 + v25);
      }
    }

    if (v21 != v25)
    {
      return 0;
    }

    if (v20 >= 7 && (v26 = v19[3]) != 0)
    {
      v27 = *(v18 + v26 + 4) | (*(v18 + v26) << 32);
      if (v24 < 7)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v27 = 0xFFFFFFFFLL;
      if (v24 < 7)
      {
        goto LABEL_30;
      }
    }

    if (v23[3])
    {
      if (v27 != (*(v22 + v23[3] + 4) | (*(v22 + v23[3]) << 32)))
      {
        return 0;
      }

      goto LABEL_31;
    }

LABEL_30:
    if (v27 != 0xFFFFFFFF)
    {
      return 0;
    }

LABEL_31:
    v28 = *(v10 + v8 - 20);
    if (v28)
    {
      v29 = *(v28 + 33);
      v30 = *(v11 + v8 - 20);
      if (v30)
      {
        if (v29 != *(v30 + 33))
        {
          return 0;
        }
      }

      else if (v29)
      {
        return 0;
      }
    }

    else
    {
      v31 = *(v11 + v8 - 20);
      if (v31 && (*(v31 + 33) & 1) != 0)
      {
        return 0;
      }
    }

    v8 += 128;
    --v7;
  }

  while (v7);
  v32 = a2[1] - *a2;
  if (v32)
  {
    v33 = 0;
    v34 = v32 >> 7;
    while (1)
    {
      v35 = (*a2 + (v33 << 7));
      v36 = v35[2];
      v37 = (v36 - *v36);
      if (*v37 >= 9u)
      {
        v38 = v37[4];
        if (v38)
        {
          v39 = *(v36 + v38);
          if (v39)
          {
            break;
          }
        }
      }

LABEL_42:
      ++v33;
      result = 1;
      if (v33 == v34)
      {
        return result;
      }
    }

    v40 = 0;
    v41 = 0;
    v42 = (*a3 + (v33 << 7));
    while (2)
    {
      v43 = v35[3];
      v44 = v42[3];
      if (*(v43 + v40) != *(v44 + v40))
      {
        return 0;
      }

      v45 = v35[7];
      v46 = v35[8];
      if (v45 == v46)
      {
        v51 = v35[4];
        if (v51)
        {
          v47 = (*(v51 + 40) + 20 * v41 + 16);
          v48 = v42[7];
          v49 = v42[8];
          v50 = (v48 + 2 * v41);
          if (v48 != v49)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v47 = (v43 + v40 + 16);
          v48 = v42[7];
          v49 = v42[8];
          v50 = (v48 + 2 * v41);
          if (v48 != v49)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
        v47 = (v45 + 2 * v41);
        v48 = v42[7];
        v49 = v42[8];
        v50 = (v48 + 2 * v41);
        if (v48 != v49)
        {
LABEL_50:
          if (*v47 != *v50)
          {
            return 0;
          }

          goto LABEL_60;
        }
      }

      v52 = v42[4];
      if (v52)
      {
        v53 = *(v52 + 40) + 20 * v41;
      }

      else
      {
        v53 = v44 + v40;
      }

      if (*v47 != *(v53 + 16))
      {
        return 0;
      }

LABEL_60:
      if (v45 == v46)
      {
        v55 = v35[4];
        if (v55)
        {
          v54 = (*(v55 + 40) + 20 * v41 + 17);
          if (v48 != v49)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v54 = (v43 + v40 + 17);
          if (v48 != v49)
          {
            goto LABEL_62;
          }
        }
      }

      else
      {
        v54 = (v45 + 2 * v41 + 1);
        if (v48 != v49)
        {
LABEL_62:
          if (*v54 != v50[1])
          {
            return 0;
          }

          goto LABEL_72;
        }
      }

      v56 = v42[4];
      if (v56)
      {
        v57 = *(v56 + 40) + 20 * v41;
      }

      else
      {
        v57 = v44 + v40;
      }

      if (*v54 != *(v57 + 17))
      {
        return 0;
      }

LABEL_72:
      if (*(v43 + v40 + 20) != *(v44 + v40 + 20))
      {
        return 0;
      }

      v58 = v35[13];
      if (v58 == v35[14])
      {
        LODWORD(v59) = 0;
        v60 = v42[13];
        if (v60 != v42[14])
        {
          goto LABEL_75;
        }
      }

      else
      {
        v59 = *(v58 + 8 * v41);
        v60 = v42[13];
        if (v60 != v42[14])
        {
LABEL_75:
          if (*(v60 + 8 * v41) != v59)
          {
            return 0;
          }

          goto LABEL_79;
        }
      }

      if (v59)
      {
        return 0;
      }

LABEL_79:
      v61 = v35[2];
      v62 = (v61 - *v61);
      v63 = *v62;
      if (v63 < 0x27)
      {
        if (v63 >= 0x11)
        {
          goto LABEL_85;
        }
      }

      else
      {
        if (v62[19])
        {
          v64 = sub_BCAB48((v61 + v62[19] + *(v61 + v62[19])), v41);
          v65 = v42[2];
          v66 = (v65 - *v65);
          v67 = *v66;
          if (v67 < 0x27)
          {
            goto LABEL_82;
          }

LABEL_89:
          if (v66[19])
          {
            v69 = sub_BCAB48((v65 + v66[19] + *(v65 + v66[19])), v41);
            goto LABEL_94;
          }

LABEL_91:
          v70 = v66[8];
          if (v70)
          {
            v69 = *(v65 + v70);
            goto LABEL_94;
          }

LABEL_93:
          v69 = -1;
LABEL_94:
          if (v64 != v69)
          {
            return 0;
          }

          v71 = v35[2];
          v72 = (v71 - *v71);
          v73 = *v72;
          if (v73 < 0x25)
          {
            if (v73 >= 0xF)
            {
              goto LABEL_101;
            }
          }

          else
          {
            if (v72[18])
            {
              v74 = sub_BCAB48((v71 + v72[18] + *(v71 + v72[18])), v41);
              v75 = v42[2];
              v76 = (v75 - *v75);
              v77 = *v76;
              if (v77 < 0x25)
              {
                goto LABEL_98;
              }

LABEL_105:
              if (v76[18])
              {
                v79 = sub_BCAB48((v75 + v76[18] + *(v75 + v76[18])), v41);
                goto LABEL_110;
              }

LABEL_107:
              v80 = v76[7];
              if (v80)
              {
                v79 = *(v75 + v80);
                goto LABEL_110;
              }

LABEL_109:
              v79 = -1;
LABEL_110:
              if (v74 != v79)
              {
                return 0;
              }

              ++v41;
              v40 += 24;
              if (v39 == v41)
              {
                goto LABEL_42;
              }

              continue;
            }

LABEL_101:
            v78 = v72[7];
            if (v78)
            {
              v74 = *(v71 + v78);
              v75 = v42[2];
              v76 = (v75 - *v75);
              v77 = *v76;
              if (v77 >= 0x25)
              {
                goto LABEL_105;
              }

LABEL_98:
              if (v77 >= 0xF)
              {
                goto LABEL_107;
              }

              goto LABEL_109;
            }
          }

          v74 = -1;
          v75 = v42[2];
          v76 = (v75 - *v75);
          v77 = *v76;
          if (v77 >= 0x25)
          {
            goto LABEL_105;
          }

          goto LABEL_98;
        }

LABEL_85:
        v68 = v62[8];
        if (v68)
        {
          v64 = *(v61 + v68);
          v65 = v42[2];
          v66 = (v65 - *v65);
          v67 = *v66;
          if (v67 >= 0x27)
          {
            goto LABEL_89;
          }

LABEL_82:
          if (v67 >= 0x11)
          {
            goto LABEL_91;
          }

          goto LABEL_93;
        }
      }

      break;
    }

    v64 = -1;
    v65 = v42[2];
    v66 = (v65 - *v65);
    v67 = *v66;
    if (v67 >= 0x27)
    {
      goto LABEL_89;
    }

    goto LABEL_82;
  }

  return 1;
}

uint64_t sub_C4A288(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  if (a2[1] == *a2)
  {
    return 1;
  }

  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  if (v6 == v7)
  {
    if (*(v3 + 52))
    {
LABEL_4:
      v8 = *a2;
      v9 = *a3;
      v10 = *(v8 + 80);
      v11 = *(v8 + 88);
      if (v10 == v11)
      {
        v14 = *(v8 + 52) - 1;
      }

      else
      {
        v12 = sub_2FEF94(0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 2));
        v13 = *(v8 + 80);
        v14 = v12 - 1;
        if (v13 != *(v8 + 88))
        {
          v15 = *(v13 + 12 * v14 + 4);
          goto LABEL_50;
        }
      }

      v15 = 10 * *(*(v8 + 40) + 12 * v14 + 8);
LABEL_50:
      if (v15 < 0)
      {
        v54 = -5;
      }

      else
      {
        v54 = 5;
      }

      v55 = *(v9 + 80);
      if (v55 == *(v9 + 88))
      {
        v56 = 10 * *(*(v9 + 40) + 4);
      }

      else
      {
        v56 = *v55;
      }

      if (v56 < 0)
      {
        v57 = -5;
      }

      else
      {
        v57 = 5;
      }

      v58 = *(v8 + 16);
      v59 = (v58 - *v58);
      if (*v59 >= 9u)
      {
        v60 = v59[4];
        if (v60)
        {
          v61 = *(v58 + v60);
          if (v61)
          {
            v62 = 0;
            v63 = v15 / 10;
            v64 = 103 * (v54 + v15 % 10);
            v65 = v63 + *(v8 + 48) + ((v64 >> 15) & 1) + (v64 >> 10);
            v66 = v56 / 10;
            v67 = 103 * (v57 + v56 % 10);
            v68 = v66 + *(v9 + 48) + ((v67 >> 15) & 1) + (v67 >> 10);
            v69 = *(v8 + 32);
            v70 = *(v9 + 32);
            v71 = 20 * v61;
            v72 = 8;
            while (1)
            {
              if (v69)
              {
                v73 = *(*(v69 + 40) + v62 + 8);
                if (v73 < 0)
                {
                  v74 = -5;
                }

                else
                {
                  v74 = 5;
                }

                if (v70)
                {
                  goto LABEL_68;
                }
              }

              else
              {
                v73 = 10 * *(*(v8 + 24) + v72);
                if (v73 < 0)
                {
                  v74 = -5;
                }

                else
                {
                  v74 = 5;
                }

                if (v70)
                {
LABEL_68:
                  v75 = *(*(v70 + 40) + v62 + 8);
                  goto LABEL_74;
                }
              }

              v75 = 10 * *(*(v9 + 24) + v72);
LABEL_74:
              v76 = v73 / 10;
              v77 = 103 * (v74 + v73 % 10);
              v78 = v76 + v65 + ((v77 >> 15) & 1) + (v77 >> 10);
              v79 = v75 / 10;
              v80 = v75 % 10;
              if (v75 < 0)
              {
                v81 = -5;
              }

              else
              {
                v81 = 5;
              }

              if (v78 > (v79 + v68 + (((103 * (v81 + v80)) >> 15) & 1) + ((103 * (v81 + v80)) >> 10)))
              {
                return 0;
              }

              if (v69)
              {
                v82 = *(*(v69 + 40) + v62 + 12);
                if (v82 < 0)
                {
                  v83 = -5;
                }

                else
                {
                  v83 = 5;
                }

                if (v70)
                {
                  goto LABEL_83;
                }
              }

              else
              {
                v82 = 10 * *(*(v8 + 24) + v72 + 4);
                if (v82 < 0)
                {
                  v83 = -5;
                }

                else
                {
                  v83 = 5;
                }

                if (v70)
                {
LABEL_83:
                  v84 = *(*(v70 + 40) + v62 + 12);
                  goto LABEL_89;
                }
              }

              v84 = 10 * *(*(v9 + 24) + v72 + 4);
LABEL_89:
              v85 = v82 / 10;
              v86 = 103 * (v83 + v82 % 10);
              v87 = v85 + v65 + ((v86 >> 15) & 1) + (v86 >> 10);
              v88 = v84 / 10;
              v89 = v84 % 10;
              if (v84 < 0)
              {
                v90 = -5;
              }

              else
              {
                v90 = 5;
              }

              if (v87 > (v88 + v68 + (((103 * (v90 + v89)) >> 15) & 1) + ((103 * (v90 + v89)) >> 10)))
              {
                return 0;
              }

              v72 += 24;
              v62 += 20;
              result = 1;
              if (v71 == v62)
              {
                return result;
              }
            }
          }
        }
      }

      return 1;
    }
  }

  else if (sub_2FEF94(0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 2)))
  {
    goto LABEL_4;
  }

  v17 = *a2;
  v18 = a2[1];
  v19 = v18 - *a2;
  if (v18 == *a2)
  {
    return 1;
  }

  v20 = 0;
  v21 = v19 >> 7;
  v22 = *a3;
  do
  {
    v23 = v17 + (v20 << 7);
    v24 = *(v23 + 16);
    v25 = (v24 - *v24);
    if (*v25 >= 9u)
    {
      v26 = v25[4];
      if (v26)
      {
        v27 = *(v24 + v26);
        if (v27)
        {
          v28 = 0;
          v29 = v22 + (v20 << 7);
          v30 = *(v23 + 32);
          v31 = *(v23 + 48);
          v32 = *(v29 + 32);
          v33 = *(v29 + 48);
          v34 = 20 * v27;
          v35 = 8;
          do
          {
            if (v30)
            {
              v36 = *(*(v30 + 40) + v28 + 8);
              if (v36 < 0)
              {
                v37 = -5;
              }

              else
              {
                v37 = 5;
              }

              if (v32)
              {
                goto LABEL_21;
              }
            }

            else
            {
              v36 = 10 * *(*(v23 + 24) + v35);
              if (v36 < 0)
              {
                v37 = -5;
              }

              else
              {
                v37 = 5;
              }

              if (v32)
              {
LABEL_21:
                v38 = *(*(v32 + 40) + v28 + 8);
                goto LABEL_27;
              }
            }

            v38 = 10 * *(*(v29 + 24) + v35);
LABEL_27:
            v39 = v36 / 10;
            v40 = 103 * (v37 + v36 % 10);
            v41 = v39 + v31 + ((v40 >> 15) & 1) + (v40 >> 10);
            v42 = v38 / 10;
            v43 = v38 % 10;
            if (v38 < 0)
            {
              v44 = -5;
            }

            else
            {
              v44 = 5;
            }

            if (v41 >= (v42 + v33 + (((103 * (v44 + v43)) >> 15) & 1) + ((103 * (v44 + v43)) >> 10)))
            {
              return 0;
            }

            if (v30)
            {
              v45 = *(*(v30 + 40) + v28 + 12);
              if (v45 < 0)
              {
                v46 = -5;
              }

              else
              {
                v46 = 5;
              }

              if (v32)
              {
                goto LABEL_36;
              }
            }

            else
            {
              v45 = 10 * *(*(v23 + 24) + v35 + 4);
              if (v45 < 0)
              {
                v46 = -5;
              }

              else
              {
                v46 = 5;
              }

              if (v32)
              {
LABEL_36:
                v47 = *(*(v32 + 40) + v28 + 12);
                goto LABEL_42;
              }
            }

            v47 = 10 * *(*(v29 + 24) + v35 + 4);
LABEL_42:
            v48 = v45 / 10;
            v49 = 103 * (v46 + v45 % 10);
            v50 = v48 + v31 + ((v49 >> 15) & 1) + (v49 >> 10);
            v51 = v47 / 10;
            v52 = v47 % 10;
            if (v47 < 0)
            {
              v53 = -5;
            }

            else
            {
              v53 = 5;
            }

            if (v50 >= (v51 + v33 + (((103 * (v53 + v52)) >> 15) & 1) + ((103 * (v53 + v52)) >> 10)))
            {
              return 0;
            }

            v28 += 20;
            v35 += 24;
          }

          while (v34 != v28);
        }
      }
    }

    ++v20;
    result = 1;
  }

  while (v20 != v21);
  return result;
}

uint64_t sub_C4A8BC(uint64_t result, uint64_t **a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = sub_C4B020(a3, *(a2 - 1), *v9);
      if (result)
      {
        v60 = *v9;
        *v9 = *(a2 - 1);
LABEL_114:
        *(a2 - 1) = v60;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      v61 = (v9 + 8);
      v63 = v9 == a2 || v61 == a2;
      if (a5)
      {
        if (!v63)
        {
          v64 = 0;
          do
          {
            v67 = *v9;
            v66 = *(v9 + 8);
            v9 = v61;
            result = sub_C4B020(a3, v66, v67);
            if (result)
            {
              v68 = *v9;
              v69 = v64;
              do
              {
                *(v8 + v69 + 8) = *(v8 + v69);
                if (!v69)
                {
                  v65 = v8;
                  goto LABEL_90;
                }

                result = sub_C4B020(a3, v68, *(v8 + v69 - 8));
                v69 -= 8;
              }

              while ((result & 1) != 0);
              v65 = (v8 + v69 + 8);
LABEL_90:
              *v65 = v68;
            }

            v61 = (v9 + 8);
            v64 += 8;
          }

          while ((v9 + 8) != a2);
        }
      }

      else if (!v63)
      {
        do
        {
          v73 = *v8;
          v72 = *(v8 + 8);
          v8 = v61;
          result = sub_C4B020(a3, v72, v73);
          if (result)
          {
            v74 = *v8;
            v75 = v8;
            do
            {
              v76 = v75;
              v77 = *--v75;
              *v76 = v77;
              result = sub_C4B020(a3, v74, *(v76 - 2));
            }

            while ((result & 1) != 0);
            *v75 = v74;
          }

          v61 = (v8 + 8);
        }

        while ((v8 + 8) != a2);
      }

      return result;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return sub_C4C004(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    if (v12 >= 0x81)
    {
      v14 = sub_C4B020(a3, *(v8 + 8 * v13), *v8);
      v15 = sub_C4B020(a3, *(a2 - 1), *(v8 + 8 * v13));
      if (v14)
      {
        v16 = *v8;
        if (v15)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v16;
        }

        else
        {
          *v8 = *(v8 + 8 * v13);
          *(v8 + 8 * v13) = v16;
          if (sub_C4B020(a3, *(a2 - 1), v16))
          {
            v24 = *(v8 + 8 * v13);
            *(v8 + 8 * v13) = *(a2 - 1);
            *(a2 - 1) = v24;
          }
        }
      }

      else if (v15)
      {
        v20 = *(v8 + 8 * v13);
        *(v8 + 8 * v13) = *(a2 - 1);
        *(a2 - 1) = v20;
        if (sub_C4B020(a3, *(v8 + 8 * v13), *v8))
        {
          v21 = *v8;
          *v8 = *(v8 + 8 * v13);
          *(v8 + 8 * v13) = v21;
        }
      }

      v25 = v13 - 1;
      v26 = sub_C4B020(a3, *(v8 + 8 * (v13 - 1)), *(v8 + 8));
      v27 = sub_C4B020(a3, *(a2 - 2), *(v8 + 8 * (v13 - 1)));
      if (v26)
      {
        v28 = *(v8 + 8);
        if (v27)
        {
          *(v8 + 8) = *(a2 - 2);
          *(a2 - 2) = v28;
        }

        else
        {
          *(v8 + 8) = *(v8 + 8 * v25);
          *(v8 + 8 * v25) = v28;
          if (sub_C4B020(a3, *(a2 - 2), v28))
          {
            v32 = *(v8 + 8 * v25);
            *(v8 + 8 * v25) = *(a2 - 2);
            *(a2 - 2) = v32;
          }
        }
      }

      else if (v27)
      {
        v29 = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = *(a2 - 2);
        *(a2 - 2) = v29;
        if (sub_C4B020(a3, *(v8 + 8 * v25), *(v8 + 8)))
        {
          v30 = *(v8 + 8);
          *(v8 + 8) = *(v8 + 8 * v25);
          *(v8 + 8 * v25) = v30;
        }
      }

      v33 = v13 + 1;
      v34 = sub_C4B020(a3, *(v8 + 8 * (v13 + 1)), *(v8 + 16));
      v35 = sub_C4B020(a3, *(a2 - 3), *(v8 + 8 * (v13 + 1)));
      if (v34)
      {
        v36 = *(v8 + 16);
        if (v35)
        {
          *(v8 + 16) = *(a2 - 3);
          *(a2 - 3) = v36;
        }

        else
        {
          *(v8 + 16) = *(v8 + 8 * v33);
          *(v8 + 8 * v33) = v36;
          if (sub_C4B020(a3, *(a2 - 3), v36))
          {
            v39 = *(v8 + 8 * v33);
            *(v8 + 8 * v33) = *(a2 - 3);
            *(a2 - 3) = v39;
          }
        }
      }

      else if (v35)
      {
        v37 = *(v8 + 8 * v33);
        *(v8 + 8 * v33) = *(a2 - 3);
        *(a2 - 3) = v37;
        if (sub_C4B020(a3, *(v8 + 8 * v33), *(v8 + 16)))
        {
          v38 = *(v8 + 16);
          *(v8 + 16) = *(v8 + 8 * v33);
          *(v8 + 8 * v33) = v38;
        }
      }

      v40 = sub_C4B020(a3, *(v8 + 8 * v13), *(v8 + 8 * v25));
      v41 = sub_C4B020(a3, *(v8 + 8 * v33), *(v8 + 8 * v13));
      if (v40)
      {
        v42 = *(v8 + 8 * v25);
        if (v41)
        {
          *(v8 + 8 * v25) = *(v8 + 8 * v33);
          *(v8 + 8 * v33) = v42;
        }

        else
        {
          *(v8 + 8 * v25) = *(v8 + 8 * v13);
          *(v8 + 8 * v13) = v42;
          if (sub_C4B020(a3, *(v8 + 8 * v33), v42))
          {
            v46 = *(v8 + 8 * v13);
            *(v8 + 8 * v13) = *(v8 + 8 * v33);
            *(v8 + 8 * v33) = v46;
          }
        }
      }

      else if (v41)
      {
        v43 = *(v8 + 8 * v13);
        v44 = *(v8 + 8 * v33);
        *(v8 + 8 * v13) = v44;
        *(v8 + 8 * v33) = v43;
        if (sub_C4B020(a3, v44, *(v8 + 8 * v25)))
        {
          v45 = *(v8 + 8 * v25);
          *(v8 + 8 * v25) = *(v8 + 8 * v13);
          *(v8 + 8 * v13) = v45;
        }
      }

      v47 = *v8;
      *v8 = *(v8 + 8 * v13);
      *(v8 + 8 * v13) = v47;
      if (a5)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }

    v17 = sub_C4B020(a3, *v8, *(v8 + 8 * v13));
    v18 = sub_C4B020(a3, *(a2 - 1), *v8);
    if (v17)
    {
      v19 = *(v8 + 8 * v13);
      if (!v18)
      {
        *(v8 + 8 * v13) = *v8;
        *v8 = v19;
        if (sub_C4B020(a3, *(a2 - 1), v19))
        {
          v31 = *v8;
          *v8 = *(a2 - 1);
          *(a2 - 1) = v31;
        }

LABEL_38:
        if (a5)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }

      *(v8 + 8 * v13) = *(a2 - 1);
      *(a2 - 1) = v19;
      if (a5)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (!v18)
      {
        goto LABEL_38;
      }

      v22 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v22;
      if (!sub_C4B020(a3, *v8, *(v8 + 8 * v13)))
      {
        goto LABEL_38;
      }

      v23 = *(v8 + 8 * v13);
      *(v8 + 8 * v13) = *v8;
      *v8 = v23;
      if (a5)
      {
        goto LABEL_60;
      }
    }

LABEL_59:
    if ((sub_C4B020(a3, *(v8 - 8), *v8) & 1) == 0)
    {
      result = sub_C4B9A4(v8, a2, a3);
      v9 = result;
      goto LABEL_65;
    }

LABEL_60:
    v48 = sub_C4BAB4(v8, a2, a3);
    if ((v49 & 1) == 0)
    {
      goto LABEL_63;
    }

    v50 = sub_C4BBD0(v8, v48, a3);
    v9 = (v48 + 1);
    result = sub_C4BBD0(v48 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v48;
      if (v50)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v50)
    {
LABEL_63:
      result = sub_C4A8BC(v8, v48, a3, -v11, a5 & 1);
      v9 = (v48 + 1);
LABEL_65:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return sub_C4B850(v9, (v9 + 8), (v9 + 16), a2 - 1, a3);
    }

    if (v12 == 5)
    {
      sub_C4B850(v9, (v9 + 8), (v9 + 16), (v9 + 24), a3);
      result = sub_C4B020(a3, *(a2 - 1), *(v9 + 24));
      if (!result)
      {
        return result;
      }

      v53 = *(v9 + 24);
      *(v9 + 24) = *(a2 - 1);
      *(a2 - 1) = v53;
      result = sub_C4B020(a3, *(v9 + 24), *(v9 + 16));
      if (!result)
      {
        return result;
      }

      v55 = *(v9 + 16);
      v54 = *(v9 + 24);
      v56 = *(v9 + 8);
      *(v9 + 16) = v54;
      *(v9 + 24) = v55;
      result = sub_C4B020(a3, v54, v56);
      if (!result)
      {
        return result;
      }

      v58 = *(v9 + 8);
      v57 = *(v9 + 16);
      v59 = *v9;
      *(v9 + 8) = v57;
      *(v9 + 16) = v58;
      goto LABEL_103;
    }

    goto LABEL_11;
  }

  v51 = sub_C4B020(a3, *(v9 + 8), *v9);
  result = sub_C4B020(a3, *(a2 - 1), *(v9 + 8));
  if ((v51 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v70 = *(v9 + 8);
    *(v9 + 8) = *(a2 - 1);
    *(a2 - 1) = v70;
    v59 = *v9;
    v57 = *(v9 + 8);
LABEL_103:
    result = sub_C4B020(a3, v57, v59);
    if (result)
    {
      v71 = *v9;
      *v9 = *(v9 + 8);
      *(v9 + 8) = v71;
    }

    return result;
  }

  v52 = *v9;
  if (result)
  {
    *v9 = *(a2 - 1);
    *(a2 - 1) = v52;
    return result;
  }

  *v9 = *(v9 + 8);
  *(v9 + 8) = v52;
  result = sub_C4B020(a3, *(a2 - 1), v52);
  if (result)
  {
    v60 = *(v9 + 8);
    *(v9 + 8) = *(a2 - 1);
    goto LABEL_114;
  }

  return result;
}

uint64_t sub_C4B020(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = (v4 - *a2) >> 7;
  v6 = *a3;
  v7 = (a3[1] - *a3) >> 7;
  if (v5 != v7)
  {
    return v5 < v7;
  }

  if (v4 != v3)
  {
    v10 = (v3 + 16);
    v11 = (v6 + 16);
    do
    {
      v12 = (*v10 - **v10);
      if (*v12 >= 7u && (v13 = v12[3]) != 0)
      {
        v14 = *(*v10 + v13 + 4) | (*(*v10 + v13) << 32);
        v15 = *v11;
        v16 = &(*v11)[-**v11];
        if (*v16 < 7u)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v14 = 0xFFFFFFFFLL;
        v15 = *v11;
        v16 = &(*v11)[-**v11];
        if (*v16 < 7u)
        {
          goto LABEL_12;
        }
      }

      v17 = *(v16 + 3);
      if (!v17)
      {
LABEL_12:
        LODWORD(v18) = -1;
        v19 = HIDWORD(v14);
        v20 = 0;
        if (HIDWORD(v14))
        {
          goto LABEL_22;
        }

        goto LABEL_13;
      }

      v18 = *&v15[v17 + 4] | (*&v15[v17] << 32);
      v19 = HIDWORD(v14);
      v20 = HIDWORD(v18);
      if (HIDWORD(v14) != HIDWORD(v18))
      {
        goto LABEL_22;
      }

LABEL_13:
      if (v14 != v18)
      {
LABEL_22:
        v34 = v14 < v18;
        v35 = v19 >= v20;
        v36 = v19 == v20;
LABEL_23:
        v37 = !v35;
        if (v36)
        {
          return v34;
        }

        else
        {
          return v37;
        }
      }

      v10 += 16;
      v11 += 16;
      --v5;
    }

    while (v5);
  }

  v21 = *(v3 + 80);
  v22 = *(v3 + 88);
  if (v21 != v22)
  {
    v23 = sub_2FEF94(0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 2));
    v6 = *a3;
    v24 = *(*a3 + 80);
    v25 = *(*a3 + 88);
    if (v24 != v25)
    {
      goto LABEL_17;
    }

LABEL_30:
    if ((v23 != 0) != (*(v6 + 52) != 0))
    {
LABEL_18:
      v26 = *(*a2 + 80);
      v27 = *(*a2 + 88);
      if (v26 == v27)
      {
        v28 = *(*a2 + 52);
        v29 = *a3;
        v30 = *(*a3 + 80);
        v31 = *(*a3 + 88);
        if (v30 != v31)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v28 = sub_2FEF94(0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 2));
        v29 = *a3;
        v30 = *(*a3 + 80);
        v31 = *(*a3 + 88);
        if (v30 != v31)
        {
LABEL_20:
          v32 = sub_2FEF94(0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 2));
LABEL_47:
          if (v28)
          {
            v52 = 1;
          }

          else
          {
            v52 = v32 == 0;
          }

          return !v52;
        }
      }

      v32 = *(v29 + 52);
      goto LABEL_47;
    }

    goto LABEL_31;
  }

  v23 = *(v3 + 52);
  v24 = *(v6 + 80);
  v25 = *(v6 + 88);
  if (v24 == v25)
  {
    goto LABEL_30;
  }

LABEL_17:
  if ((v23 != 0) != (sub_2FEF94(0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 2)) != 0))
  {
    goto LABEL_18;
  }

LABEL_31:
  v38 = *a2;
  v39 = a2[1] - *a2;
  if (!v39)
  {
    goto LABEL_140;
  }

  v40 = v39 >> 7;
  v41 = (v38 + 16);
  v42 = (*a3 + 16);
  v43 = v40;
  do
  {
    v45 = (*v41 - **v41);
    if (*v45 >= 9u && (v46 = v45[4]) != 0)
    {
      v47 = *(*v41 + v46);
      v48 = *v42;
      v49 = &(*v42)[-**v42];
      if (*v49 < 9u)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v47 = 0;
      v48 = *v42;
      v49 = &(*v42)[-**v42];
      if (*v49 < 9u)
      {
        goto LABEL_33;
      }
    }

    v50 = *(v49 + 4);
    if (!v50)
    {
LABEL_33:
      v44 = 1;
      if (v47)
      {
        return !v44;
      }

      goto LABEL_34;
    }

    v51 = *&v48[v50];
    v44 = v47 >= v51;
    if (v47 != v51)
    {
      return !v44;
    }

LABEL_34:
    v41 += 16;
    v42 += 16;
    --v43;
  }

  while (v43);
  v53 = *a3 + 32;
  v54 = v38 + 32;
  v55 = v40;
  do
  {
    v57 = *v54 == 0;
    if (!*v54)
    {
      if (!*v53)
      {
        goto LABEL_55;
      }

      LOBYTE(v58) = *(*v53 + 33);
LABEL_54:
      v56 = *v54 == 0;
      if (v58)
      {
        return v56 & v57;
      }

      goto LABEL_55;
    }

    v58 = *(*v54 + 33);
    if (!*v53)
    {
      goto LABEL_54;
    }

    v56 = *(*v53 + 33);
    if (v58 != v56)
    {
      v57 = v58 ^ 1;
      return v56 & v57;
    }

LABEL_55:
    v53 += 128;
    v54 += 128;
    --v55;
  }

  while (v55);
  v59 = 0;
  while (2)
  {
    v60 = (*a2 + (v59 << 7));
    v61 = v60[2];
    v62 = (v61 - *v61);
    if (*v62 >= 9u)
    {
      v63 = v62[4];
      if (v63)
      {
        v64 = *(v61 + v63);
        if (v64)
        {
          v65 = 0;
          v66 = 0;
          v67 = (*a3 + (v59 << 7));
          do
          {
            v68 = v60[3];
            v69 = __ROR8__(*(v68 + v65), 32);
            v70 = v67[3];
            v71 = HIDWORD(v69);
            v72 = __ROR8__(*(v70 + v65), 32);
            v73 = HIDWORD(v72);
            if (HIDWORD(v69) != HIDWORD(v72) || v69 != v72)
            {
              v34 = v69 < v72;
              v35 = v71 >= v73;
              v36 = v71 == v73;
              goto LABEL_23;
            }

            v75 = v60[7];
            v76 = v60[8];
            if (v75 == v76)
            {
              v83 = v60[4];
              if (v83)
              {
                v77 = (*(v83 + 40) + 20 * v66 + 16);
                v78 = v67[7];
                v79 = v67[8];
                v80 = (v78 + 2 * v66);
                if (v78 != v79)
                {
                  goto LABEL_75;
                }
              }

              else
              {
                v77 = (v68 + v65 + 16);
                v78 = v67[7];
                v79 = v67[8];
                v80 = (v78 + 2 * v66);
                if (v78 != v79)
                {
LABEL_75:
                  v81 = *v77;
                  v82 = *v80;
                  v44 = v81 >= v82;
                  if (v81 != v82)
                  {
                    return !v44;
                  }

                  goto LABEL_85;
                }
              }
            }

            else
            {
              v77 = (v75 + 2 * v66);
              v78 = v67[7];
              v79 = v67[8];
              v80 = (v78 + 2 * v66);
              if (v78 != v79)
              {
                goto LABEL_75;
              }
            }

            v84 = v67[4];
            if (v84)
            {
              v85 = *(v84 + 40) + 20 * v66;
            }

            else
            {
              v85 = v70 + v65;
            }

            v86 = *v77;
            v87 = *(v85 + 16);
            v44 = v86 >= v87;
            if (v86 != v87)
            {
              return !v44;
            }

LABEL_85:
            if (v75 == v76)
            {
              v91 = v60[4];
              if (v91)
              {
                v88 = (*(v91 + 40) + 20 * v66 + 17);
                if (v78 != v79)
                {
                  goto LABEL_87;
                }
              }

              else
              {
                v88 = (v68 + v65 + 17);
                if (v78 != v79)
                {
LABEL_87:
                  v89 = *v88;
                  v90 = v80[1];
                  v44 = v89 >= v90;
                  if (v89 != v90)
                  {
                    return !v44;
                  }

                  goto LABEL_97;
                }
              }
            }

            else
            {
              v88 = (v75 + 2 * v66 + 1);
              if (v78 != v79)
              {
                goto LABEL_87;
              }
            }

            v92 = v67[4];
            if (v92)
            {
              v93 = *(v92 + 40) + 20 * v66;
            }

            else
            {
              v93 = v70 + v65;
            }

            v94 = *v88;
            v95 = *(v93 + 17);
            v44 = v94 >= v95;
            if (v94 != v95)
            {
              return !v44;
            }

LABEL_97:
            v96 = *(v68 + v65 + 20);
            v97 = *(v70 + v65 + 20);
            v44 = v96 >= v97;
            if (v96 != v97)
            {
              return !v44;
            }

            v98 = v60[13];
            if (v98 == v60[14])
            {
              v99 = 0;
              v100 = v67[13];
              if (v100 != v67[14])
              {
LABEL_100:
                v101 = *(v100 + 8 * v66);
                if (v101 != v99)
                {
                  goto LABEL_146;
                }

                goto LABEL_104;
              }
            }

            else
            {
              v99 = *(v98 + 8 * v66);
              v100 = v67[13];
              if (v100 != v67[14])
              {
                goto LABEL_100;
              }
            }

            v101 = 0;
            if (v99)
            {
LABEL_146:
              v44 = v99 >= v101;
              return !v44;
            }

LABEL_104:
            v102 = v60[2];
            v103 = (v102 - *v102);
            v104 = *v103;
            if (v104 < 0x27)
            {
              if (v104 < 0x11)
              {
                goto LABEL_113;
              }
            }

            else if (v103[19])
            {
              v105 = sub_BCAB48((v102 + v103[19] + *(v102 + v103[19])), v66);
              v106 = v67[2];
              v107 = (v106 - *v106);
              v108 = *v107;
              if (v108 < 0x27)
              {
                goto LABEL_107;
              }

              goto LABEL_114;
            }

            v109 = v103[8];
            if (v109)
            {
              v105 = *(v102 + v109);
              v106 = v67[2];
              v107 = (v106 - *v106);
              v108 = *v107;
              if (v108 < 0x27)
              {
                goto LABEL_107;
              }

              goto LABEL_114;
            }

LABEL_113:
            v105 = -1;
            v106 = v67[2];
            v107 = (v106 - *v106);
            v108 = *v107;
            if (v108 < 0x27)
            {
LABEL_107:
              if (v108 < 0x11)
              {
                goto LABEL_118;
              }

              goto LABEL_116;
            }

LABEL_114:
            if (v107[19])
            {
              v110 = sub_BCAB48((v106 + v107[19] + *(v106 + v107[19])), v66);
              goto LABEL_119;
            }

LABEL_116:
            v111 = v107[8];
            if (v111)
            {
              v110 = *(v106 + v111);
              goto LABEL_119;
            }

LABEL_118:
            v110 = -1;
LABEL_119:
            v44 = v105 >= v110;
            if (v105 != v110)
            {
              return !v44;
            }

            v112 = v60[2];
            v113 = (v112 - *v112);
            v114 = *v113;
            if (v114 < 0x25)
            {
              if (v114 < 0xF)
              {
                goto LABEL_129;
              }
            }

            else if (v113[18])
            {
              v115 = sub_BCAB48((v112 + v113[18] + *(v112 + v113[18])), v66);
              v116 = v67[2];
              v117 = (v116 - *v116);
              v118 = *v117;
              if (v118 < 0x25)
              {
                goto LABEL_123;
              }

              goto LABEL_130;
            }

            v119 = v113[7];
            if (v119)
            {
              v115 = *(v112 + v119);
              v116 = v67[2];
              v117 = (v116 - *v116);
              v118 = *v117;
              if (v118 < 0x25)
              {
                goto LABEL_123;
              }

              goto LABEL_130;
            }

LABEL_129:
            v115 = -1;
            v116 = v67[2];
            v117 = (v116 - *v116);
            v118 = *v117;
            if (v118 < 0x25)
            {
LABEL_123:
              if (v118 < 0xF)
              {
                goto LABEL_134;
              }

              goto LABEL_132;
            }

LABEL_130:
            if (v117[18])
            {
              v120 = sub_BCAB48((v116 + v117[18] + *(v116 + v117[18])), v66);
              goto LABEL_135;
            }

LABEL_132:
            v121 = v117[7];
            if (!v121)
            {
LABEL_134:
              v120 = -1;
              goto LABEL_135;
            }

            v120 = *(v116 + v121);
LABEL_135:
            v44 = v115 >= v120;
            if (v115 != v120)
            {
              return !v44;
            }

            ++v66;
            v65 += 24;
          }

          while (v64 != v66);
        }
      }
    }

    if (++v59 != v40)
    {
      continue;
    }

    break;
  }

  v38 = *a2;
LABEL_140:
  v122 = *(v38 + 80);
  v123 = *(v38 + 88);
  if (v122 == v123)
  {
    v128 = *(v38 + 52);
    v125 = *a2;
    if (!v128)
    {
      goto LABEL_144;
    }

LABEL_142:
    v126 = sub_C4BEE0(v125, 0);
    v127 = sub_C4BEE0(*a3, 0);
  }

  else
  {
    v124 = sub_2FEF94(0xAAAAAAAAAAAAAAABLL * ((v123 - v122) >> 2));
    v125 = *a2;
    if (v124)
    {
      goto LABEL_142;
    }

LABEL_144:
    v126 = sub_C4BF74(v125, 0);
    v127 = sub_C4BF74(*a3, 0);
  }

  return v126 < v127;
}

uint64_t sub_C4B850(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t a5)
{
  v10 = sub_C4B020(a5, *a2, *a1);
  v11 = sub_C4B020(a5, *a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if (sub_C4B020(a5, *a3, v12))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (sub_C4B020(a5, *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = sub_C4B020(a5, *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = sub_C4B020(a5, *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = sub_C4B020(a5, *a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t **sub_C4B9A4(uint64_t **a1, uint64_t **a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  if (sub_C4B020(a3, *a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while ((sub_C4B020(a3, v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!sub_C4B020(a3, v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while ((sub_C4B020(a3, v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    do
    {
      v12 = v7[1];
      ++v7;
    }

    while (!sub_C4B020(a3, v6, v12));
    do
    {
      v13 = *--v4;
    }

    while ((sub_C4B020(a3, v6, v13) & 1) != 0);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

uint64_t *sub_C4BAB4(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = sub_C4B020(a3, a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while ((sub_C4B020(a3, v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (!sub_C4B020(a3, v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while ((sub_C4B020(a3, v16, v7) & 1) != 0);
      do
      {
        v17 = *--v14;
      }

      while (!sub_C4B020(a3, v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL sub_C4BBD0(uint64_t **a1, uint64_t **a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = sub_C4B020(a3, a1[1], *a1);
        v16 = sub_C4B020(a3, *(a2 - 1), a1[1]);
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v17;
            if (sub_C4B020(a3, *(a2 - 1), v17))
            {
              v28 = a1[1];
              a1[1] = *(a2 - 1);
              *(a2 - 1) = v28;
            }
          }

          return 1;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = a1[1];
        break;
      case 4:
        sub_C4B850(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_C4B850(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!sub_C4B020(a3, *(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!sub_C4B020(a3, a1[3], a1[2]))
        {
          return 1;
        }

        v10 = a1[2];
        v9 = a1[3];
        v11 = a1[1];
        a1[2] = v9;
        a1[3] = v10;
        if (!sub_C4B020(a3, v9, v11))
        {
          return 1;
        }

        v13 = a1[1];
        v12 = a1[2];
        v14 = *a1;
        a1[1] = v12;
        a1[2] = v13;
        break;
      default:
        goto LABEL_16;
    }

    if (sub_C4B020(a3, v12, v14))
    {
      v23 = *a1;
      *a1 = a1[1];
      a1[1] = v23;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (sub_C4B020(a3, *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_16:
  v18 = sub_C4B020(a3, a1[1], *a1);
  v19 = a1 + 2;
  v20 = sub_C4B020(a3, a1[2], a1[1]);
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = a1[2];
      a1[2] = v21;
    }

    else
    {
      v29 = a1[2];
      *a1 = a1[1];
      a1[1] = v21;
      if (sub_C4B020(a3, v29, v21))
      {
        v30 = a1[1];
        a1[1] = a1[2];
        a1[2] = v30;
      }
    }
  }

  else if (v20)
  {
    v25 = a1[1];
    v24 = a1[2];
    v26 = *a1;
    a1[1] = v24;
    a1[2] = v25;
    if (sub_C4B020(a3, v24, v26))
    {
      v27 = *a1;
      *a1 = a1[1];
      a1[1] = v27;
    }
  }

  v31 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v32 = 0;
  v33 = 0;
  while (!sub_C4B020(a3, *v31, *v19))
  {
LABEL_40:
    v19 = v31;
    v32 += 8;
    if (++v31 == a2)
    {
      return 1;
    }
  }

  v34 = *v31;
  v35 = v32;
  do
  {
    v36 = (a1 + v35);
    *(a1 + v35 + 24) = *(a1 + v35 + 16);
    if (v35 == -16)
    {
      *a1 = v34;
      if (++v33 != 8)
      {
        goto LABEL_40;
      }

      return v31 + 1 == a2;
    }

    v35 -= 8;
  }

  while ((sub_C4B020(a3, v34, v36[1]) & 1) != 0);
  *(a1 + v35 + 24) = v34;
  if (++v33 != 8)
  {
    goto LABEL_40;
  }

  return v31 + 1 == a2;
}

uint64_t sub_C4BEE0(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 80);
  if (v2 == *(a1 + 88))
  {
    v3 = 10 * *(*(a1 + 40) + 12 * a2 + 4);
  }

  else
  {
    v3 = *(v2 + 12 * a2);
  }

  v4 = v3 / 10;
  v5 = v3 % 10;
  if (v3 < 0)
  {
    v6 = -5;
  }

  else
  {
    v6 = 5;
  }

  return v4 + *(a1 + 48) + (((103 * (v6 + v5)) >> 15) & 1) + ((103 * (v6 + v5)) >> 10);
}

uint64_t sub_C4BF74(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*(v2 + 40) + 20 * a2 + 12);
  }

  else
  {
    v3 = 10 * *(*(a1 + 24) + 24 * a2 + 12);
  }

  v4 = v3 / 10;
  v5 = v3 % 10;
  if (v3 < 0)
  {
    v6 = -5;
  }

  else
  {
    v6 = 5;
  }

  return v4 + *(a1 + 48) + (((103 * (v6 + v5)) >> 15) & 1) + ((103 * (v6 + v5)) >> 10);
}

uint64_t **sub_C4C004(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_C4C23C(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (sub_C4B020(a4, *v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_C4C23C(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        if (v8 >= 2)
        {
          v16 = 0;
          v32 = *a1;
          v33 = v6;
          v17 = (v8 - 2) >> 1;
          v18 = a1;
          do
          {
            while (1)
            {
              v22 = &v18[v16];
              v21 = v22 + 1;
              v23 = (2 * v16) | 1;
              v24 = 2 * v16 + 2;
              if (v24 < v8)
              {
                break;
              }

              v16 = (2 * v16) | 1;
              *v18 = *v21;
              v18 = v22 + 1;
              if (v23 > v17)
              {
                goto LABEL_24;
              }
            }

            v20 = v22[2];
            v19 = v22 + 2;
            if (sub_C4B020(a4, *(v19 - 1), v20))
            {
              v21 = v19;
              v16 = v24;
            }

            else
            {
              v16 = v23;
            }

            *v18 = *v21;
            v18 = v21;
          }

          while (v16 <= v17);
LABEL_24:
          v6 = v33;
          v25 = v33 - 1;
          if (v21 == v33 - 1)
          {
            *v21 = v32;
          }

          else
          {
            *v21 = *v25;
            *v25 = v32;
            v26 = (v21 - a1 + 8) >> 3;
            v15 = v26 < 2;
            v27 = v26 - 2;
            if (!v15)
            {
              v28 = v27 >> 1;
              v29 = &a1[v27 >> 1];
              if (sub_C4B020(a4, *v29, *v21))
              {
                v30 = *v21;
                do
                {
                  v31 = v21;
                  v21 = v29;
                  *v31 = *v29;
                  if (!v28)
                  {
                    break;
                  }

                  v28 = (v28 - 1) >> 1;
                  v29 = &a1[v28];
                }

                while ((sub_C4B020(a4, *v29, v30) & 1) != 0);
                *v21 = v30;
              }
            }
          }
        }

        --v6;
        v15 = v8-- > 2;
      }

      while (v15);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_C4C23C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && sub_C4B020(a2, *v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = sub_C4B020(a2, *v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v5;
          v5 = v12;
          *v15 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          v17 = 2 * v11 + 2;
          if (v17 < a3)
          {
            if (sub_C4B020(a2, *v12, v12[1]))
            {
              ++v12;
              v16 = v17;
            }
          }

          result = sub_C4B020(a2, *v12, v14);
          v11 = v16;
        }

        while (!result);
        *v5 = v14;
      }
    }
  }

  return result;
}

uint64_t sub_C4C36C(void *a1, uint64_t a2)
{
  v2 = sub_92FC60(*a1 + 24, __ROR8__(a2, 32), 0, "line");
  v3 = (v2 - *v2);
  if (*v3 >= 9u && v3[4] && *(v2 + v3[4] + *(v2 + v3[4])))
  {
    operator new();
  }

  return 3;
}

void sub_C4C520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C4C54C(uint64_t result)
{
  if ((result & 0xFFFF0000) != 0)
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

void sub_C4C60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

unint64_t sub_C4C68C(unint64_t result)
{
  if (result >= 0x100)
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

void sub_C4C74C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

char **sub_C4C7CC(char **a1)
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
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 6);
        if (v6)
        {
          *(v3 - 5) = v6;
          operator delete(v6);
        }

        v7 = *(v3 - 9);
        if (v7)
        {
          *(v3 - 8) = v7;
          operator delete(v7);
        }

        v3 -= 128;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_C4C860(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 57))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_C4C94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_C4C96C(va);
  *(v10 + 8) = v11;
  sub_C4CC34(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_C4C96C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 48);
      if (v6)
      {
        *(v3 - 40) = v6;
        operator delete(v6);
      }

      v7 = *(v3 - 72);
      if (v7)
      {
        *(v3 - 64) = v7;
        operator delete(v7);
      }

      v3 -= 128;
    }
  }

  return a1;
}

uint64_t sub_C4C9F0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 56) = 0;
  *a1 = v2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v6 = *(a2 + 7);
  v5 = *(a2 + 8);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v8 = *(a2 + 10);
  v7 = *(a2 + 11);
  if (v7 != v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v10 = *(a2 + 13);
  v9 = *(a2 + 14);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_C4CB70(_Unwind_Exception *exception_object)
{
  v6 = *v2;
  if (*v2)
  {
    v1[14] = v6;
    operator delete(v6);
    v7 = *v4;
    if (!*v4)
    {
LABEL_3:
      v8 = *v3;
      if (!*v3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v7 = *v4;
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  v1[11] = v7;
  operator delete(v7);
  v8 = *v3;
  if (!*v3)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  v1[8] = v8;
  operator delete(v8);
  goto LABEL_5;
}

void sub_C4CBD0()
{
  if (!*v0)
  {
    JUMPOUT(0xC4CB94);
  }

  JUMPOUT(0xC4CB8CLL);
}

void *sub_C4CBE0(void *a1)
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

  return a1;
}

void ***sub_C4CC34(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 3);
          if (v6)
          {
            *(v4 - 2) = v6;
            operator delete(v6);
          }

          v7 = *(v4 - 6);
          if (v7)
          {
            *(v4 - 5) = v7;
            operator delete(v7);
          }

          v8 = *(v4 - 9);
          if (v8)
          {
            *(v4 - 8) = v8;
            operator delete(v8);
          }

          v4 -= 128;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void *sub_C4CCD8(void *a1, int **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_C45DD4(a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_23;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v9)
    {
      v11 = v7 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_23:
    sub_C4D02C();
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v13[1];
      if (v15 == v8)
      {
        if (sub_C45E20(a1, (v13 + 2), a2))
        {
          return v13;
        }
      }

      else if ((v15 & (*&v9 - 1)) != v11)
      {
        goto LABEL_23;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v8)
    {
      break;
    }

    if (v14 >= *&v9)
    {
      v14 %= *&v9;
    }

    if (v14 != v11)
    {
      goto LABEL_23;
    }

LABEL_12:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  if (!sub_C45E20(a1, (v13 + 2), a2))
  {
    goto LABEL_12;
  }

  return v13;
}

void sub_C4D018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9BB5DC(va);
  _Unwind_Resume(a1);
}

void sub_C4D0FC(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 24) = v5;
    operator delete(v5);
  }

  sub_9BB5DC(v1);
  _Unwind_Resume(a1);
}

void *sub_C4D120(void *a1, int **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_C45748(a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_23;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v9)
    {
      v11 = v7 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_23:
    sub_C4D474();
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v13[1];
      if (v15 == v8)
      {
        if (sub_C457AC(a1, (v13 + 2), a2))
        {
          return v13;
        }
      }

      else if ((v15 & (*&v9 - 1)) != v11)
      {
        goto LABEL_23;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v8)
    {
      break;
    }

    if (v14 >= *&v9)
    {
      v14 %= *&v9;
    }

    if (v14 != v11)
    {
      goto LABEL_23;
    }

LABEL_12:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  if (!sub_C457AC(a1, (v13 + 2), a2))
  {
    goto LABEL_12;
  }

  return v13;
}

void sub_C4D460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9BB5DC(va);
  _Unwind_Resume(a1);
}

void sub_C4D564(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 24) = v5;
    operator delete(v5);
  }

  sub_9BB5DC(v1);
  _Unwind_Resume(a1);
}

void sub_C4D588(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 112);
    if (v3)
    {
      *(a2 + 120) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 88);
    if (v4)
    {
      *(a2 + 96) = v4;
      operator delete(v4);
    }

    v5 = *(a2 + 48);
    if (v5)
    {
      *(a2 + 56) = v5;
      operator delete(v5);
    }

    v6 = *(a2 + 24);
    if (v6)
    {
      *(a2 + 32) = v6;
      operator delete(v6);
    }

    v7 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v7;
      operator delete(v7);
    }

    operator delete();
  }
}

uint64_t **sub_C4D624(uint64_t **a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = a1[1];
    v7 = *a1;
    if (v6 != v5)
    {
      v8 = v6 - 1;
      do
      {
        v10 = *v8;
        *v8 = 0;
        if (v10)
        {
          sub_C4D588(v8, v10);
        }
      }

      while (v8-- != v5);
      v7 = *a1;
    }

    a1[1] = v5;
    operator delete(v7);
  }

  return a1;
}

void sub_C4D6D4(uint64_t a1, char **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v5 = *a2;
    if (v4 == v2)
    {
      a2[1] = v2;
    }

    else
    {
      do
      {
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 6);
        if (v7)
        {
          *(v4 - 5) = v7;
          operator delete(v7);
        }

        v8 = *(v4 - 9);
        if (v8)
        {
          *(v4 - 8) = v8;
          operator delete(v8);
        }

        v4 -= 128;
      }

      while (v4 != v2);
      v5 = *a2;
      a2[1] = v2;
    }

    operator delete(v5);
  }
}

uint64_t sub_C4D7A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[2];
      if (v6)
      {
        v2[3] = v6;
        operator delete(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_C4D80C(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v7;
      v8[2] = v7[2];
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      v7 += 3;
      v8 += 3;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5;
      if (*v5)
      {
        v11 = v5[1];
        v9 = *v5;
        if (v11 != v10)
        {
          do
          {
            v12 = *(v11 - 3);
            if (v12)
            {
              *(v11 - 2) = v12;
              operator delete(v12);
            }

            v13 = *(v11 - 6);
            if (v13)
            {
              *(v11 - 5) = v13;
              operator delete(v13);
            }

            v14 = *(v11 - 9);
            if (v14)
            {
              *(v11 - 8) = v14;
              operator delete(v14);
            }

            v11 -= 128;
          }

          while (v11 != v10);
          v9 = *v5;
        }

        v5[1] = v10;
        operator delete(v9);
      }

      v5 += 3;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v15 = *a1;
  *a1 = v6;
  *(a1 + 8) = v15;
  a2[1] = v15;
  v16 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v16;
  v17 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
}

void **sub_C4D948(void **a1)
{
  sub_C4D97C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_C4D97C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v1)
  {
    v4 = *(a1 + 16);
    do
    {
      v7 = *(v4 - 3);
      v4 -= 3;
      v6 = v7;
      *(a1 + 16) = v4;
      if (v7)
      {
        v8 = *(v2 - 2);
        v5 = v6;
        if (v8 != v6)
        {
          do
          {
            v9 = *(v8 - 3);
            if (v9)
            {
              *(v8 - 2) = v9;
              operator delete(v9);
            }

            v10 = *(v8 - 6);
            if (v10)
            {
              *(v8 - 5) = v10;
              operator delete(v10);
            }

            v11 = *(v8 - 9);
            if (v11)
            {
              *(v8 - 8) = v11;
              operator delete(v11);
            }

            v8 -= 128;
          }

          while (v8 != v6);
          v5 = *v4;
        }

        *(v2 - 2) = v6;
        operator delete(v5);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v1);
  }
}

void sub_C4DA3C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v7 = a2[1] - *a2;
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v30 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
    do
    {
      v12 = *a2;
      if (v11 >= 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3))
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
      }

      else
      {
        v13 = (*a3 + v9);
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v15 = *v13;
        v14 = v13[1];
        if (v14 != v15)
        {
          if (((v14 - v15) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }
      }

      if (v11 >= 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3))
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
      }

      else
      {
        v16 = (*a4 + v9);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v18 = *v16;
        v17 = v16[1];
        if (v17 != v18)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 2) < 0x1555555555555556)
          {
            operator new();
          }

          sub_1794();
        }
      }

      if (v11 >= 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3))
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
      }

      else
      {
        v19 = (*a5 + v9);
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v21 = *v19;
        v20 = v19[1];
        if (v20 != v21)
        {
          if (((v20 - v21) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }
      }

      sub_C4DE74(a1, (v12 + v10), &v41, &v38, &v35, v44);
      v22 = a6[1];
      if (v22 >= a6[2])
      {
        sub_C4DF5C(a6, v44);
        v28 = v27;
        v29 = __p;
        a6[1] = v28;
        if (v29)
        {
          *(&__p + 1) = v29;
          operator delete(v29);
        }
      }

      else
      {
        v23 = v44[0];
        v24 = v44[2];
        v25 = v45;
        *(v22 + 16) = v44[1];
        *(v22 + 32) = v24;
        *v22 = v23;
        *(v22 + 48) = v25;
        *(v22 + 56) = 0;
        *(v22 + 64) = 0;
        *(v22 + 72) = 0;
        *(v22 + 56) = v46;
        *(v22 + 80) = 0;
        *(v22 + 88) = 0;
        *(v22 + 96) = 0;
        *(v22 + 104) = 0;
        *(v22 + 80) = v48;
        v26 = v49;
        *(v22 + 72) = v47;
        v46 = 0uLL;
        *(v22 + 96) = v26;
        v47 = 0;
        v48 = 0uLL;
        v49 = 0;
        *(v22 + 112) = 0;
        *(v22 + 120) = 0;
        *(v22 + 104) = __p;
        *(v22 + 120) = v51;
        __p = 0uLL;
        v51 = 0;
        a6[1] = v22 + 128;
      }

      if (v48)
      {
        *(&v48 + 1) = v48;
        operator delete(v48);
      }

      if (v46)
      {
        *(&v46 + 1) = v46;
        operator delete(v46);
      }

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      if (v41)
      {
        v42 = v41;
        operator delete(v41);
      }

      ++v11;
      v10 += 12;
      v9 += 24;
    }

    while (v30 != v11);
  }
}

void sub_C4DDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
    v26 = a21;
    if (!a21)
    {
LABEL_3:
      sub_C4C7CC(v24);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v26 = a21;
    if (!a21)
    {
      goto LABEL_3;
    }
  }

  operator delete(v26);
  sub_C4C7CC(v24);
  _Unwind_Resume(a1);
}

uint64_t sub_C4DE74@<X0>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_3A231C(*a1 + 24, a2[1] | (*a2 << 32), 0);
  v13 = sub_585D8((*a1 + 3896));
  v14 = *a1;
  if (sub_4C2B90(*a1 + 3896) && *(v14 + 3960))
  {
    v15 = sub_39F47C(*(*a1 + 3960), a2[1] | (*a2 << 32), a2[2], v13);
  }

  else
  {
    v15 = 0;
  }

  return sub_C4E274(a6, v12, a2, v15, a3, a4, a5);
}

double sub_C4DF5C(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 6 > v3)
  {
    v3 = v5 >> 6;
  }

  if (v5 >= 0x7FFFFFFFFFFFFF80)
  {
    v6 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v13 = v2 << 7;
  v7 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v7;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  *(v13 + 56) = *(a2 + 56);
  *(v13 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(v13 + 80) = *(a2 + 80);
  *(v13 + 96) = *(a2 + 96);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(v13 + 104) = *(a2 + 104);
  *(v13 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v8 = a1[1];
  v9 = (v2 << 7) + *a1 - v8;
  sub_C4E0C4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = ((v2 << 7) + 128);
  *(a1 + 1) = v11;
  if (v10)
  {
    operator delete(v10);
    *&v11 = (v2 << 7) + 128;
  }

  return *&v11;
}

void sub_C4E0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_C4E1C0(va);
  _Unwind_Resume(a1);
}

void sub_C4E0C4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = *(v6 + 2);
      v9 = v6[6];
      *(a4 + 16) = *(v6 + 1);
      *(a4 + 32) = v8;
      *a4 = v7;
      *(a4 + 48) = v9;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 7);
      *(a4 + 72) = v6[9];
      v6[7] = 0;
      v6[8] = 0;
      v6[9] = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = *(v6 + 5);
      *(a4 + 96) = v6[12];
      v6[10] = 0;
      v6[11] = 0;
      v6[12] = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 104) = *(v6 + 13);
      *(a4 + 120) = v6[15];
      v6[13] = 0;
      v6[14] = 0;
      v6[15] = 0;
      v6 += 16;
      a4 += 128;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v10 = v5[13];
      if (v10)
      {
        v5[14] = v10;
        operator delete(v10);
      }

      v11 = v5[10];
      if (v11)
      {
        v5[11] = v11;
        operator delete(v11);
      }

      v12 = v5[7];
      if (v12)
      {
        v5[8] = v12;
        operator delete(v12);
      }

      v5 += 16;
    }
  }
}

void **sub_C4E1C0(void **a1)
{
  sub_C4E1F4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_C4E1F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 48);
    if (v5)
    {
      *(i - 40) = v5;
      operator delete(v5);
    }

    v6 = *(i - 72);
    if (v6)
    {
      *(i - 64) = v6;
      operator delete(v6);
    }
  }
}

uint64_t sub_C4E274(uint64_t a1, int *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a3;
  *(a1 + 8) = a3[2];
  *a1 = v10;
  v11 = (a2 - *a2);
  v12 = *v11;
  if (v12 < 5 || !v11[2])
  {
    v21 = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = a4;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    goto LABEL_32;
  }

  v13 = &a2[*a3] + v11[2] + *(a2 + v11[2]);
  v14 = &v13[*(v13 + 1) + 4];
  *(a1 + 16) = v14;
  if (v12 < 7 || !v11[3])
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = a4;
    v18 = &v14[-*v14];
    v19 = *v18;
    if (v19 < 0x13)
    {
      goto LABEL_9;
    }

LABEL_13:
    v22 = *(v18 + 9);
    if (*(v18 + 9))
    {
      v22 += &v14[*&v14[v22] + 4];
    }

    *(a1 + 40) = v22;
    if (v12 < 0xD)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  v15 = 0x17FFFFFFE8;
  v16 = &v14[-*v14];
  if (*v16 >= 0xDu)
  {
    v17 = *(v16 + 6);
    if (v17)
    {
      v15 = 24 * *&v14[v17];
    }
  }

  *(a1 + 24) = a2 + v11[3] + *(a2 + v11[3]) + v15 + 4;
  *(a1 + 32) = a4;
  v18 = &v14[-*v14];
  v19 = *v18;
  if (v19 >= 0x13)
  {
    goto LABEL_13;
  }

LABEL_9:
  *(a1 + 40) = 0;
  if (v12 < 0xD)
  {
LABEL_10:
    LODWORD(v20) = 0;
    goto LABEL_20;
  }

LABEL_16:
  v20 = v11[6];
  if (!v20)
  {
LABEL_20:
    *(a1 + 48) = v20;
    v27 = &v14[-*v14];
    if (*v27 < 0x13u)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v23 = (a2 + v20);
  if (v19 >= 0x15 && (v24 = *(v18 + 10)) != 0)
  {
    v25 = a5;
    v26 = *&v14[v24];
  }

  else
  {
    v25 = a5;
    v26 = -1;
  }

  v28 = sub_A56DB8((v23 + *v23), a3[2] + v26)[1];
  v14 = *(a1 + 16);
  v29 = &v14[-*v14];
  if (*v29 < 0xBu)
  {
    v31 = 0x7FFFFFFF;
    a5 = v25;
  }

  else
  {
    v30 = *(v29 + 5);
    a5 = v25;
    if (v30)
    {
      v31 = *&v14[v30];
    }

    else
    {
      v31 = 0x7FFFFFFF;
    }
  }

  *(a1 + 48) = v31 + v28;
  v27 = &v14[-*v14];
  if (*v27 < 0x13u)
  {
    goto LABEL_31;
  }

LABEL_29:
  v32 = *(v27 + 9);
  if (v32)
  {
    v21 = *&v14[v32 + *&v14[v32]];
    goto LABEL_32;
  }

LABEL_31:
  v21 = 0;
LABEL_32:
  *(a1 + 56) = 0u;
  *(a1 + 52) = v21;
  *(a1 + 104) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  if (a1 + 56 != a5)
  {
    sub_C4E558((a1 + 56), *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 1);
  }

  if (a1 + 80 != a6)
  {
    sub_35354C((a1 + 80), *a6, *(a6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a6 + 8) - *a6) >> 2));
  }

  if (a1 + 104 != a7)
  {
    sub_31F64((a1 + 104), *a7, *(a7 + 8), (*(a7 + 8) - *a7) >> 3);
  }

  return a1;
}

void sub_C4E52C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 112) = v4;
    operator delete(v4);
  }

  sub_21E3988((v1 + 80), (v1 + 56), v1);
  _Unwind_Resume(a1);
}

char *sub_C4E558(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 1)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v6 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v6;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFELL;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 1)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t sub_C4E6A8(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v23 = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 24 * v2;
  __p = 0;
  v20 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v21 = 24 * v2 + 24;
  v22 = 0;
  sub_C4D80C(a1, &__p);
  v7 = a1[1];
  v8 = v20;
  v9 = v21;
  if (v21 != v20)
  {
    v10 = v21;
    do
    {
      v13 = *(v10 - 3);
      v10 -= 3;
      v12 = v13;
      v21 = v10;
      if (v13)
      {
        v14 = *(v9 - 16);
        v11 = v12;
        if (v14 != v12)
        {
          do
          {
            v15 = *(v14 - 3);
            if (v15)
            {
              *(v14 - 2) = v15;
              operator delete(v15);
            }

            v16 = *(v14 - 6);
            if (v16)
            {
              *(v14 - 5) = v16;
              operator delete(v16);
            }

            v17 = *(v14 - 9);
            if (v17)
            {
              *(v14 - 8) = v17;
              operator delete(v17);
            }

            v14 -= 128;
          }

          while (v14 != v12);
          v11 = *v10;
        }

        *(v9 - 16) = v12;
        operator delete(v11);
        v10 = v21;
      }

      v9 = v10;
    }

    while (v10 != v8);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_C4E858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_C4D948(va);
  _Unwind_Resume(a1);
}

void sub_C4E86C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a3;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v4 = a2[1] - *a2;
  if (v4)
  {
    v5 = 0;
    v24 = a1 << 32;
    v25 = v4 >> 3;
    v27 = v3;
    do
    {
      v6 = *a2;
      if (v5 >= (a2[1] - *a2) >> 3)
      {
        sub_6FAB4();
      }

      v7 = sub_2FEF94(v5);
      v8 = *(*(v6 + 8 * v5) + 8) - **(v6 + 8 * v5);
      if (v8)
      {
        v9 = 0;
        v10 = v8 >> 3;
        v11 = __ROR8__(v24 | v7, 32);
        do
        {
          while (1)
          {
            v12 = **(v6 + 8 * v5);
            if (v9 >= (*(*(v6 + 8 * v5) + 8) - v12) >> 3)
            {
              sub_6FAB4();
            }

            v28 = __ROR8__(*(v12 + 8 * v9), 32);
            v29 = &v28;
            v13 = sub_C4EB5C(v3, &v28, &unk_229EB70, &v29);
            v14 = sub_C4C68C(v9);
            v16 = v13[4];
            v15 = v13[5];
            if (v16 >= v15)
            {
              break;
            }

            *v16 = v11;
            *(v16 + 8) = v14;
            *(v16 + 9) = 0;
            *(v16 + 10) = 0;
            v13[4] = v16 + 12;
            if (v10 == ++v9)
            {
              goto LABEL_3;
            }
          }

          v17 = v13[3];
          v18 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 2) + 1;
          if (v18 > 0x1555555555555555)
          {
            sub_1794();
          }

          v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v17) >> 2);
          if (2 * v19 > v18)
          {
            v18 = 2 * v19;
          }

          if (v19 >= 0xAAAAAAAAAAAAAAALL)
          {
            v20 = 0x1555555555555555;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            if (v20 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v21 = 4 * ((v16 - v17) >> 2);
          *v21 = v11;
          *(v21 + 8) = v14;
          *(v21 + 9) = 0;
          *(v21 + 10) = 0;
          v22 = v21 + 12;
          v23 = (v21 - (v16 - v17));
          memcpy(v23, v17, v16 - v17);
          v13[3] = v23;
          v13[4] = v22;
          v13[5] = 0;
          if (v17)
          {
            operator delete(v17);
          }

          v3 = v27;
          v13[4] = v22;
          ++v9;
        }

        while (v10 != v9);
      }

LABEL_3:
      ++v5;
    }

    while (v5 != v25);
  }
}

uint64_t *sub_C4EB5C(void *a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *a2;
  v5 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v6 = (0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_31;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33);
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
        if (*(v11 + 5) == HIDWORD(v4) && *(v11 + 4) == v4)
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

  if (*(v11 + 5) != HIDWORD(v4) || *(v11 + 4) != v4)
  {
    goto LABEL_12;
  }

  return v11;
}

void sub_C4EEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

void sub_C4EED8(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v26 = a1 << 32;
    v27 = v3 >> 3;
    do
    {
      v33 = *a2;
      if (v4 >= (a2[1] - *a2) >> 3)
      {
        sub_6FAB4();
      }

      v5 = sub_2FEF94(v4);
      v6 = *(*(v33 + 8 * v4) + 32) - *(*(v33 + 8 * v4) + 24);
      if (v6)
      {
        v34 = 0;
        v28 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2);
        v30 = __ROR8__(v26 | v5, 32);
        do
        {
          v7 = *(*(v33 + 8 * v4) + 8) - **(v33 + 8 * v4);
          if (v7)
          {
            v8 = 0;
            v32 = v7 >> 3;
            do
            {
              v10 = v8 + *(*(v33 + 8 * v4) + 76) + ((*(*(v33 + 8 * v4) + 8) - **(v33 + 8 * v4)) >> 3) * v34;
              v11 = a2[9];
              if (0xAAAAAAAAAAAAAAABLL * ((a2[10] - v11) >> 2) <= v10)
              {
                sub_6FAB4();
              }

              v12 = v11 + 12 * v10;
              v35 = __ROR8__(*v12, 32);
              v13 = *(v12 + 8);
              v36 = &v35;
              v14 = sub_C4F530(a3, &v35, &unk_229EB70, &v36);
              v15 = v14[3];
              if (v13 >= (v14[4] - v15) >> 3)
              {
                operator new();
              }

              v16 = *(v15 + 8 * v13);
              v17 = *(v16 + 8);
              v18 = *(v16 + 16);
              if (v17 < v18)
              {
                *v17 = v30;
                *(v17 + 8) = v34;
                v9 = v17 + 12;
              }

              else
              {
                v19 = *v16;
                v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v16) >> 2);
                v21 = v20 + 1;
                if (v20 + 1 > 0x1555555555555555)
                {
                  sub_1794();
                }

                v22 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v19) >> 2);
                if (2 * v22 > v21)
                {
                  v21 = 2 * v22;
                }

                if (v22 >= 0xAAAAAAAAAAAAAAALL)
                {
                  v23 = 0x1555555555555555;
                }

                else
                {
                  v23 = v21;
                }

                if (v23)
                {
                  if (v23 <= 0x1555555555555555)
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v24 = 4 * ((v17 - *v16) >> 2);
                *v24 = v30;
                *(v24 + 8) = v34;
                v9 = 12 * v20 + 12;
                v25 = 12 * v20 - (v17 - v19);
                memcpy((v24 - (v17 - v19)), v19, v17 - v19);
                *v16 = v25;
                *(v16 + 8) = v9;
                *(v16 + 16) = 0;
                if (v19)
                {
                  operator delete(v19);
                }
              }

              *(v16 + 8) = v9;
              ++v8;
            }

            while (v8 != v32);
          }

          ++v34;
        }

        while (v34 != v28);
      }

      ++v4;
    }

    while (v4 != v27);
  }
}

void sub_C4F348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v13;
    operator delete(v13);
  }

  operator delete();
}

uint64_t sub_C4F39C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      if (v5)
      {
        v6 = v2[4];
        v3 = v2[3];
        if (v6 != v5)
        {
          do
          {
            v8 = *--v6;
            v7 = v8;
            *v6 = 0;
            if (v8)
            {
              v9 = *v7;
              if (*v7)
              {
                *(v7 + 8) = v9;
                operator delete(v9);
              }

              operator delete();
            }
          }

          while (v6 != v5);
          v3 = v2[3];
        }

        v2[4] = v5;
        operator delete(v3);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v10 = *a1;
  *a1 = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return a1;
}

void sub_C4F474(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = *(a2 + 16);
    v4 = *(a2 + 8);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          v7 = *v5;
          if (*v5)
          {
            *(v5 + 8) = v7;
            operator delete(v7);
          }

          operator delete();
        }
      }

      while (v3 != v2);
      v4 = *(a2 + 8);
    }

    *(a2 + 16) = v2;

    operator delete(v4);
  }
}

uint64_t *sub_C4F530(void *a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *a2;
  v5 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v6 = (0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_31;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33);
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
        if (*(v11 + 5) == HIDWORD(v4) && *(v11 + 4) == v4)
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

  if (*(v11 + 5) != HIDWORD(v4) || *(v11 + 4) != v4)
  {
    goto LABEL_12;
  }

  return v11;
}

void sub_C4F898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_C4F8AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_C4F8AC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_C4F474(*(a1 + 8), v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

int *sub_C4F900@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  *(a5 + 202) = 0;
  *(a5 + 192) = 0x3E4CCCCD3F000000;
  *(a5 + 204) = 0xFFFFFFFF00000000;
  *(a5 + 220) = 0;
  *(a5 + 212) = 0;
  *(a5 + 228) = 0;
  *(a5 + 240) = 0xFFFFFFFFLL;
  v7 = (a5 + 240);
  *(a5 + 176) = xmmword_2267060;
  v775 = a5 + 176;
  *(a5 + 232) = 32;
  *(a5 + 200) = 256;
  *(a5 + 288) = 0;
  *(a5 + 256) = 0;
  *(a5 + 264) = 0;
  *(a5 + 272) = 0;
  *(a5 + 280) = 0;
  *(a5 + 248) = -1;
  result = malloc_type_malloc(0x180uLL, 0x10000403E1C8BA9uLL);
  *(a5 + 256) = result;
  v9 = *(a5 + 232);
  if (v9)
  {
    v10 = 12 * v9;
    do
    {
      *result = *v7;
      result[2] = *(a5 + 248);
      result += 3;
      v10 -= 12;
    }

    while (v10);
  }

  v11 = *a2;
  v760 = a2[1];
  if (*a2 != v760)
  {
    v779 = (a5 + 240);
    while (1)
    {
      v12 = sub_994FB4(a1[521] + 24, __ROR8__(*v11, 32), 0, "transfer graph");
      v13 = (v12 - *v12);
      v765 = v11;
      if (*v13 >= 7u)
      {
        v14 = v13[3];
        if (v14)
        {
          v772 = *(v12 + v14 + *(v12 + v14));
          if (v772)
          {
            v781 = 0;
            while (1)
            {
              v16 = a1[521];
              v17 = __ROR8__(*v11, 32);
              v790 = 0;
              v791 = v17;
              v787 = "transfer graph";
              v788 = &v790;
              v789 = &v791;
              v18 = *(v16 + 3880) + 1;
              *(v16 + 3880) = v18;
              v19 = *(v16 + 24);
              if (!v19)
              {
                exception = __cxa_allocate_exception(0x40uLL);
                v794 = v791;
                v792 = sub_7FCF0(6u);
                v793 = v641;
                sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
                if ((v786 & 0x80000000) == 0)
                {
                  v642 = v785;
                }

                else
                {
                  v642 = *v785;
                }

                if ((v786 & 0x80000000) == 0)
                {
                  v643 = BYTE3(v786);
                }

                else
                {
                  v643 = *&v785[8];
                }

                v644 = sub_2D390(exception, v642, v643);
              }

              if (*(v16 + 616) == v17)
              {
                ++*(v16 + 3888);
                *(v16 + 624) = v18;
                v20 = *(v16 + 632);
                if (!v20)
                {
                  goto LABEL_1008;
                }
              }

              else if (*(v16 + 640) == v17)
              {
                ++*(v16 + 3888);
                *(v16 + 648) = v18;
                v20 = *(v16 + 656);
                if (!v20)
                {
                  goto LABEL_1008;
                }
              }

              else if (*(v16 + 664) == v17)
              {
                ++*(v16 + 3888);
                *(v16 + 672) = v18;
                v20 = *(v16 + 680);
                if (!v20)
                {
                  goto LABEL_1008;
                }
              }

              else if (*(v16 + 688) == v17)
              {
                ++*(v16 + 3888);
                *(v16 + 696) = v18;
                v20 = *(v16 + 704);
                if (!v20)
                {
LABEL_1008:
                  v665 = __cxa_allocate_exception(0x40uLL);
                  v794 = v791;
                  v792 = sub_7FCF0(6u);
                  v793 = v666;
                  sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
                  if ((v786 & 0x80000000) == 0)
                  {
                    v667 = v785;
                  }

                  else
                  {
                    v667 = *v785;
                  }

                  if ((v786 & 0x80000000) == 0)
                  {
                    v668 = BYTE3(v786);
                  }

                  else
                  {
                    v668 = *&v785[8];
                  }

                  v669 = sub_2D390(v665, v667, v668);
                }
              }

              else
              {
                v21 = *(v16 + 672);
                v22 = *(v16 + 648);
                v23 = *(v16 + 624);
                v24 = *(v16 + 696);
                v20 = sub_2D52A4(v19, 6, v17, 1);
                if (v23 >= v18)
                {
                  v25 = v18;
                }

                else
                {
                  v25 = v23;
                }

                if (v23 >= v18)
                {
                  v26 = 0;
                }

                else
                {
                  v26 = 24;
                }

                if (v22 < v25)
                {
                  v25 = v22;
                  v26 = 25;
                }

                if (v21 < v25)
                {
                  v26 = 26;
                  v25 = v21;
                }

                v27 = v24 >= v25;
                v28 = 27;
                if (v27)
                {
                  v28 = v26;
                }

                v29 = v16 + 40 + 24 * v28;
                *v29 = v791;
                *(v29 + 8) = *(v16 + 3880);
                *(v29 + 16) = v20;
                if (!v20)
                {
                  sub_2C9894(&v788);
LABEL_1100:
                  v725 = __cxa_allocate_exception(0x40uLL);
                  v794 = HIDWORD(v17);
                  LODWORD(v788) = v17;
                  v792 = sub_7FCF0(6u);
                  v793 = v726;
                  sub_2C956C("Failed to acquire entity ", &v787, " in quad node ", " at position ", " on layer ", &v792, v785);
                  if ((v786 & 0x80000000) == 0)
                  {
                    v727 = v785;
                  }

                  else
                  {
                    v727 = *v785;
                  }

                  if ((v786 & 0x80000000) == 0)
                  {
                    v728 = BYTE3(v786);
                  }

                  else
                  {
                    v728 = *&v785[8];
                  }

                  v729 = sub_2D390(v725, v727, v728);
                }
              }

              v30 = (v20 + *v20);
              v31 = (v30 - *v30);
              if (*v31 < 0x25u)
              {
                goto LABEL_1100;
              }

              v32 = v31[18];
              if (!v32)
              {
                goto LABEL_1100;
              }

              v33 = (v30 + v32 + *(v30 + v32));
              if (*v33 <= HIDWORD(v17))
              {
                goto LABEL_1100;
              }

              v34 = (&v33[HIDWORD(v17) + 1] + v33[HIDWORD(v17) + 1]);
              v35 = (v34 - *v34);
              if (*v35 >= 7u && (v36 = v35[3]) != 0)
              {
                v37 = (v34 + v36 + *(v34 + v36));
              }

              else
              {
                v37 = 0;
              }

              v38 = sub_C54264(v37, v781);
              if (v38)
              {
                v39 = v38[1] | (*v38 << 32);
              }

              else
              {
                v39 = 0xFFFFFFFFLL;
              }

              v40 = *(a5 + 232) - 1;
              v41 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v39 ^ (v39 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v39 ^ (v39 >> 33))) >> 33));
              v42 = v41 ^ (v41 >> 33);
              v43 = *(a5 + 256);
              v45 = *(a5 + 240);
              v44 = *(a5 + 244);
              v46 = v42 & v40;
              v47 = (v43 + 12 * (v42 & v40));
              v49 = *v47;
              v48 = v47[1];
              if (v44 == v48 && v45 == v49)
              {
LABEL_71:
                v51 = v46;
                goto LABEL_72;
              }

              if (!*(a5 + 216))
              {
                break;
              }

              v51 = -1;
              v52 = 1;
              do
              {
                if (*(a5 + 212) == v48 && *(a5 + 208) == v49)
                {
                  if (v51 == -1)
                  {
                    v51 = v46;
                  }
                }

                else if (__PAIR64__(v48, v49) == v39)
                {
                  if (v46 != -1)
                  {
LABEL_67:
                    v55 = v43 + 12 * v46;
                    v56 = *(v55 + 8);
                    if (v56 == -1)
                    {
                      goto LABEL_68;
                    }

LABEL_129:
                    v94 = *(a5 + 72);
                    v95 = *(a5 + 80);
                    v96 = v95 - v94;
                    v97 = (v95 - v94) >> 3;
                    if (v56 < v97)
                    {
                      goto LABEL_13;
                    }

                    goto LABEL_143;
                  }

LABEL_105:
                  v51 = -1;
                  goto LABEL_72;
                }

                v46 = (v46 + v52) & v40;
                v53 = (v43 + 12 * v46);
                v49 = *v53;
                v48 = v53[1];
                ++v52;
              }

              while (v44 != v48 || v45 != v49);
              if (v51 == -1)
              {
                goto LABEL_71;
              }

LABEL_72:
              if (!sub_C54418(v775, 1))
              {
                v76 = *(a5 + 216);
                v75 = *(a5 + 224);
                if ((v75 - v76) >= 0x1555555555555555)
                {
                  goto LABEL_1067;
                }

                v62 = *(a5 + 256);
                v7 = v779;
                if (v76 && ((v77 = (v62 + 12 * v51), *(a5 + 212) == v77[1]) ? (v78 = *(a5 + 208) == *v77) : (v78 = 0), v78))
                {
                  *(a5 + 216) = v76 - 1;
                }

                else
                {
                  *(a5 + 224) = v75 + 1;
                }

                v89 = 3 * v51;
LABEL_128:
                v92 = 4 * v89;
                v93 = v62 + v92;
                *v93 = v39;
                *(v93 + 8) = -1;
                v55 = *(a5 + 256) + v92;
                v56 = *(v55 + 8);
                if (v56 == -1)
                {
                  goto LABEL_68;
                }

                goto LABEL_129;
              }

              v61 = *(a5 + 232) - 1;
              v62 = *(a5 + 256);
              v64 = *(a5 + 240);
              v63 = *(a5 + 244);
              v65 = v61 & v42;
              v66 = (v62 + 12 * (v61 & v42));
              v68 = *v66;
              v67 = v66[1];
              v69 = *(a5 + 216);
              if (v63 == v67 && v64 == v68)
              {
                v7 = v779;
                v71 = v61 & v42;
                v79 = *(a5 + 224);
                if ((v79 - v69) < 0x1555555555555555)
                {
                  goto LABEL_120;
                }

                goto LABEL_1067;
              }

              v7 = v779;
              if (v69)
              {
                v71 = -1;
                v72 = 1;
                do
                {
                  if (*(a5 + 212) == v67 && *(a5 + 208) == v68)
                  {
                    if (v71 == -1)
                    {
                      v71 = v65;
                    }
                  }

                  else if (__PAIR64__(v67, v68) == v39)
                  {
                    goto LABEL_137;
                  }

                  v65 = (v65 + v72) & v61;
                  v73 = (v62 + 12 * v65);
                  v68 = *v73;
                  v67 = v73[1];
                  ++v72;
                }

                while (v63 != v67 || v64 != v68);
                if (v71 == -1)
                {
LABEL_118:
                  v71 = v65;
                }

                v79 = *(a5 + 224);
                if ((v79 - v69) < 0x1555555555555555)
                {
LABEL_120:
                  if (v69 && ((v90 = (v62 + 12 * v71), *(a5 + 212) == v90[1]) ? (v91 = *(a5 + 208) == *v90) : (v91 = 0), v91))
                  {
                    *(a5 + 216) = v69 - 1;
                  }

                  else
                  {
                    *(a5 + 224) = v79 + 1;
                  }

                  v89 = 3 * v71;
                  goto LABEL_128;
                }

LABEL_1067:
                v707 = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(v707, "insert overflow");
              }

              v98 = 1;
              while (__PAIR64__(v67, v68) != v39)
              {
                v65 = (v65 + v98) & v61;
                v99 = (v62 + 12 * v65);
                v68 = *v99;
                v67 = v99[1];
                ++v98;
                if (v63 == v67 && v64 == v68)
                {
                  goto LABEL_118;
                }
              }

LABEL_137:
              if (v65 == -1)
              {
                v71 = -1;
                v79 = *(a5 + 224);
                if ((v79 - v69) < 0x1555555555555555)
                {
                  goto LABEL_120;
                }

                goto LABEL_1067;
              }

              v55 = v62 + 12 * v65;
              v56 = *(v55 + 8);
              if (v56 != -1)
              {
                goto LABEL_129;
              }

LABEL_68:
              v57 = *(a5 + 288);
              *(a5 + 288) = v57 + 1;
              *(v55 + 8) = v57;
              v59 = *(a5 + 272);
              v58 = *(a5 + 280);
              if (v59 >= v58)
              {
                v83 = v7[3];
                v84 = v59 - v83;
                v85 = (v59 - v83) >> 3;
                v86 = v85 + 1;
                if ((v85 + 1) >> 61)
                {
                  sub_1794();
                }

                v87 = v58 - v83;
                if (v87 >> 2 > v86)
                {
                  v86 = v87 >> 2;
                }

                if (v87 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v88 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v88 = v86;
                }

                if (!v88)
                {
                  v101 = v85;
                  v102 = (8 * v85);
                  v103 = &v102[-v101];
                  *v102 = v39;
                  v60 = v102 + 1;
                  memcpy(v103, v83, v84);
                  *(a5 + 264) = v103;
                  *(a5 + 272) = v60;
                  *(a5 + 280) = 0;
                  if (v83)
                  {
                    operator delete(v83);
                  }

                  goto LABEL_142;
                }

                if (!(v88 >> 61))
                {
                  operator new();
                }

                goto LABEL_969;
              }

              *v59 = v39;
              v60 = v59 + 1;
LABEL_142:
              *(a5 + 272) = v60;
              v56 = *(v55 + 8);
              v94 = *(a5 + 72);
              v95 = *(a5 + 80);
              v96 = v95 - v94;
              v97 = (v95 - v94) >> 3;
              if (v56 < v97)
              {
                goto LABEL_13;
              }

LABEL_143:
              v104 = v56 + 1;
              v776 = v97;
              v770 = v104;
              if (v104 >= v97)
              {
                goto LABEL_179;
              }

              v105 = v56 + 1;
              v106 = v97;
              while (2)
              {
                v107 = v105;
                v108 = *(a5 + 72);
                v109 = *(a5 + 80);
                v110 = (v109 - v108) >> 3;
                if (v110 <= v105)
                {
                  v115 = v105 + 1;
                  v116 = v115 - v110;
                  if (v115 <= v110)
                  {
                    if (v115 < v110)
                    {
                      v109 = &v108[8 * v115];
                      *(a5 + 80) = v109;
                    }

                    goto LABEL_146;
                  }

                  v117 = *(a5 + 88);
                  if (v116 <= (v117 - v109) >> 3)
                  {
                    bzero(*(a5 + 80), 8 * v116);
                    v109 += 8 * v116;
                    *(a5 + 80) = v109;
                    v108 = *(a5 + 72);
                    goto LABEL_146;
                  }

                  v118 = v117 - v108;
                  if (v118 >> 2 > v115)
                  {
                    v115 = v118 >> 2;
                  }

                  if (v118 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v119 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v119 = v115;
                  }

                  if (!(v119 >> 61))
                  {
                    operator new();
                  }

LABEL_969:
                  sub_1808();
                }

LABEL_146:
                v111 = *(a5 + 96);
                v112 = *&v108[8 * v107];
                v113 = (v109 - v108) >> 3;
                if (v113 > v107)
                {
                  goto LABEL_147;
                }

                v120 = (v107 + 1);
                v121 = v120 - v113;
                if (v120 <= v113)
                {
                  if (v120 < v113)
                  {
                    *(a5 + 80) = &v108[8 * v120];
                  }

LABEL_147:
                  v114 = v111;
                }

                else
                {
                  v122 = *(a5 + 88);
                  if (v121 <= (v122 - v109) >> 3)
                  {
                    bzero(v109, 8 * v121);
                    *(a5 + 80) = &v109[8 * v121];
                  }

                  else
                  {
                    v123 = (v109 - v108) >> 3;
                    v124 = v123 + v121;
                    if ((v123 + v121) >> 61)
                    {
                      goto LABEL_971;
                    }

                    v125 = v122 - v108;
                    if (v125 >> 2 > v124)
                    {
                      v124 = v125 >> 2;
                    }

                    if (v125 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v126 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v126 = v124;
                    }

                    if (v126)
                    {
                      if (!(v126 >> 61))
                      {
                        operator new();
                      }

                      goto LABEL_969;
                    }

                    v127 = (8 * v123);
                    bzero(v127, 8 * v121);
                    v128 = &v127[8 * v121];
                    v129 = &v127[-8 * ((v109 - v108) >> 3)];
                    memcpy(v129, v108, v109 - v108);
                    *(a5 + 72) = v129;
                    *(a5 + 80) = v128;
                    *(a5 + 88) = 0;
                    v106 = v776;
                    if (v108)
                    {
                      operator delete(v108);
                    }
                  }

                  v108 = *(a5 + 72);
                  v114 = *(a5 + 96);
                }

                sub_C54CE4((a5 + 72), v107, (v111 + 28 * v112), (v114 + 28 * *&v108[8 * v107 + 4]));
                v105 = v107 + 1;
                if (v106 != v107 + 1)
                {
                  continue;
                }

                break;
              }

              v94 = *(a5 + 72);
              v95 = *(a5 + 80);
              v96 = v95 - v94;
              v7 = v779;
              v11 = v765;
              v104 = v770;
LABEL_179:
              v130 = v96 >> 3;
              v131 = v104 - v130;
              if (v104 <= v130)
              {
                if (v104 >= v130)
                {
                  goto LABEL_196;
                }

                v138 = &v94[8 * v104];
                goto LABEL_193;
              }

              v132 = *(a5 + 88);
              if (v131 <= (v132 - v95) >> 3)
              {
                bzero(v95, 8 * v131);
                v138 = &v95[8 * v131];
LABEL_193:
                *(a5 + 80) = v138;
                goto LABEL_196;
              }

              v133 = v95 - v94;
              v134 = (v133 >> 3) + v131;
              if (v134 >> 61)
              {
                goto LABEL_971;
              }

              v135 = v104;
              v136 = v132 - v94;
              if (v136 >> 2 > v134)
              {
                v134 = v136 >> 2;
              }

              if (v136 >= 0x7FFFFFFFFFFFFFF8)
              {
                v137 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v137 = v134;
              }

              if (v137)
              {
                if (!(v137 >> 61))
                {
                  operator new();
                }

                goto LABEL_969;
              }

              v11 = v765;
              v139 = (8 * (v133 >> 3));
              bzero(v139, 8 * v131);
              memcpy(0, v94, v133);
              *(a5 + 72) = 0;
              *(a5 + 80) = &v139[8 * v131];
              *(a5 + 88) = 0;
              v7 = v779;
              v104 = v135;
              if (v94)
              {
                operator delete(v94);
              }

LABEL_196:
              v140 = *a5;
              v141 = *(a5 + 8);
              v142 = &v141[-*a5];
              v777 = v142 >> 3;
              if (v104 >= (v142 >> 3))
              {
                goto LABEL_232;
              }

              v143 = v104;
              v144 = v777;
              while (2)
              {
                v145 = v143;
                v147 = *a5;
                v146 = *(a5 + 8);
                v148 = &v146[-*a5] >> 3;
                if (v148 <= v143)
                {
                  v153 = v143 + 1;
                  v154 = v153 - v148;
                  if (v153 <= v148)
                  {
                    if (v153 < v148)
                    {
                      v146 = &v147[2 * v153];
                      *(a5 + 8) = v146;
                    }
                  }

                  else
                  {
                    v155 = *(a5 + 16);
                    if (v154 > (v155 - v146) >> 3)
                    {
                      v156 = v155 - v147;
                      if (v156 >> 2 > v153)
                      {
                        v153 = v156 >> 2;
                      }

                      if (v156 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v157 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v157 = v153;
                      }

                      if (!(v157 >> 61))
                      {
                        operator new();
                      }

                      goto LABEL_969;
                    }

                    bzero(*(a5 + 8), 8 * v154);
                    v146 += 8 * v154;
                    *(a5 + 8) = v146;
                    v147 = *a5;
                  }
                }

                v149 = *(a5 + 24);
                v150 = v147[2 * v145];
                v151 = (v146 - v147) >> 3;
                if (v151 <= v145)
                {
                  v158 = (v145 + 1);
                  v159 = v158 - v151;
                  if (v158 <= v151)
                  {
                    if (v158 < v151)
                    {
                      *(a5 + 8) = &v147[2 * v158];
                    }

                    goto LABEL_200;
                  }

                  v160 = *(a5 + 16);
                  if (v159 <= (v160 - v146) >> 3)
                  {
                    bzero(v146, 8 * v159);
                    *(a5 + 8) = &v146[8 * v159];
                  }

                  else
                  {
                    v161 = v146 - v147;
                    v162 = (v161 >> 3) + v159;
                    if (v162 >> 61)
                    {
                      goto LABEL_971;
                    }

                    v163 = v160 - v147;
                    if (v163 >> 2 > v162)
                    {
                      v162 = v163 >> 2;
                    }

                    if (v163 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v164 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v164 = v162;
                    }

                    if (v164)
                    {
                      if (!(v164 >> 61))
                      {
                        operator new();
                      }

                      goto LABEL_969;
                    }

                    v165 = (8 * (v161 >> 3));
                    bzero(v165, 8 * v159);
                    memcpy(0, v147, v161);
                    *a5 = 0;
                    *(a5 + 8) = &v165[8 * v159];
                    *(a5 + 16) = 0;
                    v144 = v777;
                    if (v147)
                    {
                      operator delete(v147);
                    }
                  }

                  v147 = *a5;
                  v152 = *(a5 + 24);
                }

                else
                {
LABEL_200:
                  v152 = v149;
                }

                sub_C54CE4(a5, v145, (v149 + 28 * v150), (v152 + 28 * v147[2 * v145 + 1]));
                v143 = v145 + 1;
                if (v144 != v145 + 1)
                {
                  continue;
                }

                break;
              }

              v140 = *a5;
              v141 = *(a5 + 8);
              v142 = &v141[-*a5];
              v7 = v779;
              v11 = v765;
              v104 = v770;
LABEL_232:
              v166 = v142 >> 3;
              v167 = v104 - v166;
              if (v104 <= v166)
              {
                if (v104 >= v166)
                {
                  goto LABEL_13;
                }

                v15 = &v140[8 * v104];
LABEL_12:
                *(a5 + 8) = v15;
                goto LABEL_13;
              }

              v168 = *(a5 + 16);
              if (v167 <= (v168 - v141) >> 3)
              {
                bzero(v141, 8 * v167);
                v15 = &v141[8 * v167];
                goto LABEL_12;
              }

              v169 = v141 - v140;
              v170 = (v169 >> 3) + v167;
              if (v170 >> 61)
              {
LABEL_971:
                sub_1794();
              }

              v171 = v168 - v140;
              if (v171 >> 2 > v170)
              {
                v170 = v171 >> 2;
              }

              if (v171 >= 0x7FFFFFFFFFFFFFF8)
              {
                v172 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v172 = v170;
              }

              if (v172)
              {
                if (!(v172 >> 61))
                {
                  operator new();
                }

                goto LABEL_969;
              }

              v11 = v765;
              v173 = (8 * (v169 >> 3));
              bzero(v173, 8 * v167);
              memcpy(0, v140, v169);
              *a5 = 0;
              *(a5 + 8) = &v173[8 * v167];
              *(a5 + 16) = 0;
              v7 = v779;
              if (v140)
              {
                operator delete(v140);
              }

LABEL_13:
              if (++v781 == v772)
              {
                goto LABEL_249;
              }
            }

            v80 = 1;
            while (__PAIR64__(v48, v49) != v39)
            {
              v46 = (v46 + v80) & v40;
              v81 = (v43 + 12 * v46);
              v49 = *v81;
              v48 = v81[1];
              ++v80;
              if (v44 == v48 && v45 == v49)
              {
                goto LABEL_71;
              }
            }

            v7 = v779;
            if (v46 != -1)
            {
              goto LABEL_67;
            }

            goto LABEL_105;
          }
        }
      }

LABEL_249:
      result = sub_994FB4(a1[521] + 24, __ROR8__(*v11, 32), 0, "transfer graph");
      v174 = (result - *result);
      if (*v174 >= 9u)
      {
        v175 = v174[4];
        if (v175)
        {
          v763 = *(result + v175 + *(result + v175));
          if (v763)
          {
            break;
          }
        }
      }

LABEL_6:
      if (++v11 == v760)
      {
        return result;
      }
    }

    v771 = 0;
LABEL_255:
    v177 = a1[521];
    v178 = __ROR8__(*v11, 32);
    v790 = 0;
    v791 = v178;
    v787 = "transfer graph";
    v788 = &v790;
    v789 = &v791;
    v179 = *(v177 + 3880) + 1;
    *(v177 + 3880) = v179;
    v180 = *(v177 + 24);
    if (!v180)
    {
      v645 = __cxa_allocate_exception(0x40uLL);
      v794 = v791;
      v792 = sub_7FCF0(6u);
      v793 = v646;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
      if ((v786 & 0x80000000) == 0)
      {
        v647 = v785;
      }

      else
      {
        v647 = *v785;
      }

      if ((v786 & 0x80000000) == 0)
      {
        v648 = BYTE3(v786);
      }

      else
      {
        v648 = *&v785[8];
      }

      v649 = sub_2D390(v645, v647, v648);
    }

    if (*(v177 + 616) == v178)
    {
      ++*(v177 + 3888);
      *(v177 + 624) = v179;
      v181 = *(v177 + 632);
      if (!v181)
      {
        goto LABEL_1015;
      }
    }

    else if (*(v177 + 640) == v178)
    {
      ++*(v177 + 3888);
      *(v177 + 648) = v179;
      v181 = *(v177 + 656);
      if (!v181)
      {
        goto LABEL_1015;
      }
    }

    else if (*(v177 + 664) == v178)
    {
      ++*(v177 + 3888);
      *(v177 + 672) = v179;
      v181 = *(v177 + 680);
      if (!v181)
      {
        goto LABEL_1015;
      }
    }

    else if (*(v177 + 688) == v178)
    {
      ++*(v177 + 3888);
      *(v177 + 696) = v179;
      v181 = *(v177 + 704);
      if (!v181)
      {
LABEL_1015:
        v670 = __cxa_allocate_exception(0x40uLL);
        v794 = v791;
        v792 = sub_7FCF0(6u);
        v793 = v671;
        sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
        if ((v786 & 0x80000000) == 0)
        {
          v672 = v785;
        }

        else
        {
          v672 = *v785;
        }

        if ((v786 & 0x80000000) == 0)
        {
          v673 = BYTE3(v786);
        }

        else
        {
          v673 = *&v785[8];
        }

        v674 = sub_2D390(v670, v672, v673);
      }
    }

    else
    {
      v182 = *(v177 + 672);
      v183 = *(v177 + 648);
      v184 = *(v177 + 624);
      v185 = *(v177 + 696);
      v181 = sub_2D52A4(v180, 6, v178, 1);
      if (v184 >= v179)
      {
        v186 = v179;
      }

      else
      {
        v186 = v184;
      }

      if (v184 >= v179)
      {
        v187 = 0;
      }

      else
      {
        v187 = 24;
      }

      if (v183 < v186)
      {
        v186 = v183;
        v187 = 25;
      }

      if (v182 < v186)
      {
        v187 = 26;
        v186 = v182;
      }

      v27 = v185 >= v186;
      v188 = 27;
      if (v27)
      {
        v188 = v187;
      }

      v189 = v177 + 40 + 24 * v188;
      *v189 = v791;
      *(v189 + 8) = *(v177 + 3880);
      *(v189 + 16) = v181;
      if (!v181)
      {
        sub_2C9894(&v788);
LABEL_1116:
        v735 = __cxa_allocate_exception(0x40uLL);
        v794 = HIDWORD(v178);
        LODWORD(v788) = v178;
        v792 = sub_7FCF0(6u);
        v793 = v736;
        sub_2C956C("Failed to acquire entity ", &v787, " in quad node ", " at position ", " on layer ", &v792, v785);
        if ((v786 & 0x80000000) == 0)
        {
          v737 = v785;
        }

        else
        {
          v737 = *v785;
        }

        if ((v786 & 0x80000000) == 0)
        {
          v738 = BYTE3(v786);
        }

        else
        {
          v738 = *&v785[8];
        }

        v739 = sub_2D390(v735, v737, v738);
      }
    }

    v190 = (v181 + *v181);
    v191 = (v190 - *v190);
    if (*v191 < 0x25u)
    {
      goto LABEL_1116;
    }

    v192 = v191[18];
    if (!v192)
    {
      goto LABEL_1116;
    }

    v193 = (v190 + v192 + *(v190 + v192));
    if (*v193 <= HIDWORD(v178))
    {
      goto LABEL_1116;
    }

    v194 = (&v193[HIDWORD(v178) + 1] + v193[HIDWORD(v178) + 1]);
    v195 = (v194 - *v194);
    if (*v195 >= 9u && (v196 = v195[4]) != 0)
    {
      v197 = (v194 + v196 + *(v194 + v196));
    }

    else
    {
      v197 = 0;
    }

    v198 = sub_C54264(v197, v771);
    if (v198)
    {
      v199 = v198[1] | (*v198 << 32);
    }

    else
    {
      v199 = 0xFFFFFFFFLL;
    }

    v200 = a1[520];
    v201 = __ROR8__(v199, 32);
    v790 = 0;
    v791 = v201;
    v787 = "transfer";
    v788 = &v790;
    v789 = &v791;
    v202 = *(v200 + 3880) + 1;
    *(v200 + 3880) = v202;
    v203 = *(v200 + 24);
    if (!v203)
    {
      v655 = __cxa_allocate_exception(0x40uLL);
      v794 = v791;
      v792 = sub_7FCF0(6u);
      v793 = v656;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
      if ((v786 & 0x80000000) == 0)
      {
        v657 = v785;
      }

      else
      {
        v657 = *v785;
      }

      if ((v786 & 0x80000000) == 0)
      {
        v658 = BYTE3(v786);
      }

      else
      {
        v658 = *&v785[8];
      }

      v659 = sub_2D390(v655, v657, v658);
    }

    v204 = HIDWORD(v201);
    v764 = v201;
    v205 = a5;
    v768 = v201;
    v766 = v199;
    if (*(v200 + 616) == v201)
    {
      ++*(v200 + 3888);
      *(v200 + 624) = v202;
      v206 = *(v200 + 632);
      if (!v206)
      {
        goto LABEL_1029;
      }
    }

    else if (*(v200 + 640) == v201)
    {
      ++*(v200 + 3888);
      *(v200 + 648) = v202;
      v206 = *(v200 + 656);
      if (!v206)
      {
        goto LABEL_1029;
      }
    }

    else if (*(v200 + 664) == v201)
    {
      ++*(v200 + 3888);
      *(v200 + 672) = v202;
      v206 = *(v200 + 680);
      if (!v206)
      {
        goto LABEL_1029;
      }
    }

    else if (*(v200 + 688) == v201)
    {
      ++*(v200 + 3888);
      *(v200 + 696) = v202;
      v206 = *(v200 + 704);
      if (!v206)
      {
LABEL_1029:
        v680 = __cxa_allocate_exception(0x40uLL);
        v794 = v791;
        v792 = sub_7FCF0(6u);
        v793 = v681;
        sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
        if ((v786 & 0x80000000) == 0)
        {
          v682 = v785;
        }

        else
        {
          v682 = *v785;
        }

        if ((v786 & 0x80000000) == 0)
        {
          v683 = BYTE3(v786);
        }

        else
        {
          v683 = *&v785[8];
        }

        v684 = sub_2D390(v680, v682, v683);
      }
    }

    else
    {
      v207 = HIDWORD(v201);
      v208 = *(v200 + 672);
      v209 = *(v200 + 648);
      v210 = *(v200 + 624);
      v211 = *(v200 + 696);
      v206 = sub_2D52A4(v203, 6, v764, 1);
      if (v210 >= v202)
      {
        v212 = v202;
      }

      else
      {
        v212 = v210;
      }

      if (v210 >= v202)
      {
        v213 = 0;
      }

      else
      {
        v213 = 24;
      }

      if (v209 < v212)
      {
        v212 = v209;
        v213 = 25;
      }

      if (v208 < v212)
      {
        v213 = 26;
        v212 = v208;
      }

      v27 = v211 >= v212;
      v214 = 27;
      if (v27)
      {
        v214 = v213;
      }

      v215 = v200 + 40 + 24 * v214;
      *v215 = v791;
      *(v215 + 8) = *(v200 + 3880);
      *(v215 + 16) = v206;
      LODWORD(v201) = v768;
      v204 = v207;
      if (!v206)
      {
        sub_2C9894(&v788);
        LODWORD(v201) = v768;
        LODWORD(v204) = v207;
LABEL_1132:
        v745 = __cxa_allocate_exception(0x40uLL);
        LODWORD(v788) = v201;
        v794 = v204;
        v792 = sub_7FCF0(6u);
        v793 = v746;
        sub_2C956C("Failed to acquire entity ", &v787, " in quad node ", " at position ", " on layer ", &v792, v785);
        if ((v786 & 0x80000000) == 0)
        {
          v747 = v785;
        }

        else
        {
          v747 = *v785;
        }

        if ((v786 & 0x80000000) == 0)
        {
          v748 = BYTE3(v786);
        }

        else
        {
          v748 = *&v785[8];
        }

        v749 = sub_2D390(v745, v747, v748);
      }
    }

    v216 = (v206 + *v206);
    v217 = (v216 - *v216);
    if (*v217 < 0x23u)
    {
      goto LABEL_1132;
    }

    v218 = v217[17];
    if (!v218)
    {
      goto LABEL_1132;
    }

    v219 = (v216 + v218 + *(v216 + v218));
    if (*v219 <= v204)
    {
      goto LABEL_1132;
    }

    v773 = v204;
    v220 = (&v219[v204 + 1] + v219[v204 + 1]);
    v221 = (v220 - *v220);
    v769 = v204;
    if (*v221 >= 7u && (v222 = v221[3]) != 0)
    {
      v223 = *(v220 + v222 + 4) | (*(v220 + v222) << 32);
    }

    else
    {
      v223 = 0xFFFFFFFFLL;
    }

    v224 = a1[520];
    v790 = 0;
    v791 = v201;
    v787 = "transfer";
    v788 = &v790;
    v789 = &v791;
    v225 = *(v224 + 3880) + 1;
    *(v224 + 3880) = v225;
    v226 = *(v224 + 24);
    if (!v226)
    {
      v650 = __cxa_allocate_exception(0x40uLL);
      v794 = v791;
      v792 = sub_7FCF0(6u);
      v793 = v651;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
      if ((v786 & 0x80000000) == 0)
      {
        v652 = v785;
      }

      else
      {
        v652 = *v785;
      }

      if ((v786 & 0x80000000) == 0)
      {
        v653 = BYTE3(v786);
      }

      else
      {
        v653 = *&v785[8];
      }

      v654 = sub_2D390(v650, v652, v653);
    }

    if (*(v224 + 616) == v201)
    {
      ++*(v224 + 3888);
      *(v224 + 624) = v225;
      v227 = *(v224 + 632);
      if (!v227)
      {
        goto LABEL_1022;
      }
    }

    else if (*(v224 + 640) == v201)
    {
      ++*(v224 + 3888);
      *(v224 + 648) = v225;
      v227 = *(v224 + 656);
      if (!v227)
      {
        goto LABEL_1022;
      }
    }

    else if (*(v224 + 664) == v201)
    {
      ++*(v224 + 3888);
      *(v224 + 672) = v225;
      v227 = *(v224 + 680);
      if (!v227)
      {
        goto LABEL_1022;
      }
    }

    else if (*(v224 + 688) == v201)
    {
      ++*(v224 + 3888);
      *(v224 + 696) = v225;
      v227 = *(v224 + 704);
      if (!v227)
      {
LABEL_1022:
        v675 = __cxa_allocate_exception(0x40uLL);
        v794 = v791;
        v792 = sub_7FCF0(6u);
        v793 = v676;
        sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
        if ((v786 & 0x80000000) == 0)
        {
          v677 = v785;
        }

        else
        {
          v677 = *v785;
        }

        if ((v786 & 0x80000000) == 0)
        {
          v678 = BYTE3(v786);
        }

        else
        {
          v678 = *&v785[8];
        }

        v679 = sub_2D390(v675, v677, v678);
      }
    }

    else
    {
      v228 = *(v224 + 672);
      v229 = *(v224 + 648);
      v230 = *(v224 + 624);
      v231 = *(v224 + 696);
      v227 = sub_2D52A4(v226, 6, v764, 1);
      if (v230 >= v225)
      {
        v232 = v225;
      }

      else
      {
        v232 = v230;
      }

      if (v230 >= v225)
      {
        v233 = 0;
      }

      else
      {
        v233 = 24;
      }

      if (v229 < v232)
      {
        v232 = v229;
        v233 = 25;
      }

      if (v228 < v232)
      {
        v233 = 26;
        v232 = v228;
      }

      v27 = v231 >= v232;
      v234 = 27;
      if (v27)
      {
        v234 = v233;
      }

      v235 = v224 + 40 + 24 * v234;
      *v235 = v791;
      *(v235 + 8) = *(v224 + 3880);
      *(v235 + 16) = v227;
      v205 = a5;
      LODWORD(v201) = v768;
      if (!v227)
      {
        sub_2C9894(&v788);
        LODWORD(v201) = v768;
LABEL_1124:
        v740 = __cxa_allocate_exception(0x40uLL);
        LODWORD(v788) = v201;
        v794 = v769;
        v792 = sub_7FCF0(6u);
        v793 = v741;
        sub_2C956C("Failed to acquire entity ", &v787, " in quad node ", " at position ", " on layer ", &v792, v785);
        if ((v786 & 0x80000000) == 0)
        {
          v742 = v785;
        }

        else
        {
          v742 = *v785;
        }

        if ((v786 & 0x80000000) == 0)
        {
          v743 = BYTE3(v786);
        }

        else
        {
          v743 = *&v785[8];
        }

        v744 = sub_2D390(v740, v742, v743);
      }
    }

    v236 = (v227 + *v227);
    v237 = (v236 - *v236);
    if (*v237 < 0x23u)
    {
      goto LABEL_1124;
    }

    v238 = v237[17];
    if (!v238)
    {
      goto LABEL_1124;
    }

    v239 = (v236 + v238 + *(v236 + v238));
    if (*v239 <= v769)
    {
      goto LABEL_1124;
    }

    v240 = (&v239[v773 + 1] + v239[v773 + 1]);
    v241 = (v240 - *v240);
    if (*v241 >= 9u && (v242 = v241[4]) != 0)
    {
      v243 = *(v240 + v242 + 4) | (*(v240 + v242) << 32);
    }

    else
    {
      v243 = 0xFFFFFFFFLL;
    }

    v244 = *(v205 + 232) - 1;
    v245 = *(v205 + 256);
    v247 = *(v205 + 240);
    v246 = *(v205 + 244);
    v778 = v243;
    if (a4)
    {
      v248 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v243 ^ (v243 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v243 ^ (v243 >> 33))) >> 33));
      v249 = v248 ^ (v248 >> 33);
      v250 = v244 & v249;
      v251 = (v245 + 12 * (v244 & v249));
      v253 = *v251;
      v252 = v251[1];
      v254 = HIDWORD(v243);
      if (v246 == v252 && v247 == v253)
      {
        goto LABEL_363;
      }

      if (!*(v205 + 216))
      {
        v308 = 1;
        while (__PAIR64__(v252, v253) != v243)
        {
          v250 = (v250 + v308) & v244;
          v309 = (v245 + 12 * v250);
          v253 = *v309;
          v252 = v309[1];
          ++v308;
          if (v246 == v252 && v247 == v253)
          {
            goto LABEL_363;
          }
        }

LABEL_450:
        if (v250 != -1)
        {
          v311 = v245 + 12 * v250;
          v312 = *(v311 + 8);
          v290 = (v311 + 8);
          v774 = v312;
          if (v312 != -1)
          {
            goto LABEL_493;
          }

          goto LABEL_470;
        }

        v255 = -1;
        goto LABEL_364;
      }

      v255 = -1;
      v292 = 1;
      do
      {
        if (*(v205 + 212) == v252 && *(v205 + 208) == v253)
        {
          if (v255 == -1)
          {
            v255 = v250;
          }
        }

        else if (__PAIR64__(v252, v253) == v243)
        {
          goto LABEL_450;
        }

        v250 = (v250 + v292) & v244;
        v293 = (v245 + 12 * v250);
        v253 = *v293;
        v252 = v293[1];
        ++v292;
      }

      while (v246 != v252 || v247 != v253);
      if (v255 == -1)
      {
LABEL_363:
        v255 = v250;
      }

LABEL_364:
      if (sub_C54418(v775, 1))
      {
        v243 = v778;
        v792 = v778;
        LODWORD(v793) = -1;
        v256 = *(v205 + 232) - 1;
        v257 = *(v205 + 256);
        v259 = *(v205 + 240);
        v258 = *(v205 + 244);
        v260 = v256 & v249;
        v261 = (v257 + 12 * (v256 & v249));
        v263 = *v261;
        v262 = v261[1];
        if (v258 == v262 && v259 == v263)
        {
LABEL_468:
          v265 = v260;
          goto LABEL_469;
        }

        if (*(v205 + 216))
        {
          v265 = -1;
          v266 = 1;
          do
          {
            if (*(v205 + 212) == v262 && *(v205 + 208) == v263)
            {
              if (v265 == -1)
              {
                v265 = v260;
              }
            }

            else if (v263 == v778 && v262 == v254)
            {
              goto LABEL_488;
            }

            v260 = (v260 + v266) & v256;
            v267 = (v257 + 12 * v260);
            v263 = *v267;
            v262 = v267[1];
            ++v266;
          }

          while (v258 != v262 || v259 != v263);
          if (v265 == -1)
          {
            goto LABEL_468;
          }

LABEL_469:
          sub_C546F0(v775, &v792, v265, v785);
          v243 = v778;
          v290 = (*&v785[8] + 8);
          v774 = *(*&v785[8] + 8);
          if (v774 == -1)
          {
            goto LABEL_470;
          }

LABEL_493:
          v340 = *(v205 + 232) - 1;
          v341 = *(v205 + 256);
          v343 = *(v205 + 240);
          v342 = *(v205 + 244);
          if (!a4)
          {
            goto LABEL_584;
          }

LABEL_494:
          v344 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v223 ^ (v223 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v223 ^ (v223 >> 33))) >> 33));
          v345 = v344 ^ (v344 >> 33);
          v346 = v340 & v345;
          v347 = (v341 + 12 * (v340 & v345));
          v349 = *v347;
          v348 = v347[1];
          if (v342 == v348 && v343 == v349)
          {
            goto LABEL_511;
          }

          if (*(v205 + 216))
          {
            v351 = -1;
            v352 = 1;
            do
            {
              if (*(v205 + 212) == v348 && *(v205 + 208) == v349)
              {
                if (v351 == -1)
                {
                  v351 = v346;
                }
              }

              else if (__PAIR64__(v348, v349) == v223)
              {
                goto LABEL_542;
              }

              v346 = (v346 + v352) & v340;
              v353 = (v341 + 12 * v346);
              v349 = *v353;
              v348 = v353[1];
              ++v352;
            }

            while (v342 != v348 || v343 != v349);
            if (v351 == -1)
            {
LABEL_511:
              v351 = v346;
            }
          }

          else
          {
            v373 = 1;
            while (__PAIR64__(v348, v349) != v223)
            {
              v346 = (v346 + v373) & v340;
              v374 = (v341 + 12 * v346);
              v349 = *v374;
              v348 = v374[1];
              ++v373;
              if (v342 == v348 && v343 == v349)
              {
                goto LABEL_511;
              }
            }

LABEL_542:
            if (v346 != -1)
            {
              v376 = v341 + 12 * v346;
              v379 = *(v376 + 8);
              v378 = (v376 + 8);
              v377 = v379;
              if (v379 != -1)
              {
                goto LABEL_687;
              }

              goto LABEL_551;
            }

            v351 = -1;
          }

          if (sub_C54418(v775, 1))
          {
            v792 = v223;
            LODWORD(v793) = -1;
            v355 = *(v205 + 232) - 1;
            v356 = *(v205 + 256);
            v358 = *(v205 + 240);
            v357 = *(v205 + 244);
            v359 = v355 & v345;
            v360 = (v356 + 12 * (v355 & v345));
            v362 = *v360;
            v361 = v360[1];
            if (v357 == v361 && v358 == v362)
            {
LABEL_549:
              v364 = v359;
              goto LABEL_550;
            }

            if (*(v205 + 216))
            {
              v364 = -1;
              v365 = 1;
              do
              {
                if (*(v205 + 212) == v361 && *(v205 + 208) == v362)
                {
                  if (v364 == -1)
                  {
                    v364 = v359;
                  }
                }

                else if (__PAIR64__(v361, v362) == v223)
                {
                  goto LABEL_568;
                }

                v359 = (v359 + v365) & v355;
                v366 = (v356 + 12 * v359);
                v362 = *v366;
                v361 = v366[1];
                ++v365;
              }

              while (v357 != v361 || v358 != v362);
              if (v364 == -1)
              {
                goto LABEL_549;
              }

LABEL_550:
              sub_C546F0(v775, &v792, v364, v785);
              v378 = (*&v785[8] + 8);
              v377 = *(*&v785[8] + 8);
              if (v377 != -1)
              {
                goto LABEL_687;
              }

              goto LABEL_551;
            }

            v394 = 1;
            while (__PAIR64__(v361, v362) != v223)
            {
              v359 = (v359 + v394) & v355;
              v395 = (v356 + 12 * v359);
              v362 = *v395;
              v361 = v395[1];
              ++v394;
              if (v357 == v361 && v358 == v362)
              {
                goto LABEL_549;
              }
            }

LABEL_568:
            if (v359 == -1)
            {
              v364 = -1;
              goto LABEL_550;
            }

            v397 = v356 + 12 * v359;
            v398 = *(v397 + 8);
            v378 = (v397 + 8);
            v377 = v398;
            if (v398 != -1)
            {
              goto LABEL_687;
            }
          }

          else
          {
            v369 = *(v205 + 216);
            v368 = *(v205 + 224);
            if ((v368 - v369) >= 0x1555555555555555)
            {
              goto LABEL_1087;
            }

            v370 = *(v205 + 256);
            if (v369 && ((v371 = (v370 + 12 * v351), *(v205 + 212) == v371[1]) ? (v372 = *(v205 + 208) == *v371) : (v372 = 0), v372))
            {
              *(v205 + 216) = v369 - 1;
            }

            else
            {
              *(v205 + 224) = v368 + 1;
            }

            v380 = v370 + 12 * v351;
            *v380 = v223;
            *(v380 + 8) = -1;
            v381 = *(v205 + 256) + 12 * v351;
            v382 = *(v381 + 8);
            v378 = (v381 + 8);
            v377 = v382;
            if (v382 != -1)
            {
              goto LABEL_687;
            }
          }

LABEL_551:
          v383 = *(v205 + 288);
          *(v205 + 288) = v383 + 1;
          *v378 = v383;
          v384 = v205;
          v385 = *(v205 + 272);
          v386 = *(v384 + 280);
          if (v385 < v386)
          {
            *v385 = v223;
            v387 = (v385 + 1);
LABEL_686:
            *(a5 + 272) = v387;
            v205 = a5;
            v377 = *v378;
            goto LABEL_687;
          }

          v388 = v7[3];
          v389 = v385 - v388;
          v390 = (v385 - v388) >> 3;
          v391 = v390 + 1;
          if (!((v390 + 1) >> 61))
          {
            v392 = v386 - v388;
            if (v392 >> 2 > v391)
            {
              v391 = v392 >> 2;
            }

            if (v392 >= 0x7FFFFFFFFFFFFFF8)
            {
              v393 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v393 = v391;
            }

            if (v393)
            {
              if (!(v393 >> 61))
              {
                operator new();
              }

LABEL_1090:
              sub_1808();
            }

            *(8 * v390) = v223;
            v387 = 8 * v390 + 8;
            memcpy(0, v388, v389);
            *(a5 + 264) = 0;
            *(a5 + 272) = v387;
            *(a5 + 280) = 0;
            if (!v388)
            {
              goto LABEL_686;
            }

            goto LABEL_685;
          }

          goto LABEL_1079;
        }

        v332 = 1;
        while (v263 != v778 || v262 != v254)
        {
          v260 = (v260 + v332) & v256;
          v333 = (v257 + 12 * v260);
          v263 = *v333;
          v262 = v333[1];
          ++v332;
          if (v258 == v262 && v259 == v263)
          {
            goto LABEL_468;
          }
        }

LABEL_488:
        if (v260 == -1)
        {
          v265 = -1;
          goto LABEL_469;
        }

        v335 = v257 + 12 * v260;
        v336 = *(v335 + 8);
        v290 = (v335 + 8);
        v774 = v336;
        if (v336 != -1)
        {
          goto LABEL_493;
        }

LABEL_470:
        v321 = *(v205 + 288);
        *(v205 + 288) = v321 + 1;
        *v290 = v321;
        v322 = v205;
        v323 = *(v205 + 272);
        v324 = *(v322 + 280);
        if (v323 < v324)
        {
          *v323 = v243;
          v325 = (v323 + 1);
          goto LABEL_583;
        }

        v326 = v7[3];
        v327 = v323 - v326;
        v328 = (v323 - v326) >> 3;
        v329 = v328 + 1;
        if (!((v328 + 1) >> 61))
        {
          v330 = v324 - v326;
          if (v330 >> 2 > v329)
          {
            v329 = v330 >> 2;
          }

          if (v330 >= 0x7FFFFFFFFFFFFFF8)
          {
            v331 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v331 = v329;
          }

          if (v331)
          {
            if (!(v331 >> 61))
            {
              operator new();
            }

            goto LABEL_1089;
          }

          *(8 * v328) = v778;
          v325 = 8 * v328 + 8;
          memcpy(0, v326, v327);
          *(a5 + 264) = 0;
          *(a5 + 272) = v325;
          *(a5 + 280) = 0;
          if (v326)
          {
LABEL_574:
            operator delete(v326);
          }

LABEL_575:
          v243 = v778;
          goto LABEL_583;
        }

        goto LABEL_1078;
      }

      v296 = *(v205 + 216);
      v295 = *(v205 + 224);
      v243 = v778;
      if ((v295 - v296) < 0x1555555555555555)
      {
        v297 = *(v205 + 256);
        if (v296 && ((v298 = (v297 + 12 * v255), *(v205 + 212) == v298[1]) ? (v299 = *(v205 + 208) == *v298) : (v299 = 0), v299))
        {
          *(v205 + 216) = v296 - 1;
        }

        else
        {
          *(v205 + 224) = v295 + 1;
        }

        v313 = v297 + 12 * v255;
        *v313 = v778;
        *(v313 + 8) = -1;
        v314 = *(v205 + 256) + 12 * v255;
        v315 = *(v314 + 8);
        v290 = (v314 + 8);
        v774 = v315;
        if (v315 != -1)
        {
          goto LABEL_493;
        }

        goto LABEL_470;
      }

LABEL_1088:
      v719 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v719, "insert overflow");
    }

    v269 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v223 ^ (v223 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v223 ^ (v223 >> 33))) >> 33));
    v270 = v269 ^ (v269 >> 33);
    v271 = v244 & v270;
    v272 = (v245 + 12 * (v244 & v270));
    v274 = *v272;
    v273 = v272[1];
    if (v246 == v273 && v247 == v274)
    {
      goto LABEL_384;
    }

    if (*(v205 + 216))
    {
      v275 = -1;
      v300 = 1;
      do
      {
        if (*(v205 + 212) == v273 && *(v205 + 208) == v274)
        {
          if (v275 == -1)
          {
            v275 = v271;
          }
        }

        else if (__PAIR64__(v273, v274) == v223)
        {
          goto LABEL_464;
        }

        v271 = (v271 + v300) & v244;
        v301 = (v245 + 12 * v271);
        v274 = *v301;
        v273 = v301[1];
        ++v300;
      }

      while (v246 != v273 || v247 != v274);
      if (v275 == -1)
      {
LABEL_384:
        v275 = v271;
      }
    }

    else
    {
      v316 = 1;
      while (__PAIR64__(v273, v274) != v223)
      {
        v271 = (v271 + v316) & v244;
        v317 = (v245 + 12 * v271);
        v274 = *v317;
        v273 = v317[1];
        ++v316;
        if (v246 == v273 && v247 == v274)
        {
          goto LABEL_384;
        }
      }

LABEL_464:
      if (v271 != -1)
      {
        v319 = v245 + 12 * v271;
        v320 = *(v319 + 8);
        v290 = (v319 + 8);
        v774 = v320;
        if (v320 == -1)
        {
          goto LABEL_581;
        }

        goto LABEL_493;
      }

      v275 = -1;
    }

    if (!sub_C54418(v775, 1))
    {
      v304 = *(v205 + 216);
      v303 = *(v205 + 224);
      if ((v303 - v304) < 0x1555555555555555)
      {
        v305 = *(v205 + 256);
        if (v304 && ((v306 = (v305 + 12 * v275), *(v205 + 212) == v306[1]) ? (v307 = *(v205 + 208) == *v306) : (v307 = 0), v307))
        {
          *(v205 + 216) = v304 - 1;
        }

        else
        {
          *(v205 + 224) = v303 + 1;
        }

        v243 = v778;
        v337 = v305 + 12 * v275;
        *v337 = v223;
        *(v337 + 8) = -1;
        v338 = *(v205 + 256) + 12 * v275;
        v339 = *(v338 + 8);
        v290 = (v338 + 8);
        v774 = v339;
        if (v339 == -1)
        {
          goto LABEL_581;
        }

        goto LABEL_493;
      }

      goto LABEL_1088;
    }

    v792 = v223;
    LODWORD(v793) = -1;
    v276 = *(v205 + 232) - 1;
    v277 = *(v205 + 256);
    v279 = *(v205 + 240);
    v278 = *(v205 + 244);
    v280 = v276 & v270;
    v281 = (v277 + 12 * (v276 & v270));
    v283 = *v281;
    v282 = v281[1];
    if (v278 == v282 && v279 == v283)
    {
LABEL_579:
      v285 = v280;
      goto LABEL_580;
    }

    if (!*(v205 + 216))
    {
      v455 = 1;
      while (__PAIR64__(v282, v283) != v223)
      {
        v280 = (v280 + v455) & v276;
        v456 = (v277 + 12 * v280);
        v283 = *v456;
        v282 = v456[1];
        ++v455;
        if (v278 == v282 && v279 == v283)
        {
          goto LABEL_579;
        }
      }

      v243 = v778;
      if (v280 != -1)
      {
        goto LABEL_402;
      }

      goto LABEL_669;
    }

    v285 = -1;
    v286 = 1;
    v243 = v778;
    do
    {
      if (*(v205 + 212) == v282 && *(v205 + 208) == v283)
      {
        if (v285 == -1)
        {
          v285 = v280;
        }
      }

      else if (__PAIR64__(v282, v283) == v223)
      {
        if (v280 != -1)
        {
LABEL_402:
          v289 = v277 + 12 * v280;
          v291 = *(v289 + 8);
          v290 = (v289 + 8);
          v774 = v291;
          if (v291 == -1)
          {
            goto LABEL_581;
          }

          goto LABEL_493;
        }

LABEL_669:
        v285 = -1;
        goto LABEL_580;
      }

      v280 = (v280 + v286) & v276;
      v287 = (v277 + 12 * v280);
      v283 = *v287;
      v282 = v287[1];
      ++v286;
    }

    while (v278 != v282 || v279 != v283);
    if (v285 == -1)
    {
      goto LABEL_579;
    }

LABEL_580:
    sub_C546F0(v775, &v792, v285, v785);
    v243 = v778;
    v290 = (*&v785[8] + 8);
    v774 = *(*&v785[8] + 8);
    if (v774 != -1)
    {
      goto LABEL_493;
    }

LABEL_581:
    v399 = *(v205 + 288);
    *(v205 + 288) = v399 + 1;
    *v290 = v399;
    v400 = v205;
    v401 = *(v205 + 272);
    v402 = *(v400 + 280);
    if (v401 >= v402)
    {
      v326 = v7[3];
      v433 = v401 - v326;
      v434 = (v401 - v326) >> 3;
      v435 = v434 + 1;
      if (!((v434 + 1) >> 61))
      {
        v436 = v402 - v326;
        if (v436 >> 2 > v435)
        {
          v435 = v436 >> 2;
        }

        if (v436 >= 0x7FFFFFFFFFFFFFF8)
        {
          v437 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v437 = v435;
        }

        if (v437)
        {
          if (!(v437 >> 61))
          {
            operator new();
          }

LABEL_1089:
          sub_1808();
        }

        *(8 * v434) = v223;
        v325 = 8 * v434 + 8;
        memcpy(0, v326, v433);
        *(a5 + 264) = 0;
        *(a5 + 272) = v325;
        *(a5 + 280) = 0;
        if (v326)
        {
          goto LABEL_574;
        }

        goto LABEL_575;
      }

LABEL_1078:
      sub_1794();
    }

    *v401 = v223;
    v325 = (v401 + 1);
LABEL_583:
    *(a5 + 272) = v325;
    v205 = a5;
    v774 = *v290;
    v340 = *(a5 + 232) - 1;
    v341 = *(a5 + 256);
    v343 = *(a5 + 240);
    v342 = *(a5 + 244);
    if (a4)
    {
      goto LABEL_494;
    }

LABEL_584:
    v403 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v243 ^ (v243 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v243 ^ (v243 >> 33))) >> 33));
    v404 = v403 ^ (v403 >> 33);
    v405 = v340 & v404;
    v406 = (v341 + 12 * (v340 & v404));
    v408 = *v406;
    v407 = v406[1];
    v409 = HIDWORD(v243);
    if (v342 == v407 && v343 == v408)
    {
      goto LABEL_601;
    }

    if (!*(v205 + 216))
    {
      v438 = 1;
      while (__PAIR64__(v407, v408) != v243)
      {
        v405 = (v405 + v438) & v340;
        v439 = (v341 + 12 * v405);
        v408 = *v439;
        v407 = v439[1];
        ++v438;
        if (v342 == v407 && v343 == v408)
        {
          goto LABEL_601;
        }
      }

LABEL_642:
      if (v405 == -1)
      {
        v411 = -1;
        goto LABEL_602;
      }

      v441 = v341 + 12 * v405;
      v442 = *(v441 + 8);
      v378 = (v441 + 8);
      v377 = v442;
      if (v442 == -1)
      {
        goto LABEL_651;
      }

      goto LABEL_687;
    }

    v411 = -1;
    v412 = 1;
    do
    {
      if (*(v205 + 212) == v407 && *(v205 + 208) == v408)
      {
        if (v411 == -1)
        {
          v411 = v405;
        }
      }

      else if (__PAIR64__(v407, v408) == v243)
      {
        goto LABEL_642;
      }

      v405 = (v405 + v412) & v340;
      v413 = (v341 + 12 * v405);
      v408 = *v413;
      v407 = v413[1];
      ++v412;
    }

    while (v342 != v407 || v343 != v408);
    if (v411 == -1)
    {
LABEL_601:
      v411 = v405;
    }

LABEL_602:
    if (!sub_C54418(v775, 1))
    {
      v429 = *(v205 + 216);
      v428 = *(v205 + 224);
      v243 = v778;
      if ((v428 - v429) < 0x1555555555555555)
      {
        v430 = *(v205 + 256);
        if (v429 && ((v431 = (v430 + 12 * v411), *(v205 + 212) == v431[1]) ? (v432 = *(v205 + 208) == *v431) : (v432 = 0), v432))
        {
          *(v205 + 216) = v429 - 1;
        }

        else
        {
          *(v205 + 224) = v428 + 1;
        }

        v443 = v430 + 12 * v411;
        *v443 = v778;
        *(v443 + 8) = -1;
        v444 = *(v205 + 256) + 12 * v411;
        v445 = *(v444 + 8);
        v378 = (v444 + 8);
        v377 = v445;
        if (v445 == -1)
        {
          goto LABEL_651;
        }

        goto LABEL_687;
      }

LABEL_1087:
      v718 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v718, "insert overflow");
    }

    v243 = v778;
    v792 = v778;
    LODWORD(v793) = -1;
    v415 = *(v205 + 232) - 1;
    v416 = *(v205 + 256);
    v418 = *(v205 + 240);
    v417 = *(v205 + 244);
    v419 = v415 & v404;
    v420 = (v416 + 12 * (v415 & v404));
    v422 = *v420;
    v421 = v420[1];
    if (v417 == v421 && v418 == v422)
    {
      goto LABEL_649;
    }

    if (!*(v205 + 216))
    {
      v458 = 1;
      while (v422 != v778 || v421 != v409)
      {
        v419 = (v419 + v458) & v415;
        v459 = (v416 + 12 * v419);
        v422 = *v459;
        v421 = v459[1];
        ++v458;
        if (v417 == v421 && v418 == v422)
        {
          goto LABEL_649;
        }
      }

LABEL_677:
      if (v419 == -1)
      {
        v424 = -1;
        goto LABEL_650;
      }

      v461 = v416 + 12 * v419;
      v462 = *(v461 + 8);
      v378 = (v461 + 8);
      v377 = v462;
      if (v462 != -1)
      {
        goto LABEL_687;
      }

LABEL_651:
      v446 = *(v205 + 288);
      *(v205 + 288) = v446 + 1;
      *v378 = v446;
      v447 = v205;
      v448 = *(v205 + 272);
      v449 = *(v447 + 280);
      if (v448 < v449)
      {
        *v448 = v243;
        v387 = (v448 + 1);
        goto LABEL_686;
      }

      v388 = v7[3];
      v450 = v448 - v388;
      v451 = (v448 - v388) >> 3;
      v452 = v451 + 1;
      if (!((v451 + 1) >> 61))
      {
        v453 = v449 - v388;
        if (v453 >> 2 > v452)
        {
          v452 = v453 >> 2;
        }

        if (v453 >= 0x7FFFFFFFFFFFFFF8)
        {
          v454 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v454 = v452;
        }

        if (v454)
        {
          if (!(v454 >> 61))
          {
            operator new();
          }

          goto LABEL_1090;
        }

        *(8 * v451) = v778;
        v387 = 8 * v451 + 8;
        memcpy(0, v388, v450);
        *(a5 + 264) = 0;
        *(a5 + 272) = v387;
        *(a5 + 280) = 0;
        if (!v388)
        {
          goto LABEL_686;
        }

LABEL_685:
        operator delete(v388);
        goto LABEL_686;
      }

LABEL_1079:
      sub_1794();
    }

    v424 = -1;
    v425 = 1;
    do
    {
      if (*(v205 + 212) == v421 && *(v205 + 208) == v422)
      {
        if (v424 == -1)
        {
          v424 = v419;
        }
      }

      else if (v422 == v778 && v421 == v409)
      {
        goto LABEL_677;
      }

      v419 = (v419 + v425) & v415;
      v426 = (v416 + 12 * v419);
      v422 = *v426;
      v421 = v426[1];
      ++v425;
    }

    while (v417 != v421 || v418 != v422);
    if (v424 == -1)
    {
LABEL_649:
      v424 = v419;
    }

LABEL_650:
    sub_C546F0(v775, &v792, v424, v785);
    v243 = v778;
    v378 = (*&v785[8] + 8);
    v377 = *(*&v785[8] + 8);
    if (v377 == -1)
    {
      goto LABEL_651;
    }

LABEL_687:
    *v785 = v377;
    *&v785[4] = xmmword_22AC000;
    v786 = 0xFFFFFFFFLL;
    v463 = v774;
    if (v377 > v774)
    {
      v463 = v377;
    }

    v464 = *(v205 + 72);
    v465 = *(v205 + 80);
    v466 = v465 - v464;
    v467 = (v465 - v464) >> 3;
    if (v463 < v467)
    {
      goto LABEL_796;
    }

    v468 = v463 + 1;
    v761 = v468;
    if (v468 < v467)
    {
      v469 = v463 + 1;
      v782 = (v465 - v464) >> 3;
      while (1)
      {
        v470 = v469;
        v471 = *(v205 + 72);
        v472 = *(v205 + 80);
        v473 = (v472 - v471) >> 3;
        if (v473 <= v469)
        {
          v479 = v469 + 1;
          v480 = v479 - v473;
          if (v479 <= v473)
          {
            if (v479 < v473)
            {
              v472 = &v471[8 * v479];
              *(v205 + 80) = v472;
            }
          }

          else
          {
            v481 = *(v205 + 88);
            if (v480 > (v481 - v472) >> 3)
            {
              v482 = v481 - v471;
              if (v482 >> 2 > v479)
              {
                v479 = v482 >> 2;
              }

              if (v482 >= 0x7FFFFFFFFFFFFFF8)
              {
                v483 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v483 = v479;
              }

              if (!(v483 >> 61))
              {
                operator new();
              }

LABEL_970:
              sub_1808();
            }

            bzero(*(v205 + 80), 8 * v480);
            v472 += 8 * v480;
            *(v205 + 80) = v472;
            v471 = *(v205 + 72);
          }
        }

        v474 = *(v205 + 96);
        v475 = *&v471[8 * v470];
        v476 = (v472 - v471) >> 3;
        if (v476 > v470)
        {
          goto LABEL_694;
        }

        v484 = (v470 + 1);
        v485 = v484 - v476;
        if (v484 > v476)
        {
          v478 = a5;
          v486 = *(a5 + 88);
          if (v485 <= (v486 - v472) >> 3)
          {
            bzero(v472, 8 * v485);
            *(a5 + 80) = &v472[8 * v485];
          }

          else
          {
            v487 = v472 - v471;
            v488 = (v487 >> 3) + v485;
            if (v488 >> 61)
            {
              goto LABEL_972;
            }

            v489 = v486 - v471;
            if (v489 >> 2 > v488)
            {
              v488 = v489 >> 2;
            }

            if (v489 >= 0x7FFFFFFFFFFFFFF8)
            {
              v490 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v490 = v488;
            }

            if (v490)
            {
              if (!(v490 >> 61))
              {
                operator new();
              }

              goto LABEL_970;
            }

            v478 = a5;
            v491 = (8 * (v487 >> 3));
            bzero(v491, 8 * v485);
            memcpy(0, v471, v487);
            *(a5 + 72) = 0;
            *(a5 + 80) = &v491[8 * v485];
            *(a5 + 88) = 0;
            v7 = v779;
            if (v471)
            {
              operator delete(v471);
            }
          }

          v471 = *(v478 + 72);
          v477 = *(v478 + 96);
          goto LABEL_724;
        }

        if (v484 >= v476)
        {
LABEL_694:
          v477 = v474;
          v478 = a5;
        }

        else
        {
          v478 = a5;
          *(a5 + 80) = &v471[8 * v484];
          v477 = v474;
        }

LABEL_724:
        sub_C54CE4((v478 + 72), v470, (v474 + 28 * v475), (v477 + 28 * *&v471[8 * v470 + 4]));
        v469 = v470 + 1;
        v205 = a5;
        if (v782 == v470 + 1)
        {
          v464 = *(a5 + 72);
          v465 = *(a5 + 80);
          v466 = v465 - v464;
          v11 = v765;
          v468 = v761;
          break;
        }
      }
    }

    v492 = v466 >> 3;
    v493 = v468 - v492;
    if (v468 <= v492)
    {
      if (v468 >= v492)
      {
LABEL_743:
        v502 = *v205;
        v503 = *(v205 + 8);
        v504 = &v503[-*v205];
        v783 = v504 >> 3;
        if (v468 >= (v504 >> 3))
        {
          goto LABEL_779;
        }

        v505 = v468;
        while (1)
        {
          v506 = v505;
          v507 = *v205;
          v508 = *(v205 + 8);
          v509 = &v508[-*v205] >> 3;
          if (v509 <= v505)
          {
            v514 = v505 + 1;
            v515 = v514 - v509;
            if (v514 <= v509)
            {
              if (v514 < v509)
              {
                v508 = &v507[2 * v514];
                *(v205 + 8) = v508;
              }
            }

            else
            {
              v516 = *(v205 + 16);
              if (v515 > (v516 - v508) >> 3)
              {
                v517 = v516 - v507;
                if (v517 >> 2 > v514)
                {
                  v514 = v517 >> 2;
                }

                if (v517 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v518 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v518 = v514;
                }

                if (!(v518 >> 61))
                {
                  operator new();
                }

                goto LABEL_970;
              }

              bzero(*(v205 + 8), 8 * v515);
              v508 += 8 * v515;
              *(v205 + 8) = v508;
              v507 = *v205;
            }
          }

          v510 = *(v205 + 24);
          v511 = v507[2 * v506];
          v512 = (v508 - v507) >> 3;
          if (v512 <= v506)
          {
            v519 = (v506 + 1);
            v520 = v519 - v512;
            if (v519 > v512)
            {
              v521 = *(v205 + 16);
              if (v520 <= (v521 - v508) >> 3)
              {
                bzero(v508, 8 * v520);
                *(v205 + 8) = &v508[8 * v520];
              }

              else
              {
                v522 = v508 - v507;
                v523 = (v522 >> 3) + v520;
                if (v523 >> 61)
                {
                  goto LABEL_972;
                }

                v524 = v521 - v507;
                if (v524 >> 2 > v523)
                {
                  v523 = v524 >> 2;
                }

                if (v524 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v525 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v525 = v523;
                }

                if (v525)
                {
                  if (!(v525 >> 61))
                  {
                    operator new();
                  }

                  goto LABEL_970;
                }

                v205 = a5;
                v526 = (8 * (v522 >> 3));
                bzero(v526, 8 * v520);
                memcpy(0, v507, v522);
                *a5 = 0;
                *(a5 + 8) = &v526[8 * v520];
                *(a5 + 16) = 0;
                v7 = v779;
                if (v507)
                {
                  operator delete(v507);
                }
              }

              v507 = *v205;
              v513 = *(v205 + 24);
              goto LABEL_777;
            }

            if (v519 < v512)
            {
              *(v205 + 8) = &v507[2 * v519];
            }
          }

          v513 = v510;
LABEL_777:
          sub_C54CE4(v205, v506, (v510 + 28 * v511), (v513 + 28 * v507[2 * v506 + 1]));
          v505 = v506 + 1;
          if (v783 == v506 + 1)
          {
            v502 = *v205;
            v503 = *(v205 + 8);
            v504 = &v503[-*v205];
            v11 = v765;
            v468 = v761;
LABEL_779:
            v527 = v504 >> 3;
            v528 = v468 - v527;
            if (v468 <= v527)
            {
              if (v468 >= v527)
              {
                goto LABEL_796;
              }

              v534 = &v502[2 * v468];
            }

            else
            {
              v529 = *(v205 + 16);
              if (v528 > (v529 - v503) >> 3)
              {
                v530 = v503 - v502;
                v531 = (v530 >> 3) + v528;
                if (v531 >> 61)
                {
LABEL_972:
                  sub_1794();
                }

                v532 = v529 - v502;
                if (v532 >> 2 > v531)
                {
                  v531 = v532 >> 2;
                }

                if (v532 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v533 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v533 = v531;
                }

                if (v533)
                {
                  if (!(v533 >> 61))
                  {
                    operator new();
                  }

                  goto LABEL_970;
                }

                v205 = a5;
                v11 = v765;
                v535 = (8 * (v530 >> 3));
                bzero(v535, 8 * v528);
                memcpy(0, v502, v530);
                *a5 = 0;
                *(a5 + 8) = &v535[8 * v528];
                *(a5 + 16) = 0;
                v7 = v779;
                if (v502)
                {
                  operator delete(v502);
                }

LABEL_796:
                result = sub_C551EC((v205 + 72), v774, v785);
                ++*(v205 + 144);
                v536 = a1[520];
                v537 = v768;
                v538 = v769;
                v790 = 0;
                v791 = v768;
                v787 = "transfer";
                v788 = &v790;
                v789 = &v791;
                v539 = *(v536 + 3880) + 1;
                *(v536 + 3880) = v539;
                if (!*(v536 + 24))
                {
                  v660 = __cxa_allocate_exception(0x40uLL);
                  v794 = v791;
                  v792 = sub_7FCF0(6u);
                  v793 = v661;
                  sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
                  if ((v786 & 0x80000000) == 0)
                  {
                    v662 = v785;
                  }

                  else
                  {
                    v662 = *v785;
                  }

                  if ((v786 & 0x80000000) == 0)
                  {
                    v663 = BYTE3(v786);
                  }

                  else
                  {
                    v663 = *&v785[8];
                  }

                  v664 = sub_2D390(v660, v662, v663);
                }

                if (*(v536 + 616) != v768)
                {
                  if (*(v536 + 640) == v768)
                  {
                    ++*(v536 + 3888);
                    *(v536 + 648) = v539;
                    v540 = *(v536 + 656);
                    if (v540)
                    {
                      goto LABEL_823;
                    }
                  }

                  else if (*(v536 + 664) == v768)
                  {
                    ++*(v536 + 3888);
                    *(v536 + 672) = v539;
                    v540 = *(v536 + 680);
                    if (v540)
                    {
                      goto LABEL_823;
                    }
                  }

                  else
                  {
                    if (*(v536 + 688) != v768)
                    {
                      v541 = result;
                      v542 = *(v536 + 672);
                      v543 = *(v536 + 648);
                      v544 = *(v536 + 624);
                      v545 = *(v536 + 696);
                      v546 = sub_2D52A4(*(v536 + 24), 6, v764, 1);
                      v540 = v546;
                      if (v544 >= v539)
                      {
                        v547 = v539;
                      }

                      else
                      {
                        v547 = v544;
                      }

                      if (v544 >= v539)
                      {
                        v548 = 0;
                      }

                      else
                      {
                        v548 = 24;
                      }

                      if (v543 < v547)
                      {
                        v547 = v543;
                        v548 = 25;
                      }

                      if (v542 < v547)
                      {
                        v548 = 26;
                        v547 = v542;
                      }

                      v27 = v545 >= v547;
                      v549 = 27;
                      if (v27)
                      {
                        v549 = v548;
                      }

                      v550 = v536 + 40 + 24 * v549;
                      *v550 = v791;
                      *(v550 + 8) = *(v536 + 3880);
                      *(v550 + 16) = v546;
                      result = v541;
                      v537 = v768;
                      v538 = v769;
                      if (v540)
                      {
                        goto LABEL_823;
                      }

                      sub_2C9894(&v788);
                      v537 = v768;
                      v538 = v769;
LABEL_1108:
                      v730 = __cxa_allocate_exception(0x40uLL);
                      LODWORD(v788) = v537;
                      v794 = v538;
                      v792 = sub_7FCF0(6u);
                      v793 = v731;
                      sub_2C956C("Failed to acquire entity ", &v787, " in quad node ", " at position ", " on layer ", &v792, v785);
                      if ((v786 & 0x80000000) == 0)
                      {
                        v732 = v785;
                      }

                      else
                      {
                        v732 = *v785;
                      }

                      if ((v786 & 0x80000000) == 0)
                      {
                        v733 = BYTE3(v786);
                      }

                      else
                      {
                        v733 = *&v785[8];
                      }

                      v734 = sub_2D390(v730, v732, v733);
                    }

                    ++*(v536 + 3888);
                    *(v536 + 696) = v539;
                    v540 = *(v536 + 704);
                    if (v540)
                    {
                      goto LABEL_823;
                    }
                  }

LABEL_1036:
                  v685 = __cxa_allocate_exception(0x40uLL);
                  v794 = v791;
                  v792 = sub_7FCF0(6u);
                  v793 = v686;
                  sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
                  if ((v786 & 0x80000000) == 0)
                  {
                    v687 = v785;
                  }

                  else
                  {
                    v687 = *v785;
                  }

                  if ((v786 & 0x80000000) == 0)
                  {
                    v688 = BYTE3(v786);
                  }

                  else
                  {
                    v688 = *&v785[8];
                  }

                  v689 = sub_2D390(v685, v687, v688);
                }

                ++*(v536 + 3888);
                *(v536 + 624) = v539;
                v540 = *(v536 + 632);
                if (!v540)
                {
                  goto LABEL_1036;
                }

LABEL_823:
                v551 = (v540 + *v540);
                v552 = (v551 - *v551);
                if (*v552 < 0x23u)
                {
                  goto LABEL_1108;
                }

                v553 = v552[17];
                if (!v553)
                {
                  goto LABEL_1108;
                }

                v554 = (v551 + v553 + *(v551 + v553));
                if (*v554 <= v538)
                {
                  goto LABEL_1108;
                }

                v555 = (&v554[v773 + 1] + v554[v773 + 1]);
                v556 = (v555 - *v555);
                if (*v556 >= 0xBu)
                {
                  v557 = v556[5];
                  if (v557)
                  {
                    if (*(v555 + v557) != -1)
                    {
                      v558 = a1[520];
                      v790 = 0;
                      v791 = v537;
                      v787 = "transfer";
                      v788 = &v790;
                      v789 = &v791;
                      v559 = *(v558 + 3880) + 1;
                      *(v558 + 3880) = v559;
                      if (!*(v558 + 24))
                      {
                        v708 = __cxa_allocate_exception(0x40uLL);
                        v794 = v791;
                        v792 = sub_7FCF0(6u);
                        v793 = v709;
                        sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
                        if ((v786 & 0x80000000) == 0)
                        {
                          v710 = v785;
                        }

                        else
                        {
                          v710 = *v785;
                        }

                        if ((v786 & 0x80000000) == 0)
                        {
                          v711 = BYTE3(v786);
                        }

                        else
                        {
                          v711 = *&v785[8];
                        }

                        v712 = sub_2D390(v708, v710, v711);
                      }

                      if (*(v558 + 616) != v537)
                      {
                        if (*(v558 + 640) == v537)
                        {
                          ++*(v558 + 3888);
                          *(v558 + 648) = v559;
                          v560 = *(v558 + 656);
                          if (v560)
                          {
                            goto LABEL_893;
                          }
                        }

                        else if (*(v558 + 664) == v537)
                        {
                          ++*(v558 + 3888);
                          *(v558 + 672) = v559;
                          v560 = *(v558 + 680);
                          if (v560)
                          {
                            goto LABEL_893;
                          }
                        }

                        else
                        {
                          if (*(v558 + 688) != v537)
                          {
                            v582 = v538;
                            v583 = result;
                            v584 = *(v558 + 672);
                            v585 = *(v558 + 648);
                            v586 = *(v558 + 624);
                            v587 = *(v558 + 696);
                            v588 = sub_2D52A4(*(v558 + 24), 6, v764, 1);
                            v560 = v588;
                            if (v586 >= v559)
                            {
                              v589 = v559;
                            }

                            else
                            {
                              v589 = v586;
                            }

                            if (v586 >= v559)
                            {
                              v590 = 0;
                            }

                            else
                            {
                              v590 = 24;
                            }

                            if (v585 < v589)
                            {
                              v589 = v585;
                              v590 = 25;
                            }

                            if (v584 < v589)
                            {
                              v590 = 26;
                              v589 = v584;
                            }

                            v27 = v587 >= v589;
                            v591 = 27;
                            if (v27)
                            {
                              v591 = v590;
                            }

                            v592 = v558 + 40 + 24 * v591;
                            *v592 = v791;
                            *(v592 + 8) = *(v558 + 3880);
                            *(v592 + 16) = v588;
                            result = v583;
                            v537 = v768;
                            v538 = v582;
                            if (v560)
                            {
                              goto LABEL_893;
                            }

                            sub_2C9894(&v788);
                            v537 = v768;
                            v538 = v582;
LABEL_1148:
                            v755 = __cxa_allocate_exception(0x40uLL);
                            LODWORD(v788) = v537;
                            v794 = v538;
                            v792 = sub_7FCF0(6u);
                            v793 = v756;
                            sub_2C956C("Failed to acquire entity ", &v787, " in quad node ", " at position ", " on layer ", &v792, v785);
                            if ((v786 & 0x80000000) == 0)
                            {
                              v757 = v785;
                            }

                            else
                            {
                              v757 = *v785;
                            }

                            if ((v786 & 0x80000000) == 0)
                            {
                              v758 = BYTE3(v786);
                            }

                            else
                            {
                              v758 = *&v785[8];
                            }

                            v759 = sub_2D390(v755, v757, v758);
                          }

                          ++*(v558 + 3888);
                          *(v558 + 696) = v559;
                          v560 = *(v558 + 704);
                          if (v560)
                          {
                            goto LABEL_893;
                          }
                        }

LABEL_1080:
                        v713 = __cxa_allocate_exception(0x40uLL);
                        v794 = v791;
                        v792 = sub_7FCF0(6u);
                        v793 = v714;
                        sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
                        if ((v786 & 0x80000000) == 0)
                        {
                          v715 = v785;
                        }

                        else
                        {
                          v715 = *v785;
                        }

                        if ((v786 & 0x80000000) == 0)
                        {
                          v716 = BYTE3(v786);
                        }

                        else
                        {
                          v716 = *&v785[8];
                        }

                        v717 = sub_2D390(v713, v715, v716);
                      }

                      ++*(v558 + 3888);
                      *(v558 + 624) = v559;
                      v560 = *(v558 + 632);
                      if (!v560)
                      {
                        goto LABEL_1080;
                      }

LABEL_893:
                      v593 = (v560 + *v560);
                      v594 = (v593 - *v593);
                      if (*v594 < 0x23u)
                      {
                        goto LABEL_1148;
                      }

                      v595 = v594[17];
                      if (!v595)
                      {
                        goto LABEL_1148;
                      }

                      v596 = (v593 + v595 + *(v593 + v595));
                      if (*v596 <= v538)
                      {
                        goto LABEL_1148;
                      }

                      v597 = (&v596[v773 + 1] + v596[v773 + 1]);
                      v598 = (v597 - *v597);
                      if (*v598 >= 0xBu)
                      {
                        v599 = v598[5];
                        if (v599)
                        {
                          if (*(v597 + v599) != -1)
                          {
                            v600 = a1[520];
                            v788 = "transfer";
                            LODWORD(v792) = v537;
                            LODWORD(v787) = 0;
                            *v785 = &v787;
                            *&v785[8] = &v792;
                            v601 = *(v600 + 3880) + 1;
                            *(v600 + 3880) = v601;
                            if (!*(v600 + 24))
                            {
                              goto LABEL_1091;
                            }

                            if (*(v600 + 616) != v537)
                            {
                              if (*(v600 + 640) == v537)
                              {
                                ++*(v600 + 3888);
                                *(v600 + 648) = v601;
                                v602 = *(v600 + 656);
                                if (v602)
                                {
                                  goto LABEL_962;
                                }
                              }

                              else if (*(v600 + 664) == v537)
                              {
                                ++*(v600 + 3888);
                                *(v600 + 672) = v601;
                                v602 = *(v600 + 680);
                                if (v602)
                                {
                                  goto LABEL_962;
                                }
                              }

                              else if (*(v600 + 688) == v537)
                              {
                                ++*(v600 + 3888);
                                *(v600 + 696) = v601;
                                v602 = *(v600 + 704);
                                if (v602)
                                {
                                  goto LABEL_962;
                                }
                              }

                              else
                              {
                                v624 = v538;
                                v625 = result;
                                v626 = *(v600 + 672);
                                v627 = *(v600 + 648);
                                v628 = *(v600 + 624);
                                v629 = *(v600 + 696);
                                v630 = sub_2D52A4(*(v600 + 24), 6, v764, 1);
                                v602 = v630;
                                if (v628 >= v601)
                                {
                                  v631 = v601;
                                }

                                else
                                {
                                  v631 = v628;
                                }

                                if (v628 >= v601)
                                {
                                  v632 = 0;
                                }

                                else
                                {
                                  v632 = 24;
                                }

                                if (v627 < v631)
                                {
                                  v631 = v627;
                                  v632 = 25;
                                }

                                if (v626 < v631)
                                {
                                  v632 = 26;
                                  v631 = v626;
                                }

                                v27 = v629 >= v631;
                                v633 = 27;
                                if (v27)
                                {
                                  v633 = v632;
                                }

                                v634 = v600 + 40 + 24 * v633;
                                *v634 = v792;
                                *(v634 + 8) = *(v600 + 3880);
                                *(v634 + 16) = v630;
                                result = v625;
                                v537 = v768;
                                v538 = v624;
                                if (v602)
                                {
                                  goto LABEL_962;
                                }
                              }

LABEL_1091:
                              sub_2C9894(v785);
                              v537 = v768;
LABEL_1092:
                              v720 = __cxa_allocate_exception(0x40uLL);
                              LODWORD(v787) = v537;
                              v794 = v538;
                              v792 = sub_7FCF0(6u);
                              v793 = v721;
                              sub_2C956C("Failed to acquire entity ", &v788, " in quad node ", " at position ", " on layer ", &v792, v785);
                              if ((v786 & 0x80000000) == 0)
                              {
                                v722 = v785;
                              }

                              else
                              {
                                v722 = *v785;
                              }

                              if ((v786 & 0x80000000) == 0)
                              {
                                v723 = BYTE3(v786);
                              }

                              else
                              {
                                v723 = *&v785[8];
                              }

                              v724 = sub_2D390(v720, v722, v723);
                            }

                            ++*(v600 + 3888);
                            *(v600 + 624) = v601;
                            v602 = *(v600 + 632);
                            if (!v602)
                            {
                              goto LABEL_1091;
                            }

LABEL_962:
                            v635 = (v602 + *v602);
                            v636 = (v635 - *v635);
                            if (*v636 < 0x23u)
                            {
                              goto LABEL_1092;
                            }

                            v637 = v636[17];
                            if (!v637)
                            {
                              goto LABEL_1092;
                            }

                            v638 = (v635 + v637 + *(v635 + v637));
                            if (*v638 <= v538)
                            {
                              goto LABEL_1092;
                            }

                            v579 = (&v638[v773 + 1] + v638[v773 + 1]);
                            v639 = (v579 - *v579);
                            v565 = 4294967286;
                            v563 = v778;
                            if (*v639 >= 0xBu)
                            {
                              v581 = v639[5];
                              v565 = 4294967286;
                              if (v581)
                              {
                                goto LABEL_871;
                              }
                            }

LABEL_905:
                            if (!a3)
                            {
                              goto LABEL_253;
                            }

                            v603 = a1[522];
                            v604 = __ROR8__(v563, 32);
                            v790 = 0;
                            v791 = v604;
                            v787 = "transfer node";
                            v788 = &v790;
                            v789 = &v791;
                            v605 = *(v603 + 3880) + 1;
                            *(v603 + 3880) = v605;
                            if (!*(v603 + 24))
                            {
                              v690 = __cxa_allocate_exception(0x40uLL);
                              v794 = v791;
                              v792 = sub_7FCF0(6u);
                              v793 = v691;
                              sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
                              if ((v786 & 0x80000000) == 0)
                              {
                                v692 = v785;
                              }

                              else
                              {
                                v692 = *v785;
                              }

                              if ((v786 & 0x80000000) == 0)
                              {
                                v693 = BYTE3(v786);
                              }

                              else
                              {
                                v693 = *&v785[8];
                              }

                              v694 = sub_2D390(v690, v692, v693);
                            }

                            if (*(v603 + 616) != v604)
                            {
                              if (*(v603 + 640) == v604)
                              {
                                ++*(v603 + 3888);
                                *(v603 + 648) = v605;
                                v606 = *(v603 + 656);
                                if (v606)
                                {
                                  goto LABEL_933;
                                }
                              }

                              else if (*(v603 + 664) == v604)
                              {
                                ++*(v603 + 3888);
                                *(v603 + 672) = v605;
                                v606 = *(v603 + 680);
                                if (v606)
                                {
                                  goto LABEL_933;
                                }
                              }

                              else
                              {
                                if (*(v603 + 688) != v604)
                                {
                                  v607 = result;
                                  v608 = *(v603 + 672);
                                  v609 = *(v603 + 648);
                                  v610 = *(v603 + 624);
                                  v611 = *(v603 + 696);
                                  v612 = sub_2D52A4(*(v603 + 24), 6, v604, 1);
                                  v606 = v612;
                                  if (v610 >= v605)
                                  {
                                    v613 = v605;
                                  }

                                  else
                                  {
                                    v613 = v610;
                                  }

                                  if (v610 >= v605)
                                  {
                                    v614 = 0;
                                  }

                                  else
                                  {
                                    v614 = 24;
                                  }

                                  if (v609 < v613)
                                  {
                                    v613 = v609;
                                    v614 = 25;
                                  }

                                  if (v608 < v613)
                                  {
                                    v614 = 26;
                                    v613 = v608;
                                  }

                                  v27 = v611 >= v613;
                                  v615 = 27;
                                  if (v27)
                                  {
                                    v615 = v614;
                                  }

                                  v616 = v603 + 40 + 24 * v615;
                                  *v616 = v791;
                                  *(v616 + 8) = *(v603 + 3880);
                                  *(v616 + 16) = v612;
                                  result = v607;
                                  v7 = v779;
                                  v11 = v765;
                                  if (v606)
                                  {
                                    goto LABEL_933;
                                  }

                                  sub_2C9894(&v788);
LABEL_1140:
                                  v750 = __cxa_allocate_exception(0x40uLL);
                                  v794 = HIDWORD(v604);
                                  LODWORD(v788) = v604;
                                  v792 = sub_7FCF0(6u);
                                  v793 = v751;
                                  sub_2C956C("Failed to acquire entity ", &v787, " in quad node ", " at position ", " on layer ", &v792, v785);
                                  if ((v786 & 0x80000000) == 0)
                                  {
                                    v752 = v785;
                                  }

                                  else
                                  {
                                    v752 = *v785;
                                  }

                                  if ((v786 & 0x80000000) == 0)
                                  {
                                    v753 = BYTE3(v786);
                                  }

                                  else
                                  {
                                    v753 = *&v785[8];
                                  }

                                  v754 = sub_2D390(v750, v752, v753);
                                }

                                ++*(v603 + 3888);
                                *(v603 + 696) = v605;
                                v606 = *(v603 + 704);
                                if (v606)
                                {
                                  goto LABEL_933;
                                }
                              }

LABEL_1050:
                              v695 = __cxa_allocate_exception(0x40uLL);
                              v794 = v791;
                              v792 = sub_7FCF0(6u);
                              v793 = v696;
                              sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
                              if ((v786 & 0x80000000) == 0)
                              {
                                v697 = v785;
                              }

                              else
                              {
                                v697 = *v785;
                              }

                              if ((v786 & 0x80000000) == 0)
                              {
                                v698 = BYTE3(v786);
                              }

                              else
                              {
                                v698 = *&v785[8];
                              }

                              v699 = sub_2D390(v695, v697, v698);
                            }

                            ++*(v603 + 3888);
                            *(v603 + 624) = v605;
                            v606 = *(v603 + 632);
                            if (!v606)
                            {
                              goto LABEL_1050;
                            }

LABEL_933:
                            v617 = (v606 + *v606);
                            v618 = (v617 - *v617);
                            if (*v618 < 0x29u)
                            {
                              goto LABEL_1140;
                            }

                            v619 = v618[20];
                            if (!v619)
                            {
                              goto LABEL_1140;
                            }

                            v620 = (v617 + v619 + *(v617 + v619));
                            if (*v620 <= HIDWORD(v604))
                            {
                              goto LABEL_1140;
                            }

                            v621 = (&v620[HIDWORD(v604) + 1] + v620[HIDWORD(v604) + 1]);
                            v622 = (v621 - *v621);
                            if (*v622 < 7u || (v623 = v622[3]) == 0)
                            {
LABEL_253:
                              v176 = 0;
                              goto LABEL_254;
                            }

                            v176 = (*(v621 + v623) == 5) << 32;
LABEL_254:
                            *(result + 1) = v176 | v565;
                            *(result + 3) = v766;
                            *(result + 5) = *v11;
                            if (++v771 == v763)
                            {
                              goto LABEL_6;
                            }

                            goto LABEL_255;
                          }
                        }
                      }

                      v565 = 0x7FFFFFFFLL;
LABEL_904:
                      v563 = v778;
                      goto LABEL_905;
                    }
                  }
                }

                v561 = a1[520];
                if (*(v561 + 17) != 1)
                {
                  v565 = 300;
                  goto LABEL_904;
                }

                v794 = 1;
                v791 = 0;
                v788 = &v791;
                v789 = &v794;
                v562 = *(v561 + 3880) + 1;
                *(v561 + 3880) = v562;
                v563 = v778;
                if (!*(v561 + 24))
                {
                  v702 = __cxa_allocate_exception(0x40uLL);
                  LODWORD(v787) = *v789;
                  v792 = sub_7FCF0(9u);
                  v793 = v703;
                  sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
                  if ((v786 & 0x80000000) == 0)
                  {
                    v704 = v785;
                  }

                  else
                  {
                    v704 = *v785;
                  }

                  if ((v786 & 0x80000000) == 0)
                  {
                    v705 = BYTE3(v786);
                  }

                  else
                  {
                    v705 = *&v785[8];
                  }

                  v706 = sub_2D390(v702, v704, v705);
                }

                if (*(v561 + 904) == 1)
                {
                  ++*(v561 + 3888);
                  *(v561 + 912) = v562;
                  v564 = *(v561 + 920);
                  if (!v564)
                  {
                    goto LABEL_1058;
                  }

LABEL_867:
                  v576 = (v564 + *v564);
                  v577 = (v576 - *v576);
                  if (*v577 >= 5u)
                  {
                    v578 = v577[2];
                    if (v578)
                    {
                      v579 = (v576 + v578 + *(v576 + v578));
                      v580 = (v579 - *v579);
                      if (*v580 < 0x11u || (v581 = v580[8]) == 0)
                      {
                        v565 = 0;
                        goto LABEL_905;
                      }

LABEL_871:
                      v565 = (10 * *(v579 + v581));
                      goto LABEL_905;
                    }
                  }
                }

                else
                {
                  if (*(v561 + 928) == 1)
                  {
                    ++*(v561 + 3888);
                    *(v561 + 936) = v562;
                    v564 = *(v561 + 944);
                    if (v564)
                    {
                      goto LABEL_867;
                    }
                  }

                  else if (*(v561 + 952) == 1)
                  {
                    ++*(v561 + 3888);
                    *(v561 + 960) = v562;
                    v564 = *(v561 + 968);
                    if (v564)
                    {
                      goto LABEL_867;
                    }
                  }

                  else if (*(v561 + 976) == 1)
                  {
                    ++*(v561 + 3888);
                    *(v561 + 984) = v562;
                    v564 = *(v561 + 992);
                    if (v564)
                    {
                      goto LABEL_867;
                    }
                  }

                  else
                  {
                    v566 = result;
                    v567 = *(v561 + 960);
                    v568 = *(v561 + 936);
                    v569 = *(v561 + 912);
                    v570 = *(v561 + 984);
                    v571 = sub_2D52A4(*(v561 + 24), 9, 1u, 1);
                    v564 = v571;
                    if (v569 >= v562)
                    {
                      v572 = v562;
                    }

                    else
                    {
                      v572 = v569;
                    }

                    v573 = 36;
                    if (v569 >= v562)
                    {
                      v573 = 0;
                    }

                    if (v568 < v572)
                    {
                      v572 = v568;
                      v573 = 37;
                    }

                    if (v567 < v572)
                    {
                      v573 = 38;
                      v572 = v567;
                    }

                    v27 = v570 >= v572;
                    v574 = 39;
                    if (v27)
                    {
                      v574 = v573;
                    }

                    v575 = v561 + 40 + 24 * v574;
                    *v575 = v794;
                    *(v575 + 8) = *(v561 + 3880);
                    *(v575 + 16) = v571;
                    result = v566;
                    v563 = v778;
                    if (v564)
                    {
                      goto LABEL_867;
                    }
                  }

LABEL_1058:
                  sub_3D4ED8(&v788);
                }

                v700 = __cxa_allocate_exception(0x40uLL);
                v701 = sub_2D390(v700, "Root quad node of transit routing layer does not contain info object", 0x44uLL);
              }

              bzero(v503, 8 * v528);
              v534 = &v503[8 * v528];
            }

            *(v205 + 8) = v534;
            goto LABEL_796;
          }
        }
      }

      v500 = &v464[8 * v468];
    }

    else
    {
      v494 = *(v205 + 88);
      if (v493 > (v494 - v465) >> 3)
      {
        v495 = v465 - v464;
        v496 = (v495 >> 3) + v493;
        if (v496 >> 61)
        {
          goto LABEL_972;
        }

        v497 = v468;
        v498 = v494 - v464;
        if (v498 >> 2 > v496)
        {
          v496 = v498 >> 2;
        }

        if (v498 >= 0x7FFFFFFFFFFFFFF8)
        {
          v499 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v499 = v496;
        }

        if (v499)
        {
          if (!(v499 >> 61))
          {
            operator new();
          }

          goto LABEL_970;
        }

        v205 = a5;
        v11 = v765;
        v501 = (8 * (v495 >> 3));
        bzero(v501, 8 * v493);
        memcpy(0, v464, v495);
        *(a5 + 72) = 0;
        *(a5 + 80) = &v501[8 * v493];
        *(a5 + 88) = 0;
        v7 = v779;
        v468 = v497;
        if (v464)
        {
          operator delete(v464);
        }

        goto LABEL_743;
      }

      bzero(v465, 8 * v493);
      v500 = &v465[8 * v493];
    }

    *(v205 + 80) = v500;
    goto LABEL_743;
  }

  return result;
}