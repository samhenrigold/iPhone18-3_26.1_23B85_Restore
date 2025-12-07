double sub_1E11318(void *result, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    sub_1960144(result, result[1], *a2, v3, 0xA3784A062B2E43DBLL * ((v3 - *a2) >> 3));

    *&v6 = sub_1E1372C((result + 3), (a2 + 24)).u64[0];
  }

  return v6;
}

uint64_t sub_1E11384@<X0>(std::string *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_1A2E340(a1 + 1, a2, a3, v7);
  if (sub_1A2E788(v7))
  {
    sub_195EB38(a4, v7);
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a4 = 0;
  }

  a4[664] = v5;
  return sub_196005C(v7);
}

void sub_1E113EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_196005C(va);
  _Unwind_Resume(a1);
}

void sub_1E11400(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v9 = a1[8];
  if (a1[9] != v9)
  {
    v11 = 0;
    do
    {
      v12 = a1[17];
      v13 = a1[18];
      if (v12 != v13)
      {
        while (v11 != *v12)
        {
          if (++v12 == v13)
          {
            goto LABEL_11;
          }
        }
      }

      if (v12 == v13)
      {
LABEL_11:
        v17 = v9 + 24 * v11;
        v18 = v61;
        if (v61 >= v62)
        {
          v20 = sub_1CEE8(&v60, v17);
        }

        else
        {
          if (*(v17 + 23) < 0)
          {
            sub_325C(v61, *v17, *(v17 + 8));
          }

          else
          {
            v19 = *v17;
            *(v61 + 2) = *(v17 + 16);
            *v18 = v19;
          }

          v20 = v18 + 24;
        }

        v61 = v20;
      }

      else
      {
        v14 = v9 + 24 * v11;
        v15 = v58;
        if (v58 >= v59)
        {
          v21 = sub_1CEE8(&v57, v14);
        }

        else
        {
          if (*(v14 + 23) < 0)
          {
            sub_325C(v58, *v14, *(v14 + 8));
          }

          else
          {
            v16 = *v14;
            *(v58 + 2) = *(v14 + 16);
            *v15 = v16;
          }

          v21 = v15 + 24;
        }

        v58 = v21;
      }

      ++v11;
      v9 = a1[8];
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[9] - v9) >> 3) > v11);
  }

  sub_1E11A58(a2, &v60, a3, &v55);
  sub_1E11A58(a2, &v57, a3, &v53);
  v22 = v56;
  v23 = v55;
  if (v55 == v56)
  {
    if (v53 == v54)
    {
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      goto LABEL_42;
    }

    sub_1E12874(&v55, v55, v53, v54, 0x4EC4EC4EC4EC4EC5 * ((v54 - v53) >> 3));
    sub_1A2F0B4(&v53, v53);
  }

  sub_20A7B08(&v55, v52);
  if (v52[0] == v52[1] && *a4)
  {
    (*(**a4 + 16))(v50);
    sub_1E11B70(v50, &v53, v23 != v22, a5);
    v63[0] = v50;
    sub_19E2CA4(v63);
  }

  else
  {
    sub_1E11B70(v52, &v53, v23 != v22, a5);
    v24 = a5[1];
    v25 = *a5;
    if (*a5 != v24 && *(v25 + 8) - *v25 == 32 && v54 != v53)
    {
      v26 = 0;
      do
      {
        if (sub_20A7DEC(v25) >= 1)
        {
          v26 += sub_1B11174((v25 + 24));
        }

        v25 += 72;
      }

      while (v25 != v24);
      if (v26 <= 4)
      {
        v27 = v53;
        v28 = v54;
        if (v53 == v54)
        {
          v29 = 0;
        }

        else
        {
          v29 = 0;
          do
          {
            v29 += sub_1B11174(v27 + 6);
            v27 = (v27 + 104);
          }

          while (v27 != v28);
        }

        if (v29 + v26 <= 5)
        {
          v30 = v53;
          for (i = v54; v30 != i; v30 = (v30 + 104))
          {
            memset(v50, 0, sizeof(v50));
            sub_1B10CDC(&v50[1] + 8, 0);
            v51 = 0;
            sub_19E3D88(&v50[1] + 8, v30 + 24);
            if (*(v30 + 23) < 0)
            {
              sub_325C(__p, *v30, *(v30 + 1));
            }

            else
            {
              v32 = *v30;
              v48 = *(v30 + 2);
              *__p = v32;
            }

            v49 = 0;
            v33 = *(&v50[0] + 1);
            if (*(&v50[0] + 1) >= *&v50[1])
            {
              v35 = (*(&v50[0] + 1) - *&v50[0]) >> 5;
              v36 = v35 + 1;
              if ((v35 + 1) >> 59)
              {
                sub_1794();
              }

              v37 = *&v50[1] - *&v50[0];
              if ((*&v50[1] - *&v50[0]) >> 4 > v36)
              {
                v36 = v37 >> 4;
              }

              if (v37 >= 0x7FFFFFFFFFFFFFE0)
              {
                v38 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v36;
              }

              v63[4] = v50;
              if (v38)
              {
                sub_19E39BC(v50, v38);
              }

              v39 = 32 * v35;
              v40 = *__p;
              *(v39 + 16) = v48;
              *v39 = v40;
              __p[1] = 0;
              v48 = 0;
              __p[0] = 0;
              *(v39 + 24) = v49;
              v41 = 32 * v35 + 32;
              v42 = 32 * v35 - (*(&v50[0] + 1) - *&v50[0]);
              memcpy((v39 - (*(&v50[0] + 1) - *&v50[0])), *&v50[0], *(&v50[0] + 1) - *&v50[0]);
              v43 = *&v50[0];
              v44 = *&v50[1];
              *&v50[0] = v42;
              *(&v50[0] + 1) = v41;
              *&v50[1] = 0;
              v63[2] = v43;
              v63[3] = v44;
              v63[0] = v43;
              v63[1] = v43;
              sub_1B4610C(v63);
              *(&v50[0] + 1) = v41;
              if (SHIBYTE(v48) < 0)
              {
                operator delete(__p[0]);
              }
            }

            else
            {
              v34 = *__p;
              *(*(&v50[0] + 1) + 16) = v48;
              *v33 = v34;
              __p[1] = 0;
              v48 = 0;
              __p[0] = 0;
              *(v33 + 24) = v49;
              *(&v50[0] + 1) = v33 + 32;
            }

            v45 = a5[1];
            if (v45 >= a5[2])
            {
              v46 = sub_1E133AC(a5, v50);
            }

            else
            {
              sub_1E12800(a5, a5[1], v50);
              v46 = v45 + 72;
            }

            a5[1] = v46;
            sub_1B11224(&v50[1] + 2);
            v63[0] = v50;
            sub_19E2C00(v63);
          }
        }
      }
    }
  }

  *&v50[0] = v52;
  sub_19E2CA4(v50);
LABEL_42:
  *&v50[0] = &v53;
  sub_1A2F060(v50);
  *&v50[0] = &v55;
  sub_1A2F060(v50);
  *&v50[0] = &v57;
  sub_195E3E8(v50);
  *&v50[0] = &v60;
  sub_195E3E8(v50);
}

void sub_1E11940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1E12224(&a16);
  a16 = v32;
  sub_19E2CA4(&a16);
  a16 = &a26;
  sub_19E2CA4(&a16);
  a16 = &a29;
  sub_1A2F060(&a16);
  a16 = &a32;
  sub_1A2F060(&a16);
  a16 = (v33 - 168);
  sub_195E3E8(&a16);
  a16 = (v33 - 144);
  sub_195E3E8(&a16);
  _Unwind_Resume(a1);
}

void sub_1E11A58(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  if (*a2 == a2[1])
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    sub_1A9BA80(a3, a1, a2, 0, v11);
    v5 = v11[0];
    v6 = v11[1];
    a4[1] = 0;
    a4[2] = 0;
    for (*a4 = 0; v5 != v6; v5 += 48)
    {
      sub_1A2D5B0(v5 + 24, __p);
      sub_1A2D890(a4, __p);
      sub_1B11224(v10);
      sub_1B11224(v9);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    __p[0] = v11;
    sub_1965604(__p);
  }
}

void sub_1E11B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_1A2F060(&a9);
  a9 = (v9 - 72);
  sub_1965604(&a9);
  _Unwind_Resume(a1);
}

void sub_1E11B70(uint64_t *a1@<X0>, __int128 **a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v4 = *a1;
  if (*a2 == a2[1] || (v46 = a1[1], v4 == v46))
  {
    if (a3)
    {
      v38 = a1[1];
    }

    else
    {
      v38 = a1[1];
      if (v4 != v38)
      {
        v39 = *a1;
        do
        {
          *(v39 + 64) = (*(v39 + 8) - *v39) >> 5;
          v39 += 72;
        }

        while (v39 != v38);
      }
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;

    sub_1E1267C(a4, v4, v38, 0x8E38E38E38E38E39 * ((v38 - v4) >> 3));
  }

  else
  {
    v43 = a3;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    do
    {
      v6 = *a2;
      v5 = a2[1];
      while (v6 != v5)
      {
        if (!sub_570C4C(v6 + 6))
        {
          sub_198B0D0(v56, v4 + 24, v6 + 24);
          if (!sub_570C4C(v56))
          {
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            sub_1B10CDC(&v52 + 8, 0);
            v55 = 0;
            sub_19E3D88(&v52 + 8, v56);
            sub_1E12EF4(&v51, *(&v51 + 1), *v4, *(v4 + 8), (*(v4 + 8) - *v4) >> 5);
            if (*(v6 + 23) < 0)
            {
              sub_325C(__p, *v6, *(v6 + 1));
            }

            else
            {
              v7 = *v6;
              v49 = *(v6 + 2);
              *__p = v7;
            }

            v50 = 0;
            v8 = *(&v51 + 1);
            if (*(&v51 + 1) >= v52)
            {
              v10 = (*(&v51 + 1) - v51) >> 5;
              v11 = v10 + 1;
              if ((v10 + 1) >> 59)
              {
                sub_1794();
              }

              v12 = v52 - v51;
              if ((v52 - v51) >> 4 > v11)
              {
                v11 = v12 >> 4;
              }

              if (v12 >= 0x7FFFFFFFFFFFFFE0)
              {
                v13 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v13 = v11;
              }

              v64 = &v51;
              if (v13)
              {
                sub_19E39BC(&v51, v13);
              }

              v14 = 32 * v10;
              v15 = *__p;
              *(v14 + 16) = v49;
              *v14 = v15;
              __p[1] = 0;
              v49 = 0;
              __p[0] = 0;
              *(v14 + 24) = v50;
              v16 = 32 * v10 + 32;
              v17 = 32 * v10 - (*(&v51 + 1) - v51);
              memcpy((v14 - (*(&v51 + 1) - v51)), v51, *(&v51 + 1) - v51);
              v18 = v51;
              v19 = v52;
              *&v51 = v17;
              *(&v51 + 1) = v16;
              *&v52 = 0;
              v62 = v18;
              v63 = v19;
              v60 = v18;
              v61 = v18;
              sub_1B4610C(&v60);
              *(&v51 + 1) = v16;
              if (SHIBYTE(v49) < 0)
              {
                operator delete(__p[0]);
              }
            }

            else
            {
              v9 = *__p;
              *(*(&v51 + 1) + 16) = v49;
              *v8 = v9;
              __p[1] = 0;
              v49 = 0;
              __p[0] = 0;
              *(v8 + 24) = v50;
              *(&v51 + 1) = v8 + 32;
            }

            v55 = 1;
            v20 = v58;
            if (v58 >= v59)
            {
              v21 = sub_1E133AC(&v57, &v51);
            }

            else
            {
              sub_1E12800(&v57, v58, &v51);
              v21 = v20 + 72;
            }

            v58 = v21;
            sub_1B11224(&v52 + 2);
            v60 = &v51;
            sub_19E2C00(&v60);
          }

          sub_1B11224(v56);
        }

        if (!sub_570C4C(v6 + 16))
        {
          sub_198B0D0(v56, v4 + 24, (v6 + 4));
          if (!sub_570C4C(v56))
          {
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            sub_1B10CDC(&v52 + 8, 0);
            v55 = 0;
            sub_19E3D88(&v52 + 8, v56);
            sub_1E12EF4(&v51, *(&v51 + 1), *v4, *(v4 + 8), (*(v4 + 8) - *v4) >> 5);
            if (*(v6 + 23) < 0)
            {
              sub_325C(__p, *v6, *(v6 + 1));
            }

            else
            {
              v22 = *v6;
              v49 = *(v6 + 2);
              *__p = v22;
            }

            v50 = 1;
            v23 = *(&v51 + 1);
            if (*(&v51 + 1) >= v52)
            {
              v25 = (*(&v51 + 1) - v51) >> 5;
              v26 = v25 + 1;
              if ((v25 + 1) >> 59)
              {
                sub_1794();
              }

              v27 = v52 - v51;
              if ((v52 - v51) >> 4 > v26)
              {
                v26 = v27 >> 4;
              }

              if (v27 >= 0x7FFFFFFFFFFFFFE0)
              {
                v28 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v28 = v26;
              }

              v64 = &v51;
              if (v28)
              {
                sub_19E39BC(&v51, v28);
              }

              v29 = 32 * v25;
              v30 = *__p;
              *(v29 + 16) = v49;
              *v29 = v30;
              __p[1] = 0;
              v49 = 0;
              __p[0] = 0;
              *(v29 + 24) = v50;
              v31 = 32 * v25 + 32;
              v32 = 32 * v25 - (*(&v51 + 1) - v51);
              memcpy((v29 - (*(&v51 + 1) - v51)), v51, *(&v51 + 1) - v51);
              v33 = v51;
              v34 = v52;
              *&v51 = v32;
              *(&v51 + 1) = v31;
              *&v52 = 0;
              v62 = v33;
              v63 = v34;
              v60 = v33;
              v61 = v33;
              sub_1B4610C(&v60);
              *(&v51 + 1) = v31;
              if (SHIBYTE(v49) < 0)
              {
                operator delete(__p[0]);
              }
            }

            else
            {
              v24 = *__p;
              *(*(&v51 + 1) + 16) = v49;
              *v23 = v24;
              __p[1] = 0;
              v49 = 0;
              __p[0] = 0;
              *(v23 + 24) = v50;
              *(&v51 + 1) = v23 + 32;
            }

            v55 = 1;
            v35 = v58;
            if (v58 >= v59)
            {
              v36 = sub_1E133AC(&v57, &v51);
            }

            else
            {
              sub_1E12800(&v57, v58, &v51);
              v36 = v35 + 72;
            }

            v58 = v36;
            sub_1B11224(&v52 + 2);
            v60 = &v51;
            sub_19E2C00(&v60);
          }

          sub_1B11224(v56);
        }

        v6 = (v6 + 104);
      }

      v4 += 72;
    }

    while (v4 != v46);
    v37 = v58;
    if (v57 == v58)
    {
      v40 = *a1;
      v41 = a1[1];
      if ((v43 & 1) == 0 && v40 != v41)
      {
        v42 = *a1;
        do
        {
          *(v42 + 64) = (*(v42 + 8) - *v42) >> 5;
          v42 += 72;
        }

        while (v42 != v41);
      }

      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      sub_1E1267C(a4, v40, v41, 0x8E38E38E38E38E39 * ((v41 - v40) >> 3));
    }

    else
    {
      *a4 = v57;
      a4[1] = v37;
      a4[2] = v59;
      v58 = 0;
      v59 = 0;
      v57 = 0;
    }

    *&v51 = &v57;
    sub_19E2CA4(&v51);
  }
}

void sub_1E12114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  a22 = v32 - 152;
  sub_19E2CA4(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_1E12224(uint64_t a1)
{
  sub_1B11224((a1 + 24));
  v3 = a1;
  sub_19E2C00(&v3);
  return a1;
}

uint64_t sub_1E12268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1961DE0(a1, a2);
  *(v7 + 488) = *a3;
  *(v7 + 504) = 0;
  *(v7 + 512) = 0;
  *(v7 + 496) = 0;
  sub_1963658((v7 + 496), *(a3 + 8), *(a3 + 16), *(a3 + 16) - *(a3 + 8));
  sub_1963724(a1 + 520, a4);
  return a1;
}

void sub_1E122CC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 496);
  if (v3)
  {
    *(v1 + 504) = v3;
    operator delete(v3);
  }

  sub_19639B4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1E122F8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x7D6343EB1A1F58D1 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x5397829CBC14E5)
  {
    sub_1794();
  }

  if (0xFAC687D6343EB1A2 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xFAC687D6343EB1A2 * ((a1[2] - *a1) >> 4);
  }

  if ((0x7D6343EB1A1F58D1 * ((a1[2] - *a1) >> 4)) >= 0x29CBC14E5E0A72)
  {
    v6 = 0x5397829CBC14E5;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_19E2E40(a1, v6);
  }

  v13 = 0;
  v14 = 784 * v2;
  sub_19D4DB4(784 * v2, a2);
  v15 = (784 * v2 + 784);
  v7 = a1[1];
  v8 = 784 * v2 + *a1 - v7;
  sub_19E2E9C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_19E31C0(&v13);
  return v12;
}

void sub_1E1242C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19E31C0(va);
  _Unwind_Resume(a1);
}

BOOL sub_1E12440(uint64_t **a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = a1;
    a1 = *a1;
    v5 = v6[1];
  }

  v8[0] = a1;
  v8[1] = v5;
  return sub_1E12494(v8, __s, v4);
}

uint64_t *sub_1E124D8(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (0x7D6343EB1A1F58D1 * ((result[2] - *result) >> 4) < a4)
  {
    sub_19E4180(result);
    if (a4 <= 0x5397829CBC14E5)
    {
      v9 = 0xFAC687D6343EB1A2 * ((v7[2] - *v7) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x7D6343EB1A1F58D1 * ((v7[2] - *v7) >> 4)) >= 0x29CBC14E5E0A72)
      {
        v10 = 0x5397829CBC14E5;
      }

      else
      {
        v10 = v9;
      }

      sub_19E4268(v7, v10);
    }

    sub_1794();
  }

  v11 = result[1];
  if (0x7D6343EB1A1F58D1 * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_19E7E60(v8, v6);
        v6 += 784;
        v8 += 784;
      }

      while (v6 != a3);
      v11 = v7[1];
    }

    while (v11 != v8)
    {
      v11 -= 784;
      result = sub_19D4CA4(v11);
    }

    v7[1] = v8;
  }

  else
  {
    v12 = v11 - v8 + a2;
    if (v11 != v8)
    {
      do
      {
        sub_19E7E60(v8, v6);
        v6 += 784;
        v8 += 784;
      }

      while (v6 != v12);
      v11 = v7[1];
    }

    result = sub_19E42B8(v7, v12, a3, v11);
    v7[1] = result;
  }

  return result;
}

uint64_t *sub_1E1267C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1E12704(result, a4);
  }

  return result;
}

void sub_1E126E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_19E2CA4(&a9);
  _Unwind_Resume(a1);
}

void sub_1E12704(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_19E3F88(a1, a2);
  }

  sub_1794();
}

uint64_t sub_1E12754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1E12800(a1, v4, v6);
      v6 += 72;
      v4 = v12 + 72;
      v12 += 72;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_19E3B50(v9);
  return v4;
}

uint64_t sub_1E12800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_19E38F8(a2, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 5);
  result = sub_19E3830(a2 + 24, a3 + 24);
  *(a2 + 64) = *(a3 + 64);
  return result;
}

void sub_1E1285C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19E2C00(va);
  _Unwind_Resume(a1);
}

std::string *sub_1E12874(void *a1, std::string *a2, std::string *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if (0x4EC4EC4EC4EC4EC5 * ((v9 - v10) >> 3) >= a5)
    {
      v16 = v10 - a2;
      if (0x4EC4EC4EC4EC4EC5 * ((v10 - a2) >> 3) >= a5)
      {
        v18 = 104 * a5;
        sub_1E12A58(a1, a2, a1[1], a2 + 104 * a5);
        v17 = (a3 + v18);
      }

      else
      {
        a1[1] = sub_1E12CBC(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        sub_1E12A58(a1, v5, v10, v5 + 104 * a5);
        v17 = (a3 + v16);
      }

      sub_1E12E78(&v20, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + 0x4EC4EC4EC4EC4EC5 * ((v10 - *a1) >> 3);
    if (v12 > 0x276276276276276)
    {
      sub_1794();
    }

    v13 = a2 - v11;
    v14 = 0x4EC4EC4EC4EC4EC5 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x13B13B13B13B13BLL)
    {
      v15 = 0x276276276276276;
    }

    else
    {
      v15 = v12;
    }

    v24 = a1;
    if (v15)
    {
      sub_1A2EDC8(a1, v15);
    }

    v20 = 0;
    v21 = 8 * (v13 >> 3);
    v22 = v21;
    v23 = 0;
    sub_1E12B00(&v20, a3, a5);
    v5 = sub_1E12C00(a1, &v20, v5);
    sub_1A2EFE0(&v20);
  }

  return v5;
}

uint64_t sub_1E12A58(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (a2 + v6 - a4);
    v8 = *(a1 + 8);
    do
    {
      sub_1A2ED44(a1, v8, v10);
      v10 = (v10 + 104);
      v8 += 104;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1E12DC0(&v12, a2, v7, v6);
}

uint64_t sub_1E12B00(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a3)
  {
    v6 = 0;
    v7 = v4 + 104 * a3;
    v8 = 104 * a3;
    do
    {
      v9 = v4 + v6;
      v10 = (a2 + v6);
      if (*(a2 + v6 + 23) < 0)
      {
        sub_325C(v9, *v10, *(v10 + 1));
      }

      else
      {
        v11 = *v10;
        *(v9 + 16) = *(v10 + 2);
        *v9 = v11;
      }

      sub_19E3830(v4 + v6 + 24, a2 + v6 + 24);
      result = sub_19E3830(v4 + v6 + 64, a2 + v6 + 64);
      v6 += 104;
    }

    while (v8 != v6);
    v4 = v7;
  }

  *(v3 + 16) = v4;
  return result;
}

uint64_t sub_1E12C00(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  sub_1A2EE24(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  sub_1A2EE24(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_1E12CBC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_325C(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 16) = *(v6 + 2);
        *v4 = v7;
      }

      sub_19E3830(v4 + 24, v6 + 24);
      sub_19E3830(v4 + 64, (v6 + 4));
      v6 = (v6 + 104);
      v4 = v12 + 104;
      v12 += 104;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_1A2EF54(v9);
  return v4;
}

uint64_t sub_1E12DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a4 + v7 - 104);
      if (*(a4 + v7 - 81) < 0)
      {
        operator delete(*v9);
      }

      v10 = (a3 + v7 - 104);
      v11 = *v10;
      *(a4 + v7 - 88) = *(a3 + v7 - 88);
      *v9 = v11;
      *(a3 + v7 - 81) = 0;
      *v10 = 0;
      sub_19E3C78(v8 - 80, (a3 + v7 - 80));
      sub_19E3C78(v8 - 40, (a3 + v7 - 40));
      v7 -= 104;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

std::string *sub_1E12E78(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    sub_19E3D88(&this[1], &v5[1]);
    sub_19E3D88(&this[2].__r_.__value_.__r.__words[2], &v5[2].__r_.__value_.__r.__words[2]);
    this = (this + 104);
    v5 = (v5 + 104);
  }

  while (v5 != v6);
  return v6;
}

std::string *sub_1E12EF4(void *a1, char *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 5)
    {
      v17 = v10 - a2;
      v18 = (v10 - a2) >> 5;
      if (v18 >= a5)
      {
        sub_1E13118(a1, a2, a1[1], &a2[32 * a5]);
        v21 = v7 + 32 * a5;
        v22 = v5;
        do
        {
          std::string::operator=(v22, v7);
          *(v22 + 6) = *(v7 + 24);
          v7 += 32;
          v22 += 32;
        }

        while (v7 != v21);
      }

      else
      {
        v19 = v17 + a3;
        a1[1] = sub_1E13240(a1, (v17 + a3), a4, a1[1]);
        if (v18 >= 1)
        {
          sub_1E13118(a1, v5, v10, &v5[32 * a5]);
          if (v10 != v5)
          {
            v20 = v5;
            do
            {
              std::string::operator=(v20, v7);
              *(v20 + 6) = *(v7 + 24);
              v7 += 32;
              v20 += 32;
            }

            while (v7 != v19);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 5);
      if (v12 >> 59)
      {
        sub_1794();
      }

      v13 = &a2[-v11];
      v14 = v9 - v11;
      if (v14 >> 4 > v12)
      {
        v12 = v14 >> 4;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFE0)
      {
        v15 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      v16 = v13 >> 5;
      v34 = a1;
      if (v15)
      {
        sub_19E39BC(a1, v15);
      }

      v31 = 0;
      v32 = 32 * v16;
      v33 = (32 * v16);
      sub_1E13198(&v31, a3, a5);
      v23 = v32;
      memcpy(v33, v5, a1[1] - v5);
      v24 = *a1;
      v25 = v32;
      *&v33 = v33 + a1[1] - v5;
      a1[1] = v5;
      v26 = v5 - v24;
      v27 = (v25 - (v5 - v24));
      memcpy(v27, v24, v26);
      v28 = *a1;
      *a1 = v27;
      v29 = a1[2];
      *(a1 + 1) = v33;
      *&v33 = v28;
      *(&v33 + 1) = v29;
      v31 = v28;
      v32 = v28;
      sub_1B4610C(&v31);
      return v23;
    }
  }

  return v5;
}

uint64_t sub_1E13118(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      *(v8 + 24) = *(v9 + 24);
      v9 += 32;
      v8 += 32;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1E1330C(&v12, a2, v7, v6);
}

void *sub_1E13198(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = 0;
    v7 = 32 * a3;
    v8 = v4 + 32 * a3;
    do
    {
      result = (v4 + v6);
      v9 = (a2 + v6);
      if (*(a2 + v6 + 23) < 0)
      {
        result = sub_325C(result, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        result[2] = *(v9 + 2);
        *result = v10;
      }

      *(v4 + v6 + 24) = *(a2 + v6 + 24);
      v6 += 32;
    }

    while (v7 != v6);
  }

  else
  {
    v8 = result[2];
  }

  v3[2] = v8;
  return result;
}

uint64_t sub_1E13240(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_325C(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        *(v4 + 16) = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      *(v4 + 24) = *(v6 + 6);
      v6 += 2;
      v4 = v8 + 32;
      v13 = v8 + 32;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_19E3AD0(v10);
  return v4;
}

uint64_t sub_1E1330C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7 - 32);
      if (*(a4 + v7 - 9) < 0)
      {
        operator delete(*v8);
      }

      v9 = (a3 + v7 - 32);
      v10 = *v9;
      *(a4 + v7 - 16) = *(a3 + v7 - 16);
      *v8 = v10;
      *(a3 + v7 - 9) = 0;
      *v9 = 0;
      *(a4 + v7 - 8) = *(a3 + v7 - 8);
      v7 -= 32;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t sub_1E133AC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_19E3F88(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  sub_1E12800(a1, 72 * v2, a2);
  v15 = 72 * v2 + 72;
  v7 = a1[1];
  v8 = 72 * v2 + *a1 - v7;
  sub_19E3FE4(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_19E4100(&v13);
  return v12;
}

void sub_1E134E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19E4100(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1E134F8(uint64_t a1, uint64_t *a2)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (a1 != a2)
  {
    sub_1E13584(a1, *a2, a2[1], 0x7D6343EB1A1F58D1 * ((a2[1] - *a2) >> 4));
  }

  return a1;
}

void sub_1E1356C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19E3210(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1E13584(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (0x7D6343EB1A1F58D1 * ((result[2] - *result) >> 4) < a4)
  {
    sub_19E4180(result);
    if (a4 <= 0x5397829CBC14E5)
    {
      v9 = 0xFAC687D6343EB1A2 * ((v7[2] - *v7) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x7D6343EB1A1F58D1 * ((v7[2] - *v7) >> 4)) >= 0x29CBC14E5E0A72)
      {
        v10 = 0x5397829CBC14E5;
      }

      else
      {
        v10 = v9;
      }

      sub_19E4268(v7, v10);
    }

    sub_1794();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (0x7D6343EB1A1F58D1 * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_19E7E60(v8, v6);
        v6 += 784;
        v8 += 784;
      }

      while (v6 != a3);
      v11 = v7[1];
    }

    while (v11 != v8)
    {
      v11 -= 784;
      result = sub_19D4CA4(v11);
    }

    v7[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        sub_19E7E60(v8, v14);
        v14 += 784;
        v8 += 784;
        v13 -= 784;
      }

      while (v13);
      v11 = v7[1];
    }

    result = sub_19E42B8(v7, v6 + v12, a3, v11);
    v7[1] = result;
  }

  return result;
}

int32x4_t sub_1E1372C(int32x4_t *a1, int32x4_t *a2)
{
  v2 = a1[1];
  *a1 = vaddq_s32(*a1, *a2);
  a1[1] = vaddq_s32(v2, a2[1]);
  v3 = a1[3];
  a1[2] = vaddq_s32(a1[2], a2[2]);
  result = vaddq_s32(v3, a2[3]);
  a1[3] = result;
  return result;
}

void sub_1E13768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_3608D0(&v1253, "AW");
  sub_3608D0(&v1250, "ABW");
  v1252 = 40;
  sub_195E43C(v1255, &v1253, &v1250);
  sub_3608D0(&v1248, "AF");
  sub_3608D0(&v1245, "AFG");
  v1247 = 41;
  sub_195E43C(&v1256, &v1248, &v1245);
  sub_3608D0(&v1243, "AO");
  sub_3608D0(&v1240, "AGO");
  v1242 = 42;
  sub_195E43C(&v1257, &v1243, &v1240);
  sub_3608D0(&v1238, "AI");
  sub_3608D0(&v1235, "AIA");
  v1237 = 43;
  sub_195E43C(&v1258, &v1238, &v1235);
  sub_3608D0(&v1233, "AX");
  sub_3608D0(&v1230, "ALA");
  v1232 = 246;
  sub_195E43C(&v1259, &v1233, &v1230);
  sub_3608D0(&v1228, "AL");
  sub_3608D0(&v1225, "ALB");
  v1227 = 76;
  sub_195E43C(&v1260, &v1228, &v1225);
  sub_3608D0(&v1223, "AD");
  sub_3608D0(&v1220, "AND");
  v1222 = 78;
  sub_195E43C(&v1261, &v1223, &v1220);
  sub_3608D0(&v1218, "AN");
  sub_3608D0(&v1215, "ANT");
  v1217 = 44;
  sub_195E43C(&v1262, &v1218, &v1215);
  sub_3608D0(&v1213, "AE");
  sub_3608D0(&v1210, "ARE");
  v1212 = 2;
  sub_195E43C(&v1263, &v1213, &v1210);
  sub_3608D0(&v1208, "AR");
  sub_3608D0(&v1205, "ARG");
  v1207 = 80;
  sub_195E43C(&v1264, &v1208, &v1205);
  sub_3608D0(&v1203, "AM");
  sub_3608D0(&v1200, "ARM");
  v1202 = 45;
  sub_195E43C(&v1265, &v1203, &v1200);
  sub_3608D0(&v1198, "AS");
  sub_3608D0(&v1195, "ASM");
  v1197 = 77;
  sub_195E43C(&v1266, &v1198, &v1195);
  sub_3608D0(&v1193, "AQ");
  sub_3608D0(&v1190, "ATA");
  v1192 = 46;
  sub_195E43C(&v1267, &v1193, &v1190);
  sub_3608D0(&v1188, "TF");
  sub_3608D0(&v1185, "ATF");
  v1187 = 125;
  sub_195E43C(&v1268, &v1188, &v1185);
  sub_3608D0(&v1183, "AG");
  sub_3608D0(&v1180, "ATG");
  v1182 = 79;
  sub_195E43C(&v1269, &v1183, &v1180);
  sub_3608D0(&v1178, "AU");
  sub_3608D0(&v1175, "AUS");
  v1177 = 22;
  sub_195E43C(&v1270, &v1178, &v1175);
  sub_3608D0(&v1173, "AT");
  sub_3608D0(&v1170, "AUT");
  v1172 = 81;
  sub_195E43C(&v1271, &v1173, &v1170);
  sub_3608D0(&v1168, "AZ");
  sub_3608D0(&v1165, "AZE");
  v1167 = 82;
  sub_195E43C(&v1272, &v1168, &v1165);
  sub_3608D0(&v1163, "BI");
  sub_3608D0(&v1160, "BDI");
  v1162 = 96;
  sub_195E43C(&v1273, &v1163, &v1160);
  sub_3608D0(&v1158, "BE");
  sub_3608D0(&v1155, "BEL");
  v1157 = 87;
  sub_195E43C(&v1274, &v1158, &v1155);
  sub_3608D0(&v1153, "BJ");
  sub_3608D0(&v1150, "BEN");
  v1152 = 3;
  sub_195E43C(&v1275, &v1153, &v1150);
  sub_3608D0(&v1148, "BQ");
  sub_3608D0(&v1145, "BES");
  v1147 = 248;
  sub_195E43C(&v1276, &v1148, &v1145);
  sub_3608D0(&v1143, "BF");
  sub_3608D0(&v1140, "BFA");
  v1142 = 11;
  sub_195E43C(&v1277, &v1143, &v1140);
  sub_3608D0(&v1138, "BD");
  sub_3608D0(&v1135, "BGD");
  v1137 = 84;
  sub_195E43C(&v1278, &v1138, &v1135);
  sub_3608D0(&v1133, "BG");
  sub_3608D0(&v1130, "BGR");
  v1132 = 95;
  sub_195E43C(&v1279, &v1133, &v1130);
  sub_3608D0(&v1128, "BH");
  sub_3608D0(&v1125, "BHR");
  v1127 = 12;
  sub_195E43C(&v1280, &v1128, &v1125);
  sub_3608D0(&v1123, "BS");
  sub_3608D0(&v1120, "BHS");
  v1122 = 83;
  sub_195E43C(&v1281, &v1123, &v1120);
  sub_3608D0(&v1118, "BA");
  sub_3608D0(&v1115, "BIH");
  v1117 = 92;
  sub_195E43C(&v1282, &v1118, &v1115);
  sub_3608D0(&v1113, "BL");
  sub_3608D0(&v1110, "BLM");
  v1112 = 237;
  sub_195E43C(&v1283, &v1113, &v1110);
  sub_3608D0(&v1108, "BY");
  sub_3608D0(&v1105, "BLR");
  v1107 = 86;
  sub_195E43C(&v1284, &v1108, &v1105);
  sub_3608D0(&v1103, "BZ");
  sub_3608D0(&v1100, "BLZ");
  v1102 = 88;
  sub_195E43C(&v1285, &v1103, &v1100);
  sub_3608D0(&v1098, "BM");
  sub_3608D0(&v1095, "BMU");
  v1097 = 89;
  sub_195E43C(&v1286, &v1098, &v1095);
  sub_3608D0(&v1093, "BO");
  sub_3608D0(&v1090, "BOL");
  v1092 = 91;
  sub_195E43C(&v1287, &v1093, &v1090);
  sub_3608D0(&v1088, "BR");
  sub_3608D0(&v1085, "BRA");
  v1087 = 25;
  sub_195E43C(&v1288, &v1088, &v1085);
  sub_3608D0(&v1083, "BB");
  sub_3608D0(&v1080, "BRB");
  v1082 = 85;
  sub_195E43C(&v1289, &v1083, &v1080);
  sub_3608D0(&v1078, "BN");
  sub_3608D0(&v1075, "BRN");
  v1077 = 94;
  sub_195E43C(&v1290, &v1078, &v1075);
  sub_3608D0(&v1073, "BT");
  sub_3608D0(&v1070, "BTN");
  v1072 = 90;
  sub_195E43C(&v1291, &v1073, &v1070);
  sub_3608D0(&v1068, "BV");
  sub_3608D0(&v1065, "BVT");
  v1067 = 245;
  sub_195E43C(&v1292, &v1068, &v1065);
  sub_3608D0(&v1063, "BW");
  sub_3608D0(&v1060, "BWA");
  v1062 = 93;
  sub_195E43C(&v1293, &v1063, &v1060);
  sub_3608D0(&v1058, "CF");
  sub_3608D0(&v1055, "CAF");
  v1057 = 63;
  sub_195E43C(&v1294, &v1058, &v1055);
  sub_3608D0(&v1053, "CA");
  sub_3608D0(&v1050, "CAN");
  v1052 = 98;
  sub_195E43C(&v1295, &v1053, &v1050);
  sub_3608D0(&v1048, "CC");
  sub_3608D0(&v1045, "CCK");
  v1047 = 47;
  sub_195E43C(&v1296, &v1048, &v1045);
  sub_3608D0(&v1043, "CH");
  sub_3608D0(&v1040, "CHE");
  v1042 = 211;
  sub_195E43C(&v1297, &v1043, &v1040);
  sub_3608D0(&v1038, "CL");
  sub_3608D0(&v1035, "CHL");
  v1037 = 102;
  sub_195E43C(&v1298, &v1038, &v1035);
  sub_3608D0(&v1033, "CN");
  sub_3608D0(&v1030, "CHN");
  v1032 = 4;
  sub_195E43C(&v1299, &v1033, &v1030);
  sub_3608D0(&v1028, "CI");
  sub_3608D0(&v1025, "CIV");
  v1027 = 26;
  sub_195E43C(&v1300, &v1028, &v1025);
  sub_3608D0(&v1023, "CM");
  sub_3608D0(&v1020, "CMR");
  v1022 = 27;
  sub_195E43C(&v1301, &v1023, &v1020);
  sub_3608D0(&v1018, "CD");
  sub_3608D0(&v1015, "COD");
  v1017 = 106;
  sub_195E43C(&v1302, &v1018, &v1015);
  sub_3608D0(&v1013, "CG");
  sub_3608D0(&v1010, "COG");
  v1012 = 105;
  sub_195E43C(&v1303, &v1013, &v1010);
  sub_3608D0(&v1008, "CK");
  sub_3608D0(&v1005, "COK");
  v1007 = 107;
  sub_195E43C(&v1304, &v1008, &v1005);
  sub_3608D0(&v1003, "CO");
  sub_3608D0(&v1000, "COL");
  v1002 = 28;
  sub_195E43C(&v1305, &v1003, &v1000);
  sub_3608D0(&v998, "KM");
  sub_3608D0(&v995, "COM");
  v997 = 104;
  sub_195E43C(&v1306, &v998, &v995);
  sub_3608D0(&v993, "CV");
  sub_3608D0(&v990, "CPV");
  v992 = 99;
  sub_195E43C(&v1307, &v993, &v990);
  sub_3608D0(&v988, "CR");
  sub_3608D0(&v985, "CRI");
  v987 = 13;
  sub_195E43C(&v1308, &v988, &v985);
  sub_3608D0(&v983, "CU");
  sub_3608D0(&v980, "CUB");
  v982 = 109;
  sub_195E43C(&v1309, &v983, &v980);
  sub_3608D0(&v978, "CW");
  sub_3608D0(&v975, "CUW");
  v977 = 247;
  sub_195E43C(&v1310, &v978, &v975);
  sub_3608D0(&v973, "CX");
  sub_3608D0(&v970, "CXR");
  v972 = 103;
  sub_195E43C(&v1311, &v973, &v970);
  sub_3608D0(&v968, "KY");
  sub_3608D0(&v965, "CYM");
  v967 = 100;
  sub_195E43C(&v1312, &v968, &v965);
  sub_3608D0(&v963, "CY");
  sub_3608D0(&v960, "CYP");
  v962 = 110;
  sub_195E43C(&v1313, &v963, &v960);
  sub_3608D0(&v958, "CZ");
  sub_3608D0(&v955, "CZE");
  v957 = 111;
  sub_195E43C(&v1314, &v958, &v955);
  sub_3608D0(&v953, "DE");
  sub_3608D0(&v950, "DEU");
  v952 = 129;
  sub_195E43C(&v1315, &v953, &v950);
  sub_3608D0(&v948, "DJ");
  sub_3608D0(&v945, "DJI");
  v947 = 113;
  sub_195E43C(&v1316, &v948, &v945);
  sub_3608D0(&v943, "DM");
  sub_3608D0(&v940, "DMA");
  v942 = 114;
  sub_195E43C(&v1317, &v943, &v940);
  sub_3608D0(&v938, "DK");
  sub_3608D0(&v935, "DNK");
  v937 = 112;
  sub_195E43C(&v1318, &v938, &v935);
  sub_3608D0(&v933, "DO");
  sub_3608D0(&v930, "DOM");
  v932 = 29;
  sub_195E43C(&v1319, &v933, &v930);
  sub_3608D0(&v928, "DZ");
  sub_3608D0(&v925, "DZA");
  v927 = 0;
  sub_195E43C(&v1320, &v928, &v925);
  sub_3608D0(&v923, "EC");
  sub_3608D0(&v920, "ECU");
  v922 = 30;
  sub_195E43C(&v1321, &v923, &v920);
  sub_3608D0(&v918, "EG");
  sub_3608D0(&v915, "EGY");
  v917 = 64;
  sub_195E43C(&v1322, &v918, &v915);
  sub_3608D0(&v913, "ER");
  sub_3608D0(&v910, "ERI");
  v912 = 116;
  sub_195E43C(&v1323, &v913, &v910);
  sub_3608D0(&v908, "EH");
  sub_3608D0(&v905, "ESH");
  v907 = 65;
  sub_195E43C(&v1324, &v908, &v905);
  sub_3608D0(&v903, "ES");
  sub_3608D0(&v900, "ESP");
  v902 = 206;
  sub_195E43C(&v1325, &v903, &v900);
  sub_3608D0(&v898, "EE");
  sub_3608D0(&v895, "EST");
  v897 = 117;
  sub_195E43C(&v1326, &v898, &v895);
  sub_3608D0(&v893, "ET");
  sub_3608D0(&v890, "ETH");
  v892 = 31;
  sub_195E43C(&v1327, &v893, &v890);
  sub_3608D0(&v888, "FI");
  sub_3608D0(&v885, "FIN");
  v887 = 121;
  sub_195E43C(&v1328, &v888, &v885);
  sub_3608D0(&v883, "FJ");
  sub_3608D0(&v880, "FJI");
  v882 = 120;
  sub_195E43C(&v1329, &v883, &v880);
  sub_3608D0(&v878, "FK");
  sub_3608D0(&v875, "FLK");
  v877 = 118;
  sub_195E43C(&v1330, &v878, &v875);
  sub_3608D0(&v873, "FR");
  sub_3608D0(&v870, "FRA");
  v872 = 122;
  sub_195E43C(&v1331, &v873, &v870);
  sub_3608D0(&v868, "FO");
  sub_3608D0(&v865, "FRO");
  v867 = 119;
  sub_195E43C(&v1332, &v868, &v865);
  sub_3608D0(&v863, "FM");
  sub_3608D0(&v860, "FSM");
  v862 = 166;
  sub_195E43C(&v1333, &v863, &v860);
  sub_3608D0(&v858, "GA");
  sub_3608D0(&v855, "GAB");
  v857 = 126;
  sub_195E43C(&v1334, &v858, &v855);
  sub_3608D0(&v853, "GB");
  sub_3608D0(&v850, "GBR");
  v852 = 225;
  sub_195E43C(&v1335, &v853, &v850);
  sub_3608D0(&v848, "GE");
  sub_3608D0(&v845, "GEO");
  v847 = 128;
  sub_195E43C(&v1336, &v848, &v845);
  sub_3608D0(&v843, "GG");
  sub_3608D0(&v840, "GGY");
  v842 = 256;
  sub_195E43C(&v1337, &v843, &v840);
  sub_3608D0(&v838, "GH");
  sub_3608D0(&v835, "GHA");
  v837 = 66;
  sub_195E43C(&v1338, &v838, &v835);
  sub_3608D0(&v833, "GI");
  sub_3608D0(&v830, "GIB");
  v832 = 67;
  sub_195E43C(&v1339, &v833, &v830);
  sub_3608D0(&v828, "GN");
  sub_3608D0(&v825, "GIN");
  v827 = 135;
  sub_195E43C(&v1340, &v828, &v825);
  sub_3608D0(&v823, "GP");
  sub_3608D0(&v820, "GLP");
  v822 = 133;
  sub_195E43C(&v1341, &v823, &v820);
  sub_3608D0(&v818, "GM");
  sub_3608D0(&v815, "GMB");
  v817 = 127;
  sub_195E43C(&v1342, &v818, &v815);
  sub_3608D0(&v813, "GW");
  sub_3608D0(&v810, "GNB");
  v812 = 68;
  sub_195E43C(&v1343, &v813, &v810);
  sub_3608D0(&v808, "GQ");
  sub_3608D0(&v805, "GNQ");
  v807 = 115;
  sub_195E43C(&v1344, &v808, &v805);
  sub_3608D0(&v803, "GR");
  sub_3608D0(&v800, "GRC");
  v802 = 130;
  sub_195E43C(&v1345, &v803, &v800);
  sub_3608D0(&v798, "GD");
  sub_3608D0(&v795, "GRD");
  v797 = 132;
  sub_195E43C(&v1346, &v798, &v795);
  sub_3608D0(&v793, "GL");
  sub_3608D0(&v790, "GRL");
  v792 = 131;
  sub_195E43C(&v1347, &v793, &v790);
  sub_3608D0(&v788, "GT");
  sub_3608D0(&v785, "GTM");
  v787 = 32;
  sub_195E43C(&v1348, &v788, &v785);
  sub_3608D0(&v783, "GF");
  sub_3608D0(&v780, "GUF");
  v782 = 123;
  sub_195E43C(&v1349, &v783, &v780);
  sub_3608D0(&v778, "GU");
  sub_3608D0(&v775, "GUM");
  v777 = 134;
  sub_195E43C(&v1350, &v778, &v775);
  sub_3608D0(&v773, "GY");
  sub_3608D0(&v770, "GUY");
  v772 = 136;
  sub_195E43C(&v1351, &v773, &v770);
  sub_3608D0(&v768, "HK");
  sub_3608D0(&v765, "HKG");
  v767 = 5;
  sub_195E43C(&v1352, &v768, &v765);
  sub_3608D0(&v763, "HM");
  sub_3608D0(&v760, "HMD");
  v762 = 240;
  sub_195E43C(&v1353, &v763, &v760);
  sub_3608D0(&v758, "HN");
  sub_3608D0(&v755, "HND");
  v757 = 14;
  sub_195E43C(&v1354, &v758, &v755);
  sub_3608D0(&v753, "HR");
  sub_3608D0(&v750, "HRV");
  v752 = 108;
  sub_195E43C(&v1355, &v753, &v750);
  sub_3608D0(&v748, "HT");
  sub_3608D0(&v745, "HTI");
  v747 = 137;
  sub_195E43C(&v1356, &v748, &v745);
  sub_3608D0(&v743, "HU");
  sub_3608D0(&v740, "HUN");
  v742 = 138;
  sub_195E43C(&v1357, &v743, &v740);
  sub_3608D0(&v738, "ID");
  sub_3608D0(&v735, "IDN");
  v737 = 69;
  sub_195E43C(&v1358, &v738, &v735);
  sub_3608D0(&v733, "IM");
  sub_3608D0(&v730, "IMN");
  v732 = 255;
  sub_195E43C(&v1359, &v733, &v730);
  sub_3608D0(&v728, "IN");
  sub_3608D0(&v725, "IND");
  v727 = 140;
  sub_195E43C(&v1360, &v728, &v725);
  sub_3608D0(&v723, "IO");
  sub_3608D0(&v720, "IOT");
  v722 = 48;
  sub_195E43C(&v1361, &v723, &v720);
  sub_3608D0(&v718, "IE");
  sub_3608D0(&v715, "IRL");
  v717 = 143;
  sub_195E43C(&v1362, &v718, &v715);
  sub_3608D0(&v713, "IR");
  sub_3608D0(&v710, "IRN");
  v712 = 141;
  sub_195E43C(&v1363, &v713, &v710);
  sub_3608D0(&v708, "IQ");
  sub_3608D0(&v705, "IRQ");
  v707 = 142;
  sub_195E43C(&v1364, &v708, &v705);
  sub_3608D0(&v703, "IS");
  sub_3608D0(&v700, "ISL");
  v702 = 139;
  sub_195E43C(&v1365, &v703, &v700);
  sub_3608D0(&v698, "IL");
  sub_3608D0(&v695, "ISR");
  v697 = 75;
  sub_195E43C(&v1366, &v698, &v695);
  sub_3608D0(&v693, "IT");
  sub_3608D0(&v690, "ITA");
  v692 = 144;
  sub_195E43C(&v1367, &v693, &v690);
  sub_3608D0(&v688, "JM");
  sub_3608D0(&v685, "JAM");
  v687 = 15;
  sub_195E43C(&v1368, &v688, &v685);
  sub_3608D0(&v683, "JE");
  sub_3608D0(&v680, "JEY");
  v682 = 254;
  sub_195E43C(&v1369, &v683, &v680);
  sub_3608D0(&v678, "JO");
  sub_3608D0(&v675, "JOR");
  v677 = 33;
  sub_195E43C(&v1370, &v678, &v675);
  sub_3608D0(&v673, "JP");
  sub_3608D0(&v670, "JPN");
  v672 = 10;
  sub_195E43C(&v1371, &v673, &v670);
  sub_3608D0(&v668, "KZ");
  sub_3608D0(&v665, "KAZ");
  v667 = 145;
  sub_195E43C(&v1372, &v668, &v665);
  sub_3608D0(&v663, "KE");
  sub_3608D0(&v660, "KEN");
  v662 = 34;
  sub_195E43C(&v1373, &v663, &v660);
  sub_3608D0(&v658, "KG");
  sub_3608D0(&v655, "KGZ");
  v657 = 149;
  sub_195E43C(&v1374, &v658, &v655);
  sub_3608D0(&v653, "KH");
  sub_3608D0(&v650, "KHM");
  v652 = 97;
  sub_195E43C(&v1375, &v653, &v650);
  sub_3608D0(&v648, "KI");
  sub_3608D0(&v645, "KIR");
  v647 = 146;
  sub_195E43C(&v1376, &v648, &v645);
  sub_3608D0(&v643, "KN");
  sub_3608D0(&v640, "KNA");
  v642 = 193;
  sub_195E43C(&v1377, &v643, &v640);
  sub_3608D0(&v638, "KR");
  sub_3608D0(&v635, "KOR");
  v637 = 148;
  sub_195E43C(&v1378, &v638, &v635);
  sub_3608D0(&v633, "KW");
  sub_3608D0(&v630, "KWT");
  v632 = 16;
  sub_195E43C(&v1379, &v633, &v630);
  sub_3608D0(&v628, "LA");
  sub_3608D0(&v625, "LAO");
  v627 = 150;
  sub_195E43C(&v1380, &v628, &v625);
  sub_3608D0(&v623, "LB");
  sub_3608D0(&v620, "LBN");
  v622 = 152;
  sub_195E43C(&v1381, &v623, &v620);
  sub_3608D0(&v618, "LR");
  sub_3608D0(&v615, "LBR");
  v617 = 153;
  sub_195E43C(&v1382, &v618, &v615);
  sub_3608D0(&v613, "LY");
  sub_3608D0(&v610, "LBY");
  v612 = 154;
  sub_195E43C(&v1383, &v613, &v610);
  sub_3608D0(&v608, "LC");
  sub_3608D0(&v605, "LCA");
  v607 = 194;
  sub_195E43C(&v1384, &v608, &v605);
  sub_3608D0(&v603, "LI");
  sub_3608D0(&v600, "LIE");
  v602 = 70;
  sub_195E43C(&v1385, &v603, &v600);
  sub_3608D0(&v598, "LK");
  sub_3608D0(&v595, "LKA");
  v597 = 207;
  sub_195E43C(&v1386, &v598, &v595);
  sub_3608D0(&v593, "LS");
  sub_3608D0(&v590, "LSO");
  v592 = 49;
  sub_195E43C(&v1387, &v593, &v590);
  sub_3608D0(&v588, "LT");
  sub_3608D0(&v585, "LTU");
  v587 = 155;
  sub_195E43C(&v1388, &v588, &v585);
  sub_3608D0(&v583, "LU");
  sub_3608D0(&v580, "LUX");
  v582 = 156;
  sub_195E43C(&v1389, &v583, &v580);
  sub_3608D0(&v578, "LV");
  sub_3608D0(&v575, "LVA");
  v577 = 151;
  sub_195E43C(&v1390, &v578, &v575);
  sub_3608D0(&v573, "MO");
  sub_3608D0(&v570, "MAC");
  v572 = 157;
  sub_195E43C(&v1391, &v573, &v570);
  sub_3608D0(&v568, "MF");
  sub_3608D0(&v565, "MAF");
  v567 = 236;
  sub_195E43C(&v1392, &v568, &v565);
  sub_3608D0(&v563, "MA");
  sub_3608D0(&v560, "MAR");
  v562 = 171;
  sub_195E43C(&v1393, &v563, &v560);
  sub_3608D0(&v558, "MC");
  sub_3608D0(&v555, "MCO");
  v557 = 71;
  sub_195E43C(&v1394, &v558, &v555);
  sub_3608D0(&v553, "MD");
  sub_3608D0(&v550, "MDA");
  v552 = 167;
  sub_195E43C(&v1395, &v553, &v550);
  sub_3608D0(&v548, "MG");
  sub_3608D0(&v545, "MDG");
  v547 = 159;
  sub_195E43C(&v1396, &v548, &v545);
  sub_3608D0(&v543, "MV");
  sub_3608D0(&v540, "MDV");
  v542 = 50;
  sub_195E43C(&v1397, &v543, &v540);
  sub_3608D0(&v538, "MX");
  sub_3608D0(&v535, "MEX");
  v537 = 165;
  sub_195E43C(&v1398, &v538, &v535);
  sub_3608D0(&v533, "MH");
  sub_3608D0(&v530, "MHL");
  v532 = 51;
  sub_195E43C(&v1399, &v533, &v530);
  sub_3608D0(&v528, "MK");
  sub_3608D0(&v525, "MKD");
  v527 = 158;
  sub_195E43C(&v1400, &v528, &v525);
  sub_3608D0(&v523, "ML");
  sub_3608D0(&v520, "MLI");
  v522 = 17;
  sub_195E43C(&v1401, &v523, &v520);
  sub_3608D0(&v518, "MT");
  sub_3608D0(&v515, "MLT");
  v517 = 162;
  sub_195E43C(&v1402, &v518, &v515);
  sub_3608D0(&v513, "MM");
  sub_3608D0(&v510, "MMR");
  v512 = 173;
  sub_195E43C(&v1403, &v513, &v510);
  sub_3608D0(&v508, "ME");
  sub_3608D0(&v505, "MNE");
  v507 = 169;
  sub_195E43C(&v1404, &v508, &v505);
  sub_3608D0(&v503, "MN");
  sub_3608D0(&v500, "MNG");
  v502 = 168;
  sub_195E43C(&v1405, &v503, &v500);
  sub_3608D0(&v498, "MP");
  sub_3608D0(&v495, "MNP");
  v497 = 179;
  sub_195E43C(&v1406, &v498, &v495);
  sub_3608D0(&v493, "MZ");
  sub_3608D0(&v490, "MOZ");
  v492 = 172;
  sub_195E43C(&v1407, &v493, &v490);
  sub_3608D0(&v488, "MR");
  sub_3608D0(&v485, "MRT");
  v487 = 163;
  sub_195E43C(&v1408, &v488, &v485);
  sub_3608D0(&v483, "MS");
  sub_3608D0(&v480, "MSR");
  v482 = 170;
  sub_195E43C(&v1409, &v483, &v480);
  sub_3608D0(&v478, "MQ");
  sub_3608D0(&v475, "MTQ");
  v477 = 52;
  sub_195E43C(&v1410, &v478, &v475);
  sub_3608D0(&v473, "MU");
  sub_3608D0(&v470, "MUS");
  v472 = 164;
  sub_195E43C(&v1411, &v473, &v470);
  sub_3608D0(&v468, "MW");
  sub_3608D0(&v465, "MWI");
  v467 = 160;
  sub_195E43C(&v1412, &v468, &v465);
  sub_3608D0(&v463, "MY");
  sub_3608D0(&v460, "MYS");
  v462 = 161;
  sub_195E43C(&v1413, &v463, &v460);
  sub_3608D0(&v458, "YT");
  sub_3608D0(&v455, "MYT");
  v457 = 53;
  sub_195E43C(&v1414, &v458, &v455);
  sub_3608D0(&v453, "NA");
  sub_3608D0(&v450, "NAM");
  v452 = 174;
  sub_195E43C(&v1415, &v453, &v450);
  sub_3608D0(&v448, "NC");
  sub_3608D0(&v445, "NCL");
  v447 = 177;
  sub_195E43C(&v1416, &v448, &v445);
  sub_3608D0(&v443, "NE");
  sub_3608D0(&v440, "NER");
  v442 = 35;
  sub_195E43C(&v1417, &v443, &v440);
  sub_3608D0(&v438, "NF");
  sub_3608D0(&v435, "NFK");
  v437 = 23;
  sub_195E43C(&v1418, &v438, &v435);
  sub_3608D0(&v433, "NG");
  sub_3608D0(&v430, "NGA");
  v432 = 6;
  sub_195E43C(&v1419, &v433, &v430);
  sub_3608D0(&v428, "NI");
  sub_3608D0(&v425, "NIC");
  v427 = 18;
  sub_195E43C(&v1420, &v428, &v425);
  sub_3608D0(&v423, "NU");
  sub_3608D0(&v420, "NIU");
  v422 = 178;
  sub_195E43C(&v1421, &v423, &v420);
  sub_3608D0(&v418, "NL");
  sub_3608D0(&v415, "NLD");
  v417 = 176;
  sub_195E43C(&v1422, &v418, &v415);
  sub_3608D0(&v413, "NO");
  sub_3608D0(&v410, "NOR");
  v412 = 180;
  sub_195E43C(&v1423, &v413, &v410);
  sub_3608D0(&v408, "NP");
  sub_3608D0(&v405, "NPL");
  v407 = 175;
  sub_195E43C(&v1424, &v408, &v405);
  sub_3608D0(&v403, "NR");
  sub_3608D0(&v400, "NRU");
  v402 = 54;
  sub_195E43C(&v1425, &v403, &v400);
  sub_3608D0(&v398, "NZ");
  sub_3608D0(&v395, "NZL");
  v397 = 24;
  sub_195E43C(&v1426, &v398, &v395);
  sub_3608D0(&v393, "OM");
  sub_3608D0(&v390, "OMN");
  v392 = 7;
  sub_195E43C(&v1427, &v393, &v390);
  sub_3608D0(&v388, "PA");
  sub_3608D0(&v385, "PAN");
  v387 = 19;
  sub_195E43C(&v1428, &v388, &v385);
  sub_3608D0(&v383, "PE");
  sub_3608D0(&v380, "PER");
  v382 = 184;
  sub_195E43C(&v1429, &v383, &v380);
  sub_3608D0(&v378, "PF");
  sub_3608D0(&v375, "PYF");
  v377 = 124;
  sub_195E43C(&v1430, &v378, &v375);
  sub_3608D0(&v373, "PG");
  sub_3608D0(&v370, "PNG");
  v372 = 56;
  sub_195E43C(&v1431, &v373, &v370);
  sub_3608D0(&v368, "PH");
  sub_3608D0(&v365, "PHL");
  v367 = 185;
  sub_195E43C(&v1432, &v368, &v365);
  sub_3608D0(&v363, "PK");
  sub_3608D0(&v360, "PAK");
  v362 = 181;
  sub_195E43C(&v1433, &v363, &v360);
  sub_3608D0(&v358, "PL");
  sub_3608D0(&v355, "POL");
  v357 = 186;
  sub_195E43C(&v1434, &v358, &v355);
  sub_3608D0(&v353, "PM");
  sub_3608D0(&v350, "SPM");
  v352 = 241;
  sub_195E43C(&v1435, &v353, &v350);
  sub_3608D0(&v348, "PN");
  sub_3608D0(&v345, "PCN");
  v347 = 55;
  sub_195E43C(&v1436, &v348, &v345);
  sub_3608D0(&v343, "PR");
  sub_3608D0(&v340, "PRI");
  v342 = 253;
  sub_195E43C(&v1437, &v343, &v340);
  sub_3608D0(&v338, "PS");
  sub_3608D0(&v335, "PSE");
  v337 = 36;
  sub_195E43C(&v1438, &v338, &v335);
  sub_3608D0(&v333, "PT");
  sub_3608D0(&v330, "PRT");
  v332 = 187;
  sub_195E43C(&v1439, &v333, &v330);
  sub_3608D0(&v328, "PW");
  sub_3608D0(&v325, "PLW");
  v327 = 182;
  sub_195E43C(&v1440, &v328, &v325);
  sub_3608D0(&v323, "PY");
  sub_3608D0(&v320, "PRY");
  v322 = 183;
  sub_195E43C(&v1441, &v323, &v320);
  sub_3608D0(&v318, "QA");
  sub_3608D0(&v315, "QAT");
  v317 = 8;
  sub_195E43C(&v1442, &v318, &v315);
  sub_3608D0(&v313, "RE");
  sub_3608D0(&v310, "REU");
  v312 = 188;
  sub_195E43C(&v1443, &v313, &v310);
  sub_3608D0(&v308, "RO");
  sub_3608D0(&v305, "ROU");
  v307 = 189;
  sub_195E43C(&v1444, &v308, &v305);
  sub_3608D0(&v303, "RS");
  sub_3608D0(&v300, "SRB");
  v302 = 199;
  sub_195E43C(&v1445, &v303, &v300);
  sub_3608D0(&v298, "RU");
  sub_3608D0(&v295, "RUS");
  v297 = 190;
  sub_195E43C(&v1446, &v298, &v295);
  sub_3608D0(&v293, "RW");
  sub_3608D0(&v290, "RWA");
  v292 = 191;
  sub_195E43C(&v1447, &v293, &v290);
  sub_3608D0(&v288, "SA");
  sub_3608D0(&v285, "SAU");
  v287 = 20;
  sub_195E43C(&v1448, &v288, &v285);
  sub_3608D0(&v283, "SB");
  sub_3608D0(&v280, "SLB");
  v282 = 58;
  sub_195E43C(&v1449, &v283, &v280);
  sub_3608D0(&v278, "SC");
  sub_3608D0(&v275, "SYC");
  v277 = 200;
  sub_195E43C(&v1450, &v278, &v275);
  sub_3608D0(&v273, "SD");
  sub_3608D0(&v270, "SDN");
  v272 = 208;
  sub_195E43C(&v1451, &v273, &v270);
  sub_3608D0(&v268, "SE");
  sub_3608D0(&v265, "SWE");
  v267 = 210;
  sub_195E43C(&v1452, &v268, &v265);
  sub_3608D0(&v263, "SG");
  sub_3608D0(&v260, "SGP");
  v262 = 202;
  sub_195E43C(&v1453, &v263, &v260);
  sub_3608D0(&v258, "SH");
  sub_3608D0(&v255, "SHN");
  v257 = 192;
  sub_195E43C(&v1454, &v258, &v255);
  sub_3608D0(&v253, "SI");
  sub_3608D0(&v250, "SVN");
  v252 = 204;
  sub_195E43C(&v1455, &v253, &v250);
  sub_3608D0(&v248, "SJ");
  sub_3608D0(&v245, "SJM");
  v247 = 72;
  sub_195E43C(&v1456, &v248, &v245);
  sub_3608D0(&v243, "SK");
  sub_3608D0(&v240, "SVK");
  v242 = 203;
  sub_195E43C(&v1457, &v243, &v240);
  sub_3608D0(&v238, "SL");
  sub_3608D0(&v235, "SLE");
  v237 = 201;
  sub_195E43C(&v1458, &v238, &v235);
  sub_3608D0(&v233, "SM");
  sub_3608D0(&v230, "SMR");
  v232 = 197;
  sub_195E43C(&v1459, &v233, &v230);
  sub_3608D0(&v228, "SN");
  sub_3608D0(&v225, "SEN");
  v227 = 37;
  sub_195E43C(&v1460, &v228, &v225);
  sub_3608D0(&v223, "SO");
  sub_3608D0(&v220, "SOM");
  v222 = 205;
  sub_195E43C(&v1461, &v223, &v220);
  sub_3608D0(&v218, "SR");
  sub_3608D0(&v215, "SUR");
  v217 = 209;
  sub_195E43C(&v1462, &v218, &v215);
  sub_3608D0(&v213, "SS");
  sub_3608D0(&v210, "SSD");
  v212 = 243;
  sub_195E43C(&v1463, &v213, &v210);
  sub_3608D0(&v208, "ST");
  sub_3608D0(&v205, "STP");
  v207 = 198;
  sub_195E43C(&v1464, &v208, &v205);
  sub_3608D0(&v203, "SV");
  sub_3608D0(&v200, "SLV");
  v202 = 21;
  sub_195E43C(&v1465, &v203, &v200);
  sub_3608D0(&v198, "SX");
  sub_3608D0(&v195, "SXM");
  v197 = 234;
  sub_195E43C(&v1466, &v198, &v195);
  sub_3608D0(&v193, "SY");
  sub_3608D0(&v190, "SYR");
  v192 = 212;
  sub_195E43C(&v1467, &v193, &v190);
  sub_3608D0(&v188, "SZ");
  sub_3608D0(&v185, "SWZ");
  v187 = 59;
  sub_195E43C(&v1468, &v188, &v185);
  sub_3608D0(&v183, "TC");
  sub_3608D0(&v180, "TCA");
  v182 = 222;
  sub_195E43C(&v1469, &v183, &v180);
  sub_3608D0(&v178, "TD");
  sub_3608D0(&v175, "TCD");
  v177 = 101;
  sub_195E43C(&v1470, &v178, &v175);
  sub_3608D0(&v173, "TF");
  sub_3608D0(&v170, "ATF");
  v172 = 125;
  sub_195E43C(&v1471, &v173, &v170);
  sub_3608D0(&v168, "TG");
  sub_3608D0(&v165, "TGO");
  v167 = 216;
  sub_195E43C(&v1472, &v168, &v165);
  sub_3608D0(&v163, "TH");
  sub_3608D0(&v160, "THA");
  v162 = 214;
  sub_195E43C(&v1473, &v163, &v160);
  sub_3608D0(&v158, "TJ");
  sub_3608D0(&v155, "TJK");
  v157 = 213;
  sub_195E43C(&v1474, &v158, &v155);
  sub_3608D0(&v153, "TK");
  sub_3608D0(&v150, "TKL");
  v152 = 244;
  sub_195E43C(&v1475, &v153, &v150);
  sub_3608D0(&v148, "TL");
  sub_3608D0(&v145, "TLS");
  v147 = 215;
  sub_195E43C(&v1476, &v148, &v145);
  sub_3608D0(&v143, "TM");
  sub_3608D0(&v140, "TKM");
  v142 = 221;
  sub_195E43C(&v1477, &v143, &v140);
  sub_3608D0(&v138, "TN");
  sub_3608D0(&v135, "TUN");
  v137 = 219;
  sub_195E43C(&v1478, &v138, &v135);
  sub_3608D0(&v133, "TO");
  sub_3608D0(&v130, "TON");
  v132 = 217;
  sub_195E43C(&v1479, &v133, &v130);
  sub_3608D0(&v128, "TR");
  sub_3608D0(&v125, "TUR");
  v127 = 220;
  sub_195E43C(&v1480, &v128, &v125);
  sub_3608D0(&v123, "TT");
  sub_3608D0(&v120, "TTO");
  v122 = 218;
  sub_195E43C(&v1481, &v123, &v120);
  sub_3608D0(&v118, "TV");
  sub_3608D0(&v115, "TUV");
  v117 = 60;
  sub_195E43C(&v1482, &v118, &v115);
  sub_3608D0(&v113, "TZ");
  sub_3608D0(&v110, "TZA");
  v112 = 38;
  sub_195E43C(&v1483, &v113, &v110);
  sub_3608D0(&v108, "UA");
  sub_3608D0(&v105, "UKR");
  v107 = 224;
  sub_195E43C(&v1484, &v108, &v105);
  sub_3608D0(&v103, "UG");
  sub_3608D0(&v100, "UGA");
  v102 = 223;
  sub_195E43C(&v1485, &v103, &v100);
  sub_3608D0(&v98, "UM");
  sub_3608D0(&v95, "UMI");
  v97 = 251;
  sub_195E43C(&v1486, &v98, &v95);
  sub_3608D0(&v93, "US");
  sub_3608D0(&v90, "USA");
  v92 = 226;
  sub_195E43C(&v1487, &v93, &v90);
  sub_3608D0(&v88, "UY");
  sub_3608D0(&v85, "URY");
  v87 = 1;
  sub_195E43C(&v1488, &v88, &v85);
  sub_3608D0(&v83, "UZ");
  sub_3608D0(&v80, "UZB");
  v82 = 227;
  sub_195E43C(&v1489, &v83, &v80);
  sub_3608D0(&v78, "VA");
  sub_3608D0(&v75, "VAT");
  v77 = 74;
  sub_195E43C(&v1490, &v78, &v75);
  sub_3608D0(&v73, "VC");
  sub_3608D0(&v70, "VCT");
  v72 = 195;
  sub_195E43C(&v1491, &v73, &v70);
  sub_3608D0(&v68, "VE");
  sub_3608D0(&v65, "VEN");
  v67 = 39;
  sub_195E43C(&v1492, &v68, &v65);
  sub_3608D0(&v63, "VG");
  sub_3608D0(&v60, "VGB");
  v62 = 229;
  sub_195E43C(&v1493, &v63, &v60);
  sub_3608D0(&v58, "VI");
  sub_3608D0(&v55, "VIR");
  v57 = 242;
  sub_195E43C(&v1494, &v58, &v55);
  sub_3608D0(&v53, "VN");
  sub_3608D0(&v50, "VNM");
  v52 = 9;
  sub_195E43C(&v1495, &v53, &v50);
  sub_3608D0(&v48, "VU");
  sub_3608D0(&v45, "VUT");
  v47 = 228;
  sub_195E43C(&v1496, &v48, &v45);
  sub_3608D0(&v43, "WF");
  sub_3608D0(&v40, "WLF");
  v42 = 230;
  sub_195E43C(&v1497, &v43, &v40);
  sub_3608D0(&v38, "WS");
  sub_3608D0(&v35, "WSM");
  v37 = 196;
  sub_195E43C(&v1498, &v38, &v35);
  sub_3608D0(&v33, "YE");
  sub_3608D0(&v30, "YEM");
  v32 = 231;
  sub_195E43C(&v1499, &v33, &v30);
  sub_3608D0(&v28, "YT");
  sub_3608D0(&v25, "MYT");
  v27 = 53;
  sub_195E43C(&v1500, &v28, &v25);
  sub_3608D0(&v23, "ZA");
  sub_3608D0(v20, "ZAF");
  v22 = 62;
  sub_195E43C(&v1501, &v23, v20);
  sub_3608D0(v18, "ZM");
  sub_3608D0(v15, "ZMB");
  v17 = 232;
  sub_195E43C(&v1502, v18, v15);
  sub_3608D0(v13, "ZW");
  sub_3608D0(__p, "ZWE");
  v12 = 233;
  sub_195E43C(&v1503, v13, __p);
  sub_1966280(qword_27EFCC0, v1255, 249);
  v8 = &v1504;
  v9 = -13944;
  do
  {
    if (*v8 < 0)
    {
      operator delete(*(v8 - 23));
    }

    if (*(v8 - 24) < 0)
    {
      operator delete(*(v8 - 47));
    }

    v8 -= 56;
    v9 += 56;
  }

  while (v9);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (v49 < 0)
  {
    operator delete(v48);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v54 < 0)
  {
    operator delete(v53);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  if (v59 < 0)
  {
    operator delete(v58);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }

  if (v66 < 0)
  {
    operator delete(v65);
  }

  if (v69 < 0)
  {
    operator delete(v68);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  if (v74 < 0)
  {
    operator delete(v73);
  }

  if (v76 < 0)
  {
    operator delete(v75);
  }

  if (v79 < 0)
  {
    operator delete(v78);
  }

  if (v81 < 0)
  {
    operator delete(v80);
  }

  if (v84 < 0)
  {
    operator delete(v83);
  }

  if (v86 < 0)
  {
    operator delete(v85);
  }

  if (v89 < 0)
  {
    operator delete(v88);
  }

  if (v91 < 0)
  {
    operator delete(v90);
  }

  if (v94 < 0)
  {
    operator delete(v93);
  }

  if (v96 < 0)
  {
    operator delete(v95);
  }

  if (v99 < 0)
  {
    operator delete(v98);
  }

  if (v101 < 0)
  {
    operator delete(v100);
  }

  if (v104 < 0)
  {
    operator delete(v103);
  }

  if (v106 < 0)
  {
    operator delete(v105);
  }

  if (v109 < 0)
  {
    operator delete(v108);
  }

  if (v111 < 0)
  {
    operator delete(v110);
  }

  if (v114 < 0)
  {
    operator delete(v113);
  }

  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (v119 < 0)
  {
    operator delete(v118);
  }

  if (v121 < 0)
  {
    operator delete(v120);
  }

  if (v124 < 0)
  {
    operator delete(v123);
  }

  if (v126 < 0)
  {
    operator delete(v125);
  }

  if (v129 < 0)
  {
    operator delete(v128);
  }

  if (v131 < 0)
  {
    operator delete(v130);
  }

  if (v134 < 0)
  {
    operator delete(v133);
  }

  if (v136 < 0)
  {
    operator delete(v135);
  }

  if (v139 < 0)
  {
    operator delete(v138);
  }

  if (v141 < 0)
  {
    operator delete(v140);
  }

  if (v144 < 0)
  {
    operator delete(v143);
  }

  if (v146 < 0)
  {
    operator delete(v145);
  }

  if (v149 < 0)
  {
    operator delete(v148);
  }

  if (v151 < 0)
  {
    operator delete(v150);
  }

  if (v154 < 0)
  {
    operator delete(v153);
  }

  if (v156 < 0)
  {
    operator delete(v155);
  }

  if (v159 < 0)
  {
    operator delete(v158);
  }

  if (v161 < 0)
  {
    operator delete(v160);
  }

  if (v164 < 0)
  {
    operator delete(v163);
  }

  if (v166 < 0)
  {
    operator delete(v165);
  }

  if (v169 < 0)
  {
    operator delete(v168);
  }

  if (v171 < 0)
  {
    operator delete(v170);
  }

  if (v174 < 0)
  {
    operator delete(v173);
  }

  if (v176 < 0)
  {
    operator delete(v175);
  }

  if (v179 < 0)
  {
    operator delete(v178);
  }

  if (v181 < 0)
  {
    operator delete(v180);
  }

  if (v184 < 0)
  {
    operator delete(v183);
  }

  if (v186 < 0)
  {
    operator delete(v185);
  }

  if (v189 < 0)
  {
    operator delete(v188);
  }

  if (v191 < 0)
  {
    operator delete(v190);
  }

  if (v194 < 0)
  {
    operator delete(v193);
  }

  if (v196 < 0)
  {
    operator delete(v195);
  }

  if (v199 < 0)
  {
    operator delete(v198);
  }

  if (v201 < 0)
  {
    operator delete(v200);
  }

  if (v204 < 0)
  {
    operator delete(v203);
  }

  if (v206 < 0)
  {
    operator delete(v205);
  }

  if (v209 < 0)
  {
    operator delete(v208);
  }

  if (v211 < 0)
  {
    operator delete(v210);
  }

  if (v214 < 0)
  {
    operator delete(v213);
  }

  if (v216 < 0)
  {
    operator delete(v215);
  }

  if (v219 < 0)
  {
    operator delete(v218);
  }

  if (v221 < 0)
  {
    operator delete(v220);
  }

  if (v224 < 0)
  {
    operator delete(v223);
  }

  if (v226 < 0)
  {
    operator delete(v225);
  }

  if (v229 < 0)
  {
    operator delete(v228);
  }

  if (v231 < 0)
  {
    operator delete(v230);
  }

  if (v234 < 0)
  {
    operator delete(v233);
  }

  if (v236 < 0)
  {
    operator delete(v235);
  }

  if (v239 < 0)
  {
    operator delete(v238);
  }

  if (v241 < 0)
  {
    operator delete(v240);
  }

  if (v244 < 0)
  {
    operator delete(v243);
  }

  if (v246 < 0)
  {
    operator delete(v245);
  }

  if (v249 < 0)
  {
    operator delete(v248);
  }

  if (v251 < 0)
  {
    operator delete(v250);
  }

  if (v254 < 0)
  {
    operator delete(v253);
  }

  if (v256 < 0)
  {
    operator delete(v255);
  }

  if (v259 < 0)
  {
    operator delete(v258);
  }

  if (v261 < 0)
  {
    operator delete(v260);
  }

  if (v264 < 0)
  {
    operator delete(v263);
  }

  if (v266 < 0)
  {
    operator delete(v265);
  }

  if (v269 < 0)
  {
    operator delete(v268);
  }

  if (v271 < 0)
  {
    operator delete(v270);
  }

  if (v274 < 0)
  {
    operator delete(v273);
  }

  if (v276 < 0)
  {
    operator delete(v275);
  }

  if (v279 < 0)
  {
    operator delete(v278);
  }

  if (v281 < 0)
  {
    operator delete(v280);
  }

  if (v284 < 0)
  {
    operator delete(v283);
  }

  if (v286 < 0)
  {
    operator delete(v285);
  }

  if (v289 < 0)
  {
    operator delete(v288);
  }

  if (v291 < 0)
  {
    operator delete(v290);
  }

  if (v294 < 0)
  {
    operator delete(v293);
  }

  if (v296 < 0)
  {
    operator delete(v295);
  }

  if (v299 < 0)
  {
    operator delete(v298);
  }

  if (v301 < 0)
  {
    operator delete(v300);
  }

  if (v304 < 0)
  {
    operator delete(v303);
  }

  if (v306 < 0)
  {
    operator delete(v305);
  }

  if (v309 < 0)
  {
    operator delete(v308);
  }

  if (v311 < 0)
  {
    operator delete(v310);
  }

  if (v314 < 0)
  {
    operator delete(v313);
  }

  if (v316 < 0)
  {
    operator delete(v315);
  }

  if (v319 < 0)
  {
    operator delete(v318);
  }

  if (v321 < 0)
  {
    operator delete(v320);
  }

  if (v324 < 0)
  {
    operator delete(v323);
  }

  if (v326 < 0)
  {
    operator delete(v325);
  }

  if (v329 < 0)
  {
    operator delete(v328);
  }

  if (v331 < 0)
  {
    operator delete(v330);
  }

  if (v334 < 0)
  {
    operator delete(v333);
  }

  if (v336 < 0)
  {
    operator delete(v335);
  }

  if (v339 < 0)
  {
    operator delete(v338);
  }

  if (v341 < 0)
  {
    operator delete(v340);
  }

  if (v344 < 0)
  {
    operator delete(v343);
  }

  if (v346 < 0)
  {
    operator delete(v345);
  }

  if (v349 < 0)
  {
    operator delete(v348);
  }

  if (v351 < 0)
  {
    operator delete(v350);
  }

  if (v354 < 0)
  {
    operator delete(v353);
  }

  if (v356 < 0)
  {
    operator delete(v355);
  }

  if (v359 < 0)
  {
    operator delete(v358);
  }

  if (v361 < 0)
  {
    operator delete(v360);
  }

  if (v364 < 0)
  {
    operator delete(v363);
  }

  if (v366 < 0)
  {
    operator delete(v365);
  }

  if (v369 < 0)
  {
    operator delete(v368);
  }

  if (v371 < 0)
  {
    operator delete(v370);
  }

  if (v374 < 0)
  {
    operator delete(v373);
  }

  if (v376 < 0)
  {
    operator delete(v375);
  }

  if (v379 < 0)
  {
    operator delete(v378);
  }

  if (v381 < 0)
  {
    operator delete(v380);
  }

  if (v384 < 0)
  {
    operator delete(v383);
  }

  if (v386 < 0)
  {
    operator delete(v385);
  }

  if (v389 < 0)
  {
    operator delete(v388);
  }

  if (v391 < 0)
  {
    operator delete(v390);
  }

  if (v394 < 0)
  {
    operator delete(v393);
  }

  if (v396 < 0)
  {
    operator delete(v395);
  }

  if (v399 < 0)
  {
    operator delete(v398);
  }

  if (v401 < 0)
  {
    operator delete(v400);
  }

  if (v404 < 0)
  {
    operator delete(v403);
  }

  if (v406 < 0)
  {
    operator delete(v405);
  }

  if (v409 < 0)
  {
    operator delete(v408);
  }

  if (v411 < 0)
  {
    operator delete(v410);
  }

  if (v414 < 0)
  {
    operator delete(v413);
  }

  if (v416 < 0)
  {
    operator delete(v415);
  }

  if (v419 < 0)
  {
    operator delete(v418);
  }

  if (v421 < 0)
  {
    operator delete(v420);
  }

  if (v424 < 0)
  {
    operator delete(v423);
  }

  if (v426 < 0)
  {
    operator delete(v425);
  }

  if (v429 < 0)
  {
    operator delete(v428);
  }

  if (v431 < 0)
  {
    operator delete(v430);
  }

  if (v434 < 0)
  {
    operator delete(v433);
  }

  if (v436 < 0)
  {
    operator delete(v435);
  }

  if (v439 < 0)
  {
    operator delete(v438);
  }

  if (v441 < 0)
  {
    operator delete(v440);
  }

  if (v444 < 0)
  {
    operator delete(v443);
  }

  if (v446 < 0)
  {
    operator delete(v445);
  }

  if (v449 < 0)
  {
    operator delete(v448);
  }

  if (v451 < 0)
  {
    operator delete(v450);
  }

  if (v454 < 0)
  {
    operator delete(v453);
  }

  if (v456 < 0)
  {
    operator delete(v455);
  }

  if (v459 < 0)
  {
    operator delete(v458);
  }

  if (v461 < 0)
  {
    operator delete(v460);
  }

  if (v464 < 0)
  {
    operator delete(v463);
  }

  if (v466 < 0)
  {
    operator delete(v465);
  }

  if (v469 < 0)
  {
    operator delete(v468);
  }

  if (v471 < 0)
  {
    operator delete(v470);
  }

  if (v474 < 0)
  {
    operator delete(v473);
  }

  if (v476 < 0)
  {
    operator delete(v475);
  }

  if (v479 < 0)
  {
    operator delete(v478);
  }

  if (v481 < 0)
  {
    operator delete(v480);
  }

  if (v484 < 0)
  {
    operator delete(v483);
  }

  if (v486 < 0)
  {
    operator delete(v485);
  }

  if (v489 < 0)
  {
    operator delete(v488);
  }

  if (v491 < 0)
  {
    operator delete(v490);
  }

  if (v494 < 0)
  {
    operator delete(v493);
  }

  if (v496 < 0)
  {
    operator delete(v495);
  }

  if (v499 < 0)
  {
    operator delete(v498);
  }

  if (v501 < 0)
  {
    operator delete(v500);
  }

  if (v504 < 0)
  {
    operator delete(v503);
  }

  if (v506 < 0)
  {
    operator delete(v505);
  }

  if (v509 < 0)
  {
    operator delete(v508);
  }

  if (v511 < 0)
  {
    operator delete(v510);
  }

  if (v514 < 0)
  {
    operator delete(v513);
  }

  if (v516 < 0)
  {
    operator delete(v515);
  }

  if (v519 < 0)
  {
    operator delete(v518);
  }

  if (v521 < 0)
  {
    operator delete(v520);
  }

  if (v524 < 0)
  {
    operator delete(v523);
  }

  if (v526 < 0)
  {
    operator delete(v525);
  }

  if (v529 < 0)
  {
    operator delete(v528);
  }

  if (v531 < 0)
  {
    operator delete(v530);
  }

  if (v534 < 0)
  {
    operator delete(v533);
  }

  if (v536 < 0)
  {
    operator delete(v535);
  }

  if (v539 < 0)
  {
    operator delete(v538);
  }

  if (v541 < 0)
  {
    operator delete(v540);
  }

  if (v544 < 0)
  {
    operator delete(v543);
  }

  if (v546 < 0)
  {
    operator delete(v545);
  }

  if (v549 < 0)
  {
    operator delete(v548);
  }

  if (v551 < 0)
  {
    operator delete(v550);
  }

  if (v554 < 0)
  {
    operator delete(v553);
  }

  if (v556 < 0)
  {
    operator delete(v555);
  }

  if (v559 < 0)
  {
    operator delete(v558);
  }

  if (v561 < 0)
  {
    operator delete(v560);
  }

  if (v564 < 0)
  {
    operator delete(v563);
  }

  if (v566 < 0)
  {
    operator delete(v565);
  }

  if (v569 < 0)
  {
    operator delete(v568);
  }

  if (v571 < 0)
  {
    operator delete(v570);
  }

  if (v574 < 0)
  {
    operator delete(v573);
  }

  if (v576 < 0)
  {
    operator delete(v575);
  }

  if (v579 < 0)
  {
    operator delete(v578);
  }

  if (v581 < 0)
  {
    operator delete(v580);
  }

  if (v584 < 0)
  {
    operator delete(v583);
  }

  if (v586 < 0)
  {
    operator delete(v585);
  }

  if (v589 < 0)
  {
    operator delete(v588);
  }

  if (v591 < 0)
  {
    operator delete(v590);
  }

  if (v594 < 0)
  {
    operator delete(v593);
  }

  if (v596 < 0)
  {
    operator delete(v595);
  }

  if (v599 < 0)
  {
    operator delete(v598);
  }

  if (v601 < 0)
  {
    operator delete(v600);
  }

  if (v604 < 0)
  {
    operator delete(v603);
  }

  if (v606 < 0)
  {
    operator delete(v605);
  }

  if (v609 < 0)
  {
    operator delete(v608);
  }

  if (v611 < 0)
  {
    operator delete(v610);
  }

  if (v614 < 0)
  {
    operator delete(v613);
  }

  if (v616 < 0)
  {
    operator delete(v615);
  }

  if (v619 < 0)
  {
    operator delete(v618);
  }

  if (v621 < 0)
  {
    operator delete(v620);
  }

  if (v624 < 0)
  {
    operator delete(v623);
  }

  if (v626 < 0)
  {
    operator delete(v625);
  }

  if (v629 < 0)
  {
    operator delete(v628);
  }

  if (v631 < 0)
  {
    operator delete(v630);
  }

  if (v634 < 0)
  {
    operator delete(v633);
  }

  if (v636 < 0)
  {
    operator delete(v635);
  }

  if (v639 < 0)
  {
    operator delete(v638);
  }

  if (v641 < 0)
  {
    operator delete(v640);
  }

  if (v644 < 0)
  {
    operator delete(v643);
  }

  if (v646 < 0)
  {
    operator delete(v645);
  }

  if (v649 < 0)
  {
    operator delete(v648);
  }

  if (v651 < 0)
  {
    operator delete(v650);
  }

  if (v654 < 0)
  {
    operator delete(v653);
  }

  if (v656 < 0)
  {
    operator delete(v655);
  }

  if (v659 < 0)
  {
    operator delete(v658);
  }

  if (v661 < 0)
  {
    operator delete(v660);
  }

  if (v664 < 0)
  {
    operator delete(v663);
  }

  if (v666 < 0)
  {
    operator delete(v665);
  }

  if (v669 < 0)
  {
    operator delete(v668);
  }

  if (v671 < 0)
  {
    operator delete(v670);
  }

  if (v674 < 0)
  {
    operator delete(v673);
  }

  if (v676 < 0)
  {
    operator delete(v675);
  }

  if (v679 < 0)
  {
    operator delete(v678);
  }

  if (v681 < 0)
  {
    operator delete(v680);
  }

  if (v684 < 0)
  {
    operator delete(v683);
  }

  if (v686 < 0)
  {
    operator delete(v685);
  }

  if (v689 < 0)
  {
    operator delete(v688);
  }

  if (v691 < 0)
  {
    operator delete(v690);
  }

  if (v694 < 0)
  {
    operator delete(v693);
  }

  if (v696 < 0)
  {
    operator delete(v695);
  }

  if (v699 < 0)
  {
    operator delete(v698);
  }

  if (v701 < 0)
  {
    operator delete(v700);
  }

  if (v704 < 0)
  {
    operator delete(v703);
  }

  if (v706 < 0)
  {
    operator delete(v705);
  }

  if (v709 < 0)
  {
    operator delete(v708);
  }

  if (v711 < 0)
  {
    operator delete(v710);
  }

  if (v714 < 0)
  {
    operator delete(v713);
  }

  if (v716 < 0)
  {
    operator delete(v715);
  }

  if (v719 < 0)
  {
    operator delete(v718);
  }

  if (v721 < 0)
  {
    operator delete(v720);
  }

  if (v724 < 0)
  {
    operator delete(v723);
  }

  if (v726 < 0)
  {
    operator delete(v725);
  }

  if (v729 < 0)
  {
    operator delete(v728);
  }

  if (v731 < 0)
  {
    operator delete(v730);
  }

  if (v734 < 0)
  {
    operator delete(v733);
  }

  if (v736 < 0)
  {
    operator delete(v735);
  }

  if (v739 < 0)
  {
    operator delete(v738);
  }

  if (v741 < 0)
  {
    operator delete(v740);
  }

  if (v744 < 0)
  {
    operator delete(v743);
  }

  if (v746 < 0)
  {
    operator delete(v745);
  }

  if (v749 < 0)
  {
    operator delete(v748);
  }

  if (v751 < 0)
  {
    operator delete(v750);
  }

  if (v754 < 0)
  {
    operator delete(v753);
  }

  if (v756 < 0)
  {
    operator delete(v755);
  }

  if (v759 < 0)
  {
    operator delete(v758);
  }

  if (v761 < 0)
  {
    operator delete(v760);
  }

  if (v764 < 0)
  {
    operator delete(v763);
  }

  if (v766 < 0)
  {
    operator delete(v765);
  }

  if (v769 < 0)
  {
    operator delete(v768);
  }

  if (v771 < 0)
  {
    operator delete(v770);
  }

  if (v774 < 0)
  {
    operator delete(v773);
  }

  if (v776 < 0)
  {
    operator delete(v775);
  }

  if (v779 < 0)
  {
    operator delete(v778);
  }

  if (v781 < 0)
  {
    operator delete(v780);
  }

  if (v784 < 0)
  {
    operator delete(v783);
  }

  if (v786 < 0)
  {
    operator delete(v785);
  }

  if (v789 < 0)
  {
    operator delete(v788);
  }

  if (v791 < 0)
  {
    operator delete(v790);
  }

  if (v794 < 0)
  {
    operator delete(v793);
  }

  if (v796 < 0)
  {
    operator delete(v795);
  }

  if (v799 < 0)
  {
    operator delete(v798);
  }

  if (v801 < 0)
  {
    operator delete(v800);
  }

  if (v804 < 0)
  {
    operator delete(v803);
  }

  if (v806 < 0)
  {
    operator delete(v805);
  }

  if (v809 < 0)
  {
    operator delete(v808);
  }

  if (v811 < 0)
  {
    operator delete(v810);
  }

  if (v814 < 0)
  {
    operator delete(v813);
  }

  if (v816 < 0)
  {
    operator delete(v815);
  }

  if (v819 < 0)
  {
    operator delete(v818);
  }

  if (v821 < 0)
  {
    operator delete(v820);
  }

  if (v824 < 0)
  {
    operator delete(v823);
  }

  if (v826 < 0)
  {
    operator delete(v825);
  }

  if (v829 < 0)
  {
    operator delete(v828);
  }

  if (v831 < 0)
  {
    operator delete(v830);
  }

  if (v834 < 0)
  {
    operator delete(v833);
  }

  if (v836 < 0)
  {
    operator delete(v835);
  }

  if (v839 < 0)
  {
    operator delete(v838);
  }

  if (v841 < 0)
  {
    operator delete(v840);
  }

  if (v844 < 0)
  {
    operator delete(v843);
  }

  if (v846 < 0)
  {
    operator delete(v845);
  }

  if (v849 < 0)
  {
    operator delete(v848);
  }

  if (v851 < 0)
  {
    operator delete(v850);
  }

  if (v854 < 0)
  {
    operator delete(v853);
  }

  if (v856 < 0)
  {
    operator delete(v855);
  }

  if (v859 < 0)
  {
    operator delete(v858);
  }

  if (v861 < 0)
  {
    operator delete(v860);
  }

  if (v864 < 0)
  {
    operator delete(v863);
  }

  if (v866 < 0)
  {
    operator delete(v865);
  }

  if (v869 < 0)
  {
    operator delete(v868);
  }

  if (v871 < 0)
  {
    operator delete(v870);
  }

  if (v874 < 0)
  {
    operator delete(v873);
  }

  if (v876 < 0)
  {
    operator delete(v875);
  }

  if (v879 < 0)
  {
    operator delete(v878);
  }

  if (v881 < 0)
  {
    operator delete(v880);
  }

  if (v884 < 0)
  {
    operator delete(v883);
  }

  if (v886 < 0)
  {
    operator delete(v885);
  }

  if (v889 < 0)
  {
    operator delete(v888);
  }

  if (v891 < 0)
  {
    operator delete(v890);
  }

  if (v894 < 0)
  {
    operator delete(v893);
  }

  if (v896 < 0)
  {
    operator delete(v895);
  }

  if (v899 < 0)
  {
    operator delete(v898);
  }

  if (v901 < 0)
  {
    operator delete(v900);
  }

  if (v904 < 0)
  {
    operator delete(v903);
  }

  if (v906 < 0)
  {
    operator delete(v905);
  }

  if (v909 < 0)
  {
    operator delete(v908);
  }

  if (v911 < 0)
  {
    operator delete(v910);
  }

  if (v914 < 0)
  {
    operator delete(v913);
  }

  if (v916 < 0)
  {
    operator delete(v915);
  }

  if (v919 < 0)
  {
    operator delete(v918);
  }

  if (v921 < 0)
  {
    operator delete(v920);
  }

  if (v924 < 0)
  {
    operator delete(v923);
  }

  if (v926 < 0)
  {
    operator delete(v925);
  }

  if (v929 < 0)
  {
    operator delete(v928);
  }

  if (v931 < 0)
  {
    operator delete(v930);
  }

  if (v934 < 0)
  {
    operator delete(v933);
  }

  if (v936 < 0)
  {
    operator delete(v935);
  }

  if (v939 < 0)
  {
    operator delete(v938);
  }

  if (v941 < 0)
  {
    operator delete(v940);
  }

  if (v944 < 0)
  {
    operator delete(v943);
  }

  if (v946 < 0)
  {
    operator delete(v945);
  }

  if (v949 < 0)
  {
    operator delete(v948);
  }

  if (v951 < 0)
  {
    operator delete(v950);
  }

  if (v954 < 0)
  {
    operator delete(v953);
  }

  if (v956 < 0)
  {
    operator delete(v955);
  }

  if (v959 < 0)
  {
    operator delete(v958);
  }

  if (v961 < 0)
  {
    operator delete(v960);
  }

  if (v964 < 0)
  {
    operator delete(v963);
  }

  if (v966 < 0)
  {
    operator delete(v965);
  }

  if (v969 < 0)
  {
    operator delete(v968);
  }

  if (v971 < 0)
  {
    operator delete(v970);
  }

  if (v974 < 0)
  {
    operator delete(v973);
  }

  if (v976 < 0)
  {
    operator delete(v975);
  }

  if (v979 < 0)
  {
    operator delete(v978);
  }

  if (v981 < 0)
  {
    operator delete(v980);
  }

  if (v984 < 0)
  {
    operator delete(v983);
  }

  if (v986 < 0)
  {
    operator delete(v985);
  }

  if (v989 < 0)
  {
    operator delete(v988);
  }

  if (v991 < 0)
  {
    operator delete(v990);
  }

  if (v994 < 0)
  {
    operator delete(v993);
  }

  if (v996 < 0)
  {
    operator delete(v995);
  }

  if (v999 < 0)
  {
    operator delete(v998);
  }

  if (v1001 < 0)
  {
    operator delete(v1000);
  }

  if (v1004 < 0)
  {
    operator delete(v1003);
  }

  if (v1006 < 0)
  {
    operator delete(v1005);
  }

  if (v1009 < 0)
  {
    operator delete(v1008);
  }

  if (v1011 < 0)
  {
    operator delete(v1010);
  }

  if (v1014 < 0)
  {
    operator delete(v1013);
  }

  if (v1016 < 0)
  {
    operator delete(v1015);
  }

  if (v1019 < 0)
  {
    operator delete(v1018);
  }

  if (v1021 < 0)
  {
    operator delete(v1020);
  }

  if (v1024 < 0)
  {
    operator delete(v1023);
  }

  if (v1026 < 0)
  {
    operator delete(v1025);
  }

  if (v1029 < 0)
  {
    operator delete(v1028);
  }

  if (v1031 < 0)
  {
    operator delete(v1030);
  }

  if (v1034 < 0)
  {
    operator delete(v1033);
  }

  if (v1036 < 0)
  {
    operator delete(v1035);
  }

  if (v1039 < 0)
  {
    operator delete(v1038);
  }

  if (v1041 < 0)
  {
    operator delete(v1040);
  }

  if (v1044 < 0)
  {
    operator delete(v1043);
  }

  if (v1046 < 0)
  {
    operator delete(v1045);
  }

  if (v1049 < 0)
  {
    operator delete(v1048);
  }

  if (v1051 < 0)
  {
    operator delete(v1050);
  }

  if (v1054 < 0)
  {
    operator delete(v1053);
  }

  if (v1056 < 0)
  {
    operator delete(v1055);
  }

  if (v1059 < 0)
  {
    operator delete(v1058);
  }

  if (v1061 < 0)
  {
    operator delete(v1060);
  }

  if (v1064 < 0)
  {
    operator delete(v1063);
  }

  if (v1066 < 0)
  {
    operator delete(v1065);
  }

  if (v1069 < 0)
  {
    operator delete(v1068);
  }

  if (v1071 < 0)
  {
    operator delete(v1070);
  }

  if (v1074 < 0)
  {
    operator delete(v1073);
  }

  if (v1076 < 0)
  {
    operator delete(v1075);
  }

  if (v1079 < 0)
  {
    operator delete(v1078);
  }

  if (v1081 < 0)
  {
    operator delete(v1080);
  }

  if (v1084 < 0)
  {
    operator delete(v1083);
  }

  if (v1086 < 0)
  {
    operator delete(v1085);
  }

  if (v1089 < 0)
  {
    operator delete(v1088);
  }

  if (v1091 < 0)
  {
    operator delete(v1090);
  }

  if (v1094 < 0)
  {
    operator delete(v1093);
  }

  if (v1096 < 0)
  {
    operator delete(v1095);
  }

  if (v1099 < 0)
  {
    operator delete(v1098);
  }

  if (v1101 < 0)
  {
    operator delete(v1100);
  }

  if (v1104 < 0)
  {
    operator delete(v1103);
  }

  if (v1106 < 0)
  {
    operator delete(v1105);
  }

  if (v1109 < 0)
  {
    operator delete(v1108);
  }

  if (v1111 < 0)
  {
    operator delete(v1110);
  }

  if (v1114 < 0)
  {
    operator delete(v1113);
  }

  if (v1116 < 0)
  {
    operator delete(v1115);
  }

  if (v1119 < 0)
  {
    operator delete(v1118);
  }

  if (v1121 < 0)
  {
    operator delete(v1120);
  }

  if (v1124 < 0)
  {
    operator delete(v1123);
  }

  if (v1126 < 0)
  {
    operator delete(v1125);
  }

  if (v1129 < 0)
  {
    operator delete(v1128);
  }

  if (v1131 < 0)
  {
    operator delete(v1130);
  }

  if (v1134 < 0)
  {
    operator delete(v1133);
  }

  if (v1136 < 0)
  {
    operator delete(v1135);
  }

  if (v1139 < 0)
  {
    operator delete(v1138);
  }

  if (v1141 < 0)
  {
    operator delete(v1140);
  }

  if (v1144 < 0)
  {
    operator delete(v1143);
  }

  if (v1146 < 0)
  {
    operator delete(v1145);
  }

  if (v1149 < 0)
  {
    operator delete(v1148);
  }

  if (v1151 < 0)
  {
    operator delete(v1150);
  }

  if (v1154 < 0)
  {
    operator delete(v1153);
  }

  if (v1156 < 0)
  {
    operator delete(v1155);
  }

  if (v1159 < 0)
  {
    operator delete(v1158);
  }

  if (v1161 < 0)
  {
    operator delete(v1160);
  }

  if (v1164 < 0)
  {
    operator delete(v1163);
  }

  if (v1166 < 0)
  {
    operator delete(v1165);
  }

  if (v1169 < 0)
  {
    operator delete(v1168);
  }

  if (v1171 < 0)
  {
    operator delete(v1170);
  }

  if (v1174 < 0)
  {
    operator delete(v1173);
  }

  if (v1176 < 0)
  {
    operator delete(v1175);
  }

  if (v1179 < 0)
  {
    operator delete(v1178);
  }

  if (v1181 < 0)
  {
    operator delete(v1180);
  }

  if (v1184 < 0)
  {
    operator delete(v1183);
  }

  if (v1186 < 0)
  {
    operator delete(v1185);
  }

  if (v1189 < 0)
  {
    operator delete(v1188);
  }

  if (v1191 < 0)
  {
    operator delete(v1190);
  }

  if (v1194 < 0)
  {
    operator delete(v1193);
  }

  if (v1196 < 0)
  {
    operator delete(v1195);
  }

  if (v1199 < 0)
  {
    operator delete(v1198);
  }

  if (v1201 < 0)
  {
    operator delete(v1200);
  }

  if (v1204 < 0)
  {
    operator delete(v1203);
  }

  if (v1206 < 0)
  {
    operator delete(v1205);
  }

  if (v1209 < 0)
  {
    operator delete(v1208);
  }

  if (v1211 < 0)
  {
    operator delete(v1210);
  }

  if (v1214 < 0)
  {
    operator delete(v1213);
  }

  if (v1216 < 0)
  {
    operator delete(v1215);
  }

  if (v1219 < 0)
  {
    operator delete(v1218);
  }

  if (v1221 < 0)
  {
    operator delete(v1220);
  }

  if (v1224 < 0)
  {
    operator delete(v1223);
  }

  if (v1226 < 0)
  {
    operator delete(v1225);
  }

  if (v1229 < 0)
  {
    operator delete(v1228);
  }

  if (v1231 < 0)
  {
    operator delete(v1230);
  }

  if (v1234 < 0)
  {
    operator delete(v1233);
  }

  if (v1236 < 0)
  {
    operator delete(v1235);
  }

  if (v1239 < 0)
  {
    operator delete(v1238);
  }

  if (v1241 < 0)
  {
    operator delete(v1240);
  }

  if (v1244 < 0)
  {
    operator delete(v1243);
  }

  if (v1246 < 0)
  {
    operator delete(v1245);
  }

  if (v1249 < 0)
  {
    operator delete(v1248);
  }

  if (v1251 < 0)
  {
    operator delete(v1250);
  }

  if (v1254 < 0)
  {
    operator delete(v1253);
  }
}

void sub_1E1A750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  v80 = -13944;
  v81 = v74;
  do
  {
    v81 = sub_195CE20(v81) - 56;
    v80 += 56;
  }

  while (v80);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a48 < 0)
  {
    operator delete(*(v75 + 32));
  }

  if (a54 < 0)
  {
    operator delete(*(v75 + 56));
  }

  if (a61 < 0)
  {
    operator delete(*(v75 + 88));
  }

  if (a65 < 0)
  {
    operator delete(*(v75 + 112));
  }

  if (a66 < 0)
  {
    operator delete(*(v75 + 144));
  }

  if (a67 < 0)
  {
    operator delete(*(v75 + 168));
  }

  if (a68 < 0)
  {
    operator delete(*(v75 + 200));
  }

  if (a69 < 0)
  {
    operator delete(*(v75 + 224));
  }

  if (a70 < 0)
  {
    operator delete(*(v75 + 256));
  }

  if (a71 < 0)
  {
    operator delete(*(v75 + 280));
  }

  if (a72 < 0)
  {
    operator delete(*(v75 + 312));
  }

  if (a73 < 0)
  {
    operator delete(*(v75 + 336));
  }

  if (a74 < 0)
  {
    operator delete(*(v75 + 368));
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(*(v75 + 392));
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(*(v75 + 424));
  }

  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(*(v75 + 448));
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(*(v75 + 480));
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(*(v75 + 504));
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(*(v75 + 536));
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(*(v75 + 560));
  }

  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(*(v75 + 592));
  }

  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(*(v75 + 616));
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(*(v75 + 648));
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(*(v75 + 672));
  }

  if (SLOBYTE(STACK[0x34F]) < 0)
  {
    operator delete(*(v75 + 704));
  }

  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(*(v75 + 728));
  }

  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(*(v75 + 760));
  }

  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(*(v75 + 784));
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(*(v75 + 816));
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(*(v75 + 840));
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(*(v75 + 872));
  }

  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(*(v75 + 896));
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(*(v75 + 928));
  }

  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(*(v75 + 952));
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(*(v75 + 984));
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(*(v75 + 1008));
  }

  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(*(v75 + 1040));
  }

  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(*(v75 + 1064));
  }

  if (SLOBYTE(STACK[0x4D7]) < 0)
  {
    operator delete(*(v75 + 1096));
  }

  if (SLOBYTE(STACK[0x4EF]) < 0)
  {
    operator delete(*(v75 + 1120));
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(*(v75 + 1152));
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(*(v75 + 1176));
  }

  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(*(v75 + 1208));
  }

  if (SLOBYTE(STACK[0x55F]) < 0)
  {
    operator delete(*(v75 + 1232));
  }

  if (SLOBYTE(STACK[0x57F]) < 0)
  {
    operator delete(*(v75 + 1264));
  }

  if (SLOBYTE(STACK[0x597]) < 0)
  {
    operator delete(*(v75 + 1288));
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(*(v75 + 1320));
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(*(v75 + 1344));
  }

  if (SLOBYTE(STACK[0x5EF]) < 0)
  {
    operator delete(*(v75 + 1376));
  }

  if (SLOBYTE(STACK[0x607]) < 0)
  {
    operator delete(*(v75 + 1400));
  }

  if (SLOBYTE(STACK[0x627]) < 0)
  {
    operator delete(*(v75 + 1432));
  }

  if (SLOBYTE(STACK[0x63F]) < 0)
  {
    operator delete(*(v75 + 1456));
  }

  if (SLOBYTE(STACK[0x65F]) < 0)
  {
    operator delete(*(v75 + 1488));
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(*(v75 + 1512));
  }

  if (SLOBYTE(STACK[0x697]) < 0)
  {
    operator delete(*(v75 + 1544));
  }

  if (SLOBYTE(STACK[0x6AF]) < 0)
  {
    operator delete(*(v75 + 1568));
  }

  if (SLOBYTE(STACK[0x6CF]) < 0)
  {
    operator delete(*(v75 + 1600));
  }

  if (SLOBYTE(STACK[0x6E7]) < 0)
  {
    operator delete(*(v75 + 1624));
  }

  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(*(v75 + 1656));
  }

  if (SLOBYTE(STACK[0x71F]) < 0)
  {
    operator delete(*(v75 + 1680));
  }

  if (SLOBYTE(STACK[0x73F]) < 0)
  {
    operator delete(*(v75 + 1712));
  }

  if (SLOBYTE(STACK[0x757]) < 0)
  {
    operator delete(*(v75 + 1736));
  }

  if (SLOBYTE(STACK[0x777]) < 0)
  {
    operator delete(*(v75 + 1768));
  }

  if (SLOBYTE(STACK[0x78F]) < 0)
  {
    operator delete(*(v75 + 1792));
  }

  if (SLOBYTE(STACK[0x7AF]) < 0)
  {
    operator delete(*(v75 + 1824));
  }

  if (SLOBYTE(STACK[0x7C7]) < 0)
  {
    operator delete(*(v75 + 1848));
  }

  if (SLOBYTE(STACK[0x7E7]) < 0)
  {
    operator delete(*(v75 + 1880));
  }

  if (SLOBYTE(STACK[0x7FF]) < 0)
  {
    operator delete(*(v75 + 1904));
  }

  if (SLOBYTE(STACK[0x81F]) < 0)
  {
    operator delete(*(v75 + 1936));
  }

  if (SLOBYTE(STACK[0x837]) < 0)
  {
    operator delete(*(v75 + 1960));
  }

  if (SLOBYTE(STACK[0x857]) < 0)
  {
    operator delete(*(v75 + 1992));
  }

  if (SLOBYTE(STACK[0x86F]) < 0)
  {
    operator delete(*(v75 + 2016));
  }

  if (SLOBYTE(STACK[0x88F]) < 0)
  {
    operator delete(*(v75 + 2048));
  }

  if (SLOBYTE(STACK[0x8A7]) < 0)
  {
    operator delete(*(v75 + 2072));
  }

  if (SLOBYTE(STACK[0x8C7]) < 0)
  {
    operator delete(*(v75 + 2104));
  }

  if (SLOBYTE(STACK[0x8DF]) < 0)
  {
    operator delete(*(v75 + 2128));
  }

  if (SLOBYTE(STACK[0x8FF]) < 0)
  {
    operator delete(*(v75 + 2160));
  }

  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(*(v75 + 2184));
  }

  if (SLOBYTE(STACK[0x937]) < 0)
  {
    operator delete(*(v75 + 2216));
  }

  if (SLOBYTE(STACK[0x94F]) < 0)
  {
    operator delete(*(v75 + 2240));
  }

  if (SLOBYTE(STACK[0x96F]) < 0)
  {
    operator delete(*(v75 + 2272));
  }

  if (SLOBYTE(STACK[0x987]) < 0)
  {
    operator delete(*(v75 + 2296));
  }

  if (SLOBYTE(STACK[0x9A7]) < 0)
  {
    operator delete(*(v75 + 2328));
  }

  if (SLOBYTE(STACK[0x9BF]) < 0)
  {
    operator delete(*(v75 + 2352));
  }

  if (SLOBYTE(STACK[0x9DF]) < 0)
  {
    operator delete(*(v75 + 2384));
  }

  if (SLOBYTE(STACK[0x9F7]) < 0)
  {
    operator delete(*(v75 + 2408));
  }

  if (SLOBYTE(STACK[0xA17]) < 0)
  {
    operator delete(*(v75 + 2440));
  }

  if (SLOBYTE(STACK[0xA2F]) < 0)
  {
    operator delete(*(v75 + 2464));
  }

  if (SLOBYTE(STACK[0xA4F]) < 0)
  {
    operator delete(*(v75 + 2496));
  }

  if (SLOBYTE(STACK[0xA67]) < 0)
  {
    operator delete(*(v75 + 2520));
  }

  if (SLOBYTE(STACK[0xA87]) < 0)
  {
    operator delete(*(v75 + 2552));
  }

  if (SLOBYTE(STACK[0xA9F]) < 0)
  {
    operator delete(*(v75 + 2576));
  }

  if (SLOBYTE(STACK[0xABF]) < 0)
  {
    operator delete(*(v75 + 2608));
  }

  if (SLOBYTE(STACK[0xAD7]) < 0)
  {
    operator delete(*(v75 + 2632));
  }

  if (SLOBYTE(STACK[0xAF7]) < 0)
  {
    operator delete(*(v75 + 2664));
  }

  if (SLOBYTE(STACK[0xB0F]) < 0)
  {
    operator delete(*(v75 + 2688));
  }

  if (SLOBYTE(STACK[0xB2F]) < 0)
  {
    operator delete(*(v75 + 2720));
  }

  if (SLOBYTE(STACK[0xB47]) < 0)
  {
    operator delete(*(v75 + 2744));
  }

  if (SLOBYTE(STACK[0xB67]) < 0)
  {
    operator delete(*(v75 + 2776));
  }

  if (SLOBYTE(STACK[0xB7F]) < 0)
  {
    operator delete(*(v75 + 2800));
  }

  if (SLOBYTE(STACK[0xB9F]) < 0)
  {
    operator delete(*(v75 + 2832));
  }

  if (SLOBYTE(STACK[0xBB7]) < 0)
  {
    operator delete(*(v75 + 2856));
  }

  if (SLOBYTE(STACK[0xBD7]) < 0)
  {
    operator delete(*(v75 + 2888));
  }

  if (SLOBYTE(STACK[0xBEF]) < 0)
  {
    operator delete(*(v75 + 2912));
  }

  if (SLOBYTE(STACK[0xC0F]) < 0)
  {
    operator delete(*(v75 + 2944));
  }

  if (SLOBYTE(STACK[0xC27]) < 0)
  {
    operator delete(*(v75 + 2968));
  }

  if (SLOBYTE(STACK[0xC47]) < 0)
  {
    operator delete(*(v75 + 3000));
  }

  if (SLOBYTE(STACK[0xC5F]) < 0)
  {
    operator delete(*(v75 + 3024));
  }

  if (SLOBYTE(STACK[0xC7F]) < 0)
  {
    operator delete(*(v75 + 3056));
  }

  if (SLOBYTE(STACK[0xC97]) < 0)
  {
    operator delete(*(v75 + 3080));
  }

  if (SLOBYTE(STACK[0xCB7]) < 0)
  {
    operator delete(*(v75 + 3112));
  }

  if (SLOBYTE(STACK[0xCCF]) < 0)
  {
    operator delete(*(v75 + 3136));
  }

  if (SLOBYTE(STACK[0xCEF]) < 0)
  {
    operator delete(*(v75 + 3168));
  }

  if (SLOBYTE(STACK[0xD07]) < 0)
  {
    operator delete(*(v75 + 3192));
  }

  if (SLOBYTE(STACK[0xD27]) < 0)
  {
    operator delete(*(v75 + 3224));
  }

  if (SLOBYTE(STACK[0xD3F]) < 0)
  {
    operator delete(*(v75 + 3248));
  }

  if (SLOBYTE(STACK[0xD5F]) < 0)
  {
    operator delete(*(v75 + 3280));
  }

  if (SLOBYTE(STACK[0xD77]) < 0)
  {
    operator delete(*(v75 + 3304));
  }

  if (SLOBYTE(STACK[0xD97]) < 0)
  {
    operator delete(*(v75 + 3336));
  }

  if (SLOBYTE(STACK[0xDAF]) < 0)
  {
    operator delete(*(v75 + 3360));
  }

  if (SLOBYTE(STACK[0xDCF]) < 0)
  {
    operator delete(*(v75 + 3392));
  }

  if (SLOBYTE(STACK[0xDE7]) < 0)
  {
    operator delete(*(v75 + 3416));
  }

  if (SLOBYTE(STACK[0xE07]) < 0)
  {
    operator delete(*(v75 + 3448));
  }

  if (SLOBYTE(STACK[0xE1F]) < 0)
  {
    operator delete(*(v75 + 3472));
  }

  if (SLOBYTE(STACK[0xE3F]) < 0)
  {
    operator delete(*(v75 + 3504));
  }

  if (SLOBYTE(STACK[0xE57]) < 0)
  {
    operator delete(*(v75 + 3528));
  }

  if (SLOBYTE(STACK[0xE77]) < 0)
  {
    operator delete(*(v75 + 3560));
  }

  if (SLOBYTE(STACK[0xE8F]) < 0)
  {
    operator delete(*(v75 + 3584));
  }

  if (SLOBYTE(STACK[0xEAF]) < 0)
  {
    operator delete(*(v75 + 3616));
  }

  if (SLOBYTE(STACK[0xEC7]) < 0)
  {
    operator delete(*(v75 + 3640));
  }

  if (SLOBYTE(STACK[0xEE7]) < 0)
  {
    operator delete(*(v75 + 3672));
  }

  if (SLOBYTE(STACK[0xEFF]) < 0)
  {
    operator delete(*(v75 + 3696));
  }

  if (SLOBYTE(STACK[0xF1F]) < 0)
  {
    operator delete(*(v75 + 3728));
  }

  if (SLOBYTE(STACK[0xF37]) < 0)
  {
    operator delete(*(v75 + 3752));
  }

  if (SLOBYTE(STACK[0xF57]) < 0)
  {
    operator delete(*(v75 + 3784));
  }

  if (SLOBYTE(STACK[0xF6F]) < 0)
  {
    operator delete(*(v75 + 3808));
  }

  if (*(v75 + 3863) < 0)
  {
    operator delete(*(v75 + 3840));
  }

  if (*(v75 + 3887) < 0)
  {
    operator delete(*(v75 + 3864));
  }

  if (*(v75 + 3919) < 0)
  {
    operator delete(*(v75 + 3896));
  }

  if (*(v75 + 3943) < 0)
  {
    operator delete(*(v75 + 3920));
  }

  if (*(v75 + 3975) < 0)
  {
    operator delete(*(v75 + 3952));
  }

  if (*(v75 + 3999) < 0)
  {
    operator delete(*(v75 + 3976));
  }

  if (*(v75 + 4031) < 0)
  {
    operator delete(*(v75 + 4008));
  }

  if (*(v75 + 4055) < 0)
  {
    operator delete(*(v75 + 4032));
  }

  if (*(v75 + 4087) < 0)
  {
    operator delete(*(v75 + 4064));
  }

  if (*(v78 + 23) < 0)
  {
    operator delete(*v78);
  }

  if (*(v78 + 55) < 0)
  {
    operator delete(*(v78 + 32));
  }

  if (*(v78 + 79) < 0)
  {
    operator delete(*(v78 + 56));
  }

  if (*(v78 + 111) < 0)
  {
    operator delete(*(v78 + 88));
  }

  if (*(v78 + 135) < 0)
  {
    operator delete(*(v78 + 112));
  }

  if (*(v78 + 167) < 0)
  {
    operator delete(*(v78 + 144));
  }

  if (*(v78 + 191) < 0)
  {
    operator delete(*(v78 + 168));
  }

  if (*(v78 + 223) < 0)
  {
    operator delete(*(v78 + 200));
  }

  if (*(v78 + 247) < 0)
  {
    operator delete(*(v78 + 224));
  }

  if (*(v78 + 279) < 0)
  {
    operator delete(*(v78 + 256));
  }

  if (*(v78 + 303) < 0)
  {
    operator delete(*(v78 + 280));
  }

  if (*(v78 + 335) < 0)
  {
    operator delete(*(v78 + 312));
  }

  if (*(v78 + 359) < 0)
  {
    operator delete(*(v78 + 336));
  }

  if (*(v78 + 391) < 0)
  {
    operator delete(*(v78 + 368));
  }

  if (*(v78 + 415) < 0)
  {
    operator delete(*(v78 + 392));
  }

  if (*(v78 + 447) < 0)
  {
    operator delete(*(v78 + 424));
  }

  if (*(v78 + 471) < 0)
  {
    operator delete(*(v78 + 448));
  }

  if (*(v78 + 503) < 0)
  {
    operator delete(*(v78 + 480));
  }

  if (*(v78 + 527) < 0)
  {
    operator delete(*(v78 + 504));
  }

  if (*(v78 + 559) < 0)
  {
    operator delete(*(v78 + 536));
  }

  if (*(v78 + 583) < 0)
  {
    operator delete(*(v78 + 560));
  }

  if (*(v78 + 615) < 0)
  {
    operator delete(*(v78 + 592));
  }

  if (*(v78 + 639) < 0)
  {
    operator delete(*(v78 + 616));
  }

  if (*(v78 + 671) < 0)
  {
    operator delete(*(v78 + 648));
  }

  if (*(v78 + 695) < 0)
  {
    operator delete(*(v78 + 672));
  }

  if (*(v78 + 727) < 0)
  {
    operator delete(*(v78 + 704));
  }

  if (*(v78 + 751) < 0)
  {
    operator delete(*(v78 + 728));
  }

  if (*(v78 + 783) < 0)
  {
    operator delete(*(v78 + 760));
  }

  if (*(v78 + 807) < 0)
  {
    operator delete(*(v78 + 784));
  }

  if (*(v78 + 839) < 0)
  {
    operator delete(*(v78 + 816));
  }

  if (*(v78 + 863) < 0)
  {
    operator delete(*(v78 + 840));
  }

  if (*(v78 + 895) < 0)
  {
    operator delete(*(v78 + 872));
  }

  if (*(v78 + 919) < 0)
  {
    operator delete(*(v78 + 896));
  }

  if (*(v78 + 951) < 0)
  {
    operator delete(*(v78 + 928));
  }

  if (*(v78 + 975) < 0)
  {
    operator delete(*(v78 + 952));
  }

  if (*(v78 + 1007) < 0)
  {
    operator delete(*(v78 + 984));
  }

  if (*(v78 + 1031) < 0)
  {
    operator delete(*(v78 + 1008));
  }

  if (*(v78 + 1063) < 0)
  {
    operator delete(*(v78 + 1040));
  }

  if (*(v78 + 1087) < 0)
  {
    operator delete(*(v78 + 1064));
  }

  if (*(v78 + 1119) < 0)
  {
    operator delete(*(v78 + 1096));
  }

  if (*(v78 + 1143) < 0)
  {
    operator delete(*(v78 + 1120));
  }

  if (*(v78 + 1175) < 0)
  {
    operator delete(*(v78 + 1152));
  }

  if (*(v78 + 1199) < 0)
  {
    operator delete(*(v78 + 1176));
  }

  if (*(v78 + 1231) < 0)
  {
    operator delete(*(v78 + 1208));
  }

  if (*(v78 + 1255) < 0)
  {
    operator delete(*(v78 + 1232));
  }

  if (*(v78 + 1287) < 0)
  {
    operator delete(*(v78 + 1264));
  }

  if (*(v78 + 1311) < 0)
  {
    operator delete(*(v78 + 1288));
  }

  if (*(v78 + 1343) < 0)
  {
    operator delete(*(v78 + 1320));
  }

  if (*(v78 + 1367) < 0)
  {
    operator delete(*(v78 + 1344));
  }

  if (*(v78 + 1399) < 0)
  {
    operator delete(*(v78 + 1376));
  }

  if (*(v78 + 1423) < 0)
  {
    operator delete(*(v78 + 1400));
  }

  if (*(v78 + 1455) < 0)
  {
    operator delete(*(v78 + 1432));
  }

  if (*(v78 + 1479) < 0)
  {
    operator delete(*(v78 + 1456));
  }

  if (*(v78 + 1511) < 0)
  {
    operator delete(*(v78 + 1488));
  }

  if (*(v78 + 1535) < 0)
  {
    operator delete(*(v78 + 1512));
  }

  if (*(v78 + 1567) < 0)
  {
    operator delete(*(v78 + 1544));
  }

  if (*(v78 + 1591) < 0)
  {
    operator delete(*(v78 + 1568));
  }

  if (*(v78 + 1623) < 0)
  {
    operator delete(*(v78 + 1600));
  }

  if (*(v78 + 1647) < 0)
  {
    operator delete(*(v78 + 1624));
  }

  if (*(v78 + 1679) < 0)
  {
    operator delete(*(v78 + 1656));
  }

  if (*(v78 + 1703) < 0)
  {
    operator delete(*(v78 + 1680));
  }

  if (*(v78 + 1735) < 0)
  {
    operator delete(*(v78 + 1712));
  }

  if (*(v78 + 1759) < 0)
  {
    operator delete(*(v78 + 1736));
  }

  if (*(v78 + 1791) < 0)
  {
    operator delete(*(v78 + 1768));
  }

  if (*(v78 + 1815) < 0)
  {
    operator delete(*(v78 + 1792));
  }

  if (*(v78 + 1847) < 0)
  {
    operator delete(*(v78 + 1824));
  }

  if (*(v78 + 1871) < 0)
  {
    operator delete(*(v78 + 1848));
  }

  if (*(v78 + 1903) < 0)
  {
    operator delete(*(v78 + 1880));
  }

  if (*(v78 + 1927) < 0)
  {
    operator delete(*(v78 + 1904));
  }

  if (*(v78 + 1959) < 0)
  {
    operator delete(*(v78 + 1936));
  }

  if (*(v78 + 1983) < 0)
  {
    operator delete(*(v78 + 1960));
  }

  if (*(v78 + 2015) < 0)
  {
    operator delete(*(v78 + 1992));
  }

  if (*(v78 + 2039) < 0)
  {
    operator delete(*(v78 + 2016));
  }

  if (*(v78 + 2071) < 0)
  {
    operator delete(*(v78 + 2048));
  }

  if (*(v78 + 2095) < 0)
  {
    operator delete(*(v78 + 2072));
  }

  if (*(v78 + 2127) < 0)
  {
    operator delete(*(v78 + 2104));
  }

  if (*(v78 + 2151) < 0)
  {
    operator delete(*(v78 + 2128));
  }

  if (*(v78 + 2183) < 0)
  {
    operator delete(*(v78 + 2160));
  }

  if (*(v78 + 2207) < 0)
  {
    operator delete(*(v78 + 2184));
  }

  if (*(v78 + 2239) < 0)
  {
    operator delete(*(v78 + 2216));
  }

  if (*(v78 + 2263) < 0)
  {
    operator delete(*(v78 + 2240));
  }

  if (*(v78 + 2295) < 0)
  {
    operator delete(*(v78 + 2272));
  }

  if (*(v78 + 2319) < 0)
  {
    operator delete(*(v78 + 2296));
  }

  if (*(v78 + 2351) < 0)
  {
    operator delete(*(v78 + 2328));
  }

  if (*(v78 + 2375) < 0)
  {
    operator delete(*(v78 + 2352));
  }

  if (*(v78 + 2407) < 0)
  {
    operator delete(*(v78 + 2384));
  }

  if (*(v78 + 2431) < 0)
  {
    operator delete(*(v78 + 2408));
  }

  if (*(v78 + 2463) < 0)
  {
    operator delete(*(v78 + 2440));
  }

  if (*(v78 + 2487) < 0)
  {
    operator delete(*(v78 + 2464));
  }

  if (*(v78 + 2519) < 0)
  {
    operator delete(*(v78 + 2496));
  }

  if (*(v78 + 2543) < 0)
  {
    operator delete(*(v78 + 2520));
  }

  if (*(v78 + 2575) < 0)
  {
    operator delete(*(v78 + 2552));
  }

  if (*(v78 + 2599) < 0)
  {
    operator delete(*(v78 + 2576));
  }

  if (*(v78 + 2631) < 0)
  {
    operator delete(*(v78 + 2608));
  }

  if (*(v78 + 2655) < 0)
  {
    operator delete(*(v78 + 2632));
  }

  if (*(v78 + 2687) < 0)
  {
    operator delete(*(v78 + 2664));
  }

  if (*(v78 + 2711) < 0)
  {
    operator delete(*(v78 + 2688));
  }

  if (*(v78 + 2743) < 0)
  {
    operator delete(*(v78 + 2720));
  }

  if (*(v78 + 2767) < 0)
  {
    operator delete(*(v78 + 2744));
  }

  if (*(v78 + 2799) < 0)
  {
    operator delete(*(v78 + 2776));
  }

  if (*(v78 + 2823) < 0)
  {
    operator delete(*(v78 + 2800));
  }

  if (*(v78 + 2855) < 0)
  {
    operator delete(*(v78 + 2832));
  }

  if (*(v78 + 2879) < 0)
  {
    operator delete(*(v78 + 2856));
  }

  if (*(v78 + 2911) < 0)
  {
    operator delete(*(v78 + 2888));
  }

  if (*(v78 + 2935) < 0)
  {
    operator delete(*(v78 + 2912));
  }

  if (*(v78 + 2967) < 0)
  {
    operator delete(*(v78 + 2944));
  }

  if (*(v78 + 2991) < 0)
  {
    operator delete(*(v78 + 2968));
  }

  if (*(v78 + 3023) < 0)
  {
    operator delete(*(v78 + 3000));
  }

  if (*(v78 + 3047) < 0)
  {
    operator delete(*(v78 + 3024));
  }

  if (*(v78 + 3079) < 0)
  {
    operator delete(*(v78 + 3056));
  }

  if (*(v78 + 3103) < 0)
  {
    operator delete(*(v78 + 3080));
  }

  if (*(v78 + 3135) < 0)
  {
    operator delete(*(v78 + 3112));
  }

  if (*(v78 + 3159) < 0)
  {
    operator delete(*(v78 + 3136));
  }

  if (*(v78 + 3191) < 0)
  {
    operator delete(*(v78 + 3168));
  }

  if (*(v78 + 3215) < 0)
  {
    operator delete(*(v78 + 3192));
  }

  if (*(v78 + 3247) < 0)
  {
    operator delete(*(v78 + 3224));
  }

  if (*(v78 + 3271) < 0)
  {
    operator delete(*(v78 + 3248));
  }

  if (*(v78 + 3303) < 0)
  {
    operator delete(*(v78 + 3280));
  }

  if (*(v78 + 3327) < 0)
  {
    operator delete(*(v78 + 3304));
  }

  if (*(v78 + 3359) < 0)
  {
    operator delete(*(v78 + 3336));
  }

  if (*(v78 + 3383) < 0)
  {
    operator delete(*(v78 + 3360));
  }

  if (*(v78 + 3415) < 0)
  {
    operator delete(*(v78 + 3392));
  }

  if (*(v78 + 3439) < 0)
  {
    operator delete(*(v78 + 3416));
  }

  if (*(v78 + 3471) < 0)
  {
    operator delete(*(v78 + 3448));
  }

  if (*(v78 + 3495) < 0)
  {
    operator delete(*(v78 + 3472));
  }

  if (*(v78 + 3527) < 0)
  {
    operator delete(*(v78 + 3504));
  }

  if (*(v78 + 3551) < 0)
  {
    operator delete(*(v78 + 3528));
  }

  if (*(v78 + 3583) < 0)
  {
    operator delete(*(v78 + 3560));
  }

  if (*(v78 + 3607) < 0)
  {
    operator delete(*(v78 + 3584));
  }

  if (*(v78 + 3639) < 0)
  {
    operator delete(*(v78 + 3616));
  }

  if (*(v78 + 3663) < 0)
  {
    operator delete(*(v78 + 3640));
  }

  if (*(v78 + 3695) < 0)
  {
    operator delete(*(v78 + 3672));
  }

  if (*(v78 + 3719) < 0)
  {
    operator delete(*(v78 + 3696));
  }

  if (*(v78 + 3751) < 0)
  {
    operator delete(*(v78 + 3728));
  }

  if (*(v78 + 3775) < 0)
  {
    operator delete(*(v78 + 3752));
  }

  if (*(v78 + 3807) < 0)
  {
    operator delete(*(v78 + 3784));
  }

  if (*(v78 + 3831) < 0)
  {
    operator delete(*(v78 + 3808));
  }

  if (*(v78 + 3863) < 0)
  {
    operator delete(*(v78 + 3840));
  }

  if (*(v78 + 3887) < 0)
  {
    operator delete(*(v78 + 3864));
  }

  if (*(v78 + 3919) < 0)
  {
    operator delete(*(v78 + 3896));
  }

  if (*(v78 + 3943) < 0)
  {
    operator delete(*(v78 + 3920));
  }

  if (*(v78 + 3975) < 0)
  {
    operator delete(*(v78 + 3952));
  }

  if (*(v78 + 3999) < 0)
  {
    operator delete(*(v78 + 3976));
  }

  if (*(v78 + 4031) < 0)
  {
    operator delete(*(v78 + 4008));
  }

  if (*(v78 + 4055) < 0)
  {
    operator delete(*(v78 + 4032));
  }

  if (*(v78 + 4087) < 0)
  {
    operator delete(*(v78 + 4064));
  }

  if (*(v77 + 23) < 0)
  {
    operator delete(*v77);
  }

  if (*(v77 + 55) < 0)
  {
    operator delete(*(v77 + 32));
  }

  if (*(v77 + 79) < 0)
  {
    operator delete(*(v77 + 56));
  }

  if (*(v77 + 111) < 0)
  {
    operator delete(*(v77 + 88));
  }

  if (*(v77 + 135) < 0)
  {
    operator delete(*(v77 + 112));
  }

  if (*(v77 + 167) < 0)
  {
    operator delete(*(v77 + 144));
  }

  if (*(v77 + 191) < 0)
  {
    operator delete(*(v77 + 168));
  }

  if (*(v77 + 223) < 0)
  {
    operator delete(*(v77 + 200));
  }

  if (*(v77 + 247) < 0)
  {
    operator delete(*(v77 + 224));
  }

  if (*(v77 + 279) < 0)
  {
    operator delete(*(v77 + 256));
  }

  if (*(v77 + 303) < 0)
  {
    operator delete(*(v77 + 280));
  }

  if (*(v77 + 335) < 0)
  {
    operator delete(*(v77 + 312));
  }

  if (*(v77 + 359) < 0)
  {
    operator delete(*(v77 + 336));
  }

  if (*(v77 + 391) < 0)
  {
    operator delete(*(v77 + 368));
  }

  if (*(v77 + 415) < 0)
  {
    operator delete(*(v77 + 392));
  }

  if (*(v77 + 447) < 0)
  {
    operator delete(*(v77 + 424));
  }

  if (*(v77 + 471) < 0)
  {
    operator delete(*(v77 + 448));
  }

  if (*(v77 + 503) < 0)
  {
    operator delete(*(v77 + 480));
  }

  if (*(v77 + 527) < 0)
  {
    operator delete(*(v77 + 504));
  }

  if (*(v77 + 559) < 0)
  {
    operator delete(*(v77 + 536));
  }

  if (*(v77 + 583) < 0)
  {
    operator delete(*(v77 + 560));
  }

  if (*(v77 + 615) < 0)
  {
    operator delete(*(v77 + 592));
  }

  if (*(v77 + 639) < 0)
  {
    operator delete(*(v77 + 616));
  }

  if (*(v77 + 671) < 0)
  {
    operator delete(*(v77 + 648));
  }

  if (*(v77 + 695) < 0)
  {
    operator delete(*(v77 + 672));
  }

  if (*(v77 + 727) < 0)
  {
    operator delete(*(v77 + 704));
  }

  if (*(v77 + 751) < 0)
  {
    operator delete(*(v77 + 728));
  }

  if (*(v77 + 783) < 0)
  {
    operator delete(*(v77 + 760));
  }

  if (*(v77 + 807) < 0)
  {
    operator delete(*(v77 + 784));
  }

  if (*(v77 + 839) < 0)
  {
    operator delete(*(v77 + 816));
  }

  if (*(v77 + 863) < 0)
  {
    operator delete(*(v77 + 840));
  }

  if (*(v77 + 895) < 0)
  {
    operator delete(*(v77 + 872));
  }

  if (*(v77 + 919) < 0)
  {
    operator delete(*(v77 + 896));
  }

  if (*(v77 + 951) < 0)
  {
    operator delete(*(v77 + 928));
  }

  if (*(v77 + 975) < 0)
  {
    operator delete(*(v77 + 952));
  }

  if (*(v77 + 1007) < 0)
  {
    operator delete(*(v77 + 984));
  }

  if (*(v77 + 1031) < 0)
  {
    operator delete(*(v77 + 1008));
  }

  if (*(v77 + 1063) < 0)
  {
    operator delete(*(v77 + 1040));
  }

  if (*(v77 + 1087) < 0)
  {
    operator delete(*(v77 + 1064));
  }

  if (*(v77 + 1119) < 0)
  {
    operator delete(*(v77 + 1096));
  }

  if (*(v77 + 1143) < 0)
  {
    operator delete(*(v77 + 1120));
  }

  if (*(v77 + 1175) < 0)
  {
    operator delete(*(v77 + 1152));
  }

  if (*(v77 + 1199) < 0)
  {
    operator delete(*(v77 + 1176));
  }

  if (*(v77 + 1231) < 0)
  {
    operator delete(*(v77 + 1208));
  }

  if (*(v77 + 1255) < 0)
  {
    operator delete(*(v77 + 1232));
  }

  if (*(v77 + 1287) < 0)
  {
    operator delete(*(v77 + 1264));
  }

  if (*(v77 + 1311) < 0)
  {
    operator delete(*(v77 + 1288));
  }

  if (*(v77 + 1343) < 0)
  {
    operator delete(*(v77 + 1320));
  }

  if (*(v77 + 1367) < 0)
  {
    operator delete(*(v77 + 1344));
  }

  if (*(v77 + 1399) < 0)
  {
    operator delete(*(v77 + 1376));
  }

  if (*(v77 + 1423) < 0)
  {
    operator delete(*(v77 + 1400));
  }

  if (*(v77 + 1455) < 0)
  {
    operator delete(*(v77 + 1432));
  }

  if (*(v77 + 1479) < 0)
  {
    operator delete(*(v77 + 1456));
  }

  if (*(v77 + 1511) < 0)
  {
    operator delete(*(v77 + 1488));
  }

  if (*(v77 + 1535) < 0)
  {
    operator delete(*(v77 + 1512));
  }

  if (*(v77 + 1567) < 0)
  {
    operator delete(*(v77 + 1544));
  }

  if (*(v77 + 1591) < 0)
  {
    operator delete(*(v77 + 1568));
  }

  if (*(v77 + 1623) < 0)
  {
    operator delete(*(v77 + 1600));
  }

  if (*(v77 + 1647) < 0)
  {
    operator delete(*(v77 + 1624));
  }

  if (*(v77 + 1679) < 0)
  {
    operator delete(*(v77 + 1656));
  }

  if (*(v77 + 1703) < 0)
  {
    operator delete(*(v77 + 1680));
  }

  if (*(v77 + 1735) < 0)
  {
    operator delete(*(v77 + 1712));
  }

  if (*(v77 + 1759) < 0)
  {
    operator delete(*(v77 + 1736));
  }

  if (*(v77 + 1791) < 0)
  {
    operator delete(*(v77 + 1768));
  }

  if (*(v77 + 1815) < 0)
  {
    operator delete(*(v77 + 1792));
  }

  if (*(v77 + 1847) < 0)
  {
    operator delete(*(v77 + 1824));
  }

  if (*(v77 + 1871) < 0)
  {
    operator delete(*(v77 + 1848));
  }

  if (*(v77 + 1903) < 0)
  {
    operator delete(*(v77 + 1880));
  }

  if (*(v77 + 1927) < 0)
  {
    operator delete(*(v77 + 1904));
  }

  if (*(v77 + 1959) < 0)
  {
    operator delete(*(v77 + 1936));
  }

  if (*(v77 + 1983) < 0)
  {
    operator delete(*(v77 + 1960));
  }

  if (*(v77 + 2015) < 0)
  {
    operator delete(*(v77 + 1992));
  }

  if (*(v77 + 2039) < 0)
  {
    operator delete(*(v77 + 2016));
  }

  if (*(v77 + 2071) < 0)
  {
    operator delete(*(v77 + 2048));
  }

  if (*(v77 + 2095) < 0)
  {
    operator delete(*(v77 + 2072));
  }

  if (*(v77 + 2127) < 0)
  {
    operator delete(*(v77 + 2104));
  }

  if (*(v77 + 2151) < 0)
  {
    operator delete(*(v77 + 2128));
  }

  if (*(v77 + 2183) < 0)
  {
    operator delete(*(v77 + 2160));
  }

  if (*(v77 + 2207) < 0)
  {
    operator delete(*(v77 + 2184));
  }

  if (*(v77 + 2239) < 0)
  {
    operator delete(*(v77 + 2216));
  }

  if (*(v77 + 2263) < 0)
  {
    operator delete(*(v77 + 2240));
  }

  if (*(v77 + 2295) < 0)
  {
    operator delete(*(v77 + 2272));
  }

  if (*(v77 + 2319) < 0)
  {
    operator delete(*(v77 + 2296));
  }

  if (*(v77 + 2351) < 0)
  {
    operator delete(*(v77 + 2328));
  }

  if (*(v77 + 2375) < 0)
  {
    operator delete(*(v77 + 2352));
  }

  if (*(v77 + 2407) < 0)
  {
    operator delete(*(v77 + 2384));
  }

  if (*(v77 + 2431) < 0)
  {
    operator delete(*(v77 + 2408));
  }

  if (*(v77 + 2463) < 0)
  {
    operator delete(*(v77 + 2440));
  }

  if (*(v77 + 2487) < 0)
  {
    operator delete(*(v77 + 2464));
  }

  if (*(v77 + 2519) < 0)
  {
    operator delete(*(v77 + 2496));
  }

  if (*(v77 + 2543) < 0)
  {
    operator delete(*(v77 + 2520));
  }

  if (*(v77 + 2575) < 0)
  {
    operator delete(*(v77 + 2552));
  }

  if (*(v77 + 2599) < 0)
  {
    operator delete(*(v77 + 2576));
  }

  if (*(v77 + 2631) < 0)
  {
    operator delete(*(v77 + 2608));
  }

  if (*(v77 + 2655) < 0)
  {
    operator delete(*(v77 + 2632));
  }

  if (*(v77 + 2687) < 0)
  {
    operator delete(*(v77 + 2664));
  }

  if (*(v77 + 2711) < 0)
  {
    operator delete(*(v77 + 2688));
  }

  if (*(v77 + 2743) < 0)
  {
    operator delete(*(v77 + 2720));
  }

  if (*(v77 + 2767) < 0)
  {
    operator delete(*(v77 + 2744));
  }

  if (*(v77 + 2799) < 0)
  {
    operator delete(*(v77 + 2776));
  }

  if (*(v77 + 2823) < 0)
  {
    operator delete(*(v77 + 2800));
  }

  if (*(v77 + 2855) < 0)
  {
    operator delete(*(v77 + 2832));
  }

  if (*(v77 + 2879) < 0)
  {
    operator delete(*(v77 + 2856));
  }

  if (*(v77 + 2911) < 0)
  {
    operator delete(*(v77 + 2888));
  }

  if (*(v77 + 2935) < 0)
  {
    operator delete(*(v77 + 2912));
  }

  if (*(v77 + 2967) < 0)
  {
    operator delete(*(v77 + 2944));
  }

  if (*(v77 + 2991) < 0)
  {
    operator delete(*(v77 + 2968));
  }

  if (*(v77 + 3023) < 0)
  {
    operator delete(*(v77 + 3000));
  }

  if (*(v77 + 3047) < 0)
  {
    operator delete(*(v77 + 3024));
  }

  if (*(v77 + 3079) < 0)
  {
    operator delete(*(v77 + 3056));
  }

  if (*(v77 + 3103) < 0)
  {
    operator delete(*(v77 + 3080));
  }

  if (*(v77 + 3135) < 0)
  {
    operator delete(*(v77 + 3112));
  }

  if (*(v77 + 3159) < 0)
  {
    operator delete(*(v77 + 3136));
  }

  if (*(v77 + 3191) < 0)
  {
    operator delete(*(v77 + 3168));
  }

  if (*(v77 + 3215) < 0)
  {
    operator delete(*(v77 + 3192));
  }

  if (*(v77 + 3247) < 0)
  {
    operator delete(*(v77 + 3224));
  }

  if (*(v77 + 3271) < 0)
  {
    operator delete(*(v77 + 3248));
  }

  if (*(v77 + 3303) < 0)
  {
    operator delete(*(v77 + 3280));
  }

  if (*(v77 + 3327) < 0)
  {
    operator delete(*(v77 + 3304));
  }

  if (*(v77 + 3359) < 0)
  {
    operator delete(*(v77 + 3336));
  }

  if (*(v77 + 3383) < 0)
  {
    operator delete(*(v77 + 3360));
  }

  if (*(v77 + 3415) < 0)
  {
    operator delete(*(v77 + 3392));
  }

  if (*(v77 + 3439) < 0)
  {
    operator delete(*(v77 + 3416));
  }

  if (*(v77 + 3471) < 0)
  {
    operator delete(*(v77 + 3448));
  }

  if (*(v77 + 3495) < 0)
  {
    operator delete(*(v77 + 3472));
  }

  if (*(v77 + 3527) < 0)
  {
    operator delete(*(v77 + 3504));
  }

  if (*(v77 + 3551) < 0)
  {
    operator delete(*(v77 + 3528));
  }

  if (*(v77 + 3583) < 0)
  {
    operator delete(*(v77 + 3560));
  }

  if (*(v77 + 3607) < 0)
  {
    operator delete(*(v77 + 3584));
  }

  if (*(v77 + 3639) < 0)
  {
    operator delete(*(v77 + 3616));
  }

  if (*(v77 + 3663) < 0)
  {
    operator delete(*(v77 + 3640));
  }

  if (*(v77 + 3695) < 0)
  {
    operator delete(*(v77 + 3672));
  }

  if (*(v77 + 3719) < 0)
  {
    operator delete(*(v77 + 3696));
  }

  if (*(v77 + 3751) < 0)
  {
    operator delete(*(v77 + 3728));
  }

  if (*(v77 + 3775) < 0)
  {
    operator delete(*(v77 + 3752));
  }

  if (*(v77 + 3807) < 0)
  {
    operator delete(*(v77 + 3784));
  }

  if (*(v77 + 3831) < 0)
  {
    operator delete(*(v77 + 3808));
  }

  if (*(v77 + 3863) < 0)
  {
    operator delete(*(v77 + 3840));
  }

  if (*(v77 + 3887) < 0)
  {
    operator delete(*(v77 + 3864));
  }

  if (*(v77 + 3919) < 0)
  {
    operator delete(*(v77 + 3896));
  }

  if (*(v77 + 3943) < 0)
  {
    operator delete(*(v77 + 3920));
  }

  if (*(v77 + 3975) < 0)
  {
    operator delete(*(v77 + 3952));
  }

  if (*(v77 + 3999) < 0)
  {
    operator delete(*(v77 + 3976));
  }

  if (*(v77 + 4031) < 0)
  {
    operator delete(*(v77 + 4008));
  }

  if (*(v77 + 4055) < 0)
  {
    operator delete(*(v77 + 4032));
  }

  if (*(v77 + 4087) < 0)
  {
    operator delete(*(v77 + 4064));
  }

  if (*(v76 + 23) < 0)
  {
    operator delete(*v76);
  }

  if (*(v76 + 55) < 0)
  {
    operator delete(*(v76 + 32));
  }

  if (*(v76 + 79) < 0)
  {
    operator delete(*(v76 + 56));
  }

  if (*(v76 + 111) < 0)
  {
    operator delete(*(v76 + 88));
  }

  if (*(v76 + 135) < 0)
  {
    operator delete(*(v76 + 112));
  }

  if (*(v76 + 167) < 0)
  {
    operator delete(*(v76 + 144));
  }

  if (*(v76 + 191) < 0)
  {
    operator delete(*(v76 + 168));
  }

  if (*(v76 + 223) < 0)
  {
    operator delete(*(v76 + 200));
  }

  if (*(v76 + 247) < 0)
  {
    operator delete(*(v76 + 224));
  }

  if (*(v76 + 279) < 0)
  {
    operator delete(*(v76 + 256));
  }

  if (*(v76 + 303) < 0)
  {
    operator delete(*(v76 + 280));
  }

  if (*(v76 + 335) < 0)
  {
    operator delete(*(v76 + 312));
  }

  if (*(v76 + 359) < 0)
  {
    operator delete(*(v76 + 336));
  }

  if (*(v76 + 391) < 0)
  {
    operator delete(*(v76 + 368));
  }

  if (*(v76 + 415) < 0)
  {
    operator delete(*(v76 + 392));
  }

  if (*(v76 + 447) < 0)
  {
    operator delete(*(v76 + 424));
  }

  if (*(v76 + 471) < 0)
  {
    operator delete(*(v76 + 448));
  }

  if (*(v76 + 503) < 0)
  {
    operator delete(*(v76 + 480));
  }

  if (*(v76 + 527) < 0)
  {
    operator delete(*(v76 + 504));
  }

  if (*(v76 + 559) < 0)
  {
    operator delete(*(v76 + 536));
  }

  if (*(v76 + 583) < 0)
  {
    operator delete(*(v76 + 560));
  }

  if (*(v76 + 615) < 0)
  {
    operator delete(*(v76 + 592));
  }

  if (*(v76 + 639) < 0)
  {
    operator delete(*(v76 + 616));
  }

  if (*(v76 + 671) < 0)
  {
    operator delete(*(v76 + 648));
  }

  if (*(v76 + 695) < 0)
  {
    operator delete(*(v76 + 672));
  }

  if (*(v76 + 727) < 0)
  {
    operator delete(*(v76 + 704));
  }

  if (*(v76 + 751) < 0)
  {
    operator delete(*(v76 + 728));
  }

  if (*(v76 + 783) < 0)
  {
    operator delete(*(v76 + 760));
  }

  if (*(v76 + 807) < 0)
  {
    operator delete(*(v76 + 784));
  }

  if (*(v76 + 839) < 0)
  {
    operator delete(*(v76 + 816));
  }

  if (*(v76 + 863) < 0)
  {
    operator delete(*(v76 + 840));
  }

  if (*(v76 + 895) < 0)
  {
    operator delete(*(v76 + 872));
  }

  if (*(v76 + 919) < 0)
  {
    operator delete(*(v76 + 896));
  }

  if (*(v76 + 951) < 0)
  {
    operator delete(*(v76 + 928));
  }

  if (*(v76 + 975) < 0)
  {
    operator delete(*(v76 + 952));
  }

  if (*(v76 + 1007) < 0)
  {
    operator delete(*(v76 + 984));
  }

  if (*(v76 + 1031) < 0)
  {
    operator delete(*(v76 + 1008));
  }

  if (*(v76 + 1063) < 0)
  {
    operator delete(*(v76 + 1040));
  }

  if (*(v76 + 1087) < 0)
  {
    operator delete(*(v76 + 1064));
  }

  if (*(v76 + 1119) < 0)
  {
    operator delete(*(v76 + 1096));
  }

  if (*(v76 + 1143) < 0)
  {
    operator delete(*(v76 + 1120));
  }

  if (*(v76 + 1175) < 0)
  {
    operator delete(*(v76 + 1152));
  }

  if (*(v76 + 1199) < 0)
  {
    operator delete(*(v76 + 1176));
  }

  if (*(v76 + 1231) < 0)
  {
    operator delete(*(v76 + 1208));
  }

  if (*(v76 + 1255) < 0)
  {
    operator delete(*(v76 + 1232));
  }

  if (*(v76 + 1287) < 0)
  {
    operator delete(*(v76 + 1264));
  }

  if (*(v76 + 1311) < 0)
  {
    operator delete(*(v76 + 1288));
  }

  if (*(v76 + 1343) < 0)
  {
    operator delete(*(v76 + 1320));
  }

  if (*(v76 + 1367) < 0)
  {
    operator delete(*(v76 + 1344));
  }

  if (*(v76 + 1399) < 0)
  {
    operator delete(*(v76 + 1376));
  }

  if (*(v76 + 1423) < 0)
  {
    operator delete(*(v76 + 1400));
  }

  if (*(v76 + 1455) < 0)
  {
    operator delete(*(v76 + 1432));
  }

  if (*(v76 + 1479) < 0)
  {
    operator delete(*(v76 + 1456));
  }

  if (*(v76 + 1511) < 0)
  {
    operator delete(*(v76 + 1488));
  }

  if (*(v76 + 1535) < 0)
  {
    operator delete(*(v76 + 1512));
  }

  if (*(v76 + 1567) < 0)
  {
    operator delete(*(v76 + 1544));
  }

  _Unwind_Resume(a1);
}

void sub_1E1E224()
{
  sub_3608D0(__p, "earthstats.max_elevation");
  qword_27EFC78 = 0;
  unk_27EFC80 = 0;
  qword_27EFC88 = 0;
  sub_68678C(&qword_27EFC78, __p, v12, 1uLL);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "earthstats.length");
  qword_27EFC90 = 0;
  *algn_27EFC98 = 0;
  qword_27EFCA0 = 0;
  sub_68678C(&qword_27EFC90, __p, v12, 1uLL);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "hotelstravel.trainstations");
  qword_27EFCA8 = 0;
  unk_27EFCB0 = 0;
  qword_27EFCB8 = 0;
  sub_68678C(&qword_27EFCA8, __p, v12, 1uLL);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1E13768(v0, v1, v2, v3, v4, v5, v6, v7);
  sub_3608D0(__p, "en_US");
  LODWORD(v12[0]) = 0;
  sub_3608D0(v12 + 1, "en-US_US");
  v13 = 0;
  sub_3608D0(v14, "en_AU");
  v15 = 1;
  sub_3608D0(v16, "en-AU_AU");
  v17 = 1;
  sub_3608D0(v18, "en_CA");
  v19 = 2;
  sub_3608D0(v20, "en-CA_CA");
  v21 = 2;
  sub_3608D0(v22, "en_GB");
  v23 = 3;
  sub_3608D0(v24, "en-GB_GB");
  v25 = 3;
  sub_3608D0(v26, "en_IE");
  v27 = 4;
  sub_3608D0(v28, "en-IE_IE");
  v29 = 4;
  sub_3608D0(v30, "en_NZ");
  v31 = 4;
  sub_3608D0(v32, "en-NZ_NZ");
  v33 = 4;
  sub_3608D0(v34, "en_ZA");
  v35 = 4;
  sub_3608D0(v36, "en-ZA_ZA");
  v37 = 4;
  sub_19664AC(&unk_27EFCD8, __p, 14);
  v8 = 56;
  do
  {
    if (*(&__p[v8 - 1] - 1) < 0)
    {
      operator delete(__p[v8 - 4]);
    }

    v8 -= 4;
  }

  while (v8 * 8);
  sub_3608D0(__p, "US");
  LODWORD(v12[0]) = 1;
  sub_3608D0(v12 + 1, "AU");
  v13 = 2;
  sub_3608D0(v14, "CA");
  v15 = 3;
  sub_3608D0(v16, "GB");
  v17 = 4;
  sub_3608D0(v18, "IE");
  v19 = 5;
  sub_3608D0(v20, "NZ");
  v21 = 5;
  sub_3608D0(v22, "ZA");
  v23 = 5;
  sub_3608D0(v24, "ZA");
  v25 = 5;
  sub_3608D0(v26, "IN");
  v27 = 7;
  sub_3608D0(v28, "DE");
  v29 = 6;
  sub_3608D0(v30, "CH");
  v31 = 6;
  sub_3608D0(v32, "NL");
  v33 = 6;
  sub_3608D0(v34, "DK");
  v35 = 6;
  sub_3608D0(v36, "NO");
  v37 = 6;
  sub_3608D0(v38, "FI");
  v39 = 6;
  sub_3608D0(v40, "SE");
  v41 = 6;
  sub_3608D0(v42, "BE");
  v43 = 6;
  sub_3608D0(v44, "AT");
  v45 = 6;
  sub_3608D0(v46, "MX");
  v47 = 6;
  sub_3608D0(v48, "AR");
  v49 = 6;
  sub_3608D0(v50, "CL");
  v51 = 6;
  sub_3608D0(v52, "BR");
  v53 = 6;
  sub_3608D0(v54, "SK");
  v55 = 6;
  sub_3608D0(v56, "TR");
  v57 = 6;
  sub_3608D0(v58, "PL");
  v59 = 6;
  sub_3608D0(v60, "HR");
  v61 = 6;
  sub_3608D0(v62, "RO");
  v63 = 6;
  sub_3608D0(v64, "HU");
  v65 = 6;
  sub_3608D0(v66, "VN");
  v67 = 6;
  sub_3608D0(v68, "GR");
  v69 = 6;
  sub_3608D0(v70, "IL");
  v71 = 6;
  sub_3608D0(v72, "NG");
  v73 = 6;
  sub_3608D0(v74, "AE");
  v75 = 6;
  sub_3608D0(v76, "EG");
  v77 = 6;
  sub_1966844(&unk_27EFD00, __p, 34);
  v9 = 136;
  do
  {
    if (*(&__p[v9 - 1] - 1) < 0)
    {
      operator delete(__p[v9 - 4]);
    }

    v9 -= 4;
  }

  while (v9 * 8);
}

void sub_1E1E8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = (v15 + 1079);
  v18 = -1088;
  v19 = v17;
  while (1)
  {
    v20 = *v19;
    v19 -= 32;
    if (v20 < 0)
    {
      operator delete(*(v17 - 23));
    }

    v17 = v19;
    v18 += 32;
    if (!v18)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_1E1EA50(uint64_t a1)
{
  *(a1 + 40) |= 4u;
  v2 = *(a1 + 136);
  if (!v2)
  {
    v3 = *(a1 + 8);
    v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
    if (v3)
    {
      v4 = *v4;
    }

    sub_191637C(v4);
    v2 = v5;
    *(a1 + 136) = v5;
  }

  *(v2 + 16) |= 1u;
  *(v2 + 72) = 1;
  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = &v7[v8];
    do
    {
      sub_18C5D14(v129, *v7);
      __p = 0;
      v127 = 0;
      v128 = 0;
      if (v131)
      {
        v10 = (v131 + 8);
      }

      else
      {
        v10 = 0;
      }

      if (v130)
      {
        v11 = 8 * v130;
        do
        {
          sub_1402294(v123, *v10);
          if ((v124 & 0x10) != 0)
          {
            v122 = *(v125 + 72);
            sub_1A7AAB4(&__p, &v122);
          }

          sub_140254C(v123);
          ++v10;
          v11 -= 8;
        }

        while (v11);
        v12 = __p;
        if (v127 != __p)
        {
          v13 = *(v2 + 40);
          if (v13 && (v14 = *(v2 + 32), v14 < *v13))
          {
            *(v2 + 32) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = sub_1916234(*(v2 + 24));
            v15 = sub_19593CC(v2 + 24, v16);
          }

          *(v15 + 16) |= 1u;
          v17 = *(v15 + 64);
          if (!v17)
          {
            v18 = *(v15 + 8);
            v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
            if (v18)
            {
              v19 = *v19;
            }

            v17 = sub_19160EC(v19);
            *(v15 + 64) = v17;
          }

          *(v17 + 4) |= 1u;
          v20 = v17[1];
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          sub_10DF26C(v17 + 6, "default", v21);
          v22 = __p;
          v23 = v127;
          while (v22 != v23)
          {
            v24 = *v22;
            v25 = *(v15 + 40);
            if (v25 && (v26 = *(v15 + 32), v26 < *v25))
            {
              *(v15 + 32) = v26 + 1;
              v27 = *&v25[2 * v26 + 2];
            }

            else
            {
              v28 = sub_191BA60(*(v15 + 24));
              v27 = sub_19593CC(v15 + 24, v28);
            }

            *(v27 + 40) |= 1u;
            v29 = *(v27 + 48);
            if (!v29)
            {
              v30 = *(v27 + 8);
              v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
              if (v30)
              {
                v31 = *v31;
              }

              sub_191B9D8(v31);
              *(v27 + 48) = v29;
            }

            v32 = *(v29 + 16);
            *(v29 + 32) = v24;
            *(v29 + 16) = v32 | 0xA;
            *(v29 + 48) = 9902;
            ++v22;
          }

          *(v15 + 16) |= 1u;
          v33 = *(v15 + 64);
          if (!v33)
          {
            v34 = *(v15 + 8);
            v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
            if (v34)
            {
              v35 = *v35;
            }

            v33 = sub_19160EC(v35);
            *(v15 + 64) = v33;
          }

          v36 = v33[5];
          if (v36 && (v37 = *(v33 + 8), v37 < *v36))
          {
            *(v33 + 8) = v37 + 1;
            v38 = *&v36[2 * v37 + 2];
          }

          else
          {
            v39 = sub_1916190(v33[3]);
            v38 = sub_19593CC((v33 + 3), v39);
          }

          *(v38 + 16) |= 1u;
          *(v38 + 64) = 3;
          v40 = *(v38 + 40);
          if (v40 && (v41 = *(v38 + 32), v41 < *v40))
          {
            *(v38 + 32) = v41 + 1;
            v42 = *&v40[2 * v41 + 2];
          }

          else
          {
            v43 = sub_1916050(*(v38 + 24));
            v42 = sub_19593CC(v38 + 24, v43);
          }

          v44 = *(v42 + 40);
          if (v44 && (v45 = *(v42 + 32), v45 < *v44))
          {
            *(v42 + 32) = v45 + 1;
            v46 = *&v44[2 * v45 + 2];
          }

          else
          {
            sub_1915FA8(*(v42 + 24));
            v46 = sub_19593CC(v42 + 24, v47);
          }

          v46[41].i32[0] = 17;
          v46[2] = vorr_s8(v46[2], 0x2000010000);
          if (!*&v46[20])
          {
            v48 = v46[1];
            v49 = (*&v48 & 0xFFFFFFFFFFFFFFFCLL);
            if (v48.i8[0])
            {
              v49 = *v49;
            }

            v46[20] = sub_1915724(v49);
          }

          v50 = *(v38 + 40);
          if (v50 && (v51 = *(v38 + 32), v51 < *v50))
          {
            *(v38 + 32) = v51 + 1;
            v52 = *&v50[2 * v51 + 2];
          }

          else
          {
            v53 = sub_1916050(*(v38 + 24));
            v52 = sub_19593CC(v38 + 24, v53);
          }

          v54 = *(v52 + 40);
          if (v54 && (v55 = *(v52 + 32), v55 < *v54))
          {
            *(v52 + 32) = v55 + 1;
            v56 = *&v54[2 * v55 + 2];
          }

          else
          {
            sub_1915FA8(*(v52 + 24));
            v56 = sub_19593CC(v52 + 24, v57);
          }

          v56[41].i32[0] = 3;
          v56[2] = vorr_s8(v56[2], 0x2000000004);
          v58 = v56[6];
          if (!v58)
          {
            v59 = v56[1];
            v60 = (*&v59 & 0xFFFFFFFFFFFFFFFCLL);
            if (v59.i8[0])
            {
              v60 = *v60;
            }

            v58 = sub_1914EA0(v60);
            v56[6] = v58;
          }

          *(v58 + 4) |= 1u;
          v58[3] = 402336;
          v61 = *(v52 + 40);
          if (v61 && (v62 = *(v52 + 32), v62 < *v61))
          {
            *(v52 + 32) = v62 + 1;
            v63 = *&v61[2 * v62 + 2];
          }

          else
          {
            sub_1915FA8(*(v52 + 24));
            v63 = sub_19593CC(v52 + 24, v64);
          }

          v63[41].i32[0] = 16;
          v63[2] = vorr_s8(v63[2], 0x2000008000);
          if (!*&v63[19])
          {
            v65 = v63[1];
            v66 = (*&v65 & 0xFFFFFFFFFFFFFFFCLL);
            if (v65.i8[0])
            {
              v66 = *v66;
            }

            v63[19] = sub_19156AC(v66);
          }

          v67 = *(v52 + 40);
          if (v67 && (v68 = *(v52 + 32), v68 < *v67))
          {
            *(v52 + 32) = v68 + 1;
            v69 = *&v67[2 * v68 + 2];
          }

          else
          {
            sub_1915FA8(*(v52 + 24));
            v69 = sub_19593CC(v52 + 24, v70);
          }

          *(v69 + 328) = 6;
          *(v69 + 16) |= 0x2000000020uLL;
          v71 = *(v69 + 72);
          if (!v71)
          {
            v72 = *(v69 + 8);
            v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
            if (v72)
            {
              v73 = *v73;
            }

            v71 = sub_1915034(v73);
            *(v69 + 72) = v71;
          }

          *(v71 + 16) |= 1u;
          *(v71 + 24) = 3;
          v74 = *(v38 + 40);
          if (v74 && (v75 = *(v38 + 32), v75 < *v74))
          {
            *(v38 + 32) = v75 + 1;
            v76 = *&v74[2 * v75 + 2];
          }

          else
          {
            v77 = sub_1916050(*(v38 + 24));
            v76 = sub_19593CC(v38 + 24, v77);
          }

          v78 = *(v76 + 40);
          if (v78 && (v79 = *(v76 + 32), v79 < *v78))
          {
            *(v76 + 32) = v79 + 1;
            v80 = *&v78[2 * v79 + 2];
          }

          else
          {
            sub_1915FA8(*(v76 + 24));
            v80 = sub_19593CC(v76 + 24, v81);
          }

          v80[41].i32[0] = 5;
          v80[2] = vorr_s8(v80[2], 0x2000000010);
          v82 = v80[8];
          if (!v82)
          {
            v83 = v80[1];
            v84 = (*&v83 & 0xFFFFFFFFFFFFFFFCLL);
            if (v83.i8[0])
            {
              v84 = *v84;
            }

            v82 = sub_1914F90(v84);
            v80[8] = v82;
          }

          v85 = *(v82 + 24);
          if (v85 == *(v82 + 28))
          {
            sub_1958E5C((v82 + 24), v85 + 1);
            *(*(v82 + 32) + 4 * v85) = 6;
            v86 = v80[8];
            *(v82 + 24) = v85 + 1;
            v80[2].i32[0] |= 0x10u;
            v82 = v86;
            if (!v86)
            {
              v87 = v80[1];
              v88 = (*&v87 & 0xFFFFFFFFFFFFFFFCLL);
              if (v87.i8[0])
              {
                v88 = *v88;
              }

              v82 = sub_1914F90(v88);
              v80[8] = v82;
            }
          }

          else
          {
            *(*(v82 + 32) + 4 * v85) = 6;
            *(v82 + 24) = v85 + 1;
            v80[2].i32[0] |= 0x10u;
          }

          v89 = *(v82 + 24);
          if (v89 == *(v82 + 28))
          {
            sub_1958E5C((v82 + 24), v89 + 1);
            *(*(v82 + 32) + 4 * v89) = 5;
            v90 = v80[8];
            *(v82 + 24) = v89 + 1;
            v80[2].i32[0] |= 0x10u;
            v82 = v90;
            if (!v90)
            {
              v91 = v80[1];
              v92 = (*&v91 & 0xFFFFFFFFFFFFFFFCLL);
              if (v91.i8[0])
              {
                v92 = *v92;
              }

              v82 = sub_1914F90(v92);
              v80[8] = v82;
            }
          }

          else
          {
            *(*(v82 + 32) + 4 * v89) = 5;
            *(v82 + 24) = v89 + 1;
            v80[2].i32[0] |= 0x10u;
          }

          v93 = *(v82 + 24);
          if (v93 == *(v82 + 28))
          {
            sub_1958E5C((v82 + 24), v93 + 1);
            *(*(v82 + 32) + 4 * v93) = 2;
            v94 = v80[8];
            *(v82 + 24) = v93 + 1;
            v80[2].i32[0] |= 0x10u;
            v82 = v94;
            if (!v94)
            {
              v95 = v80[1];
              v96 = (*&v95 & 0xFFFFFFFFFFFFFFFCLL);
              if (v95.i8[0])
              {
                v96 = *v96;
              }

              v82 = sub_1914F90(v96);
              v80[8] = v82;
            }
          }

          else
          {
            *(*(v82 + 32) + 4 * v93) = 2;
            *(v82 + 24) = v93 + 1;
            v80[2].i32[0] |= 0x10u;
          }

          v97 = *(v82 + 24);
          if (v97 == *(v82 + 28))
          {
            sub_1958E5C((v82 + 24), v97 + 1);
            *(*(v82 + 32) + 4 * v97) = 3;
            v98 = v80[8];
            *(v82 + 24) = v97 + 1;
            v80[2].i32[0] |= 0x10u;
            v82 = v98;
            if (!v98)
            {
              v99 = v80[1];
              v100 = (*&v99 & 0xFFFFFFFFFFFFFFFCLL);
              if (v99.i8[0])
              {
                v100 = *v100;
              }

              v82 = sub_1914F90(v100);
              v80[8] = v82;
            }
          }

          else
          {
            *(*(v82 + 32) + 4 * v97) = 3;
            *(v82 + 24) = v97 + 1;
            v80[2].i32[0] |= 0x10u;
          }

          *(v82 + 16) |= 1u;
          *(v82 + 64) = 2;
          v101 = *(v38 + 40);
          if (v101 && (v102 = *(v38 + 32), v102 < *v101))
          {
            *(v38 + 32) = v102 + 1;
            v103 = *&v101[2 * v102 + 2];
          }

          else
          {
            v104 = sub_1916050(*(v38 + 24));
            v103 = sub_19593CC(v38 + 24, v104);
          }

          *(v103 + 16) |= 1u;
          *(v103 + 48) = 1;
          v105 = *(v103 + 40);
          if (v105 && (v106 = *(v103 + 32), v106 < *v105))
          {
            *(v103 + 32) = v106 + 1;
            v107 = *&v105[2 * v106 + 2];
          }

          else
          {
            sub_1915FA8(*(v103 + 24));
            v107 = sub_19593CC(v103 + 24, v108);
          }

          *(v107 + 16) |= 0x2000u;
          v109 = *(v107 + 136);
          if (!v109)
          {
            v110 = *(v107 + 8);
            v111 = (v110 & 0xFFFFFFFFFFFFFFFCLL);
            if (v110)
            {
              v111 = *v111;
            }

            v109 = sub_19155B4(v111);
            *(v107 + 136) = v109;
          }

          *(v109 + 16) |= 1u;
          *(v109 + 24) = 0;
          v112 = *(v107 + 20);
          *(v107 + 328) = 14;
          *(v107 + 20) = v112 | 0x30;
          v113 = *(v107 + 320);
          if (!v113)
          {
            v114 = *(v107 + 8);
            v115 = (v114 & 0xFFFFFFFFFFFFFFFCLL);
            if (v114)
            {
              v115 = *v115;
            }

            sub_1915FA8(v115);
            v113 = v116;
            *(v107 + 320) = v116;
          }

          *(v113 + 16) |= 0x80u;
          if (*(v113 + 88))
          {
            *(v107 + 20) |= 0x10u;
          }

          else
          {
            v117 = *(v113 + 8);
            v118 = (v117 & 0xFFFFFFFFFFFFFFFCLL);
            if (v117)
            {
              v118 = *v118;
            }

            *(v113 + 88) = sub_191512C(v118);
            v113 = *(v107 + 320);
            *(v107 + 20) |= 0x10u;
            if (!v113)
            {
              v119 = *(v107 + 8);
              v120 = (v119 & 0xFFFFFFFFFFFFFFFCLL);
              if (v119)
              {
                v120 = *v120;
              }

              sub_1915FA8(v120);
              v113 = v121;
              *(v107 + 320) = v121;
            }
          }

          *(v113 + 20) |= 0x20u;
          *(v113 + 328) = 8;
          v12 = __p;
        }

        if (v12)
        {
          v127 = v12;
          operator delete(v12);
        }
      }

      sub_18C5DD8(v129);
      ++v7;
    }

    while (v7 != v9);
  }
}

void sub_1E1F4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  if (__p)
  {
    operator delete(__p);
  }

  sub_18C5DD8(va);
  _Unwind_Resume(a1);
}

void sub_1E1F548(uint64_t a1)
{
  *(a1 + 40) |= 4u;
  v2 = *(a1 + 136);
  if (!v2)
  {
    v3 = *(a1 + 8);
    v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
    if (v3)
    {
      v4 = *v4;
    }

    sub_191637C(v4);
    v2 = v5;
    *(a1 + 136) = v5;
  }

  *(v2 + 16) |= 1u;
  *(v2 + 72) = 1;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v101 = 0u;
  v102 = 0u;
  v103 = 1065353216;
  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = &v7[v8];
    do
    {
      sub_18C5D14(v98, *v7);
      if (v100)
      {
        v10 = (v100 + 8);
      }

      else
      {
        v10 = 0;
      }

      if (v99)
      {
        v11 = 8 * v99;
        do
        {
          sub_1402294(v95, *v10);
          if ((v96 & 0x20) != 0)
          {
            v94 = *(v97 + 64);
            sub_1A7AAB4(&v104, &v94);
            v12 = v97;
            if (!v97)
            {
              v12 = &off_276F940;
            }

            LODWORD(v94) = *(v12 + 22);
            sub_1E22A38(&v101, &v94, &v94);
          }

          sub_140254C(v95);
          ++v10;
          v11 -= 8;
        }

        while (v11);
      }

      sub_18C5DD8(v98);
      ++v7;
    }

    while (v7 != v9);
    if (v105 != v104)
    {
      v13 = *(v2 + 40);
      if (v13 && (v14 = *(v2 + 32), v14 < *v13))
      {
        *(v2 + 32) = v14 + 1;
        v15 = *&v13[2 * v14 + 2];
      }

      else
      {
        v16 = sub_1916234(*(v2 + 24));
        v15 = sub_19593CC(v2 + 24, v16);
      }

      *(v15 + 16) |= 1u;
      v17 = *(v15 + 64);
      if (!v17)
      {
        v18 = *(v15 + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v17 = sub_19160EC(v19);
        *(v15 + 64) = v17;
      }

      *(v17 + 4) |= 1u;
      v20 = v17[1];
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      sub_10DF26C(v17 + 6, "default", v21);
      v22 = v104;
      for (i = v105; v22 != i; ++v22)
      {
        v24 = *v22;
        v25 = *(v15 + 40);
        if (v25 && (v26 = *(v15 + 32), v26 < *v25))
        {
          *(v15 + 32) = v26 + 1;
          v27 = *&v25[2 * v26 + 2];
        }

        else
        {
          v28 = sub_191BA60(*(v15 + 24));
          v27 = sub_19593CC(v15 + 24, v28);
        }

        *(v27 + 40) |= 1u;
        v29 = *(v27 + 48);
        if (!v29)
        {
          v30 = *(v27 + 8);
          v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
          if (v30)
          {
            v31 = *v31;
          }

          sub_191B9D8(v31);
          *(v27 + 48) = v29;
        }

        v32 = *(v29 + 16);
        *(v29 + 32) = v24;
        *(v29 + 16) = v32 | 0xA;
        *(v29 + 48) = 6489;
      }

      *(v15 + 16) |= 1u;
      v33 = *(v15 + 64);
      if (!v33)
      {
        v34 = *(v15 + 8);
        v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
        if (v34)
        {
          v35 = *v35;
        }

        v33 = sub_19160EC(v35);
        *(v15 + 64) = v33;
      }

      v36 = v33[5];
      if (v36 && (v37 = *(v33 + 8), v37 < *v36))
      {
        *(v33 + 8) = v37 + 1;
        v38 = *&v36[2 * v37 + 2];
      }

      else
      {
        v39 = sub_1916190(v33[3]);
        v38 = sub_19593CC((v33 + 3), v39);
      }

      *(v38 + 16) |= 1u;
      *(v38 + 64) = 3;
      v40 = *(v38 + 40);
      if (v40 && (v41 = *(v38 + 32), v41 < *v40))
      {
        *(v38 + 32) = v41 + 1;
        v42 = *&v40[2 * v41 + 2];
      }

      else
      {
        v43 = sub_1916050(*(v38 + 24));
        v42 = sub_19593CC(v38 + 24, v43);
      }

      v44 = *(v42 + 40);
      if (v44 && (v45 = *(v42 + 32), v45 < *v44))
      {
        *(v42 + 32) = v45 + 1;
        v46 = *&v44[2 * v45 + 2];
      }

      else
      {
        sub_1915FA8(*(v42 + 24));
        v46 = sub_19593CC(v42 + 24, v47);
      }

      v46[41].i32[0] = 17;
      v46[2] = vorr_s8(v46[2], 0x2000010000);
      if (!*&v46[20])
      {
        v48 = v46[1];
        v49 = (*&v48 & 0xFFFFFFFFFFFFFFFCLL);
        if (v48.i8[0])
        {
          v49 = *v49;
        }

        v46[20] = sub_1915724(v49);
      }

      v50 = *(v38 + 40);
      if (v50 && (v51 = *(v38 + 32), v51 < *v50))
      {
        *(v38 + 32) = v51 + 1;
        v52 = *&v50[2 * v51 + 2];
      }

      else
      {
        v53 = sub_1916050(*(v38 + 24));
        v52 = sub_19593CC(v38 + 24, v53);
      }

      v54 = *(v52 + 40);
      if (v54 && (v55 = *(v52 + 32), v55 < *v54))
      {
        *(v52 + 32) = v55 + 1;
        v56 = *&v54[2 * v55 + 2];
      }

      else
      {
        sub_1915FA8(*(v52 + 24));
        v56 = sub_19593CC(v52 + 24, v57);
      }

      v56[41].i32[0] = 3;
      v56[2] = vorr_s8(v56[2], 0x2000000004);
      v58 = v56[6];
      if (!v58)
      {
        v59 = v56[1];
        v60 = (*&v59 & 0xFFFFFFFFFFFFFFFCLL);
        if (v59.i8[0])
        {
          v60 = *v60;
        }

        v58 = sub_1914EA0(v60);
        v56[6] = v58;
      }

      *(v58 + 4) |= 1u;
      v58[3] = 402336;
      v61 = *(v52 + 40);
      if (v61 && (v62 = *(v52 + 32), v62 < *v61))
      {
        *(v52 + 32) = v62 + 1;
        v63 = *&v61[2 * v62 + 2];
      }

      else
      {
        sub_1915FA8(*(v52 + 24));
        v63 = sub_19593CC(v52 + 24, v64);
      }

      v63[41].i32[0] = 16;
      v63[2] = vorr_s8(v63[2], 0x2000008000);
      if (!*&v63[19])
      {
        v65 = v63[1];
        v66 = (*&v65 & 0xFFFFFFFFFFFFFFFCLL);
        if (v65.i8[0])
        {
          v66 = *v66;
        }

        v63[19] = sub_19156AC(v66);
      }

      v67 = *(v52 + 40);
      if (v67 && (v68 = *(v52 + 32), v68 < *v67))
      {
        *(v52 + 32) = v68 + 1;
        v69 = *&v67[2 * v68 + 2];
      }

      else
      {
        sub_1915FA8(*(v52 + 24));
        v69 = sub_19593CC(v52 + 24, v70);
      }

      v69[41].i32[0] = 15;
      v69[2] = vorr_s8(v69[2], 0x2000004000);
      v71 = v69[18];
      if (!v71)
      {
        v72 = v69[1];
        v73 = (*&v72 & 0xFFFFFFFFFFFFFFFCLL);
        if (v72.i8[0])
        {
          v73 = *v73;
        }

        v71 = sub_1915630(v73);
        v69[18] = v71;
      }

      *(v71 + 16) |= 1u;
      *(v71 + 24) = 4;
      v69[2].i32[1] |= 0x10u;
      v74 = v69[40];
      if (!*&v74)
      {
        v75 = v69[1];
        v76 = (*&v75 & 0xFFFFFFFFFFFFFFFCLL);
        if (v75.i8[0])
        {
          v76 = *v76;
        }

        sub_1915FA8(v76);
        v74 = v77;
        v69[40] = v77;
      }

      *(*&v74 + 20) |= 0x20u;
      *(*&v74 + 328) = 18;
      v69[2].i32[1] |= 0x10u;
      *(*&v74 + 16) |= 0x20000u;
      if (!*(*&v74 + 168))
      {
        v78 = *(*&v74 + 8);
        v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
        if (v78)
        {
          v79 = *v79;
        }

        *(*&v74 + 168) = sub_191579C(v79);
      }

      v80 = *(v38 + 40);
      if (v80 && (v81 = *(v38 + 32), v81 < *v80))
      {
        *(v38 + 32) = v81 + 1;
        v82 = *&v80[2 * v81 + 2];
      }

      else
      {
        v83 = sub_1916050(*(v38 + 24));
        v82 = sub_19593CC(v38 + 24, v83);
      }

      *(v82 + 16) |= 1u;
      *(v82 + 48) = 1;
      v84 = *(v82 + 40);
      if (v84 && (v85 = *(v82 + 32), v85 < *v84))
      {
        *(v82 + 32) = v85 + 1;
        v86 = *&v84[2 * v85 + 2];
      }

      else
      {
        sub_1915FA8(*(v82 + 24));
        v86 = sub_19593CC(v82 + 24, v87);
      }

      v86[41].i32[0] = 14;
      v86[2] = vorr_s8(v86[2], 0x2000002000);
      v88 = v86[17];
      if (!v88)
      {
        v89 = v86[1];
        v90 = (*&v89 & 0xFFFFFFFFFFFFFFFCLL);
        if (v89.i8[0])
        {
          v90 = *v90;
        }

        v88 = sub_19155B4(v90);
        v86[17] = v88;
      }

      *(v88 + 16) |= 1u;
      *(v88 + 24) = 0;
      v91 = v102;
      if (v102)
      {
        v92 = *(v15 + 48);
        do
        {
          v93 = *(v91 + 4);
          if (v92 == *(v15 + 52))
          {
            sub_1958E5C((v15 + 48), v92 + 1);
          }

          *(*(v15 + 56) + 4 * v92++) = v93;
          *(v15 + 48) = v92;
          v91 = *v91;
        }

        while (v91);
      }
    }
  }

  sub_11BD8(&v101);
  if (v104)
  {
    v105 = v104;
    operator delete(v104);
  }
}

void sub_1E1FD3C(_Unwind_Exception *a1)
{
  sub_11BD8(v1 - 128);
  v3 = *(v1 - 88);
  if (v3)
  {
    *(v1 - 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void *sub_1E1FDB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[24];
  if (!v2)
  {
    v2 = &off_278AB30;
  }

  v3 = v2[16];
  if (!v3)
  {
    v3 = &off_278A328;
  }

  v4 = v3[11];
  if (!v4)
  {
    v4 = &off_278A060;
  }

  v5 = v4[13] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    return sub_325C(a2, *v5, *(v5 + 8));
  }

  v6 = *v5;
  *(a2 + 16) = *(v5 + 16);
  *a2 = v6;
  return result;
}

void *sub_1E1FE1C(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 192);
  if (!v3)
  {
    v3 = &off_278AB30;
  }

  v4 = v3[16];
  if (!v4)
  {
    v4 = &off_278A328;
  }

  if ((v4[5] & 8) == 0)
  {
    goto LABEL_15;
  }

  sub_18CC4C4(v9, v4[11]);
  if (!v10)
  {
LABEL_14:
    result = sub_18CC6C4(v9);
LABEL_15:
    *(v2 + 10) |= 0x40000u;
    *(v2 + 46) = 0;
    return result;
  }

  v5 = v11;
  v6 = 4 * v10;
  v7 = v6;
  v8 = v11;
  while (*v8 != 2)
  {
    ++v8;
    v7 -= 4;
    if (!v7)
    {
      while (*v5 != 4)
      {
        ++v5;
        v6 -= 4;
        if (!v6)
        {
          goto LABEL_14;
        }
      }

      break;
    }
  }

  *(v2 + 10) |= 0x40000u;
  *(v2 + 46) = 4;
  return sub_18CC6C4(v9);
}

void *sub_1E1FF04(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 192);
  if (!v3)
  {
    v3 = &off_278AB30;
  }

  v4 = v3[16];
  if (!v4)
  {
    v4 = &off_278A328;
  }

  if ((v4[5] & 8) == 0)
  {
    goto LABEL_11;
  }

  sub_18CC4C4(v7, v4[11]);
  if (!v8)
  {
LABEL_10:
    result = sub_18CC6C4(v7);
LABEL_11:
    *(v2 + 10) |= 0x40000u;
    *(v2 + 46) = 0;
    return result;
  }

  v5 = v9;
  v6 = 4 * v8;
  while (*v5 != 3)
  {
    ++v5;
    v6 -= 4;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  *(v2 + 10) |= 0x40000u;
  *(v2 + 46) = 3;
  return sub_18CC6C4(v7);
}

uint64_t sub_1E1FFC8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 192);
  if (!v2)
  {
    v2 = &off_278AB30;
  }

  v3 = v2[16];
  if (!v3)
  {
    v3 = &off_278A328;
  }

  v4 = v3[11];
  if (!v4)
  {
    v4 = &off_278A060;
  }

  if (*(v4 + 17))
  {
    v5 = *(v4[21] + 8);
    *(a2 + 40) |= 0x100000u;
    *(a2 + 192) = v5;
  }

  return result;
}

void sub_1E20028(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 40);
  if (v8 && (v9 = *(a2 + 32), v9 < *v8))
  {
    *(a2 + 32) = v9 + 1;
    v10 = *&v8[2 * v9 + 2];
  }

  else
  {
    v11 = sub_14050A4(*(a2 + 24));
    v10 = sub_19593CC(a2 + 24, v11);
  }

  *(v10 + 40) |= 0x2000u;
  v12 = *(v10 + 152);
  if (!v12)
  {
    v13 = *(v10 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    v12 = sub_14049E0(v14);
    *(v10 + 152) = v12;
  }

  v15 = sub_1DED56C(a3);
  *(v12 + 16) |= 1u;
  *(v12 + 24) = v15;
  sub_1E1FFC8(a1, v10);
  *(v10 + 40) |= 0x800u;
  v16 = *(v10 + 136);
  if (!v16)
  {
    v17 = *(v10 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    v16 = sub_13AE3BC(v18);
    *(v10 + 136) = v16;
  }

  sub_1E1FDB0(a1, __p);
  *(v16 + 16) |= 1u;
  v19 = *(v16 + 8);
  v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
  if (v19)
  {
    v20 = *v20;
  }

  sub_194EA30((v16 + 24), __p, v20);
  if (v65 < 0)
  {
    operator delete(__p[0]);
  }

  *(v10 + 40) |= 0x10000u;
  *(v10 + 176) = 1;
  sub_1FDBA78(a1, v10, a3);
  *(v10 + 40) |= 0x10u;
  v21 = *(v10 + 80);
  if (!v21)
  {
    v22 = *(v10 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v21 = sub_1404D10(v23);
    *(v10 + 80) = v21;
  }

  v24 = sub_1DED574(a3);
  *(v21 + 40) |= 8u;
  *(v21 + 72) = v24;
  v25 = sub_1DED57C(a3);
  v26 = *(v21 + 40);
  *(v21 + 88) = v25;
  *(v21 + 40) = v26 | 0x21;
  v27 = *(v21 + 48);
  if (!v27)
  {
    v28 = *(v21 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    v27 = sub_16F5828(v29);
    *(v21 + 48) = v27;
  }

  v30 = *(sub_73EEC(a3) + 232);
  *(v27 + 40) |= 1u;
  *(v27 + 48) = v30;
  *(v21 + 40) |= 1u;
  v31 = *(v21 + 48);
  if (!v31)
  {
    v32 = *(v21 + 8);
    v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    if (v32)
    {
      v33 = *v33;
    }

    v31 = sub_16F5828(v33);
    *(v21 + 48) = v31;
  }

  v34 = *(sub_73EEC(a3) + 236);
  *(v31 + 40) |= 2u;
  *(v31 + 56) = v34;
  *(v21 + 40) |= 4u;
  v35 = *(v21 + 64);
  if (!v35)
  {
    v36 = *(v21 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    v35 = sub_191BA60(v37);
    *(v21 + 64) = v35;
  }

  *(v35 + 40) |= 1u;
  v38 = *(v35 + 48);
  if (!v38)
  {
    v39 = *(v35 + 8);
    v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      v40 = *v40;
    }

    sub_191B9D8(v40);
    v38 = v41;
    *(v35 + 48) = v41;
  }

  v42 = sub_1DED574(a3);
  *(v38 + 16) |= 2u;
  *(v38 + 32) = v42;
  *(v35 + 40) |= 1u;
  v43 = *(v35 + 48);
  if (!v43)
  {
    v44 = *(v35 + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    sub_191B9D8(v45);
    v43 = v46;
    *(v35 + 48) = v46;
  }

  *(v43 + 16) |= 1u;
  v47 = *(v43 + 24);
  if (!v47)
  {
    v48 = *(v43 + 8);
    v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
    if (v48)
    {
      v49 = *v49;
    }

    v47 = sub_16F5828(v49);
    *(v43 + 24) = v47;
  }

  v50 = *(sub_73EEC(a3) + 232);
  *(v47 + 40) |= 1u;
  *(v47 + 48) = v50;
  *(v35 + 40) |= 1u;
  v51 = *(v35 + 48);
  if (!v51)
  {
    v52 = *(v35 + 8);
    v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
    if (v52)
    {
      v53 = *v53;
    }

    sub_191B9D8(v53);
    v51 = v54;
    *(v35 + 48) = v54;
  }

  *(v51 + 16) |= 1u;
  v55 = *(v51 + 24);
  if (!v55)
  {
    v56 = *(v51 + 8);
    v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
    if (v56)
    {
      v57 = *v57;
    }

    v55 = sub_16F5828(v57);
    *(v51 + 24) = v55;
  }

  v58 = *(sub_73EEC(a3) + 236);
  *(v55 + 40) |= 2u;
  *(v55 + 56) = v58;
  *(v35 + 40) |= 1u;
  v59 = *(v35 + 48);
  if (!v59)
  {
    v60 = *(v35 + 8);
    v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
    if (v60)
    {
      v61 = *v61;
    }

    sub_191B9D8(v61);
    v59 = v62;
    *(v35 + 48) = v62;
  }

  v63 = sub_1DED57C(a3);
  *(v59 + 16) |= 8u;
  *(v59 + 48) = v63;
  if (sub_1DED8A4(a3))
  {
    sub_1E1FE1C(v10, a1);
  }

  sub_1C91CDC(a3, v10, a4);
}

void sub_1E204B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1E204D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_68DC70(a3);
  if (result[1] == *result)
  {
    return result;
  }

  v9 = *(a2 + 40);
  if (v9 && (v10 = *(a2 + 32), v10 < *v9))
  {
    *(a2 + 32) = v10 + 1;
    v11 = *&v9[2 * v10 + 2];
  }

  else
  {
    v12 = sub_14050A4(*(a2 + 24));
    v11 = sub_19593CC(a2 + 24, v12);
  }

  *(v11 + 40) |= 0x2000u;
  v13 = *(v11 + 152);
  if (!v13)
  {
    v14 = *(v11 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v13 = sub_14049E0(v15);
    *(v11 + 152) = v13;
  }

  v16 = sub_1DED524(a3);
  *(v13 + 16) |= 1u;
  *(v13 + 24) = v16;
  *(v11 + 40) |= 0x10000u;
  *(v11 + 176) = 2;
  sub_1E1FFC8(a1, v11);
  *(v11 + 40) |= 0x800u;
  v17 = *(v11 + 136);
  if (!v17)
  {
    v18 = *(v11 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v17 = sub_13AE3BC(v19);
    *(v11 + 136) = v17;
  }

  sub_1E1FDB0(a1, __p);
  *(v17 + 16) |= 1u;
  v20 = *(v17 + 8);
  v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
  if (v20)
  {
    v21 = *v21;
  }

  sub_194EA30((v17 + 24), __p, v21);
  if (SHIBYTE(v75) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1FDBBEC(a1, v11, a3, *(a4 + 976));
  *(v11 + 40) |= 0x20u;
  v22 = *(v11 + 88);
  if (!v22)
  {
    v23 = *(v11 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    v22 = sub_1404D6C(v24);
    *(v11 + 88) = v22;
  }

  v25 = sub_1DED064(a3);
  v26 = *(v25 + 23);
  v27 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v26 = *(v25 + 8);
  }

  if (v26)
  {
    v28 = dword_278D3C8;
    if (v27 < 0)
    {
      sub_325C(__p, *v25, *(v25 + 8));
    }

    else
    {
      v29 = *v25;
      v75 = *(v25 + 16);
      *__p = v29;
    }

    v30 = sub_1950AC0((v22 + 16), v28, 9, 0);
    v31 = v30;
    if (*(v30 + 23) < 0)
    {
      operator delete(*v30);
    }

    v32 = *__p;
    v31[2] = v75;
    *v31 = v32;
  }

  if (*sub_1DED05C(a3) == 1)
  {
    v33 = 0;
LABEL_37:
    sub_19500C0(v22 + 16, qword_278D400, 14, v33, 0);
    goto LABEL_38;
  }

  if (*sub_1DED05C(a3) == 2)
  {
    v33 = 1;
    goto LABEL_37;
  }

  if (*sub_1DED05C(a3) == 3)
  {
    v33 = 2;
    goto LABEL_37;
  }

LABEL_38:
  v34 = sub_1DED024(a3);
  *(v22 + 40) |= 4u;
  *(v22 + 64) = v34;
  sub_1DED54C(a3, __p);
  *(v22 + 40) |= 1u;
  v35 = *(v22 + 48);
  if (!v35)
  {
    v36 = *(v22 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    v35 = sub_16F5828(v37);
    *(v22 + 48) = v35;
  }

  *(v35 + 40) |= 1u;
  *(v22 + 40) |= 1u;
  *(v35 + 40) |= 2u;
  *(v35 + 48) = v76;
  v38 = *(sub_73EBC(a3) + 184);
  v39 = sub_73EBC(a3);
  v40 = *(v39 + 239);
  v41 = *(v39 + 224);
  sub_3608D0(v72, "");
  if ((v40 & 0x80u) == 0)
  {
    v42 = v40;
  }

  else
  {
    v42 = v41;
  }

  v43 = sub_20094E0(v38, v42 != 0, v72);
  v44 = *(v22 + 40) | 0x20;
  *(v22 + 40) = v44;
  *(v22 + 88) = v43;
  if (v73 < 0)
  {
    operator delete(v72[0]);
    v44 = *(v22 + 40);
  }

  *(v22 + 40) = v44 | 2;
  v45 = *(v22 + 56);
  if (!v45)
  {
    v46 = *(v22 + 8);
    v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
    if (v46)
    {
      v47 = *v47;
    }

    v45 = sub_191BA60(v47);
    *(v22 + 56) = v45;
  }

  *(v45 + 40) |= 1u;
  v48 = *(v45 + 48);
  if (!v48)
  {
    v49 = *(v45 + 8);
    v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
    if (v49)
    {
      v50 = *v50;
    }

    sub_191B9D8(v50);
    v48 = v51;
    *(v45 + 48) = v51;
  }

  v52 = sub_1DED024(a3);
  *(v48 + 16) |= 2u;
  *(v48 + 32) = v52;
  *(v45 + 40) |= 1u;
  v53 = *(v45 + 48);
  if (!v53)
  {
    v54 = *(v45 + 8);
    v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
    if (v54)
    {
      v55 = *v55;
    }

    sub_191B9D8(v55);
    v53 = v56;
    *(v45 + 48) = v56;
  }

  *(v53 + 16) |= 1u;
  v57 = *(v53 + 24);
  if (!v57)
  {
    v58 = *(v53 + 8);
    v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
    if (v58)
    {
      v59 = *v59;
    }

    v57 = sub_16F5828(v59);
    *(v53 + 24) = v57;
    v53 = *(v45 + 48);
  }

  v60 = v76;
  *(v57 + 40) |= 1u;
  *(v57 + 48) = v60;
  *(v45 + 40) |= 1u;
  if (!v53)
  {
    v61 = *(v45 + 8);
    v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
    if (v61)
    {
      v62 = *v62;
    }

    sub_191B9D8(v62);
    v53 = v63;
    *(v45 + 48) = v63;
  }

  *(v53 + 16) |= 1u;
  v64 = *(v53 + 24);
  if (!v64)
  {
    v65 = *(v53 + 8);
    v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
    if (v65)
    {
      v66 = *v66;
    }

    v64 = sub_16F5828(v66);
    *(v53 + 24) = v64;
    v53 = *(v45 + 48);
  }

  v67 = *(&v76 + 1);
  *(v64 + 40) |= 2u;
  *(v64 + 56) = v67;
  *(v45 + 40) |= 1u;
  if (!v53)
  {
    v68 = *(v45 + 8);
    v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
    if (v68)
    {
      v69 = *v69;
    }

    sub_191B9D8(v69);
    v53 = v70;
    *(v45 + 48) = v70;
  }

  v71 = sub_1DED02C(a3);
  *(v53 + 16) |= 8u;
  *(v53 + 48) = v71;
  if (sub_1DED474(a3))
  {
    sub_1E1FE1C(v11, a1);
  }

  else
  {
    sub_1E1FF04(v11, a1);
  }

  sub_1C91B44(a3, v11, a4);
  return sub_16E4E08(__p);
}

void sub_1E20A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1E20AD4@<X0>(uint64_t a1@<X8>)
{
  sub_167E624(v10, 0, 0);
  if (v13 && v12 < *v13)
  {
    v2 = &v13[2 * v12++];
    v3 = *(v2 + 1);
  }

  else
  {
    v4 = sub_167EB30(v11);
    v3 = sub_19593CC(&v11, v4);
  }

  *(v3 + 16) |= 1u;
  v5 = *(v3 + 8);
  v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
  if (v5)
  {
    v6 = *v6;
  }

  sub_10DF26C((v3 + 24), "LAT_LNG_QS", v6);
  *(v3 + 16) |= 2u;
  v7 = *(v3 + 8);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
  if (v7)
  {
    v8 = *v8;
  }

  sub_10DF26C((v3 + 32), "true", v8);
  sub_1957E24(v10, a1);
  return sub_167E6D8(v10);
}

uint64_t sub_1E20BDC(uint64_t *a1, uint64_t a2, double *a3)
{
  nullsub_1();
  v6 = v5;
  v7 = *(a2 + 40);
  if (v7 && (v8 = *(a2 + 32), v8 < *v7))
  {
    *(a2 + 32) = v8 + 1;
    v9 = *&v7[2 * v8 + 2];
  }

  else
  {
    v10 = sub_14050A4(*(a2 + 24));
    v9 = sub_19593CC(a2 + 24, v10);
  }

  *(v9 + 40) |= 0x10000u;
  *(v9 + 176) = 0;
  v11 = sub_1D365A4(*a1);
  sub_1E1FFC8(v11, v9);
  *(v9 + 40) |= 0x800u;
  v12 = *(v9 + 136);
  if (!v12)
  {
    v13 = *(v9 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    v12 = sub_13AE3BC(v14);
    *(v9 + 136) = v12;
  }

  v15 = sub_1D365A4(*a1);
  sub_1E1FDB0(v15, __p);
  *(v12 + 16) |= 1u;
  v16 = *(v12 + 8);
  v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
  if (v16)
  {
    v17 = *v17;
  }

  sub_194EA30((v12 + 24), __p, v17);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1E20AD4(&__dst);
  v18 = dword_278D328;
  if (SHIBYTE(v69) < 0)
  {
    sub_325C(__p, __dst, *(&__dst + 1));
  }

  else
  {
    *__p = __dst;
    v60 = v69;
  }

  v19 = sub_1950AC0((v9 + 16), v18, 12, 0);
  v20 = v19;
  if (*(v19 + 23) < 0)
  {
    operator delete(*v19);
  }

  v21 = *__p;
  *(v20 + 2) = v60;
  *v20 = v21;
  if (SHIBYTE(v69) < 0)
  {
    operator delete(__dst);
  }

  *(v9 + 40) |= 0x40000u;
  *(v9 + 184) = 3;
  sub_D7B0(__p);
  v22 = std::ostream::operator<<();
  LOBYTE(__dst) = 44;
  sub_4A5C(v22, &__dst, 1);
  std::ostream::operator<<();
  if ((v67 & 0x10) != 0)
  {
    v24 = v66;
    if (v66 < v63)
    {
      v66 = v63;
      v24 = v63;
    }

    locale = v62[4].__locale_;
  }

  else
  {
    if ((v67 & 8) == 0)
    {
      v23 = 0;
      HIBYTE(v69) = 0;
      goto LABEL_33;
    }

    locale = v62[1].__locale_;
    v24 = v62[3].__locale_;
  }

  v23 = v24 - locale;
  if ((v24 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v23 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v69) = v24 - locale;
  if (v23)
  {
    memmove(&__dst, locale, v23);
  }

LABEL_33:
  *(&__dst + v23) = 0;
  *(v9 + 40) |= 2u;
  v26 = *(v9 + 56);
  if (!v26)
  {
    v27 = *(v9 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    v26 = sub_1404AD4(v28);
    *(v9 + 56) = v26;
  }

  *(v26 + 4) |= 1u;
  v29 = v26[1];
  v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
  if (v29)
  {
    v30 = *v30;
  }

  sub_194EA1C(v26 + 6, &__dst, v30);
  *(v9 + 40) |= 8u;
  v31 = *(v9 + 72);
  if (!v31)
  {
    v32 = *(v9 + 8);
    v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    if (v32)
    {
      v33 = *v33;
    }

    v31 = sub_1404C68(v33);
    *(v9 + 72) = v31;
  }

  *(v31 + 4) |= 1u;
  v34 = v31[1];
  v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
  if (v34)
  {
    v35 = *v35;
  }

  sub_194EA1C(v31 + 6, &__dst, v35);
  *(v9 + 40) |= 8u;
  v36 = *(v9 + 72);
  if (!v36)
  {
    v37 = *(v9 + 8);
    v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
    if (v37)
    {
      v38 = *v38;
    }

    v36 = sub_1404C68(v38);
    *(v9 + 72) = v36;
  }

  *(v36 + 4) |= 4u;
  *(v36 + 16) = 0;
  sub_3608D0(&v58, "Show on Map");
  sub_3608D0(&__str, "localization_config");
  v39 = sub_19D52D4((v6 + 1216), &__str.__r_.__value_.__l.__data_);
  v40 = v39;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (!v40)
    {
      goto LABEL_64;
    }
  }

  else if (!v39)
  {
    goto LABEL_64;
  }

  v42 = v40[5];
  v41 = v40 + 5;
  if ((*(*v42 + 8))(v42))
  {
    goto LABEL_64;
  }

  sub_3608D0(v55, "ShowOnMap");
  sub_3608D0(v53, "ShowOnMap");
  sub_2032A7C(v41, v6, v55, v53, &__str);
  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__str.__r_.__value_.__l.__size_)
    {
LABEL_63:
      operator delete(__str.__r_.__value_.__l.__data_);
      goto LABEL_64;
    }

LABEL_62:
    std::string::operator=(&v58, &__str);
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  if (*(&__str.__r_.__value_.__s + 23))
  {
    goto LABEL_62;
  }

LABEL_64:
  *(v9 + 40) |= 4u;
  v43 = *(v9 + 64);
  if (!v43)
  {
    v44 = *(v9 + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    v43 = sub_1404AD4(v45);
    *(v9 + 64) = v43;
  }

  *(v43 + 4) |= 1u;
  v46 = v43[1];
  v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
  if (v46)
  {
    v47 = *v47;
  }

  v48 = sub_194DB04(v43 + 6, v47);
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = &v58;
  }

  else
  {
    v49 = v58.__r_.__value_.__r.__words[0];
  }

  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v58.__r_.__value_.__l.__size_;
  }

  std::string::append(v48, v49, size);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69) < 0)
  {
    operator delete(__dst);
  }

  v60 = v51;
  if (v65 < 0)
  {
    operator delete(v64);
  }

  std::locale::~locale(v62);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}