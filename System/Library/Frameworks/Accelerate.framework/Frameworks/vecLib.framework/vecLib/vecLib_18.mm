int *sub_23679019C(int *result, unsigned int a2, int *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  v10 = 4;
  if (*(a5 + 12))
  {
    v11 = 0;
  }

  else
  {
    v11 = 4;
  }

  v12 = *(a5 + v11);
  if ((*(a5 + 12) & 1) == 0)
  {
    v10 = 0;
  }

  v13 = *(a5 + v10);
  *(&v39 + 1) = 0;
  if (a4)
  {
    v39 = *a4;
    v40 = *(a4 + 2);
  }

  else
  {
    *&v39 = __PAIR64__(v12, v13);
    DWORD2(v39) = v13;
    v40 = a6;
    result = sub_2366FD390(a5, &v39);
  }

  if (v9)
  {
    if (v12 >= 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = v40;
      v18 = DWORD2(v39);
      v17 = BYTE12(v39);
      do
      {
        if (a2 >= 1)
        {
          v19 = *(a5 + 16);
          v20 = a2;
          v21 = a3;
          v22 = v15;
          LODWORD(result) = v14;
          do
          {
            if (v17)
            {
              v23 = v22;
            }

            else
            {
              v23 = result;
            }

            if (*(a5 + 12))
            {
              v24 = v15 + *(a5 + 8) * *v21;
            }

            else
            {
              v24 = *v21 + *(a5 + 8) * v15;
            }

            *(v19 + 8 * v24) = *(v16 + 8 * v23);
            result = (result + 1);
            v22 += v18;
            ++v21;
            --v20;
          }

          while (v20);
        }

        ++v15;
        v14 += v18;
      }

      while (v15 != v12);
    }
  }

  else if (v12 >= 1)
  {
    v25 = 0;
    v26 = v40;
    v28 = DWORD2(v39);
    v27 = BYTE12(v39);
    do
    {
      if (a2 >= 1)
      {
        v29 = *(a5 + 16);
        v30 = *(a5 + 8);
        v31 = v30 * v25;
        v32 = a2;
        result = a3;
        v33 = v25;
        do
        {
          v34 = *result++;
          v35 = v25 + v28 * v34;
          v36 = v28 * v25 + v34;
          if (v27)
          {
            v36 = v35;
          }

          v37 = *(v26 + 8 * v36);
          if (*(a5 + 12))
          {
            v38 = v33;
          }

          else
          {
            v38 = v31;
          }

          *(v29 + 8 * v38) = v37;
          ++v31;
          v33 += v30;
          --v32;
        }

        while (v32);
      }

      ++v25;
    }

    while (v25 != v12);
  }

  return result;
}

int *sub_236790344(int *result, int a2, int a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v11 = result;
  v12 = 4;
  if (*(a6 + 12))
  {
    v13 = 0;
  }

  else
  {
    v13 = 4;
  }

  v14 = *(a6 + v13);
  if ((*(a6 + 12) & 1) == 0)
  {
    v12 = 0;
  }

  v15 = *(a6 + v12);
  *(&v44 + 1) = 0;
  if (a5)
  {
    v44 = *a5;
    v45 = *(a5 + 2);
  }

  else
  {
    *&v44 = __PAIR64__(v14, v15);
    DWORD2(v44) = v15;
    v45 = a7;
    result = sub_2366FD390(a6, &v44);
  }

  if (v11)
  {
    if (v14 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = v45;
      v20 = DWORD2(v44);
      v19 = BYTE12(v44);
      v21 = DWORD2(v44) * a3;
      do
      {
        if (a2 >= 1)
        {
          v22 = 0;
          v23 = v17;
          v24 = v16;
          do
          {
            if (a3 >= 1)
            {
              LODWORD(result) = 0;
              v25 = *(a6 + 16);
              v26 = v23;
              do
              {
                v27 = v24 + result;
                if (v19)
                {
                  v27 = v26;
                }

                if (*(a6 + 12))
                {
                  v28 = v17 + (result + *(a4 + 4 * v22) * a3) * *(a6 + 8);
                }

                else
                {
                  v28 = result + v17 * *(a6 + 8) + *(a4 + 4 * v22) * a3;
                }

                *(v25 + 8 * v28) = *(v18 + 8 * v27);
                result = (result + 1);
                v26 += v20;
              }

              while (a3 != result);
            }

            ++v22;
            v24 += a3;
            v23 += v21;
          }

          while (v22 != a2);
        }

        ++v17;
        v16 += v20;
      }

      while (v17 != v14);
    }
  }

  else if (v14 >= 1)
  {
    v29 = 0;
    v30 = v45;
    v32 = DWORD2(v44);
    v31 = BYTE12(v44);
    v33 = DWORD2(v44) * a3;
    do
    {
      if (a2 >= 1)
      {
        v34 = 0;
        v35 = 0;
        do
        {
          if (a3 >= 1)
          {
            v36 = 0;
            result = *(a6 + 16);
            v37 = *(a4 + 4 * v35);
            v38 = v37 * a3;
            v39 = v29 + v33 * v37;
            v40 = a3;
            v41 = v34;
            do
            {
              v42 = v39;
              if ((v31 & 1) == 0)
              {
                v42 = v32 * v29 + v36 + v38;
              }

              if (*(a6 + 12))
              {
                v43 = v29 + *(a6 + 8) * v41;
              }

              else
              {
                v43 = v41 + v29 * *(a6 + 8);
              }

              *&result[2 * v43] = *(v30 + 8 * v42);
              ++v36;
              ++v41;
              v39 += v32;
              --v40;
            }

            while (v40);
          }

          ++v35;
          v34 += a3;
        }

        while (v35 != a2);
      }

      ++v29;
    }

    while (v29 != v14);
  }

  return result;
}

void _SparseMultiplySubfactor_Double(const SparseOpaqueSubfactor_Double *Subfactor, const DenseMatrix_Double *x, const DenseMatrix_Double *y, char *workspace)
{
  v4 = 4;
  if (*&y->attributes)
  {
    v4 = 0;
  }

  sub_23678EFD4(Subfactor, &x->rowCount, y, workspace, Subfactor->workspaceRequiredPerRHS + *&Subfactor[1].attributes * *(&y->rowCount + v4));
}

void sub_236790578(__int16 *a1, __int128 *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(a1 + 4);
  v11 = *(a1 + 33);
  if (v11 > 0x29)
  {
    goto LABEL_17;
  }

  if (((1 << v11) & 0x1D) == 0)
  {
    if (((1 << v11) & 0x30000000000) != 0)
    {
      v14 = *(a1 + 32);
      v16 = *(a1 + 5);
      v15 = *(a1 + 6);
      v17 = v16 * v14;
      v18 = v15 * v14;
      if (v15 * v14 >= v16 * v14)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      if (v18 <= v17)
      {
        v20 = v16 * v14;
      }

      else
      {
        v20 = v15 * v14;
      }

      v21 = *(a1 + 5);
      v22 = *(a1 + 11);
      if (*(a1 + 4) <= 6u)
      {
        if (v10 == 1)
        {
          v23 = *(v21 + 64);
LABEL_22:
          v28 = (v9 & 1) == 0;
          v29 = a2;
LABEL_56:

          sub_23679019C(v28, v19, v23, v29, a3, a4);
          return;
        }

        if (v11 == 41)
        {
          v40 = *(v21 + 40);
          if (!v40)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              sub_23673A598();
            }

            _SparseTrap();
          }

          memset(&v62[14] + 3, 0, 29);
          memset(&v62[3] + 3, 0, 176);
          strcpy(v62, "Invalid operation for this type of factorization.\n");
          v40(v62, v19, a3, a4, a2);
          return;
        }

        if (v9)
        {
          v42 = 4;
          if (*(a3 + 12))
          {
            v42 = 0;
          }

          v43 = *(a3 + v42);
          *&v62[0] = __PAIR64__(v43, v20);
          *(&v62[0] + 1) = v20;
          *&v62[1] = a4;
          if (a2)
          {
            v44 = a2;
          }

          else
          {
            v44 = a3;
          }

          v45 = &a4[v43 * v20];
          v46 = v22;
          sub_23679019C(1, v19, *(v21 + 64), v44, v62, v45);
          if (v16 <= v15)
          {
            v47 = v15;
          }

          else
          {
            v47 = v16;
          }

          sub_23678EB18(v47 * v14, v21, v46, v62, a3, v45);
          return;
        }

        v49 = *(a1 + 11);
        v61 = v19;
        if (a2)
        {
          if (v16 <= v15)
          {
            v50 = *(a1 + 6);
          }

          else
          {
            v50 = *(a1 + 5);
          }

          v51 = v50 * v14;
          v52 = a4 + a5;
          v53 = v21;
          v54 = v22;
          v55 = a2;
          v56 = a3;
          v57 = a4;
        }

        else
        {
          v58 = 4;
          if (*(a3 + 12))
          {
            v58 = 0;
          }

          v59 = *(a3 + v58);
          *&v62[0] = __PAIR64__(v59, v20);
          *(&v62[0] + 1) = v20;
          *&v62[1] = a4;
          sub_2366FD390(a3, v62);
          if (v16 <= v15)
          {
            v60 = v15;
          }

          else
          {
            v60 = v16;
          }

          v51 = v60 * v14;
          v57 = &a4[v59 * v20];
          v55 = v62;
          v52 = a4 + a5;
          v53 = v21;
          v54 = v49;
          v56 = a3;
        }

        sub_23678E160(v51, v53, v54, v55, v56, v57, v52);
        v23 = *(v21 + 64);
        LODWORD(v19) = v61;
LABEL_52:
        v28 = 0;
LABEL_55:
        v29 = 0;
        goto LABEL_56;
      }

      if (v10 == 7)
      {
        v32 = *(a1 + 11);
        v33 = v19;
        sub_23679019C(1, v19, *(v21 + 64), a2, a3, a4);
        v34 = v21;
        v35 = v32;
        v36 = a3;
        v37 = a4;
        if ((v9 & 1) == 0)
        {
          sub_23678E600(v21, v32, a3, a4);
LABEL_51:
          v23 = *(v21 + 64);
          LODWORD(v19) = v33;
          goto LABEL_52;
        }
      }

      else
      {
        if ((v9 & 1) == 0)
        {
          v48 = *(a1 + 11);
          sub_23679019C(1, v19, *(v21 + 64), a2, a3, a4);

          sub_23678E600(v21, v48, a3, a4);
          return;
        }

        v41 = *(a1 + 11);
        v33 = v19;
        if (a2)
        {
          sub_2366FD390(a2, a3);
        }

        v34 = v21;
        v35 = v41;
        v36 = a3;
        v37 = a4;
      }

      sub_23678E828(v34, v35, v36, v37);
      goto LABEL_51;
    }

LABEL_17:
    if (*(a1 + 4) <= 8u)
    {
      v24 = *(a1 + 5);
      v25 = *(a1 + 32);
      v26 = *(v24 + 60);
      if (v10 == 1)
      {
        v27 = *(v24 + 136);
      }

      else
      {
        v27 = *(v24 + 144);
      }

      sub_236790344(((v9 & 1) == 0), v26, v25, v27, a2, a3, a4);
      return;
    }

    v30 = *(a1 + 11);
    if (v10 == 9)
    {
      v31 = *(v30 + 96);
    }

    else
    {
      v31 = *(v30 + 104);
    }

    goto LABEL_40;
  }

  v12 = *(a1 + 5);
  v13 = *(a1 + 11);
  if (*(a1 + 4) <= 2u)
  {
    if (v10 == 1)
    {
      LODWORD(v19) = *(v12 + 60);
      v23 = *(v12 + 80);
      goto LABEL_22;
    }

    v31 = *(v13 + 64);
LABEL_40:

    sub_236790C58(v31, a2, a3);
    return;
  }

  if (v10 == 3)
  {
    sub_23679019C(0, *(v12 + 60), *(v12 + 80), a2, a3, a4);
    if (v9)
    {
      sub_23678DE2C(v11, v12, v13, a3, a4);
    }

    else
    {
      sub_23678D660(v11, v12, v13, a3, a4);
    }

    goto LABEL_54;
  }

  if (v10 == 4)
  {
    sub_23679019C(0, *(v12 + 60), *(v12 + 80), a2, a3, a4);
    sub_23678DAD0(v11, v12, v13, 0, a3);
LABEL_54:
    LODWORD(v19) = *(v12 + 60);
    v23 = *(v12 + 80);
    v28 = 1;
    goto LABEL_55;
  }

  if (v9)
  {
    sub_23678DAD0(*(a1 + 33), v12, v13, a2, a3);
    sub_23678DE2C(v11, v12, v13, a3, a4);
    v38 = *(v13 + 64);
    v39 = *(v12 + 136);

    sub_23678D570(v38, v39, 0, a3);
  }

  else
  {
    sub_23678D570(*(v13 + 64), *(v12 + 136), a2, a3);

    sub_23678D660(v11, v12, v13, a3, a4);
  }
}

int *sub_236790C58(int *result, int *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (*(a3 + 12))
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  if (*(a3 + 12))
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (result)
  {
    v6 = *(a3 + v4);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = *(a3 + v5);
      do
      {
        if (v8 >= 1)
        {
          v9 = *(v3 + 2);
          v10 = v3[2];
          v11 = *(a3 + 8);
          v12 = v11 * v7;
          v13 = v10 * v7;
          v14 = *(a3 + 16);
          v15 = v8;
          v16 = result;
          v17 = v7;
          v18 = v7;
          do
          {
            if (v3[3])
            {
              v19 = v17;
            }

            else
            {
              v19 = v13;
            }

            v20 = *v16++;
            v21 = *(v9 + 8 * v19) / v20;
            if (*(a3 + 12))
            {
              v22 = v18;
            }

            else
            {
              v22 = v12;
            }

            *(v14 + 8 * v22) = v21;
            ++v12;
            v18 += v11;
            ++v13;
            v17 += v10;
            --v15;
          }

          while (v15);
        }

        ++v7;
      }

      while (v7 != v6);
    }
  }

  else if (a2)
  {
    return sub_2366FD390(a2, a3);
  }

  return result;
}

void _SparseSolveSubfactor_Double(const SparseOpaqueSubfactor_Double *Subfactor, const DenseMatrix_Double *b, const DenseMatrix_Double *x, char *workspace)
{
  v4 = 4;
  if (*&x->attributes)
  {
    v4 = 0;
  }

  sub_236790578(Subfactor, &b->rowCount, x, workspace, Subfactor->workspaceRequiredPerRHS + *&Subfactor[1].attributes * *(&x->rowCount + v4));
}

void _SparseGetWorkspaceRequired_Double(SparseSubfactor_t Subfactor, SparseOpaqueFactorization_Double *Factor, size_t *workStatic, size_t *workPerRHS)
{
  rowCount = Factor->symbolicFactorization.rowCount;
  if (rowCount <= Factor->symbolicFactorization.columnCount)
  {
    rowCount = Factor->symbolicFactorization.columnCount;
  }

  v6 = rowCount * LOBYTE(Factor->symbolicFactorization.factorization);
  v7 = BYTE1(Factor->symbolicFactorization.factorization);
  if (v7 <= 0x29 && ((1 << v7) & 0x1D) == 0 && ((1 << v7) & 0x30000000000) != 0 && Subfactor == SparseSubfactorQ)
  {
    sub_23678B078(v6, Factor->symbolicFactorization.workspaceSize_Float, workStatic, workPerRHS);
    v8 = *workPerRHS + 16 * v6;
  }

  else
  {
    *workStatic = 0;
    v8 = 16 * v6;
  }

  *workPerRHS = v8;
}

void sub_236790DDC(void *result, uint64_t a2)
{
  v2 = result[1];
  v3 = *(v2 + 64);
  v4 = result[5];
  v5 = &v4[*(v2 + 48)];
  LODWORD(v2) = *(v3 + 12);
  v6 = atomic_load((*(v3 + 3) + 136));
  v7 = &v4[8 * (v6 * v2) + 7] & 0xFFFFFFFFFFFFFFF8;
  if (v5 < v7 || (v8 = *(v3 + 1), v5 < ((v7 + 4 * *(v8 + 56) + 7) & 0xFFFFFFFFFFFFFFF8)))
  {
    __break(1u);
  }

  else
  {
    v9 = a2;
    v11 = *(v8 + 344);
    v12 = *(v11 + 4 * a2);
    v13 = (a2 << 32) + 0x100000000;
    v14 = v13 >> 32;
    v15 = *(v11 + (v13 >> 30));
    if (v12 < v15)
    {
      do
      {
        sub_236790F98(v12++, *v3, *(v3 + 4), *(v3 + 1), *(v3 + 3), *(v3 + 12), *(v3 + 8), *(v3 + 10), *(v3 + 4), *(v3 + 5), v4, v7);
      }

      while (v15 != v12);
      v8 = *(v3 + 1);
    }

    v16 = *(v8 + 352);
    v17 = *(v16 + 8 * v9);
    if (v17 < *(v16 + 8 * v14))
    {
      do
      {
        v18 = (*(v3 + 11) + 40 * *(*(v8 + 360) + 4 * v17));
        if (atomic_fetch_add_explicit(v18, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v19 = result[2];
          if (v19)
          {
            do
            {
              __asm { CASP            X4, X5, X4, X5, [X1] }

              *(v19 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
              *(v19 + 32) = 0;
              _X2 = _X4 & 1 | v19;
              _X7 = 0;
              __asm { CASPL           X6, X7, X2, X3, [X1] }
            }

            while (_X6 != _X4);
            if (_X4)
            {
              __ulock_wake();
            }
          }

          result[2] = v18;
          result[3] = 0;
        }

        ++v17;
        v8 = *(v3 + 1);
      }

      while (v17 < *(*(v8 + 352) + 8 * v14));
    }
  }
}

void sub_236790F98(int a1, int a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12)
{
  v12 = a6;
  v14 = a1;
  if (a2 == 83)
  {
    v15 = *(a5[9] + 4 * a1);
    v16 = *(a5[10] + 4 * a1);
    v17 = *(a5[11] + 4 * a1);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v18 = *(a5[14] + 8 * a1);
  v19 = v18 + 8;
  v20 = *(a4 + 176);
  v21 = a1 + 1;
  v22 = *(v20 + 4 * v21) - *(v20 + 4 * a1);
  v23 = v15 + v22 * a3;
  v24 = v23;
  if (a2 == 83)
  {
    v24 = *(a5[8] + 4 * a1);
  }

  v25 = *(a4 + 184);
  v26 = 8 * v21;
  v27 = *(v25 + 8 * v21);
  v28 = *(v25 + 8 * a1);
  v29 = v23 + v16 + (v27 - v28) * a3;
  v30 = v17 + (*(*(a4 + 200) + v26) - *(*(a4 + 200) + 8 * a1)) * a3;
  v164 = v19 + 8 * v29 * v23 + 8 * v30 * v23;
  if (a2 == 81)
  {
    v31 = 0;
  }

  else
  {
    v31 = v19 + 8 * v29 * v23 + 8 * v30 * v23;
  }

  v32 = v31 + 4 * v23;
  if (v16 <= 0)
  {
    v32 = 0;
  }

  v162 = v32;
  v33 = 8 * v29;
  if (v29 >= 1)
  {
    v34 = 0;
    v35 = -(v15 + a3 * v22);
    v36 = v18 + (v33 + 8 * v30) * v23 + 8;
    do
    {
      if (v34 >= v23)
      {
        if (v34 >= v29 - v16)
        {
          v37 = *(v162 - 4 * v29 + 4 * v16 + 4 * v34);
        }

        else
        {
          v37 = v35 % a3 + *(*(a4 + 192) + 4 * v28 + 4 * (v35 / a3)) * a3;
        }
      }

      else if (a2 == 81)
      {
        v37 = v34 + *(v20 + 4 * v14) * a3;
      }

      else
      {
        v37 = *(v36 + 4 * v34);
      }

      *(a12 + 4 * v37) = v34++;
      ++v35;
    }

    while (v34 < v29);
  }

  v146 = v23;
  v169 = v23;
  v143 = v31;
  v166 = v29;
  v38 = v29 - v24;
  v147 = v16;
  if (v29 <= v24)
  {
    v40 = v12;
  }

  else
  {
    *(a9 + 8 * v14) = (*(a4 + 24))(8 * v38 * v12 + v16);
    *(a10 + 4 * v14) = v38;
    bzero(*(a9 + 8 * v14), 8 * v38 * v12);
    v39 = v38;
    v40 = v12;
    if (v147 >= 1)
    {
      bzero((*(a9 + 8 * v14) + 8 * v39 * v12), v147);
    }
  }

  v41 = *(a9 + 8 * v14);
  bzero(a11, 8 * v40 * v24);
  v42 = v14;
  v43 = a4;
  v44 = (*(a4 + 240) + 8 * v14);
  v45 = *v44;
  if (*v44 < v44[1])
  {
    v170 = v166 - v147;
    v46 = 8 * v24;
    v47 = v33 - v46;
    do
    {
      v48 = *(*(v43 + 248) + 4 * v45);
      v49 = (a10 + 4 * v48);
      if (!atomic_load_explicit(v49, memory_order_acquire))
      {
        goto LABEL_128;
      }

      if (a2 == 83)
      {
        v50 = *(a5[9] + 4 * v48);
        v51 = *(a5[10] + 4 * v48);
        v52 = *(a5[11] + 4 * v48);
      }

      else
      {
        v50 = 0;
        v51 = 0;
        v52 = 0;
      }

      v53 = *(v43 + 176);
      v54 = v48 + 1;
      v55 = *(v53 + 4 * v48);
      v161 = *(v53 + 4 * (v48 + 1));
      v56 = v50 + (v161 - v55) * a3;
      v57 = v56;
      if (a2 == 83)
      {
        v57 = *(a5[8] + 4 * v48);
      }

      v58 = *(v43 + 184);
      v59 = *(v58 + 8 * v54);
      v60 = *(v58 + 8 * v48);
      v61 = v56 + v51 + (v59 - v60) * a3;
      if (a2 == 81)
      {
        v62 = 0;
      }

      else
      {
        v62 = *(a5[14] + 8 * v48) + 8 + 8 * v56 * v61 + 8 * v56 * (v52 + (*(*(v43 + 200) + 8 * v54) - *(*(v43 + 200) + 8 * v48)) * a3);
      }

      v63 = v62 + 4 * v56;
      if (v51 <= 0)
      {
        v63 = 0;
      }

      v167 = v63;
      v168 = v48;
      v64 = *(a9 + 8 * v48);
      if (v51 <= 0 || v64 == 0)
      {
        v66 = 0;
      }

      else
      {
        v66 = v64 + 8 * (v61 - v57) * v12;
      }

      v67 = *(v43 + 256);
      LODWORD(v68) = *(*(v43 + 264) + 4 * v45);
      v69 = *(*(v43 + 272) + 4 * v45);
      v70 = *(v67 + v45);
      v165 = v45;
      v158 = v56 + v51 + (v59 - v60) * a3;
      if ((v70 - 2) >= 2)
      {
        if (v70 == 1)
        {
          v72 = 0;
          v71 = *(*(a4 + 280) + 4 * v45);
          if (!v69)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v71 = 0;
          v72 = 0;
          if (!v69)
          {
            goto LABEL_87;
          }
        }
      }

      else
      {
        v71 = v59 - (v60 + v68);
        v72 = v56 - v57;
        if (v56 > v57 && v70 == 3)
        {
          v149 = v59 - (v60 + v68);
          v74 = 0;
          v75 = v55 * a3;
          v154 = v55;
          v156 = v50;
          v151 = v59;
          v152 = v60;
          v76 = v50 + v51 + a3 * (v161 + v59 - v55 - v60) - v57;
          v77 = v57;
          do
          {
            if ((v77 & 0x80000000) != 0)
            {
              v78 = 0x7FFFFFFF;
            }

            else if (v62)
            {
              v78 = *(v62 + 4 * v77);
            }

            else
            {
              v78 = v77 + v75;
            }

            v79 = *(a12 + 4 * v78);
            if (v79 >= v24)
            {
              if (v12 >= 1)
              {
                v83 = (v41 + 8 * (v79 - v24));
                v84 = v12;
                v85 = v74;
                do
                {
                  *v83 = *(v64 + 8 * v85) + *v83;
                  v85 += v76;
                  v83 = (v83 + v47);
                  --v84;
                }

                while (v84);
              }
            }

            else if (v12 >= 1)
            {
              v80 = &a11[8 * v79];
              v81 = v12;
              v82 = v74;
              do
              {
                *v80 = *(v64 + 8 * v82) + *v80;
                v82 += v76;
                v80 = (v80 + v46);
                --v81;
              }

              while (v81);
            }

            ++v77;
            ++v74;
          }

          while (v77 != v56);
          v45 = v165;
          v55 = v154;
          v50 = v156;
          LODWORD(v59) = v151;
          v60 = v152;
          v71 = v149;
          if (v69)
          {
            goto LABEL_88;
          }

LABEL_71:
          if (v71 >= 1)
          {
            v148 = v49;
            v150 = v71;
            v86 = v71 + v68;
            v68 = v68;
            v87 = *(a4 + 192) + 4 * v60;
            v155 = v55;
            v157 = v50;
            v153 = v60;
            v88 = v50 + v51 + a3 * (v161 + v59 - v55 - v60) - v57;
            do
            {
              if (a3 >= 1)
              {
                v89 = 0;
                v90 = *(v87 + 4 * v68) * a3;
                v91 = v64 + 8 * v68 * a3;
                do
                {
                  v92 = *(a12 + 4 * v90 + 4 * v89);
                  if (v92 >= v24)
                  {
                    if (v12 >= 1)
                    {
                      v96 = (v41 + 8 * (v92 - v24));
                      v97 = v12;
                      v98 = v56 - v57;
                      do
                      {
                        *v96 = *(v91 + 8 * v89 + 8 * v98) + *v96;
                        v98 += v88;
                        v96 = (v96 + v47);
                        --v97;
                      }

                      while (v97);
                    }
                  }

                  else if (v12 >= 1)
                  {
                    v93 = v12;
                    v94 = v56 - v57;
                    v95 = &a11[8 * v92];
                    do
                    {
                      *v95 = *(v91 + 8 * v89 + 8 * v94) + *v95;
                      v94 += v88;
                      v95 = (v95 + v46);
                      --v93;
                    }

                    while (v93);
                  }

                  ++v89;
                }

                while (v89 != a3);
              }

              ++v68;
            }

            while (v68 < v86);
            v42 = v14;
            v45 = v165;
            v49 = v148;
            v55 = v155;
            v50 = v157;
            LODWORD(v60) = v153;
            v71 = v150;
          }

LABEL_87:
          v72 += v71 * a3;
          goto LABEL_88;
        }

        v72 = 0;
        if (!v69)
        {
          goto LABEL_71;
        }
      }

LABEL_88:
      if (v66)
      {
        v160 = v72;
        if (v51 >= 1)
        {
          v99 = 0;
          v100 = 0;
          v101 = v50 + (v161 + v59 - (v55 + v60)) * a3;
          v102 = v50 + v51;
          v103 = v161 + v59 - v55;
          v104 = v101;
          v105 = v158 - v51;
          v106 = v101 - v57;
          v107 = v102 + a3 * (v103 - v60) - v57;
          v43 = a4;
          v108 = v169;
          while (1)
          {
            if (v104 >= v56)
            {
              if (v104 >= v105)
              {
                v109 = *(v167 + 4 * (v104 - v105));
              }

              else
              {
                v109 = (v104 - v56) % a3 + *(*(a4 + 192) + 4 * *(*(a4 + 184) + 8 * v168) + 4 * ((v104 - v56) / a3)) * a3;
              }
            }

            else if (v104 < 0)
            {
              v109 = 0x7FFFFFFF;
            }

            else if (v62)
            {
              v109 = *(v62 + 4 * v104);
            }

            else
            {
              v109 = v104 + *(*(a4 + 176) + 4 * v168) * a3;
            }

            v110 = *(a12 + 4 * v109);
            v111 = v110;
            if (v110 >= v108)
            {
              if (v110 < v170)
              {
                v113 = *(*(a4 + 192) + 4 * *(*(a4 + 184) + 8 * v42) + 4 * ((v110 - v169) / a3));
                v108 = v169;
                v42 = v14;
                v112 = (v110 - v169) % a3 + v113 * a3;
                goto LABEL_110;
              }

              if (v166 > v110)
              {
                v112 = *(v162 + 4 * (v110 - v170));
                goto LABEL_110;
              }
            }

            else if ((v110 & 0x80000000) == 0)
            {
              if (a2 == 81)
              {
                v112 = v110 + *(*(a4 + 176) + 4 * v42) * a3;
              }

              else
              {
                v112 = *(v164 + 4 * v110);
              }

              goto LABEL_110;
            }

            v112 = 0x7FFFFFFF;
LABEL_110:
            if (v112 == v109)
            {
              __swp(v66 + v99, (v66 + v99));
              if (((v66 + v99) & 1) == 0)
              {
                ++v100;
                if (v111 >= v24)
                {
                  if (v12 >= 1)
                  {
                    v117 = (v41 + 8 * (v111 - v24));
                    v118 = v12;
                    v119 = v106;
                    do
                    {
                      *v117 = *(v64 + 8 * v119) + *v117;
                      v119 += v107;
                      v117 = (v117 + v47);
                      --v118;
                    }

                    while (v118);
                  }
                }

                else if (v12 >= 1)
                {
                  v114 = &a11[8 * v111];
                  v115 = v12;
                  v116 = v106;
                  do
                  {
                    *v114 = *(v64 + 8 * v116) + *v114;
                    v116 += v107;
                    v114 = (v114 + v46);
                    --v115;
                  }

                  while (v115);
                }
              }
            }

            ++v104;
            ++v99;
            ++v106;
            if (v104 >= v158)
            {
              goto LABEL_124;
            }
          }
        }

        v100 = 0;
        v43 = a4;
LABEL_124:
        v72 = v100 + v160;
        v45 = v165;
      }

      else
      {
        v43 = a4;
      }

      add_explicit = atomic_fetch_add_explicit(v49, -v72, memory_order_release);
      if (*(a9 + 8 * v168) && add_explicit == v72)
      {
        (*(v43 + 32))();
        v45 = v165;
        v42 = v14;
        v43 = a4;
        *(a9 + 8 * v168) = 0;
      }

LABEL_128:
      ++v45;
    }

    while (v45 < *(*(v43 + 240) + 8 * v42 + 8));
  }

  if (v24)
  {
    v121 = a7;
    if (v24 >= 1)
    {
      v122 = 0;
      v123 = v166 - v147;
      v124 = a11;
      do
      {
        if (v122 >= v146)
        {
          if (v122 >= v123)
          {
            if (v122 >= v166)
            {
              v125 = 0x7FFFFFFF;
            }

            else
            {
              v125 = *(v162 + 4 * (v122 - v123));
            }
          }

          else
          {
            v125 = (v122 - v169) % a3 + *(*(v43 + 192) + 4 * *(*(v43 + 184) + 8 * v42) + 4 * ((v122 - v169) / a3)) * a3;
          }
        }

        else if (a2 == 81)
        {
          v125 = v122 + *(*(v43 + 176) + 4 * v42) * a3;
        }

        else
        {
          v125 = *(v164 + 4 * v122);
        }

        if (v12 >= 1)
        {
          v126 = (a7 + 8 * v125);
          v127 = v12;
          v128 = v124;
          do
          {
            *v128 = *v126 + *v128;
            v128 += v24;
            v126 += a8;
            --v127;
          }

          while (v127);
        }

        ++v122;
        v124 += 8;
      }

      while (v122 != v24);
      if (v24 != 1)
      {
        cblas_dtrsm_NEWLAPACK();
        v42 = v14;
        v43 = a4;
      }
    }

    if (a2 == 81)
    {
      if (v12 >= 1)
      {
        v129 = 0;
        v130 = a11;
        do
        {
          if (v24 >= 1)
          {
            v131 = (v121 + 8 * *(*(v43 + 176) + 4 * v42) * a3);
            v132 = v24;
            v133 = v130;
            do
            {
              v134 = *v133;
              v133 += 8;
              *v131++ = v134;
              --v132;
            }

            while (v132);
          }

          ++v129;
          v130 += 8 * v24;
          v121 += 8 * a8;
        }

        while (v129 != v12);
      }
    }

    else if (v12 >= 1)
    {
      v135 = 0;
      v136 = a11;
      do
      {
        if (v24 >= 1)
        {
          v137 = v24;
          v138 = v143;
          v139 = v136;
          do
          {
            v140 = *v139;
            v139 += 8;
            v141 = v140;
            v142 = *v138++;
            *(a7 + 8 * v135 * a8 + 8 * v142) = v141;
            --v137;
          }

          while (v137);
        }

        ++v135;
        v136 += 8 * v24;
      }

      while (v135 != v12);
    }

    if (v166 > v24)
    {

      cblas_dgemm_NEWLAPACK();
    }
  }
}

void sub_236791B58(void *result, uint64_t a2)
{
  v2 = a2;
  v3 = result[1];
  v4 = *(v3 + 64);
  v5 = *(*(v4 + 1) + 344);
  v6 = *(v5 + 4 * a2);
  v7 = (a2 << 32) + 0x100000000;
  v8 = *(v5 + (v7 >> 30));
  v9 = result[5];
  v10 = v9 + *(v3 + 48);
  LODWORD(v5) = *(v4 + 12);
  v11 = atomic_load((*(v4 + 3) + 140));
  if (v10 < ((&v9[(v11 * v5)] + 7) & 0xFFFFFFFFFFFFFFF8))
  {
    __break(1u);
  }

  else
  {
    v13 = v7 >> 32;
    while (v8 > v6)
    {
      sub_236791CF4(--v8, *v4, *(v4 + 4), *(v4 + 1), *(v4 + 3), *(v4 + 12), *(v4 + 8), *(v4 + 10), *(v4 + 7), *(v4 + 9), v9);
    }

    v14 = *(v4 + 1);
    v15 = *(v14 + 368);
    v16 = *(v15 + 8 * v2);
    if (v16 < *(v15 + 8 * v13))
    {
      do
      {
        v17 = (*(v4 + 11) + 40 * *(*(v14 + 376) + 4 * v16));
        if (atomic_fetch_add_explicit(v17, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v18 = result[2];
          if (v18)
          {
            do
            {
              __asm { CASP            X4, X5, X4, X5, [X1] }

              *(v18 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
              *(v18 + 32) = 0;
              _X2 = _X4 & 1 | v18;
              _X7 = 0;
              __asm { CASPL           X6, X7, X2, X3, [X1] }
            }

            while (_X6 != _X4);
            if (_X4)
            {
              __ulock_wake();
            }
          }

          result[2] = v17;
          result[3] = 0;
        }

        ++v16;
        v14 = *(v4 + 1);
      }

      while (v16 < *(*(v14 + 368) + 8 * v13));
    }
  }
}

void sub_236791CF4(int a1, int a2, unsigned int a3, void *a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v14 = a1;
  if (a2 == 83)
  {
    v15 = *(a5[9] + 4 * a1);
    v16 = *(a5[10] + 4 * a1);
    v17 = *(a5[11] + 4 * a1);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v18 = *(a5[14] + 8 * a1) + 8;
  v19 = a4[22];
  v20 = v14 + 1;
  v21 = *(v19 + 4 * (v14 + 1));
  v22 = *(v19 + 4 * v14);
  v23 = v15 + (v21 - v22) * a3;
  v24 = v15 + (v21 - v22) * a3;
  if (a2 == 83)
  {
    v24 = *(a5[8] + 4 * v14);
  }

  v25 = *(a4[23] + 8 * v20) - *(a4[23] + 8 * v14);
  v26 = a4[25];
  v27 = *(v26 + 8 * v20);
  v28 = *(v26 + 8 * v14);
  v29 = (v27 - v28) * a3;
  v30 = v18 + 8 * (v23 + v16 + v25 * a3) * v23 + 8 * (v29 + v17) * v23;
  v31 = v30 + 4 * v23 + 4 * v16;
  if (a2 == 81)
  {
    v30 = 0;
  }

  v81 = v30;
  if (a2 == 81)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  if (v17 <= 0)
  {
    v33 = 0;
  }

  else
  {
    v33 = &v32[v23];
  }

  if (v24)
  {
    v78 = v14;
    v34 = a11;
    v80 = v23 + v17 + v29;
    if (a6 >= 1)
    {
      v35 = 0;
      v36 = v22 * a3;
      v84 = v21 * a3;
      v37 = (v21 * a3) - v36;
      v38 = a9;
      v39 = a11;
      v40 = a7 + 8 * v36;
      do
      {
        if (a2 == 81)
        {
          if (v36 >= v84)
          {
            v42 = 0;
          }

          else
          {
            v41 = 0;
            do
            {
              v39[v41] = *(v40 + 8 * v41);
              ++v41;
            }

            while (v37 != v41);
            v42 = v37;
          }
        }

        else
        {
          if (v24 < 1)
          {
            v42 = 0;
          }

          else
          {
            v44 = v24;
            v43 = v81;
            v45 = v39;
            do
            {
              v47 = *v43++;
              v46 = v47;
              if (v47 < 0)
              {
                v46 = -v46;
              }

              *v45++ = *(a7 + 8 * v35 * a8 + 8 * v46);
              --v44;
            }

            while (v44);
            v42 = v24;
          }

          if (v42 < v23)
          {
            v48 = v42;
            do
            {
              v49 = v32[v48];
              if (v49 < 0)
              {
                v49 = -v49;
              }

              v39[v48++] = *(a9 + 8 * v35 * a10 + 8 * v49);
            }

            while (v23 != v48);
            v42 = v23;
          }
        }

        v50 = v28;
        if (v27 > v28)
        {
          do
          {
            if (a3 >= 1)
            {
              v51 = v42;
              v52 = (v38 + 8 * (*(a4[26] + 4 * v50) * a3));
              v42 += a3;
              v53 = a3;
              do
              {
                v54 = *v52++;
                v39[v51++] = v54;
                --v53;
              }

              while (v53);
            }

            ++v50;
          }

          while (v50 != v27);
        }

        if (v17 >= 1)
        {
          v55 = v42;
          v56 = v17;
          v57 = v33;
          do
          {
            v58 = *v57++;
            v39[v55++] = *(a9 + 8 * v35 * a10 + 8 * v58);
            --v56;
          }

          while (v56);
        }

        ++v35;
        v39 += v80;
        v40 += 8 * a8;
        v38 += 8 * a10;
      }

      while (v35 != a6);
    }

    if (v23 > v24)
    {
      cblas_dgemm_NEWLAPACK();
    }

    if (v80 > v23)
    {
      cblas_dgemm_NEWLAPACK();
    }

    cblas_dtrsm_NEWLAPACK();
    if (a2 == 81)
    {
      if (a6 >= 1)
      {
        v59 = 0;
        v60 = (a4[22] + 4 * v78);
        v61 = *v60;
        v62 = v60[1];
        v63 = *v60 * a3;
        v64 = v62 * a3;
        v65 = (v62 - v61) * a3;
        v66 = (a9 + 8 * v63);
        do
        {
          v67 = v66;
          v68 = v65;
          v69 = v34;
          if (v63 < v64)
          {
            do
            {
              v70 = *v69++;
              *v67++ = v70;
              --v68;
            }

            while (v68);
          }

          ++v59;
          v34 += v80;
          v66 += a10;
        }

        while (v59 != a6);
      }
    }

    else if (a6 >= 1)
    {
      v71 = 0;
      do
      {
        if (v24 >= 1)
        {
          v72 = v24;
          v73 = v32;
          v74 = v34;
          do
          {
            v75 = *v74++;
            v76 = v75;
            v77 = *v73++;
            *(a9 + 8 * v71 * a10 + 8 * v77) = v76;
            --v72;
          }

          while (v72);
        }

        ++v71;
        v34 += v80;
      }

      while (v71 != a6);
    }
  }
}

uint64_t sub_2367921D4(int a1, uint64_t a2)
{
  if (a1 >= 2)
  {
    v2 = (a2 + 72);
    v3 = a2 + 192;
    v4 = (a1 - 1);
    do
    {
      *(v2 - 1) = v3;
      *v2 = 0;
      v2 += 24;
      v3 += 192;
      --v4;
    }

    while (v4);
  }

  v5 = a2 + 192 * (a1 - 1);
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  return a2;
}

uint64_t sub_236792218@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return result;
}

uint64_t sub_236792228(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a4 > 3)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    _X24 = 0;
    v87 = result;
    do
    {
      while (1)
      {
        _X5 = 0;
        __asm { CASPAL          X4, X5, X24, X25, [X8] }

        if (_X4)
        {
          break;
        }

        v93 = 0;
        result = sub_2366FCDE4(*v12, &v93);
        v12 = v87;
        if (v93)
        {
          return result;
        }
      }

      _X0 = *(_X4 + 64);
      _X3 = 0;
      __asm { CASPAL          X2, X3, X0, X1, [X8] }
    }

    while (_X2 != _X4);
    atomic_fetch_add((v12 + 16), 1u);
    v88 = _X4;
    result = _X4;
    *(_X4 + 16) = sub_2367926C0;
    v23 = _X4;
    atomic_store(1u, _X4);
    *(_X4 + 176) = _X4;
    *(_X4 + 184) = 0;
    *(_X4 + 8) = _X4;
    *(_X4 + 40) = v12;
    *(_X4 + 48) = a3;
    *(_X4 + 56) = a2;
    v24 = a4;
    v92 = &a9;
    v86 = a4;
    if (a4 > 0)
    {
      v25 = (_X4 + 96);
      v26 = a4;
      do
      {
        v27 = v92;
        v92 += 2;
        v28 = *v27;
        v29 = *(v27 + 2);
        if (v29)
        {
          v30 = 4;
        }

        else
        {
          v30 = 8;
        }

        v31 = *(v28 + v30);
        v32 = *(v28 + 4) + 1;
        *(v28 + 4) = v32;
        if (v29)
        {
          *(v28 + 8) = v32;
        }

        *(v25 - 2) = v28;
        *(v25 - 1) = _X4;
        *v25 = v31;
        v25 += 8;
        --v26;
      }

      while (v26);
      v24 = a4;
      if (a4 == 3)
      {
        goto LABEL_24;
      }
    }

    v33 = 0;
    v34 = 2 - a4;
    v35 = vdupq_n_s64(v34);
    v36 = (_X4 + 32 * a4 + 112);
    do
    {
      v37 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(vdupq_n_s64(v33), xmmword_23681F920)));
      if (v37.i8[0])
      {
        *(v36 - 4) = 0;
      }

      if (v37.i8[4])
      {
        *v36 = 0;
      }

      v33 += 2;
      v36 += 8;
    }

    while (((v34 + 2) & 0x1FFFFFFFELL) != v33);
    if (a4 >= 1)
    {
LABEL_24:
      _X22 = 0;
      v39 = _X4 + 80;
      v40 = 0;
      do
      {
        _X20 = v39 + 32 * v40;
        explicit = atomic_load_explicit(*_X20, memory_order_acquire);
        if (explicit < *(_X20 + 16))
        {
          v43 = *_X20;
          *(_X20 + 24) = 0;
          atomic_fetch_add(v23, 1u);
            ;
          }

          _X0 = 0;
          _X1 = 0;
          __asm { CASPAL          X0, X1, X0, X1, [X9] }

          if (result)
          {
            *(*(v43 + 4) + 24) = _X20;
          }

          else
          {
            result = *(v43 + 2);
            do
            {
              _X3 = *(v43 + 3);
              __asm { CASPAL          X2, X3, X20, X21, [X9] }

              _ZF = _X2 == result;
              result = _X2;
            }

            while (!_ZF);
          }

          atomic_store(0, v43 + 40);
          v48 = atomic_load(*_X20);
          if (v48 > explicit)
          {
            v49 = *v12;
            _X0 = 0;
            _X1 = 0;
            __asm { CASPAL          X0, X1, X0, X1, [X8] }

            if (result)
            {
              v90 = v48;
              v89 = *v12;
              do
              {
                if (*(result + 16) > v48)
                {
                  break;
                }

                  ;
                }

                _X2 = 0;
                _X3 = 0;
                __asm { CASPAL          X2, X3, X2, X3, [X8] }

                if (result == _X2)
                {
                  _X24 = *(result + 24);
                  v56 = *(v43 + 2);
                  do
                  {
                    _X5 = *(v43 + 3);
                    __asm { CASPAL          X4, X5, X24, X25, [X8] }

                    _ZF = _X4 == v56;
                    v56 = _X4;
                  }

                  while (!_ZF);
                  atomic_store(0, v43 + 40);
                  v59 = *(result + 8);
                  v60 = *(v59 + 184);
                  if (atomic_fetch_add_explicit(v59, 0xFFFFFFFF, memory_order_release) == 1)
                  {
                    v61 = *(v49 + 16);
                    if (v61)
                    {
                      _X4 = 0;
                      _X5 = 0;
                      __asm { CASP            X4, X5, X4, X5, [X1] }

                      while (1)
                      {
                        *(v61 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
                        *(v61 + 32) = 0;
                        _X2 = _X4 & 1 | v61;
                        _X7 = 0;
                        __asm { CASPL           X6, X7, X2, X3, [X1] }

                        if (_X6 == _X4)
                        {
                          break;
                        }

                        _X5 = 0;
                        __asm { CASP            X4, X5, X22, X23, [X1] }
                      }

                      if (_X4)
                      {
                        v91 = v60;
                        __ulock_wake();
                        v60 = v91;
                        v49 = v89;
                        v48 = v90;
                        v24 = v86;
                        v12 = v87;
                        v23 = v88;
                      }
                    }

                    *(v49 + 16) = v59;
                    *(v49 + 24) = v60;
                  }
                }

                else
                {
                  atomic_store(0, v43 + 40);
                }

                _X0 = 0;
                _X1 = 0;
                __asm { CASPAL          X0, X1, X0, X1, [X8] }
              }

              while (result);
            }
          }

          *(v43 + 4) = _X20;
        }

        ++v40;
      }

      while (v40 != v24);
    }

    v71 = *v12;
    if (atomic_fetch_add_explicit(v23, 0xFFFFFFFF, memory_order_release) == 1)
    {
      v72 = *(v71 + 16);
      if (v72)
      {
        _X4 = 0;
        _X5 = 0;
        __asm { CASP            X4, X5, X4, X5, [X1] }

        *(v72 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
        *(v72 + 32) = 0;
        v76 = _X4 & 1;
        _X2 = v76 | v72;
        _X7 = 0;
        __asm { CASPL           X6, X7, X2, X3, [X1] }

        if (_X6 != _X4)
        {
          _X4 = 0;
          do
          {
            _X7 = 0;
            __asm { CASP            X6, X7, X4, X5, [X1] }

            *(v72 + 24) = _X6 & 0xFFFFFFFFFFFFFFFELL;
            *(v72 + 32) = 0;
            v76 = _X6 & 1;
            _X2 = v76 | v72;
            _X11 = 0;
            __asm { CASPL           X10, X11, X2, X3, [X1] }
          }

          while (_X10 != _X6);
        }

        if (v76)
        {
          result = __ulock_wake();
          v23 = v88;
        }
      }

      *(v71 + 16) = v23;
      *(v71 + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_2367926C0(void *a1, void *a2)
{
  v4 = a2[6];
  v49[0] = a2[5];
  v49[1] = a1;
  v4(v49, a2[7]);
  _X22 = 0;
  v47 = a2;
  v48 = a2 + 10;
  for (i = 0; i != 3; ++i)
  {
    v7 = v48[4 * i];
    if (!v7)
    {
      break;
    }

    add = atomic_fetch_add(v7, 1u);
    _X0 = 0;
    _X1 = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    if (_X0)
    {
      v16 = add + 1;
      do
      {
        if (*(_X0 + 16) > v16)
        {
          break;
        }

          ;
        }

        _X2 = 0;
        _X3 = 0;
        __asm { CASPAL          X2, X3, X2, X3, [X8] }

        if (_X0 == _X2)
        {
          _X26 = *(_X0 + 24);
          v21 = *(v7 + 16);
          do
          {
            _X5 = *(v7 + 24);
            __asm { CASPAL          X4, X5, X26, X27, [X8] }

            _ZF = _X4 == v21;
            v21 = _X4;
          }

          while (!_ZF);
          atomic_store(0, (v7 + 40));
          v24 = *(_X0 + 8);
          v25 = *(v24 + 184);
          if (atomic_fetch_add_explicit(v24, 0xFFFFFFFF, memory_order_release) == 1)
          {
            v26 = a1[2];
            if (v26)
            {
              _X4 = 0;
              _X5 = 0;
              __asm { CASP            X4, X5, X4, X5, [X1] }

              while (1)
              {
                *(v26 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
                *(v26 + 32) = 0;
                _X2 = _X4 & 1 | v26;
                _X7 = 0;
                __asm { CASPL           X6, X7, X2, X3, [X1] }

                if (_X6 == _X4)
                {
                  break;
                }

                _X5 = 0;
                __asm { CASP            X4, X5, X22, X23, [X1] }
              }

              if (_X4)
              {
                __ulock_wake();
              }
            }

            a1[2] = v24;
            a1[3] = v25;
          }
        }

        else
        {
          atomic_store(0, (v7 + 40));
        }

        _X0 = 0;
        _X1 = 0;
        __asm { CASPAL          X0, X1, X0, X1, [X8] }
      }

      while (_X0);
    }
  }

  _X4 = 0;
  _X5 = 0;
  v38 = v47[5];
  result = v47[22];
  __asm { CASPAL          X4, X5, X4, X5, [X9] }

  *(result + 64) = _X4;
  *(result + 72) = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X0, X1, [X9] }

  if (_X2 != _X4)
  {
    _X4 = 0;
    do
    {
      *(result + 64) = _X2;
      *(result + 72) = 0;
      _X7 = 0;
      __asm { CASPAL          X6, X7, X4, X5, [X9] }

      *(result + 64) = _X6;
      *(result + 72) = 0;
      _X3 = 0;
      __asm { CASPAL          X2, X3, X0, X1, [X9] }
    }

    while (_X2 != _X6);
  }

  atomic_fetch_add((v38 + 16), 0xFFFFFFFF);
  return result;
}

uint64_t sub_236792900(unsigned int *a1)
{
  if (!atomic_load(a1 + 4))
  {
    return 0;
  }

  while (1)
  {
    v15 = 0;
    v3 = sub_2366FCDE4(*a1, &v15);
    if (!v15 && (v3 & 1) == 0)
    {
      for (_X0 = 0; ; _X0 = 0)
      {
        _X1 = 0;
        __asm { CASPAL          X0, X1, X0, X1, [X9] }

        if ((_X0 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          break;
        }

        v11 = atomic_load((*(*a1 + 8) + 12));
        if (v11)
        {
          return 1;
        }

        if (!atomic_load(a1 + 4))
        {
          break;
        }
      }

      goto LABEL_10;
    }

    if (v15)
    {
      return 1;
    }

LABEL_10:
    if (!atomic_load(a1 + 4))
    {
      return 0;
    }
  }
}

uint64_t _SparseAMDWorkspaceSizeWithOverflowCheck(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = 0;
  v6 = a1;
  if (a1 <= a3)
  {
    v6 = a3;
  }

  v7 = 3 * a1;
  v8 = __CFADD__(a2, v7);
  v9 = a2 + v7;
  if (v8)
  {
    v10 = (a2 >> 63) + 1;
  }

  else
  {
    v10 = a2 >> 63;
  }

  v11 = v10 << 63 >> 63;
  v12 = v11 != v10;
  v13 = 1;
  if ((a1 & 0x80000000) == 0 && !v12 && (v11 & 0x8000000000000000) == 0)
  {
    v15 = a2 / 5 + v9;
    v14 = (a2 / 5 + __PAIR128__(v11, v9)) >> 64;
    v5 = v15;
    v13 = v14 << 63 >> 63 != v14 || v14 << 63 >> 63 == -1;
  }

  v17 = a1 + 1;
  v18 = 1;
  if (a1 >= -1)
  {
    v19 = a1 + 1;
  }

  else
  {
    v19 = -v17;
  }

  if (a1 >= -1 && !(v19 >> 61))
  {
    v20 = v5 + 6 * v17;
    if (__CFADD__(v5, 6 * v17))
    {
      v18 = 1;
    }

    else
    {
      v29 = 0;
      v22 = sub_23681EB64(v6 + 1, (v6 + 1) >> 63, 3uLL, 0, &v29);
      v24 = v23 << 63 >> 63;
      v25 = v20 + v22;
      v26 = __CFADD__(v20, v22);
      v18 = 1;
      if (!(v24 ^ v23 | v29) && (v24 & 0x8000000000000000) == 0 && !v26)
      {
        v27 = 8 * v19 + 4 * v25;
        v28 = __CFADD__(8 * v19, 4 * v25);
        if (!(v25 >> 62) && !v28)
        {
          v18 = v27 >= 0xFFFFFFFFFFFFFFB0;
          *a4 = v27 + 80;
        }
      }
    }
  }

  return v18 | v13;
}

uint64_t _SparseAMDWorkspaceSize(int a1, uint64_t a2, int a3)
{
  v4 = 0;
  if (_SparseAMDWorkspaceSizeWithOverflowCheck(a1, a2, a3, &v4))
  {
    return -1;
  }

  else
  {
    return v4;
  }
}

unint64_t _SparseAMD(uint64_t a1, int *a2, int *a3, int *a4, uint64_t *a5)
{
  v7 = *(a1 + 4);
  v8 = *(*(a1 + 8) + 8 * v7);
  v9 = *(a1 + 4);
  if (a2)
  {
    if (v7 < 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      v10 = *(a1 + 4);
      v11 = a2;
      do
      {
        v12 = *v11++;
        v9 += v12;
        --v10;
      }

      while (v10);
    }
  }

  v243 = *(a1 + 8);
  if (a3)
  {
    v13 = *a3;
    if (v7 < 2)
    {
      v16 = *a3;
    }

    else
    {
      v14 = a3 + 1;
      v15 = v7 - 1;
      v16 = *a3;
      do
      {
        v18 = *v14++;
        v17 = v18;
        if (v18 < v13)
        {
          v13 = v17;
        }

        if (v17 > v16)
        {
          v16 = v17;
        }

        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v16 = -1;
    v13 = -1;
  }

  v256 = 0;
  v19 = v9;
  v20 = v9;
  result = _SparseAMDWorkspaceSizeWithOverflowCheck(v7, v8, v9, &v256);
  if ((result & 1) == 0)
  {
    v233 = v20;
    if (v20 <= v7)
    {
      v22 = v7;
    }

    else
    {
      v22 = v20;
    }

    v257 = 0;
    v236 = v19;
    result = _SparseAMDWorkspaceSizeWithOverflowCheck(v7, v8, v19, &v257);
    v23 = v257;
    if (result)
    {
      v23 = -1;
    }

    v24 = a5 + v23;
    v25 = v7 + 1;
    v26 = (&a5[v7 + 1] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v24 < v26 || (v27 = v7, v28 = v7, v232 = v8 + 2 * v7 + v8 / 5, v29 = (v26 + 4 * (v232 + v7) + 7) & 0xFFFFFFFFFFFFFFF8, v24 < v29) || (v30 = v8, v230 = v16, v31 = v25, v32 = (v29 + 4 * v25 + 7) & 0xFFFFFFFFFFFFFFF8, v24 < v32) || (v227 = v13, v33 = 4 * v25, v34 = (v32 + 4 * v31 + 7) & 0xFFFFFFFFFFFFFFF8, v24 < v34) || (v35 = (v34 + v33 + 7) & 0xFFFFFFFFFFFFFFF8, v24 < v35) || (v36 = (v35 + v33 + 7) & 0xFFFFFFFFFFFFFFF8, v24 < v36) || (v37 = ((v36 + v33 + 7) & 0xFFFFFFFFFFFFFFF8), v24 < v37) || (v38 = 4 * v22 + 4, result = &v37[v38 + 7] & 0xFFFFFFFFFFFFFFF8, v24 < result) || (v39 = ((result + v38 + 7) & 0xFFFFFFFFFFFFFFF8), v24 < v39) || (v40 = (&v39[v38 + 7] & 0xFFFFFFFFFFFFFFF8), v24 < v40) || v24 < (&v40[v33 + 7] & 0xFFFFFFFFFFFFFFF8))
    {
      __break(1u);
      return result;
    }

    v253 = v27;
    v255 = result;
    v228 = v28;
    v254 = v40;
    v239 = v31;
    if (v233 >= 1)
    {
      memset_pattern16(result, &unk_23681FBC0, 4 * v236);
      LODWORD(v31) = v239;
      v27 = v253;
      v40 = v254;
      v28 = v228;
    }

    v226 = 4 * v28;
    if (v27 < 1)
    {
      v41 = a4;
      v42 = v243;
      if ((v27 & 0x80000000) != 0)
      {
        v229 = 0;
        v53 = 1;
        result = v255;
        v44 = v228;
        v45 = v233;
        v47 = a1;
        v46 = a2;
LABEL_48:
        v54 = v42[v44];
        if (v54 >= 1)
        {
          v55 = *(v47 + 16);
          v56 = v26;
          do
          {
            v57 = *v55++;
            *v56++ = v57;
            --v54;
          }

          while (v54);
        }

        *(v29 + 4 * v44) = 0;
        if (v46)
        {
          if (v229)
          {
            v58 = 0;
            v59 = *v42;
            do
            {
              *(v32 + 4 * v58) = v46[v58];
              *(v35 + 4 * v58) = 1;
              *(v34 + 4 * v58) = 0;
              *(v36 + 4 * v58) = 0;
              v60 = v58 + 1;
              v61 = v42[v58 + 1];
              v62 = v61 - v59;
              if (v61 > v59)
              {
                v63 = 0;
                v64 = (*(v47 + 16) + 4 * v59);
                do
                {
                  v65 = *v64++;
                  v63 += v46[v65];
                  *(v36 + 4 * v58) = v63;
                  --v62;
                }

                while (v62);
              }

              v59 = v61;
              ++v58;
            }

            while (v60 != v27);
          }

          *(v32 + 4 * v44) = 1;
          *(v35 + 4 * v44) = 1;
          *(v34 + 4 * v44) = 0;
          *(v36 + 4 * v44) = 0;
        }

        else if ((v53 & 1) == 0)
        {
          v66 = v31;
          v67 = v32;
          v68 = v35;
          v69 = v34;
          v70 = v29;
          v71 = v36;
          do
          {
            *v67++ = 1;
            *v68++ = 1;
            *v69++ = 0;
            v72 = *v70++;
            *v71++ = v72;
            --v66;
          }

          while (v66);
        }

        if (v27 >= 1)
        {
          v73 = v35;
          v74 = v27;
          do
          {
            if (*v73)
            {
              *v73 = 1;
            }

            ++v73;
            --v74;
          }

          while (v74);
        }

        *(v34 + 4 * v44) = -2;
        a5[v44] = -1;
        *(v35 + 4 * v44) = 0;
        v75 = sqrt(v45) * 10.0;
        if (v75 < 16.0)
        {
          v75 = 16.0;
        }

        if (v45 - 2 >= v75)
        {
          v76 = v75;
        }

        else
        {
          v76 = v45 - 2;
        }

        if ((v45 & 0x80000000) == 0)
        {
          __lenc = 4 * (v45 + 1);
          v246 = v76;
          memset_pattern16(result, &unk_23681FBC0, __lenc);
          memset_pattern16(v39, &unk_23681FBC0, __lenc);
          memset_pattern16(v37, &unk_23681FBC0, __lenc);
          v76 = v246;
          v41 = a4;
          v45 = v233;
          v44 = v228;
          result = v255;
          v27 = v253;
        }

        if (!v229)
        {
          v78 = 0;
          v234 = v27;
LABEL_87:
          if (v78 >= v45)
          {
            v85 = 0;
            goto LABEL_252;
          }

          v85 = 0;
          v238 = 0;
          v86 = result + 4;
          v240 = v236 - 1;
          v87 = 2;
          v88 = v227;
          v231 = result + 4;
LABEL_89:
          if (!a3)
          {
            v242 = v88;
            if (v45 >= 1 && *result == -2147483647)
            {
              v89 = 0;
              do
              {
                if (v240 == v89)
                {
                  goto LABEL_113;
                }

                v96 = *(v86 + 4 * v89++);
              }

              while (v96 == -2147483647);
            }

            else
            {
              LODWORD(v89) = 0;
            }

            if (v89 != v45)
            {
              i = *(result + 4 * v89);
              v95 = i;
              goto LABEL_115;
            }

            goto LABEL_113;
          }

          while (1)
          {
            LODWORD(v89) = 0;
            v90 = v88;
            while (v89 >= v45 || *(result + 4 * v89) != -2147483647)
            {
LABEL_96:
              if (v89 == v45)
              {
                goto LABEL_102;
              }

              for (i = *(result + 4 * v89); i != -2147483647; i = *&v37[4 * i])
              {
                v95 = i;
                if (a3[i] == v88)
                {
                  v242 = v88;
LABEL_115:
                  v97 = *&v39[4 * v95];
                  v98 = *&v37[4 * v95];
                  if (v97 == -2147483647)
                  {
                    v99 = result;
                  }

                  else
                  {
                    LODWORD(v89) = v97;
                    v99 = v37;
                  }

                  *(v99 + 4 * v89) = v98;
                  if (v98 != -2147483647)
                  {
                    *&v39[4 * v98] = v97;
                  }

LABEL_120:
                  v41[v85] = i;
                  v100 = *(v32 + 4 * i);
                  v237 = *(v34 + 4 * i);
                  v101 = v237 < 1 || v30 < v232;
                  if (v101)
                  {
                    v102 = v30;
                  }

                  else
                  {
                    if (v253 >= 1)
                    {
                      v103 = -2;
                      v104 = a5;
                      v105 = v253;
                      do
                      {
                        v106 = *v104;
                        if ((*v104 & 0x8000000000000000) == 0)
                        {
                          *v104 = *(v26 + 4 * v106);
                          *(v26 + 4 * v106) = v103;
                        }

                        --v103;
                        ++v104;
                        --v105;
                      }

                      while (v105);
                    }

                    if (v30 < 1)
                    {
                      v102 = 0;
                    }

                    else
                    {
                      v107 = 0;
                      v102 = 0;
                      do
                      {
                        v108 = v107 + 1;
                        v109 = -2 - *(v26 + 4 * v107);
                        if (v109 < 0 || (*(v26 + 4 * v102) = a5[v109], a5[v109] = v102, ++v102, *(v29 + 4 * v109) < 2))
                        {
                          ++v107;
                        }

                        else
                        {
                          v110 = 0;
                          do
                          {
                            v107 = v108 + 1;
                            *(v26 + 4 * v102) = *(v26 + 4 * v108);
                            ++v110;
                            ++v102;
                            ++v108;
                          }

                          while (v110 < *(v29 + 4 * v109) - 1);
                        }
                      }

                      while (v107 < v30);
                    }
                  }

                  __lena = v78;
                  v247 = v85;
                  *(v32 + 4 * i) = -*(v32 + 4 * i);
                  v111 = a5[i];
                  v112 = *(v34 + 4 * i);
                  if (v112)
                  {
                    v113 = v102;
                  }

                  else
                  {
                    v113 = a5[i];
                  }

                  v114 = 0;
                  if (v112 < 0)
                  {
                    v235 = v113;
                    v116 = v113;
                  }

                  else
                  {
                    v115 = 1;
                    v116 = v113;
                    do
                    {
                      if (v115 <= v112)
                      {
                        v119 = *(v26 + 4 * v111++);
                        v118 = a5[v119];
                        v117 = *(v29 + 4 * v119);
                      }

                      else
                      {
                        v117 = *(v29 + 4 * i) - v112;
                        v118 = v111;
                        LODWORD(v119) = i;
                      }

                      if (v117 >= 1)
                      {
                        v120 = (v26 + 4 * v118);
                        do
                        {
                          v122 = *v120++;
                          v121 = v122;
                          v123 = *(v32 + 4 * v122);
                          if (v123 >= 1)
                          {
                            *(v32 + 4 * v121) = -v123;
                            *(v26 + 4 * v116) = v121;
                            v124 = *&v39[4 * v121];
                            if (v124 == -2147483647)
                            {
                              v124 = *(v36 + 4 * v121);
                              v125 = v255;
                            }

                            else
                            {
                              v125 = v37;
                            }

                            v114 += v123;
                            ++v116;
                            v126 = *&v37[4 * v121];
                            v125[v124] = v126;
                            if (v126 != -2147483647)
                            {
                              *&v39[4 * v126] = *&v39[4 * v121];
                            }
                          }

                          --v117;
                        }

                        while (v117);
                      }

                      if (v119 != i)
                      {
                        a5[v119] = -1;
                        *(v35 + 4 * v119) = 0;
                      }

                      v112 = *(v34 + 4 * i);
                      v101 = v115++ <= v112;
                    }

                    while (v101);
                    if (v112)
                    {
                      v127 = v116;
                    }

                    else
                    {
                      v127 = v102;
                    }

                    v235 = v127;
                  }

                  *(v36 + 4 * i) = v114;
                  a5[i] = v113;
                  *(v29 + 4 * i) = v116 - v113;
                  *(v34 + 4 * i) = -2;
                  v128 = *(v29 + 4 * i);
                  v129 = v113;
                  if (v128 < 1)
                  {
                    v137 = v113 + v128;
                    goto LABEL_180;
                  }

                  while (2)
                  {
                    v130 = *(v26 + 4 * v129);
                    v131 = *(v34 + 4 * v130);
                    if (v131 < 1)
                    {
                      goto LABEL_177;
                    }

                    v132 = a5[v130];
                    v133 = v132;
                    while (2)
                    {
                      v134 = *(v26 + 4 * v133);
                      v135 = *(v35 + 4 * v134);
                      if (v135 >= v87)
                      {
                        v136 = *(v32 + 4 * v130) + v135;
LABEL_174:
                        *(v35 + 4 * v134) = v136;
                        v131 = *(v34 + 4 * v130);
                      }

                      else if (v135)
                      {
                        v136 = *(v36 + 4 * v134) + v87 + *(v32 + 4 * v130);
                        goto LABEL_174;
                      }

                      if (++v133 < v132 + v131)
                      {
                        continue;
                      }

                      break;
                    }

                    v128 = *(v29 + 4 * i);
LABEL_177:
                    ++v129;
                    v137 = v113 + v128;
                    if (v129 < v137)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_180:
                  v248 = v247 + 1;
                  __lenb = v100 + __lena;
                  v244 = -*(v32 + 4 * i);
                  v138 = v113;
                  v139 = v113;
                  if (v113 < v137)
                  {
                    do
                    {
                      v140 = *(v26 + 4 * v139);
                      v141 = a5[v140];
                      v142 = *(v34 + 4 * v140);
                      if (v142 < 1)
                      {
                        v144 = 0;
                        v143 = 0;
                        v150 = v141 + v142;
                        v146 = a5[v140];
                      }

                      else
                      {
                        v143 = 0;
                        v144 = 0;
                        v145 = a5[v140];
                        v146 = v145;
                        do
                        {
                          v147 = *(v26 + 4 * v145);
                          v148 = *(v35 + 4 * v147);
                          if (v148)
                          {
                            v149 = v148 - v87;
                            if (v149 < 1)
                            {
                              *(v35 + 4 * v147) = 0;
                            }

                            else
                            {
                              v144 += v149;
                              *(v26 + 4 * v146++) = v147;
                              v143 += v147;
                            }
                          }

                          ++v145;
                          v150 = v141 + *(v34 + 4 * v140);
                        }

                        while (v145 < v150);
                      }

                      *(v34 + 4 * v140) = v146 - v141 + 1;
                      v151 = *(v29 + 4 * v140);
                      for (j = v141 + v151; v150 < j; j = v141 + v151)
                      {
                        v153 = *(v26 + 4 * v150);
                        v154 = *(v32 + 4 * v153);
                        if (v154 >= 1)
                        {
                          *(v26 + 4 * v146) = v153;
                          v144 += v154;
                          ++v146;
                          v143 += v153;
                          LODWORD(v151) = *(v29 + 4 * v140);
                        }

                        ++v150;
                      }

                      if (v144 || a3 && a3[v140] != v242)
                      {
                        v155 = *(v36 + 4 * v140);
                        if (v155 >= v144)
                        {
                          v155 = v144;
                        }

                        *(v36 + 4 * v140) = v155;
                        v156 = (v26 + 4 * v141);
                        v157 = &v156[*(v34 + 4 * v140)];
                        *(v26 + 4 * v146) = *(v157 - 1);
                        *(v157 - 1) = *v156;
                        *v156 = i;
                        *(v29 + 4 * v140) = v146 - v141 + 1;
                        if (v143 >= 0)
                        {
                          v158 = v143;
                        }

                        else
                        {
                          v158 = -v143;
                        }

                        v159 = v158 % v253;
                        *&v37[4 * v140] = *&v254[4 * v159];
                        *&v254[4 * v159] = v140;
                        *&v39[4 * v140] = v159;
                      }

                      else
                      {
                        a4[v248] = v140;
                        a5[v140] = -1;
                        v160 = *(v32 + 4 * v140);
                        v114 += v160;
                        v244 -= v160;
                        *(v32 + 4 * v140) = 0;
                        __lenb -= v160;
                        *(v34 + 4 * v140) = -1;
                        v138 = a5[i];
                        ++v248;
                      }

                      ++v139;
                    }

                    while (v139 < v138 + *(v29 + 4 * i));
                  }

                  *(v36 + 4 * i) = v114;
                  v161 = v238;
                  if (v238 <= v114)
                  {
                    v161 = v114;
                  }

                  v238 = v161;
                  v87 += v161;
                  v162 = v113;
                  v163 = v113;
                  if (v116 > v113)
                  {
                    do
                    {
                      v164 = *(v26 + 4 * v162);
                      if ((*(v32 + 4 * v164) & 0x80000000) != 0)
                      {
                        v165 = *&v39[4 * v164];
                        v166 = *&v254[4 * v165];
                        *&v254[4 * v165] = -2147483647;
                        while (v166 != -2147483647)
                        {
                          v167 = *&v37[4 * v166];
                          if (v167 == -2147483647)
                          {
                            break;
                          }

                          if (*(v29 + 4 * v166) >= 2)
                          {
                            v168 = a5[v166];
                            v169 = v168 + 1;
                            do
                            {
                              *(v35 + 4 * *(v26 + 4 * v169++)) = v87;
                            }

                            while (v169 < v168 + *(v29 + 4 * v166));
                            v167 = *&v37[4 * v166];
                            if (v167 == -2147483647)
                            {
                              ++v87;
                              break;
                            }
                          }

                          v170 = v166;
                          do
                          {
                            v171 = *(v29 + 4 * v167);
                            if (v171 != *(v29 + 4 * v166))
                            {
                              goto LABEL_228;
                            }

                            v172 = *(v34 + 4 * v167);
                            v173 = *(v34 + 4 * v166);
                            if (a3 && v172 == v173)
                            {
                              v172 = a3[v166];
                              v173 = a3[v167];
                            }

                            if (v172 == v173)
                            {
                              v174 = a5[v167];
                              v175 = v174 + v171;
                              v176 = v174 + 1;
                              while (v176 < v175)
                              {
                                v177 = *(v35 + 4 * *(v26 + 4 * v176++));
                                if (v177 != v87)
                                {
                                  goto LABEL_228;
                                }
                              }

                              a5[v167] = -2 - v166;
                              *(v32 + 4 * v166) += *(v32 + 4 * v167);
                              *(v32 + 4 * v167) = 0;
                              *(v34 + 4 * v167) = -1;
                              v178 = *&v37[4 * v167];
                              *&v37[4 * v170] = v178;
                              v167 = v170;
                            }

                            else
                            {
LABEL_228:
                              v178 = *&v37[4 * v167];
                            }

                            v170 = v167;
                            v167 = v178;
                          }

                          while (v178 != -2147483647);
                          v166 = *&v37[4 * v166];
                          ++v87;
                        }
                      }

                      ++v162;
                    }

                    while (v162 != v116);
                    v179 = v116 - v113;
                    if (v116 <= v113)
                    {
                      v163 = v113;
                    }

                    else
                    {
                      v180 = (v26 + 4 * v113);
                      v163 = v113;
                      do
                      {
                        v182 = *v180++;
                        v181 = v182;
                        v183 = *(v32 + 4 * v182);
                        if (v183 < 0)
                        {
                          *(v32 + 4 * v181) = -v183;
                          v184 = *(v36 + 4 * v181) + v114;
                          if (v184 >= v233 - __lenb)
                          {
                            v184 = v233 - __lenb;
                          }

                          v185 = v184 + v183;
                          *(v36 + 4 * v181) = v185;
                          v186 = *(v255 + 4 * v185);
                          if (v186 != -2147483647)
                          {
                            *&v39[4 * v186] = v181;
                          }

                          *&v39[4 * v181] = -2147483647;
                          *&v37[4 * v181] = *(v255 + 4 * v185);
                          *(v255 + 4 * v185) = v181;
                          *(v26 + 4 * v163++) = v181;
                        }

                        --v179;
                      }

                      while (v179);
                    }
                  }

                  *(v32 + 4 * i) = v244;
                  *(v29 + 4 * i) = v163 - v113;
                  if (v163 == v113)
                  {
                    a5[i] = -1;
                    *(v35 + 4 * i) = 0;
                  }

                  if (v237)
                  {
                    v30 = v163;
                  }

                  else
                  {
                    v30 = v235;
                  }

                  v45 = v233;
                  v78 = __lenb;
                  v41 = a4;
                  result = v255;
                  v85 = v248;
                  v86 = v231;
                  v88 = v242;
                  if (v233 <= __lenb)
                  {
LABEL_252:
                    v187 = v253;
                    if (v229)
                    {
                      v188 = v253;
                      v189 = a5;
                      do
                      {
                        *v189 = -2 - *v189;
                        ++v189;
                        --v188;
                      }

                      while (v188);
                    }

                    v190 = v227;
                    if (a3)
                    {
                      if (v85 < 1)
                      {
                        v85 = 0;
                      }

                      else
                      {
                        v191 = 0;
                        v192 = 0;
                        v193 = v85;
                        do
                        {
                          v194 = v41[v191];
                          for (k = a3[v194]; v190 < k; k = a3[v194])
                          {
                            v196 = v228 - v234;
                            v197 = &v41[v234];
                            if (v234 < v253)
                            {
                              do
                              {
                                v199 = *v197++;
                                v198 = v199;
                                if (a3[v199] == v190)
                                {
                                  *(v36 + 4 * v192++) = v198;
                                }

                                --v196;
                              }

                              while (v196);
                              LODWORD(v194) = v41[v191];
                            }

                            ++v190;
                          }

                          v85 = v192 + 1;
                          *(v36 + 4 * v192) = v194;
                          ++v191;
                          ++v192;
                        }

                        while (v191 != v193);
                      }

                      if (v190 <= v230)
                      {
                        do
                        {
                          v208 = v228 - v234;
                          v209 = &v41[v234];
                          if (v234 < v253)
                          {
                            do
                            {
                              v211 = *v209++;
                              v210 = v211;
                              if (a3[v211] == v190)
                              {
                                *(v36 + 4 * v85++) = v210;
                              }

                              --v208;
                            }

                            while (v208);
                          }
                        }

                        while (v190++ != v230);
                      }
                    }

                    else
                    {
                      if (v85 >= 1)
                      {
                        v200 = v85;
                        v201 = v41;
                        v202 = v36;
                        do
                        {
                          v203 = *v201++;
                          *v202++ = v203;
                          --v200;
                        }

                        while (v200);
                      }

                      if (v234 < v253)
                      {
                        v204 = (v36 + 4 * v85);
                        v205 = &v41[v234];
                        v85 = v85 + v253 - v234;
                        v206 = v228 - v234;
                        do
                        {
                          v207 = *v205++;
                          *v204++ = v207;
                          --v206;
                        }

                        while (v206);
                      }
                    }

                    v213 = v85;
                    if (v85 >= 1)
                    {
                      v214 = v85;
                      v215 = v36;
                      do
                      {
                        v216 = *v215++;
                        a5[v216] = -1;
                        --v214;
                      }

                      while (v214);
                    }

                    if (v253 >= 1)
                    {
                      v217 = v85;
                      memset_pattern16(result, &unk_23681FBC0, v226);
                      v85 = v217;
                      result = v255;
                      v187 = v253;
                      v41 = a4;
                    }

                    if (v229)
                    {
                      v218 = 0;
                      do
                      {
                        if (*(v32 + 4 * v218) <= 0)
                        {
                          v219 = a5[v218];
                          if (v219 != -1)
                          {
                            do
                            {
                              v220 = v219;
                              v219 = a5[v219];
                            }

                            while (v219 != -1);
                            *&v37[4 * v218] = *(result + 4 * v220);
                            *(result + 4 * v220) = v218;
                          }
                        }

                        ++v218;
                      }

                      while (v218 != v187);
                    }

                    if (v85 >= 1)
                    {
                      v221 = 0;
                      v222 = 0;
                      do
                      {
                        v223 = *(v36 + 4 * v221);
                        v41[v222] = v223;
                        v224 = *(result + 4 * v223);
                        ++v222;
                        if (v224 != -2147483647)
                        {
                          v225 = &v41[v222];
                          do
                          {
                            *v225++ = v224;
                            v224 = *&v37[4 * v224];
                            ++v222;
                          }

                          while (v224 != -2147483647);
                        }

                        ++v221;
                      }

                      while (v221 != v213);
                    }

                    return result;
                  }

                  goto LABEL_89;
                }
              }

              LODWORD(v89) = v89 + 1;
            }

            v91 = (v86 + 4 * v89);
            v92 = v240 - v89;
            while (v92)
            {
              v93 = *v91++;
              LODWORD(v89) = v89 + 1;
              --v92;
              if (v93 != -2147483647)
              {
                goto LABEL_96;
              }
            }

LABEL_102:
            ++v88;
            if (v90 >= v230)
            {
              v242 = v88;
LABEL_113:
              i = -1;
              goto LABEL_120;
            }
          }
        }

        v77 = 0;
        v78 = 0;
        v234 = v27;
        while (1)
        {
          v79 = *(v36 + 4 * v77);
          if (v79)
          {
            if (v79 <= v76)
            {
              v84 = *(result + 4 * v79);
              if (v84 != -2147483647)
              {
                *&v39[4 * v84] = v77;
              }

              *&v39[4 * v77] = -2147483647;
              *&v37[4 * v77] = *(result + 4 * v79);
              *(result + 4 * v79) = v77;
              goto LABEL_84;
            }

            v80 = *(v32 + 4 * v77);
            *(v32 + 4 * v77) = 0;
            *(v34 + 4 * v77) = -1;
            a5[v77] = -1;
            v78 += v80;
            *(v32 + 4 * v44) += v80;
            v81 = v234;
          }

          else
          {
            *(v34 + 4 * v77) = -2;
            v82 = *(v32 + 4 * v77);
            a5[v77] = -1;
            *(v35 + 4 * v77) = 0;
            v78 += v82;
            v81 = v234;
          }

          v83 = v81 - 1;
          v41[v83] = v77;
          v234 = v83;
LABEL_84:
          if (v27 == ++v77)
          {
            goto LABEL_87;
          }
        }
      }
    }

    else
    {
      memset_pattern16(v40, &unk_23681FBC0, 4 * v28);
      LODWORD(v31) = v239;
      v41 = a4;
      v42 = v243;
      v27 = v253;
    }

    v43 = 0;
    do
    {
      a5[v43] = v42[v43];
      ++v43;
    }

    while (v31 != v43);
    result = v255;
    v44 = v228;
    v45 = v233;
    v47 = a1;
    v46 = a2;
    if (v27 < 1)
    {
      v229 = 0;
      v53 = 0;
    }

    else
    {
      v48 = a5 + 1;
      v49 = *a5;
      v50 = v27;
      v51 = v29;
      do
      {
        v52 = *v48++;
        *v51++ = v52 - v49;
        LODWORD(v49) = v52;
        --v50;
      }

      while (v50);
      v53 = 0;
      v229 = 1;
    }

    goto LABEL_48;
  }

  return result;
}

uint64_t sub_236793B94(uint64_t a1, char *__b, float *a3, float *a4, uint64_t *a5, uint64_t a6)
{
  v6 = a4;
  v7 = a3;
  v8 = *(a1 + 28);
  v9 = (*a1 * v8);
  v10 = (*(a1 + 4) * v8);
  v11 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v11;
  v15 = *(a1 + 32);
  v12 = sub_236793C50(0, v14, __b, v9, a3, v9, a4, v10, a5, a6);
  if (v9)
  {
    do
    {
      *v7 = expf(*v7);
      ++v7;
      --v9;
    }

    while (v9);
  }

  if (v10)
  {
    do
    {
      *v6 = expf(*v6);
      ++v6;
      --v10;
    }

    while (v10);
  }

  return v12;
}

uint64_t sub_236793C50(int a1, signed int *a2, char *__b, uint64_t a4, float *a5, unint64_t a6, float *a7, unint64_t a8, uint64_t *a9, uint64_t a10)
{
  v12 = __b;
  v13 = *(a2 + 28);
  v14 = a2[1];
  v15 = *a2 * v13;
  v16 = v14 * v13;
  v269 = *(a2 + 1);
  v283 = (v13 * v13);
  v17 = (*(v269 + 8 * v14) * v283) << a1;
  v259 = v16 + 1;
  v18 = a9;
  v19 = 8 * (v16 + 1);
  v20 = v17;
  v21 = 4 * v17 + 7;
  v291 = a9 + v19 + (v21 & 0xFFFFFFFFFFFFFFF8);
  v294 = a9 + v19;
  v22 = (20 * v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v285 = &v291[v21 & 0xFFFFFFFFFFFFFFF8];
  v244 = 4 * v16;
  v243 = v244 + 7;
  v23 = (v244 + 7) & 0xFFFFFFFFFFFFFFF8;
  v253 = v22;
  v254 = (4 * v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v261 = v15;
  v258 = v15 & 0x3FFFFFFFFFFFFFFFLL;
  v24 = v16;
  v257 = v16 & 0x3FFFFFFFFFFFFFFFLL;
  v265 = &v285[v22 + v254];
  v266 = &v285[v22];
  v25 = v265 + v23;
  v255 = v23;
  v268 = v265 + v23 + v23;
  v26 = &a9[v16];
  v272 = a5;
  v275 = v16;
  v260 = v19;
  v256 = v21 & 0xFFFFFFFFFFFFFFF8;
  if (v16 < 1)
  {
    *v26 = 0;
    if ((a1 & 1) == 0)
    {
      goto LABEL_66;
    }

    v251 = a4;
    v252 = v17 & 0x3FFFFFFFFFFFFFFFLL;
    v55 = 0;
  }

  else
  {
    v247 = &a9[v16];
    v248 = 4 * v17 + 7;
    v251 = a4;
    v252 = v17 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = 0;
    v28 = 0;
    v267 = a9 + (v21 & 0xFFFFFFFFFFFFFFF8) + v19;
    v29 = 0;
    do
    {
      v277 = v28;
      v281 = v27;
      v18[v27] = v28;
      v30 = v27 / v13;
      v31 = (v269 + 8 * (v27 / v13));
      v33 = *v31;
      v32 = v31[1];
      if (*v31 < v32)
      {
        v34 = *(a2 + 2);
        v29 = v28;
        do
        {
          v35 = *(v34 + 4 * v33);
          if ((v35 & 0x80000000) == 0)
          {
            v36 = a1;
            if (v35 >= v30)
            {
              v36 = 0;
            }

            if ((v36 & 1) == 0 && v35 < *a2)
            {
              if (a1)
              {
                v37 = (v281 - v30 * v13);
              }

              else
              {
                v37 = 0;
              }

              v38 = *(a2 + 4) + 8 * v33 * v283 + 8 * ((v281 - v30 * v13) * v13);
              v39 = v37 + v35 * v13;
              do
              {
                v40 = (v38 + 8 * v37);
                v41 = *v40;
                v42 = v40[1];
                if (*v40 != 0.0 || v42 != 0.0)
                {
                  *&v294[4 * v29] = v39;
                  *&v291[4 * v29++] = hypotf(v41, v42);
                }

                ++v37;
                ++v39;
              }

              while (v37 < v13);
            }
          }

          ++v33;
        }

        while (v33 != v32);
      }

      v43 = v29 - v277;
      if (v29 > v277)
      {
        v44 = &v267[4 * v277];
        do
        {
          *v44 = logf(*v44);
          ++v44;
          --v43;
        }

        while (v43);
      }

      v27 = v281 + 1;
      v28 = v29;
      v24 = v275;
      v18 = a9;
    }

    while (v281 + 1 != v275);
    v21 = v248;
    *v247 = v29;
    a5 = v272;
    v19 = v260;
    v12 = __b;
    if ((a1 & 1) == 0)
    {
      goto LABEL_50;
    }

    v45 = v29 + 1;
    bzero(v285, 4 * v275);
    v46 = 0;
    v47 = 0;
    v48 = *a9;
    do
    {
      v49 = v46 + 1;
      v50 = a9[v46 + 1];
      *&v285[4 * v46] += v50 - v48;
      v51 = v50 - v48;
      if (v50 > v48)
      {
        v52 = (a9 + 4 * v48 + v260);
        do
        {
          v54 = *v52++;
          v53 = v54;
          if (v46 == v54)
          {
            ++v47;
          }

          else
          {
            ++*&v285[4 * v53];
          }

          --v51;
        }

        while (v51);
      }

      v48 = v50;
      ++v46;
    }

    while (v49 != v275);
    v55 = 2 * v29 - v47;
    v56 = v55 + 1;
    v57 = a9 + v260 - 8;
    v58 = v275;
    v26 = v247;
    do
    {
      v59 = v58 - 1;
      v60 = a9[v58 - 1] + 1;
      v61 = v56;
      if (v45 > v60)
      {
        v62 = 0;
        do
        {
          *&v57[4 * v56 + 4 * v62 + v256] = *&v57[4 * v45 + 4 * v62 + v256];
          *&v57[4 * v56 + 4 * v62] = *&v57[4 * v45 + 4 * v62];
          --v62;
        }

        while (v45 + v62 > v60);
        v61 = v56 + v62;
      }

      a9[v59] = v61 - 1;
      v56 -= *&v285[4 * v59];
      *&v285[4 * v59] = v45 - v60;
      v45 = v60;
      v131 = v58-- <= 1;
    }

    while (!v131);
    v63 = v275;
    v12 = __b;
    do
    {
      v64 = v63--;
      v65 = *&v285[4 * v63];
      if (v65 >= 1)
      {
        v66 = a9[v63];
        v67 = v66 + v65;
        do
        {
          v68 = *&v294[4 * v66];
          if (v63 != v68)
          {
            v69 = a9[v68] - 1;
            a9[v68] = v69;
            *&v291[4 * v69] = *(a9 + 4 * v66 + v256 + v260);
            *&v294[4 * v69] = v63;
          }

          ++v66;
        }

        while (v66 < v67);
      }
    }

    while (v64 >= 2);
  }

  *v26 = v55;
LABEL_50:
  a4 = v251;
  v20 = v252;
  if (v24 >= 1)
  {
    v70 = 0;
    v71 = *v18;
    do
    {
      v72 = v70 + 1;
      v73 = v18[v70 + 1];
      v74 = v73 - v71;
      if (v73 - v71 == -1)
      {
        v75 = v252 - v71;
      }

      else
      {
        v75 = v73 - v71;
      }

      if (v75)
      {
        v76 = &v291[4 * v71];
        v77 = *v76;
        v78 = 4 * v75;
        do
        {
          v79 = *v76++;
          v80 = v79;
          if (v77 < v79)
          {
            v77 = v80;
          }

          v78 -= 4;
        }

        while (v78);
      }

      else
      {
        v77 = NAN;
      }

      *&v25[4 * v70] = v77;
      if (v73 > v71)
      {
        v81 = (v18 + 4 * v71 + v256 + v19);
        do
        {
          *v81 = v77 - *v81;
          ++v81;
          --v74;
        }

        while (v74);
      }

      v71 = v73;
      ++v70;
    }

    while (v72 != v24);
  }

LABEL_66:
  v82 = v20;
  v83 = sub_2366FE790(v261[0], v24, v18, v259, v294, v20, v291, v20, v12, a4, v266, v258, v265, v257, v268);
  v84 = v83;
  if (!a1 || v83 == v24)
  {
    v150 = v21 >> 3;
    v151 = *v261;
    if (v261[0] >= 1)
    {
      v152 = (&v18[2 * v150] + v19 + v253);
      v153 = a5;
      do
      {
        v154 = *v152++;
        *v153++ = v154;
        --v151;
      }

      while (v151);
    }

    v155 = a7;
    if (v24 >= 1)
    {
      v156 = (&v18[2 * v150] + v254 + v19 + v253);
      v157 = a7;
      do
      {
        v158 = *(v156 + v255);
        v159 = *v156++;
        *v157++ = v159 - v158;
        --v24;
      }

      while (v24);
    }

    v160 = *a2;
    v161 = *(a2 + 28);
    v296 = *a2;
    v162 = *a2 * v161;
    v163 = a2[1] * v161;
    if (v162 == v163)
    {
      v164 = a6;
      if (v162 != -1)
      {
        v164 = v160 * *(a2 + 28);
      }

      v165 = 0.0;
      v166 = 0.0;
      if (v164)
      {
        v167 = 4 * v164;
        v168 = a5;
        do
        {
          v169 = *v168++;
          v166 = v166 + v169;
          v167 -= 4;
        }

        while (v167);
      }

      v170 = a8;
      if (v162 != -1)
      {
        v170 = v160 * *(a2 + 28);
      }

      if (v170)
      {
        v171 = 4 * v170;
        v165 = 0.0;
        v172 = a7;
        do
        {
          v173 = *v172++;
          v165 = v165 + v173;
          v171 -= 4;
        }

        while (v171);
      }

      if (v162 >= 1)
      {
        v174 = ((v166 / v162) - (v165 / v162)) * 0.5;
        v175 = v162;
        v176 = v162;
        do
        {
          *a5 = *a5 - v174;
          ++a5;
          --v176;
        }

        while (v176);
        do
        {
          *v155 = v174 + *v155;
          ++v155;
          --v175;
        }

        while (v175);
      }
    }

    else
    {
      v271 = v83;
      v177 = *(a2 + 2);
      v282 = a2[1] * v161;
      v284 = *(a2 + 1);
      v288 = v161 * v161;
      v290 = *(a2 + 4);
      v293 = v161;
      if (v162 >= v163)
      {
        if (v163 >= v162)
        {
          return v271;
        }

        v280 = v160 * v161;
        if (v162 <= 0)
        {
          v195 = ((0.0 / v83) - (0.0 / v83)) * 0.5;
        }

        else
        {
          v188 = 0.0;
          v189 = v12;
          v190 = a5;
          v191 = v162;
          v192 = 0.0;
          do
          {
            v194 = *v189;
            v189 += 4;
            v193 = v194;
            if (v194 != -1)
            {
              v192 = v192 + *v190;
              v188 = v188 + a7[v193];
            }

            ++v190;
            --v191;
          }

          while (v191);
          v195 = ((v192 / v83) - (v188 / v83)) * 0.5;
          v196 = v162;
          do
          {
            *a5 = *a5 - v195;
            ++a5;
            --v196;
          }

          while (v196);
        }

        v250 = v21;
        v264 = v12;
        v276 = v162;
        if (v163 <= 0)
        {
          bzero(v268, 4 * v162);
        }

        else
        {
          v223 = a7;
          v224 = v163;
          do
          {
            *v223 = v195 + *v223;
            ++v223;
            --v224;
          }

          while (v224);
          bzero(v268, 4 * v162);
          v225 = 0;
          v226 = v161 <= 1 ? 1 : v161;
          v286 = v226;
          do
          {
            v227 = v225 / v161;
            v228 = (v284 + 8 * (v225 / v161));
            v229 = *v228;
            v230 = v228[1];
            if (*v228 < v230)
            {
              do
              {
                v231 = *(v177 + 4 * v229);
                if ((v231 & 0x80000000) == 0 && v231 < v296)
                {
                  v232 = 0;
                  v233 = v286;
                  v235 = &v268[4 * v231 * v293];
                  do
                  {
                    v234 = v290 + 8 * v229 * v288 + 8 * (v225 - v227 * v293) * v293;
                    v236 = hypotf(*(v234 + 8 * v232), *(v234 + 8 * v232 + 4));
                    v237 = v236 * expf(a7[v225]);
                    if (*v235 >= v237)
                    {
                      v237 = *v235;
                    }

                    *v235++ = v237;
                    ++v232;
                    --v233;
                  }

                  while (v233);
                }

                ++v229;
              }

              while (v229 != v230);
            }

            ++v225;
            v161 = v293;
          }

          while (v225 != v282);
        }

        if (v280 < 1)
        {
          return v271;
        }

        else
        {
          v238 = v272;
          v239 = (&a9[2 * (v243 >> 3)] + v253 + v254 + v260 + ((2 * v250) & 0xFFFFFFFFFFFFFFF0));
          v84 = v271;
          v240 = v276;
          do
          {
            v241 = *v264;
            v264 += 4;
            if (v241 == -1)
            {
              v242 = 0.0;
              if (*v239 != 0.0)
              {
                v242 = logf(1.0 / *v239);
              }

              *v238 = v242;
            }

            ++v238;
            ++v239;
            --v240;
          }

          while (v240);
        }
      }

      else
      {
        v263 = v12;
        v249 = v21;
        v279 = v160 * v161;
        if (v162 <= 0)
        {
          v186 = ((0.0 / v83) - (0.0 / v83)) * 0.5;
        }

        else
        {
          v178 = v162;
          v179 = 0.0;
          v180 = v12;
          v181 = a5;
          v182 = v162;
          v183 = 0.0;
          do
          {
            v185 = *v180;
            v180 += 4;
            v184 = v185;
            if (v185 != -1)
            {
              v179 = v179 + *v181;
              v183 = v183 + a7[v184];
            }

            ++v181;
            --v182;
          }

          while (v182);
          v186 = ((v179 / v83) - (v183 / v83)) * 0.5;
          do
          {
            *a5 = *a5 - v186;
            ++a5;
            --v178;
          }

          while (v178);
        }

        if (v163 >= 1)
        {
          v197 = a7;
          v198 = v163;
          do
          {
            *v197 = v186 + *v197;
            ++v197;
            --v198;
          }

          while (v198);
          v199 = 0;
          if (v161 <= 1)
          {
            v200 = 1;
          }

          else
          {
            v200 = v161;
          }

          do
          {
            v201 = v199 / v161;
            v202 = (v284 + 8 * (v199 / v161));
            v204 = *v202;
            v203 = v202[1];
            v205 = 0.0;
            if (*v202 < v203)
            {
              v206 = 0.0;
              v207 = (v199 - v201 * v293) * v293;
              do
              {
                v208 = *(v177 + 4 * v204);
                if ((v208 & 0x80000000) == 0 && v208 < v296)
                {
                  v209 = 0;
                  v211 = &v272[v208 * v293];
                  v212 = v200;
                  do
                  {
                    v210 = v290 + 8 * v204 * v288 + 8 * v207;
                    v213 = hypotf(*(v210 + 8 * v209), *(v210 + 8 * v209 + 4));
                    v214 = *v211++;
                    v215 = v213 * expf(v214);
                    if (v206 < v215)
                    {
                      v206 = v215;
                    }

                    ++v209;
                    --v212;
                  }

                  while (v212);
                }

                ++v204;
              }

              while (v204 != v203);
              v205 = 0.0;
              v163 = v282;
              if (v206 != 0.0)
              {
                v205 = logf(1.0 / v206);
              }
            }

            *&v268[4 * v199++] = v205;
            v161 = v293;
          }

          while (v199 != v163);
        }

        v216 = a7;
        v217 = v263;
        v84 = v271;
        if (v279 >= 1)
        {
          v218 = v279;
          do
          {
            v220 = *v217;
            v217 += 4;
            v219 = v220;
            if (v220 != -1)
            {
              *&v268[4 * v219] = a7[v219];
            }

            --v218;
          }

          while (v218);
        }

        if (v163 >= 1)
        {
          v221 = (&a9[2 * (v243 >> 3)] + v253 + v254 + v260 + ((2 * v249) & 0xFFFFFFFFFFFFFFF0));
          do
          {
            v222 = *v221++;
            *v216++ = v222;
            --v163;
          }

          while (v163);
        }
      }
    }
  }

  else
  {
    v85 = 2 * v24;
    if (v24 == -1)
    {
      v86 = 0x3FFFFFFFFFFFFFFDLL;
    }

    else
    {
      v86 = v24;
    }

    v87 = &v285[4 * v85];
    if (v261[0] >= 1)
    {
      v88 = 0;
      v89 = 0;
      v90 = v83 + 1;
      v91 = &v18[2 * (v21 >> 3)] + v19;
      do
      {
        if (*&v12[4 * v88] > -2)
        {
          *&v91[4 * v88] = v89;
          *&v285[4 * v24 + 4 * v89++] = v88;
        }

        else
        {
          *&v91[4 * v88] = ~v90++;
        }

        ++v88;
      }

      while (*v261 != v88);
    }

    *v18 = 0;
    if (v24 <= 0)
    {
      return sub_2366FE790(0, 0, v18, v259, v294, v82, v291, v82, v87, v86, v266, v258, v265, v257, v268);
    }

    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = v85;
    do
    {
      v97 = v92 + 1;
      v98 = v18[v92 + 1];
      if (*&v12[4 * v92] >= -1)
      {
        v99 = v98 - v95;
        if (v98 > v95)
        {
          v100 = v18 + 4 * v95 + v19;
          v101 = v100;
          do
          {
            v103 = *v101++;
            v102 = v103;
            if (*&v12[4 * v103] >= -1)
            {
              *&v294[4 * v93] = *&v285[4 * v102];
              *&v291[4 * v93++] = *(v100 + v256);
            }

            v100 = v101;
            --v99;
          }

          while (v99);
        }

        v18[++v94] = v93;
      }

      v92 = v97;
      v95 = v98;
    }

    while (v97 != v275);
    v104 = v12;
    v105 = sub_2366FE790(v94, v94, v18, v259, v294, v82, v291, v82, v87, v86, v266, v258, v265, v257, v268);
    v106 = v18;
    v107 = v260 + 16 * (v21 >> 3);
    v108 = (v106 + v107);
    v109 = v275;
    v110 = a5;
    v111 = (v106 + v107);
    do
    {
      v113 = *v111++;
      v112 = v113;
      if (v113 >= -1)
      {
        v114 = ((*&v266[4 * v112] + v265[v112]) - *(v108 + v253 + v254 + v255)) * 0.5;
      }

      else
      {
        v114 = -INFINITY;
      }

      *v110++ = v114;
      v108 = v111;
      --v109;
    }

    while (v109);
    memset_pattern16(v12, &unk_23681FAD0, 4 * v275);
    if (v94 > 0)
    {
      v115 = v94;
      v116 = (a9 + 4 * v96 + v107);
      v117 = (a9 + v244 + v107);
      do
      {
        v119 = *v116++;
        v118 = v119;
        v120 = *v117++;
        *&v12[4 * v120] = v118;
        --v115;
      }

      while (v115);
    }

    v121 = (a9 + v107);
    v122 = v275;
    do
    {
      if (*v104 == -2)
      {
        *v104 = *v121;
      }

      v104 += 4;
      ++v121;
      --v122;
    }

    while (v122);
    v270 = v105;
    v273 = v253 + 16 * (v21 >> 3);
    v123 = (a9 + v255 + v254 + v260 + v273);
    v124 = v275;
    v125 = a5;
    do
    {
      v126 = *v125++;
      *v123++ = v126;
      --v124;
    }

    while (v124);
    v127 = 0;
    v278 = *(a2 + 1);
    do
    {
      v128 = (v278 + 8 * (v127 / v13));
      v129 = *v128;
      v295 = v128[1];
      if (*v128 < v295)
      {
        v292 = *(a2 + 2);
        do
        {
          v130 = *(v292 + 4 * v129);
          if ((v130 & 0x80000000) == 0)
          {
            v131 = v130 >= (v127 / v13) && v130 < *a2;
            if (v131)
            {
              v132 = v127 % v13;
              v133 = (v130 * v13);
              v134 = *(a2 + 4) + 8 * v129 * v283 + 8 * v127 % v13 * v13;
              do
              {
                v135 = v132 + v133;
                v136 = (v134 + 8 * v132);
                v137 = *v136;
                v138 = v136[1];
                if (*&v25[4 * v127] == -INFINITY && *&v25[4 * v135] != -INFINITY)
                {
                  v139 = hypotf(*v136, v136[1]);
                  v140 = logf(v139) + a5[v135];
                  if (a5[v127] >= v140)
                  {
                    v140 = a5[v127];
                  }

                  a5[v127] = v140;
                }

                if (*&v25[4 * v135] == -INFINITY && *&v25[4 * v127] != -INFINITY)
                {
                  v141 = hypotf(v137, v138);
                  v142 = logf(v141) + a5[v127];
                  if (a5[v135] >= v142)
                  {
                    v142 = a5[v135];
                  }

                  a5[v135] = v142;
                }

                ++v132;
              }

              while (v132 < v13);
            }
          }

          ++v129;
        }

        while (v129 != v295);
      }

      ++v127;
      v143 = v275;
    }

    while (v127 != v275);
    v144 = (a9 + v255 + v254 + v260 + v273);
    v145 = v275;
    v146 = a5;
    v147 = a7;
    v84 = v270;
    do
    {
      if (*v144 == -INFINITY)
      {
        if (*v146 == -INFINITY)
        {
          v148 = 0.0;
        }

        else
        {
          v148 = -*v146;
        }

        *v146 = v148;
      }

      ++v144;
      ++v146;
      --v145;
    }

    while (v145);
    do
    {
      v149 = *a5++;
      *v147++ = v149;
      --v143;
    }

    while (v143);
  }

  return v84;
}

uint64_t sub_236794CB4(uint64_t a1, char *__b, float *a3, float *a4, uint64_t a5)
{
  v7 = *(a1 + 4) * *(a1 + 28);
  v8 = (4 * v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v9;
  v13 = *(a1 + 32);
  v10 = sub_236793C50(1, v12, __b, v7, a4, v7 & 0x3FFFFFFFFFFFFFFFLL, (a4 + v8), v7 & 0x3FFFFFFFFFFFFFFFLL, (a4 + v8 + v8), a5 - 2 * v8);
  if (v7)
  {
    do
    {
      *a3++ = expf((*a4 + *(a4 + v8)) * 0.5);
      ++a4;
      --v7;
    }

    while (v7);
  }

  return v10;
}

void sub_236794D84(int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 28);
  v6 = (v5 * v5);
  v8 = *a1;
  v7 = a1[1];
  *a3 = v7;
  *(a3 + 4) = v8;
  v9 = a1[6];
  v10 = (&a2[v8 + 1] + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a3 + 24) = 0;
  *(a3 + 32) = v10;
  *(a3 + 24) = v9;
  *(a3 + 28) = v5;
  v11 = *(a1 + 1);
  v12 = v10 + 8 * v6 * v11[v7];
  *(a3 + 8) = a2;
  *(a3 + 16) = v12;
  *(a3 + 24) = v9 ^ 2;
  v13 = a2 + 2;
  if (v8 >= 1)
  {
    bzero(v13, 8 * v8);
  }

  if (v7 >= 1)
  {
    v14 = 0;
    v15 = *v11;
    do
    {
      v16 = v11[++v14];
      if (v15 < v16)
      {
        v17 = *(a1 + 2);
        do
        {
          v18 = *(v17 + 4 * v15);
          if ((v18 & 0x80000000) == 0 && v18 < v8)
          {
            ++v13[v18];
            v16 = v11[v14];
          }

          ++v15;
        }

        while (v15 < v16);
      }

      v15 = v16;
    }

    while (v14 != v7);
  }

  a2[1] = 0;
  v19 = a2 + 1;
  *a2 = 0;
  if (v8 > 1)
  {
    v20 = 0;
    v21 = v8 - 1;
    v22 = a2 + 2;
    do
    {
      v20 += *v22;
      *v22++ = v20;
      --v21;
    }

    while (v21);
  }

  if (v7 >= 1)
  {
    v23 = 0;
    v24 = *v11;
    v25 = 8 * v5;
    v26 = 8 * v6;
    do
    {
      v27 = v23++;
      v28 = v11[v23];
      if (v24 < v28)
      {
        v29 = *(a1 + 2);
        v30 = v26 * v24;
        do
        {
          v31 = *(v29 + 4 * v24);
          if ((v31 & 0x80000000) == 0 && v31 < *a1)
          {
            v32 = v19[v31];
            v19[v31] = v32 + 1;
            *(v12 + 4 * v32) = v27;
            if (v5)
            {
              v33 = 0;
              v34 = (v10 + 8 * v32 * v6);
              v35 = (*(a1 + 4) + v30);
              do
              {
                v36 = v5;
                v37 = v35;
                v38 = v34;
                do
                {
                  *v38++ = *v37;
                  v37 = (v37 + v25);
                  --v36;
                }

                while (v36);
                ++v33;
                v34 = (v34 + v25);
                ++v35;
              }

              while (v33 != v5);
            }
          }

          ++v24;
          v28 = v11[v23];
          v30 += v26;
        }

        while (v24 < v28);
        LODWORD(v7) = a1[1];
      }

      v24 = v28;
    }

    while (v23 < v7);
  }
}

SparseOpaqueSymbolicFactorization *__cdecl _SparseSymbolicFactorQR(SparseOpaqueSymbolicFactorization *__return_ptr retstr, SparseFactorization_t factorType, const SparseMatrixStructure *Matrix, const SparseSymbolicFactorOptions *options)
{
  v99 = *MEMORY[0x277D85DE8];
  *&retstr->columnCount = 0;
  retstr->factorization = 0;
  rowCount = Matrix->rowCount;
  columnCount = Matrix->columnCount;
  retstr->status = SparseInternalError;
  retstr->rowCount = rowCount;
  v9 = columnCount;
  retstr->columnCount = columnCount;
  attributes = Matrix->attributes;
  retstr->attributes = (*&Matrix->attributes & 0xD);
  v11 = *(&Matrix->blockSize + 2);
  LOBYTE(retstr->factorization) = v11;
  v93 = factorType;
  BYTE1(retstr->factorization) = factorType;
  *&retstr->factorSize_Float = 0u;
  *&retstr->workspaceSize_Float = 0u;
  *&retstr[1].status = 0;
  v96 = 0u;
  v97 = 0u;
  v12 = (attributes >> 2) & 3;
  if (v12 < 2)
  {
    columnStarts = Matrix->columnStarts;
    rowIndices = Matrix->rowIndices;
    v92 = *&Matrix->attributes;
    v15 = (options->malloc)(4 * rowCount);
    bzero(v15, 4 * rowCount);
    v16 = (options->malloc)(4 * columnStarts[columnCount] + 8 * columnCount + 8);
    v17 = v16;
    v91 = v92 | (v11 << 32);
    v18 = (v16 + 8 * columnCount);
    v19 = v18 + 1;
    if (columnCount < 1)
    {
      v21 = 0;
    }

    else
    {
      v20 = 0;
      v21 = 0;
      do
      {
        v22 = v20;
        *(v16 + 8 * v20) = v21;
        v23 = columnStarts[v20++];
        v24 = columnStarts[v20];
        v48 = v24 <= v23;
        v25 = v24 - v23;
        if (!v48)
        {
          v26 = &rowIndices[v23];
          do
          {
            v28 = *v26++;
            v27 = v28;
            if ((v28 & 0x80000000) == 0 && v27 < rowCount && v22 >= v15[v27])
            {
              *(v19 + v21++) = v27;
              v15[v27] = v20;
            }

            --v25;
          }

          while (v25);
        }
      }

      while (v20 != columnCount);
    }

    *v18 = v21;
    (options->free)(v15);
    *&v96 = __PAIR64__(columnCount, rowCount);
    *(&v96 + 1) = v17;
    *&v97 = v19;
    v9 = columnCount;
    *(&v97 + 1) = v91;
    goto LABEL_54;
  }

  if (v12 != 2)
  {
    v49 = Matrix->columnStarts[columnCount];
    v50 = columnCount;
    v51 = (options->malloc)(8 * (columnCount + v49) + 16);
    if (v51)
    {
      v52 = v51;
      v53 = (options->malloc)(16 * v49);
      if (v53)
      {
        v54 = v53;
        v55 = *&Matrix->rowIndices;
        if ((*&Matrix->attributes & 2) != 0)
        {
          *__str = *&Matrix->rowCount;
          *&__str[16] = v55;
          sub_2367861D0(__str, 0, v52, v53, 0, &v96);
        }

        else
        {
          v94 = *&Matrix->rowCount;
          v95 = v55;
          sub_236785FB0(&v94, 0, v52, v53, 0, __str);
          v96 = *__str;
          v97 = *&__str[16];
        }

        v9 = v50;
        (options->free)(v54);
        v17 = *(&v96 + 1);
        goto LABEL_54;
      }

      if (options->reportError)
      {
        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld", 16 * v49);
        return (options->reportError)(__str);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
LABEL_121:
        sub_23672EEB0();
      }
    }

    else
    {
      if (options->reportError)
      {
        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld", 8 * (columnCount + v49) + 16);
        return (options->reportError)(__str);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_121;
      }
    }

    _SparseTrap();
  }

  v29 = *&Matrix->attributes & 0xFFFF0000 | (v11 << 32) | *&Matrix->attributes & 0xFFF3;
  v30 = 4 * (Matrix->columnStarts[columnCount] + columnCount) + 8 * columnCount + 8;
  v31 = (options->malloc)(v30);
  v17 = v31;
  if (v31)
  {
    v32 = (v31 + 8 * columnCount);
    v33 = v32 + 1;
    if (columnCount < 1)
    {
      v35 = 0;
    }

    else
    {
      v34 = 0;
      v35 = 0;
      v36 = Matrix->columnStarts;
      do
      {
        *(v17 + 8 * v34) = v35;
        *(v33 + v35++) = v34;
        v37 = v36[v34];
        v38 = v34 + 1;
        v39 = v36[v34 + 1];
        v48 = v39 <= v37;
        v40 = v39 - v37;
        if (!v48)
        {
          v41 = &Matrix->rowIndices[v37];
          do
          {
            v43 = *v41++;
            v42 = v43;
            v44 = Matrix->attributes;
            v45 = v43;
            if ((*&v44 & 2) == 0 || v34 < v45)
            {
              v46 = *&v44 & 2;
              v47 = v34 <= v45 && v46 == 0;
              v48 = v47 || v42 > columnCount;
              if (!v48)
              {
                *(v33 + v35++) = v42;
              }
            }

            --v40;
          }

          while (v40);
        }

        ++v34;
      }

      while (v38 != columnCount);
    }

    *v32 = v35;
  }

  else
  {
    if (!options->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v30);
    (options->reportError)(__str);
    v33 = 0;
  }

  *&v96 = __PAIR64__(columnCount, rowCount);
  *(&v96 + 1) = v17;
  *&v97 = v33;
  *(&v97 + 1) = v29;
LABEL_54:
  v57 = 4 * *(v17 + 8 * v9) + 8 * rowCount + 16;
  v58 = (options->malloc)(v57);
  if (v58)
  {
    v59 = v58;
    v94 = 0u;
    v95 = 0u;
    sub_236795734(&v96, v58, &v94);
    v60 = sub_2367958B0(v93, &v96, &v94, options, retstr);
    (options->free)(v59);
    if (v60)
    {
      v61 = Matrix->rowCount;
      v62 = Matrix->columnCount;
      v63 = *(&Matrix->blockSize + 2);
      if (!sub_236796BCC(v93, &v96, v60, &retstr->workspaceSize_Double, &retstr->factorSize_Float))
      {
        if (v61 >= v62)
        {
          v65 = v62;
        }

        else
        {
          v65 = v61;
        }

        if (v93 == 40)
        {
          v66 = (v60 + 72);
          v67 = *(v60 + 88);
          v68 = *(*(v60 + 104) + 8 * v67);
        }

        else
        {
          v68 = 0;
          v66 = (v60 + 80);
          LODWORD(v67) = *(v60 + 88);
        }

        v69 = v67 + 1;
        v70 = v67 + 1;
        if (v67 >= -1)
        {
          v71 = v69;
        }

        else
        {
          v71 = -v69;
        }

        v72 = 8 * v71;
        if (v67 < -1)
        {
          v72 = -8 * v71;
        }

        v73 = __CFADD__(v72, 96);
        v74 = v72 + 96;
        v75 = v73;
        if (v67 >= -1 && !(v71 >> 61) && !v75)
        {
          v76 = 8 * v70 + 96;
          if ((8 * v70) < 0xFFFFFFFFFFFFFFA0)
          {
            v77 = v63 * v65;
            v78 = *v66;
            v73 = __CFADD__(v78, v68);
            v79 = v78 + v68;
            v80 = v73;
            v73 = __CFADD__(v77, v79);
            v81 = v77 + v79;
            v82 = v73;
            if (!v80 && !v82)
            {
              v83 = *(v60 + 176);
              if (v83 >= 0)
              {
                v84 = *(v60 + 176);
              }

              else
              {
                v84 = -v83;
              }

              v85 = 2 * v84;
              if (v83 < 0)
              {
                v85 = -v85;
              }

              v73 = __CFADD__(v81, v85);
              v86 = v81 + v85;
              v87 = v73;
              if ((v83 & 0x80000000) == 0 && !v87)
              {
                v88 = __CFADD__(v74, 4 * v86);
                retstr->factorSize_Double = v74 + 4 * v86;
                if (!(v86 >> 62) && !v88)
                {
                  v89 = __CFADD__(v76, 8 * v86);
                  *&retstr[1].status = v76 + 8 * v86;
                  if (!(v86 >> 61) && !v89)
                  {
                    retstr->workspaceSize_Float = v60;
                    retstr->status = SparseStatusOK;
                    v90 = *(&v96 + 1);
                    if ((*&Matrix->attributes & 0xC) == 0 && *(*(&v96 + 1) + 8 * SDWORD1(v96)) != Matrix->columnStarts[Matrix->columnCount])
                    {
                      *(v60 + 53) = 1;
                    }

                    return (options->free)(v90);
                  }
                }
              }
            }
          }
        }
      }

      reportError = options->reportError;
      if (!reportError)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23672ED88();
        }

        _SparseTrap();
      }

      memset(&__str[70], 0, 186);
      strcpy(__str, "Overflow calculating workspace required for numeric QR factorization.");
      (reportError)(__str);
      (options->free)(v60);
    }

    return (options->free)(*(&v96 + 1));
  }

  if (!options->reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23672EDD0();
    }

    _SparseTrap();
  }

  memset(__str, 0, 256);
  snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld.", v57);
  (options->reportError)(__str);
  return (options->free)(v17);
}

void sub_236795734(int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[1];
  v6 = *a1;
  *a3 = v5;
  *(a3 + 4) = v6;
  v7 = &a2[v6 + 1];
  *(a3 + 8) = a2;
  *(a3 + 16) = v7;
  *(a3 + 24) = 0;
  *(a3 + 24) = a1[6];
  *(a3 + 28) = *(a1 + 28);
  v8 = a2 + 2;
  if (v6 >= 1)
  {
    bzero(v8, 8 * v6);
  }

  if (v5 >= 1)
  {
    v9 = 0;
    v10 = *(a1 + 1);
    v11 = *v10;
    do
    {
      v12 = v10[++v9];
      if (v11 < v12)
      {
        v13 = *(a1 + 2);
        do
        {
          v14 = *(v13 + 4 * v11);
          if ((v14 & 0x80000000) == 0 && v14 < v6)
          {
            ++v8[v14];
            v12 = v10[v9];
          }

          ++v11;
        }

        while (v11 < v12);
      }

      v11 = v12;
    }

    while (v9 != v5);
  }

  a2[1] = 0;
  v15 = a2 + 1;
  *a2 = 0;
  if (v6 > 1)
  {
    v16 = 0;
    v17 = v6 - 1;
    v18 = a2 + 2;
    do
    {
      v16 += *v18;
      *v18++ = v16;
      --v17;
    }

    while (v17);
  }

  if (v5 >= 1)
  {
    v19 = 0;
    v20 = *(a1 + 1);
    v21 = *v20;
    do
    {
      v22 = v19++;
      v23 = v20[v19];
      if (v21 < v23)
      {
        v24 = *(a1 + 2);
        do
        {
          v25 = *(v24 + 4 * v21);
          if ((v25 & 0x80000000) == 0 && v25 < *a1)
          {
            v26 = v15[v25];
            v15[v25] = v26 + 1;
            *(v7 + v26) = v22;
            v23 = v20[v19];
          }

          ++v21;
        }

        while (v21 < v23);
        LODWORD(v5) = a1[1];
      }

      v21 = v23;
    }

    while (v19 < v5);
  }
}

uint64_t sub_2367958B0(unsigned int a1, uint64_t a2, uint64_t a3, __int128 *a4, _DWORD *a5)
{
  v307 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 28);
  v9 = *(a2 + 24);
  v10 = 4;
  if (v9)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a2 + v11);
  if (v9)
  {
    v10 = 0;
  }

  v13 = v12 * *(a2 + 28);
  v14 = *(a2 + v10) * *(a2 + 28);
  if (!*(a4 + 2))
  {
    v274 = a5;
    v21 = 0;
    v22 = 0;
    v24 = 0;
    v23 = 0;
    v20 = 0;
    v18 = 0;
    goto LABEL_113;
  }

  *v286 = *(a2 + v10);
  v16 = v14 + v13 + 4 * (v14 + v13 + *a2 + *(a2 + 4) + 2) + 48;
  v17 = (*(a4 + 3))(v16);
  if (v17)
  {
    v18 = v17;
    v19 = &v17[v16];
    v20 = (&v17[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v19 < v20)
    {
      goto LABEL_300;
    }

    v274 = a5;
    v21 = (v20 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v19 < v21)
    {
      goto LABEL_300;
    }

    v22 = (v21 + 4 * v13 + 11) & 0xFFFFFFFFFFFFFFF8;
    if (v19 < v22)
    {
      goto LABEL_300;
    }

    v23 = (v22 + 4 * v14 + 11) & 0xFFFFFFFFFFFFFFF8;
    if (v19 < v23)
    {
      goto LABEL_300;
    }

    v24 = (v23 + 4 * v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v19 < v24 || v19 < ((v24 + 4 * *v286 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_300;
    }

    v14 = *(a2 + 28);
    v9 = *(a2 + 24);
    v25 = 4;
    if (v9)
    {
      v26 = 4;
    }

    else
    {
      v26 = 0;
    }

    if (v9)
    {
      v25 = 0;
    }

    v27 = *(a2 + v26);
    v28 = *(a2 + v25);
    if (*(a4 + 2))
    {
      *v277 = *(a2 + v25);
      v279 = *(a4 + 2);
      v283 = v27 * v14;
      *v287 = v23;
      v29 = v28 * *(a2 + 28);
      __src = v27;
      bzero(v17, v27 * *(a2 + 28));
      v281 = v29;
      bzero(v20, v29);
      v23 = *v287;
      if (__src >= 1)
      {
        v30 = (__src + 3) & 0xFFFFFFFC;
        v31 = vdupq_n_s64(__src - 1);
        v32 = xmmword_23681F910;
        v33 = xmmword_23681F920;
        v34 = (*v287 + 8);
        v35 = vdupq_n_s64(4uLL);
        do
        {
          v36 = vmovn_s64(vcgeq_u64(v31, v33));
          if (vuzp1_s16(v36, *v31.i8).u8[0])
          {
            *(v34 - 2) = v14;
          }

          if (vuzp1_s16(v36, *&v31).i8[2])
          {
            *(v34 - 1) = v14;
          }

          if (vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, *&v32))).i32[1])
          {
            *v34 = v14;
            v34[1] = v14;
          }

          v32 = vaddq_s64(v32, v35);
          v33 = vaddq_s64(v33, v35);
          v34 += 4;
          v30 -= 4;
        }

        while (v30);
      }

      if (v277[0] >= 1)
      {
        v37 = (v277[0] + 3) & 0xFFFFFFFC;
        v38 = vdupq_n_s64(*v277 - 1);
        v39 = xmmword_23681F910;
        v40 = xmmword_23681F920;
        v41 = (v24 + 8);
        v42 = vdupq_n_s64(4uLL);
        do
        {
          v43 = vmovn_s64(vcgeq_u64(v38, v40));
          if (vuzp1_s16(v43, *v38.i8).u8[0])
          {
            *(v41 - 2) = v14;
          }

          if (vuzp1_s16(v43, *&v38).i8[2])
          {
            *(v41 - 1) = v14;
          }

          if (vuzp1_s16(*&v38, vmovn_s64(vcgeq_u64(v38, *&v39))).i32[1])
          {
            *v41 = v14;
            v41[1] = v14;
          }

          v39 = vaddq_s64(v39, v42);
          v40 = vaddq_s64(v40, v42);
          v41 += 4;
          v37 -= 4;
        }

        while (v37);
      }

      v44 = *v279;
      if (*v279 < 0)
      {
        v46 = 0;
        v45 = 0;
      }

      else
      {
        v45 = 0;
        v46 = 0;
        v47 = v279 + 1;
        do
        {
          v48 = v44 - v283;
          if (v44 >= v283)
          {
            *(v22 + 4 * v46++) = v48;
            *(v20 + v48) = 1;
            v49 = (v24 + 4 * (v48 / v14));
          }

          else
          {
            *(v21 + 4 * v45++) = v44;
            v18[v44] = 1;
            v49 = (*v287 + 4 * (v44 / v14));
          }

          --*v49;
          v50 = *v47++;
          v44 = v50;
        }

        while ((v50 & 0x80000000) == 0);
      }

      if (*(a2 + 24))
      {
        if (*(a3 + 4) >= 1)
        {
          v51 = 0;
          v52 = 0;
          do
          {
            if (*(v24 + 4 * v52))
            {
              v53 = (*(a3 + 8) + 8 * v52);
              v55 = *v53;
              v54 = v53[1];
              v95 = v54 <= v55;
              v56 = v54 - v55;
              if (v95)
              {
LABEL_60:
                *(v24 + 4 * v52) = 0;
                if (v14)
                {
                  v60 = v51;
                  v61 = v14;
                  do
                  {
                    if ((*(v20 + v60) & 1) == 0)
                    {
                      *(v22 + 4 * v46++) = v60;
                    }

                    *(v20 + v60++) = 1;
                    --v61;
                  }

                  while (v61);
                }
              }

              else
              {
                v57 = (*(a3 + 16) + 4 * v55);
                while (1)
                {
                  v59 = *v57++;
                  v58 = v59;
                  if ((v59 & 0x80000000) == 0 && v58 < *a3 && *(*v287 + 4 * v58))
                  {
                    break;
                  }

                  if (!--v56)
                  {
                    goto LABEL_60;
                  }
                }
              }
            }

            ++v52;
            v51 += v14;
          }

          while (v52 < *(a3 + 4));
        }

        if (*(a2 + 4) >= 1)
        {
          v62 = 0;
          v63 = 0;
          do
          {
            if (*(*v287 + 4 * v63))
            {
              v64 = (*(a2 + 8) + 8 * v63);
              v66 = *v64;
              v65 = v64[1];
              v95 = v65 <= v66;
              v67 = v65 - v66;
              if (v95)
              {
LABEL_75:
                *(*v287 + 4 * v63) = 0;
                if (v14)
                {
                  v71 = v62;
                  v72 = v14;
                  do
                  {
                    if ((v18[v71] & 1) == 0)
                    {
                      *(v21 + 4 * v45++) = v71;
                    }

                    v18[v71++] = 1;
                    --v72;
                  }

                  while (v72);
                }
              }

              else
              {
                v68 = (*(a2 + 16) + 4 * v66);
                while (1)
                {
                  v70 = *v68++;
                  v69 = v70;
                  if ((v70 & 0x80000000) == 0 && v69 < *a2 && *(v24 + 4 * v69))
                  {
                    break;
                  }

                  if (!--v67)
                  {
                    goto LABEL_75;
                  }
                }
              }
            }

            ++v63;
            v62 += v14;
          }

          while (v63 < *(a2 + 4));
        }
      }

      else
      {
        if (*(a2 + 4) >= 1)
        {
          v73 = 0;
          v74 = 0;
          do
          {
            if (*(v24 + 4 * v74))
            {
              v75 = (*(a2 + 8) + 8 * v74);
              v77 = *v75;
              v76 = v75[1];
              v95 = v76 <= v77;
              v78 = v76 - v77;
              if (v95)
              {
LABEL_91:
                *(v24 + 4 * v74) = 0;
                if (v14)
                {
                  v82 = v73;
                  v83 = v14;
                  do
                  {
                    if ((*(v20 + v82) & 1) == 0)
                    {
                      *(v22 + 4 * v46++) = v82;
                    }

                    *(v20 + v82++) = 1;
                    --v83;
                  }

                  while (v83);
                }
              }

              else
              {
                v79 = (*(a2 + 16) + 4 * v77);
                while (1)
                {
                  v81 = *v79++;
                  v80 = v81;
                  if ((v81 & 0x80000000) == 0 && v80 < *a2 && *(*v287 + 4 * v80))
                  {
                    break;
                  }

                  if (!--v78)
                  {
                    goto LABEL_91;
                  }
                }
              }
            }

            ++v74;
            v73 += v14;
          }

          while (v74 < *(a2 + 4));
        }

        if (*(a3 + 4) >= 1)
        {
          v84 = 0;
          v85 = 0;
          do
          {
            if (*(*v287 + 4 * v85))
            {
              v86 = (*(a3 + 8) + 8 * v85);
              v88 = *v86;
              v87 = v86[1];
              v95 = v87 <= v88;
              v89 = v87 - v88;
              if (v95)
              {
LABEL_106:
                *(*v287 + 4 * v85) = 0;
                if (v14)
                {
                  v93 = v84;
                  v94 = v14;
                  do
                  {
                    if ((v18[v93] & 1) == 0)
                    {
                      *(v21 + 4 * v45++) = v93;
                    }

                    v18[v93++] = 1;
                    --v94;
                  }

                  while (v94);
                }
              }

              else
              {
                v90 = (*(a3 + 16) + 4 * v88);
                while (1)
                {
                  v92 = *v90++;
                  v91 = v92;
                  if ((v92 & 0x80000000) == 0 && v91 < *a3 && *(v24 + 4 * v91))
                  {
                    break;
                  }

                  if (!--v89)
                  {
                    goto LABEL_106;
                  }
                }
              }
            }

            ++v85;
            v84 += v14;
          }

          while (v85 < *(a3 + 4));
        }
      }

      LODWORD(v13) = v283 - v45;
      LODWORD(v14) = v281 - v46;
      *(v21 + 4 * v45) = -1;
      *(v22 + 4 * v46) = -1;
      v9 = *(a2 + 24);
    }

    else
    {
      LODWORD(v13) = v27 * v14;
      LODWORD(v14) = v28 * v14;
    }

LABEL_113:
    v95 = v13 < v14;
    v96 = ((v13 < v14) ^ v9) & 1;
    if (v13 < v14)
    {
      v97 = v14;
    }

    else
    {
      v97 = v13;
    }

    if (v13 < v14)
    {
      v98 = v13;
    }

    else
    {
      v98 = v14;
    }

    if (v13 < v14)
    {
      v99 = v18;
    }

    else
    {
      v99 = v20;
    }

    __srca = v99;
    if (v13 < v14)
    {
      v100 = v24;
    }

    else
    {
      v100 = v23;
    }

    v271 = v100;
    if (v13 < v14)
    {
      v101 = v23;
    }

    else
    {
      v101 = v24;
    }

    if (v95)
    {
      v102 = v21;
    }

    else
    {
      v102 = v22;
    }

    v269 = v102;
    if (v95)
    {
      v103 = v22;
    }

    else
    {
      v103 = v21;
    }

    v268 = v103;
    if (v96)
    {
      v104 = a2;
    }

    else
    {
      v104 = a3;
    }

    if (v96)
    {
      v105 = a3;
    }

    else
    {
      v105 = a2;
    }

    v282 = v97;
    v284 = v98;
    if (v97 < v98)
    {
      goto LABEL_300;
    }

    v106 = v96;
    v280 = *v105;
    *v288 = v105[1];
    v107 = v288[0] * v8;
    v108 = v107 + 8;
    v109 = a4;
    if (!*(a4 + 2))
    {
      v108 = 0;
    }

    v110 = v108 + 4 * v107 + 224;
    v111 = (*(a4 + 3))(v110);
    if (!v111)
    {
      if (!*(a4 + 5))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23672EC38();
        }

        _SparseTrap();
      }

      v305 = 0u;
      v306 = 0u;
      v303 = 0u;
      v304 = 0u;
      v301 = 0u;
      v302 = 0u;
      v299 = 0u;
      v300 = 0u;
      v297 = 0u;
      v298 = 0u;
      v295 = 0u;
      v296 = 0u;
      v293 = 0u;
      v294 = 0u;
      *__str = 0u;
      v292 = 0u;
      snprintf(__str, 0x100uLL, "Memory allocation of size %ld failed\n", v110);
      (*(a4 + 5))(__str);
      v141 = 0;
      *v274 = -3;
LABEL_297:
      if (*(v109 + 16))
      {
        (*(v109 + 32))(v18);
      }

      return v141;
    }

    v141 = v111;
    v112 = v111 + v110;
    v113 = (v111 + 215) & 0xFFFFFFFFFFFFFFF8;
    if (v111 + v110 < v113)
    {
      goto LABEL_300;
    }

    v114 = (v113 + 4 * v107 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v112 < v114)
    {
      goto LABEL_300;
    }

    v278 = v105;
    v266 = v104;
    __n = v288[0] * v8;
    if (*(a4 + 2))
    {
      if (v112 < ((v114 + v107 + 7) & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_300;
      }
    }

    else
    {
      v114 = 0;
    }

    v115 = *a4;
    v116 = a4[2];
    *(v111 + 16) = a4[1];
    *(v111 + 32) = v116;
    *v111 = v115;
    *(v111 + 48) = 1;
    *(v111 + 52) = v106;
    *(v111 + 53) = 0;
    *(v111 + 56) = v282;
    *(v111 + 60) = v284;
    *(v111 + 96) = 0u;
    v265 = (v111 + 96);
    *(v111 + 72) = 0;
    *(v111 + 80) = 0;
    *(v111 + 64) = v113;
    *(v111 + 88) = 0;
    v117 = 5 * v288[0] + 2 * v280;
    *(v111 + 112) = 0u;
    v118 = v280 - v288[0] + 8 * v288[0];
    v119 = v118 + 5;
    v120 = v118 + 2;
    *(v111 + 128) = 0;
    *(v111 + 136) = v280 * v8;
    v121 = v117 <= v119;
    if (v117 > v119)
    {
      v122 = v117 + 1;
    }

    else
    {
      v122 = v120;
    }

    v123 = 56;
    if (!v121)
    {
      v123 = 40;
    }

    *(v111 + 144) = 0uLL;
    v264 = (v111 + 144);
    *(v111 + 160) = 0uLL;
    *(v111 + 176) = 0;
    *(v111 + 184) = 0;
    *(v111 + 192) = 0;
    *(v111 + 200) = v114;
    v270 = v123 + 4 * v122;
    v124 = *v288;
    v125 = (*(a4 + 3))(v270 + 12 * v288[0] + 24);
    if (!v125)
    {
      goto LABEL_174;
    }

    v126 = v125;
    v127 = v125 + v270 + 12 * v288[0] + 24;
    v128 = (v125 + 4 * *v288 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v127 < v128)
    {
      goto LABEL_300;
    }

    v129 = (v128 + 4 * *v288 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v127 < v129)
    {
      goto LABEL_300;
    }

    v263 = ((v128 + 4 * *v288 + 7) & 0xFFFFFFFFFFFFFFF8);
    v130 = ((v129 + 4 * *v288 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v127 < v130 || v127 < (&v130[v270 + 7] & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_300;
    }

    if (*(a4 + 2))
    {
      memcpy(*(v141 + 200), __srca, __n);
      v124 = *v288;
    }

    v131 = 1 << *(a4 + 4);
    v262 = (v141 + 184);
    if ((v131 & 0x2C) != 0)
    {
      *__str = 0u;
      v292 = 0u;
      sub_236752DB4(0, v105, a4, __str);
      v132 = *(v141 + 64);
      v290[0] = *__str;
      v290[1] = v292;
      v133 = sub_2367E3E64(a1, v290, 0, v126, v132, a4);
      (*(a4 + 4))(*&__str[8]);
      if (!v133)
      {
        v134 = *(v141 + 64);
        v135 = v266;
        v124 = *v288;
LABEL_199:
        v152 = *(v278 + 16);
        *__str = *v278;
        v292 = v152;
        sub_236768978(__str, v271, v101, v126, v134, v263, v130, &v130[4 * v124]);
        sub_236750DDC(*v288, v263, v126, *(v141 + 64), v130);
        v153 = *(v141 + 64);
        v154 = v135[1];
        *__str = *v135;
        v292 = v154;
        sub_2366EE0E8(__str, v271, v101, v126, v153, v263, v128, v130, &v130[16 * *v288]);
        v155 = sub_236768200(v278, v271, v101, v126, *(v141 + 64), v263, v128, v130, a4, &v130[4 * v124 + 4]);
        v156 = *v288;
        *(v141 + 88) = v155;
        *(v141 + 80) = 0;
        if (v288[0] < 1)
        {
          v157 = 0;
          v159 = v282;
        }

        else
        {
          v157 = 0;
          v158 = v128;
          v159 = v282;
          do
          {
            v160 = *v158++;
            v157 += v160;
            --v156;
          }

          while (v156);
          *(v141 + 80) = v157;
        }

        if (v155 < 1)
        {
          v169 = a4;
          v161 = 0;
        }

        else
        {
          v161 = 0;
          v162 = v155;
          v163 = (v130 + 4);
          v164 = *v130;
          v165 = v128;
          do
          {
            v167 = *v165++;
            v166 = v167;
            v168 = *v163++;
            v161 += v166 * v8;
            v157 += v166 * (v168 - v164);
            v164 = v168;
            --v162;
          }

          while (v162);
          v169 = a4;
          *(v141 + 80) = v157;
        }

        v276 = v159;
        v285 = 8 * (v159 - v284 + v161);
        v170 = v285 + 12 * v155 + 8 * (v161 + 2 * v155 + 2) + 44;
        v171 = (*(v169 + 24))(v170);
        if (v171)
        {
          v172 = v171 + v170;
          v173 = *(v141 + 88);
          v174 = v173 + 1;
          v175 = (v171 + 4 * (v173 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          if (v171 + v170 >= v175)
          {
            *v265 = v171;
            v176 = v175 + 8 * v174;
            if (v176 <= v172)
            {
              *(v141 + 104) = v175;
              v177 = (v176 + 4 * v161 + 7) & 0xFFFFFFFFFFFFFFF8;
              if (v172 >= v177)
              {
                *(v141 + 112) = v176;
                v178 = (v177 + 4 * v161 + 7) & 0xFFFFFFFFFFFFFFF8;
                if (v172 >= v178)
                {
                  *v264 = v177;
                  v179 = v178 + 8 * v174;
                  if (v179 <= v172)
                  {
                    *(v141 + 120) = v178;
                    v180 = v179 + v285;
                    if (v179 + v285 <= v172)
                    {
                      *(v141 + 128) = v179;
                      v181 = (v180 + 4 * v173 + 15) & 0xFFFFFFFFFFFFFFF8;
                      if (v172 >= v181)
                      {
                        *(v141 + 152) = v180;
                        if (v172 >= ((v181 + 4 * v173 + 7) & 0xFFFFFFFFFFFFFFF8))
                        {
                          *(v141 + 160) = v181;
                          if ((v173 & 0x80000000) == 0)
                          {
                            v182 = 0;
                            do
                            {
                              *(v171 + 4 * v182) = *&v130[4 * v182];
                              v95 = v182++ < *(v141 + 88);
                            }

                            while (v95);
                            v173 = *(v141 + 88);
                          }

                          sub_236812888(v173, v263, v180, v181);
                          v183 = *(v141 + 88);
                          if (v183 < 1)
                          {
                            v185 = 0;
                            v188 = *v288;
                          }

                          else
                          {
                            v184 = 0;
                            v185 = 0;
                            v186 = *(v141 + 152);
                            v187 = *v186;
                            v188 = *v288;
                            do
                            {
                              v189 = v186[++v184];
                              v190 = v276;
                              if (v187 < v189)
                              {
                                v191 = (*(v141 + 160) + 4 * v187);
                                v192 = v189 - v187;
                                v193 = v282;
                                do
                                {
                                  v194 = *v191++;
                                  v193 += (*(v128 + 4 * v194) - *(*(v141 + 96) + 4 * v194 + 4) + *(*(v141 + 96) + 4 * v194)) * v8;
                                  --v192;
                                }

                                while (v192);
                                v190 = v193;
                              }

                              if (v185 <= v190)
                              {
                                v185 = v190;
                              }

                              v187 = v186[v184];
                            }

                            while (v184 != v183);
                          }

                          v195 = *(a4 + 2);
                          if (v195)
                          {
                            if ((v183 & 0x80000000) == 0)
                            {
                              v196 = 0;
                              v197 = *v265;
                              do
                              {
                                *&v130[4 * v196] = v197[v196];
                                v198 = *(v141 + 88);
                                v95 = v196++ < v198;
                              }

                              while (v95);
                              if ((v198 & 0x80000000) == 0)
                              {
                                v199 = 0;
                                v200 = 0;
                                v201 = *v265;
                                do
                                {
                                  *(v201 + 4 * v199) = v200;
                                  v202 = *&v130[4 * v199];
                                  v203 = *&v130[4 * v199 + 4];
                                  if (v202 < v203)
                                  {
                                    v204 = (*(v141 + 64) + 4 * v202);
                                    v205 = v203 - v202;
                                    do
                                    {
                                      v206 = *v204++;
                                      v200 += v101[v206];
                                      --v205;
                                    }

                                    while (v205);
                                  }

                                  v95 = v199++ < *(v141 + 88);
                                }

                                while (v95);
                              }
                            }

                            if (v188 >= 1)
                            {
                              v207 = *(v141 + 64);
                              v208 = v188;
                              v209 = v130;
                              do
                              {
                                v210 = *v207++;
                                *v209 = v210;
                                v209 += 4;
                                --v208;
                              }

                              while (v208);
                              v211 = 0;
                              v212 = __n - 1;
                              do
                              {
                                if (v8)
                                {
                                  v213 = 0;
                                  v214 = *(v141 + 200);
                                  v215 = *(v141 + 64);
                                  do
                                  {
                                    v216 = *&v130[4 * v211] * v8;
                                    v217 = v213 + v216;
                                    v218 = *(v214 + v216);
                                    if (v218)
                                    {
                                      v219 = v212;
                                    }

                                    else
                                    {
                                      v219 = v208;
                                    }

                                    v212 -= v218;
                                    LODWORD(v208) = v208 + (v218 ^ 1);
                                    *(v215 + 4 * v219) = v217;
                                    ++v213;
                                    ++v214;
                                  }

                                  while (v8 != v213);
                                }

                                v211 = v211 + 1;
                              }

                              while (v211 != v188);
                            }
                          }

                          else
                          {
                            if (v8 < 2)
                            {
LABEL_268:
                              if (v195)
                              {
                                v230 = v280 * v8 + 8;
                              }

                              else
                              {
                                v230 = 0;
                              }

                              __b = v130;
                              if (v270 < 8 * v185 + 4 * (v185 + v280 + 2 * v8 * v188) + v230 + 32)
                              {
                                __b = (*(a4 + 3))();
                              }

                              sub_23679A9A8(v278, v266, v141, *(v141 + 152), *(v141 + 160), v185, v268, v269, __b);
                              v109 = a4;
                              if (__b != v130)
                              {
                                (*(a4 + 4))(__b);
                              }

                              *(v141 + 168) = 0;
                              *(v141 + 176) = 0;
                              *(v141 + 72) = 0;
                              *v262 = 0;
                              *(v141 + 192) = 0;
                              v232 = *(v141 + 88);
                              if (v232 >= 1)
                              {
                                v233 = 0;
                                v234 = 0;
                                v235 = 0;
                                v236 = 0;
                                v237 = 0;
                                v238 = 0;
                                v239 = 0;
                                v240 = 0;
                                v241 = *(v141 + 96);
                                v242 = *(v141 + 104);
                                v243 = *(v141 + 120);
                                while (1)
                                {
                                  v244 = v238 + 1;
                                  v245 = *(v241 + 4 * (v238 + 1)) - *(v241 + 4 * v238);
                                  v246 = *(v243 + 8 * (v238 + 1)) - *(v243 + 8 * v238);
                                  if (v246 < v245)
                                  {
                                    break;
                                  }

                                  v247 = *(v242 + 8 * v244) - *(v242 + 8 * v238);
                                  v248 = v247;
                                  v249 = v246 * v247;
                                  if (v249 > v237)
                                  {
                                    *(v141 + 168) = v249;
                                    v237 = v246 * v247;
                                  }

                                  if (v236 < v247)
                                  {
                                    *(v141 + 176) = v247;
                                    v236 = v247;
                                  }

                                  v235 += v249;
                                  *(v141 + 72) = v235;
                                  v250 = *(v141 + 152);
                                  v251 = *(v250 + 4 * v238);
                                  v252 = *(v250 + 4 * v244);
                                  if (v251 < v252)
                                  {
                                    v253 = (*(v141 + 160) + 4 * v251);
                                    v254 = v252 - v251;
                                    do
                                    {
                                      v255 = *v253++;
                                      v256 = *(v241 + 4 * (v255 + 1)) - *(v241 + 4 * v255);
                                      v257 = *(v242 + 8 * (v255 + 1)) - *(v242 + 8 * v255);
                                      v258 = *(v243 + 8 * (v255 + 1)) - *(v243 + 8 * v255);
                                      if (v258 >= v257)
                                      {
                                        v258 = v257;
                                      }

                                      v259 = v258 - v256;
                                      v240 += v259 * (v256 - v257);
                                      v239 -= v259;
                                      --v254;
                                    }

                                    while (v254);
                                  }

                                  if (v246 >= v248)
                                  {
                                    v246 = v248;
                                  }

                                  v260 = v246 - v245;
                                  v240 += v260 * (v248 - v245);
                                  if (v240 > v234)
                                  {
                                    *v262 = v240;
                                    v234 = v240;
                                  }

                                  v239 += v260;
                                  if (v239 > v233)
                                  {
                                    *(v141 + 192) = v239;
                                    v233 = v239;
                                  }

                                  v238 = v244;
                                  if (v244 == v232)
                                  {
                                    goto LABEL_296;
                                  }
                                }

                                *v274 = -2;
                                (*(a4 + 4))();
                                (*(a4 + 4))(v141);
                                v141 = 0;
                              }

LABEL_296:
                              (*(a4 + 4))(v126);
                              goto LABEL_297;
                            }

                            if (v188 >= 1)
                            {
                              v220 = *(v141 + 64);
                              v221 = v188;
                              v222 = v126;
                              do
                              {
                                v223 = *v220++;
                                *v222 = v223;
                                v222 += 4;
                                --v221;
                              }

                              while (v221);
                              v224 = 0;
                              LODWORD(v225) = 0;
                              v226 = *(v141 + 64);
                              do
                              {
                                v227 = 0;
                                v225 = v225;
                                do
                                {
                                  *(v226 + 4 * v225++) = v227++ + *&v126[4 * v224] * v8;
                                }

                                while (v8 != v227);
                                v224 = v224 + 1;
                              }

                              while (v224 != v188);
                            }

                            if ((*(v141 + 88) & 0x80000000) == 0)
                            {
                              v228 = *v265;
                              v229 = -1;
                              do
                              {
                                *v228++ *= v8;
                                ++v229;
                              }

                              while (v229 < *(v141 + 88));
                            }
                          }

                          *(v141 + 80) *= (v8 * v8);
                          goto LABEL_268;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_300:
          __break(1u);
        }

        (*(v169 + 32))(v126);
        (*(v169 + 32))(v141);
        return 0;
      }

      goto LABEL_173;
    }

    if ((v131 & 0x11) != 0)
    {
      v136 = v124;
      v137 = _SparseCOLAMDWorkspaceSize(v280, v124, *(*(v278 + 8) + 8 * v124), v284);
      v138 = (*(a4 + 3))(v137);
      if (!v138)
      {
LABEL_173:
        (*(a4 + 4))(v126);
LABEL_174:
        (*(a4 + 4))(v141);
        return 0;
      }

      v139 = v138;
      _SparseCOLAMD(v278, v266, v101, 0, *(v141 + 64), v138);
      (*(a4 + 4))(v139);
      v134 = *(v141 + 64);
      v124 = v136;
      if (v136 >= 1)
      {
        for (i = 0; i != v136; i = i + 1)
        {
          *&v126[4 * *(v134 + 4 * i)] = i;
        }
      }

LABEL_198:
      v135 = v266;
      goto LABEL_199;
    }

    v142 = *(a4 + 1);
    v134 = *(v141 + 64);
    if (v142)
    {
      if (v124 < 1)
      {
        goto LABEL_198;
      }

      for (j = 0; j != v124; j = j + 1)
      {
        *(v134 + 4 * *(v142 + 4 * j)) = j;
      }
    }

    else
    {
      if (v124 < 1)
      {
        goto LABEL_198;
      }

      v144 = 0;
      v145 = vdupq_n_s64(v124 - 1);
      v146 = xmmword_23681F910;
      v147 = xmmword_23681F920;
      v148 = (v134 + 8);
      v149 = vdupq_n_s64(4uLL);
      do
      {
        v150 = vmovn_s64(vcgeq_u64(v145, v147));
        if (vuzp1_s16(v150, *v145.i8).u8[0])
        {
          *(v148 - 2) = v144;
        }

        if (vuzp1_s16(v150, *&v145).i8[2])
        {
          *(v148 - 1) = v144 + 1;
        }

        if (vuzp1_s16(*&v145, vmovn_s64(vcgeq_u64(v145, *&v146))).i32[1])
        {
          *v148 = v144 + 2;
          v148[1] = v144 + 3;
        }

        v144 += 4;
        v146 = vaddq_s64(v146, v149);
        v147 = vaddq_s64(v147, v149);
        v148 += 4;
      }

      while (((v124 + 3) & 0xFFFFFFFC) != v144);
    }

    for (k = 0; k != v124; k = k + 1)
    {
      *&v126[4 * *(v134 + 4 * k)] = k;
    }

    goto LABEL_198;
  }

  if (!*(a4 + 5))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23672EC38();
    }

    _SparseTrap();
  }

  v305 = 0u;
  v306 = 0u;
  v303 = 0u;
  v304 = 0u;
  v301 = 0u;
  v302 = 0u;
  v299 = 0u;
  v300 = 0u;
  v297 = 0u;
  v298 = 0u;
  v295 = 0u;
  v296 = 0u;
  v293 = 0u;
  v294 = 0u;
  *__str = 0u;
  v292 = 0u;
  snprintf(__str, 0x100uLL, "Memory allocation of size %ld failed\n", v16);
  (*(a4 + 5))(__str);
  v141 = 0;
  *a5 = -3;
  return v141;
}

BOOL sub_236796BCC(int a1, int *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = *a2;
  v10 = *(a2 + 28);
  if (*(a3 + 52))
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v14 = 8 * (v9 + 2);
    v15 = v14 + 8;
    v16 = v14 >= 0xFFFFFFFFFFFFFFF8;
    v17 = 1;
    if ((v9 + 2) >> 61 || v16)
    {
      return v17;
    }

    v9 = a2[1];
    v18 = *(*(a2 + 1) + 8 * v9);
    v12 = v15 + 4 * v18;
    v19 = __CFADD__(v15, 4 * v18);
    if (v18 >> 62 || v19 || !is_mul_ok(v18, (8 * v10 * v10)))
    {
      return v17;
    }

    v11 = v18 * (8 * v10 * v10);
  }

  if (a1 == 40)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a3 + 168);
  }

  v20 = *(a3 + 184);
  v17 = 1;
  v21 = v20 + v13;
  if (!__CFADD__(v20, v13))
  {
    v23 = ilaenv_NEWLAPACK();
    v24 = v23;
    if (a1 != 40)
    {
      v24 = v23 + 1;
    }

    v25 = *(a3 + 176);
    v26 = !is_mul_ok(v24, v25);
    v27 = v24 * v25;
    v28 = __CFADD__(v21, v27);
    v29 = v21 + v27;
    v30 = v28;
    if (!v26 && (v30 & 1) == 0)
    {
      v28 = __CFADD__(v29, v11);
      v31 = v29 + v11;
      if (!v28)
      {
        v32 = v9 * v10;
        v33 = v12 + 4 * v32;
        v34 = __CFADD__(v12, 4 * v32);
        if (!(v32 >> 62) && !v34)
        {
          v35 = *(a3 + 88);
          v28 = __CFADD__(v33, 8 * v35);
          v36 = v33 + 8 * v35;
          v37 = v28;
          if ((v35 & 0x80000000) == 0 && !v37)
          {
            v28 = __CFADD__(v36, 40);
            v38 = v36 + 40;
            if (!v28)
            {
              if ((v25 & 0x80000000) == 0)
              {
                v39 = *(a3 + 176);
              }

              else
              {
                v39 = -v25;
              }

              v40 = 2 * v39;
              if ((v25 & 0x80000000) != 0)
              {
                v40 = -v40;
              }

              v28 = __CFADD__(v38, v40);
              v41 = v38 + v40;
              v42 = v28;
              if ((v25 & 0x80000000) == 0 && (v42 & 1) == 0)
              {
                v43 = __CFADD__(v41, 4 * v31);
                *a4 = v41 + 4 * v31;
                if (!(v31 >> 62) && !v43)
                {
                  *a5 = v41 + 8 * v31;
                  return __CFADD__(v41, 8 * v31) || v31 >> 61 != 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v17;
}

SparseOpaqueFactorization_Double *__cdecl _SparseNumericFactorQR_Double(SparseOpaqueFactorization_Double *__return_ptr retstr, SparseOpaqueSymbolicFactorization *symbolicFactor, const SparseMatrix_Double *Matrix, const SparseNumericFactorOptions *options, void *factorStorage, void *workspace)
{
  v6 = workspace;
  *&retstr->symbolicFactorization.factorSize_Float = 0u;
  *&retstr->userFactorStorage = 0u;
  *&retstr->symbolicFactorization.columnCount = 0u;
  *&retstr->symbolicFactorization.workspaceSize_Float = 0u;
  *&retstr->status = 0u;
  v12 = *&symbolicFactor->workspaceSize_Double;
  *&retstr->symbolicFactorization.factorSize_Double = *&symbolicFactor->factorSize_Double;
  *&retstr->symbolicFactorization.workspaceSize_Double = v12;
  v13 = *&symbolicFactor->status;
  *&retstr->symbolicFactorization.factorization = *&symbolicFactor->factorization;
  v14 = BYTE1(symbolicFactor->factorization);
  rowCount = Matrix->structure.rowCount;
  columnCount = Matrix->structure.columnCount;
  v17 = *(&Matrix->structure.blockSize + 2);
  retstr->status = SparseInternalError;
  *&retstr->symbolicFactorization.status = v13;
  LOBYTE(retstr->numericFactorization) = 1;
  retstr->solveWorkspaceRequiredPerRHS = 0;
  p_solveWorkspaceRequiredPerRHS = &retstr->solveWorkspaceRequiredPerRHS;
  *&retstr[1].status = 0;
  v19 = retstr + 1;
  retstr->solveWorkspaceRequiredStatic = 0;
  workspaceSize_Float = symbolicFactor->workspaceSize_Float;
  atomic_fetch_add((workspaceSize_Float + 48), 1u);
  if (BYTE1(symbolicFactor->factorization) == 40)
  {
    if (Matrix->structure.columnCount <= Matrix->structure.rowCount)
    {
      v21 = Matrix->structure.rowCount;
    }

    else
    {
      v21 = Matrix->structure.columnCount;
    }

    v27 = columnCount;
    v28 = v14;
    sub_23678B078(v21 * *(&Matrix->structure.blockSize + 2), symbolicFactor->workspaceSize_Float, p_solveWorkspaceRequiredPerRHS, v19);
    columnCount = v27;
    v14 = v28;
    v22 = 2 * v21;
    v6 = workspace;
    v23 = *&v19->status + 8 * *(&Matrix->structure.blockSize + 2) * v22;
  }

  else
  {
    *p_solveWorkspaceRequiredPerRHS = 0;
    v23 = 16 * Matrix->structure.columnCount * *(&Matrix->structure.blockSize + 2);
  }

  if (rowCount >= columnCount)
  {
    v24 = columnCount;
  }

  else
  {
    v24 = rowCount;
  }

  *&retstr[1].status = v23;
  retstr->solveWorkspaceRequiredStatic = sub_236796F24(v14, v24 * v17, workspaceSize_Float, *&symbolicFactor[1].status, workspaceSize_Float, options, factorStorage);

  _SparseRefactorQR_Double(Matrix, retstr, v25, v6);
  return result;
}

uint64_t sub_236796F24(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7)
{
  if (!a7)
  {
    a7 = (*(a5 + 24))(a4);
    if (!a7)
    {
      return a7;
    }
  }

  v14 = a7 + a4;
  v15 = (a7 + 71);
  v16 = (a7 + 71) & 0xFFFFFFFFFFFFFFF8;
  if (a7 + a4 < v16 || (v17 = a6[1], *a7 = *a6, *(a7 + 16) = v17, *(a7 + 40) = 0, v15 = (a7 + 40), *(a7 + 32) = 1, *(a7 + 48) = 0, *(a7 + 56) = 0, v7 = *(a3 + 88), v18 = v16 + 8 * v7, v18 > v14) || (*v15 = v16, v8 = v18 + 8 * a2, v8 > v14))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(a7 + 48) = v18;
  if (a1 == 40)
  {
    v19 = (v8 + 8 * *(*(a3 + 104) + 8 * v7)) & 0xFFFFFFFFFFFFFFF8;
    if (v14 >= v19)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_9:
  v19 = v8;
  v8 = 0;
LABEL_10:
  *(a7 + 56) = v8;
  if (v7 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = (*(a3 + 120) + 8 * v20);
      v22 = (*(a3 + 104) + 8 * v20);
      v23 = (*(a3 + 96) + 4 * v20);
      *(*v15 + 8 * v20) = v19;
      v24 = v20 + 1;
      v25 = v22[1] - *v22;
      v26 = v23[1] - *v23;
      v27 = v21[1] - *v21;
      if (a1 != 40)
      {
        v27 = v26;
      }

      v19 += 8 * v25 * v27;
      v20 = v24;
    }

    while (v7 != v24);
  }

  return a7;
}

void _SparseRefactorQR_Double(const SparseMatrix_Double *Matrix, SparseOpaqueFactorization_Double *Factorization, const SparseNumericFactorOptions *nfoptions, void *workspace)
{
  v6 = Matrix;
  Factorization->status = SparseInternalError;
  workspaceSize_Float = Factorization->symbolicFactorization.workspaceSize_Float;
  v8 = (*&Matrix->structure.attributes >> 2) & 3;
  if (v8 > 1)
  {
    v11 = Factorization->symbolicFactorization.workspaceSize_Float;
    if (v8 == 2)
    {
      v10 = sub_236797E48(Matrix, v11);
      if (!v10)
      {
        return;
      }
    }

    else
    {
      v10 = sub_2367982B4(&Matrix->structure.rowCount, v11);
      if (!v10)
      {
        return;
      }
    }
  }

  else if (v8)
  {
    v10 = sub_236797AE4(Matrix, Factorization->symbolicFactorization.workspaceSize_Float);
    if (!v10)
    {
      return;
    }
  }

  else
  {
    if (*(workspaceSize_Float + 53) != 1)
    {
      v12 = 0;
      goto LABEL_13;
    }

    v9 = *&Matrix->structure.rowIndices;
    v16 = *&Matrix->structure.rowCount;
    v17 = v9;
    data = Matrix->data;
    v10 = sub_2367977D0(&v16, workspaceSize_Float);
    if (!v10)
    {
      return;
    }
  }

  v6 = v10;
  v12 = 1;
LABEL_13:
  data = 0;
  v16 = 0u;
  v17 = 0u;
  if (*(workspaceSize_Float + 52))
  {
    v13 = *&v6->structure.rowIndices;
    v16 = *&v6->structure.rowCount;
    v17 = v13;
    data = v6->data;
    v14 = workspace;
  }

  else
  {
    sub_236794D84(&v6->structure.rowCount, workspace, &v16);
    v15 = v6->structure.columnStarts[v6->structure.columnCount];
    v14 = (workspace + 8 * v6->structure.rowCount + 8 * v15 * BYTE12(v17) * BYTE12(v17) + 4 * v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  }

  Factorization->status = sub_2367986DC(BYTE1(Factorization->symbolicFactorization.factorization), &v16, workspaceSize_Float, Factorization->solveWorkspaceRequiredStatic, v14, workspace + Factorization->symbolicFactorization.factorSize_Float - v14);
  if (v12)
  {
    (*(workspaceSize_Float + 32))(v6);
  }
}

SparseOpaqueFactorization_Double *__cdecl _SparseFactorQR_Double(SparseOpaqueFactorization_Double *__return_ptr retstr, SparseFactorization_t factorType, const SparseMatrix_Double *Matrix, const SparseSymbolicFactorOptions *sfoptions, const SparseNumericFactorOptions *nfoptions)
{
  v8 = factorType;
  v66 = *MEMORY[0x277D85DE8];
  *&retstr->status = 0u;
  *&retstr->symbolicFactorization.columnCount = 0u;
  *&retstr[1].status = 0;
  *&retstr->userFactorStorage = 0u;
  *&retstr->solveWorkspaceRequiredStatic = 0u;
  *&retstr->symbolicFactorization.workspaceSize_Float = 0u;
  *&retstr->symbolicFactorization.factorSize_Float = 0u;
  retstr->status = SparseInternalError;
  rowCount = Matrix->structure.rowCount;
  columnCount = Matrix->structure.columnCount;
  retstr->symbolicFactorization.status = SparseInternalError;
  retstr->symbolicFactorization.rowCount = rowCount;
  retstr->symbolicFactorization.columnCount = columnCount;
  attributes = Matrix->structure.attributes;
  retstr->symbolicFactorization.attributes = (*&Matrix->structure.attributes & 1);
  LOBYTE(retstr->symbolicFactorization.factorization) = *(&Matrix->structure.blockSize + 2);
  BYTE1(retstr->symbolicFactorization.factorization) = factorType;
  v13 = (attributes >> 2) & 3;
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      result = sub_236797E48(Matrix, sfoptions);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_2367982B4(&Matrix->structure.rowCount, sfoptions);
      if (!result)
      {
        return result;
      }
    }
  }

  else if (v13)
  {
    result = sub_236797AE4(Matrix, sfoptions);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v14 = *&Matrix->structure.rowIndices;
    *__str = *&Matrix->structure.rowCount;
    *&__str[16] = v14;
    *&__str[32] = Matrix->data;
    result = sub_2367977D0(__str, sfoptions);
    if (!result)
    {
      return result;
    }
  }

  v16 = result;
  v17 = 8 * rowCount + 16;
  v18 = (sfoptions->malloc)(v17 + 4 * *(*&result->symbolicFactorization.status + 8 * columnCount));
  if (!v18)
  {
    if (sfoptions->reportError)
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld.");
LABEL_21:
      (sfoptions->reportError)(__str);
      return (sfoptions->free)(v16);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23672EDD0();
    }

LABEL_31:
    _SparseTrap();
  }

  v19 = v18;
  memset(v64, 0, sizeof(v64));
  sub_236795734(v16, v18, v64);
  v20 = sub_2367958B0(v8, v16, v64, sfoptions, retstr);
  (sfoptions->free)(v19);
  if (v20)
  {
    v59 = BYTE4(v16->symbolicFactorization.factorization);
    if (v16->status >= *&v16->attributes)
    {
      status = *&v16->attributes;
    }

    else
    {
      status = v16->status;
    }

    if (sub_236796BCC(v8, v16, v20, &retstr->symbolicFactorization.workspaceSize_Double, &retstr->symbolicFactorization.factorSize_Float))
    {
      goto LABEL_17;
    }

    if (v8 == 40)
    {
      v23 = (v20 + 72);
      v24 = *(v20 + 88);
      v25 = *(*(v20 + 104) + 8 * v24);
    }

    else
    {
      v25 = 0;
      v23 = (v20 + 80);
      LODWORD(v24) = *(v20 + 88);
    }

    v26 = v24 + 1;
    v27 = v24 + 1;
    if (v24 >= -1)
    {
      v28 = v26;
    }

    else
    {
      v28 = -v26;
    }

    v29 = 8 * v28;
    if (v24 < -1)
    {
      v29 = -8 * v28;
    }

    v30 = __CFADD__(v29, 96);
    v31 = v29 + 96;
    v32 = v30;
    if (v24 < -1)
    {
      goto LABEL_17;
    }

    if (v28 >> 61)
    {
      goto LABEL_17;
    }

    if (v32)
    {
      goto LABEL_17;
    }

    v33 = 8 * v27 + 96;
    if ((8 * v27) >= 0xFFFFFFFFFFFFFFA0)
    {
      goto LABEL_17;
    }

    v34 = v59 * status;
    v35 = *v23;
    v30 = __CFADD__(v35, v25);
    v36 = v35 + v25;
    v37 = v30;
    v30 = __CFADD__(v34, v36);
    v38 = v34 + v36;
    v39 = v30;
    if (v37 || v39)
    {
      goto LABEL_17;
    }

    v40 = *(v20 + 176);
    if (v40 >= 0)
    {
      v41 = *(v20 + 176);
    }

    else
    {
      v41 = -v40;
    }

    v42 = 2 * v41;
    if (v40 < 0)
    {
      v42 = -v42;
    }

    v30 = __CFADD__(v38, v42);
    v43 = v38 + v42;
    v44 = v30;
    if (v40 < 0 || v44 || ((v30 = __CFADD__(v31, 4 * v43), v45 = v31 + 4 * v43, !v30) ? (v46 = 0) : (v46 = 1), (retstr->symbolicFactorization.factorSize_Double = v45, v43 >> 62) || (v46 & 1) != 0 || (!__CFADD__(v33, 8 * v43) ? (v47 = 0) : (v47 = 1), (*&retstr->userFactorStorage = v33 + 8 * v43, v43 >> 61) || v47)))
    {
LABEL_17:
      reportError = sfoptions->reportError;
      if (!reportError)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23672ED88();
        }

        _SparseTrap();
      }

      memset(&__str[70], 0, 186);
      strcpy(__str, "Overflow calculating workspace required for numeric QR factorization.");
      (reportError)(__str);
      (sfoptions->free)(v20);
      return (sfoptions->free)(v16);
    }

    retstr->symbolicFactorization.workspaceSize_Float = v20;
    retstr->symbolicFactorization.status = SparseStatusOK;
    factorSize_Float = retstr->symbolicFactorization.factorSize_Float;
    v60 = v33 + 8 * v43;
    v48 = (sfoptions->malloc)();
    if (v48)
    {
      workspaceSize_Float = 0;
      v61 = 0u;
      v62 = 0u;
      if (*(v20 + 52))
      {
        v49 = *&v16->symbolicFactorization.columnCount;
        v61 = *&v16->status;
        v62 = v49;
        workspaceSize_Float = v16->symbolicFactorization.workspaceSize_Float;
        v50 = v48;
        v51 = v48;
      }

      else
      {
        v57 = v48;
        sub_236794D84(v16, v48, &v61);
        v52 = *(*&v16->symbolicFactorization.status + 8 * columnCount);
        v53 = v57 + v17;
        v50 = v57;
        v51 = &v53[8 * v52 * BYTE12(v62) * BYTE12(v62) + 15 + 4 * v52] & 0xFFFFFFFFFFFFFFF8;
      }

      v54 = sub_236796F24(v8, v34, v20, v60, v20, nfoptions, 0);
      retstr->solveWorkspaceRequiredStatic = v54;
      if (v54)
      {
        retstr->status = sub_2367986DC(v8, &v61, v20, v54, v51, v50 + factorSize_Float - v51);
        if (v8 == 40)
        {
          if (*&v16->attributes <= v16->status)
          {
            v55 = v16->status;
          }

          else
          {
            v55 = *&v16->attributes;
          }

          sub_23678B078(v55 * BYTE4(v16->symbolicFactorization.factorization), v20, &retstr->solveWorkspaceRequiredPerRHS, &retstr[1]);
          v56 = *&retstr[1].status + 8 * *(&Matrix->structure.blockSize + 2) * (2 * v55);
        }

        else
        {
          retstr->solveWorkspaceRequiredPerRHS = 0;
          v56 = 8 * *&v16->attributes * BYTE4(v16->symbolicFactorization.factorization);
        }

        *&retstr[1].status = v56;
      }

      else
      {
        if (!sfoptions->reportError)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_23672ECA8();
          }

          _SparseTrap();
        }

        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Failed to allocate space for QR factors of size %ld.", v60);
        (sfoptions->reportError)(__str);
      }

      (sfoptions->free)(v50);
      return (sfoptions->free)(v16);
    }

    if (sfoptions->reportError)
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld for QR Numeric factorization.");
      goto LABEL_21;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23672ED18();
    }

    goto LABEL_31;
  }

  return (sfoptions->free)(v16);
}

uint64_t sub_2367977D0(int *a1, uint64_t a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = (*(a2 + 24))(12 * *a1);
  v5 = *a1;
  v38 = v4;
  v6 = (v4 + 8 * v5);
  bzero(v6, 4 * v5);
  v7 = a1[1];
  __n = *a1;
  v8 = *(*(a1 + 1) + 8 * v7);
  v37 = *(a1 + 28);
  v9 = v37 * v37;
  v10 = 8 * v7 + 8;
  v11 = v10 + 4 * v8 + 8 * v8 * v9 + 64;
  v12 = (*(a2 + 24))(v11);
  v13 = v12;
  if (v12)
  {
    v35 = a2;
    v14 = v12 + v11;
    v15 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
    if (v12 + v11 < v15 || (v16 = v15 + v10, v15 + v10 > v14) || (v17 = (v16 + 4 * v8 + 7) & 0xFFFFFFFFFFFFFFF8, v14 < v17) || v17 + 8 * v8 * v9 > v14)
    {
      __break(1u);
    }

    v18 = *(a1 + 28);
    v19 = a1[6];
    *v12 = __n;
    *(v12 + 4) = v7;
    *(v12 + 8) = v15;
    *(v12 + 16) = v16;
    *(v12 + 24) = v19;
    *(v12 + 28) = v18;
    *(v12 + 32) = v17;
    v20 = a1[1];
    if (v20 < 1)
    {
      v22 = 0;
      v33 = v7;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = *(a1 + 1);
      v24 = 8 * v37 * v37;
      do
      {
        v25 = v21;
        *(*(v13 + 8) + 8 * v21) = v22;
        v26 = *(v23 + 8 * v21++);
        if (v26 < *(v23 + 8 * v21))
        {
          v27 = v24 * v26;
          do
          {
            v28 = *(*(a1 + 2) + 4 * v26);
            if ((v28 & 0x80000000) == 0 && v28 < *a1)
            {
              if (v25 >= v6[v28])
              {
                *(*(v13 + 16) + 4 * v22) = v28;
                v6[v28] = v21;
                *(v38 + 8 * v28) = v22;
                memcpy((*(v13 + 32) + 8 * v22 * v9), (*(a1 + 4) + 8 * v26 * v9), 8 * v9);
                ++v22;
                v23 = *(a1 + 1);
              }

              else if (v37)
              {
                v29 = (*(v13 + 32) + 8 * *(v38 + 8 * v28) * v9);
                v30 = (*(a1 + 4) + v27);
                v31 = v37 * v37;
                do
                {
                  v32 = *v30++;
                  *v29 = v32 + *v29;
                  ++v29;
                  --v31;
                }

                while (v31);
              }
            }

            ++v26;
            v27 += v24;
          }

          while (v26 < *(v23 + 8 * v21));
          v20 = a1[1];
        }
      }

      while (v21 < v20);
      v15 = *(v13 + 8);
      v33 = *(v13 + 4);
    }

    *(v15 + 8 * v33) = v22;
    (*(v35 + 32))(v38);
  }

  else
  {
    if (!*(a2 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    *__str = 0u;
    v40 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v10 + 4 * v8 + 8 * v8 * v9 + 64);
    (*(a2 + 40))(__str);
  }

  return v13;
}

uint64_t sub_236797AE4(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  v5 = *(*(a1 + 8) + 8 * v4);
  v6 = *(a1 + 28);
  v7 = 8 * v4 + 8;
  v41 = (v6 * v6);
  v42 = v4;
  v8 = v7 + 4 * v5 + 8 * v5 * v41 + 64;
  result = (*(a2 + 24))(v8);
  if (result)
  {
    v10 = result + v8;
    v11 = (result + 47) & 0xFFFFFFFFFFFFFFF8;
    if (result + v8 < v11 || (v12 = v11 + v7, v11 + v7 > v10) || (v13 = (v12 + 4 * v5 + 7) & 0xFFFFFFFFFFFFFFF8, v10 < v13) || v13 + 8 * v5 * v41 > v10)
    {
      __break(1u);
    }

    v14 = *(a1 + 24);
    v15 = v42;
    *result = v42;
    *(result + 4) = v42;
    *(result + 8) = v11;
    *(result + 16) = v12;
    *(result + 24) = v14;
    *(result + 28) = v6;
    *(result + 32) = v13;
    *(result + 24) = v14 & 0xFFF3;
    if (v42 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = (v6 * v6);
      __n = 8 * v41;
      v40 = result;
      v19 = *(a1 + 8);
      v20 = 8 * v6;
      v21 = 8 * v6 + 8;
      v22 = 8 * v6 * v6;
      while (1)
      {
        v23 = v16;
        *(*(result + 8) + 8 * v16) = v17;
        v24 = *(v19 + 8 * v16++);
        if (v24 < *(v19 + 8 * v16))
        {
          break;
        }

LABEL_35:
        if (v16 == v15)
        {
          v11 = *(result + 8);
          goto LABEL_40;
        }
      }

      v25 = v22 * v24;
      v43 = v23;
      while (1)
      {
        v26 = *(*(a1 + 16) + 4 * v24);
        v27 = *(a1 + 24);
        if ((v27 & 2) != 0 && v23 > v26)
        {
          goto LABEL_34;
        }

        v28 = (v27 >> 1) & 1;
        if (v23 >= v26)
        {
          v28 = 1;
        }

        if (v28 != 1 || v26 >= v15)
        {
          goto LABEL_34;
        }

        *(*(result + 16) + 4 * v17) = v26;
        v30 = *(a1 + 32);
        v31 = (*(result + 32) + 8 * v17 * v18);
        v44 = v17 + 1;
        if (v23 == v26)
        {
          bzero(v31, __n);
          if ((*(a1 + 24) & 2) != 0)
          {
            if (v6)
            {
              v36 = 0;
              v37 = v30 + v25;
              result = v40;
              v15 = v42;
              v23 = v43;
              v17 = v44;
              do
              {
                v38 = 0;
                do
                {
                  *&v31[8 * v38] = *(v37 + 8 * v38);
                  ++v38;
                }

                while (v36 + v38 < v6);
                ++v36;
                v31 += v21;
                v37 += v21;
              }

              while (v36 != v6);
              goto LABEL_33;
            }
          }

          else if (v6)
          {
            v32 = 0;
            v33 = v30 + v25;
            v34 = 1;
            result = v40;
            v15 = v42;
            v23 = v43;
            v17 = v44;
            do
            {
              v35 = 0;
              do
              {
                *&v31[8 * v35] = *(v33 + 8 * v35);
                ++v35;
              }

              while (v34 != v35);
              ++v32;
              ++v34;
              v31 += v20;
              v33 += v20;
            }

            while (v32 != v6);
LABEL_33:
            v18 = (v6 * v6);
            goto LABEL_34;
          }
        }

        else
        {
          memcpy(v31, (v30 + 8 * v24 * v18), __n);
        }

        result = v40;
        v18 = (v6 * v6);
        v15 = v42;
        v23 = v43;
        v17 = v44;
LABEL_34:
        ++v24;
        v19 = *(a1 + 8);
        v25 += v22;
        if (v24 >= *(v19 + 8 * v16))
        {
          goto LABEL_35;
        }
      }
    }

    v17 = 0;
LABEL_40:
    *(v11 + 8 * v15) = v17;
  }

  else
  {
    if (!*(a2 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    *__str = 0u;
    v46 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v8);
    (*(a2 + 40))(__str);
    return 0;
  }

  return result;
}

void *sub_236797E48(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v82 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  v5 = *(a1 + 28);
  v6 = 8 * v4 + 8;
  v63 = v4;
  v64 = (v5 * v5);
  v7 = *(*(a1 + 8) + 8 * v4) + v4;
  v8 = v6 + 4 * v7 + 8 * v7 * v64 + 64;
  v9 = (*(a2 + 24))(v8);
  v10 = v9;
  if (v9)
  {
    v11 = v9 + v8;
    v12 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
    if (v9 + v8 < v12 || (v13 = v12 + v6, LODWORD(v14) = v63, v12 + v6 > v11) || (v15 = (v13 + 4 * v7 + 7) & 0xFFFFFFFFFFFFFFF8, v11 < v15) || v15 + 8 * v7 * v64 > v11)
    {
      __break(1u);
    }

    v16 = *(v3 + 24);
    *v9 = v63;
    *(v9 + 4) = v63;
    *(v9 + 8) = v12;
    *(v9 + 16) = v13;
    *(v9 + 24) = v16;
    *(v9 + 28) = v5;
    *(v9 + 32) = v15;
    *(v9 + 24) = v16 & 0xFFF3;
    if (v63 < 1)
    {
      v18 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      __n = 8 * v64;
      v19 = 8 * v5;
      v20 = 16 * v5 + 16;
      v21 = 8 * v5 * v5;
      v22 = 8 * v5 + 8;
      v65 = v10;
      v61 = vdupq_n_s64(v5 - 1);
      v60 = vdupq_n_s64(2uLL);
      do
      {
        v23 = v17;
        v24 = v10[2];
        *(v10[1] + 8 * v17) = v18;
        *(v24 + 4 * v18) = v17;
        v25 = v10[4];
        v26 = v18;
        bzero((v25 + 8 * v18 * v64), __n);
        if (v5)
        {
          v27 = (v5 + 1) & 0x1FE;
          v28 = xmmword_23681F920;
          do
          {
            v29 = vmovn_s64(vcgeq_u64(v61, v28));
            if (v29.i8[0])
            {
              *(v25 + v21 * v26) = 0x3FF0000000000000;
            }

            if (v29.i8[4])
            {
              *(v25 + v5 * (v19 * v26 + 8) + 8) = 0x3FF0000000000000;
            }

            v28 = vaddq_s64(v28, v60);
            v25 += v20;
            v27 -= 2;
          }

          while (v27);
        }

        v18 = v26 + 1;
        v30 = *(v3 + 8);
        v31 = *(v30 + 8 * v23);
        v17 = v23 + 1;
        if (v31 >= *(v30 + 8 * (v23 + 1)))
        {
          v14 = v63;
        }

        else
        {
          v32 = v21 * v31;
          v33 = v21 * v31 + 8;
          v14 = v63;
          do
          {
            v34 = *(*(v3 + 16) + 4 * v31);
            v35 = *(v3 + 24);
            if ((v35 & 2) == 0 || v23 <= v34)
            {
              v36 = v23 >= v34 || (v35 >> 1) & 1;
              if (v36 && v34 < v14)
              {
                v38 = *(v3 + 32);
                if (v23 == v34)
                {
                  v39 = v65[4];
                  v40 = *(v65[1] + 8 * v23);
                  if ((v35 & 2) != 0)
                  {
                    if (v5)
                    {
                      v41 = 0;
                      v42 = v39 + v21 * v40 + 8;
                      v43 = (v38 + v33);
                      v44 = v5 - 1;
                      do
                      {
                        if (++v41 < v5)
                        {
                          v45 = v44;
                          v46 = v43;
                          v47 = v42;
                          do
                          {
                            v48 = *v46++;
                            *v47++ = v48;
                            --v45;
                          }

                          while (v45);
                        }

                        v42 += v22;
                        v43 = (v43 + v22);
                        --v44;
                      }

                      while (v41 != v5);
                    }
                  }

                  else if (v5)
                  {
                    v55 = 0;
                    v56 = v39 + 8 * v40 * v64;
                    v57 = v38 + v32;
                    do
                    {
                      if (v55)
                      {
                        for (i = 0; i != v55; ++i)
                        {
                          *(v56 + 8 * i) = *(v57 + 8 * i);
                        }
                      }

                      ++v55;
                      v56 += v19;
                      v57 += v19;
                    }

                    while (v55 != v5);
                  }
                }

                else
                {
                  *(v65[2] + 4 * v18) = v34;
                  v49 = v22;
                  v50 = v23;
                  v51 = v21;
                  v52 = v3;
                  v53 = v17;
                  v54 = v18;
                  memcpy((v65[4] + 8 * v18 * v64), (v38 + 8 * v31 * v64), __n);
                  v17 = v53;
                  v3 = v52;
                  v21 = v51;
                  v23 = v50;
                  v22 = v49;
                  v19 = 8 * v5;
                  v14 = v63;
                  v18 = v54 + 1;
                  v30 = *(v3 + 8);
                }
              }
            }

            ++v31;
            v32 += v21;
            v33 += v21;
          }

          while (v31 < *(v30 + 8 * v17));
        }

        v10 = v65;
        v20 = 16 * v5 + 16;
      }

      while (v17 != v14);
      v12 = v65[1];
    }

    *(v12 + 8 * v14) = v18;
  }

  else
  {
    if (!*(a2 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    *__str = 0u;
    v67 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v8);
    (*(a2 + 40))(__str);
  }

  return v10;
}

uint64_t sub_2367982B4(__int128 *a1, uint64_t a2)
{
  v81 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  v5 = *(a1 + 28);
  v6 = (v5 * v5);
  v7 = *(*(a1 + 1) + 8 * v4);
  v8 = 8 * (v4 + v7) + 16;
  v9 = 16 * v7;
  v10 = 16 * v7 * v6;
  v11 = v10 + v8 + 72;
  v12 = (*(a2 + 24))(v11);
  if (!v12)
  {
    if (*(a2 + 40))
    {
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      *__str = 0u;
      v66 = 0u;
      snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld", v10 + v8 + 72);
LABEL_12:
      (*(a2 + 40))(__str);
      return 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  v13 = v12;
  v61 = v9;
  v62 = a2;
  v14 = v12 + v11;
  v15 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
  if (v12 + v11 < v15)
  {
    goto LABEL_57;
  }

  v16 = (v15 + v10);
  if (v16 > v14)
  {
    goto LABEL_57;
  }

  v17 = *(a1 + 28);
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 24) = 0;
  *(v12 + 16) = 0;
  *(v12 + 28) = v17;
  *(v12 + 29) = 0;
  *(v12 + 31) = 0;
  *(v12 + 32) = v15;
  v18 = (*(a2 + 24))(v61);
  if (!v18)
  {
    if (*(a2 + 40))
    {
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      *__str = 0u;
      v66 = 0u;
      snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld", v61);
      goto LABEL_12;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_54:
      sub_23672EEB0();
    }

LABEL_55:
    _SparseTrap();
  }

  v19 = v18;
  v20 = v16 + v8;
  if ((*(a1 + 24) & 2) != 0)
  {
    if (v20 <= v14)
    {
      v22 = a1[1];
      v63 = *a1;
      v64 = v22;
      sub_2367861D0(&v63, 0, v16, v18, 0, __str);
      goto LABEL_15;
    }

LABEL_57:
    __break(1u);
  }

  if (v20 > v14)
  {
    goto LABEL_57;
  }

  v21 = a1[1];
  v63 = *a1;
  v64 = v21;
  sub_236785FB0(&v63, 0, v16, v18, 0, __str);
LABEL_15:
  v23 = v66;
  *v13 = *__str;
  *(v13 + 16) = v23;
  if (v4 >= 1)
  {
    v24 = 0;
    v25 = *(v13 + 8);
    v26 = *v25;
    v27 = 8 * v5 * v5;
    v28 = 8 * v5;
    v29 = 8 * v5 + 8;
    do
    {
      v30 = v24 + 1;
      v31 = v25[v24 + 1];
      if (v26 < v31)
      {
        v32 = *(v13 + 16);
        v33 = *(a1 + 4);
        v34 = *(v13 + 32) + v27 * v26;
        do
        {
          v35 = *(v19 + 8 * v26);
          if (v35 >= 0)
          {
            v36 = *(v19 + 8 * v26);
          }

          else
          {
            v36 = -v35;
          }

          if (v24 == *(v32 + 4 * v26))
          {
            if ((*(a1 + 24) & 2) != 0)
            {
              if (v5)
              {
                v54 = 0;
                if (((v35 & 0x4000000000000000) != 0) ^ __OFSUB__(v35, -v35) | (v35 == -v35))
                {
                  v35 = -v35;
                }

                v55 = v33 + v27 * (v35 - 1);
                v56 = v34;
                do
                {
                  v57 = 0;
                  v58 = 0;
                  do
                  {
                    v59 = *(v55 + 8 * v57);
                    *(v56 + 8 * v57) = v59;
                    *(v56 + v58) = v59;
                    v58 += v28;
                    ++v57;
                  }

                  while (v54 + v57 < v5);
                  ++v54;
                  v56 += v29;
                  v55 += v29;
                }

                while (v54 != v5);
              }
            }

            else if (v5)
            {
              v37 = 0;
              if (((v35 & 0x4000000000000000) != 0) ^ __OFSUB__(v35, -v35) | (v35 == -v35))
              {
                v35 = -v35;
              }

              v38 = v33 + v27 * (v35 - 1);
              v39 = v34;
              v40 = v34;
              v41 = 1;
              do
              {
                v42 = 0;
                v43 = v40;
                do
                {
                  v44 = *(v38 + 8 * v42);
                  *v43 = v44;
                  *(v39 + 8 * v42++) = v44;
                  v43 = (v43 + v28);
                }

                while (v41 != v42);
                ++v37;
                ++v41;
                ++v40;
                v39 += v28;
                v38 += v28;
              }

              while (v37 != v5);
            }
          }

          else if (v5)
          {
            v45 = 0;
            v46 = 0;
            v47 = v33 + 8 * (v36 - 1) * v6;
            v48 = v34;
            do
            {
              v49 = v5;
              v50 = v46;
              v51 = v45;
              v52 = v48;
              do
              {
                if (v35 >= 0)
                {
                  v53 = v51;
                }

                else
                {
                  v53 = v50;
                }

                *v52++ = *(v47 + 8 * v53);
                ++v51;
                v50 += v5;
                --v49;
              }

              while (v49);
              ++v46;
              v48 = (v48 + v28);
              v45 += v5;
            }

            while (v46 != v5);
          }

          ++v26;
          v34 += v27;
        }

        while (v26 != v31);
      }

      v26 = v31;
      ++v24;
    }

    while (v30 != v4);
  }

  (*(v62 + 32))(v19);
  return v13;
}

uint64_t sub_2367986DC(int a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = *(a2 + 28);
  v13 = ilaenv_NEWLAPACK();
  if (a1 == 40)
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 + 1;
  }

  v16 = a5 + a6;
  v17 = *(a3 + 88);
  v18 = (a5 + 8 * (*(a3 + 184) + v17) + 15) & 0xFFFFFFFFFFFFFFF8;
  if (a5 + a6 < v18 || (v14 = (v18 + 4 * v11 * v12 + 7) & 0xFFFFFFFFFFFFFFF8, v16 < v14) || (v120 = 8 * v15 * *(a3 + 176), v126 = (v14 + v120), v14 + v120 > v16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a1 != 40)
  {
    if (&v126[8 * *(a3 + 168)] <= v16)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_10:
  v126 = 0;
LABEL_11:
  if (v17 < 1)
  {
    return 0;
  }

  v118 = v14;
  v19 = 0;
  v20 = (a5 + 8 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v128 = a5;
  v119 = a1;
  while (1)
  {
    if (a1 == 40)
    {
      v126 = *(*(a4 + 40) + 8 * v19);
    }

    v22 = *(a3 + 96);
    v21 = *(a3 + 104);
    v23 = *(v21 + 8 * (v19 + 1));
    v24 = *(v21 + 8 * v19);
    v25 = *(a3 + 120);
    v26 = *(v25 + 8 * (v19 + 1));
    v27 = *(v25 + 8 * v19);
    v127 = v19 + 1;
    v122 = *(v22 + 4 * v19);
    v123 = *(v22 + 4 * (v19 + 1));
    v28 = *(a2 + 28);
    v29 = *a2;
    if (v23 > v24)
    {
      v30 = 0;
      v31 = *(a3 + 112) + 4 * v24;
      do
      {
        *(v18 + 4 * *(v31 + 4 * v30)) = v30;
        ++v30;
      }

      while (v23 - v24 != v30);
    }

    v32 = v23 - v24;
    v33 = v32;
    v124 = v26 - v27;
    v125 = v32;
    bzero(v126, (v26 - v27) * 8 * v32);
    v34 = *(a3 + 120);
    v35 = *(v34 + 8 * v19);
    v36 = *(v34 + 8 * v127);
    if (v35 < v36)
    {
      v37 = *(a3 + 128);
      v38 = *(a3 + 136);
      if (v28 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v28;
      }

      v40 = 8 * (v28 * v28);
      v41 = v126;
      do
      {
        v42 = *(v37 + 8 * v35);
        v43 = v42 / v38;
        v44 = v42 % v38;
        if ((v42 / v38))
        {
          v45 = (v43 << 32) - 0x100000000;
          v46 = *(a3 + 104);
          v47 = *(v46 + 8 * v43);
          v48 = v45 >> 29;
          v49 = *(v46 + (v45 >> 29));
          v50 = *(*(a3 + 96) + 4 * v43) - *(*(a3 + 96) + (v45 >> 30));
          v51 = v49 + v44 + v50;
          if (v51 < v47)
          {
            v52 = *(a3 + 112);
            v53 = (*(v128 + v48) + (8 * (v47 - v49) - 8 * v50 + 8) * v44);
            do
            {
              v54 = *v53++;
              *&v41[8 * *(v18 + 4 * *(v52 + 4 * v51++))] = v54;
            }

            while (v51 < v47);
          }
        }

        else
        {
          v55 = v44 / v28;
          v56 = (*(a2 + 1) + 8 * (v44 / v28));
          v57 = *v56;
          v58 = v56[1];
          if ((a2[6] & 0xC) == 4)
          {
            if (v57 < v58)
            {
              v59 = *(a2 + 2);
              v60 = (v55 * v28);
              v61 = v40 * v57;
              do
              {
                v62 = *(v59 + 4 * v57);
                if ((v62 & 0x80000000) == 0 && v62 < v29)
                {
                  v63 = a2[6];
                  v64 = v63 & 2;
                  if ((v55 <= v62 || v64 == 0) && (v55 >= v62 || v64 != 0))
                  {
                    v67 = *(a2 + 4);
                    v68 = v44 % v28;
                    v69 = v44 % v28 * v28;
                    v70 = *(a3 + 200);
                    if (v55 == v62)
                    {
                      if (v70)
                      {
                        v71 = (v70 + v60);
                        v72 = (v18 + 4 * v60);
                        v73 = v39;
                        v74 = v67 + 8 * v69;
                        do
                        {
                          v75 = *v71++;
                          if ((v75 & 1) == 0)
                          {
                            *&v41[8 * *v72] = *(v74 + v61);
                          }

                          ++v72;
                          v74 += 8;
                          --v73;
                        }

                        while (v73);
                      }

                      else if ((v63 & 2) != 0)
                      {
                        v82 = v68;
                        v83 = v67 + 8 * v69 + 8 * v68;
                        do
                        {
                          *&v41[8 * *(v18 + 4 * v60 + 4 * v82++)] = *(v83 + v61);
                          v83 += 8;
                        }

                        while (v82 < v28);
                      }

                      else if ((v68 & 0x80000000) == 0)
                      {
                        v87 = (v68 + 1);
                        v88 = v67 + 8 * v69;
                        v89 = (v18 + 4 * v60);
                        do
                        {
                          v90 = *v89++;
                          *&v41[8 * v90] = *(v88 + v61);
                          v88 += 8;
                          --v87;
                        }

                        while (v87);
                      }
                    }

                    else
                    {
                      v76 = (v62 * v28);
                      v77 = (v18 + 4 * v76);
                      if (v70)
                      {
                        v78 = (v70 + v76);
                        v79 = (v67 + v61 + 8 * v69);
                        v80 = v39;
                        do
                        {
                          v81 = *v78++;
                          if ((v81 & 1) == 0)
                          {
                            *&v41[8 * *v77] = *v79;
                          }

                          ++v77;
                          ++v79;
                          --v80;
                        }

                        while (v80);
                      }

                      else
                      {
                        v84 = v67 + 8 * v69;
                        v85 = v39;
                        do
                        {
                          v86 = *v77++;
                          *&v41[8 * v86] = *(v84 + v61);
                          v84 += 8;
                          --v85;
                        }

                        while (v85);
                      }
                    }
                  }
                }

                ++v57;
                v61 += v40;
              }

              while (v57 != v58);
            }
          }

          else if (v57 < v58)
          {
            v91 = *(a2 + 2);
            v92 = v40 * v57 + 8 * v28 * (v44 % v28);
            do
            {
              v93 = *(v91 + 4 * v57);
              if ((v93 & 0x80000000) == 0 && v93 < v29)
              {
                v94 = *(a2 + 4);
                v95 = *(a3 + 200);
                v96 = (v93 * v28);
                v97 = (v18 + 4 * v96);
                if (v95)
                {
                  v98 = (v95 + v96);
                  v99 = (v94 + v92);
                  v100 = v39;
                  do
                  {
                    v101 = *v98++;
                    if ((v101 & 1) == 0)
                    {
                      *&v41[8 * *v97] = *v99;
                    }

                    ++v97;
                    ++v99;
                    --v100;
                  }

                  while (v100);
                }

                else
                {
                  v102 = v39;
                  do
                  {
                    v103 = *v97++;
                    *&v41[8 * v103] = *(v94 + v92);
                    v94 += 8;
                    --v102;
                  }

                  while (v102);
                }
              }

              ++v57;
              v92 += v40;
            }

            while (v57 != v58);
          }
        }

        v41 += 8 * v33;
        ++v35;
      }

      while (v35 != v36);
    }

    v104 = *(a3 + 152);
    v105 = *(v104 + 4 * v127);
    if (v105 > *(v104 + 4 * v19))
    {
      do
      {
        v106 = v105 - 1;
        v107 = *(*(a3 + 160) + 4 * v105 - 4);
        v108 = *(*(a3 + 96) + 4 * (v107 + 1)) - *(*(a3 + 96) + 4 * v107);
        v109 = *(*(a3 + 104) + 8 * (v107 + 1)) - *(*(a3 + 104) + 8 * v107);
        v110 = *(*(a3 + 120) + 8 * (v107 + 1)) - *(*(a3 + 120) + 8 * v107);
        if (v109 < v110)
        {
          v110 = *(*(a3 + 104) + 8 * (v107 + 1)) - *(*(a3 + 104) + 8 * v107);
        }

        *(v128 + 8 * v107) = 0;
        v20 += 8 * (v110 - v108) * (v108 - v109);
        v105 = v106;
      }

      while (v106 > *(*(a3 + 152) + 4 * v19));
    }

    v111 = v123 - v122;
    a1 = v119;
    if (v125 <= v123 - v122)
    {
      v113 = v20;
      v20 = 0;
    }

    else
    {
      v112 = v125 >= v124 ? v124 : v125;
      *(v128 + 8 * v19) = v20;
      v113 = v20 + 8 * (v112 - v111) * (v125 - (v123 - v122));
    }

    v114 = *(*(a3 + 104) + 8 * v19);
    v115 = *(a3 + 144) + 4 * v114;
    v116 = v119 == 40 ? sub_23670590C(v124, v125, v111, v115, v126, v125, 0, v33, *(a4 + 56) + 8 * v114, v20, v118, v120) : sub_23670590C(v124, v125, v111, v115, v126, v125, *(*(a4 + 40) + 8 * v19), v33, 0, v20, v118, v120);
    if (v116)
    {
      break;
    }

    ++v19;
    v20 = v113;
    if (v127 >= *(a3 + 88))
    {
      return 0;
    }
  }

  return 4294967294;
}

uint64_t sub_236798D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6, int *a7, _DWORD *a8)
{
  *a6 = 0;
  *a7 = 0;
  v8 = *(a2 + 4);
  if (v8 >= 1)
  {
    v9 = *(a2 + 8);
    v10 = 0x7FFFFFFF;
    do
    {
      v11 = v8--;
      v12 = (v9 + 8 * *(a4 + 4 * v8));
      v14 = *v12;
      v13 = v12[1];
      v15 = v13 <= v14;
      v16 = v13 - v14;
      if (!v15)
      {
        v17 = (*(a2 + 16) + 4 * v14);
        do
        {
          v19 = *v17++;
          v18 = v19;
          if ((v19 & 0x80000000) == 0 && v18 < *a2)
          {
            v20 = *(a3 + 4 * v18);
            if (v10 >= v20)
            {
              v10 = v20;
            }
          }

          --v16;
        }

        while (v16);
      }

      if (v11 > *(a2 + 4) + ~*a6 && v8 == v10)
      {
        ++*a6;
      }

      else if (v8 == v10)
      {
        v22 = *a7 + 1;
        *a7 = v22;
        a8[v22] = v8;
      }
    }

    while (v11 > 1);
    LODWORD(v8) = *(a2 + 4);
  }

  *a8 = v8 - *a6;
  *a5 = 0;
  v23 = *a7;
  if (*a7 < 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = 0;
    do
    {
      v25 = v23 - 1;
      if (a8[v23 - 1] - a8[v23] > 1)
      {
        break;
      }

      *a5 = ++v24;
      --v23;
    }

    while ((v25 + 1) > 1);
    v23 = *a7;
  }

  v26 = v23 - v24;
  *a7 = v26;
  if (v26 >= 1)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = a8[v28];
      v30 = v27 + v26;
      a8[v28] = a8[v30];
      a8[v30] = v29;
      ++v28;
      v26 = *a7;
      --v27;
    }

    while (v28 < (*a7 + 1) / 2);
  }

  return 0;
}

SparseOpaquePreconditioner_Double *__cdecl _SparseCreatePreconditioner_Double(SparseOpaquePreconditioner_Double *__return_ptr retstr, SparsePreconditioner_t type, SparseMatrix_Double *A)
{
  if (type <= SparsePreconditionerUser)
  {
    if (type)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_236799B98();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236799BE0();
    }

    _SparseTrap();
  }

  if (type == SparsePreconditionerDiagonal)
  {
    v5 = *(&A->structure.blockSize + 2);
    v6 = A->structure.rowCount * v5;
    v7 = A->structure.columnCount * v5;
    if (v6 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    *&retstr->type = 2;
    result = malloc_type_malloc(8 * v8, 0x100004000313F17uLL);
    v10 = result;
    retstr->mem = result;
    retstr->apply = sub_236799AD8;
    if (v8 >= 1)
    {
      memset_pattern16(result, &unk_23681FAF0, 8 * v8);
    }

    if ((*&A->structure.attributes & 0xC) != 8)
    {
      columnCount = A->structure.columnCount;
      if (columnCount >= 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = *(&A->structure.blockSize + 2);
        columnStarts = A->structure.columnStarts;
        v16 = *columnStarts;
        v17 = 8 * (v14 * v14);
        do
        {
          v18 = v12 + 1;
          v19 = columnStarts[v12 + 1];
          if (v16 < v19)
          {
            result = (v10 + 8 * v13);
            rowIndices = A->structure.rowIndices;
            v21 = v17 * v16;
            do
            {
              if (v12 == rowIndices[v16] && v14 != 0)
              {
                v23 = (A->data + v21);
                v24 = (v10 + 8 * v13);
                v25 = v14;
                do
                {
                  if (*v23 != 0.0)
                  {
                    *v24 = 1.0 / *v23;
                  }

                  v23 += v14 + 1;
                  ++v24;
                  --v25;
                }

                while (v25);
              }

              ++v16;
              v21 += v17;
            }

            while (v16 != v19);
          }

          v13 += v14;
          v16 = v19;
          ++v12;
        }

        while (v18 != columnCount);
      }
    }
  }

  else
  {

    sub_236799078(A, retstr);
  }

  return result;
}

void sub_236799078(uint64_t a1@<X0>, void *a2@<X8>)
{
  v175[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 28);
  v5 = (*(a1 + 4) * v4);
  *a2 = 0;
  *a2 = 3;
  v6 = malloc_type_malloc(8 * v5, 0x100004000313F17uLL);
  v8 = v6;
  a2[1] = v6;
  a2[2] = sub_236799AD8;
  v9 = (v4 * v4);
  v10 = (*(a1 + 24) >> 2) & 3;
  if ((v10 - 1) >= 2)
  {
    if (v10 != 3)
    {
      if (*(a1 + 24))
      {
        bzero(v6, 8 * v5);
        v137 = *(a1 + 4);
        if (v137 >= 1)
        {
          v138 = 0;
          v139 = *(a1 + 8);
          v140 = *v139;
          v141 = 8 * (v4 * v4);
          do
          {
            v142 = v139[++v138];
            if (v140 < v142)
            {
              v143 = *(a1 + 16);
              v144 = v141 * v140;
              do
              {
                v145 = *(v143 + 4 * v140);
                if ((v145 & 0x80000000) == 0 && v145 < *a1 && v4)
                {
                  v146 = 0;
                  v147 = &v8[(v145 * v4)];
                  v148 = (*(a1 + 32) + v144);
                  do
                  {
                    v149 = v4;
                    v150 = v148;
                    v151 = v147;
                    do
                    {
                      v152 = *v150++;
                      *v151 = *v151 + v152 * v152;
                      ++v151;
                      --v149;
                    }

                    while (v149);
                    ++v146;
                    v148 += v4;
                  }

                  while (v146 != v4);
                }

                ++v140;
                v144 += v141;
              }

              while (v140 != v142);
            }

            v140 = v142;
          }

          while (v138 != v137);
        }

        if (v5 >= 1)
        {
          do
          {
            v153 = fabs(*v8);
            v154 = 1.0;
            if (v153 >= 2.22044605e-16)
            {
              v154 = 1.0 / sqrt(v153);
            }

            *v8++ = v154;
            --v5;
          }

          while (v5);
        }
      }

      else if (*(a1 + 4) >= 1)
      {
        v157 = 0;
        v158 = 8 * v4;
        v159 = 8 * (v4 * v4);
        v160 = (8 * v4 + 15) & 0xFF0;
        do
        {
          MEMORY[0x28223BE20](v7);
          v161 = (v175 - v160);
          if (v4)
          {
            bzero(v175 - v160, 8 * v4);
          }

          v162 = *(a1 + 8);
          v163 = *(v162 + 8 * v157++);
          v164 = *(v162 + 8 * v157);
          if (v163 < v164)
          {
            v165 = *(a1 + 16);
            v166 = v159 * v163;
            do
            {
              v167 = *(v165 + 4 * v163);
              if ((v167 & 0x80000000) == 0 && v167 < *a1 && v4)
              {
                v168 = 0;
                v169 = (*(a1 + 32) + v166);
                do
                {
                  v7.n128_f64[0] = v161[v168];
                  v170 = v4;
                  v171 = v169;
                  do
                  {
                    v172 = *v171++;
                    v7.n128_f64[0] = v7.n128_f64[0] + v172 * v172;
                    --v170;
                  }

                  while (v170);
                  v161[v168++] = v7.n128_f64[0];
                  v169 = (v169 + v158);
                }

                while (v168 != v4);
              }

              ++v163;
              v166 += v159;
            }

            while (v163 != v164);
          }

          v173 = v4;
          v174 = v8;
          if (v4)
          {
            do
            {
              v7.n128_u64[0] = 1.0;
              if (*v161 >= 2.22044605e-16)
              {
                v7.n128_f64[0] = 1.0 / sqrt(*v161);
              }

              *v174++ = v7.n128_f64[0];
              ++v161;
              --v173;
            }

            while (v173);
          }

          v8 = (v8 + v158);
        }

        while (v157 < *(a1 + 4));
      }

      return;
    }

    bzero(v6, 8 * v5);
    v48 = *(a1 + 4);
    if (v48 < 1)
    {
LABEL_82:
      if (v5 >= 1)
      {
        do
        {
          v87 = fabs(*v8);
          v88 = 1.0;
          if (v87 >= 2.22044605e-16)
          {
            v88 = 1.0 / sqrt(v87);
          }

          *v8++ = v88;
          --v5;
        }

        while (v5);
      }

      return;
    }

    v49 = 0;
    v50 = *(a1 + 8);
    v51 = *v50;
    v52 = 8 * (v4 * v4);
    v53 = 8 * v4;
    v175[0] = v8 + 1;
    while (1)
    {
      v54 = v49 + 1;
      v55 = v50[v49 + 1];
      if (v51 < v55)
      {
        break;
      }

LABEL_81:
      v51 = v55;
      ++v49;
      if (v54 == v48)
      {
        goto LABEL_82;
      }
    }

    v56 = &v8[v49 * v4];
    v57 = *(a1 + 16);
    v58 = v52 * v51;
    v59 = v52 * v51 + 8;
    while (1)
    {
      v60 = *(v57 + 4 * v51);
      v61 = v60;
      if ((*(a1 + 24) & 2) != 0)
      {
        if (v49 <= v60 && v60 < *a1)
        {
          v69 = v60 * v4;
          v70 = *(a1 + 32);
          v64 = (v70 + 8 * v51 * v9);
          if (v49 == v61)
          {
            if (v4)
            {
              v71 = 0;
              v72 = (v70 + v59);
              v73 = v4 - 1;
              v74 = v175[0] + 8 * v69;
              do
              {
                v75 = v64[v71 + (v71 * v4)];
                v56[v71] = v56[v71] + v75 * v75;
                v76 = v71 + 1;
                if (v71 + 1 < v4)
                {
                  v77 = v73;
                  v78 = v74;
                  v79 = v72;
                  do
                  {
                    v56[v71] = v56[v71] + *v79 * *v79;
                    v80 = *v79++;
                    *v78 = *v78 + v80 * v80;
                    ++v78;
                    --v77;
                  }

                  while (v77);
                }

                v72 += v4 + 1;
                v74 += 8;
                --v73;
                ++v71;
              }

              while (v76 != v4);
            }

            goto LABEL_80;
          }

          goto LABEL_75;
        }
      }

      else if (v49 >= v60)
      {
        v62 = v60 * v4;
        v63 = *(a1 + 32);
        v64 = (v63 + 8 * v51 * v9);
        if (v49 != v61)
        {
          v69 = v62;
LABEL_75:
          if (v4)
          {
            v81 = 0;
            v82 = &v8[v69];
            do
            {
              v83 = v4;
              v84 = v82;
              v85 = v64;
              do
              {
                v56[v81] = v56[v81] + *v85 * *v85;
                v86 = *v85++;
                *v84 = *v84 + v86 * v86;
                ++v84;
                --v83;
              }

              while (v83);
              ++v81;
              v64 = (v64 + v53);
            }

            while (v81 != v4);
          }

          goto LABEL_80;
        }

        if (v4)
        {
          v65 = 0;
          v66 = &v8[v62];
          v67 = v63 + v58;
          do
          {
            if (v65)
            {
              for (i = 0; i != v65; ++i)
              {
                v56[v65] = v56[v65] + *(v67 + 8 * i) * *(v67 + 8 * i);
                v66[i] = v66[i] + *(v67 + 8 * i) * *(v67 + 8 * i);
              }
            }

            v56[v65] = v56[v65] + v64[v65 * (v4 + 1)] * v64[v65 * (v4 + 1)];
            ++v65;
            v67 += v53;
          }

          while (v65 != v4);
        }
      }

LABEL_80:
      ++v51;
      v59 += v52;
      v58 += v52;
      if (v51 == v55)
      {
        goto LABEL_81;
      }
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a1 + 4) < 1)
    {
      return;
    }

    v89 = vdupq_n_s64(v4 - 1);
    while (1)
    {
      v90 = MEMORY[0x28223BE20](v89);
      v100 = (v175 - v99);
      if (v4)
      {
        if ((*(a1 + 24) & 0xC) == 8)
        {
          v101 = v97;
        }

        else
        {
          v101 = v98;
        }

        v102 = v100 + 1;
        v103 = v92;
        v104 = v95;
        do
        {
          v105 = vmovn_s64(vcgeq_u64(v89, v104));
          if (v105.i8[0])
          {
            *(v102 - 1) = v101;
          }

          if (v105.i8[4])
          {
            *v102 = v101;
          }

          v104 = vaddq_s64(v104, v96);
          v102 += 2;
          v103 -= 2;
        }

        while (v103);
      }

      v106 = *(a1 + 8);
      v107 = *(v106 + 8 * v90);
      v108 = *(v106 + 8 * (v90 + 1));
      if (v107 < v108)
      {
        break;
      }

LABEL_137:
      v134 = v4;
      v135 = v8;
      if (v4)
      {
        do
        {
          v136 = 1.0;
          if (*v100 >= v94)
          {
            v136 = v97 / sqrt(*v100);
          }

          *v135++ = v136;
          ++v100;
          --v134;
        }

        while (v134);
      }

      v8 = (v8 + v91);
      if ((v90 + 1) >= *(a1 + 4))
      {
        return;
      }
    }

    v109 = *(a1 + 16);
    v110 = *(a1 + 24);
    v111 = v110 & 0xC;
    v112 = v93 * v107;
    while (1)
    {
      v113 = *(v109 + 4 * v107);
      v114 = v113;
      if ((v110 & 2) != 0)
      {
        if (v90 <= v113 && v113 < *a1)
        {
          v120 = *(a1 + 32);
          if (v90 == v113)
          {
            if (v4)
            {
              v121 = 0;
              v122 = v120 + v112;
              do
              {
                if (v111 == 8)
                {
                  v123 = v121 + 1;
                }

                else
                {
                  v123 = v121;
                }

                if (v123 < v4)
                {
                  v124 = v100[v121];
                  v125 = (v122 + 8 * v123);
                  v126 = v4 - v123;
                  do
                  {
                    v127 = *v125++;
                    v124 = v124 + v127 * v127;
                    --v126;
                  }

                  while (v126);
                  v100[v121] = v124;
                }

                ++v121;
                v122 += v91;
              }

              while (v121 != v4);
            }

            goto LABEL_136;
          }

          v128 = (v120 + 8 * v107 * v9);
          if (v4)
          {
            goto LABEL_132;
          }
        }
      }

      else if (v90 >= v113)
      {
        v115 = *(a1 + 32);
        if (v90 == v114)
        {
          if (v4)
          {
            for (j = 0; j != v4; ++j)
            {
              if (v111 == 8)
              {
                LODWORD(v117) = j;
              }

              else
              {
                LODWORD(v117) = j + 1;
              }

              v117 = v117;
              if (v117)
              {
                v118 = v100[j];
                v119 = v115;
                do
                {
                  v118 = v118 + *(v119 + v112) * *(v119 + v112);
                  v119 += 8;
                  --v117;
                }

                while (v117);
                v100[j] = v118;
              }

              v115 += v91;
            }
          }

          goto LABEL_136;
        }

        v128 = (v115 + 8 * v107 * v9);
        if (v4)
        {
LABEL_132:
          for (k = 0; k != v4; ++k)
          {
            v130 = v100[k];
            v131 = v4;
            v132 = v128;
            do
            {
              v133 = *v132++;
              v130 = v130 + v133 * v133;
              --v131;
            }

            while (v131);
            v100[k] = v130;
            v128 = (v128 + v91);
          }
        }
      }

LABEL_136:
      ++v107;
      v112 += v93;
      if (v107 == v108)
      {
        goto LABEL_137;
      }
    }
  }

  bzero(v6, 8 * v5);
  v11 = *(a1 + 4);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(a1 + 8);
    v14 = *v13;
    v15 = 8 * (v4 * v4);
    v16 = 8 * v4;
    while (1)
    {
      v17 = v12 + 1;
      v18 = v13[v12 + 1];
      if (v14 < v18)
      {
        break;
      }

LABEL_44:
      v14 = v18;
      ++v12;
      if (v17 == v11)
      {
        goto LABEL_45;
      }
    }

    v19 = *(a1 + 16);
    v20 = v15 * v14;
    while (1)
    {
      v21 = *(v19 + 4 * v14);
      v22 = *(v19 + 4 * v14);
      v23 = *(a1 + 24);
      if ((v23 & 2) != 0)
      {
        if (v12 <= v21 && v22 < *a1)
        {
          v32 = *(a1 + 32);
          if (v12 == v21)
          {
            if (v4)
            {
              v33 = 0;
              v34 = &v8[v22 * v4];
              v35 = v32 + v20;
              do
              {
                if ((*(a1 + 24) & 0xC) == 8)
                {
                  v36 = v33 + 1;
                }

                else
                {
                  v36 = v33;
                }

                if (v36 < v4)
                {
                  v37 = &v34[v36];
                  v38 = (v35 + 8 * v36);
                  v39 = v4 - v36;
                  do
                  {
                    v40 = *v38++;
                    *v37 = *v37 + v40 * v40;
                    ++v37;
                    --v39;
                  }

                  while (v39);
                }

                ++v33;
                v35 += v16;
              }

              while (v33 != v4);
            }

            goto LABEL_43;
          }

          v41 = (v32 + 8 * v14 * v9);
          if (v4)
          {
            goto LABEL_39;
          }
        }
      }

      else if (v12 >= v21)
      {
        v24 = *(a1 + 32);
        if (v12 == v21)
        {
          if (v4)
          {
            v25 = 0;
            v26 = &v8[v21 * v4];
            v27 = v24 + v20;
            do
            {
              v28 = v25 + 1;
              if ((v23 & 0xC) != 8 || v25 != 0)
              {
                v30 = 0;
                do
                {
                  v26[v30] = v26[v30] + *(v27 + 8 * v30) * *(v27 + 8 * v30);
                  ++v30;
                  v23 = *(a1 + 24);
                  if ((v23 & 0xC) == 8)
                  {
                    v31 = v25;
                  }

                  else
                  {
                    v31 = v25 + 1;
                  }
                }

                while (v30 < v31);
              }

              v27 += v16;
              ++v25;
            }

            while (v28 != v4);
          }

          goto LABEL_43;
        }

        v41 = (v24 + 8 * v14 * v9);
        if (v4)
        {
LABEL_39:
          v42 = 0;
          v43 = &v8[v22 * v4];
          do
          {
            v44 = v4;
            v45 = v41;
            v46 = v43;
            do
            {
              v47 = *v45++;
              *v46 = *v46 + v47 * v47;
              ++v46;
              --v44;
            }

            while (v44);
            ++v42;
            v41 = (v41 + v16);
          }

          while (v42 != v4);
        }
      }

LABEL_43:
      ++v14;
      v20 += v15;
      if (v14 == v18)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_45:
  if ((*(a1 + 24) & 0xC) == 8)
  {
    if (v5 >= 1)
    {
      do
      {
        *v8 = 1.0 / sqrt(*v8 + 1.0);
        ++v8;
        --v5;
      }

      while (v5);
    }
  }

  else if (v5 >= 1)
  {
    do
    {
      v155 = fabs(*v8);
      v156 = 1.0;
      if (v155 >= 2.22044605e-16)
      {
        v156 = 1.0 / sqrt(v155);
      }

      *v8++ = v156;
      --v5;
    }

    while (v5);
  }
}