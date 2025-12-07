_DWORD *sub_10028FCE8(_DWORD *result)
{
  if (result)
  {
    return (*result == 144);
  }

  return result;
}

int *sub_10028FCFC(_DWORD *a1, uint64_t a2)
{
  v4 = sub_100283BF4(a1, a2, "width");
  if (v4)
  {
    if ((*v4 & 7) == 2)
    {
      v5 = rint(*(v4 + 16));
      v6 = sub_100283BF4(a1, a2, "height");
      if (v6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if ((*v4 & 7) == 1)
      {
        LODWORD(v5) = *(v4 + 16);
        v6 = sub_100283BF4(a1, a2, "height");
        if (!v6)
        {
          goto LABEL_5;
        }

LABEL_8:
        if ((*v6 & 7) == 2)
        {
          v7 = rint(*(v6 + 16));
          v8 = sub_100283BF4(a1, a2, "dt");
          if (v8)
          {
            goto LABEL_19;
          }
        }

        else
        {
          if ((*v6 & 7) != 1)
          {
            v7 = 0x7FFFFFFFLL;
            v8 = sub_100283BF4(a1, a2, "dt");
            if (!v8)
            {
              goto LABEL_22;
            }

            goto LABEL_19;
          }

          v7 = *(v6 + 16);
          v8 = sub_100283BF4(a1, a2, "dt");
          if (v8)
          {
            goto LABEL_19;
          }
        }

LABEL_22:
        v9 = 0;
        v10 = sub_100283BF4(a1, a2, "origin");
        if (!v10)
        {
          goto LABEL_28;
        }

        goto LABEL_23;
      }

      LODWORD(v5) = 0x7FFFFFFF;
      v6 = sub_100283BF4(a1, a2, "height");
      if (v6)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
    v6 = sub_100283BF4(a1, a2, "height");
    if (v6)
    {
      goto LABEL_8;
    }
  }

LABEL_5:
  v7 = 0;
  v8 = sub_100283BF4(a1, a2, "dt");
  if (!v8)
  {
    goto LABEL_22;
  }

LABEL_19:
  if ((*v8 & 7) != 3)
  {
    goto LABEL_22;
  }

  v9 = *(v8 + 24);
  v10 = sub_100283BF4(a1, a2, "origin");
  if (!v10)
  {
    goto LABEL_28;
  }

LABEL_23:
  if ((*v10 & 7) != 3 || !v5 || !v7 || !v9 || !*(v10 + 24))
  {
LABEL_28:
    v44 = 0;
    v45 = 0;
    qmemcpy(sub_1002A80E0(&v44, 45), "Some of essential image attributes are absent", 45);
    sub_1002A8980(-2, &v44, "icvReadImage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5666);
  }

  v11 = sub_10029A8E0(v9);
  v12 = sub_100283BF4(a1, a2, "layout");
  if (!v12)
  {
    if (!strcmp("interleaved", "interleaved"))
    {
      goto LABEL_36;
    }

LABEL_35:
    v44 = 0;
    v45 = 0;
    qmemcpy(sub_1002A80E0(&v44, 35), "Only interleaved images can be read", 35);
    sub_1002A8980(-2, &v44, "icvReadImage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5671);
  }

  if ((*v12 & 7) != 3)
  {
    goto LABEL_35;
  }

  v13 = *(v12 + 24);
  if (!v13 || strcmp(v13, "interleaved"))
  {
    goto LABEL_35;
  }

LABEL_36:
  v14 = sub_100283BF4(a1, a2, "data");
  if (!v14)
  {
    v44 = 0;
    v45 = 0;
    qmemcpy(sub_1002A80E0(&v44, 43), "The image data is not found in file storage", 43);
    sub_1002A8980(-2, &v44, "icvReadImage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5675);
  }

  v15 = v14;
  if ((*v14 & 7u) < 5)
  {
    v16 = v7 * v5;
    v17 = ((v11 >> 3) & 0x1FF) + 1;
    if (((*v14 & 7) != 0) == v17 * v7 * v5)
    {
      goto LABEL_42;
    }

LABEL_41:
    v44 = 0;
    v45 = 0;
    qmemcpy(sub_1002A80E0(&v44, 63), "The matrix size does not match to the number of stored elements", 63);
    sub_1002A8980(-209, &v44, "icvReadImage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5679);
  }

  v16 = v7 * v5;
  v17 = ((v11 >> 3) & 0x1FF) + 1;
  if (*(*(v14 + 16) + 40) != v17 * v7 * v5)
  {
    goto LABEL_41;
  }

LABEL_42:
  if ((v11 & 7) == 4 || (v11 & 5) == 1)
  {
    v19 = 0x80000000;
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_1001FEF3C(v5 | (v7 << 32), (0x442211088uLL >> (4 * (v11 & 7))) & 0x78 | v19, v17);
  v21 = sub_100283BF4(a1, a2, "roi");
  if (v21)
  {
    v22 = v21;
    v23 = sub_100283BF4(a1, v21, "x");
    v43 = v5;
    if (v23)
    {
      if ((*v23 & 7) == 2)
      {
        v24 = rint(*(v23 + 16));
      }

      else if ((*v23 & 7) == 1)
      {
        LODWORD(v24) = *(v23 + 16);
      }

      else
      {
        LODWORD(v24) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v24) = 0;
    }

    v25 = v24;
    v26 = sub_100283BF4(a1, v22, "y");
    v42 = v7;
    if (v26)
    {
      if ((*v26 & 7) == 2)
      {
        v27 = rint(*(v26 + 16));
        v28 = sub_100283BF4(a1, v22, "width");
        if (!v28)
        {
          goto LABEL_60;
        }
      }

      else if ((*v26 & 7) == 1)
      {
        v27 = *(v26 + 16);
        v28 = sub_100283BF4(a1, v22, "width");
        if (!v28)
        {
LABEL_60:
          LODWORD(v29) = 0;
          goto LABEL_71;
        }
      }

      else
      {
        v27 = 0x7FFFFFFFLL;
        v28 = sub_100283BF4(a1, v22, "width");
        if (!v28)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v27 = 0;
      v28 = sub_100283BF4(a1, v22, "width");
      if (!v28)
      {
        goto LABEL_60;
      }
    }

    if ((*v28 & 7) == 2)
    {
      v29 = rint(*(v28 + 16));
    }

    else if ((*v28 & 7) == 1)
    {
      LODWORD(v29) = *(v28 + 16);
    }

    else
    {
      LODWORD(v29) = 0x7FFFFFFF;
    }

LABEL_71:
    v5 = v25 | (v27 << 32);
    v30 = v29;
    v31 = sub_100283BF4(a1, v22, "height");
    if (v31)
    {
      if ((*v31 & 7) == 2)
      {
        v32 = rint(*(v31 + 16));
      }

      else if ((*v31 & 7) == 1)
      {
        v32 = *(v31 + 16);
      }

      else
      {
        v32 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v32 = 0;
    }

    v7 = v30 | (v32 << 32);
    v33 = sub_100283BF4(a1, v22, "coi");
    if (v33)
    {
      if ((*v33 & 7) == 2)
      {
        v34 = rint(*(v33 + 16));
      }

      else if ((*v33 & 7) == 1)
      {
        v34 = *(v33 + 16);
      }

      else
      {
        v34 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v34 = 0;
    }

    sub_1001FF0D8(v20, v5, v7);
    sub_1001FF2D8(v20, v34);
    LODWORD(v7) = v42;
    LODWORD(v5) = v43;
  }

  v35 = (v17 << ((0xFA50u >> (2 * (v11 & 7))) & 3)) * v5;
  v36 = v20[24];
  if (v35 == v36)
  {
    v37 = v16;
  }

  else
  {
    v37 = v5;
  }

  if (v35 == v36)
  {
    v38 = 1;
  }

  else
  {
    v38 = v7;
  }

  sub_10028BBBC(a1, v15, v46);
  if (v38 >= 1)
  {
    v39 = 0;
    v40 = v37 * v17;
    do
    {
      sub_10028BDD8(a1, v46, v40, *(v20 + 11) + v20[24] * v39++, v9);
    }

    while (v38 != v39);
  }

  return v20;
}

void sub_10029041C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002A8124(va);
  __break(1u);
}

void sub_10029042C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10029048C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a3 + 28) == 1)
  {
    v18[0] = 0;
    v18[1] = 0;
    qmemcpy(sub_1002A80E0(v18, 48), "Images with planar data layout are not supported", 48);
    sub_1002A8980(-210, v18, "icvWriteImage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5606);
  }

  sub_100288FB8(a1, a2, 6, "opencv-image");
  sub_1002899A0(a1, "width", *(a3 + 40));
  sub_1002899A0(a1, "height", *(a3 + 44));
  if (*(a3 + 32))
  {
    v5 = "bottom-left";
  }

  else
  {
    v5 = "top-left";
  }

  sub_100289AEC(a1, "origin", v5, 0);
  if (*(a3 + 28) == 1)
  {
    v6 = "planar";
  }

  else
  {
    v6 = "interleaved";
  }

  sub_100289AEC(a1, "layout", v6, 0);
  if (*(a3 + 48))
  {
    sub_100288FB8(a1, "roi", 14, 0);
    sub_1002899A0(a1, "x", *(*(a3 + 48) + 4));
    sub_1002899A0(a1, "y", *(*(a3 + 48) + 8));
    sub_1002899A0(a1, "width", *(*(a3 + 48) + 12));
    sub_1002899A0(a1, "height", *(*(a3 + 48) + 16));
    sub_1002899A0(a1, "coi", **(a3 + 48));
    sub_10028984C(a1);
  }

  v7 = (0x43160520u >> (((*(a3 + 16) >> 2) & 0x3C) + ((*(a3 + 16) >> 31) & 0x14))) & 7;
  v8 = &v19;
  sprintf(&v19, "%d%c", *(a3 + 8), aUcwsifdr[v7]);
  if (v20[1])
  {
    v9 = 0;
  }

  else
  {
    v9 = v19 == 49;
  }

  if (v9)
  {
    v8 = v20;
  }

  sub_100289AEC(a1, "dt", v8, 0);
  v10 = *(a3 + 40);
  v11 = (*(a3 + 8) * v10) << ((0xFA50u >> (2 * v7)) & 3);
  v12 = *(a3 + 96);
  if (v11 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = *(a3 + 44);
  }

  if (v11 == v12)
  {
    v14 = *(a3 + 44);
  }

  else
  {
    v14 = 1;
  }

  sub_100288FB8(a1, "data", 13, 0);
  if (v13 >= 1)
  {
    v15 = 0;
    v16 = v14 * v10;
    do
    {
      sub_100289C48(a1, *(a3 + 88) + *(a3 + 96) * v15++, v16, v8);
    }

    while (v13 != v15);
  }

  sub_10028984C(a1);
  return sub_10028984C(a1);
}

void sub_1002907B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002907E8(_BOOL8 result)
{
  if (result)
  {
    return *(result + 2) == 16962 && (*(result + 36) & 0x80000000) == 0 && *(result + 32) >= 0;
  }

  return result;
}

int *sub_10029081C(_DWORD *a1, uint64_t a2)
{
  v4 = sub_100283BF4(a1, a2, "rows");
  if (!v4)
  {
    LODWORD(v5) = -1;
    v6 = sub_100283BF4(a1, a2, "cols");
    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if ((*v4 & 7) == 2)
  {
    v5 = rint(*(v4 + 16));
    v6 = sub_100283BF4(a1, a2, "cols");
    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if ((*v4 & 7) != 1)
  {
    LODWORD(v5) = 0x7FFFFFFF;
    v6 = sub_100283BF4(a1, a2, "cols");
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_5:
    LODWORD(v7) = -1;
    v8 = sub_100283BF4(a1, a2, "dt");
    if (!v8)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  LODWORD(v5) = *(v4 + 16);
  v6 = sub_100283BF4(a1, a2, "cols");
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  if ((*v6 & 7) == 2)
  {
    v7 = rint(*(v6 + 16));
    v8 = sub_100283BF4(a1, a2, "dt");
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  else if ((*v6 & 7) == 1)
  {
    LODWORD(v7) = *(v6 + 16);
    v8 = sub_100283BF4(a1, a2, "dt");
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    LODWORD(v7) = 0x7FFFFFFF;
    v8 = sub_100283BF4(a1, a2, "dt");
    if (!v8)
    {
      goto LABEL_23;
    }
  }

LABEL_19:
  if ((*v8 & 7) != 3 || (v9 = *(v8 + 24), (v5 & 0x80000000) != 0) || (v7 & 0x80000000) != 0 || !v9)
  {
LABEL_23:
    v16 = 0;
    v17 = 0;
    qmemcpy(sub_1002A80E0(&v16, 46), "Some of essential matrix attributes are absent", 46);
    sub_1002A8980(-2, &v16, "icvReadMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5286);
  }

  v10 = sub_10029A8E0(*(v8 + 24));
  v11 = sub_100283BF4(a1, a2, "data");
  if (!v11)
  {
    v16 = 0;
    v17 = 0;
    qmemcpy(sub_1002A80E0(&v16, 44), "The matrix data is not found in file storage", 44);
    sub_1002A8980(-2, &v16, "icvReadMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5292);
  }

  v12 = v11;
  if ((*v11 & 7u) < 5)
  {
    v13 = (*v11 & 7) != 0;
    if ((*v11 & 7) == 0)
    {
      return sub_1001FA8A8(v5, v7, v10);
    }
  }

  else
  {
    v13 = *(*(v11 + 16) + 40);
    if (v13 < 1)
    {
      return sub_1001FA8A8(v5, v7, v10);
    }
  }

  if (v13 != v7 * v5 + v7 * v5 * ((v10 >> 3) & 0x1FF))
  {
    v16 = 0;
    v17 = 0;
    qmemcpy(sub_1002A80E0(&v16, 63), "The matrix size does not match to the number of stored elements", 63);
    sub_1002A8980(-209, &v16, "icvReadMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5297);
  }

  v15 = sub_1001FA87C(v5, v7, v10);
  sub_10028C630(a1, v12, *(v15 + 3), v9);
  return v15;
}

uint64_t sub_100290BCC(uint64_t a1, const char *a2, unsigned int *a3)
{
  sub_100288FB8(a1, a2, 6, "opencv-matrix");
  sub_1002899A0(a1, "rows", a3[8]);
  sub_1002899A0(a1, "cols", a3[9]);
  sprintf(&v14, "%d%c", ((*a3 >> 3) & 0x1FF) + 1, aUcwsifdr[*a3 & 7]);
  if (v15[1])
  {
    v5 = 0;
  }

  else
  {
    v5 = v14 == 49;
  }

  if (v5)
  {
    v6 = v15;
  }

  else
  {
    v6 = &v14;
  }

  sub_100289AEC(a1, "dt", v6, 0);
  sub_100288FB8(a1, "data", 13, 0);
  v7 = sub_1001FD8C8(a3);
  if (v7 >= 1)
  {
    v8 = HIDWORD(v7);
    if (SHIDWORD(v7) >= 1)
    {
      if (*(a3 + 3))
      {
        v9 = 0;
        v10 = *a3;
        if ((*a3 & 0x4000) != 0)
        {
          v11 = HIDWORD(v7);
        }

        else
        {
          v11 = 1;
        }

        v12 = v11 * v7;
        do
        {
          sub_100289C48(a1, *(a3 + 3) + v9 * a3[1], v12, &v14);
          if ((v10 & 0x4000) != 0)
          {
            break;
          }

          ++v9;
        }

        while (v9 < v8);
      }
    }
  }

  sub_10028984C(a1);
  return sub_10028984C(a1);
}

BOOL sub_100290D5C(_BOOL8 result)
{
  if (result)
  {
    return *(result + 2) == 16963;
  }

  return result;
}

int *sub_100290D78(_DWORD *a1, uint64_t a2)
{
  memset(v22, 0, sizeof(v22));
  v4 = sub_100283BF4(a1, a2, "sizes");
  v5 = sub_100283BF4(a1, a2, "dt");
  if (!v5 || (*v5 & 7) != 3 || !v4 || !*(v5 + 24))
  {
    v20 = 0;
    v21 = 0;
    qmemcpy(sub_1002A80E0(&v20, 46), "Some of essential matrix attributes are absent", 46);
    sub_1002A8980(-2, &v20, "icvReadMatND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5369);
  }

  v19 = *(v5 + 24);
  if ((*v4 & 7) == 5)
  {
    v6 = *(*(v4 + 16) + 40);
    if ((v6 - 33) > 0xFFFFFFDF)
    {
      goto LABEL_14;
    }

LABEL_13:
    v20 = 0;
    v21 = 0;
    qmemcpy(sub_1002A80E0(&v20, 45), "Could not determine the matrix dimensionality", 45);
    sub_1002A8980(-212, &v20, "icvReadMatND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5375);
  }

  if ((*v4 & 7) == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if ((v6 - 33) <= 0xFFFFFFDF)
  {
    goto LABEL_13;
  }

LABEL_14:
  sub_10028BBBC(a1, v4, &v20);
  if ((*v4 & 7) == 5)
  {
    v7 = *(*(v4 + 16) + 40);
  }

  else
  {
    v7 = 1;
  }

  sub_10028BDD8(a1, &v20, v7, v22, "i");
  v8 = sub_10029A8E0(v19);
  v9 = sub_100283BF4(a1, a2, "data");
  v10 = v9;
  if (!v9)
  {
    v20 = 0;
    v21 = 0;
    qmemcpy(sub_1002A80E0(&v20, 44), "The matrix data is not found in file storage", 44);
    sub_1002A8980(-2, &v20, "icvReadMatND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5382);
  }

  v11 = ((v8 >> 3) & 0x1FF) + 1;
  if (v6 >= 1)
  {
    v12 = v6;
    v13 = v22;
    do
    {
      if (!*v13)
      {
        v20 = 0;
        v21 = 0;
        *sub_1002A80E0(&v20, 8) = 0x5D695B73657A6973;
        sub_1002A8980(-215, &v20, "icvReadMatND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5388);
      }

      v11 *= *v13++;
      --v12;
    }

    while (v12);
  }

  if ((*v9 & 7u) < 5)
  {
    v14 = (*v9 & 7) != 0;
    if ((*v9 & 7) != 0 && v14 != v11)
    {
LABEL_29:
      v20 = 0;
      v21 = 0;
      qmemcpy(sub_1002A80E0(&v20, 63), "The matrix size does not match to the number of stored elements", 63);
      sub_1002A8980(-209, &v20, "icvReadMatND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5396);
    }
  }

  else
  {
    v14 = *(*(v9 + 16) + 40);
    if (v14 >= 1 && v14 != v11)
    {
      goto LABEL_29;
    }
  }

  if (v14 < 1)
  {
    return sub_1001FB644(v6, v22, v8);
  }

  v17 = sub_1001FB618(v6, v22, v8);
  sub_10028C630(a1, v10, *(v17 + 3), v19);
  return v17;
}

void sub_100291174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100291204(uint64_t a1, const char *a2, uint64_t a3)
{
  v14 = a3;
  v11 = 0;
  sub_100288FB8(a1, a2, 6, "opencv-nd-matrix");
  v5 = sub_1001FD6A4(a3, __dst);
  sub_100288FB8(a1, "sizes", 13, 0);
  sub_100289C48(a1, __dst, v5, "i");
  sub_10028984C(a1);
  v6 = sub_1001FD564(a3);
  sprintf(&v15, "%d%c", ((v6 >> 3) & 0x1FF) + 1, aUcwsifdr[v6 & 7]);
  if (v16[1])
  {
    v7 = 0;
  }

  else
  {
    v7 = v15 == 49;
  }

  if (v7)
  {
    v8 = v16;
  }

  else
  {
    v8 = &v15;
  }

  sub_100289AEC(a1, "dt", v8, 0);
  sub_100288FB8(a1, "data", 13, 0);
  if (*(a3 + 32) >= 1 && *(a3 + 24))
  {
    sub_1001FBB14(1u, &v14, 0, v13, &v10, 0);
    do
    {
      sub_100289C48(a1, v12, v11, &v15);
    }

    while (sub_1001FC684(&v10));
  }

  sub_10028984C(a1);
  return sub_10028984C(a1);
}

uint64_t sub_1002913A4(_DWORD *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    v4 = -27;
LABEL_5:
    v7 = 0;
    v8 = 0;
    qmemcpy(sub_1002A80E0(&v7, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(v4, &v7, "cvRead", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6708);
  }

  if (*a1 != 1280131417)
  {
    v4 = -5;
    goto LABEL_5;
  }

  if (!a2)
  {
    return 0;
  }

  if ((*a2 & 0x10) == 0 || (v5 = *(a2 + 8)) == 0)
  {
    v7 = 0;
    v8 = 0;
    qmemcpy(sub_1002A80E0(&v7, 57), "The node does not represent a user object (unknown type?)", 57);
    sub_1002A8980(-2, &v7, "cvRead", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6714);
  }

  result = (*(v5 + 48))(a1, a2);
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_100291524(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    v10 = -27;
LABEL_5:
    v14 = 0;
    v15 = 0;
    qmemcpy(sub_1002A80E0(&v14, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(v10, &v14, "cvWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6731);
  }

  if (*a1 != 1280131417)
  {
    v10 = -5;
    goto LABEL_5;
  }

  if (!a1[2])
  {
    v14 = 0;
    v15 = 0;
    qmemcpy(sub_1002A80E0(&v14, 38), "The file storage is opened for reading", 38);
    sub_1002A8980(-2, &v14, "cvWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6731);
  }

  if (!a3)
  {
    v14 = 0;
    v15 = 0;
    qmemcpy(sub_1002A80E0(&v14, 34), "Null pointer to the written object", 34);
    sub_1002A8980(-27, &v14, "cvWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6734);
  }

  v11 = qword_1004D5468;
  if (!qword_1004D5468)
  {
LABEL_12:
    v14 = 0;
    v15 = 0;
    qmemcpy(sub_1002A80E0(&v14, 14), "Unknown object", 14);
    sub_1002A8980(-5, &v14, "cvWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6738);
  }

  while (!(*(v11 + 32))(a3))
  {
    v11 = *(v11 + 16);
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  v12 = *(v11 + 56);
  if (!v12)
  {
    v14 = 0;
    v15 = 0;
    qmemcpy(sub_1002A80E0(&v14, 39), "The object does not have write function", 39);
    sub_1002A8980(-5, &v14, "cvWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6741);
  }

  return v12(a1, a2, a3, a4, a5);
}

uint64_t sub_1002917F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 432);
  }

  return v1 & 1;
}

uint64_t sub_100291810(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100291880(uint64_t a1, char **a2, unsigned int a3, uint64_t a4)
{
  *(a1 + 8) = 0u;
  *a1 = &off_1004752F8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 52) = 0u;
  sub_100291A20(a1, a2, a3, a4);
  return a1;
}

void sub_1002918E8(_Unwind_Exception *a1)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    *(v2 + 48) = v5;
    operator delete(v5);
  }

  sub_1002A8124(v3);
  sub_100291810(v1);
  _Unwind_Resume(a1);
}

void *sub_100291918(void *a1)
{
  *a1 = &off_1004752F8;
  v3 = a1 + 5;
  v2 = a1[5];
  if (v3[1] != v2)
  {
    do
    {
      sub_10028984C(a1[2]);
      v2 = a1[5];
      v4 = a1[6] - 1;
      a1[6] = v4;
    }

    while (v4 != v2);
  }

  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  sub_1002A8124(a1 + 3);
  v5 = a1[1];
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  a1[1] = 0;
  a1[2] = 0;
  return a1;
}

void sub_1002919E8(void *a1)
{
  sub_100291918(a1);

  operator delete();
}

uint64_t sub_100291A20(void *a1, char **a2, unsigned int a3, uint64_t a4)
{
  sub_1002ACE7C(v15, &off_100475328);
  (*(*a1 + 32))(a1);
  v8 = "";
  if (*a2)
  {
    v9 = *a2;
  }

  else
  {
    v9 = "";
  }

  if (*a4)
  {
    v8 = *a4;
  }

  if (*(a4 + 8))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (sub_100283F94(v9, 0, a3, v10))
  {
    operator new();
  }

  v11 = a1[1];
  a1[1] = 0;
  a1[2] = 0;
  if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v11 + 16))(v11);
  }

  v12 = (*(*a1 + 24))(a1);
  if (v12)
  {
    v13 = 6;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 16) = v13;
  if (v15[2])
  {
    sub_1002ACC1C(v15);
  }

  return v12;
}

uint64_t sub_100291BEC(uint64_t result)
{
  v2 = (result + 8);
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v3 = result;
    (*(*v1 + 16))(v1);
    result = v3;
  }

  *v2 = 0;
  v2[1] = 0;
  *(result + 48) = *(result + 40);
  *(result + 64) = 0;
  return result;
}

uint64_t sub_100291C68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v3 = a1[2];
  if (v3 && *(v3 + 376))
  {
    sub_100283290(v3, a2);
  }

  return (*(*a1 + 32))(a1);
}

uint64_t sub_100291CE8(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v4 = *a2;
  }

  else
  {
    v4 = "";
  }

  if ((*(*a1 + 24))(a1))
  {
    v5 = *v4;
    if ((v5 | 0x20) == 0x7D)
    {
      v6 = *(a1 + 48);
      if (*(a1 + 40) == v6)
      {
        sub_1002A8688(&v44, "Extra closing '%c'", *v4);
        sub_1002A8980(-2, &v44, "operator<<", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6957);
      }

      if (v5 == 93)
      {
        v7 = 91;
      }

      else
      {
        v7 = 123;
      }

      v8 = *(v6 - 1);
      if (v7 != v8)
      {
        sub_1002A8688(&v44, "The closing '%c' does not match the opening '%c'", v5, v8);
        sub_1002A8980(-2, &v44, "operator<<", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6960);
      }

      *(a1 + 48) = v6 - 1;
      v9 = 6;
      if (*(a1 + 40) != v6 - 1)
      {
        if (*(v6 - 2) == 123)
        {
          v9 = 6;
        }

        else
        {
          v9 = 1;
        }
      }

      *(a1 + 64) = v9;
      sub_10028984C(*(a1 + 16));
      v44 = 0;
      v45 = 0;
      if (&v44 != (a1 + 24))
      {
        sub_1002A8124((a1 + 24));
        v10 = v44;
        if (v44)
        {
          atomic_fetch_add(v44 - 1, 1u);
          v10 = v44;
        }

        v11 = v45;
        *(a1 + 24) = v10;
        *(a1 + 32) = v11;
      }

LABEL_83:
      sub_1002A8124(&v44);
      return a1;
    }

    if (*(a1 + 64) == 6)
    {
      v22 = v5 == 95;
      v12 = ((v5 & 0xDF) - 65);
      if (!v22 && v12 >= 0x1A)
      {
        sub_1002A8688(&v44, "Incorrect element name %s", v4);
        sub_1002A8980(-2, &v44, "operator<<", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6970);
      }

      if (a1 + 24 != a2)
      {
        sub_1002A8124((a1 + 24));
        v14 = *a2;
        if (*a2)
        {
          atomic_fetch_add(v14 - 1, 1u);
          v14 = *a2;
        }

        *(a1 + 24) = v14;
        *(a1 + 32) = *(a2 + 8);
      }

      v15 = 5;
      goto LABEL_34;
    }

    if ((*(a1 + 64) & 3) != 1)
    {
      v44 = 0;
      v45 = 0;
      *sub_1002A80E0(&v44, 16) = *"Invalid fs.state";
      sub_1002A8980(-2, &v44, "operator<<", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 7000);
    }

    if ((v5 | 0x20) == 0x7B)
    {
      v17 = *(a1 + 48);
      v16 = *(a1 + 56);
      if (v17 >= v16)
      {
        v23 = *(a1 + 40);
        v24 = (v17 - v23);
        v25 = v17 - v23 + 1;
        if (v25 < 0)
        {
          sub_10000918C();
        }

        v26 = v16 - v23;
        if (2 * v26 > v25)
        {
          v25 = 2 * v26;
        }

        if (v26 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v27 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          operator new();
        }

        v30 = v17 - v23;
        *v24 = v5;
        v18 = v24 + 1;
        memcpy(0, v23, v30);
        *(a1 + 40) = 0;
        *(a1 + 48) = v24 + 1;
        *(a1 + 56) = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v17 = v5;
        v18 = v17 + 1;
      }

      v31 = *(a1 + 24);
      *(a1 + 48) = v18;
      v32 = *v4 == 123;
      if (*v4 == 123)
      {
        v33 = 6;
      }

      else
      {
        v33 = 1;
      }

      *(a1 + 64) = v33;
      v34 = v4 + 1;
      v35 = v4[1];
      if (v32)
      {
        v36 = 6;
      }

      else
      {
        v36 = 5;
      }

      if (v35 == 58)
      {
        v37 = v36 | 8;
      }

      else
      {
        v37 = v36;
      }

      v38 = 1;
      if (v35 == 58)
      {
        v38 = 2;
        v34 = v4 + 2;
      }

      if (!v31)
      {
        v31 = "";
      }

      if (*(a1 + 32))
      {
        v39 = v31;
      }

      else
      {
        v39 = 0;
      }

      if (v4[v38])
      {
        v40 = v34;
      }

      else
      {
        v40 = 0;
      }

      sub_100288FB8(*(a1 + 16), v39, v37, v40);
      v44 = 0;
      v45 = 0;
      if (&v44 != (a1 + 24))
      {
        sub_1002A8124((a1 + 24));
        v41 = v44;
        if (v44)
        {
          atomic_fetch_add(v44 - 1, 1u);
          v41 = v44;
        }

        v42 = v45;
        *(a1 + 24) = v41;
        *(a1 + 32) = v42;
      }

      goto LABEL_83;
    }

    if (v5 != 92 || ((v20 = v4[1], v19 = (v4 + 1), v21 = (1 << (v20 - 91)) & 0x500000005, (v20 - 91) <= 0x22) ? (v22 = v21 == 0) : (v22 = 1), v22))
    {
      v28 = *a2;
      v29 = *(a2 + 8);
      v44 = v28;
      v45 = v29;
      if (v28)
      {
        atomic_fetch_add(v28 - 1, 1u);
      }
    }

    else
    {
      sub_1001FA81C(&v44, v19);
    }

    sub_10029223C(a1, a1 + 24, &v44);
    sub_1002A8124(&v44);
    if (*(a1 + 64) == 5)
    {
      v15 = 6;
LABEL_34:
      *(a1 + 64) = v15;
    }
  }

  return a1;
}

void sub_100292194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10029223C(uint64_t a1, uint64_t a2, const char **a3)
{
  v3 = *(a1 + 16);
  v4 = *a2;
  if (!*a2)
  {
    v4 = "";
  }

  if (*(a2 + 8))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (*a3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = "";
  }

  return sub_100289AEC(v3, v5, v6, 0);
}

_BYTE *sub_100292270(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  result = 0;
  if (a1 && a2 && a4)
  {
    v6 = (a1 + a3);
    v7 = 3 * (a4 / 3);
    if (v7 < 1)
    {
      v13 = v6;
      v9 = a2;
      v15 = a4;
      if (a4 != 2)
      {
LABEL_8:
        if (v15 != 1)
        {
LABEL_13:
          *v9 = 0;
          return (v9 - a2);
        }

        v16 = *v13;
        *v9 = aAbcdefghijklmn[v16 >> 2];
        v9[1] = aAbcdefghijklmn[16 * (v16 & 3)];
        v17 = 61;
LABEL_12:
        v9[2] = v17;
        v9[3] = 61;
        v9 += 4;
        goto LABEL_13;
      }
    }

    else
    {
      v8 = &v6[v7];
      v9 = a2;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v10[1];
        v13 = v10 + 3;
        v14 = v10[2];
        *v9 = aAbcdefghijklmn[v11 >> 2];
        v9[1] = aAbcdefghijklmn[(v12 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v11 & 3))];
        v9[2] = aAbcdefghijklmn[(v14 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v12 & 0xF))];
        v9[3] = aAbcdefghijklmn[v14 & 0x3F];
        v9 += 4;
        v10 = v13;
      }

      while (v13 < v8);
      v15 = &v6[a4] - v13;
      if (v15 != 2)
      {
        goto LABEL_8;
      }
    }

    v18 = *v13;
    v19 = v13[1];
    *v9 = aAbcdefghijklmn[v18 >> 2];
    v9[1] = aAbcdefghijklmn[(v19 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v18 & 3))];
    v17 = aAbcdefghijklmn[4 * (v19 & 0xF)];
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1002923BC@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1002825FC(&v10);
  v4 = strlen(a1);
  v5 = sub_100241184(&v10, a1, v4);
  LOBYTE(v9[0]) = 32;
  sub_100241184(v5, v9, 1);
  std::stringbuf::str();
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6 >= 0x18)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 27), "buffer.size() < HEADER_SIZE", 27);
    sub_1002A8980(-215, v9, "make_base64_header", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 7785);
  }

  std::string::reserve(a2, 0x18uLL);
  while (1)
  {
    v7 = *(a2 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 8);
    }

    if (v7 > 0x17)
    {
      break;
    }

    std::string::push_back(a2, 32);
  }

  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1002925D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1002A8124(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  sub_100282818(va1);
  _Unwind_Resume(a1);
}

BOOL sub_100292628(const char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = strlen(*a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100241528();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v10 = v4;
  if (v4)
  {
    memmove(&__dst, v3, v4);
  }

  *(&__dst + v5) = 0;
  sub_100292868(v11, &__dst, 8);
  if (v10 < 0)
  {
    operator delete(__dst);
  }

  v6 = sub_100292A78(v11, a2);
  v7 = *(v6 + *(*v6 - 24) + 32);
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  std::locale::~locale(v13);
  std::istream::~istream();
  std::ios::~ios();
  return (v7 & 5) == 0;
}

void sub_100292838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100292DB8(va);
  _Unwind_Resume(a1);
}

void sub_10029284C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100292868(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 168) = 0;
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  *(a1 + 8) = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 16));
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  std::locale::locale((a1 + 24));
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = a3 | 8;
  std::stringbuf::str();
  return a1;
}

void sub_100292A28(_Unwind_Exception *a1)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 16) = v2;
  std::locale::~locale((v1 + 24));
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t *sub_100292A78(uint64_t *a1, uint64_t a2)
{
  std::istream::sentry::sentry();
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, &std::ctype<char>::id);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v16 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v17 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_18:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v17 = 0;
      v16 = *a1;
      *(a1 + *(*a1 - 24) + 24) = 0;
      if (v9)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v17 = 0;
      v16 = *a1;
      *(a1 + *(*a1 - 24) + 24) = 0;
      goto LABEL_28;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_18;
  }

  v17 = 2;
  v16 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (v9)
  {
    goto LABEL_28;
  }

LABEL_27:
  v17 |= 4u;
LABEL_28:
  std::ios_base::clear((a1 + *(v16 - 24)), *(a1 + *(v16 - 24) + 32) | v17);
  return a1;
}

void sub_100292D08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x100292CC8);
  }

  __cxa_rethrow();
}

uint64_t sub_100292DB8(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  std::ios::~ios();
  return a1;
}

uint64_t sub_100292ED8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  v3 = *(a1 + 48);
  v4 = v3 - v1;
  v5 = v3 - v1;
  if (v3 != v1)
  {
    if ((v5 & 3) == 0)
    {
      goto LABEL_10;
    }

    return 0;
  }

  v5 = strlen(v1);
  if (v5)
  {
    v6 = (v5 & 3) == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return 0;
  }

LABEL_10:
  v8 = &v1[v5];
  if (v1[v5 - 1] == 61)
  {
    v9 = *(v8 - 2);
    v8 -= 2;
    if (v9 != 61)
    {
      v8 = &v1[v5 - 1];
    }
  }

  if (v1 < v8)
  {
    v10 = v1;
    do
    {
      v11 = *v10;
      if (v11 > 0x7E)
      {
        return 0;
      }

      if (v11 != 65 && byte_1003E3C2A[*v10] == 0)
      {
        return 0;
      }
    }

    while (++v10 != v8);
  }

  if (v3 != v1)
  {
    v13 = *(a1 + 64);
    if ((v4 & 3) == 0 && v4 && v13)
    {
      v14 = *(a1 + 64);
      if (v4 >= 1)
      {
        v15 = *(a1 + 64);
        do
        {
          v16 = byte_1003E3C2A[*(v1 + 1)];
          v17 = byte_1003E3C2A[*(v1 + 2)];
          v18 = byte_1003E3C2A[*(v1 + 3)];
          *v15 = (4 * byte_1003E3C2A[*v1]) | (v16 >> 4) & 3;
          v15[1] = (16 * v16) | (v17 >> 2) & 0xF;
          v14 = v15 + 3;
          v15[2] = v18 | (v17 << 6);
          v1 += 4;
          v15 += 3;
        }

        while (v1 < v3);
      }

      *v14 = 0;
      *(a1 + 48) = *(a1 + 40);
      v19 = v14 - v13;
      if (v14 != v13)
      {
        if ((*a1 + v19) >= *(a1 + 8))
        {
          v20 = 0;
          v21 = 0;
          qmemcpy(sub_1002A80E0(&v20, 23), "dst_cur + len < dst_end", 23);
          sub_1002A8980(-215, &v20, "flush", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 7865);
        }

        memcpy(*a1, v13, v14 - v13);
        *a1 += v19;
        return 1;
      }
    }

    else
    {
      *(a1 + 48) = v1;
    }

    v20 = 0;
    v21 = 0;
    *sub_1002A80E0(&v20, 8) = 0x30203D21206E656CLL;
    sub_1002A8980(-215, &v20, "flush", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 7862);
  }

  return 1;
}

void sub_10029314C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  if ((*v9 + v10) < v9[1])
  {
    JUMPOUT(0x10029306CLL);
  }

  JUMPOUT(0x100293084);
}

void *sub_10029319C(void *a1)
{
  if (a1[6] != a1[5])
  {
    sub_100292ED8(a1);
  }

  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_1002931F8(uint64_t a1, char *__src, char *a3)
{
  if (__src < a3)
  {
    v5 = __src;
    do
    {
      v6 = *(a1 + 48);
      if (*(a1 + 56) - v6 >= a3 - v5)
      {
        v7 = a3 - v5;
      }

      else
      {
        v7 = *(a1 + 56) - v6;
      }

      memcpy(v6, v5, v7);
      v8 = *(a1 + 56);
      v9 = *(a1 + 48) + v7;
      *(a1 + 48) = v9;
      if (v9 >= v8 && (sub_100292ED8(a1) & 1) == 0)
      {
        v12[0] = 0;
        v12[1] = 0;
        v10 = sub_1002A80E0(v12, 7);
        *v10 = 1937075302;
        *(v10 + 3) = 690514035;
        sub_1002A8980(-215, v12, "read", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 7842);
      }

      v5 += v7;
    }

    while (v5 < a3);
  }

  return a1;
}

void sub_100293454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  if (*(v9 + 31) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

void sub_1002934B8(uint64_t *a1, char *__s)
{
  if (!__s)
  {
    __p = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&__p, 13), "Invalid 'dt'.", 13);
    sub_1002A8980(-5, &__p, "check_dt", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8359);
  }

  v3 = *(a1 + 31);
  if (v3 < 0)
  {
    v4 = (a1 + 1);
    if (a1[2])
    {
      goto LABEL_4;
    }

LABEL_10:
    v7 = v4;
    std::string::assign(v7, __s);
    sub_1002923BC(__s, &__p);
    v9 = v21;
    v10 = v21;
    if ((v21 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v21 & 0x80u) != 0)
    {
      v9 = v20;
    }

    if (v9 >= 1)
    {
      v12 = &p_p[v9];
      v13 = *a1;
      do
      {
        v14 = *(v13 + 64);
        if (*(v13 + 72) - v14 >= v12 - p_p)
        {
          v15 = v12 - p_p;
        }

        else
        {
          v15 = *(v13 + 72) - v14;
        }

        memcpy(v14, p_p, v15);
        v16 = *(v13 + 72);
        v17 = *(v13 + 64) + v15;
        *(v13 + 64) = v17;
        if (v17 >= v16)
        {
          sub_10029C17C(v13);
        }

        p_p += v15;
      }

      while (p_p < v12);
      v10 = v21;
    }

    if ((v10 & 0x80) != 0)
    {
      operator delete(__p);
    }

    return;
  }

  v4 = (a1 + 1);
  if (!*(a1 + 31))
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = strlen(__s);
  if ((v3 & 0x80000000) == 0)
  {
    if (v6 == v3 && !memcmp(v4, __s, v6))
    {
      return;
    }

LABEL_26:
    __p = 0;
    v20 = 0;
    v18 = sub_1002A80E0(&__p, 20);
    *(v18 + 16) = 778593140;
    *v18 = *"'dt' does not match.";
    sub_1002A8980(-5, &__p, "check_dt", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8370);
  }

  if (v6 != a1[2])
  {
    goto LABEL_26;
  }

  if (v6 == -1)
  {
    sub_100282420();
  }

  if (memcmp(*v4, __s, v6))
  {
    goto LABEL_26;
  }
}

void sub_100293AD4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v14 = 0;
  sub_10029C2DC(v9, a1, a2, a3);
  while (v9[0] < v9[2])
  {
    v16 = 0.0;
    (*(v12 + 2))(v9[0] + *(v12 + 1), &v16);
    v5 = v12;
    v6 = *v12;
    if (*v12 <= 2)
    {
      if (v6)
      {
        if (v6 == 1)
        {
          v7 = SLOBYTE(v16);
        }

        else
        {
          if (v6 != 2)
          {
            goto LABEL_25;
          }

          v7 = LOWORD(v16);
        }
      }

      else
      {
        v7 = LOBYTE(v16);
      }

      goto LABEL_23;
    }

    if (v6 <= 4)
    {
      if (v6 == 3)
      {
        v7 = SLOWORD(v16);
      }

      else
      {
        if (v6 != 4)
        {
          goto LABEL_25;
        }

        v7 = LODWORD(v16);
      }

LABEL_23:
      LODWORD(v15) = v7;
      goto LABEL_24;
    }

    if (v6 == 5)
    {
      v8 = *&v16;
    }

    else
    {
      if (v6 != 6)
      {
        goto LABEL_25;
      }

      v8 = v16;
    }

    v15 = v8;
LABEL_24:
    v6 = *v12;
LABEL_25:
    if (v6 <= 6)
    {
      __src = dword_1003E3D0C[v6];
    }

    v12 += 24;
    if (v5 + 24 == v11)
    {
      v12 = __p;
      v9[0] += v9[3];
    }

    sub_100233314(a4, &__src);
  }

  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_100293C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100293C50(void **a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1000;
  v3 = v1 - 4096;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_10000927C();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  sub_100294018(a1, &v10);
}

void sub_100293FC0(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_100294018(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      v11 = &v4[-*a1] >> 2;
      if (v4 == *a1)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_10000927C();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  a1[2] = (v4 + 8);
}

void sub_1002941A4(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_10000927C();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = (v5 - 8);
}

size_t sub_10029433C(uint64_t a1, const char *a2, int a3, size_t *a4, uint64_t a5)
{
  v9 = *(a1 + 120);
  v10 = *(a1 + 68);
  if (a2)
  {
    if (*a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = 0;
    }

    if (a3 != 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v11 = 0;
    if (a3 != 1)
    {
      goto LABEL_22;
    }
  }

  if ((*(a1 + 68) & 7u) < 5)
  {
    if (v11)
    {
      v10 = 38;
    }

    else
    {
      v10 = 37;
    }

    *(a1 + 12) = 0;
  }

  else if (((*(a1 + 68) & 7) == 6) != (v11 != 0))
  {
    v54 = 0;
    v55 = 0;
    qmemcpy(sub_1002A80E0(&v54, 85), "An attempt to add element without a key to a map, or add element with key to sequence", 85);
    sub_1002A8980(-5, &v54, "icvXMLWriteTag", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2892);
  }

  if ((v10 & 0x20) == 0)
  {
    v13 = *(a1 + 120);
    v12 = *(a1 + 128);
    v14 = *(a1 + 88);
    if (v13 > &v12[v14])
    {
      *v13 = 10;
      sub_10028614C(a1, *(a1 + 128));
      v12 = *(a1 + 128);
      LODWORD(v14) = *(a1 + 88);
    }

    v15 = *(a1 + 64);
    if (v14 == v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
      memset(v12, 32, v15);
      *(a1 + 88) = v15;
      v12 = *(a1 + 128);
    }

    v9 = &v12[v16];
    *(a1 + 120) = &v12[v16];
  }

LABEL_22:
  v52 = v10;
  if (v11)
  {
    if (*v11 == 95 && !v11[1])
    {
      v54 = 0;
      v55 = 0;
      qmemcpy(sub_1002A80E0(&v54, 33), "A single _ is a reserved tag name", 33);
      sub_1002A8980(-5, &v54, "icvXMLWriteTag", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2907);
    }
  }

  else
  {
    v11 = "_";
  }

  result = strlen(v11);
  v18 = result;
  *v9 = 60;
  v19 = v9 + 1;
  if (a3 == 2)
  {
    if (a4)
    {
      v54 = 0;
      v55 = 0;
      qmemcpy(sub_1002A80E0(&v54, 45), "Closing tag should not include any attributes", 45);
      sub_1002A8980(-5, &v54, "icvXMLWriteTag", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2914);
    }

    v19 = v9 + 2;
    v9[1] = 47;
  }

  v20 = *v11;
  if (v20 != 95 && (v20 & 0xFFFFFFDF) - 65 >= 0x1A)
  {
    v54 = 0;
    v55 = 0;
    qmemcpy(sub_1002A80E0(&v54, 35), "Key should start with a letter or _", 35);
    sub_1002A8980(-5, &v54, "icvXMLWriteTag", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2919);
  }

  v22 = result;
  v23 = *(a1 + 136);
  v53 = a5;
  if (&v19[result] >= v23)
  {
    v24 = *(a1 + 128);
    v25 = v19 - v24;
    v26 = (3 * (v23 - v24) + ((3 * (v23 - v24)) >> 63)) >> 1;
    v27 = v19 - v24 + result;
    if (v27 <= v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    result = sub_1001D90AC(v28 + 256);
    v29 = result;
    v30 = *(a1 + 128);
    *(a1 + 120) = result + *(a1 + 120) - v30;
    if (v25 >= 1)
    {
      result = memcpy(result, v30, v25 & 0x7FFFFFFF);
    }

    *(a1 + 128) = v29;
    *(a1 + 136) = v29 + v28;
    v19 = (v29 + v25);
  }

  if (v18 >= 1)
  {
    v31 = v18 & 0x7FFFFFFF;
    v32 = v19;
    do
    {
      v34 = *v11++;
      v33 = v34;
      if ((v34 - 58) <= 0xF5u && ((v33 & 0xDF) - 91) <= 0xE5u && v33 != 45 && v33 != 95)
      {
        v54 = 0;
        v55 = 0;
        qmemcpy(sub_1002A80E0(&v54, 74), "Key name may only contain alphanumeric characters [a-zA-Z0-9], '-' and '_'", 74);
        sub_1002A8980(-5, &v54, "icvXMLWriteTag", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2926);
      }

      *v32++ = v33;
      --v31;
    }

    while (v31);
  }

  v35 = &v19[v22];
  if (a4)
  {
LABEL_53:
    result = *a4;
    if (*a4)
    {
      v36 = (a4 + 1);
      do
      {
        v40 = strlen(result);
        v41 = strlen(*v36);
        v42 = v40 + v41 + 4;
        v43 = *(a1 + 136);
        if (&v35[v42] >= v43)
        {
          v44 = *(a1 + 128);
          v45 = v35 - v44;
          v46 = (3 * (v43 - v44) + ((3 * (v43 - v44)) >> 63)) >> 1;
          v47 = v42 + v35 - v44;
          if (v47 <= v46)
          {
            v48 = v46;
          }

          else
          {
            v48 = v47;
          }

          v49 = sub_1001D90AC(v48 + 256);
          v50 = v49;
          v51 = *(a1 + 128);
          *(a1 + 120) = &v49[*(a1 + 120) - v51];
          if (v45 >= 1)
          {
            memcpy(v49, v51, v45 & 0x7FFFFFFF);
          }

          *(a1 + 128) = v50;
          *(a1 + 136) = &v50[v48];
          v35 = &v50[v45];
        }

        *v35 = 32;
        v37 = v35 + 1;
        memcpy(v37, *(v36 - 1), v40);
        v38 = &v37[v40];
        *v38 = 8765;
        v38 += 2;
        memcpy(v38, *v36, v41);
        v39 = &v38[v41];
        *v39 = 34;
        v35 = v39 + 1;
        result = v36[1];
        v36 += 2;
      }

      while (result);
    }
  }

  while (v53)
  {
    a4 = *v53;
    v53 = *(v53 + 8);
    if (a4)
    {
      goto LABEL_53;
    }
  }

  *v35 = 62;
  *(a1 + 120) = v35 + 1;
  *(a1 + 68) = v52 & 0xFFFFFFDF;
  return result;
}

void sub_100294898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

char *sub_100294910(uint64_t a1, char *a2, int a3)
{
  v6 = 0;
  while (1)
  {
    do
    {
      while (1)
      {
        while (a3 == 1)
        {
          v11 = *a2;
          if (v11 <= 0x1F && v11 != 9)
          {
LABEL_43:
            a3 = 1;
            goto LABEL_45;
          }

          a2 += 3;
          while (v11 != 45 || *(a2 - 2) != 45 || *(a2 - 1) != 62)
          {
            v11 = *(a2 - 2);
            ++a2;
            if (v11 <= 0x1F && v11 != 9)
            {
              goto LABEL_43;
            }
          }

          a3 = 0;
          v11 = *a2;
          if (v11 <= 0x1F)
          {
            goto LABEL_45;
          }
        }

        if (a3 != 3)
        {
          break;
        }

        do
        {
          v7 = *a2;
          v8 = v7 == 62;
          if (v7 == 60)
          {
            v9 = v6 + 1;
          }

          else
          {
            v9 = v6;
          }

          v6 = v9 - v8;
          if (v9 - v8 < 0)
          {
            return a2;
          }

          ++a2;
        }

        while (v7 > 0x1F || v7 == 9);
        a3 = 3;
        v12 = *--a2;
        v11 = v12;
        if (v12 <= 0x1F)
        {
          goto LABEL_45;
        }
      }

      while (1)
      {
        v11 = *a2;
        if (v11 != 9 && v11 != 32)
        {
          break;
        }

        ++a2;
      }

      if (v11 != 60)
      {
        if (v11 > 0x1F)
        {
          return a2;
        }

        break;
      }

      if (a2[1] != 33 || a2[2] != 45 || a2[3] != 45)
      {
        return a2;
      }

      if (a3)
      {
        sprintf(v25, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Comments are not allowed here");
        sub_1002A9248(-212, "icvXMLSkipSpaces", v25, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2278);
      }

      a3 = 1;
      v13 = a2[4];
      a2 += 4;
      v11 = v13;
    }

    while (v13 > 0x1F);
LABEL_45:
    v16 = v11 > 0xD;
    v17 = (1 << v11) & 0x2401;
    if (v16 || v17 == 0)
    {
      sprintf(v25, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Invalid character in the stream");
      sub_1002A9248(-212, "icvXMLSkipSpaces", v25, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2290);
    }

    v19 = sub_1002862DC(a1, *(a1 + 128), (*(a1 + 136) - *(a1 + 128)));
    if (!v19)
    {
      break;
    }

    a2 = v19;
    v20 = v19[(strlen(v19) - 1)];
    if (v20 != 10 && v20 != 13)
    {
      if (*(a1 + 352))
      {
        if (*(a1 + 368) < *(a1 + 360))
        {
          goto LABEL_2;
        }
      }

      else
      {
        v22 = *(a1 + 104);
        if (v22)
        {
          if (!feof(v22))
          {
            goto LABEL_2;
          }
        }

        else
        {
          v23 = *(a1 + 112);
          if (!v23 || !gzeof(v23))
          {
LABEL_2:
            sprintf(v25, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Too long string or a last string w/o newline");
            sub_1002A9248(-212, "icvXMLSkipSpaces", v25, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2303);
          }
        }
      }
    }

    ++*(a1 + 148);
  }

  a2 = *(a1 + 128);
  *a2 = 0;
  *(a1 + 152) = 1;
  return a2;
}

char *sub_100294C4C(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, int *a5)
{
  if (!*__s)
  {
    sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Preliminary end of the stream");
    sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2681);
  }

  if (*__s != 60)
  {
    sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Tag should start with '<'");
    sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2684);
  }

  v7 = __s + 1;
  v6 = __s[1];
  if ((v6 - 48) >= 0xA && (v6 & 0xFFFFFFDF) - 65 >= 0x1A)
  {
    if (__s[1] > 0x3Eu)
    {
      if (v6 == 63)
      {
        v42 = 0;
        v10 = 0;
        v7 = __s + 2;
        v36 = 4;
        v9 = 1;
        goto LABEL_12;
      }

      if (v6 == 95)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v6 == 33)
      {
        v42 = 0;
        v9 = 0;
        v10 = 0;
        v7 = __s + 2;
        v11 = 5;
        goto LABEL_11;
      }

      if (v6 == 47)
      {
        v9 = 0;
        v10 = 0;
        v7 = __s + 2;
        v36 = 2;
        v42 = 1;
        goto LABEL_12;
      }
    }

    sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unknown tag type");
    sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2706);
  }

LABEL_10:
  v42 = 0;
  v9 = 0;
  v10 = 1;
  v11 = 1;
LABEL_11:
  v36 = v11;
LABEL_12:
  v12 = 0;
  v13 = 0;
  v40 = 0;
  v14 = 0;
  v41 = v10 ^ 1;
  while (1)
  {
    v15 = *v7;
    if (v15 != 95 && (v15 & 0xFFFFFFDF) - 65 >= 0x1A)
    {
      sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Name should start with a letter or underscore");
      sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2713);
    }

    for (i = 0; ; ++i)
    {
      v18 = v7[i];
      if ((v18 - 48) >= 0xAu && ((v18 & 0xDF) - 65) >= 0x1Au)
      {
        v20 = v7[i];
        if (v20 != 95 && v20 != 45)
        {
          break;
        }
      }
    }

    v21 = sub_10028356C(a1, v7, i, 1);
    v22 = v21;
    if (!v21)
    {
      *v43 = 0;
      v44 = 0;
      *sub_1002A80E0(v43, 8) = 0x656D616E72747461;
      sub_1002A8980(-215, v43, "icvXMLParseTag", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2720);
    }

    v7 += i;
    if (v14)
    {
      if (v42)
      {
        sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Closing tag should not contain any attributes");
        sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2728);
      }

      if (v12 && v13 <= 3)
      {
        v23 = *v12;
      }

      else
      {
        v24 = sub_100231C8C(*(a1 + 16), 0x58uLL);
        *(v24 + 72) = 0u;
        *(v24 + 56) = 0u;
        *(v24 + 40) = 0u;
        *(v24 + 24) = 0u;
        *(v24 + 8) = 0u;
        v23 = v24 + 16;
        *v24 = v24 + 16;
        v13 = 0;
        if (v12)
        {
          v12[1] = v24;
          v12 = v24;
        }

        else
        {
          v12 = v24;
          v40 = v24;
        }
      }

      *(v23 + 16 * v13) = *(v22 + 16);
      if (*v7 == 61)
      {
        goto LABEL_45;
      }

LABEL_43:
      v7 = sub_100294910(a1, v7, 2);
      if (*v7 != 61)
      {
        sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Attribute name should be followed by '='");
        sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2754);
      }

      goto LABEL_45;
    }

    v14 = v21;
    if (!v12)
    {
      goto LABEL_51;
    }

    if (*v7 != 61)
    {
      goto LABEL_43;
    }

LABEL_45:
    v27 = v7[1];
    v26 = v7 + 1;
    v25 = v27;
    if (v27 != 34 && v25 != 39)
    {
      v28 = *sub_100294910(a1, v26, 2);
      if (v28 != 34 && v28 != 39)
      {
        sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Attribute value should be put into single or double quotes");
        sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2762);
      }
    }

    v7 = sub_100295364(a1);
    *(*v12 + 8 * ((2 * v13++) | 1)) = v45;
LABEL_51:
    v29 = *v7;
    if (v29 == 62)
    {
      break;
    }

    v30 = sub_100294910(a1, v7, 2);
    v7 = v30;
    v31 = *v30;
    if (v31 == 62)
    {
      break;
    }

    v32 = v9 ^ 1;
    if (v31 != 63)
    {
      v32 = 1;
    }

    if ((v32 & 1) == 0)
    {
      if (v30[1] != 62)
      {
        sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Invalid closing tag for <?xml ...");
        sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2790);
      }

      result = v30 + 2;
      v35 = 4;
      goto LABEL_77;
    }

    if (v31 == 47)
    {
      v33 = v41;
      if (v30[1] != 62)
      {
        v33 = 1;
      }

      if ((v33 & 1) == 0)
      {
        result = v30 + 2;
        v35 = 3;
        goto LABEL_77;
      }
    }

    if (v29 > 0x20 || ((1 << v29) & 0x100003E01) == 0)
    {
      sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "There should be space between attributes");
      sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2802);
    }
  }

  if (v9)
  {
    sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Invalid closing tag for <?xml ...");
    sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2783);
  }

  result = v7 + 1;
  v35 = v36;
LABEL_77:
  *a3 = v14;
  *a5 = v35;
  *a4 = v40;
  return result;
}

void sub_100295334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100295364(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v66 = v7 & 7;
  v65 = v7;
  *v1 = 0u;
  *(v1 + 1) = 0u;
  v8 = 1;
  v67 = 1;
  v9 = *v3;
  __endptr = 0;
  if (v9 > 0x3C)
  {
    goto LABEL_7;
  }

  while (2)
  {
    while (2)
    {
      if (((1 << v9) & 0x100003E01) != 0)
      {
LABEL_6:
        v4 = sub_100294910(v6, v4, 0);
        LODWORD(v9) = *v4;
        v8 = 1;
        break;
      }

      if (v9 != 60)
      {
        break;
      }

      v10 = v4[1];
      if (v10 == 33)
      {
        if (v4[2] == 45)
        {
          goto LABEL_6;
        }

        v11 = 0;
        v10 = 33;
      }

      else
      {
        v11 = 0;
      }

LABEL_12:
      v74[0] = 0;
      v69 = 0;
      v70 = 0;
      v68 = 0;
      if (v11 || v10 == 47)
      {
        goto LABEL_177;
      }

      v13 = sub_100294C4C(v6, v4, v74, &v69, &v68);
      if (v68 == 3)
      {
        sprintf(__s, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "Empty tags are not supported");
        sub_1002A9248(-212, "icvXMLParseValue", __s, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2452);
      }

      if (v68 == 5)
      {
        sprintf(__s, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "Directive tags are not allowed here");
        sub_1002A9248(-212, "icvXMLParseValue", __s, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2450);
      }

      v37 = v69;
      if (!v69)
      {
LABEL_148:
        i = 0;
        v42 = 0;
        v43 = v74[0];
        if (*(v74[0] + 8) != 1)
        {
          goto LABEL_118;
        }

LABEL_149:
        v49 = **(v43 + 16) == 95;
        v50 = *v2 & 7;
        if (v50 > 4)
        {
          goto LABEL_119;
        }

        goto LABEL_150;
      }

      while (1)
      {
        i = *v37;
        if (!*v37)
        {
          v42 = 0;
          v43 = v74[0];
          if (*(v74[0] + 8) == 1)
          {
            goto LABEL_149;
          }

          goto LABEL_118;
        }

        if (*i)
        {
          break;
        }

LABEL_84:
        v37 = v37[1];
        if (!v37)
        {
          goto LABEL_148;
        }
      }

      if (strcmp("type_id", *i))
      {
        v39 = 0;
        while (1)
        {
          v40 = *(i + 16 + 8 * v39);
          if (!v40)
          {
            goto LABEL_84;
          }

          v39 += 2;
          if (!strcmp("type_id", v40))
          {
            v41 = *(i + 8 * (v39 & 0xFFFFFFFE | 1));
            if (!v41)
            {
              goto LABEL_148;
            }

            goto LABEL_92;
          }
        }
      }

      v41 = *(i + 8);
      if (!v41)
      {
        goto LABEL_148;
      }

LABEL_92:
      if (!strcmp(v41, "str"))
      {
        i = 0;
        v42 = 0;
        v43 = v74[0];
        if (*(v74[0] + 8) == 1)
        {
          goto LABEL_149;
        }
      }

      else if (!strcmp(v41, "map"))
      {
        i = 0;
        v42 = 0;
        v43 = v74[0];
        if (*(v74[0] + 8) == 1)
        {
          goto LABEL_149;
        }
      }

      else if (!strcmp(v41, "seq"))
      {
        i = 0;
        v42 = 0;
        v43 = v74[0];
        if (*(v74[0] + 8) == 1)
        {
          goto LABEL_149;
        }
      }

      else if (!strcmp(v41, "binary"))
      {
        i = 0;
        v42 = 1;
        v43 = v74[0];
        if (*(v74[0] + 8) == 1)
        {
          goto LABEL_149;
        }
      }

      else
      {
        for (i = qword_1004D5468; i; i = *(i + 16))
        {
          if (!strcmp(*(i + 24), v41))
          {
            break;
          }
        }

        v42 = 0;
        v43 = v74[0];
        if (*(v74[0] + 8) == 1)
        {
          goto LABEL_149;
        }
      }

LABEL_118:
      v49 = 0;
      v50 = *v2 & 7;
      if (v50 <= 4)
      {
LABEL_150:
        if (v49)
        {
          v54 = 5;
        }

        else
        {
          v54 = 6;
        }

        sub_100296108(v6, v54, v2);
        goto LABEL_154;
      }

LABEL_119:
      if (v49 != (v50 == 5))
      {
        v51 = "Sequence element should not have name (use <_></_>)";
        if (v49)
        {
          v51 = "Map element should have a name";
        }

        sprintf(__s, "%s(%d): %s", *(v6 + 96), *(v6 + 148), v51);
        sub_1002A9248(-212, "icvXMLParseValue", __s, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2488);
      }

LABEL_154:
      if (v49)
      {
        v55 = sub_100233314(*(v2 + 2), 0);
      }

      else
      {
        v55 = sub_100283704(v6, v2, v43, 1);
      }

      v56 = v55;
      if (!v55)
      {
        *__s = 0;
        v73 = 0;
        *sub_1002A80E0(__s, 4) = 1835363429;
        sub_1002A8980(-215, __s, "icvXMLParseValue", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2494);
      }

      if (v42)
      {
        v57 = sub_100296268(v6, v13, v55);
        v58 = sub_100294910(v6, v57, 0);
      }

      else
      {
        v58 = sub_100295364(v6);
      }

      if (!v49)
      {
        *v56 |= 0x40u;
      }

      v67 = v67 && (*v56 & 7u) < 5;
      v56[1] = i;
      v59 = sub_100294C4C(v6, v58, &v70, &v69, &v68);
      if (v68 != 2 || v70 != v43)
      {
        sprintf(__s, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "Mismatched closing tag");
        sub_1002A9248(-212, "icvXMLParseValue", __s, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2509);
      }

      v8 = 1;
      v4 = v59;
      v9 = *v59;
      __endptr = 0;
      if (v9 <= 0x3C)
      {
        continue;
      }

      break;
    }

LABEL_7:
    v10 = v4[1];
    v11 = v9 == 0;
    if (v9 == 60 || v9 == 0)
    {
      goto LABEL_12;
    }

    if ((v8 & 1) == 0)
    {
      sprintf(__s, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "There should be space between literals");
      sub_1002A9248(-212, "icvXMLParseValue", __s, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2515);
    }

    v14 = v2;
    if (*v2)
    {
      if ((*v2 & 7u) <= 4)
      {
        v15 = sub_100231FEC(0, 0x60uLL, 0x20uLL, *(v6 + 16));
        if ((*v2 & 7) != 0)
        {
          v16 = v15;
          sub_100233314(v15, v2);
          v15 = v16;
        }

        *(v2 + 2) = v15;
        *v2 = 5;
        sub_1002321B8(v15, 8);
      }

      v14 = sub_100233314(*(v2 + 2), 0);
      *(v14 + 1) = 0;
    }

    if (v66 != 3)
    {
      if ((v9 - 48) < 0xA)
      {
        goto LABEL_106;
      }

      if (v9 != 43)
      {
        if (v9 == 46)
        {
          if ((v10 - 48) < 0xA || (v10 - 97) < 0x1A || (v10 - 65) <= 0x19)
          {
LABEL_106:
            if (v9 == 45 || v9 == 43)
            {
              v45 = v4 + 1;
            }

            else
            {
              v45 = v4;
            }

            do
            {
              __endptr = v45;
              v47 = *v45++;
              v46 = v47;
            }

            while ((v47 - 48) < 0xA);
            if (v46 == 101 || v46 == 46)
            {
              v48 = sub_100296BA0(v6, v4, &__endptr);
              *v14 = 2;
              *(v14 + 2) = v48;
              v19 = __endptr;
              if (__endptr != v4)
              {
                goto LABEL_135;
              }
            }

            else
            {
              v53 = strtol(v4, &__endptr, 0);
              *v14 = 1;
              *(v14 + 4) = v53;
              v19 = __endptr;
              if (__endptr != v4)
              {
                goto LABEL_135;
              }
            }

            sprintf(__s, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "Invalid numeric value (inconsistent explicit type specification?)");
            sub_1002A9248(-212, "icvXMLParseValue", __s, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2552);
          }

          goto LABEL_26;
        }

        if (v9 != 45)
        {
          goto LABEL_26;
        }
      }

      if (v10 == 46 || (v10 - 48) < 0xA)
      {
        goto LABEL_106;
      }
    }

LABEL_26:
    bzero(__s, 0x1010uLL);
    v17 = 0;
    *v14 = 3;
    v18 = &v4[-(v9 != 34)];
    while (2)
    {
      v19 = (v18 + 1);
      v20 = v18[1];
      if (v20 - 48 < 0xA || (v20 & 0xFFFFFFDF) - 65 < 0x1A)
      {
LABEL_41:
        ++v18;
        goto LABEL_42;
      }

      if (v20 != 34)
      {
        if (v20 < 0x20 || v20 == 60)
        {
          if (v9 == 34)
          {
            sprintf(v74, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "Closing  is expected");
            sub_1002A9248(-212, "icvXMLParseValue", v74, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2582);
          }

          goto LABEL_134;
        }

        if (v9 != 34 && v20 == 32)
        {
          goto LABEL_134;
        }

        if (v20 != 38)
        {
          if (v20 == 62 || v20 == 39)
          {
            sprintf(v74, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "Literal ' or > are not allowed. Use &apos; or &gt;");
            sub_1002A9248(-212, "icvXMLParseValue", v74, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2587);
          }

          goto LABEL_41;
        }

        v23 = v18 + 2;
        if (v18[2] == 35)
        {
          v25 = v18[3];
          v24 = (v18 + 3);
          v26 = v25 == 120;
          if (v25 == 120)
          {
            v27 = 16;
          }

          else
          {
            v27 = 10;
          }

          if (v26)
          {
            v28 = v24 + 1;
          }

          else
          {
            v28 = v24;
          }

          v29 = strtol(v28, &__endptr, v27);
          if ((v29 & 0xFFFFFF00) != 0 || (v18 = __endptr) == 0 || *__endptr != 59)
          {
            sprintf(v74, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "Invalid numeric value in the string");
            sub_1002A9248(-212, "icvXMLParseValue", v74, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2603);
          }

          LOBYTE(v20) = v29;
          goto LABEL_42;
        }

        v30 = (v18 + 3);
        do
        {
          __endptr = v30;
          v31 = *v30++;
          v20 = v31;
          v32 = (v31 & 0xFFFFFFDF) - 65;
        }

        while (v31 - 48 < 0xA || v32 < 0x1A);
        if (v20 != 59)
        {
          sprintf(v74, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "Invalid character in the symbol entity name");
          sub_1002A9248(-212, "icvXMLParseValue", v74, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2612);
        }

        v18 = (v30 - 1);
        v34 = v30 - 1 - v23;
        switch(v34)
        {
          case 4:
            if (*v23 == 1936683105)
            {
              LOBYTE(v20) = 39;
            }

            else
            {
              if (*v23 != 1953461617)
              {
                goto LABEL_77;
              }

              LOBYTE(v20) = 34;
            }

            break;
          case 3:
            if (*v23 != 28001 || v23[2] != 112)
            {
              goto LABEL_77;
            }

            LOBYTE(v20) = 38;
            break;
          case 2:
            if (*v23 == 29804)
            {
              LOBYTE(v20) = 60;
            }

            else
            {
              if (*v23 == 29799)
              {
                LOBYTE(v20) = 62;
                break;
              }

LABEL_77:
              v36 = v34 + 2;
              memcpy(&__s[v17], v19, v34 + 2);
              v17 += v36;
            }

            break;
          default:
            goto LABEL_77;
        }

LABEL_42:
        v22 = v17;
        __s[v17++] = v20;
        if (v22 >= 4095)
        {
          sprintf(v74, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "Too long string literal");
          sub_1002A9248(-212, "icvXMLParseValue", v74, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2635);
        }

        continue;
      }

      break;
    }

    if (v9 != 34)
    {
      sprintf(v74, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "Literal  is not allowed within a string. Use &quot;");
      sub_1002A9248(-212, "icvXMLParseValue", v74, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2575);
    }

    v19 = (v18 + 2);
LABEL_134:
    *(v14 + 2) = sub_100231F7C(*(v6 + 16), __s, v17);
    *(v14 + 3) = v52;
LABEL_135:
    if (v66 - 1 >= 4)
    {
      v8 = 0;
      v4 = v19;
      v9 = *v19;
      __endptr = 0;
      if (v9 <= 0x3C)
      {
        continue;
      }

      goto LABEL_7;
    }

    break;
  }

  v4 = v19;
LABEL_177:
  v60 = *v2;
  v61 = *v2 & 7;
  if (v61)
  {
    v62 = v66;
    if (v66 >= 5 && v61 != v66 && v61 < 5)
    {
      goto LABEL_181;
    }

LABEL_186:
    if (v62)
    {
      goto LABEL_187;
    }
  }

  else
  {
    v62 = v66;
    if (v66 < 5)
    {
      goto LABEL_186;
    }

LABEL_181:
    if (v62 == 6)
    {
      v63 = 6;
    }

    else
    {
      v63 = 5;
    }

    sub_100296108(v6, v63, v2);
    v60 = *v2;
    v61 = *v2 & 7;
    v62 = v66;
LABEL_187:
    if (v62 != v61)
    {
      sprintf(__s, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "The actual type is different from the specified type");
      sub_1002A9248(-212, "icvXMLParseValue", __s, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2657);
    }
  }

  if (v61 > 4 && v67)
  {
    **(v2 + 2) |= 0x100u;
  }

  *v2 = v60 | v65 & 0x10;
  return v4;
}

void sub_1002960E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100296108(uint64_t a1, int a2, void *a3)
{
  if ((a2 & 7) == 6)
  {
    if (*a3)
    {
      sprintf(v10, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Sequence element should not have name (use <_></_>)");
      sub_1002A9248(-212, "icvFSCreateCollection", v10, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 558);
    }

    v5 = *(a1 + 16);
    v6 = sub_100236364(0, 120, 48, v5);
    v6[27] = 16;
    v7 = sub_100231C8C(v5, 0x80uLL);
    *(v6 + 14) = v7;
    v7[6] = 0u;
    v7[7] = 0u;
    v7[4] = 0u;
    v7[5] = 0u;
    v7[2] = 0u;
    v7[3] = 0u;
    *v7 = 0u;
    v7[1] = 0u;
  }

  else
  {
    v8 = sub_100231FEC(0, 0x60uLL, 0x20uLL, *(a1 + 16));
    v6 = v8;
    if ((*a3 & 7) != 0)
    {
      sub_100233314(v8, a3);
    }
  }

  a3[2] = v6;
  *a3 = a2;
  return sub_1002321B8(v6, 8);
}

char *sub_100296268(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = sub_100294910(a1, a2, 2);
  if (*(a1 + 152))
  {
    return v4;
  }

  v5 = *v4;
  if (v5 == 60)
  {
    return v4;
  }

  if (v5 < 0x20)
  {
    v8 = 0;
    if (!*v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = v4[++v8];
    }

    while (v9 > 0x1F);
    if (!v9)
    {
LABEL_11:
      sprintf(v13, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unexpected end of line");
      sub_1002A9248(-212, "icvXMLGetMultilineStringContent", v13, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2328);
    }
  }

  v6 = &v4[v8];
  if (v8 >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (v8 <= 0x1F)
    {
      sprintf(v13, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unrecognized Base64 header");
      sub_1002A9248(-212, "icvXMLParseBase64", v13, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2347);
    }

    operator new();
  }

  return v6;
}

void sub_100296AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_100296BA0(uint64_t a1, char *a2, char **a3)
{
  v4 = a2;
  v6 = strtod(a2, a3);
  v7 = *a3;
  if (**a3 != 46)
  {
LABEL_4:
    if (v7 == v4)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  *v7 = 44;
  v8 = strtod(v4, a3);
  *v7 = 46;
  if (*a3 > v7)
  {
    v7 = *a3;
    v6 = v8;
    goto LABEL_4;
  }

  *a3 = v7;
  if (v7 == v4)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((*v7 & 0xDFu) - 65 > 0x19)
  {
    return v6;
  }

LABEL_8:
  v9 = *v4;
  if (v9 == 45 || v9 == 43)
  {
    v11 = *++v4;
    v10 = v11;
    if (v9 == 45)
    {
      v6 = -INFINITY;
    }

    else
    {
      v6 = INFINITY;
    }

    if (v10 != 46)
    {
LABEL_14:
      sprintf(v13, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Bad format of floating-point constant");
      sub_1002A9248(-212, "icvProcessSpecialDouble", v13, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1059);
    }
  }

  else
  {
    v6 = INFINITY;
    if (v9 != 46)
    {
      goto LABEL_14;
    }
  }

  if (__toupper(v4[1]) != 73 || __toupper(v4[2]) != 78 || __toupper(v4[3]) != 70)
  {
    if (__toupper(v4[1]) != 78 || __toupper(v4[2]) != 65 || (v6 = NAN, __toupper(v4[3]) != 78))
    {
      sprintf(v13, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Bad format of floating-point constant");
      sub_1002A9248(-212, "icvProcessSpecialDouble", v13, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1068);
    }
  }

  *a3 = v4 + 4;
  return v6;
}

std::string *sub_100296DE4(std::string *this, std::string *a2, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v5 = a3 - a2;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v9 = this->__r_.__value_.__r.__words[2];
    v6 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v8 = this->__r_.__value_.__r.__words[0];
    v7 = HIBYTE(v9);
    if (this->__r_.__value_.__r.__words[0] > a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return this;
    }

    v6 = 22;
    LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
    v8 = this;
    if (this > a2)
    {
LABEL_12:
      if (v6 - size < v5)
      {
        v13 = a3;
        v14 = a2;
        std::string::__grow_by(this, v6, size - v6 + v5, size, size, 0, 0);
        a3 = v13;
        a2 = v14;
        this->__r_.__value_.__l.__size_ = size;
        v10 = this;
        if ((*(&this->__r_.__value_.__s + 23) & 0x80) == 0)
        {
LABEL_14:
          v11 = v10 + size;
          if (a3 == a2)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      else
      {
        v10 = this;
        if ((v7 & 0x80) == 0)
        {
          goto LABEL_14;
        }
      }

      v11 = (this->__r_.__value_.__r.__words[0] + size);
      if (a3 == a2)
      {
LABEL_16:
        v11[v5] = 0;
        v12 = v5 + size;
        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
          this->__r_.__value_.__l.__size_ = v12;
        }

        else
        {
          *(&this->__r_.__value_.__s + 23) = v12 & 0x7F;
        }

        return this;
      }

LABEL_15:
      memmove(v11, a2, v5);
      goto LABEL_16;
    }
  }

  if ((&v8->__r_.__value_.__l.__data_ + size + 1) <= a2)
  {
    goto LABEL_12;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100241528();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  v19 = a3 - a2;
  if (a3 != a2)
  {
    memcpy(__dst, a2, v5);
  }

  *(__dst + v5) = 0;
  if ((v19 & 0x80u) == 0)
  {
    v15 = __dst;
  }

  else
  {
    v15 = __dst[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v16 = v19;
  }

  else
  {
    v16 = __dst[1];
  }

  std::string::append(this, v15, v16);
  if (v19 < 0)
  {
    operator delete(__dst[0]);
  }

  return this;
}

void sub_100296FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100296FFC(uint64_t a1, char *a2, int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = *a2;
        if (v6 != 35)
        {
          break;
        }

        if (&a2[-*(a1 + 128)] > 0x7FFFFFFF)
        {
          return a2;
        }

        *a2 = 0;
      }

      if (v6 != 32)
      {
        break;
      }

      ++a2;
    }

    if (v6 >= 0x20)
    {
      break;
    }

    if (v6 > 0xD || ((1 << v6) & 0x2401) == 0)
    {
      if (v6 == 9)
      {
        v5 = "Tabs are prohibited in YAML!";
      }

      else
      {
        v5 = "Invalid character";
      }

      sprintf(v15, "%s(%d): %s", *(a1 + 96), *(a1 + 148), v5);
      sub_1002A9248(-212, "icvYMLSkipSpaces", v15, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1322);
    }

    v8 = sub_1002862DC(a1, *(a1 + 128), (*(a1 + 136) - *(a1 + 128)));
    if (!v8)
    {
      a2 = *(a1 + 128);
      *a2 = 3026478;
      *(a1 + 152) = 1;
      return a2;
    }

    a2 = v8;
    v9 = v8[(strlen(v8) - 1)];
    if (v9 != 10 && v9 != 13)
    {
      if (*(a1 + 352))
      {
        if (*(a1 + 368) < *(a1 + 360))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v11 = *(a1 + 104);
        if (v11)
        {
          if (!feof(v11))
          {
            goto LABEL_29;
          }
        }

        else
        {
          v12 = *(a1 + 112);
          if (!v12 || !gzeof(v12))
          {
LABEL_29:
            sprintf(v15, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Too long string or a last string w/o newline");
            sub_1002A9248(-212, "icvYMLSkipSpaces", v15, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1316);
          }
        }
      }
    }

    ++*(a1 + 148);
  }

  if (&a2[-*(a1 + 128)] < a3)
  {
    sprintf(v15, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Incorrect indentation");
    sub_1002A9248(-212, "icvYMLSkipSpaces", v15, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1296);
  }

  return a2;
}

std::string *sub_100297288(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  bzero(__s, 0x1400uLL);
  __endptr = 0;
  v11 = *v8;
  v12 = v8[1];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  if (v11 != 33)
  {
    v13 = 0;
    goto LABEL_79;
  }

  if (v12 == 94 || v12 == 33)
  {
    v13 = 16;
    ++v8;
LABEL_24:
    v15 = v8;
    goto LABEL_25;
  }

  v13 = 0;
  if (v12 != 60)
  {
    goto LABEL_24;
  }

  v14 = 0;
  v15 = (v8 + 1);
  do
  {
    v16 = v8[v14++ + 2];
  }

  while (v16 >= 0x21 && v16 != 62);
  if (v16 == 62 && v14 >= 0x14)
  {
    v18 = *v15 == 0x6D61793A6761743CLL && *(v8 + 9) == 0x30322C67726F2E6CLL;
    if (v18 && *(v8 + 12) == 0x3A323030322C6772)
    {
      v8[v14 + 1] = 32;
      v15 = (v8 + 19);
      v13 = 16;
    }
  }

LABEL_25:
  v20 = 0;
  v21 = v15 + 1;
  do
  {
    __endptr = &v21[v20];
    v12 = v21[v20++];
  }

  while (v12 > 0x20);
  v22 = (v15 + 1);
  if (v20 == 1)
  {
    sprintf(&v95, "%s(%d): %s", *(v10 + 96), *(v10 + 148), "Empty type name");
    sub_1002A9248(-212, "icvYMLParseValue", &v95, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1503);
  }

  v15[v20] = 0;
  if ((v13 & 0x10) == 0 && v20 == 4)
  {
    if (*v22 == 29811 && v15[3] == 114)
    {
      v23 = 0;
      v13 = 3;
    }

    else if (*v22 == 28265 && v15[3] == 116)
    {
      v23 = 0;
      v13 = 1;
    }

    else
    {
      v23 = 0;
      if (*v22 == 25971 && v15[3] == 113)
      {
        v13 = 5;
      }

      else if (!(*(v15 + 1) ^ 0x616D | v15[3] ^ 0x70))
      {
        v13 = 6;
      }
    }

    goto LABEL_69;
  }

  if ((v13 & 0x10) == 0 && v20 == 6)
  {
    v23 = 0;
    if (!(*v22 ^ 0x616F6C66 | v15[5] ^ 0x74))
    {
      v13 = 2;
    }

    goto LABEL_69;
  }

  if ((v13 & 0x10) != 0 && v20 == 7)
  {
    if (*v22 == 1634625890 && *(v15 + 5) == 31090)
    {
      v28 = __endptr;
      *__endptr = v12;
      v29 = v28 + 1;
      do
      {
        v30 = *v29++;
      }

      while (v30 == 32);
      __endptr = v29;
      v12 = *v29;
      *v29 = 0;
      v13 = 5;
      v23 = 1;
      goto LABEL_69;
    }
  }

  else if ((v13 & 0x10) != 0)
  {
    v31 = qword_1004D5468;
    if (qword_1004D5468)
    {
      while (strcmp(*(v31 + 24), v22))
      {
        v31 = *(v31 + 16);
        if (!v31)
        {
          goto LABEL_65;
        }
      }

      v23 = 0;
      v6[1] = v31;
    }

    else
    {
LABEL_65:
      v23 = 0;
      v6[1] = 0;
      *v6 &= ~0x10u;
    }

    goto LABEL_69;
  }

  v23 = 0;
LABEL_69:
  v32 = __endptr;
  *__endptr = v12;
  v33 = sub_100296FFC(v10, v32, v2);
  v8 = v33;
  v11 = *v33;
  if ((v13 & 0x10) == 0)
  {
    switch(v13)
    {
      case 1:
        goto LABEL_99;
      case 2:
        goto LABEL_89;
      case 3:
        if (v11 != 39 && v11 != 34)
        {
          __endptr = v33;
          v58 = v33 - 1;
          v59 = *v33;
          if (v59 > 0x1F)
          {
            if ((v4 & 8) != 0)
            {
LABEL_204:
              v72 = v8 + 1;
              while (1)
              {
                v60 = v72 - 1;
                if (v59 == 44 || v59 == 93 || v59 == 125)
                {
                  break;
                }

                __endptr = v72;
                v73 = *v72++;
                v59 = v73;
                v58 = v60;
                if (v73 <= 0x1F)
                {
                  goto LABEL_219;
                }
              }

LABEL_220:
              if (v58 + 1 == v8)
              {
                goto LABEL_221;
              }

LABEL_224:
              if ((v4 & 8) != 0 || v59 != 58)
              {
                *v6 = 3;
                v87 = v60 - v8 + 1;
                v88 = v60 - 1;
                do
                {
                  --v87;
                  if (v88 <= v8)
                  {
                    break;
                  }

                  v89 = *v88--;
                }

                while (v89 == 32);
                v6[2] = sub_100231F7C(*(v10 + 16), v8, v87);
                v6[3] = v90;
                return __endptr;
              }

              v51 = 6;
              v50 = 1;
              goto LABEL_227;
            }

            goto LABEL_213;
          }

LABEL_223:
          v60 = v8;
          if (v58 + 1 == v8)
          {
LABEL_221:
            sub_100283B60(*(v10 + 96), *(v10 + 148), "icvYMLParseValue", "Invalid character", 1748);
          }

          goto LABEL_224;
        }

        if ((v23 & 1) == 0)
        {
          v13 = 3;
          goto LABEL_79;
        }

        return sub_100298200(v10, v33, v33 - *(v10 + 128), v6);
    }
  }

  if (v23)
  {
    return sub_100298200(v10, v33, v33 - *(v10 + 128), v6);
  }

LABEL_79:
  if ((v11 - 48) >= 0xA)
  {
    if (v11 > 44)
    {
      if (v11 > 90)
      {
        if (v11 == 91 || v11 == 123)
        {
          v41 = v11 == 91;
          if ((v4 & 8) == 0)
          {
            ++v2;
          }

          if (v11 == 123)
          {
            v42 = 14;
          }

          else
          {
            v42 = 13;
          }

          v43 = v42 & 7;
          sub_100296108(v10, v43 | (16 * (v6[1] != 0)), v6);
          if (v41)
          {
            v44 = 93;
          }

          else
          {
            v44 = 125;
          }

          v91 = v44;
          v45 = v8 + 1;
          for (i = 1; ; i = i && (*v92 & 7u) < 5)
          {
            v92 = 0;
            v47 = sub_100296FFC(v10, v45, v2);
            v34 = v47;
            v48 = *v47;
            if ((v48 | 0x20) == 0x7D)
            {
              break;
            }

            if (*(v6[2] + 40))
            {
              if (v48 != 44)
              {
                sprintf(&v95, "%s(%d): %s", *(v10 + 96), *(v10 + 148), "Missing , between the elements");
                sub_1002A9248(-212, "icvYMLParseValue", &v95, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1700);
              }

              v34 = sub_100296FFC(v10, v47 + 1, v2);
            }

            if (v43 == 6)
            {
              v49 = sub_100298B20(v10, v34, v6, &v92);
              sub_100296FFC(v10, v49, v2);
              if (!v92)
              {
                goto LABEL_130;
              }
            }

            else
            {
              if (*v34 == 93)
              {
                goto LABEL_154;
              }

              v92 = sub_100233314(v6[2], 0);
              if (!v92)
              {
LABEL_130:
                v96 = 0;
                v95 = 0;
                *sub_1002A80E0(&v95, 4) = 1835363429;
                sub_1002A8980(-215, &v95, "icvYMLParseValue", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1715);
              }
            }

            v45 = sub_100297288(v10);
            if (v43 == 6)
            {
              *v92 |= 0x40u;
            }
          }

          if (v91 != v48)
          {
            sprintf(&v95, "%s(%d): %s", *(v10 + 96), *(v10 + 148), "The wrong closing bracket");
            sub_1002A9248(-212, "icvYMLParseValue", &v95, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1692);
          }

          v34 = v47 + 1;
LABEL_154:
          v57 = !i;
          goto LABEL_248;
        }

        goto LABEL_135;
      }

      if (v11 != 45)
      {
        if (v11 == 46)
        {
          if (v12 - 48 < 0xA || v12 - 97 < 0x1A || v12 - 65 <= 0x19)
          {
            goto LABEL_80;
          }

LABEL_155:
          if ((v4 & 8) != 0)
          {
            __endptr = v8;
            v58 = v8 - 1;
            v59 = *v8;
            v60 = v8;
            if (v59 <= 0x1F)
            {
              goto LABEL_220;
            }

            goto LABEL_204;
          }

          if (v11 == 62 || v11 == 124)
          {
            sub_100283B60(*(v10 + 96), *(v10 + 148), "icvYMLParseValue", "Multi-line text literals are not supported", 1736);
          }

          if (v11 == 63)
          {
            sub_100283B60(*(v10 + 96), *(v10 + 148), "icvYMLParseValue", "Complex keys are not supported", 1734);
          }

          if (v13 != 3)
          {
            v72 = v8;
            do
            {
              __endptr = v72;
              v75 = *v72++;
              v59 = v75;
            }

            while (v75 >= 0x20 && v59 != 58);
            goto LABEL_219;
          }

          __endptr = v8;
          v59 = *v8;
          if (v59 > 0x1F)
          {
LABEL_213:
            v72 = v8 + 1;
            do
            {
              __endptr = v72;
              v74 = *v72++;
              v59 = v74;
            }

            while (v74 > 0x1F);
LABEL_219:
            v58 = v72 - 2;
            v60 = v72 - 1;
            goto LABEL_220;
          }

          v58 = v8 - 1;
          goto LABEL_223;
        }

LABEL_135:
        if ((v4 & 8) == 0 && v11 == 45)
        {
          v50 = 0;
          v51 = 5;
LABEL_227:
          sub_100296108(v10, v51 | (16 * (v6[1] != 0)), v6);
          v76 = v8 - *(v10 + 128);
          LOBYTE(v77) = 1;
          v34 = v8;
          while (1)
          {
            v92 = 0;
            if (v50)
            {
              v79 = sub_100298B20(v10, v34, v6, &v92);
              if (!v92)
              {
                goto LABEL_238;
              }
            }

            else
            {
              v80 = *v34;
              v79 = v34 + 1;
              if (v80 != 45)
              {
                sprintf(&v95, "%s(%d): %s", *(v10 + 96), *(v10 + 148), "Block sequence elements must be preceded with '-'");
                sub_1002A9248(-212, "icvYMLParseValue", &v95, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1785);
              }

              v92 = sub_100233314(v6[2], 0);
              if (!v92)
              {
LABEL_238:
                v96 = 0;
                v95 = 0;
                *sub_1002A80E0(&v95, 4) = 1835363429;
                sub_1002A8980(-215, &v95, "icvYMLParseValue", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1789);
              }
            }

            sub_100296FFC(v10, v79, v76 + 1);
            v81 = v92;
            v82 = sub_100297288(v10);
            if (v50)
            {
              *v81 |= 0x40u;
            }

            v77 = v77 && (*v81 & 7u) < 5;
            v83 = sub_100296FFC(v10, v82, 0);
            v34 = v83;
            v84 = &v83[-*(v10 + 128)];
            if (v84 != v76)
            {
              break;
            }

            if (*v83 == 11822 && v83[2] == 46)
            {
              goto LABEL_247;
            }
          }

          if (v84 >= v76)
          {
            sprintf(&v95, "%s(%d): %s", *(v10 + 96), *(v10 + 148), "Incorrect indentation");
            sub_1002A9248(-212, "icvYMLParseValue", &v95, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1802);
          }

LABEL_247:
          v57 = !v77;
LABEL_248:
          if (v57)
          {
            v85 = 0;
          }

          else
          {
            v85 = 256;
          }

          *v6[2] |= v85;
          return v34;
        }

        goto LABEL_155;
      }

LABEL_105:
      if (v12 == 46 || v12 - 48 < 0xA)
      {
        goto LABEL_80;
      }

      goto LABEL_135;
    }

    if (v11 != 34 && v11 != 39)
    {
      if (v11 != 43)
      {
        goto LABEL_135;
      }

      goto LABEL_105;
    }

    *v6 = 3;
    if (v11 == 39)
    {
      v52 = 0;
      v34 = v8;
      while (1)
      {
        v54 = *++v34;
        v53 = v54;
        v55 = (v54 & 0xFFFFFFDF) - 65;
        v56 = v54 - 48 >= 0xA && v55 >= 0x1A;
        if (v56 && (v53 == 39 || v53 < 0x20))
        {
          if (v53 != 39)
          {
            sprintf(&v95, "%s(%d): %s", *(v10 + 96), *(v10 + 148), "Invalid character");
            sub_1002A9248(-212, "icvYMLParseValue", &v95, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1622);
          }

          LOBYTE(v53) = v8[2];
          v34 = v8 + 2;
          if (v53 != 39)
          {
            break;
          }
        }

        __s[v52++] = v53;
        v8 = v34;
        if (v52 >= 4096)
        {
          goto LABEL_196;
        }
      }

LABEL_197:
      v6[2] = sub_100231F7C(*(v10 + 16), __s, v52);
      v6[3] = v71;
      return v34;
    }

    v52 = 0;
    v61 = v8;
    while (1)
    {
      v63 = *++v61;
      v62 = v63;
      v64 = (v63 & 0xFFFFFFDF) - 65;
      if (v63 - 48 < 0xA || v64 < 0x1A)
      {
        goto LABEL_165;
      }

      if (v62 < 0x20)
      {
        sprintf(&v95, "%s(%d): %s", *(v10 + 96), *(v10 + 148), "Invalid character");
        sub_1002A9248(-212, "icvYMLParseValue", &v95, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1665);
      }

      if (v62 != 92)
      {
        break;
      }

      v61 = v8 + 2;
      v62 = v8[2];
      if (v62 > 0x6D)
      {
        switch(v62)
        {
          case 'n':
            __s[v52] = 10;
            goto LABEL_166;
          case 'r':
            LOBYTE(v62) = 13;
            goto LABEL_165;
          case 't':
            LOBYTE(v62) = 9;
            goto LABEL_165;
        }
      }

      else
      {
        switch(v62)
        {
          case '""':
            goto LABEL_165;
          case '\'':
            __s[v52] = 39;
            goto LABEL_166;
          case '\\':
            goto LABEL_165;
        }
      }

      if (v62 == 120)
      {
        v66 = 8;
LABEL_187:
        v67 = v8[5];
        v8[5] = 0;
        if (v62 == 120)
        {
          v68 = v8 + 3;
        }

        else
        {
          v68 = v8 + 2;
        }

        v69 = strtol(v68, &__endptr, v66);
        v8[5] = v67;
        if (__endptr == v68)
        {
          v70 = 120;
        }

        else
        {
          v70 = v69;
        }

        if (__endptr != v68)
        {
          v61 = __endptr;
        }

        __s[v52++] = v70;
        goto LABEL_160;
      }

      if ((v62 & 0xF8) == 0x30)
      {
        v66 = 16;
        goto LABEL_187;
      }

LABEL_160:
      v8 = v61;
      if (v52 >= 4096)
      {
LABEL_196:
        sprintf(&v95, "%s(%d): %s", *(v10 + 96), *(v10 + 148), "Too long string literal");
        sub_1002A9248(-212, "icvYMLParseValue", &v95, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1669);
      }
    }

    if (v62 == 34)
    {
      v34 = v8 + 2;
      goto LABEL_197;
    }

LABEL_165:
    __s[v52] = v62;
LABEL_166:
    ++v52;
    goto LABEL_160;
  }

LABEL_80:
  if (v11 == 45 || v11 == 43)
  {
    v36 = v8 + 1;
  }

  else
  {
    v36 = v8;
  }

  do
  {
    __endptr = v36;
    v38 = *v36++;
    v37 = v38;
  }

  while ((v38 - 48) < 0xA);
  if (v37 == 101 || v37 == 46)
  {
LABEL_89:
    v39 = sub_100296BA0(v10, v8, &__endptr);
    *v6 = 2;
    *(v6 + 2) = v39;
    v34 = __endptr;
    if (!__endptr)
    {
LABEL_101:
      sprintf(&v95, "%s(%d): %s", *(v10 + 96), *(v10 + 148), "Invalid numeric value (inconsistent explicit type specification?)");
      sub_1002A9248(-212, "icvYMLParseValue", &v95, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1601);
    }

    goto LABEL_100;
  }

LABEL_99:
  v40 = strtol(v8, &__endptr, 0);
  *v6 = 1;
  *(v6 + 4) = v40;
  v34 = __endptr;
  if (!__endptr)
  {
    goto LABEL_101;
  }

LABEL_100:
  if (v34 == v8)
  {
    goto LABEL_101;
  }

  return v34;
}

void sub_1002981B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, char a10)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100298200(uint64_t a1, char *a2, int a3, uint64_t *a4)
{
  v6 = sub_100296FFC(a1, a2, 0);
  if (*(a1 + 152) || &v6[-*(a1 + 128)] != a3)
  {
    return v6;
  }

  v7 = -1;
  do
  {
    v8 = v6[++v7];
  }

  while (v8 > 0x1F);
  if (!v8)
  {
    sprintf(v14, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unexpected end of line");
    sub_1002A9248(-212, "icvYMLGetMultilineStringContent", v14, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1345);
  }

  v9 = &v6[v7];
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    if (v7 <= 0x1F)
    {
      sprintf(v14, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unrecognized Base64 header");
      sub_1002A9248(-212, "icvYMLParseBase64", v14, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1365);
    }

    operator new();
  }

  return v9;
}

void sub_100298A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100298B20(uint64_t a1, char *__s, uint64_t a3, uint64_t *a4)
{
  if (*__s == 45)
  {
    sprintf(v14, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Key may not start with '-'");
    sub_1002A9248(-212, "icvYMLParseKey", v14, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1432);
  }

  v8 = 0;
  do
  {
    v9 = __s[v8++];
  }

  while (v9 >= 0x20 && v9 != 58);
  if (v9 != 58)
  {
    sprintf(v14, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Missing ':'");
    sub_1002A9248(-212, "icvYMLParseKey", v14, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1438);
  }

  v10 = v8;
  do
  {
    v11 = __s[v10-- - 2];
  }

  while (v11 == 32);
  if (!v10)
  {
    sprintf(v14, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "An empty key");
    sub_1002A9248(-212, "icvYMLParseKey", v14, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1446);
  }

  v12 = sub_10028356C(a1, __s, v10, 1);
  *a4 = sub_100283704(a1, a3, v12, 1);
  return &__s[v8];
}

char *sub_100298CEC(uint64_t a1, char *a2)
{
  result = a2;
  while (1)
  {
    v5 = *result;
    if (v5 > 0x2F)
    {
      break;
    }

    if (((1 << v5) & 0x2401) != 0)
    {
      result = sub_1002862DC(a1, *(a1 + 128), (*(a1 + 136) - *(a1 + 128)));
      v4 = result == 0;
      goto LABEL_3;
    }

    if (((1 << v5) & 0x100000200) != 0)
    {
      goto LABEL_7;
    }

    if (v5 != 47)
    {
      break;
    }

    v7 = *++result;
    v6 = v7;
    if (v7)
    {
      if (v6 == 42)
      {
        goto LABEL_22;
      }
    }

    else
    {
      result = sub_1002862DC(a1, *(a1 + 128), (*(a1 + 136) - *(a1 + 128)));
      if (!result)
      {
        goto LABEL_33;
      }

      v6 = *result;
      if (v6 == 42)
      {
LABEL_22:
        ++result;
        do
        {
          while (1)
          {
            while (*result != 42)
            {
              if (*result)
              {
                goto LABEL_22;
              }

              result = sub_1002862DC(a1, *(a1 + 128), (*(a1 + 136) - *(a1 + 128)));
              if (!result)
              {
                goto LABEL_33;
              }
            }

            v9 = *++result;
            v8 = v9;
            if (!v9)
            {
              break;
            }

            if (v8 == 47)
            {
              goto LABEL_7;
            }
          }

          result = sub_1002862DC(a1, *(a1 + 128), (*(a1 + 136) - *(a1 + 128)));
          if (!result)
          {
            goto LABEL_33;
          }
        }

        while (*result != 47);
LABEL_7:
        v4 = 0;
        ++result;
        goto LABEL_3;
      }
    }

    if (v6 != 47)
    {
      sprintf(v10, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Not supported escape character");
      sub_1002A9248(-212, "icvJSONSkipSpaces", v10, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3335);
    }

    while (!v6)
    {
      result = sub_1002862DC(a1, *(a1 + 128), (*(a1 + 136) - *(a1 + 128)));
      if (!result)
      {
        goto LABEL_33;
      }

LABEL_15:
      v6 = *result;
    }

    if (v6 != 10 && v6 != 13)
    {
      ++result;
      goto LABEL_15;
    }

    v4 = 0;
LABEL_3:
    if (v4)
    {
LABEL_33:
      result = *(a1 + 128);
      *result = 0;
      *(a1 + 152) = 1;
      return result;
    }
  }

  if (v5 <= 0x1F)
  {
    sprintf(v10, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Invalid character in the stream");
    sub_1002A9248(-212, "icvJSONSkipSpaces", v10, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3353);
  }

  return result;
}

char *sub_100298F80(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 != 123)
  {
    sprintf(v22, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'{' - left-brace of map is missing");
    sub_1002A9248(-212, "icvJSONParseMap", v22, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3736);
  }

  *a3 = 0u;
  *(a3 + 16) = 0u;
  sub_100296108(a1, 6, a3);
  v6 = sub_100298CEC(a1, a2 + 1);
  if (!v6)
  {
LABEL_35:
    sub_1003C85B4(a1, v22);
  }

  v7 = v6;
  while (!*(a1 + 152))
  {
    if (*v7 == 34)
    {
      v21 = 0;
      v8 = sub_1002995E4(a1, v7, a3, &v21);
      if (!v8)
      {
        goto LABEL_35;
      }

      v7 = v8;
      if (*(a1 + 152))
      {
        break;
      }

      v9 = sub_100298CEC(a1, v8);
      if (!v9)
      {
        goto LABEL_35;
      }

      v7 = v9;
      if (*(a1 + 152))
      {
        break;
      }

      v10 = v21;
      if (v21)
      {
        v11 = *v9;
        if (v11 == 123)
        {
          v12 = sub_100298F80(a1, v9, v21);
        }

        else if (v11 == 91)
        {
          v12 = sub_100299338(a1, v9, v21);
        }

        else
        {
          v12 = sub_100299878(a1, v9, v21);
        }

        *v10 |= 0x40u;
        v16 = sub_100298CEC(a1, v12);
        if (!v16)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v13 = sub_100299878(a1, v9, v19);
        if ((v19[0] & 7) != 3)
        {
          sprintf(v22, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "type_id should be of type string");
          sub_1002A9248(-212, "icvJSONParseMap", v22, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3772);
        }

        v14 = __s2;
        if (__s2 && (v15 = qword_1004D5468) != 0)
        {
          while (strcmp(*(v15 + 24), v14))
          {
            v15 = *(v15 + 16);
            if (!v15)
            {
              goto LABEL_22;
            }
          }

          *(a3 + 8) = v15;
          *a3 |= 0x10u;
          v16 = sub_100298CEC(a1, v13);
          if (!v16)
          {
            goto LABEL_35;
          }
        }

        else
        {
LABEL_22:
          *(a3 + 8) = 0;
          v16 = sub_100298CEC(a1, v13);
          if (!v16)
          {
            goto LABEL_35;
          }
        }
      }
    }

    else
    {
      v16 = sub_100298CEC(a1, v7);
      if (!v16)
      {
        goto LABEL_35;
      }
    }

    v7 = v16;
    if (*(a1 + 152))
    {
      break;
    }

    v17 = *v16;
    if (v17 != 44)
    {
      if (v17 != 125)
      {
        sprintf(v22, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unexpected character");
        sub_1002A9248(-212, "icvJSONParseMap", v22, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3796);
      }

      return v7 + 1;
    }

    v7 = sub_100298CEC(a1, v16 + 1);
    if (!v7)
    {
      goto LABEL_35;
    }
  }

  if (*v7 != 125)
  {
    sprintf(v22, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'}' - right-brace of map is missing");
    sub_1002A9248(-212, "icvJSONParseMap", v22, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3803);
  }

  return v7 + 1;
}

char *sub_100299338(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  if (*a2 != 91)
  {
    sprintf(v15, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'[' - left-brace of seq is missing");
    sub_1002A9248(-212, "icvJSONParseSeq", v15, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3682);
  }

  v5 = a2 + 1;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  v6 = sub_100231FEC(0, 0x60uLL, 0x20uLL, *(a1 + 16));
  if ((*a3 & 7) != 0)
  {
    v7 = v6;
    sub_100233314(v6, a3);
    v6 = v7;
  }

  a3[2] = v6;
  *a3 = 5;
  sub_1002321B8(v6, 8);
  v8 = sub_100298CEC(a1, v5);
  if (!v8)
  {
LABEL_21:
    sub_1003C8618(a1, v15);
  }

  while (!*(a1 + 152))
  {
    if (*v8 != 93)
    {
      v9 = sub_100233314(a3[2], 0);
      v10 = *v8;
      if (v10 == 123)
      {
        v11 = sub_100298F80(a1, v8, v9);
      }

      else if (v10 == 91)
      {
        v11 = sub_100299338(a1, v8, v9);
      }

      else
      {
        v11 = sub_100299878(a1, v8, v9);
      }

      v8 = v11;
    }

    v12 = sub_100298CEC(a1, v8);
    v8 = v12;
    if (!v12)
    {
      goto LABEL_21;
    }

    if (*(a1 + 152))
    {
      break;
    }

    v13 = *v12;
    if (v13 != 44)
    {
      if (v13 != 93)
      {
        sprintf(v15, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unexpected character");
        sub_1002A9248(-212, "icvJSONParseSeq", v15, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3716);
      }

      return v8 + 1;
    }

    v8 = sub_100298CEC(a1, v12 + 1);
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  if (*v8 != 93)
  {
    sprintf(v15, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "']' - right-brace of seq is missing");
    sub_1002A9248(-212, "icvJSONParseSeq", v15, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3723);
  }

  return v8 + 1;
}

char *sub_1002995E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*a2 != 34)
  {
    sprintf(v18, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Key must start with ''");
    sub_1002A9248(-212, "icvJSONParseKey", v18, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3379);
  }

  v8 = (a2 + 1);
  v9 = -1;
  do
  {
    v11 = *v8++;
    v10 = v11;
    ++v9;
  }

  while (v11 >= 0x20 && v10 != 34);
  if (v10 != 34)
  {
    sprintf(v18, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Key must end with ''");
    sub_1002A9248(-212, "icvJSONParseKey", v18, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3388);
  }

  result = sub_100298CEC(a1, v8);
  if (result)
  {
    if (*(a1 + 152))
    {
      return 0;
    }

    else
    {
      v13 = result;
      v14 = (v8 - 2);
      if (*result != 58)
      {
        sprintf(v18, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Missing ':' between key and value");
        sub_1002A9248(-212, "icvJSONParseKey", v18, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3397);
      }

      if (v14 <= a2)
      {
        sprintf(v18, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Key is empty");
        sub_1002A9248(-212, "icvJSONParseKey", v18, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3401);
      }

      if (v9 == 7 && (*(a2 + 1) == 1701869940 ? (v15 = *(a2 + 4) == 1684627301) : (v15 = 0), v15))
      {
        v17 = 0;
      }

      else
      {
        v16 = sub_10028356C(a1, (a2 + 1), v9, 1);
        v17 = sub_100283704(a1, a3, v16, 1);
      }

      *a4 = v17;
      return v13 + 1;
    }
  }

  return result;
}

char *sub_100299878(uint64_t a1, char *a2, uint64_t *a3)
{
  v5 = sub_100298CEC(a1, a2);
  v6 = v5;
  __endptr = v5;
  if (!v5 || *(a1 + 152))
  {
    sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unexpected End-Of-File");
    sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3421);
  }

  *a3 = 0u;
  *(a3 + 1) = 0u;
  v7 = *v5;
  if (v7 != 34)
  {
    v17 = v5;
    if ((v7 - 48) >= 0xA)
    {
      if (v7 != 43 && v7 != 45)
      {
        if (v7 != 46)
        {
          if ((v7 & 0xFFFFFFDF) - 65 < 0x1A)
          {
            __endptr = v5 + 1;
            if ((v5[1] & 0xDFu) - 65 > 0x19 || (__endptr = v5 + 2, (v5[2] & 0xDFu) - 65 > 0x19) || (__endptr = v5 + 3, (v5[3] & 0xDFu) - 65 > 0x19))
            {
              v29 = 0;
              v18 = 0;
            }

            else
            {
              __endptr = v5 + 4;
              if ((v5[4] & 0xDFu) - 65 > 0x19)
              {
                v29 = 1;
                v18 = 1;
              }

              else
              {
                __endptr = v5 + 5;
                if ((v5[5] & 0xDFu) - 65 > 0x19 || (__endptr = v5 + 6, (v5[6] & 0xDFu) - 65 > 0x19))
                {
                  v18 = 0;
                }

                else
                {
                  v18 = 0;
                  __endptr = v5 + 7;
                }

                v29 = 1;
              }
            }

            if (v29)
            {
              if (*v5 == 1819047278)
              {
                sub_100283B60(*(a1 + 96), *(a1 + 148), "icvJSONParseValue", "Value 'null' is not supported by this parser", 3652);
              }

              if (*v5 == 1702195828)
              {
                *(a3 + 4) = 1;
                *a3 = 1;
                return __endptr;
              }

              if ((v18 & 1) == 0 && *v5 == 1936482662 && v5[4] == 101)
              {
                *(a3 + 4) = 0;
                *a3 = 1;
                return __endptr;
              }
            }
          }

          sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unrecognized value");
          sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3666);
        }

        goto LABEL_98;
      }

      v17 = v5 + 1;
      __endptr = v5 + 1;
      v7 = v5[1];
    }

    if ((v7 - 48) <= 9)
    {
      v25 = v17 + 1;
      do
      {
        __endptr = v25;
        v26 = *v25++;
        v7 = v26;
      }

      while ((v26 - 48) < 0xA);
    }

    if (v7 != 101 && v7 != 46)
    {
      *(a3 + 4) = strtol(v5, &__endptr, 0);
      *a3 = 1;
      if (v6 < __endptr)
      {
        return __endptr;
      }

LABEL_101:
      sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Invalid numeric value (inconsistent explicit type specification?)");
      sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3641);
    }

LABEL_98:
    *(a3 + 2) = sub_100296BA0(a1, v5, &__endptr);
    *a3 = 2;
    if (v6 < __endptr)
    {
      return __endptr;
    }

    goto LABEL_101;
  }

  v8 = 0;
  v9 = (v5 + 1);
  while (1)
  {
    v10 = v9->__r_.__value_.__s.__data_[v8];
    if ((v10 - 48) >= 0xA && (v10 & 0xFFFFFFDF) - 65 >= 0x1A)
    {
      break;
    }

    if (v8 > 9)
    {
      goto LABEL_19;
    }

LABEL_7:
    ++v8;
  }

  if (v10 == 36 && v8 < 0xA)
  {
    goto LABEL_7;
  }

  if (v8 < 8)
  {
    goto LABEL_20;
  }

LABEL_19:
  if (v9->__r_.__value_.__r.__words[0] != 0x2434366573616224)
  {
LABEL_20:
    memset(&v33, 0, sizeof(v33));
    std::string::reserve(&v33, 0x20000uLL);
    for (__endptr = (v6 + 1); ; __endptr = v9)
    {
      while (1)
      {
        v13 = v9;
        v14 = v9->__r_.__value_.__s.__data_[0];
        if (v14 > 0xC)
        {
          goto LABEL_24;
        }

LABEL_22:
        if (v14 == 10)
        {
          goto LABEL_23;
        }

        if (v14)
        {
          break;
        }

        sub_100296DE4(&v33, v9, v13);
        v9 = sub_1002862DC(a1, *(a1 + 128), (*(a1 + 136) - *(a1 + 128)));
        __endptr = v9;
        if (!v9)
        {
          sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'' - right-quote of string is missing");
          sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3582);
        }
      }

      do
      {
        v13 = (v13 + 1);
        __endptr = v13;
        v14 = v13->__r_.__value_.__s.__data_[0];
        if (v14 <= 0xC)
        {
          goto LABEL_22;
        }

LABEL_24:
        if (v14 == 13)
        {
LABEL_23:
          sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'' - right-quote of string is missing");
          sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3597);
        }

        if (v14 == 34)
        {
          sub_100296DE4(&v33, v9, v13);
          if (*__endptr != 34)
          {
            sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'' - right-quote of string is missing");
            sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3609);
          }

          ++__endptr;
          if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &v33;
          }

          else
          {
            v19 = v33.__r_.__value_.__r.__words[0];
          }

          if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v20 = v33.__r_.__value_.__r.__words[1];
          }

          a3[2] = sub_100231F7C(*(a1 + 16), v19, v20);
          a3[3] = v21;
          *a3 = 3;
          goto LABEL_76;
        }
      }

      while (v14 != 92);
      sub_100296DE4(&v33, v9, v13);
      v15 = __endptr;
      v16 = __endptr[1];
      if (v16 <= 0x65)
      {
        if (__endptr[1] > 0x5Bu)
        {
          if (v16 != 92)
          {
            if (v16 != 98)
            {
              goto LABEL_49;
            }

            LOBYTE(v16) = 8;
          }
        }

        else if (v16 != 34 && v16 != 39)
        {
          goto LABEL_49;
        }
      }

      else if (__endptr[1] <= 0x71u)
      {
        if (v16 == 102)
        {
          LOBYTE(v16) = 12;
        }

        else
        {
          if (v16 != 110)
          {
            goto LABEL_49;
          }

          LOBYTE(v16) = 10;
        }
      }

      else
      {
        switch(v16)
        {
          case 'r':
            LOBYTE(v16) = 13;
            break;
          case 't':
            LOBYTE(v16) = 9;
            break;
          case 'u':
            sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'\\uXXXX' currently not supported");
            sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3568);
          default:
LABEL_49:
            sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Invalid escape character");
            sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3569);
        }
      }

      std::string::append(&v33, 1uLL, v16);
      v9 = (v15 + 2);
    }
  }

  v22 = (v5 + 9);
  __endptr = v5 + 9;
  memset(&v33, 0, sizeof(v33));
  std::string::reserve(&v33, 0x20000uLL);
  while (1)
  {
    v23 = v22;
    v24 = v22->__r_.__value_.__s.__data_[0];
    if (v24 > 0xC)
    {
      break;
    }

    while (1)
    {
      if (v24 == 10)
      {
        goto LABEL_81;
      }

      if (!v24)
      {
        break;
      }

LABEL_86:
      v23 = (v23 + 1);
      __endptr = v23;
      v24 = v23->__r_.__value_.__s.__data_[0];
      if (v24 > 0xC)
      {
        goto LABEL_80;
      }
    }

    sub_100296DE4(&v33, v22, v23);
    v22 = sub_1002862DC(a1, *(a1 + 128), (*(a1 + 136) - *(a1 + 128)));
    __endptr = v22;
    if (!v22)
    {
      sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'' - right-quote of string is missing");
      sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3451);
    }
  }

LABEL_80:
  if (v24 == 13)
  {
LABEL_81:
    sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'' - right-quote of string is missing");
    sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3466);
  }

  if (v24 != 34)
  {
    goto LABEL_86;
  }

  sub_100296DE4(&v33, v22, v23);
  if (*__endptr != 34)
  {
    sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'' - right-quote of string is missing");
    sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3478);
  }

  ++__endptr;
  size = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v33.__r_.__value_.__l.__size_;
    if (v33.__r_.__value_.__l.__size_ > 0x1F)
    {
      goto LABEL_108;
    }
  }

  else if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) > 0x1F)
  {
LABEL_108:
    operator new();
  }

  if (size)
  {
    sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unrecognized Base64 header");
    sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3540);
  }

  v31 = sub_100231FEC(0, 0x60uLL, 0x20uLL, *(a1 + 16));
  if ((*a3 & 7) != 0)
  {
    v32 = v31;
    sub_100233314(v31, a3);
    v31 = v32;
  }

  a3[2] = v31;
  *a3 = 13;
  sub_1002321B8(v31, 8);
LABEL_76:
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  return __endptr;
}

void sub_10029A810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10029A8E0(const char *a1)
{
  if (sub_10028A808(a1, &v4) != 1 || v4 >= 5)
  {
    v3[0] = 0;
    v3[1] = 0;
    qmemcpy(sub_1002A80E0(v3, 33), "Too complex format for the matrix", 33);
    sub_1002A8980(-2, v3, "icvDecodeSimpleFormat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4785);
  }

  return (v5 & 7 | (8 * v4)) - 8;
}

void sub_10029A9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10029A9D4(uint64_t a1, const char *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[0] = a4;
  v14[1] = a5;
  sub_100288FB8(a1, a2, 6, "opencv-sequence");
  if ((a6 & 0x80000000) == 0)
  {
    sub_1002899A0(a1, "level", a6);
  }

  v9 = sub_10029AC28(a3, "dt", v14, 0, v15);
  __s[0] = 0;
  v10 = *a3;
  if ((*a3 & 0x4000) != 0)
  {
    *&__s[strlen(__s)] = 0x6465736F6C6320;
    if ((v10 & 0x8000) == 0)
    {
LABEL_5:
      if ((v10 & 0x3000) != 0x1000)
      {
        goto LABEL_6;
      }

LABEL_10:
      strcat(__s, " curve");
      if ((v10 & 0xFFF) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  else if ((v10 & 0x8000) == 0)
  {
    goto LABEL_5;
  }

  strcat(__s, " hole");
  if ((v10 & 0x3000) == 0x1000)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v10 & 0xFFF) != 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (a3[11] != 1)
  {
    strcat(__s, " untyped");
  }

LABEL_13:
  if (__s[0])
  {
    v11 = &__s[1];
  }

  else
  {
    v11 = __s;
  }

  sub_100289AEC(a1, "flags", v11, 1);
  sub_1002899A0(a1, "count", a3[10]);
  sub_100289AEC(a1, "dt", v9, 0);
  sub_10029AFA0(a1, a3, v14, 96);
  sub_100288FB8(a1, "data", 13, 0);
  for (i = *(a3 + 11); i; i = *(i + 8))
  {
    sub_100289C48(a1, *(i + 24), *(i + 20), v9);
    if (i == **(a3 + 11))
    {
      break;
    }
  }

  sub_10028984C(a1);
  return sub_10028984C(a1);
}

char *sub_10029AC28(unsigned int *a1, char *__s1, uint64_t a3, int a4, char *a5)
{
  if (!a3)
  {
    goto LABEL_18;
  }

  v8 = a3;
  v10 = 1;
  while (1)
  {
    v11 = *v8;
    if (!*v8)
    {
      goto LABEL_18;
    }

    if (*v11)
    {
      break;
    }

LABEL_3:
    v8 = *(v8 + 8);
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (strcmp(__s1, *v11))
  {
    v12 = 0;
    do
    {
      v13 = v11[v12 + 2];
      if (!v13)
      {
        goto LABEL_3;
      }

      v12 += 2;
    }

    while (strcmp(__s1, v13));
    v10 = v12 & 0xFFFFFFFE | 1;
  }

  v14 = v11[v10];
  if (v14)
  {
    v15 = sub_10028A808(v11[v10], &v24);
    v16 = a4;
    if (v15 >= 1)
    {
      v17 = 0;
      v16 = a4;
      do
      {
        v18 = (((*(&v24 + v17 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v24 + v17 + 1) & 7))) & 3);
        v16 = ((v16 + v18 - 1) & -v18) + v18 * *(&v24 + v17);
        v17 += 2;
      }

      while (v17 < (2 * v15));
    }

    if (a4)
    {
      if (v16 == a1[11])
      {
        return v14;
      }

LABEL_26:
      v24 = 0;
      v25 = 0;
      qmemcpy(sub_1002A80E0(&v24, 71), "The size of element calculated from dt and the elem_size do not match", 71);
      sub_1002A8980(-209, &v24, "icvGetFormat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5819);
    }

    v22 = (((HIDWORD(v24) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (BYTE4(v24) & 7))) & 3);
    if (((v16 + v22 - 1) & -v22) != a1[11])
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_18:
    v19 = *a1;
    v20 = a1[11];
    if ((*a1 & 0xFFF) != 0 || v20 == 1)
    {
      v21 = ((v19 >> 3) & 0x1FF) + 1;
      if (v21 << ((0xFA50u >> (2 * (v19 & 7))) & 3) != v20)
      {
        v24 = 0;
        v25 = 0;
        qmemcpy(sub_1002A80E0(&v24, 68), "Size of sequence element (elem_size) is inconsistent with seq->flags", 68);
        sub_1002A8980(-209, &v24, "icvGetFormat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5825);
      }

      sprintf(a5, "%d%c", v21, aUcwsifdr[v19 & 7]);
      if (a5[2])
      {
        return a5;
      }

      else
      {
        return &a5[*a5 == 49];
      }
    }

    else if (v20 <= a4)
    {
      return 0;
    }

    else
    {
      if (((v20 - a4) & 3) != 0)
      {
        sprintf(a5, "%uu");
      }

      else
      {
        sprintf(a5, "%ui");
      }

      return a5;
    }
  }

  return v14;
}

void sub_10029AF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10029AFA0(uint64_t result, unsigned int *a2, uint64_t a3, int a4)
{
  v6 = result;
  if (a3)
  {
    v7 = a3;
    v8 = 1;
    while (1)
    {
      v9 = *v7;
      if (!*v7)
      {
        goto LABEL_18;
      }

      if (*v9)
      {
        break;
      }

LABEL_3:
      v7 = *(v7 + 8);
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    result = strcmp("header_dt", *v9);
    if (result)
    {
      v10 = 0;
      do
      {
        v11 = v9[v10 + 2];
        if (!v11)
        {
          goto LABEL_3;
        }

        result = strcmp("header_dt", v11);
        v10 += 2;
      }

      while (result);
      v8 = v10 & 0xFFFFFFFE | 1;
    }

    v12 = v9[v8];
    if (v12)
    {
      v13 = sub_10028A808(v9[v8], v26);
      v14 = a4;
      if (v13 >= 1)
      {
        v15 = 0;
        v14 = a4;
        do
        {
          v16 = (((HIDWORD(v26[v15 / 2]) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (HIDWORD(v26[v15 / 2]) & 7))) & 3);
          v14 = ((v14 + v16 - 1) & -v16) + v16 * LODWORD(v26[v15 / 2]);
          v15 += 2;
        }

        while (v15 < (2 * v13));
      }

      if (a4)
      {
        if (v14 <= a2[1])
        {
          goto LABEL_41;
        }
      }

      else
      {
        v22 = (((HIDWORD(v26[0]) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (BYTE4(v26[0]) & 7))) & 3);
        if (((v14 + v22 - 1) & -v22) <= a2[1])
        {
LABEL_41:
          sub_100289AEC(v6, "header_dt", v12, 0);
          sub_100288FB8(v6, "header_user_data", 13, 0);
          sub_100289C48(v6, (a2 + 24), 1u, v12);
          return sub_10028984C(v6);
        }
      }

      v26[0] = 0;
      v26[1] = 0;
      qmemcpy(sub_1002A80E0(v26, 74), "The size of header calculated from header_dt is greater than header_size", 74);
      sub_1002A8980(-209, v26, "icvWriteHeaderData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5755);
    }
  }

LABEL_18:
  v17 = a2[1];
  v18 = v17 - a4;
  if (v17 <= a4)
  {
    return result;
  }

  v19 = *a2;
  if (HIWORD(*a2) != 17049)
  {
    goto LABEL_37;
  }

  v20 = v17 == 128 && (*a2 & 0xFFE) == 12;
  if (v20 && a2[11] == 8)
  {
    sub_100288FB8(v6, "rect", 14, 0);
    sub_1002899A0(v6, "x", a2[24]);
    sub_1002899A0(v6, "y", a2[25]);
    sub_1002899A0(v6, "width", a2[26]);
    sub_1002899A0(v6, "height", a2[27]);
    sub_10028984C(v6);
    v21 = a2[28];

    return sub_1002899A0(v6, "color", v21);
  }

  if ((v19 & 0x42993000) != 0x42991000 || (v19 & 0xFFF) != 0 || a2[11] != 1)
  {
LABEL_37:
    if ((v18 & 3) != 0)
    {
      v24 = (v17 - a4);
      v23 = "%uu";
    }

    else
    {
      v24 = v18 >> 2;
      v23 = "%ui";
    }

    v12 = v25;
    sprintf(v25, v23, v24);
    goto LABEL_41;
  }

  sub_100288FB8(v6, "origin", 14, 0);
  sub_1002899A0(v6, "x", a2[24]);
  sub_1002899A0(v6, "y", a2[25]);

  return sub_10028984C(v6);
}

void sub_10029B3D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10029B408(int **a1, int **a2, unsigned int *a3)
{
  v3 = *a3;
  if (v3 < 1)
  {
    return 0;
  }

  v4 = *a1;
  v5 = *a2;
  while (1)
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v5++;
    result = (v6 - v8);
    if (v6 != v8)
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

void sub_10029B43C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  operator new();
}

void sub_10029B6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  v13 = *v11;
  if (*v11)
  {
    *(v9 + 40) = v13;
    operator delete(v13);
  }

  v14 = *v10;
  if (*v10)
  {
    *(v9 + 16) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10029B70C(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  if (!a2)
  {
    v15 = 0;
    v16 = 0;
    v7 = sub_1002A80E0(&v15, 3);
    *(v7 + 2) = 99;
    *v7 = 29299;
    sub_1002A8980(-215, &v15, "RawDataToBinaryConvertor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8036);
  }

  v8 = *(a4 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (!v8)
  {
    v15 = 0;
    v16 = 0;
    v9 = sub_1002A80E0(&v15, 11);
    *(v9 + 7) = 690518388;
    *v9 = *"!dt.empty()";
    sub_1002A8980(-215, &v15, "RawDataToBinaryConvertor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8037);
  }

  if (a3 <= 0)
  {
    v15 = 0;
    v16 = 0;
    v10 = sub_1002A80E0(&v15, 7);
    *(v10 + 3) = 807419424;
    *v10 = 544105836;
    sub_1002A8980(-215, &v15, "RawDataToBinaryConvertor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8038);
  }

  sub_10029B914(a1, a4);
  v11 = *a1;
  a1[1] = *a1;
  a1[2] = v11;
  if (*(a4 + 23) >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = *a4;
  }

  v13 = sub_10028C47C(v12);
  a1[2] = *a1 + v13 * a3;
  a1[3] = v13;
  return a1;
}

void sub_10029B8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 40) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10029B914(void *a1, uint64_t a2)
{
  v32 = 0;
  v31 = 0;
  sub_100292868(v27, a2, 8);
  v3 = v27[0];
  if ((*(&v29[1].__locale_ + *(v27[0] - 24)) & 2) == 0)
  {
    v4 = 0;
LABEL_4:
    v5 = std::istream::operator>>();
    if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0)
    {
      std::ios_base::clear((v27 + *(v27[0] - 24)), 0);
      v32 = 1;
    }

    else if (!v32)
    {
      v25 = 0;
      v26 = 0;
      *sub_1002A80E0(&v25, 8) = 0x5530203E20746E63;
      sub_1002A8980(-215, &v25, "make_to_binary_funcs", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8090);
    }

    v6 = sub_10029BEB0(v27, &v31);
    if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
    {
      v3 = v27[0];
      goto LABEL_41;
    }

    while (1)
    {
      if (!v32--)
      {
        v3 = v27[0];
        if ((*(&v29[1].__locale_ + *(v27[0] - 24)) & 2) != 0)
        {
          goto LABEL_41;
        }

        goto LABEL_4;
      }

      v9 = sub_10029C020;
      if (v31 > 0x68u)
      {
        break;
      }

      v10 = 1;
      if (v31 == 99)
      {
        goto LABEL_29;
      }

      if (v31 != 100)
      {
        if (v31 != 102)
        {
          goto LABEL_25;
        }

        v11 = sub_10029C050;
LABEL_27:
        v9 = v11;
        v10 = 4;
        goto LABEL_29;
      }

      v9 = sub_10029C060;
      v10 = 8;
LABEL_29:
      v13 = (v4 + v10 - 1) & -v10;
      v15 = a1[5];
      v14 = a1[6];
      if (v15 < v14)
      {
        *v15 = v13;
        *(v15 + 1) = v9;
        v7 = (v15 + 16);
      }

      else
      {
        v16 = a1[4];
        v17 = v15 - v16;
        v18 = (v15 - v16) >> 4;
        v19 = v18 + 1;
        if ((v18 + 1) >> 60)
        {
          sub_10000918C();
        }

        v20 = v14 - v16;
        if (v20 >> 3 > v19)
        {
          v19 = v20 >> 3;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF0)
        {
          v21 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          if (!(v21 >> 60))
          {
            operator new();
          }

          sub_10000927C();
        }

        v22 = (16 * v18);
        *v22 = v13;
        v22[1] = v9;
        v7 = 16 * v18 + 16;
        memcpy(0, v16, v17);
        a1[4] = 0;
        a1[5] = v7;
        a1[6] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      a1[5] = v7;
      v4 = v13 + v10;
    }

    if (v31 > 0x74u)
    {
      v10 = 1;
      if (v31 == 117)
      {
        goto LABEL_29;
      }

      if (v31 != 119)
      {
LABEL_25:
        v25 = 0;
        v26 = 0;
        v12 = sub_1002A80E0(&v25, 19);
        *(v12 + 15) = 578056815;
        *v12 = *"!type not support";
        sub_1002A8980(-215, &v25, "make_to_binary_funcs", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8124);
      }

      goto LABEL_24;
    }

    if (v31 != 105)
    {
      if (v31 != 115)
      {
        goto LABEL_25;
      }

LABEL_24:
      v9 = sub_10029C030;
      v10 = 2;
      goto LABEL_29;
    }

    v11 = sub_10029C040;
    goto LABEL_27;
  }

LABEL_41:
  if ((*(&v29[1].__locale_ + *(v3 - 24)) & 2) == 0)
  {
    v25 = 0;
    v26 = 0;
    v23 = sub_1002A80E0(&v25, 9);
    *(v23 + 8) = 41;
    *v23 = *"iss.eof()";
    sub_1002A8980(-215, &v25, "make_to_binary_funcs", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8135);
  }

  if (v30 < 0)
  {
    operator delete(v29[7].__locale_);
  }

  std::locale::~locale(v29);
  std::istream::~istream();
  return std::ios::~ios();
}

void sub_10029BE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_100292DB8(va1);
  _Unwind_Resume(a1);
}

void *sub_10029BEB0(void *a1, _BYTE *a2)
{
  std::istream::sentry::sentry();
  if (v8 == 1)
  {
    v4 = *(a1 + *(*a1 - 24) + 40);
    v5 = v4[3];
    if (v5 == v4[4])
    {
      LODWORD(v4) = (*(*v4 + 80))(v4);
      if (v4 == -1)
      {
        v6 = 6;
        goto LABEL_6;
      }
    }

    else
    {
      v4[3] = v5 + 1;
      LOBYTE(v4) = *v5;
    }

    v6 = 0;
    *a2 = v4;
LABEL_6:
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v6);
  }

  return a1;
}

void sub_10029BF94(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x10029BF54);
  }

  __cxa_rethrow();
}

void *sub_10029C070(void *a1)
{
  if (a1[8] != a1[7])
  {
    sub_10029C17C(a1);
  }

  if (*(*a1 + 4) == 24)
  {
    sub_10028614C(*a1, "");
    v2 = *a1;
    v3 = *(*a1 + 128);
    v2[15] = v3;
    v4 = *(v2 + 22);
    if (v4 < 0)
    {
      *v3 = 10;
      sub_10028614C(v2, v2[16]);
      v3 = v2[16];
      v4 = *(v2 + 22);
      v5 = *(v2 + 16);
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = *(v2 + 16);
      if (v4 == v5)
      {
LABEL_6:
        v6 = v4;
LABEL_9:
        v2[15] = v3 + v6;
        bzero(*(*a1 + 128), *(*a1 + 88));
        *(*a1 + 120) = *(*a1 + 128);
        goto LABEL_10;
      }
    }

    v6 = v5;
    memset(v3, 32, v5);
    *(v2 + 22) = v5;
    v3 = v2[16];
    goto LABEL_9;
  }

LABEL_10:
  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

BOOL sub_10029C17C(void **a1)
{
  v2 = sub_100292270(a1[7], a1[4], 0, a1[8] - a1[7]);
  if (v2)
  {
    a1[8] = a1[7];
    v3 = *a1;
    if (*(*a1 + 1) == 24)
    {
      sub_10028614C(*a1, a1[4]);
    }

    else
    {
      strcpy(__s, "\n");
      v4 = *(v3 + 64);
      memset(__b, 32, v4);
      __b[v4] = 0;
      sub_10028614C(v3, __b);
      sub_10028614C(*a1, a1[4]);
      sub_10028614C(*a1, __s);
      v5 = *a1;
      v7 = *(v5 + 120);
      v6 = *(v5 + 128);
      v8 = *(v5 + 88);
      if (v7 > &v6[v8])
      {
        *v7 = 10;
        sub_10028614C(v5, *(v5 + 128));
        v6 = *(v5 + 128);
        LODWORD(v8) = *(v5 + 88);
      }

      v9 = *(v5 + 64);
      if (v8 == v9)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
        memset(v6, 32, v9);
        *(v5 + 88) = v9;
        v6 = *(v5 + 128);
      }

      *(v5 + 120) = &v6[v10];
    }
  }

  return v2 != 0;
}

uint64_t sub_10029C2DC(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  *a1 = a2;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (!a2)
  {
    v10 = 0;
    v11 = 0;
    v7 = sub_1002A80E0(&v10, 3);
    *(v7 + 2) = 99;
    *v7 = 29299;
    sub_1002A8980(-215, &v10, "BinaryToCvSeqConvertor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8155);
  }

  if (!a4)
  {
    v10 = 0;
    v11 = 0;
    *sub_1002A80E0(&v10, 2) = 29796;
    sub_1002A8980(-215, &v10, "BinaryToCvSeqConvertor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8156);
  }

  if (a3 < 0)
  {
    v10 = 0;
    v11 = 0;
    *sub_1002A80E0(&v10, 8) = 0x30203D3E206E656CLL;
    sub_1002A8980(-215, &v10, "BinaryToCvSeqConvertor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8157);
  }

  sub_10029C4AC(a1, a4);
  *(a1 + 56) = *(a1 + 32);
  v8 = sub_10028C47C(a4);
  *(a1 + 16) = *(a1 + 8) + v8 * a3;
  *(a1 + 24) = v8;
  return a1;
}

void sub_10029C440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 40) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10029C4AC(void *a1, char *__s)
{
  v37 = 0;
  v36 = 0;
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100241528();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v31 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  sub_100292868(v32, &__dst, 8);
  if (v31 < 0)
  {
    operator delete(__dst);
  }

  v6 = v32[0];
  if ((*(&v34[1].__locale_ + *(v32[0] - 24)) & 2) == 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = std::istream::operator>>();
      if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
      {
        std::ios_base::clear((v32 + *(v32[0] - 24)), 0);
        v37 = 1;
      }

      else if (!v37)
      {
        __dst = 0;
        v30 = 0;
        *sub_1002A80E0(&__dst, 8) = 0x5530203E20746E63;
        sub_1002A8980(-215, &__dst, "make_funcs", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8248);
      }

      v9 = sub_10029BEB0(v32, &v36);
      if ((*(v9 + *(*v9 - 24) + 32) & 5) != 0)
      {
        v6 = v32[0];
        goto LABEL_65;
      }

LABEL_19:
      if (v37--)
      {
        break;
      }

LABEL_11:
      v6 = v32[0];
      if ((*(&v34[1].__locale_ + *(v32[0] - 24)) & 2) != 0)
      {
        goto LABEL_65;
      }
    }

    while (1)
    {
      v11 = sub_10029CD48;
      if (v36 <= 0x68u)
      {
        v12 = 1;
        switch(v36)
        {
          case 'c':
            goto LABEL_35;
          case 'd':
            v13 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
            v7 = v13 + 8;
            v15 = sub_10029CDC4;
            v16 = 6;
            v17 = a1[5];
            v18 = a1[6];
            if (v17 < v18)
            {
              goto LABEL_18;
            }

            break;
          case 'f':
            v13 = (v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
            v7 = v13 + 4;
            v15 = sub_10029CDB4;
            v16 = 5;
            v17 = a1[5];
            v18 = a1[6];
            if (v17 < v18)
            {
LABEL_18:
              *v17 = v16;
              v17[1] = v13;
              v17[2] = v15;
              a1[5] = v17 + 3;
              goto LABEL_19;
            }

            break;
          default:
            goto LABEL_32;
        }
      }

      else
      {
        if (v36 > 0x74u)
        {
          if (v36 == 117)
          {
            v12 = 1;
          }

          else
          {
            if (v36 != 119)
            {
LABEL_32:
              __dst = 0;
              v30 = 0;
              v14 = sub_1002A80E0(&__dst, 19);
              *(v14 + 15) = 578056815;
              *v14 = *"!type not support";
              sub_1002A8980(-215, &__dst, "make_funcs", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8283);
            }

LABEL_31:
            v11 = sub_10029CD5C;
            v12 = 2;
          }

LABEL_35:
          v13 = (v7 + v12 - 1) & -v12;
          v7 = v13 + v12;
          if (v36 <= 0x68u)
          {
            v15 = v11;
            v16 = 1;
            v17 = a1[5];
            v18 = a1[6];
            if (v17 < v18)
            {
              goto LABEL_18;
            }
          }

          else if (v36 > 0x74u)
          {
            if (v36 == 117)
            {
              v16 = 0;
              v15 = v11;
              v17 = a1[5];
              v18 = a1[6];
              if (v17 < v18)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v15 = v11;
              v16 = 2;
              v17 = a1[5];
              v18 = a1[6];
              if (v17 < v18)
              {
                goto LABEL_18;
              }
            }
          }

          else
          {
            v15 = v11;
            v16 = 3;
            v17 = a1[5];
            v18 = a1[6];
            if (v17 < v18)
            {
              goto LABEL_18;
            }
          }

          goto LABEL_52;
        }

        if (v36 != 105)
        {
          if (v36 != 115)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        v13 = (v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v7 = v13 + 4;
        v15 = sub_10029CD7C;
        v16 = 4;
        v17 = a1[5];
        v18 = a1[6];
        if (v17 < v18)
        {
          goto LABEL_18;
        }
      }

LABEL_52:
      v19 = a1[4];
      v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v19) >> 3) + 1;
      if (v20 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_10000918C();
      }

      v21 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v19) >> 3);
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x555555555555555)
      {
        v22 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (v22 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_10000927C();
      }

      v23 = (8 * ((v17 - v19) >> 3));
      *v23 = v16;
      v23[1] = v13;
      v23[2] = v15;
      v24 = v23 + 3;
      v25 = v23 - (v17 - v19);
      memcpy(v25, v19, v17 - v19);
      a1[4] = v25;
      a1[5] = v24;
      a1[6] = 0;
      if (v19)
      {
        operator delete(v19);
      }

      a1[5] = v24;
      if (!v37--)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_65:
  if ((*(&v34[1].__locale_ + *(v6 - 24)) & 2) == 0)
  {
    __dst = 0;
    v30 = 0;
    v27 = sub_1002A80E0(&__dst, 9);
    *(v27 + 8) = 41;
    *v27 = *"iss.eof()";
    sub_1002A8980(-215, &__dst, "make_funcs", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8308);
  }

  if (a1[5] == a1[4])
  {
    __dst = 0;
    v30 = 0;
    qmemcpy(sub_1002A80E0(&__dst, 22), "binary_to_funcs.size()", 22);
    sub_1002A8980(-215, &__dst, "make_funcs", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8309);
  }

  if (v35 < 0)
  {
    operator delete(v34[7].__locale_);
  }

  std::locale::~locale(v34);
  std::istream::~istream();
  return std::ios::~ios();
}

void sub_10029CC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_1002A8124(&__p);
  sub_100292DB8(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10029CD48(_BYTE *a1, _BYTE *a2)
{
  *a2 = 0;
  *a2 = *a1;
  return 1;
}

uint64_t sub_10029CD5C(unsigned __int8 *a1, _WORD *a2)
{
  *a2 = 0;
  v2 = *a1;
  *a2 = v2;
  *a2 = v2 | (a1[1] << 8);
  return 2;
}

uint64_t sub_10029CD7C(unsigned __int8 *a1, int *a2)
{
  *a2 = 0;
  v2 = *a1;
  *a2 = v2;
  v3 = v2 | (a1[1] << 8);
  *a2 = v3;
  v4 = v3 | (a1[2] << 16);
  *a2 = v4;
  *a2 = v4 | (a1[3] << 24);
  return 4;
}

uint64_t sub_10029CDD4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 4096;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10029CEB8(uint64_t *a1)
{
  sub_1001FF694((a1 + 3), a1[2]);
  v2 = *(*a1 + 8);

  return v2(a1);
}

uint64_t sub_10029CF18()
{
  v1 = 0x4800000000;
  v3 = 0;
  v4 = "opencv-sequence";
  v2 = 0;
  v5 = sub_10028CB90;
  v6 = sub_10028CBA8;
  v9 = sub_10028DA40;
  v7 = sub_10028CC48;
  v8 = sub_10028D858;
  sub_10028C72C(&v1);
  qword_1004D5478 = qword_1004D5468;
  __cxa_atexit(sub_10028CABC, &qword_1004D5478, &_mh_execute_header);
  v1 = 0x4800000000;
  v2 = 0;
  v3 = 0;
  v4 = "opencv-sequence-tree";
  v5 = sub_10028CB90;
  v8 = sub_10028D858;
  v9 = sub_10028DA40;
  v6 = sub_10028CBA8;
  v7 = sub_10028DA50;
  sub_10028C72C(&v1);
  qword_1004D5480 = qword_1004D5468;
  __cxa_atexit(sub_10028CABC, &qword_1004D5480, &_mh_execute_header);
  v1 = 0x4800000000;
  v3 = 0;
  v4 = "opencv-graph";
  v2 = 0;
  v5 = sub_10028DD68;
  v6 = sub_10028DD8C;
  v9 = sub_10028F40C;
  v7 = sub_10028DE2C;
  v8 = sub_10028EE38;
  sub_10028C72C(&v1);
  qword_1004D5488 = qword_1004D5468;
  __cxa_atexit(sub_10028CABC, &qword_1004D5488, &_mh_execute_header);
  v1 = 0x4800000000;
  v3 = 0;
  v4 = "opencv-sparse-matrix";
  v2 = 0;
  v5 = sub_10028F414;
  v6 = sub_1001FCB74;
  v9 = sub_1001FCC70;
  v7 = sub_10028F42C;
  v8 = sub_10028F9A8;
  sub_10028C72C(&v1);
  qword_1004D5490 = qword_1004D5468;
  __cxa_atexit(sub_10028CABC, &qword_1004D5490, &_mh_execute_header);
  v1 = 0x4800000000;
  v3 = 0;
  v4 = "opencv-image";
  v2 = 0;
  v5 = sub_10028FCE8;
  v6 = sub_1001FF014;
  v9 = sub_1001FF4CC;
  v7 = sub_10028FCFC;
  v8 = sub_10029048C;
  sub_10028C72C(&v1);
  qword_1004D5498 = qword_1004D5468;
  __cxa_atexit(sub_10028CABC, &qword_1004D5498, &_mh_execute_header);
  v1 = 0x4800000000;
  v3 = 0;
  v4 = "opencv-matrix";
  v2 = 0;
  v5 = sub_1002907E8;
  v6 = sub_1001FB074;
  v9 = sub_1001FB1DC;
  v7 = sub_10029081C;
  v8 = sub_100290BCC;
  sub_10028C72C(&v1);
  qword_1004D54A0 = qword_1004D5468;
  __cxa_atexit(sub_10028CABC, &qword_1004D54A0, &_mh_execute_header);
  v1 = 0x4800000000;
  v3 = 0;
  v4 = "opencv-nd-matrix";
  v2 = 0;
  v5 = sub_100290D5C;
  v6 = sub_100290D74;
  v9 = sub_1001FB718;
  v7 = sub_100290D78;
  v8 = sub_100291204;
  sub_10028C72C(&v1);
  qword_1004D54A8 = qword_1004D5468;
  return __cxa_atexit(sub_10028CABC, &qword_1004D54A8, &_mh_execute_header);
}

void *sub_10029D30C()
{
  v0 = sub_1002AA050();

  return sub_1002A9C00(v0);
}

unsigned int *sub_10029D334(unsigned int *result, unsigned int a2)
{
  if ((a2 & 0x7FFFFFFF) != 0)
  {
    v7 = v2;
    v8 = v3;
    if ((a2 & 0x80000000) == 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = -a2;
    }

    v5 = result;
    sub_1002A04E4(&v6, a2 >> 31, 156, v4);
    result = v5;
    *v5 = v6;
  }

  else
  {
    *result = (a2 >> 31) & 0xCF000000;
  }

  return result;
}

unsigned int *sub_10029D39C@<X0>(unsigned int *result@<X0>, unint64_t *a2@<X8>)
{
  v2 = *result;
  v3 = v2 & 0x7FFFFF;
  if ((~v2 & 0x7F800000) != 0)
  {
    v7 = (v2 >> 23);
    if (!(v2 >> 23))
    {
      if (!v3)
      {
        *a2 = (v2 << 32) & 0x8000000000000000;
        return result;
      }

      v8 = v2 << 16;
      if (v3 >= 0x10000)
      {
        v8 = v2 & 0x7FFFFF;
      }

      LODWORD(v9) = v8 << 8;
      if (HIBYTE(v8))
      {
        v9 = v8;
      }

      else
      {
        v9 = v9;
      }

      if (HIBYTE(v8))
      {
        v10 = 16 * (v3 < 0x10000);
      }

      else
      {
        v10 = (16 * (v3 < 0x10000)) | 8;
      }

      v11 = v10 + byte_1003E3D58[v9 >> 24] - 8;
      v3 <<= v11;
      v7 = -v11;
    }

    *a2 = ((v2 >> 31 << 63) | (v3 << 29)) + (v7 << 52) + 0x3800000000000000;
    return result;
  }

  v4 = (v2 >> 31 << 63) | 0x7FF0000000000000;
  v5 = (v2 << 29) | (v2 >> 31 << 63) | 0x7FF8000000000000;
  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  *a2 = v6;
  return result;
}

int *sub_10029D46C@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, int *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  if (((*a2 ^ *a1) & 0x80000000) != 0)
  {
    return sub_1002A0124(a3, v4, v5);
  }

  else
  {
    return sub_1002A02DC(a3, v4, v5);
  }
}

int *sub_10029D490@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  if (((*a2 ^ *a1) & 0x80000000) != 0)
  {
    return sub_1002A02DC(a3, v4, v5);
  }

  else
  {
    return sub_1002A0124(a3, v4, v5);
  }
}

unsigned int *sub_10029D4B4@<X0>(unsigned int *result@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X8>)
{
  v3 = *result;
  v4 = (*result >> 23);
  v5 = *result & 0x7FFFFF;
  v6 = (*a2 >> 23);
  v7 = *a2 & 0x7FFFFF;
  v8 = *a2 ^ *result;
  if (v4 == 255)
  {
    if (v5)
    {
      goto LABEL_11;
    }

    if (v6 == 255 && v7 != 0)
    {
      goto LABEL_11;
    }

    v10 = v6 | v7;
LABEL_28:
    v15 = v8 & 0x80000000 | 0x7F800000;
    if (!v10)
    {
      v15 = -4194304;
    }

    *a3 = v15;
    return result;
  }

  if ((~*a2 & 0x7F800000) == 0)
  {
    if (v7)
    {
LABEL_11:
      if (v5)
      {
        v11 = (~v3 & 0x7F800000) == 0;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        v12 = *result;
      }

      else
      {
        v12 = *a2;
      }

      if ((v3 & 0x7FC00000) != 0x7F800000 || (v3 & 0x3FFFFF) == 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = *result;
      }

      *a3 = v14 | 0x400000;
      return result;
    }

    v10 = v4 | v5;
    goto LABEL_28;
  }

  if (!(*result >> 23))
  {
    if (!v5)
    {
      goto LABEL_59;
    }

    v16 = *result << 16;
    if (v5 >= 0x10000)
    {
      v16 = *result & 0x7FFFFF;
    }

    LODWORD(v17) = v16 << 8;
    if (HIBYTE(v16))
    {
      v17 = v16;
    }

    else
    {
      v17 = v17;
    }

    v18 = byte_1003E3D58[v17 >> 24];
    if (HIBYTE(v16))
    {
      v19 = 16 * (v5 < 0x10000);
    }

    else
    {
      v19 = (16 * (v5 < 0x10000)) | 8;
    }

    v20 = v19 + v18 - 8;
    v4 = 1 - v20;
    v5 <<= v20;
    if ((*a2 >> 23))
    {
      goto LABEL_51;
    }

LABEL_41:
    if (v7)
    {
      v21 = *a2 << 16;
      if (v7 >= 0x10000)
      {
        v21 = *a2 & 0x7FFFFF;
      }

      LODWORD(v22) = v21 << 8;
      if (HIBYTE(v21))
      {
        v22 = v21;
      }

      else
      {
        v22 = v22;
      }

      v23 = byte_1003E3D58[v22 >> 24];
      if (HIBYTE(v21))
      {
        v24 = 16 * (v7 < 0x10000);
      }

      else
      {
        v24 = (16 * (v7 < 0x10000)) | 8;
      }

      v25 = v24 + v23 - 8;
      v6 = 1 - v25;
      v7 <<= v25;
      goto LABEL_51;
    }

LABEL_59:
    *a3 = v8 & 0x80000000;
    return result;
  }

  if (!(*a2 >> 23))
  {
    goto LABEL_41;
  }

LABEL_51:
  v26 = v6 + v4;
  v27 = ((v7 << 8) | 0x80000000) * ((v5 << 7) | 0x40000000);
  v28 = HIDWORD(v27) | ((v27 & 0xFFFF8000) != 0);
  v29 = v27 >> 62 == 0;
  if (v29)
  {
    v30 = -128;
  }

  else
  {
    v30 = -127;
  }

  v31 = v26 + v30;
  v32 = v28 << v29;
  if (v31 >= 0xFD)
  {
    if ((v31 & 0x8000) != 0)
    {
      v33 = -v31;
      v34 = v33;
      v32 = (v32 >> v33) | (v32 << -v33 != 0);
      v31 = 0;
      if (v34 > 0x1E)
      {
        v32 = 1;
      }
    }

    else
    {
      if (v31 != 253 || ((v32 + 64) & 0x80000000) != 0)
      {
        *a3 = v8 & 0x80000000 | 0x7F800000;
        return result;
      }

      v31 = 253;
    }
  }

  v35 = v8 & 0x80000000;
  v36 = v31 << 23;
  v37 = ~((v32 & 0x7F) == 64) & ((v32 + 64) >> 7);
  if (!v37)
  {
    v36 = 0;
  }

  *a3 = (v37 | v35) + v36;
  return result;
}

unsigned int *sub_10029D700@<X0>(unsigned int *result@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X8>)
{
  v3 = *result;
  v4 = (*result >> 23);
  v5 = *a2;
  v6 = *result & 0x7FFFFF;
  v7 = *a2 & 0x7FFFFF;
  v8 = *a2 ^ *result;
  if (v4 == 255)
  {
    if (!v6)
    {
      if ((~v5 & 0x7F800000) == 0)
      {
        if (!v7)
        {
          goto LABEL_62;
        }

        goto LABEL_8;
      }

LABEL_61:
      *a3 = v8 & 0x80000000 | 0x7F800000;
      return result;
    }

LABEL_8:
    if (v6)
    {
      v9 = (~v3 & 0x7F800000) == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = *result;
    }

    else
    {
      v10 = *a2;
    }

    if ((v3 & 0x7FC00000) != 0x7F800000 || (v3 & 0x3FFFFF) == 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = *result;
    }

    *a3 = v12 | 0x400000;
    return result;
  }

  if ((~v5 & 0x7F800000) == 0)
  {
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_59:
    *a3 = v8 & 0x80000000;
    return result;
  }

  v13 = (v5 >> 23);
  if ((v5 >> 23))
  {
    if ((*result >> 23))
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (!v7)
    {
      if (!(v4 | v6))
      {
LABEL_62:
        *a3 = -4194304;
        return result;
      }

      goto LABEL_61;
    }

    v14 = *a2 << 16;
    if (v7 >= 0x10000)
    {
      v14 = *a2 & 0x7FFFFF;
    }

    LODWORD(v15) = v14 << 8;
    if (HIBYTE(v14))
    {
      v15 = v14;
    }

    else
    {
      v15 = v15;
    }

    v16 = byte_1003E3D58[v15 >> 24];
    if (HIBYTE(v14))
    {
      v17 = 16 * (v7 < 0x10000);
    }

    else
    {
      v17 = (16 * (v7 < 0x10000)) | 8;
    }

    v18 = v17 + v16 - 8;
    v13 = 1 - v18;
    v7 <<= v18;
    if ((*result >> 23))
    {
      goto LABEL_44;
    }
  }

  if (!v6)
  {
    goto LABEL_59;
  }

  v19 = *result << 16;
  if (v6 >= 0x10000)
  {
    v19 = *result & 0x7FFFFF;
  }

  LODWORD(v20) = v19 << 8;
  if (HIBYTE(v19))
  {
    v20 = v19;
  }

  else
  {
    v20 = v20;
  }

  v21 = byte_1003E3D58[v20 >> 24];
  if (HIBYTE(v19))
  {
    v22 = 16 * (v6 < 0x10000);
  }

  else
  {
    v22 = (16 * (v6 < 0x10000)) | 8;
  }

  v23 = v22 + v21 - 8;
  v4 = 1 - v23;
  v6 <<= v23;
LABEL_44:
  v24 = v4 - v13;
  v25 = v6 | 0x800000;
  v26 = v7 | 0x800000;
  if (v25 < v26)
  {
    v27 = 125;
  }

  else
  {
    v27 = 126;
  }

  v28 = v27 + v24;
  v29 = 30;
  if (v25 < v26)
  {
    v29 = 31;
  }

  v30 = v25 << v29;
  v31 = v30 / v26;
  if ((v30 / v26) * v26 == v30)
  {
    v32 = v30 / v26;
  }

  else
  {
    v32 = v31 + 1;
  }

  if ((v31 & 0x3F) != 0)
  {
    v32 = v31;
  }

  if (v28 >= 0xFDu)
  {
    if ((v28 & 0x8000) != 0)
    {
      v33 = -v28;
      v34 = v33;
      v35 = v32 != 0;
      v32 = (v32 >> v33) | (v32 << -v33 != 0);
      v28 = 0;
      if (v34 > 0x1E)
      {
        v32 = v35;
      }
    }

    else
    {
      if (v28 != 253 || ((v32 + 64) & 0x80000000) != 0)
      {
        goto LABEL_61;
      }

      v28 = 253;
    }
  }

  v36 = v8 & 0x80000000;
  v37 = v28 << 23;
  v38 = ~((v32 & 0x7F) == 64) & ((v32 + 64) >> 7);
  if (!v38)
  {
    v37 = 0;
  }

  *a3 = (v38 | v36) + v37;
  return result;
}

BOOL sub_10029D948(unsigned int *a1, int *a2)
{
  v2 = *a2;
  if ((~*a2 & 0x7F800000) == 0 && (*a2 & 0x7FFFFF) != 0)
  {
    return 0;
  }

  v4 = *a1;
  if ((~*a1 & 0x7F800000) == 0 && (*a1 & 0x7FFFFF) != 0)
  {
    return 0;
  }

  if (((v4 ^ v2) & 0x80000000) != 0)
  {
    v7 = ((v4 | v2) & 0x7FFFFFFF) != 0;
    return v2 < 0 && v7;
  }

  else if (v2 == v4)
  {
    return 0;
  }

  else
  {
    return (v2 < 0) ^ (v2 < v4);
  }
}

BOOL sub_10029D9C4(int *a1, unsigned int *a2)
{
  v2 = *a1;
  if ((~*a1 & 0x7F800000) == 0 && (*a1 & 0x7FFFFF) != 0)
  {
    return 0;
  }

  v4 = *a2;
  if ((~*a2 & 0x7F800000) == 0 && (*a2 & 0x7FFFFF) != 0)
  {
    return 0;
  }

  if (((v4 ^ v2) & 0x80000000) != 0)
  {
    v7 = ((v4 | v2) & 0x7FFFFFFF) != 0;
    return v2 < 0 && v7;
  }

  else if (v2 == v4)
  {
    return 0;
  }

  else
  {
    return (v2 < 0) ^ (v2 < v4);
  }
}

void *sub_10029DA40(void *result, unsigned int a2)
{
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      v2 = a2;
    }

    else
    {
      v2 = -a2;
    }

    v3 = v2 << 16;
    if (v2 >= 0x10000)
    {
      v3 = v2;
    }

    LODWORD(v4) = v3 << 8;
    if (HIBYTE(v3))
    {
      v4 = v3;
    }

    else
    {
      v4 = v4;
    }

    if (HIBYTE(v3))
    {
      v5 = 16 * (v2 < 0x10000);
    }

    else
    {
      v5 = (16 * (v2 < 0x10000)) | 8;
    }

    v6 = v5 + byte_1003E3D58[v4 >> 24] + 21;
    *result = (v2 << v6) + ((a2 >> 31) << 63) + ((1074 - v6) << 52);
  }

  else
  {
    *result = 0;
  }

  return result;
}

unint64_t *sub_10029DAC0(unint64_t *result, uint64_t a2)
{
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6[3] = v2;
    v6[4] = v3;
    if (a2 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = -a2;
    }

    v5 = result;
    sub_1002A0A48(v6, a2 >> 63, 1084, v4);
    result = v5;
    *v5 = v6[0];
  }

  else
  {
    *result = (a2 >> 63) & 0xC3E0000000000000;
  }

  return result;
}

uint64_t sub_10029DB28(int *a1)
{
  v1 = *a1;
  v2 = (*a1 >> 23);
  if (v2 < 0x7F)
  {
    return 0;
  }

  v4 = v1 & 0x7FFFFF;
  if (v2 < 0x9E)
  {
    v5 = ((v4 << 8) | 0x80000000) >> (-98 - v2);
    if (v1 >= 0)
    {
      return v5;
    }

    else
    {
      return -v5;
    }
  }

  else if (v1 == -822083584)
  {
    return 0x80000000;
  }

  else if ((v2 != 255 || v4 == 0) && v1 <= -1)
  {
    return 0x80000000;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t sub_10029DB98(unsigned int *a1)
{
  v1 = *a1;
  v2 = (v1 >> 23);
  v3 = v1 & 0x7FFFFF;
  v4 = (v1 & 0x7FFFFF) == 0;
  if (v2 != 255)
  {
    v4 = 1;
  }

  if ((v1 & 0x80000000) == 0)
  {
    v4 = 0;
  }

  LODWORD(v5) = v3 | 0x800000;
  if ((v1 & 0x7F800000) != 0)
  {
    v5 = v5;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5 << 32;
  if (v2 <= 0xA9)
  {
    if (v2 < 0x6C)
    {
      v6 = v5 != 0;
      goto LABEL_14;
    }

    v6 = (v6 >> (-86 - v2)) | (v6 << ((v1 >> 23) + 22) != 0);
  }

  if (v6 > 0xFFFFFFFF7FFLL)
  {
LABEL_19:
    if (v4)
    {
      return 0x80000000;
    }

    else
    {
      return 0x7FFFFFFFLL;
    }
  }

LABEL_14:
  v7 = ((v6 + 2048) >> 12) & ~((v6 & 0xFFF) == 2048);
  if (v4)
  {
    result = -v7;
  }

  else
  {
    result = v7;
  }

  if (v7 && ((v4 ^ (result >= 0)) & 1) == 0)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10029DC5C(unint64_t *a1)
{
  v1 = *a1 >> 52;
  v2 = *a1 & 0xFFFFFFFFFFFFFLL;
  v3 = v2 == 0;
  v4 = v1 & 0x7FF;
  v5 = v2 | 0x10000000000000;
  if ((v1 & 0x7FF) != 0)
  {
    v2 |= 0x10000000000000uLL;
  }

  if (v4 != 2047)
  {
    v3 = 1;
  }

  v6 = (*a1 & 0x8000000000000000) != 0 && v3;
  if (v4 <= 0x426)
  {
    if (v4 < 0x3E9)
    {
      v2 = v2 != 0;
      goto LABEL_14;
    }

    v2 = (v5 >> (39 - v1)) | (v5 << (v1 + 25) != 0);
  }

  if (v2 > 0xFFFFFFFF7FFLL)
  {
LABEL_19:
    if (v6)
    {
      return 0x80000000;
    }

    else
    {
      return 0x7FFFFFFFLL;
    }
  }

LABEL_14:
  v7 = ((v2 + 2048) >> 12) & ~((v2 & 0xFFF) == 2048);
  if (v6)
  {
    result = -v7;
  }

  else
  {
    result = v7;
  }

  if (v7 && ((v6 ^ (result >= 0)) & 1) == 0)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10029DD18(unint64_t *a1)
{
  v1 = *a1 >> 52;
  v2 = *a1 & 0xFFFFFFFFFFFFFLL;
  v3 = v2 == 0;
  v4 = v1 & 0x7FF;
  v5 = v2 | 0x10000000000000;
  if ((v1 & 0x7FF) != 0)
  {
    v2 |= 0x10000000000000uLL;
  }

  if (v4 != 2047)
  {
    v3 = 1;
  }

  v6 = (*a1 & 0x8000000000000000) != 0 && v3;
  v7 = (v5 >> (39 - v1)) | (v5 << (v1 + 25) != 0);
  if (v4 < 0x3E9)
  {
    v7 = v2 != 0;
  }

  if (v4 > 0x426)
  {
    v7 = v2;
  }

  v8 = 4095;
  if (!v6)
  {
    v8 = 0;
  }

  v9 = v7 + v8;
  if (v9 >> 44 || (!v6 ? (result = (v9 >> 12)) : (result = -(v9 >> 12)), v9 >= 0x1000 && ((v6 ^ (result >= 0)) & 1) == 0))
  {
    if (v6)
    {
      return 0x80000000;
    }

    else
    {
      return 0x7FFFFFFFLL;
    }
  }

  return result;
}

unint64_t sub_10029DDC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*a1 >> 52) & 0x7FF;
  v3 = (*a1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v2 != 2047)
  {
    v3 = 1;
  }

  if (v1 >= 0)
  {
    v3 = 0;
  }

  v4 = *a1 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  if (v2 < 0x433)
  {
    if (v2 < 0x3F4)
    {
      return 0;
    }

    else
    {
      v7 = v4 >> (51 - (*a1 >> 52));
      v8 = v4 << ((*a1 >> 52) - 51);
      if (v8 < 0)
      {
        v7 = (v7 + 1) & ~((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0);
      }

      v9 = v7 == 0;
      if (v3)
      {
        v7 = -v7;
      }

      v10 = 0x8000000000000000;
      if (!v3)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((v9 | v3 ^ (v7 >= 0)))
      {
        return v7;
      }

      else
      {
        return v10;
      }
    }
  }

  else if (v2 > 0x43E || (v5 = v4 << ((*a1 >> 52) - 51), (v5 & 0x8000000000000000) != 0))
  {
    if (v3)
    {
      return 0x8000000000000000;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (v1 >= 0)
  {
    return v5;
  }

  else
  {
    return -v5;
  }
}

uint64_t *sub_10029DE94@<X0>(uint64_t *result@<X0>, unsigned int *a2@<X8>)
{
  v2 = *result;
  v3 = (*result >> 52) & 0x7FF;
  v4 = *result & 0xFFFFFFFFFFFFFLL;
  if (v3 == 2047)
  {
    v5 = HIDWORD(v2) & 0x80000000 | (v2 >> 29) & 0x3FFFFF | 0x7FC00000;
    if (!v4)
    {
      v5 = HIDWORD(v2) & 0x80000000 | 0x7F800000;
    }

    *a2 = v5;
    return result;
  }

  v6 = (v4 >> 22) | ((v2 & 0x3FFFFF) != 0);
  if (!(v3 | v6))
  {
    *a2 = HIDWORD(v2) & 0x80000000;
    return result;
  }

  v7 = v3 - 897;
  v8 = v6 | 0x40000000;
  if ((v3 - 897) >= 0xFD)
  {
    if (v3 > 0x380)
    {
      if (v3 != 1150 || v6 + 1073741888 < 0)
      {
        if (v2 >= 0)
        {
          v11 = 2139095040;
        }

        else
        {
          v11 = -8388608;
        }

        *a2 = v11;
        return result;
      }

      v7 = 253;
    }

    else
    {
      v8 = (v8 >> (-127 - (*result >> 52))) | (v8 << ((*result >> 52) + 127) != 0);
      v7 = 0;
      if ((897 - v3) > 0x1E)
      {
        v8 = 1;
      }
    }
  }

  v9 = v7 << 23;
  v10 = ~((v8 & 0x7F) == 64) & ((v8 + 64) >> 7);
  if (!v10)
  {
    v9 = 0;
  }

  *a2 = (v10 | HIDWORD(v2) & 0x80000000) + v9;
  return result;
}

unint64_t *sub_10029DFB4@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a1 >> 63;
  if (((*a2 ^ *a1) & 0x8000000000000000) != 0)
  {
    return sub_1002A0834(a3, v4, v5, v6);
  }

  else
  {
    return sub_1002A062C(a3, v4, v5, v6);
  }
}

unint64_t *sub_10029DFDC@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a1 >> 63;
  if (((*a2 ^ *a1) & 0x8000000000000000) != 0)
  {
    return sub_1002A062C(a3, v4, v5, v6);
  }

  else
  {
    return sub_1002A0834(a3, v4, v5, v6);
  }
}

unint64_t *sub_10029E004@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *result;
  v4 = (*result >> 52) & 0x7FF;
  v5 = *result & 0xFFFFFFFFFFFFFLL;
  v6 = (*a2 >> 52) & 0x7FF;
  v7 = *a2 & 0xFFFFFFFFFFFFFLL;
  v8 = *a2 ^ *result;
  if (v4 == 2047)
  {
    if (v5)
    {
      goto LABEL_11;
    }

    if (v6 == 2047 && v7 != 0)
    {
      goto LABEL_11;
    }

    v10 = *a2 >> 52;
LABEL_28:
    v15 = v8 & 0x8000000000000000 | 0x7FF0000000000000;
    if (!(v10 & 0x7FF | v7))
    {
      v15 = 0xFFF8000000000000;
    }

    *a3 = v15;
    return result;
  }

  if (v6 == 2047)
  {
    if (v7)
    {
LABEL_11:
      if (v5)
      {
        v11 = (~v3 & 0x7FF0000000000000) == 0;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        v12 = *result;
      }

      else
      {
        v12 = *a2;
      }

      if ((v3 & 0x7FF8000000000000) != 0x7FF0000000000000 || (v3 & 0x7FFFFFFFFFFFFLL) == 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = *result;
      }

      *a3 = v14 | 0x8000000000000;
      return result;
    }

    v10 = v3 >> 52;
    v7 = *result & 0xFFFFFFFFFFFFFLL;
    goto LABEL_28;
  }

  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_61;
    }

    v4 = HIDWORD(v5);
    v16 = 32 * (HIDWORD(v5) == 0);
    if (!HIDWORD(v5))
    {
      v4 = *result & 0xFFFFFFFFFFFFFLL;
    }

    if (v4 < 0x10000)
    {
      v16 = (32 * (HIDWORD(v5) == 0)) | 0x10;
      LODWORD(v4) = v4 << 16;
    }

    v17 = v16 | 8;
    if (BYTE3(v4))
    {
      v17 = v16;
      v4 = v4;
    }

    else
    {
      v4 = (v4 << 8);
    }

    v18 = v17 + byte_1003E3D58[v4 >> 24] - 11;
    v5 <<= v18;
    LODWORD(v4) = 1 - v18;
    if (v6)
    {
      goto LABEL_49;
    }

LABEL_40:
    if (v7)
    {
      v6 = HIDWORD(v7);
      v19 = 32 * (HIDWORD(v7) == 0);
      if (!HIDWORD(v7))
      {
        v6 = *a2 & 0xFFFFFFFFFFFFFLL;
      }

      if (v6 < 0x10000)
      {
        v19 = (32 * (HIDWORD(v7) == 0)) | 0x10;
        LODWORD(v6) = v6 << 16;
      }

      v20 = v19 | 8;
      if (BYTE3(v6))
      {
        v20 = v19;
        v6 = v6;
      }

      else
      {
        v6 = (v6 << 8);
      }

      v21 = v20 + byte_1003E3D58[v6 >> 24] - 11;
      v7 <<= v21;
      LODWORD(v6) = 1 - v21;
      goto LABEL_49;
    }

LABEL_61:
    *a3 = v8 & 0x8000000000000000;
    return result;
  }

  if (!v6)
  {
    goto LABEL_40;
  }

LABEL_49:
  v22 = v6 + v4;
  v23 = v5 << 10;
  v24 = v23 | 0x4000000000000000;
  v25 = v7 << 11;
  v26 = v25 | 0x8000000000000000;
  v27 = (v23 | 0x4000000000000000) >> 32;
  v28 = (v25 | 0x8000000000000000) >> 32;
  v29 = v25 * v27;
  v30 = v28 * v23;
  v31 = __CFADD__(v30, v29);
  v32 = v30 + v29;
  v33 = &_mh_execute_header;
  if (!v31)
  {
    v33 = 0;
  }

  v34 = v26 * v24;
  v31 = v34 >= v32 << 32;
  v35 = v33 + HIDWORD(v32) + v28 * v27;
  if (!v31)
  {
    ++v35;
  }

  v36 = v35 | (v34 != 0);
  v37 = v35 >> 62 == 0;
  if (v37)
  {
    v38 = -1024;
  }

  else
  {
    v38 = -1023;
  }

  v39 = (v22 + v38);
  v40 = v36 << v37;
  if (v39 >= 0x7FD)
  {
    if ((v39 & 0x8000) != 0)
    {
      v41 = -v39;
      v42 = v36 != 0;
      v40 = (v40 >> v41) | (v40 << v39 != 0);
      v39 = 0;
      if (v41 > 0x3E)
      {
        v40 = v42;
      }
    }

    else
    {
      if (v39 != 2045 || ((v40 + 512) & 0x8000000000000000) != 0)
      {
        *a3 = v8 & 0x8000000000000000 | 0x7FF0000000000000;
        return result;
      }

      v39 = 2045;
    }
  }

  v43 = v8 & 0x8000000000000000;
  v44 = v39 << 52;
  v45 = ~((v40 & 0x3FF) == 512) & ((v40 + 512) >> 10);
  if (!v45)
  {
    v44 = 0;
  }

  *a3 = (v45 | v43) + v44;
  return result;
}

unint64_t *sub_10029E2BC@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *result;
  v4 = (*result >> 52) & 0x7FF;
  v5 = *result & 0xFFFFFFFFFFFFFLL;
  v6 = (*a2 >> 52) & 0x7FF;
  v7 = *a2 & 0xFFFFFFFFFFFFFLL;
  v8 = *a2 ^ *result;
  if (v4 == 2047)
  {
    if (!v5)
    {
      if (v6 == 2047)
      {
        if (!v7)
        {
          goto LABEL_60;
        }

        goto LABEL_9;
      }

LABEL_59:
      *a3 = v8 & 0x8000000000000000 | 0x7FF0000000000000;
      return result;
    }

LABEL_9:
    if (v5)
    {
      v9 = (~v3 & 0x7FF0000000000000) == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = *result;
    }

    else
    {
      v10 = *a2;
    }

    if ((v3 & 0x7FF8000000000000) != 0x7FF0000000000000 || (v3 & 0x7FFFFFFFFFFFFLL) == 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = *result;
    }

    *a3 = v12 | 0x8000000000000;
    return result;
  }

  if (v6)
  {
    if (v6 == 2047)
    {
      if (v7)
      {
        goto LABEL_9;
      }

LABEL_52:
      *a3 = v8 & 0x8000000000000000;
      return result;
    }
  }

  else
  {
    if (!v7)
    {
      if (!(v4 | v5))
      {
LABEL_60:
        *a3 = 0xFFF8000000000000;
        return result;
      }

      goto LABEL_59;
    }

    v6 = HIDWORD(v7);
    v13 = 32 * (HIDWORD(v7) == 0);
    if (!HIDWORD(v7))
    {
      v6 = *a2 & 0xFFFFFFFFFFFFFLL;
    }

    if (v6 < 0x10000)
    {
      v13 = (32 * (HIDWORD(v7) == 0)) | 0x10;
      LODWORD(v6) = v6 << 16;
    }

    v14 = v13 | 8;
    if (BYTE3(v6))
    {
      v14 = v13;
      v6 = v6;
    }

    else
    {
      v6 = (v6 << 8);
    }

    v15 = v14 + byte_1003E3D58[v6 >> 24] - 11;
    v7 <<= v15;
    LODWORD(v6) = 1 - v15;
  }

  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_52;
    }

    v4 = HIDWORD(v5);
    v16 = 32 * (HIDWORD(v5) == 0);
    if (!HIDWORD(v5))
    {
      v4 = *result & 0xFFFFFFFFFFFFFLL;
    }

    if (v4 < 0x10000)
    {
      v16 = (32 * (HIDWORD(v5) == 0)) | 0x10;
      LODWORD(v4) = v4 << 16;
    }

    v17 = v16 | 8;
    if (BYTE3(v4))
    {
      v17 = v16;
      v4 = v4;
    }

    else
    {
      v4 = (v4 << 8);
    }

    v18 = v17 + byte_1003E3D58[v4 >> 24] - 11;
    v5 <<= v18;
    LODWORD(v4) = 1 - v18;
  }

  v19 = v4 - v6;
  v20 = v5 | 0x10000000000000;
  v21 = (v5 | 0x10000000000000) >= (v7 | 0x10000000000000);
  if ((v5 | 0x10000000000000) < (v7 | 0x10000000000000))
  {
    v22 = 1021;
  }

  else
  {
    v22 = 1022;
  }

  v23 = (v22 + v19);
  v24 = 10;
  if (!v21)
  {
    v24 = 11;
  }

  v25 = v20 << v24;
  v26 = ((v7 | 0x10000000000000) >> 21);
  v27 = 0x7FFFFFFFFFFFFFFFLL / v26 - 2;
  v28 = HIDWORD(v25) * v27;
  v29 = (v25 - ((v28 >> 31) & 0xFFFFFFFE) * v26) << 28;
  v30 = (v7 & 0x1FFFFF) << 7;
  v31 = v29 - ((v28 >> 31) & 0xFFFFFFFE) * v30;
  v32 = ((HIDWORD(v31) * v27) >> 32) + 4;
  v33 = (v28 & 0xFFFFFFFF00000000) + 16 * v32;
  if ((v32 & 0x1C) != 0)
  {
    if (v23 < 0x7FDu)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v33 &= 0xFFFFFFFFFFFFFE00;
    v34 = (2 * v32) & 0xFFFFFFF0;
    v35 = (v31 - v26 * v34) << 28;
    if (((v35 - v30 * v34) & 0x8000000000000000) != 0)
    {
      v33 -= 128;
      if (v23 < 0x7FDu)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v35 != v30 * v34)
      {
        ++v33;
      }

      if (v23 < 0x7FDu)
      {
        goto LABEL_65;
      }
    }
  }

  if ((v23 & 0x8000) != 0)
  {
    v36 = -v23;
    v37 = v33 != 0;
    v33 = (v33 >> v36) | (v33 << v23 != 0);
    v23 = 0;
    if (v36 > 0x3E)
    {
      v33 = v37;
    }
  }

  else
  {
    if (v23 != 2045 || ((v33 + 512) & 0x8000000000000000) != 0)
    {
      goto LABEL_59;
    }

    v23 = 2045;
  }

LABEL_65:
  v38 = v8 & 0x8000000000000000;
  v39 = v23 << 52;
  v40 = ~((v33 & 0x3FF) == 512) & ((v33 + 512) >> 10);
  if (!v40)
  {
    v39 = 0;
  }

  *a3 = (v40 | v38) + v39;
  return result;
}

BOOL sub_10029E5A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if ((~*a1 & 0x7FF0000000000000) == 0 && (*a1 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  v4 = *a2;
  if ((~*a2 & 0x7FF0000000000000) == 0 && (*a2 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  return ((v4 | v2) & 0x7FFFFFFFFFFFFFFFLL) == 0 || v2 == v4;
}

BOOL sub_10029E5F0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if ((~*a1 & 0x7FF0000000000000) == 0 && (*a1 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  v4 = *a2;
  if ((~*a2 & 0x7FF0000000000000) == 0 && (*a2 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  if (((v4 ^ v2) & 0x8000000000000000) != 0)
  {
    v7 = ((v4 | v2) & 0x7FFFFFFFFFFFFFFFLL) != 0;
    return v2 < 0 && v7;
  }

  else if (v2 == v4)
  {
    return 0;
  }

  else
  {
    return (v2 < 0) ^ (v2 < v4);
  }
}

BOOL sub_10029E66C(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if ((~*a1 & 0x7FF0000000000000) == 0 && (*a1 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  v4 = *a2;
  if ((~*a2 & 0x7FF0000000000000) == 0 && (*a2 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  if (((v4 ^ v2) & 0x8000000000000000) != 0)
  {
    return v2 < 0 || (v4 & 0x7FFFFFFFFFFFFFFFLL | v2) == 0;
  }

  else if (v2 == v4)
  {
    return 1;
  }

  else
  {
    return (v2 < 0) ^ (v2 < v4);
  }
}

uint64_t sub_10029E6F4@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X2>, int *a4@<X8>)
{
  v4 = *result;
  v5 = (*result >> 23);
  v6 = *result & 0x7FFFFF;
  v7 = *a3;
  v8 = (*a2 >> 23);
  v9 = *a2 & 0x7FFFFF;
  v10 = *a3 & 0x7FFFFF;
  v11 = *a2 ^ *result;
  if (v5 == 255)
  {
    if (!v6 && (!v9 || v8 != 255))
    {
      if (!(v8 | v9))
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    goto LABEL_9;
  }

  result = 2139095040;
  if ((~*a2 & 0x7F800000) == 0)
  {
    if (!v9)
    {
      if (!(v5 | v6))
      {
LABEL_35:
        v16 = -4194304;
        goto LABEL_36;
      }

LABEL_32:
      v16 = v11 & 0x80000000 | 0x7F800000;
      if ((~v7 & 0x7F800000) != 0)
      {
        goto LABEL_87;
      }

      if (!v10)
      {
        if (((v11 ^ v7) & 0x80000000) != 0)
        {
          goto LABEL_35;
        }

LABEL_87:
        *a4 = v16;
        return result;
      }

LABEL_22:
      if ((v16 & 0x7FC00000) == 0x7F800000 && (v16 & 0x3FFFFF) != 0)
      {
        *a4 = v16 | 0x400000;
        return result;
      }

      goto LABEL_36;
    }

LABEL_9:
    if (v6)
    {
      v12 = (~v4 & 0x7F800000) == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v13 = v4;
    }

    else
    {
      v13 = *a2;
    }

    if ((v4 & 0x7FC00000) != 0x7F800000 || (v4 & 0x3FFFFF) == 0)
    {
      v15 = v13;
    }

    else
    {
      v15 = v4;
    }

    v16 = v15 | 0x400000;
    goto LABEL_22;
  }

  v17 = (v7 >> 23);
  if (v17 == 255)
  {
    v16 = *a3;
    if (v10)
    {
      v16 = 0;
LABEL_36:
      if ((v16 & 0x7FFFFF) == 0 || (~v16 & 0x7F800000) != 0)
      {
        v16 = *a3;
      }

      *a4 = v16 | 0x400000;
      return result;
    }

    goto LABEL_87;
  }

  if (v5)
  {
    if ((*a2 >> 23))
    {
      goto LABEL_62;
    }

    goto LABEL_52;
  }

  if (!v6)
  {
    goto LABEL_80;
  }

  v19 = v6 << 16;
  if (v6 >= 0x10000)
  {
    v19 = v6;
  }

  result = 16 * (v6 < 0x10000);
  LODWORD(v20) = v19 << 8;
  if (HIBYTE(v19))
  {
    v20 = v19;
  }

  else
  {
    v20 = v20;
  }

  v21 = byte_1003E3D58[v20 >> 24];
  if (HIBYTE(v19))
  {
    v22 = 16 * (v6 < 0x10000);
  }

  else
  {
    v22 = (16 * (v6 < 0x10000)) | 8;
  }

  v23 = v22 + v21 - 8;
  v5 = 1 - v23;
  v6 <<= v23;
  if (!(*a2 >> 23))
  {
LABEL_52:
    if (v9)
    {
      v24 = *a2 << 16;
      if (v9 >= 0x10000)
      {
        v24 = *a2 & 0x7FFFFF;
      }

      result = 16 * (v9 < 0x10000);
      LODWORD(v25) = v24 << 8;
      if (HIBYTE(v24))
      {
        v25 = v24;
      }

      else
      {
        v25 = v25;
      }

      v26 = byte_1003E3D58[v25 >> 24];
      if (HIBYTE(v24))
      {
        v27 = 16 * (v9 < 0x10000);
      }

      else
      {
        v27 = (16 * (v9 < 0x10000)) | 8;
      }

      v28 = v27 + v26 - 8;
      v8 = 1 - v28;
      v9 <<= v28;
      goto LABEL_62;
    }

LABEL_80:
    v16 = *a3;
    if (((v11 ^ v7) & 0x80000000) == 0 || v17 | v10)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

LABEL_62:
  v29 = v8 + v5;
  v30 = ((v9 << 7) | 0x40000000) * ((v6 << 7) | 0x40000000);
  if (v30 >> 61)
  {
    v31 = -126;
  }

  else
  {
    v31 = -127;
  }

  v32 = v29 + v31;
  v33 = v30 << (v30 >> 61 == 0);
  if (!(v7 >> 23))
  {
    if (!v10)
    {
      v45 = v11 >> 31;
      v46 = v32 - 1;
      v47 = (v33 >> 31) | ((v33 & 0x7FFFC000) != 0);
      goto LABEL_123;
    }

    v34 = *a3 << 16;
    if (v10 >= 0x10000)
    {
      v34 = *a3 & 0x7FFFFF;
    }

    LODWORD(v35) = v34 << 8;
    result = HIBYTE(v34);
    if (result)
    {
      v35 = v34;
    }

    else
    {
      v35 = v35;
    }

    v36 = byte_1003E3D58[v35 >> 24];
    if (result)
    {
      v37 = 16 * (v10 < 0x10000);
    }

    else
    {
      v37 = (16 * (v10 < 0x10000)) | 8;
    }

    v38 = v37 + v36 - 8;
    v17 = 1 - v38;
    v10 <<= v38;
  }

  v39 = (v10 << 6) | 0x20000000;
  v40 = v32 - v17;
  if (((v11 ^ v7) & 0x80000000) == 0)
  {
    if (v40 <= 0)
    {
      if ((32 - v40) > 0x3E)
      {
        v43 = 1;
      }

      else
      {
        v43 = (v33 >> (32 - v40)) | (v33 << (v40 & 0x3F ^ 0x20u) != 0);
      }

      v44 = v43 + v39;
    }

    else
    {
      if ((v32 - v17) > 0x3Eu)
      {
        v41 = 1;
      }

      else
      {
        v41 = ((v39 << 32) >> (v32 - v17)) | (v39 << 32 << (v17 - v32) != 0);
      }

      v44 = ((v41 + v33) >> 32) | (v41 + v33 != 0);
      v17 = v32;
    }

    v45 = v11 >> 31;
    if (v44 >> 30)
    {
      v46 = v17;
    }

    else
    {
      v46 = v17 - 1;
    }

    if (v44 >> 30)
    {
      v47 = v44;
    }

    else
    {
      v47 = 2 * v44;
    }

    goto LABEL_123;
  }

  v42 = v39 << 32;
  if (((v32 - v17) & 0x8000) != 0)
  {
    v48 = -v40;
    if (v48 > 0x3E)
    {
      v49 = 1;
    }

    else
    {
      v49 = (v33 >> v48) | (v33 << v40 != 0);
    }

    v51 = v42 - v49;
    v45 = v7 >> 31;
  }

  else
  {
    if (v32 == v17)
    {
      if (v33 == v42)
      {
LABEL_86:
        v16 = 0;
        goto LABEL_87;
      }

      v52 = v11 >> 31;
      v45 = (v11 & 0x80000000) == 0;
      if ((v33 - v42) < 0)
      {
        v51 = v42 - v33;
      }

      else
      {
        v45 = v52;
        v51 = v33 - v42;
      }
    }

    else
    {
      if ((v32 - v17) > 0x3Eu)
      {
        v50 = 1;
      }

      else
      {
        v50 = (v42 >> (v32 - v17)) | (v42 << (v17 - v32) != 0);
      }

      v45 = v11 >> 31;
      v51 = v33 - v50;
    }

    v17 = v32;
  }

  v53 = HIDWORD(v51);
  v54 = 32 * (HIDWORD(v51) == 0);
  if (!HIDWORD(v51))
  {
    v53 = v51;
  }

  if (v53 < 0x10000)
  {
    v54 = (32 * (HIDWORD(v51) == 0)) | 0x10;
    LODWORD(v53) = v53 << 16;
  }

  v55 = v54 | 8;
  if (BYTE3(v53))
  {
    v55 = v54;
    v53 = v53;
  }

  else
  {
    v53 = (v53 << 8);
  }

  v56 = v55 + byte_1003E3D58[v53 >> 24];
  v46 = v17 - (v56 - 1);
  if (((v56 - 33) & 0x80) != 0)
  {
    v47 = (v51 >> (33 - v56)) | ((v51 & ~(-1 << (33 - v56))) != 0);
  }

  else
  {
    v47 = v51 << (v56 - 33);
  }

LABEL_123:
  if (v46 >= 0xFDu)
  {
    if ((v46 & 0x8000) != 0)
    {
      v57 = -v46;
      v58 = v57;
      v59 = v47 != 0;
      v47 = (v47 >> v57) | (v47 << -v57 != 0);
      v46 = 0;
      if (v58 > 0x1E)
      {
        v47 = v59;
      }
    }

    else
    {
      if (v46 != 253 || ((v47 + 64) & 0x80000000) != 0)
      {
        if (v45)
        {
          v65 = -8388608;
        }

        else
        {
          v65 = 2139095040;
        }

        *a4 = v65;
        return result;
      }

      v46 = 253;
    }
  }

  v60 = v47 + 64;
  v61 = ~((v47 & 0x7F) == 64);
  if (v45)
  {
    v62 = 0x80000000;
  }

  else
  {
    v62 = 0;
  }

  v63 = v46 << 23;
  v64 = v61 & (v60 >> 7);
  if (!v64)
  {
    v63 = 0;
  }

  *a4 = (v64 | v62) + v63;
  return result;
}