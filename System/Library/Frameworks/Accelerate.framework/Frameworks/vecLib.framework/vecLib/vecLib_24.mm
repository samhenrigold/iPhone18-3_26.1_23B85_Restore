uint64_t sub_2367D88D8(int a1, int a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v5 = *(a3 + 168);
  if (v5 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = -v5;
  }

  v7 = 8 * v6;
  if (v5 < 0)
  {
    v7 = -8 * v6;
  }

  v8 = v7 + 40;
  v9 = v7 >= 0xFFFFFFFFFFFFFFD8 || v5 < 0;
  v101 = (a2 * a2);
  v10 = *(a3 + 336);
  v11 = MEMORY[0x277D85FA0];
  if (v10 < 1)
  {
    v15 = 0;
    v14 = 0;
    v57 = 0;
    v56 = 0;
  }

  else
  {
    v92 = v6;
    v93 = *(a3 + 168);
    v94 = v7 + 40;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *(a3 + 344);
    v99 = a3;
    v17 = *(a3 + 384);
    v95 = a1;
    v96 = a2;
    v100 = a1 & 0xFE;
    v97 = a4;
    v98 = (2 * a2);
    v18 = *MEMORY[0x277D85FA0] - 1;
    v19 = -*MEMORY[0x277D85FA0];
    v22 = *v16;
    v20 = v16 + 1;
    v21 = v22;
    do
    {
      v102 = *v20;
      v23 = *v20;
      v24 = *v17;
      v103 = v17 + 1;
      v104 = v20 + 1;
      v25 = *v17 >> 63;
      v105 = 0;
      v26 = sub_23681EB64(v24, v25, v101, 0, &v105);
      if ((v27 << 63 >> 63) ^ v27 | v105)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27 << 63 >> 63 == -1;
      }

      v29 = v28;
      v30 = v9 | v29;
      if (v100 == 82)
      {
        v31 = *(*(v99 + 176) + 4 * v23) - *(*(v99 + 176) + 4 * v21);
        v32 = v98 * v31;
        v30 |= ((((v31 * v98) >> 64) + (v31 >> 63) * v98) << 63) >> 63 == -1;
      }

      else
      {
        v32 = 0;
      }

      v33 = 0;
      if (v23 - v21 < 0)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v37 = 1;
      }

      else
      {
        v34 = 24 * (v23 - v21);
        v35 = v34 + 4 * v32;
        v36 = __CFADD__(v34, 4 * v32);
        v37 = 1;
        v38 = 0;
        v39 = 0;
        if (v32 >> 62)
        {
          v40 = 0;
        }

        else
        {
          v40 = 0;
          if (!v36)
          {
            v40 = v35 + 4 * v26;
            v41 = __CFADD__(v35, 4 * v26);
            if (v26 >> 62)
            {
              v33 = 0;
              v38 = 0;
              v39 = 0;
            }

            else
            {
              v39 = v35 + 8 * v26;
              v42 = __CFADD__(v35, 8 * v26);
              v43 = v26 >> 60 != 0;
              v44 = __CFADD__(v35, 16 * v26);
              v45 = v35 + 16 * v26;
              if (v44)
              {
                v43 = 1;
              }

              v46 = !v42;
              if (v42)
              {
                v47 = 0;
              }

              else
              {
                v47 = v45;
              }

              if (v46)
              {
                v48 = v39;
              }

              else
              {
                v48 = 0;
              }

              if (!v46)
              {
                v43 = 1;
              }

              if (v26 >> 61)
              {
                v47 = 0;
                v48 = 0;
                v49 = 1;
              }

              else
              {
                v49 = v43;
              }

              v50 = !v41;
              if (v41)
              {
                v33 = 0;
              }

              else
              {
                v33 = v47;
              }

              if (v50)
              {
                v38 = v48;
              }

              else
              {
                v38 = 0;
              }

              if (v50)
              {
                v37 = v49;
              }

              else
              {
                v39 = 0;
                v37 = 1;
              }
            }
          }
        }
      }

      v51 = v37 | v30 & 1;
      v52 = (v18 + v40) & v19;
      v53 = (v18 + v39) & v19;
      v54 = (v18 + v38) & v19;
      v55 = (v18 + v33) & v19;
      v44 = __CFADD__(v14, v52);
      v14 += v52;
      if (v44)
      {
        v51 = 1;
      }

      v44 = __CFADD__(v15, v53);
      v15 += v53;
      if (v44)
      {
        v51 = 1;
      }

      v44 = __CFADD__(v12, v54);
      v12 += v54;
      if (v44)
      {
        v51 = 1;
      }

      v44 = __CFADD__(v13, v55);
      v13 += v55;
      if (v44)
      {
        v9 = 1;
      }

      else
      {
        v9 = v51;
      }

      v17 = v103;
      v21 = v102;
      --v10;
      v20 = v104;
    }

    while (v10);
    v56 = (v12 + 1) >> 1;
    v57 = (v13 + 1) >> 1;
    a4 = v97;
    a3 = v99;
    v11 = MEMORY[0x277D85FA0];
    a1 = v95;
    a2 = v96;
    v8 = v94;
    v5 = v93;
    v6 = v92;
  }

  if (v14 > v56)
  {
    v56 = v14;
  }

  if (v15 > v57)
  {
    v57 = v15;
  }

  v28 = v5 < 0;
  v58 = v5 < 0;
  v59 = 16 * v6;
  if (v28)
  {
    v59 = -v59;
  }

  v44 = __CFADD__(v59, 32);
  v60 = v59 + 32;
  if (v44)
  {
    v58 = 1;
  }

  v44 = __CFADD__(v60, v8);
  v61 = v60 + v8;
  v62 = v44;
  if (v58)
  {
    v61 = v8;
  }

  v63 = (v58 || v9) | v62;
  if (a1 == 83)
  {
    v64 = v63;
  }

  else
  {
    v64 = v9;
  }

  if (a1 == 83)
  {
    v65 = v61;
  }

  else
  {
    v65 = v8;
  }

  v66 = *(*(a3 + 120) + 8 * *(a3 + 60));
  v67 = v66 * v101;
  v68 = v64 || (v66 * v101) >> 64 != (v66 * v101) >> 63;
  if (a2 == 1)
  {
    v69 = 0;
  }

  else
  {
    v69 = 4 * a2 * (*(a3 + 100) + *(a3 + 96)) + 8;
  }

  v44 = __CFADD__(v65, v69);
  v70 = v65 + v69;
  if (v44)
  {
    v71 = (v69 >> 63) + 1;
  }

  else
  {
    v71 = v69 >> 63;
  }

  v73 = v71 << 63 >> 63 != v71 || v71 << 63 >> 63 == -1;
  v44 = __CFADD__(*v11, v70);
  v74 = *v11 + v70;
  if (v44)
  {
    v73 = 1;
  }

  v75 = v68 || v73;
  v76 = *(a3 + 56);
  v77 = v67 >> 63;
  v44 = __CFADD__(v67, 2 * v76);
  v78 = v67 + 2 * v76;
  if (v44)
  {
    v79 = v77 + 1;
  }

  else
  {
    v79 = v77;
  }

  v80 = v79 << 63 >> 63;
  v81 = v80 != v79;
  result = 1;
  if (!v75 && ((*(a3 + 56) >> 63) & 1) == 0 && !v81 && (v80 & 0x8000000000000000) == 0)
  {
    v83 = 4 * v78 + 144;
    if (!(v78 >> 62) && 4 * v78 < 0xFFFFFFFFFFFFFF70)
    {
      v44 = __CFADD__(v83, v74);
      v84 = v83 + v74;
      v85 = v44;
      v44 = __CFADD__(v56, v84);
      v86 = v56 + v84;
      v87 = v44;
      *a4 = v86;
      if (!v85 && !v87)
      {
        v88 = 8 * v78 + 144;
        if (!(v78 >> 61) && 8 * v78 < 0xFFFFFFFFFFFFFF70)
        {
          v44 = __CFADD__(v88, v74);
          v89 = v88 + v74;
          v90 = v44;
          *a5 = v57 + v89;
          if (__CFADD__(v57, v89))
          {
            return 1;
          }

          else
          {
            return v90;
          }
        }
      }
    }
  }

  return result;
}

uint64_t _SparseNumericFactorLU_Double@<X0>(__int128 *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, char *a4@<X4>, uint64_t a5@<X8>, uint64_t a6@<X3>)
{
  v26 = *MEMORY[0x277D85DE8];
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  v8 = a1[2];
  *(a5 + 56) = a1[3];
  v9 = *(a1 + 17);
  v10 = *(a1 + 3);
  *a5 = -3;
  *(a5 + 4) = *(a1 + 6) & 1;
  *(a5 + 40) = v8;
  v11 = *a1;
  *(a5 + 24) = a1[1];
  *(a5 + 8) = v11;
  *(a5 + 72) = 1;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  atomic_fetch_add((v10 + 48), 1u);
  if (*(a3 + 4) == 4)
  {
    v12 = *(v10 + 40);
    if (!v12)
    {
      v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v17)
      {
        sub_23672AC1C(v17, v18, v19, v20, v21, v22, v23, v24);
      }

      _SparseTrap();
    }

    memset(&v25[14] + 4, 0, 28);
    memset(&v25[9] + 4, 0, 80);
    strcpy(v25, "nfoptions->scalingMethod=SparseScalingHungarianScalingAndOrdering is only supported if a combined symbolic+numeric call to SparseFactor() is made.\n");
    result = v12(v25, a2);
    *a5 = -4;
  }

  else
  {
    *(a5 + 80) = sub_2367D8F0C(v9, *(a1 + 16), v10, *(a1 + 7), a3, a6);
    _SparseRefactorLU_Double(a2, a5, a3, a4, v16);

    return sub_2367D9E50(a5);
  }

  return result;
}

uint64_t sub_2367D8F0C(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v47 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    v6 = (*(a3 + 24))(a4);
    if (!v6)
    {
      if (!*(a3 + 40))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23672AC58();
        }

        _SparseTrap();
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
      v33 = 0u;
      v34 = 0u;
      *__str = 0u;
      v32 = 0u;
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed in SparseFactorLU.", a4);
      (*(a3 + 40))(__str);
      return 0;
    }
  }

  v12 = v6 + a4;
  v13 = 8 * *(a3 + 56);
  v14 = *(a5 + 4);
  if ((v14 - 2) >= 3)
  {
    if (v14 == 1)
    {
      if (!*(a5 + 8))
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  v15 = (v6 + 151) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v15)
  {
    goto LABEL_34;
  }

  v16 = v15 + 8 * (a2 * a2) * *(*(a3 + 120) + 8 * *(a3 + 60));
  if (v16 > v12)
  {
    goto LABEL_34;
  }

  if (a2 < 2)
  {
    v17 = (v15 + 8 * (a2 * a2) * *(*(a3 + 120) + 8 * *(a3 + 60)));
    v16 = 0;
  }

  else
  {
    v17 = ((v16 + 4 * (*(a3 + 100) + *(a3 + 96)) * a2 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v12 < v17)
    {
      goto LABEL_34;
    }
  }

  if (a1 != 83)
  {
    v21 = 0;
    v24 = 0;
    v19 = 0;
    v22 = 0;
    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_23:
    v25 = (v17 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 >= v25)
    {
      v26 = (v25 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v12 >= v26)
      {
        v13 = v17;
        v17 = v26;
        goto LABEL_26;
      }
    }

LABEL_34:
    __break(1u);
  }

  v18 = *(a3 + 168);
  v19 = (v17 + 4 * v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v19)
  {
    goto LABEL_34;
  }

  v20 = 4 * v18;
  v21 = (v19 + 4 * v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v21)
  {
    goto LABEL_34;
  }

  v22 = (v21 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v22)
  {
    goto LABEL_34;
  }

  v23 = (v22 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v23)
  {
    goto LABEL_34;
  }

  v24 = v17;
  v17 = v23;
  if (v13)
  {
    goto LABEL_23;
  }

LABEL_21:
  v25 = 0;
LABEL_26:
  v27 = (v17 + 8 * *(a3 + 168) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v27)
  {
    goto LABEL_34;
  }

  v28 = *(a5 + 16);
  *v6 = *a5;
  *(v6 + 16) = v28;
  *(v6 + 32) = 1;
  *(v6 + 40) = v15;
  *(v6 + 48) = v16;
  *(v6 + 56) = 0;
  *(v6 + 64) = v24;
  *(v6 + 72) = v19;
  *(v6 + 80) = v21;
  *(v6 + 88) = v22;
  *(v6 + 96) = v13;
  *(v6 + 104) = v25;
  *(v6 + 112) = v17;
  v29 = (v27 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  *(v6 + 120) = v29;
  *(v6 + 128) = v12 - v29;
  *(v6 + 136) = 0;
  bzero(v17, 8 * *(a3 + 168));
  return v6;
}

void _SparseRefactorLU_Double(unsigned int *a1, char *a2, uint64_t a3, char *a4, __n128 a5)
{
  v5 = a4;
  v7 = a1;
  v206 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 4);
  v9 = *(a2 + 10);
  v173 = a2[25];
  v10 = *(a1 + 28);
  v172 = a2;
  v11 = *(a2 + 6);
  v12 = *(a3 + 4);
  v176 = v9;
  v177 = v8;
  if (v12 <= 1)
  {
    if (*(a3 + 4))
    {
      v17 = *(a3 + 8);
      if (v17)
      {
        v18 = *a1;
        if (v18 >= 1)
        {
          v19 = 0;
          for (i = 0; i != v18; ++i)
          {
            if (v10)
            {
              v21 = (v17 + 8 * *(*(v177 + 152) + 4 * i) * v10);
              v22 = (*(v9 + 96) + v19);
              v23 = v10;
              do
              {
                v24 = *v21++;
                a5.n128_u64[0] = v24;
                *v22++ = v24;
                --v23;
              }

              while (v23);
            }

            v19 += 8 * v10;
          }
        }

        v25 = a1[1];
        if (v25 >= 1)
        {
          v26 = 0;
          v27 = 0;
          v28 = v17 + 8 * v18 * v10;
          do
          {
            if (v10)
            {
              v29 = (v28 + 8 * *(*(v177 + 160) + 4 * v27) * v10);
              v30 = (*(v9 + 104) + v26);
              v31 = v10;
              do
              {
                v32 = *v29++;
                a5.n128_u64[0] = v32;
                *v30++ = v32;
                --v31;
              }

              while (v31);
            }

            ++v27;
            v26 += 8 * v10;
          }

          while (v27 != v25);
        }
      }
    }
  }

  else
  {
    if (v12 == 2)
    {
      v33 = *(a1 + 1);
      v183 = *a1;
      v184 = v33;
      v185 = *(a1 + 4);
      sub_236786828(&v183, *(v8 + 136), *(v8 + 144), *(v9 + 96), *(v9 + 104), a4);
LABEL_25:
      v7 = a1;
      v9 = v176;
      v5 = a4;
      goto LABEL_26;
    }

    if (v12 == 3)
    {
      v13 = *a1;
      v14 = sub_23670BE58(v13, v7[1], *(*(v7 + 1) + 8 * v7[1]), v10) + 4 * v13 * v10 + 8;
      if (v11 >= v14)
      {
        v16 = 0;
        v15 = a4;
        v14 = v11;
      }

      else
      {
        v15 = (*(v177 + 24))(v14);
        v16 = v15;
      }

      v34 = (4 * (*a1 * v10) + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = *(a1 + 1);
      v183 = *a1;
      v184 = v35;
      v185 = *(a1 + 4);
      sub_23670BEB4(&v183, v15, *(v176 + 96), *(v176 + 104), &v15[v34], v14 - v34);
      v7 = a1;
      v9 = v176;
      v5 = a4;
      if (v16)
      {
        (*(v177 + 32))(v16);
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  v36 = *(a3 + 8);
  if (v36 && *(a3 + 4) != 1)
  {
    v37 = *v7;
    v38 = &v36[8 * v37 * v10];
    v39 = *(v9 + 96);
    if (v39)
    {
      if (v37 >= 1)
      {
        for (j = 0; j != v37; ++j)
        {
          if (v10)
          {
            v41 = &v36[8 * *(*(v177 + 152) + 4 * j) * v10];
            v42 = v10;
            v43 = v39;
            do
            {
              v44 = *v43++;
              a5.n128_u64[0] = v44;
              *v41++ = v44;
              --v42;
            }

            while (v42);
          }

          v39 += v10;
        }
      }

      v45 = v7[1];
      if (v45 >= 1)
      {
        v46 = 0;
        for (k = 0; k != v45; ++k)
        {
          if (v10)
          {
            v48 = &v38[8 * *(*(v177 + 160) + 4 * k) * v10];
            v49 = (*(v9 + 104) + v46);
            v50 = v10;
            do
            {
              v51 = *v49++;
              a5.n128_u64[0] = v51;
              *v48++ = v51;
              --v50;
            }

            while (v50);
          }

          v46 += 8 * v10;
        }
      }
    }

    else
    {
      if (v37 * v10 >= 1)
      {
        memset_pattern16(v36, &unk_23681FAF0, 8 * (v37 * v10));
        v5 = a4;
        v7 = a1;
        v9 = v176;
      }

      if ((v7[1] * v10) >= 1)
      {
        memset_pattern16(v38, &unk_23681FAF0, 8 * v7[1] * v10);
        v5 = a4;
        v7 = a1;
        v9 = v176;
      }
    }
  }

  v52 = v177;
  if (*(*(v177 + 120) + 8 * *(v177 + 60)) >= 1)
  {
    v53 = *(v177 + 64);
    v54 = &v5[8 * v53 + 7] & 0xFFFFFFFFFFFFFFF8;
    if (&v5[v11] < v54 || &v5[v11] < ((v54 + 4 * v53 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      __break(1u);
    }

    bzero((&v5[8 * v53 + 7] & 0xFFFFFFFFFFFFFFF8), 4 * v53);
    v55 = a1;
    v56 = *(a1 + 28);
    LODWORD(v183) = v56;
    v57 = (v56 * v56);
    LODWORD(v58) = *(v177 + 60);
    if (v58 < 1)
    {
      v9 = v176;
    }

    else
    {
      v59 = 0;
      v60 = 8 * v57;
      v61 = 8 * v56;
      v9 = v176;
      v62 = v177;
      a2 = a4;
      do
      {
        v63 = v59;
        v64 = *(v62 + 120);
        v65 = *(v64 + 8 * v59++);
        v66 = *(v64 + 8 * v59);
        if (v65 != v66)
        {
          if (v65 < v66)
          {
            v67 = *(v177 + 128);
            v68 = v57 * v65;
            do
            {
              v69 = *(v67 + 4 * v65);
              *(v54 + 4 * v69) = v59;
              *&a2[8 * v69] = v68;
              ++v65;
              v68 += v57;
            }

            while (v65 < *(v64 + 8 * v59));
          }

          v70 = *(*(v177 + 160) + 4 * v63);
          v71 = *(v55 + 1);
          v72 = (v71 + 8 * v70);
          v73 = *v72;
          if (*v72 < v72[1])
          {
            v74 = v60 * v73;
            do
            {
              v75 = *(*(v55 + 2) + 4 * v73);
              if ((v75 & 0x80000000) == 0 && v75 < *v55 && v63 < *(v54 + 4 * v75))
              {
                v76 = *(v9 + 96);
                v77 = (*(v9 + 40) + 8 * *&a2[8 * v75]);
                v78 = *(v55 + 4);
                if (v76)
                {
                  if (v56)
                  {
                    v79 = 0;
                    v80 = (v76 + 8 * *(*(v177 + 136) + 4 * v75));
                    v81 = *(v9 + 104) + 8 * v63;
                    v82 = (v78 + v74);
                    do
                    {
                      v83 = v80;
                      v84 = v82;
                      v85 = v77;
                      v86 = v56;
                      do
                      {
                        v87 = *v83++;
                        v88 = v87;
                        v89 = *v84++;
                        a5.n128_f64[0] = v88 * v89 * *(v81 + 8 * v79);
                        *v85++ = a5.n128_u64[0];
                        --v86;
                      }

                      while (v86);
                      ++v79;
                      v77 += v61;
                      v82 = (v82 + v61);
                    }

                    while (v79 != v56);
                  }
                }

                else
                {
                  memcpy(v77, (v78 + 8 * v73 * v57), 8 * v57);
                  a2 = a4;
                  v55 = a1;
                  v9 = v176;
                  v71 = *(a1 + 1);
                }
              }

              ++v73;
              v74 += v60;
            }

            while (v73 < *(v71 + 8 * v70 + 8));
          }
        }

        v62 = v177;
        v58 = *(v177 + 60);
      }

      while (v59 < v58);
    }

    v90 = *(v177 + 96);
    if (v56 == 1)
    {
      if (v90 >= 1)
      {
        v91 = *(v177 + 120);
        v92 = *(v9 + 40);
        a5.n128_u64[0] = 1.0;
        do
        {
          v93 = *v91++;
          *(v92 + 8 * v93) = 1.0 / *(v92 + 8 * v93);
          --v90;
        }

        while (v90);
      }

      v94 = *(v177 + 100);
      if (v94 >= 1)
      {
        LODWORD(v97) = v58 - v94;
        v95 = *(v177 + 120);
        v96 = *(v9 + 40);
        v97 = v97;
        a5.n128_u64[0] = 1.0;
        do
        {
          *(v96 + 8 * *(v95 + 8 * v97)) = 1.0 / *(v96 + 8 * *(v95 + 8 * v97));
          ++v97;
        }

        while (v97 < v58);
      }
    }

    else if (v90 < 1)
    {
LABEL_85:
      v99 = *(v177 + 100);
      if (v99 >= 1)
      {
        v100 = *(v177 + 60) - v99;
        do
        {
          v199[0] = 0;
          dgetrf_NEWLAPACK();
          v9 = v176;
          if (v199[0])
          {
            break;
          }

          ++v100;
          LODWORD(v90) = v90 + 1;
        }

        while (v100 < *(v177 + 60));
      }
    }

    else
    {
      v98 = 0;
      while (1)
      {
        v199[0] = 0;
        dgetrf_NEWLAPACK();
        v9 = v176;
        if (v199[0])
        {
          break;
        }

        if (++v98 >= *(v177 + 96))
        {
          LODWORD(v90) = *(v177 + 96);
          goto LABEL_85;
        }
      }
    }

    v52 = v177;
    v5 = a4;
    v7 = a1;
  }

  v101 = *(v7 + 28);
  v102 = *(v52 + 168);
  v103 = &v5[8 * v102];
  v104 = *(v52 + 52);
  if (v104 >= 2)
  {
    _X0 = 0;
    v106 = *(v52 + 56);
    v107 = 6 * v106;
    v108 = 4 * v106 + 8;
    if (v173 != 82)
    {
      v108 = 0;
    }

    v109 = v108 + 4 * v107 + 48;
    v199[0] = v104;
    atomic_store(0, &v199[1]);
    atomic_store(0, (v199 | 0xC));
    atomic_store(0, v200);
    v110 = v201;
    do
    {
      _X5 = v202;
      __asm { CASPAL          X4, X5, X0, X1, [X25] }

      _ZF = _X4 == v110;
      v110 = _X4;
    }

    while (!_ZF);
    v203 = v108 + 4 * v107 + 48;
    v204 = &v5[8 * v102];
    v117 = &v103[40 * *(v177 + 336) + ((v109 * v104 + 7) & 0xFFFFFFFFFFFFFFF8)];
    LOBYTE(v183) = v173;
    *(&v183 + 1) = v7;
    *&v184 = v177;
    DWORD2(v184) = v101;
    v185 = v9;
    v186 = v5;
    v187 = *(v9 + 120);
    v188 = &v103[(v109 * v104 + 7) & 0xFFFFFFFFFFFFFFF8];
    v189 = sub_2367921D4(256, v117 + 16 * v104);
    v190 = v118;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v194 = v117;
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    v205 = &v183;
    if (*(v177 + 52))
    {
      v119 = 0;
      v120 = 0;
      do
      {
        v121 = *(v177 + 56);
        madvise(v103, 8 * v121, 3);
        madvise(&v103[8 * v121], 0x64uLL, 3);
        madvise(&v103[12 * v121], 0x64uLL, 3);
        madvise(&v103[16 * v121], 0x64uLL, 3);
        madvise(&v103[20 * v121], 0x64uLL, 3);
        *(v194 + v119 + 8) = *(v177 + 392);
        v122 = (*(v177 + 24))();
        v123 = (v194 + v119);
        *v123 = v122;
        madvise(v122, v123[1], 3);
        ++v120;
        v119 += 16;
        v103 += v109;
      }

      while (v120 < *(v177 + 52));
    }

    if (*(v176 + 128) >= 0x8000000uLL)
    {
      v124 = 0x8000000;
    }

    else
    {
      v124 = *(v176 + 128);
    }

    madvise(*(v176 + 120), v124, 3);
    if (*(v177 + 336) >= 1)
    {
      _X20 = 0;
      v126 = 0;
      v127 = 0;
      do
      {
        v128 = v127;
        if (*(*(v177 + 176) + 4 * *(*(v177 + 344) + 4 * v127++)) >= *(*(v177 + 112) + 4 * (v126 + 1)))
        {
          ++v126;
        }

        v130 = *(*(v177 + 368) + 8 * v127) - *(*(v177 + 368) + 8 * v128);
        v131 = &v188[40 * v128];
        atomic_store(v130, v131);
        *(v131 + 2) = v128;
        *(v131 + 3) = v126;
        *(v131 + 2) = sub_2367DB600;
        if (!v130)
        {
          _X0 = 0;
          _X1 = 0;
          __asm { CASP            X0, X1, X0, X1, [X24] }

          *(v131 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
          *(v131 + 4) = 0;
          v135 = _X0 & 1;
          _X2 = v135 | v131;
          _X5 = 0;
          __asm { CASPL           X4, X5, X2, X3, [X24] }

          while (_X4 != _X0)
          {
            _X1 = 0;
            __asm { CASP            X0, X1, X20, X21, [X10] }

            *(v131 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
            *(v131 + 4) = 0;
            v135 = _X0 & 1;
            _X2 = v135 | v131;
            _X5 = 0;
            __asm { CASPL           X4, X5, X2, X3, [X10] }
          }

          if (v135)
          {
            __ulock_wake();
          }
        }
      }

      while (v127 < *(v177 + 336));
    }

    _X0 = 0;
    _X1 = 0;
    v179 = xmmword_28499C2C8;
    v180 = off_28499C2D8;
    __asm { CASP            X0, X1, X0, X1, [X8] }

    v181 = _X0 & 0xFFFFFFFFFFFFFFFELL;
    v182 = 0;
    _X2 = &v179 | _X0 & 1;
    _X5 = 0;
    __asm { CASPL           X4, X5, X2, X3, [X8] }

    if (_X4 == _X0)
    {
      if ((_X0 & 1) == 0)
      {
        goto LABEL_127;
      }
    }

    else
    {
      _X2 = 0;
      do
      {
        _X5 = 0;
        __asm { CASP            X4, X5, X2, X3, [X8] }

        v181 = _X4 & 0xFFFFFFFFFFFFFFFELL;
        v182 = 0;
        _X0 = &v179 | _X4 & 1;
        _X7 = 0;
        __asm { CASPL           X6, X7, X0, X1, [X8] }
      }

      while (_X6 != _X4);
      if ((_X4 & 1) == 0)
      {
        goto LABEL_127;
      }
    }

    __ulock_wake();
LABEL_127:
    v161 = sub_2366FCD2C(v199, 1);
    if (v161)
    {
      if (v191)
      {
        v192 = v191;
        operator delete(v191);
      }

      goto LABEL_138;
    }

    if (*(v177 + 52))
    {
      v170 = 0;
      v171 = 0;
      do
      {
        (*(v177 + 32))(*(v194 + v170));
        ++v171;
        v170 += 16;
      }

      while (v171 < *(v177 + 52));
    }

    if (v191)
    {
      v192 = v191;
      operator delete(v191);
    }

LABEL_137:
    v161 = 0;
    goto LABEL_138;
  }

  v148 = *(v172 + 6);
  v149 = *(v9 + 120);
  v150 = *(v9 + 128);
  *v199 = v149;
  v178 = 0;
  LODWORD(v179) = 0;
  v151 = (*(v52 + 24))(*(v52 + 392), a2, a5);
  v153 = *(v177 + 392);
  *&v183 = v151;
  *(&v183 + 1) = v153;
  if (*(v177 + 168) < 1)
  {
    v162 = 0;
    v163 = 0;
    v160 = v176;
LABEL_131:
    atomic_store(v163, (v160 + 136));
    atomic_store(v162, (v160 + 140));
    (*(v177 + 32))(v151);
    goto LABEL_137;
  }

  v154 = 0;
  v155 = 0;
  v156 = v102;
  v157 = v149 + v150;
  v158 = v148 - 8 * v102;
  v160 = v176;
  v159 = v177;
  while (1)
  {
    if (*(*(v159 + 176) + 4 * v154) >= *(*(v159 + 112) + 4 * (v155 + 1)))
    {
      ++v155;
    }

    v161 = sub_2367DBA90(v154, v155, a1, v173, v159, v101, v160, v152, a4, v156, v199, v157, &v179, &v178, v103, v158, &v183, 0, 0);
    if (v161)
    {
      break;
    }

    ++v154;
    v160 = v176;
    v159 = v177;
    if (v154 >= *(v177 + 168))
    {
      v162 = v178;
      v163 = v179;
      v151 = v183;
      goto LABEL_131;
    }
  }

LABEL_138:
  *v172 = v161;
}

void sub_2367D9E18(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    *(v1 + 88) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2367D9E50(uint64_t result)
{
  if (*result != -3)
  {
    v1 = *(result + 32);
    v2 = *(result + 80);
    v3 = v1[42];
    v4 = 40 * v1[84];
    v6 = v1[13];
    v5 = v1[14];
    *(result + 88) = v4 + 12 * v3 + (*MEMORY[0x277D85FA0] + 4 * v5) * v6 + 56;
    LODWORD(v2) = atomic_load((v2 + 140));
    *(result + 96) = 16 * (v5 + v6 * v2);
  }

  return result;
}

uint64_t _SparseFactorLU_Double@<X0>(int a1@<W0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v163 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10 = a2[1];
  v11 = *(*(a2 + 1) + 8 * v10);
  if (a1 == 80)
  {
    v12 = 83;
  }

  else
  {
    v12 = a1;
  }

  *a5 = 0u;
  *(a5 + 16) = 0u;
  if (v9 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  *(a5 + 32) = 0uLL;
  *(a5 + 48) = 0uLL;
  *(a5 + 64) = 0uLL;
  *a5 = -3;
  v14 = a2[6] & 1;
  *(a5 + 4) = v14;
  *(a5 + 8) = -3;
  *(a5 + 12) = v9;
  *(a5 + 16) = v10;
  *(a5 + 20) = v14;
  *(a5 + 24) = *(a2 + 28);
  *(a5 + 25) = v12;
  *(a5 + 80) = 0;
  *(a5 + 32) = 0uLL;
  *(a5 + 48) = 0uLL;
  *(a5 + 57) = 0uLL;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  v161 = 0;
  if (sub_236720B94(v13, v11, &v161))
  {
    v15 = *(a3 + 40);
    if (!v15)
    {
      v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v22)
      {
        sub_23672B05C(v22, v23, v24, v25, v26, v27, v28, v29);
      }

      _SparseTrap();
    }

    memset(&__str[69], 0, 187);
    strcpy(__str, "Computation of workspace required for symbolic analysis overflowed.\n");
    v16 = __str;
    goto LABEL_153;
  }

  v17 = v161;
  v18 = (*(a3 + 24))(v161);
  if (!v18)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v17);
      return (*(a3 + 40))(__str);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v19 = v18;
  v160 = v18;
  if (*(a4 + 4) == 4)
  {
    if (*(a2 + 28) != 1)
    {
      v20 = *(a3 + 40);
      if (!v20)
      {
        v81 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v81)
        {
          sub_23672ACD0(v81, v82, v83, v84, v85, v86, v87, v88);
        }

        goto LABEL_152;
      }

      memset(&__str[98], 0, 158);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is only supported for blockSize=1\n");
LABEL_114:
      v20(__str);
      v15 = *(a3 + 32);
      v16 = v160;
LABEL_153:
      result = v15(v16);
      v153 = -4;
LABEL_154:
      *a5 = v153;
      return result;
    }

    if (*(a3 + 16))
    {
      v20 = *(a3 + 40);
      if (v20)
      {
        memset(&__str[123], 0, 133);
        v21 = "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is not supported with sfoptions.ignoreRowsAndColumns!=NULL\n";
        strcpy(&__str[64], "s not supported with sfoptions.ignoreRowsAndColumns!=NULL\n");
LABEL_113:
        v79 = *(v21 + 1);
        *__str = *v21;
        *&__str[16] = v79;
        v80 = *(v21 + 3);
        *&__str[32] = *(v21 + 2);
        *&__str[48] = v80;
        goto LABEL_114;
      }

      v114 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v114)
      {
        sub_23672AD0C(v114, v115, v116, v117, v118, v119, v120, v121);
      }

      goto LABEL_152;
    }

    if (*(a3 + 4) == 1)
    {
      v20 = *(a3 + 40);
      if (v20)
      {
        memset(&__str[125], 0, 131);
        v21 = "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is not supported with sfoptions.orderMethod==SparseOrderUser\n";
        strcpy(&__str[64], "s not supported with sfoptions.orderMethod==SparseOrderUser\n");
        goto LABEL_113;
      }

      v137 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v137)
      {
        sub_23672B020(v137, v138, v139, v140, v141, v142, v143, v144);
      }

LABEL_152:
      _SparseTrap();
    }

    v31 = (*(a3 + 24))(4 * *a2);
    v122 = (*(a3 + 24))(8 * (a2[1] + *a2));
    v123 = *a2;
    v156 = v122;
    v155 = (v122 + 8 * v123);
    v124 = sub_23670BE58(v123, a2[1], *(*(a2 + 1) + 8 * a2[1]), 1);
    v125 = v160;
    if (v124 >= v17)
    {
      v158 = v124;
      v125 = (*(a3 + 24))(v124);
      v124 = v158;
    }

    v159 = v125;
    v126 = *(a2 + 1);
    *__str = *a2;
    *&__str[16] = v126;
    *&__str[32] = *(a2 + 4);
    v127 = sub_23670BEB4(__str, v31, v156, v155, v125, v124);
    v19 = v160;
    if (v159 != v160)
    {
      v154 = v127;
      (*(a3 + 32))(v159);
      v127 = v154;
      v19 = v160;
    }

    if (v127 != a2[1])
    {
      v128 = *(a3 + 40);
      if (!v128)
      {
        v145 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v145)
        {
          sub_23672AD48(v145, v146, v147, v148, v149, v150, v151, v152);
        }

        _SparseTrap();
      }

      memset(&__str[39], 0, 217);
      strcpy(__str, "Matrix is structurally rank deficient\n");
      v128(__str);
      (*(a3 + 32))(v31);
      (*(a3 + 32))(v156);
      result = (*(a3 + 32))(v160);
      v153 = -2;
      goto LABEL_154;
    }
  }

  else
  {
    v155 = 0;
    v156 = 0;
    v31 = 0;
  }

  v32 = *(a2 + 1);
  *__str = *a2;
  *&__str[16] = v32;
  v157 = sub_2367D71A4(v12, __str, a3, v31, a5, v19);
  if (v31)
  {
    (*(a3 + 32))(v31);
  }

  if (!v157)
  {
    return (*(a3 + 32))(v160);
  }

  if (sub_2367D88D8(v12, *(a2 + 28), v157, (a5 + 56), (a5 + 64)))
  {
    v34 = *(a3 + 40);
    if (!v34)
    {
      v89 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v89)
      {
        sub_23672AFE4(v89, v90, v91, v92, v93, v94, v95, v96);
      }

      _SparseTrap();
    }

    memset(&__str[40], 0, 216);
    strcpy(__str, "Computation of factor size overflowed.\n");
    v34(__str);
    (*(a3 + 32))(v160);
    return sub_23680EF08(v157, a3);
  }

  v35 = 0;
  v36 = *(v157 + 64);
  *(v157 + 392) = 8;
  v37 = *(v157 + 52);
  v38 = *(v157 + 56);
  v39 = v38 >> 31;
  if (v38 >= 0)
  {
    v40 = v38;
  }

  else
  {
    v40 = -v38;
  }

  v41 = 8 * (v40 + 2 * v40);
  if (v38 < 0)
  {
    v41 = -8 * (v40 + 2 * v40);
  }

  v42 = __CFADD__(v41, 48);
  v43 = v41 + 48;
  v44 = v42;
  v45 = v38 < 0;
  v46 = v38 < 0;
  v47 = 4 * v40;
  if (v45)
  {
    v47 = -v47;
  }

  v42 = __CFADD__(v47, 8);
  v48 = v47 + 8;
  if (v42)
  {
    v46 = 1;
  }

  v42 = __CFADD__(v48, v43);
  v49 = v48 + v43;
  v50 = v42;
  if (v46)
  {
    v49 = v43;
  }

  v51 = v46 | v50;
  if (v12 != 82)
  {
    v51 = v39;
    v49 = v43;
  }

  v52 = v44 | v51;
  v53 = v37 < 0;
  if (v37 >= 0)
  {
    v54 = v37;
  }

  else
  {
    v54 = -v37;
  }

  v55 = !is_mul_ok(v54, v49);
  v56 = v54 * v49;
  if (!(v54 * v49))
  {
    v53 = 0;
  }

  v57 = 1;
  if (!v55 && !v53)
  {
    v35 = 0;
    if (v37 >= 0)
    {
      v58 = v56;
    }

    else
    {
      v58 = -v56;
    }

    v59 = *(v157 + 168);
    if (v59 >= 0)
    {
      v60 = *(v157 + 168);
    }

    else
    {
      v60 = -v59;
    }

    v61 = 8 * v60;
    if (v59 < 0)
    {
      v61 = -v61;
    }

    v42 = __CFADD__(v58, v61);
    v62 = v58 + v61;
    v63 = v42;
    v57 = 1;
    if ((v59 & 0x80000000) == 0 && (v63 & 1) == 0)
    {
      v35 = v62 + 8;
      v57 = v62 >= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v64 = v57 | v52 & 1;
  if (v37 >= 2)
  {
    v65 = *(v157 + 336);
    if (v65 >= 0)
    {
      v66 = *(v157 + 336);
    }

    else
    {
      v66 = -v65;
    }

    v67 = 40 * v66;
    if (v65 < 0)
    {
      v67 = -v67;
    }

    v42 = __CFADD__(v35, v67);
    v68 = v35 + v67;
    v69 = v42;
    v42 = __CFADD__(v68, 49152);
    v70 = v68 + 49152;
    v71 = v42;
    v42 = __CFADD__(v70, 16 * v54);
    v72 = v70 + 16 * v54;
    v73 = v42;
    v42 = __CFADD__(v72, 24);
    v74 = v72 + 24;
    v33 = v42;
    if (v73)
    {
      v74 = v35;
      v75 = 1;
    }

    else
    {
      v75 = v33;
    }

    if (v71)
    {
      v74 = v35;
      v75 = 1;
    }

    if (v69)
    {
      v74 = v35;
      v75 = 1;
    }

    if (v65 < 0)
    {
      v76 = 1;
    }

    else
    {
      v35 = v74;
      v76 = v75;
    }

    v64 |= v76;
  }

  v77 = 12 * v36 + 16;
  if (v77 <= v35)
  {
    v78 = v35;
  }

  else
  {
    v78 = v77;
  }

  *(a5 + 40) = v78;
  *(a5 + 48) = v78;
  if (v64)
  {
    v20 = *(a3 + 40);
    if (!v20)
    {
      v129 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v129)
      {
        sub_23672AFA8(v129, v130, v131, v132, v133, v134, v135, v136);
      }

      goto LABEL_152;
    }

    memset(&__str[73], 0, 183);
    strcpy(__str, "Computation of workspace required for numeric factorization overflowed.\n");
    goto LABEL_114;
  }

  if (v78 > v17)
  {
    (*(a3 + 32))(v160, v33);
    v160 = (*(a3 + 24))(v78);
    if (!v160)
    {
      if (*(a3 + 40))
      {
        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v78);
        return (*(a3 + 40))(__str);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
LABEL_32:
        sub_2366F716C();
      }

LABEL_33:
      _SparseTrap();
    }
  }

  *(a5 + 8) = 0;
  *(a5 + 32) = v157;
  v97 = sub_2367D8F0C(v12, *(a5 + 24), v157, *(a5 + 64), a4, 0);
  if (!v97)
  {
    return (*(a3 + 32))(v160);
  }

  *(a5 + 80) = v97;
  if (v156)
  {
    v99 = *(a2 + 28);
    v100 = *a2;
    if (v100 >= 1)
    {
      v101 = 0;
      for (i = 0; i != v100; ++i)
      {
        if (v99)
        {
          v103 = (*(v97 + 96) + v101);
          v104 = &v156[*(*(v157 + 152) + 4 * i) * v99];
          v105 = v99;
          do
          {
            v106 = *v104++;
            *v103++ = v106;
            --v105;
          }

          while (v105);
        }

        v101 += 8 * v99;
      }
    }

    v107 = a2[1];
    if (v107 >= 1)
    {
      v108 = 0;
      for (j = 0; j != v107; ++j)
      {
        if (v99)
        {
          v110 = (*(v97 + 104) + v108);
          v111 = &v155[*(*(v157 + 160) + 4 * j) * v99];
          v112 = v99;
          do
          {
            v113 = *v111++;
            *v110++ = v113;
            --v112;
          }

          while (v112);
        }

        v108 += 8 * v99;
      }
    }

    v98.n128_f64[0] = (*(a3 + 32))(v156);
  }

  _SparseRefactorLU_Double(a2, a5, a4, v160, v98);
  (*(a3 + 32))(v160);
  return sub_2367D9E50(a5);
}

uint64_t _SparseUpdatePartialRefactorLU_Double(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v195 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = *(a1 + 80);
  v8 = *(a1 + 25);
  v9 = *(a4 + 28);
  v167 = v9;
  v10 = *(v6 + 168);
  v11 = *(v6 + 56);
  v143 = 8 * v10 + 16 * v11 + 4 * (9 * v11 + v10);
  v12 = v10 + 8 * v11 + 8 * v10 + 40 * *(v6 + 336) + (v143 + 120) * *(v6 + 52) + 49208;
  v13 = (*(v6 + 24))(v12);
  v14 = *(v6 + 56);
  v15 = (4 * v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = v13 + v15;
  v144 = v14;
  if (*(v6 + 168) >= 1)
  {
    v17 = 0;
    v18 = v7[14];
    v19 = *(v6 + 176);
    while (1)
    {
      if (v8 == 83)
      {
        v20 = *(v7[9] + 4 * v17);
        v21 = *(v7[10] + 4 * v17);
        v22 = *(v7[11] + 4 * v17);
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
      }

      v23 = v17 + 1;
      v24 = v20 + (*(v19 + 4 * (v17 + 1)) - *(v19 + 4 * v17)) * v9;
      if (v8 == 83)
      {
        v25 = *(v7[8] + 4 * v17);
      }

      else
      {
        v25 = v24;
        if (v8 == 81)
        {
          if (v24 >= 1)
          {
            v26 = 0;
            do
            {
              *(v13 + 4 * (v26 + *(v19 + 4 * v17) * v9)) = v17;
              *(v16 + 4 * (v26 + *(v19 + 4 * v17) * v9)) = v17;
              ++v26;
            }

            while (v24 != v26);
          }

          goto LABEL_16;
        }
      }

      if (v25 >= 1)
      {
        v27 = v24;
        v28 = v24 + v21 + (*(*(v6 + 184) + 8 * v23) - *(*(v6 + 184) + 8 * v17)) * v9;
        v29 = v25;
        v30 = *(v18 + 8 * v17) + 8;
        v31 = 8 * (v22 + (*(*(v6 + 200) + 8 * v23) - *(*(v6 + 200) + 8 * v17)) * v9) + 8 * v28;
        v32 = (v30 + (v31 | 4) * v27 + 4 * v21);
        v33 = (v30 + v31 * v27);
        do
        {
          v34 = *v33++;
          *(v13 + 4 * v34) = v17;
          v35 = *v32++;
          *(v16 + 4 * v35) = v17;
          --v29;
        }

        while (v29);
      }

LABEL_16:
      ++v17;
      if (v23 >= *(v6 + 168))
      {
        v14 = *(v6 + 56);
        break;
      }
    }
  }

  memset(__str, 0, sizeof(__str));
  v176 = 0;
  v177 = v6;
  v168[0] = v6;
  sub_23672A590(v166, v14, __str, v168);
  if (*__str)
  {
    *&__str[8] = *__str;
    (*(v177 + 32))();
  }

  v36 = *(v6 + 56);
  memset(__str, 0, sizeof(__str));
  v176 = 0;
  v177 = v6;
  v168[0] = v6;
  sub_23672A590(v165, v36, __str, v168);
  v142 = v12;
  v149 = v8;
  v151 = v7;
  v146 = a1;
  if (*__str)
  {
    *&__str[8] = *__str;
    (*(v177 + 32))();
  }

  v141 = v15;
  v37 = v16 + v15;
  v150 = *(v6 + 168);
  bzero((v16 + v15), v150);
  if (a2 >= 1)
  {
    v38 = 0;
    v39 = (v9 * v9);
    v40 = 8 * v39;
    v153 = a2;
    v147 = -8 * v39;
    while (1)
    {
      v41 = (a3 + 8 * v38);
      v43 = *v41;
      v42 = v41[1];
      v44 = v43 / v167;
      v45 = v42 / v167;
      v46 = *(*(v6 + 136) + 4 * (v43 / v167));
      v47 = *(*(v6 + 144) + 4 * (v42 / v167));
      v48 = v43 % v167 + v46 * v167;
      LODWORD(v168[0]) = v48;
      v49 = v42 % v167 + v47 * v167;
      LODWORD(v164[0]) = v49;
      v50 = *(v6 + 72);
      if (v50 && (*(v50 + v43) & 1) != 0)
      {
        goto LABEL_58;
      }

      v51 = *(v6 + 80);
      if (v51)
      {
        if (*(v51 + v42))
        {
          goto LABEL_58;
        }
      }

      if (v47 < *(v6 + 96))
      {
        goto LABEL_35;
      }

      if (v47 >= *(v6 + 60) - *(v6 + 100))
      {
        goto LABEL_35;
      }

      v52 = *(v6 + 112);
      do
      {
        v54 = *v52++;
        v53 = v54;
      }

      while (v47 >= v54);
      if (v46 >= v53)
      {
LABEL_35:
        v59 = (*(v6 + 120) + 8 * v47);
        v61 = *v59;
        v60 = v59[1];
        v62 = v60 <= v61;
        v63 = v60 - v61;
        if (v62)
        {
LABEL_39:
          v67 = 0;
        }

        else
        {
          v64 = v147 * v61;
          v65 = (*(v6 + 128) + 4 * v61);
          while (1)
          {
            v66 = *v65++;
            if (v66 == v44)
            {
              break;
            }

            v64 -= v40;
            if (!--v63)
            {
              goto LABEL_39;
            }
          }

          v67 = (*(v151 + 40) - v64);
        }

        v68 = (*(a4 + 8) + 8 * v45);
        v70 = *v68;
        v69 = v68[1];
        v62 = v69 <= v70;
        v71 = v69 - v70;
        if (v62)
        {
LABEL_45:
          v75 = 0;
        }

        else
        {
          v72 = v147 * v70;
          v73 = (*(a4 + 16) + 4 * v70);
          while (1)
          {
            v74 = *v73++;
            if (v74 == v44)
            {
              break;
            }

            v72 -= v40;
            if (!--v71)
            {
              goto LABEL_45;
            }
          }

          v75 = (*(a4 + 32) - v72);
        }

        memcpy(v67, v75, v40);
        if (v46 == v47)
        {
          if (v167 == 1)
          {
            *v67 = 1.0 / *v67;
          }

          else
          {
            LODWORD(v163[0]) = 0;
            dgetrf_NEWLAPACK();
          }
        }

        goto LABEL_58;
      }

      v55 = *(v13 + 4 * v48);
      v56 = *(v16 + 4 * v49);
      if (v55 < v56)
      {
        break;
      }

      if (v55 > v56)
      {
        v57 = v166[0] + 32 * v56;
        v58 = v168;
        goto LABEL_53;
      }

LABEL_54:
      if (v55 <= v56)
      {
        v76 = v56;
      }

      else
      {
        v76 = v55;
      }

      *(v37 + v76) = 1;
LABEL_58:
      if (++v38 == v153)
      {
        goto LABEL_59;
      }
    }

    v57 = v165[0] + 32 * v55;
    v58 = v164;
LABEL_53:
    sub_236725158(v57, v58);
    goto LABEL_54;
  }

LABEL_59:
  v156 = (v37 + ((v150 + 7) & 0xFFFFFFFFFFFFFFF8));
  v77 = *(v6 + 168);
  if (v77 >= 1)
  {
    for (i = 0; i != v77; ++i)
    {
      if ((*(v37 + i) & 1) == 0)
      {
        v79 = (*(v6 + 240) + 8 * i);
        v81 = *v79;
        v80 = v79[1];
        v62 = v80 <= v81;
        v82 = v80 - v81;
        if (!v62)
        {
          v83 = (*(v6 + 248) + 4 * v81);
          while (1)
          {
            v84 = *v83++;
            if (*(v37 + v84) == 1)
            {
              break;
            }

            if (!--v82)
            {
              goto LABEL_68;
            }
          }

          *(v37 + i) = 1;
        }
      }

LABEL_68:
      ;
    }
  }

  v154 = v144 & 0x3FFFFFFFFFFFFFFFLL;
  v85 = v77;
  v86 = 8 * v77;
  v87 = &v156[v86];
  bzero(v156, v86);
  v88 = *(v6 + 52);
  if (v88 != 1)
  {
    _X0 = 0;
    LODWORD(v168[0]) = *(v6 + 52);
    atomic_store(0, v168 + 1);
    atomic_store(0, (v168 | 0xC));
    atomic_store(0, v169);
    v109 = v170;
    do
    {
      _X5 = v171;
      __asm { CASPAL          X4, X5, X0, X1, [X19] }

      _ZF = _X4 == v109;
      v109 = _X4;
    }

    while (!_ZF);
    v172 = v143 + 104;
    v173 = &v156[v86];
    v174 = 0;
    v116 = &v87[40 * *(v6 + 336) + (((v143 + 104) * v88 + 7) & 0xFFFFFFFFFFFFFFF8)];
    __str[0] = v149;
    *&__str[8] = a4;
    v176 = v6;
    LODWORD(v177) = v167;
    v178 = v151;
    v179 = v37 + ((v150 + 7) & 0xFFFFFFFFFFFFFFF8);
    v180 = 0;
    v181 = &v87[((v143 + 104) * v88 + 7) & 0xFFFFFFFFFFFFFFF8];
    v182 = sub_2367921D4(256, v116 + 16 * v88);
    v183 = v117;
    __p[0] = 0;
    __p[1] = 0;
    v185 = 0;
    v186 = v116;
    v187 = v37;
    v188 = v150;
    v189 = v13;
    v190 = v144 & 0x3FFFFFFFFFFFFFFFLL;
    v191 = v16;
    v192 = v144 & 0x3FFFFFFFFFFFFFFFLL;
    v193 = v166;
    v194 = v165;
    v174 = __str;
    if (*(v6 + 52))
    {
      v118 = 0;
      v119 = 0;
      do
      {
        *(v116 + v118 + 8) = *(v6 + 392);
        v120 = (*(v6 + 24))();
        v116 = v186;
        *(v186 + v118) = v120;
        ++v119;
        v118 += 16;
      }

      while (v119 < *(v6 + 52));
    }

    if (*(v6 + 336) >= 1)
    {
      _X22 = 0;
      v122 = 0;
      v123 = 0;
      do
      {
        v124 = v123;
        v62 = *(*(v6 + 176) + 4 * *(*(v6 + 344) + 4 * v123++)) < *(*(v6 + 112) + 4 * (v122 + 1));
        if (!v62)
        {
          ++v122;
        }

        v125 = *(*(v6 + 368) + 8 * v123) - *(*(v6 + 368) + 8 * v124);
        v126 = &v181[40 * v124];
        atomic_store(v125, v126);
        *(v126 + 2) = v124;
        *(v126 + 3) = v122;
        *(v126 + 2) = sub_2367E31EC;
        if (!v125)
        {
          _X0 = 0;
          _X1 = 0;
          __asm { CASP            X0, X1, X0, X1, [X27] }

          *(v126 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
          *(v126 + 4) = 0;
          v130 = _X0 & 1;
          _X2 = v130 | v126;
          _X5 = 0;
          __asm { CASPL           X4, X5, X2, X3, [X27] }

          while (_X4 != _X0)
          {
            _X1 = 0;
            __asm { CASP            X0, X1, X22, X23, [X10] }

            *(v126 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
            *(v126 + 4) = 0;
            v130 = _X0 & 1;
            _X2 = v130 | v126;
            _X5 = 0;
            __asm { CASPL           X4, X5, X2, X3, [X10] }
          }

          if (v130)
          {
            __ulock_wake();
          }
        }
      }

      while (v123 < *(v6 + 336));
    }

    v137 = sub_2366FCD2C(v168, 1);
    v107 = v137;
    if (!v137)
    {
      if (*(v6 + 52))
      {
        v138 = 0;
        v139 = 0;
        do
        {
          (*(v6 + 32))(*(v186 + v138));
          ++v139;
          v138 += 16;
        }

        while (v139 < *(v6 + 52));
      }

      v107 = -3;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v137)
    {
      goto LABEL_106;
    }

LABEL_105:
    (*(v6 + 32))(v13);
    v107 = 0;
    goto LABEL_106;
  }

  v89 = *(v6 + 56);
  v90 = (4 * v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = &v87[v90];
  *__str = &v156[v86];
  *&__str[8] = v89 & 0x3FFFFFFFFFFFFFFFLL;
  LODWORD(v176) = 1;
  bzero(v87, 4 * v89);
  v92 = *(v6 + 168);
  v93 = 4 * v92;
  v168[0] = v91;
  v168[1] = v92 & 0x3FFFFFFFFFFFFFFFLL;
  v169[0] = 1;
  v145 = v91;
  bzero(v91, 4 * v92);
  v164[0] = 0;
  v164[1] = 0;
  v163[0] = 0;
  v163[1] = 0;
  v162[0] = 0;
  v162[1] = 0;
  v161[0] = 0;
  v161[1] = 0;
  v160[0] = 0;
  v160[1] = 0;
  v94 = (*(v6 + 24))(*(v6 + 392));
  v95 = *(v6 + 392);
  v159[0] = v94;
  v159[1] = v95;
  v96 = v151;
  v97 = (v151 + 136);
  LODWORD(v95) = atomic_load((v151 + 136));
  v158 = v95;
  v98 = (v96 + 140);
  v99 = atomic_load((v96 + 140));
  v157 = v99;
  if (*(v6 + 168) < 1)
  {
LABEL_79:
    atomic_store(v158, v97);
    atomic_store(v99, v98);
    (*(v6 + 32))(v161[0]);
    (*(v6 + 32))(v160[0]);
    (*(v6 + 32))(v164[0]);
    (*(v6 + 32))(v163[0]);
    (*(v6 + 32))(v162[0]);
    goto LABEL_105;
  }

  v100 = 0;
  v101 = 0;
  v102 = v93;
  v103 = 0;
  v148 = v85;
  v104 = (v102 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = v142 - v104 - (((v150 + 7) & 0xFFFFFFFFFFFFFFF8) + 2 * v141 + v86 + v90);
  v106 = &v145[v104];
  while (1)
  {
    if (*(*(v6 + 176) + 4 * v101) >= *(*(v6 + 112) + 4 * (v103 + 1)))
    {
      ++v103;
    }

    if (*(v37 + v101) == 1 || (sub_2367DE38C(v101, a4, v149, v6, v167, v151, v166, v165, v161, v160, v164, v163, v162, __str, v37, v150, v106), (*(v37 + v101) & 1) != 0))
    {
      *(v165[0] + v100 + 8) = *(v165[0] + v100);
      *(v166[0] + v100 + 8) = *(v166[0] + v100);
      v107 = sub_2367E064C(v101, v103, a4, v149, v6, v167, v151, &v158, &v157, v156, v148, v164, v163, v162, __str, v168, v37, v150, v13, v154, v16, v154, v106, v105, v159, 0, 0);
      if (v107)
      {
        break;
      }
    }

    ++v101;
    v100 += 32;
    if (v101 >= *(v6 + 168))
    {
      v99 = v157;
      v97 = (v151 + 136);
      v98 = (v151 + 140);
      goto LABEL_79;
    }
  }

  (*(v6 + 32))(v161[0]);
  (*(v6 + 32))(v160[0]);
  (*(v6 + 32))(v164[0]);
  (*(v6 + 32))(v163[0]);
  (*(v6 + 32))(v162[0]);
  (*(v6 + 32))(v13);
LABEL_106:
  *__str = v165;
  sub_23672A890(__str);
  *__str = v166;
  sub_23672A890(__str);
  *v146 = v107;
  return sub_2367D9E50(v146);
}

void *sub_2367DB600(void *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = result;
  v88 = *MEMORY[0x277D85DE8];
  v9 = result[1];
  v10 = *(v9 + 64);
  v11 = *(v10 + 2);
  v12 = *(v11 + 344);
  v13 = *(v12 + 4 * a2);
  v14 = (a2 << 32) + 0x100000000;
  v15 = *(v12 + (v14 >> 30));
  v16 = *(v10 + 6);
  v17 = 8 * (v16 * v16) * *(*(v11 + 384) + 8 * a2);
  if ((*v10 & 0xFE) == 0x52)
  {
    v17 += 8 * v16 * (*(*(v11 + 176) + 4 * v15) - *(*(v11 + 176) + 4 * v13));
  }

  v18 = result[5];
  v19 = *(v9 + 48);
  v20 = *(v11 + 168);
  v21 = (v17 + 24 * (v15 - v13) + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  v22 = *(v10 + 4);
  v23 = *(v10 + 5);
  v24 = *(v22 + 120) + *(v22 + 128);
  v25 = *(v10 + 6);
  v26 = (v25 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v24 < v26)
  {
LABEL_4:
    v73 = 0;
LABEL_5:
    v27 = *(v11 + 40);
    if (!v27)
    {
      v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v35)
      {
        sub_23672B110(v35, v36, v37, v38, v39, v40, v41, v42);
      }

      _SparseTrap();
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    strcpy(v74, "Failed to acquire chunkFactorStorage from pool\n");
    v75 = 0u;
    result = v27(v74);
    _X2 = 0;
    v44 = v8[1];
    atomic_store(0xFFFFFFFD, (v44 + 16));
    atomic_store(1u, (v44 + 12));
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X1] }

    if (_X2)
    {
      return __ulock_wake();
    }

    return result;
  }

  v28 = *(v10 + 6);
  atomic_compare_exchange_strong_explicit(v10 + 6, &v28, v26, memory_order_relaxed, memory_order_relaxed);
  if (v28 != v25)
  {
    do
    {
      v29 = (v28 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v24 < v29)
      {
        goto LABEL_4;
      }

      v25 = v28;
      v30 = v28;
      atomic_compare_exchange_strong_explicit(v10 + 6, &v30, v29, memory_order_relaxed, memory_order_relaxed);
      _ZF = v30 == v28;
      v28 = v30;
    }

    while (!_ZF);
  }

  v73 = v25;
  if (!v25)
  {
    goto LABEL_5;
  }

  v74[0] = 0;
  v72 = 0;
  if (v15 <= v13)
  {
    v34 = 0;
LABEL_24:
    v50 = v14 >> 32;
    v51 = *(v22 + 136);
    while (1)
    {
      v52 = *(v10 + 4);
      if (v34 <= v51)
      {
        break;
      }

      v53 = v51;
      atomic_compare_exchange_strong_explicit((v52 + 136), &v53, v34, memory_order_relaxed, memory_order_relaxed);
      _ZF = v53 == v51;
      v51 = v53;
      if (_ZF)
      {
        v52 = *(v10 + 4);
        break;
      }
    }

    v54 = *(v52 + 140);
    v55 = v72;
    do
    {
      if (v55 <= v54)
      {
        break;
      }

      v56 = v54;
      atomic_compare_exchange_strong_explicit((*(v10 + 4) + 140), &v56, v55, memory_order_relaxed, memory_order_relaxed);
      _ZF = v56 == v54;
      v54 = v56;
    }

    while (!_ZF);
    v57 = *(v10 + 2);
    v58 = *(v57 + 352);
    v59 = *(v58 + 8 * a2);
    if (v59 < *(v58 + 8 * v50))
    {
      do
      {
        v60 = (*(v10 + 7) + 40 * *(*(v57 + 360) + 4 * v59));
        if (atomic_fetch_add_explicit(v60, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v61 = v8[2];
          if (v61)
          {
            do
            {
              __asm { CASP            X4, X5, X4, X5, [X1] }

              *(v61 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
              *(v61 + 32) = 0;
              _X2 = _X4 & 1 | v61;
              _X7 = 0;
              __asm { CASPL           X6, X7, X2, X3, [X1] }
            }

            while (_X6 != _X4);
            if (_X4)
            {
              result = __ulock_wake();
            }
          }

          v8[2] = v60;
          v8[3] = 0;
        }

        ++v59;
        v57 = *(v10 + 2);
      }

      while (v59 < *(*(v57 + 352) + 8 * v50));
    }
  }

  else
  {
    v70 = (a2 << 32) + 0x100000000;
    v71 = a2;
    v32 = HIDWORD(a2);
    v33 = v25 + v21;
    while (1)
    {
      result = sub_2367DBA90(v13, v32, *(v10 + 1), *v10, *(v10 + 2), *(v10 + 6), *(v10 + 4), a8, v23, v20, &v73, v33, v74, &v72, v18, v19, *(v10 + 13), v8, v10);
      if (result)
      {
        break;
      }

      v13 = (v13 + 1);
      if (v15 == v13)
      {
        v22 = *(v10 + 4);
        v34 = v74[0];
        v14 = v70;
        LODWORD(a2) = v71;
        goto LABEL_24;
      }
    }

    _X2 = 0;
    v67 = v8[1];
    atomic_store(result, (v67 + 16));
    atomic_store(1u, (v67 + 12));
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X1] }

    if (_X2)
    {
      return __ulock_wake();
    }
  }

  return result;
}

uint64_t sub_2367DBA08(uint64_t result)
{
  v1 = *(*(*(result + 8) + 64) + 32);
  v2 = *(v1 + 128);
  if (v2 >= 134217729)
  {
    v3 = *(v1 + 120);
    v4 = v3 + v2;
    v5 = (v3 + 0x8000000);
    v6 = v2 - 0x8000000;
    do
    {
      if (v6 >= 0x8000000)
      {
        v7 = 0x8000000;
      }

      else
      {
        v7 = v6;
      }

      result = madvise(v5, v7, 3);
      v5 += 0x8000000;
      v6 -= 0x8000000;
    }

    while (v5 < v4);
  }

  return result;
}

uint64_t sub_2367DBA90(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, int a8, uint64_t a9, int a10, unint64_t *a11, unint64_t a12, int *a13, int *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v19 = a6;
  v237 = *MEMORY[0x277D85DE8];
  v203 = *(&off_28499C2F0 + a4 - 81);
  v21 = *(a5 + 56);
  v22 = 4 * v21;
  v23 = (4 * v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v210 = a15 + v23;
  v24 = (a15 + v23 + v23);
  v25 = (v24 + v23);
  v26 = (v24 + v23 + v23);
  v27 = (v26 + v23);
  v28 = v26 + v23 + v23;
  if (a4 != 82)
  {
    v22 = 0;
  }

  v202 = v22;
  v226 = 0;
  v225 = 0u;
  v224 = 0u;
  v223 = 0u;
  v222 = 0u;
  v221 = 0u;
  v29 = a1;
  v30 = a1 + 1;
  v31 = *(a5 + 184);
  v32 = *(*(a5 + 176) + 4 * v30) - *(*(a5 + 176) + 4 * a1);
  v33 = v32 * a6;
  DWORD1(v221) = v32 * a6;
  v34 = *(a7[14] + 8 * a1);
  if (a4 != 82)
  {
    v28 = 0;
  }

  v201 = v28;
  *&v222 = v34 + 8;
  v35 = 8 * v30;
  v36 = 8 * a1;
  v37 = (v32 + *(v31 + 8 * v30) - *(v31 + v36)) * a6;
  v219 = v37;
  v38 = (*(*(a5 + 200) + 8 * v30) - *(*(a5 + 200) + v36)) * a6;
  v39 = v38 + v33;
  v220 = v38 + v33;
  v40 = v34 + 8 + 8 * v37 * v33;
  *(&v222 + 1) = v37;
  *&v223 = v40;
  *(&v223 + 1) = v38;
  v213 = a7;
  if (a4 == 81 || (*&v224 = v40 + 8 * v38 * v33, *(&v224 + 1) = v224 + 4 * v33, a4 != 83))
  {
    v54 = 0;
    v43 = 0;
    v47 = 0;
    v46 = 0;
    v197 = 0;
    v198 = 0;
    v55 = 0;
    v45 = 0;
    __src = 0;
    v42 = 0;
  }

  else
  {
    v41 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    sub_2367DCA50(v227, a1, 1, 83, a5, a6, a7, a9, v25, v41, v27, v41);
    v42 = *&v227[8];
    v198 = *&v227[16];
    __src = *v227;
    v197 = *&v227[24];
    sub_2367DCA50(v227, a1, 2, 83, a5, v19, v213, a9, v24, v41, v26, v41);
    v43 = 0;
    v44 = *v227;
    v45 = *&v227[8];
    v47 = *&v227[16];
    v46 = *&v227[24];
    a7 = v213;
    *(v213[10] + 4 * v29) = *&v227[8];
    *(v213[11] + 4 * v29) = v42;
    v48 = v213[9];
    *(v48 + 4 * v29) = 0;
    v49 = (*(a5 + 240) + 8 * v29);
    v50 = *v49;
    v51 = v49[1];
    if (v50 < v51)
    {
      v43 = 0;
      v52 = *(a5 + 256);
      do
      {
        if (*(v52 + v50) == 3)
        {
          v53 = *(*(a5 + 248) + 4 * v50);
          v43 += *(v48 + 4 * v53) + (*(*(a5 + 176) + 4 * v53 + 4) - *(*(a5 + 176) + 4 * v53)) * v19 - *(v213[8] + 4 * v53);
          *(v48 + 4 * v29) = v43;
        }

        ++v50;
      }

      while (v51 != v50);
    }

    LODWORD(v221) = v43;
    v33 = DWORD1(v221);
    v54 = 1;
    v37 = v219;
    v39 = v220;
    v55 = v44;
  }

  v204 = v42;
  v56 = v43 + v33;
  v57 = 8 * ((v39 - v33 + v42) * v56 + ((v37 + v43 + v45) * v56));
  if ((a4 & 0xFE) == 0x52)
  {
    v57 += 4 * (v45 + 2 * v56 + v42);
  }

  v58 = v57 + 8;
  v59 = (a7[14] + 8 * v29);
  v60 = *v59;
  if (*v59)
  {
    v61 = a7[15];
    if (v60 < v61 || v60 >= v61 + a7[16])
    {
      if (*v60 >= v58)
      {
        goto LABEL_22;
      }

      v62 = v55;
      v63 = v46;
      v214 = 8 * v30;
      v64 = v30;
      v65 = v45;
      v66 = v47;
      (*(a5 + 32))();
      v47 = v66;
      v45 = v65;
      v30 = v64;
      a7 = v213;
      v35 = v214;
      v46 = v63;
      v55 = v62;
      v59 = (v213[14] + 8 * v29);
    }

    *v59 = 0;
  }

LABEL_22:
  v67 = a7[14];
  if (!*(v67 + 8 * v29))
  {
    v68 = *a11;
    v69 = (*a11 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v69 <= a12)
    {
      *a11 = v69;
      *(a7[14] + 8 * v29) = v68;
      if (v68)
      {
        **(a7[14] + 8 * v29) = 0;
        goto LABEL_29;
      }
    }

    else
    {
      *(v67 + 8 * v29) = 0;
    }

    v215 = v30;
    v70 = v45;
    v71 = v47;
    v72 = v55;
    v73 = v46;
    v74 = (*(a5 + 24))(v58);
    a7 = v213;
    *(v213[14] + 8 * v29) = v74;
    v75 = *(v213[14] + 8 * v29);
    if (!v75)
    {
      v185 = *(a5 + 40);
      if (!v185)
      {
        v186 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v186)
        {
          sub_23672B14C(v186, v187, v188, v189, v190, v191, v192, v193);
        }

        _SparseTrap();
      }

      memset(v236, 0, sizeof(v236));
      v235 = 0u;
      v234 = 0u;
      v233 = 0u;
      v232 = 0u;
      v231 = 0u;
      v230 = 0u;
      v229 = 0u;
      v228 = 0u;
      memset(&v227[58], 0, 48);
      strcpy(v227, "Failed to allocate additional storage for delayed pivots\n");
      v185(v227);
      return 4294967293;
    }

    *v75 = v58;
    v46 = v73;
    v55 = v72;
    v47 = v71;
    v45 = v70;
    v30 = v215;
  }

LABEL_29:
  v195 = v47;
  if (v54)
  {
    v76 = *(a7[9] + 4 * v29);
    v77 = *(a7[10] + 4 * v29);
    v78 = *(a7[11] + 4 * v29);
  }

  else
  {
    v76 = 0;
    v77 = 0;
    v78 = 0;
  }

  v194 = v46;
  v79 = a7[14];
  v211 = (*(v79 + 8 * v29) + 8);
  v80 = *(a5 + 176);
  v81 = (*(v80 + 4 * v30) - *(v80 + 4 * v29)) * v19;
  v82 = v81 + v76;
  v83 = v81 + v76;
  if (v54)
  {
    v83 = *(a7[8] + 4 * v29);
  }

  v84 = *(a5 + 184);
  v85 = *(a5 + 200);
  v86 = *(v85 + v35);
  v87 = v82 + v77 + (*(v84 + v35) - *(v84 + 8 * v29)) * v19;
  v88 = (v86 - *(v85 + 8 * v29)) * v19;
  v89 = &v211[8 * v87 * v82];
  v90 = v88 + v78;
  v219 = v87;
  v220 = v82 + v78 + v88;
  LODWORD(v221) = v76;
  DWORD1(v221) = v81 + v76;
  *(&v221 + 1) = v83;
  if (a4 == 81)
  {
    v91 = 0;
  }

  else
  {
    v91 = &v89[8 * v90 * v82];
  }

  if (a4 == 81)
  {
    v92 = 0;
  }

  else
  {
    v92 = &v89[8 * (v88 + v78) * v82 + 4 * v82 + 4 * v77];
  }

  *&v222 = v211;
  *(&v222 + 1) = v87;
  v93 = &v91[4 * v82];
  if (v77 <= 0)
  {
    v93 = 0;
  }

  v199 = &v211[8 * v87 * v82];
  v200 = v90;
  *&v223 = v199;
  *(&v223 + 1) = v90;
  v94 = v92 + 4 * v82;
  *&v224 = v91;
  *(&v224 + 1) = v92;
  if (v78 <= 0)
  {
    v94 = 0;
  }

  *&v225 = __PAIR64__(v78, v77);
  *(&v225 + 1) = v93;
  v226 = v94;
  if (a4 != 81 && v81 >= 1)
  {
    v95 = 0;
    do
    {
      *&v91[4 * v95] = v95 + *(v80 + 4 * v29) * v19;
      *(v92 + 4 * v95) = v95 + *(v80 + 4 * v29) * v19;
      ++v95;
      v76 = v221;
    }

    while (v95 < SDWORD1(v221) - v221);
  }

  v216 = v54;
  if (v76 >= 1)
  {
    v96 = *(a5 + 240);
    v97 = *(v96 + 8 * v29);
    v98 = *(v96 + 8 * v30);
    if (v97 < v98)
    {
      v99 = (*(v80 + 4 * v30) - *(v80 + 4 * v29)) * v19;
      v100 = (v92 + 4 * v99);
      v101 = &v91[4 * v99];
      v102 = *(a5 + 256);
      do
      {
        if (*(v102 + v97) == 3)
        {
          v103 = *(*(a5 + 248) + 4 * v97);
          if (v54)
          {
            v104 = *(a7[9] + 4 * v103);
            v105 = *(a7[10] + 4 * v103);
            v106 = *(a7[11] + 4 * v103);
          }

          else
          {
            v104 = 0;
            v105 = 0;
            v106 = 0;
          }

          v107 = v104 + (*(v80 + 4 * (v103 + 1)) - *(v80 + 4 * v103)) * v19;
          v108 = v107;
          if (v54)
          {
            v108 = *(a7[8] + 4 * v103);
          }

          if (a4 == 81)
          {
            v109 = 0;
            v110 = 0;
          }

          else
          {
            v54 = v216;
            v109 = *(v79 + 8 * v103) + 8 + 8 * (v107 + v105 + (*(v84 + 8 * (v103 + 1)) - *(v84 + 8 * v103)) * v19) * v107 + 8 * (v106 + (*(v85 + 8 * (v103 + 1)) - *(v85 + 8 * v103)) * v19) * v107;
            v110 = v109 + 4 * v107 + 4 * v105;
          }

          if (v107 != *(a7[8] + 4 * v103) && v108 < v107)
          {
            v112 = (v109 + 4 * v108);
            v113 = (v110 + 4 * v108);
            v114 = v108 - v107;
            do
            {
              v116 = *v112++;
              v115 = v116;
              if (v116 < 0)
              {
                v115 = -v115;
              }

              *v101++ = v115;
              v118 = *v113++;
              v117 = v118;
              if (v118 < 0)
              {
                v117 = -v117;
              }

              *v100++ = v117;
            }

            while (!__CFADD__(v114++, 1));
          }
        }

        ++v97;
      }

      while (v97 != v98);
    }
  }

  if (v45)
  {
    memcpy(&v91[4 * SDWORD1(v221)], v55, 4 * v45);
  }

  if (v204)
  {
    memcpy((v92 + 4 * SDWORD1(v221)), __src, 4 * v204);
  }

  v120 = v219;
  if (v219 >= 1)
  {
    v121 = 0;
    v122 = *(&v225 + 1);
    v123 = v224;
    do
    {
      if (v121 >= SDWORD1(v221))
      {
        v125 = v120 - v225;
        if (v121 >= v125)
        {
          v124 = *(v122 - 4 * v125 + 4 * v121);
        }

        else
        {
          v124 = (v121 - DWORD1(v221)) % v19 + *(*(a5 + 192) + 4 * *(*(a5 + 184) + 8 * v29) + 4 * ((v121 - DWORD1(v221)) / v19)) * v19;
        }
      }

      else if (v123)
      {
        v124 = *(v123 + 4 * v121);
      }

      else
      {
        v124 = v121 + *(*(a5 + 176) + 4 * v29) * v19;
      }

      if (v124 < 0)
      {
        v124 = -v124;
      }

      *(a15 + 4 * v124) = v121++;
      v120 = v219;
    }

    while (v121 < v219);
  }

  v126 = v220;
  if (v220 >= 1)
  {
    v127 = 0;
    v128 = v226;
    v129 = v224;
    do
    {
      if (v127 >= SDWORD1(v221))
      {
        v131 = v126 - SDWORD1(v225);
        if (v127 >= v131)
        {
          v130 = *(v128 - 4 * v131 + 4 * v127);
        }

        else
        {
          v130 = (v127 - DWORD1(v221)) % v19 + *(*(a5 + 208) + 4 * *(*(a5 + 200) + 8 * v29) + 4 * ((v127 - DWORD1(v221)) / v19)) * v19;
        }
      }

      else if (v129)
      {
        v130 = *(*(&v129 + 1) + 4 * v127);
      }

      else
      {
        v130 = v127 + *(*(a5 + 176) + 4 * v29) * v19;
      }

      if (v130 < 0)
      {
        v130 = -v130;
      }

      *(v210 + 4 * v130) = v127++;
      v126 = v220;
    }

    while (v127 < v220);
    v120 = v219;
  }

  v132 = 8 * SDWORD1(v221);
  bzero(v211, v132 * v87);
  bzero(v199, v132 * v200);
  sub_2367DCF58(a2, a1, SDWORD1(v221), a3, a5, v211, v87, v199, v200, a15, v210, v213[12], v213[13]);
  if ((v126 - DWORD1(v221)) * (v120 - DWORD1(v221)) <= 0)
  {
    v134 = 0;
  }

  else
  {
    v133 = 5 * (SDWORD1(v225) + v225);
    v134 = (*(a5 + 24))(v133 + 152);
    sub_236724DE4(v134, &v219, v195, v194, v198, v197, (v134 + 120), v133 + 32, a5);
    v135 = *(v134 + 16) * *(v134 + 8);
    v136 = (*(*v134 + 24))(8 * v135);
    *(v134 + 96) = v136;
    *(v134 + 104) = v135;
    bzero(v136, 8 * v135);
  }

  *(a9 + 8 * v29) = v134;
  v137 = (*(a5 + 240) + 8 * v29);
  v138 = *v137;
  v139 = v213;
  v140 = v216;
  if (*v137 < v137[1])
  {
    v206 = v134;
    v208 = v29;
    v212 = v19;
    do
    {
      v141 = *(*(a5 + 248) + 4 * v138);
      memset(&v227[16], 0, 56);
      if (v140)
      {
        v142 = *(v139[9] + 4 * v141);
        v143 = *(v139[10] + 4 * v141);
        v144 = *(v139[11] + 4 * v141);
      }

      else
      {
        v142 = 0;
        v143 = 0;
        v144 = 0;
      }

      v145 = *(v139[14] + 8 * v141) + 8;
      *&v227[8] = v142;
      *&v227[24] = v145;
      *&v227[72] = v143;
      *&v227[76] = v144;
      *&v227[12] = v142 + (*(*(a5 + 176) + 4 * (v141 + 1)) - *(*(a5 + 176) + 4 * v141)) * v19;
      v146 = *&v227[12];
      if (v140)
      {
        v146 = *(v139[8] + 4 * v141);
      }

      *&v227[16] = v146;
      v147 = 8 * (v141 + 1);
      *v227 = *&v227[12] + v143 + (*(*(a5 + 184) + v147) - *(*(a5 + 184) + 8 * v141)) * v19;
      v148 = (*(*(a5 + 200) + v147) - *(*(a5 + 200) + 8 * v141)) * v19;
      *&v227[4] = *&v227[12] + v144 + v148;
      v149 = v145 + 8 * *v227 * *&v227[12];
      *&v227[32] = *v227;
      *&v227[40] = v149;
      *&v227[48] = v148 + v144;
      if (a4 == 81)
      {
        v151 = 0;
        v150 = 0;
      }

      else
      {
        v150 = v149 + 8 * (v148 + v144) * *&v227[12];
        v151 = v150 + 4 * *&v227[12] + 4 * v143;
        *&v227[56] = v150;
        *&v227[64] = v151;
      }

      v152 = v150 + 4 * *&v227[12];
      if (v143 <= 0)
      {
        v153 = 0;
      }

      else
      {
        v153 = v152;
      }

      v154 = v151 + 4 * *&v227[12];
      if (v144 <= 0)
      {
        v155 = 0;
      }

      else
      {
        v155 = v154;
      }

      *&v227[80] = v153;
      *&v227[88] = v155;
      v156 = *(a9 + 8 * v141);
      if (!v156)
      {
        goto LABEL_144;
      }

      v157 = *(*(a5 + 264) + 4 * v138) * v19;
      v158 = *(*(a5 + 272) + 4 * v138) * v19;
      v159 = *(*(a5 + 256) + v138);
      switch(v159)
      {
        case 3:
          v177 = sub_2367DDE0C(&v219, v141, v227, v156, a5, v212, v157, v158, a15, v210);
          v19 = v212;
          sub_2367D673C(v177, &v219, v134, v141, v227, v156, a5, v212, v157, v158, a15, v210);
          v167 = *(a9 + 8 * v141);
          v169 = v167 + 12;
          v168 = v167[12];
          if (v168)
          {
            goto LABEL_142;
          }

          break;
        case 2:
          v170 = *(*(a5 + 280) + 4 * v138);
          sub_236724F10(&v218, *(a9 + 8 * v141));
          v171 = v170 * v19;
          sub_2367DD7D0(a1, &v219, v141, v227, v156, a5, v212, v157, v158, v171, a15, v210);
          v19 = v212;
          v134 = v206;
          sub_2367D5E48(a1, &v219, v206, v141, v227, v156, a5, v212, v157, v158, v171, a15, v210);
          add_explicit = atomic_fetch_add_explicit((v156 + 24), -v171, memory_order_release);
          if (*(v218 + 112) == 1)
          {
            v173 = (v218 + 113);
            atomic_store(0, (v218 + 113));
            std::__cxx_atomic_notify_one(v173);
          }

          v139 = v213;
          v29 = v208;
          v140 = v216;
          if (add_explicit != v171)
          {
            goto LABEL_144;
          }

          v174 = *(*v156 + 32);
          v176 = *(v156 + 96);
          v175 = (v156 + 96);
          v174(v176);
          *v175 = 0;
          v175[1] = 0;
          v139 = v213;
          v140 = v216;
          if (*&v227[12] != *&v227[16] || *&v227[76] || *&v227[72])
          {
            goto LABEL_144;
          }

          v167 = *(a9 + 8 * v141);
          v169 = v167 + 12;
          v168 = v167[12];
          if (!v168)
          {
            break;
          }

LABEL_142:
          (*(*v167 + 32))(v168);
          *v169 = 0;
          v169[1] = 0;
          break;
        case 1:
          v160 = *(*(a5 + 280) + 4 * v138);
          sub_236724F10(&v218, *(a9 + 8 * v141));
          v161 = v160 * v19;
          sub_2367DD33C(a1, &v219, v141, v227, v156, a5, v212, v157, v158, v161, a15, v210);
          v19 = v212;
          v134 = v206;
          sub_2367D56F8(a1, &v219, v206, v141, v227, v156, a5, v212, v157, v158, v161, a15, v210);
          v162 = atomic_fetch_add_explicit((v156 + 28), -v161, memory_order_release);
          if (*(v218 + 112) == 1)
          {
            v163 = (v218 + 113);
            atomic_store(0, (v218 + 113));
            std::__cxx_atomic_notify_one(v163);
          }

          v139 = v213;
          v29 = v208;
          v140 = v216;
          if (v162 != v161)
          {
            goto LABEL_144;
          }

          v164 = *(*v156 + 32);
          v166 = *(v156 + 96);
          v165 = (v156 + 96);
          v164(v166);
          *v165 = 0;
          v165[1] = 0;
          v139 = v213;
          v140 = v216;
          if (*&v227[12] != *&v227[16] || *&v227[76] || *&v227[72])
          {
            goto LABEL_144;
          }

          v167 = *(a9 + 8 * v141);
          v169 = v167 + 12;
          v168 = v167[12];
          if (v168)
          {
            goto LABEL_142;
          }

          break;
        default:
          goto LABEL_144;
      }

      (*(a5 + 32))();
      *(a9 + 8 * v141) = 0;
      v139 = v213;
      v140 = v216;
LABEL_144:
      ++v138;
    }

    while (v138 < *(*(a5 + 240) + 8 * v29 + 8));
  }

  if (v134)
  {
    v178 = *(v134 + 96);
    v179 = *(v134 + 16);
  }

  else
  {
    v178 = 0;
    v179 = 0;
  }

  if (a19)
  {
    v180 = a19 + 64;
  }

  else
  {
    v180 = 0;
  }

  v181 = v203(v219, v220, DWORD1(v221), v222, *(&v222 + 1), v223, *(&v223 + 1), v178, v179, v224, *(&v224 + 1), a5, v139, v201, v202, a17, a18, v180);
  v182 = *a13;
  if (*a13 <= v181)
  {
    v182 = v181;
  }

  *a13 = v182;
  v183 = *a14;
  if (*a14 <= v220)
  {
    v183 = v220;
  }

  *a14 = v183;
  if (v216)
  {
    *(v213[8] + 4 * v29) = v181;
    return 0;
  }

  if (v181 == DWORD1(v221))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

void sub_2367DCA34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2366FB870(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2367DCA50(uint64_t *__return_ptr a1@<X8>, int a2@<W0>, int a3@<W1>, int a4@<W2>, void *a5@<X3>, int a6@<W4>, void *a7@<X5>, uint64_t a8@<X6>, _DWORD *a9, unint64_t a10, _DWORD *a11, uint64_t a12)
{
  v12 = a11;
  v13 = (a5[30] + 8 * a2);
  v14 = *v13;
  if (*v13 < v13[1])
  {
    v17 = 0;
    v18 = 0;
    v83 = a2;
    v19 = a9;
    v20 = a11;
    v80 = a7;
    v78 = a3;
    v79 = a4;
    while (1)
    {
      v21 = *(a5[32] + v14);
      if ((v21 & a3) != 0)
      {
        break;
      }

LABEL_61:
      if (++v14 >= *(a5[30] + 8 * v83 + 8))
      {
        goto LABEL_64;
      }
    }

    v22 = *(a5[31] + 4 * v14);
    if (a4 == 83)
    {
      v23 = *(a7[9] + 4 * v22);
      v24 = *(a7[10] + 4 * v22);
      v25 = *(a7[11] + 4 * v22);
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }

    v26 = a5[22];
    v27 = *(v26 + 4 * (v22 + 1));
    v28 = *(v26 + 4 * v22);
    v29 = v23 + (v27 - v28) * a6;
    if (a4 == 83)
    {
      v30 = *(a7[8] + 4 * v22);
      v31 = v29;
    }

    else
    {
      v31 = v29;
      if (a4 == 81)
      {
        v32 = 0;
        v33 = 0;
        v30 = v29;
        goto LABEL_13;
      }

      v30 = v29;
    }

    v33 = *(a7[14] + 8 * v22) + 8 + 8 * v31 * (v29 + v24 + (*(a5[23] + 8 * (v22 + 1)) - *(a5[23] + 8 * v22)) * a6) + 8 * v31 * (v25 + (*(a5[25] + 8 * (v22 + 1)) - *(a5[25] + 8 * v22)) * a6);
    v32 = v33 + 4 * v31 + 4 * v24;
LABEL_13:
    if (v24 <= 0)
    {
      v34 = 0;
    }

    else
    {
      v34 = (v33 + 4 * v31);
    }

    v35 = (v32 + 4 * v31);
    if (v25 <= 0)
    {
      v36 = 0;
    }

    else
    {
      v36 = v35;
    }

    if (v21 == 3)
    {
      v38 = 0;
      v37 = 0;
    }

    else
    {
      v37 = v29 - *(a7[8] + 4 * v22);
      if (v21 == 2)
      {
        v38 = (v33 + 4 * v30);
      }

      else if (v21 == 1)
      {
        v38 = (v32 + 4 * v30);
      }

      else
      {
        v38 = 0;
      }
    }

    v39 = *(a8 + 8 * v22);
    v40 = *(a5[38] + 4 * v28);
    if (a3 == 1)
    {
      if (v39)
      {
        v41 = 1;
      }

      else
      {
        v41 = v25 == 0;
      }

      if (!v41)
      {
        v72 = *(a5[38] + 4 * v28);
        v74 = v38;
        v76 = v37;
        v45 = v25;
        v46 = v25;
        v47 = v17;
        v48 = v18;
        v70 = v25;
        v49 = v19;
        v50 = v20;
        sub_236724CB4(v84, v46);
        if (v70 >= 1)
        {
          v51 = 0;
          v52 = a5[38];
          v53 = v84[0];
          do
          {
              ;
            }

            v53[v51++] = i;
          }

          while (v51 != v45);
        }

        v12 = a11;
        sub_236724994(&v85, v49, v47, v50, v48, a9, a10, a11, v76, v74, v72, v70, v36, v84[0], a2, a5);
LABEL_53:
        v19 = v85;
        v17 = v86;
        v20 = v87;
        v18 = v88;
        if (v84[0])
        {
          v84[1] = v84[0];
          v65 = v86;
          v66 = v88;
          v67 = v85;
          v68 = v87;
          operator delete(v84[0]);
          v20 = v68;
          v19 = v67;
          v18 = v66;
          v17 = v65;
        }

        goto LABEL_60;
      }

      if (v39)
      {
        v42 = *(v39 + 80);
      }

      else
      {
        v42 = 0;
      }

      sub_236724994(&v85, v19, v17, v20, v18, a9, a10, v12, v37, v38, v40, v25, v36, v42, a2, a5);
    }

    else
    {
      if (v39)
      {
        v43 = 1;
      }

      else
      {
        v43 = v24 == 0;
      }

      if (!v43)
      {
        v73 = *(a5[38] + 4 * v28);
        v75 = v38;
        v77 = v37;
        v55 = v24;
        v56 = v24;
        v57 = v17;
        v58 = v18;
        v59 = v19;
        v71 = v24;
        v60 = v20;
        sub_236724CB4(v84, v56);
        if (v71 >= 1)
        {
          v61 = 0;
          v62 = a5[38];
          v63 = v84[0];
          do
          {
              ;
            }

            v63[v61++] = j;
          }

          while (v61 != v55);
        }

        v12 = a11;
        sub_236724994(&v85, v59, v57, v60, v58, a9, a10, a11, v77, v75, v73, v71, v34, v84[0], a2, a5);
        goto LABEL_53;
      }

      if (v39)
      {
        v44 = *(v39 + 64);
      }

      else
      {
        v44 = 0;
      }

      sub_236724994(&v85, v19, v17, v20, v18, a9, a10, v12, v37, v38, v40, v24, v34, v44, a2, a5);
    }

    v19 = v85;
    v17 = v86;
    v20 = v87;
    v18 = v88;
LABEL_60:
    a7 = v80;
    a3 = v78;
    a4 = v79;
    goto LABEL_61;
  }

  v17 = 0;
  v18 = 0;
  v19 = a9;
  v20 = a11;
LABEL_64:
  *a1 = v19;
  a1[1] = v17;
  a1[2] = v20;
  a1[3] = v18;
}

void sub_2367DCF38(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 144);
  if (v3)
  {
    *(v1 - 136) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2367DCF58(uint64_t result, int a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = *(a4 + 28);
  v14 = (v13 * v13);
  v15 = *(a5[14] + 4 * result + 4);
  v16 = (a5[22] + 4 * a2);
  v17 = *v16;
  v18 = v16[1];
  if (a12)
  {
    if (v17 < v18)
    {
      v103 = a5[20];
      v102 = *(a4 + 8);
      v19 = 8 * v14;
      v20 = 8 * v13;
      v101 = 8 * a7 * v13;
      v21 = 8 * a7;
      v22 = *v16;
      do
      {
        v23 = v18;
        v24 = (v102 + 8 * *(v103 + 4 * v22));
        v25 = *v24;
        v26 = v24[1];
        if (*v24 < v26)
        {
          v27 = *(a4 + 16);
          v28 = v19 * v25;
          do
          {
            v29 = *(v27 + 4 * v25);
            if ((v29 & 0x80000000) == 0 && v29 < *a4)
            {
              v30 = *(a5[17] + 4 * v29);
              v31 = v30 >= v17 && v30 < v15;
              if (v31 && v13)
              {
                v32 = 0;
                v33 = v30 * v13;
                v34 = (a12 + 8 * v33);
                v35 = (*(a4 + 32) + v28);
                v36 = (a6 + 8 * *(a10 + 4 * v33));
                do
                {
                  v37 = v13;
                  v38 = v36;
                  v39 = v34;
                  v40 = v35;
                  do
                  {
                    v41 = *v39++;
                    v42 = v41;
                    v43 = *v40++;
                    *v38++ = v42 * v43 * *(a13 + 8 * v22 * v13 + 8 * v32);
                    --v37;
                  }

                  while (v37);
                  ++v32;
                  v35 = (v35 + v20);
                  v36 = (v36 + v21);
                }

                while (v32 != v13);
              }
            }

            ++v25;
            v28 += v19;
          }

          while (v25 != v26);
        }

        ++v22;
        a6 += v101;
        v18 = v23;
      }

      while (v22 != v23);
      v44 = a5[39];
      v45 = *(v44 + 8 * v17);
      v46 = a8 - 8 * a3;
      result = 8 * a9 * v13;
      v47 = (a12 + 8 * v17 * v13);
      do
      {
        ++v17;
        v48 = *(v44 + 8 * v17);
        if (v45 < v48)
        {
          v49 = *(a4 + 32);
          v50 = a5[40];
          v51 = a5[41];
          do
          {
            if (v13)
            {
              v52 = 0;
              v53 = (v49 + 8 * *(v51 + 8 * v45) * v14);
              v54 = *(v50 + 4 * v45) * v13;
              v55 = a13 + 8 * v54;
              v56 = (v46 + 8 * *(a11 + 4 * v54));
              do
              {
                v57 = v13;
                v58 = v47;
                v59 = v56;
                v60 = v53;
                do
                {
                  v61 = *v58++;
                  v62 = v61;
                  v63 = *v60++;
                  *v59 = v62 * v63 * *(v55 + 8 * v52);
                  v59 += a9;
                  --v57;
                }

                while (v57);
                ++v52;
                v53 = (v53 + v20);
                ++v56;
              }

              while (v52 != v13);
            }

            ++v45;
          }

          while (v45 != v48);
        }

        v46 += result;
        v47 = (v47 + v20);
        v45 = v48;
      }

      while (v17 != v18);
    }
  }

  else if (v17 < v18)
  {
    v64 = a5[20];
    v65 = *(a4 + 8);
    v66 = 8 * v14;
    v67 = 8 * v13;
    v68 = 8 * a7 * v13;
    v69 = 8 * a7;
    v70 = *v16;
    do
    {
      v71 = (v65 + 8 * *(v64 + 4 * v70));
      v72 = *v71;
      v73 = v71[1];
      if (*v71 < v73)
      {
        v74 = *(a4 + 16);
        v75 = v66 * v72;
        do
        {
          v76 = *(v74 + 4 * v72);
          if ((v76 & 0x80000000) == 0 && v76 < *a4)
          {
            v77 = *(a5[17] + 4 * v76);
            v78 = v77 >= v17 && v77 < v15;
            if (v78 && v13)
            {
              v79 = 0;
              v80 = (*(a4 + 32) + v75);
              v81 = (a6 + 8 * *(a10 + 4 * v77 * v13));
              do
              {
                v82 = v13;
                v83 = v81;
                v84 = v80;
                do
                {
                  v85 = *v84++;
                  *v83++ = v85;
                  --v82;
                }

                while (v82);
                ++v79;
                v80 = (v80 + v67);
                v81 = (v81 + v69);
              }

              while (v79 != v13);
            }
          }

          ++v72;
          v75 += v66;
        }

        while (v72 != v73);
      }

      ++v70;
      a6 += v68;
    }

    while (v70 != v18);
    v86 = a5[39];
    result = *(v86 + 8 * v17);
    v87 = a8 - 8 * a3;
    do
    {
      ++v17;
      v88 = *(v86 + 8 * v17);
      if (result < v88)
      {
        v89 = *(a4 + 32);
        v90 = a5[40];
        v91 = a5[41];
        do
        {
          if (v13)
          {
            v92 = 0;
            v93 = (v89 + 8 * *(v91 + 8 * result) * v14);
            v94 = (v87 + 8 * *(a11 + 4 * *(v90 + 4 * result) * v13));
            do
            {
              v95 = v13;
              v96 = v94;
              v97 = v93;
              do
              {
                v98 = *v97++;
                *v96 = v98;
                v96 += a9;
                --v95;
              }

              while (v95);
              ++v92;
              v93 = (v93 + v67);
              ++v94;
            }

            while (v92 != v13);
          }

          ++result;
        }

        while (result != v88);
      }

      v87 += 8 * a9 * v13;
      result = v88;
    }

    while (v17 != v18);
  }

  return result;
}

uint64_t sub_2367DD33C(uint64_t result, uint64_t a2, int a3, int *a4, void *a5, void *a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v59 = result;
  v12 = a4[3];
  v61 = a4[1];
  if (v12 + a9 < v61)
  {
    v55 = v12 + a8;
    v13 = v12 + a8 + a10;
    v14 = a4[19];
    v60 = v14 - v61;
    v15 = v12 + a9;
    v57 = v61 - v14;
    for (i = 8 * a9; ; i += 8)
    {
      if (v60 + v15 < 0 || (*(a5[6] + (v60 + v15)) & 1) == 0)
      {
        v17 = v15 - v12;
        if (v15 >= v12)
        {
          v18 = v15 >= v57 ? *(*(a4 + 11) + 4 * (v15 - v57)) : (v15 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v15 - v12) / a7)) * a7;
        }

        else if (v15 < 0)
        {
          v18 = 0x7FFFFFFF;
        }

        else
        {
          v18 = *(a4 + 7) ? *(*(a4 + 8) + 4 * v15) : v15 + *(a6[22] + 4 * a3) * a7;
        }

        v19 = *(a12 + 4 * v18);
        v20 = *(a2 + 12);
        if (v20 > v19)
        {
          v21 = v19;
          if ((v19 & 0x80000000) != 0)
          {
            v22 = 0x7FFFFFFF;
          }

          else
          {
            v22 = *(a2 + 56) ? *(*(a2 + 64) + 4 * v19) : v19 + *(a6[22] + 4 * v59) * a7;
          }

          if (v22 == v18)
          {
            if (a10 >= 1)
            {
              v23 = *(a2 + 24) + 8 * *(a2 + 32) * v21;
              v24 = 8 * v55 - 8 * v12;
              v25 = v55;
              v26 = a8;
              do
              {
                if (v25 >= v12)
                {
                  v29 = *a4;
                  v30 = a4[18];
                  if (v25 >= v29 - v30)
                  {
                    if (v25 < v29)
                    {
                      v28 = *(*(a4 + 10) + 4 * (v25 + v30 - v29));
                      if ((v17 & 0x8000000000000000) == 0)
                      {
                        goto LABEL_37;
                      }

                      goto LABEL_34;
                    }

LABEL_33:
                    v28 = 0x7FFFFFFF;
                    if ((v17 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_34;
                  }

                  v31 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v26 / a7));
                  v32 = v26 % a7;
                }

                else
                {
                  if (v25 < 0)
                  {
                    goto LABEL_33;
                  }

                  v27 = *(a4 + 7);
                  if (v27)
                  {
                    v28 = *(v27 + 4 * v25);
                    if ((v17 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_34;
                  }

                  v31 = *(a6[22] + 4 * a3);
                  v32 = v12 + v26;
                }

                v28 = v32 + v31 * a7;
                if ((v17 & 0x8000000000000000) == 0)
                {
LABEL_37:
                  if (v25 >= v12)
                  {
                    v33 = (a5[12] + i * a5[2] + v24);
                  }

                  else
                  {
                    v33 = (*(a4 + 5) + 8 * *(a4 + 6) * v25 + 8 * v17);
                  }

                  goto LABEL_40;
                }

LABEL_34:
                v33 = (*(a4 + 3) + 8 * *(a4 + 4) * v15 + 8 * v25);
LABEL_40:
                v34 = *(a11 + 4 * v28);
                *(v23 + 8 * v34) = *v33 + *(v23 + 8 * v34);
                ++v25;
                ++v26;
                v24 += 8;
              }

              while (v25 < v13);
            }

            v35 = a4[18];
            if (v35 >= 1)
            {
              break;
            }
          }
        }
      }

LABEL_73:
      if (++v15 >= v61)
      {
        return result;
      }
    }

    v36 = 0;
    v37 = *a4;
    v38 = v37 - v35;
    v39 = a5[4];
    v40 = v37 - v12 - v35;
    v58 = 4 * (v37 - v35);
    v41 = -8 * v12 + 8 * (v37 - v35);
    v42 = v37 - v35;
    while ((*(v39 + v36) & 1) != 0)
    {
LABEL_72:
      ++v42;
      ++v36;
      ++v40;
      v41 += 8;
      if (v38 + v36 >= v37)
      {
        goto LABEL_73;
      }
    }

    v43 = v38 + v36;
    if (v43 >= v12)
    {
      if (v43 >= v38)
      {
        v45 = *(a4 + 10);
        goto LABEL_51;
      }

      v46 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v40 / a7));
      v47 = v40 % a7;
    }

    else
    {
      if (v43 < 0)
      {
        v48 = 0x7FFFFFFF;
        goto LABEL_55;
      }

      v44 = *(a4 + 7);
      if (v44)
      {
        v45 = v44 + v58;
LABEL_51:
        v48 = *(v45 + 4 * v36);
        goto LABEL_55;
      }

      v46 = *(a6[22] + 4 * a3);
      v47 = v38 + v36;
    }

    v48 = v47 + v46 * a7;
LABEL_55:
    v49 = *(a11 + 4 * v48);
    v50 = v49;
    if (v49 >= v20)
    {
      result = (*a2 - *(a2 + 72));
      if (v49 < result)
      {
        result = a6[24];
        v52 = (v49 - v20) % a7 + *(result + 4 * *(a6[23] + 8 * v59) + 4 * ((v49 - v20) / a7)) * a7;
        goto LABEL_65;
      }

      if (*a2 > v49)
      {
        v52 = *(*(a2 + 80) + 4 * (v49 - result));
        goto LABEL_65;
      }
    }

    else if ((v49 & 0x80000000) == 0)
    {
      v51 = *(a2 + 56);
      if (v51)
      {
        v52 = *(v51 + 4 * v49);
      }

      else
      {
        v52 = v49 + *(a6[22] + 4 * v59) * a7;
      }

LABEL_65:
      if (v52 == v48)
      {
        if (v17 < 0)
        {
          v53 = (*(a4 + 3) + 8 * *(a4 + 4) * v15 + 8 * v42);
        }

        else if (v43 >= v12)
        {
          v53 = (a5[12] + i * a5[2] + v41);
        }

        else
        {
          v53 = (*(a4 + 5) + 8 * *(a4 + 6) * v43 + 8 * v17);
        }

        v54 = *(a2 + 24) + 8 * *(a2 + 32) * v21;
        *(v54 + 8 * v50) = *v53 + *(v54 + 8 * v50);
      }

      goto LABEL_72;
    }

    v52 = 0x7FFFFFFF;
    goto LABEL_65;
  }

  return result;
}

uint64_t sub_2367DD7D0(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t a5, void *a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v84 = result;
  v12 = a4[3];
  if (a10 >= 1)
  {
    v13 = v12 + a8;
    v14 = v12 + a9;
    v15 = *(a2 + 12);
    v16 = 8 * v14 - 8 * v12;
    while (1)
    {
      v17 = v14 - v12;
      if (v14 < v12)
      {
        break;
      }

      v18 = a4[1];
      v19 = v18 - a4[19];
      v20 = __OFSUB__(v14, v19);
      v21 = v14 - v19;
      if (v21 < 0 != v20)
      {
        result = ((v14 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v14 - v12) / a7)) * a7);
      }

      else
      {
        if (v14 >= v18)
        {
          goto LABEL_12;
        }

        result = *(*(a4 + 11) + 4 * v21);
      }

LABEL_14:
      v22 = *(a12 + 4 * result);
      if (v22 < v15)
      {
        result = a4[4];
        if (result < v12)
        {
          v23 = *(a2 + 24) + 8 * *(a2 + 32) * v22;
          if (v17 >= 0)
          {
            v24 = a4 + 10;
          }

          else
          {
            v24 = a4 + 6;
          }

          if (v17 >= 0)
          {
            v25 = a4 + 12;
          }

          else
          {
            v25 = a4 + 8;
          }

          v26 = *v24;
          v27 = *v25;
          do
          {
            if (result < 0)
            {
              v29 = 0x7FFFFFFF;
            }

            else
            {
              v28 = *(a4 + 7);
              if (v28)
              {
                v29 = *(v28 + 4 * result);
              }

              else
              {
                v29 = result + *(a6[22] + 4 * a3) * a7;
              }
            }

            v30 = *(a11 + 4 * v29);
            if (v17 >= 0)
            {
              v31 = result;
            }

            else
            {
              v31 = v14;
            }

            if (v17 >= 0)
            {
              v32 = v14 - v12;
            }

            else
            {
              v32 = result;
            }

            *(v23 + 8 * v30) = *(v26 + 8 * v27 * v31 + 8 * v32) + *(v23 + 8 * v30);
            ++result;
          }

          while (v12 != result);
        }

        v33 = *a4;
        if (v13 < v33)
        {
          v34 = a4[18];
          v35 = v33 - v34;
          v36 = v12 + v34 - v33;
          result = 4 * v34 - 4 * v33;
          v37 = 8 * v13 - 8 * v12;
          v38 = a8;
          v39 = v13;
          while (2)
          {
            if (v36 + v38 >= 0 && (*(*(a5 + 32) + (v36 + v38)) & 1) != 0)
            {
              goto LABEL_52;
            }

            if (v39 >= v12)
            {
              if (v39 >= v35)
              {
                v41 = *(*(a4 + 10) + result + 4 * v39);
                if (v17 < 0)
                {
                  break;
                }
              }

              else
              {
                v41 = v38 % a7 + *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v38 / a7)) * a7;
                if (v17 < 0)
                {
                  break;
                }
              }

              goto LABEL_46;
            }

            if (v39 < 0)
            {
              v41 = 0x7FFFFFFF;
              if ((v17 & 0x8000000000000000) == 0)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v40 = *(a4 + 7);
              if (v40)
              {
                v41 = *(v40 + 4 * v39);
                if (v17 < 0)
                {
                  break;
                }

LABEL_46:
                if (v39 >= v12)
                {
                  v42 = (*(a5 + 96) + v16 * *(a5 + 16) + v37);
                }

                else
                {
                  v42 = (*(a4 + 5) + 8 * *(a4 + 6) * v39 + 8 * v17);
                }

LABEL_51:
                v43 = *(a11 + 4 * v41);
                v44 = *v42;
                v45 = *(a2 + 24) + 8 * *(a2 + 32) * v22;
                *(v45 + 8 * v43) = v44 + *(v45 + 8 * v43);
LABEL_52:
                ++v39;
                ++v38;
                v37 += 8;
                if (v39 >= v33)
                {
                  goto LABEL_58;
                }

                continue;
              }

              v41 = v12 + v38 + *(a6[22] + 4 * a3) * a7;
              if ((v17 & 0x8000000000000000) == 0)
              {
                goto LABEL_46;
              }
            }

            break;
          }

          v42 = (*(a4 + 3) + 8 * *(a4 + 4) * v14 + 8 * v39);
          goto LABEL_51;
        }
      }

LABEL_58:
      ++v14;
      v16 += 8;
      if (v14 >= v12 + a9 + a10)
      {
        goto LABEL_59;
      }
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      if (*(a4 + 7))
      {
        result = *(*(a4 + 8) + 4 * v14);
      }

      else
      {
        result = (v14 + *(a6[22] + 4 * a3) * a7);
      }

      goto LABEL_14;
    }

LABEL_12:
    result = 0x7FFFFFFFLL;
    goto LABEL_14;
  }

LABEL_59:
  v46 = a4[19];
  if (v46 >= 1)
  {
    v47 = 0;
    result = 0;
    v48 = a4[1];
    v49 = *(a5 + 48);
    v86 = v12 + a8;
    v50 = v48 - v46;
    v51 = 8 * v50 - 8 * v12;
    v52 = v50;
    v85 = v50;
    do
    {
      if ((*(v49 + v47) & 1) == 0)
      {
        v53 = v52 - v12;
        if (v52 >= v12)
        {
          v54 = v52 >= v50 ? *(*(a4 + 11) + 4 * (v52 - v50)) : (v52 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v52 - v12) / a7)) * a7;
        }

        else if (v52 < 0)
        {
          v54 = 0x7FFFFFFF;
        }

        else
        {
          v54 = *(a4 + 7) ? *(*(a4 + 8) + 4 * v52) : v52 + *(a6[22] + 4 * a3) * a7;
        }

        v55 = *(a12 + 4 * v54);
        if (*(a2 + 12) > v55)
        {
          v56 = v55;
          if ((v55 & 0x80000000) != 0)
          {
            v57 = 0x7FFFFFFF;
          }

          else
          {
            v57 = *(a2 + 56) ? *(*(a2 + 64) + 4 * v55) : v55 + *(a6[22] + 4 * v84) * a7;
          }

          if (v57 == v54)
          {
            v87 = result;
            v58 = a4[4];
            if (v58 < v12)
            {
              v59 = *(a2 + 24) + 8 * *(a2 + 32) * v56;
              if (v53 >= 0)
              {
                v60 = a4 + 10;
              }

              else
              {
                v60 = a4 + 6;
              }

              if (v53 >= 0)
              {
                v61 = a4 + 12;
              }

              else
              {
                v61 = a4 + 8;
              }

              v62 = *v60;
              v63 = *v61;
              do
              {
                if (v58 < 0)
                {
                  v65 = 0x7FFFFFFF;
                }

                else
                {
                  v64 = *(a4 + 7);
                  if (v64)
                  {
                    v65 = *(v64 + 4 * v58);
                  }

                  else
                  {
                    v65 = v58 + *(a6[22] + 4 * a3) * a7;
                  }
                }

                v66 = *(a11 + 4 * v65);
                if (v53 >= 0)
                {
                  v67 = v58;
                }

                else
                {
                  v67 = v52;
                }

                if (v53 >= 0)
                {
                  v68 = v52 - v12;
                }

                else
                {
                  v68 = v58;
                }

                *(v59 + 8 * v66) = *(v62 + 8 * v63 * v67 + 8 * v68) + *(v59 + 8 * v66);
                ++v58;
              }

              while (v12 != v58);
            }

            v69 = *a4;
            if (v86 < v69)
            {
              v70 = a4[18];
              v71 = v69 - v70;
              v72 = v12 + v70 - v69;
              v73 = 4 * v70 - 4 * v69;
              v74 = 8 * v86 - 8 * v12;
              v75 = a8;
              v76 = v12 + a8;
              while (2)
              {
                if (v72 + v75 >= 0 && (*(*(a5 + 32) + (v72 + v75)) & 1) != 0)
                {
                  goto LABEL_119;
                }

                if (v76 >= v12)
                {
                  if (v76 >= v71)
                  {
                    v78 = *(*(a4 + 10) + v73 + 4 * v76);
                    if (v53 < 0)
                    {
                      goto LABEL_110;
                    }

                    goto LABEL_115;
                  }

                  v79 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v75 / a7));
                  v80 = v75 % a7;
                }

                else
                {
                  if (v76 < 0)
                  {
                    v78 = 0x7FFFFFFF;
                    if ((v53 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_115;
                    }

LABEL_110:
                    v81 = (*(a4 + 3) + 8 * *(a4 + 4) * v52 + 8 * v76);
                    goto LABEL_118;
                  }

                  v77 = *(a4 + 7);
                  if (v77)
                  {
                    v78 = *(v77 + 4 * v76);
                    if (v53 < 0)
                    {
                      goto LABEL_110;
                    }

LABEL_115:
                    if (v76 >= v12)
                    {
                      v81 = (*(a5 + 96) + v51 * *(a5 + 16) + v74);
                    }

                    else
                    {
                      v81 = (*(a4 + 5) + 8 * *(a4 + 6) * v76 + 8 * v53);
                    }

LABEL_118:
                    v82 = *(a11 + 4 * v78);
                    v83 = *(a2 + 24) + 8 * *(a2 + 32) * v56;
                    *(v83 + 8 * v82) = *v81 + *(v83 + 8 * v82);
LABEL_119:
                    ++v76;
                    ++v75;
                    v74 += 8;
                    if (v76 >= v69)
                    {
                      goto LABEL_120;
                    }

                    continue;
                  }

                  v79 = *(a6[22] + 4 * a3);
                  v80 = v12 + v75;
                }

                break;
              }

              v78 = v80 + v79 * a7;
              if (v53 < 0)
              {
                goto LABEL_110;
              }

              goto LABEL_115;
            }

LABEL_120:
            *(v49 + v47) = 1;
            result = (v87 + 1);
            v50 = v85;
          }
        }
      }

      ++v52;
      ++v47;
      v51 += 8;
    }

    while (v52 < v48);
    if (result > 0)
    {
      atomic_fetch_add_explicit((a5 + 24), -result, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_2367DDE0C(uint64_t result, int a2, int *a3, void *a4, void *a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v10 = a3[3];
  v93 = a3[4];
  if (v93 < v10)
  {
    v11 = v10 + a7;
    v12 = *a3;
    v13 = *(a3 + 7);
    v92 = *(a3 + 8);
    v14 = *(result + 32);
    v91 = *(result + 24);
    v15 = a3[4];
    v16 = 8 * v93 - 8 * v10;
    while (1)
    {
      v17 = v93;
      v18 = *(a10 + 4 * *(v92 + 4 * v15));
      v19 = v15 - v10;
      v20 = v15 >= v10 ? a3 + 10 : a3 + 6;
      v21 = v15 >= v10 ? a3 + 12 : a3 + 8;
      v22 = *v20;
      v23 = *v21;
      do
      {
        if (v19 >= 0)
        {
          v25 = v17;
        }

        else
        {
          v25 = v15;
        }

        if (v19 >= 0)
        {
          v26 = v15 - v10;
        }

        else
        {
          v26 = v17;
        }

        v24 = *(a9 + 4 * *(v13 + 4 * v17));
        *(v91 + 8 * v14 * v18 + 8 * v24) = *(v22 + 8 * v23 * v25 + 8 * v26) + *(v91 + 8 * v14 * v18 + 8 * v24);
        ++v17;
      }

      while (v10 != v17);
      if (v11 < v12)
      {
        break;
      }

LABEL_39:
      ++v15;
      v16 += 8;
      if (v15 == v10)
      {
        goto LABEL_40;
      }
    }

    v27 = a3[18];
    v28 = v12 - v27;
    v29 = v10 - v12 + v27;
    v30 = -4 * v12 + 4 * v27;
    v31 = 8 * v11 - 8 * v10;
    v32 = a7;
    v33 = v10 + a7;
    while (1)
    {
      if (v29 + v32 >= 0 && (*(a4[4] + (v29 + v32)) & 1) != 0)
      {
        goto LABEL_35;
      }

      if (v33 >= v10)
      {
        break;
      }

      if ((v33 & 0x8000000000000000) == 0)
      {
        v34 = *(a3 + 7);
        if (!v34)
        {
          v35 = *(a5[22] + 4 * a2);
          v36 = v10 + v32;
          goto LABEL_27;
        }

LABEL_30:
        v37 = *(v34 + 4 * v33);
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v37 = 0x7FFFFFFF;
      if ((v19 & 0x8000000000000000) == 0)
      {
LABEL_31:
        if (v33 >= v10)
        {
          v38 = (a4[12] + v16 * a4[2] + v31);
        }

        else
        {
          v38 = (*(a3 + 5) + 8 * *(a3 + 6) * v33 + 8 * v19);
        }

        goto LABEL_34;
      }

LABEL_28:
      v38 = (*(a3 + 3) + 8 * *(a3 + 4) * v15 + 8 * v33);
LABEL_34:
      v39 = *(a9 + 4 * v37);
      v40 = *v38;
      v41 = *(result + 24) + 8 * *(result + 32) * v18;
      *(v41 + 8 * v39) = v40 + *(v41 + 8 * v39);
LABEL_35:
      ++v33;
      ++v32;
      v31 += 8;
      if (v33 >= v12)
      {
        goto LABEL_39;
      }
    }

    if (v33 < v28)
    {
      v35 = *(a5[24] + 4 * *(a5[23] + 8 * a2) + 4 * (v32 / a6));
      v36 = v32 % a6;
LABEL_27:
      v37 = v36 + v35 * a6;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v34 = *(a3 + 10) + v30;
    goto LABEL_30;
  }

LABEL_40:
  v42 = v10 + a8;
  v43 = a3[1];
  if (v10 + a8 < v43)
  {
    v44 = a3[19];
    v45 = v44 - v43;
    v46 = v42;
    v47 = v43 - v44;
    for (i = 8 * v42 - 8 * v10; ; i += 8)
    {
      if (v45 + v46 < 0 || (*(a4[6] + (v45 + v46)) & 1) == 0)
      {
        v49 = v46 - v10;
        if (v46 >= v10)
        {
          v50 = v46 >= v47 ? *(*(a3 + 11) + 4 * (v46 - v47)) : (v46 - v10) % a6 + *(a5[26] + 4 * *(a5[25] + 8 * a2) + 4 * ((v46 - v10) / a6)) * a6;
        }

        else if (v46 < 0)
        {
          v50 = 0x7FFFFFFF;
        }

        else
        {
          v50 = *(a3 + 7) ? *(*(a3 + 8) + 4 * v46) : v46 + *(a5[22] + 4 * a2) * a6;
        }

        v51 = *(a10 + 4 * v50);
        if (v51 < *(result + 12))
        {
          if (v93 < v10)
          {
            v52 = *(a3 + 7);
            v53 = *(result + 24) + 8 * *(result + 32) * v51;
            v54 = 10;
            if (v49 < 0)
            {
              v54 = 6;
            }

            v55 = 12;
            if (v49 < 0)
            {
              v55 = 8;
            }

            v56 = *&a3[v54];
            v57 = *&a3[v55];
            v58 = v93;
            do
            {
              if (v49 >= 0)
              {
                v60 = v58;
              }

              else
              {
                v60 = v46;
              }

              if (v49 >= 0)
              {
                v61 = v46 - v10;
              }

              else
              {
                v61 = v58;
              }

              v59 = *(a9 + 4 * *(v52 + 4 * v58));
              *(v53 + 8 * v59) = *(v56 + 8 * v57 * v60 + 8 * v61) + *(v53 + 8 * v59);
              ++v58;
            }

            while (v10 != v58);
          }

          v62 = *a3;
          v63 = a3[18];
          v64 = v62 - v63;
          if (v10 + a7 < v62 - v63)
          {
            v65 = a5[24] + 4 * *(a5[23] + 8 * a2);
            v66 = *(result + 24) + 8 * *(result + 32) * v51;
            v67 = a4[12] - 8 * v10 + a4[2] * i;
            v68 = a7;
            v69 = v10 + a7;
            do
            {
              v70 = *(a9 + 4 * (v68 % a6 + *(v65 + 4 * (v68 / a6)) * a6));
              *(v66 + 8 * v70) = *(v67 + 8 * v69++) + *(v66 + 8 * v70);
              ++v68;
            }

            while (v69 < v64);
          }

          if (v63 >= 1)
          {
            break;
          }
        }
      }

LABEL_91:
      if (++v46 >= v43)
      {
        return result;
      }
    }

    v71 = 0;
    v72 = v64;
    v73 = a4[4];
    v74 = v62 - v10 - v63;
    v75 = 4 * v62 - 4 * v63;
    v76 = 8 * (v62 - v10 - v63);
    v77 = v64;
    v78 = v62 - v63;
    while ((*(v73 + v71) & 1) != 0)
    {
LABEL_90:
      ++v77;
      ++v71;
      ++v74;
      v76 += 8;
      if (v72 + v71 >= v62)
      {
        goto LABEL_91;
      }
    }

    v79 = v72 + v71;
    if (v72 + v71 >= v10)
    {
      if (v79 >= v72)
      {
        v81 = *(a3 + 10);
LABEL_80:
        v84 = *(v81 + 4 * v71);
        if ((v49 & 0x8000000000000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_88:
        v85 = (*(a3 + 3) + 8 * *(a3 + 4) * v46 + 8 * v77);
LABEL_89:
        v86 = *(a9 + 4 * v84);
        v87 = *v85;
        v88 = *(result + 24) + 8 * *(result + 32) * v51;
        *(v88 + 8 * v86) = v87 + *(v88 + 8 * v86);
        goto LABEL_90;
      }

      v82 = *(a5[24] + 4 * *(a5[23] + 8 * a2) + 4 * (v74 / a6));
      v83 = v74 % a6;
    }

    else
    {
      if (v79 < 0)
      {
        v84 = 0x7FFFFFFF;
        if (v49 < 0)
        {
          goto LABEL_88;
        }

        goto LABEL_81;
      }

      v80 = *(a3 + 7);
      if (v80)
      {
        v81 = v80 + v75;
        goto LABEL_80;
      }

      v82 = *(a5[22] + 4 * a2);
      v83 = v78 + v71;
    }

    v84 = v83 + v82 * a6;
    if (v49 < 0)
    {
      goto LABEL_88;
    }

LABEL_81:
    if (v79 >= v10)
    {
      v85 = (a4[12] + i * a4[2] + v76);
    }

    else
    {
      v85 = (*(a3 + 5) + 8 * *(a3 + 6) * v79 + 8 * v49);
    }

    goto LABEL_89;
  }

  return result;
}

void sub_2367DE38C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, void *a7, void *a8, uint64_t *a9, void **a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v506 = *(a4 + 56);
  v558 = 0;
  v557 = 0u;
  v20 = (4 * v506 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = a17 + v20;
  v22 = a1;
  v556 = 0u;
  v555 = 0u;
  if (a3 == 83)
  {
    v23 = *(*(a6 + 72) + 4 * a1);
    v24 = *(*(a6 + 80) + 4 * a1);
    v25 = *(*(a6 + 88) + 4 * a1);
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  v26 = v21 + v20;
  v27 = *(*(a6 + 112) + 8 * a1) + 8;
  *(&v555 + 1) = v27;
  v559 = v24;
  v560 = v25;
  v529 = a1 + 1;
  v28 = v23 + (*(*(a4 + 176) + 4 * v529) - *(*(a4 + 176) + 4 * a1)) * a5;
  v553 = v23;
  v554 = v28;
  v29 = v28;
  if (a3 == 83)
  {
    v29 = *(*(a6 + 64) + 4 * v22);
  }

  v499 = (4 * v506 + 7) & 0xFFFFFFFFFFFFFFF8;
  v545 = v26 + v20;
  LODWORD(v555) = v29;
  v514 = 8 * v22;
  v30 = (*(*(a4 + 200) + 8 * v529) - *(*(a4 + 200) + 8 * v22)) * a5;
  v551 = v28 + v24 + (*(*(a4 + 184) + 8 * v529) - *(*(a4 + 184) + 8 * v22)) * a5;
  v552 = v28 + v25 + v30;
  v31 = v552;
  v542 = v551;
  *&v556 = v551;
  *(&v556 + 1) = v27 + 8 * v551 * v28;
  v32 = v30 + v25;
  *&v557 = v32;
  if (a3 == 81)
  {
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v34 = v27 + 8 * v551 * v28 + 8 * v32 * v28;
    v33 = v34 + 4 * v28 + 4 * v24;
    *(&v557 + 1) = v34;
    v558 = v33;
  }

  if (v24 <= 0)
  {
    v35 = 0;
  }

  else
  {
    v35 = v34 + 4 * v28;
  }

  v524 = v33;
  v510 = v28;
  v36 = v33 + 4 * v28;
  if (v25 <= 0)
  {
    v36 = 0;
  }

  v516 = v35;
  v561 = v35;
  v562 = v36;
  v518 = v36;
  v521 = v29;
  v37 = *(a4 + 240);
  v38 = *(v37 + 8 * v22);
  v546 = a4;
  v547 = a5;
  v532 = v21 + v20;
  v541 = v22;
  v533 = v28;
  v538 = v34;
  v494 = v25;
  if (v38 >= *(v37 + 8 * v529))
  {
    v515 = 0;
  }

  else
  {
    v515 = 0;
    v528 = v551 - v24;
    v39 = v552 - v25;
    do
    {
      v40 = *(*(a4 + 248) + 4 * v38);
      if ((*(*(a4 + 256) + v38) & 2) != 0)
      {
        v41 = *a7 + 32 * v40;
        v42 = *v41;
        v43 = *(v41 + 8);
        if (v43 != *v41)
        {
          if ((v515 & 1) == 0)
          {
            sub_23672A9A0(a1, &v551, a4, a5, v26);
            v28 = v533;
            v34 = v538;
            v22 = v541;
            v26 = v532;
            a5 = v547;
            a4 = v546;
            v44 = *a7 + 32 * v40;
            v42 = *v44;
            v43 = *(v44 + 8);
          }

          while (v42 != v43)
          {
            v550 = *v42;
            v45 = *(v26 + 4 * v550);
            if (v45 < v542)
            {
              if (v45 >= v28)
              {
                if (v45 >= v528)
                {
                  v46 = *(v516 + 4 * (v45 - v528));
                }

                else
                {
                  v46 = (v45 - v28) % a5 + *(*(a4 + 192) + 4 * *(*(a4 + 184) + 8 * v22) + 4 * ((v45 - v28) / a5)) * a5;
                }
              }

              else if ((v45 & 0x80000000) != 0)
              {
                v46 = 0x7FFFFFFF;
              }

              else if (v34)
              {
                v46 = *(v34 + 4 * v45);
              }

              else
              {
                v46 = v45 + *(*(a4 + 176) + 4 * v22) * a5;
              }

              if (v46 < 0)
              {
                v46 = -v46;
              }

              if (v550 == v46)
              {
                sub_236725158(*a7 + 32 * v22, &v550);
                v28 = v533;
                v34 = v538;
                v22 = v541;
                v26 = v532;
                a5 = v547;
                a4 = v546;
              }
            }

            ++v42;
          }

          LOBYTE(v515) = 1;
        }
      }

      if (*(*(a4 + 256) + v38))
      {
        v47 = *a8 + 32 * v40;
        v48 = *v47;
        v49 = *(v47 + 8);
        if (v49 != *v47)
        {
          if ((v515 & 0x100000000) == 0)
          {
            sub_23672AA5C(a1, &v551, a4, a5, v545);
            v28 = v533;
            v34 = v538;
            v22 = v541;
            v26 = v532;
            a5 = v547;
            a4 = v546;
            v50 = *a8 + 32 * v40;
            v48 = *v50;
            v49 = *(v50 + 8);
          }

          while (v48 != v49)
          {
            v550 = *v48;
            v51 = *(v545 + 4 * v550);
            if (v51 < v31)
            {
              if (v51 >= v28)
              {
                if (v51 >= v39)
                {
                  v52 = *(v518 + 4 * (v51 - v39));
                }

                else
                {
                  v52 = (v51 - v28) % a5 + *(*(a4 + 208) + 4 * *(*(a4 + 200) + 8 * v22) + 4 * ((v51 - v28) / a5)) * a5;
                }
              }

              else if ((v51 & 0x80000000) != 0)
              {
                v52 = 0x7FFFFFFF;
              }

              else if (v34)
              {
                v52 = v524[v51];
              }

              else
              {
                v52 = v51 + *(*(a4 + 176) + 4 * v22) * a5;
              }

              if (v52 < 0)
              {
                v52 = -v52;
              }

              if (v550 == v52)
              {
                sub_236725158(*a8 + 32 * v22, &v550);
                v28 = v533;
                v34 = v538;
                v22 = v541;
                v26 = v532;
                a5 = v547;
                a4 = v546;
              }
            }

            ++v48;
          }

          BYTE4(v515) = 1;
        }
      }

      ++v38;
    }

    while (v38 < *(*(a4 + 240) + 8 * v529));
  }

  v53 = v521;
  if (!v521)
  {
    return;
  }

  v54 = (*a7 + 32 * v22);
  v513 = (*a8 + 32 * v22);
  if (v54[1] == *v54 && v513[1] == *v513)
  {
    return;
  }

  std::__sort<std::__less<int,int> &,int *>();
  v55 = sub_23672AB6C(*v54, v54[1]);
  v493 = v54;
  if (v55 != v54[1])
  {
    v54[1] = v55;
  }

  std::__sort<std::__less<int,int> &,int *>();
  v56 = sub_23672AB6C(*v513, v513[1]);
  v58 = v513[1];
  v59 = v546;
  v60 = v538;
  if (v56 != v58)
  {
    v57 = v513[1];
    v58 = v56;
    v513[1] = v56;
  }

  if (v538)
  {
    if (v521 >= 1)
    {
      v61 = 0;
      v62 = v524;
      do
      {
        v63 = *v60++;
        *(a17 + 4 * v63) = v61;
        v64 = *v62++;
        *(v21 + 4 * v64) = v61--;
      }

      while (-v521 != v61);
    }
  }

  else if (v521 >= 1)
  {
    v65 = 0;
    v66 = 0;
    v67 = *(v546 + 176);
    do
    {
      *(a17 + 4 * (v66 + *(v67 + 4 * v541) * v547)) = v65;
      *(v21 + 4 * (v66 + *(v67 + 4 * v541) * v547)) = v65;
      ++v66;
      --v65;
    }

    while (v521 != v66);
  }

  v68 = *v54;
  v492 = v54[1] - *v54;
  if (v492)
  {
    v69 = 0;
    v70 = v492 >> 2;
    if ((v492 >> 2) <= 1)
    {
      v70 = 1;
    }

    do
    {
      *(a17 + 4 * v68[v69]) = v69;
      ++v69;
    }

    while (v70 != v69);
  }

  v71 = *v513;
  v72 = v58 - *v513;
  if (v58 != *v513)
  {
    v73 = 0;
    v74 = v72 >> 2;
    if ((v72 >> 2) <= 1)
    {
      v74 = 1;
    }

    do
    {
      *(v21 + 4 * v71[v73]) = v73;
      ++v73;
    }

    while (v74 != v73);
  }

  v549 = (v545 + v499);
  v75 = v72 >> 2;
  v76 = a9;
  v490 = v72;
  v77 = (v521 * (v492 >> 2));
  v78 = 8 * v77;
  if (a9[1] < v77)
  {
    if (*a9)
    {
      (*(v546 + 32))(*a9, v57);
      v59 = v546;
    }

    v79 = (*(v59 + 24))(8 * v77, v57);
    v59 = v546;
    v76 = a9;
    *a9 = v79;
    a9[1] = v77;
  }

  v80 = &v549[v506];
  v81 = v521 * v75;
  v82 = a10;
  v531 = v80;
  if (a10[1] >= v81)
  {
    v83 = 8 * v81;
  }

  else
  {
    if (*a10)
    {
      (*(v59 + 32))();
      v59 = v546;
    }

    v83 = 8 * v81;
    v82 = a10;
    *a10 = (*(v59 + 24))(8 * v81);
    a10[1] = v81;
    v76 = a9;
    v80 = &v549[v506];
  }

  v517 = &v80[v506];
  v84 = v76;
  bzero(*v76, v78);
  bzero(*v82, v83);
  v85 = *v493;
  v491 = v493[1];
  v86 = v491 - *v493;
  v87 = *v513;
  v489 = v513[1];
  v88 = v489 - *v513;
  v502 = *v84;
  v507 = *v82;
  v89 = *(a6 + 96);
  v90 = *(a2 + 28);
  v91 = (v90 * v90);
  if (v89)
  {
    v92 = *(a6 + 104);
    v93 = v546;
    v94 = v538;
    if (v521 >= 1 && v86 >= 1)
    {
      v95 = 0;
      v534 = *(v546 + 160);
      v519 = *(a2 + 8);
      v96 = 8 * v91;
      do
      {
        if (v524)
        {
          v97 = v524[v95];
        }

        else
        {
          v97 = v95 + *(*(v93 + 176) + 4 * v541) * v90;
        }

        v98 = (v519 + 8 * *(v534 + 4 * (v97 / v90)));
        v99 = *v98;
        v100 = v98[1];
        if (*v98 < v100)
        {
          v101 = *(a2 + 16);
          v102 = v96 * v99 + 8 * v97 % v90 * v90;
          do
          {
            v103 = *(v101 + 4 * v99);
            if ((v103 & 0x80000000) == 0 && v103 < *a2 && v90 != 0)
            {
              v105 = *(*(v546 + 136) + 4 * v103) * v90;
              v106 = (v89 + 8 * v105);
              v107 = (a17 + 4 * v105);
              v108 = v90;
              v109 = v102;
              do
              {
                v111 = *v107++;
                v110 = v111;
                if (v111 < v86 && v105 == v85[v110])
                {
                  v502[v95 * v86 + v110] = *v106 * *(*(a2 + 32) + v109) * *(v92 + 8 * v97);
                }

                v109 += 8;
                ++v106;
                ++v105;
                --v108;
              }

              while (v108);
            }

            ++v99;
            v102 += v96;
          }

          while (v99 != v100);
        }

        ++v95;
        v93 = v546;
        v53 = v521;
        v94 = v538;
      }

      while (v95 != v521);
    }

    if (v53 >= 1 && v88 >= 1)
    {
      v112 = 0;
      v535 = *(v93 + 312);
      v525 = v53;
      do
      {
        if (v94)
        {
          v113 = v94[v112];
        }

        else
        {
          v113 = v112 + *(*(v93 + 176) + 4 * v541) * v90;
        }

        v114 = (v535 + 8 * (v113 / v90));
        v115 = *v114;
        v116 = v114[1];
        if (*v114 < v116)
        {
          v117 = *(v546 + 320);
          do
          {
            v118 = *(v117 + 4 * v115) * v90;
            v119 = (v92 + 8 * v118);
            v120 = (a17 + v499 + 4 * v118);
            v121 = v90;
            v122 = 8 * (v113 % v90);
            do
            {
              v124 = *v120++;
              v123 = v124;
              if (v124 < v88 && v118 == v87[v123])
              {
                v507[v112 * v88 + v123] = *(v89 + 8 * v113) * *(*(a2 + 32) + 8 * *(*(v546 + 328) + 8 * v115) * v91 + v122) * *v119;
              }

              v122 += 8 * v90;
              ++v119;
              ++v118;
              --v121;
            }

            while (v121);
            ++v115;
          }

          while (v115 != v116);
        }

        ++v112;
        v93 = v546;
        v53 = v521;
        v94 = v538;
      }

      while (v112 != v525);
    }
  }

  else
  {
    v93 = v546;
    if (v86 >= 1 && v521 >= 1)
    {
      v125 = 0;
      v126 = *(v546 + 160);
      v127 = *(a2 + 8);
      v128 = 8 * v91;
      do
      {
        if (v524)
        {
          v129 = v524[v125];
        }

        else
        {
          v129 = v125 + *(*(v546 + 176) + 4 * v541) * v90;
        }

        v130 = (v127 + 8 * *(v126 + 4 * (v129 / v90)));
        v131 = *v130;
        v132 = v130[1];
        if (*v130 < v132)
        {
          v133 = *(a2 + 16);
          v134 = v128 * v131 + 8 * v129 % v90 * v90;
          do
          {
            v135 = *(v133 + 4 * v131);
            if ((v135 & 0x80000000) == 0 && v135 < *a2 && v90 != 0)
            {
              v137 = *(*(v546 + 136) + 4 * v135) * v90;
              v138 = (a17 + 4 * v137);
              v139 = v90;
              v140 = v134;
              do
              {
                v142 = *v138++;
                v141 = v142;
                if (v142 < v86 && v137 == v85[v141])
                {
                  v502[v125 * v86 + v141] = *(*(a2 + 32) + v140);
                }

                v140 += 8;
                ++v137;
                --v139;
              }

              while (v139);
            }

            ++v131;
            v134 += v128;
          }

          while (v131 != v132);
        }

        ++v125;
      }

      while (v125 != v521);
    }

    v53 = v521;
    if (v88 >= 1)
    {
      if (v521 >= 1)
      {
        v143 = 0;
        v503 = *(v546 + 312);
        do
        {
          if (v538)
          {
            v144 = v538[v143];
          }

          else
          {
            v144 = v143 + *(*(v546 + 176) + 4 * v541) * v90;
          }

          v145 = (v503 + 8 * (v144 / v90));
          v146 = *v145;
          v147 = v145[1];
          if (*v145 < v147)
          {
            v148 = *(v546 + 320);
            v149 = 8 * (v144 % v90);
            do
            {
              v150 = *(v148 + 4 * v146) * v90;
              v151 = (a17 + v499 + 4 * v150);
              v152 = v90;
              v153 = v149;
              do
              {
                v155 = *v151++;
                v154 = v155;
                if (v155 < v88 && v150 == v87[v154])
                {
                  v507[v143 * v88 + v154] = *(*(a2 + 32) + 8 * *(*(v546 + 328) + 8 * v146) * v91 + v153);
                }

                v153 += 8 * v90;
                ++v150;
                --v152;
              }

              while (v152);
              ++v146;
            }

            while (v146 != v147);
          }

          ++v143;
        }

        while (v143 != v521);
      }

      if (v494 >= 1 && v521 < v31)
      {
        v156 = v521;
        v157 = v31 - v494;
        v158 = v31;
        do
        {
          if (v156 >= v510)
          {
            if (v156 >= v157)
            {
              v159 = *(v518 + 4 * (v156 - v157));
            }

            else
            {
              v159 = (v156 - v533) % v90 + *(*(v546 + 208) + 4 * *(*(v546 + 200) + 8 * v541) + 4 * ((v156 - v533) / v90)) * v90;
            }
          }

          else if (v156 < 0)
          {
            v159 = 0x7FFFFFFF;
          }

          else if (v538)
          {
            v159 = v524[v156];
          }

          else
          {
            v159 = v156 + *(*(v546 + 176) + 4 * v541) * v90;
          }

          if (v159 >= 0)
          {
            v160 = v159;
          }

          else
          {
            v160 = -v159;
          }

          v161 = *(v21 + 4 * v160);
          if (v161 < v88 && v87[v161] == v160 && (v156 < v510 || v160 < *(*(v546 + 176) + 4 * v541) * v90))
          {
            v162 = (*(a2 + 8) + 8 * *(*(v546 + 160) + 4 * (v160 / v90)));
            v163 = *v162;
            v164 = v162[1];
            if (*v162 < v164)
            {
              v165 = *(a2 + 16);
              v166 = &v507[v161];
              v167 = v160 % v90 * v90;
              do
              {
                v168 = *(v165 + 4 * v163);
                if ((v168 & 0x80000000) == 0 && v168 < *a2 && v90 != 0)
                {
                  v170 = 0;
                  v171 = *(*(v546 + 136) + 4 * v168) * v90;
                  v172 = (a17 + 4 * v171);
                  v173 = v90;
                  do
                  {
                    v175 = *v172++;
                    v174 = v175;
                    v176 = -v175;
                    v177 = v175 > 0 || v521 <= v176;
                    if (!v177)
                    {
                      v178 = v538 ? v538[v176] : *(*(v546 + 176) + 4 * v541) * v90 - v174;
                      if (v171 == v178)
                      {
                        v166[v176 * v88] = *(*(a2 + 32) + 8 * v163 * v91 + 8 * v170 + 8 * v167);
                      }
                    }

                    ++v170;
                    ++v171;
                    --v173;
                  }

                  while (v173);
                }

                ++v163;
              }

              while (v163 != v164);
            }
          }

          ++v156;
        }

        while (v156 != v158);
      }
    }
  }

  if (v491 == v85)
  {
    v184 = 0;
    v308 = a14;
    v303 = v517;
    v309 = v489;
  }

  else
  {
    sub_23672AB18(a14);
    v179 = v546;
    v180 = *(v546 + 240);
    v181 = *(v180 + 8 * v541);
    v182 = *(v180 + 8 * v529);
    v183 = v517;
    v184 = 0;
    if (v181 < v182)
    {
      v185 = *(v546 + 256);
      v186 = *a14;
      v187 = v547;
      do
      {
        if ((*(v185 + v181) & 2) != 0)
        {
          v188 = *(*(v546 + 248) + 4 * v181);
          v517[v184++] = v188;
          *(v186 + 4 * v188) = *(a14 + 4);
        }

        ++v181;
      }

      while (v182 != v181);
      while (v184 >= 1)
      {
        v189 = v184 - 1;
        v190 = v183[v189];
        v539 = v189;
        if (a3 == 83)
        {
          v191 = *(*(a6 + 72) + 4 * v190);
          LODWORD(v192) = *(*(a6 + 80) + 4 * v190);
          v193 = *(*(a6 + 88) + 4 * v190);
        }

        else
        {
          v191 = 0;
          LODWORD(v192) = 0;
          v193 = 0;
        }

        v194 = *(v179 + 176);
        v195 = v190 + 1;
        v196 = v191 + (*(v194 + 4 * (v190 + 1)) - *(v194 + 4 * v190)) * v187;
        v543 = v196;
        if (a3 == 83)
        {
          v543 = *(*(a6 + 64) + 4 * v190);
        }

        v197 = *(a6 + 112);
        v198 = *(v179 + 184);
        v199 = *(v198 + 8 * v195);
        v200 = *(v198 + 8 * v190);
        v201 = *(v179 + 200);
        v202 = *(v201 + 8 * v195);
        v203 = *(v201 + 8 * v190);
        v520 = *(v197 + 8 * v190) + 8;
        v204 = (v194 + 4 * v541);
        v536 = v190;
        v508 = v193 + (v202 - v203) * v187;
        v511 = v520 + 8 * (v196 + v192 + (v199 - v200) * v187) * v196;
        v500 = v196 + v192 + (v199 - v200) * v187;
        v526 = v193;
        if (a3 == 81)
        {
          v205 = 0;
          v497 = 0;
          if (v192 <= 0)
          {
            v206 = 0;
          }

          else
          {
            v206 = v196;
          }

          v207 = (4 * v206);
          if (v193 <= 0)
          {
            v208 = 0;
          }

          else
          {
            v208 = v196;
          }

          v209 = (4 * v208);
        }

        else
        {
          v205 = v520 + 8 * (v196 + v192 + (v199 - v200) * v187) * v196 + 8 * (v193 + (v202 - v203) * v187) * v196;
          if (v192 <= 0)
          {
            v207 = 0;
          }

          else
          {
            v207 = (v205 + 4 * v196);
          }

          v497 = v205 + 4 * v196 + 4 * v192;
          v209 = (v497 + 4 * v196);
          if (v193 <= 0)
          {
            v209 = 0;
          }

          if (a3 == 83)
          {
            v210 = *(*(a6 + 80) + 4 * v541);
            v211 = *(*(a6 + 88) + 4 * v541);
            v212 = v547;
            v213 = *(*(a6 + 72) + 4 * v541) + (*(v194 + 4 * v529) - *v204) * v547;
            v214 = *(*(a6 + 64) + 4 * v541);
            goto LABEL_232;
          }
        }

        v211 = 0;
        v210 = 0;
        v212 = v547;
        v213 = (*(v194 + 4 * v529) - *v204) * v547;
        v214 = v213;
LABEL_232:
        v215 = *v493;
        v216 = (v493[1] - *v493) >> 2;
        v504 = *a9;
        v217 = *(v197 + 8 * v541) + 8 * (v210 + v213 + (*(v198 + 8 * v529) - *(v198 + v514)) * v212) * v213 + 8 * (v211 + (*(v201 + 8 * v529) - *(v201 + v514)) * v212) * v213 + 4 * v213 + 4 * v210;
        v218 = v217 + 8;
        if (a3 == 81)
        {
          v219 = 0;
        }

        else
        {
          v219 = v217 + 8;
        }

        v220 = v543;
        if (v543 >= v196)
        {
          v221 = 0;
          v231 = v543;
        }

        else
        {
          v221 = 0;
          v222 = v543 - v196;
          v223 = (v205 + 4 * v543);
          v224 = v543;
          do
          {
            v226 = *v223++;
            v225 = v226;
            if (v226 >= 0)
            {
              v227 = v225;
            }

            else
            {
              v227 = -v225;
            }

            v228 = *(a17 + 4 * v227);
            if ((v228 & 0x80000000) == 0 && v228 < v216 && v215[v228] == v227)
            {
              v229 = &v549[v221];
              *v229 = v224;
              v229[1] = v228;
              ++v221;
            }

            ++v224;
            v230 = __CFADD__(v222++, 1);
          }

          while (!v230);
          v231 = v196;
        }

        if (v199 > v200)
        {
          v232 = *(v179 + 192);
          do
          {
            if (v547 >= 1)
            {
              v233 = *(v232 + 4 * v200) * v547;
              v234 = v233 + v547;
              do
              {
                v235 = *(a17 + 4 * v233);
                if ((v235 & 0x80000000) == 0 && v235 < v216 && v233 == v215[v235])
                {
                  v236 = &v549[v221++];
                  *v236 = v231;
                  v236[1] = v235;
                }

                ++v233;
                ++v231;
              }

              while (v233 < v234);
            }

            ++v200;
          }

          while (v200 != v199);
        }

        if (v192 < 1)
        {
          v237 = &v549[v506];
          v183 = v517;
        }

        else
        {
          v192 = v192;
          v237 = &v549[v506];
          v183 = v517;
          do
          {
            v238 = *v207++;
            v200 = v238;
            v239 = *(a17 + 4 * v238);
            if ((v239 & 0x80000000) == 0 && v239 < v216)
            {
              if (v215[v239] == v200)
              {
                v200 = &v549[v221];
                *v200 = v231;
                *(v200 + 4) = v239;
                ++v221;
              }

              v237 = &v549[v506];
            }

            ++v231;
            --v192;
          }

          while (v192);
        }

        v187 = v547;
        if (!v221)
        {
          goto LABEL_347;
        }

        if (v543 >= v196)
        {
          v240 = 0;
          v249 = v543;
        }

        else
        {
          v240 = 0;
          v241 = v543 - v196;
          v242 = (v497 + 4 * v543);
          do
          {
            v244 = *v242++;
            v243 = v244;
            if (v244 >= 0)
            {
              v245 = v243;
            }

            else
            {
              v245 = -v243;
            }

            v200 = *(v21 + 4 * v245);
            v246 = -v200;
            if (v200 <= 0 && v214 > v246)
            {
              v200 = a3 == 81 ? (*v204 * v547 - v200) : *(v218 + 4 * v246);
              if (v200 == v245)
              {
                v248 = &v237[v240];
                v200 = (v240 + 1);
                *v248 = v220;
                v248[1] = v246;
                ++v240;
              }
            }

            ++v220;
            v230 = __CFADD__(v241++, 1);
          }

          while (!v230);
          v249 = v196;
        }

        if (v202 > v203)
        {
          v250 = *(v179 + 208);
          do
          {
            if (v547 >= 1)
            {
              v251 = *(v250 + 4 * v203) * v547;
              v252 = v251 + v547;
              do
              {
                v200 = *(v21 + 4 * v251);
                v253 = -v200;
                if (v200 <= 0 && v214 > v253)
                {
                  v200 = a3 == 81 ? (*v204 * v547 - v200) : *(v218 + 4 * v253);
                  if (v251 == v200)
                  {
                    v200 = &v237[v240];
                    *v200 = v249;
                    *(v200 + 4) = v253;
                    ++v240;
                  }
                }

                ++v251;
                ++v249;
              }

              while (v251 < v252);
            }

            ++v203;
          }

          while (v203 != v202);
        }

        if (v526 >= 1)
        {
          v255 = v526;
          v256 = v543;
          do
          {
            v258 = *v209++;
            v257 = v258;
            v259 = *(v21 + 4 * v258);
            v260 = -v259;
            v261 = v259 > 0 || v214 <= v260;
            if (!v261 && *(v219 + 4 * v260) == v257)
            {
              v262 = &v237[v240];
              *v262 = v249;
              v262[1] = v260;
              ++v240;
            }

            ++v249;
            --v255;
          }

          while (v255);
          if (!v240)
          {
            goto LABEL_347;
          }

LABEL_314:
          v263 = v221 * v256;
          v264 = a12;
          if (a11[1] < (v221 * v256))
          {
            if (*a11)
            {
              (*(v179 + 32))(*a11, a12);
              v179 = v546;
            }

            v265 = (*(v179 + 24))(8 * v263, v264);
            v179 = v546;
            *a11 = v265;
            a11[1] = v263;
            v237 = &v549[v506];
            v264 = a12;
            v256 = v543;
          }

          v266 = v520;
          if (v256 >= 1)
          {
            v267 = 0;
            v268 = *a11;
            do
            {
              if (v221 >= 1)
              {
                v269 = v549;
                v270 = v268;
                v271 = v221;
                do
                {
                  v272 = *v269++;
                  *v270++ = *(v520 + 8 * v267 * v500 + 8 * v272);
                  --v271;
                }

                while (v271);
              }

              ++v267;
              v268 += v221;
            }

            while (v267 != v256);
          }

          v273 = v240 * v256;
          if (v264[1] < (v240 * v256))
          {
            if (*v264)
            {
              (*(v179 + 32))(*v264, v264, v520, v200);
              v179 = v546;
            }

            v274 = (*(v179 + 24))(8 * v273);
            v179 = v546;
            v264 = a12;
            *a12 = v274;
            a12[1] = v273;
            v237 = &v549[v506];
            v256 = v543;
            v266 = v520;
          }

          if (v256 >= 1)
          {
            v275 = 0;
            v276 = 0;
            do
            {
              if (v240 >= 1)
              {
                v277 = (*v264 + v275);
                v278 = v237;
                v279 = v240;
                do
                {
                  v280 = *v278++;
                  v281 = v511 + 8 * v276 * v508 + 8 * (v280 - v196);
                  v282 = (v266 + 8 * v276 + 8 * v280 * v500);
                  if (v280 >= v196)
                  {
                    v282 = v281;
                  }

                  *v277++ = *v282;
                  --v279;
                }

                while (v279);
              }

              ++v276;
              v275 += 8 * v240;
            }

            while (v276 != v543);
          }

          v283 = v240 * v221;
          v284 = *a13;
          if (a13[1] >= (v240 * v221))
          {
            v183 = v517;
          }

          else
          {
            v183 = v517;
            if (v284)
            {
              (*(v179 + 32))(v284, v264, v266, v511);
              v179 = v546;
            }

            *a13 = (*(v179 + 24))(8 * v283);
            a13[1] = v283;
          }

          cblas_dgemm_NEWLAPACK();
          v179 = v546;
          v187 = v547;
          if (v240 >= 1)
          {
            v285 = 0;
            v286 = *a13;
            do
            {
              if (v221 >= 1)
              {
                v287 = &v504[8 * SHIDWORD(v531[v285]) * (v492 >> 2)];
                v288 = v549;
                v289 = v286;
                v290 = v221;
                do
                {
                  v291 = *v289++;
                  *&v287[8 * *(v288 + 1)] = v291 + *&v287[8 * *(v288 + 1)];
                  ++v288;
                  --v290;
                }

                while (v290);
              }

              ++v285;
              v286 += v221;
            }

            while (v285 != v240);
          }

          goto LABEL_347;
        }

        v256 = v543;
        if (v240)
        {
          goto LABEL_314;
        }

LABEL_347:
        v292 = (*(v179 + 240) + 8 * v536);
        v293 = *v292;
        v294 = v292[1];
        if (v293 >= v294)
        {
          v53 = v521;
          v184 = v539;
        }

        else
        {
          v295 = *(v179 + 256);
          v296 = *a14;
          v53 = v521;
          v184 = v539;
          do
          {
            if ((*(v295 + v293) & 2) != 0)
            {
              v297 = *(*(v179 + 248) + 4 * v293);
              if (*(v296 + 4 * v297) < *(a14 + 4))
              {
                v183[v184++] = v297;
                *(v296 + 4 * v297) = *(a14 + 4);
              }
            }

            ++v293;
          }

          while (v294 != v293);
        }
      }
    }

    cblas_dtrsm_NEWLAPACK();
    if (v53 < 1)
    {
      v302 = 0.0;
      v93 = v546;
      v303 = v517;
    }

    else
    {
      v298 = 0;
      v299 = v493[1];
      v300 = v299 - *v493;
      v301 = *a9;
      if (v300 <= 1)
      {
        v300 = 1;
      }

      v302 = 0.0;
      v93 = v546;
      v303 = v517;
      do
      {
        v304 = v300;
        v305 = v301;
        if (v299 != *v493)
        {
          do
          {
            v306 = *v305++;
            v307 = fabs(v306);
            if (v307 >= v302)
            {
              v302 = v307;
            }

            --v304;
          }

          while (v304);
        }

        ++v298;
        v301 += (v492 >> 2);
      }

      while (v298 != v53);
    }

    if (v302 > 1.0 / *(a6 + 16))
    {
      *(a15 + v541) = 1;
      v319 = *(v93 + 168);
      if (v529 >= v319)
      {
        return;
      }

      while (1)
      {
        if ((*(a15 + v529) & 1) == 0)
        {
          v320 = (*(v93 + 240) + 8 * v529);
          v322 = *v320;
          v321 = v320[1];
          v177 = v321 <= v322;
          v323 = v321 - v322;
          if (!v177)
          {
            v324 = (*(v93 + 248) + 4 * v322);
            while (1)
            {
              v325 = *v324++;
              if (*(a15 + v325) == 1)
              {
                break;
              }

              if (!--v323)
              {
                goto LABEL_385;
              }
            }

            *(a15 + v529) = 1;
          }
        }

LABEL_385:
        if (v319 == ++v529)
        {
          return;
        }
      }
    }

    v308 = a14;
    v87 = *v513;
    v309 = v513[1];
  }

  v310 = (v490 >> 2);
  if (v309 == v87)
  {
    goto LABEL_527;
  }

  v311 = v308;
  sub_23672AB18(v308);
  v93 = v546;
  v312 = *(v546 + 240);
  v313 = *(v312 + 8 * v541);
  v505 = v312;
  v314 = *(v312 + 8 * v529);
  if (v313 >= v314)
  {
    v317 = v547;
  }

  else
  {
    v315 = *(v546 + 256);
    v316 = *v311;
    v317 = v547;
    do
    {
      if (*(v315 + v313))
      {
        v318 = *(*(v546 + 248) + 4 * v313);
        v303[v184++] = v318;
        *(v316 + 4 * v318) = *(v311 + 16);
      }

      ++v313;
    }

    while (v314 != v313);
  }

  while (v184 >= 1)
  {
    v326 = v184 - 1;
    v327 = v303[v326];
    if (a3 == 83)
    {
      v328 = *(*(a6 + 72) + 4 * v327);
      LODWORD(v329) = *(*(a6 + 80) + 4 * v327);
      v330 = *(*(a6 + 88) + 4 * v327);
    }

    else
    {
      v328 = 0;
      LODWORD(v329) = 0;
      v330 = 0;
    }

    v331 = *(v93 + 176);
    v332 = v327 + 1;
    v333 = v328 + (*(v331 + 4 * (v327 + 1)) - *(v331 + 4 * v327)) * v317;
    v334 = v333;
    if (a3 == 83)
    {
      v334 = *(*(a6 + 64) + 4 * v327);
    }

    v544 = v334;
    v335 = *(a6 + 112);
    v336 = *(v93 + 184);
    v337 = *(v336 + 8 * v332);
    v338 = *(v336 + 8 * v327);
    v339 = v333 + v329 + (v337 - v338) * v317;
    v340 = v317;
    v341 = *(v93 + 200);
    v342 = *(v341 + 8 * v332);
    v527 = v327;
    v343 = *(v341 + 8 * v327);
    v498 = v339;
    v509 = *(v335 + 8 * v327) + 8;
    v344 = v330 + (v342 - v343) * v340;
    v345 = (v331 + 4 * v541);
    v540 = v326;
    v522 = v509 + 8 * v339 * v333;
    v537 = v344;
    if (a3 == 81)
    {
      v346 = 0;
      v495 = 0;
      if (v329 <= 0)
      {
        v347 = 0;
      }

      else
      {
        v347 = v333;
      }

      v348 = (4 * v347);
      if (v330 <= 0)
      {
        v349 = 0;
      }

      else
      {
        v349 = v333;
      }

      v350 = (4 * v349);
    }

    else
    {
      v346 = v509 + 8 * v339 * v333 + 8 * v344 * v333;
      v351 = v346 + 4 * v333;
      if (v329 <= 0)
      {
        v348 = 0;
      }

      else
      {
        v348 = (v346 + 4 * v333);
      }

      v495 = v351 + 4 * v329;
      if (v330 <= 0)
      {
        v350 = 0;
      }

      else
      {
        v350 = (v351 + 4 * v329 + 4 * v333);
      }

      if (a3 == 83)
      {
        v352 = *(*(a6 + 80) + 4 * v541);
        v353 = *(*(a6 + 88) + 4 * v541);
        v354 = v547;
        v355 = *(*(a6 + 72) + 4 * v541) + (*(v331 + 4 * v529) - *v345) * v547;
        v356 = *(*(a6 + 64) + 4 * v541);
        goto LABEL_410;
      }
    }

    v353 = 0;
    v352 = 0;
    v354 = v547;
    v355 = (*(v331 + 4 * v529) - *v345) * v547;
    v356 = v355;
LABEL_410:
    v357 = 0;
    v358 = *(v335 + 8 * v541);
    v512 = v513[1];
    v359 = *v513;
    v501 = *a10;
    v360 = v358 + 8 * (v352 + v355 + (*(v336 + 8 * v529) - *(v336 + v514)) * v354) * v355 + 8 * (v353 + (*(v341 + 8 * v529) - *(v341 + v514)) * v354) * v355;
    v361 = v360 + 8;
    if (a3 == 81)
    {
      v362 = 0;
    }

    else
    {
      v362 = v360 + 8;
    }

    v363 = v544;
    if (v544 < v333)
    {
      v357 = 0;
      v364 = v544 - v333;
      v365 = (v346 + 4 * v544);
      v366 = v544;
      do
      {
        v368 = *v365++;
        v367 = v368;
        if (v368 >= 0)
        {
          v369 = v367;
        }

        else
        {
          v369 = -v367;
        }

        v370 = *(a17 + 4 * v369);
        v371 = -v370;
        if (v370 <= 0 && v356 > v371)
        {
          v373 = a3 == 81 ? *v345 * v547 - v370 : *(v361 + 4 * v371);
          if (v373 == v369)
          {
            v374 = &v549[v357++];
            *v374 = v366;
            v374[1] = v371;
          }
        }

        ++v366;
        v230 = __CFADD__(v364++, 1);
      }

      while (!v230);
      v363 = v333;
    }

    if (v337 > v338)
    {
      v375 = *(v546 + 192);
      do
      {
        if (v547 >= 1)
        {
          v376 = *(v375 + 4 * v338) * v547;
          v377 = v376 + v547;
          v378 = v376;
          do
          {
            v379 = *(a17 + 4 * v378);
            v380 = -v379;
            if (v379 <= 0 && v356 > v380)
            {
              v382 = a3 == 81 ? *v345 * v547 - v379 : *(v361 + 4 * v380);
              if (v378 == v382)
              {
                v383 = &v549[v357++];
                *v383 = v363;
                v383[1] = v380;
              }
            }

            ++v378;
            ++v363;
          }

          while (v378 < v377);
        }

        ++v338;
      }

      while (v338 != v337);
    }

    if (v329 < 1)
    {
      v93 = v546;
      v317 = v547;
      if (!v357)
      {
        goto LABEL_516;
      }

LABEL_457:
      v390 = (v512 - v359) >> 2;
      v391 = &v549[v506];
      v392 = 0;
      if (v544 >= v333)
      {
        v403 = v544;
        LODWORD(v397) = v330;
        v396 = v522;
        v398 = v537;
      }

      else
      {
        v393 = v544 - v333;
        v394 = (v495 + 4 * v544);
        v395 = v544;
        LODWORD(v397) = v330;
        v396 = v522;
        v398 = v537;
        do
        {
          v400 = *v394++;
          v399 = v400;
          if (v400 < 0)
          {
            v399 = -v399;
          }

          v401 = *(v21 + 4 * v399);
          if ((v401 & 0x80000000) == 0 && v401 < v390)
          {
            v338 = v359[v401];
            if (v338 == v399)
            {
              v402 = &v531[v392++];
              *v402 = v395;
              v402[1] = v401;
            }
          }

          ++v395;
          v230 = __CFADD__(v393++, 1);
        }

        while (!v230);
        v403 = v333;
      }

      if (v342 > v343)
      {
        v404 = *(v93 + 208);
        do
        {
          if (v317 >= 1)
          {
            v405 = *(v404 + 4 * v343) * v317;
            v406 = v405;
            v407 = v405 + v317;
            do
            {
              v338 = *(v21 + 4 * v406);
              if ((v338 & 0x80000000) == 0 && v338 < v390 && v406 == v359[v338])
              {
                v408 = &v531[v392++];
                *v408 = v403;
                v408[1] = v338;
              }

              ++v406;
              ++v403;
            }

            while (v406 < v407);
          }

          ++v343;
        }

        while (v343 != v342);
      }

      if (v397 >= 1)
      {
        v397 = v397;
        do
        {
          v410 = *v350++;
          v409 = v410;
          v411 = *(v21 + 4 * v410);
          if ((v411 & 0x80000000) == 0 && v411 < v390 && v359[v411] == v409)
          {
            v412 = &v531[v392++];
            *v412 = v403;
            v412[1] = v411;
          }

          ++v403;
          --v397;
        }

        while (v397);
      }

      if (v392)
      {
        v413 = v544;
        v414 = v544 * v357;
        if (a11[1] < (v544 * v357))
        {
          v415 = v396;
          if (*a11)
          {
            (*(v93 + 32))(*a11, v338, v93, v531);
            v93 = v546;
          }

          v416 = (*(v93 + 24))(8 * v414);
          v93 = v546;
          *a11 = v416;
          a11[1] = v414;
          v391 = &v549[v506];
          v413 = v544;
          v396 = v415;
          v398 = v537;
        }

        v417 = v413;
        v418 = a12;
        v419 = v509;
        if (v413 >= 1)
        {
          v420 = 0;
          v421 = *a11;
          do
          {
            v422 = v549;
            v423 = v421;
            v424 = v357;
            do
            {
              v425 = *v422++;
              *v423++ = *(v509 + 8 * v420 * v498 + 8 * v425);
              --v424;
            }

            while (v424);
            ++v420;
            v421 += v357;
          }

          while (v420 != v417);
        }

        v426 = v544;
        v427 = v544 * v392;
        if (a12[1] < (v544 * v392))
        {
          if (*a12)
          {
            (*(v93 + 32))(*a12, a12, v93, v391);
            v427 = v544 * v392;
            v93 = v546;
          }

          v428 = v427;
          v429 = (*(v93 + 24))(8 * v427);
          v93 = v546;
          v418 = a12;
          *a12 = v429;
          a12[1] = v428;
          v391 = &v549[v506];
          v426 = v544;
          v419 = v509;
          v396 = v522;
          v398 = v537;
        }

        if (v426 >= 1)
        {
          v430 = 0;
          v431 = 0;
          do
          {
            v432 = (*v418 + v430);
            v433 = v391;
            v434 = v392;
            do
            {
              v435 = *v433++;
              v436 = v396 + 8 * v431 * v398 + 8 * (v435 - v333);
              v437 = (v419 + 8 * v431 + 8 * v435 * v498);
              if (v435 >= v333)
              {
                v437 = v436;
              }

              *v432++ = *v437;
              --v434;
            }

            while (v434);
            ++v431;
            v430 += 8 * v392;
          }

          while (v431 != v417);
        }

        v438 = v392 * v357;
        v439 = a13;
        v440 = *a13;
        if (a13[1] < v438)
        {
          if (v440)
          {
            (*(v93 + 32))(v440, v418, v93, v391);
            v93 = v546;
          }

          v439 = a13;
          *a13 = (*(v93 + 24))(8 * v438);
          a13[1] = v438;
        }

        cblas_dgemm_NEWLAPACK();
        v441 = 0;
        v442 = *v439;
        v93 = v546;
        v317 = v547;
        do
        {
          v443 = &v501[8 * SHIDWORD(v531[v441])];
          v444 = v549;
          v445 = v442;
          v446 = v357;
          do
          {
            v447 = *v445++;
            v448 = *(v444 + 1) * v310;
            *&v443[8 * v448] = v447 + *&v443[8 * v448];
            ++v444;
            --v446;
          }

          while (v446);
          ++v441;
          v442 += v357;
        }

        while (v441 != v392);
        v505 = *(v546 + 240);
      }

      goto LABEL_516;
    }

    v329 = v329;
    v93 = v546;
    v317 = v547;
    do
    {
      v385 = *v348++;
      v384 = v385;
      v386 = *(a17 + 4 * v385);
      v387 = -v386;
      v388 = v386 > 0 || v356 <= v387;
      if (!v388 && *(v362 + 4 * v387) == v384)
      {
        v389 = &v549[v357++];
        *v389 = v363;
        v389[1] = v387;
      }

      ++v363;
      --v329;
    }

    while (v329);
    if (v357)
    {
      goto LABEL_457;
    }

LABEL_516:
    v449 = (v505 + 8 * v527);
    v450 = *v449;
    v451 = v449[1];
    if (*v449 >= v451)
    {
      v303 = v517;
      v184 = v540;
    }

    else
    {
      v452 = *(v93 + 256);
      v453 = *a14;
      v303 = v517;
      v184 = v540;
      do
      {
        if (*(v452 + v450))
        {
          v454 = *(*(v93 + 248) + 4 * v450);
          if (*(v453 + 4 * v454) < *(a14 + 4))
          {
            v517[v184++] = v454;
            *(v453 + 4 * v454) = *(a14 + 4);
          }
        }

        ++v450;
      }

      while (v451 != v450);
    }
  }

  if (v555 > 1)
  {
    cblas_dtrsm_NEWLAPACK();
    v93 = v546;
  }

LABEL_527:
  v455 = v547;
  if ((v515 & 1) == 0 && v493[1] != *v493)
  {
    sub_23672A9A0(a1, &v551, v93, v547, v532);
    v455 = v547;
    v93 = v546;
  }

  v456 = v555;
  if (v555 >= 1)
  {
    v457 = 0;
    v459 = *v493;
    v458 = v493[1];
    v460 = v458 - *v493;
    v461 = *a9;
    v462 = *(&v555 + 1);
    v463 = v556;
    if (v460 <= 1)
    {
      v460 = 1;
    }

    do
    {
      if (v458 != v459)
      {
        v464 = v460;
        v465 = v459;
        v466 = v461;
        do
        {
          v467 = *v466++;
          v468 = v467;
          v469 = *v465++;
          *(v462 + 8 * v463 * v457 + 8 * *(v532 + 4 * v469)) = v468;
          --v464;
        }

        while (v464);
      }

      ++v457;
      v461 += (v492 >> 2);
    }

    while (v457 != v456);
  }

  if ((v515 & 0x100000000) == 0 && v513[1] != *v513)
  {
    sub_23672AA5C(a1, &v551, v93, v455, v545);
  }

  if (v456 >= 1)
  {
    v470 = 0;
    v471 = 0;
    v473 = *v513;
    v472 = v513[1];
    v474 = v472 - *v513;
    v475 = v554;
    v476 = *(&v556 + 1);
    v477 = v557;
    v478 = *(&v555 + 1);
    v479 = v556;
    if (v474 <= 1)
    {
      v474 = 1;
    }

    do
    {
      if (v472 != v473)
      {
        v480 = (*a10 + v470);
        v481 = v474;
        v482 = v473;
        do
        {
          v483 = *v482++;
          v484 = *(v545 + 4 * v483);
          v177 = v484 < v475;
          v485 = *v480++;
          v486 = v485;
          v487 = v476 + 8 * v477 * v471 + 8 * (v484 - v475);
          v488 = (v478 + 8 * v471 + 8 * v479 * v484);
          if (!v177)
          {
            v488 = v487;
          }

          *v488 = v486;
          --v481;
        }

        while (v481);
      }

      ++v471;
      v470 += 8 * v310;
    }

    while (v471 != v456);
  }
}

uint64_t sub_2367E064C(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, int *a8, int *a9, uint64_t a10, int a11, void *a12, uint64_t *a13, double **a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v27 = a5;
  v662 = *MEMORY[0x277D85DE8];
  v607 = *(&off_28499C2F0 + a4 - 81);
  v29 = *(a5 + 56);
  v30 = 4 * v29;
  v608 = 4 * v29 + 7;
  v641 = a23 + (v608 & 0xFFFFFFFFFFFFFFF8);
  v628 = v641 + (v608 & 0xFFFFFFFFFFFFFFF8);
  v610 = (v628 + 8 * v29);
  v611 = v29;
  v31 = &v610[v29];
  v32 = (v31 + (v608 & 0xFFFFFFFFFFFFFFF8) + (v608 & 0xFFFFFFFFFFFFFFF8));
  v33 = v32 + (v608 & 0xFFFFFFFFFFFFFFF8);
  v659 = 0u;
  v660 = 0u;
  v657 = 0u;
  v658 = 0u;
  v655 = 0u;
  v656 = 0u;
  v34 = a1;
  v35 = a1 + 1;
  v36 = *(a5 + 184);
  v37 = *(*(a5 + 176) + 4 * v35) - *(*(a5 + 176) + 4 * a1);
  v38 = v37 * a6;
  HIDWORD(v655) = v37 * a6;
  v39 = 8 * a1;
  *(&v656 + 1) = *(a7[14] + v39) + 8;
  v619 = v35;
  v40 = 8 * v35;
  LODWORD(v36) = *(v36 + 8 * v35) - *(v36 + v39);
  v41 = *(a5 + 168);
  LODWORD(v655) = (v37 + v36) * a6;
  v42 = (*(*(a5 + 200) + v40) - *(*(a5 + 200) + v39)) * a6;
  DWORD1(v655) = v42 + v37 * a6;
  v609 = v41;
  *&v657 = v655;
  *(&v657 + 1) = *(&v656 + 1) + 8 * v655 * (v37 * a6);
  v631 = &v33[8 * v41 + (v608 & 0xFFFFFFFFFFFFFFF8)];
  v616 = &v33[v608 & 0xFFFFFFFFFFFFFFF8];
  v617 = v631 + (v608 & 0xFFFFFFFFFFFFFFF8);
  if (a4 != 82)
  {
    v30 = 0;
  }

  v606 = v30;
  if (a4 == 82)
  {
    v43 = v617 + (v608 & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v43 = 0;
  }

  v605 = v43;
  *&v658 = v42;
  v650 = a1;
  v627 = a6;
  if (a4 != 81)
  {
    v44 = *(&v656 + 1) + 8 * v655 * v38 + 8 * v42 * v38;
    *(&v658 + 1) = v44;
    *&v659 = v44 + 4 * v38;
    if (a4 == 83)
    {
      sub_2367DCA50(v661, a1, 1, 83, a5, a6, a7, a10, (v31 + (v608 & 0xFFFFFFFFFFFFFFF8)), v611 & 0x3FFFFFFFFFFFFFFFLL, (v32 + (v608 & 0xFFFFFFFFFFFFFFF8)), v611 & 0x3FFFFFFFFFFFFFFFLL);
      v46 = v661[0];
      v600 = v661[1];
      sub_2367DCA50(v661, a1, 2, 83, a5, v627, a7, a10, v31, v611 & 0x3FFFFFFFFFFFFFFFLL, v32, v611 & 0x3FFFFFFFFFFFFFFFLL);
      v47 = 0;
      v48 = v661[0];
      v599 = v661[1];
      *(a7[10] + 4 * v650) = DWORD2(v661[0]);
      *(a7[11] + 4 * v650) = DWORD2(v46);
      v49 = a7[9];
      *(v49 + 4 * v650) = 0;
      v27 = a5;
      v50 = *(a5 + 240);
      v51 = *(v50 + 8 * v650);
      v52 = *(v50 + 8 * v619);
      a6 = v627;
      if (v51 < v52)
      {
        v47 = 0;
        v53 = *(a5 + 256);
        do
        {
          if (*(v53 + v51) == 3)
          {
            v54 = *(*(a5 + 248) + 4 * v51);
            v47 += *(v49 + 4 * v54) + (*(*(a5 + 176) + 4 * v54 + 4) - *(*(a5 + 176) + 4 * v54)) * v627 - *(a7[8] + 4 * v54);
            *(v49 + 4 * v650) = v47;
          }

          ++v51;
        }

        while (v52 != v51);
      }

      if (v47 > 0 || *(&v46 + 1) || *(&v48 + 1))
      {
        v55 = SHIDWORD(v655);
        v56 = HIDWORD(v655) + v47;
        v57 = v47 + DWORD2(v48) + v655;
        v58 = v47 + DWORD2(v46) + DWORD1(v655);
        v59 = 4 * (*(&v46 + 1) + *(&v48 + 1) + 2 * v56) + 8 * (v58 * v56 + (v57 * v56)) + 8;
        v60 = a7[14];
        v61 = *(v60 + 8 * v650);
        if (v59 > *v61)
        {
          v636 = SHIDWORD(v655);
          if (*v61)
          {
            (*(a5 + 32))();
          }

          *(a7[14] + 8 * v650) = (*(a5 + 24))(4 * (*(&v46 + 1) + *(&v48 + 1) + 2 * v56) + 8 * (v58 * v56 + (v57 * v56)) + 8);
          v60 = a7[14];
          v61 = *(v60 + 8 * v650);
          if (!v61)
          {
            v585 = *(a5 + 40);
            if (!v585)
            {
              v586 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              if (v586)
              {
                sub_23672B14C(v586, v587, v588, v589, v590, v591, v592, v593);
              }

              _SparseTrap();
            }

            memset(&v661[14] + 10, 0, 22);
            *(&v661[13] + 10) = 0u;
            *(&v661[12] + 10) = 0u;
            *(&v661[11] + 10) = 0u;
            *(&v661[10] + 10) = 0u;
            *(&v661[9] + 10) = 0u;
            *(&v661[8] + 10) = 0u;
            *(&v661[7] + 10) = 0u;
            *(&v661[6] + 10) = 0u;
            memset(&v661[3] + 10, 0, 48);
            strcpy(v661, "Failed to allocate additional storage for delayed pivots\n");
            v585(v661);
            return 4294967293;
          }

          *v61 = v59;
          v49 = a7[9];
          v47 = *(v49 + 4 * v650);
          a6 = v627;
          v55 = v636;
        }

        v62 = &v61[(v57 - v56 + v58) * v56 + 1];
        v63 = (v62 + 4 * v56);
        v64 = &v63[4 * *(&v48 + 1)];
        if (v47 >= 1)
        {
          v65 = *(a5 + 240);
          v66 = *(v65 + 8 * v650);
          v67 = *(v65 + 8 * v619);
          if (v66 < v67)
          {
            v68 = &v64[4 * v55];
            v69 = *(a5 + 256);
            v70 = v62 + 4 * v55;
            do
            {
              if (*(v69 + v66) == 3)
              {
                v71 = *(*(a5 + 248) + 4 * v66);
                v72 = *(v49 + 4 * v71) + (*(*(a5 + 176) + 4 * (v71 + 1)) - *(*(a5 + 176) + 4 * v71)) * a6;
                v73 = *(a7[8] + 4 * v71);
                if (v73 < v72)
                {
                  v74 = 0;
                  v75 = 8 * (v71 + 1);
                  v76 = *(a7[10] + 4 * v71);
                  v77 = *(a7[11] + 4 * v71) + (*(*(a5 + 200) + v75) - *(*(a5 + 200) + 8 * v71)) * a6;
                  v78 = v76 + v72 + (*(*(a5 + 184) + v75) - *(*(a5 + 184) + 8 * v71)) * a6;
                  v79 = v72;
                  v80 = *(v60 + 8 * v71) + 8;
                  v81 = 8 * v78 + 8 * v77;
                  v82 = v80 + v81 * v72 + 4 * v73;
                  v83 = v80 + (v81 | 4) * v79 + 4 * v73 + 4 * v76;
                  v84 = v73 - v79;
                  do
                  {
                    v85 = *(v82 + v74);
                    if (v85 < 0)
                    {
                      v85 = -v85;
                    }

                    *(v70 + v74) = v85;
                    v86 = *(v83 + v74);
                    if (v86 < 0)
                    {
                      v86 = -v86;
                    }

                    *&v68[v74] = v86;
                    v74 += 4;
                    v87 = __CFADD__(v84++, 1);
                  }

                  while (!v87);
                  v70 += v74;
                  v68 += v74;
                }
              }

              ++v66;
            }

            while (v66 != v67);
          }
        }

        if (*(&v48 + 1))
        {
          memcpy(v63, v48, 4 * *(&v48 + 1));
          a6 = v627;
        }

        if (*(&v46 + 1))
        {
          memcpy(&v64[4 * v56], v46, 4 * *(&v46 + 1));
          a6 = v627;
        }

        v34 = v650;
        v88 = *(a7[9] + 4 * v650);
        v89 = *(a7[10] + 4 * v650);
        v90 = *(a7[11] + 4 * v650);
        v91 = *(a7[14] + 8 * v650) + 8;
        v92 = v88 + (*(*(a5 + 176) + 4 * v619) - *(*(a5 + 176) + 4 * v650)) * a6;
        v93 = *(a7[8] + 4 * v650);
        v94 = (*(*(a5 + 200) + v40) - *(*(a5 + 200) + 8 * v650)) * a6;
        v95 = v92 + v90 + v94;
        v96 = (v92 + v89 + (*(*(a5 + 184) + v40) - *(*(a5 + 184) + 8 * v650)) * a6);
        v97 = v91 + 8 * v96 * v92;
        v98 = v94 + v90;
        v44 = v97 + 8 * v98 * v92;
        v99 = v44 + 4 * v92;
        LODWORD(v655) = v92 + v89 + (*(*(a5 + 184) + v40) - *(*(a5 + 184) + 8 * v650)) * a6;
        DWORD1(v655) = v95;
        if (v89 <= 0)
        {
          v100 = 0;
        }

        else
        {
          v100 = v44 + 4 * v92;
        }

        *(&v655 + 1) = __PAIR64__(v92, v88);
        v101 = v99 + 4 * v89 + 4 * v92;
        if (v90 <= 0)
        {
          v101 = 0;
        }

        *&v656 = v93;
        *(&v656 + 1) = v91;
        *&v657 = v96;
        *(&v657 + 1) = v91 + 8 * v96 * v92;
        *&v658 = v98;
        *(&v658 + 1) = v97 + 8 * v98 * v92;
        *&v659 = v99 + 4 * v89;
        *(&v659 + 1) = __PAIR64__(v90, v89);
        *&v660 = v100;
        *(&v660 + 1) = v101;
      }

      else
      {
        v44 = *(&v658 + 1);
        if (!*(&v658 + 1))
        {
          v45 = 1;
          v34 = v650;
          goto LABEL_53;
        }

        v34 = v650;
      }
    }

    else
    {
      v600 = 0uLL;
      v599 = 0uLL;
    }

    if (SHIDWORD(v655) > SDWORD2(v655))
    {
      v102 = 0;
      v103 = v27[22];
      v104 = v659;
      do
      {
        *(v44 + 4 * v102) = v102 + *(v103 + 4 * v34) * a6;
        *(v104 + 4 * v102) = v102 + *(v103 + 4 * v34) * a6;
        ++v102;
      }

      while (v102 < SHIDWORD(v655) - SDWORD2(v655));
    }

    v45 = 0;
    goto LABEL_53;
  }

  v600 = 0uLL;
  v599 = 0uLL;
  v44 = 0;
  v45 = 1;
LABEL_53:
  v105 = v655;
  if (v655 >= 1)
  {
    v106 = 0;
    v107 = v660;
    do
    {
      if (v106 >= SHIDWORD(v655))
      {
        v109 = v105 - SDWORD2(v659);
        if (v106 >= v109)
        {
          v108 = *(v107 - 4 * v109 + 4 * v106);
        }

        else
        {
          v108 = (v106 - HIDWORD(v655)) % a6 + *(v27[24] + 4 * *(v27[23] + 8 * v34) + 4 * ((v106 - HIDWORD(v655)) / a6)) * a6;
        }
      }

      else if (v45)
      {
        v108 = v106 + *(v27[22] + 4 * v34) * a6;
      }

      else
      {
        v108 = *(v44 + 4 * v106);
      }

      if (v108 < 0)
      {
        v108 = -v108;
      }

      *(a23 + 4 * v108) = v106++;
      v105 = v655;
    }

    while (v106 < v655);
  }

  v110 = DWORD1(v655);
  if (SDWORD1(v655) >= 1)
  {
    v111 = 0;
    v112 = *(&v660 + 1);
    v113 = v659;
    do
    {
      if (v111 >= SHIDWORD(v655))
      {
        v115 = v110 - SHIDWORD(v659);
        if (v111 >= v115)
        {
          v114 = *(v112 - 4 * v115 + 4 * v111);
        }

        else
        {
          v114 = (v111 - HIDWORD(v655)) % a6 + *(v27[26] + 4 * *(v27[25] + 8 * v34) + 4 * ((v111 - HIDWORD(v655)) / a6)) * a6;
        }
      }

      else if (v45)
      {
        v114 = v111 + *(v27[22] + 4 * v34) * a6;
      }

      else
      {
        v114 = *(v113 + 4 * v111);
      }

      if (v114 < 0)
      {
        v114 = -v114;
      }

      *(v641 + 4 * v114) = v111++;
      v110 = SDWORD1(v655);
    }

    while (v111 < SDWORD1(v655));
  }

  v116 = 8 * SHIDWORD(v655);
  bzero(*(&v656 + 1), v116 * v657);
  bzero(*(&v657 + 1), v116 * v658);
  v117 = a7;
  sub_2367DCF58(a2, a1, SHIDWORD(v655), a3, v27, *(&v656 + 1), v657, *(&v657 + 1), v658, a23, v641, a7[12], a7[13]);
  if (*(&v655 + 4) > 0)
  {
    v118 = (v27[30] + 8 * v34);
    v119 = *v118;
    v120 = a4;
    if (*v118 < v118[1])
    {
      v121 = v110;
      v122 = v627;
      v123 = a21;
      while (1)
      {
        if (*(v27[32] + v119) != 3)
        {
          goto LABEL_230;
        }

        v124 = *(v27[31] + 4 * v119);
        if (*(a17 + v124))
        {
          goto LABEL_230;
        }

        if (v120 == 83)
        {
          v125 = *(v117[9] + 4 * v124);
          v126 = *(v117[10] + 4 * v124);
          v127 = *(v117[11] + 4 * v124);
        }

        else
        {
          v125 = 0;
          v126 = 0;
          v127 = 0;
        }

        v643 = v27[22];
        v128 = v125 + (*(v643 + 4 * (v124 + 1)) - *(v643 + 4 * v124)) * v122;
        v129 = v128;
        if (v120 == 83)
        {
          v129 = *(v117[8] + 4 * v124);
        }

        v130 = v27[23];
        v131 = *(v117[14] + 8 * v124) + 8 + 8 * (v128 + v126 + (*(v130 + 8 * (v124 + 1)) - *(v130 + 8 * v124)) * v122) * v128 + 8 * (v127 + (*(v27[25] + 8 * (v124 + 1)) - *(v27[25] + 8 * v124)) * v122) * v128;
        v132 = v131 + 4 * v128 + 4 * v126;
        v133 = v120 == 81 ? 0 : v131;
        v134 = v120 == 81 ? 0 : v132;
        v623 = v134;
        if (v129 == v128)
        {
          goto LABEL_230;
        }

        v620 = v128;
        v135 = *(a3 + 28);
        v634 = v117[12];
        v637 = (v135 * v135);
        v613 = v119;
        if (v634)
        {
          v615 = v117[13];
          if (v129 >= v128)
          {
            sub_23672AB18(a15);
            v122 = v627;
          }

          else
          {
            v601 = v133;
            v136 = v129;
            v597 = v129;
            do
            {
              LODWORD(v137) = *(v623 + 4 * v136);
              if (v137 >= 0)
              {
                v137 = v137;
              }

              else
              {
                v137 = -v137;
              }

              if (*(v123 + 4 * v137) >= a1)
              {
                v138 = (*(a3 + 8) + 8 * *(v27[20] + 4 * (v137 / v135)));
                v139 = *v138;
                v140 = v138[1];
                if (v139 < v140)
                {
                  v632 = *(v641 + 4 * v137);
                  v141 = v137 % v135;
                  v142 = *(a3 + 16);
                  v143 = v615 + 8 * (v137 * v135);
                  v144 = v655;
                  do
                  {
                    v145 = *(v142 + 4 * v139);
                    if ((v145 & 0x80000000) == 0 && v145 < *a3 && v135 != 0)
                    {
                      v147 = 0;
                      v148 = *(v27[17] + 4 * v145) * v135;
                      v149 = HIDWORD(v655);
                      v150 = v144 - DWORD2(v659);
                      v151 = v660;
                      v152 = *(&v658 + 1);
                      v153 = *(&v656 + 1) + 8 * v657 * v632;
                      v154 = (v634 + 8 * v135 * v148);
                      v155 = (a19 + 4 * v148);
                      v156 = (a23 + 4 * v148);
                      v157 = v135;
                      do
                      {
                        v159 = *v156++;
                        v158 = v159;
                        if (v159 < v144)
                        {
                          v160 = v158;
                          if (v158 >= v149)
                          {
                            if (v158 >= v150)
                            {
                              v161 = *(v151 + 4 * (v158 - v150));
                            }

                            else
                            {
                              v162 = v158 - v149;
                              v163 = *(v27[24] + 4 * *(v130 + 8 * v650) + 4 * (v162 / v135));
                              v27 = a5;
                              v161 = v162 % v135 + v163 * v135;
                            }
                          }

                          else if ((v158 & 0x80000000) != 0)
                          {
                            v161 = 0x7FFFFFFF;
                          }

                          else
                          {
                            v161 = v152 ? *(v152 + 4 * v158) : v158 + *(v643 + 4 * v650) * v135;
                          }

                          if (v148 == v161 && *v155 >= a1)
                          {
                            *(v153 + 8 * v160) = *v154 * *(*(a3 + 32) + 8 * v139 * v637 + 8 * v147 + 8 * v141 * v135) * *(v143 + 8 * v141);
                          }
                        }

                        ++v147;
                        v154 += v135 + 1;
                        ++v155;
                        LODWORD(v148) = v148 + 1;
                        --v157;
                      }

                      while (v157);
                    }

                    ++v139;
                  }

                  while (v139 != v140);
                }
              }

              ++v136;
              v123 = a21;
            }

            while (v136 != v620);
            sub_23672AB18(a15);
            v164 = *a15;
            v165 = *(a15 + 4);
            v166 = v597 - v620;
            v167 = (v601 + 4 * v597);
            do
            {
              v169 = *v167++;
              v168 = v169;
              if (v169 < 0)
              {
                v168 = -v168;
              }

              *(v164 + 4 * v168) = v165;
              v87 = __CFADD__(v166++, 1);
            }

            while (!v87);
            v121 = DWORD1(v655);
            v117 = a7;
            v34 = v650;
            v120 = a4;
            v122 = v627;
          }

          if (v121 < 1)
          {
            goto LABEL_230;
          }

          v203 = 0;
          v204 = SHIDWORD(v655);
          v644 = SHIDWORD(v655) - SDWORD2(v655);
          v205 = v121;
          v603 = v121;
          v633 = v121 - SHIDWORD(v659);
          v621 = *(&v660 + 1);
          v629 = *(&v658 + 1);
          v624 = v659;
          v206 = 8 * v637;
          do
          {
            if (v203 >= v204 || v203 < v644)
            {
              if (v203 >= v204)
              {
                v207 = a21;
                v208 = v203 >= v633 ? *(v621 + 4 * (v203 - v633)) : (v203 - v204) % v135 + *(v27[26] + 4 * *(v27[25] + 8 * v650) + 4 * ((v203 - v204) / v135)) * v135;
              }

              else
              {
                v207 = a21;
                v208 = v629 ? *(v624 + 4 * v203) : v203 + *(v27[22] + 4 * v650) * v135;
              }

              if (*(v207 + 4 * v208) >= a1)
              {
                v209 = (*(a3 + 8) + 8 * *(v27[20] + 4 * (v208 / v135)));
                v210 = *v209;
                v211 = v209[1];
                if (*v209 < v211)
                {
                  v212 = v208 % v135;
                  v213 = *(a3 + 16);
                  v214 = v615 + 8 * v208 * v135;
                  v215 = v206 * v210 + 8 * v208 % v135 * v135;
                  do
                  {
                    v216 = *(v213 + 4 * v210);
                    if ((v216 & 0x80000000) == 0 && v216 < *a3 && v135 != 0)
                    {
                      v218 = 0;
                      v219 = *(v27[17] + 4 * v216) * v135;
                      v220 = *(a15 + 4);
                      v221 = v658;
                      v222 = *(&v657 + 1) + 8 * (v203 - v204);
                      v223 = *(&v656 + 1) + 8 * v657 * v203;
                      v224 = *a15 + 4 * v219;
                      v225 = (v634 + 8 * v135 * v219);
                      do
                      {
                        if (*(a19 + 4 * v219 + 4 * v218) >= a1 && v219 + v218 < *(v27[22] + 4 * v650) * v135 && *(v224 + 4 * v218) >= v220)
                        {
                          v226 = *(a23 + 4 * v219 + 4 * v218);
                          v227 = (v223 + 8 * v226);
                          v228 = (v222 + 8 * v221 * v226);
                          if (v203 < v204)
                          {
                            v228 = v227;
                          }

                          *v228 = *v225 * *(*(a3 + 32) + v215 + 8 * v218) * *(v214 + 8 * v212);
                        }

                        ++v218;
                        v225 += v135 + 1;
                      }

                      while (v135 != v218);
                    }

                    ++v210;
                    v215 += v206;
                  }

                  while (v210 != v211);
                }
              }
            }

            ++v203;
          }

          while (v203 != v205);
          v117 = a7;
          v34 = v650;
          v120 = a4;
          v122 = v627;
        }

        else
        {
          if (v129 >= v128)
          {
            sub_23672AB18(a15);
            v122 = v627;
          }

          else
          {
            v602 = v133;
            v170 = v129;
            v171 = v129;
            do
            {
              v172 = *(v623 + 4 * v171);
              if (v172 >= 0)
              {
                v173 = v172;
              }

              else
              {
                v173 = -v172;
              }

              if (*(v123 + 4 * v173) >= a1)
              {
                v174 = (*(a3 + 8) + 8 * *(v27[20] + 4 * (v173 / v135)));
                v175 = *v174;
                v176 = v174[1];
                if (*v174 < v176)
                {
                  v177 = v173 % v135;
                  v178 = *(v641 + 4 * v173);
                  v179 = *(a3 + 16);
                  v180 = v655;
                  do
                  {
                    v181 = *(v179 + 4 * v175);
                    if ((v181 & 0x80000000) == 0 && v181 < *a3 && v135 != 0)
                    {
                      v183 = 0;
                      v184 = *(v27[17] + 4 * v181) * v135;
                      v185 = HIDWORD(v655);
                      v186 = v180 - DWORD2(v659);
                      v187 = v660;
                      v188 = *(&v656 + 1) + 8 * v657 * v178;
                      v189 = *(&v658 + 1);
                      v190 = (a19 + 4 * v184);
                      v191 = (a23 + 4 * v184);
                      v192 = v135;
                      do
                      {
                        v194 = *v191++;
                        v193 = v194;
                        if (v194 < v180)
                        {
                          v195 = v193;
                          if (v193 >= v185)
                          {
                            v196 = v193 >= v186 ? *(v187 + 4 * (v193 - v186)) : (v193 - v185) % v135 + *(v27[24] + 4 * *(v130 + 8 * v650) + 4 * ((v193 - v185) / v135)) * v135;
                          }

                          else if ((v193 & 0x80000000) != 0)
                          {
                            v196 = 0x7FFFFFFF;
                          }

                          else
                          {
                            v196 = v189 ? *(v189 + 4 * v193) : v193 + *(v643 + 4 * v650) * v135;
                          }

                          if (v184 == v196 && *v190 >= a1)
                          {
                            *(v188 + 8 * v195) = *(*(a3 + 32) + 8 * v175 * v637 + 8 * v183 + 8 * v177 * v135);
                          }
                        }

                        ++v183;
                        ++v190;
                        ++v184;
                        --v192;
                      }

                      while (v192);
                    }

                    ++v175;
                  }

                  while (v175 != v176);
                }
              }

              ++v171;
              v123 = a21;
            }

            while (v171 != v620);
            sub_23672AB18(a15);
            v197 = *a15;
            v198 = *(a15 + 4);
            v199 = v170 - v620;
            v200 = (v602 + 4 * v170);
            do
            {
              v202 = *v200++;
              v201 = v202;
              if (v202 < 0)
              {
                v201 = -v201;
              }

              *(v197 + 4 * v201) = v198;
              v87 = __CFADD__(v199++, 1);
            }

            while (!v87);
            v121 = DWORD1(v655);
            v117 = a7;
            v34 = v650;
            v120 = a4;
            v122 = v627;
          }

          if (v121 < 1)
          {
            goto LABEL_230;
          }

          v229 = 0;
          v230 = SHIDWORD(v655);
          v231 = SHIDWORD(v655) - SDWORD2(v655);
          v232 = v121;
          v603 = v121;
          v233 = v121 - SHIDWORD(v659);
          v234 = *(&v660 + 1);
          v235 = *(&v658 + 1);
          v236 = v659;
          v237 = 8 * v637;
          do
          {
            if (v229 >= v230 || v229 < v231)
            {
              if (v229 >= v230)
              {
                v238 = a21;
                v239 = v229 >= v233 ? *(v234 + 4 * (v229 - v233)) : (v229 - v230) % v135 + *(v27[26] + 4 * *(v27[25] + 8 * v34) + 4 * ((v229 - v230) / v135)) * v135;
              }

              else
              {
                v238 = a21;
                v239 = v235 ? *(v236 + 4 * v229) : v229 + *(v27[22] + 4 * v34) * v135;
              }

              if (*(v238 + 4 * v239) >= a1)
              {
                v240 = (*(a3 + 8) + 8 * *(v27[20] + 4 * (v239 / v135)));
                v241 = *v240;
                v242 = v240[1];
                if (v241 < v242)
                {
                  v243 = v239 % v135;
                  v244 = *(a3 + 16);
                  v245 = v237 * v241 + 8 * v243 * v135;
                  do
                  {
                    v246 = *(v244 + 4 * v241);
                    if ((v246 & 0x80000000) == 0 && v246 < *a3 && v135 != 0)
                    {
                      v248 = *(v27[17] + 4 * v246) * v135;
                      v249 = *a15;
                      v250 = *(a15 + 4);
                      v251 = v658;
                      v252 = *(&v657 + 1) + 8 * (v229 - v230);
                      v253 = *(&v656 + 1) + 8 * v657 * v229;
                      v254 = v135;
                      v255 = v245;
                      do
                      {
                        if (*(a19 + 4 * v248) >= a1 && v248 < *(v27[22] + 4 * v34) * v135 && *(v249 + 4 * v248) >= v250)
                        {
                          v256 = *(a23 + 4 * v248);
                          v257 = (v253 + 8 * v256);
                          v258 = (v252 + 8 * v251 * v256);
                          if (v229 < v230)
                          {
                            v258 = v257;
                          }

                          *v258 = *(*(a3 + 32) + v255);
                        }

                        v255 += 8;
                        ++v248;
                        --v254;
                      }

                      while (v254);
                    }

                    ++v241;
                    v245 += v237;
                  }

                  while (v241 != v242);
                }
              }
            }

            ++v229;
          }

          while (v229 != v232);
          v117 = a7;
          v120 = a4;
        }

        v123 = a21;
        v119 = v613;
        v121 = v603;
LABEL_230:
        if (++v119 >= *(v27[30] + 8 * v34 + 8))
        {
          goto LABEL_233;
        }
      }
    }
  }

  LODWORD(v121) = v110;
  v123 = a21;
LABEL_233:
  if (SHIDWORD(v659) >= 1)
  {
    v259 = a7[12];
    v260 = *(a3 + 28);
    v261 = (v260 * v260);
    v262 = v121 - HIDWORD(v659);
    v645 = *(&v660 + 1);
    if (v259)
    {
      v638 = a7[13];
      if (v260 <= 1)
      {
        v263 = 1;
      }

      else
      {
        v263 = *(a3 + 28);
      }

      v264 = v262;
      v265 = v121;
      v266 = 8 * v261;
      v267 = 8 * *(a3 + 28);
      v268 = v262;
      do
      {
        v269 = *(v645 + 4 * (v268 - v264));
        if (*(v123 + 4 * v269) >= a1)
        {
          v270 = (*(a3 + 8) + 8 * *(v27[20] + 4 * (v269 / v260)));
          v271 = *v270;
          v272 = v270[1];
          if (v271 < v272)
          {
            v273 = v269 % v260;
            v274 = *(a3 + 16);
            v275 = v638 + 8 * v269 * v260;
            v276 = v266 * v271 + 8 * v269 % v260 * v260;
            do
            {
              v277 = *(v274 + 4 * v271);
              if ((v277 & 0x80000000) == 0 && v277 < *a3)
              {
                v278 = *(v27[17] + 4 * v277) * v260;
                v279 = HIDWORD(v655);
                v280 = v658;
                v281 = *(&v657 + 1) + 8 * (v268 - HIDWORD(v655));
                v282 = (v259 + v267 * v278);
                v283 = (a23 + 4 * v278);
                v284 = (a19 + 4 * v278);
                v285 = v263;
                v286 = v276;
                do
                {
                  v287 = *v284++;
                  if (v287 >= a1)
                  {
                    v288 = *v283;
                    if ((v288 & 0x80000000) == 0 && v288 < v279 && v278 == *(*(&v280 + 1) + 4 * v288))
                    {
                      *(v281 + 8 * v280 * v288) = *v282 * *(*(a3 + 32) + v286) * *(v275 + 8 * v273);
                    }
                  }

                  v286 += 8;
                  v282 = (v282 + v267 + 8);
                  LODWORD(v278) = v278 + 1;
                  ++v283;
                  --v285;
                }

                while (v285);
              }

              ++v271;
              v276 += v266;
            }

            while (v271 != v272);
          }
        }

        ++v268;
        v123 = a21;
      }

      while (v268 < v265);
    }

    else
    {
      if (v260 <= 1)
      {
        v289 = 1;
      }

      else
      {
        v289 = *(a3 + 28);
      }

      v290 = 8 * v261;
      v291 = v262;
      do
      {
        v292 = *(v645 + 4 * (v291 - v262));
        if (*(v123 + 4 * v292) >= a1)
        {
          v293 = (*(a3 + 8) + 8 * *(v27[20] + 4 * (v292 / v260)));
          v294 = *v293;
          v295 = v293[1];
          if (v294 < v295)
          {
            v296 = *(a3 + 16);
            v297 = v290 * v294 + 8 * v292 % v260 * v260;
            do
            {
              v298 = *(v296 + 4 * v294);
              if ((v298 & 0x80000000) == 0 && v298 < *a3)
              {
                v299 = *(v27[17] + 4 * v298) * v260;
                v300 = HIDWORD(v655);
                v301 = v658;
                v302 = *(&v657 + 1) + 8 * (v291 - HIDWORD(v655));
                v303 = *(&v658 + 1);
                v304 = (a23 + 4 * v299);
                v305 = (a19 + 4 * v299);
                v306 = v289;
                v307 = v297;
                do
                {
                  v308 = *v305++;
                  if (v308 >= a1)
                  {
                    v309 = *v304;
                    if ((v309 & 0x80000000) == 0 && v309 < v300 && v299 == *(v303 + 4 * v309))
                    {
                      *(v302 + 8 * v301 * v309) = *(*(a3 + 32) + v307);
                    }
                  }

                  v307 += 8;
                  ++v299;
                  ++v304;
                  --v306;
                }

                while (v306);
              }

              ++v294;
              v297 += v290;
            }

            while (v294 != v295);
          }
        }

        ++v291;
      }

      while (v291 < v121);
    }
  }

  v646 = DWORD2(v659);
  if (SDWORD2(v659) >= 1)
  {
    v310 = a7[12];
    v311 = *(a3 + 28);
    v312 = (v311 * v311);
    v313 = (v27[22] + 4 * v650);
    v314 = v313[1];
    v315 = *v313;
    v316 = *v313 * v311;
    v317 = v314 * v311;
    if (v310)
    {
      if (v316 < v317)
      {
        v318 = 0;
        v639 = a7[13];
        if (v311 <= 1)
        {
          v319 = 1;
        }

        else
        {
          v319 = v311;
        }

        v320 = ((v314 - v315) * v311);
        v321 = 8 * v312;
        v322 = 8 * v311;
        do
        {
          if (*(v123 + 4 * v316) >= a1)
          {
            v323 = (*(a3 + 8) + 8 * *(v27[20] + 4 * (v316 / v311)));
            v324 = *v323;
            v325 = v323[1];
            if (*v323 < v325)
            {
              v326 = *(a3 + 16);
              v327 = v655;
              v328 = v655 - v646;
              v329 = v321 * v324 + 8 * v316 % v311 * v311;
              do
              {
                v330 = *(v326 + 4 * v324);
                if ((v330 & 0x80000000) == 0 && v330 < *a3)
                {
                  v331 = *(v27[17] + 4 * v330) * v311;
                  v332 = v660;
                  v333 = *(&v656 + 1) + 8 * v657 * v318;
                  v334 = (v310 + v322 * v331);
                  v335 = (a19 + 4 * v331);
                  v336 = (a23 + 4 * v331);
                  v337 = v319;
                  v338 = v329;
                  do
                  {
                    v340 = *v336++;
                    v339 = v340;
                    v341 = v340 >= v327 || v339 < v328;
                    if (!v341 && v331 == *(v332 + 4 * (v339 - v328)) && *v335 >= a1)
                    {
                      *(v333 + 8 * v339) = *v334 * *(*(a3 + 32) + v338) * *(v639 + 8 * v316 * v311 + 8 * (v316 % v311));
                    }

                    v338 += 8;
                    v334 = (v334 + v322 + 8);
                    ++v335;
                    LODWORD(v331) = v331 + 1;
                    --v337;
                  }

                  while (v337);
                }

                ++v324;
                v329 += v321;
              }

              while (v324 != v325);
            }
          }

          ++v316;
          ++v318;
          v123 = a21;
        }

        while (v318 != v320);
      }
    }

    else if (v316 < v317)
    {
      v342 = 0;
      if (v311 <= 1)
      {
        v343 = 1;
      }

      else
      {
        v343 = v311;
      }

      v316 = v316;
      v344 = ((v314 - v315) * v311);
      v345 = 8 * v312;
      do
      {
        if (*(v123 + 4 * v316) >= a1)
        {
          v346 = (*(a3 + 8) + 8 * *(v27[20] + 4 * (v316 / v311)));
          v347 = *v346;
          v348 = v346[1];
          if (v347 < v348)
          {
            v349 = *(a3 + 16);
            v350 = v655;
            v351 = v655 - v646;
            v352 = v345 * v347 + 8 * v316 % v311 * v311;
            do
            {
              v353 = *(v349 + 4 * v347);
              if ((v353 & 0x80000000) == 0 && v353 < *a3)
              {
                v354 = *(v27[17] + 4 * v353) * v311;
                v355 = *(&v656 + 1) + 8 * v657 * v342;
                v356 = v660;
                v357 = (a19 + 4 * v354);
                v358 = (a23 + 4 * v354);
                v359 = v343;
                v360 = v352;
                do
                {
                  v362 = *v358++;
                  v361 = v362;
                  v363 = v362 >= v350 || v361 < v351;
                  if (!v363 && v354 == *(v356 + 4 * (v361 - v351)) && *v357 >= a1)
                  {
                    *(v355 + 8 * v361) = *(*(a3 + 32) + v360);
                  }

                  v360 += 8;
                  ++v357;
                  ++v354;
                  --v359;
                }

                while (v359);
              }

              ++v347;
              v352 += v345;
            }

            while (v347 != v348);
          }
        }

        ++v316;
        ++v342;
      }

      while (v342 != v344);
    }
  }

  sub_23672AB18(a15);
  v364 = v27[30];
  v365 = *(v364 + 8 * v650);
  v366 = *(v364 + 8 * v619);
  v367 = v608 >> 3;
  v368 = v366 - v365;
  if (v366 <= v365)
  {
    v368 = 0;
    v376 = a7;
    v377 = v627;
    v378 = v616;
    v371 = v611;
    v379 = v609;
  }

  else
  {
    v369 = *a15;
    v370 = *(a15 + 4);
    v371 = v611;
    v372 = (48 * v367 + 16 * v611 + a23 + 4);
    v373 = (v27[32] + v365);
    v374 = (v27[31] + 4 * v365);
    v375 = v368;
    v376 = a7;
    v377 = v627;
    v378 = v616;
    v379 = v609;
    do
    {
      v381 = *v374++;
      v380 = v381;
      LOBYTE(v381) = *v373++;
      *(v372 - 1) = v380;
      *v372 = v381;
      v372 += 8;
      *(v369 + 4 * v380) = v370;
      --v375;
    }

    while (v375);
  }

  v382 = a16;
  v383 = 8 * v379;
  v384 = v655;
  if (v655 < 1)
  {
    LODWORD(v385) = 0;
  }

  else
  {
    v385 = 0;
    v386 = v660;
    v387 = *(&v658 + 1);
    do
    {
      v388 = v385;
      if (v385 >= SHIDWORD(v655))
      {
        v390 = v384 - SDWORD2(v659);
        if (v385 >= v390)
        {
          v389 = *(v386 - 4 * v390 + 4 * v385);
        }

        else
        {
          v389 = (v385 - HIDWORD(v655)) % v377 + *(*(a5 + 192) + 4 * *(*(a5 + 184) + 8 * v650) + 4 * ((v385 - HIDWORD(v655)) / v377)) * v377;
        }
      }

      else if (v387)
      {
        v389 = *(v387 + 4 * v385);
      }

      else
      {
        v389 = v385 + *(*(a5 + 176) + 4 * v650) * v377;
      }

      ++v385;
      *(a23 + v383 + 48 * v367 + 16 * v371 + 4 * v388) = v389;
      v384 = v655;
    }

    while (v388 + 1 < v655);
  }

  v391 = DWORD1(v655);
  if (SDWORD1(v655) < 1)
  {
    LODWORD(v392) = 0;
  }

  else
  {
    v392 = 0;
    v393 = *(&v660 + 1);
    v394 = *(&v658 + 1);
    v395 = v659;
    v396 = a23 + v383 + 56 * v367 + 16 * v371;
    do
    {
      v397 = v392;
      if (v392 >= SHIDWORD(v655))
      {
        v399 = v391 - SHIDWORD(v659);
        if (v392 >= v399)
        {
          v398 = *(v393 - 4 * v399 + 4 * v392);
        }

        else
        {
          v398 = (v392 - HIDWORD(v655)) % v377 + *(*(a5 + 208) + 4 * *(*(a5 + 200) + 8 * v650) + 4 * ((v392 - HIDWORD(v655)) / v377)) * v377;
        }
      }

      else if (v394)
      {
        v398 = *(v395 + 4 * v392);
      }

      else
      {
        v398 = v392 + *(*(a5 + 176) + 4 * v650) * v377;
      }

      ++v392;
      *(v396 + 4 * v397) = v398;
      v391 = DWORD1(v655);
    }

    while (v397 + 1 < SDWORD1(v655));
  }

  sub_23672AB18(a16);
  v400 = v627;
  v401 = a19;
  if (!v368)
  {
    goto LABEL_488;
  }

  v596 = v657;
  v598 = *(&v656 + 1);
  v612 = v658;
  v614 = *(&v657 + 1);
  do
  {
LABEL_350:
    --v368;
    v402 = *&v378[8 * v368];
    v403 = *(v382 + 16);
    if (*(*v382 + 4 * v402) >= v403)
    {
      continue;
    }

    *(*v382 + 4 * v402) = v403;
    v652 = v402;
    if (*(a17 + v402))
    {
      goto LABEL_480;
    }

    v404 = v376[8];
    if (v404)
    {
      if (*(v404 + 4 * v402) < 1)
      {
        goto LABEL_480;
      }
    }

    if (a4 == 83)
    {
      v405 = v402;
      v406 = *(v376[9] + 4 * v402);
      v407 = *(v376[10] + 4 * v402);
      v408 = *(v376[11] + 4 * v402);
    }

    else
    {
      v406 = 0;
      v407 = 0;
      v408 = 0;
      v405 = v402;
    }

    v409 = v402 << 32;
    v410 = *(a5 + 176);
    v411 = v409 + 0x100000000;
    v412 = (*(v410 + (v411 >> 30)) - *(v410 + 4 * v405)) * v400;
    v413 = v412 + v406;
    v414 = v412 + v406;
    if (a4 == 83)
    {
      v414 = *(v404 + 4 * v405);
    }

    v415 = v411 >> 32;
    v416 = *(a5 + 184);
    v415 *= 8;
    v417 = *(v416 + 8 * v405);
    v418 = v413 + v407 + (*(v416 + v415) - v417) * v400;
    v419 = *(a5 + 200);
    v420 = *(v419 + v415);
    v421 = *(v419 + 8 * v405);
    v422 = (v420 - v421) * v400;
    v630 = *(v376[14] + 8 * v405) + 8;
    v622 = v422 + v408;
    v625 = v630 + 8 * v418 * v413;
    if (a4 == 81)
    {
      v423 = 0;
      v424 = 0;
      v425 = 0;
      v426 = v407 <= 0 ? 0 : v413;
      v427 = 4 * v426;
      v428 = v408 <= 0 ? 0 : v413;
      v429 = 4 * v428;
    }

    else
    {
      v423 = v630 + 8 * v418 * v413 + 8 * (v422 + v408) * v413;
      v424 = v423 + 4 * v413 + 4 * v407;
      if (v407 <= 0)
      {
        v427 = 0;
      }

      else
      {
        v427 = v423 + 4 * v413;
      }

      v429 = v424 + 4 * v413;
      if (v408 <= 0)
      {
        v429 = 0;
      }

      v425 = a4 == 83 ? *(v376[9] + 4 * v650) : 0;
    }

    v430 = v418;
    if (v414 >= v418)
    {
      goto LABEL_480;
    }

    v431 = 0;
    v635 = 0;
    v640 = v414;
    v647 = 0;
    v432 = v413 + v408 + v422;
    v433 = v425 + (*(v410 + 4 * v650 + 4) - *(v410 + 4 * v650)) * v400;
    v434 = v430 - v407;
    v435 = v414 - v412 - v406;
    v436 = v427 + 4 * (v414 + v407 - v430);
    do
    {
      v437 = v414 + v431;
      if (v437 >= v413)
      {
        if (v437 >= v434)
        {
          v438 = *(v436 + 4 * v431);
          goto LABEL_387;
        }

        v439 = *(*(a5 + 192) + 4 * v417 + 4 * ((v435 + v431) / v400));
        v440 = (v435 + v431) % v400;
      }

      else
      {
        if (v437 < 0)
        {
          v438 = 0x7FFFFFFF;
          goto LABEL_387;
        }

        if (v423)
        {
          v438 = *(v423 + 4 * v414 + 4 * v431);
          goto LABEL_387;
        }

        v439 = *(v410 + 4 * v652);
        v440 = v414 + v431;
      }

      v438 = v440 + v439 * v400;
LABEL_387:
      if (v438 >= 0)
      {
        v441 = v438;
      }

      else
      {
        v441 = -v438;
      }

      v442 = *(a23 + 4 * v441);
      if (v442 < v385 && *(v631 + 4 * v442) == v441 && *(v401 + 4 * v441) >= a1)
      {
        v443 = (v628 + 8 * v647);
        *v443 = v414 + v431;
        v443[1] = v442;
        v401 = a19;
        v400 = v627;
        if (v442 >= v433)
        {
          v444 = v635;
        }

        else
        {
          v444 = v635 + 1;
        }

        v635 = v444;
        v647 = (v647 + 1);
      }

      ++v431;
    }

    while (v414 - v430 + v431);
    v376 = a7;
    v445 = v610;
    v446 = v414;
    if (!v647 || v414 >= v432)
    {
      goto LABEL_480;
    }

    v447 = 0;
    v448 = 0;
    v449 = 0;
    v450 = v432 - v408;
    v451 = v424 + 4 * v414;
    v452 = v414 - v412 - v406;
    v453 = v414 - v432;
    v454 = v429 + 4 * (v414 + v408 - v432);
    while (2)
    {
      v455 = v414 + v447;
      if (v455 >= v413)
      {
        if (v455 < v450)
        {
          v457 = *(*(a5 + 208) + 4 * v421 + 4 * ((v452 + v447) / v400));
          v458 = (v452 + v447) % v400;
          goto LABEL_410;
        }

        v456 = *(v454 + 4 * v447);
      }

      else if (v455 < 0)
      {
        v456 = 0x7FFFFFFF;
      }

      else
      {
        if (v423)
        {
          v456 = *(v451 + 4 * v447);
          goto LABEL_411;
        }

        v457 = *(v410 + 4 * v652);
        v458 = v414 + v447;
LABEL_410:
        v456 = v458 + v457 * v400;
      }

LABEL_411:
      if (v456 >= 0)
      {
        v459 = v456;
      }

      else
      {
        v459 = -v456;
      }

      v460 = *(v641 + 4 * v459);
      if (v460 < v392 && *(v617 + 4 * v460) == v459)
      {
        v459 = *(a21 + 4 * v459);
        if (v459 >= a1)
        {
          v459 = &v610[v449];
          *v459 = v414 + v447;
          *(v459 + 4) = v460;
          if (v460 < v433)
          {
            ++v448;
          }

          ++v449;
        }
      }

      ++v447;
      if (v453 + v447)
      {
        continue;
      }

      break;
    }

    v461 = v647;
    if (v449 && v635 | v448)
    {
      v462 = v630;
      if (v635 >= 1)
      {
        v463 = 0;
        v464 = v641 + (v608 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v465 = (v628 + 8 * v463);
          v466 = v465[1];
          if (v466 >= v433)
          {
            v467 = v464;
            v468 = v463;
            while (++v468 < v647)
            {
              v469 = (v467 + 8);
              v470 = *(v467 + 12);
              v467 += 8;
              if (v470 < v433)
              {
                v471 = *v469;
                *v469 = *v465;
                *v465 = v471;
                v469[1] = v466;
                v465[1] = v470;
                break;
              }
            }
          }

          ++v463;
          v464 += 8;
        }

        while (v463 != v635);
      }

      if (v448 >= 1)
      {
        v472 = 0;
        v473 = v610;
        do
        {
          v474 = &v610[v472];
          v475 = v474[1];
          if (v475 >= v433)
          {
            v476 = v473;
            v477 = v472;
            while (++v477 < v449)
            {
              v478 = (v476 + 1);
              v479 = *(v476++ + 3);
              if (v479 < v433)
              {
                v480 = *v478;
                *v478 = *v474;
                *v474 = v480;
                v478[1] = v475;
                v474[1] = v479;
                break;
              }
            }
          }

          ++v472;
          ++v473;
        }

        while (v472 != v448);
      }

      v481 = v647 * v640;
      if (a12[1] < (v647 * v640))
      {
        if (*a12)
        {
          (*(a5 + 32))(*a12, v459, v647, v630);
        }

        *a12 = (*(a5 + 24))(8 * v481);
        a12[1] = v481;
        v400 = v627;
        v445 = v610;
        v401 = a19;
        v446 = v640;
        v461 = v647;
        v462 = v630;
      }

      if (v446 >= 1)
      {
        v482 = 0;
        v483 = *a12;
        do
        {
          if (v461 >= 1)
          {
            v484 = (v641 + (v608 & 0xFFFFFFFFFFFFFFF8));
            v485 = v483;
            v486 = v461;
            do
            {
              v487 = *v484++;
              *v485++ = *(v462 + 8 * v482 * v430 + 8 * v487);
              --v486;
            }

            while (v486);
          }

          ++v482;
          v483 += v461;
        }

        while (v482 != v446);
      }

      v595 = v461;
      v488 = v449 * v446;
      if (a13[1] < (v449 * v446))
      {
        if (*a13)
        {
          (*(a5 + 32))(*a13, v459, v461, v462);
        }

        v489 = (*(a5 + 24))(8 * v488);
        v445 = v610;
        *a13 = v489;
        a13[1] = v488;
        v400 = v627;
        v401 = a19;
        v446 = v640;
        LODWORD(v461) = v647;
        v462 = v630;
      }

      v490 = a13;
      if (v446 >= 1)
      {
        v491 = 0;
        for (i = 0; i != v446; ++i)
        {
          if (v449 >= 1)
          {
            v493 = (*a13 + v491);
            v494 = v445;
            v495 = v449;
            do
            {
              v496 = *v494++;
              v497 = v625 + 8 * i * v622 + 8 * (v496 - v413);
              v498 = (v462 + 8 * i + 8 * v496 * v430);
              if (v496 >= v413)
              {
                v498 = v497;
              }

              *v493++ = *v498;
              --v495;
            }

            while (v495);
          }

          v491 += 8 * v449;
        }
      }

      if (v448 * v461 <= (v449 - v448) * v635)
      {
        v499 = (v449 - v448) * v635;
      }

      else
      {
        v499 = v448 * v461;
      }

      if (a14[1] < v499)
      {
        if (*a14)
        {
          (*(a5 + 32))(*a14, a13);
        }

        *a14 = (*(a5 + 24))(8 * v499, v490);
        a14[1] = v499;
        v400 = v627;
        v401 = a19;
      }

      v376 = a7;
      if (v448 >= 1)
      {
        cblas_dgemm_NEWLAPACK();
        v401 = a19;
        v400 = v627;
        v500 = 0;
        v501 = *a14;
        do
        {
          if (v647 >= 1)
          {
            v502 = v598 + 8 * SHIDWORD(v610[v500]) * v596;
            v503 = v641 + (v608 & 0xFFFFFFFFFFFFFFF8);
            v504 = v501;
            v505 = v595;
            do
            {
              v506 = *v504++;
              *(v502 + 8 * *(v503 + 4)) = v506 + *(v502 + 8 * *(v503 + 4));
              v503 += 8;
              --v505;
            }

            while (v505);
          }

          ++v500;
          v501 += v647;
        }

        while (v500 != v448);
      }

      if (v635 >= 1)
      {
        cblas_dgemm_NEWLAPACK();
        v401 = a19;
        v400 = v627;
        if (v449 > v448)
        {
          v507 = v448;
          v508 = *a14;
          do
          {
            v509 = v614 + 8 * (HIDWORD(v610[v507]) - v433);
            v510 = v641 + (v608 & 0xFFFFFFFFFFFFFFF8);
            v511 = v508;
            v512 = v635;
            do
            {
              v513 = *v511++;
              *(v509 + 8 * *(v510 + 4) * v612) = v513 + *(v509 + 8 * *(v510 + 4) * v612);
              v510 += 8;
              --v512;
            }

            while (v512);
            ++v507;
            v508 += v635;
          }

          while (v507 != v449);
        }
      }
    }

LABEL_480:
    v514 = (*(a5 + 240) + 8 * v652);
    v515 = *v514;
    v516 = v514[1];
    if (v515 >= v516)
    {
      v378 = v616;
      v382 = a16;
      if (!v368)
      {
        break;
      }

      goto LABEL_350;
    }

    v517 = *(a5 + 248);
    v382 = a16;
    v518 = *a15;
    v378 = v616;
    do
    {
      v519 = *(v517 + 4 * v515);
      v520 = *(a15 + 4);
      if (*(v518 + 4 * v519) < v520)
      {
        v521 = *(*(a5 + 256) + v515);
        v522 = &v616[8 * v368];
        *v522 = v519;
        ++v368;
        v522[4] = v521;
        *(v518 + 4 * v519) = v520;
      }

      ++v515;
    }

    while (v516 != v515);
  }

  while (v368);
LABEL_488:
  v523 = HIDWORD(v655);
  v524 = a4;
  if (a4 == 83)
  {
    v525 = a5;
    v526 = v650;
    v527 = a10;
    if (SHIDWORD(v655) >= 1)
    {
      v528 = 0;
      v529 = *(&v658 + 1);
      v530 = v659;
      do
      {
        *(v401 + 4 * *(v529 + 4 * v528)) = -1;
        *(a21 + 4 * *(v530 + 4 * v528++)) = -1;
        v523 = HIDWORD(v655);
      }

      while (v528 < SHIDWORD(v655));
    }
  }

  else
  {
    v525 = a5;
    v526 = v650;
    v527 = a10;
  }

  if ((DWORD1(v655) - v523) * (v655 - v523) < 1)
  {
    v535 = 0;
  }

  else
  {
    v531 = 5 * (SHIDWORD(v659) + SDWORD2(v659));
    v594 = v525;
    v532 = (*(v525 + 24))(v531 + 152);
    sub_236724DE4(v532, &v655, v599, SDWORD2(v599), v600, SDWORD2(v600), (v532 + 120), v531 + 32, v594);
    v533 = *(v532 + 16) * *(v532 + 8);
    v534 = (*(*v532 + 24))(8 * v533);
    v535 = v532;
    *(v532 + 96) = v534;
    *(v532 + 104) = v533;
    bzero(v534, 8 * v533);
    v376 = a7;
    v525 = a5;
    v526 = v650;
    v524 = a4;
    v400 = v627;
  }

  v653 = v535;
  *(v527 + 8 * v526) = v535;
  v536 = *(v525 + 240);
  v537 = *(v536 + 8 * v526);
  if (v537 < *(v536 + 8 * v619))
  {
    while (1)
    {
      v538 = *(*(a5 + 248) + 4 * v537);
      if (*(a17 + v538) == 1)
      {
        break;
      }

LABEL_535:
      if (++v537 >= *(v536 + 8 * v619))
      {
        goto LABEL_536;
      }
    }

    memset(&v661[1], 0, 56);
    if (v524 == 83)
    {
      v539 = *(v376[9] + 4 * v538);
      v540 = *(v376[10] + 4 * v538);
      v541 = *(v376[11] + 4 * v538);
    }

    else
    {
      v539 = 0;
      v540 = 0;
      v541 = 0;
    }

    v542 = *(v376[14] + 8 * v538) + 8;
    DWORD2(v661[0]) = v539;
    *(&v661[1] + 1) = v542;
    *(&v661[4] + 1) = __PAIR64__(v541, v540);
    HIDWORD(v661[0]) = v539 + (*(*(a5 + 176) + 4 * (v538 + 1)) - *(*(a5 + 176) + 4 * v538)) * v400;
    v543 = HIDWORD(v661[0]);
    if (v524 == 83)
    {
      v543 = *(v376[8] + 4 * v538);
    }

    LODWORD(v661[1]) = v543;
    v544 = 8 * (v538 + 1);
    LODWORD(v661[0]) = HIDWORD(v661[0]) + v540 + (*(*(a5 + 184) + v544) - *(*(a5 + 184) + 8 * v538)) * v400;
    v545 = (*(*(a5 + 200) + v544) - *(*(a5 + 200) + 8 * v538)) * v400;
    DWORD1(v661[0]) = HIDWORD(v661[0]) + v541 + v545;
    v546 = v542 + 8 * SLODWORD(v661[0]) * SHIDWORD(v661[0]);
    *&v661[2] = SLODWORD(v661[0]);
    *(&v661[2] + 1) = v546;
    *&v661[3] = v545 + v541;
    if (v524 == 81)
    {
      v547 = 0;
      v548 = 0;
    }

    else
    {
      v548 = v546 + 8 * (v545 + v541) * SHIDWORD(v661[0]);
      v547 = v548 + 4 * SHIDWORD(v661[0]) + 4 * v540;
      *(&v661[3] + 1) = v548;
      *&v661[4] = v547;
    }

    v549 = v548 + 4 * SHIDWORD(v661[0]);
    if (v540 <= 0)
    {
      v550 = 0;
    }

    else
    {
      v550 = v549;
    }

    v551 = v547 + 4 * SHIDWORD(v661[0]);
    if (v541 <= 0)
    {
      v552 = 0;
    }

    else
    {
      v552 = v551;
    }

    *&v661[5] = v550;
    *(&v661[5] + 1) = v552;
    v553 = *(v527 + 8 * v538);
    if (v553)
    {
      v554 = *(*(a5 + 264) + 4 * v537) * v400;
      v555 = *(*(a5 + 272) + 4 * v537) * v400;
      v556 = *(*(a5 + 256) + v537);
      switch(v556)
      {
        case 3:
          v575 = v400;
          v576 = sub_2367DDE0C(&v655, v538, v661, v553, a5, v400, v554, v555, a23, v641);
          v527 = a10;
          sub_2367D673C(v576, &v655, v653, v538, v661, v553, a5, v575, v554, v555, a23, v641);
          v565 = *(a10 + 8 * v538);
          v567 = v565 + 12;
          v566 = v565[12];
          if (v566)
          {
            goto LABEL_532;
          }

          goto LABEL_533;
        case 2:
          v568 = *(*(a5 + 280) + 4 * v537);
          sub_236724F10(&v654, *(v527 + 8 * v538));
          v569 = v568 * v627;
          sub_2367DD7D0(a1, &v655, v538, v661, v553, a5, v627, v554, v555, v568 * v627, a23, v641);
          sub_2367D5E48(a1, &v655, v653, v538, v661, v553, a5, v627, v554, v555, v568 * v627, a23, v641);
          add_explicit = atomic_fetch_add_explicit((v553 + 24), -(v568 * v627), memory_order_release);
          if (*(v654 + 112) == 1)
          {
            v571 = (v654 + 113);
            atomic_store(0, (v654 + 113));
            std::__cxx_atomic_notify_one(v571);
          }

          v400 = v627;
          v527 = a10;
          if (add_explicit == v569)
          {
            v572 = *(*v553 + 32);
            v574 = *(v553 + 96);
            v573 = (v553 + 96);
            v572(v574);
            *v573 = 0;
            v573[1] = 0;
            v400 = v627;
            if (HIDWORD(v661[0]) == LODWORD(v661[1]) && !*(&v661[4] + 1))
            {
              v565 = *(a10 + 8 * v538);
              v567 = v565 + 12;
              v566 = v565[12];
              if (v566)
              {
LABEL_532:
                (*(*v565 + 32))(v566);
                *v567 = 0;
                v567[1] = 0;
              }

LABEL_533:
              (*(a5 + 32))();
              *(v527 + 8 * v538) = 0;
              v400 = v627;
            }
          }

          break;
        case 1:
          v557 = *(*(a5 + 280) + 4 * v537);
          sub_236724F10(&v654, *(v527 + 8 * v538));
          v558 = v554;
          v649 = v554;
          v559 = v557 * v627;
          sub_2367DD33C(a1, &v655, v538, v661, v553, a5, v627, v558, v555, v557 * v627, a23, v641);
          sub_2367D56F8(a1, &v655, v653, v538, v661, v553, a5, v627, v649, v555, v557 * v627, a23, v641);
          v560 = atomic_fetch_add_explicit((v553 + 28), -(v557 * v627), memory_order_release);
          if (*(v654 + 112) == 1)
          {
            v561 = (v654 + 113);
            atomic_store(0, (v654 + 113));
            std::__cxx_atomic_notify_one(v561);
          }

          v400 = v627;
          v527 = a10;
          if (v560 == v559)
          {
            v562 = *(*v553 + 32);
            v564 = *(v553 + 96);
            v563 = (v553 + 96);
            v562(v564);
            *v563 = 0;
            v563[1] = 0;
            v400 = v627;
            if (HIDWORD(v661[0]) == LODWORD(v661[1]) && !*(&v661[4] + 1))
            {
              v565 = *(a10 + 8 * v538);
              v567 = v565 + 12;
              v566 = v565[12];
              if (v566)
              {
                goto LABEL_532;
              }

              goto LABEL_533;
            }
          }

          break;
      }
    }

    v536 = *(a5 + 240);
    v376 = a7;
    v524 = a4;
    goto LABEL_535;
  }

LABEL_536:
  v577 = v653;
  if (v653)
  {
    v578 = *(v653 + 96);
    v577 = *(v653 + 16);
  }

  else
  {
    v578 = 0;
  }

  v579 = v524 == 83;
  if (a27)
  {
    v580 = a27 + 64;
  }

  else
  {
    v580 = 0;
  }

  v581 = v607(v655, DWORD1(v655), HIDWORD(v655), *(&v656 + 1), v657, *(&v657 + 1), v658, v578, v577, *(&v658 + 1), v659, a5, v376, v605, v606, a25, a26, v580);
  v582 = *a8;
  if (*a8 <= v581)
  {
    v582 = v581;
  }

  *a8 = v582;
  v583 = *a9;
  if (*a9 <= SDWORD1(v655))
  {
    v583 = DWORD1(v655);
  }

  *a9 = v583;
  if (v579)
  {
    *(a7[8] + 4 * v650) = v581;
    return 0;
  }

  if (v581 == HIDWORD(v655))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}