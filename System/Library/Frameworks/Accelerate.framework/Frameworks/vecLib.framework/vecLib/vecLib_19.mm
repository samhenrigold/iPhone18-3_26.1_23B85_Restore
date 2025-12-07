double *sub_236799AD8(double *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 4;
  if (*(a3 + 12))
  {
    v4 = 0;
  }

  v5 = *(a3 + v4);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 4;
    if ((*(a3 + 12) & 1) == 0)
    {
      v7 = 0;
    }

    v8 = *(a3 + v7);
    v9 = *(a3 + 16);
    v10 = *(a3 + 8);
    v11 = *(a4 + 16);
    v12 = *(a4 + 8);
    do
    {
      if (*(a3 + 12))
      {
        v13 = v6;
      }

      else
      {
        v13 = v10 * v6;
      }

      if (*(a3 + 12))
      {
        v14 = v10;
      }

      else
      {
        v14 = 1;
      }

      v15 = *(a4 + 12);
      if (v15)
      {
        v16 = v6;
      }

      else
      {
        v16 = v12 * v6;
      }

      if (v15)
      {
        v17 = v12;
      }

      else
      {
        v17 = 1;
      }

      if (v8 >= 1)
      {
        v18 = (v9 + 8 * v13);
        v19 = 8 * v17;
        v20 = 8 * v14;
        v21 = v8;
        v22 = result;
        v23 = (v11 + 8 * v16);
        do
        {
          v24 = *v22++;
          *v23 = v24 * *v18;
          v23 = (v23 + v19);
          v18 = (v18 + v20);
          --v21;
        }

        while (v21);
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t SparseWriteMatrix(__sFILE *a1, int a2, const char *a3, SparseMatrix_Double *a4)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v4;
  v11 = v5;
  v7 = *&a4->structure.rowIndices;
  v8[0] = *&a4->structure.rowCount;
  v8[1] = v7;
  data = a4->data;
  return sub_236700018(a1, a3, v8);
}

uint64_t SparseWriteBinaryMatrix(int a1, int a2, const char *a3, size_t a4, SparseMatrix_Double *a5, DenseMatrix_Double *a6, DenseMatrix_Double *a7)
{
  if (a2 != 3)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v7;
  v14 = v8;
  v9 = *&a5->structure.rowIndices;
  v11[0] = *&a5->structure.rowCount;
  v11[1] = v9;
  data = a5->data;
  return sub_2367A5454(a1, a3, a4, v11, a6, a7);
}

int *SparseReadMatrix_Double(__sFILE *a1, uint64_t a2, size_t a3, char *a4)
{
  if ((a2 - 2) < 2)
  {
    fwrite("File format only supported with SparseReadBinaryMatrix_*\n", 0x39uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a2 != 1)
  {
    if (!a2)
    {

      return sub_23670039C(a1, a2, a3, a4);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a2);
    return 0;
  }

  return sub_236769998(a1, 1, a3, a4);
}

int32x2_t *SparseReadBinaryMatrix_Double(int64x2_t *a1, unint64_t a2, uint64_t a3, char **a4, unint64_t *a5, int a6)
{
  if (a3 < 2)
  {
    fwrite("File format only supported with SparseReadMatrix_*\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {

      return sub_2366F7434(a1, a2, a3, a4, a5, a6);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a3);
    return 0;
  }

  return sub_23673AC48(a1->i32);
}

_DWORD *SparseReadBinaryAuxilaryData_Double(int a1, char *a2, unint64_t a3, unsigned int a4, int a5)
{
  if (a4 < 2)
  {
    fwrite("File format only supported with SparseReadMatrix_*\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {

      return sub_2366F78D8(a1, a2, a3, a5);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a4);
    return 0;
  }

  return sub_23673AE54(a1, a2, a3, a5);
}

uint64_t SparseWriteMatrix(__sFILE *a1, int a2, const char *a3, SparseMatrix_Float *a4)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v4;
  v11 = v5;
  v7 = *&a4->structure.rowIndices;
  v8[0] = *&a4->structure.rowCount;
  v8[1] = v7;
  data = a4->data;
  return sub_23674ED2C(a1, a3, v8);
}

uint64_t SparseWriteBinaryMatrix(int a1, int a2, const char *a3, size_t a4, SparseMatrix_Float *a5, DenseMatrix_Float *a6, DenseMatrix_Float *a7)
{
  if (a2 != 3)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v7;
  v14 = v8;
  v9 = *&a5->structure.rowIndices;
  v11[0] = *&a5->structure.rowCount;
  v11[1] = v9;
  data = a5->data;
  return sub_2366F76AC(a1, a3, a4, v11, a6, a7);
}

int *SparseReadMatrix_Float(__sFILE *a1, uint64_t a2, size_t a3, char *a4)
{
  if ((a2 - 2) < 2)
  {
    fwrite("File format only supported with SparseReadBinaryMatrix_*\n", 0x39uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a2 != 1)
  {
    if (!a2)
    {

      return sub_23674F0B4(a1, a2, a3, a4);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a2);
    return 0;
  }

  return sub_2366F7F80(a1, 1, a3, a4);
}

int32x2_t *SparseReadBinaryMatrix_Float(int64x2_t *a1, unint64_t a2, uint64_t a3, char **a4, unint64_t *a5, int a6)
{
  if (a3 < 2)
  {
    fwrite("File format only supported with SparseReadMatrix_*\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {

      return sub_2366F7434(a1, a2, a3, a4, a5, a6);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a3);
    return 0;
  }

  return sub_23674CB90(a1->i32);
}

_DWORD *SparseReadBinaryAuxilaryData_Float(int a1, char *a2, unint64_t a3, unsigned int a4, int a5)
{
  if (a4 < 2)
  {
    fwrite("File format only supported with SparseReadMatrix_*\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {

      return sub_2366F75B4(a1, a2, a3, a5);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a4);
    return 0;
  }

  return sub_23674CD8C(a1, a2, a3, a5);
}

uint64_t SparseWriteMatrix(FILE *a1, int a2, const char *a3, uint64_t a4)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v4;
  v11 = v5;
  v7 = *(a4 + 16);
  v8[0] = *a4;
  v8[1] = v7;
  v9 = *(a4 + 32);
  return sub_2367502D8(a1, a3, v8);
}

{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v4;
  v11 = v5;
  v7 = *(a4 + 16);
  v8[0] = *a4;
  v8[1] = v7;
  v9 = *(a4 + 32);
  return sub_23674F7C4(a1, a3, v8);
}

uint64_t SparseWriteBinaryMatrix(int a1, int a2, const void *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 3)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v7;
  v14 = v8;
  v9 = *(a5 + 16);
  v11[0] = *a5;
  v11[1] = v9;
  v12 = *(a5 + 32);
  return sub_2366F7CF4(a1, a3, a4, v11, a6, a7);
}

{
  if (a2 != 3)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v7;
  v14 = v8;
  v9 = *(a5 + 16);
  v11[0] = *a5;
  v11[1] = v9;
  v12 = *(a5 + 32);
  return sub_2366F79D0(a1, a3, a4, v11, a6, a7);
}

int *SparseReadMatrix_Complex_Double(__sFILE *a1, uint64_t a2, size_t a3, char *a4)
{
  if ((a2 - 2) < 2)
  {
    fwrite("File format only supported with SparseReadBinaryMatrix_*\n", 0x39uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a2 != 1)
  {
    if (!a2)
    {

      return sub_236750674(a1, a2, a3, a4);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a2);
    return 0;
  }

  return sub_2366F89C4(a1, 1, a3, a4);
}

int32x2_t *SparseReadBinaryMatrix_Complex_Double(int64x2_t *a1, unint64_t a2, uint64_t a3, char **a4, unint64_t *a5, int a6)
{
  if (a3 < 2)
  {
    fwrite("File format only supported with SparseReadMatrix_*\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {

      return sub_2366F7434(a1, a2, a3, a4, a5, a6);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a3);
    return 0;
  }

  return sub_23674D068(a1->i32);
}

_DWORD *SparseReadBinaryAuxilaryData_Complex_Double(int a1, char *a2, unint64_t a3, unsigned int a4, int a5)
{
  if (a4 < 2)
  {
    fwrite("File format only supported with SparseReadMatrix_*\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {

      return sub_2366F7BFC(a1, a2, a3, a5);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a4);
    return 0;
  }

  return sub_23674D278(a1, a2, a3, a5);
}

int *SparseReadMatrix_Complex_Float(__sFILE *a1, uint64_t a2, size_t a3, char *a4)
{
  if ((a2 - 2) < 2)
  {
    fwrite("File format only supported with SparseReadBinaryMatrix_*\n", 0x39uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a2 != 1)
  {
    if (!a2)
    {

      return sub_23674FB68(a1, a2, a3, a4);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a2);
    return 0;
  }

  return sub_2366F843C(a1, 1, a3, a4);
}

int32x2_t *SparseReadBinaryMatrix_Complex_Float(int64x2_t *a1, unint64_t a2, uint64_t a3, char **a4, unint64_t *a5, int a6)
{
  if (a3 < 2)
  {
    fwrite("File format only supported with SparseReadMatrix_*\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {

      return sub_2366F7434(a1, a2, a3, a4, a5, a6);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a3);
    return 0;
  }

  return sub_23674CE54(a1->i32);
}

_DWORD *SparseReadBinaryAuxilaryData_Complex_Float(int a1, char *a2, unint64_t a3, unsigned int a4, int a5)
{
  if (a4 < 2)
  {
    fwrite("File format only supported with SparseReadMatrix_*\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {

      return sub_2366F78D8(a1, a2, a3, a5);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a4);
    return 0;
  }

  return sub_23673AE54(a1, a2, a3, a5);
}

int *sub_23679A71C(int *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v10 = result;
  v11 = *(result + 28);
  if (*result * v11 >= 1)
  {
    v12 = 0;
    do
    {
      *(a6 + 4 * v12++) = -1;
    }

    while (v12 < *result * v11);
  }

  if (a4)
  {
    v13 = *a4;
    if ((v13 & 0x80000000) == 0)
    {
      v14 = a4 + 1;
      do
      {
        *(a6 + 4 * v13) = 0x7FFFFFFF;
        v15 = *v14++;
        v13 = v15;
      }

      while ((v15 & 0x80000000) == 0);
    }
  }

  v16 = *(a2 + 64);
  if (v16 <= 0)
  {
    v27 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    result = *(a2 + 96);
    v19 = *(a2 + 104);
    v21 = *(a2 + 72);
    v20 = *(a2 + 80);
    v52 = result;
    do
    {
      v22 = *(a2 + 120);
      *(v22 + 8 * v17) = v18;
      v23 = *(a3 + 4 * v17);
      v24 = v17 + 1;
      v25 = *(a3 + 4 * (v17 + 1));
      if (v23 >= v25)
      {
        v27 = v18;
      }

      else
      {
        v26 = *(v10 + 28);
        v27 = v18;
        do
        {
          if (v26)
          {
            v28 = 0;
            do
            {
              v29 = *(a5 + 4 * v23);
              v30 = v28 + v29 * v26;
              if (v17 > *(a6 + 4 * v30))
              {
                *(*(a2 + 128) + 4 * v27++) = v28 + v29 * v26;
                *(a6 + 4 * v30) = v17;
              }

              ++v28;
            }

            while (v26 != v28);
            v25 = *(a3 + 4 * v24);
          }

          ++v23;
        }

        while (v23 < v25);
      }

      v31 = result[v17];
      v32 = result[v24];
      if (v31 < v32)
      {
        do
        {
          v33 = (v22 + 8 * *(v19 + 4 * v31));
          v35 = *v33;
          v34 = v33[1];
          v36 = v34 <= v35;
          v37 = v34 - v35;
          if (!v36)
          {
            v38 = *(a2 + 128);
            v39 = (v38 + 4 * v35);
            do
            {
              v41 = *v39++;
              v40 = v41;
              if (v17 > *(a6 + 4 * v41) && *(v20 + 4 * v40) >= *(*(a2 + 88) + 4 * v17))
              {
                *(v38 + 4 * v27++) = v40;
                *(a6 + 4 * v40) = v17;
              }

              --v37;
            }

            while (v37);
            v32 = result[v24];
          }

          ++v31;
        }

        while (v31 < v32);
        v25 = *(a3 + 4 * v24);
      }

      v42 = *(a3 + 4 * v17);
      if (v42 < v25)
      {
        v43 = *(v10 + 1);
        do
        {
          v44 = (v43 + 8 * *(a5 + 4 * v42));
          v45 = *v44;
          v46 = v44[1];
          if (v45 < v46)
          {
            v47 = *(v10 + 2);
            do
            {
              v48 = *(v47 + 4 * v45);
              if (v42 <= *(v21 + 4 * v48))
              {
                v49 = *(v10 + 28);
                if (*(v10 + 28))
                {
                  v50 = v48 * v49;
                  v51 = (a6 + 4 * v50);
                  do
                  {
                    if (v17 > *v51)
                    {
                      *(*(a2 + 128) + 4 * v27++) = v50;
                      *v51 = v17;
                    }

                    ++v50;
                    ++v51;
                    --v49;
                  }

                  while (v49);
                }
              }

              ++v45;
            }

            while (v45 != v46);
            v25 = *(a3 + 4 * v24);
          }

          ++v42;
        }

        while (v42 < v25);
      }

      sub_23670DC88(*(a2 + 128) + 4 * v18, v27 - v18, v20);
      v16 = *(a2 + 64);
      v17 = v24;
      v18 = v27;
      result = v52;
    }

    while (v24 < v16);
  }

  *(*(a2 + 120) + 8 * v16) = v27;
  return result;
}

void sub_23679A9A8(int *a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7, unsigned int *a8, char *__b)
{
  v16 = *a1;
  v17 = a1[1] * *(a1 + 28);
  v18 = &__b[8 * v17 + 48 + 8 * a6 + 4 * v16 + 4 * a6];
  v19 = &v18[v16 * *(a1 + 28) + 8];
  if (a7)
  {
    v18 += v16 * *(a1 + 28) + 8;
  }

  v20 = (&__b[4 * v17 + 7] & 0xFFFFFFFFFFFFFFF8);
  if (v18 < v20 || (v9 = &v20[4 * a6 + 7] & 0xFFFFFFFFFFFFFFF8, v18 < v9) || (v14 = (v9 + 4 * v16 + 7) & 0xFFFFFFFFFFFFFFF8, v18 < v14) || (v11 = (v14 + 4 * v17 + 7) & 0xFFFFFFFFFFFFFFF8, v18 < v11) || (v21 = (v11 + 8 * a6), v21 > v18))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = a8;
  v10 = a3;
  v12 = a2;
  v13 = a1;
  a2 = v16 * *(a1 + 28);
  if (a7)
  {
    if (v19 >= (&v21[a2 + 7] & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_11:
  v21 = 0;
LABEL_12:
  if (v17 >= 1)
  {
    v22 = 0;
    v23 = *(v10 + 64);
    do
    {
      *(v14 + 4 * *(v23 + 4 * v22)) = v22;
      ++v22;
    }

    while (v17 != v22);
  }

  v124 = v9;
  v119 = v11;
  if (a7)
  {
    v24 = v15;
    bzero(v21, a2);
    v26 = a7;
    v15 = v24;
    v27 = *v26;
    if ((v27 & 0x80000000) == 0)
    {
      v28 = v26 + 1;
      do
      {
        v21[v27] = 1;
        v29 = *v28++;
        v27 = v29;
      }

      while ((v29 & 0x80000000) == 0);
    }
  }

  if (v17 >= 1)
  {
    memset(__b, 255, 4 * v17);
  }

  if (v15)
  {
    v30 = *v15;
    if ((v30 & 0x80000000) == 0)
    {
      v31 = *(v10 + 88);
      v32 = v15 + 1;
      do
      {
        *&__b[4 * v30] = v31;
        v33 = *v32++;
        v30 = v33;
      }

      while ((v33 & 0x80000000) == 0);
    }
  }

  v34 = a5;
  v35 = v124;
  if (v17 >= 1)
  {
    v36 = *(v10 + 64);
    v37 = *(v13 + 28);
    v38 = *(v13 + 1);
    do
    {
      v39 = v17--;
      v40 = (v38 + 8 * (*(v36 + 4 * v17) / v37));
      v42 = *v40;
      v41 = v40[1];
      v43 = v41 <= v42;
      v44 = v41 - v42;
      if (!v43)
      {
        v45 = (*(v13 + 2) + 4 * v42);
        do
        {
          v47 = *v45++;
          v46 = v47;
          if ((v47 & 0x80000000) == 0 && v46 < *v13)
          {
            *(v124 + 4 * v46) = v17;
          }

          --v44;
        }

        while (v44);
      }
    }

    while (v39 > 1);
  }

  v48 = *(v10 + 88);
  if (v48 <= 0)
  {
    v116 = 0;
    v50 = 0;
    v117 = *(v10 + 104);
    v118 = *(v10 + 120);
  }

  else
  {
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = *(v10 + 96);
    v120 = *(v10 + 120);
    v121 = *(v10 + 104);
    LODWORD(v53) = *v52;
    do
    {
      v54 = v49;
      *(v121 + 8 * v49) = v50;
      v55 = v51;
      *(v120 + 8 * v49) = v51;
      v56 = v49 + 1;
      v57 = v52[v49 + 1];
      v125 = v49 + 1;
      if (v53 < v57)
      {
        v58 = *(v10 + 64);
        v59 = *(v13 + 28);
        if (v59 <= 1)
        {
          v60 = 1;
        }

        else
        {
          v60 = *(v13 + 28);
        }

        v53 = v53;
        v61 = 0xFFFFFFFFLL;
        do
        {
          v62 = (*(v58 + 4 * v53) / v59);
          if (v62 == v61)
          {
            v62 = v61;
          }

          else
          {
            v63 = (*(v13 + 1) + 8 * v62);
            v64 = *v63;
            v65 = v63[1];
            if (v64 < v65)
            {
              v66 = *(v13 + 2);
              do
              {
                v67 = *(v66 + 4 * v64);
                if ((v67 & 0x80000000) == 0 && v67 < *v13)
                {
                  v68 = *(v35 + 4 * v67);
                  if (v68 == v53)
                  {
                    v69 = 0;
                    v70 = 0;
LABEL_49:
                    ++v69;
                    do
                    {
                      if (!v21 || v21[v67 * v59 - 1 + v69] != 1)
                      {
                        *(*(v10 + 128) + 8 * v51) = v67 * v59 + v69 - 1;
                        *&v20[4 * (v51++ - v55)] = v68;
                        v70 = 1;
                        if (v69 != v60)
                        {
                          goto LABEL_49;
                        }

                        goto LABEL_57;
                      }

                      ++v69;
                    }

                    while (v69 - v60 != 1);
                    if ((v70 & 1) == 0)
                    {
                      goto LABEL_66;
                    }

LABEL_57:
                    v71 = (*(v12 + 8) + 8 * v67);
                    v72 = *v71;
                    v73 = v71[1];
                    if (*v71 < v73)
                    {
                      v74 = *(v12 + 16);
                      do
                      {
                        v75 = *(v74 + 4 * v72);
                        if ((v75 & 0x80000000) == 0 && v75 < *v12)
                        {
                          v76 = v75 * v59;
                          v77 = v60;
                          do
                          {
                            if (v54 > *&__b[4 * v76])
                            {
                              *(*(v10 + 112) + 4 * v50++) = v76;
                              *&__b[4 * v76] = v54;
                            }

                            ++v76;
                            --v77;
                          }

                          while (v77);
                        }

                        ++v72;
                      }

                      while (v72 != v73);
                    }

LABEL_66:
                    v35 = v124;
                    v56 = v125;
                  }
                }

                ++v64;
              }

              while (v64 != v65);
              v57 = v52[v56];
              v34 = a5;
            }
          }

          ++v53;
          v61 = v62;
        }

        while (v53 < v57);
      }

      v78 = *(a4 + 4 * v54);
      if (v78 >= *(a4 + 4 * v56))
      {
        v80 = v121;
      }

      else
      {
        v79 = &v20[-4 * v55];
        v80 = v121;
        do
        {
          v81 = *(v34 + 4 * v78);
          v82 = *(v121 + 8 * v81);
          v83 = v81 + 1;
          v84 = *(v121 + 8 * (v81 + 1));
          v85 = v84 - v82;
          if (v84 > v82)
          {
            v86 = *(v10 + 112);
            v87 = (v86 + 4 * v82);
            do
            {
              v89 = *v87++;
              v88 = v89;
              if (v54 > *&__b[4 * v89])
              {
                *(v86 + 4 * v50++) = v88;
                *&__b[4 * v88] = v54;
              }

              --v85;
            }

            while (v85);
          }

          v90 = v52[v83];
          v91 = v52[v81];
          if ((*(v120 + 8 * v83) - *(v120 + 8 * v81)) >= v84 - v82)
          {
            v92 = v84 - v82;
          }

          else
          {
            v92 = *(v120 + 8 * v83) - *(v120 + 8 * v81);
          }

          if (v90 - v91 < v92)
          {
            v93 = 0;
            v94 = *(v10 + 128) + 8 * v51;
            v95 = *(v10 + 112) + 4 * v82 + 4 * v90 - 4 * v91;
            v96 = v91 + v92 - v90;
            do
            {
              *(v94 + 8 * v93) = v93 + *(v10 + 136) * v83;
              *&v79[4 * v51 + 4 * v93] = *(v14 + 4 * *(v95 + 4 * v93));
              ++v93;
            }

            while (v96 != v93);
            v51 += v93;
          }

          ++v78;
        }

        while (v78 < *(a4 + 4 * v56));
      }

      sub_23670DC88(*(v10 + 112) + 4 * *(v80 + 8 * v54), v50 - *(v80 + 8 * v54), v14);
      v97 = *(*(v10 + 120) + 8 * v54);
      sub_23670DCD0(v51 - v97, *(v10 + 128) + 8 * v97, v20, v119);
      v120 = *(v10 + 120);
      v98 = (v51 - *(v120 + 8 * v54));
      v121 = *(v10 + 104);
      v99 = *(v121 + 8 * v54);
      if (v98 < 1)
      {
        v105 = *(v121 + 8 * v54);
        v34 = a5;
        v35 = v124;
        v49 = v125;
        v103 = xmmword_23681F920;
        v102 = xmmword_23681F910;
      }

      else
      {
        v100 = 0;
        v101 = *(v10 + 112);
        v34 = a5;
        v35 = v124;
        v49 = v125;
        v103 = xmmword_23681F920;
        v102 = xmmword_23681F910;
        do
        {
          if (*(v14 + 4 * *(v101 + 4 * v99)) >= *&v20[4 * v100])
          {
            v105 = v99;
          }

          else
          {
            v104 = *(v10 + 144);
            do
            {
              *(v104 + 4 * v99) = v100;
              v105 = v99 + 1;
              v106 = *(v14 + 4 * *(v101 + 4 + 4 * v99++));
            }

            while (v106 < *&v20[4 * v100]);
          }

          ++v100;
          v99 = v105;
        }

        while (v100 != v98);
      }

      v107 = v50 - v105;
      if (v50 > v105)
      {
        v108 = 0;
        v109 = (v107 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v110 = vdupq_n_s64(v107 - 1);
        v111 = (*(v10 + 144) + 4 * v105 + 8);
        do
        {
          v112 = vdupq_n_s64(v108);
          v113 = vmovn_s64(vcgeq_u64(v110, vorrq_s8(v112, v103)));
          if (vuzp1_s16(v113, *v110.i8).u8[0])
          {
            *(v111 - 2) = v98;
          }

          if (vuzp1_s16(v113, *&v110).i8[2])
          {
            *(v111 - 1) = v98;
          }

          if (vuzp1_s16(*&v110, vmovn_s64(vcgeq_u64(v110, vorrq_s8(v112, v102)))).i32[1])
          {
            *v111 = v98;
            v111[1] = v98;
          }

          v108 += 4;
          v111 += 4;
        }

        while (v109 != v108);
      }

      v52 = *(v10 + 96);
      v114 = v52[v54];
      LODWORD(v53) = v52[v49];
      if (v114 < v53)
      {
        v115 = *(v10 + 64);
        do
        {
          *&__b[4 * *(v115 + 4 * v114++)] = *(v10 + 88) + 1;
          v53 = v52[v49];
        }

        while (v114 < v53);
      }

      v48 = *(v10 + 88);
    }

    while (v49 < v48);
    v116 = v51;
    v118 = v120;
    v117 = v121;
  }

  *(v117 + 8 * v48) = v50;
  *(v118 + 8 * v48) = v116;
}

int64_t _SparseSpMV_Complex_Float(uint64_t a1, uint64_t a2, char a3, uint64_t a4, float a5, float a6)
{
  v11 = 4;
  if (*(a4 + 12))
  {
    v11 = 0;
  }

  v12 = *(a4 + v11);
  result = *(a1 + 28);
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v772 = *(a1 + 32);
  if ((a3 & 1) == 0 && v12 >= 1)
  {
    v16 = 0;
    v17 = 4;
    if ((*(a1 + 24) & 1) == 0)
    {
      v17 = 0;
    }

    v18 = *(a1 + v17) * result;
    do
    {
      if (v18 >= 1)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*(a4 + 12))
          {
            v20 = i;
          }

          else
          {
            v20 = v16;
          }

          if (*(a4 + 12))
          {
            v21 = v16;
          }

          else
          {
            v21 = i;
          }

          *(*(a4 + 16) + 8 * (v21 + *(a4 + 8) * v20)) = 0;
        }
      }

      ++v16;
    }

    while (v16 != v12);
  }

  v771 = (result * result);
  v22 = (*(a1 + 24) >> 2) & 7;
  v776 = v12;
  v787 = result;
  v775 = v14;
  v774 = v15;
  if (v22 > 2)
  {
    if (v22 == 3)
    {
      v475 = *(a1 + 4);
      if (v475 >= 1)
      {
        v476 = 0;
        v477 = 0;
        v478 = a5;
        v479 = a6;
        v480 = result + 1;
        v481 = 8 * v771;
        v482 = 8 * result;
        v483 = *v14;
        v778 = result - 1;
        v484 = 8 * result + 8;
        v780 = 1;
        do
        {
          result = v477++;
          v485 = v14[v477];
          if (v483 < v485)
          {
            v486 = result * v787;
            v487 = v772 + 4 + v481 * v483;
            v488 = v772 + 12 + v481 * v483;
            do
            {
              v489 = *(v15 + 4 * v483);
              v490 = *(a1 + 24);
              if ((v490 & 2) == 0 || result <= v489)
              {
                v491 = result < v489 && (*(a1 + 24) & 2) == 0;
                if (!v491 && (v489 & 0x80000000) == 0 && v489 < *a1)
                {
                  if (result == v489)
                  {
                    v492 = v772 + 8 * v483 * v771;
                    if ((v490 & 2) != 0)
                    {
                      if (v776 >= 1)
                      {
                        v493 = 0;
                        v494 = v489 * v787;
                        do
                        {
                          v495 = v787;
                          if (v787)
                          {
                            v496 = 0;
                            v497 = v778;
                            v498 = v780;
                            v499 = v494 + 1;
                            v792 = v488;
                            do
                            {
                              v783 = v496 + 1;
                              v786 = v496;
                              if (v496 + 1 < v495)
                              {
                                v500 = 0;
                                v501 = v496 + v486;
                                v502 = v494 + v496;
                                v503 = v792;
                                do
                                {
                                  v504 = *(v503 - 1);
                                  v505 = *v503;
                                  v506 = *(a1 + 24);
                                  if (v506 & 0x20) != 0 && (v506)
                                  {
                                    v507 = v504;
                                    v508 = v478 * v507 + v479 * v505;
                                    v509 = v479 * v507 - v478 * v505;
                                    if (*(a2 + 12))
                                    {
                                      v510 = v501;
                                    }

                                    else
                                    {
                                      v510 = v493;
                                    }

                                    if (*(a2 + 12))
                                    {
                                      v511 = v493;
                                    }

                                    else
                                    {
                                      v511 = v501;
                                    }

                                    v512 = (*(a2 + 16) + 8 * (v511 + *(a2 + 8) * v510));
                                    v513 = *v512;
                                    v514 = v512[1];
                                    v515 = v509 * v513 + v508 * v514;
                                    v516 = *(a4 + 8);
                                    if (*(a4 + 12))
                                    {
                                      v517 = v493 + v516 * (v499 + v500);
                                    }

                                    else
                                    {
                                      v517 = v499 + v500 + v493 * v516;
                                    }

                                    v543 = (*(a4 + 16) + 8 * v517);
                                    v544 = v508 * v513 - v509 * v514 + *v543;
                                    v545 = v515 + v543[1];
                                    *v543 = v544;
                                    v543[1] = v545;
                                    v546 = *(v503 - 1);
                                    v547 = *v503;
                                    v548 = v478 * v546 + v479 * v547;
                                    v549 = v479 * v546 - v478 * v547;
                                    if (*(a2 + 12))
                                    {
                                      v550 = v493 + *(a2 + 8) * (v498 + v500);
                                    }

                                    else
                                    {
                                      v550 = v498 + v500 + v493 * *(a2 + 8);
                                    }

                                    v551 = (*(a2 + 16) + 8 * v550);
                                    v552 = *v551;
                                    v553 = v551[1];
                                    v554 = v549 * v552 + v548 * v553;
                                    if (*(a4 + 12))
                                    {
                                      v555 = v502;
                                    }

                                    else
                                    {
                                      v555 = v493;
                                    }

                                    if (*(a4 + 12))
                                    {
                                      v556 = v493;
                                    }

                                    else
                                    {
                                      v556 = v502;
                                    }

                                    v540 = (*(a4 + 16) + 8 * (v556 + *(a4 + 8) * v555));
                                    v541 = v548 * v552 - v549 * v553 + *v540;
                                    v542 = v554 + v540[1];
                                  }

                                  else
                                  {
                                    v518 = (a5 * v504) - (a6 * v505);
                                    v519 = (a6 * v504) + (a5 * v505);
                                    if (*(a2 + 12))
                                    {
                                      v520 = v501;
                                    }

                                    else
                                    {
                                      v520 = v493;
                                    }

                                    if (*(a2 + 12))
                                    {
                                      v521 = v493;
                                    }

                                    else
                                    {
                                      v521 = v501;
                                    }

                                    v522 = (*(a2 + 16) + 8 * (v521 + *(a2 + 8) * v520));
                                    v523 = v522[1];
                                    v524 = (v518 * *v522) - (v519 * v523);
                                    v525 = (v519 * *v522) + (v518 * v523);
                                    v526 = *(a4 + 8);
                                    if (*(a4 + 12))
                                    {
                                      v527 = v493 + v526 * (v499 + v500);
                                    }

                                    else
                                    {
                                      v527 = v499 + v500 + v493 * v526;
                                    }

                                    v528 = (*(a4 + 16) + 8 * v527);
                                    v529 = v525 + v528[1];
                                    *v528 = v524 + *v528;
                                    v528[1] = v529;
                                    v530 = *(v503 - 1);
                                    v531 = (a5 * v530) - (a6 * *v503);
                                    v532 = (a6 * v530) + (a5 * *v503);
                                    if (*(a2 + 12))
                                    {
                                      v533 = v493 + *(a2 + 8) * (v498 + v500);
                                    }

                                    else
                                    {
                                      v533 = v498 + v500 + v493 * *(a2 + 8);
                                    }

                                    v534 = (*(a2 + 16) + 8 * v533);
                                    v535 = v534[1];
                                    v536 = (v531 * *v534) - (v532 * v535);
                                    v537 = (v532 * *v534) + (v531 * v535);
                                    if (*(a4 + 12))
                                    {
                                      v538 = v502;
                                    }

                                    else
                                    {
                                      v538 = v493;
                                    }

                                    if (*(a4 + 12))
                                    {
                                      v539 = v493;
                                    }

                                    else
                                    {
                                      v539 = v502;
                                    }

                                    v540 = (*(a4 + 16) + 8 * (v539 + *(a4 + 8) * v538));
                                    v541 = v536 + *v540;
                                    v542 = v537 + v540[1];
                                  }

                                  *v540 = v541;
                                  v540[1] = v542;
                                  ++v500;
                                  v503 += 2;
                                }

                                while (v497 != v500);
                              }

                              v557 = (v492 + 8 * v786 * v480);
                              v558 = *v557;
                              v559 = v557[1];
                              v560 = *(a1 + 24);
                              if (v560 & 0x20) != 0 && (v560)
                              {
                                v561 = v558;
                                v562 = v559;
                                v563 = v478 * v561 + v479 * v562;
                                v564 = v479 * v561 - v478 * v562;
                                if (*(a2 + 12))
                                {
                                  v565 = v493 + *(a2 + 8) * (v786 + v486);
                                }

                                else
                                {
                                  v565 = v786 + v486 + *(a2 + 8) * v493;
                                }

                                v578 = (*(a2 + 16) + 8 * v565);
                                v579 = *v578;
                                v580 = v578[1];
                                v581 = v564 * v579 + v563 * v580;
                                v582 = *(a4 + 8);
                                if (*(a4 + 12))
                                {
                                  v583 = v493 + v582 * (v494 + v786);
                                }

                                else
                                {
                                  v583 = v494 + v786 + v582 * v493;
                                }

                                v575 = (*(a4 + 16) + 8 * v583);
                                v576 = v563 * v579 - v564 * v580 + *v575;
                                v577 = v581 + v575[1];
                              }

                              else
                              {
                                v566 = (a5 * v558) - (a6 * v559);
                                v567 = (a6 * v558) + (a5 * v559);
                                if (*(a2 + 12))
                                {
                                  v568 = v493 + *(a2 + 8) * (v786 + v486);
                                }

                                else
                                {
                                  v568 = v786 + v486 + *(a2 + 8) * v493;
                                }

                                v569 = (*(a2 + 16) + 8 * v568);
                                v570 = v569[1];
                                v571 = (v566 * *v569) - (v567 * v570);
                                v572 = (v567 * *v569) + (v566 * v570);
                                v573 = *(a4 + 8);
                                if (*(a4 + 12))
                                {
                                  v574 = v493 + v573 * (v494 + v786);
                                }

                                else
                                {
                                  v574 = v494 + v786 + v573 * v493;
                                }

                                v575 = (*(a4 + 16) + 8 * v574);
                                v576 = v571 + *v575;
                                v577 = v572 + v575[1];
                              }

                              *v575 = v576;
                              v575[1] = v577;
                              --v497;
                              v792 = (v792 + v484);
                              ++v499;
                              ++v498;
                              v496 = v783;
                              v495 = v787;
                            }

                            while (v783 != v787);
                          }

                          ++v493;
                        }

                        while (v493 != v776);
                      }
                    }

                    else if (v776 >= 1)
                    {
                      v653 = 0;
                      v654 = v489 * v787;
                      do
                      {
                        if (v787)
                        {
                          v655 = 0;
                          v656 = v487;
                          do
                          {
                            if (v655)
                            {
                              v657 = v476;
                              v658 = v654;
                              v659 = v656;
                              v660 = v655;
                              do
                              {
                                v661 = *(v659 - 1);
                                v662 = *v659;
                                v663 = *(a1 + 24);
                                if (v663 & 0x20) != 0 && (v663)
                                {
                                  v664 = v661;
                                  v665 = v662;
                                  v666 = v478 * v664 + v479 * v665;
                                  v667 = v479 * v664 - v478 * v665;
                                  if (*(a2 + 12))
                                  {
                                    v668 = v655 + v486;
                                  }

                                  else
                                  {
                                    v668 = v653;
                                  }

                                  if (*(a2 + 12))
                                  {
                                    v669 = v653;
                                  }

                                  else
                                  {
                                    v669 = v655 + v486;
                                  }

                                  v670 = (*(a2 + 16) + 8 * (v669 + *(a2 + 8) * v668));
                                  v671 = *v670;
                                  v672 = v670[1];
                                  v673 = v667 * v671 + v666 * v672;
                                  v674 = *(a4 + 8);
                                  if (*(a4 + 12))
                                  {
                                    v675 = v653 + v674 * v658;
                                  }

                                  else
                                  {
                                    v675 = v658 + v653 * v674;
                                  }

                                  v701 = (*(a4 + 16) + 8 * v675);
                                  v702 = v666 * v671 - v667 * v672 + *v701;
                                  v703 = v673 + v701[1];
                                  *v701 = v702;
                                  v701[1] = v703;
                                  v704 = *(v659 - 1);
                                  v705 = *v659;
                                  v706 = v478 * v704 + v479 * v705;
                                  v707 = v479 * v704 - v478 * v705;
                                  if (*(a2 + 12))
                                  {
                                    v708 = v653 + *(a2 + 8) * v657;
                                  }

                                  else
                                  {
                                    v708 = v657 + v653 * *(a2 + 8);
                                  }

                                  v709 = (*(a2 + 16) + 8 * v708);
                                  v710 = *v709;
                                  v711 = v709[1];
                                  v712 = v707 * v710 + v706 * v711;
                                  if (*(a4 + 12))
                                  {
                                    v713 = v654 + v655;
                                  }

                                  else
                                  {
                                    v713 = v653;
                                  }

                                  if (*(a4 + 12))
                                  {
                                    v714 = v653;
                                  }

                                  else
                                  {
                                    v714 = v654 + v655;
                                  }

                                  v698 = (*(a4 + 16) + 8 * (v714 + *(a4 + 8) * v713));
                                  v699 = v706 * v710 - v707 * v711 + *v698;
                                  v700 = v712 + v698[1];
                                }

                                else
                                {
                                  v676 = (a5 * v661) - (a6 * v662);
                                  v677 = (a6 * v661) + (a5 * v662);
                                  if (*(a2 + 12))
                                  {
                                    v678 = v655 + v486;
                                  }

                                  else
                                  {
                                    v678 = v653;
                                  }

                                  if (*(a2 + 12))
                                  {
                                    v679 = v653;
                                  }

                                  else
                                  {
                                    v679 = v655 + v486;
                                  }

                                  v680 = (*(a2 + 16) + 8 * (v679 + *(a2 + 8) * v678));
                                  v681 = v680[1];
                                  v682 = (v676 * *v680) - (v677 * v681);
                                  v683 = (v677 * *v680) + (v676 * v681);
                                  v684 = *(a4 + 8);
                                  if (*(a4 + 12))
                                  {
                                    v685 = v653 + v684 * v658;
                                  }

                                  else
                                  {
                                    v685 = v658 + v653 * v684;
                                  }

                                  v686 = (*(a4 + 16) + 8 * v685);
                                  v687 = v683 + v686[1];
                                  *v686 = v682 + *v686;
                                  v686[1] = v687;
                                  v688 = *(v659 - 1);
                                  v689 = (a5 * v688) - (a6 * *v659);
                                  v690 = (a6 * v688) + (a5 * *v659);
                                  if (*(a2 + 12))
                                  {
                                    v691 = v653 + *(a2 + 8) * v657;
                                  }

                                  else
                                  {
                                    v691 = v657 + v653 * *(a2 + 8);
                                  }

                                  v692 = (*(a2 + 16) + 8 * v691);
                                  v693 = v692[1];
                                  v694 = (v689 * *v692) - (v690 * v693);
                                  v695 = (v690 * *v692) + (v689 * v693);
                                  if (*(a4 + 12))
                                  {
                                    v696 = v654 + v655;
                                  }

                                  else
                                  {
                                    v696 = v653;
                                  }

                                  if (*(a4 + 12))
                                  {
                                    v697 = v653;
                                  }

                                  else
                                  {
                                    v697 = v654 + v655;
                                  }

                                  v698 = (*(a4 + 16) + 8 * (v697 + *(a4 + 8) * v696));
                                  v699 = v694 + *v698;
                                  v700 = v695 + v698[1];
                                }

                                *v698 = v699;
                                v698[1] = v700;
                                v659 += 2;
                                ++v658;
                                ++v657;
                                --v660;
                              }

                              while (v660);
                            }

                            v715 = (v492 + 8 * v655 * v480);
                            v716 = *v715;
                            v717 = v715[1];
                            v718 = *(a1 + 24);
                            if (v718 & 0x20) != 0 && (v718)
                            {
                              v719 = v716;
                              v720 = v717;
                              v721 = v478 * v719 + v479 * v720;
                              v722 = v479 * v719 - v478 * v720;
                              if (*(a2 + 12))
                              {
                                v723 = v653 + *(a2 + 8) * (v655 + v486);
                              }

                              else
                              {
                                v723 = v655 + v486 + *(a2 + 8) * v653;
                              }

                              v736 = (*(a2 + 16) + 8 * v723);
                              v737 = *v736;
                              v738 = v736[1];
                              v739 = v722 * v737 + v721 * v738;
                              v740 = *(a4 + 8);
                              if (*(a4 + 12))
                              {
                                v741 = v653 + v740 * (v654 + v655);
                              }

                              else
                              {
                                v741 = v654 + v655 + v740 * v653;
                              }

                              v733 = (*(a4 + 16) + 8 * v741);
                              v734 = v721 * v737 - v722 * v738 + *v733;
                              v735 = v739 + v733[1];
                            }

                            else
                            {
                              v724 = (a5 * v716) - (a6 * v717);
                              v725 = (a6 * v716) + (a5 * v717);
                              if (*(a2 + 12))
                              {
                                v726 = v653 + *(a2 + 8) * (v655 + v486);
                              }

                              else
                              {
                                v726 = v655 + v486 + *(a2 + 8) * v653;
                              }

                              v727 = (*(a2 + 16) + 8 * v726);
                              v728 = v727[1];
                              v729 = (v724 * *v727) - (v725 * v728);
                              v730 = (v725 * *v727) + (v724 * v728);
                              v731 = *(a4 + 8);
                              if (*(a4 + 12))
                              {
                                v732 = v653 + v731 * (v654 + v655);
                              }

                              else
                              {
                                v732 = v654 + v655 + v731 * v653;
                              }

                              v733 = (*(a4 + 16) + 8 * v732);
                              v734 = v729 + *v733;
                              v735 = v730 + v733[1];
                            }

                            *v733 = v734;
                            v733[1] = v735;
                            ++v655;
                            v656 = (v656 + v482);
                          }

                          while (v655 != v787);
                        }

                        ++v653;
                      }

                      while (v653 != v776);
                    }
                  }

                  else if (v776 >= 1)
                  {
                    v584 = 0;
                    v585 = v489 * v787;
                    do
                    {
                      v586 = v787;
                      if (v787)
                      {
                        v587 = 0;
                        v588 = v487;
                        do
                        {
                          v589 = v585;
                          v590 = v588;
                          do
                          {
                            v591 = *(v590 - 1);
                            v592 = *v590;
                            v593 = *(a1 + 24);
                            if (v593 & 0x20) != 0 && (v593)
                            {
                              v594 = v591;
                              v595 = v592;
                              v596 = v478 * v594 + v479 * v595;
                              v597 = v479 * v594 - v478 * v595;
                              if (*(a2 + 12))
                              {
                                v598 = v587 + v486;
                              }

                              else
                              {
                                v598 = v584;
                              }

                              if (*(a2 + 12))
                              {
                                v599 = v584;
                              }

                              else
                              {
                                v599 = v587 + v486;
                              }

                              v600 = (*(a2 + 16) + 8 * (v599 + *(a2 + 8) * v598));
                              v601 = *v600;
                              v602 = v600[1];
                              v603 = v597 * v601 + v596 * v602;
                              v604 = *(a4 + 8);
                              if (*(a4 + 12))
                              {
                                v605 = v584 + v604 * v589;
                              }

                              else
                              {
                                v605 = v589 + v584 * v604;
                              }

                              v616 = (*(a4 + 16) + 8 * v605);
                              v617 = v596 * v601 - v597 * v602 + *v616;
                              v618 = v603 + v616[1];
                            }

                            else
                            {
                              v606 = (a5 * v591) - (a6 * v592);
                              v607 = (a6 * v591) + (a5 * v592);
                              if (*(a2 + 12))
                              {
                                v608 = v587 + v486;
                              }

                              else
                              {
                                v608 = v584;
                              }

                              if (*(a2 + 12))
                              {
                                v609 = v584;
                              }

                              else
                              {
                                v609 = v587 + v486;
                              }

                              v610 = (*(a2 + 16) + 8 * (v609 + *(a2 + 8) * v608));
                              v611 = v610[1];
                              v612 = (v606 * *v610) - (v607 * v611);
                              v613 = (v607 * *v610) + (v606 * v611);
                              v614 = *(a4 + 8);
                              if (*(a4 + 12))
                              {
                                v615 = v584 + v614 * v589;
                              }

                              else
                              {
                                v615 = v589 + v584 * v614;
                              }

                              v616 = (*(a4 + 16) + 8 * v615);
                              v617 = v612 + *v616;
                              v618 = v613 + v616[1];
                            }

                            *v616 = v617;
                            v616[1] = v618;
                            v590 += 2;
                            ++v589;
                            --v586;
                          }

                          while (v586);
                          ++v587;
                          v588 = (v588 + v482);
                          v586 = v787;
                        }

                        while (v587 != v787);
                      }

                      ++v584;
                    }

                    while (v584 != v776);
                    for (j = 0; j != v776; ++j)
                    {
                      v620 = v787;
                      if (v787)
                      {
                        v621 = 0;
                        v622 = v487;
                        do
                        {
                          v623 = v585;
                          v624 = v622;
                          do
                          {
                            v625 = *(v624 - 1);
                            v626 = *v624;
                            v627 = *(a1 + 24);
                            if (v627 & 0x20) != 0 && (v627)
                            {
                              v628 = v625;
                              v629 = v626;
                              v630 = v478 * v628 + v479 * v629;
                              v631 = v479 * v628 - v478 * v629;
                              v632 = *(a2 + 8);
                              if (*(a2 + 12))
                              {
                                v633 = j + v632 * v623;
                              }

                              else
                              {
                                v633 = v623 + j * v632;
                              }

                              v647 = (*(a2 + 16) + 8 * v633);
                              v648 = *v647;
                              v649 = v647[1];
                              v650 = v631 * v648 + v630 * v649;
                              if (*(a4 + 12))
                              {
                                v651 = v621 + v486;
                              }

                              else
                              {
                                v651 = j;
                              }

                              if (*(a4 + 12))
                              {
                                v652 = j;
                              }

                              else
                              {
                                v652 = v621 + v486;
                              }

                              v644 = (*(a4 + 16) + 8 * (v652 + *(a4 + 8) * v651));
                              v645 = v630 * v648 - v631 * v649 + *v644;
                              v646 = v650 + v644[1];
                            }

                            else
                            {
                              v634 = (a5 * v625) - (a6 * v626);
                              v635 = (a6 * v625) + (a5 * v626);
                              v636 = *(a2 + 8);
                              if (*(a2 + 12))
                              {
                                v637 = j + v636 * v623;
                              }

                              else
                              {
                                v637 = v623 + j * v636;
                              }

                              v638 = (*(a2 + 16) + 8 * v637);
                              v639 = v638[1];
                              v640 = (v634 * *v638) - (v635 * v639);
                              v641 = (v635 * *v638) + (v634 * v639);
                              if (*(a4 + 12))
                              {
                                v642 = v621 + v486;
                              }

                              else
                              {
                                v642 = j;
                              }

                              if (*(a4 + 12))
                              {
                                v643 = j;
                              }

                              else
                              {
                                v643 = v621 + v486;
                              }

                              v644 = (*(a4 + 16) + 8 * (v643 + *(a4 + 8) * v642));
                              v645 = v640 + *v644;
                              v646 = v641 + v644[1];
                            }

                            *v644 = v645;
                            v644[1] = v646;
                            v624 += 2;
                            ++v623;
                            --v620;
                          }

                          while (v620);
                          ++v621;
                          v622 = (v622 + v482);
                          v620 = v787;
                        }

                        while (v621 != v787);
                      }
                    }
                  }
                }
              }

              ++v483;
              v14 = v775;
              v485 = v775[v477];
              v487 += v481;
              v488 += v481;
              v15 = v774;
            }

            while (v483 < v485);
            v475 = *(a1 + 4);
          }

          v476 += v787;
          v780 += v787;
          v483 = v485;
        }

        while (v477 < v475);
      }

      return result;
    }

    if (v22 == 7)
    {
      v123 = *(a1 + 4);
      if (v123 >= 1)
      {
        v124 = 0;
        v125 = 0;
        v126 = a5;
        v127 = a6;
        v128 = result + 1;
        v129 = 8 * (result * result);
        v130 = 8 * result;
        v131 = *v14;
        v132 = result - 1;
        v133 = 8 * result + 8;
        v134 = 1;
        do
        {
          result = v125++;
          v135 = v14[v125];
          if (v131 < v135)
          {
            v136 = result * v787;
            v137 = v772 + 4 + v129 * v131;
            v138 = v772 + 12 + v129 * v131;
            do
            {
              v139 = *(v15 + 4 * v131);
              v140 = *(a1 + 24);
              if ((v140 & 2) == 0 || result <= v139)
              {
                v141 = result < v139 && (*(a1 + 24) & 2) == 0;
                if (!v141 && (v139 & 0x80000000) == 0 && v139 < *a1)
                {
                  if (result == v139)
                  {
                    v142 = v772 + 8 * v131 * v771;
                    if ((v140 & 2) != 0)
                    {
                      if (v776 >= 1)
                      {
                        v143 = 0;
                        v777 = v139 * v787;
                        v773 = v139 * v787 + 1;
                        do
                        {
                          v144 = v787;
                          if (v787)
                          {
                            v145 = 0;
                            v789 = v134;
                            v146 = v773;
                            v784 = v138;
                            v147 = v132;
                            do
                            {
                              v779 = v145 + 1;
                              v781 = v145;
                              if (v145 + 1 < v144)
                              {
                                v148 = 0;
                                v149 = v784;
                                v150 = v145 + v136;
                                v151 = v777 + v145;
                                do
                                {
                                  v152 = *(v149 - 1);
                                  v153 = *v149;
                                  v154 = *(a1 + 24);
                                  if ((v154 & 0x20) != 0 || (v154 & 1) == 0)
                                  {
                                    v166 = (a5 * v152) - (a6 * v153);
                                    v167 = (a6 * v152) + (a5 * v153);
                                    if (*(a2 + 12))
                                    {
                                      v168 = v150;
                                    }

                                    else
                                    {
                                      v168 = v143;
                                    }

                                    if (*(a2 + 12))
                                    {
                                      v169 = v143;
                                    }

                                    else
                                    {
                                      v169 = v150;
                                    }

                                    v170 = (*(a2 + 16) + 8 * (v169 + *(a2 + 8) * v168));
                                    v171 = v170[1];
                                    v172 = (v166 * *v170) - (v167 * v171);
                                    v173 = (v167 * *v170) + (v166 * v171);
                                    v174 = *(a4 + 8);
                                    if (*(a4 + 12))
                                    {
                                      v175 = v143 + v174 * (v146 + v148);
                                    }

                                    else
                                    {
                                      v175 = v146 + v148 + v143 * v174;
                                    }

                                    v176 = (*(a4 + 16) + 8 * v175);
                                    v177 = v173 + v176[1];
                                    *v176 = v172 + *v176;
                                    v176[1] = v177;
                                    v178 = *(v149 - 1);
                                    v179 = *v149;
                                    v180 = v126 * v178 + v127 * v179;
                                    v181 = v127 * v178 - v126 * v179;
                                    if (*(a2 + 12))
                                    {
                                      v182 = v143 + *(a2 + 8) * (v789 + v148);
                                    }

                                    else
                                    {
                                      v182 = v789 + v148 + v143 * *(a2 + 8);
                                    }

                                    v183 = (*(a2 + 16) + 8 * v182);
                                    v184 = *v183;
                                    v185 = v183[1];
                                    v186 = v181 * v184 + v180 * v185;
                                    if (*(a4 + 12))
                                    {
                                      v187 = v151;
                                    }

                                    else
                                    {
                                      v187 = v143;
                                    }

                                    if (*(a4 + 12))
                                    {
                                      v188 = v143;
                                    }

                                    else
                                    {
                                      v188 = v151;
                                    }

                                    v189 = (*(a4 + 16) + 8 * (v188 + *(a4 + 8) * v187));
                                    v190 = v180 * v184 - v181 * v185 + *v189;
                                    v191 = v186 + v189[1];
                                  }

                                  else
                                  {
                                    v155 = v152;
                                    v156 = v126 * v155 + v127 * v153;
                                    v157 = v127 * v155 - v126 * v153;
                                    if (*(a2 + 12))
                                    {
                                      v158 = v150;
                                    }

                                    else
                                    {
                                      v158 = v143;
                                    }

                                    if (*(a2 + 12))
                                    {
                                      v159 = v143;
                                    }

                                    else
                                    {
                                      v159 = v150;
                                    }

                                    v160 = (*(a2 + 16) + 8 * (v159 + *(a2 + 8) * v158));
                                    v161 = *v160;
                                    v162 = v160[1];
                                    v163 = v157 * v161 + v156 * v162;
                                    v164 = *(a4 + 8);
                                    if (*(a4 + 12))
                                    {
                                      v165 = v143 + v164 * (v146 + v148);
                                    }

                                    else
                                    {
                                      v165 = v146 + v148 + v143 * v164;
                                    }

                                    v192 = (*(a4 + 16) + 8 * v165);
                                    v193 = v156 * v161 - v157 * v162 + *v192;
                                    v194 = v163 + v192[1];
                                    *v192 = v193;
                                    v192[1] = v194;
                                    v195 = *(v149 - 1);
                                    v196 = (a5 * v195) - (a6 * *v149);
                                    v197 = (a6 * v195) + (a5 * *v149);
                                    if (*(a2 + 12))
                                    {
                                      v198 = v143 + *(a2 + 8) * (v789 + v148);
                                    }

                                    else
                                    {
                                      v198 = v789 + v148 + v143 * *(a2 + 8);
                                    }

                                    v199 = (*(a2 + 16) + 8 * v198);
                                    v200 = v199[1];
                                    v201 = (v196 * *v199) - (v197 * v200);
                                    v202 = (v197 * *v199) + (v196 * v200);
                                    if (*(a4 + 12))
                                    {
                                      v203 = v151;
                                    }

                                    else
                                    {
                                      v203 = v143;
                                    }

                                    if (*(a4 + 12))
                                    {
                                      v204 = v143;
                                    }

                                    else
                                    {
                                      v204 = v151;
                                    }

                                    v189 = (*(a4 + 16) + 8 * (v204 + *(a4 + 8) * v203));
                                    v190 = v201 + *v189;
                                    v191 = v202 + v189[1];
                                  }

                                  *v189 = v190;
                                  v189[1] = v191;
                                  ++v148;
                                  v149 += 2;
                                }

                                while (v147 != v148);
                              }

                              v205 = (v142 + 8 * v781 * v128);
                              v206 = v205[1];
                              v207 = (a5 * *v205) - (a6 * v206);
                              v208 = (a6 * *v205) + (a5 * v206);
                              if (*(a2 + 12))
                              {
                                v209 = v143 + *(a2 + 8) * (v781 + v136);
                              }

                              else
                              {
                                v209 = v781 + v136 + *(a2 + 8) * v143;
                              }

                              v210 = (*(a2 + 16) + 8 * v209);
                              v211 = v210[1];
                              v212 = (v207 * *v210) - (v208 * v211);
                              v213 = (v208 * *v210) + (v207 * v211);
                              v214 = *(a4 + 8);
                              if (*(a4 + 12))
                              {
                                v215 = v143 + v214 * (v777 + v781);
                              }

                              else
                              {
                                v215 = v777 + v781 + v214 * v143;
                              }

                              v216 = (*(a4 + 16) + 8 * v215);
                              v217 = v213 + v216[1];
                              --v147;
                              v784 = (v784 + v133);
                              *v216 = v212 + *v216;
                              v216[1] = v217;
                              ++v146;
                              ++v789;
                              v145 = v779;
                              v144 = v787;
                            }

                            while (v779 != v787);
                          }

                          ++v143;
                        }

                        while (v143 != v776);
                      }
                    }

                    else if (v776 >= 1)
                    {
                      v287 = 0;
                      v782 = v139 * v787;
                      do
                      {
                        if (v787)
                        {
                          v288 = 0;
                          v790 = v137;
                          do
                          {
                            v785 = v288;
                            if (v288)
                            {
                              v289 = v288;
                              v290 = v288 + v136;
                              v291 = v782;
                              v292 = v124;
                              v293 = v790;
                              do
                              {
                                v294 = *(v293 - 1);
                                v295 = *v293;
                                v296 = *(a1 + 24);
                                if ((v296 & 0x20) != 0 || (v296 & 1) == 0)
                                {
                                  v309 = (a5 * v294) - (a6 * v295);
                                  v310 = (a6 * v294) + (a5 * v295);
                                  if (*(a2 + 12))
                                  {
                                    v311 = v290;
                                  }

                                  else
                                  {
                                    v311 = v287;
                                  }

                                  if (*(a2 + 12))
                                  {
                                    v312 = v287;
                                  }

                                  else
                                  {
                                    v312 = v290;
                                  }

                                  v313 = (*(a2 + 16) + 8 * (v312 + *(a2 + 8) * v311));
                                  v314 = v313[1];
                                  v315 = (v309 * *v313) - (v310 * v314);
                                  v316 = (v310 * *v313) + (v309 * v314);
                                  v317 = *(a4 + 8);
                                  if (*(a4 + 12))
                                  {
                                    v318 = v287 + v317 * v291;
                                  }

                                  else
                                  {
                                    v318 = v291 + v287 * v317;
                                  }

                                  v319 = (*(a4 + 16) + 8 * v318);
                                  v320 = v316 + v319[1];
                                  *v319 = v315 + *v319;
                                  v319[1] = v320;
                                  v321 = *(v293 - 1);
                                  v322 = *v293;
                                  v323 = v126 * v321 + v127 * v322;
                                  v324 = v127 * v321 - v126 * v322;
                                  if (*(a2 + 12))
                                  {
                                    v325 = v287 + *(a2 + 8) * v292;
                                  }

                                  else
                                  {
                                    v325 = v292 + v287 * *(a2 + 8);
                                  }

                                  v326 = (*(a2 + 16) + 8 * v325);
                                  v327 = *v326;
                                  v328 = v326[1];
                                  v329 = v324 * v327 + v323 * v328;
                                  if (*(a4 + 12))
                                  {
                                    v330 = v782 + v785;
                                  }

                                  else
                                  {
                                    v330 = v287;
                                  }

                                  if (*(a4 + 12))
                                  {
                                    v331 = v287;
                                  }

                                  else
                                  {
                                    v331 = v782 + v785;
                                  }

                                  v332 = (*(a4 + 16) + 8 * (v331 + *(a4 + 8) * v330));
                                  v333 = v323 * v327 - v324 * v328 + *v332;
                                  v334 = v329 + v332[1];
                                }

                                else
                                {
                                  v297 = v294;
                                  v298 = v295;
                                  v299 = v126 * v297 + v127 * v298;
                                  v300 = v127 * v297 - v126 * v298;
                                  if (*(a2 + 12))
                                  {
                                    v301 = v290;
                                  }

                                  else
                                  {
                                    v301 = v287;
                                  }

                                  if (*(a2 + 12))
                                  {
                                    v302 = v287;
                                  }

                                  else
                                  {
                                    v302 = v290;
                                  }

                                  v303 = (*(a2 + 16) + 8 * (v302 + *(a2 + 8) * v301));
                                  v304 = *v303;
                                  v305 = v303[1];
                                  v306 = v300 * v304 + v299 * v305;
                                  v307 = *(a4 + 8);
                                  if (*(a4 + 12))
                                  {
                                    v308 = v287 + v307 * v291;
                                  }

                                  else
                                  {
                                    v308 = v291 + v287 * v307;
                                  }

                                  v335 = (*(a4 + 16) + 8 * v308);
                                  v336 = v299 * v304 - v300 * v305 + *v335;
                                  v337 = v306 + v335[1];
                                  *v335 = v336;
                                  v335[1] = v337;
                                  v338 = *(v293 - 1);
                                  v339 = (a5 * v338) - (a6 * *v293);
                                  v340 = (a6 * v338) + (a5 * *v293);
                                  if (*(a2 + 12))
                                  {
                                    v341 = v287 + *(a2 + 8) * v292;
                                  }

                                  else
                                  {
                                    v341 = v292 + v287 * *(a2 + 8);
                                  }

                                  v342 = (*(a2 + 16) + 8 * v341);
                                  v343 = v342[1];
                                  v344 = (v339 * *v342) - (v340 * v343);
                                  v345 = (v340 * *v342) + (v339 * v343);
                                  if (*(a4 + 12))
                                  {
                                    v346 = v782 + v785;
                                  }

                                  else
                                  {
                                    v346 = v287;
                                  }

                                  if (*(a4 + 12))
                                  {
                                    v347 = v287;
                                  }

                                  else
                                  {
                                    v347 = v782 + v785;
                                  }

                                  v332 = (*(a4 + 16) + 8 * (v347 + *(a4 + 8) * v346));
                                  v333 = v344 + *v332;
                                  v334 = v345 + v332[1];
                                }

                                *v332 = v333;
                                v332[1] = v334;
                                v293 += 2;
                                ++v291;
                                ++v292;
                                --v289;
                              }

                              while (v289);
                            }

                            v348 = (v142 + 8 * v785 * v128);
                            v349 = v348[1];
                            v350 = (a5 * *v348) - (a6 * v349);
                            v351 = (a6 * *v348) + (a5 * v349);
                            if (*(a2 + 12))
                            {
                              v352 = v287 + *(a2 + 8) * (v785 + v136);
                            }

                            else
                            {
                              v352 = v785 + v136 + *(a2 + 8) * v287;
                            }

                            v353 = (*(a2 + 16) + 8 * v352);
                            v354 = v353[1];
                            v355 = (v350 * *v353) - (v351 * v354);
                            v356 = (v351 * *v353) + (v350 * v354);
                            v357 = *(a4 + 8);
                            if (*(a4 + 12))
                            {
                              v358 = v287 + v357 * (v782 + v785);
                            }

                            else
                            {
                              v358 = v782 + v785 + v357 * v287;
                            }

                            v359 = (*(a4 + 16) + 8 * v358);
                            v360 = v356 + v359[1];
                            *v359 = v355 + *v359;
                            v359[1] = v360;
                            v288 = v785 + 1;
                            v790 = (v790 + v130);
                          }

                          while (v785 + 1 != v787);
                        }

                        ++v287;
                      }

                      while (v287 != v776);
                    }
                  }

                  else if (v776 >= 1)
                  {
                    v218 = 0;
                    v219 = v787;
                    v220 = v139 * v787;
                    do
                    {
                      if (v219)
                      {
                        v221 = 0;
                        v222 = v137;
                        do
                        {
                          v223 = v220;
                          v224 = v222;
                          do
                          {
                            v225 = *(v224 - 1);
                            v226 = *v224;
                            v227 = *(a1 + 24);
                            if ((v227 & 0x20) != 0 || (v227 & 1) == 0)
                            {
                              v240 = (a5 * v225) - (a6 * v226);
                              v241 = (a6 * v225) + (a5 * v226);
                              if (*(a2 + 12))
                              {
                                v242 = v221 + v136;
                              }

                              else
                              {
                                v242 = v218;
                              }

                              if (*(a2 + 12))
                              {
                                v243 = v218;
                              }

                              else
                              {
                                v243 = v221 + v136;
                              }

                              v244 = (*(a2 + 16) + 8 * (v243 + *(a2 + 8) * v242));
                              v245 = v244[1];
                              v246 = (v240 * *v244) - (v241 * v245);
                              v247 = (v241 * *v244) + (v240 * v245);
                              v248 = *(a4 + 8);
                              if (*(a4 + 12))
                              {
                                v249 = v218 + v248 * v223;
                              }

                              else
                              {
                                v249 = v223 + v218 * v248;
                              }

                              v250 = (*(a4 + 16) + 8 * v249);
                              v251 = v246 + *v250;
                              v252 = v247 + v250[1];
                            }

                            else
                            {
                              v228 = v225;
                              v229 = v226;
                              v230 = v126 * v228 + v127 * v229;
                              v231 = v127 * v228 - v126 * v229;
                              if (*(a2 + 12))
                              {
                                v232 = v221 + v136;
                              }

                              else
                              {
                                v232 = v218;
                              }

                              if (*(a2 + 12))
                              {
                                v233 = v218;
                              }

                              else
                              {
                                v233 = v221 + v136;
                              }

                              v234 = (*(a2 + 16) + 8 * (v233 + *(a2 + 8) * v232));
                              v235 = *v234;
                              v236 = v234[1];
                              v237 = v231 * v235 + v230 * v236;
                              v238 = *(a4 + 8);
                              if (*(a4 + 12))
                              {
                                v239 = v218 + v238 * v223;
                              }

                              else
                              {
                                v239 = v223 + v218 * v238;
                              }

                              v250 = (*(a4 + 16) + 8 * v239);
                              v251 = v230 * v235 - v231 * v236 + *v250;
                              v252 = v237 + v250[1];
                            }

                            *v250 = v251;
                            v250[1] = v252;
                            v224 += 2;
                            ++v223;
                            --v219;
                          }

                          while (v219);
                          ++v221;
                          v222 = (v222 + v130);
                          v219 = v787;
                        }

                        while (v221 != v787);
                      }

                      ++v218;
                    }

                    while (v218 != v776);
                    for (k = 0; k != v776; ++k)
                    {
                      v254 = v787;
                      if (v787)
                      {
                        v255 = 0;
                        v256 = v137;
                        do
                        {
                          v257 = v220;
                          v258 = v256;
                          do
                          {
                            v259 = *(v258 - 1);
                            v260 = *v258;
                            v261 = *(a1 + 24);
                            if ((v261 & 0x20) != 0 || (v261 & 1) == 0)
                            {
                              v266 = v259;
                              v267 = v260;
                              v268 = v126 * v266 + v127 * v267;
                              v269 = v127 * v266 - v126 * v267;
                              v270 = *(a2 + 8);
                              if (*(a2 + 12))
                              {
                                v271 = k + v270 * v257;
                              }

                              else
                              {
                                v271 = v257 + k * v270;
                              }

                              v272 = (*(a2 + 16) + 8 * v271);
                              v273 = *v272;
                              v274 = v272[1];
                              v275 = v269 * v273 + v268 * v274;
                              if (*(a4 + 12))
                              {
                                v276 = v255 + v136;
                              }

                              else
                              {
                                v276 = k;
                              }

                              if (*(a4 + 12))
                              {
                                v277 = k;
                              }

                              else
                              {
                                v277 = v255 + v136;
                              }

                              v278 = (*(a4 + 16) + 8 * (v277 + *(a4 + 8) * v276));
                              v279 = v268 * v273 - v269 * v274 + *v278;
                              v280 = v275 + v278[1];
                            }

                            else
                            {
                              v262 = (a5 * v259) - (a6 * v260);
                              v263 = (a6 * v259) + (a5 * v260);
                              v264 = *(a2 + 8);
                              if (*(a2 + 12))
                              {
                                v265 = k + v264 * v257;
                              }

                              else
                              {
                                v265 = v257 + k * v264;
                              }

                              v281 = (*(a2 + 16) + 8 * v265);
                              v282 = v281[1];
                              v283 = (v262 * *v281) - (v263 * v282);
                              v284 = (v263 * *v281) + (v262 * v282);
                              if (*(a4 + 12))
                              {
                                v285 = v255 + v136;
                              }

                              else
                              {
                                v285 = k;
                              }

                              if (*(a4 + 12))
                              {
                                v286 = k;
                              }

                              else
                              {
                                v286 = v255 + v136;
                              }

                              v278 = (*(a4 + 16) + 8 * (v286 + *(a4 + 8) * v285));
                              v279 = v283 + *v278;
                              v280 = v284 + v278[1];
                            }

                            *v278 = v279;
                            v278[1] = v280;
                            v258 += 2;
                            ++v257;
                            --v254;
                          }

                          while (v254);
                          ++v255;
                          v256 = (v256 + v130);
                          v254 = v787;
                        }

                        while (v255 != v787);
                      }
                    }
                  }
                }
              }

              ++v131;
              v14 = v775;
              v135 = v775[v125];
              v137 += v129;
              v138 += v129;
              v15 = v774;
            }

            while (v131 < v135);
            v123 = *(a1 + 4);
          }

          v124 += v787;
          v134 += v787;
          v131 = v135;
        }

        while (v125 < v123);
      }

      return result;
    }

LABEL_665:
    __break(1u);
    return result;
  }

  if (v22 - 1 >= 2)
  {
    if (!v22)
    {
      v361 = *(a1 + 4);
      if (*(a1 + 24))
      {
        if (v361 >= 1)
        {
          v362 = 0;
          v363 = a5;
          v364 = a6;
          v365 = *v14;
          v366 = 8 * (result * result);
          do
          {
            v367 = v362++;
            v368 = v14[v362];
            if (v365 < v368)
            {
              v369 = v367 * result;
              v370 = v772 + 4 + v366 * v365;
              do
              {
                v371 = *(v15 + 4 * v365);
                if ((v371 & 0x80000000) == 0 && v371 < *a1 && v12 >= 1)
                {
                  v373 = 0;
                  v374 = v371 * result;
                  do
                  {
                    if (result)
                    {
                      v375 = 0;
                      v376 = v370;
                      do
                      {
                        v377 = result;
                        v378 = v374;
                        v379 = v376;
                        do
                        {
                          v380 = *(v379 - 1);
                          v381 = *v379;
                          if ((*(a1 + 24) & 0x20) != 0)
                          {
                            v386 = v380;
                            v387 = v381;
                            v388 = v363 * v386 + v364 * v387;
                            v389 = v364 * v386 - v363 * v387;
                            v390 = *(a2 + 8);
                            if (*(a2 + 12))
                            {
                              v391 = v373 + v390 * v378;
                            }

                            else
                            {
                              v391 = v378 + v373 * v390;
                            }

                            v401 = (*(a2 + 16) + 8 * v391);
                            v402 = *v401;
                            v403 = v401[1];
                            v404 = v389 * v402 + v388 * v403;
                            if (*(a4 + 12))
                            {
                              v405 = v375 + v369;
                            }

                            else
                            {
                              v405 = v373;
                            }

                            if (*(a4 + 12))
                            {
                              v406 = v373;
                            }

                            else
                            {
                              v406 = v375 + v369;
                            }

                            v398 = (*(a4 + 16) + 8 * (v406 + *(a4 + 8) * v405));
                            v399 = v388 * v402 - v389 * v403 + *v398;
                            v400 = v404 + v398[1];
                          }

                          else
                          {
                            v382 = (a5 * v380) - (a6 * v381);
                            v383 = (a6 * v380) + (a5 * v381);
                            v384 = *(a2 + 8);
                            if (*(a2 + 12))
                            {
                              v385 = v373 + v384 * v378;
                            }

                            else
                            {
                              v385 = v378 + v373 * v384;
                            }

                            v392 = (*(a2 + 16) + 8 * v385);
                            v393 = v392[1];
                            v394 = (v382 * *v392) - (v383 * v393);
                            v395 = (v383 * *v392) + (v382 * v393);
                            if (*(a4 + 12))
                            {
                              v396 = v375 + v369;
                            }

                            else
                            {
                              v396 = v373;
                            }

                            if (*(a4 + 12))
                            {
                              v397 = v373;
                            }

                            else
                            {
                              v397 = v375 + v369;
                            }

                            v398 = (*(a4 + 16) + 8 * (v397 + *(a4 + 8) * v396));
                            v399 = v394 + *v398;
                            v400 = v395 + v398[1];
                          }

                          *v398 = v399;
                          v398[1] = v400;
                          v379 += 2;
                          ++v378;
                          --v377;
                        }

                        while (v377);
                        ++v375;
                        v376 += 2 * result;
                      }

                      while (v375 != result);
                    }

                    ++v373;
                  }

                  while (v373 != v12);
                  v368 = v14[v362];
                }

                ++v365;
                v370 += v366;
              }

              while (v365 < v368);
              v361 = *(a1 + 4);
            }

            v365 = v368;
          }

          while (v362 < v361);
        }
      }

      else if (v361 >= 1)
      {
        v742 = 0;
        v743 = *v14;
        v744 = 8 * (result * result);
        do
        {
          v745 = v742++;
          v746 = v14[v742];
          if (v743 < v746)
          {
            v748 = v772 + 4 + v744 * v743;
            do
            {
              v749 = *(v15 + 4 * v743);
              if ((v749 & 0x80000000) == 0 && v749 < *a1 && v12 >= 1)
              {
                v751 = 0;
                v752 = v749 * result;
                do
                {
                  if (result)
                  {
                    v753 = 0;
                    v754 = v748;
                    do
                    {
                      v747 = v745 * result;
                      v755 = result;
                      v756 = v752;
                      v757 = v754;
                      do
                      {
                        v758 = *(v757 - 1);
                        v759 = (a5 * v758) - (a6 * *v757);
                        v760 = (a6 * v758) + (a5 * *v757);
                        if (*(a2 + 12))
                        {
                          v761 = v753 + v747;
                        }

                        else
                        {
                          v761 = v751;
                        }

                        if (*(a2 + 12))
                        {
                          v762 = v751;
                        }

                        else
                        {
                          v762 = v753 + v747;
                        }

                        v763 = (*(a2 + 16) + 8 * (v762 + *(a2 + 8) * v761));
                        v764 = v763[1];
                        v765 = (v759 * *v763) - (v760 * v764);
                        v766 = (v760 * *v763) + (v759 * v764);
                        v767 = *(a4 + 8);
                        if (*(a4 + 12))
                        {
                          v768 = v751 + v767 * v756;
                        }

                        else
                        {
                          v768 = v756 + v751 * v767;
                        }

                        v769 = (*(a4 + 16) + 8 * v768);
                        v770 = v766 + v769[1];
                        *v769 = v765 + *v769;
                        v769[1] = v770;
                        v757 += 2;
                        ++v756;
                        --v755;
                      }

                      while (v755);
                      ++v753;
                      v754 += 2 * result;
                    }

                    while (v753 != result);
                  }

                  ++v751;
                }

                while (v751 != v12);
                v746 = v14[v742];
              }

              ++v743;
              v748 += v744;
            }

            while (v743 < v746);
            v361 = *(a1 + 4);
          }

          v743 = v746;
        }

        while (v742 < v361);
      }

      return result;
    }

    goto LABEL_665;
  }

  v23 = *(a1 + 4);
  if ((*(a1 + 24) & 1) == 0)
  {
    if (v23 < 1)
    {
      return result;
    }

    v407 = 0;
    v408 = 0;
    v409 = 8 * (result * result);
    v410 = 8 * result;
    while (1)
    {
      v411 = v14[v408];
      v412 = v408 + 1;
      if (v411 < v14[v408 + 1])
      {
        break;
      }

LABEL_409:
      if ((*(a1 + 24) & 0x1C) == 8 && v12 >= 1)
      {
        v464 = 0;
        do
        {
          v465 = result;
          for (m = v407; v465; --v465)
          {
            if (*(a2 + 12))
            {
              v467 = v464 + *(a2 + 8) * m;
            }

            else
            {
              v467 = m + v464 * *(a2 + 8);
            }

            v468 = (*(a2 + 16) + 8 * v467);
            v469 = v468[1];
            v470 = (a5 * *v468) - (a6 * v469);
            v471 = (a6 * *v468) + (a5 * v469);
            if (*(a4 + 12))
            {
              v472 = v464 + *(a4 + 8) * m;
            }

            else
            {
              v472 = m + v464 * *(a4 + 8);
            }

            v473 = (*(a4 + 16) + 8 * v472);
            v474 = v471 + v473[1];
            *v473 = v470 + *v473;
            v473[1] = v474;
            ++m;
          }

          ++v464;
        }

        while (v464 != v12);
      }

      v407 += result;
      ++v408;
      if (v412 >= *(a1 + 4))
      {
        return result;
      }
    }

    v413 = v408 * result;
    v414 = v772 + 4 + v409 * v411;
    v415 = v772 + v409 * v411;
    while (1)
    {
      v416 = *(v15 + 4 * v411);
      v417 = *(a1 + 24);
      if (((v417 & 2) == 0 || v408 <= v416) && v416 < *a1)
      {
        if ((v417 & 2) != 0)
        {
          if ((v416 & 0x80000000) == 0)
          {
LABEL_364:
            if (v416 == v408)
            {
              if (v12 >= 1)
              {
                v418 = 0;
                v419 = (v417 & 0x1C) == 8;
                v420 = v416 * result;
                do
                {
                  if (result)
                  {
                    v421 = 0;
                    v422 = v415;
                    do
                    {
                      v423 = (v421 + v419) & (v417 << 30 >> 31);
                      v424 = v421 + 1;
                      v425 = v421 + 1 - v419;
                      if ((v417 & 2) != 0)
                      {
                        v426 = result;
                      }

                      else
                      {
                        v426 = v421 + 1 - v419;
                      }

                      if (v423 < v426)
                      {
                        v791 = v421 + 1;
                        v427 = v421 + v413;
                        v428 = (v422 + 8 * v423);
                        do
                        {
                          v429 = v428[1];
                          v430 = (a5 * *v428) - (a6 * v429);
                          v431 = (a6 * *v428) + (a5 * v429);
                          if (*(a2 + 12))
                          {
                            v432 = v427;
                          }

                          else
                          {
                            v432 = v418;
                          }

                          if (*(a2 + 12))
                          {
                            v433 = v418;
                          }

                          else
                          {
                            v433 = v427;
                          }

                          v434 = (*(a2 + 16) + 8 * (v433 + *(a2 + 8) * v432));
                          v435 = v434[1];
                          v436 = (v430 * *v434) - (v431 * v435);
                          v437 = (v431 * *v434) + (v430 * v435);
                          v438 = *(a4 + 8);
                          if (*(a4 + 12))
                          {
                            v439 = v418 + v438 * (v420 + v423);
                          }

                          else
                          {
                            v439 = v420 + v423 + v418 * v438;
                          }

                          v440 = (*(a4 + 16) + 8 * v439);
                          v441 = v437 + v440[1];
                          *v440 = v436 + *v440;
                          v440[1] = v441;
                          ++v423;
                          v417 = *(a1 + 24);
                          if ((v417 & 2) != 0)
                          {
                            v442 = result;
                          }

                          else
                          {
                            v442 = v425;
                          }

                          v428 += 2;
                        }

                        while (v423 < v442);
                        v424 = v791;
                      }

                      v422 += v410;
                      v421 = v424;
                    }

                    while (v424 != result);
                  }

                  ++v418;
                }

                while (v418 != v12);
              }
            }

            else if (v12 >= 1)
            {
              v443 = 0;
              v444 = v416 * result;
              do
              {
                if (result)
                {
                  v445 = 0;
                  v446 = v414;
                  do
                  {
                    v447 = result;
                    v448 = v444;
                    v449 = v446;
                    do
                    {
                      v450 = *(v449 - 1);
                      v451 = (a5 * v450) - (a6 * *v449);
                      v452 = (a6 * v450) + (a5 * *v449);
                      if (*(a2 + 12))
                      {
                        v453 = v445 + v413;
                      }

                      else
                      {
                        v453 = v443;
                      }

                      if (*(a2 + 12))
                      {
                        v454 = v443;
                      }

                      else
                      {
                        v454 = v445 + v413;
                      }

                      v455 = (*(a2 + 16) + 8 * (v454 + *(a2 + 8) * v453));
                      v456 = v455[1];
                      v457 = (v451 * *v455) - (v452 * v456);
                      v458 = (v452 * *v455) + (v451 * v456);
                      v459 = *(a4 + 8);
                      if (*(a4 + 12))
                      {
                        v460 = v443 + v459 * v448;
                      }

                      else
                      {
                        v460 = v448 + v443 * v459;
                      }

                      v461 = (*(a4 + 16) + 8 * v460);
                      v462 = v458 + v461[1];
                      *v461 = v457 + *v461;
                      v461[1] = v462;
                      v449 += 2;
                      ++v448;
                      --v447;
                    }

                    while (v447);
                    ++v445;
                    v446 = (v446 + v410);
                  }

                  while (v445 != result);
                }

                ++v443;
              }

              while (v443 != v12);
            }
          }
        }

        else if (v408 >= v416)
        {
          goto LABEL_364;
        }
      }

      ++v411;
      v414 += v409;
      v415 += v409;
      if (v411 >= v14[v412])
      {
        goto LABEL_409;
      }
    }
  }

  if (v23 >= 1)
  {
    v24 = 0;
    v25 = 0;
    v26 = a5;
    v27 = a6;
    v28 = 8 * v771;
    v29 = 8 * result;
    while (1)
    {
      v30 = v14[v25];
      v31 = v25 + 1;
      if (v30 < v14[v25 + 1])
      {
        break;
      }

LABEL_101:
      if ((*(a1 + 24) & 0x1C) == 8 && v12 >= 1)
      {
        v112 = 0;
        do
        {
          v113 = result;
          for (n = v24; v113; --v113)
          {
            if (*(a2 + 12))
            {
              v115 = v112 + *(a2 + 8) * n;
            }

            else
            {
              v115 = n + v112 * *(a2 + 8);
            }

            v116 = (*(a2 + 16) + 8 * v115);
            v117 = v116[1];
            v118 = (a5 * *v116) - (a6 * v117);
            v119 = (a6 * *v116) + (a5 * v117);
            if (*(a4 + 12))
            {
              v120 = v112 + *(a4 + 8) * n;
            }

            else
            {
              v120 = n + v112 * *(a4 + 8);
            }

            v121 = (*(a4 + 16) + 8 * v120);
            v122 = v119 + v121[1];
            *v121 = v118 + *v121;
            v121[1] = v122;
            ++n;
          }

          ++v112;
        }

        while (v112 != v12);
      }

      v24 += result;
      ++v25;
      if (v31 >= *(a1 + 4))
      {
        return result;
      }
    }

    v32 = v25 * result;
    v33 = v772 + 4 + v28 * v30;
    v34 = v772 + v28 * v30;
    while (1)
    {
      v35 = *(v15 + 4 * v30);
      v36 = *(a1 + 24);
      if ((v36 & 2) == 0 || v25 <= v35)
      {
        v37 = *(v15 + 4 * v30);
        if (v35 < *a1)
        {
          if ((v36 & 2) != 0)
          {
            if ((v35 & 0x80000000) == 0)
            {
LABEL_32:
              if (v35 == v25)
              {
                if (v12 >= 1)
                {
                  v38 = 0;
                  v39 = *(a1 + 24);
                  v40 = (v36 & 0x1C) == 8;
                  v41 = v37 * result;
                  v788 = v40;
                  do
                  {
                    if (result)
                    {
                      v42 = 0;
                      v43 = v34;
                      do
                      {
                        v44 = (v42 + v40) & (v36 << 30 >> 31);
                        v45 = v42 + 1;
                        v46 = v42 + 1 - v40;
                        if ((v36 & 2) != 0)
                        {
                          v47 = result;
                        }

                        else
                        {
                          v47 = v42 + 1 - v40;
                        }

                        if (v44 < v47)
                        {
                          v48 = v42 + v32;
                          v49 = (v43 + 8 * v44);
                          do
                          {
                            v50 = *v49;
                            v51 = v49[1];
                            if ((v39 & 0x20) != 0)
                            {
                              v56 = v50;
                              v57 = v51;
                              v58 = v26 * v56 + v27 * v57;
                              v59 = v27 * v56 - v26 * v57;
                              v60 = *(a2 + 8);
                              if (*(a2 + 12))
                              {
                                v61 = v38 + v60 * (v41 + v44);
                              }

                              else
                              {
                                v61 = v41 + v44 + v38 * v60;
                              }

                              v71 = (*(a2 + 16) + 8 * v61);
                              v72 = *v71;
                              v73 = v71[1];
                              v74 = v59 * v72 + v58 * v73;
                              if (*(a4 + 12))
                              {
                                v75 = v48;
                              }

                              else
                              {
                                v75 = v38;
                              }

                              if (*(a4 + 12))
                              {
                                v76 = v38;
                              }

                              else
                              {
                                v76 = v48;
                              }

                              v68 = (*(a4 + 16) + 8 * (v76 + *(a4 + 8) * v75));
                              v69 = v58 * v72 - v59 * v73 + *v68;
                              v70 = v74 + v68[1];
                            }

                            else
                            {
                              v52 = (a5 * v50) - (a6 * v51);
                              v53 = (a6 * v50) + (a5 * v51);
                              v54 = *(a2 + 8);
                              if (*(a2 + 12))
                              {
                                v55 = v38 + v54 * (v41 + v44);
                              }

                              else
                              {
                                v55 = v41 + v44 + v38 * v54;
                              }

                              v62 = (*(a2 + 16) + 8 * v55);
                              v63 = v62[1];
                              v64 = (v52 * *v62) - (v53 * v63);
                              v65 = (v53 * *v62) + (v52 * v63);
                              if (*(a4 + 12))
                              {
                                v66 = v48;
                              }

                              else
                              {
                                v66 = v38;
                              }

                              if (*(a4 + 12))
                              {
                                v67 = v38;
                              }

                              else
                              {
                                v67 = v48;
                              }

                              v68 = (*(a4 + 16) + 8 * (v67 + *(a4 + 8) * v66));
                              v69 = v64 + *v68;
                              v70 = v65 + v68[1];
                            }

                            *v68 = v69;
                            v68[1] = v70;
                            ++v44;
                            v36 = *(a1 + 24);
                            if ((v36 & 2) != 0)
                            {
                              v77 = result;
                            }

                            else
                            {
                              v77 = v46;
                            }

                            v39 = *(a1 + 24);
                            v49 += 2;
                          }

                          while (v44 < v77);
                          v40 = v788;
                        }

                        v43 += v29;
                        v42 = v45;
                      }

                      while (v45 != result);
                    }

                    ++v38;
                  }

                  while (v38 != v12);
                }
              }

              else if (v12 >= 1)
              {
                for (ii = 0; ii != v12; ++ii)
                {
                  if (result)
                  {
                    v79 = 0;
                    v80 = v33;
                    do
                    {
                      v81 = result;
                      v82 = v37 * result;
                      v83 = v80;
                      do
                      {
                        v84 = *(v83 - 1);
                        v85 = *v83;
                        if ((*(a1 + 24) & 0x20) != 0)
                        {
                          v90 = v84;
                          v91 = v85;
                          v92 = v26 * v90 + v27 * v91;
                          v93 = v27 * v90 - v26 * v91;
                          v94 = *(a2 + 8);
                          if (*(a2 + 12))
                          {
                            v95 = ii + v94 * v82;
                          }

                          else
                          {
                            v95 = v82 + ii * v94;
                          }

                          v105 = (*(a2 + 16) + 8 * v95);
                          v106 = *v105;
                          v107 = v105[1];
                          v108 = v93 * v106 + v92 * v107;
                          if (*(a4 + 12))
                          {
                            v109 = v79 + v32;
                          }

                          else
                          {
                            v109 = ii;
                          }

                          if (*(a4 + 12))
                          {
                            v110 = ii;
                          }

                          else
                          {
                            v110 = v79 + v32;
                          }

                          v102 = (*(a4 + 16) + 8 * (v110 + *(a4 + 8) * v109));
                          v103 = v92 * v106 - v93 * v107 + *v102;
                          v104 = v108 + v102[1];
                        }

                        else
                        {
                          v86 = (a5 * v84) - (a6 * v85);
                          v87 = (a6 * v84) + (a5 * v85);
                          v88 = *(a2 + 8);
                          if (*(a2 + 12))
                          {
                            v89 = ii + v88 * v82;
                          }

                          else
                          {
                            v89 = v82 + ii * v88;
                          }

                          v96 = (*(a2 + 16) + 8 * v89);
                          v97 = v96[1];
                          v98 = (v86 * *v96) - (v87 * v97);
                          v99 = (v87 * *v96) + (v86 * v97);
                          if (*(a4 + 12))
                          {
                            v100 = v79 + v32;
                          }

                          else
                          {
                            v100 = ii;
                          }

                          if (*(a4 + 12))
                          {
                            v101 = ii;
                          }

                          else
                          {
                            v101 = v79 + v32;
                          }

                          v102 = (*(a4 + 16) + 8 * (v101 + *(a4 + 8) * v100));
                          v103 = v98 + *v102;
                          v104 = v99 + v102[1];
                        }

                        *v102 = v103;
                        v102[1] = v104;
                        v83 += 2;
                        ++v82;
                        --v81;
                      }

                      while (v81);
                      ++v79;
                      v80 = (v80 + v29);
                    }

                    while (v79 != result);
                  }
                }
              }
            }
          }

          else if (v25 >= v35)
          {
            goto LABEL_32;
          }
        }
      }

      ++v30;
      v33 += v28;
      v34 += v28;
      if (v30 >= v14[v31])
      {
        goto LABEL_101;
      }
    }
  }

  return result;
}

void _SparseCreatePreconditioner_Complex_Float(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23670BA40();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23670BA84();
    }

    _SparseTrap();
  }

  if (a1 == 2)
  {
    v5 = *(a2 + 28);
    v6 = *a2 * v5;
    v7 = *(a2 + 4) * v5;
    if (v6 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    *a3 = 2;
    v9 = malloc_type_malloc(8 * v8, 0x100004000313F17uLL);
    v10 = v9;
    a3[1] = v9;
    a3[2] = sub_2367A525C;
    if (v8 >= 1)
    {
      v11 = v9;
      do
      {
        *v11++ = 1065353216;
        --v8;
      }

      while (v8);
    }

    if ((*(a2 + 24) & 0x1C) != 8)
    {
      v12 = *(a2 + 4);
      if (v12 >= 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = *(a2 + 28);
        v16 = v15 * v15;
        v17 = *(a2 + 8);
        v18 = v15;
        do
        {
          v19 = v14;
          v20 = *(v17 + 8 * v14++);
          if (v20 < *(v17 + 8 * v14))
          {
            do
            {
              if (v19 == *(*(a2 + 16) + 4 * v20) && v18)
              {
                v21 = 0;
                v22 = &v10[v13 * v15];
                do
                {
                  v23 = (*(a2 + 32) + 8 * v20 * v16 + 8 * (v21 + v21 * v18));
                  v24 = v23[1];
                  if (*v23 != 0.0 || v24 != 0.0)
                  {
                    v25.f64[0] = sub_23681E17C(1.0, 0.0, *v23, v24);
                    v25.f64[1] = v26;
                    v22[v21] = vcvt_f32_f64(v25);
                    v15 = *(a2 + 28);
                  }

                  ++v21;
                  v18 = v15;
                }

                while (v21 < v15);
                v17 = *(a2 + 8);
                v18 = v15;
              }

              ++v20;
            }

            while (v20 < *(v17 + 8 * v14));
            v12 = *(a2 + 4);
          }

          ++v13;
        }

        while (v14 < v12);
      }
    }
  }

  else
  {

    sub_23679F9A8(a2, a3);
  }
}

void sub_23679F9A8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v203 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 28);
  v5 = (*(a1 + 4) * v4);
  *a2 = 0;
  *a2 = 3;
  v187 = v5;
  v6 = 8 * v5;
  v7 = malloc_type_malloc(v6, 0x100004000313F17uLL);
  v9 = v7;
  a2[1] = v7;
  a2[2] = sub_2367A525C;
  v191 = (v4 * v4);
  v10 = (*(v2 + 24) >> 2) & 7;
  v200 = v2;
  v202 = v4;
  v190 = v7;
  if (v10 <= 2)
  {
    if ((v10 - 1) >= 2)
    {
      if (*(v2 + 24))
      {
        bzero(v7, v6);
        v97 = *(v2 + 4);
        if (v97 >= 1)
        {
          v98 = 0;
          v99 = *(v2 + 8);
          v100 = 8 * v191;
          v101 = 8 * v4;
          v199.i64[0] = 4;
          v201 = v100;
          do
          {
            v102 = *(v99 + 8 * v98++);
            if (v102 < *(v99 + 8 * v98))
            {
              v103 = v199.i64[0] + v100 * v102;
              do
              {
                v104 = *(*(v2 + 16) + 4 * v102);
                if ((v104 & 0x80000000) == 0 && v104 < *v2 && v4)
                {
                  v105 = 0;
                  v106 = &v190[8 * (v104 * v4)];
                  v107 = (*(v2 + 32) + v103);
                  do
                  {
                    v108 = v4;
                    v109 = v107;
                    v110 = v106;
                    do
                    {
                      v111 = hypotf(*(v109 - 1), *v109);
                      *v110 = *v110 + (v111 * v111);
                      v110 += 2;
                      v109 += 2;
                      --v108;
                    }

                    while (v108);
                    ++v105;
                    v107 = (v107 + v101);
                    v4 = v202;
                  }

                  while (v105 != v202);
                  v2 = v200;
                  v100 = v201;
                  v99 = *(v200 + 8);
                }

                ++v102;
                v103 += v100;
              }

              while (v102 < *(v99 + 8 * v98));
              v97 = *(v2 + 4);
            }
          }

          while (v98 < v97);
        }

        v112 = v187;
        if (v187 >= 1)
        {
          v113 = (v190 + 4);
          do
          {
            v114 = hypotf(*(v113 - 1), *v113);
            v115 = 1.0;
            if (v114 >= 0.00000011921)
            {
              v115 = 1.0 / sqrt(v114);
            }

            *(v113 - 1) = v115;
            *v113 = 0.0;
            v113 += 2;
            --v112;
          }

          while (v112);
        }
      }

      else if (*(v2 + 4) >= 1)
      {
        v160 = 0;
        v161 = 4 * v4;
        v201 = 8 * v191;
        v162 = 8 * v4;
        v163 = v7 + 4;
        v194 = 4;
        v195 = (4 * v4 + 15) & 0x7F0;
        v196 = 4 * v4;
        do
        {
          v198 = v163;
          v197.i64[0] = &v183;
          MEMORY[0x28223BE20](v8);
          v164 = (&v183 - v195);
          if (v4)
          {
            bzero(&v183 - v195, v161);
          }

          v165 = *(v2 + 8);
          v166 = *(v165 + 8 * v160);
          v199.i64[0] = v160 + 1;
          v167 = *(v165 + 8 * (v160 + 1));
          if (v166 < v167)
          {
            v168 = *(v200 + 16);
            v169 = v194 + v201 * v166;
            do
            {
              v170 = *(v168 + 4 * v166);
              if ((v170 & 0x80000000) == 0 && v170 < *v200 && v4)
              {
                v171 = 0;
                v172 = (*(v200 + 32) + v169);
                do
                {
                  v173 = v164[v171];
                  v174 = v4;
                  v175 = v172;
                  do
                  {
                    v8.n128_f32[0] = hypotf(*(v175 - 1), *v175);
                    v173 = v173 + (v8.n128_f32[0] * v8.n128_f32[0]);
                    v175 += 2;
                    --v174;
                  }

                  while (v174);
                  v164[v171++] = v173;
                  v172 = (v172 + v162);
                  v4 = v202;
                }

                while (v171 != v202);
              }

              ++v166;
              v169 += v201;
            }

            while (v166 != v167);
          }

          v176 = v4;
          v177 = v198;
          v160 = v199.i64[0];
          v178 = v198;
          v2 = v200;
          v161 = v196;
          if (v4)
          {
            do
            {
              v8.n128_u32[0] = 1.0;
              if (*v164 >= 0.00000011921)
              {
                v8.n128_f64[0] = 1.0 / sqrt(*v164);
                v8.n128_f32[0] = v8.n128_f64[0];
              }

              *(v178 - 1) = v8.n128_u32[0];
              *v178 = 0;
              v178 += 2;
              ++v164;
              --v176;
            }

            while (v176);
          }

          v163 = (v177 + v162);
        }

        while (v160 < *(v2 + 4));
      }

      return;
    }

    if (*(v2 + 24))
    {
      bzero(v7, v6);
      v11 = *(v2 + 4);
      if (v11 < 1)
      {
        goto LABEL_48;
      }

      v12 = 0;
      v13 = *(v2 + 8);
      v197.i64[0] = 8 * v191;
      v14 = 8 * v4;
      v15 = v200;
      while (1)
      {
        v16 = *(v13 + 8 * v12);
        v199.i64[0] = v12++;
        if (v16 >= *(v13 + 8 * v12))
        {
          goto LABEL_47;
        }

        v201 = v197.i64[0] * v16;
        v17 = v197.i64[0] * v16 + 4;
        v196 = v12;
        do
        {
          v18 = *(*(v2 + 16) + 4 * v16);
          v19 = *(*(v2 + 16) + 4 * v16);
          v20 = *(v2 + 24);
          if ((v20 & 2) != 0)
          {
            if (v199.i64[0] > v18 || v19 >= *v200)
            {
              goto LABEL_45;
            }

            v31 = *(v200 + 32);
            if (v199.i64[0] != v18)
            {
              v39 = v31 + 8 * v16 * v191;
              if (!v4)
              {
                goto LABEL_45;
              }

LABEL_41:
              v40 = 0;
              v41 = &v190[8 * v19 * v4];
              v42 = (v39 + 4);
              do
              {
                v43 = v4;
                v44 = v42;
                v45 = v41;
                do
                {
                  v46 = hypotf(*(v44 - 1), *v44);
                  *v45 = *v45 + (v46 * v46);
                  v45 += 2;
                  v44 += 2;
                  --v43;
                }

                while (v43);
                ++v40;
                v42 = (v42 + v14);
                v4 = v202;
              }

              while (v40 != v202);
              goto LABEL_45;
            }

            if (v4)
            {
              v32 = 0;
              v33 = &v190[8 * v19 * v4];
              v34 = v31 + v201;
              do
              {
                if ((*(v200 + 24) & 0x1C) == 8)
                {
                  v35 = v32 + 1;
                }

                else
                {
                  v35 = v32;
                }

                if (v35 < v4)
                {
                  v36 = 8 * v35;
                  v37 = v4 - v35;
                  do
                  {
                    v38 = hypotf(*(v34 + v36), *(v34 + v36 + 4));
                    *&v33[v36] = *&v33[v36] + (v38 * v38);
                    v36 += 8;
                    --v37;
                  }

                  while (v37);
                }

                ++v32;
                v34 += v14;
              }

              while (v32 != v4);
            }
          }

          else
          {
            if (v199.i64[0] < v18)
            {
              goto LABEL_45;
            }

            v21 = *(v200 + 32);
            if (v199.i64[0] != v18)
            {
              v39 = v21 + 8 * v16 * v191;
              if (!v4)
              {
                goto LABEL_45;
              }

              goto LABEL_41;
            }

            if (v4)
            {
              v22 = 0;
              v198 = &v190[8 * v18 * v4];
              v23 = (v21 + v17);
              do
              {
                v24 = v22 + 1;
                if ((v20 & 0x1C) != 8 || v22 != 0)
                {
                  v26 = 0;
                  v27 = v23;
                  v28 = v198;
                  do
                  {
                    v29 = hypotf(*(v27 - 1), *v27);
                    *v28 = *v28 + (v29 * v29);
                    v28 += 2;
                    ++v26;
                    v20 = *(v15 + 24);
                    if ((v20 & 0x1C) == 8)
                    {
                      v30 = v22;
                    }

                    else
                    {
                      v30 = v22 + 1;
                    }

                    v27 += 2;
                  }

                  while (v26 < v30);
                  v4 = v202;
                }

                v23 = (v23 + v14);
                ++v22;
              }

              while (v24 != v4);
            }
          }

LABEL_45:
          ++v16;
          v2 = v200;
          v13 = *(v200 + 8);
          v12 = v196;
          v47 = *(v13 + 8 * v196);
          v201 += v197.i64[0];
          v17 += v197.i64[0];
        }

        while (v16 < v47);
        v11 = *(v200 + 4);
LABEL_47:
        if (v12 >= v11)
        {
LABEL_48:
          if ((*(v2 + 24) & 0x1C) == 8)
          {
            v48 = v187;
            v49 = v190;
            if (v187 >= 1)
            {
              do
              {
                v50 = 1.0 / sqrt(*v49 + 1.0);
                *v49 = v50;
                *(v49 + 1) = 0;
                v49 += 8;
                --v48;
              }

              while (v48);
            }
          }

          else
          {
            v179 = v187;
            if (v187 >= 1)
            {
              v180 = (v190 + 4);
              do
              {
                v181 = hypotf(*(v180 - 1), *v180);
                v182 = 1.0;
                if (v181 >= 0.00000011921)
                {
                  v182 = 1.0 / sqrt(v181);
                }

                *(v180 - 1) = v182;
                *v180 = 0.0;
                v180 += 2;
                --v179;
              }

              while (v179);
            }
          }

          return;
        }
      }
    }

    if (*(v2 + 4) < 1)
    {
      return;
    }

    v198 = 0;
    v199 = vdupq_n_s64(v4 - 1);
    v185 = (v4 + 3) & 0x1FC;
    v195 = 8 * v191;
    v116 = 8 * v4;
    v184 = xmmword_23681F910;
    v183 = xmmword_23681F920;
    v117 = v7 + 4;
    v118 = vdupq_n_s64(4uLL);
    v197 = v118;
    v187 = 4 * v4;
    v186 = (4 * v4 + 15) & 0x7F0;
    v192 = 8 * v4;
    while (1)
    {
      v190 = v117;
      v189 = &v183;
      MEMORY[0x28223BE20](v118);
      v119 = (&v183 - v186);
      if (v4)
      {
        if ((*(v2 + 24) & 0x1C) == 8)
        {
          v118.n128_f32[0] = 1.0;
        }

        else
        {
          v118.n128_f32[0] = 0.0;
        }

        v120 = v119 + 2;
        v121 = v185;
        v122 = v183;
        v123 = v184;
        do
        {
          v124 = vmovn_s64(vcgeq_u64(v199, v122));
          if (vuzp1_s16(v124, v118.n128_u64[0]).u8[0])
          {
            *(v120 - 2) = v118.n128_u32[0];
          }

          if (vuzp1_s16(v124, *&v118).i8[2])
          {
            *(v120 - 1) = v118.n128_u32[0];
          }

          if (vuzp1_s16(*&v118, vmovn_s64(vcgeq_u64(v199, *&v123))).i32[1])
          {
            *v120 = v118.n128_u32[0];
            v120[1] = v118.n128_u32[0];
          }

          v123 = vaddq_s64(v123, v197);
          v122 = vaddq_s64(v122, v197);
          v120 += 4;
          v121 -= 4;
        }

        while (v121);
      }

      v125 = *(v2 + 8);
      v126 = *(v125 + 8 * v198);
      v188 = v198 + 1;
      v196 = *(v125 + 8 * (v198 + 1));
      if (v126 < v196)
      {
        break;
      }

LABEL_165:
      v156 = v4;
      v157 = v190;
      v158 = v190;
      v2 = v200;
      if (v4)
      {
        do
        {
          v118.n128_u32[0] = 1.0;
          if (*v119 >= 0.00000011921)
          {
            v118.n128_f64[0] = 1.0 / sqrt(*v119);
            v118.n128_f32[0] = v118.n128_f64[0];
          }

          *(v158 - 1) = v118.n128_u32[0];
          *v158 = 0;
          v158 += 2;
          ++v119;
          --v156;
        }

        while (v156);
      }

      v159 = *(v2 + 4);
      v117 = &v157[v116];
      v198 = v188;
      if (v188 >= v159)
      {
        return;
      }
    }

    v127 = *(v200 + 16);
    v193 = *(v200 + 24);
    v194 = v127;
    v201 = v193 & 0x1C;
    v128 = v195 * v126;
    v129 = v195 * v126 + 4;
    while (1)
    {
      v130 = *(v194 + 4 * v126);
      if ((v193 & 2) != 0)
      {
        if (v198 <= v130 && *(v194 + 4 * v126) < *v200)
        {
          v137 = *(v200 + 32);
          if (v198 == v130)
          {
            if (v4)
            {
              v138 = 0;
              v139 = v137 + v129;
              v140 = v137 + v128;
              do
              {
                if (v201 == 8)
                {
                  v141 = v138 + 1;
                }

                else
                {
                  v141 = v138;
                }

                if (v141 < v4)
                {
                  v142 = v119[v138];
                  v143 = (v139 + 8 * v141);
                  v144 = v4;
                  v145 = (v140 + 8 * v141);
                  v146 = v144 - v141;
                  do
                  {
                    v147 = *v145;
                    v145 += 2;
                    v148 = v147;
                    v149 = *v143;
                    v143 += 2;
                    v118.n128_f32[0] = hypotf(v148, v149);
                    v142 = v142 + (v118.n128_f32[0] * v118.n128_f32[0]);
                    --v146;
                  }

                  while (v146);
                  v119[v138] = v142;
                  v4 = v202;
                  v116 = v192;
                }

                ++v138;
                v139 += v116;
                v140 += v116;
              }

              while (v138 != v4);
            }

            goto LABEL_164;
          }

          v150 = v137 + 8 * v126 * v191;
          if (v4)
          {
            goto LABEL_160;
          }
        }
      }

      else if (v198 >= v130)
      {
        v131 = *(v200 + 32);
        if (v198 == v130)
        {
          if (v4)
          {
            v132 = 0;
            do
            {
              if (v201 == 8)
              {
                v133 = v132;
              }

              else
              {
                v133 = v132 + 1;
              }

              v134 = v133;
              if (v133)
              {
                v135 = v119[v132];
                v136 = v131;
                do
                {
                  v118.n128_f32[0] = hypotf(*(v136 + v128), *(v136 + v129));
                  v135 = v135 + (v118.n128_f32[0] * v118.n128_f32[0]);
                  v136 += 8;
                  --v134;
                }

                while (v134);
                v119[v132] = v135;
                v4 = v202;
              }

              ++v132;
              v131 += v116;
            }

            while (v132 != v4);
          }

          goto LABEL_164;
        }

        v150 = v131 + 8 * v126 * v191;
        if (v4)
        {
LABEL_160:
          v151 = 0;
          v152 = (v150 + 4);
          do
          {
            v153 = v119[v151];
            v154 = v4;
            v155 = v152;
            do
            {
              v118.n128_f32[0] = hypotf(*(v155 - 1), *v155);
              v153 = v153 + (v118.n128_f32[0] * v118.n128_f32[0]);
              v155 += 2;
              --v154;
            }

            while (v154);
            v119[v151++] = v153;
            v152 = (v152 + v116);
            v4 = v202;
          }

          while (v151 != v202);
        }
      }

LABEL_164:
      ++v126;
      v129 += v195;
      v128 += v195;
      if (v126 == v196)
      {
        goto LABEL_165;
      }
    }
  }

  bzero(v7, v6);
  v51 = *(v2 + 4);
  if (v51 < 1)
  {
    goto LABEL_85;
  }

  v52 = 0;
  v198 = v4 + 1;
  v53 = *(v2 + 8);
  v193 = 8 * v191;
  v201 = 8 * v4;
  v194 = 8 * v4 + 8;
  v189 = (v9 + 8);
  v188 = v4 - 1;
  do
  {
    v54 = v52;
    v55 = *(v53 + 8 * v52++);
    if (v55 >= *(v53 + 8 * v52))
    {
      continue;
    }

    v56 = &v9[8 * v54 * v4];
    v196 = v193 * v55 + 12;
    v197.i64[0] = v193 * v55 + 4;
    v195 = v54;
    v192 = v52;
    do
    {
      v57 = *(*(v2 + 16) + 4 * v55);
      v58 = v57;
      if ((*(v2 + 24) & 2) == 0)
      {
        v59 = v202;
        if (v54 < v57)
        {
          goto LABEL_82;
        }

        LODWORD(v57) = v57 * v202;
        v60 = *(v200 + 32);
        v199.i64[0] = v60 + 8 * v55 * v191;
        if (v195 == v58)
        {
          if (v202)
          {
            v61 = 0;
            v62 = &v190[8 * v57];
            v63 = (v60 + v197.i64[0]);
            do
            {
              if (v61)
              {
                v64 = v61;
                v65 = v62;
                v66 = v63;
                do
                {
                  v67 = hypotf(*(v66 - 1), *v66);
                  *&v56[8 * v61] = *&v56[8 * v61] + (v67 * v67);
                  v68 = hypotf(*(v66 - 1), *v66);
                  *v65 = *v65 + (v68 * v68);
                  v65 += 2;
                  v66 += 2;
                  --v64;
                }

                while (v64);
              }

              v69 = hypotf(*(v199.i64[0] + 8 * v61 * v198), *(v199.i64[0] + 8 * v61 * v198 + 4));
              *&v56[8 * v61] = *&v56[8 * v61] + (v69 * v69);
              ++v61;
              v63 = (v63 + v201);
            }

            while (v61 != v202);
          }

          goto LABEL_82;
        }

        v57 = v57;
LABEL_77:
        if (v59)
        {
          v84 = 0;
          v85 = &v190[8 * v57];
          v86 = v199.i64[0] + 4;
          do
          {
            v87 = v59;
            v88 = v85;
            v89 = v86;
            do
            {
              v90 = hypotf(*(v89 - 1), *v89);
              *&v56[8 * v84] = *&v56[8 * v84] + (v90 * v90);
              v91 = hypotf(*(v89 - 1), *v89);
              *v88 = *v88 + (v91 * v91);
              v88 += 2;
              v89 += 2;
              --v87;
            }

            while (v87);
            ++v84;
            v86 += v201;
          }

          while (v84 != v59);
        }

        goto LABEL_82;
      }

      v59 = v202;
      if (v54 > v57 || v57 >= *v200)
      {
        goto LABEL_82;
      }

      v57 = v57 * v202;
      v70 = *(v200 + 32);
      v199.i64[0] = v70 + 8 * v55 * v191;
      if (v195 != v58)
      {
        goto LABEL_77;
      }

      v71 = v202;
      if (v202)
      {
        v72 = 0;
        v73 = (v70 + v196);
        v74 = v188;
        v75 = v189 + 2 * v57;
        do
        {
          v76 = (v199.i64[0] + 8 * v72 + 8 * (v72 * v71));
          v77 = hypotf(*v76, v76[1]);
          v78 = &v56[8 * v72];
          *v78 = *v78 + (v77 * v77);
          if (++v72 < v71)
          {
            v79 = v74;
            v80 = v75;
            v81 = v73;
            do
            {
              v82 = hypotf(*(v81 - 1), *v81);
              *v78 = *v78 + (v82 * v82);
              v83 = hypotf(*(v81 - 1), *v81);
              *v80 = *v80 + (v83 * v83);
              v80 += 2;
              v81 += 2;
              --v79;
            }

            while (v79);
          }

          v73 = (v73 + v194);
          v75 += 2;
          --v74;
          v71 = v202;
        }

        while (v72 != v202);
      }

LABEL_82:
      ++v55;
      v2 = v200;
      v53 = *(v200 + 8);
      v52 = v192;
      v92 = *(v53 + 8 * v192);
      v196 += v193;
      v197.i64[0] += v193;
      v54 = v195;
    }

    while (v55 < v92);
    v51 = *(v200 + 4);
    v4 = v202;
    v9 = v190;
  }

  while (v52 < v51);
LABEL_85:
  v93 = v187;
  if (v187 >= 1)
  {
    v94 = (v9 + 4);
    do
    {
      v95 = hypotf(*(v94 - 1), *v94);
      v96 = 1.0;
      if (v95 >= 0.00000011921)
      {
        v96 = 1.0 / sqrt(v95);
      }

      *(v94 - 1) = v96;
      *v94 = 0.0;
      v94 += 2;
      --v93;
    }

    while (v93);
  }
}

void _SparseCGIterate_Complex_Float(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t a8, uint64_t a9)
{
  v10 = a3;
  v11 = 4;
  if (*(a5 + 12))
  {
    v11 = 0;
  }

  v12 = *(a5 + v11);
  if (!a2)
  {
    goto LABEL_11;
  }

  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      if (a7[3])
      {
        v14 = i;
      }

      else
      {
        v14 = a7[2] * i;
      }

      *(*(a7 + 2) + 8 * v14) = *&a3[2 * v12 + 2 * i];
    }
  }

  if ((a2 & 0x80000000) == 0)
  {
LABEL_11:
    v15 = *(a5 + 12);
    v16 = 4;
    if (v15)
    {
      v17 = 4;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(a5 + v17);
    v78 = v18;
    if (v15)
    {
      v16 = 0;
    }

    v19 = *(a5 + v16);
    v82 = *(a5 + v17);
    v75 = &a3[2 * v12];
    v74 = v12;
    if (a8)
    {
      v20 = &a3[2 * v19];
      v73 = (v19 * v18);
      v21 = 2 * v73;
      v22 = &v20[2 * v73];
      v23 = *(a8 + 8);
      v24 = *(a8 + 16);
      v72 = &v22[2 * v73];
      if (a2)
      {
        v89 = *a7;
        v90 = *(a7 + 2);
        *&v87 = __PAIR64__(v19, v18);
        *(&v87 + 1) = v18;
        v88 = &v20[2 * v73];
        v24(v23, 0, &v89, &v87);
        v27 = v82;
        if (v19 >= 1)
        {
          v28 = 0;
          v29 = &a3[2 * v19 + 1 + v21];
          v76 = 8 * v78;
          v30 = &a3[4 * v73 + 1 + 2 * v19];
          do
          {
            v31 = &a3[2 * v28];
            v32 = *v31;
            v33 = v31[1];
            cblas_cdotc_sub_NEWLAPACK();
            v25.n128_f32[0] = sub_23681E680(*v31, v31[1], v32, v33);
            v27 = v82;
            if (v82 >= 1)
            {
              v34 = v30;
              v35 = v29;
              v36 = v82;
              do
              {
                v37 = *(v34 - 1);
                v38 = *v35 + ((v26.n128_f32[0] * v37) + (v25.n128_f32[0] * *v34));
                *(v34 - 1) = *(v35 - 1) + ((v25.n128_f32[0] * v37) - (v26.n128_f32[0] * *v34));
                *v34 = v38;
                v35 += 2;
                v34 += 2;
                --v36;
              }

              while (v36);
            }

            ++v28;
            v29 = (v29 + v76);
            v30 = (v30 + v76);
          }

          while (v28 != v19);
        }
      }

      else
      {
        v89 = *a7;
        v90 = *(a7 + 2);
        *&v87 = __PAIR64__(v19, v18);
        *(&v87 + 1) = v18;
        v88 = &v20[2 * v73];
        v24(v23, a2, &v89, &v87);
        memcpy(&v22[2 * v73], v22, v21 * 4);
        v27 = v82;
        if (v19 >= 1)
        {
          v39 = 0;
          v40 = a3;
          do
          {
            cblas_cdotc_sub_NEWLAPACK();
            v27 = v82;
            ++v39;
            v40 += 2;
            v22 += 2 * v78;
          }

          while (v19 != v39);
        }
      }

      v41 = *(a9 + 16);
      *&v89 = __PAIR64__(v19, v27);
      *(&v89 + 1) = v27;
      v90 = v72;
      *&v87 = __PAIR64__(v19, v27);
      *(&v87 + 1) = v27;
      v88 = v20;
      v41(a9, 0, 111, &v89, &v87, v25, v26);
      v42 = a4;
      if (v19 >= 1)
      {
        v43 = 0;
        v44 = a3 + 1;
        v45 = 8 * v78;
        v79 = 8 * v78;
        do
        {
          if ((*(v42 + v43) & 1) == 0)
          {
            *&v89 = 0;
            cblas_cdotc_sub_NEWLAPACK();
            LODWORD(v89) = sub_23681E680(*(v44 - 1), *v44, *&v89, *(&v89 + 1));
            DWORD1(v89) = v46;
            cblas_caxpy_NEWLAPACK();
            *&v87 = vneg_f32(*&v89);
            cblas_caxpy_NEWLAPACK();
            v45 = v79;
            v42 = a4;
          }

          ++v43;
          v44 += 2;
          v20 = (v20 + v45);
        }

        while (v19 != v43);
      }
    }

    else
    {
      if (a7[3])
      {
        v47 = a7[2];
      }

      else
      {
        v47 = 1;
      }

      v81 = v47;
      v48 = &a3[v19];
      LODWORD(v89) = *(a5 + v17);
      DWORD1(v89) = v19;
      v90 = &v48[2 * (v19 * v18)];
      *(&v89 + 1) = v18;
      if (a2)
      {
        if (v19 >= 1)
        {
          v49 = 0;
          v50 = 0;
          v51 = &a3[2 * (v19 * v18) + v19];
          do
          {
            if (a7[3])
            {
              v52 = v50;
            }

            else
            {
              v52 = a7[2] * v50;
            }

            v53 = (*(a7 + 2) + 8 * v52);
            v54 = v10[v50];
            cblas_scnrm2_NEWLAPACK();
            v18 = v82;
            v56 = v55 * v55;
            v10[v50] = v56;
            if (v82 >= 1)
            {
              v57 = &v51[2 * v49];
              v58 = v82;
              v59 = v56 / v54;
              do
              {
                *v57 = vadd_f32(*v53, vmul_n_f32(*v57, v59));
                ++v57;
                v53 += v81;
                --v58;
              }

              while (v58);
            }

            ++v50;
            v49 += v82;
          }

          while (v50 != v19);
        }
      }

      else
      {
        sub_236805D74(a7, &v89);
        v18 = v82;
        if (v19 >= 1)
        {
          for (j = 0; j != v19; ++j)
          {
            cblas_scnrm2_NEWLAPACK();
            v18 = v82;
            v10[j] = v61 * v61;
          }
        }
      }

      v62 = *(a9 + 16);
      v87 = v89;
      v88 = v90;
      v83 = __PAIR64__(v19, v18);
      v84 = v18;
      v85 = 0;
      v86 = v48;
      v62(a9, 0, 111, &v87, &v83);
      v63 = a4;
      if (v19 >= 1)
      {
        v64 = 0;
        do
        {
          if ((*(v63 + v64) & 1) == 0)
          {
            *&v87 = 0;
            cblas_cdotc_sub_NEWLAPACK();
            LODWORD(v87) = sub_23681E680(*v10, 0.0, *&v87, *(&v87 + 1));
            DWORD1(v87) = v65;
            cblas_caxpy_NEWLAPACK();
            v83 = vneg_f32(*&v87);
            cblas_caxpy_NEWLAPACK();
            v63 = a4;
          }

          ++v64;
          ++v10;
          v48 += 2 * v78;
          --v19;
        }

        while (v19);
      }
    }

    if (v74 >= 1)
    {
      v66 = 0;
      v67 = 0;
      do
      {
        v68 = v66;
        if ((a7[3] & 1) == 0)
        {
          v68 = a7[2] * v66;
        }

        *&v75[v67] = *(*(a7 + 2) + 8 * v68);
        cblas_scnrm2_NEWLAPACK();
        v70 = v66;
        if ((a7[3] & 1) == 0)
        {
          v70 = a7[2] * v66;
        }

        v71 = (*(a7 + 2) + 8 * v70);
        *v71 = v69;
        v71[1] = 0;
        v67 += 2;
        ++v66;
      }

      while (2 * v74 != v67);
    }
  }
}

uint64_t _SparseCGSolve_Complex_Float(void (**a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = 4;
  if (*(a2 + 12))
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a2 + v8);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  v10 = *(a2 + v7);
  v11 = v10 * v9;
  if (a5)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = 8 * ((((2 * v9) | 1) * v10) + (v10 + v11) + v12) + v10 + 24;
  v14 = malloc_type_malloc(v13, 0x100004077774924uLL);
  if (v14)
  {
    v15 = v14;
    v16 = v14 + v13;
    *&v51 = __PAIR64__(v10, v9);
    *(&v51 + 1) = v9;
    v17 = ((&v14[2 * (v10 * v9) + 1] + 3) & 0xFFFFFFFFFFFFFFF8);
    if ((v14 + v13) < v17)
    {
      goto LABEL_58;
    }

    v47 = a1;
    v52 = v14;
    sub_2367A1548(a2, a3, &v51, a4);
    v48 = v17;
    v18 = &v17[2 * v10];
    if (v18 > v16)
    {
      goto LABEL_58;
    }

    if (v10 >= 1)
    {
      v19 = v10;
      v20 = v15;
      v21 = v17;
      do
      {
        cblas_scnrm2_NEWLAPACK();
        *v21++ = v22;
        v20 += 2 * v9;
        --v19;
      }

      while (v19);
    }

    v44 = ((v18 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v16 < v44)
    {
LABEL_58:
      __break(1u);
    }

    bzero(&v17[2 * v10], v10);
    v26 = v47;
    v27 = *(v47 + 2);
    if (!v27)
    {
      v27 = 100;
    }

    v45 = v27;
    v28 = *(v47 + 2);
    v25.n128_u64[0] = v47[3];
    v25.n128_f32[0] = v25.n128_f64[0];
    v29 = v25.n128_f32[0] == 0.0;
    if (v25.n128_f32[0] < 0.0)
    {
      v25.n128_f32[0] = 0.0;
    }

    if (v29)
    {
      v30 = 0.00034527;
    }

    else
    {
      v30 = v25.n128_f32[0];
    }

    v31 = v47[4];
    if (v31)
    {
      v23 = (v31)("   Itr   ||r[0]||_2\n", v25);
    }

    if (v45 < 1)
    {
LABEL_41:
      v41 = *v26;
      if (!*v26)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23670BAC8();
        }

        _SparseTrap();
      }

      memset(&__str[35], 0, 221);
      strcpy(__str, "Exceeded maximum iteration limit.\n");
      v41(__str);
      v42 = 1;
    }

    else
    {
      v32 = 0;
      v33 = v28;
      while (1)
      {
        if (v26[4] && (v32 < 0xA || !(v32 % 0xA)))
        {
          if (v32)
          {
            v34 = v15;
          }

          else
          {
            v34 = v17;
          }

          snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v32, *v34);
          v23 = (v26[4])(__str);
        }

        _SparseCGIterate_Complex_Float(v23, v32, v44, v18, a2, v24, &v51, a5, a4);
        v15 = v52;
        if (v10 < 1)
        {
          break;
        }

        v35 = (v52 + 4);
        v36 = 8 * SDWORD2(v51);
        v37 = 1;
        v38 = v10;
        v39 = v18;
        do
        {
          if ((*v39 & 1) == 0)
          {
            v40 = hypotf(*(v35 - 1), *v35) < (v33 + (v30 * *v17));
            *v39 = v40;
            v37 &= v40;
          }

          v35 = (v35 + v36);
          ++v17;
          ++v39;
          --v38;
        }

        while (v38);
        v26 = v47;
        if (v37)
        {
          goto LABEL_52;
        }

        v32 = (v32 + 1);
        v17 = v48;
        if (v32 == v45)
        {
          goto LABEL_41;
        }
      }

      LODWORD(v32) = 0;
LABEL_52:
      if (!v26[4])
      {
        v42 = 0;
        goto LABEL_55;
      }

      snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v32 + 1, *v15);
      v26[4](__str);
      v42 = 0;
    }

    v15 = v52;
LABEL_55:
    free(v15);
    return v42;
  }

  if (!*a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23670BB0C();
    }

    _SparseTrap();
  }

  memset(__str, 0, 256);
  snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld.\n", v13);
  (*a1)(__str);
  return 4294967197;
}

uint64_t sub_2367A1548(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v6 = 4;
  if (*(a1 + 3))
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + v7);
  if (*(a1 + 3))
  {
    v6 = 0;
  }

  v9 = *(a1 + v6);
  v10 = *(a4 + 16);
  v21 = *a1;
  v22 = *(a1 + 2);
  v19 = *a3;
  v20 = *(a3 + 2);
  result = v10(a4, 0, 111, &v21, &v19);
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if (v8 >= 1)
      {
        for (j = 0; j != v8; ++j)
        {
          if (*(a2 + 12))
          {
            v14 = j;
          }

          else
          {
            v14 = i;
          }

          if (*(a2 + 12))
          {
            v15 = i;
          }

          else
          {
            v15 = j;
          }

          v16 = v15 + *(a2 + 8) * v14;
          if (*(a3 + 3))
          {
            v17 = j;
          }

          else
          {
            v17 = i;
          }

          if (*(a3 + 3))
          {
            v18 = i;
          }

          else
          {
            v18 = j;
          }

          *(*(a3 + 2) + 8 * (v18 + *(a3 + 2) * v17)) = vsub_f32(*(*(a2 + 16) + 8 * v16), *(*(a3 + 2) + 8 * (v18 + *(a3 + 2) * v17)));
        }
      }
    }
  }

  return result;
}

void _SparseGMRESIterate_Complex_Float(uint64_t a1, int a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a1 + 8);
  if ((v10 - 1) >= 2)
  {
    if (!*(a1 + 8))
    {
      v16 = *(a5 + 12);
      v17 = 4;
      if (v16)
      {
        v18 = 4;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v17 = 0;
      }

      if (*(a1 + 12))
      {
        v19 = *(a1 + 12);
      }

      else
      {
        v19 = 16;
      }

      if (*(a7 + 12))
      {
        v39 = *(a7 + 8);
      }

      else
      {
        v39 = 1;
      }

      v248 = v39;
      if (a2 < 0)
      {

        sub_2367A1548(a5, a6, a7, a9);
      }

      else
      {
        v40 = *(a5 + v18);
        v41 = *(a5 + v17);
        v214 = v40;
        v240 = v40;
        v42 = v41 * v40;
        v236 = v41;
        v209 = a3 + 8 * v19 * v42;
        v231 = v19 * v41 * v19;
        v207 = v209 + 8 * v231;
        v227 = 2 * v19 * v41;
        v237 = 8 * v42;
        v43 = v207 + 8 * v227 + v237;
        v234 = v19 * v42;
        __dst = (v43 + 8 * v19 * v42);
        v220 = &__dst[v237];
        v225 = (a2 % v19);
        v254 = v42;
        v44 = a2 % v19 * v42;
        __srca = (v43 + 8 * v44);
        if (!a2 && v41 >= 1)
        {
          v45 = 0;
          v46 = (a3 + 4);
          do
          {
            if ((a4[v45] & 1) == 0)
            {
              v47 = (*(a7 + 12) & 1) != 0 ? v45 : *(a7 + 8) * v45;
              v48 = *(a7 + 16);
              v49 = &v220[8 * v45 * v19];
              cblas_scnrm2_NEWLAPACK();
              *v49 = v50;
              v49[1] = 0.0;
              if (v240 >= 1)
              {
                v51 = (v48 + 8 * v47 + 4);
                v52 = v46;
                v53 = v240;
                do
                {
                  *(v52 - 1) = sub_23681E680(*(v51 - 1), *v51, *v49, v49[1]);
                  *v52 = v54;
                  v52 += 2;
                  v51 += 2 * v248;
                  --v53;
                }

                while (v53);
              }
            }

            ++v45;
            v46 += 2 * v214;
          }

          while (v45 != v236);
        }

        v55 = 8 * v234;
        v56 = 8 * v231;
        v57 = 8 * v227;
        memcpy(__dst, __srca, v237);
        if (a8)
        {
          v58 = *(a8 + 8);
          v59 = *(a8 + 16);
          v259 = __PAIR64__(v236, v240);
          v260 = v240;
          v261 = a3 + 8 * v44;
          v255 = *&v240;
          v256 = *&v236;
          v257 = v240;
          v258 = __srca;
          v59(v58, 0, &v259, &v255);
        }

        else if (v236 >= 1)
        {
          v60 = 8 * v214;
          v61 = a4;
          v62 = (a3 + v56 + 8 * v44 + v55 + v57 + v237);
          v63 = v236;
          do
          {
            v64 = *v61++;
            if ((v64 & 1) == 0)
            {
              memcpy(v62, (a3 + 8 * v44), v60);
            }

            v44 += v240;
            v62 += v60;
            --v63;
          }

          while (v63);
        }

        v65 = *(a9 + 16);
        v259 = __PAIR64__(v236, v240);
        v260 = v240;
        v261 = __srca;
        v255 = *&v240;
        v256 = *&v236;
        v257 = v240;
        v258 = v207 + 8 * v227;
        v65(a9, 0, 111, &v259, &v255);
        if (v236 >= 1)
        {
          v66 = 0;
          v67 = v19 - a2;
          if (v19 <= a2)
          {
            v67 = 1;
          }

          v246 = v19 - v67;
          v69 = v19 < 1 || v19 - v67 < 0;
          v205 = v69;
          v251 = v225 * v19;
          v249 = v67 + v225;
          v70 = v56 + v55 + v57 + a3 + 4;
          v71 = 8 * v214;
          v72 = a3 + 8 * (a2 + 1) % v19 * v254 + 4;
          v218 = (a2 - v19) & ~((a2 - v19) >> 31);
          do
          {
            if ((a4[v66] & 1) == 0)
            {
              v232 = v72;
              v235 = v70;
              v228 = v66 * v19;
              v73 = v209 + 8 * v228 * v19;
              v238 = v66;
              v74 = v240;
              if (!v205)
              {
                v75 = 0;
                do
                {
                  cblas_cdotc_sub_NEWLAPACK();
                  v259 = vneg_f32(*(v73 + 8 * ((v249 + v75) % v19 + v251)));
                  cblas_caxpy_NEWLAPACK();
                  if (v75 + 1 >= v19)
                  {
                    break;
                  }
                }

                while (v75++ < v246);
              }

              cblas_scnrm2_NEWLAPACK();
              v259 = LODWORD(v77);
              if (hypotf(v77, 0.0) == 0.0)
              {
                LODWORD(v259) = 0x800000;
              }

              v78 = v232;
              v79 = v235;
              if (v240 >= 1)
              {
                do
                {
                  *(v78 - 1) = sub_23681E680(*(v79 - 1), *v79, *&v259, *(&v259 + 1));
                  *v78 = v80;
                  v79 += 2;
                  v78 += 2;
                  --v74;
                }

                while (v74);
              }

              v81 = v207 + 8 * v238 * 2 * v19;
              v82 = v73 + 8 * v251;
              v83 = 0.0;
              v84 = 0.0;
              if (a2 > v218)
              {
                v85 = a2 - v218;
                v86 = (a2 - v19) & ~((a2 - v19) >> 31);
                do
                {
                  v87 = v86 % v19;
                  v88 = *(v81 + 8 * (2 * (v86 % v19)));
                  if (v86 % v19 + 1 < v19)
                  {
                    v89 = v87 + 1;
                  }

                  else
                  {
                    v89 = 0;
                  }

                  v90 = *(v81 + 8 * ((2 * (v87 & 0x3FFFFFFF)) | 1));
                  if (v19 == v85)
                  {
                    v91 = *(v82 + 8 * v89);
                    v84 = vmul_f32(v90, v91).f32[0] - vmuls_lane_f32(v90.f32[1], v91, 1);
                    v83 = vmuls_lane_f32(v91.f32[0], v90, 1) + vmuls_lane_f32(v90.f32[0], v91, 1);
                    v92 = vmul_n_f32(v91, v88);
                  }

                  else
                  {
                    v93 = *(v82 + 8 * v89);
                    v94 = *(v82 + 8 * v87);
                    v95 = vrev64_s32(vmul_lane_f32(v90, v93, 1));
                    v96 = vmul_n_f32(v90, v93.f32[0]);
                    v97.i32[0] = vsub_f32(v96, v95).u32[0];
                    v97.i32[1] = vadd_f32(v96, v95).i32[1];
                    *(v82 + 8 * v87) = vadd_f32(vmul_n_f32(v94, v88), v97);
                    v98 = vcvtq_f64_f32(v90);
                    v99.f64[1] = v98.f64[1];
                    v99.f64[0] = -v98.f64[0];
                    v100 = vmulq_n_f64(v98, v94.f32[1]);
                    v92 = vcvt_f32_f64(vaddq_f64(vsubq_f64(vmulq_n_f64(v99, v94.f32[0]), vextq_s8(v100, v100, 8uLL)), vcvtq_f64_f32(vmul_n_f32(v93, v88))));
                  }

                  *(v82 + 8 * v89) = v92;
                  ++v86;
                  --v85;
                }

                while (v85);
              }

              v101 = &v220[8 * v228];
              v102 = (v81 + 8 * (2 * v225));
              v103 = (v81 + 8 * ((2 * (v225 & 0x3FFFFFFF)) | 1));
              v229 = (v73 + 8 * (v225 * v19 + v225));
              cblas_crotg_NEWLAPACK();
              v104 = *v103;
              v105 = v103[1];
              v106 = &v101[8 * v225];
              v107 = *v106;
              v108 = v106[1];
              v109 = -(v104 * v107) - v105 * v108;
              *&v105 = v105 * v107 - v104 * v108;
              v110 = &v101[8 * ((a2 + 1) % v19)];
              *v110 = v109;
              v110[1] = *&v105;
              v111 = *v102 * v106[1];
              *v106 = *v102 * *v106;
              v106[1] = v111;
              if (v19 <= a2)
              {
                v255 = -v84;
                v256 = -v83;
                cblas_caxpy_NEWLAPACK();
                cblas_cgemm_NEWLAPACK();
              }

              cblas_cgemm_NEWLAPACK();
              v255 = sub_23681E680(1.0, 0.0, *v229, v229[1]);
              v256 = v112;
              cblas_cscal_NEWLAPACK();
              cblas_caxpy_NEWLAPACK();
              v113 = hypotf(*v110, v110[1]);
              v66 = v238;
              if (*(a7 + 12))
              {
                v114 = v238;
              }

              else
              {
                v114 = *(a7 + 8) * v238;
              }

              v72 = v232;
              v70 = v235;
              v71 = 8 * v214;
              v115 = *(a7 + 16) + 8 * v114;
              *v115 = v113;
              *(v115 + 4) = 0;
            }

            ++v66;
            v70 += v71;
            v72 += v71;
          }

          while (v66 != v236);
        }
      }
    }

    return;
  }

  v11 = 4;
  if (*(a5 + 12))
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a5 + v12);
  if (*(a5 + 12))
  {
    v11 = 0;
  }

  v14 = *(a5 + v11);
  if (*(a7 + 12))
  {
    v15 = *(a7 + 8);
  }

  else
  {
    v15 = 1;
  }

  v226 = v15;
  if (*(a1 + 12))
  {
    v20 = *(a1 + 12);
  }

  else
  {
    v20 = 16;
  }

  v239 = (a2 % v20);
  v206 = v20 + 1;
  v21 = (v20 + 1) * v14;
  v203 = 8 * v21 * v13;
  v253 = v20 * v20;
  v201 = 8 * v20 * v20 * v14;
  v224 = a3 + v203;
  v202 = 16 * v14 * v20;
  v217 = a3 + v203 + v201;
  v250 = v14 * v13;
  v213 = v217 + v202 + 8 * v250;
  v22 = v213 + 8 * v250;
  v230 = v20;
  __src = v14 * v13;
  v23 = 8 * v20 * v14 * v13;
  if (v10 == 2)
  {
    v24 = v213 + 8 * v14 * v13;
  }

  else
  {
    v24 = 0;
  }

  v219 = v24;
  if (v10 != 2)
  {
    v23 = 0;
  }

  v233 = v22 + v23;
  v245 = v14;
  v247 = v22 + v23 + 8 * v21;
  if (a2 < 0 || !v239)
  {
    if (!a2)
    {
LABEL_130:
      if (v14 >= 1)
      {
        v132 = 0;
        v133 = (a3 + 4);
        do
        {
          *(v247 + 4 * v132) = 0;
          if ((a4[v132] & 1) == 0)
          {
            v134 = (*(a7 + 12) & 1) != 0 ? v132 : *(a7 + 8) * v132;
            v135 = *(a7 + 16);
            v136 = (v233 + 8 * v132 * v206);
            cblas_scnrm2_NEWLAPACK();
            *v136 = v137;
            v136[1] = 0.0;
            if (v13 >= 1)
            {
              v138 = (v135 + 8 * v134 + 4);
              v139 = v133;
              v140 = v13;
              do
              {
                *(v139 - 1) = sub_23681E680(*(v138 - 1), *v138, *v136, v136[1]);
                *v139 = v141;
                v139 += 2;
                v138 += 2 * v226;
                --v140;
              }

              while (v140);
            }
          }

          ++v132;
          v133 += 2 * v13;
          v14 = v245;
        }

        while (v132 != v245);
      }

      goto LABEL_140;
    }

    if (v14 < 1)
    {
      if (v10 == 2)
      {
        goto LABEL_129;
      }
    }

    else
    {
      v25 = 0;
      v26 = 8 * v21;
      v200 = v23 + 16 * v250;
      v27 = v200 + v201 + v203 + v202;
      v28 = a3 + v27;
      v208 = v26;
      v29 = (a3 + v26 + v27);
      v30 = v14;
      do
      {
        if (*v29++)
        {
          cblas_ctrsv_NEWLAPACK();
        }

        v28 += 8 * v206;
        v25 += v253;
        --v30;
      }

      while (v30);
      if (v10 == 2)
      {
        v32 = 0;
        v33 = v245;
        do
        {
          if (*(v247 + 4 * v32))
          {
            cblas_cgemv_NEWLAPACK();
            v33 = v245;
            if (v13 >= 1)
            {
              for (i = 0; i != v13; ++i)
              {
                v35 = *(a5 + 8);
                v36 = v32 + v35 * i;
                v37 = i + v32 * v35;
                if (*(a5 + 12))
                {
                  v38 = v36;
                }

                else
                {
                  v38 = v37;
                }

                *(*(a5 + 16) + 8 * v38) = vadd_f32(*(a3 + v201 + v203 + v202 + 8 * i), *(*(a5 + 16) + 8 * v38));
              }
            }
          }

          ++v32;
        }

        while (v32 != v33);
        goto LABEL_129;
      }

      v116 = 0;
      v117 = v201 + v203 + v202;
      v118 = v117 + 8 * __src;
      v119 = 8 * v13;
      v120 = v117 + v200;
      v121 = v117 + v200 + v208;
      v14 = v245;
      v122 = v245;
      v123 = a3;
      do
      {
        if (*(v123 + v121))
        {
          cblas_cgemv_NEWLAPACK();
          v14 = v245;
          v123 = a3;
        }

        v118 += v119;
        v116 += v119;
        v120 += 8 * v206;
        v121 += 4;
        --v122;
      }

      while (v122);
    }

    if (a8)
    {
      v124 = *(a8 + 8);
      v125 = *(a8 + 16);
      v259 = __PAIR64__(v14, v13);
      v260 = v13;
      v261 = v217 + v202 + 8 * v250;
      v255 = *&v13;
      v256 = *&v14;
      v257 = v13;
      v258 = v217 + v202;
      v125(v124, 0, &v259, &v255);
      v14 = v245;
      v126 = v217 + v202;
    }

    else
    {
      v126 = v217 + v202 + 8 * v250;
    }

    if (v14 >= 1)
    {
      v127 = 0;
      for (j = 0; j != v14; ++j)
      {
        if (v13 >= 1 && *(v247 + 4 * j))
        {
          for (k = 0; k != v13; ++k)
          {
            if (*(a5 + 12))
            {
              v130 = k;
            }

            else
            {
              v130 = j;
            }

            if (*(a5 + 12))
            {
              v131 = j;
            }

            else
            {
              v131 = k;
            }

            *(*(a5 + 16) + 8 * (v131 + v130 * *(a5 + 8))) = vadd_f32(*(v126 + 8 * v127 + 8 * k), *(*(a5 + 16) + 8 * (v131 + v130 * *(a5 + 8))));
          }
        }

        v127 += v13;
      }
    }

LABEL_129:
    sub_2367A1548(a5, a6, a7, a9);
    v14 = v245;
    if (a2 < 0)
    {
      return;
    }

    goto LABEL_130;
  }

LABEL_140:
  if (a8)
  {
    v142 = *(a8 + 8);
    v143 = *(a8 + 16);
    if (*(a1 + 8) == 2)
    {
      v144 = v219 + 8 * v239 * __src;
    }

    else
    {
      v144 = v217 + v202 + 8 * v250;
    }

    v259 = __PAIR64__(v14, v13);
    v260 = v13;
    v261 = a3 + 8 * v239 * __src;
    v255 = *&v13;
    v256 = *&v14;
    v257 = v13;
    v258 = v144;
    v145 = v14;
    v143(v142, 0, &v259, &v255);
    v146 = *(a9 + 16);
    v259 = __PAIR64__(v145, v13);
    v260 = v13;
    v261 = v144;
    v255 = *&v13;
    v256 = *&v145;
    v257 = v13;
    v258 = v217 + v202;
    v146(a9, 0, 111, &v259, &v255);
  }

  else
  {
    v147 = *(a9 + 16);
    v259 = __PAIR64__(v14, v13);
    v260 = v13;
    v261 = a3 + 8 * v239 * __src;
    v255 = *&v13;
    v256 = *&v14;
    v257 = v13;
    v258 = v217 + v202;
    v145 = v14;
    v147(a9, 0, 111, &v259, &v255, a6);
  }

  v148 = a3;
  if (v145 >= 1)
  {
    v149 = v145;
    v150 = 0;
    v151 = 0;
    v210 = 2 * v230;
    v152 = 8 * v13;
    v153 = 8 * v250;
    v154 = v201 + v203 + a3;
    v155 = v154 + v202 + 4;
    v156 = a3 + 8 * (v239 + 1) * v250 + 4;
    v157 = (v154 + 12);
    v221 = a3 + v203 + 8 * v230 * v239;
    v158 = 8 * v210;
    while ((a4[v151] & 1) != 0)
    {
LABEL_163:
      ++v151;
      v150 += v253;
      v148 += v152;
      v155 += v152;
      v156 += v152;
      v157 = (v157 + v158);
      if (v151 == v149)
      {
        return;
      }
    }

    v252 = v150;
    v243 = v148;
    ++*(v247 + 4 * v151);
    if ((v239 & 0x80000000) == 0)
    {
      v159 = (v239 + 1);
      v160 = (v221 + 8 * v252);
      v161 = v148;
      do
      {
        cblas_cdotc_sub_NEWLAPACK();
        v162 = *v160++;
        v259 = vneg_f32(v162);
        cblas_caxpy_NEWLAPACK();
        v161 += v153;
        --v159;
      }

      while (v159);
    }

    cblas_scnrm2_NEWLAPACK();
    v259 = LODWORD(v163);
    if (hypotf(v163, 0.0) == 0.0)
    {
      v164 = a7;
      v165 = *(a7 + 16);
      v166 = 0.0;
      v150 = v252;
      if (*(a7 + 12))
      {
LABEL_154:
        v167 = v151;
LABEL_162:
        v148 = v243;
        v149 = v245;
        v158 = 8 * v210;
        v152 = 8 * v13;
        v198 = v165 + 8 * v167;
        *v198 = v166;
        *(v198 + 4) = 0;
        goto LABEL_163;
      }
    }

    else
    {
      v168 = v156;
      v169 = v155;
      v170 = v13;
      if (v13 >= 1)
      {
        do
        {
          *(v168 - 1) = sub_23681E680(*(v169 - 1), *v169, *&v259, *(&v259 + 1));
          *v168 = v171;
          v169 += 2;
          v168 += 2;
          --v170;
        }

        while (v170);
      }

      v150 = v252;
      if (v239 >= 1)
      {
        v172 = (v221 + 12 + 8 * v252);
        v173 = (v224 + 8 * v253 * v151 + 8 * v230 * v239);
        v174 = *v173;
        v175 = v173[1];
        v176 = v157;
        v177 = v239;
        do
        {
          v178 = *(v176 - 3);
          v179 = *(v176 - 1);
          v180 = *v176;
          v181 = *(v172 - 1);
          v182 = *v172;
          v183 = (*v176 * v181) + (v179 * *v172);
          *(v172 - 3) = (v174 * v178) + ((v179 * v181) - (*v176 * *v172));
          *(v172 - 2) = (v175 * v178) + v183;
          v184 = v174;
          v185 = v175;
          v186 = v184 * v180 - v185 * v179;
          v174 = -(v179 * v184) - v185 * v180 + (v178 * v181);
          v175 = v186 + (v178 * v182);
          *(v172 - 1) = v174;
          *v172 = v175;
          v176 += 4;
          v172 += 2;
          --v177;
        }

        while (v177);
      }

      v187 = v217 + 8 * v151 * v210;
      v188 = v233 + 8 * v151 * v206;
      v189 = (v187 + 16 * v239);
      v190 = (v187 + 8 * ((2 * v239) | 1));
      cblas_crotg_NEWLAPACK();
      v191 = *v190;
      v192 = v190[1];
      v193 = (v188 + 8 * v239);
      v194 = *v193;
      v195 = v193[1];
      v196 = -(v191 * v194) - v192 * v195;
      *&v192 = v192 * v194 - v191 * v195;
      v197 = v188 + 8 * (v239 + 1);
      *v197 = v196;
      *(v197 + 4) = LODWORD(v192);
      *&v194 = *v189 * v193[1];
      *v193 = *v189 * *v193;
      v193[1] = *&v194;
      v166 = hypotf(v196, *&v192);
      v164 = a7;
      v165 = *(a7 + 16);
      if (*(a7 + 12))
      {
        goto LABEL_154;
      }
    }

    v167 = *(v164 + 8) * v151;
    goto LABEL_162;
  }
}

void _SparseGMRESSolve_Complex_Float(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = 4;
  if (*(a2 + 12))
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a2 + v7);
  if (*(a2 + 12))
  {
    v6 = 0;
  }

  v9 = *(a2 + v6);
  v10 = *(a1 + 8);
  if (a5 || v10 != 2)
  {
    if (*(a1 + 12))
    {
      v12 = *(a1 + 12);
    }

    else
    {
      v12 = 16;
    }

    v13 = v10 - 1;
    v14 = v9 * v8;
    if (v10 == 2)
    {
      v15 = v14 * v12;
    }

    else
    {
      v15 = 0;
    }

    v16 = 5 * v9 + 8 * (v15 + v9 + v14 + (v9 + v9 * (v12 + v8) * (v12 + 3)));
    if (v13 > 1)
    {
      v16 = v9 + 8 * ((((v12 + 3) * v12 + (2 * v12 + 2) * v8) * v9) + (v9 + v9 * v8));
    }

    v17 = v16 + 24;
    v18 = malloc_type_malloc(v16 + 24, 0x100004077774924uLL);
    if (v18)
    {
      v19 = v18 + v17;
      *&v52 = __PAIR64__(v9, v8);
      *(&v52 + 1) = v8;
      v20 = ((&v18[2 * v14 + 1] + 3) & 0xFFFFFFFFFFFFFFF8);
      if (v18 + v17 < v20 || (v43 = v18, v53 = v18, sub_2367A1548(a2, a3, &v52, a4), v21 = &v20[v9 + 7] & 0xFFFFFFFFFFFFFFF8, v19 < v21) || (v46 = v20, bzero(v20, v9), v48 = &v20[v9 + 7] & 0xFFFFFFFFFFFFFFF8, v45 = (v21 + 4 * v9 + 7) & 0xFFFFFFFFFFFFFFF8, v19 < v45))
      {
        __break(1u);
      }

      else
      {
        v22 = v8;
        if (v9 >= 1)
        {
          v23 = v9;
          v24 = v43;
          v25 = (&v20[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
          do
          {
            cblas_scnrm2_NEWLAPACK();
            *v25++ = v26;
            v24 += 2 * v8;
            --v23;
          }

          while (v23);
        }

        if (*(a1 + 16))
        {
          v27 = *(a1 + 16);
        }

        else
        {
          v27 = 100;
        }

        v28 = *(a1 + 32);
        v29 = v28 == 0.0;
        if (v28 < 0.0)
        {
          v28 = 0.0;
        }

        if (v29)
        {
          v30 = 0.00034527;
        }

        else
        {
          v30 = v28;
        }

        v44 = v27;
        v31 = v20;
        if (v27 < 1)
        {
LABEL_52:
          v42 = *a1;
          if (!*a1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              sub_23670BAC8();
            }

            _SparseTrap();
          }

          memset(&__str[35], 0, 221);
          strcpy(__str, "Exceeded maximum iteration limit.\n");
          v42(__str);
        }

        else
        {
          v32 = 0;
          v33 = *(a1 + 24);
          if (BYTE12(v52))
          {
            v34 = 1;
          }

          else
          {
            v34 = v22;
          }

          v35 = 8 * v34;
          while (1)
          {
            if (*(a1 + 40) && (v32 < v12 || !(v32 % v12)))
            {
              v36 = v43;
              if (!v32)
              {
                v36 = v48;
              }

              snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v32, *v36);
              (*(a1 + 40))(__str);
            }

            _SparseGMRESIterate_Complex_Float(a1, v32, v45, v31, a2, a3, &v52, a5, a4);
            if (v9 < 1)
            {
              v32 = 0;
              goto LABEL_67;
            }

            v37 = 1;
            v38 = v9;
            v39 = v43 + 1;
            v40 = v48;
            do
            {
              v41 = (*v31 & 1) != 0 || hypotf(*(v39 - 1), *v39) < (v33 + (v30 * *v40));
              *v31++ = v41;
              v37 &= v41;
              ++v40;
              v39 = (v39 + v35);
              --v38;
            }

            while (v38);
            if (v37)
            {
              break;
            }

            ++v32;
            v31 = v46;
            if (v32 == v44)
            {
              goto LABEL_52;
            }
          }

          v31 = v46;
LABEL_67:
          if (*(a1 + 40))
          {
            snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v32 + 1, *v43);
            (*(a1 + 40))(__str);
          }

          _SparseGMRESIterate_Complex_Float(a1, -1, v45, v31, a2, a3, &v52, a5, a4);
        }

        free(v43);
      }
    }

    else
    {
      if (!*a1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23670BB0C();
        }

        _SparseTrap();
      }

      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld.\n", v17);
      (*a1)(__str);
    }
  }

  else
  {
    v11 = *a1;
    if (!*a1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23670BB88();
      }

      _SparseTrap();
    }

    memset(&__str[100], 0, 156);
    strcpy(__str, "FGMRES requires a preconditioner.\nIf no preconditioner is available, use GMRES or DQGMRES instead.\n");
    v11(__str);
  }
}

uint64_t sub_2367A3008(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 16);
  if (v5 >= a3)
  {
    v5 = a3;
  }

  if (v5 >= a4)
  {
    v5 = a4;
  }

  v6 = 8 * (a3 + (v5 + 3) * a4 + 3) + 140;
  v7 = 16 * a4 * a5 + 104;
  if (!a2)
  {
    v7 = 104;
  }

  return v7 + v6 * a5;
}

void _SparseLSMRIterate_Complex_Float(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, __int128 *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a8;
  v13 = a4;
  v14 = a1;
  v15 = 4;
  v16 = (a6[3] & 1) != 0;
  v17 = a6[v16];
  if (*(a5 + 3))
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a5 + v18);
  if (*(a5 + 3))
  {
    v15 = 0;
  }

  v20 = *(a5 + v15);
  v21 = a9;
  v22 = *(a1 + 16);
  if (v22 >= v17)
  {
    v22 = v17;
  }

  if (v22 >= v19)
  {
    v23 = *(a5 + v18);
  }

  else
  {
    v23 = v22;
  }

  v70[0] = v19;
  v70[1] = v20;
  v70[2] = v19;
  v70[3] = 0;
  v71 = (a3 + 140 * v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68[0] = v19;
  v68[1] = v20;
  v68[2] = v19;
  v68[3] = 0;
  v69 = v71 + 8 * v20 * v19;
  v24 = v69 + 8 * v20 * v19;
  *&v66 = __PAIR64__(v20, v17);
  *(&v66 + 1) = v17;
  v67 = v24 + 8 * v20 * v19 * v23;
  *&v64 = __PAIR64__(v20, v19);
  *(&v64 + 1) = v19;
  v65 = v67 + 8 * v20 * v17;
  v25 = (v65 + 8 * v20 * v19);
  *&v62 = __PAIR64__(v20, v19);
  *(&v62 + 1) = v19;
  v63 = 0;
  *&v60 = __PAIR64__(v20, v19);
  *(&v60 + 1) = v19;
  v61 = 0;
  if (a8)
  {
    v26 = 8 * v20 * v19;
    v63 = v65 + v26;
    v61 = &v25[v26 / 4];
    if ((a2 & 0x80000000) == 0)
    {
      v25 = (v25 + v26 + v26);
      goto LABEL_18;
    }

    sub_236805D74(a5, &v62);
    v54 = *(v9 + 8);
    v55 = *(v9 + 16);
    v74 = v62;
    v75 = v63;
    v72 = *a5;
    v73 = *(a5 + 2);
    v55(v54, 111, &v74, &v72);
LABEL_47:
    sub_2367A1548(a5, a6, a7, a9);
    return;
  }

  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_47;
  }

LABEL_18:
  v59 = &v25[v20];
  v58 = &v59[v20];
  if (a2 || (v57 = a3, v30 = sub_2367A33D4(a1, v17, v19, v20, a4, &v66, &v64, a5, a6, &v62, v70, v68, v24, a8, a9, a3), v14 = a1, v9 = a8, LODWORD(a2) = 0, v13 = a4, v21 = a9, a3 = v57, (v30 & 1) == 0))
  {
    v31 = *(v14 + 8);
    v56 = v9;
    v32 = a3;
    sub_2367A380C(a2, v17, v19, v20, v13, &v66, &v64, a5, v31, 0.0, &v62, &v60, v70, v68, v24, v25, v59, v58, v56, v21, a3);
    if (v20 >= 1)
    {
      v33 = v32;
      v34 = 0;
      v35 = 4;
      if ((*(a7 + 12) & 1) == 0)
      {
        v35 = 0;
      }

      v36 = *(a7 + v35);
      v37 = (v33 + 64);
      do
      {
        if (v36 >= 1)
        {
          v38 = hypotf(*(v37 - 1), *v37);
          v39 = (*(a7 + 12) & 1) != 0 ? v34 : *(a7 + 8) * v34;
          v40 = *(a7 + 16) + 8 * v39;
          *v40 = v38;
          *(v40 + 4) = 0;
          if (v36 != 1)
          {
            v41 = *(a7 + 8);
            v42 = v34 + v41;
            v43 = v41 * v34;
            v44 = (*(a7 + 12) & 1) != 0 ? v42 : v43 + 1;
            v45 = (*(a7 + 16) + 8 * v44);
            *v45 = v25[v34];
            v45[1] = 0;
            if (v36 >= 3)
            {
              v46 = *(a7 + 8);
              v47 = v34 + 2 * v46;
              v48 = v46 * v34 + 2;
              v49 = (*(a7 + 12) & 1) != 0 ? v47 : v48;
              v50 = (*(a7 + 16) + 8 * v49);
              *v50 = v59[v34];
              v50[1] = 0;
              if (v36 != 3)
              {
                if (*(a7 + 12))
                {
                  v51 = 3;
                }

                else
                {
                  v51 = v34;
                }

                if (*(a7 + 12))
                {
                  v52 = v34;
                }

                else
                {
                  v52 = 3;
                }

                v53 = (*(a7 + 16) + 8 * (v52 + *(a7 + 8) * v51));
                *v53 = v58[v34];
                v53[1] = 0;
              }
            }
          }
        }

        ++v34;
        v37 += 35;
      }

      while (v20 != v34);
    }
  }
}

uint64_t sub_2367A33D4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, __int128 *a6, __int128 *a7, int *a8, int *a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v20 = *(a1 + 16);
  if (v20 >= a2)
  {
    v20 = a2;
  }

  v46 = a3;
  if (v20 >= a3)
  {
    v20 = a3;
  }

  v42 = v20;
  sub_236805D74(a9, a6);
  sub_2366FD4D0(a8);
  v21 = 1;
  if (a4 >= 1)
  {
    v22 = 0;
    v23 = a16;
    v24 = a4;
    v25 = 1;
LABEL_7:
    v26 = v23 + 140 * v22++;
    do
    {
      if ((*(a5 + v22 - 1) & 1) == 0)
      {
        *v26 = 0;
        *(v26 + 4) = 0;
        cblas_scnrm2_NEWLAPACK();
        *(v26 + 8) = v27;
        if (v27 > 0.0)
        {
          *&v49 = 1.0 / v27;
          DWORD1(v49) = 0;
          cblas_cscal_NEWLAPACK();
          v25 = 0;
          v23 = a16;
          if (v22 != a4)
          {
            goto LABEL_7;
          }

          goto LABEL_17;
        }

        *v26 = 1;
        *(v26 + 60) = 0;
        *(v26 + 64) = 0;
      }

      ++v22;
      v26 += 140;
    }

    while (v22 - a4 != 1);
    v23 = a16;
    if (v25)
    {
      v21 = 1;
      return v21 & 1;
    }

LABEL_17:
    v28 = *(a15 + 16);
    v49 = *a6;
    v50 = *(a6 + 2);
    if (a14)
    {
      v47 = *a10;
      v48 = *(a10 + 2);
      v28();
      v29 = *(a14 + 8);
      v30 = *(a14 + 16);
      v49 = *a10;
      v50 = *(a10 + 2);
      v47 = *a7;
      v48 = *(a7 + 2);
      v30(v29, 113, &v49, &v47);
    }

    else
    {
      v47 = *a7;
      v48 = *(a7 + 2);
      v28();
    }

    v31 = 0;
    v32 = 0;
    __n = 8 * v46;
    v33 = (v23 + 136);
    v21 = 1;
    do
    {
      if ((*(a5 + v32) & 1) == 0 && *(v33 - 32) != 0.0)
      {
        v34 = (*(a7 + 2) + 8 * v32 * *(a7 + 2));
        v35 = *(a11 + 16);
        v36 = *(a11 + 8);
        v43 = *(a12 + 8);
        v44 = *(a12 + 16);
        cblas_scnrm2_NEWLAPACK();
        *(v33 - 33) = v37;
        if (v37 > 0.0)
        {
          *&v49 = 1.0 / v37;
          DWORD1(v49) = 0;
          cblas_cscal_NEWLAPACK();
          v37 = *(v33 - 33);
        }

        v38 = v37 * *(v33 - 32);
        if (v38 == 0.0)
        {
          *(v33 - 136) = 1;
        }

        else
        {
          *(v33 - 68) = v42 > 0;
          *(v33 - 16) = 0.0;
          *(v33 - 15) = v42;
          *(v33 - 67) = 0;
          if (v42 >= 1)
          {
            memcpy((a13 + 8 * v31), v34, __n);
            v37 = *(v33 - 33);
            v38 = v37 * *(v33 - 32);
          }

          *(v33 - 19) = v38;
          *(v33 - 18) = 0.0;
          *(v33 - 31) = v37;
          *(v33 - 22) = 0.0;
          *(v33 - 30) = xmmword_23681FB70;
          *(v33 - 26) = xmmword_23681FE90;
          memcpy((v35 + 8 * v32 * v36), v34, __n);
          bzero((v44 + 8 * v32 * v43), __n);
          v21 = 0;
          v39 = *(v33 - 33);
          *(v33 - 12) = *(v33 - 32);
          *(v33 - 7) = 0;
          *(v33 - 21) = 0;
          *(v33 - 11) = xmmword_23681FEA0;
          *(v33 - 5) = 0;
          *(v33 - 7) = 0;
          *(v33 - 3) = 0.0;
          *v33 = v39 * v39;
          *(v33 - 1) = 0x7F7FFFFF00000000;
        }
      }

      ++v32;
      v33 += 35;
      v31 += v46 * v42;
    }

    while (v24 != v32);
  }

  return v21 & 1;
}

void sub_2367A380C(int a1, unsigned int a2, uint64_t a3, unsigned int a4, _BYTE *a5, __int128 *a6, __int128 *a7, uint64_t a8, float a9, float a10, __int128 *a11, __int128 *a12, uint64_t a13, uint64_t a14, uint64_t a15, _DWORD *a16, _DWORD *a17, _DWORD *a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = a3;
  v200 = a5;
  if (a4 >= 1)
  {
    v25 = a4;
    v26 = a5;
    v27 = a21;
    v28 = a16;
    v29 = a17;
    v30 = a18;
    do
    {
      v31 = *v26++;
      if ((v31 & 1) == 0 && *v27 == 1)
      {
        *v28 = 0;
        *v29 = 0;
        *v30 = -1082130432;
      }

      ++v30;
      ++v29;
      ++v28;
      v27 += 140;
      --v25;
    }

    while (v25);
    v32 = 0;
    v33 = (a21 + 4);
    do
    {
      if ((a5[v32] & 1) == 0 && (*(v33 - 1) & 1) == 0)
      {
        *&v203 = -*v33;
        DWORD1(v203) = 0;
        cblas_cscal_NEWLAPACK();
        a5 = v200;
      }

      ++v32;
      v33 += 35;
    }

    while (a4 != v32);
  }

  if (a19)
  {
    v34 = *(a19 + 8);
    v35 = *(a19 + 16);
    v203 = *a7;
    v204 = *(a7 + 2);
    v201 = *a11;
    v202 = *(a11 + 2);
    v35(v34, 111, &v203, &v201);
    v36 = *(a20 + 16);
    v203 = *a11;
    v37 = *(a11 + 2);
  }

  else
  {
    v36 = *(a20 + 16);
    v203 = *a7;
    v37 = *(a7 + 2);
  }

  v204 = v37;
  v201 = *a6;
  v202 = *(a6 + 2);
  v36();
  v38 = v200;
  if (a4 >= 1)
  {
    v193 = a6;
    v39 = 0;
    v40 = 0;
    v41 = v24;
    v42 = a21 + 76;
    v43 = -a4;
    v196 = v24;
    v171 = a7;
    v172 = v24;
    v170 = a4;
    v173 = v24;
    while (2)
    {
      v187 = v40;
      v44 = v41 * v39;
      v45 = (v42 + 140 * v39);
      v46 = v39++;
      while (1)
      {
        if ((v38[v39 - 1] & 1) == 0 && (*(v45 - 19) & 1) == 0)
        {
          v47 = v43;
          v48 = *(v171 + 2);
          v49 = *(v171 + 2);
          v50 = *v45;
          cblas_scnrm2_NEWLAPACK();
          v43 = v47;
          v41 = v196;
          v38 = v200;
          *(v45 - 17) = v51;
          if (v51 > 0.0)
          {
            break;
          }
        }

        v44 += v41;
        ++v39;
        v45 += 35;
        ++v46;
        if (v43 + v39 == 1)
        {
          v58 = a21;
          v61 = v171;
          v60 = v172;
          v59 = v170;
          v57 = v173;
          if ((v187 & 1) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_32;
        }
      }

      *&v203 = 1.0 / v51;
      DWORD1(v203) = 0;
      cblas_cscal_NEWLAPACK();
      v52 = v172;
      v53 = v173;
      if (*(v45 - 8) == 1)
      {
        v54 = *v45;
        v55 = *(v45 - 1) + 1;
        *(v45 - 1) = v55;
        if (v55 >= SLODWORD(v54))
        {
          *(v45 - 1) = 0.0;
          *(v45 - 7) = 1;
        }

        v52 = v172;
        v53 = v173;
        if (v172 >= 1)
        {
          v56 = 0;
          do
          {
            *(a15 + 8 * v44 * v50 + 8 * (v56 + *(v45 - 1) * v172)) = *(v48 + 8 * v49 * v46 + 8 * v56);
            ++v56;
          }

          while (v173 != v56);
        }
      }

      *&v203 = -*(v45 - 17);
      DWORD1(v203) = 0;
      v40 = 1;
      v57 = v53;
      cblas_cscal_NEWLAPACK();
      v59 = v170;
      v58 = a21;
      v38 = v200;
      v60 = v52;
      v41 = v196;
      v42 = a21 + 76;
      v43 = v47;
      v61 = v171;
      if (v170 != v39)
      {
        continue;
      }

      break;
    }

LABEL_32:
    v62 = *(a20 + 16);
    if (a19)
    {
      v203 = *v193;
      v204 = *(v193 + 2);
      v201 = *a11;
      v202 = *(a11 + 2);
      v62();
      v63 = *(a19 + 8);
      v64 = *(a19 + 16);
      v203 = *a11;
      v204 = *(a11 + 2);
      v201 = *a12;
      v202 = *(a12 + 2);
      v64(v63, 113, &v203, &v201);
      v65 = 0;
      v38 = v200;
      v41 = v196;
      do
      {
        if (v60 >= 1)
        {
          v66 = 0;
          do
          {
            v67 = v66 + *(v61 + 2) * v65;
            *(*(v61 + 2) + 8 * v67) = vadd_f32(*(*(a12 + 2) + 8 * (v66 + *(a12 + 2) * v65)), *(*(v61 + 2) + 8 * v67));
            ++v66;
          }

          while (v57 != v66);
        }

        ++v65;
      }

      while (v65 != v59);
    }

    else
    {
      v203 = *v193;
      v204 = *(v193 + 2);
      v201 = *v61;
      v202 = *(v61 + 2);
      v62();
      v38 = v200;
      v41 = v196;
    }

LABEL_40:
    v68 = 0;
    v69 = 0;
    v70 = a9 != 0.0;
    if (a10 != 0.0)
    {
      v70 = 1;
    }

    v167 = v70;
    v71 = 8 * v41;
    v168 = 8 * v41;
    do
    {
      if ((v38[v69] & 1) == 0)
      {
        v72 = v58 + 140 * v69;
        if ((*v72 & 1) == 0)
        {
          v73 = *(v61 + 2);
          v192 = *(a13 + 16);
          v188 = *(v61 + 2);
          v190 = *(a13 + 8);
          v197 = *(a14 + 16);
          v194 = *(a14 + 8);
          if (*(v72 + 8) > 0.0)
          {
            v74 = *(v61 + 2);
            if (*(v72 + 68) == 1)
            {
              v75 = *(v72 + 76);
              if ((*(v72 + 69) & 1) == 0)
              {
                v75 = *(v72 + 72) + 1;
              }

              if (v75 >= 1)
              {
                v76 = v75;
                v77 = a15 + v68 * *(v72 + 76);
                do
                {
                  *&v203 = 0;
                  cblas_cdotc_sub_NEWLAPACK();
                  *&v203 = vneg_f32(*&v203);
                  cblas_caxpy_NEWLAPACK();
                  v77 += v71;
                  --v76;
                }

                while (v76);
              }
            }

            cblas_scnrm2_NEWLAPACK();
            *(v72 + 4) = v78;
            v73 = v74;
            if (v78 > 0.0)
            {
              *&v203 = COERCE_UNSIGNED_INT(1.0 / v78);
              cblas_cscal_NEWLAPACK();
            }
          }

          v79 = *(v72 + 12);
          v80 = *(v72 + 16);
          v81 = sub_23681E680(v79, v80, v79, v80);
          if (v167)
          {
            v83 = *(v72 + 12);
            v84 = *(v72 + 16);
            sub_2367A53BC(v83, v84, a9, a10);
            v79 = v85;
            v80 = 0.0;
            v86 = sub_23681E680(v83, v84, v85, 0.0);
            v176 = v87;
            v177 = v86;
            v183 = sub_23681E680(a9, a10, v79, 0.0);
            v182 = v88;
          }

          else
          {
            v176 = v82;
            v177 = v81;
            v183 = 0.0;
            v182 = 0.0;
          }

          v174 = *(v72 + 40);
          v175 = *(v72 + 36);
          sub_2367A53BC(v79, v80, *(v72 + 8), 0.0);
          *(v72 + 36) = v89;
          *(v72 + 40) = 0;
          v90 = sub_23681E680(v79, v80, v89, 0.0);
          v92 = v91;
          v93 = sub_23681E680(*(v72 + 8), 0.0, *(v72 + 36), *(v72 + 40));
          v95 = v94;
          v96 = *(v72 + 4);
          v178 = v92;
          v179 = v90;
          *(v72 + 12) = v90 * v96;
          *(v72 + 16) = v92 * v96;
          v97 = *(v72 + 40);
          v199 = *(v72 + 44);
          v184 = *(v72 + 56);
          v185 = *(v72 + 52);
          v98 = *(v72 + 28);
          v99 = *(v72 + 32);
          v100 = *(v72 + 36);
          v101 = (v98 * v100) - (v99 * v97);
          v102 = (v99 * v100) + (v98 * v97);
          v103 = *(v72 + 20);
          v104 = *(v72 + 24);
          v105 = (v103 * v100) - (v104 * v97);
          v186 = v105;
          v106 = (v104 * v100) + (v103 * v97);
          v180 = v95;
          v181 = v93;
          v107 = v93 * v96;
          v108 = v95 * v96;
          sub_2367A53BC(v105, v106, v107, v108);
          *(v72 + 44) = v109;
          *(v72 + 48) = 0;
          *(v72 + 20) = sub_23681E680(v105, v106, v109, 0.0);
          *(v72 + 24) = v110;
          v111 = sub_23681E680(v107, v108, *(v72 + 44), *(v72 + 48));
          *(v72 + 28) = v111;
          *(v72 + 32) = v112;
          v113 = *(v72 + 20);
          v114 = *(v72 + 24);
          v115 = *(v72 + 60);
          v116 = *(v72 + 64);
          v117 = v73;
          *(v72 + 52) = (v113 * v115) - (v114 * v116);
          *(v72 + 56) = (v114 * v115) + (v113 * v116);
          *(v72 + 60) = (v112 * v116) - (v111 * v115);
          *(v72 + 64) = -(v112 * v115) - (v111 * v116);
          if (v60 >= 1)
          {
            v118 = (v197 + 8 * v194 * v69 + 4);
            v119 = (v192 + 8 * v190 * v69 + 4);
            v120 = v173;
            do
            {
              v121 = *(v119 - 1);
              v122 = *v119;
              v123 = sub_23681E680((v101 * *(v72 + 36)) - (v102 * *(v72 + 40)), (v102 * *(v72 + 36)) + (v101 * *(v72 + 40)), v175 * v199, v174 * v199);
              v124 = *(v118 - 1);
              v126 = (v125 * v124) + (v123 * *v118);
              *(v118 - 1) = v121 - ((v123 * v124) - (v125 * *v118));
              *v118 = v122 - v126;
              v118 += 2;
              v119 += 2;
              --v120;
            }

            while (v120);
          }

          LODWORD(v203) = sub_23681E680(*(v72 + 52), *(v72 + 56), (*(v72 + 36) * *(v72 + 44)) - (*(v72 + 40) * *(v72 + 48)), (*(v72 + 40) * *(v72 + 44)) + (*(v72 + 36) * *(v72 + 48)));
          DWORD1(v203) = v127;
          cblas_caxpy_NEWLAPACK();
          if (v60 >= 1)
          {
            v128 = (v192 + 8 * v190 * v69 + 4);
            v129 = (v117 + 8 * v188 * v69 + 4);
            v130 = v173;
            do
            {
              v131 = *(v129 - 1);
              v132 = *v129;
              v133 = sub_23681E680(v107, v108, *(v72 + 36), *(v72 + 40));
              v134 = *(v128 - 1);
              v136 = (v135 * v134) + (v133 * *v128);
              *(v128 - 1) = v131 - ((v133 * v134) - (v135 * *v128));
              *v128 = v132 - v136;
              v128 += 2;
              v129 += 2;
              --v130;
            }

            while (v130);
          }

          v137 = *(v72 + 88);
          v138 = *(v72 + 92);
          v139 = (v177 * v137) - (v176 * v138);
          v140 = (v176 * v137) + (v177 * v138);
          v59 = v170;
          v58 = a21;
          v71 = v168;
          v195 = -(v182 * v137) - (v183 * v138);
          v141 = (v179 * v139) - (v178 * v140);
          v142 = (v178 * v139) + (v179 * v140);
          v60 = v172;
          v198 = (v182 * v138) - (v183 * v137);
          *(v72 + 88) = (v180 * v140) - (v181 * v139);
          *(v72 + 92) = -(v180 * v139) - (v181 * v140);
          v189 = *(v72 + 124);
          v191 = *(v72 + 120);
          v143 = *(v72 + 104);
          v144 = *(v72 + 108);
          sub_2367A53BC(v143, v144, v101, v102);
          v146 = v145;
          v147 = sub_23681E680(v143, v144, v145, 0.0);
          v149 = v148;
          v150 = sub_23681E680(v101, v102, v146, 0.0);
          v151 = *(v72 + 44);
          v152 = *(v72 + 48);
          *(v72 + 120) = (v150 * v151) - (v153 * v152);
          *(v72 + 124) = (v153 * v151) + (v150 * v152);
          *(v72 + 104) = (v147 * v151) - (v149 * v152);
          *(v72 + 108) = (v149 * v151) + (v147 * v152);
          v154 = *(v72 + 80);
          v155 = *(v72 + 84);
          *(v72 + 80) = ((v153 * v155) - (v150 * v154)) + ((v141 * v147) - (v142 * v149));
          *(v72 + 84) = (-(v153 * v154) - (v150 * v155)) + ((v142 * v147) + (v141 * v149));
          v156 = sub_23681E680(v185 - ((v191 * *(v72 + 112)) - (v189 * *(v72 + 116))), v184 - ((v189 * *(v72 + 112)) + (v191 * *(v72 + 116))), v146, 0.0);
          *(v72 + 112) = v156;
          *(v72 + 116) = v157;
          v158 = sub_23681E680(*(v72 + 52) - ((v156 * *(v72 + 120)) - (v157 * *(v72 + 124))), *(v72 + 56) - ((v157 * *(v72 + 120)) + (v156 * *(v72 + 124))), *(v72 + 104), *(v72 + 108));
          v159 = *(v72 + 100);
          v38 = v200;
          v160 = *(v72 + 96) + ((v198 * v198) - (v195 * v195));
          *(v72 + 96) = v160;
          *(v72 + 100) = v159 + ((v198 * v195) + (v198 * v195));
          *&a16[v69] = sqrtf((v160 + (((*(v72 + 80) - v158) * (*(v72 + 80) - v158)) - ((*(v72 + 84) - v161) * (*(v72 + 84) - v161)))) + ((*(v72 + 88) * *(v72 + 88)) - (*(v72 + 92) * *(v72 + 92))));
          v162 = *(v72 + 136) + (*(v72 + 8) * *(v72 + 8));
          *(v72 + 136) = v162;
          *&a17[v69] = sqrtf(v162);
          *(v72 + 136) = *(v72 + 136) + (*(v72 + 4) * *(v72 + 4));
          v163 = *(v72 + 128);
          if (v199 > v163)
          {
            *(v72 + 128) = v199;
            v163 = v199;
          }

          v164 = *(v72 + 132);
          if (a1 >= 1 && v199 < v164)
          {
            *(v72 + 132) = v199;
            v164 = v199;
          }

          if (v163 <= v186)
          {
            v163 = v186;
          }

          if (v164 >= v186)
          {
            v164 = v186;
          }

          *&a18[v69] = v163 / v164;
        }
      }

      ++v69;
      v68 += v71;
    }

    while (v69 != v59);
  }
}

uint64_t _SparseLSMRSolve_Complex_Float(uint64_t a1, __int128 *a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v138 = *MEMORY[0x277D85DE8];
  v9 = 4;
  v10 = (a3[3] & 1) != 0;
  v11 = a3[v10];
  if (*(a2 + 3))
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a2 + v12);
  if (*(a2 + 3))
  {
    v9 = 0;
  }

  v14 = *(a2 + v9);
  v15 = *(a1 + 56);
  if (v15 <= 0)
  {
    v15 = 4 * v13;
  }

  v101 = v15;
  v16 = *(a1 + 16);
  if (v16 >= v11)
  {
    v16 = v11;
  }

  if (v16 >= v13)
  {
    v16 = *(a2 + v12);
  }

  v17 = 8 * (v11 + (v16 + 3) * v13 + 3);
  v18 = 16 * v13 * v14 + 104;
  if (!a5)
  {
    v18 = 104;
  }

  v19 = v18 + v14 + (v17 + 148) * v14 + 16;
  v20 = malloc_type_malloc(v19, 0xEC5780E5uLL);
  if (v20)
  {
    v21 = v20;
    v22 = v20 + v19;
    v23 = *(a1 + 16);
    if (v23 >= v11)
    {
      v23 = v11;
    }

    if (v23 >= v13)
    {
      v24 = v13;
    }

    else
    {
      v24 = v23;
    }

    v25 = (&v20[35 * v14 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
    if (v22 >= v25)
    {
      v120[0] = v13;
      v120[1] = v14;
      v120[2] = v13;
      v120[3] = 0;
      v26 = v14 * v13;
      v27 = v25 + 8 * v14 * v13;
      if (v27 <= v22)
      {
        v28 = v11;
        v121 = (&v20[35 * v14 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
        v29 = 8 * v26;
        v118[0] = v13;
        v118[1] = v14;
        v118[2] = v13;
        v118[3] = 0;
        v30 = v27 + v29;
        if (v27 + v29 <= v22)
        {
          v119 = v27;
          v31 = (v30 + 8 * v24 * v26) & 0xFFFFFFFFFFFFFFF8;
          if (v22 >= v31)
          {
            *&v116 = __PAIR64__(v14, v28);
            *(&v116 + 1) = v28;
            v32 = v31 + 8 * (v14 * v28);
            if (v32 <= v22)
            {
              v117 = v31;
              *&v114 = __PAIR64__(v14, v13);
              v33 = (v32 + v29);
              *(&v114 + 1) = v13;
              if (v32 + v29 <= v22)
              {
                v115 = v31 + 8 * (v14 * v28);
                *&v112 = __PAIR64__(v14, v13);
                *(&v112 + 1) = v13;
                v113 = 0;
                *&v110 = __PAIR64__(v14, v13);
                *(&v110 + 1) = v13;
                v111 = 0;
                if (v5)
                {
                  v34 = &v33[v29] & 0xFFFFFFFFFFFFFFF8;
                  if (v22 < v34)
                  {
                    goto LABEL_102;
                  }

                  v113 = v33;
                  v33 = (v34 + v29);
                  if (v34 + v29 > v22)
                  {
                    goto LABEL_102;
                  }

                  v111 = v34;
                }

                v35 = &v33[v14 + 7] & 0xFFFFFFFFFFFFFFF8;
                if (v22 >= v35)
                {
                  v104 = (&v33[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                  v36 = (v35 + 4 * v14 + 7) & 0xFFFFFFFFFFFFFFF8;
                  if (v22 >= v36)
                  {
                    v37 = 4 * v14;
                    v105 = v36;
                    v38 = (v36 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
                    if (v22 >= v38)
                    {
                      v107 = v38;
                      v39 = (v38 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
                      if (v22 >= v39)
                      {
                        v102 = v28;
                        v106 = v39;
                        if (v22 >= ((v39 + v37 + 7) & 0xFFFFFFFFFFFFFFF8))
                        {
                          bzero(v33, v14);
                          if (sub_2367A33D4(a1, v102, v13, v14, v33, &v116, &v114, a2, a3, &v112, v120, v118, v30, v5, a4, v21))
                          {
                            if (v5)
                            {
                              sub_236805D74(a2, &v112);
                              v40 = *(v5 + 8);
                              v41 = *(v5 + 16);
LABEL_41:
                              *__str = v112;
                              *&v123 = v113;
                              v108 = *a2;
                              v109 = *(a2 + 2);
                              v41(v40, 111, __str, &v108);
                            }
                          }

                          else
                          {
                            v98 = v30;
                            v100 = v21;
                            v43 = *(a1 + 20);
                            if (v43)
                            {
                              v44 = (&v33[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                              if (v43 == 1 && v14 >= 1)
                              {
                                v45 = (v21 + 2);
                                v46 = v14;
                                do
                                {
                                  v47 = *v45;
                                  v45 += 35;
                                  *v44++ = v47;
                                  --v46;
                                }

                                while (v46);
                              }
                            }

                            else
                            {
                              v48 = (&v33[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                              if (v14 >= 1)
                              {
                                v49 = v21 + 16;
                                v50 = v14;
                                do
                                {
                                  *v48++ = hypotf(*(v49 - 1), *v49);
                                  v49 += 35;
                                  --v50;
                                }

                                while (v50);
                              }
                            }

                            v51 = *(a1 + 48);
                            v52 = 0.0;
                            if (v51 > 0.0)
                            {
                              v52 = 1.0 / v51;
                            }

                            v53 = *(a1 + 64);
                            v54 = v100;
                            v55 = a4;
                            v56 = v105;
                            if (v53)
                            {
                              v53("\n   Itn       y(1)           norm rbar    Abar'rbar Compatible    LS    norm Abar cond Abar\n");
                              snprintf(__str, 0xC8uLL, "%6d%17.9e+%17.9ei%17.9e%10.2e%10.2e%10.2e\n", 0, **(a2 + 2), *(*(a2 + 2) + 4), v100[2], (v100[2] * v100[1]), 1.0, (v100[1] / v100[2]));
                              (*(a1 + 64))(__str);
                            }

                            v57 = *(a1 + 32);
                            v58 = v57 == 0.0;
                            if (v57 < 0.0)
                            {
                              v57 = 0.0;
                            }

                            if (v58)
                            {
                              v59 = 0.00034527;
                            }

                            else
                            {
                              v59 = v57;
                            }

                            if (v101 < 1)
                            {
LABEL_96:
                              free(v54);
                              return 1;
                            }

                            v60 = 0;
                            v97 = v5;
                            while (1)
                            {
                              v61 = *(a1 + 8);
                              v96 = v5;
                              v62 = v107;
                              sub_2367A380C(v60, v102, v13, v14, v33, &v116, &v114, a2, v61, 0.0, &v112, &v110, v120, v118, v98, v56, v107, v106, v96, v55, v54);
                              v63 = *(a1 + 20);
                              v99 = v60;
                              if (v63 == 1)
                              {
                                break;
                              }

                              if (v63 || v14 < 1)
                              {
                                goto LABEL_98;
                              }

                              v64 = 1;
                              v65 = v14;
                              v66 = v100 + 16;
                              v67 = v33;
                              v68 = (&v33[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                              do
                              {
                                v69 = *v67 || *(a1 + 24) + (v59 * *v68) >= hypotf(*(v66 - 1), *v66);
                                *v67++ = v69;
                                v64 &= v69;
                                ++v68;
                                v66 += 35;
                                --v65;
                              }

                              while (v65);
LABEL_90:
                              v62 = v107;
                              v60 = v99;
                              if (v64)
                              {
                                goto LABEL_98;
                              }

                              v54 = v100;
                              v56 = v105;
                              if (*(a1 + 64) && (v99 < 0xA || !(v99 % 0xA)))
                              {
                                v84 = *(a2 + 2);
                                v85 = *v84;
                                v86 = v84[1];
                                v87 = *v105;
                                v88 = *v105;
                                v89 = hypotf(v100[15], v100[16]);
                                snprintf(__str, 0xC8uLL, "%6d%17.9e+%17.9ei%17.9e%10.2e%10.2e%10.2e%10.2e%10.2e\n", v99, v85, v86, v88, v89, (v87 / *v104), (v89 / (v87 * *v107)), *v107, *v106);
                                (*(a1 + 64))(__str);
                              }

                              v60 = v99 + 1;
                              v5 = v97;
                              v55 = a4;
                              if (v99 + 1 == v101)
                              {
                                goto LABEL_96;
                              }
                            }

                            if (v14 >= 1)
                            {
                              v70 = 0;
                              v64 = 1;
                              v71 = v100 + 16;
                              while (1)
                              {
                                if ((v33[v70] & 1) == 0)
                                {
                                  v72 = hypotf(*(v71 - 1), *v71);
                                  cblas_scnrm2_NEWLAPACK();
                                  v74 = 1.0 / v106[v70];
                                  if (v74 + 1.0 <= 1.0 || v74 <= v52)
                                  {
                                    free(v100);
                                    return 4294967294;
                                  }

                                  v75 = v105[v70];
                                  v76 = v107[v70];
                                  v77 = (v72 / (v75 * v76));
                                  if (v77 + 1.0 <= 1.0 || (v78 = v104[v70], v79 = v75 / v78, v80 = *(a1 + 24), v81 = *(a1 + 40) + v80 * v76 * v73 / v78, v79 <= v81) || v80 >= v77 || (v82 = v79 / (((v73 * v76) / v78) + 1.0), v82 + 1.0 <= 1.0))
                                  {
                                    v83 = 1;
                                    v33[v70] = 1;
                                  }

                                  else
                                  {
                                    v83 = v33[v70] != 0;
                                  }

                                  v64 &= v83;
                                }

                                ++v70;
                                v71 += 35;
                                if (v14 == v70)
                                {
                                  goto LABEL_90;
                                }
                              }
                            }

LABEL_98:
                            v21 = v100;
                            if (*(a1 + 64))
                            {
                              v90 = *(a2 + 2);
                              v91 = *v90;
                              v92 = v90[1];
                              v93 = *v105;
                              v94 = *v105;
                              v95 = hypotf(v100[15], v100[16]);
                              snprintf(__str, 0xC8uLL, "%6d%17.9e+%17.9ei%17.9e%10.2e%10.2e%10.2e%10.2e%10.2e\n", v60, v91, v92, v94, v95, (v93 / *v104), (v95 / (v93 * *v62)), *v62, *v106);
                              (*(a1 + 64))(__str);
                            }

                            if (v97)
                            {
                              sub_236805D74(a2, &v112);
                              v40 = *(v97 + 8);
                              v41 = *(v97 + 16);
                              goto LABEL_41;
                            }
                          }

                          free(v21);
                          return 0;
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

LABEL_102:
    __break(1u);
  }

  if (!*a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23670BBCC();
    }

    _SparseTrap();
  }

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  *__str = 0u;
  v123 = 0u;
  snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v19);
  (*a1)(__str);
  return 4294967197;
}

uint64_t sub_2367A525C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 4;
  if (*(a3 + 12))
  {
    v4 = 0;
  }

  v5 = *(a3 + v4);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 4;
    if ((*(a3 + 12) & 1) == 0)
    {
      v7 = 0;
    }

    v8 = *(a3 + v7);
    do
    {
      if (*(a3 + 12))
      {
        v9 = v6;
      }

      else
      {
        v9 = *(a3 + 8) * v6;
      }

      if (*(a3 + 12))
      {
        v10 = *(a3 + 8);
      }

      else
      {
        v10 = 1;
      }

      v11 = *(a4 + 8) * v6;
      if (*(a4 + 12))
      {
        v11 = v6;
        v12 = *(a4 + 8);
      }

      else
      {
        v12 = 1;
      }

      if (v8 >= 1)
      {
        v13 = *(a3 + 16) + 8 * v9;
        v14 = (*(a4 + 16) + 8 * v11 + 4);
        v15 = 8 * v12;
        v16 = (v13 + 4);
        v17 = 8 * v10;
        v18 = (result + 4);
        v19 = v8;
        do
        {
          v20 = *(v18 - 1);
          v21 = *(v16 - 1);
          v22 = (*v18 * v21) + (v20 * *v16);
          *(v14 - 1) = (v20 * v21) - (*v18 * *v16);
          *v14 = v22;
          v14 = (v14 + v15);
          v18 += 2;
          v16 = (v16 + v17);
          --v19;
        }

        while (v19);
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

void sub_2367A53BC(float a1, float a2, float a3, float a4)
{
  v8 = hypotf(a1, a2);
  v9 = v8 + hypotf(a3, a4);
  if (v9 != 0.0)
  {
    hypotf(a1 / v9, a2 / v9);
    hypotf(a3 / v9, a4 / v9);
  }
}

uint64_t sub_2367A5454(int a1, const void *a2, size_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 + 28);
  v35 = (~*(a4 + 12) & 0xC) == 0;
  v9 = a4[1];
  if (a5)
  {
    v10 = *(a5 + 4);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*(a4 + 1) + 8 * v9);
  v12 = *a4;
  if (a6)
  {
    v13 = *(a6 + 4);
  }

  else
  {
    v13 = 0;
  }

  v36 = v10;
  if (a2)
  {
    v14 = 136;
  }

  else
  {
    v14 = 0;
  }

  if (a2)
  {
    v15 = (a3 + 143) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v15 = 136;
  }

  v32 = v13;
  v33 = 8 * v9 + 8;
  v16 = v33 + v15;
  v17 = (v33 + v15 + 4 * v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = v11 * (8 * v8 * v8);
  v18 = 8 * v12 * *(a4 + 28);
  v19 = v18 * v10;
  if (a5)
  {
    v20 = v17 + v34;
  }

  else
  {
    v20 = 0;
  }

  v30 = v20;
  v31 = v14;
  if (!a5)
  {
    v19 = 0;
  }

  v21 = v19 + v17 + v34;
  v22 = v18 * v13;
  if (a6)
  {
    v23 = v19 + v17 + v34;
  }

  else
  {
    v23 = 0;
  }

  v29 = v23;
  if (!a6)
  {
    v22 = 0;
  }

  v24 = v21 + v22;
  if (ftruncate(a1, v21 + v22))
  {
    sub_2366F7F2C(v24);
    return 0xFFFFFFFFLL;
  }

  v25 = mmap(0, v24, 3, 1, a1, 0);
  if (v25 == -1)
  {
    fwrite("Failed to mmap file\n", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0xFFFFFFFFLL;
  }

  v26 = v25;
  *v25 = 0xF0A30000DAFA2903;
  *(v25 + 1) = v24;
  *(v25 + 2) = 0;
  v25[24] = v35;
  *(v25 + 25) = 0;
  *(v25 + 7) = 0;
  *(v25 + 4) = v12;
  *(v25 + 5) = v9;
  *(v25 + 6) = v11;
  *(v25 + 7) = v8;
  *(v25 + 8) = v31;
  *(v25 + 9) = 0;
  *(v25 + 10) = v15;
  *(v25 + 11) = v16;
  *(v25 + 12) = v17;
  *(v25 + 13) = v36;
  *(v25 + 14) = v32;
  *(v25 + 15) = v30;
  *(v25 + 16) = v29;
  if (a2)
  {
    memcpy(v25 + 136, a2, a3);
  }

  memcpy(&v26[v15], *(a4 + 1), v33);
  memcpy(&v26[v16], *(a4 + 2), 4 * v11);
  memcpy(&v26[v17], *(a4 + 4), v34);
  munmap(v26, v24);
  return 0;
}

double SparseFactor@<D0>(unsigned __int8 a1@<W0>, SparseMatrixStructure *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *&a2->rowIndices;
  *&v6.rowCount = *&a2->rowCount;
  *&v6.rowIndices = v3;
  v5 = *byte_28499C198;
  return SparseFactor(&v6, &v5, a1, a3);
}

double SparseFactor@<D0>(SparseMatrixStructure *a1@<X1>, SparseSymbolicFactorOptions *a2@<X2>, unsigned int a3@<W0>, uint64_t a4@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  columnCount = a1->columnCount;
  if (columnCount <= 0)
  {
    reportError = a2->reportError;
    if (reportError)
    {
      strcpy(v9, ".structure.columnCount must be greater than 0.\n");
      memset(&v9[3], 0, 208);
      (reportError)(v9);
LABEL_25:
      result = 0.0;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *a4 = -4;
      return result;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBA10();
    }

    goto LABEL_14;
  }

  if (a3 - 80 < 4)
  {

    _SparseSymbolicFactorLU(a3, &a1->rowCount, a2, a4);
    return result;
  }

  if (a3 - 40 <= 1)
  {

    _SparseSymbolicFactorQR(a4, a3, a1, a2);
    return result;
  }

  if ((~*&a1->attributes & 0xC) != 0)
  {
    v8 = a2->reportError;
    if (v8)
    {
      memset(&v9[3] + 12, 0, 196);
      strcpy(v9, "Requested symmetric factorization of non-symmetric matrix.\n");
LABEL_24:
      (v8)(v9);
      goto LABEL_25;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBA54();
    }

LABEL_14:
    _SparseTrap();
  }

  if (a1->rowCount != columnCount)
  {
    v8 = a2->reportError;
    if (v8)
    {
      memset(&v9[4] + 11, 0, 181);
      strcpy(v9, "Matrix supposed to be symmetric (Hermitian), but rowCount != columnCount.\n");
      goto LABEL_24;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBA98();
    }

    goto LABEL_14;
  }

  _SparseSymbolicFactorSymmetric(a4, a3, a1, a2);
  return result;
}

double SparseFactor@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  v5 = *byte_28499C198;
  return SparseFactor(a1, v6, &v5, a3);
}

double SparseFactor@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, const SparseSymbolicFactorOptions *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1;
  v15 = *MEMORY[0x277D85DE8];
  memset(&v13, 0, sizeof(v13));
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  _SparseFromStructureComplex(v14, &v13);
  if (v13.columnCount > 0)
  {
    if (v5 - 80 < 4)
    {
      _SparseSymbolicFactorLU(v5, &v13.rowCount, a3, a4);
      return result;
    }

    if (v5 - 40 <= 1)
    {
      _SparseSymbolicFactorQR(a4, v5, &v13, a3);
      return result;
    }

    if ((~*&v13.attributes & 0xC) != 0)
    {
      reportError = a3->reportError;
      if (reportError)
      {
        memset(&v14[4] + 8, 0, 184);
        v11 = "Requested symmetric factorization of non-symmetric (Hermitian) matrix.\n";
        strcpy(&v14[2], "n of non-symmetric (Hermitian) matrix.\n");
LABEL_18:
        v12 = *(v11 + 1);
        v14[0] = *v11;
        v14[1] = v12;
        (reportError)(v14);
        goto LABEL_19;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CBADC();
      }
    }

    else
    {
      if (v13.rowCount == v13.columnCount)
      {
        _SparseSymbolicFactorSymmetric(a4, v5, &v13, a3);
        return result;
      }

      reportError = a3->reportError;
      if (reportError)
      {
        memset(&v14[4] + 11, 0, 181);
        v11 = "Matrix supposed to be symmetric (Hermitian), but rowCount != columnCount.\n";
        strcpy(&v14[2], "(Hermitian), but rowCount != columnCount.\n");
        goto LABEL_18;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CBA98();
      }
    }

LABEL_10:
    _SparseTrap();
  }

  v9 = a3->reportError;
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBA10();
    }

    goto LABEL_10;
  }

  strcpy(v14, ".structure.columnCount must be greater than 0.\n");
  memset(&v14[3], 0, 208);
  (v9)(v14);
LABEL_19:
  result = 0.0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *a4 = -4;
  return result;
}

__n128 SparseRetain@<Q0>(SparseOpaqueSymbolicFactorization *symbolicFactor@<X0>, uint64_t a2@<X8>)
{
  if (symbolicFactor->status || !symbolicFactor->workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBB20();
    }

    _SparseTrap();
  }

  _SparseRetainSymbolic(symbolicFactor);
  v4 = *&symbolicFactor->factorization;
  *a2 = *&symbolicFactor->status;
  *(a2 + 16) = v4;
  result = *&symbolicFactor->workspaceSize_Double;
  v6 = *&symbolicFactor->factorSize_Double;
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

double SparseConjugateGradient@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 256) = 0;
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

__n128 SparseConjugateGradient@<Q0>(SparseCGOptions *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  result = *&a1->reportError;
  v3 = *&a1->atol;
  *(a2 + 8) = *&a1->reportError;
  *(a2 + 256) = 0;
  *(a2 + 24) = v3;
  *(a2 + 40) = a1->reportStatus;
  return result;
}

double SparseGMRES@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 256) = 0;
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = 1;
  return result;
}

__n128 SparseGMRES@<Q0>(SparseGMRESOptions *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *&a1->maxIterations;
  *(a2 + 8) = *&a1->reportError;
  *(a2 + 256) = 0;
  *a2 = 1;
  *(a2 + 24) = v2;
  result = *&a1->rtol;
  *(a2 + 40) = result;
  return result;
}

double SparseLSMR@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 256) = 0;
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = 2;
  return result;
}

__n128 SparseLSMR@<Q0>(SparseLSMROptions *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *&a1->reportError;
  *(a2 + 24) = *&a1->nvec;
  result = *&a1->rtol;
  v4 = *&a1->conditionLimit;
  *(a2 + 40) = result;
  *(a2 + 56) = v4;
  *(a2 + 256) = 0;
  *a2 = 2;
  *(a2 + 72) = a1->reportStatus;
  *(a2 + 8) = v2;
  return result;
}

void SparseConvertFromCoordinate(SparseAttributes_t a1@<0:W4.2>, const int *a2@<X5>, const int *a3@<X6>, const double *a4@<X7>, int a5@<W0>, int a6@<W1>, uint64_t a7@<X2>, unsigned int a8@<W3>, uint64_t a9@<X8>)
{
  if (a5 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D34C();
    }

LABEL_21:
    _SparseTrap();
  }

  if (a6 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D3C4();
    }

    goto LABEL_21;
  }

  if (a7 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBB64();
    }

    goto LABEL_21;
  }

  v17 = a8;
  if (a5 != a6 && (*&a1 & 0xC) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBBDC();
    }

    goto LABEL_21;
  }

  v18 = malloc_type_malloc(4 * a7 + 8 * ((a6 + 1) + a8 * a7 * a8) + 28, 0x100004000313F17uLL);
  if (!v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBC98();
    }

    goto LABEL_21;
  }

  storage = v18;
  v20 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
  if (!v20)
  {
    free(storage);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBC20();
    }

    goto LABEL_21;
  }

  *(a9 + 32) = 0;
  *a9 = 0u;
  *(a9 + 16) = 0u;
  v21 = a1;
  v22 = v20;
  _SparseConvertFromCoordinate_Double(a9, a5, a6, a7, v17, v21, a2, a3, a4, storage, v20);
  free(v22);
  *(a9 + 24) |= 0x8000u;
}

SparseMatrix_Double *SparseConvertFromCoordinate@<X0>(int m@<W0>, int n@<W1>, uint64_t nBlock@<X2>, SparseAttributes_t attributes@<0:W4.2>, const int *a5@<X5>, const int *a6@<X6>, const double *a7@<X7>, uint8_t a8@<W3>, SparseMatrix_Double *a9@<X8>, char *a10, int *a11)
{
  if (m < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D34C();
    }

LABEL_14:
    _SparseTrap();
  }

  if (n < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D3C4();
    }

    goto LABEL_14;
  }

  if (nBlock < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBB64();
    }

    goto LABEL_14;
  }

  if (m != n && (*&attributes & 0xC) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBBDC();
    }

    goto LABEL_14;
  }

  return _SparseConvertFromCoordinate_Double(a9, m, n, nBlock, a8, attributes, a5, a6, a7, a10, a11);
}

void SparseMultiply(double a1, SparseMatrix_Double *a2, DenseMatrix_Double *a3, DenseMatrix_Double *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = 4;
  if (*&a2->structure.attributes)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (*&a2->structure.attributes)
  {
    v4 = 0;
  }

  rowCount = a4->rowCount;
  if (a4->columnStride < a4->rowCount)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBDE4();
    }

    goto LABEL_35;
  }

  if (a3->columnStride < a3->rowCount)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

    goto LABEL_35;
  }

  if (*&a4->attributes)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
    rowCount = a4->columnCount;
  }

  if (*&a3->attributes)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(&a3->rowCount + v8);
  v10 = *(&a4->rowCount + v7);
  if (*&a3->attributes)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(&a3->rowCount + v11);
  if (rowCount != v9)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    A.structure.rowCount = 136316418;
    *&A.structure.columnCount = "Y";
    WORD2(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 6) = v10;
    WORD1(A.structure.rowIndices) = 1024;
    HIDWORD(A.structure.rowIndices) = rowCount;
    A.structure.attributes = 2080;
    *&A.structure.blockSize = "X";
    WORD1(A.data) = 1024;
    HIDWORD(A.data) = v12;
    v22 = 1024;
    v23 = v9;
    v17 = MEMORY[0x277D86220];
    v18 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
LABEL_34:
    _os_log_error_impl(&dword_2366B9000, v17, OS_LOG_TYPE_ERROR, v18, &A, 0x2Eu);
    goto LABEL_35;
  }

  if (rowCount <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBCDC();
    }

LABEL_35:
    _SparseTrap();
  }

  v13 = *(&a2->structure.blockSize + 2);
  v14 = *(&a2->structure.rowCount + v5) * v13;
  v15 = *(&a2->structure.rowCount + v4) * v13;
  if (v10 != v14)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    A.structure.rowCount = 136316418;
    *&A.structure.columnCount = "Y";
    WORD2(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 6) = v10;
    WORD1(A.structure.rowIndices) = 1024;
    HIDWORD(A.structure.rowIndices) = rowCount;
    A.structure.attributes = 2080;
    *&A.structure.blockSize = "matrix A";
    WORD1(A.data) = 1024;
    HIDWORD(A.data) = v15;
    v22 = 1024;
    v23 = v14;
    v17 = MEMORY[0x277D86220];
    v18 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_34;
  }

  if (v12 != v15)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    A.structure.rowCount = 136316418;
    *&A.structure.columnCount = "X";
    WORD2(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 6) = v12;
    WORD1(A.structure.rowIndices) = 1024;
    HIDWORD(A.structure.rowIndices) = rowCount;
    A.structure.attributes = 2080;
    *&A.structure.blockSize = "matrix A";
    WORD1(A.data) = 1024;
    HIDWORD(A.data) = v15;
    v22 = 1024;
    v23 = v14;
    v17 = MEMORY[0x277D86220];
    v18 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_34;
  }

  v16 = *&a2->structure.rowIndices;
  *&A.structure.rowCount = *&a2->structure.rowCount;
  *&A.structure.rowIndices = v16;
  A.data = a2->data;
  x = *a3;
  v19 = *a4;
  _SparseSpMV_Double(a1, &A, &x, 0, &v19);
}

void SparseMultiply(double a1, SparseMatrix_Double *a2, DenseVector_Double a3, DenseVector_Double a4)
{
  v4 = *(&a2->structure.blockSize + 2);
  v5 = 4;
  if (*&a2->structure.attributes)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (*&a2->structure.attributes)
  {
    v5 = 0;
  }

  if (*(&a2->structure.rowCount + v5) * v4 != a3.count)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBE68();
    }

LABEL_13:
    _SparseTrap();
  }

  if (*(&a2->structure.rowCount + v6) * v4 != a4.count)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBED8();
    }

    goto LABEL_13;
  }

  x.rowCount = a3.count;
  x.columnCount = 1;
  *&x.columnStride = a3.count;
  x.data = a3.data;
  y.rowCount = a4.count;
  y.columnCount = 1;
  y.columnStride = a4.count;
  *&y.attributes = 0;
  y.data = a4.data;
  v7 = *&a2->structure.rowIndices;
  *&v8.structure.rowCount = *&a2->structure.rowCount;
  *&v8.structure.rowIndices = v7;
  v8.data = a2->data;
  _SparseSpMV_Double(a1, &v8, &x, 0, &y);
}

void SparseMultiply(SparseMatrix_Double *a1, DenseMatrix_Double *a2, DenseMatrix_Double *a3)
{
  v3 = *&a1->structure.rowIndices;
  *&v6.structure.rowCount = *&a1->structure.rowCount;
  *&v6.structure.rowIndices = v3;
  v6.data = a1->data;
  v5 = *a2;
  v4 = *a3;
  SparseMultiply(1.0, &v6, &v5, &v4);
}

void SparseMultiply(SparseMatrix_Double *a1, DenseVector_Double a2, DenseVector_Double a3)
{
  v3 = *&a1->structure.rowIndices;
  *&v4.structure.rowCount = *&a1->structure.rowCount;
  *&v4.structure.rowIndices = v3;
  v4.data = a1->data;
  SparseMultiply(1.0, &v4, a2, a3);
}

void SparseMultiplyAdd(double a1, SparseMatrix_Double *a2, DenseMatrix_Double *a3, DenseMatrix_Double *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = 4;
  if (*&a2->structure.attributes)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (*&a2->structure.attributes)
  {
    v4 = 0;
  }

  rowCount = a4->rowCount;
  if (a4->columnStride < a4->rowCount)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBDE4();
    }

    goto LABEL_35;
  }

  if (a3->columnStride < a3->rowCount)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

    goto LABEL_35;
  }

  if (*&a4->attributes)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
    rowCount = a4->columnCount;
  }

  if (*&a3->attributes)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(&a3->rowCount + v8);
  v10 = *(&a4->rowCount + v7);
  if (*&a3->attributes)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(&a3->rowCount + v11);
  if (rowCount != v9)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    A.structure.rowCount = 136316418;
    *&A.structure.columnCount = "Y";
    WORD2(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 6) = v10;
    WORD1(A.structure.rowIndices) = 1024;
    HIDWORD(A.structure.rowIndices) = rowCount;
    A.structure.attributes = 2080;
    *&A.structure.blockSize = "X";
    WORD1(A.data) = 1024;
    HIDWORD(A.data) = v12;
    v22 = 1024;
    v23 = v9;
    v17 = MEMORY[0x277D86220];
    v18 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
LABEL_34:
    _os_log_error_impl(&dword_2366B9000, v17, OS_LOG_TYPE_ERROR, v18, &A, 0x2Eu);
    goto LABEL_35;
  }

  if (rowCount <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBCDC();
    }

LABEL_35:
    _SparseTrap();
  }

  v13 = *(&a2->structure.blockSize + 2);
  v14 = *(&a2->structure.rowCount + v5) * v13;
  v15 = *(&a2->structure.rowCount + v4) * v13;
  if (v10 != v14)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    A.structure.rowCount = 136316418;
    *&A.structure.columnCount = "Y";
    WORD2(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 6) = v10;
    WORD1(A.structure.rowIndices) = 1024;
    HIDWORD(A.structure.rowIndices) = rowCount;
    A.structure.attributes = 2080;
    *&A.structure.blockSize = "matrix A";
    WORD1(A.data) = 1024;
    HIDWORD(A.data) = v15;
    v22 = 1024;
    v23 = v14;
    v17 = MEMORY[0x277D86220];
    v18 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_34;
  }

  if (v12 != v15)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    A.structure.rowCount = 136316418;
    *&A.structure.columnCount = "X";
    WORD2(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 6) = v12;
    WORD1(A.structure.rowIndices) = 1024;
    HIDWORD(A.structure.rowIndices) = rowCount;
    A.structure.attributes = 2080;
    *&A.structure.blockSize = "matrix A";
    WORD1(A.data) = 1024;
    HIDWORD(A.data) = v15;
    v22 = 1024;
    v23 = v14;
    v17 = MEMORY[0x277D86220];
    v18 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_34;
  }

  v16 = *&a2->structure.rowIndices;
  *&A.structure.rowCount = *&a2->structure.rowCount;
  *&A.structure.rowIndices = v16;
  A.data = a2->data;
  x = *a3;
  v19 = *a4;
  _SparseSpMV_Double(a1, &A, &x, 1, &v19);
}

void SparseMultiplyAdd(SparseMatrix_Double *a1, DenseMatrix_Double *a2, DenseMatrix_Double *a3)
{
  v3 = *&a1->structure.rowIndices;
  *&v6.structure.rowCount = *&a1->structure.rowCount;
  *&v6.structure.rowIndices = v3;
  v6.data = a1->data;
  v5 = *a2;
  v4 = *a3;
  SparseMultiplyAdd(1.0, &v6, &v5, &v4);
}

void SparseMultiplyAdd(double a1, SparseMatrix_Double *a2, DenseVector_Double a3, DenseVector_Double a4)
{
  v4 = *(&a2->structure.blockSize + 2);
  v5 = 4;
  if (*&a2->structure.attributes)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (*&a2->structure.attributes)
  {
    v5 = 0;
  }

  if (*(&a2->structure.rowCount + v5) * v4 != a3.count)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBE68();
    }

LABEL_13:
    _SparseTrap();
  }

  if (*(&a2->structure.rowCount + v6) * v4 != a4.count)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBED8();
    }

    goto LABEL_13;
  }

  x.rowCount = a3.count;
  x.columnCount = 1;
  *&x.columnStride = a3.count;
  x.data = a3.data;
  y.rowCount = a4.count;
  y.columnCount = 1;
  y.columnStride = a4.count;
  *&y.attributes = 0;
  y.data = a4.data;
  v7 = *&a2->structure.rowIndices;
  *&v8.structure.rowCount = *&a2->structure.rowCount;
  *&v8.structure.rowIndices = v7;
  v8.data = a2->data;
  _SparseSpMV_Double(a1, &v8, &x, 1, &y);
}

void SparseMultiplyAdd(SparseMatrix_Double *a1, DenseVector_Double a2, DenseVector_Double a3)
{
  v3 = *&a1->structure.rowIndices;
  *&v4.structure.rowCount = *&a1->structure.rowCount;
  *&v4.structure.rowIndices = v3;
  v4.data = a1->data;
  SparseMultiplyAdd(1.0, &v4, a2, a3);
}

__n128 SparseGetTranspose@<Q0>(SparseMatrix_Double *a1@<X0>, uint64_t a2@<X8>)
{
  a1->structure.attributes = (*&a1->structure.attributes & 0xFFFE | ((*&a1->structure.attributes & 1) == 0));
  *(a2 + 32) = a1->data;
  result = *&a1->structure.rowCount;
  v3 = *&a1->structure.rowIndices;
  *a2 = *&a1->structure.rowCount;
  *(a2 + 16) = v3;
  return result;
}

__n128 SparseGetTranspose@<Q0>(SparseOpaqueFactorization_Double *a1@<X0>, uint64_t a2@<X8>)
{
  a1->attributes = (*&a1->attributes & 0xFFFE | ((*&a1->attributes & 1) == 0));
  _SparseRetainNumeric_Double(a1);
  v4 = *&a1->solveWorkspaceRequiredStatic;
  *(a2 + 64) = *&a1->userFactorStorage;
  *(a2 + 80) = v4;
  *(a2 + 96) = *&a1[1].status;
  v5 = *&a1->symbolicFactorization.columnCount;
  *a2 = *&a1->status;
  *(a2 + 16) = v5;
  result = *&a1->symbolicFactorization.factorSize_Float;
  *(a2 + 32) = *&a1->symbolicFactorization.workspaceSize_Float;
  *(a2 + 48) = result;
  return result;
}

__n128 SparseGetTranspose@<Q0>(SparseOpaqueSubfactor_Double *a1@<X0>, uint64_t a2@<X8>)
{
  a1->attributes = (*&a1->attributes & 0xFFFE | ((*&a1->attributes & 1) == 0));
  _SparseRetainNumeric_Double(&a1->factor);
  v4 = *&a1->factor.numericFactorization;
  *(a2 + 64) = *&a1->factor.symbolicFactorization.factorSize_Double;
  *(a2 + 80) = v4;
  v5 = *&a1->workspaceRequiredPerRHS;
  *(a2 + 96) = *&a1->factor.solveWorkspaceRequiredPerRHS;
  *(a2 + 112) = v5;
  v6 = *&a1->factor.symbolicFactorization.status;
  *a2 = *&a1->attributes;
  *(a2 + 16) = v6;
  result = *&a1->factor.symbolicFactorization.factorization;
  v8 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  *(a2 + 32) = result;
  *(a2 + 48) = v8;
  return result;
}

SparseOpaqueFactorization_Double *SparseFactor@<X0>(SparseMatrix_Double *a1@<X1>, SparseSymbolicFactorOptions *sfoptions@<X2>, SparseNumericFactorOptions *a3@<X3>, int a4@<W0>, uint64_t a5@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1->structure.rowCount <= 0)
  {
    if (!sfoptions->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CBF48();
      }

      goto LABEL_34;
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "%s.rowCount must be > 0, but is %d.\n", a3);
LABEL_22:
    reportError = sfoptions->reportError;
LABEL_23:
    result = (reportError)(__str);
    *(a5 + 96) = 0;
    *(a5 + 64) = 0u;
    *(a5 + 80) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *a5 = -4;
    *(a5 + 8) = -4;
    return result;
  }

  columnCount = a1->structure.columnCount;
  if (columnCount <= 0)
  {
    if (!sfoptions->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CBFCC();
      }

      goto LABEL_34;
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "%s.columnCount must be > 0, but is %d.\n", a3);
    goto LABEL_22;
  }

  if (!*(&a1->structure.blockSize + 2))
  {
    if (!sfoptions->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC114();
      }

      goto LABEL_34;
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "%s.blockSize must be > 0, but is %d.]n", a3);
    goto LABEL_22;
  }

  v8 = *&a1->structure.attributes & 0xC;
  if (a1->structure.rowCount != columnCount && v8 == 12)
  {
    if (!sfoptions->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC050();
      }

      goto LABEL_34;
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "%s.attributes.kind=SparseSymmetric, but %s.rowCount (%d) != %s.columnCount (%d).\n", a3);
    goto LABEL_22;
  }

  if ((a4 - 80) < 4)
  {

    return _SparseFactorLU_Double(a4, &a1->structure.rowCount, sfoptions, a3, a5);
  }

  if ((a4 - 40) <= 1)
  {

    return _SparseFactorQR_Double(a5, a4, a1, sfoptions, a3);
  }

  if (v8 != 12)
  {
    reportError = sfoptions->reportError;
    if (reportError)
    {
      memset(&__str[72], 0, 184);
      strcpy(__str, "Cannot perform symmetric matrix factorization of non-symmetric matrix.\n");
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC0D0();
    }

LABEL_34:
    _SparseTrap();
  }

  return _SparseFactorSymmetric_Double(a5, a4, a1, sfoptions, a3);
}

SparseOpaqueFactorization_Double *SparseFactor@<X0>(SparseMatrix_Double *a1@<X1>, int a2@<W0>, uint64_t a3@<X8>)
{
  v3 = *&a1->structure.rowIndices;
  *&v7.structure.rowCount = *&a1->structure.rowCount;
  *&v7.structure.rowIndices = v3;
  v7.data = a1->data;
  sfoptions = *byte_28499C198;
  v5 = *ymmword_23681FF58;
  return SparseFactor(&v7, &sfoptions, &v5, a2, a3);
}

SparseOpaqueFactorization_Double *SparseFactor@<X0>(SparseOpaqueSymbolicFactorization *factor@<X0>, SparseMatrix_Double *a2@<X1>, SparseNumericFactorOptions *a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  if (factor->status || !factor->workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC31C();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v21, factor);
  reportError = v21.reportError;
  if (*&a2->structure.rowCount != *&factor->rowCount || *(&a2->structure.blockSize + 2) != LOBYTE(factor->factorization) || ((*&factor->attributes ^ *&a2->structure.attributes) & 1) != 0)
  {
    if (v21.reportError)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      memset(&v21, 0, sizeof(v21));
      snprintf(&v21, 0x100uLL, "%s does not match that used for symbolic factorization stored in %s.\n", "Matrix", "symbolicFactor");
      result = (reportError)(&v21);
      *(a6 + 96) = 0;
      *(a6 + 64) = 0u;
      *(a6 + 80) = 0u;
      *(a6 + 32) = 0u;
      *(a6 + 48) = 0u;
      *a6 = 0u;
      *(a6 + 16) = 0u;
      v7 = -4;
LABEL_5:
      *a6 = v7;
      *(a6 + 8) = v7;
      return result;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC19C();
    }

LABEL_4:
    _SparseTrap();
  }

  malloc = v21.malloc;
  free = v21.free;
  v15 = a4;
  if (!a4)
  {
    v15 = (v21.malloc)(*&factor[1].status);
    if (!v15)
    {
      if (reportError)
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        memset(&v21, 0, sizeof(v21));
        snprintf(&v21, 0x100uLL, "Failed to allocate factor storage of size %ld bytes.");
        goto LABEL_30;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC22C();
      }

LABEL_41:
      _SparseTrap();
    }
  }

  v16 = a5;
  if (!a5)
  {
    v19 = (malloc)(factor->factorSize_Float);
    if (a4 | v19)
    {
      v16 = v19;
      if (v19)
      {
        goto LABEL_14;
      }
    }

    else
    {
      (free)(v15);
    }

    if (reportError)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      memset(&v21, 0, sizeof(v21));
      snprintf(&v21, 0x100uLL, "Failed to allocate workspace of size %ld bytes.");
LABEL_30:
      result = (reportError)(&v21);
      *(a6 + 96) = 0;
      *(a6 + 64) = 0u;
      *(a6 + 80) = 0u;
      *(a6 + 32) = 0u;
      *(a6 + 48) = 0u;
      *a6 = 0u;
      *(a6 + 16) = 0u;
      v7 = -3;
      goto LABEL_5;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC2A4();
    }

    goto LABEL_41;
  }

LABEL_14:
  *(a6 + 96) = 0;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  v17 = BYTE1(factor->factorization);
  if ((v17 - 80) >= 4)
  {
    if ((v17 - 40) > 1)
    {
      result = _SparseNumericFactorSymmetric_Double(a6, factor, a2, a3, v15, v16);
    }

    else
    {
      result = _SparseNumericFactorQR_Double(a6, factor, a2, a3, v15, v16);
    }
  }

  else
  {
    result = _SparseNumericFactorLU_Double(factor, a2, a3, v16, a6, v15);
  }

  *(a6 + 72) = a4 != 0;
  if (!a5)
  {
    result = (free)(v16);
  }

  if (!a4 && (*a6 & 0x80000000) != 0)
  {
    return (free)(v15);
  }

  return result;
}

SparseOpaqueFactorization_Double *SparseFactor@<X0>(SparseOpaqueSymbolicFactorization *a1@<X0>, SparseMatrix_Double *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *&a1->factorization;
  factor[0] = *&a1->status;
  factor[1] = v3;
  v4 = *&a1->factorSize_Double;
  factor[2] = *&a1->workspaceSize_Double;
  factor[3] = v4;
  v5 = *&a2->structure.rowIndices;
  *&v8.structure.rowCount = *&a2->structure.rowCount;
  *&v8.structure.rowIndices = v5;
  v8.data = a2->data;
  v7 = *ymmword_23681FF58;
  return SparseFactor(factor, &v8, &v7, 0, 0, a3);
}

SparseOpaqueFactorization_Double *SparseFactor@<X0>(SparseOpaqueSymbolicFactorization *a1@<X0>, SparseMatrix_Double *a2@<X1>, SparseNumericFactorOptions *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *&a1->factorization;
  factor[0] = *&a1->status;
  factor[1] = v4;
  v5 = *&a1->factorSize_Double;
  factor[2] = *&a1->workspaceSize_Double;
  factor[3] = v5;
  v6 = *&a2->structure.rowIndices;
  *&v10.structure.rowCount = *&a2->structure.rowCount;
  *&v10.structure.rowIndices = v6;
  v10.data = a2->data;
  v7 = *&a3->pivotTolerance;
  *&v9.control = *&a3->control;
  *&v9.pivotTolerance = v7;
  return SparseFactor(factor, &v10, &v9, 0, 0, a4);
}

uint64_t SparseSolve(SparseOpaqueFactorization_Double *factor, DenseMatrix_Double *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  p_symbolicFactorization = &factor->symbolicFactorization;
  if (factor->symbolicFactorization.status || !factor->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v17, &factor->symbolicFactorization);
  reportError = v17.reportError;
  if (p_symbolicFactorization->status || !factor->symbolicFactorization.workspaceSize_Float || factor->status || !factor->solveWorkspaceRequiredStatic)
  {
    if (v17.reportError)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      memset(&v17, 0, sizeof(v17));
      snprintf(&v17, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
      return (reportError)(&v17);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

LABEL_4:
    _SparseTrap();
  }

  rowCount = a2->rowCount;
  if (a2->columnStride < a2->rowCount)
  {
    if (v17.reportError)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      memset(&v17, 0, sizeof(v17));
      snprintf(&v17, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
      return (reportError)(&v17);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC46C();
    }

    goto LABEL_4;
  }

  if (*&a2->attributes)
  {
    v8 = 0;
    rowCount = a2->columnCount;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(&a2->rowCount + v8);
  if (v9 <= 0)
  {
    if (v17.reportError)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      memset(&v17, 0, sizeof(v17));
      snprintf(&v17, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
      return (reportError)(&v17);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366FFDD4();
    }

    goto LABEL_4;
  }

  factorization_low = LOBYTE(factor->symbolicFactorization.factorization);
  v11 = factor->symbolicFactorization.rowCount * factorization_low;
  v12 = factor->symbolicFactorization.columnCount * factorization_low;
  if (v11 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (rowCount != v13)
  {
    if (v17.reportError)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      memset(&v17, 0, sizeof(v17));
      snprintf(&v17, 0x100uLL, "%s (%dx%d) is not consistent with largest dimension of matrix factorization %s (%d).\n");
      return (reportError)(&v17);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC360();
    }

    goto LABEL_4;
  }

  free = v17.free;
  v15 = (v17.malloc)(factor->solveWorkspaceRequiredPerRHS + *&factor[1].status * v9);
  if (!v15)
  {
    if (reportError)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      memset(&v17, 0, sizeof(v17));
      snprintf(&v17, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
      return (reportError)(&v17);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC3F4();
    }

    goto LABEL_4;
  }

  v16 = v15;
  _SparseSolveOpaque_Double(factor, 0, a2, v15);
  return (free)(v16);
}