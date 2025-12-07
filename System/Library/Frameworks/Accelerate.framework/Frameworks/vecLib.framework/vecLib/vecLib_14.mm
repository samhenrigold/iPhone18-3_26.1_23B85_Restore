void sub_236760650(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2366FB870(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23676066C(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = *(v3 + 64);
  v5 = *(v4 + 2);
  v6 = *(v5 + 344);
  v7 = *(v6 + 4 * a2);
  v52 = (a2 << 32) + 0x100000000;
  v8 = *(v6 + (v52 >> 30));
  v9 = a1[5];
  v10 = *(v3 + 48);
  v54 = *(v5 + 168);
  v55 = *(v4 + 5);
  v65[0] = 0;
  v65[1] = 0;
  v64[0] = 0;
  v64[1] = 0;
  v63[0] = 0;
  v63[1] = 0;
  v62[0] = 0;
  v62[1] = 0;
  v61[0] = 0;
  v61[1] = 0;
  v11 = *(v5 + 56);
  v12 = (4 * v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = &v9[v12];
  v59[0] = v9;
  v59[1] = v11 & 0x3FFFFFFFFFFFFFFFLL;
  v60 = 1;
  bzero(v9, 4 * v11);
  v14 = *(*(v4 + 2) + 168);
  v57[0] = v13;
  v57[1] = v14 & 0x3FFFFFFFFFFFFFFFLL;
  v58 = 1;
  v15 = 4 * v14;
  bzero(v13, 4 * v14);
  v16 = 0;
  v56 = 0;
  if (v7 < v8)
  {
    v17 = v10;
    v18 = v7;
    v19 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = &v13[v19];
    v21 = v17 - (v12 + v19);
    v16 = 1;
    v22 = (32 * v7) | 8;
    while (1)
    {
      v23 = *(v4 + 14);
      if (*(v23 + v18) & 1) != 0 || (sub_23675B824(v7, *(v4 + 1), *v4, *(v4 + 2), *(v4 + 6), *(v4 + 4), *(v4 + 20), *(v4 + 21), v65, v64, v63, v62, v61, v59, v23, *(v4 + 15), v20), (*(*(v4 + 14) + v18)))
      {
        *(**(v4 + 21) + v22) = *(**(v4 + 21) + v22 - 8);
        v24 = *(v4 + 19);
        *(**(v4 + 20) + v22) = *(**(v4 + 20) + v22 - 8);
        v25 = sub_23675DB04(v7, HIDWORD(a2), *(v4 + 1), *v4, *(v4 + 2), *(v4 + 6), *(v4 + 4), &v56 + 1, &v56, v55, v54, v63, v62, v61, v59, v57, *(v4 + 14), *(v4 + 15), *(v4 + 16), *(v4 + 17), *(v4 + 18), v24, v20, v21, *(v4 + 13), a1, v4);
        if (v25)
        {
          break;
        }
      }

      v16 = ++v18 < v8;
      v7 = (v7 + 1);
      v22 += 32;
      if (v8 == v7)
      {
        goto LABEL_10;
      }
    }

    _X2 = 0;
    v27 = a1[1];
    atomic_store(v25, (v27 + 16));
    atomic_store(1u, (v27 + 12));
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X1] }

    if (_X2)
    {
      __ulock_wake();
    }
  }

LABEL_10:
  (*(*(v4 + 2) + 32))(v65[0]);
  (*(*(v4 + 2) + 32))(v64[0]);
  (*(*(v4 + 2) + 32))(v63[0]);
  (*(*(v4 + 2) + 32))(v62[0]);
  result = (*(*(v4 + 2) + 32))(v61[0]);
  if (!v16)
  {
    v35 = v52 >> 32;
    v36 = *(*(v4 + 4) + 136);
    v37 = HIDWORD(v56);
    while (1)
    {
      v38 = *(v4 + 4);
      if (v37 <= v36)
      {
        break;
      }

      v39 = v36;
      atomic_compare_exchange_strong_explicit((v38 + 136), &v39, v37, memory_order_relaxed, memory_order_relaxed);
      _ZF = v39 == v36;
      v36 = v39;
      if (_ZF)
      {
        v38 = *(v4 + 4);
        break;
      }
    }

    v40 = *(v38 + 140);
    v41 = v56;
    do
    {
      if (v41 <= v40)
      {
        break;
      }

      v42 = v40;
      atomic_compare_exchange_strong_explicit((*(v4 + 4) + 140), &v42, v41, memory_order_relaxed, memory_order_relaxed);
      _ZF = v42 == v40;
      v40 = v42;
    }

    while (!_ZF);
    v43 = *(v4 + 2);
    v44 = *(v43 + 352);
    v45 = *(v44 + 8 * a2);
    if (v45 < *(v44 + 8 * v35))
    {
      do
      {
        v46 = (*(v4 + 7) + 40 * *(*(v43 + 360) + 4 * v45));
        if (atomic_fetch_add_explicit(v46, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v47 = a1[2];
          if (v47)
          {
            do
            {
              __asm { CASP            X4, X5, X4, X5, [X1] }

              *(v47 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
              *(v47 + 32) = 0;
              _X2 = _X4 & 1 | v47;
              _X7 = 0;
              __asm { CASPL           X6, X7, X2, X3, [X1] }
            }

            while (_X6 != _X4);
            if (_X4)
            {
              result = __ulock_wake();
            }
          }

          a1[2] = v46;
          a1[3] = 0;
        }

        ++v45;
        v43 = *(v4 + 2);
      }

      while (v45 < *(*(v43 + 352) + 8 * v35));
    }
  }

  return result;
}

uint64_t _SparseNumericFactorHermitian_Complex_Float@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X4>, uint64_t a5@<X8>, uint64_t a6@<X3>)
{
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  v10 = a1[2];
  *(a5 + 56) = a1[3];
  *(a5 + 40) = v10;
  v11 = *a1;
  *(a5 + 24) = a1[1];
  v12 = *(a1 + 17);
  v13 = *(a1 + 3);
  *a5 = -3;
  *(a5 + 8) = v11;
  *(a5 + 72) = 1;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 8 * *(a2 + 4) * *(a2 + 28);
  atomic_fetch_add((v13 + 48), 1u);
  *(a5 + 80) = sub_236760B50(v12, v13, 2 * *(a1 + 6), a3, a6);

  return _SparseRefactorHermitian_Complex_Float(a2, a5, a3, a4);
}

uint64_t sub_236760B50(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    a5 = (*(a2 + 24))(a3);
    if (!a5)
    {
      if (*(a2 + 40))
      {
        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Allocation of size %zd failed in SparseFactorSymmetric.", a3);
        v10 = *(a2 + 40);
        goto LABEL_31;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F726C();
      }

LABEL_36:
      _SparseTrap();
    }
  }

  v9 = 4 * *(a2 + 60);
  if (*(a4 + 4) <= 1u)
  {
    if (*(a4 + 4))
    {
      v11 = *(a4 + 8) == 0;
    }

    else
    {
      v11 = a1 == 0;
    }

    if (v11)
    {
      v9 = 0;
    }
  }

  else if (*(a4 + 4) - 2 >= 2)
  {
    v10 = *(a2 + 40);
    if (v10)
    {
      memset(&__str[88], 0, 168);
      strcpy(__str, "SparseScalingHungarianScalingAndOrdering is not supported for symmetric factorizations.");
LABEL_31:
      v10(__str, a2, a3, a4, a5);
      return 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F7228();
    }

    goto LABEL_36;
  }

  v12 = a5 + a3;
  v13 = ((a5 + 103) & 0xFFFFFFFFFFFFFFF8);
  if (a5 + a3 < v13 || (v14 = &v13[*(a2 + 64)], v14 > v12))
  {
LABEL_38:
    __break(1u);
  }

  if (v9)
  {
    v15 = (v14 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v15)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v15 = &v13[*(a2 + 64)];
    v14 = 0;
  }

  v16 = *(a4 + 16);
  *a5 = *a4;
  *(a5 + 16) = v16;
  *(a5 + 32) = 1;
  *(a5 + 40) = v13;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 64) = v14;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 85) = 0;
  v17 = *(a2 + 64);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = v15;
    do
    {
      v20 = *(*(a2 + 88) + 4 * v18 + 4) - *(*(a2 + 88) + 4 * v18);
      v21 = (16 * v20) | 8;
      if ((a1 - 3) >= 2)
      {
        v21 = 8;
      }

      v15 = (v19 + v21 + ((8 * (*(*(a2 + 120) + 8 * v18 + 8) - *(*(a2 + 120) + 8 * v18))) | 4) * v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v12 < v15)
      {
        goto LABEL_38;
      }

      v13[v18] = v19;
      v13 = *(a5 + 40);
      *v13[v18++] = 0;
      v19 = v15;
    }

    while (v17 != v18);
  }

  if (a1 == 4)
  {
    v22 = (v15 + 4 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v22)
    {
      goto LABEL_38;
    }

    *(a5 + 48) = v15;
    v15 = (v22 + 4 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v15)
    {
      goto LABEL_38;
    }

    *(a5 + 56) = v22;
  }

  *(a5 + 72) = v15 - *v13;
  return a5;
}

uint64_t _SparseRefactorHermitian_Complex_Float(int *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a2;
  v96 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 32);
  if ((~*(a1 + 12) & 0x1C) != 0)
  {
    v18 = *(v5 + 40);
    if (v18)
    {
      memset(&v90[66], 0, 190);
      strcpy(v90, "_SparseRefactorHermitian only applies to SparseHermitian matrices");
LABEL_11:
      v18(v90);
      result = 4294967292;
      goto LABEL_85;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236763D08();
    }

LABEL_23:
    _SparseTrap();
  }

  v9 = *a1;
  v10 = *(a1 + 28);
  v11 = *(a2 + 80);
  v12 = *(a2 + 25);
  v13 = *(a3 + 4);
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      if (v13 == 3)
      {
        v88 = *(a2 + 25);
        v14 = sub_2366FE684(v9, *(*(a1 + 1) + 8 * v9), v10);
        v15 = a4;
        if (v14 + 4 * v9 > (2 * *(v4 + 40)))
        {
          v15 = (*(v5 + 24))();
        }

        v16 = *(v11 + 64);
        v17 = *(a1 + 1);
        *v90 = *a1;
        *&v90[16] = v17;
        *&v90[32] = *(a1 + 4);
        sub_236794CB4(v90, v15, v16, &v15[4 * v9], v14);
        v12 = v88;
        if (v15 != a4)
        {
          (*(v5 + 32))(v15);
        }

        goto LABEL_15;
      }

      v18 = *(v5 + 40);
      if (v18)
      {
        memset(&v90[88], 0, 168);
        strcpy(v90, "SparseScalingHungarianScalingAndOrdering is not supported for symmetric factorizations.");
        goto LABEL_11;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F7228();
      }

      goto LABEL_23;
    }

LABEL_14:
    v19 = *(v11 + 64);
    v20 = *(a1 + 1);
    *v90 = *a1;
    *&v90[16] = v20;
    *&v90[32] = *(a1 + 4);
    sub_236806094(v90, v19, a4);
    goto LABEL_15;
  }

  if (!*(a3 + 4))
  {
    if (!*(a2 + 25))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v26 = *(a3 + 8);
  if (v26)
  {
    v27 = (v9 * v10);
    if (v27 >= 1)
    {
      v28 = *(v11 + 64);
      do
      {
        v29 = *v26++;
        *v28++ = v29;
        --v27;
      }

      while (v27);
    }
  }

LABEL_15:
  v21 = *(a3 + 8);
  if (v21 && *(a3 + 4) != 1)
  {
    v22 = *(v11 + 64);
    v23 = (v9 * v10);
    if (v22)
    {
      if (v23 >= 1)
      {
        do
        {
          v24 = *v22++;
          *v21++ = v24;
          --v23;
        }

        while (v23);
      }
    }

    else if (v23 >= 1)
    {
      memset_pattern16(v21, &unk_23681FB80, 4 * (v9 * v10));
    }
  }

  v87 = a1;
  v30 = *(a1 + 28);
  v31 = 0x100 / v30 * v30;
  if (v31 <= v30)
  {
    v32 = *(a1 + 28);
  }

  else
  {
    v32 = v31;
  }

  v33 = &a4[2 * *(v4 + 40)];
  v34 = *(v5 + 60);
  v89 = &a4[4 * v34 + 7] & 0xFFFFFFFFFFFFFFF8;
  if (v33 < v89)
  {
    goto LABEL_88;
  }

  if (v34 >= 1)
  {
    v35 = 0;
    v36 = *(v5 + 80);
    do
    {
      *&a4[4 * *(v36 + 4 * v35)] = v35;
      ++v35;
    }

    while (v35 < *(v5 + 60));
  }

  bzero(**(v11 + 40), *(v11 + 72));
  v37 = *(v5 + 64);
  if (v37 < 1)
  {
    v42 = 0;
  }

  else
  {
    v38 = 0;
    v39 = *(v11 + 40);
    do
    {
      v40 = *(v39 + 8 * v38);
      v41 = *v40;
      if (*v40)
      {
        bzero(v40, *v40);
        v39 = *(v11 + 40);
        v37 = *(v5 + 64);
        v40 = *(v39 + 8 * v38);
      }

      *v40 = v41;
      ++v38;
    }

    while (v38 < v37);
    v42 = v37 > 0;
  }

  v43 = *(v5 + 60);
  if (*(v5 + 52) > 1)
  {
    v44 = (8 * v32 * v32 + 56) + 4 * (v43 + 2 * v32);
    v45 = v4;
    if ((v12 - 3) >= 2)
    {
      if (v12 == 2)
      {
        v51 = *(v5 + 176);
        v52 = 8 * v51;
        v53 = v51 <= 4160;
        v54 = 33280;
        if (!v53)
        {
          v54 = v52;
        }

        v44 += v54;
      }
    }

    else
    {
      v46 = 16 * v43;
      if (*(v5 + 60) <= 2080)
      {
        v46 = 33280;
      }

      v44 += v46;
    }

    v55 = sub_2366FCCD0(0);
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    v56 = (v89 + (v44 + 16) * v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v33 >= v56)
    {
      v57 = sub_2366FCCD0(0);
      _X2 = 0;
      LODWORD(v91) = v57;
      atomic_store(0, &v91 + 1);
      atomic_store(0, (&v91 | 0xC));
      atomic_store(0, &v92);
      v59 = v93;
      do
      {
        _X5 = *(&v93 + 1);
        __asm { CASPAL          X4, X5, X2, X3, [X26] }

        _ZF = _X4 == v59;
        v59 = _X4;
      }

      while (!_ZF);
      *&v94 = v44;
      *(&v94 + 1) = v89;
      *&v90[36] = 0;
      *v90 = v12;
      *&v90[8] = v87;
      *&v90[16] = v5;
      *&v90[24] = v11;
      *&v90[32] = v32;
      *&v90[40] = a4;
      v66 = *(v5 + 64);
      v67 = v56 + 40 * v66;
      if (v67 <= v33)
      {
        *&v90[48] = v56;
        v68 = (v67 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v33 >= v68)
        {
          *&v90[56] = v67;
          v69 = v68 + 19200;
          if (v68 + 19200 <= v33)
          {
            *&v90[64] = sub_2367921D4(100, (v68 + 15) & 0xFFFFFFFFFFFFFFF0);
            *&v90[72] = v70;
            if (v69 + 48 * *(v5 + 168) <= v33)
            {
              *&v90[80] = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
              *&v90[88] = 0;
              *&v95 = v90;
              if (*(v5 + 64) >= 1)
              {
                _X22 = 0;
                v72 = 0;
                do
                {
                  v73 = v72 + 1;
                  v74 = *&v90[48] + 40 * v72;
                  _ZF = *(*(v5 + 96) + 4 * (v72 + 1)) == *(*(v5 + 96) + 4 * v72);
                  atomic_store(*(*(v5 + 96) + 4 * (v72 + 1)) - *(*(v5 + 96) + 4 * v72), v74);
                  *(v74 + 8) = v72;
                  *(v74 + 16) = sub_236762950;
                  *(*&v90[56] + v72) = 0;
                  if (_ZF)
                  {
                    v75 = *&v90[48] + 40 * v72;
                    _X0 = 0;
                    _X1 = 0;
                    __asm { CASP            X0, X1, X0, X1, [X24] }

                    *(v75 + 24) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                    *(v75 + 32) = 0;
                    v79 = _X0 & 1;
                    _X2 = v79 | v75;
                    _X5 = 0;
                    __asm { CASPL           X4, X5, X2, X3, [X24] }

                    while (_X4 != _X0)
                    {
                      _X1 = 0;
                      __asm { CASP            X0, X1, X22, X23, [X10] }

                      *(v75 + 24) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                      *(v75 + 32) = 0;
                      v79 = _X0 & 1;
                      _X2 = v79 | v75;
                      _X5 = 0;
                      __asm { CASPL           X4, X5, X2, X3, [X10] }
                    }

                    if (v79)
                    {
                      __ulock_wake();
                    }
                  }

                  v72 = v73;
                }

                while (v73 < *(v5 + 64));
              }

              result = sub_2366FCD2C(&v91, 0);
              v4 = v45;
              goto LABEL_85;
            }
          }
        }
      }
    }

LABEL_88:
    __break(1u);
  }

  v86 = v4;
  v47 = ((v89 + 4 * v43 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v33 < v47)
  {
    goto LABEL_88;
  }

  v48 = (&v47[v32 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v33 < v48)
  {
    goto LABEL_88;
  }

  v49 = (v48 + 4 * v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v33 < v49 || v49 + 8 * v32 * v32 > v33)
  {
    goto LABEL_88;
  }

  if (v42)
  {
    v50 = 0;
    while (1)
    {
      result = sub_236762BA8(0, v50, v12, v87, v5, v11, v32, a4, v89, v47, ((&v47[v32 + 1] + 3) & 0xFFFFFFFFFFFFFFF8), (v48 + 4 * v32 + 7) & 0xFFFFFFFFFFFFFFF8, (v49 + 8 * v32 * v32), 0);
      if (result)
      {
        break;
      }

      v50 = (v50 + 1);
      if (v50 >= *(v5 + 64))
      {
        goto LABEL_60;
      }
    }
  }

  else
  {
LABEL_60:
    result = 0;
  }

  v4 = v86;
LABEL_85:
  *v4 = result;
  return result;
}

uint64_t _SparseFactorHermitian_Complex_Float@<X0>(unsigned int a1@<W0>, int *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v227 = *MEMORY[0x277D85DE8];
  if (a1 == 1)
  {
    v7 = 4;
  }

  else
  {
    v7 = a1;
  }

  v9 = *a2;
  v8 = a2[1];
  v10 = *(*(a2 + 1) + 8 * v9);
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 32) = 0u;
  *a5 = -3;
  *(a5 + 8) = -3;
  *(a5 + 12) = v9;
  *(a5 + 16) = v9;
  *(a5 + 20) = a2[6] & 1;
  v11 = *(a2 + 28);
  *(a5 + 24) = v11;
  *(a5 + 25) = v7;
  *(a5 + 57) = 0u;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 8 * v11 * v8;
  v12 = 8;
  if (*(a3 + 2))
  {
    v12 = 9;
  }

  v13 = v12 + v11;
  v14 = !is_mul_ok(v13, v9);
  v15 = v13 * v9;
  v16 = __CFADD__(v15, 2);
  v17 = v15 + 2;
  v18 = v16;
  v19 = v18 << 63 >> 63 != v18;
  if (v14 || v19 || ((v16 = __CFADD__(v17, 2 * v10), v20 = v17 + 2 * v10, !v16) ? (v21 = 0) : (v21 = 1), v10 < 0 || (v21 & 1) != 0 || v20 >> 62 || (v24 = 2 * v9 + 2, (v9 & 0x80000000) != 0) || 2 * v9 >= 0xFFFFFFFFFFFFFFFELL || (v25 = 2 * v10, v16 = __CFADD__(v24, v25), v26 = v24 + v25, v16) || ((v27 = 4 * v20 + 8 * v26, !__CFADD__(4 * v20, 8 * v26)) ? (v28 = 0) : (v28 = 1), v26 >> 61 || (v28 & 1) != 0 || (v29 = v27 + 88, v27 >= 0xFFFFFFFFFFFFFFA8))))
  {
    v22 = *(a3 + 5);
    if (!v22)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F71E4();
      }

      _SparseTrap();
    }

    memset(&__str[69], 0, 187);
    strcpy(__str, "Computation of workspace required for symbolic analysis overflowed.\n");
    result = v22(__str);
    goto LABEL_19;
  }

  v32 = (*(a3 + 3))(v29);
  if (!v32)
  {
    if (*(a3 + 5))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v29);
      return (*(a3 + 5))(__str);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F716C();
    }

LABEL_112:
    _SparseTrap();
  }

  __b = v32;
  v33 = *(a2 + 1);
  *__str = *a2;
  *&__str[16] = v33;
  v34 = _SparseFromStructureComplex(__str, &v218);
  v35 = BYTE12(v219);
  v215 = v218;
  v214 = v218 * BYTE12(v219);
  v36 = v214 + 224;
  if (!*(a3 + 2))
  {
    v36 = 224;
  }

  v37 = v36 + 4 * (BYTE12(v219) + 2) * v218;
  v38 = (*(a3 + 3))(v37, v34);
  if (!v38)
  {
    if (*(a3 + 5))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v37);
LABEL_50:
      (*(a3 + 5))(__str);
      return (*(a3 + 4))(__b);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_114;
    }

    goto LABEL_115;
  }

  v39 = v38;
  v207 = v29;
  v40 = v38 + v37;
  v41 = (v38 + 191) & 0xFFFFFFFFFFFFFFF8;
  if (v40 < v41)
  {
    goto LABEL_306;
  }

  v42 = v215;
  v43 = a3[1];
  v44 = a3[2];
  v223 = *a3;
  v224 = v43;
  v225 = v44;
  v45 = 1;
  v216 = v39;
  if ((*(a3 + 3) & 0x40) == 0)
  {
    v45 = sub_2366FCCD0(0);
    v42 = v215;
    v39 = v216;
  }

  v46 = v224;
  *v39 = v223;
  v39[1] = v46;
  v39[2] = v225;
  *(v39 + 12) = 1;
  *(v39 + 13) = v45;
  *(v39 + 14) = v42;
  *(v39 + 15) = v214;
  *(v39 + 16) = 0;
  *(v39 + 72) = 0u;
  v47 = (v41 + 4 * v215 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v39 + 88) = 0u;
  *(v39 + 104) = 0u;
  *(v39 + 120) = 0u;
  *(v39 + 136) = 0u;
  *(v39 + 152) = 0u;
  *(v39 + 164) = 0u;
  if (v40 < v47)
  {
    goto LABEL_306;
  }

  *(v39 + 9) = v41;
  v48 = (v47 + 4 * v214 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v40 < v48)
  {
    goto LABEL_306;
  }

  v49 = 4 * v215;
  *(v39 + 10) = v47;
  v50 = ((v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v40 < v50)
  {
    goto LABEL_306;
  }

  *(v39 + 14) = v48;
  v51 = *(a3 + 2);
  if (v51)
  {
    if (v40 < ((v50 + v214 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_306;
    }

    *(v39 + 17) = v50;
    v52 = 9;
  }

  else
  {
    v50 = 0;
    v52 = 8;
  }

  v53 = 0;
  v54 = v52 + BYTE12(v219);
  v55 = !is_mul_ok(v54, v215);
  v56 = v54 * v215;
  v16 = __CFADD__(v56, 2);
  v57 = v56 + 2;
  v58 = v16;
  v59 = v58 << 63 >> 63 != v58;
  if (v55 || v59)
  {
    goto LABEL_64;
  }

  v53 = 0;
  v60 = *(*(&v218 + 1) + 8 * v215);
  v16 = __CFADD__(v57, 2 * v60);
  v61 = v57 + 2 * v60;
  v62 = v16;
  if (v60 < 0 || v62)
  {
    goto LABEL_64;
  }

  v53 = v61 >> 62;
  if (v61 >> 62)
  {
    goto LABEL_63;
  }

  v118 = 2 * v215 + 2;
  if (v42 < 0 || (2 * v215) >= 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_64;
  }

  v16 = __CFADD__(v118, 2 * v60);
  v119 = v118 + 2 * v60;
  if (v16)
  {
LABEL_63:
    v53 = 0;
  }

  else
  {
    v53 = 0;
    v120 = 4 * v61;
    v16 = __CFADD__(v120, 8 * v119);
    v121 = v120 + 8 * v119;
    v122 = v16;
    if (!(v119 >> 61) && (v122 & 1) == 0)
    {
      v53 = v121 + 88;
    }
  }

LABEL_64:
  v63 = &__b[v53];
  v64 = (v35 + 3) * v42;
  if (v64 <= 6 * v42 + 12)
  {
    v65 = 24 * v42 + 48;
  }

  else
  {
    v65 = 4 * v64;
  }

  v66 = (&__b[v65 + 7] & 0xFFFFFFFFFFFFFFF8);
  if (v63 < v66)
  {
    goto LABEL_306;
  }

  v67 = (&v66[v49 / 4 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v63 < v67)
  {
    goto LABEL_306;
  }

  v40 = (v67 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v63 < v40)
  {
    goto LABEL_306;
  }

  v211 = v41;
  v68 = *(*(&v218 + 1) + 8 * SDWORD1(v218));
  v69 = v40 + 8 * (v215 + v68) + 16;
  if (v69 > v63)
  {
    goto LABEL_306;
  }

  v212 = v48;
  v70 = v69 + 16 * v68;
  if (v70 > v63)
  {
    goto LABEL_306;
  }

  v71 = ((v70 + 8 * v215) & 0xFFFFFFFFFFFFFFF8);
  if (v63 < v71)
  {
    goto LABEL_306;
  }

  v208 = v69 + 16 * v68;
  v209 = v40 + 8 * (v215 + v68) + 16;
  v210 = (&v66[v49 / 4 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (!v51)
  {
    v71 = 0;
    goto LABEL_89;
  }

  if (v63 < (&v71[v49 + 7] & 0xFFFFFFFFFFFFFFF8))
  {
LABEL_306:
    __break(1u);
LABEL_307:
    if (*(a3 + 5))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v40);
      return (*(a3 + 5))(__str);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F716C();
    }

    goto LABEL_112;
  }

  bzero(v50, v214);
  if (v215 >= 1)
  {
    v72 = BYTE12(v219);
    v73 = (v215 + 3) & 0xFFFFFFFC;
    v74 = vdupq_n_s64(v215 - 1);
    v75 = xmmword_23681F910;
    v76 = xmmword_23681F920;
    v77 = v71 + 8;
    v78 = vdupq_n_s64(4uLL);
    do
    {
      v79 = vmovn_s64(vcgeq_u64(v74, v76));
      if (vuzp1_s16(v79, *v74.i8).u8[0])
      {
        *(v77 - 2) = v72;
      }

      if (vuzp1_s16(v79, *&v74).i8[2])
      {
        *(v77 - 1) = v72;
      }

      if (vuzp1_s16(*&v74, vmovn_s64(vcgeq_u64(v74, *&v75))).i32[1])
      {
        *v77 = v72;
        v77[1] = v72;
      }

      v75 = vaddq_s64(v75, v78);
      v76 = vaddq_s64(v76, v78);
      v77 += 4;
      v73 -= 4;
    }

    while (v73);
  }

  v80 = *(a3 + 2);
  v81 = *v80;
  v70 = v208;
  if ((*v80 & 0x80000000) == 0)
  {
    v82 = BYTE12(v219);
    v83 = *(v216 + 17);
    v84 = (v80 + 1);
    do
    {
      --*&v71[4 * (v81 / v82)];
      *(v83 + *(v84 - 1)) = 1;
      v85 = *v84++;
      v81 = v85;
    }

    while ((v85 & 0x80000000) == 0);
  }

  v69 = v209;
LABEL_89:
  v221 = 0u;
  v222 = 0u;
  if ((BYTE8(v219) & 2) != 0)
  {
    *__str = v218;
    *&__str[16] = v219;
    sub_2367861D0(__str, v71, v40, v69, v70, &v221);
  }

  else
  {
    v220[0] = v218;
    v220[1] = v219;
    sub_236785FB0(v220, v71, v40, v69, v70, __str);
    v221 = *__str;
    v222 = *&__str[16];
  }

  *__str = v221;
  *&__str[16] = v222;
  if (sub_2367E3E64(v7, __str, v71, v211, v66, a3))
  {
    free(v216);
    return (*(a3 + 4))(__b);
  }

  *__str = v221;
  *&__str[16] = v222;
  sub_236768978(__str, 0, v71, v211, v66, v212, __b, 0);
  sub_236750DDC(v215, v212, v211, v66, __b);
  *__str = v221;
  *&__str[16] = v222;
  sub_2366EE0E8(__str, 0, v71, v211, v66, v212, v210, __b, 0);
  v86 = sub_236767CA0(v215, BYTE12(v219), v71, v211, v66, *(v216 + 14), v210, __b, a3, &__b[4 * v215 + 4]);
  v216[16] = v86;
  *(v216 + 20) = 0;
  *(v216 + 21) = 0;
  v216[44] = 0;
  if (v86 < 1)
  {
    v40 = 0;
  }

  else
  {
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v40 = 0;
    v91 = BYTE12(v219);
    do
    {
      v92 = *(v210 + 4 * v88);
      v93 = &__b[4 * v88];
      if (v71)
      {
        v95 = *v93;
        v94 = *(v93 + 1);
        if (v95 >= v94)
        {
          v96 = 0;
        }

        else
        {
          v96 = 0;
          v97 = v94 - v95;
          v98 = &v66[v95];
          do
          {
            v99 = *v98++;
            v96 += *&v71[4 * v99];
            --v97;
          }

          while (v97);
        }
      }

      else
      {
        v92 = v91 * v92;
        v96 = (*(v93 + 1) - *v93) * v91;
      }

      if (v96 > v90)
      {
        v216[44] = v96;
        v90 = v96;
      }

      if (v92 > 192 || v96 >= 97)
      {
        v87 += ((v96 - 1) / 96 + 1) * ((v92 - 1) / 96) + (v96 - 1) / 96 + 1;
        *(v216 + 21) = v87;
      }

      v89 += v92 * v96;
      v40 += v92;
      ++v88;
    }

    while (v88 != v86);
    *(v216 + 20) = v89;
  }

  *v213 = 4 * (v40 + 3 * v86 + 3) + 16 * v86 + 16 * *(*(&v218 + 1) + 8 * v215) + 72;
  v100 = (*(a3 + 3))();
  if (!v100)
  {
    free(v216);
    if (*(a3 + 5))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", *v213);
      goto LABEL_50;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_114:
      sub_2366F716C();
    }

LABEL_115:
    _SparseTrap();
  }

  v101 = v100 + *v213;
  v102 = v216;
  v103 = v216[16];
  v104 = v103 + 1;
  v105 = (v100 + 4 * (v103 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v100 + *v213 < v105)
  {
    goto LABEL_306;
  }

  *(v216 + 11) = v100;
  v106 = (v105 + 4 * v103 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v101 < v106)
  {
    goto LABEL_306;
  }

  *(v216 + 12) = v105;
  v107 = (v106 + 4 * v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v101 < v107)
  {
    goto LABEL_306;
  }

  *(v216 + 13) = v106;
  v108 = v107 + 8 * v104;
  if (v108 > v101)
  {
    goto LABEL_306;
  }

  *(v216 + 15) = v107;
  v109 = (v108 + 4 * v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v101 < v109)
  {
    goto LABEL_306;
  }

  *(v216 + 16) = v108;
  v110 = v109 + 8 * v104;
  if (v110 > v101)
  {
    goto LABEL_306;
  }

  *(v216 + 18) = v109;
  if (v110 + 16 * *(*(&v218 + 1) + 8 * v215) > v101)
  {
    goto LABEL_306;
  }

  *(v216 + 19) = v110;
  if (v71)
  {
    if (v103 < 1)
    {
      v112 = 0;
    }

    else
    {
      v111 = 0;
      v112 = 0;
      do
      {
        *(v100 + 4 * v111) = v112;
        v113 = *&__b[4 * v111++];
        v114 = *&__b[4 * v111];
        if (v113 < v114)
        {
          v115 = v114 - v113;
          v116 = &v66[v113];
          do
          {
            v117 = *v116++;
            v112 += *&v71[4 * v117];
            --v115;
          }

          while (v115);
        }

        v103 = v216[16];
      }

      while (v111 < v103);
    }

    *(v100 + 4 * v103) = v112;
  }

  else if ((v103 & 0x80000000) == 0)
  {
    v123 = 0;
    v124 = BYTE12(v219);
    do
    {
      *(v100 + 4 * v123) = *&__b[4 * v123] * v124;
      v181 = v123++ < v216[16];
    }

    while (v181);
  }

  if (*(a3 + 2))
  {
    bzero(*(v216 + 10), 4 * v214);
    v102 = v216;
    v125 = *(a3 + 2);
    v126 = *v125;
    if ((v126 & 0x80000000) == 0)
    {
      v127 = *(v216 + 10);
      v128 = v214 - 1;
      v129 = v125 + 1;
      do
      {
        *(v127 + 4 * v126) = v128;
        v130 = *v129++;
        v126 = v130;
        --v128;
      }

      while ((v130 & 0x80000000) == 0);
    }

    if (v215 >= 1)
    {
      v131 = 0;
      v132 = 0;
      v133 = BYTE12(v219);
      do
      {
        if (v133)
        {
          v134 = 0;
          v135 = *(v216 + 10);
          do
          {
            v136 = v134 + v66[v131] * v133;
            if (!*(v135 + 4 * v136))
            {
              *(v135 + 4 * v136) = v132++;
            }

            ++v134;
          }

          while (v133 != v134);
        }

        ++v131;
      }

      while (v131 != v215);
    }
  }

  else if (v215 >= 1)
  {
    v137 = 0;
    v138 = 0;
    v139 = BYTE12(v219);
    v140 = 4 * BYTE12(v219);
    do
    {
      if (v139)
      {
        v141 = 0;
        v142 = *(v216 + 9);
        v143 = *(v216 + 10) + v137;
        do
        {
          *(v143 + 4 * v141) = v141 + *(v142 + 4 * v138) * v139;
          ++v141;
        }

        while (v139 != v141);
      }

      ++v138;
      v137 += v140;
    }

    while (v138 != v215);
  }

  sub_236812888(v102[16], *(v102 + 14), *(v102 + 12), *(v102 + 13));
  sub_23679A71C(&v221, v216, __b, *(a3 + 2), v66, &__b[4 * v216[16] + 4]);
  sub_23678A440(&v221, v216, v209, v208, __b);
  v145 = v216[15];
  v144 = v216[16];
  v146 = 8 * v144;
  v147 = *(v216 + 20);
  v148 = v145 < 0;
  v149 = 16 * v144 + 4 * v145;
  if (__CFADD__(16 * v144, 4 * v145))
  {
    v148 = 1;
  }

  if (v144 >= 0)
  {
    v150 = v148;
  }

  else
  {
    v149 = 8 * v144;
    v150 = 1;
  }

  if (v7 == 4)
  {
    if (v150)
    {
      goto LABEL_199;
    }

    v16 = __CFADD__(v147, 2 * v145);
    v147 += 2 * v145;
    v152 = v16;
    v16 = __CFADD__(v149, v146);
    v149 += v146;
    v151 = v16;
    if ((v145 & 0x80000000) != 0 || v152 || (v144 & 0x80000000) != 0)
    {
      goto LABEL_199;
    }

    goto LABEL_194;
  }

  if (v7 == 3)
  {
    if (v150)
    {
      goto LABEL_199;
    }

    v16 = __CFADD__(v147, 2 * v145);
    v147 += 2 * v145;
    v151 = v16;
    if ((v145 & 0x80000000) != 0)
    {
      goto LABEL_199;
    }

LABEL_194:
    if (v151)
    {
      goto LABEL_199;
    }

    goto LABEL_197;
  }

  if (v150)
  {
LABEL_199:
    v154 = *(a3 + 5);
    if (!v154)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F72E4();
      }

      _SparseTrap();
    }

    memset(&__str[40], 0, 216);
    strcpy(__str, "Computation of factor size overflowed.\n");
    v154(__str);
    (*(a3 + 4))(__b);
    return sub_23680EEA8(v216, a3);
  }

LABEL_197:
  v16 = __CFADD__(v145, v147);
  v153 = v145 + v147;
  if (v16)
  {
    goto LABEL_199;
  }

  v155 = v144 + 5;
  if (v144 < -5)
  {
    v155 = -5 - v144;
  }

  v156 = 8 * v155;
  if (v144 < -5)
  {
    v156 = -8 * v155;
  }

  v16 = __CFADD__(v149, v156);
  v157 = v149 + v156;
  v158 = v16;
  if (v144 < -5)
  {
    goto LABEL_199;
  }

  if (v155 >> 61)
  {
    goto LABEL_199;
  }

  if (v158)
  {
    goto LABEL_199;
  }

  v159 = v157 + 96;
  if (v157 >= 0xFFFFFFFFFFFFFFA0)
  {
    goto LABEL_199;
  }

  v160 = v159 + 4 * v153;
  v161 = __CFADD__(v159, 4 * v153);
  *(a5 + 56) = v160;
  if (v153 >> 62 || v161)
  {
    goto LABEL_199;
  }

  v162 = v159 + 8 * v153;
  v163 = __CFADD__(v159, 8 * v153);
  *(a5 + 64) = v162;
  if (v153 >> 61 || v163)
  {
    goto LABEL_199;
  }

  if ((*(a3 + 3) & 0x40) != 0)
  {
    v164 = 1;
  }

  else
  {
    v164 = sub_2366FCCD0(0);
  }

  v165 = *(a2 + 28);
  if (0x100 / v165 * v165 <= v165)
  {
    v166 = *(a2 + 28);
  }

  else
  {
    v166 = 0x100 / v165 * v165;
  }

  v167 = *(a2 + 28) * v9;
  v168 = v167 + 2 * v166;
  v169 = v168 >> 62;
  if (v168 >> 62)
  {
    v170 = 0;
LABEL_235:
    v169 = 0;
    v171 = 0;
    v172 = 0;
    v173 = 1;
    goto LABEL_261;
  }

  v170 = 4 * v168 + 72;
  v174 = v216[16];
  if (v174 >= 0)
  {
    v175 = v216[16];
  }

  else
  {
    v175 = -v174;
  }

  v176 = 41 * v175;
  if (v174 < 0)
  {
    v176 = -v176;
  }

  v177 = v176 + 32;
  v178 = v176 >= 0xFFFFFFFFFFFFFFE0;
  v173 = 1;
  if (v174 < 0 || v178)
  {
    goto LABEL_260;
  }

  v179 = v177 + 19200;
  if (v177 >= 0xFFFFFFFFFFFFB500)
  {
    goto LABEL_235;
  }

  v169 = 0;
  v180 = *(v216 + 21);
  v181 = v180 < 0;
  v182 = v180 < 0;
  if (v180 < 0)
  {
    v180 = -v180;
  }

  v183 = (v180 * 0x30uLL) >> 64;
  v184 = 48 * v180;
  if (v181)
  {
    v185 = -v184;
  }

  else
  {
    v185 = v184;
  }

  v186 = v183 != 0;
  if (!v184)
  {
    v182 = 0;
  }

  v187 = v179 + v185;
  v188 = __CFADD__(v179, v185);
  v173 = 1;
  if (v186 || v182 || v188)
  {
LABEL_260:
    v171 = 0;
    v172 = 0;
  }

  else
  {
    v16 = __CFADD__(v187, 4 * v167);
    v172 = v187 + 4 * v167;
    if (v16)
    {
      v169 = 0;
      v171 = 0;
    }

    else
    {
      v173 = 0;
      v171 = (v165 * v165) * v9;
      v169 = v166 * v166;
    }
  }

LABEL_261:
  if ((v7 - 3) >= 2)
  {
    if (v7 == 2)
    {
      if ((v173 & 1) == 0)
      {
        LODWORD(v192) = v216[44];
        if (v192 <= 4160)
        {
          v192 = 4160;
        }

        else
        {
          v192 = v192;
        }

        v191 = v169 + v192;
        goto LABEL_276;
      }
    }

    else if ((v173 & 1) == 0)
    {
      v16 = __CFADD__(v171, 2 * v169);
      v191 = v171 + 2 * v169;
      if (!v16)
      {
        goto LABEL_276;
      }
    }

LABEL_300:
    v206 = *(a3 + 5);
    if (!v206)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F7128();
      }

      _SparseTrap();
    }

    memset(&__str[73], 0, 183);
    strcpy(__str, "Computation of workspace required for numeric factorization overflowed.\n");
    v206(__str);
    result = (*(a3 + 4))(__b);
LABEL_19:
    *a5 = -4;
    return result;
  }

  if (v173)
  {
    goto LABEL_300;
  }

  v189 = 4160;
  if (2 * v9 > 0x1040)
  {
    v189 = 2 * v9;
  }

  v190 = v169 + v189;
  v16 = __CFADD__(v171, v190);
  v191 = v171 + v190;
  if (v16)
  {
    goto LABEL_300;
  }

LABEL_276:
  v193 = !is_mul_ok(v170, v164);
  v194 = v170 * v164;
  v16 = __CFADD__(v172, v194);
  v195 = v172 + v194;
  v196 = v16;
  if (v193 || (v196 & 1) != 0)
  {
    goto LABEL_300;
  }

  v197 = !is_mul_ok(v191, v164);
  v198 = v191 * v164;
  v16 = __CFADD__(v171, v198);
  v199 = v171 + v198;
  v200 = v16;
  if (v197 || v200)
  {
    goto LABEL_300;
  }

  v201 = v195 + 4 * v199;
  v202 = __CFADD__(v195, 4 * v199);
  *(a5 + 40) = v201;
  if (v199 >> 62 || v202)
  {
    goto LABEL_300;
  }

  v203 = v195 + 8 * v199;
  v204 = __CFADD__(v195, 8 * v199);
  *(a5 + 48) = v203;
  if (v199 >> 61 || v204)
  {
    goto LABEL_300;
  }

  v40 = 2 * v201;
  if (2 * v201 > v207)
  {
    (*(a3 + 4))(__b);
    __b = (*(a3 + 3))(v40);
    if (!__b)
    {
      goto LABEL_307;
    }
  }

  *(a5 + 8) = 0;
  *(a5 + 32) = v216;
  v205 = sub_236760B50(v7, v216, 2 * v160, a4, 0);
  if (!v205)
  {
    return (*(a3 + 4))(__b);
  }

  *(a5 + 80) = v205;
  _SparseRefactorHermitian_Complex_Float(a2, a5, a4, __b);
  return (*(a3 + 4))(__b);
}

uint64_t SparseGetInertia(SparseOpaqueSymbolicFactorization *factor, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(v15, &factor->columnCount);
  v10 = *&v15[40];
  if (*p_columnCount || !factor->workspaceSize_Double || factor->status || (workspaceSize_Float = factor[1].workspaceSize_Float) == 0)
  {
    if (*&v15[40])
    {
      memset(v15, 0, sizeof(v15));
      snprintf(v15, 0x100uLL, "%s does not hold a completed matrix factorization.\n", "Factored");
LABEL_9:
      v10(v15);
      return 0xFFFFFFFFLL;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

LABEL_4:
    _SparseTrap();
  }

  if (BYTE1(factor->workspaceSize_Float) != 4)
  {
    if (*&v15[40])
    {
      memset(&v15[89], 0, 167);
      strcpy(v15, "SparseGetInertia is only supported for factorizations of type SparseFactorizationLDLTTPP");
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F7328();
    }

    goto LABEL_4;
  }

  result = 0;
  v12 = atomic_load(workspaceSize_Float + 20);
  *a2 = v12;
  v13 = atomic_load(workspaceSize_Float + 21);
  *a3 = v13;
  v14 = atomic_load(workspaceSize_Float + 22);
  *a4 = v14;
  return result;
}

{
  v16 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(v15, &factor->columnCount);
  v10 = *&v15[40];
  if (*p_columnCount || !factor->workspaceSize_Double || factor->status || (workspaceSize_Float = factor[1].workspaceSize_Float) == 0)
  {
    if (*&v15[40])
    {
      memset(v15, 0, sizeof(v15));
      snprintf(v15, 0x100uLL, "%s does not hold a completed matrix factorization.\n", "Factored");
LABEL_9:
      v10(v15);
      return 0xFFFFFFFFLL;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

LABEL_4:
    _SparseTrap();
  }

  if (BYTE1(factor->workspaceSize_Float) != 4)
  {
    if (*&v15[40])
    {
      memset(&v15[89], 0, 167);
      strcpy(v15, "SparseGetInertia is only supported for factorizations of type SparseFactorizationLDLTTPP");
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F7328();
    }

    goto LABEL_4;
  }

  result = 0;
  v12 = atomic_load(workspaceSize_Float + 20);
  *a2 = v12;
  v13 = atomic_load(workspaceSize_Float + 21);
  *a3 = v13;
  v14 = atomic_load(workspaceSize_Float + 22);
  *a4 = v14;
  return result;
}

void *sub_236762950(void *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[1];
  v5 = *(v4 + 64);
  v6 = *v5;
  if ((v6 - 3) >= 2)
  {
    if (v6 != 2)
    {
      v9 = 0;
      v7 = *(v5 + 2);
      goto LABEL_9;
    }

    v7 = *(v5 + 2);
    v11 = *(v7 + 176);
    v9 = 8 * v11;
    v10 = v11 <= 4160;
  }

  else
  {
    v7 = *(v5 + 2);
    v8 = *(v7 + 60);
    v9 = 16 * v8;
    v10 = v8 <= 2080;
  }

  if (v10)
  {
    v9 = 33280;
  }

LABEL_9:
  v12 = result[5];
  v13 = v12 + *(v4 + 48);
  v14 = ((v12 + 4 * *(v7 + 60) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v13 < v14 || (v15 = *(v5 + 8), v16 = (&v14[v15 + 1] + 3) & 0xFFFFFFFFFFFFFFF8, v13 < v16) || (v17 = (v16 + 4 * v15 + 7) & 0xFFFFFFFFFFFFFFF8, v13 < v17) || (v18 = v17 + 8 * v15 * v15, v18 > v13) || v13 < ((v18 + v9 + 7) & 0xFFFFFFFFFFFFFFF8))
  {
    __break(1u);
  }

  else
  {
    result = sub_236762BA8(result, a2, v6, *(v5 + 1), v7, *(v5 + 3), v15, *(v5 + 5), v12, v14, ((&v14[v15 + 1] + 3) & 0xFFFFFFFFFFFFFFF8), (v16 + 4 * v15 + 7) & 0xFFFFFFFFFFFFFFF8, (v17 + 8 * v15 * v15), v5);
    if (result)
    {
      _X2 = 0;
      v20 = v3[1];
      atomic_store(result, (v20 + 16));
      atomic_store(1u, (v20 + 12));
      _X3 = 0;
      __asm { CASPAL          X2, X3, X2, X3, [X1] }

      if (_X2)
      {

        return __ulock_wake();
      }
    }

    else
    {
      v27 = *(*(*(v5 + 2) + 112) + 4 * v2);
      if (v27 != -1)
      {
        v28 = (*(v5 + 6) + 40 * v27);
        if (atomic_fetch_add_explicit(v28, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v29 = v3[2];
          if (v29)
          {
            _X4 = 0;
            _X5 = 0;
            __asm { CASP            X4, X5, X4, X5, [X1] }

            *(v29 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
            *(v29 + 32) = 0;
            v33 = _X4 & 1;
            _X2 = v33 | v29;
            _X7 = 0;
            __asm { CASPL           X6, X7, X2, X3, [X1] }

            if (_X6 != _X4)
            {
              _X4 = 0;
              do
              {
                _X7 = 0;
                __asm { CASP            X6, X7, X4, X5, [X1] }

                *(v29 + 24) = _X6 & 0xFFFFFFFFFFFFFFFELL;
                *(v29 + 32) = 0;
                v33 = _X6 & 1;
                _X2 = v33 | v29;
                _X11 = 0;
                __asm { CASPL           X10, X11, X2, X3, [X1] }
              }

              while (_X10 != _X6);
            }

            if (v33)
            {
              result = __ulock_wake();
            }
          }

          v3[2] = v28;
          v3[3] = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_236762BA8(void *a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int *a10, int *a11, uint64_t a12, char *a13, uint64_t a14)
{
  v14 = a7;
  v199 = a1;
  v205 = a13;
  v206 = a2;
  v207[1] = *MEMORY[0x277D85DE8];
  v201 = a4;
  v16 = *(a4 + 28);
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v17 = sub_236771188;
    }

    else
    {
      v17 = sub_236771D40;
    }
  }

  else
  {
    if (!a3)
    {
      v196 = sub_236771FF4;
      v205 = 0;
      goto LABEL_9;
    }

    v17 = sub_236772B6C;
  }

  v196 = v17;
LABEL_9:
  LODWORD(v204) = a3;
  v18 = a5[15];
  v19 = v206;
  v20 = *(v18 + 8 * v206);
  v21 = *(v18 + 8 * (v206 + 1)) - v20;
  v22 = a5[11];
  v195 = v206 + 1;
  v23 = *(v22 + 4 * (v19 + 1)) - *(v22 + 4 * v19);
  v24 = *(*(a6 + 40) + 8 * v206) + 8;
  v198 = v21;
  v25 = v21;
  if (((a3 - 3) & 0xFE) != 0)
  {
    v26 = 0;
  }

  else
  {
    v26 = 2 * v23;
  }

  v202 = v24;
  v27 = v24 + 8 * v21 * v23 + 8 * v26;
  if (v23 >= 1)
  {
    v28 = 0;
    do
    {
      *(v27 + 4 * v28) = *(a8 + 4 * (v28 + *(v22 + 4 * v19)));
      ++v28;
    }

    while (v23 != v28);
  }

  v197 = v23;
  v30 = a5[18];
  v29 = a5[19];
  v32 = a5[16];
  v31 = a5[17];
  v203 = a5;
  v33 = v32 + 4 * v20;
  v35 = *(a6 + 64);
  v36 = (v30 + 8 * v19);
  v37 = *v36;
  v38 = v36[1];
  if (v35)
  {
    if (*v36 < v38)
    {
      v200 = 8 * (v16 * v16);
      if (v16 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v16;
      }

      v40 = 8 * v16;
      v41 = 8 * v25;
      do
      {
        v42 = (v29 + 8 * v37);
        v44 = *v42;
        v43 = v42[1];
        v45 = v43 % v25;
        v46 = v201[4];
        v47 = (v43 / v25);
        v48 = v202 + 8 * v47 * v25 + 8 * v45;
        v49 = *(v33 + 4 * v45);
        if (v31)
        {
          v50 = v49 / v16 * v16;
          v51 = (v35 + 4 * v50);
          v52 = *(v33 + 4 * v47) / v16 * v16;
          v53 = v35 + 4 * v52;
          v54 = (v31 + v50);
          v55 = v31 + v52;
          v56 = 0;
          if (((v44 & 0x4000000000000000) != 0) ^ __OFSUB__(v44, -v44) | (v44 == -v44))
          {
            v57 = -v44;
          }

          else
          {
            v57 = v44;
          }

          v58 = v57 - 1;
          if (v44 < 0)
          {
            v78 = v46 + v200 * v58 + 4;
            do
            {
              if ((*(v55 + v56) & 1) == 0)
              {
                v79 = 0;
                v80 = v51;
                v81 = v78;
                v82 = v54;
                v83 = v39;
                do
                {
                  v84 = *v82++;
                  if ((v84 & 1) == 0)
                  {
                    v85.f64[0] = *(v81 - 1);
                    v85.f64[1] = -*v81;
                    *(v48 + 8 * v79) = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v85, *v80), *(v53 + 4 * v56)), vcvtq_f64_f32(*(v48 + 8 * v79))));
                    ++v79;
                  }

                  v81 = (v81 + v40);
                  ++v80;
                  --v83;
                }

                while (v83);
                v48 += 8 * v25;
              }

              ++v56;
              v78 += 8;
            }

            while (v56 != v39);
          }

          else
          {
            v59 = (v46 + v200 * v58);
            do
            {
              if ((*(v55 + v56) & 1) == 0)
              {
                v60 = 0;
                v61 = v54;
                v62 = v51;
                v63 = v59;
                v64 = v39;
                do
                {
                  v65 = *v61++;
                  if ((v65 & 1) == 0)
                  {
                    *(v48 + 8 * v60) = vadd_f32(*(v48 + 8 * v60), vmul_n_f32(vmul_n_f32(*v63, *v62), *(v53 + 4 * v56)));
                    ++v60;
                  }

                  ++v63;
                  ++v62;
                  --v64;
                }

                while (v64);
                v48 += 8 * v25;
              }

              ++v56;
              v59 = (v59 + v40);
            }

            while (v56 != v39);
          }
        }

        else
        {
          v66 = (v35 + 4 * v49);
          v67 = v35 + 4 * *(v33 + 4 * v47);
          if (v44 < 0)
          {
            if (v16)
            {
              v86 = 0;
              if (((v44 & 0x4000000000000000) != 0) ^ __OFSUB__(v44, -v44) | (v44 == -v44))
              {
                v87 = -v44;
              }

              else
              {
                v87 = v44;
              }

              v88 = v46 + v200 * (v87 - 1) + 4;
              do
              {
                v89 = 0;
                v90 = v66;
                v91 = v88;
                do
                {
                  v92 = *v90++;
                  v93.f64[0] = *(v91 - 1);
                  v93.f64[1] = -*v91;
                  *(v48 + v89) = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v93, v92), *(v67 + 4 * v86)), vcvtq_f64_f32(*(v48 + v89))));
                  v89 += 8;
                  v91 = (v91 + v40);
                }

                while (v40 != v89);
                ++v86;
                v48 += v41;
                v88 += 8;
              }

              while (v86 != v16);
            }
          }

          else if (v16)
          {
            v68 = 0;
            if (((v44 & 0x4000000000000000) != 0) ^ __OFSUB__(v44, -v44) | (v44 == -v44))
            {
              v69 = -v44;
            }

            else
            {
              v69 = v44;
            }

            v70 = (v46 + v200 * (v69 - 1));
            do
            {
              v71 = v66;
              v72 = v70;
              v73 = v48;
              v74 = v16;
              do
              {
                v75 = *v71++;
                v76 = v75;
                v77 = *v72++;
                *v73 = vadd_f32(*v73, vmul_n_f32(vmul_n_f32(v77, v76), *(v67 + 4 * v68)));
                ++v73;
                --v74;
              }

              while (v74);
              ++v68;
              v48 += v41;
              v70 = (v70 + v40);
            }

            while (v68 != v16);
          }
        }

        v37 += 2;
      }

      while (v37 < v36[1]);
    }
  }

  else if (*v36 < v38)
  {
    v94 = 8 * (v16 * v16);
    if (v16 <= 1)
    {
      v95 = 1;
    }

    else
    {
      v95 = v16;
    }

    v96 = 8 * v16;
    v97 = 8 * v21;
    do
    {
      v98 = (v29 + 8 * v37);
      v100 = *v98;
      v99 = v98[1];
      v101 = v99 % v25;
      v102 = v201[4];
      v103 = (v99 / v25);
      v104 = v202 + 8 * v103 * v25 + 8 * (v99 % v25);
      if (v31)
      {
        v105 = (v31 + *(v33 + 4 * v101) / v16 * v16);
        v106 = v31 + *(v33 + 4 * v103) / v16 * v16;
        v107 = 0;
        if (v100 < 0)
        {
          if (((v100 & 0x4000000000000000) != 0) ^ __OFSUB__(v100, -v100) | (v100 == -v100))
          {
            v100 = -v100;
          }

          v121 = (v102 + v94 * (v100 - 1));
          do
          {
            if ((*(v106 + v107) & 1) == 0)
            {
              v122 = 0;
              v123 = v105;
              v124 = v121;
              v125 = v95;
              do
              {
                v126 = *v123++;
                if ((v126 & 1) == 0)
                {
                  v127 = *(v104 + 8 * v122);
                  LODWORD(v128) = vadd_f32(v127, *v124).u32[0];
                  HIDWORD(v128) = vsub_f32(v127, *v124).i32[1];
                  *(v104 + 8 * v122++) = v128;
                }

                v124 = (v124 + v96);
                --v125;
              }

              while (v125);
              v104 += 8 * v25;
            }

            ++v107;
            ++v121;
          }

          while (v107 != v95);
        }

        else
        {
          if (((v100 & 0x4000000000000000) != 0) ^ __OFSUB__(v100, -v100) | (v100 == -v100))
          {
            v100 = -v100;
          }

          v108 = (v102 + v94 * (v100 - 1));
          do
          {
            if ((*(v106 + v107) & 1) == 0)
            {
              v109 = 0;
              v110 = v105;
              v111 = v108;
              v112 = v95;
              do
              {
                v113 = *v110++;
                if ((v113 & 1) == 0)
                {
                  *(v104 + 8 * v109) = vadd_f32(*v111, *(v104 + 8 * v109));
                  ++v109;
                }

                ++v111;
                --v112;
              }

              while (v112);
              v104 += 8 * v25;
            }

            ++v107;
            v108 = (v108 + v96);
          }

          while (v107 != v95);
        }
      }

      else if (v100 < 0)
      {
        if (v16)
        {
          v129 = 0;
          if (((v100 & 0x4000000000000000) != 0) ^ __OFSUB__(v100, -v100) | (v100 == -v100))
          {
            v130 = -v100;
          }

          else
          {
            v130 = v100;
          }

          v131 = (v102 + v94 * (v130 - 1));
          do
          {
            v132 = 0;
            v133 = v131;
            do
            {
              v134 = *(v104 + v132);
              LODWORD(v135) = vadd_f32(v134, *v133).u32[0];
              HIDWORD(v135) = vsub_f32(v134, *v133).i32[1];
              *(v104 + v132) = v135;
              v132 += 8;
              v133 = (v133 + v96);
            }

            while (v96 != v132);
            ++v129;
            v104 += v97;
            ++v131;
          }

          while (v129 != v16);
        }
      }

      else if (v16)
      {
        v114 = 0;
        if (((v100 & 0x4000000000000000) != 0) ^ __OFSUB__(v100, -v100) | (v100 == -v100))
        {
          v115 = -v100;
        }

        else
        {
          v115 = v100;
        }

        v116 = (v102 + v94 * (v115 - 1));
        do
        {
          v117 = v116;
          v118 = v104;
          v119 = v16;
          do
          {
            v120 = *v117++;
            *v118 = vadd_f32(v120, *v118);
            ++v118;
            --v119;
          }

          while (v119);
          ++v114;
          v104 += v97;
          v116 = (v116 + v96);
        }

        while (v114 != v16);
      }

      v37 += 2;
    }

    while (v37 < v36[1]);
  }

  if (v204 == 4)
  {
    v136 = atomic_load((*(a6 + 48) + 4 * v19));
    v137 = v203;
    if (v136 >= 1)
    {
      sub_236775B18(4, v203, a6, v206, a9);
      v138 = atomic_load((*(a6 + 48) + 4 * v19));
      v139 = v138 + *(*(v203 + 120) + 8 * v195) - *(*(v203 + 120) + 8 * v19);
      v140 = *(*(a6 + 40) + 8 * v19) + 8;
      v25 = v139;
      v197 = *(*(v203 + 88) + 4 * v195) - *(*(v203 + 88) + 4 * v19) + v138;
      v202 = v140;
      v27 = v140 + 8 * v197 * v139 + 16 * v197;
      v198 = v139;
    }

    v141 = v197;
    v142 = v196(v198, v197, v202, v25, v27, a6, v205, v199, a14);
    v144 = a6;
    v145 = v197;
    *(*(a6 + 56) + 4 * v19) = v142;
    v146 = *(*(v137 + 112) + 4 * v19);
    if (v146 != -1)
    {
      atomic_fetch_add((*(a6 + 48) + 4 * v146), v141 - v142);
    }

    if (v142 >= 1)
    {
      v147 = 0;
      v148 = 0;
      v207[0] = 0;
      v149 = v202 + 8 * v25 * v141;
      do
      {
        v150 = v148 + 1;
        v143.n128_u32[0] = *(v149 + 16 * v148);
        if (v143.n128_f32[0] == INFINITY)
        {
          ++v147;
        }

        else if (v143.n128_f32[0] <= 0.0)
        {
          ++LODWORD(v207[0]);
        }

        else
        {
          ++HIDWORD(v207[0]);
        }

        ++v148;
      }

      while (v150 < v142);
      atomic_fetch_add((a6 + 80), HIDWORD(v207[0]));
      atomic_fetch_add((a6 + 84), v147);
      atomic_fetch_add((a6 + 88), v207[0]);
    }

    v151 = v198;
  }

  else
  {
    v151 = v198;
    v152 = v196(v198, v197, v202, v25, v27, a6, v205, v199, a14);
    v144 = a6;
    v145 = v197;
    if (v152 != v197)
    {
      return 0xFFFFFFFFLL;
    }
  }

  _VF = __OFSUB__(v151, v145);
  v155 = v151 - v145;
  if ((v155 < 0) ^ _VF | (v155 == 0))
  {
    return 0;
  }

  if (v155 < v14)
  {
    if (a14)
    {
      v156 = *(a14 + 56);
    }

    else
    {
      v156 = 0;
    }

    sub_236763820(v206, 0, 0, v204, v203, v144, v14, a12, a10, a11, a9, v156, v205);
    return 0;
  }

  if (!v199)
  {
    if (v155 >= 1)
    {
      for (i = 0; i < v155; i += v14)
      {
        v189 = i;
        do
        {
          if (a14)
          {
            v190 = *(a14 + 56);
          }

          else
          {
            v190 = 0;
          }

          sub_236763820(v206, v189, i, v204, v203, a6, v14, a12, a10, a11, a9, v190, v205);
          v189 += v14;
        }

        while (v189 < v155);
      }
    }

    return 0;
  }

  v157 = ((v155 - 1) / v14 + 2 + ((v155 - 1) / v14 + 2) * ((v155 - 1) / v14)) / 2;
  if (v157 >= 0x40)
  {
    v158 = 64;
  }

  else
  {
    v158 = v157;
  }

  MEMORY[0x28223BE20](v143);
  v205 = &v194 - v159;
  MEMORY[0x28223BE20](v160);
  v204 = &v194 - v161;
  HIDWORD(v207[0]) = 0;
  if (v155 < 1)
  {
    v187 = 0;
  }

  else
  {
    v201 = &v194;
    _X26 = 0;
    v163 = 0;
    v164 = 0;
    v165 = 0;
    v203 = 8 * v206;
    while (2)
    {
      v166 = v165;
      LODWORD(v202) = v165;
      do
      {
        v167 = &v204[24 * v163];
        v168 = v205;
        *v167 = v206;
        *(v167 + 1) = v166;
        *(v167 + 2) = v165;
        *(v167 + 2) = v207 + 4;
        v169 = &v168[40 * v163];
        *v169 = 0;
        *(v169 + 3) = 0;
        *(v169 + 4) = 0;
        *(v169 + 1) = v167;
        *(v169 + 2) = sub_236763C1C;
        v170 = v199[2];
        if (v170)
        {
          _X4 = 0;
          _X5 = 0;
          __asm { CASP            X4, X5, X4, X5, [X1] }

          while (1)
          {
            *(v170 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
            *(v170 + 32) = 0;
            _X2 = _X4 & 1 | v170;
            _X7 = 0;
            __asm { CASPL           X6, X7, X2, X3, [X1] }

            if (_X6 == _X4)
            {
              break;
            }

            _X5 = 0;
            __asm { CASP            X4, X5, X26, X27, [X1] }
          }

          if (_X4)
          {
            __ulock_wake();
            v165 = v202;
          }
        }

        v181 = (v164 / v158 + v203);
        v182 = v199;
        v199[2] = v169;
        v182[3] = v181;
        if (++v163 >= v158)
        {
          v183 = v163 + v164;
          v184 = atomic_load(v207 + 1);
          if (v184 < v183)
          {
            v185 = v182;
            while (1)
            {
              LOBYTE(v207[0]) = 0;
              sub_2366FCDE4(v185, v207);
              if (v207[0])
              {
                break;
              }

              v186 = atomic_load(v207 + 1);
              if (v186 >= v183)
              {
                goto LABEL_151;
              }
            }

            sub_2366FCEC8(v185);
            return atomic_load((v185[1] + 16));
          }

LABEL_151:
          v163 = 0;
          v164 += v158;
          v165 = v202;
        }

        v166 += v14;
      }

      while (v166 < v155);
      v165 += v14;
      if (v165 < v155)
      {
        continue;
      }

      break;
    }

    v187 = v163 + v164;
  }

  v191 = atomic_load(v207 + 1);
  v192 = v199;
  if (v191 >= v187)
  {
    return 0;
  }

  while (1)
  {
    LOBYTE(v207[0]) = 0;
    sub_2366FCDE4(v192, v207);
    if (LOBYTE(v207[0]) == 1)
    {
      break;
    }

    v193 = atomic_load(v207 + 1);
    if (v193 >= v187)
    {
      return 0;
    }
  }

  sub_2366FCEC8(v192);
  return atomic_load((v192[1] + 16));
}

void sub_236763820(uint64_t result, int a2, int a3, int a4, void *a5, void *a6, signed int a7, uint64_t a8, int *a9, int *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = sub_236771F34;
  v15 = sub_236771F84;
  if (a4 <= 2)
  {
    if (a4)
    {
      v14 = sub_2367FFEBC;
      v15 = sub_236800CAC;
    }

    goto LABEL_6;
  }

  if (a4 == 3)
  {
    v14 = sub_23673DFC0;
    v15 = sub_23674255C;
LABEL_6:
    v16 = v15;
    v17 = 0;
    v18 = 0;
    v19 = a5[10];
    v20 = (a4 - 3) < 2;
    v21 = result;
    goto LABEL_8;
  }

  v19 = a5[10];
  v21 = result;
  v18 = atomic_load((a6[6] + 4 * result));
  v16 = sub_23674255C;
  v14 = sub_23673DFC0;
  v20 = 1;
  v17 = 1;
LABEL_8:
  v22 = a5[15];
  v23 = result;
  v24 = result + 1;
  v25 = a5[11];
  v26 = *(v25 + 4 * v24);
  v27 = v18 + *(v22 + 8 * v24) - *(v22 + 8 * v21);
  v28 = v26 - *(v25 + 4 * v21) + v18;
  v29 = v28;
  if (v17)
  {
    v29 = *(a6[7] + 4 * v21);
  }

  v30 = v28 * v27;
  if (!v20)
  {
    v30 = 0;
  }

  if (v29)
  {
    v31 = *(a6[5] + 8 * v21) + 8;
    v32 = v27;
    v33 = v31 + 8 * v30;
    v34 = v28 + a3;
    v35 = v27 - (v28 + a3);
    if (v35 >= a7)
    {
      v36 = a7;
    }

    else
    {
      v36 = v35;
    }

    v37 = v27 - v28;
    if ((v27 - v28) >= a7)
    {
      v38 = a7;
    }

    else
    {
      v38 = v27 - v28;
    }

    v39 = v38;
    v40 = *(v22 + 8 * v23) + v26 - *(v25 + 4 * v23);
    v41 = v40 + a3;
    v42 = v41 + v36;
    if (a2 == a3)
    {
      (v14)(v36, v29, v31 + 8 * v34, v32, v33, a8, v38, a13);
      v61[0] = v41;
      for (i = *(a5[14] + 4 * v23); i != -1; i = *(a5[14] + 4 * v45))
      {
        v44 = a5[16];
        v45 = i;
        v46 = (a5[11] + 4 * i);
        if (*(v19 + 4 * *(v44 + 4 * v61[0])) < v46[1])
        {
          if (v42 < *(a5[15] + 8 * v24) && *(v19 + 4 * *(v44 + 4 * v42)) < *v46)
          {
            return;
          }

          v47 = (a8 + 8 * (v61[0] - v41) * (v39 + 1));
          if (a12)
          {
            sub_2367F605C(result, v45, v61, v41 + v36, a4, a5, a6, v47, v39, v19, a11, a10, (a12 + v45));
          }

          else
          {
            sub_2367F605C(result, v45, v61, v41 + v36, a4, a5, a6, v47, v39, v19, a11, a10, 0);
          }
        }
      }
    }

    else
    {
      if (v37 - a2 >= a7)
      {
        v48 = a7;
      }

      else
      {
        v48 = (v37 - a2);
      }

      (v16)(v48, v36, v29, v31 + 8 * (v28 + a2), v31 + 8 * v34, v32, v33, a8, v38, a13);
      v61[0] = v41;
      v49 = *(a5[14] + 4 * v23);
      if (v49 != -1)
      {
        v50 = v40 + a2;
        v51 = v50 + v48;
        do
        {
          v52 = a5[16];
          v53 = v49;
          v54 = (a5[11] + 4 * v49);
          if (*(v19 + 4 * *(v52 + 4 * v61[0])) < v54[1])
          {
            if (v42 < *(a5[15] + 8 * v24) && *(v19 + 4 * *(v52 + 4 * v42)) < *v54)
            {
              return;
            }

            v55 = (a8 + 8 * (v61[0] - v41) * v39);
            if (a12)
            {
              sub_2367F6248(result, v53, v50, v61, v51, v41 + v36, a4, a5, a6, v55, v39, v19, a11, a9, a10, (a12 + v53));
            }

            else
            {
              sub_2367F6248(result, v53, v50, v61, v51, v41 + v36, a4, a5, a6, v55, v39, v19, a11, a9, a10, 0);
            }
          }

          v49 = *(a5[14] + 4 * v53);
        }

        while (v49 != -1);
      }
    }
  }
}

void sub_236763C1C(uint64_t a1, atomic_uint *volatile *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v10 = *(a1 + 8);
  v11 = *(v10 + 64);
  v12 = *(a1 + 40);
  v13 = v12 + *(v10 + 48);
  v14 = *(v11 + 2);
  v15 = ((v12 + 4 * *(v14 + 60) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v13 < v15)
  {
    goto LABEL_7;
  }

  a7 = *(v11 + 8);
  v8 = ((&v15[a7 + 1] + 3) & 0xFFFFFFFFFFFFFFF8);
  if (v13 < v8)
  {
    goto LABEL_7;
  }

  a8 = (&v8[a7 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v13 < a8)
  {
    goto LABEL_7;
  }

  v16 = a8 + 8 * a7 * a7;
  if (v16 > v13)
  {
    goto LABEL_7;
  }

  v9 = a2;
  a4 = *v11;
  if ((a4 - 2) > 2)
  {
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  if (v16 + 33280 > v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  sub_236763820(*v9, *(v9 + 1), *(v9 + 2), a4, v14, *(v11 + 3), a7, a8, v15, v8, v12, *(v11 + 7), v16);
  atomic_fetch_add(v9[2], 1u);
}

void sub_236763D4C(int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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
  v12 = v10 + 4 * v6 * v11[v7];
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
    v25 = 4 * v5;
    v26 = 4 * v6;
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
              v34 = (v10 + 4 * v32 * v6);
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

SparseOpaqueFactorization_Float *__cdecl _SparseNumericFactorQR_Float(SparseOpaqueFactorization_Float *__return_ptr retstr, SparseOpaqueSymbolicFactorization *symbolicFactor, const SparseMatrix_Float *Matrix, const SparseNumericFactorOptions *options, void *factorStorage, void *workspace)
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
    sub_2367CDD30(v21 * *(&Matrix->structure.blockSize + 2), symbolicFactor->workspaceSize_Float, p_solveWorkspaceRequiredPerRHS, v19);
    columnCount = v27;
    v14 = v28;
    v22 = 2 * v21;
    v6 = workspace;
    v23 = *&v19->status + 4 * *(&Matrix->structure.blockSize + 2) * v22;
  }

  else
  {
    *p_solveWorkspaceRequiredPerRHS = 0;
    v23 = 8 * Matrix->structure.columnCount * *(&Matrix->structure.blockSize + 2);
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
  retstr->solveWorkspaceRequiredStatic = sub_2367640B8(v14, v24 * v17, workspaceSize_Float, symbolicFactor->factorSize_Double, workspaceSize_Float, options, factorStorage);

  _SparseRefactorQR_Float(Matrix, retstr, v25, v6);
  return result;
}

uint64_t sub_2367640B8(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7)
{
  v11 = result;
  if (!a7)
  {
    result = (*(a5 + 24))(a4);
    a7 = result;
    if (!result)
    {
      return a7;
    }
  }

  v12 = a7 + a4;
  v13 = (a7 + 71) & 0xFFFFFFFFFFFFFFF8;
  if (a7 + a4 >= v13)
  {
    v14 = a6[1];
    *a7 = *a6;
    *(a7 + 16) = v14;
    *(a7 + 40) = 0;
    v15 = (a7 + 40);
    *(a7 + 32) = 1;
    *(a7 + 48) = 0;
    *(a7 + 56) = 0;
    v16 = *(a3 + 88);
    v17 = v13 + 8 * v16;
    if (v17 <= v12)
    {
      *v15 = v13;
      v18 = (v17 + 4 * a2 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v12 >= v18)
      {
        *(a7 + 48) = v17;
        if (v11 != 40)
        {
          v19 = 0;
LABEL_10:
          *(a7 + 56) = v19;
          if (v16 >= 1)
          {
            v20 = 0;
            do
            {
              v21 = (*(a3 + 120) + 8 * v20);
              v22 = (*(a3 + 104) + 8 * v20);
              v23 = (*(a3 + 96) + 4 * v20);
              *(*v15 + 8 * v20) = v18;
              v24 = v20 + 1;
              v25 = v22[1] - *v22;
              v26 = v23[1] - *v23;
              v27 = v21[1] - *v21;
              if (v11 != 40)
              {
                v27 = v26;
              }

              v18 += 4 * v25 * v27;
              v20 = v24;
            }

            while (v16 != v24);
          }

          return a7;
        }

        if (v12 >= ((v18 + 4 * *(*(a3 + 104) + 8 * v16) + 7) & 0xFFFFFFFFFFFFFFF8))
        {
          v19 = (v17 + 4 * a2 + 7) & 0xFFFFFFFFFFFFFFF8;
          v18 = (v18 + 4 * *(*(a3 + 104) + 8 * v16) + 7) & 0xFFFFFFFFFFFFFFF8;
          goto LABEL_10;
        }
      }
    }
  }

  __break(1u);
  return result;
}

void _SparseRefactorQR_Float(const SparseMatrix_Float *Matrix, SparseOpaqueFactorization_Float *Factorization, const SparseNumericFactorOptions *nfoptions, void *workspace)
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
      v10 = sub_236766614(Matrix, v11);
      if (!v10)
      {
        return;
      }
    }

    else
    {
      v10 = sub_236766AE0(&Matrix->structure.rowCount, v11);
      if (!v10)
      {
        return;
      }
    }
  }

  else if (v8)
  {
    v10 = sub_2367662A8(Matrix, Factorization->symbolicFactorization.workspaceSize_Float);
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
    v10 = sub_236765F90(&v16, workspaceSize_Float);
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
    sub_236763D4C(&v6->structure.rowCount, workspace, &v16);
    v15 = v6->structure.columnStarts[v6->structure.columnCount];
    v14 = (workspace + 8 * v6->structure.rowCount + 4 * v15 + v15 * 4 * BYTE12(v17) * BYTE12(v17) + 31) & 0xFFFFFFFFFFFFFFF8;
  }

  Factorization->status = sub_236766F0C(BYTE1(Factorization->symbolicFactorization.factorization), &v16, workspaceSize_Float, Factorization->solveWorkspaceRequiredStatic, v14, workspace + Factorization->symbolicFactorization.workspaceSize_Double - v14);
  if (v12)
  {
    (*(workspaceSize_Float + 32))(v6);
  }
}

SparseOpaqueFactorization_Float *__cdecl _SparseFactorQR_Float(SparseOpaqueFactorization_Float *__return_ptr retstr, SparseFactorization_t factorType, const SparseMatrix_Float *Matrix, const SparseSymbolicFactorOptions *sfoptions, const SparseNumericFactorOptions *nfoptions)
{
  v6 = sfoptions;
  v8 = factorType;
  v414 = *MEMORY[0x277D85DE8];
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
      result = sub_236766614(Matrix, sfoptions);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_236766AE0(&Matrix->structure.rowCount, sfoptions);
      if (!result)
      {
        return result;
      }
    }
  }

  else if (v13)
  {
    result = sub_2367662A8(Matrix, sfoptions);
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
    result = sub_236765F90(__str, sfoptions);
    if (!result)
    {
      return result;
    }
  }

  v16 = result;
  v17 = 8 * rowCount + 16;
  p_symbolicFactorization = &result->symbolicFactorization;
  v18 = v17 + 4 * *(*&result->symbolicFactorization.status + 8 * columnCount);
  v19 = (v6->malloc)(v18);
  if (v19)
  {
    v20 = v19;
    v406 = v6;
    v383 = v17;
    v384 = columnCount;
    v385 = nfoptions;
    v410 = 0u;
    v411 = 0u;
    p_attributes = &v16->attributes;
    v22 = *&v16->attributes;
    LODWORD(v410) = *&v16->attributes;
    DWORD1(v410) = v16->status;
    v23 = SDWORD1(v410);
    v24 = v19 + 8 * SDWORD1(v410) + 8;
    *(&v410 + 1) = v19;
    *&v411 = v24;
    DWORD2(v411) = v16->symbolicFactorization.factorization;
    BYTE12(v411) = BYTE4(v16->symbolicFactorization.factorization);
    v25 = v19 + 16;
    if (SDWORD1(v410) >= 1)
    {
      bzero((v19 + 16), 8 * SDWORD1(v410));
      p_attributes = &v16->attributes;
    }

    if (v22 >= 1)
    {
      v26 = 0;
      v27 = *&v16->symbolicFactorization.status;
      v28 = *v27;
      do
      {
        v29 = v27[++v26];
        if (v28 < v29)
        {
          v30 = *&v16->symbolicFactorization.columnCount;
          do
          {
            v31 = *(v30 + 4 * v28);
            if ((v31 & 0x80000000) == 0 && v31 < v23)
            {
              ++*(v25 + 8 * v31);
              v29 = v27[v26];
            }

            ++v28;
          }

          while (v28 < v29);
        }

        v28 = v29;
      }

      while (v26 != v22);
    }

    v20[1] = 0;
    v32 = v20 + 1;
    *v20 = 0;
    if (v23 > 1)
    {
      v33 = 0;
      v34 = v23 - 1;
      v35 = v20 + 2;
      do
      {
        v33 += *v35;
        *v35++ = v33;
        --v34;
      }

      while (v34);
    }

    if (v22 >= 1)
    {
      v36 = 0;
      v37 = *&v16->symbolicFactorization.status;
      v38 = *v37;
      do
      {
        v39 = v36++;
        v40 = v37[v36];
        if (v38 < v40)
        {
          v41 = *&v16->symbolicFactorization.columnCount;
          do
          {
            v42 = *(v41 + 4 * v38);
            if ((v42 & 0x80000000) == 0 && v42 < v16->status)
            {
              v43 = v32[v42];
              v32[v42] = v43 + 1;
              *(v24 + 4 * v43) = v39;
              v40 = v37[v36];
            }

            ++v38;
          }

          while (v38 < v40);
          LODWORD(v22) = *p_attributes;
        }

        v38 = v40;
      }

      while (v36 < v22);
    }

    v402 = v20;
    v391 = v8;
    v44 = BYTE4(v16->symbolicFactorization.factorization);
    factorization = v16->symbolicFactorization.factorization;
    if (factorization)
    {
      v46 = p_attributes;
    }

    else
    {
      v46 = v16;
    }

    status = v46->status;
    if (factorization)
    {
      v48 = v16;
    }

    else
    {
      v48 = p_attributes;
    }

    v49 = status * BYTE4(v16->symbolicFactorization.factorization);
    v50 = v48->status * BYTE4(v16->symbolicFactorization.factorization);
    if (v6->ignoreRowsAndColumns)
    {
      v398 = v48->status;
      v404 = p_attributes;
      v51 = v50 + v49 + 4 * (v50 + v49 + v16->status + *&v16->attributes + 2) + 48;
      v52 = (v6->malloc)(v51);
      if (!v52)
      {
        if (!v6->reportError)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_23672EC38();
          }

          _SparseTrap();
        }

        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Memory allocation of size %ld failed\n", v51);
        (v6->reportError)(__str);
        v86 = v20;
        retstr->status = SparseInternalError;
        goto LABEL_226;
      }

      v53 = v52;
      v54 = &v52[v51];
      v55 = (&v52[v49 + 7] & 0xFFFFFFFFFFFFFFF8);
      if (v54 < v55)
      {
        goto LABEL_456;
      }

      v378 = Matrix;
      v386 = retstr;
      v56 = (v55 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      p_attributes = v404;
      if (v54 < v56)
      {
        goto LABEL_456;
      }

      v57 = (v56 + 4 * v49 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v54 < v57)
      {
        goto LABEL_456;
      }

      v58 = ((v57 + 4 * v50 + 11) & 0xFFFFFFFFFFFFFFF8);
      if (v54 < v58)
      {
        goto LABEL_456;
      }

      v59 = (&v58[status + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
      if (v54 < v59 || v54 < ((v59 + 4 * v398 + 7) & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_456;
      }

      v50 = BYTE4(v16->symbolicFactorization.factorization);
      factorization = v16->symbolicFactorization.factorization;
      if (factorization)
      {
        v60 = v404;
      }

      else
      {
        v60 = v16;
      }

      if (factorization)
      {
        v61 = v16;
      }

      else
      {
        v61 = v404;
      }

      v62 = *v60;
      v63 = *v61;
      if (*(v406 + 16))
      {
        *v392 = v63;
        v394 = *(v406 + 16);
        v399 = v62 * v50;
        v64 = v63 * BYTE4(v16->symbolicFactorization.factorization);
        v388 = *v60;
        bzero(v52, v62 * BYTE4(v16->symbolicFactorization.factorization));
        v396 = v64;
        bzero(v55, v64);
        if (v388 >= 1)
        {
          v65 = (v388 + 3) & 0xFFFFFFFC;
          v66 = vdupq_n_s64(v388 - 1);
          v67 = xmmword_23681F910;
          v68 = xmmword_23681F920;
          v69 = v58 + 2;
          v70 = vdupq_n_s64(4uLL);
          do
          {
            v71 = vmovn_s64(vcgeq_u64(v66, v68));
            if (vuzp1_s16(v71, *v66.i8).u8[0])
            {
              *(v69 - 2) = v50;
            }

            if (vuzp1_s16(v71, *&v66).i8[2])
            {
              *(v69 - 1) = v50;
            }

            if (vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, *&v67))).i32[1])
            {
              *v69 = v50;
              v69[1] = v50;
            }

            v67 = vaddq_s64(v67, v70);
            v68 = vaddq_s64(v68, v70);
            v69 += 4;
            v65 -= 4;
          }

          while (v65);
        }

        p_attributes = v404;
        if (v392[0] >= 1)
        {
          v72 = (v392[0] + 3) & 0xFFFFFFFC;
          v73 = vdupq_n_s64(*v392 - 1);
          v74 = xmmword_23681F910;
          v75 = xmmword_23681F920;
          v76 = (v59 + 8);
          v77 = vdupq_n_s64(4uLL);
          do
          {
            v78 = vmovn_s64(vcgeq_u64(v73, v75));
            if (vuzp1_s16(v78, *v73.i8).u8[0])
            {
              *(v76 - 2) = v50;
            }

            if (vuzp1_s16(v78, *&v73).i8[2])
            {
              *(v76 - 1) = v50;
            }

            if (vuzp1_s16(*&v73, vmovn_s64(vcgeq_u64(v73, *&v74))).i32[1])
            {
              *v76 = v50;
              v76[1] = v50;
            }

            v74 = vaddq_s64(v74, v77);
            v75 = vaddq_s64(v75, v77);
            v76 += 4;
            v72 -= 4;
          }

          while (v72);
        }

        v79 = *v394;
        if (*v394 < 0)
        {
          v81 = 0;
          v80 = 0;
        }

        else
        {
          v80 = 0;
          v81 = 0;
          v82 = v394 + 1;
          do
          {
            v83 = v79 - v399;
            if (v79 >= v399)
            {
              *(v57 + 4 * v81++) = v83;
              *(v55 + v83) = 1;
              v84 = (v59 + 4 * (v83 / v50));
            }

            else
            {
              *(v56 + 4 * v80++) = v79;
              v53[v79] = 1;
              v84 = &v58[v79 / v50];
            }

            --*v84;
            v85 = *v82++;
            v79 = v85;
          }

          while ((v85 & 0x80000000) == 0);
        }

        if (v16->symbolicFactorization.factorization)
        {
          if (SDWORD1(v410) >= 1)
          {
            v87 = 0;
            v88 = 0;
            v89 = *(&v410 + 1);
            v90 = v411;
            do
            {
              if (*(v59 + 4 * v88))
              {
                v91 = (v89 + 8 * v88);
                v93 = *v91;
                v92 = v91[1];
                v160 = v92 <= v93;
                v94 = v92 - v93;
                if (v160)
                {
LABEL_102:
                  *(v59 + 4 * v88) = 0;
                  if (v50)
                  {
                    v98 = v87;
                    v99 = v50;
                    do
                    {
                      if ((*(v55 + v98) & 1) == 0)
                      {
                        *(v57 + 4 * v81++) = v98;
                      }

                      *(v55 + v98++) = 1;
                      --v99;
                    }

                    while (v99);
                  }
                }

                else
                {
                  v95 = (v90 + 4 * v93);
                  while (1)
                  {
                    v97 = *v95++;
                    v96 = v97;
                    if ((v97 & 0x80000000) == 0 && v96 < v410 && v58[v96])
                    {
                      break;
                    }

                    if (!--v94)
                    {
                      goto LABEL_102;
                    }
                  }
                }
              }

              ++v88;
              v87 += v50;
            }

            while (v88 < SDWORD1(v410));
          }

          if (*v404 >= 1)
          {
            v100 = 0;
            v101 = 0;
            do
            {
              if (v58[v101])
              {
                v102 = (*&p_symbolicFactorization->status + 8 * v101);
                v104 = *v102;
                v103 = v102[1];
                v160 = v103 <= v104;
                v105 = v103 - v104;
                if (v160)
                {
LABEL_117:
                  v58[v101] = 0;
                  if (v50)
                  {
                    v109 = v100;
                    v110 = v50;
                    do
                    {
                      if ((v53[v109] & 1) == 0)
                      {
                        *(v56 + 4 * v80++) = v109;
                      }

                      v53[v109++] = 1;
                      --v110;
                    }

                    while (v110);
                  }
                }

                else
                {
                  v106 = (*&v16->symbolicFactorization.columnCount + 4 * v104);
                  while (1)
                  {
                    v108 = *v106++;
                    v107 = v108;
                    if ((v108 & 0x80000000) == 0 && v107 < v16->status && *(v59 + 4 * v107))
                    {
                      break;
                    }

                    if (!--v105)
                    {
                      goto LABEL_117;
                    }
                  }
                }
              }

              ++v101;
              v100 += v50;
            }

            while (v101 < *v404);
          }
        }

        else
        {
          if (*v404 >= 1)
          {
            v111 = 0;
            v112 = 0;
            do
            {
              if (*(v59 + 4 * v112))
              {
                v113 = (*&p_symbolicFactorization->status + 8 * v112);
                v115 = *v113;
                v114 = v113[1];
                v160 = v114 <= v115;
                v116 = v114 - v115;
                if (v160)
                {
LABEL_133:
                  *(v59 + 4 * v112) = 0;
                  if (v50)
                  {
                    v120 = v111;
                    v121 = v50;
                    do
                    {
                      if ((*(v55 + v120) & 1) == 0)
                      {
                        *(v57 + 4 * v81++) = v120;
                      }

                      *(v55 + v120++) = 1;
                      --v121;
                    }

                    while (v121);
                  }
                }

                else
                {
                  v117 = (*&v16->symbolicFactorization.columnCount + 4 * v115);
                  while (1)
                  {
                    v119 = *v117++;
                    v118 = v119;
                    if ((v119 & 0x80000000) == 0 && v118 < v16->status && v58[v118])
                    {
                      break;
                    }

                    if (!--v116)
                    {
                      goto LABEL_133;
                    }
                  }
                }
              }

              ++v112;
              v111 += v50;
            }

            while (v112 < *v404);
          }

          if (SDWORD1(v410) >= 1)
          {
            v122 = 0;
            v123 = 0;
            v124 = *(&v410 + 1);
            v125 = v411;
            do
            {
              if (v58[v123])
              {
                v126 = (v124 + 8 * v123);
                v128 = *v126;
                v127 = v126[1];
                v160 = v127 <= v128;
                v129 = v127 - v128;
                if (v160)
                {
LABEL_148:
                  v58[v123] = 0;
                  if (v50)
                  {
                    v133 = v122;
                    v134 = v50;
                    do
                    {
                      if ((v53[v133] & 1) == 0)
                      {
                        *(v56 + 4 * v80++) = v133;
                      }

                      v53[v133++] = 1;
                      --v134;
                    }

                    while (v134);
                  }
                }

                else
                {
                  v130 = (v125 + 4 * v128);
                  while (1)
                  {
                    v132 = *v130++;
                    v131 = v132;
                    if ((v132 & 0x80000000) == 0 && v131 < v410 && *(v59 + 4 * v131))
                    {
                      break;
                    }

                    if (!--v129)
                    {
                      goto LABEL_148;
                    }
                  }
                }
              }

              ++v123;
              v122 += v50;
            }

            while (v123 < SDWORD1(v410));
          }
        }

        LODWORD(v49) = v399 - v80;
        LODWORD(v50) = v396 - v81;
        *(v56 + 4 * v80) = -1;
        *(v57 + 4 * v81) = -1;
        factorization = v16->symbolicFactorization.factorization;
      }

      else
      {
        LODWORD(v49) = v62 * v50;
        LODWORD(v50) = v63 * v50;
      }
    }

    else
    {
      v378 = Matrix;
      v386 = retstr;
      v56 = 0;
      v57 = 0;
      v59 = 0;
      v58 = 0;
      v55 = 0;
      v53 = 0;
    }

    v135 = (factorization ^ (v49 < v50)) & 1;
    if (v49 < v50)
    {
      v136 = v50;
    }

    else
    {
      v136 = v49;
    }

    if (v49 < v50)
    {
      v137 = v49;
    }

    else
    {
      v137 = v50;
    }

    if (v49 < v50)
    {
      v138 = v53;
    }

    else
    {
      v138 = v55;
    }

    if (v49 < v50)
    {
      v139 = v59;
    }

    else
    {
      v139 = v58;
    }

    v381 = v139;
    __src = v138;
    if (v49 < v50)
    {
      v140 = v56;
    }

    else
    {
      v58 = v59;
      v140 = v57;
    }

    if (v49 < v50)
    {
      v141 = v57;
    }

    else
    {
      v141 = v56;
    }

    if (v135)
    {
      v142 = v16;
    }

    else
    {
      v142 = &v410;
    }

    v387 = v142;
    if (v135)
    {
      v143 = &v410;
    }

    else
    {
      v143 = v16;
    }

    v397 = v136;
    v400 = v137;
    if (v136 < v137)
    {
      goto LABEL_456;
    }

    v144 = &v410 + 1;
    v393 = v143;
    v395 = *v143;
    v389 = v135;
    if (!v135)
    {
      v144 = p_attributes;
    }

    *v405 = *v144;
    v145 = v405[0] * v44;
    v146 = v145 + 8;
    v147 = v406;
    if (!*(v406 + 16))
    {
      v146 = 0;
    }

    v148 = v146 + 4 * v145 + 224;
    v149 = (*(v406 + 24))(v148);
    if (!v149)
    {
      if (!*(v406 + 40))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23672EC38();
        }

        _SparseTrap();
      }

      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Memory allocation of size %ld failed\n", v148);
      (*(v406 + 40))(__str);
      v150 = 0;
      v386->status = SparseInternalError;
      goto LABEL_342;
    }

    v150 = v149;
    v151 = v149 + v148;
    v152 = (v149 + 215) & 0xFFFFFFFFFFFFFFF8;
    if (v149 + v148 < v152)
    {
      goto LABEL_456;
    }

    v153 = (v152 + 4 * v145 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v151 < v153)
    {
      goto LABEL_456;
    }

    __n = v405[0] * v44;
    v376 = v141;
    if (*(v406 + 16))
    {
      if (v151 < ((v153 + v145 + 7) & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_456;
      }
    }

    else
    {
      v153 = 0;
    }

    v154 = *v406;
    v155 = *(v406 + 32);
    *(v149 + 16) = *(v406 + 16);
    *(v149 + 32) = v155;
    *v149 = v154;
    *(v149 + 48) = 1;
    *(v149 + 52) = v389;
    *(v149 + 53) = 0;
    *(v149 + 56) = v397;
    *(v149 + 60) = v400;
    *(v149 + 96) = 0u;
    v377 = (v149 + 96);
    *(v149 + 72) = 0;
    *(v149 + 80) = 0;
    *(v149 + 64) = v152;
    *(v149 + 88) = 0;
    v156 = 5 * v405[0] + 2 * v395;
    *(v149 + 112) = 0u;
    v157 = v395 - v405[0] + 8 * v405[0];
    v158 = v157 + 5;
    v159 = v157 + 2;
    *(v149 + 128) = 0;
    *(v149 + 136) = v395 * v44;
    v160 = v156 <= v158;
    if (v156 > v158)
    {
      v161 = v156 + 1;
    }

    else
    {
      v161 = v159;
    }

    v162 = 56;
    if (!v160)
    {
      v162 = 40;
    }

    *(v149 + 144) = 0uLL;
    v375 = (v149 + 144);
    *(v149 + 160) = 0uLL;
    *(v149 + 176) = 0;
    *(v149 + 184) = 0;
    *(v149 + 192) = 0;
    v374 = (v149 + 184);
    *(v149 + 200) = v153;
    v380 = v162 + 4 * v161;
    v163 = *v405;
    v164 = (*(v406 + 24))(v380 + 12 * v405[0] + 24);
    if (v164)
    {
      v165 = v164;
      v166 = v164 + v380 + 12 * v405[0] + 24;
      v167 = (v164 + 4 * *v405 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v166 < v167)
      {
        goto LABEL_456;
      }

      v372 = v140;
      v168 = (v167 + 4 * *v405 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v166 < v168)
      {
        goto LABEL_456;
      }

      v373 = ((v167 + 4 * *v405 + 7) & 0xFFFFFFFFFFFFFFF8);
      v169 = ((v168 + 4 * *v405 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v166 < v169 || v166 < (&v169[v380 + 7] & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_456;
      }

      if (*(v406 + 16))
      {
        memcpy(*(v150 + 200), __src, __n);
        v163 = *v405;
      }

      v170 = (&v410 + 8);
      v171 = 1 << *(v406 + 4);
      if ((v171 & 0x2C) != 0)
      {
        memset(__str, 0, 32);
        v172 = v406;
        sub_236752DB4(0, v393, v406, __str);
        v173 = *(v150 + 64);
        v407 = *__str;
        v408 = *&__str[16];
        v174 = sub_2367E3E64(v391, &v407, 0, v165, v173, v406);
        (*(v406 + 32))(*&__str[8]);
        if (!v174)
        {
          v175 = *(v150 + 64);
          v163 = *v405;
          goto LABEL_243;
        }
      }

      else
      {
        if ((v171 & 0x11) == 0)
        {
          v181 = *(v406 + 8);
          v175 = *(v150 + 64);
          if (v181)
          {
            if (v163 < 1)
            {
              goto LABEL_243;
            }

            for (i = 0; i != v163; i = i + 1)
            {
              *(v175 + 4 * *(v181 + 4 * i)) = i;
            }
          }

          else
          {
            if (v163 < 1)
            {
              goto LABEL_243;
            }

            v183 = 0;
            v184 = vdupq_n_s64(v163 - 1);
            v185 = xmmword_23681F910;
            v186 = xmmword_23681F920;
            v187 = (v175 + 8);
            v188 = vdupq_n_s64(4uLL);
            do
            {
              v189 = vmovn_s64(vcgeq_u64(v184, v186));
              if (vuzp1_s16(v189, *v184.i8).u8[0])
              {
                *(v187 - 2) = v183;
              }

              if (vuzp1_s16(v189, *&v184).i8[2])
              {
                *(v187 - 1) = v183 + 1;
              }

              if (vuzp1_s16(*&v184, vmovn_s64(vcgeq_u64(v184, *&v185))).i32[1])
              {
                *v187 = v183 + 2;
                v187[1] = v183 + 3;
              }

              v183 += 4;
              v185 = vaddq_s64(v185, v188);
              v186 = vaddq_s64(v186, v188);
              v187 += 4;
            }

            while (((v163 + 3) & 0xFFFFFFFC) != v183);
          }

          for (j = 0; j != v163; j = j + 1)
          {
            *&v165[4 * *(v175 + 4 * j)] = j;
          }

LABEL_243:
          v191 = *(v393 + 16);
          *__str = *v393;
          *&__str[16] = v191;
          sub_236768978(__str, v381, v58, v165, v175, v373, v169, &v169[4 * v163]);
          sub_236750DDC(*v405, v373, v165, *(v150 + 64), v169);
          v192 = *(v150 + 64);
          v193 = *&v387->symbolicFactorization.columnCount;
          *__str = *&v387->status;
          *&__str[16] = v193;
          sub_2366EE0E8(__str, v381, v58, v165, v192, v373, v167, v169, &v169[16 * *v405]);
          v194 = sub_236768200(v393, v381, v58, v165, *(v150 + 64), v373, v167, v169, v406, &v169[4 * v163 + 4]);
          v195 = *v405;
          *(v150 + 88) = v194;
          *(v150 + 80) = 0;
          if (v405[0] < 1)
          {
            v196 = 0;
            v198 = v397;
          }

          else
          {
            v196 = 0;
            v197 = v167;
            v198 = v397;
            do
            {
              v199 = *v197++;
              v196 += v199;
              --v195;
            }

            while (v195);
            *(v150 + 80) = v196;
          }

          if (v194 < 1)
          {
            v200 = 0;
          }

          else
          {
            v200 = 0;
            v201 = v194;
            v202 = (v169 + 4);
            v203 = *v169;
            v204 = v167;
            do
            {
              v206 = *v204++;
              v205 = v206;
              v207 = *v202++;
              v200 += v205 * v44;
              v196 += v205 * (v207 - v203);
              v203 = v207;
              --v201;
            }

            while (v201);
            *(v150 + 80) = v196;
          }

          v390 = v198;
          v401 = 8 * (v198 - v400 + v200);
          v208 = v401 + 12 * v194 + 8 * (v200 + 2 * v194 + 2) + 44;
          v209 = (*(v406 + 24))(v208);
          if (v209)
          {
            v210 = v209 + v208;
            v211 = *(v150 + 88);
            v212 = v211 + 1;
            v213 = (v209 + 4 * (v211 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
            if (v209 + v208 >= v213)
            {
              *v377 = v209;
              v214 = v213 + 8 * v212;
              if (v214 <= v210)
              {
                *(v150 + 104) = v213;
                v215 = (v214 + 4 * v200 + 7) & 0xFFFFFFFFFFFFFFF8;
                if (v210 >= v215)
                {
                  *(v150 + 112) = v214;
                  v216 = (v215 + 4 * v200 + 7) & 0xFFFFFFFFFFFFFFF8;
                  if (v210 >= v216)
                  {
                    *v375 = v215;
                    v217 = v216 + 8 * v212;
                    if (v217 <= v210)
                    {
                      *(v150 + 120) = v216;
                      v218 = v217 + v401;
                      if (v217 + v401 <= v210)
                      {
                        *(v150 + 128) = v217;
                        v219 = (v218 + 4 * v211 + 15) & 0xFFFFFFFFFFFFFFF8;
                        if (v210 >= v219)
                        {
                          *(v150 + 152) = v218;
                          if (v210 >= ((v219 + 4 * v211 + 7) & 0xFFFFFFFFFFFFFFF8))
                          {
                            *(v150 + 160) = v219;
                            if ((v211 & 0x80000000) == 0)
                            {
                              v220 = 0;
                              do
                              {
                                *(v209 + 4 * v220) = *&v169[4 * v220];
                                v160 = v220++ < *(v150 + 88);
                              }

                              while (v160);
                              v211 = *(v150 + 88);
                            }

                            sub_236812888(v211, v373, v218, v219);
                            v221 = *(v150 + 88);
                            if (v221 < 1)
                            {
                              v223 = 0;
                              v226 = *v405;
                              v227 = v395 * v44;
                            }

                            else
                            {
                              v222 = 0;
                              v223 = 0;
                              v224 = *(v150 + 152);
                              v225 = *v224;
                              v226 = *v405;
                              v227 = v395 * v44;
                              do
                              {
                                v228 = v224[++v222];
                                v229 = v390;
                                if (v225 < v228)
                                {
                                  v230 = v228 - v225;
                                  v231 = (*(v150 + 160) + 4 * v225);
                                  v232 = v397;
                                  do
                                  {
                                    v233 = *v231++;
                                    v232 += (*(v167 + 4 * v233) - *(*(v150 + 96) + 4 * v233 + 4) + *(*(v150 + 96) + 4 * v233)) * v44;
                                    --v230;
                                  }

                                  while (v230);
                                  v229 = v232;
                                }

                                if (v223 <= v229)
                                {
                                  v223 = v229;
                                }

                                v225 = v224[v222];
                              }

                              while (v222 != v221);
                            }

                            v234 = *(v406 + 16);
                            if (v234)
                            {
                              if ((v221 & 0x80000000) == 0)
                              {
                                v235 = 0;
                                v236 = *v377;
                                do
                                {
                                  *&v169[4 * v235] = v236[v235];
                                  v237 = *(v150 + 88);
                                  v160 = v235++ < v237;
                                }

                                while (v160);
                                if ((v237 & 0x80000000) == 0)
                                {
                                  v238 = 0;
                                  v239 = 0;
                                  do
                                  {
                                    v236[v238] = v239;
                                    v240 = *&v169[4 * v238];
                                    v241 = *&v169[4 * v238 + 4];
                                    if (v240 < v241)
                                    {
                                      v242 = v241 - v240;
                                      v243 = (*(v150 + 64) + 4 * v240);
                                      do
                                      {
                                        v244 = *v243++;
                                        v239 += v58[v244];
                                        --v242;
                                      }

                                      while (v242);
                                    }

                                    v160 = v238++ < *(v150 + 88);
                                  }

                                  while (v160);
                                }
                              }

                              v245 = v374;
                              if (v226 >= 1)
                              {
                                v246 = *(v150 + 64);
                                v247 = v246;
                                v248 = v169;
                                v249 = v226;
                                do
                                {
                                  v250 = *v247++;
                                  *v248 = v250;
                                  v248 += 4;
                                  --v249;
                                }

                                while (v249);
                                v251 = 0;
                                v252 = 0;
                                v253 = __n - 1;
                                do
                                {
                                  if (v44)
                                  {
                                    v254 = 0;
                                    v255 = *(v150 + 200);
                                    do
                                    {
                                      v256 = *&v169[4 * v251] * v44;
                                      v257 = v254 + v256;
                                      v258 = *(v255 + v256);
                                      if (v258)
                                      {
                                        v259 = v253;
                                      }

                                      else
                                      {
                                        v259 = v252;
                                      }

                                      v253 -= v258;
                                      v252 += v258 ^ 1;
                                      v246[v259] = v257;
                                      ++v254;
                                      ++v255;
                                    }

                                    while (v44 != v254);
                                  }

                                  v251 = v251 + 1;
                                }

                                while (v251 != v226);
                              }
                            }

                            else
                            {
                              v245 = v374;
                              if (v44 < 2)
                              {
LABEL_313:
                                if (v234)
                                {
                                  v270 = v227 + 8;
                                }

                                else
                                {
                                  v270 = 0;
                                }

                                __b = v169;
                                if (v380 < 8 * v223 + 4 * (v223 + v395 + 2 * v44 * v226) + v270 + 32)
                                {
                                  __b = (*(v406 + 24))();
                                }

                                sub_23679A9A8(v393, v387, v150, *(v150 + 152), *(v150 + 160), v223, v376, v372, __b);
                                if (__b != v169)
                                {
                                  (*(v406 + 32))(__b);
                                }

                                *(v150 + 168) = 0;
                                *(v150 + 176) = 0;
                                *(v150 + 72) = 0;
                                *v245 = 0;
                                v245[1] = 0;
                                v272 = *(v150 + 88);
                                if (v272 >= 1)
                                {
                                  v273 = 0;
                                  v274 = 0;
                                  v275 = 0;
                                  v276 = 0;
                                  v277 = 0;
                                  v278 = 0;
                                  v279 = 0;
                                  v280 = 0;
                                  v281 = *(v150 + 96);
                                  v282 = *(v150 + 104);
                                  v283 = *(v150 + 120);
                                  while (1)
                                  {
                                    v284 = v278 + 1;
                                    v285 = *(v281 + 4 * (v278 + 1)) - *(v281 + 4 * v278);
                                    v286 = *(v283 + 8 * (v278 + 1)) - *(v283 + 8 * v278);
                                    if (v286 < v285)
                                    {
                                      break;
                                    }

                                    v287 = *(v282 + 8 * v284) - *(v282 + 8 * v278);
                                    v288 = v287;
                                    v289 = v286 * v287;
                                    if (v289 > v277)
                                    {
                                      *(v150 + 168) = v289;
                                      v277 = v286 * v287;
                                    }

                                    if (v276 < v287)
                                    {
                                      *(v150 + 176) = v287;
                                      v276 = v287;
                                    }

                                    v275 += v289;
                                    *(v150 + 72) = v275;
                                    v290 = *(v150 + 152);
                                    v291 = *(v290 + 4 * v278);
                                    v292 = *(v290 + 4 * v284);
                                    if (v291 < v292)
                                    {
                                      v293 = v292 - v291;
                                      v294 = (*(v150 + 160) + 4 * v291);
                                      do
                                      {
                                        v295 = *v294++;
                                        v296 = *(v281 + 4 * (v295 + 1)) - *(v281 + 4 * v295);
                                        v297 = *(v282 + 8 * (v295 + 1)) - *(v282 + 8 * v295);
                                        v298 = *(v283 + 8 * (v295 + 1)) - *(v283 + 8 * v295);
                                        if (v298 >= v297)
                                        {
                                          v298 = v297;
                                        }

                                        v299 = v298 - v296;
                                        v280 += v299 * (v296 - v297);
                                        v279 -= v299;
                                        --v293;
                                      }

                                      while (v293);
                                    }

                                    if (v286 >= v288)
                                    {
                                      v286 = v288;
                                    }

                                    v300 = v286 - v285;
                                    v280 += v300 * (v288 - v285);
                                    if (v280 > v274)
                                    {
                                      *v245 = v280;
                                      v274 = v280;
                                    }

                                    v279 += v300;
                                    if (v279 > v273)
                                    {
                                      *(v150 + 192) = v279;
                                      v273 = v279;
                                    }

                                    v278 = v284;
                                    if (v284 == v272)
                                    {
                                      goto LABEL_341;
                                    }
                                  }

                                  v386->status = SparseMatrixIsSingular;
                                  (*(v406 + 32))();
                                  (*(v406 + 32))(v150);
                                  v150 = 0;
                                }

LABEL_341:
                                v301 = v165;
                                v147 = v406;
                                (*(v406 + 32))(v301);
LABEL_342:
                                if (*(v147 + 16))
                                {
                                  (*(v147 + 32))(v53);
                                }

                                p_free = (v147 + 32);
                                (*(v147 + 32))(v402);
                                if (!v150)
                                {
                                  return (*p_free)(v16);
                                }

                                v302 = v16->status;
                                v303 = *&v16->attributes;
                                v304 = BYTE4(v16->symbolicFactorization.factorization);
                                if (v302 >= v303)
                                {
                                  v305 = *&v16->attributes;
                                }

                                else
                                {
                                  v305 = v16->status;
                                }

                                if (*(v150 + 52))
                                {
                                  v306 = 0;
                                  v307 = 0;
                                  LODWORD(v303) = v16->status;
                                }

                                else
                                {
                                  v309 = v302 + 2;
                                  v310 = 8 * (v302 + 2);
                                  v311 = v310 + 8;
                                  v312 = v310 >= 0xFFFFFFFFFFFFFFF8;
                                  if (v309 >> 61 || v312)
                                  {
                                    goto LABEL_364;
                                  }

                                  v313 = *(*&p_symbolicFactorization->status + 8 * v303);
                                  v307 = v311 + 4 * v313;
                                  v314 = __CFADD__(v311, 4 * v313);
                                  if (v313 >> 62 || v314 || !is_mul_ok(v313, (4 * v304 * v304)))
                                  {
                                    goto LABEL_364;
                                  }

                                  v306 = v313 * (4 * v304 * v304);
                                }

                                if (v391 == 40)
                                {
                                  v308 = 0;
                                }

                                else
                                {
                                  v308 = *(v150 + 168);
                                }

                                v315 = *(v150 + 184);
                                v316 = v315 + v308;
                                if (!__CFADD__(v315, v308))
                                {
                                  *__str = 1;
                                  LODWORD(v407) = -1;
                                  v412 = 10000;
                                  v318 = ilaenv_NEWLAPACK();
                                  v319 = v318;
                                  if (v391 != 40)
                                  {
                                    v319 = v318 + 1;
                                  }

                                  v320 = *(v150 + 176);
                                  v321 = !is_mul_ok(v319, v320);
                                  v322 = v319 * v320;
                                  v323 = __CFADD__(v316, v322);
                                  v324 = v316 + v322;
                                  v325 = v323;
                                  if (!v321 && !v325)
                                  {
                                    v323 = __CFADD__(v324, v306);
                                    v326 = v324 + v306;
                                    if (!v323)
                                    {
                                      v327 = v303 * v304;
                                      v328 = v307 + 4 * v327;
                                      v329 = __CFADD__(v307, 4 * v327);
                                      if (!(v327 >> 62) && !v329)
                                      {
                                        v330 = *(v150 + 88);
                                        v323 = __CFADD__(v328, 8 * v330);
                                        v331 = v328 + 8 * v330;
                                        v332 = v323;
                                        if ((v330 & 0x80000000) == 0 && !v332)
                                        {
                                          v323 = __CFADD__(v331, 40);
                                          v333 = v331 + 40;
                                          if (!v323)
                                          {
                                            if ((v320 & 0x80000000) == 0)
                                            {
                                              v334 = *(v150 + 176);
                                            }

                                            else
                                            {
                                              v334 = -v320;
                                            }

                                            v335 = 2 * v334;
                                            if ((v320 & 0x80000000) != 0)
                                            {
                                              v335 = -v335;
                                            }

                                            v323 = __CFADD__(v333, v335);
                                            v336 = v333 + v335;
                                            v337 = v323;
                                            if ((v320 & 0x80000000) == 0 && !v337)
                                            {
                                              v338 = v336 + 4 * v326;
                                              v339 = __CFADD__(v336, 4 * v326);
                                              v386->symbolicFactorization.workspaceSize_Double = v338;
                                              if (!(v326 >> 62) && !v339)
                                              {
                                                v323 = __CFADD__(v336, 8 * v326);
                                                v340 = v336 + 8 * v326;
                                                v341 = v323;
                                                v386->symbolicFactorization.factorSize_Float = v340;
                                                if (!(v326 >> 61) && !v341)
                                                {
                                                  if (v391 == 40)
                                                  {
                                                    v342 = (v150 + 72);
                                                    v343 = *(v150 + 88);
                                                    v344 = *(*(v150 + 104) + 8 * v343);
                                                  }

                                                  else
                                                  {
                                                    v344 = 0;
                                                    v342 = (v150 + 80);
                                                    LODWORD(v343) = *(v150 + 88);
                                                  }

                                                  v345 = v343 + 1;
                                                  if (v343 >= -1)
                                                  {
                                                    v346 = v343 + 1;
                                                  }

                                                  else
                                                  {
                                                    v346 = -v345;
                                                  }

                                                  v347 = 8 * v346;
                                                  if (v343 < -1)
                                                  {
                                                    v347 = -8 * v346;
                                                  }

                                                  v323 = __CFADD__(v347, 96);
                                                  v348 = v347 + 96;
                                                  v349 = v323;
                                                  v147 = v406;
                                                  if (v343 >= -1 && !(v346 >> 61) && !v349)
                                                  {
                                                    v350 = 8 * v345 + 96;
                                                    if ((8 * v345) < 0xFFFFFFFFFFFFFFA0)
                                                    {
                                                      v351 = v304 * v305;
                                                      v352 = *v342;
                                                      v323 = __CFADD__(v352, v344);
                                                      v353 = v352 + v344;
                                                      v354 = v323;
                                                      v323 = __CFADD__(v351, v353);
                                                      v355 = v351 + v353;
                                                      v356 = v323;
                                                      if (!v354 && !v356)
                                                      {
                                                        v357 = *(v150 + 176);
                                                        if (v357 >= 0)
                                                        {
                                                          v358 = *(v150 + 176);
                                                        }

                                                        else
                                                        {
                                                          v358 = -v357;
                                                        }

                                                        v359 = 2 * v358;
                                                        if (v357 < 0)
                                                        {
                                                          v359 = -v359;
                                                        }

                                                        v323 = __CFADD__(v355, v359);
                                                        v360 = v355 + v359;
                                                        v361 = v323;
                                                        if ((v357 & 0x80000000) == 0 && !v361)
                                                        {
                                                          v362 = v348 + 4 * v360;
                                                          v363 = __CFADD__(v348, 4 * v360);
                                                          v386->symbolicFactorization.factorSize_Double = v362;
                                                          if (!(v360 >> 62) && !v363)
                                                          {
                                                            v364 = __CFADD__(v350, 8 * v360);
                                                            *&v386->userFactorStorage = v350 + 8 * v360;
                                                            if (!(v360 >> 61) && !v364)
                                                            {
                                                              v386->symbolicFactorization.workspaceSize_Float = v150;
                                                              v386->symbolicFactorization.status = SparseStatusOK;
                                                              v365 = (*(v406 + 24))(v338);
                                                              if (v365)
                                                              {
                                                                v366 = v365;
                                                                workspaceSize_Float = 0;
                                                                v407 = 0u;
                                                                v408 = 0u;
                                                                if (*(v150 + 52))
                                                                {
                                                                  v407 = *&v16->status;
                                                                  v408 = *&v16->symbolicFactorization.columnCount;
                                                                  workspaceSize_Float = v16->symbolicFactorization.workspaceSize_Float;
                                                                  v367 = v365;
                                                                }

                                                                else
                                                                {
                                                                  sub_236763D4C(v16, v365, &v407);
                                                                  v368 = 4 * *(*&v16->symbolicFactorization.status + 8 * v384);
                                                                  v367 = (&v366->symbolicFactorization.rowCount + v383 + v368 + v368 * BYTE12(v408) * BYTE12(v408) + 3) & 0xFFFFFFFFFFFFFFF8;
                                                                }

                                                                v369 = sub_2367640B8(v391, v351, v150, v362, v150, v385, 0);
                                                                v386->solveWorkspaceRequiredStatic = v369;
                                                                if (v369)
                                                                {
                                                                  v386->status = sub_236766F0C(v391, &v407, v150, v369, v367, v366 + v338 - v367);
                                                                  if (v391 == 40)
                                                                  {
                                                                    if (*&v16->attributes <= v16->status)
                                                                    {
                                                                      v370 = v16->status;
                                                                    }

                                                                    else
                                                                    {
                                                                      v370 = *&v16->attributes;
                                                                    }

                                                                    sub_2367CDD30(v370 * BYTE4(v16->symbolicFactorization.factorization), v150, &v386->solveWorkspaceRequiredPerRHS, &v386[1]);
                                                                    v371 = *&v386[1].status + 4 * *(&v378->structure.blockSize + 2) * (2 * v370);
                                                                  }

                                                                  else
                                                                  {
                                                                    v386->solveWorkspaceRequiredPerRHS = 0;
                                                                    v371 = 4 * *&v16->attributes * BYTE4(v16->symbolicFactorization.factorization);
                                                                  }

                                                                  *&v386[1].status = v371;
                                                                }

                                                                else
                                                                {
                                                                  if (!*(v406 + 40))
                                                                  {
                                                                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                                                                    {
                                                                      sub_23672ECA8();
                                                                    }

                                                                    _SparseTrap();
                                                                  }

                                                                  memset(__str, 0, 256);
                                                                  snprintf(__str, 0x100uLL, "Failed to allocate space for QR factors of size %ld.", v362);
                                                                  (*(v406 + 40))(__str);
                                                                }

                                                                (*p_free)(v366);
                                                              }

                                                              else
                                                              {
                                                                if (!*(v406 + 40))
                                                                {
                                                                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                                                                  {
                                                                    sub_23672ED18();
                                                                  }

                                                                  _SparseTrap();
                                                                }

                                                                memset(__str, 0, 256);
                                                                snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld for QR Numeric factorization.", v338);
                                                                (*(v406 + 40))(__str);
                                                              }

                                                              return (*p_free)(v16);
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
                                      }
                                    }
                                  }
                                }

LABEL_364:
                                v317 = *(v147 + 40);
                                if (!v317)
                                {
                                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                                  {
                                    sub_23672ED88();
                                  }

                                  _SparseTrap();
                                }

                                memset(&__str[70], 0, 186);
                                strcpy(__str, "Overflow calculating workspace required for numeric QR factorization.");
                                v317(__str);
                                (*p_free)(v150);
                                return (*p_free)(v16);
                              }

                              if (v226 >= 1)
                              {
                                v260 = *(v150 + 64);
                                v261 = v260;
                                v262 = v165;
                                v263 = v226;
                                do
                                {
                                  v264 = *v261++;
                                  *v262 = v264;
                                  v262 += 4;
                                  --v263;
                                }

                                while (v263);
                                v265 = 0;
                                LODWORD(v266) = 0;
                                do
                                {
                                  v267 = 0;
                                  v266 = v266;
                                  do
                                  {
                                    v260[v266++] = v267++ + *&v165[4 * v265] * v44;
                                  }

                                  while (v44 != v267);
                                  v265 = v265 + 1;
                                }

                                while (v265 != v226);
                                LODWORD(v221) = *(v150 + 88);
                              }

                              if ((v221 & 0x80000000) == 0)
                              {
                                v268 = *v377;
                                v269 = -1;
                                do
                                {
                                  *v268++ *= v44;
                                  ++v269;
                                }

                                while (v269 < *(v150 + 88));
                              }
                            }

                            *(v150 + 80) *= (v44 * v44);
                            goto LABEL_313;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_456:
            __break(1u);
          }

          v6 = v406;
          (*(v406 + 32))(v165);
          (*(v406 + 32))(v150);
          goto LABEL_219;
        }

        if (!v389)
        {
          v170 = p_symbolicFactorization;
        }

        v176 = _SparseCOLAMDWorkspaceSize(v395, v163, *(*&v170->status + 8 * v163), v400);
        v172 = v406;
        v177 = (*(v406 + 24))(v176);
        if (v177)
        {
          v178 = v177;
          _SparseCOLAMD(v393, v387, v58, 0, *(v150 + 64), v177);
          (*(v406 + 32))(v178);
          v175 = *(v150 + 64);
          v163 = *v405;
          if (v405[0] >= 1)
          {
            v179 = 0;
            do
            {
              *&v165[4 * *(v175 + 4 * v179)] = v179;
              ++v179;
            }

            while (*v405 != v179);
          }

          goto LABEL_243;
        }
      }

      (*(v172 + 32))(v165);
    }

    else
    {
      v172 = v406;
    }

    (*(v172 + 32))(v150);
    v6 = v172;
LABEL_219:
    v86 = v402;
LABEL_226:
    (v6->free)(v86);
    p_free = &v6->free;
    return (*p_free)(v16);
  }

  if (!v6->reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23672EDD0();
    }

    _SparseTrap();
  }

  memset(__str, 0, 256);
  snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld.", v18);
  (v6->reportError)(__str);
  return (v6->free)(v16);
}

uint64_t sub_236765F90(int *a1, uint64_t a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = (*(a2 + 24))(12 * *a1);
  v5 = *a1;
  v38 = v4;
  v6 = (v4 + 8 * v5);
  bzero(v6, 4 * v5);
  v7 = a1[1];
  __n = *a1;
  v37 = *(a1 + 28);
  v8 = v37 * v37;
  v9 = 8 * v7 + 8;
  v10 = 4 * *(*(a1 + 1) + 8 * v7);
  v11 = v9 + v10 + v10 * v8 + 64;
  v12 = (*(a2 + 24))(v11);
  v13 = v12;
  if (v12)
  {
    v35 = a2;
    v14 = v12 + v11;
    v15 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
    if (v12 + v11 < v15 || (v16 = v15 + v9, v15 + v9 > v14) || (v17 = (v16 + v10 + 7) & 0xFFFFFFFFFFFFFFF8, v14 < v17) || v14 < ((v17 + v10 * v8 + 7) & 0xFFFFFFFFFFFFFFF8))
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
      v24 = 4 * v37 * v37;
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
                memcpy((*(v13 + 32) + 4 * v22 * v8), (*(a1 + 4) + 4 * v26 * v8), 4 * v8);
                ++v22;
                v23 = *(a1 + 1);
              }

              else if (v37)
              {
                v29 = (*(v13 + 32) + 4 * *(v38 + 8 * v28) * v8);
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
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v11);
    (*(a2 + 40))(__str);
  }

  return v13;
}

uint64_t sub_2367662A8(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = 8 * *(a1 + 4);
  v42 = *(a1 + 4);
  v5 = *(a1 + 28);
  v6 = v4 + 8;
  v7 = 4 * *(*(a1 + 8) + v4);
  v41 = (v5 * v5);
  v8 = v4 + 8 + v7 + v7 * v41 + 64;
  result = (*(a2 + 24))(v8);
  if (result)
  {
    v10 = result + v8;
    v11 = (result + 47) & 0xFFFFFFFFFFFFFFF8;
    if (result + v8 < v11 || (v12 = v11 + v6, v11 + v6 > v10) || (v13 = (v12 + v7 + 7) & 0xFFFFFFFFFFFFFFF8, v10 < v13) || v10 < ((v13 + v7 * v41 + 7) & 0xFFFFFFFFFFFFFFF8))
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
    *(result + 28) = v5;
    *(result + 32) = v13;
    *(result + 24) = v14 & 0xFFF3;
    if (v42 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = (v5 * v5);
      __n = 4 * v41;
      v40 = result;
      v19 = *(a1 + 8);
      v20 = 4 * v5;
      v21 = 4 * v5 + 4;
      v22 = 4 * v5 * v5;
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
        v31 = (*(result + 32) + 4 * v17 * v18);
        v44 = v17 + 1;
        if (v23 == v26)
        {
          bzero(v31, __n);
          if ((*(a1 + 24) & 2) != 0)
          {
            if (v5)
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
                  *&v31[4 * v38] = *(v37 + 4 * v38);
                  ++v38;
                }

                while (v36 + v38 < v5);
                ++v36;
                v31 += v21;
                v37 += v21;
              }

              while (v36 != v5);
              goto LABEL_33;
            }
          }

          else if (v5)
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
                *&v31[4 * v35] = *(v33 + 4 * v35);
                ++v35;
              }

              while (v34 != v35);
              ++v32;
              ++v34;
              v31 += v20;
              v33 += v20;
            }

            while (v32 != v5);
LABEL_33:
            v18 = (v5 * v5);
            goto LABEL_34;
          }
        }

        else
        {
          memcpy(v31, (v30 + 4 * v24 * v18), __n);
        }

        result = v40;
        v18 = (v5 * v5);
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

void *sub_236766614(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v83 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  v5 = *(a1 + 28);
  v6 = 8 * v4 + 8;
  v64 = v4;
  v65 = (v5 * v5);
  v7 = 4 * (*(*(a1 + 8) + 8 * v4) + v4);
  v8 = v6 + v7 + v7 * v65 + 64;
  v9 = (*(a2 + 24))(v8);
  v10 = v9;
  if (v9)
  {
    v11 = v9 + v8;
    v12 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
    if (v9 + v8 < v12 || (v13 = v12 + v6, LODWORD(v14) = v64, v12 + v6 > v11) || (v15 = (v13 + v7 + 7) & 0xFFFFFFFFFFFFFFF8, v11 < v15) || v11 < ((v15 + v7 * v65 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      __break(1u);
    }

    v16 = *(v3 + 24);
    *v9 = v64;
    *(v9 + 4) = v64;
    *(v9 + 8) = v12;
    *(v9 + 16) = v13;
    *(v9 + 24) = v16;
    *(v9 + 28) = v5;
    *(v9 + 32) = v15;
    *(v9 + 24) = v16 & 0xFFF3;
    if (v64 < 1)
    {
      v18 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      __n = 4 * v65;
      v19 = 4 * v5;
      v20 = 16 * v5 + 16;
      v21 = 4 * v5 * v5;
      v22 = 4 * v5 + 4;
      v66 = v10;
      v62 = vdupq_n_s64(v5 - 1);
      v61 = vdupq_n_s64(4uLL);
      do
      {
        v23 = v17;
        v24 = v10[2];
        *(v10[1] + 8 * v17) = v18;
        *(v24 + 4 * v18) = v17;
        v25 = v10[4];
        v26 = v18;
        bzero((v25 + 4 * v18 * v65), __n);
        if (v5)
        {
          v27 = (v5 + 3) & 0x1FC;
          v28 = xmmword_23681F920;
          v29 = xmmword_23681F910;
          do
          {
            v30 = vmovn_s64(vcgeq_u64(v62, v28));
            if (vuzp1_s16(v30, *v28.i8).u8[0])
            {
              *(v25 + v21 * v26) = 1065353216;
            }

            if (vuzp1_s16(v30, *&v28).i8[2])
            {
              *(v25 + v5 * (v19 * v26 + 4) + 4) = 1065353216;
            }

            if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v62, *&v29))).i32[1])
            {
              *(v25 + v5 * (v19 * v26 + 8) + 8) = 1065353216;
              *(v25 + v5 * (v19 * v26 + 12) + 12) = 1065353216;
            }

            v29 = vaddq_s64(v29, v61);
            v28 = vaddq_s64(v28, v61);
            v25 += v20;
            v27 -= 4;
          }

          while (v27);
        }

        v18 = v26 + 1;
        v31 = *(v3 + 8);
        v32 = *(v31 + 8 * v23);
        v17 = v23 + 1;
        if (v32 >= *(v31 + 8 * (v23 + 1)))
        {
          v14 = v64;
        }

        else
        {
          v33 = v21 * v32;
          v34 = v21 * v32 + 4;
          v14 = v64;
          do
          {
            v35 = *(*(v3 + 16) + 4 * v32);
            v36 = *(v3 + 24);
            if ((v36 & 2) == 0 || v23 <= v35)
            {
              v37 = v23 >= v35 || (v36 >> 1) & 1;
              if (v37 && v35 < v14)
              {
                v39 = *(v3 + 32);
                if (v23 == v35)
                {
                  v40 = v66[4];
                  v41 = *(v66[1] + 8 * v23);
                  if ((v36 & 2) != 0)
                  {
                    if (v5)
                    {
                      v42 = 0;
                      v43 = v40 + v21 * v41 + 4;
                      v44 = (v39 + v34);
                      v45 = v5 - 1;
                      do
                      {
                        if (++v42 < v5)
                        {
                          v46 = v45;
                          v47 = v44;
                          v48 = v43;
                          do
                          {
                            v49 = *v47++;
                            *v48++ = v49;
                            --v46;
                          }

                          while (v46);
                        }

                        v43 += v22;
                        v44 = (v44 + v22);
                        --v45;
                      }

                      while (v42 != v5);
                    }
                  }

                  else if (v5)
                  {
                    v56 = 0;
                    v57 = v40 + 4 * v41 * v65;
                    v58 = v39 + v33;
                    do
                    {
                      if (v56)
                      {
                        for (i = 0; i != v56; ++i)
                        {
                          *(v57 + 4 * i) = *(v58 + 4 * i);
                        }
                      }

                      ++v56;
                      v57 += v19;
                      v58 += v19;
                    }

                    while (v56 != v5);
                  }
                }

                else
                {
                  *(v66[2] + 4 * v18) = v35;
                  v50 = v22;
                  v51 = v23;
                  v52 = v21;
                  v53 = v3;
                  v54 = v17;
                  v55 = v18;
                  memcpy((v66[4] + 4 * v18 * v65), (v39 + 4 * v32 * v65), __n);
                  v17 = v54;
                  v3 = v53;
                  v21 = v52;
                  v23 = v51;
                  v22 = v50;
                  v19 = 4 * v5;
                  v14 = v64;
                  v18 = v55 + 1;
                  v31 = *(v3 + 8);
                }
              }
            }

            ++v32;
            v33 += v21;
            v34 += v21;
          }

          while (v32 < *(v31 + 8 * v17));
        }

        v10 = v66;
        v20 = 16 * v5 + 16;
      }

      while (v17 != v14);
      v12 = v66[1];
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

    v81 = 0u;
    v82 = 0u;
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
    *__str = 0u;
    v68 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v8);
    (*(a2 + 40))(__str);
  }

  return v10;
}

uint64_t sub_236766AE0(__int128 *a1, uint64_t a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  v5 = *(a1 + 28);
  v6 = (v5 * v5);
  v7 = *(*(a1 + 1) + 8 * v4);
  v8 = 8 * (v4 + v7) + 16;
  v9 = v8 + 8 * v7 * v6 + 72;
  v10 = (*(a2 + 24))(v9);
  if (!v10)
  {
    if (*(a2 + 40))
    {
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
      v66 = 0u;
      v67 = 0u;
      *__str = 0u;
      v65 = 0u;
      snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld", v8 + 8 * v7 * v6 + 72);
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

  v11 = v10;
  v60 = v4;
  v61 = a2;
  v12 = v10 + v9;
  v13 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
  if (v10 + v9 < v13)
  {
    goto LABEL_57;
  }

  v14 = (v13 + 8 * v7 * v6);
  if (v14 > v12)
  {
    goto LABEL_57;
  }

  v15 = *(a1 + 28);
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  *(v10 + 28) = v15;
  *(v10 + 29) = 0;
  *(v10 + 31) = 0;
  *(v10 + 32) = v13;
  v16 = 16 * v7;
  v17 = (*(a2 + 24))(v16);
  if (!v17)
  {
    if (*(a2 + 40))
    {
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
      v66 = 0u;
      v67 = 0u;
      *__str = 0u;
      v65 = 0u;
      snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld", v16);
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

  v18 = v17;
  v19 = v14 + v8;
  if ((*(a1 + 24) & 2) != 0)
  {
    if (v12 >= v19)
    {
      v21 = a1[1];
      v62 = *a1;
      v63 = v21;
      sub_2367861D0(&v62, 0, v14, v17, 0, __str);
      goto LABEL_15;
    }

LABEL_57:
    __break(1u);
  }

  if (v12 < v19)
  {
    goto LABEL_57;
  }

  v20 = a1[1];
  v62 = *a1;
  v63 = v20;
  sub_236785FB0(&v62, 0, v14, v17, 0, __str);
LABEL_15:
  v22 = v65;
  *v11 = *__str;
  *(v11 + 16) = v22;
  if (v60 >= 1)
  {
    v23 = 0;
    v24 = *(v11 + 8);
    v25 = *v24;
    v26 = 4 * v5 * v5;
    v27 = 4 * v5;
    v28 = 4 * v5 + 4;
    do
    {
      v29 = v23 + 1;
      v30 = v24[v23 + 1];
      if (v25 < v30)
      {
        v31 = *(v11 + 16);
        v32 = *(a1 + 4);
        v33 = *(v11 + 32) + v26 * v25;
        do
        {
          v34 = *(v18 + 8 * v25);
          if (v34 >= 0)
          {
            v35 = *(v18 + 8 * v25);
          }

          else
          {
            v35 = -v34;
          }

          if (v23 == *(v31 + 4 * v25))
          {
            if ((*(a1 + 24) & 2) != 0)
            {
              if (v5)
              {
                v53 = 0;
                if (((v34 & 0x4000000000000000) != 0) ^ __OFSUB__(v34, -v34) | (v34 == -v34))
                {
                  v34 = -v34;
                }

                v54 = v32 + v26 * (v34 - 1);
                v55 = v33;
                do
                {
                  v56 = 0;
                  v57 = 0;
                  do
                  {
                    v58 = *(v54 + 4 * v56);
                    *(v55 + 4 * v56) = v58;
                    *(v55 + v57) = v58;
                    v57 += v27;
                    ++v56;
                  }

                  while (v53 + v56 < v5);
                  ++v53;
                  v55 += v28;
                  v54 += v28;
                }

                while (v53 != v5);
              }
            }

            else if (v5)
            {
              v36 = 0;
              if (((v34 & 0x4000000000000000) != 0) ^ __OFSUB__(v34, -v34) | (v34 == -v34))
              {
                v34 = -v34;
              }

              v37 = v32 + v26 * (v34 - 1);
              v38 = v33;
              v39 = v33;
              v40 = 1;
              do
              {
                v41 = 0;
                v42 = v39;
                do
                {
                  v43 = *(v37 + 4 * v41);
                  *v42 = v43;
                  *(v38 + 4 * v41++) = v43;
                  v42 = (v42 + v27);
                }

                while (v40 != v41);
                ++v36;
                ++v40;
                ++v39;
                v38 += v27;
                v37 += v27;
              }

              while (v36 != v5);
            }
          }

          else if (v5)
          {
            v44 = 0;
            v45 = 0;
            v46 = v32 + 4 * (v35 - 1) * v6;
            v47 = v33;
            do
            {
              v48 = v5;
              v49 = v45;
              v50 = v44;
              v51 = v47;
              do
              {
                if (v34 >= 0)
                {
                  v52 = v50;
                }

                else
                {
                  v52 = v49;
                }

                *v51++ = *(v46 + 4 * v52);
                ++v50;
                v49 += v5;
                --v48;
              }

              while (v48);
              ++v45;
              v47 = (v47 + v27);
              v44 += v5;
            }

            while (v45 != v5);
          }

          ++v25;
          v33 += v26;
        }

        while (v25 != v30);
      }

      v25 = v30;
      ++v23;
    }

    while (v29 != v60);
  }

  (*(v61 + 32))(v18);
  return v11;
}

uint64_t sub_236766F0C(int a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v18 = a5 + 8 * v17;
  v19 = (v18 + 4 * *(a3 + 184) + 15) & 0xFFFFFFFFFFFFFFF8;
  if (a5 + a6 < v19 || (v14 = (v19 + 4 * v11 * v12 + 7) & 0xFFFFFFFFFFFFFFF8, v16 < v14) || (v121 = 4 * v15 * *(a3 + 176), v127 = ((v14 + v121 + 7) & 0xFFFFFFFFFFFFFFF8), v16 < v127))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a1 != 40)
  {
    if (v16 >= (&v127[4 * *(a3 + 168) + 7] & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_10:
  v127 = 0;
LABEL_11:
  if (v17 < 1)
  {
    return 0;
  }

  v119 = v14;
  v20 = 0;
  v21 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v129 = a5;
  v120 = a1;
  while (1)
  {
    if (a1 == 40)
    {
      v127 = *(*(a4 + 40) + 8 * v20);
    }

    v23 = *(a3 + 96);
    v22 = *(a3 + 104);
    v24 = *(v22 + 8 * (v20 + 1));
    v25 = *(v22 + 8 * v20);
    v26 = *(a3 + 120);
    v27 = *(v26 + 8 * (v20 + 1));
    v28 = *(v26 + 8 * v20);
    v128 = v20 + 1;
    v123 = *(v23 + 4 * v20);
    v124 = *(v23 + 4 * (v20 + 1));
    v29 = *(a2 + 28);
    v30 = *a2;
    if (v24 > v25)
    {
      v31 = 0;
      v32 = *(a3 + 112) + 4 * v25;
      do
      {
        *(v19 + 4 * *(v32 + 4 * v31)) = v31;
        ++v31;
      }

      while (v24 - v25 != v31);
    }

    v33 = v24 - v25;
    v34 = v33;
    v125 = v27 - v28;
    v126 = v33;
    bzero(v127, (v27 - v28) * 4 * v33);
    v35 = *(a3 + 120);
    v36 = *(v35 + 8 * v20);
    v37 = *(v35 + 8 * v128);
    if (v36 < v37)
    {
      v38 = *(a3 + 128);
      v39 = *(a3 + 136);
      if (v29 <= 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = v29;
      }

      v41 = 4 * (v29 * v29);
      v42 = v127;
      do
      {
        v43 = *(v38 + 8 * v36);
        v44 = v43 / v39;
        v45 = v43 % v39;
        if ((v43 / v39))
        {
          v46 = (v44 << 32) - 0x100000000;
          v47 = *(a3 + 104);
          v48 = *(v47 + 8 * v44);
          v49 = v46 >> 29;
          v50 = *(v47 + (v46 >> 29));
          v51 = *(*(a3 + 96) + 4 * v44) - *(*(a3 + 96) + (v46 >> 30));
          v52 = v50 + v45 + v51;
          if (v52 < v48)
          {
            v53 = *(a3 + 112);
            v54 = (*(v129 + v49) + (4 * (v48 - v50) - 4 * v51 + 4) * v45);
            do
            {
              v55 = *v54++;
              *&v42[4 * *(v19 + 4 * *(v53 + 4 * v52++))] = v55;
            }

            while (v52 < v48);
          }
        }

        else
        {
          v56 = v45 / v29;
          v57 = (*(a2 + 1) + 8 * (v45 / v29));
          v58 = *v57;
          v59 = v57[1];
          if ((a2[6] & 0xC) == 4)
          {
            if (v58 < v59)
            {
              v60 = *(a2 + 2);
              v61 = (v56 * v29);
              v62 = v41 * v58;
              do
              {
                v63 = *(v60 + 4 * v58);
                if ((v63 & 0x80000000) == 0 && v63 < v30)
                {
                  v64 = a2[6];
                  v65 = v64 & 2;
                  if ((v56 <= v63 || v65 == 0) && (v56 >= v63 || v65 != 0))
                  {
                    v68 = *(a2 + 4);
                    v69 = v45 % v29;
                    v70 = v45 % v29 * v29;
                    v71 = *(a3 + 200);
                    if (v56 == v63)
                    {
                      if (v71)
                      {
                        v72 = (v71 + v61);
                        v73 = (v19 + 4 * v61);
                        v74 = v40;
                        v75 = v68 + 4 * v70;
                        do
                        {
                          v76 = *v72++;
                          if ((v76 & 1) == 0)
                          {
                            *&v42[4 * *v73] = *(v75 + v62);
                          }

                          ++v73;
                          v75 += 4;
                          --v74;
                        }

                        while (v74);
                      }

                      else if ((v64 & 2) != 0)
                      {
                        v83 = v69;
                        v84 = v68 + 4 * v70 + 4 * v69;
                        do
                        {
                          *&v42[4 * *(v19 + 4 * v61 + 4 * v83++)] = *(v84 + v62);
                          v84 += 4;
                        }

                        while (v83 < v29);
                      }

                      else if ((v69 & 0x80000000) == 0)
                      {
                        v88 = (v69 + 1);
                        v89 = v68 + 4 * v70;
                        v90 = (v19 + 4 * v61);
                        do
                        {
                          v91 = *v90++;
                          *&v42[4 * v91] = *(v89 + v62);
                          v89 += 4;
                          --v88;
                        }

                        while (v88);
                      }
                    }

                    else
                    {
                      v77 = (v63 * v29);
                      v78 = (v19 + 4 * v77);
                      if (v71)
                      {
                        v79 = (v71 + v77);
                        v80 = (v68 + v62 + 4 * v70);
                        v81 = v40;
                        do
                        {
                          v82 = *v79++;
                          if ((v82 & 1) == 0)
                          {
                            *&v42[4 * *v78] = *v80;
                          }

                          ++v78;
                          ++v80;
                          --v81;
                        }

                        while (v81);
                      }

                      else
                      {
                        v85 = v68 + 4 * v70;
                        v86 = v40;
                        do
                        {
                          v87 = *v78++;
                          *&v42[4 * v87] = *(v85 + v62);
                          v85 += 4;
                          --v86;
                        }

                        while (v86);
                      }
                    }
                  }
                }

                ++v58;
                v62 += v41;
              }

              while (v58 != v59);
            }
          }

          else if (v58 < v59)
          {
            v92 = *(a2 + 2);
            v93 = v41 * v58 + 4 * v29 * (v45 % v29);
            do
            {
              v94 = *(v92 + 4 * v58);
              if ((v94 & 0x80000000) == 0 && v94 < v30)
              {
                v95 = *(a2 + 4);
                v96 = *(a3 + 200);
                v97 = (v94 * v29);
                v98 = (v19 + 4 * v97);
                if (v96)
                {
                  v99 = (v96 + v97);
                  v100 = (v95 + v93);
                  v101 = v40;
                  do
                  {
                    v102 = *v99++;
                    if ((v102 & 1) == 0)
                    {
                      *&v42[4 * *v98] = *v100;
                    }

                    ++v98;
                    ++v100;
                    --v101;
                  }

                  while (v101);
                }

                else
                {
                  v103 = v40;
                  do
                  {
                    v104 = *v98++;
                    *&v42[4 * v104] = *(v95 + v93);
                    v95 += 4;
                    --v103;
                  }

                  while (v103);
                }
              }

              ++v58;
              v93 += v41;
            }

            while (v58 != v59);
          }
        }

        v42 += 4 * v34;
        ++v36;
      }

      while (v36 != v37);
    }

    v105 = *(a3 + 152);
    v106 = *(v105 + 4 * v128);
    if (v106 > *(v105 + 4 * v20))
    {
      do
      {
        v107 = v106 - 1;
        v108 = *(*(a3 + 160) + 4 * v106 - 4);
        v109 = *(*(a3 + 96) + 4 * (v108 + 1)) - *(*(a3 + 96) + 4 * v108);
        v110 = *(*(a3 + 104) + 8 * (v108 + 1)) - *(*(a3 + 104) + 8 * v108);
        v111 = *(*(a3 + 120) + 8 * (v108 + 1)) - *(*(a3 + 120) + 8 * v108);
        if (v110 < v111)
        {
          v111 = *(*(a3 + 104) + 8 * (v108 + 1)) - *(*(a3 + 104) + 8 * v108);
        }

        *(v129 + 8 * v108) = 0;
        v21 += 4 * (v111 - v109) * (v109 - v110);
        v106 = v107;
      }

      while (v107 > *(*(a3 + 152) + 4 * v20));
    }

    v112 = v124 - v123;
    a1 = v120;
    if (v126 <= v124 - v123)
    {
      v114 = v21;
      v21 = 0;
    }

    else
    {
      v113 = v126 >= v125 ? v125 : v126;
      *(v129 + 8 * v20) = v21;
      v114 = v21 + 4 * (v113 - v112) * (v126 - (v124 - v123));
    }

    v115 = *(*(a3 + 104) + 8 * v20);
    v116 = *(a3 + 144) + 4 * v115;
    v117 = v120 == 40 ? sub_2366F33E8(v125, v126, v112, v116, v127, v126, 0, v34, *(a4 + 56) + 4 * v115, v21, v119, v121) : sub_2366F33E8(v125, v126, v112, v116, v127, v126, *(*(a4 + 40) + 8 * v20), v34, 0, v21, v119, v121);
    if (v117)
    {
      break;
    }

    ++v20;
    v21 = v114;
    if (v128 >= *(a3 + 88))
    {
      return 0;
    }
  }

  return 4294967294;
}

SparseMatrix_Double *__cdecl _SparseConvertFromOpaque_Double(SparseMatrix_Double *__return_ptr retstr, sparse_matrix_double matrix)
{
  if (*(matrix + 8) && sparse_commit(matrix))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236712E9C();
    }

    goto LABEL_73;
  }

  v4 = *(matrix + 7);
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236713044();
    }

LABEL_73:
    _SparseTrap();
  }

  v5 = *v4;
  if (*v4 > 1)
  {
    if (v5 != 4)
    {
      if (v5 == 2)
      {
        v20 = *(matrix + 1);
        if (!(v20 ^ v20 | (v20 >> 63)))
        {
          v21 = *(matrix + 2);
          if (!(v21 ^ v21 | (v21 >> 63)))
          {
            v22 = *(*(v4 + 24) + 8 * v21);
            v23 = (v21 << 32) + 0x100000000;
            result = malloc_type_malloc(4 * v22 + (v23 >> 29) + 8 * v22, 0x100004000313F17uLL);
            v11 = (&result->structure.rowCount + (v23 >> 29));
            v12 = &v11[v22];
            if ((v21 & 0x80000000) == 0)
            {
              v24 = 0;
              v25 = *(matrix + 7);
              do
              {
                *(&result->structure.rowCount + v24) = *(*(v25 + 24) + 8 * v24);
                ++v24;
              }

              while (v21 + 1 != v24);
            }

            if (v22 >= 1)
            {
              v26 = 0;
              v27 = *(matrix + 7);
              v28 = (&result->structure.rowCount + (v23 >> 29));
              do
              {
                v12[v26] = *(*(v27 + 16) + 8 * v26);
                *v28++ = *(*(v27 + 8) + 8 * v26++);
              }

              while (v22 != v26);
            }

            v29 = *matrix - 1;
            if (v29 >= 8)
            {
              v19 = 0x8000;
            }

            else
            {
              v19 = word_23681FC10[v29];
            }

            retstr->structure.rowCount = v20;
            retstr->structure.columnCount = v21;
            goto LABEL_78;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_73;
          }

LABEL_72:
          sub_236712F54();
          goto LABEL_73;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_73;
        }

LABEL_64:
        sub_236712EE4();
        goto LABEL_73;
      }

      goto LABEL_33;
    }

    v41 = *(matrix + 1);
    if (v41 ^ v41 | (v41 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      goto LABEL_64;
    }

    v42 = *(matrix + 2);
    if (v42 ^ v42 | (v42 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    v43 = ((v42 << 32) + 0x100000000) >> 29;
    v44 = malloc_type_malloc(v43, 0x100004000313F17uLL);
    v45 = v44;
    if (v42 < 1)
    {
      v48 = 0;
    }

    else
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      do
      {
        *(v44 + v47) = v48;
        if (v41 >= 1)
        {
          v49 = (*(*(matrix + 7) + 8) + v46);
          v50 = v41;
          do
          {
            v51 = *v49++;
            if (v51 != 0.0)
            {
              ++v48;
            }

            --v50;
          }

          while (v50);
        }

        ++v47;
        v46 += 8 * v41;
      }

      while (v47 != (v42 & 0x7FFFFFFF));
    }

    *(v44 + v42) = v48;
    v52 = malloc_type_malloc(v43 + 4 * v48 + 8 * v48, 0x100004000313F17uLL);
    memcpy(v52, v45, v43);
    free(v45);
    v11 = &v52[v43];
    v12 = &v52[8 * v48 + v43];
    if (v42 >= 1)
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      do
      {
        if (v41 >= 1)
        {
          v63 = 0;
          v64 = *(matrix + 7);
          result = v41;
          v65 = v60;
          do
          {
            if (*(*(v64 + 8) + v65) != 0.0)
            {
              v12[v62] = v63;
              v11[v62++] = *(*(v64 + 8) + v65);
            }

            ++v63;
            v65 += 8;
            result = (result - 1);
          }

          while (result);
        }

        ++v61;
        v60 += 8 * v41;
      }

      while (v61 != (v42 & 0x7FFFFFFF));
    }

    v66 = *matrix - 1;
    if (v66 >= 8)
    {
      v19 = 0x8000;
    }

    else
    {
      v19 = word_23681FC10[v66];
    }

    retstr->structure.rowCount = v41;
    retstr->structure.columnCount = v42;
LABEL_105:
    retstr->structure.columnStarts = v52;
    goto LABEL_106;
  }

  if (v5 == -4)
  {
    v30 = *(matrix + 1);
    if (v30 ^ v30 | (v30 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      goto LABEL_64;
    }

    v31 = *(matrix + 2);
    if (v31 ^ v31 | (v31 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    v32 = ((v30 << 32) + 0x100000000) >> 29;
    v33 = malloc_type_malloc(v32, 0x100004000313F17uLL);
    v34 = v33;
    if (v30 < 1)
    {
      v37 = 0;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      do
      {
        *(v33 + v36) = v37;
        if (v31 >= 1)
        {
          v38 = (*(*(matrix + 7) + 8) + v35);
          v39 = v31;
          do
          {
            v40 = *v38++;
            if (v40 != 0.0)
            {
              ++v37;
            }

            --v39;
          }

          while (v39);
        }

        ++v36;
        v35 += 8 * v31;
      }

      while (v36 != (v30 & 0x7FFFFFFF));
    }

    *(v33 + v30) = v37;
    v52 = malloc_type_malloc(v32 + 4 * v37 + 8 * v37, 0x100004000313F17uLL);
    memcpy(v52, v34, v32);
    free(v34);
    v11 = &v52[v32];
    v12 = &v52[8 * v37 + v32];
    if (v30 >= 1)
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
      do
      {
        if (v31 >= 1)
        {
          v56 = 0;
          v57 = *(matrix + 7);
          result = v31;
          v58 = v53;
          do
          {
            if (*(*(v57 + 8) + v58) != 0.0)
            {
              v12[v55] = v56;
              v11[v55++] = *(*(v57 + 8) + v58);
            }

            ++v56;
            v58 += 8;
            result = (result - 1);
          }

          while (result);
        }

        ++v54;
        v53 += 8 * v31;
      }

      while (v54 != (v30 & 0x7FFFFFFF));
    }

    v59 = *matrix - 1;
    if (v59 >= 8)
    {
      v19 = -32767;
    }

    else
    {
      v19 = word_23681FC20[v59];
    }

    retstr->structure.rowCount = v31;
    retstr->structure.columnCount = v30;
    goto LABEL_105;
  }

  if (v5 != -2)
  {
LABEL_33:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236712FC4(v5);
    }

    goto LABEL_73;
  }

  v6 = *(matrix + 1);
  if (v6 ^ v6 | (v6 >> 63))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    goto LABEL_64;
  }

  v7 = *(matrix + 2);
  if (v7 ^ v7 | (v7 >> 63))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v8 = *(*(v4 + 24) + 8 * v6);
  v9 = (v6 << 32) + 0x100000000;
  result = malloc_type_malloc(4 * v8 + (v9 >> 29) + 8 * v8, 0x100004000313F17uLL);
  v11 = (&result->structure.rowCount + (v9 >> 29));
  v12 = &v11[v8];
  if ((v6 & 0x80000000) == 0)
  {
    v13 = 0;
    v14 = *(matrix + 7);
    do
    {
      *(&result->structure.rowCount + v13) = *(*(v14 + 24) + 8 * v13);
      ++v13;
    }

    while (v6 + 1 != v13);
  }

  if (v8 >= 1)
  {
    v15 = 0;
    v16 = *(matrix + 7);
    v17 = (&result->structure.rowCount + (v9 >> 29));
    do
    {
      v12[v15] = *(*(v16 + 16) + 8 * v15);
      *v17++ = *(*(v16 + 8) + 8 * v15++);
    }

    while (v8 != v15);
  }

  v18 = *matrix - 1;
  if (v18 >= 8)
  {
    v19 = -32767;
  }

  else
  {
    v19 = word_23681FC20[v18];
  }

  retstr->structure.rowCount = v7;
  retstr->structure.columnCount = v6;
LABEL_78:
  retstr->structure.columnStarts = &result->structure.rowCount;
LABEL_106:
  retstr->structure.rowIndices = v12;
  *&retstr->structure.attributes = 0;
  retstr->structure.attributes = v19;
  *(&retstr->structure.blockSize + 2) = 1;
  retstr->data = v11;
  return result;
}

uint64_t sub_236767CA0(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, int *a5, int *a6, uint64_t a7, _DWORD *a8, _DWORD *a9, _DWORD *a10)
{
  v10 = a10;
  v11 = &a10[5 * result + 11];
  v12 = (&a10[result + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v11 < v12 || (v13 = result, v14 = 4 * result, v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8, v11 < v15) || (v16 = (v15 + 4 * result + 11) & 0xFFFFFFFFFFFFFFF8, v11 < v16) || (v17 = (v16 + v14 + 7) & 0xFFFFFFFFFFFFFFF8, v11 < v17) || v11 < ((v17 + v14 + 7) & 0xFFFFFFFFFFFFFFF8))
  {
    __break(1u);
  }

  else
  {
    *(v15 + 4 * result) = -1;
    v18 = (result - 1);
    if (result < 1)
    {
      result = 0;
      *a8 = 0;
    }

    else
    {
      v22 = (result - 1);
      do
      {
        if (a3)
        {
          v23 = *(a3 + 4 * a5[v22]);
        }

        else
        {
          v23 = 1;
        }

        *(v17 + 4 * v22) = v23;
        a10[v22] = v22;
        *(v12 + 4 * v22) = -1;
        v24 = a6[v22];
        if (v24 == -1)
        {
          v24 = result;
        }

        *(v16 + 4 * v22) = *(v15 + 4 * v24);
        *(v15 + 4 * v24) = v22;
        *(v15 + 4 * v22) = -1;
        v25 = v22-- <= 0;
      }

      while (!v25);
      v58 = v15;
      v26 = (result - 1);
      v59 = (v15 + 4 * result + 11) & 0xFFFFFFFFFFFFFFF8;
      if (a3)
      {
        v28 = v17;
        v29 = a10;
        v30 = a5;
        v31 = result - 1;
        v32 = result;
        do
        {
          if (!*v28)
          {
            *v28 = -1;
            *v29 = -1;
            *(a4 + 4 * *v30) = v31--;
          }

          ++v30;
          ++v29;
          ++v28;
          --v32;
        }

        while (v32);
        v26 = (result - 1);
      }

      do
      {
        if (*(v17 + 4 * v26) != -1)
        {
          v33 = *(v58 + 4 * v26);
          while (v33 != -1)
          {
            if (*(a7 + 4 * v33) - *(v17 + 4 * v33) == *(a7 + 4 * v26))
            {
              v33 = sub_236768070(v33, v26, a10, v12, v58, v16, a7, v17);
              v16 = v59;
            }

            else
            {
              v33 = *(v16 + 4 * v33);
            }
          }
        }

        v25 = v26-- <= 0;
      }

      while (!v25);
      v53 = v13;
      v55 = a4;
      v56 = a5;
      if ((*a9 & 0x80000000) == 0)
      {
        if (a3)
        {
          v34 = 1;
        }

        else
        {
          v34 = a2;
        }

        do
        {
          if (*(v17 + 4 * v18) != -1)
          {
            v35 = *(v58 + 4 * v18);
            while (v35 != -1)
            {
              v36 = v12;
              v37 = v10;
              v38 = v35;
              v39 = *(v17 + 4 * v35);
              v40 = sub_236768138(v34, *(a7 + 4 * v35), v39);
              v41 = *(a7 + 4 * v18);
              v42 = *(v17 + 4 * v18);
              v43 = v40 + sub_236768138(v34, v41, v42);
              if (sub_236768138(v34, v41 + v39, v42 + v39) >= v43)
              {
                v35 = *(v59 + 4 * v38);
                v10 = v37;
                v12 = v36;
              }

              else
              {
                v10 = v37;
                v12 = v36;
                v35 = sub_236768070(v38, v18, v37, v36, v58, v59, a7, v17);
              }
            }
          }

          v25 = v18-- <= 0;
        }

        while (!v25);
      }

      v44 = 0;
      v45 = 0;
      result = 0;
      v46 = a6;
      do
      {
        if (v10[v44] != -1)
        {
          a8[result] = v45;
          v47 = v10[v44];
          *(a7 + 4 * result) = *(a7 + 4 * v47);
          a6[result] = a6[v47];
          for (i = v10[v44]; i != -1; i = *(v12 + 4 * i))
          {
            v10[i] = result;
            *(v55 + 4 * v56[i]) = v45++;
          }

          result = (result + 1);
        }

        ++v44;
      }

      while (v44 != v53);
      v49 = 0;
      a8[result] = v45;
      do
      {
        v56[*(v55 + 4 * v49)] = v49;
        ++v49;
      }

      while (v53 != v49);
      if (result >= 1)
      {
        v50 = result;
        do
        {
          v51 = *v46;
          if (v51 != -1)
          {
            *v46 = v10[v51];
          }

          ++v46;
          --v50;
        }

        while (v50);
      }
    }
  }

  return result;
}

uint64_t sub_236768070(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a3 + 4 * a2);
  if (v8 == -1)
  {
    v10 = -1;
  }

  else
  {
    do
    {
      v9 = v8;
      v8 = *(a4 + 4 * v8);
    }

    while (v8 != -1);
    v10 = v9;
  }

  *(a4 + 4 * v10) = *(a3 + 4 * a1);
  *(a3 + 4 * a1) = -1;
  v11 = *(a6 + 4 * a1);
  v12 = v11;
  if (v11 == -1)
  {
    v12 = *(a5 + 4 * a1);
  }

  v13 = (a5 + 4 * a2);
  v14 = *v13;
  if (*v13 == a1)
  {
    *v13 = v11;
    v14 = v11;
  }

  while (v14 != -1)
  {
    v13 = (a6 + 4 * v14);
    v14 = *v13;
    if (*v13 == a1)
    {
      v14 = *(a6 + 4 * a1);
      *v13 = v14;
    }
  }

  *v13 = *(a5 + 4 * a1);
  *(a5 + 4 * a1) = -1;
  *(a7 + 4 * a2) += *(a8 + 4 * a1);
  *(a8 + 4 * a2) += *(a8 + 4 * a1);
  *(a8 + 4 * a1) = -1;
  return v12;
}

float sub_236768138(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 * a3;
  v4 = ((a2 - a3) * a1);
  v5 = ((v4 * v4) * v3) * 0.5 + ((v3 * v3) * v3) / 3.0 + ((v3 * v4) * (v3 + 1)) * 0.5;
  v6 = log2(v3) / 10.0 + 0.1;
  return ((v4 * 4.0) * v4) + ((v5 / fminf(v6, 1.0)) + 256.0);
}

uint64_t sub_236768200(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int *a5, int *a6, uint64_t a7, _DWORD *a8, _DWORD *a9, _DWORD *a10)
{
  v10 = a10;
  v11 = *result;
  v12 = *(result + 4);
  v13 = &a10[6 * v12 + 15 + v11];
  v14 = (&a10[v12 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v13 < v14 || (v15 = 4 * v12, v85 = (&a10[v12 + 1] + 3) & 0xFFFFFFFFFFFFFFF8, v16 = (v14 + 4 * v12 + 7) & 0xFFFFFFFFFFFFFFF8, v13 < v16) || (v17 = (v16 + 4 * v12 + 11) & 0xFFFFFFFFFFFFFFF8, v13 < v17) || (v18 = (v17 + v15 + 7) & 0xFFFFFFFFFFFFFFF8, v13 < v18) || (v19 = (v18 + v15 + 7) & 0xFFFFFFFFFFFFFFF8, v13 < v19) || (v20 = ((v18 + v15 + 7) & 0xFFFFFFFFFFFFFFF8), v21 = ((v19 + v15 + 7) & 0xFFFFFFFFFFFFFFF8), v13 < v21) || v13 < ((&v21[v11 + 1] + 3) & 0xFFFFFFFFFFFFFFF8))
  {
    __break(1u);
  }

  else
  {
    v25 = result;
    v80 = *(result + 28);
    *(v16 + 4 * v12) = -1;
    if (v12 >= 1)
    {
      v26 = (v12 - 1);
      do
      {
        if (a3)
        {
          v27 = *(a3 + 4 * a5[v26]);
        }

        else
        {
          v27 = 1;
        }

        *(v18 + 4 * v26) = v27;
        a10[v26] = v26;
        *(v85 + 4 * v26) = -1;
        v28 = a6[v26];
        if (v28 == -1)
        {
          v28 = v12;
        }

        *(v17 + 4 * v26) = *(v16 + 4 * v28);
        *(v16 + 4 * v28) = v26;
        *(v16 + 4 * v26) = -1;
        v29 = v26-- <= 0;
      }

      while (!v29);
    }

    v89 = v16;
    v92 = (v16 + 4 * v12 + 11) & 0xFFFFFFFFFFFFFFF8;
    v90 = (v17 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v11 >= 1)
    {
      memset(v21, 255, 4 * v11);
      v15 = 4 * v12;
      v18 = v90;
    }

    if (v12 >= 1)
    {
      v30 = (v12 - 1);
      do
      {
        if (*(v18 + 4 * v30))
        {
          v31 = (*(v25 + 8) + 8 * a5[v30]);
          v33 = *v31;
          v32 = v31[1];
          v29 = v32 <= v33;
          v34 = v32 - v33;
          if (!v29)
          {
            v35 = (*(v25 + 16) + 4 * v33);
            do
            {
              v37 = *v35++;
              v36 = v37;
              if ((v37 & 0x80000000) == 0 && v36 < *v25)
              {
                v21[v36] = v30;
              }

              --v34;
            }

            while (v34);
          }
        }

        v29 = v30-- <= 0;
      }

      while (!v29);
    }

    v38 = v15;
    bzero(v20, v15);
    v39 = (&a10[v12 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
    if (v11 >= 1)
    {
      v40 = a2;
      do
      {
        v42 = *v21++;
        v41 = v42;
        if (v42 != -1)
        {
          if (a2)
          {
            v43 = *v40;
          }

          else
          {
            v43 = 1;
          }

          *&v20[4 * v41] += v43;
        }

        ++v40;
        --v11;
      }

      while (v11);
    }

    if (v12 < 1)
    {
      result = 0;
      *a8 = 0;
    }

    else
    {
      v44 = 0;
      v45 = v92;
      v46 = v90;
      do
      {
        v47 = a6[v44 / 4];
        if (v47 != -1)
        {
          v48 = *&v20[v44];
          if (v48 >= *(a7 + v44))
          {
            v48 = *(a7 + v44);
          }

          *&v20[4 * v47] += v48 - *(v90 + v44);
        }

        v44 += 4;
      }

      while (v38 != v44);
      if (a3)
      {
        v49 = v12;
        v50 = v90;
        v51 = a10;
        v52 = a5;
        v53 = v12 - 1;
        do
        {
          if (!*v50)
          {
            *v50 = -1;
            *v51 = -1;
            *(a4 + 4 * *v52) = v53--;
          }

          ++v52;
          ++v51;
          ++v50;
          --v49;
        }

        while (v49);
      }

      v54 = (v12 - 1);
      do
      {
        if (*(v46 + 4 * v54) != -1)
        {
          v55 = *(v89 + 4 * v54);
          while (v55 != -1)
          {
            if (*(a7 + 4 * v55) - *(v46 + 4 * v55) == *(a7 + 4 * v54))
            {
              v55 = sub_2367687B4(v55, v54, a10, v85, v89, v92, v20, a7, v46);
              v46 = v90;
              v45 = v92;
            }

            else
            {
              v55 = *(v45 + 4 * v55);
            }
          }
        }

        v29 = v54-- <= 0;
      }

      while (!v29);
      v78 = v12;
      v79 = a5;
      v82 = a6;
      v56 = (v12 - 1);
      if ((*a9 & 0x80000000) == 0)
      {
        v57 = v20;
        v58 = v80;
        if (a3)
        {
          v58 = 1;
        }

        v88 = v58;
        v86 = a7;
        do
        {
          if (*(v46 + 4 * v56) != -1)
          {
            v59 = *(v89 + 4 * v56);
            while (v59 != -1)
            {
              v91 = v59;
              v60 = *(v57 + 4 * v59);
              v61 = *(a7 + 4 * v59);
              if (v60 >= v61)
              {
                v62 = *(a7 + 4 * v59);
              }

              else
              {
                v62 = *(v57 + 4 * v59);
              }

              v63 = *(v90 + 4 * v59);
              v64 = sub_2367688A8(v88, v60, v61, v63);
              v65 = *(v57 + 4 * v56);
              v66 = *(a7 + 4 * v56);
              v67 = v56;
              v68 = *(v90 + 4 * v56);
              v69 = v64 + sub_2367688A8(v88, v65, v66, v68);
              if (sub_2367688A8(v88, v60 - v62 + v63 + v65, v66 + v63, v68 + v63) >= v69)
              {
                v59 = *(v92 + 4 * v91);
                v10 = a10;
                a7 = v86;
              }

              else
              {
                v10 = a10;
                a7 = v86;
                v59 = sub_2367687B4(v91, v67, a10, v85, v89, v92, v57, v86, v90);
              }

              v56 = v67;
            }
          }

          v29 = v56-- <= 0;
          v39 = v85;
          v46 = v90;
        }

        while (!v29);
      }

      v70 = 0;
      v71 = 0;
      result = 0;
      v72 = v82;
      do
      {
        if (v10[v70] != -1)
        {
          a8[result] = v71;
          v73 = v10[v70];
          *(a7 + 4 * result) = *(a7 + 4 * v73);
          v82[result] = v82[v73];
          for (i = v10[v70]; i != -1; i = *(v39 + 4 * i))
          {
            v10[i] = result;
            *(a4 + 4 * v79[i]) = v71++;
          }

          result = (result + 1);
        }

        ++v70;
      }

      while (v70 != v78);
      v75 = 0;
      a8[result] = v71;
      do
      {
        v79[*(a4 + 4 * v75)] = v75;
        ++v75;
      }

      while (v78 != v75);
      if (result >= 1)
      {
        v76 = result;
        do
        {
          v77 = *v72;
          if (v77 != -1)
          {
            *v72 = v10[v77];
          }

          ++v72;
          --v76;
        }

        while (v76);
      }
    }
  }

  return result;
}

uint64_t sub_2367687B4(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a3 + 4 * a2);
  if (v9 == -1)
  {
    v11 = -1;
  }

  else
  {
    do
    {
      v10 = v9;
      v9 = *(a4 + 4 * v9);
    }

    while (v9 != -1);
    v11 = v10;
  }

  *(a4 + 4 * v11) = *(a3 + 4 * a1);
  *(a3 + 4 * a1) = -1;
  v12 = *(a6 + 4 * a1);
  v13 = v12;
  if (v12 == -1)
  {
    v13 = *(a5 + 4 * a1);
  }

  v14 = (a5 + 4 * a2);
  v15 = *v14;
  if (*v14 == a1)
  {
    *v14 = v12;
    v15 = v12;
  }

  while (v15 != -1)
  {
    v14 = (a6 + 4 * v15);
    v15 = *v14;
    if (*v14 == a1)
    {
      v15 = *(a6 + 4 * a1);
      *v14 = v15;
    }
  }

  *v14 = *(a5 + 4 * a1);
  *(a5 + 4 * a1) = -1;
  v16 = *(a7 + 4 * a1);
  v17 = *(a8 + 4 * a1);
  if (v16 < v17)
  {
    v17 = *(a7 + 4 * a1);
  }

  *(a7 + 4 * a2) += v16 - v17 + *(a9 + 4 * a1);
  *(a8 + 4 * a2) += *(a9 + 4 * a1);
  *(a9 + 4 * a2) += *(a9 + 4 * a1);
  *(a9 + 4 * a1) = -1;
  return v13;
}

float sub_2367688A8(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 * a2;
  v5 = a1 * a3;
  if (v4 >= v5)
  {
    v6 = a1 * a3;
  }

  else
  {
    v6 = a1 * a2;
  }

  v7 = v6;
  v8 = a1 * a4;
  if (v4 <= v5)
  {
    v4 = a1 * a3;
  }

  v9 = v7 - v8;
  v10 = (v5 - v8);
  v11 = (((v4 + v4) * v7) * v7) + (((v7 + v7) * v7) * v7) / -3.0;
  v12 = log2(v5) / 10.0 + 0.1;
  return ((v9 * 4.0) * v10) + ((v11 / fminf(v12, 1.0)) + 256.0);
}

char *sub_236768978(char *result, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *__b)
{
  v15 = result;
  if (__b)
  {
    v16 = *result;
    if (v16 >= 1)
    {
      result = memset(__b, 255, 4 * v16);
    }
  }

  v17 = *(v15 + 4);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = a3 != 0;
    v20 = a2 != 0;
    if (__b)
    {
      v19 = 0;
    }

    else
    {
      v20 = 0;
    }

    do
    {
      *(a6 + 4 * v18) = -1;
      *(a7 + 4 * v18) = -1;
      v21 = *(a5 + 4 * v18);
      if (!a3 || *(a3 + 4 * v21))
      {
        v22 = (*(v15 + 8) + 8 * v21);
        v23 = *v22;
        v24 = v22[1];
        if (v23 < v24)
        {
          v25 = *(v15 + 16);
          do
          {
            v26 = *(v25 + 4 * v23);
            if ((v26 & 0x80000000) == 0 && v26 < *v15)
            {
              if (v20)
              {
                if (*(a2 + 4 * v26))
                {
                  v27 = &__b[4 * v26];
                  v28 = *v27;
                  goto LABEL_24;
                }
              }

              else if (!v19 || *(a3 + 4 * v26))
              {
                v27 = &__b[4 * v26];
                result = __b ? __b : a4;
                v28 = *&result[4 * v26];
                if (__b || (result = v28, v18 > v28))
                {
LABEL_24:
                  while (!__b || v28 != -1)
                  {
                    v29 = *(a7 + 4 * v28);
                    if (v18 == v29)
                    {
                      goto LABEL_29;
                    }

                    result = v28;
                    *(a7 + 4 * v28) = v18;
                    v28 = v29;
                    if (v29 == -1)
                    {
                      *(a6 + 4 * result) = v18;
                      *(a7 + 4 * result) = v18;
LABEL_29:
                      if (!__b)
                      {
                        goto LABEL_31;
                      }

                      break;
                    }
                  }

                  *v27 = v18;
                }
              }
            }

LABEL_31:
            ++v23;
          }

          while (v23 != v24);
        }
      }

      ++v18;
    }

    while (v18 != v17);
  }

  return result;
}

void _SparseConvertFromOpaque_Complex_Float(void *A@<X0>, uint64_t a2@<X8>)
{
  if (A[8] && sparse_commit(A))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236712E9C();
    }

    goto LABEL_75;
  }

  v4 = A[7];
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236713044();
    }

LABEL_75:
    _SparseTrap();
  }

  v5 = *v4;
  if (*v4 > 1)
  {
    if (v5 != 4)
    {
      if (v5 == 2)
      {
        v20 = A[1];
        if (!(v20 ^ v20 | (v20 >> 63)))
        {
          v21 = A[2];
          if (!(v21 ^ v21 | (v21 >> 63)))
          {
            v22 = *(*(v4 + 24) + 8 * v21);
            v23 = (v21 << 32) + 0x100000000;
            v10 = malloc_type_malloc(4 * v22 + (v23 >> 29) + 8 * v22, 0x100004000313F17uLL);
            v11 = v10 + (v23 >> 29);
            v12 = &v11[8 * v22];
            if ((v21 & 0x80000000) == 0)
            {
              v24 = 0;
              v25 = A[7];
              do
              {
                v10[v24] = *(*(v25 + 24) + 8 * v24);
                ++v24;
              }

              while (v21 + 1 != v24);
            }

            if (v22 >= 1)
            {
              v26 = 0;
              v27 = (v10 + (v23 >> 29));
              do
              {
                v28 = A[7];
                *(v12 + 4 * v26) = *(*(v28 + 16) + 8 * v26);
                *v27++ = *(*(v28 + 8) + 8 * v26++);
              }

              while (v22 != v26);
            }

            v29 = *A - 1;
            if (v29 >= 8)
            {
              v19 = 0x8000;
            }

            else
            {
              v19 = word_23681FC10[v29];
            }

            *a2 = v20;
            *(a2 + 4) = v21;
            goto LABEL_80;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_75;
          }

LABEL_74:
          sub_236712F54();
          goto LABEL_75;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_75;
        }

LABEL_66:
        sub_236712EE4();
        goto LABEL_75;
      }

      goto LABEL_33;
    }

    v41 = A[1];
    if (v41 ^ v41 | (v41 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }

      goto LABEL_66;
    }

    v42 = A[2];
    if (v42 ^ v42 | (v42 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }

    v43 = ((v42 << 32) + 0x100000000) >> 29;
    v44 = malloc_type_malloc(v43, 0x100004000313F17uLL);
    v45 = v44;
    if (v42 < 1)
    {
      v47 = 0;
    }

    else
    {
      v46 = 0;
      v47 = 0;
      v48 = 4;
      do
      {
        *(v44 + v46) = v47;
        if (v41 >= 1)
        {
          v49 = (*(A[7] + 8) + v48);
          v50 = v41;
          do
          {
            v51 = *v49 != 0.0 || *(v49 - 1) != 0.0;
            v47 += v51;
            v49 += 2;
            --v50;
          }

          while (v50);
        }

        ++v46;
        v48 += 8 * v41;
      }

      while (v46 != (v42 & 0x7FFFFFFF));
    }

    *(v44 + v42) = v47;
    v52 = malloc_type_malloc(v43 + 4 * v47 + 8 * v47, 0x100004000313F17uLL);
    memcpy(v52, v45, v43);
    free(v45);
    v11 = &v52[v43];
    v12 = &v52[8 * v47 + v43];
    if (v42 >= 1)
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      do
      {
        if (v41 >= 1)
        {
          v65 = 0;
          v66 = v41;
          v67 = v62;
          do
          {
            v68 = A[7];
            v69 = (*(v68 + 8) + v67);
            if (*v69 != 0.0 || v69[1] != 0.0)
            {
              *(v12 + 4 * v64) = v65;
              *&v11[8 * v64++] = *(*(v68 + 8) + v67);
            }

            ++v65;
            v67 += 8;
            --v66;
          }

          while (v66);
        }

        ++v63;
        v62 += 8 * v41;
      }

      while (v63 != (v42 & 0x7FFFFFFF));
    }

    v70 = *A - 1;
    if (v70 >= 8)
    {
      v19 = 0x8000;
    }

    else
    {
      v19 = word_23681FC10[v70];
    }

    *a2 = v41;
    *(a2 + 4) = v42;
LABEL_109:
    *(a2 + 8) = v52;
    goto LABEL_110;
  }

  if (v5 == -4)
  {
    v30 = A[1];
    if (v30 ^ v30 | (v30 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }

      goto LABEL_66;
    }

    v31 = A[2];
    if (v31 ^ v31 | (v31 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }

    v32 = ((v30 << 32) + 0x100000000) >> 29;
    v33 = malloc_type_malloc(v32, 0x100004000313F17uLL);
    v34 = v33;
    if (v30 < 1)
    {
      v36 = 0;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v37 = 4;
      do
      {
        *(v33 + v35) = v36;
        if (v31 >= 1)
        {
          v38 = (*(A[7] + 8) + v37);
          v39 = v31;
          do
          {
            v40 = *v38 != 0.0 || *(v38 - 1) != 0.0;
            v36 += v40;
            v38 += 2;
            --v39;
          }

          while (v39);
        }

        ++v35;
        v37 += 8 * v31;
      }

      while (v35 != (v30 & 0x7FFFFFFF));
    }

    *(v33 + v30) = v36;
    v52 = malloc_type_malloc(v32 + 4 * v36 + 8 * v36, 0x100004000313F17uLL);
    memcpy(v52, v34, v32);
    free(v34);
    v11 = &v52[v32];
    v12 = &v52[8 * v36 + v32];
    if (v30 >= 1)
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
      do
      {
        if (v31 >= 1)
        {
          v56 = 0;
          v57 = v31;
          v58 = v53;
          do
          {
            v59 = A[7];
            v60 = (*(v59 + 8) + v58);
            if (*v60 != 0.0 || v60[1] != 0.0)
            {
              *(v12 + 4 * v55) = v56;
              *&v11[8 * v55++] = *(*(v59 + 8) + v58);
            }

            ++v56;
            v58 += 8;
            --v57;
          }

          while (v57);
        }

        ++v54;
        v53 += 8 * v31;
      }

      while (v54 != (v30 & 0x7FFFFFFF));
    }

    v61 = *A - 1;
    if (v61 >= 8)
    {
      v19 = -32767;
    }

    else
    {
      v19 = word_23681FC20[v61];
    }

    *a2 = v31;
    *(a2 + 4) = v30;
    goto LABEL_109;
  }

  if (v5 != -2)
  {
LABEL_33:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236712FC4(v5);
    }

    goto LABEL_75;
  }

  v6 = A[1];
  if (v6 ^ v6 | (v6 >> 63))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    goto LABEL_66;
  }

  v7 = A[2];
  if (v7 ^ v7 | (v7 >> 63))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v8 = *(*(v4 + 24) + 8 * v6);
  v9 = (v6 << 32) + 0x100000000;
  v10 = malloc_type_malloc(4 * v8 + (v9 >> 29) + 8 * v8, 0x100004000313F17uLL);
  v11 = v10 + (v9 >> 29);
  v12 = &v11[8 * v8];
  if ((v6 & 0x80000000) == 0)
  {
    v13 = 0;
    v14 = A[7];
    do
    {
      v10[v13] = *(*(v14 + 24) + 8 * v13);
      ++v13;
    }

    while (v6 + 1 != v13);
  }

  if (v8 >= 1)
  {
    v15 = 0;
    v16 = (v10 + (v9 >> 29));
    do
    {
      v17 = A[7];
      *(v12 + 4 * v15) = *(*(v17 + 16) + 8 * v15);
      *v16++ = *(*(v17 + 8) + 8 * v15++);
    }

    while (v8 != v15);
  }

  v18 = *A - 1;
  if (v18 >= 8)
  {
    v19 = -32767;
  }

  else
  {
    v19 = word_23681FC20[v18];
  }

  *a2 = v7;
  *(a2 + 4) = v6;
LABEL_80:
  *(a2 + 8) = v10;
LABEL_110:
  *(a2 + 16) = v12;
  *(a2 + 24) = 0;
  *(a2 + 24) = v19;
  *(a2 + 28) = 1;
  *(a2 + 32) = v11;
}

SparseMatrix_Float *__cdecl _SparseConvertFromOpaque_Float(SparseMatrix_Float *__return_ptr retstr, sparse_matrix_float matrix)
{
  if (*(matrix + 8) && sparse_commit(matrix))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236712E9C();
    }

    goto LABEL_73;
  }

  v4 = *(matrix + 7);
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236713044();
    }

LABEL_73:
    _SparseTrap();
  }

  v5 = *v4;
  if (*v4 > 1)
  {
    if (v5 != 4)
    {
      if (v5 == 2)
      {
        v20 = *(matrix + 1);
        if (!(v20 ^ v20 | (v20 >> 63)))
        {
          v21 = *(matrix + 2);
          if (!(v21 ^ v21 | (v21 >> 63)))
          {
            v22 = *(*(v4 + 24) + 8 * v21);
            v23 = (v21 << 32) + 0x100000000;
            v24 = 4 * v22 + (v23 >> 29);
            result = malloc_type_malloc(v24 + 4 * v22, 0x100004000313F17uLL);
            v12 = (&result->structure.rowCount + (v23 >> 29));
            if ((v21 & 0x80000000) == 0)
            {
              v25 = 0;
              v26 = *(matrix + 7);
              do
              {
                *(&result->structure.rowCount + v25) = *(*(v26 + 24) + 8 * v25);
                ++v25;
              }

              while (v21 + 1 != v25);
            }

            if (v22 >= 1)
            {
              v27 = 0;
              v28 = *(matrix + 7);
              do
              {
                LODWORD(v12[v22 + v27]) = *(*(v28 + 16) + 8 * v27);
                v12[v27] = *(*(v28 + 8) + 4 * v27);
                ++v27;
              }

              while (v22 != v27);
            }

            v17 = (&result->structure.rowCount + v24);
            v29 = *matrix - 1;
            if (v29 >= 8)
            {
              v19 = 0x8000;
            }

            else
            {
              v19 = word_23681FC10[v29];
            }

            retstr->structure.rowCount = v20;
            retstr->structure.columnCount = v21;
            goto LABEL_78;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_73;
          }

LABEL_72:
          sub_236712F54();
          goto LABEL_73;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_73;
        }

LABEL_64:
        sub_236712EE4();
        goto LABEL_73;
      }

      goto LABEL_33;
    }

    v41 = *(matrix + 1);
    if (v41 ^ v41 | (v41 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      goto LABEL_64;
    }

    v42 = *(matrix + 2);
    if (v42 ^ v42 | (v42 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    v43 = ((v42 << 32) + 0x100000000) >> 29;
    v44 = malloc_type_malloc(v43, 0x100004000313F17uLL);
    v45 = v44;
    if (v42 < 1)
    {
      v48 = 0;
    }

    else
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      do
      {
        *(v44 + v47) = v48;
        if (v41 >= 1)
        {
          v49 = (*(*(matrix + 7) + 8) + v46);
          v50 = v41;
          do
          {
            v51 = *v49++;
            if (v51 != 0.0)
            {
              ++v48;
            }

            --v50;
          }

          while (v50);
        }

        ++v47;
        v46 += 4 * v41;
      }

      while (v47 != (v42 & 0x7FFFFFFF));
    }

    *(v44 + v42) = v48;
    v61 = v43 + 4 * v48;
    v53 = malloc_type_malloc(v61 + 4 * v48, 0x100004000313F17uLL);
    memcpy(v53, v45, v43);
    free(v45);
    v12 = &v53[v43];
    v17 = &v53[v61];
    if (v42 >= 1)
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      do
      {
        if (v41 >= 1)
        {
          v65 = 0;
          v66 = *(matrix + 7);
          result = v41;
          v67 = v62;
          do
          {
            if (*(*(v66 + 8) + v67) != 0.0)
            {
              v17[v64] = v65;
              v12[v64++] = *(*(v66 + 8) + v67);
            }

            ++v65;
            v67 += 4;
            result = (result - 1);
          }

          while (result);
        }

        ++v63;
        v62 += 4 * v41;
      }

      while (v63 != (v42 & 0x7FFFFFFF));
    }

    v68 = *matrix - 1;
    if (v68 >= 8)
    {
      v19 = 0x8000;
    }

    else
    {
      v19 = word_23681FC10[v68];
    }

    retstr->structure.rowCount = v41;
    retstr->structure.columnCount = v42;
LABEL_105:
    retstr->structure.columnStarts = v53;
    goto LABEL_106;
  }

  if (v5 == -4)
  {
    v30 = *(matrix + 1);
    if (v30 ^ v30 | (v30 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      goto LABEL_64;
    }

    v31 = *(matrix + 2);
    if (v31 ^ v31 | (v31 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    v32 = ((v30 << 32) + 0x100000000) >> 29;
    v33 = malloc_type_malloc(v32, 0x100004000313F17uLL);
    v34 = v33;
    if (v30 < 1)
    {
      v37 = 0;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      do
      {
        *(v33 + v36) = v37;
        if (v31 >= 1)
        {
          v38 = (*(*(matrix + 7) + 8) + v35);
          v39 = v31;
          do
          {
            v40 = *v38++;
            if (v40 != 0.0)
            {
              ++v37;
            }

            --v39;
          }

          while (v39);
        }

        ++v36;
        v35 += 4 * v31;
      }

      while (v36 != (v30 & 0x7FFFFFFF));
    }

    *(v33 + v30) = v37;
    v52 = v32 + 4 * v37;
    v53 = malloc_type_malloc(v52 + 4 * v37, 0x100004000313F17uLL);
    memcpy(v53, v34, v32);
    free(v34);
    v12 = &v53[v32];
    v17 = &v53[v52];
    if (v30 >= 1)
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      do
      {
        if (v31 >= 1)
        {
          v57 = 0;
          v58 = *(matrix + 7);
          result = v31;
          v59 = v54;
          do
          {
            if (*(*(v58 + 8) + v59) != 0.0)
            {
              v17[v56] = v57;
              v12[v56++] = *(*(v58 + 8) + v59);
            }

            ++v57;
            v59 += 4;
            result = (result - 1);
          }

          while (result);
        }

        ++v55;
        v54 += 4 * v31;
      }

      while (v55 != (v30 & 0x7FFFFFFF));
    }

    v60 = *matrix - 1;
    if (v60 >= 8)
    {
      v19 = -32767;
    }

    else
    {
      v19 = word_23681FC20[v60];
    }

    retstr->structure.rowCount = v31;
    retstr->structure.columnCount = v30;
    goto LABEL_105;
  }

  if (v5 != -2)
  {
LABEL_33:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236712FC4(v5);
    }

    goto LABEL_73;
  }

  v6 = *(matrix + 1);
  if (v6 ^ v6 | (v6 >> 63))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    goto LABEL_64;
  }

  v7 = *(matrix + 2);
  if (v7 ^ v7 | (v7 >> 63))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v8 = *(*(v4 + 24) + 8 * v6);
  v9 = (v6 << 32) + 0x100000000;
  v10 = 4 * v8 + (v9 >> 29);
  result = malloc_type_malloc(v10 + 4 * v8, 0x100004000313F17uLL);
  v12 = (&result->structure.rowCount + (v9 >> 29));
  if ((v6 & 0x80000000) == 0)
  {
    v13 = 0;
    v14 = *(matrix + 7);
    do
    {
      *(&result->structure.rowCount + v13) = *(*(v14 + 24) + 8 * v13);
      ++v13;
    }

    while (v6 + 1 != v13);
  }

  if (v8 >= 1)
  {
    v15 = 0;
    v16 = *(matrix + 7);
    do
    {
      LODWORD(v12[v8 + v15]) = *(*(v16 + 16) + 8 * v15);
      v12[v15] = *(*(v16 + 8) + 4 * v15);
      ++v15;
    }

    while (v8 != v15);
  }

  v17 = (&result->structure.rowCount + v10);
  v18 = *matrix - 1;
  if (v18 >= 8)
  {
    v19 = -32767;
  }

  else
  {
    v19 = word_23681FC20[v18];
  }

  retstr->structure.rowCount = v7;
  retstr->structure.columnCount = v6;
LABEL_78:
  retstr->structure.columnStarts = &result->structure.rowCount;
LABEL_106:
  retstr->structure.rowIndices = v17;
  *&retstr->structure.attributes = 0;
  retstr->structure.attributes = v19;
  *(&retstr->structure.blockSize + 2) = 1;
  retstr->data = v12;
  return result;
}

_DWORD *sub_236769998(FILE *a1, int a2, size_t a3, char *__dst)
{
  strncpy(__dst, "MatrixMarket Matrix", a3);
  __linecapp = 81;
  __linep = malloc_type_malloc(0x51uLL, 0x458AA608uLL);
  if (getline(&__linep, &__linecapp, a1) < 1)
  {
LABEL_17:
    v9 = *MEMORY[0x277D85DF8];
    v10 = "File does not contain any non-comment lines.\n";
    v11 = 45;
LABEL_18:
    fwrite(v10, v11, 1uLL, v9);
    return 0;
  }

  v5 = 2;
  while (1)
  {
    v6 = __linep;
    if (*__linep != 37)
    {
      break;
    }

    if (!strncmp(__linep, "%%MatrixMarket", 0xEuLL))
    {
      strtok(v6, " \t\n\r");
      v7 = strtok(0, " \t\n\r");
      if (v7)
      {
        v8 = v7;
        do
        {
          if (strcasecmp(v8, "matrix") && strcasecmp(v8, "coordinate") && strcasecmp(v8, "real") && strcasecmp(v8, "integer"))
          {
            if (!strcasecmp(v8, "general"))
            {
              v5 &= 0xFFFFFFF3;
            }

            else
            {
              if (strcasecmp(v8, "symmetric"))
              {
                fprintf(*MEMORY[0x277D85DF8], "Unsupported symbol in MatrixMarket header '%s'\n", v8);
                return 0;
              }

              v5 |= 0xCu;
            }
          }

          v8 = strtok(0, " \t\n\r");
        }

        while (v8);
      }
    }

    if (getline(&__linep, &__linecapp, a1) <= 0)
    {
      goto LABEL_17;
    }
  }

  v37 = 0;
  v38 = 0;
  v36 = 0;
  if (sscanf(__linep, "%ld %ld %ld", &v38, &v37, &v36) != 3)
  {
    v9 = *MEMORY[0x277D85DF8];
    v10 = "Matrix description line is malformed.\n";
    v11 = 38;
    goto LABEL_18;
  }

  v12 = malloc_type_malloc(12 * v36 + 8 * v37 + 96, 0x10900405D25300CuLL);
  v14 = (v12 + 55) & 0xFFFFFFFFFFFFFFF0;
  v15 = v37;
  *v12 = v38;
  v12[1] = v15;
  *(v12 + 12) = v5;
  *(v12 + 13) = 0;
  *(v12 + 28) = 1;
  v16 = (v14 + 8 * v15 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v12 + 1) = v14;
  *(v12 + 2) = v16;
  *(v12 + 4) = (v16 + 4 * v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (getline(&__linep, &__linecapp, a1) < 1)
  {
    v18 = 0;
    v22 = -1;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = -1;
    v20 = 0.0;
    v21 = -1;
    v22 = -1;
    do
    {
      v23 = __linep;
      __endptr = 0;
      if (__linep)
      {
        do
        {
          if (v17 == 2)
          {
            v20 = strtod(v23, &__endptr);
            v26 = __endptr;
            v25 = v23 != __endptr;
            v17 = 2 * (v23 == __endptr);
          }

          else if (v17 == 1)
          {
            v24 = strtol(v23, &__endptr, 0);
            v25 = 0;
            v19 = v24 - 1;
            v26 = __endptr;
            v17 = v23 == __endptr ? 1 : 2;
          }

          else
          {
            v27 = strtol(v23, &__endptr, 0);
            v25 = 0;
            v21 = v27 - 1;
            v26 = __endptr;
            v17 = v23 != __endptr;
          }

          if (v23 == v26)
          {
            break;
          }

          if (v25)
          {
            v28 = v19 - v22;
            if (v19 < v22)
            {
              fwrite("Error, columns are expected to appear in increasing order.\n", 0x3BuLL, 1uLL, *MEMORY[0x277D85DF8]);
              goto LABEL_56;
            }

            if (v19 > v22)
            {
              v29 = (v28 + 1) & 0xFFFFFFFFFFFFFFFELL;
              v30 = vdupq_n_s64(v28 - 1);
              v31 = (*(v12 + 1) + 8 * v22 + 16);
              v32 = 1;
              do
              {
                v33 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v32 - 1), xmmword_23681F920)));
                if (v33.i8[0])
                {
                  *(v31 - 1) = v18;
                }

                if (v33.i8[4])
                {
                  *v31 = v18;
                }

                v32 += 2;
                v31 += 2;
                v29 -= 2;
              }

              while (v29);
              v22 = v19;
            }

            *(*(v12 + 2) + 4 * v18) = v21;
            *(*(v12 + 4) + 8 * v18++) = v20;
          }

          v23 = v26;
        }

        while (v26);
      }
    }

    while (getline(&__linep, &__linecapp, a1) > 0);
  }

  if (v22 < v37)
  {
    v34 = *(v12 + 1) + 8;
    do
    {
      *(v34 + 8 * v22++) = v18;
    }

    while (v22 < v37);
  }

  if (v18 >= v36)
  {
    free(__linep);
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "Error, coordinate list ended before reaching expected %ld entries.\n", v36);
LABEL_56:
    free(v12);
    return 0;
  }

  return v12;
}

uint64_t sub_236769E58(uint64_t a1, int a2, int a3, int a4, int a5)
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

  v6 = 8 * (a3 + (v5 + 3) * a4 + 3) + 168;
  v7 = 16 * a4 * a5 + 104;
  if (!a2)
  {
    v7 = 104;
  }

  return v7 + v6 * a5;
}

void _SparseLSMRIterate_Double(const SparseLSMROptions *options, int iteration, char *state, const BOOL *converged, DenseMatrix_Double *X, DenseMatrix_Double *B, DenseMatrix_Double *R, const SparseOpaquePreconditioner_Double *Preconditioner, void *ApplyOperator)
{
  v9 = Preconditioner;
  v13 = converged;
  v14 = options;
  v15 = 4;
  if (*&B->attributes)
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(&B->rowCount + v16);
  if (*&X->attributes)
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(&X->rowCount + v18);
  if (*&X->attributes)
  {
    v15 = 0;
  }

  v20 = *(&X->rowCount + v15);
  v21 = ApplyOperator;
  nvec = options->nvec;
  if (nvec >= v17)
  {
    nvec = v17;
  }

  if (nvec >= v19)
  {
    v23 = *(&X->rowCount + v18);
  }

  else
  {
    v23 = nvec;
  }

  v78[0] = v19;
  v78[1] = v20;
  v78[2] = v19;
  v78[3] = 0;
  v79 = &state[168 * v20 + 7] & 0xFFFFFFFFFFFFFFF8;
  v76[0] = v19;
  v76[1] = v20;
  v76[2] = v19;
  v76[3] = 0;
  v77 = v79 + 8 * v20 * v19;
  v24 = v77 + 8 * v20 * v19;
  *&v74 = __PAIR64__(v20, v17);
  *(&v74 + 1) = v17;
  v75 = v24 + 8 * v20 * v19 * v23;
  *&v72 = __PAIR64__(v20, v19);
  *(&v72 + 1) = v19;
  v73 = v75 + 8 * v20 * v17;
  v25 = (v73 + 8 * v20 * v19);
  *&v70 = __PAIR64__(v20, v19);
  *(&v70 + 1) = v19;
  v71 = 0;
  *&v68 = __PAIR64__(v20, v19);
  *(&v68 + 1) = v19;
  v69 = 0;
  if (Preconditioner)
  {
    v26 = 8 * v20 * v19;
    v71 = (v73 + v26);
    v69 = &v25[v26 / 8];
    if ((iteration & 0x80000000) == 0)
    {
      v25 = (v25 + v26 + v26);
      goto LABEL_18;
    }

    sub_2366FD390(&X->rowCount, &v70);
    mem = v9->mem;
    apply = v9->apply;
    v82 = v70;
    v83 = v71;
    v80 = *&X->rowCount;
    data = X->data;
    (apply)(mem, 111, &v82, &v80);
    v21 = ApplyOperator;
  }

  else if ((iteration & 0x80000000) == 0)
  {
LABEL_18:
    v27 = &v25[v20];
    v28 = &v27[v20];
    if (iteration || (v67 = state, v30 = &v27[v20], v32 = sub_23676A2AC(options, v17, v19, v20, converged, &v74, &v72, &X->rowCount, &B->rowCount, &v70, v78, v76, v24, Preconditioner, ApplyOperator, state), v14 = options, iteration = 0, v13 = converged, v28 = v30, v21 = ApplyOperator, v9 = Preconditioner, v27 = &v25[v20], state = v67, (v32 & 1) == 0))
    {
      v33 = state;
      v34 = X;
      v35 = v28;
      sub_23676A6BC(iteration, v17, v19, v20, v13, &v74, &v72, v34, v14->lambda, &v70, &v68, v78, v76, v24, v25, v27, v28, v9, v21, state);
      if (v20 >= 1)
      {
        v36 = 0;
        v37 = 4;
        if ((*&R->attributes & 1) == 0)
        {
          v37 = 0;
        }

        v38 = *(&R->rowCount + v37);
        v39 = (v33 + 72);
        do
        {
          if (v38 >= 1)
          {
            v40 = (*&R->attributes & 1) != 0 ? v36 : R->columnStride * v36;
            v41 = R->data;
            v41[v40] = fabs(*v39);
            if (v38 != 1)
            {
              columnStride = R->columnStride;
              v43 = columnStride * v36;
              v44 = (*&R->attributes & 1) != 0 ? v36 + columnStride : v43 + 1;
              v41[v44] = *&v25[v36];
              if (v38 >= 3)
              {
                v45 = v43 + 2;
                if (*&R->attributes)
                {
                  v45 = v36 + 2 * columnStride;
                }

                v41[v45] = *&v27[v36];
                if (v38 != 3)
                {
                  if (*&R->attributes)
                  {
                    v46 = 3;
                  }

                  else
                  {
                    v46 = v36;
                  }

                  if (*&R->attributes)
                  {
                    v47 = v36;
                  }

                  else
                  {
                    v47 = 3;
                  }

                  v41[v47 + columnStride * v46] = *&v35[v36];
                }
              }
            }
          }

          ++v36;
          v39 += 21;
        }

        while (v20 != v36);
      }
    }

    return;
  }

  v50 = 4;
  if (*&X->attributes)
  {
    v51 = 4;
  }

  else
  {
    v51 = 0;
  }

  v52 = *(&X->rowCount + v51);
  if (*&X->attributes)
  {
    v50 = 0;
  }

  v53 = *(&X->rowCount + v50);
  v54 = v21[2];
  v82 = *&X->rowCount;
  v83 = X->data;
  v80 = *&R->rowCount;
  data = R->data;
  v54(v21, 0, 111, &v82, &v80);
  if (v53 >= 1)
  {
    for (i = 0; i != v53; ++i)
    {
      if (v52 >= 1)
      {
        v56 = 0;
        v57 = B->data;
        v58 = R->data;
        v59 = B->columnStride;
        v60 = R->columnStride;
        do
        {
          if (*&B->attributes)
          {
            v61 = v56;
          }

          else
          {
            v61 = i;
          }

          if (*&B->attributes)
          {
            v62 = i;
          }

          else
          {
            v62 = v56;
          }

          v63 = v57[v62 + v61 * v59];
          if (*&R->attributes)
          {
            v64 = v56;
          }

          else
          {
            v64 = i;
          }

          if (*&R->attributes)
          {
            v65 = i;
          }

          else
          {
            v65 = v56;
          }

          v58[v65 + v64 * v60] = v63 - v58[v65 + v64 * v60];
          ++v56;
        }

        while (v52 != v56);
      }
    }
  }
}

uint64_t sub_23676A2AC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int *a6, __int128 *a7, int *a8, int *a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v20 = *(a1 + 16);
  if (v20 >= a2)
  {
    v20 = a2;
  }

  v54 = a3;
  if (v20 >= a3)
  {
    v20 = a3;
  }

  v50 = v20;
  sub_2366FD390(a9, a6);
  sub_2366FD4D0(a8);
  v21 = 1;
  if (a4 >= 1)
  {
    v22 = 0;
    v52 = a4;
    v24 = 1;
LABEL_7:
    v25 = a16;
    v26 = a16 + 168 * v22++;
    do
    {
      if ((*(a5 + v22 - 1) & 1) == 0)
      {
        *v26 = 0;
        *(v26 + 8) = 0;
        cblas_dnrm2_NEWLAPACK();
        *(v26 + 16) = v27;
        if (v27 > 0.0)
        {
          cblas_dscal_NEWLAPACK();
          v24 = 0;
          a16 = v25;
          if (v22 != a4)
          {
            goto LABEL_7;
          }

          goto LABEL_17;
        }

        *v26 = 1;
        *(v26 + 72) = 0;
      }

      ++v22;
      v26 += 168;
    }

    while (v22 - a4 != 1);
    a16 = v25;
    if (v24)
    {
      v21 = 1;
      return v21 & 1;
    }

LABEL_17:
    v28 = *(a15 + 16);
    v57 = *a6;
    v58 = *(a6 + 2);
    if (a14)
    {
      v55 = *a10;
      v56 = *(a10 + 2);
      v28();
      v29 = *(a14 + 8);
      v30 = *(a14 + 16);
      v57 = *a10;
      v58 = *(a10 + 2);
      v55 = *a7;
      v56 = *(a7 + 2);
      v30(v29, 112, &v57, &v55);
    }

    else
    {
      v55 = *a7;
      v56 = *(a7 + 2);
      v28();
    }

    v31 = a4;
    v32 = 0;
    v33 = 0;
    __n = 8 * v54;
    v34 = (a16 + 160);
    __asm { FMOV            V0.2D, #1.0 }

    v48 = _Q0;
    v21 = 1;
    do
    {
      if ((*(a5 + v33) & 1) == 0 && *(v34 - 18) != 0.0)
      {
        v40 = (*(a7 + 2) + 8 * v33 * *(a7 + 2));
        v41 = *(a11 + 16);
        v42 = *(a11 + 8);
        v51 = *(a12 + 16);
        v43 = *(a12 + 8);
        cblas_dnrm2_NEWLAPACK();
        *(v34 - 19) = v44;
        if (v44 > 0.0)
        {
          cblas_dscal_NEWLAPACK();
          v44 = *(v34 - 19);
        }

        v45 = v44 * *(v34 - 18);
        if (v45 == 0.0)
        {
          *(v34 - 160) = 1;
        }

        else
        {
          *(v34 - 80) = v50 > 0;
          *(v34 - 19) = 0;
          *(v34 - 18) = v50;
          *(v34 - 79) = 0;
          if (v50 >= 1)
          {
            memcpy((a13 + 8 * v32), v40, __n);
            v44 = *(v34 - 19);
            v45 = v44 * *(v34 - 18);
          }

          *(v34 - 11) = v45;
          *(v34 - 17) = v44;
          *(v34 - 8) = xmmword_23681FBD0;
          *(v34 - 7) = v48;
          memcpy((v41 + 8 * v33 * v42), v40, __n);
          bzero((v51 + 8 * v33 * v43), __n);
          v21 = 0;
          v46 = *(v34 - 19);
          *(v34 - 7) = *(v34 - 18);
          *(v34 - 8) = 0.0;
          *(v34 - 12) = 0.0;
          *(v34 - 3) = xmmword_23681FE30;
          *(v34 - 4) = 0.0;
          *(v34 - 3) = 0.0;
          *v34 = v46 * v46;
          *(v34 - 1) = xmmword_23681FE40;
        }

        v31 = v52;
      }

      ++v33;
      v34 += 21;
      v32 += v54 * v50;
    }

    while (v31 != v33);
  }

  return v21 & 1;
}

void sub_23676A6BC(int a1, unsigned int a2, uint64_t a3, unsigned int a4, _BYTE *a5, __int128 *a6, __int128 *a7, uint64_t a8, double a9, __int128 *a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, _BYTE *a20)
{
  v22 = a3;
  v141 = a5;
  if (a4 >= 1)
  {
    v23 = a4;
    v24 = a5;
    v25 = a20;
    v26 = a15;
    v27 = a16;
    v28 = a17;
    do
    {
      v29 = *v24++;
      if ((v29 & 1) == 0 && *v25 == 1)
      {
        *v26 = 0;
        *v27 = 0;
        *v28 = 0xBFF0000000000000;
      }

      ++v28;
      ++v27;
      ++v26;
      v25 += 168;
      --v23;
    }

    while (v23);
    v30 = 0;
    v31 = a20 + 8;
    do
    {
      if ((a5[v30] & 1) == 0 && (*(v31 - 8) & 1) == 0)
      {
        cblas_dscal_NEWLAPACK();
        a5 = v141;
      }

      ++v30;
      v31 += 168;
    }

    while (a4 != v30);
  }

  if (a18)
  {
    v32 = *(a18 + 8);
    v33 = *(a18 + 16);
    v144 = *a7;
    v145 = *(a7 + 2);
    v142 = *a10;
    v143 = *(a10 + 2);
    v33(v32, 111, &v144, &v142);
    v34 = *(a19 + 16);
    v144 = *a10;
    v35 = *(a10 + 2);
  }

  else
  {
    v34 = *(a19 + 16);
    v144 = *a7;
    v35 = *(a7 + 2);
  }

  v145 = v35;
  v142 = *a6;
  v143 = *(a6 + 2);
  v34(a19, 1, 111, &v144, &v142);
  v36 = v141;
  if (a4 >= 1)
  {
    v139 = a4;
    v37 = 0;
    v38 = 0;
    v128 = v22;
    v39 = 8 * v22;
    v124 = v22;
    v40 = a20 + 88;
    v135 = v22;
    while (2)
    {
      v129 = v38;
      v41 = &v40[168 * v37];
      v42 = v39 * v37;
      v43 = v37++;
      while (1)
      {
        if ((v36[v37 - 1] & 1) == 0 && (*(v41 - 11) & 1) == 0)
        {
          v44 = *(a7 + 2);
          v45 = *(a7 + 2);
          v46 = *v41;
          cblas_dnrm2_NEWLAPACK();
          v36 = v141;
          *(v41 - 9) = v47;
          if (v47 > 0.0)
          {
            break;
          }
        }

        ++v37;
        v41 += 21;
        v42 += v39;
        ++v43;
        if (v37 - a4 == 1)
        {
          v54 = v124;
          v56 = a16;
          v55 = a17;
          v57 = a20;
          v58 = a11;
          if ((v129 & 1) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_32;
        }
      }

      cblas_dscal_NEWLAPACK();
      if (*(v41 - 8) == 1)
      {
        v48 = *v41;
        v49 = *(v41 - 1) + 1;
        *(v41 - 1) = v49;
        if (v49 >= v48)
        {
          v49 = 0;
          *(v41 - 1) = 0;
          *(v41 - 7) = 1;
        }

        if (v124 >= 1)
        {
          v50 = (a14 + 8 * v49 * v124 + v42 * v46);
          v51 = (v44 + 8 * v45 * v43);
          v52 = v135;
          do
          {
            v53 = *v51++;
            *v50++ = v53;
            --v52;
          }

          while (v52);
        }
      }

      v38 = 1;
      v54 = v124;
      cblas_dscal_NEWLAPACK();
      v36 = v141;
      v56 = a16;
      v55 = a17;
      v57 = a20;
      v58 = a11;
      v40 = a20 + 88;
      if (a4 != v37)
      {
        continue;
      }

      break;
    }

LABEL_32:
    v59 = *(a19 + 16);
    if (a18)
    {
      v144 = *a6;
      v145 = *(a6 + 2);
      v142 = *a10;
      v143 = *(a10 + 2);
      v59();
      v60 = *(a18 + 8);
      v61 = *(a18 + 16);
      v144 = *a10;
      v145 = *(a10 + 2);
      v142 = *v58;
      v143 = *(v58 + 2);
      v61(v60, 112, &v144, &v142);
      v62 = 0;
      v36 = v141;
      do
      {
        if (v54 >= 1)
        {
          v63 = (*(a7 + 2) + 8 * *(a7 + 2) * v62);
          v64 = (*(v58 + 2) + 8 * *(v58 + 2) * v62);
          v65 = v135;
          do
          {
            v66 = *v64++;
            *v63 = v66 + *v63;
            ++v63;
            --v65;
          }

          while (v65);
        }

        ++v62;
      }

      while (v62 != a4);
    }

    else
    {
      v144 = *a6;
      v145 = *(a6 + 2);
      v142 = *a7;
      v143 = *(a7 + 2);
      v59();
      v36 = v141;
    }

LABEL_40:
    v67 = 0;
    v68 = 0;
    v125 = fabs(a9);
    v69 = 8 * v128;
    v70 = v139;
    v126 = a9;
    do
    {
      if ((v36[v68] & 1) == 0)
      {
        v71 = v57 + 168 * v68;
        if ((*v71 & 1) == 0)
        {
          v138 = *(a7 + 2);
          v136 = *(a7 + 2);
          v72 = *(a12 + 16);
          v73 = *(a12 + 8);
          v74 = *(a13 + 16);
          v75 = *(a13 + 8);
          if (*(v71 + 16) > 0.0)
          {
            v130 = *(a13 + 16);
            v131 = *(a12 + 8);
            v133 = *(a12 + 16);
            if (*(v71 + 80) == 1)
            {
              v76 = *(v71 + 88);
              if ((*(v71 + 81) & 1) == 0)
              {
                v76 = *(v71 + 84) + 1;
              }

              v54 = v124;
              if (v76 >= 1)
              {
                v77 = v76;
                v78 = a14 + v67 * *(v71 + 88);
                do
                {
                  cblas_ddot_NEWLAPACK();
                  cblas_daxpy_NEWLAPACK();
                  v78 += v69;
                  --v77;
                }

                while (v77);
              }
            }

            cblas_dnrm2_NEWLAPACK();
            *(v71 + 8) = v79;
            v56 = a16;
            v55 = a17;
            v72 = v133;
            v73 = v131;
            v74 = v130;
            if (v79 > 0.0)
            {
              cblas_dscal_NEWLAPACK();
              v74 = v130;
              v73 = v131;
              v72 = v133;
            }
          }

          v80 = *(v71 + 24);
          v81 = 0.0;
          v82 = 0.0;
          v83 = v80;
          if (a9 != 0.0)
          {
            v84 = v125 + fabs(v80);
            v83 = 0.0;
            if (v84 != 0.0)
            {
              v83 = v84 * sqrt(a9 / v84 * (a9 / v84) + v80 / v84 * (v80 / v84));
            }

            v82 = a9 / v83;
          }

          v134 = v82;
          v85 = *(v71 + 48);
          v86 = *(v71 + 16);
          v87 = fabs(v83) + fabs(v86);
          if (v87 != 0.0)
          {
            v81 = v87 * sqrt(v86 / v87 * (v86 / v87) + v83 / v87 * (v83 / v87));
          }

          *(v71 + 48) = v81;
          v88 = v83 / v81;
          v89 = v86 / v81;
          v90 = *(v71 + 8);
          v91 = v89 * v90;
          *(v71 + 24) = v83 / v81 * v90;
          v92 = *(v71 + 56);
          v132 = *(v71 + 64);
          v93 = v81 * *(v71 + 32);
          v94 = fabs(v89 * v90) + fabs(v93);
          v95 = 0.0;
          if (v94 != 0.0)
          {
            v95 = v94 * sqrt(v91 / v94 * (v91 / v94) + v93 / v94 * (v93 / v94));
          }

          v96 = v81 * *(v71 + 40);
          *(v71 + 32) = v93 / v95;
          *(v71 + 40) = v91 / v95;
          v97 = *(v71 + 72);
          *(v71 + 56) = v95;
          *(v71 + 64) = v93 / v95 * v97;
          *(v71 + 72) = -(v91 / v95 * v97);
          v57 = a20;
          if (v54 <= 0)
          {
            cblas_daxpy_NEWLAPACK();
            v70 = v139;
          }

          else
          {
            v98 = (v74 + 8 * v75 * v68);
            v99 = (v72 + 8 * v73 * v68);
            v100 = v135;
            v101 = v99;
            do
            {
              v102 = *v101++;
              *v98 = v102 + *(v71 + 48) * -v96 / (v85 * v92) * *v98;
              ++v98;
              --v100;
            }

            while (v100);
            cblas_daxpy_NEWLAPACK();
            v70 = v139;
            v103 = (v138 + 8 * v136 * v68);
            v104 = v135;
            do
            {
              v105 = *v103++;
              *v99 = v105 + -v91 / *(v71 + 48) * *v99;
              ++v99;
              --v104;
            }

            while (v104);
          }

          v106 = *(v71 + 104);
          v107 = v80 / v83 * v106;
          v108 = -(v89 * v107);
          *(v71 + 104) = v108;
          v109 = *(v71 + 136);
          v110 = *(v71 + 120);
          v111 = fabs(v96) + fabs(v110);
          v112 = 0.0;
          v36 = v141;
          if (v111 != 0.0)
          {
            v112 = v111 * sqrt(v96 / v111 * (v96 / v111) + v110 / v111 * (v110 / v111));
          }

          v113 = v110 / v112;
          v114 = *(v71 + 56);
          v115 = *(v71 + 64);
          v116 = v96 / v112 * v114;
          v117 = v113 * v114;
          v118 = v88 * v107 * v113 - v96 / v112 * *(v71 + 96);
          *(v71 + 96) = v118;
          v119 = (v132 - v109 * *(v71 + 128)) / v112;
          *(v71 + 128) = v119;
          *(v71 + 136) = v116;
          v120 = *(v71 + 112) + -(v134 * v106) * -(v134 * v106);
          *(v71 + 112) = v120;
          *(v71 + 120) = v117;
          *&a15[v68] = sqrt(v120 + (v118 - (v115 - v116 * v119) / v117) * (v118 - (v115 - v116 * v119) / v117) + v108 * v108);
          v121 = *(v71 + 160) + *(v71 + 16) * *(v71 + 16);
          *(v71 + 160) = v121;
          *&v56[v68] = sqrt(v121);
          *(v71 + 160) = *(v71 + 160) + *(v71 + 8) * *(v71 + 8);
          v122 = *(v71 + 144);
          a9 = v126;
          if (v92 > v122)
          {
            *(v71 + 144) = v92;
            v122 = v92;
          }

          v123 = *(v71 + 152);
          if (a1 >= 1 && v92 < v123)
          {
            *(v71 + 152) = v92;
            v123 = v92;
          }

          if (v122 <= v93)
          {
            v122 = v93;
          }

          if (v123 >= v93)
          {
            v123 = v93;
          }

          *&v55[v68] = v122 / v123;
        }
      }

      ++v68;
      v67 += v69;
    }

    while (v68 != v70);
  }
}