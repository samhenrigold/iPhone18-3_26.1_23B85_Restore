uint64_t sub_240B83DA0(char **a1, uint64_t a2, void *a3, uint64_t a4, unint64_t *a5)
{
  v8 = a2;
  v9 = a1;
  if (*(a2 + 24) == 1)
  {
    v10 = *a1;
    v11 = a1[1];
    if (*a1 == v11)
    {
      return 0;
    }

    v12 = 0;
    do
    {
      v13 = *v10;
      v14 = *(v10 + 1);
      if (v13)
      {
        v15 = (v8 + 76);
      }

      else
      {
        v15 = (*(v8 + 32) + 16 * *(*a3 + (v13 >> 1) + a4));
      }

      v16 = v15[1];
      if (v16 <= v14)
      {
        v19 = __clz(v14) ^ 0x1F;
        v20 = v19 - *v15;
        v22 = v15[2];
        v21 = v15[3];
        v23 = (v20 << (v21 + v22)) + v16 + (((-1 << v19) + v14) >> (v19 - v22) << v21) + (((-1 << v19) + v14) & ~(-1 << v21));
        v17 = v19 - (v21 + v22);
        v18 = (v14 >> v21) & ~(-1 << (v19 - (v21 + v22)));
        v14 = v23;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      v24 = *(*v8 + 24 * *(*a3 + (v13 >> 1) + a4)) + 48 * ((((v13 << 31) >> 31) & *(v8 + 68)) + v14);
      v25 = *(v24 + 42);
      LODWORD(v24) = *(v24 + 40);
      *(a5[3] + (*a5 >> 3)) = (((v18 << v24) | v25) << (*a5 & 7)) | *(a5[3] + (*a5 >> 3));
      *a5 += v17 + v24;
      v12 += v17;
      v10 += 8;
    }

    while (v10 != v11);
    return v12;
  }

  v96 = 0;
  v97 = 0;
  v98 = 0;
  memset(__p, 0, sizeof(__p));
  v26 = a1[1] - *a1;
  v27 = v26 >> 3;
  if (v26)
  {
    if (!(v27 >> 61))
    {
      sub_240B299F4(v27);
    }

    sub_240B228BC();
  }

  sub_240B844BC(__p, v27);
  v93 = v8;
  v94 = 0;
  v28 = v9[1] - *v9;
  v29 = v28 >> 3;
  v92 = v9;
  if ((*(v8 + 64) & 1) != 0 || a3[1] - *a3 > 1uLL)
  {
    if (v29 >= 1)
    {
      v30 = 0;
      v12 = 0;
      v87 = 0;
      v89 = (v8 + 76);
      v90 = a3;
      v31 = (v28 >> 3) & 0x7FFFFFFF;
      v32 = v31 + 1;
      v33 = 2 * v31;
      LODWORD(v34) = 1245184;
      v91 = a4;
      do
      {
        v35 = &(*v9)[v33];
        v36 = *a3;
        v38 = *(v35 - 2);
        v37 = *(v35 - 1);
        v39 = *(v36 + (v38 >> 1) + a4);
        v40 = v89;
        if ((v38 & 1) == 0)
        {
          v40 = (*(v8 + 32) + 16 * v39);
        }

        v41 = v40[1];
        if (v41 <= v37)
        {
          v43 = __clz(v37) ^ 0x1F;
          v44 = (-1 << v43) + v37;
          v45 = v43 - *v40;
          v47 = v40[2];
          v46 = v40[3];
          v48 = v46 + v47;
          v49 = (v45 << (v46 + v47)) + v41 + (v44 >> (v43 - v47) << v46);
          v50 = v44 & ~(-1 << v46);
          v51 = v37 >> v46;
          v37 = v49 + v50;
          v42 = v43 - v48;
          v88 = v51 & ~(-1 << (v43 - v48));
        }

        else
        {
          v42 = 0;
          v88 = 0;
        }

        v52 = *(v8 + 68);
        v53 = *(*v8 + 24 * v39);
        if (v42)
        {
          if ((v42 + v87) >= 0x39)
          {
            sub_240B495E8(&v96, &v94);
            v99 = v87;
            sub_240B290C0(__p, &v99);
            v87 = 0;
            v30 = 0;
          }

          v30 = (v30 << v42) | v88;
          v94 = v30;
          v87 += v42;
        }

        v54 = (v53 + 48 * ((((v38 << 31) >> 31) & v52) + v37));
        v55 = v34 >> 20;
        v56 = *v54;
        LODWORD(v57) = WORD1(v34);
        if (v34 >> 20 >= v56)
        {
          v57 = v57;
        }

        else
        {
          v57 = v34;
        }

        v58 = (*(v54 + 4) * v57) >> 44;
        v59 = *(*(v54 + 1) + 2 * (v57 - v58 * v56));
        if (v55 >= v56)
        {
          v60 = v34;
        }

        else
        {
          v60 = 0;
        }

        if (v55 >= v56)
        {
          v9 = v92;
          if ((v87 - 41) <= 0xFFFFFFFFFFFFFFC6)
          {
            sub_240B495E8(&v96, &v94);
            v99 = v87;
            sub_240B290C0(__p, &v99);
            v87 = 0;
            v30 = 0;
            v9 = v92;
          }

          v30 = v60 | (v30 << 16);
          v94 = v30;
          v87 += 16;
        }

        else
        {
          v9 = v92;
        }

        LODWORD(v34) = v59 + (v58 << 12);
        v12 += v42;
        --v32;
        v33 -= 2;
        v8 = v93;
        a3 = v90;
        a4 = v91;
      }

      while (v32 > 1);
      goto LABEL_65;
    }
  }

  else if (v29 >= 1)
  {
    v30 = 0;
    v12 = 0;
    v87 = 0;
    v61 = (v28 >> 3) & 0x7FFFFFFF;
    v62 = v61 + 1;
    v63 = 8 * v61 - 4;
    LODWORD(v34) = 1245184;
    do
    {
      v64 = *(v8 + 32);
      v65 = *(*v9 + v63);
      v66 = v64[1];
      if (v66 <= v65)
      {
        v69 = __clz(v65) ^ 0x1F;
        v70 = v64[2];
        v71 = v64[3];
        v68 = (**v8 + 48 * (((v69 - *v64) << (v71 + v70)) + v66 + (((-1 << v69) + v65) & ~(-1 << v71)) + (((-1 << v69) + v65) >> (v69 - v70) << v71)));
        v67 = v69 - (v71 + v70);
        if (v69 == v71 + v70)
        {
          v67 = 0;
        }

        else
        {
          if ((v87 + v67) >= 0x39)
          {
            sub_240B495E8(&v96, &v94);
            v99 = v87;
            sub_240B290C0(__p, &v99);
            v87 = 0;
            v30 = 0;
          }

          v30 = (v30 << v67) | (v65 >> v71) & ~(-1 << v67);
          v94 = v30;
          v87 += v67;
        }

        v9 = v92;
      }

      else
      {
        v67 = 0;
        v68 = (**v8 + 48 * v65);
      }

      v72 = v34 >> 20;
      v73 = *v68;
      LODWORD(v74) = WORD1(v34);
      if (v34 >> 20 >= v73)
      {
        v74 = v74;
      }

      else
      {
        v74 = v34;
      }

      v75 = (*(v68 + 4) * v74) >> 44;
      v76 = *(*(v68 + 1) + 2 * (v74 - v75 * v73));
      if (v72 >= v73)
      {
        v34 = v34;
      }

      else
      {
        v34 = 0;
      }

      if (v72 >= v73)
      {
        if ((v87 - 41) <= 0xFFFFFFFFFFFFFFC6)
        {
          sub_240B495E8(&v96, &v94);
          v99 = v87;
          sub_240B290C0(__p, &v99);
          v87 = 0;
          v30 = 0;
          v9 = v92;
        }

        v30 = v34 | (v30 << 16);
        v94 = v30;
        v87 += 16;
      }

      LODWORD(v34) = v76 + (v75 << 12);
      v12 += v67;
      --v62;
      v63 -= 8;
      v8 = v93;
    }

    while (v62 > 1);
    goto LABEL_65;
  }

  v30 = 0;
  v87 = 0;
  v12 = 0;
  LODWORD(v34) = 1245184;
LABEL_65:
  *(a5[3] + (*a5 >> 3)) = (v34 << (*a5 & 7)) | *(a5[3] + (*a5 >> 3));
  v77 = *a5;
  v78 = *a5 + 32;
  *a5 = v78;
  *(a5[3] + (v78 >> 3)) = (v30 << (v77 & 7)) | *(a5[3] + (v78 >> 3));
  v79 = *a5 + v87;
  *a5 = v79;
  v80 = v96;
  v81 = ((v97 - v96) >> 3);
  v82 = __p[0];
  while (v81 > 0)
  {
    v83 = &v82[v81];
    v84 = &v80[8 * v81--];
    v85 = *(v83 - 1);
    *(a5[3] + (v79 >> 3)) = (*(v84 - 1) << (v79 & 7)) | *(a5[3] + (v79 >> 3));
    v79 = *a5 + v85;
    *a5 = v79;
  }

  if (v82)
  {
    operator delete(v82);
  }

  if (v80)
  {
    operator delete(v80);
  }

  return v12;
}

void sub_240B84488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B844BC(void *a1, unint64_t a2)
{
  if (a1[2] - *a1 < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_240B228BC();
  }
}

void sub_240B84584(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7)
{
  sub_240B53650(v15, a5, 46 * ((*(a1 + 8) - *a1) >> 3) + 0x20000);
  v14 = sub_240B83DA0(a1, a2, a3, a4, a5);
  sub_240B536C8(v15, a5, a6, a7);
  if (a7)
  {
    *(a7 + 40 * a6 + 8) += v14;
  }
}

uint64_t sub_240B8464C(uint64_t result, uint64_t a2, _BYTE *a3, _BYTE *a4, char a5)
{
  *result = 0x400000002;
  *(result + 12) = 2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = -1;
  *(result + 48) = 256;
  *(result + 51) = 0;
  *(result + 50) = a5;
  v5 = *(a2 + 48);
  if (v5 < 3)
  {
    if (v5 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    *(result + 8) = v7;
  }

  else
  {
    *result = 1;
    *(result + 12) = v5 < 9;
    if (*(a2 + 56) < 3uLL)
    {
      v6 = 0;
    }

    else
    {
      if (v5 > 6)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      if (*(a2 + 68) != 1)
      {
        v6 = 0;
      }
    }

    *(result + 8) = v6;
    if (a3 != a4 && *a3 || v5 <= 5 && (*(a2 + 68) & 1) != 0)
    {
      *(result + 4) = 2;
    }

    else
    {
      *(result + 4) = 0;
    }
  }

  v8 = *(a2 + 56);
  if (v8)
  {
    *(result + 40) = 12;
    if (*(a2 + 352))
    {
      if (v5 >= 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

      if (v5 > 5)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      *(result + 8) = v10;
      if (v8 != 1)
      {
        *(result + 4) = 1;
        *(result + 48) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_240B8479C(void *a1, uint64_t a2, __int128 *a3, float *a4)
{
  if (!a1[11])
  {
    return 1;
  }

  v8 = *(a2 + 96);
  if (!v8)
  {
    v9 = *(a2 + 416);
    if (v9 == *(a2 + 424))
    {
      v8 = 0;
    }

    else
    {
      v8 = *v9;
    }
  }

  if (a1[12] != v8)
  {
    return 1;
  }

  v10 = *(a2 + 100);
  if (!v10)
  {
    v11 = *(a2 + 416);
    if (v11 == *(a2 + 424))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v11 + 4);
    }
  }

  if (a1[13] != v10)
  {
    return 1;
  }

  v76 = 0;
  sub_240B84FBC(v72, *(a2 + 88));
  sub_240B309B8(v66, v72);
  v12 = sub_240B29FC8(*(a2 + 272) == 1);
  if (!sub_240BADC90(a2, v12, a1 + 3, v66, &v76))
  {
    sub_240B23590(&v61, a1[12], a1[13]);
    v13 = v65;
    if (v65)
    {
      goto LABEL_54;
    }

    v57 = v61;
    v15 = v63;
    v63 = 0;
    v58 = v62;
    v59 = v15;
    v60 = v64;
    v16 = a1[11];
    v17 = *(v16 + 8);
    if (v17 < 8 || (v18 = *(v16 + 16), v18 <= 7))
    {
      if (v57)
      {
        v19 = DWORD1(v57);
        if (DWORD1(v57))
        {
          do
          {
            bzero(v15, 4 * v57);
            v15 = (v15 + v58);
            --v19;
          }

          while (v19);
        }
      }

LABEL_22:
      if (a4)
      {
        if (DWORD1(v57))
        {
          v20 = 0;
          v21 = v59;
          v22 = 0.0;
          do
          {
            v23 = v21;
            v24 = v57;
            if (v57)
            {
              do
              {
                v25 = *v23++;
                v26 = v25;
                if (v22 < v25)
                {
                  v22 = v26;
                }

                --v24;
              }

              while (v24);
            }

            ++v20;
            v21 = (v21 + v58);
          }

          while (v20 != DWORD1(v57));
        }

        else
        {
          v22 = 0.0;
        }

        *a4 = v22;
      }

      v15 = v59;
      v13 = 0;
      if (a3)
      {
        v34 = *a3;
        *a3 = v57;
        v57 = v34;
        v35 = v58;
        v36 = *(a3 + 3);
        v58 = *(a3 + 2);
        *(a3 + 2) = v35;
        *(a3 + 3) = v15;
        v15 = v36;
      }

      goto LABEL_49;
    }

    v27 = v76;
    sub_240B2A11C(v89, v17, v18);
    v13 = v91;
    if (v91)
    {
LABEL_49:
      v59 = 0;
      if (v15)
      {
        atomic_fetch_add(&qword_27E519020, -*(v15 - 3));
        free(*(v15 - 4));
      }

      if (!v65)
      {
        v37 = v63;
        v63 = 0;
        if (v37)
        {
          atomic_fetch_add(&qword_27E519020, -*(v37 - 3));
          free(*(v37 - 4));
        }
      }

      goto LABEL_54;
    }

    sub_240B2A358(v88, v89);
    atomic_exchange((v16 + 560), 1u);
    v13 = sub_240B71B98((v27 + 96), v16 + 24, (v16 + 440), (v16 + 568), v88);
    if (!v13)
    {
      atomic_store(0, (v16 + 560));
      v13 = sub_240B727E4(v16, v88, &v57);
      if (!v13)
      {
        v28 = *(v16 + 608);
        if (!v28 || (v29 = *(v28 + 8), v29 < 8) || (v30 = *(v28 + 16), v30 < 8))
        {
LABEL_37:
          v13 = 0;
          goto LABEL_38;
        }

        sub_240B2A11C(v85, v29, v30);
        v13 = v87;
        if (!v87)
        {
          sub_240B2A358(v84, v85);
          sub_240B725A0(v81, (v27 + 96));
          v13 = v83;
          if (v83)
          {
            for (i = 26; i != -4; i -= 10)
            {
              sub_240B22320(&v84[i]);
            }

            if (!v87)
            {
              v41 = v86;
              v42 = -120;
              do
              {
                sub_240B22320(v41);
                v41 -= 5;
                v42 += 40;
              }

              while (v42);
            }

            goto LABEL_38;
          }

          sub_240B2A358(v80, v81);
          v43 = *(v16 + 608);
          atomic_exchange((v43 + 560), 1u);
          v13 = sub_240B71B98(v80, v16 + 24, (v43 + 440), (*(v16 + 608) + 568), v84);
          if (v13)
          {
            for (j = 26; j != -4; j -= 10)
            {
              sub_240B22320(&v80[j]);
            }

            if (!v83)
            {
              v45 = v82;
              v46 = -120;
              do
              {
                sub_240B22320(v45);
                v45 -= 5;
                v46 += 40;
              }

              while (v46);
            }

            for (k = 26; k != -4; k -= 10)
            {
              sub_240B22320(&v84[k]);
            }

            if (!v87)
            {
              v48 = v86;
              v49 = -120;
              do
              {
                sub_240B22320(v48);
                v48 -= 5;
                v49 += 40;
              }

              while (v49);
            }

            goto LABEL_38;
          }

          atomic_store(0, (*(v16 + 608) + 560));
          v79 = 0;
          v77 = 0u;
          v78 = 0u;
          v13 = sub_240B727E4(*(v16 + 608), v84, &v77);
          v50 = *(&v78 + 1);
          if (!v13)
          {
            sub_240B73100(v78, *(&v78 + 1), &v57);
          }

          *(&v78 + 1) = 0;
          if (v50)
          {
            atomic_fetch_add(&qword_27E519020, -*(v50 - 24));
            free(*(v50 - 32));
          }

          for (m = 26; m != -4; m -= 10)
          {
            sub_240B22320(&v80[m]);
          }

          if (!v83)
          {
            v52 = v82;
            v53 = -120;
            do
            {
              sub_240B22320(v52);
              v52 -= 5;
              v53 += 40;
            }

            while (v53);
          }

          for (n = 26; n != -4; n -= 10)
          {
            sub_240B22320(&v84[n]);
          }

          if (!v87)
          {
            v55 = v86;
            v56 = -120;
            do
            {
              sub_240B22320(v55);
              v55 -= 5;
              v56 += 40;
            }

            while (v56);
          }

          if (v13)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }
      }
    }

LABEL_38:
    for (ii = 26; ii != -4; ii -= 10)
    {
      sub_240B22320(&v88[ii]);
    }

    if (!v91)
    {
      v32 = &v90;
      v33 = -120;
      do
      {
        sub_240B22320(v32);
        v32 -= 5;
        v33 += 40;
      }

      while (v33);
    }

    if (!v13)
    {
      goto LABEL_22;
    }

    v15 = v59;
    goto LABEL_49;
  }

  v13 = 1;
LABEL_54:
  v89[0] = &v71;
  sub_240B30C38(v89);
  v68 = &unk_2852A1CB8;
  if (__p)
  {
    v70 = __p;
    operator delete(__p);
  }

  for (jj = 25; jj != 10; jj -= 5)
  {
    sub_240B22320(&v66[jj]);
  }

  if (v67 < 0)
  {
    operator delete(v66[8]);
  }

  v39 = v66[0];
  v66[0] = 0;
  if (v39)
  {
    (*(*v39 + 1))(v39);
  }

  v72[0] = &unk_2852A1C90;
  v66[0] = &v75;
  sub_240B4B18C(v66);
  v72[6] = &unk_2852A1CB8;
  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  return v13;
}

void sub_240B84E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, ...)
{
  v22 = STACK[0x3E8];
  STACK[0x3E8] = 0;
  if (v22)
  {
    atomic_fetch_add(&qword_27E519020, -*(v22 - 24));
    free(*(v22 - 32));
  }

  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&STACK[0x3F8] + i));
  }

  if (!LODWORD(STACK[0x4E8]))
  {
    v24 = &STACK[0x4D8];
    v25 = -120;
    do
    {
      sub_240B22320(v24);
      v24 -= 5;
      v25 += 40;
    }

    while (v25);
  }

  for (j = 104; j != -16; j -= 40)
  {
    sub_240B22320((&STACK[0x4F0] + j));
  }

  if (!LODWORD(STACK[0x5E0]))
  {
    v27 = &STACK[0x5D0];
    v28 = -120;
    do
    {
      sub_240B22320(v27);
      v27 -= 5;
      v28 += 40;
    }

    while (v28);
  }

  for (k = 104; k != -16; k -= 40)
  {
    sub_240B22320((&STACK[0x5E8] + k));
  }

  if (!*(v20 - 72))
  {
    v30 = (v20 - 88);
    v31 = -120;
    do
    {
      sub_240B22320(v30);
      v30 -= 5;
      v31 += 40;
    }

    while (v31);
  }

  if (a12)
  {
    atomic_fetch_add(&qword_27E519020, -*(a12 - 24));
    free(*(a12 - 32));
  }

  if (!a20)
  {
    if (a18)
    {
      atomic_fetch_add(&qword_27E519020, -*(a18 - 24));
      free(*(a18 - 32));
    }
  }

  sub_240B51314(v32);
  sub_240B4B064(&STACK[0x220]);
  _Unwind_Resume(a1);
}

uint64_t sub_240B84FBC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2852A1C90;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = &unk_2852A1288;
  v4 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v4;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = &unk_2852A1CB8;
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 64);
  v6 = *(a2 + 69);
  *(a1 + 80) = 0;
  v7 = a1 + 80;
  *(a1 + 69) = v6;
  *(a1 + 64) = v5;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_240B28D90((a1 + 80), *(a2 + 80), *(a2 + 88), *(a2 + 88) - *(a2 + 80));
  v8 = *(a2 + 104);
  v9 = *(a2 + 120);
  v10 = *(a2 + 136);
  *(v7 + 72) = *(a2 + 152);
  *(v7 + 56) = v10;
  *(v7 + 40) = v9;
  *(v7 + 24) = v8;
  *(v7 + 80) = &unk_2852A1260;
  *(v7 + 88) = *(a2 + 168);
  *(v7 + 96) = &unk_2852A1A10;
  *(v7 + 104) = *(a2 + 184);
  *(v7 + 120) = &unk_2852A1260;
  *(v7 + 128) = *(a2 + 208);
  *(v7 + 136) = &unk_2852A1260;
  *(v7 + 144) = *(a2 + 224);
  *(v7 + 152) = &unk_2852A1260;
  *(v7 + 160) = *(a2 + 240);
  v11 = *(a2 + 248);
  *(v7 + 171) = *(a2 + 251);
  *(v7 + 168) = v11;
  *(v7 + 176) = &unk_2852A2248;
  v12 = *(a2 + 280);
  *(v7 + 184) = *(a2 + 264);
  *(v7 + 200) = v12;
  *(v7 + 208) = &unk_2852A21D0;
  v13 = *(a2 + 296);
  *(v7 + 232) = *(a2 + 312);
  *(v7 + 216) = v13;
  *(v7 + 240) = *(a2 + 320);
  *(v7 + 256) = 0;
  *(v7 + 264) = 0;
  *(v7 + 248) = 0;
  v14 = *(a2 + 328);
  v15 = *(a2 + 336);
  if (v15 != v14)
  {
    sub_240B4B5D4((v7 + 248), 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 5));
  }

  *(a1 + 352) = &unk_2852A1C68;
  v16 = *(a2 + 376);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 376) = v16;
  *(a1 + 384) = &unk_2852A1B40;
  v17 = *(a2 + 392);
  *(a1 + 397) = *(a2 + 397);
  *(a1 + 392) = v17;
  v18 = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 408) = v18;
  return a1;
}

void sub_240B852DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 336) = v12;
  sub_240B4B18C(&a9);
  *v13 = v10;
  v15 = *v11;
  if (*v11)
  {
    *(v9 + 88) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240B85310(void *a1, uint64_t a2)
{
  sub_240B84FBC(v15, *(a2 + 88));
  sub_240B309B8(v9, v15);
  v4 = sub_240B29FC8(*(a2 + 272) == 1);
  v19 = 0;
  if (!sub_240BADC90(a2, v4, a1 + 3, v9, &v19))
  {
    sub_240B7218C(&v8, (v19 + 96), (a1 + 1));
  }

  v8 = &v14;
  sub_240B30C38(&v8);
  v11 = &unk_2852A1CB8;
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  for (i = 25; i != 10; i -= 5)
  {
    sub_240B22320(&v9[i]);
  }

  if (v10 < 0)
  {
    operator delete(v9[8]);
  }

  v6 = v9[0];
  v9[0] = 0;
  if (v6)
  {
    (*(*v6 + 1))(v6);
  }

  v15[0] = &unk_2852A1C90;
  v9[0] = &v18;
  sub_240B4B18C(v9);
  v15[6] = &unk_2852A1CB8;
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  return 1;
}

void sub_240B85534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_240B51314(&a11);
  sub_240B4B064(&a65);
  _Unwind_Resume(a1);
}

void sub_240B8555C(void *a1)
{
  *a1 = &unk_2852A1960;
  v2 = a1[11];
  a1[11] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x245CCE590);
}

void *sub_240B855EC(void *a1)
{
  *a1 = &unk_2852A1960;
  v2 = a1[11];
  a1[11] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_240B8565C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v103 = *MEMORY[0x277D85DE8];
  v97 = a6;
  v96 = a7;
  *(a6 + 1316) = powf(1.25, *(a1 + 68) + -2.0);
  *(a6 + 1317) = powf(1.25, *(a1 + 72) + -2.0);
  v10 = a6[529];
  v11 = a6[528];
  v12 = (v10 - v11) >> 3;
  v13 = *(a1 + 112);
  if (v12 < v13)
  {
    if (v13 > (a6[530] - v11) >> 3)
    {
      v101 = a6 + 528;
      sub_240B7BF5C(v13);
    }

    if (v12 < v13)
    {
      sub_240B3B11C(&v80, 0x10000, a6[15]);
    }
  }

  v14 = a6;
  if (v12 > v13)
  {
    v15 = a6 + 529;
    do
    {
      v18 = *(v10 - 8);
      v17 = (v10 - 8);
      v16 = v18;
      *v17 = 0;
      if (v18)
      {
        (*(*v16 + 8))(v16);
        v13 = *(a1 + 112);
      }

      *v15 = v17;
      v14 = v97;
      v15 = v97 + 529;
      v10 = v97[529];
    }

    while (v13 < (v10 - v97[528]) >> 3);
  }

  if (*(v14 + 4209) == 1)
  {
    v19 = *(a6 + 246);
    v20 = llroundf(v14[1235] * v19);
    v21 = v20 / v19;
    *(a6 + 246) = v20;
    sub_240B6A130((a6 + 119));
    for (i = 0; i != 12; i += 4)
    {
      *(&v98 + i) = (1.0 / v21) * *(a6 + i + 268);
    }

    sub_240BC0BC8((a6 + 26), &v98);
    sub_240B6A130((a6 + 119));
  }

  sub_240B2A11C(v93, a6[9], a6[10]);
  v23 = v95;
  if (!v95)
  {
    sub_240B2A358(v92, v93);
    v24 = *(a6 + 30);
    *&v98 = &v97;
    *(&v98 + 1) = a2;
    v99 = a3;
    v100 = v92;
    if (a5)
    {
      v25 = sub_240B8664C(a5, v24, &v98);
    }

    else
    {
      v80 = 0;
      v81 = &v80;
      v25 = sub_240B8664C(&v80, v24, &v98);
    }

    v23 = v25;
    if (!v25)
    {
      if ((*(a1 + 24) & 0x20) != 0)
      {
        sub_240B86714(&v80, (v97 + 568));
        v87 = 0;
        v91 = 0x100000001;
        v90 = 1;
        v32 = v89 == 1;
        v88 = 0;
        --v89;
        if (v32)
        {
          v86 = 1;
          v35 = v85;
          if (v85 <= 2)
          {
            v35 = 2;
          }

          v85 = v35 - 1;
          v33 = 0.02;
        }

        else
        {
          v82 = 1;
          v83 = a6[119];
          v84 = *(a6 + 240);
          v33 = 0.1;
        }

        LODWORD(v80) = fmaxf(*(v97 + 1136) * v33, 0.001);
        sub_240B309B8(v69, *a6);
        v36 = sub_240B29FC8(*(*a6 + 104) == 1);
        sub_240B598DC(v69, v92, v36);
        v37 = *(v72 + 328);
        v38 = *(v72 + 336);
        if (v37 != v38)
        {
          memset(v68, 0, sizeof(v68));
          sub_240B86B24(v68, 0xAAAAAAAAAAAAAAABLL * ((v38 - v37) >> 5));
          if (*(v72 + 336) != *(v72 + 328))
          {
            v39 = 0;
            while (1)
            {
              v40 = v73;
              if (!v73)
              {
                if (v78 == *(&v78 + 1))
                {
                  v40 = 0;
                }

                else
                {
                  v40 = *v78;
                }
              }

              v41 = v74;
              if (!v74)
              {
                if (v78 == *(&v78 + 1))
                {
                  v41 = 0;
                }

                else
                {
                  v41 = *(v78 + 4);
                }
              }

              sub_240B23590(&v98, v40, v41);
              v23 = v102;
              if (v102)
              {
                break;
              }

              v42 = v100;
              v43 = v101;
              v100 = 0;
              v44 = *&v68[8];
              if (*&v68[8] >= *&v68[16])
              {
                v46 = 0xCCCCCCCCCCCCCCCDLL * ((*&v68[8] - *v68) >> 3);
                v47 = v46 + 1;
                if (v46 + 1 > 0x666666666666666)
                {
                  sub_240B228BC();
                }

                if (0x999999999999999ALL * ((*&v68[16] - *v68) >> 3) > v47)
                {
                  v47 = 0x999999999999999ALL * ((*&v68[16] - *v68) >> 3);
                }

                if (0xCCCCCCCCCCCCCCCDLL * ((*&v68[16] - *v68) >> 3) >= 0x333333333333333)
                {
                  v48 = 0x666666666666666;
                }

                else
                {
                  v48 = v47;
                }

                v67 = v68;
                if (v48)
                {
                  sub_240B59980(v48);
                }

                v49 = 8 * ((*&v68[8] - *v68) >> 3);
                v64 = 0;
                v65 = v49;
                *(&v66 + 1) = 0;
                *v49 = v98;
                *(v49 + 16) = v99;
                *(v49 + 24) = v42;
                *(v49 + 32) = v43;
                *&v66 = 40 * v46 + 40;
                v50 = 40 * v46 + *v68 - *&v68[8];
                sub_240B59A2C(*v68, *&v68[8], v50);
                v51 = *v68;
                v52 = *&v68[16];
                *v68 = v50;
                v62 = v66;
                *&v68[8] = v66;
                *&v66 = v51;
                *(&v66 + 1) = v52;
                v64 = v51;
                v65 = v51;
                sub_240B599D8(&v64);
                v45 = v62;
              }

              else
              {
                **&v68[8] = v98;
                v44[2] = v99;
                v44[3] = v42;
                v44[4] = v43;
                v45 = v44 + 5;
              }

              *&v68[8] = v45;
              if (*(v45 - 10) && *(v45 - 9))
              {
                v53 = 0;
                do
                {
                  bzero((*(v45 - 2) + *(v45 - 3) * v53++), 4 * *(v45 - 10));
                }

                while (v53 < *(v45 - 9));
              }

              if (!v102)
              {
                v54 = v100;
                v100 = 0;
                if (v54)
                {
                  atomic_fetch_add(&qword_27E519020, -*(v54 - 3));
                  free(*(v54 - 4));
                }
              }

              if (++v39 >= 0xAAAAAAAAAAAAAAABLL * ((*(v72 + 336) - *(v72 + 328)) >> 5))
              {
                goto LABEL_69;
              }
            }

            *&v98 = v68;
            sub_240B30C38(&v98);
            *&v98 = &v78;
            sub_240B30C38(&v98);
            v75 = &unk_2852A1CB8;
            if (__p)
            {
              v77 = __p;
              operator delete(__p);
            }

            for (j = 200; j != 80; j -= 40)
            {
              sub_240B22320(&v69[j]);
            }

            if (v71 < 0)
            {
              operator delete(v70);
            }

            v56 = *v69;
            *v69 = 0;
            if (v56)
            {
              (*(*v56 + 8))(v56);
            }

            sub_240B7BB60(&v80);
            goto LABEL_20;
          }

LABEL_69:
          sub_240B30E18(&v78);
          v78 = *v68;
          v79 = *&v68[16];
          memset(v68, 0, sizeof(v68));
          *&v98 = v68;
          sub_240B30C38(&v98);
        }

        operator new();
      }

      v69[0] = 0;
      *&v98 = v69;
      *(&v98 + 1) = &v97;
      v99 = &v96;
      v100 = a1;
      v101 = v92;
      v30 = *(a6 + 32);
      if (a5)
      {
        v31 = sub_240B86C80(a5, v30, &v98);
      }

      else
      {
        v80 = 0;
        v81 = &v80;
        v31 = sub_240B86C80(&v80, v30, &v98);
      }

      v23 = v31;
      if (!v31)
      {
        v34 = atomic_load(v69);
        if (v34)
        {
          v23 = 1;
        }

        else if ((*(a1 + 24) & 0x80) != 0 || (v23 = sub_240B2ACE4((a6 + 119), a6 + 408, a5), !v23))
        {
          v69[0] = 0;
          *&v98 = &v97;
          *(&v98 + 1) = &v96;
          v99 = v69;
          v57 = *(a6 + 32);
          if (a5)
          {
            v58 = sub_240B86D30(a5, v57, &v98);
          }

          else
          {
            v80 = 0;
            v81 = &v80;
            v58 = sub_240B86D30(&v80, v57, &v98);
          }

          v23 = v58;
          if (!v58)
          {
            v59 = atomic_load(v69);
            v23 = v59 & 1;
          }
        }
      }
    }

LABEL_20:
    for (k = 104; k != -16; k -= 40)
    {
      sub_240B22320(&v92[k]);
    }

    if (!v95)
    {
      v27 = &v94;
      v28 = -120;
      do
      {
        sub_240B22320(v27);
        v27 -= 5;
        v28 += 40;
      }

      while (v28);
    }
  }

  return v23;
}

void sub_240B86474(_Unwind_Exception *a1)
{
  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&STACK[0x7D0] + i));
  }

  if (!LODWORD(STACK[0x8C0]))
  {
    v3 = &STACK[0x8B0];
    v4 = -120;
    do
    {
      sub_240B22320(v3);
      v3 -= 5;
      v4 += 40;
    }

    while (v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240B865D4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL sub_240B8664C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v7[0] = sub_240B2AC64;
  v7[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v7, sub_240B87270, sub_240B87254, 0, a2) != 0;
  }

  v5 = 0;
  v6 = a2;
  do
  {
    sub_240BA5E9C(v5++, **a3, *(a3 + 8), **(a3 + 16), *(*(a3 + 16) + 8), *(a3 + 24));
  }

  while (v6 != v5);
  return 0;
}

uint64_t sub_240B86714(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_240B29978((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  v4 = *(a2 + 32);
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 32) = v4;
  v6 = *(a2 + 80);
  v7 = *(a2 + 96);
  v8 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v8;
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  v9 = *(a2 + 144);
  v10 = *(a2 + 160);
  v11 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v10;
  *(a1 + 176) = v11;
  *(a1 + 144) = v9;
  v12 = *(a2 + 200);
  v13 = *(a2 + 216);
  *(a1 + 224) = 0;
  *(a1 + 216) = v13;
  *(a1 + 200) = v12;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_240B86FB8((a1 + 224), *(a2 + 224), *(a2 + 232), (*(a2 + 232) - *(a2 + 224)) >> 2);
  v14 = *(a2 + 248);
  v15 = *(a2 + 264);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 264) = v15;
  *(a1 + 248) = v14;
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0;
  sub_240B3C84C((a1 + 304), *(a2 + 304), *(a2 + 312), (*(a2 + 312) - *(a2 + 304)) >> 3);
  v16 = *(a2 + 328);
  *(a1 + 333) = *(a2 + 333);
  *(a1 + 328) = v16;
  *(a1 + 344) = *(a2 + 344);
  v17 = *(a2 + 352);
  v18 = *(a2 + 368);
  v19 = *(a2 + 384);
  *(a1 + 393) = *(a2 + 393);
  *(a1 + 368) = v18;
  *(a1 + 384) = v19;
  *(a1 + 352) = v17;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0;
  sub_240B29978((a1 + 416), *(a2 + 416), *(a2 + 424), (*(a2 + 424) - *(a2 + 416)) >> 2);
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  sub_240B29978((a1 + 440), *(a2 + 440), *(a2 + 448), (*(a2 + 448) - *(a2 + 440)) >> 2);
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  v21 = *(a2 + 464);
  v20 = *(a2 + 472);
  if (v20 != v21)
  {
    sub_240B87204((a1 + 464), 0xCCCCCCCCCCCCCCCDLL * ((v20 - v21) >> 3));
  }

  *(a1 + 488) = *(a2 + 488);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0;
  v22 = *(a2 + 496);
  v23 = *(a2 + 504);
  if (v23 != v22)
  {
    sub_240B87074((a1 + 496), 0xF0B7672A07A44C6BLL * ((v23 - v22) >> 3));
  }

  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  sub_240B6D768((a1 + 520), *(a2 + 520), *(a2 + 528), (*(a2 + 528) - *(a2 + 520)) >> 3);
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  v24 = *(a2 + 544);
  v25 = *(a2 + 552);
  if (v25 != v24)
  {
    sub_240B87034((a1 + 544), (v25 - v24) >> 5);
  }

  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  sub_240B3C84C((a1 + 568), *(a2 + 568), *(a2 + 576), (*(a2 + 576) - *(a2 + 568)) >> 3);
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  sub_240B3C84C((a1 + 592), *(a2 + 592), *(a2 + 600), (*(a2 + 600) - *(a2 + 592)) >> 3);
  v26 = *(a2 + 616);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 616) = v26;
  return a1;
}

void sub_240B86A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v15 = *v13;
  if (*v13)
  {
    v9[69] = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v9[66] = v16;
    operator delete(v16);
  }

  sub_240B4BC78(&a9);
  v17 = v9[58];
  if (v17)
  {
    v9[59] = v17;
    operator delete(v17);
  }

  v18 = v9[55];
  if (v18)
  {
    v9[56] = v18;
    operator delete(v18);
  }

  v19 = v9[52];
  if (v19)
  {
    v9[53] = v19;
    operator delete(v19);
  }

  sub_240B43AD0((v11 - 24));
  v20 = *v10;
  if (*v10)
  {
    v9[2] = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_240B86B04()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 232) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x240B86AECLL);
}

char **sub_240B86B24(char **result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      sub_240B59980(a2);
    }

    sub_240B228BC();
  }

  return result;
}

uint64_t *sub_240B86BE4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_240B22320((v2 + 24));
    MEMORY[0x245CCE590](v2, 0x1030C4046C9F5C0);
  }

  return a1;
}

uint64_t sub_240B86C34(uint64_t a1)
{
  v3 = (a1 + 112);
  sub_240B37840(&v3);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  return a1;
}

BOOL sub_240B86C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v6[0] = sub_240B2AC64;
  v6[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v6, sub_240B86F90, sub_240B86EC0, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240B86EC0(v6, i);
  }

  return 0;
}

BOOL sub_240B86D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v6[0] = sub_240B2AC64;
  v6[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v6, sub_240B86E98, sub_240B86DE0, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240B86DE0(v6, i);
  }

  return 0;
}

uint64_t sub_240B86DE0(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = **v2;
  v4 = a2;
  v5 = *(v3 + 104);
  v6 = *(v3 + 136);
  v7 = v6 * (a2 / v5);
  v8 = *(v3 + 72);
  v9 = *(v3 + 80);
  v15[0] = v6 * (a2 % v5);
  v15[1] = v7;
  v10 = v8 - v15[0];
  if (v8 < v15[0])
  {
    v10 = 0;
  }

  if (v15[0] + v6 <= v8)
  {
    v10 = v6;
  }

  v11 = v7 + v6;
  v12 = v9 >= v7;
  v13 = v9 - v7;
  if (!v12)
  {
    v13 = 0;
  }

  if (v11 <= v9)
  {
    v13 = v6;
  }

  v15[2] = v10;
  v15[3] = v13;
  if (*(v3 + 4208) == 1)
  {
    v4 = *(v3 + 4216);
  }

  result = sub_240BB8058(*v2[1], v15, v4, 0, v3);
  if (result)
  {
    atomic_store(1u, v2[2]);
  }

  return result;
}

uint64_t sub_240B86E98(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240B86EC0(uint64_t result, int a2)
{
  v2 = *(result + 8);
  v3 = atomic_load(*v2);
  if ((v3 & 1) == 0)
  {
    v4 = **(v2 + 8);
    v5 = a2;
    v6 = *(v4 + 104);
    v7 = *(v4 + 136);
    v8 = v7 * (a2 / v6);
    v9 = *(v4 + 72);
    v10 = *(v4 + 80);
    v15[0] = v7 * (a2 % v6);
    v15[1] = v8;
    v11 = v9 - v15[0];
    if (v9 < v15[0])
    {
      v11 = 0;
    }

    if (v15[0] + v7 <= v9)
    {
      v11 = v7;
    }

    v12 = v8 + v7;
    v13 = v10 >= v8;
    v14 = v10 - v8;
    if (!v13)
    {
      v14 = 0;
    }

    if (v12 <= v10)
    {
      v14 = v7;
    }

    v15[2] = v11;
    v15[3] = v14;
    if (*(v4 + 4208) == 1)
    {
      v5 = *(v4 + 4216);
    }

    result = sub_240BB7520(**(v2 + 16), *(v2 + 24), *(v2 + 32), v15, v5, *(v4 + 4592) < 7, v4);
    if (result)
    {
      atomic_store(1u, *v2);
    }
  }

  return result;
}

uint64_t sub_240B86F90(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_240B86FB8(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240B2287C(result, a4);
  }

  return result;
}

void sub_240B87018(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B87034(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_240B6D90C(a2);
  }

  sub_240B228BC();
}

void sub_240B87074(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x7A44C6AFC2DD9DLL)
  {
    sub_240B6A7EC(a2);
  }

  sub_240B228BC();
}

uint64_t *sub_240B870C8(uint64_t a1, __int128 **a2, __int128 **a3, uint64_t *a4)
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
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      v7 = v6[1];
      v8 = v4;
      if (v7 != *v6)
      {
        sub_240B871C4(v4, v7 - *v6);
      }

      memcpy(v4 + 3, v6 + 3, 0x200uLL);
      v6 += 67;
      v4 += 67;
      v13 = v8 + 67;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_240B6A984(v10);
  return v4;
}

void sub_240B871A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_240B6A984(&a9);
  _Unwind_Resume(a1);
}

void sub_240B871C4(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_240B2D470(a2);
  }

  sub_240B228BC();
}

void sub_240B87204(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_240B5C5D8(a2);
  }

  sub_240B228BC();
}

uint64_t sub_240B87270(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240B87298(float32x4_t *a1, float32x4_t *a2, unint64_t a3, int a4, float a5)
{
  if (!a3)
  {
    return 0;
  }

  v5 = 0;
  if (a4)
  {
    v6 = 0uLL;
    v7 = vdupq_n_s32(0x3C430C31u);
    v8 = 0uLL;
    do
    {
      v9 = *a1++;
      v10 = v9;
      v11 = vmulq_f32(v9, v7);
      v12 = *a2++;
      v6 = vmlaq_f32(v6, v11, v11);
      v8 = vmlaq_f32(v8, vsubq_f32(vmulq_n_f32(v10, a5), v12), v11);
      v5 += 4;
    }

    while (v5 < a3);
    v13 = -vaddv_f32(*&vpaddq_f32(v8, v8)) / (vaddv_f32(*&vpaddq_f32(v6, v6)) + ((a3 * 0.000000001) * 0.5));
  }

  else
  {
    v13 = 0.0;
    v15 = vdupq_n_s32(0x42C80000u);
    v16 = vdupq_n_s32(0x3C430C31u);
    v17 = vdupq_n_s32(0x3F2AAAABu);
    __asm { FMOV            V16.4S, #1.0 }

    do
    {
      v22 = 0;
      v23 = v13 + 100.0;
      v24 = v13 + -100.0;
      v25 = a1;
      v26 = a2;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      do
      {
        v30 = *v25++;
        v31 = vmulq_f32(v30, v16);
        v32 = vmulq_n_f32(v30, a5);
        v33 = *v26++;
        v34 = vsubq_f32(v32, v33);
        v35 = vmlaq_n_f32(v34, v31, v13);
        v36 = vmlaq_n_f32(v34, v31, v23);
        v37 = vmlaq_n_f32(v34, v31, v24);
        v38 = vabsq_f32(v35);
        v39 = vmulq_f32(v31, v17);
        v40 = vmulq_f32(v39, vaddq_f32(v38, _Q16));
        v41 = vmulq_f32(v39, vaddq_f32(vabsq_f32(v36), _Q16));
        v42 = vmulq_f32(v39, vaddq_f32(vabsq_f32(v37), _Q16));
        v43 = vbslq_s8(vcltzq_f32(v37), vsubq_f32(0, v42), v42);
        v44 = vcgeq_f32(v38, v15);
        v27 = vaddq_f32(v27, vbicq_s8(vbslq_s8(vcltzq_f32(v35), vsubq_f32(0, v40), v40), v44));
        v28 = vaddq_f32(v28, vbicq_s8(vbslq_s8(vcltzq_f32(v36), vsubq_f32(0, v41), v41), v44));
        v29 = vaddq_f32(v29, vbicq_s8(v43, v44));
        v22 += 4;
      }

      while (v22 < a3);
      v45 = (((a3 * 0.000000002) * v13) + vaddv_f32(*&vpaddq_f32(v27, v27))) / (((((v23 * (a3 * 0.000000002)) + vaddv_f32(*&vpaddq_f32(v28, v28))) - ((v24 * (a3 * 0.000000002)) + vaddv_f32(*&vpaddq_f32(v29, v29)))) / 200.0) + 0.85);
      v13 = v13 - fminf(fmaxf(v45, -20.0), 20.0);
      ++v5;
    }

    while (fabsf(v45) >= 0.003 && v5 != 20);
  }

  if (v13 >= 2.6)
  {
    v47 = v13 + -2.6;
  }

  else
  {
    v47 = 0.0;
    if (v13 <= -2.6)
    {
      v47 = v13 + 2.6;
    }
  }

  return fmaxf(fminf(roundf(v47), 127.0), -128.0);
}

void sub_240B8750C(void *result, float32x4_t *a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5)
{
  v219 = *MEMORY[0x277D85DE8];
  v8 = a2;
  switch(result)
  {
    case 0:
      v208 = a3;
      v209 = a2;
      v218[0].i64[0] = 8;
      v218[0].i64[1] = a4;
      sub_240B3F2E8(sub_240B8A378, &v208, v218, 8, &a5[16]);
      v218[0].i64[0] = 8;
      v218[0].i64[1] = a4;
      v210.i64[0] = 8;
      v210.i64[1] = a5;
      sub_240B3F9C8(v218, &v210);
      v218[0].i64[0] = 8;
      v218[0].i64[1] = a5;
      v210.i64[0] = 8;
      v210.i64[1] = a4;
      v9 = &a5[16];
      v10 = sub_240B8A378;
      v11 = 8;
      goto LABEL_146;
    case 1:
      v145 = 0;
      v146 = 4 * a3;
      v147 = 1;
      do
      {
        v148 = 0;
        v149 = v147;
        v150 = 1;
        v151 = v8->i64 + 4 * ((4 * v145) | 1) * a3 + 4;
        v152 = 8 * v145;
        v153 = 32 * v145;
        v154 = v8 + 16 * a3 * v145;
        do
        {
          v155 = v150;
          v156 = &v154[16 * v148];
          v157 = 0.0;
          v158 = v156;
          v159 = 4;
          do
          {
            v157 = (((v157 + COERCE_FLOAT(*v158)) + COERCE_FLOAT(HIDWORD(*v158))) + COERCE_FLOAT(*(v158 + 1))) + COERCE_FLOAT(HIDWORD(*v158));
            v158 += v146;
            --v159;
          }

          while (v159);
          v160 = 0;
          v161 = v153 + 4 * v148;
          do
          {
            v162 = 0;
            v163 = v161;
            do
            {
              if (v160 != 1 || v162 != 4)
              {
                *(a4->f32 + v163) = *&v156[v162] - *(v151 + 16 * v148);
              }

              v162 += 4;
              v163 += 8;
            }

            while (v162 != 16);
            ++v160;
            v161 += 64;
            v156 += v146;
          }

          while (v160 != 4);
          v150 = 0;
          v164 = &a4->i32[v148 | v152];
          v164[18] = *v164;
          *v164 = v157 * 0.0625;
          v148 = 1;
        }

        while ((v155 & 1) != 0);
        v147 = 0;
        v145 = 1;
      }

      while ((v149 & 1) != 0);
      goto LABEL_104;
    case 2:
      v73 = 1;
      __asm { FMOV            V0.4S, #0.25 }

      do
      {
        v78 = &v8->f32[a3];
        v220 = vld2q_f32(v8->f32);
        v72 = 8 * a3;
        v8 = (v8 + v72);
        v221 = vld2q_f32(v78);
        v79 = vaddq_f32(v220.val[0], v220.val[1]);
        v220.val[0] = vsubq_f32(v220.val[0], v220.val[1]);
        v80 = &v218[v73];
        v80[-1] = vmulq_f32(vaddq_f32(vaddq_f32(v79, v221.val[0]), v221.val[1]), _Q0);
        *v80 = vmulq_f32(vsubq_f32(vsubq_f32(v79, v221.val[0]), v221.val[1]), _Q0);
        v80[7] = vmulq_f32(vsubq_f32(vaddq_f32(v220.val[0], v221.val[0]), v221.val[1]), _Q0);
        v80[8] = vmulq_f32(vaddq_f32(vsubq_f32(v220.val[0], v221.val[0]), v221.val[1]), _Q0);
        v73 += 2;
      }

      while (v73 != 9);
      v81 = 0;
      v82 = v218[13];
      a4[12] = v218[12];
      a4[13] = v82;
      v83 = v218[15];
      a4[14] = v218[14];
      a4[15] = v83;
      v84 = v218[9];
      a4[8] = v218[8];
      a4[9] = v84;
      v85 = v218[11];
      a4[10] = v218[10];
      a4[11] = v85;
      v86 = v218[5];
      a4[4] = v218[4];
      a4[5] = v86;
      v87 = v218[7];
      a4[6] = v218[6];
      a4[7] = v87;
      v88 = v218[1];
      *a4 = v218[0];
      a4[1] = v88;
      v89 = v218[3];
      v90 = 1;
      a4[2] = v218[2];
      a4[3] = v89;
      do
      {
        v91 = 0;
        v92 = v90;
        v93 = 16 * v81;
        v94 = 8 * v81;
        v95 = 1;
        do
        {
          v96 = v95;
          v97 = (a4->f32 + ((8 * v91) | (4 * v93)));
          v98 = v97[1];
          v99 = v97[8];
          v100 = v97[9];
          v101 = *v97 + v98;
          v102 = *v97 - v98;
          v103 = &v218[0].f32[v91 | v94];
          *v103 = ((v101 + v99) + v100) * 0.25;
          v103[2] = ((v101 - v99) - v100) * 0.25;
          v103[16] = ((v102 + v99) - v100) * 0.25;
          v103[18] = ((v102 - v99) + v100) * 0.25;
          v91 = 1;
          v95 = 0;
        }

        while ((v96 & 1) != 0);
        v90 = 0;
        v81 = 1;
      }

      while ((v92 & 1) != 0);
      for (i = 0; i != 8; i += 2)
      {
        a4[i] = v218[i];
      }

      v105 = a4->f32[1];
      v106 = a4[2].f32[0];
      v107 = a4[2].f32[1];
      v108 = a4->f32[0] + v105;
      v109 = a4->f32[0] - v105;
      v110 = ((v109 + v106) - v107) * 0.25;
      a4->f32[0] = ((v108 + v106) + v107) * 0.25;
      a4->f32[1] = ((v108 - v106) - v107) * 0.25;
      v111 = ((v109 - v106) + v107) * 0.25;
      goto LABEL_105;
    case 3:
      v132 = 0;
      v205 = 4 * a3;
      v133 = 1;
      do
      {
        v134 = 0;
        v135 = v133;
        v136 = &v8->i8[4 * v205 * v132];
        v137 = 32 * v132;
        v138 = 1;
        do
        {
          v139 = v138;
          v140 = v218;
          sub_240B76E50(a3, &v136[16 * v134], v218, a5);
          v141 = 0;
          v142 = v137 + 4 * v134;
          do
          {
            v143 = 0;
            v144 = v142;
            do
            {
              *(a4->i32 + v144) = v140->i32[v143++];
              v144 += 8;
            }

            while (v143 != 4);
            ++v141;
            v142 += 64;
            ++v140;
          }

          while (v141 != 4);
          v138 = 0;
          v134 = 1;
        }

        while ((v139 & 1) != 0);
        v133 = 0;
        v132 = 1;
      }

      while ((v135 & 1) != 0);
LABEL_104:
      v165 = a4->f32[0];
      v166 = a4->f32[1];
      v167 = a4[2].f32[0];
      v168 = a4[2].f32[1];
      v169 = a4->f32[0] + v166;
      a4->f32[0] = ((v169 + v167) + v168) * 0.25;
      a4->f32[1] = ((v169 - v167) - v168) * 0.25;
      v170 = v165 - v166;
      v110 = ((v170 + v167) - v168) * 0.25;
      v111 = ((v170 - v167) + v168) * 0.25;
LABEL_105:
      a4[2].f32[0] = v110;
      a4[2].f32[1] = v111;
      return;
    case 4:
      v208 = a3;
      v209 = a2;
      v218[0].i64[0] = 16;
      v218[0].i64[1] = a4;
      sub_240B3F2E8(sub_240B8A438, &v208, v218, 16, &a5[64]);
      v218[0].i64[0] = 16;
      v218[0].i64[1] = a4;
      v210.i64[0] = 16;
      v210.i64[1] = a5;
      sub_240B3F62C(v218, &v210);
      v218[0].i64[0] = 16;
      v218[0].i64[1] = a5;
      v210.i64[0] = 16;
      v210.i64[1] = a4;
      v9 = &a5[64];
      v10 = sub_240B8A438;
      goto LABEL_134;
    case 5:
      v208 = a3;
      v209 = a2;
      v218[0].i64[0] = 32;
      v218[0].i64[1] = a4;
      sub_240B3F2E8(sub_240B8A2B8, &v208, v218, 32, &a5[256]);
      v218[0].i64[0] = 32;
      v218[0].i64[1] = a4;
      v210.i64[0] = 32;
      v210.i64[1] = a5;
      sub_240B3F2E8(sub_240B89C44, v218, &v210, 32, 32);
      v218[0].i64[0] = 32;
      v218[0].i64[1] = a5;
      v210.i64[0] = 32;
      v210.i64[1] = a4;
      v9 = &a5[256];
      v10 = sub_240B8A2B8;
      goto LABEL_138;
    case 6:
      v208 = a3;
      v209 = a2;
      v218[0].i64[0] = 8;
      v218[0].i64[1] = a4;
      sub_240B3F2E8(sub_240B8A438, &v208, v218, 8, &a5[32]);
      v218[0].i64[0] = 8;
      v218[0].i64[1] = a4;
      v210.i64[0] = 16;
      v210.i64[1] = a5;
      sub_240B3F7FC(v218, &v210);
      v218[0].i64[0] = 16;
      v218[0].i64[1] = a5;
      v210.i64[0] = 16;
      v210.i64[1] = a4;
      v10 = sub_240B8A378;
      v9 = &a5[32];
LABEL_134:
      v11 = 16;
      goto LABEL_146;
    case 7:
      v208 = a3;
      v209 = a2;
      v218[0].i64[0] = 16;
      v218[0].i64[1] = a5;
      sub_240B3F2E8(sub_240B8A378, &v208, v218, 16, &a5[32]);
      v218[0].i64[0] = 16;
      v218[0].i64[1] = a5;
      v210.i64[0] = 8;
      v210.i64[1] = a4;
      sub_240B3F714(v218, &v210);
      v218[0].i64[0] = 8;
      v218[0].i64[1] = a4;
      v210.i64[0] = 8;
      v210.i64[1] = a5;
      sub_240B3F2E8(sub_240B8A438, v218, &v210, 8, &a5[32]);
      v218[0].i64[0] = 8;
      v218[0].i64[1] = a5;
      v210.i64[0] = 16;
      v210.i64[1] = a4;
      sub_240B3F7FC(v218, &v210);
      return;
    case 8:
      v208 = a3;
      v209 = a2;
      v218[0].i64[0] = 8;
      v218[0].i64[1] = a4;
      sub_240B3F2E8(sub_240B8A2B8, &v208, v218, 8, &a5[64]);
      v218[0].i64[0] = 8;
      v218[0].i64[1] = a4;
      v210.i64[0] = 32;
      v210.i64[1] = a5;
      sub_240B76EE0(v218, &v210);
      v218[0].i64[0] = 32;
      v218[0].i64[1] = a5;
      v210.i64[0] = 32;
      v210.i64[1] = a4;
      v10 = sub_240B8A378;
      v9 = &a5[64];
      goto LABEL_138;
    case 9:
      v208 = a3;
      v209 = a2;
      v218[0].i64[0] = 32;
      v218[0].i64[1] = a5;
      sub_240B3F2E8(sub_240B8A378, &v208, v218, 32, &a5[64]);
      v58 = 0;
      v59 = 1;
      do
      {
        v60 = v59;
        v61 = &a5[2 * v58 + 16];
        v62 = &a4[v58 + 4];
        v63 = -4;
        do
        {
          v64 = *(v61 - 256);
          v65 = *(v61 - 128);
          v66 = *(v61 + 128);
          v67 = vzip1q_s32(v64, *v61);
          v68 = vzip1q_s32(v65, v66);
          v69 = vzip2q_s32(v64, *v61);
          v70 = vzip2q_s32(v65, v66);
          v71 = (v62 - 64);
          vst2_f32(v71, v67);
          vst2_f32(v62, v69);
          *(v62 - 32) = vzip2q_s32(v67, v68);
          *(v62 + 32) = vzip2q_s32(v69, v70);
          v63 += 4;
          v61 += 16;
          v62 += 128;
        }

        while (v63 < 0x1C);
        v59 = 0;
        v58 = 1;
      }

      while ((v60 & 1) != 0);
      v218[0].i64[0] = 8;
      v218[0].i64[1] = a4;
      v210.i64[0] = 8;
      v210.i64[1] = a5;
      sub_240B3F2E8(sub_240B8A2B8, v218, &v210, 8, &a5[64]);
      v218[0].i64[0] = 8;
      v218[0].i64[1] = a5;
      v210.i64[0] = 32;
      v210.i64[1] = a4;
      sub_240B76EE0(v218, &v210);
      return;
    case 10:
      v208 = a3;
      v209 = a2;
      v218[0].i64[0] = 16;
      v218[0].i64[1] = a4;
      sub_240B3F2E8(sub_240B8A2B8, &v208, v218, 16, &a5[128]);
      v218[0].i64[0] = 16;
      v218[0].i64[1] = a4;
      v210.i64[0] = 32;
      v210.i64[1] = a5;
      sub_240B3F2E8(sub_240B89C44, v218, &v210, 32, 16);
      v218[0].i64[0] = 32;
      v218[0].i64[1] = a5;
      v210.i64[0] = 32;
      v210.i64[1] = a4;
      v10 = sub_240B8A438;
      v9 = &a5[128];
LABEL_138:
      v11 = 32;
      goto LABEL_146;
    case 11:
      v208 = a3;
      v209 = a2;
      v218[0].i64[0] = 32;
      v218[0].i64[1] = a5;
      sub_240B3F2E8(sub_240B8A438, &v208, v218, 32, &a5[128]);
      v218[0].i64[0] = 32;
      v218[0].i64[1] = a5;
      v210.i64[0] = 16;
      v210.i64[1] = a4;
      sub_240B3F2E8(sub_240B89C44, v218, &v210, 16, 32);
      v218[0].i64[0] = 16;
      v218[0].i64[1] = a4;
      v210.i64[0] = 16;
      v210.i64[1] = a5;
      sub_240B3F2E8(sub_240B8A2B8, v218, &v210, 16, &a5[128]);
      v218[0].i64[0] = 16;
      v218[0].i64[1] = a5;
      v210.i64[0] = 32;
      v210.i64[1] = a4;
      v10 = sub_240B89C44;
      v11 = 32;
      v9 = 16;
      goto LABEL_146;
    case 12:
      v51 = 0;
      v52 = 1;
      do
      {
        v53 = v52;
        v54 = 2 * v51;
        v210.i64[0] = a3;
        v210.i64[1] = v8->i64 + 4 * 4 * a3 * v51;
        sub_240B89E84(&v210, v218, a5);
        for (j = 0; j != 8; j += 2)
        {
          v56 = &a4[v54];
          v57 = v218[j + 1];
          *v56 = v218[j];
          v56[1] = v57;
          v54 += 4;
        }

        v52 = 0;
        v51 = 1;
      }

      while ((v53 & 1) != 0);
      goto LABEL_131;
    case 13:
      v196 = 0;
      v197 = 1;
      do
      {
        v198 = v197;
        v199 = 2 * v196;
        v210.i64[0] = 4;
        v210.i64[1] = v218;
        sub_240B41588(a3, &v8[v196], &v210, a5 + 8);
        v210.i64[0] = 4;
        v210.i64[1] = v218;
        v208 = 8;
        v209 = a5;
        sub_240B404FC(&v210, &v208);
        v210.i64[0] = 8;
        v210.i64[1] = a5;
        v208 = 8;
        v209 = v218;
        sub_240B3F2E8(sub_240B8A50C, &v210, &v208, 8, &a5[8]);
        for (k = 0; k != 8; k += 2)
        {
          v201 = &a4[v199];
          v202 = v218[k + 1];
          *v201 = v218[k];
          v201[1] = v202;
          v199 += 4;
        }

        v197 = 0;
        v196 = 1;
      }

      while ((v198 & 1) != 0);
LABEL_131:
      v203 = a4->f32[0];
      v204 = a4[2].f32[0];
      a4->f32[0] = (a4->f32[0] + v204) * 0.5;
      v195 = (v203 - v204) * 0.5;
      goto LABEL_132;
    case 14:
      v32 = 0;
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v33 = a2;
      v210 = 0u;
      v211 = 0u;
      do
      {
        *(&v210 + v32) = *v33;
        v32 += 16;
        v33 = (v33 + 4 * a3);
      }

      while (v32 != 64);
      v34 = 0;
      v35 = &unk_240C84030;
      do
      {
        v36 = 0;
        v37 = 0uLL;
        do
        {
          v37 = vmlaq_n_f32(v37, v35[v36 * 4], v210.f32[v36]);
          ++v36;
        }

        while (v36 != 16);
        *(&v208 + 4 * v34) = v37;
        ++v35;
        _CF = v34 >= 0xC;
        v34 += 4;
      }

      while (!_CF);
      v38 = 0;
      v39 = &v208;
      v40 = a4;
      do
      {
        v41 = 0;
        v42 = v40;
        do
        {
          *v42 = *(v39 + v41);
          v42 += 2;
          v41 += 4;
        }

        while (v41 != 16);
        ++v38;
        v40 += 64;
        v39 += 2;
      }

      while (v38 != 4);
      v43 = &v210;
      sub_240B76E50(a3, a2 + 1, &v210, v218);
      v44 = 0;
      v45 = 4;
      do
      {
        v46 = 0;
        v47 = v45;
        do
        {
          *(a4->i32 + v47) = v43->i32[v46++];
          v47 += 8;
        }

        while (v46 != 8);
        ++v44;
        v45 += 64;
        ++v43;
      }

      while (v44 != 4);
      v206 = a3;
      v207 = &v8[a3];
      sub_240B89E84(&v206, &v210, v218);
      v48 = 0;
      v49 = a4 + 2;
      do
      {
        v50 = *(&v210 + v48 + 16);
        *v49 = *(&v210 + v48);
        v49[1] = v50;
        v49 += 4;
        v48 += 32;
      }

      while (v48 != 128);
      goto LABEL_123;
    case 15:
      v112 = 0;
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v113 = 16;
      v210 = 0u;
      v211 = 0u;
      do
      {
        v114 = vrev64q_s32(*(a2 + v113));
        *(&v210 + v112) = vextq_s8(v114, v114, 8uLL);
        v112 += 16;
        v113 += 4 * a3;
      }

      while (v112 != 64);
      v115 = 0;
      v116 = &unk_240C84030;
      do
      {
        v117 = 0;
        v118 = 0uLL;
        do
        {
          v118 = vmlaq_n_f32(v118, v116[v117 * 4], v210.f32[v117]);
          ++v117;
        }

        while (v117 != 16);
        *(&v208 + 4 * v115) = v118;
        ++v116;
        _CF = v115 >= 0xC;
        v115 += 4;
      }

      while (!_CF);
      v119 = 0;
      v120 = &v208;
      v121 = a4;
      do
      {
        v122 = 0;
        v123 = v121;
        do
        {
          *v123 = *(v120 + v122);
          v123 += 2;
          v122 += 4;
        }

        while (v122 != 16);
        ++v119;
        v121 += 64;
        v120 += 2;
      }

      while (v119 != 4);
      v124 = &v210;
      sub_240B76E50(a3, a2, &v210, v218);
      v125 = 0;
      v126 = 4;
      do
      {
        v127 = 0;
        v128 = v126;
        do
        {
          *(a4->i32 + v128) = v124->i32[v127++];
          v128 += 8;
        }

        while (v127 != 8);
        ++v125;
        v126 += 64;
        ++v124;
      }

      while (v125 != 4);
      v206 = a3;
      v207 = &v8[a3];
      sub_240B89E84(&v206, &v210, v218);
      v129 = 0;
      v130 = a4 + 2;
      do
      {
        v131 = *(&v210 + v129 + 16);
        *v130 = *(&v210 + v129);
        v130[1] = v131;
        v130 += 4;
        v129 += 32;
      }

      while (v129 != 128);
      goto LABEL_123;
    case 16:
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v12 = 16 * a3;
      v13 = 48;
      v210 = 0u;
      v211 = 0u;
      do
      {
        *(&v210 + v13) = *(a2 + v12);
        v13 -= 16;
        v12 += 4 * a3;
      }

      while (v13 != -16);
      v14 = 0;
      v15 = &unk_240C84030;
      do
      {
        v16 = 0;
        v17 = 0uLL;
        do
        {
          v17 = vmlaq_n_f32(v17, v15[v16 * 4], v210.f32[v16]);
          ++v16;
        }

        while (v16 != 16);
        *(&v208 + 4 * v14) = v17;
        ++v15;
        _CF = v14 >= 0xC;
        v14 += 4;
      }

      while (!_CF);
      v19 = 0;
      v20 = &v208;
      v21 = a4;
      do
      {
        v22 = 0;
        v23 = v21;
        do
        {
          *v23 = *(v20 + v22);
          v23 += 2;
          v22 += 4;
        }

        while (v22 != 16);
        ++v19;
        v21 += 64;
        v20 += 2;
      }

      while (v19 != 4);
      v24 = &v210;
      sub_240B76E50(a3, &a2[a3 + 1], &v210, v218);
      v25 = 0;
      v26 = 4;
      do
      {
        v27 = 0;
        v28 = v26;
        do
        {
          *(a4->i32 + v28) = v24->i32[v27++];
          v28 += 8;
        }

        while (v27 != 8);
        ++v25;
        v26 += 64;
        ++v24;
      }

      while (v25 != 4);
      v206 = a3;
      v207 = v8;
      sub_240B89E84(&v206, &v210, v218);
      v29 = 0;
      v30 = a4 + 2;
      do
      {
        v31 = *(&v210 + v29 + 16);
        *v30 = *(&v210 + v29);
        v30[1] = v31;
        v30 += 4;
        v29 += 32;
      }

      while (v29 != 128);
      goto LABEL_123;
    case 17:
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v171 = 16 * a3 + 16;
      v172 = 48;
      v210 = 0u;
      v211 = 0u;
      do
      {
        v173 = vrev64q_s32(*(a2 + v171));
        *(&v210 + v172) = vextq_s8(v173, v173, 8uLL);
        v172 -= 16;
        v171 += 4 * a3;
      }

      while (v172 != -16);
      v174 = 0;
      v175 = &unk_240C84030;
      do
      {
        v176 = 0;
        v177 = 0uLL;
        do
        {
          v177 = vmlaq_n_f32(v177, v175[v176 * 4], v210.f32[v176]);
          ++v176;
        }

        while (v176 != 16);
        *(&v208 + 4 * v174) = v177;
        ++v175;
        _CF = v174 >= 0xC;
        v174 += 4;
      }

      while (!_CF);
      v178 = 0;
      v179 = &v208;
      v180 = a4;
      do
      {
        v181 = 0;
        v182 = v180;
        do
        {
          *v182 = *(v179 + v181);
          v182 += 2;
          v181 += 4;
        }

        while (v181 != 16);
        ++v178;
        v180 += 64;
        v179 += 2;
      }

      while (v178 != 4);
      v183 = &v210;
      sub_240B76E50(a3, &a2[a3], &v210, v218);
      v184 = 0;
      v185 = 4;
      do
      {
        v186 = 0;
        v187 = v185;
        do
        {
          *(a4->i32 + v187) = v183->i32[v186++];
          v187 += 8;
        }

        while (v186 != 8);
        ++v184;
        v185 += 64;
        ++v183;
      }

      while (v184 != 4);
      v206 = a3;
      v207 = v8;
      sub_240B89E84(&v206, &v210, v218);
      v188 = 0;
      v189 = a4 + 2;
      do
      {
        v190 = *(&v210 + v188 + 16);
        *v189 = *(&v210 + v188);
        v189[1] = v190;
        v189 += 4;
        v188 += 32;
      }

      while (v188 != 128);
LABEL_123:
      v191 = a4->f32[1];
      v192 = a4->f32[0] * 0.25;
      v193 = a4[2].f32[0];
      v194.f32[0] = (v192 + v191) + (v193 * 2.0);
      v194.f32[1] = v192 - v191;
      *a4->f32 = vmul_f32(v194, 0x3F0000003E800000);
      v195 = ((v192 + v191) + (v193 * -2.0)) * 0.25;
LABEL_132:
      a4[2].f32[0] = v195;
      return;
    case 18:
      v208 = a3;
      v209 = a2;
      v218[0].i64[0] = 64;
      v218[0].i64[1] = a4;
      sub_240B3F2E8(sub_240B8A1E4, &v208, v218, 64, &a5[1024]);
      v218[0].i64[0] = 64;
      v218[0].i64[1] = a4;
      v210.i64[0] = 64;
      v210.i64[1] = a5;
      sub_240B3F2E8(sub_240B89C44, v218, &v210, 64, 64);
      v218[0].i64[0] = 64;
      v218[0].i64[1] = a5;
      v210.i64[0] = 64;
      v210.i64[1] = a4;
      v9 = &a5[1024];
      v10 = sub_240B8A1E4;
      goto LABEL_142;
    case 19:
      v208 = a3;
      v209 = a2;
      v218[0].i64[0] = 32;
      v218[0].i64[1] = a4;
      sub_240B3F2E8(sub_240B8A1E4, &v208, v218, 32, &a5[512]);
      v218[0].i64[0] = 32;
      v218[0].i64[1] = a4;
      v210.i64[0] = 64;
      v210.i64[1] = a5;
      sub_240B3F2E8(sub_240B89C44, v218, &v210, 64, 32);
      v218[0].i64[0] = 64;
      v218[0].i64[1] = a5;
      v210.i64[0] = 64;
      v210.i64[1] = a4;
      v10 = sub_240B8A2B8;
      v9 = &a5[512];
LABEL_142:
      v11 = 64;
      goto LABEL_146;
    case 20:
      v208 = a3;
      v209 = a2;
      v218[0].i64[0] = 64;
      v218[0].i64[1] = a5;
      sub_240B3F2E8(sub_240B8A2B8, &v208, v218, 64, &a5[512]);
      v218[0].i64[0] = 64;
      v218[0].i64[1] = a5;
      v210.i64[0] = 32;
      v210.i64[1] = a4;
      sub_240B3F2E8(sub_240B89C44, v218, &v210, 32, 64);
      v218[0].i64[0] = 32;
      v218[0].i64[1] = a4;
      v210.i64[0] = 32;
      v210.i64[1] = a5;
      sub_240B3F2E8(sub_240B8A1E4, v218, &v210, 32, &a5[512]);
      v218[0].i64[0] = 32;
      v218[0].i64[1] = a5;
      v210.i64[0] = 64;
      v210.i64[1] = a4;
      v10 = sub_240B89C44;
      v11 = 64;
      v9 = 32;
      goto LABEL_146;
    case 21:
      v208 = a3;
      v209 = a2;
      v218[0].i64[0] = 128;
      v218[0].i64[1] = a4;
      sub_240B3F2E8(sub_240B8A124, &v208, v218, 128, &a5[4096]);
      v218[0].i64[0] = 128;
      v218[0].i64[1] = a4;
      v210.i64[0] = 128;
      v210.i64[1] = a5;
      sub_240B3F2E8(sub_240B89C44, v218, &v210, 128, 128);
      v218[0].i64[0] = 128;
      v218[0].i64[1] = a5;
      v210.i64[0] = 128;
      v210.i64[1] = a4;
      v9 = &a5[4096];
      v10 = sub_240B8A124;
      goto LABEL_140;
    case 22:
      v208 = a3;
      v209 = a2;
      v218[0].i64[0] = 64;
      v218[0].i64[1] = a4;
      sub_240B3F2E8(sub_240B8A124, &v208, v218, 64, &a5[2048]);
      v218[0].i64[0] = 64;
      v218[0].i64[1] = a4;
      v210.i64[0] = 128;
      v210.i64[1] = a5;
      sub_240B3F2E8(sub_240B89C44, v218, &v210, 128, 64);
      v218[0].i64[0] = 128;
      v218[0].i64[1] = a5;
      v210.i64[0] = 128;
      v210.i64[1] = a4;
      v10 = sub_240B8A1E4;
      v9 = &a5[2048];
LABEL_140:
      v11 = 128;
      goto LABEL_146;
    case 23:
      v208 = a3;
      v209 = a2;
      v218[0].i64[0] = 128;
      v218[0].i64[1] = a5;
      sub_240B3F2E8(sub_240B8A1E4, &v208, v218, 128, &a5[2048]);
      v218[0].i64[0] = 128;
      v218[0].i64[1] = a5;
      v210.i64[0] = 64;
      v210.i64[1] = a4;
      sub_240B3F2E8(sub_240B89C44, v218, &v210, 64, 128);
      v218[0].i64[0] = 64;
      v218[0].i64[1] = a4;
      v210.i64[0] = 64;
      v210.i64[1] = a5;
      sub_240B3F2E8(sub_240B8A124, v218, &v210, 64, &a5[2048]);
      v218[0].i64[0] = 64;
      v218[0].i64[1] = a5;
      v210.i64[0] = 128;
      v210.i64[1] = a4;
      v10 = sub_240B89C44;
      v11 = 128;
      v9 = 64;
      goto LABEL_146;
    case 24:
      v208 = a3;
      v209 = a2;
      v218[0].i64[0] = 256;
      v218[0].i64[1] = a4;
      sub_240B3F2E8(sub_240B89F28, &v208, v218, 256, &a5[0x4000]);
      v218[0].i64[0] = 256;
      v218[0].i64[1] = a4;
      v210.i64[0] = 256;
      v210.i64[1] = a5;
      sub_240B3F2E8(sub_240B89C44, v218, &v210, 256, 256);
      v218[0].i64[0] = 256;
      v218[0].i64[1] = a5;
      v210.i64[0] = 256;
      v210.i64[1] = a4;
      v9 = &a5[0x4000];
      v10 = sub_240B89F28;
      goto LABEL_53;
    case 25:
      v208 = a3;
      v209 = a2;
      v218[0].i64[0] = 128;
      v218[0].i64[1] = a4;
      sub_240B3F2E8(sub_240B89F28, &v208, v218, 128, &a5[0x2000]);
      v218[0].i64[0] = 128;
      v218[0].i64[1] = a4;
      v210.i64[0] = 256;
      v210.i64[1] = a5;
      sub_240B3F2E8(sub_240B89C44, v218, &v210, 256, 128);
      v218[0].i64[0] = 256;
      v218[0].i64[1] = a5;
      v210.i64[0] = 256;
      v210.i64[1] = a4;
      v10 = sub_240B8A124;
      v9 = &a5[0x2000];
LABEL_53:
      v11 = 256;
      goto LABEL_146;
    case 26:
      v208 = a3;
      v209 = a2;
      v218[0].i64[0] = 256;
      v218[0].i64[1] = a5;
      sub_240B3F2E8(sub_240B8A124, &v208, v218, 256, &a5[0x2000]);
      v218[0].i64[0] = 256;
      v218[0].i64[1] = a5;
      v210.i64[0] = 128;
      v210.i64[1] = a4;
      sub_240B3F2E8(sub_240B89C44, v218, &v210, 128, 256);
      v218[0].i64[0] = 128;
      v218[0].i64[1] = a4;
      v210.i64[0] = 128;
      v210.i64[1] = a5;
      sub_240B3F2E8(sub_240B89F28, v218, &v210, 128, &a5[0x2000]);
      v218[0].i64[0] = 128;
      v218[0].i64[1] = a5;
      v210.i64[0] = 256;
      v210.i64[1] = a4;
      v10 = sub_240B89C44;
      v11 = 256;
      v9 = 128;
LABEL_146:
      sub_240B3F2E8(v10, v218, &v210, v11, v9);
      break;
    default:
      return;
  }
}

void sub_240B88A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v170 = *MEMORY[0x277D85DE8];
  v16 = v11;
  v17 = v10;
  v18 = v9;
  switch(v8)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
      v10->i32[0] = v9->i32[0];
      return;
    case 4:
      v107.i32[0] = v9->i32[0];
      v107.f32[1] = v9->f32[1] * 0.90176;
      v108.i32[0] = v9[4].i32[0];
      v108.f32[1] = v9[4].f32[1] * 0.90176;
      v109 = vmul_f32(v108, vdup_n_s32(0x3F66DA05u));
      v110 = vadd_f32(v107, v109);
      v111 = vsub_f32(v107, v109);
      v109.i32[0] = vdup_lane_s32(v110, 1).u32[0];
      v112 = vzip1_s32(v110, v111);
      v109.i32[1] = v111.i32[1];
      *v10->f32 = vadd_f32(v112, v109);
      *&v10->f32[v11] = vsub_f32(v112, v109);
      return;
    case 5:
      v54 = 0;
      v141 = 0u;
      v140 = 0u;
      v139 = 0u;
      v138 = 0u;
      do
      {
        v55 = *v18;
        v18 += 8;
        *(&v138 + v54) = vmulq_f32(vmulq_n_f32(v55, *(&xmmword_240C117C0 + v54)), xmmword_240C117C0);
        ++v54;
      }

      while (v54 != 4);
      v56 = 0;
      v128 = vaddq_f32(v138, v140);
      v129 = vsubq_f32(v138, v140);
      v57 = vaddq_f32(v139, v141);
      v58 = vmulq_f32(v139, vdupq_n_s32(0x3FB504F3u));
      v59 = vaddq_f32(v58, v57);
      v60 = vsubq_f32(v58, v57);
      v130 = v59;
      v131 = v60;
      v61 = 1;
      do
      {
        v62 = v61;
        v60.i32[0] = dword_240C123D8[v56];
        v63 = &v128 + v56;
        v64 = *v63;
        v65 = v63[2];
        *(&v124 + v56) = vmlaq_n_f32(*v63, v65, v60.f32[0]);
        *(&v124 + ((16 * v56) ^ 0x30)) = vmlsq_lane_f32(v64, v65, *v60.f32, 0);
        v56 = 1;
        v61 = 0;
      }

      while ((v62 & 1) != 0);
      v66 = 0;
      v67 = vzip1q_s32(v124, v126);
      v68 = vzip1q_s32(v125, v127);
      v69 = vzip2q_s32(v124, v126);
      v70 = vzip2q_s32(v125, v127);
      v71 = vzip1q_s32(v67, v68);
      v72 = vzip2q_s32(v67, v68);
      v73 = vzip1q_s32(v69, v70);
      v128 = vaddq_f32(v71, v73);
      v129 = vsubq_f32(v71, v73);
      v74 = vaddq_f32(v72, vzip2q_s32(v69, v70));
      v75 = vmulq_f32(v72, vdupq_n_s32(0x3FB504F3u));
      v76 = vaddq_f32(v75, v74);
      v77 = vsubq_f32(v75, v74);
      v130 = v76;
      v131 = v77;
      v78 = 1;
      do
      {
        v77.i32[0] = dword_240C123D8[v66];
        v79 = v78;
        v80 = &v128 + v66;
        v81 = v80[2];
        v82 = vmlsq_lane_f32(*v80, v81, *v77.f32, 0);
        *(v10 + 4 * v66 * v11) = vmlaq_n_f32(*v80, v81, v77.f32[0]);
        *(v10 + 4 * (v66 ^ 3) * v11) = v82;
        v66 = 1;
        v78 = 0;
      }

      while ((v79 & 1) != 0);
      return;
    case 6:
      v12.i32[0] = v9->i32[0];
      v13.f32[0] = v9->f32[1] * 0.90176;
      v10->i32[0] = vadd_f32(v12, v13).u32[0];
      v10->i32[v11] = vsub_f32(v12, v13).u32[0];
      return;
    case 7:
      v12.i32[0] = v9->i32[0];
      v13.f32[0] = v9->f32[1] * 0.90176;
      *v10->f32 = vzip1_s32(vadd_f32(v12, v13), vsub_f32(v12, v13));
      return;
    case 8:
      sub_240B89964(1, &v138, v11, v10, &v125, *&vmulq_f32(*v9, xmmword_240C117C0), 0.00624292809, v14, v15);
      return;
    case 9:
      v138 = vmulq_f32(*v9, xmmword_240C117C0);
      v124 = v138;
      sub_240B89964(1, v124.i32, 1, &v138, &v125, *v138.f32, 0.00624292809, v14, v15);
      v124 = v138;
      *v17 = v138;
      return;
    case 10:
      v94 = 0;
      v139 = 0u;
      v138 = 0u;
      v95 = 1;
      do
      {
        v96 = v95;
        *(&v138 + v94) = vmulq_f32(vmulq_n_f32(v9[8 * v94], flt_240C123E0[v94]), xmmword_240C117C0);
        v94 = 1;
        v95 = 0;
      }

      while ((v96 & 1) != 0);
      v124 = vaddq_f32(v138, v139);
      v125 = vsubq_f32(v138, v139);
      v97 = &v124;
      v98 = &v138;
      v99 = 1;
      do
      {
        v100 = 0;
        v101 = v99;
        do
        {
          v98->i32[0] = v97->i32[v100];
          v98 = (v98 + 8);
          ++v100;
        }

        while (v100 != 4);
        v99 = 0;
        v98 = &v138.i32[1];
        v97 = &v125;
      }

      while ((v101 & 1) != 0);
      sub_240B89A08(2, &v138, v11, v10, &v126);
      return;
    case 11:
      v31 = 0;
      v139 = 0u;
      v138 = 0u;
      v32 = 1;
      do
      {
        v33 = v32;
        *(&v138 + v31) = vmulq_f32(vmulq_n_f32(v9[8 * v31], flt_240C123E0[v31]), xmmword_240C117C0);
        v31 = 1;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v34 = &v138;
      v35 = &v124;
      v36 = 1;
      do
      {
        v37 = 0;
        v38 = v36;
        do
        {
          v35->i32[0] = v34->i32[v37];
          v35 = (v35 + 8);
          ++v37;
        }

        while (v37 != 4);
        v36 = 0;
        v35 = (v124.i64 + 4);
        v34 = &v139;
      }

      while ((v38 & 1) != 0);
      sub_240B89A08(2, &v124, 2, &v138, &v126);
      v171 = vld2q_f32(v138.f32);
      *v17 = vaddq_f32(v171.val[0], v171.val[1]);
      *(v17 + 4 * v16) = vsubq_f32(v171.val[0], v171.val[1]);
      return;
    case 18:
      v49 = 0;
      v153 = 0u;
      v152 = 0u;
      v151 = 0u;
      v150 = 0u;
      v149 = 0u;
      v148 = 0u;
      v147 = 0u;
      v146 = 0u;
      v145 = 0u;
      v144 = 0u;
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v140 = 0u;
      v50 = &v138;
      v139 = 0u;
      v138 = 0u;
      do
      {
        v51 = 0;
        v52 = xmmword_240C847B0 + v49;
        v53 = vld1q_dup_f32(v52);
        do
        {
          v50[v51] = vmulq_f32(vmulq_f32(v18[v51], v53), xmmword_240C847B0[v51]);
          ++v51;
        }

        while (v51 != 2);
        ++v49;
        v50 += 2;
        v18 += 16;
      }

      while (v49 != 8);
      v118 = v11;
      v119 = v10;
      v122 = 8;
      v123 = &v138;
      v120 = 8;
      v121 = &v124;
      sub_240B3F2E8(sub_240B89D9C, &v122, &v120, 8, v133);
      v122 = 8;
      v123 = &v124;
      v120 = 8;
      v121 = &v138;
      sub_240B3F9C8(&v122, &v120);
      v122 = 8;
      v123 = &v138;
      v25 = v133;
      v24 = sub_240B89D9C;
      goto LABEL_49;
    case 19:
      v89 = 0;
      v145 = 0u;
      v144 = 0u;
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v140 = 0u;
      v90 = &v138;
      v139 = 0u;
      v138 = 0u;
      do
      {
        v91 = 0;
        v92 = &xmmword_240C117C0 + v89;
        v93 = vld1q_dup_f32(v92);
        do
        {
          v90[v91] = vmulq_f32(vmulq_f32(v18[v91], v93), xmmword_240C847B0[v91]);
          ++v91;
        }

        while (v91 != 2);
        ++v89;
        v90 += 2;
        v18 += 16;
      }

      while (v89 != 4);
      v122 = 8;
      v123 = &v138;
      v120 = 8;
      v121 = &v124;
      sub_240B3F2E8(sub_240B89E10, &v122, &v120, 8, v132);
      v122 = 8;
      v123 = &v124;
      v120 = 4;
      v121 = &v138;
      sub_240B3F300(&v122, &v120);
      sub_240B3F3A8(&v138, 4, v17, v16, v132);
      return;
    case 20:
      v39 = 0;
      v145 = 0u;
      v144 = 0u;
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v140 = 0u;
      v40 = &v138;
      v139 = 0u;
      v138 = 0u;
      do
      {
        v41 = 0;
        v42 = &xmmword_240C117C0 + v39;
        v43 = vld1q_dup_f32(v42);
        do
        {
          v40[v41] = vmulq_f32(vmulq_f32(v18[v41], v43), xmmword_240C847B0[v41]);
          ++v41;
        }

        while (v41 != 2);
        ++v39;
        v40 += 2;
        v18 += 16;
      }

      while (v39 != 4);
      v118 = v11;
      v119 = v10;
      v122 = 8;
      v123 = &v138;
      v120 = 4;
      v121 = &v124;
      sub_240B3F300(&v122, &v120);
      sub_240B3F3A8(&v124, 4, &v138, 4, v132);
      v122 = 4;
      v123 = &v138;
      v120 = 8;
      v121 = &v124;
      sub_240B404FC(&v122, &v120);
      v122 = 8;
      v123 = &v124;
      v24 = sub_240B89E10;
      v25 = v132;
      goto LABEL_49;
    case 21:
      v44 = &v138;
      bzero(&v138, 0x400uLL);
      for (i = 0; i != 16; ++i)
      {
        v46 = 0;
        v47 = xmmword_240C847D0 + i;
        v48 = vld1q_dup_f32(v47);
        do
        {
          v44[v46] = vmulq_f32(vmulq_f32(v18[v46], v48), xmmword_240C847D0[v46]);
          ++v46;
        }

        while (v46 != 4);
        v44 += 4;
        v18 += 32;
      }

      v118 = v16;
      v119 = v17;
      v122 = 16;
      v123 = &v138;
      v120 = 16;
      v121 = &v124;
      sub_240B3F2E8(sub_240B89D28, &v122, &v120, 16, v135);
      v122 = 16;
      v123 = &v124;
      v120 = 16;
      v121 = &v138;
      sub_240B3F62C(&v122, &v120);
      v122 = 16;
      v123 = &v138;
      v25 = v135;
      v24 = sub_240B89D28;
      goto LABEL_68;
    case 22:
      v83 = 0;
      v169 = 0u;
      v168 = 0u;
      v167 = 0u;
      v166 = 0u;
      v165 = 0u;
      v164 = 0u;
      v163 = 0u;
      v162 = 0u;
      v161 = 0u;
      v160 = 0u;
      v159 = 0u;
      v158 = 0u;
      v157 = 0u;
      v156 = 0u;
      v155 = 0u;
      v154 = 0u;
      v153 = 0u;
      v152 = 0u;
      v151 = 0u;
      v150 = 0u;
      v149 = 0u;
      v148 = 0u;
      v147 = 0u;
      v146 = 0u;
      v145 = 0u;
      v144 = 0u;
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v140 = 0u;
      v84 = &v138;
      v139 = 0u;
      v138 = 0u;
      do
      {
        v85 = 0;
        v86 = xmmword_240C847B0 + v83;
        v87 = vld1q_dup_f32(v86);
        do
        {
          v84[v85] = vmulq_f32(vmulq_f32(v18[v85], v87), xmmword_240C847D0[v85]);
          ++v85;
        }

        while (v85 != 4);
        ++v83;
        v84 += 4;
        v18 += 32;
      }

      while (v83 != 8);
      v118 = v11;
      v119 = v10;
      v122 = 16;
      v123 = &v138;
      v120 = 16;
      v121 = &v124;
      sub_240B3F2E8(sub_240B89D9C, &v122, &v120, 16, v134);
      v122 = 16;
      v123 = &v124;
      v120 = 8;
      v121 = &v138;
      sub_240B3F714(&v122, &v120);
      v122 = 8;
      v123 = &v138;
      v24 = sub_240B89D28;
      v25 = v134;
LABEL_49:
      v88 = 8;
      goto LABEL_77;
    case 23:
      v102 = 0;
      v169 = 0u;
      v168 = 0u;
      v167 = 0u;
      v166 = 0u;
      v165 = 0u;
      v164 = 0u;
      v163 = 0u;
      v162 = 0u;
      v161 = 0u;
      v160 = 0u;
      v159 = 0u;
      v158 = 0u;
      v157 = 0u;
      v156 = 0u;
      v155 = 0u;
      v154 = 0u;
      v153 = 0u;
      v152 = 0u;
      v151 = 0u;
      v150 = 0u;
      v149 = 0u;
      v148 = 0u;
      v147 = 0u;
      v146 = 0u;
      v145 = 0u;
      v144 = 0u;
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v140 = 0u;
      v103 = &v138;
      v139 = 0u;
      v138 = 0u;
      do
      {
        v104 = 0;
        v105 = xmmword_240C847B0 + v102;
        v106 = vld1q_dup_f32(v105);
        do
        {
          v103[v104] = vmulq_f32(vmulq_f32(v18[v104], v106), xmmword_240C847D0[v104]);
          ++v104;
        }

        while (v104 != 4);
        ++v102;
        v103 += 4;
        v18 += 32;
      }

      while (v102 != 8);
      v118 = v11;
      v119 = v10;
      v122 = 16;
      v123 = &v138;
      v120 = 8;
      v121 = &v124;
      sub_240B3F714(&v122, &v120);
      v122 = 8;
      v123 = &v124;
      v120 = 8;
      v121 = &v138;
      sub_240B3F2E8(sub_240B89D28, &v122, &v120, 8, v134);
      v122 = 8;
      v123 = &v138;
      v120 = 16;
      v121 = &v124;
      sub_240B3F7FC(&v122, &v120);
      v122 = 16;
      v123 = &v124;
      v24 = sub_240B89D9C;
      v25 = v134;
      goto LABEL_68;
    case 24:
      v26 = &v138;
      bzero(&v138, 0x1000uLL);
      for (j = 0; j != 32; ++j)
      {
        v28 = 0;
        v29 = xmmword_240C84810 + j;
        v30 = vld1q_dup_f32(v29);
        do
        {
          v26[v28] = vmulq_f32(vmulq_f32(v18[v28], v30), xmmword_240C84810[v28]);
          ++v28;
        }

        while (v28 != 8);
        v26 += 8;
        v18 += 64;
      }

      v118 = v16;
      v119 = v17;
      v122 = 32;
      v123 = &v138;
      v120 = 32;
      v121 = &v124;
      sub_240B3F2E8(sub_240B89AAC, &v122, &v120, 32, v137);
      v122 = 32;
      v123 = &v124;
      v120 = 32;
      v121 = &v138;
      sub_240B3F2E8(sub_240B89C44, &v122, &v120, 32, 32);
      v122 = 32;
      v123 = &v138;
      v25 = v137;
      v24 = sub_240B89AAC;
      goto LABEL_76;
    case 25:
      v19 = &v138;
      bzero(&v138, 0x800uLL);
      for (k = 0; k != 16; ++k)
      {
        v21 = 0;
        v22 = xmmword_240C847D0 + k;
        v23 = vld1q_dup_f32(v22);
        do
        {
          v19[v21] = vmulq_f32(vmulq_f32(v18[v21], v23), xmmword_240C84810[v21]);
          ++v21;
        }

        while (v21 != 8);
        v19 += 8;
        v18 += 64;
      }

      v118 = v16;
      v119 = v17;
      v122 = 32;
      v123 = &v138;
      v120 = 32;
      v121 = &v124;
      sub_240B3F2E8(sub_240B89D28, &v122, &v120, 32, v136);
      v122 = 32;
      v123 = &v124;
      v120 = 16;
      v121 = &v138;
      sub_240B3F2E8(sub_240B89C44, &v122, &v120, 16, 32);
      v122 = 16;
      v123 = &v138;
      v24 = sub_240B89AAC;
      v25 = v136;
LABEL_68:
      v88 = 16;
      goto LABEL_77;
    case 26:
      v113 = &v138;
      bzero(&v138, 0x800uLL);
      for (m = 0; m != 16; ++m)
      {
        v115 = 0;
        v116 = xmmword_240C847D0 + m;
        v117 = vld1q_dup_f32(v116);
        do
        {
          v113[v115] = vmulq_f32(vmulq_f32(v18[v115], v117), xmmword_240C84810[v115]);
          ++v115;
        }

        while (v115 != 8);
        v113 += 8;
        v18 += 64;
      }

      v118 = v16;
      v119 = v17;
      v122 = 32;
      v123 = &v138;
      v120 = 16;
      v121 = &v124;
      sub_240B3F2E8(sub_240B89C44, &v122, &v120, 16, 32);
      v122 = 16;
      v123 = &v124;
      v120 = 16;
      v121 = &v138;
      sub_240B3F2E8(sub_240B89AAC, &v122, &v120, 16, v136);
      v122 = 16;
      v123 = &v138;
      v120 = 32;
      v121 = &v124;
      sub_240B3F2E8(sub_240B89C44, &v122, &v120, 32, 16);
      v122 = 32;
      v123 = &v124;
      v24 = sub_240B89D28;
      v25 = v136;
LABEL_76:
      v88 = 32;
LABEL_77:
      sub_240B3F2E8(v24, &v122, &v118, v88, v25);
      break;
    default:
      return;
  }
}

float sub_240B89964(uint64_t a1, __int32 *a2, uint64_t a3, uint64_t a4, int32x4_t *a5, float32x2_t a6, double a7, double a8, float32x2_t a9)
{
  v9 = 0;
  a6.i32[0] = *a2;
  LODWORD(a7) = a2[a1];
  a9.i32[0] = a2[2 * a1];
  *v10.i8 = vadd_f32(a6, a9);
  v11 = vsub_f32(a6, a9);
  v10.u64[1] = v11;
  v11.f32[0] = *&a7 + *&a2[3 * a1];
  *&a7 = *&a7 * 1.4142;
  v12 = vsub_f32(*&a7, v11);
  *v13.i8 = vadd_f32(*&a7, v11);
  v13.u64[1] = v12;
  v14 = vuzp1q_s32(v10, v13);
  *a5 = v14;
  v15 = 1;
  do
  {
    v16 = v15;
    v14.i32[0] = dword_240C123D8[v9];
    v17 = &a5->i32[v9];
    v18 = vld1_dup_f32(v17);
    v17 += 2;
    v19 = vld1_dup_f32(v17);
    *(a4 + 4 * v9 * a3) = vmla_n_f32(v18, v19, *v14.i32).u32[0];
    *(a4 + 4 * (v9 ^ 3) * a3) = vmls_lane_f32(v18, v19, *v14.i8, 0).u32[0];
    v9 = 1;
    v15 = 0;
  }

  while ((v16 & 1) != 0);
  return *v14.i32;
}

float32_t sub_240B89A08(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4, float32x2_t *a5)
{
  v5 = 0;
  v6 = a2[a1];
  v7 = *(a2 + 4 * a1);
  v8 = *(a2 + 12 * a1);
  v9 = vadd_f32(*a2, v6);
  v10 = vsub_f32(*a2, v6);
  *a5 = v9;
  a5[1] = v10;
  v11 = vadd_f32(v7, v8);
  v12 = vmul_f32(v7, vdup_n_s32(0x3FB504F3u));
  v13 = vadd_f32(v12, v11);
  v14 = vsub_f32(v12, v11);
  a5[2] = v13;
  a5[3] = v14;
  v15 = 1;
  do
  {
    v14.i32[0] = dword_240C123D8[v5];
    v16 = v15;
    v17 = &a5[v5];
    v18 = v17[2];
    v19 = vmls_lane_f32(*v17, v18, v14, 0);
    *(a4 + 4 * v5 * a3) = vmla_n_f32(*v17, v18, v14.f32[0]);
    *(a4 + 4 * (v5 ^ 3) * a3) = v19;
    v5 = 1;
    v15 = 0;
  }

  while ((v16 & 1) != 0);
  return v14.f32[0];
}

void sub_240B89AAC(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v10 = a4 + 16;
    v32 = a4 + 31;
    v31 = vdupq_n_s32(0x3FB504F3u);
    do
    {
      v11 = 0;
      v13 = *a1;
      v12 = a1[1];
      v14 = *a2;
      v15 = a2[1];
      v16 = (v12 + v8);
      v17 = 8 * *a1;
      do
      {
        a4[v11++] = *v16;
        v16 = (v16 + v17);
      }

      while (v11 != 16);
      v18 = v12 + 4 * v13;
      for (i = 16; i != 32; ++i)
      {
        a4[i] = *(v18 + v8);
        v18 += v17;
      }

      sub_240B3FFF4(a4, 4, a4, 4, a4 + 32);
      v20 = -15;
      v21 = v32;
      v22 = v32;
      do
      {
        v23 = v22[-1];
        --v22;
        *v21 = vaddq_f32(*v21, v23);
        v21 = v22;
      }

      while (!__CFADD__(v20++, 1));
      *v10 = vmulq_f32(*v10, v31);
      sub_240B3FFF4(v10, 4, v10, 4, a4 + 32);
      v26 = 0;
      v27 = v15 + 124 * v14;
      v28 = v10;
      do
      {
        v25.f32[0] = dword_240C83FEC[v26];
        v29 = v28[-16];
        v30 = *v28++;
        *(v15 + v8) = vmlaq_n_f32(v29, v30, v25.f32[0]);
        *(v27 + v8) = vmlsq_lane_f32(v29, v30, v25, 0);
        ++v26;
        v27 -= 4 * v14;
        v15 += 4 * v14;
      }

      while (v26 != 16);
      v9 += 4;
      v8 += 16;
    }

    while (v9 < a3);
  }
}

void *sub_240B89C44(void *result, void *a2, unint64_t a3, unint64_t a4)
{
  if (a3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 12;
    v7 = 8;
    v8 = 4;
    do
    {
      if (a4)
      {
        v9 = 0;
        for (i = 0; i < a4; i += 4)
        {
          v11 = result[1];
          v12 = *(v11 + v4 * *result + v9);
          v13 = *(v11 + v8 * *result + v9);
          v14 = *(v11 + v7 * *result + v9);
          v15 = *(v11 + v6 * *result + v9);
          v16 = vzip1q_s32(v12, v14);
          v17 = vzip1q_s32(v13, v15);
          v18 = vzip2q_s32(v12, v14);
          v19 = vzip2q_s32(v13, v15);
          v20 = (a2[1] + 4 * *a2 * i + 4 * v5);
          vst2_f32(v20, v16);
          *(a2[1] + 4 * (*a2 + *a2 * i) + 4 * v5) = vzip2q_s32(v16, v17);
          v21 = (a2[1] + 4 * *a2 * (i + 2) + 4 * v5);
          vst2_f32(v21, v18);
          *(a2[1] + 4 * *a2 * (i + 3) + 4 * v5) = vzip2q_s32(v18, v19);
          v9 += 16;
        }
      }

      v5 += 4;
      v6 += 16;
      v7 += 16;
      v8 += 16;
      v4 += 16;
    }

    while (v5 < a3);
  }

  return result;
}

void sub_240B89D28(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      sub_240B3FFF4((a1[1] + v8), *a1, (a2[1] + v8), *a2, a4);
      v8 += 16;
    }
  }
}

void sub_240B89D9C(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      sub_240B3F3A8((a1[1] + v8), *a1, (a2[1] + v8), *a2, a4);
      v8 += 16;
    }
  }
}

void sub_240B89E10(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      sub_240B40454((a1[1] + v8), *a1, a2[1] + v8, *a2, a4);
      v8 += 16;
    }
  }
}

double sub_240B89E84(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  v8 = 8;
  v9 = a3;
  sub_240B3F2E8(sub_240B8A50C, a1, &v8, 8, &a3[8]);
  v8 = 8;
  v9 = a3;
  v6 = 4;
  v7 = a2;
  sub_240B3F300(&v8, &v6);
  v8 = 4;
  v9 = a3;
  sub_240B41588(4, a2, &v8, a3 + 8);
  v8 = 4;
  v9 = a3;
  v6 = 8;
  v7 = a2;
  *&result = sub_240B404FC(&v8, &v6).u64[0];
  return result;
}

void sub_240B89F28(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v7 = 0;
    v8 = 0;
    v9 = a4 + 256;
    v10 = a4 + 384;
    v11 = a4 + 385;
    v12 = a4 + 1;
    v29 = vdupq_n_s32(0x3B800000u);
    v30 = vdupq_n_s32(0x3FB504F3u);
    do
    {
      v13 = 0;
      v14 = (a1[1] + v7);
      v15 = 4 * *a1;
      do
      {
        a4[v13++] = *v14;
        v14 = (v14 + v15);
      }

      while (v13 != 256);
      v16 = a4;
      for (i = 255; i != 127; --i)
      {
        v16[256] = vaddq_f32(*v16, a4[i]);
        ++v16;
      }

      sub_240B776C4(v9, a4 + 512);
      v18 = a4;
      for (j = 255; j != 127; --j)
      {
        v18[384] = vsubq_f32(*v18, a4[j]);
        ++v18;
      }

      for (k = 0; k != 128; ++k)
      {
        v10[k] = vmulq_n_f32(v10[k], dword_240C845B0[k]);
      }

      sub_240B776C4(v10, a4 + 512);
      *v10 = vmlaq_f32(*v11, v30, *v10);
      v21 = 126;
      v22 = v11;
      v23 = v11;
      do
      {
        v24 = v23[1];
        ++v23;
        *v22 = vaddq_f32(*v22, v24);
        v22 = v23;
        --v21;
      }

      while (v21);
      v25 = a4;
      do
      {
        *v25 = *(v9 + v21);
        v25 += 2;
        v21 += 16;
      }

      while (v21 != 2048);
      v26 = 0;
      v27 = v12;
      do
      {
        *v27 = v10[v26];
        v27 += 2;
        ++v26;
      }

      while (v26 != 128);
      for (m = 0; m != 256; ++m)
      {
        *(a2[1] + 4 * *a2 * m + 4 * v8) = vmulq_f32(a4[m], v29);
      }

      v8 += 4;
      v7 += 16;
    }

    while (v8 < a3);
  }
}

void sub_240B8A124(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 128);
      sub_240B776C4(a4, a4 + 128);
      v13 = 0;
      v14.i64[0] = 0x3C0000003C000000;
      v14.i64[1] = 0x3C0000003C000000;
      do
      {
        *(a2[1] + 4 * *a2 * v13 + 4 * i) = vmulq_f32(a4[v13], v14);
        ++v13;
      }

      while (v13 != 128);
      v8 += 16;
    }
  }
}

void sub_240B8A1E4(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v14 = vdupq_n_s32(0x3C800000u);
    do
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 64);
      sub_240B777F8(a4, a4 + 64);
      for (i = 0; i != 64; ++i)
      {
        *(a2[1] + 4 * *a2 * i + 4 * v9) = vmulq_f32(a4[i], v14);
      }

      v9 += 4;
      v8 += 16;
    }

    while (v9 < a3);
  }
}

void sub_240B8A2B8(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 32);
      sub_240B77928(a4, a4 + 32);
      v13 = 0;
      v14.i64[0] = 0x3D0000003D000000;
      v14.i64[1] = 0x3D0000003D000000;
      do
      {
        *(a2[1] + 4 * *a2 * v13 + 4 * i) = vmulq_f32(a4[v13], v14);
        ++v13;
      }

      while (v13 != 32);
      v8 += 16;
    }
  }
}

void sub_240B8A378(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 8);
      sub_240B41928(a4, a4 + 8);
      v13 = 0;
      v14.i64[0] = 0x3E0000003E000000;
      v14.i64[1] = 0x3E0000003E000000;
      do
      {
        *(a2[1] + 4 * *a2 * v13 + 4 * i) = vmulq_f32(a4[v13], v14);
        ++v13;
      }

      while (v13 != 8);
      v8 += 16;
    }
  }
}

void sub_240B8A438(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v14 = vdupq_n_s32(0x3D800000u);
    do
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 16);
      sub_240B417F4(a4, a4 + 16);
      for (i = 0; i != 16; ++i)
      {
        *(a2[1] + 4 * *a2 * i + 4 * v9) = vmulq_f32(a4[i], v14);
      }

      v9 += 4;
      v8 += 16;
    }

    while (v9 < a3);
  }
}

void *sub_240B8A50C(void *result, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v4 = 0;
    v5 = 0;
    v6 = vdupq_n_s32(0x3F0A8BD4u);
    v7 = vdupq_n_s32(0x3FA73D75u);
    v8 = vdupq_n_s32(0x3FB504F3u);
    __asm { FMOV            V3.4S, #0.25 }

    do
    {
      v14 = 0;
      v15 = (result[1] + v4);
      v16 = 4 * *result;
      do
      {
        a4[v14++] = *v15;
        v15 = (v15 + v16);
      }

      while (v14 != 4);
      v17 = 0;
      v18 = *a4;
      v19 = a4[1];
      v21 = a4[2];
      v20 = a4[3];
      v22 = vaddq_f32(*a4, v20);
      v23 = vaddq_f32(v19, v21);
      v24 = vaddq_f32(v22, v23);
      v25 = vsubq_f32(v22, v23);
      a4[4] = v24;
      a4[5] = v25;
      v26 = vmulq_f32(vsubq_f32(v18, v20), v6);
      v27 = vmulq_f32(vsubq_f32(v19, v21), v7);
      v28 = vaddq_f32(v26, v27);
      v29 = vsubq_f32(v26, v27);
      a4[7] = v29;
      a4[2] = v25;
      a4[3] = v29;
      v30 = vmlaq_f32(v29, v8, v28);
      a4[6] = v30;
      *a4 = v24;
      a4[1] = v30;
      do
      {
        *(a2[1] + 4 * *a2 * v17 + 4 * v5) = vmulq_f32(a4[v17], _Q3);
        ++v17;
      }

      while (v17 != 4);
      v5 += 4;
      v4 += 16;
    }

    while (v5 < a3);
  }

  return result;
}

uint64_t sub_240B8A5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, void *a11)
{
  v11 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v122 = v12;
  v120 = v13;
  v15 = v14;
  v17 = v16;
  v114 = v18;
  v139[512] = *MEMORY[0x277D85DE8];
  v115 = v19;
  v20 = v19[2];
  v21 = (v11[5] + 1388544 * a10);
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v26 = v22[3] + v24;
  v112 = a11[2];
  v113 = a11[3];
  v110 = a11[7];
  v111 = a11[8];
  v28 = v11[2];
  v27 = v11[3];
  bzero(v139, 0x1000uLL);
  bzero(v138, 0x1000uLL);
  bzero(v137, 0x1000uLL);
  v121 = v26;
  v29 = v24 >= v26;
  v30 = 0;
  if (!v29)
  {
    v31 = v23 + v24 * (v20 >> 3);
    v32 = 2 * v28 + 4 * v31;
    v33 = v28 + 4 * v31;
    v34 = v25 + v23;
    v125 = v17;
    v126 = v15;
    v123 = v17 + 72;
    v124 = v25 + v23;
    v35 = (v27 + 3 * v28 + 4 * v31);
    v36 = v20 >> 3;
    v37 = (v27 + v32);
    v38 = (v27 + 4 * v31);
    v39 = (v27 + v33);
    v132 = v24;
    v127 = v23;
    while (1)
    {
      v118 = v37;
      v119 = v35;
      v116 = v39;
      v117 = v38;
      if (v23 < v34)
      {
        break;
      }

LABEL_45:
      v35 = &v119[v36];
      v37 = &v118[v36];
      v39 = &v116[v36];
      v38 = &v117[v36];
      if (++v132 == v121)
      {
        goto LABEL_46;
      }
    }

    v40 = v114[2];
    v41 = v40 * (v115[1] + 8 * v132);
    v130 = v114[3] + v41 + 4 * *v115;
    v131 = v114[8] + v41 + 4 * *v115;
    v128 = v40 >> 2;
    v129 = v114[13] + v41 + 4 * *v115;
    v135 = v39;
    v136 = v38;
    v133 = v35;
    v134 = v37;
    v42 = v23;
    while (v15)
    {
      v43 = *(*(v15 + 24) + *(v15 + 16) * v132 + v42);
      if (v43)
      {
        v44 = v43 >> 1;
        goto LABEL_9;
      }

LABEL_44:
      ++v42;
      ++v133;
      ++v134;
      ++v135;
      ++v136;
      if (v42 == v34)
      {
        goto LABEL_45;
      }
    }

    v44 = 0;
LABEL_9:
    v45 = byte_240C87EA0[v44];
    sub_240B8750C(v44, (v131 + 32 * v42), v128, v21, v21 + 53248);
    sub_240B88A78(v44, v21, v139, v45, v46, v47, v48, v49);
    sub_240B8750C(v44, (v130 + 32 * v42), v128, v21 + 0x4000, v21 + 53248);
    sub_240B88A78(v44, &v21[0x4000], v138, v45, v50, v51, v52, v53);
    sub_240B8750C(v44, (v129 + 32 * v42), v128, v21 + 0x8000, v21 + 53248);
    sub_240B88A78(v44, &v21[0x8000], v137, v45, v54, v55, v56, v57);
    if (v15)
    {
      v58 = *(v122 + 64);
      v59 = *(v122 + 44) * *(v122 + 36);
      v60 = 1.0 / (*(v58 + 60) * v59);
      v61 = 1.0 / (*(v58 + 68) * v59);
    }

    else
    {
      v60 = 1.0;
      v61 = 1.0;
    }

    v62 = 0;
    v63 = *(v125 + 40);
    v64 = (v123 + 24 * v44);
    v65 = v63 + 4 * *v64;
    v66 = v63 + 4 * v64[2];
    v67 = byte_240C87EBB[v44];
    if (v45 <= 1)
    {
      v68 = 1;
    }

    else
    {
      v68 = v45;
    }

    if (v67 <= 1)
    {
      v69 = 1;
    }

    else
    {
      v69 = byte_240C87EBB[v44];
    }

    v70 = 4 * v45;
    v71 = v137;
    v72 = v138;
    v73 = v139;
    v75 = v135;
    v74 = v136;
    v77 = v133;
    v76 = v134;
    do
    {
      v78 = v73;
      v79 = v72;
      v80 = v71;
      v81 = v74;
      v82 = v75;
      v83 = v76;
      v84 = v77;
      v85 = v68;
      do
      {
        v86 = *v78++;
        v87 = v86;
        *v81++ = v60 * v86;
        v88 = *v79++;
        *v82++ = v60 * v88;
        *v83++ = v61 * v87;
        v89 = *v80++;
        *v84++ = v61 * v89;
        --v85;
      }

      while (v85);
      ++v62;
      v77 = (v77 + v36 * 4);
      v76 = (v76 + v36 * 4);
      v75 = (v75 + v36 * 4);
      v74 = (v74 + v36 * 4);
      v71 = (v71 + v70);
      v72 = (v72 + v70);
      v73 = (v73 + v70);
    }

    while (v62 != v69);
    v23 = v127;
    v34 = v124;
    if (v127 + v45 > v124)
    {
      v15 = v126;
    }

    else
    {
      v15 = v126;
      if (v24 + v67 <= v121)
      {
        if (v67 >= v45)
        {
          v90 = v45;
        }

        else
        {
          v90 = v67;
        }

        if (v67 <= v45)
        {
          v91 = v45;
        }

        else
        {
          v91 = v67;
        }

        if (v90)
        {
          v92 = 0;
          v93 = v21;
          do
          {
            v94 = v93;
            for (i = v91; i; --i)
            {
              v94[0x4000].i32[0] = 0;
              v94[0x8000].i32[0] = 0;
              v94->i32[0] = 0;
              v94 = (v94 + 4);
            }

            ++v92;
            v93 += 2 * v91;
          }

          while (v92 != v90);
        }

        v96 = 1.0;
        v97 = 1.0;
        if (v120)
        {
          v97 = *(*(v120 + 24) + *(v120 + 16) * v132 + 4 * v42);
        }

        if (v126)
        {
          v96 = v97 * (*(v122 + 44) * 128.0);
        }

        v98 = (v45 * v67) << 6;
        if (v98)
        {
          v99 = 0;
          v100 = 0;
          v101 = &v21[v30];
          do
          {
            v102 = v21[v99 + 0x4000];
            v103 = v21[v99 + 0x8000];
            v104 = v21[v99];
            v105 = vmulq_n_f32(*(v65 + v99 * 16), v96);
            v106 = vmulq_n_f32(*(v66 + v99 * 16), v96);
            v101[v99 + 49152] = vmulq_f32(v104, v105);
            v101[v99 + 50176] = vmulq_f32(v102, v105);
            v101[v99 + 51200] = vmulq_f32(v104, v106);
            v101[v99 + 52224] = vmulq_f32(v103, v106);
            ++v30;
            v100 += 4;
            ++v99;
          }

          while (v100 < v98);
        }
      }
    }

    goto LABEL_44;
  }

LABEL_46:
  v107 = (v24 >> 3);
  v108 = v111 + v110 * v107;
  *(v113 + v112 * v107 + (v23 >> 3)) = sub_240B87298(v21 + 49152, v21 + 50176, v30 * 4, a9, 0.0);
  result = sub_240B87298(v21 + 51200, v21 + 52224, v30 * 4, a9, 1.0);
  *(v108 + (v23 >> 3)) = result;
  return result;
}

float sub_240B8ABB4(uint64_t a1, float result)
{
  *(a1 + 32) = 0;
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *a1;
    v5 = *(a1 + 8);
    v6 = v5 - *a1;
    if (v5 == *a1)
    {
      v23 = 0uLL;
    }

    else
    {
      v7 = 0;
      *v2.i32 = v3;
      v8 = vdupq_n_s32(0xC0D55555);
      v9 = vdupq_n_s32(0x3F3E11C7u);
      v10 = vdupq_n_s32(0x3FB6E02Bu);
      v11 = vdupq_n_s32(0x3E32458Cu);
      v12 = vdupq_n_s32(0x3F813CEDu);
      v13 = vdupq_n_s32(0xB5F85AB0);
      v14 = vdupq_n_s32(0x3F7D8625u);
      v15 = vdupq_lane_s32(v2, 0);
      v16 = v6 >> 2;
      v17.i64[0] = 0x7F0000007FLL;
      v17.i64[1] = 0x7F0000007FLL;
      __asm { FMOV            V20.4S, #-1.0 }

      v23 = 0uLL;
      do
      {
        v24 = *v4++;
        v25 = vcvtq_f32_s32(v24);
        v26 = vmulq_n_f32(v25, 1.0 / v3);
        v27 = vaddq_s32(v26, v8);
        v28 = vaddq_f32(vsubq_s32(v26, vandq_s8(v27, v17)), _Q20);
        v23 = vaddq_f32(v23, vbicq_s8(vsubq_f32(0, vmulq_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v13, v28, vmlaq_f32(v10, v9, v28)), vmlaq_f32(v14, v28, vmlaq_f32(v12, v11, v28))), vcvtq_f32_s32(vshrq_n_s32(v27, 0x17uLL))), v25)), vceqq_f32(v15, v25)));
        v7 += 4;
      }

      while (v7 < v16);
    }

    result = vaddv_f32(*&vpaddq_f32(v23, v23)) + 0.0;
    *(a1 + 32) = result;
  }

  return result;
}

float sub_240B8ACD4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4 = *(a1 + 24);
  result = 0.0;
  if (v4)
  {
    v6 = *(a2 + 24);
    if (v6)
    {
      v7 = *a1;
      v8 = (*(a1 + 8) - *a1) >> 2;
      v9 = *a2;
      v10 = *(a2 + 8) - *a2;
      v11 = v10 >> 2;
      if (v8 <= v10 >> 2)
      {
        v12 = v10 >> 2;
      }

      else
      {
        v12 = (*(a1 + 8) - *a1) >> 2;
      }

      if (v12)
      {
        v13 = 0;
        *&a4 = (v6 + v4);
        v14 = 1.0 / *&a4;
        v15 = vdupq_lane_s32(*&a4, 0);
        v16 = vdupq_n_s32(0xC0D55555);
        v17.i64[0] = 0x7F0000007FLL;
        v17.i64[1] = 0x7F0000007FLL;
        __asm { FMOV            V5.4S, #-1.0 }

        v23 = vdupq_n_s32(0x3F3E11C7u);
        v24 = vdupq_n_s32(0x3FB6E02Bu);
        v25 = vdupq_n_s32(0x3E32458Cu);
        v26 = vdupq_n_s32(0x3F813CEDu);
        v27 = vdupq_n_s32(0xB5F85AB0);
        v28 = vdupq_n_s32(0x3F7D8625u);
        v29 = 0uLL;
        do
        {
          v30 = 0uLL;
          if (v8 > v13)
          {
            v30 = *v7;
          }

          v31 = 0uLL;
          if (v11 > v13)
          {
            v31 = *v9;
          }

          v32 = vcvtq_f32_s32(vaddq_s32(v31, v30));
          v33 = vmulq_n_f32(v32, v14);
          v34 = vaddq_s32(v33, v16);
          v35 = vaddq_f32(vsubq_s32(v33, vandq_s8(v34, v17)), _Q5);
          v29 = vaddq_f32(v29, vbicq_s8(vsubq_f32(0, vmulq_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v27, v35, vmlaq_f32(v24, v23, v35)), vmlaq_f32(v28, v35, vmlaq_f32(v26, v25, v35))), vcvtq_f32_s32(vshrq_n_s32(v34, 0x17uLL))), v32)), vceqq_f32(v15, v32)));
          v13 += 4;
          ++v9;
          ++v7;
        }

        while (v13 < v12);
      }

      else
      {
        v29 = 0uLL;
      }

      return (vaddv_f32(*&vpaddq_f32(v29, v29)) - *(a1 + 32)) - *(a2 + 32);
    }
  }

  return result;
}

float sub_240B8AE40(uint64_t a1, int32x4_t **a2)
{
  if (!*(a1 + 24))
  {
    return 0.0;
  }

  v2 = a2[3];
  if (!v2)
  {
    return INFINITY;
  }

  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v4 - *a1;
  if (v4 == *a1)
  {
    v17 = 0uLL;
  }

  else
  {
    v6 = 0;
    v7 = 1.0 / v2;
    v8 = v5 >> 2;
    v9 = vdupq_n_s32(0xC0D55555);
    v10 = vdupq_n_s32(0x3F3E11C7u);
    v11 = vdupq_n_s32(0x3FB6E02Bu);
    v12 = vdupq_n_s32(0x3E32458Cu);
    v13 = vdupq_n_s32(0x3F813CEDu);
    v14 = vdupq_n_s32(0xB5F85AB0);
    v15 = vdupq_n_s32(0x3F7D8625u);
    v16 = *a2;
    v17 = 0uLL;
    v18.i64[0] = 0x7F0000007FLL;
    v18.i64[1] = 0x7F0000007FLL;
    __asm { FMOV            V18.4S, #-1.0 }

    do
    {
      v24 = 0uLL;
      if ((a2[1] - *a2) >> 2 > v6)
      {
        v24 = *v16;
      }

      v25 = *v3++;
      v26 = vmulq_n_f32(vcvtq_f32_s32(v24), v7);
      v27 = vaddq_s32(v26, v9);
      v28 = vaddq_f32(vsubq_s32(v26, vandq_s8(v27, v18)), _Q18);
      v17 = vmlsq_f32(v17, vbicq_s8(vbslq_s8(vceqzq_s32(v24), v18, vaddq_f32(vdivq_f32(vmlaq_f32(v14, v28, vmlaq_f32(v11, v10, v28)), vmlaq_f32(v15, v28, vmlaq_f32(v13, v12, v28))), vcvtq_f32_s32(vshrq_n_s32(v27, 0x17uLL)))), vceqzq_s32(v25)), vcvtq_f32_s32(v25));
      v6 += 4;
      v16 += 16;
    }

    while (v6 < v8);
  }

  return vaddv_f32(*&vpaddq_f32(v17, v17)) - *(a1 + 32);
}

void sub_240B8AF90(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 - *a2;
  if (v6 > *(a1 + 8) - *a1)
  {
    sub_240B245C8(a1, v6 >> 2);
    v4 = *a2;
    v5 = a2[1];
    v6 = v5 - *a2;
  }

  if (v5 != v4)
  {
    v7 = v6 >> 2;
    v8 = *a1;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v9 = *v4;
      v4 += 4;
      *v8 += v9;
      v8 += 4;
      --v7;
    }

    while (v7);
  }

  *(a1 + 24) += a2[3];
}

uint64_t sub_240B8B020(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = result;
    v6 = v3 >> 1;
    v7 = result + 16 * (v3 >> 1);
    v8 = (a2 - 16);
    result = sub_240B8B110(v7, a2 - 16);
    if (result)
    {
      v9 = *(a2 - 16);
      v10 = *(a2 - 12);
      v11 = *(a2 - 8);
      v12 = *(a2 - 4);
      *v8 = *v7;
      if (v3 >= 2)
      {
        v13 = v7;
        while (1)
        {
          v14 = v6 - 1;
          v6 = (v6 - 1) >> 1;
          v7 = v5 + 16 * v6;
          if (v9 >= *v7)
          {
            if (*v7 < v9)
            {
              break;
            }

            v15 = *(v7 + 4);
            if (v10 >= v15)
            {
              if (v15 < v10)
              {
                break;
              }

              v16 = *(v7 + 8);
              if (v11 >= v16 && (v16 < v11 || v12 >= *(v7 + 12)))
              {
                break;
              }
            }
          }

          *v13 = *v7;
          v13 = (v5 + 16 * v6);
          if (v14 <= 1)
          {
            goto LABEL_17;
          }
        }

        v7 = v13;
      }

LABEL_17:
      *v7 = v9;
      *(v7 + 4) = v10;
      *(v7 + 8) = v11;
      *(v7 + 12) = v12;
    }
  }

  return result;
}

uint64_t sub_240B8B110(uint64_t a1, uint64_t a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  if (*a1 < *a2)
  {
    return 0;
  }

  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  if (v4 < v3)
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  v8 = v5 >= v6 && *(a2 + 12) < *(a1 + 12);
  v9 = v6 < v5 || v8;
  if (v3 >= v4)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void sub_240B8B174(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 - *a1;
  v6 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v12 = v4 + 40 * a2;
      if (v3 != v12)
      {
        v13 = a1[1];
        do
        {
          v15 = *(v13 - 40);
          v13 -= 40;
          v14 = v15;
          if (v15)
          {
            *(v3 - 32) = v14;
            operator delete(v14);
          }

          v3 = v13;
        }

        while (v13 != v12);
      }

      a1[1] = v12;
    }
  }

  else
  {
    v8 = a1[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v8 - v3) >> 3) < v7)
    {
      if (a2 <= 0x666666666666666)
      {
        v9 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v4) >> 3);
        v10 = 0x999999999999999ALL * ((v8 - v4) >> 3);
        if (v10 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x333333333333333)
        {
          v11 = 0x666666666666666;
        }

        else
        {
          v11 = v10;
        }

        sub_240B837BC(v11);
      }

      sub_240B228BC();
    }

    v16 = v3 + 40 * v7;
    v17 = 40 * a2 - 8 * (v5 >> 3);
    do
    {
      *(v3 + 32) = 0;
      *v3 = 0uLL;
      *(v3 + 16) = 0uLL;
      v3 += 40;
      v17 -= 40;
    }

    while (v17);
    a1[1] = v16;
  }
}

uint64_t *sub_240B8B31C(uint64_t **a1, int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 7);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_240B8B3FC(void *a1)
{
  if (a1)
  {
    sub_240B8B3FC(*a1);
    sub_240B8B3FC(a1[1]);

    operator delete(a1);
  }
}

uint64_t *sub_240B8B448(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t *sub_240B8B5E4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (v3)
    {
      v3(a1[2], *(v2 - 16));
    }

    else
    {
      free(*(v2 - 16));
    }
  }

  return a1;
}

char *sub_240B8B638(char *result, char *a2, unint64_t a3, uint64_t *a4, int64_t a5)
{
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      if (*(a2 - 1) < *(result + 1))
      {
        v7 = *result;
        *result = *(a2 - 1);
        *(a2 - 1) = v7;
      }
    }

    else if (a3 > 128)
    {
      v20 = a4;
      v21 = a3 >> 1;
      v22 = &result[8 * (a3 >> 1)];
      v23 = a3 >> 1;
      if (a3 <= a5)
      {
        sub_240B8B848(result, v22, v23, a4);
        v24 = &v20[v21];
        result = sub_240B8B848(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v24);
        v25 = &v20[a3];
        v26 = v24;
        while (v26 != v25)
        {
          v27 = *(v26 + 1) < *(v20 + 1);
          if (*(v26 + 1) >= *(v20 + 1))
          {
            v28 = v20;
          }

          else
          {
            v28 = v26;
          }

          v20 += *(v26 + 1) >= *(v20 + 1);
          v26 += v27;
          *v6 = *v28;
          v6 += 8;
          if (v20 == v24)
          {
            while (v26 != v25)
            {
              v30 = *v26++;
              *v6 = v30;
              v6 += 8;
            }

            return result;
          }
        }

        while (v20 != v24)
        {
          v29 = *v20++;
          *v6 = v29;
          v6 += 8;
        }
      }

      else
      {
        sub_240B8B638(result, v22, v23, a4, a5);
        sub_240B8B638(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v20, a5);

        return sub_240B8BA10(v6, &v6[8 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v20, a5);
      }
    }

    else if (result != a2)
    {
      v9 = result + 8;
      if (result + 8 != a2)
      {
        v10 = 0;
        v11 = result;
        do
        {
          v12 = *(v11 + 3);
          v13 = *(v11 + 1);
          v11 = v9;
          if (v12 < v13)
          {
            v14 = *v9;
            v15 = HIDWORD(*v11);
            v16 = v10;
            while (1)
            {
              *&result[v16 + 8] = *&result[v16];
              if (!v16)
              {
                break;
              }

              v17 = *&result[v16 - 4];
              v16 -= 8;
              if (v17 <= v15)
              {
                v18 = &result[v16 + 8];
                goto LABEL_16;
              }
            }

            v18 = result;
LABEL_16:
            *v18 = v14;
          }

          v9 = v11 + 8;
          v10 += 8;
        }

        while (v11 + 8 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_240B8B848(uint64_t result, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
LABEL_10:
      *v4 = *v6;
      return result;
    }

    if (a3 == 2)
    {
      v8 = *(a2 - 1);
      v9 = *(result + 4);
      v10 = v8 >= v9;
      if (v8 >= v9)
      {
        v11 = result;
      }

      else
      {
        v11 = a2 - 1;
      }

      *a4 = *v11;
      v4 = a4 + 1;
      if (v10)
      {
        v6 = a2 - 1;
      }

      goto LABEL_10;
    }

    if (a3 > 8)
    {
      v19 = (result + 8 * (a3 >> 1));
      sub_240B8B638(result, v19, a3 >> 1, a4, a3 >> 1);
      result = sub_240B8B638(&v6[a3 >> 1], a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
      v20 = &v6[a3 >> 1];
      while (v20 != a2)
      {
        v21 = *(v20 + 1) >= *(v6 + 1);
        if (*(v20 + 1) >= *(v6 + 1))
        {
          v22 = v6;
        }

        else
        {
          v22 = v20;
        }

        v20 += *(v20 + 1) < *(v6 + 1);
        v6 += v21;
        *v4++ = *v22;
        if (v6 == v19)
        {
          while (v20 != a2)
          {
            v24 = *v20++;
            *v4++ = v24;
          }

          return result;
        }
      }

      while (v6 != v19)
      {
        v23 = *v6++;
        *v4++ = v23;
      }
    }

    else if (result != a2)
    {
      v12 = (result + 8);
      *a4 = *result;
      if ((result + 8) != a2)
      {
        v13 = 0;
        v14 = a4;
        do
        {
          v15 = v6;
          v16 = v14;
          v6 = v12;
          v17 = ++v14;
          if (*(v15 + 3) < *(v16 + 1))
          {
            v16[1] = *v16;
            v17 = a4;
            if (v16 != a4)
            {
              v18 = v13;
              while (1)
              {
                v17 = (a4 + v18);
                if (*(v15 + 3) >= *(a4 + v18 - 4))
                {
                  break;
                }

                *v17 = *(v17 - 1);
                v18 -= 8;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }
          }

          v12 = v6 + 1;
          *v17 = *v6;
          v13 += 8;
        }

        while (v6 + 1 != a2);
      }
    }
  }

  return result;
}

char *sub_240B8BA10(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (a5)
  {
    v8 = a5;
    v11 = result;
    while (v8 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      while (*(a2 + 1) >= *(v11 + 1))
      {
        v11 += 8;
        if (!--a4)
        {
          return result;
        }
      }

      if (a4 >= v8)
      {
        if (a4 == 1)
        {
          v71 = *v11;
          *v11 = *a2;
          *a2 = v71;
          return result;
        }

        v20 = a4 / 2;
        v15 = &v11[8 * (a4 / 2)];
        if (a3 == a2)
        {
          v13 = a2;
        }

        else
        {
          v21 = (a3 - a2) >> 3;
          v13 = a2;
          do
          {
            v22 = v21 >> 1;
            v23 = &v13[8 * (v21 >> 1)];
            v24 = *(v23 + 1);
            v25 = v23 + 8;
            v21 += ~(v21 >> 1);
            if (v24 < *(v15 + 1))
            {
              v13 = v25;
            }

            else
            {
              v21 = v22;
            }
          }

          while (v21);
        }

        v12 = (v13 - a2) >> 3;
      }

      else
      {
        v12 = v8 / 2;
        v13 = &a2[8 * (v8 / 2)];
        if (a2 == v11)
        {
          v15 = v11;
        }

        else
        {
          v14 = (a2 - v11) >> 3;
          v15 = v11;
          do
          {
            v16 = v14 >> 1;
            v17 = &v15[8 * (v14 >> 1)];
            v18 = *(v17 + 1);
            v19 = v17 + 8;
            v14 += ~(v14 >> 1);
            if (*(v13 + 1) < v18)
            {
              v14 = v16;
            }

            else
            {
              v15 = v19;
            }
          }

          while (v14);
        }

        v20 = (v15 - v11) >> 3;
      }

      v26 = v13;
      if (v15 != a2)
      {
        v26 = v15;
        if (a2 != v13)
        {
          v27 = v15 + 8;
          if (v15 + 8 == a2)
          {
            v72 = *v15;
            v74 = v20;
            v34 = v13 - a2;
            v76 = a6;
            v35 = a3;
            v36 = v12;
            memmove(v15, v15 + 8, v13 - a2);
            v12 = v36;
            v20 = v74;
            a6 = v76;
            a3 = v35;
            v26 = &v15[v34];
            *v26 = v72;
          }

          else
          {
            v28 = a2 + 8;
            if (a2 + 8 == v13)
            {
              v37 = *(v13 - 1);
              v26 = v15 + 8;
              if (v13 - 8 != v15)
              {
                v75 = v20;
                v77 = a6;
                v38 = a3;
                v39 = v12;
                v73 = *(v13 - 1);
                memmove(v15 + 8, v15, v13 - 8 - v15);
                v12 = v39;
                v37 = v73;
                v20 = v75;
                a3 = v38;
                a6 = v77;
              }

              *v15 = v37;
            }

            else
            {
              v29 = (a2 - v15);
              v30 = (a2 - v15) >> 3;
              v31 = v13 - a2;
              if (v30 == (v13 - a2) >> 3)
              {
                do
                {
                  v32 = *(v27 - 1);
                  *(v27 - 1) = *(v28 - 1);
                  *(v28 - 1) = v32;
                  if (v27 == a2)
                  {
                    break;
                  }

                  v27 += 8;
                  v33 = v28 == v13;
                  v28 += 8;
                }

                while (!v33);
                v26 = a2;
              }

              else
              {
                v40 = v31 >> 3;
                v41 = (a2 - v15) >> 3;
                do
                {
                  v42 = v41;
                  v41 = v40;
                  v40 = v42 % v40;
                }

                while (v40);
                v43 = &v15[8 * v41];
                do
                {
                  v45 = *(v43 - 1);
                  v43 -= 8;
                  v44 = v45;
                  v46 = &v29[v43];
                  v47 = v43;
                  do
                  {
                    v48 = v47;
                    v47 = v46;
                    *v48 = *v46;
                    v49 = __OFSUB__(v30, (v13 - v46) >> 3);
                    v51 = v30 - ((v13 - v46) >> 3);
                    v50 = (v51 < 0) ^ v49;
                    v46 = &v15[8 * v51];
                    if (v50)
                    {
                      v46 = &v29[v47];
                    }
                  }

                  while (v46 != v43);
                  *v47 = v44;
                }

                while (v43 != v15);
                v26 = &v15[v31];
              }
            }
          }
        }
      }

      a4 -= v20;
      v8 -= v12;
      if (v20 + v12 >= a4 + v8)
      {
        v55 = a4;
        v56 = v12;
        v53 = a6;
        result = sub_240B8BA10(v26, v13, a3, v55, v8, a6, a7);
        v13 = v15;
        v8 = v56;
        a4 = v20;
        a3 = v26;
      }

      else
      {
        v52 = v11;
        v53 = a6;
        v54 = a3;
        result = sub_240B8BA10(v52, v15, v26, v20, v12, a6, a7);
        a3 = v54;
        v11 = v26;
      }

      a2 = v13;
      a6 = v53;
      if (!v8)
      {
        return result;
      }
    }

    if (a4 <= v8)
    {
      if (v11 != a2)
      {
        v66 = a6;
        v67 = v11;
        do
        {
          v68 = *v67;
          v67 += 8;
          *v66 = v68;
          v66 += 8;
        }

        while (v67 != a2);
        while (a2 != a3)
        {
          v69 = *(a2 + 1) < *(a6 + 1);
          if (*(a2 + 1) >= *(a6 + 1))
          {
            v70 = a6;
          }

          else
          {
            v70 = a2;
          }

          a6 += 8 * (*(a2 + 1) >= *(a6 + 1));
          a2 += 8 * v69;
          *v11 = *v70;
          v11 += 8;
          if (a6 == v66)
          {
            return result;
          }
        }

        return memmove(v11, a6, v66 - a6);
      }
    }

    else if (a2 != a3)
    {
      v57 = a6;
      v58 = a2;
      do
      {
        v59 = *v58;
        v58 += 8;
        *v57 = v59;
        v57 += 8;
      }

      while (v58 != a3);
      while (a2 != v11)
      {
        v60 = *(v57 - 1);
        v61 = *(a2 - 1);
        v62 = v60 >= v61;
        if (v60 >= v61)
        {
          v63 = v57;
        }

        else
        {
          v63 = a2;
        }

        if (v62)
        {
          v57 -= 8;
        }

        else
        {
          a2 -= 8;
        }

        *(a3 - 1) = *(v63 - 1);
        a3 -= 8;
        if (v57 == a6)
        {
          return result;
        }
      }

      if (v57 != a6)
      {
        v64 = -8;
        do
        {
          v65 = *(v57 - 1);
          v57 -= 8;
          *&a3[v64] = v65;
          v64 -= 8;
        }

        while (v57 != a6);
      }
    }
  }

  return result;
}

void sub_240B8BFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_240B8C428(&a17);
  v24 = *(v22 - 96);
  if (v24)
  {
    operator delete(v24);
  }

  a17 = v22 - 72;
  sub_240B31E8C(&a17);
  _Unwind_Resume(a1);
}

void sub_240B8C03C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_240B8C0B8(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_240B22DA4(v52, a3);
  v8 = a3 + 1;
  sub_240B22DA4(__p, a3 + 1);
  v9 = __p[0];
  v10 = v52[0];
  if (a3 == -1 || (bzero(__p[0], 4 * a3 + 4), a3))
  {
    v11 = 0;
    do
    {
      v12 = *(a1 + 4 * v11);
      v13 = 0;
      v14 = (v12 + 1);
      if (v12 != -1)
      {
        v15 = v12 + 1;
        do
        {
          v13 += v9[v15];
          v15 &= v15 - 1;
        }

        while (v15);
      }

      v10[v11] = v12 - v13;
      if (v8 > v14)
      {
        do
        {
          ++v9[v14];
          v14 = (v14 & -v14) + v14;
        }

        while (v8 > v14);
      }

      ++v11;
    }

    while (v11 != a3);
  }

  if (a3 >= a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = a3;
  }

  v17 = a3;
  while (v17 > a2)
  {
    v18 = v17 - 1;
    if (*(v52[0] + --v17))
    {
      v16 = v18 + 1;
      break;
    }
  }

  v20 = __clz(a3);
  v21 = (((-1 << (v20 ^ 0x1F)) + a3) >> (v20 ^ 0x1F)) - v20 + 32;
  if (!a3)
  {
    v21 = 0;
  }

  if (v21 >= 7)
  {
    v22 = 7;
  }

  else
  {
    v22 = v21;
  }

  v23 = v16 - a2;
  v24 = *(a4 + 8);
  v25 = *(a4 + 16);
  if (v24 >= v25)
  {
    v27 = (v24 - *a4) >> 3;
    v28 = v27 + 1;
    if ((v27 + 1) >> 61)
    {
      sub_240B228BC();
    }

    v29 = v25 - *a4;
    if (v29 >> 2 > v28)
    {
      v28 = v29 >> 2;
    }

    if (v29 >= 0x7FFFFFFFFFFFFFF8)
    {
      v30 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v30 = v28;
    }

    if (v30)
    {
      sub_240B299F4(v30);
    }

    v31 = (8 * v27);
    *v31 = 2 * v22;
    v31[1] = v23;
    v26 = (8 * v27 + 8);
    v32 = *(a4 + 8) - *a4;
    v33 = (8 * v27 - v32);
    memcpy(v33, *a4, v32);
    v34 = *a4;
    *a4 = v33;
    *(a4 + 8) = v26;
    *(a4 + 16) = 0;
    if (v34)
    {
      operator delete(v34);
    }
  }

  else
  {
    *v24 = 2 * v22;
    v24[1] = v23;
    v26 = v24 + 2;
  }

  *(a4 + 8) = v26;
  if (v16 > a2)
  {
    v35 = 0;
    do
    {
      v36 = __clz(v35);
      v37 = (((-1 << (v36 ^ 0x1F)) + v35) >> (v36 ^ 0x1F)) - v36 + 32;
      if (v35)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      if (v38 >= 7)
      {
        v39 = 7;
      }

      else
      {
        v39 = v38;
      }

      v40 = *(a4 + 16);
      if (v26 >= v40)
      {
        v42 = (v26 - *a4) >> 3;
        if ((v42 + 1) >> 61)
        {
          sub_240B228BC();
        }

        v43 = v40 - *a4;
        v44 = v43 >> 2;
        if (v43 >> 2 <= (v42 + 1))
        {
          v44 = v42 + 1;
        }

        if (v43 >= 0x7FFFFFFFFFFFFFF8)
        {
          v45 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v45 = v44;
        }

        if (v45)
        {
          sub_240B299F4(v45);
        }

        v46 = (8 * v42);
        v47 = *(v52[0] + a2);
        *v46 = 2 * v39;
        v46[1] = v47;
        v26 = (8 * v42 + 8);
        v48 = *(a4 + 8) - *a4;
        v49 = v46 - v48;
        memcpy(v46 - v48, *a4, v48);
        v50 = *a4;
        *a4 = v49;
        *(a4 + 8) = v26;
        *(a4 + 16) = 0;
        if (v50)
        {
          operator delete(v50);
        }
      }

      else
      {
        v41 = *(v52[0] + a2);
        *v26 = 2 * v39;
        v26[1] = v41;
        v26 += 2;
      }

      *(a4 + 8) = v26;
      v35 = *(v52[0] + a2++);
    }

    while (v16 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }
}

void sub_240B8C3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B8C428(uint64_t a1)
{
  v4 = (a1 + 104);
  sub_240B30C38(&v4);
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v4 = a1;
  sub_240B7BC3C(&v4);
  return a1;
}

void sub_240B8C480(int a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  atomic_fetch_add_explicit(&qword_27E5165E0, 1uLL, memory_order_relaxed);
  v4 = malloc_type_malloc(0x40100uLL, 0xF0EBF2FBuLL);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF80;
    v6 = (v4 & 0xFFFFFFFFFFFFFF80) + 256;
    *(v5 + 240) = v4;
    *(v5 + 248) = 0x40000;
  }

  else
  {
    v6 = 0;
  }

  v7[4] = 0;
  v7[5] = 0;
  v7[3] = v6;
  sub_240B8C03C(v7);
}

void sub_240B8C860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  sub_240B8C428(&a20);
  v28 = *(v26 - 184);
  if (v28)
  {
    operator delete(v28);
  }

  if (v25)
  {
    *(v26 - 152) = v25;
    operator delete(v25);
  }

  a20 = v26 - 136;
  sub_240B31E8C(&a20);
  sub_240B786A0((v26 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_240B8C8F0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2852A1938;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_240B8CCE4((a1 + 24), *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v6 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v5 != v6)
  {
    sub_240B2287C((a1 + 48), (v5 - v6) >> 2);
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_240B8CCE4((a1 + 72), *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v7 != v8)
  {
    sub_240B8D3FC((a1 + 96), 0xF0B7672A07A44C6BLL * ((v7 - v8) >> 2));
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v10 = *(a2 + 120);
  v9 = *(a2 + 128);
  if (v9 != v10)
  {
    sub_240B8D34C((a1 + 120), 0xF128CFC4A33F128DLL * ((v9 - v10) >> 4));
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v11 = *(a2 + 144);
  v12 = *(a2 + 152);
  if (v12 != v11)
  {
    sub_240B8D108((a1 + 144), 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 4));
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v13 = *(a2 + 168);
  v14 = *(a2 + 176);
  if (v14 != v13)
  {
    sub_240B8CEEC((a1 + 168), 0xEEEEEEEEEEEEEEEFLL * ((v14 - v13) >> 3));
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  sub_240B28D90((a1 + 192), *(a2 + 192), *(a2 + 200), *(a2 + 200) - *(a2 + 192));
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  sub_240B8CCE4((a1 + 216), *(a2 + 216), *(a2 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 224) - *(a2 + 216)) >> 3));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  sub_240B28D90((a1 + 240), *(a2 + 240), *(a2 + 248), *(a2 + 248) - *(a2 + 240));
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  sub_240B28D90((a1 + 272), *(a2 + 272), *(a2 + 280), *(a2 + 280) - *(a2 + 272));
  return a1;
}

void sub_240B8CBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, void **a11)
{
  v11[22] = v15;
  sub_240B8CD6C(&a11);
  a11 = v14;
  sub_240B8CDF0(&a11);
  v17 = *v13;
  if (*v13)
  {
    v11[16] = v17;
    operator delete(v17);
  }

  v18 = *v12;
  if (*v12)
  {
    v11[13] = v18;
    operator delete(v18);
  }

  sub_240B31E8C(&a11);
  v19 = *a9;
  if (*a9)
  {
    v11[7] = v19;
    operator delete(v19);
  }

  a11 = a10;
  sub_240B31E8C(&a11);
  _Unwind_Resume(a1);
}

uint64_t *sub_240B8CCE4(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240B8D4AC(result, a4);
  }

  return result;
}

void sub_240B8CD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_240B31E8C(&a9);
  _Unwind_Resume(a1);
}

void sub_240B8CD6C(void ***a1)
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
        v4 -= 15;
        sub_240B8CE94(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_240B8CDF0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240B8CE44(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_240B8CE44(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void sub_240B8CE94(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;

    operator delete(v3);
  }
}

void sub_240B8CEEC(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    sub_240B8D0B0(a2);
  }

  sub_240B228BC();
}

uint64_t *sub_240B8CF3C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    v7 = (a4 + 96);
    do
    {
      v8 = v6[2];
      v9 = v6[3];
      v10 = *(v6 + 8);
      v12 = *v6;
      v11 = v6[1];
      *(v7 - 3) = 0;
      v13 = v7 - 3;
      *(v7 - 6) = v12;
      *(v7 - 4) = v10;
      *(v7 - 3) = v9;
      *(v7 - 4) = v8;
      *(v7 - 5) = v11;
      v13[1] = 0;
      v13[2] = 0;
      sub_240B86FB8(v7 - 3, *(v6 + 9), *(v6 + 10), (*(v6 + 10) - *(v6 + 9)) >> 2);
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      sub_240B8D034(v7, *(v6 + 12), *(v6 + 13), (*(v6 + 13) - *(v6 + 12)) >> 3);
      v6 = (v6 + 120);
      v7 += 15;
    }

    while (v6 != a3);
    return v7 - 12;
  }

  return v4;
}

void sub_240B8CFF8(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 15;
    sub_240B8CE94(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_240B8D034(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240B3C80C(result, a4);
  }

  return result;
}

void sub_240B8D094(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B8D0B0(unint64_t a1)
{
  if (a1 < 0x222222222222223)
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B8D108(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_240B8D2F4(a2);
  }

  sub_240B228BC();
}

uint64_t sub_240B8D158(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
    v5 = a2;
    do
    {
      v6 = *v5;
      *(v4 + 16) = *(v5 + 2);
      *(v4 + 24) = 0;
      *v4 = v6;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      v8 = *(v5 + 3);
      v7 = *(v5 + 4);
      if (v7 != v8)
      {
        sub_240B8D2B8((v4 + 24), (v7 - v8) >> 1);
      }

      v5 += 3;
      v4 += 48;
      v13 = v4;
    }

    while (v5 != a3);
  }

  v11 = 1;
  sub_240B8D258(v10);
  return v4;
}

void sub_240B8D234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 32) = v12;
    operator delete(v12);
  }

  sub_240B8D258(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_240B8D258(uint64_t a1)
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

      v3 -= 48;
    }
  }

  return a1;
}

void sub_240B8D2B8(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_240B29578(a2);
  }

  sub_240B228BC();
}

void sub_240B8D2F4(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B8D34C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x3B5CC0ED7303B6)
  {
    sub_240B8D3A0(a2);
  }

  sub_240B228BC();
}

void sub_240B8D3A0(unint64_t a1)
{
  if (a1 < 0x3B5CC0ED7303B6)
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B8D3FC(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xF4898D5F85BB3ALL)
  {
    sub_240B8D450(a2);
  }

  sub_240B228BC();
}

void sub_240B8D450(unint64_t a1)
{
  if (a1 < 0xF4898D5F85BB3ALL)
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B8D4AC(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_240B32588(a2);
  }

  sub_240B228BC();
}

uint64_t *sub_240B8D4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_240B28D90(v4, *v6, *(v6 + 8), *(v6 + 8) - *v6);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_240B8D5AC(v8);
  return v4;
}

uint64_t sub_240B8D5AC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void sub_240B8D618(uint64_t a1)
{
  sub_240B8D650(a1);

  JUMPOUT(0x245CCE590);
}

uint64_t sub_240B8D650(uint64_t a1)
{
  *a1 = &unk_2852A1938;
  v2 = *(a1 + 272);
  if (v2)
  {
    *(a1 + 280) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 240);
  if (v3)
  {
    *(a1 + 248) = v3;
    operator delete(v3);
  }

  v9 = (a1 + 216);
  sub_240B31E8C(&v9);
  v4 = *(a1 + 192);
  if (v4)
  {
    *(a1 + 200) = v4;
    operator delete(v4);
  }

  v9 = (a1 + 168);
  sub_240B8CD6C(&v9);
  v9 = (a1 + 144);
  sub_240B8CDF0(&v9);
  v5 = *(a1 + 120);
  if (v5)
  {
    *(a1 + 128) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    *(a1 + 104) = v6;
    operator delete(v6);
  }

  v9 = (a1 + 72);
  sub_240B31E8C(&v9);
  v7 = *(a1 + 48);
  if (v7)
  {
    *(a1 + 56) = v7;
    operator delete(v7);
  }

  v9 = (a1 + 24);
  sub_240B31E8C(&v9);
  return a1;
}

void sub_240B8D74C(unsigned __int8 **a1, unint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 1)
  {
    v7 = *a1;
    v8 = a1[1];
    if (*a1 == v8)
    {
      memset(v27, 0, 24);
    }

    else
    {
      v9 = v7 + 1;
      if (v7 + 1 != v8)
      {
        v10 = *v7;
        v11 = v7 + 1;
        do
        {
          v13 = *v11++;
          v12 = v13;
          v14 = v10 >= v13;
          if (v10 <= v13)
          {
            v10 = v12;
          }

          if (!v14)
          {
            v7 = v9;
          }

          v9 = v11;
        }

        while (v11 != v8);
      }

      v15 = *v7 + 1;
      sub_240B7D1B4(&__p, v15);
      v16 = 0;
      do
      {
        *(__p + v16) = v16;
        ++v16;
      }

      while (v15 != v16);
      sub_240B7D1B4(v27, a1[1] - *a1);
      v17 = *a1;
      if (a1[1] != *a1)
      {
        v18 = 0;
        do
        {
          v19 = v25 - __p;
          if (v25 == __p)
          {
            *(v27[0] + v18) = 0;
            v23 = __p;
            v22 = *__p;
          }

          else
          {
            v20 = 0;
            v21 = v17[v18];
            if (v19 <= 1)
            {
              v19 = 1;
            }

            while (*(__p + v20) != v21)
            {
              if (v19 == ++v20)
              {
                *(v27[0] + v18) = v19;
                v22 = *(__p + v19);
                goto LABEL_24;
              }
            }

            *(v27[0] + v18) = v20;
            v23 = __p;
            v22 = *(__p + v20);
            if (v20)
            {
              v19 = v20;
              do
              {
LABEL_24:
                *(__p + v19) = *(__p + v19 - 1);
                --v19;
              }

              while (v19);
              v23 = __p;
            }
          }

          *v23 = v22;
          ++v18;
          v17 = *a1;
        }

        while (v18 < a1[1] - *a1);
      }

      if (__p)
      {
        v25 = __p;
        operator delete(__p);
      }
    }

    sub_240B8C03C(v26);
  }

  *(a3[3] + (*a3 >> 3)) = (1 << (*a3 & 7)) | *(a3[3] + (*a3 >> 3));
  v5 = *a3 + 1;
  *a3 = v5;
  *(a3[3] + (v5 >> 3)) = *(a3[3] + (v5 >> 3));
  *a3 += 2;
}

void sub_240B8DF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  a14 = &a22;
  sub_240B7BC3C(&a14);
  a22 = v27 - 160;
  sub_240B31E8C(&a22);
  a22 = v27 - 136;
  sub_240B31E8C(&a22);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void sub_240B8E080(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2;
    v5[0] = sub_240B2AC64;
    v5[1] = a3;
    if (*result)
    {
      (*result)(*(result + 8), v5, sub_240B8E1E4, sub_240B8E11C, 0, a2);
    }

    else
    {
      for (i = 0; i != v3; ++i)
      {
        sub_240B8E11C(v5, i);
      }
    }
  }
}

float32x4_t sub_240B8E11C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  if (**v2)
  {
    v4 = 0;
    v5 = (v3[3] + v3[2] * a2);
    v6 = (v3[8] + v3[7] * a2);
    v7 = (v3[13] + v3[12] * a2);
    v8 = v2[1];
    v9 = (*(v8 + 3) + *(v8 + 2) * a2);
    v10 = (*(v8 + 8) + *(v8 + 7) * a2);
    v11 = (*(v8 + 13) + *(v8 + 12) * a2);
    v12 = (*(v2[2] + 3) + *(v2[2] + 2) * a2);
    do
    {
      v13 = *v5++;
      v14 = v13;
      v15 = *v9++;
      v16 = vsubq_f32(v14, v15);
      v17 = *v6++;
      v18 = v17;
      v19 = *v10++;
      v20 = v19;
      v21 = *v7++;
      v22 = v21;
      v23 = vsubq_f32(v18, v20);
      v24 = *v11++;
      v25 = vsubq_f32(v22, v24);
      result = vaddq_f32(vmulq_f32(vmulq_f32(v16, v16), *v2[4]), vaddq_f32(vmulq_f32(vmulq_f32(v23, v23), *v2[5]), vmulq_f32(vmulq_f32(v25, v25), *v2[6])));
      *v12++ = result;
      v4 += 4;
    }

    while (v4 < **v2);
  }

  return result;
}

uint64_t sub_240B8E1E4(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_240B8E20C(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    sub_240B3C80C(a1, a3);
  }

  return a1;
}

void sub_240B8E274(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_240B8E290(uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_240B3C80C(a1, (v2 - *a2) >> 3);
  }

  return a1;
}

void sub_240B8E2F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B8E314(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 88;
    v4 = *(v2 - 56);
    if (v4)
    {
      *(v2 - 48) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 88;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char **sub_240B8E378(char **a1)
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
        v5 = *(v3 - 7);
        if (v5)
        {
          *(v3 - 6) = v5;
          operator delete(v5);
        }

        v3 -= 88;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_240B8E3E4(unint64_t a1, float *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v165 = (a2 - 44);
    v166 = (a2 - 22);
    v164 = (a2 - 66);
    v7 = a1;
    v172 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v7;
          v8 = a2 - v7;
          v9 = 0x2E8BA2E8BA2E8BA3 * ((a2 - v7) >> 3);
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

                sub_240B8F8C0(a1, (a1 + 88), v166);
                return;
              case 4:
                sub_240B8F8C0(a1, (a1 + 88), (a1 + 176));
                if (*(a2 - 3) > *(a1 + 252))
                {
                  v221 = *(a1 + 176);
                  v232 = *(a1 + 192);
                  v67 = *(a1 + 208);
                  v68 = *(a1 + 224);
                  *(a1 + 208) = 0;
                  *(a1 + 216) = 0;
                  *(a1 + 224) = 0;
                  v199 = *(a1 + 232);
                  v210 = *(a1 + 248);
                  v69 = v166[1];
                  *(a1 + 176) = *v166;
                  *(a1 + 192) = v69;
                  *(a1 + 208) = *(a2 - 14);
                  *(a1 + 224) = *(a2 - 5);
                  *(a2 - 6) = 0;
                  *(a2 - 5) = 0;
                  *(a2 - 7) = 0;
                  v70 = *(a2 - 2);
                  *(a1 + 248) = *(a2 - 1);
                  *(a1 + 232) = v70;
                  *v166 = v221;
                  v166[1] = v232;
                  v71 = *(a2 - 7);
                  if (v71)
                  {
                    *(a2 - 6) = v71;
                    v177 = v67;
                    operator delete(v71);
                    v67 = v177;
                  }

                  *(a2 - 14) = v67;
                  *(a2 - 5) = v68;
                  *(a2 - 2) = v199;
                  *(a2 - 1) = v210;
                  if (*(a1 + 252) > *(a1 + 164))
                  {
                    v222 = *(a1 + 88);
                    v233 = *(a1 + 104);
                    v72 = *(a1 + 136);
                    v200 = *(a1 + 144);
                    v211 = *(a1 + 160);
                    v73 = *(a1 + 192);
                    *(a1 + 88) = *(a1 + 176);
                    *(a1 + 104) = v73;
                    v74 = *(a1 + 208);
                    v75 = *(a1 + 216);
                    v76 = *(a1 + 224);
                    v77 = *(a1 + 248);
                    *(a1 + 144) = *(a1 + 232);
                    *(a1 + 160) = v77;
                    *(a1 + 176) = v222;
                    *(a1 + 192) = v233;
                    v78 = *(a1 + 120);
                    *(a1 + 120) = v74;
                    *(a1 + 128) = v75;
                    *(a1 + 136) = v76;
                    *(a1 + 208) = v78;
                    *(a1 + 224) = v72;
                    LODWORD(v78) = *(a1 + 164);
                    LODWORD(v77) = *(a1 + 76);
                    *(a1 + 248) = v211;
                    *(a1 + 232) = v200;
                    if (*&v78 > *&v77)
                    {
                      v223 = *a1;
                      v234 = *(a1 + 16);
                      v79 = *(a1 + 48);
                      v201 = *(a1 + 56);
                      v212 = *(a1 + 72);
                      v80 = *(a1 + 104);
                      *a1 = *(a1 + 88);
                      *(a1 + 16) = v80;
                      v81 = *(a1 + 144);
                      *(a1 + 72) = *(a1 + 160);
                      *(a1 + 56) = v81;
                      *(a1 + 104) = v234;
                      *(a1 + 88) = v223;
                      v82 = *(a1 + 32);
                      *(a1 + 32) = v74;
                      *(a1 + 40) = v75;
                      *(a1 + 48) = v76;
                      *(a1 + 120) = v82;
                      *(a1 + 136) = v79;
                      *(a1 + 144) = v201;
                      *(a1 + 160) = v212;
                    }
                  }
                }

                return;
              case 5:

                sub_240B8FBE0(a1, a1 + 88, a1 + 176, (a1 + 264), v166);
                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              if (*(a2 - 3) > *(a1 + 76))
              {
                v220 = *a1;
                v231 = *(a1 + 16);
                v62 = *(a1 + 32);
                v63 = *(a1 + 48);
                *(a1 + 32) = 0;
                *(a1 + 40) = 0;
                *(a1 + 48) = 0;
                v198 = *(a1 + 56);
                v209 = *(a1 + 72);
                v64 = v166[1];
                *a1 = *v166;
                *(a1 + 16) = v64;
                *(a1 + 32) = *(a2 - 14);
                *(a1 + 48) = *(a2 - 5);
                *(a2 - 6) = 0;
                *(a2 - 5) = 0;
                *(a2 - 7) = 0;
                v65 = *(a2 - 2);
                *(a1 + 72) = *(a2 - 1);
                *(a1 + 56) = v65;
                *v166 = v220;
                v166[1] = v231;
                v66 = *(a2 - 7);
                if (v66)
                {
                  *(a2 - 6) = v66;
                  v176 = v62;
                  operator delete(v66);
                  v62 = v176;
                }

                *(a2 - 14) = v62;
                *(a2 - 5) = v63;
                *(a2 - 2) = v198;
                *(a2 - 1) = v209;
              }

              return;
            }
          }

          if (v8 <= 2111)
          {
            v83 = (a1 + 88);
            v85 = a1 == a2 || v83 == a2;
            if (a4)
            {
              if (!v85)
              {
                v86 = 0;
                v87 = a1;
                do
                {
                  v88 = v83;
                  v89 = *(v87 + 164);
                  if (v89 > *(v87 + 76))
                  {
                    v224 = *v83;
                    v235 = *(v83 + 1);
                    v90 = *(v87 + 120);
                    v91 = *(v87 + 144);
                    v178 = *(v87 + 128);
                    *(v87 + 120) = 0;
                    *(v87 + 128) = 0;
                    *(v87 + 136) = 0;
                    v202 = v91;
                    v213 = *(v87 + 160);
                    v92 = v86;
                    v93 = *(v87 + 168);
                    while (1)
                    {
                      v94 = a1 + v92;
                      v95 = *(a1 + v92 + 16);
                      *(v94 + 88) = *(a1 + v92);
                      *(v94 + 104) = v95;
                      v96 = *(a1 + v92 + 120);
                      if (v96)
                      {
                        *(v94 + 128) = v96;
                        operator delete(v96);
                        *(v94 + 128) = 0;
                        *(v94 + 136) = 0;
                      }

                      *(v94 + 120) = *(v94 + 32);
                      *(v94 + 136) = *(v94 + 48);
                      *(v94 + 40) = 0;
                      *(v94 + 48) = 0;
                      *(v94 + 32) = 0;
                      v97 = *(v94 + 72);
                      *(v94 + 144) = *(v94 + 56);
                      *(v94 + 160) = v97;
                      if (!v92)
                      {
                        break;
                      }

                      v98 = (a1 + v92);
                      v99 = *(a1 + v92 - 12);
                      v92 -= 88;
                      if (v89 <= v99)
                      {
                        v100 = a1 + v92 + 88;
                        v101 = v98 + 7;
                        goto LABEL_105;
                      }
                    }

                    v98 = a1;
                    v101 = (a1 + 56);
                    v100 = a1;
LABEL_105:
                    *v100 = v224;
                    *(v100 + 16) = v235;
                    v102 = v98[4];
                    if (v102)
                    {
                      *(v100 + 40) = v102;
                      operator delete(v102);
                      v98[5] = 0;
                      v98[6] = 0;
                    }

                    v98[4] = v90;
                    *(v100 + 40) = v178;
                    *(v101 + 4) = v213;
                    *v101 = v202;
                    *(v100 + 76) = v89;
                    *(v100 + 80) = v93;
                    a2 = v172;
                  }

                  v83 = v88 + 22;
                  v86 += 88;
                  v87 = v88;
                }

                while (v88 + 22 != a2);
              }
            }

            else if (!v85)
            {
              do
              {
                v152 = v83;
                v153 = *(a1 + 164);
                if (v153 > *(a1 + 76))
                {
                  v227 = *v83;
                  v238 = *(v83 + 1);
                  v182 = *(a1 + 120);
                  v154 = *(a1 + 136);
                  *(a1 + 120) = 0;
                  *(a1 + 128) = 0;
                  *(a1 + 136) = 0;
                  v205 = *(a1 + 144);
                  v216 = *(a1 + 160);
                  v155 = v83;
                  v156 = *(a1 + 168);
                  do
                  {
                    v157 = v155;
                    v158 = *(v155 - 18);
                    *v155 = *(v155 - 22);
                    *(v155 + 1) = v158;
                    v159 = *(v155 + 4);
                    if (v159)
                    {
                      *(v155 + 5) = v159;
                      operator delete(v159);
                      *(v155 + 5) = 0;
                      *(v155 + 6) = 0;
                    }

                    *(v155 + 2) = *(v155 - 14);
                    *(v155 + 6) = *(v155 - 5);
                    *(v155 - 6) = 0;
                    *(v155 - 5) = 0;
                    *(v155 - 7) = 0;
                    v160 = *(v155 - 1);
                    *(v155 + 14) = *(v155 - 2);
                    v155 -= 22;
                    v161 = *(v157 - 25);
                    *(v157 + 18) = v160;
                  }

                  while (v153 > v161);
                  *v155 = v227;
                  *(v157 - 18) = v238;
                  v162 = *(v157 - 7);
                  if (v162)
                  {
                    *(v157 - 6) = v162;
                    operator delete(v162);
                  }

                  v163 = v157 - 8;
                  *(v157 - 14) = v182;
                  *(v157 - 5) = v154;
                  *(v163 + 4) = v216;
                  *v163 = v205;
                  *(v157 - 3) = v153;
                  *(v157 - 1) = v156;
                  a2 = v172;
                }

                v83 = (v152 + 88);
                a1 = v152;
              }

              while ((v152 + 88) != a2);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v103 = v10 >> 1;
              v104 = v10 >> 1;
              do
              {
                v105 = v104;
                if (v103 >= v104)
                {
                  v106 = (2 * v104) | 1;
                  v107 = a1 + 88 * v106;
                  if (2 * v105 + 2 < v9 && *(v107 + 76) > *(v107 + 164))
                  {
                    v107 += 88;
                    v106 = 2 * v105 + 2;
                  }

                  v108 = a1 + 88 * v105;
                  v109 = *(v108 + 76);
                  if (*(v107 + 76) <= v109)
                  {
                    v225 = *v108;
                    v236 = *(v108 + 16);
                    v179 = *(v108 + 32);
                    v110 = *(v108 + 48);
                    *(v108 + 40) = 0;
                    *(v108 + 48) = 0;
                    *(v108 + 32) = 0;
                    v214 = *(v108 + 72);
                    v203 = *(v108 + 56);
                    v168 = *(v108 + 80);
                    v171 = v110;
                    do
                    {
                      v111 = v108;
                      v108 = v107;
                      v112 = *(v107 + 16);
                      *v111 = *v107;
                      *(v111 + 16) = v112;
                      v113 = *(v111 + 32);
                      if (v113)
                      {
                        *(v111 + 40) = v113;
                        operator delete(v113);
                        *(v111 + 32) = 0;
                        *(v111 + 40) = 0;
                        *(v111 + 48) = 0;
                      }

                      *(v111 + 32) = *(v108 + 32);
                      *(v111 + 48) = *(v108 + 48);
                      *(v108 + 32) = 0;
                      *(v108 + 40) = 0;
                      *(v108 + 48) = 0;
                      v114 = *(v108 + 56);
                      *(v111 + 72) = *(v108 + 72);
                      *(v111 + 56) = v114;
                      if (v103 < v106)
                      {
                        break;
                      }

                      v115 = 2 * v106;
                      v106 = (2 * v106) | 1;
                      v107 = a1 + 88 * v106;
                      v116 = v115 + 2;
                      if (v116 < v9 && *(v107 + 76) > *(v107 + 164))
                      {
                        v107 += 88;
                        v106 = v116;
                      }
                    }

                    while (*(v107 + 76) <= v109);
                    *v108 = v225;
                    *(v108 + 16) = v236;
                    v117 = *(v108 + 32);
                    if (v117)
                    {
                      *(v108 + 40) = v117;
                      operator delete(v117);
                    }

                    *(v108 + 32) = v179;
                    *(v108 + 48) = v171;
                    *(v108 + 56) = v203;
                    *(v108 + 72) = v214;
                    *(v108 + 76) = v109;
                    *(v108 + 80) = v168;
                  }
                }

                v104 = v105 - 1;
              }

              while (v105);
              v118 = 0x2E8BA2E8BA2E8BA3 * (v8 >> 3);
              v119 = v172;
              do
              {
                v120 = 0;
                v121 = v119;
                v204 = *a1;
                v215 = *(a1 + 16);
                v122 = *(a1 + 40);
                v173 = *(a1 + 48);
                v180 = *(a1 + 32);
                *(a1 + 40) = 0;
                *(a1 + 48) = 0;
                *(a1 + 32) = 0;
                v123 = a1;
                v191 = *(a1 + 56);
                v194 = *(a1 + 72);
                do
                {
                  v124 = v123 + 88 * v120;
                  v125 = v124 + 88;
                  if (2 * v120 + 2 >= v118)
                  {
                    v120 = (2 * v120) | 1;
                  }

                  else
                  {
                    v126 = *(v124 + 164);
                    v127 = *(v124 + 252);
                    v128 = v124 + 176;
                    if (v126 <= v127)
                    {
                      v120 = (2 * v120) | 1;
                    }

                    else
                    {
                      v125 = v128;
                      v120 = 2 * v120 + 2;
                    }
                  }

                  v129 = *(v125 + 16);
                  *v123 = *v125;
                  *(v123 + 16) = v129;
                  v130 = *(v123 + 32);
                  if (v130)
                  {
                    *(v123 + 40) = v130;
                    operator delete(v130);
                    *(v123 + 32) = 0;
                    *(v123 + 40) = 0;
                    *(v123 + 48) = 0;
                  }

                  v131 = (v125 + 32);
                  *(v123 + 32) = *(v125 + 32);
                  *(v123 + 48) = *(v125 + 48);
                  *(v125 + 32) = 0;
                  *(v125 + 40) = 0;
                  *(v125 + 48) = 0;
                  v132 = *(v125 + 56);
                  *(v123 + 72) = *(v125 + 72);
                  *(v123 + 56) = v132;
                  v123 = v125;
                }

                while (v120 <= ((v118 - 2) >> 1));
                v119 = (v119 - 88);
                if (v125 == (v121 - 88))
                {
                  *v125 = v204;
                  *(v125 + 16) = v215;
                  v150 = *(v125 + 32);
                  if (v150)
                  {
                    *(v125 + 40) = v150;
                    operator delete(v150);
                  }

                  *(v125 + 32) = v180;
                  *(v125 + 40) = v122;
                  *(v125 + 48) = v173;
                  *(v125 + 56) = v191;
                  *(v125 + 72) = v194;
                }

                else
                {
                  v133 = *(v121 - 72);
                  *v125 = *v119;
                  *(v125 + 16) = v133;
                  v134 = *(v125 + 32);
                  if (v134)
                  {
                    *(v125 + 40) = v134;
                    operator delete(v134);
                    *v131 = 0;
                    *(v125 + 40) = 0;
                    *(v125 + 48) = 0;
                  }

                  *(v125 + 32) = *(v121 - 56);
                  *(v125 + 48) = *(v121 - 5);
                  *(v121 - 6) = 0;
                  *(v121 - 5) = 0;
                  *(v121 - 7) = 0;
                  v135 = *(v121 - 2);
                  *(v125 + 72) = *(v121 - 1);
                  *(v125 + 56) = v135;
                  *v119 = v204;
                  *(v121 - 72) = v215;
                  v136 = *(v121 - 7);
                  if (v136)
                  {
                    *(v121 - 6) = v136;
                    operator delete(v136);
                  }

                  v137 = v121 - 2;
                  *(v121 - 7) = v180;
                  *(v121 - 6) = v122;
                  *(v121 - 5) = v173;
                  *v137 = v191;
                  v137[1] = v194;
                  v138 = v125 + 88 - a1;
                  if (v138 >= 89)
                  {
                    v139 = (0x2E8BA2E8BA2E8BA3 * (v138 >> 3) - 2) >> 1;
                    v140 = a1 + 88 * v139;
                    v141 = *(v125 + 76);
                    if (*(v140 + 76) > v141)
                    {
                      v226 = *v125;
                      v237 = *(v125 + 16);
                      v142 = *(v125 + 32);
                      v143 = *(v125 + 48);
                      *(v125 + 40) = 0;
                      *(v125 + 48) = 0;
                      *v131 = 0;
                      v181 = v142;
                      v185 = *(v125 + 56);
                      v188 = *(v125 + 72);
                      v144 = *(v125 + 80);
                      do
                      {
                        v145 = v140;
                        v146 = *(v140 + 16);
                        *v125 = *v140;
                        *(v125 + 16) = v146;
                        v147 = *(v125 + 32);
                        if (v147)
                        {
                          *(v125 + 40) = v147;
                          operator delete(v147);
                          *(v125 + 32) = 0;
                          *(v125 + 40) = 0;
                          *(v125 + 48) = 0;
                        }

                        *(v125 + 32) = *(v145 + 32);
                        *(v125 + 48) = *(v145 + 48);
                        *(v145 + 32) = 0;
                        *(v145 + 40) = 0;
                        *(v145 + 48) = 0;
                        v148 = *(v145 + 56);
                        *(v125 + 72) = *(v145 + 72);
                        *(v125 + 56) = v148;
                        if (!v139)
                        {
                          break;
                        }

                        v139 = (v139 - 1) >> 1;
                        v140 = a1 + 88 * v139;
                        v125 = v145;
                      }

                      while (*(v140 + 76) > v141);
                      *v145 = v226;
                      *(v145 + 16) = v237;
                      v149 = *(v145 + 32);
                      if (v149)
                      {
                        *(v145 + 40) = v149;
                        operator delete(v149);
                      }

                      *(v145 + 32) = v181;
                      *(v145 + 48) = v143;
                      *(v145 + 56) = v185;
                      *(v145 + 72) = v188;
                      *(v145 + 76) = v141;
                      *(v145 + 80) = v144;
                      v119 = (v121 - 88);
                    }
                  }
                }
              }

              while (v118-- > 2);
            }

            return;
          }

          v11 = v9 >> 1;
          v12 = a1 + 88 * (v9 >> 1);
          if (v8 < 0x2C01)
          {
            sub_240B8F8C0(v12, a1, v166);
          }

          else
          {
            sub_240B8F8C0(a1, v12, v166);
            v13 = 88 * v11;
            sub_240B8F8C0((a1 + 88), (v13 + a1 - 88), v165);
            sub_240B8F8C0((a1 + 176), (a1 + 88 + v13), v164);
            sub_240B8F8C0((v13 + a1 - 88), v12, (a1 + 88 + v13));
            v217 = *a1;
            v228 = *(a1 + 16);
            v14 = *(a1 + 48);
            v15 = *(a1 + 32);
            *(a1 + 40) = 0;
            *(a1 + 48) = 0;
            *(a1 + 32) = 0;
            v195 = *(a1 + 56);
            v206 = *(a1 + 72);
            v16 = *(v12 + 16);
            *a1 = *v12;
            *(a1 + 16) = v16;
            *(a1 + 32) = *(v12 + 32);
            *(a1 + 48) = *(v12 + 48);
            *(v12 + 32) = 0;
            *(v12 + 40) = 0;
            *(v12 + 48) = 0;
            v17 = *(v12 + 56);
            *(a1 + 72) = *(v12 + 72);
            *(a1 + 56) = v17;
            *v12 = v217;
            *(v12 + 16) = v228;
            *(v12 + 32) = v15;
            *(v12 + 48) = v14;
            *(v12 + 72) = v206;
            *(v12 + 56) = v195;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v18 = *(a1 + 76);
          if (*(a1 - 12) > v18)
          {
            goto LABEL_17;
          }

          v190 = *a1;
          v193 = *(a1 + 16);
          v170 = *(a1 + 32);
          v42 = *(a1 + 48);
          *(a1 + 40) = 0;
          *(a1 + 48) = 0;
          *(a1 + 32) = 0;
          v184 = *(a1 + 56);
          v187 = *(a1 + 72);
          if (v18 <= *(a2 - 3))
          {
            v45 = a1 + 88;
            do
            {
              v7 = v45;
              if (v45 >= a2)
              {
                break;
              }

              v46 = *(v45 + 76);
              v45 += 88;
            }

            while (v18 <= v46);
          }

          else
          {
            v43 = a1;
            do
            {
              v7 = v43 + 88;
              v44 = *(v43 + 164);
              v43 += 88;
            }

            while (v18 <= v44);
          }

          if (v7 < a2)
          {
            v47 = v172;
            do
            {
              a2 = v47 - 22;
              v48 = *(v47 - 3);
              v47 -= 22;
            }

            while (v18 > v48);
          }

          v49 = *(a1 + 80);
          while (v7 < a2)
          {
            v219 = *v7;
            v230 = *(v7 + 16);
            v50 = *(v7 + 32);
            v51 = *(v7 + 48);
            *(v7 + 32) = 0;
            *(v7 + 40) = 0;
            *(v7 + 48) = 0;
            v197 = *(v7 + 56);
            v208 = *(v7 + 72);
            v52 = *(a2 + 1);
            *v7 = *a2;
            *(v7 + 16) = v52;
            *(v7 + 32) = *(a2 + 2);
            *(v7 + 48) = *(a2 + 6);
            *(a2 + 4) = 0;
            *(a2 + 5) = 0;
            *(a2 + 6) = 0;
            v53 = *(a2 + 14);
            *(v7 + 72) = *(a2 + 18);
            *(v7 + 56) = v53;
            *a2 = v219;
            *(a2 + 1) = v230;
            v54 = *(a2 + 4);
            if (v54)
            {
              *(a2 + 5) = v54;
              v175 = v50;
              operator delete(v54);
              v50 = v175;
            }

            *(a2 + 2) = v50;
            *(a2 + 6) = v51;
            *(a2 + 14) = v197;
            *(a2 + 18) = v208;
            do
            {
              v55 = *(v7 + 164);
              v7 += 88;
            }

            while (v18 <= v55);
            do
            {
              v56 = *(a2 - 3);
              a2 -= 22;
            }

            while (v18 > v56);
          }

          v57 = (v7 - 88);
          a2 = v172;
          if (v7 - 88 != a1)
          {
            v58 = *(v7 - 72);
            *a1 = *v57;
            *(a1 + 16) = v58;
            v59 = *(a1 + 32);
            if (v59)
            {
              *(a1 + 40) = v59;
              operator delete(v59);
              *(a1 + 32) = 0;
              *(a1 + 40) = 0;
              *(a1 + 48) = 0;
            }

            *(a1 + 32) = *(v7 - 56);
            *(a1 + 48) = *(v7 - 40);
            *(v7 - 56) = 0;
            *(v7 - 48) = 0;
            *(v7 - 40) = 0;
            v60 = *(v7 - 32);
            *(a1 + 72) = *(v7 - 16);
            *(a1 + 56) = v60;
          }

          *v57 = v190;
          *(v7 - 72) = v193;
          v61 = *(v7 - 56);
          if (v61)
          {
            *(v7 - 48) = v61;
            operator delete(v61);
          }

          a4 = 0;
          *(v7 - 56) = v170;
          *(v7 - 40) = v42;
          *(v7 - 16) = v187;
          *(v7 - 32) = v184;
          *(v7 - 12) = v18;
          *(v7 - 8) = v49;
        }

        v18 = *(a1 + 76);
LABEL_17:
        v189 = *a1;
        v192 = *(a1 + 16);
        v169 = *(a1 + 32);
        v19 = *(a1 + 48);
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        v183 = *(a1 + 56);
        v186 = *(a1 + 72);
        v20 = a1;
        v21 = *(a1 + 80);
        do
        {
          v22 = v20;
          v20 += 88;
        }

        while (*(v22 + 164) > v18);
        v23 = v172;
        if (v22 == a1)
        {
          v26 = v172;
          while (v20 < v26)
          {
            v24 = (v26 - 22);
            v27 = *(v26 - 3);
            v26 -= 22;
            if (v27 > v18)
            {
              goto LABEL_27;
            }
          }

          v24 = v26;
        }

        else
        {
          do
          {
            v24 = (v23 - 22);
            v25 = *(v23 - 3);
            v23 -= 22;
          }

          while (v25 <= v18);
        }

LABEL_27:
        v7 = v20;
        if (v20 < v24)
        {
          v28 = v24;
          do
          {
            v218 = *v7;
            v229 = *(v7 + 16);
            v29 = *(v7 + 32);
            v30 = *(v7 + 48);
            *(v7 + 32) = 0;
            *(v7 + 40) = 0;
            *(v7 + 48) = 0;
            v196 = *(v7 + 56);
            v207 = *(v7 + 72);
            v31 = *(v28 + 16);
            *v7 = *v28;
            *(v7 + 16) = v31;
            *(v7 + 32) = *(v28 + 32);
            *(v7 + 48) = *(v28 + 48);
            *(v28 + 32) = 0;
            *(v28 + 40) = 0;
            *(v28 + 48) = 0;
            v32 = *(v28 + 56);
            *(v7 + 72) = *(v28 + 72);
            *(v7 + 56) = v32;
            *v28 = v218;
            *(v28 + 16) = v229;
            v33 = *(v28 + 32);
            if (v33)
            {
              *(v28 + 40) = v33;
              v174 = v29;
              operator delete(v33);
              v29 = v174;
            }

            *(v28 + 32) = v29;
            *(v28 + 48) = v30;
            *(v28 + 56) = v196;
            *(v28 + 72) = v207;
            do
            {
              v34 = *(v7 + 164);
              v7 += 88;
            }

            while (v34 > v18);
            do
            {
              v35 = *(v28 - 12);
              v28 -= 88;
            }

            while (v35 <= v18);
          }

          while (v7 < v28);
        }

        v36 = (v7 - 88);
        if (v7 - 88 != a1)
        {
          v37 = *(v7 - 72);
          *a1 = *v36;
          *(a1 + 16) = v37;
          v38 = *(a1 + 32);
          if (v38)
          {
            *(a1 + 40) = v38;
            operator delete(v38);
            *(a1 + 32) = 0;
            *(a1 + 40) = 0;
            *(a1 + 48) = 0;
          }

          *(a1 + 32) = *(v7 - 56);
          *(a1 + 48) = *(v7 - 40);
          *(v7 - 56) = 0;
          *(v7 - 48) = 0;
          *(v7 - 40) = 0;
          v39 = *(v7 - 32);
          *(a1 + 72) = *(v7 - 16);
          *(a1 + 56) = v39;
        }

        *v36 = v189;
        *(v7 - 72) = v192;
        v40 = *(v7 - 56);
        if (v40)
        {
          *(v7 - 48) = v40;
          operator delete(v40);
        }

        *(v7 - 56) = v169;
        *(v7 - 40) = v19;
        *(v7 - 16) = v186;
        *(v7 - 32) = v183;
        *(v7 - 12) = v18;
        *(v7 - 8) = v21;
        a2 = v172;
        if (v20 >= v24)
        {
          break;
        }

LABEL_44:
        sub_240B8E3E4(a1, (v7 - 88), a3, a4 & 1);
        a4 = 0;
      }

      v41 = sub_240B90070(a1, (v7 - 88));
      if (sub_240B90070(v7, v172))
      {
        break;
      }

      if (!v41)
      {
        goto LABEL_44;
      }
    }

    a2 = (v7 - 88);
    if (!v41)
    {
      continue;
    }

    break;
  }
}

_OWORD *sub_240B8F33C(_OWORD *a1)
{
  v2 = 0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  do
  {
    v3 = a1 + v2;
    v4 = *(a1 + v2 + 16);
    v5 = *(a1 + v2 + 24);
    v6 = v5 - v4;
    if ((v5 - v4) > 0x3FF)
    {
      if (v6 == 1024)
      {
        goto LABEL_9;
      }

      v8 = v4 + 1024;
    }

    else
    {
      v7 = *(v3 + 4);
      if (v7 - v5 < (1024 - v6))
      {
        operator new();
      }

      bzero(*(a1 + v2 + 24), 1024 - v6);
      v8 = v5 + 1024 - v6;
    }

    *(v3 + 3) = v8;
LABEL_9:
    sub_240B245C8((a1 + v2 + 88), 0x400uLL);
    v2 += 24;
  }

  while (v2 != 72);
  return a1;
}

void sub_240B8F494(_Unwind_Exception *exception_object)
{
  v3 = (v1 + 144);
  v4 = -72;
  while (1)
  {
    v5 = *(v3 - 1);
    if (v5)
    {
      *v3 = v5;
      operator delete(v5);
    }

    v3 -= 3;
    v4 += 24;
    if (!v4)
    {
      v6 = (v1 + 72);
      v7 = -72;
      while (1)
      {
        v8 = *(v6 - 1);
        if (v8)
        {
          *v6 = v8;
          operator delete(v8);
        }

        v6 -= 3;
        v7 += 24;
        if (!v7)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

uint64_t sub_240B8F4E8(uint64_t *a1)
{
  v1 = 0xD37A6F4DE9BD37A7 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0x1642C8590B21642)
  {
    sub_240B228BC();
  }

  if (0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3);
  }

  if (0xD37A6F4DE9BD37A7 * ((a1[2] - *a1) >> 3) >= 0xB21642C8590B21)
  {
    v4 = 0x1642C8590B21642;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    sub_240B8F724(v4);
  }

  v12 = 0;
  v13 = 184 * v1;
  v14 = 184 * v1;
  v5 = sub_240B8F33C((184 * v1));
  v5[20] = 0;
  v5[21] = 0;
  v5[22] = 0;
  *&v14 = v14 + 184;
  v6 = a1[1];
  v7 = v13 + *a1 - v6;
  sub_240B8F780(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_240B8F870(&v12);
  return v11;
}

void sub_240B8F614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_240B8F870(va);
  _Unwind_Resume(a1);
}

void sub_240B8F628(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; sub_240B8F6A4(i))
    {
      i -= 23;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void sub_240B8F6A4(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1 + 18;
  v4 = -72;
  do
  {
    v5 = *(v3 - 1);
    if (v5)
    {
      *v3 = v5;
      operator delete(v5);
    }

    v3 -= 3;
    v4 += 24;
  }

  while (v4);
  v6 = a1 + 9;
  v7 = -72;
  do
  {
    v8 = *(v6 - 1);
    if (v8)
    {
      *v6 = v8;
      operator delete(v8);
    }

    v6 -= 3;
    v7 += 24;
  }

  while (v7);
}

void sub_240B8F724(unint64_t a1)
{
  if (a1 < 0x1642C8590B21643)
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B8F780(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = 0;
      *a4 = *v6;
      do
      {
        v8 = (a4 + v7 * 8);
        v9 = &v6[v7];
        v8[2] = 0;
        v8[3] = 0;
        v8[4] = 0;
        *(v8 + 1) = *&v6[v7 + 2];
        v8[4] = v6[v7 + 4];
        v9[2] = 0;
        v9[3] = 0;
        v9[4] = 0;
        v7 += 3;
      }

      while (v7 != 9);
      for (i = 0; i != 9; i += 3)
      {
        v11 = (a4 + i * 8);
        v12 = &v6[i];
        v11[11] = 0;
        v11[12] = 0;
        v11[13] = 0;
        *(v11 + 11) = *&v6[i + 11];
        v11[13] = v6[i + 13];
        v12[11] = 0;
        v12[12] = 0;
        v12[13] = 0;
      }

      *(a4 + 160) = 0;
      *(a4 + 168) = 0;
      *(a4 + 176) = 0;
      *(a4 + 160) = *(v6 + 10);
      *(a4 + 176) = v6[22];
      v6[20] = 0;
      v6[21] = 0;
      v6[22] = 0;
      v6 += 23;
      a4 += 184;
    }

    while (v6 != a3);
    do
    {
      sub_240B8F6A4(v5);
      v5 += 23;
    }

    while (v5 != a3);
  }
}

uint64_t sub_240B8F870(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 184;
    sub_240B8F6A4((v3 - 184));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_240B8F8C0(__int128 *a1, __int128 *a2, __int128 *a3)
{
  result.n128_u32[0] = *(a2 + 19);
  v7 = *(a3 + 19);
  if (result.n128_f32[0] <= *(a1 + 19))
  {
    if (v7 > result.n128_f32[0])
    {
      v45 = *a2;
      v50 = a2[1];
      v13 = a2 + 2;
      v14 = a2[2];
      v15 = *(a2 + 6);
      a2[2] = 0uLL;
      *(a2 + 6) = 0;
      v37 = *(a2 + 56);
      v41 = *(a2 + 72);
      v16 = a3[1];
      *a2 = *a3;
      a2[1] = v16;
      a2[2] = a3[2];
      *(a2 + 6) = *(a3 + 6);
      a3[2] = 0uLL;
      *(a3 + 6) = 0;
      v17 = *(a3 + 72);
      *(a2 + 56) = *(a3 + 56);
      *(a2 + 72) = v17;
      *a3 = v45;
      a3[1] = v50;
      v18 = *(a3 + 4);
      if (v18)
      {
        *(a3 + 5) = v18;
        v34 = v14;
        operator delete(v18);
        v14 = v34;
      }

      a3[2] = v14;
      *(a3 + 6) = v15;
      result = v37;
      *(a3 + 56) = v37;
      *(a3 + 72) = v41;
      result.n128_u32[0] = *(a2 + 19);
      if (result.n128_f32[0] > *(a1 + 19))
      {
        v46 = *a1;
        v51 = a1[1];
        v19 = a1[2];
        v20 = *(a1 + 6);
        *(a1 + 4) = 0;
        *(a1 + 5) = 0;
        *(a1 + 6) = 0;
        v38 = *(a1 + 56);
        v42 = *(a1 + 72);
        v21 = a2[1];
        *a1 = *a2;
        a1[1] = v21;
        a1[2] = a2[2];
        *(a1 + 6) = *(a2 + 6);
        *v13 = 0;
        *(a2 + 5) = 0;
        *(a2 + 6) = 0;
        v22 = *(a2 + 72);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 72) = v22;
        *a2 = v46;
        a2[1] = v51;
        v23 = *(a2 + 4);
        if (v23)
        {
          *(a2 + 5) = v23;
          v35 = v19;
          operator delete(v23);
          v19 = v35;
        }

        a2[2] = v19;
        *(a2 + 6) = v20;
        result = v38;
        *(a2 + 56) = v38;
        *(a2 + 72) = v42;
      }
    }
  }

  else
  {
    if (v7 > result.n128_f32[0])
    {
      v44 = *a1;
      v49 = a1[1];
      v8 = a1[2];
      v9 = *(a1 + 6);
      *(a1 + 40) = 0uLL;
      *(a1 + 4) = 0;
      v36 = *(a1 + 56);
      v40 = *(a1 + 72);
      v10 = a3[1];
      *a1 = *a3;
      a1[1] = v10;
      a1[2] = a3[2];
      *(a1 + 6) = *(a3 + 6);
      a3[2] = 0uLL;
      *(a3 + 6) = 0;
      v11 = *(a3 + 72);
      *(a1 + 56) = *(a3 + 56);
      *(a1 + 72) = v11;
      *a3 = v44;
      a3[1] = v49;
      v12 = *(a3 + 4);
      if (v12)
      {
        *(a3 + 5) = v12;
        v33 = v8;
        operator delete(v12);
        v8 = v33;
      }

      a3[2] = v8;
      *(a3 + 6) = v9;
LABEL_19:
      result = v36;
      *(a3 + 56) = v36;
      *(a3 + 72) = v40;
      return result;
    }

    v47 = *a1;
    v52 = a1[1];
    v24 = *(a1 + 4);
    v25 = *(a1 + 5);
    v26 = *(a1 + 6);
    *(a1 + 40) = 0uLL;
    *(a1 + 4) = 0;
    v39 = *(a1 + 56);
    v43 = *(a1 + 72);
    v27 = a2[1];
    *a1 = *a2;
    a1[1] = v27;
    a1[2] = a2[2];
    *(a1 + 6) = *(a2 + 6);
    a2[2] = 0uLL;
    *(a2 + 6) = 0;
    v28 = *(a2 + 72);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = v28;
    *a2 = v47;
    a2[1] = v52;
    v29 = *(a2 + 4);
    if (v29)
    {
      *(a2 + 5) = v29;
      operator delete(v29);
    }

    *(a2 + 4) = v24;
    *(a2 + 5) = v25;
    *(a2 + 6) = v26;
    result = v39;
    *(a2 + 56) = v39;
    *(a2 + 72) = v43;
    result.n128_u32[0] = *(a3 + 19);
    if (result.n128_f32[0] > *(a2 + 19))
    {
      v48 = *a2;
      v53 = a2[1];
      *(a2 + 5) = 0;
      *(a2 + 6) = 0;
      *(a2 + 4) = 0;
      v36 = *(a2 + 56);
      v40 = *(a2 + 72);
      v30 = a3[1];
      *a2 = *a3;
      a2[1] = v30;
      a2[2] = a3[2];
      *(a2 + 6) = *(a3 + 6);
      *(a3 + 4) = 0;
      *(a3 + 5) = 0;
      *(a3 + 6) = 0;
      v31 = *(a3 + 72);
      *(a2 + 56) = *(a3 + 56);
      *(a2 + 72) = v31;
      *a3 = v48;
      a3[1] = v53;
      v32 = *(a3 + 4);
      if (v32)
      {
        *(a3 + 5) = v32;
        operator delete(v32);
      }

      *(a3 + 4) = v24;
      *(a3 + 5) = v25;
      *(a3 + 6) = v26;
      goto LABEL_19;
    }
  }

  return result;
}

__n128 sub_240B8FBE0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  result = sub_240B8F8C0(a1, a2, a3);
  if (*(a4 + 19) > *(a3 + 76))
  {
    v67 = *a3;
    v74 = *(a3 + 16);
    v11 = *(a3 + 32);
    v12 = *(a3 + 48);
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    v53 = *(a3 + 56);
    v60 = *(a3 + 72);
    v13 = a4[1];
    *a3 = *a4;
    *(a3 + 16) = v13;
    *(a3 + 32) = a4[2];
    *(a3 + 48) = *(a4 + 6);
    *(a4 + 4) = 0;
    *(a4 + 5) = 0;
    *(a4 + 6) = 0;
    v14 = *(a4 + 72);
    *(a3 + 56) = *(a4 + 56);
    *(a3 + 72) = v14;
    *a4 = v67;
    a4[1] = v74;
    v15 = *(a4 + 4);
    if (v15)
    {
      *(a4 + 5) = v15;
      v46 = v11;
      operator delete(v15);
      v11 = v46;
    }

    a4[2] = v11;
    *(a4 + 6) = v12;
    result = v53;
    *(a4 + 56) = v53;
    *(a4 + 72) = v60;
    if (*(a3 + 76) > *(a2 + 76))
    {
      v68 = *a2;
      v75 = *(a2 + 16);
      v16 = *(a2 + 32);
      v17 = *(a2 + 48);
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      v54 = *(a2 + 56);
      v61 = *(a2 + 72);
      v18 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v18;
      *(a2 + 32) = *(a3 + 32);
      *(a2 + 48) = *(a3 + 48);
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 0;
      v19 = *(a3 + 72);
      *(a2 + 56) = *(a3 + 56);
      *(a2 + 72) = v19;
      *a3 = v68;
      *(a3 + 16) = v75;
      v20 = *(a3 + 32);
      if (v20)
      {
        *(a3 + 40) = v20;
        v47 = v16;
        operator delete(v20);
        v16 = v47;
      }

      *(a3 + 32) = v16;
      *(a3 + 48) = v17;
      result = v54;
      *(a3 + 56) = v54;
      *(a3 + 72) = v61;
      if (*(a2 + 76) > *(a1 + 76))
      {
        v69 = *a1;
        v76 = *(a1 + 16);
        v21 = *(a1 + 32);
        v22 = *(a1 + 48);
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        v55 = *(a1 + 56);
        v62 = *(a1 + 72);
        v23 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v23;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = *(a2 + 48);
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        v24 = *(a2 + 72);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 72) = v24;
        *a2 = v69;
        *(a2 + 16) = v76;
        v25 = *(a2 + 32);
        if (v25)
        {
          *(a2 + 40) = v25;
          v48 = v21;
          operator delete(v25);
          v21 = v48;
        }

        *(a2 + 32) = v21;
        *(a2 + 48) = v22;
        result = v55;
        *(a2 + 56) = v55;
        *(a2 + 72) = v62;
      }
    }
  }

  result.n128_u32[0] = *(a5 + 19);
  if (result.n128_f32[0] > *(a4 + 19))
  {
    v70 = *a4;
    v77 = a4[1];
    v26 = a4[2];
    v27 = *(a4 + 6);
    *(a4 + 4) = 0;
    *(a4 + 5) = 0;
    *(a4 + 6) = 0;
    v56 = *(a4 + 56);
    v63 = *(a4 + 72);
    v28 = a5[1];
    *a4 = *a5;
    a4[1] = v28;
    a4[2] = a5[2];
    *(a4 + 6) = *(a5 + 6);
    *(a5 + 4) = 0;
    *(a5 + 5) = 0;
    *(a5 + 6) = 0;
    v29 = *(a5 + 72);
    *(a4 + 56) = *(a5 + 56);
    *(a4 + 72) = v29;
    *a5 = v70;
    a5[1] = v77;
    v30 = *(a5 + 4);
    if (v30)
    {
      *(a5 + 5) = v30;
      v49 = v26;
      operator delete(v30);
      v26 = v49;
    }

    a5[2] = v26;
    *(a5 + 6) = v27;
    result = v56;
    *(a5 + 56) = v56;
    *(a5 + 72) = v63;
    result.n128_u32[0] = *(a4 + 19);
    if (result.n128_f32[0] > *(a3 + 76))
    {
      v71 = *a3;
      v78 = *(a3 + 16);
      v31 = *(a3 + 32);
      v32 = *(a3 + 48);
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 0;
      v57 = *(a3 + 56);
      v64 = *(a3 + 72);
      v33 = a4[1];
      *a3 = *a4;
      *(a3 + 16) = v33;
      *(a3 + 32) = a4[2];
      *(a3 + 48) = *(a4 + 6);
      *(a4 + 4) = 0;
      *(a4 + 5) = 0;
      *(a4 + 6) = 0;
      v34 = *(a4 + 72);
      *(a3 + 56) = *(a4 + 56);
      *(a3 + 72) = v34;
      *a4 = v71;
      a4[1] = v78;
      v35 = *(a4 + 4);
      if (v35)
      {
        *(a4 + 5) = v35;
        v50 = v31;
        operator delete(v35);
        v31 = v50;
      }

      a4[2] = v31;
      *(a4 + 6) = v32;
      result = v57;
      *(a4 + 56) = v57;
      *(a4 + 72) = v64;
      result.n128_u32[0] = *(a3 + 76);
      if (result.n128_f32[0] > *(a2 + 76))
      {
        v72 = *a2;
        v79 = *(a2 + 16);
        v36 = *(a2 + 32);
        v37 = *(a2 + 48);
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        v58 = *(a2 + 56);
        v65 = *(a2 + 72);
        v38 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v38;
        *(a2 + 32) = *(a3 + 32);
        *(a2 + 48) = *(a3 + 48);
        *(a3 + 32) = 0;
        *(a3 + 40) = 0;
        *(a3 + 48) = 0;
        v39 = *(a3 + 72);
        *(a2 + 56) = *(a3 + 56);
        *(a2 + 72) = v39;
        *a3 = v72;
        *(a3 + 16) = v79;
        v40 = *(a3 + 32);
        if (v40)
        {
          *(a3 + 40) = v40;
          v51 = v36;
          operator delete(v40);
          v36 = v51;
        }

        *(a3 + 32) = v36;
        *(a3 + 48) = v37;
        result = v58;
        *(a3 + 56) = v58;
        *(a3 + 72) = v65;
        result.n128_u32[0] = *(a2 + 76);
        if (result.n128_f32[0] > *(a1 + 76))
        {
          v73 = *a1;
          v80 = *(a1 + 16);
          v41 = *(a1 + 32);
          v42 = *(a1 + 48);
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          *(a1 + 48) = 0;
          v59 = *(a1 + 56);
          v66 = *(a1 + 72);
          v43 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v43;
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = *(a2 + 48);
          *(a2 + 32) = 0;
          *(a2 + 40) = 0;
          *(a2 + 48) = 0;
          v44 = *(a2 + 72);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 72) = v44;
          *a2 = v73;
          *(a2 + 16) = v80;
          v45 = *(a2 + 32);
          if (v45)
          {
            *(a2 + 40) = v45;
            v52 = v41;
            operator delete(v45);
            v41 = v52;
          }

          *(a2 + 32) = v41;
          *(a2 + 48) = v42;
          result = v59;
          *(a2 + 56) = v59;
          *(a2 + 72) = v66;
        }
      }
    }
  }

  return result;
}

BOOL sub_240B90070(uint64_t a1, __int128 *a2)
{
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_240B8F8C0(a1, (a1 + 88), (a2 - 88));
        break;
      case 4:
        sub_240B8F8C0(a1, (a1 + 88), (a1 + 176));
        if (*(a2 - 3) > *(a1 + 252))
        {
          v55 = *(a1 + 176);
          v59 = *(a1 + 192);
          v31 = *(a1 + 208);
          v32 = *(a1 + 224);
          *(a1 + 208) = 0;
          *(a1 + 216) = 0;
          *(a1 + 224) = 0;
          v47 = *(a1 + 232);
          v51 = *(a1 + 248);
          v33 = *(a2 - 72);
          *(a1 + 176) = *(a2 - 88);
          *(a1 + 192) = v33;
          *(a1 + 208) = *(a2 - 56);
          *(a1 + 224) = *(a2 - 5);
          *(a2 - 7) = 0;
          *(a2 - 6) = 0;
          *(a2 - 5) = 0;
          v34 = *(a2 - 1);
          *(a1 + 232) = *(a2 - 2);
          *(a1 + 248) = v34;
          *(a2 - 88) = v55;
          *(a2 - 72) = v59;
          v35 = *(a2 - 7);
          if (v35)
          {
            *(a2 - 6) = v35;
            v44 = v31;
            operator delete(v35);
            v31 = v44;
          }

          *(a2 - 56) = v31;
          *(a2 - 5) = v32;
          *(a2 - 2) = v47;
          *(a2 - 1) = v51;
          if (*(a1 + 252) > *(a1 + 164))
          {
            v56 = *(a1 + 88);
            v60 = *(a1 + 104);
            v36 = *(a1 + 136);
            v48 = *(a1 + 144);
            v52 = *(a1 + 160);
            v37 = *(a1 + 192);
            *(a1 + 88) = *(a1 + 176);
            *(a1 + 104) = v37;
            v38 = *(a1 + 208);
            *(a1 + 136) = *(a1 + 224);
            v39 = *(a1 + 248);
            *(a1 + 144) = *(a1 + 232);
            *(a1 + 160) = v39;
            *(a1 + 176) = v56;
            *(a1 + 192) = v60;
            v40 = *(a1 + 120);
            *(a1 + 120) = v38;
            *(a1 + 208) = v40;
            *(a1 + 224) = v36;
            *(a1 + 248) = v52;
            LODWORD(v40) = *(a1 + 164);
            LODWORD(v39) = *(a1 + 76);
            *(a1 + 232) = v48;
            if (*&v40 > *&v39)
            {
              sub_240B9047C(a1, (a1 + 88));
            }
          }
        }

        return 1;
      case 5:
        sub_240B8FBE0(a1, a1 + 88, a1 + 176, (a1 + 264), (a2 - 88));
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 3) > *(a1 + 76))
    {
      v53 = *a1;
      v57 = *(a1 + 16);
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      v45 = *(a1 + 56);
      v49 = *(a1 + 72);
      v7 = *(a2 - 72);
      *a1 = *(a2 - 88);
      *(a1 + 16) = v7;
      *(a1 + 32) = *(a2 - 56);
      *(a1 + 48) = *(a2 - 5);
      *(a2 - 7) = 0;
      *(a2 - 6) = 0;
      *(a2 - 5) = 0;
      v8 = a2 - 2;
      v9 = *(a2 - 1);
      *(a1 + 56) = *(a2 - 2);
      *(a1 + 72) = v9;
      *(a2 - 88) = v53;
      *(a2 - 72) = v57;
      v10 = *(a2 - 7);
      if (v10)
      {
        *(a2 - 6) = v10;
        v42 = v5;
        operator delete(v10);
        v5 = v42;
      }

      *(a2 - 56) = v5;
      *(a2 - 5) = v6;
      *v8 = v45;
      *(a2 - 1) = v49;
    }

    return 1;
  }

LABEL_13:
  v11 = (a1 + 176);
  sub_240B8F8C0(a1, (a1 + 88), (a1 + 176));
  v12 = (a1 + 264);
  if ((a1 + 264) == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *(v12 + 19);
    if (v15 > v11[19])
    {
      v54 = *v12;
      v58 = v12[1];
      v16 = *(v12 + 4);
      v17 = *(v12 + 40);
      *(v12 + 4) = 0;
      *(v12 + 5) = 0;
      *(v12 + 6) = 0;
      v43 = v17;
      v46 = *(v12 + 56);
      v50 = *(v12 + 18);
      v18 = v13;
      v19 = *(v12 + 10);
      while (1)
      {
        v20 = a1 + v18;
        v21 = (a1 + v18 + 264);
        v22 = *(a1 + v18 + 192);
        *v21 = *(a1 + v18 + 176);
        v21[1] = v22;
        v23 = *(a1 + v18 + 296);
        if (v23)
        {
          *(v20 + 304) = v23;
          operator delete(v23);
          *(v20 + 304) = 0;
          *(v20 + 312) = 0;
        }

        *(v20 + 296) = *(v20 + 208);
        *(v20 + 312) = *(v20 + 224);
        *(v20 + 216) = 0;
        *(v20 + 224) = 0;
        *(v20 + 208) = 0;
        v24 = *(v20 + 248);
        *(v20 + 320) = *(v20 + 232);
        *(v20 + 336) = v24;
        if (v18 == -176)
        {
          break;
        }

        v25 = a1 + v18;
        v26 = *(a1 + v18 + 164);
        v18 -= 88;
        if (v15 <= v26)
        {
          v27 = (v25 + 208);
          v28 = a1 + v18 + 264;
          v29 = v25 + 232;
          goto LABEL_23;
        }
      }

      v27 = (a1 + 32);
      v29 = a1 + 56;
      v28 = a1;
LABEL_23:
      *v28 = v54;
      *(v28 + 16) = v58;
      v30 = *v27;
      if (*v27)
      {
        *(v28 + 40) = v30;
        operator delete(v30);
      }

      *v27 = v16;
      *(v28 + 40) = v43;
      *v29 = v46;
      *(v29 + 16) = v50;
      *(v28 + 76) = v15;
      *(v28 + 80) = v19;
      if (++v14 == 8)
      {
        return (v12 + 88) == a2;
      }
    }

    v11 = v12;
    v13 += 88;
    v12 = (v12 + 88);
    if (v12 == a2)
    {
      return 1;
    }
  }
}

__n128 sub_240B9047C(__int128 *a1, __int128 *a2)
{
  v12 = *a1;
  v13 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 6);
  a1[2] = 0uLL;
  *(a1 + 6) = 0;
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  a1[2] = a2[2];
  *(a1 + 6) = *(a2 + 6);
  a2[2] = 0uLL;
  *(a2 + 6) = 0;
  v6 = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = v6;
  *a2 = v12;
  a2[1] = v13;
  v7 = *(a2 + 4);
  if (v7)
  {
    *(a2 + 5) = v7;
    v9 = v3;
    operator delete(v7);
    v3 = v9;
  }

  a2[2] = v3;
  *(a2 + 6) = v4;
  result = v10;
  *(a2 + 56) = v10;
  *(a2 + 72) = v11;
  return result;
}

uint64_t sub_240B9052C(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_240B90560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, void *a8, double d0_0, uint64_t a9)
{
  v22 = a2;
  v23 = a1;
  v21 = a4;
  v10 = a6[1];
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      if ((a5 - 17) < 0xFFFFFFFFFFFFFFF8)
      {
        return 1;
      }
    }

    else if (v10 != 5)
    {
      goto LABEL_8;
    }

    result = 2;
    goto LABEL_13;
  }

  if (!v10)
  {
    result = 4;
    goto LABEL_13;
  }

  if (v10 == 2)
  {
    result = 1;
    if ((a5 - 9) < 0xFFFFFFFFFFFFFFF8)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_8:
  result = 0;
LABEL_13:
  v12 = result * *a6;
  v19 = result * a7;
  v20 = v12;
  if (v10 == 2)
  {
    v13 = (257 << a5) - 257;
  }

  else
  {
    v13 = ~(-1 << a5);
  }

  v18 = 1.0 / v13;
  v17 = a6[2] < 2;
  v16 = 0;
  v15[0] = &v21;
  v15[1] = &v19;
  v15[2] = &a9;
  v15[3] = &v23;
  v15[4] = &v22;
  v15[5] = &v20;
  v15[6] = a6;
  v15[7] = &v17;
  v15[8] = &v18;
  v15[9] = &v16;
  if (a8)
  {
    v14 = a8;
  }

  else
  {
    v24[0] = 0;
    v24[1] = v24;
    v14 = v24;
  }

  *&d0_0 = 1.0 / v13;
  result = sub_240B906A8(v14, a3, v15, d0_0, 1.0);
  if (!result)
  {
    atomic_load(&v16);
  }

  return result;
}

BOOL sub_240B906A8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, float a5)
{
  if (!a2)
  {
    return 0;
  }

  v5 = a2;
  v8[0] = sub_240B2AC64;
  v8[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v8, sub_240B909B4, sub_240B90758, 0, a2) != 0;
  }

  for (i = 0; i != v5; ++i)
  {
    sub_240B90758(v8, i, a4, a5);
  }

  return 0;
}

uint64_t sub_240B90758(uint64_t result, unsigned int a2, double a3, float a4)
{
  v4 = *(result + 8);
  v5 = **v4 * a2;
  v6 = **(v4 + 8);
  v7 = (*(**(v4 + 16) + 24) + *(**(v4 + 16) + 16) * a2);
  v8 = **(v4 + 24);
  v9 = **(v4 + 32);
  v10 = **(v4 + 40);
  v11 = *(*(v4 + 48) + 4);
  v12 = **(v4 + 64);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      if (**(v4 + 56))
      {
        if (v9)
        {
          v21 = v6 + v5 + v8 + 1;
          do
          {
            LOWORD(a4) = *(v21 - 1);
            a4 = v12 * LODWORD(a4);
            *v7++ = a4;
            v21 += v10;
            --v9;
          }

          while (v9);
        }
      }

      else if (v9)
      {
        v29 = v6 + v5 + v8 + 1;
        do
        {
          *v7++ = v12 * __rev16(*(v29 - 1));
          v29 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      if (v11 != 5)
      {
        goto LABEL_18;
      }

      if (**(v4 + 56))
      {
        if (v9)
        {
          v14 = (v6 + v5 + v8 + 1);
          do
          {
            v15 = *v14;
            v16 = v15 << 8;
            v17 = (v15 >> 2) & 0x1F;
            v18 = (*(v14 - 1) | (*v14 << 8)) & 0x3FF;
            if (v17)
            {
              LODWORD(v19) = ((v16 << 16) & 0x80000000 | (v17 << 23) | (v18 << 13)) + 939524096;
            }

            else
            {
              v20 = vcvts_n_f32_u32(v18, 0xAuLL) * 0.000061035;
              v19 = -v20;
              if ((v16 & 0x8000u) == 0)
              {
                v19 = v20;
              }
            }

            v14 += v10;
            *v7++ = v19;
            --v9;
          }

          while (v9);
        }
      }

      else if (v9)
      {
        v22 = (v6 + v5 + v8 + 1);
        do
        {
          v23 = *(v22 - 1);
          v24 = v23 << 8;
          v25 = (v23 >> 2) & 0x1F;
          v26 = *v22 | (v23 << 8) & 0x3FF;
          if (v25)
          {
            LODWORD(v27) = ((v24 << 16) & 0x80000000 | (v25 << 23) | (v26 << 13)) + 939524096;
          }

          else
          {
            v28 = vcvts_n_f32_u32(v26, 0xAuLL) * 0.000061035;
            v27 = -v28;
            if ((v24 & 0x8000u) == 0)
            {
              v27 = v28;
            }
          }

          v22 += v10;
          *v7++ = v27;
          --v9;
        }

        while (v9);
      }
    }
  }

  else
  {
    v13 = (v8 + v6 + v5);
    if (v11)
    {
      if (v11 == 2)
      {
        for (; v9; --v9)
        {
          *v7++ = v12 * (*v13 | (*v13 << 8));
          v13 = (v13 + v10);
        }

        return result;
      }

LABEL_18:
      atomic_fetch_add(*(v4 + 72), 1uLL);
      return result;
    }

    if (**(v4 + 56))
    {
      for (; v9; --v9)
      {
        *v7++ = *v13;
        v13 = (v13 + v10);
      }
    }

    else
    {
      for (; v9; --v9)
      {
        *v7++ = bswap32(*v13);
        v13 = (v13 + v10);
      }
    }
  }

  return result;
}

uint64_t sub_240B909B4(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

BOOL sub_240B909DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v125[1] = *MEMORY[0x277D85DE8];
  v115 = a8;
  v116 = a3;
  sub_240B86714(&v98, a1);
  if (v101 == 9)
  {
    v101 = 8;
    goto LABEL_14;
  }

  if (v101 != -1)
  {
LABEL_14:
    if (v112 != v111 && v112 - v111 != 32)
    {
      goto LABEL_90;
    }

    if (v114 != v113 && v114 - v113 != 12)
    {
      goto LABEL_90;
    }

    if ((v103 & 1) == 0 && v98 == 0.0)
    {
      v98 = 0.001;
    }

    if (v110 == -1.0)
    {
      v110 = v98;
    }

    v17 = v107;
    if (v107 <= 0)
    {
      v17 = 1;
      v107 = 1;
      if ((v109 & 1) == 0 && v98 >= 20.0)
      {
        v17 = 2;
        v107 = 2;
        v18 = (v98 + -20.0) * 0.25 + 6.0;
        v98 = v18;
      }
    }

    v19 = v108;
    if (v108 <= 0)
    {
      v108 = v17;
      v19 = v17;
    }

    if (v98 < 0.0)
    {
      goto LABEL_90;
    }

    v20 = v106;
    if ((v106 & 0x80000000) != 0)
    {
      if (v106 != -1)
      {
        goto LABEL_90;
      }

      v20 = 0;
      v106 = 0;
    }

    if (v19 >= v17)
    {
      if (v17 <= 1 && *(a2 + 17) != 1)
      {
LABEL_78:
        v60 = *(a2 + 8);
        if (v60 + v20 <= 4 && (v98 == 0.0 || v98 >= 0.001))
        {
          v61 = *(a4 + 368);
          if (v61 == 1)
          {
            v104 = 0;
            v105 = 0;
            v103 = 0;
          }

          v58 = 1;
          if (*a4 && *(a4 + 8) && (!v61 || v102))
          {
            v62 = v116;
            if (sub_240B91728(&v98, v60, *(v116 + 320), a4))
            {
              sub_240B9184C(&v98, a2, v62, a4, a5, a6, a7, v115);
            }

            sub_240B93770(&v98, a2, v62, a4, a5, a6, a7, v115);
          }

          goto LABEL_91;
        }

LABEL_90:
        v58 = 1;
        goto LABEL_91;
      }
    }

    else
    {
      v108 = v17;
    }

    v20 = 0;
    v106 = 0;
    goto LABEL_78;
  }

  if (v103 != 1 || (v98 == 0.0 ? (v14 = v102 == 0) : (v14 = 1), v14))
  {
LABEL_13:
    v101 = 0;
    goto LABEL_14;
  }

  for (i = v99; i != v100; ++i)
  {
    if (*i > 0.0)
    {
      goto LABEL_13;
    }
  }

  v68 = a6;
  v67 = a7;
  v97 = 0uLL;
  v96 = 0;
  v94 = 0;
  __p = 0;
  v95 = 0;
  sub_240B86714(v82, a1);
  v21 = 0;
  v83 = 0;
  v87 = 4;
  v125[0] = 0x42A0000000000000;
  do
  {
    v69 = v21;
    v22 = 0;
    v91 = *(v125 + v21);
    v124 = 0x42BE000000000000;
    do
    {
      v70 = v22;
      v23 = 0;
      v90 = *(&v125[-1] + v22);
      v122 = 0x40000000000;
      v123 = 70000;
      do
      {
        v71 = v23;
        v24 = 0;
        v92 = *(&v122 + v23);
        v120 = 0x2FFFFFFFFLL;
        v121 = 3;
        do
        {
          v72 = v24;
          if (*(&v120 + v24) == -1)
          {
            v25 = 0.0;
          }

          else
          {
            v89 = *(&v120 + v24);
            v25 = 1.0;
          }

          v26 = 0;
          v86 = v25;
          v119 = 0xF00000000;
          v27 = v97;
          do
          {
            v28 = 0;
            v73 = v26;
            v88 = *(&v119 + v26);
            v117 = 0xFFFFFFFF00000000;
            v118 = 3;
            do
            {
              v29 = 0;
              v84 = *(&v117 + v28);
              v30 = -1;
              do
              {
                v31 = v29;
                v85 = v30;
                if (v27 >= *(&v97 + 1))
                {
                  v32 = 0xCCCCCCCCCCCCCCCDLL * ((v27 - v96) >> 7);
                  v33 = v32 + 1;
                  if (v32 + 1 > 0x66666666666666)
                  {
                    sub_240B228BC();
                  }

                  if (0x999999999999999ALL * ((*(&v97 + 1) - v96) >> 7) > v33)
                  {
                    v33 = 0x999999999999999ALL * ((*(&v97 + 1) - v96) >> 7);
                  }

                  if (0xCCCCCCCCCCCCCCCDLL * ((*(&v97 + 1) - v96) >> 7) >= 0x33333333333333)
                  {
                    v34 = 0x66666666666666;
                  }

                  else
                  {
                    v34 = v33;
                  }

                  v78 = &v96;
                  if (v34)
                  {
                    if (v34 <= 0x66666666666666)
                    {
                      operator new();
                    }

                    sub_240B2291C();
                  }

                  v75 = 0;
                  v76 = 640 * v32;
                  v77 = 640 * v32;
                  sub_240B86714(640 * v32, v82);
                  *&v77 = v77 + 640;
                  v35 = v97;
                  v36 = v96;
                  v37 = v76 + v96 - v97;
                  if (v96 != v97)
                  {
                    v38 = v96;
                    v39 = v76 + v96 - v97;
                    do
                    {
                      *v39 = *v38;
                      *(v39 + 8) = 0;
                      *(v39 + 16) = 0uLL;
                      *(v39 + 8) = *(v38 + 8);
                      *(v39 + 24) = *(v38 + 24);
                      *(v38 + 24) = 0;
                      *(v38 + 8) = 0uLL;
                      v40 = *(v38 + 128);
                      v42 = *(v38 + 80);
                      v41 = *(v38 + 96);
                      *(v39 + 112) = *(v38 + 112);
                      *(v39 + 128) = v40;
                      *(v39 + 80) = v42;
                      *(v39 + 96) = v41;
                      v44 = *(v38 + 160);
                      v43 = *(v38 + 176);
                      v45 = *(v38 + 144);
                      *(v39 + 192) = *(v38 + 192);
                      *(v39 + 160) = v44;
                      *(v39 + 176) = v43;
                      *(v39 + 144) = v45;
                      v46 = *(v38 + 32);
                      v47 = *(v38 + 64);
                      *(v39 + 48) = *(v38 + 48);
                      *(v39 + 64) = v47;
                      *(v39 + 32) = v46;
                      v48 = *(v38 + 216);
                      *(v39 + 200) = *(v38 + 200);
                      *(v39 + 216) = v48;
                      *(v39 + 224) = 0;
                      *(v39 + 232) = 0uLL;
                      *(v39 + 224) = *(v38 + 224);
                      *(v39 + 240) = *(v38 + 240);
                      *(v38 + 240) = 0;
                      *(v38 + 224) = 0uLL;
                      v49 = *(v38 + 248);
                      v50 = *(v38 + 264);
                      *(v39 + 280) = *(v38 + 280);
                      *(v39 + 264) = v50;
                      *(v39 + 248) = v49;
                      *(v39 + 288) = *(v38 + 288);
                      *(v39 + 312) = 0uLL;
                      *(v39 + 304) = 0;
                      *(v39 + 304) = *(v38 + 304);
                      *(v39 + 320) = *(v38 + 320);
                      *(v38 + 320) = 0;
                      *(v38 + 304) = 0uLL;
                      v51 = *(v38 + 328);
                      *(v39 + 333) = *(v38 + 333);
                      *(v39 + 328) = v51;
                      *(v39 + 344) = *(v38 + 344);
                      v52 = *(v38 + 352);
                      v53 = *(v38 + 368);
                      v54 = *(v38 + 384);
                      *(v39 + 393) = *(v38 + 393);
                      *(v39 + 368) = v53;
                      *(v39 + 384) = v54;
                      *(v39 + 352) = v52;
                      *(v39 + 416) = 0;
                      *(v39 + 424) = 0uLL;
                      *(v39 + 416) = *(v38 + 416);
                      *(v39 + 432) = *(v38 + 432);
                      *(v38 + 432) = 0;
                      *(v38 + 416) = 0uLL;
                      *(v39 + 456) = 0;
                      *(v39 + 440) = 0uLL;
                      *(v39 + 440) = *(v38 + 440);
                      *(v39 + 448) = *(v38 + 448);
                      *(v38 + 456) = 0;
                      *(v38 + 440) = 0uLL;
                      *(v39 + 480) = 0;
                      *(v39 + 464) = 0uLL;
                      *(v39 + 464) = *(v38 + 464);
                      *(v39 + 480) = *(v38 + 480);
                      *(v38 + 480) = 0;
                      *(v38 + 464) = 0uLL;
                      *(v39 + 488) = *(v38 + 488);
                      *(v39 + 504) = 0uLL;
                      *(v39 + 496) = 0;
                      *(v39 + 496) = *(v38 + 496);
                      *(v39 + 512) = *(v38 + 512);
                      *(v38 + 512) = 0;
                      *(v38 + 496) = 0uLL;
                      *(v39 + 536) = 0;
                      *(v39 + 520) = 0uLL;
                      *(v39 + 520) = *(v38 + 520);
                      *(v39 + 528) = *(v38 + 528);
                      *(v38 + 536) = 0;
                      *(v38 + 520) = 0uLL;
                      *(v39 + 560) = 0;
                      *(v39 + 544) = 0uLL;
                      *(v39 + 544) = *(v38 + 544);
                      *(v39 + 560) = *(v38 + 560);
                      *(v38 + 560) = 0;
                      *(v38 + 544) = 0uLL;
                      *(v39 + 584) = 0;
                      *(v39 + 568) = 0uLL;
                      *(v39 + 568) = *(v38 + 568);
                      *(v39 + 576) = *(v38 + 576);
                      *(v38 + 584) = 0;
                      *(v38 + 568) = 0uLL;
                      *(v39 + 608) = 0;
                      *(v39 + 592) = 0uLL;
                      *(v39 + 592) = *(v38 + 592);
                      *(v39 + 608) = *(v38 + 608);
                      *(v38 + 608) = 0;
                      *(v38 + 592) = 0uLL;
                      v55 = *(v38 + 616);
                      *(v39 + 632) = *(v38 + 632);
                      *(v39 + 616) = v55;
                      v38 += 640;
                      v39 += 640;
                    }

                    while (v38 != v35);
                    do
                    {
                      v36 = sub_240B7BB60(v36) + 640;
                    }

                    while (v36 != v35);
                  }

                  v56 = v96;
                  v57 = *(&v97 + 1);
                  v96 = v37;
                  v74 = v77;
                  v97 = v77;
                  *&v77 = v56;
                  *(&v77 + 1) = v57;
                  v75 = v56;
                  v76 = v56;
                  sub_240BA36B0(&v75);
                  v27 = v74;
                }

                else
                {
                  sub_240B86714(v27, v82);
                  v27 += 640;
                }

                v30 = 0;
                *&v97 = v27;
                v29 = 1;
              }

              while ((v31 & 1) == 0);
              v28 += 4;
            }

            while (v28 != 12);
            v26 = v73 + 4;
          }

          while (v73 != 4);
          v24 = v72 + 4;
        }

        while (v72 != 8);
        v23 = v71 + 4;
      }

      while (v71 != 8);
      v22 = v70 + 4;
    }

    while (v70 != 4);
    v21 = v69 + 4;
  }

  while (v69 != 4);
  sub_240B38D70(&__p, 0xCCCCCCCCCCCCCCCDLL * ((v27 - v96) >> 7));
  LOBYTE(v122) = 0;
  v75 = &v122;
  v76 = &v96;
  *&v77 = a2;
  *(&v77 + 1) = &v116;
  v78 = a4;
  v79 = a5;
  v80 = &v115;
  p_p = &__p;
  v58 = sub_240B91420(v68, -858993459 * ((v97 - v96) >> 7), &v75);
  if (v58)
  {
    goto LABEL_72;
  }

  v59 = atomic_load(&v122);
  if ((v59 & 1) == 0)
  {
    v64 = 0xCCCCCCCCCCCCCCCDLL * ((v97 - v96) >> 7);
    if (v64 < 2)
    {
      v65 = 0;
    }

    else
    {
      v65 = 0;
      for (j = 1; j != v64; ++j)
      {
        if (*(__p + v65) > *(__p + j))
        {
          v65 = j;
        }
      }
    }

    sub_240B91460(&v98, v96 + 640 * v65);
    sub_240B7BB60(v82);
    if (__p)
    {
      v94 = __p;
      operator delete(__p);
    }

    v82[0] = &v96;
    sub_240B916A4(v82);
    a7 = v67;
    a6 = v68;
    goto LABEL_14;
  }

  v58 = 1;
LABEL_72:
  sub_240B7BB60(v82);
  if (__p)
  {
    v94 = __p;
    operator delete(__p);
  }

  v82[0] = &v96;
  sub_240B916A4(v82);
LABEL_91:
  sub_240B7BB60(&v98);
  return v58;
}