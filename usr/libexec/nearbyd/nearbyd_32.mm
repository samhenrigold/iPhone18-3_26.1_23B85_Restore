void sub_1001B95E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001B9604(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100013AEC();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

uint64_t sub_1001B96CC(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a2 + 23);
    if (v3 >= 0)
    {
      v4 = *(a2 + 23);
    }

    else
    {
      v4 = a2[1];
    }

    if (v3 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = 1;
    do
    {
      v7 = *(v2 + 55);
      if (v7 >= 0)
      {
        v8 = *(v2 + 55);
      }

      else
      {
        v8 = v2[5];
      }

      if (v7 >= 0)
      {
        v9 = (v2 + 4);
      }

      else
      {
        v9 = v2[4];
      }

      if (v8 >= v4)
      {
        v10 = v4;
      }

      else
      {
        v10 = v8;
      }

      v11 = memcmp(v5, v9, v10);
      v12 = v4 < v8;
      if (v11)
      {
        v12 = v11 < 0;
      }

      if (!v12)
      {
        v13 = memcmp(v9, v5, v10);
        v14 = v8 < v4;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (!v14)
        {
          return v6;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_1001B97B4(uint64_t a1)
{
  sub_1001B97EC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001B97EC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_1001B9848(const void **result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 24;
  v74 = a2 - 48;
  v9 = a2 - 72;
  v10 = result;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    result = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (sub_1001BA354(a3, a2 - 3, v10))
      {
LABEL_77:
        v122 = v10[2];
        v98 = *v10;
        v70 = *v8;
        v10[2] = *(v8 + 2);
        *v10 = v70;
        *v8 = v98;
        v59 = v122;
        goto LABEL_78;
      }

      return;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        sub_1001BA5A0(v10, a2, a3);
      }

      else
      {

        sub_1001BA6C4(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_1001BAF64(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[3 * (v14 >> 1)];
    if (v13 >= 0xC01)
    {
      v17 = sub_1001BA354(a3, &v10[3 * v15], v10);
      v18 = sub_1001BA354(a3, a2 - 3, &result[3 * v15]);
      if (v17)
      {
        if (v18)
        {
          v100 = result[2];
          v76 = *result;
          v19 = *v8;
          result[2] = *(a2 - 1);
          *result = v19;
          goto LABEL_27;
        }

        v106 = result[2];
        v82 = *result;
        v27 = *v16;
        result[2] = v16[2];
        *result = v27;
        v16[2] = v106;
        *v16 = v82;
        if (sub_1001BA354(a3, a2 - 3, &result[3 * v15]))
        {
          v100 = v16[2];
          v76 = *v16;
          v28 = *v8;
          v16[2] = *(a2 - 1);
          *v16 = v28;
LABEL_27:
          *v8 = v76;
          *(a2 - 1) = v100;
        }
      }

      else if (v18)
      {
        v102 = v16[2];
        v78 = *v16;
        v23 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v23;
        *v8 = v78;
        *(a2 - 1) = v102;
        if (sub_1001BA354(a3, &result[3 * v15], result))
        {
          v103 = result[2];
          v79 = *result;
          v24 = *v16;
          result[2] = v16[2];
          *result = v24;
          v16[2] = v103;
          *v16 = v79;
        }
      }

      v29 = &result[3 * v15 - 3];
      v30 = sub_1001BA354(a3, v29, result + 3);
      v31 = sub_1001BA354(a3, v74, v29);
      if (v30)
      {
        if (v31)
        {
          v32 = result[5];
          v33 = *(result + 3);
          v34 = *(a2 - 4);
          *(result + 3) = *v74;
          result[5] = v34;
          *v74 = v33;
          *(a2 - 4) = v32;
        }

        else
        {
          v86 = *(result + 3);
          v110 = result[5];
          v39 = result[3 * v15 - 1];
          *(result + 3) = *v29;
          result[5] = v39;
          result[3 * v15 - 1] = v110;
          *v29 = v86;
          if (sub_1001BA354(a3, v74, v29))
          {
            v111 = result[3 * v15 - 1];
            v87 = *v29;
            v40 = *v74;
            result[3 * v15 - 1] = *(a2 - 4);
            *v29 = v40;
            *v74 = v87;
            *(a2 - 4) = v111;
          }
        }
      }

      else if (v31)
      {
        v107 = result[3 * v15 - 1];
        v83 = *v29;
        v35 = *v74;
        result[3 * v15 - 1] = *(a2 - 4);
        *v29 = v35;
        *v74 = v83;
        *(a2 - 4) = v107;
        if (sub_1001BA354(a3, v29, result + 3))
        {
          v84 = *(result + 3);
          v108 = result[5];
          v36 = result[3 * v15 - 1];
          *(result + 3) = *v29;
          result[5] = v36;
          result[3 * v15 - 1] = v108;
          *v29 = v84;
        }
      }

      v41 = &result[3 * v15];
      v42 = sub_1001BA354(a3, v41 + 3, result + 6);
      v43 = sub_1001BA354(a3, a2 - 9, v41 + 3);
      if (v42)
      {
        if (v43)
        {
          v44 = result[8];
          v45 = *(result + 3);
          v46 = *(a2 - 7);
          *(result + 3) = *v9;
          result[8] = v46;
          *v9 = v45;
          goto LABEL_47;
        }

        v90 = *(result + 3);
        v114 = result[8];
        v49 = v41[5];
        *(result + 3) = *(v41 + 3);
        result[8] = v49;
        v41[5] = v114;
        *(v41 + 3) = v90;
        if (sub_1001BA354(a3, a2 - 9, v41 + 3))
        {
          v115 = v41[5];
          v91 = *(v41 + 3);
          v50 = *v9;
          v41[5] = *(a2 - 7);
          *(v41 + 3) = v50;
          *v9 = v91;
          v44 = v115;
LABEL_47:
          *(a2 - 7) = v44;
        }
      }

      else if (v43)
      {
        v112 = v41[5];
        v88 = *(v41 + 3);
        v47 = *v9;
        v41[5] = *(a2 - 7);
        *(v41 + 3) = v47;
        *v9 = v88;
        *(a2 - 7) = v112;
        if (sub_1001BA354(a3, v41 + 3, result + 6))
        {
          v89 = *(result + 3);
          v113 = result[8];
          v48 = v41[5];
          *(result + 3) = *(v41 + 3);
          result[8] = v48;
          v41[5] = v113;
          *(v41 + 3) = v89;
        }
      }

      v51 = sub_1001BA354(a3, v16, v29);
      v52 = sub_1001BA354(a3, v41 + 3, v16);
      if (v51)
      {
        if (v52)
        {
          v116 = v29[2];
          v92 = *v29;
          *v29 = *(v41 + 3);
          v29[2] = v41[5];
          goto LABEL_56;
        }

        v119 = v29[2];
        v95 = *v29;
        *v29 = *v16;
        v29[2] = v16[2];
        v16[2] = v119;
        *v16 = v95;
        if (sub_1001BA354(a3, v41 + 3, v16))
        {
          v116 = v16[2];
          v92 = *v16;
          *v16 = *(v41 + 3);
          v16[2] = v41[5];
LABEL_56:
          v41[5] = v116;
          *(v41 + 3) = v92;
        }
      }

      else if (v52)
      {
        v117 = v16[2];
        v93 = *v16;
        *v16 = *(v41 + 3);
        v16[2] = v41[5];
        v41[5] = v117;
        *(v41 + 3) = v93;
        if (sub_1001BA354(a3, v16, v29))
        {
          v118 = v29[2];
          v94 = *v29;
          *v29 = *v16;
          v29[2] = v16[2];
          v16[2] = v118;
          *v16 = v94;
        }
      }

      v120 = result[2];
      v96 = *result;
      v53 = *v16;
      result[2] = v16[2];
      *result = v53;
      v16[2] = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v20 = sub_1001BA354(a3, v10, &v10[3 * v15]);
    v21 = sub_1001BA354(a3, a2 - 3, result);
    if (v20)
    {
      if (v21)
      {
        v101 = v16[2];
        v77 = *v16;
        v22 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v22;
LABEL_36:
        *v8 = v77;
        *(a2 - 1) = v101;
        goto LABEL_58;
      }

      v109 = v16[2];
      v85 = *v16;
      v37 = *result;
      v16[2] = result[2];
      *v16 = v37;
      result[2] = v109;
      *result = v85;
      if (sub_1001BA354(a3, a2 - 3, result))
      {
        v101 = result[2];
        v77 = *result;
        v38 = *v8;
        result[2] = *(a2 - 1);
        *result = v38;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v104 = result[2];
      v80 = *result;
      v25 = *v8;
      result[2] = *(a2 - 1);
      *result = v25;
      *v8 = v80;
      *(a2 - 1) = v104;
      if (sub_1001BA354(a3, result, &result[3 * v15]))
      {
        v105 = v16[2];
        v81 = *v16;
        v26 = *result;
        v16[2] = result[2];
        *v16 = v26;
        result[2] = v105;
        *result = v81;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && !sub_1001BA354(a3, result - 3, result))
    {
      v10 = sub_1001BA7C4(result, a2, a3);
      goto LABEL_65;
    }

    v54 = sub_1001BA958(result, a2, a3);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = sub_1001BAAE8(result, v54, a3);
    v10 = v54 + 3;
    if (sub_1001BAAE8((v54 + 3), a2, a3))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      sub_1001B9848(result, v54, a3, -v12, a5 & 1);
      v10 = v54 + 3;
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      sub_1001BA3C0(v10, v10 + 3, v10 + 6, a2 - 3, a3);
      return;
    }

    if (v14 == 5)
    {
      sub_1001BA3C0(v10, v10 + 3, v10 + 6, v10 + 9, a3);
      if (!sub_1001BA354(a3, a2 - 3, v10 + 9))
      {
        return;
      }

      v62 = v10[11];
      v63 = *(v10 + 9);
      v64 = *(a2 - 1);
      *(v10 + 9) = *v8;
      v10[11] = v64;
      *v8 = v63;
      *(a2 - 1) = v62;
      if (!sub_1001BA354(a3, v10 + 9, v10 + 6))
      {
        return;
      }

      v65 = v10[8];
      v66 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 9);
      v10[8] = v10[11];
      *(v10 + 9) = v66;
      v10[11] = v65;
      if (!sub_1001BA354(a3, v10 + 6, v10 + 3))
      {
        return;
      }

      v67 = v10[5];
      v68 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 3);
      v10[5] = v10[8];
      *(v10 + 3) = v68;
      v10[8] = v67;
      goto LABEL_92;
    }

    goto LABEL_10;
  }

  v57 = sub_1001BA354(a3, v10 + 3, v10);
  v58 = sub_1001BA354(a3, v8, v10 + 3);
  if (!v57)
  {
    if (!v58)
    {
      return;
    }

    v71 = v10[5];
    v72 = *(v10 + 3);
    v73 = *(v8 + 2);
    *(v10 + 3) = *v8;
    v10[5] = v73;
    *v8 = v72;
    *(v8 + 2) = v71;
LABEL_92:
    if (sub_1001BA354(a3, v10 + 3, v10))
    {
      v123 = v10[2];
      v99 = *v10;
      *v10 = *(v10 + 3);
      v10[2] = v10[5];
      *(v10 + 3) = v99;
      v10[5] = v123;
    }

    return;
  }

  if (v58)
  {
    goto LABEL_77;
  }

  v121 = v10[2];
  v97 = *v10;
  *v10 = *(v10 + 3);
  v10[2] = v10[5];
  *(v10 + 3) = v97;
  v10[5] = v121;
  if (sub_1001BA354(a3, v8, v10 + 3))
  {
    v59 = v10[5];
    v60 = *(v10 + 3);
    v61 = *(v8 + 2);
    *(v10 + 3) = *v8;
    v10[5] = v61;
    *v8 = v60;
LABEL_78:
    *(v8 + 2) = v59;
  }
}

BOOL sub_1001BA354(uint64_t a1, void *a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = *(a3 + 23);
  if (v4 >= 0)
  {
    v5 = *(a3 + 23);
  }

  else
  {
    v5 = a3[1];
  }

  if (v4 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v3 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v3 < 0)
  {
    a2 = *a2;
  }

  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  v9 = memcmp(v6, a2, v8);
  if (v9)
  {
    return v9 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

__n128 sub_1001BA3C0(const void **a1, const void **a2, const void **a3, void *a4, uint64_t a5)
{
  v10 = sub_1001BA354(a5, a2, a1);
  v11 = sub_1001BA354(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1[2];
      v13 = *a1;
      v14 = a3[2];
      *a1 = *a3;
      a1[2] = v14;
LABEL_9:
      *a3 = v13;
      a3[2] = v12;
      goto LABEL_10;
    }

    v21 = a1[2];
    v22 = *a1;
    v23 = a2[2];
    *a1 = *a2;
    a1[2] = v23;
    *a2 = v22;
    a2[2] = v21;
    if (sub_1001BA354(a5, a3, a2))
    {
      v12 = a2[2];
      v13 = *a2;
      v24 = a3[2];
      *a2 = *a3;
      a2[2] = v24;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v15 = a2[2];
    v16 = *a2;
    v17 = a3[2];
    *a2 = *a3;
    a2[2] = v17;
    *a3 = v16;
    a3[2] = v15;
    if (sub_1001BA354(a5, a2, a1))
    {
      v18 = a1[2];
      v19 = *a1;
      v20 = a2[2];
      *a1 = *a2;
      a1[2] = v20;
      *a2 = v19;
      a2[2] = v18;
    }
  }

LABEL_10:
  if (sub_1001BA354(a5, a4, a3))
  {
    v26 = a3[2];
    v27 = *a3;
    v28 = a4[2];
    *a3 = *a4;
    a3[2] = v28;
    *a4 = v27;
    a4[2] = v26;
    if (sub_1001BA354(a5, a3, a2))
    {
      v29 = a2[2];
      v30 = *a2;
      v31 = a3[2];
      *a2 = *a3;
      a2[2] = v31;
      *a3 = v30;
      a3[2] = v29;
      if (sub_1001BA354(a5, a2, a1))
      {
        v32 = a1[2];
        result = *a1;
        v33 = a2[2];
        *a1 = *a2;
        a1[2] = v33;
        *a2 = result;
        a2[2] = v32;
      }
    }
  }

  return result;
}

void sub_1001BA5A0(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v18 = v3;
    v19 = v4;
    v7 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v9 = 0;
      v10 = a1;
      do
      {
        v11 = v10;
        v10 = v7;
        if (sub_1001BA354(a3, v7, v11))
        {
          v16 = *v10;
          v17 = v10[2];
          v10[1] = 0;
          v10[2] = 0;
          *v10 = 0;
          v12 = v9;
          do
          {
            v13 = (a1 + v12);
            if (*(a1 + v12 + 47) < 0)
            {
              operator delete(v13[3]);
            }

            *(v13 + 3) = *v13;
            v13[5] = v13[2];
            *(v13 + 23) = 0;
            *v13 = 0;
            if (!v12)
            {
              v15 = a1;
              goto LABEL_13;
            }

            v12 -= 24;
          }

          while (sub_1001BA354(a3, &v16, (a1 + v12)));
          v14 = *(a1 + v12 + 47);
          v15 = (a1 + v12 + 24);
          if (v14 < 0)
          {
            operator delete(*v15);
          }

LABEL_13:
          *v15 = v16;
          v15[2] = v17;
        }

        v7 = v10 + 3;
        v9 += 24;
      }

      while (v10 + 3 != a2);
    }
  }
}

void sub_1001BA6C4(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v15 = v3;
    v16 = v4;
    v6 = a1;
    v7 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v9 = a1 - 3;
      do
      {
        v10 = v6;
        v6 = v7;
        if (sub_1001BA354(a3, v7, v10))
        {
          v13 = *v6;
          v14 = v6[2];
          v6[1] = 0;
          v6[2] = 0;
          *v6 = 0;
          v11 = v9;
          do
          {
            if (*(v11 + 71) < 0)
            {
              operator delete(v11[6]);
            }

            *(v11 + 3) = *(v11 + 3);
            v11[8] = v11[5];
            *(v11 + 47) = 0;
            *(v11 + 24) = 0;
            v12 = sub_1001BA354(a3, &v13, v11);
            v11 -= 3;
          }

          while (v12);
          if (*(v11 + 71) < 0)
          {
            operator delete(v11[6]);
          }

          *(v11 + 3) = v13;
          v11[8] = v14;
        }

        v7 = v6 + 3;
        v9 += 3;
      }

      while (v6 + 3 != a2);
    }
  }
}

const void **sub_1001BA7C4(const void **a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v16 = *a1;
  v17 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (sub_1001BA354(a3, &v16, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 += 3;
    }

    while (!sub_1001BA354(a3, &v16, v6));
  }

  else
  {
    v7 = a1 + 3;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = sub_1001BA354(a3, &v16, v7);
      v7 = v6 + 3;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 24;
    }

    while (sub_1001BA354(a3, &v16, v4));
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = v6[2];
    v18 = v9;
    v10 = *v4;
    v6[2] = *(v4 + 16);
    *v6 = v10;
    v11 = v18;
    *(v4 + 16) = v19;
    *v4 = v11;
    do
    {
      v6 += 3;
    }

    while (!sub_1001BA354(a3, &v16, v6));
    do
    {
      v4 -= 24;
    }

    while (sub_1001BA354(a3, &v16, v4));
  }

  v12 = (v6 - 3);
  if (v6 - 3 == a1)
  {
    if (*(v6 - 1) < 0)
    {
      operator delete(*v12);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v12;
    a1[2] = *(v6 - 1);
    *a1 = v13;
    *(v6 - 1) = 0;
    *(v6 - 24) = 0;
  }

  v14 = v16;
  *(v6 - 1) = v17;
  *v12 = v14;
  return v6;
}

void *sub_1001BA958(__int128 *a1, char *a2, uint64_t a3)
{
  v6 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  *(a1 + 8) = 0uLL;
  *a1 = 0;
  do
  {
    v6 += 24;
  }

  while (sub_1001BA354(a3, (a1 + v6), &v17));
  v7 = a1 + v6;
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 24;
    }

    while (!sub_1001BA354(a3, a2, &v17));
  }

  else
  {
    do
    {
      a2 -= 24;
    }

    while (!sub_1001BA354(a3, a2, &v17));
  }

  v8 = (a1 + v6);
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v19 = *v8;
      v10 = v19;
      v20 = v8[2];
      v11 = v20;
      v12 = *(v9 + 2);
      *v8 = *v9;
      v8[2] = v12;
      *(v9 + 2) = v11;
      *v9 = v10;
      do
      {
        v8 += 3;
      }

      while (sub_1001BA354(a3, v8, &v17));
      do
      {
        v9 -= 24;
      }

      while (!sub_1001BA354(a3, v9, &v17));
    }

    while (v8 < v9);
  }

  v13 = (v8 - 3);
  if (v8 - 3 == a1)
  {
    if (*(v8 - 1) < 0)
    {
      operator delete(*v13);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v14 = *v13;
    *(a1 + 2) = *(v8 - 1);
    *a1 = v14;
    *(v8 - 1) = 0;
    *(v8 - 24) = 0;
  }

  v15 = v17;
  *(v8 - 1) = v18;
  *v13 = v15;
  return v8 - 3;
}

BOOL sub_1001BAAE8(__int128 *a1, const void **a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 3;
        v16 = sub_1001BA354(a3, a1 + 3, a1);
        v17 = sub_1001BA354(a3, v7, a1 + 3);
        if (v16)
        {
          if (!v17)
          {
            v35 = *(a1 + 2);
            v36 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 2) = *(a1 + 5);
            *(a1 + 24) = v36;
            *(a1 + 5) = v35;
            if (!sub_1001BA354(a3, v7, a1 + 3))
            {
              return 1;
            }

            v18 = *(a1 + 5);
            v19 = *(a1 + 24);
            v37 = v7[2];
            *(a1 + 24) = *v7;
            *(a1 + 5) = v37;
            goto LABEL_16;
          }

LABEL_15:
          v18 = *(a1 + 2);
          v19 = *a1;
          v20 = v7[2];
          *a1 = *v7;
          *(a1 + 2) = v20;
LABEL_16:
          *v7 = v19;
          v7[2] = v18;
          return 1;
        }

        if (!v17)
        {
          return 1;
        }

        v26 = *(a1 + 5);
        v27 = *(a1 + 24);
        v28 = v7[2];
        *(a1 + 24) = *v7;
        *(a1 + 5) = v28;
        *v7 = v27;
        v7[2] = v26;
        break;
      case 4:
        sub_1001BA3C0(a1, a1 + 3, a1 + 6, a2 - 3, a3);
        return 1;
      case 5:
        v8 = a2 - 3;
        sub_1001BA3C0(a1, a1 + 3, a1 + 6, a1 + 9, a3);
        if (!sub_1001BA354(a3, v8, a1 + 9))
        {
          return 1;
        }

        v9 = *(a1 + 11);
        v10 = *(a1 + 72);
        v11 = v8[2];
        *(a1 + 72) = *v8;
        *(a1 + 11) = v11;
        *v8 = v10;
        v8[2] = v9;
        if (!sub_1001BA354(a3, a1 + 9, a1 + 6))
        {
          return 1;
        }

        v12 = *(a1 + 8);
        v13 = a1[3];
        a1[3] = *(a1 + 72);
        *(a1 + 8) = *(a1 + 11);
        *(a1 + 72) = v13;
        *(a1 + 11) = v12;
        if (!sub_1001BA354(a3, a1 + 6, a1 + 3))
        {
          return 1;
        }

        v14 = *(a1 + 5);
        v15 = *(a1 + 24);
        *(a1 + 24) = a1[3];
        *(a1 + 5) = *(a1 + 8);
        a1[3] = v15;
        *(a1 + 8) = v14;
        break;
      default:
        goto LABEL_17;
    }

    if (sub_1001BA354(a3, a1 + 3, a1))
    {
      v29 = *(a1 + 2);
      v30 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 2) = *(a1 + 5);
      *(a1 + 24) = v30;
      *(a1 + 5) = v29;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 3;
    if (!sub_1001BA354(a3, a2 - 3, a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v21 = (a1 + 3);
  v22 = sub_1001BA354(a3, a1 + 3, a1);
  v23 = sub_1001BA354(a3, a1 + 6, a1 + 3);
  if (v22)
  {
    if (v23)
    {
      v24 = *(a1 + 2);
      v25 = *a1;
      *a1 = *v21;
      *(a1 + 2) = *(a1 + 8);
    }

    else
    {
      v38 = *(a1 + 2);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 2) = *(a1 + 5);
      *(a1 + 24) = v39;
      *(a1 + 5) = v38;
      if (!sub_1001BA354(a3, a1 + 6, a1 + 3))
      {
        goto LABEL_33;
      }

      v24 = *(a1 + 5);
      v25 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 5) = *(a1 + 8);
    }

    *v21 = v25;
    *(a1 + 8) = v24;
  }

  else if (v23)
  {
    v31 = *(a1 + 5);
    v32 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 5) = *(a1 + 8);
    *v21 = v32;
    *(a1 + 8) = v31;
    if (sub_1001BA354(a3, a1 + 3, a1))
    {
      v33 = *(a1 + 2);
      v34 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 2) = *(a1 + 5);
      *(a1 + 24) = v34;
      *(a1 + 5) = v33;
    }
  }

LABEL_33:
  v40 = a1 + 9;
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    if (sub_1001BA354(a3, v40, v21))
    {
      v49 = *v40;
      v50 = v40[2];
      v40[1] = 0;
      v40[2] = 0;
      *v40 = 0;
      v43 = v41;
      do
      {
        v44 = a1 + v43;
        if (*(a1 + v43 + 95) < 0)
        {
          operator delete(*(v44 + 72));
        }

        *(v44 + 72) = *(v44 + 48);
        *(v44 + 88) = *(v44 + 64);
        *(v44 + 71) = 0;
        *(v44 + 48) = 0;
        if (v43 == -48)
        {
          v47 = a1;
          goto LABEL_44;
        }

        v45 = sub_1001BA354(a3, &v49, (a1 + v43 + 24));
        v43 -= 24;
      }

      while (v45);
      v46 = *(a1 + v43 + 95);
      v47 = a1 + v43 + 72;
      if (v46 < 0)
      {
        operator delete(*v47);
      }

LABEL_44:
      *v47 = v49;
      *(v47 + 16) = v50;
      if (++v42 == 8)
      {
        return v40 + 3 == a2;
      }
    }

    v21 = v40;
    v41 += 24;
    v40 += 3;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

void *sub_1001BAF64(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        sub_1001BB19C(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (sub_1001BA354(a4, v13, a1))
        {
          v14 = v13[2];
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          v13[2] = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          sub_1001BB19C(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = a2 - 3;
      do
      {
        v19 = *a1;
        *v27 = *(a1 + 8);
        *&v27[7] = *(a1 + 15);
        v20 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v21 = sub_1001BB338(a1, a4, v17);
        v22 = v21;
        v23 = v21[23];
        if (v18 == v21)
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          *v22 = v19;
          *(v22 + 1) = *v27;
          *(v22 + 15) = *&v27[7];
          v22[23] = v20;
        }

        else
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          v24 = *v18;
          *(v22 + 2) = v18[2];
          *v22 = v24;
          *v18 = v19;
          v18[1] = *v27;
          *(v18 + 15) = *&v27[7];
          *(v18 + 23) = v20;
          sub_1001BB410(a1, (v22 + 24), a4, 0xAAAAAAAAAAAAAAABLL * (&v22[-a1 + 24] >> 3));
        }

        v18 -= 3;
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

void sub_1001BB184(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1001BB19C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 24 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && sub_1001BA354(a2, (a1 + 24 * v12), (v13 + 24)))
      {
        v13 += 24;
        v12 = v14;
      }

      if (!sub_1001BA354(a2, v13, v7))
      {
        v20 = *v7;
        v21 = v7[1].n128_u64[0];
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        while (1)
        {
          v16 = v13;
          if (v7[1].n128_i8[7] < 0)
          {
            operator delete(v7->n128_u64[0]);
          }

          v17 = *v13;
          v7[1].n128_u64[0] = *(v13 + 16);
          *v7 = v17;
          *(v13 + 23) = 0;
          *v13 = 0;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = a1 + 24 * v18;
          v19 = 2 * v12 + 2;
          if (v19 < a3 && sub_1001BA354(a2, (a1 + 24 * v18), (v13 + 24)))
          {
            v13 += 24;
            v18 = v19;
          }

          v7 = v16;
          v12 = v18;
          if (sub_1001BA354(a2, v13, &v20))
          {
            if (v16[1].n128_i8[7] < 0)
            {
              operator delete(v16->n128_u64[0]);
            }

            break;
          }
        }

        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

char *sub_1001BB338(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 24 * v6;
    v9 = v8 + 24;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = v8 + 48;
      if (sub_1001BA354(a2, v8 + 3, v8 + 6))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v13;
    v9[23] = 0;
    *v9 = 0;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

double sub_1001BB410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v16 = v4;
    v17 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = (a1 + 24 * v8);
    v10 = (a2 - 24);
    if (sub_1001BA354(a3, v9, (a2 - 24)))
    {
      v14 = *v10;
      v15 = *(v10 + 2);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      while (1)
      {
        v12 = v9;
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        v13 = *v9;
        *(v10 + 2) = *(v9 + 2);
        *v10 = v13;
        *(v9 + 23) = 0;
        *v9 = 0;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 24 * v8);
        v10 = v12;
        if (!sub_1001BA354(a3, v9, &v14))
        {
          if (*(v12 + 23) < 0)
          {
            operator delete(*v12);
          }

          break;
        }
      }

      result = *&v14;
      *v12 = v14;
      *(v12 + 2) = v15;
    }
  }

  return result;
}

uint64_t sub_1001BB564(uint64_t a1)
{
  if (*(a1 + 520) == 1 && *(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  sub_10002074C(a1 + 440, *(a1 + 448));
  sub_10002074C(a1, *(a1 + 8));
  return a1;
}

void sub_1001BBCC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_1001BBDD4(&a11);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1001BBD88(void *a1, uint64_t *a2)
{
  sub_1001BDC34(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_10000AD84(v3);
  }

  return a1;
}

uint64_t *sub_1001BBDD4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100040094(v2);
    operator delete();
  }

  return a1;
}

void sub_1001BC1B8(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_1001BC2F0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001BC8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001BC9A8(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = NIServerRangingAuthSession;
  v2 = objc_msgSendSuper2(&v4, "resourcesManager");
  v3 = [v2 remote];
  [v3 didReceiveRangingAuthRecommendation:*(a1 + 48) forObject:*(a1 + 40)];
}

void sub_1001BCC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001BCC64(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = NIServerRangingAuthSession;
  v2 = objc_msgSendSuper2(&v4, "resourcesManager");
  v3 = [v2 remote];
  [v3 uwbSessionDidInvalidateWithError:*(a1 + 40)];
}

uint64_t **sub_1001BD0B0(uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_1001BD130(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void *sub_1001BD130(uint64_t **a1, uint64_t *a2, int *a3, void *a4)
{
  v4 = *sub_1001BD1C8(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_1001BD1C8(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

double **sub_1001BD370(double **a1, double *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_1001BD3F0(a1, v4, a2, a2);
      ++a2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void *sub_1001BD3F0(double **a1, double *a2, double *a3, void *a4)
{
  v4 = *sub_1001BD488(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

double *sub_1001BD488(double **a1, double *a2, double **a3, double *a4, double *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 > v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = *(v13 + 2);
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] > *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = *&v16;
          v18 = *(*&v16 + 32);
          if (v15 <= v18)
          {
            break;
          }

          v16 = **&v16;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v18 <= v15)
        {
          break;
        }

        v5 = (*&v16 + 8);
        v16 = *(*&v16 + 8);
      }

      while (v16 != 0.0);
      goto LABEL_43;
    }

LABEL_42:
    v17 = (a1 + 1);
LABEL_43:
    *a3 = v17;
    return v5;
  }

  if (v7 <= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    v12 = *(a2 + 1);
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = *(v19 + 2);
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 <= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v20;
          v21 = v20[4];
          if (v6 <= v21)
          {
            break;
          }

          v20 = *v20;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v21 <= v6)
        {
          break;
        }

        v5 = v20 + 1;
        v20 = *(v20 + 1);
      }

      while (v20);
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_1001BD644(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10099BEA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001BD6CC(uint64_t a1)
{

  operator delete();
}

id sub_1001BD780(uint64_t a1, void *a2)
{
  *a2 = off_10099BEF8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001BD7D0(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1001BD818(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099BF68))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001BD890(uint64_t a1)
{

  operator delete();
}

id sub_1001BD944(uint64_t a1, void *a2)
{
  *a2 = off_10099BF88;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001BD994(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1001BDA00(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099BFF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001BDA78(uint64_t a1)
{

  operator delete();
}

id sub_1001BDB2C(uint64_t a1, void *a2)
{
  *a2 = off_10099C018;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001BDB7C(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1001BDBE8(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099C088))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1001BDC34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

void sub_1001BDCB8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001BDCF0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_100040094(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1001BDD34(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1001BDD74(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1001BDDD0()
{
  v0 = objc_autoreleasePoolPush();
  v8 = xmmword_100563CC0;
  v9[0] = unk_100563CD0;
  sub_1001BD0B0(qword_1009F02E0, &v8, 4);
  xmmword_1009F02F8 = xmmword_100563BD0;
  unk_1009F0308 = xmmword_100563BE0;
  qword_1009F0320 = 0;
  unk_1009F0328 = 0;
  qword_1009F0318 = 0x3FD999999999999ALL;
  unk_1009F0330 = xmmword_100563BF0;
  dword_1009F0340 = 5;
  qword_1009F0348 = 0x4000000000000000;
  dword_1009F0350 = 5;
  byte_1009F0358 = 0;
  unk_1009F035C = 0x30000000ALL;
  xmmword_1009F0368 = xmmword_100563C00;
  unk_1009F0378 = xmmword_100563C10;
  xmmword_1009F0388 = xmmword_100563C20;
  qword_1009F0398 = 0x3FE3333333333333;
  dword_1009F03A0 = 3;
  xmmword_1009F03A8 = xmmword_100563C30;
  unk_1009F03B8 = xmmword_100563C10;
  xmmword_1009F03C8 = xmmword_100563C00;
  qword_1009F03D8 = 0x3FE3333333333333;
  byte_1009F03E0 = 0;
  xmmword_1009F03E8 = xmmword_100563C40;
  unk_1009F03F8 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v6 = _Q0;
  xmmword_1009F0408 = _Q0;
  qword_1009F0418 = 0xBFD3333333333333;
  xmmword_1009F0420 = xmmword_100563C60;
  qword_1009F0430 = 0x3E99999A40000000;
  xmmword_1009F0438 = xmmword_100563BE0;
  qword_1009F0450 = 0;
  unk_1009F0458 = 0;
  qword_1009F0448 = 0x3FD999999999999ALL;
  xmmword_1009F0460 = xmmword_100563BF0;
  dword_1009F0470 = 5;
  qword_1009F0478 = 0x4000000000000000;
  dword_1009F0480 = 4;
  qword_1009F0488 = 0x300000008;
  qword_1009F0490 = 0xC04E800000000000;
  v7 = 0xC04E800000000000;
  sub_1001BD370(qword_1009F0498, &v7, 1);
  xmmword_1009F04B0 = xmmword_100563C70;
  qword_1009F04C0 = 0x4024000000000000;
  dword_1009F04C8 = 45;
  byte_1009F04D0 = 0;
  byte_1009F04E8 = 0;
  qword_1009F04F0 = 0;
  byte_1009F04F8 = 0;
  dword_1009F04FC = 1;
  byte_1009F0500 = 1;
  xmmword_1009F0508 = xmmword_100563C80;
  xmmword_1009F0518 = xmmword_100563C90;
  xmmword_1009F0528 = v6;
  qword_1009F0538 = 0xC059000000000000;
  xmmword_1009F0540 = xmmword_100563CA0;
  qword_1009F0550 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F0558 = xmmword_100563BE0;
  qword_1009F0568 = 0x3FD999999999999ALL;
  xmmword_1009F0570 = 0u;
  unk_1009F0580 = xmmword_100563BF0;
  dword_1009F0590 = 5;
  qword_1009F0598 = 0x4000000000000000;
  dword_1009F05A0 = 10;
  qword_1009F05A8 = 0x4034000000000000;
  dword_1009F05B0 = 3;
  xmmword_1009F05B8 = xmmword_100563CB0;
  __cxa_atexit(sub_1001BB564, qword_1009F02E0, &_mh_execute_header);
  __cxa_atexit(nullsub_73, &off_1009EAB70, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EAB78, &_mh_execute_header);
  v8 = xmmword_100563CE0;
  v9[0] = unk_100563CF0;
  v9[1] = xmmword_100563D00;
  v9[2] = unk_100563D10;
  qword_1009F05D0 = 0;
  unk_1009F05D8 = 0;
  qword_1009F05C8 = 0;
  sub_10004EEB8(&qword_1009F05C8, &v8, &v10, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F05C8, &_mh_execute_header);
  v8 = xmmword_100563D20;
  qword_1009F05E8 = 0;
  unk_1009F05F0 = 0;
  qword_1009F05E0 = 0;
  sub_10004EEB8(&qword_1009F05E0, &v8, v9, 1uLL);
  __cxa_atexit(sub_100045220, &qword_1009F05E0, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_1001BEA0C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1001BEA48(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  *a1 = xmmword_1005640F0;
  *(a1 + 16) = 1;
  sub_100004A08(&__p, "regulatory,geof,qm,sm");
  v5 = a1;
  operator new();
}

void sub_1001BEC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_1001BF454(v17 + 24);

  _Unwind_Resume(a1);
}

uint64_t sub_1001BEC88(uint64_t a1, int a2)
{
  if (a2 != 4)
  {
    return a2 == 3;
  }

  *(a1 + 176) = *(a1 + 8) * *(a1 + 16);
  return 2;
}

uint64_t sub_1001BECBC(uint64_t a1, int a2)
{
  v3 = 1;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        sub_10003229C(a1 + 184, 0);
        sub_1001BEF10((a1 + 24), 5);
      }
    }

    else
    {
      sub_10003229C(a1 + 184, 1);
      sub_1001BF62C(a1 + 24, 5, *a1);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        return 0;
      case 4:
        sub_1001BEF10((a1 + 24), 5);
        v4 = *(a1 + 8) * *(a1 + 16);
        goto LABEL_11;
      case 5:
        v4 = -(*a1 - *(a1 + 8) * *(a1 + 16));
LABEL_11:
        *(a1 + 176) = v4;
        return 2;
    }
  }

  return v3;
}

uint64_t sub_1001BED8C(uint64_t a1, int a2)
{
  result = 2;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      sub_1001BEF10((a1 + 24), 6);
      return 2;
    }

    v4 = *(a1 + 176);
LABEL_13:
    sub_1001BF62C(a1 + 24, 6, v4);
    return 2;
  }

  switch(a2)
  {
    case 2:
      return 0;
    case 4:
      sub_1001BEF10((a1 + 24), 6);
      v4 = *(a1 + 8) * *(a1 + 16);
      goto LABEL_13;
    case 6:
      return 1;
    default:
      return 2;
  }
}

void sub_1001BEE34(double *a1)
{
  v5 = 0.0;
  if (sub_10045C0F4("GeofenceLocationQueryInterval", &v5) && v5 != 0.0)
  {
    a1[1] = v5;
    v2 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004A4ED0(a1 + 1, v2);
    }
  }

  v4 = 0.0;
  if (sub_10045C0F4("GeofenceLocationQueryTimeout", &v4) && v4 != 0.0)
  {
    *a1 = v4;
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004A4ED0(a1, v3);
    }
  }
}

uint64_t *sub_1001BEF10(uint64_t *result, int a2)
{
  v5 = a2;
  v2 = result[8];
  if (v2)
  {
    v3 = result;
    v4 = result + 8;
    do
    {
      if (*(v2 + 32) >= a2)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 32) < a2));
    }

    while (v2);
    if (v4 != result + 8 && *(v4 + 8) <= a2)
    {
      result = v4[5];
      if (result)
      {
        dispatch_source_set_timer(result, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
        v6 = &v5;
        result = sub_1001BF9A0((v3 + 10), &v5, &unk_100548C50, &v6);
        *(result + 32) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1001BEFC8(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 112);
  v2 = *(a1 + 4);
  v27 = *(a1 + 4);
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_1004A5028();
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    sub_1004A4F4C();
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = a2;
  v7 = a1 + 8;
  v8 = a1 + 16;
  do
  {
    if (*(v5 + 32) >= v2)
    {
      v8 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < v2));
  }

  while (v5);
  if (v8 == a1 + 16 || v2 < *(v8 + 32))
  {
LABEL_10:
    sub_1004A4FFC();
  }

  v9 = *(v8 + 40);
  v10 = *(v8 + 48);
  v11 = (v3 + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  v12 = v9(v11, a2);
  v13 = v12;
  v26 = v12;
  if (v6 <= 1 && v12 != v2)
  {
    sub_1004A4F78();
  }

  if (v12 != v2)
  {
    v14 = *(a1 + 32);
    v28 = &v27;
    v15 = sub_1001BF558(v7, &v27, &unk_100548C50, &v28);
    v16 = v15[5];
    v17 = v15[6];
    v18 = (v14 + (v17 >> 1));
    if (v17)
    {
      v16 = *(*v18 + v16);
    }

    v19 = v16(v18, 1);
    if (v19 != v27)
    {
      sub_1004A4FA4();
    }

    *(a1 + 4) = v13;
    v20 = *(a1 + 32);
    v28 = &v26;
    v21 = sub_1001BF558(v7, &v26, &unk_100548C50, &v28);
    v22 = v21[5];
    v23 = v21[6];
    v24 = (v20 + (v23 >> 1));
    if (v23)
    {
      v22 = *(*v24 + v22);
    }

    v2 = v22(v24, 0);
    if (v2 != v26)
    {
      sub_1004A4FD0();
    }
  }

  --*(a1 + 112);
  return v2;
}

void sub_1001BF1B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001BF1F4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001BF234(uint64_t a1, const void **a2, void *a3)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  v5 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v6 = (a1 + 120);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v7 = *(a2 + 23);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      goto LABEL_5;
    }

LABEL_20:
    __assert_rtn("PRStateMachine", "PRStateMachine.h", 55, "!name.empty()");
  }

  if (!a2[1])
  {
    goto LABEL_20;
  }

LABEL_5:
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  sub_100175C6C(&v12, v8 + 1);
  if (v13 >= 0)
  {
    v9 = &v12;
  }

  else
  {
    v9 = v12;
  }

  if (v8)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    memmove(v9, v10, v8);
  }

  *(v9 + v8) = 44;
  if (*(a1 + 143) < 0)
  {
    operator delete(*v6);
  }

  *v6 = v12;
  *(a1 + 136) = v13;
  return a1;
}

void sub_1001BF3A0(_Unwind_Exception *a1)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*v6);
  }

  sub_10002074C(v4, *(v1 + 88));
  sub_1001BF3F8(v3, *(v1 + 64));
  v8 = *(v1 + 40);
  if (v8)
  {
    sub_10000AD84(v8);
  }

  sub_10002074C(v2, *v5);
  _Unwind_Resume(a1);
}

void sub_1001BF3F8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1001BF3F8(a1, *a2);
    sub_1001BF3F8(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_1001BF454(uint64_t a1)
{
  v2 = a1 + 56;
  sub_1001BF4D8(*(a1 + 56), (a1 + 64), a1);
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  sub_10002074C(a1 + 80, *(a1 + 88));
  sub_1001BF3F8(v2, *(a1 + 64));
  v3 = *(a1 + 40);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  sub_10002074C(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t *sub_1001BF4D8(void *a1, void *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_1001BEF10(a3, *(v5 + 8));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *sub_1001BF558(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_1001BF62C(uint64_t a1, int a2, double a3)
{
  v16 = a2;
  v3 = *(a1 + 104);
  if (!v3)
  {
    sub_1004A5054();
  }

  if (a3 >= 0.0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_12;
    }

    v8 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= a2)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < a2));
    }

    while (v6);
    if (v8 != v7 && *(v8 + 32) <= a2 && (v9 = *(v8 + 40)) != 0)
    {
      v10 = v9;
    }

    else
    {
LABEL_12:
      v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
      if (!v11)
      {
        return;
      }

      v10 = v11;
      v17 = &v16;
      v12 = sub_1001BF864(v7 - 8, &v16, &unk_100548C50, &v17);
      objc_storeStrong(v12 + 5, v10);
      dispatch_source_set_timer(v10, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1001BF808;
      v14[3] = &unk_100998F28;
      v14[4] = a1;
      v15 = v16;
      dispatch_source_set_event_handler(v10, v14);
      dispatch_resume(v10);
    }

    v13 = dispatch_time(0xFFFFFFFFFFFFFFFELL, (a3 * 1000000000.0));
    dispatch_source_set_timer(v10, v13, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    v17 = &v16;
    *(sub_1001BF9A0(a1 + 80, &v16, &unk_100548C50, &v17) + 32) = 1;
  }
}

uint64_t *sub_1001BF808(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 32);
  sub_1001BEFC8(v2, *(a1 + 40));
  v4 = v1;
  result = sub_1001BF9A0(v2 + 80, v1, &unk_100548C50, &v4);
  *(result + 32) = 0;
  return result;
}

uint64_t *sub_1001BF864(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1001BF954(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_1001BF9A0(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 28);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_1001C02A8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-devicepresence,device discovery activate failed", v11, 2u);
    }

    if (WeakRetained)
    {
      [WeakRetained[12] invalidate];
    }

    else
    {
      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A5080(v9);
      }
    }
  }

  else
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 BOOLForKey:@"disableDoubleBoostOnDevicePresenceActivation"];
    v7 = qword_1009F9820;
    v8 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-devicepresence,double boost on activation disabled by defaults write", buf, 2u);
      }
    }

    else
    {
      if (v8)
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-devicepresence,Starting double boost on activation of device presence session", v13, 2u);
      }

      if (WeakRetained)
      {
        [WeakRetained[12] triggerEnhancedDiscovery:@"device presence session configuration" useCase:131085 completion:&stru_10099C250];
      }

      else
      {
        v10 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A50C4(v10);
        }
      }
    }
  }
}

void sub_1001C0480(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A5108();
  }
}

void sub_1001C0F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_1001C2BB0(&a32);

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001C10EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 64);
      v5 = [*(a1 + 32) hash];
      *buf = 134218240;
      *&buf[4] = v4;
      *&buf[12] = 2048;
      *&buf[14] = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-devicepresence,measurement timeout (%.1fs) fired for device token hash: 0x%lx", buf, 0x16u);
    }

    dispatch_source_cancel(*(a1 + 40));
    *buf = [*(a1 + 32) hash];
    v6 = sub_100009978(WeakRetained + 35, buf);
    if (v6)
    {
      sub_100021AE0(WeakRetained + 35, v6, buf);
      sub_100022D34(buf);
    }

    [*(WeakRetained + 8) clearStateForToken:*(a1 + 32)];
    v7 = *(a1 + 48);
    v11 = [*(a1 + 32) hash];
    v12 = &v11;
    v8 = sub_1001C346C((v7 + 176), &v11, &unk_100548C50, &v12);
    sub_1002D63A8(v8[3], buf);
    v9 = *(WeakRetained + 6);
    if (v9)
    {
      v10 = sub_100005288();
      sub_1002E3E44(v9, buf, v10);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }
}

uint64_t sub_1001C14A8(int a1)
{
  result = 1;
  if (((a1 - 569) > 0x33 || ((1 << (a1 - 57)) & 0x9500070000007) == 0) && ((a1 - 781) > 0x17 || ((1 << (a1 - 13)) & 0xF80003) == 0))
  {
    v3 = a1 - 666;
    if (v3 > 5 || ((1 << v3) & 0x25) == 0)
    {
      return 0;
    }
  }

  return result;
}

void sub_1001C1AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10000AD84(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1001C1ED8(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {

    *(a1 + 32) = 0;
  }
}

void sub_1001C24A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 72))
  {
    v3 = *(v1 + 128);
    v4 = [*(a1 + 40) devicePresencePreset];
    v5 = [*(a1 + 48) devicePresencePreset];
    v6 = sub_100005288();
    sub_1002827CC(v3, v4, v5, v6);
    sub_1001C1ED8(*(a1 + 32) + 136);
    v10.receiver = *(a1 + 32);
    v10.super_class = NIServerDevicePresenceSession;
    v7 = objc_msgSendSuper2(&v10, "resourcesManager");
    v8 = [v7 remote];
    [v8 object:*(a1 + 56) didUpdateRegion:*(a1 + 40) previousRegion:*(a1 + 48)];
  }

  else
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ses-devicepresence,#regions, didUpdateRegion:previousRegion. Should deliver is False.", buf, 2u);
    }
  }
}

void sub_1001C26BC(uint64_t a1)
{
  v10.receiver = *(a1 + 32);
  v10.super_class = NIServerDevicePresenceSession;
  v2 = objc_msgSendSuper2(&v10, "resourcesManager");
  v3 = *(*(a1 + 32) + 128);
  v4 = [*(a1 + 40) firstObject];
  [v4 boundedRegionRange];
  v6 = v5;
  v7.n128_f64[0] = sub_100005288();
  v8 = v7.n128_f64[0];
  v7.n128_u32[0] = v6;
  sub_10028278C(v3, v7, v8);

  v9 = [v2 remote];
  [v9 didUpdateNearbyObjects:*(a1 + 40)];
}

uint64_t sub_1001C2BB0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1001C2C14(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10099C2D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001C2CA0(uint64_t a1)
{

  operator delete();
}

id sub_1001C2D54(uint64_t a1, void *a2)
{
  *a2 = off_10099C320;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001C2DA4(id *a1)
{

  operator delete(a1);
}

void sub_1001C2DE0()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "#ses-devicepresence,ignoring backoff resume recommendation", v1, 2u);
  }
}

uint64_t sub_1001C2E48(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099C390))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001C2EC0(uint64_t a1)
{

  operator delete();
}

id sub_1001C2F74(uint64_t a1, void *a2)
{
  *a2 = off_10099C3B0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001C2FC4(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1001C300C(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099C420))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001C3084(uint64_t a1)
{

  operator delete();
}

id sub_1001C3138(uint64_t a1, void *a2)
{
  *a2 = off_10099C440;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001C3188(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1001C31D0(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099C4B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001C321C(uint64_t a1)
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

uint64_t sub_1001C329C(uint64_t a1)
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

uint64_t sub_1001C331C(uint64_t a1)
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

uint64_t *sub_1001C339C(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 248) == 1)
    {
      v3 = *(v2 + 200);
      if (v3)
      {
        *(v2 + 208) = v3;
        operator delete(v3);
      }

      if (*(v2 + 199) < 0)
      {
        operator delete(*(v2 + 176));
      }
    }

    if (*(v2 + 144) == 1)
    {
      v4 = *(v2 + 96);
      if (v4)
      {
        *(v2 + 104) = v4;
        operator delete(v4);
      }

      if (*(v2 + 95) < 0)
      {
        operator delete(*(v2 + 72));
      }
    }

    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  return result;
}

void *sub_1001C346C(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1001C36B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100022D34(va);
  _Unwind_Resume(a1);
}

void sub_1001C36C8()
{
  v0 = objc_autoreleasePoolPush();
  v8 = xmmword_100564220;
  v9[0] = unk_100564230;
  sub_1001BD0B0(qword_1009F05F8, &v8, 4);
  xmmword_1009F0610 = xmmword_100563BD0;
  unk_1009F0620 = xmmword_100563BE0;
  qword_1009F0638 = 0;
  unk_1009F0640 = 0;
  qword_1009F0630 = 0x3FD999999999999ALL;
  unk_1009F0648 = xmmword_100563BF0;
  dword_1009F0658 = 5;
  qword_1009F0660 = 0x4000000000000000;
  dword_1009F0668 = 5;
  byte_1009F0670 = 0;
  *&algn_1009F0671[3] = 0x30000000ALL;
  xmmword_1009F0680 = xmmword_100563C00;
  unk_1009F0690 = xmmword_100563C10;
  xmmword_1009F06A0 = xmmword_100563C20;
  qword_1009F06B0 = 0x3FE3333333333333;
  dword_1009F06B8 = 3;
  xmmword_1009F06C0 = xmmword_100563C30;
  unk_1009F06D0 = xmmword_100563C10;
  xmmword_1009F06E0 = xmmword_100563C00;
  qword_1009F06F0 = 0x3FE3333333333333;
  byte_1009F06F8 = 0;
  xmmword_1009F0700 = xmmword_100563C40;
  unk_1009F0710 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v6 = _Q0;
  xmmword_1009F0720 = _Q0;
  qword_1009F0730 = 0xBFD3333333333333;
  xmmword_1009F0738 = xmmword_100563C60;
  qword_1009F0748 = 0x3E99999A40000000;
  xmmword_1009F0750 = xmmword_100563BE0;
  qword_1009F0768 = 0;
  unk_1009F0770 = 0;
  qword_1009F0760 = 0x3FD999999999999ALL;
  xmmword_1009F0778 = xmmword_100563BF0;
  dword_1009F0788 = 5;
  qword_1009F0790 = 0x4000000000000000;
  dword_1009F0798 = 4;
  qword_1009F07A0 = 0x300000008;
  qword_1009F07A8 = 0xC04E800000000000;
  v7 = 0xC04E800000000000;
  sub_1001BD370(qword_1009F07B0, &v7, 1);
  xmmword_1009F07C8 = xmmword_100563C70;
  qword_1009F07D8 = 0x4024000000000000;
  dword_1009F07E0 = 45;
  byte_1009F07E8 = 0;
  byte_1009F0800 = 0;
  qword_1009F0808 = 0;
  byte_1009F0810 = 0;
  dword_1009F0814 = 1;
  byte_1009F0818 = 1;
  xmmword_1009F0820 = xmmword_100563C80;
  xmmword_1009F0830 = xmmword_100563C90;
  xmmword_1009F0840 = v6;
  qword_1009F0850 = 0xC059000000000000;
  xmmword_1009F0858 = xmmword_100563CA0;
  qword_1009F0868 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F0870 = xmmword_100563BE0;
  qword_1009F0880 = 0x3FD999999999999ALL;
  xmmword_1009F0888 = 0u;
  unk_1009F0898 = xmmword_100563BF0;
  dword_1009F08A8 = 5;
  qword_1009F08B0 = 0x4000000000000000;
  dword_1009F08B8 = 10;
  qword_1009F08C0 = 0x4034000000000000;
  dword_1009F08C8 = 3;
  xmmword_1009F08D0 = xmmword_100563CB0;
  __cxa_atexit(sub_1001BB564, qword_1009F05F8, &_mh_execute_header);
  __cxa_atexit(nullsub_73, &off_1009EACA0, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EACA8, &_mh_execute_header);
  v8 = xmmword_100564240;
  v9[0] = unk_100564250;
  v9[1] = xmmword_100564260;
  v9[2] = unk_100564270;
  qword_1009F08E8 = 0;
  unk_1009F08F0 = 0;
  qword_1009F08E0 = 0;
  sub_10004EEB8(&qword_1009F08E0, &v8, &v10, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F08E0, &_mh_execute_header);
  v8 = xmmword_100564280;
  qword_1009F0900 = 0;
  unk_1009F0908 = 0;
  qword_1009F08F8 = 0;
  sub_10004EEB8(&qword_1009F08F8, &v8, v9, 1uLL);
  __cxa_atexit(sub_100045220, &qword_1009F08F8, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1001C3B78(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  v2 = dispatch_queue_create("com.apple.nearbyd.systemHealth", 0);
  v3 = *(a1 + 24);
  *(a1 + 24) = v2;

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  [v4 deregisterTaskWithIdentifier:@"com.apple.nearbyd.systemHealth"];

  *(a1 + 32) = 0;
  return a1;
}

void sub_1001C3BEC(_Unwind_Exception *a1)
{
  v3 = v2;

  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001C3C24(uint64_t a1)
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  v3 = [v2 deregisterTaskWithIdentifier:@"com.apple.nearbyd.systemHealth"];

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#system-health,deregister %d in destructor", v8, 8u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    notify_cancel(v5);
    *(a1 + 32) = 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_1001C3D2C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

void sub_1001C3D38(uint64_t a1, char a2)
{
  if (objc_opt_class())
  {
    v4 = *(a1 + 24);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001C3DF8;
    v5[3] = &unk_10099C618;
    v5[4] = a1;
    v6 = a2;
    dispatch_sync(v4, v5);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A542C();
  }
}

void sub_1001C3DF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *v1;
  v2 = v1[1];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(v1 + 4);
  if (*(a1 + 40))
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  *(v1 + 4) = v5;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "None";
    v8 = *(v1 + 4);
    if (v8 == 1)
    {
      v9 = "Healthy";
    }

    else
    {
      v9 = "None";
    }

    if (v8 == 2)
    {
      v10 = "NotHealthy";
    }

    else
    {
      v10 = v9;
    }

    if (v4 == 1)
    {
      v7 = "Healthy";
    }

    if (v4 == 2)
    {
      v7 = "NotHealthy";
    }

    *buf = 136315394;
    v32 = v10;
    v33 = 2080;
    v34 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#system-health,scheduleSendingOfSystemHealthReport: New report %s. Previously scheduled report %s", buf, 0x16u);
  }

  if (!*(v1 + 8))
  {
    v11 = v1[3];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3321888768;
    handler[2] = sub_1001C42A0;
    handler[3] = &unk_10099C5B8;
    handler[4] = v3;
    v30 = v2;
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    notify_register_dispatch("com.apple.system.console_mode_changed", v1 + 8, v11, handler);
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#system-health,scheduleSendingOfSystemHealthReport: Registered for game mode changed notifications", buf, 2u);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_weak(v30);
    }
  }

  v13 = +[BGSystemTaskScheduler sharedScheduler];
  [v13 deregisterTaskWithIdentifier:@"com.apple.nearbyd.systemHealth"];

  v14 = +[BGSystemTaskScheduler sharedScheduler];
  v15 = v14;
  v16 = v1[3];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3321888768;
  v27[2] = sub_1001C4644;
  v27[3] = &unk_10099C5E8;
  v27[4] = v3;
  v28 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  [v14 registerForTaskWithIdentifier:@"com.apple.nearbyd.systemHealth" usingQueue:v16 launchHandler:v27];

  v17 = +[BGSystemTaskScheduler sharedScheduler];
  v18 = [v17 taskRequestForIdentifier:@"com.apple.nearbyd.systemHealth"];
  v19 = v18 == 0;

  if (v19)
  {
    v21 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.nearbyd.systemHealth"];
    [v21 setTrySchedulingBefore:60.0];
    [v21 setScheduleAfter:90.0];
    [v21 setPriority:2];
    [v21 setPreventsDeviceSleep:0];
    [v21 setShouldWakeDevice:0];
    v22 = +[BGSystemTaskScheduler sharedScheduler];
    v26 = 0;
    v23 = [v22 submitTaskRequest:v21 error:&v26];
    v24 = v26;

    v25 = qword_1009F9820;
    if (v23)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#system-health,submitted task successfully", buf, 2u);
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A5460(v24, v25);
    }
  }

  else
  {
    v20 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#system-health,task already submitted, return", buf, 2u);
    }
  }

  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1001C420C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  _Unwind_Resume(a1);
}

void sub_1001C42A0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        v5 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v6 = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#system-health,scheduleSendingOfSystemHealthReport: Game mode changed notification fired. Try to send the scheduled health report.", v6, 2u);
        }

        sub_1001C4388(v4);
LABEL_11:
        sub_10000AD84(v3);
        return;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A54D8();
  }

  if (v3)
  {
    goto LABEL_11;
  }
}

void sub_1001C4388(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v2 = qword_1009F9820;
  if (*(a1 + 16))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 16);
      v4 = "None";
      if (v3 == 1)
      {
        v4 = "Healthy";
      }

      if (v3 == 2)
      {
        v5 = "NotHealthy";
      }

      else
      {
        v5 = v4;
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#system-health,_tryToSendScheduledHealthReport: Scheduled report %s", buf, 0xCu);
    }

    *buf = 0;
    v6 = *(a1 + 32);
    if (!v6 || notify_get_state(v6, buf))
    {
      v7 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:
        v9 = *(a1 + 32);
        if (v9)
        {
          notify_cancel(v9);
          *(a1 + 32) = 0;
        }

        v10 = *(a1 + 40);
        if (v10 || (v11 = objc_alloc_init(SystemHealthManager), v12 = *(a1 + 40), *(a1 + 40) = v11, v12, (v10 = *(a1 + 40)) != 0))
        {
          *(a1 + 16) = 0;
          [v10 postComponentStatusEventFor:8 status:? withReply:?];
        }

        else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A550C();
        }

        return;
      }

      *v16 = 0;
      v8 = "#system-health,_tryToSendScheduledHealthReport: Game mode unknown. Continue with health report";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v16, 2u);
      goto LABEL_14;
    }

    v14 = *buf;
    v7 = qword_1009F9820;
    v15 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (!v14)
    {
      if (!v15)
      {
        goto LABEL_14;
      }

      *v16 = 0;
      v8 = "#system-health,_tryToSendScheduledHealthReport: Game mode disabled. Continue with health report";
      goto LABEL_13;
    }

    if (v15)
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#system-health,_tryToSendScheduledHealthReport: Game mode enabled. Wait until game mode changes to send health report", v16, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A5540();
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      notify_cancel(v13);
      *(a1 + 32) = 0;
    }
  }
}

uint64_t sub_1001C4618(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1001C4634(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1001C4644(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#system-health,scheduleSendingOfSystemHealthReport: Background activity fired. Try to send the scheduled health report.", v8, 2u);
        }

        sub_1001C4388(v6);
        [v3 setTaskCompleted];
LABEL_11:
        sub_10000AD84(v5);
        goto LABEL_12;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A5574();
  }

  [v3 setTaskCompleted];
  if (v5)
  {
    goto LABEL_11;
  }

LABEL_12:
}

void sub_1001C4734(_Unwind_Exception *a1)
{
  sub_10000AD84(v2);

  _Unwind_Resume(a1);
}

void sub_1001C4758(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = qword_1009F9820;
  if (a2)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 32) == 1)
      {
        v7 = "pass";
      }

      else
      {
        v7 = "fail";
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#system-health,_tryToSendScheduledHealthReport: SystemHealthManager was notified of HW status: %s", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A55A8(v5, v6);
  }
}

void sub_1001C4854(void *a1, void *a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1001C48E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001C48F8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001C48F8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1001C3C24(v2);
    operator delete();
  }

  return a1;
}

void sub_1001C4944(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001C497C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1001C3C24(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1001C49C0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1001C4F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = NIServerSessionContainer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001C71C4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSpecializedSessionInvalidation:v3];
}

void sub_1001C7238(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSpecializedSessionBackgroundSupportUpdate:a2];
}

void sub_1001C9F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1001C9FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1001CA5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  v26 = v24;

  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001CA678(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001CA690(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 tokenVariant] == 1)
  {
    if (*(a1 + 56))
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:v3];
    }

    else
    {
      v4 = *(a1 + 40);
      v8 = NSLocalizedFailureReasonErrorKey;
      v9 = @"Not allowed to configure findable local device.";
      v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      v6 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v5];
      (*(v4 + 16))(v4, v6);

      v7 = qword_1009F9820;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [*(a1 + 32) signingIdentity];
        objc_claimAutoreleasedReturnValue();
        [*(a1 + 32) pid];
        sub_1004A5C70();
      }
    }
  }
}

void sub_1001CAB70(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 tokenVariant] == 1)
  {
    if (*(a1 + 56))
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:v3];
    }

    else
    {
      v4 = *(a1 + 40);
      v8 = NSLocalizedFailureReasonErrorKey;
      v9 = @"Not allowed to configure findable local device.";
      v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      v6 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v5];
      (*(v4 + 16))(v4, v6);

      v7 = qword_1009F9820;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [*(a1 + 32) signingIdentity];
        objc_claimAutoreleasedReturnValue();
        [*(a1 + 32) pid];
        sub_1004A5C70();
      }
    }
  }
}

void sub_1001CB198(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001CB3B4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001CB6B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v29 = WeakRetained;
    v3 = objc_opt_new();
    v4 = objc_loadWeakRetained(v29 + 38);
    v5 = [v4 allSessionsPrintableState];
    [v3 addEntriesFromDictionary:v5];

    v6 = +[NIServerSystemConfigurator sharedInstance];
    v7 = [v6 printableState];
    [v3 setObject:v7 forKey:@"System Configurator"];

    v8 = +[NIServerHomeDeviceService sharedInstance];
    v9 = [v8 printableState];
    [v3 setObject:v9 forKey:@"Home Device Service"];

    v10 = +[NIServerAccessoryGATTServiceManager sharedInstance];
    v11 = [v10 printableState];
    [v3 setObject:v11 forKey:@"Accessory GATT Service"];

    v12 = +[NIServerNearbyAccessoryRangingService sharedInstance];
    v13 = [v12 printableState];
    [v3 setObject:v13 forKey:@"Accessory Ranging Service"];

    v14 = +[NIServerFindingSession servicePoolPrintableState];
    v15 = +[NIServerFindingSession allServicesPrintableState];
    v16 = [v14 arrayByAddingObjectsFromArray:v15];
    [v3 setObject:v16 forKey:@"Finding Service"];

    v17 = +[NIServerFindableDeviceProxySessionManager sharedInstance];
    v18 = [v17 printableState];
    [v3 setObject:v18 forKey:@"Findable Device"];

    v19 = +[NIServerBluetoothSampleInternalObserver sharedObserver];
    v20 = [v19 printableState];
    [v3 setObject:v20 forKey:@"Bluetooth Sample Distributor"];

    v21 = +[NIServerGRResponderRangingService sharedInstance];
    v22 = [v21 printableState];
    [v3 setObject:v22 forKey:@"GR Responder Home Service"];

    v23 = +[NIServerDLTDOAService sharedInstance];
    v24 = [v23 printableState];
    [v3 setObject:v24 forKey:@"DL-TDOA Service"];

    v25 = sub_10035D02C();
    v26 = sub_10035C120(v25);
    [v3 addEntriesFromDictionary:v26];

    v27 = +[NIServerUsageAnalyticsAggregator sharedInstance];
    v28 = [v27 printableState];
    [v3 setObject:v28 forKey:@"Aggregated Usage"];

    (*(*(a1 + 32) + 16))();
    WeakRetained = v29;
  }
}

void sub_1001CC87C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 40));

  _Unwind_Resume(a1);
}

void sub_1001CC894(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained remote];
    [v3 uwbSessionDidInvalidateWithError:*(a1 + 32)];

    WeakRetained = v4;
  }
}

void sub_1001CCAA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _updateClientAppVisibilityInterruption];
  }
}

void sub_1001CE430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

const char *sub_1001CE4C4(char a1)
{
  if ((a1 - 1) > 7u)
  {
    return "Initialized";
  }

  else
  {
    return off_10099C890[(a1 - 1)];
  }
}

void sub_1001CE4F4(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [NSString stringWithFormat:@"    %@", a2];
  [v2 addObject:?];
}

void sub_1001CE7EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_22;
  }

  sub_100004A08(v11, off_10099C8D0[*(a1 + 40)]);
  sub_100004A08(__p, off_10099C8F8[*(a1 + 44)]);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v11;
    if (v12 < 0)
    {
      v4 = v11[0];
    }

    v5 = __p;
    if (v10 < 0)
    {
      v5 = __p[0];
    }

    *buf = 136315394;
    v14 = v4;
    v15 = 2080;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-container,UWB system changed state: '%s' with cause: '%s'. Sending to specialized session", buf, 0x16u);
  }

  v6 = WeakRetained[22];
  if (v6)
  {
    if ([v6 requiresNarrowbandToRun] == 2)
    {
      v7 = [WeakRetained _fatalErrorForUwbServiceState:*(a1 + 40) cause:*(a1 + 44)];
      if (v7)
      {
        goto LABEL_14;
      }

      [WeakRetained _updateInterruptionForUWBServiceState:*(a1 + 40) cause:*(a1 + 44) requiresNarrowBand:1];
    }

    else if ([WeakRetained[22] requiresUWBToRun] == 2)
    {
      v7 = [WeakRetained _fatalErrorForUwbServiceState:*(a1 + 40) cause:*(a1 + 44)];
      if (v7)
      {
LABEL_14:
        v8 = [WeakRetained remote];
        [v8 uwbSessionDidFailWithError:v7];

        goto LABEL_18;
      }

      [WeakRetained _updateInterruptionForUWBServiceState:*(a1 + 40) cause:*(a1 + 44) requiresNarrowBand:0];
    }

    [WeakRetained[22] rangingServiceDidUpdateState:*(a1 + 40) cause:*(a1 + 44)];
  }

LABEL_18:
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

LABEL_22:
}

void sub_1001CE9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v23 = v21;

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1001CF5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001CFD6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001CFFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001D0174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001D085C(void *a1, void **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10098B6C8;
  sub_10031455C((a1 + 3), *a2);
  return a1;
}

void *sub_1001D08BC(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t sub_1001D0B04(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = result;
  *(a2 + 12) = 1024;
  *(a2 + 14) = a3;
  return result;
}

void sub_1001D0B1C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1001D0B58(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_fault_impl(a1, a4, OS_LOG_TYPE_FAULT, a2, a3, 0x12u);
}

void sub_1001D0B74()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(qword_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, qword_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_1001D0C24()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_1001D0CD4()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_1001D0D84()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(qword_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, qword_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_1001D0E34()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(qword_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, qword_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_1001D0EE4()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(qword_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, qword_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_1001D0F94()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_1001D1044()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(qword_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, qword_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_1001D10F4()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_100564810;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_1001D11E8()
{
  v0 = objc_autoreleasePoolPush();
  sub_10041C9CC(0);
  v1 = std::string::insert(&v37, 0, "reverseLUT_A");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  v3 = std::string::append(&v38, ".bin");
  v4 = *&v3->__r_.__value_.__l.__data_;
  qword_1009F0920 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009F0910 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F0910, &_mh_execute_header);
  sub_10041C9CC(1);
  v5 = std::string::insert(&v37, 0, "reverseLUT_A");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v38, ".bin");
  v8 = *&v7->__r_.__value_.__l.__data_;
  qword_1009F0938 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009F0928 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F0928, &_mh_execute_header);
  sub_10041C9CC(2);
  v9 = std::string::insert(&v37, 0, "reverseLUT_A");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v38, ".bin");
  v12 = *&v11->__r_.__value_.__l.__data_;
  qword_1009F0950 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009F0940 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F0940, &_mh_execute_header);
  sub_10041C9CC(3);
  v13 = std::string::insert(&v37, 0, "reverseLUT_A");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v38, ".bin");
  v16 = *&v15->__r_.__value_.__l.__data_;
  qword_1009F0968 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009F0958 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F0958, &_mh_execute_header);
  sub_10041C9CC(4);
  v17 = std::string::insert(&v37, 0, "reverseLUT_A");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v38, ".bin");
  v20 = *&v19->__r_.__value_.__l.__data_;
  qword_1009F0980 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009F0970 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F0970, &_mh_execute_header);
  sub_10041C9CC(5);
  v21 = std::string::insert(&v37, 0, "reverseLUT_A");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v38, ".bin");
  v24 = *&v23->__r_.__value_.__l.__data_;
  qword_1009F0998 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009F0988 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F0988, &_mh_execute_header);
  sub_10041C9CC(6);
  v25 = std::string::insert(&v37, 0, "reverseLUT_A");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v38, ".bin");
  v28 = *&v27->__r_.__value_.__l.__data_;
  qword_1009F09B0 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009F09A0 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F09A0, &_mh_execute_header);
  sub_10041C9CC(7);
  v29 = std::string::insert(&v37, 0, "reverseLUT_A");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v38, ".bin");
  v32 = *&v31->__r_.__value_.__l.__data_;
  qword_1009F09C8 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009F09B8 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F09B8, &_mh_execute_header);
  sub_10041C9CC(8);
  v33 = std::string::insert(&v37, 0, "reverseLUT_A");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v38, ".bin");
  v36 = *&v35->__r_.__value_.__l.__data_;
  qword_1009F09E0 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009F09D0 = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F09D0, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_1001D1828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001D2848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = NIServerNearbyAccessorySession;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001D2964(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 88) != 6)
  {
    v9.receiver = *(a1 + 32);
    v9.super_class = NIServerNearbyAccessorySession;
    v4 = objc_msgSendSuper2(&v9, "resourcesManager");
    v5 = [NINearbyObject alloc];
    v6 = [v3[12] accessoryDiscoveryToken];
    v7 = [(NINearbyObject *)v5 initWithToken:v6];

    v8 = [v4 remote];
    [v8 didGenerateShareableConfigurationData:*(a1 + 40) forObject:v7];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A6474();
  }
}

void sub_1001D2D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  if (LOBYTE(STACK[0x3A0]) == 1)
  {
    v11 = STACK[0x378];
    if (STACK[0x378])
    {
      STACK[0x380] = v11;
      operator delete(v11);
    }
  }

  if (LOBYTE(STACK[0x328]) == 1)
  {
    sub_10002074C(&STACK[0x2A8], STACK[0x2B0]);
  }

  sub_100020B80(v9 + 96);
  objc_destroyWeak((v9 + 40));
  objc_destroyWeak(&a9);
  sub_10001EEE4(&STACK[0x6D0]);
  _Unwind_Resume(a1);
}

void sub_1001D2E48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 88) != 6)
  {
    if (([WeakRetained[12] dataExchangeDisabledAndUsingParameterOverrides] & 1) != 0 || (v4 = *(a1 + 88), objc_msgSend(v3[12], "accessoryDiscoveryToken"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "shortDeviceAddress"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "unsignedLongLongValue"), v6, v5, v4 == v7))
    {
      v8 = a1 + 80;
      if ((*(a1 + 80) - 1) >= 3)
      {
        v13 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
        {
          sub_1004A64A8((a1 + 80), v13);
        }
      }

      else if (*(a1 + 72))
      {
        v9 = *(a1 + 64);
        v10 = [v3[12] accessoryDiscoveryToken];
        if (v10)
        {
          v14.receiver = *(a1 + 32);
          v14.super_class = NIServerNearbyAccessorySession;
          v11 = objc_msgSendSuper2(&v14, "resourcesManager");
          v12 = [v11 lifecycleSupervisor];
          if ([v12 timeoutOnPeerInactivity])
          {
            [v12 measurementReceivedForToken:v10 contTimestamp:v9];
          }

          [v3[8] acceptRoseSolution:v8 - 32];
        }
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A6524();
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A6558();
  }
}

uint64_t sub_1001D306C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 48) = v4;
  sub_100020458(a1 + 96, a2 + 96);
  sub_1000206E0((a1 + 656), a2 + 656);
  sub_1000207A0(a1 + 808, (a2 + 808));
  memcpy((a1 + 928), (a2 + 928), 0x239uLL);
  return sub_10002096C(a1 + 1504, (a2 + 1504));
}

void sub_1001D30E0(_Unwind_Exception *a1)
{
  if (*(v1 + 920) == 1)
  {
    v3 = *(v1 + 880);
    if (v3)
    {
      *(v1 + 888) = v3;
      operator delete(v3);
    }
  }

  if (*(v1 + 800) == 1)
  {
    sub_10002074C(v1 + 672, *(v1 + 680));
  }

  sub_100020B80(v1 + 96);
  _Unwind_Resume(a1);
}

void sub_1001D3138(uint64_t a1)
{
  if (*(a1 + 1728) == 1)
  {
    v2 = *(a1 + 1704);
    if (v2)
    {
      *(a1 + 1712) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 920) == 1)
  {
    v3 = *(a1 + 880);
    if (v3)
    {
      *(a1 + 888) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 800) == 1)
  {
    sub_10002074C(a1 + 672, *(a1 + 680));
  }

  if (*(a1 + 648) == 1)
  {
    v4 = *(a1 + 232);
    if (v4)
    {
      *(a1 + 240) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 168);
    if (v5)
    {
      *(a1 + 176) = v5;

      operator delete(v5);
    }
  }
}

void sub_1001D32E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 88) != 6)
  {
    v4 = *(a1 + 144);
    if (v4 == 217)
    {
      goto LABEL_16;
    }

    if (v4 != 194)
    {
      goto LABEL_13;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A658C();
    }

    if (*(a1 + 144) == 217)
    {
LABEL_16:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A65C0();
      }
    }

    [v3 invalidate];
    v7.receiver = *(a1 + 32);
    v7.super_class = NIServerNearbyAccessorySession;
    v5 = objc_msgSendSuper2(&v7, "invalidationHandler");
    v6 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    (v5)[2](v5, v6);

    goto LABEL_13;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A65F4();
  }

LABEL_13:
}

void sub_1001D344C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001D3548(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained || *(WeakRetained + 88) == 6)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A6628();
    }

    goto LABEL_17;
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v18.receiver = *(a1 + 32);
  v18.super_class = NIServerNearbyAccessorySession;
  objc_msgSendSuper2(&v18, "serviceRequestDidUpdateStatus:", v4, v5);
  v6 = *(a1 + 52);
  if (v6 != 2)
  {
    if (v6 != 3)
    {
      goto LABEL_17;
    }

    v7 = *(a1 + 56);
    if (v7 != 8 && v7 != 5)
    {
      goto LABEL_17;
    }

    v8 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v9 = "#ses-ecosystem,Stop tracking peer due to FW-generated timeout";
    goto LABEL_13;
  }

  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v9 = "#ses-ecosystem,Stop tracking peer due to inability to start ranging (even with timeouts)";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
  }

LABEL_14:
  v16.receiver = *(a1 + 32);
  v16.super_class = NIServerNearbyAccessorySession;
  v10 = objc_msgSendSuper2(&v16, "resourcesManager");
  v11 = [v10 lifecycleSupervisor];
  if ([v11 timeoutOnPeerInactivity])
  {
    v12 = [v3[12] accessoryDiscoveryToken];
    v19 = v12;
    v13 = [NSArray arrayWithObjects:&v19 count:1];
    [v11 stoppedDiscoveringPeersWithTokens:v13];
  }

  v14 = *(a1 + 32);
  v15 = [v3[12] accessoryDiscoveryToken];
  [v14 peerInactivityPeriodExceeded:v15];

LABEL_17:
}

void sub_1001D3894(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 88) != 6)
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100342FC8(*(a1 + 48), v8);
      sub_1004A665C(v8, buf, v4);
    }

    [v3 invalidate];
    v7.receiver = *(a1 + 32);
    v7.super_class = NIServerNearbyAccessorySession;
    v5 = objc_msgSendSuper2(&v7, "invalidationHandler");
    v6 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
    (v5)[2](v5, v6);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A66D0();
  }
}

void sub_1001D39F4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1001D4310(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 88) == 2)
  {
    v9.receiver = *(a1 + 32);
    v9.super_class = NIServerNearbyAccessorySession;
    v4 = objc_msgSendSuper2(&v9, "resourcesManager");
    v5 = [v4 appStateMonitor];
    v6 = [v5 currentAppState] == 4;

    if (v6 && [v3[12] backgroundMode] == 2)
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v4 clientPid];
        *buf = 67109120;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-ecosystem,Client with pid %d isn't visible. Skip sending nearby object", buf, 8u);
      }
    }

    else
    {
      v7 = [v4 remote];
      [v7 didUpdateNearbyObjects:*(a1 + 40)];
    }
  }
}

void sub_1001D4624(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 88) == 2)
  {
    v6.receiver = *(a1 + 32);
    v6.super_class = NIServerNearbyAccessorySession;
    v4 = objc_msgSendSuper2(&v6, "resourcesManager");
    v5 = [v4 remote];
    [v5 didUpdateAlgorithmState:*(a1 + 40) forObject:*(a1 + 48)];
  }
}

void sub_1001D49C0()
{
  v0 = objc_autoreleasePoolPush();
  v8 = xmmword_100564840;
  v9[0] = unk_100564850;
  sub_1001BD0B0(qword_1009F09E8, &v8, 4);
  xmmword_1009F0A00 = xmmword_100563BD0;
  *algn_1009F0A10 = xmmword_100563BE0;
  qword_1009F0A28 = 0;
  unk_1009F0A30 = 0;
  qword_1009F0A20 = 0x3FD999999999999ALL;
  unk_1009F0A38 = xmmword_100563BF0;
  dword_1009F0A48 = 5;
  qword_1009F0A50 = 0x4000000000000000;
  dword_1009F0A58 = 5;
  byte_1009F0A60 = 0;
  *&algn_1009F0A61[3] = 0x30000000ALL;
  xmmword_1009F0A70 = xmmword_100563C00;
  unk_1009F0A80 = xmmword_100563C10;
  xmmword_1009F0A90 = xmmword_100563C20;
  qword_1009F0AA0 = 0x3FE3333333333333;
  dword_1009F0AA8 = 3;
  xmmword_1009F0AB0 = xmmword_100563C30;
  unk_1009F0AC0 = xmmword_100563C10;
  xmmword_1009F0AD0 = xmmword_100563C00;
  qword_1009F0AE0 = 0x3FE3333333333333;
  byte_1009F0AE8 = 0;
  xmmword_1009F0AF0 = xmmword_100563C40;
  unk_1009F0B00 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v6 = _Q0;
  xmmword_1009F0B10 = _Q0;
  qword_1009F0B20 = 0xBFD3333333333333;
  xmmword_1009F0B28 = xmmword_100563C60;
  qword_1009F0B38 = 0x3E99999A40000000;
  xmmword_1009F0B40 = xmmword_100563BE0;
  qword_1009F0B58 = 0;
  unk_1009F0B60 = 0;
  qword_1009F0B50 = 0x3FD999999999999ALL;
  xmmword_1009F0B68 = xmmword_100563BF0;
  dword_1009F0B78 = 5;
  qword_1009F0B80 = 0x4000000000000000;
  dword_1009F0B88 = 4;
  qword_1009F0B90 = 0x300000008;
  qword_1009F0B98 = 0xC04E800000000000;
  v7 = 0xC04E800000000000;
  sub_1001BD370(qword_1009F0BA0, &v7, 1);
  xmmword_1009F0BB8 = xmmword_100563C70;
  qword_1009F0BC8 = 0x4024000000000000;
  dword_1009F0BD0 = 45;
  byte_1009F0BD8 = 0;
  byte_1009F0BF0 = 0;
  qword_1009F0BF8 = 0;
  byte_1009F0C00 = 0;
  dword_1009F0C04 = 1;
  byte_1009F0C08 = 1;
  xmmword_1009F0C10 = xmmword_100563C80;
  xmmword_1009F0C20 = xmmword_100563C90;
  xmmword_1009F0C30 = v6;
  qword_1009F0C40 = 0xC059000000000000;
  xmmword_1009F0C48 = xmmword_100563CA0;
  qword_1009F0C58 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F0C60 = xmmword_100563BE0;
  qword_1009F0C70 = 0x3FD999999999999ALL;
  xmmword_1009F0C78 = 0u;
  unk_1009F0C88 = xmmword_100563BF0;
  dword_1009F0C98 = 5;
  qword_1009F0CA0 = 0x4000000000000000;
  dword_1009F0CA8 = 10;
  qword_1009F0CB0 = 0x4034000000000000;
  dword_1009F0CB8 = 3;
  xmmword_1009F0CC0 = xmmword_100563CB0;
  __cxa_atexit(sub_1001BB564, qword_1009F09E8, &_mh_execute_header);
  __cxa_atexit(nullsub_73, &off_1009EB070, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EB078, &_mh_execute_header);
  v8 = xmmword_100564860;
  v9[0] = unk_100564870;
  v9[1] = xmmword_100564880;
  v9[2] = unk_100564890;
  qword_1009F0CD8 = 0;
  unk_1009F0CE0 = 0;
  qword_1009F0CD0 = 0;
  sub_10004EEB8(&qword_1009F0CD0, &v8, &v10, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F0CD0, &_mh_execute_header);
  v8 = xmmword_1005648A0;
  qword_1009F0CF0 = 0;
  unk_1009F0CF8 = 0;
  qword_1009F0CE8 = 0;
  sub_10004EEB8(&qword_1009F0CE8, &v8, v9, 1uLL);
  __cxa_atexit(sub_100045220, &qword_1009F0CE8, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

char *sub_1001D5268(uint64_t a1)
{
  v1 = [*(a1 + 32) _internalPrintableState];
  v2 = sub_10003FA2C(@"Accessory GATT Manager", v1);

  return v2;
}

void sub_1001D5360(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _initInternal];
  v2 = qword_1009F0D00;
  qword_1009F0D00 = v1;
}

void sub_1001D54AC(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];

  if (v2)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[5];
      v5 = a1[6];
      *buf = 138412546;
      v28 = v4;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#bt-accessory,AddServiceListener: existing listener [%@] for peer [%@]", buf, 0x16u);
    }
  }

  else
  {
    v6 = objc_opt_new();
    [v6 setListener:a1[7]];
    [v6 setPeerIdentifier:a1[6]];
    [v6 setConfiguration:a1[8]];
    [*(a1[4] + 24) setObject:v6 forKey:a1[5]];
    v7 = [*(a1[4] + 32) objectForKeyedSubscript:a1[6]];

    v8 = qword_1009F9820;
    if (v7)
    {
      v9 = qword_1009F9820;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[6];
        v24 = a1[5];
        v26 = [*(a1[4] + 32) objectForKeyedSubscript:v10];
        v22 = sub_1001D58EC([v26 connectionState]);
        v25 = [*(a1[4] + 32) objectForKeyedSubscript:a1[6]];
        v23 = [v25 resultConfigCharacteristics];
        v11 = [v23 count];
        v12 = [*(a1[4] + 32) objectForKeyedSubscript:a1[6]];
        v13 = [v12 cachedConfigCharacteristics];
        v14 = [v13 count];
        v15 = [*(a1[4] + 32) objectForKeyedSubscript:a1[6]];
        v16 = [v15 listeners];
        *buf = 138413570;
        v28 = v24;
        v29 = 2112;
        v30 = v10;
        v31 = 2080;
        v32 = v22;
        v33 = 1024;
        v34 = v11;
        v35 = 1024;
        v36 = v14;
        v37 = 1024;
        v38 = [v16 count];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#bt-accessory,AddServiceListener: new listener [%@] for existing peer [%@]. State: %s. Result: %d blobs. Cached: %d blobs. Previous listener count: %d", buf, 0x32u);
      }

      v17 = [*(a1[4] + 32) objectForKeyedSubscript:a1[6]];
      v18 = [v17 listeners];
      [v18 addObject:a1[5]];
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v19 = a1[5];
        v20 = a1[6];
        *buf = 138412546;
        v28 = v19;
        v29 = 2112;
        v30 = v20;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#bt-accessory,AddServiceListener: new listener [%@] for new peer [%@]", buf, 0x16u);
      }

      v17 = objc_opt_new();
      v21 = [v17 listeners];
      [v21 addObject:a1[5]];

      [*(a1[4] + 32) setObject:v17 forKey:a1[6]];
    }
  }
}

const char *sub_1001D58EC(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "Idle";
  }

  else
  {
    return off_10099CD60[(a1 - 1)];
  }
}

void sub_1001D59B0(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
    v5 = [v4 listener];

    v54 = v5;
    if (v5)
    {
      v6 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
      v7 = [v6 peerIdentifier];

      v8 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v7];

      if (v8)
      {
        v9 = qword_1009F9820;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v52 = *(a1 + 40);
          v53 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v7];
          v10 = sub_1001D58EC([v53 connectionState]);
          v11 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v7];
          v12 = [v11 resultConfigCharacteristics];
          v13 = [v12 count];
          v14 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v7];
          v15 = [v14 cachedConfigCharacteristics];
          *buf = 138413314;
          v61 = v52;
          v62 = 2112;
          v63 = v7;
          v64 = 2080;
          v65 = v10;
          v66 = 1024;
          v67 = v13;
          v68 = 1024;
          v69 = [v15 count];
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#bt-accessory,BackgroundAuthorization: probing authorization for listener [%@] for peer [%@]. State: %s. Result: %d blobs. Cached: %d blobs", buf, 0x2Cu);
        }

        v16 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v7];
        v17 = [v16 connectionState] == 0;

        if (v17)
        {
          [*(a1 + 32) _connectToPeer:v7];
        }

        v18 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v7];
        v19 = [v18 connectionState] == 6;

        v20 = *(a1 + 32);
        if (v19)
        {
          v21 = [v20 _isListener:*v2 backgroundAuthorizedForPeer:v7 useCache:0];
          v22 = qword_1009F9820;
          v23 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
          if (v21)
          {
            if (v23)
            {
              v24 = *v2;
              *buf = 138412546;
              v61 = v24;
              v62 = 2112;
              v63 = v7;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#bt-accessory,BackgroundAuthorization: listener [%@] for peer [%@] authorized", buf, 0x16u);
            }

            v25 = [v54 getQueueForInputingData];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1001D60D4;
            block[3] = &unk_10098BD28;
            v58 = v54;
            dispatch_async(v25, block);
          }

          else
          {
            if (v23)
            {
              v45 = *v2;
              *buf = 138412546;
              v61 = v45;
              v62 = 2112;
              v63 = v7;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#bt-accessory,BackgroundAuthorization: listener [%@] for peer [%@] NOT authorized. Re-discover services", buf, 0x16u);
            }

            v46 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v7];
            v47 = [v46 peripheral];
            v48 = [CBUUID UUIDWithString:@"48fe3e40-0817-4bb2-8633-3073689c2dba"];
            v59 = v48;
            v49 = [NSArray arrayWithObjects:&v59 count:1];
            [v47 discoverServices:v49];

            v50 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v7];
            [v50 changeConnectionState:3];

            v51 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v7];
            [v51 cacheCharacteristics];
          }
        }

        else
        {
          v40 = [v20[4] objectForKeyedSubscript:v7];
          v41 = [v40 connectionState] == 0;

          if (!v41 && [*(a1 + 32) _isListener:*(a1 + 40) backgroundAuthorizedForPeer:v7 useCache:1])
          {
            v42 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              v43 = *v2;
              *buf = 138412546;
              v61 = v43;
              v62 = 2112;
              v63 = v7;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#bt-accessory,BackgroundAuthorization: listener [%@] for peer [%@] TEMPORARILY authorized pending confirmation", buf, 0x16u);
            }

            v44 = [v54 getQueueForInputingData];
            v55[0] = _NSConcreteStackBlock;
            v55[1] = 3221225472;
            v55[2] = sub_1001D60DC;
            v55[3] = &unk_10098BD28;
            v56 = v54;
            dispatch_async(v44, v55);
          }
        }
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A67D4();
      }
    }

    else
    {
      v33 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A6858(v2, v33, v34, v35, v36, v37, v38, v39);
      }
    }
  }

  else
  {
    v26 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A68C8(v2, v26, v27, v28, v29, v30, v31, v32);
    }
  }
}

void sub_1001D617C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];

  if (v2)
  {
    v3 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
    v4 = [v3 peerIdentifier];

    [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
    v5 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v4];
    v6 = [v5 listeners];
    [v6 removeObject:*(a1 + 40)];

    v7 = qword_1009F9820;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v4];
      v10 = [v9 listeners];
      v23 = 138412802;
      v24 = v8;
      v25 = 2112;
      v26 = v4;
      v27 = 1024;
      v28 = [v10 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#bt-accessory,RemoveServiceListener: listener [%@] for peer [%@]. Listener count after removal: %d", &v23, 0x1Cu);
    }

    v11 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v4];
    v12 = [v11 listeners];
    v13 = [v12 count] == 0;

    if (v13)
    {
      v14 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v4];
      v15 = [v14 peripheral];
      v16 = v15 == 0;

      if (!v16)
      {
        v17 = *(a1 + 32);
        v18 = *(v17 + 16);
        v19 = [*(v17 + 32) objectForKeyedSubscript:v4];
        v20 = [v19 peripheral];
        [v18 cancelPeripheralConnection:v20];
      }

      v21 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v4];
      [v21 changeConnectionState:0];

      v22 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v4];
      [v22 cacheCharacteristics];
    }

    [*(a1 + 32) _cleanupExcessiveDetachedPeers];
  }
}

uint64_t sub_1001D6590(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001D65A8(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalPrintableState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001D6808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_1001D683C(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [NSString stringWithFormat:@"    [%@]", v16];
  [v6 addObject:v7];

  v8 = *(*(*(a1 + 32) + 8) + 40);
  v9 = [v5 peerIdentifier];
  v10 = [NSString stringWithFormat:@"        Peer: %@", v9];
  [v8 addObject:v10];

  v11 = *(*(*(a1 + 32) + 8) + 40);
  v12 = [v5 configuration];
  v13 = [v12 accessoryConfigData];
  v14 = sub_10003F5F0(v13, 0);
  v15 = [NSString stringWithFormat:@"        Config blob: %@", v14];
  [v11 addObject:v15];
}

void sub_1001D6A08(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(*(a1 + 32) + 8) + 40);
  v29 = v5;
  v8 = [NSString stringWithFormat:@"    [%@]", v5];
  [v7 addObject:v8];

  v9 = *(*(*(a1 + 32) + 8) + 40);
  v10 = [v6 listeners];
  v11 = [v10 count];
  v12 = sub_1001D58EC([v6 connectionState]);
  v13 = [v6 numCharacteristicsLeftToRead];
  if ([v6 readingMultiConfigCharacteristics])
  {
    v14 = "multi-config";
  }

  else
  {
    v14 = "single-config";
  }

  v15 = *(a1 + 40);
  [v6 initTime];
  v17 = v16;
  v18 = *(a1 + 40);
  [v6 timeOfLatestConnectionState];
  v20 = [NSString stringWithFormat:@"        Listeners: %d. Connection state: %s (%d %s characteristics left to read). Age: total %.2f s, in-state %.2f s", v11, v12, v13, v14, v15 - v17, v18 - v19];
  [v9 addObject:v20];

  v21 = *(*(*(a1 + 32) + 8) + 40);
  v22 = [v6 resultConfigCharacteristics];
  v23 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"        Result: %d blobs", [v22 count]);
  [v21 addObject:v23];

  v24 = [v6 resultConfigCharacteristics];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001D6D34;
  v31[3] = &unk_10099CC10;
  v31[4] = *(a1 + 32);
  [v24 enumerateObjectsUsingBlock:v31];

  v25 = *(*(*(a1 + 32) + 8) + 40);
  v26 = [v6 cachedConfigCharacteristics];
  v27 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"        Cached: %d blobs", [v26 count]);
  [v25 addObject:v27];

  v28 = [v6 cachedConfigCharacteristics];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1001D6DDC;
  v30[3] = &unk_10099CC10;
  v30[4] = *(a1 + 32);
  [v28 enumerateObjectsUsingBlock:v30];
}

void sub_1001D6D34(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = sub_10003F5F0(a2, 0);
  v3 = [NSString stringWithFormat:@"            Blob: %@", v4];
  [v2 addObject:v3];
}

void sub_1001D6DDC(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = sub_10003F5F0(a2, 0);
  v3 = [NSString stringWithFormat:@"            Blob: %@", v4];
  [v2 addObject:v3];
}

id sub_1001D74AC(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

id sub_1001D7500(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_1001D76B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v3];
  v5 = [v4 listener];

  if (v5)
  {
    v6 = [v5 getQueueForInputingData];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001D77D4;
    v7[3] = &unk_10098A2E8;
    v8 = v5;
    v9 = *(a1 + 40);
    dispatch_async(v6, v7);
  }
}

void sub_1001D7918(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1001D7B98(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 listeners];
  v7 = [v6 count];

  if (!v7)
  {
    [*(a1 + 32) addObject:v8];
  }
}

BOOL sub_1001D89C0(id a1, CBService *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(CBService *)a2 UUID:a3];
  v5 = [CBUUID UUIDWithString:@"48fe3e40-0817-4bb2-8633-3073689c2dba"];
  v6 = [v4 isEqual:v5];

  return v6;
}

void sub_1001D910C(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 UUID];
  v4 = [CBUUID UUIDWithString:@"1176cf7b-bed2-4690-bd69-5f34001e820c"];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    [*(a1 + 32) readValueForCharacteristic:v8];
    v6 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:*(a1 + 48)];
    [v6 setReadingMultiConfigCharacteristics:1];

    v7 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:*(a1 + 48)];
    [v7 setNumCharacteristicsLeftToRead:{objc_msgSend(v7, "numCharacteristicsLeftToRead") + 1}];
  }
}

void sub_1001D9224(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 UUID];
  v4 = [CBUUID UUIDWithString:@"95e8d9d5-d8ef-4721-9a4e-807375f53328"];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    [*(a1 + 32) readValueForCharacteristic:v7];
    v6 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:*(a1 + 48)];
    [v6 setNumCharacteristicsLeftToRead:{objc_msgSend(v6, "numCharacteristicsLeftToRead") + 1}];
  }
}

void sub_1001D9E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001DA028(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v3];
  v5 = [v4 listener];

  if (v5)
  {
    v7 = *(a1 + 40);
    v6 = (a1 + 40);
    v8 = [*(v6 - 1) _isListener:v3 backgroundAuthorizedForPeer:v7 useCache:0];
    v9 = qword_1009F9820;
    if (v8)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v6;
        *buf = 138412546;
        v19 = v3;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#bt-accessory,BackgroundAuthorization: listener [%@] for peer [%@] authorized", buf, 0x16u);
      }

      v11 = [v5 getQueueForInputingData];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1001DA268;
      v16[3] = &unk_10098BD28;
      v12 = &v17;
      v17 = v5;
      v13 = v16;
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A7238();
      }

      v11 = [v5 getQueueForInputingData];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1001DA270;
      v14[3] = &unk_10098BD28;
      v12 = &v15;
      v15 = v5;
      v13 = v14;
    }

    dispatch_async(v11, v13);
  }
}

void sub_1001DA270(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
  [v1 accessoryGATTServiceFailedWithError:?];
}

uint64_t sub_1001DA700(uint64_t a1, uint64_t a2)
{
  *a1 = dispatch_queue_create("com.apple.RosePowerManagerQueue", 0);
  *(a1 + 8) = 1;
  *(a1 + 16) = 15000000000;
  sub_1001DB3FC(a1 + 24, a2);
  *(a1 + 56) = 0;
  sub_100339400(a1 + 64);
  return a1;
}

void sub_1001DA76C(_Unwind_Exception *a1)
{
  sub_1001B3E54((v1 + 3));

  _Unwind_Resume(a1);
}

id *sub_1001DA79C(id *a1)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A7394();
  }

  v2 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DA85C;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_sync(v2, block);

  sub_1001B3E54((a1 + 3));
  return a1;
}

void sub_1001DA864(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRosePowerManager: Cancelling fRoseIdleTimer", v4, 2u);
    }

    dispatch_source_cancel(*(a1 + 56));
    v3 = *(a1 + 56);
    *(a1 + 56) = 0;
  }
}

void sub_1001DA8F4(NSObject **a1)
{
  v1 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DA968;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_sync(v1, block);
}

uint64_t sub_1001DA968(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRosePowerManager: initialize", v4, 2u);
  }

  result = sub_1001DA9DC();
  *(v1 + 8) = result;
  return result;
}

uint64_t sub_1001DA9DC()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 dictionaryRepresentation];

  isKindOfClass = [v1 objectForKey:@"roseDefaultPowerVoteCount"];
  v4 = isKindOfClass;
  if (!isKindOfClass || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    if (sub_100256134(isKindOfClass, v3))
    {
      v8 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PRRosePowerManager: NonUIInstall build", &v10, 2u);
      }
    }

    goto LABEL_11;
  }

  v5 = [v4 integerValue];
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRosePowerManager: User Default Exists, roseDefaultPowerVoteCount = %ld", &v10, 0xCu);
  }

  if (v5 < 0)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A73D4(v7);
    }

LABEL_11:
    v5 = 1;
  }

  return v5;
}

void sub_1001DABA8(NSObject **a1, uint64_t a2)
{
  v2 = *a1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001DAC1C;
  v3[3] = &unk_100998810;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

void sub_1001DAC1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40) / 1000.0;
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PRRosePowerManager: idle power down timeout %.3f s", &v5, 0xCu);
  }

  *(v2 + 16) = 1000000 * *(a1 + 40);
}

void sub_1001DACF4(NSObject **a1)
{
  v1 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DAD68;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_sync(v1, block);
}

void sub_1001DAD68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRosePowerManager: requestPower", v4, 2u);
  }

  sub_1001DA864(v1);
  v3 = *(v1 + 8);
  *(v1 + 8) = v3 + 1;
  if (!v3)
  {
    sub_100339410(v1 + 64);
  }
}

void sub_1001DADF4(NSObject **a1)
{
  v1 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DAE68;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_sync(v1, block);
}

void sub_1001DAE68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRosePowerManager: releasePower", buf, 2u);
  }

  v3 = *(v1 + 8);
  if (!v3)
  {
    goto LABEL_10;
  }

  *(v1 + 8) = v3 - 1;
  if (v3 <= 0)
  {
    sub_1004A7494();
  }

  if (v3 == 1 && (sub_1001DAF6C(v1) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A7454();
    }

    abort_report_np("PRRosePowerManager: Failed to start RoseIdleTimer.");
LABEL_10:
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRosePowerManager: releasePower fPowerVoteCount already 0, ignoring.", v5, 2u);
    }
  }
}

uint64_t sub_1001DAF6C(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "startRosePowerOffIdleTimer";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRosePowerManager: %s", buf, 0xCu);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001DB220;
  v14[3] = &unk_10098AD98;
  v14[4] = a1;
  v3 = objc_retainBlock(v14);
  sub_1001DA864(a1);
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *a1);
  v5 = *(a1 + 56);
  *(a1 + 56) = v4;

  v6 = *(a1 + 56);
  if (v6 && (v7 = *(a1 + 16)) != 0)
  {
    v8 = dispatch_time(0, v7);
    dispatch_source_set_timer(v6, v8, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
    v9 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001DB2E4;
    v12[3] = &unk_10099CF08;
    v13 = v3;
    dispatch_source_set_event_handler(v9, v12);
    dispatch_resume(*(a1 + 56));

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_1001DB158(NSObject **a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *a1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001DB204;
  v4[3] = &unk_10099CEE0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1001DB220(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A74C0();
  }

  sub_1001DA864(v1);
  if (*(v1 + 8) >= 1)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A7500();
    }

    abort_report_np("PRRosePowerManager: RoseIdleTimer timeout unexpected");
LABEL_9:
    sub_100037B10();
  }

  v2 = *(v1 + 48);
  if (!v2)
  {
    goto LABEL_9;
  }

  (*(*v2 + 48))(v2);
  sub_10033953C(v1 + 64);
}

NSObject ***sub_1001DB2F4(NSObject ***a1, NSObject **a2)
{
  *a1 = a2;
  v3 = *a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DAD68;
  block[3] = &unk_10098AD98;
  block[4] = a2;
  dispatch_sync(v3, block);
  return a1;
}

NSObject ***sub_1001DB378(NSObject ***a1)
{
  v2 = *a1;
  v3 = **a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DAE68;
  block[3] = &unk_10098AD98;
  block[4] = v2;
  dispatch_sync(v3, block);
  return a1;
}

uint64_t sub_1001DB3FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_1001DB600(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001DBF64(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

char *sub_1001DBF8C(uint64_t a1)
{
  v1 = [*(a1 + 32) allSessionsPrintableState];
  v2 = sub_10003F7DC(@"NIServerSessionManager", v1);

  return v2;
}

void sub_1001DC104(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 14);

  _Unwind_Resume(a1);
}

void sub_1001DC68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39)
{
  _Block_object_dispose((v43 - 240), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1001DC7A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001DC7BC(uint64_t a1)
{
  v2 = [NIServerSessionContainer alloc];
  v6 = [NIServerClient delegateProxyWithConnection:*(a1 + 32)];
  v3 = [NIServerSessionContainer initWithClient:v2 clientInfo:"initWithClient:clientInfo:connection:authorizationManager:" connection:? authorizationManager:?];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_1001DC860(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

id sub_1001DC8A0(void *a1)
{
  [*(*(a1[6] + 8) + 40) setAppStateMonitor:a1[4]];
  [*(*(a1[6] + 8) + 40) setActivationGuard:a1[5]];
  [*(*(a1[6] + 8) + 40) setObservationRegistrar:a1[5]];
  [*(*(a1[6] + 8) + 40) setAggregateStateProvider:a1[5]];
  v2 = *(a1[5] + 48);
  v3 = *(*(a1[6] + 8) + 40);

  return [v3 setNearbyObjectsCache:v2];
}

void sub_1001DC924(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#nisessmgr,connection interrupted for pid: %d", v5, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleXPCDisconnection:*(*(*(a1 + 32) + 8) + 40)];
}

void sub_1001DCA04(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#nisessmgr,connection invalidated for pid: %d", v5, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleXPCDisconnection:*(*(*(a1 + 32) + 8) + 40)];
}

void sub_1001DD04C(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#nisessmgr,connection interrupted for pid: %d", v5, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleObserverSessionXPCDisconnection:*(a1 + 32)];
}

void sub_1001DD124(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#nisessmgr,connection invalidated for pid: %d", v5, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleObserverSessionXPCDisconnection:*(a1 + 32)];
}

void sub_1001DD420(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 14);

  _Unwind_Resume(a1);
}

void sub_1001DD6BC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 14);

  _Unwind_Resume(a1);
}

void sub_1001DDAF4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 14);

  _Unwind_Resume(a1);
}

void sub_1001DE0BC(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [v5 monitoredProcessName];
  if (v7)
  {
    v8 = [v5 monitoredProcessName];
  }

  else
  {
    v8 = @"???";
  }

  [v6 setObject:v8 forKey:v10];
  if (v7)
  {
  }

  v9 = [v5 printableState];
  if (v9)
  {
    [*(a1 + 40) setObject:v9 forKey:v10];
  }
}

void sub_1001DE1D0(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) objectForKeyedSubscript:v10];
  if (v7)
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:v10];
  }

  else
  {
    v8 = @"???";
  }

  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"    [%@: %@] %d sessions", v10, v8, [v5 count]);
  [v6 addObject:v9];

  if (v7)
  {
  }
}

void sub_1001DE2FC(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) objectForKeyedSubscript:v10];
  if (v7)
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:v10];
  }

  else
  {
    v8 = @"???";
  }

  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"    [%@: %@] %d observers", v10, v8, [v5 count]);
  [v6 addObject:v9];

  if (v7)
  {
  }
}

void sub_1001DE428(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001DE4C8;
  v4[3] = &unk_10099D008;
  v5 = *(a1 + 32);
  [a3 enumerateObjectsUsingBlock:v4];
}

void sub_1001DE4C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithFormat:@"    %@", a2];
  [v2 addObject:?];
}

void sub_1001DE544(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001DE65C;
  v9[3] = &unk_10099D058;
  v10 = *(a1 + 32);
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = v6;
  v7 = v6;
  v8 = v5;
  [v7 enumerateObjectsUsingBlock:v9];
}

void sub_1001DE65C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1001DC7A4;
  v23 = sub_1001DC7B4;
  v24 = 0;
  v6 = [v5 connectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DE8F0;
  block[3] = &unk_10098A310;
  v18 = &v19;
  v7 = v5;
  v17 = v7;
  dispatch_sync(v6, block);

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = [*(a1 + 48) objectForKeyedSubscript:v9];
  if (v10)
  {
    v11 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    v11 = @"???";
  }

  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[%@: %@] Session %d of %d", v9, v11, (a3 + 1), [*(a1 + 56) count]);
  [v8 addObject:v12];

  if (v10)
  {
  }

  v13 = v20[5];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001DE93C;
  v14[3] = &unk_10099D008;
  v15 = *(a1 + 32);
  [v13 enumerateObjectsUsingBlock:v14];
  [*(a1 + 32) addObject:&stru_1009B1428];

  _Block_object_dispose(&v19, 8);
}

void sub_1001DE880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void sub_1001DE8F0(uint64_t a1)
{
  v2 = [*(a1 + 32) printableState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001DE93C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithFormat:@"    %@", a2];
  [v2 addObject:?];
}

void sub_1001DEAD0(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock(v1 + 14);
  _Unwind_Resume(a1);
}

void sub_1001DEBDC(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 supportsSessionObservers])
        {
          v14 = *(a1 + 32);
          v9 = [NSArray arrayWithObjects:&v14 count:1];
          [v8 addObservers:v9];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }
}

void sub_1001DEE10(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 supportsSessionObservers])
        {
          v14 = *(a1 + 32);
          v9 = [NSArray arrayWithObjects:&v14 count:1];
          [v8 removeObservers:v9];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }
}

void sub_1001DF044(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v13 = a2;
  *a1 = off_10099D1A8;
  *(a1 + 8) = off_10099D228;
  *(a1 + 16) = off_10099D260;
  *(a1 + 32) = 1018212795;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 850045863;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 144) = 850045863;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 850045863;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 850045863;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = 850045863;
  *(a1 + 392) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 400) = v13;
  *(a1 + 408) = a4;
  *(a1 + 416) = a5;
  *(a1 + 424) = a6;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 432) = a7;
  operator new();
}

void sub_1001DF6A8(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#roseprovider,powerManagerInvokePowerOffRose", v3, 2u);
  }

  sub_10026A730(a1 + 544);
}

void sub_1001DF728(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "boot";
    if (v2)
    {
      v5 = "DSLP";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#roseprovider,#lpm powerOnDemand update. Use %s on demand", &v6, 0xCu);
  }

  sub_10025C470(a1 + 544, v2);
}

void sub_1001DF804(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = a3;
  v39 = 0;
  v40 = 0;
  v43 = 0;
  v44 = a3;
  v45 = BYTE4(a3);
  v5 = *a2;
  if (v5 > 3)
  {
    if (*a2 > 5u)
    {
      if (v5 != 6)
      {
        if (v5 == 7)
        {
          if ((a3 & 0x100000000) == 0)
          {
            sub_1004A76FC();
          }

          sub_100004A08(buf, off_10099D5B0[a3]);
          v11 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v12 = buf;
            if (v30 < 0)
            {
              v12 = *buf;
            }

            *v46 = 136315138;
            v47 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#roseprovider,Got RoseState Event: ChipUnavailable, Reason: %s", v46, 0xCu);
          }

          v39 = 6;
          if (v3 == 5)
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1001E8C18;
            block[3] = &unk_10098AD98;
            block[4] = a1;
            if (qword_1009F0D10 != -1)
            {
              dispatch_once(&qword_1009F0D10, block);
            }
          }

          if (SHIBYTE(v30) < 0)
          {
            operator delete(*buf);
          }
        }

        goto LABEL_44;
      }

      v8 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      *buf = 0;
      v9 = "#roseprovider,Got RoseState Event: FirmwareCrash";
    }

    else
    {
      if (v5 == 4)
      {
        v14 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#roseprovider,Got RoseState Event: Ready", buf, 2u);
        }

        sub_1001E8BCC((a1 + 3152), 0);
        v7 = 3;
        goto LABEL_37;
      }

      if (v5 != 5)
      {
        goto LABEL_44;
      }

      v8 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
LABEL_41:
        v39 = 5;
        v16 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#roseprovider,Clearing inflight sync commands state variables.", buf, 2u);
        }

        std::mutex::lock((a1 + 144));
        std::condition_variable::notify_all((a1 + 32));
        std::mutex::unlock((a1 + 144));
        goto LABEL_44;
      }

      *buf = 0;
      v9 = "#roseprovider,Got RoseState Event: RuntimeError";
    }

    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    goto LABEL_41;
  }

  if (*a2 > 1u)
  {
    if (v5 == 2)
    {
      v15 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#roseprovider,Got RoseState Event: BootSuccessful", buf, 2u);
      }

      v7 = 1;
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_44;
      }

      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#roseprovider,Got RoseState Event: AOPJobsReset", buf, 2u);
      }

      v7 = 2;
    }

LABEL_37:
    v39 = v7;
LABEL_44:
    sub_1001E9464(buf, &v39);
    v17 = *(a1 + 408);
    v18 = *buf;
    v19 = v29;
    sub_1001916EC(&v20, &v30);
    v25 = v35;
    v26 = v36;
    v27[0] = v37[0];
    *(v27 + 13) = *(v37 + 13);
    sub_1001A5568(v17, &v18);
    if (v24 == 1 && v23 == 1 && v22 < 0)
    {
      operator delete(__p);
    }

    if (v34 == 1 && v33 == 1 && v32 < 0)
    {
      operator delete(v31);
    }

    if ((v43 & 1) != 0 && v42 < 0)
    {
      operator delete(v41);
    }

    return;
  }

  if (*a2)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#roseprovider,Got RoseState Event: BootError", buf, 2u);
    }

    v7 = 5;
    goto LABEL_37;
  }

  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#roseprovider,Got RoseState Event: BootStarted", buf, 2u);
  }
}

void sub_1001DFD18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, uint64_t a41, char a42)
{
  if (a21 == 1 && a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (a42 == 1 && a40 == 1 && a39 < 0)
  {
    operator delete(a34);
  }

  if ((*(v42 - 96) & 1) != 0 && *(v42 - 97) < 0)
  {
    operator delete(*(v42 - 120));
  }

  _Unwind_Resume(exception_object);
}

void sub_1001DFDAC(uint64_t a1)
{
  __chkstk_darwin(a1);
  v180 = v1;
  v3 = v2;
  switch(*(v2 + 8))
  {
    case 0xE0:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A8780();
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A87BC();
      }

      v4 = *(v3 + 12);
      if (*(v3 + 12))
      {
        if (v4 != 2)
        {
          if (v4 == 1)
          {
            sub_1001938DC(v386, *(v3 + 13), v3 + 23, *v3);
            v427 = v388;
            v428 = v389;
            v429 = v390;
            *&v426[96] = *&v386[12];
            *&v426[112] = *&v386[14];
            *&v426[128] = *&v386[16];
            *&v426[144] = v387;
            *&v426[32] = *&v386[4];
            *&v426[48] = *&v386[6];
            *&v426[64] = *&v386[8];
            *&v426[80] = *&v386[10];
            *v426 = *v386;
            v5 = *(v180 + 408);
            *&v430 = v391;
            *&v426[16] = *&v386[2];
            sub_1001E82E0(v180, v5, v426);
          }

          return;
        }

        sub_1001997C4(v3 + 23, 0, v426);
        sub_1001937FC(v386, 0, *(v3 + 13), v426, *v3);
        v125 = *(v180 + 408);
        sub_1001E8DE0(v424, v386);
        sub_1001E8CC4(v180, v125, v424);
        v126 = v424;
      }

      else
      {
        sub_100199054(v3 + 23, 0, v426);
        sub_1001937FC(v386, 0, *(v3 + 13), v426, *v3);
        v127 = *(v180 + 408);
        sub_1001E8DE0(v425, v386);
        sub_1001E8CC4(v180, v127, v425);
        v126 = v425;
      }

      sub_10002069C(v126);
      sub_10002069C(v386);
      v7 = *&v426[40];
      if (!*&v426[40])
      {
        return;
      }

      *&v426[48] = *&v426[40];
      goto LABEL_366;
    case 0xE1:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A8830();
      }

      *v386 = std::chrono::steady_clock::now().__d_.__rep_;
      LODWORD(v386[1]) = 2;
      LOBYTE(v386[2]) = 0;
      LOBYTE(v386[9]) = 0;
      LOBYTE(v386[10]) = 0;
      BYTE4(v386[11]) = 0;
      LOBYTE(v386[12]) = 0;
      BYTE4(v386[12]) = 0;
      *&v386[13] = *(v3 + 12);
      *&v386[15] = *(v3 + 28);
      LODWORD(v386[17]) = *(v3 + 44);
      BYTE4(v386[17]) = 1;
      v50 = *(v180 + 408);
      v199 = v386[0];
      v200 = 2;
      sub_1001916EC(&v201, &v386[2]);
      v206 = *&v386[10];
      v207 = *&v386[12];
      v208[0] = *&v386[14];
      *(v208 + 13) = *(&v386[15] + 5);
      sub_1001A5568(v50, &v199);
      if (v205 != 1 || v204 != 1 || (v203 & 0x80000000) == 0)
      {
        goto LABEL_179;
      }

      v31 = v202;
      goto LABEL_178;
    case 0xE2:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A8744();
      }

      v38 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(v3 + 12);
        LODWORD(v386[0]) = 67109120;
        HIDWORD(v386[0]) = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#roseprovider,Got request status ticket id: %d", v386, 8u);
      }

      v40 = *(v3 + 12);
      *v426 = v40;
      *&v426[4] = sub_1001E94DC(v426, BYTE2(v40));
      *&v426[8] = sub_1001E9504(v426, BYTE3(v40));
      *v386 = std::chrono::steady_clock::now().__d_.__rep_;
      LODWORD(v386[1]) = 1;
      LOBYTE(v386[2]) = 0;
      LOBYTE(v386[9]) = 0;
      v386[10] = *v426;
      LODWORD(v386[11]) = *&v426[8];
      BYTE4(v386[11]) = 1;
      LOBYTE(v386[12]) = 0;
      BYTE4(v386[12]) = 0;
      LOBYTE(v386[13]) = 0;
      BYTE4(v386[17]) = 0;
      v41 = *(v180 + 408);
      v190 = v386[0];
      v191 = 1;
      sub_1001916EC(v192, &v386[2]);
      v196 = *&v386[10];
      v197 = *&v386[12];
      v198[0] = *&v386[14];
      *(v198 + 13) = *(&v386[15] + 5);
      sub_1001A5568(v41, &v190);
      if (v195 != 1 || v194 != 1 || (v193 & 0x80000000) == 0)
      {
        goto LABEL_179;
      }

      v31 = v192[2];
      goto LABEL_178;
    case 0xE3:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A8078();
      }

      if (*(v3 + 12) == 1)
      {
        buf = 0uLL;
        *&v211 = 0;
        sub_1000069DC(&buf, (v3 + 31), (v3 + 99), 68);
        v114 = *v3;
        v115 = *(v3 + 13);
        sub_1004211F0(&buf, v426, v116);
        v419[18] = *v426;
        LODWORD(v386[0]) = 8;
        LOBYTE(v386[1]) = 0;
        v392 = 0;
        LOBYTE(v393) = 0;
        BYTE8(v406) = 0;
        LOBYTE(v407) = 0;
        v413 = 0;
        v414[0] = 0;
        v414[128] = 0;
        v414[136] = 0;
        v414[216] = 0;
        v414[224] = 0;
        v414[328] = 0;
        LOBYTE(v415[0]) = 0;
        v418 = 0;
        LOBYTE(v419[0]) = 0;
        BYTE8(v419[16]) = 0;
        *&v419[17] = v114;
        WORD4(v419[17]) = v115;
        v419[19] = *&v426[16];
        v419[20] = *&v426[32];
        *&v419[21] = *&v426[48];
        BYTE8(v419[21]) = 1;
        LOBYTE(v419[22]) = 0;
        LOBYTE(v419[25]) = 0;
        BYTE8(v419[25]) = 0;
        BYTE8(v419[29]) = 0;
        LOBYTE(v420[0]) = 0;
        v423 = 0;
        v117 = *(v180 + 408);
        sub_1001E8EC4(v384, v386);
        sub_1001A5680(v117, v384);
        sub_1001A5A20(v384);
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A80B4();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A80F0();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A812C();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A81A0();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A8214();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A828C();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A82FC();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A836C();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A83DC();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
LABEL_339:
          sub_1004A80B4();
        }
      }

      else
      {
        if (*(v3 + 12))
        {
          return;
        }

        buf = 0uLL;
        *&v211 = 0;
        sub_1000069DC(&buf, (v3 + 31), (v3 + 127), 96);
        v42 = *v3;
        v43 = *(v3 + 13);
        sub_1004200E0(&buf, v426, v44);
        *(&v419[7] + 6) = *&v426[102];
        *(&v419[8] + 6) = *&v426[118];
        *(&v419[9] + 6) = *&v426[134];
        *(&v419[3] + 6) = *&v426[38];
        *(&v419[4] + 6) = *&v426[54];
        *(&v419[5] + 6) = *&v426[70];
        *(&v419[6] + 6) = *&v426[86];
        *(&v419[1] + 6) = *&v426[6];
        *(&v419[2] + 6) = *&v426[22];
        v419[10] = *&v426[144];
        LODWORD(v386[0]) = 7;
        LOBYTE(v386[1]) = 0;
        v392 = 0;
        LOBYTE(v393) = 0;
        BYTE8(v406) = 0;
        LOBYTE(v407) = 0;
        v413 = 0;
        v414[0] = 0;
        v414[128] = 0;
        v414[136] = 0;
        v414[216] = 0;
        v414[224] = 0;
        v414[328] = 0;
        LOBYTE(v415[0]) = 0;
        v418 = 0;
        *v419 = v42;
        WORD4(v419[0]) = v43;
        LODWORD(v419[1]) = *v426;
        WORD2(v419[1]) = *&v426[4];
        v419[11] = v427;
        v419[12] = v428;
        v419[13] = v429;
        v419[14] = v430;
        v419[15] = v431;
        *&v419[16] = v432;
        BYTE8(v419[16]) = 1;
        LOBYTE(v419[17]) = 0;
        BYTE8(v419[21]) = 0;
        LOBYTE(v419[22]) = 0;
        LOBYTE(v419[25]) = 0;
        BYTE8(v419[25]) = 0;
        BYTE8(v419[29]) = 0;
        LOBYTE(v420[0]) = 0;
        v423 = 0;
        v45 = *(v180 + 408);
        sub_1001E8EC4(v385, v386);
        sub_1001A5680(v45, v385);
        sub_1001A5A20(v385);
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A80B4();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A844C();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A812C();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A81A0();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A8488();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A84FC();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A8570();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A85E4();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A8658();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A86CC();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_339;
        }
      }

      sub_1001A5A20(v386);
      v7 = buf;
      if (!buf)
      {
        return;
      }

      *(&buf + 1) = buf;
      goto LABEL_366;
    case 0xE4:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A803C();
      }

      v23 = *(v3 + 140);
      v383 = 0;
      v382 = 0uLL;
      sub_1000069DC(&v382, (v3 + 28), (v3 + 28 + v23), v23);
      sub_100426934(v180 + 2680, v426, &v382);
      if (v426[72] == 1)
      {
        buf = *v426;
        v24 = *&v426[24];
        memset(&v426[24], 0, 48);
        LODWORD(v386[0]) = 3;
        LOBYTE(v386[1]) = 0;
        v392 = 0;
        LOBYTE(v393) = 0;
        BYTE8(v406) = 0;
        v407 = *v426;
        v408 = *&v426[16];
        v409 = v24;
        v410 = *&v426[40];
        v211 = *&v426[16];
        v212 = 0uLL;
        v411 = *&v426[48];
        v412 = *&v426[64];
        memset(v213, 0, 24);
        v413 = 1;
        v414[0] = 0;
        v414[128] = 0;
        v414[136] = 0;
        v414[216] = 0;
        v414[224] = 0;
        v414[328] = 0;
        LOBYTE(v415[0]) = 0;
        v418 = 0;
        LOBYTE(v419[0]) = 0;
        BYTE8(v419[16]) = 0;
        LOBYTE(v419[17]) = 0;
        BYTE8(v419[21]) = 0;
        LOBYTE(v419[22]) = 0;
        LOBYTE(v419[25]) = 0;
        BYTE8(v419[25]) = 0;
        BYTE8(v419[29]) = 0;
        LOBYTE(v420[0]) = 0;
        v423 = 0;
        sub_100189E60(&buf);
        v25 = *(v180 + 408);
        sub_1001E8EC4(v381, v386);
        sub_1001A5680(v25, v381);
        sub_1001A5A20(v381);
        sub_1001A5A20(v386);
        if (v426[72])
        {
          v386[0] = &v426[48];
          sub_100189A94(v386);
          v386[0] = &v426[24];
          sub_100189B38(v386);
        }
      }

      goto LABEL_170;
    case 0xE5:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A7DBC();
      }

      std::mutex::lock((v180 + 144));
      memset(v426, 0, 24);
      v55 = *(sub_1000054A8() + 187);
      if (v55)
      {
        v56 = (v3 + 28);
        if (v55 == 1)
        {
          v128 = *(v3 + 68) - 27 + 68;
          memset(v386, 0, 24);
          sub_1000069DC(v386, v56, &v56[v128], v128);
        }

        else
        {
          if (v55 != 2)
          {
            goto LABEL_371;
          }

          memset(v386, 0, 24);
          sub_1000069DC(v386, v56, (v3 + 140), 112);
        }

        *v426 = *v386;
        *&v426[16] = v386[2];
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A7DF8();
      }

LABEL_371:
      sub_100461FC8(v426);
    case 0xE6:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A7D0C();
      }

      v57 = *(v3 + 140);
      memset(v386, 0, 24);
      sub_1000069DC(v386, (v3 + 28), (v3 + 28 + v57), v57);
      if ((*(v3 + 28) & 0x3FF) == 0x209)
      {
        sub_1004213B8(v386, v426);
        v58 = qword_1009F9820;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          sub_10041D8A8(v426, &buf);
          v59 = (SBYTE7(v211) & 0x80u) == 0 ? &buf : buf;
          LODWORD(v382) = 136315138;
          *(&v382 + 4) = v59;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#roseprovider,Coex Critical Event: %s", &v382, 0xCu);
          if (SBYTE7(v211) < 0)
          {
            operator delete(buf);
          }
        }

        v62 = sub_100256090(v60, v61);
        if (v426[16] == 1)
        {
          v63 = v62;
        }

        else
        {
          v63 = 0;
        }

        if (v63 == 1 && !v426[17])
        {
          v64 = +[NSUserDefaults standardUserDefaults];
          v65 = [v64 BOOLForKey:@"displayAlertOnLAACoexConflictEvent"];

          if (v65)
          {
            v66 = +[NSDate now];
            v67 = [NSString stringWithFormat:@"[%@] R2 reported an LAA coex event. Could be baseband bug in rdar://136271362. Get baseband logs right away!", v66];

            *&buf = 0;
            CFUserNotificationDisplayAlert(0.0, 2uLL, 0, 0, 0, @"LAA-R2 Coex Event", v67, @"OK", @"Stop notifying", 0, &buf);
            if (buf == 1)
            {
              v68 = +[NSUserDefaults standardUserDefaults];
              [v68 setBool:0 forKey:@"displayAlertOnLAACoexConflictEvent"];

              v69 = +[NSUserDefaults standardUserDefaults];
              [v69 synchronize];
            }
          }
        }
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A7D48();
      }

      goto LABEL_318;
    case 0xE7:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A7CD0();
      }

      v46 = *(v3 + 15);
      v383 = 0;
      v382 = 0uLL;
      sub_1000069DC(&v382, (v3 + 39), (v3 + 39 + v46), v46);
      if (*(v3 + 12) != 1)
      {
        goto LABEL_170;
      }

      sub_1004214A8(&v382, &buf);
      v47 = *(v3 + 13);
      *v426 = *v3;
      *&v426[8] = v47;
      *&v426[16] = buf;
      *&v426[32] = v211;
      *&v426[48] = v212;
      *&v426[64] = *v213;
      *&v426[72] = *&v213[8];
      *&v426[88] = *&v213[24];
      memset(&v213[8], 0, 24);
      v426[96] = 0;
      v426[104] = 0;
      sub_1001E9518(v386, v426);
      v48 = *(v180 + 408);
      sub_1001E8EC4(v258, v386);
      sub_1001A5680(v48, v258);
      sub_1001A5A20(v258);
      sub_1001A5A20(v386);
      if (*&v426[72])
      {
        *&v426[80] = *&v426[72];
        operator delete(*&v426[72]);
      }

      v49 = *&v213[8];
      if (!*&v213[8])
      {
        goto LABEL_170;
      }

      *&v213[16] = *&v213[8];
      goto LABEL_169;
    case 0xE8:
      v71 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v72 = *v3;
        LODWORD(v386[0]) = 134217984;
        *(v386 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "#roseprovider,Received SPMI Message. Mach absolute time: %f", v386, 0xCu);
      }

      v73 = *(v3 + 76);
      memset(v386, 0, 24);
      sub_1000069DC(v386, (v3 + 12), (v3 + 12 + v73), v73);
      sub_100004A08(&buf, "SPMI Message raw bytes:\n");
      v74 = v386[0];
      v75 = v386[1];
      sub_100004A08(&v382, "===========\n");
      sub_10046FC20(&buf, v74, v75 - v74, 4u, &v382);
      if (SHIBYTE(v383) < 0)
      {
        operator delete(v382);
      }

      if (SBYTE7(v211) < 0)
      {
        operator delete(buf);
      }

      v76 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v77 = v426;
        if (v426[23] < 0)
        {
          v77 = *v426;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v77;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "#roseprovider,%s", &buf, 0xCu);
      }

      if ((v426[23] & 0x80000000) != 0)
      {
        operator delete(*v426);
      }

LABEL_318:
      v7 = v386[0];
      if (!v386[0])
      {
        return;
      }

      v386[1] = v386[0];
      goto LABEL_366;
    case 0xE9:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A7C94();
      }

      std::mutex::lock((v180 + 144));
      memset(v426, 0, 24);
      sub_1000069DC(v426, (v3 + 28), (v3 + 104), 76);
      v26 = v180;
      sub_100463270(v426, v386);
      if (*(v180 + 2644) == 1)
      {
        *(v180 + 2644) = 0;
      }

      v27 = *&v386[2];
      *(v180 + 2584) = *v386;
      *(v180 + 2600) = v27;
      *(v180 + 2616) = *&v386[4];
      *(v180 + 2628) = *(&v386[5] + 4);
      *(v180 + 2644) = 1;
      atomic_store(1u, (v180 + 25));
      std::condition_variable::notify_all((v180 + 32));
      if (*v426)
      {
        *&v426[8] = *v426;
        operator delete(*v426);
      }

      goto LABEL_353;
    case 0xEA:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A7F8C();
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A7FC8();
      }

      sub_10019397C(v386, *(v3 + 12), v3 + 14, *v3);
      v70 = *(v180 + 408);
      v339 = 4;
      v340 = 0;
      v345 = 0;
      v346 = 0;
      v347 = 0;
      v348 = 0;
      v351 = 0;
      v356 = *&v386[8];
      v357 = *&v386[10];
      v358 = *&v386[12];
      v359 = *&v386[14];
      v352 = *v386;
      v353 = *&v386[2];
      v354 = *&v386[4];
      v355 = *&v386[6];
      v360 = 1;
      v361 = 0;
      v362 = 0;
      v363 = 0;
      v364 = 0;
      v365 = 0;
      v368 = 0;
      v369 = 0;
      v370 = 0;
      v371 = 0;
      v372 = 0;
      v373 = 0;
      v374 = 0;
      v375 = 0;
      v376 = 0;
      v377 = 0;
      v380 = 0;
      sub_1001A5680(v70, &v339);
      if (v380 == 1 && v378)
      {
        v379 = v378;
        operator delete(v378);
      }

      if (v368 == 1 && v366)
      {
        v367 = v366;
        operator delete(v366);
      }

      if (v351 == 1)
      {
        *v426 = &v350;
        sub_100189A94(v426);
        *v426 = &v349;
        sub_100189B38(v426);
      }

      if (v345 != 1)
      {
        return;
      }

      if (v343)
      {
        v344 = v343;
        operator delete(v343);
      }

      v7 = v341;
      if (!v341)
      {
        return;
      }

      v342 = v341;
      goto LABEL_366;
    case 0xEB:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A7EDC();
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A7F18();
      }

      sub_100193A20(v386, *(v3 + 12), v3 + 14, *v3);
      v12 = *(v180 + 408);
      v300 = 5;
      v301 = 0;
      v306 = 0;
      v307 = 0;
      v308 = 0;
      v309 = 0;
      v312 = 0;
      v313 = 0;
      v314 = 0;
      v317 = *&v386[4];
      v318 = *&v386[6];
      v319 = *&v386[8];
      v316 = *&v386[2];
      v315 = *v386;
      v320 = 1;
      v321 = 0;
      v322 = 0;
      v323 = 0;
      v326 = 0;
      v327 = 0;
      v328 = 0;
      v329 = 0;
      v330 = 0;
      v331 = 0;
      v332 = 0;
      v333 = 0;
      v334 = 0;
      v335 = 0;
      v338 = 0;
      sub_1001A5680(v12, &v300);
      if (v338 == 1 && v336)
      {
        v337 = v336;
        operator delete(v336);
      }

      if (v326 == 1 && v324)
      {
        v325 = v324;
        operator delete(v324);
      }

      if (v312 == 1)
      {
        *v426 = &v311;
        sub_100189A94(v426);
        *v426 = &v310;
        sub_100189B38(v426);
      }

      if (v306 != 1)
      {
        return;
      }

      if (v304)
      {
        v305 = v304;
        operator delete(v304);
      }

      v7 = v302;
      if (!v302)
      {
        return;
      }

      v303 = v302;
      goto LABEL_366;
    case 0xEC:
      sub_1004A7B3C();
    case 0xED:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A7C58();
      }

      if (*(v3 + 12) == 1)
      {
        v16 = *(v3 + 13);
        v17 = *v3;
        v18 = *(v3 + 15);
        LODWORD(v386[0]) = 9;
        LOBYTE(v386[1]) = 0;
        v392 = 0;
        LOBYTE(v393) = 0;
        BYTE8(v406) = 0;
        LOBYTE(v407) = 0;
        v413 = 0;
        v414[0] = 0;
        v414[128] = 0;
        v414[136] = 0;
        v414[216] = 0;
        v414[224] = 0;
        v414[328] = 0;
        LOBYTE(v415[0]) = 0;
        v418 = 0;
        LOBYTE(v419[0]) = 0;
        BYTE8(v419[16]) = 0;
        LOBYTE(v419[17]) = 0;
        BYTE8(v419[21]) = 0;
        LODWORD(v419[22]) = 0;
        WORD2(v419[22]) = v16;
        *(&v419[22] + 1) = v18;
        LOBYTE(v419[23]) = 1;
        *(&v419[23] + 1) = v17;
        LOBYTE(v419[24]) = 0;
        BYTE8(v419[24]) = 0;
        LOBYTE(v419[25]) = 1;
        BYTE8(v419[25]) = 0;
        BYTE8(v419[29]) = 0;
        LOBYTE(v420[0]) = 0;
        v423 = 0;
        v19 = *(v180 + 408);
        sub_1001E8EC4(v257, v386);
        sub_1001A5680(v19, v257);
        sub_1001A5A20(v257);
        sub_1001A5A20(v386);
      }

      return;
    case 0xEE:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A7C1C();
      }

      v8 = *(v3 + 74);
      memset(v426, 0, 24);
      sub_1000069DC(v426, (v3 + 75), (v3 + 75 + v8), v8);
      v9 = *v3;
      v10 = *(v3 + 50);
      LOWORD(v386[0]) = *(v3 + 12);
      memset(&v386[1], 0, 24);
      sub_100009A48(&v386[1], *v426, *&v426[8], *&v426[8] - *v426);
      v386[4] = v9;
      v386[5] = v10;
      std::mutex::lock((v180 + 80));
      v11 = *(v180 + 440);
      if (v11)
      {
        (*(*v11 + 16))(v11, v386);
      }

      std::mutex::unlock((v180 + 80));
      if (v386[1])
      {
        v386[2] = v386[1];
        operator delete(v386[1]);
      }

      v7 = *v426;
      if (!*v426)
      {
        return;
      }

      *&v426[8] = *v426;
      goto LABEL_366;
    case 0xEF:
      v37 = v1;
      std::mutex::lock((v1 + 144));
      if (*(v180 + 2493) == 1)
      {
        *(v180 + 2493) = 0;
      }

      v78 = *(v3 + 28);
      *(v180 + 2400) = *(v3 + 12);
      *(v180 + 2416) = v78;
      v79 = *(v3 + 44);
      v80 = *(v3 + 60);
      v81 = *(v3 + 76);
      *(v180 + 2477) = *(v3 + 89);
      *(v180 + 2448) = v80;
      *(v180 + 2464) = v81;
      *(v180 + 2432) = v79;
      *(v180 + 2493) = 1;
      goto LABEL_246;
    case 0xF0:
      v52 = v2 + 12;
      v51 = *(v2 + 12);
      v53 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        if ((v51 - 1) > 3u)
        {
          v54 = "GetKeyResponse";
        }

        else
        {
          v54 = off_10099D5E0[(v51 - 1)];
        }

        LODWORD(v386[0]) = 136315138;
        *(v386 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#roseprovider,Got alisha key - subtype %s", v386, 0xCu);
      }

      if (v51 > 2)
      {
        if ((v51 - 3) >= 2)
        {
          return;
        }
      }

      else if (v51)
      {
        if (v51 != 1)
        {
          sub_1001E962C(v386, v3 + 13, *v3);
        }

        v129 = qword_1009F9820;
        if (os_signpost_enabled(qword_1009F9820))
        {
          LOWORD(v386[0]) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v129, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NIAlishaSignpost_GetKeyCompleteEvent_Process", "", v386, 2u);
        }
      }

      std::mutex::lock((v180 + 144));
      v26 = v180;
      if (*(v180 + 2563) == 1)
      {
        *(v180 + 2563) = 0;
      }

      *(v180 + 2494) = *v52;
      v118 = *(v52 + 16);
      v119 = *(v52 + 32);
      v120 = *(v52 + 48);
      *(v180 + 2555) = *(v52 + 61);
      *(v180 + 2526) = v119;
      *(v180 + 2542) = v120;
      *(v180 + 2510) = v118;
      *(v180 + 2563) = 1;
LABEL_352:
      std::condition_variable::notify_all((v26 + 32));
LABEL_353:
      v121 = (v26 + 144);
LABEL_372:
      std::mutex::unlock(v121);
      return;
    case 0xF1:
      v83 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v386[0]) = 0;
        _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "#roseprovider,Got ranging block update", v386, 2u);
      }

      v84 = *(v3 + 15);
      if ((v84 - 24) < 2)
      {
        v85 = *v3;
        LOWORD(v386[0]) = *(v3 + 13);
        v386[1] = v85;
        operator new();
      }

      if (v84 == 16)
      {
        sub_1001E96E4(v386, v3 + 12, *v3);
      }

      return;
    case 0xF2:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A7BE0();
      }

      v20 = *v3;
      v21 = *(v3 + 28);
      *(&v419[27] + 2) = *(v3 + 12);
      *(&v419[28] + 2) = v21;
      *&v419[29] = *(v3 + 42);
      LODWORD(v386[0]) = 10;
      LOBYTE(v386[1]) = 0;
      v392 = 0;
      LOBYTE(v393) = 0;
      BYTE8(v406) = 0;
      LOBYTE(v407) = 0;
      v413 = 0;
      v414[0] = 0;
      v414[128] = 0;
      v414[136] = 0;
      v414[216] = 0;
      v414[224] = 0;
      v414[328] = 0;
      LOBYTE(v415[0]) = 0;
      v418 = 0;
      LOBYTE(v419[0]) = 0;
      BYTE8(v419[16]) = 0;
      LOBYTE(v419[17]) = 0;
      BYTE8(v419[21]) = 0;
      LOBYTE(v419[22]) = 0;
      LOBYTE(v419[25]) = 0;
      *(&v419[25] + 1) = v20;
      LOBYTE(v419[26]) = 0;
      BYTE8(v419[26]) = 0;
      LOWORD(v419[27]) = WORD1(v419[27]);
      BYTE8(v419[29]) = 1;
      LOBYTE(v420[0]) = 0;
      v423 = 0;
      v22 = *(v180 + 408);
      v223 = 10;
      sub_100020458(&v224, &v386[1]);
      v240 = v403;
      v241 = v404;
      v242 = v405;
      v243 = v406;
      v236 = v399;
      v237 = v400;
      v238 = v401;
      v239 = v402;
      v232 = v395;
      v233 = v396;
      v234 = v397;
      v235 = v398;
      v230 = v393;
      v231 = v394;
      sub_1001A58DC(&v244, &v407);
      memcpy(v247, v414, sizeof(v247));
      sub_1000207A0(&v248, v415);
      memcpy(v252, v419, sizeof(v252));
      sub_10002096C(&v253, v420);
      sub_1001A5680(v22, &v223);
      if (v256 == 1 && v254)
      {
        v255 = v254;
        operator delete(v254);
      }

      if (v251 == 1 && v249)
      {
        v250 = v249;
        operator delete(v249);
      }

      if (v246[24] == 1)
      {
        *v426 = v246;
        sub_100189A94(v426);
        *v426 = &v245;
        sub_100189B38(v426);
      }

      if (v229 == 1)
      {
        if (v227)
        {
          v228 = v227;
          operator delete(v227);
        }

        if (v225)
        {
          v226 = v225;
          operator delete(v225);
        }
      }

      if (v423 == 1 && v421)
      {
        v422 = v421;
        operator delete(v421);
      }

      if (v418 == 1 && v416)
      {
        v417 = v416;
        operator delete(v416);
      }

      if (v413 == 1)
      {
        *v426 = &v411;
        sub_100189A94(v426);
        *v426 = &v409;
        sub_100189B38(v426);
      }

      if (v392 != 1)
      {
        return;
      }

      if (v387)
      {
        *(&v387 + 1) = v387;
        operator delete(v387);
      }

      v7 = v386[10];
      if (!v386[10])
      {
        return;
      }

      v386[11] = v386[10];
      goto LABEL_366;
    case 0xF3:
      v86 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v386[0]) = 0;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#roseprovider,Got alisha range response", v386, 2u);
      }

      v87 = *v3;
      LOWORD(v386[0]) = *(v3 + 12);
      v386[1] = v87;
      operator new();
    case 0xF4:
      v82 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v386[0]) = 0;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#roseprovider,Got alisha session stats", v386, 2u);
      }

      sub_1001E9790(v386, v3 + 12, *v3);
    case 0xF5:
      v90 = *(v2 + 20);
      v91 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v386[0]) = 67109120;
        HIDWORD(v386[0]) = v90;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "#roseprovider,#aop-activity, AOP Activity summary report (part 1). Num jobs: %d", v386, 8u);
      }

      if (v90)
      {
        v92 = 0;
        v93 = (v3 + 24);
        do
        {
          v94 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v95 = *(v93 - 1);
            if (v95 > 0x63)
            {
              v96 = "Alisha_ACWG";
              if (v95 != 106)
              {
                v96 = "Alisha_CCC";
              }

              if (v95 == 107)
              {
                v96 = "Localization";
              }

              if (v95 == 105)
              {
                v96 = "NMI";
              }

              v97 = "TestNMI";
              if (v95 != 104)
              {
                v97 = "Alisha_CCC";
              }

              if (v95 == 103)
              {
                v97 = "FiRa";
              }

              if (v95 == 100)
              {
                v97 = "P2P";
              }

              v98 = *(v93 - 1) <= 0x68u;
            }

            else
            {
              v96 = "GRNoDataSymmetricalSinglePeer";
              if (v95 != 5)
              {
                v96 = "Alisha_CCC";
              }

              if (v95 == 4)
              {
                v96 = "GRSymmetricalMultiPeer";
              }

              if (v95 == 3)
              {
                v96 = "GRDoubleResponseSurvey";
              }

              v97 = "GRTranspondingBeacon";
              if (v95 != 2)
              {
                v97 = "Alisha_CCC";
              }

              if (v95 == 1)
              {
                v97 = "GRSingleResponseSurvey";
              }

              if (!*(v93 - 1))
              {
                v97 = "GRBroadcastingBeacon";
              }

              v98 = *(v93 - 1) <= 2u;
            }

            if (v98)
            {
              v99 = v97;
            }

            else
            {
              v99 = v96;
            }

            v100 = *(v93 - 3);
            v101 = *v93;
            LODWORD(v386[0]) = 67109890;
            HIDWORD(v386[0]) = v92;
            LOWORD(v386[1]) = 1024;
            *(&v386[1] + 2) = v100;
            HIWORD(v386[1]) = 1024;
            LODWORD(v386[2]) = v101;
            WORD2(v386[2]) = 2080;
            *(&v386[2] + 6) = v99;
            _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "#roseprovider,#aop-activity, [Job #%d] ticket id: [%d], is ranging: [%u], type: [%s]", v386, 0x1Eu);
          }

          ++v92;
          v93 += 4;
        }

        while (v90 != v92);
      }

      std::mutex::lock((v180 + 144));
      v26 = v180;
      if (*(v180 + 2948) == 1)
      {
        *(v180 + 2948) = 0;
      }

      *(v180 + 2816) = *(v3 + 12);
      v102 = *(v3 + 28);
      v103 = *(v3 + 44);
      v104 = *(v3 + 76);
      *(v180 + 2864) = *(v3 + 60);
      *(v180 + 2880) = v104;
      *(v180 + 2832) = v102;
      *(v180 + 2848) = v103;
      v105 = *(v3 + 92);
      v106 = *(v3 + 108);
      v107 = *(v3 + 124);
      *(v180 + 2944) = *(v3 + 140);
      *(v180 + 2912) = v106;
      *(v180 + 2928) = v107;
      *(v180 + 2896) = v105;
      *(v180 + 2948) = 1;
      goto LABEL_352;
    case 0xF6:
      v28 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v386[0]) = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#roseprovider,#time-convert got time conversion state", v386, 2u);
      }

      v29 = *(v3 + 12) == 1;
      *v386 = std::chrono::steady_clock::now().__d_.__rep_;
      LODWORD(v386[1]) = 4;
      LOBYTE(v386[2]) = 0;
      LOBYTE(v386[9]) = 0;
      LOBYTE(v386[10]) = 0;
      BYTE4(v386[11]) = 0;
      LODWORD(v386[12]) = v29;
      BYTE4(v386[12]) = 1;
      LOBYTE(v386[13]) = 0;
      BYTE4(v386[17]) = 0;
      v30 = *(v180 + 408);
      v181 = v386[0];
      v182 = 4;
      sub_1001916EC(v183, &v386[2]);
      v187 = *&v386[10];
      v188 = *&v386[12];
      *v189 = *&v386[14];
      *&v189[13] = *(&v386[15] + 5);
      sub_1001A5568(v30, &v181);
      if (v186 != 1 || v185 != 1 || (v184 & 0x80000000) == 0)
      {
        goto LABEL_179;
      }

      v31 = v183[2];
LABEL_178:
      operator delete(v31);
LABEL_179:
      if (LOBYTE(v386[9]) != 1 || LOBYTE(v386[7]) != 1 || (SHIBYTE(v386[6]) & 0x80000000) == 0)
      {
        return;
      }

      v7 = v386[4];
      goto LABEL_366;
    case 0xF7:
      v88 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v386[0]) = 0;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "#roseprovider,#time-convert got time conversion result", v386, 2u);
      }

      std::mutex::lock((v180 + 144));
      v26 = v180;
      if (*(v180 + 2582) == 1)
      {
        *(v180 + 2582) = 0;
      }

      v89 = *(v3 + 12);
      *(v180 + 2580) = *(v3 + 28);
      *(v180 + 2564) = v89;
      *(v180 + 2582) = 1;
      goto LABEL_352;
    case 0xF8:
      v13 = *(v2 + 32);
      v14 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v386[0]) = 67109120;
        HIDWORD(v386[0]) = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#roseprovider,Got LPEM enable response. Status: %d", v386, 8u);
      }

      if (v13)
      {
        v15 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
        {
          sub_1004A7B68(v13, v15);
        }
      }

      return;
    case 0xF9:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A7E2C();
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A7E68();
      }

      sub_100193AD4(v386, *(v3 + 12), v3 + 14, *v3);
      v6 = *(v180 + 408);
      v259 = 11;
      v260 = 0;
      v265 = 0;
      v266 = 0;
      v267 = 0;
      v268 = 0;
      v271 = 0;
      v272 = 0;
      v273 = 0;
      v274 = 0;
      v275 = 0;
      v280 = *&v386[8];
      v281 = *&v386[10];
      v276 = *v386;
      v277 = *&v386[2];
      v278 = *&v386[4];
      v279 = *&v386[6];
      v282 = v386[12];
      v283 = 1;
      v284 = 0;
      v287 = 0;
      v288 = 0;
      v289 = 0;
      v290 = 0;
      v291 = 0;
      v292 = 0;
      v293 = 0;
      v294 = 0;
      v295 = 0;
      v296 = 0;
      v299 = 0;
      sub_1001A5680(v6, &v259);
      if (v299 == 1 && __p)
      {
        v298 = __p;
        operator delete(__p);
      }

      if (v287 == 1 && v285)
      {
        v286 = v285;
        operator delete(v285);
      }

      if (v271 == 1)
      {
        *v426 = &v270;
        sub_100189A94(v426);
        *v426 = &v269;
        sub_100189B38(v426);
      }

      if (v265 != 1)
      {
        return;
      }

      if (v263)
      {
        v264 = v263;
        operator delete(v263);
      }

      v7 = v261;
      if (!v261)
      {
        return;
      }

      v262 = v261;
      goto LABEL_366;
    case 0xFA:
      std::mutex::lock((v1 + 336));
      *(v180 + 2648) = *(v3 + 12) | 0x100;
      v32 = *(v3 + 14);
      v33 = qword_1009F9820;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(v180 + 2649) & 1) == 0)
        {
          sub_1000195BC();
        }

        v34 = *(v180 + 2648);
        if (v34 > 2)
        {
          v35 = "";
        }

        else
        {
          v35 = off_10099D660[v34];
        }

        v122 = *(v3 + 13);
        if (v122 > 3)
        {
          v123 = "";
        }

        else
        {
          v123 = off_10099D600[v122];
        }

        v124 = "N";
        LODWORD(v386[0]) = 136315650;
        *(v386 + 4) = v35;
        WORD2(v386[1]) = 2080;
        if (v32)
        {
          v124 = "Y";
        }

        *(&v386[1] + 6) = v123;
        HIWORD(v386[2]) = 2080;
        v386[3] = v124;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#roseprovider,#deep-slp DeepSleepReport state %s, lastReq %s successful? %s", v386, 0x20u);
      }

      v121 = (v180 + 336);
      goto LABEL_372;
    case 0xFB:
      if (*(v1 + 2264))
      {
        memset(v386, 0, 24);
        sub_1001E6820(v1, v386, *v2);
        sub_1002EA894(*(v180 + 2264), v386, v3 + 12);
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A7AB8();
      }

      return;
    case 0xFC:
      if (*(v2 + 112) == 100)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A7A3C();
        }
      }

      else
      {
        if (*(v1 + 2264))
        {
          memset(v386, 0, 24);
          sub_1001E6820(v1, v386, *v2);
          sub_1002EA5FC(*(v180 + 2264), v386, v3 + 12);
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A7980();
        }
      }

      return;
    case 0xFD:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A78F4();
      }

      v386[0] = *v3;
      operator new();
    case 0xFE:
      if (*(v1 + 2264))
      {
        memset(v386, 0, 24);
        sub_1001E6820(v1, v386, *v2);
        sub_1002EAA8C(*(v180 + 2264), v386, (v3 + 12));
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A7840();
      }

      return;
    case 0xFF:
      v36 = *(v2 + 12);
      if (v36 <= 2)
      {
        v37 = v1;
        if (*(v2 + 12))
        {
          if (v36 == 1)
          {
            std::mutex::lock((v1 + 144));
            if (*(v180 + 3098) == 1)
            {
              *(v180 + 3098) = 0;
            }

            v140 = *(v3 + 30);
            *(v180 + 2949) = *(v3 + 14);
            *(v180 + 2965) = v140;
            v141 = *(v3 + 46);
            v142 = *(v3 + 62);
            v143 = *(v3 + 94);
            *(v180 + 3013) = *(v3 + 78);
            *(v180 + 3029) = v143;
            *(v180 + 2981) = v141;
            *(v180 + 2997) = v142;
            v144 = *(v3 + 110);
            v145 = *(v3 + 126);
            v146 = *(v3 + 142);
            *(v180 + 3090) = *(v3 + 155);
            *(v180 + 3061) = v145;
            *(v180 + 3077) = v146;
            *(v180 + 3045) = v144;
            *(v180 + 3098) = 1;
LABEL_246:
            std::condition_variable::notify_all((v37 + 32));

            std::mutex::unlock((v37 + 144));
          }

          else if (v36 == 2)
          {
            if (*(v1 + 2264))
            {
              memset(v386, 0, 24);
              sub_1001E6820(v1, v386, *v2);
              sub_1002EAF40(*(v180 + 2264), v386, v3 + 14);
            }

            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
            {
              sub_1004A7728();
            }
          }
        }

        else
        {
          if (*(v1 + 2264))
          {
            memset(v386, 0, 24);
            sub_1001E6820(v1, v386, *v2);
            sub_1002EACE8(*(v180 + 2264), v386, v3 + 14);
          }

          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
          {
            sub_1004A7798();
          }
        }

        return;
      }

      if (v36 == 3)
      {
        if (*(v1 + 2264))
        {
          memset(v386, 0, 24);
          sub_1001E6820(v1, v386, *v2);
          sub_1002EB134(*(v180 + 2264), v386, (v3 + 14));
        }

        v130 = *(v3 + 62);
        v131 = *(v3 + 64);
        v132 = sub_1003A0BA8(*(v3 + 53));
        sub_1003A03C4(v132, v426);
        if (v426[23] >= 0)
        {
          v133 = v426;
        }

        else
        {
          v133 = *v426;
        }

        v134 = snprintf(v386, 0x400uLL, "BI: %u RI: %u, %s", v130, v131, v133);
        if ((v426[23] & 0x80000000) != 0)
        {
          operator delete(*v426);
        }

        if (*(v3 + 22))
        {
          v135 = 0;
          v136 = (v3 + 102);
          do
          {
            v137 = *v136 / 3.19488e10;
            v138 = snprintf(v386 + v134, 1024 - v134, " <RX: 0x%02x, SR: %.2f, ", *(v136 - 5), vcvtd_n_f64_s32(*(v136 - 2), 2uLL)) + v134;
            v134 = snprintf(v386 + v138, 1024 - v138, "ZO: %u, LZ: %u, R: %.2fm>", *(v136 - 2), *(v136 - 1), v137 * 299792458.0) + v138;
            ++v135;
            v136 = (v136 + 13);
          }

          while (v135 < *(v3 + 22));
        }

        v139 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v426 = 136315138;
          *&v426[4] = v386;
          _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "#roseprovider,ARD: %s", v426, 0xCu);
        }

        return;
      }

      if (v36 != 4)
      {
        if (v36 == 5)
        {
          v108 = *(v2 + 17);
          v109 = qword_1009F9820;
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
          {
            v110 = *(v3 + 14);
            v111 = off_10099D640[v108 & 3];
            v112 = *(v3 + 16);
            v113 = *(v3 + 17);
            LODWORD(v386[0]) = 67110402;
            HIDWORD(v386[0]) = v110;
            LOWORD(v386[1]) = 1024;
            *(&v386[1] + 2) = v110;
            HIWORD(v386[1]) = 2080;
            v386[2] = v111;
            LOWORD(v386[3]) = 1024;
            *(&v386[3] + 2) = v112;
            HIWORD(v386[3]) = 1024;
            LODWORD(v386[4]) = (v113 >> 2) & 1;
            WORD2(v386[4]) = 1024;
            *(&v386[4] + 6) = (v113 >> 3) & 1;
            _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#roseprovider,#aop-sf-zone-update: btConnHandle = 0x%04x (%u), zone: %s, RSSI: %d, displacing: %d, SFinBubble: %d", v386, 0x2Au);
          }

          operator new();
        }

        return;
      }

      v147 = *(v2 + 16) + 16;
      v383 = 0;
      v382 = 0uLL;
      sub_1000069DC(&v382, (v2 + 18), (v2 + 18 + v147), v147);
      sub_10046E70C(&buf, (v180 + 2712), &v382);
      if (v222 != 1)
      {
        goto LABEL_170;
      }

      v148 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v386[0]) = 67113472;
        HIDWORD(v386[0]) = WORD3(v212);
        LOWORD(v386[1]) = 1024;
        *(&v386[1] + 2) = buf;
        HIWORD(v386[1]) = 1024;
        LODWORD(v386[2]) = WORD4(v211);
        WORD2(v386[2]) = 1024;
        *(&v386[2] + 6) = WORD5(v211);
        WORD1(v386[3]) = 1024;
        HIDWORD(v386[3]) = v212;
        LOWORD(v386[4]) = 1024;
        *(&v386[4] + 2) = BYTE1(v212);
        HIWORD(v386[4]) = 1024;
        LODWORD(v386[5]) = BYTE4(v212);
        WORD2(v386[5]) = 1024;
        *(&v386[5] + 6) = WORD4(v212);
        WORD1(v386[6]) = 1024;
        HIDWORD(v386[6]) = WORD3(v212);
        LOWORD(v386[7]) = 2048;
        *(&v386[7] + 2) = *(&v212 + 3);
        WORD1(v386[8]) = 2048;
        *(&v386[8] + 4) = *v213;
        WORD2(v386[9]) = 2048;
        *(&v386[9] + 6) = *&v213[8];
        HIWORD(v386[10]) = 1024;
        LODWORD(v386[11]) = *&v213[16];
        WORD2(v386[11]) = 1024;
        *(&v386[11] + 6) = *&v213[20];
        WORD1(v386[12]) = 2048;
        *(&v386[12] + 4) = *&v213[24];
        WORD2(v386[13]) = 2048;
        *(&v386[13] + 6) = v214;
        HIWORD(v386[14]) = 2048;
        v386[15] = *(&v214 + 1);
        LOWORD(v386[16]) = 1024;
        *(&v386[16] + 2) = v215;
        _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "#roseprovider, GOT DTM from [0x%04x]: { [status: %hu, block_idx: %u, round_idx: %u, nRes: %hu, nS: %hu, nF: %hu]. POLL: [rx_status: 0x%0x, addr: 0x%04x, rssi: %.4f, local_ts: %.10f, dtm_ts: %.10f, cfo_ppt: %d]. FINAL: [rx_status: 0x%0x, rssi_dbm: %.1f, local_ts: %.10f, dtm_ts: %.10f, cfo_ppt: %d]. }", v386, 0x86u);
      }

      v149 = +[NSUserDefaults standardUserDefaults];
      v150 = [v149 BOOLForKey:@"NIDLTDOAShowCoordinates"];

      v151 = v180;
      if (!v150)
      {
        goto LABEL_409;
      }

      if (v217 == 1)
      {
        v152 = qword_1009F9820;
        if (!os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_408;
        }

        if ((v217 & 1) == 0)
        {
          sub_1000195BC();
        }

        LODWORD(v386[0]) = 134218496;
        *(v386 + 4) = *(&v215 + 1);
        WORD2(v386[1]) = 2048;
        *(&v386[1] + 6) = v216;
        HIWORD(v386[2]) = 2048;
        v386[3] = *(&v216 + 1);
        v153 = "#roseprovider,\t\t                   initator coordinates: [lat: %.11f deg, lon: %.11f deg, alt: %.11f m]";
        goto LABEL_407;
      }

      if (v219 != 1)
      {
        goto LABEL_409;
      }

      v152 = qword_1009F9820;
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        if ((v219 & 1) == 0)
        {
          sub_1000195BC();
        }

        LODWORD(v386[0]) = 134218496;
        *(v386 + 4) = *(&v217 + 1);
        WORD2(v386[1]) = 2048;
        *(&v386[1] + 6) = v218;
        HIWORD(v386[2]) = 2048;
        v386[3] = *(&v218 + 1);
        v153 = "#roseprovider,\t\t                   initator coordinates: [x: %.3f m, y: %.3f m, z: %.3f m]";
LABEL_407:
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, v153, v386, 0x20u);
      }

LABEL_408:

      v151 = v180;
LABEL_409:
      v154 = v221;
      v155 = v220;
      if (v221 != v220)
      {
        v156 = 0;
        v157 = 56;
        while (1)
        {
          v158 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v159 = *&v220[v157 - 56];
            v160 = *&v220[v157 - 48];
            v161 = *&v220[v157 - 46];
            v162 = *&v220[v157 - 52];
            v164 = *&v220[v157 - 40];
            v163 = *&v220[v157 - 32];
            LODWORD(v386[0]) = 67110656;
            HIDWORD(v386[0]) = v156;
            LOWORD(v386[1]) = 1024;
            *(&v386[1] + 2) = v159;
            HIWORD(v386[1]) = 1024;
            LODWORD(v386[2]) = v160;
            WORD2(v386[2]) = 1024;
            *(&v386[2] + 6) = v161;
            WORD1(v386[3]) = 2048;
            *(&v386[3] + 4) = *&v162;
            WORD2(v386[4]) = 2048;
            *(&v386[4] + 6) = v164;
            HIWORD(v386[5]) = 2048;
            v386[6] = v163;
            _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEFAULT, "#roseprovider,\t\t\t\tresp %d: [rx_status: 0x%0x, address: 0x%04x, dtm_block_idx: %d, soi_rssi: %.1f, local_ts_sec: %.10f, dtm_ts_sec: %.10f]", v386, 0x38u);
          }

          v165 = +[NSUserDefaults standardUserDefaults];
          v166 = [v165 BOOLForKey:@"NIDLTDOAShowCoordinates"];

          if (!v166)
          {
            goto LABEL_424;
          }

          if (v220[v157 + 24] == 1)
          {
            break;
          }

          if (v220[v157 + 56] == 1)
          {
            v167 = qword_1009F9820;
            if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
            {
              v174 = &v220[v157];
              if ((v220[v157 + 56] & 1) == 0)
              {
                sub_1000195BC();
              }

              v175 = *(v174 + 4);
              v176 = *(v174 + 5);
              v177 = *(v174 + 6);
              LODWORD(v386[0]) = 134218496;
              *(v386 + 4) = v175;
              WORD2(v386[1]) = 2048;
              *(&v386[1] + 6) = v176;
              HIWORD(v386[2]) = 2048;
              v386[3] = v177;
              v172 = v167;
              v173 = "#roseprovider,\t\t\t\t\t      coordinates:[x: %.3f m, y: %.3f m, z: %.3f m]";
LABEL_422:
              _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, v173, v386, 0x20u);
            }

LABEL_423:
          }

LABEL_424:
          ++v156;
          v154 = v221;
          v155 = v220;
          v157 += 120;
          if (0xEEEEEEEEEEEEEEEFLL * ((v221 - v220) >> 3) <= v156)
          {
            v151 = v180;
            goto LABEL_426;
          }
        }

        v167 = qword_1009F9820;
        if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
        {
          v168 = &v220[v157];
          if ((v220[v157 + 24] & 1) == 0)
          {
            sub_1000195BC();
          }

          v169 = *v168;
          v170 = *(v168 + 1);
          v171 = *(v168 + 2);
          LODWORD(v386[0]) = 134218496;
          *(v386 + 4) = v169;
          WORD2(v386[1]) = 2048;
          *(&v386[1] + 6) = v170;
          HIWORD(v386[2]) = 2048;
          v386[3] = v171;
          v172 = v167;
          v173 = "#roseprovider,\t\t\t\t\t      coordinates: [lat: %.11f deg, lon: %.11f deg, alt: %.11f m]";
          goto LABEL_422;
        }

        goto LABEL_423;
      }

LABEL_426:
      if ((v222 & 1) == 0)
      {
        sub_1000195BC();
      }

      v178 = *(v3 + 14);
      *v426 = *v3;
      v426[8] = 0;
      v426[16] = 0;
      *&v426[24] = v178;
      v427 = v217;
      v428 = v218;
      LOBYTE(v429) = v219;
      *&v426[96] = *&v213[16];
      *&v426[112] = v214;
      *&v426[128] = v215;
      *&v426[144] = v216;
      *&v426[32] = buf;
      *&v426[48] = v211;
      *&v426[64] = v212;
      *&v426[80] = *v213;
      v430 = 0uLL;
      *(&v429 + 1) = 0;
      sub_100020A60(&v429 + 1, v155, v154, 0xEEEEEEEEEEEEEEEFLL * ((v154 - v155) >> 3));
      sub_1001E9838(v386, v426);
      v179 = *(v151 + 408);
      sub_1001E8EC4(v209, v386);
      sub_1001A5680(v179, v209);
      sub_1001A5A20(v209);
      sub_1001A5A20(v386);
      if (*(&v429 + 1))
      {
        *&v430 = *(&v429 + 1);
        operator delete(*(&v429 + 1));
      }

      if (v222)
      {
        v49 = v220;
        if (v220)
        {
          v221 = v220;
LABEL_169:
          operator delete(v49);
        }
      }

LABEL_170:
      v7 = v382;
      if (!v382)
      {
        return;
      }

      *(&v382 + 1) = v382;
LABEL_366:
      operator delete(v7);
      return;
    default:
      return;
  }
}

void sub_1001E33C8(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0xAE0]) == 1)
  {
    v3 = STACK[0xAC8];
    if (STACK[0xAC8])
    {
      STACK[0xAD0] = v3;
      operator delete(v3);
    }
  }

  v4 = STACK[0x42B0];
  if (STACK[0x42B0])
  {
    STACK[0x42B8] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}