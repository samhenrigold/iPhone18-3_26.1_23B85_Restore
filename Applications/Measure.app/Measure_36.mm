void sub_100277DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100277E60(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
    {
      v2 = *(result + 8);
      if (v2)
      {
        v3 = v2[8];
        if (v3)
        {
          v2[9] = v3;
          operator delete(v3);
        }

        v4 = v2[5];
        if (v4)
        {
          v2[6] = v4;
          operator delete(v4);
        }

        operator delete();
      }
    }
  }

  *(result + 8) = 0;
  return result;
}

void sub_100277F28(uint64_t a1, int a2, uint64_t a3, unsigned int a4, void *a5, uint64_t a6)
{
  v6 = (((a4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a4 & 7))) & 3);
  v7 = (a2 - 1);
  if (a2 < 1)
  {
    goto LABEL_18;
  }

  if (a6)
  {
    if (a5)
    {
      do
      {
        v8 = *(a6 + 8 * v7);
        if (v8 == 0x7FFFFFFF)
        {
          *(a6 + 8 * v7) = v6;
        }

        else
        {
          v9 = v6 > v8;
          v6 = *(a6 + 8 * v7);
          if (v9)
          {
            v15[0] = 0;
            v15[1] = 0;
            *sub_1002A80E0(v15, 16) = *"total <= step[i]";
            sub_1002A8980(-215, v15, "allocate", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 183);
          }
        }

        v6 *= *(a3 + 4 * v7--);
      }

      while (v7 != -1);
    }

    else
    {
      do
      {
        *(a6 + 8 * v7) = v6;
        v6 *= *(a3 + 4 * v7--);
      }

      while (v7 != -1);
    }
  }

  else
  {
    if (a2 == 1)
    {
      v10 = 0;
    }

    else
    {
      v11 = a2 & 0x7FFFFFFE;
      v10 = v7 - v11;
      v12 = (a3 + 4 * v7);
      v13 = 1;
      v14 = v11;
      do
      {
        v6 *= *v12;
        v13 *= *(v12 - 1);
        v12 -= 2;
        v14 -= 2;
      }

      while (v14);
      v6 *= v13;
      if (v11 == a2)
      {
        goto LABEL_18;
      }
    }

    do
    {
      v6 *= *(a3 + 4 * v10--);
    }

    while (v10 != -1);
  }

LABEL_18:
  if (!a5)
  {
    sub_1001D8FE8(v6);
  }

  operator new();
}

void sub_10027814C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 16))
    {
      v4 = 0;
      v5 = 0;
      v3 = sub_1002A80E0(&v4, 17);
      *(v3 + 16) = 48;
      *v3 = *"u->urefcount == 0";
      sub_1002A8980(-215, &v4, "deallocate", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 212);
    }

    if (*(a2 + 20))
    {
      v4 = 0;
      v5 = 0;
      *sub_1002A80E0(&v4, 16) = *"u->refcount == 0";
      sub_1002A8980(-215, &v4, "deallocate", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 213);
    }

    if ((*(a2 + 48) & 0x20) == 0)
    {
      j__free(*(a2 + 32));
      *(a2 + 32) = 0;
    }

    sub_1002AF5B4(a2);
    operator delete();
  }
}

uint64_t sub_100278284(uint64_t result, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    if (a2 == 1)
    {
      v4 = 0;
      v5 = v3 - 1;
      v6 = (result + 17);
      v7 = result + 1;
      v8 = 1;
      v9 = result;
      v10 = result + 1;
      v11 = (result + 17);
      while (1)
      {
        v12 = v4 + 1;
        if (v4 + 1 < v3)
        {
          break;
        }

LABEL_4:
        ++v8;
        --v5;
        v11 = (v11 + 2);
        v6 = (v6 + 2);
        v10 += 2;
        v7 += 2;
        ++v9;
        ++result;
        v4 = v12;
        if (v12 == v3)
        {
          return result;
        }
      }

      v13 = ~v4 + v3;
      v14 = v8;
      if (v13 > 7)
      {
        if (v13 < 0x20)
        {
          v15 = 0;
          goto LABEL_13;
        }

        v16 = v5 & 0xFFFFFFFFFFFFFFE0;
        v15 = v13 & 0xFFFFFFFFFFFFFFE0;
        v17 = v6;
        v18 = v11;
        do
        {
          v19 = *(v18 - 1);
          v20 = *v18;
          v21 = *v17;
          *(v18 - 1) = *(v17 - 1);
          *v18 = v21;
          *(v17 - 1) = v19;
          *v17 = v20;
          v18 += 2;
          v17 += 2;
          v16 -= 32;
        }

        while (v16);
        if (v13 == v15)
        {
          goto LABEL_4;
        }

        if ((v13 & 0x18) != 0)
        {
LABEL_13:
          v14 = v8 + (v13 & 0xFFFFFFFFFFFFFFF8);
          v22 = v15 - (v5 & 0xFFFFFFFFFFFFFFF8);
          v23 = (v10 + v15);
          v24 = (v7 + v15);
          do
          {
            v25 = *v24;
            *v24++ = *v23;
            *v23++ = v25;
            v22 += 8;
          }

          while (v22);
          if (v13 == (v13 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }

        v14 = v8 + v15;
      }

LABEL_18:
      v26 = v3 - v14;
      v27 = (v9 + v14);
      v28 = (result + v14);
      do
      {
        v29 = *v28;
        *v28++ = *v27;
        *v27++ = v29;
        --v26;
      }

      while (v26);
      goto LABEL_4;
    }

    v30 = 0;
    v31 = a3 - 1;
    v32 = (result + a2);
    v33 = a2 + 1;
    v34 = (result + 1);
    do
    {
      if (++v30 < a3)
      {
        v35 = v34;
        v36 = v32;
        v37 = v31;
        do
        {
          v38 = *v35;
          result = *v36;
          *v35++ = result;
          *v36 = v38;
          v36 += a2;
          --v37;
        }

        while (v37);
      }

      --v31;
      v32 += v33;
      v34 += v33;
    }

    while (v30 != a3);
  }

  return result;
}

uint64_t sub_100278430(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = (result + a2);
    v6 = a2 + 2;
    v7 = (result + 2);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = *v8;
          result = *v9;
          *v8++ = result;
          *v9 = v11;
          v9 = (v9 + a2);
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = (v5 + v6);
      v7 = (v7 + v6);
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t sub_1002784A4(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3;
    v5 = a3 - 1;
    v6 = (result + 5);
    v7 = a2 + 3;
    v8 = a2 + result + 1;
    do
    {
      if (++v3 < v4)
      {
        v9 = v8;
        v10 = v6;
        v11 = v5;
        do
        {
          v12 = *(v10 - 1);
          result = *v10;
          v13 = *(v9 + 1);
          *(v10 - 1) = *(v9 - 1);
          *v10 = v13;
          v10 += 3;
          *(v9 - 1) = v12;
          *(v9 + 1) = result;
          v9 += a2;
          --v11;
        }

        while (v11);
      }

      --v5;
      v6 += v7;
      v8 += v7;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_10027852C(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = (result + a2);
    v6 = a2 + 4;
    v7 = (result + 4);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = *v8;
          result = *v9;
          *v8++ = result;
          *v9 = v11;
          v9 = (v9 + a2);
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = (v5 + v6);
      v7 = (v7 + v6);
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t sub_1002785A0(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3;
    v5 = a3 - 1;
    v6 = (result + 6);
    v7 = a2 + 6;
    v8 = (result + a2);
    do
    {
      if (++v3 < v4)
      {
        v9 = v8;
        v10 = v6;
        v11 = v5;
        do
        {
          v12 = *v10;
          result = *(v10 + 2);
          v13 = *(v9 + 2);
          *v10 = *v9;
          *(v10 + 2) = v13;
          *v9 = v12;
          *(v9 + 2) = result;
          v10 = (v10 + 6);
          v9 = (v9 + a2);
          --v11;
        }

        while (v11);
      }

      --v5;
      v6 = (v6 + v7);
      v8 = (v8 + v7);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_100278628(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = (result + a2);
    v6 = a2 + 8;
    v7 = (result + 8);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = *v8;
          result = *v9;
          *v8++ = *v9;
          *v9 = v11;
          v9 = (v9 + a2);
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = (v5 + v6);
      v7 = (v7 + v6);
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t sub_10027869C(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = (result + a2);
    v6 = a2 + 12;
    v7 = (result + 12);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = *(v8 + 2);
          v12 = *v8;
          result = *(v9 + 2);
          *v8 = *v9;
          *(v8 + 2) = result;
          *v9 = v12;
          *(v9 + 2) = v11;
          v9 = (v9 + a2);
          v8 = (v8 + 12);
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = (v5 + v6);
      v7 = (v7 + v6);
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t sub_100278724(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = (result + a2);
    v6 = a2 + 16;
    v7 = (result + 16);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        v11 = v7;
        do
        {
          v12 = *v11++;
          *v8 = *v9;
          *v9 = v12;
          v9 = (v9 + a2);
          v8 = v11;
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = (v5 + v6);
      v7 = (v7 + v6);
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t sub_1002787A0(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = (result + a2);
    v6 = a2 + 24;
    v7 = (result + 24);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = *v8;
          v12 = *(v8 + 2);
          v13 = *(v9 + 2);
          *v8 = *v9;
          *(v8 + 2) = v13;
          *v9 = v11;
          *(v9 + 2) = v12;
          v9 = (v9 + a2);
          v8 = (v8 + 24);
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = (v5 + v6);
      v7 = (v7 + v6);
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t sub_100278828(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = (result + a2);
    v6 = a2 + 32;
    v7 = (result + 32);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = *v8;
          v12 = v8[1];
          v13 = v9[1];
          *v8 = *v9;
          v8[1] = v13;
          v8 += 2;
          *v9 = v11;
          v9[1] = v12;
          v9 = (v9 + a2);
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = (v5 + v6);
      v7 = (v7 + v6);
    }

    while (v3 != a3);
  }

  return result;
}

unint64_t sub_10027889C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = result;
  v7 = *a5;
  v6 = a5[1];
  v8 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v9) = 0;
    if (v7 <= 0)
    {
      return result;
    }

    goto LABEL_169;
  }

  if (v6 >= 4)
  {
    v150 = *a5;
    v15 = 0;
    v16 = (v6 - 4);
    v17 = v16 & 0x7FFFFFFC;
    v18 = a3 + v17 + 4;
    v157 = v17 + 4;
    if (v17 + 5 <= v6)
    {
      v19 = a5[1];
    }

    else
    {
      v19 = (v16 & 0x7FFFFFFC) + 5;
    }

    v20 = a3 + v19;
    v21 = v19;
    v158 = v19;
    v22 = a3 + v19 + 4 * (v8 >> 2) * a4;
    v23 = a3 + v17;
    v24 = a3 + v17 + a4 + 4;
    v25 = v20 + (v8 & 0x7FFFFFFC | 1) * a4;
    v26 = a3 + v17 + 2 * a4 + 4;
    v27 = v20 + (v8 & 0x7FFFFFFC | 2) * a4;
    v147 = 3 * a4;
    v148 = 2 * a4;
    v28 = a3 + v17 + 3 * a4 + 4;
    v29 = v20 + (v8 | 3) * a4;
    v30 = result + (v16 & 0x7FFFFFFC) + 4;
    v31 = result + (v8 & 0x7FFFFFFC) + v21;
    v32 = result + v17 + 5;
    v33 = a3;
    v34 = v31 + 1;
    v35 = result + v17 + 6;
    v36 = v31 + 2;
    v37 = result + v17 + 7;
    v38 = v31 + 3;
    v40 = v18 < v27 && v26 < v22;
    if (v18 < v25 && v24 < v22)
    {
      v40 = 1;
    }

    if (v18 < v29 && v28 < v22)
    {
      v40 = 1;
    }

    if (v18 < v31 && v30 < v22)
    {
      v40 = 1;
    }

    if (v18 < v34 && v32 < v22)
    {
      v40 = 1;
    }

    if (v18 < v36 && v35 < v22)
    {
      v40 = 1;
    }

    v47 = v18 < v38 && v37 < v22 || v40;
    v155 = v47;
    v49 = v24 < v27 && v26 < v25;
    v154 = v49;
    v51 = v24 < v29 && v28 < v25;
    v153 = v51;
    v53 = v24 < v31 && v30 < v25 || (a4 & 0x2000000000000000) != 0;
    v152 = v53;
    v55 = v24 < v34 && v32 < v25;
    v151 = v55;
    v57 = v24 < v36 && v35 < v25;
    v59 = v24 < v38 && v37 < v25;
    v61 = v26 < v29 && v28 < v27;
    v63 = v26 < v31 && v30 < v27;
    v65 = v26 < v34 && v32 < v27;
    v67 = v26 < v36 && v35 < v27;
    v69 = v26 < v38 && v37 < v27 || (a4 & 0x2000000000000000) != 0;
    v71 = v28 < v31 && v30 < v29;
    v73 = v28 < v34 && v32 < v29;
    v75 = v28 < v36 && v35 < v29;
    v76 = v158 - v17 - 4;
    v78 = v28 < v38 && v37 < v29;
    v79 = (v78 || v75 || v73 || v71 || v67 || v65 || v63 || v69) | (v61 || v59 || v57 || v151 || v154 || v153 || v152) | v155;
    v159 = v158 - v17 - 4;
    v80 = v76 & 0xFFFFFFFFFFFFFFF8;
    v82 = v76 < 8 || a2 != 1;
    v156 = v82 | v79;
    v83 = 4 * a4;
    v84 = a2 + 3;
    v85 = 2 * a2 + 3;
    v86 = 3 * a2;
    v87 = v17 + v147 + v33 + 4;
    v88 = v17 + v148 + v33 + 4;
    v89 = a4 + v33 + v17 + 4;
    v90 = v33 + v147;
    v91 = v33 + v148;
    v92 = v33 + a4;
    v149 = v5;
    v93 = v5;
    v94 = v33;
    while (1)
    {
      v95 = 0;
      result = v93;
      do
      {
        v96 = (v94 + v95);
        *v96 = *result;
        v96[1] = *(result + a2);
        v96[2] = *(result + 2 * a2);
        v96[3] = *(result + 3 * a2);
        v97 = (v94 + v95 + a4);
        *v97 = *(result + 1);
        v97[1] = *(result + v84 - 2);
        v97[2] = *(result + v85 - 2);
        v97[3] = *(result + v86 + 1);
        v98 = &v97[a4];
        *v98 = *(result + 2);
        v98[1] = *(result + v84 - 1);
        v98[2] = *(result + v85 - 1);
        v98[3] = *(result + v86 + 2);
        v99 = &v98[a4];
        *v99 = *(result + 3);
        v99[1] = *(result + v84);
        v99[2] = *(result + v85);
        v99[3] = *(result + v86 + 3);
        v95 += 4;
        result += 4 * a2;
      }

      while (v95 <= v16);
      if (v6 <= v95)
      {
        goto LABEL_148;
      }

      v100 = (v16 & 0x7FFFFFFC) + 4;
      if (v156)
      {
        goto LABEL_161;
      }

      if (v159 < 0x20)
      {
        break;
      }

      v101 = v16 & 0x7FFFFFFC;
      result = v76 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v102 = *(v93 + v101 + 20);
        *(v94 + v101 + 4) = *(v93 + v101 + 4);
        v103 = v94 + v101 + 4;
        *(v103 + 16) = v102;
        v104 = *(v93 + v101 + 21);
        v105 = (v103 + a4);
        *v105 = *(v93 + v101 + 5);
        v105[1] = v104;
        v106 = *(v93 + v101 + 22);
        v107 = (v105 + a4);
        *v107 = *(v93 + v101 + 6);
        v107[1] = v106;
        v108 = *(v93 + v101 + 23);
        v109 = (v107 + a4);
        *v109 = *(v93 + v101 + 7);
        v109[1] = v108;
        v101 += 32;
        result -= 32;
      }

      while (result);
      if (v159 == (v76 & 0xFFFFFFFFFFFFFFE0))
      {
        goto LABEL_148;
      }

      result = v76 & 0xFFFFFFFFFFFFFFE0;
      v100 = v157 + (v76 & 0xFFFFFFFFFFFFFFE0);
      if ((v76 & 0x18) != 0)
      {
        goto LABEL_159;
      }

LABEL_161:
      result = a2 * v100;
      do
      {
        *(v94 + v100) = *(v93 + result);
        *(v92 + v100) = *(v93 + result + 1);
        *(v91 + v100) = *(v93 + result + 2);
        *(v90 + v100++) = *(v93 + result + 3);
        result += a2;
      }

      while (v100 < v6);
LABEL_148:
      v15 += 4;
      v94 += v83;
      v93 += 4;
      v87 += v83;
      v37 += 4;
      v88 += v83;
      v89 += v83;
      v23 += v83;
      v90 += v83;
      v91 += v83;
      v92 += v83;
      if (v15 > v8)
      {
        LODWORD(v9) = v15;
        v7 = v150;
        a3 = v33;
        v5 = v149;
        if (v15 >= v150)
        {
          return result;
        }

LABEL_169:
        if (v6 < 4)
        {
          if (v6 >= 1)
          {
            v111 = (v5 + v9);
            v112 = (a3 + a4 * v9 + 2);
            do
            {
              *(v112 - 2) = *v111;
              if (v6 != 1)
              {
                *(v112 - 1) = v111[a2];
                if (v6 != 2)
                {
                  *v112 = v111[2 * a2];
                }
              }

              LODWORD(v9) = v9 + 1;
              ++v111;
              v112 += a4;
            }

            while (v7 > v9);
          }

          return result;
        }

        v113 = (v6 - 4);
        v114 = v9;
        v115 = v113 & 0x7FFFFFFC;
        v116 = v115 + 4;
        v117 = v9 * a4;
        v118 = a3 + v117;
        v119 = v115 + 5;
        if (v115 + 5 <= v6)
        {
          v119 = v6;
        }

        v120 = v9 + (v7 + ~v9);
        v121 = a3 + v119 + v120 * a4;
        v122 = (v5 + v9);
        v123 = a3;
        v124 = v120 + v5 + v119;
        v125 = v119 - v115 - 4;
        v127 = v116 + a3 + v117 < v124 && v116 + v5 + v114 < v121;
        result = v125 & 0x18;
        v128 = v125 & 0xFFFFFFFFFFFFFFF8;
        v130 = v125 < 8 || a2 != 1;
        v131 = v130 || a4 < 0 || v127;
        v132 = v118 + 1;
        v133 = v117 + v123 + v115 + 20;
        v134 = v115 + v114 + v5 + 20;
        while (2)
        {
          v135 = 0;
          v136 = v122;
          do
          {
            v137 = (v132 + v135);
            *(v137 - 1) = *v136;
            *v137 = v136[a2];
            v137[1] = v136[2 * a2];
            v137[2] = v136[3 * a2];
            v135 += 4;
            v136 += 4 * a2;
          }

          while (v135 <= v113);
          if (v6 > v135)
          {
            v138 = (v113 & 0x7FFFFFFC) + 4;
            if (v131)
            {
              goto LABEL_205;
            }

            if (v125 >= 0x20)
            {
              v140 = v134;
              v141 = v133;
              v142 = v125 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v143 = *v140;
                *(v141 - 1) = *(v140 - 1);
                *v141 = v143;
                v141 += 2;
                v140 += 2;
                v142 -= 32;
              }

              while (v142);
              if (v125 != (v125 & 0xFFFFFFFFFFFFFFE0))
              {
                v139 = v125 & 0xFFFFFFFFFFFFFFE0;
                v138 = v116 + (v125 & 0xFFFFFFFFFFFFFFE0);
                if ((v125 & 0x18) != 0)
                {
                  goto LABEL_202;
                }

                goto LABEL_205;
              }
            }

            else
            {
              v139 = 0;
LABEL_202:
              v144 = v139 - v128;
              v145 = v116 + v139;
              do
              {
                *(v118 + v145) = *&v122[v145];
                v145 += 8;
                v144 += 8;
              }

              while (v144);
              v138 = v116 + (v125 & 0xFFFFFFFFFFFFFFF8);
              if (v125 != v128)
              {
LABEL_205:
                v146 = a2 * v138;
                do
                {
                  *(v118 + v138++) = v122[v146];
                  v146 += a2;
                }

                while (v138 < v6);
              }
            }
          }

          ++v114;
          ++v122;
          v132 += a4;
          v133 += a4;
          ++v134;
          v118 += a4;
          if (v7 <= v114)
          {
            return result;
          }

          continue;
        }
      }
    }

    result = 0;
    do
    {
LABEL_159:
      v110 = *(v37 + result - 3);
      *(v89 + result) = *(v37 + result - 2);
      *(v88 + result) = *(v37 + result - 1);
      *(v23 + result + 4) = v110;
      *(v87 + result) = *(v37 + result);
      result += 8;
    }

    while (v80 != result);
    v100 = v157 + (v76 & 0xFFFFFFFFFFFFFFF8);
    if (v159 == v80)
    {
      goto LABEL_148;
    }

    goto LABEL_161;
  }

  if (v6 <= 0)
  {
    LODWORD(v9) = (v8 & 0xFFFFFFFC) + 4;
    if (v9 >= v7)
    {
      return result;
    }

    goto LABEL_169;
  }

  v9 = 0;
  v10 = (a3 + 1);
  v11 = result + a2;
  v12 = 2 * a4;
  v13 = 3 * a4;
  v14 = result + 2 * a2;
  do
  {
    *(v10 - 1) = *(v5 + v9);
    v10[a4 - 1] = *(v5 + v9 + 1);
    v10[v12 - 1] = *(v5 + v9 + 2);
    result = *(v5 + v9 + 3);
    v10[v13 - 1] = result;
    if (v6 != 1)
    {
      *v10 = *(v11 + v9);
      v10[a4] = *(v11 + v9 + 1);
      v10[2 * a4] = *(v11 + v9 + 2);
      result = *(v11 + v9 + 3);
      v10[3 * a4] = result;
      if (v6 != 2)
      {
        v10[1] = *(v14 + v9);
        v10[a4 + 1] = *(v14 + v9 + 1);
        v10[v12 + 1] = *(v14 + v9 + 2);
        result = *(v14 + v9 + 3);
        v10[v13 + 1] = result;
      }
    }

    v9 += 4;
    v10 += 4 * a4;
  }

  while (v9 <= v8);
  if (v9 < v7)
  {
    goto LABEL_169;
  }

  return result;
}

uint64_t sub_10027910C(uint64_t result, uint64_t a2, _WORD *a3, uint64_t a4, int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v8) = 0;
    if (v5 <= 0)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v6 >= 4)
  {
    v8 = 0;
    v14 = (v6 - 4);
    v15 = 4 * a4;
    v16 = a2 + 6;
    v17 = 2 * a2 + 6;
    v18 = 3 * a2;
    v19 = a3 + a4;
    v20 = &a3[a4] + a4;
    v21 = &a3[a4];
    v22 = result + a2 * ((v14 & 0x7FFFFFFC) + 4) + 4;
    v23 = result;
    v24 = a3;
    do
    {
      v25 = 0;
      v26 = v23;
      do
      {
        v27 = &v24[v25];
        *v27 = *v26;
        v27[1] = *(v26 + a2);
        v27[2] = v26[a2];
        v27[3] = *(v26 + 3 * a2);
        v28 = (v27 + a4);
        *v28 = v26[1];
        v28[1] = *(v26 + v16 - 4);
        v28[2] = *(v26 + v17 - 4);
        v28[3] = *(v26 + v18 + 2);
        v29 = (v28 + a4);
        *v29 = v26[2];
        v29[1] = *(v26 + v16 - 2);
        v29[2] = *(v26 + v17 - 2);
        v29[3] = *(v26 + v18 + 4);
        v30 = (v29 + a4);
        *v30 = v26[3];
        v30[1] = *(v26 + v16);
        v30[2] = *(v26 + v17);
        v30[3] = *(v26 + v18 + 6);
        v25 += 4;
        v26 += 2 * a2;
      }

      while (v25 <= v14);
      v31 = v22;
      v32 = (v14 & 0x7FFFFFFC) + 4;
      if (v6 > v25)
      {
        do
        {
          v24[v32] = *(v31 - 2);
          *&v19[2 * v32] = *(v31 - 1);
          v21[v32] = *v31;
          *&v20[2 * v32++] = v31[1];
          v31 = (v31 + a2);
        }

        while (v32 < v6);
      }

      v8 += 4;
      v24 = (v24 + v15);
      v23 += 8;
      v20 += v15;
      v21 = (v21 + v15);
      v19 += v15;
      v22 += 8;
    }

    while (v8 <= v7);
  }

  else
  {
    if (v6 <= 0)
    {
      LODWORD(v8) = (v7 & 0xFFFFFFFC) + 4;
      if (v8 >= v5)
      {
        return result;
      }

      goto LABEL_19;
    }

    v8 = 0;
    v9 = a2;
    v10 = a4;
    v11 = 3 * a4;
    v12 = result;
    v13 = a3;
    do
    {
      *v13 = *v12;
      *(v13 + a4) = v12[1];
      v13[a4] = v12[2];
      *(v13 + 3 * a4) = v12[3];
      if (v6 != 1)
      {
        v13[1] = *(v12 + a2);
        *(v13 + a4 + 2) = *(v12 + a2 + 2);
        v13[v10 + 1] = *(v12 + a2 + 4);
        *(v13 + v11 + 2) = *(v12 + a2 + 6);
        if (v6 != 2)
        {
          v13[2] = v12[a2];
          *(v13 + a4 + 4) = v12[v9 + 1];
          v13[v10 + 2] = v12[v9 + 2];
          *(v13 + v11 + 4) = v12[v9 + 3];
        }
      }

      v8 += 4;
      v13 += 2 * a4;
      v12 += 4;
    }

    while (v8 <= v7);
  }

  if (v8 >= v5)
  {
    return result;
  }

LABEL_19:
  if (v6 >= 4)
  {
    v35 = (v6 - 4);
    v36 = v8;
    v37 = (v35 & 0x7FFFFFFC) + 4;
    v38 = (result + 2 * v8);
    v39 = a3 + a4 * v36;
    v40 = v39 + 4;
    result = a2 * v37;
    do
    {
      v41 = 0;
      v42 = v40;
      v43 = v38;
      do
      {
        *(v42 - 2) = *v43;
        *(v42 - 1) = *(v43 + a2);
        *v42 = v43[a2];
        *(v42 + 1) = *(v43 + 3 * a2);
        v41 += 4;
        v43 += 2 * a2;
        v42 += 8;
      }

      while (v41 <= v35);
      v44 = a2 * v37;
      v45 = (v35 & 0x7FFFFFFC) + 4;
      if (v6 > v41)
      {
        do
        {
          *&v39[2 * v45++] = *(v38 + v44);
          v44 += a2;
        }

        while (v45 < v6);
      }

      ++v36;
      ++v38;
      v40 += a4;
      v39 += a4;
    }

    while (v5 > v36);
  }

  else if (v6 >= 1)
  {
    v33 = (result + 2 * v8);
    v34 = (a3 + a4 * v8 + 2);
    do
    {
      *(v34 - 1) = *v33;
      if (v6 != 1)
      {
        *v34 = *(v33 + a2);
        if (v6 != 2)
        {
          v34[1] = v33[a2];
        }
      }

      LODWORD(v8) = v8 + 1;
      ++v33;
      v34 = (v34 + a4);
    }

    while (v5 > v8);
  }

  return result;
}

uint64_t sub_1002794B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6 = *a5;
  v5 = a5[1];
  v7 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v8) = 0;
    if (v6 <= 0)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (v5 >= 4)
  {
    v88 = *a5;
    v8 = 0;
    v32 = (v5 - 4);
    v33 = 4 * a4;
    v34 = a2 + 9;
    v35 = 2 * a2 + 9;
    v36 = 3 * a2;
    v37 = a3 + 12 * ((v32 >> 2) & 0x1FFFFFFF) + 12;
    v38 = result + a2 * ((v32 & 0x7FFFFFFC) + 4) + 6;
    v39 = result;
    v40 = a3;
    do
    {
      v41 = 0;
      v42 = v39;
      v43 = v40;
      do
      {
        v44 = *v42;
        *(v43 + 2) = *(v42 + 2);
        *v43 = v44;
        v45 = *(v42 + a2);
        *(v43 + 5) = *(v42 + v34 - 7);
        *(v43 + 3) = v45;
        v46 = *(v42 + 2 * a2);
        *(v43 + 8) = *(v42 + v35 - 7);
        *(v43 + 6) = v46;
        v47 = *(v42 + 3 * a2);
        *(v43 + 11) = *(v42 + v36 + 2);
        *(v43 + 9) = v47;
        v48 = v43 + a4;
        v49 = *(v42 + 3);
        *(v48 + 2) = *(v42 + 5);
        *v48 = v49;
        v50 = *(v42 + v34 - 6);
        *(v48 + 5) = *(v42 + v34 - 4);
        *(v48 + 3) = v50;
        v51 = *(v42 + v35 - 6);
        *(v48 + 8) = *(v42 + v35 - 4);
        *(v48 + 6) = v51;
        v52 = *(v42 + v36 + 3);
        *(v48 + 11) = *(v42 + v36 + 5);
        *(v48 + 9) = v52;
        v53 = v43 + a4 + a4;
        LOWORD(v48) = *(v42 + 6);
        *(v53 + 2) = *(v42 + 8);
        *v53 = v48;
        LOWORD(v48) = *(v42 + v34 - 3);
        *(v53 + 5) = *(v42 + v34 - 1);
        *(v53 + 3) = v48;
        LOWORD(v48) = *(v42 + v35 - 3);
        *(v53 + 8) = *(v42 + v35 - 1);
        *(v53 + 6) = v48;
        LOWORD(v48) = *(v42 + v36 + 6);
        *(v53 + 11) = *(v42 + v36 + 8);
        *(v53 + 9) = v48;
        v54 = v53 + a4;
        LOWORD(v48) = *(v42 + 9);
        *(v54 + 2) = *(v42 + 11);
        *v54 = v48;
        LOWORD(v48) = *(v42 + v34);
        *(v54 + 5) = *(v42 + v34 + 2);
        *(v54 + 3) = v48;
        v55 = *(v42 + v35);
        *(v54 + 8) = *(v42 + v35 + 2);
        *(v54 + 6) = v55;
        v56 = *(v42 + v36 + 9);
        *(v54 + 11) = *(v42 + v36 + 11);
        *(v54 + 9) = v56;
        v41 += 4;
        v43 += 12;
        v42 += 4 * a2;
      }

      while (v41 <= v32);
      v57 = v38;
      v58 = v37;
      v59 = (v32 & 0x7FFFFFFC) + 4;
      if (v5 > v41)
      {
        do
        {
          v60 = *(v57 - 6);
          *(v58 + 2) = *(v57 - 4);
          *v58 = v60;
          v61 = v58 + a4;
          v62 = *(v57 - 3);
          *(v61 + 2) = *(v57 - 1);
          *v61 = v62;
          v63 = v58 + 2 * a4;
          v64 = *v57;
          *(v63 + 2) = *(v57 + 2);
          *v63 = v64;
          v65 = v58 + 3 * a4;
          v66 = *(v57 + 3);
          *(v65 + 2) = *(v57 + 5);
          *v65 = v66;
          ++v59;
          v58 += 3;
          v57 += a2;
        }

        while (v59 < v5);
      }

      v8 += 4;
      v40 += v33;
      v39 += 12;
      v37 += v33;
      v38 += 12;
    }

    while (v8 <= v7);
    v6 = v88;
  }

  else
  {
    if (v5 <= 0)
    {
      LODWORD(v8) = (v7 & 0xFFFFFFFC) + 4;
      if (v8 >= v6)
      {
        return result;
      }

      goto LABEL_20;
    }

    v8 = 0;
    v9 = 2 * a2;
    v10 = 2 * a4;
    v11 = 3 * a4;
    v12 = result;
    v13 = a3;
    do
    {
      v14 = v13 + a4;
      v15 = v13 + v10;
      v16 = v13 + v11;
      v17 = *v12;
      *(v13 + 2) = *(v12 + 2);
      *v13 = v17;
      v18 = *(v12 + 3);
      *(v14 + 2) = *(v12 + 5);
      *v14 = v18;
      v19 = *(v12 + 6);
      *(v15 + 2) = *(v12 + 8);
      *v15 = v19;
      v20 = *(v12 + 9);
      *(v16 + 2) = *(v12 + 11);
      *v16 = v20;
      if (v5 != 1)
      {
        v21 = *(v12 + a2);
        *(v13 + 5) = *(v12 + a2 + 2);
        *(v13 + 3) = v21;
        v22 = *(v12 + a2 + 3);
        *(v14 + 5) = *(v12 + a2 + 5);
        *(v14 + 3) = v22;
        v23 = *(v12 + a2 + 6);
        *(v15 + 5) = *(v12 + a2 + 8);
        *(v15 + 3) = v23;
        v24 = *(v12 + a2 + 9);
        *(v16 + 5) = *(v12 + a2 + 11);
        *(v16 + 3) = v24;
        if (v5 != 2)
        {
          v25 = *(v12 + 2 * a2);
          *(v13 + 8) = *(v12 + v9 + 2);
          *(v13 + 6) = v25;
          v26 = v13 + a4;
          v27 = *(v12 + v9 + 3);
          *(v26 + 8) = *(v12 + v9 + 5);
          *(v26 + 6) = v27;
          v28 = v13 + v10;
          v29 = *(v12 + v9 + 6);
          *(v28 + 8) = *(v12 + v9 + 8);
          *(v28 + 6) = v29;
          v30 = v13 + v11;
          v31 = *(v12 + v9 + 9);
          *(v30 + 8) = *(v12 + v9 + 11);
          *(v30 + 6) = v31;
        }
      }

      v8 += 4;
      v13 += 4 * a4;
      v12 += 12;
    }

    while (v8 <= v7);
  }

  if (v8 >= v6)
  {
    return result;
  }

LABEL_20:
  if (v5 >= 4)
  {
    v72 = (v5 - 4);
    v73 = v8;
    v74 = (result + 3 * v8);
    v75 = a3 + a4 * v73;
    v76 = v75 + 6;
    result = v75 + 12 * ((v72 >> 2) & 0x1FFFFFFF) + 12;
    do
    {
      v77 = 0;
      v78 = v76;
      v79 = v74;
      do
      {
        v80 = *v79;
        *(v78 - 4) = *(v79 + 2);
        *(v78 - 6) = v80;
        v81 = *(v79 + a2);
        *(v78 - 1) = *(v79 + a2 + 2);
        *(v78 - 3) = v81;
        v82 = v79[a2];
        *(v78 + 2) = v79[a2 + 1];
        *v78 = v82;
        v83 = *(v79 + 3 * a2);
        *(v78 + 5) = *(v79 + 3 * a2 + 2);
        *(v78 + 3) = v83;
        v77 += 4;
        v79 += 2 * a2;
        v78 += 12;
      }

      while (v77 <= v72);
      v84 = a2 * ((v72 & 0x7FFFFFFC) + 4);
      v85 = result;
      v86 = (v72 & 0x7FFFFFFC) + 4;
      if (v5 > v77)
      {
        do
        {
          v87 = *(v74 + v84);
          *(v85 + 2) = *(v74 + v84 + 2);
          *v85 = v87;
          v85 += 3;
          ++v86;
          v84 += a2;
        }

        while (v86 < v5);
      }

      ++v73;
      v74 = (v74 + 3);
      v76 += a4;
      result += a4;
    }

    while (v6 > v73);
  }

  else if (v5 >= 1)
  {
    v67 = (result + 3 * v8);
    v68 = a3 + a4 * v8 + 3;
    do
    {
      v69 = *v67;
      *(v68 - 1) = *(v67 + 2);
      *(v68 - 3) = v69;
      if (v5 != 1)
      {
        v70 = *(v67 + a2);
        *(v68 + 2) = *(v67 + a2 + 2);
        *v68 = v70;
        if (v5 != 2)
        {
          v71 = v67[a2];
          *(v68 + 5) = v67[a2 + 1];
          *(v68 + 3) = v71;
        }
      }

      LODWORD(v8) = v8 + 1;
      v67 = (v67 + 3);
      v68 += a4;
    }

    while (v6 > v8);
  }

  return result;
}

_DWORD *sub_100279A18(_DWORD *result, uint64_t a2, _DWORD *a3, uint64_t a4, int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v8) = 0;
    if (v5 <= 0)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v6 >= 4)
  {
    v8 = 0;
    v14 = (v6 - 4);
    v15 = 4 * a4;
    v16 = a2 + 12;
    v17 = 2 * a2 + 12;
    v18 = 3 * a2;
    v19 = a3 + a4;
    v20 = a3 + 2 * a4 + a4;
    v21 = a3 + 2 * a4;
    v22 = result + a2 * ((v14 & 0x7FFFFFFC) + 4) + 8;
    v23 = result;
    v24 = a3;
    do
    {
      v25 = 0;
      v26 = v23;
      do
      {
        v27 = &v24[v25];
        *v27 = *v26;
        v27[1] = *(v26 + a2);
        v27[2] = *(v26 + 2 * a2);
        v27[3] = *(v26 + 3 * a2);
        v28 = (v27 + a4);
        *v28 = v26[1];
        v28[1] = *(v26 + v16 - 8);
        v28[2] = *(v26 + v17 - 8);
        v28[3] = *(v26 + v18 + 4);
        v29 = (v28 + a4);
        *v29 = v26[2];
        v29[1] = *(v26 + v16 - 4);
        v29[2] = *(v26 + v17 - 4);
        v29[3] = *(v26 + v18 + 8);
        v30 = (v29 + a4);
        *v30 = v26[3];
        v30[1] = *(v26 + v16);
        v30[2] = *(v26 + v17);
        v30[3] = *(v26 + v18 + 12);
        v25 += 4;
        v26 += a2;
      }

      while (v25 <= v14);
      v31 = v22;
      v32 = (v14 & 0x7FFFFFFC) + 4;
      if (v6 > v25)
      {
        do
        {
          v24[v32] = *(v31 - 2);
          *&v19[4 * v32] = *(v31 - 1);
          *&v21[4 * v32] = *v31;
          *&v20[4 * v32++] = v31[1];
          v31 = (v31 + a2);
        }

        while (v32 < v6);
      }

      v8 += 4;
      v24 = (v24 + v15);
      v23 += 4;
      v20 += v15;
      v21 += v15;
      v19 += v15;
      v22 += 16;
    }

    while (v8 <= v7);
  }

  else
  {
    if (v6 <= 0)
    {
      LODWORD(v8) = (v7 & 0xFFFFFFFC) + 4;
      if (v8 >= v5)
      {
        return result;
      }

      goto LABEL_19;
    }

    v8 = 0;
    v9 = 2 * a2;
    v10 = 2 * a4;
    v11 = 3 * a4;
    v12 = result;
    v13 = a3;
    do
    {
      *v13 = *v12;
      *(v13 + a4) = v12[1];
      *(v13 + 2 * a4) = v12[2];
      *(v13 + 3 * a4) = v12[3];
      if (v6 != 1)
      {
        v13[1] = *(v12 + a2);
        *(v13 + a4 + 4) = *(v12 + a2 + 4);
        *(v13 + v10 + 4) = *(v12 + a2 + 8);
        *(v13 + v11 + 4) = *(v12 + a2 + 12);
        if (v6 != 2)
        {
          v13[2] = *(v12 + 2 * a2);
          *(v13 + a4 + 8) = *(v12 + v9 + 4);
          *(v13 + v10 + 8) = *(v12 + v9 + 8);
          *(v13 + v11 + 8) = *(v12 + v9 + 12);
        }
      }

      v8 += 4;
      v13 += a4;
      v12 += 4;
    }

    while (v8 <= v7);
  }

  if (v8 >= v5)
  {
    return result;
  }

LABEL_19:
  if (v6 >= 4)
  {
    v35 = (v6 - 4);
    v36 = v8;
    v37 = &result[v8];
    v38 = a3 + a4 * v36;
    result = v38 + 8;
    do
    {
      v39 = 0;
      v40 = result;
      v41 = v37;
      do
      {
        *(v40 - 2) = *v41;
        *(v40 - 1) = *(v41 + a2);
        *v40 = *(v41 + 2 * a2);
        v40[1] = *(v41 + 3 * a2);
        v39 += 4;
        v41 += a2;
        v40 += 4;
      }

      while (v39 <= v35);
      v42 = a2 * ((v35 & 0x7FFFFFFC) + 4);
      v43 = (v35 & 0x7FFFFFFC) + 4;
      if (v6 > v39)
      {
        do
        {
          *&v38[4 * v43++] = *(v37 + v42);
          v42 += a2;
        }

        while (v43 < v6);
      }

      ++v36;
      ++v37;
      result = (result + a4);
      v38 += a4;
    }

    while (v5 > v36);
  }

  else if (v6 >= 1)
  {
    v33 = &result[v8];
    v34 = (a3 + a4 * v8 + 4);
    do
    {
      *(v34 - 1) = *v33;
      if (v6 != 1)
      {
        *v34 = *(v33 + a2);
        if (v6 != 2)
        {
          v34[1] = *(v33 + 2 * a2);
        }
      }

      LODWORD(v8) = v8 + 1;
      ++v33;
      v34 = (v34 + a4);
    }

    while (v5 > v8);
  }

  return result;
}

uint64_t sub_100279DC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6 = *a5;
  v5 = a5[1];
  v7 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v8) = 0;
    if (v6 <= 0)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (v5 >= 4)
  {
    v88 = *a5;
    v8 = 0;
    v32 = (v5 - 4);
    v33 = 4 * a4;
    v34 = a2 + 18;
    v35 = 2 * a2 + 18;
    v36 = 3 * a2;
    v37 = a3 + 24 * ((v32 >> 2) & 0x1FFFFFFF) + 24;
    v38 = result + a2 * ((v32 & 0x7FFFFFFC) + 4) + 12;
    v39 = result;
    v40 = a3;
    do
    {
      v41 = 0;
      v42 = v39;
      v43 = v40;
      do
      {
        v44 = *v42;
        *(v43 + 4) = *(v42 + 4);
        *v43 = v44;
        v45 = *(v42 + a2);
        *(v43 + 10) = *(v42 + v34 - 14);
        *(v43 + 6) = v45;
        v46 = *(v42 + 2 * a2);
        *(v43 + 16) = *(v42 + v35 - 14);
        *(v43 + 12) = v46;
        v47 = *(v42 + 3 * a2);
        *(v43 + 22) = *(v42 + v36 + 4);
        *(v43 + 18) = v47;
        v48 = v43 + a4;
        v49 = *(v42 + 6);
        *(v48 + 4) = *(v42 + 10);
        *v48 = v49;
        v50 = *(v42 + v34 - 12);
        *(v48 + 10) = *(v42 + v34 - 8);
        *(v48 + 6) = v50;
        v51 = *(v42 + v35 - 12);
        *(v48 + 16) = *(v42 + v35 - 8);
        *(v48 + 12) = v51;
        v52 = *(v42 + v36 + 6);
        *(v48 + 22) = *(v42 + v36 + 10);
        *(v48 + 18) = v52;
        v53 = v43 + a4 + a4;
        LODWORD(v48) = *(v42 + 12);
        *(v53 + 4) = *(v42 + 16);
        *v53 = v48;
        LODWORD(v48) = *(v42 + v34 - 6);
        *(v53 + 10) = *(v42 + v34 - 2);
        *(v53 + 6) = v48;
        LODWORD(v48) = *(v42 + v35 - 6);
        *(v53 + 16) = *(v42 + v35 - 2);
        *(v53 + 12) = v48;
        LODWORD(v48) = *(v42 + v36 + 12);
        *(v53 + 22) = *(v42 + v36 + 16);
        *(v53 + 18) = v48;
        v54 = v53 + a4;
        LODWORD(v48) = *(v42 + 18);
        *(v54 + 4) = *(v42 + 22);
        *v54 = v48;
        LODWORD(v48) = *(v42 + v34);
        *(v54 + 10) = *(v42 + v34 + 4);
        *(v54 + 6) = v48;
        v55 = *(v42 + v35);
        *(v54 + 16) = *(v42 + v35 + 4);
        *(v54 + 12) = v55;
        v56 = *(v42 + v36 + 18);
        *(v54 + 22) = *(v42 + v36 + 22);
        *(v54 + 18) = v56;
        v41 += 4;
        v43 += 24;
        v42 += 4 * a2;
      }

      while (v41 <= v32);
      v57 = v38;
      v58 = v37;
      v59 = (v32 & 0x7FFFFFFC) + 4;
      if (v5 > v41)
      {
        do
        {
          v60 = *(v57 - 12);
          *(v58 + 4) = *(v57 - 8);
          *v58 = v60;
          v61 = v58 + a4;
          v62 = *(v57 - 6);
          *(v61 + 4) = *(v57 - 2);
          *v61 = v62;
          v63 = v58 + 2 * a4;
          v64 = *v57;
          *(v63 + 4) = *(v57 + 4);
          *v63 = v64;
          v65 = v58 + 3 * a4;
          v66 = *(v57 + 6);
          *(v65 + 4) = *(v57 + 10);
          *v65 = v66;
          ++v59;
          v58 += 6;
          v57 += a2;
        }

        while (v59 < v5);
      }

      v8 += 4;
      v40 += v33;
      v39 += 24;
      v37 += v33;
      v38 += 24;
    }

    while (v8 <= v7);
    v6 = v88;
  }

  else
  {
    if (v5 <= 0)
    {
      LODWORD(v8) = (v7 & 0xFFFFFFFC) + 4;
      if (v8 >= v6)
      {
        return result;
      }

      goto LABEL_20;
    }

    v8 = 0;
    v9 = 2 * a2;
    v10 = 2 * a4;
    v11 = 3 * a4;
    v12 = result;
    v13 = a3;
    do
    {
      v14 = v13 + a4;
      v15 = v13 + v10;
      v16 = v13 + v11;
      v17 = *v12;
      *(v13 + 4) = *(v12 + 4);
      *v13 = v17;
      v18 = *(v12 + 6);
      *(v14 + 4) = *(v12 + 10);
      *v14 = v18;
      v19 = *(v12 + 12);
      *(v15 + 4) = *(v12 + 16);
      *v15 = v19;
      v20 = *(v12 + 18);
      *(v16 + 4) = *(v12 + 22);
      *v16 = v20;
      if (v5 != 1)
      {
        v21 = *(v12 + a2);
        *(v13 + 10) = *(v12 + a2 + 4);
        *(v13 + 6) = v21;
        v22 = *(v12 + a2 + 6);
        *(v14 + 10) = *(v12 + a2 + 10);
        *(v14 + 6) = v22;
        v23 = *(v12 + a2 + 12);
        *(v15 + 10) = *(v12 + a2 + 16);
        *(v15 + 6) = v23;
        v24 = *(v12 + a2 + 18);
        *(v16 + 10) = *(v12 + a2 + 22);
        *(v16 + 6) = v24;
        if (v5 != 2)
        {
          v25 = *(v12 + 2 * a2);
          *(v13 + 16) = *(v12 + v9 + 4);
          *(v13 + 12) = v25;
          v26 = v13 + a4;
          v27 = *(v12 + v9 + 6);
          *(v26 + 16) = *(v12 + v9 + 10);
          *(v26 + 12) = v27;
          v28 = v13 + v10;
          v29 = *(v12 + v9 + 12);
          *(v28 + 16) = *(v12 + v9 + 16);
          *(v28 + 12) = v29;
          v30 = v13 + v11;
          v31 = *(v12 + v9 + 18);
          *(v30 + 16) = *(v12 + v9 + 22);
          *(v30 + 12) = v31;
        }
      }

      v8 += 4;
      v13 += 4 * a4;
      v12 += 24;
    }

    while (v8 <= v7);
  }

  if (v8 >= v6)
  {
    return result;
  }

LABEL_20:
  if (v5 >= 4)
  {
    v72 = (v5 - 4);
    v73 = v8;
    v74 = (result + 6 * v8);
    v75 = a3 + a4 * v73;
    v76 = v75 + 12;
    result = v75 + 24 * ((v72 >> 2) & 0x1FFFFFFF) + 24;
    do
    {
      v77 = 0;
      v78 = v76;
      v79 = v74;
      do
      {
        v80 = *v79;
        *(v78 - 8) = *(v79 + 2);
        *(v78 - 12) = v80;
        v81 = *(v79 + a2);
        *(v78 - 2) = *(v79 + a2 + 4);
        *(v78 - 6) = v81;
        v82 = *(v79 + 2 * a2);
        *(v78 + 4) = *(v79 + a2 + 2);
        *v78 = v82;
        v83 = *(v79 + 3 * a2);
        *(v78 + 10) = *(v79 + 3 * a2 + 4);
        *(v78 + 6) = v83;
        v77 += 4;
        v79 += a2;
        v78 += 24;
      }

      while (v77 <= v72);
      v84 = a2 * ((v72 & 0x7FFFFFFC) + 4);
      v85 = result;
      v86 = (v72 & 0x7FFFFFFC) + 4;
      if (v5 > v77)
      {
        do
        {
          v87 = *(v74 + v84);
          *(v85 + 4) = *(v74 + v84 + 4);
          *v85 = v87;
          v85 += 6;
          ++v86;
          v84 += a2;
        }

        while (v86 < v5);
      }

      ++v73;
      v74 = (v74 + 6);
      v76 += a4;
      result += a4;
    }

    while (v6 > v73);
  }

  else if (v5 >= 1)
  {
    v67 = (result + 6 * v8);
    v68 = a3 + a4 * v8 + 6;
    do
    {
      v69 = *v67;
      *(v68 - 2) = *(v67 + 2);
      *(v68 - 6) = v69;
      if (v5 != 1)
      {
        v70 = *(v67 + a2);
        *(v68 + 4) = *(v67 + a2 + 4);
        *v68 = v70;
        if (v5 != 2)
        {
          v71 = *(v67 + 2 * a2);
          *(v68 + 10) = *(v67 + a2 + 2);
          *(v68 + 6) = v71;
        }
      }

      LODWORD(v8) = v8 + 1;
      v67 = (v67 + 6);
      v68 += a4;
    }

    while (v6 > v8);
  }

  return result;
}

void *sub_10027A32C(void *result, uint64_t a2, void *a3, uint64_t a4, int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v8) = 0;
    if (v5 <= 0)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v6 >= 4)
  {
    v8 = 0;
    v14 = (v6 - 4);
    v15 = 4 * a4;
    v16 = a2 + 24;
    v17 = 2 * a2 + 24;
    v18 = 3 * a2;
    v19 = a3 + a4;
    v20 = a3 + 2 * a4 + a4;
    v21 = a3 + 2 * a4;
    v22 = result + a2 * ((v14 & 0x7FFFFFFC) + 4) + 16;
    v23 = result;
    v24 = a3;
    do
    {
      v25 = 0;
      v26 = v23;
      do
      {
        v27 = &v24[v25];
        *v27 = *v26;
        v27[1] = *(v26 + a2);
        v27[2] = *(v26 + 2 * a2);
        v27[3] = *(v26 + 3 * a2);
        v28 = (v27 + a4);
        *v28 = v26[1];
        v28[1] = *(v26 + v16 - 16);
        v28[2] = *(v26 + v17 - 16);
        v28[3] = *(v26 + v18 + 8);
        v29 = (v28 + a4);
        *v29 = v26[2];
        v29[1] = *(v26 + v16 - 8);
        v29[2] = *(v26 + v17 - 8);
        v29[3] = *(v26 + v18 + 16);
        v30 = (v29 + a4);
        *v30 = v26[3];
        v30[1] = *(v26 + v16);
        v30[2] = *(v26 + v17);
        v30[3] = *(v26 + v18 + 24);
        v25 += 4;
        v26 = (v26 + 4 * a2);
      }

      while (v25 <= v14);
      v31 = v22;
      v32 = (v14 & 0x7FFFFFFC) + 4;
      if (v6 > v25)
      {
        do
        {
          v24[v32] = *(v31 - 2);
          *&v19[8 * v32] = *(v31 - 1);
          *&v21[8 * v32] = *v31;
          *&v20[8 * v32++] = v31[1];
          v31 = (v31 + a2);
        }

        while (v32 < v6);
      }

      v8 += 4;
      v24 = (v24 + v15);
      v23 += 4;
      v20 += v15;
      v21 += v15;
      v19 += v15;
      v22 += 32;
    }

    while (v8 <= v7);
  }

  else
  {
    if (v6 <= 0)
    {
      LODWORD(v8) = (v7 & 0xFFFFFFFC) + 4;
      if (v8 >= v5)
      {
        return result;
      }

      goto LABEL_19;
    }

    v8 = 0;
    v9 = 2 * a2;
    v10 = 2 * a4;
    v11 = 3 * a4;
    v12 = result;
    v13 = a3;
    do
    {
      *v13 = *v12;
      *(v13 + a4) = v12[1];
      *(v13 + 2 * a4) = v12[2];
      *(v13 + 3 * a4) = v12[3];
      if (v6 != 1)
      {
        v13[1] = *(v12 + a2);
        *(v13 + a4 + 8) = *(v12 + a2 + 8);
        *(v13 + v10 + 8) = *(v12 + a2 + 16);
        *(v13 + v11 + 8) = *(v12 + a2 + 24);
        if (v6 != 2)
        {
          v13[2] = *(v12 + 2 * a2);
          *(v13 + a4 + 16) = *(v12 + v9 + 8);
          *(v13 + v10 + 16) = *(v12 + v9 + 16);
          *(v13 + v11 + 16) = *(v12 + v9 + 24);
        }
      }

      v8 += 4;
      v13 = (v13 + 4 * a4);
      v12 += 4;
    }

    while (v8 <= v7);
  }

  if (v8 >= v5)
  {
    return result;
  }

LABEL_19:
  if (v6 >= 4)
  {
    v35 = (v6 - 4);
    v36 = v8;
    v37 = &result[v8];
    v38 = a3 + a4 * v36;
    result = v38 + 16;
    do
    {
      v39 = 0;
      v40 = result;
      v41 = v37;
      do
      {
        *(v40 - 2) = *v41;
        *(v40 - 1) = *(v41 + a2);
        *v40 = *(v41 + 2 * a2);
        v40[1] = *(v41 + 3 * a2);
        v39 += 4;
        v41 = (v41 + 4 * a2);
        v40 += 4;
      }

      while (v39 <= v35);
      v42 = a2 * ((v35 & 0x7FFFFFFC) + 4);
      v43 = (v35 & 0x7FFFFFFC) + 4;
      if (v6 > v39)
      {
        do
        {
          *&v38[8 * v43++] = *(v37 + v42);
          v42 += a2;
        }

        while (v43 < v6);
      }

      ++v36;
      ++v37;
      result = (result + a4);
      v38 += a4;
    }

    while (v5 > v36);
  }

  else if (v6 >= 1)
  {
    v33 = &result[v8];
    v34 = (a3 + a4 * v8 + 8);
    do
    {
      *(v34 - 1) = *v33;
      if (v6 != 1)
      {
        *v34 = *(v33 + a2);
        if (v6 != 2)
        {
          v34[1] = *(v33 + 2 * a2);
        }
      }

      LODWORD(v8) = v8 + 1;
      ++v33;
      v34 = (v34 + a4);
    }

    while (v5 > v8);
  }

  return result;
}

uint64_t sub_10027A6DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6 = *a5;
  v5 = a5[1];
  v7 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v8) = 0;
    if (v6 <= 0)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (v5 >= 4)
  {
    v94 = *a5;
    v8 = 0;
    v32 = (v5 - 4);
    v33 = 4 * a4;
    v34 = a2 + 36;
    v35 = 2 * a2 + 36;
    v36 = 3 * a2;
    v37 = a3 + 48 * ((v32 >> 2) & 0x1FFFFFFF) + 48;
    v38 = result + a2 * ((v32 & 0x7FFFFFFC) + 4) + 24;
    v39 = result;
    v40 = a3;
    do
    {
      v41 = 0;
      v42 = v39;
      v43 = v40;
      do
      {
        v44 = *v42;
        *(v43 + 8) = *(v42 + 8);
        *v43 = v44;
        v45 = *(v42 + a2);
        *(v43 + 20) = *(v42 + v34 - 28);
        *(v43 + 12) = v45;
        v46 = *(v42 + 2 * a2);
        *(v43 + 32) = *(v42 + v35 - 28);
        *(v43 + 24) = v46;
        v47 = *(v42 + 3 * a2);
        *(v43 + 44) = *(v42 + v36 + 8);
        *(v43 + 36) = v47;
        v48 = v43 + a4;
        v49 = *(v42 + 12);
        *(v48 + 8) = *(v42 + 20);
        *v48 = v49;
        v50 = *(v42 + v34 - 24);
        *(v48 + 20) = *(v42 + v34 - 16);
        *(v48 + 12) = v50;
        v51 = *(v42 + v35 - 24);
        *(v48 + 32) = *(v42 + v35 - 16);
        *(v48 + 24) = v51;
        v52 = *(v42 + v36 + 12);
        *(v48 + 44) = *(v42 + v36 + 20);
        *(v48 + 36) = v52;
        v53 = v43 + a4 + a4;
        v54 = *(v42 + 24);
        *(v53 + 8) = *(v42 + 32);
        *v53 = v54;
        v55 = *(v42 + v34 - 12);
        *(v53 + 20) = *(v42 + v34 - 4);
        *(v53 + 12) = v55;
        v56 = *(v42 + v35 - 12);
        *(v53 + 32) = *(v42 + v35 - 4);
        *(v53 + 24) = v56;
        v57 = *(v42 + v36 + 24);
        *(v53 + 44) = *(v42 + v36 + 32);
        *(v53 + 36) = v57;
        v58 = v53 + a4;
        v59 = *(v42 + 36);
        *(v58 + 8) = *(v42 + 44);
        *v58 = v59;
        v60 = *(v42 + v34);
        *(v58 + 20) = *(v42 + v34 + 8);
        *(v58 + 12) = v60;
        v61 = *(v42 + v35);
        *(v58 + 32) = *(v42 + v35 + 8);
        *(v58 + 24) = v61;
        v62 = *(v42 + v36 + 36);
        *(v58 + 44) = *(v42 + v36 + 44);
        *(v58 + 36) = v62;
        v41 += 4;
        v43 += 48;
        v42 += 4 * a2;
      }

      while (v41 <= v32);
      v63 = v38;
      v64 = v37;
      v65 = (v32 & 0x7FFFFFFC) + 4;
      if (v5 > v41)
      {
        do
        {
          v66 = *(v63 - 24);
          *(v64 + 8) = *(v63 - 16);
          *v64 = v66;
          v67 = v64 + a4;
          v68 = *(v63 - 12);
          *(v67 + 8) = *(v63 - 4);
          *v67 = v68;
          v69 = v64 + 2 * a4;
          v70 = *v63;
          *(v69 + 8) = *(v63 + 8);
          *v69 = v70;
          v71 = v64 + 3 * a4;
          v72 = *(v63 + 12);
          *(v71 + 8) = *(v63 + 20);
          *v71 = v72;
          ++v65;
          v64 += 12;
          v63 += a2;
        }

        while (v65 < v5);
      }

      v8 += 4;
      v40 += v33;
      v39 += 48;
      v37 += v33;
      v38 += 48;
    }

    while (v8 <= v7);
    v6 = v94;
  }

  else
  {
    if (v5 <= 0)
    {
      LODWORD(v8) = (v7 & 0xFFFFFFFC) + 4;
      if (v8 >= v6)
      {
        return result;
      }

      goto LABEL_20;
    }

    v8 = 0;
    v9 = 2 * a2;
    v10 = 2 * a4;
    v11 = 3 * a4;
    v12 = result;
    v13 = a3;
    do
    {
      v14 = v13 + a4;
      v15 = v13 + v10;
      v16 = v13 + v11;
      v17 = *v12;
      *(v13 + 8) = *(v12 + 8);
      *v13 = v17;
      v18 = *(v12 + 12);
      *(v14 + 8) = *(v12 + 20);
      *v14 = v18;
      v19 = *(v12 + 24);
      *(v15 + 8) = *(v12 + 32);
      *v15 = v19;
      v20 = *(v12 + 36);
      *(v16 + 8) = *(v12 + 44);
      *v16 = v20;
      if (v5 != 1)
      {
        v21 = *(v12 + a2);
        *(v13 + 20) = *(v12 + a2 + 8);
        *(v13 + 12) = v21;
        v22 = *(v12 + a2 + 12);
        *(v14 + 20) = *(v12 + a2 + 20);
        *(v14 + 12) = v22;
        v23 = *(v12 + a2 + 24);
        *(v15 + 20) = *(v12 + a2 + 32);
        *(v15 + 12) = v23;
        v24 = *(v12 + a2 + 36);
        *(v16 + 20) = *(v12 + a2 + 44);
        *(v16 + 12) = v24;
        if (v5 != 2)
        {
          v25 = *(v12 + 2 * a2);
          *(v13 + 32) = *(v12 + v9 + 8);
          *(v13 + 24) = v25;
          v26 = v13 + a4;
          v27 = *(v12 + v9 + 12);
          *(v26 + 32) = *(v12 + v9 + 20);
          *(v26 + 24) = v27;
          v28 = v13 + v10;
          v29 = *(v12 + v9 + 24);
          *(v28 + 32) = *(v12 + v9 + 32);
          *(v28 + 24) = v29;
          v30 = v13 + v11;
          v31 = *(v12 + v9 + 36);
          *(v30 + 32) = *(v12 + v9 + 44);
          *(v30 + 24) = v31;
        }
      }

      v8 += 4;
      v13 += 4 * a4;
      v12 += 48;
    }

    while (v8 <= v7);
  }

  if (v8 >= v6)
  {
    return result;
  }

LABEL_20:
  if (v5 >= 4)
  {
    v78 = (v5 - 4);
    v79 = v8;
    v80 = (result + 12 * v8);
    v81 = a3 + a4 * v79;
    v82 = v81 + 24;
    result = v81 + 48 * ((v78 >> 2) & 0x1FFFFFFF) + 48;
    do
    {
      v83 = 0;
      v84 = v82;
      v85 = v80;
      do
      {
        v86 = *v85;
        *(v84 - 16) = *(v85 + 2);
        *(v84 - 24) = v86;
        v87 = *(v85 + a2);
        *(v84 - 4) = *(v85 + a2 + 8);
        *(v84 - 12) = v87;
        v88 = *(v85 + 2 * a2);
        *(v84 + 8) = *(v85 + 2 * a2 + 8);
        *v84 = v88;
        v89 = *(v85 + 3 * a2);
        *(v84 + 20) = *(v85 + 3 * a2 + 8);
        *(v84 + 12) = v89;
        v83 += 4;
        v85 = (v85 + 4 * a2);
        v84 += 48;
      }

      while (v83 <= v78);
      v90 = a2 * ((v78 & 0x7FFFFFFC) + 4);
      v91 = result;
      v92 = (v78 & 0x7FFFFFFC) + 4;
      if (v5 > v83)
      {
        do
        {
          v93 = *(v80 + v90);
          *(v91 + 8) = *(v80 + v90 + 8);
          *v91 = v93;
          v91 += 12;
          ++v92;
          v90 += a2;
        }

        while (v92 < v5);
      }

      ++v79;
      v80 = (v80 + 12);
      v82 += a4;
      result += a4;
    }

    while (v6 > v79);
  }

  else if (v5 >= 1)
  {
    v73 = (result + 12 * v8);
    v74 = a3 + a4 * v8 + 12;
    do
    {
      v75 = *v73;
      *(v74 - 4) = *(v73 + 2);
      *(v74 - 12) = v75;
      if (v5 != 1)
      {
        v76 = *(v73 + a2);
        *(v74 + 8) = *(v73 + a2 + 8);
        *v74 = v76;
        if (v5 != 2)
        {
          v77 = *(v73 + 2 * a2);
          *(v74 + 20) = *(v73 + 2 * a2 + 8);
          *(v74 + 12) = v77;
        }
      }

      LODWORD(v8) = v8 + 1;
      v73 = (v73 + 12);
      v74 += a4;
    }

    while (v6 > v8);
  }

  return result;
}

char *sub_10027AC40(char *result, uint64_t a2, _OWORD *a3, uint64_t a4, int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v8) = 0;
    if (v5 <= 0)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v6 >= 4)
  {
    v8 = 0;
    v14 = (v6 - 4);
    v15 = 4 * a4;
    v16 = a2 + 48;
    v17 = 2 * a2 + 48;
    v18 = 3 * a2;
    v19 = &a3[4 * ((v14 >> 2) & 0x1FFFFFFF) + 4];
    v20 = &result[a2 * ((v14 & 0x7FFFFFFC) + 4) + 32];
    v21 = result;
    v22 = a3;
    do
    {
      v23 = 0;
      v24 = v21;
      v25 = v22;
      do
      {
        *v25 = *v24;
        v25[1] = *(v24 + a2);
        v25[2] = *(v24 + 2 * a2);
        v25[3] = *(v24 + 3 * a2);
        v26 = (v25 + a4);
        *v26 = v24[1];
        v26[1] = *(v24 + v16 - 32);
        v26[2] = *(v24 + v17 - 32);
        v26[3] = *(v24 + v18 + 16);
        v27 = (v25 + a4 + a4);
        *v27 = v24[2];
        v27[1] = *(v24 + v16 - 16);
        v27[2] = *(v24 + v17 - 16);
        v27[3] = *(v24 + v18 + 32);
        v28 = (v27 + a4);
        *v28 = v24[3];
        v28[1] = *(v24 + v16);
        v28[2] = *(v24 + v17);
        v28[3] = *(v24 + v18 + 48);
        v23 += 4;
        v25 += 4;
        v24 = (v24 + 4 * a2);
      }

      while (v23 <= v14);
      v29 = v20;
      v30 = v19;
      v31 = (v14 & 0x7FFFFFFC) + 4;
      if (v6 > v23)
      {
        do
        {
          *v30 = *(v29 - 2);
          *(v30 + a4) = *(v29 - 1);
          *(v30 + 2 * a4) = *v29;
          *(v30 + 3 * a4) = v29[1];
          ++v31;
          ++v30;
          v29 = (v29 + a2);
        }

        while (v31 < v6);
      }

      v8 += 4;
      v22 = (v22 + v15);
      v21 += 64;
      v19 = (v19 + v15);
      v20 += 64;
    }

    while (v8 <= v7);
  }

  else
  {
    if (v6 <= 0)
    {
      LODWORD(v8) = (v7 & 0xFFFFFFFC) + 4;
      if (v8 >= v5)
      {
        return result;
      }

      goto LABEL_19;
    }

    v8 = 0;
    v9 = 2 * a2;
    v10 = 2 * a4;
    v11 = 3 * a4;
    v12 = result;
    v13 = a3;
    do
    {
      *v13 = *v12;
      *(v13 + a4) = v12[1];
      *(v13 + 2 * a4) = v12[2];
      *(v13 + 3 * a4) = v12[3];
      if (v6 != 1)
      {
        v13[1] = *(v12 + a2);
        *(v13 + a4 + 16) = *(v12 + a2 + 16);
        *(v13 + v10 + 16) = *(v12 + a2 + 32);
        *(v13 + v11 + 16) = *(v12 + a2 + 48);
        if (v6 != 2)
        {
          v13[2] = *(v12 + 2 * a2);
          *(v13 + a4 + 32) = *(v12 + v9 + 16);
          *(v13 + v10 + 32) = *(v12 + v9 + 32);
          *(v13 + v11 + 32) = *(v12 + v9 + 48);
        }
      }

      v8 += 4;
      v13 = (v13 + 4 * a4);
      v12 += 4;
    }

    while (v8 <= v7);
  }

  if (v8 >= v5)
  {
    return result;
  }

LABEL_19:
  if (v6 >= 4)
  {
    v34 = (v6 - 4);
    v35 = v8;
    v36 = &result[16 * v8];
    v37 = a3 + a4 * v35;
    v38 = v37 + 32;
    result = &v37[64 * ((v34 >> 2) & 0x1FFFFFFF) + 64];
    do
    {
      v39 = 0;
      v40 = v38;
      v41 = v36;
      do
      {
        *(v40 - 2) = *v41;
        *(v40 - 1) = *(v41 + a2);
        *v40 = *(v41 + 2 * a2);
        *(v40 + 1) = *(v41 + 3 * a2);
        v39 += 4;
        v41 = (v41 + 4 * a2);
        v40 += 64;
      }

      while (v39 <= v34);
      v42 = a2 * ((v34 & 0x7FFFFFFC) + 4);
      v43 = result;
      v44 = (v34 & 0x7FFFFFFC) + 4;
      if (v6 > v39)
      {
        do
        {
          *v43 = *&v36[v42];
          v43 += 16;
          ++v44;
          v42 += a2;
        }

        while (v44 < v6);
      }

      ++v35;
      v36 += 16;
      v38 += a4;
      result += a4;
    }

    while (v5 > v35);
  }

  else if (v6 >= 1)
  {
    v32 = &result[16 * v8];
    v33 = (a3 + a4 * v8 + 16);
    do
    {
      *(v33 - 1) = *v32;
      if (v6 != 1)
      {
        *v33 = *&v32[a2];
        if (v6 != 2)
        {
          v33[1] = *&v32[2 * a2];
        }
      }

      LODWORD(v8) = v8 + 1;
      v32 += 16;
      v33 = (v33 + a4);
    }

    while (v5 > v8);
  }

  return result;
}

uint64_t sub_10027B008(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v8) = 0;
    if (v5 <= 0)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v6 >= 4)
  {
    v8 = 0;
    v32 = (v6 - 4);
    v33 = 4 * a4;
    v34 = a2 + 72;
    v35 = 2 * a2 + 72;
    v36 = 3 * a2;
    v37 = a3 + 96 * ((v32 >> 2) & 0x1FFFFFFF) + 96;
    v38 = result + a2 * ((v32 & 0x7FFFFFFC) + 4) + 48;
    v39 = result;
    v40 = a3;
    do
    {
      v41 = 0;
      v42 = v39;
      v43 = v40;
      do
      {
        v44 = *v42;
        *(v43 + 16) = *(v42 + 16);
        *v43 = v44;
        v45 = *(v42 + a2);
        *(v43 + 40) = *(v42 + v34 - 56);
        *(v43 + 24) = v45;
        v46 = *(v42 + 2 * a2);
        *(v43 + 64) = *(v42 + v35 - 56);
        *(v43 + 48) = v46;
        v47 = *(v42 + 3 * a2);
        *(v43 + 88) = *(v42 + v36 + 16);
        *(v43 + 72) = v47;
        v48 = v43 + a4;
        v49 = *(v42 + 24);
        *(v48 + 16) = *(v42 + 40);
        *v48 = v49;
        v50 = *(v42 + v34 - 48);
        *(v48 + 40) = *(v42 + v34 - 32);
        *(v48 + 24) = v50;
        v51 = *(v42 + v35 - 48);
        *(v48 + 64) = *(v42 + v35 - 32);
        *(v48 + 48) = v51;
        v52 = *(v42 + v36 + 24);
        *(v48 + 88) = *(v42 + v36 + 40);
        *(v48 + 72) = v52;
        v53 = v43 + a4 + a4;
        v54 = *(v42 + 48);
        *(v53 + 16) = *(v42 + 64);
        *v53 = v54;
        v55 = *(v42 + v34 - 24);
        *(v53 + 40) = *(v42 + v34 - 8);
        *(v53 + 24) = v55;
        v56 = *(v42 + v35 - 24);
        *(v53 + 64) = *(v42 + v35 - 8);
        *(v53 + 48) = v56;
        v57 = *(v42 + v36 + 48);
        *(v53 + 88) = *(v42 + v36 + 64);
        *(v53 + 72) = v57;
        v58 = v53 + a4;
        v59 = *(v42 + 72);
        *(v58 + 16) = *(v42 + 88);
        *v58 = v59;
        v60 = *(v42 + v34);
        *(v58 + 40) = *(v42 + v34 + 16);
        *(v58 + 24) = v60;
        v61 = *(v42 + v35);
        *(v58 + 64) = *(v42 + v35 + 16);
        *(v58 + 48) = v61;
        v62 = *(v42 + v36 + 72);
        *(v58 + 88) = *(v42 + v36 + 88);
        *(v58 + 72) = v62;
        v41 += 4;
        v43 += 96;
        v42 += 4 * a2;
      }

      while (v41 <= v32);
      v63 = v38;
      v64 = v37;
      v65 = (v32 & 0x7FFFFFFC) + 4;
      if (v6 > v41)
      {
        do
        {
          v66 = *(v63 - 48);
          *(v64 + 16) = *(v63 - 32);
          *v64 = v66;
          v67 = v64 + a4;
          v68 = *(v63 - 24);
          *(v67 + 16) = *(v63 - 8);
          *v67 = v68;
          v69 = v64 + 2 * a4;
          v70 = *v63;
          *(v69 + 16) = *(v63 + 16);
          *v69 = v70;
          v71 = v64 + 3 * a4;
          v72 = *(v63 + 24);
          *(v71 + 16) = *(v63 + 40);
          *v71 = v72;
          ++v65;
          v64 += 24;
          v63 += a2;
        }

        while (v65 < v6);
      }

      v8 += 4;
      v40 += v33;
      v39 += 96;
      v37 += v33;
      v38 += 96;
    }

    while (v8 <= v7);
  }

  else
  {
    if (v6 <= 0)
    {
      LODWORD(v8) = (v7 & 0xFFFFFFFC) + 4;
      if (v8 >= v5)
      {
        return result;
      }

      goto LABEL_19;
    }

    v8 = 0;
    v9 = 2 * a2;
    v10 = 2 * a4;
    v11 = 3 * a4;
    v12 = result;
    v13 = a3;
    do
    {
      v14 = v13 + a4;
      v15 = v13 + v10;
      v16 = v13 + v11;
      v17 = *v12;
      *(v13 + 16) = *(v12 + 16);
      *v13 = v17;
      v18 = *(v12 + 24);
      *(v14 + 16) = *(v12 + 40);
      *v14 = v18;
      v19 = *(v12 + 48);
      *(v15 + 16) = *(v12 + 64);
      *v15 = v19;
      v20 = *(v12 + 72);
      *(v16 + 16) = *(v12 + 88);
      *v16 = v20;
      if (v6 != 1)
      {
        v21 = *(v12 + a2);
        *(v13 + 40) = *(v12 + a2 + 16);
        *(v13 + 24) = v21;
        v22 = *(v12 + a2 + 24);
        *(v14 + 40) = *(v12 + a2 + 40);
        *(v14 + 24) = v22;
        v23 = *(v12 + a2 + 48);
        *(v15 + 40) = *(v12 + a2 + 64);
        *(v15 + 24) = v23;
        v24 = *(v12 + a2 + 72);
        *(v16 + 40) = *(v12 + a2 + 88);
        *(v16 + 24) = v24;
        if (v6 != 2)
        {
          v25 = *(v12 + 2 * a2);
          *(v13 + 64) = *(v12 + v9 + 16);
          *(v13 + 48) = v25;
          v26 = v13 + a4;
          v27 = *(v12 + v9 + 24);
          *(v26 + 64) = *(v12 + v9 + 40);
          *(v26 + 48) = v27;
          v28 = v13 + v10;
          v29 = *(v12 + v9 + 48);
          *(v28 + 64) = *(v12 + v9 + 64);
          *(v28 + 48) = v29;
          v30 = v13 + v11;
          v31 = *(v12 + v9 + 72);
          *(v30 + 64) = *(v12 + v9 + 88);
          *(v30 + 48) = v31;
        }
      }

      v8 += 4;
      v13 += 4 * a4;
      v12 += 96;
    }

    while (v8 <= v7);
  }

  if (v8 >= v5)
  {
    return result;
  }

LABEL_19:
  if (v6 >= 4)
  {
    v78 = (v6 - 4);
    v79 = v8;
    v80 = (result + 24 * v8);
    v81 = a3 + a4 * v79;
    v82 = v81 + 48;
    result = v81 + 96 * ((v78 >> 2) & 0x1FFFFFFF) + 96;
    do
    {
      v83 = 0;
      v84 = v82;
      v85 = v80;
      do
      {
        v86 = *v85;
        *(v84 - 32) = *(v85 + 2);
        *(v84 - 48) = v86;
        v87 = *(v85 + a2);
        *(v84 - 8) = *(v85 + a2 + 16);
        *(v84 - 24) = v87;
        v88 = *(v85 + 2 * a2);
        *(v84 + 16) = *(v85 + 2 * a2 + 16);
        *v84 = v88;
        v89 = *(v85 + 3 * a2);
        *(v84 + 40) = *(v85 + 3 * a2 + 16);
        *(v84 + 24) = v89;
        v83 += 4;
        v85 = (v85 + 4 * a2);
        v84 += 96;
      }

      while (v83 <= v78);
      v90 = a2 * ((v78 & 0x7FFFFFFC) + 4);
      v91 = result;
      v92 = (v78 & 0x7FFFFFFC) + 4;
      if (v6 > v83)
      {
        do
        {
          v93 = *(v80 + v90);
          *(v91 + 16) = *(v80 + v90 + 16);
          *v91 = v93;
          v91 += 24;
          ++v92;
          v90 += a2;
        }

        while (v92 < v6);
      }

      ++v79;
      v80 = (v80 + 24);
      v82 += a4;
      result += a4;
    }

    while (v5 > v79);
  }

  else if (v6 >= 1)
  {
    v73 = (result + 24 * v8);
    v74 = a3 + a4 * v8 + 24;
    do
    {
      v75 = *v73;
      *(v74 - 8) = *(v73 + 2);
      *(v74 - 24) = v75;
      if (v6 != 1)
      {
        v76 = *(v73 + a2);
        *(v74 + 16) = *(v73 + a2 + 16);
        *v74 = v76;
        if (v6 != 2)
        {
          v77 = *(v73 + 2 * a2);
          *(v74 + 40) = *(v73 + 2 * a2 + 16);
          *(v74 + 24) = v77;
        }
      }

      LODWORD(v8) = v8 + 1;
      v73 = (v73 + 24);
      v74 += a4;
    }

    while (v5 > v8);
  }

  return result;
}

char *sub_10027B55C(char *result, uint64_t a2, _OWORD *a3, uint64_t a4, int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v8) = 0;
    if (v5 <= 0)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v6 >= 4)
  {
    v8 = 0;
    v32 = (v6 - 4);
    v33 = 4 * a4;
    v34 = a2 + 96;
    v35 = 2 * a2 + 96;
    v36 = 3 * a2;
    v37 = &a3[8 * ((v32 >> 2) & 0x1FFFFFFF) + 8];
    v38 = &result[a2 * ((v32 & 0x7FFFFFFC) + 4) + 64];
    v39 = result;
    v40 = a3;
    do
    {
      v41 = 0;
      v42 = v39;
      v43 = v40;
      do
      {
        v44 = v42[1];
        *v43 = *v42;
        v43[1] = v44;
        v45 = *(v42 + v34 - 80);
        v43[2] = *(v42 + a2);
        v43[3] = v45;
        v46 = *(v42 + v35 - 80);
        v43[4] = *(v42 + 2 * a2);
        v43[5] = v46;
        v47 = *(v42 + v36 + 16);
        v43[6] = *(v42 + 3 * a2);
        v43[7] = v47;
        v48 = (v43 + a4);
        v49 = v42[3];
        *v48 = v42[2];
        v48[1] = v49;
        v50 = *(v42 + v34 - 48);
        v48[2] = *(v42 + v34 - 64);
        v48[3] = v50;
        v51 = *(v42 + v35 - 48);
        v48[4] = *(v42 + v35 - 64);
        v48[5] = v51;
        v52 = *(v42 + v36 + 48);
        v48[6] = *(v42 + v36 + 32);
        v48[7] = v52;
        v53 = (v43 + a4 + a4);
        v54 = v42[5];
        *v53 = v42[4];
        v53[1] = v54;
        v55 = *(v42 + v34 - 16);
        v53[2] = *(v42 + v34 - 32);
        v53[3] = v55;
        v56 = *(v42 + v35 - 16);
        v53[4] = *(v42 + v35 - 32);
        v53[5] = v56;
        v57 = *(v42 + v36 + 80);
        v53[6] = *(v42 + v36 + 64);
        v53[7] = v57;
        v58 = (v53 + a4);
        v59 = v42[7];
        *v58 = v42[6];
        v58[1] = v59;
        v60 = *(v42 + v34 + 16);
        v58[2] = *(v42 + v34);
        v58[3] = v60;
        v61 = *(v42 + v35 + 16);
        v58[4] = *(v42 + v35);
        v58[5] = v61;
        v62 = *(v42 + v36 + 112);
        v58[6] = *(v42 + v36 + 96);
        v58[7] = v62;
        v41 += 4;
        v43 += 8;
        v42 = (v42 + 4 * a2);
      }

      while (v41 <= v32);
      v63 = v38;
      v64 = v37;
      v65 = (v32 & 0x7FFFFFFC) + 4;
      if (v6 > v41)
      {
        do
        {
          v66 = *(v63 - 3);
          *v64 = *(v63 - 4);
          v64[1] = v66;
          v67 = (v64 + a4);
          v68 = *(v63 - 1);
          *v67 = *(v63 - 2);
          v67[1] = v68;
          v69 = (v64 + 2 * a4);
          v70 = v63[1];
          *v69 = *v63;
          v69[1] = v70;
          v71 = (v64 + 3 * a4);
          v72 = v63[3];
          *v71 = v63[2];
          v71[1] = v72;
          ++v65;
          v64 += 2;
          v63 = (v63 + a2);
        }

        while (v65 < v6);
      }

      v8 += 4;
      v40 = (v40 + v33);
      v39 += 128;
      v37 = (v37 + v33);
      v38 += 128;
    }

    while (v8 <= v7);
  }

  else
  {
    if (v6 <= 0)
    {
      LODWORD(v8) = (v7 & 0xFFFFFFFC) + 4;
      if (v8 >= v5)
      {
        return result;
      }

      goto LABEL_19;
    }

    v8 = 0;
    v9 = 2 * a2;
    v10 = 2 * a4;
    v11 = 3 * a4;
    v12 = result;
    v13 = a3;
    do
    {
      v14 = (v13 + a4);
      v15 = (v13 + v10);
      v16 = (v13 + v11);
      v17 = v12[1];
      *v13 = *v12;
      v13[1] = v17;
      v18 = v12[3];
      *v14 = v12[2];
      v14[1] = v18;
      v19 = v12[5];
      *v15 = v12[4];
      v15[1] = v19;
      v20 = v12[7];
      *v16 = v12[6];
      v16[1] = v20;
      if (v6 != 1)
      {
        v21 = *(v12 + a2 + 16);
        v13[2] = *(v12 + a2);
        v13[3] = v21;
        v22 = *(v12 + a2 + 48);
        v14[2] = *(v12 + a2 + 32);
        v14[3] = v22;
        v23 = *(v12 + a2 + 80);
        v15[2] = *(v12 + a2 + 64);
        v15[3] = v23;
        v24 = *(v12 + a2 + 112);
        v16[2] = *(v12 + a2 + 96);
        v16[3] = v24;
        if (v6 != 2)
        {
          v25 = *(v12 + v9 + 16);
          v13[4] = *(v12 + 2 * a2);
          v13[5] = v25;
          v26 = v13 + a4;
          v27 = *(v12 + v9 + 48);
          *(v26 + 4) = *(v12 + v9 + 32);
          *(v26 + 5) = v27;
          v28 = v13 + v10;
          v29 = *(v12 + v9 + 80);
          *(v28 + 4) = *(v12 + v9 + 64);
          *(v28 + 5) = v29;
          v30 = v13 + v11;
          v31 = *(v12 + v9 + 112);
          *(v30 + 4) = *(v12 + v9 + 96);
          *(v30 + 5) = v31;
        }
      }

      v8 += 4;
      v13 = (v13 + 4 * a4);
      v12 += 8;
    }

    while (v8 <= v7);
  }

  if (v8 >= v5)
  {
    return result;
  }

LABEL_19:
  if (v6 >= 4)
  {
    v78 = (v6 - 4);
    v8 = v8;
    v79 = &result[32 * v8];
    v80 = a3 + a4 * v8;
    v81 = v80 + 64;
    result = &v80[128 * ((v78 >> 2) & 0x1FFFFFFF) + 128];
    do
    {
      v82 = 0;
      v83 = v81;
      v84 = v79;
      do
      {
        v85 = v84[1];
        *(v83 - 4) = *v84;
        *(v83 - 3) = v85;
        v86 = *(v84 + a2 + 16);
        *(v83 - 2) = *(v84 + a2);
        *(v83 - 1) = v86;
        v87 = *(v84 + 2 * a2 + 16);
        *v83 = *(v84 + 2 * a2);
        *(v83 + 1) = v87;
        v88 = *(v84 + 3 * a2 + 16);
        *(v83 + 2) = *(v84 + 3 * a2);
        *(v83 + 3) = v88;
        v82 += 4;
        v84 = (v84 + 4 * a2);
        v83 += 128;
      }

      while (v82 <= v78);
      v89 = a2 * ((v78 & 0x7FFFFFFC) + 4);
      v90 = result;
      v91 = (v78 & 0x7FFFFFFC) + 4;
      if (v6 > v82)
      {
        do
        {
          v92 = *&v79[v89 + 16];
          *v90 = *&v79[v89];
          *(v90 + 1) = v92;
          v90 += 32;
          ++v91;
          v89 += a2;
        }

        while (v91 < v6);
      }

      ++v8;
      v79 += 32;
      v81 += a4;
      result += a4;
    }

    while (v5 > v8);
  }

  else if (v6 >= 1)
  {
    v73 = &result[32 * v8];
    v74 = (a3 + a4 * v8 + 32);
    do
    {
      v75 = *(v73 + 1);
      *(v74 - 2) = *v73;
      *(v74 - 1) = v75;
      if (v6 != 1)
      {
        v76 = *&v73[a2 + 16];
        *v74 = *&v73[a2];
        v74[1] = v76;
        if (v6 != 2)
        {
          v77 = *&v73[2 * a2 + 16];
          v74[2] = *&v73[2 * a2];
          v74[3] = v77;
        }
      }

      LODWORD(v8) = v8 + 1;
      v73 += 32;
      v74 = (v74 + a4);
    }

    while (v5 > v8);
  }

  return result;
}

void sub_10027B954(char **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 5) >= a2)
  {
    if (a2)
    {
      v9 = &v3[96 * a2];
      do
      {
        *v3 = 1124007936;
        *(v3 + 4) = 0uLL;
        *(v3 + 20) = 0uLL;
        *(v3 + 36) = 0uLL;
        *(v3 + 10) = 0;
        *(v3 + 3) = 0uLL;
        *(v3 + 8) = v3 + 8;
        *(v3 + 9) = v3 + 80;
        *(v3 + 11) = 0;
        v3 += 96;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v6 = v5 + a2;
    if (v5 + a2 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_10000918C();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x155555555555555)
    {
      v8 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_10000927C();
    }

    v10 = 96 * v5;
    v11 = (96 * v5 + 96 * a2);
    v12 = 96 * v5;
    do
    {
      *v12 = 1124007936;
      *(v12 + 4) = 0uLL;
      *(v12 + 20) = 0uLL;
      *(v12 + 36) = 0uLL;
      *(v12 + 80) = 0;
      *(v12 + 48) = 0uLL;
      *(v12 + 64) = v12 + 8;
      *(v12 + 72) = v12 + 80;
      *(v12 + 88) = 0;
      v12 += 96;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = a1[1];
    v15 = v14 - *a1;
    v18 = (v10 + 96 * a2);
    if (v14 != *a1)
    {
      v16 = 0;
      v17 = 96 * v5 - 32 * ((v14 - *a1) >> 5);
      do
      {
        sub_10027BC2C(a1, v17 + v16, &v13[v16]);
        v16 += 96;
      }

      while (&v13[v16] != v14);
      do
      {
        sub_10027BD1C(a1, v13);
        v13 += 96;
      }

      while (v13 != v14);
      v13 = *a1;
      v11 = v18;
    }

    *a1 = (v10 - v15);
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }
}

uint64_t sub_10027BBD4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(a1 + 32);
    *(a1 + 16) = i - 96;
    sub_10027BD1C(v4, i - 96);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10027BC2C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[1];
  *a2 = *a3;
  *(a2 + 16) = v6;
  *(a2 + 32) = a3[2];
  v7 = *(a3 + 7);
  *(a2 + 48) = *(a3 + 6);
  *(a2 + 56) = v7;
  *(a2 + 80) = 0;
  *(a2 + 64) = a2 + 8;
  *(a2 + 72) = a2 + 80;
  *(a2 + 88) = 0;
  if (v7)
  {
    atomic_fetch_add((v7 + 20), 1u);
    if (*(a3 + 1) <= 2)
    {
LABEL_3:
      v8 = *(a3 + 9);
      v9 = *(a2 + 72);
      *v9 = *v8;
      v9[1] = v8[1];
      return;
    }
  }

  else if (SDWORD1(v5) <= 2)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = 0;
  sub_100269568(a2, *(a3 + 1), 0, 0, 0);
  if (*(a2 + 4) >= 1)
  {
    v10 = 0;
    v11 = *(a3 + 8);
    v12 = *(a3 + 9);
    v13 = *(a2 + 64);
    v14 = *(a2 + 72);
    do
    {
      *(v13 + 4 * v10) = *(v11 + 4 * v10);
      *(v14 + 8 * v10) = *(v12 + 8 * v10);
      ++v10;
    }

    while (v10 < *(a2 + 4));
  }
}

void sub_10027BD1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  if (v3)
  {
    if (atomic_fetch_add((v3 + 20), 0xFFFFFFFF) == 1)
    {
      v4 = *(a2 + 56);
      if (v4)
      {
        *(a2 + 56) = 0;
        v5 = *(v4 + 8);
        if (!v5)
        {
          v5 = *(a2 + 48);
          if (!v5)
          {
            v5 = sub_100268CC8();
          }
        }

        (*(*v5 + 48))(v5, v4);
      }
    }
  }

  *(a2 + 56) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  if (*(a2 + 4) >= 1)
  {
    v6 = 0;
    v7 = *(a2 + 64);
    do
    {
      *(v7 + 4 * v6++) = 0;
    }

    while (v6 < *(a2 + 4));
  }

  v8 = *(a2 + 72);
  if (v8 != (a2 + 80))
  {
    j__free(v8);
  }
}

void sub_10027BDEC(unint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 80 * a2;
      do
      {
        *v3 = 1124007936;
        *(v3 + 32) = 0;
        *(v3 + 40) = 0;
        *(v3 + 4) = 0;
        *(v3 + 20) = 0;
        *(v3 + 64) = 0;
        *(v3 + 12) = 0;
        *(v3 + 48) = v3 + 8;
        *(v3 + 56) = v3 + 64;
        *(v3 + 72) = 0;
        v3 += 80;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x333333333333333)
    {
      sub_10000918C();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x199999999999999)
    {
      v8 = 0x333333333333333;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x333333333333333)
      {
        operator new();
      }

      sub_10000927C();
    }

    v10 = 80 * v5;
    *(&v15 + 1) = 0;
    v11 = 80 * v5;
    do
    {
      *v11 = 1124007936;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      *(v11 + 4) = 0;
      *(v11 + 20) = 0;
      *(v11 + 64) = 0;
      *(v11 + 12) = 0;
      *(v11 + 48) = v11 + 8;
      *(v11 + 56) = v11 + 64;
      *(v11 + 72) = 0;
      v11 += 80;
    }

    while (v11 != 80 * v5 + 80 * a2);
    *&v15 = v10 + 80 * a2;
    v12 = a1[1];
    v13 = v10 + *a1 - v12;
    sub_10027C01C(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 1) = v15;
    if (v14)
    {
      operator delete(v14);
    }
  }
}

void sub_10027BFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10027BFC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10027BFC8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_1002B00D8(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10027C01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v10 = v6 + v7;
      v11 = a4 + v7;
      *v11 = *(v6 + v7);
      *(v11 + 16) = *(v6 + v7 + 16);
      *(v11 + 24) = *(v6 + v7 + 24);
      v12 = *(v6 + v7 + 32);
      v13 = *(v6 + v7 + 40);
      *(v11 + 32) = v12;
      *(v11 + 40) = v13;
      *(a4 + v7 + 64) = 0;
      *(v11 + 48) = a4 + v7 + 8;
      *(v11 + 56) = a4 + v7 + 64;
      *(v11 + 72) = 0;
      if (v12)
      {
        atomic_fetch_add((v12 + 16), 1u);
      }

      if (*(v10 + 4) <= 2)
      {
        v8 = *(v6 + v7 + 56);
        v9 = *(v11 + 56);
        *v9 = *v8;
        v9[1] = v8[1];
      }

      else
      {
        *(v11 + 4) = 0;
        sub_1002B07FC(v11, v10);
      }

      v7 += 80;
    }

    while (v6 + v7 != a3);
    while (v6 != a3)
    {
      sub_1002B00D8(v6);
      v6 += 80;
    }
  }
}

void sub_10027C108(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 80;
    v5 = -v2;
    do
    {
      v4 = sub_1002B00D8(v4) - 80;
      v5 += 80;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_10027C134(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10000918C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
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

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, v5, v6);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027C2E0(void **a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (a2 > (v3 - v4) >> 1)
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = v6 >> 1;
    v8 = (v6 >> 1) + a2;
    if (v8 < 0)
    {
      sub_10000918C();
    }

    v9 = v3 - v5;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000927C();
    }

    v12 = v6 >> 1;
    v13 = 2 * a2;
    bzero((2 * v7), 2 * a2);
    if (v5 == v4)
    {
      goto LABEL_21;
    }

    v14 = v4 - v5 - 2;
    if (v14 < 0xE || (v14 & 0xFFFFFFFFFFFFFFFELL) + v5 != -2 && v5 < v6 + (v14 & 0xFFFFFFFFFFFFFFFELL) - 2 * v12 + 2)
    {
      v15 = v5;
      v16 = (2 * v7 - 2 * v12);
      goto LABEL_19;
    }

    v17 = (v14 >> 1) + 1;
    if (v14 >= 0x3E)
    {
      v18 = v17 & 0xFFFFFFFFFFFFFFE0;
      v19 = (-2 * v12 + 2 * v7 + 32);
      v20 = (v5 + 32);
      v21 = v17 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v23 = *(v20 - 2);
        v22 = *(v20 - 1);
        v25 = *v20;
        v24 = v20[1];
        v20 += 4;
        *(v19 - 2) = v23;
        *(v19 - 1) = v22;
        *v19 = v25;
        v19[1] = v24;
        v19 += 4;
        v21 -= 32;
      }

      while (v21);
      if (v17 == v18)
      {
        goto LABEL_20;
      }

      if ((v17 & 0x18) == 0)
      {
        v16 = (2 * v18);
        v15 = (v5 + 2 * v18);
        do
        {
LABEL_19:
          *v16 = *v15;
          v16[1] = v15[1];
          v15 += 2;
          v16 += 2;
        }

        while (v15 != v4);
LABEL_20:
        v5 = *a1;
LABEL_21:
        *a1 = 0;
        a1[1] = (2 * v7 + v13);
        a1[2] = 0;
        if (v5)
        {

          operator delete(v5);
        }

        return;
      }
    }

    else
    {
      v18 = 0;
    }

    v16 = (2 * (v17 & 0xFFFFFFFFFFFFFFF8));
    v15 = &v16[v5];
    v26 = (2 * v18 + 2 * v7 - 2 * v12);
    v27 = (v5 + 2 * v18);
    v28 = v18 - (v17 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v29 = *v27++;
      *v26++ = v29;
      v28 += 8;
    }

    while (v28);
    if (v17 == (v17 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (a2)
  {
    v11 = 2 * a2;
    bzero(a1[1], 2 * a2);
    v4 += v11;
  }

  a1[1] = v4;
}

void sub_10027C544(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * (v3 - v4) < a2)
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = 0xAAAAAAAAAAAAAAABLL * v6 + a2;
    if (v7 >= 0x5555555555555556)
    {
      sub_10000918C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * (v3 - v5);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    v9 = v8 >= 0x2AAAAAAAAAAAAAAALL;
    v10 = 0x5555555555555555;
    if (!v9)
    {
      v10 = v7;
    }

    if (v10)
    {
      if (v10 < 0x5555555555555556)
      {
        operator new();
      }

      sub_10000927C();
    }

    v12 = &v4[-*a1];
    v13 = 3 * ((3 * a2 - 3) / 3) + 3;
    bzero(v6, v13);
    v14 = v6 - v12;
    if (v5 == v4)
    {
      goto LABEL_20;
    }

    v15 = v4 - v5 - 3;
    if (v15 < 0x15 || (v16 = 3 * (v15 / 3), v14 < &v5[v16 + 3]) && v5 < v6 - v12 + v16 + 3)
    {
      v17 = v5;
      v18 = (v6 - v12);
      goto LABEL_18;
    }

    v19 = v15 / 3 + 1;
    if (v15 >= 0x5D)
    {
      v20 = v19 & 0x7FFFFFFFFFFFFFE0;
      v21 = v5;
      v22 = (v6 - v12);
      v23 = v19 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v24 = v21[1];
        v26 = v21[4];
        v25 = v21[5];
        v27 = v21[2];
        v28 = v21[3];
        *v22 = *v21;
        v22[1] = v24;
        v22[2] = v27;
        v22[3] = v28;
        v22[4] = v26;
        v22[5] = v25;
        v22 += 6;
        v21 += 6;
        v23 -= 32;
      }

      while (v23);
      if (v19 == v20)
      {
        goto LABEL_19;
      }

      if ((v19 & 0x18) == 0)
      {
        v18 = (v14 + 3 * v20);
        v17 = &v5[3 * v20];
        do
        {
LABEL_18:
          *v18 = *v17;
          v18[1] = v17[1];
          v18[2] = v17[2];
          v17 += 3;
          v18 += 3;
        }

        while (v17 != v4);
LABEL_19:
        v5 = *a1;
LABEL_20:
        *a1 = v14;
        *(a1 + 8) = v6 + v13;
        *(a1 + 16) = 0;
        if (v5)
        {

          operator delete(v5);
        }

        return;
      }
    }

    else
    {
      v20 = 0;
    }

    v29 = 3 * (v19 & 0x7FFFFFFFFFFFFFF8);
    v17 = &v5[v29];
    v18 = (v14 + v29);
    v30 = v20 - (v19 & 0x7FFFFFFFFFFFFFF8);
    v31 = 3 * v20;
    v32 = v6 + v31 - v12;
    v33 = &v5[v31];
    do
    {
      v34 = *v33;
      *(v32 + 2) = *(v33 + 2);
      *v32 = v34;
      v32 += 24;
      v33 += 24;
      v30 += 8;
    }

    while (v30);
    if (v19 == (v19 & 0x7FFFFFFFFFFFFFF8))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    v11 = 3 * ((3 * a2 - 3) / 3) + 3;
    bzero(*(a1 + 8), v11);
    v4 += v11;
  }

  *(a1 + 8) = v4;
}

void sub_10027C854(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 1) < a2)
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 1) + a2;
    if (v7 > 0x2AAAAAAAAAAAAAAALL)
    {
      sub_10000918C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 1);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x1555555555555555)
    {
      v9 = 0x2AAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0x2AAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (2 * (v6 >> 1));
    v12 = 6 * ((6 * a2 - 6) / 6) + 6;
    bzero(v11, v12);
    v13 = v4 - v5;
    v14 = &v11[-(v4 - v5)];
    if (v5 == v4)
    {
      goto LABEL_33;
    }

    v15 = v4 - v5 - 6;
    v16 = v5;
    v17 = &v11[-(v4 - v5)];
    if (v15 < 0x12)
    {
      goto LABEL_32;
    }

    v18 = 0x5555555555555555 * (v13 >> 1);
    v19 = 3 * (v15 / 6);
    v20 = v14 >= &v5[v19 + 3] || v5 >= v6 - 2 * (v13 >> 1) + v19 * 2 + 6;
    v16 = v5;
    v17 = &v11[-(v4 - v5)];
    if (!v20)
    {
      goto LABEL_32;
    }

    v21 = v15 / 6 + 1;
    if (v15 >= 0x5A)
    {
      v22 = v21 & 0x7FFFFFFFFFFFFFF0;
      v23 = v5;
      v24 = &v11[-(v4 - v5)];
      v25 = v21 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v26 = v23[1];
        v28 = v23[4];
        v27 = v23[5];
        v29 = v23[2];
        v30 = v23[3];
        *v24 = *v23;
        *(v24 + 1) = v26;
        *(v24 + 2) = v29;
        *(v24 + 3) = v30;
        *(v24 + 4) = v28;
        *(v24 + 5) = v27;
        v24 += 96;
        v23 += 6;
        v25 -= 16;
      }

      while (v25);
      if (v21 == v22)
      {
LABEL_33:
        *a1 = v14;
        *(a1 + 8) = 2 * (v6 >> 1) + v12;
        *(a1 + 16) = 0;
        if (v5)
        {

          operator delete(v5);
        }

        return;
      }

      if ((v21 & 0xC) == 0)
      {
        v17 = (v14 + 6 * v22);
        v16 = &v5[3 * v22];
        goto LABEL_32;
      }
    }

    else
    {
      v22 = 0;
    }

    v31 = 3 * (v21 & 0x7FFFFFFFFFFFFFFCLL);
    v16 = &v5[v31];
    v17 = (v14 + v31 * 2);
    v32 = v22 - (v21 & 0x7FFFFFFFFFFFFFFCLL);
    v33 = 3 * v22;
    v34 = 2 * (v6 >> 1) + v33 * 2 + 6 * v18;
    v35 = &v5[v33];
    do
    {
      v36 = *v35;
      *(v34 + 16) = *(v35 + 2);
      *v34 = v36;
      v34 += 24;
      v35 += 24;
      v32 += 4;
    }

    while (v32);
    if (v21 == (v21 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_33;
    }

    do
    {
LABEL_32:
      *v17 = *v16;
      *(v17 + 1) = v16[1];
      *(v17 + 2) = v16[2];
      v16 += 3;
      v17 += 6;
    }

    while (v16 != v4);
    goto LABEL_33;
  }

  if (a2)
  {
    v10 = 6 * ((6 * a2 - 6) / 6) + 6;
    bzero(*(a1 + 8), v10);
    v4 += v10;
  }

  *(a1 + 8) = v4;
}

void sub_10027CB6C(void **a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v11 = 8 * a2;
      bzero(a1[1], 8 * a2);
      v4 += v11;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = v6 >> 3;
    v8 = (v6 >> 3) + a2;
    if (v8 >> 61)
    {
      sub_10000918C();
    }

    v9 = v3 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_10000927C();
    }

    v12 = v6 >> 3;
    v13 = 8 * v7;
    v14 = 8 * a2;
    bzero((8 * v7), 8 * a2);
    if (v5 != v4)
    {
      v15 = v4 - v5 - 8;
      v16 = v5;
      v17 = (v13 - 8 * v12);
      if (v15 < 0x78)
      {
        goto LABEL_31;
      }

      if (&v5[v15 & 0xFFFFFFFFFFFFFFF8] != -8)
      {
        v16 = v5;
        v17 = (v13 - 8 * v12);
        if (v5 < v6 + (v15 & 0xFFFFFFFFFFFFFFF8) - 8 * v12 + 8)
        {
          goto LABEL_31;
        }
      }

      v18 = (v15 >> 3) + 1;
      v17 = (8 * (v18 & 0x3FFFFFFFFFFFFFF8));
      v16 = v17 + v5;
      v19 = (-8 * v12 + 8 * v7 + 32);
      v20 = (v5 + 32);
      v21 = v18 & 0x3FFFFFFFFFFFFFF8;
      do
      {
        v23 = *(v20 - 2);
        v22 = *(v20 - 1);
        v25 = *v20;
        v24 = v20[1];
        v20 += 4;
        *(v19 - 2) = v23;
        *(v19 - 1) = v22;
        *v19 = v25;
        v19[1] = v24;
        v19 += 4;
        v21 -= 8;
      }

      while (v21);
      if (v18 != (v18 & 0x3FFFFFFFFFFFFFF8))
      {
LABEL_31:
        do
        {
          *v17 = *v16;
          v17[1] = *(v16 + 1);
          v16 += 8;
          v17 += 2;
        }

        while (v16 != v4);
      }
    }

    *a1 = 0;
    a1[1] = (8 * v7 + v14);
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027CD80(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2) + a2;
    if (v7 > 0x1555555555555555)
    {
      sub_10000918C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v11, v12);
    v13 = &v11[-(v4 - v5)];
    if (v5 != v4)
    {
      v14 = v4 - v5 - 12;
      v15 = v5;
      v16 = &v11[-(v4 - v5)];
      if (v14 < 0xB4)
      {
        goto LABEL_34;
      }

      v17 = 12 * (v14 / 0xC);
      v18 = v13 >= &v5[v17 + 12] || v5 >= v6 - 4 * ((v4 - v5) >> 2) + v17 + 12;
      v15 = v5;
      v16 = &v11[-(v4 - v5)];
      if (!v18)
      {
        goto LABEL_34;
      }

      v19 = v14 / 0xC + 1;
      v20 = 12 * (v19 & 0x3FFFFFFFFFFFFFF8);
      v15 = &v5[v20];
      v16 = (v13 + v20);
      v21 = v5;
      v22 = &v11[-(v4 - v5)];
      v23 = v19 & 0x3FFFFFFFFFFFFFF8;
      do
      {
        v24 = *(v21 + 1);
        v26 = *(v21 + 4);
        v25 = *(v21 + 5);
        v27 = *(v21 + 2);
        v28 = *(v21 + 3);
        *v22 = *v21;
        *(v22 + 1) = v24;
        *(v22 + 2) = v27;
        *(v22 + 3) = v28;
        *(v22 + 4) = v26;
        *(v22 + 5) = v25;
        v22 += 96;
        v21 += 96;
        v23 -= 8;
      }

      while (v23);
      if (v19 != (v19 & 0x3FFFFFFFFFFFFFF8))
      {
LABEL_34:
        do
        {
          *v16 = *v15;
          *(v16 + 1) = *(v15 + 1);
          *(v16 + 2) = *(v15 + 2);
          v15 += 12;
          v16 += 12;
        }

        while (v15 != v4);
      }
    }

    *a1 = v13;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027D01C(void **a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v11 = 16 * a2;
      bzero(a1[1], 16 * a2);
      v4 += v11;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = v6 >> 4;
    v8 = (v6 >> 4) + a2;
    if (v8 >> 60)
    {
      sub_10000918C();
    }

    v9 = v3 - v5;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      sub_10000927C();
    }

    v12 = v6 >> 4;
    v13 = 16 * v7;
    v14 = 16 * a2;
    bzero((16 * v7), 16 * a2);
    if (v5 != v4)
    {
      v15 = v4 - v5 - 16;
      v16 = v5;
      v17 = (v13 - 16 * v12);
      if (v15 < 0x70)
      {
        goto LABEL_31;
      }

      if (&v5[v15 & 0xFFFFFFFFFFFFFFF0] != -16)
      {
        v16 = v5;
        v17 = (v13 - 16 * v12);
        if (v5 < v6 + (v15 & 0xFFFFFFFFFFFFFFF0) - 16 * v12 + 16)
        {
          goto LABEL_31;
        }
      }

      v18 = (v15 >> 4) + 1;
      v17 = (16 * (v18 & 0x1FFFFFFFFFFFFFF8));
      v16 = v17 + v5;
      v19 = (-16 * v12 + 16 * v7 + 64);
      v20 = (v5 + 64);
      v21 = v18 & 0x1FFFFFFFFFFFFFF8;
      do
      {
        v23 = *(v20 - 4);
        v22 = *(v20 - 3);
        v24 = *(v20 - 1);
        v26 = *v20;
        v25 = v20[1];
        v28 = v20[2];
        v27 = v20[3];
        *(v19 - 2) = *(v20 - 2);
        *(v19 - 1) = v24;
        *(v19 - 4) = v23;
        *(v19 - 3) = v22;
        v19[2] = v28;
        v19[3] = v27;
        *v19 = v26;
        v19[1] = v25;
        v19 += 8;
        v20 += 8;
        v21 -= 8;
      }

      while (v21);
      if (v18 != (v18 & 0x1FFFFFFFFFFFFFF8))
      {
LABEL_31:
        do
        {
          *v17 = *v16;
          v17[1] = *(v16 + 1);
          v17[2] = *(v16 + 2);
          v17[3] = *(v16 + 3);
          v16 += 16;
          v17 += 4;
        }

        while (v16 != v4);
      }
    }

    *a1 = 0;
    a1[1] = (16 * v7 + v14);
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027D254(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0xAAAAAAAAAAAAAAABLL * (&v4[-*a1] >> 3) + a2;
    if (v6 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10000918C();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
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

      sub_10000927C();
    }

    v10 = (8 * (&v4[-*a1] >> 3));
    v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v10, v11);
    if (v5 != v4)
    {
      v12 = v5;
      v13 = &v10[v5 - v4];
      do
      {
        *v13 = *v12;
        *(v13 + 1) = *(v12 + 1);
        *(v13 + 2) = *(v12 + 2);
        *(v13 + 3) = *(v12 + 3);
        *(v13 + 4) = *(v12 + 4);
        *(v13 + 5) = *(v12 + 5);
        v12 += 24;
        v13 += 24;
      }

      while (v12 != v4);
    }

    *a1 = &v10[v5 - v4];
    *(a1 + 8) = &v10[v11];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027D440(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 5)
  {
    if (a2)
    {
      v10 = 32 * a2;
      bzero(*(a1 + 8), 32 * a2);
      v4 = (v4 + v10);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = (v4 - *a1) >> 5;
    v7 = v6 + a2;
    if ((v6 + a2) >> 59)
    {
      sub_10000918C();
    }

    v8 = v3 - v5;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 59))
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (v4 - *a1) >> 5;
    v12 = (32 * v6);
    v13 = 32 * a2;
    bzero(v12, 32 * a2);
    if (v5 != v4)
    {
      v14 = v5;
      v15 = &v12[-32 * v11];
      do
      {
        *v15 = *v14;
        *(v15 + 1) = v14[1];
        *(v15 + 2) = v14[2];
        *(v15 + 3) = v14[3];
        *(v15 + 4) = v14[4];
        *(v15 + 5) = v14[5];
        *(v15 + 6) = v14[6];
        *(v15 + 7) = v14[7];
        v14 += 8;
        v15 += 32;
      }

      while (v14 != v4);
    }

    *a1 = &v12[-32 * v11];
    *(a1 + 8) = &v12[v13];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027D5E4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v3 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 36 * ((36 * a2 - 36) / 0x24) + 36;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0x8E38E38E38E38E39 * (&v4[-*a1] >> 2);
    if (v6 + a2 > 0x71C71C71C71C71CLL)
    {
      sub_10000918C();
    }

    v7 = 0x8E38E38E38E38E39 * ((v3 - v5) >> 2);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x38E38E38E38E38ELL)
    {
      v9 = 0x71C71C71C71C71CLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0x71C71C71C71C71CLL)
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (4 * (&v4[-*a1] >> 2));
    v12 = 36 * ((36 * a2 - 36) / 0x24) + 36;
    bzero(v11, v12);
    if (v5 != v4)
    {
      v13 = v5;
      v14 = &v11[v5 - v4];
      do
      {
        *v14 = *v13;
        *(v14 + 1) = *(v13 + 1);
        *(v14 + 2) = *(v13 + 2);
        *(v14 + 3) = *(v13 + 3);
        *(v14 + 4) = *(v13 + 4);
        *(v14 + 5) = *(v13 + 5);
        *(v14 + 6) = *(v13 + 6);
        *(v14 + 7) = *(v13 + 7);
        *(v14 + 8) = *(v13 + 8);
        v13 += 36;
        v14 += 36;
      }

      while (v13 != v4);
    }

    *a1 = &v11[v5 - v4];
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027D80C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = 48 * ((48 * a2 - 48) / 0x30) + 48;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0xAAAAAAAAAAAAAAABLL * (&v4[-*a1] >> 4) + a2;
    if (v6 > 0x555555555555555)
    {
      sub_10000918C();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x2AAAAAAAAAAAAAALL)
    {
      v8 = 0x555555555555555;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x555555555555555)
      {
        operator new();
      }

      sub_10000927C();
    }

    v10 = (16 * (&v4[-*a1] >> 4));
    v11 = 48 * ((48 * a2 - 48) / 0x30) + 48;
    bzero(v10, v11);
    if (v5 != v4)
    {
      v12 = v5;
      v13 = &v10[v5 - v4];
      do
      {
        *v13 = *v12;
        *(v13 + 1) = *(v12 + 1);
        *(v13 + 2) = *(v12 + 2);
        *(v13 + 3) = *(v12 + 3);
        *(v13 + 4) = *(v12 + 4);
        *(v13 + 5) = *(v12 + 5);
        *(v13 + 6) = *(v12 + 6);
        *(v13 + 7) = *(v12 + 7);
        *(v13 + 8) = *(v12 + 8);
        *(v13 + 9) = *(v12 + 9);
        *(v13 + 10) = *(v12 + 10);
        *(v13 + 11) = *(v12 + 11);
        v12 += 48;
        v13 += 48;
      }

      while (v12 != v4);
    }

    *a1 = &v10[v5 - v4];
    *(a1 + 8) = &v10[v11];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027DA28(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 6)
  {
    if (a2)
    {
      v10 = a2 << 6;
      bzero(*(a1 + 8), a2 << 6);
      v4 = (v4 + v10);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = (v4 - *a1) >> 6;
    v7 = v6 + a2;
    if ((v6 + a2) >> 58)
    {
      sub_10000918C();
    }

    v8 = v3 - v5;
    if (v8 >> 5 > v7)
    {
      v7 = v8 >> 5;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v9 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 58))
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (v4 - *a1) >> 6;
    v12 = (v6 << 6);
    v13 = a2 << 6;
    bzero(v12, a2 << 6);
    if (v5 != v4)
    {
      v14 = v5;
      v15 = &v12[-64 * v11];
      do
      {
        *v15 = *v14;
        *(v15 + 1) = v14[1];
        *(v15 + 2) = v14[2];
        *(v15 + 3) = v14[3];
        *(v15 + 4) = v14[4];
        *(v15 + 5) = v14[5];
        *(v15 + 6) = v14[6];
        *(v15 + 7) = v14[7];
        *(v15 + 8) = v14[8];
        *(v15 + 9) = v14[9];
        *(v15 + 10) = v14[10];
        *(v15 + 11) = v14[11];
        *(v15 + 12) = v14[12];
        *(v15 + 13) = v14[13];
        *(v15 + 14) = v14[14];
        *(v15 + 15) = v14[15];
        v14 += 16;
        v15 += 64;
      }

      while (v14 != v4);
    }

    *a1 = &v12[-64 * v11];
    *(a1 + 8) = &v12[v13];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027DC0C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 7)
  {
    if (a2)
    {
      v10 = a2 << 7;
      bzero(*(a1 + 8), a2 << 7);
      v4 = (v4 + v10);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = (v4 - *a1) >> 7;
    v7 = v6 + a2;
    if ((v6 + a2) >> 57)
    {
      sub_10000918C();
    }

    v8 = v3 - v5;
    if (v8 >> 6 > v7)
    {
      v7 = v8 >> 6;
    }

    if (v8 >= 0x7FFFFFFFFFFFFF80)
    {
      v9 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 57))
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (v4 - *a1) >> 7;
    v12 = a2 << 7;
    v13 = (v6 << 7);
    bzero(v13, a2 << 7);
    v14 = &v13[-128 * v11];
    sub_10027DD80(a1, v5, v4, v14);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = &v13[v12];
    *(a1 + 16) = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_10027DD68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10027DD80(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  for (; a2 != a3; a4 += 32)
  {
    *a4 = *a2;
    a4[1] = a2[1];
    a4[2] = a2[2];
    a4[3] = a2[3];
    a4[4] = a2[4];
    a4[5] = a2[5];
    a4[6] = a2[6];
    a4[7] = a2[7];
    a4[8] = a2[8];
    a4[9] = a2[9];
    a4[10] = a2[10];
    a4[11] = a2[11];
    a4[12] = a2[12];
    a4[13] = a2[13];
    a4[14] = a2[14];
    a4[15] = a2[15];
    a4[16] = a2[16];
    a4[17] = a2[17];
    a4[18] = a2[18];
    a4[19] = a2[19];
    a4[20] = a2[20];
    a4[21] = a2[21];
    a4[22] = a2[22];
    a4[23] = a2[23];
    a4[24] = a2[24];
    a4[25] = a2[25];
    a4[26] = a2[26];
    a4[27] = a2[27];
    a4[28] = a2[28];
    a4[29] = a2[29];
    a4[30] = a2[30];
    a4[31] = a2[31];
    a2 += 32;
  }
}

void sub_10027DE9C(char **a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (a2 <= (v3 - v4) >> 8)
  {
    if (a2)
    {
      v10 = a2 << 8;
      bzero(a1[1], a2 << 8);
      v4 += v10;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = *a1;
    v6 = (v4 - *a1) >> 8;
    v7 = v6 + a2;
    if ((v6 + a2) >> 56)
    {
      sub_10000918C();
    }

    v8 = v3 - v5;
    if (v8 >> 7 > v7)
    {
      v7 = v8 >> 7;
    }

    if (v8 >= 0x7FFFFFFFFFFFFF00)
    {
      v9 = 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!HIBYTE(v9))
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (v4 - *a1) >> 8;
    v12 = (v6 << 8);
    v13 = a2 << 8;
    bzero(v12, a2 << 8);
    v14 = &v12[v13];
    v15 = &v12[-256 * v11];
    if (v5 != v4)
    {
      v16 = v15;
      do
      {
        v17 = sub_10027E008(v16, v5);
        v5 += 256;
        v16 = (v17 + 64);
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v15;
    a1[1] = v14;
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

_DWORD *sub_10027E008(_DWORD *result, _DWORD *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  result[6] = a2[6];
  result[7] = a2[7];
  result[8] = a2[8];
  result[9] = a2[9];
  result[10] = a2[10];
  result[11] = a2[11];
  result[12] = a2[12];
  result[13] = a2[13];
  result[14] = a2[14];
  result[15] = a2[15];
  result[16] = a2[16];
  result[17] = a2[17];
  result[18] = a2[18];
  result[19] = a2[19];
  result[20] = a2[20];
  result[21] = a2[21];
  result[22] = a2[22];
  result[23] = a2[23];
  result[24] = a2[24];
  result[25] = a2[25];
  result[26] = a2[26];
  result[27] = a2[27];
  result[28] = a2[28];
  result[29] = a2[29];
  result[30] = a2[30];
  result[31] = a2[31];
  result[32] = a2[32];
  result[33] = a2[33];
  result[34] = a2[34];
  result[35] = a2[35];
  result[36] = a2[36];
  result[37] = a2[37];
  result[38] = a2[38];
  result[39] = a2[39];
  result[40] = a2[40];
  result[41] = a2[41];
  result[42] = a2[42];
  result[43] = a2[43];
  result[44] = a2[44];
  result[45] = a2[45];
  result[46] = a2[46];
  result[47] = a2[47];
  result[48] = a2[48];
  result[49] = a2[49];
  result[50] = a2[50];
  result[51] = a2[51];
  result[52] = a2[52];
  result[53] = a2[53];
  result[54] = a2[54];
  result[55] = a2[55];
  result[56] = a2[56];
  result[57] = a2[57];
  result[58] = a2[58];
  result[59] = a2[59];
  result[60] = a2[60];
  result[61] = a2[61];
  result[62] = a2[62];
  result[63] = a2[63];
  return result;
}

void sub_10027E20C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 9)
  {
    if (a2)
    {
      v10 = a2 << 9;
      bzero(*(a1 + 8), a2 << 9);
      v4 = (v4 + v10);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 9) + a2;
    if (v7 >> 55)
    {
      sub_10000918C();
    }

    v8 = v3 - v5;
    if (v8 >> 8 > v7)
    {
      v7 = v8 >> 8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFE00)
    {
      v9 = 0x7FFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 55))
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = v6 >> 9;
    v12 = (v6 >> 9 << 9);
    v13 = a2 << 9;
    bzero(v12, a2 << 9);
    if (v5 != v4)
    {
      if ((v6 - &v5[32 * v11]) >= 0x20)
      {
        v17 = v5;
        v18 = &v12[-512 * v11];
        do
        {
          v19 = v17[1];
          *v18 = *v17;
          *(v18 + 1) = v19;
          v20 = v17[3];
          *(v18 + 2) = v17[2];
          *(v18 + 3) = v20;
          v21 = v17[5];
          *(v18 + 4) = v17[4];
          *(v18 + 5) = v21;
          v22 = v17[7];
          *(v18 + 6) = v17[6];
          *(v18 + 7) = v22;
          v23 = v17[9];
          *(v18 + 8) = v17[8];
          *(v18 + 9) = v23;
          v24 = v17[11];
          *(v18 + 10) = v17[10];
          *(v18 + 11) = v24;
          v25 = v17[13];
          *(v18 + 12) = v17[12];
          *(v18 + 13) = v25;
          v26 = v17[15];
          *(v18 + 14) = v17[14];
          *(v18 + 15) = v26;
          v27 = v17[17];
          *(v18 + 16) = v17[16];
          *(v18 + 17) = v27;
          v28 = v17[19];
          *(v18 + 18) = v17[18];
          *(v18 + 19) = v28;
          v29 = v17[21];
          *(v18 + 20) = v17[20];
          *(v18 + 21) = v29;
          v30 = v17[23];
          *(v18 + 22) = v17[22];
          *(v18 + 23) = v30;
          v31 = v17[25];
          *(v18 + 24) = v17[24];
          *(v18 + 25) = v31;
          v32 = v17[27];
          *(v18 + 26) = v17[26];
          *(v18 + 27) = v32;
          v33 = v17[29];
          *(v18 + 28) = v17[28];
          *(v18 + 29) = v33;
          v34 = v17[31];
          *(v18 + 30) = v17[30];
          *(v18 + 31) = v34;
          v17 += 32;
          v18 += 512;
        }

        while (v17 != v4);
      }

      else
      {
        v14 = v5;
        v15 = &v12[-512 * v11];
        do
        {
          for (i = 0; i != 512; i += 4)
          {
            *&v15[i] = *(v14 + i);
          }

          v14 += 32;
          v15 += 512;
        }

        while (v14 != v4);
      }
    }

    *a1 = &v12[-512 * v11];
    *(a1 + 8) = &v12[v13];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027E448(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_10000918C();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_10027E59C()
{
  dword_1004BD590 = 50331648;
  qword_1004BD598 = 0;
  unk_1004BD5A0 = 0;
  return __cxa_atexit(nullsub_16, &dword_1004BD590, &_mh_execute_header);
}

uint64_t sub_10027E5CC(uint64_t a1, unint64_t a2, uint64_t a3, __n128 *a4, unint64_t a5, uint64_t a6)
{
  v6 = a6;
  v9 = a3;
  sub_1002ACE7C(v18, &off_100475120);
  v16 = sub_10027E660(a1, a2, v9, a4, a5, v6, v12, v13, v14, v15);
  if (v18[2])
  {
    sub_1002ACC1C(v18);
  }

  return v16;
}

uint64_t sub_10027E660(uint64_t a1, unint64_t a2, unsigned int a3, __n128 *a4, unint64_t a5, int a6, double a7, double a8, double a9, __n128 a10)
{
  if (a3 < 1)
  {
    return 1;
  }

  v10 = a1;
  v156 = a3 - 1;
  v11 = 0;
  v12 = a3;
  v13 = a6;
  v14 = a2 >> 2;
  v15 = a5 >> 2;
  if (a4)
  {
    v16 = a6 < 1;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16;
  v18 = 4 * a3;
  v166 = a5 & 0xFFFFFFFFFFFFFFFCLL;
  v167 = a4->n128_u64 + 4 * a6;
  v163 = v167 + v15 * (v18 - 4);
  v174 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  v173 = a1 + v18;
  v162 = a1 + v18 + v14 * (v18 - 4);
  v184 = a3 - 1;
  v158 = a4->n128_u64 + 4 * a6 + 4 * v15 * v184;
  v159 = a5 >> 2;
  v171 = (a2 & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v161 = a1 + v171;
  v160 = a4->n128_u64 + (a5 & 0xFFFFFFFFFFFFFFFCLL);
  v19 = a6 & 0x7FFFFFF8;
  v20 = 4 * v14;
  v169 = a4;
  v170 = 4 * v14 + 4;
  v21 = (a1 + 16);
  v22 = a4 + 1;
  v23 = 4 * v15;
  v24 = (a1 + 20);
  v182 = a1 + 20 + 4 * v14;
  v183 = (a1 + 4 * v14);
  v181 = a4[1].n128_u64 + v23;
  v180 = a4 + v23;
  v25 = 1;
  v157 = a4 + 1;
  v26 = a1 + 16;
  v27 = a3;
  v28 = v183;
  v172 = 1;
  do
  {
    v29 = v10 + 4 * v11;
    if (v11 + 1 >= a3)
    {
      v32 = v11;
    }

    else
    {
      v30 = v28;
      v31 = v25;
      v32 = v11;
      do
      {
        if (fabsf(*v30) > fabsf(*(v29 + 4 * v14 * v32)))
        {
          v32 = v31;
        }

        ++v31;
        v30 = (v30 + v20);
      }

      while (a3 != v31);
    }

    if (fabsf(*(v10 + 4 * v14 * v32 + 4 * v11)) < 0.0000011921)
    {
      return 0;
    }

    v176 = v28;
    v177 = v27;
    v33 = v10 + v171 * v11;
    v34 = v173 + v174 * v11;
    v178 = v26;
    v179 = v21;
    if (v11 != v32)
    {
      v35 = a3 - v11;
      v36 = v11;
      if (v35 < 8)
      {
        goto LABEL_25;
      }

      if (v33 < v173 + v174 * v32)
      {
        v36 = v11;
        if (v29 + v174 * v32 < v34)
        {
          goto LABEL_25;
        }
      }

      v37 = v27 & 0xFFFFFFFFFFFFFFF8;
      v36 = v11 + (v35 & 0xFFFFFFFFFFFFFFF8);
      v38 = (v26 + v20 * v32);
      v39 = v21;
      do
      {
        v40 = v39[-1];
        a10 = *v39;
        v41 = *v38;
        v39[-1] = v38[-1];
        *v39 = v41;
        v38[-1] = v40;
        *v38 = a10;
        v38 += 2;
        v39 += 2;
        v37 -= 8;
      }

      while (v37);
      v34 = v173 + v174 * v11;
      if (v35 != (v35 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_25:
        v42 = (a1 + 4 * v36);
        v43 = (v10 + 4 * v36 + v20 * v32);
        v44 = a3 - v36;
        do
        {
          v45 = *v42;
          *v42++ = *v43;
          *v43++ = v45;
          --v44;
        }

        while (v44);
      }

      if (v17)
      {
        goto LABEL_32;
      }

      if (a6 >= 8)
      {
        v46 = 0;
        if ((v169 + 4 * v159 * v32 >= v158 || v167 + v166 * v32 <= v169) && (a5 & 0x8000000000000000) == 0)
        {
          v79 = (v157 + v23 * v32);
          v80 = v13 & 0x7FFFFFF8;
          v81 = v22;
          do
          {
            v82 = v81[-1];
            a10 = *v81;
            v83 = *v79;
            v81[-1] = v79[-1];
            *v81 = v83;
            v79[-1] = v82;
            *v79 = a10;
            v81 += 2;
            v79 += 2;
            v80 -= 8;
          }

          while (v80);
          v46 = v13 & 0x7FFFFFF8;
          if (v13 == v19)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        v46 = 0;
      }

      v47 = a4 + v46;
      v48 = (v169 + 4 * v46 + v23 * v32);
      v49 = v13 - v46;
      do
      {
        v50 = *v47;
        *v47++ = *v48;
        *v48++ = v50;
        --v49;
      }

      while (v49);
LABEL_32:
      v172 = -v172;
    }

    v175 = v11 + 1;
    if (v11 + 1 < a3)
    {
      v51 = ~v11 + a3;
      v55 = v161 + v171 * v11 < v34 && v33 + 4 < v162 || (a2 & 0x8000000000000000) != 0 || v51 < 8;
      v59 = v160 < v167 && v169 + v166 * v11 < v163 || (a5 & 0x8000000000000000) != 0 || a6 < 8;
      v61 = v180;
      v60 = v181;
      v62 = -1.0 / *(v10 + 4 * v14 * v11 + 4 * v11);
      v64 = v182;
      v63 = v183;
      v65 = v25;
      do
      {
        a10.n128_f32[0] = v62 * *(v10 + 4 * v14 * v65 + 4 * v11);
        v66 = v25;
        if (v55)
        {
          goto LABEL_153;
        }

        v67 = vdupq_lane_s32(a10.n128_u64[0], 0);
        v68 = v64;
        v69 = v24;
        v70 = v184 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v71 = vmlaq_f32(*v68, *v69, v67);
          v68[-1] = vmlaq_f32(v68[-1], v69[-1], v67);
          *v68 = v71;
          v69 += 2;
          v68 += 2;
          v70 -= 8;
        }

        while (v70);
        v66 = v25 + (v51 & 0xFFFFFFFFFFFFFFF8);
        if (v51 != (v51 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_153:
          do
          {
            v63[v66] = v63[v66] + (a10.n128_f32[0] * *(a1 + 4 * v66));
            ++v66;
          }

          while (a3 != v66);
        }

        if (v17)
        {
          goto LABEL_59;
        }

        if (v59)
        {
          v72 = 0;
        }

        else
        {
          v73 = vdupq_lane_s32(a10.n128_u64[0], 0);
          v74 = v60;
          v75 = v22;
          v76 = v13 & 0x7FFFFFF8;
          do
          {
            v77 = vmlaq_f32(*v74, *v75, v73);
            v74[-1] = vmlaq_f32(v74[-1], v75[-1], v73);
            *v74 = v77;
            v75 += 2;
            v74 += 2;
            v76 -= 8;
          }

          while (v76);
          v72 = v13 & 0x7FFFFFF8;
          if (v13 == v19)
          {
            goto LABEL_59;
          }
        }

        do
        {
          *(v61 + 4 * v72) = *(v61 + 4 * v72) + (a10.n128_f32[0] * a4->n128_f32[v72]);
          ++v72;
        }

        while (v13 != v72);
LABEL_59:
        ++v65;
        v64 = (v64 + v20);
        v63 = (v63 + v20);
        v60 = (v60 + v23);
        v61 += v23;
      }

      while (v65 != a3);
    }

    ++v25;
    v28 = (v176 + v170);
    v27 = v177 - 1;
    v26 = v178 + 4;
    v21 = (v179 + v170);
    a1 += v20;
    v22 = (v22 + v23);
    a4 = (a4 + v23);
    v24 = (v24 + v170);
    v182 += v170;
    v183 = (v183 + v20);
    --v184;
    v181 += v23;
    v180 += v23;
    ++v11;
  }

  while (v175 != a3);
  if (v169 && a6 >= 1)
  {
    v85 = v14 + 1;
    if (a6 <= 7)
    {
      v86 = (v169 + 4 * v159 * a3);
      v87 = a3 - 1;
      v88 = (v10 + 4 * v14 * v156 + 4 * a3);
      v89 = 4 * ~v14;
      while (1)
      {
        v128 = (v169 + 4 * v159 * v87);
        v129 = v85 * v87;
        v130 = *v128;
        if (v12 >= a3)
        {
          *v128 = v130 / *(v10 + 4 * v129);
          if (a6 == 1)
          {
            goto LABEL_120;
          }

          v128[1] = v128[1] / *(v10 + 4 * v129);
          if (a6 == 2)
          {
            goto LABEL_120;
          }

          v128[2] = v128[2] / *(v10 + 4 * v129);
          if (a6 == 3)
          {
            goto LABEL_120;
          }

          v128[3] = v128[3] / *(v10 + 4 * v129);
          if (a6 == 4)
          {
            goto LABEL_120;
          }

          v128[4] = v128[4] / *(v10 + 4 * v129);
          if (a6 == 5)
          {
            goto LABEL_120;
          }

          v128[5] = v128[5] / *(v10 + 4 * v129);
          if (a6 == 6)
          {
            goto LABEL_120;
          }

          v155 = v128[6];
          v151 = v128 + 6;
          v153 = v155;
        }

        else
        {
          v131 = v88;
          v132 = v86;
          v133 = v12;
          do
          {
            v134 = *v131++;
            v130 = v130 - (v134 * *v132);
            ++v133;
            v132 = (v132 + v23);
          }

          while (v133 < a3);
          *v128 = v130 / *(v10 + 4 * v129);
          if (a6 == 1)
          {
            goto LABEL_120;
          }

          v135 = 0;
          v136 = v128[1];
          v137 = 4;
          do
          {
            v136 = v136 - (v88[v135++] * *(v86 + v137));
            v137 += v23;
          }

          while (v12 + v135 < a3);
          v128[1] = v136 / *(v10 + 4 * v129);
          if (a6 == 2)
          {
            goto LABEL_120;
          }

          v138 = 0;
          v139 = v128[2];
          v140 = 8;
          do
          {
            v139 = v139 - (v88[v138++] * *(v86 + v140));
            v140 += v23;
          }

          while (v12 + v138 < a3);
          v128[2] = v139 / *(v10 + 4 * v129);
          if (a6 == 3)
          {
            goto LABEL_120;
          }

          v141 = 0;
          v142 = v128[3];
          v143 = 12;
          do
          {
            v142 = v142 - (v88[v141++] * *(v86 + v143));
            v143 += v23;
          }

          while (v12 + v141 < a3);
          v128[3] = v142 / *(v10 + 4 * v129);
          if (a6 == 4)
          {
            goto LABEL_120;
          }

          v144 = 0;
          v145 = v128[4];
          v146 = 16;
          do
          {
            v145 = v145 - (v88[v144++] * *(v86 + v146));
            v146 += v23;
          }

          while (v12 + v144 < a3);
          v128[4] = v145 / *(v10 + 4 * v129);
          if (a6 == 5)
          {
            goto LABEL_120;
          }

          v147 = 0;
          v148 = v128[5];
          v149 = 20;
          do
          {
            v148 = v148 - (v88[v147++] * *(v86 + v149));
            v149 += v23;
          }

          while (v12 + v147 < a3);
          v128[5] = v148 / *(v10 + 4 * v129);
          if (a6 == 6)
          {
            goto LABEL_120;
          }

          v150 = 0;
          v152 = v128[6];
          v151 = v128 + 6;
          v153 = v152;
          v154 = 24;
          do
          {
            v153 = v153 - (v88[v150++] * *(v86 + v154));
            v154 += v23;
          }

          while (v12 + v150 < a3);
        }

        *v151 = v153 / *(v10 + 4 * v129);
LABEL_120:
        --v12;
        v86 = (v86 - v23);
        v88 = (v88 + v89);
        v16 = v87-- <= 0;
        if (v16)
        {
          return v172;
        }
      }
    }

    v90 = a3 - 1;
    v91 = v169 + 4 * v159 * v156;
    v92 = v10 + 4 * v85 * v156 >= v167 || v91 >= v10 + 4;
    if (v92 && ((-4 * v159) & 0x8000000000000000) == 0 && (a2 & 0x8000000000000000) != 0)
    {
      v93 = (v91 + 16);
      v94 = (v91 + 32 * ((v13 >> 3) & 0xFFFFFFF));
      v95 = (v10 + 4 * v14 * v156 + 4 * a3);
      v96 = 4 * ~v14;
      v97 = v169 + 4 * v159 * a3;
      do
      {
        v98 = v85 * v90;
        if (v12 >= a3)
        {
          v107 = (v10 + 4 * v98);
          v108 = vld1q_dup_f32(v107);
          v109 = v13 & 0x7FFFFFF8;
          v110 = v93;
          do
          {
            v111 = vdivq_f32(*v110, v108);
            v110[-1] = vdivq_f32(v110[-1], v108);
            *v110 = v111;
            v110 += 2;
            v109 -= 8;
          }

          while (v109);
          if (v13 != v19)
          {
            v112 = v13 - v19;
            v113 = v94;
            do
            {
              *v113 = *v113 / *(v10 + 4 * v98);
              ++v113;
              --v112;
            }

            while (v112);
          }
        }

        else
        {
          v99 = 0;
          v100 = v169 + 4 * v159 * v90;
          v101 = v97;
          do
          {
            v102 = *(v100 + 4 * v99);
            v103 = v12;
            v104 = v101;
            v105 = v95;
            do
            {
              v106 = *v105++;
              v102 = v102 - (v106 * *v104);
              v104 = (v104 + v23);
              ++v103;
            }

            while (v103 < a3);
            *(v100 + 4 * v99++) = v102 / *(v10 + 4 * v98);
            ++v101;
          }

          while (v99 != v13);
        }

        --v12;
        v93 = (v93 - 4 * v159);
        v94 -= v159;
        v95 = (v95 + v96);
        v97 -= 4 * v159;
        v16 = v90-- <= 0;
      }

      while (!v16);
    }

    else
    {
      v114 = v169 + 4 * v159 * a3;
      v115 = (v10 + 4 * v14 * v156 + 4 * a3);
      v116 = 4 * ~v14;
      do
      {
        v117 = v85 * v90;
        v118 = v91;
        v119 = v13;
        if (v12 >= a3)
        {
          do
          {
            *v118 = *v118 / *(v10 + 4 * v117);
            ++v118;
            --v119;
          }

          while (v119);
        }

        else
        {
          v120 = 0;
          v121 = v169 + 4 * v159 * v90;
          v122 = v114;
          do
          {
            v123 = *(v121 + 4 * v120);
            v124 = v115;
            v125 = v122;
            v126 = v12;
            do
            {
              v127 = *v124++;
              v123 = v123 - (v127 * *v125);
              ++v126;
              v125 = (v125 + v23);
            }

            while (v126 < a3);
            *(v121 + 4 * v120++) = v123 / *(v10 + 4 * v117);
            ++v122;
          }

          while (v120 != v13);
        }

        --v12;
        v91 -= v23;
        v114 -= v23;
        v115 = (v115 + v116);
        v16 = v90-- <= 0;
      }

      while (!v16);
    }
  }

  return v172;
}

uint64_t sub_10027F0C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = a6;
  v9 = a3;
  sub_1002ACE7C(v14, &off_100475140);
  v12 = sub_10027F158(a1, a2, v9, a4, a5, v6);
  if (v14[2])
  {
    sub_1002ACC1C(v14);
  }

  return v12;
}

uint64_t sub_10027F158(uint64_t a1, unint64_t a2, int a3, unint64_t a4, unint64_t a5, int a6)
{
  if (a3 < 1)
  {
    return 1;
  }

  v6 = a1;
  v145 = (a3 - 1);
  v7 = 0;
  v8 = a3;
  v9 = a6;
  v10 = a2 >> 3;
  v11 = a5 >> 3;
  if (a4)
  {
    v12 = a6 < 1;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  v14 = 8 * a3;
  v155 = a5 & 0xFFFFFFFFFFFFFFF8;
  v156 = a4 + 8 * a6;
  v152 = v156 + v11 * (v14 - 8);
  v163 = a2 & 0xFFFFFFFFFFFFFFF8;
  v162 = a1 + v14;
  v151 = a1 + v14 + v10 * (v14 - 8);
  v173 = a3 - 1;
  v147 = a4 + 8 * (a6 + v11 * v173);
  v148 = a5 >> 3;
  v160 = (a2 & 0xFFFFFFFFFFFFFFF8) + 8;
  v150 = a1 + v160;
  v149 = a4 + (a5 & 0xFFFFFFFFFFFFFFF8);
  v15 = a6 & 0x7FFFFFFC;
  v16 = 8 * v10;
  v158 = a4;
  v159 = 8 * v10 + 8;
  v17 = (a1 + 16);
  v18 = (a4 + 16);
  v19 = 8 * v11;
  v20 = (a1 + 24);
  v171 = a1 + 24 + 8 * v10;
  v172 = (a1 + 8 * v10);
  v170 = a4 + 16 + v19;
  v169 = a4 + v19;
  v21 = 1;
  v146 = a4 + 16;
  v22 = a1 + 16;
  v23 = a3;
  v24 = v172;
  v161 = 1;
  do
  {
    v25 = v6 + 8 * v7;
    if (v7 + 1 >= a3)
    {
      v28 = v7;
    }

    else
    {
      v26 = v24;
      v27 = v21;
      v28 = v7;
      do
      {
        if (fabs(*v26) > fabs(*(v25 + 8 * v10 * v28)))
        {
          v28 = v27;
        }

        ++v27;
        v26 = (v26 + v16);
      }

      while (a3 != v27);
    }

    v29 = v28;
    if (fabs(*(v6 + 8 * v10 * v28 + 8 * v7)) < 2.22044605e-14)
    {
      return 0;
    }

    v165 = v24;
    v166 = v23;
    v30 = v6 + v160 * v7;
    v31 = v162 + v163 * v7;
    v167 = v22;
    v168 = v17;
    if (v7 != v29)
    {
      v32 = a3 - v7;
      v33 = v7;
      if (v32 < 4)
      {
        goto LABEL_25;
      }

      if (v30 < v162 + v163 * v29)
      {
        v33 = v7;
        if (v25 + v163 * v29 < v31)
        {
          goto LABEL_25;
        }
      }

      v34 = v23 & 0xFFFFFFFFFFFFFFFCLL;
      v33 = v7 + (v32 & 0xFFFFFFFFFFFFFFFCLL);
      v35 = (v22 + v16 * v29);
      v36 = v17;
      do
      {
        v37 = *(v36 - 1);
        v38 = *v36;
        v39 = *v35;
        *(v36 - 1) = *(v35 - 1);
        *v36 = v39;
        *(v35 - 1) = v37;
        *v35 = v38;
        v35 += 2;
        v36 += 2;
        v34 -= 4;
      }

      while (v34);
      v31 = v162 + v163 * v7;
      if (v32 != (v32 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_25:
        v40 = (a1 + 8 * v33);
        v41 = (v6 + 8 * v33 + v16 * v29);
        v42 = a3 - v33;
        do
        {
          v43 = *v40;
          *v40++ = *v41;
          *v41++ = v43;
          --v42;
        }

        while (v42);
      }

      if (v13)
      {
        goto LABEL_32;
      }

      if (a6 >= 4)
      {
        v44 = 0;
        if ((v158 + 8 * v148 * v29 >= v147 || v156 + v155 * v29 <= v158) && (a5 & 0x8000000000000000) == 0)
        {
          v79 = (v146 + v19 * v29);
          v80 = v9 & 0x7FFFFFFC;
          v81 = v18;
          do
          {
            v82 = *(v81 - 1);
            v83 = *v81;
            v84 = *v79;
            *(v81 - 1) = *(v79 - 1);
            *v81 = v84;
            *(v79 - 1) = v82;
            *v79 = v83;
            v81 += 2;
            v79 += 2;
            v80 -= 4;
          }

          while (v80);
          v44 = v9 & 0x7FFFFFFC;
          if (v9 == v15)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        v44 = 0;
      }

      v45 = (a4 + 8 * v44);
      v46 = (v158 + 8 * v44 + v19 * v29);
      v47 = v9 - v44;
      do
      {
        v48 = *v45;
        *v45++ = *v46;
        *v46++ = v48;
        --v47;
      }

      while (v47);
LABEL_32:
      v161 = -v161;
    }

    v164 = v7 + 1;
    if (v7 + 1 < a3)
    {
      v49 = ~v7 + a3;
      v50 = v30 + 8;
      v54 = v150 + v160 * v7 < v31 && v50 < v151 || (a2 & 0x8000000000000000) != 0 || v49 < 4;
      v58 = v149 < v156 && v158 + v155 * v7 < v152 || (a5 & 0x8000000000000000) != 0 || a6 < 4;
      v60 = v169;
      v59 = v170;
      v61 = -1.0 / *(v6 + 8 * v10 * v7 + 8 * v7);
      v63 = v171;
      v62 = v172;
      v64 = v21;
      do
      {
        v65 = v61 * *(v6 + 8 * v10 * v64 + 8 * v7);
        v66 = v21;
        if (v54)
        {
          goto LABEL_137;
        }

        v67 = vdupq_lane_s64(*&v65, 0);
        v68 = v63;
        v69 = v20;
        v70 = v173 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v71 = vmlaq_f64(*v68, *v69, v67);
          v68[-1] = vmlaq_f64(v68[-1], v69[-1], v67);
          *v68 = v71;
          v69 += 2;
          v68 += 2;
          v70 -= 4;
        }

        while (v70);
        v66 = v21 + (v49 & 0xFFFFFFFFFFFFFFFCLL);
        if (v49 != (v49 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_137:
          do
          {
            v62[v66] = v62[v66] + v65 * *(a1 + 8 * v66);
            ++v66;
          }

          while (a3 != v66);
        }

        if (v13)
        {
          goto LABEL_59;
        }

        if (v58)
        {
          v72 = 0;
        }

        else
        {
          v73 = vdupq_lane_s64(*&v65, 0);
          v74 = v59;
          v75 = v18;
          v76 = v9 & 0x7FFFFFFC;
          do
          {
            v77 = vmlaq_f64(*v74, *v75, v73);
            v74[-1] = vmlaq_f64(v74[-1], v75[-1], v73);
            *v74 = v77;
            v75 += 2;
            v74 += 2;
            v76 -= 4;
          }

          while (v76);
          v72 = v9 & 0x7FFFFFFC;
          if (v9 == v15)
          {
            goto LABEL_59;
          }
        }

        do
        {
          *(v60 + 8 * v72) = *(v60 + 8 * v72) + v65 * *(a4 + 8 * v72);
          ++v72;
        }

        while (v9 != v72);
LABEL_59:
        ++v64;
        v63 = (v63 + v16);
        v62 = (v62 + v16);
        v59 = (v59 + v19);
        v60 += v19;
      }

      while (v64 != a3);
    }

    ++v21;
    v24 = (v165 + v159);
    v23 = v166 - 1;
    v22 = v167 + 8;
    v17 = (v168 + v159);
    a1 += v16;
    v18 = (v18 + v19);
    a4 += v19;
    v20 = (v20 + v159);
    v171 += v159;
    v172 = (v172 + v16);
    --v173;
    v170 += v19;
    v169 += v19;
    ++v7;
  }

  while (v164 != a3);
  if (v158 && a6 >= 1)
  {
    v86 = v10 + 1;
    if (a6 <= 3)
    {
      v87 = (v158 + 8 * v148 * a3);
      v88 = (a3 - 1);
      v89 = (v6 + 8 * v10 * v145 + 8 * a3);
      v90 = 8 * ~v10;
      while (1)
      {
        v91 = (v158 + 8 * v148 * v88);
        v92 = v86 * v88;
        v93 = *v91;
        if (v8 >= a3)
        {
          *v91 = v93 / *(v6 + 8 * v92);
          if (a6 == 1)
          {
            goto LABEL_89;
          }

          v91[1] = v91[1] / *(v6 + 8 * v92);
          if (a6 == 2)
          {
            goto LABEL_89;
          }

          v106 = v91[2];
          v102 = v91 + 2;
          v104 = v106;
        }

        else
        {
          v94 = v89;
          v95 = v87;
          v96 = v8;
          do
          {
            v97 = *v94++;
            v93 = v93 - v97 * *v95;
            ++v96;
            v95 = (v95 + v19);
          }

          while (v96 < a3);
          *v91 = v93 / *(v6 + 8 * v92);
          if (a6 == 1)
          {
            goto LABEL_89;
          }

          v98 = 0;
          v99 = v91[1];
          v100 = 8;
          do
          {
            v99 = v99 - v89[v98++] * *(v87 + v100);
            v100 += v19;
          }

          while (v8 + v98 < a3);
          v91[1] = v99 / *(v6 + 8 * v92);
          if (a6 == 2)
          {
            goto LABEL_89;
          }

          v101 = 0;
          v103 = v91[2];
          v102 = v91 + 2;
          v104 = v103;
          v105 = 16;
          do
          {
            v104 = v104 - v89[v101++] * *(v87 + v105);
            v105 += v19;
          }

          while (v8 + v101 < a3);
        }

        *v102 = v104 / *(v6 + 8 * v92);
LABEL_89:
        --v8;
        v87 = (v87 - v19);
        v89 = (v89 + v90);
        v12 = v88-- <= 0;
        if (v12)
        {
          return v161;
        }
      }
    }

    v107 = (a3 - 1);
    v108 = v158 + 8 * v148 * v145;
    v109 = v6 + 8 * v86 * v145 >= v156 || v108 >= v6 + 8;
    if (v109 && ((-8 * v148) & 0x8000000000000000) == 0 && (a2 & 0x8000000000000000) != 0)
    {
      v110 = (v108 + 16);
      v111 = (v108 + 32 * ((v9 >> 2) & 0x1FFFFFFF));
      v112 = (v6 + 8 * v10 * v145 + 8 * a3);
      v113 = 8 * ~v10;
      v114 = v158 + 8 * v148 * a3;
      do
      {
        v115 = v86 * v107;
        if (v8 >= a3)
        {
          v124 = (v6 + 8 * v115);
          v125 = vld1q_dup_f64(v124);
          v126 = v9 & 0x7FFFFFFC;
          v127 = v110;
          do
          {
            v128 = vdivq_f64(*v127, v125);
            v127[-1] = vdivq_f64(v127[-1], v125);
            *v127 = v128;
            v127 += 2;
            v126 -= 4;
          }

          while (v126);
          if (v9 != v15)
          {
            v129 = v9 - v15;
            v130 = v111;
            do
            {
              *v130 = *v130 / *(v6 + 8 * v115);
              ++v130;
              --v129;
            }

            while (v129);
          }
        }

        else
        {
          v116 = 0;
          v117 = v158 + 8 * v148 * v107;
          v118 = v114;
          do
          {
            v119 = *(v117 + 8 * v116);
            v120 = v8;
            v121 = v118;
            v122 = v112;
            do
            {
              v123 = *v122++;
              v119 = v119 - v123 * *v121;
              v121 = (v121 + v19);
              ++v120;
            }

            while (v120 < a3);
            *(v117 + 8 * v116++) = v119 / *(v6 + 8 * v115);
            ++v118;
          }

          while (v116 != v9);
        }

        --v8;
        v110 = (v110 - 8 * v148);
        v111 -= v148;
        v112 = (v112 + v113);
        v114 -= 8 * v148;
        v12 = v107-- <= 0;
      }

      while (!v12);
    }

    else
    {
      v131 = v158 + 8 * v148 * a3;
      v132 = (v6 + 8 * v10 * v145 + 8 * a3);
      v133 = 8 * ~v10;
      do
      {
        v134 = v86 * v107;
        v135 = v108;
        v136 = v9;
        if (v8 >= a3)
        {
          do
          {
            *v135 = *v135 / *(v6 + 8 * v134);
            ++v135;
            --v136;
          }

          while (v136);
        }

        else
        {
          v137 = 0;
          v138 = v158 + 8 * v148 * v107;
          v139 = v131;
          do
          {
            v140 = *(v138 + 8 * v137);
            v141 = v132;
            v142 = v139;
            v143 = v8;
            do
            {
              v144 = *v141++;
              v140 = v140 - v144 * *v142;
              ++v143;
              v142 = (v142 + v19);
            }

            while (v143 < a3);
            *(v138 + 8 * v137++) = v140 / *(v6 + 8 * v134);
            ++v139;
          }

          while (v137 != v9);
        }

        --v8;
        v108 -= v19;
        v131 -= v19;
        v132 = (v132 + v133);
        v12 = v107-- <= 0;
      }

      while (!v12);
    }
  }

  return v161;
}

BOOL sub_10027FA5C(float *a1, uint64_t a2, uint64_t a3, float32x4_t *a4, unint64_t a5, uint64_t a6)
{
  v6 = a6;
  v9 = a3;
  sub_1002ACE7C(v14, &off_100475160);
  v12 = sub_10027FAF0(a1, a2, v9, a4, a5, v6);
  if (v14[2])
  {
    sub_1002ACC1C(v14);
  }

  return v12;
}

BOOL sub_10027FAF0(float *a1, uint64_t a2, unsigned int a3, float32x4_t *a4, unint64_t a5, int a6)
{
  v6 = a2 >> 2;
  if (a3 < 1)
  {
LABEL_20:
    if (a4)
    {
      v33 = a3 - 1;
      if (a3 >= 1)
      {
        if (a6 >= 1)
        {
          v34 = 0;
          v35 = a5 >> 2;
          v36 = v6 + 1;
          v37 = a6;
          v38 = a3 - 1;
          v39 = (a2 & 0xFFFFFFFFFFFFFFFCLL) + 4;
          v40 = a1 + v38 * v39 + 4 > a4 && &a4->f32[a6 + (a5 >> 2) * v38] > a1;
          v41 = v40;
          v42 = a6 & 0x7FFFFFF8;
          v43 = (a6 < 8 || ((v39 | a5) & 0x8000000000000000) != 0) | v41;
          v44 = 4 * v35;
          v45 = a4 + 1;
          v46 = a4;
          v47 = a1;
          while (1)
          {
            v48 = v36 * v34;
            if (v34)
            {
              v49 = 0;
              v50 = a4->i64 + 4 * v35 * v34;
              v51 = a4;
              do
              {
                v52 = 0;
                v53 = *(v50 + 4 * v49);
                v54 = v51;
                do
                {
                  v53 = v53 - (v47[v52++] * *v54);
                  v54 = (v54 + v44);
                }

                while (v34 != v52);
                v55 = v53 * a1[v48];
                *(v50 + 4 * v49++) = v55;
                v51 += 4;
              }

              while (v49 != a6);
              goto LABEL_30;
            }

            if (v43)
            {
              v56 = 0;
            }

            else
            {
              v57 = &a1[v48];
              v58 = vld1q_dup_f32(v57);
              v59 = a6 & 0x7FFFFFF8;
              v60 = v45;
              do
              {
                v61 = vmulq_f32(*v60, v58);
                v60[-1] = vmulq_f32(v60[-1], v58);
                *v60 = v61;
                v60 += 2;
                v59 -= 8;
              }

              while (v59);
              v56 = a6 & 0x7FFFFFF8;
              if (v42 == a6)
              {
                goto LABEL_30;
              }
            }

            v62 = (v46 + 4 * v56);
            v63 = a6 - v56;
            do
            {
              *v62 = *v62 * a1[v48];
              ++v62;
              --v63;
            }

            while (v63);
LABEL_30:
            ++v34;
            v47 += v6;
            v45 = (v45 + v44);
            v46 += v44;
            if (v34 == a3)
            {
              v66 = a4->u64 + 4 * v35 * v33;
              v69 = v66 < (a1 + 1) && &a1[v36 * v33] < &a4->f32[a6] || ((-4 * v35) & 0x8000000000000000) != 0;
              v70 = a6 < 8 || a2 >= 0 || v69;
              v71 = (v66 + 16);
              v72 = a3 - 1;
              while (1)
              {
                v73 = v36 * v72;
                if (v72 < v33)
                {
                  v74 = 0;
                  v75 = a4->i64 + 4 * v35 * v72;
                  do
                  {
                    v76 = *(v75 + 4 * v74);
                    v77 = (a3 - 2) + 1;
                    do
                    {
                      v76 = v76 - (a1[v72 + v6 * v77] * a4->f32[v74 + v35 * v77]);
                      --v77;
                    }

                    while (v72 < v77);
                    v78 = v76 * a1[v73];
                    *(v75 + 4 * v74++) = v78;
                  }

                  while (v74 != v37);
                  goto LABEL_59;
                }

                if (v70)
                {
                  v79 = 0;
                }

                else
                {
                  v80 = &a1[v73];
                  v81 = vld1q_dup_f32(v80);
                  v82 = v37 & 0x7FFFFFF8;
                  v83 = v71;
                  do
                  {
                    v84 = vmulq_f32(*v83, v81);
                    v83[-1] = vmulq_f32(v83[-1], v81);
                    *v83 = v84;
                    v83 += 2;
                    v82 -= 8;
                  }

                  while (v82);
                  v79 = v37 & 0x7FFFFFF8;
                  if (v42 == v37)
                  {
                    goto LABEL_59;
                  }
                }

                v85 = (v66 + 4 * v79);
                v86 = v37 - v79;
                do
                {
                  *v85 = *v85 * a1[v73];
                  ++v85;
                  --v86;
                }

                while (v86);
LABEL_59:
                v71 = (v71 - 4 * v35);
                v66 -= 4 * v35;
                v40 = v72-- <= 0;
                if (v40)
                {
                  goto LABEL_74;
                }
              }
            }
          }
        }

LABEL_74:
        v87 = a3;
        v88 = 4 * v6 + 4;
        do
        {
          *a1 = 1.0 / *a1;
          a1 = (a1 + v88);
          --v87;
        }

        while (v87);
      }
    }

    else if (a3 >= 1)
    {
      v64 = a3;
      v65 = 4 * v6 + 4;
      do
      {
        *a1 = 1.0 / *a1;
        a1 = (a1 + v65);
        --v64;
      }

      while (v64);
    }

    return 1;
  }

  v7 = 0;
  v8 = 0;
  v9 = 4 * v6;
  v10 = a1 + 4;
  v11 = a1;
  while (1)
  {
    v12 = &a1[v6 * v7];
    v13 = &v12[v7];
    if (v7)
    {
      v14 = 0;
      v15 = v7 & 0xFFFFFFFFFFFFFFF8;
      v16 = a1;
      do
      {
        v18 = v12[v14];
        if (v14)
        {
          for (i = 0; i != v14; ++i)
          {
            v18 = v18 - (v11[i] * v16[i]);
          }
        }

        v17 = v18 * a1[(v6 + 1) * v14];
        v12[v14++] = v17;
        v16 = (v16 + v9);
      }

      while (v14 != v7);
      v20 = *v13;
      if (v7 < 8)
      {
        v21 = 0;
        goto LABEL_16;
      }

      v21 = v7 & 0x7FFFFFFFFFFFFFF8;
      v22 = v10;
      do
      {
        v23 = v22[-1];
        v24 = vcvt_hight_f64_f32(v23);
        v25 = vcvtq_f64_f32(*v23.f32);
        v26 = vcvt_hight_f64_f32(*v22);
        v27 = vcvtq_f64_f32(*v22->f32);
        v28 = vmulq_f64(vnegq_f64(v24), v24);
        v29 = vmulq_f64(vnegq_f64(v25), v25);
        v30 = vmulq_f64(vnegq_f64(v26), v26);
        v31 = vmulq_f64(vnegq_f64(v27), v27);
        v20 = v20 + v29.f64[0] + v29.f64[1] + v28.f64[0] + v28.f64[1] + v31.f64[0] + v31.f64[1] + v30.f64[0] + v30.f64[1];
        v22 += 2;
        v15 -= 8;
      }

      while (v15);
      while (v7 != v21)
      {
LABEL_16:
        v20 = v20 - v11[v21] * v11[v21];
        ++v21;
      }
    }

    else
    {
      v20 = *v13;
    }

    if (v20 < 0.00000011920929)
    {
      return v8;
    }

    v32 = 1.0 / sqrt(v20);
    *v13 = v32;
    ++v7;
    v11 = (v11 + v9);
    v10 = (v10 + v9);
    v8 = v7 >= a3;
    if (v7 == a3)
    {
      goto LABEL_20;
    }
  }
}

BOOL sub_10027FFE8(double *a1, uint64_t a2, uint64_t a3, float64x2_t *a4, unint64_t a5, uint64_t a6)
{
  v6 = a6;
  v9 = a3;
  sub_1002ACE7C(v14, &off_100475180);
  v12 = sub_10028007C(a1, a2, v9, a4, a5, v6);
  if (v14[2])
  {
    sub_1002ACC1C(v14);
  }

  return v12;
}

BOOL sub_10028007C(double *a1, uint64_t a2, unsigned int a3, float64x2_t *a4, unint64_t a5, int a6)
{
  v6 = a2 >> 3;
  if (a3 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 8 * v6;
    v10 = a1;
    v11 = a1 + 2;
    do
    {
      v12 = &a1[v6 * v7];
      v13 = &v12[v7];
      if (v7)
      {
        v14 = 0;
        v15 = a1;
        v16 = a1 + 2;
        do
        {
          v17 = v12[v14];
          if (v14)
          {
            if (v14 < 4)
            {
              v18 = 0;
              goto LABEL_12;
            }

            v19 = v14 & 0xFFFFFFFFFFFFFFFCLL;
            v18 = v14 & 0x7FFFFFFFFFFFFFFCLL;
            v20 = v16;
            v21 = v11;
            do
            {
              v22 = vmulq_f64(v20[-1], vnegq_f64(v21[-1]));
              v23 = vmulq_f64(*v20, vnegq_f64(*v21));
              v17 = v17 + v22.f64[0] + v22.f64[1] + v23.f64[0] + v23.f64[1];
              v21 += 2;
              v20 += 2;
              v19 -= 4;
            }

            while (v19);
            while (v14 != v18)
            {
LABEL_12:
              v17 = v17 - v10[v18] * v15[v18];
              ++v18;
            }
          }

          v12[v14] = v17 * a1[(v6 + 1) * v14];
          ++v14;
          v16 = (v16 + v9);
          v15 = (v15 + v9);
        }

        while (v14 != v7);
        v24 = 0;
        v25 = *v13;
        do
        {
          v25 = v25 - v10[v24] * v10[v24];
          ++v24;
        }

        while (v7 != v24);
        if (v25 < 2.22044605e-16)
        {
          return v8;
        }
      }

      else
      {
        v25 = *v13;
        if (*v13 < 2.22044605e-16)
        {
          return v8;
        }
      }

      *v13 = 1.0 / sqrt(v25);
      ++v7;
      v11 = (v11 + v9);
      v10 = (v10 + v9);
      v8 = v7 >= a3;
    }

    while (v7 != a3);
  }

  if (a4)
  {
    v26 = a3 - 1;
    if (a3 >= 1)
    {
      if (a6 >= 1)
      {
        v27 = 0;
        v28 = a5 >> 3;
        v29 = v6 + 1;
        v30 = a6;
        v31 = a3 - 1;
        v32 = (a2 & 0xFFFFFFFFFFFFFFF8) + 8;
        v33 = a1 + v31 * v32 + 8 > a4 && &a4->f64[a6 + (a5 >> 3) * v31] > a1;
        v34 = v33;
        v35 = a6 & 0x7FFFFFFC;
        v36 = (a6 < 4 || ((v32 | a5) & 0x8000000000000000) != 0) | v34;
        v37 = 8 * v28;
        v38 = a4 + 1;
        v39 = a4;
        v40 = a1;
        while (1)
        {
          v41 = v29 * v27;
          if (v27)
          {
            v42 = 0;
            v43 = (a4 + 8 * v28 * v27);
            v44 = a4;
            do
            {
              v45 = 0;
              v46 = v43->f64[v42];
              v47 = v44;
              do
              {
                v46 = v46 - v40[v45++] * *v47;
                v47 = (v47 + v37);
              }

              while (v27 != v45);
              v43->f64[v42++] = v46 * a1[v41];
              v44 += 8;
            }

            while (v42 != a6);
            goto LABEL_31;
          }

          if (v36)
          {
            v48 = 0;
          }

          else
          {
            v49 = &a1[v41];
            v50 = vld1q_dup_f64(v49);
            v51 = a6 & 0x7FFFFFFC;
            v52 = v38;
            do
            {
              v53 = vmulq_f64(*v52, v50);
              v52[-1] = vmulq_f64(v52[-1], v50);
              *v52 = v53;
              v52 += 2;
              v51 -= 4;
            }

            while (v51);
            v48 = a6 & 0x7FFFFFFC;
            if (v35 == a6)
            {
              goto LABEL_31;
            }
          }

          v54 = (v39 + 8 * v48);
          v55 = a6 - v48;
          do
          {
            *v54 = *v54 * a1[v41];
            ++v54;
            --v55;
          }

          while (v55);
LABEL_31:
          ++v27;
          v40 += v6;
          v38 = (v38 + v37);
          v39 += v37;
          if (v27 == a3)
          {
            v58 = &a4->f64[v28 * v26];
            v61 = v58 < (a1 + 1) && &a1[v29 * v26] < &a4->f64[a6] || ((-8 * v28) & 0x8000000000000000) != 0;
            v62 = a6 < 4 || a2 >= 0 || v61;
            v63 = (v58 + 16);
            v64 = a3 - 1;
            while (1)
            {
              v65 = v29 * v64;
              if (v64 < v26)
              {
                v66 = 0;
                v67 = (a4 + 8 * v28 * v64);
                do
                {
                  v68 = v67->f64[v66];
                  v69 = (a3 - 2) + 1;
                  do
                  {
                    v68 = v68 - a1[v64 + v6 * v69] * a4->f64[v66 + v28 * v69];
                    --v69;
                  }

                  while (v64 < v69);
                  v67->f64[v66++] = v68 * a1[v65];
                }

                while (v66 != v30);
                goto LABEL_60;
              }

              if (v62)
              {
                v70 = 0;
              }

              else
              {
                v71 = &a1[v65];
                v72 = vld1q_dup_f64(v71);
                v73 = v30 & 0x7FFFFFFC;
                v74 = v63;
                do
                {
                  v75 = vmulq_f64(*v74, v72);
                  v74[-1] = vmulq_f64(v74[-1], v72);
                  *v74 = v75;
                  v74 += 2;
                  v73 -= 4;
                }

                while (v73);
                v70 = v30 & 0x7FFFFFFC;
                if (v35 == v30)
                {
                  goto LABEL_60;
                }
              }

              v76 = (v58 + 8 * v70);
              v77 = v30 - v70;
              do
              {
                *v76 = *v76 * a1[v65];
                ++v76;
                --v77;
              }

              while (v77);
LABEL_60:
              v63 = (v63 - 8 * v28);
              v58 -= 8 * v28;
              v33 = v64-- <= 0;
              if (v33)
              {
                goto LABEL_75;
              }
            }
          }
        }
      }

LABEL_75:
      v78 = a3;
      v79 = 8 * v6 + 8;
      do
      {
        *a1 = 1.0 / *a1;
        a1 = (a1 + v79);
        --v78;
      }

      while (v78);
    }
  }

  else if (a3 >= 1)
  {
    v56 = a3;
    v57 = 8 * v6 + 8;
    do
    {
      *a1 = 1.0 / *a1;
      a1 = (a1 + v57);
      --v56;
    }

    while (v56);
  }

  return 1;
}

uint64_t sub_100280510(float *a1, unint64_t a2, int a3, unsigned int a4, unsigned int a5, float *a6, unint64_t a7, float *a8)
{
  sub_1002ACE7C(v132, &off_1004751A0);
  v15 = a8 != 0;
  if (a3)
  {
    v15 = a4 + a3;
  }

  v134 = v136;
  v135 = v15;
  if (v15 >= 0x109)
  {
    operator new[]();
  }

  if (a8)
  {
    v16 = a8;
  }

  else
  {
    v16 = &v136[a3];
  }

  v17 = a4 - 1;
  if (a4 < 1)
  {
    goto LABEL_106;
  }

  v18 = 0;
  v19 = a2 >> 2;
  v129 = a7 >> 2;
  v20 = 4 * (a2 >> 2);
  v21 = v20 + 4;
  v22 = &a1[v20 / 4];
  v23 = 2 * (a2 >> 2);
  v24 = &a1[v23];
  v25 = a1;
  v26 = a3;
  v27 = a3;
  v28 = a1;
  v29 = a4;
  do
  {
    v30 = a3 - v18;
    v31 = 0;
    if (v30 >= 1)
    {
      v32 = v28;
      v33 = v136;
      v34 = v27;
      do
      {
        v35 = *v32;
        *v33++ = *v32;
        *v31.i32 = *v31.i32 + (v35 * v35);
        v32 = (v32 + v20);
        --v34;
      }

      while (v34);
    }

    v36 = v136[0];
    if (v136[0] >= 0.0)
    {
      v37 = 1.0;
    }

    else
    {
      v37 = -1.0;
    }

    v38 = v136[0] + (v37 * sqrtf(*v31.i32));
    v136[0] = v38;
    if (v30 >= 1)
    {
      *v31.i32 = sqrtf((*v31.i32 + (v38 * v38)) - (v36 * v36));
      if (v27 <= 7)
      {
        v39 = 0;
LABEL_23:
        v44 = v27 - v39;
        v45 = &v136[v39];
        do
        {
          *v45 = *v45 / *v31.i32;
          ++v45;
          --v44;
        }

        while (v44);
        goto LABEL_25;
      }

      v40 = v27 & 0xFFFFFFF8;
      v39 = v40;
      v41 = vdupq_lane_s32(v31, 0);
      v42 = &v138;
      do
      {
        v43 = vdivq_f32(*v42, v41);
        v42[-1] = vdivq_f32(v42[-1], v41);
        *v42 = v43;
        v42 += 2;
        v40 -= 8;
      }

      while (v40);
      if (v39 != v27)
      {
        goto LABEL_23;
      }
    }

LABEL_25:
    if (a3 > v18)
    {
      v46 = v28;
      v47 = v18;
      do
      {
        v48 = 0.0;
        v49 = v136;
        v50 = v46;
        v51 = v27;
        do
        {
          v52 = *v49++;
          v48 = v48 + (v52 * *v50);
          v50 = (v50 + v20);
          --v51;
        }

        while (v51);
        v53 = 0;
        v54 = v46;
        do
        {
          *v54 = *v54 + ((v136[v53++] * -2.0) * v48);
          v54 = (v54 + v20);
        }

        while (v27 != v53);
        ++v47;
        ++v46;
      }

      while (v47 != a4);
    }

    v16[v18] = v136[0] * v136[0];
    if (v30 >= 2)
    {
      v55 = v27 - 1;
      v56 = v136[0];
      if (v55 <= 1)
      {
        v57 = 1;
LABEL_38:
        v62 = v27 - v57;
        v63 = (v25 + v20 * (v57 + v18));
        v64 = &v136[v57];
        do
        {
          v65 = *v64++;
          *v63 = v65 / v56;
          v63 = (v63 + v20);
          --v62;
        }

        while (v62);
        goto LABEL_10;
      }

      v58 = 0;
      v59 = v55 & 0xFFFFFFFFFFFFFFFELL;
      v57 = v55 | 1;
      v60 = &v137;
      do
      {
        v61 = *v60;
        *(v22 + v58) = *(v60 - 1) / v56;
        *(v24 + v58) = v61 / v56;
        v58 += v23 * 4;
        v60 += 2;
        v59 -= 2;
      }

      while (v59);
      if (v55 != (v55 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_38;
      }
    }

LABEL_10:
    ++v18;
    --v27;
    v28 = (v28 + v21);
    v22 = (v22 + v21);
    v24 = (v24 + v21);
    ++v25;
  }

  while (v18 != a4);
  v66 = a6;
  if (!a6)
  {
LABEL_106:
    v127 = 1;
    goto LABEL_107;
  }

  v67 = a3 - 1;
  if (a5 > 0)
  {
    v68 = 0;
    v69 = &a1[v23];
    v70 = v20 + 4;
    v71 = &a1[v20 / 4];
    v72 = 4 * v129;
    v73 = a1;
    while (1)
    {
      v136[0] = 1.0;
      if (v68 < v67)
      {
        v74 = v26 - 1;
        if (v74 > 1)
        {
          v76 = 0;
          v77 = v74 & 0xFFFFFFFFFFFFFFFELL;
          v75 = v74 | 1;
          v78 = &v137;
          do
          {
            v79 = *(v69 + v76);
            *(v78 - 1) = *(v71 + v76);
            *v78 = v79;
            v76 += v23 * 4;
            ++v78;
            v77 -= 2;
          }

          while (v77);
          if (v74 == (v74 & 0xFFFFFFFFFFFFFFFELL))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v75 = 1;
        }

        v80 = v26 - v75;
        v81 = &v136[v75];
        v82 = (v73 + v20 * (v75 + v68));
        do
        {
          *v81++ = *v82;
          v82 = (v82 + v20);
          --v80;
        }

        while (v80);
      }

LABEL_53:
      if (v68 < a3)
      {
        v83 = 0;
        v84 = v66;
        do
        {
          v85 = 0.0;
          v86 = v136;
          v87 = v84;
          v88 = v26;
          do
          {
            v89 = *v86++;
            v85 = v85 + (v89 * *v87);
            v87 = (v87 + v72);
            --v88;
          }

          while (v88);
          v90 = 0;
          v91 = v84;
          do
          {
            *v91 = *v91 + ((v85 * (v136[v90++] * -2.0)) * v16[v68]);
            v91 = (v91 + v72);
          }

          while (v26 != v90);
          ++v83;
          ++v84;
        }

        while (v83 != a5);
      }

      ++v68;
      --v26;
      v69 = (v69 + v70);
      v71 = (v71 + v70);
      ++v73;
      v66 = (v66 + v72);
      if (v68 == v29)
      {
        v66 = a6;
        goto LABEL_74;
      }
    }
  }

  v92 = 0;
  v93 = &a1[v23];
  v94 = v20 + 4;
  v95 = &a1[v20 / 4];
  v96 = a1;
  while (2)
  {
    if (v92 < v67)
    {
      v97 = a3 - 1;
      if (v97 <= 1)
      {
        v98 = 1;
        goto LABEL_70;
      }

      v99 = 0;
      v100 = v97 & 0xFFFFFFFFFFFFFFFELL;
      v98 = v97 | 1;
      v101 = &v137;
      do
      {
        v102 = *(v93 + v99);
        *(v101 - 1) = *(v95 + v99);
        *v101 = v102;
        v99 += v23 * 4;
        ++v101;
        v100 -= 2;
      }

      while (v100);
      if (v97 != (v97 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_70:
        v103 = a3 - v98;
        v104 = &v136[v98];
        v105 = (v96 + v20 * (v98 + v92));
        do
        {
          *v104++ = *v105;
          v105 = (v105 + v20);
          --v103;
        }

        while (v103);
      }
    }

    ++v92;
    --a3;
    v93 = (v93 + v94);
    v95 = (v95 + v94);
    ++v96;
    if (v92 != v29)
    {
      continue;
    }

    break;
  }

  v136[0] = 1.0;
LABEL_74:
  v106 = v19 + 1;
  v107 = &v66[v129 * v17];
  v109 = v107 < (a1 + 1) && &a1[(v19 + 1) * v17] < &v66[a5] || ((-4 * v129) & 0x8000000000000000) != 0;
  v110 = v109;
  v111 = (v107 + 16);
  v112 = v17;
  while (2)
  {
    if (v112 < v17)
    {
      if (a5 >= 1)
      {
        v113 = &a1[v112 * v19];
        v114 = &v66[v129 * v17];
        v115 = v17;
        if (a5 >= 8uLL)
        {
          do
          {
            v119 = v114;
            v120 = v107;
            v121 = a5;
            do
            {
              v122 = *v119++;
              *v120 = *v120 - (v122 * v113[v115]);
              ++v120;
              --v121;
            }

            while (v121);
            --v115;
            v114 -= v129;
          }

          while (v112 < v115);
        }

        else
        {
          v116 = &v66[v129 * v17];
          v117 = v17;
          do
          {
            v118 = 0;
            do
            {
              *(v107 + 4 * v118) = *(v107 + 4 * v118) - (v116[v118] * v113[v117]);
              ++v118;
            }

            while (a5 != v118);
            --v117;
            v116 -= v129;
          }

          while (v112 < v117);
        }

        break;
      }

      if (fabsf(a1[v112 * v106]) < 0.0000011921)
      {
        goto LABEL_110;
      }

LABEL_85:
      v107 -= 4 * v129;
      v111 = (v111 - 4 * v129);
      v109 = v112-- < 1;
      if (v109)
      {
        goto LABEL_106;
      }

      continue;
    }

    break;
  }

  v14.f32[0] = a1[v112 * v106];
  if (fabsf(v14.f32[0]) >= 0.0000011921)
  {
    if (a5 < 1)
    {
      goto LABEL_85;
    }

    if ((a5 < 8uLL || (a2 & 0x8000000000000000) == 0) | v110 & 1)
    {
      v123 = 0;
    }

    else
    {
      v14 = vdupq_lane_s32(*v14.f32, 0);
      v124 = a5 & 0x7FFFFFF8;
      v125 = v111;
      do
      {
        v126 = vdivq_f32(*v125, v14);
        v125[-1] = vdivq_f32(v125[-1], v14);
        *v125 = v126;
        v125 += 2;
        v124 -= 8;
      }

      while (v124);
      v123 = a5 & 0x7FFFFFF8;
      if (a5 == v123)
      {
        goto LABEL_85;
      }
    }

    do
    {
      *(v107 + 4 * v123) = *(v107 + 4 * v123) / a1[v112 * v106];
      ++v123;
    }

    while (a5 != v123);
    goto LABEL_85;
  }

LABEL_110:
  v127 = 0;
LABEL_107:
  if (v133)
  {
    sub_1002ACC1C(v132);
  }

  return v127;
}

void sub_100280C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16 != v16)
  {
    if (a16)
    {
      operator delete[]();
    }
  }

  sub_1001D8BF4(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_100280C9C(double *a1, unint64_t a2, int a3, unsigned int a4, unsigned int a5, double *a6, unint64_t a7, double *a8)
{
  sub_1002ACE7C(v134, &off_1004751C0);
  v14 = a8 != 0;
  if (a3)
  {
    v14 = a4 + a3;
  }

  v136 = v138;
  v137 = v14;
  if (v14 >= 0x89)
  {
    operator new[]();
  }

  if (a8)
  {
    v15 = a8;
  }

  else
  {
    v15 = &v138[a3];
  }

  v16 = a4 - 1;
  if (a4 < 1)
  {
    goto LABEL_106;
  }

  v17 = 0;
  v18 = a2 >> 3;
  v131 = a7 >> 3;
  v19 = 8 * (a2 >> 3);
  v20 = v19 + 8;
  v21 = &a1[v19 / 8];
  v22 = 2 * (a2 >> 3);
  v23 = &a1[v22];
  v24 = a3;
  v25 = a1;
  v26 = a3;
  v27 = a1;
  v28 = a4;
  do
  {
    v29 = a3 - v17;
    v30 = 0.0;
    if (v29 >= 1)
    {
      v31 = v27;
      v32 = v138;
      v33 = v26;
      do
      {
        v34 = *v31;
        *v32++ = *v31;
        v30 = v30 + v34 * v34;
        v31 = (v31 + v19);
        --v33;
      }

      while (v33);
    }

    v35 = v138[0];
    if (v138[0] >= 0.0)
    {
      v36 = 1.0;
    }

    else
    {
      v36 = -1.0;
    }

    v37 = v138[0] + v36 * sqrt(v30);
    v138[0] = v37;
    if (v29 >= 1)
    {
      v38 = sqrt(v30 + v37 * v37 - v35 * v35);
      if (v26 <= 3)
      {
        v39 = 0;
LABEL_23:
        v44 = v26 - v39;
        v45 = &v138[v39];
        do
        {
          *v45 = *v45 / v38;
          ++v45;
          --v44;
        }

        while (v44);
        goto LABEL_25;
      }

      v40 = v26 & 0xFFFFFFFC;
      v39 = v40;
      v41 = vdupq_lane_s64(*&v38, 0);
      v42 = v139;
      do
      {
        v43 = vdivq_f64(*v42, v41);
        v42[-1] = vdivq_f64(v42[-1], v41);
        *v42 = v43;
        v42 += 2;
        v40 -= 4;
      }

      while (v40);
      if (v39 != v26)
      {
        goto LABEL_23;
      }
    }

LABEL_25:
    if (a3 > v17)
    {
      v46 = v27;
      v47 = v17;
      do
      {
        v48 = 0.0;
        v49 = v138;
        v50 = v46;
        v51 = v26;
        do
        {
          v52 = *v49++;
          v48 = v48 + v52 * *v50;
          v50 = (v50 + v19);
          --v51;
        }

        while (v51);
        v53 = 0;
        v54 = v46;
        do
        {
          *v54 = *v54 + v138[v53++] * -2.0 * v48;
          v54 = (v54 + v19);
        }

        while (v26 != v53);
        ++v47;
        ++v46;
      }

      while (v47 != a4);
    }

    v15[v17] = v138[0] * v138[0];
    if (v29 >= 2)
    {
      v55 = v26 - 1;
      v56 = v138[0];
      if (v55 <= 1)
      {
        v57 = 1;
LABEL_38:
        v62 = v26 - v57;
        v63 = (v25 + v19 * (v57 + v17));
        v64 = &v138[v57];
        do
        {
          v65 = *v64++;
          *v63 = v65 / v56;
          v63 = (v63 + v19);
          --v62;
        }

        while (v62);
        goto LABEL_10;
      }

      v58 = 0;
      v59 = v55 & 0xFFFFFFFFFFFFFFFELL;
      v57 = v55 | 1;
      v60 = v139;
      do
      {
        v61 = *v60;
        *(v21 + v58) = *(v60 - 1) / v56;
        *(v23 + v58) = v61 / v56;
        v58 += v22 * 8;
        v60 += 2;
        v59 -= 2;
      }

      while (v59);
      if (v55 != (v55 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_38;
      }
    }

LABEL_10:
    ++v17;
    --v26;
    v27 = (v27 + v20);
    v21 = (v21 + v20);
    v23 = (v23 + v20);
    ++v25;
  }

  while (v17 != a4);
  v66 = a6;
  if (!a6)
  {
LABEL_106:
    v129 = 1;
    goto LABEL_107;
  }

  v67 = a3 - 1;
  if (a5 > 0)
  {
    v68 = 0;
    v69 = &a1[v22];
    v70 = v19 + 8;
    v71 = &a1[v19 / 8];
    v72 = 8 * v131;
    v73 = a1;
    while (1)
    {
      v138[0] = 1.0;
      if (v68 < v67)
      {
        v74 = v24 - 1;
        if (v74 > 1)
        {
          v76 = 0;
          v77 = v74 & 0xFFFFFFFFFFFFFFFELL;
          v75 = v74 | 1;
          v78 = v139;
          do
          {
            v79 = *(v69 + v76);
            *(v78 - 1) = *(v71 + v76);
            *v78 = v79;
            v76 += v22 * 8;
            v78 += 2;
            v77 -= 2;
          }

          while (v77);
          if (v74 == (v74 & 0xFFFFFFFFFFFFFFFELL))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v75 = 1;
        }

        v80 = v24 - v75;
        v81 = &v138[v75];
        v82 = (v73 + v19 * (v75 + v68));
        do
        {
          *v81++ = *v82;
          v82 = (v82 + v19);
          --v80;
        }

        while (v80);
      }

LABEL_53:
      if (v68 < a3)
      {
        v83 = 0;
        v84 = v66;
        do
        {
          v85 = 0.0;
          v86 = v138;
          v87 = v84;
          v88 = v24;
          do
          {
            v89 = *v86++;
            v85 = v85 + v89 * *v87;
            v87 = (v87 + v72);
            --v88;
          }

          while (v88);
          v90 = 0;
          v91 = v84;
          do
          {
            *v91 = *v91 + v85 * (v138[v90++] * -2.0) * v15[v68];
            v91 = (v91 + v72);
          }

          while (v24 != v90);
          ++v83;
          ++v84;
        }

        while (v83 != a5);
      }

      ++v68;
      --v24;
      v69 = (v69 + v70);
      v71 = (v71 + v70);
      ++v73;
      v66 = (v66 + v72);
      if (v68 == v28)
      {
        v66 = a6;
        goto LABEL_74;
      }
    }
  }

  v92 = 0;
  v93 = &a1[v22];
  v94 = v19 + 8;
  v95 = &a1[v19 / 8];
  v96 = a1;
  while (2)
  {
    if (v92 < v67)
    {
      v97 = a3 - 1;
      if (v97 <= 1)
      {
        v98 = 1;
        goto LABEL_70;
      }

      v99 = 0;
      v100 = v97 & 0xFFFFFFFFFFFFFFFELL;
      v98 = v97 | 1;
      v101 = v139;
      do
      {
        v102 = *(v93 + v99);
        *(v101 - 1) = *(v95 + v99);
        *v101 = v102;
        v99 += v22 * 8;
        v101 += 2;
        v100 -= 2;
      }

      while (v100);
      if (v97 != (v97 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_70:
        v103 = a3 - v98;
        v104 = &v138[v98];
        v105 = (v96 + v19 * (v98 + v92));
        do
        {
          *v104++ = *v105;
          v105 = (v105 + v19);
          --v103;
        }

        while (v103);
      }
    }

    ++v92;
    --a3;
    v93 = (v93 + v94);
    v95 = (v95 + v94);
    ++v96;
    if (v92 != v28)
    {
      continue;
    }

    break;
  }

  v138[0] = 1.0;
LABEL_74:
  v106 = v18 + 1;
  v107 = &v66[v131 * v16];
  v109 = v107 < (a1 + 1) && &a1[(v18 + 1) * v16] < &v66[a5] || ((-8 * v131) & 0x8000000000000000) != 0;
  v110 = v109;
  v111 = (v107 + 16);
  v112 = v16;
  while (2)
  {
    if (v112 < v16)
    {
      if (a5 >= 1)
      {
        v113 = &a1[v112 * v18];
        v114 = &v66[v131 * v16];
        v115 = v16;
        if (a5 >= 4uLL)
        {
          do
          {
            v119 = v114;
            v120 = v107;
            v121 = a5;
            do
            {
              v122 = *v119++;
              *v120 = *v120 - v122 * v113[v115];
              ++v120;
              --v121;
            }

            while (v121);
            --v115;
            v114 -= v131;
          }

          while (v112 < v115);
        }

        else
        {
          v116 = &v66[v131 * v16];
          v117 = v16;
          do
          {
            v118 = 0;
            do
            {
              *(v107 + 8 * v118) = *(v107 + 8 * v118) - v116[v118] * v113[v117];
              ++v118;
            }

            while (a5 != v118);
            --v117;
            v116 -= v131;
          }

          while (v112 < v117);
        }

        break;
      }

      if (fabs(a1[v112 * v106]) < 2.22044605e-14)
      {
        goto LABEL_110;
      }

LABEL_85:
      v107 -= 8 * v131;
      v111 = (v111 - 8 * v131);
      v109 = v112-- < 1;
      if (v109)
      {
        goto LABEL_106;
      }

      continue;
    }

    break;
  }

  v123 = a1[v112 * v106];
  if (fabs(v123) >= 2.22044605e-14)
  {
    if (a5 < 1)
    {
      goto LABEL_85;
    }

    if ((a5 < 4uLL || (a2 & 0x8000000000000000) == 0) | v110 & 1)
    {
      v124 = 0;
    }

    else
    {
      v125 = vdupq_lane_s64(*&v123, 0);
      v126 = a5 & 0x7FFFFFFC;
      v127 = v111;
      do
      {
        v128 = vdivq_f64(*v127, v125);
        v127[-1] = vdivq_f64(v127[-1], v125);
        *v127 = v128;
        v127 += 2;
        v126 -= 4;
      }

      while (v126);
      v124 = a5 & 0x7FFFFFFC;
      if (a5 == v124)
      {
        goto LABEL_85;
      }
    }

    do
    {
      *(v107 + 8 * v124) = *(v107 + 8 * v124) / a1[v112 * v106];
      ++v124;
    }

    while (a5 != v124);
    goto LABEL_85;
  }

LABEL_110:
  v129 = 0;
LABEL_107:
  if (v135)
  {
    sub_1002ACC1C(v134);
  }

  return v129;
}

void sub_1002813E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16 != v16)
  {
    if (a16)
    {
      operator delete[]();
    }
  }

  sub_1001D8BF4(&a14);
  _Unwind_Resume(a1);
}

uint64_t *sub_100281424(uint64_t *result, uint64_t a2, unsigned int a3, int a4)
{
  if (a4 <= 0)
  {
    v4 = -(-a4 & 3);
  }

  else
  {
    v4 = a4 & 3;
  }

  if (v4)
  {
    LODWORD(v5) = v4;
  }

  else
  {
    LODWORD(v5) = 4;
  }

  v6 = *result;
  if (v4 == 3)
  {
    LODWORD(v20) = 0;
    v21 = 0;
    v23 = result[1];
    v22 = result[2];
    if (a3 >= 17 && a4 == 3)
    {
      v24 = 0;
      v20 = 0;
      v25 = a2;
      do
      {
        v77.val[0] = *(v6 + v20);
        v77.val[1] = *(v23 + v20);
        v77.val[2] = *(v22 + v20);
        vst3q_s8(v25, v77);
        v25 += 48;
        v20 += 16;
        v24 += 0x3000000000;
      }

      while (v20 < a3 - 16);
      v21 = v24 >> 32;
    }

    if (v20 < a3)
    {
      v26 = (v6 + v20);
      v27 = (v23 + v20);
      v28 = (v21 + a2 + 2);
      v29 = a3 - v20;
      v30 = (v22 + v20);
      do
      {
        v31 = *v26++;
        *(v28 - 2) = v31;
        v32 = *v27++;
        *(v28 - 1) = v32;
        v33 = *v30++;
        *v28 = v33;
        v28 += a4;
        --v29;
      }

      while (v29);
    }

    goto LABEL_54;
  }

  if (v4 == 2)
  {
    LODWORD(v9) = 0;
    v10 = 0;
    v11 = result[1];
    if (a3 >= 17 && a4 == 2)
    {
      v12 = 0;
      v9 = 0;
      v13 = a2;
      do
      {
        v76.val[0] = *(v6 + v9);
        v76.val[1] = *(v11 + v9);
        vst2q_s8(v13, v76);
        v13 += 32;
        v9 += 16;
        v12 += 0x2000000000;
      }

      while (v9 < a3 - 16);
      v10 = v12 >> 32;
    }

    if (v9 < a3)
    {
      v14 = (v10 + a2 + 1);
      v15 = a3 - v9;
      v16 = (v11 + v9);
      v17 = (v6 + v9);
      do
      {
        v18 = *v17++;
        *(v14 - 1) = v18;
        v19 = *v16++;
        *v14 = v19;
        v14 += a4;
        --v15;
      }

      while (v15);
    }

    goto LABEL_54;
  }

  if (v4 != 1)
  {
    LODWORD(v34) = 0;
    v35 = 0;
    v37 = result[1];
    v36 = result[2];
    v38 = result[3];
    if (a3 >= 17 && a4 == 4)
    {
      v39 = 0;
      v34 = 0;
      v40 = a2;
      do
      {
        v78.val[0] = *(v6 + v34);
        v78.val[1] = *(v37 + v34);
        v78.val[2] = *(v36 + v34);
        v78.val[3] = *(v38 + v34);
        vst4q_s8(v40, v78);
        v40 += 64;
        v34 += 16;
        v39 += 0x4000000000;
      }

      while (v34 < a3 - 16);
      v35 = v39 >> 32;
    }

    if (v34 < a3)
    {
      v41 = (v6 + v34);
      v42 = (v37 + v34);
      v43 = (v36 + v34);
      v44 = (v35 + a2 + 3);
      v45 = a3 - v34;
      v46 = (v38 + v34);
      do
      {
        v47 = *v41++;
        *(v44 - 3) = v47;
        v48 = *v42++;
        *(v44 - 2) = v48;
        v49 = *v43++;
        *(v44 - 1) = v49;
        v50 = *v46++;
        *v44 = v50;
        v44 += a4;
        --v45;
      }

      while (v45);
    }

    goto LABEL_54;
  }

  if (a3 < 1)
  {
    return result;
  }

  v7 = 0;
  if (a3 < 8 || a4 != 1)
  {
    v8 = 0;
    goto LABEL_52;
  }

  v8 = 0;
  if ((a2 - v6) < 0x20)
  {
    goto LABEL_52;
  }

  if (a3 < 0x20)
  {
    v8 = 0;
    goto LABEL_47;
  }

  v8 = a3 & 0x7FFFFFE0;
  v51 = (v6 + 16);
  v52 = (a2 + 16);
  v53 = v8;
  do
  {
    v54 = *v51;
    *(v52 - 1) = *(v51 - 1);
    *v52 = v54;
    v51 += 2;
    v52 += 2;
    v53 -= 32;
  }

  while (v53);
  if (v8 != a3)
  {
    if ((a3 & 0x18) == 0)
    {
      v7 = v8 * a4;
      goto LABEL_52;
    }

LABEL_47:
    v55 = v8;
    v8 = a3 & 0x7FFFFFF8;
    v7 = (a3 & 0x7FFFFFF8) * a4;
    v56 = (v6 + v55);
    v57 = v55 - v8;
    v58 = (a2 + v55 * a4);
    do
    {
      v59 = *v56++;
      *v58++ = v59;
      v57 += 8;
    }

    while (v57);
    if (v8 == a3)
    {
      goto LABEL_54;
    }

LABEL_52:
    v60 = (a2 + v7);
    v61 = a3 - v8;
    v62 = (v6 + v8);
    do
    {
      v63 = *v62++;
      *v60 = v63;
      v60 += a4;
      --v61;
    }

    while (v61);
  }

LABEL_54:
  if (a3 >= 1 && v5 < a4)
  {
    v5 = v5;
    v64 = v5 + a2 + 3;
    do
    {
      v65 = &result[v5];
      v66 = *v65;
      v67 = v65[1];
      v68 = v65[2];
      v69 = v65[3];
      v70 = a3;
      v71 = v64;
      do
      {
        v72 = *v66++;
        *(v71 - 3) = v72;
        v73 = *v67++;
        *(v71 - 2) = v73;
        v74 = *v68++;
        *(v71 - 1) = v74;
        v75 = *v69++;
        *v71 = v75;
        v71 += a4;
        --v70;
      }

      while (v70);
      v5 += 4;
      v64 += 4;
    }

    while (v5 < a4);
  }

  return result;
}

int16x8_t **sub_1002817B8(int16x8_t **result, int16x8_t *a2, unsigned int a3, int a4)
{
  if (a4 <= 0)
  {
    v4 = -(-a4 & 3);
  }

  else
  {
    v4 = a4 & 3;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  v6 = *result;
  if (v4 == 3)
  {
    LODWORD(v25) = 0;
    v26 = 0;
    v28 = result[1];
    v27 = result[2];
    if (a3 >= 9 && a4 == 3)
    {
      v29 = 0;
      v25 = 0;
      v30 = *result;
      v31 = result[1];
      v32 = result[2];
      v33 = a2;
      do
      {
        v34 = *v30++;
        v101.val[0] = v34;
        v35 = *v31++;
        v101.val[1] = v35;
        v36 = *v32++;
        v101.val[2] = v36;
        vst3q_s16(v33->i16, v101);
        v33 += 3;
        v25 += 8;
        v29 += 0x1800000000;
      }

      while (v25 < a3 - 8);
      v26 = v29 >> 32;
    }

    if (v25 < a3)
    {
      v37 = v25;
      v38 = v25;
      v39 = &v6->i16[v38];
      v40 = &v28->i16[v38];
      v41 = &a2->i16[v26 + 1];
      v42 = a3 - v37;
      v43 = &v27->i16[v38];
      do
      {
        v44 = *v39++;
        *(v41 - 1) = v44;
        v45 = *v40++;
        *v41 = v45;
        v46 = *v43++;
        v41[1] = v46;
        v41 += a4;
        --v42;
      }

      while (v42);
    }

    goto LABEL_54;
  }

  if (v4 == 2)
  {
    LODWORD(v9) = 0;
    v10 = 0;
    v11 = result[1];
    if (a3 >= 9 && a4 == 2)
    {
      v12 = 0;
      v9 = 0;
      v13 = *result;
      v14 = result[1];
      v15 = a2;
      do
      {
        v16 = *v13++;
        v100.val[0] = v16;
        v17 = *v14++;
        v100.val[1] = v17;
        vst2q_s16(v15->i16, v100);
        v15 += 2;
        v9 += 8;
        v12 += 0x1000000000;
      }

      while (v9 < a3 - 8);
      v10 = v12 >> 32;
    }

    if (v9 < a3)
    {
      v18 = &a2->i16[v10 + 1];
      v19 = a3 - v9;
      v20 = v9;
      v21 = &v11->i16[v20];
      v22 = &v6->i16[v20];
      do
      {
        v23 = *v22++;
        *(v18 - 1) = v23;
        v24 = *v21++;
        *v18 = v24;
        v18 += a4;
        --v19;
      }

      while (v19);
    }

    goto LABEL_54;
  }

  if (v4 != 1)
  {
    LODWORD(v47) = 0;
    v48 = 0;
    v50 = result[1];
    v49 = result[2];
    v51 = result[3];
    if (a3 >= 9 && a4 == 4)
    {
      v52 = 0;
      v47 = 0;
      v53 = *result;
      v54 = result[1];
      v55 = result[2];
      v56 = result[3];
      v57 = a2;
      do
      {
        v58 = *v53++;
        v102.val[0] = v58;
        v59 = *v54++;
        v102.val[1] = v59;
        v60 = *v55++;
        v102.val[2] = v60;
        v61 = *v56++;
        v102.val[3] = v61;
        vst4q_s16(v57->i16, v102);
        v57 += 4;
        v47 += 8;
        v52 += 0x2000000000;
      }

      while (v47 < a3 - 8);
      v48 = v52 >> 32;
    }

    if (v47 < a3)
    {
      v62 = v47;
      v63 = v47;
      v64 = &v6->i16[v63];
      v65 = &v50->i16[v63];
      v66 = &v49->i16[v63];
      v67 = &a2->i16[v48 + 2];
      v68 = a3 - v62;
      v69 = &v51->i16[v63];
      do
      {
        v70 = *v64++;
        *(v67 - 2) = v70;
        v71 = *v65++;
        *(v67 - 1) = v71;
        v72 = *v66++;
        *v67 = v72;
        v73 = *v69++;
        v67[1] = v73;
        v67 += a4;
        --v68;
      }

      while (v68);
    }

    goto LABEL_54;
  }

  if (a3 < 1)
  {
    return result;
  }

  v7 = 0;
  if (a3 < 4 || a4 != 1)
  {
    v8 = 0;
    goto LABEL_52;
  }

  v8 = 0;
  if ((a2 - v6) < 0x20)
  {
    goto LABEL_52;
  }

  if (a3 < 0x10)
  {
    v8 = 0;
    goto LABEL_47;
  }

  v8 = a3 & 0x7FFFFFF0;
  v74 = v6 + 1;
  v75 = a2 + 1;
  v76 = v8;
  do
  {
    v77 = *v74;
    v75[-1] = v74[-1];
    *v75 = v77;
    v74 += 2;
    v75 += 2;
    v76 -= 16;
  }

  while (v76);
  if (v8 != a3)
  {
    if ((a3 & 0xC) == 0)
    {
      v7 = v8 * a4;
      goto LABEL_52;
    }

LABEL_47:
    v78 = v8;
    v8 = a3 & 0x7FFFFFFC;
    v7 = (a3 & 0x7FFFFFFC) * a4;
    v79 = (v6->i64 + 2 * v78);
    v80 = v78 - v8;
    v81 = (a2->i64 + 2 * v78 * a4);
    do
    {
      v82 = *v79++;
      *v81++ = v82;
      v80 += 4;
    }

    while (v80);
    if (v8 == a3)
    {
      goto LABEL_54;
    }

LABEL_52:
    v83 = &a2->i16[v7];
    v84 = a3 - v8;
    v85 = &v6->i16[v8];
    do
    {
      v86 = *v85++;
      *v83 = v86;
      v83 += a4;
      --v84;
    }

    while (v84);
  }

LABEL_54:
  if (a3 >= 1 && v5 < a4)
  {
    v87 = v5;
    v88 = &a2->i8[2 * v5 + 4];
    do
    {
      v89 = &result[v87];
      v90 = *v89;
      v91 = v89[1];
      v92 = v89[2];
      v93 = v89[3];
      v94 = a3;
      v95 = v88;
      do
      {
        v96 = v90->i16[0];
        v90 = (v90 + 2);
        *(v95 - 2) = v96;
        v97 = v91->i16[0];
        v91 = (v91 + 2);
        *(v95 - 1) = v97;
        v98 = v92->i16[0];
        v92 = (v92 + 2);
        *v95 = v98;
        v99 = v93->i16[0];
        v93 = (v93 + 2);
        *(v95 + 1) = v99;
        v95 += 2 * a4;
        --v94;
      }

      while (v94);
      v87 += 4;
      v88 += 8;
    }

    while (v87 < a4);
  }

  return result;
}

float32x4_t **sub_100281B88(float32x4_t **result, uint64_t a2, int a3, int a4)
{
  if (a4 <= 0)
  {
    v4 = -(-a4 & 3);
  }

  else
  {
    v4 = a4 & 3;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  v6 = *result;
  if (v4 == 3)
  {
    LODWORD(v29) = 0;
    v30 = 0;
    v32 = result[1];
    v31 = result[2];
    if (a3 >= 5 && a4 == 3)
    {
      v33 = 0;
      v29 = 0;
      v34 = *result;
      v35 = result[1];
      v36 = result[2];
      v37 = a2;
      do
      {
        v38 = *v34++;
        v96.val[0] = v38;
        v39 = *v35++;
        v96.val[1] = v39;
        v40 = *v36++;
        v96.val[2] = v40;
        vst3q_f32(v37, v96);
        v37 += 12;
        v29 += 4;
        v33 += 0xC00000000;
      }

      while (v29 < (a3 - 4));
      v30 = v33 >> 32;
    }

    if (v29 < a3)
    {
      v41 = v29;
      v42 = 4 * v29;
      v43 = (v6 + v42);
      v44 = (v32 + v42);
      v45 = (a2 + 4 * v30 + 4);
      v46 = a3 - v41;
      v47 = (v31 + v42);
      do
      {
        v48 = *v43++;
        *(v45 - 1) = v48;
        v49 = *v44++;
        *v45 = v49;
        v50 = *v47++;
        v45[1] = v50;
        v45 += a4;
        --v46;
      }

      while (v46);
    }

    goto LABEL_48;
  }

  if (v4 == 2)
  {
    LODWORD(v13) = 0;
    v14 = 0;
    v15 = result[1];
    if (a3 >= 5 && a4 == 2)
    {
      v16 = 0;
      v13 = 0;
      v17 = *result;
      v18 = result[1];
      v19 = a2;
      do
      {
        v20 = *v17++;
        v95.val[0] = v20;
        v21 = *v18++;
        v95.val[1] = v21;
        vst2q_f32(v19, v95);
        v19 += 8;
        v13 += 4;
        v16 += 0x800000000;
      }

      while (v13 < (a3 - 4));
      v14 = v16 >> 32;
    }

    if (v13 < a3)
    {
      v22 = (a2 + 4 * v14 + 4);
      v23 = a3 - v13;
      v24 = 4 * v13;
      v25 = (v15 + v24);
      v26 = (v6 + v24);
      do
      {
        v27 = *v26++;
        *(v22 - 1) = v27;
        v28 = *v25++;
        *v22 = v28;
        v22 += a4;
        --v23;
      }

      while (v23);
    }

    goto LABEL_48;
  }

  if (v4 != 1)
  {
    LODWORD(v51) = 0;
    v52 = 0;
    v54 = result[1];
    v53 = result[2];
    v55 = result[3];
    if (a3 >= 5 && a4 == 4)
    {
      v56 = 0;
      v51 = 0;
      v57 = *result;
      v58 = result[1];
      v59 = result[2];
      v60 = result[3];
      v61 = a2;
      do
      {
        v62 = *v57++;
        v97.val[0] = v62;
        v63 = *v58++;
        v97.val[1] = v63;
        v64 = *v59++;
        v97.val[2] = v64;
        v65 = *v60++;
        v97.val[3] = v65;
        vst4q_f32(v61, v97);
        v61 += 16;
        v51 += 4;
        v56 += 0x1000000000;
      }

      while (v51 < (a3 - 4));
      v52 = v56 >> 32;
    }

    if (v51 < a3)
    {
      v66 = v51;
      v67 = 4 * v51;
      v68 = (v6 + v67);
      v69 = (v54 + v67);
      v70 = (v53 + v67);
      v71 = (a2 + 4 * v52 + 8);
      v72 = a3 - v66;
      v73 = (v55 + v67);
      do
      {
        v74 = *v68++;
        *(v71 - 2) = v74;
        v75 = *v69++;
        *(v71 - 1) = v75;
        v76 = *v70++;
        *v71 = v76;
        v77 = *v73++;
        v71[1] = v77;
        v71 += a4;
        --v72;
      }

      while (v72);
    }

    goto LABEL_48;
  }

  if (a3 < 1)
  {
    return result;
  }

  v7 = 0;
  if (a3 < 8 || a4 != 1)
  {
    v8 = 0;
LABEL_46:
    v78 = (a2 + 4 * v7);
    v79 = a3 - v8;
    v80 = &v6->i32[v8];
    do
    {
      v81 = *v80++;
      *v78 = v81;
      v78 += a4;
      --v79;
    }

    while (v79);
    goto LABEL_48;
  }

  v8 = 0;
  if ((a2 - v6) < 0x20)
  {
    goto LABEL_46;
  }

  v8 = a3 & 0x7FFFFFF8;
  v7 = (a3 & 0x7FFFFFF8) * a4;
  v9 = &v6[1];
  v10 = (a2 + 16);
  v11 = v8;
  do
  {
    v12 = *v9;
    *(v10 - 1) = *(v9 - 1);
    *v10 = v12;
    v9 += 2;
    v10 += 2;
    v11 -= 8;
  }

  while (v11);
  if (v8 != a3)
  {
    goto LABEL_46;
  }

LABEL_48:
  if (a3 >= 1 && v5 < a4)
  {
    v82 = v5;
    v83 = a2 + 4 * v5 + 8;
    do
    {
      v84 = &result[v82];
      v85 = *v84;
      v86 = v84[1];
      v87 = v84[2];
      v88 = v84[3];
      v89 = a3;
      v90 = v83;
      do
      {
        v91 = v85->i32[0];
        v85 = (v85 + 4);
        *(v90 - 2) = v91;
        v92 = v86->i32[0];
        v86 = (v86 + 4);
        *(v90 - 1) = v92;
        v93 = v87->i32[0];
        v87 = (v87 + 4);
        *v90 = v93;
        v94 = v88->i32[0];
        v88 = (v88 + 4);
        v90[1] = v94;
        v90 += a4;
        --v89;
      }

      while (v89);
      v82 += 4;
      v83 += 16;
    }

    while (v82 < a4);
  }

  return result;
}

uint64_t **sub_100281F00(uint64_t **result, uint64_t a2, int a3, int a4)
{
  if (a4 <= 0)
  {
    v4 = -(-a4 & 3);
  }

  else
  {
    v4 = a4 & 3;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  v6 = *result;
  if (v4 != 3)
  {
    if (v4 != 2)
    {
      if (v4 == 1)
      {
        if (a3 < 1)
        {
          return result;
        }

        v7 = 0;
        if (a3 >= 6 && a4 == 1)
        {
          v8 = 0;
          if ((a2 - v6) >= 0x20)
          {
            v8 = a3 & 0x7FFFFFFC;
            v7 = (a3 & 0x7FFFFFFC) * a4;
            v9 = (v6 + 2);
            v10 = (a2 + 16);
            v11 = v8;
            do
            {
              v12 = *v9;
              *(v10 - 1) = *(v9 - 1);
              *v10 = v12;
              v9 += 2;
              v10 += 2;
              v11 -= 4;
            }

            while (v11);
            if (v8 == a3)
            {
              goto LABEL_51;
            }
          }
        }

        else
        {
          v8 = 0;
        }

        v87 = (a2 + 8 * v7);
        v88 = a3 - v8;
        v89 = &v6[v8];
        do
        {
          v90 = *v89++;
          *v87 = v90;
          v87 += a4;
          --v88;
        }

        while (v88);
        goto LABEL_51;
      }

      v40 = result[1];
      v39 = result[2];
      v41 = result[3];
      if (a4 == 4 && a3 >= 2)
      {
        v42 = 0;
        v43 = a3 - 1;
        v44 = *result;
        v45 = result[1];
        v46 = result[2];
        v47 = result[3];
        v48 = (a3 - 1);
        v49 = a2;
        do
        {
          v50 = *v44++;
          v51 = v50;
          v52 = *v45++;
          v53 = v52;
          v54 = *v46++;
          v55 = v54;
          v56 = *v47++;
          *v49 = v51;
          v49[1] = v53;
          v49[2] = v55;
          v49[3] = v56;
          v49 += 4;
          v42 += 0x400000000;
          --v48;
        }

        while (v48);
        v57 = v42 >> 32;
        if (v43 >= a3)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v57 = 0;
        v43 = 0;
        if (a3 <= 0)
        {
          goto LABEL_51;
        }
      }

      v75 = v43;
      v76 = v43;
      v77 = &v6[v76];
      v78 = &v40[v76];
      v79 = &v39[v76];
      v80 = (a2 + 8 * v57 + 16);
      v81 = a3 - v75;
      v82 = &v41[v76];
      do
      {
        v83 = *v77++;
        *(v80 - 2) = v83;
        v84 = *v78++;
        *(v80 - 1) = v84;
        v85 = *v79++;
        *v80 = v85;
        v86 = *v82++;
        v80[1] = v86;
        v80 += a4;
        --v81;
      }

      while (v81);
      goto LABEL_51;
    }

    v13 = result[1];
    if (a4 == 2 && a3 >= 2)
    {
      v14 = 0;
      v15 = a3 - 1;
      v16 = *result;
      v17 = result[1];
      v18 = (a3 - 1);
      v19 = a2;
      do
      {
        v20 = *v16++;
        v21 = v20;
        v22 = *v17++;
        *v19 = v21;
        v19[1] = v22;
        v19 += 2;
        v14 += 0x200000000;
        --v18;
      }

      while (v18);
      v23 = v14 >> 32;
      if (v15 >= a3)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v23 = 0;
      v15 = 0;
      if (a3 <= 0)
      {
        goto LABEL_51;
      }
    }

    v58 = (a2 + 8 * v23 + 8);
    v59 = a3 - v15;
    v60 = v15;
    v61 = &v13[v60];
    v62 = &v6[v60];
    do
    {
      v63 = *v62++;
      *(v58 - 1) = v63;
      v64 = *v61++;
      *v58 = v64;
      v58 += a4;
      --v59;
    }

    while (v59);
    goto LABEL_51;
  }

  v25 = result[1];
  v24 = result[2];
  if (a4 != 3 || a3 < 2)
  {
    v38 = 0;
    v27 = 0;
    if (a3 <= 0)
    {
      goto LABEL_51;
    }

    goto LABEL_41;
  }

  v26 = 0;
  v27 = a3 - 1;
  v28 = *result;
  v29 = result[1];
  v30 = result[2];
  v31 = (a3 - 1);
  v32 = a2;
  do
  {
    v33 = *v28++;
    v34 = v33;
    v35 = *v29++;
    v36 = v35;
    v37 = *v30++;
    *v32 = v34;
    v32[1] = v36;
    v32[2] = v37;
    v32 += 3;
    v26 += 0x300000000;
    --v31;
  }

  while (v31);
  v38 = v26 >> 32;
  if (v27 < a3)
  {
LABEL_41:
    v65 = v27;
    v66 = v27;
    v67 = &v6[v66];
    v68 = &v25[v66];
    v69 = (a2 + 8 * v38 + 8);
    v70 = a3 - v65;
    v71 = &v24[v66];
    do
    {
      v72 = *v67++;
      *(v69 - 1) = v72;
      v73 = *v68++;
      *v69 = v73;
      v74 = *v71++;
      v69[1] = v74;
      v69 += a4;
      --v70;
    }

    while (v70);
  }

LABEL_51:
  if (a3 >= 1 && v5 < a4)
  {
    v91 = v5;
    v92 = a2 + 8 * v5 + 16;
    do
    {
      v93 = &result[v91];
      v94 = *v93;
      v95 = v93[1];
      v96 = v93[2];
      v97 = v93[3];
      v98 = a3;
      v99 = v92;
      do
      {
        v100 = *v94++;
        *(v99 - 2) = v100;
        v101 = *v95++;
        *(v99 - 1) = v101;
        v102 = *v96++;
        *v99 = v102;
        v103 = *v97++;
        v99[1] = v103;
        v99 += a4;
        --v98;
      }

      while (v98);
      v91 += 4;
      v92 += 32;
    }

    while (v91 < a4);
  }

  return result;
}