void SparseSolve(SparseOpaqueSubfactor_Float *a1, DenseMatrix_Float *a2, char *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_23;
  }

  _SparseGetOptionsFromSymbolicFactor(v17, &a1->factor.symbolicFactorization);
  v6 = *&v17[40];
  v7 = 4;
  if (*&a2->attributes)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(&a2->rowCount + v8);
  if ((*&a2->attributes & 1) == 0)
  {
    v7 = 0;
  }

  if (v9 > 0)
  {
    v10 = *(&a2->rowCount + v7);
    factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
    v12 = a1->factor.symbolicFactorization.rowCount * factorization_low;
    v13 = a1->factor.symbolicFactorization.columnCount * factorization_low;
    if (v12 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (v12 > v13)
    {
      v13 = v12;
    }

    if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    if (v10 == v16)
    {
      _SparseSolveSubfactor_Float(a1, 0, a2, a3);
      return;
    }

    if (*&v17[40])
    {
      memset(v17, 0, sizeof(v17));
      snprintf(v17, 0x100uLL, "XB dimension (%d) must match maximum subfactor dimension (%d).\n", v10, v16);
      goto LABEL_28;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCC30();
    }

LABEL_23:
    _SparseTrap();
  }

  if (!*&v17[40])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCBEC();
    }

    goto LABEL_23;
  }

  memset(&v17[34], 0, 222);
  strcpy(v17, "XB must have non-zero dimension.\n");
LABEL_28:
  v6(v17);
}

void SparseSolve(SparseOpaqueSubfactor_Float *a1, DenseMatrix_Float *a2, DenseMatrix_Float *a3, char *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_64;
  }

  _SparseGetOptionsFromSymbolicFactor(&v30, &a1->factor.symbolicFactorization);
  reportError = v30.reportError;
  attributes = a1->attributes;
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v11 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v12 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v11 >= v12)
  {
    v13 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  }

  else
  {
    v13 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  if (*&attributes)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (*&attributes)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  rowCount = a2->rowCount;
  if (a2->columnStride < a2->rowCount)
  {
    if (v30.reportError)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC574();
    }

    goto LABEL_64;
  }

  if (a3->columnStride < a3->rowCount)
  {
    if (v30.reportError)
    {
LABEL_26:
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
LABEL_27:
      (reportError)(&v30);
      return;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

LABEL_64:
    _SparseTrap();
  }

  if (*&a2->attributes)
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
    rowCount = a2->columnCount;
  }

  if (*&a3->attributes)
  {
    v20 = 0;
  }

  else
  {
    v20 = 4;
  }

  v21 = *(&a3->rowCount + v20);
  v22 = *(&a2->rowCount + v19);
  if (*&a3->attributes)
  {
    v23 = 4;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(&a3->rowCount + v23);
  if (rowCount != v21)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
      goto LABEL_27;
    }

    v25 = v22;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    v30.control = 136316418;
    *&v30.orderMethod = "B";
    WORD2(v30.order) = 1024;
    *(&v30.order + 6) = v25;
    WORD1(v30.ignoreRowsAndColumns) = 1024;
    HIDWORD(v30.ignoreRowsAndColumns) = rowCount;
    LOWORD(v30.malloc) = 2080;
    *(&v30.malloc + 2) = "X";
    WORD1(v30.free) = 1024;
    HIDWORD(v30.free) = v24;
    LOWORD(v30.reportError) = 1024;
    *(&v30.reportError + 2) = v21;
    v26 = MEMORY[0x277D86220];
    v27 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    goto LABEL_63;
  }

  if (rowCount <= 0)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
      goto LABEL_27;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC4F0();
    }

    goto LABEL_64;
  }

  if (v22 != v17)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      v28 = "B";
LABEL_56:
      snprintf(&v30, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v28);
      goto LABEL_27;
    }

    v29 = v22;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    v30.control = 136316418;
    *&v30.orderMethod = "B";
    WORD2(v30.order) = 1024;
    *(&v30.order + 6) = v29;
    WORD1(v30.ignoreRowsAndColumns) = 1024;
    HIDWORD(v30.ignoreRowsAndColumns) = rowCount;
    LOWORD(v30.malloc) = 2080;
    *(&v30.malloc + 2) = "subfactor dimension";
    WORD1(v30.free) = 1024;
    HIDWORD(v30.free) = v16;
    LOWORD(v30.reportError) = 1024;
    *(&v30.reportError + 2) = v17;
    v26 = MEMORY[0x277D86220];
    v27 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
LABEL_63:
    _os_log_error_impl(&dword_2366B9000, v26, OS_LOG_TYPE_ERROR, v27, &v30, 0x2Eu);
    goto LABEL_64;
  }

  if (v24 != v16)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      v28 = "X";
      goto LABEL_56;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    v30.control = 136316418;
    *&v30.orderMethod = "X";
    WORD2(v30.order) = 1024;
    *(&v30.order + 6) = v24;
    WORD1(v30.ignoreRowsAndColumns) = 1024;
    HIDWORD(v30.ignoreRowsAndColumns) = rowCount;
    LOWORD(v30.malloc) = 2080;
    *(&v30.malloc + 2) = "subfactor dimension";
    WORD1(v30.free) = 1024;
    HIDWORD(v30.free) = v16;
    LOWORD(v30.reportError) = 1024;
    *(&v30.reportError + 2) = v17;
    v26 = MEMORY[0x277D86220];
    v27 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_63;
  }

  _SparseSolveSubfactor_Float(a1, a2, a3, a4);
}

uint64_t SparseSolve(SparseOpaqueSubfactor_Float *a1, DenseVector_Float a2)
{
  v2 = *&a1->factor.numericFactorization;
  v8[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v8[5] = v2;
  v3 = *&a1->workspaceRequiredPerRHS;
  v8[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v8[7] = v3;
  v4 = *&a1->factor.symbolicFactorization.status;
  v8[0] = *&a1->attributes;
  v8[1] = v4;
  v5 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v8[2] = *&a1->factor.symbolicFactorization.factorization;
  v8[3] = v5;
  v7.rowCount = a2.count;
  v7.columnCount = 1;
  v7.columnStride = a2.count;
  *&v7.attributes = 0;
  v7.data = a2.data;
  return SparseSolve(v8, &v7);
}

uint64_t SparseSolve(SparseOpaqueSubfactor_Float *a1, DenseVector_Float a2, DenseVector_Float a3)
{
  v3 = *&a1->factor.numericFactorization;
  v10[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v10[5] = v3;
  v4 = *&a1->workspaceRequiredPerRHS;
  v10[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v10[7] = v4;
  v5 = *&a1->factor.symbolicFactorization.status;
  v10[0] = *&a1->attributes;
  v10[1] = v5;
  v6 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v10[2] = *&a1->factor.symbolicFactorization.factorization;
  v10[3] = v6;
  v9.rowCount = a2.count;
  v9.columnCount = 1;
  v9.columnStride = a2.count;
  *&v9.attributes = 0;
  v9.data = a2.data;
  v8.rowCount = a3.count;
  v8.columnCount = 1;
  v8.columnStride = a3.count;
  *&v8.attributes = 0;
  v8.data = a3.data;
  return SparseSolve(v10, &v9, &v8);
}

void SparseSolve(SparseOpaqueSubfactor_Float *a1, DenseVector_Float a2, char *a3)
{
  v3 = *&a1->factor.numericFactorization;
  v8[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v8[5] = v3;
  v4 = *&a1->workspaceRequiredPerRHS;
  v8[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v8[7] = v4;
  v5 = *&a1->factor.symbolicFactorization.status;
  v8[0] = *&a1->attributes;
  v8[1] = v5;
  v6 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v8[2] = *&a1->factor.symbolicFactorization.factorization;
  v8[3] = v6;
  v7.rowCount = a2.count;
  v7.columnCount = 1;
  v7.columnStride = a2.count;
  *&v7.attributes = 0;
  v7.data = a2.data;
  SparseSolve(v8, &v7, a3);
}

void SparseSolve(SparseOpaqueSubfactor_Float *a1, DenseVector_Float a2, DenseVector_Float a3, char *a4)
{
  v4 = *&a1->factor.numericFactorization;
  v10[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v10[5] = v4;
  v5 = *&a1->workspaceRequiredPerRHS;
  v10[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v10[7] = v5;
  v6 = *&a1->factor.symbolicFactorization.status;
  v10[0] = *&a1->attributes;
  v10[1] = v6;
  v7 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v10[2] = *&a1->factor.symbolicFactorization.factorization;
  v10[3] = v7;
  v9.rowCount = a2.count;
  v9.columnCount = 1;
  v9.columnStride = a2.count;
  *&v9.attributes = 0;
  v9.data = a2.data;
  v8.rowCount = a3.count;
  v8.columnCount = 1;
  v8.columnStride = a3.count;
  *&v8.attributes = 0;
  v8.data = a3.data;
  SparseSolve(v10, &v9, &v8, a4);
}

uint64_t SparseMultiply(SparseOpaqueSubfactor_Float *a1, DenseMatrix_Float *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_25;
  }

  _SparseGetOptionsFromSymbolicFactor(v21, &a1->factor.symbolicFactorization);
  v4 = *&v21[40];
  attributes = a2->attributes;
  v6 = (*&attributes & 1) == 0;
  v7 = 4;
  if (*&attributes)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(&a2->rowCount + v8);
  if (v6)
  {
    v7 = 0;
  }

  if (v9 <= 0)
  {
    if (!*&v21[40])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCD30();
      }

      goto LABEL_25;
    }

    memset(&v21[34], 0, 222);
    strcpy(v21, "XY must have non-zero dimension.\n");
  }

  else
  {
    v10 = *(&a2->rowCount + v7);
    factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
    v12 = a1->factor.symbolicFactorization.rowCount * factorization_low;
    v13 = a1->factor.symbolicFactorization.columnCount * factorization_low;
    if (v12 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (v12 > v13)
    {
      v13 = v12;
    }

    if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    if (v10 == v16)
    {
      v17 = *&v21[32];
      v18 = (*&v21[24])(a1->workspaceRequiredPerRHS + *&a1[1].attributes * v9);
      if (v18)
      {
        v19 = v18;
        _SparseMultiplySubfactor_Float(a1, 0, a2, v18);
        return v17(v19);
      }

      if (v4)
      {
        memset(v21, 0, sizeof(v21));
        snprintf(v21, 0x100uLL, "Failed to allocate workspace of size %ld.\n");
        return v4(v21);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CBC20();
      }

LABEL_25:
      _SparseTrap();
    }

    if (!*&v21[40])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCD74();
      }

      goto LABEL_25;
    }

    memset(v21, 0, sizeof(v21));
    snprintf(v21, 0x100uLL, "XY dimension (%d) must match maximum subfactor dimension (%d).\n");
  }

  return v4(v21);
}

uint64_t SparseMultiply(SparseOpaqueSubfactor_Float *a1, DenseMatrix_Float *a2, DenseMatrix_Float *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_69;
  }

  _SparseGetOptionsFromSymbolicFactor(&v30, &a1->factor.symbolicFactorization);
  reportError = v30.reportError;
  attributes = a1->attributes;
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v9 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v10 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v9 >= v10)
  {
    v11 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  }

  else
  {
    v11 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  }

  if (v9 <= v10)
  {
    v9 = v10;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  if (*&attributes)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  if (*&attributes)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  rowCount = a2->rowCount;
  if (a2->columnStride < a2->rowCount)
  {
    if (v30.reportError)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

    goto LABEL_69;
  }

  if (a3->columnStride < a3->rowCount)
  {
    if (v30.reportError)
    {
LABEL_26:
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
      return (reportError)(&v30);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBDE4();
    }

LABEL_69:
    _SparseTrap();
  }

  if (*&a2->attributes)
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
    rowCount = a2->columnCount;
  }

  if (*&a3->attributes)
  {
    v19 = 0;
  }

  else
  {
    v19 = 4;
  }

  v20 = *(&a3->rowCount + v19);
  v21 = *(&a2->rowCount + v18);
  if (*&a3->attributes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(&a3->rowCount + v22);
  if (rowCount != v20)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "X");
      return (reportError)(&v30);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    v30.control = 136316418;
    *&v30.orderMethod = "X";
    WORD2(v30.order) = 1024;
    *(&v30.order + 6) = v21;
    WORD1(v30.ignoreRowsAndColumns) = 1024;
    HIDWORD(v30.ignoreRowsAndColumns) = rowCount;
    LOWORD(v30.malloc) = 2080;
    *(&v30.malloc + 2) = "Y";
    WORD1(v30.free) = 1024;
    HIDWORD(v30.free) = v23;
    LOWORD(v30.reportError) = 1024;
    *(&v30.reportError + 2) = v20;
    v27 = MEMORY[0x277D86220];
    v28 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    goto LABEL_66;
  }

  if (rowCount <= 0)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
      return (reportError)(&v30);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCDEC();
    }

    goto LABEL_69;
  }

  if (v21 != v14)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      v29 = "X";
LABEL_57:
      snprintf(&v30, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v29);
      return (reportError)(&v30);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    v30.control = 136316418;
    *&v30.orderMethod = "X";
    WORD2(v30.order) = 1024;
    *(&v30.order + 6) = v21;
    WORD1(v30.ignoreRowsAndColumns) = 1024;
    HIDWORD(v30.ignoreRowsAndColumns) = rowCount;
    LOWORD(v30.malloc) = 2080;
    *(&v30.malloc + 2) = "subfactor dimension";
    WORD1(v30.free) = 1024;
    HIDWORD(v30.free) = v15;
    LOWORD(v30.reportError) = 1024;
    *(&v30.reportError + 2) = v14;
    v27 = MEMORY[0x277D86220];
    v28 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
LABEL_66:
    _os_log_error_impl(&dword_2366B9000, v27, OS_LOG_TYPE_ERROR, v28, &v30, 0x2Eu);
    goto LABEL_69;
  }

  if (v23 != v15)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      v29 = "Y";
      goto LABEL_57;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    v30.control = 136316418;
    *&v30.orderMethod = "Y";
    WORD2(v30.order) = 1024;
    *(&v30.order + 6) = v23;
    WORD1(v30.ignoreRowsAndColumns) = 1024;
    HIDWORD(v30.ignoreRowsAndColumns) = rowCount;
    LOWORD(v30.malloc) = 2080;
    *(&v30.malloc + 2) = "subfactor dimension";
    WORD1(v30.free) = 1024;
    HIDWORD(v30.free) = v15;
    LOWORD(v30.reportError) = 1024;
    *(&v30.reportError + 2) = v14;
    v27 = MEMORY[0x277D86220];
    v28 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_66;
  }

  free = v30.free;
  v25 = (v30.malloc)(a1->workspaceRequiredPerRHS + *&a1[1].attributes * rowCount);
  if (!v25)
  {
    if (reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "Failed to allocate workspace of size %ld.\n");
      return (reportError)(&v30);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBC20();
    }

    goto LABEL_69;
  }

  v26 = v25;
  _SparseMultiplySubfactor_Float(a1, a2, a3, v25);
  return (free)(v26);
}

void SparseMultiply(SparseOpaqueSubfactor_Float *a1, DenseMatrix_Float *a2, char *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_23;
  }

  _SparseGetOptionsFromSymbolicFactor(v17, &a1->factor.symbolicFactorization);
  v6 = *&v17[40];
  v7 = 4;
  if (*&a2->attributes)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(&a2->rowCount + v8);
  if ((*&a2->attributes & 1) == 0)
  {
    v7 = 0;
  }

  if (v9 > 0)
  {
    v10 = *(&a2->rowCount + v7);
    factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
    v12 = a1->factor.symbolicFactorization.rowCount * factorization_low;
    v13 = a1->factor.symbolicFactorization.columnCount * factorization_low;
    if (v12 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (v12 > v13)
    {
      v13 = v12;
    }

    if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    if (v10 == v16)
    {
      _SparseMultiplySubfactor_Float(a1, 0, a2, a3);
      return;
    }

    if (*&v17[40])
    {
      memset(v17, 0, sizeof(v17));
      snprintf(v17, 0x100uLL, "XY dimension (%d) must match maximum subfactor dimension (%d).\n", v10, v16);
      goto LABEL_28;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCD74();
    }

LABEL_23:
    _SparseTrap();
  }

  if (!*&v17[40])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCD30();
    }

    goto LABEL_23;
  }

  memset(&v17[34], 0, 222);
  strcpy(v17, "XY must have non-zero dimension.\n");
LABEL_28:
  v6(v17);
}

void SparseMultiply(SparseOpaqueSubfactor_Float *a1, DenseMatrix_Float *a2, DenseMatrix_Float *a3, char *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_64;
  }

  _SparseGetOptionsFromSymbolicFactor(&v30, &a1->factor.symbolicFactorization);
  reportError = v30.reportError;
  attributes = a1->attributes;
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v11 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v12 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v11 >= v12)
  {
    v13 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  }

  else
  {
    v13 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  if (*&attributes)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (*&attributes)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  rowCount = a3->rowCount;
  if (a3->columnStride < a3->rowCount)
  {
    if (v30.reportError)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBDE4();
    }

    goto LABEL_64;
  }

  if (a2->columnStride < a2->rowCount)
  {
    if (v30.reportError)
    {
LABEL_26:
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
LABEL_27:
      (reportError)(&v30);
      return;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

LABEL_64:
    _SparseTrap();
  }

  if (*&a3->attributes)
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
    rowCount = a3->columnCount;
  }

  if (*&a2->attributes)
  {
    v20 = 0;
  }

  else
  {
    v20 = 4;
  }

  v21 = *(&a2->rowCount + v20);
  v22 = *(&a3->rowCount + v19);
  if (*&a2->attributes)
  {
    v23 = 4;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(&a2->rowCount + v23);
  if (rowCount != v21)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "Y");
      goto LABEL_27;
    }

    v25 = v22;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    v30.control = 136316418;
    *&v30.orderMethod = "Y";
    WORD2(v30.order) = 1024;
    *(&v30.order + 6) = v25;
    WORD1(v30.ignoreRowsAndColumns) = 1024;
    HIDWORD(v30.ignoreRowsAndColumns) = rowCount;
    LOWORD(v30.malloc) = 2080;
    *(&v30.malloc + 2) = "X";
    WORD1(v30.free) = 1024;
    HIDWORD(v30.free) = v24;
    LOWORD(v30.reportError) = 1024;
    *(&v30.reportError + 2) = v21;
    v26 = MEMORY[0x277D86220];
    v27 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    goto LABEL_63;
  }

  if (rowCount <= 0)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
      goto LABEL_27;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBCDC();
    }

    goto LABEL_64;
  }

  if (v22 != v17)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      v28 = "Y";
LABEL_56:
      snprintf(&v30, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v28);
      goto LABEL_27;
    }

    v29 = v22;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    v30.control = 136316418;
    *&v30.orderMethod = "Y";
    WORD2(v30.order) = 1024;
    *(&v30.order + 6) = v29;
    WORD1(v30.ignoreRowsAndColumns) = 1024;
    HIDWORD(v30.ignoreRowsAndColumns) = rowCount;
    LOWORD(v30.malloc) = 2080;
    *(&v30.malloc + 2) = "subfactor dimension";
    WORD1(v30.free) = 1024;
    HIDWORD(v30.free) = v16;
    LOWORD(v30.reportError) = 1024;
    *(&v30.reportError + 2) = v17;
    v26 = MEMORY[0x277D86220];
    v27 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
LABEL_63:
    _os_log_error_impl(&dword_2366B9000, v26, OS_LOG_TYPE_ERROR, v27, &v30, 0x2Eu);
    goto LABEL_64;
  }

  if (v24 != v16)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      v28 = "X";
      goto LABEL_56;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    v30.control = 136316418;
    *&v30.orderMethod = "X";
    WORD2(v30.order) = 1024;
    *(&v30.order + 6) = v24;
    WORD1(v30.ignoreRowsAndColumns) = 1024;
    HIDWORD(v30.ignoreRowsAndColumns) = rowCount;
    LOWORD(v30.malloc) = 2080;
    *(&v30.malloc + 2) = "subfactor dimension";
    WORD1(v30.free) = 1024;
    HIDWORD(v30.free) = v16;
    LOWORD(v30.reportError) = 1024;
    *(&v30.reportError + 2) = v17;
    v26 = MEMORY[0x277D86220];
    v27 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_63;
  }

  _SparseMultiplySubfactor_Float(a1, a2, a3, a4);
}

uint64_t SparseMultiply(SparseOpaqueSubfactor_Float *a1, DenseVector_Float a2)
{
  v2 = *&a1->factor.numericFactorization;
  v8[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v8[5] = v2;
  v3 = *&a1->workspaceRequiredPerRHS;
  v8[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v8[7] = v3;
  v4 = *&a1->factor.symbolicFactorization.status;
  v8[0] = *&a1->attributes;
  v8[1] = v4;
  v5 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v8[2] = *&a1->factor.symbolicFactorization.factorization;
  v8[3] = v5;
  v7.rowCount = a2.count;
  v7.columnCount = 1;
  v7.columnStride = a2.count;
  *&v7.attributes = 0;
  v7.data = a2.data;
  return SparseMultiply(v8, &v7);
}

uint64_t SparseMultiply(SparseOpaqueSubfactor_Float *a1, DenseVector_Float a2, DenseVector_Float a3)
{
  v3 = *&a1->factor.numericFactorization;
  v10[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v10[5] = v3;
  v4 = *&a1->workspaceRequiredPerRHS;
  v10[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v10[7] = v4;
  v5 = *&a1->factor.symbolicFactorization.status;
  v10[0] = *&a1->attributes;
  v10[1] = v5;
  v6 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v10[2] = *&a1->factor.symbolicFactorization.factorization;
  v10[3] = v6;
  v9.rowCount = a2.count;
  v9.columnCount = 1;
  v9.columnStride = a2.count;
  *&v9.attributes = 0;
  v9.data = a2.data;
  v8.rowCount = a3.count;
  v8.columnCount = 1;
  v8.columnStride = a3.count;
  *&v8.attributes = 0;
  v8.data = a3.data;
  return SparseMultiply(v10, &v9, &v8);
}

void SparseMultiply(SparseOpaqueSubfactor_Float *a1, DenseVector_Float a2, char *a3)
{
  v3 = *&a1->factor.numericFactorization;
  v8[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v8[5] = v3;
  v4 = *&a1->workspaceRequiredPerRHS;
  v8[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v8[7] = v4;
  v5 = *&a1->factor.symbolicFactorization.status;
  v8[0] = *&a1->attributes;
  v8[1] = v5;
  v6 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v8[2] = *&a1->factor.symbolicFactorization.factorization;
  v8[3] = v6;
  v7.rowCount = a2.count;
  v7.columnCount = 1;
  v7.columnStride = a2.count;
  *&v7.attributes = 0;
  v7.data = a2.data;
  SparseMultiply(v8, &v7, a3);
}

void SparseMultiply(SparseOpaqueSubfactor_Float *a1, DenseVector_Float a2, DenseVector_Float a3, char *a4)
{
  v4 = *&a1->factor.numericFactorization;
  v10[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v10[5] = v4;
  v5 = *&a1->workspaceRequiredPerRHS;
  v10[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v10[7] = v5;
  v6 = *&a1->factor.symbolicFactorization.status;
  v10[0] = *&a1->attributes;
  v10[1] = v6;
  v7 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v10[2] = *&a1->factor.symbolicFactorization.factorization;
  v10[3] = v7;
  v9.rowCount = a2.count;
  v9.columnCount = 1;
  v9.columnStride = a2.count;
  *&v9.attributes = 0;
  v9.data = a2.data;
  v8.rowCount = a3.count;
  v8.columnCount = 1;
  v8.columnStride = a3.count;
  *&v8.attributes = 0;
  v8.data = a3.data;
  SparseMultiply(v10, &v9, &v8, a4);
}

SparseOpaquePreconditioner_Float *SparseCreatePreconditioner@<X0>(SparseMatrix_Float *a1@<X1>, SparsePreconditioner_t a2@<W0>, SparseOpaquePreconditioner_Float *a3@<X8>)
{
  v4 = *(&a1->structure.blockSize + 2);
  v5 = 4;
  if (*&a1->structure.attributes)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (*&a1->structure.attributes)
  {
    v5 = 0;
  }

  if (*(&a1->structure.rowCount + v6) * v4 < 1 || *(&a1->structure.rowCount + v5) * v4 <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCE70();
    }

    _SparseTrap();
  }

  return _SparseCreatePreconditioner_Float(a3, a2, a1);
}

uint64_t SparseSolve(SparseIterativeMethod *a1, SparseMatrix_Float *a2, DenseMatrix_Float *a3, DenseMatrix_Float *X)
{
  v59 = *MEMORY[0x277D85DE8];
  reportError = a1->options.base.reportError;
  p_options = &a1->options;
  v6 = reportError;
  v8 = *(&a2->structure.blockSize + 2);
  v9 = 4;
  if (*&a2->structure.attributes)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(&a2->structure.rowCount + v10) * v8;
  if (*&a2->structure.attributes)
  {
    v9 = 0;
  }

  v12 = *(&a2->structure.rowCount + v9) * v8;
  if (v11 < 1 || v12 <= 0)
  {
    if (!v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCE70();
      }

LABEL_57:
      _SparseTrap();
    }

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
    v45 = 0u;
    v46 = 0u;
    buf = 0u;
    v44 = 0u;
    snprintf(&buf, 0x100uLL, "Bad matrix dimensions %dx%d\n", X);
    goto LABEL_54;
  }

  v14 = 4;
  if (*&X->attributes)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(&X->rowCount + v15);
  if (*&X->attributes)
  {
    v17 = 0;
  }

  else
  {
    v17 = 4;
  }

  v18 = *(&X->rowCount + v17);
  attributes = a3->attributes;
  v20 = (*&attributes & 1) == 0;
  if (*&attributes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(&a3->rowCount + v21);
  if (!v20)
  {
    v14 = 0;
  }

  v23 = *(&a3->rowCount + v14);
  if (v18 != v23)
  {
    if (v6)
    {
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
      v45 = 0u;
      v46 = 0u;
      buf = 0u;
      v44 = 0u;
      snprintf(&buf, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", X);
      goto LABEL_54;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *&buf = __PAIR64__(v16, 67109888);
    WORD4(buf) = 1024;
    *(&buf + 10) = v18;
    HIWORD(buf) = 1024;
    LODWORD(v44) = v22;
    WORD2(v44) = 1024;
    *(&v44 + 6) = v23;
    v27 = MEMORY[0x277D86220];
    v28 = "Dimensions of X (%dx%d) and B (%dx%d) do not match.";
LABEL_45:
    _os_log_error_impl(&dword_2366B9000, v27, OS_LOG_TYPE_ERROR, v28, &buf, 0x1Au);
    goto LABEL_57;
  }

  if (v16 != v12)
  {
    if (v6)
    {
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
      v45 = 0u;
      v46 = 0u;
      buf = 0u;
      v44 = 0u;
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.", X);
      goto LABEL_54;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *&buf = __PAIR64__(v11, 67109888);
    WORD4(buf) = 1024;
    *(&buf + 10) = v12;
    HIWORD(buf) = 1024;
    LODWORD(v44) = v16;
    WORD2(v44) = 1024;
    *(&v44 + 6) = v18;
    v27 = MEMORY[0x277D86220];
    v28 = "Dimensions of A (%dx%d) and X (%dx%d) do not match.";
    goto LABEL_45;
  }

  if (v22 != v11)
  {
    if (v6)
    {
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
      v45 = 0u;
      v46 = 0u;
      buf = 0u;
      v44 = 0u;
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.", X);
      goto LABEL_54;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *&buf = __PAIR64__(v11, 67109888);
    WORD4(buf) = 1024;
    *(&buf + 10) = v12;
    HIWORD(buf) = 1024;
    LODWORD(v44) = v22;
    WORD2(v44) = 1024;
    *(&v44 + 6) = v18;
    v27 = MEMORY[0x277D86220];
    v28 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
    goto LABEL_45;
  }

  method = a1->method;
  if (method == 2)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 0x40000000;
    v31[2] = sub_2367B5A70;
    v31[3] = &unk_278A007A0;
    v29 = *&a2->structure.rowIndices;
    v32 = *&a2->structure.rowCount;
    v33 = v29;
    data = a2->data;
    return _SparseLSMRSolve_Float(p_options, X, a3, v31, 0);
  }

  if (method == 1)
  {
    if (v12 == v11)
    {
      ApplyOperator[0] = MEMORY[0x277D85DD0];
      ApplyOperator[1] = 0x40000000;
      ApplyOperator[2] = sub_2367B59C4;
      ApplyOperator[3] = &unk_278A00780;
      v25 = *&a2->structure.rowIndices;
      v36 = *&a2->structure.rowCount;
      v37 = v25;
      v38 = a2->data;
      return _SparseGMRESSolve_Float(p_options, X, a3, ApplyOperator, 0);
    }

    if (!v6)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

LABEL_56:
      sub_2367CCEE8();
      goto LABEL_57;
    }
  }

  else
  {
    if (v12 == v11)
    {
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 0x40000000;
      v39[2] = sub_2367B5918;
      v39[3] = &unk_278A00760;
      v30 = *&a2->structure.rowIndices;
      v40 = *&a2->structure.rowCount;
      v41 = v30;
      v42 = a2->data;
      return _SparseCGSolve_Float(p_options, X, a3, v39, 0);
    }

    if (!v6)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }
  }

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
  v45 = 0u;
  v46 = 0u;
  buf = 0u;
  v44 = 0u;
  snprintf(&buf, 0x100uLL, "Counts of X (%d) and B (%d) do not match.", X);
LABEL_54:
  (v6)(&buf);
  return 0xFFFFFFFFLL;
}

void sub_2367B5918(uint64_t a1, int a2, uint64_t a3, DenseMatrix_Float *a4, DenseMatrix_Float *a5)
{
  v5 = *(a1 + 48);
  *&v8.structure.rowCount = *(a1 + 32);
  *&v8.structure.rowIndices = v5;
  v8.data = *(a1 + 64);
  v7 = *a4;
  v6 = *a5;
  if (a2)
  {
    SparseMultiplyAdd(1.0, &v8, &v7, &v6);
  }

  else
  {
    SparseMultiply(1.0, &v8, &v7, &v6);
  }
}

void sub_2367B59C4(uint64_t a1, int a2, uint64_t a3, DenseMatrix_Float *a4, DenseMatrix_Float *a5)
{
  v5 = *(a1 + 48);
  *&v8.structure.rowCount = *(a1 + 32);
  *&v8.structure.rowIndices = v5;
  v8.data = *(a1 + 64);
  v7 = *a4;
  v6 = *a5;
  if (a2)
  {
    SparseMultiplyAdd(1.0, &v8, &v7, &v6);
  }

  else
  {
    SparseMultiply(1.0, &v8, &v7, &v6);
  }
}

void sub_2367B5A70(uint64_t a1, int a2, int a3, DenseMatrix_Float *a4, DenseMatrix_Float *a5)
{
  if (a2)
  {
    if (a3 == 111)
    {
      v5 = *(a1 + 48);
      *&v11.structure.rowCount = *(a1 + 32);
      *&v11.structure.rowIndices = v5;
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
    }

    else
    {
      *&v11.structure.rowCount = *(a1 + 32);
      v11.structure.rowIndices = *(a1 + 48);
      v7 = *(a1 + 56);
      *&v11.structure.blockSize = *(a1 + 58);
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
      v11.structure.attributes = (v7 & 0xFFFE | ((v7 & 1) == 0));
    }

    SparseMultiplyAdd(1.0, &v11, &v10, &v9);
  }

  else
  {
    if (a3 == 111)
    {
      v6 = *(a1 + 48);
      *&v11.structure.rowCount = *(a1 + 32);
      *&v11.structure.rowIndices = v6;
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
    }

    else
    {
      *&v11.structure.rowCount = *(a1 + 32);
      v11.structure.rowIndices = *(a1 + 48);
      v8 = *(a1 + 56);
      *&v11.structure.blockSize = *(a1 + 58);
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
      v11.structure.attributes = (v8 & 0xFFFE | ((v8 & 1) == 0));
    }

    SparseMultiply(1.0, &v11, &v10, &v9);
  }
}

uint64_t SparseSolve(SparseIterativeMethod *__src, SparseMatrix_Float *a2, DenseVector_Float a3, DenseVector_Float a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v9.rowCount = a3.count;
  v9.columnCount = 1;
  v9.columnStride = a3.count;
  *&v9.attributes = 0;
  v9.data = a3.data;
  X.rowCount = a4.count;
  X.columnCount = 1;
  X.columnStride = a4.count;
  *&X.attributes = 0;
  X.data = a4.data;
  memcpy(&__dst, __src, sizeof(__dst));
  v5 = *&a2->structure.rowIndices;
  *&v7.structure.rowCount = *&a2->structure.rowCount;
  *&v7.structure.rowIndices = v5;
  v7.data = a2->data;
  return SparseSolve(&__dst, &v7, &v9, &X);
}

{
  v11 = *MEMORY[0x277D85DE8];
  v9.rowCount = a3.count;
  v9.columnCount = 1;
  v9.columnStride = a3.count;
  *&v9.attributes = 0;
  v9.data = a3.data;
  X.rowCount = a4.count;
  X.columnCount = 1;
  X.columnStride = a4.count;
  *&X.attributes = 0;
  X.data = a4.data;
  memcpy(&__dst, __src, sizeof(__dst));
  v5 = *&a2->structure.rowIndices;
  *&v7.structure.rowCount = *&a2->structure.rowCount;
  *&v7.structure.rowIndices = v5;
  v7.data = a2->data;
  return SparseSolve(&__dst, &v7, &v9, &X);
}

uint64_t SparseSolve(int *a1, void *ApplyOperator, uint64_t a3, DenseMatrix_Float *X)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 1);
  v5 = (a1 + 2);
  v6 = v7;
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
    v11 = 0;
  }

  else
  {
    v11 = 4;
  }

  v12 = *(&X->rowCount + v11);
  v13 = *(a3 + 12);
  v14 = (v13 & 1) == 0;
  if (v13)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  if (!v14)
  {
    v8 = 0;
  }

  if (v10 < 1 || v12 <= 0)
  {
    if (!v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCF60();
      }

      goto LABEL_41;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *__str = 0u;
    v23 = 0u;
    snprintf(__str, 0x100uLL, "Bad dimensions for X (%dx%d)\n");
LABEL_54:
    v6(__str);
    return 0xFFFFFFFFLL;
  }

  v17 = *(a3 + v15);
  v18 = *(a3 + v8);
  if (v17 < 1 || v18 <= 0)
  {
    if (!v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCFD8();
      }

      goto LABEL_41;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *__str = 0u;
    v23 = 0u;
    snprintf(__str, 0x100uLL, "Bad dimensions for B (%dx%d)\n");
    goto LABEL_54;
  }

  if (v12 != v18)
  {
    if (v6)
    {
      goto LABEL_53;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *__str = 67109888;
      *&__str[4] = v10;
      *&__str[8] = 1024;
      *&__str[10] = v12;
      *&__str[14] = 1024;
      LODWORD(v23) = v17;
      WORD2(v23) = 1024;
      *(&v23 + 6) = v18;
      _os_log_error_impl(&dword_2366B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", __str, 0x1Au);
    }

    goto LABEL_41;
  }

  v20 = *a1;
  if (v20 != 2)
  {
    if (v20 == 1)
    {
      if (v10 == v17)
      {

        return _SparseGMRESSolve_Float(v5, X, a3, ApplyOperator, 0);
      }

      if (!v6)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        goto LABEL_51;
      }

      goto LABEL_53;
    }

    if (v10 == v17)
    {

      return _SparseCGSolve_Float(v5, X, a3, ApplyOperator, 0);
    }

    if (v6)
    {
LABEL_53:
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      *__str = 0u;
      v23 = 0u;
      snprintf(__str, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.");
      goto LABEL_54;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_51:
      sub_2367CD050();
    }

LABEL_41:
    _SparseTrap();
  }

  return _SparseLSMRSolve_Float(v5, X, a3, ApplyOperator, 0);
}

uint64_t SparseSolve(int *a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, float *a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 1);
  v7 = (a1 + 2);
  v8 = v9;
  if (a5 <= 0)
  {
    if (v8)
    {
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
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      __str = 0u;
      v18 = 0u;
      snprintf(&__str, 0x100uLL, "Bad dimension for x (%dx%d)\n", a4);
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD0C0();
    }

LABEL_26:
    _SparseTrap();
  }

  if (a3 <= 0)
  {
    if (v8)
    {
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
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      __str = 0u;
      v18 = 0u;
      snprintf(&__str, 0x100uLL, "Bad dimensions for b (%dx%d)\n", a4);
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD138();
    }

    goto LABEL_26;
  }

  X.rowCount = a5;
  X.columnCount = 1;
  X.columnStride = a5;
  *&X.attributes = 0;
  X.data = a6;
  B.rowCount = a3;
  B.columnCount = 1;
  B.columnStride = a3;
  *&B.attributes = 0;
  B.data = a4;
  v10 = *a1;
  if (v10 == 2)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = sub_2367B63C0;
    v12[3] = &unk_278A00818;
    v12[4] = a2;
    return _SparseLSMRSolve_Float(v7, &X, &B, v12, 0);
  }

  if (v10 == 1)
  {
    if (a5 == a3)
    {
      ApplyOperator[0] = MEMORY[0x277D85DD0];
      ApplyOperator[1] = 0x40000000;
      ApplyOperator[2] = sub_2367B6398;
      ApplyOperator[3] = &unk_278A007F0;
      ApplyOperator[4] = a2;
      return _SparseGMRESSolve_Float(v7, &X, &B, ApplyOperator, 0);
    }

    if (!v8)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

LABEL_25:
      sub_2367CCEE8();
      goto LABEL_26;
    }
  }

  else
  {
    if (a5 == a3)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 0x40000000;
      v14[2] = sub_2367B6370;
      v14[3] = &unk_278A007C8;
      v14[4] = a2;
      return _SparseCGSolve_Float(v7, &X, &B, v14, 0);
    }

    if (!v8)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

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
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  __str = 0u;
  v18 = 0u;
  snprintf(&__str, 0x100uLL, "Counts of X (%d) and B (%d) do not match.", a4);
LABEL_23:
  v8(&__str);
  return 0xFFFFFFFFLL;
}

uint64_t SparseSolve(SparseIterativeMethod *a1, SparseMatrix_Float *a2, DenseMatrix_Float *a3, DenseMatrix_Float *a4, uint64_t type)
{
  v62 = *MEMORY[0x277D85DE8];
  p_options = &a1->options;
  reportError = a1->options.base.reportError;
  v7 = *(&a2->structure.blockSize + 2);
  v8 = 4;
  if (*&a2->structure.attributes)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(&a2->structure.rowCount + v9) * v7;
  if (*&a2->structure.attributes)
  {
    v8 = 0;
  }

  v11 = *(&a2->structure.rowCount + v8) * v7;
  if (v10 < 1 || v11 <= 0)
  {
    if (!reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCE70();
      }

      goto LABEL_53;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    memset(Preconditioner, 0, sizeof(Preconditioner));
    snprintf(Preconditioner, 0x100uLL, "Bad matrix dimensions %dx%d\n", a4, type);
    goto LABEL_42;
  }

  v15 = 4;
  if (*&a4->attributes)
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(&a4->rowCount + v16);
  if (*&a4->attributes)
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v19 = *(&a4->rowCount + v18);
  attributes = a3->attributes;
  v21 = (*&attributes & 1) == 0;
  if (*&attributes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(&a3->rowCount + v22);
  if (!v21)
  {
    v15 = 0;
  }

  v24 = *(&a3->rowCount + v15);
  if (v19 != v24)
  {
    if (!reportError)
    {
      v29 = v23;
      v30 = v17;
      v31 = v19;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      Preconditioner[0].type = 67109888;
      *(&Preconditioner[0].type + 1) = v30;
      LOWORD(Preconditioner[0].mem) = 1024;
      *(&Preconditioner[0].mem + 2) = v31;
      HIWORD(Preconditioner[0].mem) = 1024;
      LODWORD(Preconditioner[0].apply) = v29;
      WORD2(Preconditioner[0].apply) = 1024;
      *(&Preconditioner[0].apply + 6) = v24;
      v32 = MEMORY[0x277D86220];
      v33 = "Dimensions of X (%dx%d) and B (%dx%d) do not match.";
      goto LABEL_49;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    memset(Preconditioner, 0, sizeof(Preconditioner));
    snprintf(Preconditioner, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", a4, type);
LABEL_42:
    (reportError)(Preconditioner);
    return 0xFFFFFFFFLL;
  }

  if (v17 != v11)
  {
    if (!reportError)
    {
      v34 = v17;
      v35 = v19;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      Preconditioner[0].type = 67109888;
      *(&Preconditioner[0].type + 1) = v10;
      LOWORD(Preconditioner[0].mem) = 1024;
      *(&Preconditioner[0].mem + 2) = v11;
      HIWORD(Preconditioner[0].mem) = 1024;
      LODWORD(Preconditioner[0].apply) = v34;
      WORD2(Preconditioner[0].apply) = 1024;
      *(&Preconditioner[0].apply + 6) = v35;
      v32 = MEMORY[0x277D86220];
      v33 = "Dimensions of A (%dx%d) and X (%dx%d) do not match.";
      goto LABEL_49;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    memset(Preconditioner, 0, sizeof(Preconditioner));
    snprintf(Preconditioner, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.", a4, type);
    goto LABEL_42;
  }

  if (v23 != v10)
  {
    if (reportError)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      memset(Preconditioner, 0, sizeof(Preconditioner));
      snprintf(Preconditioner, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.", a4, type);
      goto LABEL_42;
    }

    v36 = v23;
    v37 = v19;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    Preconditioner[0].type = 67109888;
    *(&Preconditioner[0].type + 1) = v10;
    LOWORD(Preconditioner[0].mem) = 1024;
    *(&Preconditioner[0].mem + 2) = v11;
    HIWORD(Preconditioner[0].mem) = 1024;
    LODWORD(Preconditioner[0].apply) = v36;
    WORD2(Preconditioner[0].apply) = 1024;
    *(&Preconditioner[0].apply + 6) = v37;
    v32 = MEMORY[0x277D86220];
    v33 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
LABEL_49:
    _os_log_error_impl(&dword_2366B9000, v32, OS_LOG_TYPE_ERROR, v33, Preconditioner, 0x1Au);
    goto LABEL_53;
  }

  if (type <= 1)
  {
    if (reportError)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      strcpy(Preconditioner, "Invalid preconditioner type for this call: for no preconditioner, omit the parameter. User-supplied preconditioners must supply apply() method.");
      goto LABEL_42;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD1B0();
    }

LABEL_53:
    _SparseTrap();
  }

  memset(Preconditioner, 0, 24);
  _SparseCreatePreconditioner_Float(Preconditioner, type, a2);
  if (Preconditioner[0].type == SparsePreconditionerNone)
  {
    return 4294967197;
  }

  if (a1->method == 2)
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 0x40000000;
    v42[2] = sub_2367B6AB8;
    v42[3] = &unk_278A00878;
    v40 = *&a2->structure.rowIndices;
    v43 = *&a2->structure.rowCount;
    v44 = v40;
    data = a2->data;
    v28 = _SparseLSMRSolve_Float(p_options, a4, a3, v42, Preconditioner);
  }

  else if (a1->method == 1)
  {
    ApplyOperator[0] = MEMORY[0x277D85DD0];
    ApplyOperator[1] = 0x40000000;
    ApplyOperator[2] = sub_2367B6A0C;
    ApplyOperator[3] = &unk_278A00858;
    v27 = *&a2->structure.rowIndices;
    v47 = *&a2->structure.rowCount;
    v48 = v27;
    v49 = a2->data;
    v28 = _SparseGMRESSolve_Float(p_options, a4, a3, ApplyOperator, Preconditioner);
  }

  else
  {
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 0x40000000;
    v50[2] = sub_2367B6960;
    v50[3] = &unk_278A00838;
    v41 = *&a2->structure.rowIndices;
    v51 = *&a2->structure.rowCount;
    v52 = v41;
    v53 = a2->data;
    v28 = _SparseCGSolve_Float(p_options, a4, a3, v50, Preconditioner);
  }

  v38 = v28;
  _SparseReleaseOpaquePreconditioner_Float(Preconditioner);
  return v38;
}

void sub_2367B6960(uint64_t a1, int a2, uint64_t a3, DenseMatrix_Float *a4, DenseMatrix_Float *a5)
{
  v5 = *(a1 + 48);
  *&v8.structure.rowCount = *(a1 + 32);
  *&v8.structure.rowIndices = v5;
  v8.data = *(a1 + 64);
  v7 = *a4;
  v6 = *a5;
  if (a2)
  {
    SparseMultiplyAdd(1.0, &v8, &v7, &v6);
  }

  else
  {
    SparseMultiply(1.0, &v8, &v7, &v6);
  }
}

void sub_2367B6A0C(uint64_t a1, int a2, uint64_t a3, DenseMatrix_Float *a4, DenseMatrix_Float *a5)
{
  v5 = *(a1 + 48);
  *&v8.structure.rowCount = *(a1 + 32);
  *&v8.structure.rowIndices = v5;
  v8.data = *(a1 + 64);
  v7 = *a4;
  v6 = *a5;
  if (a2)
  {
    SparseMultiplyAdd(1.0, &v8, &v7, &v6);
  }

  else
  {
    SparseMultiply(1.0, &v8, &v7, &v6);
  }
}

void sub_2367B6AB8(uint64_t a1, int a2, int a3, DenseMatrix_Float *a4, DenseMatrix_Float *a5)
{
  if (a2)
  {
    if (a3 == 111)
    {
      v5 = *(a1 + 48);
      *&v11.structure.rowCount = *(a1 + 32);
      *&v11.structure.rowIndices = v5;
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
    }

    else
    {
      *&v11.structure.rowCount = *(a1 + 32);
      v11.structure.rowIndices = *(a1 + 48);
      v7 = *(a1 + 56);
      *&v11.structure.blockSize = *(a1 + 58);
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
      v11.structure.attributes = (v7 & 0xFFFE | ((v7 & 1) == 0));
    }

    SparseMultiplyAdd(1.0, &v11, &v10, &v9);
  }

  else
  {
    if (a3 == 111)
    {
      v6 = *(a1 + 48);
      *&v11.structure.rowCount = *(a1 + 32);
      *&v11.structure.rowIndices = v6;
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
    }

    else
    {
      *&v11.structure.rowCount = *(a1 + 32);
      v11.structure.rowIndices = *(a1 + 48);
      v8 = *(a1 + 56);
      *&v11.structure.blockSize = *(a1 + 58);
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
      v11.structure.attributes = (v8 & 0xFFFE | ((v8 & 1) == 0));
    }

    SparseMultiply(1.0, &v11, &v10, &v9);
  }
}

uint64_t SparseSolve(SparseIterativeMethod *a1, SparseMatrix_Float *a2, DenseMatrix_Float *a3, DenseMatrix_Float *X, SparseOpaquePreconditioner_Float *a5)
{
  v60 = *MEMORY[0x277D85DE8];
  reportError = a1->options.base.reportError;
  p_options = &a1->options;
  v7 = reportError;
  v9 = *(&a2->structure.blockSize + 2);
  v10 = 4;
  if (*&a2->structure.attributes)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(&a2->structure.rowCount + v11) * v9;
  if (*&a2->structure.attributes)
  {
    v10 = 0;
  }

  v13 = *(&a2->structure.rowCount + v10) * v9;
  if (v12 < 1 || v13 <= 0)
  {
    if (!v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCE70();
      }

LABEL_57:
      _SparseTrap();
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    buf = 0u;
    v45 = 0u;
    snprintf(&buf, 0x100uLL, "Bad matrix dimensions %dx%d\n", X, a5);
    goto LABEL_54;
  }

  v15 = 4;
  if (*&X->attributes)
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(&X->rowCount + v16);
  if (*&X->attributes)
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v19 = *(&X->rowCount + v18);
  attributes = a3->attributes;
  v21 = (*&attributes & 1) == 0;
  if (*&attributes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(&a3->rowCount + v22);
  if (!v21)
  {
    v15 = 0;
  }

  v24 = *(&a3->rowCount + v15);
  if (v19 != v24)
  {
    if (v7)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      buf = 0u;
      v45 = 0u;
      snprintf(&buf, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", X, a5);
      goto LABEL_54;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *&buf = __PAIR64__(v17, 67109888);
    WORD4(buf) = 1024;
    *(&buf + 10) = v19;
    HIWORD(buf) = 1024;
    LODWORD(v45) = v23;
    WORD2(v45) = 1024;
    *(&v45 + 6) = v24;
    v28 = MEMORY[0x277D86220];
    v29 = "Dimensions of X (%dx%d) and B (%dx%d) do not match.";
LABEL_45:
    _os_log_error_impl(&dword_2366B9000, v28, OS_LOG_TYPE_ERROR, v29, &buf, 0x1Au);
    goto LABEL_57;
  }

  if (v17 != v13)
  {
    if (v7)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      buf = 0u;
      v45 = 0u;
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.", X, a5);
      goto LABEL_54;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *&buf = __PAIR64__(v12, 67109888);
    WORD4(buf) = 1024;
    *(&buf + 10) = v13;
    HIWORD(buf) = 1024;
    LODWORD(v45) = v17;
    WORD2(v45) = 1024;
    *(&v45 + 6) = v19;
    v28 = MEMORY[0x277D86220];
    v29 = "Dimensions of A (%dx%d) and X (%dx%d) do not match.";
    goto LABEL_45;
  }

  if (v23 != v12)
  {
    if (v7)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      buf = 0u;
      v45 = 0u;
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.", X, a5);
      goto LABEL_54;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *&buf = __PAIR64__(v12, 67109888);
    WORD4(buf) = 1024;
    *(&buf + 10) = v13;
    HIWORD(buf) = 1024;
    LODWORD(v45) = v23;
    WORD2(v45) = 1024;
    *(&v45 + 6) = v19;
    v28 = MEMORY[0x277D86220];
    v29 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
    goto LABEL_45;
  }

  method = a1->method;
  if (method == 2)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 0x40000000;
    v32[2] = sub_2367B7334;
    v32[3] = &unk_278A008D8;
    v30 = *&a2->structure.rowIndices;
    v33 = *&a2->structure.rowCount;
    v34 = v30;
    data = a2->data;
    return _SparseLSMRSolve_Float(p_options, X, a3, v32, a5);
  }

  if (method == 1)
  {
    if (v13 == v12)
    {
      ApplyOperator[0] = MEMORY[0x277D85DD0];
      ApplyOperator[1] = 0x40000000;
      ApplyOperator[2] = sub_2367B7288;
      ApplyOperator[3] = &unk_278A008B8;
      v26 = *&a2->structure.rowIndices;
      v37 = *&a2->structure.rowCount;
      v38 = v26;
      v39 = a2->data;
      return _SparseGMRESSolve_Float(p_options, X, a3, ApplyOperator, a5);
    }

    if (!v7)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

LABEL_56:
      sub_2367CCEE8();
      goto LABEL_57;
    }
  }

  else
  {
    if (v13 == v12)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 0x40000000;
      v40[2] = sub_2367B71DC;
      v40[3] = &unk_278A00898;
      v31 = *&a2->structure.rowIndices;
      v41 = *&a2->structure.rowCount;
      v42 = v31;
      v43 = a2->data;
      return _SparseCGSolve_Float(p_options, X, a3, v40, a5);
    }

    if (!v7)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  buf = 0u;
  v45 = 0u;
  snprintf(&buf, 0x100uLL, "Counts of X (%d) and B (%d) do not match.", X, a5);
LABEL_54:
  (v7)(&buf);
  return 0xFFFFFFFFLL;
}

void sub_2367B71DC(uint64_t a1, int a2, uint64_t a3, DenseMatrix_Float *a4, DenseMatrix_Float *a5)
{
  v5 = *(a1 + 48);
  *&v8.structure.rowCount = *(a1 + 32);
  *&v8.structure.rowIndices = v5;
  v8.data = *(a1 + 64);
  v7 = *a4;
  v6 = *a5;
  if (a2)
  {
    SparseMultiplyAdd(1.0, &v8, &v7, &v6);
  }

  else
  {
    SparseMultiply(1.0, &v8, &v7, &v6);
  }
}

void sub_2367B7288(uint64_t a1, int a2, uint64_t a3, DenseMatrix_Float *a4, DenseMatrix_Float *a5)
{
  v5 = *(a1 + 48);
  *&v8.structure.rowCount = *(a1 + 32);
  *&v8.structure.rowIndices = v5;
  v8.data = *(a1 + 64);
  v7 = *a4;
  v6 = *a5;
  if (a2)
  {
    SparseMultiplyAdd(1.0, &v8, &v7, &v6);
  }

  else
  {
    SparseMultiply(1.0, &v8, &v7, &v6);
  }
}

void sub_2367B7334(uint64_t a1, int a2, int a3, DenseMatrix_Float *a4, DenseMatrix_Float *a5)
{
  if (a2)
  {
    if (a3 == 111)
    {
      v5 = *(a1 + 48);
      *&v11.structure.rowCount = *(a1 + 32);
      *&v11.structure.rowIndices = v5;
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
    }

    else
    {
      *&v11.structure.rowCount = *(a1 + 32);
      v11.structure.rowIndices = *(a1 + 48);
      v7 = *(a1 + 56);
      *&v11.structure.blockSize = *(a1 + 58);
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
      v11.structure.attributes = (v7 & 0xFFFE | ((v7 & 1) == 0));
    }

    SparseMultiplyAdd(1.0, &v11, &v10, &v9);
  }

  else
  {
    if (a3 == 111)
    {
      v6 = *(a1 + 48);
      *&v11.structure.rowCount = *(a1 + 32);
      *&v11.structure.rowIndices = v6;
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
    }

    else
    {
      *&v11.structure.rowCount = *(a1 + 32);
      v11.structure.rowIndices = *(a1 + 48);
      v8 = *(a1 + 56);
      *&v11.structure.blockSize = *(a1 + 58);
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
      v11.structure.attributes = (v8 & 0xFFFE | ((v8 & 1) == 0));
    }

    SparseMultiply(1.0, &v11, &v10, &v9);
  }
}

uint64_t SparseSolve(SparseIterativeMethod *__src, SparseMatrix_Float *a2, DenseVector_Float a3, DenseVector_Float a4, SparseOpaquePreconditioner_Float *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v12.rowCount = a3.count;
  v12.columnCount = 1;
  v12.columnStride = a3.count;
  *&v12.attributes = 0;
  v12.data = a3.data;
  X.rowCount = a4.count;
  X.columnCount = 1;
  X.columnStride = a4.count;
  *&X.attributes = 0;
  X.data = a4.data;
  memcpy(&__dst, __src, sizeof(__dst));
  v7 = *&a2->structure.rowIndices;
  *&v10.structure.rowCount = *&a2->structure.rowCount;
  *&v10.structure.rowIndices = v7;
  v10.data = a2->data;
  v9 = *a5;
  return SparseSolve(&__dst, &v10, &v12, &X, &v9);
}

uint64_t SparseSolve(int *a1, void *ApplyOperator, uint64_t a3, DenseMatrix_Float *X, const SparseOpaquePreconditioner_Float *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 1);
  v6 = (a1 + 2);
  v7 = v8;
  v9 = 4;
  if (*&X->attributes)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(&X->rowCount + v10);
  if (*&X->attributes)
  {
    v12 = 0;
  }

  else
  {
    v12 = 4;
  }

  v13 = *(&X->rowCount + v12);
  v14 = *(a3 + 12);
  v15 = (v14 & 1) == 0;
  if (v14)
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
    v9 = 0;
  }

  if (v11 < 1 || v13 <= 0)
  {
    if (!v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCF60();
      }

      goto LABEL_41;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
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
    *__str = 0u;
    v24 = 0u;
    snprintf(__str, 0x100uLL, "Bad dimensions for X (%dx%d)\n");
LABEL_54:
    v7(__str);
    return 0xFFFFFFFFLL;
  }

  v18 = *(a3 + v16);
  v19 = *(a3 + v9);
  if (v18 < 1 || v19 <= 0)
  {
    if (!v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCFD8();
      }

      goto LABEL_41;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
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
    *__str = 0u;
    v24 = 0u;
    snprintf(__str, 0x100uLL, "Bad dimensions for B (%dx%d)\n");
    goto LABEL_54;
  }

  if (v13 != v19)
  {
    if (v7)
    {
      goto LABEL_53;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *__str = 67109888;
      *&__str[4] = v11;
      *&__str[8] = 1024;
      *&__str[10] = v13;
      *&__str[14] = 1024;
      LODWORD(v24) = v18;
      WORD2(v24) = 1024;
      *(&v24 + 6) = v19;
      _os_log_error_impl(&dword_2366B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", __str, 0x1Au);
    }

    goto LABEL_41;
  }

  v21 = *a1;
  if (v21 != 2)
  {
    if (v21 == 1)
    {
      if (v11 == v18)
      {

        return _SparseGMRESSolve_Float(v6, X, a3, ApplyOperator, a5);
      }

      if (!v7)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        goto LABEL_51;
      }

      goto LABEL_53;
    }

    if (v11 == v18)
    {

      return _SparseCGSolve_Float(v6, X, a3, ApplyOperator, a5);
    }

    if (v7)
    {
LABEL_53:
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
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
      *__str = 0u;
      v24 = 0u;
      snprintf(__str, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.");
      goto LABEL_54;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_51:
      sub_2367CD050();
    }

LABEL_41:
    _SparseTrap();
  }

  return _SparseLSMRSolve_Float(v6, X, a3, ApplyOperator, a5);
}

uint64_t SparseSolve(int *a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, float *a6, SparseOpaquePreconditioner_Float *Preconditioner)
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 1);
  v8 = (a1 + 2);
  v9 = v10;
  if (a5 <= 0)
  {
    if (v9)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      __str = 0u;
      v19 = 0u;
      snprintf(&__str, 0x100uLL, "Bad dimension for x (%dx%d)\n", a4);
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD0C0();
    }

LABEL_26:
    _SparseTrap();
  }

  if (a3 <= 0)
  {
    if (v9)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      __str = 0u;
      v19 = 0u;
      snprintf(&__str, 0x100uLL, "Bad dimensions for b (%dx%d)\n", a4);
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD138();
    }

    goto LABEL_26;
  }

  X.rowCount = a5;
  X.columnCount = 1;
  X.columnStride = a5;
  *&X.attributes = 0;
  X.data = a6;
  B.rowCount = a3;
  B.columnCount = 1;
  B.columnStride = a3;
  *&B.attributes = 0;
  B.data = a4;
  v11 = *a1;
  if (v11 == 2)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v13[2] = sub_2367B7C98;
    v13[3] = &unk_278A00950;
    v13[4] = a2;
    return _SparseLSMRSolve_Float(v8, &X, &B, v13, Preconditioner);
  }

  if (v11 == 1)
  {
    if (a5 == a3)
    {
      ApplyOperator[0] = MEMORY[0x277D85DD0];
      ApplyOperator[1] = 0x40000000;
      ApplyOperator[2] = sub_2367B7C70;
      ApplyOperator[3] = &unk_278A00928;
      ApplyOperator[4] = a2;
      return _SparseGMRESSolve_Float(v8, &X, &B, ApplyOperator, Preconditioner);
    }

    if (!v9)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

LABEL_25:
      sub_2367CCEE8();
      goto LABEL_26;
    }
  }

  else
  {
    if (a5 == a3)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 0x40000000;
      v15[2] = sub_2367B7C48;
      v15[3] = &unk_278A00900;
      v15[4] = a2;
      return _SparseCGSolve_Float(v8, &X, &B, v15, Preconditioner);
    }

    if (!v9)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  __str = 0u;
  v19 = 0u;
  snprintf(&__str, 0x100uLL, "Counts of X (%d) and B (%d) do not match.", a4);
LABEL_23:
  v9(&__str);
  return 0xFFFFFFFFLL;
}

void SparseIterate(int *a1, int a2, const BOOL *converged, char *state, void *a5, uint64_t a6, uint64_t a7, DenseMatrix_Float *X, SparseOpaquePreconditioner_Float *Preconditioner)
{
  v46 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 1);
  v10 = (a1 + 2);
  v11 = v12;
  v13 = 4;
  if (*&X->attributes)
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(&X->rowCount + v14);
  if (*&X->attributes)
  {
    v13 = 0;
  }

  v16 = *(&X->rowCount + v13);
  if (v15 < 1 || v16 <= 0)
  {
    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD1F4();
      }

      goto LABEL_62;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *__str = 0u;
    v31 = 0u;
    snprintf(__str, 0x100uLL, "Invalid size for X (%dx%d).", state, a5, a6, a7, Preconditioner);
LABEL_50:
    v11(__str);
    return;
  }

  v18 = 4;
  if (*(a6 + 12))
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a6 + v19);
  if (*(a6 + 12))
  {
    v18 = 0;
  }

  v21 = *(a6 + v18);
  if (v20 < 1 || v21 <= 0)
  {
    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD26C();
      }

      goto LABEL_62;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *__str = 0u;
    v31 = 0u;
    snprintf(__str, 0x100uLL, "Invalid size for B (%dx%d).", state, a5, a6, a7, Preconditioner);
    goto LABEL_50;
  }

  v23 = 4;
  if (*(a7 + 12))
  {
    v24 = 4;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(a7 + v24);
  if (*(a7 + 12))
  {
    v23 = 0;
  }

  v26 = *(a7 + v23);
  if (v25 < 1 || v26 <= 0)
  {
    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD2E4();
      }

      goto LABEL_62;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *__str = 0u;
    v31 = 0u;
    snprintf(__str, 0x100uLL, "Invalid size for R (%dx%d).", state, a5, a6, a7, Preconditioner);
    goto LABEL_50;
  }

  if (v16 != v21 || v21 != v26)
  {
    if (v11)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      *__str = 0u;
      v31 = 0u;
      snprintf(__str, 0x100uLL, "Sizes of X (%dx%d), B (%dx%d) and R (%dx%d) are inconsistent.", state, a5, a6, a7, Preconditioner, v15);
      goto LABEL_50;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *__str = 67110400;
      *&__str[4] = v15;
      *&__str[8] = 1024;
      *&__str[10] = v16;
      *&__str[14] = 1024;
      LODWORD(v31) = v20;
      WORD2(v31) = 1024;
      *(&v31 + 6) = v21;
      WORD5(v31) = 1024;
      HIDWORD(v31) = v25;
      LOWORD(v32) = 1024;
      *(&v32 + 2) = v21;
      _os_log_error_impl(&dword_2366B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Sizes of X (%dx%d), B (%dx%d) and R (%dx%d) are inconsistent.", __str, 0x26u);
    }

LABEL_62:
    _SparseTrap();
  }

  if (v25 < v20)
  {
    if (v11)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      *__str = 0u;
      v31 = 0u;
      snprintf(__str, 0x100uLL, "Sizes of residual matrix R(%dx%d) must be at least as large as right-hand side B (%dx%d).", state, a5, a6, a7, Preconditioner);
      goto LABEL_50;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD35C();
    }

    goto LABEL_62;
  }

  v29 = *a1;
  if (v29 == 2)
  {

    _SparseLSMRIterate_Float(v10, a2, state, converged, X, a6, a7, Preconditioner, a5);
  }

  else if (v29 == 1)
  {

    _SparseGMRESIterate_Float(v10, a2, state, converged, X, a6, a7, Preconditioner, a5);
  }

  else
  {

    _SparseCGIterate_Float(v10, a2, state, converged, X, a6, a7, Preconditioner, a5);
  }
}

void SparseIterate(int *a1, int a2, const BOOL *converged, char *state, void *ApplyOperator, uint64_t a6, uint64_t a7, DenseMatrix_Float *X)
{
  v45 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 1);
  v9 = (a1 + 2);
  v10 = v11;
  v12 = 4;
  if (*&X->attributes)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(&X->rowCount + v13);
  if (*&X->attributes)
  {
    v12 = 0;
  }

  v15 = *(&X->rowCount + v12);
  if (v14 < 1 || v15 <= 0)
  {
    if (!v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD1F4();
      }

      goto LABEL_60;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    *__str = 0u;
    v30 = 0u;
    snprintf(__str, 0x100uLL, "Invalid size for X (%dx%d).", state, ApplyOperator, a6, a7);
LABEL_50:
    v10(__str);
    return;
  }

  v17 = 4;
  if (*(a6 + 12))
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a6 + v18);
  if (*(a6 + 12))
  {
    v17 = 0;
  }

  v20 = *(a6 + v17);
  if (v19 < 1 || v20 <= 0)
  {
    if (!v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD26C();
      }

      goto LABEL_60;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    *__str = 0u;
    v30 = 0u;
    snprintf(__str, 0x100uLL, "Invalid size for B (%dx%d).", state, ApplyOperator, a6, a7);
    goto LABEL_50;
  }

  v22 = 4;
  if (*(a7 + 12))
  {
    v23 = 4;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(a7 + v23);
  if (*(a7 + 12))
  {
    v22 = 0;
  }

  v25 = *(a7 + v22);
  if (v24 < 1 || v25 <= 0)
  {
    if (!v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD2E4();
      }

      goto LABEL_60;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    *__str = 0u;
    v30 = 0u;
    snprintf(__str, 0x100uLL, "Invalid size for R (%dx%d).", state, ApplyOperator, a6, a7);
    goto LABEL_50;
  }

  if (v15 != v20 || v20 != v25)
  {
    if (v10)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      *__str = 0u;
      v30 = 0u;
      snprintf(__str, 0x100uLL, "Sizes of X (%dx%d), B (%dx%d) and R (%dx%d) are inconsistent.", state, ApplyOperator, a6, a7, v14);
      goto LABEL_50;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *__str = 67110400;
      *&__str[4] = v14;
      *&__str[8] = 1024;
      *&__str[10] = v15;
      *&__str[14] = 1024;
      LODWORD(v30) = v19;
      WORD2(v30) = 1024;
      *(&v30 + 6) = v20;
      WORD5(v30) = 1024;
      HIDWORD(v30) = v24;
      LOWORD(v31) = 1024;
      *(&v31 + 2) = v20;
      _os_log_error_impl(&dword_2366B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Sizes of X (%dx%d), B (%dx%d) and R (%dx%d) are inconsistent.", __str, 0x26u);
    }

LABEL_60:
    _SparseTrap();
  }

  if (v24 < v19)
  {
    if (v10)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      *__str = 0u;
      v30 = 0u;
      snprintf(__str, 0x100uLL, "Sizes of residual matrix R(%dx%d) must be at least as large as right-hand side B (%dx%d).", state, ApplyOperator, a6, a7);
      goto LABEL_50;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD35C();
    }

    goto LABEL_60;
  }

  v28 = *a1;
  if (v28 == 2)
  {
    _SparseLSMRIterate_Float(v9, a2, state, converged, X, a6, a7, 0, ApplyOperator);
  }

  else if (v28 == 1)
  {
    _SparseGMRESIterate_Float(v9, a2, state, converged, X, a6, a7, 0, ApplyOperator);
  }

  else
  {
    _SparseCGIterate_Float(v9, a2, state, converged, X, a6, a7, 0, ApplyOperator);
  }
}

__n128 SparseRetain@<Q0>(SparseOpaqueFactorization_Float *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  status = a1->symbolicFactorization.status;
  p_symbolicFactorization = &a1->symbolicFactorization;
  if (status || !a1->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD3CC();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(v10, p_symbolicFactorization);
  v7 = *&v10[40];
  if (a1->status || !a1->solveWorkspaceRequiredStatic)
  {
    if (*&v10[40])
    {
      v23 = 0;
      v22 = 0u;
      v21 = 0u;
      v20 = 0u;
      v19 = 0u;
      v18 = 0u;
      v17 = 0u;
      v16 = 0u;
      v15 = 0u;
      v14 = 0u;
      v13 = 0u;
      v12 = 0u;
      v11 = 0u;
      *&v10[47] = 0u;
      strcpy(v10, "Can only retain valid numeric factorizations.\n");
      v7(v10);
      result.n128_u64[0] = 0;
      *(a2 + 96) = 0;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *a2 = -4;
      *(a2 + 8) = -4;
      return result;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD3CC();
    }

LABEL_4:
    _SparseTrap();
  }

  _SparseRetainNumeric_Float(a1);
  v8 = *&a1->solveWorkspaceRequiredStatic;
  *(a2 + 64) = *&a1->userFactorStorage;
  *(a2 + 80) = v8;
  *(a2 + 96) = *&a1[1].status;
  v9 = *&a1->symbolicFactorization.columnCount;
  *a2 = *&a1->status;
  *(a2 + 16) = v9;
  result = *&a1->symbolicFactorization.factorSize_Float;
  *(a2 + 32) = *&a1->symbolicFactorization.workspaceSize_Float;
  *(a2 + 48) = result;
  return result;
}

__n128 SparseRetain@<Q0>(SparseOpaqueSubfactor_Float *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  status = a1->factor.symbolicFactorization.status;
  p_symbolicFactorization = &a1->factor.symbolicFactorization;
  if (status || !a1->factor.symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD410();
    }

    goto LABEL_4;
  }

  p_factorSize_Double = &p_symbolicFactorization[-1].factorSize_Double;
  _SparseGetOptionsFromSymbolicFactor(&v13, p_symbolicFactorization);
  reportError = v13.reportError;
  if (p_factorSize_Double->status || !a1->factor.solveWorkspaceRequiredStatic)
  {
    if (v13.reportError)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      *&v13.free = 0u;
      v14 = 0u;
      strcpy(&v13, "Can only retain valid objects.\n");
      (reportError)(&v13);
      result.n128_u64[0] = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 112) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 8) = -3;
      *(a2 + 16) = -3;
      return result;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD410();
    }

LABEL_4:
    _SparseTrap();
  }

  _SparseRetainNumeric_Float(p_factorSize_Double);
  v9 = *&a1->factor.numericFactorization;
  *(a2 + 64) = *&a1->factor.symbolicFactorization.factorSize_Double;
  *(a2 + 80) = v9;
  v10 = *&a1->workspaceRequiredPerRHS;
  *(a2 + 96) = *&a1->factor.solveWorkspaceRequiredPerRHS;
  *(a2 + 112) = v10;
  v11 = *&a1->factor.symbolicFactorization.status;
  *a2 = *&a1->attributes;
  *(a2 + 16) = v11;
  result = *&a1->factor.symbolicFactorization.factorization;
  v12 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  *(a2 + 32) = result;
  *(a2 + 48) = v12;
  return result;
}

void SparseCleanup(SparseOpaqueFactorization_Float *toFree)
{
  if ((toFree->status & 0x80000000) == 0)
  {
    _SparseDestroyOpaqueNumeric_Float(toFree);
  }
}

void SparseCleanup(SparseOpaqueSubfactor_Float *a1)
{
  status = a1->factor.status;
  p_factor = &a1->factor;
  if ((status & 0x80000000) == 0)
  {
    _SparseDestroyOpaqueNumeric_Float(p_factor);
  }
}

void SparseCleanup(SparseMatrix_Float *a1)
{
  if ((*&a1->structure.attributes & 0x80000000) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD454();
    }

    _SparseTrap();
  }

  columnStarts = a1->structure.columnStarts;

  free(columnStarts);
}

void SparseCleanup(SparseOpaquePreconditioner_Float *a1)
{
  if (a1->type <= SparsePreconditionerUser)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD498();
    }

    _SparseTrap();
  }

  _SparseReleaseOpaquePreconditioner_Float(a1);
}

void SparseConvertFromCoordinate(int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, unsigned int a5@<W4>, int *a6@<X5>, int *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>)
{
  if (a1 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D34C();
    }

LABEL_21:
    _SparseTrap();
  }

  if ((a2 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D3C4();
    }

    goto LABEL_21;
  }

  if (a3 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBB64();
    }

    goto LABEL_21;
  }

  if (a1 != a2 && (a5 & 0xC) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBBDC();
    }

    goto LABEL_21;
  }

  v18 = malloc_type_malloc(((16 * a4 * a4) | 4) * a3 + 8 * (a2 + 1) + 28, 0x100004000313F17uLL);
  if (!v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD4DC();
    }

    goto LABEL_21;
  }

  v19 = v18;
  v20 = malloc_type_malloc(4 * a1, 0x100004052888210uLL);
  if (!v20)
  {
    free(v19);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBC20();
    }

    goto LABEL_21;
  }

  *(a9 + 32) = 0;
  *a9 = 0u;
  *(a9 + 16) = 0u;
  v21 = a5;
  v22 = v20;
  _SparseConvertFromCoordinate_Complex_Double(a1, a2, a3, a4, v21, a6, a7, a8, a9, v19, v20);
  free(v22);
  *(a9 + 24) |= 0x8000u;
}

void SparseConvertFromCoordinate(int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, char a5@<W4>, int *a6@<X5>, int *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned int *a11)
{
  if (a1 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D34C();
    }

LABEL_14:
    _SparseTrap();
  }

  if ((a2 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D3C4();
    }

    goto LABEL_14;
  }

  if (a3 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBB64();
    }

    goto LABEL_14;
  }

  if (a1 != a2 && (a5 & 0xC) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBBDC();
    }

    goto LABEL_14;
  }

  _SparseConvertFromCoordinate_Complex_Double(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t SparseMultiply(uint64_t a1, unsigned int *a2, unsigned int *a3, double a4, double a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = 4;
  if (*(a1 + 24))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 24))
  {
    v5 = 0;
  }

  v7 = *a3;
  if (a3[2] < *a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBDE4();
    }

    goto LABEL_35;
  }

  if (a2[2] < *a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

    goto LABEL_35;
  }

  if (a3[3])
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v7 = a3[1];
  }

  v9 = (a2[3] & 1) == 0;
  v10 = a2[v9];
  v11 = a3[v8];
  v12 = (a2[3] & 1) != 0;
  v13 = a2[v12];
  if (v7 != v10)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 136316418;
    *&buf[4] = "Y";
    *&buf[12] = 1024;
    *&buf[14] = v11;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 2080;
    *&buf[26] = "X";
    *&buf[34] = 1024;
    *&buf[36] = v13;
    v26 = 1024;
    v27 = v10;
    v19 = MEMORY[0x277D86220];
    v20 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
LABEL_34:
    _os_log_error_impl(&dword_2366B9000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x2Eu);
    goto LABEL_35;
  }

  if (v7 <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBCDC();
    }

LABEL_35:
    _SparseTrap();
  }

  v14 = *(a1 + 28);
  v15 = *(a1 + v6) * v14;
  v16 = *(a1 + v5) * v14;
  if (v11 != v15)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 136316418;
    *&buf[4] = "Y";
    *&buf[12] = 1024;
    *&buf[14] = v11;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 2080;
    *&buf[26] = "matrix A";
    *&buf[34] = 1024;
    *&buf[36] = v16;
    v26 = 1024;
    v27 = v15;
    v19 = MEMORY[0x277D86220];
    v20 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_34;
  }

  if (v13 != v16)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 136316418;
    *&buf[4] = "X";
    *&buf[12] = 1024;
    *&buf[14] = v13;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 2080;
    *&buf[26] = "matrix A";
    *&buf[34] = 1024;
    *&buf[36] = v16;
    v26 = 1024;
    v27 = v15;
    v19 = MEMORY[0x277D86220];
    v20 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_34;
  }

  v17 = *(a1 + 16);
  *buf = *a1;
  *&buf[16] = v17;
  *&buf[32] = *(a1 + 32);
  v23 = *a2;
  v24 = *(a2 + 2);
  v21 = *a3;
  v22 = *(a3 + 2);
  return _SparseSpMV_Complex_Double(buf, &v23, 0, &v21, a4, a5);
}

uint64_t SparseMultiply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v7 = *(a1 + 28);
  v8 = 4;
  if (*(a1 + 24))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 24))
  {
    v8 = 0;
  }

  if (*(a1 + v8) * v7 != a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBE68();
    }

LABEL_13:
    _SparseTrap();
  }

  if (*(a1 + v9) * v7 != a4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBED8();
    }

    goto LABEL_13;
  }

  v16[0] = a2;
  v16[1] = 1;
  v17 = a2;
  v18 = a3;
  v14[0] = a4;
  v14[1] = 1;
  v14[2] = a4;
  v14[3] = 0;
  v15 = a5;
  v10 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v10;
  v13 = *(a1 + 32);
  return _SparseSpMV_Complex_Double(v12, v16, 0, v14, a6, a7);
}

uint64_t SparseMultiply(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v10 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 2);
  v5 = *a3;
  v6 = *(a3 + 2);
  return SparseMultiply(v9, &v7, &v5, 1.0, 0.0);
}

uint64_t SparseMultiply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  return SparseMultiply(v7, a2, a3, a4, a5, 1.0, 0.0);
}

uint64_t SparseMultiplyAdd(uint64_t a1, unsigned int *a2, unsigned int *a3, double a4, double a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = 4;
  if (*(a1 + 24))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 24))
  {
    v5 = 0;
  }

  v7 = *a3;
  if (a3[2] < *a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBDE4();
    }

    goto LABEL_35;
  }

  if (a2[2] < *a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

    goto LABEL_35;
  }

  if (a3[3])
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v7 = a3[1];
  }

  v9 = (a2[3] & 1) == 0;
  v10 = a2[v9];
  v11 = a3[v8];
  v12 = (a2[3] & 1) != 0;
  v13 = a2[v12];
  if (v7 != v10)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 136316418;
    *&buf[4] = "Y";
    *&buf[12] = 1024;
    *&buf[14] = v11;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 2080;
    *&buf[26] = "X";
    *&buf[34] = 1024;
    *&buf[36] = v13;
    v26 = 1024;
    v27 = v10;
    v19 = MEMORY[0x277D86220];
    v20 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
LABEL_34:
    _os_log_error_impl(&dword_2366B9000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x2Eu);
    goto LABEL_35;
  }

  if (v7 <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBCDC();
    }

LABEL_35:
    _SparseTrap();
  }

  v14 = *(a1 + 28);
  v15 = *(a1 + v6) * v14;
  v16 = *(a1 + v5) * v14;
  if (v11 != v15)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 136316418;
    *&buf[4] = "Y";
    *&buf[12] = 1024;
    *&buf[14] = v11;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 2080;
    *&buf[26] = "matrix A";
    *&buf[34] = 1024;
    *&buf[36] = v16;
    v26 = 1024;
    v27 = v15;
    v19 = MEMORY[0x277D86220];
    v20 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_34;
  }

  if (v13 != v16)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 136316418;
    *&buf[4] = "X";
    *&buf[12] = 1024;
    *&buf[14] = v13;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 2080;
    *&buf[26] = "matrix A";
    *&buf[34] = 1024;
    *&buf[36] = v16;
    v26 = 1024;
    v27 = v15;
    v19 = MEMORY[0x277D86220];
    v20 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_34;
  }

  v17 = *(a1 + 16);
  *buf = *a1;
  *&buf[16] = v17;
  *&buf[32] = *(a1 + 32);
  v23 = *a2;
  v24 = *(a2 + 2);
  v21 = *a3;
  v22 = *(a3 + 2);
  return _SparseSpMV_Complex_Double(buf, &v23, 1, &v21, a4, a5);
}

uint64_t SparseMultiplyAdd(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v10 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 2);
  v5 = *a3;
  v6 = *(a3 + 2);
  return SparseMultiplyAdd(v9, &v7, &v5, 1.0, 0.0);
}

uint64_t SparseMultiplyAdd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v7 = *(a1 + 28);
  v8 = 4;
  if (*(a1 + 24))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 24))
  {
    v8 = 0;
  }

  if (*(a1 + v8) * v7 != a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBE68();
    }

LABEL_13:
    _SparseTrap();
  }

  if (*(a1 + v9) * v7 != a4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBED8();
    }

    goto LABEL_13;
  }

  v16[0] = a2;
  v16[1] = 1;
  v17 = a2;
  v18 = a3;
  v14[0] = a4;
  v14[1] = 1;
  v14[2] = a4;
  v14[3] = 0;
  v15 = a5;
  v10 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v10;
  v13 = *(a1 + 32);
  return _SparseSpMV_Complex_Double(v12, v16, 1, v14, a6, a7);
}

uint64_t SparseMultiplyAdd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  return SparseMultiplyAdd(v7, a2, a3, a4, a5, 1.0, 0.0);
}

__n128 SparseGetTranspose@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3 & 0x20) != 0 && (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD80C();
    }

    _SparseTrap();
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFDE | ((*(a1 + 24) & 1) == 0);
  *(a2 + 32) = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  return result;
}

{
  v4 = *(a1 + 4);
  if (v4 & 0x20) != 0 && (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD894();
    }

    _SparseTrap();
  }

  *(a1 + 4) = v4 & 0xFFDE | ((v4 & 1) == 0);
  _SparseRetainNumeric_Complex_Double(a1);
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  *(a2 + 96) = *(a1 + 96);
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

{
  v3 = *(a1 + 24);
  if (v3 & 0x20) != 0 && (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD80C();
    }

    _SparseTrap();
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFDE | ((*(a1 + 24) & 1) == 0);
  *(a2 + 32) = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  return result;
}

{
  v4 = *(a1 + 4);
  if (v4 & 0x20) != 0 && (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD894();
    }

    _SparseTrap();
  }

  *(a1 + 4) = v4 & 0xFFDE | ((v4 & 1) == 0);
  _SparseRetainNumeric_Complex_Float(a1);
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  *(a2 + 96) = *(a1 + 96);
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

__n128 SparseGetConjugateTranspose@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3 & 0x20) == 0 && (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD850();
    }

    _SparseTrap();
  }

  *(a1 + 24) = v3 & 0xFFFE | ((v3 & 1) == 0) | 0x20;
  *(a2 + 32) = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  return result;
}

{
  v4 = *(a1 + 4);
  if (v4 & 0x20) == 0 && (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD8D8();
    }

    _SparseTrap();
  }

  *(a1 + 4) = v4 & 0xFFFE | ((v4 & 1) == 0) | 0x20;
  _SparseRetainNumeric_Complex_Double(a1);
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  *(a2 + 96) = *(a1 + 96);
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

{
  v3 = *(a1 + 24);
  if (v3 & 0x20) == 0 && (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD850();
    }

    _SparseTrap();
  }

  *(a1 + 24) = v3 & 0xFFFE | ((v3 & 1) == 0) | 0x20;
  *(a2 + 32) = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  return result;
}

{
  v4 = *(a1 + 4);
  if (v4 & 0x20) == 0 && (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD8D8();
    }

    _SparseTrap();
  }

  *(a1 + 4) = v4 & 0xFFFE | ((v4 & 1) == 0) | 0x20;
  _SparseRetainNumeric_Complex_Float(a1);
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  *(a2 + 96) = *(a1 + 96);
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

__n128 SparseGetTranspose@<Q0>(__int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (*a1 & 0x20) != 0 && (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD894();
    }

    _SparseTrap();
  }

  *a1 = v4 & 0xFFDE | ((v4 & 1) == 0);
  _SparseRetainNumeric_Complex_Double((a1 + 4));
  v5 = *(a1 + 5);
  *(a2 + 64) = *(a1 + 4);
  *(a2 + 80) = v5;
  v6 = *(a1 + 7);
  *(a2 + 96) = *(a1 + 6);
  *(a2 + 112) = v6;
  v7 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 2);
  v9 = *(a1 + 3);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

{
  v4 = *a1;
  if (*a1 & 0x20) != 0 && (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD894();
    }

    _SparseTrap();
  }

  *a1 = v4 & 0xFFDE | ((v4 & 1) == 0);
  _SparseRetainNumeric_Complex_Float((a1 + 4));
  v5 = *(a1 + 5);
  *(a2 + 64) = *(a1 + 4);
  *(a2 + 80) = v5;
  v6 = *(a1 + 7);
  *(a2 + 96) = *(a1 + 6);
  *(a2 + 112) = v6;
  v7 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 2);
  v9 = *(a1 + 3);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

__n128 SparseGetConjugateTranspose@<Q0>(__int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (*a1 & 0x20) == 0 && (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD8D8();
    }

    _SparseTrap();
  }

  *a1 = v4 & 0xFFFE | ((v4 & 1) == 0) | 0x20;
  _SparseRetainNumeric_Complex_Double((a1 + 4));
  v5 = *(a1 + 5);
  *(a2 + 64) = *(a1 + 4);
  *(a2 + 80) = v5;
  v6 = *(a1 + 7);
  *(a2 + 96) = *(a1 + 6);
  *(a2 + 112) = v6;
  v7 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 2);
  v9 = *(a1 + 3);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

{
  v4 = *a1;
  if (*a1 & 0x20) == 0 && (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD8D8();
    }

    _SparseTrap();
  }

  *a1 = v4 & 0xFFFE | ((v4 & 1) == 0) | 0x20;
  _SparseRetainNumeric_Complex_Float((a1 + 4));
  v5 = *(a1 + 5);
  *(a2 + 64) = *(a1 + 4);
  *(a2 + 80) = v5;
  v6 = *(a1 + 7);
  *(a2 + 96) = *(a1 + 6);
  *(a2 + 112) = v6;
  v7 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 2);
  v9 = *(a1 + 3);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

uint64_t SparseFactor@<X0>(unsigned int a1@<W0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2 <= 0)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.rowCount must be > 0, but is %d.\n", a4);
      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBF48();
    }

LABEL_40:
    _SparseTrap();
  }

  v8 = a2[1];
  if (v8 <= 0)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.columnCount must be > 0, but is %d.\n", a4);
      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBFCC();
    }

    goto LABEL_40;
  }

  if (!*(a2 + 28))
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.blockSize must be > 0, but is %d.]n", a4);
      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC114();
    }

    goto LABEL_40;
  }

  v9 = *(a2 + 12);
  v10 = v9 & 0x1C;
  if (v7 != v8 && v10 == 12)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.attributes.kind=SparseSymmetric, but %s.rowCount (%d) != %s.columnCount (%d).\n", a4);
      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC050();
    }

    goto LABEL_40;
  }

  if (v7 != v8 && v10 == 28)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.attributes.kind=SparseHermitian, but %s.rowCount (%d) != %s.columnCount (%d).\n", a4);
LABEL_22:
      v12 = *(a3 + 40);
LABEL_23:
      result = v12(__str);
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

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD91C();
    }

    goto LABEL_40;
  }

  if (a1 - 80 >= 4)
  {
    if (a1 - 40 > 1)
    {
      v14 = (v9 >> 2) & 7;
      if (v14 == 7)
      {

        return _SparseFactorHermitian_Complex_Double(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v14 != 3)
        {
          v12 = *(a3 + 40);
          if (v12)
          {
            memset(&__str[72], 0, 184);
            strcpy(__str, "Cannot perform Hermitian matrix factorization of non-Hermitian matrix.\n");
            goto LABEL_23;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2367CD99C();
          }

          goto LABEL_40;
        }

        return _SparseFactorSymmetric_Complex_Double(a1, a2, a3, a4, a5);
      }
    }

    else
    {

      return _SparseFactorQR_Complex_Double(a1, a2, a3, a4, a5);
    }
  }

  else
  {

    return _SparseFactorLU_Complex_Double(a1, a2, a3, a4, a5);
  }
}

{
  v16 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2 <= 0)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.rowCount must be > 0, but is %d.\n", a4);
      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBF48();
    }

LABEL_40:
    _SparseTrap();
  }

  v8 = a2[1];
  if (v8 <= 0)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.columnCount must be > 0, but is %d.\n", a4);
      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBFCC();
    }

    goto LABEL_40;
  }

  if (!*(a2 + 28))
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.blockSize must be > 0, but is %d.]n", a4);
      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC114();
    }

    goto LABEL_40;
  }

  v9 = *(a2 + 12);
  v10 = v9 & 0x1C;
  if (v7 != v8 && v10 == 12)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.attributes.kind=SparseSymmetric, but %s.rowCount (%d) != %s.columnCount (%d).\n", a4);
      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC050();
    }

    goto LABEL_40;
  }

  if (v7 != v8 && v10 == 28)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.attributes.kind=SparseHermitian, but %s.rowCount (%d) != %s.columnCount (%d).\n", a4);
LABEL_22:
      v12 = *(a3 + 40);
LABEL_23:
      result = v12(__str);
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

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD91C();
    }

    goto LABEL_40;
  }

  if (a1 - 80 >= 4)
  {
    if (a1 - 40 > 1)
    {
      v14 = (v9 >> 2) & 7;
      if (v14 == 7)
      {

        return _SparseFactorHermitian_Complex_Float(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v14 != 3)
        {
          v12 = *(a3 + 40);
          if (v12)
          {
            memset(&__str[72], 0, 184);
            strcpy(__str, "Cannot perform Hermitian matrix factorization of non-Hermitian matrix.\n");
            goto LABEL_23;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2367CD99C();
          }

          goto LABEL_40;
        }

        return _SparseFactorSymmetric_Complex_Float(a1, a2, a3, a4, a5);
      }
    }

    else
    {

      return _SparseFactorQR_Complex_Float(a1, a2, a3, a4, a5);
    }
  }

  else
  {

    return _SparseFactorLU_Complex_Float(a1, a2, a3, a4, a5);
  }
}

uint64_t SparseFactor@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  v6[0] = *byte_28499C198;
  v6[1] = *&byte_28499C198[16];
  v6[2] = *&byte_28499C198[32];
  v5[0] = *ymmword_23681FF58;
  v5[1] = *&ymmword_23681FF58[16];
  return SparseFactor(a1, v7, v6, v5, a3);
}

{
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  v6[0] = *byte_28499C198;
  v6[1] = *&byte_28499C198[16];
  v6[2] = *&byte_28499C198[32];
  v5[0] = *ymmword_23681FFA0;
  v5[1] = *&ymmword_23681FFA0[16];
  return SparseFactor(a1, v7, v6, v5, a3);
}

uint64_t SparseFactor@<X0>(SparseOpaqueSymbolicFactorization *factor@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  if (factor->status || !factor->workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD564();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v21, factor);
  reportError = v21.reportError;
  if (*a2 != *&factor->rowCount || *(a2 + 28) != LOBYTE(factor->factorization) || ((*&factor->attributes ^ *(a2 + 24)) & 1) != 0)
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
    v15 = (v21.malloc)(2 * *&factor[1].status);
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
        goto LABEL_35;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD9E0();
      }

LABEL_42:
      _SparseTrap();
    }
  }

  v16 = a5;
  if (!a5)
  {
    v19 = (malloc)(2 * factor->factorSize_Float);
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
LABEL_35:
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
      sub_2367CDA58();
    }

    goto LABEL_42;
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
      if ((*(a2 + 24) & 0x1C) == 0xC)
      {
        result = _SparseNumericFactorSymmetric_Complex_Double(factor, a2, a3, v16, a6, v15);
      }

      else
      {
        result = _SparseNumericFactorHermitian_Complex_Double(factor, a2, a3, v16, a6, v15);
      }
    }

    else
    {
      result = _SparseNumericFactorQR_Complex_Double(factor, a2, a3, v15, a6, v16);
    }
  }

  else
  {
    result = _SparseNumericFactorLU_Complex_Double(factor, a2, a3, v16, a6, v15);
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

{
  v35 = *MEMORY[0x277D85DE8];
  if (factor->status || !factor->workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD564();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v21, factor);
  reportError = v21.reportError;
  if (*a2 != *&factor->rowCount || *(a2 + 28) != LOBYTE(factor->factorization) || ((*&factor->attributes ^ *(a2 + 24)) & 1) != 0)
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
    v15 = (v21.malloc)(2 * factor->factorSize_Double);
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
        goto LABEL_35;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD9E0();
      }

LABEL_42:
      _SparseTrap();
    }
  }

  v16 = a5;
  if (!a5)
  {
    v19 = (malloc)(2 * factor->workspaceSize_Double);
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
LABEL_35:
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
      sub_2367CDA58();
    }

    goto LABEL_42;
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
      if ((*(a2 + 24) & 0x1C) == 0xC)
      {
        result = _SparseNumericFactorSymmetric_Complex_Float(factor, a2, a3, v16, a6, v15);
      }

      else
      {
        result = _SparseNumericFactorHermitian_Complex_Float(factor, a2, a3, v16, a6, v15);
      }
    }

    else
    {
      result = _SparseNumericFactorQR_Complex_Float(factor, a2, a3, v15, a6, v16);
    }
  }

  else
  {
    result = _SparseNumericFactorLU_Complex_Float(factor, a2, a3, v16, a6, v15);
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

uint64_t SparseFactor@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  factor[0] = *a1;
  factor[1] = v3;
  v4 = a1[3];
  factor[2] = a1[2];
  factor[3] = v4;
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  v9 = *(a2 + 32);
  v7[0] = *ymmword_23681FF58;
  v7[1] = *&ymmword_23681FF58[16];
  return SparseFactor(factor, v8, v7, 0, 0, a3);
}

{
  v3 = a1[1];
  factor[0] = *a1;
  factor[1] = v3;
  v4 = a1[3];
  factor[2] = a1[2];
  factor[3] = v4;
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  v9 = *(a2 + 32);
  v7[0] = *ymmword_23681FFA0;
  v7[1] = *&ymmword_23681FFA0[16];
  return SparseFactor(factor, v8, v7, 0, 0, a3);
}

uint64_t SparseFactor@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  factor[0] = *a1;
  factor[1] = v4;
  v5 = a1[3];
  factor[2] = a1[2];
  factor[3] = v5;
  v6 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v6;
  v11 = *(a2 + 32);
  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return SparseFactor(factor, v10, v9, 0, 0, a4);
}

{
  v4 = a1[1];
  factor[0] = *a1;
  factor[1] = v4;
  v5 = a1[3];
  factor[2] = a1[2];
  factor[3] = v5;
  v6 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v6;
  v11 = *(a2 + 32);
  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return SparseFactor(factor, v10, v9, 0, 0, a4);
}

uint64_t SparseSolve(SparseOpaqueSymbolicFactorization *factor, unsigned int *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v21, &factor->columnCount);
  reportError = v21.reportError;
  if (*p_columnCount || !factor->workspaceSize_Double || factor->status || !factor[1].workspaceSize_Float)
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
      snprintf(&v21, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
      return (reportError)(&v21);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

LABEL_4:
    _SparseTrap();
  }

  v7 = *a2;
  if (a2[2] < *a2)
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
      snprintf(&v21, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
      return (reportError)(&v21);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC46C();
    }

    goto LABEL_4;
  }

  if (a2[3])
  {
    v8 = 0;
    v7 = a2[1];
  }

  else
  {
    v8 = 1;
  }

  v9 = a2[v8];
  if (v9 <= 0)
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
      snprintf(&v21, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
      return (reportError)(&v21);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366FFDD4();
    }

    goto LABEL_4;
  }

  workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
  v11 = *&factor->attributes * workspaceSize_Float_low;
  v12 = LODWORD(factor->factorization) * workspaceSize_Float_low;
  if (v11 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (v7 != v13)
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
      snprintf(&v21, 0x100uLL, "%s (%dx%d) is not consistent with largest dimension of matrix factorization %s (%d).\n");
      return (reportError)(&v21);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC360();
    }

    goto LABEL_4;
  }

  free = v21.free;
  v15 = (v21.malloc)(factor[1].workspaceSize_Double + factor[1].factorSize_Float * v9);
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
      snprintf(&v21, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
      return (reportError)(&v21);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC3F4();
    }

    goto LABEL_4;
  }

  v20 = v15;
  _SparseSolveOpaque_Complex_Double(factor, 0, a2, v15, v16, v17, v18, v19);
  return (free)(v20);
}

{
  v35 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v21, &factor->columnCount);
  reportError = v21.reportError;
  if (*p_columnCount || !factor->workspaceSize_Double || factor->status || !factor[1].workspaceSize_Float)
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
      snprintf(&v21, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
      return (reportError)(&v21);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

LABEL_4:
    _SparseTrap();
  }

  v7 = *a2;
  if (a2[2] < *a2)
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
      snprintf(&v21, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
      return (reportError)(&v21);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC46C();
    }

    goto LABEL_4;
  }

  if (a2[3])
  {
    v8 = 0;
    v7 = a2[1];
  }

  else
  {
    v8 = 1;
  }

  v9 = a2[v8];
  if (v9 <= 0)
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
      snprintf(&v21, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
      return (reportError)(&v21);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366FFDD4();
    }

    goto LABEL_4;
  }

  workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
  v11 = *&factor->attributes * workspaceSize_Float_low;
  v12 = LODWORD(factor->factorization) * workspaceSize_Float_low;
  if (v11 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (v7 != v13)
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
      snprintf(&v21, 0x100uLL, "%s (%dx%d) is not consistent with largest dimension of matrix factorization %s (%d).\n");
      return (reportError)(&v21);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC360();
    }

    goto LABEL_4;
  }

  free = v21.free;
  v15 = (v21.malloc)(factor[1].workspaceSize_Double + factor[1].factorSize_Float * v9);
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
      snprintf(&v21, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
      return (reportError)(&v21);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC3F4();
    }

    goto LABEL_4;
  }

  v20 = v15;
  _SparseSolveOpaque_Complex_Float(factor, 0, a2, v15, v16, v17, v18, v19);
  return (free)(v20);
}

uint64_t SparseSolve(SparseOpaqueSymbolicFactorization *factor, unsigned int *a2, unsigned int *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v41, &factor->columnCount);
  reportError = v41.reportError;
  if (*p_columnCount || !factor->workspaceSize_Double || factor->status || !factor[1].workspaceSize_Float)
  {
    if (v41.reportError)
    {
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
      v42 = 0u;
      memset(&v41, 0, sizeof(v41));
      snprintf(&v41, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
      return (reportError)(&v41);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

    goto LABEL_4;
  }

  v9 = LOWORD(factor->rowCount) ^ WORD2(factor->factorization);
  workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
  v11 = *&factor->attributes * workspaceSize_Float_low;
  v12 = LODWORD(factor->factorization) * workspaceSize_Float_low;
  if (v9)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  if (BYTE1(factor->workspaceSize_Float) == 40)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *a2;
  if (a2[2] < *a2)
  {
    if (v41.reportError)
    {
      goto LABEL_29;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC574();
    }

    goto LABEL_4;
  }

  if (a3[2] < *a3)
  {
    if (v41.reportError)
    {
LABEL_29:
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
      v42 = 0u;
      memset(&v41, 0, sizeof(v41));
      snprintf(&v41, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
      return (reportError)(&v41);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

LABEL_4:
    _SparseTrap();
  }

  v17 = *(a2 + 6);
  if ((v17 & 1) == 0)
  {
    v16 = a2[1];
  }

  v18 = *(a3 + 6);
  v19 = (v17 & 1) != 0;
  v20 = (v18 & 1) == 0;
  v21 = (v18 & 1) == 0;
  v22 = a3[v21];
  v23 = a2[v19];
  v24 = !v20;
  v25 = a3[v24];
  if (v16 != v22)
  {
    if (v41.reportError)
    {
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
      v42 = 0u;
      memset(&v41, 0, sizeof(v41));
      snprintf(&v41, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
      return (reportError)(&v41);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v41.control = 136316418;
    *&v41.orderMethod = "B";
    WORD2(v41.order) = 1024;
    *(&v41.order + 6) = v23;
    WORD1(v41.ignoreRowsAndColumns) = 1024;
    HIDWORD(v41.ignoreRowsAndColumns) = v16;
    LOWORD(v41.malloc) = 2080;
    *(&v41.malloc + 2) = "X";
    WORD1(v41.free) = 1024;
    HIDWORD(v41.free) = v25;
    LOWORD(v41.reportError) = 1024;
    *(&v41.reportError + 2) = v22;
    v34 = MEMORY[0x277D86220];
    v35 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    goto LABEL_72;
  }

  if (v16 <= 0)
  {
    if (v41.reportError)
    {
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
      v42 = 0u;
      memset(&v41, 0, sizeof(v41));
      snprintf(&v41, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
      return (reportError)(&v41);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC4F0();
    }

    goto LABEL_4;
  }

  if (v23 != v15)
  {
    if (v41.reportError)
    {
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
      v42 = 0u;
      memset(&v41, 0, sizeof(v41));
      v36 = "B";
LABEL_63:
      snprintf(&v41, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v36);
      return (reportError)(&v41);
    }

    v37 = v15;
    v38 = v14;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v41.control = 136316418;
    *&v41.orderMethod = "B";
    WORD2(v41.order) = 1024;
    *(&v41.order + 6) = v23;
    WORD1(v41.ignoreRowsAndColumns) = 1024;
    HIDWORD(v41.ignoreRowsAndColumns) = v16;
    LOWORD(v41.malloc) = 2080;
    *(&v41.malloc + 2) = "matrix factorization Factored";
    WORD1(v41.free) = 1024;
    HIDWORD(v41.free) = v38;
    LOWORD(v41.reportError) = 1024;
    *(&v41.reportError + 2) = v37;
    v34 = MEMORY[0x277D86220];
    v35 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
LABEL_72:
    _os_log_error_impl(&dword_2366B9000, v34, OS_LOG_TYPE_ERROR, v35, &v41, 0x2Eu);
    goto LABEL_4;
  }

  if (v25 != v14)
  {
    if (v41.reportError)
    {
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
      v42 = 0u;
      memset(&v41, 0, sizeof(v41));
      v36 = "X";
      goto LABEL_63;
    }

    v39 = v15;
    v40 = v14;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v41.control = 136316418;
    *&v41.orderMethod = "X";
    WORD2(v41.order) = 1024;
    *(&v41.order + 6) = v25;
    WORD1(v41.ignoreRowsAndColumns) = 1024;
    HIDWORD(v41.ignoreRowsAndColumns) = v16;
    LOWORD(v41.malloc) = 2080;
    *(&v41.malloc + 2) = "matrix factorization Factored";
    WORD1(v41.free) = 1024;
    HIDWORD(v41.free) = v40;
    LOWORD(v41.reportError) = 1024;
    *(&v41.reportError + 2) = v39;
    v34 = MEMORY[0x277D86220];
    v35 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_72;
  }

  free = v41.free;
  v27 = 1;
  if (v17)
  {
    v27 = 0;
  }

  v28 = (v41.malloc)(factor[1].workspaceSize_Double + factor[1].factorSize_Float * a2[v27]);
  if (!v28)
  {
    if (reportError)
    {
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
      v42 = 0u;
      memset(&v41, 0, sizeof(v41));
      snprintf(&v41, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
      return (reportError)(&v41);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC3F4();
    }

    goto LABEL_4;
  }

  v33 = v28;
  _SparseSolveOpaque_Complex_Double(factor, a2, a3, v28, v29, v30, v31, v32);
  return (free)(v33);
}

{
  v55 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v41, &factor->columnCount);
  reportError = v41.reportError;
  if (*p_columnCount || !factor->workspaceSize_Double || factor->status || !factor[1].workspaceSize_Float)
  {
    if (v41.reportError)
    {
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
      v42 = 0u;
      memset(&v41, 0, sizeof(v41));
      snprintf(&v41, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
      return (reportError)(&v41);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

    goto LABEL_4;
  }

  v9 = LOWORD(factor->rowCount) ^ WORD2(factor->factorization);
  workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
  v11 = *&factor->attributes * workspaceSize_Float_low;
  v12 = LODWORD(factor->factorization) * workspaceSize_Float_low;
  if (v9)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  if (BYTE1(factor->workspaceSize_Float) == 40)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *a2;
  if (a2[2] < *a2)
  {
    if (v41.reportError)
    {
      goto LABEL_29;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC574();
    }

    goto LABEL_4;
  }

  if (a3[2] < *a3)
  {
    if (v41.reportError)
    {
LABEL_29:
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
      v42 = 0u;
      memset(&v41, 0, sizeof(v41));
      snprintf(&v41, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
      return (reportError)(&v41);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

LABEL_4:
    _SparseTrap();
  }

  v17 = *(a2 + 6);
  if ((v17 & 1) == 0)
  {
    v16 = a2[1];
  }

  v18 = *(a3 + 6);
  v19 = (v17 & 1) != 0;
  v20 = (v18 & 1) == 0;
  v21 = (v18 & 1) == 0;
  v22 = a3[v21];
  v23 = a2[v19];
  v24 = !v20;
  v25 = a3[v24];
  if (v16 != v22)
  {
    if (v41.reportError)
    {
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
      v42 = 0u;
      memset(&v41, 0, sizeof(v41));
      snprintf(&v41, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
      return (reportError)(&v41);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v41.control = 136316418;
    *&v41.orderMethod = "B";
    WORD2(v41.order) = 1024;
    *(&v41.order + 6) = v23;
    WORD1(v41.ignoreRowsAndColumns) = 1024;
    HIDWORD(v41.ignoreRowsAndColumns) = v16;
    LOWORD(v41.malloc) = 2080;
    *(&v41.malloc + 2) = "X";
    WORD1(v41.free) = 1024;
    HIDWORD(v41.free) = v25;
    LOWORD(v41.reportError) = 1024;
    *(&v41.reportError + 2) = v22;
    v34 = MEMORY[0x277D86220];
    v35 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    goto LABEL_72;
  }

  if (v16 <= 0)
  {
    if (v41.reportError)
    {
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
      v42 = 0u;
      memset(&v41, 0, sizeof(v41));
      snprintf(&v41, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
      return (reportError)(&v41);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC4F0();
    }

    goto LABEL_4;
  }

  if (v23 != v15)
  {
    if (v41.reportError)
    {
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
      v42 = 0u;
      memset(&v41, 0, sizeof(v41));
      v36 = "B";
LABEL_63:
      snprintf(&v41, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v36);
      return (reportError)(&v41);
    }

    v37 = v15;
    v38 = v14;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v41.control = 136316418;
    *&v41.orderMethod = "B";
    WORD2(v41.order) = 1024;
    *(&v41.order + 6) = v23;
    WORD1(v41.ignoreRowsAndColumns) = 1024;
    HIDWORD(v41.ignoreRowsAndColumns) = v16;
    LOWORD(v41.malloc) = 2080;
    *(&v41.malloc + 2) = "matrix factorization Factored";
    WORD1(v41.free) = 1024;
    HIDWORD(v41.free) = v38;
    LOWORD(v41.reportError) = 1024;
    *(&v41.reportError + 2) = v37;
    v34 = MEMORY[0x277D86220];
    v35 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
LABEL_72:
    _os_log_error_impl(&dword_2366B9000, v34, OS_LOG_TYPE_ERROR, v35, &v41, 0x2Eu);
    goto LABEL_4;
  }

  if (v25 != v14)
  {
    if (v41.reportError)
    {
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
      v42 = 0u;
      memset(&v41, 0, sizeof(v41));
      v36 = "X";
      goto LABEL_63;
    }

    v39 = v15;
    v40 = v14;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v41.control = 136316418;
    *&v41.orderMethod = "X";
    WORD2(v41.order) = 1024;
    *(&v41.order + 6) = v25;
    WORD1(v41.ignoreRowsAndColumns) = 1024;
    HIDWORD(v41.ignoreRowsAndColumns) = v16;
    LOWORD(v41.malloc) = 2080;
    *(&v41.malloc + 2) = "matrix factorization Factored";
    WORD1(v41.free) = 1024;
    HIDWORD(v41.free) = v40;
    LOWORD(v41.reportError) = 1024;
    *(&v41.reportError + 2) = v39;
    v34 = MEMORY[0x277D86220];
    v35 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_72;
  }

  free = v41.free;
  v27 = 1;
  if (v17)
  {
    v27 = 0;
  }

  v28 = (v41.malloc)(factor[1].workspaceSize_Double + factor[1].factorSize_Float * a2[v27]);
  if (!v28)
  {
    if (reportError)
    {
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
      v42 = 0u;
      memset(&v41, 0, sizeof(v41));
      snprintf(&v41, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
      return (reportError)(&v41);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC3F4();
    }

    goto LABEL_4;
  }

  v33 = v28;
  _SparseSolveOpaque_Complex_Float(factor, a2, a3, v28, v29, v30, v31, v32);
  return (free)(v33);
}

void SparseSolve(SparseOpaqueSymbolicFactorization *factor, unsigned int *a2, _OWORD *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v18, &factor->columnCount);
  reportError = v18.reportError;
  if (*p_columnCount || !factor->workspaceSize_Double || factor->status || !factor[1].workspaceSize_Float)
  {
    if (v18.reportError)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      memset(&v18, 0, sizeof(v18));
      snprintf(&v18, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_9:
      (reportError)(&v18);
      return;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

LABEL_4:
    _SparseTrap();
  }

  v12 = *a2;
  if (a2[2] < *a2)
  {
    if (v18.reportError)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      memset(&v18, 0, sizeof(v18));
      snprintf(&v18, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC46C();
    }

    goto LABEL_4;
  }

  if (a2[3])
  {
    v13 = 0;
    v12 = a2[1];
  }

  else
  {
    v13 = 1;
  }

  if (a2[v13] <= 0)
  {
    if (v18.reportError)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      memset(&v18, 0, sizeof(v18));
      snprintf(&v18, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366FFDD4();
    }

    goto LABEL_4;
  }

  workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
  v15 = *&factor->attributes * workspaceSize_Float_low;
  v16 = LODWORD(factor->factorization) * workspaceSize_Float_low;
  if (v15 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  if (v12 != v17)
  {
    if (v18.reportError)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      memset(&v18, 0, sizeof(v18));
      snprintf(&v18, 0x100uLL, "%s (%dx%d) is not consistent with largest dimension of matrix factorization %s (%d).\n");
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC360();
    }

    goto LABEL_4;
  }

  _SparseSolveOpaque_Complex_Double(factor, 0, a2, a3, v7, v8, v9, v10);
}

void SparseSolve(SparseOpaqueSymbolicFactorization *factor, unsigned int *a2, unsigned int *a3, _OWORD *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v35, &factor->columnCount);
  reportError = v35.reportError;
  if (*p_columnCount || !factor->workspaceSize_Double || factor->status || !factor[1].workspaceSize_Float)
  {
    if (v35.reportError)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      memset(&v35, 0, sizeof(v35));
      snprintf(&v35, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_9:
      (reportError)(&v35);
      return;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

    goto LABEL_4;
  }

  v14 = LOWORD(factor->rowCount) ^ WORD2(factor->factorization);
  workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
  v16 = *&factor->attributes * workspaceSize_Float_low;
  v17 = LODWORD(factor->factorization) * workspaceSize_Float_low;
  if (v14)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  if (v14)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17;
  }

  if (BYTE1(factor->workspaceSize_Float) == 40)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v21 = *a2;
  if (a2[2] < *a2)
  {
    if (v35.reportError)
    {
      goto LABEL_29;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC574();
    }

    goto LABEL_4;
  }

  if (a3[2] < *a3)
  {
    if (v35.reportError)
    {
LABEL_29:
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      memset(&v35, 0, sizeof(v35));
      snprintf(&v35, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

LABEL_4:
    _SparseTrap();
  }

  if (a2[3])
  {
    v22 = 1;
  }

  else
  {
    v22 = 0;
    v21 = a2[1];
  }

  v23 = (a3[3] & 1) == 0;
  v24 = a3[v23];
  v25 = a2[v22];
  v26 = (a3[3] & 1) != 0;
  v27 = a3[v26];
  if (v21 != v24)
  {
    if (v35.reportError)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      memset(&v35, 0, sizeof(v35));
      snprintf(&v35, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
      goto LABEL_9;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v35.control = 136316418;
    *&v35.orderMethod = "B";
    WORD2(v35.order) = 1024;
    *(&v35.order + 6) = v25;
    WORD1(v35.ignoreRowsAndColumns) = 1024;
    HIDWORD(v35.ignoreRowsAndColumns) = v21;
    LOWORD(v35.malloc) = 2080;
    *(&v35.malloc + 2) = "X";
    WORD1(v35.free) = 1024;
    HIDWORD(v35.free) = v27;
    LOWORD(v35.reportError) = 1024;
    *(&v35.reportError + 2) = v24;
    v28 = MEMORY[0x277D86220];
    v29 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    goto LABEL_65;
  }

  if (v21 <= 0)
  {
    if (v35.reportError)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      memset(&v35, 0, sizeof(v35));
      snprintf(&v35, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC4F0();
    }

    goto LABEL_4;
  }

  if (v25 != v20)
  {
    if (v35.reportError)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      memset(&v35, 0, sizeof(v35));
      v30 = "B";
LABEL_58:
      snprintf(&v35, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v30);
      goto LABEL_9;
    }

    v31 = v20;
    v32 = v19;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v35.control = 136316418;
    *&v35.orderMethod = "B";
    WORD2(v35.order) = 1024;
    *(&v35.order + 6) = v25;
    WORD1(v35.ignoreRowsAndColumns) = 1024;
    HIDWORD(v35.ignoreRowsAndColumns) = v21;
    LOWORD(v35.malloc) = 2080;
    *(&v35.malloc + 2) = "matrix factorization Factored";
    WORD1(v35.free) = 1024;
    HIDWORD(v35.free) = v32;
    LOWORD(v35.reportError) = 1024;
    *(&v35.reportError + 2) = v31;
    v28 = MEMORY[0x277D86220];
    v29 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
LABEL_65:
    _os_log_error_impl(&dword_2366B9000, v28, OS_LOG_TYPE_ERROR, v29, &v35, 0x2Eu);
    goto LABEL_4;
  }

  if (v27 != v19)
  {
    if (v35.reportError)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      memset(&v35, 0, sizeof(v35));
      v30 = "X";
      goto LABEL_58;
    }

    v33 = v20;
    v34 = v19;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v35.control = 136316418;
    *&v35.orderMethod = "X";
    WORD2(v35.order) = 1024;
    *(&v35.order + 6) = v27;
    WORD1(v35.ignoreRowsAndColumns) = 1024;
    HIDWORD(v35.ignoreRowsAndColumns) = v21;
    LOWORD(v35.malloc) = 2080;
    *(&v35.malloc + 2) = "matrix factorization Factored";
    WORD1(v35.free) = 1024;
    HIDWORD(v35.free) = v34;
    LOWORD(v35.reportError) = 1024;
    *(&v35.reportError + 2) = v33;
    v28 = MEMORY[0x277D86220];
    v29 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_65;
  }

  _SparseSolveOpaque_Complex_Double(factor, a2, a3, a4, v9, v10, v11, v12);
}

uint64_t SparseSolve(SparseOpaqueSymbolicFactorization *factor, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  v6 = a2;
  _SparseGetOptionsFromSymbolicFactor(&v21, &factor->columnCount);
  reportError = v21.reportError;
  if (*p_columnCount || !factor->workspaceSize_Double || factor->status || !factor[1].workspaceSize_Float)
  {
    if (!v21.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F736C();
      }

      goto LABEL_4;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    memset(&v21, 0, sizeof(v21));
    snprintf(&v21, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
    return (reportError)(&v21);
  }

  workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
  v10 = *&factor->attributes * workspaceSize_Float_low;
  v11 = LODWORD(factor->factorization) * workspaceSize_Float_low;
  if (v10 > v11)
  {
    v11 = v10;
  }

  if (v11 != v6)
  {
    if (!v21.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC5F8();
      }

      goto LABEL_4;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    memset(&v21, 0, sizeof(v21));
    snprintf(&v21, 0x100uLL, "%s.count (%d) is not equal to largest dimension of matrix factorization %s.\n");
    return (reportError)(&v21);
  }

  free = v21.free;
  v19[0] = v6;
  v19[1] = 1;
  v19[2] = v6;
  v19[3] = 0;
  v20 = a3;
  v13 = (v21.malloc)(factor[1].factorSize_Float + factor[1].workspaceSize_Double);
  if (!v13)
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
      v26 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      memset(&v21, 0, sizeof(v21));
      snprintf(&v21, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
      return (reportError)(&v21);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC3F4();
    }

LABEL_4:
    _SparseTrap();
  }

  v18 = v13;
  _SparseSolveOpaque_Complex_Double(factor, 0, v19, v13, v14, v15, v16, v17);
  return (free)(v18);
}

{
  v35 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  v6 = a2;
  _SparseGetOptionsFromSymbolicFactor(&v21, &factor->columnCount);
  reportError = v21.reportError;
  if (*p_columnCount || !factor->workspaceSize_Double || factor->status || !factor[1].workspaceSize_Float)
  {
    if (!v21.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F736C();
      }

      goto LABEL_4;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    memset(&v21, 0, sizeof(v21));
    snprintf(&v21, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
    return (reportError)(&v21);
  }

  workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
  v10 = *&factor->attributes * workspaceSize_Float_low;
  v11 = LODWORD(factor->factorization) * workspaceSize_Float_low;
  if (v10 > v11)
  {
    v11 = v10;
  }

  if (v11 != v6)
  {
    if (!v21.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC5F8();
      }

      goto LABEL_4;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    memset(&v21, 0, sizeof(v21));
    snprintf(&v21, 0x100uLL, "%s.count (%d) is not equal to largest dimension of matrix factorization %s.\n");
    return (reportError)(&v21);
  }

  free = v21.free;
  v19[0] = v6;
  v19[1] = 1;
  v19[2] = v6;
  v19[3] = 0;
  v20 = a3;
  v13 = (v21.malloc)(factor[1].factorSize_Float + factor[1].workspaceSize_Double);
  if (!v13)
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
      v26 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      memset(&v21, 0, sizeof(v21));
      snprintf(&v21, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
      return (reportError)(&v21);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC3F4();
    }

LABEL_4:
    _SparseTrap();
  }

  v18 = v13;
  _SparseSolveOpaque_Complex_Float(factor, 0, v19, v13, v14, v15, v16, v17);
  return (free)(v18);
}

uint64_t SparseSolve(SparseOpaqueSymbolicFactorization *factor, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  v8 = a4;
  v10 = a2;
  _SparseGetOptionsFromSymbolicFactor(&v33, &factor->columnCount);
  reportError = v33.reportError;
  if (*p_columnCount || !factor->workspaceSize_Double || factor->status || !factor[1].workspaceSize_Float)
  {
    if (!v33.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F736C();
      }

      goto LABEL_4;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    memset(&v33, 0, sizeof(v33));
    snprintf(&v33, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
    return (reportError)(&v33);
  }

  v13 = LOWORD(factor->rowCount) ^ WORD2(factor->factorization);
  workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
  v15 = *&factor->attributes * workspaceSize_Float_low;
  v16 = LODWORD(factor->factorization) * workspaceSize_Float_low;
  v17 = (v13 & 1) == 0;
  if (v13)
  {
    v18 = v16;
  }

  else
  {
    v18 = v15;
  }

  if (v17)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  if (BYTE1(factor->workspaceSize_Float) == 40)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  if (v19 != v8)
  {
    if (!v33.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC68C();
      }

      goto LABEL_4;
    }

    goto LABEL_31;
  }

  if (v20 != v10)
  {
    if (!v33.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC71C();
      }

      goto LABEL_4;
    }

LABEL_31:
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    memset(&v33, 0, sizeof(v33));
    snprintf(&v33, 0x100uLL, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n");
    return (reportError)(&v33);
  }

  free = v33.free;
  v31[0] = v10;
  v31[1] = 1;
  v31[2] = v10;
  v31[3] = 0;
  v32 = a3;
  v29[0] = v8;
  v29[1] = 1;
  v29[2] = v8;
  v29[3] = 0;
  v22 = factor[1].factorSize_Float + factor[1].workspaceSize_Double;
  v30 = a5;
  v23 = (v33.malloc)(v22);
  if (!v23)
  {
    if (reportError)
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      memset(&v33, 0, sizeof(v33));
      snprintf(&v33, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
      return (reportError)(&v33);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC3F4();
    }

LABEL_4:
    _SparseTrap();
  }

  v28 = v23;
  _SparseSolveOpaque_Complex_Double(factor, v31, v29, v23, v24, v25, v26, v27);
  return (free)(v28);
}

{
  v47 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  v8 = a4;
  v10 = a2;
  _SparseGetOptionsFromSymbolicFactor(&v33, &factor->columnCount);
  reportError = v33.reportError;
  if (*p_columnCount || !factor->workspaceSize_Double || factor->status || !factor[1].workspaceSize_Float)
  {
    if (!v33.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F736C();
      }

      goto LABEL_4;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    memset(&v33, 0, sizeof(v33));
    snprintf(&v33, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
    return (reportError)(&v33);
  }

  v13 = LOWORD(factor->rowCount) ^ WORD2(factor->factorization);
  workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
  v15 = *&factor->attributes * workspaceSize_Float_low;
  v16 = LODWORD(factor->factorization) * workspaceSize_Float_low;
  v17 = (v13 & 1) == 0;
  if (v13)
  {
    v18 = v16;
  }

  else
  {
    v18 = v15;
  }

  if (v17)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  if (BYTE1(factor->workspaceSize_Float) == 40)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  if (v19 != v8)
  {
    if (!v33.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC68C();
      }

      goto LABEL_4;
    }

    goto LABEL_31;
  }

  if (v20 != v10)
  {
    if (!v33.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC71C();
      }

      goto LABEL_4;
    }

LABEL_31:
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    memset(&v33, 0, sizeof(v33));
    snprintf(&v33, 0x100uLL, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n");
    return (reportError)(&v33);
  }

  free = v33.free;
  v31[0] = v10;
  v31[1] = 1;
  v31[2] = v10;
  v31[3] = 0;
  v32 = a3;
  v29[0] = v8;
  v29[1] = 1;
  v29[2] = v8;
  v29[3] = 0;
  v22 = factor[1].factorSize_Float + factor[1].workspaceSize_Double;
  v30 = a5;
  v23 = (v33.malloc)(v22);
  if (!v23)
  {
    if (reportError)
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      memset(&v33, 0, sizeof(v33));
      snprintf(&v33, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
      return (reportError)(&v33);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC3F4();
    }

LABEL_4:
    _SparseTrap();
  }

  v28 = v23;
  _SparseSolveOpaque_Complex_Float(factor, v31, v29, v23, v24, v25, v26, v27);
  return (free)(v28);
}

void SparseSolve(SparseOpaqueSymbolicFactorization *factor, uint64_t a2, int *a3, _OWORD *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  v8 = a2;
  _SparseGetOptionsFromSymbolicFactor(&v17, &factor->columnCount);
  reportError = v17.reportError;
  if (*p_columnCount || !factor->workspaceSize_Double || factor->status || !factor[1].workspaceSize_Float)
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
LABEL_9:
      (reportError)(&v17);
      return;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

LABEL_4:
    _SparseTrap();
  }

  workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
  v15 = *&factor->attributes * workspaceSize_Float_low;
  v16 = LODWORD(factor->factorization) * workspaceSize_Float_low;
  if (v15 > v16)
  {
    v16 = v15;
  }

  if (v16 != v8)
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
      snprintf(&v17, 0x100uLL, "%s.count (%d) is not equal to largest dimension of matrix factorization %s.\n");
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC5F8();
    }

    goto LABEL_4;
  }

  v17.control = v8;
  *&v17.orderMethod = 1;
  v17.order = v8;
  v17.ignoreRowsAndColumns = a3;
  _SparseSolveOpaque_Complex_Double(factor, 0, &v17, a4, v9, v10, v11, v12);
}

void SparseSolve(SparseOpaqueSymbolicFactorization *factor, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  v42 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  v10 = a4;
  v12 = a2;
  _SparseGetOptionsFromSymbolicFactor(&v28, &factor->columnCount);
  reportError = v28.reportError;
  if (*p_columnCount || !factor->workspaceSize_Double || factor->status || !factor[1].workspaceSize_Float)
  {
    if (v28.reportError)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      memset(&v28, 0, sizeof(v28));
      snprintf(&v28, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_9:
      (reportError)(&v28);
      return;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

    goto LABEL_4;
  }

  v18 = LOWORD(factor->rowCount) ^ WORD2(factor->factorization);
  workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
  v20 = *&factor->attributes * workspaceSize_Float_low;
  v21 = LODWORD(factor->factorization) * workspaceSize_Float_low;
  v22 = (v18 & 1) == 0;
  if (v18)
  {
    v23 = v21;
  }

  else
  {
    v23 = v20;
  }

  if (v22)
  {
    v24 = v21;
  }

  else
  {
    v24 = v20;
  }

  if (BYTE1(factor->workspaceSize_Float) == 40)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  if (v24 != v10)
  {
    if (v28.reportError)
    {
      goto LABEL_30;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC68C();
    }

    goto LABEL_4;
  }

  if (v25 != v12)
  {
    if (v28.reportError)
    {
LABEL_30:
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      memset(&v28, 0, sizeof(v28));
      snprintf(&v28, 0x100uLL, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n");
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC71C();
    }

LABEL_4:
    _SparseTrap();
  }

  v28.control = v12;
  *&v28.orderMethod = 1;
  v28.order = v12;
  v28.ignoreRowsAndColumns = a3;
  v26[0] = v10;
  v26[1] = 1;
  v26[2] = v10;
  v26[3] = 0;
  v27 = a5;
  _SparseSolveOpaque_Complex_Double(factor, &v28, v26, a6, v13, v14, v15, v16);
}

void SparseRefactor(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (*a1 != *(a2 + 12) || *(a1 + 4) != *(a2 + 16) || *(a1 + 28) != *(a2 + 24) || (v5 = *(a1 + 24), ((*(a2 + 20) ^ v5) & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC7AC();
    }

    _SparseTrap();
  }

  v6 = *(a2 + 25);
  if ((v6 - 80) >= 4)
  {
    if ((v6 - 40) > 1)
    {
      if ((v5 & 0x1C) == 0xC)
      {

        _SparseRefactorSymmetric_Complex_Double(a1, a2, a3, a4);
      }

      else
      {

        _SparseRefactorHermitian_Complex_Double(a1, a2, a3, a4);
      }
    }

    else
    {

      _SparseRefactorQR_Complex_Double(a1, a2, a3, a4);
    }
  }

  else
  {

    _SparseRefactorLU_Complex_Double(a1, a2, a3, a4);
  }
}

{
  if (*a1 != *(a2 + 12) || *(a1 + 4) != *(a2 + 16) || *(a1 + 28) != *(a2 + 24) || (v5 = *(a1 + 24), ((*(a2 + 20) ^ v5) & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC7AC();
    }

    _SparseTrap();
  }

  v6 = *(a2 + 25);
  if ((v6 - 80) >= 4)
  {
    if ((v6 - 40) > 1)
    {
      if ((v5 & 0x1C) == 0xC)
      {

        _SparseRefactorSymmetric_Complex_Float(a1, a2, a3, a4);
      }

      else
      {

        _SparseRefactorHermitian_Complex_Float(a1, a2, a3, a4);
      }
    }

    else
    {

      _SparseRefactorQR_Complex_Float(a1, a2, a3, a4);
    }
  }

  else
  {

    _SparseRefactorLU_Complex_Float(a1, a2, a3, a4);
  }
}

uint64_t SparseRefactor(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) || !*(a2 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD5A8();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v15, (a2 + 8));
  free = v15.free;
  reportError = v15.reportError;
  v8 = (v15.malloc)(2 * *(a2 + 48));
  if (v8)
  {
    v9 = v8;
    v10 = *(a1 + 16);
    *&v15.control = *a1;
    *&v15.ignoreRowsAndColumns = v10;
    v15.free = *(a1 + 32);
    v11 = a3[1];
    v14[0] = *a3;
    v14[1] = v11;
    SparseRefactor(&v15, a2, v14, v8);
    return (free)(v9);
  }

  *a2 = -3;
  if (!reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CDAD0();
    }

LABEL_4:
    _SparseTrap();
  }

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
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v13 = 2 * *(a2 + 48);
  memset(&v15, 0, sizeof(v15));
  snprintf(&v15, 0x100uLL, "Failed to allocate workspace of size %ld.", v13);
  return (reportError)(&v15);
}

{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) || !*(a2 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD5A8();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v15, (a2 + 8));
  free = v15.free;
  reportError = v15.reportError;
  v8 = (v15.malloc)(2 * *(a2 + 40));
  if (v8)
  {
    v9 = v8;
    v10 = *(a1 + 16);
    *&v15.control = *a1;
    *&v15.ignoreRowsAndColumns = v10;
    v15.free = *(a1 + 32);
    v11 = a3[1];
    v14[0] = *a3;
    v14[1] = v11;
    SparseRefactor(&v15, a2, v14, v8);
    return (free)(v9);
  }

  *a2 = -3;
  if (!reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CDAD0();
    }

LABEL_4:
    _SparseTrap();
  }

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
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v13 = 2 * *(a2 + 40);
  memset(&v15, 0, sizeof(v15));
  snprintf(&v15, 0x100uLL, "Failed to allocate workspace of size %ld.", v13);
  return (reportError)(&v15);
}

void SparseRefactor(uint64_t a1, uint64_t a2, char *a3)
{
  if (*(a2 + 8) || !*(a2 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    _SparseTrap();
  }

  v10 = 0u;
  v11 = 0u;
  _SparseGetOptionsFromNumericFactor_Complex_Double(a2, &v10);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = *(a1 + 32);
  v7[0] = v10;
  v7[1] = v11;
  SparseRefactor(v8, a2, v7, a3);
}

{
  if (*(a2 + 8) || !*(a2 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    _SparseTrap();
  }

  v10 = 0u;
  v11 = 0u;
  _SparseGetOptionsFromNumericFactor_Complex_Float(a2, &v10);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = *(a1 + 32);
  v7[0] = v10;
  v7[1] = v11;
  SparseRefactor(v8, a2, v7, a3);
}

uint64_t SparseRefactor(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) || !*(a2 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD5EC();
    }

    _SparseTrap();
  }

  v9 = 0u;
  v10 = 0u;
  _SparseGetOptionsFromNumericFactor_Complex_Double(a2, &v9);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v8 = *(a1 + 32);
  v6[0] = v9;
  v6[1] = v10;
  return SparseRefactor(v7, a2, v6);
}

{
  if (*(a2 + 8) || !*(a2 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD5EC();
    }

    _SparseTrap();
  }

  v9 = 0u;
  v10 = 0u;
  _SparseGetOptionsFromNumericFactor_Complex_Float(a2, &v9);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v8 = *(a1 + 32);
  v6[0] = v9;
  v6[1] = v10;
  return SparseRefactor(v7, a2, v6);
}

uint64_t SparseUpdateFactor(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (*a5 != *(a2 + 12) || *(a5 + 4) != *(a2 + 16) || *(a5 + 28) != *(a2 + 24) || ((*(a2 + 20) ^ *(a5 + 24)) & 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC93C();
    }

LABEL_9:
    _SparseTrap();
  }

  if (*(a2 + 25) - 81 > 2)
  {
    *a2 = -4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD630();
    }

    goto LABEL_9;
  }

  v5 = *(a5 + 16);
  v7[0] = *a5;
  v7[1] = v5;
  v8 = *(a5 + 32);
  return _SparseUpdatePartialRefactorLU_Complex_Double(a2, a3, a4, v7);
}

__n128 SparseCreateSubfactor@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) || !*(a2 + 32) || *a2 || !*(a2 + 80))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD7C8();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(v24, (a2 + 8));
  v6 = *&v24[40];
  v7 = *(a2 + 25);
  if (a1 > 4)
  {
    if ((a1 - 7) < 2)
    {
      if ((v7 & 0xFE) == 0x28)
      {
        v9 = 4;
LABEL_36:
        _SparseRetainNumeric_Complex_Double(a2);
        v22 = 0;
        v23 = 0;
        v11 = *(a2 + 80);
        *&v24[64] = *(a2 + 64);
        *&v24[80] = v11;
        *&v24[96] = *(a2 + 96);
        v12 = *(a2 + 16);
        *v24 = *a2;
        *&v24[16] = v12;
        v13 = *(a2 + 48);
        *&v24[32] = *(a2 + 32);
        *&v24[48] = v13;
        _SparseGetWorkspaceRequired_Complex_Double(a1, v24, &v23, &v22);
        v14 = *(a2 + 32);
        *(a3 + 56) = *(a2 + 48);
        v15 = *(a2 + 80);
        *(a3 + 72) = *(a2 + 64);
        *(a3 + 88) = v15;
        result = *a2;
        v17 = *(a2 + 16);
        *(a3 + 8) = *a2;
        *(a3 + 24) = v17;
        *a3 = v9;
        *(a3 + 2) = 0;
        *(a3 + 4) = a1;
        v18 = *(a2 + 96);
        *(a3 + 40) = v14;
        v19 = v23;
        *(a3 + 104) = v18;
        *(a3 + 112) = v19;
        *(a3 + 120) = v22;
        return result;
      }

      if (!*&v24[40])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CD674();
        }

        goto LABEL_4;
      }

      memset(&v24[66], 0, 190);
      strcpy(&v24[64], "\n");
      v10 = "Subfactor Type only valid for QR and CholeskyAtA factorizations.\n";
LABEL_44:
      v20 = *(v10 + 1);
      *v24 = *v10;
      *&v24[16] = v20;
      v21 = *(v10 + 3);
      *&v24[32] = *(v10 + 2);
      *&v24[48] = v21;
      goto LABEL_45;
    }

    if (a1 != 5)
    {
      if (a1 != 6)
      {
LABEL_37:
        if (*&v24[40])
        {
          memset(&v24[24], 0, 232);
          strcpy(v24, "Invalid subfactor type.");
          goto LABEL_45;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CD784();
        }

        goto LABEL_4;
      }

      v8 = v7 - 40;
      if (v8 <= 0x2B && ((1 << v8) & 0xE0000000001) != 0)
      {
        goto LABEL_35;
      }

      if (*&v24[40])
      {
        memset(&v24[58], 0, 198);
        strcpy(v24, "SparseSubfactorQ only valid for QR or LU factorizations.\n");
        goto LABEL_45;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD6B8();
      }

LABEL_4:
      _SparseTrap();
    }

    if (v7 < 5 && ((0x1Du >> v7) & 1) != 0)
    {
      goto LABEL_35;
    }

    if (!*&v24[40])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

LABEL_41:
      sub_2367CCB20();
      goto LABEL_4;
    }

LABEL_43:
    memset(&v24[66], 0, 190);
    strcpy(&v24[64], "\n");
    v10 = "Subfactor Type only valid for Cholesky and LDL^T factorizations.\n";
    goto LABEL_44;
  }

  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (v7 - 2 < 3)
      {
        goto LABEL_35;
      }

      if (*&v24[40])
      {
        memset(&v24[53], 0, 203);
        strcpy(v24, "Subfactor Type only valid for LDL^T factorizations.\n");
        goto LABEL_45;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD6FC();
      }

      goto LABEL_4;
    }

    if (v7 < 5 && ((0x1Du >> v7) & 1) != 0)
    {
      v9 = 6;
      goto LABEL_36;
    }

    if (!*&v24[40])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }

    goto LABEL_43;
  }

  if (a1 == 1)
  {
LABEL_35:
    v9 = 2;
    goto LABEL_36;
  }

  if (a1 != 2)
  {
    goto LABEL_37;
  }

  if (v7 - 2 < 3)
  {
    goto LABEL_35;
  }

  if (!*&v24[40])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD740();
    }

    goto LABEL_4;
  }

  memset(&v24[59], 0, 197);
  strcpy(v24, "Subfactor Type only valid for LDL^T or LU factorizations.\n");
LABEL_45:
  v6(v24);
  result.n128_u64[0] = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 8) = -3;
  *(a3 + 16) = -3;
  return result;
}

{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) || !*(a2 + 32) || *a2 || !*(a2 + 80))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD7C8();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(v24, (a2 + 8));
  v6 = *&v24[40];
  v7 = *(a2 + 25);
  if (a1 > 4)
  {
    if ((a1 - 7) < 2)
    {
      if ((v7 & 0xFE) == 0x28)
      {
        v9 = 4;
LABEL_36:
        _SparseRetainNumeric_Complex_Float(a2);
        v22 = 0;
        v23 = 0;
        v11 = *(a2 + 80);
        *&v24[64] = *(a2 + 64);
        *&v24[80] = v11;
        *&v24[96] = *(a2 + 96);
        v12 = *(a2 + 16);
        *v24 = *a2;
        *&v24[16] = v12;
        v13 = *(a2 + 48);
        *&v24[32] = *(a2 + 32);
        *&v24[48] = v13;
        _SparseGetWorkspaceRequired_Complex_Float(a1, v24, &v23, &v22);
        v14 = *(a2 + 32);
        *(a3 + 56) = *(a2 + 48);
        v15 = *(a2 + 80);
        *(a3 + 72) = *(a2 + 64);
        *(a3 + 88) = v15;
        result = *a2;
        v17 = *(a2 + 16);
        *(a3 + 8) = *a2;
        *(a3 + 24) = v17;
        *a3 = v9;
        *(a3 + 2) = 0;
        *(a3 + 4) = a1;
        v18 = *(a2 + 96);
        *(a3 + 40) = v14;
        v19 = v23;
        *(a3 + 104) = v18;
        *(a3 + 112) = v19;
        *(a3 + 120) = v22;
        return result;
      }

      if (!*&v24[40])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CD674();
        }

        goto LABEL_4;
      }

      memset(&v24[66], 0, 190);
      strcpy(&v24[64], "\n");
      v10 = "Subfactor Type only valid for QR and CholeskyAtA factorizations.\n";
LABEL_44:
      v20 = *(v10 + 1);
      *v24 = *v10;
      *&v24[16] = v20;
      v21 = *(v10 + 3);
      *&v24[32] = *(v10 + 2);
      *&v24[48] = v21;
      goto LABEL_45;
    }

    if (a1 != 5)
    {
      if (a1 != 6)
      {
LABEL_37:
        if (*&v24[40])
        {
          memset(&v24[24], 0, 232);
          strcpy(v24, "Invalid subfactor type.");
          goto LABEL_45;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CD784();
        }

        goto LABEL_4;
      }

      v8 = v7 - 40;
      if (v8 <= 0x2B && ((1 << v8) & 0xE0000000001) != 0)
      {
        goto LABEL_35;
      }

      if (*&v24[40])
      {
        memset(&v24[58], 0, 198);
        strcpy(v24, "SparseSubfactorQ only valid for QR or LU factorizations.\n");
        goto LABEL_45;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD6B8();
      }

LABEL_4:
      _SparseTrap();
    }

    if (v7 < 5 && ((0x1Du >> v7) & 1) != 0)
    {
      goto LABEL_35;
    }

    if (!*&v24[40])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

LABEL_41:
      sub_2367CCB20();
      goto LABEL_4;
    }

LABEL_43:
    memset(&v24[66], 0, 190);
    strcpy(&v24[64], "\n");
    v10 = "Subfactor Type only valid for Cholesky and LDL^T factorizations.\n";
    goto LABEL_44;
  }

  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (v7 - 2 < 3)
      {
        goto LABEL_35;
      }

      if (*&v24[40])
      {
        memset(&v24[53], 0, 203);
        strcpy(v24, "Subfactor Type only valid for LDL^T factorizations.\n");
        goto LABEL_45;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD6FC();
      }

      goto LABEL_4;
    }

    if (v7 < 5 && ((0x1Du >> v7) & 1) != 0)
    {
      v9 = 6;
      goto LABEL_36;
    }

    if (!*&v24[40])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }

    goto LABEL_43;
  }

  if (a1 == 1)
  {
LABEL_35:
    v9 = 2;
    goto LABEL_36;
  }

  if (a1 != 2)
  {
    goto LABEL_37;
  }

  if (v7 - 2 < 3)
  {
    goto LABEL_35;
  }

  if (!*&v24[40])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD740();
    }

    goto LABEL_4;
  }

  memset(&v24[59], 0, 197);
  strcpy(v24, "Subfactor Type only valid for LDL^T or LU factorizations.\n");
LABEL_45:
  v6(v24);
  result.n128_u64[0] = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 8) = -3;
  *(a3 + 16) = -3;
  return result;
}

uint64_t SparseSolve(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCA8();
    }

    goto LABEL_25;
  }

  _SparseGetOptionsFromSymbolicFactor(v21, (a1 + 16));
  v4 = *&v21[40];
  v5 = *(a2 + 12);
  v6 = (v5 & 1) == 0;
  v7 = 4;
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
  if (v6)
  {
    v7 = 0;
  }

  if (v9 <= 0)
  {
    if (!*&v21[40])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCBEC();
      }

      goto LABEL_25;
    }

    memset(&v21[34], 0, 222);
    strcpy(v21, "XB must have non-zero dimension.\n");
  }

  else
  {
    v10 = *(a2 + v7);
    v11 = *(a1 + 32);
    v12 = *(a1 + 20) * v11;
    v13 = *(a1 + 24) * v11;
    if (v12 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (v12 > v13)
    {
      v13 = v12;
    }

    if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    if (v10 == v16)
    {
      v17 = *&v21[32];
      v18 = (*&v21[24])(*(a1 + 112) + *(a1 + 120) * v9);
      if (v18)
      {
        v19 = v18;
        _SparseSolveSubfactor_Complex_Double(a1, 0, a2, v18);
        return v17(v19);
      }

      if (v4)
      {
        memset(v21, 0, sizeof(v21));
        snprintf(v21, 0x100uLL, "Failed to allocate workspace of size %ld.\n");
        return v4(v21);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CBC20();
      }

LABEL_25:
      _SparseTrap();
    }

    if (!*&v21[40])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCC30();
      }

      goto LABEL_25;
    }

    memset(v21, 0, sizeof(v21));
    snprintf(v21, 0x100uLL, "XB dimension (%d) must match maximum subfactor dimension (%d).\n");
  }

  return v4(v21);
}

{
  v22 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCA8();
    }

    goto LABEL_25;
  }

  _SparseGetOptionsFromSymbolicFactor(v21, (a1 + 16));
  v4 = *&v21[40];
  v5 = *(a2 + 12);
  v6 = (v5 & 1) == 0;
  v7 = 4;
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
  if (v6)
  {
    v7 = 0;
  }

  if (v9 <= 0)
  {
    if (!*&v21[40])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCBEC();
      }

      goto LABEL_25;
    }

    memset(&v21[34], 0, 222);
    strcpy(v21, "XB must have non-zero dimension.\n");
  }

  else
  {
    v10 = *(a2 + v7);
    v11 = *(a1 + 32);
    v12 = *(a1 + 20) * v11;
    v13 = *(a1 + 24) * v11;
    if (v12 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (v12 > v13)
    {
      v13 = v12;
    }

    if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    if (v10 == v16)
    {
      v17 = *&v21[32];
      v18 = (*&v21[24])(*(a1 + 112) + *(a1 + 120) * v9);
      if (v18)
      {
        v19 = v18;
        _SparseSolveSubfactor_Complex_Float(a1, 0, a2, v18);
        return v17(v19);
      }

      if (v4)
      {
        memset(v21, 0, sizeof(v21));
        snprintf(v21, 0x100uLL, "Failed to allocate workspace of size %ld.\n");
        return v4(v21);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CBC20();
      }

LABEL_25:
      _SparseTrap();
    }

    if (!*&v21[40])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCC30();
      }

      goto LABEL_25;
    }

    memset(v21, 0, sizeof(v21));
    snprintf(v21, 0x100uLL, "XB dimension (%d) must match maximum subfactor dimension (%d).\n");
  }

  return v4(v21);
}

uint64_t SparseSolve(__int16 *a1, __int128 *a2, unsigned int *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCA8();
    }

    goto LABEL_69;
  }

  _SparseGetOptionsFromSymbolicFactor(&v30, (a1 + 8));
  reportError = v30.reportError;
  v7 = *a1;
  v8 = *(a1 + 32);
  v9 = *(a1 + 5) * v8;
  v10 = *(a1 + 6) * v8;
  if (v9 >= v10)
  {
    v11 = *(a1 + 6) * v8;
  }

  else
  {
    v11 = *(a1 + 5) * v8;
  }

  if (v9 <= v10)
  {
    v9 = v10;
  }

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  if (v7)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = *a2;
  if (*(a2 + 2) < *a2)
  {
    if (v30.reportError)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC574();
    }

    goto LABEL_69;
  }

  if (a3[2] < *a3)
  {
    if (v30.reportError)
    {
LABEL_26:
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
      return (reportError)(&v30);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

LABEL_69:
    _SparseTrap();
  }

  if (*(a2 + 6))
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
    v16 = *(a2 + 1);
  }

  v19 = (a3[3] & 1) == 0;
  v20 = a3[v19];
  v21 = *(a2 + v18);
  v22 = (a3[3] & 1) != 0;
  v23 = a3[v22];
  if (v16 != v20)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
      return (reportError)(&v30);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    v30.control = 136316418;
    *&v30.orderMethod = "B";
    WORD2(v30.order) = 1024;
    *(&v30.order + 6) = v21;
    WORD1(v30.ignoreRowsAndColumns) = 1024;
    HIDWORD(v30.ignoreRowsAndColumns) = v16;
    LOWORD(v30.malloc) = 2080;
    *(&v30.malloc + 2) = "X";
    WORD1(v30.free) = 1024;
    HIDWORD(v30.free) = v23;
    LOWORD(v30.reportError) = 1024;
    *(&v30.reportError + 2) = v20;
    v27 = MEMORY[0x277D86220];
    v28 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    goto LABEL_66;
  }

  if (v16 <= 0)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
      return (reportError)(&v30);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC4F0();
    }

    goto LABEL_69;
  }

  if (v21 != v15)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      v29 = "B";
LABEL_57:
      snprintf(&v30, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v29);
      return (reportError)(&v30);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    v30.control = 136316418;
    *&v30.orderMethod = "B";
    WORD2(v30.order) = 1024;
    *(&v30.order + 6) = v21;
    WORD1(v30.ignoreRowsAndColumns) = 1024;
    HIDWORD(v30.ignoreRowsAndColumns) = v16;
    LOWORD(v30.malloc) = 2080;
    *(&v30.malloc + 2) = "subfactor dimension";
    WORD1(v30.free) = 1024;
    HIDWORD(v30.free) = v14;
    LOWORD(v30.reportError) = 1024;
    *(&v30.reportError + 2) = v15;
    v27 = MEMORY[0x277D86220];
    v28 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
LABEL_66:
    _os_log_error_impl(&dword_2366B9000, v27, OS_LOG_TYPE_ERROR, v28, &v30, 0x2Eu);
    goto LABEL_69;
  }

  if (v23 != v14)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      v29 = "X";
      goto LABEL_57;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    v30.control = 136316418;
    *&v30.orderMethod = "X";
    WORD2(v30.order) = 1024;
    *(&v30.order + 6) = v23;
    WORD1(v30.ignoreRowsAndColumns) = 1024;
    HIDWORD(v30.ignoreRowsAndColumns) = v16;
    LOWORD(v30.malloc) = 2080;
    *(&v30.malloc + 2) = "subfactor dimension";
    WORD1(v30.free) = 1024;
    HIDWORD(v30.free) = v14;
    LOWORD(v30.reportError) = 1024;
    *(&v30.reportError + 2) = v15;
    v27 = MEMORY[0x277D86220];
    v28 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_66;
  }

  free = v30.free;
  v25 = (v30.malloc)(*(a1 + 14) + *(a1 + 15) * v16);
  if (!v25)
  {
    if (reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "Failed to allocate workspace of size %ld.\n");
      return (reportError)(&v30);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBC20();
    }

    goto LABEL_69;
  }

  v26 = v25;
  _SparseSolveSubfactor_Complex_Double(a1, a2, a3, v25);
  return (free)(v26);
}

void SparseSolve(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_23;
  }

  _SparseGetOptionsFromSymbolicFactor(v17, (a1 + 16));
  v6 = *&v17[40];
  v7 = 4;
  if (*(a2 + 12))
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
  if ((*(a2 + 12) & 1) == 0)
  {
    v7 = 0;
  }

  if (v9 > 0)
  {
    v10 = *(a2 + v7);
    v11 = *(a1 + 32);
    v12 = *(a1 + 20) * v11;
    v13 = *(a1 + 24) * v11;
    if (v12 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (v12 > v13)
    {
      v13 = v12;
    }

    if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    if (v10 == v16)
    {
      _SparseSolveSubfactor_Complex_Double(a1, 0, a2, a3);
      return;
    }

    if (*&v17[40])
    {
      memset(v17, 0, sizeof(v17));
      snprintf(v17, 0x100uLL, "XB dimension (%d) must match maximum subfactor dimension (%d).\n", v10, v16);
      goto LABEL_28;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCC30();
    }

LABEL_23:
    _SparseTrap();
  }

  if (!*&v17[40])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCBEC();
    }

    goto LABEL_23;
  }

  memset(&v17[34], 0, 222);
  strcpy(v17, "XB must have non-zero dimension.\n");
LABEL_28:
  v6(v17);
}

void SparseSolve(__int16 *a1, __int128 *a2, unsigned int *a3, _OWORD *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_64;
  }

  _SparseGetOptionsFromSymbolicFactor(&v30, (a1 + 8));
  reportError = v30.reportError;
  v9 = *a1;
  v10 = *(a1 + 32);
  v11 = *(a1 + 5) * v10;
  v12 = *(a1 + 6) * v10;
  if (v11 >= v12)
  {
    v13 = *(a1 + 6) * v10;
  }

  else
  {
    v13 = *(a1 + 5) * v10;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  if (v9)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (v9)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  v18 = *a2;
  if (*(a2 + 2) < *a2)
  {
    if (v30.reportError)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC574();
    }

    goto LABEL_64;
  }

  if (a3[2] < *a3)
  {
    if (v30.reportError)
    {
LABEL_26:
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
LABEL_27:
      (reportError)(&v30);
      return;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

LABEL_64:
    _SparseTrap();
  }

  if (*(a2 + 6))
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
    v18 = *(a2 + 1);
  }

  v20 = (a3[3] & 1) == 0;
  v21 = a3[v20];
  v22 = *(a2 + v19);
  v23 = (a3[3] & 1) != 0;
  v24 = a3[v23];
  if (v18 != v21)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
      goto LABEL_27;
    }

    v25 = v22;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    v30.control = 136316418;
    *&v30.orderMethod = "B";
    WORD2(v30.order) = 1024;
    *(&v30.order + 6) = v25;
    WORD1(v30.ignoreRowsAndColumns) = 1024;
    HIDWORD(v30.ignoreRowsAndColumns) = v18;
    LOWORD(v30.malloc) = 2080;
    *(&v30.malloc + 2) = "X";
    WORD1(v30.free) = 1024;
    HIDWORD(v30.free) = v24;
    LOWORD(v30.reportError) = 1024;
    *(&v30.reportError + 2) = v21;
    v26 = MEMORY[0x277D86220];
    v27 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    goto LABEL_63;
  }

  if (v18 <= 0)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
      goto LABEL_27;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC4F0();
    }

    goto LABEL_64;
  }

  if (v22 != v17)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      v28 = "B";
LABEL_56:
      snprintf(&v30, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v28);
      goto LABEL_27;
    }

    v29 = v22;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    v30.control = 136316418;
    *&v30.orderMethod = "B";
    WORD2(v30.order) = 1024;
    *(&v30.order + 6) = v29;
    WORD1(v30.ignoreRowsAndColumns) = 1024;
    HIDWORD(v30.ignoreRowsAndColumns) = v18;
    LOWORD(v30.malloc) = 2080;
    *(&v30.malloc + 2) = "subfactor dimension";
    WORD1(v30.free) = 1024;
    HIDWORD(v30.free) = v16;
    LOWORD(v30.reportError) = 1024;
    *(&v30.reportError + 2) = v17;
    v26 = MEMORY[0x277D86220];
    v27 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
LABEL_63:
    _os_log_error_impl(&dword_2366B9000, v26, OS_LOG_TYPE_ERROR, v27, &v30, 0x2Eu);
    goto LABEL_64;
  }

  if (v24 != v16)
  {
    if (v30.reportError)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      v28 = "X";
      goto LABEL_56;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    v30.control = 136316418;
    *&v30.orderMethod = "X";
    WORD2(v30.order) = 1024;
    *(&v30.order + 6) = v24;
    WORD1(v30.ignoreRowsAndColumns) = 1024;
    HIDWORD(v30.ignoreRowsAndColumns) = v18;
    LOWORD(v30.malloc) = 2080;
    *(&v30.malloc + 2) = "subfactor dimension";
    WORD1(v30.free) = 1024;
    HIDWORD(v30.free) = v16;
    LOWORD(v30.reportError) = 1024;
    *(&v30.reportError + 2) = v17;
    v26 = MEMORY[0x277D86220];
    v27 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_63;
  }

  _SparseSolveSubfactor_Complex_Double(a1, a2, a3, a4);
}