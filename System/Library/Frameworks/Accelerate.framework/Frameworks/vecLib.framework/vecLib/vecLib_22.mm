uint64_t SparseSolve(_OWORD *a1, int a2, uint64_t a3)
{
  v3 = a1[5];
  v10[4] = a1[4];
  v10[5] = v3;
  v4 = a1[7];
  v10[6] = a1[6];
  v10[7] = v4;
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a2;
  v8[3] = 0;
  v9 = a3;
  return SparseSolve(v10, v8);
}

{
  v3 = a1[5];
  v10[4] = a1[4];
  v10[5] = v3;
  v4 = a1[7];
  v10[6] = a1[6];
  v10[7] = v4;
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a2;
  v8[3] = 0;
  v9 = a3;
  return SparseSolve(v10, v8);
}

uint64_t SparseSolve(_OWORD *a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[7];
  v14[6] = a1[6];
  v14[7] = v6;
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v8 = a1[3];
  v14[2] = a1[2];
  v14[3] = v8;
  *&v12 = a2 | 0x100000000;
  *(&v12 + 1) = a2;
  v13 = a3;
  v10[0] = a4;
  v10[1] = 1;
  v10[2] = a4;
  v10[3] = 0;
  v11 = a5;
  return SparseSolve(v14, &v12, v10);
}

{
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[7];
  v14[6] = a1[6];
  v14[7] = v6;
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v8 = a1[3];
  v14[2] = a1[2];
  v14[3] = v8;
  v12[0] = a2;
  v12[1] = 1;
  v12[2] = a2;
  v12[3] = 0;
  v13 = a3;
  v10[0] = a4;
  v10[1] = 1;
  v10[2] = a4;
  v10[3] = 0;
  v11 = a5;
  return SparseSolve(v14, v12, v10);
}

void SparseSolve(_OWORD *a1, int a2, uint64_t a3, _OWORD *a4)
{
  v4 = a1[5];
  v10[4] = a1[4];
  v10[5] = v4;
  v5 = a1[7];
  v10[6] = a1[6];
  v10[7] = v5;
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v7 = a1[3];
  v10[2] = a1[2];
  v10[3] = v7;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a2;
  v8[3] = 0;
  v9 = a3;
  SparseSolve(v10, v8, a4);
}

void SparseSolve(_OWORD *a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, _OWORD *a6)
{
  v6 = a1[5];
  v14[4] = a1[4];
  v14[5] = v6;
  v7 = a1[7];
  v14[6] = a1[6];
  v14[7] = v7;
  v8 = a1[1];
  v14[0] = *a1;
  v14[1] = v8;
  v9 = a1[3];
  v14[2] = a1[2];
  v14[3] = v9;
  *&v12 = a2 | 0x100000000;
  *(&v12 + 1) = a2;
  v13 = a3;
  v10[0] = a4;
  v10[1] = 1;
  v10[2] = a4;
  v10[3] = 0;
  v11 = a5;
  SparseSolve(v14, &v12, v10, a6);
}

uint64_t SparseMultiply(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
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
        sub_2367CCD30();
      }

      goto LABEL_25;
    }

    memset(&v21[34], 0, 222);
    strcpy(v21, "XY must have non-zero dimension.\n");
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
        _SparseMultiplySubfactor_Complex_Double(a1, 0, a2, v18);
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

{
  v22 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
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
        sub_2367CCD30();
      }

      goto LABEL_25;
    }

    memset(&v21[34], 0, 222);
    strcpy(v21, "XY must have non-zero dimension.\n");
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
        _SparseMultiplySubfactor_Complex_Float(a1, 0, a2, v18);
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

uint64_t SparseMultiply(__int16 *a1, unsigned int *a2, unsigned int *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
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
  if (a2[2] < *a2)
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
      sub_2367CBDE4();
    }

LABEL_69:
    _SparseTrap();
  }

  if (a2[3])
  {
    v18 = 1;
  }

  else
  {
    v18 = 0;
    v16 = a2[1];
  }

  v19 = (a3[3] & 1) == 0;
  v20 = a3[v19];
  v21 = a2[v18];
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
    HIDWORD(v30.ignoreRowsAndColumns) = v16;
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
    HIDWORD(v30.ignoreRowsAndColumns) = v16;
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
    HIDWORD(v30.ignoreRowsAndColumns) = v16;
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
  _SparseMultiplySubfactor_Complex_Double(a1, a2, a3, v25);
  return (free)(v26);
}

{
  v44 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
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
  if (a2[2] < *a2)
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
      sub_2367CBDE4();
    }

LABEL_69:
    _SparseTrap();
  }

  if (a2[3])
  {
    v18 = 1;
  }

  else
  {
    v18 = 0;
    v16 = a2[1];
  }

  v19 = (a3[3] & 1) == 0;
  v20 = a3[v19];
  v21 = a2[v18];
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
    HIDWORD(v30.ignoreRowsAndColumns) = v16;
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
    HIDWORD(v30.ignoreRowsAndColumns) = v16;
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
    HIDWORD(v30.ignoreRowsAndColumns) = v16;
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
  _SparseMultiplySubfactor_Complex_Float(a1, a2, a3, v25);
  return (free)(v26);
}

void SparseMultiply(uint64_t a1, uint64_t a2, uint64_t a3)
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
      _SparseMultiplySubfactor_Complex_Double(a1, 0, a2, a3);
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
      _SparseMultiplySubfactor_Complex_Float(a1, 0, a2, a3);
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

void SparseMultiply(__int16 *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
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

  v18 = *a3;
  if (a3[2] < *a3)
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

  if (a2[2] < *a2)
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

  if (a3[3])
  {
    v19 = 1;
  }

  else
  {
    v19 = 0;
    v18 = a3[1];
  }

  v20 = (a2[3] & 1) == 0;
  v21 = a2[v20];
  v22 = a3[v19];
  v23 = (a2[3] & 1) != 0;
  v24 = a2[v23];
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

  _SparseMultiplySubfactor_Complex_Double(a1, a2, a3, a4);
}

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

  v18 = *a3;
  if (a3[2] < *a3)
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

  if (a2[2] < *a2)
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

  if (a3[3])
  {
    v19 = 1;
  }

  else
  {
    v19 = 0;
    v18 = a3[1];
  }

  v20 = (a2[3] & 1) == 0;
  v21 = a2[v20];
  v22 = a3[v19];
  v23 = (a2[3] & 1) != 0;
  v24 = a2[v23];
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

  _SparseMultiplySubfactor_Complex_Float(a1, a2, a3, a4);
}

uint64_t SparseMultiply(_OWORD *a1, int a2, uint64_t a3)
{
  v3 = a1[5];
  v10[4] = a1[4];
  v10[5] = v3;
  v4 = a1[7];
  v10[6] = a1[6];
  v10[7] = v4;
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a2;
  v8[3] = 0;
  v9 = a3;
  return SparseMultiply(v10, v8);
}

{
  v3 = a1[5];
  v10[4] = a1[4];
  v10[5] = v3;
  v4 = a1[7];
  v10[6] = a1[6];
  v10[7] = v4;
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a2;
  v8[3] = 0;
  v9 = a3;
  return SparseMultiply(v10, v8);
}

uint64_t SparseMultiply(_OWORD *a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[7];
  v14[6] = a1[6];
  v14[7] = v6;
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v8 = a1[3];
  v14[2] = a1[2];
  v14[3] = v8;
  v12[0] = a2;
  v12[1] = 1;
  v12[2] = a2;
  v12[3] = 0;
  v13 = a3;
  v10[0] = a4;
  v10[1] = 1;
  v10[2] = a4;
  v10[3] = 0;
  v11 = a5;
  return SparseMultiply(v14, v12, v10);
}

{
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[7];
  v14[6] = a1[6];
  v14[7] = v6;
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v8 = a1[3];
  v14[2] = a1[2];
  v14[3] = v8;
  v12[0] = a2;
  v12[1] = 1;
  v12[2] = a2;
  v12[3] = 0;
  v13 = a3;
  v10[0] = a4;
  v10[1] = 1;
  v10[2] = a4;
  v10[3] = 0;
  v11 = a5;
  return SparseMultiply(v14, v12, v10);
}

void SparseMultiply(_OWORD *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[5];
  v10[4] = a1[4];
  v10[5] = v4;
  v5 = a1[7];
  v10[6] = a1[6];
  v10[7] = v5;
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v7 = a1[3];
  v10[2] = a1[2];
  v10[3] = v7;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a2;
  v8[3] = 0;
  v9 = a3;
  SparseMultiply(v10, v8, a4);
}

{
  v4 = a1[5];
  v10[4] = a1[4];
  v10[5] = v4;
  v5 = a1[7];
  v10[6] = a1[6];
  v10[7] = v5;
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v7 = a1[3];
  v10[2] = a1[2];
  v10[3] = v7;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a2;
  v8[3] = 0;
  v9 = a3;
  SparseMultiply(v10, v8, a4);
}

void SparseMultiply(_OWORD *a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[5];
  v14[4] = a1[4];
  v14[5] = v6;
  v7 = a1[7];
  v14[6] = a1[6];
  v14[7] = v7;
  v8 = a1[1];
  v14[0] = *a1;
  v14[1] = v8;
  v9 = a1[3];
  v14[2] = a1[2];
  v14[3] = v9;
  v12[0] = a2;
  v12[1] = 1;
  v12[2] = a2;
  v12[3] = 0;
  v13 = a3;
  v10[0] = a4;
  v10[1] = 1;
  v10[2] = a4;
  v10[3] = 0;
  v11 = a5;
  SparseMultiply(v14, v12, v10, a6);
}

{
  v6 = a1[5];
  v14[4] = a1[4];
  v14[5] = v6;
  v7 = a1[7];
  v14[6] = a1[6];
  v14[7] = v7;
  v8 = a1[1];
  v14[0] = *a1;
  v14[1] = v8;
  v9 = a1[3];
  v14[2] = a1[2];
  v14[3] = v9;
  v12[0] = a2;
  v12[1] = 1;
  v12[2] = a2;
  v12[3] = 0;
  v13 = a3;
  v10[0] = a4;
  v10[1] = 1;
  v10[2] = a4;
  v10[3] = 0;
  v11 = a5;
  SparseMultiply(v14, v12, v10, a6);
}

void SparseCreatePreconditioner(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 28);
  v5 = 4;
  if (*(a2 + 24))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (*(a2 + 24))
  {
    v5 = 0;
  }

  if (*(a2 + v6) * v4 < 1 || *(a2 + v5) * v4 <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCE70();
    }

    _SparseTrap();
  }

  _SparseCreatePreconditioner_Complex_Double(a1, a2, a3);
}

void SparseSolve(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 1);
  v5 = (a1 + 2);
  v6 = v7;
  v8 = *(a2 + 28);
  v9 = 4;
  if (*(a2 + 12))
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a2 + v10) * v8;
  if (*(a2 + 12))
  {
    v9 = 0;
  }

  v12 = *(a2 + v9) * v8;
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
    v44 = 0u;
    v45 = 0u;
    buf = 0u;
    v43 = 0u;
    snprintf(&buf, 0x100uLL, "Bad matrix dimensions %dx%d\n", a4);
    goto LABEL_54;
  }

  v14 = 4;
  if (*(a4 + 12))
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a4 + v15);
  if (*(a4 + 12))
  {
    v17 = 0;
  }

  else
  {
    v17 = 4;
  }

  v18 = *(a4 + v17);
  v19 = *(a3 + 12);
  v20 = (v19 & 1) == 0;
  if (v19)
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(a3 + v21);
  if (!v20)
  {
    v14 = 0;
  }

  v23 = *(a3 + v14);
  if (v18 != v23)
  {
    if (v6)
    {
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
      v44 = 0u;
      v45 = 0u;
      buf = 0u;
      v43 = 0u;
      snprintf(&buf, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", a4);
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
    LODWORD(v43) = v22;
    WORD2(v43) = 1024;
    *(&v43 + 6) = v23;
    v26 = MEMORY[0x277D86220];
    v27 = "Dimensions of X (%dx%d) and B (%dx%d) do not match.";
LABEL_45:
    _os_log_error_impl(&dword_2366B9000, v26, OS_LOG_TYPE_ERROR, v27, &buf, 0x1Au);
    goto LABEL_57;
  }

  if (v16 != v12)
  {
    if (v6)
    {
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
      v44 = 0u;
      v45 = 0u;
      buf = 0u;
      v43 = 0u;
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.", a4);
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
    LODWORD(v43) = v16;
    WORD2(v43) = 1024;
    *(&v43 + 6) = v18;
    v26 = MEMORY[0x277D86220];
    v27 = "Dimensions of A (%dx%d) and X (%dx%d) do not match.";
    goto LABEL_45;
  }

  if (v22 != v11)
  {
    if (v6)
    {
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
      v44 = 0u;
      v45 = 0u;
      buf = 0u;
      v43 = 0u;
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.", a4);
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
    LODWORD(v43) = v22;
    WORD2(v43) = 1024;
    *(&v43 + 6) = v18;
    v26 = MEMORY[0x277D86220];
    v27 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
    goto LABEL_45;
  }

  v24 = *a1;
  if (v24 == 2)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 0x40000000;
    v30[2] = sub_2367BF35C;
    v30[3] = &unk_278A009B0;
    v28 = a2[1];
    v31 = *a2;
    v32 = v28;
    v33 = *(a2 + 4);
    _SparseLSMRSolve_Complex_Double(v5, a4, a3, v30, 0);
    return;
  }

  if (v24 == 1)
  {
    if (v12 == v11)
    {
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 0x40000000;
      v34[2] = sub_2367BF2A8;
      v34[3] = &unk_278A00990;
      v25 = a2[1];
      v35 = *a2;
      v36 = v25;
      v37 = *(a2 + 4);
      _SparseGMRESSolve_Complex_Double(v5, a4, a3, v34, 0);
      return;
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
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 0x40000000;
      v38[2] = sub_2367BF1F4;
      v38[3] = &unk_278A00970;
      v29 = a2[1];
      v39 = *a2;
      v40 = v29;
      v41 = *(a2 + 4);
      _SparseCGSolve_Complex_Double(v5, a4, a3, v38, 0);
      return;
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
  v44 = 0u;
  v45 = 0u;
  buf = 0u;
  v43 = 0u;
  snprintf(&buf, 0x100uLL, "Counts of X (%d) and B (%d) do not match.", a4);
LABEL_54:
  v6(&buf);
}

{
  v58 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 1);
  v5 = (a1 + 2);
  v6 = v7;
  v8 = *(a2 + 28);
  v9 = 4;
  if (*(a2 + 12))
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a2 + v10) * v8;
  if (*(a2 + 12))
  {
    v9 = 0;
  }

  v12 = *(a2 + v9) * v8;
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
    v44 = 0u;
    v45 = 0u;
    buf = 0u;
    v43 = 0u;
    snprintf(&buf, 0x100uLL, "Bad matrix dimensions %dx%d\n", a4);
    goto LABEL_54;
  }

  v14 = 4;
  if (*(a4 + 12))
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a4 + v15);
  if (*(a4 + 12))
  {
    v17 = 0;
  }

  else
  {
    v17 = 4;
  }

  v18 = *(a4 + v17);
  v19 = *(a3 + 12);
  v20 = (v19 & 1) == 0;
  if (v19)
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(a3 + v21);
  if (!v20)
  {
    v14 = 0;
  }

  v23 = *(a3 + v14);
  if (v18 != v23)
  {
    if (v6)
    {
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
      v44 = 0u;
      v45 = 0u;
      buf = 0u;
      v43 = 0u;
      snprintf(&buf, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", a4);
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
    LODWORD(v43) = v22;
    WORD2(v43) = 1024;
    *(&v43 + 6) = v23;
    v26 = MEMORY[0x277D86220];
    v27 = "Dimensions of X (%dx%d) and B (%dx%d) do not match.";
LABEL_45:
    _os_log_error_impl(&dword_2366B9000, v26, OS_LOG_TYPE_ERROR, v27, &buf, 0x1Au);
    goto LABEL_57;
  }

  if (v16 != v12)
  {
    if (v6)
    {
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
      v44 = 0u;
      v45 = 0u;
      buf = 0u;
      v43 = 0u;
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.", a4);
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
    LODWORD(v43) = v16;
    WORD2(v43) = 1024;
    *(&v43 + 6) = v18;
    v26 = MEMORY[0x277D86220];
    v27 = "Dimensions of A (%dx%d) and X (%dx%d) do not match.";
    goto LABEL_45;
  }

  if (v22 != v11)
  {
    if (v6)
    {
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
      v44 = 0u;
      v45 = 0u;
      buf = 0u;
      v43 = 0u;
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.", a4);
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
    LODWORD(v43) = v22;
    WORD2(v43) = 1024;
    *(&v43 + 6) = v18;
    v26 = MEMORY[0x277D86220];
    v27 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
    goto LABEL_45;
  }

  v24 = *a1;
  if (v24 == 2)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 0x40000000;
    v30[2] = sub_2367C8B78;
    v30[3] = &unk_278A00BC0;
    v28 = a2[1];
    v31 = *a2;
    v32 = v28;
    v33 = *(a2 + 4);
    _SparseLSMRSolve_Complex_Float(v5, a4, a3, v30, 0);
    return;
  }

  if (v24 == 1)
  {
    if (v12 == v11)
    {
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 0x40000000;
      v34[2] = sub_2367C8AC4;
      v34[3] = &unk_278A00BA0;
      v25 = a2[1];
      v35 = *a2;
      v36 = v25;
      v37 = *(a2 + 4);
      _SparseGMRESSolve_Complex_Float(v5, a4, a3, v34, 0);
      return;
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
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 0x40000000;
      v38[2] = sub_2367C8A10;
      v38[3] = &unk_278A00B80;
      v29 = a2[1];
      v39 = *a2;
      v40 = v29;
      v41 = *(a2 + 4);
      _SparseCGSolve_Complex_Float(v5, a4, a3, v38, 0);
      return;
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
  v44 = 0u;
  v45 = 0u;
  buf = 0u;
  v43 = 0u;
  snprintf(&buf, 0x100uLL, "Counts of X (%d) and B (%d) do not match.", a4);
LABEL_54:
  v6(&buf);
}

uint64_t sub_2367BF1F4(uint64_t a1, int a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

uint64_t sub_2367BF2A8(uint64_t a1, int a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

uint64_t sub_2367BF35C(uint64_t a1, int a2, int a3, __int128 *a4, __int128 *a5)
{
  if (a2)
  {
    v7 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v7;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v7;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 2);
    v13 = *a5;
    v14 = *(a5 + 2);
    return SparseMultiplyAdd(&v15, &v10, &v13, 1.0, 0.0);
  }

  else
  {
    v9 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v9;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 2);
    v13 = *a5;
    v14 = *(a5 + 2);
    return SparseMultiply(&v15, &v10, &v13, 1.0, 0.0);
  }
}

void SparseSolve(void *__src, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v15 = *MEMORY[0x277D85DE8];
  v12[0] = a3;
  v12[1] = 1;
  v12[2] = a3;
  v12[3] = 0;
  v13 = a4;
  v10[0] = a5;
  v10[1] = 1;
  v10[2] = a5;
  v10[3] = 0;
  v11 = a6;
  memcpy(__dst, __src, sizeof(__dst));
  v7 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v7;
  v9 = *(a2 + 32);
  SparseSolve(__dst, v8, v12, v10);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v12[0] = a3;
  v12[1] = 1;
  v12[2] = a3;
  v12[3] = 0;
  v13 = a4;
  v10[0] = a5;
  v10[1] = 1;
  v10[2] = a5;
  v10[3] = 0;
  v11 = a6;
  memcpy(__dst, __src, sizeof(__dst));
  v7 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v7;
  v9 = *(a2 + 32);
  SparseSolve(__dst, v8, v12, v10);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v12[0] = a3;
  v12[1] = 1;
  v12[2] = a3;
  v12[3] = 0;
  v13 = a4;
  v10[0] = a5;
  v10[1] = 1;
  v10[2] = a5;
  v10[3] = 0;
  v11 = a6;
  memcpy(__dst, __src, sizeof(__dst));
  v7 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v7;
  v9 = *(a2 + 32);
  SparseSolve(__dst, v8, v12, v10);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v12[0] = a3;
  v12[1] = 1;
  v12[2] = a3;
  v12[3] = 0;
  v13 = a4;
  v10[0] = a5;
  v10[1] = 1;
  v10[2] = a5;
  v10[3] = 0;
  v11 = a6;
  memcpy(__dst, __src, sizeof(__dst));
  v7 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v7;
  v9 = *(a2 + 32);
  SparseSolve(__dst, v8, v12, v10);
}

void SparseSolve(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 1);
  v5 = (a1 + 2);
  v6 = v7;
  v8 = 4;
  if (*(a4 + 12))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4 + v9);
  if (*(a4 + 12))
  {
    v11 = 0;
  }

  else
  {
    v11 = 4;
  }

  v12 = *(a4 + v11);
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
    v23 = 0u;
    v24 = 0u;
    *__str = 0u;
    v22 = 0u;
    snprintf(__str, 0x100uLL, "Bad dimensions for X (%dx%d)\n");
LABEL_54:
    v6(__str);
    return;
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
    v23 = 0u;
    v24 = 0u;
    *__str = 0u;
    v22 = 0u;
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
      LODWORD(v22) = v17;
      WORD2(v22) = 1024;
      *(&v22 + 6) = v18;
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

        _SparseGMRESSolve_Complex_Double(v5, a4, a3, a2, 0);
        return;
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

      _SparseCGSolve_Complex_Double(v5, a4, a3, a2, 0);
      return;
    }

    if (v6)
    {
LABEL_53:
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
      v23 = 0u;
      v24 = 0u;
      *__str = 0u;
      v22 = 0u;
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

  _SparseLSMRSolve_Complex_Double(v5, a4, a3, a2, 0);
}

{
  v37 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 1);
  v5 = (a1 + 2);
  v6 = v7;
  v8 = 4;
  if (*(a4 + 12))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4 + v9);
  if (*(a4 + 12))
  {
    v11 = 0;
  }

  else
  {
    v11 = 4;
  }

  v12 = *(a4 + v11);
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
    v23 = 0u;
    v24 = 0u;
    *__str = 0u;
    v22 = 0u;
    snprintf(__str, 0x100uLL, "Bad dimensions for X (%dx%d)\n");
LABEL_54:
    v6(__str);
    return;
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
    v23 = 0u;
    v24 = 0u;
    *__str = 0u;
    v22 = 0u;
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
      LODWORD(v22) = v17;
      WORD2(v22) = 1024;
      *(&v22 + 6) = v18;
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

        _SparseGMRESSolve_Complex_Float(v5, a4, a3, a2, 0);
        return;
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

      _SparseCGSolve_Complex_Float(v5, a4, a3, a2, 0);
      return;
    }

    if (v6)
    {
LABEL_53:
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
      v23 = 0u;
      v24 = 0u;
      *__str = 0u;
      v22 = 0u;
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

  _SparseLSMRSolve_Complex_Float(v5, a4, a3, a2, 0);
}

void SparseSolve(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 1);
  v7 = (a1 + 2);
  v8 = v9;
  if (a5 <= 0)
  {
    if (v8)
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
    if (v8)
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

  v16[0] = a5;
  v16[1] = 1;
  v16[2] = a5;
  v16[3] = 0;
  v17 = a6;
  v14[0] = a3;
  v14[1] = 1;
  v14[2] = a3;
  v14[3] = 0;
  v15 = a4;
  v10 = *a1;
  if (v10 == 2)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 0x40000000;
    v11[2] = sub_2367BFC5C;
    v11[3] = &unk_278A00A28;
    v11[4] = a2;
    _SparseLSMRSolve_Complex_Double(v7, v16, v14, v11, 0);
    return;
  }

  if (v10 == 1)
  {
    if (a5 == a3)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 0x40000000;
      v12[2] = sub_2367BFC34;
      v12[3] = &unk_278A00A00;
      v12[4] = a2;
      _SparseGMRESSolve_Complex_Double(v7, v16, v14, v12, 0);
      return;
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
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 0x40000000;
      v13[2] = sub_2367BFC0C;
      v13[3] = &unk_278A009D8;
      v13[4] = a2;
      _SparseCGSolve_Complex_Double(v7, v16, v14, v13, 0);
      return;
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
  v8(&__str);
}

{
  v34 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 1);
  v7 = (a1 + 2);
  v8 = v9;
  if (a5 <= 0)
  {
    if (v8)
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
    if (v8)
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

  *&v16 = a5 | 0x100000000;
  *(&v16 + 1) = a5;
  v17 = a6;
  v14[0] = a3;
  v14[1] = 1;
  v14[2] = a3;
  v14[3] = 0;
  v15 = a4;
  v10 = *a1;
  if (v10 == 2)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 0x40000000;
    v11[2] = sub_2367C9478;
    v11[3] = &unk_278A00C38;
    v11[4] = a2;
    _SparseLSMRSolve_Complex_Float(v7, &v16, v14, v11, 0);
    return;
  }

  if (v10 == 1)
  {
    if (a5 == a3)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 0x40000000;
      v12[2] = sub_2367C9450;
      v12[3] = &unk_278A00C10;
      v12[4] = a2;
      _SparseGMRESSolve_Complex_Float(v7, &v16, v14, v12, 0);
      return;
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
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 0x40000000;
      v13[2] = sub_2367C9428;
      v13[3] = &unk_278A00BE8;
      v13[4] = a2;
      _SparseCGSolve_Complex_Float(v7, &v16, v14, v13, 0);
      return;
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
  v8(&__str);
}

uint64_t SparseSolve(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  v7 = *(a2 + 28);
  v8 = 4;
  if (*(a2 + 12))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + v9) * v7;
  if (*(a2 + 12))
  {
    v8 = 0;
  }

  v11 = *(a2 + v8) * v7;
  if (v10 < 1 || v11 <= 0)
  {
    if (!v6)
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
    memset(__str, 0, sizeof(__str));
    snprintf(__str, 0x100uLL, "Bad matrix dimensions %dx%d\n", a4, a5);
    goto LABEL_42;
  }

  v15 = 4;
  if (*(a4 + 12))
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a4 + v16);
  if (*(a4 + 12))
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v19 = *(a4 + v18);
  v20 = *(a3 + 12);
  v21 = (v20 & 1) == 0;
  if (v20)
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a3 + v22);
  if (!v21)
  {
    v15 = 0;
  }

  v24 = *(a3 + v15);
  if (v19 != v24)
  {
    if (!v6)
    {
      v29 = v23;
      v30 = v17;
      v31 = v19;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      *__str = 67109888;
      *&__str[4] = v30;
      *&__str[8] = 1024;
      *&__str[10] = v31;
      *&__str[14] = 1024;
      *&__str[16] = v29;
      *&__str[20] = 1024;
      *&__str[22] = v24;
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
    memset(__str, 0, sizeof(__str));
    snprintf(__str, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", a4, a5);
LABEL_42:
    v6(__str);
    return 0xFFFFFFFFLL;
  }

  if (v17 != v11)
  {
    if (!v6)
    {
      v34 = v17;
      v35 = v19;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      *__str = 67109888;
      *&__str[4] = v10;
      *&__str[8] = 1024;
      *&__str[10] = v11;
      *&__str[14] = 1024;
      *&__str[16] = v34;
      *&__str[20] = 1024;
      *&__str[22] = v35;
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
    memset(__str, 0, sizeof(__str));
    snprintf(__str, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.", a4, a5);
    goto LABEL_42;
  }

  if (v23 != v10)
  {
    if (v6)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      memset(__str, 0, sizeof(__str));
      snprintf(__str, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.", a4, a5);
      goto LABEL_42;
    }

    v36 = v23;
    v37 = v19;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    *__str = 67109888;
    *&__str[4] = v10;
    *&__str[8] = 1024;
    *&__str[10] = v11;
    *&__str[14] = 1024;
    *&__str[16] = v36;
    *&__str[20] = 1024;
    *&__str[22] = v37;
    v32 = MEMORY[0x277D86220];
    v33 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
LABEL_49:
    _os_log_error_impl(&dword_2366B9000, v32, OS_LOG_TYPE_ERROR, v33, __str, 0x1Au);
    goto LABEL_53;
  }

  if (a5 <= 1)
  {
    if (v6)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      strcpy(__str, "Invalid preconditioner type for this call: for no preconditioner, omit the parameter. User-supplied preconditioners must supply apply() method.");
      goto LABEL_42;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD1B0();
    }

LABEL_53:
    _SparseTrap();
  }

  memset(__str, 0, 24);
  _SparseCreatePreconditioner_Complex_Double(a5, a2, __str);
  if (!*__str)
  {
    return 4294967197;
  }

  if (*a1 == 2)
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 0x40000000;
    v42[2] = sub_2367C0364;
    v42[3] = &unk_278A00A88;
    v40 = a2[1];
    v43 = *a2;
    v44 = v40;
    v45 = *(a2 + 4);
    v28 = _SparseLSMRSolve_Complex_Double(v5, a4, a3, v42, __str);
  }

  else if (*a1 == 1)
  {
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 0x40000000;
    v46[2] = sub_2367C02B0;
    v46[3] = &unk_278A00A68;
    v27 = a2[1];
    v47 = *a2;
    v48 = v27;
    v49 = *(a2 + 4);
    _SparseGMRESSolve_Complex_Double(v5, a4, a3, v46, __str);
  }

  else
  {
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 0x40000000;
    v50[2] = sub_2367C01FC;
    v50[3] = &unk_278A00A48;
    v41 = a2[1];
    v51 = *a2;
    v52 = v41;
    v53 = *(a2 + 4);
    v28 = _SparseCGSolve_Complex_Double(v5, a4, a3, v50, __str);
  }

  v38 = v28;
  _SparseReleaseOpaquePreconditioner_Complex_Double(__str);
  return v38;
}

{
  v62 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  v7 = *(a2 + 28);
  v8 = 4;
  if (*(a2 + 12))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + v9) * v7;
  if (*(a2 + 12))
  {
    v8 = 0;
  }

  v11 = *(a2 + v8) * v7;
  if (v10 < 1 || v11 <= 0)
  {
    if (!v6)
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
    memset(__str, 0, sizeof(__str));
    snprintf(__str, 0x100uLL, "Bad matrix dimensions %dx%d\n", a4, a5);
    goto LABEL_42;
  }

  v15 = 4;
  if (*(a4 + 12))
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a4 + v16);
  if (*(a4 + 12))
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v19 = *(a4 + v18);
  v20 = *(a3 + 12);
  v21 = (v20 & 1) == 0;
  if (v20)
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a3 + v22);
  if (!v21)
  {
    v15 = 0;
  }

  v24 = *(a3 + v15);
  if (v19 != v24)
  {
    if (!v6)
    {
      v29 = v23;
      v30 = v17;
      v31 = v19;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      *__str = 67109888;
      *&__str[4] = v30;
      *&__str[8] = 1024;
      *&__str[10] = v31;
      *&__str[14] = 1024;
      *&__str[16] = v29;
      *&__str[20] = 1024;
      *&__str[22] = v24;
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
    memset(__str, 0, sizeof(__str));
    snprintf(__str, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", a4, a5);
LABEL_42:
    v6(__str);
    return 0xFFFFFFFFLL;
  }

  if (v17 != v11)
  {
    if (!v6)
    {
      v34 = v17;
      v35 = v19;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      *__str = 67109888;
      *&__str[4] = v10;
      *&__str[8] = 1024;
      *&__str[10] = v11;
      *&__str[14] = 1024;
      *&__str[16] = v34;
      *&__str[20] = 1024;
      *&__str[22] = v35;
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
    memset(__str, 0, sizeof(__str));
    snprintf(__str, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.", a4, a5);
    goto LABEL_42;
  }

  if (v23 != v10)
  {
    if (v6)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      memset(__str, 0, sizeof(__str));
      snprintf(__str, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.", a4, a5);
      goto LABEL_42;
    }

    v36 = v23;
    v37 = v19;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    *__str = 67109888;
    *&__str[4] = v10;
    *&__str[8] = 1024;
    *&__str[10] = v11;
    *&__str[14] = 1024;
    *&__str[16] = v36;
    *&__str[20] = 1024;
    *&__str[22] = v37;
    v32 = MEMORY[0x277D86220];
    v33 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
LABEL_49:
    _os_log_error_impl(&dword_2366B9000, v32, OS_LOG_TYPE_ERROR, v33, __str, 0x1Au);
    goto LABEL_53;
  }

  if (a5 <= 1)
  {
    if (v6)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      strcpy(__str, "Invalid preconditioner type for this call: for no preconditioner, omit the parameter. User-supplied preconditioners must supply apply() method.");
      goto LABEL_42;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD1B0();
    }

LABEL_53:
    _SparseTrap();
  }

  memset(__str, 0, 24);
  _SparseCreatePreconditioner_Complex_Float(a5, a2, __str);
  if (!*__str)
  {
    return 4294967197;
  }

  if (*a1 == 2)
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 0x40000000;
    v42[2] = sub_2367C9B80;
    v42[3] = &unk_278A00C98;
    v40 = a2[1];
    v43 = *a2;
    v44 = v40;
    v45 = *(a2 + 4);
    v28 = _SparseLSMRSolve_Complex_Float(v5, a4, a3, v42, __str);
  }

  else if (*a1 == 1)
  {
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 0x40000000;
    v46[2] = sub_2367C9ACC;
    v46[3] = &unk_278A00C78;
    v27 = a2[1];
    v47 = *a2;
    v48 = v27;
    v49 = *(a2 + 4);
    _SparseGMRESSolve_Complex_Float(v5, a4, a3, v46, __str);
  }

  else
  {
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 0x40000000;
    v50[2] = sub_2367C9A18;
    v50[3] = &unk_278A00C58;
    v41 = a2[1];
    v51 = *a2;
    v52 = v41;
    v53 = *(a2 + 4);
    v28 = _SparseCGSolve_Complex_Float(v5, a4, a3, v50, __str);
  }

  v38 = v28;
  _SparseReleaseOpaquePreconditioner_Complex_Float(__str);
  return v38;
}

uint64_t sub_2367C01FC(uint64_t a1, int a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

uint64_t sub_2367C02B0(uint64_t a1, int a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

uint64_t sub_2367C0364(uint64_t a1, int a2, int a3, __int128 *a4, __int128 *a5)
{
  if (a2)
  {
    v7 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v7;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v7;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 2);
    v13 = *a5;
    v14 = *(a5 + 2);
    return SparseMultiplyAdd(&v15, &v10, &v13, 1.0, 0.0);
  }

  else
  {
    v9 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v9;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 2);
    v13 = *a5;
    v14 = *(a5 + 2);
    return SparseMultiply(&v15, &v10, &v13, 1.0, 0.0);
  }
}

void SparseSolve(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 1);
  v6 = (a1 + 2);
  v7 = v8;
  v9 = *(a2 + 28);
  v10 = 4;
  if (*(a2 + 12))
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a2 + v11) * v9;
  if (*(a2 + 12))
  {
    v10 = 0;
  }

  v13 = *(a2 + v10) * v9;
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
    snprintf(&buf, 0x100uLL, "Bad matrix dimensions %dx%d\n", a4);
    goto LABEL_54;
  }

  v15 = 4;
  if (*(a4 + 12))
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a4 + v16);
  if (*(a4 + 12))
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v19 = *(a4 + v18);
  v20 = *(a3 + 12);
  v21 = (v20 & 1) == 0;
  if (v20)
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a3 + v22);
  if (!v21)
  {
    v15 = 0;
  }

  v24 = *(a3 + v15);
  if (v19 != v24)
  {
    if (v7)
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
      snprintf(&buf, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", a4);
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
    LODWORD(v44) = v23;
    WORD2(v44) = 1024;
    *(&v44 + 6) = v24;
    v27 = MEMORY[0x277D86220];
    v28 = "Dimensions of X (%dx%d) and B (%dx%d) do not match.";
LABEL_45:
    _os_log_error_impl(&dword_2366B9000, v27, OS_LOG_TYPE_ERROR, v28, &buf, 0x1Au);
    goto LABEL_57;
  }

  if (v17 != v13)
  {
    if (v7)
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
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.", a4);
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
    LODWORD(v44) = v17;
    WORD2(v44) = 1024;
    *(&v44 + 6) = v19;
    v27 = MEMORY[0x277D86220];
    v28 = "Dimensions of A (%dx%d) and X (%dx%d) do not match.";
    goto LABEL_45;
  }

  if (v23 != v12)
  {
    if (v7)
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
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.", a4);
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
    LODWORD(v44) = v23;
    WORD2(v44) = 1024;
    *(&v44 + 6) = v19;
    v27 = MEMORY[0x277D86220];
    v28 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
    goto LABEL_45;
  }

  v25 = *a1;
  if (v25 == 2)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 0x40000000;
    v31[2] = sub_2367C0BA0;
    v31[3] = &unk_278A00AE8;
    v29 = a2[1];
    v32 = *a2;
    v33 = v29;
    v34 = *(a2 + 4);
    _SparseLSMRSolve_Complex_Double(v6, a4, a3, v31, a5);
    return;
  }

  if (v25 == 1)
  {
    if (v13 == v12)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 0x40000000;
      v35[2] = sub_2367C0AEC;
      v35[3] = &unk_278A00AC8;
      v26 = a2[1];
      v36 = *a2;
      v37 = v26;
      v38 = *(a2 + 4);
      _SparseGMRESSolve_Complex_Double(v6, a4, a3, v35, a5);
      return;
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
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 0x40000000;
      v39[2] = sub_2367C0A38;
      v39[3] = &unk_278A00AA8;
      v30 = a2[1];
      v40 = *a2;
      v41 = v30;
      v42 = *(a2 + 4);
      _SparseCGSolve_Complex_Double(v6, a4, a3, v39, a5);
      return;
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
  snprintf(&buf, 0x100uLL, "Counts of X (%d) and B (%d) do not match.", a4);
LABEL_54:
  v7(&buf);
}

{
  v59 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 1);
  v6 = (a1 + 2);
  v7 = v8;
  v9 = *(a2 + 28);
  v10 = 4;
  if (*(a2 + 12))
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a2 + v11) * v9;
  if (*(a2 + 12))
  {
    v10 = 0;
  }

  v13 = *(a2 + v10) * v9;
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
    snprintf(&buf, 0x100uLL, "Bad matrix dimensions %dx%d\n", a4, a5);
    goto LABEL_54;
  }

  v15 = 4;
  if (*(a4 + 12))
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a4 + v16);
  if (*(a4 + 12))
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v19 = *(a4 + v18);
  v20 = *(a3 + 12);
  v21 = (v20 & 1) == 0;
  if (v20)
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a3 + v22);
  if (!v21)
  {
    v15 = 0;
  }

  v24 = *(a3 + v15);
  if (v19 != v24)
  {
    if (v7)
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
      snprintf(&buf, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", a4, a5);
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
    LODWORD(v44) = v23;
    WORD2(v44) = 1024;
    *(&v44 + 6) = v24;
    v27 = MEMORY[0x277D86220];
    v28 = "Dimensions of X (%dx%d) and B (%dx%d) do not match.";
LABEL_45:
    _os_log_error_impl(&dword_2366B9000, v27, OS_LOG_TYPE_ERROR, v28, &buf, 0x1Au);
    goto LABEL_57;
  }

  if (v17 != v13)
  {
    if (v7)
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
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.", a4, a5);
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
    LODWORD(v44) = v17;
    WORD2(v44) = 1024;
    *(&v44 + 6) = v19;
    v27 = MEMORY[0x277D86220];
    v28 = "Dimensions of A (%dx%d) and X (%dx%d) do not match.";
    goto LABEL_45;
  }

  if (v23 != v12)
  {
    if (v7)
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
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.", a4, a5);
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
    LODWORD(v44) = v23;
    WORD2(v44) = 1024;
    *(&v44 + 6) = v19;
    v27 = MEMORY[0x277D86220];
    v28 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
    goto LABEL_45;
  }

  v25 = *a1;
  if (v25 == 2)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 0x40000000;
    v31[2] = sub_2367CA3BC;
    v31[3] = &unk_278A00CF8;
    v29 = a2[1];
    v32 = *a2;
    v33 = v29;
    v34 = *(a2 + 4);
    _SparseLSMRSolve_Complex_Float(v6, a4, a3, v31, a5);
    return;
  }

  if (v25 == 1)
  {
    if (v13 == v12)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 0x40000000;
      v35[2] = sub_2367CA308;
      v35[3] = &unk_278A00CD8;
      v26 = a2[1];
      v36 = *a2;
      v37 = v26;
      v38 = *(a2 + 4);
      _SparseGMRESSolve_Complex_Float(v6, a4, a3, v35, a5);
      return;
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
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 0x40000000;
      v39[2] = sub_2367CA254;
      v39[3] = &unk_278A00CB8;
      v30 = a2[1];
      v40 = *a2;
      v41 = v30;
      v42 = *(a2 + 4);
      _SparseCGSolve_Complex_Float(v6, a4, a3, v39, a5);
      return;
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
  snprintf(&buf, 0x100uLL, "Counts of X (%d) and B (%d) do not match.", a4, a5);
LABEL_54:
  v7(&buf);
}

uint64_t sub_2367C0A38(uint64_t a1, int a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

uint64_t sub_2367C0AEC(uint64_t a1, int a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

uint64_t sub_2367C0BA0(uint64_t a1, int a2, int a3, __int128 *a4, __int128 *a5)
{
  if (a2)
  {
    v7 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v7;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v7;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 2);
    v13 = *a5;
    v14 = *(a5 + 2);
    return SparseMultiplyAdd(&v15, &v10, &v13, 1.0, 0.0);
  }

  else
  {
    v9 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v9;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 2);
    v13 = *a5;
    v14 = *(a5 + 2);
    return SparseMultiply(&v15, &v10, &v13, 1.0, 0.0);
  }
}

void SparseSolve(void *__src, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, __int128 *a7)
{
  v19 = *MEMORY[0x277D85DE8];
  v16[0] = a3;
  v16[1] = 1;
  v16[2] = a3;
  v16[3] = 0;
  v17 = a4;
  v14[0] = a5;
  v14[1] = 1;
  v14[2] = a5;
  v14[3] = 0;
  v15 = a6;
  memcpy(__dst, __src, sizeof(__dst));
  v9 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v9;
  v13 = *(a2 + 32);
  v10 = *a7;
  v11 = *(a7 + 2);
  SparseSolve(__dst, v12, v16, v14, &v10);
}

{
  v19 = *MEMORY[0x277D85DE8];
  v16[0] = a3;
  v16[1] = 1;
  v16[2] = a3;
  v16[3] = 0;
  v17 = a4;
  v14[0] = a5;
  v14[1] = 1;
  v14[2] = a5;
  v14[3] = 0;
  v15 = a6;
  memcpy(__dst, __src, sizeof(__dst));
  v9 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v9;
  v13 = *(a2 + 32);
  v10 = *a7;
  v11 = *(a7 + 2);
  SparseSolve(__dst, v12, v16, v14, &v10);
}

void SparseSolve(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 1);
  v6 = (a1 + 2);
  v7 = v8;
  v9 = 4;
  if (*(a4 + 12))
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a4 + v10);
  if (*(a4 + 12))
  {
    v12 = 0;
  }

  else
  {
    v12 = 4;
  }

  v13 = *(a4 + v12);
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
    v7(__str);
    return;
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
      LODWORD(v23) = v18;
      WORD2(v23) = 1024;
      *(&v23 + 6) = v19;
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

        _SparseGMRESSolve_Complex_Double(v6, a4, a3, a2, a5);
        return;
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

      _SparseCGSolve_Complex_Double(v6, a4, a3, a2, a5);
      return;
    }

    if (v7)
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

  _SparseLSMRSolve_Complex_Double(v6, a4, a3, a2, a5);
}

{
  v38 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 1);
  v6 = (a1 + 2);
  v7 = v8;
  v9 = 4;
  if (*(a4 + 12))
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a4 + v10);
  if (*(a4 + 12))
  {
    v12 = 0;
  }

  else
  {
    v12 = 4;
  }

  v13 = *(a4 + v12);
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
    v7(__str);
    return;
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
      LODWORD(v23) = v18;
      WORD2(v23) = 1024;
      *(&v23 + 6) = v19;
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

        _SparseGMRESSolve_Complex_Float(v6, a4, a3, a2, a5);
        return;
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

      _SparseCGSolve_Complex_Float(v6, a4, a3, a2, a5);
      return;
    }

    if (v7)
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

  _SparseLSMRSolve_Complex_Float(v6, a4, a3, a2, a5);
}

void SparseSolve(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 1);
  v8 = (a1 + 2);
  v9 = v10;
  if (a5 <= 0)
  {
    if (v9)
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
      v21 = 0u;
      v22 = 0u;
      __str = 0u;
      v20 = 0u;
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
      v21 = 0u;
      v22 = 0u;
      __str = 0u;
      v20 = 0u;
      snprintf(&__str, 0x100uLL, "Bad dimensions for b (%dx%d)\n", a4);
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD138();
    }

    goto LABEL_26;
  }

  v17[0] = a5;
  v17[1] = 1;
  v17[2] = a5;
  v17[3] = 0;
  v18 = a6;
  v15[0] = a3;
  v15[1] = 1;
  v15[2] = a3;
  v15[3] = 0;
  v16 = a4;
  v11 = *a1;
  if (v11 == 2)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = sub_2367C14B4;
    v12[3] = &unk_278A00B60;
    v12[4] = a2;
    _SparseLSMRSolve_Complex_Double(v8, v17, v15, v12, a7);
    return;
  }

  if (v11 == 1)
  {
    if (a5 == a3)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 0x40000000;
      v13[2] = sub_2367C148C;
      v13[3] = &unk_278A00B38;
      v13[4] = a2;
      _SparseGMRESSolve_Complex_Double(v8, v17, v15, v13, a7);
      return;
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
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 0x40000000;
      v14[2] = sub_2367C1464;
      v14[3] = &unk_278A00B10;
      v14[4] = a2;
      _SparseCGSolve_Complex_Double(v8, v17, v15, v14, a7);
      return;
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
  v21 = 0u;
  v22 = 0u;
  __str = 0u;
  v20 = 0u;
  snprintf(&__str, 0x100uLL, "Counts of X (%d) and B (%d) do not match.", a4);
LABEL_23:
  v9(&__str);
}

{
  v35 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 1);
  v8 = (a1 + 2);
  v9 = v10;
  if (a5 <= 0)
  {
    if (v9)
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
      v21 = 0u;
      v22 = 0u;
      __str = 0u;
      v20 = 0u;
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
      v21 = 0u;
      v22 = 0u;
      __str = 0u;
      v20 = 0u;
      snprintf(&__str, 0x100uLL, "Bad dimensions for b (%dx%d)\n", a4);
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD138();
    }

    goto LABEL_26;
  }

  *&v17 = a5 | 0x100000000;
  *(&v17 + 1) = a5;
  v18 = a6;
  v15[0] = a3;
  v15[1] = 1;
  v15[2] = a3;
  v15[3] = 0;
  v16 = a4;
  v11 = *a1;
  if (v11 == 2)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = sub_2367CACD0;
    v12[3] = &unk_278A00D70;
    v12[4] = a2;
    _SparseLSMRSolve_Complex_Float(v8, &v17, v15, v12, a7);
    return;
  }

  if (v11 == 1)
  {
    if (a5 == a3)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 0x40000000;
      v13[2] = sub_2367CACA8;
      v13[3] = &unk_278A00D48;
      v13[4] = a2;
      _SparseGMRESSolve_Complex_Float(v8, &v17, v15, v13, a7);
      return;
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
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 0x40000000;
      v14[2] = sub_2367CAC80;
      v14[3] = &unk_278A00D20;
      v14[4] = a2;
      _SparseCGSolve_Complex_Float(v8, &v17, v15, v14, a7);
      return;
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
  v21 = 0u;
  v22 = 0u;
  __str = 0u;
  v20 = 0u;
  snprintf(&__str, 0x100uLL, "Counts of X (%d) and B (%d) do not match.", a4);
LABEL_23:
  v9(&__str);
}

void SparseIterate(int *a1, uint64_t a2, char *a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 1);
  v10 = a1 + 2;
  v11 = v12;
  v13 = 4;
  if (*(a8 + 12))
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a8 + v14);
  if (*(a8 + 12))
  {
    v13 = 0;
  }

  v16 = *(a8 + v13);
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
    snprintf(__str, 0x100uLL, "Invalid size for X (%dx%d).", a4, a5, a6, a7, a9);
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
    snprintf(__str, 0x100uLL, "Invalid size for B (%dx%d).", a4, a5, a6, a7, a9);
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
    snprintf(__str, 0x100uLL, "Invalid size for R (%dx%d).", a4, a5, a6, a7, a9);
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
      snprintf(__str, 0x100uLL, "Sizes of X (%dx%d), B (%dx%d) and R (%dx%d) are inconsistent.", a4, a5, a6, a7, a9, v15);
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
      snprintf(__str, 0x100uLL, "Sizes of residual matrix R(%dx%d) must be at least as large as right-hand side B (%dx%d).", a4, a5, a6, a7, a9);
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

    _SparseLSMRIterate_Complex_Double(v10, a2, a4, a3, a8, a6, a7, a9, a5);
  }

  else if (v29 == 1)
  {

    _SparseGMRESIterate_Complex_Double(v10, a2, a4, a3, a8, a6, a7, a9, a5);
  }

  else
  {

    _SparseCGIterate_Complex_Double(v10, a2, a4, a3, a8, a6, a7, a9, a5);
  }
}

void SparseIterate(int *a1, uint64_t a2, char *a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 1);
  v9 = a1 + 2;
  v10 = v11;
  v12 = 4;
  if (*(a8 + 12))
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a8 + v13);
  if (*(a8 + 12))
  {
    v12 = 0;
  }

  v15 = *(a8 + v12);
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
    snprintf(__str, 0x100uLL, "Invalid size for X (%dx%d).", a4, a5, a6, a7);
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
    snprintf(__str, 0x100uLL, "Invalid size for B (%dx%d).", a4, a5, a6, a7);
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
    snprintf(__str, 0x100uLL, "Invalid size for R (%dx%d).", a4, a5, a6, a7);
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
      snprintf(__str, 0x100uLL, "Sizes of X (%dx%d), B (%dx%d) and R (%dx%d) are inconsistent.", a4, a5, a6, a7, v14);
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
      snprintf(__str, 0x100uLL, "Sizes of residual matrix R(%dx%d) must be at least as large as right-hand side B (%dx%d).", a4, a5, a6, a7);
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
    _SparseLSMRIterate_Complex_Double(v9, a2, a4, a3, a8, a6, a7, 0, a5);
  }

  else if (v28 == 1)
  {
    _SparseGMRESIterate_Complex_Double(v9, a2, a4, a3, a8, a6, a7, 0, a5);
  }

  else
  {
    _SparseCGIterate_Complex_Double(v9, a2, a4, a3, a8, a6, a7, 0, a5);
  }
}

__n128 SparseRetain@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  if (v5 || !*(a1 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD3CC();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(v10, v4);
  v7 = *&v10[40];
  if (*a1 || !*(a1 + 80))
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

  _SparseRetainNumeric_Complex_Double(a1);
  v8 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v8;
  *(a2 + 96) = *(a1 + 96);
  v9 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v9;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

{
  v27 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  v4 = (a1 + 16);
  if (v5 || !*(a1 + 40))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD410();
    }

    goto LABEL_4;
  }

  p_factorSize_Double = &v4[-1].factorSize_Double;
  _SparseGetOptionsFromSymbolicFactor(&v13, v4);
  reportError = v13.reportError;
  if (*p_factorSize_Double || !*(a1 + 88))
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

  _SparseRetainNumeric_Complex_Double(p_factorSize_Double);
  v9 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v9;
  v10 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v10;
  v11 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v11;
  result = *(a1 + 32);
  v12 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v12;
  return result;
}

{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  if (v5 || !*(a1 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD3CC();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(v10, v4);
  v7 = *&v10[40];
  if (*a1 || !*(a1 + 80))
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

  _SparseRetainNumeric_Complex_Float(a1);
  v8 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v8;
  *(a2 + 96) = *(a1 + 96);
  v9 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v9;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

{
  v27 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  v4 = (a1 + 16);
  if (v5 || !*(a1 + 40))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD410();
    }

    goto LABEL_4;
  }

  p_factorSize_Double = &v4[-1].factorSize_Double;
  _SparseGetOptionsFromSymbolicFactor(&v13, v4);
  reportError = v13.reportError;
  if (*p_factorSize_Double || !*(a1 + 88))
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

  _SparseRetainNumeric_Complex_Float(p_factorSize_Double);
  v9 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v9;
  v10 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v10;
  v11 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v11;
  result = *(a1 + 32);
  v12 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v12;
  return result;
}

void SparseCleanup(uint64_t a1)
{
  if ((*a1 & 0x80000000) == 0)
  {
    _SparseDestroyOpaqueNumeric_Complex_Double(a1);
  }
}

{
  v2 = *(a1 + 8);
  v1 = a1 + 8;
  if ((v2 & 0x80000000) == 0)
  {
    _SparseDestroyOpaqueNumeric_Complex_Double(v1);
  }
}

{
  if ((*(a1 + 24) & 0x80000000) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD454();
    }

    _SparseTrap();
  }

  v2 = *(a1 + 8);

  free(v2);
}

{
  v2 = *(a1 + 8);
  v1 = a1 + 8;
  if ((v2 & 0x80000000) == 0)
  {
    _SparseDestroyOpaqueNumeric_Complex_Float(v1);
  }
}

{
  if ((*(a1 + 24) & 0x80000000) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD454();
    }

    _SparseTrap();
  }

  v2 = *(a1 + 8);

  free(v2);
}

void SparseCleanup(_DWORD *a1)
{
  if (*a1 <= 1u)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD498();
    }

    _SparseTrap();
  }

  _SparseReleaseOpaquePreconditioner_Complex_Double(a1);
}

{
  if (*a1 <= 1u)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD498();
    }

    _SparseTrap();
  }

  _SparseReleaseOpaquePreconditioner_Complex_Float(a1);
}

void SparseConvertFromCoordinate(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, int *a6@<X5>, int *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v9 = a1;
  if ((a1 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D34C();
    }

LABEL_21:
    _SparseTrap();
  }

  v11 = a2;
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

  v17 = a4;
  if (a1 != a2 && (a5 & 0xC) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBBDC();
    }

    goto LABEL_21;
  }

  v18 = malloc_type_malloc(4 * a3 + 8 * ((a2 + 1) + a4 * a3 * a4) + 28, 0x100004000313F17uLL);
  if (!v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD4DC();
    }

    goto LABEL_21;
  }

  v19 = v18;
  v20 = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
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
  _SparseConvertFromCoordinate_Complex_Float(v9, v11, a3, v17, v21, a6, a7, a8, a9, v19, v20);
  free(v22);
  *(a9 + 24) |= 0x8000u;
}

void SparseConvertFromCoordinate(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, int *a6@<X5>, int *a7@<X6>, void *a8@<X7>, void *a9@<X8>, uint64_t a10, unsigned int *a11)
{
  if ((a1 & 0x80000000) != 0)
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

  _SparseConvertFromCoordinate_Complex_Float(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

int64_t SparseMultiply(uint64_t a1, unsigned int *a2, unsigned int *a3, float a4, float a5)
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
  return _SparseSpMV_Complex_Float(buf, &v23, 0, &v21, a4, a5);
}

int64_t SparseMultiply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, float a7)
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
  return _SparseSpMV_Complex_Float(v12, v16, 0, v14, a6, a7);
}

int64_t SparseMultiply(uint64_t a1, __int128 *a2, __int128 *a3)
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

int64_t SparseMultiply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  return SparseMultiply(v7, a2, a3, a4, a5, 1.0, 0.0);
}

int64_t SparseMultiplyAdd(uint64_t a1, unsigned int *a2, unsigned int *a3, float a4, float a5)
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
  return _SparseSpMV_Complex_Float(buf, &v23, 1, &v21, a4, a5);
}

int64_t SparseMultiplyAdd(uint64_t a1, __int128 *a2, __int128 *a3)
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

int64_t SparseMultiplyAdd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, float a7)
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
  return _SparseSpMV_Complex_Float(v12, v16, 1, v14, a6, a7);
}

int64_t SparseMultiplyAdd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  return SparseMultiplyAdd(v7, a2, a3, a4, a5, 1.0, 0.0);
}

void SparseSolve(SparseOpaqueSymbolicFactorization *factor, unsigned int *a2, void *a3)
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

  _SparseSolveOpaque_Complex_Float(factor, 0, a2, a3, v7, v8, v9, v10);
}

void SparseSolve(SparseOpaqueSymbolicFactorization *factor, unsigned int *a2, unsigned int *a3, void *a4)
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

  _SparseSolveOpaque_Complex_Float(factor, a2, a3, a4, v9, v10, v11, v12);
}

void SparseSolve(SparseOpaqueSymbolicFactorization *factor, uint64_t a2, int *a3, void *a4)
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
  _SparseSolveOpaque_Complex_Float(factor, 0, &v17, a4, v9, v10, v11, v12);
}

void SparseSolve(SparseOpaqueSymbolicFactorization *factor, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, void *a6)
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
  _SparseSolveOpaque_Complex_Float(factor, &v28, v26, a6, v13, v14, v15, v16);
}

uint64_t SparseUpdateFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  return _SparseUpdatePartialRefactorLU_Complex_Float(a2, a3, a4, v7);
}

uint64_t SparseSolve(__int16 *a1, unsigned int *a2, unsigned int *a3)
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
  if (a2[2] < *a2)
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

  if (a2[3])
  {
    v18 = 1;
  }

  else
  {
    v18 = 0;
    v16 = a2[1];
  }

  v19 = (a3[3] & 1) == 0;
  v20 = a3[v19];
  v21 = a2[v18];
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
  _SparseSolveSubfactor_Complex_Float(a1, a2, a3, v25);
  return (free)(v26);
}

void SparseSolve(uint64_t a1, uint64_t a2, void *a3)
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
      _SparseSolveSubfactor_Complex_Float(a1, 0, a2, a3);
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

void SparseSolve(__int16 *a1, unsigned int *a2, unsigned int *a3, void *a4)
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
  if (a2[2] < *a2)
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

  if (a2[3])
  {
    v19 = 1;
  }

  else
  {
    v19 = 0;
    v18 = a2[1];
  }

  v20 = (a3[3] & 1) == 0;
  v21 = a3[v20];
  v22 = a2[v19];
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

  _SparseSolveSubfactor_Complex_Float(a1, a2, a3, a4);
}

void SparseSolve(_OWORD *a1, int a2, uint64_t a3, void *a4)
{
  v4 = a1[5];
  v10[4] = a1[4];
  v10[5] = v4;
  v5 = a1[7];
  v10[6] = a1[6];
  v10[7] = v5;
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v7 = a1[3];
  v10[2] = a1[2];
  v10[3] = v7;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a2;
  v8[3] = 0;
  v9 = a3;
  SparseSolve(v10, v8, a4);
}

void SparseSolve(_OWORD *a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v6 = a1[5];
  v14[4] = a1[4];
  v14[5] = v6;
  v7 = a1[7];
  v14[6] = a1[6];
  v14[7] = v7;
  v8 = a1[1];
  v14[0] = *a1;
  v14[1] = v8;
  v9 = a1[3];
  v14[2] = a1[2];
  v14[3] = v9;
  v12[0] = a2;
  v12[1] = 1;
  v12[2] = a2;
  v12[3] = 0;
  v13 = a3;
  v10[0] = a4;
  v10[1] = 1;
  v10[2] = a4;
  v10[3] = 0;
  v11 = a5;
  SparseSolve(v14, v12, v10, a6);
}

void SparseCreatePreconditioner(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 28);
  v5 = 4;
  if (*(a2 + 24))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (*(a2 + 24))
  {
    v5 = 0;
  }

  if (*(a2 + v6) * v4 < 1 || *(a2 + v5) * v4 <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCE70();
    }

    _SparseTrap();
  }

  _SparseCreatePreconditioner_Complex_Float(a1, a2, a3);
}

int64_t sub_2367C8A10(uint64_t a1, int a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

int64_t sub_2367C8AC4(uint64_t a1, int a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

int64_t sub_2367C8B78(uint64_t a1, int a2, int a3, __int128 *a4, __int128 *a5)
{
  if (a2)
  {
    v7 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v7;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v7;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 2);
    v13 = *a5;
    v14 = *(a5 + 2);
    return SparseMultiplyAdd(&v15, &v10, &v13, 1.0, 0.0);
  }

  else
  {
    v9 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v9;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 2);
    v13 = *a5;
    v14 = *(a5 + 2);
    return SparseMultiply(&v15, &v10, &v13, 1.0, 0.0);
  }
}

int64_t sub_2367C9A18(uint64_t a1, int a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

int64_t sub_2367C9ACC(uint64_t a1, int a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

int64_t sub_2367C9B80(uint64_t a1, int a2, int a3, __int128 *a4, __int128 *a5)
{
  if (a2)
  {
    v7 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v7;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v7;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 2);
    v13 = *a5;
    v14 = *(a5 + 2);
    return SparseMultiplyAdd(&v15, &v10, &v13, 1.0, 0.0);
  }

  else
  {
    v9 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v9;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 2);
    v13 = *a5;
    v14 = *(a5 + 2);
    return SparseMultiply(&v15, &v10, &v13, 1.0, 0.0);
  }
}

int64_t sub_2367CA254(uint64_t a1, int a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

int64_t sub_2367CA308(uint64_t a1, int a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

int64_t sub_2367CA3BC(uint64_t a1, int a2, int a3, __int128 *a4, __int128 *a5)
{
  if (a2)
  {
    v7 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v7;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v7;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 2);
    v13 = *a5;
    v14 = *(a5 + 2);
    return SparseMultiplyAdd(&v15, &v10, &v13, 1.0, 0.0);
  }

  else
  {
    v9 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v9;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 2);
    v13 = *a5;
    v14 = *(a5 + 2);
    return SparseMultiply(&v15, &v10, &v13, 1.0, 0.0);
  }
}

void SparseIterate(int *a1, uint64_t a2, char *a3, float *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 1);
  v10 = a1 + 2;
  v11 = v12;
  v13 = 4;
  if (*(a8 + 12))
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a8 + v14);
  if (*(a8 + 12))
  {
    v13 = 0;
  }

  v16 = *(a8 + v13);
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
    snprintf(__str, 0x100uLL, "Invalid size for X (%dx%d).", a4, a5, a6, a7, a9);
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
    snprintf(__str, 0x100uLL, "Invalid size for B (%dx%d).", a4, a5, a6, a7, a9);
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
    snprintf(__str, 0x100uLL, "Invalid size for R (%dx%d).", a4, a5, a6, a7, a9);
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
      snprintf(__str, 0x100uLL, "Sizes of X (%dx%d), B (%dx%d) and R (%dx%d) are inconsistent.", a4, a5, a6, a7, a9, v15);
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
      snprintf(__str, 0x100uLL, "Sizes of residual matrix R(%dx%d) must be at least as large as right-hand side B (%dx%d).", a4, a5, a6, a7, a9);
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

    _SparseLSMRIterate_Complex_Float(v10, a2, a4, a3, a8, a6, a7, a9, a5);
  }

  else if (v29 == 1)
  {

    _SparseGMRESIterate_Complex_Float(v10, a2, a4, a3, a8, a6, a7, a9, a5);
  }

  else
  {

    _SparseCGIterate_Complex_Float(v10, a2, a4, a3, a8, a6, a7, a9, a5);
  }
}

void SparseIterate(int *a1, uint64_t a2, char *a3, float *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 1);
  v9 = a1 + 2;
  v10 = v11;
  v12 = 4;
  if (*(a8 + 12))
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a8 + v13);
  if (*(a8 + 12))
  {
    v12 = 0;
  }

  v15 = *(a8 + v12);
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
    snprintf(__str, 0x100uLL, "Invalid size for X (%dx%d).", a4, a5, a6, a7);
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
    snprintf(__str, 0x100uLL, "Invalid size for B (%dx%d).", a4, a5, a6, a7);
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
    snprintf(__str, 0x100uLL, "Invalid size for R (%dx%d).", a4, a5, a6, a7);
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
      snprintf(__str, 0x100uLL, "Sizes of X (%dx%d), B (%dx%d) and R (%dx%d) are inconsistent.", a4, a5, a6, a7, v14);
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
      snprintf(__str, 0x100uLL, "Sizes of residual matrix R(%dx%d) must be at least as large as right-hand side B (%dx%d).", a4, a5, a6, a7);
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
    _SparseLSMRIterate_Complex_Float(v9, a2, a4, a3, a8, a6, a7, 0, a5);
  }

  else if (v28 == 1)
  {
    _SparseGMRESIterate_Complex_Float(v9, a2, a4, a3, a8, a6, a7, 0, a5);
  }

  else
  {
    _SparseCGIterate_Complex_Float(v9, a2, a4, a3, a8, a6, a7, 0, a5);
  }
}

void SparseCleanup(uint64_t result)
{
  if ((*result & 0x80000000) == 0)
  {
    _SparseDestroyOpaqueNumeric_Complex_Float(result);
  }
}

void sub_2367CBB64()
{
  sub_2366F711C();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2367CBC20()
{
  sub_2366F711C();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2367CBCDC()
{
  sub_2366FFDB8();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_2367CBD60()
{
  sub_2367CB8A8();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_2367CBDE4()
{
  sub_2367CB8A8();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_2367CBE68()
{
  sub_2367CB8D0(*MEMORY[0x277D85DE8]);
  sub_2367CB9E0();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Au);
}

void sub_2367CBED8()
{
  sub_2367CB8D0(*MEMORY[0x277D85DE8]);
  sub_2367CB9E0();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Au);
}

void sub_2367CBF48()
{
  sub_2367CB968();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_2367CBFCC()
{
  sub_2367CB968();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_2367CC050()
{
  sub_2367CB934();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_2367CC114()
{
  sub_2367CB994();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_2367CC19C()
{
  sub_2367CB9A4();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_2367CC22C()
{
  sub_2367CB9EC(*MEMORY[0x277D85DE8]);
  sub_2367CB9D4();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2367CC2A4()
{
  sub_2367CB9EC(*MEMORY[0x277D85DE8]);
  sub_2367CB9D4();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2367CC360()
{
  sub_2366FFDB8();
  sub_2367CBA04();
  sub_2367CB9B4();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void sub_2367CC3F4()
{
  sub_2366F711C();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2367CC46C()
{
  sub_2367CB8A8();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_2367CC4F0()
{
  sub_2366FFDB8();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_2367CC574()
{
  sub_2367CB8A8();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_2367CC5F8()
{
  sub_2367CB968();
  sub_2367CB9F8();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_2367CC68C()
{
  sub_2367CB97C();
  sub_2367CB8FC();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void sub_2367CC71C()
{
  sub_2367CB97C();
  sub_2367CB8FC();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void sub_2367CC7AC()
{
  sub_2367CB9A4();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_2367CC83C()
{
  sub_2367CB9EC(*MEMORY[0x277D85DE8]);
  sub_2367CB9D4();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2367CC93C()
{
  sub_2367CB9A4();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_2367CCC30()
{
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_2367CCD74()
{
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_2367CCDEC()
{
  sub_2366FFDB8();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_2367CCE70()
{
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_2367CCEE8()
{
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_2367CCF60()
{
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_2367CCFD8()
{
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_2367CD050()
{
  sub_2367CB8D0(*MEMORY[0x277D85DE8]);
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Au);
}

void sub_2367CD0C0()
{
  sub_2367CB918();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_2367CD138()
{
  sub_2367CB918();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_2367CD1F4()
{
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_2367CD26C()
{
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_2367CD2E4()
{
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_2367CD35C()
{
  sub_2367CB8D0(*MEMORY[0x277D85DE8]);
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Au);
}

void sub_2367CD91C()
{
  sub_2367CB934();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_2367CD9E0()
{
  sub_2367CB9C4(*MEMORY[0x277D85DE8]);
  sub_2367CB9D4();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2367CDA58()
{
  sub_2367CB9C4(*MEMORY[0x277D85DE8]);
  sub_2367CB9D4();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2367CDAD0()
{
  sub_2367CB9C4(*MEMORY[0x277D85DE8]);
  sub_2367CB9D4();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

SparseNumericFactorOptions *__cdecl _SparseGetOptionsFromNumericFactor_Float(SparseNumericFactorOptions *__return_ptr retstr, SparseNumericFactorOptions *factor)
{
  pivotTolerance = factor[2].pivotTolerance;
  v3 = *(*&pivotTolerance + 16);
  *&retstr->control = **&pivotTolerance;
  *&retstr->pivotTolerance = v3;
  return factor;
}

int *sub_2367CDB58(int *result, unsigned int *a2)
{
  v3 = result;
  if ((*(a2 + 6) ^ *(result + 6)))
  {
    v8 = a2[1];
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = *a2;
      do
      {
        if (v11 >= 1)
        {
          v12 = (*(a2 + 2) + v9 * a2[2]);
          v13 = (*(result + 2) + v9);
          v14 = 4 * result[2];
          v15 = v11;
          do
          {
            *v12++ = *v13;
            v13 = (v13 + v14);
            --v15;
          }

          while (v15);
        }

        ++v10;
        v9 += 4;
      }

      while (v10 != v8);
    }
  }

  else
  {
    v4 = result[2];
    if (v4 == *result && a2[2] == v4)
    {
      v5 = *(a2 + 2);
      v6 = *(v3 + 2);
      v7 = 4 * v3[1] * v4;

      return memcpy(v5, v6, v7);
    }

    else if (result[1] >= 1)
    {
      v16 = 0;
      do
      {
        result = memcpy((*(a2 + 2) + 4 * (a2[2] * v16)), (*(v3 + 2) + 4 * v3[2] * v16), 4 * *v3);
        ++v16;
      }

      while (v16 < v3[1]);
    }
  }

  return result;
}