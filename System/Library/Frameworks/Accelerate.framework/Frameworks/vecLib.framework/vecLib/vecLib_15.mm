SparseIterativeStatus_t _SparseLSMRSolve_Double(SparseLSMROptions *options, DenseMatrix_Double *X, DenseMatrix_Double *B, void *ApplyOperator, const SparseOpaquePreconditioner_Double *Preconditioner)
{
  v5 = Preconditioner;
  v130 = *MEMORY[0x277D85DE8];
  v9 = 4;
  if (*&B->attributes)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(&B->rowCount + v10);
  if (*&X->attributes)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(&X->rowCount + v12);
  if (*&X->attributes)
  {
    v9 = 0;
  }

  v14 = *(&X->rowCount + v9);
  maxIterations = options->maxIterations;
  if (maxIterations <= 0)
  {
    maxIterations = 4 * v13;
  }

  v96 = maxIterations;
  nvec = options->nvec;
  if (nvec >= v11)
  {
    nvec = v11;
  }

  if (nvec >= v13)
  {
    nvec = *(&X->rowCount + v12);
  }

  v17 = 8 * (v11 + (nvec + 3) * v13 + 3) + 168;
  v18 = 16 * v13 * v14 + 104;
  if (!Preconditioner)
  {
    v18 = 104;
  }

  v19 = 9 * v14 + v18 + v17 * v14 + 16;
  v20 = malloc_type_malloc(v19, 0xEC5780E5uLL);
  if (v20)
  {
    v21 = v20;
    v22 = v20 + v19;
    v23 = options->nvec;
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

    v25 = (&v20[21 * v14] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v22 >= v25)
    {
      v112[0] = v13;
      v112[1] = v14;
      v112[2] = v13;
      v112[3] = 0;
      v26 = v14 * v13;
      v27 = v25 + 8 * v14 * v13;
      if (v27 <= v22)
      {
        v113 = (&v20[21 * v14] + 7) & 0xFFFFFFFFFFFFFFF8;
        v28 = 8 * v26;
        v110[0] = v13;
        v110[1] = v14;
        v110[2] = v13;
        v110[3] = 0;
        v29 = v27 + v28;
        if (v27 + v28 <= v22)
        {
          v111 = v27;
          v30 = (v29 + 8 * v24 * v26) & 0xFFFFFFFFFFFFFFF8;
          if (v22 >= v30)
          {
            *&v108 = __PAIR64__(v14, v11);
            *(&v108 + 1) = v11;
            v31 = v30 + 8 * v14 * v11;
            if (v31 <= v22)
            {
              v109 = v30;
              *&v106 = __PAIR64__(v14, v13);
              v32 = (v31 + v28);
              *(&v106 + 1) = v13;
              if (v31 + v28 <= v22)
              {
                v107 = v30 + 8 * v14 * v11;
                *&v104 = __PAIR64__(v14, v13);
                *(&v104 + 1) = v13;
                v105 = 0;
                *&v102 = __PAIR64__(v14, v13);
                *(&v102 + 1) = v13;
                v103 = 0;
                if (v5)
                {
                  v33 = &v32[v28] & 0xFFFFFFFFFFFFFFF8;
                  if (v22 < v33)
                  {
                    goto LABEL_106;
                  }

                  v105 = v32;
                  v32 = (v33 + v28);
                  if (v33 + v28 > v22)
                  {
                    goto LABEL_106;
                  }

                  v103 = v33;
                }

                v34 = &v32[v14 + 7] & 0xFFFFFFFFFFFFFFF8;
                if (v22 >= v34)
                {
                  v35 = 8 * v14;
                  v36 = v34 + v35;
                  if (v34 + v35 <= v22)
                  {
                    v37 = v36 + v35;
                    if (v36 + v35 <= v22)
                    {
                      v38 = (v37 + v35) & 0xFFFFFFFFFFFFFFF8;
                      if (v22 >= v38)
                      {
                        v93 = (v36 + v35);
                        v94 = (v34 + v35);
                        v97 = v29;
                        v95 = ((v37 + v35) & 0xFFFFFFFFFFFFFFF8);
                        if (v38 + v35 <= v22)
                        {
                          bzero(v32, v14);
                          if (sub_23676A2AC(options, v11, v13, v14, v32, &v108, &v106, &X->rowCount, &B->rowCount, &v104, v112, v110, v97, v5, ApplyOperator, v21))
                          {
                            if (v5)
                            {
                              v39 = X;
                              sub_2366FD390(&X->rowCount, &v104);
                              mem = v5->mem;
                              apply = v5->apply;
LABEL_41:
                              *__str = v104;
                              *&v115 = v105;
                              v100 = *&v39->rowCount;
                              data = v39->data;
                              (apply)(mem, 111, __str, &v100);
                            }
                          }

                          else
                          {
                            convergenceTest = options->convergenceTest;
                            if (convergenceTest)
                            {
                              if (convergenceTest == SparseLSMRCTFongSaunders && v14 >= 1)
                              {
                                v44 = (v21 + 2);
                                v45 = v14;
                                v46 = (&v32[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                                do
                                {
                                  v47 = *v44;
                                  v44 += 21;
                                  *v46++ = v47;
                                  --v45;
                                }

                                while (v45);
                              }
                            }

                            else if (v14 >= 1)
                            {
                              v48 = v21 + 9;
                              v49 = v14;
                              v50 = (&v32[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                              do
                              {
                                v51 = *v48;
                                v48 += 21;
                                *v50++ = fabs(v51);
                                --v49;
                              }

                              while (v49);
                            }

                            conditionLimit = options->conditionLimit;
                            if (conditionLimit <= 0.0)
                            {
                              v53 = 0.0;
                            }

                            else
                            {
                              v53 = 1.0 / conditionLimit;
                            }

                            reportStatus = options->reportStatus;
                            if (reportStatus)
                            {
                              (reportStatus)("\n   Itn       y(1)           norm rbar    Abar'rbar Compatible    LS    norm Abar cond Abar\n");
                              snprintf(__str, 0xC8uLL, "%6d%17.9e+%17.9ei%17.9e%10.2e%10.2e%10.2e\n", 0, *X->data, 0.0, v21[2], v21[2] * v21[1], 1.0, v21[1] / v21[2]);
                              (options->reportStatus)(__str);
                            }

                            rtol = options->rtol;
                            v56 = rtol == 0.0;
                            if (rtol < 0.0)
                            {
                              rtol = 0.0;
                            }

                            if (v56)
                            {
                              v57 = 0.0000000149011612;
                            }

                            else
                            {
                              v57 = rtol;
                            }

                            v58 = X;
                            v60 = v93;
                            v59 = v94;
                            if (v96 < 1)
                            {
LABEL_100:
                              free(v21);
                              return 1;
                            }

                            v61 = 0;
                            v90 = v21 + 9;
                            v91 = v5;
                            v98 = v21;
                            v89 = ApplyOperator;
                            v88 = v11;
                            while (1)
                            {
                              v87 = ApplyOperator;
                              v62 = v58;
                              sub_23676A6BC(v61, v11, v13, v14, v32, &v108, &v106, v58, options->lambda, &v104, &v102, v112, v110, v97, v59, v60, v95, v5, v87, v21);
                              v63 = options->convergenceTest;
                              v92 = v61;
                              if (v63 == SparseLSMRCTFongSaunders)
                              {
                                break;
                              }

                              v58 = v62;
                              v64 = (&v32[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                              if (v63 || v14 < 1)
                              {
                                goto LABEL_102;
                              }

                              v65 = 1;
                              v66 = v14;
                              v67 = v90;
                              v68 = v32;
                              do
                              {
                                v69 = *v68 || fabs(*v67) <= options->atol + v57 * *v64;
                                *v68++ = v69;
                                v65 &= v69;
                                ++v64;
                                v67 += 21;
                                --v66;
                              }

                              while (v66);
LABEL_94:
                              v21 = v98;
                              v64 = (&v32[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                              v61 = v92;
                              if (v65)
                              {
                                goto LABEL_102;
                              }

                              if (options->reportStatus && (v92 < 0xA || !(v92 % 0xA)))
                              {
                                v85 = fabs(*v90);
                                snprintf(__str, 0xC8uLL, "%6d%17.9e+%17.9ei%17.9e%10.2e%10.2e%10.2e%10.2e%10.2e\n", v92, *v58->data, 0.0, *v94, v85, *v94 / *(&v32[v14 + 7] & 0xFFFFFFFFFFFFFFF8), v85 / (*v94 * *v93), *v93, *v95);
                                (options->reportStatus)(__str);
                                v58 = X;
                              }

                              v61 = v92 + 1;
                              v5 = v91;
                              ApplyOperator = v89;
                              LODWORD(v11) = v88;
                              v60 = v93;
                              v59 = v94;
                              if (v92 + 1 == v96)
                              {
                                goto LABEL_100;
                              }
                            }

                            v58 = v62;
                            v64 = (&v32[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                            if (v14 >= 1)
                            {
                              v70 = 0;
                              v65 = 1;
                              v71 = 9;
                              v72 = v95;
                              while (1)
                              {
                                if ((v32[v70] & 1) == 0)
                                {
                                  v73 = v98[v71];
                                  cblas_dnrm2_NEWLAPACK();
                                  v75 = 1.0 / *v72;
                                  if (v75 + 1.0 <= 1.0 || v75 <= v53)
                                  {
                                    free(v98);
                                    return -2;
                                  }

                                  v76 = v64[v14];
                                  v77 = v64[2 * v14];
                                  v78 = fabs(v73) / (v76 * v77);
                                  if (v78 + 1.0 > 1.0 && (atol = options->atol, v78 > atol) && ((v80 = v76 / *v64, v81 = v80 / (v74 * v77 / *v64 + 1.0), v82 = options->btol + v74 * (v77 * atol) / *v64, v81 + 1.0 > 1.0) ? (v83 = v80 > v82) : (v83 = 0), v83))
                                  {
                                    v84 = v32[v70] != 0;
                                  }

                                  else
                                  {
                                    v84 = 1;
                                    v32[v70] = 1;
                                  }

                                  v58 = X;
                                  v65 &= v84;
                                }

                                ++v70;
                                ++v72;
                                ++v64;
                                v71 += 21;
                                if (v14 == v70)
                                {
                                  goto LABEL_94;
                                }
                              }
                            }

LABEL_102:
                            if (options->reportStatus)
                            {
                              v86 = fabs(*v90);
                              snprintf(__str, 0xC8uLL, "%6d%17.9e+%17.9ei%17.9e%10.2e%10.2e%10.2e%10.2e%10.2e\n", v61, *v58->data, 0.0, *v94, v86, *v94 / *v64, v86 / (*v94 * *v93), *v93, *v95);
                              (options->reportStatus)(__str);
                              v58 = X;
                            }

                            if (v91)
                            {
                              v39 = v58;
                              sub_2366FD390(&v58->rowCount, &v104);
                              mem = v91->mem;
                              apply = v91->apply;
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

LABEL_106:
    __break(1u);
  }

  if (!options->reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23676B928(v19);
    }

    _SparseTrap();
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  *__str = 0u;
  v115 = 0u;
  snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v19);
  (options->reportError)(__str);
  return -99;
}

void sub_23676B928(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = a1;
  _os_log_error_impl(&dword_2366B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to allocate workspace of size %ld\n", &v1, 0xCu);
}

void _SparseCGIterate_Double(const SparseCGOptions *options, int iteration, char *state, const BOOL *converged, DenseMatrix_Double *X, DenseMatrix_Double *B, DenseMatrix_Double *R, const SparseOpaquePreconditioner_Double *Preconditioner, void *ApplyOperator)
{
  v10 = state;
  v11 = 4;
  if (*&X->attributes)
  {
    v11 = 0;
  }

  v12 = *(&X->rowCount + v11);
  if (!iteration)
  {
    goto LABEL_11;
  }

  if (v12 >= 1)
  {
    v13 = 0;
    data = R->data;
    do
    {
      if (*&R->attributes)
      {
        v15 = v13;
      }

      else
      {
        v15 = R->columnStride * v13;
      }

      data[v15] = *&state[8 * v12 + 8 * v13++];
    }

    while (v12 != v13);
  }

  if ((iteration & 0x80000000) == 0)
  {
LABEL_11:
    v16 = *&X->attributes;
    v17 = 4;
    if (v16)
    {
      v18 = 4;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(&X->rowCount + v18);
    if (v16)
    {
      v17 = 0;
    }

    v20 = *(&X->rowCount + v17);
    v67 = v12;
    v68 = &state[8 * v12];
    if (Preconditioner)
    {
      v21 = &state[8 * v20];
      v22 = v20 * v19;
      v23 = &v21[v20 * v19];
      mem = Preconditioner->mem;
      apply = Preconditioner->apply;
      v66 = &v23[v20 * v19];
      if (iteration)
      {
        v73 = *R;
        *&v72.rowCount = __PAIR64__(v20, v19);
        *&v72.columnStride = v19;
        v72.data = &v21[v22];
        (apply)(mem, 0, &v73, &v72);
        if (v20 >= 1)
        {
          v26 = 0;
          v27 = 8 * v19;
          v28 = &v21[v20 * v19];
          v29 = &v23[v20 * v19];
          do
          {
            v30 = *&v10[8 * v26];
            cblas_ddot_NEWLAPACK();
            *&v10[8 * v26] = v31;
            if (v19 >= 1)
            {
              v32 = v28;
              v33 = v29;
              v34 = v19;
              v35 = v31 / v30;
              do
              {
                v36 = *v32++;
                *v33 = v36 + v35 * *v33;
                ++v33;
                --v34;
              }

              while (v34);
            }

            ++v26;
            v29 = (v29 + v27);
            v28 = (v28 + v27);
          }

          while (v26 != v20);
        }
      }

      else
      {
        v37 = v22;
        v73 = *R;
        *&v72.rowCount = __PAIR64__(v20, v19);
        *&v72.columnStride = v19;
        v72.data = &v21[v37];
        (apply)(mem, *&iteration, &v73, &v72);
        memcpy(&v23[v20 * v19], v23, v37 * 8);
        if (v20 >= 1)
        {
          v38 = 0;
          v39 = v10;
          v40 = v20;
          do
          {
            cblas_ddot_NEWLAPACK();
            *v39 = v41;
            v39 += 8;
            v23 += v19;
            ++v38;
            --v40;
          }

          while (v40);
        }
      }

      v42 = *(ApplyOperator + 2);
      *&v73.rowCount = __PAIR64__(v20, v19);
      *&v73.columnStride = v19;
      v73.data = v66;
      *&v72.rowCount = __PAIR64__(v20, v19);
      *&v72.columnStride = v19;
      v72.data = v21;
      v42(ApplyOperator, 0, 111, &v73, &v72);
      if (v20 >= 1)
      {
        v43 = 0;
        do
        {
          if (!converged[v43])
          {
            cblas_ddot_NEWLAPACK();
            cblas_daxpy_NEWLAPACK();
            cblas_daxpy_NEWLAPACK();
          }

          ++v43;
          v10 += 8;
          v21 += v19;
          --v20;
        }

        while (v20);
      }
    }

    else
    {
      if (*&R->attributes)
      {
        columnStride = R->columnStride;
      }

      else
      {
        columnStride = 1;
      }

      v45 = &state[8 * v20];
      *&v73.rowCount = __PAIR64__(v20, v19);
      v46 = &v45[8 * v20 * v19];
      v73.data = v46;
      *&v73.columnStride = v19;
      if (iteration)
      {
        if (v20 >= 1)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*&R->attributes)
            {
              v48 = i;
            }

            else
            {
              v48 = R->columnStride * i;
            }

            v49 = &R->data[v48];
            v50 = *&v10[8 * i];
            cblas_ddot_NEWLAPACK();
            *&v10[8 * i] = v51;
            if (v19 >= 1)
            {
              v52 = v46;
              v53 = v19;
              v54 = v51 / v50;
              do
              {
                *v52 = *v49 + v54 * *v52;
                ++v52;
                v49 += columnStride;
                --v53;
              }

              while (v53);
            }

            v46 += v19;
          }
        }
      }

      else
      {
        sub_2366FD390(&R->rowCount, &v73);
        if (v20 >= 1)
        {
          for (j = 0; j != v20; ++j)
          {
            cblas_ddot_NEWLAPACK();
            *&v10[8 * j] = v56;
          }
        }
      }

      v57 = *(ApplyOperator + 2);
      v72 = v73;
      v70[0] = v19;
      v70[1] = v20;
      v70[2] = v19;
      v70[3] = 0;
      v71 = v45;
      v57(ApplyOperator, 0, 111, &v72, v70);
      if (v20 >= 1)
      {
        v58 = 0;
        v59 = 8 * v19;
        do
        {
          if (!converged[v58])
          {
            cblas_ddot_NEWLAPACK();
            cblas_daxpy_NEWLAPACK();
            cblas_daxpy_NEWLAPACK();
            v59 = 8 * v19;
          }

          ++v58;
          v10 += 8;
          v45 += v59;
          --v20;
        }

        while (v20);
      }
    }

    if (v67 >= 1)
    {
      v60 = 0;
      v61 = 0;
      v62 = R->data;
      do
      {
        if (*&R->attributes)
        {
          v63 = 1;
        }

        else
        {
          v63 = R->columnStride;
        }

        *&v68[v61] = v62[v63 * v60];
        cblas_dnrm2_NEWLAPACK();
        v62 = R->data;
        v65 = v60;
        if ((*&R->attributes & 1) == 0)
        {
          v65 = R->columnStride * v60;
        }

        v62[v65] = v64;
        v61 += 8;
        ++v60;
      }

      while (8 * v67 != v61);
    }
  }
}

uint64_t sub_23676C054(int a1, int a2, int a3)
{
  v3 = a3 * a2;
  if (!a1)
  {
    v3 = 0;
  }

  return 8 * (v3 + ((2 * a2) | 1) * a3);
}

SparseIterativeStatus_t _SparseCGSolve_Double(const SparseCGOptions *options, DenseMatrix_Double *X, DenseMatrix_Double *B, void *ApplyOperator, const SparseOpaquePreconditioner_Double *Preconditioner)
{
  v67 = *MEMORY[0x277D85DE8];
  v8 = 4;
  if (*&X->attributes)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(&X->rowCount + v9);
  if (*&X->attributes)
  {
    v8 = 0;
  }

  v11 = *(&X->rowCount + v8);
  v12 = v11 * v10;
  if (Preconditioner)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = 8 * (((2 * v10) | 1) * v11 + (v11 + v12) + v13) + v11 + 24;
  v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
  if (v15)
  {
    v16 = v15;
    v59 = options;
    *&R.attributes = 0;
    R.rowCount = v10;
    R.columnCount = v11;
    R.columnStride = v10;
    v17 = (&v15[v11 * v10] + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = v15 + v14;
    if (v15 + v14 < v17)
    {
      goto LABEL_83;
    }

    R.data = v15;
    v18 = 4;
    if (*&X->attributes)
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(&X->rowCount + v19);
    if (*&X->attributes)
    {
      v18 = 0;
    }

    v21 = *(&X->rowCount + v18);
    v22 = *(ApplyOperator + 2);
    *__str = *&X->rowCount;
    *&__str[16] = X->data;
    v64 = *&R.rowCount;
    v65 = v15;
    v22(ApplyOperator, 0, 111, __str, &v64);
    if (v21 >= 1)
    {
      for (i = 0; i != v21; ++i)
      {
        if (v20 >= 1)
        {
          v24 = 0;
          data = B->data;
          columnStride = B->columnStride;
          attributes = R.attributes;
          do
          {
            if (*&B->attributes)
            {
              v28 = v24;
            }

            else
            {
              v28 = i;
            }

            if (*&B->attributes)
            {
              v29 = i;
            }

            else
            {
              v29 = v24;
            }

            v30 = data[v29 + v28 * columnStride];
            if (attributes)
            {
              v31 = v24;
            }

            else
            {
              v31 = i;
            }

            if (attributes)
            {
              v32 = i;
            }

            else
            {
              v32 = v24;
            }

            v16[v32 + v31 * v10] = v30 - v16[v32 + v31 * v10];
            ++v24;
          }

          while (v20 != v24);
        }
      }
    }

    v33 = v17 + 8 * v11;
    if (v33 > v61)
    {
      goto LABEL_83;
    }

    if (v11 >= 1)
    {
      v34 = 0;
      v35 = 0;
      v36 = v16;
      do
      {
        cblas_dnrm2_NEWLAPACK();
        *(v17 + 8 * v35++) = v37;
        v34 += v10;
        ++v36;
      }

      while (v11 != v35);
    }

    v38 = ((v33 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v61 < v38)
    {
LABEL_83:
      __break(1u);
    }

    bzero((v17 + 8 * v11), v11);
    if (v59->maxIterations)
    {
      maxIterations = v59->maxIterations;
    }

    else
    {
      maxIterations = 100;
    }

    atol = v59->atol;
    v41.n128_u64[0] = *&v59->rtol;
    v44 = v41.n128_f64[0] == 0.0;
    if (v41.n128_f64[0] < 0.0)
    {
      v41.n128_f64[0] = 0.0;
    }

    if (v44)
    {
      v45 = 0.0000000149011612;
    }

    else
    {
      v45 = v41.n128_f64[0];
    }

    reportStatus = v59->reportStatus;
    if (reportStatus)
    {
      v39 = (reportStatus)("   Itr   ||r[0]||_2\n", v41);
    }

    if (maxIterations < 1)
    {
LABEL_68:
      reportError = v59->reportError;
      if (!v59->reportError)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23674EC1C();
        }

        _SparseTrap();
      }

      memset(&__str[35], 0, 221);
      strcpy(__str, "Exceeded maximum iteration limit.\n");
      (reportError)(__str);
      v57 = SparseIterativeMaxIterations;
    }

    else
    {
      v47 = 0;
      while (1)
      {
        if (v59->reportStatus && (v47 < 0xA || !(v47 % 0xA)))
        {
          if (v47)
          {
            v48 = v16;
          }

          else
          {
            v48 = v17;
          }

          snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v47, *v48);
          v39 = (v59->reportStatus)(__str);
        }

        _SparseCGIterate_Double(v39, v47, v38, (v17 + 8 * v11), X, v40, &R, Preconditioner, ApplyOperator);
        v16 = R.data;
        if (v11 < 1)
        {
          break;
        }

        v49 = 8 * R.columnStride;
        v50 = 1;
        v51 = v11;
        v52 = (v17 + 8 * v11);
        v53 = v17;
        v54 = R.data;
        do
        {
          if (!*v52)
          {
            v55 = fabs(*v54) < atol + v45 * *v53;
            *v52 = v55;
            v50 &= v55;
          }

          v54 = (v54 + v49);
          ++v53;
          ++v52;
          --v51;
        }

        while (v51);
        if (v50)
        {
          goto LABEL_77;
        }

        if (++v47 == maxIterations)
        {
          goto LABEL_68;
        }
      }

      v47 = 0;
LABEL_77:
      if (!v59->reportStatus)
      {
        v57 = SparseIterativeConverged;
        goto LABEL_80;
      }

      snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v47 + 1, *v16);
      (v59->reportStatus)(__str);
      v57 = SparseIterativeConverged;
    }

    v16 = R.data;
LABEL_80:
    free(v16);
    return v57;
  }

  if (!options->reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674EC64(v14);
    }

    _SparseTrap();
  }

  memset(__str, 0, 256);
  snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld.\n", v14);
  (options->reportError)(__str);
  return -99;
}

uint64_t sub_23676C5D0(int a1, void *a2)
{
  v2 = 1;
  if (a1 < -1)
  {
    v10 = 0;
  }

  else
  {
    v3 = a1 + 1;
    v4 = v3 >> 60;
    if (a1 >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = -a1;
    }

    v6 = 8 * v5;
    if (a1 < 0)
    {
      v6 = -v6;
    }

    v7 = __CFADD__(v6, 16 * v3);
    v8 = v6 + 16 * v3;
    v9 = v7;
    v7 = __CFADD__(v8, 8);
    v10 = v8 + 8;
    v11 = v7;
    if (v9)
    {
      v10 = 0;
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    if (a1 < 0)
    {
      v10 = 0;
      v12 = 1;
    }

    if (v4)
    {
      v10 = 0;
      v2 = 1;
    }

    else
    {
      v2 = v12;
    }
  }

  if (a1 >= 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = -a1;
  }

  v14 = 4 * v13;
  if (a1 < 0)
  {
    v14 = -4 * v13;
  }

  v7 = __CFADD__(v14, 24);
  v15 = v14 + 24;
  v16 = v7;
  v17 = v10 < 0;
  v7 = __CFADD__(v15, 2 * v10);
  v18 = v15 + 2 * v10;
  if (v7)
  {
    v17 = 1;
  }

  if (v16)
  {
    v18 = 0;
    v19 = 1;
  }

  else
  {
    v19 = v17;
  }

  if (a1 < 0)
  {
    v18 = 0;
    v19 = 1;
  }

  v20 = 20 * v13;
  if (a1 < 0)
  {
    v20 = -v20;
  }

  v7 = __CFADD__(v20, 4);
  v21 = v20 + 4;
  v22 = v7;
  v7 = __CFADD__(v21, 2 * v10);
  v23 = v21 + 2 * v10;
  v24 = v7;
  v25 = 16 * a1 + 32;
  v7 = __CFADD__(v23, v25);
  v26 = v23 + v25;
  v27 = v7;
  v7 = __CFADD__(v26, 64);
  v28 = v26 + 64;
  if (v7)
  {
    v27 = 1;
  }

  if (v24)
  {
    v28 = 0;
    v29 = 1;
  }

  else
  {
    v29 = v27;
  }

  v30 = v10 >= 0;
  if (v10 >= 0)
  {
    v31 = v28;
  }

  else
  {
    v31 = 0;
  }

  if (v30)
  {
    v32 = v29;
  }

  else
  {
    v32 = 1;
  }

  if (v22)
  {
    v31 = 0;
    v32 = 1;
  }

  if (a1 < 0)
  {
    v31 = 0;
    v32 = 1;
  }

  v33 = v19 | v2 | v32;
  v34 = 12 * a1 + 8;
  if (8 * a1 > v34)
  {
    v34 = 8 * a1;
  }

  v35 = v34 + 8;
  if (v31 > v35)
  {
    v35 = v31;
  }

  *a2 = v18 + v35;
  if (__CFADD__(v18, v35))
  {
    return 1;
  }

  else
  {
    return v33;
  }
}

void *sub_23676C728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7, void *a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, unsigned __int8 a16, _DWORD *a17, char *a18)
{
  v18 = a2;
  v19 = a17;
  v20 = a2;
  v21 = *(a3 + 8 * a2);
  v22 = *(a5 + 8 * a2);
  v265 = a2 + 1;
  v23 = 4 * a2;
  v24 = 16 * (a2 + 1) + 8 * a2;
  v254 = (v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = &a18[v254];
  v281 = a18;
  v282 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  v268 = v282;
  v283 = 1;
  bzero(a18, v23);
  v251 = v24 + 15;
  v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v21 <= v18)
  {
    v27 = v20;
  }

  else
  {
    v27 = v21;
  }

  sub_23676F4FC(v279, v20, v27, a17, v25);
  v262 = v18;
  if (v22 <= v18)
  {
    v28 = v20;
  }

  else
  {
    v28 = v22;
  }

  sub_23676F4FC(v277, v20, v28, a17, &v25[v26]);
  v29 = &a18[v254 + v26 + v26];
  sub_23676F4FC(v275, v20, 2 * v21, a17, v29);
  sub_23676F4FC(v273, v20, 2 * v22, a17, &v29[v26]);
  v267 = &v29[v26 + v26];
  v30 = &v267[(16 * v20 + 39) & 0xFFFFFFFFFFFFFFF0];
  v31 = &v30[v254];
  v271[0] = v30;
  v271[1] = v268;
  v272 = 1;
  bzero(v30, v23);
  v32 = &v31[v254];
  v33 = a7;
  *a7 = 0;
  if (v262 < 1)
  {
    v148 = 0;
    v36 = v262;
  }

  else
  {
    v34 = 0;
    v266 = &v32[(4 * v265 + 7) & 0xFFFFFFFFFFFFFFF8];
    v35 = (v266 + v254);
    v259 = v32 + 4;
    v253 = v31 - 4;
    v36 = v262;
    v37 = v31;
    v269 = &v31[v254];
    v263 = v31;
    do
    {
      v38 = v34;
      v39 = *v33;
      *&v37[4 * v34] = v39;
      *&v32[4 * v39] = v34++;
      *&v259[4 * (*v33)++] = v34;
      v40 = sub_23676D678(v275, v38, v266);
      sub_23676D6EC(v36, *v33 - 1, v40, v41, v279, &v281, v271, v42, v267);
      v43 = *(a5 + 8 * v34);
      v44 = *(a5 + 8 * v38);
      v45 = v283;
      if (v283 > 2147483630)
      {
        v283 = 1;
        bzero(v281, 4 * v282);
        v45 = v283;
      }

      v46 = v43 - v44;
      v47 = v45 + 1;
      v283 = v45 + 1;
      if (v43 - v44 < 1)
      {
        v48 = 0;
      }

      else
      {
        v48 = 0;
        v49 = (a6 + 4 * v44);
        v50 = v281;
        v51 = v46 & 0x7FFFFFFF;
        do
        {
          v53 = *v49++;
          v52 = v53;
          if (v50[v53] <= v45)
          {
            *&v35[4 * v48] = v52;
            v50[v52] = v47;
            ++v48;
          }

          --v51;
        }

        while (v51);
      }

      v54 = (v280 + 16 * *&v37[4 * v38]);
      v55 = v54[1];
      if (v55)
      {
        v56 = *v54;
        v57 = &v56[v55];
        v58 = v274;
        v59 = v281;
        do
        {
          v60 = (v58 + 16 * *v56);
          v61 = v60[1];
          if (v61)
          {
            v62 = *v60;
            v63 = 4 * v61;
            do
            {
              v64 = *v62;
              v65 = v38 < *v62 && v59[*v62] <= v45;
              if (v65)
              {
                *&v35[4 * v48] = v64;
                v59[v64] = v47;
                ++v48;
              }

              ++v62;
              v63 -= 4;
            }

            while (v63);
          }

          ++v56;
        }

        while (v56 != v57);
      }

      std::__sort<std::__less<int,int> &,int *>();
      sub_23676D9A0(v273, v35, v48);
      v66 = sub_23676D678(v273, v38, v266);
      sub_23676D6EC(v36, *v33 - 1, v66, v67, v277, &v281, v271, v68, v267);
      v69 = *(a3 + 8 * v34);
      v70 = *(a3 + 8 * v38);
      v71 = v283;
      if (v283 > 2147483630)
      {
        v283 = 1;
        bzero(v281, 4 * v282);
        v71 = v283;
      }

      v72 = v69 - v70;
      v73 = v71 + 1;
      v283 = v71 + 1;
      if (v69 - v70 < 1)
      {
        v74 = 0;
      }

      else
      {
        v74 = 0;
        v75 = (a4 + 4 * v70);
        v76 = v281;
        v77 = v72 & 0x7FFFFFFF;
        do
        {
          v79 = *v75++;
          v78 = v79;
          if (v76[v79] <= v71)
          {
            *&v35[4 * v74] = v78;
            v76[v78] = v73;
            ++v74;
          }

          --v77;
        }

        while (v77);
      }

      v80 = (v278 + 16 * *&v37[4 * v38]);
      v81 = v80[1];
      if (v81)
      {
        v82 = *v80;
        v83 = &v82[v81];
        v84 = v276;
        v85 = v281;
        do
        {
          v86 = (v84 + 16 * *v82);
          v87 = v86[1];
          if (v87)
          {
            v88 = *v86;
            v89 = 4 * v87;
            do
            {
              v90 = *v88;
              if (v38 < *v88 && v85[*v88] <= v71)
              {
                *&v35[4 * v74] = v90;
                v85[v90] = v73;
                ++v74;
              }

              ++v88;
              v89 -= 4;
            }

            while (v89);
          }

          ++v82;
        }

        while (v82 != v83);
      }

      std::__sort<std::__less<int,int> &,int *>();
      sub_23676D9A0(v275, v35, v74);
      v92 = *v33;
      v93 = v92 - 1;
      if (v92 != 1)
      {
        v94 = v92 - 2;
        v95 = v276;
        v96 = *(v276 + 16 * (v92 - 2) + 8);
        v97 = v283;
        if (v283 > 2147483630)
        {
          v283 = 1;
          v98 = v94;
          v99 = v93;
          bzero(v281, 4 * v282);
          v94 = v98;
          v93 = v99;
          v97 = v283;
          v95 = v276;
        }

        v100 = v97 + 1;
        v283 = v100;
        v101 = (v95 + 16 * v94);
        v102 = v101[1];
        v103 = v281;
        if (v102)
        {
          v104 = *v101;
          v105 = 4 * v102;
          do
          {
            v106 = *v104++;
            v103[v106] = v100;
            v105 -= 4;
          }

          while (v105);
          v100 = v283;
        }

        v107 = &v269[4 * v93];
        v108 = *v107;
        if (v103[*v107] >= v100)
        {
          v109 = *&v269[4 * v94];
          if (v109 < v108)
          {
            v110 = *v107;
            do
            {
              if (v103[v109] < v283)
              {
                v103[v109] = v283;
                ++v96;
                v110 = *v107;
              }

              ++v109;
            }

            while (v109 < v110);
            v100 = v283;
          }

          v111 = (v95 + 16 * v93);
          v112 = v111[1];
          if (v112)
          {
            v113 = 0;
            v114 = *v111;
            v115 = 4 * v112;
            do
            {
              v116 = *v114++;
              v117 = v103[v116];
              v65 = v117 < v100;
              v118 = v117 >= v100;
              if (v65)
              {
                ++v113;
              }

              v96 -= v118;
              v115 -= 4;
            }

            while (v115);
          }

          else
          {
            v113 = 0;
          }

          v119 = v274;
          v120 = *(v274 + 16 * v94 + 8);
          if (v100 > 2147483630)
          {
            v283 = 1;
            v255 = v34;
            v121 = v94;
            v122 = v93;
            bzero(v103, 4 * v282);
            v94 = v121;
            v34 = v255;
            v93 = v122;
            v100 = v283;
            v119 = v274;
          }

          v123 = v100 + 1;
          v283 = v100 + 1;
          v124 = (v119 + 16 * v94);
          v125 = v124[1];
          v126 = v281;
          if (v125)
          {
            v127 = *v124;
            v128 = 4 * v125;
            do
            {
              v129 = *v127++;
              v126[v129] = v123;
              v128 -= 4;
            }

            while (v128);
            v123 = v283;
          }

          if (v126[v108] >= v123)
          {
            v130 = *&v269[4 * v94];
            v131 = *v107;
            if (v130 < *v107)
            {
              do
              {
                if (v126[v130] < v283)
                {
                  v126[v130] = v283;
                  ++v120;
                  v131 = *v107;
                }

                ++v130;
              }

              while (v130 < v131);
            }

            v132 = (v119 + 16 * v93);
            v133 = v132[1];
            if (v133)
            {
              v134 = 0;
              v135 = *v132;
              v136 = 4 * v133;
              do
              {
                v137 = *v135++;
                v138 = v126[v137];
                v65 = v138 < v283;
                v139 = v138 >= v283;
                if (v65)
                {
                  ++v134;
                }

                v120 -= v139;
                v136 -= 4;
              }

              while (v136);
            }

            else
            {
              v134 = 0;
            }

            v140 = v131 - *&v269[4 * v94];
            v143 = v96 == v140 + 1 && v120 == v96 && v113 == 0 && v134 == 0;
            if (v143 || (*a17 & 0x80000000) == 0 && (v144 = v107[1] - v131, v145 = v140 + *(v276 + 16 * v94 + 8), v256 = v140 + v125, v146 = sub_23676F5EC(a16, v144 + *(v276 + 16 * v93 + 8), v144 + v133, v144), v147 = v146 + sub_23676F5EC(a16, v145, v256, v140), sub_23676F5EC(a16, v145 + v113, v256 + v134, v144 + v140) < v147))
            {
              *&v263[4 * v38] = *&v253[4 * v38];
              sub_23676DB54(v275, v38);
              sub_23676DB54(v273, v38);
              sub_23676DB54(v279, *a7 - 2);
              sub_23676DB54(v277, *a7 - 2);
              --*a7;
            }
          }
        }
      }

      v37 = v263;
      v33 = a7;
      v36 = v262;
      v32 = v269;
    }

    while (v34 != v262);
    v148 = *a7;
    v19 = a17;
  }

  *&v32[4 * v148] = v36;
  v149 = v32;
  v150 = v19[3](4 * *v33 + 4);
  *a8 = v150;
  memcpy(v150, v149, 4 * *v33 + 4);
  sub_23676DEF8(*v33, v275, a9, a10, v19);
  sub_23676DEF8(*v33, v273, a11, a12, v19);
  sub_23676F6E4(v273);
  sub_23676F6E4(v275);
  v270 = *v33;
  v151 = 8 * v270;
  v152 = v19[3](v151 + 16);
  bzero(v152, v151 + 16);
  v153 = v270;
  if (v270 < 1)
  {
    v155 = 0;
  }

  else
  {
    v154 = 0;
    v155 = 0;
    v156 = v152 + 2;
    v157 = v280;
    do
    {
      v158 = *(v157 + 16 * v154 + 8);
      v159 = v283;
      if (v283 > 2147483630)
      {
        v283 = 1;
        bzero(v281, 4 * v282);
        v153 = v270;
        v159 = v283;
        v157 = v280;
      }

      v160 = v159 + 1;
      v283 = v160;
      v161 = (v157 + 16 * v154);
      v162 = v161[1];
      if (v162)
      {
        v163 = *v161;
        v164 = v281;
        v165 = 4 * v162;
        do
        {
          v166 = *v163++;
          v164[v166] = v160;
          ++v156[v166];
          v165 -= 4;
        }

        while (v165);
      }

      v155 += v158;
      v167 = (v278 + 16 * v154);
      v168 = v167[1];
      if (v168)
      {
        v169 = *v167;
        v170 = v281;
        v171 = 4 * v168;
        v172 = v283;
        do
        {
          v173 = *v169;
          if (v170[v173] < v172)
          {
            ++v155;
            ++v156[v173];
          }

          ++v169;
          v171 -= 4;
        }

        while (v171);
      }

      ++v154;
    }

    while (v154 != v153);
    v174 = v152[1];
    v175 = v153;
    do
    {
      v174 += *v156;
      *v156++ = v174;
      --v175;
    }

    while (v175);
  }

  *a14 = v19[3](4 * v155);
  *a15 = v19[3](v155);
  v176 = v19[3](4 * v155);
  v177 = v19[3](v155);
  v178 = v270;
  if (v270 < 1)
  {
    v198 = &a13[v270];
    *v198 = 0;
    v249 = v283;
    if (v283 > 2147483630)
    {
      v283 = 1;
      bzero(v281, 4 * v282);
      v249 = v283;
    }

    v239 = 0;
    v283 = v249 + 1;
  }

  else
  {
    v179 = 0;
    v180 = 0;
    v181 = a14;
    do
    {
      a13[v179] = v180;
      v182 = v283;
      if (v283 > 2147483630)
      {
        v283 = 1;
        bzero(v281, 4 * v282);
        v181 = a14;
        v178 = v270;
        v182 = v283;
      }

      v283 = v182 + 1;
      v183 = (v280 + 16 * v179);
      v184 = v183[1];
      if (v184)
      {
        v185 = *v183;
        v186 = *v181;
        v187 = *a15;
        v188 = 4 * v184;
        v189 = v281;
        do
        {
          v190 = *v185++;
          *(v186 + 4 * v180) = v190;
          *(v187 + v180) = 1;
          *&v29[8 * v190] = v180++;
          v189[v190] = v283;
          v188 -= 4;
        }

        while (v188);
      }

      v191 = (v278 + 16 * v179);
      v192 = v191[1];
      if (v192)
      {
        v193 = *v191;
        v194 = v281;
        v195 = 4 * v192;
        do
        {
          v196 = *v193;
          if (v194[*v193] >= v283)
          {
            *(*a15 + *&v29[8 * v196]) = 3;
          }

          else
          {
            *(*v181 + 4 * v180) = v196;
            *(*a15 + v180++) = 2;
          }

          ++v193;
          v195 -= 4;
        }

        while (v195);
      }

      ++v179;
    }

    while (v179 != v178);
    v197 = 0;
    v198 = &a13[v178];
    *v198 = v180;
    v199 = *a13;
    v200 = v152 + 1;
    do
    {
      v201 = v197++;
      v202 = a13[v197];
      if (v199 < v202)
      {
        v203 = *v181;
        v204 = *a15;
        do
        {
          v205 = *(v203 + 4 * v199);
          v206 = v200[v205];
          *(v176 + 4 * v206) = v201;
          *(v177 + v206) = *(v204 + v199);
          v200[v205] = v206 + 1;
          ++v199;
          v202 = a13[v197];
        }

        while (v199 < v202);
      }

      v199 = v202;
    }

    while (v197 != v178);
    v207 = &v29[8 * v178];
    v208 = v283;
    if (v283 > 2147483630)
    {
      v283 = 1;
      bzero(v281, 4 * v282);
      v181 = a14;
      v178 = v270;
      v208 = v283;
    }

    v209 = 0;
    v210 = 0;
    v211 = v208 + 1;
    v283 = v211;
    do
    {
      *&v207[4 * v209] = v178;
      v212 = v152[v209];
      v213 = v209 + 1;
      v214 = v152[v209 + 1];
      v65 = v214 <= v212;
      v215 = v214 - v212;
      if (!v65)
      {
        v216 = 0;
        v217 = v210;
        v218 = &a18[16 * (v251 >> 3) + 4 + 8 * v210 + v254];
        v219 = v177 + v212;
        v220 = v176 + 4 * v212;
        do
        {
          v221 = *(v219 + v216);
          if (v221 == 3)
          {
            v222 = *(v220 + 4 * v216);
            if (v222 >= *&v207[4 * v209])
            {
              v222 = *&v207[4 * v209];
            }

            *&v207[4 * v209] = v222;
          }

          *(v218 - 1) = *(v220 + 4 * v216);
          *v218 = v221;
          v218 += 8;
          ++v216;
        }

        while (v215 != v216);
        v210 += v216;
        if (v217 + v216 - 1 >= 0)
        {
          v223 = v281;
          do
          {
            v224 = &v29[8 * --v210];
            v225 = *v224;
            if (*v224 < *&v207[4 * v209])
            {
              v226 = v224[4];
              v227 = v223[v225];
              v228 = __OFSUB__(v227, v283);
              v229 = v227 - v283;
              if (v229 < 0 != v228)
              {
                v223[v225] = v283 + v226;
                v230 = &v152[v225];
                v232 = *v230;
                v231 = v230[1];
                v65 = v231 <= v232;
                v233 = v231 - v232;
                if (!v65)
                {
                  v234 = (v176 + 4 * v232);
                  v235 = (v177 + v232);
                  do
                  {
                    v236 = *v235++;
                    if ((v236 & v226) != 0)
                    {
                      v237 = &v29[8 * v210];
                      *v237 = *v234;
                      v237[4] = v226;
                      ++v210;
                    }

                    ++v234;
                    --v233;
                  }

                  while (v233);
                }
              }

              else if (v229 != v226)
              {
                *&v207[4 * v209] = v225;
              }
            }
          }

          while (v210 > 0);
          v211 = v283;
        }
      }

      if (v211 >= 2147483628)
      {
        v283 = 1;
        bzero(v281, 4 * v282);
        v181 = a14;
        v178 = v270;
        v211 = v283;
      }

      v211 += 3;
      v283 = v211;
      v209 = v213;
    }

    while (v213 != v178);
    v238 = 0;
    v239 = 0;
    v240 = *a13;
    do
    {
      v241 = v240;
      a13[v238] = v239;
      v242 = v238 + 1;
      v240 = a13[v238 + 1];
      if (v241 >= v240)
      {
        goto LABEL_180;
      }

      v243 = 0;
      v244 = *v181;
      do
      {
        v245 = *(v244 + 4 * v241);
        if (v238 <= *&v207[4 * v245])
        {
          *(v244 + 4 * v239) = v245;
          v246 = *&v207[4 * v245];
          v247 = *a15;
          if (v238 == v246)
          {
            v243 = 1;
            v248 = 3;
          }

          else
          {
            v248 = *(v247 + v241);
          }

          *(v247 + v239++) = v248;
        }

        ++v241;
      }

      while (v240 != v241);
      v241 = v240;
      if ((v243 & 1) == 0)
      {
LABEL_180:
        if (v239 < v241)
        {
          *(*v181 + 4 * v239) = *&v207[4 * v238];
          *(*a15 + v239++) = 3;
        }
      }

      ++v238;
    }

    while (v242 != v178);
    v19 = a17;
  }

  *v198 = v239;
  v19[4](v152);
  v19[4](v176);
  v19[4](v177);
  sub_23676F6E4(v277);
  return sub_23676F6E4(v279);
}

void sub_23676D620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_23676F6E4(&a53);
  sub_23676F6E4(&a65);
  sub_23676F6E4((v65 - 256));
  _Unwind_Resume(a1);
}

unint64_t sub_23676D678(uint64_t a1, int a2, unint64_t a3)
{
  v3 = *(*(a1 + 72) + 8 * a2);
  if (v3)
  {
    v4 = 0;
    do
    {
      *(a3 + 4 * v4++) = *v3;
      v3 = *(v3 + 8);
    }

    while (v3);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (4 * v5)
  {
    v6 = (a3 + 4 * v5 - 4);
    if (v6 > a3)
    {
      v7 = a3 + 4;
      do
      {
        v8 = *(v7 - 4);
        *(v7 - 4) = *v6;
        *v6-- = v8;
        v9 = v7 >= v6;
        v7 += 4;
      }

      while (!v9);
    }
  }

  return a3;
}

void *sub_23676D6EC(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v16 = a9;
  sub_23672AB18(a6);
  v57 = a6;
  *(*a6 + 4 * a2) = *(a6 + 16);
  if (a4)
  {
    v53 = 0;
    v17 = (4 * a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = &a9[v17];
    v19 = a3;
    v20 = &a9[v17 + v17];
    v21 = v19 + 4 * a4;
    v54 = v19;
    do
    {
      v23 = *(v21 - 4);
      v21 -= 4;
      v22 = v23;
      v24 = sub_23676D678(a5, v23, &v20[v17]);
      if (!v25)
      {
LABEL_11:
        v55 = v22;
        v56 = v21;
        *v18 = v22;
        *v20 = 0;
        sub_23672AB18(a7);
        v30 = 1;
        while (1)
        {
          v31 = *&v18[4 * v30 - 4];
          v32 = sub_23676D678(a5, v31, &v20[v17]);
          v33 = *&v20[4 * v30 - 4];
          if (v34 <= v33)
          {
            *(*a7 + 4 * v31) = *(a7 + 16);
            --v30;
          }

          else
          {
            *&v20[4 * v30 - 4] = v33 + 1;
            v35 = *(v32 + 4 * v33);
            sub_23676D678(a5, v35, &v20[v17]);
            if (v36 && *(*a7 + 4 * v35) < *(a7 + 16))
            {
              v37 = sub_23676D678(a5, v35, &v20[v17]);
              if (v38)
              {
                v39 = *v57;
                v40 = 4 * v38;
                while (*&v39[4 * *v37] < *(v57 + 16))
                {
                  ++v37;
                  v40 -= 4;
                  if (!v40)
                  {
                    goto LABEL_19;
                  }
                }

                v41 = v30;
                *&v18[4 * v30] = v35;
                v42 = *(v57 + 16);
                v43 = &a9[v17];
                do
                {
                  v44 = *v43;
                  v43 += 4;
                  *&v39[4 * v44] = v42;
                  --v41;
                }

                while (v41);
                v19 = v54;
                v21 = v56;
                goto LABEL_27;
              }

LABEL_19:
              *&v18[4 * v30] = v35;
              *&v20[4 * v30++] = 0;
            }
          }

          if (v30 <= 0)
          {
            v21 = v56;
            v19 = v54;
            v46 = v55;
            *(*v57 + 4 * v55) = *(v57 + 16);
            v45 = v53;
            v26 = a9;
            ++v53;
            goto LABEL_26;
          }
        }
      }

      v26 = *v57;
      v27 = 4 * v25;
      while (1)
      {
        v28 = *v24;
        if (v28 != a2 && *&v26[4 * v28] >= *(v57 + 16))
        {
          break;
        }

        ++v24;
        v27 -= 4;
        if (!v27)
        {
          goto LABEL_11;
        }
      }

      v45 = v22;
      v46 = *(v57 + 16);
LABEL_26:
      *&v26[4 * v45] = v46;
LABEL_27:
      ;
    }

    while (v21 != v19);
    v47 = v53;
    if (v53)
    {
      v16 = a9;
      v48 = &a9[4 * v53 - 4];
      if (v48 > a9)
      {
        v49 = a9 + 4;
        do
        {
          v50 = *(v49 - 1);
          *(v49 - 1) = *v48;
          *v48 = v50;
          v48 -= 4;
          v51 = v49 >= v48;
          v49 += 4;
        }

        while (!v51);
      }
    }

    else
    {
      v16 = a9;
    }
  }

  else
  {
    v47 = 0;
  }

  return sub_23676D9A0(a5, v16, v47);
}

void *sub_23676D9A0(uint64_t a1, char *__src, unint64_t a3)
{
  v3 = a3;
  if (a3 > *(a1 + 56))
  {
    v6 = 4 * *(a1 + 64) + 40;
    v7 = (*(*a1 + 24))(v6);
    if (v7)
    {
      v8 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
      *v7 = v8;
      v7[1] = (v7 + v6 - v8) >> 2;
      v7[2] = 0;
      v7[3] = 0;
    }

    v9 = *(a1 + 40);
    *(v9 + 16) = v7;
    v7[3] = v9;
    *(a1 + 40) = v7;
    *(a1 + 48) = *v7;
    *(a1 + 64) *= 2;
  }

  v10 = *(a1 + 8);
  v11 = (*(a1 + 16) + 16 * v10);
  v11[1] = v3;
  v12 = *(a1 + 56);
  *v11 = *(a1 + 48);
  *(a1 + 48) += 4 * v3;
  *(a1 + 56) = v12 - v3;
  result = memcpy(*(*(a1 + 16) + 16 * v10), __src, 4 * v3);
  v14 = *(a1 + 104);
  if (v3 + v14 > *(*(a1 + 96) + 8))
  {
    v15 = 16 * *(a1 + 64) + 40;
    result = (*(*a1 + 24))(v15);
    if (result)
    {
      v16 = (result + 39) & 0xFFFFFFFFFFFFFFF8;
      *result = v16;
      result[1] = (result + v15 - v16) >> 4;
      result[2] = 0;
      result[3] = 0;
    }

    LODWORD(v14) = 0;
    v17 = *(a1 + 96);
    *(v17 + 16) = result;
    result[3] = v17;
    *(a1 + 96) = result;
    *(a1 + 104) = 0;
    *(a1 + 112) *= 2;
  }

  if (v3)
  {
    v18 = *(a1 + 8);
    do
    {
      v19 = *(*(a1 + 72) + 8 * *__src);
      v14 = **(a1 + 96) + 16 * v14;
      *v14 = v18;
      *(v14 + 8) = v19;
      v20 = *(a1 + 104);
      v21 = *__src;
      __src += 4;
      *(*(a1 + 72) + 8 * v21) = **(a1 + 96) + 16 * v20;
      LODWORD(v14) = v20 + 1;
      *(a1 + 104) = v20 + 1;
      --v3;
    }

    while (v3);
  }

  ++*(a1 + 8);
  return result;
}

uint64_t sub_23676DB54(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = v3 - 1;
  v5 = *(result + 16);
  v6 = (v5 + 16 * (v3 - 1));
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = 4 * v7;
    do
    {
      v10 = *v8++;
      *(*(result + 72) + 8 * v10) = *(*(*(result + 72) + 8 * v10) + 8);
      v9 -= 4;
    }

    while (v9);
    v5 = *(result + 16);
    v11 = *(v5 + 16 * v4 + 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = (v5 + 16 * v4);
  *(result + 104) -= v11;
  v13 = v5 + 16 * v3;
  v14 = *(v13 - 24);
  if (v14)
  {
    v15 = 0;
    LODWORD(v16) = 0;
    LODWORD(v17) = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      if (v11 <= v17)
      {
        break;
      }

      v20 = *(v13 - 32);
      v21 = *(v20 + 4 * v15);
      v22 = *v12;
      result = *(*v12 + v17);
      if (v21 >= result)
      {
        if (v21 == result)
        {
          if (v21 != a2)
          {
            *(v20 + 4 * v18++) = v21;
          }

          LODWORD(v16) = v16 + 1;
        }

        else if (result != a2)
        {
          v22[v19++] = result;
          v23 = *(*(v2 + 72) + 8 * v22[v17]);
          v24 = **(v2 + 96) + 16 * *(v2 + 104);
          *v24 = *(v2 + 8) - 2;
          *(v24 + 8) = v23;
          v25 = *(v2 + 104);
          result = *(v2 + 72);
          *(result + 8 * *(*v12 + v17)) = **(v2 + 96) + 16 * v25;
          *(v2 + 104) = v25 + 1;
        }

        LODWORD(v17) = v17 + 1;
      }

      else
      {
        if (v21 != a2)
        {
          *(v20 + 4 * v18++) = v21;
        }

        LODWORD(v16) = v16 + 1;
      }

      v15 = v16;
    }

    while (v14 > v16);
    v17 = v17;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v17 = 0;
    LODWORD(v16) = 0;
  }

  if (v14 > v16)
  {
    v16 = v16;
    v26 = *(v13 - 32);
    do
    {
      v27 = *(v26 + 4 * v16);
      if (v27 != a2)
      {
        *(v26 + 4 * v18++) = v27;
      }

      ++v16;
    }

    while (v14 > v16);
  }

  while (v11 > v17)
  {
    v28 = *v12;
    v29 = *(*v12 + v17);
    if (v29 != a2)
    {
      v28[v19++] = v29;
      v30 = *(*(v2 + 72) + 8 * v28[v17]);
      v31 = **(v2 + 96) + 16 * *(v2 + 104);
      *v31 = *(v2 + 8) - 2;
      *(v31 + 8) = v30;
      v32 = *(v2 + 104);
      result = *(v2 + 72);
      *(result + 8 * *(*v12 + v17)) = **(v2 + 96) + 16 * v32;
      *(v2 + 104) = v32 + 1;
    }

    ++v17;
  }

  if (v19)
  {
    v33 = *(v13 - 32);
    v34 = *(v2 + 40);
    v35 = *v34;
    v36 = v33 - *v34;
    if (v33 < *v34 || (v37 = v34[1], v33 >= v35 + 4 * v37))
    {
      v39 = v33 + 4 * v14;
      v40 = v19;
      v41 = v39 + 4 * v19;
      v42 = v34[3];
      v43 = *v42;
      v44 = v42[1];
      v45 = v19 + v18;
      if (v41 <= v43 + 4 * v44)
      {
        v50 = v44 - ((v33 - v43) >> 2);
        if (v45 != -1)
        {
          v50 = v45;
        }

        *(v13 - 32) = v33;
        *(v13 - 24) = v50;
        memcpy((v33 + 4 * v18), *v12, 4 * v40);
      }

      else
      {
        v46 = *v12 - v35;
        if (v45 == -1)
        {
          v45 = v34[1] - (v46 >> 2);
        }

        v47 = v35 + v46;
        memcpy((v35 + v46 + 4 * v19), *(v13 - 32), 4 * v18);
        *(v13 - 32) = v47;
        *(v13 - 24) = v45;
      }
    }

    else
    {
      if (v18 != v16)
      {
        *(v33 + 4 * v18) = *(*v12 + v19 - 1);
      }

      if (v19 + v18 == -1)
      {
        v38 = v37 - (v36 >> 2);
      }

      else
      {
        v38 = v19 + v18;
      }

      *(v13 - 32) = v33;
      *(v13 - 24) = v38;
    }

    result = std::__sort<std::__less<int,int> &,int *>();
  }

  else if (v18 != v16)
  {
    v48 = v18;
    v49 = *(v2 + 16) + 16 * *(v2 + 8);
    *(v49 - 32) = *(v13 - 32);
    *(v49 - 24) = v48;
  }

  v51 = *(v13 - 32);
  v52 = *(v2 + 40);
  v53 = *v52;
  if (v51 < *v52 || (v54 = v52[1], v51 >= v53 + 4 * v54))
  {
    *(v2 + 48) = *v52;
  }

  else
  {
    v55 = v51 + 4 * *(v13 - 24);
    *(v2 + 48) = v55;
    *(v2 + 56) = v54 - ((v55 - v53) >> 2);
  }

  --*(v2 + 8);
  return result;
}

uint64_t sub_23676DEF8(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a1 <= 0)
  {
    result = (*(a5 + 24))(0, a2);
    v22 = 0;
    *a4 = result;
  }

  else
  {
    v9 = 0;
    v10 = (*(a2 + 16) + 8);
    v11 = a1;
    do
    {
      v12 = *v10;
      v10 += 2;
      v9 += v12;
      --v11;
    }

    while (v11);
    result = (*(a5 + 24))(4 * v9);
    v14 = 0;
    v15 = 0;
    *a4 = result;
    v16 = *(a2 + 16);
    do
    {
      *(a3 + 8 * v14) = v15;
      v17 = (v16 + 16 * v14);
      v18 = v17[1];
      if (v18)
      {
        v19 = *v17;
        v20 = 4 * v18;
        do
        {
          v21 = *v19++;
          v22 = v15 + 1;
          *(result + 4 * v15++) = v21;
          v20 -= 4;
        }

        while (v20);
      }

      else
      {
        v22 = v15;
      }

      ++v14;
      v15 = v22;
    }

    while (v14 != a1);
  }

  *(a3 + 8 * a1) = v22;
  return result;
}

unint64_t sub_23676DFE0(int a1, int a2, uint64_t a3)
{
  v3 = 2 * a2;
  v4 = 8 * a2 + 8 * a2 + 24;
  if (v4 <= 8 * (2 * a2 + 2) + 16)
  {
    v4 = 8 * (v3 + 2) + 16;
  }

  if (v4 <= a3 + 4 * (a3 + a2) + 8 * ((2 * a2) | 1) + 40)
  {
    v4 = a3 + 4 * (a3 + a2) + 8 * ((2 * a2) | 1) + 40;
  }

  v5 = v4 + 4 * (3 * a2 + 2 * a1 + 1) + 40;
  if (12 * a2 + 16 > v5)
  {
    v5 = 12 * a2 + 16;
  }

  return a3 + 12 * a2 + 8 * a2 + 4 * (a3 + 2 * a1 + v3) + v5 + 80;
}

char *sub_23676E074(uint64_t a1, unsigned __int8 a2, char *a3)
{
  v3 = a3;
  v5 = *(a1 + 60);
  v6 = (4 * v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = &a3[v6];
  v228 = a3;
  v229 = v5 & 0x3FFFFFFFFFFFFFFFLL;
  v230 = 1;
  bzero(a3, 4 * v5);
  v8 = *(a1 + 60);
  v9 = (4 * v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v226[0] = v7;
  v226[1] = v8 & 0x3FFFFFFFFFFFFFFFLL;
  v227 = 1;
  bzero(v7, 4 * v8);
  v10 = *(a1 + 168);
  v11 = *(a1 + 216);
  v201 = 2 * v10;
  v202 = v11[v10];
  v200 = v10 + 2;
  v12 = (v202 + 8 * (v10 + 2) + 4 * (v202 + 2 * v10) + 39) & 0xFFFFFFFFFFFFFFF8;
  v220 = &v7[v9 + v12];
  sub_23676F7B0(v222, v10, v11, v10 + 1, *(a1 + 224), v202, *(a1 + 232), v202, &v7[v9]);
  v13 = *(a1 + 168);
  v14 = 12 * v13;
  v15 = (12 * v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(a1 + 168);
  if (v13 >= 1)
  {
    v17 = 0;
    v18 = *(a1 + 184);
    v19 = *(a1 + 200);
    v22 = *v18;
    v20 = v18 + 1;
    v21 = v22;
    v25 = *v19;
    v23 = v19 + 1;
    v24 = v25;
    v26 = (*(a1 + 176) + 4);
    v27 = &v3[v6 + 4 + v12 + v9];
    do
    {
      v28 = v20[v17];
      v29 = *v26 - *(v26 - 1);
      v30 = v23[v17];
      *(v27 - 1) = v29 + v28 - v21;
      *v27 = v29 + v30 - v24;
      *(v27 + 1) = v29;
      ++v26;
      v27 += 12;
      v24 = v30;
      v21 = v28;
      ++v17;
    }

    while (v17 < *(a1 + 168));
    v16 = *(a1 + 168);
  }

  __n = v220 + v15;
  v205 = v6;
  v206 = v3;
  v203 = v12;
  v204 = v9;
  v207 = v15;
  if ((*a1 & 0x80000000) == 0 && v16 >= 1)
  {
    v31 = 0;
    __src = v14 / 0xC;
    do
    {
      v32 = sub_23676EE48(v222, v31);
      if (v32 != 0x7FFFFFFF && (v32 & 0xFF00000000) == 0x300000000)
      {
        sub_23676EEDC(v31, v32, v222, v220, __src, a1, a2, &v228);
      }

      ++v31;
      v34 = *(a1 + 168);
    }

    while (v31 < v34);
    if (v34 < 1)
    {
      v16 = *(a1 + 168);
    }

    else
    {
      v35 = (__n + 8 * v34);
      v36 = &v3[v203 + v207 + v6 + v9];
      do
      {
        v208 = v34--;
        if (v34 == *(v223 + 4 * v34))
        {
          v37 = v230;
          v38 = v228;
          if (v230 > 2147483630)
          {
            v230 = 1;
            bzero(v228, 4 * v229);
            v37 = v230;
            v38 = v228;
          }

          v39 = 0;
          v230 = v37 + 1;
          *&v38[4 * v34] = v37 + 1;
          v40 = *(a1 + 216);
          v41 = v34;
          do
          {
            v42 = v41;
            v43 = (v40 + 8 * v41);
            for (i = *v43; i < v43[1]; ++i)
            {
              v45 = *(v223 + 4 * *(*(a1 + 224) + 4 * i));
              v46 = *(*(a1 + 232) + i);
              if (*&v228[4 * v45] >= v230)
              {
                if (v34 != v45)
                {
                  v48 = v35[v45];
                  if (v48 != -1)
                  {
                    v49 = __n + 8 * v48;
                    v51 = *(v49 + 4);
                    v50 = (v49 + 4);
                    if (v51 != v46)
                    {
                      *v50 = 3;
                    }
                  }
                }
              }

              else
              {
                *&v228[4 * v45] = v230;
                if (v34 == sub_23676EE48(v222, v45))
                {
                  v35[v45] = v39;
                  v47 = __n + 8 * v39;
                  *v47 = v45;
                  *(v47 + 4) = v46;
                  ++v39;
                }

                else
                {
                  v35[v45] = -1;
                }
              }

              v40 = *(a1 + 216);
              v43 = (v40 + 8 * v42);
            }

            v41 = *(v224 + 4 * v42);
          }

          while (v41 != -1);
          v52 = 126 - 2 * __clz(v39);
          if (v39)
          {
            v53 = v52;
          }

          else
          {
            v53 = 0;
          }

          sub_23676F950(__n, (__n + 8 * v39), v231, v53, 1);
          v54 = (v39 - 1);
          if (v39 >= 1)
          {
            v55 = v39;
            do
            {
              v56 = *(__n + 8 * (v55 - 1));
              if (*(v223 + 4 * v56) == v56 && v55 >= 2)
              {
                v58 = 0;
                do
                {
                  v59 = *&v36[8 * v58];
                  v60 = *(v223 + 4 * v59) == v59 && BYTE4(v56) == BYTE4(v59);
                  if (v60 && (BYTE4(v56) == 3 || sub_23676F2D0(v222, v56, *&v36[8 * v58], &v228, v226, v35)))
                  {
                    sub_23676EEDC(v59, v56, v222, v220, __src, a1, a2, &v228);
                  }

                  ++v58;
                }

                while (v54 != v58);
              }

              --v54;
              v61 = v55-- > 1;
            }

            while (v61);
          }
        }
      }

      while (v208 > 1);
      v16 = *(a1 + 168);
      v3 = v206;
      v9 = v204;
    }

    v12 = v203;
  }

  v198 = 4 * *(a1 + 60) + 7;
  v62 = __n + (v198 & 0xFFFFFFFFFFFFFFF8);
  v197 = 4 * v16 + 7;
  v63 = v197 & 0xFFFFFFFFFFFFFFF8;
  v221 = v62 + (v198 & 0xFFFFFFFFFFFFFFF8);
  v64 = v221 + (v197 & 0xFFFFFFFFFFFFFFF8);
  v65 = (v64 + (v197 & 0xFFFFFFFFFFFFFFF8));
  v199 = (4 * (v16 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = v65 + v199;
  v67 = v230;
  __srca = (v65 + v199);
  if (v230 > 2147483630)
  {
    v230 = 1;
    bzero(v228, 4 * v229);
    v66 = v65 + v199;
    v67 = v230;
    v16 = *(a1 + 168);
  }

  v68 = v67 + 1;
  v230 = v67 + 1;
  if (v16 >= 1)
  {
    v69 = 0;
    v70 = &v66[v63];
    v71 = &v66[v63 + v63];
    v72 = v16;
    v73 = v228 - 4;
    v74 = (v225 + 8 * v16);
    v75 = v74;
    do
    {
      v76 = *--v75;
      if (v76 == *v74)
      {
        *&v66[4 * v69] = v72 - 1;
        *&v70[4 * v69] = v72 - 1;
        *(v71 + 8 * v69++) = *(*(a1 + 216) + 8 * v72 - 8);
        *&v73[4 * v72] = v68;
      }

      --v72;
      v74 = v75;
    }

    while ((v72 + 1) > 1);
    if (v69)
    {
      v77 = 0;
      v78 = 0;
      v79 = *(a1 + 216);
      v80 = v224;
      v81 = v223;
      v82 = v228;
      v83 = v12 + v207 + v9 + v6;
      v84 = &v3[v83];
      v85 = &v3[(v198 & 0xFFFFFFFFFFFFFFF8) + v83];
      while (1)
      {
        while (1)
        {
          v86 = v69 - 1;
          v87 = *&v70[4 * v69 - 4];
          v88 = *(v71 + 8 * (v69 - 1));
          if (v88 >= *(v79 + 8 + 8 * v87))
          {
            break;
          }

          v89 = *(v81 + 4 * *(*(a1 + 224) + 4 * v88));
          *(v71 + 8 * v86) = v88 + 1;
          v90 = v230;
          if (*&v82[4 * v89] >= v230)
          {
LABEL_73:
            if (!v69)
            {
              goto LABEL_84;
            }
          }

          else
          {
            *&v66[4 * v69] = v89;
            *&v70[4 * v69] = v89;
            *(v71 + 8 * v69) = *(v79 + 8 * v89);
            *&v82[4 * v89] = v90;
            if (!++v69)
            {
              goto LABEL_84;
            }
          }
        }

        v91 = *(v80 + 4 * v87);
        if (v91 != -1)
        {
          *&v70[4 * v86] = v91;
          *(v71 + 8 * v86) = *(v79 + 8 * v91);
          goto LABEL_73;
        }

        v92 = *&v66[4 * v86];
        *(v221 + 4 * v77) = v92;
        v65[v77] = v78;
        if (v92 != -1)
        {
          v93 = *(a1 + 176);
          do
          {
            *(v64 + 4 * v92) = v77;
            v94 = (v93 + 4 * v92);
            v95 = *v94;
            if (v95 < v94[1])
            {
              v96 = &v84[4 * v78];
              v97 = &v85[4 * v95];
              do
              {
                *v96 = v95;
                v96 += 4;
                *v97 = v78;
                v97 += 4;
                ++v95;
                ++v78;
              }

              while (v95 < v94[1]);
            }

            v92 = *(v80 + 4 * v92);
          }

          while (v92 != -1);
        }

        ++v77;
        --v69;
        if (!v86)
        {
          goto LABEL_84;
        }
      }
    }
  }

  v78 = 0;
  v77 = 0;
LABEL_84:
  v65[v77] = v78;
  v98 = *(a1 + 168);
  if (v98 < 1)
  {
    v103 = 0uLL;
  }

  else
  {
    v99 = 0;
    v100 = &v3[v12 + 8 + v9 + v6];
    v101 = 0uLL;
    do
    {
      if (v99 == *(v223 + 4 * v99))
      {
        v102 = vld1_dup_f32(v100);
        v101 = vaddw_s32(v101, vsub_s32(*(v100 - 2), v102));
      }

      ++v99;
      v100 += 3;
    }

    while (v98 != v99);
    v103 = vshlq_n_s64(v101, 2uLL);
  }

  v219 = v103.i64[1];
  v104 = (*(a1 + 24))(v103.i64[0]);
  v105 = (*(a1 + 24))(v219);
  v209 = v77 + 1;
  __na = 8 * (v77 + 1);
  v212 = v77;
  v213 = &__srca[__na / 8];
  v218 = v77;
  if (v77 < 1)
  {
    v108 = 0;
    v107 = 0;
  }

  else
  {
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = v230;
    do
    {
      v110 = v106;
      __srca[v106] = v108;
      v213[v106] = v107;
      if (v109 > 2147483630)
      {
        v230 = 1;
        bzero(v228, 4 * v229);
        v109 = v230;
      }

      v111 = v109 + 1;
      v230 = v111;
      v112 = v65[v106++];
      if (v112 < v65[v110 + 1])
      {
        v113 = v228;
        do
        {
          *&v113[4 * v112++] = v111;
        }

        while (v112 < v65[v106]);
      }

      v114 = *(v221 + 4 * v110);
      if (v114 != -1)
      {
        v115 = *(a1 + 184);
        v116 = v228;
        v117 = v224;
        do
        {
          v118 = (v115 + 8 * v114);
          v120 = *v118;
          v119 = v118[1];
          v61 = v119 <= v120;
          v121 = v119 - v120;
          if (!v61)
          {
            v122 = (*(a1 + 192) + 4 * v120);
            do
            {
              v123 = *v122++;
              v124 = *(v62 + 4 * v123);
              if (*&v116[4 * v124] < v111)
              {
                *(v104 + 4 * v108++) = v124;
                v111 = v230;
                *&v116[4 * v124] = v230;
              }

              --v121;
            }

            while (v121);
          }

          v114 = *(v117 + 4 * v114);
        }

        while (v114 != -1);
      }

      if (v111 > 2147483630)
      {
        v230 = 1;
        bzero(v228, 4 * v229);
        v111 = v230;
      }

      v109 = v111 + 1;
      v230 = v109;
      v125 = v65[v110];
      if (v125 < v65[v106])
      {
        v126 = v228;
        do
        {
          *&v126[4 * v125++] = v109;
        }

        while (v125 < v65[v106]);
      }

      v127 = *(v221 + 4 * v110);
      if (v127 == -1)
      {
        v77 = v212;
      }

      else
      {
        v128 = *(a1 + 200);
        v129 = v228;
        v130 = v224;
        v77 = v212;
        do
        {
          v131 = (v128 + 8 * v127);
          v133 = *v131;
          v132 = v131[1];
          v61 = v132 <= v133;
          v134 = v132 - v133;
          if (!v61)
          {
            v135 = (*(a1 + 208) + 4 * v133);
            do
            {
              v136 = *v135++;
              v137 = *(v62 + 4 * v136);
              if (*&v129[4 * v137] < v109)
              {
                *(v105 + 4 * v107++) = v137;
                v109 = v230;
                *&v129[4 * v137] = v230;
              }

              --v134;
            }

            while (v134);
          }

          v127 = *(v130 + 4 * v127);
        }

        while (v127 != -1);
      }
    }

    while (v106 != v218);
  }

  __srca[v77] = v108;
  v138 = *(a1 + 184);
  v213[v77] = v107;
  memcpy(v138, __srca, __na);
  memcpy(*(a1 + 200), v213, __na);
  (*(a1 + 32))(*(a1 + 192));
  (*(a1 + 32))(*(a1 + 208));
  *(a1 + 192) = v104;
  *(a1 + 208) = v105;
  v139 = *(a1 + 168);
  v140 = &__srca[v139 + 1];
  v141 = *(*(a1 + 216) + 8 * v139);
  v142 = (4 * v141 + 7) & 0xFFFFFFFFFFFFFFF8;
  v143 = v140 + v142;
  v144 = v140 + v142 + ((v141 + 7) & 0xFFFFFFFFFFFFFFF8);
  v145 = 4 * v139;
  bzero(v144, 4 * v139);
  if (v77 < 1)
  {
    v165 = 0;
    v167 = v207;
    v172 = v209;
  }

  else
  {
    v196 = v142;
    v214 = v139;
    v146 = 0;
    v147 = 0;
    v148 = &v144[(v145 + 7) & 0xFFFFFFFFFFFFFFF8];
    do
    {
      __srca[v146] = v147;
      v149 = v230;
      if (v230 > 2147483630)
      {
        v230 = 1;
        bzero(v228, 4 * v229);
        v149 = v230;
      }

      v230 = v149 + 1;
      v150 = *(v221 + 4 * v146);
      if (v150 != -1)
      {
        v151 = *(a1 + 216);
        v152 = v224;
        do
        {
          v153 = (v151 + 8 * v150);
          v154 = *v153;
          v155 = v153[1];
          if (*v153 < v155)
          {
            v156 = *(a1 + 224);
            v157 = v228;
            do
            {
              v158 = *(v64 + 4 * *(v156 + 4 * v154));
              if (v146 != v158)
              {
                if (*&v157[4 * v158] >= v230)
                {
                  v161 = *&v148[8 * v158];
                  v162 = (*(*(a1 + 232) + v154) | v143[v161]);
                  v143[v161] |= *(*(a1 + 232) + v154);
                  if (v162 == 3)
                  {
                    v163 = *&v144[4 * v158];
                    if (v146 < v163)
                    {
                      v163 = v146;
                    }

                    *&v144[4 * v158] = v163;
                  }
                }

                else
                {
                  *&v157[4 * v158] = v230;
                  *&v148[8 * v158] = v147;
                  *(v140 + v147) = v158;
                  v159 = *(*(a1 + 232) + v154);
                  v143[v147] = v159;
                  if (v159 == 3)
                  {
                    v160 = *&v144[4 * v158];
                    if (v146 < v160)
                    {
                      v160 = v146;
                    }

                    *&v144[4 * v158] = v160;
                  }

                  ++v147;
                  v155 = v153[1];
                }
              }

              ++v154;
            }

            while (v154 < v155);
          }

          v150 = *(v152 + 4 * v150);
        }

        while (v150 != -1);
      }

      ++v146;
    }

    while (v146 != v218);
    v164 = 0;
    v165 = 0;
    __srca[v212] = v147;
    v77 = v212;
    v166 = *__srca;
    v167 = v207;
    v168 = ((2 * v198) & 0xFFFFFFFFFFFFFFF0) + 16 * (v197 >> 3) + v203 + v207;
    v169 = v168 + v196;
    v170 = &v206[8 * v214 + 8 + v168 + v205 + v204 + v199];
    v171 = &v206[8 * v214 + 8 + v169 + v204 + v205 + v199];
    v172 = v209;
    do
    {
      __srca[v164] = v165;
      v173 = v164 + 1;
      v174 = __srca[v164 + 1];
      v175 = v174 - v166;
      if (v174 > v166)
      {
        v176 = 0;
        v177 = v170 + 4 * v166;
        v178 = v171 + v166;
        do
        {
          v179 = *(v177 + 4 * v176);
          if (v164 <= *&v144[4 * v179])
          {
            *(v140 + v165) = v179;
            v143[v165++] = *(v178 + v176);
          }

          ++v176;
        }

        while (v175 != v176);
      }

      v166 = v174;
      ++v164;
    }

    while (v173 != v218);
  }

  __srca[v77] = v165;
  *(a1 + 168) = v77;
  memcpy(*(a1 + 176), v65, 4 * v172);
  memcpy(*(a1 + 216), __srca, __na);
  memcpy(*(a1 + 224), v140, 4 * __srca[v77]);
  memcpy(*(a1 + 232), v143, __srca[v77]);
  memcpy(*(a1 + 136), *(a1 + 152), 4 * *(a1 + 60));
  result = memcpy(*(a1 + 144), *(a1 + 160), 4 * *(a1 + 60));
  v182 = *(a1 + 136);
  v181 = *(a1 + 144);
  v183 = *(a1 + 176);
  if (*(v183 + 4 * *(a1 + 168)) >= 1)
  {
    v184 = 0;
    v185 = *(a1 + 96);
    v186 = v182 + 4 * v185;
    v187 = v181 + 4 * v185;
    result = *(a1 + 160);
    v188 = &v206[v205 + v204 + ((8 * v200 + 5 * v202 + 4 * v201 + 39) & 0xFFFFFFFFFFFFFFF8) + v167];
    v189 = *(a1 + 152) + 4 * v185;
    v190 = &result[4 * v185];
    do
    {
      *(v189 + 4 * v184) = *(v186 + 4 * *(v188 + 4 * v184));
      *&v190[4 * v184] = *(v187 + 4 * *(v188 + 4 * v184));
      ++v184;
    }

    while (v184 < *(v183 + 4 * *(a1 + 168)));
  }

  LODWORD(v191) = *(a1 + 60);
  if (*(a1 + 88) + v191 >= 1)
  {
    v192 = 0;
    v193 = *(a1 + 152);
    do
    {
      *(v182 + 4 * *(v193 + 4 * v192)) = v192;
      ++v192;
      v191 = *(a1 + 60);
    }

    while (v192 < *(a1 + 88) + v191);
  }

  if (*(a1 + 92) + v191 >= 1)
  {
    v194 = 0;
    v195 = *(a1 + 160);
    do
    {
      *(v181 + 4 * *(v195 + 4 * v194)) = v194;
      ++v194;
    }

    while (v194 < *(a1 + 92) + *(a1 + 60));
  }

  return result;
}

unint64_t sub_23676EE48(void *a1, int a2)
{
  if (a2 == -1)
  {
    return 0x7FFFFFFFLL;
  }

  v2 = 0;
  v3 = a1[5];
  v4 = 0x7FFFFFFF;
  for (i = a2; i != -1; i = *(a1[3] + 4 * i))
  {
    v6 = *(v3 + 8 * i);
    v7 = *(v3 + 8 + 8 * i);
    if (v6 < v7)
    {
      do
      {
        v8 = a1[7];
        v9 = a1[1];
        v10 = *(v9 + 4 * *(v8 + 4 * v6));
        if (v10 <= v4 && v10 != a2)
        {
          if (v10 != v4)
          {
            v2 = 0;
          }

          v2 |= *(a1[9] + v6);
          v4 = *(v9 + 4 * *(v8 + 4 * v6));
        }

        ++v6;
      }

      while (v7 != v6);
    }
  }

  return v4 | (v2 << 32);
}

void sub_23676EEDC(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unsigned __int8 a7, uint64_t *a8)
{
  v106 = (a4 + 12 * a1);
  v14 = (a4 + 12 * a2);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = sub_23676F5EC(a7, *v106, v106[1], v106[2]);
  v19 = sub_23676F5EC(a7, v15, v16, v17);
  sub_23672AB18(a8);
  if (a1 != -1)
  {
    v20 = *a8;
    v21 = a6[22];
    v22 = a6[23];
    v23 = a1;
    v24 = *(a3 + 24);
    do
    {
      v25 = v23;
      v26 = *(v21 + 4 * v23);
      v27 = v23 + 1;
      if (v26 < *(v21 + 4 * v27))
      {
        v28 = *(a8 + 4);
        do
        {
          *(v20 + 4 * v26++) = v28;
        }

        while (v26 < *(v21 + 4 * v27));
      }

      v29 = *(v22 + 8 * v25);
      v30 = *(v22 + 8 * v27);
      v31 = v30 <= v29;
      v32 = v30 - v29;
      if (!v31)
      {
        v33 = *(a8 + 4);
        v34 = (a6[24] + 4 * v29);
        do
        {
          v35 = *v34++;
          *(v20 + 4 * v35) = v33;
          --v32;
        }

        while (v32);
      }

      v23 = *(v24 + 4 * v25);
    }

    while (v23 != -1);
  }

  if (a2 == -1)
  {
    v36 = 0;
  }

  else
  {
    v36 = 0;
    v37 = *a8;
    v38 = a6[22];
    v39 = a6[23];
    v40 = a2;
    v41 = *(a3 + 24);
    do
    {
      v42 = v40;
      v43 = *(v38 + 4 * v40);
      v44 = v40 + 1;
      v45 = *(v38 + 4 * v44);
      if (v43 < v45)
      {
        do
        {
          v46 = *(v37 + 4 * v43);
          v47 = *(a8 + 4);
          v48 = __OFSUB__(v46, v47);
          v49 = v46 - v47;
          if (v49 < 0 == v48)
          {
            if (v49 != 1)
            {
              ++v36;
            }

            *(v37 + 4 * v43) = v47 + 1;
            v45 = *(v38 + 4 * v44);
          }

          ++v43;
        }

        while (v43 < v45);
      }

      v50 = *(v39 + 8 * v42);
      v51 = *(v39 + 8 * v44);
      v31 = v51 <= v50;
      v52 = v51 - v50;
      if (!v31)
      {
        v53 = (a6[24] + 4 * v50);
        do
        {
          v55 = *v53++;
          v54 = v55;
          v56 = *(v37 + 4 * v55);
          v57 = *(a8 + 4);
          v48 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v58 < 0 == v48)
          {
            if (v58 != 1)
            {
              ++v36;
            }

            *(v37 + 4 * v54) = v57 + 1;
          }

          --v52;
        }

        while (v52);
      }

      v40 = *(v41 + 4 * v42);
    }

    while (v40 != -1);
  }

  sub_23676F750(a8, 2);
  if (a1 != -1)
  {
    v59 = a6[22];
    v60 = *a8;
    v61 = a6[25];
    v62 = a1;
    v63 = *(a3 + 24);
    do
    {
      v64 = v62;
      v65 = *(v59 + 4 * v62);
      v66 = v62 + 1;
      if (v65 < *(v59 + 4 * v66))
      {
        v67 = *(a8 + 4);
        do
        {
          *(v60 + 4 * v65++) = v67;
        }

        while (v65 < *(v59 + 4 * v66));
      }

      v68 = *(v61 + 8 * v64);
      v69 = *(v61 + 8 * v66);
      v31 = v69 <= v68;
      v70 = v69 - v68;
      if (!v31)
      {
        v71 = *(a8 + 4);
        v72 = (a6[26] + 4 * v68);
        do
        {
          v73 = *v72++;
          *(v60 + 4 * v73) = v71;
          --v70;
        }

        while (v70);
      }

      v62 = *(v63 + 4 * v64);
    }

    while (v62 != -1);
  }

  v74 = v18 + v19;
  if (a2 == -1)
  {
    v75 = 0;
  }

  else
  {
    v75 = 0;
    v76 = a6[22];
    v77 = *a8;
    v78 = a6[25];
    v79 = a2;
    v80 = *(a3 + 24);
    do
    {
      v81 = v79;
      v82 = *(v76 + 4 * v79);
      v83 = v79 + 1;
      v84 = *(v76 + 4 * v83);
      if (v82 < v84)
      {
        do
        {
          v85 = *(v77 + 4 * v82);
          v86 = *(a8 + 4);
          v48 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v87 < 0 == v48)
          {
            if (v87 != 1)
            {
              ++v75;
            }

            *(v77 + 4 * v82) = v86 + 1;
            v84 = *(v76 + 4 * v83);
          }

          ++v82;
        }

        while (v82 < v84);
      }

      v88 = *(v78 + 8 * v81);
      v89 = *(v78 + 8 * v83);
      v31 = v89 <= v88;
      v90 = v89 - v88;
      if (!v31)
      {
        v91 = (a6[26] + 4 * v88);
        do
        {
          v93 = *v91++;
          v92 = v93;
          v94 = *(v77 + 4 * v93);
          v95 = *(a8 + 4);
          v48 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v96 < 0 == v48)
          {
            if (v96 != 1)
            {
              ++v75;
            }

            *(v77 + 4 * v92) = v95 + 1;
          }

          --v90;
        }

        while (v90);
      }

      v79 = *(v80 + 4 * v81);
    }

    while (v79 != -1);
  }

  sub_23676F750(a8, 2);
  v97 = *v106 - v36 + *v14;
  v98 = v106[1] - v75 + v14[1];
  v99 = v14[2] + v106[2];
  if (sub_23676F5EC(a7, v97, v98, v99) <= v74)
  {
    *v14 = v97;
    v14[1] = v98;
    v14[2] = v99;
    if (a2 >= a1)
    {
      v100 = a1;
    }

    else
    {
      v100 = a2;
    }

    if (a2 <= a1)
    {
      v101 = a1;
    }

    else
    {
      v101 = a2;
    }

    if (v100 == -1)
    {
      v103 = *(a3 + 24);
    }

    else
    {
      v102 = *(a3 + 8);
      v103 = *(a3 + 24);
      for (i = v100; i != -1; i = *(v103 + 4 * i))
      {
        *(v102 + 4 * i) = v101;
      }
    }

    do
    {
      v105 = v101;
      v101 = *(v103 + 4 * v101);
    }

    while (v101 != -1);
    *(v103 + 4 * v105) = v100;
  }
}

BOOL sub_23676F2D0(void *a1, int a2, int a3, uint64_t *a4, uint64_t *a5, int *a6)
{
  sub_23672AB18(a4);
  sub_23672AB18(a5);
  if (a2 == -1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = a1[5];
    v14 = a1[3];
    for (i = a2; i != -1; i = *(v14 + 4 * i))
    {
      v16 = *(v13 + 8 * i);
      v17 = *(v13 + 8 + 8 * i);
      if (v16 < v17)
      {
        v18 = a1[7];
        v19 = a1[1];
        v20 = *a4;
        do
        {
          v21 = *(v19 + 4 * *(v18 + 4 * v16));
          if (v21 != a2)
          {
            v22 = *(a1[9] + v16);
            v23 = *(v20 + 4 * v21);
            v24 = *(a4 + 4);
            v25 = __OFSUB__(v23, v24);
            v26 = v23 - v24;
            if (v26 < 0 != v25)
            {
              *(v20 + 4 * v21) = v24 + v22;
              ++v12;
            }

            else
            {
              *(v20 + 4 * v21) = (v26 | v22) + v24;
            }
          }

          ++v16;
        }

        while (v17 != v16);
      }
    }
  }

  if (a3 == -1)
  {
    v27 = 0;
  }

  else
  {
    v27 = 0;
    v28 = a1[5];
    for (j = a3; j != -1; j = *(a1[3] + 4 * j))
    {
      v30 = *(v28 + 8 * j);
      v31 = *(v28 + 8 + 8 * j);
      if (v30 < v31)
      {
        v32 = a1[7];
        v33 = a1[1];
        v34 = *a4;
        v35 = *a5;
        do
        {
          v36 = *(v33 + 4 * *(v32 + 4 * v30));
          if (v36 != a3)
          {
            if (*(v34 + 4 * v36) < *(a4 + 4))
            {
              goto LABEL_35;
            }

            v37 = *(a1[9] + v30);
            v38 = *(v35 + 4 * v36);
            v39 = *(a5 + 4);
            v25 = __OFSUB__(v38, v39);
            v40 = v38 - v39;
            if (v40 < 0 != v25)
            {
              *(v35 + 4 * v36) = v39 + v37;
              a6[v27++] = v36;
            }

            else
            {
              *(v35 + 4 * v36) = (v40 | v37) + v39;
            }
          }

          ++v30;
        }

        while (v31 != v30);
      }
    }
  }

  if (v27 == v12)
  {
    if (v12 < 1)
    {
      v47 = 1;
    }

    else
    {
      v41 = v12 - 1;
      do
      {
        v42 = *a6++;
        v43 = *(*a4 + 4 * v42) - *(a4 + 4);
        v44 = *(*a5 + 4 * v42) - *(a5 + 4);
        v46 = v41-- != 0;
        v47 = v43 == v44;
      }

      while (v43 == v44 && v46);
    }
  }

  else
  {
LABEL_35:
    v47 = 0;
  }

  sub_23676F750(a4, 4);
  sub_23676F750(a5, 4);
  return v47;
}

uint64_t sub_23676F4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  v8 = (a1 + 48);
  *(a1 + 56) = 0;
  *(a1 + 64) = a3;
  *(a1 + 104) = 0;
  *(a1 + 112) = a3;
  v9 = (a5 + 16 * (a2 + 1));
  *(a1 + 16) = a5;
  *(a1 + 24) = (a2 + 1) & 0xFFFFFFFFFFFFFFFLL;
  *(a1 + 72) = v9;
  *(a1 + 80) = a2 & 0x1FFFFFFFFFFFFFFFLL;
  bzero(v9, 8 * a2);
  v10 = (*(a4 + 24))(4 * a3 + 40);
  if (v10)
  {
    v11 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
    *v10 = v11;
    v10[1] = (v10 + 4 * a3 - v11 + 40) >> 2;
    v10[2] = 0;
    v10[3] = 0;
  }

  *(a1 + 32) = v10;
  *(a1 + 40) = v10;
  *v8 = *v10;
  v12 = 16 * a3 + 40;
  v13 = (*(a4 + 24))(v12);
  if (v13)
  {
    v14 = (v13 + 39) & 0xFFFFFFFFFFFFFFF8;
    *v13 = v14;
    v13[1] = (v13 + v12 - v14) >> 4;
    v13[2] = 0;
    v13[3] = 0;
  }

  *(a1 + 88) = v13;
  *(a1 + 96) = v13;
  return a1;
}

float sub_23676F5EC(int a1, int a2, int a3, int a4)
{
  v4 = a1 * a4;
  v5 = (a2 - a4) * a1;
  v6 = (a3 - a4) * a1;
  v7 = (((a1 * a4) * v6) * (a1 * a4 - 1)) * 0.5 + (((v4 * v4) * v4) + ((v4 * v4) * v4)) / 3.0 + ((v4 * v5) * (v4 + 1)) * 0.5 + ((v5 * v6) * v4);
  v8 = log2((a1 * a4)) / 10.0 + 0.1;
  if (v8 > 1.0)
  {
    v8 = 1.0;
  }

  v9 = v8;
  return ((v7 / v9) + 256.0) + (4 * v5 * v6);
}

void *sub_23676F6E4(void *a1)
{
  for (i = a1[4]; i; i = v3)
  {
    v3 = *(i + 16);
    (*(*a1 + 32))();
  }

  for (j = a1[11]; j; j = v5)
  {
    v5 = *(j + 16);
    (*(*a1 + 32))();
  }

  return a1;
}

void sub_23676F750(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  if (v4 >= 2147483630 - a2)
  {
    *(a1 + 16) = 1;
    bzero(*a1, 4 * *(a1 + 8));
    v4 = *(a1 + 16);
  }

  *(a1 + 16) = a2 + v4 + 1;
}

uint64_t sub_23676F7B0(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = a2;
  v14 = 4 * a2;
  v15 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a1 + 8) = a9;
  *(a1 + 16) = v15;
  v17 = (a9 + v16 + v16);
  *(a1 + 24) = a9 + v16;
  *(a1 + 32) = v15;
  __pattern4 = -1;
  memset_pattern4((a9 + v16), &__pattern4, v14);
  v18 = &v17[8 * (a2 + 2)];
  *(a1 + 40) = v17;
  *(a1 + 48) = (a2 + 2) & 0x1FFFFFFFFFFFFFFFLL;
  bzero(v17, 8 * (a2 + 2));
  v19 = a3[a2];
  v20 = v19 & 0x3FFFFFFFFFFFFFFFLL;
  v21 = &v18[(4 * v19 + 7) & 0xFFFFFFFFFFFFFFF8];
  *(a1 + 56) = v18;
  *(a1 + 64) = v20;
  v22 = a3[a2];
  *(a1 + 72) = v21;
  *(a1 + 80) = v22;
  if (a2 >= 1)
  {
    v23 = 0;
    v24 = *(a1 + 40);
    v25 = (v24 + 16);
    v26 = *(a1 + 8);
    v27 = *a3;
    do
    {
      *(v26 + 4 * v23) = v23;
      ++v23;
      while (v27 < a3[v23])
      {
        ++v25[*(a5 + 4 * v27++)];
      }

      v27 = a3[v23];
    }

    while (v23 != a2);
    v30 = *(v24 + 8);
    v28 = v24 + 8;
    v29 = v30;
    v31 = a2;
    do
    {
      v29 += *v25;
      *v25++ = v29;
      --v31;
    }

    while (v31);
    v32 = 0;
    v33 = *a3;
    do
    {
      v34 = v32++;
      while (v33 < a3[v32])
      {
        v35 = *(a5 + 4 * v33);
        v36 = *(v28 + 8 * v35);
        *&v18[4 * v36] = v34;
        v21[v36] = *(a7 + v33);
        *(v28 + 8 * v35) = v36 + 1;
        ++v33;
      }

      v33 = a3[v32];
    }

    while (v32 != a2);
  }

  return a1;
}

uint64_t sub_23676F950(uint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
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
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v25 = *(a2 - 2);
        v26 = *v9;
        v27 = -1;
        if (v25 >= *v9)
        {
          v27 = 1;
        }

        if (v25 == v26)
        {
          v28 = *(a2 - 4);
          v29 = *(v9 + 4);
          v30 = v28 >= v29;
          v31 = v28 == v29;
          v27 = -1;
          if (v30)
          {
            v27 = 1;
          }

          if (v31)
          {
            v27 = 0;
          }
        }

        if (v27 < 0)
        {
          *v9 = v25;
          *(a2 - 2) = v26;
          v32 = *(v9 + 4);
          *(v9 + 4) = *(a2 - 4);
          *(a2 - 4) = v32;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      result = sub_23676FE08(v9, (v9 + 8), (v9 + 16));
      v33 = *(a2 - 2);
      v34 = *(v9 + 16);
      v35 = -1;
      if (v33 >= v34)
      {
        v35 = 1;
      }

      if (v33 == v34)
      {
        v36 = *(a2 - 4);
        v37 = *(v9 + 20);
        v30 = v36 >= v37;
        v38 = v36 == v37;
        v35 = -1;
        if (v30)
        {
          v35 = 1;
        }

        if (v38)
        {
          v35 = 0;
        }
      }

      if (v35 < 0)
      {
        *(v9 + 16) = v33;
        *(a2 - 2) = v34;
        v39 = *(v9 + 20);
        *(v9 + 20) = *(a2 - 4);
        *(a2 - 4) = v39;
        v40 = *(v9 + 16);
        v41 = *(v9 + 8);
        v42 = -1;
        if (v40 >= v41)
        {
          v42 = 1;
        }

        if (v40 == v41)
        {
          v43 = *(v9 + 20);
          v44 = *(v9 + 12);
          v30 = v43 >= v44;
          v45 = v43 == v44;
          v42 = -1;
          if (v30)
          {
            v42 = 1;
          }

          if (v45)
          {
            v42 = 0;
          }
        }

        if (v42 < 0)
        {
          *(v9 + 8) = v40;
          *(v9 + 16) = v41;
          v46 = *(v9 + 12);
          v47 = *(v9 + 20);
          *(v9 + 12) = v47;
          *(v9 + 20) = v46;
          v48 = *v9;
          v49 = -1;
          if (v40 >= *v9)
          {
            v49 = 1;
          }

          if (v40 == v48)
          {
            v50 = *(v9 + 4);
            v30 = v47 >= v50;
            v51 = v47 == v50;
            v49 = -1;
            if (v30)
            {
              v49 = 1;
            }

            if (v51)
            {
              v49 = 0;
            }
          }

          if (v49 < 0)
          {
            *v9 = v40;
            *(v9 + 8) = v48;
            v52 = *(v9 + 4);
            *(v9 + 4) = v47;
            *(v9 + 12) = v52;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return sub_23676FF7C(v9, v9 + 8, v9 + 16, (v9 + 24), a2 - 2);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_2367701D8(v9, a2);
      }

      else
      {

        return sub_2367702A4(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return sub_236770948(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 8 * (v12 >> 1);
    if (v12 < 0x81)
    {
      sub_23676FE08((v9 + 8 * (v12 >> 1)), v9, a2 - 2);
      if (a5)
      {
        goto LABEL_28;
      }
    }

    else
    {
      sub_23676FE08(v9, (v9 + 8 * (v12 >> 1)), a2 - 2);
      sub_23676FE08((v9 + 8), (v14 - 8), a2 - 4);
      sub_23676FE08((v9 + 16), (v9 + 8 + 8 * v13), a2 - 6);
      sub_23676FE08((v14 - 8), v14, (v9 + 8 + 8 * v13));
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      LOBYTE(v15) = *(v9 + 4);
      *(v9 + 4) = *(v14 + 4);
      *(v14 + 4) = v15;
      if (a5)
      {
        goto LABEL_28;
      }
    }

    v16 = *(v9 - 8);
    v17 = v16 == *v9;
    if (v16 >= *v9)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (v17)
    {
      v19 = *(v9 - 4);
      v20 = *(v9 + 4);
      v21 = v19 == v20;
      v18 = v19 >= v20 ? 1 : -1;
      if (v21)
      {
        v18 = 0;
      }
    }

    if ((v18 & 0x80) == 0)
    {
      result = sub_236770354(v9, a2);
      v9 = result;
      goto LABEL_33;
    }

LABEL_28:
    v22 = sub_2367704F4(v9, a2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_31;
    }

    v24 = sub_236770674(v9, v22);
    v9 = (v22 + 2);
    result = sub_236770674((v22 + 2), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v22;
      if (v24)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v24)
    {
LABEL_31:
      result = sub_23676F950(v8, v22, a3, -v11, a5 & 1);
      v9 = (v22 + 2);
LABEL_33:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return sub_23676FE08(v9, (v9 + 8), a2 - 2);
}

uint64_t sub_23676FE08(int *a1, int *a2, int *a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 >= *a1)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (v3 == v4)
  {
    v6 = *(a2 + 4);
    v7 = *(a1 + 4);
    v8 = v6 >= v7;
    v9 = v6 == v7;
    v10 = -1;
    if (v8)
    {
      v10 = 1;
    }

    if (v9)
    {
      v5 = 0;
    }

    else
    {
      v5 = v10;
    }
  }

  v11 = *a3;
  v12 = -1;
  if (*a3 >= v3)
  {
    v12 = 1;
  }

  if (v5 < 0)
  {
    if (v11 == v3)
    {
      v18 = *(a3 + 4);
      v19 = *(a2 + 4);
      v8 = v18 >= v19;
      v20 = v18 == v19;
      v12 = -1;
      if (v8)
      {
        v12 = 1;
      }

      if (v20)
      {
        v12 = 0;
      }
    }

    if (v12 < 0)
    {
      *a1 = v11;
      *a3 = v4;
      v34 = *(a1 + 4);
      *(a1 + 4) = *(a3 + 4);
      *(a3 + 4) = v34;
    }

    else
    {
      *a1 = v3;
      *a2 = v4;
      v21 = *(a1 + 4);
      *(a1 + 4) = *(a2 + 4);
      *(a2 + 4) = v21;
      v22 = *a3;
      v23 = -1;
      if (*a3 >= v4)
      {
        v23 = 1;
      }

      if (v22 == v4)
      {
        v24 = *(a3 + 4);
        v8 = v24 >= v21;
        v25 = v24 == v21;
        v23 = -1;
        if (v8)
        {
          v23 = 1;
        }

        if (v25)
        {
          v23 = 0;
        }
      }

      if (v23 < 0)
      {
        *a2 = v22;
        *a3 = v4;
        *(a2 + 4) = *(a3 + 4);
        *(a3 + 4) = v21;
      }
    }
  }

  else
  {
    if (v11 == v3)
    {
      v13 = *(a3 + 4);
      v14 = *(a2 + 4);
      v8 = v13 >= v14;
      v15 = v13 == v14;
      v16 = -1;
      if (v8)
      {
        v16 = 1;
      }

      if (v15)
      {
        v12 = 0;
      }

      else
      {
        v12 = v16;
      }
    }

    if ((v12 & 0x80) == 0)
    {
      return 0;
    }

    *a2 = v11;
    *a3 = v3;
    v26 = *(a2 + 4);
    *(a2 + 4) = *(a3 + 4);
    *(a3 + 4) = v26;
    v27 = *a2;
    v28 = *a1;
    v29 = -1;
    if (*a2 >= *a1)
    {
      v29 = 1;
    }

    if (v27 == v28)
    {
      v30 = *(a2 + 4);
      v31 = *(a1 + 4);
      v8 = v30 >= v31;
      v32 = v30 == v31;
      v29 = -1;
      if (v8)
      {
        v29 = 1;
      }

      if (v32)
      {
        v29 = 0;
      }
    }

    if (v29 < 0)
    {
      *a1 = v27;
      *a2 = v28;
      v33 = *(a1 + 4);
      *(a1 + 4) = *(a2 + 4);
      *(a2 + 4) = v33;
    }
  }

  return 1;
}

uint64_t sub_23676FF7C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int *a5)
{
  result = sub_23676FE08(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  v13 = -1;
  if (*a4 >= *a3)
  {
    v13 = 1;
  }

  if (v11 == v12)
  {
    v14 = *(a4 + 4);
    v15 = *(a3 + 4);
    v16 = v14 >= v15;
    v17 = v14 == v15;
    v13 = -1;
    if (v16)
    {
      v13 = 1;
    }

    if (v17)
    {
      v13 = 0;
    }
  }

  if (v13 < 0)
  {
    *a3 = v11;
    *a4 = v12;
    v18 = *(a3 + 4);
    *(a3 + 4) = *(a4 + 4);
    *(a4 + 4) = v18;
    v19 = *a3;
    v20 = *a2;
    v21 = -1;
    if (*a3 >= *a2)
    {
      v21 = 1;
    }

    if (v19 == v20)
    {
      v22 = *(a3 + 4);
      v23 = *(a2 + 4);
      v16 = v22 >= v23;
      v24 = v22 == v23;
      v21 = -1;
      if (v16)
      {
        v21 = 1;
      }

      if (v24)
      {
        v21 = 0;
      }
    }

    if (v21 < 0)
    {
      *a2 = v19;
      *a3 = v20;
      v25 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
      *(a3 + 4) = v25;
      v26 = *a2;
      v27 = *a1;
      v28 = -1;
      if (*a2 >= *a1)
      {
        v28 = 1;
      }

      if (v26 == v27)
      {
        v29 = *(a2 + 4);
        v30 = *(a1 + 4);
        v16 = v29 >= v30;
        v31 = v29 == v30;
        v28 = -1;
        if (v16)
        {
          v28 = 1;
        }

        if (v31)
        {
          v28 = 0;
        }
      }

      if (v28 < 0)
      {
        *a1 = v26;
        *a2 = v27;
        v32 = *(a1 + 4);
        *(a1 + 4) = *(a2 + 4);
        *(a2 + 4) = v32;
      }
    }
  }

  v33 = *a5;
  v34 = *a4;
  v35 = -1;
  if (*a5 >= *a4)
  {
    v35 = 1;
  }

  if (v33 == v34)
  {
    v36 = *(a5 + 4);
    v37 = *(a4 + 4);
    v16 = v36 >= v37;
    v38 = v36 == v37;
    v35 = -1;
    if (v16)
    {
      v35 = 1;
    }

    if (v38)
    {
      v35 = 0;
    }
  }

  if (v35 < 0)
  {
    *a4 = v33;
    *a5 = v34;
    v39 = *(a4 + 4);
    *(a4 + 4) = *(a5 + 4);
    *(a5 + 4) = v39;
    v40 = *a4;
    v41 = *a3;
    v42 = -1;
    if (*a4 >= *a3)
    {
      v42 = 1;
    }

    if (v40 == v41)
    {
      v43 = *(a4 + 4);
      v44 = *(a3 + 4);
      v16 = v43 >= v44;
      v45 = v43 == v44;
      v42 = -1;
      if (v16)
      {
        v42 = 1;
      }

      if (v45)
      {
        v42 = 0;
      }
    }

    if (v42 < 0)
    {
      *a3 = v40;
      *a4 = v41;
      v46 = *(a3 + 4);
      *(a3 + 4) = *(a4 + 4);
      *(a4 + 4) = v46;
      v47 = *a3;
      v48 = *a2;
      v49 = -1;
      if (*a3 >= *a2)
      {
        v49 = 1;
      }

      if (v47 == v48)
      {
        v50 = *(a3 + 4);
        v51 = *(a2 + 4);
        v16 = v50 >= v51;
        v52 = v50 == v51;
        v49 = -1;
        if (v16)
        {
          v49 = 1;
        }

        if (v52)
        {
          v49 = 0;
        }
      }

      if (v49 < 0)
      {
        *a2 = v47;
        *a3 = v48;
        v53 = *(a2 + 4);
        *(a2 + 4) = *(a3 + 4);
        *(a3 + 4) = v53;
        v54 = *a2;
        v55 = *a1;
        v56 = -1;
        if (*a2 >= *a1)
        {
          v56 = 1;
        }

        if (v54 == v55)
        {
          v57 = *(a2 + 4);
          v58 = *(a1 + 4);
          v16 = v57 >= v58;
          v59 = v57 == v58;
          v56 = -1;
          if (v16)
          {
            v56 = 1;
          }

          if (v59)
          {
            v56 = 0;
          }
        }

        if (v56 < 0)
        {
          *a1 = v54;
          *a2 = v55;
          v60 = *(a1 + 4);
          *(a1 + 4) = *(a2 + 4);
          *(a2 + 4) = v60;
        }
      }
    }
  }

  return result;
}

int *sub_2367701D8(int *result, int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        v7 = *v4;
        v8 = v6 == *v4;
        if (v6 >= *v4)
        {
          v9 = 1;
        }

        else
        {
          v9 = -1;
        }

        if (v8)
        {
          v10 = *(v4 + 12);
          v11 = *(v4 + 4);
          v12 = v10 == v11;
          if (v10 >= v11)
          {
            v13 = 1;
          }

          else
          {
            v13 = -1;
          }

          if (v12)
          {
            v9 = 0;
          }

          else
          {
            v9 = v13;
          }
        }

        if (v9 < 0)
        {
          v14 = *v5;
          v15 = *(v5 + 4);
          v16 = v3;
          while (1)
          {
            v17 = result + v16;
            *(v17 + 2) = v7;
            v17[12] = *(result + v16 + 4);
            if (!v16)
            {
              break;
            }

            v7 = *(v17 - 2);
            if (v7 <= v14)
            {
              v18 = 1;
            }

            else
            {
              v18 = -1;
            }

            if (v7 == v14)
            {
              v19 = *(result + v16 - 4);
              v20 = v19 == v15;
              if (v19 <= v15)
              {
                v18 = 1;
              }

              else
              {
                v18 = -1;
              }

              if (v20)
              {
                v18 = 0;
              }
            }

            v16 -= 8;
            if ((v18 & 0x80) == 0)
            {
              v21 = (result + v16 + 8);
              goto LABEL_30;
            }
          }

          v21 = result;
LABEL_30:
          *v21 = v14;
          *(v21 + 4) = v15;
        }

        v2 = v5 + 2;
        v3 += 8;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

int *sub_2367702A4(int *result, int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 3;
      do
      {
        v4 = v2;
        v5 = result[2];
        v6 = *result;
        v7 = v5 == *result;
        if (v5 >= *result)
        {
          v8 = 1;
        }

        else
        {
          v8 = -1;
        }

        if (v7)
        {
          v9 = *(result + 12);
          v10 = *(result + 4);
          v11 = v9 == v10;
          v8 = v9 >= v10 ? 1 : -1;
          if (v11)
          {
            v8 = 0;
          }
        }

        if (v8 < 0)
        {
          v12 = *v4;
          v13 = *(v4 + 4);
          v14 = v3;
          v15 = v3;
          do
          {
            *(v14 - 1) = v6;
            v16 = *(v15 - 8);
            v15 -= 2;
            *v14 = v16;
            v6 = *(v14 - 5);
            if (v6 <= v12)
            {
              v17 = 1;
            }

            else
            {
              v17 = -1;
            }

            if (v6 == v12)
            {
              v18 = *(v14 - 16);
              v19 = v18 == v13;
              if (v18 <= v13)
              {
                v20 = 1;
              }

              else
              {
                v20 = -1;
              }

              if (v19)
              {
                v17 = 0;
              }

              else
              {
                v17 = v20;
              }
            }

            v14 = v15;
          }

          while (v17 < 0);
          *(v15 - 1) = v12;
          *v15 = v13;
        }

        v2 = v4 + 2;
        v3 += 2;
        result = v4;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

int *sub_236770354(int *a1, int *a2)
{
  v2 = *(a1 + 4);
  v3 = *a1;
  v4 = *(a2 - 2);
  v5 = v4 == *a1;
  if (v4 <= *a1)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    v7 = *(a2 - 4);
    v8 = v7 == v2;
    v9 = v7 > v2;
    v6 = -1;
    if (!v9)
    {
      v6 = 1;
    }

    if (v8)
    {
      v6 = 0;
    }
  }

  if (v6 < 0)
  {
    v15 = a1;
    v11 = a1;
    do
    {
      v16 = v11[2];
      v11 += 2;
      v17 = v16 == v3;
      if (v16 <= v3)
      {
        v18 = 1;
      }

      else
      {
        v18 = -1;
      }

      if (v17)
      {
        v19 = *(v15 + 12);
        v20 = v19 == v2;
        if (v19 <= v2)
        {
          v21 = 1;
        }

        else
        {
          v21 = -1;
        }

        if (v20)
        {
          v18 = 0;
        }

        else
        {
          v18 = v21;
        }
      }

      v15 = v11;
    }

    while ((v18 & 0x80) == 0);
  }

  else
  {
    v10 = a1 + 2;
    do
    {
      v11 = v10;
      if (v10 >= a2)
      {
        break;
      }

      if (*v10 <= v3)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }

      if (*v10 == v3)
      {
        v13 = *(v10 + 4);
        v14 = v13 == v2;
        v12 = v13 <= v2 ? 1 : -1;
        if (v14)
        {
          v12 = 0;
        }
      }

      v10 += 2;
    }

    while ((v12 & 0x80) == 0);
  }

  if (v11 >= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a2;
    do
    {
      v23 = *(v22 - 2);
      v22 -= 2;
      v24 = v23 == v3;
      if (v23 <= v3)
      {
        v25 = 1;
      }

      else
      {
        v25 = -1;
      }

      if (v24)
      {
        v26 = *(a2 - 4);
        v27 = v26 == v2;
        v25 = v26 <= v2 ? 1 : -1;
        if (v27)
        {
          v25 = 0;
        }
      }

      a2 = v22;
    }

    while (v25 < 0);
  }

  if (v11 < v22)
  {
    v28 = *v11;
    v29 = *v22;
    do
    {
      *v11 = v29;
      *v22 = v28;
      v30 = *(v11 + 4);
      *(v11 + 4) = *(v22 + 4);
      *(v22 + 4) = v30;
      v31 = v11;
      do
      {
        v32 = v11[2];
        v11 += 2;
        v28 = v32;
        v33 = v32 == v3;
        if (v32 <= v3)
        {
          v34 = 1;
        }

        else
        {
          v34 = -1;
        }

        if (v33)
        {
          v35 = *(v31 + 12);
          v36 = v35 == v2;
          v34 = v35 <= v2 ? 1 : -1;
          if (v36)
          {
            v34 = 0;
          }
        }

        v31 = v11;
      }

      while ((v34 & 0x80) == 0);
      v37 = v22;
      do
      {
        v38 = *(v22 - 2);
        v22 -= 2;
        v29 = v38;
        v39 = v38 == v3;
        if (v38 <= v3)
        {
          v40 = 1;
        }

        else
        {
          v40 = -1;
        }

        if (v39)
        {
          v41 = *(v37 - 4);
          v42 = v41 == v2;
          v40 = v41 <= v2 ? 1 : -1;
          if (v42)
          {
            v40 = 0;
          }
        }

        v37 = v22;
      }

      while (v40 < 0);
    }

    while (v11 < v22);
  }

  if (v11 - 2 != a1)
  {
    *a1 = *(v11 - 2);
    *(a1 + 4) = *(v11 - 4);
  }

  *(v11 - 2) = v3;
  *(v11 - 4) = v2;
  return v11;
}

int *sub_2367704F4(int *a1, int *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 4);
  do
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }

    if (v5 == v3)
    {
      v7 = LOBYTE(a1[v2 + 3]);
      v8 = v7 == v4;
      v6 = v7 >= v4 ? 1 : -1;
      if (v8)
      {
        v6 = 0;
      }
    }

    v2 += 2;
  }

  while (v6 < 0);
  v9 = &a1[v2];
  if (v2 == 2)
  {
    while (v9 < a2)
    {
      v10 = a2 - 2;
      v16 = *(a2 - 2);
      v17 = v16 == v3;
      if (v16 >= v3)
      {
        v18 = 1;
      }

      else
      {
        v18 = -1;
      }

      if (v17)
      {
        v19 = *(a2 - 4);
        v20 = v19 == v4;
        v18 = v19 >= v4 ? 1 : -1;
        if (v20)
        {
          v18 = 0;
        }
      }

      a2 -= 2;
      if (v18 < 0)
      {
        goto LABEL_39;
      }
    }

    v10 = a2;
  }

  else
  {
    v10 = a2;
    do
    {
      v11 = *(v10 - 2);
      v10 -= 2;
      v12 = v11 == v3;
      if (v11 >= v3)
      {
        v13 = 1;
      }

      else
      {
        v13 = -1;
      }

      if (v12)
      {
        v14 = *(a2 - 4);
        v15 = v14 == v4;
        v13 = v14 >= v4 ? 1 : -1;
        if (v15)
        {
          v13 = 0;
        }
      }

      a2 = v10;
    }

    while ((v13 & 0x80) == 0);
  }

LABEL_39:
  if (v9 >= v10)
  {
    v22 = v9;
  }

  else
  {
    v21 = *v10;
    v22 = v9;
    v23 = v10;
    do
    {
      *v22 = v21;
      *v23 = v5;
      v24 = *(v22 + 4);
      *(v22 + 4) = *(v23 + 4);
      *(v23 + 4) = v24;
      v25 = v22;
      do
      {
        v26 = v22[2];
        v22 += 2;
        v5 = v26;
        v27 = v26 == v3;
        if (v26 >= v3)
        {
          v28 = 1;
        }

        else
        {
          v28 = -1;
        }

        if (v27)
        {
          v29 = *(v25 + 12);
          v30 = v29 == v4;
          v28 = v29 >= v4 ? 1 : -1;
          if (v30)
          {
            v28 = 0;
          }
        }

        v25 = v22;
      }

      while (v28 < 0);
      v31 = v23;
      do
      {
        v32 = *(v23 - 2);
        v23 -= 2;
        v21 = v32;
        v33 = v32 == v3;
        if (v32 >= v3)
        {
          v34 = 1;
        }

        else
        {
          v34 = -1;
        }

        if (v33)
        {
          v35 = *(v31 - 4);
          v36 = v35 == v4;
          v34 = v35 >= v4 ? 1 : -1;
          if (v36)
          {
            v34 = 0;
          }
        }

        v31 = v23;
      }

      while ((v34 & 0x80) == 0);
    }

    while (v22 < v23);
  }

  if (v22 - 2 != a1)
  {
    *a1 = *(v22 - 2);
    *(a1 + 4) = *(v22 - 4);
  }

  *(v22 - 2) = v3;
  *(v22 - 4) = v4;
  return v22 - 2;
}

BOOL sub_236770674(uint64_t a1, int *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_23676FE08(a1, (a1 + 8), a2 - 2);
        break;
      case 4:
        sub_23676FE08(a1, (a1 + 8), (a1 + 16));
        v30 = *(a2 - 2);
        v31 = *(a1 + 16);
        v32 = -1;
        if (v30 >= v31)
        {
          v32 = 1;
        }

        if (v30 == v31)
        {
          v33 = *(a2 - 4);
          v34 = *(a1 + 20);
          v10 = v33 >= v34;
          v35 = v33 == v34;
          v32 = -1;
          if (v10)
          {
            v32 = 1;
          }

          if (v35)
          {
            v32 = 0;
          }
        }

        if (v32 < 0)
        {
          *(a1 + 16) = v30;
          *(a2 - 2) = v31;
          v36 = *(a1 + 20);
          *(a1 + 20) = *(a2 - 4);
          *(a2 - 4) = v36;
          v37 = *(a1 + 16);
          v38 = *(a1 + 8);
          v39 = -1;
          if (v37 >= v38)
          {
            v39 = 1;
          }

          if (v37 == v38)
          {
            v40 = *(a1 + 20);
            v41 = *(a1 + 12);
            v10 = v40 >= v41;
            v42 = v40 == v41;
            v39 = -1;
            if (v10)
            {
              v39 = 1;
            }

            if (v42)
            {
              v39 = 0;
            }
          }

          if (v39 < 0)
          {
            *(a1 + 8) = v37;
            *(a1 + 16) = v38;
            v43 = *(a1 + 12);
            v44 = *(a1 + 20);
            *(a1 + 12) = v44;
            *(a1 + 20) = v43;
            v45 = *a1;
            v46 = -1;
            if (v37 >= *a1)
            {
              v46 = 1;
            }

            if (v37 == v45)
            {
              v47 = *(a1 + 4);
              v10 = v44 >= v47;
              v48 = v44 == v47;
              v46 = -1;
              if (v10)
              {
                v46 = 1;
              }

              if (v48)
              {
                v46 = 0;
              }
            }

            if (v46 < 0)
            {
              *a1 = v37;
              *(a1 + 8) = v45;
              v49 = *(a1 + 4);
              *(a1 + 4) = v44;
              *(a1 + 12) = v49;
            }
          }
        }

        return 1;
      case 5:
        sub_23676FF7C(a1, a1 + 8, a1 + 16, (a1 + 24), a2 - 2);
        break;
      default:
        goto LABEL_19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    v7 = -1;
    if (v5 >= *a1)
    {
      v7 = 1;
    }

    if (v5 == v6)
    {
      v8 = *(a2 - 4);
      v9 = *(a1 + 4);
      v10 = v8 >= v9;
      v11 = v8 == v9;
      v7 = -1;
      if (v10)
      {
        v7 = 1;
      }

      if (v11)
      {
        v7 = 0;
      }
    }

    if (v7 < 0)
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v12 = *(a1 + 4);
      *(a1 + 4) = *(a2 - 4);
      *(a2 - 4) = v12;
    }

    return 1;
  }

LABEL_19:
  v13 = (a1 + 16);
  sub_23676FE08(a1, (a1 + 8), (a1 + 16));
  v14 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *v13;
    if (*v14 >= *v13)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (*v14 == *v13)
    {
      v19 = *(v14 + 4);
      v20 = *(v13 + 4);
      v21 = v19 == v20;
      v18 = v19 >= v20 ? 1 : -1;
      if (v21)
      {
        v18 = 0;
      }
    }

    if (v18 < 0)
    {
      v22 = *v14;
      v23 = *(v14 + 4);
      v24 = v15;
      while (1)
      {
        v25 = a1 + v24;
        *(v25 + 24) = v17;
        *(v25 + 28) = *(a1 + v24 + 20);
        if (v24 == -16)
        {
          break;
        }

        v17 = *(v25 + 8);
        if (v17 <= v22)
        {
          v26 = 1;
        }

        else
        {
          v26 = -1;
        }

        if (v17 == v22)
        {
          v27 = *(a1 + v24 + 12);
          v28 = v27 == v23;
          v26 = v27 <= v23 ? 1 : -1;
          if (v28)
          {
            v26 = 0;
          }
        }

        v24 -= 8;
        if ((v26 & 0x80) == 0)
        {
          v29 = a1 + v24 + 24;
          goto LABEL_45;
        }
      }

      v29 = a1;
LABEL_45:
      *v29 = v22;
      *(v29 + 4) = v23;
      if (++v16 == 8)
      {
        return v14 + 2 == a2;
      }
    }

    v13 = v14;
    v15 += 8;
    v14 += 2;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

char *sub_236770948(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[8 * v9];
      do
      {
        sub_236770ACC(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*v12 >= *a1)
        {
          v15 = 1;
        }

        else
        {
          v15 = -1;
        }

        if (v13 == v14)
        {
          v16 = v12[4];
          v17 = a1[4];
          v18 = v16 == v17;
          v15 = v16 >= v17 ? 1 : -1;
          if (v18)
          {
            v15 = 0;
          }
        }

        if (v15 < 0)
        {
          *v12 = v14;
          *a1 = v13;
          v19 = v12[4];
          v12[4] = a1[4];
          a1[4] = v19;
          sub_236770ACC(a1, a4, v8, a1);
        }

        v12 += 8;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v20 = a2 - 8;
      do
      {
        v21 = *a1;
        v22 = sub_236770C24(a1, a4, v8);
        if (v20 == v22)
        {
          *v22 = v21;
          *(v22 + 4) = BYTE4(v21);
        }

        else
        {
          *v22 = *v20;
          *(v22 + 4) = v20[4];
          *v20 = v21;
          v20[4] = BYTE4(v21);
          sub_236770CBC(a1, v22 + 8, a4, (v22 + 8 - a1) >> 3);
        }

        v20 -= 8;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_236770ACC(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = result + 8 * v7;
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 8);
        v11 = *v8 == v10;
        if (*v8 >= v10)
        {
          v12 = 1;
        }

        else
        {
          v12 = -1;
        }

        if (v11)
        {
          v13 = *(v8 + 4);
          v14 = *(v8 + 12);
          v15 = v13 >= v14;
          v16 = v13 == v14;
          v12 = -1;
          if (v15)
          {
            v12 = 1;
          }

          if (v16)
          {
            v12 = 0;
          }
        }

        if (v12 < 0)
        {
          v8 += 8;
          v7 = v9;
        }
      }

      v17 = *v8;
      if (*v8 >= *a4)
      {
        v18 = 1;
      }

      else
      {
        v18 = -1;
      }

      if (*v8 == *a4)
      {
        v19 = *(v8 + 4);
        v20 = *(a4 + 4);
        v15 = v19 >= v20;
        v21 = v19 == v20;
        v18 = -1;
        if (v15)
        {
          v18 = 1;
        }

        if (v21)
        {
          v18 = 0;
        }
      }

      if ((v18 & 0x80) == 0)
      {
        v22 = *a4;
        v23 = *(a4 + 4);
        do
        {
          v24 = a4;
          a4 = v8;
          *v24 = v17;
          *(v24 + 4) = *(v8 + 4);
          if (v5 < v7)
          {
            break;
          }

          v25 = (2 * v7) | 1;
          v8 = result + 8 * v25;
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v7 = v25;
          }

          else
          {
            v26 = *(v8 + 8);
            v27 = *v8 == v26;
            if (*v8 >= v26)
            {
              v28 = 1;
            }

            else
            {
              v28 = -1;
            }

            if (v27)
            {
              v29 = *(v8 + 4);
              v30 = *(v8 + 12);
              v31 = v29 == v30;
              v28 = v29 >= v30 ? 1 : -1;
              if (v31)
              {
                v28 = 0;
              }
            }

            if (v28 < 0)
            {
              v8 += 8;
            }

            else
            {
              v7 = v25;
            }
          }

          v17 = *v8;
          if (*v8 >= v22)
          {
            v32 = 1;
          }

          else
          {
            v32 = -1;
          }

          if (v17 == v22)
          {
            v33 = *(v8 + 4);
            v34 = v33 == v23;
            if (v33 >= v23)
            {
              v32 = 1;
            }

            else
            {
              v32 = -1;
            }

            if (v34)
            {
              v32 = 0;
            }
          }
        }

        while ((v32 & 0x80) == 0);
        *a4 = v22;
        *(a4 + 4) = v23;
      }
    }
  }

  return result;
}

uint64_t sub_236770C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1 + 8 * v3;
    v5 = v4 + 8;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v7 = v4 + 16;
      v8 = *(v4 + 16);
      v9 = *(v4 + 8);
      v10 = v9 == v8;
      if (v9 >= v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = -1;
      }

      if (v10)
      {
        v12 = *(v4 + 12);
        v13 = *(v4 + 20);
        v14 = v12 == v13;
        if (v12 >= v13)
        {
          v15 = 1;
        }

        else
        {
          v15 = -1;
        }

        if (v14)
        {
          v11 = 0;
        }

        else
        {
          v11 = v15;
        }
      }

      if (v11 < 0)
      {
        v5 = v7;
      }

      else
      {
        v3 = v6;
      }
    }

    *a1 = *v5;
    *(a1 + 4) = *(v5 + 4);
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t sub_236770CBC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = (a2 - 8);
    v7 = *(a2 - 8);
    v8 = *v5;
    v9 = *v5 == v7;
    if (*v5 >= v7)
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }

    if (v9)
    {
      v11 = *(v5 + 4);
      v12 = *(a2 - 4);
      v13 = v11 >= v12;
      v14 = v11 == v12;
      v10 = -1;
      if (v13)
      {
        v10 = 1;
      }

      if (v14)
      {
        v10 = 0;
      }
    }

    if (v10 < 0)
    {
      v15 = *v6;
      v16 = *(a2 - 4);
      do
      {
        v17 = v6;
        v6 = v5;
        *v17 = v8;
        *(v17 + 4) = *(v5 + 4);
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v8 = *v5;
        if (*v5 >= v15)
        {
          v18 = 1;
        }

        else
        {
          v18 = -1;
        }

        if (v8 == v15)
        {
          v19 = *(v5 + 4);
          v20 = v19 == v16;
          if (v19 >= v16)
          {
            v18 = 1;
          }

          else
          {
            v18 = -1;
          }

          if (v20)
          {
            v18 = 0;
          }
        }
      }

      while (v18 < 0);
      *v6 = v15;
      *(v6 + 4) = v16;
    }
  }

  return result;
}

uint64_t sub_236770D64(int a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a8;
  v11 = a6;
  v13 = a10;
  v44 = a3 - 1;
  if (a3 < 1)
  {
    goto LABEL_36;
  }

  v14 = 0;
  v55 = a6 + 1;
  v46 = a5 + 8 * ~a6 * a4;
  v45 = a7 - 4 * a4;
  v15 = 8 * a6;
  v52 = 8 * a6 + 8;
  v53 = a5 + 12;
  v49 = a5 + 4;
  v16 = a3;
  while (1)
  {
    v17 = (v14 + 1);
    if (v17 >= a3)
    {
      v19 = -1;
      v20 = -1.0;
    }

    else
    {
      v18 = (v53 + v52 * v14);
      v19 = -1;
      v20 = -1.0;
      v21 = v14 + 1;
      do
      {
        v22 = hypotf(*(v18 - 1), *v18);
        if (v22 > v20)
        {
          v19 = v21;
          v20 = v22;
        }

        v18 += 2;
        ++v21;
      }

      while (a3 != v21);
      if ((v19 & 0x80000000) == 0)
      {
        v23 = *(a9 + 24);
        if (v23 > v20 && v23 > hypotf(*(a5 + 8 * v55 * v14), *(a5 + 8 * v55 * v14 + 4)))
        {
          --v16;
          v11 = a6;
          sub_23677868C((v14 + a4), (v16 + a4), (a4 + a1), (a4 + a2), v46, a6, v45);
          v17 = v14;
          goto LABEL_29;
        }
      }
    }

    if (v14 == v16 - 1)
    {
      v24 = (a5 + 8 * v55 * v14);
      if (*v24 == 0.0 && v24[1] == 0.0)
      {
        break;
      }
    }

    v25 = (a5 + 8 * v55 * v14);
    v26 = v10 + 16 * v14;
    if (v19 == -1)
    {
      goto LABEL_27;
    }

    v27 = hypotf(*v25, v25[1]);
    if (v27 >= (v20 * 0.64039))
    {
      goto LABEL_27;
    }

    v28 = v27;
    v29 = -1.0;
    if (v14 < v19)
    {
      v30 = (v49 + v15 * v14 + 8 * v19);
      v31 = v19 - v14;
      do
      {
        v29 = fmaxf(v29, hypotf(*(v30 - 1), *v30));
        v30 = (v30 + v15);
        --v31;
      }

      while (v31);
    }

    if (v19 + 1 < a3)
    {
      v32 = (v49 + v15 * v19 + 8 * (v19 + 1));
      v33 = v44 - v19;
      do
      {
        v29 = fmaxf(v29, hypotf(*(v32 - 1), *v32));
        v32 += 2;
        --v33;
      }

      while (v33);
    }

    v10 = a8;
    if ((v20 * (v20 * 0.64039)) <= (v28 * v29))
    {
LABEL_27:
      v35 = (a3 - v14);
      v36 = v35;
      v37 = a5 + 8 * v55 * v14;
      v11 = a6;
LABEL_28:
      sub_23677A1D0(v35, v36, v37, v11, v26, a10);
      goto LABEL_29;
    }

    if (hypotf(*(a5 + 8 * v55 * v19), *(a5 + 8 * v55 * v19 + 4)) >= (v29 * 0.64039))
    {
      v38 = (v19 + a4);
      v11 = a6;
      sub_23677868C((v14 + a4), v38, (a4 + a1), (a4 + a2), v46, a6, v45);
      v35 = (a3 - v14);
      v36 = v35;
      v37 = a5 + 8 * v55 * v14;
      goto LABEL_28;
    }

    v34 = (v19 + a4);
    v11 = a6;
    sub_23677868C((v17 + a4), v34, (a4 + a1), (a4 + a2), v46, a6, v45);
    sub_23677D3AC((a3 - v14), (a3 - v14), v25, a6, v26, a10);
    v17 = (v14 + 2);
LABEL_29:
    v14 = v17;
    if (v17 >= v16)
    {
      goto LABEL_33;
    }
  }

  v16 = v14;
  v11 = a6;
LABEL_33:
  v39 = (a3 - v16);
  v13 = a10;
  if (a3 > v16)
  {
    v40 = v10 + 16 * v16;
    v41 = (a5 + 8 * v55 * v16);
    v42 = v15 + 8;
    do
    {
      *v41 = 968164595;
      sub_23677A1D0(v39, v39, v41, v11, v40, a10);
      v40 += 16;
      v41 = (v41 + v42);
      v39 = (v39 - 1);
    }

    while (v39);
  }

LABEL_36:
  sub_236782944((a1 - a3), a3, a5, v11, a5 + 8 * a3, v11, v10, v13);
  return a3;
}

uint64_t sub_236771188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a4;
  v10 = a3;
  v12 = a3 + 8 * a2 * a4;
  if (a2 >= 48)
  {
    LODWORD(v13) = 0;
    v35 = a4 + 1;
    v30 = a1 - a2;
    v32 = a3 + 8 * a2 * a4;
    v33 = a5;
    v31 = a6;
    do
    {
      v14 = v10 + 8 * v35 * v13;
      v15 = v12 + 16 * v13;
      v16 = a2 - v13;
      if (a2 - v13 >= 48)
      {
        v17 = 48;
      }

      else
      {
        v17 = v16;
      }

      v18 = a1;
      v19 = a7;
      v20 = v9;
      sub_236770D64(a1 - v13, a2 - v13, v17, v13, v10 + 8 * v35 * v13, v9, a5 + 4 * v13, v12 + 16 * v13, a6, a7);
      v13 = (v17 + v13);
      if (v16 >= 1 && v13 < a2)
      {
        v21 = v16 - v17;
        v22 = v14 + 8 * v17;
        v23 = v14 + 8 * v35 * v17;
        sub_236746DE8();
        if (v18 > a2)
        {
          sub_23674B19C(v30, v21, v17, v22 + 8 * v21, v22, v20, v15, v23 + 8 * v21, v24, v25, v26, v27, v28, v20, v19);
        }
      }

      a5 = v33;
      v10 = a3;
      a6 = v31;
      v12 = v32;
      v9 = v20;
      a7 = v19;
      a1 = v18;
    }

    while (v13 < a2);
  }

  else
  {
    sub_236770D64(a1, a2, a2, 0, a3, a4, a5, v12, a6, a7);
    return a2;
  }

  return v13;
}

BOOL sub_236771324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  v14 = a5 + 8 * a1 * a6;
  v15 = (v14 + 8 * a1);
  v16 = *v15;
  v17 = v15[1];
  v18 = (v14 + 8 * a2);
  v19 = *v18;
  v20 = v18[1];
  v21 = (a5 + 8 * (a2 * a6 + a2));
  v22 = *v21;
  v23 = v21[1];
  v24 = hypotf(*v15, v17);
  v55 = v20;
  v56 = v19;
  v25 = hypotf(v19, v20);
  v26 = fmaxf(v24, fmaxf(v25, hypotf(v22, v23)));
  result = 0;
  if (*(a7 + 24) <= fabsf(v26))
  {
    v27 = v16 * (1.0 / v26);
    v28 = v17 * (1.0 / v26);
    v29 = (v22 * v27) - (v23 * v28);
    v30 = (v23 * v27) + (v22 * v28);
    v53 = v28;
    v54 = v27;
    v31 = (v56 * v56 + v55 * v55) * (1.0 / v26);
    v32 = (v56 * v55 - v56 * v55) * (1.0 / v26);
    v33 = v30 - v32;
    v51 = v29 - v31;
    v52 = 1.0 / v26;
    v34 = hypotf(v29 - v31, v30 - v32);
    if (*(a7 + 24) <= v34)
    {
      v35 = hypotf(v29, v30) * 0.5;
      if (v34 >= fmaxf(v35, hypotf(v31, v32) * 0.5))
      {
        v36 = sub_23681E680(v22 * v52, v23 * v52, v51, v33);
        v38 = v37;
        v39 = sub_23681E680(-(v56 * v52), -(v55 * v52), v51, v33);
        v41 = v40;
        v42 = sub_23681E680(v54, v53, v51, v33);
        v44 = v43;
        v45 = sub_236771634(v13, v12, v11, v10, a5, a6);
        v46 = sub_236771634(v12, v13, v11, v10, a5, a6);
        v47 = hypotf(v36, v38);
        v48 = hypotf(v39, v41);
        v49 = 1.0 / *(a7 + 16);
        if (v49 >= ((v46 * v48) + (v47 * v45)) && v49 >= ((v46 * hypotf(v42, v44)) + (v48 * v45)))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

float sub_236771634(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = 0.0;
  if (a4 < a1)
  {
    v12 = a2 - a4;
    v13 = a1 - a4;
    v14 = (8 * a6 * a4 + 8 * a1 + a5 + 4);
    do
    {
      if (v12)
      {
        v15 = hypotf(*(v14 - 1), *v14);
        if (v15 > v11)
        {
          v11 = v15;
        }
      }

      --v12;
      v14 += 2 * a6;
      --v13;
    }

    while (v13);
  }

  v16 = a1 + 1;
  if (a1 + 1 < a3)
  {
    v17 = a2 - v16;
    v18 = (8 * a6 * a1 + 8 * v16 + a5 + 4);
    v19 = ~a1 + a3;
    do
    {
      if (v17)
      {
        v20 = hypotf(*(v18 - 1), *v18);
        if (v20 > v11)
        {
          v11 = v20;
        }
      }

      --v17;
      v18 += 2;
      --v19;
    }

    while (v19);
  }

  return v11;
}

uint64_t sub_236771748(uint64_t a1, int a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a3 < 1)
  {
    return 0;
  }

  v10 = a6;
  v12 = a1;
  v13 = 0;
  v73 = a6 + 1;
  v60 = a7 - 4 * a4;
  v61 = a5 + 8 * ~a6 * a4;
  v71 = a3;
  v14 = 8 * a6;
  v58 = 8 * a6 + 8;
  v59 = a5 + 8;
  v57 = a1 - 2;
  v65 = a5 + 12;
  v69 = a1;
  while (2)
  {
    v15 = 0;
    v16 = v13;
    v67 = a5 + 8 * v13 * v10;
    v68 = v13 + 1;
    v74 = (v65 + v14 + v14 * v13 + 8 * v13);
    v17 = v13;
    v18 = v73;
    v75 = v13;
    v72 = v13;
    while (1)
    {
      v19 = v17 + 1;
      if (v17 + 1 >= v71)
      {
        v42 = sub_236771C58(v13, v12, v13, a5, v10);
        v43 = *(a9 + 24);
        if (v43 > v42)
        {
          v52 = (v67 + 8 * v16);
          v53 = *v52;
          v49 = v43 <= hypotf(*v52, v52[1]);
          v54 = INFINITY;
          if (v49)
          {
            v54 = v53;
          }

          v55 = a8 + 16 * v16;
          *v55 = v54;
          *(v55 + 4) = 0;
          *(v55 + 8) = 0;
          *(a8 + 16 * v16 + 12) = 0;
          *v52 = 1065353216;
          v46 = v68;
          if (v68 < v12)
          {
            bzero((v59 + v58 * v16), 8 * (v57 - v75) + 8);
          }

          return v46;
        }

        v44 = (a5 + 8 * v18 * v16);
        v45 = *(a9 + 16) * v42;
        if (v45 > hypotf(*v44, v44[1]))
        {
          return v75;
        }

        v37 = (v12 - v75);
        v38 = a3;
        v39 = a3 - v75;
        v41 = a8 + 16 * v16;
        v40 = v44;
        goto LABEL_20;
      }

      v20 = v12;
      v21 = v13;
      if (v17 > v16)
      {
        v22 = hypotf(*(v67 + 8 * v19), *(v67 + 8 * v19 + 4));
        v23 = v15;
        v24 = v68;
        v25 = v74;
        LODWORD(v21) = v75;
        do
        {
          v26 = hypotf(*(v25 - 1), *v25);
          if (v26 <= v22)
          {
            v21 = v21;
          }

          else
          {
            v22 = v26;
            v21 = v24;
          }

          v25 = (v25 + v14);
          ++v24;
          --v23;
        }

        while (v23);
      }

      if (sub_236771324(v21, v19, v20, v75, a5, a6, a9))
      {
        break;
      }

      v18 = v73;
      v27 = (a5 + 8 * v73 * v21);
      v28 = *v27;
      v29 = v27[1];
      v30 = (a5 + 8 * v73 * v19);
      v31 = *v30;
      v32 = v30[1];
      v33 = hypotf(v28, v29);
      if (v33 <= hypotf(v31, v32))
      {
        LODWORD(v21) = v19;
      }

      v34 = sub_236771C58(v21, v20, v75, a5, a6);
      v10 = a6;
      if (*(a9 + 24) > v34)
      {
        sub_23677868C((v75 + a4), (v21 + a4), a4 + v69, (a4 + a2), v61, a6, v60);
        v47 = (v67 + 8 * v72);
        v48 = *v47;
        v49 = *(a9 + 24) <= hypotf(*v47, v47[1]);
        v50 = INFINITY;
        if (v49)
        {
          v50 = v48;
        }

        v51 = a8 + 16 * v72;
        *v51 = v50;
        *(v51 + 4) = 0;
        *(v51 + 8) = 0;
        *(a8 + 16 * v72 + 12) = 0;
        *v47 = 1065353216;
        v46 = v68;
        if (v68 < v69)
        {
          bzero((v59 + v58 * v72), 8 * (v57 - v75) + 8);
        }

        v38 = a3;
        v12 = v69;
        goto LABEL_28;
      }

      v35 = *(a9 + 16) * v34;
      v36 = hypotf(*(a5 + 8 * v73 * v21), *(a5 + 8 * v73 * v21 + 4));
      v74 += 2;
      ++v15;
      v17 = v19;
      v13 = v75;
      v12 = v69;
      v16 = v72;
      if (v35 <= v36)
      {
        sub_23677868C((v75 + a4), (v21 + a4), a4 + v69, (a4 + a2), v61, a6, v60);
        v37 = v69 - v75;
        v38 = a3;
        v39 = a3 - v75;
        v40 = a5 + 8 * v73 * v72;
        v41 = a8 + 16 * v72;
LABEL_20:
        sub_23677A1D0(v37, v39, v40, v10, v41, a10);
        v46 = v68;
        goto LABEL_29;
      }
    }

    sub_23677868C((v75 + a4), (v21 + a4), (a4 + v20), (a4 + a2), v61, a6, v60);
    sub_23677868C(v68 + a4, (v19 + a4), (a4 + v20), (a4 + a2), v61, a6, v60);
    v38 = a3;
    sub_23677D3AC((v20 - v75), a3 - v75, a5 + 8 * v73 * v72, a6, a8 + 16 * v72, a10);
    v46 = (v75 + 2);
    v12 = v20;
LABEL_28:
    v10 = a6;
LABEL_29:
    v13 = v46;
    if (v46 < v38)
    {
      continue;
    }

    return v46;
  }
}

float sub_236771C58(int a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = 0.0;
  if (a3 < a1)
  {
    v10 = (8 * a5 * a3 + 8 * a1 + a4 + 4);
    v11 = a1 - a3;
    do
    {
      v12 = hypotf(*(v10 - 1), *v10);
      if (v12 > v9)
      {
        v9 = v12;
      }

      v10 += 2 * a5;
      --v11;
    }

    while (v11);
  }

  if (a1 + 1 < a2)
  {
    v13 = (8 * a5 * a1 + 8 * (a1 + 1) + a4 + 4);
    v14 = ~a1 + a2;
    do
    {
      v15 = hypotf(*(v13 - 1), *v13);
      if (v15 > v9)
      {
        v9 = v15;
      }

      v13 += 2;
      --v14;
    }

    while (v14);
  }

  return v9;
}

uint64_t sub_236771D40(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a3;
  v10 = a3 + 8 * a2 * a4;
  if (a2 < 48)
  {
    return sub_236771748(a1, a2, a2, 0, a3, a4, a5, v10, a6, a7);
  }

  v12 = 0;
  v32 = a4 + 1;
  v28 = a1 - a2;
  v29 = a3 + 8 * a2 * a4;
  v30 = a5;
  v33 = a6;
  do
  {
    v13 = v8 + 8 * v32 * v12;
    v14 = v10 + 16 * v12;
    v15 = a2 - v12;
    if (a2 - v12 >= 48)
    {
      v16 = 48;
    }

    else
    {
      v16 = a2 - v12;
    }

    v17 = a1;
    v18 = (a1 - v12);
    v19 = a5 + 4 * v12;
    v20 = sub_236771748(v18, a2 - v12, v16, v12, v8 + 8 * v32 * v12, a4, v19, v10 + 16 * v12, a6, a7);
    if (v20)
    {
      v21 = v20;
      if (v16 + v12 < a2 && v20 >= 1)
      {
        v22 = v15 - v16;
        sub_236746DE8();
        if (v17 > a2)
        {
          sub_23674B19C(v28, v22, v21, v13 + 8 * v16 + 8 * v22, v13 + 8 * v16, a4, v14, v13 + 8 * v32 * v16 + 8 * v22, v23, v24, v25, v26, v27, a4, a7);
        }
      }

      a1 = v17;
      goto LABEL_15;
    }

    if (v15 < 49)
    {
      break;
    }

    v21 = sub_236771748(v18, a2 - v12, a2 - v12, v12, v13, a4, v19, v14, v33, a7);
    a1 = v17;
    if (!v21)
    {
      break;
    }

LABEL_15:
    v12 = (v21 + v12);
    a5 = v30;
    v8 = a3;
    a6 = v33;
    v10 = v29;
  }

  while (v12 < a2);
  return v12;
}

uint64_t sub_236771FF4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a4;
  v10 = a2;
  if (a1 > 192 || a2 > 96)
  {
    if (a8)
    {
      v12 = (a1 - 1) / 96 + 1;
      v82 = a4;
      v13 = (a2 - 1) / 96 + 1;
      v80[0] = a1;
      v80[1] = a2;
      v81 = a3;
      v83 = a2;
      v78 = 0u;
      v79 = 0u;
      sub_236792218(a8, a9 + 64, &v78);
      *(&v79 + 1) = v80;
      v18 = v13 * v12;
      v19 = *(a9 + 80) + 48 * atomic_fetch_add((a9 + 88), v18);
      if (v18 >= 1)
      {
        _X0 = 0;
        for (i = 0; i != v18; ++i)
        {
          v22 = v19 + 48 * i;
          atomic_store(0, v22);
          *(v22 + 4) = 0;
          *(v22 + 8) = 0;
          v23 = *(v22 + 16);
          do
          {
            _X5 = *(v22 + 24);
            __asm { CASPAL          X4, X5, X0, X1, [X12] }

            _ZF = _X4 == v23;
            v23 = _X4;
          }

          while (!_ZF);
          *(v22 + 32) = 0;
          *(v22 + 40) = 0;
        }
      }

      v77 = v19;
      if (v10 >= 1)
      {
        v74 = v12;
        v68 = 96;
        v70 = 0;
        do
        {
          v28 = v70;
          v29 = v70 / 0x60 * v74;
          v30 = v77 + 48 * v29;
          v31 = v30 + 48 * (v70 / 0x60);
          v72 = v70 / 0x60;
          sub_236792228(&v78, v70 / 0x60, sub_23677272C, 1u, _X4, _X5, v16, v17, v31);
          v70 += 96;
          if (v28 + 96 < a1)
          {
            v32 = v68;
            do
            {
              sub_236792228(&v78, v29 + v32 / 0x60uLL, sub_236772828, 2u, _X4, _X5, v16, v17, v31);
              v32 += 96;
            }

            while (v32 < a1);
          }

          v33 = v68;
          if (v70 >= v10)
          {
            break;
          }

          do
          {
            if (v33 < a1)
            {
              v34 = v33;
              do
              {
                v35 = v34 / 0x60uLL;
                v36 = (v72 + v33 / 0x60 * v74) * v74 + v35;
                if (v34 / 0x60 == v33 / 0x60)
                {
                  sub_236792228(&v78, v36, sub_2367728E8, 2u, _X4, _X5, v16, v17, v30 + 48 * (v33 / 0x60));
                }

                else
                {
                  sub_236792228(&v78, v36, sub_2367728E8, 3u, _X4, _X5, v16, v17, v30 + 48 * v35);
                }

                v34 += 96;
              }

              while (v34 < a1);
            }

            v33 += 96;
            LODWORD(v10) = a2;
          }

          while (v33 < a2);
          v68 += 96;
        }

        while (v70 < a2);
      }

      if (sub_236792900(&v78))
      {
        sub_2366FCEC8(a8);
      }

      return v83;
    }

    else if (a2 >= 1)
    {
      v38 = 0;
      v39 = a3 + 768;
      v61 = a2 - 96;
      v62 = a1 - 96;
      v63 = 768 * a4 + 768;
      v60 = a3 + v63;
      v40 = 96;
      while (1)
      {
        if (v10 - v38 >= 96)
        {
          v41 = 96;
        }

        else
        {
          v41 = v10 - v38;
        }

        v42 = a1 - v38;
        v80[0] = v41;
        v85 = 76;
        if (a1 - v38 >= 96)
        {
          v42 = 96;
        }

        v75 = v42;
        LODWORD(v78) = 0;
        v84 = v9;
        cpotf2_NEWLAPACK();
        v43 = v80[0];
        if (v75 > v80[0])
        {
          cblas_ctrsm_NEWLAPACK();
          v43 = v80[0];
        }

        if (v43 < v41)
        {
          break;
        }

        v44 = v38 + 96;
        v58 = v40;
        v59 = v39;
        v45 = v40;
        v46 = v62;
        if (v44 < a1)
        {
          do
          {
            v47 = v46 - 96;
            cblas_ctrsm_NEWLAPACK();
            v39 += 768;
            v45 += 96;
            v46 = v47;
          }

          while (v45 < a1);
        }

        v69 = v60;
        v71 = v59;
        v48 = v61;
        v67 = v62;
        v49 = v40;
        v57 = v44;
        if (v44 < v10)
        {
          do
          {
            v64 = v48;
            v65 = v49;
            v76 = v10 - v49;
            if (v49 < a1)
            {
              v50 = 0;
              v51 = v49;
              v53 = v69;
              v52 = v71;
              v54 = v67;
              do
              {
                v55 = v54;
                _VF = __OFSUB__(v54, 96);
                v54 -= 96;
                if (v54 < 0 != _VF)
                {
                  v56 = v55;
                }

                else
                {
                  v56 = 96;
                }

                if (v50 || (cblas_cherk_NEWLAPACK(), v76 < v56))
                {
                  cblas_cgemm_NEWLAPACK();
                }

                v53 += 768;
                v52 += 768;
                v50 -= 768;
                v51 += 96;
              }

              while (v51 < a1);
            }

            v49 = v65 + 96;
            v67 -= 96;
            v48 = v64 - 96;
            v69 += v63;
            v71 += 768;
            v10 = a2;
          }

          while (v65 + 96 < a2);
          v40 = v58 + 96;
          v39 = v59 + v63;
          v61 -= 96;
          v62 -= 96;
          v60 += v63;
          v38 = v57;
          if (v57 < a2)
          {
            continue;
          }
        }

        return v10;
      }

      return 0;
    }
  }

  else
  {
    v80[0] = a2;
    v85 = 76;
    LODWORD(v78) = 0;
    v84 = a4;
    cpotf2_NEWLAPACK();
    v10 = v80[0];
    if (a1 > v80[0])
    {
      cblas_ctrsm_NEWLAPACK();
      return v80[0];
    }
  }

  return v10;
}

uint64_t sub_23677272C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  if (*v2 - 96 * a2 >= 96)
  {
    v4 = 96;
  }

  else
  {
    v4 = *v2 - 96 * a2;
  }

  v3 = v2[1];
  if (v3 - 96 * a2 >= 96)
  {
    v5 = 96;
  }

  else
  {
    v5 = v3 - 96 * a2;
  }

  result = cpotf2_NEWLAPACK();
  v7 = v5;
  if (v4 > v5)
  {
    result = cblas_ctrsm_NEWLAPACK();
    v7 = v5;
  }

  if (v7 != v5)
  {
    v2[6] = 0;
  }

  return result;
}

uint64_t sub_2367728E8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4 = *(*a1 + 24);
  v5 = (*v4 - 1) / 96 + 1;
  v6 = 3 * (a2 % v5);
  v7 = 96 * (a2 % v5);
  v8 = (v5 * v5);
  v9 = 3 * (a2 / v8);
  v10 = 96 * (a2 / v8);
  if (*v4 - 32 * v6 >= 96)
  {
    v11 = 96;
  }

  else
  {
    v11 = *v4 - 32 * v6;
  }

  v12 = v4[1] - 32 * v9;
  if (8 * v7 != 8 * v10)
  {
    return cblas_cgemm_NEWLAPACK();
  }

  result = cblas_cherk_NEWLAPACK();
  if (v12 < v11)
  {
    return cblas_cgemm_NEWLAPACK();
  }

  return result;
}

uint64_t sub_236772AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  if (a3 < 1)
  {
    return 0;
  }

  v14 = 0;
  v15 = a3;
  v16 = 8 * a6 + 8;
  while (hypotf(*a5, a5[1]) != 0.0)
  {
    sub_23677A1D0(a1, v15, a5, a6, a7, a9);
    *a5 = *a7;
    v14 = (v14 + 1);
    a1 = (a1 - 1);
    a5 = (a5 + v16);
    if (!--v15)
    {
      return a3;
    }
  }

  return v14;
}

uint64_t sub_236772B6C(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, uint64_t a5, uint64_t a6, float32x4_t *a7, uint64_t a8)
{
  v10 = a3;
  v11 = a2;
  v29[2] = *MEMORY[0x277D85DE8];
  if (a2 < 48)
  {
    return sub_236772AA8(a1, a2, a2, a4, a3, a4, v29, a8, a7);
  }

  LODWORD(v12) = 0;
  v28 = a4 + 1;
  v26 = a1 - a2;
  do
  {
    v13 = &v10[2 * v28 * v12];
    v14 = v11 - v12;
    if (v11 - v12 >= 48)
    {
      v15 = 48;
    }

    else
    {
      v15 = v14;
    }

    v16 = a1;
    v17 = sub_236772AA8((a1 - v12), a2, v15, a4, &v10[2 * v28 * v12], a4, v29, a8, a7);
    v12 = (v17 + v12);
    if (v17 >= 1 && v12 < v11)
    {
      v19 = v17;
      v20 = v14 - v17;
      v21 = (v13 + 8 * v17);
      v22 = v13 + 8 * v28 * v17;
      sub_236801AEC(v20, v17, v21, a4, v13, v22, a4, a7);
      if (v16 > v11)
      {
        sub_236802878(v26, v20, v19, v21 + 8 * v20, v21, a4, v13, v22 + 8 * v20, v23, v24, a4, a7);
      }
    }

    v10 = a3;
    a1 = v16;
  }

  while (v12 < v11);
  return v12;
}

uint64_t sub_236772CF4(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a4 - 1;
  if (a4 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 8 * a7;
    v12 = 8 * a7 + 8;
    do
    {
      sub_23681E680(1.0, 0.0, *(a6 + v9), *(a6 + v9 + 4));
      cblas_cscal_NEWLAPACK();
      if (v8 >= 1)
      {
        cblas_cgeru_NEWLAPACK();
      }

      ++v10;
      v9 += v12;
      v11 += v12;
      --v8;
    }

    while (a4 != v10);
  }

  if (a1 > a4)
  {
    cblas_ctrsm_NEWLAPACK();
  }

  if (a3 > a4)
  {
    cblas_ctrsm_NEWLAPACK();
    cblas_cgemm_NEWLAPACK();
  }

  return a4;
}

uint64_t sub_236772ECC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, int a9)
{
  v12 = a2;
  if (a3 >= 100)
  {
    v14 = 0;
    do
    {
      v15 = a3 - v14;
      if (a3 - v14 >= 100)
      {
        v16 = 100;
      }

      else
      {
        v16 = v15;
      }

      sub_236772CF4(a1 - v14, a2, v15, v16, a5, a4 + 8 * (a5 + 1) * v14, a5);
      v14 += v16;
    }

    while (v14 < a3);
  }

  else
  {
    sub_236772CF4(a1, a2, a3, a3, a5, a4, a5);
  }

  v17 = __OFSUB__(v12, a3);
  v18 = v12 - a3;
  if (!((v18 < 0) ^ v17 | (v18 == 0)))
  {
    cblas_ctrsm_NEWLAPACK();
  }

  if (a1 - a3 >= 1 && v18 >= 1)
  {
    cblas_cgemm_NEWLAPACK();
  }

  return a3;
}

uint64_t sub_236773038(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = a3;
  v22 = a1;
  v23 = a13;
  v24 = a10;
  if (a1 > 767 || a3 > 383)
  {
    if (a17)
    {
      v25 = (a1 - 1) / 384;
      v26 = v25 + 1;
      v78[0] = a1;
      v78[1] = a2;
      v80 = a4;
      v79 = a3;
      v27 = (a2 - 1) / 384 + 1;
      v81 = a5;
      v82 = a6;
      v83 = a7;
      v84 = a8;
      v85 = a9;
      v86 = a10;
      v87 = a14;
      v88 = a12;
      v89 = a13;
      v90 = a16;
      v76 = 0u;
      v77 = 0u;
      sub_236792218(a17, a18, &v76);
      *(&v77 + 1) = v78;
      v28 = v27 * (v25 + 1);
      v33 = (*(a12 + 24))(48 * v28);
      if (v28 >= 1)
      {
        _X0 = 0;
        for (i = 0; i != v28; ++i)
        {
          v36 = v33 + 48 * i;
          atomic_store(0, v36);
          *(v36 + 4) = 0;
          *(v36 + 8) = 0;
          v37 = *(v36 + 16);
          do
          {
            _X5 = *(v36 + 24);
            __asm { CASPAL          X4, X5, X0, X1, [X11] }

            _ZF = _X4 == v37;
            v37 = _X4;
          }

          while (!_ZF);
          *(v36 + 32) = 0;
          *(v36 + 40) = 0;
        }
      }

      if (v21 >= 1)
      {
        v66 = v33;
        v67 = 0;
        v42 = 0;
        v43 = v26;
        v64 = 48 * v25 + 48;
        v71 = v26;
        v72 = 384;
        v65 = v21;
        v74 = v33;
        do
        {
          v68 = v42 / 0x180 * v43;
          v70 = v42 / 0x180;
          v44 = v33 + 48 * v68;
          v45 = v44 + 48 * (v42 / 0x180);
          sub_236792228(&v76, v42 / 0x180, sub_236773AB0, 1u, _X4, _X5, v31, v32, v45);
          v46 = v42;
          if (v42)
          {
            v47 = v43;
            v48 = 0;
            v49 = v66;
            v50 = v67;
            do
            {
              v51 = v45;
              v52 = v47;
              sub_236792228(&v76, v50, sub_236774080, 2u, _X4, _X5, v31, v32, v49);
              v47 = v52;
              v45 = v51;
              v48 += 384;
              v49 += v64;
              v50 += v47;
            }

            while (v48 < v46);
          }

          v42 = v46 + 384;
          if (v46 + 384 < v22)
          {
            v53 = v72;
            do
            {
              sub_236792228(&v76, v68 + v53 / 0x180uLL, sub_2367741F0, 2u, _X4, _X5, v31, v32, v74 + 48 * (v68 + v53 / 0x180uLL));
              v53 += 384;
            }

            while (v53 < v22);
          }

          if (v42 < a2)
          {
            v54 = v72;
            do
            {
              sub_236792228(&v76, v70 + v54 / 0x180u * v71, sub_2367743F0, 2u, _X4, _X5, v31, v32, v45);
              v54 += 384;
            }

            while (v54 < a2);
            v69 = v68 * v27;
            v55 = v72;
            do
            {
              if (v42 < v22)
              {
                v56 = v72;
                do
                {
                  sub_236792228(&v76, v69 + v55 / 0x180u * v71 + v56 / 0x180uLL, sub_2367747BC, 3u, _X4, _X5, v31, v32, v44 + 48 * (v56 / 0x180uLL));
                  v56 += 384;
                }

                while (v56 < v22);
              }

              v55 += 384;
            }

            while (v55 < a2);
          }

          v43 = v71;
          v72 += 384;
          v66 += 48;
          ++v67;
          v21 = v65;
          v33 = v74;
        }

        while (v42 < v65);
      }

      if (sub_236792900(&v76))
      {
        sub_2366FCEC8(a17);
      }

      (*(a12 + 32))(v33);
    }

    else
    {
      if (a3 >= 384)
      {
        v57 = 0;
        v75 = a5 + 1;
        do
        {
          v59 = v21 - v57;
          if (v21 - v57 >= 384)
          {
            v60 = 384;
          }

          else
          {
            v60 = v59;
          }

          v61 = v23;
          v62 = v24;
          sub_2367736C8(v22 - v57, a2 - v57, v59, v60, v57, a4 + 8 * v75 * v57, a5, a6, a7, v24 + 4 * v57, v23);
          v24 = v62;
          v23 = v61;
          v57 += v60;
        }

        while (v57 < v21);
      }

      else
      {
        sub_2367736C8(a1, a2, a3, a3, 0, a4, a5, a6, a7, a10, a13);
      }

      if (a2 > v21)
      {
        cblas_ctrsm_NEWLAPACK();
      }

      if (v22 - v21 >= 1 && a2 - v21 >= 1)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    sub_2367736C8(a1, a2, a3, a3, 0, a4, a5, a6, a7, a10, a13);
    if (a2 > v21)
    {
      cblas_ctrsm_NEWLAPACK();
    }

    if (v22 - v21 >= 1 && a2 - v21 >= 1)
    {
LABEL_46:
      cblas_cgemm_NEWLAPACK();
    }
  }

  return v21;
}

uint64_t sub_2367736C8(int a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a4 >= 1)
  {
    v13 = 0;
    v40 = (a5 + a3);
    v32 = a6 + 8 * ~a7 * a5;
    v36 = a10 - 4 * a5;
    v41 = 8 * a7 + 8;
    v35 = a3 - 2;
    v34 = a6 + 8;
    v42 = a3 + 1;
    v33 = a6 + 4;
    do
    {
      v14 = (a6 + 8 * v13 * a7 + 8 * v13);
      v15 = 0.0;
      if (a3 - v13 >= 1)
      {
        v16 = v42 - v13;
        v17 = (a6 + 8 * v13 * a7 + 8 * v13);
        do
        {
          v18 = *v17;
          v19 = v17[1];
          v17 += 2;
          v20 = hypotf(v18, v19);
          if (v15 <= v20)
          {
            v15 = v20;
          }

          --v16;
        }

        while (v16 > 1);
      }

      if (*(a11 + 24) <= v15)
      {
        LODWORD(v22) = v13;
        if (a3 > v13)
        {
          v23 = (v33 + v41 * v13);
          v22 = v13;
          while (hypotf(*(v23 - 1), *v23) != v15)
          {
            ++v22;
            v23 += 2;
            if (a3 == v22)
            {
              LODWORD(v22) = v13;
              break;
            }
          }
        }

        if (v13 != v22)
        {
          v24 = v13 + a5;
          v25 = *(a10 + 4 * v13);
          *(a10 + 4 * v13) = *(v36 + 4 * (v22 + a5));
          v26 = v22 + a5;
          *(v36 + 4 * v26) = v25;
          if (v40 >= 1)
          {
            v27 = v32;
            v28 = v40;
            do
            {
              v29 = *(v27 + 8 * v24);
              *(v27 + 8 * v24) = *(v27 + 8 * v26);
              *(v27 + 8 * v26) = v29;
              v27 += 8 * a7;
              --v28;
            }

            while (v28);
          }

          if (a2 > a3)
          {
            cblas_cswap_NEWLAPACK();
          }
        }

        sub_23681E680(1.0, 0.0, *v14, v14[1]);
        v21 = v13 + 1;
        cblas_cscal_NEWLAPACK();
        if (a3 - v13 >= 2 && ~v13 + a4 >= 1)
        {
          cblas_cgeru_NEWLAPACK();
        }
      }

      else
      {
        *v14 = 968164595;
        v21 = v13 + 1;
        if (v13 + 1 < a3)
        {
          bzero((v34 + v41 * v13), 8 * (v35 - v13) + 8);
        }
      }

      v13 = v21;
    }

    while (v21 != a4);
  }

  if (a1 > a3)
  {
    cblas_ctrsm_NEWLAPACK();
  }

  if (a3 > a4)
  {
    cblas_ctrsm_NEWLAPACK();
    cblas_cgemm_NEWLAPACK();
  }

  return a4;
}

void *sub_236773AB0(uint64_t a1, uint64_t a2, int64x2_t a3)
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 24);
  v4 = *v3;
  v5 = v3[1];
  v6 = 3 * (a2 % ((*v3 - 1) / 384 + 1));
  v7 = 384 * (a2 % ((*v3 - 1) / 384 + 1));
  v8 = v7 + 384;
  if (v7 + 384 < *v3)
  {
    v4 = v7 + 384;
  }

  v71 = v4;
  if (v8 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7 + 384;
  }

  v70 = v9;
  v10 = v3[2];
  if (v8 < v10)
  {
    v10 = v7 + 384;
  }

  v73 = v10;
  v11 = (v10 - (v6 << 7));
  v12 = *(v3 + 2);
  v13 = *(v3 + 3);
  v74 = v7;
  v14 = v12 + 8 * (v13 + 1) * v7;
  v72 = v3;
  v15 = *(v3 + 9);
  v16 = (v15 + 4 * v7);
  if (v11 >= 1)
  {
    v17 = 0;
    v80 = *(v72 + 11);
    a3 = vdupq_n_s64(v11 - 1);
    v18 = (v15 + 4 * v74 + 8);
    v19 = xmmword_23681F910;
    v20 = xmmword_23681F920;
    v21 = vdupq_n_s64(4uLL);
    do
    {
      v22 = vmovn_s64(vcgeq_u64(a3, v20));
      if (vuzp1_s16(v22, *a3.i8).u8[0])
      {
        *(v18 - 2) = v17;
      }

      if (vuzp1_s16(v22, *&a3).i8[2])
      {
        *(v18 - 1) = v17 + 1;
      }

      if (vuzp1_s16(*&a3, vmovn_s64(vcgeq_u64(*&a3, *&v19))).i32[1])
      {
        *v18 = v17 + 2;
        v18[1] = v17 + 3;
      }

      v17 += 4;
      v19 = vaddq_s64(v19, v21);
      v20 = vaddq_s64(v20, v21);
      v18 += 4;
    }

    while (((v11 + 3) & 0xFFFFFFFC) != v17);
    v23 = 0;
    v79 = 8 * v13 + 8;
    v76 = v11 - 2;
    v75 = v14 + 8;
    v78 = v73 - v74 + 1;
    v77 = v14 + 4;
    do
    {
      v24 = (v14 + 8 * v23 * v13 + 8 * v23);
      v25 = 0.0;
      if (v11 - v23 >= 1)
      {
        v26 = v78 - v23;
        v27 = (v14 + 8 * v23 * v13 + 8 * v23);
        do
        {
          v28 = *v27;
          v29 = v27[1];
          v27 += 2;
          *a3.i32 = hypotf(v28, v29);
          if (v25 <= *a3.i32)
          {
            v25 = *a3.i32;
          }

          --v26;
        }

        while (v26 > 1);
      }

      *a3.i64 = v25;
      if (*(v80 + 24) <= v25)
      {
        v31 = (v77 + v79 * v23);
        v32 = v23;
        while (hypotf(*(v31 - 1), *v31) != v25)
        {
          ++v32;
          v31 += 2;
          if (v11 == v32)
          {
            LODWORD(v32) = v23;
            break;
          }
        }

        if (v23 != v32)
        {
          v33 = v16[v23];
          v16[v23] = v16[v32];
          v16[v32] = v33;
          v34 = v14;
          v35 = v11;
          do
          {
            v36 = *(v34 + 8 * v23);
            *(v34 + 8 * v23) = *(v34 + 8 * v32);
            *(v34 + 8 * v32) = v36;
            v34 += 8 * v13;
            --v35;
          }

          while (v35);
        }

        v81 = sub_23681E680(1.0, 0.0, *v24, v24[1]);
        v82 = v37;
        v30 = v23 + 1;
        cblas_cscal_NEWLAPACK();
        if (v11 - v23 >= 2)
        {
          v69 = v13;
          v68 = v14 + 8 * v30 * v13 + 8 * v23 + 8;
          cblas_cgeru_NEWLAPACK();
        }
      }

      else
      {
        *v24 = 968164595;
        v30 = v23 + 1;
        if (v23 + 1 < v11)
        {
          bzero((v75 + v23 * v79), 8 * (v76 - v23) + 8);
        }
      }

      v23 = v30;
    }

    while (v30 != v11);
  }

  v38 = v72;
  v39 = (*(v72 + 8) + 4 * v74);
  MEMORY[0x28223BE20](a3);
  v41 = &v70 - ((v40 + 15) & 0x7FFFFFFF0);
  result = memcpy(v41, v39, 4 * v11);
  if (v11 >= 1)
  {
    v44 = v11;
    v45 = v16;
    do
    {
      v46 = *v45++;
      *v39++ = *&v41[4 * v46];
      --v44;
    }

    while (v44);
  }

  v47 = v71 - v73;
  v48 = (v70 - v73);
  if (v71 - v73 > 0)
  {
    v69 = v38[6];
    v68 = v14 + 8 * v11;
    LODWORD(v67) = v69;
    v66 = v14;
    result = cblas_ctrsm_NEWLAPACK();
  }

  if (v48 >= 1)
  {
    v49 = *(v38 + 4) + 8 * *(v38 + 5) * v74;
    MEMORY[0x28223BE20](v43);
    v50 = 0;
    v51 = 8 * *(v38 + 5);
    v52 = v49;
    do
    {
      if (v11 >= 1)
      {
        v53 = v52;
        v54 = v63;
        v55 = v11;
        do
        {
          *v54++ = *v53;
          v53 = (v53 + v51);
          --v55;
        }

        while (v55);
        v56 = 0;
        v57 = v16;
        v58 = v11;
        do
        {
          v59 = *v57++;
          *(v52 + v56) = v63[v59];
          v56 += v51;
          --v58;
        }

        while (v58);
      }

      ++v50;
      ++v52;
    }

    while (v50 != v48);
    result = cblas_ctrsm_NEWLAPACK();
    if (v47 >= 1)
    {
      v60 = *(v38 + 5);
      v61 = *(v38 + 6) + 8 * (v73 - v38[2]);
      v62 = *(v38 + 3);
      v69 = *(v38 + 7);
      v67 = &unk_23681FE70;
      v68 = v61;
      LODWORD(v66) = v60;
      v65 = v49;
      v64 = v62;
      return cblas_cgemm_NEWLAPACK();
    }
  }

  return result;
}

uint64_t sub_236774080(uint64_t result, uint64_t a2)
{
  v20[384] = *MEMORY[0x277D85DE8];
  v2 = *(*result + 24);
  v3 = *(v2 + 4);
  v4 = (*v2 - 1) / 384 + 1;
  v5 = a2 / v4;
  if (v3 >= 384 * v5 + 384)
  {
    v3 = 384 * v5 + 384;
  }

  v19 = (v3 - 384 * v5);
  if (v19 >= 1)
  {
    v6 = 0;
    v7 = 384 * (a2 % v4);
    v8 = *(v2 + 72) + 4 * v7;
    v9 = *(v2 + 24);
    v10 = *(v2 + 16) + 8 * v9 * 384 * v5 + 8 * v7;
    v11 = *(v2 + 8);
    if (v11 >= v7 + 384)
    {
      v11 = v7 + 384;
    }

    v12 = v11 - v7;
    v13 = 8 * (v11 - v7);
    v14 = v10;
    do
    {
      result = __memcpy_chk();
      v15 = v8;
      v16 = v14;
      v17 = v13;
      if (v12 >= 1)
      {
        do
        {
          v18 = *v15++;
          *v16++ = v20[v18];
          v17 -= 8;
        }

        while (v17);
      }

      ++v6;
      v14 += v9;
    }

    while (v6 != v19);
  }

  return result;
}

uint64_t sub_2367741F0(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  v3 = (*v2 - 1) / 384 + 1;
  v4 = 3 * (a2 % v3);
  v5 = 3 * (a2 / v3);
  if ((*v2 - 384 * (a2 % v3)) >= 384)
  {
    v6 = 384;
  }

  else
  {
    v6 = *v2 - 384 * (a2 % v3);
  }

  if ((v2[1] - 384 * (a2 / v3)) >= 384)
  {
    v7 = 384;
  }

  else
  {
    v7 = v2[1] - 384 * (a2 / v3);
  }

  result = cblas_ctrsm_NEWLAPACK();
  v9 = v2[2];
  v10 = v9 - (v5 << 7);
  if (v7 < v10)
  {
    v10 = v7;
  }

  v11 = v7 - (v10 & ~(v10 >> 31));
  v12 = v9 - (v4 << 7);
  if (v6 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v6;
  }

  v14 = v6 - (v13 & ~(v13 >> 31));
  if (v13 >= 1 && v11 >= 1)
  {
    result = cblas_cgemm_NEWLAPACK();
  }

  if (v11 >= 1 && v14 >= 1)
  {
    return cblas_cgemm_NEWLAPACK();
  }

  return result;
}

uint64_t sub_2367743F0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 24);
  v5 = (*v3 - 1) / 384 + 1;
  v6 = a2 / v5;
  v7 = 3 * (a2 % v5);
  v8 = v7 << 7;
  v9 = 3 * v6;
  v10 = (v9 << 7);
  v11 = *v3 - (v7 << 7);
  if (v11 >= 384)
  {
    v12 = 384;
  }

  else
  {
    v12 = v11;
  }

  v4 = *(v3 + 4);
  if (v4 - (v9 << 7) >= 384)
  {
    v13 = 384;
  }

  else
  {
    v13 = v4 - (v9 << 7);
  }

  v14 = *(v3 + 8);
  result = (v14 - (v7 << 7));
  if (result >= 384)
  {
    v16 = 384;
  }

  else
  {
    v16 = result;
  }

  v17 = v8;
  v18 = *(v3 + 16);
  v19 = *(v3 + 24);
  v20 = v18 + 8 * (v8 * v19 + v8);
  v67 = *(v3 + 72) + 4 * v8;
  v21 = v14 - (v9 << 7);
  if (v13 < v21)
  {
    v21 = v13;
  }

  v22 = v21 & ~(v21 >> 31);
  v23 = (v13 - v22);
  if (v12 >= result)
  {
    v24 = result;
  }

  else
  {
    v24 = v12;
  }

  if (v21 >= 1)
  {
    v59 = v24;
    v61 = result;
    v63 = v20;
    v64 = (v13 - v22);
    v65 = v16;
    v58[1] = v58;
    v60 = v10;
    v62 = v17;
    v25 = v18 + 8 * v19 * v10 + 8 * v17;
    MEMORY[0x28223BE20](a3);
    v26 = 0;
    v66 = v3;
    v27 = *(v3 + 24);
    v28 = v25;
    do
    {
      __memcpy_chk();
      v29 = v67;
      v30 = v28;
      v31 = v12;
      if (v11 >= 1)
      {
        do
        {
          v32 = *v29++;
          *v30++ = v51[v32];
          --v31;
        }

        while (v31);
      }

      ++v26;
      v28 += v27;
    }

    while (v26 != v22);
    v3 = v66;
    v16 = v65;
    cblas_ctrsm_NEWLAPACK();
    v14 = *(v3 + 8);
    v23 = v64;
    v17 = v62;
    result = v61;
    LODWORD(v10) = v60;
    v24 = v59;
  }

  if (v23 >= 1)
  {
    v33 = v24 & ~(v24 >> 31);
    v34 = v12 - v33;
    v35 = *(v3 + 32) + 8 * *(v3 + 40) * v17;
    v66 = v22 + v10 - v14;
    v36 = v35 + 8 * v66;
    v37 = MEMORY[0x28223BE20](a3);
    v38 = 0;
    v39 = 8 * *(v3 + 40);
    v40 = v36;
    do
    {
      if (v37 >= 1)
      {
        v41 = v40;
        v42 = v51;
        v43 = v16;
        do
        {
          *v42++ = *v41;
          v41 = (v41 + v39);
          --v43;
        }

        while (v43);
        v44 = 0;
        v45 = v67;
        v46 = v16;
        do
        {
          v47 = *v45++;
          *(v40 + v44) = v51[v47];
          v44 += v39;
          --v46;
        }

        while (v46);
      }

      ++v38;
      ++v40;
    }

    while (v38 != v23);
    result = cblas_ctrsm_NEWLAPACK();
    if (v34 >= 1)
    {
      v48 = *(v3 + 40);
      v49 = *(v3 + 48) + 8 * *(v3 + 56) * v66 + 8 * (v33 + v17 - *(v3 + 8));
      v50 = *(v3 + 24);
      v57 = *(v3 + 56);
      v54 = v48;
      v53 = v36;
      v52 = v50;
      v55 = &unk_23681FE70;
      v56 = v49;
      return cblas_cgemm_NEWLAPACK();
    }
  }

  return result;
}

uint64_t sub_2367747BC(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 24);
  v3 = v2[1];
  v4 = (*v2 - 1) / 384 + 1;
  if ((*v2 - 384 * (a2 % v4)) >= 384)
  {
    v5 = 384;
  }

  else
  {
    v5 = *v2 - 384 * (a2 % v4);
  }

  if (v3 - 384 * ((a2 % (v4 + v4 * ((v3 - 1) / 384))) / v4) >= 384)
  {
    v6 = 384;
  }

  else
  {
    v6 = v3 - 384 * ((a2 % (v4 + v4 * ((v3 - 1) / 384))) / v4);
  }

  v7 = v2[2];
  v8 = v7 - 384 * ((a2 % (v4 + v4 * ((v3 - 1) / 384))) / v4);
  if (v6 < v8)
  {
    v8 = v6;
  }

  v9 = v6 - (v8 & ~(v8 >> 31));
  if (v5 >= (v7 - 384 * (a2 % v4)))
  {
    v10 = v7 - 384 * (a2 % v4);
  }

  else
  {
    v10 = v5;
  }

  if (v8 >= 1)
  {
    result = cblas_cgemm_NEWLAPACK();
  }

  v11 = v5 - (v10 & ~(v10 >> 31));
  if (v10 >= 1 && v9 >= 1)
  {
    result = cblas_cgemm_NEWLAPACK();
  }

  if (v11 >= 1 && v9 >= 1)
  {
    return cblas_cgemm_NEWLAPACK();
  }

  return result;
}

uint64_t sub_236774A40(int a1, int a2, int a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a4 < 1)
  {
    return 0;
  }

  v17 = a6;
  v19 = a1;
  v20 = 0;
  v21 = 0;
  v57 = a6 + 8 * ~a7 * a5;
  v56 = a8 - 8 * a5 * a9;
  v52 = a7 + 1;
  v55 = a10 - 4 * a5;
  v47 = a11 - 4 * a5;
  v51 = 8 * a7;
  v53 = 8 * a7 + 8;
  v54 = a6 + 12;
  v50 = a3 - 1;
  v48 = a1 - a3;
  v49 = a6 + 8 * a3 + 4;
  LODWORD(v22) = a4;
  while (1)
  {
    v23 = v17;
    v24 = (v21 + 1);
    v25 = 0.0;
    if (v24 < a3)
    {
      v26 = (v54 + v53 * v21);
      v27 = v50 - v21;
      do
      {
        v28 = hypotf(*(v26 - 1), *v26);
        if (v25 <= v28)
        {
          v25 = v28;
        }

        v26 += 2;
        --v27;
      }

      while (v27);
    }

    v29 = v25;
    if (a3 < v19)
    {
      v30 = v48;
      v31 = (v49 + v51 * v21);
      v29 = v25;
      do
      {
        v32 = hypotf(*(v31 - 1), *v31);
        if (v29 <= v32)
        {
          v29 = v32;
        }

        v31 += 2;
        --v30;
      }

      while (v30);
    }

    v33 = v29;
    v34 = *(a13 + 24);
    v17 = v23;
    if (v34 <= v33 || v34 <= hypotf(*(v23 + 8 * v52 * v21), *(v23 + 8 * v52 * v21 + 4)))
    {
      v35 = *(a13 + 16) * v33;
      v36 = v23 + 8 * v21 * a7 + 8 * v21;
      v37 = *v36;
      v38 = *(v36 + 4);
      if (v35 <= hypotf(*v36, v38))
      {
        goto LABEL_27;
      }

      if (v35 <= v25)
      {
        if (v24 >= a3)
        {
          v43 = -1;
        }

        else
        {
          v45 = v20;
          v42 = (v54 + v53 * v21);
          v43 = v21 + 1;
          while (hypotf(*(v42 - 1), *v42) < v25)
          {
            ++v43;
            v42 += 2;
            if (a3 == v43)
            {
              v43 = -1;
              break;
            }
          }

          LODWORD(v20) = v45;
        }

        sub_236774EC4((v21 + a5), v43 + a5, a5 + a2, a5 + a3, v57, a7, v56, a9, v55);
        v37 = *v36;
        v38 = *(v36 + 4);
        v17 = v23;
LABEL_27:
        sub_23681E680(1.0, 0.0, v37, v38);
        cblas_cscal_NEWLAPACK();
        if (~v21 + a1 >= 1 && (~v21 + a4) >= 1)
        {
          cblas_cgeru_NEWLAPACK();
        }

        v20 = (v20 + 1);
        v19 = a1;
        goto LABEL_31;
      }
    }

    v22 = v22 - 1;
    v39 = v22 + a5;
    v40 = v21 + a5;
    sub_236774EC4(v40, v22 + a5, a5 + a2, a5 + a3, v57, a7, v56, a9, v55);
    if (v21 == v22)
    {
      break;
    }

    v41 = *(v47 + 4 * v40);
    *(v47 + 4 * v40) = *(v47 + 4 * v39);
    *(v47 + 4 * v39) = v41;
    v19 = a1;
    cblas_cswap_NEWLAPACK();
    v24 = v21;
LABEL_31:
    v21 = v24;
    if (v24 >= v22)
    {
      goto LABEL_35;
    }
  }

  v19 = a1;
LABEL_35:
  if (a3 > a4 && v20 > 0)
  {
    cblas_ctrsm_NEWLAPACK();
    sub_236774F44(111, (v19 - v20), a3 - a4, v20, v17 + 8 * v20, a7, v17 + 8 * a4 * a7, a7, v17 + 8 * a4 * a7 + 8 * v20, a7, a12, a14, a15, a16);
  }

  return v20;
}

uint64_t sub_236774EC4(uint64_t result, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (result != a2)
  {
    v9 = *(a9 + 4 * result);
    *(a9 + 4 * result) = *(a9 + 4 * a2);
    *(a9 + 4 * a2) = v9;
    if (a4 >= 1)
    {
      v10 = a4;
      do
      {
        v11 = *(a5 + 8 * result);
        *(a5 + 8 * result) = *(a5 + 8 * a2);
        *(a5 + 8 * a2) = v11;
        a5 += 8 * a6;
        --v10;
      }

      while (v10);
    }

    result = (a3 - a4);
    if (a3 > a4)
    {
      return cblas_cswap_NEWLAPACK();
    }
  }

  return result;
}

uint64_t sub_236774F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = a2 - 1;
  if (a2 < 1)
  {
    v14 = a2 + 254;
  }

  v15 = (v14 >> 8) + 1;
  v16 = a3 - 1;
  if (a3 < 1)
  {
    v16 = a3 + 254;
  }

  v17 = ((v16 >> 8) + 1) * v15;
  if (v17 == 1 || a13 == 0)
  {

    return cblas_cgemm_NEWLAPACK();
  }

  else
  {
    v27[0] = a2;
    v27[1] = a3;
    v27[2] = a4;
    v27[3] = 111;
    v28 = a1;
    v29 = a5;
    v30 = a7;
    v31 = a9;
    v32 = a6;
    v33 = a8;
    v34 = a10;
    v35 = &unk_23681FE60;
    v36 = &unk_23681FE70;
    v37 = a11;
    v38 = a12;
    v25 = 0u;
    v26 = 0u;
    sub_236792218(a13, a14, &v25);
    *(&v26 + 1) = v27;
    if (v17)
    {
      for (i = 0; i != v17; ++i)
      {
        sub_236792228(&v25, i, sub_236777D80, 0, v20, v21, v22, v23, v25);
      }
    }

    result = sub_236792900(&v25);
    if (result)
    {
      return sub_2366FCEC8(a13);
    }
  }

  return result;
}

uint64_t sub_2367750CC(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v75 = a3 - 1;
  if (a3 < 1)
  {
    return 0;
  }

  v65 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v72 = a5 + 8 * ~a6 * a4;
  v68 = a9 - 4 * a4;
  v69 = a7 - 8 * a4 * a8;
  v63 = a10 - 4 * a4;
  v66 = (a2 - a3);
  v17 = a12;
  v60 = a5 + 8;
  v18 = 8 * a6;
  v73 = 8 * a6 + 8;
  v59 = a1 - 2;
  v61 = 8 * (~a3 + a2);
  v71 = a5 + 12;
  v62 = a5 + 4;
  v67 = a5 + 4 + 8 * a3;
  v58 = a7 + 4;
  v57 = 8 * a8;
  LODWORD(v19) = a3;
  do
  {
    while (1)
    {
      v78 = v14;
      v20 = (v16 + 1);
      v21 = 0.0;
      if (v20 < a3)
      {
        v22 = (v71 + v73 * v16);
        v23 = v75 - v16;
        do
        {
          v24 = hypotf(*(v22 - 1), *v22);
          if (v21 <= v24)
          {
            v21 = v24;
          }

          v22 += 2;
          --v23;
        }

        while (v23);
      }

      v80 = v15;
      v25 = v21;
      if (a3 < a1)
      {
        v26 = (v67 + v18 * v16);
        v27 = a3;
        v25 = v21;
        do
        {
          v28 = hypotf(*(v26 - 1), *v26);
          if (v25 <= v28)
          {
            v25 = v28;
          }

          v26 += 2;
          ++v27;
        }

        while (v27 < a1);
      }

      v29 = v25;
      v30 = *(v17 + 24);
      v31 = a5 + 8 * v16 * a6;
      if (v30 <= v29 || (v32 = (v31 + 8 * v16), v30 <= hypotf(*v32, v32[1])))
      {
        v40 = *(v17 + 16) * v29;
        v41 = (v31 + 8 * v16);
        v42 = *v41;
        v43 = v41[1];
        if (v40 <= hypotf(*v41, v43))
        {
          goto LABEL_35;
        }

        if (v40 <= v21)
        {
          if (v20 >= a3)
          {
            v45 = -1;
            v46 = v72;
          }

          else
          {
            v44 = (v71 + v73 * v16);
            v45 = v16 + 1;
            while (hypotf(*(v44 - 1), *v44) < v21)
            {
              ++v45;
              v44 += 2;
              if (a3 == v45)
              {
                v45 = -1;
                break;
              }
            }

            v46 = v72;
            v17 = a12;
          }

          sub_236774EC4((v16 + a4), v45 + a4, a4 + a2, a4 + a3, v46, a6, v69, a8, v68);
          v42 = *v41;
          v43 = v41[1];
LABEL_35:
          sub_23681E680(1.0, 0.0, v42, v43);
          cblas_cscal_NEWLAPACK();
          if (~v16 + a1 >= 1 && ~v16 + a3 >= 1)
          {
            cblas_cgeru_NEWLAPACK();
          }

          v15 = (v80 + 1);
          v14 = 1;
          goto LABEL_61;
        }

        goto LABEL_57;
      }

      v33 = 0.0;
      if (v20 < a3)
      {
        v34 = (v62 + v18 + v18 * v16 + 8 * v16);
        v35 = v75 - v16;
        do
        {
          v36 = hypotf(*(v34 - 1), *v34);
          if (v33 <= v36)
          {
            v33 = v36;
          }

          v34 = (v34 + v18);
          --v35;
        }

        while (v35);
      }

      v37 = v33;
      if (v30 <= v33)
      {
        goto LABEL_46;
      }

      v38 = a2;
      v17 = a12;
      if (a2 <= a3)
      {
        v39 = v65;
      }

      else
      {
        v39 = v65;
        if (v80 > v65)
        {
          cblas_ctrsm_NEWLAPACK();
          v38 = a2;
          v39 = v80;
          if (a3 > v80)
          {
            cblas_cgemm_NEWLAPACK();
            v38 = a2;
            v39 = v80;
          }
        }
      }

      v65 = v39;
      if (v38 > a3)
      {
        v47 = (v58 + v57 * v16);
        v48 = v66;
        do
        {
          v49 = hypotf(*(v47 - 1), *v47);
          if (v33 <= v49)
          {
            v33 = v49;
          }

          v47 += 2;
          --v48;
        }

        while (v48);
        v37 = v33;
LABEL_46:
        v50 = v80;
        v17 = a12;
        goto LABEL_48;
      }

      v50 = v80;
LABEL_48:
      if (*(v17 + 24) > v37)
      {
        *v32 = 2139095040;
        if (a1 > v20)
        {
          bzero((v60 + v73 * v16), 8 * (v59 - v16) + 8);
        }

        if (v20 < a3)
        {
          v51 = (a5 + v18 + v18 * v16 + 8 * v16);
          v52 = v75 - v16;
          do
          {
            *v51 = 0;
            v51 = (v51 + v18);
            --v52;
          }

          while (v52);
        }

        if (v66 >= 1)
        {
          bzero((a7 + 8 * v16 * a8), v61 + 8);
        }

        v15 = (v50 + 1);
        goto LABEL_60;
      }

LABEL_57:
      v19 = v19 - 1;
      v53 = v19 + a4;
      v54 = v16 + a4;
      sub_236774EC4(v54, v19 + a4, a4 + a2, a4 + a3, v72, a6, v69, a8, v68);
      if (v16 == v19)
      {
        break;
      }

      v55 = *(v63 + 4 * v54);
      *(v63 + 4 * v54) = *(v63 + 4 * v53);
      *(v63 + 4 * v53) = v55;
      cblas_cswap_NEWLAPACK();
      v20 = v16;
      v17 = a12;
      v15 = v80;
LABEL_60:
      v14 = v78;
LABEL_61:
      v16 = v20;
      if (v20 >= v19)
      {
        goto LABEL_62;
      }
    }

    v17 = a12;
    v15 = v80;
    LOBYTE(v14) = v78;
LABEL_62:
    if ((v14 & 1) == 0)
    {
      break;
    }

    v14 = 0;
    LODWORD(v19) = a3;
    v16 = v15;
  }

  while (a3 > v15);
  if (a2 > a3 && v15 > v65)
  {
    cblas_ctrsm_NEWLAPACK();
    if (a3 > v15)
    {
      cblas_cgemm_NEWLAPACK();
    }
  }

  return v15;
}

uint64_t sub_23677585C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = a8;
  v21 = a5;
  v22 = a4;
  v24 = a1;
  v25 = a2;
  if (a3 >= 100)
  {
    v28 = 0;
    v29 = a5 + 1;
    do
    {
      if (a3 - v28 < 101)
      {
        break;
      }

      v30 = v24;
      v31 = sub_236774A40(v24 - v28, v25 - v28, a3 - v28, 0x64u, v28, v22 + 8 * v29 * v28, a5, a6 + 8 * v28 * a7, a7, a10 + 4 * v28, a11 + 4 * v28, a12, a13, a16, a17, a18);
      v24 = v30;
      a2 = v25;
      v22 = a4;
      v28 += v31;
    }

    while (v31);
    if (a2 > a3 && v28 >= 1)
    {
      v36 = a6;
      v37 = v24;
      cblas_ctrsm_NEWLAPACK();
      LODWORD(v24) = v37;
      a2 = v25;
      v22 = a4;
      if (a3 > v28)
      {
        LODWORD(v36) = a5;
        cblas_cgemm_NEWLAPACK();
        LODWORD(v24) = v37;
        a2 = v25;
        v22 = a4;
      }
    }

    v32 = v22 + 8 * v29 * v28;
    v26 = v24;
    v21 = a5;
    v27 = sub_2367750CC(v24 - v28, a2 - v28, a3 - v28, v28, v32, a5, a6 + 8 * v28 * a7, a7, a10 + 4 * v28, a11 + 4 * v28, v36, a13) + v28;
    v18 = a8;
  }

  else
  {
    v26 = a1;
    v27 = sub_2367750CC(a1, a2, a3, 0, a4, a5, a6, a7, a10, a11, v36, a13);
  }

  v33 = (v26 - a3);
  if (v33 >= 1)
  {
    v34 = (v25 - a3);
    if (v34 >= 1)
    {
      sub_236774F44(112, v33, v34, v27, a4 + 8 * a3, v21, a6, a7, v18, a9, a12, a16, a17, a18);
    }
  }

  return v27;
}

uint64_t sub_236775B18(int a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v7 = a3;
  v108 = a4;
  v10 = a4 + 1;
  v11 = *(a2 + 88);
  v110 = v10;
  v12 = *(v11 + 4 * v10);
  v113 = *(v11 + 4 * a4);
  v13 = (v12 - v113);
  v106 = *(a3[5] + 8 * a4);
  v14 = v106 + 1;
  v105 = *v106;
  v15 = 2 * v13;
  v121 = a1 - 3;
  if ((a1 - 3) >= 2)
  {
    v15 = 0;
  }

  v116 = v15;
  v16 = atomic_load((a3[6] + 4 * a4));
  v119 = *(*(a2 + 120) + 8 * v10) - *(*(a2 + 120) + 8 * a4);
  v17 = 8 * (2 * (v16 + v13) + (v16 + *(*(a2 + 120) + 8 * v10) - *(*(a2 + 120) + 8 * a4)) * (v16 + v13)) + 4 * (v16 + v13) + 8;
  *(a3[5] + 8 * a4) = (*(a2 + 24))(v17);
  v18 = *(v7[5] + 8 * a4);
  if (!v18)
  {
    return 0xFFFFFFFFLL;
  }

  v107 = v16;
  *v18 = v17;
  v19 = a1;
  if (a1 == 4)
  {
    v20 = v7[5];
    v21 = v108;
    v22 = atomic_load((v7[6] + 4 * v108));
    v18 = *(v20 + 8 * v21);
    v23 = v110;
  }

  else
  {
    v22 = 0;
    v23 = v110;
    v21 = v108;
  }

  v25 = v119;
  v26 = v22 + *(*(a2 + 120) + 8 * v23) - *(*(a2 + 120) + 8 * v21);
  v27 = *(a2 + 88);
  v28 = *(v27 + 4 * v23);
  v29 = *(v27 + 4 * v21);
  v30 = v28 - v29 + v22;
  v31 = v18 + 1;
  v32 = v26;
  if (v121 >= 2)
  {
    v33 = 0;
  }

  else
  {
    v33 = 2 * v30;
  }

  v34 = 8 * v26;
  v109 = v19;
  v120 = v18 + 1;
  v122 = v34;
  v118 = v18;
  v103 = v33;
  v104 = v28 - v29 + v22;
  if (v13 >= 1)
  {
    v101 = v22 + *(*(a2 + 120) + 8 * v23) - *(*(a2 + 120) + 8 * v21);
    v102 = v7;
    v35 = &v14[v119 * v13 + v116];
    v36 = v28 - v29 + v22;
    v37 = &v18[v30 * v26 + 1 + v33];
    v38 = (v12 - v113);
    do
    {
      v39 = *v35++;
      *v37 = v39;
      v37 = (v37 + 4);
      --v38;
    }

    while (v38);
    v40 = 0;
    v41 = 8 * v13 + 8;
    v114 = 8 * (v22 + v28 + v113 + ~v29 - v12);
    v115 = v41;
    v42 = 8 * v119;
    v43 = v42 + 8;
    v44 = v34 + 8;
    v45 = &v18[v107 + 1 + v13];
    v46 = (v106 + v41);
    v47 = v18 + 1;
    v117 = v28 - v29 + v22;
    v112 = v42 + 8;
    v111 = v34 + 8;
    do
    {
      v48 = 0;
      do
      {
        v47[v48] = v14[v48];
        ++v48;
      }

      while (v40 + v48 < v13);
      if (v13 < v36)
      {
        bzero(v118 + v41 + v34 * v40, v114 + 8);
        v44 = v111;
        v43 = v112;
        v42 = 8 * v119;
        v41 = v115;
        v36 = v117;
        v25 = v119;
        v31 = v120;
        v34 = v122;
      }

      v49 = v13;
      v50 = v46;
      for (i = v45; v49 < v25; ++v49)
      {
        v52 = *v50++;
        *i++ = v52;
      }

      ++v40;
      v14 = (v14 + v43);
      v47 = (v47 + v44);
      v45 += v34;
      v46 = (v46 + v42);
    }

    while (v40 != v13);
    v26 = v101;
    v7 = v102;
    v19 = v109;
    v21 = v108;
  }

  bzero(&v31[v32 * v13], 8 * v107 * v32);
  v53 = *(a2 + 120);
  v54 = *(v53 + 8 * v21);
  v55 = *(v53 + 8 * v110);
  v56 = v55 <= v54;
  v57 = v55 - v54;
  if (!v56)
  {
    v58 = 0;
    v59 = *(a2 + 128) + 4 * v54;
    do
    {
      *(a5 + 4 * *(v59 + 4 * v58)) = v58;
      ++v58;
    }

    while (v57 != v58);
  }

  v60 = *(a2 + 96);
  v61 = *(v60 + 4 * v21);
  v62 = v110;
  if (v61 < *(v60 + 4 * v110))
  {
    v63 = &v120[v104 * v26 + v103];
    v64 = v13;
    do
    {
      v65 = *(*(a2 + 104) + 4 * v61);
      if (v19 == 4)
      {
        v66 = atomic_load((v7[6] + 4 * v65));
      }

      else
      {
        v66 = 0;
      }

      v67 = *(a2 + 120);
      v68 = v65 + 1;
      v69 = *(v67 + 8 * (v65 + 1));
      v70 = *(v67 + 8 * v65);
      v71 = *(a2 + 88);
      v72 = *(v71 + 4 * (v65 + 1));
      v73 = v72 - *(v71 + 4 * v65) + v66;
      v74 = v73;
      if (v19 == 4)
      {
        v74 = *(v7[7] + 4 * v65);
      }

      if (v121 >= 2)
      {
        v75 = 0;
      }

      else
      {
        v75 = 2 * v73;
      }

      if (v73 != v74)
      {
        if (v74 < v73)
        {
          v76 = v66 + v69 - v70;
          v77 = *(v7[5] + 8 * v65);
          v78 = v72 - *(v71 + 4 * v65);
          v79 = v64 - v74;
          v80 = v74;
          v81 = 8 * v73;
          v82 = (v77 + v81 * v76 + 8 * v75 + 4 * v74 + 8);
          v83 = v64;
          v84 = v74;
          do
          {
            v85 = *v82++;
            *(v63 + 4 * v83) = v85;
            ++v84;
            ++v83;
          }

          while (v84 < v73);
          v86 = 8 * v76 + 8;
          v87 = v77 + v86 * v74 + 8;
          v88 = &v118[v64 + 1];
          v89 = v64;
          v90 = v74;
          do
          {
            v91 = 0;
            do
            {
              *(v88 + v122 * v89 + 8 * v91) = *(v87 + 8 * v91);
              ++v91;
            }

            while (v90 + v91 < v73);
            ++v90;
            v87 += v86;
            v88 += 8;
            ++v89;
          }

          while (v90 < v73);
          v92 = *(a2 + 120);
          v93 = v77 + v81 + 8 * v74 * v76 - 8 * v78 + 12;
          v19 = v109;
          v62 = v110;
          do
          {
            v94 = *(v92 + 8 * v65) + v78;
            if (v94 < *(v92 + 8 * v68))
            {
              v95 = v93 + 8 * v94;
              do
              {
                v96 = *(a5 + 4 * *(*(a2 + 128) + 4 * v94));
                v97 = (v95 - 8 * *(v92 + 8 * v65));
                v98 = *(v97 - 1);
                v99 = *v97;
                v100 = &v120[v107 + v32 * (v79 + v80) + v96];
                if (v96 < v13)
                {
                  v100 = &v120[v79 + v80 + v96 * v32];
                  v99 = -v99;
                }

                *v100 = v98;
                *(v100 + 4) = v99;
                ++v94;
                v92 = *(a2 + 120);
                v95 += 8;
              }

              while (v94 < *(v92 + 8 * v68));
            }

            ++v80;
            v93 += 8 * v76;
          }

          while (v80 < v73);
        }

        v64 = v73 + v64 - v74;
      }

      ++v61;
    }

    while (v61 < *(*(a2 + 96) + 4 * v62));
  }

  if (v105)
  {
    (*(a2 + 32))(v106);
  }

  return 0;
}

uint64_t sub_2367760E0(uint64_t result, int a2, int a3, uint64_t a4, float *a5, unsigned int a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a2;
  v13 = a9;
  v14 = 8 * a2;
  if (a9)
  {
    v14 = 0;
  }

  else
  {
    v13 = a11;
  }

  v58 = v13;
  v64 = a6;
  if (((a2 | result) & 0x80000000) != 0 || a6 < 1 || ((v15 = (a12 - v14) >> 3, v15 >= a2) ? (v16 = a6 < a2) : (v16 = 1), !v16 ? (v17 = v15 <= 0) : (v17 = 1), v17))
  {
    __break(1u);
  }

  else
  {
    v19 = a5;
    v20 = result;
    if (a2 >= result)
    {
      v21 = result;
    }

    else
    {
      v21 = a2;
    }

    if (v21)
    {
      v60 = a11 + v14;
      v56 = a3;
      v55 = a6;
      v54 = result;
      v53 = a8;
      if (v21 < 33)
      {
        v22 = 0;
        v23 = 32;
      }

      else if (v21 < 0x41 || v15 >= 32 * a2)
      {
        v23 = 32;
        v22 = 64;
      }

      else
      {
        v22 = 64;
        v23 = v15 / a2;
      }

      v24 = 0;
      v63 = v21 - v22;
      if (v21 > v22 && v23 >= 2 && v23 < v21)
      {
        if (v63 < 1)
        {
          v24 = 0;
        }

        else
        {
          v25 = 0;
          v24 = 0;
          v26 = a4;
          v59 = a4 - 4;
          v27 = v21;
          v28 = v58;
          v57 = v21;
          do
          {
            if (v23 >= v27)
            {
              v29 = v27;
            }

            else
            {
              v29 = v23;
            }

            v30 = v21 + v25;
            if (v21 + v25 >= v23)
            {
              v31 = v23;
            }

            else
            {
              v31 = v21 + v25;
            }

            v32 = *(v59 + 4 * (v29 + v24));
            v33 = (v25 + v32);
            v34 = v33 & ~(v33 >> 31);
            if (v34 < v31)
            {
              if (v23 < v30)
              {
                v30 = v23;
              }

              bzero((v58 + 8 * (((v32 + v25) & ~((v32 + v25) >> 31)) + v24)), 8 * (v30 + ~v34) + 8);
            }

            if (v33 >= 1)
            {
              sub_236777E88(v33, v31, v26, v24, &a5[2 * v24 + 2 * v24 * v64], v64, v28, v60);
              if (v24 + v31 < a2)
              {
                clarft_NEWLAPACK();
                v21 = v57;
                clarfb_NEWLAPACK();
              }
            }

            v24 += v23;
            v28 += 8 * v23;
            v26 += 4 * v23;
            v25 -= v23;
            v27 -= v23;
          }

          while (v63 > v24);
        }
      }

      v19 = a5;
      v12 = a2;
      v20 = v54;
      if (v24 < v21)
      {
        sub_236777E88((v54 - v24), a2 - v24, a4 + 4 * v24, v24, &a5[2 * v24 + 2 * v24 * v64], v64, v58 + 8 * v24, v60);
      }

      a3 = v56;
      a6 = v55;
      a8 = v53;
    }

    LODWORD(v35) = v20 - a3;
    if (v20 >= a3)
    {
      v36 = a3;
    }

    else
    {
      v36 = v20;
    }

    if (v36 >= 1)
    {
      if (*v19 == 0.0 && v19[1] == 0.0)
      {
        return 1;
      }

      v37 = 0;
      v38 = a6 + 1;
      while (v36 - 1 != v37)
      {
        v39 = &v19[2 * v38];
        v38 += a6 + 1;
        ++v37;
        if (*v39 == 0.0 && v39[1] == 0.0)
        {
          return v37 < v36;
        }
      }
    }

    if (a7 && a3 >= 1)
    {
      v40 = 0;
      v41 = v19;
      v42 = v12;
      do
      {
        v43 = v42;
        v44 = a7;
        v45 = v41;
        if (v40 < v12)
        {
          do
          {
            v46 = *v45;
            v45 += 2;
            *v44++ = v46;
            --v43;
          }

          while (v43);
        }

        ++v40;
        v41 += 2 * a6 + 2;
        a7 += a8 + 1;
        --v42;
      }

      while (v40 != a3);
    }

    v47 = v12 - a3;
    if (v20 >= v12)
    {
      v35 = v47;
    }

    else
    {
      v35 = v35;
    }

    if (v35 >= 1)
    {
      v48 = 0;
      v50 = &v19[2 * (a3 + a3 * a6)];
      do
      {
        if (v48 < v47)
        {
          v51 = 0;
          do
          {
            *(a10 + 8 * v51) = *&v50[2 * v51];
            ++v51;
          }

          while (v48 + v51 < v47);
        }

        ++v48;
        v50 += 2 * a6 + 2;
        a10 += 8 * v12 - 8 * a3 + 8;
      }

      while (v48 != v35);
    }

    return 0;
  }

  return result;
}

uint64_t sub_23677658C(int a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a8;
  v11 = a6;
  v13 = a10;
  v44 = a3 - 1;
  if (a3 < 1)
  {
    goto LABEL_36;
  }

  v14 = 0;
  v55 = a6 + 1;
  v46 = a5 + 8 * ~a6 * a4;
  v45 = a7 - 4 * a4;
  v15 = 8 * a6;
  v52 = 8 * a6 + 8;
  v53 = a5 + 12;
  v49 = a5 + 4;
  v16 = a3;
  while (1)
  {
    v17 = (v14 + 1);
    if (v17 >= a3)
    {
      v19 = -1;
      v20 = -1.0;
    }

    else
    {
      v18 = (v53 + v52 * v14);
      v19 = -1;
      v20 = -1.0;
      v21 = v14 + 1;
      do
      {
        v22 = hypotf(*(v18 - 1), *v18);
        if (v22 > v20)
        {
          v19 = v21;
          v20 = v22;
        }

        v18 += 2;
        ++v21;
      }

      while (a3 != v21);
      if ((v19 & 0x80000000) == 0)
      {
        v23 = *(a9 + 24);
        if (v23 > v20 && v23 > hypotf(*(a5 + 8 * v55 * v14), *(a5 + 8 * v55 * v14 + 4)))
        {
          --v16;
          v11 = a6;
          sub_236778364((v14 + a4), (v16 + a4), (a4 + a1), (a4 + a2), v46, a6, v45);
          v17 = v14;
          goto LABEL_29;
        }
      }
    }

    if (v14 == v16 - 1)
    {
      v24 = (a5 + 8 * v55 * v14);
      if (*v24 == 0.0 && v24[1] == 0.0)
      {
        break;
      }
    }

    v25 = (a5 + 8 * v55 * v14);
    v26 = v10 + 16 * v14;
    if (v19 == -1)
    {
      goto LABEL_27;
    }

    v27 = hypotf(*v25, v25[1]);
    if (v27 >= (v20 * 0.64039))
    {
      goto LABEL_27;
    }

    v28 = v27;
    v29 = -1.0;
    if (v14 < v19)
    {
      v30 = (v49 + v15 * v14 + 8 * v19);
      v31 = v19 - v14;
      do
      {
        v29 = fmaxf(v29, hypotf(*(v30 - 1), *v30));
        v30 = (v30 + v15);
        --v31;
      }

      while (v31);
    }

    if (v19 + 1 < a3)
    {
      v32 = (v49 + v15 * v19 + 8 * (v19 + 1));
      v33 = v44 - v19;
      do
      {
        v29 = fmaxf(v29, hypotf(*(v32 - 1), *v32));
        v32 += 2;
        --v33;
      }

      while (v33);
    }

    v10 = a8;
    if ((v20 * (v20 * 0.64039)) <= (v28 * v29))
    {
LABEL_27:
      v35 = (a3 - v14);
      v36 = v35;
      v37 = a5 + 8 * v55 * v14;
      v11 = a6;
LABEL_28:
      sub_2367793F0(v35, v36, v37, v11, v26, a10);
      goto LABEL_29;
    }

    if (hypotf(*(a5 + 8 * v55 * v19), *(a5 + 8 * v55 * v19 + 4)) >= (v29 * 0.64039))
    {
      v38 = (v19 + a4);
      v11 = a6;
      sub_236778364((v14 + a4), v38, (a4 + a1), (a4 + a2), v46, a6, v45);
      v35 = (a3 - v14);
      v36 = v35;
      v37 = a5 + 8 * v55 * v14;
      goto LABEL_28;
    }

    v34 = (v19 + a4);
    v11 = a6;
    sub_236778364((v17 + a4), v34, (a4 + a1), (a4 + a2), v46, a6, v45);
    sub_23677BD94((a3 - v14), (a3 - v14), v25, a6, v26, a10);
    v17 = (v14 + 2);
LABEL_29:
    v14 = v17;
    if (v17 >= v16)
    {
      goto LABEL_33;
    }
  }

  v16 = v14;
  v11 = a6;
LABEL_33:
  v39 = (a3 - v16);
  v13 = a10;
  if (a3 > v16)
  {
    v40 = v10 + 16 * v16;
    v41 = (a5 + 8 * v55 * v16);
    v42 = v15 + 8;
    do
    {
      *v41 = 968164595;
      sub_2367793F0(v39, v39, v41, v11, v40, a10);
      v40 += 16;
      v41 = (v41 + v42);
      v39 = (v39 - 1);
    }

    while (v39);
  }

LABEL_36:
  sub_2367804CC((a1 - a3), a3, a5, v11, a5 + 8 * a3, v11, v10, v13);
  return a3;
}